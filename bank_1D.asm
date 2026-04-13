;===================================================================================================
; There are 133 NOPs in this game's code.
; 70 of them are in this bank.
;===================================================================================================
org $1D8000

;===================================================================================================

Shakeyshake:

.low
|1D8000| db  1, -1

.high
|1D8002| db  0, -1

;===================================================================================================

pool ApplyConveyorToSprites

.speed_y_high ; bleeds into next
|1D8004| db -1,  0

.speed_x_low ; bleeds into next
|1D8006| db  0,  0

.speed_y_low
|1D8008| db -1,  1,  0,  0

.speed_x_high
|1D800C| db  0,  0, -1,  0

endpool

;---------------------------------------------------------------------------------------------------

ApplyConveyorToSprites:
|1D8010| LDA.b $1A
|1D8012| LSR A
|1D8013| BCC .exit

|1D8015| PHB
|1D8016| PHK
|1D8017| PLB

|1D8018| LDA.w $0D10,X
|1D801B| CLC
|1D801C| ADC.w .speed_x_low-$68,Y
|1D801F| STA.w $0D10,X

|1D8022| LDA.w $0D30,X
|1D8025| ADC.w .speed_x_high-$68,Y
|1D8028| STA.w $0D30,X

|1D802B| LDA.w $0D00,X
|1D802E| CLC
|1D802F| ADC.w .speed_y_low-$68,Y
|1D8032| STA.w $0D00,X

|1D8035| LDA.w $0D20,X
|1D8038| ADC.w .speed_y_high-$68,Y
|1D803B| STA.w $0D20,X

|1D803E| PLB

.exit
|1D803F| RTL

;===================================================================================================

CreateDeflectedArrow:
|1D8040| PHB
|1D8041| PHK
|1D8042| PLB

|1D8043| PHY

|1D8044| STZ.w $0C4A,X

|1D8047| LDA.b #$1B ; SPRITE 1B
|1D8049| JSL SpawnSpriteDynamically
|1D804D| BMI .no_space

|1D804F| LDA.w $0C04,X
|1D8052| STA.w $0D10,Y

|1D8055| LDA.w $0C18,X
|1D8058| STA.w $0D30,Y

|1D805B| LDA.w $0BFA,X
|1D805E| STA.w $0D00,Y

|1D8061| LDA.w $0C0E,X
|1D8064| STA.w $0D20,Y

|1D8067| LDA.b #$06
|1D8069| STA.w $0DD0,Y

|1D806C| LDA.b #$1F
|1D806E| STA.w $0DF0,Y

|1D8071| LDA.w $0C2C,X
|1D8074| STA.w $0D50,Y

|1D8077| LDA.w $0C22,X
|1D807A| STA.w $0D40,Y

|1D807D| LDA.b $EE ; [DUMB] use the ancilla's layer
|1D807F| STA.w $0F20,Y

|1D8082| PHX

|1D8083| TYX
|1D8084| JSL PlaceWeaponTinkAtSprite

|1D8088| PLX

.no_space
|1D8089| PLY

|1D808A| PLB

|1D808B| RTL

;===================================================================================================

MoveSpriteXY_bank1D_long:
|1D808C| PHB
|1D808D| PHK
|1D808E| PLB

|1D808F| JSR MoveSpriteXY_bank1D

|1D8092| PLB

|1D8093| RTL

;===================================================================================================

CheckSpriteTileCollision_bank1D:
|1D8094| JSL CheckSpriteTileCollision_long

|1D8098| RTS

;===================================================================================================

Sprite_D4_Landmine:
|1D8099| JSR SpriteDraw_Landmine
|1D809C| JSR CheckIfActive_bank1D

|1D809F| JSL HammerLandmine
|1D80A3| BCS Landmine_Explode

|1D80A5| LDA.w $0DF0,X
|1D80A8| BNE Landmine_Detonating

|1D80AA| LDA.b #$04
|1D80AC| STA.w $0F50,X

|1D80AF| JSL CheckDamageToLink_long
|1D80B3| BCC .exit

|1D80B5| LDA.b #$08
|1D80B7| STA.w $0DF0,X

.exit
|1D80BA| RTS

;===================================================================================================

Landmine_Palettes:
|1D80BB| db $04, $02, $08, $02

;===================================================================================================

Landmine_Detonating:
|1D80BF| CMP.b #$01
|1D80C1| BNE Landmine_Flash

;---------------------------------------------------------------------------------------------------

Landmine_Explode:
|1D80C3| STZ.w $0DD0,X

|1D80C6| JSR SpawnSpriteBomb
|1D80C9| BMI .exit

|1D80CB| LDA.b #$06
|1D80CD| STA.w $0DD0,Y

|1D80D0| LDA.b #$02
|1D80D2| STA.w $0DB0,Y
|1D80D5| STA.w $0F50,Y

|1D80D8| LDA.b #$09
|1D80DA| STA.w $0F60,Y

|1D80DD| LDA.b #$1F
|1D80DF| STA.w $0E00,Y

|1D80E2| LDA.b #$03
|1D80E4| STA.w $0E40,Y

|1D80E7| JSL CalculateSpriteSFXPan
|1D80EB| ORA.b #$0C ; SFX2.0C
|1D80ED| STA.w $012E

.exit
|1D80F0| RTS

;===================================================================================================

Landmine_Flash:
|1D80F1| LSR A
|1D80F2| AND.b #$03
|1D80F4| TAY

|1D80F5| LDA.w Landmine_Palettes,Y
|1D80F8| STA.w $0F50,X

|1D80FB| RTS

;===================================================================================================

pool SpriteDraw_Landmine

.oam_groups
|1D80FC| dw   0,   4 : db $70, $00, $00, $00
|1D8104| dw   8,   4 : db $70, $40, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Landmine:
|1D810C| LDA.b #$08
|1D810E| JSL AllocateOAMInRegionB

|1D8112| LDA.w $0FC6
|1D8115| CMP.b #$03
|1D8117| BCS .bad_gfx

|1D8119| REP #$20

|1D811B| LDA.w #.oam_groups
|1D811E| STA.b $08

|1D8120| SEP #$20

|1D8122| LDA.b #$02
|1D8124| JSL TabulatedSpriteDraw

.bad_gfx
|1D8128| RTS

;===================================================================================================

Sprite_D3_Stal:
|1D8129| LDA.w $0FC6
|1D812C| CMP.b #$03
|1D812E| BCS .bad_gfx

|1D8130| LDA.w $0D80,X
|1D8133| BNE .ignore_overlap

|1D8135| LDA.b #$04
|1D8137| JSL AllocateOAMInRegionB

.ignore_overlap
|1D813B| JSR SpriteDraw_Stal

.bad_gfx
|1D813E| JSR CheckIfActive_bank1D
|1D8141| JSR HandleSpriteRecoil_bank1D

|1D8144| LDA.w $0D80,X
|1D8147| JSL JumpTableLocal
|1D814B| dw Stal_Dormant
|1D814D| dw Stal_Active

;===================================================================================================

Stal_Dormant:
|1D814F| LDA.b #$01
|1D8151| STA.w $0BA0,X

|1D8154| JSL CheckDamageToLink_same_layer_long
|1D8158| BCC .still_inactive

|1D815A| JSL AbortMovement
|1D815E| JSL RepelDash_long

|1D8162| LDA.w $0DF0,X
|1D8165| BNE .still_inactive

|1D8167| LDA.b #$40
|1D8169| STA.w $0DF0,X

|1D816C| LDA.b #$22 ; SFX2.22
|1D816E| JSL QueueSpriteSFX2WithPan

.still_inactive
|1D8172| LDA.w $0DF0,X
|1D8175| BEQ .exit

|1D8177| DEC A
|1D8178| BEQ .activated

|1D817A| ORA.b #$40
|1D817C| STA.w $0EF0,X

.exit
|1D817F| RTS

.activated
|1D8180| STZ.w $0BA0,X

|1D8183| INC.w $0D80,X

|1D8186| STZ.w $0EF0,X

|1D8189| LDA.w $0E60,X
|1D818C| AND.b #$BF
|1D818E| STA.w $0E60,X

|1D8191| ASL.w $0E40,X
|1D8194| LSR.w $0E40,X

|1D8197| RTS

;===================================================================================================

pool Stal_Active

.anim
|1D8198| db $02, $02, $01, $00, $01

endpool

;---------------------------------------------------------------------------------------------------

Stal_Active:
|1D819D| JSR CheckDamageToAndFromLink_bank1D
|1D81A0| JSR MoveSpriteXYZ_bank1D
|1D81A3| JSR CheckSpriteTileCollision_bank1D

|1D81A6| DEC.w $0F80,X
|1D81A9| DEC.w $0F80,X
|1D81AC| LDA.w $0F70,X
|1D81AF| BPL .in_air

|1D81B1| STZ.w $0F70,X

|1D81B4| LDA.b #$10
|1D81B6| STA.w $0F80,X

|1D81B9| LDA.b #$0C
|1D81BB| JSL ApplySpeedTowardsLink_long

.in_air
|1D81BF| LDA.b $1A
|1D81C1| AND.b #$03
|1D81C3| BNE .skip_timer

|1D81C5| INC.w $0E80,X

|1D81C8| LDA.w $0E80,X
|1D81CB| CMP.b #$05
|1D81CD| BNE .skip_timer

|1D81CF| STZ.w $0E80,X

.skip_timer
|1D81D2| LDY.w $0E80,X
|1D81D5| LDA.w .anim,Y
|1D81D8| STA.w $0DC0,X

|1D81DB| RTS

;===================================================================================================

pool SpriteDraw_Stal

.oam_groups
; group00
|1D81DC| dw   0,   0 : db $44, $00, $00, $02
|1D81E4| dw   4,  11 : db $70, $00, $00, $00

; group01
|1D81EC| dw   0,   0 : db $44, $00, $00, $02
|1D81F4| dw   4,  12 : db $70, $00, $00, $00

; group02
|1D81FC| dw   0,   0 : db $44, $00, $00, $02
|1D8204| dw   4,  13 : db $70, $00, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Stal:
|1D820C| LDA.b #$00
|1D820E| XBA
|1D820F| LDA.w $0DC0,X

|1D8212| REP #$20

|1D8214| ASL A ; x16
|1D8215| ASL A
|1D8216| ASL A
|1D8217| ASL A

|1D8218| ADC.w #.oam_groups
|1D821B| STA.b $08

|1D821D| SEP #$20

|1D821F| LDA.b #$02

|1D8221| LDY.w $0D80,X
|1D8224| BNE .active

|1D8226| DEC A

.active
|1D8227| JSL TabulatedSpriteDraw

|1D822B| LDA.w $0D80,X
|1D822E| BEQ .no_shadow

|1D8230| JSL DrawSpriteShadow_long

.no_shadow
|1D8234| RTS

;===================================================================================================

Sprite_D2_FloppingFish:
|1D8235| LDA.w $0FC6
|1D8238| CMP.b #$03
|1D823A| BCS .bad_gfx

|1D823C| JSR SpriteDraw_FloppingFish

.bad_gfx
|1D823F| LDA.w $0DD0,X
|1D8242| CMP.b #$0A
|1D8244| BNE .not_held

|1D8246| LDA.b #$04
|1D8248| STA.w $0D80,X

|1D824B| LDA.b $1A

|1D824D| LSR A
|1D824E| LSR A
|1D824F| LSR A

|1D8250| AND.b #$02
|1D8252| LSR A
|1D8253| ADC.b #$03

|1D8255| STA.w $0DC0,X

;---------------------------------------------------------------------------------------------------

.not_held
|1D8258| JSR CheckIfActive_bank1D

|1D825B| LDA.w $0D80,X
|1D825E| JSL JumpTableLocal
|1D8262| dw FloppingFish_CheckForWaterInit
|1D8264| dw FloppingFish_Flop
|1D8266| dw FloppingFish_PrepareLeap
|1D8268| dw FloppingFish_Leap
|1D826A| dw FloppingFish_WriggleInHands

;===================================================================================================

FloppingFish_WriggleInHands:
|1D826C| LDA.w $0F70,X
|1D826F| BNE .in_air

|1D8271| LDA.b #$01
|1D8273| STA.w $0D80,X

.in_air
|1D8276| JSR MoveSpriteXY_bank1D
|1D8279| JSL ThrownSprite_TileAndSpriteInteraction_long

|1D827D| RTS

;===================================================================================================

FloppingFish_PrepareLeap:
|1D827E| LDA.w $0DF0,X
|1D8281| BNE .exit

|1D8283| INC.w $0D80,X

|1D8286| LDA.b #$30
|1D8288| STA.w $0F80,X

;===================================================================================================

#FloppingFish_SpawnSplash:
|1D828B| JSL Sprite_SpawnSmallSplash

.exit
|1D828F| RTS

;===================================================================================================

pool FloppingFish_Leap

.anim
|1D8290| db $05, $05, $06, $06
|1D8294| db $05, $05, $04, $04
|1D8298| db $03, $07, $07, $08
|1D829C| db $08, $07, $07, $08
|1D82A0| db $08

endpool

;---------------------------------------------------------------------------------------------------

FloppingFish_Leap:
|1D82A1| JSR MoveSpriteZ_bank1D

|1D82A4| DEC.w $0F80,X
|1D82A7| DEC.w $0F80,X
|1D82AA| BNE .ascending

|1D82AC| LDY.w $0D90,X
|1D82AF| BEQ .ascending

|1D82B1| LDA.b #$74 ; MESSAGE 0174
|1D82B3| STA.w $1CF0

|1D82B6| LDA.b #$01
|1D82B8| JSR ShowMessageMinimal_bank1D

.ascending
|1D82BB| LDA.w $0F70,X
|1D82BE| BPL .in_air

|1D82C0| STZ.w $0F70,X

|1D82C3| JSR FloppingFish_SpawnSplash

|1D82C6| LDA.w $0D90,X
|1D82C9| BEQ .no_rupees

|1D82CB| LDA.b #$DB ; SPRITE DB
|1D82CD| JSL SpawnSpriteDynamically
|1D82D1| BMI .no_rupees

;---------------------------------------------------------------------------------------------------

|1D82D3| JSL SetSpawnedSpriteCoordinates

|1D82D7| LDA.b $00
|1D82D9| CLC
|1D82DA| ADC.b #$04
|1D82DC| STA.w $0D10,Y

|1D82DF| LDA.b $01
|1D82E1| ADC.b #$00
|1D82E3| STA.w $0D30,Y

|1D82E6| LDA.b #$FF
|1D82E8| STA.w $0B58,Y

|1D82EB| LDA.b #$30
|1D82ED| STA.w $0F80,Y
|1D82F0| STA.w $0EE0,Y

|1D82F3| PHX
|1D82F4| TYX

|1D82F5| LDA.b #$10
|1D82F7| JSL ApplySpeedTowardsLink_long

|1D82FB| PLX

;---------------------------------------------------------------------------------------------------

.no_rupees
|1D82FC| STZ.w $0DD0,X

.in_air
|1D82FF| INC.w $0E80,X

|1D8302| LDA.w $0E80,X
|1D8305| LSR A
|1D8306| LSR A
|1D8307| TAY

|1D8308| LDA.w .anim,Y
|1D830B| STA.w $0DC0,X

|1D830E| RTS

;===================================================================================================

FloppingFish_CheckForWaterInit:
|1D830F| JSR CheckSpriteTileCollision_bank1D

|1D8312| LDA.w $0FA5
|1D8315| CMP.b #$08 ; TILETYPE 08
|1D8317| BNE .not_water

|1D8319| STZ.w $0DD0,X

|1D831C| RTS

.not_water
|1D831D| INC.w $0D80,X

|1D8320| RTS

;===================================================================================================

pool FloppingFish_Flop

.speed_x
|1D8321| db   0,  12,  16,  12,   0, -12, -16, -12

.speed_y
|1D8329| db -16, -12,   0,  12,  16,  12,   0, -12

.boundary
|1D8331| db 2, 0

.anim
|1D8333| db $01, $05, $03

endpool

;---------------------------------------------------------------------------------------------------

FloppingFish_Flop:
|1D8336| JSL Sprite_CheckIfLifted_permissive_long
|1D833A| JSR Sprite_BounceFromTileCollision
|1D833D| JSR MoveSpriteXYZ_bank1D

|1D8340| DEC.w $0F80,X
|1D8343| DEC.w $0F80,X

|1D8346| LDA.w $0F70,X
|1D8349| BPL .in_air

|1D834B| STZ.w $0F70,X

|1D834E| LDA.w $0FA5
|1D8351| CMP.b #$09 ; TILETYPE 09
|1D8353| BEQ .shallow_water

|1D8355| CMP.b #$08 ; TILETYPE 08
|1D8357| BNE .no_water

|1D8359| STZ.w $0DD0,X

;---------------------------------------------------------------------------------------------------

.shallow_water
|1D835C| JSR FloppingFish_SpawnSplash

.no_water
|1D835F| JSL GetRandomNumber
|1D8363| AND.b #$0F
|1D8365| ADC.b #$10
|1D8367| STA.w $0F80,X

|1D836A| JSL GetRandomNumber
|1D836E| AND.b #$07
|1D8370| TAY

|1D8371| LDA.w .speed_x,Y
|1D8374| STA.w $0D50,X

|1D8377| LDA.w .speed_y,Y
|1D837A| STA.w $0D40,X

|1D837D| INC.w $0DE0,X

|1D8380| LDA.b #$03
|1D8382| STA.w $0E80,X

;---------------------------------------------------------------------------------------------------

.in_air
|1D8385| INC.w $0E80,X

|1D8388| LDA.w $0E80,X
|1D838B| AND.b #$07
|1D838D| BNE .skip_shake

|1D838F| LDA.w $0DE0,X
|1D8392| AND.b #$01
|1D8394| TAY

|1D8395| LDA.w $0D90,X
|1D8398| CMP.w .boundary,Y
|1D839B| BEQ .skip_shake

|1D839D| CLC
|1D839E| ADC.w Shakeyshake.low,Y
|1D83A1| STA.w $0D90,X

;---------------------------------------------------------------------------------------------------

.skip_shake
|1D83A4| LDA.b $1A
|1D83A6| LSR A
|1D83A7| LSR A
|1D83A8| LSR A
|1D83A9| AND.b #$01

|1D83AB| LDY.w $0D90,X
|1D83AE| CLC
|1D83AF| ADC.w .anim,Y
|1D83B2| STA.w $0DC0,X

|1D83B5| RTS

;===================================================================================================

pool SpriteDraw_FloppingFish

.oam_groups_fish
; group00
|1D83B6| dw  -4,   8 : db $5E, $04, $00, $00
|1D83BE| dw   4,   8 : db $5F, $04, $00, $00

; group01
|1D83C6| dw  -4,   8 : db $5E, $84, $00, $00
|1D83CE| dw   4,   8 : db $5F, $84, $00, $00

; group02
|1D83D6| dw  -4,   8 : db $5F, $44, $00, $00
|1D83DE| dw   4,   8 : db $5E, $44, $00, $00

; group03
|1D83E6| dw  -4,   8 : db $5F, $C4, $00, $00
|1D83EE| dw   4,   8 : db $5E, $C4, $00, $00

; group04
|1D83F6| dw   0,   0 : db $61, $04, $00, $00
|1D83FE| dw   0,   8 : db $71, $04, $00, $00

; group05
|1D8406| dw   0,   0 : db $61, $44, $00, $00
|1D840E| dw   0,   8 : db $71, $44, $00, $00

; group06
|1D8416| dw   0,   0 : db $71, $84, $00, $00
|1D841E| dw   0,   8 : db $61, $84, $00, $00

; group07
|1D8426| dw   0,   0 : db $71, $C4, $00, $00
|1D842E| dw   0,   8 : db $61, $C4, $00, $00

;---------------------------------------------------------------------------------------------------

.oam_groups_shadow
; group00
|1D8436| dw  -2,  11 : db $38, $04, $00, $00
|1D843E| dw   0,  11 : db $38, $04, $00, $00
|1D8446| dw   2,  11 : db $38, $04, $00, $00

; group01
|1D844E| dw  -1,  11 : db $38, $04, $00, $00
|1D8456| dw   0,  11 : db $38, $04, $00, $00
|1D845E| dw   1,  11 : db $38, $04, $00, $00

; group02
|1D8466| dw   0,  11 : db $38, $04, $00, $00
|1D846E| dw   0,  11 : db $38, $04, $00, $00
|1D8476| dw   0,  11 : db $38, $04, $00, $00

endpool

;===================================================================================================

DontDrawFloppingFish:
|1D847E| JSL GetScreenCoordinates_long

|1D8482| RTS

;---------------------------------------------------------------------------------------------------

SpriteDraw_FloppingFish:
|1D8483| LDA.b #$00
|1D8485| XBA
|1D8486| LDA.w $0DC0,X
|1D8489| BEQ DontDrawFloppingFish

|1D848B| DEC A

|1D848C| REP #$20

|1D848E| ASL A ; x16
|1D848F| ASL A
|1D8490| ASL A
|1D8491| ASL A

|1D8492| ADC.w #.oam_groups_fish
|1D8495| STA.b $08

|1D8497| LDA.w $0FD8
|1D849A| CLC
|1D849B| ADC.w #$0004
|1D849E| STA.w $0FD8

|1D84A1| SEP #$20

|1D84A3| LDA.b #$02
|1D84A5| JSL TabulatedSpriteDraw

|1D84A9| LDA.w $0FDA
|1D84AC| CLC
|1D84AD| ADC.w $0F70,X
|1D84B0| STA.w $0FDA

|1D84B3| LDA.w $0FDB
|1D84B6| ADC.b #$00
|1D84B8| STA.w $0FDB

|1D84BB| LDA.b #$00
|1D84BD| XBA

|1D84BE| LDA.w $0F70,X
|1D84C1| LSR A
|1D84C2| LSR A
|1D84C3| CMP.b #$02
|1D84C5| BCC .shadow

;---------------------------------------------------------------------------------------------------

|1D84C7| LDA.b #$02

.shadow
|1D84C9| REP #$20

|1D84CB| ASL A
|1D84CC| ASL A
|1D84CD| ASL A
|1D84CE| STA.b $00

|1D84D0| ASL A
|1D84D1| ADC.b $00
|1D84D3| ADC.w #.oam_groups_shadow
|1D84D6| STA.b $08

|1D84D8| LDA.b $90
|1D84DA| CLC
|1D84DB| ADC.w #$0008
|1D84DE| STA.b $90

|1D84E0| INC.b $92
|1D84E2| INC.b $92

|1D84E4| SEP #$20

|1D84E6| LDA.b #$03
|1D84E8| JSL TabulatedSpriteDraw
|1D84EC| JSL Get16BitSpriteCoords_long

|1D84F0| RTS

;===================================================================================================

pool SpriteDraw_ChimneySmoke

.oam_groups
; group00
|1D84F1| dw   0,   0 : db $86, $00, $00, $00
|1D84F9| dw   8,   0 : db $87, $00, $00, $00
|1D8501| dw   0,   8 : db $96, $00, $00, $00
|1D8509| dw   8,   8 : db $97, $00, $00, $00

; group01
|1D8511| dw   1,   1 : db $86, $00, $00, $00
|1D8519| dw   7,   1 : db $87, $00, $00, $00
|1D8521| dw   1,   7 : db $96, $00, $00, $00
|1D8529| dw   7,   7 : db $97, $00, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_ChimneySmoke:
|1D8531| LDA.b #$00
|1D8533| XBA

|1D8534| LDA.w $0DC0,X
|1D8537| AND.b #$01

|1D8539| REP #$20

|1D853B| ASL A ; x32
|1D853C| ASL A
|1D853D| ASL A
|1D853E| ASL A
|1D853F| ASL A

|1D8540| ADC.w #.oam_groups
|1D8543| STA.b $08

|1D8545| SEP #$20

|1D8547| LDA.b #$04

;===================================================================================================

#TabulatedSpriteDraw_bank1D:
|1D8549| JSL TabulatedSpriteDraw

|1D854D| RTS

;===================================================================================================

pool ChimneySmoke

.speed_target
|1D854E| db  4, -4

endpool

;---------------------------------------------------------------------------------------------------

ChimneySmoke:
|1D8550| LDA.b #$30
|1D8552| STA.w $0B89,X

|1D8555| JSR SpriteDraw_ChimneySmoke
|1D8558| JSR CheckIfActive_bank1D
|1D855B| JSR MoveSpriteXY_bank1D

|1D855E| INC.w $0E80,X

|1D8561| LDA.w $0E80,X
|1D8564| AND.b #$07
|1D8566| BNE .delay

|1D8568| LDA.w $0DE0,X
|1D856B| AND.b #$01
|1D856D| TAY

|1D856E| LDA.w $0D50,X
|1D8571| CLC
|1D8572| ADC.w Shakeyshake.low,Y
|1D8575| STA.w $0D50,X

|1D8578| CMP.w .speed_target,Y
|1D857B| BNE .delay

|1D857D| INC.w $0DE0,X

.delay
|1D8580| LDA.w $0E80,X
|1D8583| AND.b #$1F
|1D8585| BNE .exit

|1D8587| INC.w $0DC0,X

.exit
|1D858A| RTS

;===================================================================================================

Sprite_D1_BunnyBeam:
|1D858B| LDA.b $1B
|1D858D| BNE BunnyBeam

|1D858F| LDA.b #$40
|1D8591| STA.w $0E60,X
|1D8594| STA.w $0BA0,X

|1D8597| LDA.w $0D80,X
|1D859A| BNE ChimneySmoke

;---------------------------------------------------------------------------------------------------

Chimney:
|1D859C| JSR CheckIfActive_bank1D

|1D859F| LDA.w $0DF0,X
|1D85A2| BNE .exit

|1D85A4| LDA.b #$43
|1D85A6| STA.w $0DF0,X

|1D85A9| LDA.b #$D1 ; SPRITE D1
|1D85AB| JSL SpawnSpriteDynamically
|1D85AF| BMI .exit

|1D85B1| JSL SetSpawnedSpriteCoordinates

|1D85B5| LDA.b $00
|1D85B7| CLC
|1D85B8| ADC.b #$08
|1D85BA| STA.w $0D10,Y

|1D85BD| LDA.b $02
|1D85BF| ADC.b #$04
|1D85C1| STA.w $0D00,Y

|1D85C4| LDA.b #$04
|1D85C6| STA.w $0F50,Y
|1D85C9| STA.w $0D80,Y

|1D85CC| LDA.b #$43
|1D85CE| STA.w $0E40,Y
|1D85D1| STA.w $0E60,Y

|1D85D4| LDA.w ChimneySmoke.speed_target+1
|1D85D7| STA.w $0D50,Y

|1D85DA| LDA.b #$FA
|1D85DC| STA.w $0D40,Y

.exit
|1D85DF| RTS

;===================================================================================================

BunnyBeam:
|1D85E0| LDA.w $0D80,X
|1D85E3| BNE .active

|1D85E5| JSL GetScreenCoordinates_long
|1D85E9| JSR CheckIfActive_bank1D

; so bunny beams always exist
; but once collision is gone, they activate
|1D85EC| JSR CheckSpriteTileCollision_bank1D
|1D85EF| BNE .exit_a

|1D85F1| INC.w $0D80,X

|1D85F4| LDA.b #$80
|1D85F6| STA.w $0DF0,X

.exit_a
|1D85F9| RTS

;---------------------------------------------------------------------------------------------------

.char
|1D85FA| db $D7, $D7, $D7, $91, $91, $91

;---------------------------------------------------------------------------------------------------

.active
|1D8600| JSL SpriteDraw_Antifairy

|1D8604| LDA.w $0F00,X
|1D8607| BNE .paused

|1D8609| LDY.w $0DC0,X
|1D860C| LDA.w .char,Y
|1D860F| STA.b $00

|1D8611| LDY.b #$00

.next_object
|1D8613| INY
|1D8614| INY

|1D8615| LDA.b $00
|1D8617| STA.b ($90),Y

|1D8619| INY

|1D861A| LDA.b ($90),Y
|1D861C| AND.b #$F0
|1D861E| ORA.b #$02
|1D8620| STA.b ($90),Y

|1D8622| INY
|1D8623| CPY.b #$14
|1D8625| BCC .next_object

;---------------------------------------------------------------------------------------------------

.paused
|1D8627| JSR CheckIfActive_bank1D

|1D862A| LDA.w $0DF0,X
|1D862D| BNE .exit_b

|1D862F| LDA.b #$30
|1D8631| STA.w $0CD2,X

|1D8634| JSL CheckDamageToLink_long
|1D8638| BCC .no_hit

|1D863A| STZ.w $0DD0,X

|1D863D| LDA.b #$80 ; useless oops
|1D863F| STZ.w $03F5

|1D8642| LDA.b #$01
|1D8644| STA.w $03F6

.no_hit
|1D8647| LDA.b $EE
|1D8649| CMP.w $0F20,X
|1D864C| BNE .dont_chase

|1D864E| LDA.b #$10
|1D8650| JSL ApplySpeedTowardsLink_long

.dont_chase
|1D8654| JSR MoveSpriteXY_bank1D
|1D8657| JSR CheckSpriteTileCollision_bank1D
|1D865A| BEQ .exit_b

|1D865C| STZ.w $0DD0,X

|1D865F| JSL SpawnPoofGarnish

|1D8663| LDA.b #$15 ; SFX2.15
|1D8665| JSL QueueSpriteSFX2WithPan

.exit_b
|1D8669| RTS

;===================================================================================================

Sprite_D0_Lynel:
|1D866A| JSR SpriteDraw_Lynel
|1D866D| JSR CheckIfActive_bank1D
|1D8670| JSR HandleSpriteRecoil_bank1D

|1D8673| JSR GetDirectionTowardsLink_bank1D
|1D8676| TYA
|1D8677| STA.w $0DE0,X

|1D867A| JSR CheckDamageToAndFromLink_bank1D

|1D867D| LDA.w $0D80,X
|1D8680| JSL JumpTableLocal
|1D8684| dw Lynel_TargetLink
|1D8686| dw Lynel_ChaseLink
|1D8688| dw Lynel_Fire

;===================================================================================================

pool Lynel_TargetLink

.offset_x_low ; bleeds into next
|1D868A| db -96,  96

.offset_y_high
|1D868C| db   0,   0,  -1,   0

.offset_x_high
|1D8690| db  -1,   0,   0,   0

.offset_y_low
|1D8694| db   8,   8, -96, 112

endpool

;---------------------------------------------------------------------------------------------------

Lynel_TargetLink:
|1D8698| LDA.w $0DF0,X
|1D869B| BNE .delay

|1D869D| LDY.w $0DE0,X

|1D86A0| LDA.w .offset_x_low,Y
|1D86A3| CLC
|1D86A4| ADC.b $22
|1D86A6| STA.w $0D90,X

|1D86A9| LDA.w .offset_x_high,Y
|1D86AC| ADC.b $23
|1D86AE| STA.w $0DA0,X

|1D86B1| LDA.w .offset_y_low,Y
|1D86B4| CLC
|1D86B5| ADC.b $20
|1D86B7| STA.w $0DB0,X

|1D86BA| LDA.w .offset_y_high,Y
|1D86BD| ADC.b $21
|1D86BF| STA.w $0E90,X

|1D86C2| INC.w $0D80,X

|1D86C5| LDA.b #$50
|1D86C7| STA.w $0DF0,X

.delay
|1D86CA| JMP.w Lynel_Animate

;===================================================================================================

pool Lynel_ChaseLink

.anim
|1D86CD| db $03, $00, $06, $09
|1D86D1| db $04, $01, $07, $0A

endpool

;---------------------------------------------------------------------------------------------------

Lynel_ChaseLink:
|1D86D5| LDA.w $0DF0,X
|1D86D8| BEQ .ready_to_fire

|1D86DA| TXA
|1D86DB| EOR.b $1A
|1D86DD| AND.b #$03
|1D86DF| BNE .dont_turn

|1D86E1| JSR AdjustAuxCoords

|1D86E4| REP #$20

|1D86E6| LDA.b $04
|1D86E8| SEC
|1D86E9| SBC.w $0FD8
|1D86EC| CLC
|1D86ED| ADC.w #$0005

|1D86F0| CMP.w #$000A
|1D86F3| BCS .out_of_range

|1D86F5| LDA.b $06
|1D86F7| SEC
|1D86F8| SBC.w $0FDA
|1D86FB| CLC
|1D86FC| ADC.w #$0005

|1D86FF| CMP.w #$000A
|1D8702| BCS .out_of_range

;---------------------------------------------------------------------------------------------------

.ready_to_fire
|1D8704| SEP #$20

|1D8706| INC.w $0D80,X

|1D8709| LDA.b #$20
|1D870B| STA.w $0DF0,X

|1D870E| RTS

;---------------------------------------------------------------------------------------------------

.out_of_range
|1D870F| SEP #$20

|1D8711| LDA.b #$18
|1D8713| JSL ProjectSpriteSpeedTowardsLocation_long

|1D8717| LDA.b $00
|1D8719| STA.w $0D40,X

|1D871C| LDA.b $01
|1D871E| STA.w $0D50,X

.dont_turn
|1D8721| JSR MoveSpriteXY_bank1D
|1D8724| JSR CheckSpriteTileCollision_bank1D
|1D8727| BNE .ready_to_fire

|1D8729| INC.w $0E80,X

;===================================================================================================

#Lynel_Animate:
|1D872C| LDA.w $0E80,X
|1D872F| AND.b #$04
|1D8731| ORA.w $0DE0,X
|1D8734| TAY

|1D8735| LDA.w .anim,Y
|1D8738| STA.w $0DC0,X

|1D873B| RTS

;===================================================================================================

pool Lynel_Fire

.anim
|1D873C| db $05, $02, $08, $0A

endpool

;---------------------------------------------------------------------------------------------------

Lynel_Fire:
|1D8740| LDA.w $0DF0,X
|1D8743| BNE .delay

|1D8745| JSL GetRandomNumber
|1D8749| AND.b #$0F
|1D874B| ADC.b #$10
|1D874D| STA.w $0DF0,X

|1D8750| STZ.w $0D80,X

|1D8753| RTS

;---------------------------------------------------------------------------------------------------

.delay
|1D8754| CMP.b #$10
|1D8756| BNE .dont_fire

|1D8758| JSL Sprite_SpawnFirePhlegm

; THIS NEVER BRANCHES!!!!!!!!!
; The routine above ends with a PLB, so even on failure, the N flag will not be set
; IN FACT!!! THIS ENTIRE PIECE OF CODE IS USELESS!
|1D875C| BMI .dont_fire

; Makes the fire blockable with the mirror shield
|1D875E| LDA.l $7EF35A
|1D8762| CMP.b #$03
|1D8764| BEQ .dont_fire

|1D8766| LDA.b #$00
|1D8768| STA.w $0BE0,Y

.dont_fire
|1D876B| LDY.w $0DE0,X

|1D876E| LDA.w .anim,Y
|1D8771| STA.w $0DC0,X

|1D8774| JSR CheckSpriteTileCollision_bank1D

|1D8777| RTS

;===================================================================================================

pool SpriteDraw_Lynel

.oam_groups
; group00
|1D8778| dw  -5, -11 : db $CC, $00, $00, $02
|1D8780| dw  -4,   0 : db $E4, $00, $00, $02
|1D8788| dw   4,   0 : db $E5, $00, $00, $02

; group01
|1D8790| dw  -5, -10 : db $CC, $00, $00, $02
|1D8798| dw  -4,   0 : db $E7, $00, $00, $02
|1D87A0| dw   4,   0 : db $E8, $00, $00, $02

; group02
|1D87A8| dw  -5, -11 : db $C8, $00, $00, $02
|1D87B0| dw  -4,   0 : db $E4, $00, $00, $02
|1D87B8| dw   4,   0 : db $E5, $00, $00, $02

; group03
|1D87C0| dw   5, -11 : db $CC, $40, $00, $02
|1D87C8| dw  -4,   0 : db $E5, $40, $00, $02
|1D87D0| dw   4,   0 : db $E4, $40, $00, $02

; group04
|1D87D8| dw   5, -10 : db $CC, $40, $00, $02
|1D87E0| dw  -4,   0 : db $E8, $40, $00, $02
|1D87E8| dw   4,   0 : db $E7, $40, $00, $02

; group05
|1D87F0| dw   5, -11 : db $C8, $40, $00, $02
|1D87F8| dw  -4,   0 : db $E8, $40, $00, $02
|1D8800| dw   4,   0 : db $E7, $40, $00, $02

; group06
|1D8808| dw   0,  -9 : db $CE, $00, $00, $02
|1D8810| dw  -4,   0 : db $EA, $00, $00, $02
|1D8818| dw   4,   0 : db $EB, $00, $00, $02

; group07
|1D8820| dw   0,  -9 : db $CE, $00, $00, $02
|1D8828| dw  -4,   0 : db $EB, $40, $00, $02
|1D8830| dw   4,   0 : db $EA, $40, $00, $02

; group08
|1D8838| dw   0,  -9 : db $CA, $00, $00, $02
|1D8840| dw  -4,   0 : db $EB, $40, $00, $02
|1D8848| dw   4,   0 : db $EB, $00, $00, $02

; group09
|1D8850| dw   0, -14 : db $C6, $00, $00, $02
|1D8858| dw  -4,   0 : db $ED, $00, $00, $02
|1D8860| dw   4,   0 : db $EE, $00, $00, $02

; group0A
|1D8868| dw   0, -14 : db $C6, $00, $00, $02
|1D8870| dw  -4,   0 : db $EE, $40, $00, $02
|1D8878| dw   4,   0 : db $ED, $40, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Lynel:
|1D8880| LDA.b #$00
|1D8882| XBA
|1D8883| LDA.w $0DC0,X

|1D8886| REP #$20

|1D8888| ASL A
|1D8889| ASL A
|1D888A| ASL A
|1D888B| STA.b $00

|1D888D| ASL A
|1D888E| ADC.b $00
|1D8890| ADC.w #.oam_groups
|1D8893| STA.b $08

|1D8895| SEP #$20

|1D8897| LDA.b #$03
|1D8899| JSR TabulatedSpriteDraw_bank1D
|1D889C| JSL DrawSpriteShadow_long

|1D88A0| RTS

;===================================================================================================

SpawnPhantomGanon:
|1D88A1| LDA.b #$C9 ; SPRITE C9
|1D88A3| JSL SpawnSpriteDynamically
|1D88A7| JSL SetSpawnedSpriteCoordinates

|1D88AB| LDA.b #$02
|1D88AD| STA.w $0E40,Y
|1D88B0| STA.w $0BA0,Y

|1D88B3| DEC A ; A=1
|1D88B4| STA.w $0EC0,Y

|1D88B7| DEC A ; A=0
|1D88B8| STA.w $0F50,Y

|1D88BB| RTL

;===================================================================================================

PhantomGanon:
|1D88BC| LDA.w $0D80,X
|1D88BF| BNE GanonBat

|1D88C1| JSR SpriteDraw_PhantomGanon
|1D88C4| JSR CheckIfActive_bank1D
|1D88C7| JSR MoveSpriteY_bank1D

|1D88CA| INC.w $0E80,X
|1D88CD| LDA.w $0E80,X
|1D88D0| AND.b #$1F
|1D88D2| BNE .exit

|1D88D4| DEC.w $0D40,X

|1D88D7| LDA.w $0D40,X
|1D88DA| CMP.b #$FC
|1D88DC| BNE .no_poof

|1D88DE| PHA

|1D88DF| JSR SpawnBossPoof

; move it up 20 pixels
|1D88E2| LDA.w $0D00,Y
|1D88E5| SEC
|1D88E6| SBC.b #$14
|1D88E8| STA.w $0D00,Y

|1D88EB| LDA.w $0D20,Y
|1D88EE| SBC.b #$00
|1D88F0| STA.w $0D20,Y

|1D88F3| PLA

;---------------------------------------------------------------------------------------------------

.no_poof
|1D88F4| CMP.b #$FB
|1D88F6| BNE .exit

|1D88F8| INC.w $0D80,X

|1D88FB| LDA.b #$FF
|1D88FD| STA.w $0DF0,X

|1D8900| LDA.b #$FC
|1D8902| STA.w $0D40,X

.exit
|1D8905| RTS

;===================================================================================================

pool GanonBat

.anim
|1D8906| db $00, $01, $02, $01

.max_speed_x
|1D890A| db  32, -32

.max_speed_y
|1D890C| db  16, -16

endpool

;---------------------------------------------------------------------------------------------------

GanonBat:
|1D890E| JSR SpriteDraw_GanonBat

; Die when off screen
|1D8911| LDA.w $0F00,X
|1D8914| BEQ .stay_alive

|1D8916| STZ.w $0DD0,X

; Set room flag
|1D8919| LDA.w $0403
|1D891C| ORA.b #$80
|1D891E| STA.w $0403

;---------------------------------------------------------------------------------------------------

.stay_alive
|1D8921| JSR CheckIfActive_bank1D

|1D8924| LDA.b $1A
|1D8926| LSR A
|1D8927| LSR A
|1D8928| AND.b #$03
|1D892A| TAY

|1D892B| LDA.w .anim,Y
|1D892E| STA.w $0DC0,X

|1D8931| LDA.w $0DF0,X
|1D8934| BEQ .only_move

|1D8936| CMP.b #$D0
|1D8938| BCS .adjust_velocity

|1D893A| LDA.w $0EB0,X
|1D893D| AND.b #$01
|1D893F| TAY

|1D8940| LDA.w $0D40,X
|1D8943| CLC
|1D8944| ADC.w Shakeyshake.low,Y
|1D8947| STA.w $0D40,X

|1D894A| CMP.w .max_speed_y,Y
|1D894D| BNE .target_not_reached

|1D894F| INC.w $0EB0,X

.target_not_reached
|1D8952| LDA.w $0DE0,X
|1D8955| AND.b #$01
|1D8957| TAY

|1D8958| LDA.w $0D50,X
|1D895B| CLC
|1D895C| ADC.w Shakeyshake.low,Y
|1D895F| STA.w $0D50,X

|1D8962| BNE .no_sfx

|1D8964| PHA

|1D8965| LDA.b #$1E ; SFX3.1E
|1D8967| JSL QueueSpriteSFX3WithPan

|1D896B| PLA

.no_sfx
|1D896C| CMP.w .max_speed_x,Y
|1D896F| BNE .adjust_velocity

|1D8971| INC.w $0DE0,X

.adjust_velocity
; Shares Link's high byte coordinates?
|1D8974| LDA.b #$78
|1D8976| STA.b $04

|1D8978| LDA.b #$50
|1D897A| STA.b $06

|1D897C| LDA.b $23
|1D897E| STA.b $05

|1D8980| LDA.b $21
|1D8982| STA.b $07

|1D8984| LDA.b #$05
|1D8986| JSL ProjectSpriteSpeedTowardsLocation_long

; Looks like it gets an initial kick in speed?
|1D898A| LDA.w $0D50,X
|1D898D| PHA

|1D898E| CLC
|1D898F| ADC.b $01
|1D8991| STA.w $0D50,X

|1D8994| LDA.w $0D40,X
|1D8997| PHA

|1D8998| CLC
|1D8999| ADC.b $00
|1D899B| STA.w $0D40,X

|1D899E| JSR MoveSpriteXY_bank1D

|1D89A1| PLA
|1D89A2| STA.w $0D40,X

|1D89A5| PLA
|1D89A6| STA.w $0D50,X

|1D89A9| RTS

.only_move
|1D89AA| JSR MoveSpriteXY_bank1D

|1D89AD| LDA.w $0D50,X
|1D89B0| CMP.b #$40
|1D89B2| BEQ .exit

|1D89B4| INC.w $0D50,X
|1D89B7| DEC.w $0D40,X

.exit
|1D89BA| RTS

;===================================================================================================

pool SpriteDraw_GanonBat

.oam_groups
; group00
|1D89BB| dw  -8,   0 : db $60, $05, $00, $02
|1D89C3| dw   8,   0 : db $60, $45, $00, $02

; group01
|1D89CB| dw  -8,   0 : db $62, $05, $00, $02
|1D89D3| dw   8,   0 : db $62, $45, $00, $02

; group02
|1D89DB| dw  -8,   0 : db $44, $05, $00, $02
|1D89E3| dw   8,   0 : db $44, $45, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_GanonBat:
|1D89EB| LDA.b #$00
|1D89ED| XBA
|1D89EE| LDA.w $0DC0,X

|1D89F1| REP #$20

|1D89F3| ASL A ; x16
|1D89F4| ASL A
|1D89F5| ASL A
|1D89F6| ASL A
|1D89F7| CLC
|1D89F8| ADC.w #.oam_groups
|1D89FB| STA.b $08

|1D89FD| SEP #$20

|1D89FF| LDA.b #$02
|1D8A01| JMP.w TabulatedSpriteDraw_bank1D

;===================================================================================================

pool SpriteDraw_PhantomGanon

.oam_groups
; group00
|1D8A04| dw -16,  -8 : db $46, $0D, $00, $02
|1D8A0C| dw  -8,  -8 : db $47, $0D, $00, $02
|1D8A14| dw   8,  -8 : db $47, $4D, $00, $02
|1D8A1C| dw  16,  -8 : db $46, $4D, $00, $02
|1D8A24| dw -16,   8 : db $69, $0D, $00, $02
|1D8A2C| dw  -8,   8 : db $6A, $0D, $00, $02
|1D8A34| dw   8,   8 : db $6A, $4D, $00, $02
|1D8A3C| dw  16,   8 : db $69, $4D, $00, $02

; group01
|1D8A44| dw -16,  -8 : db $46, $0D, $00, $02
|1D8A4C| dw  -8,  -8 : db $47, $0D, $00, $02
|1D8A54| dw   8,  -8 : db $47, $4D, $00, $02
|1D8A5C| dw  16,  -8 : db $46, $4D, $00, $02
|1D8A64| dw -16,   8 : db $66, $0D, $00, $02
|1D8A6C| dw  -8,   8 : db $67, $0D, $00, $02
|1D8A74| dw   8,   8 : db $67, $4D, $00, $02
|1D8A7C| dw  16,   8 : db $66, $4D, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_PhantomGanon:
|1D8A84| LDA.b #$00
|1D8A86| XBA
|1D8A87| LDA.w $0DC0,X

|1D8A8A| REP #$20

|1D8A8C| ASL A ; x64
|1D8A8D| ASL A
|1D8A8E| ASL A
|1D8A8F| ASL A
|1D8A90| ASL A
|1D8A91| ASL A
|1D8A92| CLC
|1D8A93| ADC.w #.oam_groups
|1D8A96| STA.b $08

; [HARDCODED] oam slots
|1D8A98| LDA.w #$0950
|1D8A9B| STA.b $90

|1D8A9D| LDA.w #$0A74
|1D8AA0| STA.b $92

|1D8AA2| SEP #$20

|1D8AA4| LDA.b #$08
|1D8AA6| JMP.w TabulatedSpriteDraw_bank1D

;===================================================================================================

SwishEvery16Frames:
|1D8AA9| LDA.b $1A
|1D8AAB| AND.b #$0F
|1D8AAD| BNE .exit

|1D8AAF| LDA.b #$06 ; SFX3.06
|1D8AB1| JSL QueueSpriteSFX3WithPan

.exit
|1D8AB5| RTS

;===================================================================================================

GanonTrident:
|1D8AB6| JSR SpriteDraw_GanonTrident
|1D8AB9| JSR CheckIfActive_bank1D
|1D8ABC| JSR CheckDamageToAndFromLink_bank1D
|1D8ABF| JSR SwishEvery16Frames
|1D8AC2| JSR MoveSpriteXY_bank1D

|1D8AC5| DEC.w $0E80,X

|1D8AC8| LDA.w $0E80,X
|1D8ACB| LSR A
|1D8ACC| LSR A
|1D8ACD| AND.b #$07
|1D8ACF| TAY

|1D8AD0| LDA.w GanonTrident_Timers,Y
|1D8AD3| STA.w $0ED0,X

|1D8AD6| LDA.w $0DF0,X
|1D8AD9| BEQ GanonTrident_TakeAim

|1D8ADB| LSR A
|1D8ADC| BCS .exit

|1D8ADE| LDA.b #$20
|1D8AE0| JSL ProjectSpriteSpeedTowardsLink_long

;===================================================================================================

#GanonTrident_AdjustVelocity:
|1D8AE4| LDA.b $00
|1D8AE6| CMP.w $0D40,X
|1D8AE9| BEQ .handle_x
|1D8AEB| BPL .accelerate_y

.decelerate_y
|1D8AED| DEC.w $0D40,X
|1D8AF0| BRA .handle_x

.accelerate_y
|1D8AF2| INC.w $0D40,X

.handle_x
|1D8AF5| LDA.b $01
|1D8AF7| CMP.w $0D50,X
|1D8AFA| BEQ .exit
|1D8AFC| BPL .accelerate_x

.decelerate_x
|1D8AFE| DEC.w $0D50,X
|1D8B01| BRA .exit

.accelerate_x
|1D8B03| INC.w $0D50,X

.exit
|1D8B06| RTS

;===================================================================================================

pool GanonTrident_TakeAim

.offset_x_low
|1D8B07| db  24, -16

.offset_x_high
|1D8B09| db   0,  -1

endpool

;---------------------------------------------------------------------------------------------------

GanonTrident_TakeAim:
; [HARDCODED] slots, that assume Ganon is in slot 0
|1D8B0B| LDY.w $0DE0 ; Ganon's direction to find the offset

|1D8B0E| LDA.w $0D10
|1D8B11| CLC
|1D8B12| ADC.w .offset_x_low,Y
|1D8B15| STA.b $04

|1D8B17| LDA.w $0D30
|1D8B1A| ADC.w .offset_x_high,Y
|1D8B1D| STA.b $05

|1D8B1F| LDA.w $0D00
|1D8B22| CLC
|1D8B23| ADC.b #$F0
|1D8B25| STA.b $06

|1D8B27| LDA.w $0D20
|1D8B2A| ADC.b #$FF
|1D8B2C| STA.b $07

|1D8B2E| JSR Ganon_AttemptTridentCatch
|1D8B31| BCS .miss

|1D8B33| STZ.w $0DD0,X

|1D8B36| LDA.b #$03
|1D8B38| STA.w $0D80

|1D8B3B| LDA.b #$10
|1D8B3D| STA.w $0DF0

.miss
|1D8B40| LDA.b #$20
|1D8B42| JSL ProjectSpriteSpeedTowardsLocation_long

|1D8B46| JMP.w GanonTrident_AdjustVelocity

;===================================================================================================

FireBat_Trailer:
|1D8B49| JSR SpriteDraw_FireBat
|1D8B4C| JSR CheckIfActive_bank1D

|1D8B4F| JMP.w FireBat_Move

;===================================================================================================

FireBat_Spiral:
|1D8B52| JSR SpriteDraw_FireBat
|1D8B55| JSR CheckIfActive_bank1D
|1D8B58| JSR AdjustAuxCoords

|1D8B5B| LDA.b #$02
|1D8B5D| JSL ProjectSpriteSpeedTowardsLocation_long

|1D8B61| LDA.b $00
|1D8B63| STA.w $0D40,X

|1D8B66| LDA.b $01
|1D8B68| STA.w $0D50,X

|1D8B6B| LDA.b #$50
|1D8B6D| JSL ProjectSpriteSpeedTowardsLocation_long

; invert x speed
|1D8B71| LDA.w $0D50,X
|1D8B74| EOR.b #$FF
|1D8B76| INC A
|1D8B77| CLC
|1D8B78| ADC.b $00
|1D8B7A| STA.w $0D50,X

; invert y speed
|1D8B7D| LDA.w $0D40,X
|1D8B80| EOR.b #$FF
|1D8B82| INC A
|1D8B83| STA.b $00

; y speed adds in the x speed?
|1D8B85| LDA.b $01
|1D8B87| EOR.b #$FF
|1D8B89| INC A
|1D8B8A| CLC
|1D8B8B| ADC.b $00
|1D8B8D| STA.w $0D40,X

;===================================================================================================

FireBat_Move:
|1D8B90| JSR FireBat_Animate
|1D8B93| JSR MoveSpriteXY_bank1D

|1D8B96| LDA.w $0E80,X
|1D8B99| AND.b #$07
|1D8B9B| BNE .exit

|1D8B9D| LDA.b #$0E
|1D8B9F| JSR FireBat_SpawnFireballGarnish

|1D8BA2| LDY.w $0EC0,X

|1D8BA5| PHX

; this is mostly redundant
; but it forces a fire ball to spawn in slot $0E
|1D8BA6| LDX.b $00

|1D8BA8| LDA.b #$10 ; GARNISH 10
|1D8BAA| STA.l $7FF800,X

; Set a timer, with trailing bats using a longer timer
|1D8BAE| LDA.b #$4F
|1D8BB0| CPY.b #$05
|1D8BB2| BNE .use_longer_timer

|1D8BB4| LDA.b #$2F

.use_longer_timer
|1D8BB6| STA.l $7FF90E,X

|1D8BBA| PLX

.exit
|1D8BBB| RTS

;===================================================================================================

AdjustAuxCoords:
|1D8BBC| LDA.w $0D90,X
|1D8BBF| STA.b $04

|1D8BC1| LDA.w $0DA0,X
|1D8BC4| STA.b $05

|1D8BC6| LDA.w $0DB0,X
|1D8BC9| STA.b $06

|1D8BCB| LDA.w $0E90,X
|1D8BCE| STA.b $07

|1D8BD0| RTS

;===================================================================================================

FireBat_OverlordOffset:
.x_low
|1D8BD1| db  20, -18

.x_high
|1D8BD3| db   0,  -1

.y_low
|1D8BD5| db -20, -20

;===================================================================================================

FireBat_Launched:
|1D8BD7| JSR SpriteDraw_FireBat
|1D8BDA| JSR CheckIfActive_bank1D
|1D8BDD| JSL CheckDamageToLink_long

|1D8BE1| LDA.w $0D80,X
|1D8BE4| JSL JumpTableLocal
|1D8BE8| dw FireBat_PositionSelfAndAnimateAndPrepareForLaunch
|1D8BEA| dw FireBat_PositionSelfAndAnimate
|1D8BEC| dw FireBat_LaunchedFlying

;===================================================================================================

GetPositionRelativeToTheGreatOverlordGanon:
|1D8BEE| LDY.w $0DE0

|1D8BF1| LDA.w $0B10,X
|1D8BF4| CLC
|1D8BF5| ADC.w FireBat_OverlordOffset.x_low,Y
|1D8BF8| STA.w $0D10,X

|1D8BFB| LDA.w $0B20,X
|1D8BFE| ADC.w FireBat_OverlordOffset.x_high,Y
|1D8C01| STA.w $0D30,X

|1D8C04| LDA.w $0B30,X
|1D8C07| CLC
|1D8C08| ADC.w FireBat_OverlordOffset.y_low,Y
|1D8C0B| STA.w $0D00,X

; Y offset is always negative, so it doesn't use a table
|1D8C0E| LDA.w $0B40,X
|1D8C11| ADC.b #$FF
|1D8C13| STA.w $0D20,X

|1D8C16| RTS

;===================================================================================================

FireBat_PositionSelfAndAnimateAndPrepareForLaunch:
|1D8C17| JSR GetPositionRelativeToTheGreatOverlordGanon

|1D8C1A| LDA.w $0DF0,X
|1D8C1D| BNE FireBat_AdjustAnimationState

|1D8C1F| INC.w $0D80,X

|1D8C22| RTS

;---------------------------------------------------------------------------------------------------

FireBat_AdjustAnimationState:
|1D8C23| AND.b #$04
|1D8C25| LSR A
|1D8C26| LSR A
|1D8C27| STA.w $0DC0,X

|1D8C2A| RTS

;===================================================================================================

FireBat_AnimationStates:

.launched
|1D8C2B| db $04, $04, $04, $03, $03, $03, $02, $02, $02

.normal
|1D8C34| db $04, $05, $06, $05

;===================================================================================================

FireBat_PositionSelfAndAnimate:
|1D8C38| JSR GetPositionRelativeToTheGreatOverlordGanon

|1D8C3B| INC.w $0E80,X
|1D8C3E| LDA.w $0E80,X
|1D8C41| BRA FireBat_AdjustAnimationState

;===================================================================================================

FireBat_Animate:
|1D8C43| INC.w $0E80,X

|1D8C46| LDA.w $0E80,X
|1D8C49| LSR A
|1D8C4A| LSR A
|1D8C4B| AND.b #$03
|1D8C4D| TAY

|1D8C4E| LDA.w FireBat_AnimationStates.normal,Y
|1D8C51| STA.w $0DC0,X

|1D8C54| RTS

;===================================================================================================

FireBat_LaunchedFlying:
|1D8C55| JSR MoveSpriteXY_bank1D

|1D8C58| LDA.b #$40
|1D8C5A| STA.w $0CAA,X

|1D8C5D| LDA.w $0E00,X
|1D8C60| BEQ .begin_anim

|1D8C62| CMP.b #$01
|1D8C64| BEQ .calculate_speed

|1D8C66| LSR A
|1D8C67| LSR A
|1D8C68| TAY
|1D8C69| LDA.w FireBat_AnimationStates.launched,Y
|1D8C6C| STA.w $0DC0,X

|1D8C6F| RTS

.begin_anim
|1D8C70| LDA.w $0DF0,X
|1D8C73| BEQ .delay

|1D8C75| DEC A
|1D8C76| BNE FireBat_AdjustAnimationState

|1D8C78| LDA.b #$23
|1D8C7A| STA.w $0E00,X

|1D8C7D| BRA FireBat_AdjustAnimationState

.calculate_speed
|1D8C7F| LDA.b #$30
|1D8C81| JSL ApplySpeedTowardsLink_long

|1D8C85| LDA.b #$1E ; SFX3.1E
|1D8C87| JSL QueueSpriteSFX3WithPan

.delay
|1D8C8B| JSR FireBat_Animate

|1D8C8E| BRA FireBat_Animate

;===================================================================================================

pool SpriteDraw_FireBat

.offset_x
|1D8C90| dw -8,  8

.char
|1D8C94| db $88
|1D8C95| db $88
|1D8C96| db $8A
|1D8C97| db $8C
|1D8C98| db $68
|1D8C99| db $AA
|1D8C9A| db $A8

.flip
|1D8C9B| db $00, $C0
|1D8C9D| db $80, $40
|1D8C9F| db $00, $40
|1D8CA1| db $00, $40
|1D8CA3| db $00, $40
|1D8CA5| db $00, $40
|1D8CA7| db $00, $40

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_FireBat:
|1D8CA9| JSR GetScreenCoordinates_bank1D

|1D8CAC| LDA.w $0DC0,X
|1D8CAF| STA.b $07

|1D8CB1| ASL A
|1D8CB2| STA.b $06

|1D8CB4| PHX

|1D8CB5| LDX.b #$01

.next_object
|1D8CB7| PHX

|1D8CB8| TXA
|1D8CB9| ASL A
|1D8CBA| TAX

|1D8CBB| REP #$20

|1D8CBD| LDA.b $00
|1D8CBF| CLC
|1D8CC0| ADC.w .offset_x,X
|1D8CC3| STA.b ($90),Y

|1D8CC5| AND.w #$0100
|1D8CC8| STA.b $0E

|1D8CCA| LDA.b $02
|1D8CCC| INY
|1D8CCD| STA.b ($90),Y

|1D8CCF| CLC
|1D8CD0| ADC.w #$0010
|1D8CD3| CMP.w #$0100

|1D8CD6| SEP #$20

|1D8CD8| BCC .on_screen

|1D8CDA| LDA.b #$F0
|1D8CDC| STA.b ($90),Y

.on_screen
|1D8CDE| LDX.b $07

|1D8CE0| LDA.w .char,X
|1D8CE3| INY
|1D8CE4| STA.b ($90),Y

|1D8CE6| PLA
|1D8CE7| PHA
|1D8CE8| ORA.b $06
|1D8CEA| TAX

|1D8CEB| LDA.w .flip,X
|1D8CEE| ORA.b $05
|1D8CF0| INY
|1D8CF1| STA.b ($90),Y

|1D8CF3| PHY

|1D8CF4| TYA
|1D8CF5| LSR A
|1D8CF6| LSR A
|1D8CF7| TAY

|1D8CF8| LDA.b #$02
|1D8CFA| ORA.b $0F
|1D8CFC| STA.b ($92),Y

|1D8CFE| PLY

|1D8CFF| INY

|1D8D00| PLX
|1D8D01| DEX
|1D8D02| BPL .next_object

;---------------------------------------------------------------------------------------------------

|1D8D04| PLX

|1D8D05| RTS

;===================================================================================================

Ganon_AttemptTridentCatch:
|1D8D06| REP #$20

|1D8D08| LDA.w $0FD8
|1D8D0B| SEC
|1D8D0C| SBC.b $04
|1D8D0E| CLC
|1D8D0F| ADC.w #$0004

|1D8D12| CMP.w #$0008
|1D8D15| BCS .catch

|1D8D17| LDA.w $0FDA
|1D8D1A| SEC
|1D8D1B| SBC.b $06
|1D8D1D| CLC
|1D8D1E| ADC.w #$0004

; pointless branch
|1D8D21| CMP.w #$0008
|1D8D24| BCS .catch

.catch
|1D8D26| SEP #$20

|1D8D28| RTS

;===================================================================================================

SpritePrep_Ganon_PrepareBattle:
|1D8D29| PHB
|1D8D2A| PHK
|1D8D2B| PLB

|1D8D2C| JSR Ganon_HandleAnimation_Idle

|1D8D2F| LDA.b #$80
|1D8D31| STA.w $0DF0,X

|1D8D34| LDA.b #$02
|1D8D36| STA.w $0C9A,X

|1D8D39| LDA.b #$1E ; SONG 1E
|1D8D3B| STA.w $012C

|1D8D3E| PLB

|1D8D3F| RTL

;===================================================================================================
; TODO ANALYZE
;===================================================================================================
pool Ganon_HandleFireBatCircle

.offset_x1
|1D8D40| db $00, $00, $40, $00, $80, $00, $C0, $00
|1D8D48| db $00, $01, $40, $01, $80, $01, $C0, $01

.offset_x2
|1D8D50| db $00, $10, $18, $1C, $20, $1C, $18, $10
|1D8D58| db $00, $F0, $E8, $E4, $E0, $E4, $E8, $F0

.offset_x3
|1D8D60| db $20, $1C, $18, $10, $00, $F0, $E8, $E4
|1D8D68| db $E0, $E4, $E8, $F0, $00, $10, $18, $1C

endpool

;---------------------------------------------------------------------------------------------------

Ganon_HandleFireBatCircle:
|1D8D70| LDA.b #$FC
|1D8D72| CLC
|1D8D73| ADC.w $0B08
|1D8D76| STA.w $0B08

|1D8D79| LDA.b #$FF
|1D8D7B| ADC.w $0B09
|1D8D7E| STA.w $0B09

|1D8D81| STZ.w $0FB5

|1D8D84| PHX

.next_bat
|1D8D85| LDA.w $0FB5
|1D8D88| TAX

|1D8D89| ASL A
|1D8D8A| TAY

|1D8D8B| REP #$20

|1D8D8D| LDA.w $0B08
|1D8D90| CLC
|1D8D91| ADC.w .offset_x1,Y
|1D8D94| AND.w #$01FF
|1D8D97| STA.b $00

|1D8D99| LSR A ; /32
|1D8D9A| LSR A
|1D8D9B| LSR A
|1D8D9C| LSR A
|1D8D9D| LSR A

|1D8D9E| TAY

;---------------------------------------------------------------------------------------------------

|1D8D9F| SEP #$20

|1D8DA1| LDA.w $0D81,X
|1D8DA4| CMP.b #$02
|1D8DA6| BEQ .am_bat_now

|1D8DA8| TYA
|1D8DA9| SEC
|1D8DAA| SBC.b #$04
|1D8DAC| AND.b #$0F
|1D8DAE| TAY

|1D8DAF| LDA.w .offset_x2,Y
|1D8DB2| STA.w $0D51,X

|1D8DB5| ASL A
|1D8DB6| PHP
|1D8DB7| ROR.w $0D51,X

|1D8DBA| PLP
|1D8DBB| ROR.w $0D51,X

|1D8DBE| LDA.w .offset_x3,Y
|1D8DC1| STA.w $0D41,X

|1D8DC4| ASL A
|1D8DC5| PHP
|1D8DC6| ROR.w $0D41,X

|1D8DC9| PLP
|1D8DCA| ROR.w $0D41,X

;---------------------------------------------------------------------------------------------------

.am_bat_now
|1D8DCD| LDA.w $0B0A
|1D8DD0| STA.b $0F

|1D8DD2| PHX

|1D8DD3| REP #$30

|1D8DD5| LDA.b $00
|1D8DD7| AND.w #$00FF
|1D8DDA| ASL A
|1D8DDB| TAX

|1D8DDC| LDA.l TrigTable,X
|1D8DE0| STA.b $04

|1D8DE2| LDA.b $00
|1D8DE4| CLC
|1D8DE5| ADC.w #$0080
|1D8DE8| STA.b $02

|1D8DEA| AND.w #$00FF
|1D8DED| ASL A
|1D8DEE| TAX

|1D8DEF| LDA.l TrigTable,X
|1D8DF3| STA.b $06

|1D8DF5| SEP #$30

;---------------------------------------------------------------------------------------------------

|1D8DF7| PLX

|1D8DF8| LDA.b $04
|1D8DFA| STA.w WRMPYA

|1D8DFD| LDA.b $0F
|1D8DFF| LDY.b $05
|1D8E01| BNE .nonzero_a

|1D8E03| STA.w WRMPYB

|1D8E06| JSR SixNOP

|1D8E09| ASL.w RDMPYL ; carry = round up
|1D8E0C| LDA.w RDMPYH
|1D8E0F| ADC.b #$00

.nonzero_a
|1D8E11| LSR.b $01
|1D8E13| BCC .dont_invert_a

|1D8E15| EOR.b #$FF
|1D8E17| INC A

.dont_invert_a
|1D8E18| STZ.b $0A

|1D8E1A| CMP.b #$00
|1D8E1C| BPL .delay_tick_a

|1D8E1E| DEC.b $0A

.delay_tick_a
|1D8E20| CLC
|1D8E21| ADC.w $0D10
|1D8E24| STA.w $0B11,X

|1D8E27| LDA.w $0D30
|1D8E2A| ADC.b $0A
|1D8E2C| STA.w $0B21,X

;---------------------------------------------------------------------------------------------------

|1D8E2F| LDA.b $06
|1D8E31| STA.w WRMPYA

|1D8E34| LDA.b $0F

|1D8E36| LDY.b $07
|1D8E38| BNE .nonzero_b

|1D8E3A| STA.w WRMPYB

|1D8E3D| JSR SixNOP

|1D8E40| ASL.w RDMPYL ; carry = round up
|1D8E43| LDA.w RDMPYH
|1D8E46| ADC.b #$00

.nonzero_b
|1D8E48| LSR.b $03
|1D8E4A| BCC .dont_invert_b

|1D8E4C| EOR.b #$FF
|1D8E4E| INC A

.dont_invert_b
|1D8E4F| STZ.b $0A

|1D8E51| CMP.b #$00
|1D8E53| BPL .delay_tick_b

|1D8E55| DEC.b $0A

.delay_tick_b
|1D8E57| CLC
|1D8E58| ADC.w $0D00
|1D8E5B| STA.w $0B31,X

|1D8E5E| LDA.w $0D20
|1D8E61| ADC.b $0A
|1D8E63| STA.w $0B41,X

|1D8E66| INC.w $0FB5

|1D8E69| LDA.w $0FB5
|1D8E6C| CMP.b #$08
|1D8E6E| BEQ .exit

;---------------------------------------------------------------------------------------------------

|1D8E70| JMP.w .next_bat

.exit
|1D8E73| PLX

|1D8E74| RTS

;===================================================================================================

SixNOP:
|1D8E75| NOP ; one
|1D8E76| NOP ; two
|1D8E77| NOP ; three
|1D8E78| NOP ; four
|1D8E79| NOP ; five
|1D8E7A| NOP ; six

|1D8E7B| RTS

;===================================================================================================

Ganon_SpawnSpiralBat:
|1D8E7C| LDA.b #$C9 ; SPRITE C9
|1D8E7E| LDY.b #$08
|1D8E80| JSL SpawnSpriteDynamically.slot_limited
|1D8E84| BMI .no_space

|1D8E86| JSL SetSpawnedSpriteCoordinates

|1D8E8A| LDA.b #$04
|1D8E8C| STA.w $0EC0,Y

|1D8E8F| LDA.b #$03
|1D8E91| STA.w $0F50,Y

|1D8E94| LDA.b #$40
|1D8E96| STA.w $0E60,Y

|1D8E99| LDA.b #$01
|1D8E9B| STA.w $0E40,Y

|1D8E9E| LDA.b #$80
|1D8EA0| STA.w $0CAA,Y
|1D8EA3| STA.w $0D20,Y

|1D8EA6| LDA.b #$30
|1D8EA8| STA.w $0DF0,Y

;===================================================================================================

#Ganon_SetSpawnedEntityProperties:
|1D8EAB| LDA.b #$07
|1D8EAD| STA.w $0CD2,Y
|1D8EB0| STA.w $0BA0,Y

.no_space
|1D8EB3| RTS

;===================================================================================================

Sprite_D6_Ganon:
Sprite_D7_Ganon:
|1D8EB4| LDA.w $0D80,X
|1D8EB7| BPL .not_dying

|1D8EB9| JSR CheckIfActive_bank1D

|1D8EBC| LDA.w $0DF0,X
|1D8EBF| BNE .live

|1D8EC1| STZ.w $0DD0,X

.live
|1D8EC4| LSR A
|1D8EC5| BCS .exit

|1D8EC7| JSR SpriteDraw_Ganon

.exit
|1D8ECA| RTS

;---------------------------------------------------------------------------------------------------

.direction
|1D8ECB| db $02, $00

.anim_steps
|1D8ECD| db $10, $0A

;---------------------------------------------------------------------------------------------------

.not_dying
|1D8ECF| LDA.w $0F10,X
|1D8ED2| BEQ .delay_step

|1D8ED4| LDY.w $0DE0,X
|1D8ED7| LDA.w .anim_steps,Y
|1D8EDA| STA.w $0DC0,X

.delay_step
|1D8EDD| LDA.w $04C5
|1D8EE0| CMP.b #$02
|1D8EE2| BNE .vulnerable

; This looks like a hardcoded room check
; but this address is actually abused as a vulnerability flag
|1D8EE4| CMP.w $0C9A,X
|1D8EE7| BEQ .vulnerable

|1D8EE9| PHA

|1D8EEA| LDA.b #$40
|1D8EEC| STA.w $0E00,X

|1D8EEF| PLA

;---------------------------------------------------------------------------------------------------

.vulnerable
|1D8EF0| STA.w $0C9A,X

|1D8EF3| JSR SpriteDraw_Ganon

|1D8EF6| LDA.w $0E00,X
|1D8EF9| BEQ .invuln_timer_over

|1D8EFB| LDA.b #$0F
|1D8EFD| STA.w $0DC0,X

|1D8F00| JSR Ganon_EnableInvincibility
|1D8F03| JMP.w CheckDamageToAndFromLink_bank1D

.invuln_timer_over
|1D8F06| JSR CheckIfActive_bank1D

|1D8F09| LDA.w $0E10,X
|1D8F0C| BEQ .continue

|1D8F0E| CMP.b #$10
|1D8F10| BEQ .adjust_lighting_and_trans

|1D8F12| CMP.b #$01
|1D8F14| BNE .continue

;---------------------------------------------------------------------------------------------------

.adjust_lighting
|1D8F16| PHX

|1D8F17| JSL ExtinguishGanonTorch

|1D8F1B| PLX

|1D8F1C| BRA .continue

;---------------------------------------------------------------------------------------------------

.adjust_lighting_and_trans
|1D8F1E| PHX

|1D8F1F| JSL ExtinguishGanonTorch_adjust_translucency

|1D8F23| PLX

;---------------------------------------------------------------------------------------------------

.continue
|1D8F24| JSR GetXDisplacementFromLink_bank1D

; Check for Link being within 64 pixels to look forward
|1D8F27| LDA.b $0F
|1D8F29| ADC.b #$20
|1D8F2B| CMP.b #$40

|1D8F2D| LDA.b #$01
|1D8F2F| BCC .dont_turn_head

|1D8F31| LDA.w .direction,Y

.dont_turn_head
|1D8F34| STA.w $0EB0,X

|1D8F37| LDA.w $0F10,X
|1D8F3A| BEQ .skip_recoil

|1D8F3C| STA.w $0BA0,X

|1D8F3F| JSR HandleSpriteRecoil_bank1D

|1D8F42| STZ.w $0DF0,X

|1D8F45| RTS

.skip_recoil
|1D8F46| LDA.w $0BA0,X
|1D8F49| ORA.w $02E4
|1D8F4C| BNE .skip_damage

|1D8F4E| LDA.w $04C5
|1D8F51| CMP.b #$02
|1D8F53| BNE .skip_damage

|1D8F55| JSR CheckDamageToAndFromLink_bank1D

;---------------------------------------------------------------------------------------------------

.skip_damage
|1D8F58| STZ.w $0BA0,X

|1D8F5B| LDA.w $0D80,X
|1D8F5E| JSL JumpTableLocal

|1D8F62| dw Ganon_Phase1_IntroduceSelf        ; 0x00
|1D8F64| dw Ganon_Phase1_ThrowTrident         ; 0x01
|1D8F66| dw Ganon_Phase1_WaitForTrident       ; 0x02
|1D8F68| dw Ganon_Phase1_MakePhaseDecision    ; 0x03
|1D8F6A| dw Ganon_Phase1_Warp                 ; 0x04
|1D8F6C| dw Ganon_LookAround                  ; 0x05

|1D8F6E| dw Ganon_Phase2_HoldTrident          ; 0x06
|1D8F70| dw Ganon_Phase2_CircleOfBats         ; 0x07
|1D8F72| dw Ganon_Phase2_LaunchSpiralBats     ; 0x08
|1D8F74| dw Ganon_Phase2_Warp                 ; 0x09
|1D8F76| dw Ganon_LookAround                  ; 0x0A
|1D8F78| dw Ganon_Phase2_MakePhaseDecision    ; 0x0B

|1D8F7A| dw Ganon_Phase3_FireBats             ; 0x0C
|1D8F7C| dw Ganon_Phase3_Warp                 ; 0x0D
|1D8F7E| dw Ganon_Phase3_SabotagePB           ; 0x0E
|1D8F80| dw Ganon_Phase3_SmashFloor           ; 0x0F
|1D8F82| dw Ganon_Phase3_DropTiles            ; 0x10

|1D8F84| dw Ganon_Phase4_Attack               ; 0x11
|1D8F86| dw Ganon_LookAround                  ; 0x12
|1D8F88| dw Ganon_Phase4_Stunned              ; 0x13

;===================================================================================================
; Blue pig
;===================================================================================================
pool Ganon_Phase4_Stunned

.draw
|1D8F8A| db $05, $0D

endpool

;---------------------------------------------------------------------------------------------------

Ganon_Phase4_Stunned:
|1D8F8C| LDA.b #$05
|1D8F8E| STA.w $0F50,X

|1D8F91| LDA.b #$02
|1D8F93| STA.w $0B6B,X

|1D8F96| LDA.w $0DF0,X
|1D8F99| BNE .delay

|1D8F9B| LDA.b #$01
|1D8F9D| STA.w $0F50,X

|1D8FA0| LDA.b #$12
|1D8FA2| JSR Ganon_SelectWarpLocation

|1D8FA5| LDA.b #$D6 ; SPRITE D6
|1D8FA7| STA.w $0E20,X

|1D8FAA| STZ.w $0EF0,X

|1D8FAD| RTS

;---------------------------------------------------------------------------------------------------

.delay
|1D8FAE| LDY.w $0DE0,X

|1D8FB1| LDA.w .draw,Y
|1D8FB4| STA.w $0DC0,X

|1D8FB7| RTS

;===================================================================================================

pool Ganon_Phase4_Attack

.draw_aaa ; TODO better names
|1D8FB8| db $06, $0E

.draw_bbb
|1D8FBA| db $07, $0A

endpool

;---------------------------------------------------------------------------------------------------

Ganon_Phase4_Attack:
|1D8FBC| LDY.w $0DE0,X

|1D8FBF| LDA.w .draw_aaa,Y
|1D8FC2| STA.w $0DC0,X

|1D8FC5| LDA.w $0DF0,X
|1D8FC8| BNE .delay

|1D8FCA| LDA.b #$12
|1D8FCC| JSR Ganon_SelectWarpLocation

|1D8FCF| RTS

;---------------------------------------------------------------------------------------------------

.delay
|1D8FD0| CMP.b #$34
|1D8FD2| PHP
|1D8FD3| BNE .not_the_B52s

|1D8FD5| JSR Ganon_SpawnFireBat_trailing

;---------------------------------------------------------------------------------------------------

.not_the_B52s
|1D8FD8| PLP
|1D8FD9| BCS .greater_than_52

|1D8FDB| LDY.w $0DE0,X

|1D8FDE| LDA.w .draw_bbb,Y
|1D8FE1| STA.w $0DC0,X

.greater_than_52
|1D8FE4| LDA.w $0DF0,X
|1D8FE7| CMP.b #$48
|1D8FE9| BCS .not_the_B72s

|1D8FEB| CMP.b #$28
|1D8FED| BCS Ganon_EnableInvincibility

.not_the_B72s
|1D8FEF| INC.w $0BA0,X

|1D8FF2| LSR A
|1D8FF3| BCC Ganon_EnableInvincibility

|1D8FF5| LDA.b #$FF
|1D8FF7| STA.w $0DC0,X

;===================================================================================================

Ganon_EnableInvincibility:
|1D8FFA| LDA.w $0EF0,X
|1D8FFD| AND.b #$7F
|1D8FFF| CMP.b #$1A
|1D9001| BNE .exit

|1D9003| STZ.w $0EF0,X

|1D9006| LDA.b #$13
|1D9008| STA.w $0D80,X

|1D900B| LDA.b #$7F
|1D900D| STA.w $0DF0,X

|1D9010| LDA.b #$D7 ; SPRITE D7
|1D9012| STA.w $0E20,X

.exit
|1D9015| RTS

;===================================================================================================

pool Ganon_Phase3_SmashFloor

.draw
|1D9016| db $06, $0E

endpool

;---------------------------------------------------------------------------------------------------

Ganon_Phase3_SmashFloor:
|1D9018| LDA.w $0DF0,X
|1D901B| BEQ .ascend

|1D901D| DEC A
|1D901E| BNE .delay

|1D9020| LDA.b #$10
|1D9022| STA.w $0D80,X

|1D9025| LDA.b #$A0
|1D9027| STA.w $0F80,X

|1D902A| RTS

;---------------------------------------------------------------------------------------------------

.ascend
|1D902B| JSR MoveSpriteZ_bank1D

|1D902E| DEC.w $0F80,X
|1D9031| BNE .delay

|1D9033| LDA.b #$20
|1D9035| STA.w $0DF0,X

.delay
|1D9038| LDY.w $0DE0,X

|1D903B| LDA.w .draw,Y
|1D903E| STA.w $0DC0,X

|1D9041| RTS

;===================================================================================================

pool Ganon_Phase3_DropTiles

.draw
|1D9042| db $02, $0A

endpool

;---------------------------------------------------------------------------------------------------

Ganon_Phase3_DropTiles:
|1D9044| STZ.w $011C
|1D9047| STZ.w $011D

|1D904A| LDA.w $0DF0,X
|1D904D| BEQ .descend

|1D904F| DEC A
|1D9050| BNE .shake_screen

;---------------------------------------------------------------------------------------------------

|1D9052| LDA.b #$05 ; SFX1.05
|1D9054| STA.w $012D

|1D9057| LDA.b #$0D
|1D9059| JSR Ganon_SelectWarpLocation

|1D905C| STZ.w $02E4

|1D905F| JSR Ganon_SpawnFallingTilesOverlord

; Have we hit Ganon 4 times?
|1D9062| LDA.w $0EC0,X
|1D9065| CMP.b #$04
|1D9067| BCC .exit

|1D9069| LDA.b #$0A
|1D906B| JSR Ganon_SelectWarpLocation

|1D906E| LDA.b #$60
|1D9070| STA.w $0E50,X

|1D9073| LDA.b #$E0
|1D9075| STA.w $0E10,X

|1D9078| LDA.b #$6E ; MESSAGE 016E
|1D907A| STA.w $1CF0

|1D907D| LDA.b #$01

;===================================================================================================

#ShowMessageMinimal_bank1D:
|1D907F| STA.w $1CF1

|1D9082| JSL ShowMessageMinimal

.exit
|1D9086| RTS

;---------------------------------------------------------------------------------------------------

.shake_screen
|1D9087| AND.b #$01
|1D9089| TAY

|1D908A| LDA.w Shakeyshake.low,Y
|1D908D| STA.w $011C

|1D9090| LDA.w Shakeyshake.high,Y
|1D9093| STA.w $011D

|1D9096| LDA.b #$01
|1D9098| STA.w $02E4

|1D909B| RTS

;---------------------------------------------------------------------------------------------------

.descend
|1D909C| JSR MoveSpriteZ_bank1D

|1D909F| LDA.w $0F70,X
|1D90A2| BPL .no_sfx

|1D90A4| STZ.w $0F80,X
|1D90A7| STZ.w $0F70,X

|1D90AA| LDA.b #$60
|1D90AC| STA.w $0DF0,X

|1D90AF| LDA.b #$07 ; SFX1.07
|1D90B1| STA.w $012D

|1D90B4| LDA.b #$0C ; SFX2.0C
|1D90B6| JSL QueueSpriteSFX2WithPan

.no_sfx
|1D90BA| LDY.w $0DE0,X

|1D90BD| LDA.w .draw,Y
|1D90C0| STA.w $0DC0,X

|1D90C3| RTS

;===================================================================================================

pool Ganon_SpawnFallingTilesOverlord

.overlord_type
|1D90C4| db $0C ; OVERLORD 0C
|1D90C5| db $0D ; OVERLORD 0D
|1D90C6| db $0E ; OVERLORD 0E
|1D90C7| db $0F ; OVERLORD 0F

.position_x
|1D90C8| db $18
|1D90C9| db $D8
|1D90CA| db $D8
|1D90CB| db $18

.position_y
|1D90CC| db $28
|1D90CD| db $28
|1D90CE| db $D8
|1D90CF| db $D8

endpool

;---------------------------------------------------------------------------------------------------

Ganon_SpawnFallingTilesOverlord:
|1D90D0| LDY.b #$07

.next_slot
|1D90D2| LDA.w $0B00,Y
|1D90D5| BEQ .free_slot

|1D90D7| DEY
|1D90D8| BPL .next_slot

|1D90DA| RTS

;---------------------------------------------------------------------------------------------------

.free_slot
|1D90DB| LDA.w $0EC0,X
|1D90DE| CMP.b #$04
|1D90E0| BCS .dont_spawn

|1D90E2| INC.w $0EC0,X

|1D90E5| PHX

|1D90E6| TAX

|1D90E7| LDA.w .overlord_type,X
|1D90EA| STA.w $0B00,Y

|1D90ED| LDA.w .position_x,X
|1D90F0| STA.w $0B08,Y

; Assumes Link is in the correct quadrant.
|1D90F3| LDA.b $23
|1D90F5| STA.w $0B10,Y

|1D90F8| LDA.w .position_y,X
|1D90FB| STA.w $0B18,Y

|1D90FE| LDA.b $21
|1D9100| STA.w $0B20,Y

|1D9103| LDA.b #$00
|1D9105| STA.w $0B28,Y
|1D9108| STA.w $0B30,Y

|1D910B| PLX

.dont_spawn
|1D910C| RTS

;===================================================================================================

pool Ganon_Phase3_FireBats

.draw
|1D910D| db $05, $06, $07, $0D, $0E, $0A

endpool

;---------------------------------------------------------------------------------------------------

Ganon_Phase3_FireBats:
|1D9113| LDA.w $0DF0,X
|1D9116| BNE .attempt_bat_spawn

;===================================================================================================

#Ganon_Phase3_WarpSelect:
|1D9118| LDA.b #$0D
|1D911A| JSR Ganon_SelectWarpLocation

|1D911D| RTS

;===================================================================================================

.attempt_bat_spawn
|1D911E| LDY.b #$00

|1D9120| CMP.b #$60
|1D9122| BCS .dont_spawn_bat

|1D9124| INY

|1D9125| CMP.b #$48
|1D9127| BCS .dont_spawn_bat

|1D9129| CMP.b #$42
|1D912B| BNE .dont_spawn_bat_but_advance_anim

|1D912D| PHY

|1D912E| JSR Ganon_SpawnFireBat_spiral

|1D9131| PLY

.dont_spawn_bat_but_advance_anim
|1D9132| INY

.dont_spawn_bat
|1D9133| LDA.w $0DE0,X
|1D9136| BEQ .facing_down

|1D9138| INY
|1D9139| INY
|1D913A| INY

.facing_down
|1D913B| LDA.w .draw,Y
|1D913E| STA.w $0DC0,X

|1D9141| LDA.w $0EF0,X
|1D9144| AND.b #$7F
|1D9146| CMP.b #$01
|1D9148| BNE .exit

|1D914A| LDA.b #$0F
|1D914C| STA.w $0D80,X

|1D914F| LDA.b #$18
|1D9151| STA.w $0F80,X

|1D9154| STZ.w $0DF0,X

.exit
|1D9157| RTS

;===================================================================================================

pool Ganon_SpawnFireBat

.offset_low
|1D9158| db   0, -16

.offset_high
|1D915A| db   0,  -1

endpool

;===================================================================================================

Ganon_SpawnFireBat_trailing:
|1D915C| LDA.b #$05
|1D915E| BRA Ganon_SpawnFireBat

;===================================================================================================

Ganon_SpawnFireBat_spiral:
|1D9160| LDA.b #$03

;===================================================================================================

Ganon_SpawnFireBat:
|1D9162| STA.w $0FB5

|1D9165| LDA.b #$C9 ; SPRITE C9
|1D9167| LDY.b #$08
|1D9169| JSL SpawnSpriteDynamically.slot_limited
|1D916D| BMI .exit

;---------------------------------------------------------------------------------------------------

|1D916F| LDA.b #$2A ; SFX2.2A
|1D9171| JSL QueueSpriteSFX2WithPan
|1D9175| JSL SetSpawnedSpriteCoordinates

|1D9179| LDA.w $0FB5
|1D917C| STA.w $0EC0,Y
|1D917F| STA.w $0BA0,Y

|1D9182| LDA.b #$03
|1D9184| STA.w $0F50,Y

|1D9187| LDA.b #$40
|1D9189| STA.w $0E60,Y

|1D918C| LDA.b #$21
|1D918E| STA.w $0E40,Y

|1D9191| LDA.b #$40
|1D9193| STA.w $0CAA,Y

;---------------------------------------------------------------------------------------------------

|1D9196| PHX

|1D9197| LDA.w $0DE0,X
|1D919A| TAX

|1D919B| LDA.b $02
|1D919D| CLC
|1D919E| ADC.w .offset_low,X
|1D91A1| STA.w $0D00,Y

|1D91A4| LDA.b $03
|1D91A6| ADC.w .offset_high,X
|1D91A9| STA.w $0D20,Y

|1D91AC| TYX

|1D91AD| LDA.b #$20
|1D91AF| JSL ApplySpeedTowardsLink_long

|1D91B3| PLX

;---------------------------------------------------------------------------------------------------

|1D91B4| LDA.b #$10
|1D91B6| STA.w $0DF0,Y

; [HARDCODED] assumption of Ganon's slot
|1D91B9| LDA.w $0D10
|1D91BC| STA.w $0D90,Y

|1D91BF| LDA.w $0D30
|1D91C2| STA.w $0DA0,Y

|1D91C5| LDA.w $0D00
|1D91C8| STA.w $0DB0,Y

|1D91CB| LDA.w $0D20
|1D91CE| STA.w $0E90,Y

|1D91D1| JMP.w Ganon_SetSpawnedEntityProperties

;---------------------------------------------------------------------------------------------------

.exit
|1D91D4| RTS

;===================================================================================================

Ganon_Phase3_SabotagePB:
|1D91D5| INC.w $0BA0,X

|1D91D8| JSR Ganon_HandleAnimation_Idle

|1D91DB| STZ.w $0ED0,X

|1D91DE| LDA.w $0DF0,X
|1D91E1| BNE .delay

|1D91E3| JSL GetRandomNumber
|1D91E7| AND.b #$01
|1D91E9| BEQ .allow_for_pb

|1D91EB| JMP.w Ganon_Phase3_WarpSelect

;---------------------------------------------------------------------------------------------------

.allow_for_pb
|1D91EE| LDA.b #$7F
|1D91F0| STA.w $0DF0,X

|1D91F3| LDA.b #$0C
|1D91F5| STA.w $0D80,X

|1D91F8| RTS

;---------------------------------------------------------------------------------------------------

.delay
|1D91F9| AND.b #$01
|1D91FB| BEQ .stay_visible

|1D91FD| LDA.b #$FF
|1D91FF| STA.w $0DC0,X

.stay_visible
|1D9202| RTS

;===================================================================================================

Ganon_Phase2_CircleOfBats:
|1D9203| LDA.w $0E50,X
|1D9206| CMP.b #$A1
|1D9208| BCS .hp_fine

|1D920A| LDA.b #$A0 ; 160 hp
|1D920C| STA.w $0E50,X

.hp_fine
|1D920F| LDA.b #$28
|1D9211| STA.w $0B0A

|1D9214| LDA.w $0DF0,X
|1D9217| BNE .delay

|1D9219| LDA.b #$08
|1D921B| STA.w $0D80,X

|1D921E| LDA.b #$FF
|1D9220| STA.w $0DF0,X

|1D9223| RTS

;---------------------------------------------------------------------------------------------------

.delay
|1D9224| CMP.b #$C0
|1D9226| BCS .dont_spawn_bat

|1D9228| AND.b #$0F
|1D922A| BNE .dont_spawn_bat

|1D922C| JSR Ganon_SpawnSpiralBat

.dont_spawn_bat
|1D922F| BRA Ganon_HandleTridentAndSpiral

;===================================================================================================

pool Ganon_Phase2_LaunchSpiralBats

.offset_x
|1D9231| db  0,  0,  0,  0, -1, -1, -2, -1
|1D9239| db  0,  0,  0,  0,  1,  2,  1,  1

.timers
|1D9241| db 16, 48, 80, 112, 144, 176, 208

endpool

;---------------------------------------------------------------------------------------------------

Ganon_Phase2_LaunchSpiralBats:
|1D9248| LDA.w $0E50,X
|1D924B| CMP.b #$A1
|1D924D| BCS .hp_fine

|1D924F| LDA.b #$A0 ; 160 HP
|1D9251| STA.w $0E50,X

.hp_fine
|1D9254| LDA.w $0DF0,X
|1D9257| BNE .adjust_bats

|1D9259| LDA.b #$09
|1D925B| STA.w $0D80,X

|1D925E| LDA.b #$7F
|1D9260| STA.w $0DF0,X

|1D9263| JSR Ganon_HandleAnimation_Idle

;---------------------------------------------------------------------------------------------------

|1D9266| LDY.b #$08

.next_bat
|1D9268| LDA.b #$02
|1D926A| STA.w $0D80,Y

|1D926D| LDA.w .timers-1,Y
|1D9270| STA.w $0DF0,Y

|1D9273| DEY
|1D9274| BNE .next_bat

|1D9276| RTS

;---------------------------------------------------------------------------------------------------

.adjust_bats
|1D9277| LSR A
|1D9278| LSR A
|1D9279| LSR A
|1D927A| LSR A

|1D927B| AND.b #$0F
|1D927D| TAY

|1D927E| LDA.w $0B0A
|1D9281| CLC
|1D9282| ADC.w .offset_x,Y
|1D9285| STA.w $0B0A

;===================================================================================================

Ganon_HandleTridentAndSpiral:
|1D9288| JSR Ganon_Phase1_AnimateTridentSpin
|1D928B| JSR Ganon_HandleFireBatCircle

|1D928E| RTS

;===================================================================================================

Ganon_Phase2_Warp:
|1D928F| LDA.w $0E50,X
|1D9292| CMP.b #$A1
|1D9294| BCS .hp_fine

|1D9296| LDA.b #$A0 ; 160 HP
|1D9298| STA.w $0E50,X

.hp_fine
|1D929B| LDA.w $0DF0,X
|1D929E| BNE .delay_choice

|1D92A0| LDA.b #$0A
|1D92A2| JSR Ganon_SelectWarpLocation

|1D92A5| RTS

.delay_choice
|1D92A6| JSR Ganon_ShakeHead

|1D92A9| RTS

;===================================================================================================

Ganon_Phase2_MakePhaseDecision:
|1D92AA| INC.w $0BA0,X

|1D92AD| JSR Ganon_HandleAnimation_Idle

|1D92B0| LDA.w $0DF0,X
|1D92B3| BNE .wait

;===================================================================================================

#Ganon_AdvanceToPhase2:
|1D92B5| LDA.b #$FF
|1D92B7| STA.w $0DF0,X

|1D92BA| LDA.b #$07
|1D92BC| STA.w $0D80,X

|1D92BF| RTS

;---------------------------------------------------------------------------------------------------

.wait
|1D92C0| AND.b #$01
|1D92C2| BEQ .exit

|1D92C4| LDA.b #$FF
|1D92C6| STA.w $0DC0,X

.exit
|1D92C9| RTS

;===================================================================================================

Ganon_Phase1_IntroduceSelf:
|1D92CA| LDA.w $0DF0,X
|1D92CD| BNE .let_iron_cool_before_striking

;===================================================================================================

#Ganon_ContinueWithPhase1:
|1D92CF| LDA.b #$01
|1D92D1| STA.w $0D80,X

|1D92D4| LDA.b #$80
|1D92D6| STA.w $0DF0,X

|1D92D9| RTS

;===================================================================================================

.let_iron_cool_before_striking
|1D92DA| CMP.b #$20
|1D92DC| BEQ .adjust_tunes

|1D92DE| CMP.b #$40
|1D92E0| BNE .dont_talk

|1D92E2| LDA.b #$6D ; MESSAGE 016D
|1D92E4| STA.w $1CF0

|1D92E7| LDA.b #$01
|1D92E9| STA.w $1CF1

|1D92EC| JSL ShowMessageMinimal

.dont_talk
|1D92F0| RTS

.adjust_tunes
|1D92F1| LDA.b #$1F ; SONG 1F
|1D92F3| STA.w $012C

|1D92F6| RTS

;===================================================================================================

GanonTrident_Timers:
.facing_down
|1D92F7| db $08, $07, $06, $05, $04, $03, $02, $01

.facing_up
|1D92FF| db $08, $07, $06, $05, $04, $03, $02, $01

;===================================================================================================

GanonTridentAnimationSteps:
.facing_down
|1D9307| db $00, $00, $01, $01, $00, $00, $01, $01

.facing_up
|1D930F| db $08, $08, $09, $09, $08, $08, $09, $09

;===================================================================================================

pool Ganon_Phase1_ThrowTrident

.offset_x_low
|1D9317| db  24, -16

.offset_x_high
|1D9319| db   0,  -1

.offset_y_low
|1D931B| db   4,   4

.offset_y_high
|1D931D| db   0,   0

.speed_x
|1D931F| db  32,  28,  24,  16,   0, -16, -24, -28
|1D9327| db -32, -28, -24, -16,   0,  16,  24,  28

.speed_y
|1D932F| db   0,  16,  24,  28,  32,  28,  24,  16
|1D9337| db   0, -16, -24, -28, -32, -28, -24, -16

endpool

;===================================================================================================

pool Ganon_Phase1_TryAWarp

.draw
|1D933F| db $02, $0A

endpool

;---------------------------------------------------------------------------------------------------

Ganon_Phase1_TryAWarp:
|1D9341| CMP.b #$00
|1D9343| BNE .delay_warp

|1D9345| LDA.b #$05
|1D9347| JMP.w Ganon_SelectWarpLocation

.delay_warp
|1D934A| LDY.w $0DE0,X

|1D934D| LDA.w .draw,Y
|1D9350| STA.w $0DC0,X

|1D9353| RTS

;===================================================================================================

Ganon_Phase1_ThrowTrident:
|1D9354| LDA.w $0E50,X
|1D9357| CMP.b #$D1
|1D9359| BCS .hp_fine

|1D935B| LDA.b #$D0 ; 208 HP
|1D935D| STA.w $0E50,X

.hp_fine
|1D9360| LDA.w $0DF0,X
|1D9363| CMP.b #$40
|1D9365| BCC Ganon_Phase1_TryAWarp
|1D9367| BNE Ganon_Phase1_AnimateTridentSpin

;---------------------------------------------------------------------------------------------------

|1D9369| STZ.w $0ED0,X

|1D936C| LDA.b #$C9 ; SPRITE C9
|1D936E| JSL SpawnSpriteDynamically

|1D9372| PHX

|1D9373| LDA.w $0DE0,X
|1D9376| TAX

|1D9377| LDA.b $00
|1D9379| CLC
|1D937A| ADC.w .offset_x_low,X
|1D937D| STA.w $0D10,Y

|1D9380| LDA.b $01
|1D9382| ADC.w .offset_x_high,X
|1D9385| STA.w $0D30,Y

|1D9388| LDA.b $02
|1D938A| CLC
|1D938B| ADC.w .offset_y_low,X
|1D938E| STA.w $0D00,Y

|1D9391| LDA.b $03
|1D9393| ADC.w .offset_y_high,X
|1D9396| STA.w $0D20,Y

|1D9399| PLX

;---------------------------------------------------------------------------------------------------

|1D939A| PHX
|1D939B| PHY

|1D939C| LDA.b #$1F
|1D939E| JSL ApplySpeedTowardsLink_long
|1D93A2| JSL ConvertVelocityToAngle

|1D93A6| PLY

|1D93A7| SEC
|1D93A8| SBC.b #$02
|1D93AA| AND.b #$0F
|1D93AC| TAX

|1D93AD| LDA.w .speed_x,X
|1D93B0| STA.w $0D50,Y

|1D93B3| LDA.w .speed_y,X
|1D93B6| STA.w $0D40,Y

|1D93B9| PLX

;---------------------------------------------------------------------------------------------------

|1D93BA| LDA.b #$70
|1D93BC| STA.w $0DF0,Y

|1D93BF| LDA.b #$02
|1D93C1| STA.w $0EC0,Y

|1D93C4| LDA.b #$01
|1D93C6| STA.w $0F50,Y

|1D93C9| LDA.b #$04
|1D93CB| STA.w $0E40,Y

|1D93CE| LDA.b #$84
|1D93D0| STA.w $0CAA,Y

|1D93D3| LDA.b #$02
|1D93D5| STA.w $0DE0,Y

|1D93D8| JMP.w Ganon_SetSpawnedEntityProperties

;===================================================================================================

Ganon_Phase1_AnimateTridentSpin:
|1D93DB| LDA.w $0DF0,X
|1D93DE| LSR A
|1D93DF| LSR A
|1D93E0| AND.b #$07

|1D93E2| LDY.w $0DE0,X
|1D93E5| BEQ .facing_down

|1D93E7| CLC
|1D93E8| ADC.b #$08

.facing_down
|1D93EA| TAY

|1D93EB| LDA.w GanonTrident_Timers,Y
|1D93EE| STA.w $0ED0,X

|1D93F1| LDA.w GanonTridentAnimationSteps,Y
|1D93F4| STA.w $0DC0,X

|1D93F7| JSR SwishEvery16Frames

|1D93FA| RTS

;===================================================================================================

pool Ganon_Phase1_WaitForTrident

.draw
|1D93FB| db $00, $08

endpool

;---------------------------------------------------------------------------------------------------

Ganon_Phase1_WaitForTrident:
|1D93FD| LDA.w $0E50,X
|1D9400| CMP.b #$D1
|1D9402| BCS .hp_fine

|1D9404| LDA.b #$D0 ; 208 HP
|1D9406| STA.w $0E50,X

.hp_fine
|1D9409| LDY.w $0DE0,X

|1D940C| LDA.w .draw,Y
|1D940F| STA.w $0DC0,X

|1D9412| LDA.w $0DF0,X
|1D9415| BEQ .exit

|1D9417| INC.w $0BA0,X
|1D941A| AND.b #$01
|1D941C| BEQ .exit

; be invisible
|1D941E| LDA.b #$FF
|1D9420| STA.w $0DC0,X

.exit
|1D9423| RTS

;===================================================================================================

pool Ganon_Phase1_MakePhaseDecision

.timer
|1D9424| db   9,  10

.draw
|1D9426| db $02, $0A

endpool

;---------------------------------------------------------------------------------------------------

Ganon_Phase1_MakePhaseDecision:
|1D9428| LDA.w $0E50,X
|1D942B| CMP.b #$D1
|1D942D| BCS .hp_fine

|1D942F| LDA.b #$D0 ; 208 HP
|1D9431| STA.w $0E50,X

.hp_fine
|1D9434| LDA.w $0DF0,X
|1D9437| BNE .delay_animation

|1D9439| LDA.b #$06
|1D943B| STA.w $0D80,X

|1D943E| LDA.b #$7F
|1D9440| STA.w $0DF0,X

;===================================================================================================

#Ganon_HandleAnimation_Idle:
|1D9443| LDY.w $0DE0,X

|1D9446| LDA.w .timer,Y
|1D9449| STA.w $0ED0,X

;===================================================================================================

#Ganon_HandleAnimation_IdleUntimed:
|1D944C| LDY.w $0DE0,X

|1D944F| LDA.w .draw,Y
|1D9452| STA.w $0DC0,X

|1D9455| RTS

;===================================================================================================

.delay_animation
|1D9456| JSR Ganon_Phase1_AnimateTridentSpin

|1D9459| RTS

;===================================================================================================

Ganon_HeadShakeStep:
|1D945A| db $00, $00, $00, $01
|1D945E| db $02, $02, $02, $01
|1D9462| db $00, $00, $00, $01
|1D9466| db $01, $01, $01, $01
|1D946A| db $00, $10

;===================================================================================================

Ganon_Phase1_Warp:
|1D946C| LDA.w $0E50,X
|1D946F| CMP.b #$D1
|1D9471| BCS .hp_fine

|1D9473| LDA.b #$D0 ; 208 HP
|1D9475| STA.w $0E50,X

.hp_fine
|1D9478| LDA.w $0DF0,X
|1D947B| BNE Ganon_ShakeHead

|1D947D| LDA.b #$05

;===================================================================================================
; TODO describe params
;===================================================================================================
Ganon_SelectWarpLocation:
|1D947F| STA.b $00

|1D9481| LDA.w $0E30,X
|1D9484| ASL A
|1D9485| ASL A
|1D9486| STA.b $01

|1D9488| JSL GetRandomNumber
|1D948C| AND.b #$03
|1D948E| ORA.b $01
|1D9490| TAY

|1D9491| LDA.w Ganon_WarpLocation.id,Y
|1D9494| STA.w $0E30,X

|1D9497| TAY

|1D9498| LDA.w Ganon_WarpLocation.x,Y
|1D949B| STA.l $7FFD5C

|1D949F| LDA.w Ganon_WarpLocation.y,Y
|1D94A2| STA.l $7FFD68

|1D94A6| LDA.b $00
|1D94A8| STA.w $0D80,X

|1D94AB| JSR ZeroVelocityXY_bank1D

|1D94AE| LDA.b #$30
|1D94B0| STA.w $0DF0,X

|1D94B3| LDA.b #$28 ; SFX3.28
|1D94B5| JSL QueueSpriteSFX3WithPan

|1D94B9| RTS

;===================================================================================================

Ganon_ShakeHead:
|1D94BA| LSR A ; /8
|1D94BB| LSR A
|1D94BC| LSR A
|1D94BD| TAY

|1D94BE| LDA.w Ganon_HeadShakeStep,Y
|1D94C1| STA.w $0EB0,X

|1D94C4| RTS

;===================================================================================================

Ganon_WarpLocation:

.x
|1D94C5| db $30, $50, $A0, $C0, $40, $60, $90, $B0

.y
|1D94CD| db $40, $30, $30, $40, $B0, $C0, $C0, $B0

.id
|1D94D5| db $04, $05, $06, $07
|1D94D9| db $04, $05, $06, $07
|1D94DD| db $04, $05, $06, $07
|1D94E1| db $04, $05, $06, $07
|1D94E5| db $00, $01, $02, $03
|1D94E9| db $00, $01, $02, $03
|1D94ED| db $00, $01, $02, $03
|1D94F1| db $00, $01, $02, $03

;===================================================================================================

Ganon_Phase3_Warp:
|1D94F5| LDA.b #$64
|1D94F7| STA.w $0E50,X

;---------------------------------------------------------------------------------------------------

Ganon_LookAround:
|1D94FA| INC.w $0BA0,X

|1D94FD| LDA.l $7FFD5C
|1D9501| STA.b $04

|1D9503| LDA.w $0D30,X
|1D9506| STA.b $05

|1D9508| LDA.l $7FFD68
|1D950C| STA.b $06

|1D950E| LDA.w $0D20,X
|1D9511| STA.b $07

|1D9513| JSR Ganon_AttemptTridentCatch
|1D9516| BCS Ganon_MoveWithTrident

;---------------------------------------------------------------------------------------------------

|1D9518| LDA.w $0E30,X
|1D951B| LSR A
|1D951C| LSR A
|1D951D| STA.w $0DE0,X

|1D9520| LDA.w $0D80,X
|1D9523| CMP.b #$05
|1D9525| BEQ .phase_1

|1D9527| LDA.w $0E50,X
|1D952A| CMP.b #$A1
|1D952C| BCS .phase_2

|1D952E| CMP.b #$61
|1D9530| BCS .phase_3

;---------------------------------------------------------------------------------------------------

.phase_4
|1D9532| LDA.b #$11
|1D9534| STA.w $0D80,X

|1D9537| LDA.b #$68
|1D9539| STA.w $0DF0,X

|1D953C| RTS

;---------------------------------------------------------------------------------------------------

.phase_2
|1D953D| LDA.b #$0B
|1D953F| STA.w $0D80,X

|1D9542| LDA.b #$28
|1D9544| STA.w $0DF0,X

|1D9547| RTS

;---------------------------------------------------------------------------------------------------

.phase_3
|1D9548| LDA.b #$0E
|1D954A| STA.w $0D80,X

|1D954D| LDA.b #$28
|1D954F| STA.w $0DF0,X

|1D9552| RTS

;---------------------------------------------------------------------------------------------------

.phase_1
|1D9553| LDA.b #$02
|1D9555| STA.w $0D80,X

|1D9558| LDA.b #$20
|1D955A| STA.w $0DF0,X

|1D955D| RTS

;===================================================================================================

UNREACHABLE_1D955E:
|1D955E| RTS

;===================================================================================================
; TODO ANALYZE
;===================================================================================================
Ganon_MoveWithTrident:
|1D955F| LDA.b #$20
|1D9561| JSL ProjectSpriteSpeedTowardsLocation_long

|1D9565| JSR GanonTrident_AdjustVelocity
|1D9568| JSR MoveSpriteXY_bank1D

|1D956B| LDA.w $0DF0,X
|1D956E| BEQ .invisible

|1D9570| LDA.b $1A
|1D9572| AND.b #$01
|1D9574| BNE .invisible

|1D9576| JSR Ganon_HandleAnimation_IdleUntimed
|1D9579| BRA .continue

.invisible
|1D957B| LDA.b #$FF
|1D957D| STA.w $0DC0,X

|1D9580| RTS

;---------------------------------------------------------------------------------------------------

.continue
|1D9581| LDA.b $1A
|1D9583| AND.b #$07
|1D9585| BNE .exit

|1D9587| LDA.b #$D6 ; SPRITE D6
|1D9589| JSL SpawnSpriteDynamically
|1D958D| BMI .exit

|1D958F| JSL SetSpawnedSpriteCoordinates

|1D9593| LDA.b #$18
|1D9595| STA.w $0BA0,Y
|1D9598| STA.w $0DF0,Y

|1D959B| LDA.b #$FF
|1D959D| STA.w $0D80,Y

|1D95A0| LDA.w $0DC0,X
|1D95A3| STA.w $0DC0,Y

|1D95A6| LDA.w $0EB0,X
|1D95A9| STA.w $0EB0,Y

.exit
|1D95AC| RTS

;===================================================================================================

Ganon_Phase2_HoldTrident:
|1D95AD| LDA.w $0E50,X
|1D95B0| CMP.b #$D1
|1D95B2| BCS .hp_fine

|1D95B4| LDA.b #$D0 ; 208 HP
|1D95B6| STA.w $0E50,X

.hp_fine
|1D95B9| LDA.w $0DF0,X
|1D95BC| BNE .delay

|1D95BE| LDA.w $0E50,X
|1D95C1| CMP.b #$D1
|1D95C3| BCC .still_phase1

;---------------------------------------------------------------------------------------------------

.change_to_phase2
|1D95C5| JMP.w Ganon_ContinueWithPhase1

.still_phase1
|1D95C8| JMP.w Ganon_AdvanceToPhase2

.delay
|1D95CB| JMP.w Ganon_ShakeHead

;===================================================================================================

pool SpriteDraw_Ganon

.offset_x
|1D95CE| db  18,  -8,   8,  -8,   8, -18, -18,  18,  -8,   8,  -8,   8
|1D95DA| db  18,  -8,   8,  -8,   8, -18, -18,  18,  -8,   8,  -8,   8
|1D95E6| db  16,  -8,   8,  -8,   8, -18, -18,  16,  -8,   8, -11,  11
|1D95F2| db  16,  -8,   8,  -8,   8, -18, -18,  16,  -8,   8, -11,  11
|1D95FE| db  16,  -8,   8,  -8,   8, -18, -18,  16,  -8,   8, -11,  11
|1D960A| db  18,  -8,   8,  -8,   8, -18, -18,  18,  -8,   8,  -8,   8
|1D9616| db  18,  -8,   8,  -8,   8, -18, -18,  18,  -8,   8,  -8,   8
|1D9622| db  18,  -8,   8,  -8,   8, -18, -18,  18,  -8,   8, -11,  11
|1D962E| db  -8,   8,  -8,   8,  -8,   8,  -8,   8, -18, -18,  18,  18
|1D963A| db  -8,   8,  -8,   8,  -8,   8,  -8,   8, -18, -18,  18,  18
|1D9646| db  -8,   8,  -8,   8,  -8,   8, -10,  10, -18, -18,  18,  18
|1D9652| db  -8,   8,  -8,   8,  -8,   8, -10,  10, -18, -18,  18,  18
|1D965E| db  -8,   8,  -8,   8,  -8,   8, -10,  10, -18, -18,  18,  18
|1D966A| db  -8,   8,  -8,   8,  -8,   8,  -8,   8, -18, -18,  18,  18
|1D9676| db  -8,   8,  -8,   8,  -8,   8,  -8,   8, -18, -18,  18,  18
|1D9682| db  -7,  -8,   8,  -8,   8,  -9,   8, -14, -14,  -8,   8,   8
|1D968E| db  -8,   8,  -8,   8, -18, -18,  18,  18,  -8,   8, -11,  11

;---------------------------------------------------------------------------------------------------

.offset_y
|1D969A| db  -8, -16, -16, -13, -13,  -9,  -1, -16,   3,   3,   8,   8
|1D96A6| db  -8, -16, -16, -13, -13,  -9,  -1, -16,   3,   3,   8,   8
|1D96B2| db   5, -10, -10, -13, -13,  -7,   1,  -3,   3,   3,   8,   8
|1D96BE| db   5, -10, -10, -13, -13,  -7,   1,  -3,   3,   3,   8,   8
|1D96CA| db   5, -10, -10, -13, -13,  -7,   1,  -3,   3,   3,   8,   8
|1D96D6| db  -1, -16, -16, -13, -13,  -9,  -1,  -9,   3,   3,   8,   8
|1D96E2| db -10, -16, -16, -13, -13, -18, -10, -18,   3,   3,   8,   8
|1D96EE| db   1, -10, -10, -13, -13,  -7,   1,  -7,   3,   3,   8,   8
|1D96FA| db -12, -12,   4,   4, -18, -18,  10,  10, -16,  -8,  -4,   4
|1D9706| db -12, -12,   4,   4, -18, -18,  10,  10, -16,  -8,  -4,   4
|1D9712| db -12, -12,   4,   4, -12, -12,  10,  10,  -4,   4,  -4,   4
|1D971E| db -12, -12,   4,   4, -12, -12,  10,  10,  -4,   4,  -4,   4
|1D972A| db -12, -12,   4,   4, -12, -12,  10,  10,  -4,   4,  -4,   4
|1D9736| db -12, -12,   4,   4, -18, -18,  10,  10,  -4,   4,  -4,   4
|1D9742| db -12, -12,   4,   4, -18, -18,  10,  10, -16,  -8, -16,  -8
|1D974E| db  -7, -12, -12,   4,   4,   7,  13, -11,  -4, -16, -16, -16
|1D975A| db -10, -10, -13, -13,  -7,  -7,  -7,  -7,   3,   3,   8,   8

;---------------------------------------------------------------------------------------------------

.char
|1D9766| db $16, $00, $00, $02, $02, $08, $18, $06, $22, $22, $20, $20
|1D9772| db $46, $00, $00, $02, $02, $08, $18, $36, $22, $22, $20, $20
|1D977E| db $1A, $00, $00, $04, $04, $38, $48, $0A, $24, $24, $20, $20
|1D978A| db $1A, $40, $42, $04, $04, $38, $48, $0A, $24, $24, $20, $20
|1D9796| db $1A, $42, $40, $04, $04, $38, $48, $0A, $24, $24, $20, $20
|1D97A2| db $18, $00, $00, $02, $02, $08, $18, $08, $22, $22, $20, $20
|1D97AE| db $16, $6A, $6A, $0E, $0E, $06, $16, $06, $22, $22, $20, $20
|1D97BA| db $48, $00, $00, $04, $04, $38, $48, $38, $24, $24, $20, $20
|1D97C6| db $4E, $4E, $6E, $6E, $6C, $6C, $A2, $A2, $0C, $1C, $3C, $4C
|1D97D2| db $4E, $4E, $6E, $6E, $6C, $6C, $A2, $A2, $3A, $4A, $3C, $4C
|1D97DE| db $84, $84, $A4, $A4, $A0, $A0, $A2, $A2, $3C, $4C, $3C, $4C
|1D97EA| db $84, $84, $A4, $A4, $80, $82, $A2, $A2, $3C, $4C, $3C, $4C
|1D97F6| db $84, $84, $A4, $A4, $82, $80, $A2, $A2, $3C, $4C, $3C, $4C
|1D9802| db $4E, $4E, $6E, $6E, $6C, $6C, $A2, $A2, $3C, $4C, $3C, $4C
|1D980E| db $4E, $4E, $6E, $6E, $6C, $6C, $A2, $A2, $0C, $1C, $0C, $1C
|1D981A| db $E0, $C6, $C8, $E6, $E8, $20, $20, $08, $18, $C0, $C2, $C2
|1D9826| db $00, $00, $CE, $CE, $EC, $EC, $EC, $EC, $EE, $EE, $C4, $C4

;---------------------------------------------------------------------------------------------------

.animstate_head
|1D9832| db $01, $01, $01, $01, $01, $01, $0F, $01
|1D983A| db $04, $04, $04, $04, $04, $04, $04, $0F
|1D9842| db $0F

;---------------------------------------------------------------------------------------------------

.prop
|1D9843| db $4C, $0C, $4C, $0A, $4A, $0C, $0C, $4C, $0A, $4A, $0C, $4C
|1D984F| db $4C, $0C, $4C, $0A, $4A, $0C, $0C, $4C, $0A, $4A, $0C, $4C
|1D985B| db $4C, $0C, $4C, $0A, $4A, $0C, $0C, $4C, $0A, $4A, $0C, $4C
|1D9867| db $4C, $0C, $0C, $0A, $4A, $0C, $0C, $4C, $0A, $4A, $0C, $4C
|1D9873| db $4C, $4C, $4C, $0A, $4A, $0C, $0C, $4C, $0A, $4A, $0C, $4C
|1D987F| db $4C, $0C, $4C, $0A, $4A, $0C, $0C, $4C, $0A, $4A, $0C, $4C
|1D988B| db $4C, $0C, $4C, $0A, $4A, $0C, $0C, $4C, $0A, $4A, $0C, $4C
|1D9897| db $4C, $0C, $4C, $0A, $4A, $0C, $0C, $4C, $0A, $4A, $0C, $4C
|1D98A3| db $0A, $4A, $0A, $4A, $0C, $4C, $0C, $4C, $0C, $0C, $4C, $4C
|1D98AF| db $0A, $4A, $0A, $4A, $0C, $4C, $0C, $4C, $0C, $0C, $4C, $4C
|1D98BB| db $0A, $4A, $0A, $4A, $0C, $4C, $0C, $4C, $0C, $0C, $4C, $4C
|1D98C7| db $0A, $4A, $0A, $4A, $0C, $0C, $0C, $4C, $0C, $0C, $4C, $4C
|1D98D3| db $0A, $4A, $0A, $4A, $4C, $4C, $0C, $4C, $0C, $0C, $4C, $4C
|1D98DF| db $0A, $4A, $0A, $4A, $0C, $4C, $0C, $4C, $0C, $0C, $4C, $4C
|1D98EB| db $0A, $4A, $0A, $4A, $0C, $4C, $0C, $4C, $0C, $0C, $4C, $4C
|1D98F7| db $0C, $0A, $0A, $0A, $0A, $0C, $4C, $0C, $0C, $0C, $0C, $0C
|1D9903| db $0C, $4C, $0A, $4A, $0C, $0C, $4C, $4C, $0A, $4A, $0C, $4C

endpool

;===================================================================================================

Trident_OAMGroups:
; group00
|1D990F| dw  10, -10 : db $64, $08, $00, $00
|1D9917| dw   5, -15 : db $64, $08, $00, $00
|1D991F| dw   0, -20 : db $64, $08, $00, $00
|1D9927| dw  -5, -25 : db $64, $08, $00, $00
|1D992F| dw -18, -38 : db $44, $08, $00, $02

; group01
|1D9937| dw   1,  -4 : db $65, $08, $00, $00
|1D993F| dw   1, -11 : db $65, $08, $00, $00
|1D9947| dw   1, -18 : db $65, $08, $00, $00
|1D994F| dw   1, -25 : db $65, $08, $00, $00
|1D9957| dw  -3, -40 : db $62, $08, $00, $02

; group02
|1D995F| dw  -8,  -9 : db $64, $48, $00, $00
|1D9967| dw  -3, -14 : db $64, $48, $00, $00
|1D996F| dw   3, -20 : db $64, $48, $00, $00
|1D9977| dw   9, -26 : db $64, $48, $00, $00
|1D997F| dw  12, -37 : db $44, $48, $00, $02

; group03
|1D9987| dw -10, -20 : db $74, $48, $00, $00
|1D998F| dw  -3, -20 : db $74, $48, $00, $00
|1D9997| dw   4, -20 : db $74, $48, $00, $00
|1D999F| dw  11, -20 : db $74, $48, $00, $00
|1D99A7| dw  18, -23 : db $60, $48, $00, $02

; group04
|1D99AF| dw -10, -30 : db $64, $C8, $00, $00
|1D99B7| dw  -4, -24 : db $64, $C8, $00, $00
|1D99BF| dw   2, -18 : db $64, $C8, $00, $00
|1D99C7| dw   8, -12 : db $64, $C8, $00, $00
|1D99CF| dw  12,  -8 : db $44, $C8, $00, $02

; group05
|1D99D7| dw   1, -32 : db $65, $88, $00, $00
|1D99DF| dw   1, -25 : db $65, $88, $00, $00
|1D99E7| dw   1, -18 : db $65, $88, $00, $00
|1D99EF| dw   1, -11 : db $65, $88, $00, $00
|1D99F7| dw  -3,  -5 : db $62, $88, $00, $02

; group06
|1D99FF| dw  13, -30 : db $64, $88, $00, $00
|1D9A07| dw   8, -25 : db $64, $88, $00, $00
|1D9A0F| dw   2, -19 : db $64, $88, $00, $00
|1D9A17| dw  -4, -13 : db $64, $88, $00, $00
|1D9A1F| dw -16,  -9 : db $44, $88, $00, $02

; group07
|1D9A27| dw  14, -20 : db $74, $08, $00, $00
|1D9A2F| dw   7, -20 : db $74, $08, $00, $00
|1D9A37| dw   0, -20 : db $74, $08, $00, $00
|1D9A3F| dw  -7, -20 : db $74, $08, $00, $00
|1D9A47| dw -21, -23 : db $60, $08, $00, $02

; group08
|1D9A4F| dw  13, -30 : db $64, $88, $00, $00
|1D9A57| dw   8, -25 : db $64, $88, $00, $00
|1D9A5F| dw   2, -19 : db $64, $88, $00, $00
|1D9A67| dw  -4, -13 : db $64, $88, $00, $00
|1D9A6F| dw -16,  -9 : db $44, $88, $00, $02

; group09
|1D9A77| dw -10, -30 : db $64, $C8, $00, $00
|1D9A7F| dw  -4, -24 : db $64, $C8, $00, $00
|1D9A87| dw  -4, -24 : db $64, $C8, $00, $00
|1D9A8F| dw  -4, -24 : db $64, $C8, $00, $00
|1D9A97| dw  -4, -24 : db $64, $C8, $00, $00

;===================================================================================================

GanonTridentOAM_offset_x:
|1D9A9F| db  24,   0, -16,  -1,   0
|1D9AA4| db   0,  16,   0,  -8,  -1

GanonTridentOAM_offset_y:
|1D9AA9| db   4,   0,   4,   0,  16
|1D9AAE| db   0,  21,   0,  19,   0

;===================================================================================================

GanonHeadOAM_char:
|1D9AB3| db $40, $42, $00, $00
|1D9AB7| db $42, $40, $82, $80
|1D9ABB| db $A0, $A0, $80, $82

GanonHeadOAM_prop:
|1D9ABF| db $00, $00, $00, $40
|1D9AC3| db $40, $40, $40, $40
|1D9AC7| db $00, $40, $00, $00

;===================================================================================================

Ganon_ArmOAMGroups:
|1D9ACB| dw  16,  -3 : db $0A, $4C, $00, $02
|1D9AD3| dw  16,   5 : db $1A, $4C, $00, $02

;===================================================================================================

DontDrawGanon:
|1D9ADB| JSR GetScreenCoordinates_bank1D

|1D9ADE| RTS

;---------------------------------------------------------------------------------------------------

SpriteDraw_Ganon:
|1D9ADF| LDA.w $0DC0,X
|1D9AE2| BMI DontDrawGanon

|1D9AE4| LDA.w $0D80,X
|1D9AE7| CMP.b #$13
|1D9AE9| BEQ .draw_ganon

|1D9AEB| LDA.w $0F10,X
|1D9AEE| BNE .draw_ganon

|1D9AF0| LDA.w $04C5
|1D9AF3| BEQ DontDrawGanon

;---------------------------------------------------------------------------------------------------

.draw_ganon
|1D9AF5| JSR SpriteDraw_GanonTrident
|1D9AF8| JSR GetScreenCoordinates_bank1D

|1D9AFB| LDA.w $0DC0,X

|1D9AFE| ASL A ; x8
|1D9AFF| ASL A
|1D9B00| ASL A

|1D9B01| ADC.w $0DC0,X ; +4
|1D9B04| ADC.w $0DC0,X
|1D9B07| ADC.w $0DC0,X
|1D9B0A| ADC.w $0DC0,X

|1D9B0D| STA.b $06

|1D9B0F| PHX

|1D9B10| LDX.b #$00
|1D9B12| LDY.b #$14

.next_ganon_object
|1D9B14| PHX

|1D9B15| TXA
|1D9B16| CLC
|1D9B17| ADC.b $06
|1D9B19| TAX

|1D9B1A| LDA.b $00
|1D9B1C| CLC
|1D9B1D| ADC.w .offset_x,X
|1D9B20| STA.b ($90),Y

|1D9B22| LDA.b $02
|1D9B24| CLC
|1D9B25| ADC.w .offset_y,X
|1D9B28| INY
|1D9B29| STA.b ($90),Y

|1D9B2B| LDA.w .char,X
|1D9B2E| INY
|1D9B2F| STA.b ($90),Y

|1D9B31| LDA.b $05
|1D9B33| AND.b #$0F
|1D9B35| CMP.b #$05
|1D9B37| LDA.w .prop,X
|1D9B3A| BCC .on_screen

|1D9B3C| AND.b #$F0

.on_screen
|1D9B3E| ORA.b $05
|1D9B40| INY
|1D9B41| STA.b ($90),Y

|1D9B43| PHY

|1D9B44| TYA
|1D9B45| LSR A
|1D9B46| LSR A
|1D9B47| TAY

|1D9B48| LDA.b #$02
|1D9B4A| STA.b ($92),Y

|1D9B4C| PLY
|1D9B4D| INY

|1D9B4E| PLX
|1D9B4F| INX
|1D9B50| CPX.b #$0C
|1D9B52| BNE .next_ganon_object

;---------------------------------------------------------------------------------------------------

|1D9B54| PLX
|1D9B55| LDY.w $0DC0,X

|1D9B58| LDA.w .animstate_head,Y
|1D9B5B| CMP.b #$0F
|1D9B5D| BEQ .skip_head

|1D9B5F| ASL A
|1D9B60| ASL A
|1D9B61| CLC
|1D9B62| ADC.b #$14
|1D9B64| TAY

|1D9B65| INY
|1D9B66| INY

|1D9B67| PHX
|1D9B68| PHY

|1D9B69| LDA.w $0EB0,X
|1D9B6C| ASL A

|1D9B6D| LDY.w $0DE0,X
|1D9B70| BEQ .facing_up

|1D9B72| CLC
|1D9B73| ADC.b #$06

.facing_up
|1D9B75| TAX

|1D9B76| PLY
|1D9B77| LDA.w GanonHeadOAM_char+0,X
|1D9B7A| STA.b ($90),Y

|1D9B7C| INY

|1D9B7D| LDA.b ($90),Y
|1D9B7F| AND.b #$3F
|1D9B81| ORA.w GanonHeadOAM_prop+0,X
|1D9B84| STA.b ($90),Y

|1D9B86| INY
|1D9B87| INY
|1D9B88| INY

|1D9B89| LDA.w GanonHeadOAM_char+1,X
|1D9B8C| STA.b ($90),Y

|1D9B8E| INY

|1D9B8F| LDA.b ($90),Y
|1D9B91| AND.b #$3F
|1D9B93| ORA.w GanonHeadOAM_prop+1,X
|1D9B96| STA.b ($90),Y

|1D9B98| PLX

;---------------------------------------------------------------------------------------------------

.skip_head
|1D9B99| LDA.b $11
|1D9B9B| BEQ .skip_cleanup

|1D9B9D| LDY.b #$FF
|1D9B9F| LDA.b #$09
|1D9BA1| JSL CorrectOAMEntries_long

;---------------------------------------------------------------------------------------------------

.skip_cleanup
|1D9BA5| LDA.w $0ED0,X
|1D9BA8| CMP.b #$09
|1D9BAA| BNE .skip_arm

|1D9BAC| REP #$20

|1D9BAE| LDA.w #Ganon_ArmOAMGroups
|1D9BB1| STA.b $08

; [HARDCODED] OAM slots
|1D9BB3| LDA.w #$0828
|1D9BB6| STA.b $90

|1D9BB8| LDA.w #$0A2A
|1D9BBB| STA.b $92

|1D9BBD| SEP #$20

|1D9BBF| LDA.b #$02
|1D9BC1| JSR TabulatedSpriteDraw_bank1D

;---------------------------------------------------------------------------------------------------

.skip_arm
|1D9BC4| LDA.w $0F70,X
|1D9BC7| SEC
|1D9BC8| SBC.b #$01
|1D9BCA| STA.b $0E

|1D9BCC| LDA.b #$00
|1D9BCE| SBC.b #$00
|1D9BD0| STA.b $0F

|1D9BD2| LSR A
|1D9BD3| LSR A
|1D9BD4| LSR A
|1D9BD5| TAY

|1D9BD6| CPY.b #$04
|1D9BD8| BCC .is_fine

|1D9BDA| LDY.b #$04

;---------------------------------------------------------------------------------------------------

.is_fine
|1D9BDC| LDA.w SpriteDraw_BigShadow.data_offset,Y
|1D9BDF| STA.b $00
|1D9BE1| STZ.b $01

|1D9BE3| REP #$20

|1D9BE5| LDA.w $0FDA
|1D9BE8| CLC
|1D9BE9| ADC.b $0E
|1D9BEB| STA.w $0FDA

; [HARDCODED] oam slots
|1D9BEE| LDA.w #$09F4
|1D9BF1| STA.b $90

|1D9BF3| LDA.w #$0A9D
|1D9BF6| STA.b $92

|1D9BF8| LDA.w #SpriteDraw_BigShadow.oam_groups
|1D9BFB| CLC
|1D9BFC| ADC.b $00
|1D9BFE| STA.b $08

;---------------------------------------------------------------------------------------------------

|1D9C00| SEP #$20

|1D9C02| LDA.w $0F50,X
|1D9C05| PHA

|1D9C06| STZ.w $0F50,X

|1D9C09| LDA.b #$30
|1D9C0B| STA.w $0B89,X

|1D9C0E| LDA.b #$03
|1D9C10| JSR TabulatedSpriteDraw_bank1D

|1D9C13| PLA
|1D9C14| STA.w $0F50,X

|1D9C17| JSL Get16BitSpriteCoords_long

|1D9C1B| RTS

;===================================================================================================

SpriteDraw_GanonTrident:
|1D9C1C| LDA.b #$00
|1D9C1E| XBA
|1D9C1F| LDA.w $0ED0,X
|1D9C22| BEQ .exit

|1D9C24| DEC A

|1D9C25| REP #$20

|1D9C27| ASL A ; *8
|1D9C28| ASL A
|1D9C29| ASL A
|1D9C2A| STA.b $00

|1D9C2C| ASL A ; *32
|1D9C2D| ASL A
|1D9C2E| CLC
|1D9C2F| ADC.b $00 ; so *40

|1D9C31| CLC
|1D9C32| ADC.w #Trident_OAMGroups
|1D9C35| STA.b $08

;---------------------------------------------------------------------------------------------------

|1D9C37| SEP #$20

|1D9C39| LDY.b #$06

|1D9C3B| LDA.w $0ED0,X
|1D9C3E| CMP.b #$09
|1D9C40| BEQ .continue

|1D9C42| LDY.b #$08
|1D9C44| BCS .continue

|1D9C46| LDA.w $0DE0,X
|1D9C49| ASL A
|1D9C4A| TAY

;---------------------------------------------------------------------------------------------------

.continue
|1D9C4B| REP #$20

|1D9C4D| LDA.w $0FD8
|1D9C50| CLC
|1D9C51| ADC.w GanonTridentOAM_offset_x,Y
|1D9C54| STA.w $0FD8

|1D9C57| LDA.w $0FDA
|1D9C5A| CLC
|1D9C5B| ADC.w GanonTridentOAM_offset_y,Y
|1D9C5E| STA.w $0FDA

|1D9C61| SEP #$20

|1D9C63| LDA.w $0B89,X
|1D9C66| PHA

|1D9C67| AND.b #$F0
|1D9C69| STA.w $0B89,X

|1D9C6C| LDA.b #$05
|1D9C6E| JSR TabulatedSpriteDraw_bank1D

|1D9C71| PLA
|1D9C72| STA.w $0B89,X

|1D9C75| JSL Get16BitSpriteCoords_long

.exit
|1D9C79| RTS

;===================================================================================================

Swamola_SegmentsIndex:
|1D9C7A| db $00, $20, $40, $60, $80, $A0

;---------------------------------------------------------------------------------------------------

InitializeSwamolaSegments:
|1D9C80| PHX
|1D9C81| TXY

|1D9C82| LDA.w Swamola_SegmentsIndex,X
|1D9C85| TAX

|1D9C86| LDA.b #$1F
|1D9C88| STA.b $00

.next_segment
|1D9C8A| LDA.w $0D10,Y
|1D9C8D| STA.l $7FFA5C,X

|1D9C91| LDA.w $0D30,Y
|1D9C94| STA.l $7FFB1C,X

|1D9C98| LDA.w $0D00,Y
|1D9C9B| STA.l $7FFBDC,X

|1D9C9F| LDA.w $0D20,Y
|1D9CA2| STA.l $7FFC9C,X

|1D9CA6| INX

|1D9CA7| DEC.b $00
|1D9CA9| BPL .next_segment

|1D9CAB| PLX

|1D9CAC| RTL

;===================================================================================================

UNREACHABLE_1D9CAD:
|1D9CAD| db $00, $10, $F0

;===================================================================================================

Sprite_CF_Swamola:
|1D9CB0| LDA.w $0D80,X
|1D9CB3| BEQ .no_draw

|1D9CB5| BPL Swamola_Main

|1D9CB7| JMP.w Swamola_Ripples

;===================================================================================================

#Swamola_Main:
|1D9CBA| JSR SpriteDraw_Swamola

.no_draw
|1D9CBD| JSL Get16BitSpriteCoords_long
|1D9CC1| JSR CheckIfActive_bank1D

|1D9CC4| INC.w $0E80,X
|1D9CC7| JSR CheckDamageToAndFromLink_bank1D

|1D9CCA| LDA.w $0D40,X
|1D9CCD| PHA

|1D9CCE| CLC
|1D9CCF| ADC.w $0F80,X
|1D9CD2| STA.w $0D40,X

|1D9CD5| JSR MoveSpriteXY_bank1D

|1D9CD8| PLA
|1D9CD9| STA.w $0D40,X

;---------------------------------------------------------------------------------------------------

|1D9CDC| LDA.w $0D80,X
|1D9CDF| JSL JumpTableLocal
|1D9CE3| dw Swamola_Emerge
|1D9CE5| dw Swamola_Ascend
|1D9CE7| dw Swamola_Wiggle
|1D9CE9| dw Swamola_Descend
|1D9CEB| dw Swamola_Submerge

;===================================================================================================

Swamola_Dive:

.offset_x_low
|1D9CED| db   0,   0,  32,  32,  32,   0, -32, -32, -32

.offset_x_high
|1D9CF6| db   0,   0,   0,   0,   0,   0,  -1,  -1,  -1

.offset_y_low
|1D9CFF| db   0, -32, -32,   0,  32,  32,  32,   0, -32

.offset_y_high
|1D9D08| db   0,  -1,  -1,   0,   0,   0,   0,   0,  -1

.ID
|1D9D11| db      $01, $02, $03, $04, $05, $06, $07, $08

;===================================================================================================

Swamola_Emerge:
|1D9D19| LDA.w $0DF0,X
|1D9D1C| BNE .exit

|1D9D1E| JSL GetRandomNumber
|1D9D22| AND.b #$07
|1D9D24| TAY

|1D9D25| LDA.w Swamola_Dive.ID,Y
|1D9D28| CMP.w $0DE0,X
|1D9D2B| BEQ .exit

;---------------------------------------------------------------------------------------------------

|1D9D2D| TAY

|1D9D2E| LDA.w $0D90,X
|1D9D31| CLC
|1D9D32| ADC.w Swamola_Dive.offset_x_low,Y
|1D9D35| STA.l $7FFD5C,X

|1D9D39| LDA.w $0DA0,X
|1D9D3C| ADC.w Swamola_Dive.offset_x_high,Y
|1D9D3F| STA.l $7FFD62,X

|1D9D43| LDA.w $0DB0,X
|1D9D46| CLC
|1D9D47| ADC.w Swamola_Dive.offset_y_low,Y
|1D9D4A| STA.l $7FFD68,X

|1D9D4E| LDA.w $0EB0,X
|1D9D51| ADC.w Swamola_Dive.offset_y_high,Y
|1D9D54| STA.l $7FFD6E,X

|1D9D58| INC.w $0D80,X

|1D9D5B| JSR ZeroVelocityXY_bank1D

|1D9D5E| LDA.b #$F1
|1D9D60| STA.w $0F80,X

|1D9D63| JSR Swamola_SpawnRipples

.exit
|1D9D66| RTS

;===================================================================================================

Swamola_Ascend:
|1D9D67| LDA.w $0E80,X
|1D9D6A| AND.b #$03
|1D9D6C| BNE .dont_accel

|1D9D6E| INC.w $0F80,X
|1D9D71| BNE .dont_accel

|1D9D73| INC.w $0D80,X

.dont_accel
|1D9D76| LDA.w $0E80,X
|1D9D79| AND.b #$03
|1D9D7B| BNE .exit

|1D9D7D| JSR Swamola_ProjectVelocityTowardsTarget

;---------------------------------------------------------------------------------------------------

#Swamola_ApproachTargetVelocity:
|1D9D80| LDA.w $0D40,X
|1D9D83| CMP.b $00
|1D9D85| BEQ .up_to_speed
|1D9D87| BPL .too_fast_y

|1D9D89| INC.w $0D40,X
|1D9D8C| BRA .up_to_speed

.too_fast_y
|1D9D8E| DEC.w $0D40,X

.up_to_speed
|1D9D91| LDA.w $0D50,X
|1D9D94| CMP.b $01
|1D9D96| BEQ .exit
|1D9D98| BPL .too_fast_x

|1D9D9A| INC.w $0D50,X
|1D9D9D| BRA .exit

.too_fast_x
|1D9D9F| DEC.w $0D50,X

.exit
|1D9DA2| RTS

;===================================================================================================

pool Swamola_Wiggle

.offset_z
|1D9DA3| db  2,  -2

.limit_z
|1D9DA5| db 12, -12

endpool

;---------------------------------------------------------------------------------------------------

Swamola_Wiggle:
|1D9DA7| LDA.w $0E80,X
|1D9DAA| AND.b #$00 ; [USELESS]
|1D9DAC| BNE .no_wiggle

|1D9DAE| LDA.w $0ED0,X
|1D9DB1| AND.b #$01
|1D9DB3| TAY

|1D9DB4| LDA.w $0F80,X
|1D9DB7| CLC
|1D9DB8| ADC.w .offset_z,Y
|1D9DBB| STA.w $0F80,X

|1D9DBE| CMP.w .limit_z,Y
|1D9DC1| BNE .no_wiggle

|1D9DC3| INC.w $0ED0,X

.no_wiggle
|1D9DC6| LDA.l $7FFD5C,X
|1D9DCA| STA.b $04

|1D9DCC| LDA.l $7FFD62,X
|1D9DD0| STA.b $05

|1D9DD2| LDA.l $7FFD68,X
|1D9DD6| STA.b $06

|1D9DD8| LDA.l $7FFD6E,X
|1D9DDC| STA.b $07

|1D9DDE| REP #$20

|1D9DE0| LDA.w $0FD8
|1D9DE3| SEC
|1D9DE4| SBC.b $04
|1D9DE6| CLC
|1D9DE7| ADC.w #$0008

|1D9DEA| CMP.w #$0010
|1D9DED| BCS .can_wiggle_more

|1D9DEF| LDA.w $0FDA
|1D9DF2| SEC
|1D9DF3| SBC.b $06
|1D9DF5| CLC
|1D9DF6| ADC.w #$0008

|1D9DF9| CMP.w #$0010
|1D9DFC| BCS .can_wiggle_more

|1D9DFE| SEP #$20

|1D9E00| INC.w $0D80,X

.can_wiggle_more
|1D9E03| SEP #$20

|1D9E05| JSR Swamola_ProjectVelocityTowardsTarget

|1D9E08| LDA.b $00
|1D9E0A| STA.w $0D40,X

|1D9E0D| LDA.b $01
|1D9E0F| STA.w $0D50,X

|1D9E12| RTS

;===================================================================================================

Swamola_ProjectVelocityTowardsTarget:
|1D9E13| LDA.l $7FFD5C,X
|1D9E17| STA.b $04

|1D9E19| LDA.l $7FFD62,X
|1D9E1D| STA.b $05

|1D9E1F| LDA.l $7FFD68,X
|1D9E23| STA.b $06

|1D9E25| LDA.l $7FFD6E,X
|1D9E29| STA.b $07

|1D9E2B| LDA.b #$0F
|1D9E2D| JSL ProjectSpriteSpeedTowardsLocation_long

|1D9E31| RTS

;===================================================================================================

Swamola_Descend:
|1D9E32| LDA.w $0E80,X
|1D9E35| AND.b #$03
|1D9E37| BNE .delay

|1D9E39| INC.w $0F80,X

|1D9E3C| LDA.w $0F80,X
|1D9E3F| CMP.b #$10
|1D9E41| BNE .delay

|1D9E43| INC.w $0D80,X

|1D9E46| JSR Swamola_SpawnRipples

|1D9E49| LDA.b #$80
|1D9E4B| STA.w $0D20,X

|1D9E4E| LDA.b #$50
|1D9E50| STA.w $0DF0,X

.delay
|1D9E53| LDA.w $0E80,X
|1D9E56| AND.b #$03
|1D9E58| BNE .exit

|1D9E5A| STZ.b $00
|1D9E5C| STZ.b $01

|1D9E5E| JSR Swamola_ApproachTargetVelocity

.exit
|1D9E61| RTS

;===================================================================================================

Swamola_Submerge:
|1D9E62| LDA.w $0DF0,X
|1D9E65| BNE .wait

|1D9E67| JSL GetRandomNumber
|1D9E6B| AND.b #$07
|1D9E6D| TAY

|1D9E6E| LDA.w Swamola_Dive.ID,Y
|1D9E71| STA.w $0DE0,X

|1D9E74| TAY

|1D9E75| LDA.w $0D90,X
|1D9E78| CLC
|1D9E79| ADC.w Swamola_Dive.offset_x_low,Y
|1D9E7C| STA.w $0D10,X

|1D9E7F| LDA.w $0DA0,X
|1D9E82| ADC.w Swamola_Dive.offset_x_high,Y
|1D9E85| STA.w $0D30,X

|1D9E88| LDA.w $0DB0,X
|1D9E8B| CLC
|1D9E8C| ADC.w Swamola_Dive.offset_y_low,Y
|1D9E8F| STA.w $0D00,X

|1D9E92| LDA.w $0EB0,X
|1D9E95| ADC.w Swamola_Dive.offset_y_high,Y
|1D9E98| STA.w $0D20,X

|1D9E9B| STZ.w $0D80,X

|1D9E9E| LDA.b #$30
|1D9EA0| STA.w $0DF0,X

|1D9EA3| JSR ZeroVelocityXY_bank1D

|1D9EA6| STZ.w $0F80,X

.wait
|1D9EA9| RTS

;===================================================================================================

Swamola_SpawnRipples:
|1D9EAA| LDA.b #$CF ; SPRITE CF
|1D9EAC| JSL SpawnSpriteDynamically
|1D9EB0| BMI .no_space

|1D9EB2| JSL SetSpawnedSpriteCoordinates

|1D9EB6| LDA.b #$80
|1D9EB8| STA.w $0D80,Y

|1D9EBB| LDA.b #$20
|1D9EBD| STA.w $0DF0,Y

|1D9EC0| LDA.b #$04
|1D9EC2| STA.w $0F50,Y
|1D9EC5| STA.w $0BA0,Y

|1D9EC8| LDA.b #$00
|1D9ECA| STA.w $0E40,Y

.no_space
|1D9ECD| RTS

;===================================================================================================

Swamola_Ripples:
|1D9ECE| JSR SpriteDraw_SwamolaRipples
|1D9ED1| JSR CheckIfActive_bank1D

|1D9ED4| LDA.w $0DF0,X
|1D9ED7| BNE .exit

|1D9ED9| STZ.w $0DD0,X

.exit
|1D9EDC| RTS

;===================================================================================================

pool SpriteDraw_SwamolaRipples

.oam_groups
; group00
|1D9EDD| dw   0,   4 : db $D8, $00, $00, $00
|1D9EE5| dw   8,   4 : db $D8, $40, $00, $00

; group01
|1D9EED| dw   0,   4 : db $D9, $00, $00, $00
|1D9EF5| dw   8,   4 : db $D9, $40, $00, $00

; group02
|1D9EFD| dw   0,   4 : db $DA, $00, $00, $00
|1D9F05| dw   8,   4 : db $DA, $40, $00, $00

; group03
|1D9F0D| dw   0,   4 : db $D9, $00, $00, $00
|1D9F15| dw   8,   4 : db $D9, $40, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_SwamolaRipples:
|1D9F1D| LDA.b #$08
|1D9F1F| JSL AllocateOAMInRegionB

|1D9F23| LDA.b #$00
|1D9F25| XBA
|1D9F26| LDA.w $0DF0,X
|1D9F29| AND.b #$0C ; effectively a x4 on ID

|1D9F2B| REP #$20

|1D9F2D| ASL A ; up to x16
|1D9F2E| ASL A
|1D9F2F| CLC
|1D9F30| ADC.w #.oam_groups
|1D9F33| STA.b $08

|1D9F35| SEP #$20

|1D9F37| LDA.b #$02
|1D9F39| JMP.w TabulatedSpriteDraw_bank1D

;===================================================================================================

pool SpriteDraw_Swamola

.segment_offset
|1D9F3C| db $08, $10, $16, $1A

.anim_step
|1D9F40| db $07, $06, $05, $04, $03, $04, $05, $06
|1D9F48| db $07, $06, $05, $04, $03, $04, $05, $06

.flip
|1D9F50| db $C0, $C0, $C0, $C0, $80, $80, $80, $80
|1D9F58| db $00, $00, $00, $00, $00, $40, $40, $40

.segment_step
|1D9F60| db $00, $00, $01, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Swamola:
|1D9F64| LDA.w $0D50,X
|1D9F67| STA.b $01

|1D9F69| LDA.w $0D40,X
|1D9F6C| CLC
|1D9F6D| ADC.w $0F80,X
|1D9F70| STA.b $00

|1D9F72| JSL ConvertVelocityToAngle
|1D9F76| TAY

|1D9F77| LDA.w .anim_step,Y
|1D9F7A| STA.w $0DC0,X

|1D9F7D| LDA.w $0F50,X
|1D9F80| AND.b #$3F
|1D9F82| ORA.w .flip,Y
|1D9F85| STA.w $0F50,X

|1D9F88| JSL SpriteDraw_SingleLarge_long

;---------------------------------------------------------------------------------------------------

|1D9F8C| PHX
|1D9F8D| TXY

|1D9F8E| LDA.w $0E80,X
|1D9F91| AND.b #$1F
|1D9F93| CLC
|1D9F94| ADC.w Swamola_SegmentsIndex,X
|1D9F97| TAX

|1D9F98| LDA.w $0D10,Y
|1D9F9B| STA.l $7FFA5C,X

|1D9F9F| LDA.w $0D30,Y
|1D9FA2| STA.l $7FFB1C,X

|1D9FA6| LDA.w $0D00,Y
|1D9FA9| STA.l $7FFBDC,X

|1D9FAD| LDA.w $0D20,Y
|1D9FB0| STA.l $7FFC9C,X

|1D9FB4| PLX

;---------------------------------------------------------------------------------------------------

|1D9FB5| REP #$20

|1D9FB7| LDA.w #$0000
|1D9FBA| LDY.w $0D40,X
|1D9FBD| BPL .positive_y_1

|1D9FBF| LDA.w #$0014

.positive_y_1
|1D9FC2| PHA

|1D9FC3| CLC
|1D9FC4| ADC.b $90
|1D9FC6| STA.b $90

|1D9FC8| PLA
|1D9FC9| LSR A
|1D9FCA| LSR A
|1D9FCB| CLC
|1D9FCC| ADC.b $92
|1D9FCE| STA.b $92

|1D9FD0| SEP #$20

|1D9FD2| LDA.b #$00
|1D9FD4| STA.w $0FB6

;---------------------------------------------------------------------------------------------------

.next_segment
|1D9FD7| LDY.w $0FB6

|1D9FDA| LDA.w .segment_step,Y
|1D9FDD| STA.w $0DC0,X

|1D9FE0| PHX

|1D9FE1| LDA.w $0E80,X
|1D9FE4| SEC
|1D9FE5| SBC.w .segment_offset,Y
|1D9FE8| AND.b #$1F
|1D9FEA| CLC
|1D9FEB| ADC.w Swamola_SegmentsIndex,X
|1D9FEE| TAX

|1D9FEF| LDA.l $7FFA5C,X
|1D9FF3| STA.w $0FD8

|1D9FF6| LDA.l $7FFB1C,X
|1D9FFA| STA.w $0FD9

|1D9FFD| LDA.l $7FFBDC,X
|1DA001| STA.w $0FDA

|1DA004| LDA.l $7FFC9C,X
|1DA008| STA.w $0FDB

|1DA00B| PLX

|1DA00C| LDA.w $0D40,X
|1DA00F| BPL .positive_y_2

|1DA011| REP #$20

|1DA013| LDA.b $90
|1DA015| SEC
|1DA016| SBC.w #$0004
|1DA019| STA.b $90

|1DA01B| DEC.b $92
|1DA01D| BRA .draw_segment

.positive_y_2
|1DA01F| REP #$20

|1DA021| LDA.b $90
|1DA023| CLC
|1DA024| ADC.w #$0004
|1DA027| STA.b $90

|1DA029| INC.b $92

.draw_segment
|1DA02B| SEP #$20

|1DA02D| JSL SpriteDraw_SingleLarge_long

|1DA031| INC.w $0FB6

|1DA034| LDA.w $0FB6
|1DA037| CMP.b #$04
|1DA039| BNE .next_segment

|1DA03B| RTS

;===================================================================================================

Blind_SpawnFromMaiden:
|1DA03C| LDX.b #$00

|1DA03E| LDA.b #$09
|1DA040| STA.w $0DD0,X

|1DA043| LDA.b #$CE ; SPRITE CE
|1DA045| STA.w $0E20,X

|1DA048| LDA.b $00
|1DA04A| STA.w $0D10,X

|1DA04D| LDA.b $01
|1DA04F| STA.w $0D30,X

|1DA052| LDA.b $02
|1DA054| SEC
|1DA055| SBC.b #$10
|1DA057| STA.w $0D00,X

|1DA05A| LDA.b $03
|1DA05C| STA.w $0D20,X

|1DA05F| JSL LoadSpriteProperties

|1DA063| LDA.b #$C0
|1DA065| STA.w $0E10,X

|1DA068| LDA.b #$15
|1DA06A| STA.w $0DC0,X

|1DA06D| LDA.b #$02
|1DA06F| STA.w $0DE0,X
|1DA072| STA.w $0BA0,X

; flag as spawned
|1DA075| LDA.w $0403
|1DA078| ORA.b #$20
|1DA07A| STA.w $0403

|1DA07D| STZ.w $0B69

|1DA080| RTL

;===================================================================================================
; Don't spawn Blind if
;   the maiden is following Link
;   the maiden has never been returned
;===================================================================================================
SpritePrep_Blind_PrepareBattle:
|1DA081| LDA.l $7EF3CC
|1DA085| CMP.b #$06 ; FOLLOWER 06
|1DA087| BEQ .despawn

|1DA089| LDA.w $0403
|1DA08C| AND.b #$20
|1DA08E| BEQ .despawn

|1DA090| LDA.b #$60
|1DA092| STA.w $0E10,X

; AI mode
|1DA095| LDA.b #$01
|1DA097| STA.w $0DB0,X

; Direction
|1DA09A| LDA.b #$02
|1DA09C| STA.w $0DE0,X

; head direction
|1DA09F| LDA.b #$04
|1DA0A1| STA.w $0EB0,X

|1DA0A4| LDA.b #$07
|1DA0A6| STA.w $0DC0,X

|1DA0A9| STZ.w $0B69

|1DA0AC| RTL

.despawn
|1DA0AD| STZ.w $0DD0,X

|1DA0B0| RTL

;===================================================================================================

BlindLaser_SpawnTrailGarnish:
|1DA0B1| LDA.w $0E80,X
|1DA0B4| AND.b #$00
|1DA0B6| BNE .exit

|1DA0B8| PHX
|1DA0B9| TXY

|1DA0BA| LDX.b #$1D

.next_slot
|1DA0BC| LDA.l $7FF800,X
|1DA0C0| BEQ .free_slot

|1DA0C2| DEX
|1DA0C3| BPL .next_slot

|1DA0C5| DEC.w $0FF8
|1DA0C8| BPL .use_search_index

|1DA0CA| LDA.b #$1D
|1DA0CC| STA.w $0FF8

.use_search_index
|1DA0CF| LDX.w $0FF8

;---------------------------------------------------------------------------------------------------

.free_slot
|1DA0D2| LDA.b #$0F ; GARNISH 0F
|1DA0D4| STA.l $7FF800,X
|1DA0D8| STA.w $0FB4

|1DA0DB| LDA.w $0DC0,Y
|1DA0DE| STA.l $7FF9FE,X

|1DA0E2| TYA
|1DA0E3| STA.l $7FF92C,X

|1DA0E7| LDA.w $0D10,Y
|1DA0EA| STA.l $7FF83C,X

|1DA0EE| LDA.w $0D30,Y
|1DA0F1| STA.l $7FF878,X

|1DA0F5| LDA.w $0D00,Y
|1DA0F8| CLC
|1DA0F9| ADC.b #$10
|1DA0FB| STA.l $7FF81E,X

|1DA0FF| LDA.w $0D20,Y
|1DA102| ADC.b #$00
|1DA104| STA.l $7FF85A,X

|1DA108| LDA.b #$0A
|1DA10A| STA.l $7FF90E,X

|1DA10E| PLX

.exit
|1DA10F| RTS

;===================================================================================================

pool Blind_Head

.speed_limit_x
|1DA110| db  32, -32

.pos_limit_x
|1DA112| db $98, $58

.speed_limit_y
|1DA114| db  24, -24

.pos_limit_y
|1DA116| db $B0, $50

endpool

;---------------------------------------------------------------------------------------------------

Blind_Head:
|1DA118| LDA.w $0B89,X
|1DA11B| ORA.b #$30
|1DA11D| STA.w $0B89,X

;---------------------------------------------------------------------------------------------------

|1DA120| JSL SpriteDraw_SingleLarge_long

|1DA124| PHX

|1DA125| LDY.b #$02

|1DA127| LDA.w $0EB0,X
|1DA12A| TAX

|1DA12B| LDA.w SpriteDraw_Blind.head_char,X
|1DA12E| STA.b ($90),Y

|1DA130| INY
|1DA131| LDA.b ($90),Y
|1DA133| AND.b #$3F
|1DA135| ORA.w SpriteDraw_Blind.head_flip,X
|1DA138| STA.b ($90),Y

|1DA13A| PLX

;---------------------------------------------------------------------------------------------------

|1DA13B| JSR CheckIfActive_bank1D

|1DA13E| LDA.w $0EA0,X
|1DA141| CMP.b #$0E
|1DA143| BNE .dont_shorten_recoil

|1DA145| LDA.b #$08
|1DA147| STA.w $0EA0,X

.dont_shorten_recoil
|1DA14A| JSR HandleSpriteRecoil_bank1D

|1DA14D| DEC.w $0E30,X
|1DA150| BPL .dont_rotate

|1DA152| LDA.b #$02
|1DA154| STA.w $0E30,X

|1DA157| LDA.w $0EB0,X
|1DA15A| INC A
|1DA15B| AND.b #$0F
|1DA15D| STA.w $0EB0,X

;---------------------------------------------------------------------------------------------------

.dont_rotate
|1DA160| LDA.w $0DF0,X
|1DA163| BEQ .continue

|1DA165| JMP.w .exit

;---------------------------------------------------------------------------------------------------

.continue
|1DA168| JSR CheckDamageToAndFromLink_bank1D

|1DA16B| INC.w $0E80,X

|1DA16E| LDA.b #$1F
|1DA170| JSR Blind_SpitFireball

|1DA173| TYA
|1DA174| BMI .no_fireball

; every 5th fire ball is aimed at Link
|1DA176| DEC.w $0F90,X
|1DA179| BPL .no_fireball

; aim fireball at Link
|1DA17B| LDA.b #$04
|1DA17D| STA.w $0F90,X

|1DA180| PHY

|1DA181| LDA.b #$20
|1DA183| JSL ProjectSpriteSpeedTowardsLink_long

|1DA187| PLY

|1DA188| LDA.b $00
|1DA18A| STA.w $0D40,Y

|1DA18D| LDA.b $01
|1DA18F| STA.w $0D50,Y

.no_fireball
; this always fails
|1DA192| LDA.w $0E80,X
|1DA195| AND.b #$00
|1DA197| BNE .dont_accelerate_x

; check if moving left or right
|1DA199| LDA.w $0ED0,X
|1DA19C| AND.b #$01
|1DA19E| TAY

|1DA19F| LDA.w $0D50,X
|1DA1A2| CMP.w .speed_limit_x,Y
|1DA1A5| BEQ .dont_accelerate_x

|1DA1A7| CLC
|1DA1A8| ADC.w Shakeyshake.low,Y
|1DA1AB| STA.w $0D50,X

;---------------------------------------------------------------------------------------------------

.dont_accelerate_x
|1DA1AE| LDA.w $0D10,X
|1DA1B1| AND.b #$FE
|1DA1B3| CMP.w .pos_limit_x,Y
|1DA1B6| BNE .dont_invert_accel_x

|1DA1B8| INC.w $0ED0,X

.dont_invert_accel_x
|1DA1BB| LDA.w $0E80,X
|1DA1BE| AND.b #$00
|1DA1C0| BNE .dont_accelerate_y

; check if moving up or down
|1DA1C2| LDA.w $0EC0,X
|1DA1C5| AND.b #$01
|1DA1C7| TAY

|1DA1C8| LDA.w $0D40,X
|1DA1CB| CMP.w .speed_limit_y,Y
|1DA1CE| BEQ .dont_accelerate_y

|1DA1D0| CLC
|1DA1D1| ADC.w Shakeyshake.low,Y
|1DA1D4| STA.w $0D40,X

;---------------------------------------------------------------------------------------------------

.dont_accelerate_y
|1DA1D7| LDA.w $0D00,X
|1DA1DA| AND.b #$FE
|1DA1DC| CMP.w .pos_limit_y,Y
|1DA1DF| BNE .dont_invert_accel_y

|1DA1E1| INC.w $0EC0,X

.dont_invert_accel_y
|1DA1E4| LDA.w $0EA0,X
|1DA1E7| BNE .exit

|1DA1E9| JSR MoveSpriteXY_bank1D

.exit
|1DA1EC| RTS

;===================================================================================================

Blind_SpawnHead:
|1DA1ED| LDA.b #$CE ; SPRITE CE
|1DA1EF| JSL SpawnSpriteDynamically
|1DA1F3| BMI .fail

|1DA1F5| JSL SetSpawnedSpriteCoordinates

|1DA1F9| LDA.b #$5B
|1DA1FB| STA.w $0E60,Y

|1DA1FE| AND.b #$0F
|1DA200| STA.w $0F50,Y

|1DA203| LDA.b #$04
|1DA205| STA.w $0CAA,Y

|1DA208| LDA.b #$02
|1DA20A| STA.w $0D90,Y

|1DA20D| LDA.b #$01
|1DA20F| STA.w $0E40,Y

|1DA212| DEC A
|1DA213| STA.w $0F60,Y
|1DA216| STA.w $0B6B,Y

|1DA219| LDA.b #$17
|1DA21B| STA.w $0F70,Y

;---------------------------------------------------------------------------------------------------

|1DA21E| CLC
|1DA21F| ADC.b $02
|1DA221| STA.w $0D00,Y

|1DA224| LDA.b $00
|1DA226| ASL A
|1DA227| ROL A
|1DA228| AND.b #$01
|1DA22A| STA.w $0ED0,Y

|1DA22D| LDA.b $02
|1DA22F| ASL A
|1DA230| ROL A
|1DA231| AND.b #$01
|1DA233| STA.w $0EC0,Y

|1DA236| LDA.b #$30
|1DA238| STA.w $0DF0,Y

;---------------------------------------------------------------------------------------------------

.fail
|1DA23B| RTS

;===================================================================================================

pool Blind_Laser

.draw
|1DA23C| db $07, $07, $08, $09, $0A, $09, $08, $07
|1DA244| db $07, $07, $08, $09, $0A, $09, $08, $07

.flip
|1DA24C| db $00, $00, $00, $00, $00, $40, $40, $40
|1DA254| db $40, $40, $C0, $C0, $80, $80, $80, $80

endpool

;---------------------------------------------------------------------------------------------------

Blind_draw:
|1DA25C| db $14, $13, $12, $11, $10, $0F, $0F

;---------------------------------------------------------------------------------------------------

Sprite_CE_Blind:
|1DA263| LDA.w $0D90,X
|1DA266| BPL Blind_Blind

;===================================================================================================

Blind_Laser:
|1DA268| LDY.w $0EB0,X

|1DA26B| LDA.w .draw,Y
|1DA26E| STA.w $0DC0,X

|1DA271| LDA.w .flip,Y
|1DA274| ORA.b #$03
|1DA276| STA.w $0F50,X

|1DA279| JSL GetScreenCoordinates_long
|1DA27D| JSR CheckIfActive_bank1D

|1DA280| LDA.w $0DF0,X
|1DA283| BEQ .not_dispersing

|1DA285| CMP.b #$01
|1DA287| BNE .exit

|1DA289| STZ.w $0DD0,X

.exit
|1DA28C| RTS

;---------------------------------------------------------------------------------------------------

.not_dispersing
|1DA28D| JSL CheckDamageToLink_same_layer_long

|1DA291| LDY.b #$00

|1DA293| LDA.w $0D50,X
|1DA296| BPL .positive_x

|1DA298| DEY

.positive_x
|1DA299| CLC
|1DA29A| ADC.w $0D10,X
|1DA29D| STA.w $0D10,X

|1DA2A0| TYA
|1DA2A1| ADC.w $0D30,X
|1DA2A4| STA.w $0D30,X

|1DA2A7| LDY.b #$00

|1DA2A9| LDA.w $0D40,X
|1DA2AC| BPL .positive_y

|1DA2AE| DEY

.positive_y
|1DA2AF| CLC
|1DA2B0| ADC.w $0D00,X
|1DA2B3| STA.w $0D00,X

|1DA2B6| TYA
|1DA2B7| ADC.w $0D20,X
|1DA2BA| STA.w $0D20,X

|1DA2BD| JSR CheckSpriteTileCollision_bank1D
|1DA2C0| BEQ .no_collision

|1DA2C2| LDA.b #$0C
|1DA2C4| STA.w $0DF0,X

.no_collision
|1DA2C7| JSR BlindLaser_SpawnTrailGarnish

|1DA2CA| RTS

;===================================================================================================

Blind_Blind:
|1DA2CB| CMP.b #$02
|1DA2CD| BNE Blind_Blind_Blind

|1DA2CF| JMP.w Blind_Head

;---------------------------------------------------------------------------------------------------

Blind_Blind_Blind:
|1DA2D2| LDA.w $0B89,X
|1DA2D5| ORA.b #$30
|1DA2D7| STA.w $0B89,X

|1DA2DA| JSR SpriteDraw_Blind

|1DA2DD| LDA.b #$01
|1DA2DF| STA.w $0F50,X

|1DA2E2| JSR CheckIfActive_bank1D

;---------------------------------------------------------------------------------------------------

|1DA2E5| LDA.w $0EA0,X
|1DA2E8| BEQ .not_hit

|1DA2EA| DEC.w $0EA0,X

|1DA2ED| CMP.b #$0B
|1DA2EF| BNE .not_hit

|1DA2F1| STZ.w $0EF0,X
|1DA2F4| STZ.w $0E70,X

|1DA2F7| LDA.w $0F10,X
|1DA2FA| BNE .not_hit

|1DA2FC| LDA.b #$80
|1DA2FE| STA.w $0E50,X

|1DA301| LDA.b #$30
|1DA303| STA.w $0F10,X

|1DA306| LDA.w $0F50,X
|1DA309| AND.b #$01
|1DA30B| STA.w $0F50,X

|1DA30E| INC.w $0F90,X

|1DA311| LDA.w $0F90,X
|1DA314| CMP.b #$03
|1DA316| BCS .phase

|1DA318| LDA.b #$60
|1DA31A| STA.w $0E70,X

|1DA31D| LDA.b #$01
|1DA31F| STA.w $0E30,X

|1DA322| BRA .not_hit

;---------------------------------------------------------------------------------------------------

.phase
|1DA324| STZ.w $0F90,X

|1DA327| INC.w $0B6A

|1DA32A| LDA.w $0B6A
|1DA32D| CMP.b #$03
|1DA32F| BNE .spawn_head

|1DA331| JSL KillFellowSprites
|1DA335| JSR PrepareToDieLikeABoss

|1DA338| LDA.b #$FF
|1DA33A| STA.w $0DF0,X
|1DA33D| STA.w $0EF0,X

|1DA340| INC.w $0FFC

|1DA343| LDA.b #$22 ; SFX3.22
|1DA345| JSL QueueSpriteSFX3WithPan

|1DA349| RTS

;---------------------------------------------------------------------------------------------------

.spawn_head
|1DA34A| JSR ZeroVelocityXY_bank1D

|1DA34D| LDA.b #$06
|1DA34F| STA.w $0DB0,X

|1DA352| LDA.b #$FF
|1DA354| STA.w $0E10,X
|1DA357| STA.w $0BA0,X

|1DA35A| JSR Blind_SpawnHead

.not_hit
|1DA35D| LDA.w $0D90,X
|1DA360| BEQ Blind_Blind_Blind_Blind

|1DA362| LDA.w $0DF0,X
|1DA365| BNE .stay

|1DA367| STZ.w $0DD0,X

.stay
|1DA36A| LSR A
|1DA36B| LSR A
|1DA36C| LSR A
|1DA36D| TAY

|1DA36E| LDA.w Blind_draw,Y
|1DA371| STA.w $0DC0,X

|1DA374| RTS

;---------------------------------------------------------------------------------------------------

Blind_Blind_Blind_Blind:
|1DA375| INC.w $0E80,X

|1DA378| LDA.w $0E80,X
|1DA37B| AND.b #$01
|1DA37D| BNE .accept_tick

|1DA37F| INC.w $0DF0,X

.accept_tick
|1DA382| LDA.w $0E00,X
|1DA385| BEQ Blind_HandleAI

|1DA387| STZ.w $0D80,X

|1DA38A| CMP.b #$08
|1DA38C| BNE .dont_shoot_laser

|1DA38E| JSR Blind_SpawnLaser

.dont_shoot_laser
|1DA391| JMP.w Blind_CheckBumpDamage

;===================================================================================================

Blind_HandleAI:
|1DA394| INC.w $0B69

|1DA397| LDA.w $0B58,X
|1DA39A| BNE .no_laser

|1DA39C| LDA.w $0D80,X
|1DA39F| BEQ .refuse_laser

|1DA3A1| LDA.b #$10
|1DA3A3| STA.w $0E00,X

|1DA3A6| LDA.b #$80
|1DA3A8| STA.w $0B58,X

|1DA3AB| BRA .continue

.no_laser
|1DA3AD| DEC.w $0B58,X

;---------------------------------------------------------------------------------------------------

.continue
|1DA3B0| STZ.w $0D80,X

.refuse_laser
; [HARDCODED] to always be in the same quadrant as Link
|1DA3B3| LDA.b $23
|1DA3B5| STA.w $0D30,X

|1DA3B8| LDA.b $21
|1DA3BA| STA.w $0D20,X

|1DA3BD| LDA.w $0DB0,X
|1DA3C0| JSL JumpTableLocal
|1DA3C4| dw Blind_THELIGHT       ; 0x00
|1DA3C6| dw Blind_EscapeLight    ; 0x01
|1DA3C8| dw Blind_Shimmy         ; 0x02
|1DA3CA| dw Blind_SwapSides      ; 0x03
|1DA3CC| dw Blind_Spin           ; 0x04
|1DA3CE| dw Blind_FireballFlurry ; 0x05
|1DA3D0| dw Blind_Undress        ; 0x06
|1DA3D2| dw Blind_Rerobe         ; 0x07

;===================================================================================================

pool Blind_Undress

.draw
|1DA3D4| db $0E, $0D, $0C, $0A

endpool

;---------------------------------------------------------------------------------------------------

Blind_Undress:
|1DA3D8| STZ.w $0EF0,X

|1DA3DB| LDA.b #$0C
|1DA3DD| STA.w $0EB0,X

|1DA3E0| LDA.w $0E10,X
|1DA3E3| BNE .delay

|1DA3E5| INC.w $0DB0,X

|1DA3E8| LDA.b #$27
|1DA3EA| STA.w $0E10,X

|1DA3ED| LDA.b #$13 ; SFX1.13
|1DA3EF| JSL QueueSpriteSFX1WithPan

|1DA3F3| RTS

;---------------------------------------------------------------------------------------------------

.delay
|1DA3F4| CMP.b #$E0
|1DA3F6| BCC .not_ready

|1DA3F8| SBC.b #$E0
|1DA3FA| LSR A
|1DA3FB| LSR A
|1DA3FC| LSR A
|1DA3FD| TAY

|1DA3FE| LDA.w .draw,Y
|1DA401| STA.w $0DC0,X

|1DA404| RTS

;---------------------------------------------------------------------------------------------------

.not_ready
|1DA405| LDA.b #$0E
|1DA407| STA.w $0DC0,X

|1DA40A| RTS

;===================================================================================================

pool Blind_Rerobe

.draw
|1DA40B| db $0A, $0B, $0C, $0D, $0E

endpool

;---------------------------------------------------------------------------------------------------

Blind_Rerobe:
|1DA410| LDA.w $0E10,X
|1DA413| BNE .delay_ai

|1DA415| LDA.b #$02
|1DA417| STA.w $0DB0,X

|1DA41A| LDA.b #$80
|1DA41C| STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

|1DA41F| LDA.w $0D00,X
|1DA422| ASL A
|1DA423| ROL A
|1DA424| AND.b #$01

|1DA426| INC A
|1DA427| INC A
|1DA428| STA.w $0DE0,X

|1DA42B| LDA.w $0D10,X
|1DA42E| ASL A
|1DA42F| ROL A
|1DA430| STA.w $0ED0,X

|1DA433| JSR ZeroVelocityXY_bank1D

|1DA436| STZ.w $0BA0,X

|1DA439| RTS

;---------------------------------------------------------------------------------------------------

.delay_ai
|1DA43A| LSR A
|1DA43B| LSR A
|1DA43C| LSR A
|1DA43D| TAY

|1DA43E| LDA.w .draw,Y
|1DA441| STA.w $0DC0,X

|1DA444| RTS

;===================================================================================================

pool Blind_SpitFireball

.speed_x
|1DA445| db -32, -28, -24, -16,   0,  16,  24,  28
|1DA44D| db  32,  28,  24,  16,   0, -16, -24, -28

.speed_y
|1DA455| db   0,  16,  24,  28,  32,  28,  24,  16
|1DA45D| db   0, -16, -24, -28, -32, -28, -24, -16

endpool

;---------------------------------------------------------------------------------------------------

Blind_FireballFlurry:
|1DA465| DEC.w $0E70,X

|1DA468| PHA

|1DA469| AND.b #$07
|1DA46B| SEC
|1DA46C| ROL A
|1DA46D| STA.w $0F50,X

|1DA470| PLA
|1DA471| BNE .useless_branch

.useless_branch
|1DA473| DEC.w $0E90,X
|1DA476| BPL .dont_turn_head

|1DA478| LDA.w $0E30,X
|1DA47B| STA.w $0E90,X

|1DA47E| LDA.w $0EB0,X
|1DA481| INC A
|1DA482| AND.b #$0F
|1DA484| STA.w $0EB0,X

.dont_turn_head
|1DA487| LDA.w $0E80,X
|1DA48A| AND.b #$1F
|1DA48C| BNE .dont_adjust_rotation_timer

|1DA48E| LDA.w $0E30,X
|1DA491| CMP.b #$05
|1DA493| BEQ .dont_adjust_rotation_timer

|1DA495| INC.w $0E30,X

.dont_adjust_rotation_timer
|1DA498| JSR Blind_AnimateRobes

|1DA49B| LDA.b #$0F

;===================================================================================================
; Enters with:
;   A - bit mask for frequency
;===================================================================================================
Blind_SpitFireball:
|1DA49D| LDY.b #$FF

|1DA49F| AND.w $0E80,X
|1DA4A2| BNE .exit

|1DA4A4| JSL ShootFireball
|1DA4A8| BMI .exit

|1DA4AA| LDA.b #$19 ; SFX3.19
|1DA4AC| JSL QueueSpriteSFX3WithPan

|1DA4B0| PHX

|1DA4B1| LDA.w $0EB0,X
|1DA4B4| TAX

|1DA4B5| LDA.w .speed_x,X
|1DA4B8| STA.w $0D50,Y

|1DA4BB| LDA.w .speed_y,X
|1DA4BE| STA.w $0D40,Y

|1DA4C1| JSR Fireball_Configure

|1DA4C4| PLX

.exit
|1DA4C5| RTS

;===================================================================================================

Blind_THELIGHT:
|1DA4C6| LDA.b #$00
|1DA4C8| STA.w $0AE8

|1DA4CB| LDA.b #$A0
|1DA4CD| STA.w $0AEA

|1DA4D0| LDA.w $0E10,X
|1DA4D3| BNE .delay

|1DA4D5| INC.w $0DB0,X

|1DA4D8| LDA.b #$60
|1DA4DA| STA.w $0E10,X

;---------------------------------------------------------------------------------------------------

.delay
|1DA4DD| CMP.b #$50
|1DA4DF| BNE .no_message

|1DA4E1| PHA

|1DA4E2| LDA.b #$21 ; MESSAGE 0121
|1DA4E4| STA.w $1CF0

|1DA4E7| LDA.b #$01
|1DA4E9| STA.w $1CF1

|1DA4EC| JSL ShowMessageMinimal

|1DA4F0| PLA

;---------------------------------------------------------------------------------------------------

.no_message
|1DA4F1| CMP.b #$18
|1DA4F3| BNE .no_poof

|1DA4F5| JSR SpawnBossPoof

.no_poof
|1DA4F8| RTS

;===================================================================================================

SpawnBossPoof:
|1DA4F9| LDA.b #$0C ; SFX2.0C
|1DA4FB| STA.w $012E

|1DA4FE| LDA.b #$CE ; SPRITE CE
|1DA500| JSL SpawnSpriteDynamically

|1DA504| LDA.b $00
|1DA506| CLC
|1DA507| ADC.b #$10
|1DA509| STA.w $0D10,Y

|1DA50C| LDA.b $01
|1DA50E| ADC.b #$00
|1DA510| STA.w $0D30,Y

|1DA513| LDA.b $02
|1DA515| CLC
|1DA516| ADC.b #$28
|1DA518| STA.w $0D00,Y

|1DA51B| LDA.b $03
|1DA51D| ADC.b #$00
|1DA51F| STA.w $0D20,Y

|1DA522| LDA.b #$0F
|1DA524| STA.w $0DC0,Y

|1DA527| LDA.b #$01
|1DA529| STA.w $0D90,Y

|1DA52C| LDA.b #$2F
|1DA52E| STA.w $0DF0,Y

|1DA531| LDA.b #$09
|1DA533| STA.w $0E40,Y
|1DA536| STA.w $0BA0,Y

|1DA539| RTS

;===================================================================================================

Blind_EscapeLight:
|1DA53A| JSR Blind_CheckBumpDamage

|1DA53D| LDA.b #$09
|1DA53F| STA.w $0DC0,X

|1DA542| LDA.w $0E10,X
|1DA545| BNE .still_escaping

|1DA547| INC.w $0DB0,X

|1DA54A| LDA.b #$FF
|1DA54C| STA.w $0DF0,X

|1DA54F| STZ.w $0BA0,X

.still_escaping
|1DA552| CMP.b #$40
|1DA554| BCS .dont_move_yet

|1DA556| LDA.b #$F8
|1DA558| STA.w $0D40,X

|1DA55B| JSR MoveSpriteY_bank1D

.dont_move_yet
|1DA55E| JSR Blind_Animate

|1DA561| LDA.b #$04
|1DA563| STA.w $0EB0,X

|1DA566| RTS

;===================================================================================================

pool Blind_Shimmy

.speed_limit_y
|1DA567| db  18, -18

.speed_limit_x
|1DA569| db  24, -24

.pos_limit_x
|1DA56B| db $A4, $4C

endpool

;---------------------------------------------------------------------------------------------------

Blind_Shimmy:
|1DA56D| JSR Blind_CheckBumpDamage
|1DA570| JSR Blind_Animate

|1DA573| LDA.w $0E80,X
|1DA576| AND.b #$7F
|1DA578| BNE .ignore_link_pos

|1DA57A| JSR GetYDisplacementFromLink_bank1D

|1DA57D| INY
|1DA57E| INY
|1DA57F| TYA

|1DA580| CMP.w $0DE0,X
|1DA583| BNE .link_behind

.ignore_link_pos
|1DA585| LDA.w $0DF0,X
|1DA588| BNE .delay_ai

.link_behind
|1DA58A| LDA.w $0D10,X
|1DA58D| CMP.b #$78
|1DA58F| BCS .delay_ai

|1DA591| INC.w $0DB0,X

|1DA594| LDA.w $0D40,X
|1DA597| AND.b #$FE
|1DA599| STA.w $0D40,X

|1DA59C| LDA.w $0D50,X
|1DA59F| AND.b #$FE
|1DA5A1| STA.w $0D50,X

|1DA5A4| LDA.b #$30
|1DA5A6| STA.w $0E10,X

|1DA5A9| RTS

;---------------------------------------------------------------------------------------------------

.delay_ai
|1DA5AA| LDA.w $0DA0,X
|1DA5AD| AND.b #$01
|1DA5AF| TAY

|1DA5B0| LDA.w $0D40,X
|1DA5B3| CLC
|1DA5B4| ADC.w Shakeyshake.low,Y
|1DA5B7| STA.w $0D40,X

|1DA5BA| CMP.w .speed_limit_y,Y
|1DA5BD| BNE .dont_invert_y

|1DA5BF| INC.w $0DA0,X

.dont_invert_y
|1DA5C2| LDA.w $0ED0,X
|1DA5C5| AND.b #$01
|1DA5C7| TAY

|1DA5C8| LDA.w $0D50,X
|1DA5CB| CMP.w .speed_limit_x,Y
|1DA5CE| BEQ .at_max_x_speed

|1DA5D0| CLC
|1DA5D1| ADC.w Shakeyshake.low,Y
|1DA5D4| STA.w $0D50,X

.at_max_x_speed
|1DA5D7| LDA.w $0D10,X
|1DA5DA| AND.b #$FE
|1DA5DC| CMP.w .pos_limit_x,Y
|1DA5DF| BNE .dont_invert_x

|1DA5E1| INC.w $0ED0,X

.dont_invert_x
|1DA5E4| JSR MoveSpriteXY_bank1D

|1DA5E7| LDA.w $0E70,X
|1DA5EA| BEQ .do_not_flurry

|1DA5EC| JMP.w Blind_FireballFlurry

;---------------------------------------------------------------------------------------------------

.do_not_flurry
|1DA5EF| LDA.w $0E80,X
|1DA5F2| AND.b #$07
|1DA5F4| BNE .exit

|1DA5F6| LDA.w $0EB0,X
|1DA5F9| ASL A
|1DA5FA| ASL A
|1DA5FB| STA.b $0F

|1DA5FD| JSL FireProbe_long

.exit
|1DA601| RTS

;===================================================================================================

pool Blind_SwapSides

.accel_y
|1DA602| db   2,  -2

.speed_limit_y
|1DA604| db  64, -64

.pos_limit_y
|1DA606| db $90, $50

endpool

;---------------------------------------------------------------------------------------------------

Blind_SwapSides:
|1DA608| JSR Blind_CheckBumpDamage

|1DA60B| LDA.w $0E10,X
|1DA60E| BEQ .done_decel

|1DA610| JSR Blind_Decelerate_X
|1DA613| JSR MoveSpriteX_bank1D

|1DA616| JMP.w Blind_Decelerate_Y

;---------------------------------------------------------------------------------------------------

.done_decel
|1DA619| LDA.w $0DE0,X
|1DA61C| DEC A
|1DA61D| DEC A
|1DA61E| TAY

|1DA61F| LDA.w $0D40,X
|1DA622| CMP.w .speed_limit_y,Y
|1DA625| BEQ .at_max_y_speed

|1DA627| CLC
|1DA628| ADC.w .accel_y,Y
|1DA62B| STA.w $0D40,X

.at_max_y_speed
|1DA62E| LDA.w $0D00,X
|1DA631| AND.b #$FC
|1DA633| CMP.w .pos_limit_y,Y
|1DA636| BNE .dont_spin

|1DA638| INC.w $0DB0,X

|1DA63B| LDA.w $0DE0,X
|1DA63E| SEC
|1DA63F| SBC.b #$01
|1DA641| STA.w $0DA0,X

.dont_spin
|1DA644| JSR MoveSpriteXY_bank1D

;===================================================================================================

Blind_Decelerate_X:
|1DA647| LDA.w $0D50,X
|1DA64A| BEQ .stopped
|1DA64C| BPL .positive

|1DA64E| CLC
|1DA64F| ADC.b #$04

.positive
|1DA651| SEC
|1DA652| SBC.b #$02
|1DA654| STA.w $0D50,X

.stopped
|1DA657| JSR Blind_AnimateRobes

|1DA65A| LDA.w $0E70,X
|1DA65D| BEQ .exit

|1DA65F| JMP.w Blind_FireballFlurry

.exit
|1DA662| RTS

;===================================================================================================

pool Blind_Spin

.anim_direction
|1DA663| db  -1,   1

.anim_limit
|1DA665| db $00, $09

endpool

;---------------------------------------------------------------------------------------------------

Blind_Spin:
|1DA667| JSR Blind_CheckBumpDamage

|1DA66A| LDA.w $0E80,X
|1DA66D| AND.b #$07
|1DA66F| BNE Blind_Decelerate_Y

;---------------------------------------------------------------------------------------------------

|1DA671| LDA.w $0DE0,X
|1DA674| DEC A
|1DA675| DEC A
|1DA676| TAY

|1DA677| LDA.w $0DC0,X
|1DA67A| CMP.w .anim_limit,Y
|1DA67D| BNE .still_moving

|1DA67F| LDA.b #$FE
|1DA681| STA.w $0DF0,X

|1DA684| LDA.b #$02
|1DA686| STA.w $0DB0,X

|1DA689| LDA.w $0DE0,X
|1DA68C| EOR.b #$01
|1DA68E| STA.w $0DE0,X

|1DA691| LDA.w $0D10,X
|1DA694| ASL A
|1DA695| ROL A
|1DA696| AND.b #$01
|1DA698| STA.w $0ED0,X

|1DA69B| BRA Blind_Decelerate_Y

.still_moving
|1DA69D| CLC
|1DA69E| ADC.w .anim_direction,Y
|1DA6A1| STA.w $0DC0,X

;===================================================================================================

Blind_Decelerate_Y:
|1DA6A4| LDA.w $0D40,X
|1DA6A7| BEQ .stopped
|1DA6A9| BPL .positive

|1DA6AB| CLC
|1DA6AC| ADC.b #$08

.positive
|1DA6AE| SEC
|1DA6AF| SBC.b #$04
|1DA6B1| STA.w $0D40,X

.stopped
|1DA6B4| JSR MoveSpriteY_bank1D

|1DA6B7| LDA.w $0E70,X
|1DA6BA| BEQ .exit

|1DA6BC| JMP.w Blind_FireballFlurry

.exit
|1DA6BF| RTS

;===================================================================================================

Blind_CheckBumpDamage:
|1DA6C0| LDA.w $0F10,X
|1DA6C3| ORA.w $0EA0,X
|1DA6C6| BNE .invulnerable

|1DA6C8| JSR CheckDamageToAndFromLink_bank1D

.invulnerable
|1DA6CB| JSR Blind_BumpDamageFromBody

|1DA6CE| RTS

;===================================================================================================
; TODO analyze and verify
;===================================================================================================
pool Blind_Animate

.robe
|1DA6CF| db $07, $08, $09, $08, $00, $01, $02, $01

.head_dir
; facing_down
|1DA6D7| db $00, $01, $02, $03, $04, $03, $02, $01

; facing_up
|1DA6DF| db $00, $0F, $0E, $0D, $0C, $0D, $0E, $0F

.step
|1DA6E7| db $00, $01, $01, $02, $02, $03, $03, $04

endpool

;---------------------------------------------------------------------------------------------------

Blind_Animate:
|1DA6EF| LDA.w $0E70,X
|1DA6F2| BNE Blind_AnimateRobes

|1DA6F4| LDA.b $22
|1DA6F6| LSR A ; /32
|1DA6F7| LSR A
|1DA6F8| LSR A
|1DA6F9| LSR A
|1DA6FA| LSR A
|1DA6FB| TAY

|1DA6FC| LDA.w .step,Y

|1DA6FF| LDY.w $0DE0,X
|1DA702| CPY.b #$03
|1DA704| BNE .facing_down

|1DA706| EOR.b #$FF
|1DA708| INC A

.facing_down
|1DA709| STA.b $01

|1DA70B| TYA

|1DA70C| DEC A
|1DA70D| DEC A

|1DA70E| ASL A
|1DA70F| ASL A
|1DA710| ASL A

|1DA711| STA.b $00

;---------------------------------------------------------------------------------------------------

|1DA713| LDA.w $0B69

|1DA716| LSR A
|1DA717| LSR A
|1DA718| LSR A

|1DA719| AND.b #$07
|1DA71B| ADC.b $00
|1DA71D| TAY

|1DA71E| LDA.w .head_dir,Y
|1DA721| CLC
|1DA722| ADC.b $01
|1DA724| AND.b #$0F
|1DA726| STA.w $0EB0,X

;===================================================================================================

#Blind_AnimateRobes:
|1DA729| LDA.w $0DE0,X
|1DA72C| DEC A
|1DA72D| DEC A
|1DA72E| ASL A
|1DA72F| ASL A
|1DA730| STA.b $00

|1DA732| LDA.w $0E80,X
|1DA735| LSR A
|1DA736| LSR A
|1DA737| LSR A
|1DA738| AND.b #$03
|1DA73A| CLC
|1DA73B| ADC.b $00
|1DA73D| TAY

|1DA73E| LDA.w .robe,Y
|1DA741| STA.w $0DC0,X

|1DA744| RTS

;===================================================================================================

pool Blind_SpawnLaser

.speed_x
|1DA745| db -8, -8, -8, -4,  0,  4,  8,  8
|1DA74D| db  8,  8,  8,  4,  0, -4, -8, -8

.speed_y
|1DA755| db  0,  0,  4,  8,  8,  8,  4,  0
|1DA75D| db  0,  0, -4, -8, -8, -8, -4,  0

endpool

;---------------------------------------------------------------------------------------------------

Blind_SpawnLaser:
|1DA765| LDA.b #$CE ; SPRITE CE
|1DA767| JSL SpawnSpriteDynamically
|1DA76B| BMI .exit

|1DA76D| JSL CalculateSpriteSFXPan
|1DA771| ORA.b #$26 ; SFX3.26
|1DA773| STA.w $012F

|1DA776| JSL SetSpawnedSpriteCoordinates

|1DA77A| LDA.b $00
|1DA77C| CLC
|1DA77D| ADC.b #$04
|1DA77F| STA.w $0D10,Y

|1DA782| LDA.w $0EB0,X
|1DA785| STA.w $0EB0,Y

|1DA788| PHX

|1DA789| TAX

|1DA78A| LDA.w .speed_x,X
|1DA78D| STA.w $0D50,Y

|1DA790| LDA.w .speed_y,X
|1DA793| STA.w $0D40,Y

|1DA796| PLX

|1DA797| LDA.b #$80
|1DA799| STA.w $0D90,Y
|1DA79C| STA.w $0BA0,Y

|1DA79F| LDA.b #$40
|1DA7A1| STA.w $0E40,Y

|1DA7A4| LDA.b #$14
|1DA7A6| STA.w $0F60,Y

;---------------------------------------------------------------------------------------------------

.exit
|1DA7A9| RTS

;===================================================================================================

pool SpriteDraw_Blind

.oam_groups
; group00
|1DA7AA| dw  -8,   7 : db $8E, $0C, $00, $02
|1DA7B2| dw   8,   7 : db $8E, $4C, $00, $02
|1DA7BA| dw  -8,  23 : db $A0, $0C, $00, $02
|1DA7C2| dw   8,  23 : db $A4, $4C, $00, $02
|1DA7CA| dw   0,   0 : db $8C, $0A, $00, $02
|1DA7D2| dw -19,   3 : db $A6, $0A, $00, $02
|1DA7DA| dw  19,   3 : db $A6, $4A, $00, $02

; group01
|1DA7E2| dw  -8,   7 : db $8E, $0C, $00, $02
|1DA7EA| dw   8,   7 : db $8E, $4C, $00, $02
|1DA7F2| dw  -8,  23 : db $A2, $0C, $00, $02
|1DA7FA| dw   8,  23 : db $A0, $4C, $00, $02
|1DA802| dw   0,   0 : db $8C, $0A, $00, $02
|1DA80A| dw -19,   3 : db $A8, $0A, $00, $02
|1DA812| dw  19,   3 : db $A8, $4A, $00, $02

; group02
|1DA81A| dw  -8,   7 : db $8E, $0C, $00, $02
|1DA822| dw   8,   7 : db $8E, $4C, $00, $02
|1DA82A| dw  -8,  23 : db $A4, $0C, $00, $02
|1DA832| dw   8,  23 : db $A2, $4C, $00, $02
|1DA83A| dw   0,   0 : db $8C, $0A, $00, $02
|1DA842| dw -19,   3 : db $AA, $0A, $00, $02
|1DA84A| dw  19,   3 : db $AA, $4A, $00, $02

; group03
|1DA852| dw -15,   5 : db $A6, $0A, $00, $02
|1DA85A| dw  -6,   7 : db $8E, $0C, $00, $02
|1DA862| dw   6,   7 : db $8E, $4C, $00, $02
|1DA86A| dw  -6,  23 : db $A4, $0C, $00, $02
|1DA872| dw   6,  23 : db $A0, $4C, $00, $02
|1DA87A| dw   0,   0 : db $8A, $0A, $00, $02
|1DA882| dw  16,  -1 : db $A6, $4A, $00, $02

; group04
|1DA88A| dw -11,   9 : db $A6, $0A, $00, $02
|1DA892| dw  -4,   7 : db $8E, $0C, $00, $02
|1DA89A| dw   5,   7 : db $8E, $4C, $00, $02
|1DA8A2| dw  -4,  23 : db $A4, $0C, $00, $02
|1DA8AA| dw   5,  23 : db $A0, $4C, $00, $02
|1DA8B2| dw   0,   0 : db $88, $0A, $00, $02
|1DA8BA| dw  10,  -2 : db $A6, $4A, $00, $02

; group05
|1DA8C2| dw   0,   0 : db $84, $0A, $00, $02
|1DA8CA| dw  13,   8 : db $A6, $4A, $00, $02
|1DA8D2| dw -10,  -2 : db $A6, $0A, $00, $02
|1DA8DA| dw  -5,   7 : db $8E, $0C, $00, $02
|1DA8E2| dw   5,   7 : db $8E, $4C, $00, $02
|1DA8EA| dw  -5,  23 : db $A0, $0C, $00, $02
|1DA8F2| dw   5,  23 : db $A4, $4C, $00, $02

; group06
|1DA8FA| dw   0,   0 : db $82, $0A, $00, $02
|1DA902| dw  18,   4 : db $A6, $4A, $00, $02
|1DA90A| dw -15,  -1 : db $A6, $0A, $00, $02
|1DA912| dw  -6,   7 : db $8E, $0C, $00, $02
|1DA91A| dw   6,   7 : db $8E, $4C, $00, $02
|1DA922| dw  -6,  23 : db $A0, $0C, $00, $02
|1DA92A| dw   6,  23 : db $A4, $4C, $00, $02

; group07
|1DA932| dw   0,   0 : db $80, $0A, $00, $02
|1DA93A| dw -19,   3 : db $A6, $0A, $00, $02
|1DA942| dw  19,   3 : db $A6, $4A, $00, $02
|1DA94A| dw  -8,   7 : db $8E, $0C, $00, $02
|1DA952| dw   8,   7 : db $8E, $4C, $00, $02
|1DA95A| dw  -8,  23 : db $A0, $0C, $00, $02
|1DA962| dw   8,  23 : db $A4, $4C, $00, $02

; group08
|1DA96A| dw   0,   0 : db $80, $0A, $00, $02
|1DA972| dw -19,   3 : db $A8, $0A, $00, $02
|1DA97A| dw  19,   3 : db $A8, $4A, $00, $02
|1DA982| dw  -8,   7 : db $8E, $0C, $00, $02
|1DA98A| dw   8,   7 : db $8E, $4C, $00, $02
|1DA992| dw  -8,  23 : db $A2, $0C, $00, $02
|1DA99A| dw   8,  23 : db $A0, $4C, $00, $02

; group09
|1DA9A2| dw   0,   0 : db $80, $0A, $00, $02
|1DA9AA| dw -19,   3 : db $AA, $0A, $00, $02
|1DA9B2| dw  19,   3 : db $AA, $4A, $00, $02
|1DA9BA| dw  -8,   7 : db $8E, $0C, $00, $02
|1DA9C2| dw   8,   7 : db $8E, $4C, $00, $02
|1DA9CA| dw  -8,  23 : db $A0, $0C, $00, $02
|1DA9D2| dw   8,  23 : db $A4, $4C, $00, $02

; group0A
|1DA9DA| dw  -8,   9 : db $8E, $0C, $00, $02
|1DA9E2| dw   8,   9 : db $8E, $4C, $00, $02
|1DA9EA| dw  -8,  23 : db $AE, $0C, $00, $02
|1DA9F2| dw   8,  23 : db $AE, $4C, $00, $02
|1DA9FA| dw   8,  23 : db $AE, $4C, $00, $02
|1DAA02| dw   8,  23 : db $AE, $4C, $00, $02
|1DAA0A| dw   0,   2 : db $8C, $0A, $00, $02

; group0B
|1DAA12| dw  -8,  16 : db $8E, $0C, $00, $02
|1DAA1A| dw   8,  16 : db $8E, $4C, $00, $02
|1DAA22| dw  -8,  23 : db $AE, $0C, $00, $02
|1DAA2A| dw   8,  23 : db $AE, $4C, $00, $02
|1DAA32| dw   8,  23 : db $AE, $4C, $00, $02
|1DAA3A| dw   8,  23 : db $AE, $4C, $00, $02
|1DAA42| dw   0,   9 : db $8C, $0A, $00, $02

; group0C
|1DAA4A| dw  -8,  23 : db $AE, $0C, $00, $02
|1DAA52| dw   8,  23 : db $AE, $4C, $00, $02
|1DAA5A| dw   8,  23 : db $AE, $4C, $00, $02
|1DAA62| dw   8,  23 : db $AE, $4C, $00, $02
|1DAA6A| dw   8,  23 : db $AE, $4C, $00, $02
|1DAA72| dw   8,  23 : db $AE, $4C, $00, $02
|1DAA7A| dw   0,  16 : db $8C, $0A, $00, $02

; group0D
|1DAA82| dw  -8,  23 : db $AC, $0C, $00, $02
|1DAA8A| dw   8,  23 : db $AC, $4C, $00, $02
|1DAA92| dw   8,  23 : db $AC, $4C, $00, $02
|1DAA9A| dw   8,  23 : db $AC, $4C, $00, $02
|1DAAA2| dw   8,  23 : db $AC, $4C, $00, $02
|1DAAAA| dw   8,  23 : db $AC, $4C, $00, $02
|1DAAB2| dw   0,  20 : db $8C, $0A, $00, $02

; group0E
|1DAABA| dw  -8,  23 : db $AC, $0C, $00, $02
|1DAAC2| dw   8,  23 : db $AC, $4C, $00, $02
|1DAACA| dw   8,  23 : db $AC, $4C, $00, $02
|1DAAD2| dw   8,  23 : db $AC, $4C, $00, $02
|1DAADA| dw   8,  23 : db $AC, $4C, $00, $02
|1DAAE2| dw   8,  23 : db $AC, $4C, $00, $02
|1DAAEA| dw   0,  23 : db $8C, $0A, $00, $02

endpool

;===================================================================================================

pool SpriteDraw_BlindPoof

.oam_groups

.group00
|1DAAF2| dw -16, -20 : db $86, $05, $00, $02

.group01
|1DAAFA| dw -11, -28 : db $86, $05, $00, $02
|1DAB02| dw -23, -26 : db $86, $05, $00, $02
|1DAB0A| dw  -8, -17 : db $86, $05, $00, $02
|1DAB12| dw -20, -13 : db $86, $05, $00, $02

.group02
|1DAB1A| dw -16, -37 : db $86, $05, $00, $02
|1DAB22| dw -27, -31 : db $86, $05, $00, $02
|1DAB2A| dw -10, -28 : db $86, $05, $00, $02
|1DAB32| dw  -5, -28 : db $86, $05, $00, $02
|1DAB3A| dw -20, -27 : db $86, $05, $00, $02
|1DAB42| dw -27, -17 : db $86, $05, $00, $02
|1DAB4A| dw  -4, -17 : db $86, $05, $00, $02
|1DAB52| dw -16, -13 : db $86, $05, $00, $02

.group03
|1DAB5A| dw -18, -37 : db $8A, $45, $00, $02
|1DAB62| dw  -5, -33 : db $8A, $45, $00, $02
|1DAB6A| dw -32, -32 : db $8A, $05, $00, $02
|1DAB72| dw -23, -31 : db $8A, $45, $00, $02
|1DAB7A| dw -15, -24 : db $8A, $45, $00, $02
|1DAB82| dw -23, -31 : db $8A, $45, $00, $02
|1DAB8A| dw -15, -24 : db $8A, $45, $00, $02
|1DAB92| dw -29, -22 : db $8A, $05, $00, $02
|1DAB9A| dw  -5, -22 : db $8A, $05, $00, $02
|1DABA2| dw -16, -14 : db $8A, $05, $00, $02

.group04
|1DABAA| dw -12, -32 : db $8A, $45, $00, $02
|1DABB2| dw -26, -29 : db $8A, $45, $00, $02
|1DABBA| dw  -6, -22 : db $8A, $45, $00, $02
|1DABC2| dw -19, -20 : db $8A, $05, $00, $02
|1DABCA| dw -26, -29 : db $8A, $45, $00, $02
|1DABD2| dw  -6, -22 : db $8A, $45, $00, $02
|1DABDA| dw -19, -20 : db $8A, $05, $00, $02

.group05
|1DABE2| dw -17, -27 : db $9B, $05, $00, $00
|1DABEA| dw -10, -26 : db $9B, $05, $00, $00
|1DABF2| dw   0, -22 : db $9B, $45, $00, $00
|1DABFA| dw -19, -16 : db $9B, $45, $00, $00
|1DAC02| dw  -6, -12 : db $9B, $05, $00, $00

.group06
|1DAC0A| dw   0,  13 : db $20, $0B, $00, $02
|1DAC12| dw   0,  23 : db $22, $0B, $00, $02

;---------------------------------------------------------------------------------------------------

.oam_group_pointer
|1DAC1A| dw .group00
|1DAC1C| dw .group01
|1DAC1E| dw .group02
|1DAC20| dw .group03
|1DAC22| dw .group04
|1DAC24| dw .group05
|1DAC26| dw .group06

;---------------------------------------------------------------------------------------------------

.oam_group_size
|1DAC28| db  1 ; group00
|1DAC29| db  4 ; group01
|1DAC2A| db  8 ; group02
|1DAC2B| db 10 ; group03
|1DAC2C| db  7 ; group04
|1DAC2D| db  5 ; group05
|1DAC2E| db  2 ; group06

endpool

;===================================================================================================

; Always enters with A>=$0F
SpriteDraw_BlindPoof:
|1DAC2F| PHA

|1DAC30| ASL
|1DAC31| TAY

|1DAC32| REP #$20

|1DAC34| LDA.w .oam_group_pointer-$1E,Y
|1DAC37| STA.b $08

|1DAC39| SEP #$20

|1DAC3B| PLY

|1DAC3C| LDA.w .oam_group_size-$0F,Y
|1DAC3F| JMP.w TabulatedSpriteDraw_bank1D

;===================================================================================================

pool SpriteDraw_Blind

.head_oam_offset
|1DAC42| db $12, $12, $12, $16, $16, $02, $02, $02
|1DAC4A| db $02, $02

.head_char
|1DAC4C| db $86, $86, $84, $82, $80, $82, $84, $86
|1DAC54| db $86, $86, $88, $8A, $8C, $8A, $88, $86

.head_flip
|1DAC5C| db $00, $00, $00, $00, $00, $40, $40, $40
|1DAC64| db $40, $40, $40, $40, $00, $00, $00, $00

endpool

;===================================================================================================

SpriteDraw_Blind:
|1DAC6C| LDA.b #$00
|1DAC6E| XBA

|1DAC6F| LDA.w $0DC0,X
|1DAC72| CMP.b #$0F
|1DAC74| BCS SpriteDraw_BlindPoof

;---------------------------------------------------------------------------------------------------

|1DAC76| REP #$20

|1DAC78| ASL A ; x8
|1DAC79| ASL A
|1DAC7A| ASL A
|1DAC7B| STA.b $00

|1DAC7D| ASL A ; x64
|1DAC7E| ASL A
|1DAC7F| ASL A
|1DAC80| SEC
|1DAC81| SBC.b $00 ; -8

|1DAC83| CLC ; so x56 overall
|1DAC84| ADC.w #.oam_groups
|1DAC87| STA.b $08

|1DAC89| SEP #$20

|1DAC8B| LDA.b #$07
|1DAC8D| JSR TabulatedSpriteDraw_bank1D

;---------------------------------------------------------------------------------------------------

|1DAC90| LDA.w $0E70,X
|1DAC93| BNE .no_tile_collision

|1DAC95| LDA.w $0DB0,X
|1DAC98| CMP.b #$06
|1DAC9A| BEQ .last_object

|1DAC9C| CMP.b #$04
|1DAC9E| BEQ .exit

.no_tile_collision
|1DACA0| LDY.w $0DC0,X
|1DACA3| CPY.b #$0A
|1DACA5| BCS .exit

|1DACA7| LDA.w .head_oam_offset,Y
|1DACAA| TAY

;---------------------------------------------------------------------------------------------------

|1DACAB| PHX

|1DACAC| LDA.w $0EB0,X
|1DACAF| TAX

|1DACB0| LDA.w .head_char,X
|1DACB3| STA.b ($90),Y

|1DACB5| INY

|1DACB6| LDA.b ($90),Y
|1DACB8| AND.b #$3F
|1DACBA| ORA.w .head_flip,X
|1DACBD| STA.b ($90),Y

|1DACBF| PLX

;---------------------------------------------------------------------------------------------------

.exit
|1DACC0| RTS

;---------------------------------------------------------------------------------------------------

.last_object
|1DACC1| LDY.b #$19
|1DACC3| LDA.b #$F0
|1DACC5| STA.b ($90),Y

|1DACC7| RTS

;===================================================================================================
; [HARDCODED] hitbox routine
;===================================================================================================
Blind_BumpDamageFromBody:
|1DACC8| REP #$20

|1DACCA| LDA.b $22
|1DACCC| SEC
|1DACCD| SBC.w $0FD8
|1DACD0| CLC
|1DACD1| ADC.w #$000E
|1DACD4| CMP.w #$001C
|1DACD7| BCS .no_collision

|1DACD9| LDA.b $20
|1DACDB| SEC
|1DACDC| SBC.w $0FDA
|1DACDF| CLC
|1DACE0| ADC.w #$0000
|1DACE3| CMP.w #$001C
|1DACE6| BCS .no_collision

|1DACE8| SEP #$20

|1DACEA| LDA.w $031F
|1DACED| ORA.w $037B
|1DACF0| BNE .no_collision

|1DACF2| LDA.b #$01
|1DACF4| STA.b $4D

|1DACF6| LDA.b #$08
|1DACF8| STA.w $0373

|1DACFB| LDA.b #$10
|1DACFD| STA.b $46

|1DACFF| LDA.b $28
|1DAD01| EOR.b #$FF
|1DAD03| STA.b $28

|1DAD05| LDA.b $27
|1DAD07| EOR.b #$FF
|1DAD09| STA.b $27

.no_collision
|1DAD0B| SEP #$20

|1DAD0D| RTS

;===================================================================================================

Trinexx_Initialize:
|1DAD0E| PHB
|1DAD0F| PHK
|1DAD10| PLB

|1DAD11| JSR .main

|1DAD14| PLB

|1DAD15| RTL

;---------------------------------------------------------------------------------------------------

.main
|1DAD16| LDA.w $0E20,X
|1DAD19| SEC
|1DAD1A| SBC.b #$CB
|1DAD1C| JSL JumpTableLocal
|1DAD20| dw Trinexx_Initialize_Rock
|1DAD22| dw Trinexx_Initialize_Fire
|1DAD24| dw Trinexx_Initialize_Ice

;===================================================================================================

Trinexx_Initialize_Rock:
|1DAD26| LDA.w $0D10,X
|1DAD29| CLC
|1DAD2A| ADC.b #$08
|1DAD2C| STA.w $0D10,X

|1DAD2F| LDA.w $0D00,X
|1DAD32| CLC
|1DAD33| ADC.b #$10
|1DAD35| STA.w $0D00,X

|1DAD38| JSR Trinexx_CachePosition

|1DAD3B| STZ.w $0B0A
|1DAD3E| STZ.w $0B0B
|1DAD41| STZ.w $0B0D
|1DAD44| STZ.w $0B0F
|1DAD47| STZ.w $0B10

|1DAD4A| LDA.b #$FF
|1DAD4C| STA.w $0B0E

;===================================================================================================
; Also moves down 12 pixels
;===================================================================================================
Trinexx_RecoverCachedCoords:
|1DAD4F| LDA.w $0D90,X
|1DAD52| STA.w $0D10,X

|1DAD55| LDA.w $0DB0,X
|1DAD58| CLC
|1DAD59| ADC.b #$0C
|1DAD5B| STA.w $0D00,X

|1DAD5E| LDA.w $0ED0,X
|1DAD61| ADC.b #$00
|1DAD63| STA.w $0D20,X

|1DAD66| RTS

;===================================================================================================

Trinexx_Initialize_Fire:
|1DAD67| LDA.b #$03
|1DAD69| STA.w $0DC0,X

|1DAD6C| LDA.b #$80
|1DAD6E| BRA Trinexx_InitializeHead

;===================================================================================================

Trinexx_Initialize_Ice:
|1DAD70| LDA.b #$FF

;===================================================================================================

; Both heads initialize the same, except their timer and $0DC0,X
Trinexx_InitializeHead:
|1DAD72| STA.w $0DF0,X

|1DAD75| LDY.b #$1A

.next_segment
|1DAD77| LDA.b #$40
|1DAD79| STA.w $1D10,Y

|1DAD7C| LDA.b #$00
|1DAD7E| STA.w $1D30,Y
|1DAD81| STA.w $1D50,Y

|1DAD84| DEY
|1DAD85| BPL .next_segment

|1DAD87| LDA.b #$01
|1DAD89| STA.w $0E80,X

;===================================================================================================

Trinexx_CachePosition:
|1DAD8C| LDA.w $0D10,X
|1DAD8F| STA.w $0D90,X

|1DAD92| LDA.w $0D30,X
|1DAD95| STA.w $0DA0,X

|1DAD98| LDA.w $0D00,X
|1DAD9B| STA.w $0DB0,X

|1DAD9E| LDA.w $0D20,X
|1DADA1| STA.w $0ED0,X

|1DADA4| RTS

;===================================================================================================

pool Trinexx_FinalPhase

.draw_angle
|1DADA5| db $06, $07, $00, $01, $02, $03, $04, $05

.draw_straight
|1DADAD| db $07, $07, $01, $01, $03, $03, $05, $05

endpool

;---------------------------------------------------------------------------------------------------

Trinexx_FinalPhase:
|1DADB5| LDA.w $0D40,X
|1DADB8| STA.b $00

|1DADBA| LDA.w $0D50,X
|1DADBD| STA.b $01

|1DADBF| JSL ConvertVelocityToAngle
|1DADC3| LSR A
|1DADC4| TAY

|1DADC5| LDA.w .draw_angle,Y
|1DADC8| STA.w $0DC0,X

|1DADCB| LDY.w $0E00,X
|1DADCE| BEQ .done_initial_snekking

|1DADD0| TAY

|1DADD1| LDA.w .draw_straight,Y
|1DADD4| STA.w $0DC0,X

;---------------------------------------------------------------------------------------------------

.done_initial_snekking
|1DADD7| JSR SpriteDraw_TrinexxRockSnake
|1DADDA| JSR CheckIfActive_bank1D

|1DADDD| LDA.w $0D80,X
|1DADE0| BPL .not_dead

|1DADE2| LDA.w $0DF0,X
|1DADE5| PHA

|1DADE6| ORA.b #$E0
|1DADE8| STA.w $0EF0,X

|1DADEB| PLA
|1DADEC| BNE .exit

|1DADEE| LDA.b #$0C
|1DADF0| STA.w $0DF0,X

|1DADF3| LDA.w $0EC0,X
|1DADF6| BNE .still_exploding

|1DADF8| LDA.b #$FF
|1DADFA| STA.w $0EF0,X

|1DADFD| JMP.w PrepareToDieLikeABoss

;---------------------------------------------------------------------------------------------------

.still_exploding
|1DAE00| DEC.w $0EC0,X

|1DAE03| JSL MakeBossExplosion

.exit
|1DAE07| RTS

;---------------------------------------------------------------------------------------------------

.not_dead
|1DAE08| LDA.b $1A
|1DAE0A| AND.b #$07
|1DAE0C| BNE .no_sfx

|1DAE0E| LDA.b #$31 ; SFX3.31
|1DAE10| JSL QueueSpriteSFX3WithPan

.no_sfx
|1DAE14| PHX
|1DAE15| TXY

|1DAE16| INC.w $0E80,X

|1DAE19| LDA.w $0E80,X
|1DAE1C| AND.b #$7F
|1DAE1E| TAX

|1DAE1F| LDA.w $0D10,Y
|1DAE22| STA.l $7FFC00,X

|1DAE26| LDA.w $0D00,Y
|1DAE29| STA.l $7FFD00,X

|1DAE2D| LDA.w $0D30,Y
|1DAE30| STA.l $7FFC80,X

|1DAE34| LDA.w $0D20,Y
|1DAE37| STA.l $7FFD80,X

|1DAE3B| PLX

;---------------------------------------------------------------------------------------------------

|1DAE3C| LDA.w $0EA0,X
|1DAE3F| CMP.b #$0E
|1DAE41| BNE .continue

; Unreachable
; Trinexx should never be set to $0D80,X=2
; Causes a message to display constantly.
; But that's just a happy accident from where it reads the vector.
|1DAE43| LDA.b #$08
|1DAE45| STA.w $0EA0,X

|1DAE48| LDA.w $0D80,X
|1DAE4B| CMP.b #$00
|1DAE4D| BNE .continue

|1DAE4F| LDA.b #$02
|1DAE51| STA.w $0D80,X

;---------------------------------------------------------------------------------------------------

.continue
|1DAE54| JSR MoveSpriteXY_bank1D
|1DAE57| JSR CheckDamageToAndFromLink_bank1D

|1DAE5A| LDA.w $0D80,X
|1DAE5D| JSL JumpTableLocal
|1DAE61| dw Trinexx_Phase2_SnekAlongWall
|1DAE63| dw Trinexx_Phase2_SnekAfterLink

;===================================================================================================

pool Trinexx_Phase2_SnekAlongWall

.speed_x
|1DAE65| db   0, -31,   0,  31

.speed_y
|1DAE69| db  31,   0, -31,   0

endpool

;---------------------------------------------------------------------------------------------------

Trinexx_Phase2_SnekAlongWall:
|1DAE6D| LDA.w $0E80,X

; this always fails
|1DAE70| AND.b #$00
|1DAE72| BNE .keep_snekking

|1DAE74| DEC.w $0D90,X
|1DAE77| BNE .keep_snekking

|1DAE79| INC.w $0D80,X

|1DAE7C| LDA.b #$C0
|1DAE7E| STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

.keep_snekking
|1DAE81| JSL Get16BitSpriteCoords_long
|1DAE85| JSR CheckSpriteTileCollision_bank1D
|1DAE88| BEQ .no_collision

|1DAE8A| LDA.w $0DE0,X
|1DAE8D| INC A
|1DAE8E| AND.b #$03
|1DAE90| STA.w $0DE0,X

|1DAE93| LDA.b #$08
|1DAE95| STA.w $0E00,X

.no_collision
|1DAE98| LDY.w $0DE0,X

|1DAE9B| LDA.w .speed_x,Y
|1DAE9E| STA.w $0D50,X

|1DAEA1| LDA.w .speed_y,Y
|1DAEA4| STA.w $0D40,X

|1DAEA7| RTS

;===================================================================================================
; UNUSED
; but cool
;===================================================================================================
Trinexx_CircleLink:
|1DAEA8| LDA.w $0DF0,X
|1DAEAB| BNE .keep_circling

|1DAEAD| INC.w $0D80,X

.keep_circling
|1DAEB0| LDA.b #$1F
|1DAEB2| JSL ProjectSpriteSpeedTowardsLink_long

|1DAEB6| LDA.b $00
|1DAEB8| STA.w $0D50,X

|1DAEBB| LDA.b $01
|1DAEBD| EOR.b #$FF
|1DAEBF| INC A
|1DAEC0| STA.w $0D40,X

|1DAEC3| LDA.b $0E
|1DAEC5| CLC
|1DAEC6| ADC.b #$28
|1DAEC8| CMP.b #$50
|1DAECA| BCS .turn

|1DAECC| LDA.b $0F
|1DAECE| CLC
|1DAECF| ADC.b #$28
|1DAED1| CMP.b #$50
|1DAED3| BCS .turn

|1DAED5| RTS

;---------------------------------------------------------------------------------------------------

.turn
|1DAED6| LDA.b $00
|1DAED8| ASL.b $00

|1DAEDA| PHP
|1DAEDB| ROR A
|1DAEDC| PLP

|1DAEDD| ROR A
|1DAEDE| CLC
|1DAEDF| ADC.w $0D40,X
|1DAEE2| STA.w $0D40,X

|1DAEE5| LDA.b $01
|1DAEE7| ASL.b $01

|1DAEE9| PHP
|1DAEEA| ROR A
|1DAEEB| PLP

|1DAEEC| ROR A
|1DAEED| CLC
|1DAEEE| ADC.w $0D50,X
|1DAEF1| STA.w $0D50,X

|1DAEF4| RTS

;===================================================================================================

Trinexx_Phase2_SnekAfterLink:
|1DAEF5| LDA.b $1A
|1DAEF7| AND.b #$01
|1DAEF9| BNE .exit

|1DAEFB| LDA.b #$1F
|1DAEFD| JSL ProjectSpriteSpeedTowardsLink_long

|1DAF01| LDA.w $0D50,X
|1DAF04| CMP.b $01
|1DAF06| BEQ .done_x
|1DAF08| BPL .decel_x

.accel_x
|1DAF0A| INC.w $0D50,X
|1DAF0D| BRA .done_x

.decel_x
|1DAF0F| DEC.w $0D50,X

;---------------------------------------------------------------------------------------------------

.done_x
|1DAF12| LDA.w $0D40,X
|1DAF15| CMP.b $00
|1DAF17| BEQ .exit
|1DAF19| BPL .decel_y

.accel_y
|1DAF1B| INC.w $0D40,X
|1DAF1E| BRA .exit

.decel_y
|1DAF20| DEC.w $0D40,X

.exit
|1DAF23| RTS

;===================================================================================================

pool SpriteDraw_TrinexxRockSnake

.offset
|1DAF24| db   $08,   $0C,   $10,   $18
|1DAF28| db   $20,   $28,   $30,   $34
|1DAF2C| db   $38,   $3C,   $40,   $44
|1DAF30| db   $48,   $4C,   $50,   $54
|1DAF34| db   $58,   $5C,   $60,   $64
|1DAF38| db   $68,   $6C,   $70,   $74

.anim_step
|1DAF3C| db   $02,   $02,   $02,   $03
|1DAF40| db   $03,   $03,   $02,   $02
|1DAF44| db   $01,   $01,   $00,   $00
|1DAF48| db   $00,   $00,   $00,   $00
|1DAF4C| db   $00,   $00,   $00,   $00
|1DAF50| db   $00,   $00,   $00,   $00

.oam_offset
|1DAF54| dw $0010, $0004, $0004, $0004
|1DAF5C| dw $0010, $0010, $0010, $0004
|1DAF64| dw $0004, $0004, $0004, $0004
|1DAF6C| dw $0004, $0004, $0004, $0004
|1DAF74| dw $0004, $0004, $0004, $0004
|1DAF7C| dw $0004, $0004, $0004, $0004

endpool

;---------------------------------------------------------------------------------------------------

; Also handles damage to Link.
SpriteDraw_TrinexxRockSnake:
|1DAF84| LDA.w $0B89,X
|1DAF87| ORA.b #$30
|1DAF89| STA.w $0B89,X

|1DAF8C| JSR SpriteDraw_TrinexxRockHead

;---------------------------------------------------------------------------------------------------

|1DAF8F| LDA.b #$00
|1DAF91| STA.w $0FB6

.next_segment
|1DAF94| LDY.w $0FB6
|1DAF97| TYA
|1DAF98| CMP.w $0EC0,X
|1DAF9B| BNE .continue

|1DAF9D| RTS

;---------------------------------------------------------------------------------------------------

.continue
|1DAF9E| PHX

; Set up coordinates of the segment
|1DAF9F| LDA.w $0E80,X
|1DAFA2| SEC
|1DAFA3| SBC.w .offset,Y
|1DAFA6| AND.b #$7F
|1DAFA8| TAX

|1DAFA9| LDA.l $7FFC00,X
|1DAFAD| STA.w $0FD8

|1DAFB0| LDA.l $7FFC80,X
|1DAFB4| STA.w $0FD9

|1DAFB7| LDA.l $7FFD00,X
|1DAFBB| STA.w $0FDA

|1DAFBE| LDA.l $7FFD80,X
|1DAFC2| STA.w $0FDB

|1DAFC5| PLX
|1DAFC6| PHY

|1DAFC7| TYA
|1DAFC8| ASL A
|1DAFC9| TAY

; Handle collision detection for the segment
|1DAFCA| REP #$20

|1DAFCC| LDA.b $22
|1DAFCE| SEC
|1DAFCF| SBC.w $0FD8
|1DAFD2| CLC
|1DAFD3| ADC.w #$0008
|1DAFD6| CMP.w #$0010
|1DAFD9| BCS .no_damage

|1DAFDB| LDA.b $20
|1DAFDD| CLC
|1DAFDE| ADC.w #$0008
|1DAFE1| SEC
|1DAFE2| SBC.w $0FDA
|1DAFE5| CLC
|1DAFE6| ADC.w #$0008
|1DAFE9| CMP.w #$0010
|1DAFEC| BCS .no_damage

|1DAFEE| SEP #$20

; UH-OH
; These are bad branches.
; A is in 8 bit, but it's supposed to be in 16-bit at .no_damage.
|1DAFF0| LDA.w $0D80,X
|1DAFF3| BMI .no_damage

|1DAFF5| LDA.w $031F
|1DAFF8| ORA.w $037B
|1DAFFB| ORA.b $11
|1DAFFD| ORA.w $0FC1
|1DB000| BNE .no_damage

|1DB002| LDA.b #$01
|1DB004| STA.b $4D

|1DB006| LDA.b #$08
|1DB008| STA.w $0373

|1DB00B| LDA.b #$10
|1DB00D| STA.b $46

|1DB00F| LDA.b $28
|1DB011| EOR.b #$FF
|1DB013| STA.b $28

|1DB015| LDA.b $27
|1DB017| EOR.b #$FF
|1DB019| STA.b $27

|1DB01B| REP #$20

.no_damage
|1DB01D| LDA.b $90
|1DB01F| CLC
|1DB020| ADC.w .oam_offset,Y
|1DB023| STA.b $90

|1DB025| LDA.w .oam_offset,Y
|1DB028| LSR A
|1DB029| LSR A
|1DB02A| CLC
|1DB02B| ADC.b $92
|1DB02D| STA.b $92

;---------------------------------------------------------------------------------------------------

|1DB02F| SEP #$20

|1DB031| PLY

|1DB032| LDA.b #$01
|1DB034| STA.w $0F50,X

|1DB037| CPY.b #$04
|1DB039| BNE .no_flashing

|1DB03B| LDA.w $0D80,X
|1DB03E| CMP.b #$01
|1DB040| BCC .no_flashing

|1DB042| PHY

|1DB043| JSR Trinexx_CheckDamageToFlashingSegment

|1DB046| LDA.w $0E80,X
|1DB049| AND.b #$06
|1DB04B| EOR.w $0F50,X
|1DB04E| STA.w $0F50,X

|1DB051| PLY

;---------------------------------------------------------------------------------------------------

.no_flashing
|1DB052| LDA.w .anim_step,Y
|1DB055| STA.w $0DC0,X

|1DB058| CMP.b #$03
|1DB05A| BEQ .draw_head

|1DB05C| JSL SpriteDraw_SingleLarge_long
|1DB060| BRA .skip_head

.draw_head
|1DB062| LDA.b #$08
|1DB064| STA.w $0DC0,X

|1DB067| JSR SpriteDraw_TrinexxRockHead

;---------------------------------------------------------------------------------------------------

.skip_head
|1DB06A| INC.w $0FB6

|1DB06D| LDA.w $0FB6
|1DB070| CMP.w $0EC0,X
|1DB073| BEQ .exit

|1DB075| JMP.w .next_segment

.exit
|1DB078| RTS

;===================================================================================================

Trinexx_CheckDamageToFlashingSegment:
|1DB079| LDA.w $0D10,X
|1DB07C| PHA

|1DB07D| LDA.w $0D30,X
|1DB080| PHA

|1DB081| LDA.w $0D00,X
|1DB084| PHA

|1DB085| LDA.w $0D20,X
|1DB088| PHA

;---------------------------------------------------------------------------------------------------

|1DB089| LDA.w $0FD8
|1DB08C| STA.w $0D10,X

|1DB08F| LDA.w $0FD9
|1DB092| STA.w $0D30,X

|1DB095| LDA.w $0FDA
|1DB098| STA.w $0D00,X

|1DB09B| LDA.w $0FDB
|1DB09E| STA.w $0D20,X

|1DB0A1| LDA.b #$80
|1DB0A3| STA.w $0CAA,X

|1DB0A6| STZ.w $0E60,X

|1DB0A9| JSL CheckDamageFromLink_long

|1DB0AD| LDA.b #$84
|1DB0AF| STA.w $0CAA,X

|1DB0B2| LDA.b #$40
|1DB0B4| STA.w $0E60,X

;---------------------------------------------------------------------------------------------------

|1DB0B7| PLA
|1DB0B8| STA.w $0D20,X

|1DB0BB| PLA
|1DB0BC| STA.w $0D00,X

|1DB0BF| PLA
|1DB0C0| STA.w $0D30,X

|1DB0C3| PLA
|1DB0C4| STA.w $0D10,X

|1DB0C7| RTS

;===================================================================================================

Trinexx_RockHeadDirections:
|1DB0C8| db $07 ; looking right
|1DB0C9| db $01 ; looking left

;===================================================================================================

Sprite_CB_TrinexxRockHead:
|1DB0CA| LDA.w $0B10
|1DB0CD| BEQ Trinexx_NotEvenMyFinalPhase

|1DB0CF| JMP.w Trinexx_FinalPhase

;===================================================================================================

Trinexx_NotEvenMyFinalPhase:
; everything visible on mainscreen only
|1DB0D2| LDA.b #$17
|1DB0D4| STA.b $1C
|1DB0D6| STZ.b $1D

|1DB0D8| JSR SpriteDraw_TrinexxRockHeadAndBody
|1DB0DB| JSR CheckIfActive_bank1D

|1DB0DE| LDA.w $0D80,X
|1DB0E1| BMI Trinexx_RetreatIntoShell

|1DB0E3| JMP.w Trinexx_RockHead_Phase1

;---------------------------------------------------------------------------------------------------

Trinexx_RetreatIntoShell:
|1DB0E6| STA.w $0FFC

|1DB0E9| LDA.w $0DF0,X
|1DB0EC| BNE .turtling

|1DB0EE| INC.w $0B10

|1DB0F1| JSL SpritePrep_Moldorm

|1DB0F5| STZ.w $0E80,X
|1DB0F8| STZ.w $0EB0,X

|1DB0FB| LDA.w $0E60,X
|1DB0FE| AND.b #$BF
|1DB100| STA.w $0E60,X

|1DB103| LDA.b #$80
|1DB105| STA.w $0CAA,X

|1DB108| STZ.w $0D80,X
|1DB10B| STZ.w $0DE0,X

|1DB10E| LDA.b #$00 ; [USELESS] set again below
|1DB110| STA.w $0D90,X

|1DB113| LDA.b #$10
|1DB115| STA.w $0EC0,X

|1DB118| JSR ZeroVelocityXY_bank1D

|1DB11B| LDA.b #$80
|1DB11D| STA.w $0D90,X

; Move the shell away
|1DB120| LDA.b #$FF
|1DB122| STA.w $0311

|1DB125| RTS

;---------------------------------------------------------------------------------------------------

.turtling
|1DB126| CMP.b #$FF
|1DB128| BCS .exit

|1DB12A| CMP.b #$E0
|1DB12C| BCC .start_exploding

|1DB12E| AND.b #$03
|1DB130| BNE .keep_shell

|1DB132| LDA.b #$FF
|1DB134| STA.w $0311

|1DB137| LDA.b #$FF
|1DB139| STA.w $0310

; removes shell scroll
|1DB13C| LDA.b #$01
|1DB13E| STA.w $0428

;---------------------------------------------------------------------------------------------------

.keep_shell
|1DB141| LDA.b #$F8
|1DB143| STA.w $0D40,X

|1DB146| JSR MoveSpriteY_bank1D
|1DB149| JSR Trinexx_CachePosition

|1DB14C| LDA.w $0D00,X
|1DB14F| SEC
|1DB150| SBC.b #$0C
|1DB152| STA.w $0DB0,X

|1DB155| INC.w $0B0F
|1DB158| INC.w $0B0F

.exit
|1DB15B| RTS

;---------------------------------------------------------------------------------------------------

.start_exploding
|1DB15C| PHA
|1DB15D| AND.b #$03
|1DB15F| BNE .no_sfx

|1DB161| LDA.b #$0C ; SFX2.0C
|1DB163| JSL QueueSpriteSFX2WithPan

.no_sfx
|1DB167| PLA
|1DB168| AND.b #$01
|1DB16A| BNE .dont_add_explosion

;---------------------------------------------------------------------------------------------------

|1DB16C| JSL GetRandomNumber
|1DB170| AND.b #$07
|1DB172| TAY

|1DB173| LDA.w $0D10,X
|1DB176| CLC
|1DB177| ADC.w .offset_x_low,Y
|1DB17A| STA.w $0FD8

|1DB17D| LDA.w $0D30,X
|1DB180| ADC.w .offset_x_high,Y
|1DB183| STA.w $0FD9

;---------------------------------------------------------------------------------------------------

|1DB186| JSL GetRandomNumber
|1DB18A| AND.b #$07
|1DB18C| TAY

|1DB18D| LDA.w $0D00,X
|1DB190| CLC
|1DB191| ADC.w .offset_y_low,Y
|1DB194| PHP

|1DB195| SEC
|1DB196| SBC.b #$08
|1DB198| STA.w $0FDA

|1DB19B| LDA.w $0D20,X
|1DB19E| SBC.b #$00

|1DB1A0| PLP
|1DB1A1| ADC.w .offset_y_high,Y
|1DB1A4| STA.w $0FDB

;---------------------------------------------------------------------------------------------------

|1DB1A7| JSL Trinexx_AddExplosion

.dont_add_explosion
|1DB1AB| LDA.b #$FF
|1DB1AD| STA.w $0EB0,X

|1DB1B0| RTS

;---------------------------------------------------------------------------------------------------

.offset_x_low
|1DB1B1| db   0,   8,  16,  24, -24, -16,  -8,   0

.offset_x_high
|1DB1B9| db   0,   0,   0,   0,  -1,  -1,  -1,   0

.offset_y_low
|1DB1C1| db   0,   8,  16,  24, -24, -16,  -8,   0

.offset_y_high
|1DB1C9| db   0,   0,   0,   0,  -1,  -1,  -1,   0

;===================================================================================================

Trinexx_RockHead_Phase1:
; [HARDCODED] slot assumption
|1DB1D1| LDA.w $0DD1
|1DB1D4| ORA.w $0DD2
|1DB1D7| BNE .side_head_alive

|1DB1D9| LDA.w $0D80,X
|1DB1DC| CMP.b #$02
|1DB1DE| BCS .side_head_alive

|1DB1E0| LDA.b #$FF
|1DB1E2| STA.w $0DF0,X

|1DB1E5| LDA.b #$FF
|1DB1E7| STA.w $0D80,X

|1DB1EA| LDA.b #$22 ; SFX3.22
|1DB1EC| STA.w $012F

|1DB1EF| RTS

;---------------------------------------------------------------------------------------------------

.side_head_alive
|1DB1F0| JSR Trinexx_WagTail
|1DB1F3| JSR Trinexx_HandleShellCollision
|1DB1F6| JSR CheckDamageToAndFromLink_bank1D

; Look towards Link every 64 frames
|1DB1F9| LDA.b $1A
|1DB1FB| AND.b #$3F
|1DB1FD| BNE .dont_track_link

|1DB1FF| JSR GetXDisplacementFromLink_bank1D

|1DB202| LDA.b $0F
|1DB204| CLC
|1DB205| ADC.b #$18
|1DB207| CMP.b #$30

|1DB209| LDA.b #$00
|1DB20B| BCC .look_down

|1DB20D| LDA.w Trinexx_RockHeadDirections,Y

.look_down
|1DB210| STA.w $0DC0,X

;---------------------------------------------------------------------------------------------------

.dont_track_link
|1DB213| LDA.w $0B0E
|1DB216| BEQ .run_ai

|1DB218| LDA.b $1A
|1DB21A| AND.b #$01
|1DB21C| BNE .dont_tick_timer

|1DB21E| DEC.w $0B0E

.dont_tick_timer
|1DB221| RTS

.run_ai
; Check if the heads are breathing
|1DB222| LDA.w $0DD1
|1DB225| BEQ .check_ice

|1DB227| LDA.w $0D81
|1DB22A| CMP.b #$03
|1DB22C| BEQ .exit

.check_ice
|1DB22E| LDA.w $0DD2
|1DB231| BEQ .handle_ai

|1DB233| LDA.w $0D82
|1DB236| CMP.b #$03
|1DB238| BEQ .exit

;---------------------------------------------------------------------------------------------------

.handle_ai
|1DB23A| LDA.w $0D80,X
|1DB23D| JSL JumpTableLocal
|1DB241| dw Trinexx_ChooseNextAction
|1DB243| dw Trinexx_MoveBody
|1DB245| dw Trinexx_PrepareLunge
|1DB247| dw Trinexx_LungeHead

.exit
|1DB249| RTS

;===================================================================================================

pool Trinexx_ChooseNextAction

.target_x
|1DB24A| db $60, $78, $78, $90

.target_y
|1DB24E| db $80, $70, $60, $80

endpool

;---------------------------------------------------------------------------------------------------

Trinexx_ChooseNextAction:
|1DB252| LDA.w $0DF0,X
|1DB255| BNE .exit

|1DB257| LDA.w $0E30,X
|1DB25A| AND.b #$7F
|1DB25C| STA.b $00

|1DB25E| JSL GetRandomNumber
|1DB262| AND.b #$03
|1DB264| TAY ; remember the location

; Do nothing if we're moving to the same location
|1DB265| CMP.b $00
|1DB267| BEQ .exit

|1DB269| INC.w $0EC0,X

|1DB26C| LDA.w $0EC0,X
|1DB26F| CMP.b #$02
|1DB271| BNE .dont_lunge

|1DB273| STZ.w $0EC0,X

|1DB276| LDA.b #$02
|1DB278| STA.w $0D80,X

|1DB27B| LDA.b #$50
|1DB27D| STA.w $0DF0,X

|1DB280| RTS

.dont_lunge
|1DB281| LDA.w .target_x,Y
|1DB284| STA.w $0B08

|1DB287| LDA.w .target_y,Y
|1DB28A| STA.w $0B09

|1DB28D| JSL GetRandomNumber
|1DB291| AND.b #$03
|1DB293| CMP.b #$01

; recover the location
|1DB295| TYA

; Bit 7 of $0E30,X determines the speed of the movement
; (0: 0x08 | 1: 0x10)
|1DB296| BCS .slow

|1DB298| ORA.b #$80

.slow
|1DB29A| STA.w $0E30,X

|1DB29D| INC.w $0D80,X

.exit
|1DB2A0| RTS

;===================================================================================================

Trinexx_MoveBody:
; I don't think this is a possible value
|1DB2A1| LDA.w $0E30,X
|1DB2A4| CMP.b #$FF
|1DB2A6| BNE .continue

|1DB2A8| LDA.w $0DF0,X
|1DB2AB| BEQ .wait

; Looks like trinexx could choose to back up into Link?
|1DB2AD| JSR GetYDisplacementFromLink_bank1D

|1DB2B0| CPY.b #$00
|1DB2B2| BNE .continue

.wait
|1DB2B4| STZ.w $0E30,X

|1DB2B7| JMP.w .adjust_phase

;---------------------------------------------------------------------------------------------------

.continue
|1DB2BA| LDA.w $0B08
|1DB2BD| STA.b $04

|1DB2BF| LDA.w $0D30,X
|1DB2C2| STA.b $05

|1DB2C4| LDA.w $0B09
|1DB2C7| STA.b $06

|1DB2C9| LDA.w $0D20,X
|1DB2CC| STA.b $07

|1DB2CE| LDA.b #$08

|1DB2D0| LDY.w $0E30,X
|1DB2D3| BPL .slow

|1DB2D5| LDA.b #$10

.slow
|1DB2D7| JSL ProjectSpriteSpeedTowardsLocation_long

|1DB2DB| LDA.b $00
|1DB2DD| STA.w $0D40,X

|1DB2E0| LDA.b $01
|1DB2E2| STA.w $0D50,X

;---------------------------------------------------------------------------------------------------

; Handle the shell bg movement
|1DB2E5| LDA.w $0D10,X
|1DB2E8| PHA

|1DB2E9| LDA.w $0D00,X
|1DB2EC| PHA

|1DB2ED| JSR MoveSpriteXY_bank1D

|1DB2F0| PLA
|1DB2F1| LDY.b #$00

|1DB2F3| SEC
|1DB2F4| SBC.w $0D00,X
|1DB2F7| STA.w $0310
|1DB2FA| BPL .pos_y_low

|1DB2FC| DEY

.pos_y_low
|1DB2FD| STY.w $0311

;---------------------------------------------------------------------------------------------------

|1DB300| PLA
|1DB301| LDY.b #$00

|1DB303| SEC
|1DB304| SBC.w $0D10,X
|1DB307| STA.w $0312
|1DB30A| BPL .pos_x_low

|1DB30C| DEY

.pos_x_low
|1DB30D| STY.w $0313

;---------------------------------------------------------------------------------------------------

|1DB310| LDA.b #$01
|1DB312| STA.w $0428

; Now adjust speed to continue towards target location
|1DB315| JSR Trinexx_CachePosition

|1DB318| LDA.w $0D00,X
|1DB31B| SEC
|1DB31C| SBC.b #$0C
|1DB31E| STA.w $0DB0,X

|1DB321| LDA.w $0B08
|1DB324| SEC
|1DB325| SBC.w $0D10,X
|1DB328| CLC
|1DB329| ADC.b #$02

|1DB32B| CMP.b #$04
|1DB32D| BCS .not_at_target

|1DB32F| LDA.w $0B09
|1DB332| SEC
|1DB333| SBC.w $0D00,X
|1DB336| CLC
|1DB337| ADC.b #$02

|1DB339| CMP.b #$04
|1DB33B| BCS .not_at_target

.adjust_phase
|1DB33D| STZ.w $0D80,X

|1DB340| LDA.b #$30
|1DB342| STA.w $0DF0,X

.not_at_target
; move the feet twice as fast if trinexx is moving faster
|1DB345| LDA.w $0E30,X
|1DB348| BPL Trinexx_AnimateFeet

|1DB34A| JSR Trinexx_AnimateFeet

;===================================================================================================

Trinexx_AnimateFeet:
|1DB34D| LDA.w $0E80,X
|1DB350| LDY.w $0D50,X
|1DB353| BMI .positive

|1DB355| SEC
|1DB356| SBC.b #$02

.positive
|1DB358| CLC
|1DB359| ADC.b #$01
|1DB35B| STA.w $0E80,X

|1DB35E| AND.b #$0F
|1DB360| BNE .exit

|1DB362| LDA.b #$21 ; SFX2.21
|1DB364| JSL QueueSpriteSFX2WithPan

.exit
|1DB368| RTS

;===================================================================================================

Trinexx_PrepareLunge:
|1DB369| JSR Trinexx_WagTail
|1DB36C| JSR Trinexx_WagTail

|1DB36F| LDA.w $0DF0,X
|1DB372| BNE .exit

|1DB374| INC.w $0D80,X

|1DB377| LDA.b #$30
|1DB379| JSL ApplySpeedTowardsLink_long

|1DB37D| LDA.b #$40
|1DB37F| STA.w $0DF0,X

|1DB382| LDA.b #$26 ; SFX3.26
|1DB384| STA.w $012F

.exit
|1DB387| RTS

;===================================================================================================

Trinexx_LungeHead:
|1DB388| JSR MoveSpriteXY_bank1D

|1DB38B| LDA.w $0DF0,X
|1DB38E| BNE .move_neck

|1DB390| JSR Trinexx_RecoverCachedCoords

|1DB393| STZ.w $0D80,X

|1DB396| LDA.b #$30
|1DB398| STA.w $0DF0,X

|1DB39B| RTS

;---------------------------------------------------------------------------------------------------

.move_neck
; at 32 frames left, reverse the neck velocity
|1DB39C| CMP.b #$20
|1DB39E| BNE .exit

|1DB3A0| LDA.w $0D50,X
|1DB3A3| EOR.b #$FF
|1DB3A5| INC A
|1DB3A6| STA.w $0D50,X

|1DB3A9| LDA.w $0D40,X
|1DB3AC| EOR.b #$FF
|1DB3AE| INC A
|1DB3AF| STA.w $0D40,X

.exit
|1DB3B2| RTS

;===================================================================================================

pool Trinexx_WagTail

.limits
|1DB3B3| db 6, 0

endpool

;---------------------------------------------------------------------------------------------------

Trinexx_WagTail:
|1DB3B5| LDA.w $0B0D
|1DB3B8| BNE .tick_timer

|1DB3BA| INC.w $0B0C

|1DB3BD| LDA.w $0B0C
|1DB3C0| AND.b #$03
|1DB3C2| BNE .exit

|1DB3C4| LDA.w $0B0B
|1DB3C7| AND.b #$01
|1DB3C9| TAY

|1DB3CA| LDA.w $0B0A
|1DB3CD| CLC
|1DB3CE| ADC.w Shakeyshake.low,Y
|1DB3D1| STA.w $0B0A

|1DB3D4| CMP.w .limits,Y
|1DB3D7| BNE .exit

|1DB3D9| INC.w $0B0B

|1DB3DC| LDA.b #$08
|1DB3DE| STA.w $0B0D

.exit
|1DB3E1| RTS

.tick_timer
|1DB3E2| DEC.w $0B0D

|1DB3E5| RTS

;===================================================================================================

; [HARDCODED] hitbox
Trinexx_HandleShellCollision:
|1DB3E6| LDA.w $0D90,X
|1DB3E9| STA.b $04

|1DB3EB| LDA.w $0DA0,X
|1DB3EE| STA.b $05

|1DB3F0| LDA.w $0DB0,X
|1DB3F3| STA.b $06

|1DB3F5| LDA.w $0ED0,X
|1DB3F8| STA.b $07

;---------------------------------------------------------------------------------------------------

|1DB3FA| REP #$20

|1DB3FC| LDA.b $04
|1DB3FE| SEC
|1DB3FF| SBC.b $22
|1DB401| CLC
|1DB402| ADC.w #$0028

|1DB405| CMP.w #$0050
|1DB408| BCS .no_hit

|1DB40A| LDA.b $06
|1DB40C| SEC
|1DB40D| SBC.b $20
|1DB40F| CLC
|1DB410| ADC.w #$0010

|1DB413| CMP.w #$0040
|1DB416| BCS .no_hit

|1DB418| SEP #$20

;---------------------------------------------------------------------------------------------------

|1DB41A| LDA.w $031F
|1DB41D| ORA.w $037B
|1DB420| BNE .no_hit

|1DB422| LDA.b #$01
|1DB424| STA.b $4D

|1DB426| LDA.b #$08
|1DB428| STA.w $0373

|1DB42B| LDA.b #$10
|1DB42D| STA.b $46

|1DB42F| LDA.b #$20
|1DB431| JSL ProjectSpriteSpeedTowardsLink_long

|1DB435| LDA.b $00
|1DB437| STA.b $27

|1DB439| LDA.b $01
|1DB43B| STA.b $28

.no_hit
|1DB43D| SEP #$20

|1DB43F| RTS

;===================================================================================================

pool SpriteDraw_TrinexxRockHead

.oam_groups
; group00
|1DB440| dw  -8,  -8 : db $C0, $40, $00, $02
|1DB448| dw   8,  -8 : db $C0, $00, $00, $02
|1DB450| dw  -8,   8 : db $E0, $40, $00, $02
|1DB458| dw   8,   8 : db $E0, $00, $00, $02

; group01
|1DB460| dw  -8,  -8 : db $00, $00, $00, $02
|1DB468| dw   8,  -8 : db $02, $00, $00, $02
|1DB470| dw  -8,   8 : db $20, $00, $00, $02
|1DB478| dw   8,   8 : db $22, $00, $00, $02

; group02
|1DB480| dw  -8,  -8 : db $C2, $00, $00, $02
|1DB488| dw   8,  -8 : db $C4, $00, $00, $02
|1DB490| dw  -8,   8 : db $C2, $80, $00, $02
|1DB498| dw   8,   8 : db $C4, $80, $00, $02

; group03
|1DB4A0| dw  -8,  -8 : db $20, $80, $00, $02
|1DB4A8| dw   8,  -8 : db $22, $80, $00, $02
|1DB4B0| dw  -8,   8 : db $00, $80, $00, $02
|1DB4B8| dw   8,   8 : db $02, $80, $00, $02

; group04
|1DB4C0| dw  -8,  -8 : db $E0, $C0, $00, $02
|1DB4C8| dw   8,  -8 : db $E0, $80, $00, $02
|1DB4D0| dw  -8,   8 : db $C0, $C0, $00, $02
|1DB4D8| dw   8,   8 : db $C0, $80, $00, $02

; group05
|1DB4E0| dw  -8,  -8 : db $22, $C0, $00, $02
|1DB4E8| dw   8,  -8 : db $20, $C0, $00, $02
|1DB4F0| dw  -8,   8 : db $02, $C0, $00, $02
|1DB4F8| dw   8,   8 : db $00, $C0, $00, $02

; group06
|1DB500| dw  -8,  -8 : db $C4, $40, $00, $02
|1DB508| dw   8,  -8 : db $C2, $40, $00, $02
|1DB510| dw  -8,   8 : db $C4, $C0, $00, $02
|1DB518| dw   8,   8 : db $C2, $C0, $00, $02

; group07
|1DB520| dw  -8,  -8 : db $02, $40, $00, $02
|1DB528| dw   8,  -8 : db $00, $40, $00, $02
|1DB530| dw  -8,   8 : db $22, $40, $00, $02
|1DB538| dw   8,   8 : db $20, $40, $00, $02

; group08
|1DB540| dw  -8,  -8 : db $26, $00, $00, $02
|1DB548| dw   8,  -8 : db $26, $40, $00, $02
|1DB550| dw  -8,   8 : db $26, $80, $00, $02
|1DB558| dw   8,   8 : db $26, $C0, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_TrinexxRockHead:
|1DB560| LDA.b #$00
|1DB562| XBA
|1DB563| LDA.w $0DC0,X

|1DB566| REP #$20

|1DB568| ASL A ; x32
|1DB569| ASL A
|1DB56A| ASL A
|1DB56B| ASL A
|1DB56C| ASL A

|1DB56D| ADC.w #.oam_groups
|1DB570| STA.b $08

|1DB572| SEP #$20

|1DB574| LDA.w $0D80,X
|1DB577| BMI .low_priority

|1DB579| LDA.w $0B89,X
|1DB57C| ORA.b #$30
|1DB57E| STA.w $0B89,X

.low_priority
|1DB581| LDA.b #$04
|1DB583| JSR TabulatedSpriteDraw_bank1D

;---------------------------------------------------------------------------------------------------

#EXIT_1DB586:
|1DB586| RTS

;===================================================================================================

SpriteDraw_TrinexxRockHeadAndBody:
|1DB587| LDA.w $0EB0,X
|1DB58A| BMI EXIT_1DB586

|1DB58C| JSR SpriteDraw_TrinexxRockHead

|1DB58F| LDA.b $05
|1DB591| AND.b #$EF
|1DB593| STA.b $05

|1DB595| LDA.w $0D80,X
|1DB598| CMP.b #$03
|1DB59A| BEQ .lunging

|1DB59C| JMP.w .not_lunging

;---------------------------------------------------------------------------------------------------

.lunging
; Get X absolute offset of neck relative to the cached coordinates
|1DB59F| LDA.w $0D90,X
|1DB5A2| SEC
|1DB5A3| SBC.w $0D10,X
|1DB5A6| STA.b $08

|1DB5A8| BPL .sign_okay_x

|1DB5AA| EOR.b #$FF
|1DB5AC| INC A

.sign_okay_x
|1DB5AD| STA.b $0A

; Get Y absolute offset of neck relative to the cached coordinates
|1DB5AF| LDA.w $0DB0,X
|1DB5B2| SEC
|1DB5B3| SBC.w $0D00,X
|1DB5B6| STA.b $09

|1DB5B8| BPL .sign_okay_y

|1DB5BA| EOR.b #$FF
|1DB5BC| INC A

.sign_okay_y
|1DB5BD| STA.b $0B

; 8 segments
|1DB5BF| LDA.b #$07
|1DB5C1| STA.w $0FB5

; OAM offset
|1DB5C4| LDA.b #$10
|1DB5C6| STA.w $0FB6

.next_neck_segment
|1DB5C9| LDY.w $0FB5

; Multiply segment by offset
|1DB5CC| LDA.b $0A
|1DB5CE| STA.w WRMPYA

|1DB5D1| LDA.w .neck_pos_offset_multipliers,Y
|1DB5D4| STA.w WRMPYB

|1DB5D7| NOP ; 8 NOP
|1DB5D8| NOP
|1DB5D9| NOP
|1DB5DA| NOP
|1DB5DB| NOP
|1DB5DC| NOP
|1DB5DD| NOP
|1DB5DE| NOP

|1DB5DF| ASL.w RDMPYL ; carry = round up
|1DB5E2| LDA.w RDMPYH
|1DB5E5| ADC.b #$00

; make sure the sign matches
|1DB5E7| LDY.b $08
|1DB5E9| BPL .invert_x_offset

|1DB5EB| EOR.b #$FF
|1DB5ED| INC A

.invert_x_offset
|1DB5EE| CLC
|1DB5EF| ADC.b $00

|1DB5F1| LDY.w $0FB6
|1DB5F4| STA.b ($90),Y

; Now do the same for Y coord
|1DB5F6| LDY.w $0FB5

|1DB5F9| LDA.b $0B
|1DB5FB| STA.w WRMPYA

|1DB5FE| LDA.w .neck_pos_offset_multipliers,Y
|1DB601| STA.w WRMPYB

|1DB604| NOP ; 8 NOP
|1DB605| NOP
|1DB606| NOP
|1DB607| NOP
|1DB608| NOP
|1DB609| NOP
|1DB60A| NOP
|1DB60B| NOP

|1DB60C| ASL.w RDMPYL ; carry = round up
|1DB60F| LDA.w RDMPYH
|1DB612| ADC.b #$00

; make sure the sign matches
|1DB614| LDY.b $09
|1DB616| BPL .invert_y_offset

|1DB618| EOR.b #$FF
|1DB61A| INC A

.invert_y_offset
|1DB61B| CLC
|1DB61C| ADC.b $02

|1DB61E| LDY.w $0FB6
|1DB621| INY
|1DB622| STA.b ($90),Y

; now add the char
|1DB624| LDA.b #$28
|1DB626| INY
|1DB627| STA.b ($90),Y

; add properties
|1DB629| LDA.b $05
|1DB62B| INY
|1DB62C| STA.b ($90),Y

|1DB62E| PHY

; add size and x.8
|1DB62F| TYA
|1DB630| LSR A
|1DB631| LSR A
|1DB632| TAY

|1DB633| LDA.b #$02
|1DB635| STA.b ($92),Y

|1DB637| PLY

; save offset
|1DB638| INY
|1DB639| STY.w $0FB6

; decrement counter
|1DB63C| DEC.w $0FB5
|1DB63F| BPL .next_neck_segment

;---------------------------------------------------------------------------------------------------

.not_lunging
; draw feet
|1DB641| REP #$20

; [HARDCODED] oam slots
|1DB643| LDA.w #$09F0
|1DB646| STA.b $90

|1DB648| LDA.w #$0A9C
|1DB64B| STA.b $92

|1DB64D| SEP #$20

|1DB64F| LDA.w $0D90,X
|1DB652| SEC
|1DB653| SBC.b $E2
|1DB655| STA.b $00

|1DB657| LDA.w $0DB0,X
|1DB65A| SEC
|1DB65B| SBC.b $E8
|1DB65D| STA.b $02

|1DB65F| LDA.w $0D20,X
|1DB662| SBC.b $E9
|1DB664| STA.b $03

|1DB666| LDA.b #$01
|1DB668| STA.w $0FB5

;---------------------------------------------------------------------------------------------------

|1DB66B| LDA.w $0D50,X
|1DB66E| CLC
|1DB66F| ADC.b #$03
|1DB671| CMP.b #$07

|1DB673| LDA.b #$00
|1DB675| BCC .slow

|1DB677| LDA.w $0E80,X
|1DB67A| LSR A
|1DB67B| LSR A
|1DB67C| AND.b #$0F

.slow
|1DB67E| STA.b $06

|1DB680| CLC
|1DB681| ADC.b #$08
|1DB683| AND.b #$0F
|1DB685| STA.b $07

|1DB687| LDA.w $0E80,X
|1DB68A| LSR A
|1DB68B| LSR A
|1DB68C| AND.b #$0F
|1DB68E| STA.b $08

|1DB690| CLC
|1DB691| ADC.b #$08
|1DB693| AND.b #$0F
|1DB695| STA.b $09

;---------------------------------------------------------------------------------------------------

|1DB697| LDY.b #$00

|1DB699| PHX

.next_foot
|1DB69A| LDA.b $00
|1DB69C| CLC
|1DB69D| ADC.w .foot_base_offset_x,X
|1DB6A0| PHA

|1DB6A1| LDA.b $06,X
|1DB6A3| TAX

|1DB6A4| PLA
|1DB6A5| CLC
|1DB6A6| ADC.w .foot_rotation_offset_x,X
|1DB6A9| STA.b ($90),Y

|1DB6AB| INY ; +4
|1DB6AC| INY
|1DB6AD| INY
|1DB6AE| INY

|1DB6AF| STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

|1DB6B1| LDA.b $02
|1DB6B3| CLC
|1DB6B4| ADC.b #$F8
|1DB6B6| PHA

|1DB6B7| LDX.w $0FB5

|1DB6BA| LDA.b $08,X
|1DB6BC| TAX

|1DB6BD| PLA
|1DB6BE| CLC
|1DB6BF| ADC.w .foot_rotation_offset_y,X

|1DB6C2| DEY
|1DB6C3| DEY
|1DB6C4| DEY

|1DB6C5| STA.b ($90),Y

|1DB6C7| CLC
|1DB6C8| ADC.b #$10

|1DB6CA| INY ; +4
|1DB6CB| INY
|1DB6CC| INY
|1DB6CD| INY
|1DB6CE| STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

|1DB6D0| LDA.b #$0C

|1DB6D2| DEY
|1DB6D3| DEY
|1DB6D4| DEY

|1DB6D5| STA.b ($90),Y

|1DB6D7| LDA.b #$2A

|1DB6D9| INY ; +4
|1DB6DA| INY
|1DB6DB| INY
|1DB6DC| INY

|1DB6DD| STA.b ($90),Y

|1DB6DF| DEY
|1DB6E0| DEY
|1DB6E1| DEY

;---------------------------------------------------------------------------------------------------

|1DB6E2| LDX.w $0FB5

|1DB6E5| LDA.b $05
|1DB6E7| ORA.w .foot_flip,X
|1DB6EA| STA.b ($90),Y

|1DB6EC| INY ; +4
|1DB6ED| INY
|1DB6EE| INY
|1DB6EF| INY

|1DB6F0| STA.b ($90),Y

|1DB6F2| PHY

|1DB6F3| TYA
|1DB6F4| LSR A
|1DB6F5| LSR A
|1DB6F6| TAY

|1DB6F7| LDA.b #$02
|1DB6F9| STA.b ($92),Y

|1DB6FB| DEY

|1DB6FC| STA.b ($92),Y

|1DB6FE| PLY
|1DB6FF| INY

|1DB700| DEC.w $0FB5
|1DB703| BPL .next_foot

;---------------------------------------------------------------------------------------------------

; Draw tail
; get wag index*5
|1DB705| LDA.w $0B0A
|1DB708| ASL A
|1DB709| ASL A
|1DB70A| ADC.w $0B0A
|1DB70D| STA.b $06

|1DB70F| LDY.b #$00 ; oam index
|1DB711| LDX.b #$00 ; segment index

; [HARDCODED] oam slots
.next_tail_segment
|1DB713| PHX

|1DB714| TXA ; get (slot+wag)*2
|1DB715| CLC
|1DB716| ADC.b $06
|1DB718| ASL A
|1DB719| TAX

|1DB71A| REP #$20

|1DB71C| LDA.b $00
|1DB71E| CLC
|1DB71F| ADC.w .tail_offset_x,X
|1DB722| STA.w $096C,Y

|1DB725| LDA.b $02
|1DB727| SEC
|1DB728| SBC.w .tail_offset_y,X
|1DB72B| SBC.w #$0020
|1DB72E| CLC
|1DB72F| ADC.w $0B0F
|1DB732| INY
|1DB733| STA.w $096C,Y

|1DB736| CLC
|1DB737| ADC.w #$0010
|1DB73A| CMP.w #$0100

|1DB73D| SEP #$20
|1DB73F| BCC .tail_segment_on_screen

|1DB741| LDA.b #$F0
|1DB743| STA.w $096C,Y

.tail_segment_on_screen
|1DB746| PLX

|1DB747| LDA.w .tail_char,X
|1DB74A| INY
|1DB74B| STA.w $096C,Y

|1DB74E| LDA.b $05
|1DB750| INY
|1DB751| STA.w $096C,Y

|1DB754| PHY

|1DB755| TYA
|1DB756| LSR A
|1DB757| LSR A
|1DB758| TAY

|1DB759| LDA.b #$02
|1DB75B| STA.w $0A7B,Y

|1DB75E| PLY
|1DB75F| INY

|1DB760| INX
|1DB761| CPX.b #$05
|1DB763| BNE .next_tail_segment

;---------------------------------------------------------------------------------------------------

|1DB765| PLX
|1DB766| LDA.b $11
|1DB768| BEQ .exit

|1DB76A| LDY.b #$02
|1DB76C| LDA.b #$03
|1DB76E| JSL CorrectOAMEntries_long

.exit
|1DB772| RTS

;---------------------------------------------------------------------------------------------------

.tail_offset_x
|1DB773| dw   0,   3,   9,  16,  24
|1DB77D| dw   0,   2,   7,  13,  20
|1DB787| dw   0,   1,   4,   9,  15
|1DB791| dw   0,   0,   0,   0,   0
|1DB79B| dw   0,  -1,  -4,  -9, -15
|1DB7A5| dw   0,  -2,  -7, -13, -20
|1DB7AF| dw   0,  -3,  -9, -16, -24

.tail_offset_y
|1DB7B9| dw  24,  32,  37,  37,  33
|1DB7C3| dw  24,  32,  39,  42,  44
|1DB7CD| dw  24,  32,  40,  47,  52
|1DB7D7| dw  24,  33,  42,  52,  61
|1DB7E1| dw  24,  32,  40,  47,  52
|1DB7EB| dw  24,  32,  39,  42,  44
|1DB7F5| dw  24,  32,  37,  37,  33

.tail_char
|1DB7FF| db $06, $28, $28, $2C, $2C

;---------------------------------------------------------------------------------------------------

; Used for Y to calculate the OAM slot of each segment
; based on how far the neck is stuck out
.neck_pos_offset_multipliers
|1DB804| db $FC, $E0, $C0, $A0, $80, $60, $40, $20

;---------------------------------------------------------------------------------------------------

.foot_base_offset_x
|1DB80C| db -28 ; right foot
|1DB80D| db  28 ; left foot

.foot_flip
|1DB80E| db $40 ; right foot
|1DB80F| db $00 ; left foot

.foot_rotation_offset_x
|1DB810| db  0,  2,  3,  4,  4,  4,  3,  2 ; right foot
|1DB818| db  0, -2, -3, -4, -4, -4, -3, -2 ; left foot

.foot_rotation_offset_y
|1DB820| db -4, -4, -3, -2,  0,  2,  3,  4 ; right foot
|1DB828| db  4,  4,  3,  2,  0, -2, -3, -4 ; left foot

;===================================================================================================

pool Sidenexx

.segment_boundary_x
|1DB830| db   64,   64,   64,   64,   64,   64,   64,   64,   64
|1DB839| db   88,  100,  106,  111,  116,  122,  126, -128, -128
|1DB842| db   57,   72,   82,   92,  101,  115,  119,  122, -128
|1DB84B| db   30,   36,   41,   46,   52,   58,   68,   77, -128
|1DB854| db   10,   17,   23,   28,   34,   42,   54,   58, -128

.segment_boundary_y
|1DB85D| db   48,   40,   35,   30,   25,   19,   12,    6,    0
|1DB866| db   47,   38,   33,   29,   24,   18,   12,    6,    0
|1DB86F| db   47,   39,   34,   29,   24,   18,   12,    6,    0
|1DB878| db   47,   39,   34,   29,   24,   18,   12,    6,    0
|1DB881| db   72,   58,   50,   41,   34,   25,   16,    7,    0

.base_offset_low
|1DB88A| db -14,  13

.base_offset_high
|1DB88C| db  -1,   0

.unused
|1DB88E| db   0,   1,  -1,   0,   0,  -1,   0,   1,  -1

endpool

;===================================================================================================

Sprite_CC_TrinexxFireHead:
|1DB897| LDA.w $0E90,X
|1DB89A| BEQ Sidenexx

|1DB89C| JMP.w TrinexxBreath_fire

;===================================================================================================

Sprite_CD_TrinexxIceHead:
|1DB89F| LDA.w $0E90,X
|1DB8A2| BEQ Sidenexx

|1DB8A4| JMP.w TrinexxBreath_ice

;===================================================================================================

Sidenexx:
|1DB8A7| LDA.w $0E20,X
|1DB8AA| SEC
|1DB8AB| SBC.b #$CC ; SPRITE CC
|1DB8AD| TAY

|1DB8AE| LDA.w $0D90
|1DB8B1| CLC
|1DB8B2| ADC.w .base_offset_low,Y
|1DB8B5| STA.w $0D90,X

|1DB8B8| LDA.w $0DA0
|1DB8BB| ADC.w .base_offset_high,Y
|1DB8BE| STA.w $0DA0,X

|1DB8C1| LDA.w $0DB0
|1DB8C4| SEC
|1DB8C5| SBC.b #$20
|1DB8C7| STA.w $0DB0,X

|1DB8CA| LDA.w $0ED0
|1DB8CD| SBC.b #$00
|1DB8CF| STA.w $0ED0,X

|1DB8D2| LDA.w $0B89,X
|1DB8D5| ORA.b #$30
|1DB8D7| STA.w $0B89,X

;---------------------------------------------------------------------------------------------------

|1DB8DA| JSR SpriteDraw_Sidenexx
|1DB8DD| JSR CheckIfActive_bank1D

|1DB8E0| LDA.w $0D80,X
|1DB8E3| BPL .not_exploding

|1DB8E5| STA.w $0BA0,X

|1DB8E8| JMP.w Sidenexx_Explode

;---------------------------------------------------------------------------------------------------

.not_exploding
|1DB8EB| LDA.w $0EF0,X
|1DB8EE| BEQ .not_stunned

|1DB8F0| LDA.w $0D80,X
|1DB8F3| CMP.b #$04
|1DB8F5| BEQ .not_stunned

|1DB8F7| STZ.w $0EF0,X

|1DB8FA| LDA.b #$80
|1DB8FC| STA.w $0DF0,X

|1DB8FF| LDA.b #$04
|1DB901| STA.w $0D80,X

|1DB904| LDA.w $0F50,X
|1DB907| STA.w $0F80,X

|1DB90A| LDA.b #$03
|1DB90C| STA.w $0F50,X

;---------------------------------------------------------------------------------------------------

.not_stunned
|1DB90F| JSR CheckDamageToAndFromLink_bank1D

|1DB912| LDA.w $0CAA,X
|1DB915| ORA.b #$04
|1DB917| STA.w $0CAA,X

|1DB91A| LDA.w $0D80,X
|1DB91D| JSL JumpTableLocal
|1DB921| dw Sidenexx_Dormant
|1DB923| dw Sidenexx_Think
|1DB925| dw Sidenexx_Move
|1DB927| dw Sidenexx_Breathe
|1DB929| dw Sidenexx_Stunned

;===================================================================================================

Sidenexx_Stunned:
|1DB92B| LDA.w $0CAA,X
|1DB92E| AND.b #$FB
|1DB930| STA.w $0CAA,X

|1DB933| STZ.w $0E30,X

|1DB936| LDA.w $0DF0,X
|1DB939| BNE .delay

|1DB93B| PHA

|1DB93C| LDA.b #$01
|1DB93E| STA.w $0D80,X

|1DB941| LDA.b #$20
|1DB943| STA.w $0DF0,X

|1DB946| LDA.w $0F80,X
|1DB949| STA.w $0F50,X

|1DB94C| STZ.w $0EF0,X

|1DB94F| PLA

;---------------------------------------------------------------------------------------------------

.delay
|1DB950| CMP.b #$0F
|1DB952| BCC .unflash_color

|1DB954| CMP.b #$4E
|1DB956| BCS .exit

|1DB958| CMP.b #$3F
|1DB95A| BCC .exit

|1DB95C| LDA.w $0E20,X
|1DB95F| CMP.b #$CD ; SPRITE CD
|1DB961| BNE .not_ice_head_a

|1DB963| PHX
|1DB964| JSL FlashTrinexxShellBlue
|1DB968| PLX

|1DB969| RTS

.not_ice_head_a
|1DB96A| PHX
|1DB96B| JSL FlashTrinexxShellRed
|1DB96F| PLX

.exit
|1DB970| RTS

;---------------------------------------------------------------------------------------------------

.unflash_color
|1DB971| LDA.w $0E20,X
|1DB974| CMP.b #$CD ; SPRITE CD
|1DB976| BNE .not_ice_head_b

|1DB978| PHX
|1DB979| JSL UnflashTrinexxShellBlue
|1DB97D| PLX

|1DB97E| RTS

.not_ice_head_b
|1DB97F| PHX
|1DB980| JSL UnflashTrinexxShellRed
|1DB984| PLX

|1DB985| RTS

;===================================================================================================

Sidenexx_Dormant:
|1DB986| LDA.w $0E60,X
|1DB989| ORA.b #$40
|1DB98B| STA.w $0E60,X

|1DB98E| LDA.w $0DF0,X
|1DB991| BNE .delay

|1DB993| LDA.b #$02
|1DB995| STA.w $0D80,X

|1DB998| LDA.b #$09
|1DB99A| STA.w $0E80,X

|1DB99D| LDA.w $0E60,X
|1DB9A0| AND.b #$BF
|1DB9A2| STA.w $0E60,X

.delay
|1DB9A5| RTS

;===================================================================================================

Sidenexx_Think:
|1DB9A6| LDA.w $0DF0,X
|1DB9A9| BNE .exit

|1DB9AB| LDA.w $0DE0,X
|1DB9AE| STA.b $00

; roll a new position
|1DB9B0| JSL GetRandomNumber
|1DB9B4| AND.b #$07
|1DB9B6| INC A

; don't get an out of bounds head position
|1DB9B7| CMP.b #$05
|1DB9B9| BCS .exit

|1DB9BB| CMP.w $0DE0,X
|1DB9BE| BEQ .exit

|1DB9C0| STA.w $0DE0,X

|1DB9C3| INC.w $0D80,X

; check if in breathing position
|1DB9C6| LDA.b $00
|1DB9C8| CMP.b #$01
|1DB9CA| BNE .exit

; randomly breathe
|1DB9CC| JSL GetRandomNumber
|1DB9D0| LSR A
|1DB9D1| BCS .exit

; skip if main body is moving
|1DB9D3| LDA.w $0D80
|1DB9D6| CMP.b #$02
|1DB9D8| BCS .exit

; some nice vestigial code here
|1DB9DA| INC.w $0DC0,X

|1DB9DD| LDA.w $0DC0,X
|1DB9E0| CMP.b #$06

|1DB9E2| NOP ; ohhhh this was probably a BCC $B9E7
|1DB9E3| NOP

|1DB9E4| STZ.w $0DC0,X

|1DB9E7| LDA.b #$03
|1DB9E9| STA.w $0D80,X

|1DB9EC| LDA.b #$7F
|1DB9EE| STA.w $0DF0,X

.exit
|1DB9F1| RTS

;===================================================================================================

Sidenexx_Move:
|1DB9F2| STZ.b $01

|1DB9F4| LDA.w $0DE0,X ; get *9
|1DB9F7| ASL A
|1DB9F8| ASL A
|1DB9F9| ASL A
|1DB9FA| ADC.w $0DE0,X
|1DB9FD| TAY

|1DB9FE| LDA.w Sidenexx_SegmentIndexOffset,X

|1DBA01| PHX

|1DBA02| TAX

|1DBA03| LDA.b #$08
|1DBA05| STA.b $00

;---------------------------------------------------------------------------------------------------

.next_segment
|1DBA07| LDA.w $1D10,X
|1DBA0A| CMP.w Sidenexx.segment_boundary_x,Y
|1DBA0D| BEQ .continue_x
|1DBA0F| BPL .decrement_x

|1DBA11| INC.w $1D10,X

|1DBA14| INC.b $01

|1DBA16| BRA .continue_x

.decrement_x
|1DBA18| DEC.w $1D10,X

|1DBA1B| INC.b $01

.continue_x
|1DBA1D| LDA.w $1D10,X
|1DBA20| CMP.w Sidenexx.segment_boundary_x,Y
|1DBA23| BEQ .start_y
|1DBA25| BPL .decrement_x_again

|1DBA27| INC.w $1D10,X
|1DBA2A| INC.b $01

|1DBA2C| BRA .start_y

.decrement_x_again
|1DBA2E| DEC.w $1D10,X

|1DBA31| INC.b $01

;---------------------------------------------------------------------------------------------------

.start_y
|1DBA33| LDA.b $1A
|1DBA35| AND.b #$00
|1DBA37| BNE .skip_y

|1DBA39| LDA.w $1D50,X
|1DBA3C| CMP.w Sidenexx.segment_boundary_y,Y
|1DBA3F| BEQ .continue_y
|1DBA41| BPL .decrement_y

|1DBA43| INC.w $1D50,X

|1DBA46| INC.b $01

|1DBA48| BRA .continue_y

.decrement_y
|1DBA4A| DEC.w $1D50,X

.skip_y
|1DBA4D| INC.b $01

.continue_y
|1DBA4F| INX

|1DBA50| INY

|1DBA51| DEC.b $00
|1DBA53| BPL .next_segment

;---------------------------------------------------------------------------------------------------

|1DBA55| PLX

; TODO some timer based on the neck movement?
|1DBA56| LDA.b $01
|1DBA58| BNE .exit

|1DBA5A| DEC.w $0D80,X

|1DBA5D| JSL GetRandomNumber
|1DBA61| AND.b #$0F
|1DBA63| STA.w $0DF0,X

.exit
|1DBA66| RTS

;===================================================================================================

UNREACHABLE_1DBA67:
|1DBA67| RTS

;===================================================================================================

pool Sidenexx_Breathe

.timer_masks
|1DBA68| db $01, $01, $03, $03, $07, $0F, $1F, $1F

endpool

;---------------------------------------------------------------------------------------------------

Sidenexx_Breathe:
|1DBA70| LDA.w $0DF0,X
|1DBA73| BNE .breathe_yes

|1DBA75| STZ.w $0D80,X

|1DBA78| LDA.b #$20
|1DBA7A| STA.w $0DF0,X

|1DBA7D| RTS

;---------------------------------------------------------------------------------------------------

.breathe_yes
|1DBA7E| CMP.b #$40
|1DBA80| BNE .dont_breathe

|1DBA82| PHA

|1DBA83| JSR Sidenexx_ExhaleDanger

|1DBA86| PLA

;---------------------------------------------------------------------------------------------------

.dont_breathe
|1DBA87| CMP.b #$08
|1DBA89| BCC .continue

|1DBA8B| CMP.b #$79
|1DBA8D| LDA.b #$08
|1DBA8F| BCC .continue

|1DBA91| LDA.w $0DF0,X
|1DBA94| CLC
|1DBA95| ADC.b #$80
|1DBA97| EOR.b #$FF

;---------------------------------------------------------------------------------------------------

.continue
|1DBA99| STA.w $0E30,X

|1DBA9C| LDA.w $0DF0,X
|1DBA9F| CMP.b #$40
|1DBAA1| BCC .exit

|1DBAA3| SEC
|1DBAA4| SBC.b #$40
|1DBAA6| LSR A
|1DBAA7| LSR A
|1DBAA8| LSR A
|1DBAA9| TAY

|1DBAAA| LDA.b $1A
|1DBAAC| AND.w .timer_masks,Y
|1DBAAF| BNE .exit

|1DBAB1| JSL GetRandomNumber
|1DBAB5| AND.b #$0F

|1DBAB7| LDY.b #$00

|1DBAB9| SEC
|1DBABA| SBC.b #$03
|1DBABC| STA.b $00
|1DBABE| BPL .positive

|1DBAC0| DEY

.positive
|1DBAC1| STY.b $01

;---------------------------------------------------------------------------------------------------

|1DBAC3| JSL GetRandomNumber
|1DBAC7| AND.b #$0F
|1DBAC9| CLC
|1DBACA| ADC.b #$0C
|1DBACC| STA.b $02
|1DBACE| STZ.b $03

|1DBAD0| JSL GarnishSpawn_Sparkle

|1DBAD4| LDA.w $0E20,X
|1DBAD7| CMP.b #$CC ; SPRITE CC
|1DBAD9| BNE .exit

|1DBADB| PHX

|1DBADC| LDX.b $0F

|1DBADE| LDA.b #$0E ; GARNISH 0E
|1DBAE0| STA.l $7FF800,X

|1DBAE4| PLX

.exit
|1DBAE5| RTS

;===================================================================================================

pool Sidenexx_ExhaleDanger

.dir
|1DBAE6| db  -2,   1

endpool

;---------------------------------------------------------------------------------------------------

Sidenexx_ExhaleDanger:
|1DBAE8| LDA.w $0E20,X
|1DBAEB| CMP.b #$CD ; SPRITE CD
|1DBAED| BNE .breathe_fire

|1DBAEF| STZ.w $0FB6

|1DBAF2| JSR .breathe_ice

|1DBAF5| INC.w $0FB6

|1DBAF8| LDA.b #$CD ; SPRITE CD

;---------------------------------------------------------------------------------------------------

.breathe_ice
|1DBAFA| JSL SpawnSpriteDynamically
|1DBAFE| BMI .spawn_failed

|1DBB00| JSL SetSpawnedSpriteCoordinates

|1DBB04| PHX

|1DBB05| LDX.w $0FB6
|1DBB08| LDA.w .dir,X
|1DBB0B| STA.w $0DB0,Y

|1DBB0E| PLX

|1DBB0F| LDA.b #$19 ; SFX3.19
|1DBB11| JSL QueueSpriteSFX3WithPan

|1DBB15| BRA .final_adjustments

;---------------------------------------------------------------------------------------------------

.breathe_fire
|1DBB17| JSL SpawnSpriteDynamically
|1DBB1B| BMI .spawn_failed

|1DBB1D| JSL SetSpawnedSpriteCoordinates

|1DBB21| LDA.b #$2A ; SFX2.2A
|1DBB23| JSL QueueSpriteSFX2WithPan

;---------------------------------------------------------------------------------------------------

.final_adjustments
|1DBB27| LDA.b #$01
|1DBB29| STA.w $0E90,Y
|1DBB2C| STA.w $0BA0,Y

|1DBB2F| LDA.b #$18
|1DBB31| STA.w $0D40,Y

|1DBB34| LDA.b #$00
|1DBB36| STA.w $0E40,Y

|1DBB39| LDA.b #$40
|1DBB3B| STA.w $0E60,Y

.spawn_failed
|1DBB3E| RTS

;===================================================================================================

Sidenexx_Explode:
|1DBB3F| LDA.w $0DF0,X
|1DBB42| BNE .exit

|1DBB44| LDA.b #$0C
|1DBB46| STA.w $0DF0,X

|1DBB49| LDA.w $0E80,X
|1DBB4C| CMP.b #$01
|1DBB4E| BNE .stay_alive

|1DBB50| STZ.w $0DD0,X

;---------------------------------------------------------------------------------------------------

.stay_alive
|1DBB53| DEC.w $0E80,X

|1DBB56| LDA.w $0FD8
|1DBB59| CLC
|1DBB5A| ADC.b $E2
|1DBB5C| STA.w $0FD8

|1DBB5F| LDA.w $0FDA
|1DBB62| CLC
|1DBB63| ADC.b $E8
|1DBB65| STA.w $0FDA

|1DBB68| JSL MakeBossExplosion

.exit
|1DBB6C| RTS

;===================================================================================================

Sidenexx_SegmentIndexOffset:
|1DBB6D| db $00, $09, $12

;===================================================================================================

SpriteDraw_Sidenexx:
|1DBB70| LDA.w $0D90,X
|1DBB73| STA.w $0D10,X

|1DBB76| LDA.w $0DA0,X
|1DBB79| STA.w $0D30,X

|1DBB7C| LDA.w $0DB0,X
|1DBB7F| STA.w $0D00,X

|1DBB82| LDA.w $0ED0,X
|1DBB85| STA.w $0D20,X

|1DBB88| JSL Get16BitSpriteCoords_long
|1DBB8C| JSR GetScreenCoordinates_bank1D

|1DBB8F| STZ.w $0FB5
|1DBB92| STZ.w $0FB6

.next_segment
|1DBB95| LDY.w $0FB5

|1DBB98| TYA
|1DBB99| CLC
|1DBB9A| ADC.w Sidenexx_SegmentIndexOffset,X
|1DBB9D| TAY

; check sprite slot
|1DBB9E| CPX.b #$02
|1DBBA0| BEQ .ice_head

|1DBBA2| LDA.w $1D10,Y
|1DBBA5| EOR.b #$FF
|1DBBA7| INC A
|1DBBA8| STA.b $06

|1DBBAA| LDA.b #$01
|1DBBAC| STA.b $07
|1DBBAE| BRA .continue_a

;---------------------------------------------------------------------------------------------------

.ice_head
|1DBBB0| LDA.w $1D10,Y
|1DBBB3| STA.b $06
|1DBBB5| STZ.b $07

;---------------------------------------------------------------------------------------------------

.continue_a
|1DBBB7| LDA.w $1D50,Y
|1DBBBA| STA.b $0F

|1DBBBC| PHX

|1DBBBD| REP #$30

|1DBBBF| LDA.b $06
|1DBBC1| AND.w #$00FF
|1DBBC4| ASL A
|1DBBC5| TAX

|1DBBC6| LDA.l TrigTable,X
|1DBBCA| STA.b $0A

|1DBBCC| LDA.b $06
|1DBBCE| CLC
|1DBBCF| ADC.w #$0080
|1DBBD2| STA.b $08

|1DBBD4| AND.w #$00FF
|1DBBD7| ASL A
|1DBBD8| TAX

|1DBBD9| LDA.l TrigTable,X
|1DBBDD| STA.b $0C

;---------------------------------------------------------------------------------------------------

|1DBBDF| SEP #$30

|1DBBE1| PLX

|1DBBE2| LDA.b $0A
|1DBBE4| STA.w WRMPYA

|1DBBE7| LDA.b $0F

|1DBBE9| LDY.b $0B
|1DBBEB| BNE .nonzero_a

|1DBBED| STA.w WRMPYB

|1DBBF0| NOP ; 8 NOP
|1DBBF1| NOP
|1DBBF2| NOP
|1DBBF3| NOP
|1DBBF4| NOP
|1DBBF5| NOP
|1DBBF6| NOP
|1DBBF7| NOP

|1DBBF8| ASL.w RDMPYL ; carry = round up
|1DBBFB| LDA.w RDMPYH
|1DBBFE| ADC.b #$00

.nonzero_a
|1DBC00| LSR.b $07
|1DBC02| BCC .leave_sign_a

|1DBC04| EOR.b #$FF
|1DBC06| INC A

.leave_sign_a
|1DBC07| STA.w $0FA8

;---------------------------------------------------------------------------------------------------

|1DBC0A| LDA.b $0C
|1DBC0C| STA.w WRMPYA

|1DBC0F| LDA.b $0F
|1DBC11| LDY.b $0D
|1DBC13| BNE .nonzero_b

|1DBC15| STA.w WRMPYB

|1DBC18| NOP ; 8 NOP
|1DBC19| NOP
|1DBC1A| NOP
|1DBC1B| NOP
|1DBC1C| NOP
|1DBC1D| NOP
|1DBC1E| NOP
|1DBC1F| NOP

|1DBC20| ASL.w RDMPYL ; carry = round up
|1DBC23| LDA.w RDMPYH
|1DBC26| ADC.b #$00

.nonzero_b
|1DBC28| LSR.b $09
|1DBC2A| BCC .leave_sign_b

|1DBC2C| EOR.b #$FF
|1DBC2E| INC A

.leave_sign_b
|1DBC2F| STA.w $0FA9

|1DBC32| LDA.w $0FB5
|1DBC35| BNE .not_head

|1DBC37| JSR SpriteDraw_Sidenexx_Head

|1DBC3A| BRA .continue_b

;---------------------------------------------------------------------------------------------------

.not_head
|1DBC3C| LDA.b $00
|1DBC3E| CLC
|1DBC3F| ADC.w $0FA8

|1DBC42| LDY.w $0FB6

|1DBC45| STA.b ($90),Y
|1DBC47| STA.w $0FD8

|1DBC4A| LDA.w $0FA9
|1DBC4D| CLC
|1DBC4E| ADC.b $02

|1DBC50| LDY.w $0FB6
|1DBC53| INY

|1DBC54| STA.b ($90),Y
|1DBC56| STA.w $0FDA

|1DBC59| LDA.b #$08
|1DBC5B| INY
|1DBC5C| STA.b ($90),Y

|1DBC5E| LDA.b $05
|1DBC60| INY
|1DBC61| STA.b ($90),Y

|1DBC63| PHY

|1DBC64| TYA
|1DBC65| LSR A
|1DBC66| LSR A
|1DBC67| TAY

|1DBC68| LDA.b #$02
|1DBC6A| STA.b ($92),Y

|1DBC6C| PLY
|1DBC6D| INY

|1DBC6E| STY.w $0FB6

;---------------------------------------------------------------------------------------------------

.continue_b
|1DBC71| INC.w $0FB5

|1DBC74| LDA.w $0FB5
|1DBC77| CMP.w $0E80,X
|1DBC7A| BEQ .finished

|1DBC7C| JMP.w .next_segment

;---------------------------------------------------------------------------------------------------

.finished
|1DBC7F| LDA.b $11
|1DBC81| BEQ .exit

|1DBC83| LDY.b #$02
|1DBC85| LDA.b #$04
|1DBC87| JSL CorrectOAMEntries_long

.exit
|1DBC8B| RTS

;===================================================================================================

pool SpriteDraw_Sidenexx_Head

.offset_x
|1DBC8C| db  -8,   8,  -8,   8,   0

.offset_y
|1DBC91| db  -8,  -8,   8,   8,   2

.char
|1DBC96| db $04, $04, $24, $24, $0A

.flip
|1DBC9B| db $40, $00, $40, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Sidenexx_Head:
|1DBCA0| LDA.w $0E30,X
|1DBCA3| STA.b $08

|1DBCA5| PHX

|1DBCA6| LDX.b #$00
|1DBCA8| LDY.w $0FB6

.next_object
|1DBCAB| LDA.w $0FA8
|1DBCAE| CLC
|1DBCAF| ADC.b $00
|1DBCB1| STA.w $0FD8

|1DBCB4| CLC
|1DBCB5| ADC.w .offset_x,X
|1DBCB8| STA.b ($90),Y

|1DBCBA| LDA.w $0FA9
|1DBCBD| CLC
|1DBCBE| ADC.b $02
|1DBCC0| STA.w $0FDA

|1DBCC3| CLC
|1DBCC4| ADC.w .offset_y,X

|1DBCC7| CPX.b #$04
|1DBCC9| BNE .not_mouth

|1DBCCB| CLC
|1DBCCC| ADC.b $08

.not_mouth
|1DBCCE| INY
|1DBCCF| STA.b ($90),Y

|1DBCD1| LDA.w .char,X
|1DBCD4| INY
|1DBCD5| STA.b ($90),Y

|1DBCD7| LDA.b $05
|1DBCD9| ORA.w .flip,X

|1DBCDC| INY
|1DBCDD| STA.b ($90),Y

|1DBCDF| PHY

|1DBCE0| TYA
|1DBCE1| LSR A
|1DBCE2| LSR A
|1DBCE3| TAY

|1DBCE4| LDA.b #$02
|1DBCE6| STA.b ($92),Y

|1DBCE8| PLY
|1DBCE9| INY

|1DBCEA| INX

|1DBCEB| CPX.b #$05
|1DBCED| BNE .next_object

;---------------------------------------------------------------------------------------------------

|1DBCEF| PLX

|1DBCF0| LDA.w $0FB6
|1DBCF3| CLC
|1DBCF4| ADC.b #$14
|1DBCF6| STA.w $0FB6

|1DBCF9| LDY.b #$00
|1DBCFB| LDA.w $0FA8
|1DBCFE| BPL .positive_x

|1DBD00| DEY

.positive_x
|1DBD01| CLC
|1DBD02| ADC.w $0D90,X
|1DBD05| STA.w $0D10,X

|1DBD08| TYA
|1DBD09| ADC.w $0DA0,X
|1DBD0C| STA.w $0D30,X

|1DBD0F| LDY.b #$00
|1DBD11| LDA.w $0FA9
|1DBD14| BPL .positive_y

|1DBD16| DEY

.positive_y
|1DBD17| CLC
|1DBD18| ADC.w $0DB0,X
|1DBD1B| STA.w $0D00,X

|1DBD1E| TYA
|1DBD1F| ADC.w $0ED0,X
|1DBD22| STA.w $0D20,X

|1DBD25| RTS

;===================================================================================================

TrinexxBreath:
.speed
|1DBD26| db  16, -16

;---------------------------------------------------------------------------------------------------

#TrinexxBreath_ice:
|1DBD28| JSL GetScreenCoordinates_long
|1DBD2C| JSR CheckIfActive_bank1D

|1DBD2F| LDA.w $0D50,X
|1DBD32| PHA

|1DBD33| CLC
|1DBD34| ADC.w $0DB0,X
|1DBD37| STA.w $0D50,X

|1DBD3A| JSR MoveSpriteXY_bank1D

|1DBD3D| PLA
|1DBD3E| STA.w $0D50,X

|1DBD41| JSR .add_ice_garnish

;---------------------------------------------------------------------------------------------------

.finish_up
|1DBD44| LDA.b $1A
|1DBD46| AND.b #$03
|1DBD48| BNE .no_shake

|1DBD4A| JSR GetXDisplacementFromLink_bank1D

|1DBD4D| LDA.w $0D50,X
|1DBD50| CMP.w .speed,Y
|1DBD53| BEQ .no_shake

|1DBD55| CLC
|1DBD56| ADC.w Shakeyshake.low,Y
|1DBD59| STA.w $0D50,X

.no_shake
|1DBD5C| JSR CheckSpriteTileCollision_bank1D
|1DBD5F| BEQ .exit_a

|1DBD61| STZ.w $0DD0,X

.exit_a
|1DBD64| RTS

;---------------------------------------------------------------------------------------------------

.add_ice_garnish
|1DBD65| INC.w $0E80,X

|1DBD68| LDA.w $0E80,X
|1DBD6B| AND.b #$07
|1DBD6D| BNE .exit_b

|1DBD6F| LDA.b #$14 ; SFX3.14
|1DBD71| JSL QueueSpriteSFX3WithPan

|1DBD75| PHX
|1DBD76| TXY

|1DBD77| LDX.b #$1D

.next_slot
|1DBD79| LDA.l $7FF800,X
|1DBD7D| BEQ .free_slot

|1DBD7F| DEX
|1DBD80| BPL .next_slot

|1DBD82| DEC.w $0FF8
|1DBD85| BPL .use_search_index

|1DBD87| LDA.b #$1D
|1DBD89| STA.w $0FF8

.use_search_index
|1DBD8C| LDX.w $0FF8

;---------------------------------------------------------------------------------------------------

.free_slot
|1DBD8F| LDA.b #$0C ; GARNISH 0C
|1DBD91| STA.l $7FF800,X
|1DBD95| STA.w $0FB4

|1DBD98| TYA
|1DBD99| STA.l $7FF92C,X

|1DBD9D| LDA.w $0D10,Y
|1DBDA0| STA.l $7FF83C,X

|1DBDA4| LDA.w $0D30,Y
|1DBDA7| STA.l $7FF878,X

;---------------------------------------------------------------------------------------------------

|1DBDAB| LDA.w $0D00,Y
|1DBDAE| CLC
|1DBDAF| ADC.b #$10
|1DBDB1| STA.l $7FF81E,X

|1DBDB5| LDA.w $0D20,Y
|1DBDB8| ADC.b #$00
|1DBDBA| STA.l $7FF85A,X

|1DBDBE| LDA.b #$7F
|1DBDC0| STA.l $7FF90E,X

|1DBDC4| PLX

;---------------------------------------------------------------------------------------------------

.exit_b
|1DBDC5| RTS

;===================================================================================================

#TrinexxBreath_fire:
|1DBDC6| JSL GetScreenCoordinates_long

|1DBDCA| JSR CheckIfActive_bank1D
|1DBDCD| JSR MoveSpriteXY_bank1D

|1DBDD0| JSR TrinexxFire_AddFireGarnish

|1DBDD3| JMP.w .finish_up

;---------------------------------------------------------------------------------------------------

TrinexxFire_AddFireGarnish:
|1DBDD6| INC.w $0E80,X

|1DBDD9| LDA.w $0E80,X
|1DBDDC| AND.b #$07
|1DBDDE| BNE EXIT_1DBE3B

|1DBDE0| LDA.b #$2A ; SFX2.2A
|1DBDE2| JSL QueueSpriteSFX2WithPan

|1DBDE6| LDA.b #$1D

;===================================================================================================
; Enters with
;    A - slot search start
;===================================================================================================
FireBat_SpawnFireballGarnish:
|1DBDE8| PHX

; Give firebat's sprite slot to Y
|1DBDE9| TXY

; Give parameter to X
|1DBDEA| TAX

; A will be the default slot
|1DBDEB| STA.b $00

.next_slot
|1DBDED| LDA.l $7FF800,X
|1DBDF1| BEQ .free_slot

|1DBDF3| DEX
|1DBDF4| BPL .next_slot

; wtf, there's a slot index similar to ancillae
; but there's no point to it really, is there?
|1DBDF6| DEC.w $0FF8
|1DBDF9| BPL .use_search_index

|1DBDFB| LDA.b $00
|1DBDFD| STA.w $0FF8

.use_search_index
|1DBE00| LDX.w $0FF8

;---------------------------------------------------------------------------------------------------

.free_slot
|1DBE03| LDA.b #$10 ; GARNISH 10
|1DBE05| STA.l $7FF800,X
|1DBE09| STA.w $0FB4

|1DBE0C| TYA
|1DBE0D| STA.l $7FF92C,X

|1DBE11| LDA.w $0D10,Y
|1DBE14| STA.l $7FF83C,X

|1DBE18| LDA.w $0D30,Y
|1DBE1B| STA.l $7FF878,X

|1DBE1F| LDA.w $0D00,Y
|1DBE22| CLC
|1DBE23| ADC.b #$10
|1DBE25| STA.l $7FF81E,X

|1DBE29| LDA.w $0D20,Y
|1DBE2C| ADC.b #$00
|1DBE2E| STA.l $7FF85A,X

|1DBE32| LDA.b #$7F
|1DBE34| STA.l $7FF90E,X

|1DBE38| STX.b $00

|1DBE3A| PLX

;---------------------------------------------------------------------------------------------------

#EXIT_1DBE3B:
|1DBE3B| RTS

;===================================================================================================

ChainChomp_ChainOffset:
|1DBE3C| db $00, $10, $20, $30, $40, $50, $60, $70

;---------------------------------------------------------------------------------------------------

SpritePrep_Chainchomp:
|1DBE44| PHX

|1DBE45| LDY.b #$05

|1DBE47| LDA.l ChainChomp_ChainOffset,X
|1DBE4B| TAX

|1DBE4C| REP #$20

.next_link
|1DBE4E| LDA.w $0FD8
|1DBE51| STA.l $7FFC00,X

|1DBE55| LDA.w $0FDA
|1DBE58| STA.l $7FFD00,X

|1DBE5C| INX
|1DBE5D| INX

|1DBE5E| DEY
|1DBE5F| BPL .next_link

;---------------------------------------------------------------------------------------------------

|1DBE61| SEP #$20

|1DBE63| PLX

|1DBE64| LDA.w $0D10,X
|1DBE67| STA.w $0D90,X

|1DBE6A| LDA.w $0D30,X
|1DBE6D| STA.w $0DA0,X

|1DBE70| LDA.w $0D00,X
|1DBE73| STA.w $0DB0,X

|1DBE76| LDA.w $0D20,X
|1DBE79| STA.w $0ED0,X

|1DBE7C| RTL

;===================================================================================================

Sprite_CA_ChainChomp:
|1DBE7D| JSR SpriteDraw_ChainChomp
|1DBE80| JSR CheckIfActive_bank1D
|1DBE83| JSR CheckDamageToAndFromLink_bank1D
|1DBE86| JSR ChainChomp_HandleLeash

|1DBE89| TXA
|1DBE8A| EOR.b $1A
|1DBE8C| AND.b #$03
|1DBE8E| BNE .dont_change_bounce

|1DBE90| LDA.w $0D50,X
|1DBE93| STA.b $01

|1DBE95| LDA.w $0D40,X
|1DBE98| STA.b $00
|1DBE9A| ORA.b $01
|1DBE9C| BEQ .dont_change_bounce

|1DBE9E| JSL ConvertVelocityToAngle
|1DBEA2| AND.b #$0F
|1DBEA4| STA.w $0DE0,X

;---------------------------------------------------------------------------------------------------

.dont_change_bounce
|1DBEA7| JSR MoveSpriteXYZ_bank1D

|1DBEAA| DEC.w $0F80,X
|1DBEAD| DEC.w $0F80,X

|1DBEB0| LDA.w $0F70,X
|1DBEB3| BPL .z_fine

|1DBEB5| STZ.w $0F70,X
|1DBEB8| STZ.w $0F80,X

.z_fine
|1DBEBB| JSL Get16BitSpriteCoords_long

|1DBEBF| LDA.w $0D90,X
|1DBEC2| STA.b $00

|1DBEC4| LDA.w $0DA0,X
|1DBEC7| STA.b $01

|1DBEC9| LDA.w $0DB0,X
|1DBECC| STA.b $02

|1DBECE| LDA.w $0ED0,X
|1DBED1| STA.b $03

|1DBED3| STZ.w $0EC0,X

;---------------------------------------------------------------------------------------------------

|1DBED6| REP #$20

|1DBED8| LDA.w $0FD8
|1DBEDB| SEC
|1DBEDC| SBC.b $00
|1DBEDE| CLC
|1DBEDF| ADC.w #$0030
|1DBEE2| CMP.w #$0060
|1DBEE5| BCS .leash_not_tight

|1DBEE7| LDA.w $0FDA
|1DBEEA| SEC
|1DBEEB| SBC.b $02
|1DBEED| CLC
|1DBEEE| ADC.w #$0030
|1DBEF1| CMP.w #$0060
|1DBEF4| BCS .leash_not_tight

|1DBEF6| SEP #$20

|1DBEF8| INC.w $0EC0,X

;---------------------------------------------------------------------------------------------------

.leash_not_tight
|1DBEFB| SEP #$20

|1DBEFD| LDA.w $0D80,X
|1DBF00| JSL JumpTableLocal
|1DBF04| dw ChainChomp_Idle
|1DBF06| dw ChainChomp_Meander
|1DBF08| dw ChainChomp_InvertLunge
|1DBF0A| dw ChainChomp_Lunge

;===================================================================================================

pool ChainChomp_Idle

.lunge_speed_x
|1DBF0C| db   0,   8,  11,  14,  16,  14,  11,   8
|1DBF14| db   0,  -8, -11, -14, -16, -14, -11,  -8

.lunge_speed_y
|1DBF1C| db -16, -14, -11,  -8,   0,   8,  11,  14
|1DBF24| db  16,  14,  11,   8,   0,  -9, -11, -14

endpool

;---------------------------------------------------------------------------------------------------

ChainChomp_Idle:
|1DBF2C| LDA.w $0DF0,X
|1DBF2F| BNE .delay

|1DBF31| INC.w $0E80,X

|1DBF34| LDA.w $0E80,X
|1DBF37| CMP.b #$04
|1DBF39| BNE .choose_from_more

|1DBF3B| STZ.w $0E80,X

|1DBF3E| LDA.b #$02
|1DBF40| STA.w $0D80,X

|1DBF43| JSL GetRandomNumber
|1DBF47| AND.b #$0F
|1DBF49| TAY
|1DBF4A| LDA.w .lunge_speed_x,Y

|1DBF4D| ASL A
|1DBF4E| ASL A
|1DBF4F| STA.w $0D50,X

|1DBF52| LDA.w .lunge_speed_y,Y
|1DBF55| ASL A
|1DBF56| ASL A
|1DBF57| STA.w $0D40,X

; This always fails
|1DBF5A| JSL GetRandomNumber
|1DBF5E| AND.b #$00
|1DBF60| BNE .use_random_location

|1DBF62| LDA.b #$40
|1DBF64| JSL ApplySpeedTowardsLink_long

|1DBF68| LDA.b #$04 ; SFX3.04
|1DBF6A| JSL QueueSpriteSFX3WithPan

.use_random_location
|1DBF6E| RTS

;---------------------------------------------------------------------------------------------------

; Seems to also last longer when it lunges
.choose_from_more
|1DBF6F| JSL GetRandomNumber
|1DBF73| AND.b #$1F
|1DBF75| ADC.b #$10
|1DBF77| STA.w $0DF0,X

|1DBF7A| JSL GetRandomNumber
|1DBF7E| AND.b #$0F
|1DBF80| TAY

|1DBF81| LDA.w .lunge_speed_x,Y
|1DBF84| STA.w $0D50,X

|1DBF87| LDA.w .lunge_speed_y,Y
|1DBF8A| STA.w $0D40,X

|1DBF8D| INC.w $0D80,X

|1DBF90| RTS

;---------------------------------------------------------------------------------------------------

.delay
|1DBF91| JSR ZeroVelocityXY_bank1D

|1DBF94| RTS

;===================================================================================================

ChainChomp_Meander:
|1DBF95| LDA.w $0DF0,X
|1DBF98| BNE .boop_da_bop

|1DBF9A| LDA.b #$20
|1DBF9C| STA.w $0DF0,X

|1DBF9F| STZ.w $0D80,X

.boop_da_bop
|1DBFA2| AND.b #$0F
|1DBFA4| BNE .skip_chain

|1DBFA6| JSR ChainChomp_MoveChain

;---------------------------------------------------------------------------------------------------

.skip_chain
|1DBFA9| LDA.w $0F70,X
|1DBFAC| BNE .bouncing

|1DBFAE| LDA.b #$10
|1DBFB0| STA.w $0F80,X

.bouncing
|1DBFB3| LDA.w $0EC0,X
|1DBFB6| BNE .exit

|1DBFB8| LDA.w $0D90,X
|1DBFBB| STA.b $04

|1DBFBD| LDA.w $0DA0,X
|1DBFC0| STA.b $05

|1DBFC2| LDA.w $0DB0,X
|1DBFC5| STA.b $06

|1DBFC7| LDA.w $0ED0,X
|1DBFCA| STA.b $07

;---------------------------------------------------------------------------------------------------

|1DBFCC| LDA.b #$10
|1DBFCE| JSL ProjectSpriteSpeedTowardsLocation_long

|1DBFD2| LDA.b $00
|1DBFD4| STA.w $0D40,X

|1DBFD7| LDA.b $01
|1DBFD9| STA.w $0D50,X

|1DBFDC| JSR MoveSpriteXY_bank1D

|1DBFDF| LDA.b #$0C
|1DBFE1| STA.w $0DF0,X

.exit
|1DBFE4| RTS

;===================================================================================================
; Seems unreachable?
;===================================================================================================
ChainChomp_InvertLunge:
|1DBFE5| LDA.w $0EC0,X
|1DBFE8| BNE .stay_true

|1DBFEA| LDA.w $0D50,X
|1DBFED| EOR.b #$FF
|1DBFEF| INC A
|1DBFF0| STA.w $0D50,X

|1DBFF3| LDA.w $0D40,X
|1DBFF6| EOR.b #$FF
|1DBFF8| INC A
|1DBFF9| STA.w $0D40,X

|1DBFFC| JSR MoveSpriteXY_bank1D
|1DBFFF| JSR ZeroVelocityXY_bank1D

|1DC002| INC.w $0D80,X

|1DC005| LDA.b #$30
|1DC007| STA.w $0E00,X

.stay_true
|1DC00A| BRA .handle_chain

;---------------------------------------------------------------------------------------------------

#ChainChomp_Lunge:
|1DC00C| LDA.w $0E00,X
|1DC00F| BNE .handle_chain

|1DC011| STZ.w $0D80,X

|1DC014| LDA.b #$30
|1DC016| STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

.handle_chain
|1DC019| JSR ChainChomp_MoveChain
|1DC01C| JSR ChainChomp_MoveChain

|1DC01F| RTS

;===================================================================================================

pool ChainChomp_MoveChain

.operand
|1DC020| dw $00CD
|1DC022| dw $009A
|1DC024| dw $0066
|1DC026| dw $0033
|1DC028| dw $0008

endpool

;---------------------------------------------------------------------------------------------------

ChainChomp_MoveChain:
|1DC02A| LDA.w $0D90,X
|1DC02D| STA.b $00

|1DC02F| LDA.w $0DA0,X
|1DC032| STA.b $01

|1DC034| LDA.w $0DB0,X
|1DC037| STA.b $02

|1DC039| LDA.w $0ED0,X
|1DC03C| STA.b $03

;---------------------------------------------------------------------------------------------------

|1DC03E| PHX

|1DC03F| LDA.b #$05
|1DC041| STA.b $0D

|1DC043| LDA.w ChainChomp_ChainOffset,X
|1DC046| TAX

|1DC047| LDA.l $7FFC00,X
|1DC04B| SEC
|1DC04C| SBC.b $00
|1DC04E| STA.b $04

|1DC050| LDA.l $7FFD00,X
|1DC054| SEC
|1DC055| SBC.b $02
|1DC057| STA.b $05

|1DC059| INX
|1DC05A| INX

;---------------------------------------------------------------------------------------------------

.next_link
|1DC05B| LDA.b $04
|1DC05D| PHP
|1DC05E| BPL .pos_x

|1DC060| EOR.b #$FF
|1DC062| INC A

.pos_x
|1DC063| STA.w WRMPYA

|1DC066| PHX

|1DC067| TXA
|1DC068| AND.b #$0F
|1DC06A| TAX

|1DC06B| LDA.w .operand-2,X
|1DC06E| STA.w WRMPYB

|1DC071| PLX

|1DC072| NOP ; 7 NOP
|1DC073| NOP
|1DC074| NOP
|1DC075| NOP
|1DC076| NOP
|1DC077| NOP
|1DC078| NOP

|1DC079| LDA.w RDMPYH
|1DC07C| LDY.b #$00

|1DC07E| PLP
|1DC07F| BPL .sign_correct_x

|1DC081| EOR.b #$FF
|1DC083| DEY

.sign_correct_x
|1DC084| CLC
|1DC085| ADC.b $00
|1DC087| STA.b $08

|1DC089| TYA
|1DC08A| ADC.b $01
|1DC08C| STA.b $09

;---------------------------------------------------------------------------------------------------

|1DC08E| LDA.b $05
|1DC090| PHP
|1DC091| BPL .pos_y

|1DC093| EOR.b #$FF
|1DC095| INC A

.pos_y
|1DC096| STA.w WRMPYA

|1DC099| PHX

|1DC09A| TXA
|1DC09B| AND.b #$0F
|1DC09D| TAX

|1DC09E| LDA.w .operand-2,X
|1DC0A1| STA.w WRMPYB

|1DC0A4| PLX

|1DC0A5| NOP ; 7 NOP
|1DC0A6| NOP
|1DC0A7| NOP
|1DC0A8| NOP
|1DC0A9| NOP
|1DC0AA| NOP
|1DC0AB| NOP

|1DC0AC| LDA.w RDMPYH
|1DC0AF| LDY.b #$00

|1DC0B1| PLP
|1DC0B2| BPL .sign_correct_y

|1DC0B4| EOR.b #$FF
|1DC0B6| DEY

.sign_correct_y
|1DC0B7| CLC
|1DC0B8| ADC.b $02
|1DC0BA| STA.b $0A

|1DC0BC| TYA
|1DC0BD| ADC.b $03
|1DC0BF| STA.b $0B

;---------------------------------------------------------------------------------------------------

|1DC0C1| REP #$20

|1DC0C3| LDA.l $7FFC00,X
|1DC0C7| CMP.b $08
|1DC0C9| BEQ .x_correct
|1DC0CB| BPL .decrement_x

; +2 so the DEC makes it +1
|1DC0CD| INC A
|1DC0CE| INC A

.decrement_x
|1DC0CF| DEC A
|1DC0D0| STA.l $7FFC00,X

.x_correct
|1DC0D4| LDA.l $7FFD00,X
|1DC0D8| CMP.b $0A
|1DC0DA| BEQ .y_correct
|1DC0DC| BPL .decrement_y

; +2 so the DEC makes it +1
|1DC0DE| INC A
|1DC0DF| INC A

.decrement_y
|1DC0E0| DEC A
|1DC0E1| STA.l $7FFD00,X

.y_correct
|1DC0E5| SEP #$20

|1DC0E7| INX
|1DC0E8| INX

|1DC0E9| DEC.b $0D
|1DC0EB| BMI .done

|1DC0ED| JMP.w .next_link

.done
|1DC0F0| PLX

|1DC0F1| RTS

;===================================================================================================
; TODO how is this distinct from above?
;===================================================================================================
ChainChomp_HandleLeash:
|1DC0F2| PHX

|1DC0F3| LDA.w ChainChomp_ChainOffset,X
|1DC0F6| TAX

|1DC0F7| REP #$20

|1DC0F9| STZ.b $00

|1DC0FB| LDA.w $0FD8
|1DC0FE| STA.l $7FFC00,X

|1DC102| LDA.w $0FDA
|1DC105| STA.l $7FFD00,X

;---------------------------------------------------------------------------------------------------

.next_link
|1DC109| LDA.l $7FFC00,X
|1DC10D| SEC
|1DC10E| SBC.l $7FFC02,X

|1DC112| CMP.w #$0008
|1DC115| BPL .x_left

|1DC117| CMP.w #$FFF8
|1DC11A| BPL .x_done

|1DC11C| LDA.l $7FFC00,X
|1DC120| CLC
|1DC121| ADC.w #$0008
|1DC124| STA.l $7FFC02,X

|1DC128| BRA .x_done

.x_left
|1DC12A| LDA.l $7FFC00,X
|1DC12E| SEC
|1DC12F| SBC.w #$0008
|1DC132| STA.l $7FFC02,X

;---------------------------------------------------------------------------------------------------

.x_done
|1DC136| LDA.l $7FFD00,X
|1DC13A| SEC
|1DC13B| SBC.l $7FFD02,X

|1DC13F| CMP.w #$0008
|1DC142| BPL .y_up

|1DC144| CMP.w #$FFF8
|1DC147| BPL .done_y

|1DC149| LDA.l $7FFD00,X
|1DC14D| CLC
|1DC14E| ADC.w #$0008
|1DC151| STA.l $7FFD02,X

|1DC155| BRA .done_y

.y_up
|1DC157| LDA.l $7FFD00,X
|1DC15B| SEC
|1DC15C| SBC.w #$0008
|1DC15F| STA.l $7FFD02,X

;---------------------------------------------------------------------------------------------------

.done_y
|1DC163| INX
|1DC164| INX

|1DC165| INC.b $00

|1DC167| LDA.b $00
|1DC169| CMP.w #$0006
|1DC16C| BCC .next_link

;---------------------------------------------------------------------------------------------------

|1DC16E| PLX

|1DC16F| SEP #$20

|1DC171| RTS

;===================================================================================================

pool SpriteDraw_ChainChomp

.step
|1DC172| db $00, $01, $02, $03, $03, $03, $02, $01
|1DC17A| db $00, $00, $00, $04, $04, $04, $00, $00

.flip
|1DC182| db $40, $40, $40, $40, $00, $00, $00, $00
|1DC18A| db $00, $00, $00, $00, $40, $40, $40, $40

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_ChainChomp:
|1DC192| LDY.w $0DE0,X

|1DC195| LDA.w .step,Y
|1DC198| STA.w $0DC0,X

|1DC19B| LDA.w $0F50,X
|1DC19E| AND.b #$3F
|1DC1A0| ORA.w .flip,Y
|1DC1A3| STA.w $0F50,X

|1DC1A6| JSL SpriteDraw_SingleLarge_long

;---------------------------------------------------------------------------------------------------

|1DC1AA| LDA.w $0E00,X
|1DC1AD| AND.b #$01
|1DC1AF| CLC
|1DC1B0| ADC.b #$04
|1DC1B2| STA.b $08
|1DC1B4| STZ.b $09

|1DC1B6| LDA.b #$05
|1DC1B8| STA.b $0D

;---------------------------------------------------------------------------------------------------

|1DC1BA| PHX

|1DC1BB| LDA.w ChainChomp_ChainOffset,X
|1DC1BE| TAX

|1DC1BF| LDY.b #$04

.next_link
|1DC1C1| REP #$20

|1DC1C3| LDA.l $7FFC00,X

|1DC1C7| CLC
|1DC1C8| ADC.b $08
|1DC1CA| SEC
|1DC1CB| SBC.b $E2
|1DC1CD| STA.b ($90),Y

|1DC1CF| AND.w #$0100
|1DC1D2| STA.b $0E

|1DC1D4| LDA.l $7FFD00,X
|1DC1D8| CLC
|1DC1D9| ADC.b $08
|1DC1DB| SEC
|1DC1DC| SBC.b $E8
|1DC1DE| INY
|1DC1DF| STA.b ($90),Y

|1DC1E1| CLC
|1DC1E2| ADC.w #$0010
|1DC1E5| CMP.w #$0100

|1DC1E8| SEP #$20
|1DC1EA| BCC .on_screen

|1DC1EC| LDA.b #$F0
|1DC1EE| STA.b ($90),Y

.on_screen
|1DC1F0| LDA.b #$8B
|1DC1F2| INY
|1DC1F3| STA.b ($90),Y

|1DC1F5| LDA.b $05
|1DC1F7| AND.b #$F0
|1DC1F9| ORA.b #$0D
|1DC1FB| INY
|1DC1FC| STA.b ($90),Y

|1DC1FE| PHY

|1DC1FF| TYA
|1DC200| LSR A
|1DC201| LSR A
|1DC202| TAY

|1DC203| LDA.b $0F
|1DC205| STA.b ($92),Y

|1DC207| PLY
|1DC208| INY

|1DC209| INX
|1DC20A| INX

|1DC20B| DEC.b $0D
|1DC20D| BPL .next_link

;---------------------------------------------------------------------------------------------------

|1DC20F| PLX

|1DC210| RTS

;===================================================================================================

CheckDamageToAndFromLink_bank1D:
|1DC211| JSL CheckDamageFromLink_long
|1DC215| JSL CheckDamageToLink_long

|1DC219| RTS

;===================================================================================================

SpriteModule_Active_bank1D:
|1DC21A| PHB
|1DC21B| PHK
|1DC21C| PLB

|1DC21D| JSR .main

|1DC220| PLB

|1DC221| RTL

;---------------------------------------------------------------------------------------------------

.main
|1DC222| LDA.w $0E20,X
|1DC225| SEC
|1DC226| SBC.b #$BD

|1DC228| REP #$30

|1DC22A| AND.w #$00FF
|1DC22D| ASL A
|1DC22E| TAY

; good ol' 6502 jumps
|1DC22F| LDA.w .vectors,Y
|1DC232| DEC A
|1DC233| PHA

|1DC234| SEP #$30

|1DC236| RTS

;---------------------------------------------------------------------------------------------------

.vectors
|1DC237| dw Sprite_BD_Vitreous
|1DC239| dw Sprite_BE_VitreousEye
|1DC23B| dw Sprite_BF_Lightning
|1DC23D| dw Sprite_C0_Catfish
|1DC23F| dw Sprite_C1_CutsceneAgahnim
|1DC241| dw Sprite_C2_Boulder
|1DC243| dw Sprite_C3_Gibo
|1DC245| dw Sprite_C4_Thief
|1DC247| dw Sprite_C5_Medusa
|1DC249| dw Sprite_C6_YomoMedusa
|1DC24B| dw Sprite_C7_Pokey
|1DC24D| dw Sprite_C8_BigFairy
|1DC24F| dw Sprite_C9_Tektite
|1DC251| dw Sprite_CA_ChainChomp
|1DC253| dw Sprite_CB_TrinexxRockHead
|1DC255| dw Sprite_CC_TrinexxFireHead
|1DC257| dw Sprite_CD_TrinexxIceHead
|1DC259| dw Sprite_CE_Blind
|1DC25B| dw Sprite_CF_Swamola
|1DC25D| dw Sprite_D0_Lynel
|1DC25F| dw Sprite_D1_BunnyBeam
|1DC261| dw Sprite_D2_FloppingFish
|1DC263| dw Sprite_D3_Stal
|1DC265| dw Sprite_D4_Landmine
|1DC267| dw Sprite_D5_DiggingGameGuy
|1DC269| dw Sprite_D6_Ganon
|1DC26B| dw Sprite_D7_Ganon

;===================================================================================================

TektiteSpeed:

.x
|1DC26D| db  16, -16,  16, -16

.y
|1DC271| db  16,  16, -16, -16

;---------------------------------------------------------------------------------------------------

Sprite_C9_Tektite:
|1DC275| LDA.w $0EC0,X
|1DC278| BEQ Tektite

|1DC27A| STA.w $0BA0,X
|1DC27D| PHA

|1DC27E| LDA.b #$30
|1DC280| STA.w $0B89,X

|1DC283| PLA
|1DC284| DEC A
|1DC285| JSL JumpTableLocal
|1DC289| dw PhantomGanon
|1DC28B| dw GanonTrident
|1DC28D| dw FireBat_Spiral
|1DC28F| dw FireBat_Launched
|1DC291| dw FireBat_Trailer

;---------------------------------------------------------------------------------------------------

Tektite:
|1DC293| LDA.w $0E00,X
|1DC296| BEQ .use_current_draw

|1DC298| STZ.w $0DC0,X

.use_current_draw
|1DC29B| JSR SpriteDraw_Tektite

|1DC29E| JSR CheckIfActive_bank1D
|1DC2A1| JSR HandleSpriteRecoil_bank1D
|1DC2A4| JSR CheckDamageToAndFromLink_bank1D

|1DC2A7| JSR MoveSpriteXYZ_bank1D
|1DC2AA| JSR Sprite_BounceFromTileCollision

|1DC2AD| LDA.w $0F80,X
|1DC2B0| SEC
|1DC2B1| SBC.b #$01
|1DC2B3| STA.w $0F80,X

|1DC2B6| LDA.w $0F70,X
|1DC2B9| BPL .airborne

|1DC2BB| STZ.w $0F70,X
|1DC2BE| STZ.w $0F80,X

.airborne
|1DC2C1| LDA.w $0D80,X
|1DC2C4| JSL JumpTableLocal
|1DC2C8| dw Tektite_Idle
|1DC2CA| dw Tektite_Midjump
|1DC2CC| dw Tektite_Bouncy

;===================================================================================================

pool Tektite_Idle

.direction
|1DC2CE| db $03, $02, $01, $00

endpool

;---------------------------------------------------------------------------------------------------

Tektite_Idle:
|1DC2D2| JSR GetDirectionTowardsLink_bank1D

|1DC2D5| LDA.b $0E
|1DC2D7| CLC
|1DC2D8| ADC.b #$28
|1DC2DA| CMP.b #$50
|1DC2DC| BCS .dont_dodge

|1DC2DE| LDA.b $0F
|1DC2E0| CLC
|1DC2E1| ADC.b #$28
|1DC2E3| CMP.b #$50
|1DC2E5| BCS .dont_dodge

|1DC2E7| LDA.b $44
|1DC2E9| CMP.b #$80
|1DC2EB| BEQ .dont_dodge

|1DC2ED| LDA.w $0F70,X
|1DC2F0| ORA.w $0F00,X
|1DC2F3| BNE .dont_dodge

|1DC2F5| LDA.b $EE
|1DC2F7| CMP.w $0F20,X
|1DC2FA| BNE .dont_dodge

;---------------------------------------------------------------------------------------------------

|1DC2FC| STY.b $00

|1DC2FE| LDA.b $2F
|1DC300| LSR A
|1DC301| TAY

|1DC302| LDA.b $00
|1DC304| CMP.w .direction,Y
|1DC307| BEQ .dont_dodge

;---------------------------------------------------------------------------------------------------

|1DC309| LDA.b #$20
|1DC30B| JSL ProjectSpriteSpeedTowardsLink_long

|1DC30F| LDA.b $01
|1DC311| EOR.b #$FF
|1DC313| INC A
|1DC314| STA.w $0D50,X

|1DC317| LDA.b $00
|1DC319| EOR.b #$FF
|1DC31B| INC A
|1DC31C| STA.w $0D40,X

|1DC31F| LDA.b #$10
|1DC321| STA.w $0F80,X

|1DC324| INC.w $0D80,X

|1DC327| RTS

;---------------------------------------------------------------------------------------------------

.dont_dodge
|1DC328| LDA.w $0DF0,X
|1DC32B| BNE .wait

|1DC32D| INC.w $0D80,X

|1DC330| INC.w $0DA0,X

|1DC333| LDA.w $0DA0,X
|1DC336| CMP.b #$04
|1DC338| BNE .random_direction

;---------------------------------------------------------------------------------------------------

; jump towards link
|1DC33A| STZ.w $0DA0,X
|1DC33D| INC.w $0D80,X

|1DC340| JSL GetRandomNumber
|1DC344| AND.b #$3F
|1DC346| ADC.b #$30
|1DC348| STA.w $0DF0,X

|1DC34B| LDA.b #$0C
|1DC34D| STA.w $0F80,X

|1DC350| JSR GetYDisplacementFromLink_bank1D
|1DC353| TYA

|1DC354| ASL A
|1DC355| STA.b $00

|1DC357| JSR GetXDisplacementFromLink_bank1D
|1DC35A| TYA

|1DC35B| ORA.b $00
|1DC35D| BRA .set_speed

;---------------------------------------------------------------------------------------------------

.random_direction
|1DC35F| JSL GetRandomNumber
|1DC363| AND.b #$07
|1DC365| ADC.b #$18
|1DC367| STA.w $0F80,X

|1DC36A| JSL GetRandomNumber
|1DC36E| AND.b #$03

;---------------------------------------------------------------------------------------------------

.set_speed
|1DC370| TAY

|1DC371| LDA.w TektiteSpeed.x,Y
|1DC374| STA.w $0D50,X

|1DC377| LDA.w TektiteSpeed.y,Y
|1DC37A| STA.w $0D40,X

|1DC37D| RTS

;---------------------------------------------------------------------------------------------------

.wait
|1DC37E| LSR A
|1DC37F| LSR A
|1DC380| LSR A
|1DC381| LSR A
|1DC382| AND.b #$01
|1DC384| STA.w $0DC0,X

|1DC387| RTS

;===================================================================================================

Tektite_Midjump:
|1DC388| LDA.w $0F70,X
|1DC38B| BNE .airborne

;---------------------------------------------------------------------------------------------------

#Tektite_GoIdle:
|1DC38D| STZ.w $0D80,X

|1DC390| JSL GetRandomNumber
|1DC394| AND.b #$3F
|1DC396| ADC.b #$48
|1DC398| STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

#ZeroVelocityXY_bank1D:
|1DC39B| STZ.w $0D40,X
|1DC39E| STZ.w $0D50,X

|1DC3A1| RTS

;---------------------------------------------------------------------------------------------------

.airborne
|1DC3A2| LDA.b #$02
|1DC3A4| STA.w $0DC0,X

|1DC3A7| RTS

;===================================================================================================

Tektite_Bouncy:
|1DC3A8| LDA.w $0DF0,X
|1DC3AB| BEQ Tektite_GoIdle

|1DC3AD| LDA.w $0F70,X
|1DC3B0| BNE .airborne

|1DC3B2| LDA.b #$0C
|1DC3B4| STA.w $0F80,X

|1DC3B7| INC.w $0F70,X

|1DC3BA| LDA.b #$08
|1DC3BC| STA.w $0E00,X

.airborne
|1DC3BF| LDA.b #$02
|1DC3C1| STA.w $0DC0,X

|1DC3C4| RTS

;===================================================================================================

pool SpriteDraw_Tektite

.oam_groups
; group00
|1DC3C5| dw  -8,   0 : db $C8, $00, $00, $02
|1DC3CD| dw   8,   0 : db $C8, $40, $00, $02

; group01
|1DC3D5| dw  -8,   0 : db $CA, $00, $00, $02
|1DC3DD| dw   8,   0 : db $CA, $40, $00, $02

; group02
|1DC3E5| dw  -8,   0 : db $EA, $00, $00, $02
|1DC3ED| dw   8,   0 : db $EA, $40, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Tektite:
|1DC3F5| LDA.b #$00
|1DC3F7| XBA
|1DC3F8| LDA.w $0DC0,X

|1DC3FB| REP #$20

|1DC3FD| ASL A ; x16
|1DC3FE| ASL A
|1DC3FF| ASL A
|1DC400| ASL A
|1DC401| ADC.w #.oam_groups
|1DC404| STA.b $08

|1DC406| SEP #$20

|1DC408| LDA.b #$02
|1DC40A| JSR TabulatedSpriteDraw_bank1D
|1DC40D| JSL DrawSpriteShadow_long

|1DC411| RTS

;===================================================================================================

UNREACHABLE_1DC412:
|1DC412| db $08, $F8

;===================================================================================================

Sprite_C8_BigFairy:
|1DC414| LDA.w $0EB0,X
|1DC417| BNE FairyCloud

|1DC419| JMP.w BigFairy

;===================================================================================================

FairyCloud:
|1DC41C| JSL GetScreenCoordinates_long
|1DC420| JSR CheckIfActive_bank1D

|1DC423| INC.w $0E80,X
|1DC426| JSR SpawnFairySparkle

|1DC429| LDA.w $0E80,X
|1DC42C| AND.b #$1F
|1DC42E| BNE .no_sfx

|1DC430| LDA.b #$31 ; SFX2.31
|1DC432| JSL QueueSpriteSFX2WithPan

.no_sfx
|1DC436| LDA.w $0D80,X
|1DC439| JSL JumpTableLocal
|1DC43D| dw FairyCloud_ApproachLink
|1DC43F| dw FairyCloud_WaitForHeal
|1DC441| dw FairyCloud_Dissipate

;===================================================================================================

FairyCloud_ApproachLink:
|1DC443| LDA.b #$00
|1DC445| STA.w $0D90,X

|1DC448| LDA.b #$08
|1DC44A| JSL ApplySpeedTowardsLink_long

|1DC44E| JSR MoveSpriteXY_bank1D
|1DC451| JSL Get16BitSpriteCoords_long

;---------------------------------------------------------------------------------------------------

|1DC455| REP #$20

|1DC457| LDA.b $22
|1DC459| SEC
|1DC45A| SBC.w $0FD8
|1DC45D| CLC
|1DC45E| ADC.w #$0003
|1DC461| CMP.w #$0006
|1DC464| BCS .exit

|1DC466| LDA.b $20
|1DC468| SEC
|1DC469| SBC.w $0FDA
|1DC46C| CLC
|1DC46D| ADC.w #$000B
|1DC470| CMP.w #$0006
|1DC473| BCS .exit

; It adds health even though $A0 is the max
; how peculiar
|1DC475| LDA.w #$00A0
|1DC478| CLC
|1DC479| ADC.l $7EF372
|1DC47D| STA.l $7EF372

|1DC481| SEP #$20

|1DC483| INC.w $0D80,X

.exit
|1DC486| SEP #$20

|1DC488| RTS

;===================================================================================================

FairyCloud_WaitForHeal:
|1DC489| LDA.l $7EF36D
|1DC48D| CMP.l $7EF36C
|1DC491| BNE .need_more_health

|1DC493| INC.w $0D80,X

|1DC496| LDA.b #$70
|1DC498| STA.w $0E10

.need_more_health
|1DC49B| RTS

;===================================================================================================

FairyCloud_Dissipate:
|1DC49C| LDA.w $0E80,X
|1DC49F| AND.b #$0F
|1DC4A1| BNE .exit

|1DC4A3| LDA.w $0D90,X
|1DC4A6| BMI .exit

|1DC4A8| SEC
|1DC4A9| ROL.w $0D90,X

|1DC4AC| LDA.w $0D90,X
|1DC4AF| CMP.b #$80
|1DC4B1| BCC .exit

|1DC4B3| LDA.b #$FF
|1DC4B5| STA.w $0D90,X

|1DC4B8| STZ.w $02E4
|1DC4BB| STZ.w $0DD0,X

.exit
|1DC4BE| RTS

;===================================================================================================

BigFairy:
|1DC4BF| LDA.w $0E10,X
|1DC4C2| BEQ .continue

|1DC4C4| CMP.b #$40
|1DC4C6| BCS .continue

|1DC4C8| DEC A
|1DC4C9| BNE .dont_die

|1DC4CB| STZ.w $0DD0,X

.dont_die
|1DC4CE| LSR A
|1DC4CF| BCC .continue

|1DC4D1| RTS

;---------------------------------------------------------------------------------------------------

.continue
|1DC4D2| JSR SpriteDraw_BigFairy

|1DC4D5| DEC.w $0ED0,X
|1DC4D8| BPL .delay_step

|1DC4DA| LDA.b #$05
|1DC4DC| STA.w $0ED0,X

|1DC4DF| LDA.w $0DC0,X
|1DC4E2| INC A
|1DC4E3| AND.b #$03
|1DC4E5| STA.w $0DC0,X

.delay_step
|1DC4E8| JSR CheckIfActive_bank1D

|1DC4EB| INC.w $0E80,X

|1DC4EE| LDA.w $0D80,X
|1DC4F1| JSL JumpTableLocal
|1DC4F5| dw BigFairy_WaitForLink
|1DC4F7| dw BigFairy_DoAbsolutelyNothing

;===================================================================================================

BigFairy_WaitForLink:
|1DC4F9| JSR SpawnFairySparkle

|1DC4FC| LDA.b #$01
|1DC4FE| STA.w $0D90,X

|1DC501| JSR GetDirectionTowardsLink_bank1D

|1DC504| LDA.b $0F
|1DC506| CLC
|1DC507| ADC.b #$30
|1DC509| CMP.b #$60
|1DC50B| BCS .exit

|1DC50D| LDA.b $0E
|1DC50F| CLC
|1DC510| ADC.b #$30
|1DC512| CMP.b #$60
|1DC514| BCS .exit

;---------------------------------------------------------------------------------------------------

|1DC516| JSL CancelDash_long

|1DC51A| INC.w $0D80,X

|1DC51D| LDA.b #$58 ; MESSAGE 0158
|1DC51F| STA.w $1CF0

|1DC522| LDA.b #$01
|1DC524| STA.w $1CF1

|1DC527| JSL ShowMessageMinimal

;---------------------------------------------------------------------------------------------------

; set cutscene flag
|1DC52B| LDA.b #$01
|1DC52D| STA.w $02E4

|1DC530| LDA.b #$C8 ; SPRITE C8
|1DC532| JSL SpawnSpriteDynamically
|1DC536| JSL SetSpawnedSpriteCoordinates

|1DC53A| LDA.b #$01
|1DC53C| STA.w $0EB0,Y

|1DC53F| LDA.w $0D00,Y
|1DC542| SEC
|1DC543| SBC.w $0F70,X
|1DC546| STA.w $0D00,Y

|1DC549| LDA.b #$00
|1DC54B| STA.w $0F70,Y

.exit
|1DC54E| RTS

;===================================================================================================

BigFairy_DoAbsolutelyNothing:
|1DC54F| RTS

;===================================================================================================

pool SpriteDraw_BigFairy

.oam_groups
; group00
|1DC550| dw  -4,  -8 : db $8E, $00, $00, $02
|1DC558| dw   4,  -8 : db $8E, $40, $00, $02
|1DC560| dw  -4,   8 : db $AE, $00, $00, $02
|1DC568| dw   4,   8 : db $AE, $40, $00, $02

; group01
|1DC570| dw  -4,  -8 : db $8C, $00, $00, $02
|1DC578| dw   4,  -8 : db $8C, $40, $00, $02
|1DC580| dw  -4,   8 : db $AC, $00, $00, $02
|1DC588| dw   4,   8 : db $AC, $40, $00, $02

; group02
|1DC590| dw  -4,  -8 : db $8A, $00, $00, $02
|1DC598| dw   4,  -8 : db $8A, $40, $00, $02
|1DC5A0| dw  -4,   8 : db $AA, $00, $00, $02
|1DC5A8| dw   4,   8 : db $AA, $40, $00, $02

; group03
|1DC5B0| dw  -4,  -8 : db $8C, $00, $00, $02
|1DC5B8| dw   4,  -8 : db $8C, $40, $00, $02
|1DC5C0| dw  -4,   8 : db $AC, $00, $00, $02
|1DC5C8| dw   4,   8 : db $AC, $40, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_BigFairy:
|1DC5D0| LDA.b #$00
|1DC5D2| XBA
|1DC5D3| LDA.w $0DC0,X

|1DC5D6| REP #$20

|1DC5D8| ASL A ; x32
|1DC5D9| ASL A
|1DC5DA| ASL A
|1DC5DB| ASL A
|1DC5DC| ASL A

|1DC5DD| ADC.w #.oam_groups
|1DC5E0| STA.b $08

|1DC5E2| SEP #$20

|1DC5E4| LDA.b #$04
|1DC5E6| JSR TabulatedSpriteDraw_bank1D
|1DC5E9| JSL DrawSpriteShadow_long

|1DC5ED| RTS

;===================================================================================================

pool SpawnFairySparkle

.offset_low
|1DC5EE| db -12,  -6,   0,   6
|1DC5F2| db  12,  18,  -9,  -3
|1DC5F6| db   3,   9,  15,  21

.offset_high
|1DC5FA| db  -1,  -1,   0,   0
|1DC5FE| db   0,   0,  -1,  -1
|1DC602| db   0,   0,   0,   0

.offset_index
|1DC606| db   0,   1,   2,   3
|1DC60A| db   4,   5,   2,   3
|1DC60E| db   6,   7,   8,   9
|1DC612| db  10,  11,   8,   9

endpool

;---------------------------------------------------------------------------------------------------

SpawnFairySparkle:
|1DC616| LDA.w $0D90,X
|1DC619| BMI .exit

|1DC61B| AND.w $0E80,X
|1DC61E| BNE .exit

|1DC620| JSL GetRandomNumber
|1DC624| AND.b #$07
|1DC626| TAY

|1DC627| LDA.w .offset_index,Y
|1DC62A| TAY

|1DC62B| LDA.w .offset_low,Y
|1DC62E| STA.b $00

|1DC630| LDA.w .offset_high,Y
|1DC633| STA.b $01

|1DC635| JSL GetRandomNumber
|1DC639| AND.b #$07
|1DC63B| TAY

|1DC63C| LDA.w .offset_index,Y
|1DC63F| TAY

|1DC640| LDA.w .offset_low,Y
|1DC643| STA.b $02

|1DC645| LDA.w .offset_high,Y
|1DC648| STA.b $03

|1DC64A| JSL GarnishSpawn_Sparkle

.exit
|1DC64E| RTS

;===================================================================================================

Sprite_C7_Pokey:
|1DC64F| LDA.w $0DB0,X
|1DC652| BEQ Pokey_FullStack

;===================================================================================================

PokeyPart:
|1DC654| JSL SpriteDraw_SingleLarge_long
|1DC658| JSR CheckIfActive_bank1D
|1DC65B| JSR CheckDamageToAndFromLink_bank1D
|1DC65E| JSR MoveSpriteXYZ_bank1D

|1DC661| DEC.w $0F80,X
|1DC664| DEC.w $0F80,X

|1DC667| LDA.w $0F70,X
|1DC66A| BPL .no_bounce

|1DC66C| LDA.b #$10
|1DC66E| STA.w $0F80,X
|1DC671| STZ.w $0F70,X

.no_bounce
|1DC674| JSR Sprite_BounceFromTileCollision
|1DC677| BEQ .no_tile_collision

|1DC679| LDA.b #$21 ; SFX2.21
|1DC67B| JSL QueueSpriteSFX2WithPan

.no_tile_collision
|1DC67F| LDA.w $0ED0,X
|1DC682| CMP.b #$03
|1DC684| BCC .exit

|1DC686| LDA.b #$06
|1DC688| STA.w $0DD0,X

|1DC68B| LDA.b #$0A
|1DC68D| STA.w $0DF0,X

|1DC690| STZ.w $0BE0,X

|1DC693| LDA.b #$1E ; SFX2.1E
|1DC695| JSL QueueSpriteSFX2WithPan

.exit
|1DC699| RTS

;===================================================================================================

Pokey_FullStack:
|1DC69A| JSR SpriteDraw_Pokey
|1DC69D| JSR CheckIfActive_bank1D

|1DC6A0| LDA.w $0EA0,X
|1DC6A3| BEQ .no_PLP ; for PulL from stack Pokey

|1DC6A5| LDY.w $0D90,X
|1DC6A8| BEQ .no_PLP

|1DC6AA| CMP.b #$0F
|1DC6AC| BNE .no_PLP

|1DC6AE| LDA.b #$06
|1DC6B0| STA.w $0EA0,X

|1DC6B3| LDA.w $0F70,X
|1DC6B6| CLC
|1DC6B7| ADC.w $0DA0,X
|1DC6BA| STA.w $0F70,X

|1DC6BD| DEC.w $0D90,X
|1DC6C0| BNE .dont_restore_hp

|1DC6C2| LDA.b #$11
|1DC6C4| STA.w $0E50,X

;---------------------------------------------------------------------------------------------------

.dont_restore_hp
|1DC6C7| LDA.w $0D50,X
|1DC6CA| BPL .x_positive

|1DC6CC| SEC
|1DC6CD| SBC.b #$08

.x_positive
|1DC6CF| CLC
|1DC6D0| ADC.b #$04
|1DC6D2| STA.w $0D50,X

|1DC6D5| LDA.w $0D40,X
|1DC6D8| BPL .y_positive

|1DC6DA| SEC
|1DC6DB| SBC.b #$08

.y_positive
|1DC6DD| CLC
|1DC6DE| ADC.b #$04
|1DC6E0| STA.w $0D40,X

;---------------------------------------------------------------------------------------------------

; spawn a segment
|1DC6E3| LDA.b #$C7 ; SPRITE C7
|1DC6E5| JSL SpawnSpriteDynamically
|1DC6E9| BMI .no_PLP

|1DC6EB| JSL SetSpawnedSpriteCoordinates

|1DC6EF| LDA.b #$01
|1DC6F1| STA.w $0DB0,Y
|1DC6F4| STA.w $0E50,Y

|1DC6F7| LDA.w $0F40,X
|1DC6FA| STA.w $0D50,Y

|1DC6FD| LDA.w $0F30,X
|1DC700| STA.w $0D40,Y

|1DC703| LDA.b #$40
|1DC705| STA.w $0CAA,Y

;---------------------------------------------------------------------------------------------------

.no_PLP
|1DC708| JSR HandleSpriteRecoil_bank1D
|1DC70B| JSR CheckDamageToAndFromLink_bank1D

|1DC70E| LDA.w $0D80,X
|1DC711| JSL JumpTableLocal
|1DC715| dw Pokey_ResetBounce
|1DC717| dw Pokey_MoveFaster

;===================================================================================================

pool Pokey_ResetBounce

.spacing
|1DC719| db  8,  7,  6,  5
|1DC71D| db  4,  5,  6,  7

endpool

;---------------------------------------------------------------------------------------------------

Pokey_ResetBounce:
|1DC721| LDA.w $0DF0,X
|1DC724| BNE .delay

|1DC726| INC.w $0D80,X

|1DC729| LDA.b #$10
|1DC72B| STA.w $0F80,X

|1DC72E| RTS

.delay
|1DC72F| LSR A
|1DC730| TAY

|1DC731| LDA.w .spacing,Y
|1DC734| STA.w $0DA0,X

|1DC737| RTS

;===================================================================================================

Pokey_MoveFaster:
|1DC738| JSR MoveSpriteXYZ_bank1D

|1DC73B| DEC.w $0F80,X
|1DC73E| DEC.w $0F80,X

|1DC741| LDA.w $0F70,X
|1DC744| BPL Sprite_BounceFromTileCollision

|1DC746| STZ.w $0F70,X
|1DC749| STZ.w $0D80,X

|1DC74C| LDA.b #$0F
|1DC74E| STA.w $0DF0,X

;===================================================================================================

Sprite_BounceFromTileCollision:
|1DC751| JSR CheckSpriteTileCollision_bank1D
|1DC754| AND.b #$03
|1DC756| BEQ .no_bounce

|1DC758| LDA.w $0D50,X
|1DC75B| EOR.b #$FF
|1DC75D| INC A
|1DC75E| STA.w $0D50,X

|1DC761| INC.w $0ED0,X

.no_bounce
|1DC764| LDA.w $0E70,X
|1DC767| AND.b #$0C
|1DC769| BEQ .exit

|1DC76B| LDA.w $0D40,X
|1DC76E| EOR.b #$FF
|1DC770| INC A
|1DC771| STA.w $0D40,X

|1DC774| INC.w $0ED0,X

.exit
|1DC777| RTS

;===================================================================================================

Sprite_BounceFromTileCollision_long:
|1DC778| JSR Sprite_BounceFromTileCollision

|1DC77B| RTL

;===================================================================================================

UNREACHABLE_1DC77C:
|1DC77C| RTS

;===================================================================================================

SpriteDraw_Pokey:
|1DC77D| JSR GetScreenCoordinates_bank1D

|1DC780| LDA.w $0DA0,X
|1DC783| STA.b $06
|1DC785| STZ.b $07

|1DC787| PHX

|1DC788| LDA.w $0D90,X
|1DC78B| TAX

|1DC78C| TYA
|1DC78D| CLC
|1DC78E| ADC.b #$0C
|1DC790| TAY

;---------------------------------------------------------------------------------------------------

.next_object
|1DC791| REP #$20

|1DC793| LDA.b $00
|1DC795| STA.b ($90),Y

|1DC797| AND.w #$0100
|1DC79A| STA.b $0E
|1DC79C| INY

|1DC79D| LDA.b $02 ; use PEI, chumps
|1DC79F| PHA

|1DC7A0| SEC
|1DC7A1| SBC.b $06
|1DC7A3| STA.b $02

|1DC7A5| PLA
|1DC7A6| STA.b ($90),Y

|1DC7A8| CLC
|1DC7A9| ADC.w #$0010
|1DC7AC| CMP.w #$0100

|1DC7AF| SEP #$20
|1DC7B1| BCC .on_screen

|1DC7B3| LDA.b #$F0
|1DC7B5| STA.b ($90),Y

.on_screen
|1DC7B7| LDA.b #$A0
|1DC7B9| CPX.b #$00
|1DC7BB| BNE .not_head

|1DC7BD| LDA.b #$A2

;---------------------------------------------------------------------------------------------------

.not_head
|1DC7BF| PHX

|1DC7C0| LDX.b $06
|1DC7C2| CPX.b #$07
|1DC7C4| BCS .no_squish

|1DC7C6| SEC
|1DC7C7| SBC.b #$20

;---------------------------------------------------------------------------------------------------

.no_squish
|1DC7C9| PLX

|1DC7CA| INY
|1DC7CB| STA.b ($90),Y

|1DC7CD| LDA.b $05
|1DC7CF| INY
|1DC7D0| STA.b ($90),Y

|1DC7D2| PHY

|1DC7D3| TYA
|1DC7D4| LSR A
|1DC7D5| LSR A
|1DC7D6| TAY

|1DC7D7| LDA.b #$02
|1DC7D9| ORA.b $0F
|1DC7DB| STA.b ($92),Y

|1DC7DD| PLA
|1DC7DE| SEC
|1DC7DF| SBC.b #$07
|1DC7E1| TAY

|1DC7E2| DEX
|1DC7E3| BPL .next_object

;---------------------------------------------------------------------------------------------------

|1DC7E5| PLX

|1DC7E6| JSL DrawSpriteShadow_long

|1DC7EA| RTS

;===================================================================================================

Sprite_C5_Medusa:
|1DC7EB| JSL GetScreenCoordinates_long

|1DC7EF| LDA.b $1B
|1DC7F1| BNE Medusa

;---------------------------------------------------------------------------------------------------

PoeInGrave:
|1DC7F3| LDA.b #$FF
|1DC7F5| STA.w $0D50,X
|1DC7F8| STA.w $0E30,X

|1DC7FB| JSR CheckSpriteTileCollision_bank1D
|1DC7FE| BEQ .exit

;---------------------------------------------------------------------------------------------------

|1DC800| JSR CheckIfActive_bank1D

|1DC803| LDA.b #$19 ; SPRITE 19
|1DC805| STA.w $0E20,X

|1DC808| JSL LoadSpriteProperties
|1DC80C| INC.w $0E90,X

|1DC80F| LDA.w $0D10,X
|1DC812| ADC.b #$08
|1DC814| STA.w $0D10,X

|1DC817| LDA.w $0D00,X
|1DC81A| SBC.b #$07
|1DC81C| STA.w $0D00,X

|1DC81F| LDA.b #$19 ; SFX3.19
|1DC821| JSL QueueSpriteSFX3WithPan

|1DC825| LDA.b #$80
|1DC827| STA.w $0CAA,X

;---------------------------------------------------------------------------------------------------

.exit
|1DC82A| RTS

;===================================================================================================

Medusa:
|1DC82B| JSR CheckIfActive_bank1D

|1DC82E| INC.w $0E80,X

|1DC831| LDA.w $0E80,X
|1DC834| AND.b #$7F
|1DC836| BNE .exit

|1DC838| LDA.w $0F20,X
|1DC83B| CMP.b $EE
|1DC83D| BNE .exit

|1DC83F| JSL ShootFireball
|1DC843| BMI .exit

;---------------------------------------------------------------------------------------------------

#Fireball_Configure:
|1DC845| LDA.w $0CAA,Y
|1DC848| ORA.b #$08
|1DC84A| STA.w $0CAA,Y

|1DC84D| LDA.b #$04
|1DC84F| STA.w $0CD2,Y

.exit
|1DC852| RTS

;===================================================================================================

pool Sprite_C6_YomoMedusa

.offset_x_low
|1DC853| db  12, -12,   0,   0

.offset_x_high
|1DC857| db   0,  -1,   0,   0

.offset_y_low
|1DC85B| db   0,   0,  12, -12

.offset_y_high
|1DC85F| db   0,   0,   0,  -1

;---------------------------------------------------------------------------------------------------

.speed_y ; bleeds into next
|1DC863| db   0,   0

.speed_x
|1DC865| db  40, -40,   0,   0

endpool

;---------------------------------------------------------------------------------------------------

Sprite_C6_YomoMedusa:
|1DC869| JSL GetScreenCoordinates_long
|1DC86D| JSR CheckIfActive_bank1D

|1DC870| LDA.w $0DF0,X
|1DC873| BEQ .check_for_swing

|1DC875| CMP.b #$18
|1DC877| BNE .exit_a

|1DC879| JSL ShootFireball
|1DC87D| BMI .exit_a

|1DC87F| JSR Fireball_Configure

|1DC882| PHX
|1DC883| TYX

|1DC884| JSR GetDirectionTowardsLink_bank1D

|1DC887| LDA.w .speed_x,Y
|1DC88A| STA.w $0D50,X

|1DC88D| LDA.w .speed_y,Y
|1DC890| STA.w $0D40,X

|1DC893| LDA.w $0D10,X
|1DC896| CLC
|1DC897| ADC.w .offset_x_low,Y
|1DC89A| STA.w $0D10,X

|1DC89D| LDA.w $0D30,X
|1DC8A0| ADC.w .offset_x_high,Y
|1DC8A3| STA.w $0D30,X

|1DC8A6| LDA.w $0D00,X
|1DC8A9| CLC
|1DC8AA| ADC.w .offset_y_low,Y
|1DC8AD| STA.w $0D00,X

|1DC8B0| LDA.w $0D20,X
|1DC8B3| ADC.w .offset_y_high,Y
|1DC8B6| STA.w $0D20,X

|1DC8B9| PLX

.exit_a
|1DC8BA| RTS

;---------------------------------------------------------------------------------------------------

.check_for_swing
|1DC8BB| LDA.b $3C
|1DC8BD| BEQ .exit_b

|1DC8BF| LDA.w $0F20,X
|1DC8C2| CMP.b $EE
|1DC8C4| BNE .exit_b

|1DC8C6| LDA.b #$20
|1DC8C8| STA.w $0DF0,X

.exit_b
|1DC8CB| RTS

;===================================================================================================

ThiefAnimationStep:

.standing
|1DC8CC| db $0B, $08, $02, $05

.watching
|1DC8D0| db $09, $06, $00, $03, $0A, $07, $01, $04

;===================================================================================================

Sprite_C4_Thief:
|1DC8D8| JSL SpriteDraw_Thief
|1DC8DC| JSR CheckIfActive_bank1D
|1DC8DF| JSR HandleSpriteRecoil_bank1D
|1DC8E2| JSL CheckDamageFromLink_long

|1DC8E6| LDA.w $0D80,X
|1DC8E9| CMP.b #$03
|1DC8EB| BEQ .dont_face_link

;---------------------------------------------------------------------------------------------------

|1DC8ED| JSR GetDirectionTowardsLink_bank1D
|1DC8F0| TYA

|1DC8F1| STA.w $0EB0,X
|1DC8F4| EOR.w $0DE0,X
|1DC8F7| CMP.b #$01
|1DC8F9| BNE .dont_face_link

|1DC8FB| TYA
|1DC8FC| STA.w $0DE0,X

;---------------------------------------------------------------------------------------------------

.dont_face_link
|1DC8FF| LDA.w $0D80,X
|1DC902| JSL JumpTableLocal
|1DC906| dw Thief_Loitering
|1DC908| dw Thief_Watching
|1DC90A| dw Thief_Chasing
|1DC90C| dw Thief_Stealing

;===================================================================================================

Thief_Loitering:
|1DC90E| JSR Thief_CheckCollisionWithLink

|1DC911| LDA.w $0DF0,X
|1DC914| BNE .just_dont_look

; don't look at Link unless he's close
|1DC916| REP #$20

|1DC918| LDA.b $22
|1DC91A| SEC
|1DC91B| SBC.w $0FD8
|1DC91E| CLC
|1DC91F| ADC.w #$0050

|1DC922| CMP.w #$00A0
|1DC925| BCS .just_dont_look

|1DC927| LDA.b $20
|1DC929| SEC
|1DC92A| SBC.w $0FDA
|1DC92D| CLC
|1DC92E| ADC.w #$0050

|1DC931| CMP.w #$00A0
|1DC934| BCS .just_dont_look

|1DC936| SEP #$20

|1DC938| INC.w $0D80,X

|1DC93B| LDA.b #$10
|1DC93D| STA.w $0DF0,X

.just_dont_look
|1DC940| SEP #$20

|1DC942| LDY.w $0DE0,X

|1DC945| LDA.w ThiefAnimationStep.standing,Y
|1DC948| STA.w $0DC0,X

|1DC94B| RTS

;===================================================================================================

Thief_Watching:
|1DC94C| JSR Thief_CheckCollisionWithLink
|1DC94F| JSR GetDirectionTowardsLink_bank1D

|1DC952| TYA
|1DC953| STA.w $0EB0,X
|1DC956| STA.w $0DE0,X

|1DC959| LDA.w $0DF0,X
|1DC95C| BNE Thief_TrackHead

|1DC95E| INC.w $0D80,X

|1DC961| LDA.b #$20
|1DC963| STA.w $0DF0,X

;===================================================================================================

Thief_TrackHead:
|1DC966| LDA.b $1A
|1DC968| AND.b #$1F
|1DC96A| BNE Thief_Animate

|1DC96C| LDA.w $0EB0,X
|1DC96F| STA.w $0DE0,X

;===================================================================================================

Thief_Animate:
|1DC972| INC.w $0E80,X

|1DC975| LDA.w $0E80,X
|1DC978| AND.b #$04
|1DC97A| ORA.w $0DE0,X
|1DC97D| TAY

|1DC97E| LDA.w ThiefAnimationStep.watching,Y
|1DC981| STA.w $0DC0,X

|1DC984| RTS

;===================================================================================================

Thief_Chasing:
|1DC985| LDA.b #$12
|1DC987| JSL ApplySpeedTowardsLink_long

|1DC98B| LDA.w $0E70,X
|1DC98E| BNE .tile_collision

|1DC990| JSR MoveSpriteXY_bank1D

;---------------------------------------------------------------------------------------------------

.tile_collision
|1DC993| JSR CheckSpriteTileCollision_bank1D

|1DC996| LDA.w $0DF0,X
|1DC999| BNE .delay

;---------------------------------------------------------------------------------------------------

|1DC99B| REP #$20

|1DC99D| LDA.b $22
|1DC99F| SEC
|1DC9A0| SBC.w $0FD8
|1DC9A3| CLC
|1DC9A4| ADC.w #$0050

|1DC9A7| CMP.w #$00A0
|1DC9AA| BCS .link_not_close

|1DC9AC| LDA.b $20
|1DC9AE| SEC
|1DC9AF| SBC.w $0FDA
|1DC9B2| CLC
|1DC9B3| ADC.w #$0050

|1DC9B6| CMP.w #$00A0
|1DC9B9| BCC .delay

.link_not_close
|1DC9BB| SEP #$20

|1DC9BD| STZ.w $0D80,X

|1DC9C0| LDA.b #$80
|1DC9C2| STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

.delay
|1DC9C5| SEP #$20

|1DC9C7| JSL CheckDamageToLink_long
|1DC9CB| BCC .no_bump

|1DC9CD| INC.w $0D80,X

|1DC9D0| LDA.b #$20
|1DC9D2| STA.w $0DF0,X

|1DC9D5| JSR Thief_SpillItems
|1DC9D8| JSR Thief_MakeBOMPNoise

.no_bump
|1DC9DB| JSR Thief_TrackHead

|1DC9DE| RTS

;===================================================================================================

Thief_Stealing:
|1DC9DF| JSR Thief_CheckCollisionWithLink
|1DC9E2| JSR Thief_ScanForBooty

|1DC9E5| PHY

|1DC9E6| LDA.w $0DF0,X
|1DC9E9| BNE .wait_for_booty

|1DC9EB| JSR Thief_Animate

|1DC9EE| LDA.w $0E70,X
|1DC9F1| BNE .tile_collision

|1DC9F3| JSR MoveSpriteXY_bank1D

.tile_collision
|1DC9F6| JSR CheckSpriteTileCollision_bank1D

|1DC9F9| LDA.w $0EB0,X
|1DC9FC| STA.w $0DE0,X

;---------------------------------------------------------------------------------------------------

.wait_for_booty
|1DC9FF| PLY

|1DCA00| TXA
|1DCA01| EOR.b $1A
|1DCA03| AND.b #$03
|1DCA05| BNE .exit

|1DCA07| LDA.w $0D10,Y
|1DCA0A| STA.b $04

|1DCA0C| LDA.w $0D30,Y
|1DCA0F| STA.b $05

|1DCA11| LDA.w $0D00,Y
|1DCA14| STA.b $06

|1DCA16| LDA.w $0D20,Y
|1DCA19| STA.b $07

|1DCA1B| JSL GetDirectionTowardsPoint

|1DCA1F| TYA
|1DCA20| STA.w $0EB0,X

.exit
|1DCA23| RTS

;===================================================================================================
; Unfortunately, I cannot take credit for this name.
; This was all MathOnNapkins.
;===================================================================================================
Thief_ScanForBooty:
|1DCA24| LDY.b #$0F

.scavenge_next
|1DCA26| LDA.w $0DD0,Y
|1DCA29| BEQ .not_worth_stealing

|1DCA2B| LDA.w $0E20,Y
|1DCA2E| CMP.b #$DC ; SPRITE DC - bomb
|1DCA30| BEQ .tango_locked

|1DCA32| CMP.b #$E1 ; SPRITE E1 - arrow
|1DCA34| BEQ .tango_locked

|1DCA36| CMP.b #$D9 ; SPRITE D9 - rupee
|1DCA38| BNE .not_worth_stealing

.tango_locked
|1DCA3A| PHY

|1DCA3B| JSR Thief_TargetBooty

|1DCA3E| PLY

|1DCA3F| RTS

.not_worth_stealing
|1DCA40| DEY
|1DCA41| BPL .scavenge_next

;---------------------------------------------------------------------------------------------------

|1DCA43| STZ.w $0D80,X

|1DCA46| LDA.b #$40
|1DCA48| STA.w $0DF0,X

|1DCA4B| RTS

;===================================================================================================

Thief_TargetBooty:
|1DCA4C| TXA
|1DCA4D| EOR.b $1A
|1DCA4F| AND.b #$03
|1DCA51| BNE .delay_turn

|1DCA53| LDA.w $0D10,Y
|1DCA56| STA.b $04

|1DCA58| LDA.w $0D30,Y
|1DCA5B| STA.b $05

|1DCA5D| LDA.w $0D00,Y
|1DCA60| STA.b $06

|1DCA62| LDA.w $0D20,Y
|1DCA65| STA.b $07

|1DCA67| LDA.b #$13
|1DCA69| JSL ProjectSpriteSpeedTowardsLocation_long

|1DCA6D| LDA.b $00
|1DCA6F| STA.w $0D40,X

|1DCA72| LDA.b $01
|1DCA74| STA.w $0D50,X

;---------------------------------------------------------------------------------------------------

.delay_turn
|1DCA77| LDY.b #$0F

; what??
; it comes in with Y=sprite slot
; why does it search them all again???
.next_sprite
|1DCA79| TYA
|1DCA7A| EOR.b $1A
|1DCA7C| AND.b #$03

|1DCA7E| ORA.w $0F10,Y
|1DCA81| BNE .whered_it_go

|1DCA83| LDA.w $0DD0,Y
|1DCA86| BEQ .whered_it_go

|1DCA88| LDA.w $0E20,Y
|1DCA8B| CMP.b #$DC ; SPRITE DC - bomb
|1DCA8D| BEQ .steal_this

|1DCA8F| CMP.b #$E1 ; SPRITE E1 - arrow
|1DCA91| BEQ .steal_this

|1DCA93| CMP.b #$D9 ; SPRITE D9 - rupee
|1DCA95| BNE .whered_it_go

.steal_this
|1DCA97| JSR Thief_GrabBooty

.whered_it_go
|1DCA9A| DEY
|1DCA9B| BPL .next_sprite

|1DCA9D| RTS

;===================================================================================================

Thief_GrabBooty:
|1DCA9E| LDA.w $0D10,Y
|1DCAA1| STA.b $04

|1DCAA3| LDA.w $0D30,Y
|1DCAA6| STA.b $05

|1DCAA8| LDA.w $0D00,Y
|1DCAAB| STA.b $06

|1DCAAD| LDA.w $0D20,Y
|1DCAB0| STA.b $07

|1DCAB2| REP #$20

|1DCAB4| LDA.b $04
|1DCAB6| SEC
|1DCAB7| SBC.w $0FD8
|1DCABA| CLC
|1DCABB| ADC.w #$0008

|1DCABE| CMP.w #$0010
|1DCAC1| BCS .ungrabbable_booty

|1DCAC3| LDA.b $06
|1DCAC5| SEC
|1DCAC6| SBC.w $0FDA
|1DCAC9| CLC
|1DCACA| ADC.w #$000C

|1DCACD| CMP.w #$0018
|1DCAD0| BCS .ungrabbable_booty

|1DCAD2| SEP #$20

|1DCAD4| LDA.b #$00
|1DCAD6| STA.w $0DD0,Y

|1DCAD9| PHX

|1DCADA| LDA.w $0E20,Y
|1DCADD| SEC
|1DCADE| SBC.b #$D8 ; SPRITE D8
|1DCAE0| TAX

|1DCAE1| LDA.l Absorbable_SFX3,X
|1DCAE5| JSL QueueSpriteSFX3WithPan

|1DCAE9| PLX

|1DCAEA| LDA.b #$0E
|1DCAEC| STA.w $0DF0,X

.ungrabbable_booty
|1DCAEF| SEP #$20

|1DCAF1| RTS

;===================================================================================================

Thief_CheckCollisionWithLink:
|1DCAF2| JSL CheckDamageToLink_same_layer_long
|1DCAF6| BCC .exit

|1DCAF8| LDA.b #$20
|1DCAFA| JSL ProjectSpriteSpeedTowardsLink_long

|1DCAFE| LDA.b $00
|1DCB00| STA.b $27

|1DCB02| EOR.b #$FF
|1DCB04| STA.w $0F30,X

|1DCB07| LDA.b $01
|1DCB09| STA.b $28

|1DCB0B| EOR.b #$FF
|1DCB0D| STA.w $0F40,X

|1DCB10| LDA.b #$04
|1DCB12| STA.b $46

|1DCB14| LDA.b #$0C
|1DCB16| STA.w $0EA0,X

;===================================================================================================

; Yes. BOMP. With a P.
; Not BOMB.
; Not BUMP.
; But BOMP.
; That is what I am calling this routine.
#Thief_MakeBOMPNoise:
|1DCB19| LDA.b #$0B ; SFX2.0B
|1DCB1B| JSL QueueSpriteSFX2WithPan

.exit
|1DCB1F| RTS

;===================================================================================================

pool Thief_SpillItems

.speed_x
|1DCB20| db   0,  24,  24,   0, -24, -24

.speed_y
|1DCB26| db -32, -16,  16,  32,  16, -16

;---------------------------------------------------------------------------------------------------

.booty_id
|1DCB2C| db $D9 ; SPRITE D9 - rupee
|1DCB2D| db $E1 ; SPRITE E1 - arrow
|1DCB2E| db $DC ; SPRITE DC - bomb
|1DCB2F| db $D9 ; SPRITE D9 - rupee

endpool

;---------------------------------------------------------------------------------------------------

Thief_SpillItems:
|1DCB30| LDA.b #$05
|1DCB32| STA.w $0FB5

.next_item
|1DCB35| JSL GetRandomNumber
|1DCB39| AND.b #$03
|1DCB3B| STA.w $0FB6

|1DCB3E| DEC A
|1DCB3F| BEQ .steal_arrow

|1DCB41| DEC A
|1DCB42| BEQ .steal_bomb

.steal_rupee
|1DCB44| REP #$20

|1DCB46| LDA.l $7EF360

|1DCB4A| SEP #$20

|1DCB4C| BRA .continue

.steal_arrow
|1DCB4E| LDA.l $7EF377
|1DCB52| BRA .continue

.steal_bomb
|1DCB54| LDA.l $7EF343

;---------------------------------------------------------------------------------------------------

; Interestingly, this short circuits on any failure, even the first.
.continue
|1DCB58| BEQ .exit

|1DCB5A| LDY.w $0FB6

|1DCB5D| LDA.w .booty_id,Y

|1DCB60| LDY.b #$07
|1DCB62| JSL SpawnSpriteDynamically.slot_limited
|1DCB66| BMI .exit

|1DCB68| LDA.w $0FB6
|1DCB6B| DEC A
|1DCB6C| BEQ .stole_arrow

|1DCB6E| DEC A
|1DCB6F| BEQ .stole_bomb

.stole_rupee
|1DCB71| REP #$20

|1DCB73| LDA.l $7EF360
|1DCB77| DEC A
|1DCB78| STA.l $7EF360

|1DCB7C| SEP #$20

|1DCB7E| BRA .spill_the_loot

.stole_arrow
|1DCB80| LDA.l $7EF377
|1DCB84| DEC A
|1DCB85| STA.l $7EF377

|1DCB89| BRA .spill_the_loot

.stole_bomb
|1DCB8B| LDA.l $7EF343
|1DCB8F| DEC A
|1DCB90| STA.l $7EF343

;---------------------------------------------------------------------------------------------------

.spill_the_loot
|1DCB94| LDA.b $22
|1DCB96| STA.w $0D10,Y

|1DCB99| LDA.b $23
|1DCB9B| STA.w $0D30,Y

|1DCB9E| LDA.b $20
|1DCBA0| STA.w $0D00,Y

|1DCBA3| LDA.b $21
|1DCBA5| STA.w $0D20,Y

|1DCBA8| LDA.b #$18
|1DCBAA| STA.w $0F80,Y

|1DCBAD| PHX

|1DCBAE| LDX.w $0FB5

|1DCBB1| LDA.w .speed_x,X
|1DCBB4| STA.w $0D50,Y

|1DCBB7| LDA.w .speed_y,X
|1DCBBA| STA.w $0D40,Y

|1DCBBD| PLX

|1DCBBE| LDA.b #$20
|1DCBC0| STA.w $0F10,Y

|1DCBC3| LDA.b #$01
|1DCBC5| STA.w $0EB0,Y

|1DCBC8| LDA.b #$FF
|1DCBCA| STA.w $0B58,Y

|1DCBCD| DEC.w $0FB5
|1DCBD0| BMI .exit

|1DCBD2| JMP.w .next_item

;---------------------------------------------------------------------------------------------------

.exit
|1DCBD5| RTS

;===================================================================================================

pool SpriteDraw_Thief

.oam_groups
; group00
|1DCBD6| dw   0,  -6 : db $00, $00, $00, $02
|1DCBDE| dw   0,   0 : db $06, $00, $00, $02

; group01
|1DCBE6| dw   0,  -6 : db $00, $00, $00, $02
|1DCBEE| dw   0,   0 : db $06, $40, $00, $02

; group02
|1DCBF6| dw   0,  -6 : db $00, $00, $00, $02
|1DCBFE| dw   0,   0 : db $20, $00, $00, $02

; group03
|1DCC06| dw   0,  -7 : db $04, $00, $00, $02
|1DCC0E| dw   0,   0 : db $22, $00, $00, $02

; group04
|1DCC16| dw   0,  -7 : db $04, $00, $00, $02
|1DCC1E| dw   0,   0 : db $22, $40, $00, $02

; group05
|1DCC26| dw   0,  -7 : db $04, $00, $00, $02
|1DCC2E| dw   0,   0 : db $24, $00, $00, $02

; group06
|1DCC36| dw   0,  -8 : db $02, $00, $00, $02
|1DCC3E| dw   0,   0 : db $0A, $00, $00, $02

; group07
|1DCC46| dw   0,  -7 : db $02, $00, $00, $02
|1DCC4E| dw   0,   0 : db $0E, $00, $00, $02

; group08
|1DCC56| dw   0,  -7 : db $02, $00, $00, $02
|1DCC5E| dw   0,   0 : db $0A, $00, $00, $02

; group09
|1DCC66| dw   0,  -8 : db $02, $40, $00, $02
|1DCC6E| dw   0,   0 : db $0A, $40, $00, $02

; group0A
|1DCC76| dw   0,  -7 : db $02, $40, $00, $02
|1DCC7E| dw   0,   0 : db $0E, $40, $00, $02

; group0B
|1DCC86| dw   0,  -7 : db $02, $40, $00, $02
|1DCC8E| dw   0,   0 : db $0A, $40, $00, $02

;---------------------------------------------------------------------------------------------------

.char
|1DCC96| db $02, $02, $00, $04

.hflip
|1DCC9A| db $40, $00, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Thief:
|1DCC9E| PHB
|1DCC9F| PHK
|1DCCA0| PLB

|1DCCA1| LDA.b #$00
|1DCCA3| XBA
|1DCCA4| LDA.w $0DC0,X

|1DCCA7| REP #$20

|1DCCA9| ASL A ; x16
|1DCCAA| ASL A
|1DCCAB| ASL A
|1DCCAC| ASL A
|1DCCAD| ADC.w #.oam_groups
|1DCCB0| STA.b $08

|1DCCB2| SEP #$20

|1DCCB4| LDA.b #$02
|1DCCB6| JSR TabulatedSpriteDraw_bank1D

;---------------------------------------------------------------------------------------------------

|1DCCB9| LDA.w $0F00,X
|1DCCBC| BNE .done

|1DCCBE| PHX

|1DCCBF| LDA.w $0EB0,X
|1DCCC2| TAX

|1DCCC3| LDA.w .char,X
|1DCCC6| LDY.b #$02
|1DCCC8| STA.b ($90),Y

|1DCCCA| INY
|1DCCCB| LDA.b ($90),Y
|1DCCCD| AND.b #$BF
|1DCCCF| ORA.w .hflip,X
|1DCCD2| STA.b ($90),Y

|1DCCD4| PLX

|1DCCD5| JSL DrawSpriteShadow_long

.done
|1DCCD9| PLB

|1DCCDA| RTL

;===================================================================================================

Gibo_OAMFlip:
|1DCCDB| db $00, $40, $C0, $80

Gibo_OAMPal:
|1DCCDF| db $0B, $07

;---------------------------------------------------------------------------------------------------

Sprite_C3_Gibo:
|1DCCE1| LDA.w $0DA0,X
|1DCCE4| BEQ Gibo_Body

;===================================================================================================

Gibo_Nucleus:
|1DCCE6| JSL SpriteDraw_SingleLarge_long
|1DCCEA| JSR CheckIfActive_bank1D
|1DCCED| JSR CheckDamageToAndFromLink_bank1D

|1DCCF0| INC.w $0E80,X

|1DCCF3| LDA.w $0E80,X
|1DCCF6| LSR A
|1DCCF7| LSR A
|1DCCF8| AND.b #$03
|1DCCFA| TAY

|1DCCFB| LDA.w $0F50,X
|1DCCFE| AND.b #$3F
|1DCD00| ORA.w Gibo_OAMFlip,Y
|1DCD03| STA.w $0F50,X

|1DCD06| LDA.w $0DF0,X
|1DCD09| BEQ .exit

|1DCD0B| JSR MoveSpriteXY_bank1D
|1DCD0E| JSR Sprite_BounceFromTileCollision

.exit
|1DCD11| RTS

;===================================================================================================

Gibo_Body:
|1DCD12| JSR SpriteDraw_Gibo
|1DCD15| JSR CheckIfActive_bank1D

|1DCD18| INC.w $0EC0,X

|1DCD1B| LDY.w $0EB0,X

|1DCD1E| LDA.w $0DD0,Y
|1DCD21| CMP.b #$06
|1DCD23| BNE .nucleus_alive

|1DCD25| STA.w $0DD0,X

|1DCD28| LDA.w $0DF0,Y
|1DCD2B| STA.w $0DF0,X

|1DCD2E| LDA.w $0E40,X
|1DCD31| CLC
|1DCD32| ADC.b #$04
|1DCD34| STA.w $0E40,X

|1DCD37| RTS

;---------------------------------------------------------------------------------------------------

.nucleus_alive
|1DCD38| LDA.b $1A
|1DCD3A| LSR A
|1DCD3B| LSR A
|1DCD3C| LSR A
|1DCD3D| AND.b #$03
|1DCD3F| STA.w $0E80,X

|1DCD42| LDA.b $1A
|1DCD44| AND.b #$3F
|1DCD46| BNE .dont_face_link

|1DCD48| JSR GetXDisplacementFromLink_bank1D

|1DCD4B| TYA
|1DCD4C| ASL A
|1DCD4D| ASL A
|1DCD4E| STA.w $0DE0,X

.dont_face_link
|1DCD51| JSL CheckDamageToLink_long

|1DCD55| LDA.w $0D80,X
|1DCD58| JSL JumpTableLocal
|1DCD5C| dw Gibo_Mitosis
|1DCD5E| dw Gibo_Osmosis
|1DCD60| dw Gibo_ConsumeDaughter

;===================================================================================================
; While mitosis generally produces 2 identical daughter cells, a complex
; biological process occurs where proteins in one daughter cell steal material
; from the other, causing one of the daughter cells to be much larger,
; but otherwise identical.
;===================================================================================================
pool Gibo_Mitosis

.speed_x
|1DCD62| db  16,  16,   0, -16, -16, -16,   0,  16

.speed_y
|1DCD6A| db   0,   0,  16, -16,  16,  16, -16, -16

endpool

;---------------------------------------------------------------------------------------------------

Gibo_Mitosis:
|1DCD72| LDA.w $0DF0,X
|1DCD75| BNE .still_zipping_nucleic_acids

|1DCD77| INC.w $0D80,X

|1DCD7A| LDA.b #$30
|1DCD7C| STA.w $0DF0,X

|1DCD7F| INC.w $0D90,X

|1DCD82| LDA.b #$C3 ; SPRITE C3
|1DCD84| JSL SpawnSpriteDynamically
|1DCD88| BMI .spawn_failed

;---------------------------------------------------------------------------------------------------

|1DCD8A| JSL SetSpawnedSpriteCoordinates

|1DCD8E| TYA
|1DCD8F| STA.w $0EB0,X

|1DCD92| LDA.b #$01
|1DCD94| STA.w $0E40,Y
|1DCD97| STA.w $0DA0,Y

|1DCD9A| LDA.b #$10
|1DCD9C| STA.w $0E60,Y

|1DCD9F| LDA.w $0ED0,X
|1DCDA2| STA.w $0E50,Y

|1DCDA5| LDA.b #$07
|1DCDA7| STA.w $0F50,Y

|1DCDAA| LDA.b #$30
|1DCDAC| STA.w $0DF0,Y

|1DCDAF| PHX

|1DCDB0| INC.w $0DB0,X

; target link every 3 splits
|1DCDB3| LDA.w $0DB0,X
|1DCDB6| CMP.b #$03
|1DCDB8| BNE .random_direction

|1DCDBA| STZ.w $0DB0,X

|1DCDBD| PHY

|1DCDBE| JSR GetDirectionTowardsLink_bank1D
|1DCDC1| TYX

|1DCDC2| PLY
|1DCDC3| BRA .set_speed

.random_direction
|1DCDC5| JSL GetRandomNumber
|1DCDC9| AND.b #$07
|1DCDCB| TAX

.set_speed
|1DCDCC| LDA.w .speed_x,X
|1DCDCF| STA.w $0D50,Y

|1DCDD2| LDA.w .speed_y,X
|1DCDD5| STA.w $0D40,Y

|1DCDD8| PLX

.spawn_failed
|1DCDD9| RTS

;---------------------------------------------------------------------------------------------------

.still_zipping_nucleic_acids
|1DCDDA| CMP.b #$20
|1DCDDC| BNE .exit

|1DCDDE| STA.w $0E00,X

.exit
|1DCDE1| RTS

;===================================================================================================
; As far as I can tell, it doesn't actually perform osmosis.
; It just sits there doing nothing.
; Sorry to disappoint.
;===================================================================================================
Gibo_Osmosis:
|1DCDE2| LDA.w $0DF0,X
|1DCDE5| BNE .exit

|1DCDE7| INC.w $0D80,X

.exit
|1DCDEA| RTS

;===================================================================================================
; Gruesome!
;===================================================================================================
Gibo_ConsumeDaughter:
|1DCDEB| TXA
|1DCDEC| EOR.b $1A
|1DCDEE| AND.b #$03
|1DCDF0| BNE .just_move

;---------------------------------------------------------------------------------------------------

|1DCDF2| LDA.w $0D10,Y
|1DCDF5| STA.b $04

|1DCDF7| LDA.w $0D30,Y
|1DCDFA| STA.b $05

|1DCDFC| LDA.w $0D00,Y
|1DCDFF| STA.b $06

|1DCE01| LDA.w $0D20,Y
|1DCE04| STA.b $07

|1DCE06| REP #$20

|1DCE08| LDA.w $0FD8
|1DCE0B| SEC
|1DCE0C| SBC.b $04
|1DCE0E| CLC
|1DCE0F| ADC.w #$0002
|1DCE12| CMP.w #$0004
|1DCE15| BCS .come_to_momma

|1DCE17| LDA.w $0FDA
|1DCE1A| SEC
|1DCE1B| SBC.b $06
|1DCE1D| CLC
|1DCE1E| ADC.w #$0002
|1DCE21| CMP.w #$0004
|1DCE24| BCS .come_to_momma

;---------------------------------------------------------------------------------------------------

|1DCE26| SEP #$20

|1DCE28| LDY.w $0EB0,X

|1DCE2B| LDA.b #$00
|1DCE2D| STA.w $0DD0,Y

|1DCE30| STZ.w $0D90,X
|1DCE33| STZ.w $0D80,X

|1DCE36| LDA.w $0E50,Y
|1DCE39| STA.w $0ED0,X

|1DCE3C| JSL GetRandomNumber
|1DCE40| AND.b #$1F
|1DCE42| ADC.b #$20
|1DCE44| STA.w $0DF0,X

|1DCE47| RTS

;---------------------------------------------------------------------------------------------------

; It's time to feed!
.come_to_momma
|1DCE48| SEP #$20

|1DCE4A| LDA.b #$10
|1DCE4C| JSL ProjectSpriteSpeedTowardsLocation_long

|1DCE50| LDA.b $00
|1DCE52| STA.w $0D40,X

|1DCE55| LDA.b $01
|1DCE57| STA.w $0D50,X

;---------------------------------------------------------------------------------------------------

.just_move
|1DCE5A| JSR MoveSpriteXY_bank1D

|1DCE5D| RTS

;===================================================================================================

pool SpriteDraw_Gibo

.oam_groups
; group00
|1DCE5E| dw   4,  -4 : db $8A, $40, $00, $02
|1DCE66| dw  -4,  -4 : db $8F, $40, $00, $00
|1DCE6E| dw  12,  12 : db $8E, $40, $00, $00
|1DCE76| dw  -4,   4 : db $8C, $40, $00, $02

; group01
|1DCE7E| dw   4,  -4 : db $AA, $40, $00, $02
|1DCE86| dw  -4,  -4 : db $9F, $40, $00, $00
|1DCE8E| dw  12,  12 : db $9E, $40, $00, $00
|1DCE96| dw  -4,   4 : db $AC, $40, $00, $02

; group02
|1DCE9E| dw   3,  -3 : db $AA, $40, $00, $02
|1DCEA6| dw  -3,  -3 : db $9F, $40, $00, $00
|1DCEAE| dw  11,  11 : db $9E, $40, $00, $00
|1DCEB6| dw  -3,   3 : db $AC, $40, $00, $02

; group03
|1DCEBE| dw   3,  -3 : db $8A, $40, $00, $02
|1DCEC6| dw  -3,  -3 : db $8F, $40, $00, $00
|1DCECE| dw  11,  11 : db $8E, $40, $00, $00
|1DCED6| dw  -3,   3 : db $8C, $40, $00, $02

; group04
|1DCEDE| dw  -3,  -4 : db $8A, $00, $00, $02
|1DCEE6| dw  13,  -4 : db $8F, $00, $00, $00
|1DCEEE| dw  -3,  12 : db $8E, $00, $00, $00
|1DCEF6| dw   5,   4 : db $8C, $00, $00, $02

; group05
|1DCEFE| dw  -3,  -4 : db $AA, $00, $00, $02
|1DCF06| dw  13,  -4 : db $9F, $00, $00, $00
|1DCF0E| dw  -3,  12 : db $9E, $00, $00, $00
|1DCF16| dw   5,   4 : db $AC, $00, $00, $02

; group06
|1DCF1E| dw  -2,  -3 : db $AA, $00, $00, $02
|1DCF26| dw  12,  -3 : db $9F, $00, $00, $00
|1DCF2E| dw  -2,  11 : db $9E, $00, $00, $00
|1DCF36| dw   4,   3 : db $AC, $00, $00, $02

; group07
|1DCF3E| dw  -2,  -3 : db $8A, $00, $00, $02
|1DCF46| dw  12,  -3 : db $8F, $00, $00, $00
|1DCF4E| dw  -2,  11 : db $8E, $00, $00, $00
|1DCF56| dw   4,   3 : db $8C, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Gibo:
|1DCF5E| LDA.w $0D90,X
|1DCF61| BNE .am_split

|1DCF63| LDA.w $0E40,X
|1DCF66| PHA

|1DCF67| LDA.b #$01
|1DCF69| STA.w $0E40,X

|1DCF6C| LDA.w $0E00,X
|1DCF6F| AND.b #$04
|1DCF71| LSR A
|1DCF72| LSR A
|1DCF73| STA.b $00

|1DCF75| LDA.w $0EC0,X
|1DCF78| LSR A
|1DCF79| LSR A
|1DCF7A| AND.b #$03
|1DCF7C| TAY

|1DCF7D| LDA.w $0F50,X
|1DCF80| PHA

|1DCF81| LDA.w Gibo_OAMFlip,Y

|1DCF84| LDY.b $00
|1DCF86| ORA.w Gibo_OAMPal,Y
|1DCF89| STA.w $0F50,X

|1DCF8C| JSL SpriteDraw_SingleLarge_long

|1DCF90| PLA
|1DCF91| STA.w $0F50,X

|1DCF94| PLA
|1DCF95| STA.w $0E40,X

;---------------------------------------------------------------------------------------------------

.am_split
|1DCF98| LDA.b #$00
|1DCF9A| XBA
|1DCF9B| LDA.w $0E80,X
|1DCF9E| CLC
|1DCF9F| ADC.w $0DE0,X

|1DCFA2| REP #$20

|1DCFA4| ASL A ; x32
|1DCFA5| ASL A
|1DCFA6| ASL A
|1DCFA7| ASL A
|1DCFA8| ASL A

|1DCFA9| ADC.w #.oam_groups
|1DCFAC| STA.b $08

|1DCFAE| REP #$20

|1DCFB0| LDA.b $90
|1DCFB2| CLC
|1DCFB3| ADC.w #$0008
|1DCFB6| STA.b $90

|1DCFB8| INC.b $92
|1DCFBA| INC.b $92

|1DCFBC| SEP #$20

|1DCFBE| LDA.b #$04
|1DCFC0| JMP.w TabulatedSpriteDraw_bank1D

;===================================================================================================

pool Boulder

.speed_z
|1DCFC3| db  32,  48

.speed_y
|1DCFC5| db   8,  32

.speed_x
|1DCFC7| db  24,  16
|1DCFC9| db -24, -16

endpool

;===================================================================================================

Sprite_C2_Boulder:
|1DCFCB| LDA.b $1B
|1DCFCD| BEQ Boulder

;===================================================================================================
; From Lanmolas
;===================================================================================================
Shrapnel:
|1DCFCF| LDA.w $0FC6
|1DCFD2| CMP.b #$03
|1DCFD4| BCS .bad_gfx

|1DCFD6| JSL SpriteDraw_SingleSmall_long

.bad_gfx
|1DCFDA| JSR CheckIfActive_bank1D

|1DCFDD| LDA.b $1A
|1DCFDF| ASL A
|1DCFE0| ASL A
|1DCFE1| AND.b #$C0
|1DCFE3| ORA.b #$00 ; useless and why?
|1DCFE5| STA.w $0F50,X

|1DCFE8| JSR MoveSpriteXYZ_bank1D

|1DCFEB| TXA
|1DCFEC| EOR.b $1A
|1DCFEE| AND.b #$03
|1DCFF0| BNE .exit

;---------------------------------------------------------------------------------------------------

; [HARDCODED] hitbox detection
|1DCFF2| REP #$20

|1DCFF4| LDA.w $0FD8
|1DCFF7| SEC
|1DCFF8| SBC.b $22
|1DCFFA| CLC
|1DCFFB| ADC.w #$0004

|1DCFFE| CMP.w #$0010
|1DD001| BCS .no_overlap

|1DD003| LDA.w $0FDA
|1DD006| SEC
|1DD007| SBC.b $20
|1DD009| CLC
|1DD00A| ADC.w #$FFFC

|1DD00D| CMP.w #$000C
|1DD010| BCS .no_overlap

|1DD012| SEP #$20

|1DD014| JSL AttemptDamageToLinkPlusRecoil_long

.no_overlap
|1DD018| SEP #$20

; This is redundant.
; It will always fail if we get this far.
|1DD01A| TXA
|1DD01B| EOR.b $1A
|1DD01D| AND.b #$03
|1DD01F| BNE .exit

|1DD021| JSR CheckSpriteTileCollision_bank1D
|1DD024| BEQ .exit

|1DD026| STZ.w $0DD0,X

.exit
|1DD029| RTS

;===================================================================================================

Boulder:
|1DD02A| LDA.b #$30
|1DD02C| STA.w $0B89,X

|1DD02F| JSR SpriteDraw_Boulder
|1DD032| JSR CheckIfActive_bank1D

|1DD035| LDA.w $0E80,X
|1DD038| SEC
|1DD039| SBC.w $0DE0,X
|1DD03C| STA.w $0E80,X

|1DD03F| JSR CheckDamageToAndFromLink_bank1D
|1DD042| JSR MoveSpriteXYZ_bank1D

|1DD045| DEC.w $0F80,X
|1DD048| DEC.w $0F80,X

|1DD04B| LDA.w $0F70,X
|1DD04E| BPL .exit

|1DD050| STZ.w $0F70,X
|1DD053| JSR CheckSpriteTileCollision_bank1D

|1DD056| LDY.b #$00

|1DD058| LDA.w $0E70,X
|1DD05B| BEQ .in_air

|1DD05D| INY

.in_air
|1DD05E| LDA.w .speed_z,Y
|1DD061| STA.w $0F80,X

|1DD064| LDA.w .speed_y,Y
|1DD067| STA.w $0D40,X

|1DD06A| JSL GetRandomNumber
|1DD06E| AND.b #$01
|1DD070| BEQ .bounce_right

.bounce_left
|1DD072| INY
|1DD073| INY

.bounce_right
|1DD074| LDA.w .speed_x,Y
|1DD077| STA.w $0D50,X

|1DD07A| TYA

|1DD07B| AND.b #$02
|1DD07D| DEC A
|1DD07E| STA.w $0DE0,X

|1DD081| LDA.b #$0B ; SFX2.0B
|1DD083| JSL QueueSpriteSFX2WithPan

.exit
|1DD087| RTS

;===================================================================================================

pool SpriteDraw_Boulder

.oam_groups
; group00
|1DD088| dw  -8,  -8 : db $CC, $01, $00, $02
|1DD090| dw   8,  -8 : db $CE, $01, $00, $02
|1DD098| dw  -8,   8 : db $EC, $01, $00, $02
|1DD0A0| dw   8,   8 : db $EE, $01, $00, $02

; group01
|1DD0A8| dw  -8,  -8 : db $CE, $41, $00, $02
|1DD0B0| dw   8,  -8 : db $CC, $41, $00, $02
|1DD0B8| dw  -8,   8 : db $EE, $41, $00, $02
|1DD0C0| dw   8,   8 : db $EC, $41, $00, $02

; group02
|1DD0C8| dw  -8,  -8 : db $EE, $C1, $00, $02
|1DD0D0| dw   8,  -8 : db $EC, $C1, $00, $02
|1DD0D8| dw  -8,   8 : db $CE, $C1, $00, $02
|1DD0E0| dw   8,   8 : db $CC, $C1, $00, $02

; group03
|1DD0E8| dw  -8,  -8 : db $EC, $81, $00, $02
|1DD0F0| dw   8,  -8 : db $EE, $81, $00, $02
|1DD0F8| dw  -8,   8 : db $CC, $81, $00, $02
|1DD100| dw   8,   8 : db $CE, $81, $00, $02

endpool

;===================================================================================================

pool SpriteDraw_BigShadow

.oam_groups

^.group00
|1DD108| dw  -6,  19 : db $6C, $08, $00, $02
|1DD110| dw   0,  19 : db $6C, $08, $00, $02
|1DD118| dw   6,  19 : db $6C, $08, $00, $02

^.group01
|1DD120| dw  -5,  19 : db $6C, $08, $00, $02
|1DD128| dw   0,  19 : db $6C, $08, $00, $02
|1DD130| dw   5,  19 : db $6C, $08, $00, $02

^.group02
|1DD138| dw  -4,  19 : db $6C, $08, $00, $02
|1DD140| dw   0,  19 : db $6C, $08, $00, $02
|1DD148| dw   4,  19 : db $6C, $08, $00, $02

^.group03
|1DD150| dw  -3,  19 : db $6C, $08, $00, $02
|1DD158| dw   0,  19 : db $6C, $08, $00, $02
|1DD160| dw   3,  19 : db $6C, $08, $00, $02

^.group04
|1DD168| dw  -2,  19 : db $6C, $08, $00, $02
|1DD170| dw   0,  19 : db $6C, $08, $00, $02
|1DD178| dw   2,  19 : db $6C, $08, $00, $02

;---------------------------------------------------------------------------------------------------

.data_offset
|1DD180| db .group00 ; $00
|1DD181| db .group01 ; $18
|1DD182| db .group02 ; $30
|1DD183| db .group03 ; $48
|1DD184| db .group04 ; $60

endpool

;===================================================================================================

SpriteDraw_Boulder:
|1DD185| LDA.b #$00
|1DD187| XBA
|1DD188| LDA.w $0E80,X

|1DD18B| LSR A
|1DD18C| LSR A
|1DD18D| LSR A

|1DD18E| AND.b #$03

|1DD190| REP #$20

|1DD192| ASL A ; x32
|1DD193| ASL A
|1DD194| ASL A
|1DD195| ASL A
|1DD196| ASL A
|1DD197| ADC.w #.oam_groups
|1DD19A| STA.b $08

|1DD19C| SEP #$20

|1DD19E| LDA.b #$04
|1DD1A0| JSR TabulatedSpriteDraw_bank1D
|1DD1A3| JSL SpriteDraw_BigShadow_with_altitude

|1DD1A7| RTS

;===================================================================================================

SpriteDraw_BigShadow:
|1DD1A8| PHB
|1DD1A9| PHK
|1DD1AA| PLB

|1DD1AB| LDY.b #$00

|1DD1AD| BRA .draw

;===================================================================================================

#SpriteDraw_BigShadow_with_altitude:
|1DD1AF| PHB
|1DD1B0| PHK
|1DD1B1| PLB

|1DD1B2| LDA.w $0F70,X
|1DD1B5| LSR A
|1DD1B6| LSR A
|1DD1B7| LSR A
|1DD1B8| TAY

|1DD1B9| CPY.b #$04
|1DD1BB| BCC .draw

|1DD1BD| LDY.b #$04

;===================================================================================================

.draw
|1DD1BF| LDA.w $0F70,X
|1DD1C2| STA.b $0E
|1DD1C4| STZ.b $0F

|1DD1C6| LDA.w SpriteDraw_BigShadow.data_offset,Y
|1DD1C9| STA.b $00
|1DD1CB| STZ.b $01

|1DD1CD| REP #$20

|1DD1CF| LDA.w $0FDA
|1DD1D2| CLC
|1DD1D3| ADC.b $0E
|1DD1D5| STA.w $0FDA

|1DD1D8| LDA.b $90
|1DD1DA| CLC
|1DD1DB| ADC.w #$0010
|1DD1DE| STA.b $90

|1DD1E0| LDA.b $92
|1DD1E2| CLC
|1DD1E3| ADC.w #$0004
|1DD1E6| STA.b $92

|1DD1E8| LDA.w #SpriteDraw_BigShadow.oam_groups
|1DD1EB| CLC
|1DD1EC| ADC.b $00
|1DD1EE| STA.b $08

|1DD1F0| SEP #$20

|1DD1F2| LDA.b #$03
|1DD1F4| JSR TabulatedSpriteDraw_bank1D
|1DD1F7| JSL Get16BitSpriteCoords_long

|1DD1FB| PLB

|1DD1FC| RTL

;===================================================================================================

CutsceneAgahnim_SpawnZeldaOnAltar:
|1DD1FD| LDA.w $0D10,X
|1DD200| CLC
|1DD201| ADC.b #$08
|1DD203| STA.w $0D10,X

|1DD206| LDA.w $0D00,X
|1DD209| CLC
|1DD20A| ADC.b #$06
|1DD20C| STA.w $0D00,X

|1DD20F| LDA.b #$C1 ; SPRITE C1
|1DD211| JSL SpawnSpriteDynamically

|1DD215| LDA.b #$01
|1DD217| STA.w $0D90,Y ; flag as zelda
|1DD21A| STA.w $0BA0,Y

|1DD21D| JSL SetSpawnedSpriteCoordinates

|1DD221| LDA.b $02
|1DD223| CLC
|1DD224| ADC.b #$28
|1DD226| STA.w $0D00,Y

|1DD229| LDA.b #$00
|1DD22B| STA.w $0E40,Y

|1DD22E| LDA.b #$0C
|1DD230| STA.w $0F50,Y

|1DD233| RTL

;===================================================================================================

Sprite_C1_CutsceneAgahnim:
|1DD234| LDA.w $0D90,X
|1DD237| JSL JumpTableLocal
|1DD23B| dw CutsceneAgahnim_Agahnim
|1DD23D| dw CutsceneAgahnim_Zelda

;===================================================================================================

CutsceneAgahnim_Agahnim:
|1DD23F| LDA.w $0DB0,X
|1DD242| BEQ .real_aga

|1DD244| LDA.w $0DF0,X
|1DD247| BNE .stay_alive

|1DD249| STZ.w $0DD0,X

.stay_alive
|1DD24C| AND.b #$01
|1DD24E| BNE .exit

|1DD250| JSR CutsceneAgahnim_DrawAgahnim

.exit
|1DD253| RTS

;---------------------------------------------------------------------------------------------------

.real_aga
|1DD254| JSR CutsceneAgahnim_DrawAgahnim
|1DD257| JSR SpriteDraw_CutsceneAgahnimSpell

; This keeps Agahnim in his pre-cutscene state while the game is paused
; Once he's unpaused
|1DD25A| LDA.w $0F00,X
|1DD25D| BEQ .not_paused

|1DD25F| STZ.w $0D80,X
|1DD262| STZ.w $0DA0,X
|1DD265| STZ.w $0DC0,X

|1DD268| LDA.b #$40
|1DD26A| STA.w $0DF0,X

.not_paused
|1DD26D| JSR CheckIfActive_bank1D

|1DD270| LDA.w $0D80,X
|1DD273| JSL JumpTableLocal
|1DD277| dw CutsceneAgahnim_HelloMyNameIs
|1DD279| dw CutsceneAgahnim_LightAsAFeatherStiffAsABoard
|1DD27B| dw CutsceneAgahnim_BanishZelda
|1DD27D| dw CutsceneAgahnim_MadeHerGoPoof
|1DD27F| dw CutsceneAgahnim_Brag
|1DD281| dw CutsceneAgahnim_HideBehindCurtain
|1DD283| dw CutsceneAgahnim_ExistNoMore

;===================================================================================================

CutsceneAgahnim_HelloMyNameIs:
|1DD285| LDA.w $0DF0,X
|1DD288| BNE .exit

|1DD28A| LDA.b #$01 ; enable cutscene
|1DD28C| STA.w $02E4

|1DD28F| LDA.b #$3B ; MESSAGE 013B
|1DD291| STA.w $1CF0

|1DD294| LDA.b #$01
|1DD296| STA.w $1CF1

|1DD299| JSL ShowMessageMinimal

|1DD29D| INC.w $0D80,X

.exit
|1DD2A0| RTS

;===================================================================================================
; Lift Zelda up
;===================================================================================================
pool CutsceneAgahnim_LightAsAFeatherStiffAsABoard

.pose
|1DD2A1| db $02, $00, $03, $00

endpool

;---------------------------------------------------------------------------------------------------

CutsceneAgahnim_LightAsAFeatherStiffAsABoard:
|1DD2A5| INC.w $0DA0,X

|1DD2A8| LDA.w $0DA0,X
|1DD2AB| PHA ; save actual timer

|1DD2AC| LSR A ; get bits 5 and 6 as an index
|1DD2AD| LSR A
|1DD2AE| LSR A
|1DD2AF| LSR A
|1DD2B0| LSR A
|1DD2B1| AND.b #$03

|1DD2B3| TAY
|1DD2B4| LDA.w .pose,Y

; WARNING: HARDCODED index ahead
|1DD2B7| LDY.w $0F7F ; once Zelda reaches 16 pixels, keep arms up
|1DD2BA| CPY.b #$10
|1DD2BC| BCC .use_indexed_pose

|1DD2BE| LDA.b #$01

.use_indexed_pose
|1DD2C0| STA.w $0DC0,X

|1DD2C3| PLA ; lift zelda up every 16 frames
|1DD2C4| AND.b #$0F
|1DD2C6| BNE .done

|1DD2C8| LDA.b #$01 ; limp pose
|1DD2CA| STA.w $0DCF

|1DD2CD| INC.w $0F7F ; max height of zelda

|1DD2D0| LDA.w $0F7F
|1DD2D3| CMP.b #$16
|1DD2D5| BNE .done

;---------------------------------------------------------------------------------------------------

|1DD2D7| LDY.b #$27 ; SFX3.27 vwvwvwvwvwvwvw
|1DD2D9| STY.w $012F

|1DD2DC| INC.w $0D80,X

|1DD2DF| LDA.b #$FF
|1DD2E1| STA.w $0DF0,X

|1DD2E4| LDA.b #$02 ; this controls the spell animation
|1DD2E6| STA.w $0E80,X

|1DD2E9| LDA.b #$FF
|1DD2EB| STA.w $0E30,X

.done
|1DD2EE| RTS

;===================================================================================================

CutsceneAgahnim_BanishZelda:
|1DD2EF| LDA.w $0DF0,X
|1DD2F2| BEQ .next_ai

|1DD2F4| CMP.b #$78
|1DD2F6| BEQ .start_flashing

|1DD2F8| CMP.b #$80
|1DD2FA| BCS .exit

|1DD2FC| AND.b #$03 ; play sfx every 4 frames a few times
|1DD2FE| BNE .exit

;---------------------------------------------------------------------------------------------------

|1DD300| LDA.b #$2B ; SFX3.2B vwvwvwvwvwvwvwvwvwvwvwvwvwvwvwvwvwvwvwvwvw
|1DD302| STA.w $012F

|1DD305| LDA.w $0E80,X
|1DD308| CMP.b #$0E
|1DD30A| BEQ .exit

|1DD30C| CLC
|1DD30D| ADC.b #$04
|1DD30F| STA.w $0E80,X

.exit
|1DD312| RTS

;---------------------------------------------------------------------------------------------------

.start_flashing
|1DD313| LDA.b #$78 ; set flash timer to 2 seconds
|1DD315| STA.w $0FF9

|1DD318| RTS

;---------------------------------------------------------------------------------------------------

.next_ai
|1DD319| INC.w $0D80,X

|1DD31C| LDA.b #$50
|1DD31E| STA.w $0DF0,X

|1DD321| RTS

;===================================================================================================

CutsceneAgahnim_MadeHerGoPoof:
|1DD322| LDA.w $0DF0,X
|1DD325| BEQ .she_gone

|1DD327| AND.b #$03
|1DD329| BNE .exit

|1DD32B| LDA.w $0E30,X

|1DD32E| CMP.b #$09
|1DD330| BEQ .exit

|1DD332| CLC
|1DD333| ADC.b #$02
|1DD335| STA.w $0E30,X

|1DD338| RTS

;---------------------------------------------------------------------------------------------------

; [HARDCODED] slots
.she_gone
|1DD339| LDA.b #$13
|1DD33B| STA.w $0DFF

|1DD33E| INC.w $0D80,X

|1DD341| LDA.b #$50
|1DD343| STA.w $0DF0,X

|1DD346| STZ.w $0E80,X

|1DD349| LDA.b #$33 ; SFX2.33
|1DD34B| STA.w $012E

.exit
|1DD34E| RTS

;===================================================================================================

CutsceneAgahnim_Brag:
|1DD34F| LDA.w $0DF0,X
|1DD352| BNE .exit

|1DD354| LDA.b #$3C ; MESSAGE 013C
|1DD356| STA.w $1CF0

|1DD359| LDA.b #$01
|1DD35B| STA.w $1CF1

|1DD35E| JSL ShowMessageMinimal

|1DD362| INC.w $0D80,X

|1DD365| LDA.b #$02
|1DD367| STA.w $0DF0,X

.exit
|1DD36A| RTS

;===================================================================================================

CutsceneAgahnim_HideBehindCurtain:
|1DD36B| LDA.w $0DF0,X
|1DD36E| DEC A
|1DD36F| BNE .no_sfx

|1DD371| LDA.b #$28 ; SFX3.28
|1DD373| STA.w $012F

;---------------------------------------------------------------------------------------------------

.no_sfx
|1DD376| LDA.b #$E0
|1DD378| STA.w $0D40,X

|1DD37B| JSR MoveSpriteY_bank1D

|1DD37E| LDA.w $0D00,X
|1DD381| CMP.b #$30
|1DD383| BCS .blurred_lines

|1DD385| LDA.b #$42
|1DD387| STA.w $0F10,X

|1DD38A| INC.w $0D80,X

;---------------------------------------------------------------------------------------------------

.blurred_lines
|1DD38D| JSL Agahnim_ApplyMotionBlur

|1DD391| RTS

;===================================================================================================
; Actually, this routine spawns a transparent Agahnim sprite.
;===================================================================================================
Agahnim_ApplyMotionBlur:
|1DD392| LDY.b #$FF

|1DD394| LDA.b $1A
|1DD396| AND.b #$03
|1DD398| BNE .deny_filter

|1DD39A| LDA.b #$C1 ; SPRITE C1
|1DD39C| JSL SpawnSpriteDynamically
|1DD3A0| BMI .deny_filter

|1DD3A2| JSL SetSpawnedSpriteCoordinates

|1DD3A6| LDA.w $0DC0,X
|1DD3A9| STA.w $0DC0,Y

|1DD3AC| LDA.b #$20
|1DD3AE| STA.w $0DF0,Y
|1DD3B1| STA.w $0BA0,Y
|1DD3B4| STA.w $0DB0,Y

.deny_filter
|1DD3B7| TYA

|1DD3B8| RTL

;===================================================================================================

CutsceneAgahnim_ExistNoMore:
|1DD3B9| LDA.w $0F10,X
|1DD3BC| BNE .exist_more

; disable cutscene flag
|1DD3BE| STZ.w $02E4

; die
|1DD3C1| STZ.w $0DD0,X

|1DD3C4| JSL ManuallySetDeathFlagUW

; set room flag
|1DD3C8| LDA.w $0403
|1DD3CB| ORA.b #$40
|1DD3CD| STA.w $0403

.exist_more
|1DD3D0| RTS

;===================================================================================================

pool CutsceneAgahnim_DrawAgahnim

.oam_groups
; group00
|1DD3D1| dw  -8,  -8 : db $82, $0B, $00, $02
|1DD3D9| dw   8,  -8 : db $82, $4B, $00, $02
|1DD3E1| dw  -8,   8 : db $A2, $0B, $00, $02
|1DD3E9| dw   8,   8 : db $A2, $4B, $00, $02

; group01
|1DD3F1| dw  -8,  -8 : db $80, $0B, $00, $02
|1DD3F9| dw   8,  -8 : db $80, $4B, $00, $02
|1DD401| dw  -8,   8 : db $A0, $0B, $00, $02
|1DD409| dw   8,   8 : db $A0, $4B, $00, $02

; group02
|1DD411| dw  -8,  -8 : db $80, $0B, $00, $02
|1DD419| dw   8,  -8 : db $82, $4B, $00, $02
|1DD421| dw  -8,   8 : db $A0, $0B, $00, $02
|1DD429| dw   8,   8 : db $A2, $4B, $00, $02

; group03
|1DD431| dw  -8,  -8 : db $82, $0B, $00, $02
|1DD439| dw   8,  -8 : db $80, $4B, $00, $02
|1DD441| dw  -8,   8 : db $A2, $0B, $00, $02
|1DD449| dw   8,   8 : db $A0, $4B, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

CutsceneAgahnim_DrawAgahnim:
|1DD451| LDA.w $0F10,X
|1DD454| AND.b #$01
|1DD456| BNE .exit

|1DD458| LDA.w $0DB0,X
|1DD45B| STA.b $00
|1DD45D| STZ.b $01

|1DD45F| LDA.b #$00
|1DD461| XBA
|1DD462| LDA.w $0DC0,X

|1DD465| REP #$20

|1DD467| ASL A
|1DD468| ASL A
|1DD469| ASL A
|1DD46A| ASL A
|1DD46B| ASL A
|1DD46C| ADC.w #.oam_groups
|1DD46F| STA.b $08

|1DD471| LDA.b $00
|1DD473| BNE .use_allotted_oam

; [HARDCODED] oam slots
|1DD475| LDA.w #$0900
|1DD478| STA.b $90

|1DD47A| LDA.w #$0A60
|1DD47D| STA.b $92

.use_allotted_oam
|1DD47F| SEP #$20

|1DD481| LDA.b #$04
|1DD483| JSR TabulatedSpriteDraw_bank1D

|1DD486| LDA.b #$12
|1DD488| JSL DrawSpriteShadow_custom_long

.exit
|1DD48C| RTS

;===================================================================================================

pool SpriteDraw_CutsceneAgahnimSpell

.oam_groups
; group00
|1DD48D| db -10, -16, $CE, $06
|1DD491| db  18, -16, $CE, $06
|1DD495| db  20, -13, $26, $06
|1DD499| db  20,  -5, $36, $06
|1DD49D| db -12, -13, $26, $46
|1DD4A1| db -12,  -5, $36, $46
|1DD4A5| db  18,   0, $26, $06
|1DD4A9| db  18,   8, $36, $06
|1DD4AD| db -10,   0, $26, $46
|1DD4B1| db -10,   8, $36, $46
|1DD4B5| db  -8,   0, $22, $06
|1DD4B9| db   8,   0, $22, $46
|1DD4BD| db  -8,  16, $22, $86
|1DD4C1| db   8,  16, $22, $C6

; group01
|1DD4C5| db -10, -16, $CE, $04
|1DD4C9| db  18, -16, $CE, $04
|1DD4CD| db  20, -13, $26, $44
|1DD4D1| db  20,  -5, $36, $44
|1DD4D5| db -12, -13, $26, $04
|1DD4D9| db -12,  -5, $36, $04
|1DD4DD| db  18,   0, $26, $44
|1DD4E1| db  18,   8, $36, $44
|1DD4E5| db -10,   0, $26, $04
|1DD4E9| db -10,   8, $36, $04
|1DD4ED| db  -8,   0, $20, $04
|1DD4F1| db   8,   0, $20, $44
|1DD4F5| db  -8,  16, $20, $84
|1DD4F9| db   8,  16, $20, $C4

;---------------------------------------------------------------------------------------------------

.oam_sizes
|1DD4FD| db $00
|1DD4FE| db $00
|1DD4FF| db $00
|1DD500| db $00
|1DD501| db $00
|1DD502| db $00
|1DD503| db $00
|1DD504| db $00
|1DD505| db $00
|1DD506| db $00
|1DD507| db $02
|1DD508| db $02
|1DD509| db $02
|1DD50A| db $02

;---------------------------------------------------------------------------------------------------

.oam_offset
|1DD50B| db $00
|1DD50C| db $04
|1DD50D| db $08
|1DD50E| db $0C
|1DD50F| db $10
|1DD510| db $14
|1DD511| db $18
|1DD512| db $1C
|1DD513| db $20
|1DD514| db $24
|1DD515| db $28

endpool

;===================================================================================================

SpriteDraw_CutsceneAgahnimSpell:
|1DD516| LDA.b #$38
|1DD518| JSL AllocateOAMInRegionA

|1DD51C| LDA.b $1A
|1DD51E| LSR A
|1DD51F| LSR A

|1DD520| REP #$20

|1DD522| LDA.w #.oam_groups
|1DD525| BCS .frame_0

|1DD527| ADC.w #$0038

.frame_0
|1DD52A| STA.b $08

|1DD52C| LDA.w #.oam_sizes
|1DD52F| STA.b $0A

|1DD531| SEP #$20

|1DD533| LDA.w $0E80,X
|1DD536| BEQ .exit

|1DD538| LDY.w $0E30,X
|1DD53B| STY.b $0D

|1DD53D| PHX

|1DD53E| DEC A
|1DD53F| TAX

|1DD540| INY

|1DD541| LDA.w .oam_offset,Y
|1DD544| TAY

;---------------------------------------------------------------------------------------------------

.next_object
|1DD545| LDA.b $00
|1DD547| CLC
|1DD548| ADC.b ($08),Y
|1DD54A| STA.b ($90),Y

|1DD54C| LDA.b $02
|1DD54E| CLC
|1DD54F| ADC.b #$F8
|1DD551| CLC

|1DD552| INY
|1DD553| ADC.b ($08),Y
|1DD555| STA.b ($90),Y

|1DD557| INY
|1DD558| LDA.b ($08),Y
|1DD55A| STA.b ($90),Y

|1DD55C| INY

|1DD55D| LDA.b ($08),Y
|1DD55F| ORA.b #$31
|1DD561| STA.b ($90),Y

|1DD563| PHY

|1DD564| TYA
|1DD565| LSR A
|1DD566| LSR A
|1DD567| TAY

; A is about to be read from something else anyway
|1DD568| LDA.b #$00
|1DD56A| CPX.b #$04
|1DD56C| BCS .pointless

|1DD56E| LDA.b #$02

.pointless
; wtf? why is this an indirect read?
; just use the actual address
|1DD570| LDA.b ($0A),Y
|1DD572| STA.b ($92),Y

|1DD574| PLY
|1DD575| INY

|1DD576| DEX
|1DD577| CPX.b $0D
|1DD579| BNE .next_object

;---------------------------------------------------------------------------------------------------

|1DD57B| PLX

.exit
|1DD57C| RTS

;===================================================================================================

CutsceneAgahnim_Zelda:
|1DD57D| JSR .dumb ; why?

|1DD580| RTS

;---------------------------------------------------------------------------------------------------

.oam_groups
; group00
|1DD581| dw  -4,   0 : db $03, $01, $00, $02
|1DD589| dw   4,   0 : db $04, $01, $00, $02

; group01
|1DD591| dw  -4,   0 : db $00, $01, $00, $02
|1DD599| dw   4,   0 : db $01, $01, $00, $02

;---------------------------------------------------------------------------------------------------

.dumb
|1DD5A1| LDA.w $0DF0,X
|1DD5A4| BEQ .draw

|1DD5A6| PHA
|1DD5A7| JSR SpriteDraw_AltarZeldaWarp
|1DD5AA| PLA

|1DD5AB| CMP.b #$01
|1DD5AD| BNE .stay_alive

|1DD5AF| STZ.w $0DD0,X

;---------------------------------------------------------------------------------------------------

.stay_alive
|1DD5B2| CMP.b #$0C
|1DD5B4| BCS .draw

|1DD5B6| RTS

;===================================================================================================

.draw
|1DD5B7| LDA.b #$08
|1DD5B9| JSL AllocateOAMInRegionA

|1DD5BD| LDA.b #$00
|1DD5BF| XBA
|1DD5C0| LDA.w $0DC0,X

|1DD5C3| REP #$20

|1DD5C5| ASL A ; x16
|1DD5C6| ASL A
|1DD5C7| ASL A
|1DD5C8| ASL A

|1DD5C9| ADC.w #.oam_groups
|1DD5CC| STA.b $08

|1DD5CE| SEP #$20

|1DD5D0| LDA.b #$02

|1DD5D2| JSR TabulatedSpriteDraw_bank1D

; using sublabels makes my life easier here
|1DD5D5| JSR .draw_buttshaped_shadow

|1DD5D8| RTS

;===================================================================================================

.offset
|1DD5D9| db $04, $04, $03, $03, $02, $02, $01, $01
|1DD5E1| db $00, $00, $00, $00, $00, $00, $00, $00

;---------------------------------------------------------------------------------------------------

.draw_buttshaped_shadow
|1DD5E9| LDA.b #$08
|1DD5EB| JSL AllocateOAMInRegionA

; they could have saved 7 bytes if they used CMP.b #$0F
|1DD5EF| LDA.w $0F70,X
|1DD5F2| CMP.b #$1F
|1DD5F4| BCC .not_max_height

|1DD5F6| LDA.b #$1F

;---------------------------------------------------------------------------------------------------

.not_max_height
|1DD5F8| LSR A
|1DD5F9| TAY

|1DD5FA| LDA.w .offset,Y
|1DD5FD| STA.b $07

|1DD5FF| LDA.w $0D00,X
|1DD602| SEC
|1DD603| SBC.b $E8
|1DD605| STA.b $02

|1DD607| LDA.w $0D20,X
|1DD60A| SBC.b $E9
|1DD60C| STA.b $03

|1DD60E| LDY.b #$00

|1DD610| LDA.b $00
|1DD612| PHA

|1DD613| CLC
|1DD614| ADC.b $07
|1DD616| STA.b ($90),Y

|1DD618| PLA
|1DD619| SEC
|1DD61A| SBC.b $07

|1DD61C| LDY.b #$04
|1DD61E| STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

|1DD620| REP #$20

|1DD622| LDA.b $02
|1DD624| CLC
|1DD625| ADC.w #$0007

|1DD628| LDY.b #$01
|1DD62A| STA.b ($90),Y

|1DD62C| LDY.b #$05
|1DD62E| STA.b ($90),Y

|1DD630| CLC
|1DD631| ADC.w #$0010
|1DD634| CMP.w #$0100

;---------------------------------------------------------------------------------------------------

|1DD637| SEP #$20
|1DD639| BCC .on_screen

|1DD63B| LDA.b #$F0
|1DD63D| STA.b ($90),Y

|1DD63F| LDY.b #$01
|1DD641| STA.b ($90),Y

.on_screen
|1DD643| LDA.b #$6C
|1DD645| LDY.b #$02
|1DD647| STA.b ($90),Y

|1DD649| LDY.b #$06
|1DD64B| STA.b ($90),Y

|1DD64D| LDA.b #$24
|1DD64F| LDY.b #$03
|1DD651| STA.b ($90),Y

|1DD653| LDY.b #$07
|1DD655| STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

|1DD657| LDA.b #$02

|1DD659| LDY.b #$00
|1DD65B| STA.b ($92),Y

|1DD65D| INY
|1DD65E| STA.b ($92),Y

|1DD660| RTS

;===================================================================================================

pool SpriteDraw_AltarZeldaWarp

.oam_groups
; group00
|1DD661| dw   4,   4 : db $80, $04, $00, $00
|1DD669| dw   4,   4 : db $80, $04, $00, $00

; group01
|1DD671| dw   4,   4 : db $B7, $04, $00, $00
|1DD679| dw   4,   4 : db $B7, $04, $00, $00

; group02
|1DD681| dw  -6,   0 : db $24, $05, $00, $02
|1DD689| dw   6,   0 : db $24, $45, $00, $02

; group03
|1DD691| dw  -8,   0 : db $24, $05, $00, $02
|1DD699| dw   8,   0 : db $24, $45, $00, $02

; group04
|1DD6A1| dw   0,   0 : db $C6, $05, $00, $02
|1DD6A9| dw   0,   0 : db $C6, $05, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_AltarZeldaWarp:
|1DD6B1| LDA.b #$08
|1DD6B3| JSL AllocateOAMInRegionA

|1DD6B7| LDA.b #$00
|1DD6B9| XBA

|1DD6BA| LDA.w $0DF0,X
|1DD6BD| LSR A
|1DD6BE| LSR A

|1DD6BF| REP #$20

|1DD6C1| ASL A ; effectively x32
|1DD6C2| ASL A
|1DD6C3| ASL A
|1DD6C4| ASL A

|1DD6C5| ADC.w #.oam_groups
|1DD6C8| STA.b $08

|1DD6CA| SEP #$20

|1DD6CC| LDA.b #$02
|1DD6CE| JMP.w TabulatedSpriteDraw_bank1D

;===================================================================================================

SpritePrep_Moldorm:
|1DD6D1| PHX
|1DD6D2| TXY

|1DD6D3| LDX.b #$7F

.next_segment
|1DD6D5| LDA.w $0D10,Y
|1DD6D8| STA.l $7FFC00,X

|1DD6DC| LDA.w $0D30,Y
|1DD6DF| STA.l $7FFC80,X

|1DD6E3| LDA.w $0D00,Y
|1DD6E6| STA.l $7FFD00,X

|1DD6EA| LDA.w $0D20,Y
|1DD6ED| STA.l $7FFD80,X

|1DD6F1| DEX
|1DD6F2| BPL .next_segment

;---------------------------------------------------------------------------------------------------

|1DD6F4| PLX

|1DD6F5| RTL

;===================================================================================================

Sprite_09_Moldorm:
|1DD6F6| PHB
|1DD6F7| PHK
|1DD6F8| PLB

|1DD6F9| JSR .main

|1DD6FC| PLB

|1DD6FD| RTL

;---------------------------------------------------------------------------------------------------

.speed_x
|1DD6FE| db  24,  22,  17,   9,   0,  -9, -17, -22
|1DD706| db -24, -22, -17,  -9,   0,   9,  17,  22
|1DD70E| db  36,  33,  25,  13,   0, -13, -25, -33
|1DD716| db -36, -33, -25, -13,   0,  13,  25,  33

.speed_y
|1DD71E| db   0,   9,  17,  22,  24,  22,  17,   9
|1DD726| db   0,  -9, -17, -22, -24, -22, -17,  -9
|1DD72E| db   0,  13,  25,  33,  36,  33,  25,  13
|1DD736| db   0, -13, -25, -33, -36, -33, -25, -13

.direction
|1DD73E| db   8,   9,  10,  11,  12,  13,  14,  15
|1DD746| db   0,   1,   2,   3,   4,   5,   6,   7

;---------------------------------------------------------------------------------------------------

.main
|1DD74E| JSR SpriteDraw_Moldorm
|1DD751| JSR CheckIfActive_bank1D

|1DD754| LDA.w $0D80,X
|1DD757| CMP.b #$03
|1DD759| BNE .dont_explode

|1DD75B| JMP.w Moldorm_Explode

;===================================================================================================

.dont_explode
|1DD75E| JSL CheckDamageFromLink_long

|1DD762| LDA.b #$07

; frenzy mode at 3 hp left
|1DD764| LDY.w $0E50,X
|1DD767| CPY.b #$03
|1DD769| BCS .dont_frenzy

|1DD76B| INC.w $0E80,X

|1DD76E| LDA.b #$03

;---------------------------------------------------------------------------------------------------

.dont_frenzy
|1DD770| INC.w $0E80,X

|1DD773| AND.b $1A
|1DD775| BNE .no_sfx

|1DD777| LDA.b #$31 ; SFX3.31
|1DD779| JSL QueueSpriteSFX3WithPan

;---------------------------------------------------------------------------------------------------

.no_sfx
|1DD77D| LDA.w $0EA0,X
|1DD780| BEQ .not_stunned

|1DD782| LDA.b #$40
|1DD784| STA.w $0E10,X

|1DD787| LDA.b $1A
|1DD789| AND.b #$03
|1DD78B| BNE .delay_stun_tick

|1DD78D| DEC.w $0EA0,X

.delay_stun_tick
|1DD790| RTS

;---------------------------------------------------------------------------------------------------

.not_stunned
|1DD791| LDA.b $46
|1DD793| BNE .no_bounce_back

|1DD795| JSL CheckDamageToLink_long
|1DD799| BCC .no_bounce_back

;---------------------------------------------------------------------------------------------------

|1DD79B| JSL CancelDash_long

|1DD79F| LDA.b #$28
|1DD7A1| JSL ProjectSpriteSpeedTowardsLink_long

|1DD7A5| LDA.b $00
|1DD7A7| STA.b $27

|1DD7A9| LDA.b $01
|1DD7AB| STA.b $28

|1DD7AD| LDA.b #$18
|1DD7AF| STA.b $46

|1DD7B1| LDA.b #$30
|1DD7B3| STA.w $0E00,X

; [BUG] this doesn't play a sound effect; it puts a pan value in there
|1DD7B6| LDA.b #$32 ; SFX3.32
|1DD7B8| JSL CalculateSpriteSFXPan
|1DD7BC| STA.w $012F

;---------------------------------------------------------------------------------------------------

.no_bounce_back
|1DD7BF| LDY.w $0DE0,X

|1DD7C2| LDA.w $0E50,X
|1DD7C5| CMP.b #$03
|1DD7C7| BCS .slow_mode

|1DD7C9| TYA
|1DD7CA| CLC
|1DD7CB| ADC.b #$10
|1DD7CD| TAY

.slow_mode
|1DD7CE| LDA.w .speed_x,Y
|1DD7D1| STA.w $0D50,X

|1DD7D4| LDA.w .speed_y,Y
|1DD7D7| STA.w $0D40,X

;---------------------------------------------------------------------------------------------------

|1DD7DA| JSR MoveSpriteXY_bank1D
|1DD7DD| JSR CheckSpriteTileCollision_bank1D
|1DD7E0| BEQ .no_tile_collision

|1DD7E2| LDY.w $0DE0,X
|1DD7E5| LDA.w .direction,Y
|1DD7E8| STA.w $0DE0,X

|1DD7EB| LDA.b #$21 ; SFX2.21
|1DD7ED| JSL QueueSpriteSFX2WithPan

.no_tile_collision
|1DD7F1| LDA.w $0D80,X
|1DD7F4| JSL JumpTableLocal
|1DD7F8| dw Moldorm_Move
|1DD7FA| dw Moldorm_Turn
|1DD7FC| dw Moldorm_Charge

;===================================================================================================

Moldorm_Move:
|1DD7FE| LDA.w $0DF0,X
|1DD801| BNE .exit

|1DD803| LDA.b #$01

|1DD805| INC.w $0ED0,X

; chase link every 4th move
|1DD808| LDY.w $0ED0,X
|1DD80B| CPY.b #$03
|1DD80D| BNE .turn_next_move

|1DD80F| STZ.w $0ED0,X

|1DD812| LDA.b #$02

;---------------------------------------------------------------------------------------------------

.turn_next_move
|1DD814| STA.w $0D80,X

|1DD817| JSL GetRandomNumber
|1DD81B| AND.b #$02
|1DD81D| DEC A
|1DD81E| STA.w $0EB0,X

|1DD821| JSL GetRandomNumber
|1DD825| AND.b #$1F
|1DD827| ADC.b #$20
|1DD829| STA.w $0DF0,X

.exit
|1DD82C| RTS

;===================================================================================================

Moldorm_Turn:
|1DD82D| LDA.w $0DF0,X
|1DD830| BNE .delay

|1DD832| JSL GetRandomNumber
|1DD836| AND.b #$0F
|1DD838| ADC.b #$08
|1DD83A| STA.w $0DF0,X

; move straight now
|1DD83D| STZ.w $0D80,X

|1DD840| RTS

;---------------------------------------------------------------------------------------------------

.delay
|1DD841| AND.b #$03
|1DD843| BNE .exit

|1DD845| LDA.w $0DE0,X
|1DD848| CLC
|1DD849| ADC.w $0EB0,X
|1DD84C| AND.b #$0F
|1DD84E| STA.w $0DE0,X

.exit
|1DD851| RTS

;===================================================================================================

Moldorm_Charge:
|1DD852| TXA
|1DD853| EOR.b $1A
|1DD855| AND.b #$03
|1DD857| BNE .exit

|1DD859| LDA.b #$1F
|1DD85B| JSL ApplySpeedTowardsLink_long

|1DD85F| JSL ConvertVelocityToAngle
|1DD863| CMP.w $0DE0,X
|1DD866| BNE .adjust_angle

|1DD868| STZ.w $0D80,X

|1DD86B| LDA.b #$30
|1DD86D| STA.w $0DF0,X

|1DD870| RTS

;---------------------------------------------------------------------------------------------------

.adjust_angle
|1DD871| PHP

|1DD872| LDA.w $0DE0,X

|1DD875| PLP
|1DD876| BMI .backwards

; +2 so the -1 is a net +1
|1DD878| INC A
|1DD879| INC A

.backwards
|1DD87A| DEC A
|1DD87B| AND.b #$0F
|1DD87D| STA.w $0DE0,X

.exit
|1DD880| RTS

;===================================================================================================

SpriteDraw_Moldorm:
|1DD881| JSR GetScreenCoordinates_bank1D

|1DD884| LDA.b #$0B
|1DD886| STA.w $0F50,X

|1DD889| JSR SpriteDraw_Moldorm_Eyeballs

|1DD88C| REP #$20

|1DD88E| LDA.b $90
|1DD890| CLC
|1DD891| ADC.w #$0008
|1DD894| STA.b $90

|1DD896| INC.b $92
|1DD898| INC.b $92

;---------------------------------------------------------------------------------------------------

|1DD89A| SEP #$20

|1DD89C| PHX
|1DD89D| TXY

|1DD89E| LDA.w $0E80,X
|1DD8A1| AND.b #$7F
|1DD8A3| TAX

|1DD8A4| LDA.w $0D10,Y
|1DD8A7| STA.l $7FFC00,X

|1DD8AB| LDA.w $0D00,Y
|1DD8AE| STA.l $7FFD00,X

|1DD8B2| LDA.w $0D30,Y
|1DD8B5| STA.l $7FFC80,X

|1DD8B9| LDA.w $0D20,Y
|1DD8BC| STA.l $7FFD80,X

|1DD8C0| PLX

|1DD8C1| JSR SpriteDraw_Moldorm_Head

;---------------------------------------------------------------------------------------------------

|1DD8C4| LDA.w $0DA0,X
|1DD8C7| CMP.b #$04
|1DD8C9| BCS .skip_segment

|1DD8CB| JSR SpriteDraw_Moldorm_SegmentA

;---------------------------------------------------------------------------------------------------

|1DD8CE| LDA.w $0DA0,X
|1DD8D1| CMP.b #$03
|1DD8D3| BCS .skip_segment

|1DD8D5| JSR SpriteDraw_Moldorm_SegmentB

;---------------------------------------------------------------------------------------------------

|1DD8D8| LDA.w $0DA0,X
|1DD8DB| CMP.b #$02
|1DD8DD| BCS .skip_segment

|1DD8DF| JSR SpriteDraw_Moldorm_SegmentC

;---------------------------------------------------------------------------------------------------

|1DD8E2| LDA.w $0DA0,X
|1DD8E5| BNE .skip_segment

|1DD8E7| JSR Moldorm_HandleTail

;---------------------------------------------------------------------------------------------------

.skip_segment
|1DD8EA| JSR GiantMoldorm_IncrementalSegmentExplosion
|1DD8ED| JSL Get16BitSpriteCoords_long

|1DD8F1| RTS

;===================================================================================================

GiantMoldorm_IncrementalSegmentExplosion:
|1DD8F2| LDA.w $0DD0,X
|1DD8F5| CMP.b #$09
|1DD8F7| BNE .exit

|1DD8F9| LDA.w $0F10,X
|1DD8FC| BEQ .exit

|1DD8FE| CMP.b #$50
|1DD900| BCS .exit

|1DD902| AND.b #$0F
|1DD904| ORA.b $11
|1DD906| ORA.w $0FC1
|1DD909| BNE .exit

|1DD90B| INC.w $0DA0,X

|1DD90E| JSL MakeBossExplosion

.exit
|1DD912| RTS

;===================================================================================================

pool SpriteDraw_Moldorm_Head

.oam_groups
; group00
|1DD913| dw  -8,  -8 : db $80, $00, $00, $02
|1DD91B| dw   8,  -8 : db $82, $00, $00, $02
|1DD923| dw  -8,   8 : db $A0, $00, $00, $02
|1DD92B| dw   8,   8 : db $A2, $00, $00, $02

; group01
|1DD933| dw  -8,  -8 : db $82, $40, $00, $02
|1DD93B| dw   8,  -8 : db $80, $40, $00, $02
|1DD943| dw  -8,   8 : db $A2, $40, $00, $02
|1DD94B| dw   8,   8 : db $A0, $40, $00, $02

; group02
|1DD953| dw  -6,  -6 : db $80, $00, $00, $02
|1DD95B| dw   6,  -6 : db $82, $00, $00, $02
|1DD963| dw  -6,   6 : db $A0, $00, $00, $02
|1DD96B| dw   6,   6 : db $A2, $00, $00, $02

; group03
|1DD973| dw  -6,  -6 : db $82, $40, $00, $02
|1DD97B| dw   6,  -6 : db $80, $40, $00, $02
|1DD983| dw  -6,   6 : db $A2, $40, $00, $02
|1DD98B| dw   6,   6 : db $A0, $40, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Moldorm_Head:
|1DD993| LDA.b #$00
|1DD995| XBA

|1DD996| LDA.w $0E00,X
|1DD999| AND.b #$02
|1DD99B| STA.b $00

|1DD99D| LDA.w $0E80,X
|1DD9A0| LSR A
|1DD9A1| AND.b #$01
|1DD9A3| ORA.b $00

|1DD9A5| REP #$20

|1DD9A7| ASL A ; x32
|1DD9A8| ASL A
|1DD9A9| ASL A
|1DD9AA| ASL A
|1DD9AB| ASL A
|1DD9AC| ADC.w #.oam_groups
|1DD9AF| STA.b $08

|1DD9B1| SEP #$20

|1DD9B3| LDA.b #$04
|1DD9B5| JMP.w TabulatedSpriteDraw_bank1D

;===================================================================================================

pool SpriteDraw_Moldorm_LargeSegment

.oam_groups
; group00
|1DD9B8| dw  -8,  -8 : db $84, $00, $00, $02
|1DD9C0| dw   8,  -8 : db $86, $00, $00, $02
|1DD9C8| dw  -8,   8 : db $A4, $00, $00, $02
|1DD9D0| dw   8,   8 : db $A6, $00, $00, $02

; group01
|1DD9D8| dw  -8,  -8 : db $86, $40, $00, $02
|1DD9E0| dw   8,  -8 : db $84, $40, $00, $02
|1DD9E8| dw  -8,   8 : db $A6, $40, $00, $02
|1DD9F0| dw   8,   8 : db $A4, $40, $00, $02

endpool

;===================================================================================================

SpriteDraw_Moldorm_SegmentA:
|1DD9F8| TXY

|1DD9F9| PHX

|1DD9FA| LDA.w $0E80,X
|1DD9FD| SEC
|1DD9FE| SBC.b #$10

;===================================================================================================

SpriteDraw_Moldorm_LargeSegment:
|1DDA00| AND.b #$7F
|1DDA02| TAX

|1DDA03| LDA.l $7FFC00,X
|1DDA07| STA.w $0FD8

|1DDA0A| LDA.l $7FFC80,X
|1DDA0E| STA.w $0FD9

|1DDA11| LDA.l $7FFD00,X
|1DDA15| STA.w $0FDA

|1DDA18| LDA.l $7FFD80,X
|1DDA1C| STA.w $0FDB

|1DDA1F| PLX

|1DDA20| LDA.b #$00
|1DDA22| XBA
|1DDA23| LDA.w $0E80,X

|1DDA26| LSR A
|1DDA27| AND.b #$01

|1DDA29| REP #$20

|1DDA2B| ASL A ; x32
|1DDA2C| ASL A
|1DDA2D| ASL A
|1DDA2E| ASL A
|1DDA2F| ASL A
|1DDA30| ADC.w #.oam_groups
|1DDA33| STA.b $08

|1DDA35| REP #$20

|1DDA37| LDA.b $90
|1DDA39| CLC
|1DDA3A| ADC.w #$0010
|1DDA3D| STA.b $90

|1DDA3F| LDA.b $92
|1DDA41| CLC
|1DDA42| ADC.w #$0004
|1DDA45| STA.b $92

|1DDA47| SEP #$20 ; useless double SEP
|1DDA49| SEP #$20

|1DDA4B| LDA.b #$04
|1DDA4D| JMP.w TabulatedSpriteDraw_bank1D

;===================================================================================================

SpriteDraw_Moldorm_SegmentB:
|1DDA50| TXY
|1DDA51| PHX

|1DDA52| LDA.w $0E80,X
|1DDA55| SEC
|1DDA56| SBC.b #$1C

|1DDA58| JMP.w SpriteDraw_Moldorm_LargeSegment

;===================================================================================================

pool SpriteDraw_Moldorm_SmallSegment

.flip
|1DDA5B| db $00, $40, $C0, $80

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Moldorm_SegmentC:
|1DDA5F| STZ.w $0DC0,X

|1DDA62| REP #$20

|1DDA64| LDA.b $90
|1DDA66| CLC
|1DDA67| ADC.w #$0010
|1DDA6A| STA.b $90

|1DDA6C| LDA.b $92
|1DDA6E| CLC
|1DDA6F| ADC.w #$0004
|1DDA72| STA.b $92

|1DDA74| SEP #$20

|1DDA76| TXY

|1DDA77| PHX

|1DDA78| LDA.w $0E80,X
|1DDA7B| SEC
|1DDA7C| SBC.b #$28

;===================================================================================================

SpriteDraw_Moldorm_SmallSegment:
|1DDA7E| AND.b #$7F
|1DDA80| TAX

|1DDA81| LDA.l $7FFC00,X
|1DDA85| STA.w $0FD8

|1DDA88| LDA.l $7FFC80,X
|1DDA8C| STA.w $0FD9

|1DDA8F| LDA.l $7FFD00,X
|1DDA93| STA.w $0FDA

|1DDA96| LDA.l $7FFD80,X
|1DDA9A| STA.w $0FDB

|1DDA9D| PLX

|1DDA9E| LDA.w $0E80,X
|1DDAA1| LSR A
|1DDAA2| AND.b #$03
|1DDAA4| TAY

|1DDAA5| LDA.w $0F50,X
|1DDAA8| PHA

|1DDAA9| AND.b #$3F
|1DDAAB| ORA.w .flip,Y
|1DDAAE| STA.w $0F50,X

|1DDAB1| JSL SpriteDraw_SingleLarge_long

|1DDAB5| PLA
|1DDAB6| STA.w $0F50,X

|1DDAB9| RTS

;===================================================================================================

Moldorm_HandleTail:
|1DDABA| JSR SpriteDraw_Moldorm_Tail

|1DDABD| LDA.w $0E10,X
|1DDAC0| BNE .no_damage

; reckless
; doesn't recover some values to their proper state
|1DDAC2| LDA.b #$01
|1DDAC4| STA.w $0D90,X

|1DDAC7| STZ.w $0F60,X
|1DDACA| STZ.w $0CAA,X

;---------------------------------------------------------------------------------------------------

|1DDACD| LDA.w $0D10,X
|1DDAD0| PHA

|1DDAD1| LDA.w $0D30,X
|1DDAD4| PHA

|1DDAD5| LDA.w $0D00,X
|1DDAD8| PHA

|1DDAD9| LDA.w $0D20,X
|1DDADC| PHA

;---------------------------------------------------------------------------------------------------

|1DDADD| LDA.w $0FD8
|1DDAE0| STA.w $0D10,X

|1DDAE3| LDA.w $0FD9
|1DDAE6| STA.w $0D30,X

|1DDAE9| LDA.w $0FDA
|1DDAEC| STA.w $0D00,X

|1DDAEF| LDA.w $0FDB
|1DDAF2| STA.w $0D20,X

|1DDAF5| JSL CheckDamageFromLink_long

|1DDAF9| STZ.w $0D90,X

|1DDAFC| LDA.b #$09
|1DDAFE| STA.w $0F60,X

|1DDB01| LDA.b #$04
|1DDB03| STA.w $0CAA,X

;---------------------------------------------------------------------------------------------------

|1DDB06| PLA
|1DDB07| STA.w $0D20,X

|1DDB0A| PLA
|1DDB0B| STA.w $0D00,X

|1DDB0E| PLA
|1DDB0F| STA.w $0D30,X

|1DDB12| PLA
|1DDB13| STA.w $0D10,X

.no_damage
|1DDB16| RTS

;===================================================================================================

SpriteDraw_Moldorm_Tail:
|1DDB17| REP #$20

|1DDB19| LDA.b $90
|1DDB1B| CLC
|1DDB1C| ADC.w #$0004
|1DDB1F| STA.b $90

|1DDB21| LDA.b $92
|1DDB23| CLC
|1DDB24| ADC.w #$0001
|1DDB27| STA.b $92

|1DDB29| SEP #$20

|1DDB2B| INC.w $0DC0,X

|1DDB2E| LDA.b #$0D
|1DDB30| STA.w $0F50,X

|1DDB33| TXY
|1DDB34| PHX

|1DDB35| LDA.w $0E80,X
|1DDB38| SEC
|1DDB39| SBC.b #$30

|1DDB3B| JMP.w SpriteDraw_Moldorm_SmallSegment

;===================================================================================================

pool SpriteDraw_Moldorm_Eyeballs

.offset_x
|1DDB3E| dw  16,  15,  12,   6,   0,  -6, -12, -13
|1DDB4E| dw -16, -13, -12,  -6,   0,   6,  12,  15

.offset_y
|1DDB5E| dw   0,   6,  12,  15,  16,  15,  12,   6
|1DDB6E| dw   0,  -6, -12, -13, -16, -13, -12,  -6

.char
|1DDB7E| db $AA, $AA, $A8, $A8, $8A, $8A, $A8, $A8
|1DDB86| db $AA, $AA, $A8, $A8, $8A, $8A, $A8, $A8

.flip
|1DDB8E| db $00, $00, $00, $00, $80, $80, $40, $40
|1DDB96| db $40, $40, $C0, $C0, $00, $00, $80, $80

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Moldorm_Eyeballs:
|1DDB9E| STZ.b $07

|1DDBA0| LDA.w $0EA0,X
|1DDBA3| BEQ .no_eye_wonk

|1DDBA5| LDA.b $1A
|1DDBA7| STA.b $07

.no_eye_wonk
|1DDBA9| LDA.w $0DE0,X
|1DDBAC| CLC
|1DDBAD| ADC.b #$FF
|1DDBAF| STA.b $06

|1DDBB1| PHX

;---------------------------------------------------------------------------------------------------

|1DDBB2| LDX.b #$01

.next_eye
|1DDBB4| LDA.b $06
|1DDBB6| AND.b #$0F
|1DDBB8| ASL A

|1DDBB9| PHX
|1DDBBA| TAX

|1DDBBB| REP #$20

|1DDBBD| LDA.b $00
|1DDBBF| CLC
|1DDBC0| ADC.w .offset_x,X
|1DDBC3| STA.b ($90),Y

|1DDBC5| AND.w #$0100
|1DDBC8| STA.b $0E

|1DDBCA| LDA.b $02
|1DDBCC| CLC
|1DDBCD| ADC.w .offset_y,X
|1DDBD0| INY
|1DDBD1| STA.b ($90),Y

|1DDBD3| ADC.w #$0010
|1DDBD6| CMP.w #$0100

|1DDBD9| SEP #$20
|1DDBDB| BCC .on_screen

|1DDBDD| LDA.b #$F0
|1DDBDF| STA.b ($90),Y

.on_screen
|1DDBE1| LDA.b $06
|1DDBE3| CLC
|1DDBE4| ADC.b $07

|1DDBE6| AND.b #$0F
|1DDBE8| TAX

|1DDBE9| LDA.w .char,X
|1DDBEC| INY
|1DDBED| STA.b ($90),Y

|1DDBEF| LDA.w .flip,X
|1DDBF2| ORA.b $05
|1DDBF4| INY
|1DDBF5| STA.b ($90),Y

|1DDBF7| PHY

|1DDBF8| TYA
|1DDBF9| LSR A
|1DDBFA| LSR A
|1DDBFB| TAY

|1DDBFC| LDA.b $0F
|1DDBFE| ORA.b #$02
|1DDC00| STA.b ($92),Y

|1DDC02| LDA.b $06
|1DDC04| CLC
|1DDC05| ADC.b #$02
|1DDC07| STA.b $06

|1DDC09| PLY
|1DDC0A| INY

|1DDC0B| PLX
|1DDC0C| DEX
|1DDC0D| BPL .next_eye

;---------------------------------------------------------------------------------------------------

|1DDC0F| PLX

|1DDC10| RTS

;===================================================================================================

Moldorm_Explode:
|1DDC11| LDA.w $0F10,X
|1DDC14| BNE .delay

;===================================================================================================

#PrepareToDieLikeABoss:
|1DDC16| LDA.b #$04
|1DDC18| STA.w $0DD0,X

|1DDC1B| STZ.w $0D90,X

|1DDC1E| LDA.b #$E0
|1DDC20| STA.w $0DF0,X

|1DDC23| RTS

;===================================================================================================

.delay
|1DDC24| ORA.b #$E0
|1DDC26| STA.w $0EF0,X

|1DDC29| RTS

;===================================================================================================

MakeBossExplosion:
|1DDC2A| LDA.b #$0C ; SFX2.0C
|1DDC2C| JSL QueueSpriteSFX2WithPan

;===================================================================================================

Trinexx_AddExplosion:
|1DDC30| LDA.b #$00 ; SPRITE 00
|1DDC32| JSL SpawnSpriteDynamically
|1DDC36| BMI .no_space

|1DDC38| LDA.b #$0B
|1DDC3A| STA.w $0AAA

|1DDC3D| LDA.b #$04
|1DDC3F| STA.w $0DD0,Y

|1DDC42| LDA.b #$03
|1DDC44| STA.w $0E40,Y

|1DDC47| LDA.b #$0C
|1DDC49| STA.w $0F50,Y

|1DDC4C| LDA.w $0FD8
|1DDC4F| STA.w $0D10,Y

|1DDC52| LDA.w $0FD9
|1DDC55| STA.w $0D30,Y

|1DDC58| LDA.w $0FDA
|1DDC5B| STA.w $0D00,Y

|1DDC5E| LDA.w $0FDB
|1DDC61| STA.w $0D20,Y

|1DDC64| LDA.b #$1F
|1DDC66| STA.w $0DF0,Y
|1DDC69| STA.w $0D90,Y

|1DDC6C| LDA.b #$02
|1DDC6E| STA.w $0F20,Y

.no_space
|1DDC71| RTL

;===================================================================================================

Sprite_01_Vulture:
|1DDC72| PHB
|1DDC73| PHK
|1DDC74| PLB

|1DDC75| JSR .main

|1DDC78| PLB

|1DDC79| RTL

;---------------------------------------------------------------------------------------------------

.main
|1DDC7A| LDA.w $0B89,X
|1DDC7D| ORA.b #$30
|1DDC7F| STA.w $0B89,X

|1DDC82| JSR SpriteDraw_Vulture

|1DDC85| JSR CheckIfActive_bank1D
|1DDC88| JSR HandleSpriteRecoil_bank1D
|1DDC8B| JSR CheckDamageToAndFromLink_bank1D

|1DDC8E| JSR MoveSpriteXY_bank1D

|1DDC91| LDA.w $0D80,X
|1DDC94| JSL JumpTableLocal
|1DDC98| dw Vulture_Perched
|1DDC9A| dw Vulture_Circling

;===================================================================================================

Vulture_Perched:
|1DDC9C| INC.w $0E80,X

|1DDC9F| LDA.w $0E80,X
|1DDCA2| CMP.b #$A0
|1DDCA4| BNE .exit

|1DDCA6| INC.w $0D80,X

|1DDCA9| LDA.b #$1E ; SFX3.1E
|1DDCAB| JSL QueueSpriteSFX3WithPan

|1DDCAF| LDA.b #$10
|1DDCB1| STA.w $0DF0,X

.exit
|1DDCB4| RTS

;===================================================================================================

pool Vulture_Circling

.draw
|1DDCB5| db $01, $02, $03, $02

endpool

;---------------------------------------------------------------------------------------------------

Vulture_Circling:
|1DDCB9| LDA.b $1A
|1DDCBB| LSR A
|1DDCBC| AND.b #$03
|1DDCBE| TAY

|1DDCBF| LDA.w .draw,Y
|1DDCC2| STA.w $0DC0,X

|1DDCC5| LDA.w $0DF0,X
|1DDCC8| BEQ .full_ascended

|1DDCCA| INC.w $0F70,X

|1DDCCD| RTS

;---------------------------------------------------------------------------------------------------

.full_ascended
|1DDCCE| TXA
|1DDCCF| EOR.b $1A
|1DDCD1| AND.b #$01
|1DDCD3| BNE .exit

; what? their speed depends on their sprite slot?
|1DDCD5| TXA
|1DDCD6| AND.b #$0F
|1DDCD8| CLC
|1DDCD9| ADC.b #$18
|1DDCDB| JSL ProjectSpriteSpeedTowardsLink_long

|1DDCDF| LDA.b $00
|1DDCE1| EOR.b #$FF
|1DDCE3| INC A
|1DDCE4| STA.w $0D50,X

|1DDCE7| LDA.b $01
|1DDCE9| STA.w $0D40,X

;---------------------------------------------------------------------------------------------------

|1DDCEC| LDA.b $0E
|1DDCEE| CLC
|1DDCEF| ADC.b #$28
|1DDCF1| CMP.b #$50
|1DDCF3| BCS .too_far_away

|1DDCF5| LDA.b $0F
|1DDCF7| CLC
|1DDCF8| ADC.b #$28
|1DDCFA| CMP.b #$50
|1DDCFC| BCS .too_far_away

;---------------------------------------------------------------------------------------------------

.exit
|1DDCFE| RTS

;---------------------------------------------------------------------------------------------------

.too_far_away
|1DDCFF| LDA.b $00

|1DDD01| ASL.b $00

|1DDD03| PHP
|1DDD04| ROR A
|1DDD05| PLP

|1DDD06| ROR A
|1DDD07| CLC
|1DDD08| ADC.w $0D40,X
|1DDD0B| STA.w $0D40,X

|1DDD0E| LDA.b $01
|1DDD10| ASL.b $01

|1DDD12| PHP
|1DDD13| ROR A
|1DDD14| PLP

|1DDD15| ROR A
|1DDD16| CLC
|1DDD17| ADC.w $0D50,X
|1DDD1A| STA.w $0D50,X

|1DDD1D| RTS

;===================================================================================================

pool SpriteDraw_Vulture

.oam_groups
; group00
|1DDD1E| dw  -8,   0 : db $86, $00, $00, $02
|1DDD26| dw   8,   0 : db $86, $40, $00, $02

; group01
|1DDD2E| dw  -8,   0 : db $80, $00, $00, $02
|1DDD36| dw   8,   0 : db $80, $40, $00, $02

; group02
|1DDD3E| dw  -8,   0 : db $82, $00, $00, $02
|1DDD46| dw   8,   0 : db $82, $40, $00, $02

; group03
|1DDD4E| dw  -8,   0 : db $84, $00, $00, $02
|1DDD56| dw   8,   0 : db $84, $40, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Vulture:
|1DDD5E| LDA.b #$00
|1DDD60| XBA
|1DDD61| LDA.w $0DC0,X

|1DDD64| REP #$20

|1DDD66| ASL A ; x16
|1DDD67| ASL A
|1DDD68| ASL A
|1DDD69| ASL A

|1DDD6A| ADC.w #.oam_groups
|1DDD6D| STA.b $08

|1DDD6F| SEP #$20

|1DDD71| LDA.b #$02
|1DDD73| JSR TabulatedSpriteDraw_bank1D
|1DDD76| JSL DrawSpriteShadow_long

|1DDD7A| RTS

;===================================================================================================

Sprite_00_Raven:
|1DDD7B| PHB
|1DDD7C| PHK
|1DDD7D| PLB

|1DDD7E| JSR .main

|1DDD81| PLB

|1DDD82| RTL

;---------------------------------------------------------------------------------------------------

#RavenFlip:
|1DDD83| db $00, $40

;---------------------------------------------------------------------------------------------------

.main
|1DDD85| LDA.w $0B89,X
|1DDD88| ORA.b #$30
|1DDD8A| STA.w $0B89,X

|1DDD8D| JSL SpriteDraw_SingleLarge_long

|1DDD91| JSR CheckIfActive_bank1D
|1DDD94| JSR HandleSpriteRecoil_bank1D
|1DDD97| JSR CheckDamageToAndFromLink_bank1D

|1DDD9A| JSR MoveSpriteXY_bank1D

|1DDD9D| LDA.w $0D80,X
|1DDDA0| JSL JumpTableLocal
|1DDDA4| dw Raven_Perched
|1DDDA6| dw Raven_Rise
|1DDDA8| dw Raven_Attack
|1DDDAA| dw Raven_Flee

;===================================================================================================

Raven_RiseTime:
|1DDDAC| db $10, $F8

;===================================================================================================

Raven_Perched:
|1DDDAE| JSR GetXDisplacementFromLink_bank1D
|1DDDB1| JSR Raven_SetFlip

|1DDDB4| REP #$20

|1DDDB6| LDA.b $22
|1DDDB8| SEC
|1DDDB9| SBC.w $0FD8
|1DDDBC| ADC.w #$0050
|1DDDBF| CMP.w #$00A0
|1DDDC2| BCS .link_not_close

|1DDDC4| LDA.b $20
|1DDDC6| SEC
|1DDDC7| SBC.w $0FDA
|1DDDCA| ADC.w #$0058
|1DDDCD| CMP.w #$00A0
|1DDDD0| BCS .link_not_close

|1DDDD2| SEP #$20

|1DDDD4| INC.w $0D80,X

|1DDDD7| LDA.b #$18
|1DDDD9| STA.w $0DF0,X

|1DDDDC| LDA.b #$1E ; SFX3.1E
|1DDDDE| JSL QueueSpriteSFX3WithPan

.link_not_close
|1DDDE2| SEP #$20

|1DDDE4| RTS

;===================================================================================================

Raven_Rise:
|1DDDE5| LDA.w $0DF0,X
|1DDDE8| BNE .delay

|1DDDEA| INC.w $0D80,X

|1DDDED| LDY.w $0D90,X

|1DDDF0| LDA.w Raven_RiseTime,Y
|1DDDF3| STA.w $0DF0,X

|1DDDF6| LDA.b #$20
|1DDDF8| JSL ApplySpeedTowardsLink_long

.delay
|1DDDFC| INC.w $0F70,X

|1DDDFF| LDA.b $1A
|1DDE01| LSR A
|1DDE02| AND.b #$01
|1DDE04| INC A
|1DDE05| STA.w $0DC0,X

|1DDE08| RTS

;===================================================================================================

Raven_Attack:
|1DDE09| LDA.w $0DF0,X
|1DDE0C| BNE .dont_flee

; Always flee in light world
|1DDE0E| LDA.w $0FFF
|1DDE11| BEQ .always_flee

|1DDE13| LDA.w $0D90,X
|1DDE16| BNE .dont_flee

.always_flee
|1DDE18| INC.w $0D80,X

.dont_flee
|1DDE1B| TXA
|1DDE1C| EOR.b $1A
|1DDE1E| LSR A
|1DDE1F| BCS Raven_Animate

|1DDE21| LDA.b #$20
|1DDE23| JSL ProjectSpriteSpeedTowardsLink_long

;===================================================================================================

Raven_Accelerate:
|1DDE27| LDA.w $0D40,X
|1DDE2A| CMP.b $00
|1DDE2C| BEQ .y_speed_good
|1DDE2E| BPL .y_speed_too_high

|1DDE30| INC.w $0D40,X
|1DDE33| BRA .y_speed_good

.y_speed_too_high
|1DDE35| DEC.w $0D40,X

.y_speed_good
|1DDE38| LDA.w $0D50,X
|1DDE3B| CMP.b $01
|1DDE3D| BEQ Raven_Animate
|1DDE3F| BPL .x_speed_too_high

|1DDE41| INC.w $0D50,X

|1DDE44| BRA Raven_Animate

.x_speed_too_high
|1DDE46| DEC.w $0D50,X

;===================================================================================================

Raven_Animate:
|1DDE49| LDA.b $1A
|1DDE4B| LSR A
|1DDE4C| AND.b #$01
|1DDE4E| INC A
|1DDE4F| STA.w $0DC0,X

|1DDE52| LDA.w $0D50,X
|1DDE55| ASL A
|1DDE56| ROL A
|1DDE57| AND.b #$01
|1DDE59| TAY

;===================================================================================================

Raven_SetFlip:
|1DDE5A| LDA.w $0F50,X
|1DDE5D| AND.b #$BF
|1DDE5F| ORA.w RavenFlip,Y
|1DDE62| STA.w $0F50,X

|1DDE65| RTS

;===================================================================================================

Raven_Flee:
|1DDE66| TXA
|1DDE67| EOR.b $1A
|1DDE69| LSR A
|1DDE6A| BCS Raven_Animate

|1DDE6C| LDA.b #$30
|1DDE6E| JSL ProjectSpriteSpeedTowardsLink_long

|1DDE72| LDA.b $00
|1DDE74| EOR.b #$FF
|1DDE76| INC A
|1DDE77| STA.b $00

|1DDE79| LDA.b $01
|1DDE7B| EOR.b #$FF
|1DDE7D| INC A
|1DDE7E| STA.b $01

|1DDE80| BRA Raven_Accelerate

;===================================================================================================

Vitreous_SpawnMinions:
|1DDE82| PHB
|1DDE83| PHK
|1DDE84| PLB

|1DDE85| JSR .main

|1DDE88| PLB

|1DDE89| RTL

;---------------------------------------------------------------------------------------------------

.offset_x_low
|1DDE8A| db   8,   22,   -8,  -22,    0,   14,   19,   33
|1DDE92| db  26,  -14,  -19,  -33,  -26

.offset_x_high
|1DDE97| db   0,    0,   -1,   -1,    0,    0,    0,    0
|1DDE9F| db   0,   -1,   -1,   -1,   -1

.offset_y_low
|1DDEA4| db  -8,  -12,   -8,  -12,    0,  -20,   -1,  -12
|1DDEAC| db -24,  -20,   -1,  -12,  -24

.offset_y_high
|1DDEB1| db  -1,   -1,   -1,   -1,    0,   -1,   -1,   -1
|1DDEB9| db  -1,   -1,   -1,   -1,   -1

;---------------------------------------------------------------------------------------------------

.anim_state
|1DDEBE| db $01,  $01,  $01,  $01,  $00,  $00,  $00,  $00
|1DDEC6| db $00,  $00,  $00,  $00,  $00

;---------------------------------------------------------------------------------------------------

.main
|1DDECB| LDA.b #$09
|1DDECD| STA.w $0ED0,X

|1DDED0| LDA.b #$04
|1DDED2| STA.w $0DC0,X

; This is fairyly pointless.
; Every eyeball is written manually regardless.
; It does put Vitty's coordinates in direct page though.
|1DDED5| LDY.b #$0D
|1DDED7| JSL SpawnSpriteDynamically.slot_limited

;---------------------------------------------------------------------------------------------------

|1DDEDB| LDY.b #$0C

.next_eyeball
|1DDEDD| LDA.b #$09
|1DDEDF| STA.w $0DD1,Y

|1DDEE2| LDA.b #$BE ; SPRITE BE
|1DDEE4| STA.w $0E21,Y

|1DDEE7| PHX

|1DDEE8| TYX
|1DDEE9| INX

|1DDEEA| JSL LoadSpriteProperties

|1DDEEE| PLX

|1DDEEF| LDA.b #$00
|1DDEF1| STA.w $0F21,Y

|1DDEF4| LDA.b $00
|1DDEF6| CLC
|1DDEF7| ADC.w .offset_x_low,Y
|1DDEFA| STA.w $0D11,Y
|1DDEFD| STA.w $0D91,Y

|1DDF00| LDA.b $01
|1DDF02| ADC.w .offset_x_high,Y
|1DDF05| STA.w $0D31,Y
|1DDF08| STA.w $0DA1,Y

|1DDF0B| LDA.b $02
|1DDF0D| CLC
|1DDF0E| ADC.w .offset_y_low,Y
|1DDF11| PHP

|1DDF12| CLC
|1DDF13| ADC.b #$20
|1DDF15| STA.w $0D01,Y
|1DDF18| STA.w $0DB1,Y

|1DDF1B| LDA.b $03
|1DDF1D| ADC.b #$00

|1DDF1F| PLP
|1DDF20| ADC.w .offset_y_high,Y
|1DDF23| STA.w $0D21,Y
|1DDF26| STA.w $0DE1,Y

|1DDF29| LDA.w .anim_state,Y
|1DDF2C| STA.w $0DC1,Y
|1DDF2F| STA.w $0BA1,Y

|1DDF32| TYA
|1DDF33| ASL A
|1DDF34| ASL A
|1DDF35| ASL A
|1DDF36| STA.b $0F

|1DDF38| JSL GetRandomNumber
|1DDF3C| ADC.b $0F
|1DDF3E| STA.w $0E81,Y

|1DDF41| DEY
|1DDF42| BPL .next_eyeball

;---------------------------------------------------------------------------------------------------

|1DDF44| RTS

;===================================================================================================

QuakeBounceSpeeds:
|1DDF45| db $20, $10, $08, $00

;===================================================================================================

Sprite_C0_Catfish:
|1DDF49| LDA.w $0D90,X
|1DDF4C| BPL .not_splash

|1DDF4E| JSR SplashOfWater

|1DDF51| RTS

.not_splash
|1DDF52| BEQ TheCatfishHimself

;===================================================================================================

QuakeMedallion:
|1DDF54| LDA.w $0F70,X
|1DDF57| BNE .airborne

|1DDF59| JSL SpriteDraw_WaterRipple_WithOAMAdjust_long

|1DDF5D| LDA.b $11
|1DDF5F| BNE .airborne

|1DDF61| JSL CheckDamageToLink_same_layer_long
|1DDF65| BCC .airborne

|1DDF67| STZ.w $0DD0,X
|1DDF6A| STZ.w $02E9

|1DDF6D| LDY.w $0D90,X

|1DDF70| PHX

|1DDF71| JSL GrantItemReceipt

|1DDF75| PLX

;---------------------------------------------------------------------------------------------------

.airborne
|1DDF76| LDA.w $0EE0,X
|1DDF79| BEQ .keep_oam_allotment

|1DDF7B| LDA.b #$08
|1DDF7D| JSL AllocateOAMInRegionC

.keep_oam_allotment
|1DDF81| JSL SpriteDraw_SingleLarge_long
|1DDF85| JSR CheckIfActive_bank1D
|1DDF88| JSR MoveSpriteXYZ_bank1D

|1DDF8B| DEC.w $0F80,X
|1DDF8E| DEC.w $0F80,X

|1DDF91| LDA.w $0F70,X
|1DDF94| BPL .exit

;---------------------------------------------------------------------------------------------------

|1DDF96| STZ.w $0F70,X

|1DDF99| LDA.w $0D50,X
|1DDF9C| ASL A
|1DDF9D| ROR.w $0D50,X

|1DDFA0| LDA.w $0D40,X
|1DDFA3| ASL A
|1DDFA4| ROR.w $0D40,X

; Counts the bounces we're on
|1DDFA7| LDY.w $0D80,X
|1DDFAA| CPY.b #$04
|1DDFAC| BNE .still_bouncing

|1DDFAE| STZ.w $0D50,X
|1DDFB1| STZ.w $0D40,X
|1DDFB4| STZ.w $0F80,X

|1DDFB7| BRA .exit

;---------------------------------------------------------------------------------------------------

.still_bouncing
|1DDFB9| INC.w $0D80,X

|1DDFBC| LDA.w QuakeBounceSpeeds,Y
|1DDFBF| STA.w $0F80,X

|1DDFC2| CPY.b #$02
|1DDFC4| BCS .exit

|1DDFC6| JSR SpawnWaterSplash
|1DDFC9| BMI .exit

|1DDFCB| LDA.b #$10
|1DDFCD| STA.w $0DF0,Y

.exit
|1DDFD0| RTS

;===================================================================================================

TheCatfishHimself:
|1DDFD1| JSR SpriteDraw_Catfish
|1DDFD4| JSR CheckIfActive_bank1D

|1DDFD7| LDA.w $0D80,X
|1DDFDA| JSL JumpTableLocal
|1DDFDE| dw Catfish_Sleep
|1DDFE0| dw Catfish_TheRumbling
|1DDFE2| dw Catfish_Surface
|1DDFE4| dw Catfish_LeaveMeAlone

;===================================================================================================

Catfish_Sleep:
|1DDFE6| LDY.b #$0F

; Search for a sprite within bounds
.next_sprite

; skip catfish himself
|1DDFE8| CPY.w $0FA0
|1DDFEB| BEQ .skip_sprite

|1DDFED| LDA.w $0DD0,Y
|1DDFF0| CMP.b #$03
|1DDFF2| BNE .skip_sprite

|1DDFF4| LDA.w $0D10,Y
|1DDFF7| STA.b $00

|1DDFF9| LDA.w $0D30,Y
|1DDFFC| STA.b $01

|1DDFFE| LDA.w $0D00,Y
|1DE001| STA.b $02

|1DE003| LDA.w $0D20,Y
|1DE006| STA.b $03

|1DE008| REP #$20

|1DE00A| LDA.w $0FD8
|1DE00D| SEC
|1DE00E| SBC.b $00
|1DE010| CLC
|1DE011| ADC.w #$0020

|1DE014| CMP.w #$0040
|1DE017| BCS .skip_sprite

|1DE019| LDA.w $0FDA
|1DE01C| SEC
|1DE01D| SBC.b $02
|1DE01F| CLC
|1DE020| ADC.w #$0020

|1DE023| CMP.w #$0040
|1DE026| BCS .skip_sprite

|1DE028| SEP #$20

;---------------------------------------------------------------------------------------------------

#Catfish_AdvanceAI:
|1DE02A| INC.w $0D80,X

|1DE02D| LDA.b #$FF
|1DE02F| STA.w $0DF0,X

|1DE032| RTS

;---------------------------------------------------------------------------------------------------

.skip_sprite
|1DE033| SEP #$20

|1DE035| DEY
|1DE036| BPL .next_sprite

|1DE038| RTS

;===================================================================================================

Catfish_TheRumbling:
|1DE039| LDA.w $0DF0,X
|1DE03C| BNE .delay

|1DE03E| JSR Catfish_AdvanceAI

|1DE041| STZ.w $011A
|1DE044| STZ.w $011B

|1DE047| LDA.b #$05 ; SFX1.05
|1DE049| STA.w $012D

|1DE04C| LDA.b #$30
|1DE04E| STA.w $0F80,X

|1DE051| LDA.b #$00
|1DE053| STA.w $0D50,X

|1DE056| JSR SpawnPlop

|1DE059| RTS

.delay
|1DE05A| CMP.b #$C0
|1DE05C| BCS .exit

|1DE05E| CMP.b #$BF
|1DE060| BNE .skip_sfx

|1DE062| LDY.b #$07 ; SFX1.07
|1DE064| STY.w $012D

.skip_sfx
|1DE067| AND.b #$01
|1DE069| TAY

|1DE06A| LDA.w Shakeyshake.low,Y
|1DE06D| STA.w $011A

|1DE070| LDA.w Shakeyshake.high,Y
|1DE073| STA.w $011B

|1DE076| LDA.b #$01
|1DE078| STA.w $02E4

.exit
|1DE07B| RTS

;===================================================================================================

pool Catfish_Surface

.draw
|1DE07C| db $01, $02, $02, $02, $02, $03, $03, $03
|1DE084| db $04, $04, $04, $05, $00, $00, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

Catfish_Surface:
|1DE08C| INC.w $0E80,X

|1DE08F| JSR MoveSpriteXYZ_bank1D

|1DE092| LDA.w $0F80,X
|1DE095| SEC
|1DE096| SBC.b #$02
|1DE098| STA.w $0F80,X

|1DE09B| CMP.b #$D0
|1DE09D| BNE .no_plop

|1DE09F| JSR SpawnPlop

.no_plop
|1DE0A2| LDA.w $0F70,X
|1DE0A5| BPL .leaping

|1DE0A7| STZ.w $0F70,X

|1DE0AA| INC.w $0D80,X

|1DE0AD| LDA.b #$FF
|1DE0AF| STA.w $0DF0,X

.leaping
|1DE0B2| LDA.w $0E80,X
|1DE0B5| LSR A
|1DE0B6| LSR A
|1DE0B7| TAY

|1DE0B8| LDA.w .draw,Y
|1DE0BB| STA.w $0DC0,X

|1DE0BE| RTS

;===================================================================================================

pool Catfish_LeaveMeAlone

.draw
|1DE0BF| db $00, $06, $07, $07, $07, $07, $07, $07
|1DE0C7| db $07, $07, $07, $07, $07, $07, $07, $07
|1DE0CF| db $07, $07, $06, $06

endpool

;---------------------------------------------------------------------------------------------------

Catfish_LeaveMeAlone:
|1DE0D3| LDA.w $0DF0,X
|1DE0D6| BNE .stay

|1DE0D8| STZ.w $0DD0,X

|1DE0DB| RTS

.stay
|1DE0DC| CMP.b #$A0
|1DE0DE| BNE .no_plop

|1DE0E0| PHA

|1DE0E1| JSR SpawnWaterSplash

|1DE0E4| PLA

.no_plop
|1DE0E5| BCS IAmTheOneWhoPlops

|1DE0E7| CMP.b #$0A
|1DE0E9| BNE .no_plop_dammit

|1DE0EB| PHA

|1DE0EC| JSR SpawnPlop

|1DE0EF| PLA

.no_plop_dammit
|1DE0F0| CMP.b #$04
|1DE0F2| BNE .no_splash_either

|1DE0F4| PHA

|1DE0F5| JSR SpawnWaterSplash

|1DE0F8| PLA

.no_splash_either
|1DE0F9| CMP.b #$60
|1DE0FB| BNE .delay_message

|1DE0FD| STZ.w $02E4

|1DE100| LDY.b #$28 ; MESSAGE 0128 - if you don't have quake

|1DE102| LDA.l $7EF349
|1DE106| BEQ .give_quake_message

|1DE108| LDY.b #$29 ; MESSAGE 0129 - if you do have quake

;---------------------------------------------------------------------------------------------------

.give_quake_message
|1DE10A| STY.w $1CF0

|1DE10D| LDA.b #$01
|1DE10F| STA.w $1CF1

|1DE112| JSL ShowMessageMinimal

|1DE116| RTS

;---------------------------------------------------------------------------------------------------

.delay_message
|1DE117| CMP.b #$50
|1DE119| BNE .just_draw

|1DE11B| PHA

|1DE11C| LDA.l $7EF349
|1DE120| BEQ .give_quake

|1DE122| JSL GetRandomNumber
|1DE126| AND.b #$01
|1DE128| BEQ .spit_fire

;---------------------------------------------------------------------------------------------------

.spit_bomb
|1DE12A| JSR SpawnSpriteBomb
|1DE12D| BRA .recover_timer

;---------------------------------------------------------------------------------------------------

.spit_fire
|1DE12F| JSL ShootFireball
|1DE133| BRA .recover_timer

;---------------------------------------------------------------------------------------------------

.give_quake
|1DE135| JSR RegurgitateQuakeMedallion

;---------------------------------------------------------------------------------------------------

.recover_timer
|1DE138| PLA

.just_draw
|1DE139| LSR A
|1DE13A| LSR A
|1DE13B| LSR A
|1DE13C| TAY

|1DE13D| LDA.w .draw,Y
|1DE140| STA.w $0DC0,X

|1DE143| RTS

;===================================================================================================

SpawnSpriteBomb:
|1DE144| LDA.b #$4A ; SPRITE 4A
|1DE146| JSL SpawnSpriteDynamically
|1DE14A| BMI .exit

|1DE14C| JSL SetSpawnedSpriteCoordinates
|1DE150| JSL TransmuteSpriteToBomb

|1DE154| LDA.b #$50
|1DE156| STA.w $0E00,Y

|1DE159| LDA.b #$18
|1DE15B| STA.w $0D50,Y

|1DE15E| LDA.b #$30
|1DE160| STA.w $0F80,Y

.exit
|1DE163| RTS

;===================================================================================================

IAmTheOneWhoPlops:
|1DE164| CMP.b #$FC
|1DE166| BNE .exit

|1DE168| JSR SpawnWaterSplash

.exit
|1DE16B| RTS

;===================================================================================================

RegurgitateQuakeMedallion:
|1DE16C| LDA.b #$C0 ; SPRITE C0
|1DE16E| JSL SpawnSpriteDynamically
|1DE172| BMI .exit

|1DE174| JSL SetSpawnedSpriteCoordinates

|1DE178| PHX
|1DE179| TYX

|1DE17A| LDA.b #$18
|1DE17C| STA.w $0D50,X

|1DE17F| LDA.b #$30
|1DE181| STA.w $0F80,X

|1DE184| LDA.b #$11 ; ITEMGET 11
|1DE186| STA.w $0D90,X

|1DE189| LDA.b #$20 ; SFX2.20
|1DE18B| JSL QueueSpriteSFX2WithPan

|1DE18F| LDA.b #$83
|1DE191| STA.w $0E40,X

|1DE194| LDA.b #$58
|1DE196| STA.w $0E60,X

|1DE199| AND.b #$0F
|1DE19B| STA.w $0F50,X

|1DE19E| PLX

|1DE19F| PHX
|1DE1A0| PHY

|1DE1A1| LDA.b #$1C
|1DE1A3| JSL WriteTo4BPPBuffer_item_gfx

|1DE1A7| PLY
|1DE1A8| PLX

.exit
|1DE1A9| RTS

;===================================================================================================
; Why is this here of all places?
;===================================================================================================
RegurgitateFlippers:
|1DE1AA| LDA.b #$C0 ; SPRITE C0
|1DE1AC| JSL SpawnSpriteDynamically
|1DE1B0| BMI .exit

|1DE1B2| JSL SetSpawnedSpriteCoordinates

|1DE1B6| PHX
|1DE1B7| TYX

|1DE1B8| LDA.b #$20
|1DE1BA| STA.w $0F80,X

|1DE1BD| LDA.b #$10
|1DE1BF| STA.w $0D40,X

|1DE1C2| LDA.b #$1E ; ITEMGET 1E
|1DE1C4| STA.w $0D90,X

|1DE1C7| LDA.b #$20 ; SFX2.20
|1DE1C9| JSL QueueSpriteSFX2WithPan

|1DE1CD| LDA.b #$83
|1DE1CF| STA.w $0E40,X

|1DE1D2| LDA.b #$54
|1DE1D4| STA.w $0E60,X

|1DE1D7| AND.b #$0F
|1DE1D9| STA.w $0F50,X

|1DE1DC| LDA.b #$30
|1DE1DE| STA.w $0EE0,X

|1DE1E1| PLX

|1DE1E2| PHX
|1DE1E3| PHY

|1DE1E4| LDA.b #$11
|1DE1E6| JSL WriteTo4BPPBuffer_item_gfx

|1DE1EA| PLY
|1DE1EB| PLX

.exit
|1DE1EC| RTL

;===================================================================================================

SpawnPlop:
|1DE1ED| LDA.b #$EC ; SPRITE EC
|1DE1EF| JSL SpawnSpriteDynamically
|1DE1F3| BMI .exit

|1DE1F5| JSL SetSpawnedSpriteCoordinates

|1DE1F9| LDA.b #$03
|1DE1FB| STA.w $0DD0,Y

|1DE1FE| LDA.b #$0F
|1DE200| STA.w $0DF0,Y

|1DE203| LDA.b #$00
|1DE205| STA.w $0D80,Y

|1DE208| LDA.b #$03
|1DE20A| STA.w $0E40,Y

|1DE20D| LDA.b #$28 ; SFX2.28
|1DE20F| JSL QueueSpriteSFX2WithPan

.exit
|1DE213| RTS

;===================================================================================================

SpawnWaterSplash_long:
|1DE214| PHB
|1DE215| PHK
|1DE216| PLB

|1DE217| JSR SpawnWaterSplash

|1DE21A| PLB

|1DE21B| RTL

;===================================================================================================

SpawnWaterSplash:
|1DE21C| LDA.b #$C0 ; SPRITE C0
|1DE21E| JSL SpawnSpriteDynamically
|1DE222| BMI .exit

|1DE224| JSL SetSpawnedSpriteCoordinates

|1DE228| LDA.b #$80
|1DE22A| STA.w $0D90,Y

|1DE22D| LDA.b #$02
|1DE22F| STA.w $0E40,Y
|1DE232| STA.w $0BA0,Y

|1DE235| LDA.b #$04
|1DE237| STA.w $0F50,Y

|1DE23A| LDA.b #$1F
|1DE23C| STA.w $0DF0,Y

.exit
|1DE23F| RTS

;===================================================================================================

pool SpriteDraw_Catfish

.oam_groups
; group00
|1DE240| dw  -4,   4 : db $8C, $00, $00, $02
|1DE248| dw   4,   4 : db $8D, $00, $00, $02
|1DE250| dw  -4,   4 : db $8C, $00, $00, $02
|1DE258| dw   4,   4 : db $8D, $00, $00, $02

; group01
|1DE260| dw  -4,  -4 : db $8C, $00, $00, $02
|1DE268| dw   4,  -4 : db $8D, $00, $00, $02
|1DE270| dw  -4,   4 : db $9C, $00, $00, $02
|1DE278| dw   4,   4 : db $9D, $00, $00, $02

; group02
|1DE280| dw  -4,  -4 : db $8D, $40, $00, $02
|1DE288| dw   4,  -4 : db $8C, $40, $00, $02
|1DE290| dw  -4,   4 : db $9D, $40, $00, $02
|1DE298| dw   4,   4 : db $9C, $40, $00, $02

; group03
|1DE2A0| dw  -4,  -4 : db $9D, $C0, $00, $02
|1DE2A8| dw   4,  -4 : db $9C, $C0, $00, $02
|1DE2B0| dw  -4,   4 : db $8D, $C0, $00, $02
|1DE2B8| dw   4,   4 : db $8C, $C0, $00, $02

; group04
|1DE2C0| dw  -4,   4 : db $9D, $C0, $00, $02
|1DE2C8| dw   4,   4 : db $9C, $C0, $00, $02
|1DE2D0| dw  -4,   4 : db $9D, $C0, $00, $02
|1DE2D8| dw   4,   4 : db $9C, $C0, $00, $02

; group05
|1DE2E0| dw   0,   8 : db $BD, $00, $00, $00
|1DE2E8| dw   8,   8 : db $BD, $40, $00, $00
|1DE2F0| dw   8,   8 : db $BD, $40, $00, $00
|1DE2F8| dw   8,   8 : db $BD, $40, $00, $00

; group06
|1DE300| dw  -8,   0 : db $86, $00, $00, $02
|1DE308| dw   8,   0 : db $86, $40, $00, $02
|1DE310| dw   8,   0 : db $86, $40, $00, $02
|1DE318| dw   8,   0 : db $86, $40, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Catfish:
|1DE320| LDA.b #$00
|1DE322| XBA
|1DE323| LDA.w $0DC0,X
|1DE326| BEQ .no_draw

|1DE328| DEC A

|1DE329| REP #$20

|1DE32B| ASL A ; x32
|1DE32C| ASL A
|1DE32D| ASL A
|1DE32E| ASL A
|1DE32F| ASL A
|1DE330| ADC.w #.oam_groups
|1DE333| STA.b $08

|1DE335| SEP #$20

|1DE337| LDA.b #$04
|1DE339| JMP.w TabulatedSpriteDraw_bank1D

.no_draw
|1DE33C| RTS

;===================================================================================================

pool SplashOfWater

.oam_groups
; group00
|1DE33D| dw  -8,  -4 : db $80, $00, $00, $00
|1DE345| dw  18,  -7 : db $80, $00, $00, $00

; group01
|1DE34D| dw  -5,  -2 : db $BF, $00, $00, $00
|1DE355| dw  15,  -4 : db $AF, $40, $00, $00

; group02
|1DE35D| dw   0,  -4 : db $E7, $00, $00, $02
|1DE365| dw   0,  -4 : db $E7, $00, $00, $02

; group03
|1DE36D| dw   0,  -4 : db $C0, $00, $00, $02
|1DE375| dw   0,  -4 : db $C0, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SplashOfWater:
|1DE37D| LDA.b #$00
|1DE37F| XBA
|1DE380| LDA.w $0DF0,X
|1DE383| BNE .dont_delete_self

|1DE385| STZ.w $0DD0,X

.dont_delete_self
|1DE388| LSR A ; /8
|1DE389| LSR A
|1DE38A| LSR A

|1DE38B| REP #$20

|1DE38D| ASL A ; x16
|1DE38E| ASL A ; so x2 overall
|1DE38F| ASL A
|1DE390| ASL A
|1DE391| ADC.w #.oam_groups
|1DE394| STA.b $08

|1DE396| SEP #$20

|1DE398| LDA.b #$02
|1DE39A| JMP.w TabulatedSpriteDraw_bank1D

;===================================================================================================

pool Sprite_BF_Lightning

.anim
|1DE39D| db $00, $01, $02, $03
|1DE3A1| db $00, $01, $02, $03

.flip
|1DE3A5| db $00, $00, $00, $00
|1DE3A9| db $40, $40, $40, $40

.branch_offset_x
|1DE3AD| db -15,   0,   0, -15,   0, -15, -15,   0
|1DE3B5| db -15,   0,   0, -15,   0, -15, -15,   0
|1DE3BD| db   0,  15,  15,   0,  15,   0,   0,  15
|1DE3C5| db   0,  15,  15,   0,  15,   0,   0,  15
|1DE3CD| db   0,  15,  15,   0,  15,   0,   0,  15
|1DE3D5| db   0,  15,  15,   0,  15,   0,   0,  15
|1DE3DD| db -15,   0,   0, -15,   0, -15, -15,   0
|1DE3E5| db -15,   0,   0, -15,   0, -15, -15,   0

endpool

;---------------------------------------------------------------------------------------------------

Sprite_BF_Lightning:
|1DE3ED| LDA.b $1A
|1DE3EF| ASL A
|1DE3F0| AND.b #$0E
|1DE3F2| STA.b $00

|1DE3F4| LDY.w $0D90,X

|1DE3F7| LDA.w $0F50,X
|1DE3FA| AND.b #$B1
|1DE3FC| ORA.w .flip,Y
|1DE3FF| ORA.b $00
|1DE401| STA.w $0F50,X

|1DE404| LDA.w .anim,Y

|1DE407| LDY.w $048E
|1DE40A| CPY.b #$20 ; ROOM 0020
|1DE40C| BNE .use_set_1

|1DE40E| CLC
|1DE40F| ADC.b #$04

;---------------------------------------------------------------------------------------------------

.use_set_1
|1DE411| STA.w $0DC0,X

|1DE414| JSL SpriteDraw_SingleLarge_long

|1DE418| JSR CheckIfActive_bank1D
|1DE41B| LDA.w $0DF0,X
|1DE41E| BNE .exit

|1DE420| JSR SpawnLightningTrail

|1DE423| LDA.b #$02
|1DE425| STA.w $0DF0,X

|1DE428| LDA.w $0D00,X
|1DE42B| CLC
|1DE42C| ADC.b #$10
|1DE42E| STA.w $0D00,X

|1DE431| PHA

|1DE432| LDA.w $0D20,X
|1DE435| ADC.b #$00
|1DE437| STA.w $0D20,X

|1DE43A| PLA
|1DE43B| SEC
|1DE43C| SBC.b $E8

|1DE43E| CMP.b #$D0
|1DE440| BCC .dont_delete_self

|1DE442| STZ.w $0DD0,X

|1DE445| RTS

;---------------------------------------------------------------------------------------------------

.dont_delete_self
|1DE446| JSL GetRandomNumber
|1DE44A| AND.b #$07
|1DE44C| STA.b $00

|1DE44E| LDA.w $0D90,X
|1DE451| ASL A
|1DE452| ASL A
|1DE453| ASL A
|1DE454| ORA.b $00
|1DE456| TAY

|1DE457| STZ.b $01

|1DE459| LDA.w .branch_offset_x,Y
|1DE45C| BPL .positive_offset

|1DE45E| DEC.b $01

;---------------------------------------------------------------------------------------------------

.positive_offset
|1DE460| CLC
|1DE461| ADC.w $0D10,X
|1DE464| STA.w $0D10,X

|1DE467| LDA.w $0D30,X
|1DE46A| ADC.b $01
|1DE46C| STA.w $0D30,X

|1DE46F| LDA.b $00
|1DE471| STA.w $0D90,X

.exit
|1DE474| RTS

;===================================================================================================

SpawnLightningTrail:
|1DE475| PHX
|1DE476| TXY

|1DE477| LDX.b #$1D

.next_slot
|1DE479| LDA.l $7FF800,X
|1DE47D| BEQ .free_slot

|1DE47F| DEX
|1DE480| BPL .next_slot

|1DE482| DEC.w $0FF8
|1DE485| BPL .use_search_index

|1DE487| LDA.b #$1D
|1DE489| STA.w $0FF8

.use_search_index
|1DE48C| LDX.w $0FF8

;---------------------------------------------------------------------------------------------------

.free_slot
|1DE48F| LDA.b #$09 ; GARNISH 09
|1DE491| STA.l $7FF800,X
|1DE495| STA.w $0FB4

|1DE498| LDA.w $0D90,Y
|1DE49B| STA.l $7FF92C,X

|1DE49F| LDA.w $0D10,Y
|1DE4A2| STA.l $7FF83C,X

|1DE4A6| LDA.w $0D30,Y
|1DE4A9| STA.l $7FF878,X

;---------------------------------------------------------------------------------------------------

|1DE4AD| LDA.w $0D00,Y
|1DE4B0| CLC
|1DE4B1| ADC.b #$10
|1DE4B3| STA.l $7FF81E,X

|1DE4B7| LDA.w $0D20,Y
|1DE4BA| ADC.b #$00
|1DE4BC| STA.l $7FF85A,X

|1DE4C0| LDA.b #$20
|1DE4C2| STA.l $7FF90E,X

;---------------------------------------------------------------------------------------------------

|1DE4C6| PLX

|1DE4C7| RTS

;===================================================================================================

Sprite_BD_Vitreous:
|1DE4C8| LDA.w $0F10,X
|1DE4CB| BEQ .not_lightningening

|1DE4CD| LDA.b #$03
|1DE4CF| STA.w $0DC0,X

;---------------------------------------------------------------------------------------------------

.not_lightningening
|1DE4D2| JSR SpriteDraw_Vitreous

|1DE4D5| JSR CheckIfActive_bank1D

|1DE4D8| JSR Vitreous_SetMinionsForth

|1DE4DB| JSR CheckDamageToAndFromLink_bank1D

|1DE4DE| LDA.w $0D80,X
|1DE4E1| JSL JumpTableLocal
|1DE4E5| dw Vitreous_DunkedInGoo
|1DE4E7| dw Vitreous_Lightningening
|1DE4E9| dw Vitreous_Bouncing

;===================================================================================================

Vitreous_DunkedInGoo:
|1DE4EB| STZ.w $0FF8

|1DE4EE| STZ.w $0EA0,X

|1DE4F1| LDA.w $0E60,X
|1DE4F4| ORA.b #$40
|1DE4F6| STA.w $0E60,X

|1DE4F9| LDA.b $1A
|1DE4FB| AND.b #$01
|1DE4FD| BNE .not_about_to_zap

|1DE4FF| DEC.w $0D90,X
|1DE502| BNE .not_about_to_zap

;---------------------------------------------------------------------------------------------------

|1DE504| LDA.w $0E60,X
|1DE507| AND.b #$BF
|1DE509| STA.w $0E60,X

|1DE50C| LDA.b #$10
|1DE50E| STA.w $0F10,X

|1DE511| INC.w $0D80,X

|1DE514| LDA.b #$80
|1DE516| STA.w $0DF0,X

|1DE519| LDA.w $0ED0,X
|1DE51C| BNE .not_about_to_zap

;---------------------------------------------------------------------------------------------------

|1DE51E| INC.w $0D80,X

|1DE521| LDA.b #$40
|1DE523| STA.w $0DF0,X

|1DE526| STZ.w $0BA0,X

|1DE529| LDA.b #$35 ; SFX2.35
|1DE52B| STA.w $012E

|1DE52E| RTS

;---------------------------------------------------------------------------------------------------

.not_about_to_zap
|1DE52F| LDY.b #$04

|1DE531| LDA.b $1A
|1DE533| AND.b #$30
|1DE535| BNE .anim_state_nonzero

|1DE537| INY

.anim_state_nonzero
|1DE538| TYA
|1DE539| STA.w $0DC0,X

|1DE53C| RTS

;===================================================================================================

pool Vitreous_Lightningening

.step
|1DE53D| db $02, $01

.timer
|1DE53F| db 32, 32, 32, 64, 96, 128, 160, 192, 224, 0

endpool

;---------------------------------------------------------------------------------------------------

Vitreous_Lightningening:
|1DE549| STZ.w $0EA0,X

|1DE54C| LDA.w $0DF0,X
|1DE54F| BNE Vitreous_Animate

|1DE551| LDA.b #$10
|1DE553| STA.w $0F10,X

|1DE556| STZ.w $0D80,X

|1DE559| LDY.w $0ED0,X

|1DE55C| LDA.w .timer,Y
|1DE55F| STA.w $0D90,X

|1DE562| RTS

;===================================================================================================

#Vitreous_Animate:
|1DE563| CMP.b #$40
|1DE565| BEQ .lightning

|1DE567| CMP.b #$41
|1DE569| BEQ .lightning

|1DE56B| CMP.b #$42
|1DE56D| BNE .no_lightning

.lightning
|1DE56F| JSL Sprite_SpawnLightning

.no_lightning
|1DE573| STZ.w $0DC0,X

|1DE576| JSR GetXDisplacementFromLink_bank1D

|1DE579| LDA.b $0F
|1DE57B| CLC
|1DE57C| ADC.b #$10
|1DE57E| CMP.b #$20
|1DE580| BCC .exit

|1DE582| LDA.w .step,Y
|1DE585| STA.w $0DC0,X

.exit
|1DE588| RTS

;===================================================================================================

pool Vitreous_Bouncing

.x_shake
|1DE589| db  8, -8

endpool

;---------------------------------------------------------------------------------------------------

Vitreous_Bouncing:
|1DE58B| JSR Vitreous_Animate
|1DE58E| JSR HandleSpriteRecoil_bank1D

|1DE591| LDA.w $0DF0,X
|1DE594| BEQ .bouncing

; Shakes first
|1DE596| AND.b #$02
|1DE598| LSR A
|1DE599| TAY

|1DE59A| LDA.w .x_shake,Y
|1DE59D| STA.w $0D50,X

|1DE5A0| JSR MoveSpriteX_bank1D

|1DE5A3| RTS

;---------------------------------------------------------------------------------------------------

.bouncing
|1DE5A4| JSR MoveSpriteXYZ_bank1D
|1DE5A7| JSR CheckSpriteTileCollision_bank1D

|1DE5AA| DEC.w $0F80,X
|1DE5AD| DEC.w $0F80,X

|1DE5B0| LDA.w $0F70,X
|1DE5B3| BPL .exit

|1DE5B5| STZ.w $0F70,X

|1DE5B8| LDA.b #$20
|1DE5BA| STA.w $0F80,X

|1DE5BD| LDA.b #$10
|1DE5BF| JSL ApplySpeedTowardsLink_long

|1DE5C3| LDA.b #$21 ; SFX2.21
|1DE5C5| JSL QueueSpriteSFX2WithPan

.exit
|1DE5C9| RTS

;===================================================================================================
; Eyeball $0D is only in here once.
; Lucky guy has half the chance of being drafted as everyone else.
; His parents are probably wealthy aristocrats.
; Eyeball $0C too.
;===================================================================================================
Vitreous_EyeballRoster:
|1DE5CA| db $05, $06, $07, $08, $09, $0A, $0B, $0C
|1DE5D2| db $0D, $05, $06, $07, $08, $09, $0A, $0B

;---------------------------------------------------------------------------------------------------

Vitreous_SetMinionsForth:
|1DE5DA| INC.w $0E80,X

|1DE5DD| LDA.w $0E80,X
|1DE5E0| AND.b #$3F
|1DE5E2| BNE .exit

|1DE5E4| JSL GetRandomNumber
|1DE5E8| AND.b #$0F
|1DE5EA| TAY

|1DE5EB| LDA.w Vitreous_EyeballRoster,Y
|1DE5EE| TAY

|1DE5EF| LDA.w $0D80,Y
|1DE5F2| BNE .already_enlisted

|1DE5F4| INC A
|1DE5F5| STA.w $0D80,Y

|1DE5F8| LDA.b #$15 ; SFX2.15
|1DE5FA| STA.w $012E

.exit
|1DE5FD| RTS

.already_enlisted
|1DE5FE| DEC.w $0E80,X

|1DE601| RTS

;===================================================================================================

pool Sprite_SpawnLightning

.offset_x_low
|1DE602| db  -8,   8,   8,  -8,   8,  -8,  -8,   8

.offset_x_high
|1DE60A| db  -1,   0,   0,  -1,   0,  -1,  -1,   0

endpool

;---------------------------------------------------------------------------------------------------

Sprite_SpawnLightning:
|1DE612| PHB
|1DE613| PHK
|1DE614| PLB

|1DE615| LDA.b #$BF ; SPRITE BF
|1DE617| JSL SpawnSpriteDynamically
|1DE61B| BMI .no_space

|1DE61D| LDA.b #$26 ; SFX3.26
|1DE61F| STA.w $012F

|1DE622| JSL SetSpawnedSpriteCoordinates

|1DE626| JSL GetRandomNumber
|1DE62A| AND.b #$07
|1DE62C| STA.w $0D90,Y

|1DE62F| PHX

|1DE630| TAX

|1DE631| LDA.b $00
|1DE633| CLC
|1DE634| ADC.w .offset_x_low,X
|1DE637| STA.w $0D10,Y

|1DE63A| LDA.b $01
|1DE63C| ADC.w .offset_x_high,X
|1DE63F| STA.w $0D30,Y

|1DE642| LDA.b $02
|1DE644| ADC.b #$0C
|1DE646| STA.w $0D00,Y

|1DE649| PLX

|1DE64A| LDA.b #$02
|1DE64C| STA.w $0DF0,Y

|1DE64F| LDA.b #$20
|1DE651| STA.w $0FF9

.no_space
|1DE654| PLB

|1DE655| RTL

;===================================================================================================

pool SpriteDraw_Vitreous

.oam_groups
; group00
|1DE656| dw  -8,  -8 : db $C0, $01, $00, $02
|1DE65E| dw   8,  -8 : db $C0, $41, $00, $02
|1DE666| dw  -8,   8 : db $E0, $01, $00, $02
|1DE66E| dw   8,   8 : db $E0, $41, $00, $02

; group01
|1DE676| dw  -8,  -8 : db $C8, $01, $00, $02
|1DE67E| dw   8,  -8 : db $CA, $01, $00, $02
|1DE686| dw  -8,   8 : db $E8, $01, $00, $02
|1DE68E| dw   8,   8 : db $EA, $01, $00, $02

; group02
|1DE696| dw  -8,  -8 : db $CA, $41, $00, $02
|1DE69E| dw   8,  -8 : db $C8, $41, $00, $02
|1DE6A6| dw  -8,   8 : db $EA, $41, $00, $02
|1DE6AE| dw   8,   8 : db $E8, $41, $00, $02

; group03
|1DE6B6| dw  -8,  -8 : db $C2, $01, $00, $02
|1DE6BE| dw   8,  -8 : db $C2, $41, $00, $02
|1DE6C6| dw  -8,   8 : db $E2, $01, $00, $02
|1DE6CE| dw   8,   8 : db $E2, $41, $00, $02

; group04
|1DE6D6| dw  -8,  -8 : db $C4, $01, $00, $02
|1DE6DE| dw   8,  -8 : db $C4, $41, $00, $02
|1DE6E6| dw  -8,   8 : db $E4, $01, $00, $02
|1DE6EE| dw   8,   8 : db $E4, $41, $00, $02

; group05
|1DE6F6| dw  -7,  -7 : db $C4, $01, $00, $02
|1DE6FE| dw   7,  -7 : db $C4, $41, $00, $02
|1DE706| dw  -7,   7 : db $E4, $01, $00, $02
|1DE70E| dw   7,   7 : db $E4, $41, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Vitreous:
|1DE716| LDA.b #$00
|1DE718| XBA
|1DE719| LDA.w $0DC0,X

|1DE71C| REP #$20

|1DE71E| ASL A ; x32
|1DE71F| ASL A
|1DE720| ASL A
|1DE721| ASL A
|1DE722| ASL A
|1DE723| ADC.w #.oam_groups
|1DE726| STA.b $08

|1DE728| LDA.w $0D80,X
|1DE72B| AND.w #$00FF
|1DE72E| CMP.w #$0002
|1DE731| BNE .use_allotted_oam

|1DE733| LDA.w $0DD0,X
|1DE736| AND.w #$00FF
|1DE739| CMP.w #$0009
|1DE73C| BNE .use_allotted_oam

; [HARDCODED] oam slots
|1DE73E| LDA.w #$0800
|1DE741| STA.b $90

|1DE743| LDA.w #$0A20
|1DE746| STA.b $92

.use_allotted_oam
|1DE748| SEP #$20

|1DE74A| LDA.b #$04
|1DE74C| JSR TabulatedSpriteDraw_bank1D

|1DE74F| LDA.w $0D80,X
|1DE752| CMP.b #$02
|1DE754| BNE .exit

|1DE756| LDA.w $0B89,X
|1DE759| AND.b #$F1
|1DE75B| STA.w $0B89,X

|1DE75E| JSL SpriteDraw_BigShadow_with_altitude

;---------------------------------------------------------------------------------------------------

.exit
|1DE762| RTS

;===================================================================================================

pool Sprite_BE_VitreousEye

.draw_offset_x
|1DE763| db  1,  0,  0,  0, -1, -1,  0,  0

.draw_offset_y
|1DE76B| db  0,  0,  1,  0,  0,  0, -1, -1

endpool

;---------------------------------------------------------------------------------------------------

Sprite_BE_VitreousEye:
|1DE773| LDA.w $0E80,X

|1DE776| LSR A
|1DE777| LSR A
|1DE778| LSR A

|1DE779| AND.b #$06
|1DE77B| TAY

|1DE77C| REP #$20

|1DE77E| LDA.w $0FD8
|1DE781| CLC
|1DE782| ADC.w .draw_offset_x,Y
|1DE785| STA.w $0FD8

|1DE788| LDA.w $0FDA
|1DE78B| CLC
|1DE78C| ADC.w .draw_offset_y,Y
|1DE78F| STA.w $0FDA

;---------------------------------------------------------------------------------------------------

|1DE792| SEP #$20

|1DE794| JSL SpriteDraw_SingleLarge_long
|1DE798| JSR CheckIfActive_bank1D

|1DE79B| INC.w $0E80,X

; The eyeballs underwater are probably sucking up to the boss.
; They don't do damage.
|1DE79E| LDA.w $0DC0,X
|1DE7A1| BEQ .not_buttkisser_eyeball

|1DE7A3| RTS

;---------------------------------------------------------------------------------------------------

.not_buttkisser_eyeball
|1DE7A4| JSL CheckDamageFromLink_long
|1DE7A8| JSL CheckDamageToLink_long

; Interesting: short recoil timers for mini vitty.
|1DE7AC| LDA.w $0EA0,X
|1DE7AF| CMP.b #$0E
|1DE7B1| BNE .shorter_recoil

|1DE7B3| LDA.b #$05
|1DE7B5| STA.w $0EA0,X

.shorter_recoil
|1DE7B8| LDA.w $0D80,X
|1DE7BB| BEQ VitreousEye_TargetLink

|1DE7BD| CMP.b #$01
|1DE7BF| BEQ VitreousEye_ApproachTarget

|1DE7C1| JMP.w VitreousEye_ReturnHome

;===================================================================================================

VitreousEye_TargetLink:
|1DE7C4| LDA.b $22
|1DE7C6| STA.w $0ED0,X

|1DE7C9| LDA.b $23
|1DE7CB| STA.w $0EB0,X

|1DE7CE| LDA.b $20
|1DE7D0| STA.w $0EC0,X

|1DE7D3| LDA.b $21
|1DE7D5| STA.w $0E30,X

|1DE7D8| RTS

;===================================================================================================

VitreousEye_ApproachTarget:
|1DE7D9| JSR HandleSpriteRecoil_bank1D

|1DE7DC| TXA
|1DE7DD| EOR.b $1A
|1DE7DF| AND.b #$01
|1DE7E1| BNE .dont_adjust_speed

|1DE7E3| LDA.w $0ED0,X
|1DE7E6| STA.b $04

|1DE7E8| LDA.w $0EB0,X
|1DE7EB| STA.b $05

|1DE7ED| LDA.w $0EC0,X
|1DE7F0| STA.b $06

|1DE7F2| LDA.w $0E30,X
|1DE7F5| STA.b $07

|1DE7F7| LDA.b #$10
|1DE7F9| JSL ProjectSpriteSpeedTowardsLocation_long

|1DE7FD| LDA.b $00
|1DE7FF| STA.w $0D40,X

|1DE802| LDA.b $01
|1DE804| STA.w $0D50,X

;---------------------------------------------------------------------------------------------------

.dont_adjust_speed
|1DE807| JSR MoveSpriteXY_bank1D

|1DE80A| LDA.w $0ED0,X
|1DE80D| SEC
|1DE80E| SBC.w $0D10,X
|1DE811| CLC
|1DE812| ADC.b #$04

|1DE814| CMP.b #$08
|1DE816| BCS .exit

|1DE818| LDA.w $0EC0,X
|1DE81B| SEC
|1DE81C| SBC.w $0D00,X
|1DE81F| CLC
|1DE820| ADC.b #$04

|1DE822| CMP.b #$08
|1DE824| BCS .exit

|1DE826| INC.w $0D80,X

.exit
|1DE829| RTS

;===================================================================================================

VitreousEye_ReturnHome:
|1DE82A| JSR HandleSpriteRecoil_bank1D

|1DE82D| TXA
|1DE82E| EOR.b $1A
|1DE830| AND.b #$01
|1DE832| BNE .dont_adjust_speed

|1DE834| LDA.w $0D90,X
|1DE837| STA.b $04

|1DE839| LDA.w $0DA0,X
|1DE83C| STA.b $05

|1DE83E| LDA.w $0DB0,X
|1DE841| STA.b $06

|1DE843| LDA.w $0DE0,X
|1DE846| STA.b $07

|1DE848| LDA.b #$10
|1DE84A| JSL ProjectSpriteSpeedTowardsLocation_long

|1DE84E| LDA.b $00
|1DE850| STA.w $0D40,X

|1DE853| LDA.b $01
|1DE855| STA.w $0D50,X

;---------------------------------------------------------------------------------------------------

.dont_adjust_speed
|1DE858| JSR MoveSpriteXY_bank1D

|1DE85B| LDA.w $0D90,X
|1DE85E| SEC
|1DE85F| SBC.w $0D10,X
|1DE862| CLC
|1DE863| ADC.b #$04

|1DE865| CMP.b #$08
|1DE867| BCS .exit

|1DE869| LDA.w $0DB0,X
|1DE86C| SEC
|1DE86D| SBC.w $0D00,X
|1DE870| CLC
|1DE871| ADC.b #$04

|1DE873| CMP.b #$08
|1DE875| BCS .exit

|1DE877| LDA.w $0D90,X
|1DE87A| STA.w $0D10,X

|1DE87D| LDA.w $0DA0,X
|1DE880| STA.w $0D30,X

|1DE883| LDA.w $0DB0,X
|1DE886| STA.w $0D00,X

|1DE889| LDA.w $0DE0,X
|1DE88C| STA.w $0D20,X

|1DE88F| STZ.w $0D80,X

.exit
|1DE892| RTS

;===================================================================================================

GetDirectionTowardsLink_bank1D:
|1DE893| JSL GetDirectionTowardsLink_long

|1DE897| RTS

;===================================================================================================

GetXDisplacementFromLink_bank1D:
|1DE898| JSL GetXDisplacementFromLink_long

|1DE89C| RTS

;===================================================================================================

GetYDisplacementFromLink_bank1D:
|1DE89D| JSL GetYDisplacementFromLink_long

|1DE8A1| RTS

;===================================================================================================

CheckIfActive_bank1D:
|1DE8A2| LDA.w $0DD0,X
|1DE8A5| CMP.b #$09
|1DE8A7| BNE .inactive

|1DE8A9| LDA.w $0FC1
|1DE8AC| BNE .inactive

|1DE8AE| LDA.b $11
|1DE8B0| BNE .inactive

|1DE8B2| LDA.w $0CAA,X
|1DE8B5| BMI .active

|1DE8B7| LDA.w $0F00,X
|1DE8BA| BEQ .active

.inactive
|1DE8BC| PLA
|1DE8BD| PLA

.active
|1DE8BE| RTS

;===================================================================================================

pool HandleSpriteRecoil_bank1D

.masks
|1DE8BF| db $03, $01, $00, $00, $0C, $03

endpool

;---------------------------------------------------------------------------------------------------

HandleSpriteRecoil_bank1D:
|1DE8C5| LDA.w $0EA0,X
|1DE8C8| BEQ .exit

|1DE8CA| AND.b #$7F
|1DE8CC| BEQ .recoil_over

|1DE8CE| LDA.w $0D40,X
|1DE8D1| PHA

|1DE8D2| LDA.w $0D50,X
|1DE8D5| PHA

|1DE8D6| DEC.w $0EA0,X
|1DE8D9| BNE .still_recoiling

|1DE8DB| LDA.w $0F40,X
|1DE8DE| CLC
|1DE8DF| ADC.b #$20
|1DE8E1| CMP.b #$40
|1DE8E3| BCS .no_adjust

|1DE8E5| LDA.w $0F30,X
|1DE8E8| CLC
|1DE8E9| ADC.b #$20
|1DE8EB| CMP.b #$40
|1DE8ED| BCC .still_recoiling

.no_adjust
|1DE8EF| LDA.b #$90
|1DE8F1| STA.w $0EA0,X

.still_recoiling
|1DE8F4| LDA.w $0EA0,X
|1DE8F7| BMI .no_movement

|1DE8F9| LSR A
|1DE8FA| LSR A
|1DE8FB| TAY

|1DE8FC| LDA.b $1A
|1DE8FE| AND.w .masks,Y
|1DE901| BNE .no_movement

|1DE903| LDA.w $0F30,X
|1DE906| STA.w $0D40,X

|1DE909| LDA.w $0F40,X
|1DE90C| STA.w $0D50,X

|1DE90F| LDA.w $0CD2,X
|1DE912| BMI .handle_movement

|1DE914| JSR CheckSpriteTileCollision_bank1D
|1DE917| AND.b #$0F
|1DE919| BEQ .handle_movement

|1DE91B| CMP.b #$04
|1DE91D| BCS .stop_vertical_movement

.stop_horizontal_movement
|1DE91F| STZ.w $0F40,X
|1DE922| STZ.w $0D50,X
|1DE925| BRA .movement_stopped

.stop_vertical_movement
|1DE927| STZ.w $0F30,X
|1DE92A| STZ.w $0D40,X

.movement_stopped
|1DE92D| BRA .no_movement

.handle_movement
|1DE92F| JSR MoveSpriteXY_bank1D

.no_movement
|1DE932| PLA
|1DE933| STA.w $0D50,X

|1DE936| PLA
|1DE937| STA.w $0D40,X

; [HARDCODED] exception for blind
|1DE93A| LDA.w $0E20,X
|1DE93D| CMP.b #$CE ; SPRITE CE
|1DE93F| BEQ .exit

|1DE941| PLA
|1DE942| PLA

.exit
|1DE943| RTS

;---------------------------------------------------------------------------------------------------

.recoil_over
|1DE944| STZ.w $0EA0,X

|1DE947| RTS

;===================================================================================================

MoveSpriteXYZ_bank1D:
|1DE948| JSR MoveSpriteZ_bank1D

;===================================================================================================

MoveSpriteXY_bank1D:
|1DE94B| JSR MoveSpriteX_bank1D
|1DE94E| JSR MoveSpriteY_bank1D

|1DE951| RTS

;===================================================================================================

MoveSpriteX_bank1D:
|1DE952| PHX

|1DE953| TXA
|1DE954| CLC
|1DE955| ADC.b #$10
|1DE957| TAX

|1DE958| JSR MoveSpriteY_bank1D

|1DE95B| PLX

|1DE95C| RTS

;===================================================================================================

MoveSpriteY_bank1D:
|1DE95D| LDA.w $0D40,X
|1DE960| BEQ .exit

|1DE962| ASL A
|1DE963| ASL A
|1DE964| ASL A
|1DE965| ASL A
|1DE966| CLC
|1DE967| ADC.w $0D60,X
|1DE96A| STA.w $0D60,X

|1DE96D| LDA.w $0D40,X
|1DE970| PHP

|1DE971| LSR A
|1DE972| LSR A
|1DE973| LSR A
|1DE974| LSR A

|1DE975| LDY.b #$00

|1DE977| PLP
|1DE978| BPL .positive

|1DE97A| ORA.b #$F0
|1DE97C| DEY

.positive
|1DE97D| ADC.w $0D00,X
|1DE980| STA.w $0D00,X

|1DE983| TYA
|1DE984| ADC.w $0D20,X
|1DE987| STA.w $0D20,X

.exit
|1DE98A| RTS

;---------------------------------------------------------------------------------------------------

MoveSpriteZ_bank1D:
|1DE98B| LDA.w $0F80,X
|1DE98E| ASL A
|1DE98F| ASL A
|1DE990| ASL A
|1DE991| ASL A
|1DE992| CLC
|1DE993| ADC.w $0F90,X
|1DE996| STA.w $0F90,X

|1DE999| LDA.w $0F80,X
|1DE99C| PHP

|1DE99D| LSR A
|1DE99E| LSR A
|1DE99F| LSR A
|1DE9A0| LSR A

|1DE9A1| PLP
|1DE9A2| BPL .positive

|1DE9A4| ORA.b #$F0

.positive
|1DE9A6| ADC.w $0F70,X
|1DE9A9| STA.w $0F70,X

|1DE9AC| RTS

;===================================================================================================

GetScreenCoordinates_bank1D:
|1DE9AD| JSL GetScreenCoordinates_long
|1DE9B1| BCC .exit

|1DE9B3| PLA
|1DE9B4| PLA

.exit
|1DE9B5| RTS

;===================================================================================================
; Flashes the screenwhen timer is active
;===================================================================================================
HandleScreenFlash:
|1DE9B6| LDA.w $0FF9
|1DE9B9| BEQ .noflash

|1DE9BB| LDY.b $11
|1DE9BD| BNE .noflash

|1DE9BF| DEC.w $0FF9
|1DE9C2| BNE .do_filter

.restore_palette
|1DE9C4| JSL RestoreBackgroundPalettes

|1DE9C8| RTL

;---------------------------------------------------------------------------------------------------

.do_filter
|1DE9C9| AND.b #$01
|1DE9CB| BEQ .normal_palette

.bright_palette
|1DE9CD| JSL PaletteFilter_Oversaturation
|1DE9D1| BRA .done

.normal_palette
|1DE9D3| JSL RestorePalettesAfterFlash

.done
|1DE9D7| INC.b $15

.noflash
|1DE9D9| RTL

;===================================================================================================

ExecuteCachedSprites:
|1DE9DA| LDA.b $1B
|1DE9DC| BEQ .exit

|1DE9DE| LDA.b $11
|1DE9E0| BEQ .exit

|1DE9E2| CMP.b #$0E
|1DE9E4| BEQ .exit

|1DE9E6| LDA.w $0FFA
|1DE9E9| BEQ .exit

|1DE9EB| LDX.b #$0F

.next_sprite
|1DE9ED| STX.w $0FA0

|1DE9F0| LDA.w $1D00,X
|1DE9F3| BEQ .inactive

|1DE9F5| JSR UncacheAndExecuteSprite

.inactive
|1DE9F8| DEX
|1DE9F9| BPL .next_sprite

|1DE9FB| RTL

.exit
|1DE9FC| STZ.w $0FFA

|1DE9FF| RTL

;===================================================================================================

UncacheAndExecuteSprite:
|1DEA00| LDA.w $0DD0,X
|1DEA03| PHA

|1DEA04| LDA.w $0E20,X
|1DEA07| PHA

|1DEA08| LDA.w $0D10,X
|1DEA0B| PHA

|1DEA0C| LDA.w $0D30,X
|1DEA0F| PHA

|1DEA10| LDA.w $0D00,X
|1DEA13| PHA

|1DEA14| LDA.w $0D20,X
|1DEA17| PHA

|1DEA18| LDA.w $0DC0,X
|1DEA1B| PHA

|1DEA1C| LDA.w $0D90,X
|1DEA1F| PHA

|1DEA20| LDA.w $0EB0,X
|1DEA23| PHA

|1DEA24| LDA.w $0F50,X
|1DEA27| PHA

|1DEA28| LDA.w $0B89,X
|1DEA2B| PHA

|1DEA2C| LDA.w $0DE0,X
|1DEA2F| PHA

|1DEA30| LDA.w $0E40,X
|1DEA33| PHA

|1DEA34| LDA.w $0F20,X
|1DEA37| PHA

|1DEA38| LDA.w $0D80,X
|1DEA3B| PHA

|1DEA3C| LDA.w $0E60,X
|1DEA3F| PHA

|1DEA40| LDA.w $0DA0,X
|1DEA43| PHA

|1DEA44| LDA.w $0DB0,X
|1DEA47| PHA

|1DEA48| LDA.w $0E90,X
|1DEA4B| PHA

|1DEA4C| LDA.w $0E80,X
|1DEA4F| PHA

|1DEA50| LDA.w $0F70,X
|1DEA53| PHA

|1DEA54| LDA.w $0DF0,X
|1DEA57| PHA

|1DEA58| LDA.l $7FF9C2,X
|1DEA5C| PHA

|1DEA5D| LDA.w $0BA0,X
|1DEA60| PHA

;---------------------------------------------------------------------------------------------------

|1DEA61| LDA.w $1D00,X
|1DEA64| STA.w $0DD0,X

|1DEA67| LDA.w $1D10,X
|1DEA6A| STA.w $0E20,X

|1DEA6D| LDA.w $1D20,X
|1DEA70| STA.w $0D10,X

|1DEA73| LDA.w $1D30,X
|1DEA76| STA.w $0D30,X

|1DEA79| LDA.w $1D40,X
|1DEA7C| STA.w $0D00,X

|1DEA7F| LDA.w $1D50,X
|1DEA82| STA.w $0D20,X

|1DEA85| LDA.w $1D60,X
|1DEA88| STA.w $0DC0,X

|1DEA8B| LDA.w $1D70,X
|1DEA8E| STA.w $0D90,X

|1DEA91| LDA.w $1D80,X
|1DEA94| STA.w $0EB0,X

|1DEA97| LDA.w $1D90,X
|1DEA9A| STA.w $0F50,X

|1DEA9D| LDA.w $1DA0,X
|1DEAA0| STA.w $0B89,X

|1DEAA3| LDA.w $1DB0,X
|1DEAA6| STA.w $0DE0,X

|1DEAA9| LDA.w $1DC0,X
|1DEAAC| STA.w $0E40,X

|1DEAAF| LDA.w $1DD0,X
|1DEAB2| STA.w $0F20,X

|1DEAB5| LDA.w $1DE0,X
|1DEAB8| STA.w $0D80,X

|1DEABB| LDA.w $1DF0,X
|1DEABE| STA.w $0E60,X

|1DEAC1| LDA.l $7FFA5C,X
|1DEAC5| STA.w $0DA0,X

|1DEAC8| LDA.l $7FFA6C,X
|1DEACC| STA.w $0DB0,X

|1DEACF| LDA.l $7FFA7C,X
|1DEAD3| STA.w $0E90,X

|1DEAD6| LDA.l $7FFA8C,X
|1DEADA| STA.w $0E80,X

|1DEADD| LDA.l $7FFA9C,X
|1DEAE1| STA.w $0F70,X

|1DEAE4| LDA.l $7FFAAC,X
|1DEAE8| STA.w $0DF0,X

|1DEAEB| LDA.l $7FFACC,X
|1DEAEF| STA.l $7FF9C2,X

|1DEAF3| LDA.l $7FFADC,X
|1DEAF7| STA.w $0BA0,X

;---------------------------------------------------------------------------------------------------

|1DEAFA| JSL HandleSingleSprite_long

|1DEAFE| LDA.w $0F00,X
|1DEB01| BEQ .active

|1DEB03| STZ.w $1D00,X

.active
|1DEB06| PLA
|1DEB07| STA.w $0BA0,X

|1DEB0A| PLA
|1DEB0B| STA.l $7FF9C2,X

|1DEB0F| PLA
|1DEB10| STA.w $0DF0,X

|1DEB13| PLA
|1DEB14| STA.w $0F70,X

|1DEB17| PLA
|1DEB18| STA.w $0E80,X

|1DEB1B| PLA
|1DEB1C| STA.w $0E90,X

|1DEB1F| PLA
|1DEB20| STA.w $0DB0,X

|1DEB23| PLA
|1DEB24| STA.w $0DA0,X

|1DEB27| PLA
|1DEB28| STA.w $0E60,X

|1DEB2B| PLA
|1DEB2C| STA.w $0D80,X

|1DEB2F| PLA
|1DEB30| STA.w $0F20,X

|1DEB33| PLA
|1DEB34| STA.w $0E40,X

|1DEB37| PLA
|1DEB38| STA.w $0DE0,X

|1DEB3B| PLA
|1DEB3C| STA.w $0B89,X

|1DEB3F| PLA
|1DEB40| STA.w $0F50,X

|1DEB43| PLA
|1DEB44| STA.w $0EB0,X

|1DEB47| PLA
|1DEB48| STA.w $0D90,X

|1DEB4B| PLA
|1DEB4C| STA.w $0DC0,X

|1DEB4F| PLA
|1DEB50| STA.w $0D20,X

|1DEB53| PLA
|1DEB54| STA.w $0D00,X

|1DEB57| PLA
|1DEB58| STA.w $0D30,X

|1DEB5B| PLA
|1DEB5C| STA.w $0D10,X

|1DEB5F| PLA
|1DEB60| STA.w $0E20,X

|1DEB63| PLA
|1DEB64| STA.w $0DD0,X

|1DEB67| RTS

;===================================================================================================
; TODO is this for the opening cutscene?
;===================================================================================================
pool PuppetSoldier

.step
|1DEB68| db $0B, $04, $00, $07

.oam_a
|1DEB6C| dw $0800, $0820, $0840, $0860, $0880, $08A0

.oam_b
|1DEB78| dw $0A20, $0A28, $0A30, $0A38, $0A40, $0A48

endpool

;---------------------------------------------------------------------------------------------------

PuppetSoldier:
|1DEB84| PHB
|1DEB85| PHK
|1DEB86| PLB

|1DEB87| LDA.b $00
|1DEB89| STA.w $0D10,X

|1DEB8C| LDA.b $01
|1DEB8E| STA.w $0D30,X

|1DEB91| LDA.b $02
|1DEB93| STA.w $0D00,X

|1DEB96| LDA.b $03
|1DEB98| STA.w $0D20,X

|1DEB9B| JSL Get16BitSpriteCoords_long

|1DEB9F| LDA.b $04
|1DEBA1| STA.w $0DE0,X
|1DEBA4| STA.w $0EB0,X

|1DEBA7| TAY

|1DEBA8| LDA.w .step,Y
|1DEBAB| CLC
|1DEBAC| ADC.b $06
|1DEBAE| STA.w $0DC0,X

|1DEBB1| STZ.w $0B89,X

|1DEBB4| LDA.b $05
|1DEBB6| ORA.b #$30
|1DEBB8| STA.w $0F50,X

|1DEBBB| LDA.b #$10
|1DEBBD| STA.w $0E60,X

|1DEBC0| STZ.w $0F70,X

|1DEBC3| LDY.b #$41 ; SPRITE 41

; [USELESS]
; This will always fail.
; Turns out to be a bug that's fixed later by rearranging the code.
|1DEBC5| CMP.b #$39
|1DEBC7| BEQ .normal_guard

|1DEBC9| LDY.b #$43 ; SPRITE 43

.normal_guard
|1DEBCB| TYA
|1DEBCC| STA.w $0E20,X

|1DEBCF| LDA.b #$07
|1DEBD1| STA.w $0E40,X

|1DEBD4| TXA
|1DEBD5| ASL A
|1DEBD6| TAY

|1DEBD7| REP #$20

|1DEBD9| LDA.w .oam_a,Y
|1DEBDC| STA.b $90

|1DEBDE| LDA.w .oam_b,Y
|1DEBE1| STA.b $92

|1DEBE3| SEP #$20

|1DEBE5| JSL Guard_HandleAllAnimation_long

|1DEBE9| PLB

|1DEBEA| RTL

;===================================================================================================

Overlord19_ArmosCoordinator:
|1DEBEB| PHB
|1DEBEC| PHK
|1DEBED| PLB

|1DEBEE| JSR .main

|1DEBF1| PLB

|1DEBF2| RTL

;---------------------------------------------------------------------------------------------------

.main
|1DEBF3| LDA.w $0B30,X
|1DEBF6| BEQ .timer_done

|1DEBF8| DEC.w $0B30,X

.timer_done
|1DEBFB| LDA.w $0B28,X
|1DEBFE| JSL JumpTableLocal
|1DEC02| dw ArmosCoordinator_WaitForWakeUp
|1DEC04| dw ArmosCoordinator_CirclePosition
|1DEC06| dw ArmosCoordinator_RotateKnights
|1DEC08| dw ArmosCoordinator_Pinch
|1DEC0A| dw ArmosCoordinator_RotateKnights
|1DEC0C| dw ArmosCoordinator_Spread
|1DEC0E| dw ArmosCoordinator_LineUp
|1DEC10| dw ArmosCoordinator_ForwardMarch

;===================================================================================================

ArmosCoordinator_WaitForWakeUp:
; [HARDCODED] slot checks
|1DEC12| LDA.w $0D90
|1DEC15| BEQ .exit

|1DEC17| LDA.b #$78
|1DEC19| STA.w $0B08,X

|1DEC1C| LDA.b #$FF
|1DEC1E| STA.w $0B40,X

|1DEC21| LDA.b #$40
|1DEC23| STA.w $0B0A

|1DEC26| LDA.b #$C0
|1DEC28| STA.w $0B08

|1DEC2B| LDA.b #$01
|1DEC2D| STA.w $0B09

|1DEC30| JSR ArmosCoordinator_RotateKnights

.exit
|1DEC33| RTS

;===================================================================================================

ArmosCoordinator_CirclePosition:
|1DEC34| JSR ArmosCoordinator_CheckKnights
|1DEC37| BCC .exit

|1DEC39| INC.w $0B28,X

|1DEC3C| LDA.b #$FF
|1DEC3E| STA.w $0B30,X

.exit
|1DEC41| RTS

;===================================================================================================

pool ArmosCoordinator_LineUp

.position_x
|1DEC42| db $31, $4D, $69, $83, $9F, $BB

endpool

;---------------------------------------------------------------------------------------------------

ArmosCoordinator_LineUp:
|1DEC48| LDA.w $0B30,X
|1DEC4B| BNE .exit

|1DEC4D| JSR ArmosCoordinator_DisableCoercion

|1DEC50| LDY.b #$05

.next
|1DEC52| LDA.w .position_x,Y
|1DEC55| STA.w $0B10,Y

|1DEC58| LDA.b #$30
|1DEC5A| STA.w $0B30,Y

|1DEC5D| DEY
|1DEC5E| BPL .next

|1DEC60| INC.w $0B28,X

|1DEC63| LDA.b #$FF
|1DEC65| STA.w $0B30,X

.exit
|1DEC68| RTS

;===================================================================================================

ArmosCoordinator_ForwardMarch:
|1DEC69| LDA.w $0B30,X
|1DEC6C| BNE .exit

|1DEC6E| LDY.b #$05

.next
|1DEC70| LDA.w $0B30,Y

|1DEC73| INC A
|1DEC74| STA.w $0B30,Y

|1DEC77| CPY.b #$00 ; [USELESS]

|1DEC79| CMP.b #$C0
|1DEC7B| BNE .still_marching

|1DEC7D| LDA.b #$01
|1DEC7F| STA.w $0B28,X

|1DEC82| LDA.w $0B40,X
|1DEC85| EOR.b #$FF
|1DEC87| INC A
|1DEC88| STA.w $0B40,X

|1DEC8B| JSR ArmosCoordinator_DisableCoercion
|1DEC8E| JSR ArmosCoordinator_Rotate

|1DEC91| RTS

.still_marching
|1DEC92| DEY
|1DEC93| BPL .next

.exit
|1DEC95| RTS

;===================================================================================================

ArmosCoordinator_Pinch:
|1DEC96| LDA.w $0B0A
|1DEC99| DEC A
|1DEC9A| STA.w $0B0A

|1DEC9D| CMP.b #$20
|1DEC9F| BNE .pinching

|1DECA1| INC.w $0B28,X

|1DECA4| LDA.b #$40
|1DECA6| STA.w $0B30,X

.pinching
|1DECA9| BRA ArmosCoordinator_Rotate

;===================================================================================================

ArmosCoordinator_Spread:
|1DECAB| LDA.w $0B0A
|1DECAE| INC A
|1DECAF| STA.w $0B0A

|1DECB2| CMP.b #$40
|1DECB4| BNE .spreading

|1DECB6| INC.w $0B28,X
|1DECB9| LDA.b #$40
|1DECBB| STA.w $0B30,X

.spreading
|1DECBE| BRA ArmosCoordinator_Rotate

;===================================================================================================

pool ArmosCoordinator_Rotate

.angle_step
|1DECC0| dw $0000, $01A9, $0154, $00FF, $00AA, $0055

endpool

;---------------------------------------------------------------------------------------------------

ArmosCoordinator_RotateKnights:
|1DECCC| LDA.w $0B30,X
|1DECCF| BNE ArmosCoordinator_Rotate

|1DECD1| INC.w $0B28,X

;===================================================================================================

ArmosCoordinator_Rotate:
|1DECD4| LDY.b #$00

|1DECD6| LDA.w $0B40,X
|1DECD9| BPL .its_positive

|1DECDB| DEY

.its_positive
|1DECDC| CLC
|1DECDD| ADC.w $0B08
|1DECE0| STA.w $0B08

|1DECE3| TYA
|1DECE4| ADC.w $0B09
|1DECE7| STA.w $0B09

|1DECEA| STZ.w $0FB5

.next_knight
|1DECED| LDA.w $0FB5
|1DECF0| PHA

|1DECF1| ASL A
|1DECF2| TAY

|1DECF3| REP #$20

|1DECF5| LDA.w $0B08
|1DECF8| CLC
|1DECF9| ADC.w .angle_step,Y
|1DECFC| STA.b $00

|1DECFE| SEP #$20

|1DED00| PLY

|1DED01| LDA.w $0B0A
|1DED04| STA.b $0F

|1DED06| PHX

|1DED07| REP #$30

|1DED09| LDA.b $00
|1DED0B| AND.w #$00FF
|1DED0E| ASL A
|1DED0F| TAX

|1DED10| LDA.l TrigTable,X
|1DED14| STA.b $04

|1DED16| LDA.b $00
|1DED18| CLC
|1DED19| ADC.w #$0080
|1DED1C| STA.b $02

|1DED1E| AND.w #$00FF
|1DED21| ASL A
|1DED22| TAX

|1DED23| LDA.l TrigTable,X
|1DED27| STA.b $06

|1DED29| SEP #$30

|1DED2B| PLX

|1DED2C| LDA.b $04
|1DED2E| STA.w WRMPYA

|1DED31| LDA.b $0F

|1DED33| LDY.b $05
|1DED35| BNE .nonzero_x

|1DED37| STA.w WRMPYB

|1DED3A| NOP ; 8 NOP
|1DED3B| NOP
|1DED3C| NOP
|1DED3D| NOP
|1DED3E| NOP
|1DED3F| NOP
|1DED40| NOP
|1DED41| NOP

|1DED42| ASL.w RDMPYL ; carry = round up
|1DED45| LDA.w RDMPYH
|1DED48| ADC.b #$00

.nonzero_x
|1DED4A| LSR.b $01
|1DED4C| BCC .sign_correct_x

|1DED4E| EOR.b #$FF
|1DED50| INC A

.sign_correct_x
|1DED51| STZ.b $0A

|1DED53| CMP.b #$00
|1DED55| BPL .positive_x

|1DED57| DEC.b $0A

.positive_x
|1DED59| CLC
|1DED5A| ADC.w $0B08,X

|1DED5D| LDY.w $0FB5

|1DED60| STA.w $0B10,Y

|1DED63| LDA.w $0B10,X
|1DED66| ADC.b $0A
|1DED68| STA.w $0B20,Y

|1DED6B| LDA.b $06
|1DED6D| STA.w WRMPYA

|1DED70| LDA.b $0F

|1DED72| LDY.b $07
|1DED74| BNE .nonzero_y

|1DED76| STA.w WRMPYB

|1DED79| NOP ; 8 NOP
|1DED7A| NOP
|1DED7B| NOP
|1DED7C| NOP
|1DED7D| NOP
|1DED7E| NOP
|1DED7F| NOP
|1DED80| NOP

|1DED81| ASL.w RDMPYL ; carry = round up
|1DED84| LDA.w RDMPYH
|1DED87| ADC.b #$00

.nonzero_y
|1DED89| LSR.b $03
|1DED8B| BCC .sign_correct_y

|1DED8D| EOR.b #$FF
|1DED8F| INC A

.sign_correct_y
|1DED90| STZ.b $0A

|1DED92| CMP.b #$00
|1DED94| BPL .positive_y

|1DED96| DEC.b $0A

.positive_y
|1DED98| CLC
|1DED99| ADC.w $0B18,X

|1DED9C| LDY.w $0FB5

|1DED9F| STA.w $0B30,Y

|1DEDA2| LDA.w $0B20,X
|1DEDA5| ADC.b $0A
|1DEDA7| STA.w $0B40,Y

|1DEDAA| INC.w $0FB5

|1DEDAD| LDA.w $0FB5
|1DEDB0| CMP.b #$06
|1DEDB2| BEQ .exit

|1DEDB4| JMP.w .next_knight

.exit
|1DEDB7| RTS

;===================================================================================================
; Exits with carry clear set to indicate all knights are good to go.
;===================================================================================================
ArmosCoordinator_CheckKnights:
|1DEDB8| LDY.b #$05

.next
|1DEDBA| LDA.w $0DD0,Y
|1DEDBD| BEQ .is_good

|1DEDBF| LDA.w $0D80,Y
|1DEDC2| BNE .is_good

|1DEDC4| CLC

|1DEDC5| RTS

.is_good
|1DEDC6| DEY
|1DEDC7| BPL .next

|1DEDC9| SEC

|1DEDCA| RTS

;===================================================================================================

ArmosCoordinator_DisableCoercion:
|1DEDCB| LDY.b #$05

.next
|1DEDCD| LDA.b #$00
|1DEDCF| STA.w $0D80,Y

|1DEDD2| DEY
|1DEDD3| BPL .next

|1DEDD5| RTS

;===================================================================================================

Sprite_70_KingHelmasaurFireball:
|1DEDD6| PHB
|1DEDD7| PHK
|1DEDD8| PLB

|1DEDD9| JSR .main

|1DEDDC| PLB

|1DEDDD| RTL

;---------------------------------------------------------------------------------------------------

.char
|1DEDDE| db $CC, $CC, $CA

.prop
|1DEDE1| db $33, $73

;---------------------------------------------------------------------------------------------------

.main
|1DEDE3| INC.w $0E80,X

|1DEDE6| LDA.w $0E80,X
|1DEDE9| LSR A
|1DEDEA| LSR A
|1DEDEB| AND.b #$01
|1DEDED| TAY

|1DEDEE| LDA.w .prop,Y
|1DEDF1| STA.b $05

|1DEDF3| LDY.b #$00

|1DEDF5| LDA.w $0D10,X
|1DEDF8| SEC
|1DEDF9| SBC.b $E2
|1DEDFB| STA.b ($90),Y

; Don't let fire balls get too far off screen.
; Usually handled by OAM allotment routines.
|1DEDFD| CLC
|1DEDFE| ADC.b #$20
|1DEE00| CMP.b #$40
|1DEE02| BCC .delete_self

|1DEE04| LDA.w $0D00,X
|1DEE07| SEC
|1DEE08| SBC.b $E8
|1DEE0A| INY
|1DEE0B| STA.b ($90),Y

|1DEE0D| CLC
|1DEE0E| ADC.b #$10
|1DEE10| CMP.b #$20
|1DEE12| BCS .on_screen

.delete_self
|1DEE14| STZ.w $0DD0,X

|1DEE17| RTS

;---------------------------------------------------------------------------------------------------

.on_screen
|1DEE18| PHX

|1DEE19| LDA.w $0DC0,X
|1DEE1C| TAX

|1DEE1D| LDA.w .char,X

|1DEE20| PLX

|1DEE21| INY
|1DEE22| STA.b ($90),Y

|1DEE24| LDA.b $05
|1DEE26| INY
|1DEE27| STA.b ($90),Y

|1DEE29| LDA.b #$02
|1DEE2B| STA.b ($92)

;---------------------------------------------------------------------------------------------------

|1DEE2D| JSR CheckIfActive_bank1D

; Why is everything with these manual?
|1DEE30| TXA
|1DEE31| EOR.b $1A
|1DEE33| AND.b #$03
|1DEE35| BNE .no_damage

|1DEE37| REP #$20

|1DEE39| LDA.b $22
|1DEE3B| SEC
|1DEE3C| SBC.w $0FD8
|1DEE3F| CLC
|1DEE40| ADC.w #$0008

|1DEE43| CMP.w #$0010
|1DEE46| BCS .no_damage

|1DEE48| LDA.b $20
|1DEE4A| SEC
|1DEE4B| SBC.w $0FDA
|1DEE4E| CLC
|1DEE4F| ADC.w #$0010

|1DEE52| CMP.w #$0010
|1DEE55| BCS .no_damage

|1DEE57| SEP #$20

|1DEE59| JSL AttemptDamageToLinkPlusRecoil_long

;---------------------------------------------------------------------------------------------------

.no_damage
|1DEE5D| SEP #$20

|1DEE5F| LDA.w $0D80,X

; DISGUSTING!
|1DEE62| CMP.b #$04
|1DEE64| BEQ HelmasaurFireball_Move

|1DEE66| DEC A
|1DEE67| BEQ HelmasaurFireball_MoveDown

|1DEE69| DEC A
|1DEE6A| BEQ HelmasaurFireball_SplitInto3

|1DEE6C| DEC A
|1DEE6D| BEQ HelmasaurFireball_SplitInto4

|1DEE6F| JMP.w HelmasaurFireball_UselessJump

;===================================================================================================

HelmasaurFireball_UselessJump:
|1DEE72| LDA.w $0DF0,X
|1DEE75| BNE .delay

|1DEE77| LDA.b #$12
|1DEE79| STA.w $0DF0,X

|1DEE7C| INC.w $0D80,X

|1DEE7F| LDA.b #$24
|1DEE81| STA.w $0D40,X

.delay
|1DEE84| RTS

;===================================================================================================

HelmasaurFireball_MoveDown:
|1DEE85| LDA.w $0DF0,X
|1DEE88| BNE .delay

|1DEE8A| INC.w $0D80,X

|1DEE8D| LDA.b #$1F
|1DEE8F| STA.w $0DF0,X

.delay
|1DEE92| DEC.w $0D40,X
|1DEE95| DEC.w $0D40,X

|1DEE98| JSR MoveSpriteY_bank1D

|1DEE9B| RTS

;===================================================================================================

pool HelmasaurFireball_SplitInto3

.draw
|1DEE9C| db $02, $02, $01, $00

endpool

;---------------------------------------------------------------------------------------------------

HelmasaurFireball_SplitInto3:
|1DEEA0| LDA.w $0DF0,X
|1DEEA3| BNE .delay

|1DEEA5| JMP.w HelmasaurFireball_DoSplit3

;---------------------------------------------------------------------------------------------------

.delay
|1DEEA8| LSR A
|1DEEA9| LSR A
|1DEEAA| LSR A
|1DEEAB| TAY

|1DEEAC| LDA.w .draw,Y
|1DEEAF| STA.w $0DC0,X

|1DEEB2| RTS

;===================================================================================================

HelmasaurFireball_SplitInto4:
|1DEEB3| LDA.w $0DF0,X
|1DEEB6| BNE .delay

|1DEEB8| JMP.w HelmasaurFireball_DoSplit4

.delay
|1DEEBB| LDA.w $0EB0,X
|1DEEBE| CMP.b #$14
|1DEEC0| BCS .exit

|1DEEC2| INC.w $0EB0,X

|1DEEC5| JSR MoveSpriteXY_bank1D

.exit
|1DEEC8| RTS

;===================================================================================================

HelmasaurFireball_Move:
|1DEEC9| JSR MoveSpriteXY_bank1D

|1DEECC| RTS

;===================================================================================================

pool HelmasaurFireball_DoSplit3

.speed_x
|1DEECD| db   0,  28, -28

.speed_y
|1DEED0| db -32,  24,  24

endpool

;---------------------------------------------------------------------------------------------------

HelmasaurFireball_DoSplit3:
|1DEED3| LDA.b #$36 ; SFX3.36
|1DEED5| JSL QueueSpriteSFX3WithPan

|1DEED9| STZ.w $0DD0,X

|1DEEDC| LDA.b #$02
|1DEEDE| STA.w $0FB5

|1DEEE1| JSL GetRandomNumber
|1DEEE5| STA.w $0FB6

.next
|1DEEE8| LDA.b #$70 ; SPRITE 70
|1DEEEA| JSL SpawnSpriteDynamically
|1DEEEE| BMI .spawn_failed

;---------------------------------------------------------------------------------------------------

|1DEEF0| JSL SetSpawnedSpriteCoordinates

|1DEEF4| PHX

|1DEEF5| LDX.w $0FB5

|1DEEF8| LDA.w .speed_x,X
|1DEEFB| STA.w $0D50,Y

|1DEEFE| LDA.w .speed_y,X
|1DEF01| STA.w $0D40,Y

|1DEF04| LDA.b #$03
|1DEF06| STA.w $0D80,Y
|1DEF09| STA.w $0BA0,Y

|1DEF0C| LDA.w $0FB6
|1DEF0F| AND.b #$03
|1DEF11| CLC
|1DEF12| ADC.w $0FB5
|1DEF15| TAX

|1DEF16| LDA.w .timers,X
|1DEF19| STA.w $0DF0,Y

|1DEF1C| LDA.b #$00
|1DEF1E| STA.w $0EB0,Y

|1DEF21| LDA.b #$01
|1DEF23| STA.w $0DC0,Y

|1DEF26| PLX

;---------------------------------------------------------------------------------------------------

.spawn_failed
|1DEF27| DEC.w $0FB5
|1DEF2A| BPL .next

|1DEF2C| RTS

;---------------------------------------------------------------------------------------------------

.timers
|1DEF2D| db 32,  80, 128,  32
|1DEF31| db 80, 128,  32,  80

;===================================================================================================

pool HelmasaurFireball_DoSplit4

.speed_x
|1DEF35| db  32,  32, -32, -32

.speed_y
|1DEF39| db -32,  32, -32,  32

endpool

;---------------------------------------------------------------------------------------------------

HelmasaurFireball_DoSplit4:
|1DEF3D| LDA.b #$36 ; SFX3.36
|1DEF3F| JSL QueueSpriteSFX3WithPan

|1DEF43| STZ.w $0DD0,X

|1DEF46| LDA.b #$03
|1DEF48| STA.w $0FB5

.next
|1DEF4B| LDA.b #$70 ; SPRITE 70
|1DEF4D| JSL SpawnSpriteDynamically
|1DEF51| BMI .spawn_failed

|1DEF53| JSL SetSpawnedSpriteCoordinates

|1DEF57| PHX
|1DEF58| LDX.w $0FB5

|1DEF5B| LDA.w .speed_x,X
|1DEF5E| STA.w $0D50,Y

|1DEF61| LDA.w .speed_y,X
|1DEF64| STA.w $0D40,Y

|1DEF67| PLX

|1DEF68| LDA.b #$04
|1DEF6A| STA.w $0D80,Y
|1DEF6D| STA.w $0BA0,Y

.spawn_failed
|1DEF70| DEC.w $0FB5
|1DEF73| BPL .next

|1DEF75| RTS

;===================================================================================================

RedArmosCrusher:
|1DEF76| PHB
|1DEF77| PHK
|1DEF78| PLB

|1DEF79| JSR .main

|1DEF7C| PLB

|1DEF7D| RTL

;---------------------------------------------------------------------------------------------------

.main
|1DEF7E| LDA.b #$07
|1DEF80| STA.w $0F50,X

|1DEF83| STZ.w $011C
|1DEF86| STZ.w $011D

|1DEF89| LDA.w $0F10,X
|1DEF8C| BEQ .no_shake

|1DEF8E| AND.b #$01
|1DEF90| TAY

|1DEF91| LDA.w Shakeyshake.low,Y
|1DEF94| STA.w $011C

|1DEF97| LDA.w Shakeyshake.high,Y
|1DEF9A| STA.w $011D

.no_shake
|1DEF9D| LDA.w $0ED0,X
|1DEFA0| JSL JumpTableLocal
|1DEFA4| dw RedArmosCrusher_TargetLink
|1DEFA6| dw RedArmosCrusher_Jump
|1DEFA8| dw RedArmosCrusher_Hover
|1DEFAA| dw RedArmosCrusher_Slam

;===================================================================================================

RedArmosCrusher_TargetLink:
|1DEFAC| JSR CheckDamageToAndFromLink_bank1D

|1DEFAF| LDA.w $0DF0,X
|1DEFB2| ORA.w $0F70,X
|1DEFB5| BNE .exit

|1DEFB7| LDA.b #$20
|1DEFB9| JSL ApplySpeedTowardsLink_long

|1DEFBD| LDA.b #$20
|1DEFBF| STA.w $0F80,X

|1DEFC2| INC.w $0ED0,X

|1DEFC5| LDA.b $22
|1DEFC7| STA.w $0DA0,X

|1DEFCA| LDA.b $23
|1DEFCC| STA.w $0DB0,X

|1DEFCF| LDA.b $20
|1DEFD1| STA.w $0E90,X

|1DEFD4| LDA.b $21
|1DEFD6| STA.w $0EB0,X

|1DEFD9| LDA.b #$20 ; SFX2.20
|1DEFDB| JSL QueueSpriteSFX2WithPan

.exit
|1DEFDF| RTS

;===================================================================================================

RedArmosCrusher_Jump:
|1DEFE0| LDA.w $0F80,X
|1DEFE3| CLC
|1DEFE4| ADC.b #$03
|1DEFE6| STA.w $0F80,X

|1DEFE9| JSR CheckSpriteTileCollision_bank1D
|1DEFEC| BNE .tile_collision

;---------------------------------------------------------------------------------------------------

|1DEFEE| JSL Get16BitSpriteCoords_long

|1DEFF2| LDA.w $0DA0,X
|1DEFF5| STA.b $00

|1DEFF7| LDA.w $0DB0,X
|1DEFFA| STA.b $01

|1DEFFC| LDA.w $0E90,X
|1DEFFF| STA.b $02

|1DF001| LDA.w $0EB0,X
|1DF004| STA.b $03

|1DF006| REP #$20

|1DF008| LDA.b $00
|1DF00A| SEC
|1DF00B| SBC.w $0FD8
|1DF00E| CLC
|1DF00F| ADC.w #$0010

|1DF012| CMP.w #$0020
|1DF015| BCS .not_close_enough

|1DF017| LDA.b $02
|1DF019| SEC
|1DF01A| SBC.w $0FDA
|1DF01D| CLC
|1DF01E| ADC.w #$0010

|1DF021| CMP.w #$0020
|1DF024| BCS .not_close_enough

|1DF026| SEP #$20

;---------------------------------------------------------------------------------------------------

.tile_collision
|1DF028| INC.w $0ED0,X

|1DF02B| LDA.b #$10
|1DF02D| STA.w $0DF0,X

|1DF030| STZ.w $0D50,X
|1DF033| STZ.w $0D40,X

;---------------------------------------------------------------------------------------------------

.not_close_enough
|1DF036| SEP #$20

|1DF038| RTS

;===================================================================================================

RedArmosCrusher_Hover:
|1DF039| STZ.w $0F80,X

|1DF03C| LDA.w $0DF0,X
|1DF03F| BNE .exit

|1DF041| INC.w $0ED0,X

.exit
|1DF044| RTS

;===================================================================================================

RedArmosCrusher_Slam:
|1DF045| LDA.b #$98
|1DF047| STA.w $0F80,X

|1DF04A| LDA.w $0F70,X
|1DF04D| BMI .exit

|1DF04F| LDA.b #$20
|1DF051| STA.w $0DF0,X

|1DF054| STZ.w $0ED0,X

|1DF057| LDA.b #$0C ; SFX2.0C
|1DF059| JSL QueueSpriteSFX2WithPan

|1DF05D| LDA.b #$20
|1DF05F| STA.w $0F10,X

.exit
|1DF062| RTS

;===================================================================================================

Sprite_40_LightningGate:
|1DF063| PHB
|1DF064| PHK
|1DF065| PLB

|1DF066| JSR .main

|1DF069| PLB

|1DF06A| RTL

;---------------------------------------------------------------------------------------------------

.main
|1DF06B| JSR SpriteDraw_LightningGate

|1DF06E| LDA.w $0DC0,X
|1DF071| CMP.b #$04
|1DF073| BEQ .no_zap

|1DF075| LDA.b $1A
|1DF077| LSR A
|1DF078| AND.b #$03
|1DF07A| STA.w $0DC0,X

|1DF07D| JSR CheckIfActive_bank1D

|1DF080| JSL CheckDamageFromLink_long
|1DF084| BCC .dont_zap_from_attack

;---------------------------------------------------------------------------------------------------

; mastersword or above means don't zap
|1DF086| LDA.l $7EF359
|1DF08A| CMP.b #$02
|1DF08C| BCS .dont_zap_from_attack

|1DF08E| STZ.w $0EF0,X

|1DF091| JSL AttemptDamageToLinkPlusRecoil_long

|1DF095| LDA.w $031F
|1DF098| BNE .dont_zap_from_attack

|1DF09A| LDA.b #$40
|1DF09C| STA.w $0360

;---------------------------------------------------------------------------------------------------

.dont_zap_from_attack
|1DF09F| REP #$20

|1DF0A1| LDA.b $20
|1DF0A3| SEC
|1DF0A4| SBC.w $0FDA
|1DF0A7| CLC
|1DF0A8| ADC.w #$0008

|1DF0AB| CMP.w #$0018
|1DF0AE| BCS .no_zap

|1DF0B0| LDA.b $22
|1DF0B2| SEC
|1DF0B3| SBC.w $0FD8
|1DF0B6| CLC
|1DF0B7| ADC.w #$0020

|1DF0BA| CMP.w #$0040
|1DF0BD| BCS .no_zap

|1DF0BF| SEP #$20

|1DF0C1| LDA.b $27
|1DF0C3| DEC A
|1DF0C4| BPL .no_zap

|1DF0C6| LDA.b #$40
|1DF0C8| STA.w $0360

|1DF0CB| LDA.b #$0C
|1DF0CD| STA.b $46

|1DF0CF| LDA.b #$01
|1DF0D1| STA.b $4D

|1DF0D3| LDA.b #$02
|1DF0D5| STA.w $0373

|1DF0D8| STZ.b $28

|1DF0DA| LDA.b #$30
|1DF0DC| STA.b $27

.no_zap
|1DF0DE| SEP #$20

|1DF0E0| RTS

;===================================================================================================

pool SpriteDraw_LightningGate

.oam_groups
; group00
|1DF0E1| dw   0,   0 : db $E8, $00, $00, $02
|1DF0E9| dw -29,   3 : db $CA, $00, $00, $00
|1DF0F1| dw -29,  11 : db $DA, $00, $00, $00
|1DF0F9| dw  37,   3 : db $CA, $40, $00, $00
|1DF101| dw  37,  11 : db $DA, $40, $00, $00
|1DF109| dw -24,  -2 : db $E6, $00, $00, $02
|1DF111| dw  -8,  -2 : db $E6, $00, $00, $02
|1DF119| dw   8,  -2 : db $E6, $40, $00, $02
|1DF121| dw  24,  -2 : db $E6, $40, $00, $02

; group01
|1DF129| dw   0,   0 : db $CC, $00, $00, $02
|1DF131| dw -29,   3 : db $CB, $00, $00, $00
|1DF139| dw -29,  11 : db $DB, $00, $00, $00
|1DF141| dw  37,   3 : db $CB, $40, $00, $00
|1DF149| dw  37,  11 : db $DB, $40, $00, $00
|1DF151| dw   0,   0 : db $CC, $00, $00, $02
|1DF159| dw   0,   0 : db $CC, $00, $00, $02
|1DF161| dw   0,   0 : db $CC, $00, $00, $02
|1DF169| dw   0,   0 : db $CC, $00, $00, $02

; group02
|1DF171| dw   0,   0 : db $CC, $00, $00, $02
|1DF179| dw -29,   3 : db $CB, $00, $00, $00
|1DF181| dw -29,  11 : db $DB, $00, $00, $00
|1DF189| dw  37,   3 : db $CB, $40, $00, $00
|1DF191| dw  37,  11 : db $DB, $40, $00, $00
|1DF199| dw -24,  -2 : db $E6, $80, $00, $02
|1DF1A1| dw  -8,  -2 : db $E6, $80, $00, $02
|1DF1A9| dw   8,  -2 : db $E6, $C0, $00, $02
|1DF1B1| dw  24,  -2 : db $E6, $C0, $00, $02

; group03
|1DF1B9| dw   0,   0 : db $E8, $00, $00, $02
|1DF1C1| dw -29,   3 : db $CA, $00, $00, $00
|1DF1C9| dw -29,  11 : db $DA, $00, $00, $00
|1DF1D1| dw  37,   3 : db $CA, $40, $00, $00
|1DF1D9| dw  37,  11 : db $DA, $40, $00, $00
|1DF1E1| dw   0,   0 : db $E8, $00, $00, $02
|1DF1E9| dw   0,   0 : db $E8, $00, $00, $02
|1DF1F1| dw   0,   0 : db $E8, $00, $00, $02
|1DF1F9| dw   0,   0 : db $E8, $00, $00, $02

; group04
|1DF201| dw -29,   3 : db $CB, $00, $00, $00
|1DF209| dw -29,  11 : db $DB, $00, $00, $00
|1DF211| dw  37,   3 : db $CB, $40, $00, $00
|1DF219| dw  37,  11 : db $DB, $40, $00, $00
|1DF221| dw  37,  11 : db $DB, $40, $00, $00
|1DF229| dw  37,  11 : db $DB, $40, $00, $00
|1DF231| dw  37,  11 : db $DB, $40, $00, $00
|1DF239| dw  37,  11 : db $DB, $40, $00, $00
|1DF241| dw  37,  11 : db $DB, $40, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_LightningGate:
|1DF249| LDA.b #$00
|1DF24B| XBA
|1DF24C| LDA.w $0DC0,X

|1DF24F| REP #$20

|1DF251| ASL A ; x8
|1DF252| ASL A
|1DF253| ASL A
|1DF254| STA.b $00

|1DF256| ASL A ; x64
|1DF257| ASL A
|1DF258| ASL A
|1DF259| CLC
|1DF25A| ADC.b $00 ; x72 total

|1DF25C| ADC.w #.oam_groups
|1DF25F| STA.b $08

|1DF261| LDA.w $0FDA
|1DF264| CLC
|1DF265| ADC.w #$0008
|1DF268| STA.w $0FDA

|1DF26B| SEP #$20

|1DF26D| LDA.b #$09
|1DF26F| JSR TabulatedSpriteDraw_bank1D
|1DF272| JSL Get16BitSpriteCoords_long

|1DF276| RTS

;===================================================================================================

SpritePrep_MiniMoldorm:
|1DF277| PHX

|1DF278| TXY

|1DF279| LDA.l SpriteSlotToSegmentOffset,X
|1DF27D| TAX

|1DF27E| LDA.b #$1F
|1DF280| STA.b $00

.next_segment
|1DF282| LDA.w $0D10,Y
|1DF285| STA.l $7FFC00,X

|1DF289| LDA.w $0D30,Y
|1DF28C| STA.l $7FFC80,X

|1DF290| LDA.w $0D00,Y
|1DF293| STA.l $7FFD00,X

|1DF297| LDA.w $0D20,Y
|1DF29A| STA.l $7FFD80,X

|1DF29E| INX

|1DF29F| DEC.b $00
|1DF2A1| BPL .next_segment

|1DF2A3| PLX

|1DF2A4| RTL

;===================================================================================================

pool SpriteDraw_Antifairy

.oam_groups
; group00
|1DF2A5| dw   4,   2 : db $E1, $02, $00, $00
|1DF2AD| dw   4,  -3 : db $E3, $02, $00, $00
|1DF2B5| dw  -1,   2 : db $E3, $02, $00, $00
|1DF2BD| dw   9,   2 : db $E3, $02, $00, $00
|1DF2C5| dw   4,   7 : db $E3, $02, $00, $00

; group01
|1DF2CD| dw   4,   2 : db $E1, $02, $00, $00
|1DF2D5| dw   3,  -3 : db $E3, $02, $00, $00
|1DF2DD| dw   9,   1 : db $E3, $02, $00, $00
|1DF2E5| dw  -1,   3 : db $E3, $02, $00, $00
|1DF2ED| dw   5,   7 : db $E3, $02, $00, $00

; group02
|1DF2F5| dw   4,   2 : db $E1, $02, $00, $00
|1DF2FD| dw   1,  -3 : db $E3, $02, $00, $00
|1DF305| dw   9,  -1 : db $E3, $02, $00, $00
|1DF30D| dw  -1,   5 : db $E3, $02, $00, $00
|1DF315| dw   7,   7 : db $E3, $02, $00, $00

; group03
|1DF31D| dw   4,   2 : db $E1, $02, $00, $00
|1DF325| dw   0,  -2 : db $E3, $02, $00, $00
|1DF32D| dw   8,  -2 : db $E3, $02, $00, $00
|1DF335| dw   0,   6 : db $E3, $02, $00, $00
|1DF33D| dw   8,   6 : db $E3, $02, $00, $00

; group04
|1DF345| dw   4,   2 : db $E1, $02, $00, $00
|1DF34D| dw   7,  -3 : db $E3, $02, $00, $00
|1DF355| dw  -1,  -1 : db $E3, $02, $00, $00
|1DF35D| dw   9,   5 : db $E3, $02, $00, $00
|1DF365| dw   1,   7 : db $E3, $02, $00, $00

; group05
|1DF36D| dw   4,   2 : db $E1, $02, $00, $00
|1DF375| dw   5,  -3 : db $E3, $02, $00, $00
|1DF37D| dw  -1,   1 : db $E3, $02, $00, $00
|1DF385| dw   9,   3 : db $E3, $02, $00, $00
|1DF38D| dw   3,   7 : db $E3, $02, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Antifairy:
|1DF395| PHB
|1DF396| PHK
|1DF397| PLB

|1DF398| INC.w $0E80,X

|1DF39B| LDA.w $0E80,X
|1DF39E| AND.b #$01
|1DF3A0| ORA.w $0011
|1DF3A3| ORA.w $0FC1
|1DF3A6| BNE .continue

|1DF3A8| INC.w $0DC0,X

|1DF3AB| LDA.w $0DC0,X
|1DF3AE| CMP.b #$06
|1DF3B0| BNE .continue

; reset animation step
|1DF3B2| STZ.w $0DC0,X

.continue
|1DF3B5| LDA.b #$00
|1DF3B7| XBA
|1DF3B8| LDA.w $0DC0,X

|1DF3BB| REP #$20

|1DF3BD| ASL A ; x8
|1DF3BE| ASL A
|1DF3BF| ASL A
|1DF3C0| STA.b $00

|1DF3C2| ASL A ; x32
|1DF3C3| ASL A
|1DF3C4| ADC.b $00 ; x40 total

|1DF3C6| ADC.w #.oam_groups
|1DF3C9| STA.b $08

|1DF3CB| SEP #$20

|1DF3CD| LDA.b #$05
|1DF3CF| JSR TabulatedSpriteDraw_bank1D

|1DF3D2| PLB

|1DF3D3| RTL

;===================================================================================================

Toppo_Flustered:
|1DF3D4| PHB
|1DF3D5| PHK
|1DF3D6| PLB

|1DF3D7| LDA.b #$82
|1DF3D9| STA.w $0E40,X
|1DF3DC| STA.w $0BA0,X

|1DF3DF| LDA.b #$49
|1DF3E1| STA.w $0E60,X

|1DF3E4| LDA.w $0E30,X
|1DF3E7| BNE .caught

;---------------------------------------------------------------------------------------------------

|1DF3E9| JSL CheckDamageToLink_long
|1DF3ED| BCC .not_just_caught

|1DF3EF| INC.w $0E30,X

|1DF3F2| LDA.b #$72 ; MESSAGE 0172
|1DF3F4| STA.w $1CF0

|1DF3F7| LDA.b #$01
|1DF3F9| STA.w $1CF1

|1DF3FC| JSL ShowMessageMinimal
|1DF400| BRA .not_just_caught

;---------------------------------------------------------------------------------------------------

.caught
|1DF402| CMP.b #$10
|1DF404| BCC .no_prize
|1DF406| BNE .not_just_caught

|1DF408| STZ.w $0BE0,X

|1DF40B| LDA.b #$06
|1DF40D| STA.w $0DD0,X

|1DF410| LDA.b #$0F
|1DF412| STA.w $0DF0,X

|1DF415| LDA.w $0E40,X
|1DF418| CLC
|1DF419| ADC.b #$04
|1DF41B| STA.w $0E40,X

|1DF41E| LDA.b #$15 ; SFX2.15
|1DF420| JSL QueueSpriteSFX2WithPan

;---------------------------------------------------------------------------------------------------

; [WTF]
; Toppo spawn a dying child instead of just dying themselves.
|1DF424| LDA.b #$4D ; SPRITE 4D
|1DF426| JSL SpawnSpriteDynamically
|1DF42A| BMI .no_prize

|1DF42C| JSL SetSpawnedSpriteCoordinates

|1DF430| PHX

|1DF431| TYX

|1DF432| LDY.b #$06
|1DF434| JSL ForcePrizeDrop_long

|1DF438| PLX

;---------------------------------------------------------------------------------------------------

.no_prize
|1DF439| INC.w $0E30,X

;---------------------------------------------------------------------------------------------------

.not_just_caught
|1DF43C| INC.w $0E80,X

|1DF43F| LDA.w $0E80,X
|1DF442| AND.b #$04
|1DF444| LSR A
|1DF445| LSR A
|1DF446| ADC.b #$03
|1DF448| STA.w $0DC0,X

|1DF44B| PLB

|1DF44C| RTL

;===================================================================================================

pool SpriteDraw_Mimic

.oam_groups

.group00
|1DF44D| dw  -4,  -8 : db $44, $00, $00, $02
|1DF455| dw  12,  -8 : db $44, $40, $00, $00
|1DF45D| dw  -4,   8 : db $64, $00, $00, $00
|1DF465| dw   4,   0 : db $54, $40, $00, $02

.group01
|1DF46D| dw  -4,  -8 : db $44, $00, $00, $02
|1DF475| dw  12,  -8 : db $44, $40, $00, $00
|1DF47D| dw  -4,   8 : db $74, $40, $00, $00
|1DF485| dw   4,   0 : db $62, $40, $00, $02

.group02
|1DF48D| dw  -4,  -8 : db $44, $00, $00, $00
|1DF495| dw   4,  -8 : db $44, $40, $00, $02
|1DF49D| dw  -4,   0 : db $62, $00, $00, $02
|1DF4A5| dw  12,   8 : db $64, $40, $00, $00

.group03
|1DF4AD| dw  -4,  -8 : db $46, $00, $00, $02
|1DF4B5| dw  12,  -8 : db $46, $40, $00, $00
|1DF4BD| dw  -4,   8 : db $66, $00, $00, $00
|1DF4C5| dw   4,   0 : db $56, $40, $00, $02

.group04
|1DF4CD| dw  -4,  -8 : db $46, $00, $00, $02
|1DF4D5| dw  12,  -8 : db $46, $40, $00, $00
|1DF4DD| dw  -4,   8 : db $75, $40, $00, $00
|1DF4E5| dw   4,   0 : db $6A, $40, $00, $02

.group05
|1DF4ED| dw  -4,  -8 : db $46, $00, $00, $00
|1DF4F5| dw   4,  -8 : db $46, $40, $00, $02
|1DF4FD| dw  -4,   0 : db $6A, $00, $00, $02
|1DF505| dw  12,   8 : db $75, $00, $00, $00

.group06
|1DF50D| dw  -2,  -8 : db $4E, $00, $00, $02
|1DF515| dw   0,   0 : db $6C, $00, $00, $02

.group07
|1DF51D| dw  -2,  -7 : db $4E, $00, $00, $02
|1DF525| dw   0,   0 : db $6E, $00, $00, $02

.group08
|1DF52D| dw   2,  -8 : db $4E, $40, $00, $02
|1DF535| dw   0,   0 : db $6C, $40, $00, $02

.group09
|1DF53D| dw   2,  -7 : db $4E, $40, $00, $02
|1DF545| dw   0,   0 : db $6E, $40, $00, $02

;---------------------------------------------------------------------------------------------------

.mouthgroup00
|1DF54D| dw  10,   4 : db $77, $40, $00, $00

.mouthgroup01
|1DF555| dw  -2,   4 : db $77, $00, $00, $00

.mouthgroup02
|1DF55D| dw   4,   4 : db $76, $00, $00, $00

;---------------------------------------------------------------------------------------------------

.mouth_group_pointer
|1DF565| dw .mouthgroup00
|1DF567| dw .mouthgroup01
|1DF569| dw .mouthgroup02

;---------------------------------------------------------------------------------------------------

.group_pointer
|1DF56B| dw .group00
|1DF56D| dw .group01
|1DF56F| dw .group02
|1DF571| dw .group03
|1DF573| dw .group04
|1DF575| dw .group05
|1DF577| dw .group06
|1DF579| dw .group07
|1DF57B| dw .group08
|1DF57D| dw .group09

;---------------------------------------------------------------------------------------------------

.group_size
|1DF57F| db $04 ; group00
|1DF580| db $04 ; group01
|1DF581| db $04 ; group02
|1DF582| db $04 ; group03
|1DF583| db $04 ; group04
|1DF584| db $04 ; group05
|1DF585| db $02 ; group06
|1DF586| db $02 ; group07
|1DF587| db $02 ; group08
|1DF588| db $02 ; group09

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Mimic:
|1DF589| PHB
|1DF58A| PHK
|1DF58B| PLB

|1DF58C| LDA.w $0E00,X
|1DF58F| BEQ .no_mouth

|1DF591| LDA.w $0DE0,X
|1DF594| CMP.b #$03
|1DF596| BEQ .no_mouth

|1DF598| ASL A
|1DF599| TAY

|1DF59A| REP #$20

|1DF59C| LDA.w .mouth_group_pointer,Y
|1DF59F| STA.b $08

|1DF5A1| SEP #$20

|1DF5A3| LDA.b #$01
|1DF5A5| JSR TabulatedSpriteDraw_bank1D

;---------------------------------------------------------------------------------------------------

.no_mouth
|1DF5A8| LDA.w $0DC0,X
|1DF5AB| PHA

|1DF5AC| ASL A
|1DF5AD| TAY

|1DF5AE| REP #$20

|1DF5B0| LDA.w .group_pointer,Y
|1DF5B3| STA.b $08

|1DF5B5| LDA.b $90
|1DF5B7| CLC
|1DF5B8| ADC.w #$0004
|1DF5BB| STA.b $90

|1DF5BD| INC.b $92

|1DF5BF| SEP #$20

|1DF5C1| PLY

|1DF5C2| LDA.w .group_size,Y
|1DF5C5| JSR TabulatedSpriteDraw_bank1D

|1DF5C8| DEC.w $0E40,X
|1DF5CB| JSL DrawSpriteShadow_long

|1DF5CF| INC.w $0E40,X

|1DF5D2| PLB

|1DF5D3| RTL

;===================================================================================================

pool ConvertVelocityToAngle

.angle_x
|1DF5D4| db  0,  0,  1,  1,  1,  2,  2,  2
|1DF5DC| db  0,  0, 15, 15, 15, 14, 14, 14
|1DF5E4| db  8,  8,  7,  7,  7,  6,  6,  6
|1DF5EC| db  8,  8,  9,  9,  9, 10, 10, 10

.angle_y
|1DF5F4| db  4,  4,  3,  3,  3,  2,  2,  2
|1DF5FC| db 12, 12, 13, 13, 13, 14, 14, 14
|1DF604| db  4,  4,  5,  5,  5,  6,  6,  6
|1DF60C| db 12, 12, 11, 11, 11, 10, 10, 10

endpool

;---------------------------------------------------------------------------------------------------

ConvertVelocityToAngle:
|1DF614| PHB
|1DF615| PHK
|1DF616| PLB

|1DF617| LDA.b $00
|1DF619| ASL A
|1DF61A| ROL A
|1DF61B| STA.b $08

|1DF61D| LDA.b $01
|1DF61F| ASL A
|1DF620| ROL A
|1DF621| ASL A

|1DF622| ORA.b $08
|1DF624| AND.b #$03
|1DF626| ASL A
|1DF627| ASL A
|1DF628| ASL A
|1DF629| STA.b $0A

|1DF62B| LDA.b $01
|1DF62D| BPL .positive_x

|1DF62F| EOR.b #$FF
|1DF631| INC A

.positive_x
|1DF632| STA.b $08

|1DF634| LDA.b $00
|1DF636| BPL .positive_y

|1DF638| EOR.b #$FF
|1DF63A| INC A

.positive_y
|1DF63B| STA.b $09

|1DF63D| LDA.b $08
|1DF63F| CMP.b $09
|1DF641| BCC .use_y_for_angle

.use_x_for_angle
|1DF643| LDA.b $09
|1DF645| LSR A
|1DF646| LSR A

|1DF647| CLC
|1DF648| ADC.b $0A
|1DF64A| TAY

|1DF64B| LDA.w .angle_x,Y
|1DF64E| BRA .exit

.use_y_for_angle
|1DF650| LDA.b $08
|1DF652| LSR A
|1DF653| LSR A

|1DF654| CLC
|1DF655| ADC.b $0A
|1DF657| TAY

|1DF658| LDA.w .angle_y,Y

.exit
|1DF65B| PLB

|1DF65C| RTL

;===================================================================================================
; Attempts to find an open slot for a sprite to spawn in
; returns with slot in Y, regardless of failure (0xFF)
;===================================================================================================
SpawnSpriteDynamically:
|1DF65D| LDY.b #$0F

;===================================================================================================

.slot_limited
|1DF65F| PHA ; push sprite ID

.next
|1DF660| LDA.w $0DD0,Y
|1DF663| BEQ .free_slot

|1DF665| DEY
|1DF666| BPL .next

;---------------------------------------------------------------------------------------------------

; failure
|1DF668| PLA
|1DF669| TYA ; to set N flag via Y

|1DF66A| RTL

;---------------------------------------------------------------------------------------------------

.free_slot
|1DF66B| PLA
|1DF66C| STA.w $0E20,Y

|1DF66F| LDA.b #$09
|1DF671| STA.w $0DD0,Y

; copy properties from the spawning sprite
|1DF674| LDA.w $0D10,X
|1DF677| STA.b $00

|1DF679| LDA.w $0D30,X
|1DF67C| STA.b $01

|1DF67E| LDA.w $0D00,X
|1DF681| STA.b $02

|1DF683| LDA.w $0D20,X
|1DF686| STA.b $03

|1DF688| LDA.w $0F70,X
|1DF68B| STA.b $04

; copy properties from the spawning overlord
|1DF68D| LDA.w $0B08,X
|1DF690| STA.b $05

|1DF692| LDA.w $0B10,X
|1DF695| STA.b $06

|1DF697| LDA.w $0B18,X
|1DF69A| STA.b $07

|1DF69C| LDA.w $0B20,X
|1DF69F| STA.b $08

;---------------------------------------------------------------------------------------------------

|1DF6A1| PHX
|1DF6A2| TYX

|1DF6A3| JSL LoadSpriteProperties

|1DF6A7| LDA.b $1B
|1DF6A9| BNE .indoors

;---------------------------------------------------------------------------------------------------

.outdoors
|1DF6AB| TXA
|1DF6AC| ASL A
|1DF6AD| TAX

|1DF6AE| LDA.b #$FF
|1DF6B0| STA.w $0BC1,X

;---------------------------------------------------------------------------------------------------

.indoors
|1DF6B3| LDA.b #$FF
|1DF6B5| STA.w $0BC0,X

|1DF6B8| PLX

;---------------------------------------------------------------------------------------------------

|1DF6B9| LDA.w $0F20,X
|1DF6BC| STA.w $0F20,Y

|1DF6BF| LDA.w $0DE0,X
|1DF6C2| STA.w $0DE0,Y

|1DF6C5| LDA.b #$00
|1DF6C7| STA.w $0CBA,Y
|1DF6CA| STA.w $0E30,Y

|1DF6CD| TYA

|1DF6CE| RTL

;===================================================================================================
; 00 - nothing
; 01 - collision
; 02 - short collision
; 03 - stairs
; FF - ledges
;===================================================================================================
GeneralizedSpriteTileInteraction:
|1DF6CF| db $00 ; 00
|1DF6D0| db $01 ; 01
|1DF6D1| db $02 ; 02
|1DF6D2| db $03 ; 03
|1DF6D3| db $02 ; 04
|1DF6D4| db $00 ; 05
|1DF6D5| db $00 ; 06
|1DF6D6| db $00 ; 07
|1DF6D7| db $00 ; 08
|1DF6D8| db $01 ; 09
|1DF6D9| db $00 ; 0A
|1DF6DA| db $01 ; 0B
|1DF6DB| db $00 ; 0C
|1DF6DC| db $00 ; 0D
|1DF6DD| db $00 ; 0E
|1DF6DE| db $00 ; 0F
|1DF6DF| db $01 ; 10
|1DF6E0| db $01 ; 11
|1DF6E1| db $01 ; 12
|1DF6E2| db $01 ; 13
|1DF6E3| db $01 ; 14
|1DF6E4| db $01 ; 15
|1DF6E5| db $01 ; 16
|1DF6E6| db $01 ; 17
|1DF6E7| db $01 ; 18
|1DF6E8| db $01 ; 19
|1DF6E9| db $01 ; 1A
|1DF6EA| db $01 ; 1B
|1DF6EB| db $00 ; 1C
|1DF6EC| db $01 ; 1D
|1DF6ED| db $01 ; 1E
|1DF6EE| db $01 ; 1F
|1DF6EF| db $01 ; 20
|1DF6F0| db $01 ; 21
|1DF6F1| db $01 ; 22
|1DF6F2| db $00 ; 23
|1DF6F3| db $00 ; 24
|1DF6F4| db $00 ; 25
|1DF6F5| db $01 ; 26
|1DF6F6| db $02 ; 27
|1DF6F7| db $FF ; 28
|1DF6F8| db $FF ; 29
|1DF6F9| db $FF ; 2A
|1DF6FA| db $FF ; 2B
|1DF6FB| db $FF ; 2C
|1DF6FC| db $FF ; 2D
|1DF6FD| db $FF ; 2E
|1DF6FE| db $FF ; 2F
|1DF6FF| db $01 ; 30
|1DF700| db $01 ; 31
|1DF701| db $01 ; 32
|1DF702| db $01 ; 33
|1DF703| db $01 ; 34
|1DF704| db $01 ; 35
|1DF705| db $01 ; 36
|1DF706| db $01 ; 37
|1DF707| db $01 ; 38
|1DF708| db $01 ; 39
|1DF709| db $00 ; 3A
|1DF70A| db $00 ; 3B
|1DF70B| db $01 ; 3C
|1DF70C| db $01 ; 3D
|1DF70D| db $01 ; 3E
|1DF70E| db $01 ; 3F
|1DF70F| db $00 ; 40
|1DF710| db $01 ; 41
|1DF711| db $01 ; 42
|1DF712| db $01 ; 43
|1DF713| db $01 ; 44
|1DF714| db $01 ; 45
|1DF715| db $00 ; 46
|1DF716| db $01 ; 47
|1DF717| db $00 ; 48
|1DF718| db $01 ; 49
|1DF719| db $00 ; 4A
|1DF71A| db $00 ; 4B
|1DF71B| db $FF ; 4C
|1DF71C| db $FF ; 4D
|1DF71D| db $FF ; 4E
|1DF71E| db $FF ; 4F
|1DF71F| db $01 ; 50
|1DF720| db $01 ; 51
|1DF721| db $01 ; 52
|1DF722| db $01 ; 53
|1DF723| db $01 ; 54
|1DF724| db $01 ; 55
|1DF725| db $01 ; 56
|1DF726| db $01 ; 57
|1DF727| db $01 ; 58
|1DF728| db $01 ; 59
|1DF729| db $01 ; 5A
|1DF72A| db $01 ; 5B
|1DF72B| db $01 ; 5C
|1DF72C| db $01 ; 5D
|1DF72D| db $01 ; 5E
|1DF72E| db $01 ; 5F
|1DF72F| db $00 ; 60
|1DF730| db $00 ; 61
|1DF731| db $00 ; 62
|1DF732| db $00 ; 63
|1DF733| db $00 ; 64
|1DF734| db $01 ; 65
|1DF735| db $00 ; 66
|1DF736| db $02 ; 67
|1DF737| db $00 ; 68
|1DF738| db $00 ; 69
|1DF739| db $00 ; 6A
|1DF73A| db $00 ; 6B
|1DF73B| db $01 ; 6C
|1DF73C| db $01 ; 6D
|1DF73D| db $01 ; 6E
|1DF73E| db $01 ; 6F
|1DF73F| db $01 ; 70
|1DF740| db $01 ; 71
|1DF741| db $01 ; 72
|1DF742| db $01 ; 73
|1DF743| db $01 ; 74
|1DF744| db $01 ; 75
|1DF745| db $01 ; 76
|1DF746| db $01 ; 77
|1DF747| db $01 ; 78
|1DF748| db $01 ; 79
|1DF749| db $01 ; 7A
|1DF74A| db $01 ; 7B
|1DF74B| db $01 ; 7C
|1DF74C| db $01 ; 7D
|1DF74D| db $01 ; 7E
|1DF74E| db $01 ; 7F
|1DF74F| db $01 ; 80
|1DF750| db $01 ; 81
|1DF751| db $01 ; 82
|1DF752| db $01 ; 83
|1DF753| db $01 ; 84
|1DF754| db $01 ; 85
|1DF755| db $01 ; 86
|1DF756| db $01 ; 87
|1DF757| db $01 ; 88
|1DF758| db $01 ; 89
|1DF759| db $01 ; 8A
|1DF75A| db $01 ; 8B
|1DF75B| db $01 ; 8C
|1DF75C| db $01 ; 8D
|1DF75D| db $01 ; 8E
|1DF75E| db $01 ; 8F
|1DF75F| db $01 ; 90
|1DF760| db $01 ; 91
|1DF761| db $01 ; 92
|1DF762| db $01 ; 93
|1DF763| db $01 ; 94
|1DF764| db $01 ; 95
|1DF765| db $01 ; 96
|1DF766| db $01 ; 97
|1DF767| db $01 ; 98
|1DF768| db $01 ; 99
|1DF769| db $01 ; 9A
|1DF76A| db $01 ; 9B
|1DF76B| db $01 ; 9C
|1DF76C| db $01 ; 9D
|1DF76D| db $01 ; 9E
|1DF76E| db $01 ; 9F
|1DF76F| db $01 ; A0
|1DF770| db $01 ; A1
|1DF771| db $01 ; A2
|1DF772| db $01 ; A3
|1DF773| db $01 ; A4
|1DF774| db $01 ; A5
|1DF775| db $01 ; A6
|1DF776| db $01 ; A7
|1DF777| db $01 ; A8
|1DF778| db $01 ; A9
|1DF779| db $01 ; AA
|1DF77A| db $01 ; AB
|1DF77B| db $01 ; AC
|1DF77C| db $01 ; AD
|1DF77D| db $01 ; AE
|1DF77E| db $01 ; AF
|1DF77F| db $01 ; B0
|1DF780| db $01 ; B1
|1DF781| db $01 ; B2
|1DF782| db $01 ; B3
|1DF783| db $01 ; B4
|1DF784| db $01 ; B5
|1DF785| db $01 ; B6
|1DF786| db $01 ; B7
|1DF787| db $01 ; B8
|1DF788| db $01 ; B9
|1DF789| db $01 ; BA
|1DF78A| db $01 ; BB
|1DF78B| db $01 ; BC
|1DF78C| db $01 ; BD
|1DF78D| db $01 ; BE
|1DF78E| db $01 ; BF
|1DF78F| db $01 ; C0
|1DF790| db $01 ; C1
|1DF791| db $01 ; C2
|1DF792| db $01 ; C3
|1DF793| db $01 ; C4
|1DF794| db $01 ; C5
|1DF795| db $01 ; C6
|1DF796| db $01 ; C7
|1DF797| db $01 ; C8
|1DF798| db $01 ; C9
|1DF799| db $01 ; CA
|1DF79A| db $01 ; CB
|1DF79B| db $01 ; CC
|1DF79C| db $01 ; CD
|1DF79D| db $01 ; CE
|1DF79E| db $01 ; CF
|1DF79F| db $01 ; D0
|1DF7A0| db $01 ; D1
|1DF7A1| db $01 ; D2
|1DF7A2| db $01 ; D3
|1DF7A3| db $01 ; D4
|1DF7A4| db $01 ; D5
|1DF7A5| db $01 ; D6
|1DF7A6| db $01 ; D7
|1DF7A7| db $01 ; D8
|1DF7A8| db $01 ; D9
|1DF7A9| db $01 ; DA
|1DF7AA| db $01 ; DB
|1DF7AB| db $01 ; DC
|1DF7AC| db $01 ; DD
|1DF7AD| db $01 ; DE
|1DF7AE| db $01 ; DF
|1DF7AF| db $01 ; E0
|1DF7B0| db $01 ; E1
|1DF7B1| db $01 ; E2
|1DF7B2| db $01 ; E3
|1DF7B3| db $01 ; E4
|1DF7B4| db $01 ; E5
|1DF7B5| db $01 ; E6
|1DF7B6| db $01 ; E7
|1DF7B7| db $01 ; E8
|1DF7B8| db $01 ; E9
|1DF7B9| db $01 ; EA
|1DF7BA| db $01 ; EB
|1DF7BB| db $01 ; EC
|1DF7BC| db $01 ; ED
|1DF7BD| db $01 ; EE
|1DF7BE| db $01 ; EF
|1DF7BF| db $01 ; F0
|1DF7C0| db $01 ; F1
|1DF7C1| db $01 ; F2
|1DF7C2| db $01 ; F3
|1DF7C3| db $01 ; F4
|1DF7C4| db $01 ; F5
|1DF7C5| db $01 ; F6
|1DF7C6| db $01 ; F7
|1DF7C7| db $01 ; F8
|1DF7C8| db $01 ; F9
|1DF7C9| db $01 ; FA
|1DF7CA| db $01 ; FB
|1DF7CB| db $01 ; FC
|1DF7CC| db $01 ; FD
|1DF7CD| db $01 ; FE
|1DF7CE| db $01 ; FF

;===================================================================================================

SpriteSlotToSegmentOffset:
|1DF7CF| db $00, $20, $40, $60

;===================================================================================================

pool SpriteDraw_MiniMoldorm

.char
|1DF7D3| db $5D, $62, $60

.offset_segment
|1DF7D6| db $04, $00, $00, $00, $00, $00

.prop
|1DF7DC| db $00, $02, $02

.segment_index
|1DF7DF| db $15, $1A, $00

.offset_main_x
|1DF7E2| db 11,  0, 10,  0,  9,  0,  6,  0
|1DF7EA| db  3,  0,  0,  0, -2, -1, -3, -1
|1DF7F2| db -4, -1, -3, -1, -2, -1,  1,  0
|1DF7FA| db  4,  0,  7,  0,  9,  0, 10,  0

.offset_main_y
|1DF802| db  4,  0,  6,  0,  9,  0, 10,  0
|1DF80A| db 11,  0, 10,  0,  9,  0,  6,  0
|1DF812| db  3,  0,  0,  0, -2, -1, -3, -1
|1DF81A| db -4, -1, -3, -1, -2, -1,  1,  0

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_MiniMoldorm:
|1DF822| JSL GetScreenCoordinates_long
|1DF826| BCC .continue

|1DF828| RTL

;---------------------------------------------------------------------------------------------------

.continue
|1DF829| PHB
|1DF82A| PHK
|1DF82B| PLB

|1DF82C| LDA.w $0DE0,X
|1DF82F| CLC
|1DF830| ADC.b #$FF
|1DF832| STA.b $06

;---------------------------------------------------------------------------------------------------

|1DF834| PHX

|1DF835| LDX.b #$01

.next_object_main
|1DF837| LDA.b $06
|1DF839| AND.b #$0F
|1DF83B| ASL A

|1DF83C| PHX
|1DF83D| TAX

|1DF83E| REP #$20

|1DF840| LDA.b $00
|1DF842| CLC
|1DF843| ADC.w .offset_main_x,X
|1DF846| STA.b ($90),Y

|1DF848| AND.w #$0100
|1DF84B| STA.b $0E

|1DF84D| LDA.b $02
|1DF84F| CLC
|1DF850| ADC.w .offset_main_y,X
|1DF853| INY
|1DF854| STA.b ($90),Y

|1DF856| ADC.w #$0010
|1DF859| CMP.w #$0100

|1DF85C| SEP #$20
|1DF85E| BCC .on_screen_main

|1DF860| LDA.b #$F0
|1DF862| STA.b ($90),Y

.on_screen_main
|1DF864| LDA.b #$4D
|1DF866| INY
|1DF867| STA.b ($90),Y

|1DF869| LDA.b $05
|1DF86B| INY
|1DF86C| STA.b ($90),Y

|1DF86E| PHY

|1DF86F| TYA
|1DF870| LSR A
|1DF871| LSR A
|1DF872| TAY

|1DF873| LDA.b $0F
|1DF875| STA.b ($92),Y

|1DF877| LDA.b $06
|1DF879| CLC
|1DF87A| ADC.b #$02
|1DF87C| STA.b $06

|1DF87E| PLY
|1DF87F| INY

|1DF880| PLX
|1DF881| DEX
|1DF882| BPL .next_object_main

;---------------------------------------------------------------------------------------------------

|1DF884| PLX

|1DF885| REP #$20

|1DF887| LDA.b $90
|1DF889| CLC
|1DF88A| ADC.w #$0008
|1DF88D| STA.b $90

|1DF88F| INC.b $92
|1DF891| INC.b $92

|1DF893| SEP #$20

|1DF895| TXY

|1DF896| LDA.w $0E80,X
|1DF899| AND.b #$1F
|1DF89B| CLC
|1DF89C| ADC.w SpriteSlotToSegmentOffset,X
|1DF89F| TAX

; copy parent coords
|1DF8A0| LDA.w $0D10,Y
|1DF8A3| STA.l $7FFC00,X

|1DF8A7| LDA.w $0D30,Y
|1DF8AA| STA.l $7FFC80,X

|1DF8AE| LDA.w $0D00,Y
|1DF8B1| STA.l $7FFD00,X

|1DF8B5| LDA.w $0D20,Y
|1DF8B8| STA.l $7FFD80,X

|1DF8BC| LDA.b #$02
|1DF8BE| STA.b $06

;---------------------------------------------------------------------------------------------------

|1DF8C0| LDY.b #$00

.next_object_segment
|1DF8C2| PHY

|1DF8C3| LDY.b $06
|1DF8C5| LDX.w $0FA0

|1DF8C8| LDA.w $0E80,X
|1DF8CB| CLC
|1DF8CC| ADC.w .segment_index,Y
|1DF8CF| AND.b #$1F

|1DF8D1| CLC
|1DF8D2| ADC.w SpriteSlotToSegmentOffset,X
|1DF8D5| TAX

|1DF8D6| LDA.l $7FFC00,X
|1DF8DA| STA.b $00

|1DF8DC| LDA.l $7FFC80,X
|1DF8E0| STA.b $01

|1DF8E2| LDA.l $7FFD00,X
|1DF8E6| STA.b $02

|1DF8E8| LDA.l $7FFD80,X
|1DF8EC| STA.b $03

|1DF8EE| TYA
|1DF8EF| PLY
|1DF8F0| PHA

|1DF8F1| ASL A
|1DF8F2| TAX

|1DF8F3| REP #$20

|1DF8F5| LDA.b $00
|1DF8F7| SEC
|1DF8F8| SBC.b $E2
|1DF8FA| CLC
|1DF8FB| ADC.w .offset_segment,X

|1DF8FE| STA.b ($90),Y

|1DF900| AND.w #$0100
|1DF903| STA.b $0E

|1DF905| LDA.b $02
|1DF907| SEC
|1DF908| SBC.b $E8
|1DF90A| CLC
|1DF90B| ADC.w .offset_segment,X

|1DF90E| INY
|1DF90F| STA.b ($90),Y

|1DF911| CLC
|1DF912| ADC.w #$0010
|1DF915| CMP.w #$0100

|1DF918| SEP #$20
|1DF91A| BCC .on_screen_segment

|1DF91C| LDA.b #$F0
|1DF91E| STA.b ($90),Y

.on_screen_segment
|1DF920| PLX

|1DF921| LDA.w .char,X
|1DF924| INY
|1DF925| STA.b ($90),Y

|1DF927| LDA.b $05
|1DF929| INY
|1DF92A| STA.b ($90),Y

|1DF92C| PHY

|1DF92D| TYA
|1DF92E| LSR A
|1DF92F| LSR A
|1DF930| TAY

|1DF931| LDA.w .prop,X
|1DF934| ORA.b $0F
|1DF936| STA.b ($92),Y

|1DF938| PLY
|1DF939| INY

|1DF93A| DEC.b $06
|1DF93C| BPL .next_object_segment

|1DF93E| LDX.w $0FA0

|1DF941| PLB

|1DF942| RTL

;===================================================================================================

Sprite_25_TalkingTree:
|1DF943| PHB
|1DF944| PHK
|1DF945| PLB

|1DF946| JSR .main

|1DF949| PLB

|1DF94A| RTL

;---------------------------------------------------------------------------------------------------

.main
|1DF94B| LDA.w $0E80,X
|1DF94E| JSL JumpTableLocal
|1DF952| dw TalkingTree_Mouth
|1DF954| dw TalkingTree_Eye

;===================================================================================================

TalkingTree_Mouth:
|1DF956| JSR SpriteDraw_TalkingTree
|1DF959| JSR CheckIfActive_bank1D

|1DF95C| STZ.w $0F60,X

|1DF95F| LDA.w $0D80,X
|1DF962| JSL JumpTableLocal
|1DF966| dw TalkingTree_IdleWithBomb
|1DF968| dw TalkingTree_DelayBomb
|1DF96A| dw TalkingTree_SpitBomb
|1DF96C| dw TalkingTree_IdleWithoutBomb

;===================================================================================================

TalkingTree_IdleWithBomb:
|1DF96E| STZ.w $0DC0,X

|1DF971| JSL CheckDamageToLink_same_layer_long
|1DF975| BCC .exit

|1DF977| JSL CancelDash_long

|1DF97B| LDA.b #$10
|1DF97D| STA.b $46

|1DF97F| LDA.b #$30
|1DF981| JSL ProjectSpriteSpeedTowardsLink_long

|1DF985| LDA.b $00
|1DF987| STA.b $27

|1DF989| LDA.b $01
|1DF98B| STA.b $28

|1DF98D| LDA.b #$32 ; SFX3.32
|1DF98F| JSL QueueSpriteSFX3WithPan

|1DF993| INC.w $0D80,X

|1DF996| LDA.b #$30
|1DF998| STA.w $0DF0,X

.exit
|1DF99B| RTS

;===================================================================================================

TalkingTree_DelayBomb:
|1DF99C| LDA.w $0DF0,X
|1DF99F| BNE .pulsate_mouth

|1DF9A1| INC.w $0D80,X

|1DF9A4| LDA.b #$08
|1DF9A6| STA.w $0DF0,X

.pulsate_mouth
|1DF9A9| LSR A
|1DF9AA| AND.b #$03
|1DF9AC| STA.w $0DC0,X

|1DF9AF| RTS

;===================================================================================================

pool TalkingTree_SpitBomb

.draw
|1DF9B0| db $00, $02, $03, $01

endpool

;---------------------------------------------------------------------------------------------------

TalkingTree_SpitBomb:
|1DF9B4| LDA.w $0DF0,X
|1DF9B7| LSR A
|1DF9B8| TAY

|1DF9B9| LDA.w .draw,X
|1DF9BC| STA.w $0DC0,X

|1DF9BF| LDA.w $0DF0,X
|1DF9C2| CMP.b #$07
|1DF9C4| BNE .no_bomb

|1DF9C6| JSR TalkingTree_SpawnBomb

.no_bomb
|1DF9C9| LDA.w $0DF0,X
|1DF9CC| BNE .exit

|1DF9CE| INC.w $0D80,X

.exit
|1DF9D1| RTS

;===================================================================================================

pool TalkingTree_IdleWithoutBomb

.draw_step
|1DF9D2| db $01, $02, $03, $01, $03, $01, $02, $03

.timer
|1DF9DA| db  13,  13,  13,  11,  11,   6,  16,   8

endpool

;---------------------------------------------------------------------------------------------------

TalkingTree_IdleWithoutBomb:
|1DF9E2| JSR TalkingTree_ChooseTalkingPoint

|1DF9E5| LDA.w $0DF0,X
|1DF9E8| BNE .exit

|1DF9EA| LDA.w $0DA0,X
|1DF9ED| INC A
|1DF9EE| AND.b #$07
|1DF9F0| STA.w $0DA0,X

|1DF9F3| TAY

|1DF9F4| LDA.w .draw_step,Y
|1DF9F7| STA.w $0DC0,X

|1DF9FA| LDA.w .timer,Y
|1DF9FD| STA.w $0DF0,X

.exit
|1DFA00| RTS

;===================================================================================================

TalkingTree_GenericMessages:
|1DFA01| db $80 ; MESSAGE 0080
|1DFA02| db $7B ; MESSAGE 007B

;---------------------------------------------------------------------------------------------------

TalkingTree_ChooseTalkingPoint:
|1DFA03| LDA.b #$07
|1DFA05| STA.w $0F60,X

|1DFA08| LDA.w $0D90,X
|1DFA0B| BNE .use_screen_based_message

;---------------------------------------------------------------------------------------------------

|1DFA0D| LDA.w $0D10,X
|1DFA10| LSR A
|1DFA11| LSR A
|1DFA12| LSR A
|1DFA13| LSR A
|1DFA14| AND.b #$01
|1DFA16| EOR.b #$01
|1DFA18| STA.w $0D90,X

|1DFA1B| TAY
|1DFA1C| LDA.w TalkingTree_GenericMessages,Y

|1DFA1F| LDY.b #$00
|1DFA21| JSL ShowSolicitedMessage
|1DFA25| BCS .exit

|1DFA27| STZ.w $0D90,X

.exit
|1DFA2A| RTS

;===================================================================================================

.screen_based_hints
|1DFA2B| db $7C ; MESSAGE 007C
|1DFA2C| db $7D ; MESSAGE 007D
|1DFA2D| db $7E ; MESSAGE 007E
|1DFA2E| db $7F ; MESSAGE 007F

.screen_id
|1DFA2F| db $58 ; OW 58 - Village of Outcasts
|1DFA30| db $5D ; OW 5D - Dark Hylia River Peninsula
|1DFA31| db $72 ; OW 72 - Stumpy Grove Entrance
|1DFA32| db $6B ; OW 6B - West of Bomb Shop

;---------------------------------------------------------------------------------------------------

.use_screen_based_message
|1DFA33| LDY.b #$00

|1DFA35| LDA.b $8A

.check_screen
|1DFA37| CMP.w .screen_id,Y
|1DFA3A| BEQ .use_message

|1DFA3C| INY
|1DFA3D| BEQ .use_message

|1DFA3F| BRA .check_screen

;---------------------------------------------------------------------------------------------------

.use_message
|1DFA41| LDA.w .screen_based_hints,Y
|1DFA44| LDY.b #$00
|1DFA46| JSL ShowMessageUnconditional

|1DFA4A| STZ.w $0D90,X

|1DFA4D| RTS

;===================================================================================================

TalkingTree_SpawnBomb:
|1DFA4E| LDA.b #$4A ; SPRITE 4A
|1DFA50| JSL SpawnSpriteDynamically
|1DFA54| BMI .exit

|1DFA56| JSL TransmuteSpriteToBomb
|1DFA5A| JSL SetSpawnedSpriteCoordinates

|1DFA5E| LDA.b $02
|1DFA60| CLC
|1DFA61| ADC.b #$28
|1DFA63| STA.b $08

|1DFA65| LDA.b $03 ; useless? doesn't seem to get used afterwards
|1DFA67| ADC.b #$00
|1DFA69| STA.b $03

|1DFA6B| LDA.b #$40
|1DFA6D| STA.w $0E00,Y

|1DFA70| LDA.b #$18
|1DFA72| STA.w $0D40,Y

|1DFA75| LDA.b #$12
|1DFA77| STA.w $0F80,Y

.exit
|1DFA7A| RTS

;===================================================================================================

pool SpriteDraw_TalkingTree

.oam_groups
; group00
|1DFA7B| dw   1,  -1 : db $E8, $00, $00, $00
|1DFA83| dw   1,   7 : db $F8, $00, $00, $00
|1DFA8B| dw   7,  -1 : db $E8, $40, $00, $00
|1DFA93| dw   7,   7 : db $F8, $40, $00, $00

; group01
|1DFA9B| dw   0,  -1 : db $E8, $00, $00, $00
|1DFAA3| dw   0,   7 : db $F8, $00, $00, $00
|1DFAAB| dw   8,  -1 : db $E8, $40, $00, $00
|1DFAB3| dw   8,   7 : db $F8, $40, $00, $00

; group02
|1DFABB| dw   0,   0 : db $E8, $00, $00, $00
|1DFAC3| dw   0,   7 : db $F8, $00, $00, $00
|1DFACB| dw   8,   0 : db $E8, $40, $00, $00
|1DFAD3| dw   8,   7 : db $F8, $40, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_TalkingTree:
|1DFADB| LDA.w $0DC0,X
|1DFADE| DEC A
|1DFADF| BMI .exit

|1DFAE1| ASL A ; x32
|1DFAE2| ASL A
|1DFAE3| ASL A
|1DFAE4| ASL A
|1DFAE5| ASL A

|1DFAE6| ADC.b #<.oam_groups
|1DFAE8| STA.b $08

|1DFAEA| LDA.b #>.oam_groups
|1DFAEC| ADC.b #$00
|1DFAEE| STA.b $09

|1DFAF0| LDA.b #$04
|1DFAF2| STA.b $06
|1DFAF4| STZ.b $07

|1DFAF6| JSL TabulatedSpriteDraw.player_deferred

.exit
|1DFAFA| RTS

;===================================================================================================

pool TalkingTree_Eye

.offset_x
|1DFAFB| db  9, -9

.offset_y
|1DFAFD| db  0, -1

; these all bleed into each other
.pupil_offset_x_low
|1DFAFF| db -2, -1,  0,  1,  2

.pupil_offset_x_high
|1DFB04| db -1

.pupil_offset_y
|1DFB05| db -1,  0,  0,  0, -1

endpool

;---------------------------------------------------------------------------------------------------

TalkingTree_Eye:
|1DFB0A| JSL SpriteDraw_SingleSmall_long
|1DFB0E| JSR CheckIfActive_bank1D

|1DFB11| LDY.w $0EB0,X

|1DFB14| LDA.w $0D90,X
|1DFB17| CLC
|1DFB18| ADC.w .offset_x,Y
|1DFB1B| STA.w $0D10,X

|1DFB1E| LDA.w $0DA0,X
|1DFB21| ADC.w .offset_y,Y
|1DFB24| STA.w $0D30,X

|1DFB27| LDA.w $0DB0,X
|1DFB2A| STA.w $0D00,X

|1DFB2D| LDA.w $0E90,X
|1DFB30| STA.w $0D20,X

;---------------------------------------------------------------------------------------------------

|1DFB33| LDA.b #$02
|1DFB35| JSL ProjectSpriteSpeedTowardsLink_long

|1DFB39| LDA.b $00
|1DFB3B| BMI .use_x

;---------------------------------------------------------------------------------------------------

.use_y
|1DFB3D| LDA.b $01
|1DFB3F| CLC
|1DFB40| ADC.b #$02
|1DFB42| STA.w $0DE0,X

|1DFB45| BRA .use_offset

;---------------------------------------------------------------------------------------------------

.use_x
|1DFB47| LDA.w $0DE0,X
|1DFB4A| CMP.b #$02
|1DFB4C| BEQ .use_offset

|1DFB4E| ROL A
|1DFB4F| AND.b #$01
|1DFB51| TAY

|1DFB52| LDA.w $0DE0,X
|1DFB55| CLC
|1DFB56| ADC.w Shakeyshake.low,Y
|1DFB59| STA.w $0DE0,X

;---------------------------------------------------------------------------------------------------

.use_offset
|1DFB5C| LDY.w $0DE0,X

|1DFB5F| LDA.w $0D90,X
|1DFB62| CLC
|1DFB63| ADC.w .pupil_offset_x_low,Y
|1DFB66| STA.w $0D10,X

|1DFB69| LDA.w $0DA0,X
|1DFB6C| ADC.w .pupil_offset_x_high,Y
|1DFB6F| STA.w $0D30,X

|1DFB72| LDA.w $0DB0,X
|1DFB75| CLC
|1DFB76| ADC.w .pupil_offset_y,Y
|1DFB79| STA.w $0D00,X

|1DFB7C| LDA.w $0E90,X
|1DFB7F| ADC.w .pupil_offset_y,Y
|1DFB82| STA.w $0D20,X

|1DFB85| RTS

;===================================================================================================

pool SpritePrep_TalkingTree_SpawnEyeball

.offset_x_low
|1DFB86| db -4, 14

.offset_x_high
|1DFB88| db -1,  0

endpool

;---------------------------------------------------------------------------------------------------

SpritePrep_TalkingTree_SpawnEyeball:
|1DFB8A| PHX
|1DFB8B| PHA

|1DFB8C| LDA.b #$25 ; SPRITE 25
|1DFB8E| JSL SpawnSpriteDynamically

; No BMI = tree warp
|1DFB92| PLA
|1DFB93| STA.w $0EB0,Y

|1DFB96| TAX

|1DFB97| LDA.b $00
|1DFB99| CLC
|1DFB9A| ADC.l .offset_x_low,X
|1DFB9E| STA.w $0D10,Y
|1DFBA1| STA.w $0D90,Y

|1DFBA4| LDA.b $01
|1DFBA6| ADC.l .offset_x_high,X
|1DFBAA| STA.w $0D30,Y
|1DFBAD| STA.w $0DA0,Y

|1DFBB0| LDA.b $02
|1DFBB2| CLC
|1DFBB3| ADC.b #$F5
|1DFBB5| STA.w $0D00,Y
|1DFBB8| STA.w $0DB0,Y

|1DFBBB| LDA.b $03
|1DFBBD| ADC.b #$FF
|1DFBBF| STA.w $0D20,Y
|1DFBC2| STA.w $0E90,Y

|1DFBC5| LDA.b #$01
|1DFBC7| STA.w $0E80,Y

|1DFBCA| PLX

|1DFBCB| RTL

;===================================================================================================

pool RupeePull_SpawnPrize

.speed_x
|1DFBCC| db -18, -12,  12,  18

.speed_y
|1DFBD0| db  16,  24,  24,  16

.rupee_type
|1DFBD4| db $D9 ; SPRITE D9 - green rupee
|1DFBD5| db $DA ; SPRITE DA - blue rupee
|1DFBD6| db $DB ; SPRITE DB - red rupee

endpool

;---------------------------------------------------------------------------------------------------

RupeePull_SpawnPrize:
|1DFBD7| PHB
|1DFBD8| PHK
|1DFBD9| PLB

; zero kills => nothing
|1DFBDA| LDA.w $0CFB
|1DFBDD| BEQ .exit

|1DFBDF| LDY.b #$00
|1DFBE1| CMP.b #$04
|1DFBE3| BCC .fewer_than_four

|1DFBE5| INY
|1DFBE6| LDA.w $0CFC
|1DFBE9| BNE .fewer_than_four

|1DFBEB| INY

;---------------------------------------------------------------------------------------------------

.fewer_than_four
|1DFBEC| LDA.b #$03
|1DFBEE| STA.w $0FB5

|1DFBF1| STY.w $0FB6

;---------------------------------------------------------------------------------------------------

.next_rupee
|1DFBF4| LDY.w $0FB6
|1DFBF7| LDA.w .rupee_type,Y

|1DFBFA| JSL SpawnSpriteDynamically
|1DFBFE| BMI .exit

|1DFC00| LDA.b #$30 ; SFX3.30
|1DFC02| JSL QueueSpriteSFX3WithPan

|1DFC06| JSL SetSpawnedSpriteCoordinates

|1DFC0A| PHX

|1DFC0B| LDX.w $0FB5

|1DFC0E| LDA.w .speed_x,X
|1DFC11| STA.w $0D50,Y

|1DFC14| LDA.w .speed_y,X
|1DFC17| STA.w $0D40,Y

|1DFC1A| PLX

|1DFC1B| LDA.b #$FF
|1DFC1D| STA.w $0B58,Y

|1DFC20| LDA.b #$20
|1DFC22| STA.w $0F10,Y
|1DFC25| STA.w $0EE0,Y
|1DFC28| STA.w $0F80,Y

|1DFC2B| DEC.w $0FB5
|1DFC2E| BPL .next_rupee

;---------------------------------------------------------------------------------------------------

; reset counters
.exit
|1DFC30| STZ.w $0CFB
|1DFC33| STZ.w $0CFC

|1DFC36| PLB

|1DFC37| RTL

;===================================================================================================

Sprite_D5_DiggingGameGuy:
|1DFC38| JSR SpriteDraw_DiggingGameGuy
|1DFC3B| JSR CheckIfActive_bank1D
|1DFC3E| JSL BehaveAsBarrier
|1DFC42| JSR MoveSpriteXY_bank1D

|1DFC45| STZ.w $0D50,X

|1DFC48| LDA.w $0D80,X
|1DFC4B| JSL JumpTableLocal
|1DFC4F| dw DiggingGameGuy_Idle
|1DFC51| dw DiggingGameGuy_OfferGame
|1DFC53| dw DiggingGameGuy_UnblockEntrance
|1DFC55| dw DiggingGameGuy_SetTimer
|1DFC57| dw DiggingGameGuy_Proctor
|1DFC59| dw DiggingGameGuy_ThankYouComeAgain

;===================================================================================================

DiggingGameGuy_Idle:
|1DFC5B| LDA.w $0D00,X
|1DFC5E| CLC
|1DFC5F| ADC.b #$07
|1DFC61| CMP.b $20
|1DFC63| BCS .exit

; Have to talk to him from below
|1DFC65| JSR GetDirectionTowardsLink_bank1D

|1DFC68| CPY.b #$02
|1DFC6A| BNE .exit

;---------------------------------------------------------------------------------------------------

|1DFC6C| LDA.l $7EF3CC
|1DFC70| BNE .no_followers_allowed

|1DFC72| LDA.b #$85 ; MESSAGE 0185
|1DFC74| LDY.b #$01
|1DFC76| JSL ShowSolicitedMessage
|1DFC7A| BCC .exit

|1DFC7C| INC.w $0D80,X

;---------------------------------------------------------------------------------------------------

.exit
|1DFC7F| RTS

;---------------------------------------------------------------------------------------------------

.no_followers_allowed
|1DFC80| LDA.b #$8A ; MESSAGE 018A
|1DFC82| LDY.b #$01
|1DFC84| JSL ShowSolicitedMessage

|1DFC88| RTS

;===================================================================================================

DiggingGameGuy_OfferGame:
; In this case, you reject him.
|1DFC89| LDA.w $1CE8
|1DFC8C| BNE .rejected

|1DFC8E| REP #$20

; In this case, he rejects you.
; For being too poor.
|1DFC90| LDA.l $7EF360
|1DFC94| CMP.w #$0050 ; 80 rupees
|1DFC97| BCC .rejected

; They didn't need a CMP.
; Could have done the test with SBC.
; Would need to do REP #$21 : SBC.w #$004F though.
; So that the state of the carry is guaranteed.
|1DFC99| SBC.w #$0050 ; take 80 rupees
|1DFC9C| STA.l $7EF360

|1DFCA0| SEP #$30

|1DFCA2| LDA.b #$86 ; MESSAGE 0186
|1DFCA4| LDY.b #$01
|1DFCA6| JSL ShowMessageUnconditional

|1DFCAA| INC.w $0D80,X

|1DFCAD| LDA.b #$01
|1DFCAF| STA.w $0DC0,X

|1DFCB2| LDA.b #$50
|1DFCB4| STA.w $0DF0,X

|1DFCB7| LDA.b #$00
|1DFCB9| STA.l $7FFE00
|1DFCBD| STA.l $7FFE01

|1DFCC1| LDA.b #$05
|1DFCC3| STA.w $0E00,X

|1DFCC6| LDA.b #$01
|1DFCC8| JSL PrepAndSetForcedYItem

|1DFCCC| LDA.b #$0E ; SONG 0E
|1DFCCE| STA.w $012C

|1DFCD1| RTS

;---------------------------------------------------------------------------------------------------

.rejected
|1DFCD2| SEP #$30

|1DFCD4| LDA.b #$87 ; MESSAGE 0187
|1DFCD6| LDY.b #$01
|1DFCD8| JSL ShowMessageUnconditional

|1DFCDC| STZ.w $0D80,X

|1DFCDF| RTS

;===================================================================================================

DiggingGameGuy_UnblockEntrance:
|1DFCE0| LDA.w $0DF0,X
|1DFCE3| BNE .shimmy

|1DFCE5| INC.w $0D80,X

|1DFCE8| LDA.b #$01
|1DFCEA| STA.w $0DC0,X

|1DFCED| RTS

;---------------------------------------------------------------------------------------------------

.shimmy
|1DFCEE| LDA.w $0E00,X
|1DFCF1| BNE .exit

|1DFCF3| LDA.w $0DC0,X
|1DFCF6| EOR.b #$03
|1DFCF8| STA.w $0DC0,X

|1DFCFB| AND.b #$01
|1DFCFD| BEQ .dont_move_yet

|1DFCFF| LDA.b #$F0
|1DFD01| STA.w $0D50,X

;---------------------------------------------------------------------------------------------------

.dont_move_yet
|1DFD04| LDA.b #$05
|1DFD06| STA.w $0E00,X

.exit
|1DFD09| RTS

;===================================================================================================

DiggingGameGuy_SetTimer:
|1DFD0A| INC.w $0D80,X

|1DFD0D| LDA.b #$00
|1DFD0F| STA.w $04B5

|1DFD12| LDA.b #$1E
|1DFD14| STA.w $04B4

|1DFD17| RTS

;===================================================================================================

DiggingGameGuy_Proctor:
|1DFD18| LDA.w $04B4
|1DFD1B| BEQ .times_up
|1DFD1D| BMI .times_up

|1DFD1F| RTS

.times_up
; let Link finish shovelling
|1DFD20| LDA.w $037A
|1DFD23| AND.b #$01
|1DFD25| BNE .exit

|1DFD27| LDA.b #$09 ; SONG 09
|1DFD29| STA.w $012C

|1DFD2C| INC.w $0D80,X

|1DFD2F| STZ.w $03FC

|1DFD32| LDA.b #$88 ; MESSAGE 0188
|1DFD34| STA.w $1CF0

|1DFD37| LDA.b #$01
|1DFD39| JSR ShowMessageMinimal_bank1D

|1DFD3C| LDA.b #$FE
|1DFD3E| STA.w $04B4

.exit
|1DFD41| RTS

;===================================================================================================

DiggingGameGuy_ThankYouComeAgain:
|1DFD42| LDA.b #$89 ; MESSAGE 0189
|1DFD44| LDY.b #$01
|1DFD46| JSL ShowSolicitedMessage

|1DFD4A| RTS

;===================================================================================================

SpawnDiggingGamePrize:
|1DFD4B| PHB
|1DFD4C| PHK
|1DFD4D| PLB

|1DFD4E| LDA.l $7FFE01
|1DFD52| INC A
|1DFD53| STA.l $7FFE01

|1DFD57| JSR .main

|1DFD5A| PLB

|1DFD5B| RTL

;---------------------------------------------------------------------------------------------------

.main
|1DFD5C| REP #$20

; make sure you're in the field
|1DFD5E| LDA.b $20
|1DFD60| CMP.w #$0B18

|1DFD63| SEP #$30
|1DFD65| BCS DiggingGamePrize_Nothing

|1DFD67| JSL GetRandomNumber
|1DFD6B| AND.b #$07
|1DFD6D| TAY

|1DFD6E| JSL JumpTableLocal
|1DFD72| dw DiggingGamePrize_CompensationPrize
|1DFD74| dw DiggingGamePrize_CompensationPrize
|1DFD76| dw DiggingGamePrize_CompensationPrize
|1DFD78| dw DiggingGamePrize_CompensationPrize
|1DFD7A| dw DiggingGamePrize_GrandPrize
|1DFD7C| dw DiggingGamePrize_Nothing
|1DFD7E| dw DiggingGamePrize_Nothing
|1DFD80| dw DiggingGamePrize_Nothing

;===================================================================================================

DiggingGamePrize_Speed:
|1DFD82| db -16,  16

DiggingGamePrize_Offset_X:
|1DFD84| db $00, $13

CompensationPrizeTable:
|1DFD86| db $DB ; SPRITE DB - red rupee
|1DFD87| db $DA ; SPRITE DA - blue rupee
|1DFD88| db $D9 ; SPRITE D9 - green rupee
|1DFD89| db $DF ; SPRITE DF - small magc

;---------------------------------------------------------------------------------------------------

DiggingGamePrize_CompensationPrize:
|1DFD8A| LDA.w CompensationPrizeTable,Y
|1DFD8D| BRA .spawn_prize

;---------------------------------------------------------------------------------------------------

#DiggingGamePrize_Nothing:
|1DFD8F| RTS

;---------------------------------------------------------------------------------------------------

#DiggingGamePrize_GrandPrize:
; 25 digs
|1DFD90| LDA.l $7FFE01
|1DFD94| CMP.b #$19
|1DFD96| BCC DiggingGamePrize_Nothing

; make sure it hasn't already been obtained
|1DFD98| LDA.l $7FFE00
|1DFD9C| BNE DiggingGamePrize_Nothing

; and you still only have a 1/4 shot at it
|1DFD9E| JSL GetRandomNumber
|1DFDA2| AND.b #$03
|1DFDA4| BNE DiggingGamePrize_Nothing

|1DFDA6| LDA.b #$EB
|1DFDA8| STA.l $7FFE00

;---------------------------------------------------------------------------------------------------

.spawn_prize
|1DFDAC| JSL SpawnSpriteDynamically

|1DFDB0| LDX.b #$00

|1DFDB2| LDA.b $2F
|1DFDB4| CMP.b #$04
|1DFDB6| BEQ .facing_left

|1DFDB8| INX

.facing_left
|1DFDB9| LDA.w DiggingGamePrize_Speed,X
|1DFDBC| STA.w $0D50,Y

|1DFDBF| LDA.b #$00
|1DFDC1| STA.w $0D40,Y

|1DFDC4| LDA.b #$18
|1DFDC6| STA.w $0F80,Y

|1DFDC9| LDA.b #$FF
|1DFDCB| STA.w $0B58,Y

|1DFDCE| LDA.b #$30
|1DFDD0| STA.w $0F10,Y

|1DFDD3| LDA.b $22
|1DFDD5| CLC
|1DFDD6| ADC.w DiggingGamePrize_Offset_X,X
|1DFDD9| AND.b #$F0
|1DFDDB| STA.w $0D10,Y

|1DFDDE| LDA.b $23
|1DFDE0| ADC.b #$00
|1DFDE2| STA.w $0D30,Y

|1DFDE5| LDA.b $20
|1DFDE7| CLC
|1DFDE8| ADC.b #$16
|1DFDEA| AND.b #$F0
|1DFDEC| STA.w $0D00,Y

|1DFDEF| LDA.b $21
|1DFDF1| ADC.b #$00
|1DFDF3| STA.w $0D20,Y

|1DFDF6| LDA.b #$00
|1DFDF8| STA.w $0F20,Y

|1DFDFB| TYX

|1DFDFC| LDA.b #$30 ; SFX3.30
|1DFDFE| JSL QueueSpriteSFX3WithPan

|1DFE02| RTS

;===================================================================================================

pool SpriteDraw_DiggingGameGuy

.oam_groups
; group00
|1DFE03| dw   0,  -8 : db $40, $0A, $00, $02
|1DFE0B| dw   4,   9 : db $56, $0C, $00, $00
|1DFE13| dw   0,   0 : db $42, $0A, $00, $02

; group01
|1DFE1B| dw   0,  -8 : db $40, $0A, $00, $02
|1DFE23| dw   0,   0 : db $42, $0A, $00, $02
|1DFE2B| dw   0,   0 : db $42, $0A, $00, $02

; group02
|1DFE33| dw  -1,  -7 : db $40, $0A, $00, $02
|1DFE3B| dw  -1,   0 : db $44, $0A, $00, $02
|1DFE43| dw  -1,   0 : db $44, $0A, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_DiggingGameGuy:
|1DFE4B| LDA.b #$03
|1DFE4D| STA.b $06
|1DFE4F| STZ.b $07

|1DFE51| LDA.w $0DC0,X
|1DFE54| ASL A ; x2
|1DFE55| ADC.w $0DC0,X ; +1 for x3

|1DFE58| ASL A ; x8 for x24 total
|1DFE59| ASL A
|1DFE5A| ASL A

|1DFE5B| ADC.b #<.oam_groups
|1DFE5D| STA.b $08

|1DFE5F| LDA.b #>.oam_groups
|1DFE61| ADC.b #$00
|1DFE63| STA.b $09

|1DFE65| JSL TabulatedSpriteDraw.player_deferred
|1DFE69| JSL DrawSpriteShadow_long

|1DFE6D| RTS

;===================================================================================================

pool SpriteDraw_OldMan

.oam_groups_static
|1DFE6E| dw   0,   0 : db $AC, $00, $00, $02
|1DFE76| dw   0,   8 : db $AE, $00, $00, $02

;---------------------------------------------------------------------------------------------------

.oam_groups_dynamic
; group00
|1DFE7E| dw   0,   0 : db $20, $01, $00, $02
|1DFE86| dw   0,   8 : db $22, $01, $00, $02

; group01
|1DFE8E| dw   0,   1 : db $20, $01, $00, $02
|1DFE96| dw   0,   9 : db $22, $41, $00, $02

; group02
|1DFE9E| dw   0,   0 : db $20, $01, $00, $02
|1DFEA6| dw   0,   8 : db $22, $01, $00, $02

; group03
|1DFEAE| dw   0,   1 : db $20, $01, $00, $02
|1DFEB6| dw   0,   9 : db $22, $41, $00, $02

; group04
|1DFEBE| dw  -2,   0 : db $20, $01, $00, $02
|1DFEC6| dw   0,   8 : db $22, $01, $00, $02

; group05
|1DFECE| dw  -2,   1 : db $20, $01, $00, $02
|1DFED6| dw   0,   9 : db $22, $01, $00, $02

; group06
|1DFEDE| dw   2,   0 : db $20, $41, $00, $02
|1DFEE6| dw   0,   8 : db $22, $41, $00, $02

; group07
|1DFEEE| dw   2,   1 : db $20, $41, $00, $02
|1DFEF6| dw   0,   9 : db $22, $41, $00, $02

;---------------------------------------------------------------------------------------------------

; used to load follower graphics when old man is lost
.follower_gfx_offset
|1DFEFE| db $20, $C0
|1DFF00| db $20, $C0
|1DFF02| db $00, $A0
|1DFF04| db $00, $A0
|1DFF06| db $40, $80
|1DFF08| db $40, $60
|1DFF0A| db $40, $80
|1DFF0C| db $40, $60

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_OldMan:
|1DFF0E| PHB
|1DFF0F| PHK
|1DFF10| PLB

|1DFF11| LDA.w $0E80,X
|1DFF14| CMP.b #$02
|1DFF16| BEQ .draw_static

|1DFF18| LDA.b #$02
|1DFF1A| STA.b $06
|1DFF1C| STZ.b $07

|1DFF1E| LDA.w $0DE0,X
|1DFF21| ASL A

|1DFF22| ADC.w $0DC0,X
|1DFF25| ASL A
|1DFF26| TAY

|1DFF27| LDA.w .follower_gfx_offset+0,Y
|1DFF2A| STA.w $0AE8

|1DFF2D| LDA.w .follower_gfx_offset+1,Y
|1DFF30| STA.w $0AEA

|1DFF33| TYA
|1DFF34| ASL A ; x8
|1DFF35| ASL A
|1DFF36| ASL A
|1DFF37| ADC.b #<.oam_groups_dynamic
|1DFF39| STA.b $08

|1DFF3B| LDA.b #>.oam_groups_dynamic
|1DFF3D| ADC.b #$00
|1DFF3F| STA.b $09

|1DFF41| JSL TabulatedSpriteDraw.player_deferred

|1DFF45| PLB

|1DFF46| RTL

;---------------------------------------------------------------------------------------------------

.draw_static
|1DFF47| LDA.b #$02
|1DFF49| STA.b $06
|1DFF4B| STZ.b $07

|1DFF4D| LDA.b #<.oam_groups_static
|1DFF4F| STA.b $08

|1DFF51| LDA.b #>.oam_groups_static
|1DFF53| STA.b $09

|1DFF55| JSL TabulatedSpriteDraw.player_deferred

|1DFF59| PLB

|1DFF5A| RTL

;===================================================================================================

SpriteModule_Burn:
|1DFF5B| PHB
|1DFF5C| PHK
|1DFF5D| PLB

|1DFF5E| STZ.w $0EF0,X

|1DFF61| LDA.w $0DF0,X
|1DFF64| DEC A
|1DFF65| BNE .burning_in_agony

|1DFF67| JSL MeetYourDemise_long

|1DFF6B| PLB

|1DFF6C| RTL

;---------------------------------------------------------------------------------------------------

.burning_in_agony
|1DFF6D| LDY.w $0DC0,X

|1DFF70| PHY

|1DFF71| LSR A
|1DFF72| LSR A
|1DFF73| LSR A

|1DFF74| PHX

|1DFF75| TAX
|1DFF76| LDA.l LingeringFlameDrawStep,X

|1DFF7A| PLX

|1DFF7B| STA.w $0DC0,X

|1DFF7E| LDA.w $0F50,X
|1DFF81| PHA

|1DFF82| LDA.b #$03
|1DFF84| STA.w $0F50,X

|1DFF87| JSL SpriteDraw_Flame

|1DFF8B| PLA
|1DFF8C| STA.w $0F50,X

|1DFF8F| PLA
|1DFF90| STA.w $0DC0,X

|1DFF93| REP #$20

|1DFF95| LDA.b $90
|1DFF97| CLC
|1DFF98| ADC.w #$0008
|1DFF9B| STA.b $90

|1DFF9D| INC.b $92
|1DFF9F| INC.b $92

|1DFFA1| SEP #$20

|1DFFA3| LDA.w $0DF0,X
|1DFFA6| CMP.b #$10
|1DFFA8| BCC .stop_drawing_sprite

|1DFFAA| LDA.w $0E40,X
|1DFFAD| PHA

|1DFFAE| DEC A
|1DFFAF| DEC A
|1DFFB0| STA.w $0E40,X

|1DFFB3| JSL SpriteModule_Active_long

|1DFFB7| PLA
|1DFFB8| STA.w $0E40,X

;---------------------------------------------------------------------------------------------------

.stop_drawing_sprite
|1DFFBB| PLB

|1DFFBC| RTL

;===================================================================================================

pool SpriteDraw_Falling

.char
|1DFFBD| db $83, $83, $83, $80
|1DFFC1| db $80, $80, $B7, $B7

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Falling:
|1DFFC5| PHB
|1DFFC6| PHK
|1DFFC7| PLB

|1DFFC8| LDA.b $00
|1DFFCA| CLC
|1DFFCB| ADC.b #$04
|1DFFCD| STA.b ($90),Y

|1DFFCF| LDA.b $02
|1DFFD1| CLC
|1DFFD2| ADC.b #$04
|1DFFD4| INY
|1DFFD5| STA.b ($90),Y

|1DFFD7| LDA.w $0DF0,X
|1DFFDA| LSR A
|1DFFDB| LSR A

|1DFFDC| PHX

|1DFFDD| TAX
|1DFFDE| LDA.w .char,X

|1DFFE1| INY
|1DFFE2| STA.b ($90),Y

|1DFFE4| LDA.b $05
|1DFFE6| AND.b #$30
|1DFFE8| ORA.b #$04
|1DFFEA| INY
|1DFFEB| STA.b ($90),Y

|1DFFED| PLX

|1DFFEE| LDY.b #$00
|1DFFF0| LDA.b #$00
|1DFFF2| JSL CorrectOAMEntries_long

|1DFFF6| PLB

|1DFFF7| RTL

;===================================================================================================
; FREE ROM: 0x08
;===================================================================================================
NULL_1DFFF8:
|1DFFF8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

;===================================================================================================
; There are 133 NOPs in this game's code.
; 70 of them are in this bank.
;===================================================================================================
org $1D8000

;===================================================================================================

pool Sprite_ApplyConveyor

.shake_x
#_1D8000: db  1, -1

.shake_y
#_1D8002: db  0, -1

.speed_y_high ; bleeds for 2 more values
#_1D8004: db -1,  0

.speed_x_low ; bleeds for 2 more values
#_1D8006: db  0,  0

.speed_y_low
#_1D8008: db -1,  1,  0,  0

.speed_x_high
#_1D800C: db  0,  0, -1,  0

pool off

;---------------------------------------------------------------------------------------------------

Sprite_ApplyConveyor:
#_1D8010: LDA.b $1A
#_1D8012: LSR A
#_1D8013: BCC .exit

#_1D8015: PHB
#_1D8016: PHK
#_1D8017: PLB

#_1D8018: LDA.w $0D10,X
#_1D801B: CLC
#_1D801C: ADC.w .speed_x_low-$68,Y
#_1D801F: STA.w $0D10,X

#_1D8022: LDA.w $0D30,X
#_1D8025: ADC.w .speed_x_high-$68,Y
#_1D8028: STA.w $0D30,X

#_1D802B: LDA.w $0D00,X
#_1D802E: CLC
#_1D802F: ADC.w .speed_y_low-$68,Y
#_1D8032: STA.w $0D00,X

#_1D8035: LDA.w $0D20,X
#_1D8038: ADC.w .speed_y_high-$68,Y
#_1D803B: STA.w $0D20,X

#_1D803E: PLB

.exit
#_1D803F: RTL

;===================================================================================================

Sprite_CreateDeflectedArrow:
#_1D8040: PHB
#_1D8041: PHK
#_1D8042: PLB

#_1D8043: PHY

#_1D8044: STZ.w $0C4A,X

#_1D8047: LDA.b #!SPRITE_1B
#_1D8049: JSL Sprite_SpawnDynamically
#_1D804D: BMI .no_space

#_1D804F: LDA.w $0C04,X
#_1D8052: STA.w $0D10,Y

#_1D8055: LDA.w $0C18,X
#_1D8058: STA.w $0D30,Y

#_1D805B: LDA.w $0BFA,X
#_1D805E: STA.w $0D00,Y

#_1D8061: LDA.w $0C0E,X
#_1D8064: STA.w $0D20,Y

#_1D8067: LDA.b #$06
#_1D8069: STA.w $0DD0,Y

#_1D806C: LDA.b #$1F
#_1D806E: STA.w $0DF0,Y

#_1D8071: LDA.w $0C2C,X
#_1D8074: STA.w $0D50,Y

#_1D8077: LDA.w $0C22,X
#_1D807A: STA.w $0D40,Y

#_1D807D: LDA.b $EE
#_1D807F: STA.w $0F20,Y

#_1D8082: PHX

#_1D8083: TYX
#_1D8084: JSL Sprite_PlaceRepulseSpark

#_1D8088: PLX

.no_space
#_1D8089: PLY

#_1D808A: PLB

#_1D808B: RTL

;===================================================================================================

Sprite_Move_XY_Bank1D_long:
#_1D808C: PHB
#_1D808D: PHK
#_1D808E: PLB

#_1D808F: JSR Sprite_Move_XY_Bank1D

#_1D8092: PLB

#_1D8093: RTL

;===================================================================================================

Sprite_CheckTileCollision_Bank1D:
#_1D8094: JSL Sprite_CheckTileCollision_long

#_1D8098: RTS

;===================================================================================================

Sprite_D4_Landmine:
#_1D8099: JSR SpriteDraw_Landmine
#_1D809C: JSR Sprite_CheckIfActive_Bank1D

#_1D809F: JSL Landmine_CheckHammer
#_1D80A3: BCS Landmine_Explode

#_1D80A5: LDA.w $0DF0,X
#_1D80A8: BNE Landmine_Detonating

#_1D80AA: LDA.b #$04
#_1D80AC: STA.w $0F50,X

#_1D80AF: JSL Sprite_CheckDamageToLink_long
#_1D80B3: BCC .exit

#_1D80B5: LDA.b #$08
#_1D80B7: STA.w $0DF0,X

.exit
#_1D80BA: RTS

;===================================================================================================

Landmine_Palettes:
#_1D80BB: db $04, $02, $08, $02

;===================================================================================================

Landmine_Detonating:
#_1D80BF: CMP.b #$01
#_1D80C1: BNE LandMine_Flash

;---------------------------------------------------------------------------------------------------

Landmine_Explode:
#_1D80C3: STZ.w $0DD0,X

#_1D80C6: JSR Sprite_SpawnBomb
#_1D80C9: BMI .exit

#_1D80CB: LDA.b #$06
#_1D80CD: STA.w $0DD0,Y

#_1D80D0: LDA.b #$02
#_1D80D2: STA.w $0DB0,Y
#_1D80D5: STA.w $0F50,Y

#_1D80D8: LDA.b #$09
#_1D80DA: STA.w $0F60,Y

#_1D80DD: LDA.b #$1F
#_1D80DF: STA.w $0E00,Y

#_1D80E2: LDA.b #$03
#_1D80E4: STA.w $0E40,Y

#_1D80E7: JSL Sprite_CalculateSFXPan
#_1D80EB: ORA.b #!SFX2_0C
#_1D80ED: STA.w $012E

.exit
#_1D80F0: RTS

;===================================================================================================

LandMine_Flash:
#_1D80F1: LSR A
#_1D80F2: AND.b #$03
#_1D80F4: TAY

#_1D80F5: LDA.w Landmine_Palettes,Y
#_1D80F8: STA.w $0F50,X

#_1D80FB: RTS

;===================================================================================================

pool SpriteDraw_Landmine

.oam_groups
#_1D80FC: dw   0,   4 : db $70, $00, $00, $00
#_1D8104: dw   8,   4 : db $70, $40, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Landmine:
#_1D810C: LDA.b #$08
#_1D810E: JSL OAM_AllocateFromRegionB

#_1D8112: LDA.w $0FC6
#_1D8115: CMP.b #$03
#_1D8117: BCS .bad_gfx

#_1D8119: REP #$20

#_1D811B: LDA.w #.oam_groups
#_1D811E: STA.b $08

#_1D8120: SEP #$20

#_1D8122: LDA.b #$02
#_1D8124: JSL Sprite_DrawMultiple

.bad_gfx
#_1D8128: RTS

;===================================================================================================

Sprite_D3_Stal:
#_1D8129: LDA.w $0FC6
#_1D812C: CMP.b #$03
#_1D812E: BCS .bad_gfx

#_1D8130: LDA.w $0D80,X
#_1D8133: BNE .ignore_overlap

#_1D8135: LDA.b #$04
#_1D8137: JSL OAM_AllocateFromRegionB

.ignore_overlap
#_1D813B: JSR SpriteDraw_Stal

.bad_gfx
#_1D813E: JSR Sprite_CheckIfActive_Bank1D
#_1D8141: JSR Sprite_CheckIfRecoiling_Bank1D

#_1D8144: LDA.w $0D80,X
#_1D8147: JSL JumpTableLocal
#_1D814B: dw Stal_Dormant
#_1D814D: dw Stal_Active

;===================================================================================================

Stal_Dormant:
#_1D814F: LDA.b #$01
#_1D8151: STA.w $0BA0,X

#_1D8154: JSL Sprite_CheckDamageToLink_same_layer_long
#_1D8158: BCC .still_inactive

#_1D815A: JSL Sprite_CancelHookshot
#_1D815E: JSL Sprite_RepelDash_long

#_1D8162: LDA.w $0DF0,X
#_1D8165: BNE .still_inactive

#_1D8167: LDA.b #$40
#_1D8169: STA.w $0DF0,X

#_1D816C: LDA.b #!SFX2_22
#_1D816E: JSL SpriteSFX_QueueSFX2WithPan

.still_inactive
#_1D8172: LDA.w $0DF0,X
#_1D8175: BEQ .exit

#_1D8177: DEC A
#_1D8178: BEQ .activated

#_1D817A: ORA.b #$40
#_1D817C: STA.w $0EF0,X

.exit
#_1D817F: RTS

.activated
#_1D8180: STZ.w $0BA0,X

#_1D8183: INC.w $0D80,X

#_1D8186: STZ.w $0EF0,X

#_1D8189: LDA.w $0E60,X
#_1D818C: AND.b #$BF
#_1D818E: STA.w $0E60,X

#_1D8191: ASL.w $0E40,X
#_1D8194: LSR.w $0E40,X

#_1D8197: RTS

;===================================================================================================

pool Stal_Active

.anim
#_1D8198: db $02, $02, $01, $00, $01

pool off

;---------------------------------------------------------------------------------------------------

Stal_Active:
#_1D819D: JSR Sprite_CheckDamageToAndFromLink_Bank1D
#_1D81A0: JSR Sprite_Move_XYZ_Bank1D
#_1D81A3: JSR Sprite_CheckTileCollision_Bank1D

#_1D81A6: DEC.w $0F80,X
#_1D81A9: DEC.w $0F80,X
#_1D81AC: LDA.w $0F70,X
#_1D81AF: BPL .in_air

#_1D81B1: STZ.w $0F70,X

#_1D81B4: LDA.b #$10
#_1D81B6: STA.w $0F80,X

#_1D81B9: LDA.b #$0C
#_1D81BB: JSL Sprite_ApplySpeedTowardsLink_long

.in_air
#_1D81BF: LDA.b $1A
#_1D81C1: AND.b #$03
#_1D81C3: BNE .skip_timer

#_1D81C5: INC.w $0E80,X

#_1D81C8: LDA.w $0E80,X
#_1D81CB: CMP.b #$05
#_1D81CD: BNE .skip_timer

#_1D81CF: STZ.w $0E80,X

.skip_timer
#_1D81D2: LDY.w $0E80,X
#_1D81D5: LDA.w .anim,Y
#_1D81D8: STA.w $0DC0,X

#_1D81DB: RTS

;===================================================================================================

pool SpriteDraw_Stal

.oam_groups
; group00
#_1D81DC: dw   0,   0 : db $44, $00, $00, $02
#_1D81E4: dw   4,  11 : db $70, $00, $00, $00

; group01
#_1D81EC: dw   0,   0 : db $44, $00, $00, $02
#_1D81F4: dw   4,  12 : db $70, $00, $00, $00

; group02
#_1D81FC: dw   0,   0 : db $44, $00, $00, $02
#_1D8204: dw   4,  13 : db $70, $00, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Stal:
#_1D820C: LDA.b #$00
#_1D820E: XBA
#_1D820F: LDA.w $0DC0,X

#_1D8212: REP #$20

#_1D8214: ASL A ; x16
#_1D8215: ASL A
#_1D8216: ASL A
#_1D8217: ASL A

#_1D8218: ADC.w #.oam_groups
#_1D821B: STA.b $08

#_1D821D: SEP #$20

#_1D821F: LDA.b #$02

#_1D8221: LDY.w $0D80,X
#_1D8224: BNE .active

#_1D8226: DEC A

.active
#_1D8227: JSL Sprite_DrawMultiple

#_1D822B: LDA.w $0D80,X
#_1D822E: BEQ .no_shadow

#_1D8230: JSL SpriteDraw_Shadow_long

.no_shadow
#_1D8234: RTS

;===================================================================================================

Sprite_D2_FloppingFish:
#_1D8235: LDA.w $0FC6
#_1D8238: CMP.b #$03
#_1D823A: BCS .bad_gfx

#_1D823C: JSR SpriteDraw_FloppingFish

.bad_gfx
#_1D823F: LDA.w $0DD0,X
#_1D8242: CMP.b #$0A
#_1D8244: BNE .not_held

#_1D8246: LDA.b #$04
#_1D8248: STA.w $0D80,X

#_1D824B: LDA.b $1A

#_1D824D: LSR A
#_1D824E: LSR A
#_1D824F: LSR A

#_1D8250: AND.b #$02
#_1D8252: LSR A
#_1D8253: ADC.b #$03

#_1D8255: STA.w $0DC0,X

;---------------------------------------------------------------------------------------------------

.not_held
#_1D8258: JSR Sprite_CheckIfActive_Bank1D

#_1D825B: LDA.w $0D80,X
#_1D825E: JSL JumpTableLocal
#_1D8262: dw FloppingFish_CheckForWaterInit
#_1D8264: dw FloppingFish_Flop
#_1D8266: dw FloppingFish_PrepareLeap
#_1D8268: dw FloppingFish_Leap
#_1D826A: dw FloppingFish_WriggleInHands

;===================================================================================================

FloppingFish_WriggleInHands:
#_1D826C: LDA.w $0F70,X
#_1D826F: BNE .in_air

#_1D8271: LDA.b #$01
#_1D8273: STA.w $0D80,X

.in_air
#_1D8276: JSR Sprite_Move_XY_Bank1D
#_1D8279: JSL ThrownSprite_TileAndSpriteInteraction_long

#_1D827D: RTS

;===================================================================================================

FloppingFish_PrepareLeap:
#_1D827E: LDA.w $0DF0,X
#_1D8281: BNE .exit

#_1D8283: INC.w $0D80,X

#_1D8286: LDA.b #$30
#_1D8288: STA.w $0F80,X

;===================================================================================================

#FloppingFish_SpawnSplash:
#_1D828B: JSL Sprite_SpawnSmallSplash

.exit
#_1D828F: RTS

;===================================================================================================

pool FloppingFish_Leap

.anim
#_1D8290: db $05, $05, $06, $06
#_1D8294: db $05, $05, $04, $04
#_1D8298: db $03, $07, $07, $08
#_1D829C: db $08, $07, $07, $08
#_1D82A0: db $08

pool off

;---------------------------------------------------------------------------------------------------

FloppingFish_Leap:
#_1D82A1: JSR Sprite_Move_Z_Bank1D

#_1D82A4: DEC.w $0F80,X
#_1D82A7: DEC.w $0F80,X
#_1D82AA: BNE .ascending

#_1D82AC: LDY.w $0D90,X
#_1D82AF: BEQ .ascending

; Message 0174
#_1D82B1: LDA.b #$74
#_1D82B3: STA.w $1CF0

#_1D82B6: LDA.b #$01
#_1D82B8: JSR Sprite_ShowMessageMinimal_bank1D

.ascending
#_1D82BB: LDA.w $0F70,X
#_1D82BE: BPL .in_air

#_1D82C0: STZ.w $0F70,X

#_1D82C3: JSR FloppingFish_SpawnSplash

#_1D82C6: LDA.w $0D90,X
#_1D82C9: BEQ .no_rupees

#_1D82CB: LDA.b #!SPRITE_DB
#_1D82CD: JSL Sprite_SpawnDynamically
#_1D82D1: BMI .no_rupees

;---------------------------------------------------------------------------------------------------

#_1D82D3: JSL Sprite_SetSpawnedCoordinates

#_1D82D7: LDA.b $00
#_1D82D9: CLC
#_1D82DA: ADC.b #$04
#_1D82DC: STA.w $0D10,Y

#_1D82DF: LDA.b $01
#_1D82E1: ADC.b #$00
#_1D82E3: STA.w $0D30,Y

#_1D82E6: LDA.b #$FF
#_1D82E8: STA.w $0B58,Y

#_1D82EB: LDA.b #$30
#_1D82ED: STA.w $0F80,Y
#_1D82F0: STA.w $0EE0,Y

#_1D82F3: PHX
#_1D82F4: TYX

#_1D82F5: LDA.b #$10
#_1D82F7: JSL Sprite_ApplySpeedTowardsLink_long

#_1D82FB: PLX

;---------------------------------------------------------------------------------------------------

.no_rupees
#_1D82FC: STZ.w $0DD0,X

.in_air
#_1D82FF: INC.w $0E80,X

#_1D8302: LDA.w $0E80,X
#_1D8305: LSR A
#_1D8306: LSR A
#_1D8307: TAY

#_1D8308: LDA.w .anim,Y
#_1D830B: STA.w $0DC0,X

#_1D830E: RTS

;===================================================================================================

FloppingFish_CheckForWaterInit:
#_1D830F: JSR Sprite_CheckTileCollision_Bank1D

#_1D8312: LDA.w $0FA5
#_1D8315: CMP.b #!TILETYPE_08
#_1D8317: BNE .not_water

#_1D8319: STZ.w $0DD0,X

#_1D831C: RTS

.not_water
#_1D831D: INC.w $0D80,X

#_1D8320: RTS

;===================================================================================================

pool FloppingFish_Flop

.speed_x
#_1D8321: db   0,  12,  16,  12,   0, -12, -16, -12

.speed_y
#_1D8329: db -16, -12,   0,  12,  16,  12,   0, -12

.boundary
#_1D8331: db 2, 0

.anim
#_1D8333: db $01, $05, $03

pool off

;---------------------------------------------------------------------------------------------------

FloppingFish_Flop:
#_1D8336: JSL Sprite_CheckIfLifted_permissive_long
#_1D833A: JSR Sprite_BounceFromTileCollision
#_1D833D: JSR Sprite_Move_XYZ_Bank1D

#_1D8340: DEC.w $0F80,X
#_1D8343: DEC.w $0F80,X

#_1D8346: LDA.w $0F70,X
#_1D8349: BPL .in_air

#_1D834B: STZ.w $0F70,X

#_1D834E: LDA.w $0FA5
#_1D8351: CMP.b #!TILETYPE_09
#_1D8353: BEQ .shallow_water

#_1D8355: CMP.b #!TILETYPE_08
#_1D8357: BNE .no_water

#_1D8359: STZ.w $0DD0,X

;---------------------------------------------------------------------------------------------------

.shallow_water
#_1D835C: JSR FloppingFish_SpawnSplash

.no_water
#_1D835F: JSL GetRandomNumber
#_1D8363: AND.b #$0F
#_1D8365: ADC.b #$10
#_1D8367: STA.w $0F80,X

#_1D836A: JSL GetRandomNumber
#_1D836E: AND.b #$07
#_1D8370: TAY

#_1D8371: LDA.w .speed_x,Y
#_1D8374: STA.w $0D50,X

#_1D8377: LDA.w .speed_y,Y
#_1D837A: STA.w $0D40,X

#_1D837D: INC.w $0DE0,X

#_1D8380: LDA.b #$03
#_1D8382: STA.w $0E80,X

;---------------------------------------------------------------------------------------------------

.in_air
#_1D8385: INC.w $0E80,X

#_1D8388: LDA.w $0E80,X
#_1D838B: AND.b #$07
#_1D838D: BNE .skip_shake

#_1D838F: LDA.w $0DE0,X
#_1D8392: AND.b #$01
#_1D8394: TAY

#_1D8395: LDA.w $0D90,X
#_1D8398: CMP.w .boundary,Y
#_1D839B: BEQ .skip_shake

#_1D839D: CLC
#_1D839E: ADC.w Sprite_ApplyConveyor_shake_x,Y
#_1D83A1: STA.w $0D90,X

;---------------------------------------------------------------------------------------------------

.skip_shake
#_1D83A4: LDA.b $1A
#_1D83A6: LSR A
#_1D83A7: LSR A
#_1D83A8: LSR A
#_1D83A9: AND.b #$01

#_1D83AB: LDY.w $0D90,X
#_1D83AE: CLC
#_1D83AF: ADC.w .anim,Y
#_1D83B2: STA.w $0DC0,X

#_1D83B5: RTS

;===================================================================================================

pool SpriteDraw_FloppingFish

.oam_groups_fish
; group00
#_1D83B6: dw  -4,   8 : db $5E, $04, $00, $00
#_1D83BE: dw   4,   8 : db $5F, $04, $00, $00

; group01
#_1D83C6: dw  -4,   8 : db $5E, $84, $00, $00
#_1D83CE: dw   4,   8 : db $5F, $84, $00, $00

; group02
#_1D83D6: dw  -4,   8 : db $5F, $44, $00, $00
#_1D83DE: dw   4,   8 : db $5E, $44, $00, $00

; group03
#_1D83E6: dw  -4,   8 : db $5F, $C4, $00, $00
#_1D83EE: dw   4,   8 : db $5E, $C4, $00, $00

; group04
#_1D83F6: dw   0,   0 : db $61, $04, $00, $00
#_1D83FE: dw   0,   8 : db $71, $04, $00, $00

; group05
#_1D8406: dw   0,   0 : db $61, $44, $00, $00
#_1D840E: dw   0,   8 : db $71, $44, $00, $00

; group06
#_1D8416: dw   0,   0 : db $71, $84, $00, $00
#_1D841E: dw   0,   8 : db $61, $84, $00, $00

; group07
#_1D8426: dw   0,   0 : db $71, $C4, $00, $00
#_1D842E: dw   0,   8 : db $61, $C4, $00, $00

;---------------------------------------------------------------------------------------------------

.oam_groups_shadow
; group00
#_1D8436: dw  -2,  11 : db $38, $04, $00, $00
#_1D843E: dw   0,  11 : db $38, $04, $00, $00
#_1D8446: dw   2,  11 : db $38, $04, $00, $00

; group01
#_1D844E: dw  -1,  11 : db $38, $04, $00, $00
#_1D8456: dw   0,  11 : db $38, $04, $00, $00
#_1D845E: dw   1,  11 : db $38, $04, $00, $00

; group02
#_1D8466: dw   0,  11 : db $38, $04, $00, $00
#_1D846E: dw   0,  11 : db $38, $04, $00, $00
#_1D8476: dw   0,  11 : db $38, $04, $00, $00

pool off

;===================================================================================================

DontDrawFloppingFish:
#_1D847E: JSL Sprite_PrepOAMCoord_long

#_1D8482: RTS

;---------------------------------------------------------------------------------------------------

SpriteDraw_FloppingFish:
#_1D8483: LDA.b #$00
#_1D8485: XBA
#_1D8486: LDA.w $0DC0,X
#_1D8489: BEQ DontDrawFloppingFish

#_1D848B: DEC A

#_1D848C: REP #$20

#_1D848E: ASL A ; x16
#_1D848F: ASL A
#_1D8490: ASL A
#_1D8491: ASL A

#_1D8492: ADC.w #.oam_groups_fish
#_1D8495: STA.b $08

#_1D8497: LDA.w $0FD8
#_1D849A: CLC
#_1D849B: ADC.w #$0004
#_1D849E: STA.w $0FD8

#_1D84A1: SEP #$20

#_1D84A3: LDA.b #$02
#_1D84A5: JSL Sprite_DrawMultiple

#_1D84A9: LDA.w $0FDA
#_1D84AC: CLC
#_1D84AD: ADC.w $0F70,X
#_1D84B0: STA.w $0FDA

#_1D84B3: LDA.w $0FDB
#_1D84B6: ADC.b #$00
#_1D84B8: STA.w $0FDB

#_1D84BB: LDA.b #$00
#_1D84BD: XBA

#_1D84BE: LDA.w $0F70,X
#_1D84C1: LSR A
#_1D84C2: LSR A
#_1D84C3: CMP.b #$02
#_1D84C5: BCC .shadow

;---------------------------------------------------------------------------------------------------

#_1D84C7: LDA.b #$02

.shadow
#_1D84C9: REP #$20

#_1D84CB: ASL A
#_1D84CC: ASL A
#_1D84CD: ASL A
#_1D84CE: STA.b $00

#_1D84D0: ASL A
#_1D84D1: ADC.b $00
#_1D84D3: ADC.w #.oam_groups_shadow
#_1D84D6: STA.b $08

#_1D84D8: LDA.b $90
#_1D84DA: CLC
#_1D84DB: ADC.w #$0008
#_1D84DE: STA.b $90

#_1D84E0: INC.b $92
#_1D84E2: INC.b $92

#_1D84E4: SEP #$20

#_1D84E6: LDA.b #$03
#_1D84E8: JSL Sprite_DrawMultiple
#_1D84EC: JSL Sprite_Get16BitCoords_long

#_1D84F0: RTS

;===================================================================================================

pool SpriteDraw_ChimneySmoke

.oam_groups
; group00
#_1D84F1: dw   0,   0 : db $86, $00, $00, $00
#_1D84F9: dw   8,   0 : db $87, $00, $00, $00
#_1D8501: dw   0,   8 : db $96, $00, $00, $00
#_1D8509: dw   8,   8 : db $97, $00, $00, $00

; group01
#_1D8511: dw   1,   1 : db $86, $00, $00, $00
#_1D8519: dw   7,   1 : db $87, $00, $00, $00
#_1D8521: dw   1,   7 : db $96, $00, $00, $00
#_1D8529: dw   7,   7 : db $97, $00, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_ChimneySmoke:
#_1D8531: LDA.b #$00
#_1D8533: XBA

#_1D8534: LDA.w $0DC0,X
#_1D8537: AND.b #$01

#_1D8539: REP #$20

#_1D853B: ASL A ; x32
#_1D853C: ASL A
#_1D853D: ASL A
#_1D853E: ASL A
#_1D853F: ASL A

#_1D8540: ADC.w #.oam_groups
#_1D8543: STA.b $08

#_1D8545: SEP #$20

#_1D8547: LDA.b #$04

;===================================================================================================

#Sprite_DrawMultiple_Bank1D:
#_1D8549: JSL Sprite_DrawMultiple

#_1D854D: RTS

;===================================================================================================

pool ChimneySmoke

.speed_target
#_1D854E: db  4, -4

pool off

;---------------------------------------------------------------------------------------------------

ChimneySmoke:
#_1D8550: LDA.b #$30
#_1D8552: STA.w $0B89,X

#_1D8555: JSR SpriteDraw_ChimneySmoke
#_1D8558: JSR Sprite_CheckIfActive_Bank1D
#_1D855B: JSR Sprite_Move_XY_Bank1D

#_1D855E: INC.w $0E80,X

#_1D8561: LDA.w $0E80,X
#_1D8564: AND.b #$07
#_1D8566: BNE .delay

#_1D8568: LDA.w $0DE0,X
#_1D856B: AND.b #$01
#_1D856D: TAY

#_1D856E: LDA.w $0D50,X
#_1D8571: CLC
#_1D8572: ADC.w Sprite_ApplyConveyor_shake_x,Y
#_1D8575: STA.w $0D50,X

#_1D8578: CMP.w .speed_target,Y
#_1D857B: BNE .delay

#_1D857D: INC.w $0DE0,X

.delay
#_1D8580: LDA.w $0E80,X
#_1D8583: AND.b #$1F
#_1D8585: BNE .exit

#_1D8587: INC.w $0DC0,X

.exit
#_1D858A: RTS

;===================================================================================================

Sprite_D1_BunnyBeam:
#_1D858B: LDA.b $1B
#_1D858D: BNE BunnyBeam

#_1D858F: LDA.b #$40
#_1D8591: STA.w $0E60,X
#_1D8594: STA.w $0BA0,X

#_1D8597: LDA.w $0D80,X
#_1D859A: BNE ChimneySmoke

;---------------------------------------------------------------------------------------------------

Chimney:
#_1D859C: JSR Sprite_CheckIfActive_Bank1D

#_1D859F: LDA.w $0DF0,X
#_1D85A2: BNE .exit

#_1D85A4: LDA.b #$43
#_1D85A6: STA.w $0DF0,X

#_1D85A9: LDA.b #!SPRITE_D1
#_1D85AB: JSL Sprite_SpawnDynamically
#_1D85AF: BMI .exit

#_1D85B1: JSL Sprite_SetSpawnedCoordinates

#_1D85B5: LDA.b $00
#_1D85B7: CLC
#_1D85B8: ADC.b #$08
#_1D85BA: STA.w $0D10,Y

#_1D85BD: LDA.b $02
#_1D85BF: ADC.b #$04
#_1D85C1: STA.w $0D00,Y

#_1D85C4: LDA.b #$04
#_1D85C6: STA.w $0F50,Y
#_1D85C9: STA.w $0D80,Y

#_1D85CC: LDA.b #$43
#_1D85CE: STA.w $0E40,Y
#_1D85D1: STA.w $0E60,Y

#_1D85D4: LDA.w ChimneySmoke_speed_target+1
#_1D85D7: STA.w $0D50,Y

#_1D85DA: LDA.b #$FA
#_1D85DC: STA.w $0D40,Y

.exit
#_1D85DF: RTS

;===================================================================================================

BunnyBeam:
#_1D85E0: LDA.w $0D80,X
#_1D85E3: BNE .active

#_1D85E5: JSL Sprite_PrepOAMCoord_long
#_1D85E9: JSR Sprite_CheckIfActive_Bank1D

; so bunny beams always exist
; but once collision is gone, they activate
#_1D85EC: JSR Sprite_CheckTileCollision_Bank1D
#_1D85EF: BNE .exit_a

#_1D85F1: INC.w $0D80,X

#_1D85F4: LDA.b #$80
#_1D85F6: STA.w $0DF0,X

.exit_a
#_1D85F9: RTS

;---------------------------------------------------------------------------------------------------

.char
#_1D85FA: db $D7, $D7, $D7, $91, $91, $91

;---------------------------------------------------------------------------------------------------

.active
#_1D8600: JSL SpriteDraw_Antfairy

#_1D8604: LDA.w $0F00,X
#_1D8607: BNE .paused

#_1D8609: LDY.w $0DC0,X
#_1D860C: LDA.w .char,Y
#_1D860F: STA.b $00

#_1D8611: LDY.b #$00

.next_object
#_1D8613: INY
#_1D8614: INY

#_1D8615: LDA.b $00
#_1D8617: STA.b ($90),Y

#_1D8619: INY

#_1D861A: LDA.b ($90),Y
#_1D861C: AND.b #$F0
#_1D861E: ORA.b #$02
#_1D8620: STA.b ($90),Y

#_1D8622: INY
#_1D8623: CPY.b #$14
#_1D8625: BCC .next_object

;---------------------------------------------------------------------------------------------------

.paused
#_1D8627: JSR Sprite_CheckIfActive_Bank1D

#_1D862A: LDA.w $0DF0,X
#_1D862D: BNE .exit_b

#_1D862F: LDA.b #$30
#_1D8631: STA.w $0CD2,X

#_1D8634: JSL Sprite_CheckDamageToLink_long
#_1D8638: BCC .no_hit

#_1D863A: STZ.w $0DD0,X

#_1D863D: LDA.b #$80 ; useless oops
#_1D863F: STZ.w $03F5

#_1D8642: LDA.b #$01
#_1D8644: STA.w $03F6

.no_hit
#_1D8647: LDA.b $EE
#_1D8649: CMP.w $0F20,X
#_1D864C: BNE .dont_chase

#_1D864E: LDA.b #$10
#_1D8650: JSL Sprite_ApplySpeedTowardsLink_long

.dont_chase
#_1D8654: JSR Sprite_Move_XY_Bank1D
#_1D8657: JSR Sprite_CheckTileCollision_Bank1D
#_1D865A: BEQ .exit_b

#_1D865C: STZ.w $0DD0,X

#_1D865F: JSL Sprite_SpawnPoofGarnish

#_1D8663: LDA.b #!SFX2_15
#_1D8665: JSL SpriteSFX_QueueSFX2WithPan

.exit_b
#_1D8669: RTS

;===================================================================================================

Sprite_D0_Lynel:
#_1D866A: JSR SpriteDraw_Lynel
#_1D866D: JSR Sprite_CheckIfActive_Bank1D
#_1D8670: JSR Sprite_CheckIfRecoiling_Bank1D

#_1D8673: JSR Sprite_DirectionToFaceLink_Bank1D
#_1D8676: TYA
#_1D8677: STA.w $0DE0,X

#_1D867A: JSR Sprite_CheckDamageToAndFromLink_Bank1D

#_1D867D: LDA.w $0D80,X
#_1D8680: JSL JumpTableLocal
#_1D8684: dw Lynel_TargetLink
#_1D8686: dw Lynel_ChaseLink
#_1D8688: dw Lynel_Fire

;===================================================================================================

pool Lynel_TargetLink

.offset_x_low ; bleeds into nect
#_1D868A: db -96,  96

.offset_y_high
#_1D868C: db   0,   0,  -1,   0

.offset_x_high
#_1D8690: db  -1,   0,   0,   0

.offset_y_low
#_1D8694: db   8,   8, -96, 112

pool off

;---------------------------------------------------------------------------------------------------

Lynel_TargetLink:
#_1D8698: LDA.w $0DF0,X
#_1D869B: BNE .delay

#_1D869D: LDY.w $0DE0,X

#_1D86A0: LDA.w .offset_x_low,Y
#_1D86A3: CLC
#_1D86A4: ADC.b $22
#_1D86A6: STA.w $0D90,X

#_1D86A9: LDA.w .offset_x_high,Y
#_1D86AC: ADC.b $23
#_1D86AE: STA.w $0DA0,X

#_1D86B1: LDA.w .offset_y_low,Y
#_1D86B4: CLC
#_1D86B5: ADC.b $20
#_1D86B7: STA.w $0DB0,X

#_1D86BA: LDA.w .offset_y_high,Y
#_1D86BD: ADC.b $21
#_1D86BF: STA.w $0E90,X

#_1D86C2: INC.w $0D80,X

#_1D86C5: LDA.b #$50
#_1D86C7: STA.w $0DF0,X

.delay
#_1D86CA: JMP.w Lynel_Animate

;===================================================================================================

pool Lynel_ChaseLink

.anim
#_1D86CD: db $03, $00, $06, $09
#_1D86D1: db $04, $01, $07, $0A

pool off

;---------------------------------------------------------------------------------------------------

Lynel_ChaseLink:
#_1D86D5: LDA.w $0DF0,X
#_1D86D8: BEQ .ready_to_fire

#_1D86DA: TXA
#_1D86DB: EOR.b $1A
#_1D86DD: AND.b #$03
#_1D86DF: BNE .dont_turn

#_1D86E1: JSR Sprite_AdjustAuxCoords_bank1D

#_1D86E4: REP #$20

#_1D86E6: LDA.b $04
#_1D86E8: SEC
#_1D86E9: SBC.w $0FD8
#_1D86EC: CLC
#_1D86ED: ADC.w #$0005

#_1D86F0: CMP.w #$000A
#_1D86F3: BCS .out_of_range

#_1D86F5: LDA.b $06
#_1D86F7: SEC
#_1D86F8: SBC.w $0FDA
#_1D86FB: CLC
#_1D86FC: ADC.w #$0005

#_1D86FF: CMP.w #$000A
#_1D8702: BCS .out_of_range

;---------------------------------------------------------------------------------------------------

.ready_to_fire
#_1D8704: SEP #$20

#_1D8706: INC.w $0D80,X

#_1D8709: LDA.b #$20
#_1D870B: STA.w $0DF0,X

#_1D870E: RTS

;---------------------------------------------------------------------------------------------------

.out_of_range
#_1D870F: SEP #$20

#_1D8711: LDA.b #$18
#_1D8713: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1D8717: LDA.b $00
#_1D8719: STA.w $0D40,X

#_1D871C: LDA.b $01
#_1D871E: STA.w $0D50,X

.dont_turn
#_1D8721: JSR Sprite_Move_XY_Bank1D
#_1D8724: JSR Sprite_CheckTileCollision_Bank1D
#_1D8727: BNE .ready_to_fire

#_1D8729: INC.w $0E80,X

;===================================================================================================

#Lynel_Animate:
#_1D872C: LDA.w $0E80,X
#_1D872F: AND.b #$04
#_1D8731: ORA.w $0DE0,X
#_1D8734: TAY

#_1D8735: LDA.w .anim,Y
#_1D8738: STA.w $0DC0,X

#_1D873B: RTS

;===================================================================================================

pool Lynel_Fire

.anim
#_1D873C: db $05, $02, $08, $0A

pool off

;---------------------------------------------------------------------------------------------------

Lynel_Fire:
#_1D8740: LDA.w $0DF0,X
#_1D8743: BNE .delay

#_1D8745: JSL GetRandomNumber
#_1D8749: AND.b #$0F
#_1D874B: ADC.b #$10
#_1D874D: STA.w $0DF0,X

#_1D8750: STZ.w $0D80,X

#_1D8753: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_1D8754: CMP.b #$10
#_1D8756: BNE .dont_fire

#_1D8758: JSL Sprite_SpawnFirePhlegm
#_1D875C: BMI .dont_fire

; Makes the fire blockable with the mirror shield
#_1D875E: LDA.l $7EF35A
#_1D8762: CMP.b #$03
#_1D8764: BEQ .dont_fire

#_1D8766: LDA.b #$00
#_1D8768: STA.w $0BE0,Y

.dont_fire
#_1D876B: LDY.w $0DE0,X

#_1D876E: LDA.w .anim,Y
#_1D8771: STA.w $0DC0,X

#_1D8774: JSR Sprite_CheckTileCollision_Bank1D

#_1D8777: RTS

;===================================================================================================

pool SpriteDraw_Lynel

.oam_groups
; group00
#_1D8778: dw  -5, -11 : db $CC, $00, $00, $02
#_1D8780: dw  -4,   0 : db $E4, $00, $00, $02
#_1D8788: dw   4,   0 : db $E5, $00, $00, $02

; group01
#_1D8790: dw  -5, -10 : db $CC, $00, $00, $02
#_1D8798: dw  -4,   0 : db $E7, $00, $00, $02
#_1D87A0: dw   4,   0 : db $E8, $00, $00, $02

; group02
#_1D87A8: dw  -5, -11 : db $C8, $00, $00, $02
#_1D87B0: dw  -4,   0 : db $E4, $00, $00, $02
#_1D87B8: dw   4,   0 : db $E5, $00, $00, $02

; group03
#_1D87C0: dw   5, -11 : db $CC, $40, $00, $02
#_1D87C8: dw  -4,   0 : db $E5, $40, $00, $02
#_1D87D0: dw   4,   0 : db $E4, $40, $00, $02

; group04
#_1D87D8: dw   5, -10 : db $CC, $40, $00, $02
#_1D87E0: dw  -4,   0 : db $E8, $40, $00, $02
#_1D87E8: dw   4,   0 : db $E7, $40, $00, $02

; group05
#_1D87F0: dw   5, -11 : db $C8, $40, $00, $02
#_1D87F8: dw  -4,   0 : db $E8, $40, $00, $02
#_1D8800: dw   4,   0 : db $E7, $40, $00, $02

; group06
#_1D8808: dw   0,  -9 : db $CE, $00, $00, $02
#_1D8810: dw  -4,   0 : db $EA, $00, $00, $02
#_1D8818: dw   4,   0 : db $EB, $00, $00, $02

; group07
#_1D8820: dw   0,  -9 : db $CE, $00, $00, $02
#_1D8828: dw  -4,   0 : db $EB, $40, $00, $02
#_1D8830: dw   4,   0 : db $EA, $40, $00, $02

; group08
#_1D8838: dw   0,  -9 : db $CA, $00, $00, $02
#_1D8840: dw  -4,   0 : db $EB, $40, $00, $02
#_1D8848: dw   4,   0 : db $EB, $00, $00, $02

; group09
#_1D8850: dw   0, -14 : db $C6, $00, $00, $02
#_1D8858: dw  -4,   0 : db $ED, $00, $00, $02
#_1D8860: dw   4,   0 : db $EE, $00, $00, $02

; group0A
#_1D8868: dw   0, -14 : db $C6, $00, $00, $02
#_1D8870: dw  -4,   0 : db $EE, $40, $00, $02
#_1D8878: dw   4,   0 : db $ED, $40, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Lynel:
#_1D8880: LDA.b #$00
#_1D8882: XBA
#_1D8883: LDA.w $0DC0,X

#_1D8886: REP #$20

#_1D8888: ASL A
#_1D8889: ASL A
#_1D888A: ASL A
#_1D888B: STA.b $00

#_1D888D: ASL A
#_1D888E: ADC.b $00
#_1D8890: ADC.w #.oam_groups
#_1D8893: STA.b $08

#_1D8895: SEP #$20

#_1D8897: LDA.b #$03
#_1D8899: JSR Sprite_DrawMultiple_Bank1D
#_1D889C: JSL SpriteDraw_Shadow_long

#_1D88A0: RTS

;===================================================================================================

SpawnPhantomGanon:
#_1D88A1: LDA.b #!SPRITE_C9
#_1D88A3: JSL Sprite_SpawnDynamically
#_1D88A7: JSL Sprite_SetSpawnedCoordinates

#_1D88AB: LDA.b #$02
#_1D88AD: STA.w $0E40,Y
#_1D88B0: STA.w $0BA0,Y

#_1D88B3: DEC A ; A=1
#_1D88B4: STA.w $0EC0,Y

#_1D88B7: DEC A ; A=0
#_1D88B8: STA.w $0F50,Y

#_1D88BB: RTL

;===================================================================================================

Sprite_PhantomGanon:
#_1D88BC: LDA.w $0D80,X
#_1D88BF: BNE Sprite_GanonBat

#_1D88C1: JSR SpriteDraw_PhantomGanon
#_1D88C4: JSR Sprite_CheckIfActive_Bank1D
#_1D88C7: JSR Sprite_Move_Y_Bank1D

#_1D88CA: INC.w $0E80,X
#_1D88CD: LDA.w $0E80,X
#_1D88D0: AND.b #$1F
#_1D88D2: BNE .exit

#_1D88D4: DEC.w $0D40,X

#_1D88D7: LDA.w $0D40,X
#_1D88DA: CMP.b #$FC
#_1D88DC: BNE .no_poof

#_1D88DE: PHA

#_1D88DF: JSR SpawnBossPoof

; move it up 20 pixels
#_1D88E2: LDA.w $0D00,Y
#_1D88E5: SEC
#_1D88E6: SBC.b #20
#_1D88E8: STA.w $0D00,Y

#_1D88EB: LDA.w $0D20,Y
#_1D88EE: SBC.b #$00
#_1D88F0: STA.w $0D20,Y

#_1D88F3: PLA

;---------------------------------------------------------------------------------------------------

.no_poof
#_1D88F4: CMP.b #$FB
#_1D88F6: BNE .exit

#_1D88F8: INC.w $0D80,X

#_1D88FB: LDA.b #$FF
#_1D88FD: STA.w $0DF0,X

#_1D8900: LDA.b #$FC
#_1D8902: STA.w $0D40,X

.exit
#_1D8905: RTS

;===================================================================================================

pool Sprite_GanonBat

.anim
#_1D8906: db $00, $01, $02, $01

.max_speed_x
#_1D890A: db  32, -32

.max_speed_y
#_1D890C: db  16, -16

pool off

;---------------------------------------------------------------------------------------------------

Sprite_GanonBat:
#_1D890E: JSR SpriteDraw_GanonBat

; Die when off screen
#_1D8911: LDA.w $0F00,X
#_1D8914: BEQ .stay_alive

#_1D8916: STZ.w $0DD0,X

; Set room flag
#_1D8919: LDA.w $0403
#_1D891C: ORA.b #$80
#_1D891E: STA.w $0403

;---------------------------------------------------------------------------------------------------

.stay_alive
#_1D8921: JSR Sprite_CheckIfActive_Bank1D

#_1D8924: LDA.b $1A
#_1D8926: LSR A
#_1D8927: LSR A
#_1D8928: AND.b #$03
#_1D892A: TAY

#_1D892B: LDA.w .anim,Y
#_1D892E: STA.w $0DC0,X

#_1D8931: LDA.w $0DF0,X
#_1D8934: BEQ .only_move

#_1D8936: CMP.b #$D0
#_1D8938: BCS .adjust_velocity

#_1D893A: LDA.w $0EB0,X
#_1D893D: AND.b #$01
#_1D893F: TAY

#_1D8940: LDA.w $0D40,X
#_1D8943: CLC
#_1D8944: ADC.w Sprite_ApplyConveyor_shake_x,Y
#_1D8947: STA.w $0D40,X

#_1D894A: CMP.w .max_speed_y,Y
#_1D894D: BNE .target_not_reached

#_1D894F: INC.w $0EB0,X

.target_not_reached
#_1D8952: LDA.w $0DE0,X
#_1D8955: AND.b #$01
#_1D8957: TAY

#_1D8958: LDA.w $0D50,X
#_1D895B: CLC
#_1D895C: ADC.w Sprite_ApplyConveyor_shake_x,Y
#_1D895F: STA.w $0D50,X

#_1D8962: BNE .no_sfx

#_1D8964: PHA

#_1D8965: LDA.b #!SFX3_1E
#_1D8967: JSL SpriteSFX_QueueSFX3WithPan

#_1D896B: PLA

.no_sfx
#_1D896C: CMP.w .max_speed_x,Y
#_1D896F: BNE .adjust_velocity

#_1D8971: INC.w $0DE0,X

.adjust_velocity
; Shares Link's high byte coordinates?
#_1D8974: LDA.b #$78
#_1D8976: STA.b $04

#_1D8978: LDA.b #$50
#_1D897A: STA.b $06

#_1D897C: LDA.b $23
#_1D897E: STA.b $05

#_1D8980: LDA.b $21
#_1D8982: STA.b $07

#_1D8984: LDA.b #$05
#_1D8986: JSL Sprite_ProjectSpeedTowardsLocation_long

; Looks like it gets an initial kick in speed? TODO
#_1D898A: LDA.w $0D50,X
#_1D898D: PHA

#_1D898E: CLC
#_1D898F: ADC.b $01
#_1D8991: STA.w $0D50,X

#_1D8994: LDA.w $0D40,X
#_1D8997: PHA

#_1D8998: CLC
#_1D8999: ADC.b $00
#_1D899B: STA.w $0D40,X

#_1D899E: JSR Sprite_Move_XY_Bank1D

#_1D89A1: PLA
#_1D89A2: STA.w $0D40,X

#_1D89A5: PLA
#_1D89A6: STA.w $0D50,X

#_1D89A9: RTS

.only_move
#_1D89AA: JSR Sprite_Move_XY_Bank1D

#_1D89AD: LDA.w $0D50,X
#_1D89B0: CMP.b #$40
#_1D89B2: BEQ .exit

#_1D89B4: INC.w $0D50,X
#_1D89B7: DEC.w $0D40,X

.exit
#_1D89BA: RTS

;===================================================================================================

pool SpriteDraw_GanonBat

.oam_groups
; group00
#_1D89BB: dw  -8,   0 : db $60, $05, $00, $02
#_1D89C3: dw   8,   0 : db $60, $45, $00, $02

; group01
#_1D89CB: dw  -8,   0 : db $62, $05, $00, $02
#_1D89D3: dw   8,   0 : db $62, $45, $00, $02

; group02
#_1D89DB: dw  -8,   0 : db $44, $05, $00, $02
#_1D89E3: dw   8,   0 : db $44, $45, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_GanonBat:
#_1D89EB: LDA.b #$00
#_1D89ED: XBA
#_1D89EE: LDA.w $0DC0,X

#_1D89F1: REP #$20

#_1D89F3: ASL A ; x16
#_1D89F4: ASL A
#_1D89F5: ASL A
#_1D89F6: ASL A
#_1D89F7: CLC
#_1D89F8: ADC.w #.oam_groups
#_1D89FB: STA.b $08

#_1D89FD: SEP #$20

#_1D89FF: LDA.b #$02
#_1D8A01: JMP.w Sprite_DrawMultiple_Bank1D

;===================================================================================================

pool SpriteDraw_PhantomGanon

.oam_groups
; group00
#_1D8A04: dw -16,  -8 : db $46, $0D, $00, $02
#_1D8A0C: dw  -8,  -8 : db $47, $0D, $00, $02
#_1D8A14: dw   8,  -8 : db $47, $4D, $00, $02
#_1D8A1C: dw  16,  -8 : db $46, $4D, $00, $02
#_1D8A24: dw -16,   8 : db $69, $0D, $00, $02
#_1D8A2C: dw  -8,   8 : db $6A, $0D, $00, $02
#_1D8A34: dw   8,   8 : db $6A, $4D, $00, $02
#_1D8A3C: dw  16,   8 : db $69, $4D, $00, $02

; group01
#_1D8A44: dw -16,  -8 : db $46, $0D, $00, $02
#_1D8A4C: dw  -8,  -8 : db $47, $0D, $00, $02
#_1D8A54: dw   8,  -8 : db $47, $4D, $00, $02
#_1D8A5C: dw  16,  -8 : db $46, $4D, $00, $02
#_1D8A64: dw -16,   8 : db $66, $0D, $00, $02
#_1D8A6C: dw  -8,   8 : db $67, $0D, $00, $02
#_1D8A74: dw   8,   8 : db $67, $4D, $00, $02
#_1D8A7C: dw  16,   8 : db $66, $4D, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_PhantomGanon:
#_1D8A84: LDA.b #$00
#_1D8A86: XBA
#_1D8A87: LDA.w $0DC0,X

#_1D8A8A: REP #$20

#_1D8A8C: ASL A ; x64
#_1D8A8D: ASL A
#_1D8A8E: ASL A
#_1D8A8F: ASL A
#_1D8A90: ASL A
#_1D8A91: ASL A
#_1D8A92: CLC
#_1D8A93: ADC.w #.oam_groups
#_1D8A96: STA.b $08

; !HARDCODED oam slots
#_1D8A98: LDA.w #$0950
#_1D8A9B: STA.b $90

#_1D8A9D: LDA.w #$0A74
#_1D8AA0: STA.b $92

#_1D8AA2: SEP #$20

#_1D8AA4: LDA.b #$08
#_1D8AA6: JMP.w Sprite_DrawMultiple_Bank1D

;===================================================================================================

SwishEvery16Frames:
#_1D8AA9: LDA.b $1A
#_1D8AAB: AND.b #$0F
#_1D8AAD: BNE .exit

#_1D8AAF: LDA.b #!SFX3_06
#_1D8AB1: JSL SpriteSFX_QueueSFX3WithPan

.exit
#_1D8AB5: RTS

;===================================================================================================

Sprite_GanonTrident:
#_1D8AB6: JSR SpriteDraw_GanonTrident
#_1D8AB9: JSR Sprite_CheckIfActive_Bank1D
#_1D8ABC: JSR Sprite_CheckDamageToAndFromLink_Bank1D
#_1D8ABF: JSR SwishEvery16Frames
#_1D8AC2: JSR Sprite_Move_XY_Bank1D

#_1D8AC5: DEC.w $0E80,X

#_1D8AC8: LDA.w $0E80,X
#_1D8ACB: LSR A
#_1D8ACC: LSR A
#_1D8ACD: AND.b #$07
#_1D8ACF: TAY

#_1D8AD0: LDA.w GanonTrident_Timers,Y
#_1D8AD3: STA.w $0ED0,X

#_1D8AD6: LDA.w $0DF0,X
#_1D8AD9: BEQ GanonTrident_TakeAim

#_1D8ADB: LSR A
#_1D8ADC: BCS .exit

#_1D8ADE: LDA.b #$20
#_1D8AE0: JSL Sprite_ProjectSpeedTowardsLink_long

;===================================================================================================

#GanonTrident_AdjustVelocity:
#_1D8AE4: LDA.b $00
#_1D8AE6: CMP.w $0D40,X
#_1D8AE9: BEQ .handle_x
#_1D8AEB: BPL .accelerate_y

.decelerate_y
#_1D8AED: DEC.w $0D40,X
#_1D8AF0: BRA .handle_x

.accelerate_y
#_1D8AF2: INC.w $0D40,X

.handle_x
#_1D8AF5: LDA.b $01
#_1D8AF7: CMP.w $0D50,X
#_1D8AFA: BEQ .exit
#_1D8AFC: BPL .accelerate_x

.decelerate_x
#_1D8AFE: DEC.w $0D50,X
#_1D8B01: BRA .exit

.accelerate_x
#_1D8B03: INC.w $0D50,X

.exit
#_1D8B06: RTS

;===================================================================================================

pool GanonTrident_TakeAim

.offset_x_low
#_1D8B07: db  24, -16

.offset_x_high
#_1D8B09: db   0,  -1

pool off

;---------------------------------------------------------------------------------------------------

GanonTrident_TakeAim:
; !HARDCODED slots, that assume Ganon is in slot 0
#_1D8B0B: LDY.w $0DE0 ; Ganon's direction to find the offset

#_1D8B0E: LDA.w $0D10
#_1D8B11: CLC
#_1D8B12: ADC.w .offset_x_low,Y
#_1D8B15: STA.b $04

#_1D8B17: LDA.w $0D30
#_1D8B1A: ADC.w .offset_x_high,Y
#_1D8B1D: STA.b $05

#_1D8B1F: LDA.w $0D00
#_1D8B22: CLC
#_1D8B23: ADC.b #$F0
#_1D8B25: STA.b $06

#_1D8B27: LDA.w $0D20
#_1D8B2A: ADC.b #$FF
#_1D8B2C: STA.b $07

#_1D8B2E: JSR Ganon_AttemptTridentCatch
#_1D8B31: BCS .miss

#_1D8B33: STZ.w $0DD0,X

#_1D8B36: LDA.b #$03
#_1D8B38: STA.w $0D80

#_1D8B3B: LDA.b #$10
#_1D8B3D: STA.w $0DF0

.miss
#_1D8B40: LDA.b #$20
#_1D8B42: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1D8B46: JMP.w GanonTrident_AdjustVelocity

;===================================================================================================

FireBat_Trailer:
#_1D8B49: JSR SpriteDraw_FireBat
#_1D8B4C: JSR Sprite_CheckIfActive_Bank1D
#_1D8B4F: JMP.w FireBat_Move

;===================================================================================================

FireBat_Spiral:
#_1D8B52: JSR SpriteDraw_FireBat
#_1D8B55: JSR Sprite_CheckIfActive_Bank1D
#_1D8B58: JSR Sprite_AdjustAuxCoords_bank1D

#_1D8B5B: LDA.b #$02
#_1D8B5D: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1D8B61: LDA.b $00
#_1D8B63: STA.w $0D40,X

#_1D8B66: LDA.b $01
#_1D8B68: STA.w $0D50,X

#_1D8B6B: LDA.b #$50
#_1D8B6D: JSL Sprite_ProjectSpeedTowardsLocation_long

; invert x speed
#_1D8B71: LDA.w $0D50,X
#_1D8B74: EOR.b #$FF
#_1D8B76: INC A
#_1D8B77: CLC
#_1D8B78: ADC.b $00
#_1D8B7A: STA.w $0D50,X

; invert y speed
#_1D8B7D: LDA.w $0D40,X
#_1D8B80: EOR.b #$FF
#_1D8B82: INC A
#_1D8B83: STA.b $00

; y speed adds in the x speed?
#_1D8B85: LDA.b $01
#_1D8B87: EOR.b #$FF
#_1D8B89: INC A
#_1D8B8A: CLC
#_1D8B8B: ADC.b $00
#_1D8B8D: STA.w $0D40,X

;===================================================================================================

FireBat_Move:
#_1D8B90: JSR FireBat_Animate
#_1D8B93: JSR Sprite_Move_XY_Bank1D

#_1D8B96: LDA.w $0E80,X
#_1D8B99: AND.b #$07
#_1D8B9B: BNE .exit

#_1D8B9D: LDA.b #$0E
#_1D8B9F: JSR FireBat_SpawnFireballGarnish

#_1D8BA2: LDY.w $0EC0,X

#_1D8BA5: PHX

; this is mostly redundant
; but it forces a fire ball to spawn in slot $0E
#_1D8BA6: LDX.b $00

#_1D8BA8: LDA.b #!GARNISH_10
#_1D8BAA: STA.l $7FF800,X

; Set a timer, with trailing bats using a longer timer
#_1D8BAE: LDA.b #79
#_1D8BB0: CPY.b #$05
#_1D8BB2: BNE .use_longer_timer

#_1D8BB4: LDA.b #47

.use_longer_timer
#_1D8BB6: STA.l $7FF90E,X

#_1D8BBA: PLX

.exit
#_1D8BBB: RTS

;===================================================================================================

Sprite_AdjustAuxCoords_bank1D:
#_1D8BBC: LDA.w $0D90,X
#_1D8BBF: STA.b $04

#_1D8BC1: LDA.w $0DA0,X
#_1D8BC4: STA.b $05

#_1D8BC6: LDA.w $0DB0,X
#_1D8BC9: STA.b $06

#_1D8BCB: LDA.w $0E90,X
#_1D8BCE: STA.b $07

#_1D8BD0: RTS

;===================================================================================================

FireBat_OverlordOffset:
.x_low
#_1D8BD1: db  20, -18

.x_high
#_1D8BD3: db   0,  -1

.y_low
#_1D8BD5: db -20, -20

;===================================================================================================

FireBat_Launched:
#_1D8BD7: JSR SpriteDraw_FireBat
#_1D8BDA: JSR Sprite_CheckIfActive_Bank1D
#_1D8BDD: JSL Sprite_CheckDamageToLink_long

#_1D8BE1: LDA.w $0D80,X
#_1D8BE4: JSL JumpTableLocal
#_1D8BE8: dw FireBat_PositionSelfAndAnimateAndPrepareForLaunch
#_1D8BEA: dw FireBat_PositionSelfAndAnimate
#_1D8BEC: dw FireBat_LaunchedFlying

;===================================================================================================

GetPositionRelativeToTheGreatOverlordGanon:
#_1D8BEE: LDY.w $0DE0

#_1D8BF1: LDA.w $0B10,X
#_1D8BF4: CLC
#_1D8BF5: ADC.w FireBat_OverlordOffset_x_low,Y
#_1D8BF8: STA.w $0D10,X

#_1D8BFB: LDA.w $0B20,X
#_1D8BFE: ADC.w FireBat_OverlordOffset_x_high,Y
#_1D8C01: STA.w $0D30,X

#_1D8C04: LDA.w $0B30,X
#_1D8C07: CLC
#_1D8C08: ADC.w FireBat_OverlordOffset_y_low,Y
#_1D8C0B: STA.w $0D00,X

; Y offset is always negative, so it doesn't use a table
#_1D8C0E: LDA.w $0B40,X
#_1D8C11: ADC.b #$FF
#_1D8C13: STA.w $0D20,X

#_1D8C16: RTS

;===================================================================================================

FireBat_PositionSelfAndAnimateAndPrepareForLaunch:
#_1D8C17: JSR GetPositionRelativeToTheGreatOverlordGanon

#_1D8C1A: LDA.w $0DF0,X
#_1D8C1D: BNE FireBat_AdjustAnimationState

#_1D8C1F: INC.w $0D80,X

#_1D8C22: RTS

;---------------------------------------------------------------------------------------------------

FireBat_AdjustAnimationState:
#_1D8C23: AND.b #$04
#_1D8C25: LSR A
#_1D8C26: LSR A
#_1D8C27: STA.w $0DC0,X

#_1D8C2A: RTS

;===================================================================================================
FireBat_AnimationStates:
.launched
#_1D8C2B: db $04, $04, $04, $03, $03, $03, $02, $02, $02

.normal
#_1D8C34: db $04, $05, $06, $05

;===================================================================================================

FireBat_PositionSelfAndAnimate:
#_1D8C38: JSR GetPositionRelativeToTheGreatOverlordGanon

#_1D8C3B: INC.w $0E80,X
#_1D8C3E: LDA.w $0E80,X
#_1D8C41: BRA FireBat_AdjustAnimationState

;===================================================================================================

FireBat_Animate:
#_1D8C43: INC.w $0E80,X

#_1D8C46: LDA.w $0E80,X
#_1D8C49: LSR A
#_1D8C4A: LSR A
#_1D8C4B: AND.b #$03
#_1D8C4D: TAY

#_1D8C4E: LDA.w FireBat_AnimationStates_normal,Y
#_1D8C51: STA.w $0DC0,X

#_1D8C54: RTS

;===================================================================================================

FireBat_LaunchedFlying:
#_1D8C55: JSR Sprite_Move_XY_Bank1D

#_1D8C58: LDA.b #$40
#_1D8C5A: STA.w $0CAA,X

#_1D8C5D: LDA.w $0E00,X
#_1D8C60: BEQ .begin_anim

#_1D8C62: CMP.b #$01
#_1D8C64: BEQ .calculate_speed

#_1D8C66: LSR A
#_1D8C67: LSR A
#_1D8C68: TAY
#_1D8C69: LDA.w FireBat_AnimationStates_launched,Y
#_1D8C6C: STA.w $0DC0,X

#_1D8C6F: RTS

.begin_anim
#_1D8C70: LDA.w $0DF0,X
#_1D8C73: BEQ .delay

#_1D8C75: DEC A
#_1D8C76: BNE FireBat_AdjustAnimationState

#_1D8C78: LDA.b #$23
#_1D8C7A: STA.w $0E00,X

#_1D8C7D: BRA FireBat_AdjustAnimationState

.calculate_speed
#_1D8C7F: LDA.b #$30
#_1D8C81: JSL Sprite_ApplySpeedTowardsLink_long

#_1D8C85: LDA.b #!SFX3_1E
#_1D8C87: JSL SpriteSFX_QueueSFX3WithPan

.delay
#_1D8C8B: JSR FireBat_Animate

#_1D8C8E: BRA FireBat_Animate

;===================================================================================================

pool SpriteDraw_FireBat

.offset_x
#_1D8C90: dw -8,  8

.char
#_1D8C94: db $88
#_1D8C95: db $88
#_1D8C96: db $8A
#_1D8C97: db $8C
#_1D8C98: db $68
#_1D8C99: db $AA
#_1D8C9A: db $A8

.flip
#_1D8C9B: db $00, $C0
#_1D8C9D: db $80, $40
#_1D8C9F: db $00, $40
#_1D8CA1: db $00, $40
#_1D8CA3: db $00, $40
#_1D8CA5: db $00, $40
#_1D8CA7: db $00, $40

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_FireBat:
#_1D8CA9: JSR Sprite_PrepOAMCoord_Bank1D

#_1D8CAC: LDA.w $0DC0,X
#_1D8CAF: STA.b $07

#_1D8CB1: ASL A
#_1D8CB2: STA.b $06

#_1D8CB4: PHX

#_1D8CB5: LDX.b #$01

.next_object
#_1D8CB7: PHX

#_1D8CB8: TXA
#_1D8CB9: ASL A
#_1D8CBA: TAX

#_1D8CBB: REP #$20

#_1D8CBD: LDA.b $00
#_1D8CBF: CLC
#_1D8CC0: ADC.w .offset_x,X
#_1D8CC3: STA.b ($90),Y

#_1D8CC5: AND.w #$0100
#_1D8CC8: STA.b $0E

#_1D8CCA: LDA.b $02
#_1D8CCC: INY
#_1D8CCD: STA.b ($90),Y

#_1D8CCF: CLC
#_1D8CD0: ADC.w #$0010
#_1D8CD3: CMP.w #$0100

#_1D8CD6: SEP #$20

#_1D8CD8: BCC .on_screen

#_1D8CDA: LDA.b #$F0
#_1D8CDC: STA.b ($90),Y

.on_screen
#_1D8CDE: LDX.b $07

#_1D8CE0: LDA.w .char,X
#_1D8CE3: INY
#_1D8CE4: STA.b ($90),Y

#_1D8CE6: PLA
#_1D8CE7: PHA
#_1D8CE8: ORA.b $06
#_1D8CEA: TAX

#_1D8CEB: LDA.w .flip,X
#_1D8CEE: ORA.b $05
#_1D8CF0: INY
#_1D8CF1: STA.b ($90),Y

#_1D8CF3: PHY

#_1D8CF4: TYA
#_1D8CF5: LSR A
#_1D8CF6: LSR A
#_1D8CF7: TAY

#_1D8CF8: LDA.b #$02
#_1D8CFA: ORA.b $0F
#_1D8CFC: STA.b ($92),Y

#_1D8CFE: PLY

#_1D8CFF: INY

#_1D8D00: PLX
#_1D8D01: DEX
#_1D8D02: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_1D8D04: PLX

#_1D8D05: RTS

;===================================================================================================

Ganon_AttemptTridentCatch:
#_1D8D06: REP #$20

#_1D8D08: LDA.w $0FD8
#_1D8D0B: SEC
#_1D8D0C: SBC.b $04
#_1D8D0E: CLC
#_1D8D0F: ADC.w #$0004

#_1D8D12: CMP.w #$0008
#_1D8D15: BCS .catch

#_1D8D17: LDA.w $0FDA
#_1D8D1A: SEC
#_1D8D1B: SBC.b $06
#_1D8D1D: CLC
#_1D8D1E: ADC.w #$0004

; pointless branch
#_1D8D21: CMP.w #$0008
#_1D8D24: BCS .catch

.catch
#_1D8D26: SEP #$20

#_1D8D28: RTS

;===================================================================================================

SpritePrep_Ganon_PrepareBattle:
#_1D8D29: PHB
#_1D8D2A: PHK
#_1D8D2B: PLB

#_1D8D2C: JSR Ganon_HandleAnimation_Idle

#_1D8D2F: LDA.b #$80
#_1D8D31: STA.w $0DF0,X

#_1D8D34: LDA.b #$02
#_1D8D36: STA.w $0C9A,X

#_1D8D39: LDA.b #!SONG_1E
#_1D8D3B: STA.w $012C

#_1D8D3E: PLB

#_1D8D3F: RTL

;===================================================================================================
; TODO ANALYZE
;===================================================================================================
pool Ganon_HandleFireBatCircle

.offset_x1
#_1D8D40: db $00, $00, $40, $00, $80, $00, $C0, $00
#_1D8D48: db $00, $01, $40, $01, $80, $01, $C0, $01

.offset_x2
#_1D8D50: db $00, $10, $18, $1C, $20, $1C, $18, $10
#_1D8D58: db $00, $F0, $E8, $E4, $E0, $E4, $E8, $F0

.offset_x3
#_1D8D60: db $20, $1C, $18, $10, $00, $F0, $E8, $E4
#_1D8D68: db $E0, $E4, $E8, $F0, $00, $10, $18, $1C

pool off

;---------------------------------------------------------------------------------------------------

Ganon_HandleFireBatCircle:
#_1D8D70: LDA.b #$FC
#_1D8D72: CLC
#_1D8D73: ADC.w $0B08
#_1D8D76: STA.w $0B08

#_1D8D79: LDA.b #$FF
#_1D8D7B: ADC.w $0B09
#_1D8D7E: STA.w $0B09

#_1D8D81: STZ.w $0FB5

#_1D8D84: PHX

.next_bat
#_1D8D85: LDA.w $0FB5
#_1D8D88: TAX

#_1D8D89: ASL A
#_1D8D8A: TAY

#_1D8D8B: REP #$20

#_1D8D8D: LDA.w $0B08
#_1D8D90: CLC
#_1D8D91: ADC.w .offset_x1,Y
#_1D8D94: AND.w #$01FF
#_1D8D97: STA.b $00

#_1D8D99: LSR A ; /32
#_1D8D9A: LSR A
#_1D8D9B: LSR A
#_1D8D9C: LSR A
#_1D8D9D: LSR A

#_1D8D9E: TAY

;---------------------------------------------------------------------------------------------------

#_1D8D9F: SEP #$20

#_1D8DA1: LDA.w $0D81,X
#_1D8DA4: CMP.b #$02
#_1D8DA6: BEQ .am_bat_now

#_1D8DA8: TYA
#_1D8DA9: SEC
#_1D8DAA: SBC.b #$04
#_1D8DAC: AND.b #$0F
#_1D8DAE: TAY

#_1D8DAF: LDA.w .offset_x2,Y
#_1D8DB2: STA.w $0D51,X

#_1D8DB5: ASL A
#_1D8DB6: PHP
#_1D8DB7: ROR.w $0D51,X

#_1D8DBA: PLP
#_1D8DBB: ROR.w $0D51,X

#_1D8DBE: LDA.w .offset_x3,Y
#_1D8DC1: STA.w $0D41,X

#_1D8DC4: ASL A
#_1D8DC5: PHP
#_1D8DC6: ROR.w $0D41,X

#_1D8DC9: PLP
#_1D8DCA: ROR.w $0D41,X

;---------------------------------------------------------------------------------------------------

.am_bat_now
#_1D8DCD: LDA.w $0B0A
#_1D8DD0: STA.b $0F

#_1D8DD2: PHX

#_1D8DD3: REP #$30

#_1D8DD5: LDA.b $00
#_1D8DD7: AND.w #$00FF
#_1D8DDA: ASL A
#_1D8DDB: TAX

#_1D8DDC: LDA.l SmoothCurve,X
#_1D8DE0: STA.b $04

#_1D8DE2: LDA.b $00
#_1D8DE4: CLC
#_1D8DE5: ADC.w #$0080
#_1D8DE8: STA.b $02

#_1D8DEA: AND.w #$00FF
#_1D8DED: ASL A
#_1D8DEE: TAX

#_1D8DEF: LDA.l SmoothCurve,X
#_1D8DF3: STA.b $06

#_1D8DF5: SEP #$30

;---------------------------------------------------------------------------------------------------

#_1D8DF7: PLX

#_1D8DF8: LDA.b $04
#_1D8DFA: STA.w CPUMULTA

#_1D8DFD: LDA.b $0F
#_1D8DFF: LDY.b $05
#_1D8E01: BNE .nonzero_a

#_1D8E03: STA.w CPUMULTB
#_1D8E06: JSR Six_NOP

#_1D8E09: ASL.w CPUPRODUCTL ; carry = round up
#_1D8E0C: LDA.w CPUPRODUCTH
#_1D8E0F: ADC.b #$00

.nonzero_a
#_1D8E11: LSR.b $01
#_1D8E13: BCC .dont_invert_a

#_1D8E15: EOR.b #$FF
#_1D8E17: INC A

.dont_invert_a
#_1D8E18: STZ.b $0A

#_1D8E1A: CMP.b #$00
#_1D8E1C: BPL .delay_tick_a

#_1D8E1E: DEC.b $0A

.delay_tick_a
#_1D8E20: CLC
#_1D8E21: ADC.w $0D10
#_1D8E24: STA.w $0B11,X

#_1D8E27: LDA.w $0D30
#_1D8E2A: ADC.b $0A
#_1D8E2C: STA.w $0B21,X

;---------------------------------------------------------------------------------------------------

#_1D8E2F: LDA.b $06
#_1D8E31: STA.w CPUMULTA

#_1D8E34: LDA.b $0F

#_1D8E36: LDY.b $07
#_1D8E38: BNE .nonzero_b

#_1D8E3A: STA.w CPUMULTB

#_1D8E3D: JSR Six_NOP

#_1D8E40: ASL.w CPUPRODUCTL ; carry = round up
#_1D8E43: LDA.w CPUPRODUCTH
#_1D8E46: ADC.b #$00

.nonzero_b
#_1D8E48: LSR.b $03
#_1D8E4A: BCC .dont_invert_b

#_1D8E4C: EOR.b #$FF
#_1D8E4E: INC A

.dont_invert_b
#_1D8E4F: STZ.b $0A

#_1D8E51: CMP.b #$00
#_1D8E53: BPL .delay_tick_b

#_1D8E55: DEC.b $0A

.delay_tick_b
#_1D8E57: CLC
#_1D8E58: ADC.w $0D00
#_1D8E5B: STA.w $0B31,X

#_1D8E5E: LDA.w $0D20
#_1D8E61: ADC.b $0A
#_1D8E63: STA.w $0B41,X

#_1D8E66: INC.w $0FB5

#_1D8E69: LDA.w $0FB5
#_1D8E6C: CMP.b #$08
#_1D8E6E: BEQ .exit

;---------------------------------------------------------------------------------------------------

#_1D8E70: JMP.w .next_bat

.exit
#_1D8E73: PLX

#_1D8E74: RTS

;===================================================================================================

Six_NOP:
#_1D8E75: NOP ; one
#_1D8E76: NOP ; two
#_1D8E77: NOP ; three
#_1D8E78: NOP ; four
#_1D8E79: NOP ; five
#_1D8E7A: NOP ; six

#_1D8E7B: RTS

;===================================================================================================

Ganon_SpawnSpiralBat:
#_1D8E7C: LDA.b #!SPRITE_C9
#_1D8E7E: LDY.b #$08
#_1D8E80: JSL Sprite_SpawnDynamically_slot_limited
#_1D8E84: BMI .no_room

#_1D8E86: JSL Sprite_SetSpawnedCoordinates

#_1D8E8A: LDA.b #$04
#_1D8E8C: STA.w $0EC0,Y

#_1D8E8F: LDA.b #$03
#_1D8E91: STA.w $0F50,Y

#_1D8E94: LDA.b #$40
#_1D8E96: STA.w $0E60,Y

#_1D8E99: LDA.b #$01
#_1D8E9B: STA.w $0E40,Y

#_1D8E9E: LDA.b #$80
#_1D8EA0: STA.w $0CAA,Y
#_1D8EA3: STA.w $0D20,Y

#_1D8EA6: LDA.b #$30
#_1D8EA8: STA.w $0DF0,Y

;===================================================================================================

#Ganon_SetSpawnedEntityProperties:
#_1D8EAB: LDA.b #$07
#_1D8EAD: STA.w $0CD2,Y
#_1D8EB0: STA.w $0BA0,Y

.no_room
#_1D8EB3: RTS

;===================================================================================================

Sprite_D6_Ganon:
Sprite_D7_Ganon:
#_1D8EB4: LDA.w $0D80,X
#_1D8EB7: BPL .not_dying

#_1D8EB9: JSR Sprite_CheckIfActive_Bank1D

#_1D8EBC: LDA.w $0DF0,X
#_1D8EBF: BNE .live

#_1D8EC1: STZ.w $0DD0,X

.live
#_1D8EC4: LSR A
#_1D8EC5: BCS .exit

#_1D8EC7: JSR SpriteDraw_Ganon

.exit
#_1D8ECA: RTS

;---------------------------------------------------------------------------------------------------

.direction
#_1D8ECB: db $02, $00

.anim_steps
#_1D8ECD: db $10, $0A

;---------------------------------------------------------------------------------------------------

.not_dying
#_1D8ECF: LDA.w $0F10,X
#_1D8ED2: BEQ .delay_step

#_1D8ED4: LDY.w $0DE0,X
#_1D8ED7: LDA.w .anim_steps,Y
#_1D8EDA: STA.w $0DC0,X

.delay_step
#_1D8EDD: LDA.w $04C5
#_1D8EE0: CMP.b #$02
#_1D8EE2: BNE .vulnerable

; !HARDCODED check for room?
#_1D8EE4: CMP.w $0C9A,X
#_1D8EE7: BEQ .vulnerable

#_1D8EE9: PHA

#_1D8EEA: LDA.b #$40
#_1D8EEC: STA.w $0E00,X

#_1D8EEF: PLA

;---------------------------------------------------------------------------------------------------

.vulnerable
#_1D8EF0: STA.w $0C9A,X

#_1D8EF3: JSR SpriteDraw_Ganon

#_1D8EF6: LDA.w $0E00,X
#_1D8EF9: BEQ .invuln_timer_over

#_1D8EFB: LDA.b #$0F
#_1D8EFD: STA.w $0DC0,X

#_1D8F00: JSR Ganon_EnableInvincibility
#_1D8F03: JMP.w Sprite_CheckDamageToAndFromLink_Bank1D

.invuln_timer_over
#_1D8F06: JSR Sprite_CheckIfActive_Bank1D

#_1D8F09: LDA.w $0E10,X
#_1D8F0C: BEQ .continue

#_1D8F0E: CMP.b #$10
#_1D8F10: BEQ .adjust_lighting_and_trans

#_1D8F12: CMP.b #$01
#_1D8F14: BNE .continue

;---------------------------------------------------------------------------------------------------

.adjust_lighting
#_1D8F16: PHX

#_1D8F17: JSL Ganon_ExtinguishTorch

#_1D8F1B: PLX

#_1D8F1C: BRA .continue

;---------------------------------------------------------------------------------------------------

.adjust_lighting_and_trans
#_1D8F1E: PHX

#_1D8F1F: JSL Ganon_ExtinguishTorch_adjust_translucency

#_1D8F23: PLX

;---------------------------------------------------------------------------------------------------

.continue
#_1D8F24: JSR Sprite_IsRightOfLink_Bank1D

; Check for Link being within 64 pixels to look forward
#_1D8F27: LDA.b $0F
#_1D8F29: ADC.b #$20
#_1D8F2B: CMP.b #$40

#_1D8F2D: LDA.b #$01
#_1D8F2F: BCC .dont_turn_head

#_1D8F31: LDA.w .direction,Y

.dont_turn_head
#_1D8F34: STA.w $0EB0,X

#_1D8F37: LDA.w $0F10,X
#_1D8F3A: BEQ .skip_recoil

#_1D8F3C: STA.w $0BA0,X

#_1D8F3F: JSR Sprite_CheckIfRecoiling_Bank1D

#_1D8F42: STZ.w $0DF0,X

#_1D8F45: RTS

.skip_recoil
#_1D8F46: LDA.w $0BA0,X
#_1D8F49: ORA.w $02E4
#_1D8F4C: BNE .skip_damage

#_1D8F4E: LDA.w $04C5
#_1D8F51: CMP.b #$02
#_1D8F53: BNE .skip_damage

#_1D8F55: JSR Sprite_CheckDamageToAndFromLink_Bank1D

;---------------------------------------------------------------------------------------------------

.skip_damage
#_1D8F58: STZ.w $0BA0,X

#_1D8F5B: LDA.w $0D80,X
#_1D8F5E: JSL JumpTableLocal

#_1D8F62: dw Ganon_Phase1_IntroduceSelf        ; 0x00
#_1D8F64: dw Ganon_Phase1_ThrowTrident         ; 0x01
#_1D8F66: dw Ganon_Phase1_WaitForTrident       ; 0x02
#_1D8F68: dw Ganon_Phase1_MakePhaseDecision    ; 0x03
#_1D8F6A: dw Ganon_Phase1_Warp                 ; 0x04
#_1D8F6C: dw Ganon_LookAround                  ; 0x05

#_1D8F6E: dw Ganon_Phase2_HoldTrident          ; 0x06
#_1D8F70: dw Ganon_Phase2_CircleOfBats         ; 0x07
#_1D8F72: dw Ganon_Phase2_LaunchSpiralBats     ; 0x08
#_1D8F74: dw Ganon_Phase2_Warp                 ; 0x09
#_1D8F76: dw Ganon_LookAround                  ; 0x0A
#_1D8F78: dw Ganon_Phase2_MakePhaseDecision    ; 0x0B

#_1D8F7A: dw Ganon_Phase3_FireBats             ; 0x0C
#_1D8F7C: dw Ganon_Phase3_Warp                 ; 0x0D
#_1D8F7E: dw Ganon_Phase3_SabotagePB           ; 0x0E
#_1D8F80: dw Ganon_Phase3_SmashFloor           ; 0x0F
#_1D8F82: dw Ganon_Phase3_DropTiles            ; 0x10

#_1D8F84: dw Ganon_Phase4_Attack               ; 0x11
#_1D8F86: dw Ganon_LookAround                  ; 0x12
#_1D8F88: dw Ganon_Phase4_Stunned              ; 0x13

;===================================================================================================
; Blue pig
;===================================================================================================
pool Ganon_Phase4_Stunned

.draw
#_1D8F8A: db $05, $0D

pool off

;---------------------------------------------------------------------------------------------------

Ganon_Phase4_Stunned:
#_1D8F8C: LDA.b #$05
#_1D8F8E: STA.w $0F50,X

#_1D8F91: LDA.b #$02
#_1D8F93: STA.w $0B6B,X

#_1D8F96: LDA.w $0DF0,X
#_1D8F99: BNE .delay

#_1D8F9B: LDA.b #$01
#_1D8F9D: STA.w $0F50,X

#_1D8FA0: LDA.b #$12
#_1D8FA2: JSR Ganon_SelectWarpLocation

#_1D8FA5: LDA.b #!SPRITE_D6
#_1D8FA7: STA.w $0E20,X

#_1D8FAA: STZ.w $0EF0,X

#_1D8FAD: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_1D8FAE: LDY.w $0DE0,X

#_1D8FB1: LDA.w .draw,Y
#_1D8FB4: STA.w $0DC0,X

#_1D8FB7: RTS

;===================================================================================================

pool Ganon_Phase4_Attack

.draw_aaa ; TODO better names
#_1D8FB8: db $06, $0E

.draw_bbb
#_1D8FBA: db $07, $0A

pool off

;---------------------------------------------------------------------------------------------------

Ganon_Phase4_Attack:
#_1D8FBC: LDY.w $0DE0,X

#_1D8FBF: LDA.w .draw_aaa,Y
#_1D8FC2: STA.w $0DC0,X

#_1D8FC5: LDA.w $0DF0,X
#_1D8FC8: BNE .delay

#_1D8FCA: LDA.b #$12
#_1D8FCC: JSR Ganon_SelectWarpLocation

#_1D8FCF: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_1D8FD0: CMP.b #$34
#_1D8FD2: PHP
#_1D8FD3: BNE .not_the_B52s

#_1D8FD5: JSR Ganon_SpawnFireBat_trailing

;---------------------------------------------------------------------------------------------------

.not_the_B52s
#_1D8FD8: PLP
#_1D8FD9: BCS .greater_than_52

#_1D8FDB: LDY.w $0DE0,X

#_1D8FDE: LDA.w .draw_bbb,Y
#_1D8FE1: STA.w $0DC0,X

.greater_than_52
#_1D8FE4: LDA.w $0DF0,X
#_1D8FE7: CMP.b #$48
#_1D8FE9: BCS .not_the_B72s

#_1D8FEB: CMP.b #$28
#_1D8FED: BCS Ganon_EnableInvincibility

.not_the_B72s
#_1D8FEF: INC.w $0BA0,X

#_1D8FF2: LSR A
#_1D8FF3: BCC Ganon_EnableInvincibility

#_1D8FF5: LDA.b #$FF
#_1D8FF7: STA.w $0DC0,X

;===================================================================================================

Ganon_EnableInvincibility:
#_1D8FFA: LDA.w $0EF0,X
#_1D8FFD: AND.b #$7F
#_1D8FFF: CMP.b #$1A
#_1D9001: BNE .exit

#_1D9003: STZ.w $0EF0,X

#_1D9006: LDA.b #$13
#_1D9008: STA.w $0D80,X

#_1D900B: LDA.b #$7F
#_1D900D: STA.w $0DF0,X

#_1D9010: LDA.b #!SPRITE_D7
#_1D9012: STA.w $0E20,X

.exit
#_1D9015: RTS

;===================================================================================================

pool Ganon_Phase3_SmashFloor

.draw
#_1D9016: db $06, $0E

pool off

;---------------------------------------------------------------------------------------------------

Ganon_Phase3_SmashFloor:
#_1D9018: LDA.w $0DF0,X
#_1D901B: BEQ .ascend

#_1D901D: DEC A
#_1D901E: BNE .delay

#_1D9020: LDA.b #$10
#_1D9022: STA.w $0D80,X

#_1D9025: LDA.b #$A0
#_1D9027: STA.w $0F80,X

#_1D902A: RTS

;---------------------------------------------------------------------------------------------------

.ascend
#_1D902B: JSR Sprite_Move_Z_Bank1D

#_1D902E: DEC.w $0F80,X
#_1D9031: BNE .delay

#_1D9033: LDA.b #$20
#_1D9035: STA.w $0DF0,X

.delay
#_1D9038: LDY.w $0DE0,X

#_1D903B: LDA.w .draw,Y
#_1D903E: STA.w $0DC0,X

#_1D9041: RTS

;===================================================================================================

pool Ganon_Phase3_DropTiles

.draw
#_1D9042: db $02, $0A

pool off

;---------------------------------------------------------------------------------------------------

Ganon_Phase3_DropTiles:
#_1D9044: STZ.w $011C
#_1D9047: STZ.w $011D

#_1D904A: LDA.w $0DF0,X
#_1D904D: BEQ .descend

#_1D904F: DEC A
#_1D9050: BNE .shake_screen

;---------------------------------------------------------------------------------------------------

#_1D9052: LDA.b #!SFX1_05
#_1D9054: STA.w $012D

#_1D9057: LDA.b #$0D
#_1D9059: JSR Ganon_SelectWarpLocation

#_1D905C: STZ.w $02E4

#_1D905F: JSR Ganon_SpawnFallingTilesOverlord

; Have we hit Ganon 4 times?
#_1D9062: LDA.w $0EC0,X
#_1D9065: CMP.b #$04
#_1D9067: BCC .exit

#_1D9069: LDA.b #$0A
#_1D906B: JSR Ganon_SelectWarpLocation

#_1D906E: LDA.b #$60
#_1D9070: STA.w $0E50,X

#_1D9073: LDA.b #$E0
#_1D9075: STA.w $0E10,X

; Message 016E
#_1D9078: LDA.b #$6E
#_1D907A: STA.w $1CF0

#_1D907D: LDA.b #$01

;===================================================================================================

#Sprite_ShowMessageMinimal_bank1D:
#_1D907F: STA.w $1CF1

#_1D9082: JSL Sprite_ShowMessageMinimal

.exit
#_1D9086: RTS

;---------------------------------------------------------------------------------------------------

.shake_screen
#_1D9087: AND.b #$01
#_1D9089: TAY

#_1D908A: LDA.w Sprite_ApplyConveyor_shake_x,Y
#_1D908D: STA.w $011C

#_1D9090: LDA.w Sprite_ApplyConveyor_shake_y,Y
#_1D9093: STA.w $011D

#_1D9096: LDA.b #$01
#_1D9098: STA.w $02E4

#_1D909B: RTS

;---------------------------------------------------------------------------------------------------

.descend
#_1D909C: JSR Sprite_Move_Z_Bank1D

#_1D909F: LDA.w $0F70,X
#_1D90A2: BPL .no_sfx

#_1D90A4: STZ.w $0F80,X
#_1D90A7: STZ.w $0F70,X

#_1D90AA: LDA.b #$60
#_1D90AC: STA.w $0DF0,X

#_1D90AF: LDA.b #!SFX1_07
#_1D90B1: STA.w $012D

#_1D90B4: LDA.b #!SFX2_0C
#_1D90B6: JSL SpriteSFX_QueueSFX2WithPan

.no_sfx
#_1D90BA: LDY.w $0DE0,X

#_1D90BD: LDA.w .draw,Y
#_1D90C0: STA.w $0DC0,X

#_1D90C3: RTS

;===================================================================================================

pool Ganon_SpawnFallingTilesOverlord

.overlord_type
#_1D90C4: db !OVERLORD_0C, !OVERLORD_0D, !OVERLORD_0E, !OVERLORD_0F

.position_x
#_1D90C8: db $18, $D8, $D8, $18

.position_y
#_1D90CC: db $28, $28, $D8, $D8

pool off

;---------------------------------------------------------------------------------------------------

Ganon_SpawnFallingTilesOverlord:
#_1D90D0: LDY.b #$07

.next_slot
#_1D90D2: LDA.w $0B00,Y
#_1D90D5: BEQ .free_slot

#_1D90D7: DEY
#_1D90D8: BPL .next_slot

#_1D90DA: RTS

;---------------------------------------------------------------------------------------------------

.free_slot
#_1D90DB: LDA.w $0EC0,X
#_1D90DE: CMP.b #$04
#_1D90E0: BCS .dont_spawn

#_1D90E2: INC.w $0EC0,X

#_1D90E5: PHX

#_1D90E6: TAX

#_1D90E7: LDA.w .overlord_type,X
#_1D90EA: STA.w $0B00,Y

#_1D90ED: LDA.w .position_x,X
#_1D90F0: STA.w $0B08,Y

; Assumes Link is in the correct quadrant.
#_1D90F3: LDA.b $23
#_1D90F5: STA.w $0B10,Y

#_1D90F8: LDA.w .position_y,X
#_1D90FB: STA.w $0B18,Y

#_1D90FE: LDA.b $21
#_1D9100: STA.w $0B20,Y

#_1D9103: LDA.b #$00
#_1D9105: STA.w $0B28,Y
#_1D9108: STA.w $0B30,Y

#_1D910B: PLX

.dont_spawn
#_1D910C: RTS

;===================================================================================================

pool Ganon_Phase3_FireBats

.draw
#_1D910D: db $05, $06, $07, $0D, $0E, $0A

pool off

;---------------------------------------------------------------------------------------------------

Ganon_Phase3_FireBats:
#_1D9113: LDA.w $0DF0,X
#_1D9116: BNE .attempt_bat_spawn

;===================================================================================================

#Ganon_Phase3_WarpSelect:
#_1D9118: LDA.b #$0D
#_1D911A: JSR Ganon_SelectWarpLocation

#_1D911D: RTS

;===================================================================================================

.attempt_bat_spawn
#_1D911E: LDY.b #$00

#_1D9120: CMP.b #$60
#_1D9122: BCS .dont_spawn_bat

#_1D9124: INY

#_1D9125: CMP.b #$48
#_1D9127: BCS .dont_spawn_bat

#_1D9129: CMP.b #$42
#_1D912B: BNE .dont_spawn_bat_but_advance_anim

#_1D912D: PHY

#_1D912E: JSR Ganon_SpawnFireBat_spiral

#_1D9131: PLY

.dont_spawn_bat_but_advance_anim
#_1D9132: INY

.dont_spawn_bat
#_1D9133: LDA.w $0DE0,X
#_1D9136: BEQ .facing_down

#_1D9138: INY
#_1D9139: INY
#_1D913A: INY

.facing_down
#_1D913B: LDA.w .draw,Y
#_1D913E: STA.w $0DC0,X

#_1D9141: LDA.w $0EF0,X
#_1D9144: AND.b #$7F
#_1D9146: CMP.b #$01
#_1D9148: BNE .exit

#_1D914A: LDA.b #$0F
#_1D914C: STA.w $0D80,X

#_1D914F: LDA.b #$18
#_1D9151: STA.w $0F80,X

#_1D9154: STZ.w $0DF0,X

.exit
#_1D9157: RTS

;===================================================================================================

pool Ganon_SpawnFireBat

.offset_y
#_1D9158: db   0, -16

.offset_x
#_1D915A: db   0,  -1

pool off

;===================================================================================================

Ganon_SpawnFireBat_trailing:
#_1D915C: LDA.b #$05
#_1D915E: BRA Ganon_SpawnFireBat

;===================================================================================================

Ganon_SpawnFireBat_spiral:
#_1D9160: LDA.b #$03

;===================================================================================================

Ganon_SpawnFireBat:
#_1D9162: STA.w $0FB5

#_1D9165: LDA.b #!SPRITE_C9
#_1D9167: LDY.b #$08
#_1D9169: JSL Sprite_SpawnDynamically_slot_limited
#_1D916D: BMI .exit

;---------------------------------------------------------------------------------------------------

#_1D916F: LDA.b #!SFX2_2A
#_1D9171: JSL SpriteSFX_QueueSFX2WithPan
#_1D9175: JSL Sprite_SetSpawnedCoordinates

#_1D9179: LDA.w $0FB5
#_1D917C: STA.w $0EC0,Y
#_1D917F: STA.w $0BA0,Y

#_1D9182: LDA.b #$03
#_1D9184: STA.w $0F50,Y

#_1D9187: LDA.b #$40
#_1D9189: STA.w $0E60,Y

#_1D918C: LDA.b #$21
#_1D918E: STA.w $0E40,Y

#_1D9191: LDA.b #$40
#_1D9193: STA.w $0CAA,Y

;---------------------------------------------------------------------------------------------------

#_1D9196: PHX

#_1D9197: LDA.w $0DE0,X
#_1D919A: TAX

#_1D919B: LDA.b $02
#_1D919D: CLC
#_1D919E: ADC.w .offset_y,X
#_1D91A1: STA.w $0D00,Y

#_1D91A4: LDA.b $03
#_1D91A6: ADC.w .offset_x,X
#_1D91A9: STA.w $0D20,Y

#_1D91AC: TYX

#_1D91AD: LDA.b #$20
#_1D91AF: JSL Sprite_ApplySpeedTowardsLink_long

#_1D91B3: PLX

;---------------------------------------------------------------------------------------------------

#_1D91B4: LDA.b #$10
#_1D91B6: STA.w $0DF0,Y

; !HARDCODED assumption of Ganon's slot
#_1D91B9: LDA.w $0D10
#_1D91BC: STA.w $0D90,Y

#_1D91BF: LDA.w $0D30
#_1D91C2: STA.w $0DA0,Y

#_1D91C5: LDA.w $0D00
#_1D91C8: STA.w $0DB0,Y

#_1D91CB: LDA.w $0D20
#_1D91CE: STA.w $0E90,Y

#_1D91D1: JMP.w Ganon_SetSpawnedEntityProperties

;---------------------------------------------------------------------------------------------------

.exit
#_1D91D4: RTS

;===================================================================================================

Ganon_Phase3_SabotagePB:
#_1D91D5: INC.w $0BA0,X

#_1D91D8: JSR Ganon_HandleAnimation_Idle

#_1D91DB: STZ.w $0ED0,X

#_1D91DE: LDA.w $0DF0,X
#_1D91E1: BNE .delay

#_1D91E3: JSL GetRandomNumber
#_1D91E7: AND.b #$01
#_1D91E9: BEQ .allow_for_pb

#_1D91EB: JMP.w Ganon_Phase3_WarpSelect

;---------------------------------------------------------------------------------------------------

.allow_for_pb
#_1D91EE: LDA.b #$7F
#_1D91F0: STA.w $0DF0,X

#_1D91F3: LDA.b #$0C
#_1D91F5: STA.w $0D80,X

#_1D91F8: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_1D91F9: AND.b #$01
#_1D91FB: BEQ .stay_visible

#_1D91FD: LDA.b #$FF
#_1D91FF: STA.w $0DC0,X

.stay_visible
#_1D9202: RTS

;===================================================================================================

Ganon_Phase2_CircleOfBats:
#_1D9203: LDA.w $0E50,X
#_1D9206: CMP.b #161
#_1D9208: BCS .hp_fine

#_1D920A: LDA.b #160
#_1D920C: STA.w $0E50,X

.hp_fine
#_1D920F: LDA.b #$28
#_1D9211: STA.w $0B0A

#_1D9214: LDA.w $0DF0,X
#_1D9217: BNE .delay

#_1D9219: LDA.b #$08
#_1D921B: STA.w $0D80,X

#_1D921E: LDA.b #$FF
#_1D9220: STA.w $0DF0,X

#_1D9223: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_1D9224: CMP.b #$C0
#_1D9226: BCS .dont_spawn_bat

#_1D9228: AND.b #$0F
#_1D922A: BNE .dont_spawn_bat

#_1D922C: JSR Ganon_SpawnSpiralBat

.dont_spawn_bat
#_1D922F: BRA Ganon_HandleTridentAndSpiral

;===================================================================================================

pool Ganon_Phase2_LaunchSpiralBats

.offset_x
#_1D9231: db  0,  0,  0,  0, -1, -1, -2, -1
#_1D9239: db  0,  0,  0,  0,  1,  2,  1,  1

.timers
#_1D9241: db 16, 48, 80, 112, 144, 176, 208

pool off

;---------------------------------------------------------------------------------------------------

Ganon_Phase2_LaunchSpiralBats:
#_1D9248: LDA.w $0E50,X
#_1D924B: CMP.b #161
#_1D924D: BCS .hp_fine

#_1D924F: LDA.b #160
#_1D9251: STA.w $0E50,X

.hp_fine
#_1D9254: LDA.w $0DF0,X
#_1D9257: BNE .adjust_bats

#_1D9259: LDA.b #$09
#_1D925B: STA.w $0D80,X

#_1D925E: LDA.b #$7F
#_1D9260: STA.w $0DF0,X

#_1D9263: JSR Ganon_HandleAnimation_Idle

;---------------------------------------------------------------------------------------------------

#_1D9266: LDY.b #$08

.next_bat
#_1D9268: LDA.b #$02
#_1D926A: STA.w $0D80,Y

#_1D926D: LDA.w .timers-1,Y
#_1D9270: STA.w $0DF0,Y

#_1D9273: DEY
#_1D9274: BNE .next_bat

#_1D9276: RTS

;---------------------------------------------------------------------------------------------------

.adjust_bats
#_1D9277: LSR A
#_1D9278: LSR A
#_1D9279: LSR A
#_1D927A: LSR A

#_1D927B: AND.b #$0F
#_1D927D: TAY

#_1D927E: LDA.w $0B0A
#_1D9281: CLC
#_1D9282: ADC.w .offset_x,Y
#_1D9285: STA.w $0B0A

;===================================================================================================

Ganon_HandleTridentAndSpiral:
#_1D9288: JSR Ganon_Phase1_AnimateTridentSpin
#_1D928B: JSR Ganon_HandleFireBatCircle

#_1D928E: RTS

;===================================================================================================

Ganon_Phase2_Warp:
#_1D928F: LDA.w $0E50,X
#_1D9292: CMP.b #161
#_1D9294: BCS .hp_fine

#_1D9296: LDA.b #160
#_1D9298: STA.w $0E50,X

.hp_fine
#_1D929B: LDA.w $0DF0,X
#_1D929E: BNE .delay_choice

#_1D92A0: LDA.b #$0A
#_1D92A2: JSR Ganon_SelectWarpLocation

#_1D92A5: RTS

.delay_choice
#_1D92A6: JSR Ganon_ShakeHead

#_1D92A9: RTS

;===================================================================================================

Ganon_Phase2_MakePhaseDecision:
#_1D92AA: INC.w $0BA0,X

#_1D92AD: JSR Ganon_HandleAnimation_Idle

#_1D92B0: LDA.w $0DF0,X
#_1D92B3: BNE .wait

;===================================================================================================

#Ganon_AdvanceToPhase2:
#_1D92B5: LDA.b #$FF
#_1D92B7: STA.w $0DF0,X

#_1D92BA: LDA.b #$07
#_1D92BC: STA.w $0D80,X

#_1D92BF: RTS

;---------------------------------------------------------------------------------------------------

.wait
#_1D92C0: AND.b #$01
#_1D92C2: BEQ .exit

#_1D92C4: LDA.b #$FF
#_1D92C6: STA.w $0DC0,X

.exit
#_1D92C9: RTS

;===================================================================================================

Ganon_Phase1_IntroduceSelf:
#_1D92CA: LDA.w $0DF0,X
#_1D92CD: BNE .let_iron_cool_before_striking

;===================================================================================================

#Ganon_ContinueWithPhase1:
#_1D92CF: LDA.b #$01
#_1D92D1: STA.w $0D80,X

#_1D92D4: LDA.b #$80
#_1D92D6: STA.w $0DF0,X

#_1D92D9: RTS

;===================================================================================================

.let_iron_cool_before_striking
#_1D92DA: CMP.b #$20
#_1D92DC: BEQ .adjust_tunes

#_1D92DE: CMP.b #$40
#_1D92E0: BNE .dont_talk

; Message 016D
#_1D92E2: LDA.b #$6D
#_1D92E4: STA.w $1CF0

#_1D92E7: LDA.b #$01
#_1D92E9: STA.w $1CF1

#_1D92EC: JSL Sprite_ShowMessageMinimal

.dont_talk
#_1D92F0: RTS

.adjust_tunes
#_1D92F1: LDA.b #!SONG_1F
#_1D92F3: STA.w $012C

#_1D92F6: RTS

;===================================================================================================

GanonTrident_Timers:
.facing_down
#_1D92F7: db $08, $07, $06, $05, $04, $03, $02, $01

.facing_up
#_1D92FF: db $08, $07, $06, $05, $04, $03, $02, $01

;===================================================================================================

GanonTridentAnimationSteps:
.facing_down
#_1D9307: db $00, $00, $01, $01, $00, $00, $01, $01

.facing_up
#_1D930F: db $08, $08, $09, $09, $08, $08, $09, $09

;===================================================================================================

pool Ganon_Phase1_ThrowTrident

.offset_x_low
#_1D9317: db  24, -16

.offset_x_high
#_1D9319: db   0,  -1

.offset_y_low
#_1D931B: db   4,   4

.offset_y_high
#_1D931D: db   0,   0

.speed_x
#_1D931F: db  32,  28,  24,  16,   0, -16, -24, -28
#_1D9327: db -32, -28, -24, -16,   0,  16,  24,  28

.speed_y
#_1D932F: db   0,  16,  24,  28,  32,  28,  24,  16
#_1D9337: db   0, -16, -24, -28, -32, -28, -24, -16

pool off

;===================================================================================================

pool Ganon_Phase1_TryAWarp

.draw
#_1D933F: db $02, $0A

pool off

;---------------------------------------------------------------------------------------------------

Ganon_Phase1_TryAWarp:
#_1D9341: CMP.b #$00
#_1D9343: BNE .delay_warp

#_1D9345: LDA.b #$05
#_1D9347: JMP.w Ganon_SelectWarpLocation

.delay_warp
#_1D934A: LDY.w $0DE0,X

#_1D934D: LDA.w .draw,Y
#_1D9350: STA.w $0DC0,X

#_1D9353: RTS

;===================================================================================================

Ganon_Phase1_ThrowTrident:
#_1D9354: LDA.w $0E50,X
#_1D9357: CMP.b #209
#_1D9359: BCS .hp_fine

#_1D935B: LDA.b #208
#_1D935D: STA.w $0E50,X

.hp_fine
#_1D9360: LDA.w $0DF0,X
#_1D9363: CMP.b #$40
#_1D9365: BCC Ganon_Phase1_TryAWarp
#_1D9367: BNE Ganon_Phase1_AnimateTridentSpin

;---------------------------------------------------------------------------------------------------

#_1D9369: STZ.w $0ED0,X

#_1D936C: LDA.b #!SPRITE_C9
#_1D936E: JSL Sprite_SpawnDynamically

#_1D9372: PHX

#_1D9373: LDA.w $0DE0,X
#_1D9376: TAX

#_1D9377: LDA.b $00
#_1D9379: CLC
#_1D937A: ADC.w .offset_x_low,X
#_1D937D: STA.w $0D10,Y

#_1D9380: LDA.b $01
#_1D9382: ADC.w .offset_x_high,X
#_1D9385: STA.w $0D30,Y

#_1D9388: LDA.b $02
#_1D938A: CLC
#_1D938B: ADC.w .offset_y_low,X
#_1D938E: STA.w $0D00,Y

#_1D9391: LDA.b $03
#_1D9393: ADC.w .offset_y_high,X
#_1D9396: STA.w $0D20,Y

#_1D9399: PLX

;---------------------------------------------------------------------------------------------------

#_1D939A: PHX
#_1D939B: PHY

#_1D939C: LDA.b #$1F
#_1D939E: JSL Sprite_ApplySpeedTowardsLink_long
#_1D93A2: JSL Sprite_ConvertVelocityToAngle

#_1D93A6: PLY

#_1D93A7: SEC
#_1D93A8: SBC.b #$02
#_1D93AA: AND.b #$0F
#_1D93AC: TAX

#_1D93AD: LDA.w .speed_x,X
#_1D93B0: STA.w $0D50,Y

#_1D93B3: LDA.w .speed_y,X
#_1D93B6: STA.w $0D40,Y

#_1D93B9: PLX

;---------------------------------------------------------------------------------------------------

#_1D93BA: LDA.b #$70
#_1D93BC: STA.w $0DF0,Y

#_1D93BF: LDA.b #$02
#_1D93C1: STA.w $0EC0,Y

#_1D93C4: LDA.b #$01
#_1D93C6: STA.w $0F50,Y

#_1D93C9: LDA.b #$04
#_1D93CB: STA.w $0E40,Y

#_1D93CE: LDA.b #$84
#_1D93D0: STA.w $0CAA,Y

#_1D93D3: LDA.b #$02
#_1D93D5: STA.w $0DE0,Y

#_1D93D8: JMP.w Ganon_SetSpawnedEntityProperties

;===================================================================================================

Ganon_Phase1_AnimateTridentSpin:
#_1D93DB: LDA.w $0DF0,X
#_1D93DE: LSR A
#_1D93DF: LSR A
#_1D93E0: AND.b #$07

#_1D93E2: LDY.w $0DE0,X
#_1D93E5: BEQ .facing_down

#_1D93E7: CLC
#_1D93E8: ADC.b #$08

.facing_down
#_1D93EA: TAY

#_1D93EB: LDA.w GanonTrident_Timers,Y
#_1D93EE: STA.w $0ED0,X

#_1D93F1: LDA.w GanonTridentAnimationSteps,Y
#_1D93F4: STA.w $0DC0,X

#_1D93F7: JSR SwishEvery16Frames

#_1D93FA: RTS

;===================================================================================================

pool Ganon_Phase1_WaitForTrident

.draw
#_1D93FB: db $00, $08

pool off

;---------------------------------------------------------------------------------------------------

Ganon_Phase1_WaitForTrident:
#_1D93FD: LDA.w $0E50,X
#_1D9400: CMP.b #209
#_1D9402: BCS .hp_fine

#_1D9404: LDA.b #208
#_1D9406: STA.w $0E50,X

.hp_fine
#_1D9409: LDY.w $0DE0,X

#_1D940C: LDA.w .draw,Y
#_1D940F: STA.w $0DC0,X

#_1D9412: LDA.w $0DF0,X
#_1D9415: BEQ .exit

#_1D9417: INC.w $0BA0,X
#_1D941A: AND.b #$01
#_1D941C: BEQ .exit

; be invisible
#_1D941E: LDA.b #$FF
#_1D9420: STA.w $0DC0,X

.exit
#_1D9423: RTS

;===================================================================================================

pool Ganon_Phase1_MakePhaseDecision

.timer
#_1D9424: db   9,  10

.draw
#_1D9426: db $02, $0A

pool off

;---------------------------------------------------------------------------------------------------

Ganon_Phase1_MakePhaseDecision:
#_1D9428: LDA.w $0E50,X
#_1D942B: CMP.b #209
#_1D942D: BCS .hp_fine

#_1D942F: LDA.b #208
#_1D9431: STA.w $0E50,X

;---------------------------------------------------------------------------------------------------

.hp_fine
#_1D9434: LDA.w $0DF0,X
#_1D9437: BNE .delay_animation

#_1D9439: LDA.b #$06
#_1D943B: STA.w $0D80,X

#_1D943E: LDA.b #127
#_1D9440: STA.w $0DF0,X

;===================================================================================================

#Ganon_HandleAnimation_Idle:
#_1D9443: LDY.w $0DE0,X

#_1D9446: LDA.w .timer,Y
#_1D9449: STA.w $0ED0,X

;===================================================================================================

#Ganon_HandleAnimation_IdleUntimed:
#_1D944C: LDY.w $0DE0,X

#_1D944F: LDA.w .draw,Y
#_1D9452: STA.w $0DC0,X

#_1D9455: RTS

;===================================================================================================

.delay_animation
#_1D9456: JSR Ganon_Phase1_AnimateTridentSpin

#_1D9459: RTS

;===================================================================================================

Ganon_HeadShakeStep:
#_1D945A: db $00, $00, $00, $01
#_1D945E: db $02, $02, $02, $01
#_1D9462: db $00, $00, $00, $01
#_1D9466: db $01, $01, $01, $01
#_1D946A: db $00, $10

;===================================================================================================

Ganon_Phase1_Warp:
#_1D946C: LDA.w $0E50,X
#_1D946F: CMP.b #209
#_1D9471: BCS .hp_fine

#_1D9473: LDA.b #208
#_1D9475: STA.w $0E50,X

.hp_fine
#_1D9478: LDA.w $0DF0,X
#_1D947B: BNE Ganon_ShakeHead

#_1D947D: LDA.b #$05

;===================================================================================================
; TODO describe params
;===================================================================================================
Ganon_SelectWarpLocation:
#_1D947F: STA.b $00

#_1D9481: LDA.w $0E30,X
#_1D9484: ASL A
#_1D9485: ASL A
#_1D9486: STA.b $01

#_1D9488: JSL GetRandomNumber
#_1D948C: AND.b #$03
#_1D948E: ORA.b $01
#_1D9490: TAY

#_1D9491: LDA.w Ganon_WarpLocation_ID,Y
#_1D9494: STA.w $0E30,X

#_1D9497: TAY

#_1D9498: LDA.w Ganon_WarpLocation_X,Y
#_1D949B: STA.l $7FFD5C

#_1D949F: LDA.w Ganon_WarpLocation_Y,Y
#_1D94A2: STA.l $7FFD68

#_1D94A6: LDA.b $00
#_1D94A8: STA.w $0D80,X

#_1D94AB: JSR Sprite_ZeroVelocity_XY_Bank1D

#_1D94AE: LDA.b #$30
#_1D94B0: STA.w $0DF0,X

#_1D94B3: LDA.b #!SFX3_28
#_1D94B5: JSL SpriteSFX_QueueSFX3WithPan

#_1D94B9: RTS

;===================================================================================================

Ganon_ShakeHead:
#_1D94BA: LSR A ; /8
#_1D94BB: LSR A
#_1D94BC: LSR A
#_1D94BD: TAY

#_1D94BE: LDA.w Ganon_HeadShakeStep,Y
#_1D94C1: STA.w $0EB0,X

#_1D94C4: RTS

;===================================================================================================

Ganon_WarpLocation_X:
#_1D94C5: db $30, $50, $A0, $C0, $40, $60, $90, $B0

Ganon_WarpLocation_Y:
#_1D94CD: db $40, $30, $30, $40, $B0, $C0, $C0, $B0

Ganon_WarpLocation_ID:
#_1D94D5: db $04, $05, $06, $07, $04, $05, $06, $07
#_1D94DD: db $04, $05, $06, $07, $04, $05, $06, $07
#_1D94E5: db $00, $01, $02, $03, $00, $01, $02, $03
#_1D94ED: db $00, $01, $02, $03, $00, $01, $02, $03

;===================================================================================================

Ganon_Phase3_Warp:
#_1D94F5: LDA.b #$64
#_1D94F7: STA.w $0E50,X

;---------------------------------------------------------------------------------------------------

Ganon_LookAround:
#_1D94FA: INC.w $0BA0,X

#_1D94FD: LDA.l $7FFD5C
#_1D9501: STA.b $04

#_1D9503: LDA.w $0D30,X
#_1D9506: STA.b $05

#_1D9508: LDA.l $7FFD68
#_1D950C: STA.b $06

#_1D950E: LDA.w $0D20,X
#_1D9511: STA.b $07

#_1D9513: JSR Ganon_AttemptTridentCatch
#_1D9516: BCS Ganon_MoveWithTrident

;---------------------------------------------------------------------------------------------------

#_1D9518: LDA.w $0E30,X
#_1D951B: LSR A
#_1D951C: LSR A
#_1D951D: STA.w $0DE0,X

#_1D9520: LDA.w $0D80,X
#_1D9523: CMP.b #$05
#_1D9525: BEQ .phase_1

#_1D9527: LDA.w $0E50,X
#_1D952A: CMP.b #161
#_1D952C: BCS .phase_2

#_1D952E: CMP.b #97
#_1D9530: BCS .phase_3

;---------------------------------------------------------------------------------------------------

.phase_4
#_1D9532: LDA.b #$11
#_1D9534: STA.w $0D80,X

#_1D9537: LDA.b #104
#_1D9539: STA.w $0DF0,X

#_1D953C: RTS

;---------------------------------------------------------------------------------------------------

.phase_2
#_1D953D: LDA.b #$0B
#_1D953F: STA.w $0D80,X

#_1D9542: LDA.b #40
#_1D9544: STA.w $0DF0,X

#_1D9547: RTS

;---------------------------------------------------------------------------------------------------

.phase_3
#_1D9548: LDA.b #$0E
#_1D954A: STA.w $0D80,X

#_1D954D: LDA.b #40
#_1D954F: STA.w $0DF0,X

#_1D9552: RTS

;---------------------------------------------------------------------------------------------------

.phase_1
#_1D9553: LDA.b #$02
#_1D9555: STA.w $0D80,X

#_1D9558: LDA.b #32
#_1D955A: STA.w $0DF0,X

#_1D955D: RTS

;===================================================================================================

UNREACHABLE_1D955E:
#_1D955E: RTS

;===================================================================================================
; TODO ANALYZE
;===================================================================================================
Ganon_MoveWithTrident:
#_1D955F: LDA.b #$20
#_1D9561: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1D9565: JSR GanonTrident_AdjustVelocity
#_1D9568: JSR Sprite_Move_XY_Bank1D

#_1D956B: LDA.w $0DF0,X
#_1D956E: BEQ .invisible

#_1D9570: LDA.b $1A
#_1D9572: AND.b #$01
#_1D9574: BNE .invisible

#_1D9576: JSR Ganon_HandleAnimation_IdleUntimed
#_1D9579: BRA .continue

.invisible
#_1D957B: LDA.b #$FF
#_1D957D: STA.w $0DC0,X

#_1D9580: RTS

;---------------------------------------------------------------------------------------------------

.continue
#_1D9581: LDA.b $1A
#_1D9583: AND.b #$07
#_1D9585: BNE .exit

#_1D9587: LDA.b #!SPRITE_D6
#_1D9589: JSL Sprite_SpawnDynamically
#_1D958D: BMI .exit

#_1D958F: JSL Sprite_SetSpawnedCoordinates

#_1D9593: LDA.b #$18
#_1D9595: STA.w $0BA0,Y
#_1D9598: STA.w $0DF0,Y

#_1D959B: LDA.b #$FF
#_1D959D: STA.w $0D80,Y

#_1D95A0: LDA.w $0DC0,X
#_1D95A3: STA.w $0DC0,Y

#_1D95A6: LDA.w $0EB0,X
#_1D95A9: STA.w $0EB0,Y

.exit
#_1D95AC: RTS

;===================================================================================================

Ganon_Phase2_HoldTrident:
#_1D95AD: LDA.w $0E50,X
#_1D95B0: CMP.b #209
#_1D95B2: BCS .hp_fine

#_1D95B4: LDA.b #208
#_1D95B6: STA.w $0E50,X

.hp_fine
#_1D95B9: LDA.w $0DF0,X
#_1D95BC: BNE .delay

#_1D95BE: LDA.w $0E50,X
#_1D95C1: CMP.b #$D1
#_1D95C3: BCC .still_phase1

;---------------------------------------------------------------------------------------------------

.change_to_phase2
#_1D95C5: JMP.w Ganon_ContinueWithPhase1

.still_phase1
#_1D95C8: JMP.w Ganon_AdvanceToPhase2

.delay
#_1D95CB: JMP.w Ganon_ShakeHead

;===================================================================================================

pool SpriteDraw_Ganon

.offset_x
#_1D95CE: db  18,  -8,   8,  -8,   8, -18, -18,  18,  -8,   8,  -8,   8
#_1D95DA: db  18,  -8,   8,  -8,   8, -18, -18,  18,  -8,   8,  -8,   8
#_1D95E6: db  16,  -8,   8,  -8,   8, -18, -18,  16,  -8,   8, -11,  11
#_1D95F2: db  16,  -8,   8,  -8,   8, -18, -18,  16,  -8,   8, -11,  11
#_1D95FE: db  16,  -8,   8,  -8,   8, -18, -18,  16,  -8,   8, -11,  11
#_1D960A: db  18,  -8,   8,  -8,   8, -18, -18,  18,  -8,   8,  -8,   8
#_1D9616: db  18,  -8,   8,  -8,   8, -18, -18,  18,  -8,   8,  -8,   8
#_1D9622: db  18,  -8,   8,  -8,   8, -18, -18,  18,  -8,   8, -11,  11
#_1D962E: db  -8,   8,  -8,   8,  -8,   8,  -8,   8, -18, -18,  18,  18
#_1D963A: db  -8,   8,  -8,   8,  -8,   8,  -8,   8, -18, -18,  18,  18
#_1D9646: db  -8,   8,  -8,   8,  -8,   8, -10,  10, -18, -18,  18,  18
#_1D9652: db  -8,   8,  -8,   8,  -8,   8, -10,  10, -18, -18,  18,  18
#_1D965E: db  -8,   8,  -8,   8,  -8,   8, -10,  10, -18, -18,  18,  18
#_1D966A: db  -8,   8,  -8,   8,  -8,   8,  -8,   8, -18, -18,  18,  18
#_1D9676: db  -8,   8,  -8,   8,  -8,   8,  -8,   8, -18, -18,  18,  18
#_1D9682: db  -7,  -8,   8,  -8,   8,  -9,   8, -14, -14,  -8,   8,   8
#_1D968E: db  -8,   8,  -8,   8, -18, -18,  18,  18,  -8,   8, -11,  11

;---------------------------------------------------------------------------------------------------

.offset_y
#_1D969A: db  -8, -16, -16, -13, -13,  -9,  -1, -16,   3,   3,   8,   8
#_1D96A6: db  -8, -16, -16, -13, -13,  -9,  -1, -16,   3,   3,   8,   8
#_1D96B2: db   5, -10, -10, -13, -13,  -7,   1,  -3,   3,   3,   8,   8
#_1D96BE: db   5, -10, -10, -13, -13,  -7,   1,  -3,   3,   3,   8,   8
#_1D96CA: db   5, -10, -10, -13, -13,  -7,   1,  -3,   3,   3,   8,   8
#_1D96D6: db  -1, -16, -16, -13, -13,  -9,  -1,  -9,   3,   3,   8,   8
#_1D96E2: db -10, -16, -16, -13, -13, -18, -10, -18,   3,   3,   8,   8
#_1D96EE: db   1, -10, -10, -13, -13,  -7,   1,  -7,   3,   3,   8,   8
#_1D96FA: db -12, -12,   4,   4, -18, -18,  10,  10, -16,  -8,  -4,   4
#_1D9706: db -12, -12,   4,   4, -18, -18,  10,  10, -16,  -8,  -4,   4
#_1D9712: db -12, -12,   4,   4, -12, -12,  10,  10,  -4,   4,  -4,   4
#_1D971E: db -12, -12,   4,   4, -12, -12,  10,  10,  -4,   4,  -4,   4
#_1D972A: db -12, -12,   4,   4, -12, -12,  10,  10,  -4,   4,  -4,   4
#_1D9736: db -12, -12,   4,   4, -18, -18,  10,  10,  -4,   4,  -4,   4
#_1D9742: db -12, -12,   4,   4, -18, -18,  10,  10, -16,  -8, -16,  -8
#_1D974E: db  -7, -12, -12,   4,   4,   7,  13, -11,  -4, -16, -16, -16
#_1D975A: db -10, -10, -13, -13,  -7,  -7,  -7,  -7,   3,   3,   8,   8

;---------------------------------------------------------------------------------------------------

.char
#_1D9766: db $16, $00, $00, $02, $02, $08, $18, $06, $22, $22, $20, $20
#_1D9772: db $46, $00, $00, $02, $02, $08, $18, $36, $22, $22, $20, $20
#_1D977E: db $1A, $00, $00, $04, $04, $38, $48, $0A, $24, $24, $20, $20
#_1D978A: db $1A, $40, $42, $04, $04, $38, $48, $0A, $24, $24, $20, $20
#_1D9796: db $1A, $42, $40, $04, $04, $38, $48, $0A, $24, $24, $20, $20
#_1D97A2: db $18, $00, $00, $02, $02, $08, $18, $08, $22, $22, $20, $20
#_1D97AE: db $16, $6A, $6A, $0E, $0E, $06, $16, $06, $22, $22, $20, $20
#_1D97BA: db $48, $00, $00, $04, $04, $38, $48, $38, $24, $24, $20, $20
#_1D97C6: db $4E, $4E, $6E, $6E, $6C, $6C, $A2, $A2, $0C, $1C, $3C, $4C
#_1D97D2: db $4E, $4E, $6E, $6E, $6C, $6C, $A2, $A2, $3A, $4A, $3C, $4C
#_1D97DE: db $84, $84, $A4, $A4, $A0, $A0, $A2, $A2, $3C, $4C, $3C, $4C
#_1D97EA: db $84, $84, $A4, $A4, $80, $82, $A2, $A2, $3C, $4C, $3C, $4C
#_1D97F6: db $84, $84, $A4, $A4, $82, $80, $A2, $A2, $3C, $4C, $3C, $4C
#_1D9802: db $4E, $4E, $6E, $6E, $6C, $6C, $A2, $A2, $3C, $4C, $3C, $4C
#_1D980E: db $4E, $4E, $6E, $6E, $6C, $6C, $A2, $A2, $0C, $1C, $0C, $1C
#_1D981A: db $E0, $C6, $C8, $E6, $E8, $20, $20, $08, $18, $C0, $C2, $C2
#_1D9826: db $00, $00, $CE, $CE, $EC, $EC, $EC, $EC, $EE, $EE, $C4, $C4

;---------------------------------------------------------------------------------------------------

.animstate_head
#_1D9832: db $01, $01, $01, $01, $01, $01, $0F, $01
#_1D983A: db $04, $04, $04, $04, $04, $04, $04, $0F
#_1D9842: db $0F

;---------------------------------------------------------------------------------------------------

.prop
#_1D9843: db $4C, $0C, $4C, $0A, $4A, $0C, $0C, $4C, $0A, $4A, $0C, $4C
#_1D984F: db $4C, $0C, $4C, $0A, $4A, $0C, $0C, $4C, $0A, $4A, $0C, $4C
#_1D985B: db $4C, $0C, $4C, $0A, $4A, $0C, $0C, $4C, $0A, $4A, $0C, $4C
#_1D9867: db $4C, $0C, $0C, $0A, $4A, $0C, $0C, $4C, $0A, $4A, $0C, $4C
#_1D9873: db $4C, $4C, $4C, $0A, $4A, $0C, $0C, $4C, $0A, $4A, $0C, $4C
#_1D987F: db $4C, $0C, $4C, $0A, $4A, $0C, $0C, $4C, $0A, $4A, $0C, $4C
#_1D988B: db $4C, $0C, $4C, $0A, $4A, $0C, $0C, $4C, $0A, $4A, $0C, $4C
#_1D9897: db $4C, $0C, $4C, $0A, $4A, $0C, $0C, $4C, $0A, $4A, $0C, $4C
#_1D98A3: db $0A, $4A, $0A, $4A, $0C, $4C, $0C, $4C, $0C, $0C, $4C, $4C
#_1D98AF: db $0A, $4A, $0A, $4A, $0C, $4C, $0C, $4C, $0C, $0C, $4C, $4C
#_1D98BB: db $0A, $4A, $0A, $4A, $0C, $4C, $0C, $4C, $0C, $0C, $4C, $4C
#_1D98C7: db $0A, $4A, $0A, $4A, $0C, $0C, $0C, $4C, $0C, $0C, $4C, $4C
#_1D98D3: db $0A, $4A, $0A, $4A, $4C, $4C, $0C, $4C, $0C, $0C, $4C, $4C
#_1D98DF: db $0A, $4A, $0A, $4A, $0C, $4C, $0C, $4C, $0C, $0C, $4C, $4C
#_1D98EB: db $0A, $4A, $0A, $4A, $0C, $4C, $0C, $4C, $0C, $0C, $4C, $4C
#_1D98F7: db $0C, $0A, $0A, $0A, $0A, $0C, $4C, $0C, $0C, $0C, $0C, $0C
#_1D9903: db $0C, $4C, $0A, $4A, $0C, $0C, $4C, $4C, $0A, $4A, $0C, $4C

pool off

;===================================================================================================

Trident_OAMGroups:
; group00
#_1D990F: dw  10, -10 : db $64, $08, $00, $00
#_1D9917: dw   5, -15 : db $64, $08, $00, $00
#_1D991F: dw   0, -20 : db $64, $08, $00, $00
#_1D9927: dw  -5, -25 : db $64, $08, $00, $00
#_1D992F: dw -18, -38 : db $44, $08, $00, $02

; group01
#_1D9937: dw   1,  -4 : db $65, $08, $00, $00
#_1D993F: dw   1, -11 : db $65, $08, $00, $00
#_1D9947: dw   1, -18 : db $65, $08, $00, $00
#_1D994F: dw   1, -25 : db $65, $08, $00, $00
#_1D9957: dw  -3, -40 : db $62, $08, $00, $02

; group02
#_1D995F: dw  -8,  -9 : db $64, $48, $00, $00
#_1D9967: dw  -3, -14 : db $64, $48, $00, $00
#_1D996F: dw   3, -20 : db $64, $48, $00, $00
#_1D9977: dw   9, -26 : db $64, $48, $00, $00
#_1D997F: dw  12, -37 : db $44, $48, $00, $02

; group03
#_1D9987: dw -10, -20 : db $74, $48, $00, $00
#_1D998F: dw  -3, -20 : db $74, $48, $00, $00
#_1D9997: dw   4, -20 : db $74, $48, $00, $00
#_1D999F: dw  11, -20 : db $74, $48, $00, $00
#_1D99A7: dw  18, -23 : db $60, $48, $00, $02

; group04
#_1D99AF: dw -10, -30 : db $64, $C8, $00, $00
#_1D99B7: dw  -4, -24 : db $64, $C8, $00, $00
#_1D99BF: dw   2, -18 : db $64, $C8, $00, $00
#_1D99C7: dw   8, -12 : db $64, $C8, $00, $00
#_1D99CF: dw  12,  -8 : db $44, $C8, $00, $02

; group05
#_1D99D7: dw   1, -32 : db $65, $88, $00, $00
#_1D99DF: dw   1, -25 : db $65, $88, $00, $00
#_1D99E7: dw   1, -18 : db $65, $88, $00, $00
#_1D99EF: dw   1, -11 : db $65, $88, $00, $00
#_1D99F7: dw  -3,  -5 : db $62, $88, $00, $02

; group06
#_1D99FF: dw  13, -30 : db $64, $88, $00, $00
#_1D9A07: dw   8, -25 : db $64, $88, $00, $00
#_1D9A0F: dw   2, -19 : db $64, $88, $00, $00
#_1D9A17: dw  -4, -13 : db $64, $88, $00, $00
#_1D9A1F: dw -16,  -9 : db $44, $88, $00, $02

; group07
#_1D9A27: dw  14, -20 : db $74, $08, $00, $00
#_1D9A2F: dw   7, -20 : db $74, $08, $00, $00
#_1D9A37: dw   0, -20 : db $74, $08, $00, $00
#_1D9A3F: dw  -7, -20 : db $74, $08, $00, $00
#_1D9A47: dw -21, -23 : db $60, $08, $00, $02

; group08
#_1D9A4F: dw  13, -30 : db $64, $88, $00, $00
#_1D9A57: dw   8, -25 : db $64, $88, $00, $00
#_1D9A5F: dw   2, -19 : db $64, $88, $00, $00
#_1D9A67: dw  -4, -13 : db $64, $88, $00, $00
#_1D9A6F: dw -16,  -9 : db $44, $88, $00, $02

; group09
#_1D9A77: dw -10, -30 : db $64, $C8, $00, $00
#_1D9A7F: dw  -4, -24 : db $64, $C8, $00, $00
#_1D9A87: dw  -4, -24 : db $64, $C8, $00, $00
#_1D9A8F: dw  -4, -24 : db $64, $C8, $00, $00
#_1D9A97: dw  -4, -24 : db $64, $C8, $00, $00

;===================================================================================================

GanonTridentOAM_offset_x:
#_1D9A9F: db  24,   0, -16,  -1,   0
#_1D9AA4: db   0,  16,   0,  -8,  -1

GanonTridentOAM_offset_y:
#_1D9AA9: db   4,   0,   4,   0,  16
#_1D9AAE: db   0,  21,   0,  19,   0

;===================================================================================================

GanonHeadOAM_char:
#_1D9AB3: db $40, $42, $00, $00
#_1D9AB7: db $42, $40, $82, $80
#_1D9ABB: db $A0, $A0, $80, $82

GanonHeadOAM_prop:
#_1D9ABF: db $00, $00, $00, $40
#_1D9AC3: db $40, $40, $40, $40
#_1D9AC7: db $00, $40, $00, $00

;===================================================================================================

Ganon_ArmOAMGroups:
#_1D9ACB: dw  16,  -3 : db $0A, $4C, $00, $02
#_1D9AD3: dw  16,   5 : db $1A, $4C, $00, $02

;===================================================================================================

DontDrawGanon:
#_1D9ADB: JSR Sprite_PrepOAMCoord_Bank1D

#_1D9ADE: RTS

;---------------------------------------------------------------------------------------------------

SpriteDraw_Ganon:
#_1D9ADF: LDA.w $0DC0,X
#_1D9AE2: BMI DontDrawGanon

#_1D9AE4: LDA.w $0D80,X
#_1D9AE7: CMP.b #$13
#_1D9AE9: BEQ .draw_ganon

#_1D9AEB: LDA.w $0F10,X
#_1D9AEE: BNE .draw_ganon

#_1D9AF0: LDA.w $04C5
#_1D9AF3: BEQ DontDrawGanon

;---------------------------------------------------------------------------------------------------

.draw_ganon
#_1D9AF5: JSR SpriteDraw_GanonTrident
#_1D9AF8: JSR Sprite_PrepOAMCoord_Bank1D

#_1D9AFB: LDA.w $0DC0,X

#_1D9AFE: ASL A ; x8
#_1D9AFF: ASL A
#_1D9B00: ASL A

#_1D9B01: ADC.w $0DC0,X ; +4
#_1D9B04: ADC.w $0DC0,X
#_1D9B07: ADC.w $0DC0,X
#_1D9B0A: ADC.w $0DC0,X

#_1D9B0D: STA.b $06

#_1D9B0F: PHX

#_1D9B10: LDX.b #$00
#_1D9B12: LDY.b #$14

.next_ganon_object
#_1D9B14: PHX

#_1D9B15: TXA
#_1D9B16: CLC
#_1D9B17: ADC.b $06
#_1D9B19: TAX

#_1D9B1A: LDA.b $00
#_1D9B1C: CLC
#_1D9B1D: ADC.w .offset_x,X
#_1D9B20: STA.b ($90),Y

#_1D9B22: LDA.b $02
#_1D9B24: CLC
#_1D9B25: ADC.w .offset_y,X
#_1D9B28: INY
#_1D9B29: STA.b ($90),Y

#_1D9B2B: LDA.w .char,X
#_1D9B2E: INY
#_1D9B2F: STA.b ($90),Y

#_1D9B31: LDA.b $05
#_1D9B33: AND.b #$0F
#_1D9B35: CMP.b #$05
#_1D9B37: LDA.w .prop,X
#_1D9B3A: BCC .on_screen

#_1D9B3C: AND.b #$F0

.on_screen
#_1D9B3E: ORA.b $05
#_1D9B40: INY
#_1D9B41: STA.b ($90),Y

#_1D9B43: PHY

#_1D9B44: TYA
#_1D9B45: LSR A
#_1D9B46: LSR A
#_1D9B47: TAY

#_1D9B48: LDA.b #$02
#_1D9B4A: STA.b ($92),Y

#_1D9B4C: PLY
#_1D9B4D: INY

#_1D9B4E: PLX
#_1D9B4F: INX
#_1D9B50: CPX.b #$0C
#_1D9B52: BNE .next_ganon_object

;---------------------------------------------------------------------------------------------------

#_1D9B54: PLX
#_1D9B55: LDY.w $0DC0,X

#_1D9B58: LDA.w .animstate_head,Y
#_1D9B5B: CMP.b #$0F
#_1D9B5D: BEQ .skip_head

#_1D9B5F: ASL A
#_1D9B60: ASL A
#_1D9B61: CLC
#_1D9B62: ADC.b #$14
#_1D9B64: TAY

#_1D9B65: INY
#_1D9B66: INY

#_1D9B67: PHX
#_1D9B68: PHY

#_1D9B69: LDA.w $0EB0,X
#_1D9B6C: ASL A

#_1D9B6D: LDY.w $0DE0,X
#_1D9B70: BEQ .facing_up

#_1D9B72: CLC
#_1D9B73: ADC.b #$06

.facing_up
#_1D9B75: TAX

#_1D9B76: PLY
#_1D9B77: LDA.w GanonHeadOAM_char+0,X
#_1D9B7A: STA.b ($90),Y

#_1D9B7C: INY

#_1D9B7D: LDA.b ($90),Y
#_1D9B7F: AND.b #$3F
#_1D9B81: ORA.w GanonHeadOAM_prop+0,X
#_1D9B84: STA.b ($90),Y

#_1D9B86: INY
#_1D9B87: INY
#_1D9B88: INY

#_1D9B89: LDA.w GanonHeadOAM_char+1,X
#_1D9B8C: STA.b ($90),Y

#_1D9B8E: INY

#_1D9B8F: LDA.b ($90),Y
#_1D9B91: AND.b #$3F
#_1D9B93: ORA.w GanonHeadOAM_prop+1,X
#_1D9B96: STA.b ($90),Y

#_1D9B98: PLX

;---------------------------------------------------------------------------------------------------

.skip_head
#_1D9B99: LDA.b $11
#_1D9B9B: BEQ .skip_cleanup

#_1D9B9D: LDY.b #$FF
#_1D9B9F: LDA.b #$09
#_1D9BA1: JSL Sprite_CorrectOAMEntries_long

;---------------------------------------------------------------------------------------------------

.skip_cleanup
#_1D9BA5: LDA.w $0ED0,X
#_1D9BA8: CMP.b #$09
#_1D9BAA: BNE .skip_arm

#_1D9BAC: REP #$20

#_1D9BAE: LDA.w #Ganon_ArmOAMGroups
#_1D9BB1: STA.b $08

; !HARDCODED OAM slots
#_1D9BB3: LDA.w #$0828
#_1D9BB6: STA.b $90

#_1D9BB8: LDA.w #$0A2A
#_1D9BBB: STA.b $92

#_1D9BBD: SEP #$20

#_1D9BBF: LDA.b #$02
#_1D9BC1: JSR Sprite_DrawMultiple_Bank1D

;---------------------------------------------------------------------------------------------------

.skip_arm
#_1D9BC4: LDA.w $0F70,X
#_1D9BC7: SEC
#_1D9BC8: SBC.b #$01
#_1D9BCA: STA.b $0E

#_1D9BCC: LDA.b #$00
#_1D9BCE: SBC.b #$00
#_1D9BD0: STA.b $0F

#_1D9BD2: LSR A
#_1D9BD3: LSR A
#_1D9BD4: LSR A
#_1D9BD5: TAY

#_1D9BD6: CPY.b #$04
#_1D9BD8: BCC .is_fine

#_1D9BDA: LDY.b #$04

;---------------------------------------------------------------------------------------------------

.is_fine
#_1D9BDC: LDA.w SpriteDraw_BigShadow_data_offset,Y
#_1D9BDF: STA.b $00
#_1D9BE1: STZ.b $01

#_1D9BE3: REP #$20

#_1D9BE5: LDA.w $0FDA
#_1D9BE8: CLC
#_1D9BE9: ADC.b $0E
#_1D9BEB: STA.w $0FDA

; !HARDCODED oam slots
#_1D9BEE: LDA.w #$09F4
#_1D9BF1: STA.b $90

#_1D9BF3: LDA.w #$0A9D
#_1D9BF6: STA.b $92

#_1D9BF8: LDA.w #SpriteDraw_BigShadow_oam_groups
#_1D9BFB: CLC
#_1D9BFC: ADC.b $00
#_1D9BFE: STA.b $08

;---------------------------------------------------------------------------------------------------

#_1D9C00: SEP #$20

#_1D9C02: LDA.w $0F50,X
#_1D9C05: PHA

#_1D9C06: STZ.w $0F50,X

#_1D9C09: LDA.b #$30
#_1D9C0B: STA.w $0B89,X

#_1D9C0E: LDA.b #$03
#_1D9C10: JSR Sprite_DrawMultiple_Bank1D

#_1D9C13: PLA
#_1D9C14: STA.w $0F50,X

#_1D9C17: JSL Sprite_Get16BitCoords_long

#_1D9C1B: RTS

;===================================================================================================

SpriteDraw_GanonTrident:
#_1D9C1C: LDA.b #$00
#_1D9C1E: XBA
#_1D9C1F: LDA.w $0ED0,X
#_1D9C22: BEQ .exit

#_1D9C24: DEC A

#_1D9C25: REP #$20

#_1D9C27: ASL A ; *8
#_1D9C28: ASL A
#_1D9C29: ASL A
#_1D9C2A: STA.b $00

#_1D9C2C: ASL A ; *32
#_1D9C2D: ASL A
#_1D9C2E: CLC
#_1D9C2F: ADC.b $00 ; so *40

#_1D9C31: CLC
#_1D9C32: ADC.w #Trident_OAMGroups
#_1D9C35: STA.b $08

;---------------------------------------------------------------------------------------------------

#_1D9C37: SEP #$20

#_1D9C39: LDY.b #$06

#_1D9C3B: LDA.w $0ED0,X
#_1D9C3E: CMP.b #$09
#_1D9C40: BEQ .continue

#_1D9C42: LDY.b #$08
#_1D9C44: BCS .continue

#_1D9C46: LDA.w $0DE0,X
#_1D9C49: ASL A
#_1D9C4A: TAY

;---------------------------------------------------------------------------------------------------

.continue
#_1D9C4B: REP #$20

#_1D9C4D: LDA.w $0FD8
#_1D9C50: CLC
#_1D9C51: ADC.w GanonTridentOAM_offset_x,Y
#_1D9C54: STA.w $0FD8

#_1D9C57: LDA.w $0FDA
#_1D9C5A: CLC
#_1D9C5B: ADC.w GanonTridentOAM_offset_y,Y
#_1D9C5E: STA.w $0FDA

#_1D9C61: SEP #$20

#_1D9C63: LDA.w $0B89,X
#_1D9C66: PHA

#_1D9C67: AND.b #$F0
#_1D9C69: STA.w $0B89,X

#_1D9C6C: LDA.b #$05
#_1D9C6E: JSR Sprite_DrawMultiple_Bank1D

#_1D9C71: PLA
#_1D9C72: STA.w $0B89,X

#_1D9C75: JSL Sprite_Get16BitCoords_long

.exit
#_1D9C79: RTS

;===================================================================================================

Swamola_SegmentsIndex:
#_1D9C7A: db $00, $20, $40, $60, $80, $A0

;---------------------------------------------------------------------------------------------------

SpritePrep_Swamola_InitializeSegments:
#_1D9C80: PHX
#_1D9C81: TXY

#_1D9C82: LDA.w Swamola_SegmentsIndex,X
#_1D9C85: TAX

#_1D9C86: LDA.b #$1F
#_1D9C88: STA.b $00

.next_segment
#_1D9C8A: LDA.w $0D10,Y
#_1D9C8D: STA.l $7FFA5C,X

#_1D9C91: LDA.w $0D30,Y
#_1D9C94: STA.l $7FFB1C,X

#_1D9C98: LDA.w $0D00,Y
#_1D9C9B: STA.l $7FFBDC,X

#_1D9C9F: LDA.w $0D20,Y
#_1D9CA2: STA.l $7FFC9C,X

#_1D9CA6: INX

#_1D9CA7: DEC.b $00
#_1D9CA9: BPL .next_segment

#_1D9CAB: PLX

#_1D9CAC: RTL

;===================================================================================================

UNREACHABLE_1D9CAD:
#_1D9CAD: db $00, $10, $F0

;===================================================================================================

Sprite_CF_Swamola:
#_1D9CB0: LDA.w $0D80,X
#_1D9CB3: BEQ .no_draw

#_1D9CB5: BPL Swamola_Main

#_1D9CB7: JMP.w Swamola_Ripples

;===================================================================================================

#Swamola_Main:
#_1D9CBA: JSR SpriteDraw_Swamola

.no_draw
#_1D9CBD: JSL Sprite_Get16BitCoords_long
#_1D9CC1: JSR Sprite_CheckIfActive_Bank1D

#_1D9CC4: INC.w $0E80,X
#_1D9CC7: JSR Sprite_CheckDamageToAndFromLink_Bank1D

#_1D9CCA: LDA.w $0D40,X
#_1D9CCD: PHA

#_1D9CCE: CLC
#_1D9CCF: ADC.w $0F80,X
#_1D9CD2: STA.w $0D40,X

#_1D9CD5: JSR Sprite_Move_XY_Bank1D

#_1D9CD8: PLA
#_1D9CD9: STA.w $0D40,X

;---------------------------------------------------------------------------------------------------

#_1D9CDC: LDA.w $0D80,X
#_1D9CDF: JSL JumpTableLocal
#_1D9CE3: dw Swamola_Emerge
#_1D9CE5: dw Swamola_Ascend
#_1D9CE7: dw Swamola_Wiggle
#_1D9CE9: dw Swamola_Descend
#_1D9CEB: dw Swamola_Submerge

;===================================================================================================

Swamola_Dive:
.offset_x_low
#_1D9CED: db   0,   0,  32,  32,  32,   0, -32, -32, -32

.offset_x_high
#_1D9CF6: db   0,   0,   0,   0,   0,   0,  -1,  -1,  -1

.offset_y_low
#_1D9CFF: db   0, -32, -32,   0,  32,  32,  32,   0, -32

.offset_y_high
#_1D9D08: db   0,  -1,  -1,   0,   0,   0,   0,   0,  -1

.ID
#_1D9D11: db      $01, $02, $03, $04, $05, $06, $07, $08

;===================================================================================================

Swamola_Emerge:
#_1D9D19: LDA.w $0DF0,X
#_1D9D1C: BNE .exit

#_1D9D1E: JSL GetRandomNumber
#_1D9D22: AND.b #$07
#_1D9D24: TAY

#_1D9D25: LDA.w Swamola_Dive_ID,Y
#_1D9D28: CMP.w $0DE0,X
#_1D9D2B: BEQ .exit

;---------------------------------------------------------------------------------------------------

#_1D9D2D: TAY

#_1D9D2E: LDA.w $0D90,X
#_1D9D31: CLC
#_1D9D32: ADC.w Swamola_Dive_offset_x_low,Y
#_1D9D35: STA.l $7FFD5C,X

#_1D9D39: LDA.w $0DA0,X
#_1D9D3C: ADC.w Swamola_Dive_offset_x_high,Y
#_1D9D3F: STA.l $7FFD62,X

#_1D9D43: LDA.w $0DB0,X
#_1D9D46: CLC
#_1D9D47: ADC.w Swamola_Dive_offset_y_low,Y
#_1D9D4A: STA.l $7FFD68,X

#_1D9D4E: LDA.w $0EB0,X
#_1D9D51: ADC.w Swamola_Dive_offset_y_high,Y
#_1D9D54: STA.l $7FFD6E,X

#_1D9D58: INC.w $0D80,X

#_1D9D5B: JSR Sprite_ZeroVelocity_XY_Bank1D

;---------------------------------------------------------------------------------------------------

#_1D9D5E: LDA.b #$F1
#_1D9D60: STA.w $0F80,X

#_1D9D63: JSR Swamola_SpawnRipples

.exit
#_1D9D66: RTS

;===================================================================================================

Swamola_Ascend:
#_1D9D67: LDA.w $0E80,X
#_1D9D6A: AND.b #$03
#_1D9D6C: BNE .dont_accel

#_1D9D6E: INC.w $0F80,X
#_1D9D71: BNE .dont_accel

#_1D9D73: INC.w $0D80,X

;---------------------------------------------------------------------------------------------------

.dont_accel
#_1D9D76: LDA.w $0E80,X
#_1D9D79: AND.b #$03
#_1D9D7B: BNE .exit

#_1D9D7D: JSR Swamola_ProjectVelocityTowardsTarget

;---------------------------------------------------------------------------------------------------

#Swamola_ApproachTargetVelocity:
#_1D9D80: LDA.w $0D40,X
#_1D9D83: CMP.b $00
#_1D9D85: BEQ .up_to_speed
#_1D9D87: BPL .too_fast_y

#_1D9D89: INC.w $0D40,X
#_1D9D8C: BRA .up_to_speed

.too_fast_y
#_1D9D8E: DEC.w $0D40,X

;---------------------------------------------------------------------------------------------------

.up_to_speed
#_1D9D91: LDA.w $0D50,X
#_1D9D94: CMP.b $01
#_1D9D96: BEQ .exit
#_1D9D98: BPL .too_fast_x

#_1D9D9A: INC.w $0D50,X
#_1D9D9D: BRA .exit

.too_fast_x
#_1D9D9F: DEC.w $0D50,X

.exit
#_1D9DA2: RTS

;===================================================================================================

pool Swamola_Wiggle

.offset_z
#_1D9DA3: db  2,  -2

.limit_z
#_1D9DA5: db 12, -12

pool off

;---------------------------------------------------------------------------------------------------

Swamola_Wiggle:
#_1D9DA7: LDA.w $0E80,X
#_1D9DAA: AND.b #$00
#_1D9DAC: BNE .no_wiggle

#_1D9DAE: LDA.w $0ED0,X
#_1D9DB1: AND.b #$01
#_1D9DB3: TAY

#_1D9DB4: LDA.w $0F80,X
#_1D9DB7: CLC
#_1D9DB8: ADC.w .offset_z,Y
#_1D9DBB: STA.w $0F80,X

#_1D9DBE: CMP.w .limit_z,Y
#_1D9DC1: BNE .no_wiggle

#_1D9DC3: INC.w $0ED0,X

;---------------------------------------------------------------------------------------------------

.no_wiggle
#_1D9DC6: LDA.l $7FFD5C,X
#_1D9DCA: STA.b $04

#_1D9DCC: LDA.l $7FFD62,X
#_1D9DD0: STA.b $05

#_1D9DD2: LDA.l $7FFD68,X
#_1D9DD6: STA.b $06

#_1D9DD8: LDA.l $7FFD6E,X
#_1D9DDC: STA.b $07

;---------------------------------------------------------------------------------------------------

#_1D9DDE: REP #$20

#_1D9DE0: LDA.w $0FD8
#_1D9DE3: SEC
#_1D9DE4: SBC.b $04
#_1D9DE6: CLC
#_1D9DE7: ADC.w #$0008

#_1D9DEA: CMP.w #$0010
#_1D9DED: BCS .can_wiggle_more

;---------------------------------------------------------------------------------------------------

#_1D9DEF: LDA.w $0FDA
#_1D9DF2: SEC
#_1D9DF3: SBC.b $06
#_1D9DF5: CLC
#_1D9DF6: ADC.w #$0008

#_1D9DF9: CMP.w #$0010
#_1D9DFC: BCS .can_wiggle_more

#_1D9DFE: SEP #$20

#_1D9E00: INC.w $0D80,X

;---------------------------------------------------------------------------------------------------

.can_wiggle_more
#_1D9E03: SEP #$20

#_1D9E05: JSR Swamola_ProjectVelocityTowardsTarget
#_1D9E08: LDA.b $00

#_1D9E0A: STA.w $0D40,X

#_1D9E0D: LDA.b $01
#_1D9E0F: STA.w $0D50,X

#_1D9E12: RTS

;===================================================================================================

Swamola_ProjectVelocityTowardsTarget:
#_1D9E13: LDA.l $7FFD5C,X
#_1D9E17: STA.b $04

#_1D9E19: LDA.l $7FFD62,X
#_1D9E1D: STA.b $05

#_1D9E1F: LDA.l $7FFD68,X
#_1D9E23: STA.b $06

#_1D9E25: LDA.l $7FFD6E,X
#_1D9E29: STA.b $07

#_1D9E2B: LDA.b #$0F
#_1D9E2D: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1D9E31: RTS

;===================================================================================================

Swamola_Descend:
#_1D9E32: LDA.w $0E80,X
#_1D9E35: AND.b #$03
#_1D9E37: BNE .delay

#_1D9E39: INC.w $0F80,X

#_1D9E3C: LDA.w $0F80,X
#_1D9E3F: CMP.b #$10
#_1D9E41: BNE .delay

#_1D9E43: INC.w $0D80,X

#_1D9E46: JSR Swamola_SpawnRipples

#_1D9E49: LDA.b #$80
#_1D9E4B: STA.w $0D20,X

#_1D9E4E: LDA.b #$50
#_1D9E50: STA.w $0DF0,X

.delay
#_1D9E53: LDA.w $0E80,X
#_1D9E56: AND.b #$03
#_1D9E58: BNE .exit

#_1D9E5A: STZ.b $00
#_1D9E5C: STZ.b $01

#_1D9E5E: JSR Swamola_ApproachTargetVelocity

.exit
#_1D9E61: RTS

;===================================================================================================

Swamola_Submerge:
#_1D9E62: LDA.w $0DF0,X
#_1D9E65: BNE .wait

#_1D9E67: JSL GetRandomNumber
#_1D9E6B: AND.b #$07
#_1D9E6D: TAY

#_1D9E6E: LDA.w Swamola_Dive_ID,Y
#_1D9E71: STA.w $0DE0,X

#_1D9E74: TAY

#_1D9E75: LDA.w $0D90,X
#_1D9E78: CLC
#_1D9E79: ADC.w Swamola_Dive_offset_x_low,Y
#_1D9E7C: STA.w $0D10,X

#_1D9E7F: LDA.w $0DA0,X
#_1D9E82: ADC.w Swamola_Dive_offset_x_high,Y
#_1D9E85: STA.w $0D30,X

#_1D9E88: LDA.w $0DB0,X
#_1D9E8B: CLC
#_1D9E8C: ADC.w Swamola_Dive_offset_y_low,Y
#_1D9E8F: STA.w $0D00,X

#_1D9E92: LDA.w $0EB0,X
#_1D9E95: ADC.w Swamola_Dive_offset_y_high,Y
#_1D9E98: STA.w $0D20,X

#_1D9E9B: STZ.w $0D80,X

#_1D9E9E: LDA.b #$30
#_1D9EA0: STA.w $0DF0,X

#_1D9EA3: JSR Sprite_ZeroVelocity_XY_Bank1D

#_1D9EA6: STZ.w $0F80,X

.wait
#_1D9EA9: RTS

;===================================================================================================

Swamola_SpawnRipples:
#_1D9EAA: LDA.b #!SPRITE_CF
#_1D9EAC: JSL Sprite_SpawnDynamically
#_1D9EB0: BMI .no_room

#_1D9EB2: JSL Sprite_SetSpawnedCoordinates

#_1D9EB6: LDA.b #$80
#_1D9EB8: STA.w $0D80,Y

#_1D9EBB: LDA.b #$20
#_1D9EBD: STA.w $0DF0,Y

#_1D9EC0: LDA.b #$04
#_1D9EC2: STA.w $0F50,Y
#_1D9EC5: STA.w $0BA0,Y

#_1D9EC8: LDA.b #$00
#_1D9ECA: STA.w $0E40,Y

.no_room
#_1D9ECD: RTS

;===================================================================================================

Swamola_Ripples:
#_1D9ECE: JSR SpriteDraw_SwamolaRipples
#_1D9ED1: JSR Sprite_CheckIfActive_Bank1D

#_1D9ED4: LDA.w $0DF0,X
#_1D9ED7: BNE .exit

#_1D9ED9: STZ.w $0DD0,X

.exit
#_1D9EDC: RTS

;===================================================================================================

pool SpriteDraw_SwamolaRipples

.oam_groups
; group00
#_1D9EDD: dw   0,   4 : db $D8, $00, $00, $00
#_1D9EE5: dw   8,   4 : db $D8, $40, $00, $00

; group01
#_1D9EED: dw   0,   4 : db $D9, $00, $00, $00
#_1D9EF5: dw   8,   4 : db $D9, $40, $00, $00

; group02
#_1D9EFD: dw   0,   4 : db $DA, $00, $00, $00
#_1D9F05: dw   8,   4 : db $DA, $40, $00, $00

; group03
#_1D9F0D: dw   0,   4 : db $D9, $00, $00, $00
#_1D9F15: dw   8,   4 : db $D9, $40, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_SwamolaRipples:
#_1D9F1D: LDA.b #$08
#_1D9F1F: JSL OAM_AllocateFromRegionB

#_1D9F23: LDA.b #$00
#_1D9F25: XBA
#_1D9F26: LDA.w $0DF0,X
#_1D9F29: AND.b #$0C ; effectively a x4 on ID

#_1D9F2B: REP #$20

#_1D9F2D: ASL A ; up to x16
#_1D9F2E: ASL A
#_1D9F2F: CLC
#_1D9F30: ADC.w #.oam_groups
#_1D9F33: STA.b $08

#_1D9F35: SEP #$20

#_1D9F37: LDA.b #$02
#_1D9F39: JMP.w Sprite_DrawMultiple_Bank1D

;===================================================================================================

pool SpriteDraw_Swamola

.segment_offset
#_1D9F3C: db $08, $10, $16, $1A

.anim_step
#_1D9F40: db $07, $06, $05, $04, $03, $04, $05, $06
#_1D9F48: db $07, $06, $05, $04, $03, $04, $05, $06

.flip
#_1D9F50: db $C0, $C0, $C0, $C0, $80, $80, $80, $80
#_1D9F58: db $00, $00, $00, $00, $00, $40, $40, $40

.segment_step
#_1D9F60: db $00, $00, $01, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Swamola:
#_1D9F64: LDA.w $0D50,X
#_1D9F67: STA.b $01

#_1D9F69: LDA.w $0D40,X
#_1D9F6C: CLC
#_1D9F6D: ADC.w $0F80,X
#_1D9F70: STA.b $00

#_1D9F72: JSL Sprite_ConvertVelocityToAngle
#_1D9F76: TAY

#_1D9F77: LDA.w .anim_step,Y
#_1D9F7A: STA.w $0DC0,X

#_1D9F7D: LDA.w $0F50,X
#_1D9F80: AND.b #$3F
#_1D9F82: ORA.w .flip,Y
#_1D9F85: STA.w $0F50,X

#_1D9F88: JSL SpriteDraw_SingleLarge_long

;---------------------------------------------------------------------------------------------------

#_1D9F8C: PHX
#_1D9F8D: TXY

#_1D9F8E: LDA.w $0E80,X
#_1D9F91: AND.b #$1F
#_1D9F93: CLC
#_1D9F94: ADC.w Swamola_SegmentsIndex,X
#_1D9F97: TAX

#_1D9F98: LDA.w $0D10,Y
#_1D9F9B: STA.l $7FFA5C,X

#_1D9F9F: LDA.w $0D30,Y
#_1D9FA2: STA.l $7FFB1C,X

#_1D9FA6: LDA.w $0D00,Y
#_1D9FA9: STA.l $7FFBDC,X

#_1D9FAD: LDA.w $0D20,Y
#_1D9FB0: STA.l $7FFC9C,X

#_1D9FB4: PLX

;---------------------------------------------------------------------------------------------------

#_1D9FB5: REP #$20

#_1D9FB7: LDA.w #$0000
#_1D9FBA: LDY.w $0D40,X
#_1D9FBD: BPL .positive_y_1

#_1D9FBF: LDA.w #$0014

.positive_y_1
#_1D9FC2: PHA

#_1D9FC3: CLC
#_1D9FC4: ADC.b $90
#_1D9FC6: STA.b $90

#_1D9FC8: PLA
#_1D9FC9: LSR A
#_1D9FCA: LSR A
#_1D9FCB: CLC
#_1D9FCC: ADC.b $92
#_1D9FCE: STA.b $92

#_1D9FD0: SEP #$20

#_1D9FD2: LDA.b #$00
#_1D9FD4: STA.w $0FB6

;---------------------------------------------------------------------------------------------------

.next_segment
#_1D9FD7: LDY.w $0FB6

#_1D9FDA: LDA.w .segment_step,Y
#_1D9FDD: STA.w $0DC0,X

#_1D9FE0: PHX

#_1D9FE1: LDA.w $0E80,X
#_1D9FE4: SEC
#_1D9FE5: SBC.w .segment_offset,Y
#_1D9FE8: AND.b #$1F
#_1D9FEA: CLC
#_1D9FEB: ADC.w Swamola_SegmentsIndex,X
#_1D9FEE: TAX

#_1D9FEF: LDA.l $7FFA5C,X
#_1D9FF3: STA.w $0FD8

#_1D9FF6: LDA.l $7FFB1C,X
#_1D9FFA: STA.w $0FD9

#_1D9FFD: LDA.l $7FFBDC,X
#_1DA001: STA.w $0FDA

#_1DA004: LDA.l $7FFC9C,X
#_1DA008: STA.w $0FDB

#_1DA00B: PLX

#_1DA00C: LDA.w $0D40,X
#_1DA00F: BPL .positive_y_2

#_1DA011: REP #$20

#_1DA013: LDA.b $90
#_1DA015: SEC
#_1DA016: SBC.w #$0004
#_1DA019: STA.b $90

#_1DA01B: DEC.b $92
#_1DA01D: BRA .draw_segment

.positive_y_2
#_1DA01F: REP #$20

#_1DA021: LDA.b $90
#_1DA023: CLC
#_1DA024: ADC.w #$0004
#_1DA027: STA.b $90

#_1DA029: INC.b $92

.draw_segment
#_1DA02B: SEP #$20

#_1DA02D: JSL SpriteDraw_SingleLarge_long

#_1DA031: INC.w $0FB6

#_1DA034: LDA.w $0FB6
#_1DA037: CMP.b #$04
#_1DA039: BNE .next_segment

#_1DA03B: RTS

;===================================================================================================

Blind_SpawnFromMaiden:
#_1DA03C: LDX.b #$00

#_1DA03E: LDA.b #$09
#_1DA040: STA.w $0DD0,X

#_1DA043: LDA.b #!SPRITE_CE
#_1DA045: STA.w $0E20,X

#_1DA048: LDA.b $00
#_1DA04A: STA.w $0D10,X

#_1DA04D: LDA.b $01
#_1DA04F: STA.w $0D30,X

#_1DA052: LDA.b $02
#_1DA054: SEC
#_1DA055: SBC.b #16
#_1DA057: STA.w $0D00,X

#_1DA05A: LDA.b $03
#_1DA05C: STA.w $0D20,X

#_1DA05F: JSL SpritePrep_LoadProperties

#_1DA063: LDA.b #$C0
#_1DA065: STA.w $0E10,X

#_1DA068: LDA.b #$15
#_1DA06A: STA.w $0DC0,X

#_1DA06D: LDA.b #$02
#_1DA06F: STA.w $0DE0,X
#_1DA072: STA.w $0BA0,X

; flag as spawned
#_1DA075: LDA.w $0403
#_1DA078: ORA.b #$20
#_1DA07A: STA.w $0403

#_1DA07D: STZ.w $0B69

#_1DA080: RTL

;===================================================================================================
; Don't spawn Blind if
;   the maiden is following Link
;   the maiden has never been returned
;===================================================================================================
SpritePrep_Blind_PrepareBattle:
#_1DA081: LDA.l $7EF3CC
#_1DA085: CMP.b #!FOLLOWER_06
#_1DA087: BEQ .despawn

#_1DA089: LDA.w $0403
#_1DA08C: AND.b #$20
#_1DA08E: BEQ .despawn

#_1DA090: LDA.b #$60
#_1DA092: STA.w $0E10,X

#_1DA095: LDA.b #$01
#_1DA097: STA.w $0DB0,X

#_1DA09A: LDA.b #$02
#_1DA09C: STA.w $0DE0,X

#_1DA09F: LDA.b #$04
#_1DA0A1: STA.w $0EB0,X

#_1DA0A4: LDA.b #$07
#_1DA0A6: STA.w $0DC0,X

#_1DA0A9: STZ.w $0B69

#_1DA0AC: RTL

.despawn
#_1DA0AD: STZ.w $0DD0,X

#_1DA0B0: RTL

;===================================================================================================

BlindLaser_SpawnTrailGarnish:
#_1DA0B1: LDA.w $0E80,X
#_1DA0B4: AND.b #$00
#_1DA0B6: BNE .exit

#_1DA0B8: PHX
#_1DA0B9: TXY

#_1DA0BA: LDX.b #$1D

.next_slot
#_1DA0BC: LDA.l $7FF800,X
#_1DA0C0: BEQ .free_slot

#_1DA0C2: DEX
#_1DA0C3: BPL .next_slot

#_1DA0C5: DEC.w $0FF8
#_1DA0C8: BPL .use_search_index

#_1DA0CA: LDA.b #$1D
#_1DA0CC: STA.w $0FF8

.use_search_index
#_1DA0CF: LDX.w $0FF8

;---------------------------------------------------------------------------------------------------

.free_slot
#_1DA0D2: LDA.b #!GARNISH_0F
#_1DA0D4: STA.l $7FF800,X
#_1DA0D8: STA.w $0FB4

#_1DA0DB: LDA.w $0DC0,Y
#_1DA0DE: STA.l $7FF9FE,X

#_1DA0E2: TYA
#_1DA0E3: STA.l $7FF92C,X

#_1DA0E7: LDA.w $0D10,Y
#_1DA0EA: STA.l $7FF83C,X

#_1DA0EE: LDA.w $0D30,Y
#_1DA0F1: STA.l $7FF878,X

#_1DA0F5: LDA.w $0D00,Y
#_1DA0F8: CLC
#_1DA0F9: ADC.b #$10
#_1DA0FB: STA.l $7FF81E,X

#_1DA0FF: LDA.w $0D20,Y
#_1DA102: ADC.b #$00
#_1DA104: STA.l $7FF85A,X

#_1DA108: LDA.b #$0A
#_1DA10A: STA.l $7FF90E,X

#_1DA10E: PLX

.exit
#_1DA10F: RTS

;===================================================================================================

pool Blind_Head

.speed_limit_x
#_1DA110: db  32, -32

.pos_limit_x
#_1DA112: db $98, $58

.speed_limit_y
#_1DA114: db  24, -24

.pos_limit_y
#_1DA116: db $B0, $50

pool off

;---------------------------------------------------------------------------------------------------

Blind_Head:
#_1DA118: LDA.w $0B89,X
#_1DA11B: ORA.b #$30
#_1DA11D: STA.w $0B89,X

;---------------------------------------------------------------------------------------------------

#_1DA120: JSL SpriteDraw_SingleLarge_long

#_1DA124: PHX

#_1DA125: LDY.b #$02

#_1DA127: LDA.w $0EB0,X
#_1DA12A: TAX

#_1DA12B: LDA.w Blind_HeadChars,X
#_1DA12E: STA.b ($90),Y

#_1DA130: INY
#_1DA131: LDA.b ($90),Y
#_1DA133: AND.b #$3F
#_1DA135: ORA.w Blind_HeadFlips,X
#_1DA138: STA.b ($90),Y

#_1DA13A: PLX

;---------------------------------------------------------------------------------------------------

#_1DA13B: JSR Sprite_CheckIfActive_Bank1D

#_1DA13E: LDA.w $0EA0,X
#_1DA141: CMP.b #$0E
#_1DA143: BNE .dont_shorten_recoil

#_1DA145: LDA.b #$08
#_1DA147: STA.w $0EA0,X

.dont_shorten_recoil
#_1DA14A: JSR Sprite_CheckIfRecoiling_Bank1D

#_1DA14D: DEC.w $0E30,X
#_1DA150: BPL .dont_rotate

#_1DA152: LDA.b #$02
#_1DA154: STA.w $0E30,X

#_1DA157: LDA.w $0EB0,X
#_1DA15A: INC A
#_1DA15B: AND.b #$0F
#_1DA15D: STA.w $0EB0,X

;---------------------------------------------------------------------------------------------------

.dont_rotate
#_1DA160: LDA.w $0DF0,X
#_1DA163: BEQ .continue

#_1DA165: JMP.w .exit

;---------------------------------------------------------------------------------------------------

.continue
#_1DA168: JSR Sprite_CheckDamageToAndFromLink_Bank1D

#_1DA16B: INC.w $0E80,X

#_1DA16E: LDA.b #$1F
#_1DA170: JSR Blind_SpitFireball

#_1DA173: TYA
#_1DA174: BMI .no_fireball

; every 5th fire ball is aimed at Link
#_1DA176: DEC.w $0F90,X
#_1DA179: BPL .no_fireball

; aim fireball at Link
#_1DA17B: LDA.b #$04
#_1DA17D: STA.w $0F90,X

#_1DA180: PHY

#_1DA181: LDA.b #$20
#_1DA183: JSL Sprite_ProjectSpeedTowardsLink_long

#_1DA187: PLY

#_1DA188: LDA.b $00
#_1DA18A: STA.w $0D40,Y

#_1DA18D: LDA.b $01
#_1DA18F: STA.w $0D50,Y

.no_fireball
; this always fails
#_1DA192: LDA.w $0E80,X
#_1DA195: AND.b #$00
#_1DA197: BNE .dont_shake_x

; TODO what is this even for?
#_1DA199: LDA.w $0ED0,X
#_1DA19C: AND.b #$01
#_1DA19E: TAY

#_1DA19F: LDA.w $0D50,X
#_1DA1A2: CMP.w .speed_limit_x,Y
#_1DA1A5: BEQ .dont_shake_x

#_1DA1A7: CLC
#_1DA1A8: ADC.w Sprite_ApplyConveyor_shake_x,Y
#_1DA1AB: STA.w $0D50,X

;---------------------------------------------------------------------------------------------------

.dont_shake_x
#_1DA1AE: LDA.w $0D10,X
#_1DA1B1: AND.b #$FE
#_1DA1B3: CMP.w .pos_limit_x,Y
#_1DA1B6: BNE .dont_invert_accel_x

#_1DA1B8: INC.w $0ED0,X

.dont_invert_accel_x
#_1DA1BB: LDA.w $0E80,X
#_1DA1BE: AND.b #$00
#_1DA1C0: BNE .dont_shake_y

#_1DA1C2: LDA.w $0EC0,X
#_1DA1C5: AND.b #$01
#_1DA1C7: TAY

#_1DA1C8: LDA.w $0D40,X
#_1DA1CB: CMP.w .speed_limit_y,Y
#_1DA1CE: BEQ .dont_shake_y

#_1DA1D0: CLC
#_1DA1D1: ADC.w Sprite_ApplyConveyor_shake_x,Y
#_1DA1D4: STA.w $0D40,X

;---------------------------------------------------------------------------------------------------

.dont_shake_y
#_1DA1D7: LDA.w $0D00,X
#_1DA1DA: AND.b #$FE
#_1DA1DC: CMP.w .pos_limit_y,Y
#_1DA1DF: BNE .dont_invert_accel_y

#_1DA1E1: INC.w $0EC0,X

.dont_invert_accel_y
#_1DA1E4: LDA.w $0EA0,X
#_1DA1E7: BNE .exit

#_1DA1E9: JSR Sprite_Move_XY_Bank1D

.exit
#_1DA1EC: RTS

;===================================================================================================

Blind_SpawnHead:
#_1DA1ED: LDA.b #!SPRITE_CE
#_1DA1EF: JSL Sprite_SpawnDynamically
#_1DA1F3: BMI .fail

#_1DA1F5: JSL Sprite_SetSpawnedCoordinates

#_1DA1F9: LDA.b #$5B
#_1DA1FB: STA.w $0E60,Y

#_1DA1FE: AND.b #$0F
#_1DA200: STA.w $0F50,Y

#_1DA203: LDA.b #$04
#_1DA205: STA.w $0CAA,Y

#_1DA208: LDA.b #$02
#_1DA20A: STA.w $0D90,Y

#_1DA20D: LDA.b #$01
#_1DA20F: STA.w $0E40,Y

#_1DA212: DEC A
#_1DA213: STA.w $0F60,Y
#_1DA216: STA.w $0B6B,Y

#_1DA219: LDA.b #$17
#_1DA21B: STA.w $0F70,Y

;---------------------------------------------------------------------------------------------------

#_1DA21E: CLC
#_1DA21F: ADC.b $02
#_1DA221: STA.w $0D00,Y

#_1DA224: LDA.b $00
#_1DA226: ASL A
#_1DA227: ROL A
#_1DA228: AND.b #$01
#_1DA22A: STA.w $0ED0,Y

#_1DA22D: LDA.b $02
#_1DA22F: ASL A
#_1DA230: ROL A
#_1DA231: AND.b #$01
#_1DA233: STA.w $0EC0,Y

#_1DA236: LDA.b #$30
#_1DA238: STA.w $0DF0,Y

;---------------------------------------------------------------------------------------------------

.fail
#_1DA23B: RTS

;===================================================================================================

pool Blind_Laser

.draw
#_1DA23C: db $07, $07, $08, $09, $0A, $09, $08, $07
#_1DA244: db $07, $07, $08, $09, $0A, $09, $08, $07

.flip
#_1DA24C: db $00, $00, $00, $00, $00, $40, $40, $40
#_1DA254: db $40, $40, $C0, $C0, $80, $80, $80, $80

pool off

;---------------------------------------------------------------------------------------------------

Blind_draw:
#_1DA25C: db $14, $13, $12, $11, $10, $0F, $0F

;---------------------------------------------------------------------------------------------------

Sprite_CE_Blind:
#_1DA263: LDA.w $0D90,X
#_1DA266: BPL Blind_Blind

;===================================================================================================

Blind_Laser:
#_1DA268: LDY.w $0EB0,X

#_1DA26B: LDA.w .draw,Y
#_1DA26E: STA.w $0DC0,X

#_1DA271: LDA.w .flip,Y
#_1DA274: ORA.b #$03
#_1DA276: STA.w $0F50,X

#_1DA279: JSL Sprite_PrepOAMCoord_long
#_1DA27D: JSR Sprite_CheckIfActive_Bank1D

#_1DA280: LDA.w $0DF0,X
#_1DA283: BEQ .not_dispersing

#_1DA285: CMP.b #$01
#_1DA287: BNE .exit

#_1DA289: STZ.w $0DD0,X

.exit
#_1DA28C: RTS

;---------------------------------------------------------------------------------------------------

.not_dispersing
#_1DA28D: JSL Sprite_CheckDamageToLink_same_layer_long

#_1DA291: LDY.b #$00

#_1DA293: LDA.w $0D50,X
#_1DA296: BPL .positive_x

#_1DA298: DEY

.positive_x
#_1DA299: CLC
#_1DA29A: ADC.w $0D10,X
#_1DA29D: STA.w $0D10,X

#_1DA2A0: TYA
#_1DA2A1: ADC.w $0D30,X
#_1DA2A4: STA.w $0D30,X

#_1DA2A7: LDY.b #$00

#_1DA2A9: LDA.w $0D40,X
#_1DA2AC: BPL .positive_y

#_1DA2AE: DEY

.positive_y
#_1DA2AF: CLC
#_1DA2B0: ADC.w $0D00,X
#_1DA2B3: STA.w $0D00,X

#_1DA2B6: TYA
#_1DA2B7: ADC.w $0D20,X
#_1DA2BA: STA.w $0D20,X

#_1DA2BD: JSR Sprite_CheckTileCollision_Bank1D
#_1DA2C0: BEQ .no_collision

#_1DA2C2: LDA.b #$0C
#_1DA2C4: STA.w $0DF0,X

.no_collision
#_1DA2C7: JSR BlindLaser_SpawnTrailGarnish

#_1DA2CA: RTS

;===================================================================================================

Blind_Blind:
#_1DA2CB: CMP.b #$02
#_1DA2CD: BNE Blind_Blind_Blind

#_1DA2CF: JMP.w Blind_Head

;---------------------------------------------------------------------------------------------------

Blind_Blind_Blind:
#_1DA2D2: LDA.w $0B89,X
#_1DA2D5: ORA.b #$30
#_1DA2D7: STA.w $0B89,X

#_1DA2DA: JSR SpriteDraw_Blind

#_1DA2DD: LDA.b #$01
#_1DA2DF: STA.w $0F50,X

#_1DA2E2: JSR Sprite_CheckIfActive_Bank1D

;---------------------------------------------------------------------------------------------------

#_1DA2E5: LDA.w $0EA0,X
#_1DA2E8: BEQ .no_attack

#_1DA2EA: DEC.w $0EA0,X

#_1DA2ED: CMP.b #$0B
#_1DA2EF: BNE .no_attack

#_1DA2F1: STZ.w $0EF0,X
#_1DA2F4: STZ.w $0E70,X

#_1DA2F7: LDA.w $0F10,X
#_1DA2FA: BNE .no_attack

#_1DA2FC: LDA.b #$80
#_1DA2FE: STA.w $0E50,X

#_1DA301: LDA.b #$30
#_1DA303: STA.w $0F10,X

#_1DA306: LDA.w $0F50,X
#_1DA309: AND.b #$01
#_1DA30B: STA.w $0F50,X

#_1DA30E: INC.w $0F90,X

#_1DA311: LDA.w $0F90,X
#_1DA314: CMP.b #$03
#_1DA316: BCS .phase

#_1DA318: LDA.b #$60
#_1DA31A: STA.w $0E70,X

#_1DA31D: LDA.b #$01
#_1DA31F: STA.w $0E30,X

#_1DA322: BRA .no_attack

;---------------------------------------------------------------------------------------------------

.phase
#_1DA324: STZ.w $0F90,X

#_1DA327: INC.w $0B6A

#_1DA32A: LDA.w $0B6A
#_1DA32D: CMP.b #3
#_1DA32F: BNE .spawn_head

#_1DA331: JSL Sprite_KillFriends
#_1DA335: JSR Sprite_BossPrepareToDie

#_1DA338: LDA.b #$FF
#_1DA33A: STA.w $0DF0,X
#_1DA33D: STA.w $0EF0,X

#_1DA340: INC.w $0FFC

#_1DA343: LDA.b #!SFX3_22
#_1DA345: JSL SpriteSFX_QueueSFX3WithPan

#_1DA349: RTS

;---------------------------------------------------------------------------------------------------

.spawn_head
#_1DA34A: JSR Sprite_ZeroVelocity_XY_Bank1D

#_1DA34D: LDA.b #$06
#_1DA34F: STA.w $0DB0,X

#_1DA352: LDA.b #$FF
#_1DA354: STA.w $0E10,X
#_1DA357: STA.w $0BA0,X

#_1DA35A: JSR Blind_SpawnHead

.no_attack
#_1DA35D: LDA.w $0D90,X
#_1DA360: BEQ Blind_Blind_Blind_Blind

#_1DA362: LDA.w $0DF0,X
#_1DA365: BNE .stay

#_1DA367: STZ.w $0DD0,X

.stay
#_1DA36A: LSR A
#_1DA36B: LSR A
#_1DA36C: LSR A
#_1DA36D: TAY

#_1DA36E: LDA.w Blind_draw,Y
#_1DA371: STA.w $0DC0,X

#_1DA374: RTS

;---------------------------------------------------------------------------------------------------

Blind_Blind_Blind_Blind:
#_1DA375: INC.w $0E80,X

#_1DA378: LDA.w $0E80,X
#_1DA37B: AND.b #$01
#_1DA37D: BNE .accept_tick

#_1DA37F: INC.w $0DF0,X

.accept_tick
#_1DA382: LDA.w $0E00,X
#_1DA385: BEQ Blind_HandleAI

#_1DA387: STZ.w $0D80,X

#_1DA38A: CMP.b #$08
#_1DA38C: BNE .dont_shoot_laser

#_1DA38E: JSR Blind_SpawnLaser

.dont_shoot_laser
#_1DA391: JMP.w Blind_CheckBumpDamage

;===================================================================================================

Blind_HandleAI:
#_1DA394: INC.w $0B69

#_1DA397: LDA.w $0B58,X
#_1DA39A: BNE .no_laser

#_1DA39C: LDA.w $0D80,X
#_1DA39F: BEQ .refuse_laser

#_1DA3A1: LDA.b #$10
#_1DA3A3: STA.w $0E00,X

#_1DA3A6: LDA.b #$80
#_1DA3A8: STA.w $0B58,X

#_1DA3AB: BRA .continue

.no_laser
#_1DA3AD: DEC.w $0B58,X

;---------------------------------------------------------------------------------------------------

.continue
#_1DA3B0: STZ.w $0D80,X

.refuse_laser
; !HARDCODED to always be in the same quadrant as Link
#_1DA3B3: LDA.b $23
#_1DA3B5: STA.w $0D30,X

#_1DA3B8: LDA.b $21
#_1DA3BA: STA.w $0D20,X

#_1DA3BD: LDA.w $0DB0,X
#_1DA3C0: JSL JumpTableLocal
#_1DA3C4: dw Blind_THELIGHT       ; 0x00
#_1DA3C6: dw Blind_EscapeLight    ; 0x01
#_1DA3C8: dw Blind_Shimmy         ; 0x02
#_1DA3CA: dw Blind_SwapSides      ; 0x03
#_1DA3CC: dw Blind_Spin           ; 0x04
#_1DA3CE: dw Blind_FireballFlurry ; 0x05
#_1DA3D0: dw Blind_Undress        ; 0x06
#_1DA3D2: dw Blind_Rerobe         ; 0x07

;===================================================================================================

pool Blind_Undress

.draw
#_1DA3D4: db $0E, $0D, $0C, $0A

pool off

;---------------------------------------------------------------------------------------------------

Blind_Undress:
#_1DA3D8: STZ.w $0EF0,X

#_1DA3DB: LDA.b #$0C
#_1DA3DD: STA.w $0EB0,X

#_1DA3E0: LDA.w $0E10,X
#_1DA3E3: BNE .delay

#_1DA3E5: INC.w $0DB0,X

#_1DA3E8: LDA.b #$27
#_1DA3EA: STA.w $0E10,X

#_1DA3ED: LDA.b #!SFX1_13
#_1DA3EF: JSL SpriteSFX_QueueSFX1WithPan

#_1DA3F3: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_1DA3F4: CMP.b #$E0
#_1DA3F6: BCC .not_ready

#_1DA3F8: SBC.b #$E0
#_1DA3FA: LSR A
#_1DA3FB: LSR A
#_1DA3FC: LSR A
#_1DA3FD: TAY

#_1DA3FE: LDA.w .draw,Y
#_1DA401: STA.w $0DC0,X

#_1DA404: RTS

;---------------------------------------------------------------------------------------------------

.not_ready
#_1DA405: LDA.b #$0E
#_1DA407: STA.w $0DC0,X

#_1DA40A: RTS

;===================================================================================================

pool Blind_Rerobe

.draw
#_1DA40B: db $0A, $0B, $0C, $0D, $0E

pool off

;---------------------------------------------------------------------------------------------------

Blind_Rerobe:
#_1DA410: LDA.w $0E10,X
#_1DA413: BNE .delay_ai

#_1DA415: LDA.b #$02
#_1DA417: STA.w $0DB0,X

#_1DA41A: LDA.b #$80
#_1DA41C: STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

#_1DA41F: LDA.w $0D00,X
#_1DA422: ASL A
#_1DA423: ROL A
#_1DA424: AND.b #$01

#_1DA426: INC A
#_1DA427: INC A
#_1DA428: STA.w $0DE0,X

#_1DA42B: LDA.w $0D10,X
#_1DA42E: ASL A
#_1DA42F: ROL A
#_1DA430: STA.w $0ED0,X

#_1DA433: JSR Sprite_ZeroVelocity_XY_Bank1D

#_1DA436: STZ.w $0BA0,X

#_1DA439: RTS

;---------------------------------------------------------------------------------------------------

.delay_ai
#_1DA43A: LSR A
#_1DA43B: LSR A
#_1DA43C: LSR A
#_1DA43D: TAY

#_1DA43E: LDA.w .draw,Y
#_1DA441: STA.w $0DC0,X

#_1DA444: RTS

;===================================================================================================

pool Blind_SpitFireball

.speed_x
#_1DA445: db -32, -28, -24, -16,   0,  16,  24,  28
#_1DA44D: db  32,  28,  24,  16,   0, -16, -24, -28

.speed_y
#_1DA455: db   0,  16,  24,  28,  32,  28,  24,  16
#_1DA45D: db   0, -16, -24, -28, -32, -28, -24, -16

pool off

;---------------------------------------------------------------------------------------------------

Blind_FireballFlurry:
#_1DA465: DEC.w $0E70,X

#_1DA468: PHA

#_1DA469: AND.b #$07
#_1DA46B: SEC
#_1DA46C: ROL A
#_1DA46D: STA.w $0F50,X

#_1DA470: PLA
#_1DA471: BNE .useless_branch

.useless_branch
#_1DA473: DEC.w $0E90,X
#_1DA476: BPL .dont_turn_head

#_1DA478: LDA.w $0E30,X
#_1DA47B: STA.w $0E90,X

#_1DA47E: LDA.w $0EB0,X
#_1DA481: INC A
#_1DA482: AND.b #$0F
#_1DA484: STA.w $0EB0,X

.dont_turn_head
#_1DA487: LDA.w $0E80,X
#_1DA48A: AND.b #$1F
#_1DA48C: BNE .dont_adjust_rotation_timer

#_1DA48E: LDA.w $0E30,X
#_1DA491: CMP.b #$05
#_1DA493: BEQ .dont_adjust_rotation_timer

#_1DA495: INC.w $0E30,X

.dont_adjust_rotation_timer
#_1DA498: JSR Blind_AnimateRobes

#_1DA49B: LDA.b #$0F

;===================================================================================================

Blind_SpitFireball:
#_1DA49D: LDY.b #$FF

#_1DA49F: AND.w $0E80,X
#_1DA4A2: BNE .exit

#_1DA4A4: JSL Sprite_SpawnFireball
#_1DA4A8: BMI .exit

#_1DA4AA: LDA.b #!SFX3_19
#_1DA4AC: JSL SpriteSFX_QueueSFX3WithPan

#_1DA4B0: PHX

#_1DA4B1: LDA.w $0EB0,X
#_1DA4B4: TAX

#_1DA4B5: LDA.w .speed_x,X
#_1DA4B8: STA.w $0D50,Y

#_1DA4BB: LDA.w .speed_y,X
#_1DA4BE: STA.w $0D40,Y

#_1DA4C1: JSR Fireball_Configure

#_1DA4C4: PLX

.exit
#_1DA4C5: RTS

;===================================================================================================

Blind_THELIGHT:
#_1DA4C6: LDA.b #$00
#_1DA4C8: STA.w $0AE8

#_1DA4CB: LDA.b #$A0
#_1DA4CD: STA.w $0AEA

#_1DA4D0: LDA.w $0E10,X
#_1DA4D3: BNE .delay

#_1DA4D5: INC.w $0DB0,X

#_1DA4D8: LDA.b #$60
#_1DA4DA: STA.w $0E10,X

;---------------------------------------------------------------------------------------------------

.delay
#_1DA4DD: CMP.b #$50
#_1DA4DF: BNE .no_message

#_1DA4E1: PHA

; Message 0121
#_1DA4E2: LDA.b #$21
#_1DA4E4: STA.w $1CF0

#_1DA4E7: LDA.b #$01
#_1DA4E9: STA.w $1CF1

#_1DA4EC: JSL Sprite_ShowMessageMinimal
#_1DA4F0: PLA

;---------------------------------------------------------------------------------------------------

.no_message
#_1DA4F1: CMP.b #$18
#_1DA4F3: BNE .no_poof

#_1DA4F5: JSR SpawnBossPoof

.no_poof
#_1DA4F8: RTS

;===================================================================================================

SpawnBossPoof:
#_1DA4F9: LDA.b #!SFX2_0C
#_1DA4FB: STA.w $012E

#_1DA4FE: LDA.b #!SPRITE_CE
#_1DA500: JSL Sprite_SpawnDynamically

#_1DA504: LDA.b $00
#_1DA506: CLC
#_1DA507: ADC.b #$10
#_1DA509: STA.w $0D10,Y

#_1DA50C: LDA.b $01
#_1DA50E: ADC.b #$00
#_1DA510: STA.w $0D30,Y

#_1DA513: LDA.b $02
#_1DA515: CLC
#_1DA516: ADC.b #$28
#_1DA518: STA.w $0D00,Y

#_1DA51B: LDA.b $03
#_1DA51D: ADC.b #$00
#_1DA51F: STA.w $0D20,Y

#_1DA522: LDA.b #$0F
#_1DA524: STA.w $0DC0,Y

#_1DA527: LDA.b #$01
#_1DA529: STA.w $0D90,Y

#_1DA52C: LDA.b #$2F
#_1DA52E: STA.w $0DF0,Y

#_1DA531: LDA.b #$09
#_1DA533: STA.w $0E40,Y
#_1DA536: STA.w $0BA0,Y

#_1DA539: RTS

;===================================================================================================

Blind_EscapeLight:
#_1DA53A: JSR Blind_CheckBumpDamage

#_1DA53D: LDA.b #$09
#_1DA53F: STA.w $0DC0,X

#_1DA542: LDA.w $0E10,X
#_1DA545: BNE .still_escaping

#_1DA547: INC.w $0DB0,X

#_1DA54A: LDA.b #$FF
#_1DA54C: STA.w $0DF0,X

#_1DA54F: STZ.w $0BA0,X

.still_escaping
#_1DA552: CMP.b #$40
#_1DA554: BCS .dont_move_yet

#_1DA556: LDA.b #$F8
#_1DA558: STA.w $0D40,X

#_1DA55B: JSR Sprite_Move_Y_Bank1D

.dont_move_yet
#_1DA55E: JSR Blind_Animate

#_1DA561: LDA.b #$04
#_1DA563: STA.w $0EB0,X

#_1DA566: RTS

;===================================================================================================

pool Blind_Shimmy

.speed_limit_y
#_1DA567: db  18, -18

.speed_limit_x
#_1DA569: db  24, -24

.pos_limit_x
#_1DA56B: db $A4, $4C

pool off

;---------------------------------------------------------------------------------------------------

Blind_Shimmy:
#_1DA56D: JSR Blind_CheckBumpDamage
#_1DA570: JSR Blind_Animate

#_1DA573: LDA.w $0E80,X
#_1DA576: AND.b #$7F
#_1DA578: BNE .ignore_link_pos

#_1DA57A: JSR Sprite_IsBelowLink_Bank1D

#_1DA57D: INY
#_1DA57E: INY
#_1DA57F: TYA

#_1DA580: CMP.w $0DE0,X
#_1DA583: BNE .link_behind

.ignore_link_pos
#_1DA585: LDA.w $0DF0,X
#_1DA588: BNE .delay_ai

.link_behind
#_1DA58A: LDA.w $0D10,X
#_1DA58D: CMP.b #$78
#_1DA58F: BCS .delay_ai

#_1DA591: INC.w $0DB0,X

#_1DA594: LDA.w $0D40,X
#_1DA597: AND.b #$FE
#_1DA599: STA.w $0D40,X

#_1DA59C: LDA.w $0D50,X
#_1DA59F: AND.b #$FE
#_1DA5A1: STA.w $0D50,X

#_1DA5A4: LDA.b #$30
#_1DA5A6: STA.w $0E10,X

#_1DA5A9: RTS

;---------------------------------------------------------------------------------------------------

.delay_ai
#_1DA5AA: LDA.w $0DA0,X
#_1DA5AD: AND.b #$01
#_1DA5AF: TAY

#_1DA5B0: LDA.w $0D40,X
#_1DA5B3: CLC
#_1DA5B4: ADC.w Sprite_ApplyConveyor_shake_x,Y
#_1DA5B7: STA.w $0D40,X

#_1DA5BA: CMP.w .speed_limit_y,Y
#_1DA5BD: BNE .dont_invert_y

#_1DA5BF: INC.w $0DA0,X

.dont_invert_y
#_1DA5C2: LDA.w $0ED0,X
#_1DA5C5: AND.b #$01
#_1DA5C7: TAY

#_1DA5C8: LDA.w $0D50,X
#_1DA5CB: CMP.w .speed_limit_x,Y
#_1DA5CE: BEQ .at_max_x_speed

#_1DA5D0: CLC
#_1DA5D1: ADC.w Sprite_ApplyConveyor_shake_x,Y
#_1DA5D4: STA.w $0D50,X

.at_max_x_speed
#_1DA5D7: LDA.w $0D10,X
#_1DA5DA: AND.b #$FE
#_1DA5DC: CMP.w .pos_limit_x,Y
#_1DA5DF: BNE .dont_invert_x

#_1DA5E1: INC.w $0ED0,X

.dont_invert_x
#_1DA5E4: JSR Sprite_Move_XY_Bank1D

#_1DA5E7: LDA.w $0E70,X
#_1DA5EA: BEQ .didnt_hit_tile

#_1DA5EC: JMP.w Blind_FireballFlurry

;---------------------------------------------------------------------------------------------------

.didnt_hit_tile
#_1DA5EF: LDA.w $0E80,X
#_1DA5F2: AND.b #$07
#_1DA5F4: BNE .exit

#_1DA5F6: LDA.w $0EB0,X
#_1DA5F9: ASL A
#_1DA5FA: ASL A
#_1DA5FB: STA.b $0F

#_1DA5FD: JSL Sprite_SpawnProbeAlways_long

.exit
#_1DA601: RTS

;===================================================================================================

pool Blind_SwapSides

.accel_y
#_1DA602: db   2,  -2

.speed_limit_y
#_1DA604: db  64, -64

.pos_limit_y
#_1DA606: db $90, $50

pool off

;---------------------------------------------------------------------------------------------------

Blind_SwapSides:
#_1DA608: JSR Blind_CheckBumpDamage

#_1DA60B: LDA.w $0E10,X
#_1DA60E: BEQ .done_decel

#_1DA610: JSR Blind_Decelerate_X
#_1DA613: JSR Sprite_Move_X_Bank1D
#_1DA616: JMP.w Blind_Decelerate_Y

;---------------------------------------------------------------------------------------------------

.done_decel
#_1DA619: LDA.w $0DE0,X
#_1DA61C: DEC A
#_1DA61D: DEC A
#_1DA61E: TAY

#_1DA61F: LDA.w $0D40,X
#_1DA622: CMP.w .speed_limit_y,Y
#_1DA625: BEQ .at_max_y_speed

#_1DA627: CLC
#_1DA628: ADC.w .accel_y,Y
#_1DA62B: STA.w $0D40,X

.at_max_y_speed
#_1DA62E: LDA.w $0D00,X
#_1DA631: AND.b #$FC
#_1DA633: CMP.w .pos_limit_y,Y
#_1DA636: BNE .dont_spin

#_1DA638: INC.w $0DB0,X

#_1DA63B: LDA.w $0DE0,X
#_1DA63E: SEC
#_1DA63F: SBC.b #$01
#_1DA641: STA.w $0DA0,X

.dont_spin
#_1DA644: JSR Sprite_Move_XY_Bank1D

;===================================================================================================

Blind_Decelerate_X:
#_1DA647: LDA.w $0D50,X
#_1DA64A: BEQ .stopped
#_1DA64C: BPL .positive

#_1DA64E: CLC
#_1DA64F: ADC.b #$04

.positive
#_1DA651: SEC
#_1DA652: SBC.b #$02
#_1DA654: STA.w $0D50,X

.stopped
#_1DA657: JSR Blind_AnimateRobes

#_1DA65A: LDA.w $0E70,X
#_1DA65D: BEQ .exit

#_1DA65F: JMP.w Blind_FireballFlurry

.exit
#_1DA662: RTS

;===================================================================================================

pool Blind_Spin

.anim_direction
#_1DA663: db  -1,   1

.anim_limit
#_1DA665: db $00, $09

pool off

;---------------------------------------------------------------------------------------------------

Blind_Spin:
#_1DA667: JSR Blind_CheckBumpDamage

#_1DA66A: LDA.w $0E80,X
#_1DA66D: AND.b #$07
#_1DA66F: BNE Blind_Decelerate_Y

;---------------------------------------------------------------------------------------------------

#_1DA671: LDA.w $0DE0,X
#_1DA674: DEC A
#_1DA675: DEC A
#_1DA676: TAY

#_1DA677: LDA.w $0DC0,X
#_1DA67A: CMP.w .anim_limit,Y
#_1DA67D: BNE .still_moving

#_1DA67F: LDA.b #$FE
#_1DA681: STA.w $0DF0,X

#_1DA684: LDA.b #$02
#_1DA686: STA.w $0DB0,X

#_1DA689: LDA.w $0DE0,X
#_1DA68C: EOR.b #$01
#_1DA68E: STA.w $0DE0,X

#_1DA691: LDA.w $0D10,X
#_1DA694: ASL A
#_1DA695: ROL A
#_1DA696: AND.b #$01
#_1DA698: STA.w $0ED0,X

#_1DA69B: BRA Blind_Decelerate_Y

.still_moving
#_1DA69D: CLC
#_1DA69E: ADC.w .anim_direction,Y
#_1DA6A1: STA.w $0DC0,X

;===================================================================================================

Blind_Decelerate_Y:
#_1DA6A4: LDA.w $0D40,X
#_1DA6A7: BEQ .stopped
#_1DA6A9: BPL .positive

#_1DA6AB: CLC
#_1DA6AC: ADC.b #$08

.positive
#_1DA6AE: SEC
#_1DA6AF: SBC.b #$04
#_1DA6B1: STA.w $0D40,X

.stopped
#_1DA6B4: JSR Sprite_Move_Y_Bank1D

#_1DA6B7: LDA.w $0E70,X
#_1DA6BA: BEQ .exit

#_1DA6BC: JMP.w Blind_FireballFlurry

.exit
#_1DA6BF: RTS

;===================================================================================================

Blind_CheckBumpDamage:
#_1DA6C0: LDA.w $0F10,X
#_1DA6C3: ORA.w $0EA0,X
#_1DA6C6: BNE .invulnerable

#_1DA6C8: JSR Sprite_CheckDamageToAndFromLink_Bank1D

.invulnerable
#_1DA6CB: JSR Blind_BumpDamageFromBody

#_1DA6CE: RTS

;===================================================================================================
; TODO analyze and verify
;===================================================================================================
pool Blind_Animate

.robe
#_1DA6CF: db $07, $08, $09, $08, $00, $01, $02, $01

.head_dir
; facing_down
#_1DA6D7: db $00, $01, $02, $03, $04, $03, $02, $01

; facing_up
#_1DA6DF: db $00, $0F, $0E, $0D, $0C, $0D, $0E, $0F

.step
#_1DA6E7: db $00, $01, $01, $02, $02, $03, $03, $04

pool off

;---------------------------------------------------------------------------------------------------

Blind_Animate:
#_1DA6EF: LDA.w $0E70,X
#_1DA6F2: BNE Blind_AnimateRobes

#_1DA6F4: LDA.b $22
#_1DA6F6: LSR A ; /32
#_1DA6F7: LSR A
#_1DA6F8: LSR A
#_1DA6F9: LSR A
#_1DA6FA: LSR A
#_1DA6FB: TAY

#_1DA6FC: LDA.w .step,Y

#_1DA6FF: LDY.w $0DE0,X
#_1DA702: CPY.b #$03
#_1DA704: BNE .facing_down

#_1DA706: EOR.b #$FF
#_1DA708: INC A

.facing_down
#_1DA709: STA.b $01

#_1DA70B: TYA

#_1DA70C: DEC A
#_1DA70D: DEC A

#_1DA70E: ASL A
#_1DA70F: ASL A
#_1DA710: ASL A

#_1DA711: STA.b $00

;---------------------------------------------------------------------------------------------------

#_1DA713: LDA.w $0B69

#_1DA716: LSR A
#_1DA717: LSR A
#_1DA718: LSR A

#_1DA719: AND.b #$07
#_1DA71B: ADC.b $00
#_1DA71D: TAY

#_1DA71E: LDA.w .head_dir,Y
#_1DA721: CLC
#_1DA722: ADC.b $01
#_1DA724: AND.b #$0F
#_1DA726: STA.w $0EB0,X

;===================================================================================================

#Blind_AnimateRobes:
#_1DA729: LDA.w $0DE0,X
#_1DA72C: DEC A
#_1DA72D: DEC A
#_1DA72E: ASL A
#_1DA72F: ASL A
#_1DA730: STA.b $00

#_1DA732: LDA.w $0E80,X
#_1DA735: LSR A
#_1DA736: LSR A
#_1DA737: LSR A
#_1DA738: AND.b #$03
#_1DA73A: CLC
#_1DA73B: ADC.b $00
#_1DA73D: TAY

#_1DA73E: LDA.w .robe,Y
#_1DA741: STA.w $0DC0,X

#_1DA744: RTS

;===================================================================================================

pool Blind_SpawnLaser

.speed_x
#_1DA745: db -8, -8, -8, -4,  0,  4,  8,  8
#_1DA74D: db  8,  8,  8,  4,  0, -4, -8, -8

.speed_y
#_1DA755: db  0,  0,  4,  8,  8,  8,  4,  0
#_1DA75D: db  0,  0, -4, -8, -8, -8, -4,  0

pool off

;---------------------------------------------------------------------------------------------------

Blind_SpawnLaser:
#_1DA765: LDA.b #!SPRITE_CE
#_1DA767: JSL Sprite_SpawnDynamically
#_1DA76B: BMI .exit

#_1DA76D: JSL Sprite_CalculateSFXPan
#_1DA771: ORA.b #!SFX3_26
#_1DA773: STA.w $012F

#_1DA776: JSL Sprite_SetSpawnedCoordinates

#_1DA77A: LDA.b $00
#_1DA77C: CLC
#_1DA77D: ADC.b #$04
#_1DA77F: STA.w $0D10,Y

#_1DA782: LDA.w $0EB0,X
#_1DA785: STA.w $0EB0,Y

#_1DA788: PHX

#_1DA789: TAX

#_1DA78A: LDA.w .speed_x,X
#_1DA78D: STA.w $0D50,Y

#_1DA790: LDA.w .speed_y,X
#_1DA793: STA.w $0D40,Y

#_1DA796: PLX

#_1DA797: LDA.b #$80
#_1DA799: STA.w $0D90,Y
#_1DA79C: STA.w $0BA0,Y

#_1DA79F: LDA.b #$40
#_1DA7A1: STA.w $0E40,Y

#_1DA7A4: LDA.b #$14
#_1DA7A6: STA.w $0F60,Y

;---------------------------------------------------------------------------------------------------

.exit
#_1DA7A9: RTS

;===================================================================================================

pool SpriteDraw_Blind

.oam_groups
; group00
#_1DA7AA: dw  -8,   7 : db $8E, $0C, $00, $02
#_1DA7B2: dw   8,   7 : db $8E, $4C, $00, $02
#_1DA7BA: dw  -8,  23 : db $A0, $0C, $00, $02
#_1DA7C2: dw   8,  23 : db $A4, $4C, $00, $02
#_1DA7CA: dw   0,   0 : db $8C, $0A, $00, $02
#_1DA7D2: dw -19,   3 : db $A6, $0A, $00, $02
#_1DA7DA: dw  19,   3 : db $A6, $4A, $00, $02

; group01
#_1DA7E2: dw  -8,   7 : db $8E, $0C, $00, $02
#_1DA7EA: dw   8,   7 : db $8E, $4C, $00, $02
#_1DA7F2: dw  -8,  23 : db $A2, $0C, $00, $02
#_1DA7FA: dw   8,  23 : db $A0, $4C, $00, $02
#_1DA802: dw   0,   0 : db $8C, $0A, $00, $02
#_1DA80A: dw -19,   3 : db $A8, $0A, $00, $02
#_1DA812: dw  19,   3 : db $A8, $4A, $00, $02

; group02
#_1DA81A: dw  -8,   7 : db $8E, $0C, $00, $02
#_1DA822: dw   8,   7 : db $8E, $4C, $00, $02
#_1DA82A: dw  -8,  23 : db $A4, $0C, $00, $02
#_1DA832: dw   8,  23 : db $A2, $4C, $00, $02
#_1DA83A: dw   0,   0 : db $8C, $0A, $00, $02
#_1DA842: dw -19,   3 : db $AA, $0A, $00, $02
#_1DA84A: dw  19,   3 : db $AA, $4A, $00, $02

; group03
#_1DA852: dw -15,   5 : db $A6, $0A, $00, $02
#_1DA85A: dw  -6,   7 : db $8E, $0C, $00, $02
#_1DA862: dw   6,   7 : db $8E, $4C, $00, $02
#_1DA86A: dw  -6,  23 : db $A4, $0C, $00, $02
#_1DA872: dw   6,  23 : db $A0, $4C, $00, $02
#_1DA87A: dw   0,   0 : db $8A, $0A, $00, $02
#_1DA882: dw  16,  -1 : db $A6, $4A, $00, $02

; group04
#_1DA88A: dw -11,   9 : db $A6, $0A, $00, $02
#_1DA892: dw  -4,   7 : db $8E, $0C, $00, $02
#_1DA89A: dw   5,   7 : db $8E, $4C, $00, $02
#_1DA8A2: dw  -4,  23 : db $A4, $0C, $00, $02
#_1DA8AA: dw   5,  23 : db $A0, $4C, $00, $02
#_1DA8B2: dw   0,   0 : db $88, $0A, $00, $02
#_1DA8BA: dw  10,  -2 : db $A6, $4A, $00, $02

; group05
#_1DA8C2: dw   0,   0 : db $84, $0A, $00, $02
#_1DA8CA: dw  13,   8 : db $A6, $4A, $00, $02
#_1DA8D2: dw -10,  -2 : db $A6, $0A, $00, $02
#_1DA8DA: dw  -5,   7 : db $8E, $0C, $00, $02
#_1DA8E2: dw   5,   7 : db $8E, $4C, $00, $02
#_1DA8EA: dw  -5,  23 : db $A0, $0C, $00, $02
#_1DA8F2: dw   5,  23 : db $A4, $4C, $00, $02

; group06
#_1DA8FA: dw   0,   0 : db $82, $0A, $00, $02
#_1DA902: dw  18,   4 : db $A6, $4A, $00, $02
#_1DA90A: dw -15,  -1 : db $A6, $0A, $00, $02
#_1DA912: dw  -6,   7 : db $8E, $0C, $00, $02
#_1DA91A: dw   6,   7 : db $8E, $4C, $00, $02
#_1DA922: dw  -6,  23 : db $A0, $0C, $00, $02
#_1DA92A: dw   6,  23 : db $A4, $4C, $00, $02

; group07
#_1DA932: dw   0,   0 : db $80, $0A, $00, $02
#_1DA93A: dw -19,   3 : db $A6, $0A, $00, $02
#_1DA942: dw  19,   3 : db $A6, $4A, $00, $02
#_1DA94A: dw  -8,   7 : db $8E, $0C, $00, $02
#_1DA952: dw   8,   7 : db $8E, $4C, $00, $02
#_1DA95A: dw  -8,  23 : db $A0, $0C, $00, $02
#_1DA962: dw   8,  23 : db $A4, $4C, $00, $02

; group08
#_1DA96A: dw   0,   0 : db $80, $0A, $00, $02
#_1DA972: dw -19,   3 : db $A8, $0A, $00, $02
#_1DA97A: dw  19,   3 : db $A8, $4A, $00, $02
#_1DA982: dw  -8,   7 : db $8E, $0C, $00, $02
#_1DA98A: dw   8,   7 : db $8E, $4C, $00, $02
#_1DA992: dw  -8,  23 : db $A2, $0C, $00, $02
#_1DA99A: dw   8,  23 : db $A0, $4C, $00, $02

; group09
#_1DA9A2: dw   0,   0 : db $80, $0A, $00, $02
#_1DA9AA: dw -19,   3 : db $AA, $0A, $00, $02
#_1DA9B2: dw  19,   3 : db $AA, $4A, $00, $02
#_1DA9BA: dw  -8,   7 : db $8E, $0C, $00, $02
#_1DA9C2: dw   8,   7 : db $8E, $4C, $00, $02
#_1DA9CA: dw  -8,  23 : db $A0, $0C, $00, $02
#_1DA9D2: dw   8,  23 : db $A4, $4C, $00, $02

; group0A
#_1DA9DA: dw  -8,   9 : db $8E, $0C, $00, $02
#_1DA9E2: dw   8,   9 : db $8E, $4C, $00, $02
#_1DA9EA: dw  -8,  23 : db $AE, $0C, $00, $02
#_1DA9F2: dw   8,  23 : db $AE, $4C, $00, $02
#_1DA9FA: dw   8,  23 : db $AE, $4C, $00, $02
#_1DAA02: dw   8,  23 : db $AE, $4C, $00, $02
#_1DAA0A: dw   0,   2 : db $8C, $0A, $00, $02

; group0B
#_1DAA12: dw  -8,  16 : db $8E, $0C, $00, $02
#_1DAA1A: dw   8,  16 : db $8E, $4C, $00, $02
#_1DAA22: dw  -8,  23 : db $AE, $0C, $00, $02
#_1DAA2A: dw   8,  23 : db $AE, $4C, $00, $02
#_1DAA32: dw   8,  23 : db $AE, $4C, $00, $02
#_1DAA3A: dw   8,  23 : db $AE, $4C, $00, $02
#_1DAA42: dw   0,   9 : db $8C, $0A, $00, $02

; group0C
#_1DAA4A: dw  -8,  23 : db $AE, $0C, $00, $02
#_1DAA52: dw   8,  23 : db $AE, $4C, $00, $02
#_1DAA5A: dw   8,  23 : db $AE, $4C, $00, $02
#_1DAA62: dw   8,  23 : db $AE, $4C, $00, $02
#_1DAA6A: dw   8,  23 : db $AE, $4C, $00, $02
#_1DAA72: dw   8,  23 : db $AE, $4C, $00, $02
#_1DAA7A: dw   0,  16 : db $8C, $0A, $00, $02

; group0D
#_1DAA82: dw  -8,  23 : db $AC, $0C, $00, $02
#_1DAA8A: dw   8,  23 : db $AC, $4C, $00, $02
#_1DAA92: dw   8,  23 : db $AC, $4C, $00, $02
#_1DAA9A: dw   8,  23 : db $AC, $4C, $00, $02
#_1DAAA2: dw   8,  23 : db $AC, $4C, $00, $02
#_1DAAAA: dw   8,  23 : db $AC, $4C, $00, $02
#_1DAAB2: dw   0,  20 : db $8C, $0A, $00, $02

; group0E
#_1DAABA: dw  -8,  23 : db $AC, $0C, $00, $02
#_1DAAC2: dw   8,  23 : db $AC, $4C, $00, $02
#_1DAACA: dw   8,  23 : db $AC, $4C, $00, $02
#_1DAAD2: dw   8,  23 : db $AC, $4C, $00, $02
#_1DAADA: dw   8,  23 : db $AC, $4C, $00, $02
#_1DAAE2: dw   8,  23 : db $AC, $4C, $00, $02
#_1DAAEA: dw   0,  23 : db $8C, $0A, $00, $02

pool off

;===================================================================================================

pool SpriteDraw_BlindPoof

.oam_groups

.group00
#_1DAAF2: dw -16, -20 : db $86, $05, $00, $02

.group01
#_1DAAFA: dw -11, -28 : db $86, $05, $00, $02
#_1DAB02: dw -23, -26 : db $86, $05, $00, $02
#_1DAB0A: dw  -8, -17 : db $86, $05, $00, $02
#_1DAB12: dw -20, -13 : db $86, $05, $00, $02

.group02
#_1DAB1A: dw -16, -37 : db $86, $05, $00, $02
#_1DAB22: dw -27, -31 : db $86, $05, $00, $02
#_1DAB2A: dw -10, -28 : db $86, $05, $00, $02
#_1DAB32: dw  -5, -28 : db $86, $05, $00, $02
#_1DAB3A: dw -20, -27 : db $86, $05, $00, $02
#_1DAB42: dw -27, -17 : db $86, $05, $00, $02
#_1DAB4A: dw  -4, -17 : db $86, $05, $00, $02
#_1DAB52: dw -16, -13 : db $86, $05, $00, $02

.group03
#_1DAB5A: dw -18, -37 : db $8A, $45, $00, $02
#_1DAB62: dw  -5, -33 : db $8A, $45, $00, $02
#_1DAB6A: dw -32, -32 : db $8A, $05, $00, $02
#_1DAB72: dw -23, -31 : db $8A, $45, $00, $02
#_1DAB7A: dw -15, -24 : db $8A, $45, $00, $02
#_1DAB82: dw -23, -31 : db $8A, $45, $00, $02
#_1DAB8A: dw -15, -24 : db $8A, $45, $00, $02
#_1DAB92: dw -29, -22 : db $8A, $05, $00, $02
#_1DAB9A: dw  -5, -22 : db $8A, $05, $00, $02
#_1DABA2: dw -16, -14 : db $8A, $05, $00, $02

.group04
#_1DABAA: dw -12, -32 : db $8A, $45, $00, $02
#_1DABB2: dw -26, -29 : db $8A, $45, $00, $02
#_1DABBA: dw  -6, -22 : db $8A, $45, $00, $02
#_1DABC2: dw -19, -20 : db $8A, $05, $00, $02
#_1DABCA: dw -26, -29 : db $8A, $45, $00, $02
#_1DABD2: dw  -6, -22 : db $8A, $45, $00, $02
#_1DABDA: dw -19, -20 : db $8A, $05, $00, $02

.group05
#_1DABE2: dw -17, -27 : db $9B, $05, $00, $00
#_1DABEA: dw -10, -26 : db $9B, $05, $00, $00
#_1DABF2: dw   0, -22 : db $9B, $45, $00, $00
#_1DABFA: dw -19, -16 : db $9B, $45, $00, $00
#_1DAC02: dw  -6, -12 : db $9B, $05, $00, $00

.group06
#_1DAC0A: dw   0,  13 : db $20, $0B, $00, $02
#_1DAC12: dw   0,  23 : db $22, $0B, $00, $02

;---------------------------------------------------------------------------------------------------

.oam_group_pointer
#_1DAC1A: dw .group00
#_1DAC1C: dw .group01
#_1DAC1E: dw .group02
#_1DAC20: dw .group03
#_1DAC22: dw .group04
#_1DAC24: dw .group05
#_1DAC26: dw .group06

;---------------------------------------------------------------------------------------------------

.oam_group_size
#_1DAC28: db  1 ; group00
#_1DAC29: db  4 ; group01
#_1DAC2A: db  8 ; group02
#_1DAC2B: db 10 ; group03
#_1DAC2C: db  7 ; group04
#_1DAC2D: db  5 ; group05
#_1DAC2E: db  2 ; group06

pool off

;===================================================================================================

; Always enters with A>=$0F
SpriteDraw_BlindPoof:
#_1DAC2F: PHA

#_1DAC30: ASL
#_1DAC31: TAY

#_1DAC32: REP #$20

#_1DAC34: LDA.w .oam_group_pointer-$1E,Y
#_1DAC37: STA.b $08

#_1DAC39: SEP #$20

#_1DAC3B: PLY

#_1DAC3C: LDA.w .oam_group_size-$0F,Y
#_1DAC3F: JMP.w Sprite_DrawMultiple_Bank1D

;===================================================================================================
; TODO ????
Blind_Head_OAMOffset:
#_1DAC42: db $12, $12, $12, $16, $16, $02, $02, $02
#_1DAC4A: db $02, $02

Blind_HeadChars:
#_1DAC4C: db $86, $86, $84, $82, $80, $82, $84, $86
#_1DAC54: db $86, $86, $88, $8A, $8C, $8A, $88, $86

Blind_HeadFlips:
#_1DAC5C: db $00, $00, $00, $00, $00, $40, $40, $40
#_1DAC64: db $40, $40, $40, $40, $00, $00, $00, $00

;===================================================================================================

SpriteDraw_Blind:
#_1DAC6C: LDA.b #$00
#_1DAC6E: XBA

#_1DAC6F: LDA.w $0DC0,X
#_1DAC72: CMP.b #$0F
#_1DAC74: BCS SpriteDraw_BlindPoof

;---------------------------------------------------------------------------------------------------

#_1DAC76: REP #$20

#_1DAC78: ASL A ; x8
#_1DAC79: ASL A
#_1DAC7A: ASL A
#_1DAC7B: STA.b $00

#_1DAC7D: ASL A ; x64
#_1DAC7E: ASL A
#_1DAC7F: ASL A
#_1DAC80: SEC
#_1DAC81: SBC.b $00 ; -8

#_1DAC83: CLC ; so x56 overall
#_1DAC84: ADC.w #.oam_groups
#_1DAC87: STA.b $08

#_1DAC89: SEP #$20

#_1DAC8B: LDA.b #$07
#_1DAC8D: JSR Sprite_DrawMultiple_Bank1D

;---------------------------------------------------------------------------------------------------

#_1DAC90: LDA.w $0E70,X
#_1DAC93: BNE .no_tile_collision

#_1DAC95: LDA.w $0DB0,X
#_1DAC98: CMP.b #$06
#_1DAC9A: BEQ .last_object

#_1DAC9C: CMP.b #$04
#_1DAC9E: BEQ .exit

.no_tile_collision
#_1DACA0: LDY.w $0DC0,X
#_1DACA3: CPY.b #$0A
#_1DACA5: BCS .exit

#_1DACA7: LDA.w Blind_Head_OAMOffset,Y
#_1DACAA: TAY

;---------------------------------------------------------------------------------------------------

#_1DACAB: PHX

#_1DACAC: LDA.w $0EB0,X
#_1DACAF: TAX

#_1DACB0: LDA.w Blind_HeadChars,X
#_1DACB3: STA.b ($90),Y

#_1DACB5: INY

#_1DACB6: LDA.b ($90),Y
#_1DACB8: AND.b #$3F
#_1DACBA: ORA.w Blind_HeadFlips,X
#_1DACBD: STA.b ($90),Y

#_1DACBF: PLX

;---------------------------------------------------------------------------------------------------

.exit
#_1DACC0: RTS

;---------------------------------------------------------------------------------------------------

.last_object
#_1DACC1: LDY.b #$19
#_1DACC3: LDA.b #$F0
#_1DACC5: STA.b ($90),Y

#_1DACC7: RTS

;===================================================================================================
; !HARDCODED hitbox routine
;===================================================================================================
Blind_BumpDamageFromBody:
#_1DACC8: REP #$20

#_1DACCA: LDA.b $22
#_1DACCC: SEC
#_1DACCD: SBC.w $0FD8
#_1DACD0: CLC
#_1DACD1: ADC.w #$000E
#_1DACD4: CMP.w #$001C
#_1DACD7: BCS .no_collision

#_1DACD9: LDA.b $20
#_1DACDB: SEC
#_1DACDC: SBC.w $0FDA
#_1DACDF: CLC
#_1DACE0: ADC.w #$0000
#_1DACE3: CMP.w #$001C
#_1DACE6: BCS .no_collision

#_1DACE8: SEP #$20

#_1DACEA: LDA.w $031F
#_1DACED: ORA.w $037B
#_1DACF0: BNE .no_collision

#_1DACF2: LDA.b #$01
#_1DACF4: STA.b $4D

#_1DACF6: LDA.b #$08
#_1DACF8: STA.w $0373

#_1DACFB: LDA.b #$10
#_1DACFD: STA.b $46

#_1DACFF: LDA.b $28
#_1DAD01: EOR.b #$FF
#_1DAD03: STA.b $28

#_1DAD05: LDA.b $27
#_1DAD07: EOR.b #$FF
#_1DAD09: STA.b $27

.no_collision
#_1DAD0B: SEP #$20

#_1DAD0D: RTS

;===================================================================================================

Trinexx_Initialize:
#_1DAD0E: PHB
#_1DAD0F: PHK
#_1DAD10: PLB

#_1DAD11: JSR .main

#_1DAD14: PLB

#_1DAD15: RTL

;---------------------------------------------------------------------------------------------------

.main
#_1DAD16: LDA.w $0E20,X
#_1DAD19: SEC
#_1DAD1A: SBC.b #$CB
#_1DAD1C: JSL JumpTableLocal
#_1DAD20: dw Trinexx_Initialize_Rock
#_1DAD22: dw Trinexx_Initialize_Fire
#_1DAD24: dw Trinexx_Initialize_Ice

;===================================================================================================

Trinexx_Initialize_Rock:
#_1DAD26: LDA.w $0D10,X
#_1DAD29: CLC
#_1DAD2A: ADC.b #8
#_1DAD2C: STA.w $0D10,X

#_1DAD2F: LDA.w $0D00,X
#_1DAD32: CLC
#_1DAD33: ADC.b #16
#_1DAD35: STA.w $0D00,X

#_1DAD38: JSR Trinexx_CachePosition

#_1DAD3B: STZ.w $0B0A
#_1DAD3E: STZ.w $0B0B
#_1DAD41: STZ.w $0B0D
#_1DAD44: STZ.w $0B0F
#_1DAD47: STZ.w $0B10

#_1DAD4A: LDA.b #$FF
#_1DAD4C: STA.w $0B0E

;===================================================================================================
; Also moves down 12 pixels
;===================================================================================================
Trinexx_RecoverCachedCoords:
#_1DAD4F: LDA.w $0D90,X
#_1DAD52: STA.w $0D10,X

#_1DAD55: LDA.w $0DB0,X
#_1DAD58: CLC
#_1DAD59: ADC.b #12
#_1DAD5B: STA.w $0D00,X

#_1DAD5E: LDA.w $0ED0,X
#_1DAD61: ADC.b #$00
#_1DAD63: STA.w $0D20,X

#_1DAD66: RTS

;===================================================================================================

Trinexx_Initialize_Fire:
#_1DAD67: LDA.b #$03
#_1DAD69: STA.w $0DC0,X

#_1DAD6C: LDA.b #128
#_1DAD6E: BRA Trinexx_InitializeHead

Trinexx_Initialize_Ice:
#_1DAD70: LDA.b #255

;===================================================================================================

; Both heads initialize the same, except their timer and $0DC0,X
Trinexx_InitializeHead:
#_1DAD72: STA.w $0DF0,X

#_1DAD75: LDY.b #$1A

.next_segment
#_1DAD77: LDA.b #$40
#_1DAD79: STA.w $1D10,Y

#_1DAD7C: LDA.b #$00
#_1DAD7E: STA.w $1D30,Y
#_1DAD81: STA.w $1D50,Y

#_1DAD84: DEY
#_1DAD85: BPL .next_segment

#_1DAD87: LDA.b #$01
#_1DAD89: STA.w $0E80,X

;===================================================================================================

Trinexx_CachePosition:
#_1DAD8C: LDA.w $0D10,X
#_1DAD8F: STA.w $0D90,X

#_1DAD92: LDA.w $0D30,X
#_1DAD95: STA.w $0DA0,X

#_1DAD98: LDA.w $0D00,X
#_1DAD9B: STA.w $0DB0,X

#_1DAD9E: LDA.w $0D20,X
#_1DADA1: STA.w $0ED0,X

#_1DADA4: RTS

;===================================================================================================

pool Trinexx_FinalPhase

.draw_angle
#_1DADA5: db $06, $07, $00, $01, $02, $03, $04, $05

.draw_straight
#_1DADAD: db $07, $07, $01, $01, $03, $03, $05, $05

pool off

;---------------------------------------------------------------------------------------------------

Trinexx_FinalPhase:
#_1DADB5: LDA.w $0D40,X
#_1DADB8: STA.b $00

#_1DADBA: LDA.w $0D50,X
#_1DADBD: STA.b $01

#_1DADBF: JSL Sprite_ConvertVelocityToAngle
#_1DADC3: LSR A
#_1DADC4: TAY

#_1DADC5: LDA.w .draw_angle,Y
#_1DADC8: STA.w $0DC0,X

#_1DADCB: LDY.w $0E00,X
#_1DADCE: BEQ .done_initial_snekking

#_1DADD0: TAY

#_1DADD1: LDA.w .draw_straight,Y
#_1DADD4: STA.w $0DC0,X

;---------------------------------------------------------------------------------------------------

.done_initial_snekking
#_1DADD7: JSR SpriteDraw_TrinexxRockSnake
#_1DADDA: JSR Sprite_CheckIfActive_Bank1D

#_1DADDD: LDA.w $0D80,X
#_1DADE0: BPL .not_dead

#_1DADE2: LDA.w $0DF0,X
#_1DADE5: PHA

#_1DADE6: ORA.b #$E0
#_1DADE8: STA.w $0EF0,X

#_1DADEB: PLA
#_1DADEC: BNE .exit

#_1DADEE: LDA.b #$0C
#_1DADF0: STA.w $0DF0,X

#_1DADF3: LDA.w $0EC0,X
#_1DADF6: BNE .still_exploding

#_1DADF8: LDA.b #$FF
#_1DADFA: STA.w $0EF0,X

#_1DADFD: JMP.w Sprite_BossPrepareToDie

;---------------------------------------------------------------------------------------------------

.still_exploding
#_1DAE00: DEC.w $0EC0,X

#_1DAE03: JSL MakeBossExplosion

.exit
#_1DAE07: RTS

;---------------------------------------------------------------------------------------------------

.not_dead
#_1DAE08: LDA.b $1A
#_1DAE0A: AND.b #$07
#_1DAE0C: BNE .no_sfx

#_1DAE0E: LDA.b #!SFX3_31
#_1DAE10: JSL SpriteSFX_QueueSFX3WithPan

.no_sfx
#_1DAE14: PHX
#_1DAE15: TXY

#_1DAE16: INC.w $0E80,X

#_1DAE19: LDA.w $0E80,X
#_1DAE1C: AND.b #$7F
#_1DAE1E: TAX

#_1DAE1F: LDA.w $0D10,Y
#_1DAE22: STA.l $7FFC00,X

#_1DAE26: LDA.w $0D00,Y
#_1DAE29: STA.l $7FFD00,X

#_1DAE2D: LDA.w $0D30,Y
#_1DAE30: STA.l $7FFC80,X

#_1DAE34: LDA.w $0D20,Y
#_1DAE37: STA.l $7FFD80,X

#_1DAE3B: PLX

;---------------------------------------------------------------------------------------------------

#_1DAE3C: LDA.w $0EA0,X
#_1DAE3F: CMP.b #$0E
#_1DAE41: BNE .continue

; is this code unreachable?
; Trinexx should never be set to $0D80,X=2
; Causes a message to display constantly.
; But that's just a happy accident from where it reads the vector.
#_1DAE43: LDA.b #$08
#_1DAE45: STA.w $0EA0,X

#_1DAE48: LDA.w $0D80,X
#_1DAE4B: CMP.b #$00
#_1DAE4D: BNE .continue

#_1DAE4F: LDA.b #$02
#_1DAE51: STA.w $0D80,X

;---------------------------------------------------------------------------------------------------

.continue
#_1DAE54: JSR Sprite_Move_XY_Bank1D
#_1DAE57: JSR Sprite_CheckDamageToAndFromLink_Bank1D

#_1DAE5A: LDA.w $0D80,X
#_1DAE5D: JSL JumpTableLocal
#_1DAE61: dw Trinexx_Phase2_SnekAlongWall
#_1DAE63: dw Trinexx_Phase2_SnekAfterLink

;===================================================================================================

pool Trinexx_Phase2_SnekAlongWall

.speed_x
#_1DAE65: db   0, -31,   0,  31

.speed_y
#_1DAE69: db  31,   0, -31,   0

pool off

;---------------------------------------------------------------------------------------------------

Trinexx_Phase2_SnekAlongWall:
#_1DAE6D: LDA.w $0E80,X

; this always fails
#_1DAE70: AND.b #$00
#_1DAE72: BNE .keep_snekking

#_1DAE74: DEC.w $0D90,X
#_1DAE77: BNE .keep_snekking

#_1DAE79: INC.w $0D80,X

#_1DAE7C: LDA.b #$C0
#_1DAE7E: STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

.keep_snekking
#_1DAE81: JSL Sprite_Get16BitCoords_long
#_1DAE85: JSR Sprite_CheckTileCollision_Bank1D
#_1DAE88: BEQ .no_collision

#_1DAE8A: LDA.w $0DE0,X
#_1DAE8D: INC A
#_1DAE8E: AND.b #$03
#_1DAE90: STA.w $0DE0,X

#_1DAE93: LDA.b #$08
#_1DAE95: STA.w $0E00,X

.no_collision
#_1DAE98: LDY.w $0DE0,X

#_1DAE9B: LDA.w .speed_x,Y
#_1DAE9E: STA.w $0D50,X

#_1DAEA1: LDA.w .speed_y,Y
#_1DAEA4: STA.w $0D40,X

#_1DAEA7: RTS

;===================================================================================================
; UNUSED
; but cool
;===================================================================================================
Trinexx_CircleLink:
#_1DAEA8: LDA.w $0DF0,X
#_1DAEAB: BNE .keep_circling

#_1DAEAD: INC.w $0D80,X

.keep_circling
#_1DAEB0: LDA.b #$1F
#_1DAEB2: JSL Sprite_ProjectSpeedTowardsLink_long

#_1DAEB6: LDA.b $00
#_1DAEB8: STA.w $0D50,X

#_1DAEBB: LDA.b $01
#_1DAEBD: EOR.b #$FF
#_1DAEBF: INC A
#_1DAEC0: STA.w $0D40,X

#_1DAEC3: LDA.b $0E
#_1DAEC5: CLC
#_1DAEC6: ADC.b #$28
#_1DAEC8: CMP.b #$50
#_1DAECA: BCS .turn

#_1DAECC: LDA.b $0F
#_1DAECE: CLC
#_1DAECF: ADC.b #$28
#_1DAED1: CMP.b #$50
#_1DAED3: BCS .turn

#_1DAED5: RTS

;---------------------------------------------------------------------------------------------------

.turn
#_1DAED6: LDA.b $00
#_1DAED8: ASL.b $00

#_1DAEDA: PHP
#_1DAEDB: ROR A
#_1DAEDC: PLP

#_1DAEDD: ROR A
#_1DAEDE: CLC
#_1DAEDF: ADC.w $0D40,X
#_1DAEE2: STA.w $0D40,X

#_1DAEE5: LDA.b $01
#_1DAEE7: ASL.b $01

#_1DAEE9: PHP
#_1DAEEA: ROR A
#_1DAEEB: PLP

#_1DAEEC: ROR A
#_1DAEED: CLC
#_1DAEEE: ADC.w $0D50,X
#_1DAEF1: STA.w $0D50,X

#_1DAEF4: RTS

;===================================================================================================

Trinexx_Phase2_SnekAfterLink:
#_1DAEF5: LDA.b $1A
#_1DAEF7: AND.b #$01
#_1DAEF9: BNE .exit

#_1DAEFB: LDA.b #$1F
#_1DAEFD: JSL Sprite_ProjectSpeedTowardsLink_long

#_1DAF01: LDA.w $0D50,X
#_1DAF04: CMP.b $01
#_1DAF06: BEQ .done_x
#_1DAF08: BPL .decel_x

.accel_x
#_1DAF0A: INC.w $0D50,X
#_1DAF0D: BRA .done_x

.decel_x
#_1DAF0F: DEC.w $0D50,X

;---------------------------------------------------------------------------------------------------

.done_x
#_1DAF12: LDA.w $0D40,X
#_1DAF15: CMP.b $00
#_1DAF17: BEQ .exit
#_1DAF19: BPL .decel_y

.accel_y
#_1DAF1B: INC.w $0D40,X
#_1DAF1E: BRA .exit

.decel_y
#_1DAF20: DEC.w $0D40,X

.exit
#_1DAF23: RTS

;===================================================================================================

pool SpriteDraw_TrinexxRockSnake

.offset
#_1DAF24: db   $08,   $0C,   $10,   $18
#_1DAF28: db   $20,   $28,   $30,   $34
#_1DAF2C: db   $38,   $3C,   $40,   $44
#_1DAF30: db   $48,   $4C,   $50,   $54
#_1DAF34: db   $58,   $5C,   $60,   $64
#_1DAF38: db   $68,   $6C,   $70,   $74

.anim_step
#_1DAF3C: db   $02,   $02,   $02,   $03
#_1DAF40: db   $03,   $03,   $02,   $02
#_1DAF44: db   $01,   $01,   $00,   $00
#_1DAF48: db   $00,   $00,   $00,   $00
#_1DAF4C: db   $00,   $00,   $00,   $00
#_1DAF50: db   $00,   $00,   $00,   $00

.oam_offset
#_1DAF54: dw $0010, $0004, $0004, $0004
#_1DAF5C: dw $0010, $0010, $0010, $0004
#_1DAF64: dw $0004, $0004, $0004, $0004
#_1DAF6C: dw $0004, $0004, $0004, $0004
#_1DAF74: dw $0004, $0004, $0004, $0004
#_1DAF7C: dw $0004, $0004, $0004, $0004

pool off

;---------------------------------------------------------------------------------------------------

; Also handles damage to Link.
SpriteDraw_TrinexxRockSnake:
#_1DAF84: LDA.w $0B89,X
#_1DAF87: ORA.b #$30
#_1DAF89: STA.w $0B89,X

#_1DAF8C: JSR SpriteDraw_TrinexxRockHead

;---------------------------------------------------------------------------------------------------

#_1DAF8F: LDA.b #$00
#_1DAF91: STA.w $0FB6

.next_segment
#_1DAF94: LDY.w $0FB6
#_1DAF97: TYA
#_1DAF98: CMP.w $0EC0,X
#_1DAF9B: BNE .continue

#_1DAF9D: RTS

;---------------------------------------------------------------------------------------------------

.continue
#_1DAF9E: PHX

; Set up coordinates of the segment
#_1DAF9F: LDA.w $0E80,X
#_1DAFA2: SEC
#_1DAFA3: SBC.w .offset,Y
#_1DAFA6: AND.b #$7F
#_1DAFA8: TAX

#_1DAFA9: LDA.l $7FFC00,X
#_1DAFAD: STA.w $0FD8

#_1DAFB0: LDA.l $7FFC80,X
#_1DAFB4: STA.w $0FD9

#_1DAFB7: LDA.l $7FFD00,X
#_1DAFBB: STA.w $0FDA

#_1DAFBE: LDA.l $7FFD80,X
#_1DAFC2: STA.w $0FDB

#_1DAFC5: PLX
#_1DAFC6: PHY

#_1DAFC7: TYA
#_1DAFC8: ASL A
#_1DAFC9: TAY

; Handle collision detection for the segment
#_1DAFCA: REP #$20

#_1DAFCC: LDA.b $22
#_1DAFCE: SEC
#_1DAFCF: SBC.w $0FD8
#_1DAFD2: CLC
#_1DAFD3: ADC.w #$0008
#_1DAFD6: CMP.w #$0010
#_1DAFD9: BCS .no_damage

#_1DAFDB: LDA.b $20
#_1DAFDD: CLC
#_1DAFDE: ADC.w #$0008
#_1DAFE1: SEC
#_1DAFE2: SBC.w $0FDA
#_1DAFE5: CLC
#_1DAFE6: ADC.w #$0008
#_1DAFE9: CMP.w #$0010
#_1DAFEC: BCS .no_damage

#_1DAFEE: SEP #$20

; UH-OH
; These are bad branches.
; A is in 8 bit, but it's supposed to be in 16-bit at .no_damage.
#_1DAFF0: LDA.w $0D80,X
#_1DAFF3: BMI .no_damage

#_1DAFF5: LDA.w $031F
#_1DAFF8: ORA.w $037B
#_1DAFFB: ORA.b $11
#_1DAFFD: ORA.w $0FC1
#_1DB000: BNE .no_damage

#_1DB002: LDA.b #$01
#_1DB004: STA.b $4D

#_1DB006: LDA.b #$08
#_1DB008: STA.w $0373

#_1DB00B: LDA.b #$10
#_1DB00D: STA.b $46

#_1DB00F: LDA.b $28
#_1DB011: EOR.b #$FF
#_1DB013: STA.b $28

#_1DB015: LDA.b $27
#_1DB017: EOR.b #$FF
#_1DB019: STA.b $27

#_1DB01B: REP #$20

.no_damage
#_1DB01D: LDA.b $90
#_1DB01F: CLC
#_1DB020: ADC.w .oam_offset,Y
#_1DB023: STA.b $90

#_1DB025: LDA.w .oam_offset,Y
#_1DB028: LSR A
#_1DB029: LSR A
#_1DB02A: CLC
#_1DB02B: ADC.b $92
#_1DB02D: STA.b $92

;---------------------------------------------------------------------------------------------------

#_1DB02F: SEP #$20

#_1DB031: PLY

#_1DB032: LDA.b #$01
#_1DB034: STA.w $0F50,X

#_1DB037: CPY.b #$04
#_1DB039: BNE .no_flashing

#_1DB03B: LDA.w $0D80,X
#_1DB03E: CMP.b #$01
#_1DB040: BCC .no_flashing

#_1DB042: PHY

#_1DB043: JSR Trinexx_CheckDamageToFlashingSegment

#_1DB046: LDA.w $0E80,X
#_1DB049: AND.b #$06
#_1DB04B: EOR.w $0F50,X
#_1DB04E: STA.w $0F50,X

#_1DB051: PLY

;---------------------------------------------------------------------------------------------------

.no_flashing
#_1DB052: LDA.w .anim_step,Y
#_1DB055: STA.w $0DC0,X

#_1DB058: CMP.b #$03
#_1DB05A: BEQ .draw_head

#_1DB05C: JSL SpriteDraw_SingleLarge_long
#_1DB060: BRA .skip_head

.draw_head
#_1DB062: LDA.b #$08
#_1DB064: STA.w $0DC0,X

#_1DB067: JSR SpriteDraw_TrinexxRockHead

;---------------------------------------------------------------------------------------------------

.skip_head
#_1DB06A: INC.w $0FB6

#_1DB06D: LDA.w $0FB6
#_1DB070: CMP.w $0EC0,X
#_1DB073: BEQ .exit

#_1DB075: JMP.w .next_segment

.exit
#_1DB078: RTS

;===================================================================================================

Trinexx_CheckDamageToFlashingSegment:
#_1DB079: LDA.w $0D10,X
#_1DB07C: PHA

#_1DB07D: LDA.w $0D30,X
#_1DB080: PHA

#_1DB081: LDA.w $0D00,X
#_1DB084: PHA

#_1DB085: LDA.w $0D20,X
#_1DB088: PHA

;---------------------------------------------------------------------------------------------------

#_1DB089: LDA.w $0FD8
#_1DB08C: STA.w $0D10,X

#_1DB08F: LDA.w $0FD9
#_1DB092: STA.w $0D30,X

#_1DB095: LDA.w $0FDA
#_1DB098: STA.w $0D00,X

#_1DB09B: LDA.w $0FDB
#_1DB09E: STA.w $0D20,X

#_1DB0A1: LDA.b #$80
#_1DB0A3: STA.w $0CAA,X

#_1DB0A6: STZ.w $0E60,X

#_1DB0A9: JSL Sprite_CheckDamageFromLink_long

#_1DB0AD: LDA.b #$84
#_1DB0AF: STA.w $0CAA,X

#_1DB0B2: LDA.b #$40
#_1DB0B4: STA.w $0E60,X

;---------------------------------------------------------------------------------------------------

#_1DB0B7: PLA
#_1DB0B8: STA.w $0D20,X

#_1DB0BB: PLA
#_1DB0BC: STA.w $0D00,X

#_1DB0BF: PLA
#_1DB0C0: STA.w $0D30,X

#_1DB0C3: PLA
#_1DB0C4: STA.w $0D10,X

#_1DB0C7: RTS

;===================================================================================================

Trinexx_RockHeadDirections:
#_1DB0C8: db $07 ; looking right
#_1DB0C9: db $01 ; looking left

;===================================================================================================

Sprite_CB_TrinexxRockHead:
#_1DB0CA: LDA.w $0B10
#_1DB0CD: BEQ Trinexx_NotEvenMyFinalPhase

#_1DB0CF: JMP.w Trinexx_FinalPhase

;===================================================================================================

Trinexx_NotEvenMyFinalPhase:
; everything visible on mainscreen only
#_1DB0D2: LDA.b #$17
#_1DB0D4: STA.b $1C
#_1DB0D6: STZ.b $1D

#_1DB0D8: JSR SpriteDraw_TrinexxRockHeadAndBody
#_1DB0DB: JSR Sprite_CheckIfActive_Bank1D

#_1DB0DE: LDA.w $0D80,X
#_1DB0E1: BMI Trinexx_RetreatIntoShell

#_1DB0E3: JMP.w Trinexx_RockHead_Phase1

;---------------------------------------------------------------------------------------------------

Trinexx_RetreatIntoShell:
#_1DB0E6: STA.w $0FFC

#_1DB0E9: LDA.w $0DF0,X
#_1DB0EC: BNE .turtling

#_1DB0EE: INC.w $0B10

#_1DB0F1: JSL SpritePrep_Moldorm

#_1DB0F5: STZ.w $0E80,X
#_1DB0F8: STZ.w $0EB0,X

#_1DB0FB: LDA.w $0E60,X
#_1DB0FE: AND.b #$BF
#_1DB100: STA.w $0E60,X

#_1DB103: LDA.b #$80
#_1DB105: STA.w $0CAA,X

#_1DB108: STZ.w $0D80,X
#_1DB10B: STZ.w $0DE0,X

#_1DB10E: LDA.b #$00
#_1DB110: STA.w $0D90,X

#_1DB113: LDA.b #$10
#_1DB115: STA.w $0EC0,X

#_1DB118: JSR Sprite_ZeroVelocity_XY_Bank1D

#_1DB11B: LDA.b #$80
#_1DB11D: STA.w $0D90,X

; Move the shell away
#_1DB120: LDA.b #$FF
#_1DB122: STA.w $0311

#_1DB125: RTS

;---------------------------------------------------------------------------------------------------

.turtling
#_1DB126: CMP.b #$FF
#_1DB128: BCS .exit

#_1DB12A: CMP.b #$E0
#_1DB12C: BCC .start_exploding

#_1DB12E: AND.b #$03
#_1DB130: BNE .keep_shell

#_1DB132: LDA.b #$FF
#_1DB134: STA.w $0311

#_1DB137: LDA.b #$FF
#_1DB139: STA.w $0310

; removes shell scroll
#_1DB13C: LDA.b #$01
#_1DB13E: STA.w $0428

;---------------------------------------------------------------------------------------------------

.keep_shell
#_1DB141: LDA.b #$F8
#_1DB143: STA.w $0D40,X

#_1DB146: JSR Sprite_Move_Y_Bank1D
#_1DB149: JSR Trinexx_CachePosition

#_1DB14C: LDA.w $0D00,X
#_1DB14F: SEC
#_1DB150: SBC.b #$0C
#_1DB152: STA.w $0DB0,X

#_1DB155: INC.w $0B0F
#_1DB158: INC.w $0B0F

.exit
#_1DB15B: RTS

;---------------------------------------------------------------------------------------------------

.start_exploding
#_1DB15C: PHA
#_1DB15D: AND.b #$03
#_1DB15F: BNE .no_sfx

#_1DB161: LDA.b #!SFX2_0C
#_1DB163: JSL SpriteSFX_QueueSFX2WithPan

.no_sfx
#_1DB167: PLA
#_1DB168: AND.b #$01
#_1DB16A: BNE .dont_add_explosion

;---------------------------------------------------------------------------------------------------

#_1DB16C: JSL GetRandomNumber
#_1DB170: AND.b #$07
#_1DB172: TAY

#_1DB173: LDA.w $0D10,X
#_1DB176: CLC
#_1DB177: ADC.w .offset_x_low,Y
#_1DB17A: STA.w $0FD8

#_1DB17D: LDA.w $0D30,X
#_1DB180: ADC.w .offset_x_high,Y
#_1DB183: STA.w $0FD9

;---------------------------------------------------------------------------------------------------

#_1DB186: JSL GetRandomNumber
#_1DB18A: AND.b #$07
#_1DB18C: TAY

#_1DB18D: LDA.w $0D00,X
#_1DB190: CLC
#_1DB191: ADC.w .offset_y_low,Y
#_1DB194: PHP

#_1DB195: SEC
#_1DB196: SBC.b #$08
#_1DB198: STA.w $0FDA

#_1DB19B: LDA.w $0D20,X
#_1DB19E: SBC.b #$00

#_1DB1A0: PLP
#_1DB1A1: ADC.w .offset_y_high,Y
#_1DB1A4: STA.w $0FDB

;---------------------------------------------------------------------------------------------------

#_1DB1A7: JSL Trinexx_AddExplosion

.dont_add_explosion
#_1DB1AB: LDA.b #$FF
#_1DB1AD: STA.w $0EB0,X

#_1DB1B0: RTS

;---------------------------------------------------------------------------------------------------

.offset_x_low
#_1DB1B1: db   0,   8,  16,  24, -24, -16,  -8,   0

.offset_x_high
#_1DB1B9: db   0,   0,   0,   0,  -1,  -1,  -1,   0

.offset_y_low
#_1DB1C1: db   0,   8,  16,  24, -24, -16,  -8,   0

.offset_y_high
#_1DB1C9: db   0,   0,   0,   0,  -1,  -1,  -1,   0

;===================================================================================================

Trinexx_RockHead_Phase1:
; !HARDCODED slot assumption
#_1DB1D1: LDA.w $0DD1
#_1DB1D4: ORA.w $0DD2
#_1DB1D7: BNE .side_head_alive

#_1DB1D9: LDA.w $0D80,X
#_1DB1DC: CMP.b #$02
#_1DB1DE: BCS .side_head_alive

#_1DB1E0: LDA.b #$FF
#_1DB1E2: STA.w $0DF0,X

#_1DB1E5: LDA.b #$FF
#_1DB1E7: STA.w $0D80,X

#_1DB1EA: LDA.b #!SFX3_22
#_1DB1EC: STA.w $012F

#_1DB1EF: RTS

;---------------------------------------------------------------------------------------------------

.side_head_alive
#_1DB1F0: JSR Trinexx_WagTail
#_1DB1F3: JSR Trinexx_HandleShellCollision
#_1DB1F6: JSR Sprite_CheckDamageToAndFromLink_Bank1D

; Look towards Link every 64 frames
#_1DB1F9: LDA.b $1A
#_1DB1FB: AND.b #$3F
#_1DB1FD: BNE .dont_track_link

#_1DB1FF: JSR Sprite_IsRightOfLink_Bank1D

#_1DB202: LDA.b $0F
#_1DB204: CLC
#_1DB205: ADC.b #$18
#_1DB207: CMP.b #$30

#_1DB209: LDA.b #$00
#_1DB20B: BCC .look_down

#_1DB20D: LDA.w Trinexx_RockHeadDirections,Y

.look_down
#_1DB210: STA.w $0DC0,X

;---------------------------------------------------------------------------------------------------

.dont_track_link
#_1DB213: LDA.w $0B0E
#_1DB216: BEQ .run_ai

#_1DB218: LDA.b $1A
#_1DB21A: AND.b #$01
#_1DB21C: BNE .dont_tick_timer

#_1DB21E: DEC.w $0B0E

.dont_tick_timer
#_1DB221: RTS

.run_ai
; Check if the heads are breathing
#_1DB222: LDA.w $0DD1
#_1DB225: BEQ .check_ice

#_1DB227: LDA.w $0D81
#_1DB22A: CMP.b #$03
#_1DB22C: BEQ .exit

.check_ice
#_1DB22E: LDA.w $0DD2
#_1DB231: BEQ .handle_ai

#_1DB233: LDA.w $0D82
#_1DB236: CMP.b #$03
#_1DB238: BEQ .exit

;---------------------------------------------------------------------------------------------------

.handle_ai
#_1DB23A: LDA.w $0D80,X
#_1DB23D: JSL JumpTableLocal
#_1DB241: dw Trinexx_ChooseNextAction
#_1DB243: dw Trinexx_MoveBody
#_1DB245: dw Trinexx_PrepareLunge
#_1DB247: dw Trinexx_LungeHead

.exit
#_1DB249: RTS

;===================================================================================================

pool Trinexx_ChooseNextAction

.target_x
#_1DB24A: db $60, $78, $78, $90

.target_y
#_1DB24E: db $80, $70, $60, $80

pool off

;---------------------------------------------------------------------------------------------------

Trinexx_ChooseNextAction:
#_1DB252: LDA.w $0DF0,X
#_1DB255: BNE .exit

#_1DB257: LDA.w $0E30,X
#_1DB25A: AND.b #$7F
#_1DB25C: STA.b $00

#_1DB25E: JSL GetRandomNumber
#_1DB262: AND.b #$03
#_1DB264: TAY

; Do nothing if we're moving to the same location
#_1DB265: CMP.b $00
#_1DB267: BEQ .exit

#_1DB269: INC.w $0EC0,X

#_1DB26C: LDA.w $0EC0,X
#_1DB26F: CMP.b #$02
#_1DB271: BNE .dont_lunge

#_1DB273: STZ.w $0EC0,X
#_1DB276: LDA.b #$02

#_1DB278: STA.w $0D80,X
#_1DB27B: LDA.b #$50

#_1DB27D: STA.w $0DF0,X

#_1DB280: RTS

.dont_lunge
#_1DB281: LDA.w .target_x,Y
#_1DB284: STA.w $0B08

#_1DB287: LDA.w .target_y,Y
#_1DB28A: STA.w $0B09

#_1DB28D: JSL GetRandomNumber
#_1DB291: AND.b #$03
#_1DB293: CMP.b #$01
#_1DB295: TYA

; Bit 7 of $0E30,X determines the speed of the movement
; (0: 0x08 | 1: 0x10)
#_1DB296: BCS .slow

#_1DB298: ORA.b #$80

.slow
#_1DB29A: STA.w $0E30,X
#_1DB29D: INC.w $0D80,X

.exit
#_1DB2A0: RTS

;===================================================================================================

Trinexx_MoveBody:
; I don't think this is a possible value
#_1DB2A1: LDA.w $0E30,X
#_1DB2A4: CMP.b #$FF
#_1DB2A6: BNE .continue

#_1DB2A8: LDA.w $0DF0,X
#_1DB2AB: BEQ .wait

; Looks like trinexx could choose to back up into Link?
#_1DB2AD: JSR Sprite_IsBelowLink_Bank1D

#_1DB2B0: CPY.b #$00
#_1DB2B2: BNE .continue

.wait
#_1DB2B4: STZ.w $0E30,X

#_1DB2B7: JMP.w .adjust_phase

;---------------------------------------------------------------------------------------------------

.continue
#_1DB2BA: LDA.w $0B08
#_1DB2BD: STA.b $04

#_1DB2BF: LDA.w $0D30,X
#_1DB2C2: STA.b $05

#_1DB2C4: LDA.w $0B09
#_1DB2C7: STA.b $06

#_1DB2C9: LDA.w $0D20,X
#_1DB2CC: STA.b $07

#_1DB2CE: LDA.b #$08

#_1DB2D0: LDY.w $0E30,X
#_1DB2D3: BPL .slow

#_1DB2D5: LDA.b #$10

.slow
#_1DB2D7: JSL Sprite_ProjectSpeedTowardsLocation_long
#_1DB2DB: LDA.b $00

#_1DB2DD: STA.w $0D40,X

#_1DB2E0: LDA.b $01
#_1DB2E2: STA.w $0D50,X

;---------------------------------------------------------------------------------------------------

; Handle the shell bg movement
#_1DB2E5: LDA.w $0D10,X
#_1DB2E8: PHA

#_1DB2E9: LDA.w $0D00,X
#_1DB2EC: PHA

#_1DB2ED: JSR Sprite_Move_XY_Bank1D

#_1DB2F0: PLA
#_1DB2F1: LDY.b #$00

#_1DB2F3: SEC
#_1DB2F4: SBC.w $0D00,X
#_1DB2F7: STA.w $0310
#_1DB2FA: BPL .pos_y_low

#_1DB2FC: DEY

.pos_y_low
#_1DB2FD: STY.w $0311

;---------------------------------------------------------------------------------------------------

#_1DB300: PLA
#_1DB301: LDY.b #$00

#_1DB303: SEC
#_1DB304: SBC.w $0D10,X
#_1DB307: STA.w $0312
#_1DB30A: BPL .pos_x_low

#_1DB30C: DEY

.pos_x_low
#_1DB30D: STY.w $0313

;---------------------------------------------------------------------------------------------------

#_1DB310: LDA.b #$01
#_1DB312: STA.w $0428

; Now adjust speed to continue towards target location
#_1DB315: JSR Trinexx_CachePosition

#_1DB318: LDA.w $0D00,X
#_1DB31B: SEC
#_1DB31C: SBC.b #$0C
#_1DB31E: STA.w $0DB0,X

#_1DB321: LDA.w $0B08
#_1DB324: SEC
#_1DB325: SBC.w $0D10,X
#_1DB328: CLC
#_1DB329: ADC.b #$02

#_1DB32B: CMP.b #$04
#_1DB32D: BCS .not_at_target

#_1DB32F: LDA.w $0B09
#_1DB332: SEC
#_1DB333: SBC.w $0D00,X
#_1DB336: CLC
#_1DB337: ADC.b #$02

#_1DB339: CMP.b #$04
#_1DB33B: BCS .not_at_target

.adjust_phase
#_1DB33D: STZ.w $0D80,X

#_1DB340: LDA.b #$30
#_1DB342: STA.w $0DF0,X

.not_at_target
; move the feet twice as fast if trinexx is moving faster
#_1DB345: LDA.w $0E30,X
#_1DB348: BPL Trinexx_AnimateFeet

#_1DB34A: JSR Trinexx_AnimateFeet

;===================================================================================================

Trinexx_AnimateFeet:
#_1DB34D: LDA.w $0E80,X
#_1DB350: LDY.w $0D50,X
#_1DB353: BMI .positive

#_1DB355: SEC
#_1DB356: SBC.b #$02

.positive
#_1DB358: CLC
#_1DB359: ADC.b #$01
#_1DB35B: STA.w $0E80,X

#_1DB35E: AND.b #$0F
#_1DB360: BNE .exit

#_1DB362: LDA.b #!SFX2_21
#_1DB364: JSL SpriteSFX_QueueSFX2WithPan

.exit
#_1DB368: RTS

;===================================================================================================

Trinexx_PrepareLunge:
#_1DB369: JSR Trinexx_WagTail
#_1DB36C: JSR Trinexx_WagTail

#_1DB36F: LDA.w $0DF0,X
#_1DB372: BNE .exit

#_1DB374: INC.w $0D80,X

#_1DB377: LDA.b #$30
#_1DB379: JSL Sprite_ApplySpeedTowardsLink_long

#_1DB37D: LDA.b #$40
#_1DB37F: STA.w $0DF0,X

#_1DB382: LDA.b #!SFX3_26
#_1DB384: STA.w $012F

.exit
#_1DB387: RTS

;===================================================================================================

Trinexx_LungeHead:
#_1DB388: JSR Sprite_Move_XY_Bank1D

#_1DB38B: LDA.w $0DF0,X
#_1DB38E: BNE .move_neck

#_1DB390: JSR Trinexx_RecoverCachedCoords

#_1DB393: STZ.w $0D80,X

#_1DB396: LDA.b #$30
#_1DB398: STA.w $0DF0,X

#_1DB39B: RTS

;---------------------------------------------------------------------------------------------------

.move_neck
; at 32 frames left, reverse the neck velocity
#_1DB39C: CMP.b #$20
#_1DB39E: BNE .exit

#_1DB3A0: LDA.w $0D50,X
#_1DB3A3: EOR.b #$FF
#_1DB3A5: INC A
#_1DB3A6: STA.w $0D50,X

#_1DB3A9: LDA.w $0D40,X
#_1DB3AC: EOR.b #$FF
#_1DB3AE: INC A
#_1DB3AF: STA.w $0D40,X

.exit
#_1DB3B2: RTS

;===================================================================================================

pool Trinexx_WagTail

.limits
#_1DB3B3: db 6, 0

pool off

;---------------------------------------------------------------------------------------------------

Trinexx_WagTail:
#_1DB3B5: LDA.w $0B0D
#_1DB3B8: BNE .tick_timer

#_1DB3BA: INC.w $0B0C

#_1DB3BD: LDA.w $0B0C
#_1DB3C0: AND.b #$03
#_1DB3C2: BNE .exit

#_1DB3C4: LDA.w $0B0B
#_1DB3C7: AND.b #$01
#_1DB3C9: TAY

#_1DB3CA: LDA.w $0B0A
#_1DB3CD: CLC
#_1DB3CE: ADC.w Sprite_ApplyConveyor_shake_x,Y
#_1DB3D1: STA.w $0B0A

#_1DB3D4: CMP.w .limits,Y
#_1DB3D7: BNE .exit

#_1DB3D9: INC.w $0B0B

#_1DB3DC: LDA.b #$08
#_1DB3DE: STA.w $0B0D

.exit
#_1DB3E1: RTS

.tick_timer
#_1DB3E2: DEC.w $0B0D

#_1DB3E5: RTS

;===================================================================================================

; !HARDCODED hitbox
Trinexx_HandleShellCollision:
#_1DB3E6: LDA.w $0D90,X
#_1DB3E9: STA.b $04

#_1DB3EB: LDA.w $0DA0,X
#_1DB3EE: STA.b $05

#_1DB3F0: LDA.w $0DB0,X
#_1DB3F3: STA.b $06

#_1DB3F5: LDA.w $0ED0,X
#_1DB3F8: STA.b $07

;---------------------------------------------------------------------------------------------------

#_1DB3FA: REP #$20

#_1DB3FC: LDA.b $04
#_1DB3FE: SEC
#_1DB3FF: SBC.b $22
#_1DB401: CLC
#_1DB402: ADC.w #$0028

#_1DB405: CMP.w #$0050
#_1DB408: BCS .no_hit

#_1DB40A: LDA.b $06
#_1DB40C: SEC
#_1DB40D: SBC.b $20
#_1DB40F: CLC
#_1DB410: ADC.w #$0010

#_1DB413: CMP.w #$0040
#_1DB416: BCS .no_hit

#_1DB418: SEP #$20

;---------------------------------------------------------------------------------------------------

#_1DB41A: LDA.w $031F
#_1DB41D: ORA.w $037B
#_1DB420: BNE .no_hit

#_1DB422: LDA.b #$01
#_1DB424: STA.b $4D

#_1DB426: LDA.b #$08
#_1DB428: STA.w $0373

#_1DB42B: LDA.b #$10
#_1DB42D: STA.b $46

#_1DB42F: LDA.b #$20
#_1DB431: JSL Sprite_ProjectSpeedTowardsLink_long

#_1DB435: LDA.b $00
#_1DB437: STA.b $27

#_1DB439: LDA.b $01
#_1DB43B: STA.b $28

.no_hit
#_1DB43D: SEP #$20

#_1DB43F: RTS

;===================================================================================================

pool SpriteDraw_TrinexxRockHead

.oam_groups
; group00
#_1DB440: dw  -8,  -8 : db $C0, $40, $00, $02
#_1DB448: dw   8,  -8 : db $C0, $00, $00, $02
#_1DB450: dw  -8,   8 : db $E0, $40, $00, $02
#_1DB458: dw   8,   8 : db $E0, $00, $00, $02

; group01
#_1DB460: dw  -8,  -8 : db $00, $00, $00, $02
#_1DB468: dw   8,  -8 : db $02, $00, $00, $02
#_1DB470: dw  -8,   8 : db $20, $00, $00, $02
#_1DB478: dw   8,   8 : db $22, $00, $00, $02

; group02
#_1DB480: dw  -8,  -8 : db $C2, $00, $00, $02
#_1DB488: dw   8,  -8 : db $C4, $00, $00, $02
#_1DB490: dw  -8,   8 : db $C2, $80, $00, $02
#_1DB498: dw   8,   8 : db $C4, $80, $00, $02

; group03
#_1DB4A0: dw  -8,  -8 : db $20, $80, $00, $02
#_1DB4A8: dw   8,  -8 : db $22, $80, $00, $02
#_1DB4B0: dw  -8,   8 : db $00, $80, $00, $02
#_1DB4B8: dw   8,   8 : db $02, $80, $00, $02

; group04
#_1DB4C0: dw  -8,  -8 : db $E0, $C0, $00, $02
#_1DB4C8: dw   8,  -8 : db $E0, $80, $00, $02
#_1DB4D0: dw  -8,   8 : db $C0, $C0, $00, $02
#_1DB4D8: dw   8,   8 : db $C0, $80, $00, $02

; group05
#_1DB4E0: dw  -8,  -8 : db $22, $C0, $00, $02
#_1DB4E8: dw   8,  -8 : db $20, $C0, $00, $02
#_1DB4F0: dw  -8,   8 : db $02, $C0, $00, $02
#_1DB4F8: dw   8,   8 : db $00, $C0, $00, $02

; group06
#_1DB500: dw  -8,  -8 : db $C4, $40, $00, $02
#_1DB508: dw   8,  -8 : db $C2, $40, $00, $02
#_1DB510: dw  -8,   8 : db $C4, $C0, $00, $02
#_1DB518: dw   8,   8 : db $C2, $C0, $00, $02

; group07
#_1DB520: dw  -8,  -8 : db $02, $40, $00, $02
#_1DB528: dw   8,  -8 : db $00, $40, $00, $02
#_1DB530: dw  -8,   8 : db $22, $40, $00, $02
#_1DB538: dw   8,   8 : db $20, $40, $00, $02

; group08
#_1DB540: dw  -8,  -8 : db $26, $00, $00, $02
#_1DB548: dw   8,  -8 : db $26, $40, $00, $02
#_1DB550: dw  -8,   8 : db $26, $80, $00, $02
#_1DB558: dw   8,   8 : db $26, $C0, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_TrinexxRockHead:
#_1DB560: LDA.b #$00
#_1DB562: XBA
#_1DB563: LDA.w $0DC0,X

#_1DB566: REP #$20

#_1DB568: ASL A ; x32
#_1DB569: ASL A
#_1DB56A: ASL A
#_1DB56B: ASL A
#_1DB56C: ASL A

#_1DB56D: ADC.w #.oam_groups
#_1DB570: STA.b $08

#_1DB572: SEP #$20

#_1DB574: LDA.w $0D80,X
#_1DB577: BMI .low_priority

#_1DB579: LDA.w $0B89,X
#_1DB57C: ORA.b #$30
#_1DB57E: STA.w $0B89,X

.low_priority
#_1DB581: LDA.b #$04
#_1DB583: JSR Sprite_DrawMultiple_Bank1D

;---------------------------------------------------------------------------------------------------

#EXIT_1DB586:
#_1DB586: RTS

;===================================================================================================

SpriteDraw_TrinexxRockHeadAndBody:
#_1DB587: LDA.w $0EB0,X
#_1DB58A: BMI EXIT_1DB586

#_1DB58C: JSR SpriteDraw_TrinexxRockHead

#_1DB58F: LDA.b $05
#_1DB591: AND.b #$EF
#_1DB593: STA.b $05

#_1DB595: LDA.w $0D80,X
#_1DB598: CMP.b #$03
#_1DB59A: BEQ .lunging

#_1DB59C: JMP.w .not_lunging

;---------------------------------------------------------------------------------------------------

.lunging
; Get X absolute offset of neck relative to the cached coordinates
#_1DB59F: LDA.w $0D90,X
#_1DB5A2: SEC
#_1DB5A3: SBC.w $0D10,X
#_1DB5A6: STA.b $08

#_1DB5A8: BPL .sign_okay_x

#_1DB5AA: EOR.b #$FF
#_1DB5AC: INC A

.sign_okay_x
#_1DB5AD: STA.b $0A

; Get Y absolute offset of neck relative to the cached coordinates
#_1DB5AF: LDA.w $0DB0,X
#_1DB5B2: SEC
#_1DB5B3: SBC.w $0D00,X
#_1DB5B6: STA.b $09

#_1DB5B8: BPL .sign_okay_y

#_1DB5BA: EOR.b #$FF
#_1DB5BC: INC A

.sign_okay_y
#_1DB5BD: STA.b $0B

; 8 segments
#_1DB5BF: LDA.b #7
#_1DB5C1: STA.w $0FB5

; OAM offset
#_1DB5C4: LDA.b #$10
#_1DB5C6: STA.w $0FB6

.next_neck_segment
#_1DB5C9: LDY.w $0FB5

; Multiply segment by offset
#_1DB5CC: LDA.b $0A
#_1DB5CE: STA.w CPUMULTA

#_1DB5D1: LDA.w .neck_pos_offset_multipliers,Y
#_1DB5D4: STA.w CPUMULTB

#_1DB5D7: NOP ; 8 NOP
#_1DB5D8: NOP
#_1DB5D9: NOP
#_1DB5DA: NOP
#_1DB5DB: NOP
#_1DB5DC: NOP
#_1DB5DD: NOP
#_1DB5DE: NOP

#_1DB5DF: ASL.w CPUPRODUCTL ; carry = round up
#_1DB5E2: LDA.w CPUPRODUCTH
#_1DB5E5: ADC.b #$00

; make sure the sign matches
#_1DB5E7: LDY.b $08
#_1DB5E9: BPL .invert_x_offset

#_1DB5EB: EOR.b #$FF
#_1DB5ED: INC A

.invert_x_offset
#_1DB5EE: CLC
#_1DB5EF: ADC.b $00

#_1DB5F1: LDY.w $0FB6
#_1DB5F4: STA.b ($90),Y

; Now do the same for Y coord
#_1DB5F6: LDY.w $0FB5

#_1DB5F9: LDA.b $0B
#_1DB5FB: STA.w CPUMULTA

#_1DB5FE: LDA.w .neck_pos_offset_multipliers,Y
#_1DB601: STA.w CPUMULTB

#_1DB604: NOP ; 8 NOP
#_1DB605: NOP
#_1DB606: NOP
#_1DB607: NOP
#_1DB608: NOP
#_1DB609: NOP
#_1DB60A: NOP
#_1DB60B: NOP

#_1DB60C: ASL.w CPUPRODUCTL ; carry = round up
#_1DB60F: LDA.w CPUPRODUCTH
#_1DB612: ADC.b #$00

; make sure the sign matches
#_1DB614: LDY.b $09
#_1DB616: BPL .invert_y_offset

#_1DB618: EOR.b #$FF
#_1DB61A: INC A

.invert_y_offset
#_1DB61B: CLC
#_1DB61C: ADC.b $02

#_1DB61E: LDY.w $0FB6
#_1DB621: INY
#_1DB622: STA.b ($90),Y

; now add the char
#_1DB624: LDA.b #$28
#_1DB626: INY
#_1DB627: STA.b ($90),Y

; add properties
#_1DB629: LDA.b $05
#_1DB62B: INY
#_1DB62C: STA.b ($90),Y

#_1DB62E: PHY

; add size and x.8
#_1DB62F: TYA
#_1DB630: LSR A
#_1DB631: LSR A
#_1DB632: TAY

#_1DB633: LDA.b #$02
#_1DB635: STA.b ($92),Y

#_1DB637: PLY

; save offset
#_1DB638: INY
#_1DB639: STY.w $0FB6

; decrement counter
#_1DB63C: DEC.w $0FB5
#_1DB63F: BPL .next_neck_segment

;---------------------------------------------------------------------------------------------------

.not_lunging
; draw feet
#_1DB641: REP #$20

; !HARDCODED oam slots
#_1DB643: LDA.w #$09F0
#_1DB646: STA.b $90

#_1DB648: LDA.w #$0A9C
#_1DB64B: STA.b $92

#_1DB64D: SEP #$20

#_1DB64F: LDA.w $0D90,X
#_1DB652: SEC
#_1DB653: SBC.b $E2
#_1DB655: STA.b $00

#_1DB657: LDA.w $0DB0,X
#_1DB65A: SEC
#_1DB65B: SBC.b $E8
#_1DB65D: STA.b $02

#_1DB65F: LDA.w $0D20,X
#_1DB662: SBC.b $E9
#_1DB664: STA.b $03

#_1DB666: LDA.b #$01
#_1DB668: STA.w $0FB5

;---------------------------------------------------------------------------------------------------

#_1DB66B: LDA.w $0D50,X
#_1DB66E: CLC
#_1DB66F: ADC.b #$03
#_1DB671: CMP.b #$07

#_1DB673: LDA.b #$00
#_1DB675: BCC .slow

#_1DB677: LDA.w $0E80,X
#_1DB67A: LSR A
#_1DB67B: LSR A
#_1DB67C: AND.b #$0F

.slow
#_1DB67E: STA.b $06

#_1DB680: CLC
#_1DB681: ADC.b #$08
#_1DB683: AND.b #$0F
#_1DB685: STA.b $07

#_1DB687: LDA.w $0E80,X
#_1DB68A: LSR A
#_1DB68B: LSR A
#_1DB68C: AND.b #$0F
#_1DB68E: STA.b $08

#_1DB690: CLC
#_1DB691: ADC.b #$08
#_1DB693: AND.b #$0F
#_1DB695: STA.b $09

;---------------------------------------------------------------------------------------------------

#_1DB697: LDY.b #$00

#_1DB699: PHX

.next_foot
#_1DB69A: LDA.b $00
#_1DB69C: CLC
#_1DB69D: ADC.w .foot_base_offset_x,X
#_1DB6A0: PHA

#_1DB6A1: LDA.b $06,X
#_1DB6A3: TAX

#_1DB6A4: PLA
#_1DB6A5: CLC
#_1DB6A6: ADC.w .foot_rotation_offset_x,X
#_1DB6A9: STA.b ($90),Y

#_1DB6AB: INY ; +4
#_1DB6AC: INY
#_1DB6AD: INY
#_1DB6AE: INY

#_1DB6AF: STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

#_1DB6B1: LDA.b $02
#_1DB6B3: CLC
#_1DB6B4: ADC.b #$F8
#_1DB6B6: PHA

#_1DB6B7: LDX.w $0FB5

#_1DB6BA: LDA.b $08,X
#_1DB6BC: TAX

#_1DB6BD: PLA
#_1DB6BE: CLC
#_1DB6BF: ADC.w .foot_rotation_offset_y,X

#_1DB6C2: DEY
#_1DB6C3: DEY
#_1DB6C4: DEY

#_1DB6C5: STA.b ($90),Y

#_1DB6C7: CLC
#_1DB6C8: ADC.b #$10

#_1DB6CA: INY ; +4
#_1DB6CB: INY
#_1DB6CC: INY
#_1DB6CD: INY
#_1DB6CE: STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

#_1DB6D0: LDA.b #$0C

#_1DB6D2: DEY
#_1DB6D3: DEY
#_1DB6D4: DEY

#_1DB6D5: STA.b ($90),Y

#_1DB6D7: LDA.b #$2A

#_1DB6D9: INY ; +4
#_1DB6DA: INY
#_1DB6DB: INY
#_1DB6DC: INY

#_1DB6DD: STA.b ($90),Y

#_1DB6DF: DEY
#_1DB6E0: DEY
#_1DB6E1: DEY

;---------------------------------------------------------------------------------------------------

#_1DB6E2: LDX.w $0FB5

#_1DB6E5: LDA.b $05
#_1DB6E7: ORA.w .foot_flip,X
#_1DB6EA: STA.b ($90),Y

#_1DB6EC: INY ; +4
#_1DB6ED: INY
#_1DB6EE: INY
#_1DB6EF: INY

#_1DB6F0: STA.b ($90),Y

#_1DB6F2: PHY

#_1DB6F3: TYA
#_1DB6F4: LSR A
#_1DB6F5: LSR A
#_1DB6F6: TAY

#_1DB6F7: LDA.b #$02
#_1DB6F9: STA.b ($92),Y

#_1DB6FB: DEY

#_1DB6FC: STA.b ($92),Y

#_1DB6FE: PLY
#_1DB6FF: INY

#_1DB700: DEC.w $0FB5
#_1DB703: BPL .next_foot

;---------------------------------------------------------------------------------------------------

; Draw tail
; get wag index*5
#_1DB705: LDA.w $0B0A
#_1DB708: ASL A
#_1DB709: ASL A
#_1DB70A: ADC.w $0B0A
#_1DB70D: STA.b $06

#_1DB70F: LDY.b #$00 ; oam index
#_1DB711: LDX.b #$00 ; segment index

; !HARDCODED oam slots
.next_tail_segment
#_1DB713: PHX

#_1DB714: TXA ; get (slot+wag)*2
#_1DB715: CLC
#_1DB716: ADC.b $06
#_1DB718: ASL A
#_1DB719: TAX

#_1DB71A: REP #$20

#_1DB71C: LDA.b $00
#_1DB71E: CLC
#_1DB71F: ADC.w .tail_offset_x,X
#_1DB722: STA.w $096C,Y

#_1DB725: LDA.b $02
#_1DB727: SEC
#_1DB728: SBC.w .tail_offset_y,X
#_1DB72B: SBC.w #$0020
#_1DB72E: CLC
#_1DB72F: ADC.w $0B0F
#_1DB732: INY
#_1DB733: STA.w $096C,Y

#_1DB736: CLC
#_1DB737: ADC.w #$0010
#_1DB73A: CMP.w #$0100

#_1DB73D: SEP #$20
#_1DB73F: BCC .tail_segment_on_screen

#_1DB741: LDA.b #$F0
#_1DB743: STA.w $096C,Y

.tail_segment_on_screen
#_1DB746: PLX

#_1DB747: LDA.w .tail_char,X
#_1DB74A: INY
#_1DB74B: STA.w $096C,Y

#_1DB74E: LDA.b $05
#_1DB750: INY
#_1DB751: STA.w $096C,Y

#_1DB754: PHY

#_1DB755: TYA
#_1DB756: LSR A
#_1DB757: LSR A
#_1DB758: TAY

#_1DB759: LDA.b #$02
#_1DB75B: STA.w $0A7B,Y

#_1DB75E: PLY
#_1DB75F: INY

#_1DB760: INX
#_1DB761: CPX.b #$05
#_1DB763: BNE .next_tail_segment

;---------------------------------------------------------------------------------------------------

#_1DB765: PLX
#_1DB766: LDA.b $11
#_1DB768: BEQ .exit

#_1DB76A: LDY.b #$02
#_1DB76C: LDA.b #$03
#_1DB76E: JSL Sprite_CorrectOAMEntries_long

.exit
#_1DB772: RTS

;---------------------------------------------------------------------------------------------------

.tail_offset_x
#_1DB773: dw   0,   3,   9,  16,  24
#_1DB77D: dw   0,   2,   7,  13,  20
#_1DB787: dw   0,   1,   4,   9,  15
#_1DB791: dw   0,   0,   0,   0,   0
#_1DB79B: dw   0,  -1,  -4,  -9, -15
#_1DB7A5: dw   0,  -2,  -7, -13, -20
#_1DB7AF: dw   0,  -3,  -9, -16, -24

.tail_offset_y
#_1DB7B9: dw  24,  32,  37,  37,  33
#_1DB7C3: dw  24,  32,  39,  42,  44
#_1DB7CD: dw  24,  32,  40,  47,  52
#_1DB7D7: dw  24,  33,  42,  52,  61
#_1DB7E1: dw  24,  32,  40,  47,  52
#_1DB7EB: dw  24,  32,  39,  42,  44
#_1DB7F5: dw  24,  32,  37,  37,  33

.tail_char
#_1DB7FF: db $06, $28, $28, $2C, $2C

;---------------------------------------------------------------------------------------------------

; Used for Y to calculate the OAM slot of each segment
; based on how far the neck is stuck out
.neck_pos_offset_multipliers
#_1DB804: db $FC, $E0, $C0, $A0, $80, $60, $40, $20

;---------------------------------------------------------------------------------------------------

.foot_base_offset_x
#_1DB80C: db -28 ; right foot
#_1DB80D: db  28 ; left foot

.foot_flip
#_1DB80E: db $40 ; right foot
#_1DB80F: db $00 ; left foot

.foot_rotation_offset_x
#_1DB810: db  0,  2,  3,  4,  4,  4,  3,  2 ; right foot
#_1DB818: db  0, -2, -3, -4, -4, -4, -3, -2 ; left foot

.foot_rotation_offset_y
#_1DB820: db -4, -4, -3, -2,  0,  2,  3,  4 ; right foot
#_1DB828: db  4,  4,  3,  2,  0, -2, -3, -4 ; left foot

;===================================================================================================

pool Sidenexx

.segment_boundary_x
#_1DB830: db   64,   64,   64,   64,   64,   64,   64,   64,   64
#_1DB839: db   88,  100,  106,  111,  116,  122,  126, -128, -128
#_1DB842: db   57,   72,   82,   92,  101,  115,  119,  122, -128
#_1DB84B: db   30,   36,   41,   46,   52,   58,   68,   77, -128
#_1DB854: db   10,   17,   23,   28,   34,   42,   54,   58, -128

.segment_boundary_y
#_1DB85D: db   48,   40,   35,   30,   25,   19,   12,    6,    0
#_1DB866: db   47,   38,   33,   29,   24,   18,   12,    6,    0
#_1DB86F: db   47,   39,   34,   29,   24,   18,   12,    6,    0
#_1DB878: db   47,   39,   34,   29,   24,   18,   12,    6,    0
#_1DB881: db   72,   58,   50,   41,   34,   25,   16,    7,    0

.base_offset_x
#_1DB88A: db -14,  13

.base_offset_y
#_1DB88C: db  -1,   0

; TODO is this used?
#_1DB88E: db   0,   1,  -1,   0,   0,  -1,   0,   1,  -1

pool off

;===================================================================================================

Sprite_CC_TrinexxBreath_FireHead:
#_1DB897: LDA.w $0E90,X
#_1DB89A: BEQ Sidenexx

#_1DB89C: JMP.w TrinexxBreath_fire

;===================================================================================================

Sprite_CD_TrinexxBreath_IceHead:
#_1DB89F: LDA.w $0E90,X
#_1DB8A2: BEQ Sidenexx

#_1DB8A4: JMP.w TrinexxBreath_ice

;===================================================================================================

Sidenexx:
#_1DB8A7: LDA.w $0E20,X
#_1DB8AA: SEC
#_1DB8AB: SBC.b #$CC
#_1DB8AD: TAY

#_1DB8AE: LDA.w $0D90
#_1DB8B1: CLC
#_1DB8B2: ADC.w .base_offset_x,Y
#_1DB8B5: STA.w $0D90,X

#_1DB8B8: LDA.w $0DA0
#_1DB8BB: ADC.w .base_offset_y,Y
#_1DB8BE: STA.w $0DA0,X

#_1DB8C1: LDA.w $0DB0
#_1DB8C4: SEC
#_1DB8C5: SBC.b #$20
#_1DB8C7: STA.w $0DB0,X

#_1DB8CA: LDA.w $0ED0
#_1DB8CD: SBC.b #$00
#_1DB8CF: STA.w $0ED0,X

#_1DB8D2: LDA.w $0B89,X
#_1DB8D5: ORA.b #$30
#_1DB8D7: STA.w $0B89,X

;---------------------------------------------------------------------------------------------------

#_1DB8DA: JSR SpriteDraw_Sidenexx
#_1DB8DD: JSR Sprite_CheckIfActive_Bank1D

#_1DB8E0: LDA.w $0D80,X
#_1DB8E3: BPL .not_exploding

#_1DB8E5: STA.w $0BA0,X

#_1DB8E8: JMP.w Sidenexx_Explode

;---------------------------------------------------------------------------------------------------

.not_exploding
#_1DB8EB: LDA.w $0EF0,X
#_1DB8EE: BEQ .not_stunned

#_1DB8F0: LDA.w $0D80,X
#_1DB8F3: CMP.b #$04
#_1DB8F5: BEQ .not_stunned

#_1DB8F7: STZ.w $0EF0,X

#_1DB8FA: LDA.b #$80
#_1DB8FC: STA.w $0DF0,X

#_1DB8FF: LDA.b #$04
#_1DB901: STA.w $0D80,X

#_1DB904: LDA.w $0F50,X
#_1DB907: STA.w $0F80,X

#_1DB90A: LDA.b #$03
#_1DB90C: STA.w $0F50,X

;---------------------------------------------------------------------------------------------------

.not_stunned
#_1DB90F: JSR Sprite_CheckDamageToAndFromLink_Bank1D

#_1DB912: LDA.w $0CAA,X
#_1DB915: ORA.b #$04
#_1DB917: STA.w $0CAA,X

#_1DB91A: LDA.w $0D80,X
#_1DB91D: JSL JumpTableLocal
#_1DB921: dw Sidenexx_Dormant
#_1DB923: dw Sidenexx_Think
#_1DB925: dw Sidenexx_Move
#_1DB927: dw Sidenexx_Breathe
#_1DB929: dw Sidenexx_Stunned

;===================================================================================================

Sidenexx_Stunned:
#_1DB92B: LDA.w $0CAA,X
#_1DB92E: AND.b #$FB
#_1DB930: STA.w $0CAA,X

#_1DB933: STZ.w $0E30,X

#_1DB936: LDA.w $0DF0,X
#_1DB939: BNE .delay

#_1DB93B: PHA

#_1DB93C: LDA.b #$01
#_1DB93E: STA.w $0D80,X

#_1DB941: LDA.b #$20
#_1DB943: STA.w $0DF0,X

#_1DB946: LDA.w $0F80,X
#_1DB949: STA.w $0F50,X

#_1DB94C: STZ.w $0EF0,X

#_1DB94F: PLA

;---------------------------------------------------------------------------------------------------

.delay
#_1DB950: CMP.b #$0F
#_1DB952: BCC .unflash_color

#_1DB954: CMP.b #$4E
#_1DB956: BCS .exit

#_1DB958: CMP.b #$3F
#_1DB95A: BCC .exit

#_1DB95C: LDA.w $0E20,X
#_1DB95F: CMP.b #!SPRITE_CD
#_1DB961: BNE .not_ice_head_a

#_1DB963: PHX
#_1DB964: JSL Trinexx_FlashShellPalette_Blue
#_1DB968: PLX

#_1DB969: RTS

;---------------------------------------------------------------------------------------------------

.not_ice_head_a
#_1DB96A: PHX
#_1DB96B: JSL Trinexx_FlashShellPalette_Red
#_1DB96F: PLX

.exit
#_1DB970: RTS

;---------------------------------------------------------------------------------------------------

.unflash_color
#_1DB971: LDA.w $0E20,X
#_1DB974: CMP.b #!SPRITE_CD
#_1DB976: BNE .not_ice_head_b

#_1DB978: PHX
#_1DB979: JSL Trinexx_UnflashShellPalette_Blue
#_1DB97D: PLX

#_1DB97E: RTS

;---------------------------------------------------------------------------------------------------

.not_ice_head_b
#_1DB97F: PHX
#_1DB980: JSL Trinexx_UnflashShellPalette_Red
#_1DB984: PLX

#_1DB985: RTS

;===================================================================================================

Sidenexx_Dormant:
#_1DB986: LDA.w $0E60,X
#_1DB989: ORA.b #$40
#_1DB98B: STA.w $0E60,X

#_1DB98E: LDA.w $0DF0,X
#_1DB991: BNE .delay

#_1DB993: LDA.b #$02
#_1DB995: STA.w $0D80,X

#_1DB998: LDA.b #$09
#_1DB99A: STA.w $0E80,X

#_1DB99D: LDA.w $0E60,X
#_1DB9A0: AND.b #$BF
#_1DB9A2: STA.w $0E60,X

.delay
#_1DB9A5: RTS

;===================================================================================================

Sidenexx_Think:
#_1DB9A6: LDA.w $0DF0,X
#_1DB9A9: BNE .exit

#_1DB9AB: LDA.w $0DE0,X
#_1DB9AE: STA.b $00

; rerolls a new move
#_1DB9B0: JSL GetRandomNumber
#_1DB9B4: AND.b #$07
#_1DB9B6: INC A

; don't get an out of bounds AI
#_1DB9B7: CMP.b #$05
#_1DB9B9: BCS .exit

#_1DB9BB: CMP.w $0DE0,X
#_1DB9BE: BEQ .exit

#_1DB9C0: STA.w $0DE0,X

#_1DB9C3: INC.w $0D80,X

#_1DB9C6: LDA.b $00
#_1DB9C8: CMP.b #$01
#_1DB9CA: BNE .exit

; randomly stop half the time
#_1DB9CC: JSL GetRandomNumber
#_1DB9D0: LSR A
#_1DB9D1: BCS .exit

; skip if main body is moving
#_1DB9D3: LDA.w $0D80
#_1DB9D6: CMP.b #$02
#_1DB9D8: BCS .exit

#_1DB9DA: INC.w $0DC0,X

#_1DB9DD: LDA.w $0DC0,X
#_1DB9E0: CMP.b #$06

#_1DB9E2: NOP ; why are these even here? useless
#_1DB9E3: NOP

#_1DB9E4: STZ.w $0DC0,X

#_1DB9E7: LDA.b #$03
#_1DB9E9: STA.w $0D80,X

#_1DB9EC: LDA.b #$7F
#_1DB9EE: STA.w $0DF0,X

.exit
#_1DB9F1: RTS

;===================================================================================================

Sidenexx_Move:
#_1DB9F2: STZ.b $01

#_1DB9F4: LDA.w $0DE0,X ; get *9
#_1DB9F7: ASL A
#_1DB9F8: ASL A
#_1DB9F9: ASL A
#_1DB9FA: ADC.w $0DE0,X
#_1DB9FD: TAY

#_1DB9FE: LDA.w Sidenexx_SegmentIndexOffset,X

#_1DBA01: PHX

#_1DBA02: TAX

#_1DBA03: LDA.b #$08
#_1DBA05: STA.b $00

.next_segment
#_1DBA07: LDA.w $1D10,X
#_1DBA0A: CMP.w Sidenexx_segment_boundary_x,Y
#_1DBA0D: BEQ .continue_x
#_1DBA0F: BPL .adjust_x

#_1DBA11: INC.w $1D10,X

#_1DBA14: INC.b $01

#_1DBA16: BRA .continue_x

.adjust_x
#_1DBA18: DEC.w $1D10,X

#_1DBA1B: INC.b $01

;---------------------------------------------------------------------------------------------------

.continue_x
#_1DBA1D: LDA.w $1D10,X
#_1DBA20: CMP.w Sidenexx_segment_boundary_x,Y
#_1DBA23: BEQ .continue_x_again
#_1DBA25: BPL .adjust_x_again

#_1DBA27: INC.w $1D10,X
#_1DBA2A: INC.b $01

#_1DBA2C: BRA .continue_x_again

.adjust_x_again
#_1DBA2E: DEC.w $1D10,X

#_1DBA31: INC.b $01

;---------------------------------------------------------------------------------------------------

.continue_x_again
#_1DBA33: LDA.b $1A
#_1DBA35: AND.b #$00
#_1DBA37: BNE .skip_y

#_1DBA39: LDA.w $1D50,X
#_1DBA3C: CMP.w Sidenexx_segment_boundary_y,Y
#_1DBA3F: BEQ .continue_y
#_1DBA41: BPL .adjust_y

#_1DBA43: INC.w $1D50,X

#_1DBA46: INC.b $01

#_1DBA48: BRA .continue_y

.adjust_y
#_1DBA4A: DEC.w $1D50,X

.skip_y
#_1DBA4D: INC.b $01

;---------------------------------------------------------------------------------------------------

.continue_y
#_1DBA4F: INX

#_1DBA50: INY

#_1DBA51: DEC.b $00
#_1DBA53: BPL .next_segment

#_1DBA55: PLX

; TODO some timer based on the neck movement?
#_1DBA56: LDA.b $01
#_1DBA58: BNE .exit

#_1DBA5A: DEC.w $0D80,X

#_1DBA5D: JSL GetRandomNumber
#_1DBA61: AND.b #$0F
#_1DBA63: STA.w $0DF0,X

.exit
#_1DBA66: RTS

;===================================================================================================

UNREACHABLE_1DBA67:
#_1DBA67: RTS

;===================================================================================================

pool Sidenexx_Breathe

.timer_masks
#_1DBA68: db $01, $01, $03, $03, $07, $0F, $1F, $1F

pool off

;---------------------------------------------------------------------------------------------------

Sidenexx_Breathe:
#_1DBA70: LDA.w $0DF0,X
#_1DBA73: BNE .breathe_yes

#_1DBA75: STZ.w $0D80,X

#_1DBA78: LDA.b #$20
#_1DBA7A: STA.w $0DF0,X

#_1DBA7D: RTS

;---------------------------------------------------------------------------------------------------

.breathe_yes
#_1DBA7E: CMP.b #$40
#_1DBA80: BNE .dont_breathe

#_1DBA82: PHA

#_1DBA83: JSR Sidenexx_ExhaleDanger

#_1DBA86: PLA

;---------------------------------------------------------------------------------------------------

.dont_breathe
#_1DBA87: CMP.b #$08
#_1DBA89: BCC .continue

#_1DBA8B: CMP.b #$79
#_1DBA8D: LDA.b #$08
#_1DBA8F: BCC .continue

#_1DBA91: LDA.w $0DF0,X
#_1DBA94: CLC
#_1DBA95: ADC.b #$80
#_1DBA97: EOR.b #$FF

;---------------------------------------------------------------------------------------------------

.continue
#_1DBA99: STA.w $0E30,X

#_1DBA9C: LDA.w $0DF0,X
#_1DBA9F: CMP.b #$40
#_1DBAA1: BCC .exit

#_1DBAA3: SEC
#_1DBAA4: SBC.b #$40
#_1DBAA6: LSR A
#_1DBAA7: LSR A
#_1DBAA8: LSR A
#_1DBAA9: TAY

#_1DBAAA: LDA.b $1A
#_1DBAAC: AND.w .timer_masks,Y
#_1DBAAF: BNE .exit

#_1DBAB1: JSL GetRandomNumber
#_1DBAB5: AND.b #$0F

#_1DBAB7: LDY.b #$00

#_1DBAB9: SEC
#_1DBABA: SBC.b #$03
#_1DBABC: STA.b $00
#_1DBABE: BPL .positive

#_1DBAC0: DEY

.positive
#_1DBAC1: STY.b $01

;---------------------------------------------------------------------------------------------------

#_1DBAC3: JSL GetRandomNumber
#_1DBAC7: AND.b #$0F
#_1DBAC9: CLC
#_1DBACA: ADC.b #$0C
#_1DBACC: STA.b $02
#_1DBACE: STZ.b $03

#_1DBAD0: JSL GarnishSpawn_Sparkle

#_1DBAD4: LDA.w $0E20,X
#_1DBAD7: CMP.b #!SPRITE_CC
#_1DBAD9: BNE .exit

#_1DBADB: PHX

#_1DBADC: LDX.b $0F

#_1DBADE: LDA.b #!GARNISH_0E
#_1DBAE0: STA.l $7FF800,X

#_1DBAE4: PLX

.exit
#_1DBAE5: RTS

;===================================================================================================

pool Sidenexx_ExhaleDanger

.dir
#_1DBAE6: db  -2,   1

pool off

;---------------------------------------------------------------------------------------------------

Sidenexx_ExhaleDanger:
#_1DBAE8: LDA.w $0E20,X
#_1DBAEB: CMP.b #!SPRITE_CD
#_1DBAED: BNE .breathe_fire

#_1DBAEF: STZ.w $0FB6

#_1DBAF2: JSR .breathe_ice

#_1DBAF5: INC.w $0FB6
#_1DBAF8: LDA.b #!SPRITE_CD

;---------------------------------------------------------------------------------------------------

.breathe_ice
#_1DBAFA: JSL Sprite_SpawnDynamically
#_1DBAFE: BMI .spawn_failed

#_1DBB00: JSL Sprite_SetSpawnedCoordinates

#_1DBB04: PHX

#_1DBB05: LDX.w $0FB6
#_1DBB08: LDA.w .dir,X
#_1DBB0B: STA.w $0DB0,Y

#_1DBB0E: PLX

#_1DBB0F: LDA.b #!SFX3_19
#_1DBB11: JSL SpriteSFX_QueueSFX3WithPan

#_1DBB15: BRA .final_adjustments

;---------------------------------------------------------------------------------------------------

.breathe_fire
#_1DBB17: JSL Sprite_SpawnDynamically
#_1DBB1B: BMI .spawn_failed

#_1DBB1D: JSL Sprite_SetSpawnedCoordinates

#_1DBB21: LDA.b #!SFX2_2A
#_1DBB23: JSL SpriteSFX_QueueSFX2WithPan

;---------------------------------------------------------------------------------------------------

.final_adjustments
#_1DBB27: LDA.b #$01
#_1DBB29: STA.w $0E90,Y
#_1DBB2C: STA.w $0BA0,Y

#_1DBB2F: LDA.b #$18
#_1DBB31: STA.w $0D40,Y

#_1DBB34: LDA.b #$00
#_1DBB36: STA.w $0E40,Y

#_1DBB39: LDA.b #$40
#_1DBB3B: STA.w $0E60,Y

.spawn_failed
#_1DBB3E: RTS

;===================================================================================================

Sidenexx_Explode:
#_1DBB3F: LDA.w $0DF0,X
#_1DBB42: BNE .exit

#_1DBB44: LDA.b #$0C
#_1DBB46: STA.w $0DF0,X

#_1DBB49: LDA.w $0E80,X
#_1DBB4C: CMP.b #$01
#_1DBB4E: BNE .stay_alive

#_1DBB50: STZ.w $0DD0,X

;---------------------------------------------------------------------------------------------------

.stay_alive
#_1DBB53: DEC.w $0E80,X

#_1DBB56: LDA.w $0FD8
#_1DBB59: CLC
#_1DBB5A: ADC.b $E2
#_1DBB5C: STA.w $0FD8

#_1DBB5F: LDA.w $0FDA
#_1DBB62: CLC
#_1DBB63: ADC.b $E8
#_1DBB65: STA.w $0FDA

#_1DBB68: JSL MakeBossExplosion

.exit
#_1DBB6C: RTS

;===================================================================================================

Sidenexx_SegmentIndexOffset:
#_1DBB6D: db $00, $09, $12

;===================================================================================================

SpriteDraw_Sidenexx:
#_1DBB70: LDA.w $0D90,X
#_1DBB73: STA.w $0D10,X

#_1DBB76: LDA.w $0DA0,X
#_1DBB79: STA.w $0D30,X

#_1DBB7C: LDA.w $0DB0,X
#_1DBB7F: STA.w $0D00,X

#_1DBB82: LDA.w $0ED0,X
#_1DBB85: STA.w $0D20,X

#_1DBB88: JSL Sprite_Get16BitCoords_long
#_1DBB8C: JSR Sprite_PrepOAMCoord_Bank1D

#_1DBB8F: STZ.w $0FB5
#_1DBB92: STZ.w $0FB6

.next_segment
#_1DBB95: LDY.w $0FB5

#_1DBB98: TYA
#_1DBB99: CLC
#_1DBB9A: ADC.w Sidenexx_SegmentIndexOffset,X
#_1DBB9D: TAY

; check sprite slot
#_1DBB9E: CPX.b #$02
#_1DBBA0: BEQ .ice_head

#_1DBBA2: LDA.w $1D10,Y
#_1DBBA5: EOR.b #$FF
#_1DBBA7: INC A

#_1DBBA8: STA.b $06
#_1DBBAA: LDA.b #$01
#_1DBBAC: STA.b $07
#_1DBBAE: BRA .continue_a

;---------------------------------------------------------------------------------------------------

.ice_head
#_1DBBB0: LDA.w $1D10,Y
#_1DBBB3: STA.b $06
#_1DBBB5: STZ.b $07

;---------------------------------------------------------------------------------------------------

.continue_a
#_1DBBB7: LDA.w $1D50,Y
#_1DBBBA: STA.b $0F

#_1DBBBC: PHX

#_1DBBBD: REP #$30

#_1DBBBF: LDA.b $06
#_1DBBC1: AND.w #$00FF
#_1DBBC4: ASL A
#_1DBBC5: TAX

#_1DBBC6: LDA.l SmoothCurve,X
#_1DBBCA: STA.b $0A

#_1DBBCC: LDA.b $06
#_1DBBCE: CLC
#_1DBBCF: ADC.w #$0080
#_1DBBD2: STA.b $08

#_1DBBD4: AND.w #$00FF
#_1DBBD7: ASL A
#_1DBBD8: TAX

#_1DBBD9: LDA.l SmoothCurve,X
#_1DBBDD: STA.b $0C

;---------------------------------------------------------------------------------------------------

#_1DBBDF: SEP #$30

#_1DBBE1: PLX

#_1DBBE2: LDA.b $0A
#_1DBBE4: STA.w CPUMULTA

#_1DBBE7: LDA.b $0F

#_1DBBE9: LDY.b $0B
#_1DBBEB: BNE .nonzero_a

#_1DBBED: STA.w CPUMULTB

#_1DBBF0: NOP ; 8 NOP
#_1DBBF1: NOP
#_1DBBF2: NOP
#_1DBBF3: NOP
#_1DBBF4: NOP
#_1DBBF5: NOP
#_1DBBF6: NOP
#_1DBBF7: NOP

#_1DBBF8: ASL.w CPUPRODUCTL ; carry = round up
#_1DBBFB: LDA.w CPUPRODUCTH
#_1DBBFE: ADC.b #$00

.nonzero_a
#_1DBC00: LSR.b $07
#_1DBC02: BCC .leave_sign_a

#_1DBC04: EOR.b #$FF
#_1DBC06: INC A

.leave_sign_a
#_1DBC07: STA.w $0FA8

;---------------------------------------------------------------------------------------------------

#_1DBC0A: LDA.b $0C
#_1DBC0C: STA.w CPUMULTA

#_1DBC0F: LDA.b $0F
#_1DBC11: LDY.b $0D
#_1DBC13: BNE .nonzero_b

#_1DBC15: STA.w CPUMULTB

#_1DBC18: NOP ; 8 NOP
#_1DBC19: NOP
#_1DBC1A: NOP
#_1DBC1B: NOP
#_1DBC1C: NOP
#_1DBC1D: NOP
#_1DBC1E: NOP
#_1DBC1F: NOP

#_1DBC20: ASL.w CPUPRODUCTL ; carry = round up
#_1DBC23: LDA.w CPUPRODUCTH
#_1DBC26: ADC.b #$00

.nonzero_b
#_1DBC28: LSR.b $09
#_1DBC2A: BCC .leave_sign_b

#_1DBC2C: EOR.b #$FF
#_1DBC2E: INC A

.leave_sign_b
#_1DBC2F: STA.w $0FA9

#_1DBC32: LDA.w $0FB5
#_1DBC35: BNE .not_head

#_1DBC37: JSR SpriteDraw_Sidenexx_Head

#_1DBC3A: BRA .continue_b

;---------------------------------------------------------------------------------------------------

.not_head
#_1DBC3C: LDA.b $00
#_1DBC3E: CLC
#_1DBC3F: ADC.w $0FA8

#_1DBC42: LDY.w $0FB6

#_1DBC45: STA.b ($90),Y
#_1DBC47: STA.w $0FD8

#_1DBC4A: LDA.w $0FA9
#_1DBC4D: CLC
#_1DBC4E: ADC.b $02

#_1DBC50: LDY.w $0FB6
#_1DBC53: INY

#_1DBC54: STA.b ($90),Y
#_1DBC56: STA.w $0FDA

#_1DBC59: LDA.b #$08
#_1DBC5B: INY
#_1DBC5C: STA.b ($90),Y

#_1DBC5E: LDA.b $05
#_1DBC60: INY
#_1DBC61: STA.b ($90),Y

#_1DBC63: PHY

#_1DBC64: TYA
#_1DBC65: LSR A
#_1DBC66: LSR A
#_1DBC67: TAY

#_1DBC68: LDA.b #$02
#_1DBC6A: STA.b ($92),Y

#_1DBC6C: PLY
#_1DBC6D: INY

#_1DBC6E: STY.w $0FB6

;---------------------------------------------------------------------------------------------------

.continue_b
#_1DBC71: INC.w $0FB5

#_1DBC74: LDA.w $0FB5
#_1DBC77: CMP.w $0E80,X
#_1DBC7A: BEQ .finished

#_1DBC7C: JMP.w .next_segment

;---------------------------------------------------------------------------------------------------

.finished
#_1DBC7F: LDA.b $11
#_1DBC81: BEQ .exit

#_1DBC83: LDY.b #$02
#_1DBC85: LDA.b #$04
#_1DBC87: JSL Sprite_CorrectOAMEntries_long

.exit
#_1DBC8B: RTS

;===================================================================================================

pool SpriteDraw_Sidenexx_Head

.offset_x
#_1DBC8C: db  -8,   8,  -8,   8,   0

.offset_y
#_1DBC91: db  -8,  -8,   8,   8,   2

.char
#_1DBC96: db $04, $04, $24, $24, $0A

.flip
#_1DBC9B: db $40, $00, $40, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Sidenexx_Head:
#_1DBCA0: LDA.w $0E30,X
#_1DBCA3: STA.b $08

#_1DBCA5: PHX

#_1DBCA6: LDX.b #$00
#_1DBCA8: LDY.w $0FB6

.next_object
#_1DBCAB: LDA.w $0FA8
#_1DBCAE: CLC
#_1DBCAF: ADC.b $00
#_1DBCB1: STA.w $0FD8

#_1DBCB4: CLC
#_1DBCB5: ADC.w .offset_x,X
#_1DBCB8: STA.b ($90),Y

#_1DBCBA: LDA.w $0FA9
#_1DBCBD: CLC
#_1DBCBE: ADC.b $02
#_1DBCC0: STA.w $0FDA

#_1DBCC3: CLC
#_1DBCC4: ADC.w .offset_y,X

#_1DBCC7: CPX.b #$04
#_1DBCC9: BNE .not_mouth

#_1DBCCB: CLC
#_1DBCCC: ADC.b $08

;---------------------------------------------------------------------------------------------------

.not_mouth
#_1DBCCE: INY
#_1DBCCF: STA.b ($90),Y

#_1DBCD1: LDA.w .char,X
#_1DBCD4: INY
#_1DBCD5: STA.b ($90),Y

#_1DBCD7: LDA.b $05
#_1DBCD9: ORA.w .flip,X

#_1DBCDC: INY
#_1DBCDD: STA.b ($90),Y

#_1DBCDF: PHY

#_1DBCE0: TYA
#_1DBCE1: LSR A
#_1DBCE2: LSR A
#_1DBCE3: TAY

#_1DBCE4: LDA.b #$02
#_1DBCE6: STA.b ($92),Y

#_1DBCE8: PLY
#_1DBCE9: INY

#_1DBCEA: INX

#_1DBCEB: CPX.b #$05
#_1DBCED: BNE .next_object

#_1DBCEF: PLX

;---------------------------------------------------------------------------------------------------

#_1DBCF0: LDA.w $0FB6
#_1DBCF3: CLC
#_1DBCF4: ADC.b #$14
#_1DBCF6: STA.w $0FB6

#_1DBCF9: LDY.b #$00
#_1DBCFB: LDA.w $0FA8
#_1DBCFE: BPL .positive_x

#_1DBD00: DEY

.positive_x
#_1DBD01: CLC
#_1DBD02: ADC.w $0D90,X
#_1DBD05: STA.w $0D10,X

#_1DBD08: TYA
#_1DBD09: ADC.w $0DA0,X
#_1DBD0C: STA.w $0D30,X

#_1DBD0F: LDY.b #$00
#_1DBD11: LDA.w $0FA9
#_1DBD14: BPL .positive_y

#_1DBD16: DEY

.positive_y
#_1DBD17: CLC
#_1DBD18: ADC.w $0DB0,X
#_1DBD1B: STA.w $0D00,X

#_1DBD1E: TYA
#_1DBD1F: ADC.w $0ED0,X
#_1DBD22: STA.w $0D20,X

#_1DBD25: RTS

;===================================================================================================

TrinexxBreath:
.speed
#_1DBD26: db  16, -16

;---------------------------------------------------------------------------------------------------

#TrinexxBreath_ice:
#_1DBD28: JSL Sprite_PrepOAMCoord_long
#_1DBD2C: JSR Sprite_CheckIfActive_Bank1D

#_1DBD2F: LDA.w $0D50,X
#_1DBD32: PHA

#_1DBD33: CLC
#_1DBD34: ADC.w $0DB0,X
#_1DBD37: STA.w $0D50,X

#_1DBD3A: JSR Sprite_Move_XY_Bank1D

#_1DBD3D: PLA
#_1DBD3E: STA.w $0D50,X

#_1DBD41: JSR .add_ice_garnish

;---------------------------------------------------------------------------------------------------

.finish_up
#_1DBD44: LDA.b $1A
#_1DBD46: AND.b #$03
#_1DBD48: BNE .no_shake

#_1DBD4A: JSR Sprite_IsRightOfLink_Bank1D

#_1DBD4D: LDA.w $0D50,X
#_1DBD50: CMP.w .speed,Y
#_1DBD53: BEQ .no_shake

#_1DBD55: CLC
#_1DBD56: ADC.w Sprite_ApplyConveyor_shake_x,Y
#_1DBD59: STA.w $0D50,X

.no_shake
#_1DBD5C: JSR Sprite_CheckTileCollision_Bank1D
#_1DBD5F: BEQ .exit_a

#_1DBD61: STZ.w $0DD0,X

.exit_a
#_1DBD64: RTS

;---------------------------------------------------------------------------------------------------

.add_ice_garnish
#_1DBD65: INC.w $0E80,X

#_1DBD68: LDA.w $0E80,X
#_1DBD6B: AND.b #$07
#_1DBD6D: BNE .exit_b

#_1DBD6F: LDA.b #!SFX3_14
#_1DBD71: JSL SpriteSFX_QueueSFX3WithPan

#_1DBD75: PHX
#_1DBD76: TXY

#_1DBD77: LDX.b #$1D

.next_slot
#_1DBD79: LDA.l $7FF800,X
#_1DBD7D: BEQ .free_slot

#_1DBD7F: DEX
#_1DBD80: BPL .next_slot

#_1DBD82: DEC.w $0FF8
#_1DBD85: BPL .use_search_index

#_1DBD87: LDA.b #$1D
#_1DBD89: STA.w $0FF8

.use_search_index
#_1DBD8C: LDX.w $0FF8

;---------------------------------------------------------------------------------------------------

.free_slot
#_1DBD8F: LDA.b #!GARNISH_0C
#_1DBD91: STA.l $7FF800,X
#_1DBD95: STA.w $0FB4

#_1DBD98: TYA
#_1DBD99: STA.l $7FF92C,X

#_1DBD9D: LDA.w $0D10,Y
#_1DBDA0: STA.l $7FF83C,X

#_1DBDA4: LDA.w $0D30,Y
#_1DBDA7: STA.l $7FF878,X

;---------------------------------------------------------------------------------------------------

#_1DBDAB: LDA.w $0D00,Y
#_1DBDAE: CLC
#_1DBDAF: ADC.b #$10
#_1DBDB1: STA.l $7FF81E,X

#_1DBDB5: LDA.w $0D20,Y
#_1DBDB8: ADC.b #$00
#_1DBDBA: STA.l $7FF85A,X

#_1DBDBE: LDA.b #$7F
#_1DBDC0: STA.l $7FF90E,X

#_1DBDC4: PLX

;---------------------------------------------------------------------------------------------------

.exit_b
#_1DBDC5: RTS

;===================================================================================================

#TrinexxBreath_fire:
#_1DBDC6: JSL Sprite_PrepOAMCoord_long

#_1DBDCA: JSR Sprite_CheckIfActive_Bank1D
#_1DBDCD: JSR Sprite_Move_XY_Bank1D

#_1DBDD0: JSR TrinexxFire_AddFireGarnish

#_1DBDD3: JMP.w .finish_up

;---------------------------------------------------------------------------------------------------

TrinexxFire_AddFireGarnish:
#_1DBDD6: INC.w $0E80,X

#_1DBDD9: LDA.w $0E80,X
#_1DBDDC: AND.b #$07
#_1DBDDE: BNE EXIT_1DBE3B

#_1DBDE0: LDA.b #!SFX2_2A
#_1DBDE2: JSL SpriteSFX_QueueSFX2WithPan

#_1DBDE6: LDA.b #$1D ; bleeds into next

;===================================================================================================
; Enters with
;    A - slot search start
;===================================================================================================
FireBat_SpawnFireballGarnish:
#_1DBDE8: PHX

; Give firebat's sprite slot to Y
#_1DBDE9: TXY

; Give parameter to X
#_1DBDEA: TAX

; A will be the default slot
#_1DBDEB: STA.b $00

.next_slot
#_1DBDED: LDA.l $7FF800,X
#_1DBDF1: BEQ .free_slot

#_1DBDF3: DEX
#_1DBDF4: BPL .next_slot

; wtf, there's a slot index similar to ancillae
; but there's no point to it really, is there?
#_1DBDF6: DEC.w $0FF8
#_1DBDF9: BPL .use_search_index

#_1DBDFB: LDA.b $00
#_1DBDFD: STA.w $0FF8

.use_search_index
#_1DBE00: LDX.w $0FF8

;---------------------------------------------------------------------------------------------------

.free_slot
#_1DBE03: LDA.b #!GARNISH_10
#_1DBE05: STA.l $7FF800,X
#_1DBE09: STA.w $0FB4

#_1DBE0C: TYA
#_1DBE0D: STA.l $7FF92C,X

#_1DBE11: LDA.w $0D10,Y
#_1DBE14: STA.l $7FF83C,X

#_1DBE18: LDA.w $0D30,Y
#_1DBE1B: STA.l $7FF878,X

#_1DBE1F: LDA.w $0D00,Y
#_1DBE22: CLC
#_1DBE23: ADC.b #$10
#_1DBE25: STA.l $7FF81E,X

#_1DBE29: LDA.w $0D20,Y
#_1DBE2C: ADC.b #$00
#_1DBE2E: STA.l $7FF85A,X

#_1DBE32: LDA.b #$7F
#_1DBE34: STA.l $7FF90E,X

#_1DBE38: STX.b $00

#_1DBE3A: PLX

;---------------------------------------------------------------------------------------------------

#EXIT_1DBE3B
#_1DBE3B: RTS

;===================================================================================================

ChainChomp_ChainOffset:
#_1DBE3C: db $00, $10, $20, $30, $40, $50, $60, $70

;---------------------------------------------------------------------------------------------------

SpritePrep_Chainchomp:
#_1DBE44: PHX

#_1DBE45: LDY.b #$05

#_1DBE47: LDA.l ChainChomp_ChainOffset,X
#_1DBE4B: TAX

#_1DBE4C: REP #$20

.next_link
#_1DBE4E: LDA.w $0FD8
#_1DBE51: STA.l $7FFC00,X

#_1DBE55: LDA.w $0FDA
#_1DBE58: STA.l $7FFD00,X

#_1DBE5C: INX
#_1DBE5D: INX

#_1DBE5E: DEY
#_1DBE5F: BPL .next_link

;---------------------------------------------------------------------------------------------------

#_1DBE61: SEP #$20

#_1DBE63: PLX

#_1DBE64: LDA.w $0D10,X
#_1DBE67: STA.w $0D90,X

#_1DBE6A: LDA.w $0D30,X
#_1DBE6D: STA.w $0DA0,X

#_1DBE70: LDA.w $0D00,X
#_1DBE73: STA.w $0DB0,X

#_1DBE76: LDA.w $0D20,X
#_1DBE79: STA.w $0ED0,X

#_1DBE7C: RTL

;===================================================================================================

Sprite_CA_ChainChomp:
#_1DBE7D: JSR SpriteDraw_ChainChomp
#_1DBE80: JSR Sprite_CheckIfActive_Bank1D
#_1DBE83: JSR Sprite_CheckDamageToAndFromLink_Bank1D
#_1DBE86: JSR ChainChomp_HandleLeash

#_1DBE89: TXA
#_1DBE8A: EOR.b $1A
#_1DBE8C: AND.b #$03
#_1DBE8E: BNE .dont_change_bounce

#_1DBE90: LDA.w $0D50,X
#_1DBE93: STA.b $01

#_1DBE95: LDA.w $0D40,X
#_1DBE98: STA.b $00
#_1DBE9A: ORA.b $01
#_1DBE9C: BEQ .dont_change_bounce

#_1DBE9E: JSL Sprite_ConvertVelocityToAngle
#_1DBEA2: AND.b #$0F
#_1DBEA4: STA.w $0DE0,X

;---------------------------------------------------------------------------------------------------

.dont_change_bounce
#_1DBEA7: JSR Sprite_Move_XYZ_Bank1D

#_1DBEAA: DEC.w $0F80,X
#_1DBEAD: DEC.w $0F80,X

#_1DBEB0: LDA.w $0F70,X
#_1DBEB3: BPL .z_fine

#_1DBEB5: STZ.w $0F70,X
#_1DBEB8: STZ.w $0F80,X

.z_fine
#_1DBEBB: JSL Sprite_Get16BitCoords_long

#_1DBEBF: LDA.w $0D90,X
#_1DBEC2: STA.b $00

#_1DBEC4: LDA.w $0DA0,X
#_1DBEC7: STA.b $01

#_1DBEC9: LDA.w $0DB0,X
#_1DBECC: STA.b $02

#_1DBECE: LDA.w $0ED0,X
#_1DBED1: STA.b $03

#_1DBED3: STZ.w $0EC0,X

;---------------------------------------------------------------------------------------------------

#_1DBED6: REP #$20

#_1DBED8: LDA.w $0FD8
#_1DBEDB: SEC
#_1DBEDC: SBC.b $00
#_1DBEDE: CLC
#_1DBEDF: ADC.w #$0030
#_1DBEE2: CMP.w #$0060
#_1DBEE5: BCS .leash_not_tight

#_1DBEE7: LDA.w $0FDA
#_1DBEEA: SEC
#_1DBEEB: SBC.b $02
#_1DBEED: CLC
#_1DBEEE: ADC.w #$0030
#_1DBEF1: CMP.w #$0060
#_1DBEF4: BCS .leash_not_tight

#_1DBEF6: SEP #$20

#_1DBEF8: INC.w $0EC0,X

;---------------------------------------------------------------------------------------------------

.leash_not_tight
#_1DBEFB: SEP #$20

#_1DBEFD: LDA.w $0D80,X
#_1DBF00: JSL JumpTableLocal
#_1DBF04: dw ChainChomp_Idle
#_1DBF06: dw ChainChomp_Meander
#_1DBF08: dw ChainChomp_InvertLunge
#_1DBF0A: dw ChainChomp_Lunge

;===================================================================================================
; TODO analyze the extra set
;===================================================================================================
pool ChainChomp_Idle

.lunge_speed_x
#_1DBF0C: db   0,   8,  11,  14,  16,  14,  11,   8
#_1DBF14: db   0,  -8, -11, -14, -16, -14, -11,  -8

.lunge_speed_y
#_1DBF1C: db -16, -14, -11,  -8,   0,   8,  11,  14
#_1DBF24: db  16,  14,  11,   8,   0,  -9, -11, -14

pool off

;---------------------------------------------------------------------------------------------------

ChainChomp_Idle:
#_1DBF2C: LDA.w $0DF0,X
#_1DBF2F: BNE .delay

#_1DBF31: INC.w $0E80,X

#_1DBF34: LDA.w $0E80,X
#_1DBF37: CMP.b #$04
#_1DBF39: BNE .choose_from_more

#_1DBF3B: STZ.w $0E80,X

#_1DBF3E: LDA.b #$02
#_1DBF40: STA.w $0D80,X

#_1DBF43: JSL GetRandomNumber
#_1DBF47: AND.b #$0F
#_1DBF49: TAY
#_1DBF4A: LDA.w .lunge_speed_x,Y

#_1DBF4D: ASL A
#_1DBF4E: ASL A
#_1DBF4F: STA.w $0D50,X

#_1DBF52: LDA.w .lunge_speed_y,Y
#_1DBF55: ASL A
#_1DBF56: ASL A
#_1DBF57: STA.w $0D40,X

; This always fails
#_1DBF5A: JSL GetRandomNumber
#_1DBF5E: AND.b #$00
#_1DBF60: BNE .use_random_location

#_1DBF62: LDA.b #$40
#_1DBF64: JSL Sprite_ApplySpeedTowardsLink_long

#_1DBF68: LDA.b #!SFX3_04
#_1DBF6A: JSL SpriteSFX_QueueSFX3WithPan

.use_random_location
#_1DBF6E: RTS

;---------------------------------------------------------------------------------------------------

; Seems to also last longer when it lunges
.choose_from_more
#_1DBF6F: JSL GetRandomNumber
#_1DBF73: AND.b #$1F
#_1DBF75: ADC.b #$10
#_1DBF77: STA.w $0DF0,X

#_1DBF7A: JSL GetRandomNumber
#_1DBF7E: AND.b #$0F
#_1DBF80: TAY

#_1DBF81: LDA.w .lunge_speed_x,Y
#_1DBF84: STA.w $0D50,X

#_1DBF87: LDA.w .lunge_speed_y,Y
#_1DBF8A: STA.w $0D40,X

#_1DBF8D: INC.w $0D80,X

#_1DBF90: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_1DBF91: JSR Sprite_ZeroVelocity_XY_Bank1D

#_1DBF94: RTS

;===================================================================================================

ChainChomp_Meander:
#_1DBF95: LDA.w $0DF0,X
#_1DBF98: BNE .boop_da_bop

#_1DBF9A: LDA.b #$20
#_1DBF9C: STA.w $0DF0,X

#_1DBF9F: STZ.w $0D80,X

.boop_da_bop
#_1DBFA2: AND.b #$0F
#_1DBFA4: BNE .skip_chain

#_1DBFA6: JSR ChainChomp_MoveChain

;---------------------------------------------------------------------------------------------------

.skip_chain
#_1DBFA9: LDA.w $0F70,X
#_1DBFAC: BNE .bouncing

#_1DBFAE: LDA.b #$10
#_1DBFB0: STA.w $0F80,X

.bouncing
#_1DBFB3: LDA.w $0EC0,X
#_1DBFB6: BNE .exit

#_1DBFB8: LDA.w $0D90,X
#_1DBFBB: STA.b $04

#_1DBFBD: LDA.w $0DA0,X
#_1DBFC0: STA.b $05

#_1DBFC2: LDA.w $0DB0,X
#_1DBFC5: STA.b $06

#_1DBFC7: LDA.w $0ED0,X
#_1DBFCA: STA.b $07

;---------------------------------------------------------------------------------------------------

#_1DBFCC: LDA.b #$10
#_1DBFCE: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1DBFD2: LDA.b $00
#_1DBFD4: STA.w $0D40,X

#_1DBFD7: LDA.b $01
#_1DBFD9: STA.w $0D50,X

#_1DBFDC: JSR Sprite_Move_XY_Bank1D

#_1DBFDF: LDA.b #$0C
#_1DBFE1: STA.w $0DF0,X

.exit
#_1DBFE4: RTS

;===================================================================================================
; Seems unreachable?
;===================================================================================================
ChainChomp_InvertLunge:
#_1DBFE5: LDA.w $0EC0,X
#_1DBFE8: BNE .stay_true

#_1DBFEA: LDA.w $0D50,X
#_1DBFED: EOR.b #$FF
#_1DBFEF: INC A
#_1DBFF0: STA.w $0D50,X

#_1DBFF3: LDA.w $0D40,X
#_1DBFF6: EOR.b #$FF
#_1DBFF8: INC A
#_1DBFF9: STA.w $0D40,X

#_1DBFFC: JSR Sprite_Move_XY_Bank1D
#_1DBFFF: JSR Sprite_ZeroVelocity_XY_Bank1D

#_1DC002: INC.w $0D80,X

#_1DC005: LDA.b #$30
#_1DC007: STA.w $0E00,X

.stay_true
#_1DC00A: BRA .handle_chain

;---------------------------------------------------------------------------------------------------

#ChainChomp_Lunge:
#_1DC00C: LDA.w $0E00,X
#_1DC00F: BNE .handle_chain

#_1DC011: STZ.w $0D80,X

#_1DC014: LDA.b #$30
#_1DC016: STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

.handle_chain
#_1DC019: JSR ChainChomp_MoveChain
#_1DC01C: JSR ChainChomp_MoveChain

#_1DC01F: RTS

;===================================================================================================
; TODO ANALYZE
;===================================================================================================
pool ChainChomp_MoveChain

.operand
#_1DC020: db $CD, $00, $9A, $00
#_1DC024: db $66, $00, $33, $00
#_1DC028: db $08, $00

pool off

;---------------------------------------------------------------------------------------------------

ChainChomp_MoveChain:
#_1DC02A: LDA.w $0D90,X
#_1DC02D: STA.b $00

#_1DC02F: LDA.w $0DA0,X
#_1DC032: STA.b $01

#_1DC034: LDA.w $0DB0,X
#_1DC037: STA.b $02

#_1DC039: LDA.w $0ED0,X
#_1DC03C: STA.b $03

;---------------------------------------------------------------------------------------------------

#_1DC03E: PHX

#_1DC03F: LDA.b #$05
#_1DC041: STA.b $0D

#_1DC043: LDA.w ChainChomp_ChainOffset,X
#_1DC046: TAX

#_1DC047: LDA.l $7FFC00,X
#_1DC04B: SEC
#_1DC04C: SBC.b $00
#_1DC04E: STA.b $04

#_1DC050: LDA.l $7FFD00,X
#_1DC054: SEC
#_1DC055: SBC.b $02
#_1DC057: STA.b $05

#_1DC059: INX
#_1DC05A: INX

;---------------------------------------------------------------------------------------------------

.next_link
#_1DC05B: LDA.b $04
#_1DC05D: PHP
#_1DC05E: BPL .pos_x

#_1DC060: EOR.b #$FF
#_1DC062: INC A

.pos_x
#_1DC063: STA.w CPUMULTA

#_1DC066: PHX

#_1DC067: TXA
#_1DC068: AND.b #$0F
#_1DC06A: TAX

#_1DC06B: LDA.w .operand-2,X
#_1DC06E: STA.w CPUMULTB

#_1DC071: PLX

#_1DC072: NOP ; 7 NOP
#_1DC073: NOP
#_1DC074: NOP
#_1DC075: NOP
#_1DC076: NOP
#_1DC077: NOP
#_1DC078: NOP

#_1DC079: LDA.w CPUPRODUCTH
#_1DC07C: LDY.b #$00

#_1DC07E: PLP
#_1DC07F: BPL .sign_correct_x

#_1DC081: EOR.b #$FF
#_1DC083: DEY

.sign_correct_x
#_1DC084: CLC
#_1DC085: ADC.b $00
#_1DC087: STA.b $08

;---------------------------------------------------------------------------------------------------

#_1DC089: TYA
#_1DC08A: ADC.b $01
#_1DC08C: STA.b $09

#_1DC08E: LDA.b $05
#_1DC090: PHP
#_1DC091: BPL .pos_y

#_1DC093: EOR.b #$FF
#_1DC095: INC A

.pos_y
#_1DC096: STA.w CPUMULTA

#_1DC099: PHX

#_1DC09A: TXA
#_1DC09B: AND.b #$0F
#_1DC09D: TAX

#_1DC09E: LDA.w .operand-2,X
#_1DC0A1: STA.w CPUMULTB

#_1DC0A4: PLX

#_1DC0A5: NOP ; 7 NOP
#_1DC0A6: NOP
#_1DC0A7: NOP
#_1DC0A8: NOP
#_1DC0A9: NOP
#_1DC0AA: NOP
#_1DC0AB: NOP

#_1DC0AC: LDA.w CPUPRODUCTH
#_1DC0AF: LDY.b #$00

#_1DC0B1: PLP
#_1DC0B2: BPL .sign_correct_y

#_1DC0B4: EOR.b #$FF
#_1DC0B6: DEY

.sign_correct_y
#_1DC0B7: CLC
#_1DC0B8: ADC.b $02
#_1DC0BA: STA.b $0A

#_1DC0BC: TYA
#_1DC0BD: ADC.b $03
#_1DC0BF: STA.b $0B

;---------------------------------------------------------------------------------------------------

#_1DC0C1: REP #$20

#_1DC0C3: LDA.l $7FFC00,X
#_1DC0C7: CMP.b $08

#_1DC0C9: BEQ .x_correct
#_1DC0CB: BPL .decrement_x

; +2 so the DEC makes it +1
#_1DC0CD: INC A
#_1DC0CE: INC A

.decrement_x
#_1DC0CF: DEC A
#_1DC0D0: STA.l $7FFC00,X

.x_correct
#_1DC0D4: LDA.l $7FFD00,X
#_1DC0D8: CMP.b $0A
#_1DC0DA: BEQ .y_correct
#_1DC0DC: BPL .decrement_y

; +2 so the DEC makes it +1
#_1DC0DE: INC A
#_1DC0DF: INC A

.decrement_y
#_1DC0E0: DEC A
#_1DC0E1: STA.l $7FFD00,X

.y_correct
#_1DC0E5: SEP #$20

#_1DC0E7: INX
#_1DC0E8: INX

#_1DC0E9: DEC.b $0D
#_1DC0EB: BMI .done

#_1DC0ED: JMP.w .next_link

.done
#_1DC0F0: PLX

#_1DC0F1: RTS

;===================================================================================================
; TODO how is this distinct from above?
;===================================================================================================
ChainChomp_HandleLeash:
#_1DC0F2: PHX

#_1DC0F3: LDA.w ChainChomp_ChainOffset,X
#_1DC0F6: TAX

#_1DC0F7: REP #$20

#_1DC0F9: STZ.b $00

#_1DC0FB: LDA.w $0FD8
#_1DC0FE: STA.l $7FFC00,X

#_1DC102: LDA.w $0FDA
#_1DC105: STA.l $7FFD00,X

;---------------------------------------------------------------------------------------------------

.next_link
#_1DC109: LDA.l $7FFC00,X
#_1DC10D: SEC
#_1DC10E: SBC.l $7FFC02,X

#_1DC112: CMP.w #$0008
#_1DC115: BPL .x_left

#_1DC117: CMP.w #$FFF8
#_1DC11A: BPL .x_done

#_1DC11C: LDA.l $7FFC00,X
#_1DC120: CLC
#_1DC121: ADC.w #$0008
#_1DC124: STA.l $7FFC02,X

#_1DC128: BRA .x_done

.x_left
#_1DC12A: LDA.l $7FFC00,X
#_1DC12E: SEC
#_1DC12F: SBC.w #$0008
#_1DC132: STA.l $7FFC02,X

;---------------------------------------------------------------------------------------------------

.x_done
#_1DC136: LDA.l $7FFD00,X
#_1DC13A: SEC
#_1DC13B: SBC.l $7FFD02,X

#_1DC13F: CMP.w #$0008
#_1DC142: BPL .y_up

#_1DC144: CMP.w #$FFF8
#_1DC147: BPL .done_y

#_1DC149: LDA.l $7FFD00,X
#_1DC14D: CLC
#_1DC14E: ADC.w #$0008
#_1DC151: STA.l $7FFD02,X

#_1DC155: BRA .done_y

.y_up
#_1DC157: LDA.l $7FFD00,X
#_1DC15B: SEC
#_1DC15C: SBC.w #$0008
#_1DC15F: STA.l $7FFD02,X

;---------------------------------------------------------------------------------------------------

.done_y
#_1DC163: INX
#_1DC164: INX

#_1DC165: INC.b $00

#_1DC167: LDA.b $00
#_1DC169: CMP.w #$0006
#_1DC16C: BCC .next_link

;---------------------------------------------------------------------------------------------------

#_1DC16E: PLX

#_1DC16F: SEP #$20

#_1DC171: RTS

;===================================================================================================

pool SpriteDraw_ChainChomp

.step
#_1DC172: db $00, $01, $02, $03, $03, $03, $02, $01
#_1DC17A: db $00, $00, $00, $04, $04, $04, $00, $00

.flip
#_1DC182: db $40, $40, $40, $40, $00, $00, $00, $00
#_1DC18A: db $00, $00, $00, $00, $40, $40, $40, $40

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_ChainChomp:
#_1DC192: LDY.w $0DE0,X

#_1DC195: LDA.w .step,Y
#_1DC198: STA.w $0DC0,X

#_1DC19B: LDA.w $0F50,X
#_1DC19E: AND.b #$3F
#_1DC1A0: ORA.w .flip,Y
#_1DC1A3: STA.w $0F50,X

#_1DC1A6: JSL SpriteDraw_SingleLarge_long

;---------------------------------------------------------------------------------------------------

#_1DC1AA: LDA.w $0E00,X
#_1DC1AD: AND.b #$01
#_1DC1AF: CLC
#_1DC1B0: ADC.b #$04
#_1DC1B2: STA.b $08
#_1DC1B4: STZ.b $09

#_1DC1B6: LDA.b #$05
#_1DC1B8: STA.b $0D

;---------------------------------------------------------------------------------------------------

#_1DC1BA: PHX

#_1DC1BB: LDA.w ChainChomp_ChainOffset,X
#_1DC1BE: TAX

#_1DC1BF: LDY.b #$04

.next_link
#_1DC1C1: REP #$20

#_1DC1C3: LDA.l $7FFC00,X

#_1DC1C7: CLC
#_1DC1C8: ADC.b $08
#_1DC1CA: SEC
#_1DC1CB: SBC.b $E2
#_1DC1CD: STA.b ($90),Y

#_1DC1CF: AND.w #$0100
#_1DC1D2: STA.b $0E

#_1DC1D4: LDA.l $7FFD00,X
#_1DC1D8: CLC
#_1DC1D9: ADC.b $08
#_1DC1DB: SEC
#_1DC1DC: SBC.b $E8
#_1DC1DE: INY
#_1DC1DF: STA.b ($90),Y

#_1DC1E1: CLC
#_1DC1E2: ADC.w #$0010
#_1DC1E5: CMP.w #$0100

#_1DC1E8: SEP #$20
#_1DC1EA: BCC .on_screen

#_1DC1EC: LDA.b #$F0
#_1DC1EE: STA.b ($90),Y

.on_screen
#_1DC1F0: LDA.b #$8B
#_1DC1F2: INY
#_1DC1F3: STA.b ($90),Y

#_1DC1F5: LDA.b $05
#_1DC1F7: AND.b #$F0
#_1DC1F9: ORA.b #$0D
#_1DC1FB: INY
#_1DC1FC: STA.b ($90),Y

#_1DC1FE: PHY

#_1DC1FF: TYA
#_1DC200: LSR A
#_1DC201: LSR A
#_1DC202: TAY

#_1DC203: LDA.b $0F
#_1DC205: STA.b ($92),Y

#_1DC207: PLY
#_1DC208: INY

#_1DC209: INX
#_1DC20A: INX

#_1DC20B: DEC.b $0D
#_1DC20D: BPL .next_link

;---------------------------------------------------------------------------------------------------

#_1DC20F: PLX

#_1DC210: RTS

;===================================================================================================

Sprite_CheckDamageToAndFromLink_Bank1D:
#_1DC211: JSL Sprite_CheckDamageFromLink_long
#_1DC215: JSL Sprite_CheckDamageToLink_long

#_1DC219: RTS

;===================================================================================================

SpriteModule_Active_Bank1D:
#_1DC21A: PHB
#_1DC21B: PHK
#_1DC21C: PLB

#_1DC21D: JSR .main

#_1DC220: PLB

#_1DC221: RTL

;---------------------------------------------------------------------------------------------------

.main
#_1DC222: LDA.w $0E20,X
#_1DC225: SEC
#_1DC226: SBC.b #$BD

#_1DC228: REP #$30

#_1DC22A: AND.w #$00FF
#_1DC22D: ASL A
#_1DC22E: TAY

; good ol' 6502 jumps
#_1DC22F: LDA.w .vectors,Y
#_1DC232: DEC A
#_1DC233: PHA

#_1DC234: SEP #$30

#_1DC236: RTS

;---------------------------------------------------------------------------------------------------

.vectors
#_1DC237: dw Sprite_BD_Vitreous
#_1DC239: dw Sprite_BE_VitreousEye
#_1DC23B: dw Sprite_BF_Lightning
#_1DC23D: dw Sprite_C0_Catfish
#_1DC23F: dw Sprite_C1_CutsceneAgahnim
#_1DC241: dw Sprite_C2_Boulder
#_1DC243: dw Sprite_C3_Gibo
#_1DC245: dw Sprite_C4_Thief
#_1DC247: dw Sprite_C5_Medusa
#_1DC249: dw Sprite_C6_4WayShooter
#_1DC24B: dw Sprite_C7_Pokey
#_1DC24D: dw Sprite_C8_BigFairy
#_1DC24F: dw Sprite_C9_Tektite
#_1DC251: dw Sprite_CA_ChainChomp
#_1DC253: dw Sprite_CB_TrinexxRockHead
#_1DC255: dw Sprite_CC_TrinexxBreath_FireHead
#_1DC257: dw Sprite_CD_TrinexxBreath_IceHead
#_1DC259: dw Sprite_CE_Blind
#_1DC25B: dw Sprite_CF_Swamola
#_1DC25D: dw Sprite_D0_Lynel
#_1DC25F: dw Sprite_D1_BunnyBeam
#_1DC261: dw Sprite_D2_FloppingFish
#_1DC263: dw Sprite_D3_Stal
#_1DC265: dw Sprite_D4_Landmine
#_1DC267: dw Sprite_D5_DigGameGuy
#_1DC269: dw Sprite_D6_Ganon
#_1DC26B: dw Sprite_D7_Ganon

;===================================================================================================

TektiteSpeed:
.x
#_1DC26D: db  16, -16,  16, -16

.y
#_1DC271: db  16,  16, -16, -16

;---------------------------------------------------------------------------------------------------

Sprite_C9_Tektite:
#_1DC275: LDA.w $0EC0,X
#_1DC278: BEQ Tektite

#_1DC27A: STA.w $0BA0,X
#_1DC27D: PHA

#_1DC27E: LDA.b #$30
#_1DC280: STA.w $0B89,X

#_1DC283: PLA
#_1DC284: DEC A
#_1DC285: JSL JumpTableLocal
#_1DC289: dw Sprite_PhantomGanon
#_1DC28B: dw Sprite_GanonTrident
#_1DC28D: dw FireBat_Spiral
#_1DC28F: dw FireBat_Launched
#_1DC291: dw FireBat_Trailer

;---------------------------------------------------------------------------------------------------

Tektite:
#_1DC293: LDA.w $0E00,X
#_1DC296: BEQ .use_current_draw

#_1DC298: STZ.w $0DC0,X

.use_current_draw
#_1DC29B: JSR SpriteDraw_Tektite

#_1DC29E: JSR Sprite_CheckIfActive_Bank1D
#_1DC2A1: JSR Sprite_CheckIfRecoiling_Bank1D
#_1DC2A4: JSR Sprite_CheckDamageToAndFromLink_Bank1D

#_1DC2A7: JSR Sprite_Move_XYZ_Bank1D
#_1DC2AA: JSR Sprite_BounceFromTileCollision

#_1DC2AD: LDA.w $0F80,X
#_1DC2B0: SEC
#_1DC2B1: SBC.b #$01
#_1DC2B3: STA.w $0F80,X

#_1DC2B6: LDA.w $0F70,X
#_1DC2B9: BPL .airborne

#_1DC2BB: STZ.w $0F70,X
#_1DC2BE: STZ.w $0F80,X

.airborne
#_1DC2C1: LDA.w $0D80,X
#_1DC2C4: JSL JumpTableLocal
#_1DC2C8: dw Tektite_Idle
#_1DC2CA: dw Tektite_Midjump
#_1DC2CC: dw Tektite_Bouncy

;===================================================================================================

pool Tektite_Idle

.direction
#_1DC2CE: db $03, $02, $01, $00

pool off

;---------------------------------------------------------------------------------------------------

Tektite_Idle:
#_1DC2D2: JSR Sprite_DirectionToFaceLink_Bank1D

#_1DC2D5: LDA.b $0E
#_1DC2D7: CLC
#_1DC2D8: ADC.b #$28
#_1DC2DA: CMP.b #$50
#_1DC2DC: BCS .dont_dodge

#_1DC2DE: LDA.b $0F
#_1DC2E0: CLC
#_1DC2E1: ADC.b #$28
#_1DC2E3: CMP.b #$50
#_1DC2E5: BCS .dont_dodge

#_1DC2E7: LDA.b $44
#_1DC2E9: CMP.b #$80
#_1DC2EB: BEQ .dont_dodge

#_1DC2ED: LDA.w $0F70,X
#_1DC2F0: ORA.w $0F00,X
#_1DC2F3: BNE .dont_dodge

#_1DC2F5: LDA.b $EE
#_1DC2F7: CMP.w $0F20,X
#_1DC2FA: BNE .dont_dodge

;---------------------------------------------------------------------------------------------------

#_1DC2FC: STY.b $00

#_1DC2FE: LDA.b $2F
#_1DC300: LSR A
#_1DC301: TAY

#_1DC302: LDA.b $00
#_1DC304: CMP.w .direction,Y
#_1DC307: BEQ .dont_dodge

;---------------------------------------------------------------------------------------------------

#_1DC309: LDA.b #$20
#_1DC30B: JSL Sprite_ProjectSpeedTowardsLink_long

#_1DC30F: LDA.b $01
#_1DC311: EOR.b #$FF
#_1DC313: INC A
#_1DC314: STA.w $0D50,X

#_1DC317: LDA.b $00
#_1DC319: EOR.b #$FF
#_1DC31B: INC A
#_1DC31C: STA.w $0D40,X

#_1DC31F: LDA.b #$10
#_1DC321: STA.w $0F80,X

#_1DC324: INC.w $0D80,X

#_1DC327: RTS

;---------------------------------------------------------------------------------------------------

.dont_dodge
#_1DC328: LDA.w $0DF0,X
#_1DC32B: BNE .wait

#_1DC32D: INC.w $0D80,X

#_1DC330: INC.w $0DA0,X

#_1DC333: LDA.w $0DA0,X
#_1DC336: CMP.b #$04
#_1DC338: BNE .random_direction

;---------------------------------------------------------------------------------------------------

; jump towards link
#_1DC33A: STZ.w $0DA0,X
#_1DC33D: INC.w $0D80,X

#_1DC340: JSL GetRandomNumber
#_1DC344: AND.b #$3F
#_1DC346: ADC.b #$30
#_1DC348: STA.w $0DF0,X

#_1DC34B: LDA.b #$0C
#_1DC34D: STA.w $0F80,X

#_1DC350: JSR Sprite_IsBelowLink_Bank1D
#_1DC353: TYA

#_1DC354: ASL A
#_1DC355: STA.b $00

#_1DC357: JSR Sprite_IsRightOfLink_Bank1D
#_1DC35A: TYA

#_1DC35B: ORA.b $00
#_1DC35D: BRA .set_speed

;---------------------------------------------------------------------------------------------------

.random_direction
#_1DC35F: JSL GetRandomNumber
#_1DC363: AND.b #$07
#_1DC365: ADC.b #$18
#_1DC367: STA.w $0F80,X

#_1DC36A: JSL GetRandomNumber
#_1DC36E: AND.b #$03

;---------------------------------------------------------------------------------------------------

.set_speed
#_1DC370: TAY

#_1DC371: LDA.w TektiteSpeed_x,Y
#_1DC374: STA.w $0D50,X

#_1DC377: LDA.w TektiteSpeed_y,Y
#_1DC37A: STA.w $0D40,X

#_1DC37D: RTS

;---------------------------------------------------------------------------------------------------

.wait
#_1DC37E: LSR A
#_1DC37F: LSR A
#_1DC380: LSR A
#_1DC381: LSR A
#_1DC382: AND.b #$01
#_1DC384: STA.w $0DC0,X

#_1DC387: RTS

;===================================================================================================

Tektite_Midjump:
#_1DC388: LDA.w $0F70,X
#_1DC38B: BNE .airborne

;---------------------------------------------------------------------------------------------------

#Tektite_GoIdle:
#_1DC38D: STZ.w $0D80,X

#_1DC390: JSL GetRandomNumber
#_1DC394: AND.b #$3F
#_1DC396: ADC.b #$48
#_1DC398: STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

#Sprite_ZeroVelocity_XY_Bank1D:
#_1DC39B: STZ.w $0D40,X
#_1DC39E: STZ.w $0D50,X

#_1DC3A1: RTS

;---------------------------------------------------------------------------------------------------

.airborne
#_1DC3A2: LDA.b #$02
#_1DC3A4: STA.w $0DC0,X

#_1DC3A7: RTS

;===================================================================================================

Tektite_Bouncy:
#_1DC3A8: LDA.w $0DF0,X
#_1DC3AB: BEQ Tektite_GoIdle

#_1DC3AD: LDA.w $0F70,X
#_1DC3B0: BNE .airborne

#_1DC3B2: LDA.b #$0C
#_1DC3B4: STA.w $0F80,X

#_1DC3B7: INC.w $0F70,X

#_1DC3BA: LDA.b #$08
#_1DC3BC: STA.w $0E00,X

.airborne
#_1DC3BF: LDA.b #$02
#_1DC3C1: STA.w $0DC0,X

#_1DC3C4: RTS

;===================================================================================================

pool SpriteDraw_Tektite

.oam_groups
; group00
#_1DC3C5: dw  -8,   0 : db $C8, $00, $00, $02
#_1DC3CD: dw   8,   0 : db $C8, $40, $00, $02

; group01
#_1DC3D5: dw  -8,   0 : db $CA, $00, $00, $02
#_1DC3DD: dw   8,   0 : db $CA, $40, $00, $02

; group02
#_1DC3E5: dw  -8,   0 : db $EA, $00, $00, $02
#_1DC3ED: dw   8,   0 : db $EA, $40, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Tektite:
#_1DC3F5: LDA.b #$00
#_1DC3F7: XBA
#_1DC3F8: LDA.w $0DC0,X

#_1DC3FB: REP #$20

#_1DC3FD: ASL A ; x16
#_1DC3FE: ASL A
#_1DC3FF: ASL A
#_1DC400: ASL A
#_1DC401: ADC.w #.oam_groups
#_1DC404: STA.b $08

#_1DC406: SEP #$20

#_1DC408: LDA.b #$02
#_1DC40A: JSR Sprite_DrawMultiple_Bank1D
#_1DC40D: JSL SpriteDraw_Shadow_long

#_1DC411: RTS

;===================================================================================================

UNREACHABLE_1DC412:
#_1DC412: db $08, $F8

;===================================================================================================

Sprite_C8_BigFairy:
#_1DC414: LDA.w $0EB0,X
#_1DC417: BNE FairyCloud

#_1DC419: JMP.w BigFairy

;===================================================================================================

FairyCloud:
#_1DC41C: JSL Sprite_PrepOAMCoord_long
#_1DC420: JSR Sprite_CheckIfActive_Bank1D

#_1DC423: INC.w $0E80,X
#_1DC426: JSR SpriteDraw_FairyCloud

#_1DC429: LDA.w $0E80,X
#_1DC42C: AND.b #$1F
#_1DC42E: BNE .no_sfx

#_1DC430: LDA.b #!SFX2_31
#_1DC432: JSL SpriteSFX_QueueSFX2WithPan

.no_sfx
#_1DC436: LDA.w $0D80,X
#_1DC439: JSL JumpTableLocal
#_1DC43D: dw FairyCloud_ApproachLink
#_1DC43F: dw FairyCloud_WaitForHeal
#_1DC441: dw FairyCloud_Dissipate

;===================================================================================================

FairyCloud_ApproachLink:
#_1DC443: LDA.b #$00
#_1DC445: STA.w $0D90,X

#_1DC448: LDA.b #$08
#_1DC44A: JSL Sprite_ApplySpeedTowardsLink_long

#_1DC44E: JSR Sprite_Move_XY_Bank1D
#_1DC451: JSL Sprite_Get16BitCoords_long

;---------------------------------------------------------------------------------------------------

#_1DC455: REP #$20

#_1DC457: LDA.b $22
#_1DC459: SEC
#_1DC45A: SBC.w $0FD8
#_1DC45D: CLC
#_1DC45E: ADC.w #$0003
#_1DC461: CMP.w #$0006
#_1DC464: BCS .exit

#_1DC466: LDA.b $20
#_1DC468: SEC
#_1DC469: SBC.w $0FDA
#_1DC46C: CLC
#_1DC46D: ADC.w #$000B
#_1DC470: CMP.w #$0006
#_1DC473: BCS .exit

; It adds health even though $A0 is the max
; how peculiar
#_1DC475: LDA.w #$00A0
#_1DC478: CLC
#_1DC479: ADC.l $7EF372
#_1DC47D: STA.l $7EF372

#_1DC481: SEP #$20

#_1DC483: INC.w $0D80,X

.exit
#_1DC486: SEP #$20

#_1DC488: RTS

;===================================================================================================

FairyCloud_WaitForHeal:
#_1DC489: LDA.l $7EF36D
#_1DC48D: CMP.l $7EF36C
#_1DC491: BNE .need_more_health

#_1DC493: INC.w $0D80,X

#_1DC496: LDA.b #$70
#_1DC498: STA.w $0E10

.need_more_health
#_1DC49B: RTS

;===================================================================================================

FairyCloud_Dissipate:
#_1DC49C: LDA.w $0E80,X
#_1DC49F: AND.b #$0F
#_1DC4A1: BNE .exit

#_1DC4A3: LDA.w $0D90,X
#_1DC4A6: BMI .exit

#_1DC4A8: SEC
#_1DC4A9: ROL.w $0D90,X

#_1DC4AC: LDA.w $0D90,X
#_1DC4AF: CMP.b #$80
#_1DC4B1: BCC .exit

#_1DC4B3: LDA.b #$FF
#_1DC4B5: STA.w $0D90,X

#_1DC4B8: STZ.w $02E4
#_1DC4BB: STZ.w $0DD0,X

.exit
#_1DC4BE: RTS

;===================================================================================================

BigFairy:
#_1DC4BF: LDA.w $0E10,X
#_1DC4C2: BEQ .continue

#_1DC4C4: CMP.b #$40
#_1DC4C6: BCS .continue

#_1DC4C8: DEC A
#_1DC4C9: BNE .dont_die

#_1DC4CB: STZ.w $0DD0,X

.dont_die
#_1DC4CE: LSR A
#_1DC4CF: BCC .continue

#_1DC4D1: RTS

;---------------------------------------------------------------------------------------------------

.continue
#_1DC4D2: JSR SpriteDraw_BigFairy

#_1DC4D5: DEC.w $0ED0,X
#_1DC4D8: BPL .delay_step

#_1DC4DA: LDA.b #$05
#_1DC4DC: STA.w $0ED0,X

#_1DC4DF: LDA.w $0DC0,X
#_1DC4E2: INC A
#_1DC4E3: AND.b #$03
#_1DC4E5: STA.w $0DC0,X

.delay_step
#_1DC4E8: JSR Sprite_CheckIfActive_Bank1D

#_1DC4EB: INC.w $0E80,X

#_1DC4EE: LDA.w $0D80,X
#_1DC4F1: JSL JumpTableLocal
#_1DC4F5: dw BigFairy_WaitForLink
#_1DC4F7: dw BigFairy_DoAbsolutelyNothing

;===================================================================================================

BigFairy_WaitForLink:
#_1DC4F9: JSR SpriteDraw_FairyCloud

#_1DC4FC: LDA.b #$01
#_1DC4FE: STA.w $0D90,X

#_1DC501: JSR Sprite_DirectionToFaceLink_Bank1D

#_1DC504: LDA.b $0F
#_1DC506: CLC
#_1DC507: ADC.b #$30
#_1DC509: CMP.b #$60
#_1DC50B: BCS .exit

#_1DC50D: LDA.b $0E
#_1DC50F: CLC
#_1DC510: ADC.b #$30
#_1DC512: CMP.b #$60
#_1DC514: BCS .exit

;---------------------------------------------------------------------------------------------------

#_1DC516: JSL Link_CancelDash_long

#_1DC51A: INC.w $0D80,X

; Message 0158
#_1DC51D: LDA.b #$58
#_1DC51F: STA.w $1CF0

#_1DC522: LDA.b #$01
#_1DC524: STA.w $1CF1

#_1DC527: JSL Sprite_ShowMessageMinimal

;---------------------------------------------------------------------------------------------------

; set cutscene flag
#_1DC52B: LDA.b #$01
#_1DC52D: STA.w $02E4

#_1DC530: LDA.b #!SPRITE_C8
#_1DC532: JSL Sprite_SpawnDynamically
#_1DC536: JSL Sprite_SetSpawnedCoordinates

#_1DC53A: LDA.b #$01
#_1DC53C: STA.w $0EB0,Y

#_1DC53F: LDA.w $0D00,Y
#_1DC542: SEC
#_1DC543: SBC.w $0F70,X
#_1DC546: STA.w $0D00,Y

#_1DC549: LDA.b #$00
#_1DC54B: STA.w $0F70,Y

.exit
#_1DC54E: RTS

;===================================================================================================

BigFairy_DoAbsolutelyNothing:
#_1DC54F: RTS

;===================================================================================================

pool SpriteDraw_BigFairy

.oam_groups
; group00
#_1DC550: dw  -4,  -8 : db $8E, $00, $00, $02
#_1DC558: dw   4,  -8 : db $8E, $40, $00, $02
#_1DC560: dw  -4,   8 : db $AE, $00, $00, $02
#_1DC568: dw   4,   8 : db $AE, $40, $00, $02

; group01
#_1DC570: dw  -4,  -8 : db $8C, $00, $00, $02
#_1DC578: dw   4,  -8 : db $8C, $40, $00, $02
#_1DC580: dw  -4,   8 : db $AC, $00, $00, $02
#_1DC588: dw   4,   8 : db $AC, $40, $00, $02

; group02
#_1DC590: dw  -4,  -8 : db $8A, $00, $00, $02
#_1DC598: dw   4,  -8 : db $8A, $40, $00, $02
#_1DC5A0: dw  -4,   8 : db $AA, $00, $00, $02
#_1DC5A8: dw   4,   8 : db $AA, $40, $00, $02

; group03
#_1DC5B0: dw  -4,  -8 : db $8C, $00, $00, $02
#_1DC5B8: dw   4,  -8 : db $8C, $40, $00, $02
#_1DC5C0: dw  -4,   8 : db $AC, $00, $00, $02
#_1DC5C8: dw   4,   8 : db $AC, $40, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_BigFairy:
#_1DC5D0: LDA.b #$00
#_1DC5D2: XBA
#_1DC5D3: LDA.w $0DC0,X

#_1DC5D6: REP #$20

#_1DC5D8: ASL A ; x32
#_1DC5D9: ASL A
#_1DC5DA: ASL A
#_1DC5DB: ASL A
#_1DC5DC: ASL A

#_1DC5DD: ADC.w #.oam_groups
#_1DC5E0: STA.b $08

#_1DC5E2: SEP #$20

#_1DC5E4: LDA.b #$04
#_1DC5E6: JSR Sprite_DrawMultiple_Bank1D
#_1DC5E9: JSL SpriteDraw_Shadow_long

#_1DC5ED: RTS

;===================================================================================================

pool SpriteDraw_FairyCloud

.offset_low
#_1DC5EE: db -12,  -6,   0,   6
#_1DC5F2: db  12,  18,  -9,  -3
#_1DC5F6: db   3,   9,  15,  21

.offset_high
#_1DC5FA: db  -1,  -1,   0,   0
#_1DC5FE: db   0,   0,  -1,  -1
#_1DC602: db   0,   0,   0,   0

.offset_index
#_1DC606: db   0,   1,   2,   3
#_1DC60A: db   4,   5,   2,   3
#_1DC60E: db   6,   7,   8,   9
#_1DC612: db  10,  11,   8,   9

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_FairyCloud:
#_1DC616: LDA.w $0D90,X
#_1DC619: BMI .exit

#_1DC61B: AND.w $0E80,X
#_1DC61E: BNE .exit

#_1DC620: JSL GetRandomNumber
#_1DC624: AND.b #$07
#_1DC626: TAY

#_1DC627: LDA.w .offset_index,Y
#_1DC62A: TAY

#_1DC62B: LDA.w .offset_low,Y
#_1DC62E: STA.b $00

#_1DC630: LDA.w .offset_high,Y
#_1DC633: STA.b $01

#_1DC635: JSL GetRandomNumber
#_1DC639: AND.b #$07
#_1DC63B: TAY

#_1DC63C: LDA.w .offset_index,Y
#_1DC63F: TAY

#_1DC640: LDA.w .offset_low,Y
#_1DC643: STA.b $02

#_1DC645: LDA.w .offset_high,Y
#_1DC648: STA.b $03

#_1DC64A: JSL GarnishSpawn_Sparkle

.exit
#_1DC64E: RTS

;===================================================================================================

Sprite_C7_Pokey:
#_1DC64F: LDA.w $0DB0,X
#_1DC652: BEQ Pokey_FullStack

;===================================================================================================

PokeyPart:
#_1DC654: JSL SpriteDraw_SingleLarge_long
#_1DC658: JSR Sprite_CheckIfActive_Bank1D
#_1DC65B: JSR Sprite_CheckDamageToAndFromLink_Bank1D
#_1DC65E: JSR Sprite_Move_XYZ_Bank1D

#_1DC661: DEC.w $0F80,X
#_1DC664: DEC.w $0F80,X

#_1DC667: LDA.w $0F70,X
#_1DC66A: BPL .no_bounce

#_1DC66C: LDA.b #$10
#_1DC66E: STA.w $0F80,X
#_1DC671: STZ.w $0F70,X

;---------------------------------------------------------------------------------------------------

.no_bounce
#_1DC674: JSR Sprite_BounceFromTileCollision
#_1DC677: BEQ .no_tile_collision

#_1DC679: LDA.b #!SFX2_21
#_1DC67B: JSL SpriteSFX_QueueSFX2WithPan

.no_tile_collision
#_1DC67F: LDA.w $0ED0,X
#_1DC682: CMP.b #$03
#_1DC684: BCC .exit

#_1DC686: LDA.b #$06
#_1DC688: STA.w $0DD0,X

#_1DC68B: LDA.b #$0A
#_1DC68D: STA.w $0DF0,X

#_1DC690: STZ.w $0BE0,X

#_1DC693: LDA.b #!SFX2_1E
#_1DC695: JSL SpriteSFX_QueueSFX2WithPan

.exit
#_1DC699: RTS

;===================================================================================================

Pokey_FullStack:
#_1DC69A: JSR SpriteDraw_Pokey
#_1DC69D: JSR Sprite_CheckIfActive_Bank1D

#_1DC6A0: LDA.w $0EA0,X
#_1DC6A3: BEQ .no_PLP ; for PulL from stack Pokey

#_1DC6A5: LDY.w $0D90,X
#_1DC6A8: BEQ .no_PLP

#_1DC6AA: CMP.b #$0F
#_1DC6AC: BNE .no_PLP

;---------------------------------------------------------------------------------------------------

#_1DC6AE: LDA.b #$06
#_1DC6B0: STA.w $0EA0,X

#_1DC6B3: LDA.w $0F70,X
#_1DC6B6: CLC
#_1DC6B7: ADC.w $0DA0,X
#_1DC6BA: STA.w $0F70,X

#_1DC6BD: DEC.w $0D90,X
#_1DC6C0: BNE .dont_restore_hp

#_1DC6C2: LDA.b #$11
#_1DC6C4: STA.w $0E50,X

;---------------------------------------------------------------------------------------------------

.dont_restore_hp
#_1DC6C7: LDA.w $0D50,X
#_1DC6CA: BPL .x_positive

#_1DC6CC: SEC
#_1DC6CD: SBC.b #$08

.x_positive
#_1DC6CF: CLC
#_1DC6D0: ADC.b #$04
#_1DC6D2: STA.w $0D50,X

;---------------------------------------------------------------------------------------------------

#_1DC6D5: LDA.w $0D40,X
#_1DC6D8: BPL .y_positive

#_1DC6DA: SEC
#_1DC6DB: SBC.b #$08

.y_positive
#_1DC6DD: CLC
#_1DC6DE: ADC.b #$04
#_1DC6E0: STA.w $0D40,X

;---------------------------------------------------------------------------------------------------

; spawn a segment
#_1DC6E3: LDA.b #!SPRITE_C7
#_1DC6E5: JSL Sprite_SpawnDynamically
#_1DC6E9: BMI .no_PLP

#_1DC6EB: JSL Sprite_SetSpawnedCoordinates

#_1DC6EF: LDA.b #$01
#_1DC6F1: STA.w $0DB0,Y
#_1DC6F4: STA.w $0E50,Y

#_1DC6F7: LDA.w $0F40,X
#_1DC6FA: STA.w $0D50,Y

#_1DC6FD: LDA.w $0F30,X
#_1DC700: STA.w $0D40,Y

#_1DC703: LDA.b #$40
#_1DC705: STA.w $0CAA,Y

;---------------------------------------------------------------------------------------------------

.no_PLP
#_1DC708: JSR Sprite_CheckIfRecoiling_Bank1D
#_1DC70B: JSR Sprite_CheckDamageToAndFromLink_Bank1D

#_1DC70E: LDA.w $0D80,X
#_1DC711: JSL JumpTableLocal
#_1DC715: dw Pokey_ResetBounce
#_1DC717: dw Pokey_MoveFaster

;===================================================================================================

pool Pokey_ResetBounce

.spacing
#_1DC719: db  8,  7,  6,  5
#_1DC71D: db  4,  5,  6,  7

pool off

;---------------------------------------------------------------------------------------------------

Pokey_ResetBounce:
#_1DC721: LDA.w $0DF0,X
#_1DC724: BNE .delay

#_1DC726: INC.w $0D80,X

#_1DC729: LDA.b #$10
#_1DC72B: STA.w $0F80,X

#_1DC72E: RTS

.delay
#_1DC72F: LSR A
#_1DC730: TAY

#_1DC731: LDA.w .spacing,Y
#_1DC734: STA.w $0DA0,X

#_1DC737: RTS

;===================================================================================================

Pokey_MoveFaster:
#_1DC738: JSR Sprite_Move_XYZ_Bank1D

#_1DC73B: DEC.w $0F80,X
#_1DC73E: DEC.w $0F80,X

#_1DC741: LDA.w $0F70,X
#_1DC744: BPL Sprite_BounceFromTileCollision

#_1DC746: STZ.w $0F70,X
#_1DC749: STZ.w $0D80,X

#_1DC74C: LDA.b #$0F
#_1DC74E: STA.w $0DF0,X

;===================================================================================================

Sprite_BounceFromTileCollision:
#_1DC751: JSR Sprite_CheckTileCollision_Bank1D
#_1DC754: AND.b #$03
#_1DC756: BEQ .no_bounce

#_1DC758: LDA.w $0D50,X
#_1DC75B: EOR.b #$FF
#_1DC75D: INC A
#_1DC75E: STA.w $0D50,X

#_1DC761: INC.w $0ED0,X

.no_bounce
#_1DC764: LDA.w $0E70,X
#_1DC767: AND.b #$0C
#_1DC769: BEQ .exit

#_1DC76B: LDA.w $0D40,X
#_1DC76E: EOR.b #$FF
#_1DC770: INC A
#_1DC771: STA.w $0D40,X

#_1DC774: INC.w $0ED0,X

.exit
#_1DC777: RTS

;===================================================================================================

Sprite_BounceFromTileCollision_long:
#_1DC778: JSR Sprite_BounceFromTileCollision

#_1DC77B: RTL

;===================================================================================================

UNREACHABLE_1DC77C:
#_1DC77C: RTS

;===================================================================================================

SpriteDraw_Pokey:
#_1DC77D: JSR Sprite_PrepOAMCoord_Bank1D

#_1DC780: LDA.w $0DA0,X
#_1DC783: STA.b $06
#_1DC785: STZ.b $07

#_1DC787: PHX

#_1DC788: LDA.w $0D90,X
#_1DC78B: TAX

#_1DC78C: TYA
#_1DC78D: CLC
#_1DC78E: ADC.b #$0C
#_1DC790: TAY

;---------------------------------------------------------------------------------------------------

.next_object
#_1DC791: REP #$20

#_1DC793: LDA.b $00
#_1DC795: STA.b ($90),Y

#_1DC797: AND.w #$0100
#_1DC79A: STA.b $0E
#_1DC79C: INY

#_1DC79D: LDA.b $02 ; use PEI, chumps
#_1DC79F: PHA

#_1DC7A0: SEC
#_1DC7A1: SBC.b $06
#_1DC7A3: STA.b $02

#_1DC7A5: PLA
#_1DC7A6: STA.b ($90),Y

#_1DC7A8: CLC
#_1DC7A9: ADC.w #$0010
#_1DC7AC: CMP.w #$0100

#_1DC7AF: SEP #$20
#_1DC7B1: BCC .on_screen

#_1DC7B3: LDA.b #$F0
#_1DC7B5: STA.b ($90),Y

.on_screen
#_1DC7B7: LDA.b #$A0
#_1DC7B9: CPX.b #$00
#_1DC7BB: BNE .not_head

#_1DC7BD: LDA.b #$A2

;---------------------------------------------------------------------------------------------------

.not_head
#_1DC7BF: PHX

#_1DC7C0: LDX.b $06
#_1DC7C2: CPX.b #$07
#_1DC7C4: BCS .no_squish

#_1DC7C6: SEC
#_1DC7C7: SBC.b #$20

;---------------------------------------------------------------------------------------------------

.no_squish
#_1DC7C9: PLX

#_1DC7CA: INY
#_1DC7CB: STA.b ($90),Y

#_1DC7CD: LDA.b $05
#_1DC7CF: INY
#_1DC7D0: STA.b ($90),Y

#_1DC7D2: PHY

#_1DC7D3: TYA
#_1DC7D4: LSR A
#_1DC7D5: LSR A
#_1DC7D6: TAY

#_1DC7D7: LDA.b #$02
#_1DC7D9: ORA.b $0F
#_1DC7DB: STA.b ($92),Y

#_1DC7DD: PLA
#_1DC7DE: SEC
#_1DC7DF: SBC.b #$07
#_1DC7E1: TAY

#_1DC7E2: DEX
#_1DC7E3: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_1DC7E5: PLX

#_1DC7E6: JSL SpriteDraw_Shadow_long

#_1DC7EA: RTS

;===================================================================================================

Sprite_C5_Medusa:
#_1DC7EB: JSL Sprite_PrepOAMCoord_long

#_1DC7EF: LDA.b $1B
#_1DC7F1: BNE Medusa

;---------------------------------------------------------------------------------------------------

PoeInGrave:
#_1DC7F3: LDA.b #$FF
#_1DC7F5: STA.w $0D50,X
#_1DC7F8: STA.w $0E30,X

#_1DC7FB: JSR Sprite_CheckTileCollision_Bank1D
#_1DC7FE: BEQ .exit

;---------------------------------------------------------------------------------------------------

#_1DC800: JSR Sprite_CheckIfActive_Bank1D

#_1DC803: LDA.b #!SPRITE_19
#_1DC805: STA.w $0E20,X

#_1DC808: JSL SpritePrep_LoadProperties
#_1DC80C: INC.w $0E90,X

#_1DC80F: LDA.w $0D10,X
#_1DC812: ADC.b #$08
#_1DC814: STA.w $0D10,X

#_1DC817: LDA.w $0D00,X
#_1DC81A: SBC.b #$07
#_1DC81C: STA.w $0D00,X

#_1DC81F: LDA.b #!SFX3_19
#_1DC821: JSL SpriteSFX_QueueSFX3WithPan

#_1DC825: LDA.b #$80
#_1DC827: STA.w $0CAA,X

;---------------------------------------------------------------------------------------------------

.exit
#_1DC82A: RTS

;===================================================================================================

Medusa:
#_1DC82B: JSR Sprite_CheckIfActive_Bank1D

#_1DC82E: INC.w $0E80,X

#_1DC831: LDA.w $0E80,X
#_1DC834: AND.b #$7F
#_1DC836: BNE .exit

#_1DC838: LDA.w $0F20,X
#_1DC83B: CMP.b $EE
#_1DC83D: BNE .exit

#_1DC83F: JSL Sprite_SpawnFireball
#_1DC843: BMI .exit

;---------------------------------------------------------------------------------------------------

#Fireball_Configure:
#_1DC845: LDA.w $0CAA,Y
#_1DC848: ORA.b #$08
#_1DC84A: STA.w $0CAA,Y

#_1DC84D: LDA.b #$04
#_1DC84F: STA.w $0CD2,Y

.exit
#_1DC852: RTS

;===================================================================================================

pool Sprite_C6_4WayShooter

.offset_x_low
#_1DC853: db  12, -12,   0,   0

.offset_x_high
#_1DC857: db   0,  -1,   0,   0

.offset_y_low
#_1DC85B: db   0,   0,  12, -12

.offset_y_high
#_1DC85F: db   0,   0,   0,  -1

;---------------------------------------------------------------------------------------------------

.speed_y ; bleeds into next
#_1DC863: db   0,   0

.speed_x
#_1DC865: db  40, -40,   0,   0

pool off

;---------------------------------------------------------------------------------------------------

Sprite_C6_4WayShooter:
#_1DC869: JSL Sprite_PrepOAMCoord_long
#_1DC86D: JSR Sprite_CheckIfActive_Bank1D

#_1DC870: LDA.w $0DF0,X
#_1DC873: BEQ .check_for_swing

#_1DC875: CMP.b #$18
#_1DC877: BNE .exit_a

#_1DC879: JSL Sprite_SpawnFireball
#_1DC87D: BMI .exit_a

#_1DC87F: JSR Fireball_Configure

#_1DC882: PHX
#_1DC883: TYX

#_1DC884: JSR Sprite_DirectionToFaceLink_Bank1D

#_1DC887: LDA.w .speed_x,Y
#_1DC88A: STA.w $0D50,X

#_1DC88D: LDA.w .speed_y,Y
#_1DC890: STA.w $0D40,X

#_1DC893: LDA.w $0D10,X
#_1DC896: CLC
#_1DC897: ADC.w .offset_x_low,Y
#_1DC89A: STA.w $0D10,X

#_1DC89D: LDA.w $0D30,X
#_1DC8A0: ADC.w .offset_x_high,Y
#_1DC8A3: STA.w $0D30,X

#_1DC8A6: LDA.w $0D00,X
#_1DC8A9: CLC
#_1DC8AA: ADC.w .offset_y_low,Y
#_1DC8AD: STA.w $0D00,X

#_1DC8B0: LDA.w $0D20,X
#_1DC8B3: ADC.w .offset_y_high,Y
#_1DC8B6: STA.w $0D20,X

#_1DC8B9: PLX

.exit_a
#_1DC8BA: RTS

;---------------------------------------------------------------------------------------------------

.check_for_swing
#_1DC8BB: LDA.b $3C
#_1DC8BD: BEQ .exit_b

#_1DC8BF: LDA.w $0F20,X
#_1DC8C2: CMP.b $EE
#_1DC8C4: BNE .exit_b

#_1DC8C6: LDA.b #$20
#_1DC8C8: STA.w $0DF0,X

.exit_b
#_1DC8CB: RTS

;===================================================================================================

Thief_anim_step:
.standing
#_1DC8CC: db $0B, $08, $02, $05

.watching
#_1DC8D0: db $09, $06, $00, $03, $0A, $07, $01, $04

;===================================================================================================

Sprite_C4_Thief:
#_1DC8D8: JSL SpriteDraw_Thief
#_1DC8DC: JSR Sprite_CheckIfActive_Bank1D
#_1DC8DF: JSR Sprite_CheckIfRecoiling_Bank1D
#_1DC8E2: JSL Sprite_CheckDamageFromLink_long

#_1DC8E6: LDA.w $0D80,X
#_1DC8E9: CMP.b #$03
#_1DC8EB: BEQ .dont_face_link

;---------------------------------------------------------------------------------------------------

#_1DC8ED: JSR Sprite_DirectionToFaceLink_Bank1D
#_1DC8F0: TYA

#_1DC8F1: STA.w $0EB0,X
#_1DC8F4: EOR.w $0DE0,X
#_1DC8F7: CMP.b #$01
#_1DC8F9: BNE .dont_face_link

#_1DC8FB: TYA
#_1DC8FC: STA.w $0DE0,X

;---------------------------------------------------------------------------------------------------

.dont_face_link
#_1DC8FF: LDA.w $0D80,X
#_1DC902: JSL JumpTableLocal
#_1DC906: dw Thief_Loitering
#_1DC908: dw Thief_Watching
#_1DC90A: dw Thief_Chasing
#_1DC90C: dw Thief_Stealing

;===================================================================================================

Thief_Loitering:
#_1DC90E: JSR Thief_CheckCollisionWithLink

#_1DC911: LDA.w $0DF0,X
#_1DC914: BNE .dont_look

;---------------------------------------------------------------------------------------------------

; don't look at Link unless he's close
#_1DC916: REP #$20

#_1DC918: LDA.b $22
#_1DC91A: SEC
#_1DC91B: SBC.w $0FD8
#_1DC91E: CLC
#_1DC91F: ADC.w #$0050

#_1DC922: CMP.w #$00A0
#_1DC925: BCS .dont_look

;---------------------------------------------------------------------------------------------------

#_1DC927: LDA.b $20
#_1DC929: SEC
#_1DC92A: SBC.w $0FDA
#_1DC92D: CLC
#_1DC92E: ADC.w #$0050

#_1DC931: CMP.w #$00A0
#_1DC934: BCS .dont_look

;---------------------------------------------------------------------------------------------------

#_1DC936: SEP #$20

#_1DC938: INC.w $0D80,X

#_1DC93B: LDA.b #$10
#_1DC93D: STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

.dont_look
#_1DC940: SEP #$20

#_1DC942: LDY.w $0DE0,X

#_1DC945: LDA.w Thief_anim_step_standing,Y
#_1DC948: STA.w $0DC0,X

#_1DC94B: RTS

;===================================================================================================

Thief_Watching:
#_1DC94C: JSR Thief_CheckCollisionWithLink
#_1DC94F: JSR Sprite_DirectionToFaceLink_Bank1D

#_1DC952: TYA
#_1DC953: STA.w $0EB0,X
#_1DC956: STA.w $0DE0,X

#_1DC959: LDA.w $0DF0,X
#_1DC95C: BNE Thief_TrackHead

#_1DC95E: INC.w $0D80,X

#_1DC961: LDA.b #$20
#_1DC963: STA.w $0DF0,X

;===================================================================================================

Thief_TrackHead:
#_1DC966: LDA.b $1A
#_1DC968: AND.b #$1F
#_1DC96A: BNE Thief_Animate

#_1DC96C: LDA.w $0EB0,X
#_1DC96F: STA.w $0DE0,X

;===================================================================================================

Thief_Animate:
#_1DC972: INC.w $0E80,X

#_1DC975: LDA.w $0E80,X
#_1DC978: AND.b #$04
#_1DC97A: ORA.w $0DE0,X
#_1DC97D: TAY

#_1DC97E: LDA.w Thief_anim_step_watching,Y
#_1DC981: STA.w $0DC0,X

#_1DC984: RTS

;===================================================================================================

Thief_Chasing:
#_1DC985: LDA.b #$12
#_1DC987: JSL Sprite_ApplySpeedTowardsLink_long

#_1DC98B: LDA.w $0E70,X
#_1DC98E: BNE .tile_collision

#_1DC990: JSR Sprite_Move_XY_Bank1D

;---------------------------------------------------------------------------------------------------

.tile_collision
#_1DC993: JSR Sprite_CheckTileCollision_Bank1D

#_1DC996: LDA.w $0DF0,X
#_1DC999: BNE .delay

;---------------------------------------------------------------------------------------------------

#_1DC99B: REP #$20

#_1DC99D: LDA.b $22
#_1DC99F: SEC
#_1DC9A0: SBC.w $0FD8
#_1DC9A3: CLC
#_1DC9A4: ADC.w #$0050

#_1DC9A7: CMP.w #$00A0
#_1DC9AA: BCS .link_not_close

#_1DC9AC: LDA.b $20
#_1DC9AE: SEC
#_1DC9AF: SBC.w $0FDA
#_1DC9B2: CLC
#_1DC9B3: ADC.w #$0050

#_1DC9B6: CMP.w #$00A0
#_1DC9B9: BCC .delay

.link_not_close
#_1DC9BB: SEP #$20

#_1DC9BD: STZ.w $0D80,X

#_1DC9C0: LDA.b #$80
#_1DC9C2: STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

.delay
#_1DC9C5: SEP #$20

#_1DC9C7: JSL Sprite_CheckDamageToLink_long
#_1DC9CB: BCC .no_bump

#_1DC9CD: INC.w $0D80,X

#_1DC9D0: LDA.b #$20
#_1DC9D2: STA.w $0DF0,X

#_1DC9D5: JSR Thief_SpillItems
#_1DC9D8: JSR Thief_MakeBOMPNoise

.no_bump
#_1DC9DB: JSR Thief_TrackHead

#_1DC9DE: RTS

;===================================================================================================

Thief_Stealing:
#_1DC9DF: JSR Thief_CheckCollisionWithLink
#_1DC9E2: JSR Thief_ScanForBooty

#_1DC9E5: PHY

#_1DC9E6: LDA.w $0DF0,X
#_1DC9E9: BNE .wait_for_booty

#_1DC9EB: JSR Thief_Animate

#_1DC9EE: LDA.w $0E70,X
#_1DC9F1: BNE .tile_collision

#_1DC9F3: JSR Sprite_Move_XY_Bank1D

.tile_collision
#_1DC9F6: JSR Sprite_CheckTileCollision_Bank1D

#_1DC9F9: LDA.w $0EB0,X
#_1DC9FC: STA.w $0DE0,X

;---------------------------------------------------------------------------------------------------

.wait_for_booty
#_1DC9FF: PLY

#_1DCA00: TXA
#_1DCA01: EOR.b $1A
#_1DCA03: AND.b #$03
#_1DCA05: BNE .exit

#_1DCA07: LDA.w $0D10,Y
#_1DCA0A: STA.b $04

#_1DCA0C: LDA.w $0D30,Y
#_1DCA0F: STA.b $05

#_1DCA11: LDA.w $0D00,Y
#_1DCA14: STA.b $06

#_1DCA16: LDA.w $0D20,Y
#_1DCA19: STA.b $07

#_1DCA1B: JSL Sprite_DirectionToFaceLocation

#_1DCA1F: TYA
#_1DCA20: STA.w $0EB0,X

.exit
#_1DCA23: RTS

;===================================================================================================
; Unfortunately, I cannot take credit for this name.
; This was all MathOnNapkins.
;===================================================================================================
Thief_ScanForBooty:
#_1DCA24: LDY.b #$0F

.scavenge_next
#_1DCA26: LDA.w $0DD0,Y
#_1DCA29: BEQ .not_worth_stealing

#_1DCA2B: LDA.w $0E20,Y
#_1DCA2E: CMP.b #!SPRITE_DC ; bomb
#_1DCA30: BEQ .tango_locked

#_1DCA32: CMP.b #!SPRITE_E1 ; arrow
#_1DCA34: BEQ .tango_locked

#_1DCA36: CMP.b #!SPRITE_D9 ; rupee
#_1DCA38: BNE .not_worth_stealing

.tango_locked
#_1DCA3A: PHY

#_1DCA3B: JSR Thief_TargetBooty

#_1DCA3E: PLY

#_1DCA3F: RTS

.not_worth_stealing
#_1DCA40: DEY
#_1DCA41: BPL .scavenge_next

;---------------------------------------------------------------------------------------------------

#_1DCA43: STZ.w $0D80,X

#_1DCA46: LDA.b #$40
#_1DCA48: STA.w $0DF0,X

#_1DCA4B: RTS

;===================================================================================================

Thief_TargetBooty:
#_1DCA4C: TXA
#_1DCA4D: EOR.b $1A
#_1DCA4F: AND.b #$03
#_1DCA51: BNE .delay_turn

#_1DCA53: LDA.w $0D10,Y
#_1DCA56: STA.b $04

#_1DCA58: LDA.w $0D30,Y
#_1DCA5B: STA.b $05

#_1DCA5D: LDA.w $0D00,Y
#_1DCA60: STA.b $06

#_1DCA62: LDA.w $0D20,Y
#_1DCA65: STA.b $07

#_1DCA67: LDA.b #$13
#_1DCA69: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1DCA6D: LDA.b $00
#_1DCA6F: STA.w $0D40,X

#_1DCA72: LDA.b $01
#_1DCA74: STA.w $0D50,X

;---------------------------------------------------------------------------------------------------

.delay_turn
#_1DCA77: LDY.b #$0F

; what??
; it comes in with Y=sprite slot
; why does it search them all again???
.next_sprite
#_1DCA79: TYA
#_1DCA7A: EOR.b $1A
#_1DCA7C: AND.b #$03

#_1DCA7E: ORA.w $0F10,Y
#_1DCA81: BNE .whered_it_go

#_1DCA83: LDA.w $0DD0,Y
#_1DCA86: BEQ .whered_it_go

#_1DCA88: LDA.w $0E20,Y
#_1DCA8B: CMP.b #!SPRITE_DC ; bomb
#_1DCA8D: BEQ .steal_this

#_1DCA8F: CMP.b #!SPRITE_E1 ; arrow
#_1DCA91: BEQ .steal_this

#_1DCA93: CMP.b #!SPRITE_D9 ; rupee
#_1DCA95: BNE .whered_it_go

.steal_this
#_1DCA97: JSR Thief_GrabBooty

.whered_it_go
#_1DCA9A: DEY
#_1DCA9B: BPL .next_sprite

#_1DCA9D: RTS

;===================================================================================================

Thief_GrabBooty:
#_1DCA9E: LDA.w $0D10,Y
#_1DCAA1: STA.b $04

#_1DCAA3: LDA.w $0D30,Y
#_1DCAA6: STA.b $05

#_1DCAA8: LDA.w $0D00,Y
#_1DCAAB: STA.b $06

#_1DCAAD: LDA.w $0D20,Y
#_1DCAB0: STA.b $07

#_1DCAB2: REP #$20

#_1DCAB4: LDA.b $04
#_1DCAB6: SEC
#_1DCAB7: SBC.w $0FD8
#_1DCABA: CLC
#_1DCABB: ADC.w #$0008

#_1DCABE: CMP.w #$0010
#_1DCAC1: BCS .ungrabbable_booty

#_1DCAC3: LDA.b $06
#_1DCAC5: SEC
#_1DCAC6: SBC.w $0FDA
#_1DCAC9: CLC
#_1DCACA: ADC.w #$000C

#_1DCACD: CMP.w #$0018
#_1DCAD0: BCS .ungrabbable_booty

#_1DCAD2: SEP #$20

#_1DCAD4: LDA.b #$00
#_1DCAD6: STA.w $0DD0,Y

#_1DCAD9: PHX

#_1DCADA: LDA.w $0E20,Y
#_1DCADD: SEC
#_1DCADE: SBC.b #$D8
#_1DCAE0: TAX

#_1DCAE1: LDA.l Absorbable_SFX3,X
#_1DCAE5: JSL SpriteSFX_QueueSFX3WithPan

#_1DCAE9: PLX

#_1DCAEA: LDA.b #$0E
#_1DCAEC: STA.w $0DF0,X

.ungrabbable_booty
#_1DCAEF: SEP #$20

#_1DCAF1: RTS

;===================================================================================================

Thief_CheckCollisionWithLink:
#_1DCAF2: JSL Sprite_CheckDamageToLink_same_layer_long
#_1DCAF6: BCC .exit

#_1DCAF8: LDA.b #$20
#_1DCAFA: JSL Sprite_ProjectSpeedTowardsLink_long

#_1DCAFE: LDA.b $00
#_1DCB00: STA.b $27

#_1DCB02: EOR.b #$FF
#_1DCB04: STA.w $0F30,X

#_1DCB07: LDA.b $01
#_1DCB09: STA.b $28

#_1DCB0B: EOR.b #$FF
#_1DCB0D: STA.w $0F40,X

#_1DCB10: LDA.b #$04
#_1DCB12: STA.b $46

#_1DCB14: LDA.b #$0C
#_1DCB16: STA.w $0EA0,X

;===================================================================================================

; Yes. BOMP. With a P.
; Not BOMB.
; Not BUMP.
; But BOMP.
; That is what I am calling this routine.
#Thief_MakeBOMPNoise:
#_1DCB19: LDA.b #!SFX2_0B
#_1DCB1B: JSL SpriteSFX_QueueSFX2WithPan

.exit
#_1DCB1F: RTS

;===================================================================================================

pool Thief_SpillItems

.speed_x
#_1DCB20: db   0,  24,  24,   0, -24, -24

.speed_y
#_1DCB26: db -32, -16,  16,  32,  16, -16

;---------------------------------------------------------------------------------------------------

.booty_id
#_1DCB2C: db !SPRITE_D9 ; rupee
#_1DCB2D: db !SPRITE_E1 ; arrow
#_1DCB2E: db !SPRITE_DC ; bomb
#_1DCB2F: db !SPRITE_D9 ; rupee

pool off

;---------------------------------------------------------------------------------------------------

Thief_SpillItems:
#_1DCB30: LDA.b #$05
#_1DCB32: STA.w $0FB5

.next_item
#_1DCB35: JSL GetRandomNumber
#_1DCB39: AND.b #$03
#_1DCB3B: STA.w $0FB6

#_1DCB3E: DEC A
#_1DCB3F: BEQ .steal_arrow

#_1DCB41: DEC A
#_1DCB42: BEQ .steal_bomb

;---------------------------------------------------------------------------------------------------

.steal_rupee
#_1DCB44: REP #$20

#_1DCB46: LDA.l $7EF360

#_1DCB4A: SEP #$20

#_1DCB4C: BRA .continue

;---------------------------------------------------------------------------------------------------

.steal_arrow
#_1DCB4E: LDA.l $7EF377
#_1DCB52: BRA .continue

;---------------------------------------------------------------------------------------------------

.steal_bomb
#_1DCB54: LDA.l $7EF343

;---------------------------------------------------------------------------------------------------

; Interestingly, this short circuits on any failure, even the first.
.continue
#_1DCB58: BEQ .exit

#_1DCB5A: LDY.w $0FB6

#_1DCB5D: LDA.w .booty_id,Y

#_1DCB60: LDY.b #$07
#_1DCB62: JSL Sprite_SpawnDynamically_slot_limited
#_1DCB66: BMI .exit

#_1DCB68: LDA.w $0FB6
#_1DCB6B: DEC A
#_1DCB6C: BEQ .stole_arrow

#_1DCB6E: DEC A
#_1DCB6F: BEQ .stole_bomb

;---------------------------------------------------------------------------------------------------

.stole_rupee
#_1DCB71: REP #$20

#_1DCB73: LDA.l $7EF360
#_1DCB77: DEC A
#_1DCB78: STA.l $7EF360

#_1DCB7C: SEP #$20

#_1DCB7E: BRA .spill_the_loot

;---------------------------------------------------------------------------------------------------

.stole_arrow
#_1DCB80: LDA.l $7EF377
#_1DCB84: DEC A
#_1DCB85: STA.l $7EF377

#_1DCB89: BRA .spill_the_loot

;---------------------------------------------------------------------------------------------------

.stole_bomb
#_1DCB8B: LDA.l $7EF343
#_1DCB8F: DEC A
#_1DCB90: STA.l $7EF343

;---------------------------------------------------------------------------------------------------

.spill_the_loot
#_1DCB94: LDA.b $22
#_1DCB96: STA.w $0D10,Y

#_1DCB99: LDA.b $23
#_1DCB9B: STA.w $0D30,Y

#_1DCB9E: LDA.b $20
#_1DCBA0: STA.w $0D00,Y

#_1DCBA3: LDA.b $21
#_1DCBA5: STA.w $0D20,Y

#_1DCBA8: LDA.b #$18
#_1DCBAA: STA.w $0F80,Y

;---------------------------------------------------------------------------------------------------

#_1DCBAD: PHX

#_1DCBAE: LDX.w $0FB5

#_1DCBB1: LDA.w .speed_x,X
#_1DCBB4: STA.w $0D50,Y

#_1DCBB7: LDA.w .speed_y,X
#_1DCBBA: STA.w $0D40,Y

#_1DCBBD: PLX

;---------------------------------------------------------------------------------------------------

#_1DCBBE: LDA.b #$20
#_1DCBC0: STA.w $0F10,Y

#_1DCBC3: LDA.b #$01
#_1DCBC5: STA.w $0EB0,Y

#_1DCBC8: LDA.b #$FF
#_1DCBCA: STA.w $0B58,Y

#_1DCBCD: DEC.w $0FB5
#_1DCBD0: BMI .exit

#_1DCBD2: JMP.w .next_item

;---------------------------------------------------------------------------------------------------

.exit
#_1DCBD5: RTS

;===================================================================================================

pool SpriteDraw_Thief

.oam_groups
; group00
#_1DCBD6: dw   0,  -6 : db $00, $00, $00, $02
#_1DCBDE: dw   0,   0 : db $06, $00, $00, $02

; group01
#_1DCBE6: dw   0,  -6 : db $00, $00, $00, $02
#_1DCBEE: dw   0,   0 : db $06, $40, $00, $02

; group02
#_1DCBF6: dw   0,  -6 : db $00, $00, $00, $02
#_1DCBFE: dw   0,   0 : db $20, $00, $00, $02

; group03
#_1DCC06: dw   0,  -7 : db $04, $00, $00, $02
#_1DCC0E: dw   0,   0 : db $22, $00, $00, $02

; group04
#_1DCC16: dw   0,  -7 : db $04, $00, $00, $02
#_1DCC1E: dw   0,   0 : db $22, $40, $00, $02

; group05
#_1DCC26: dw   0,  -7 : db $04, $00, $00, $02
#_1DCC2E: dw   0,   0 : db $24, $00, $00, $02

; group06
#_1DCC36: dw   0,  -8 : db $02, $00, $00, $02
#_1DCC3E: dw   0,   0 : db $0A, $00, $00, $02

; group07
#_1DCC46: dw   0,  -7 : db $02, $00, $00, $02
#_1DCC4E: dw   0,   0 : db $0E, $00, $00, $02

; group08
#_1DCC56: dw   0,  -7 : db $02, $00, $00, $02
#_1DCC5E: dw   0,   0 : db $0A, $00, $00, $02

; group09
#_1DCC66: dw   0,  -8 : db $02, $40, $00, $02
#_1DCC6E: dw   0,   0 : db $0A, $40, $00, $02

; group0A
#_1DCC76: dw   0,  -7 : db $02, $40, $00, $02
#_1DCC7E: dw   0,   0 : db $0E, $40, $00, $02

; group0B
#_1DCC86: dw   0,  -7 : db $02, $40, $00, $02
#_1DCC8E: dw   0,   0 : db $0A, $40, $00, $02

;---------------------------------------------------------------------------------------------------

.char
#_1DCC96: db $02, $02, $00, $04

.hflip
#_1DCC9A: db $40, $00, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Thief:
#_1DCC9E: PHB
#_1DCC9F: PHK
#_1DCCA0: PLB

#_1DCCA1: LDA.b #$00
#_1DCCA3: XBA
#_1DCCA4: LDA.w $0DC0,X

#_1DCCA7: REP #$20

#_1DCCA9: ASL A ; x16
#_1DCCAA: ASL A
#_1DCCAB: ASL A
#_1DCCAC: ASL A
#_1DCCAD: ADC.w #.oam_groups
#_1DCCB0: STA.b $08

#_1DCCB2: SEP #$20

#_1DCCB4: LDA.b #$02
#_1DCCB6: JSR Sprite_DrawMultiple_Bank1D

;---------------------------------------------------------------------------------------------------

#_1DCCB9: LDA.w $0F00,X
#_1DCCBC: BNE .done

#_1DCCBE: PHX

#_1DCCBF: LDA.w $0EB0,X
#_1DCCC2: TAX

#_1DCCC3: LDA.w .char,X
#_1DCCC6: LDY.b #$02
#_1DCCC8: STA.b ($90),Y

#_1DCCCA: INY
#_1DCCCB: LDA.b ($90),Y
#_1DCCCD: AND.b #$BF
#_1DCCCF: ORA.w .hflip,X
#_1DCCD2: STA.b ($90),Y

#_1DCCD4: PLX

#_1DCCD5: JSL SpriteDraw_Shadow_long

.done
#_1DCCD9: PLB

#_1DCCDA: RTL

;===================================================================================================

Gibo_OAMFlip:
#_1DCCDB: db $00, $40, $C0, $80

Gibo_OAMPal:
#_1DCCDF: db $0B, $07

;---------------------------------------------------------------------------------------------------

Sprite_C3_Gibo:
#_1DCCE1: LDA.w $0DA0,X
#_1DCCE4: BEQ Gibo_Body

;===================================================================================================

Gibo_Nucleus:
#_1DCCE6: JSL SpriteDraw_SingleLarge_long
#_1DCCEA: JSR Sprite_CheckIfActive_Bank1D
#_1DCCED: JSR Sprite_CheckDamageToAndFromLink_Bank1D

#_1DCCF0: INC.w $0E80,X

#_1DCCF3: LDA.w $0E80,X
#_1DCCF6: LSR A
#_1DCCF7: LSR A
#_1DCCF8: AND.b #$03
#_1DCCFA: TAY

#_1DCCFB: LDA.w $0F50,X
#_1DCCFE: AND.b #$3F
#_1DCD00: ORA.w Gibo_OAMFlip,Y
#_1DCD03: STA.w $0F50,X

#_1DCD06: LDA.w $0DF0,X
#_1DCD09: BEQ .exit

#_1DCD0B: JSR Sprite_Move_XY_Bank1D
#_1DCD0E: JSR Sprite_BounceFromTileCollision

.exit
#_1DCD11: RTS

;===================================================================================================

Gibo_Body:
#_1DCD12: JSR SpriteDraw_Gibo
#_1DCD15: JSR Sprite_CheckIfActive_Bank1D

#_1DCD18: INC.w $0EC0,X

#_1DCD1B: LDY.w $0EB0,X

#_1DCD1E: LDA.w $0DD0,Y
#_1DCD21: CMP.b #$06
#_1DCD23: BNE .nucleus_alive

#_1DCD25: STA.w $0DD0,X

#_1DCD28: LDA.w $0DF0,Y
#_1DCD2B: STA.w $0DF0,X

#_1DCD2E: LDA.w $0E40,X
#_1DCD31: CLC
#_1DCD32: ADC.b #$04
#_1DCD34: STA.w $0E40,X

#_1DCD37: RTS

;---------------------------------------------------------------------------------------------------

.nucleus_alive
#_1DCD38: LDA.b $1A
#_1DCD3A: LSR A
#_1DCD3B: LSR A
#_1DCD3C: LSR A
#_1DCD3D: AND.b #$03
#_1DCD3F: STA.w $0E80,X

#_1DCD42: LDA.b $1A
#_1DCD44: AND.b #$3F
#_1DCD46: BNE .dont_face_link

#_1DCD48: JSR Sprite_IsRightOfLink_Bank1D

#_1DCD4B: TYA
#_1DCD4C: ASL A
#_1DCD4D: ASL A
#_1DCD4E: STA.w $0DE0,X

.dont_face_link
#_1DCD51: JSL Sprite_CheckDamageToLink_long

#_1DCD55: LDA.w $0D80,X
#_1DCD58: JSL JumpTableLocal
#_1DCD5C: dw Gibo_Mitosis
#_1DCD5E: dw Gibo_Osmosis
#_1DCD60: dw Gibo_ConsumeDaughter

;===================================================================================================
; While mitosis generally produces 2 identical daughter cells, a complex
; biological process occurs where proteins in one daughter cell steal material
; from the other, causing one of the daughter cells to be much larger,
; but otherwise identical.
;===================================================================================================
pool Gibo_Mitosis

.speed_x
#_1DCD62: db  16,  16,   0, -16, -16, -16,   0,  16

.speed_y
#_1DCD6A: db   0,   0,  16, -16,  16,  16, -16, -16

pool off

;---------------------------------------------------------------------------------------------------

Gibo_Mitosis:
#_1DCD72: LDA.w $0DF0,X
#_1DCD75: BNE .still_zipping_nucleic_acids

#_1DCD77: INC.w $0D80,X

#_1DCD7A: LDA.b #$30
#_1DCD7C: STA.w $0DF0,X

#_1DCD7F: INC.w $0D90,X

#_1DCD82: LDA.b #!SPRITE_C3
#_1DCD84: JSL Sprite_SpawnDynamically
#_1DCD88: BMI .spawn_failed

;---------------------------------------------------------------------------------------------------

#_1DCD8A: JSL Sprite_SetSpawnedCoordinates

#_1DCD8E: TYA
#_1DCD8F: STA.w $0EB0,X

#_1DCD92: LDA.b #$01
#_1DCD94: STA.w $0E40,Y
#_1DCD97: STA.w $0DA0,Y

#_1DCD9A: LDA.b #$10
#_1DCD9C: STA.w $0E60,Y

#_1DCD9F: LDA.w $0ED0,X
#_1DCDA2: STA.w $0E50,Y

#_1DCDA5: LDA.b #$07
#_1DCDA7: STA.w $0F50,Y

#_1DCDAA: LDA.b #$30
#_1DCDAC: STA.w $0DF0,Y

#_1DCDAF: PHX

#_1DCDB0: INC.w $0DB0,X

; target link every 4 splits
#_1DCDB3: LDA.w $0DB0,X
#_1DCDB6: CMP.b #$03
#_1DCDB8: BNE .random_direction

#_1DCDBA: STZ.w $0DB0,X

#_1DCDBD: PHY

#_1DCDBE: JSR Sprite_DirectionToFaceLink_Bank1D
#_1DCDC1: TYX

#_1DCDC2: PLY
#_1DCDC3: BRA .set_speed

.random_direction
#_1DCDC5: JSL GetRandomNumber
#_1DCDC9: AND.b #$07
#_1DCDCB: TAX

.set_speed
#_1DCDCC: LDA.w .speed_x,X
#_1DCDCF: STA.w $0D50,Y

#_1DCDD2: LDA.w .speed_y,X
#_1DCDD5: STA.w $0D40,Y

#_1DCDD8: PLX

.spawn_failed
#_1DCDD9: RTS

;---------------------------------------------------------------------------------------------------

.still_zipping_nucleic_acids
#_1DCDDA: CMP.b #$20
#_1DCDDC: BNE .exit

#_1DCDDE: STA.w $0E00,X

.exit
#_1DCDE1: RTS

;===================================================================================================
; As far as I can tell, it doesn't actually perform osmosis.
; It just sits there doing nothing.
; Sorry to disappoint.
;===================================================================================================
Gibo_Osmosis:
#_1DCDE2: LDA.w $0DF0,X
#_1DCDE5: BNE .exit

#_1DCDE7: INC.w $0D80,X

.exit
#_1DCDEA: RTS

;===================================================================================================
; Gruesome!
;===================================================================================================
Gibo_ConsumeDaughter:
#_1DCDEB: TXA
#_1DCDEC: EOR.b $1A
#_1DCDEE: AND.b #$03
#_1DCDF0: BNE .just_move

;---------------------------------------------------------------------------------------------------

#_1DCDF2: LDA.w $0D10,Y
#_1DCDF5: STA.b $04

#_1DCDF7: LDA.w $0D30,Y
#_1DCDFA: STA.b $05

#_1DCDFC: LDA.w $0D00,Y
#_1DCDFF: STA.b $06

#_1DCE01: LDA.w $0D20,Y
#_1DCE04: STA.b $07

#_1DCE06: REP #$20

#_1DCE08: LDA.w $0FD8
#_1DCE0B: SEC
#_1DCE0C: SBC.b $04
#_1DCE0E: CLC
#_1DCE0F: ADC.w #$0002
#_1DCE12: CMP.w #$0004
#_1DCE15: BCS .come_to_momma

#_1DCE17: LDA.w $0FDA
#_1DCE1A: SEC
#_1DCE1B: SBC.b $06
#_1DCE1D: CLC
#_1DCE1E: ADC.w #$0002
#_1DCE21: CMP.w #$0004
#_1DCE24: BCS .come_to_momma

;---------------------------------------------------------------------------------------------------

#_1DCE26: SEP #$20

#_1DCE28: LDY.w $0EB0,X

#_1DCE2B: LDA.b #$00
#_1DCE2D: STA.w $0DD0,Y

#_1DCE30: STZ.w $0D90,X
#_1DCE33: STZ.w $0D80,X

#_1DCE36: LDA.w $0E50,Y
#_1DCE39: STA.w $0ED0,X

#_1DCE3C: JSL GetRandomNumber
#_1DCE40: AND.b #$1F
#_1DCE42: ADC.b #$20
#_1DCE44: STA.w $0DF0,X

#_1DCE47: RTS

;---------------------------------------------------------------------------------------------------

; It's time to feed!
.come_to_momma
#_1DCE48: SEP #$20

#_1DCE4A: LDA.b #$10
#_1DCE4C: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1DCE50: LDA.b $00
#_1DCE52: STA.w $0D40,X

#_1DCE55: LDA.b $01
#_1DCE57: STA.w $0D50,X

;---------------------------------------------------------------------------------------------------

.just_move
#_1DCE5A: JSR Sprite_Move_XY_Bank1D

#_1DCE5D: RTS

;===================================================================================================

pool SpriteDraw_Gibo

.oam_groups
; group00
#_1DCE5E: dw   4,  -4 : db $8A, $40, $00, $02
#_1DCE66: dw  -4,  -4 : db $8F, $40, $00, $00
#_1DCE6E: dw  12,  12 : db $8E, $40, $00, $00
#_1DCE76: dw  -4,   4 : db $8C, $40, $00, $02

; group01
#_1DCE7E: dw   4,  -4 : db $AA, $40, $00, $02
#_1DCE86: dw  -4,  -4 : db $9F, $40, $00, $00
#_1DCE8E: dw  12,  12 : db $9E, $40, $00, $00
#_1DCE96: dw  -4,   4 : db $AC, $40, $00, $02

; group02
#_1DCE9E: dw   3,  -3 : db $AA, $40, $00, $02
#_1DCEA6: dw  -3,  -3 : db $9F, $40, $00, $00
#_1DCEAE: dw  11,  11 : db $9E, $40, $00, $00
#_1DCEB6: dw  -3,   3 : db $AC, $40, $00, $02

; group03
#_1DCEBE: dw   3,  -3 : db $8A, $40, $00, $02
#_1DCEC6: dw  -3,  -3 : db $8F, $40, $00, $00
#_1DCECE: dw  11,  11 : db $8E, $40, $00, $00
#_1DCED6: dw  -3,   3 : db $8C, $40, $00, $02

; group04
#_1DCEDE: dw  -3,  -4 : db $8A, $00, $00, $02
#_1DCEE6: dw  13,  -4 : db $8F, $00, $00, $00
#_1DCEEE: dw  -3,  12 : db $8E, $00, $00, $00
#_1DCEF6: dw   5,   4 : db $8C, $00, $00, $02

; group05
#_1DCEFE: dw  -3,  -4 : db $AA, $00, $00, $02
#_1DCF06: dw  13,  -4 : db $9F, $00, $00, $00
#_1DCF0E: dw  -3,  12 : db $9E, $00, $00, $00
#_1DCF16: dw   5,   4 : db $AC, $00, $00, $02

; group06
#_1DCF1E: dw  -2,  -3 : db $AA, $00, $00, $02
#_1DCF26: dw  12,  -3 : db $9F, $00, $00, $00
#_1DCF2E: dw  -2,  11 : db $9E, $00, $00, $00
#_1DCF36: dw   4,   3 : db $AC, $00, $00, $02

; group07
#_1DCF3E: dw  -2,  -3 : db $8A, $00, $00, $02
#_1DCF46: dw  12,  -3 : db $8F, $00, $00, $00
#_1DCF4E: dw  -2,  11 : db $8E, $00, $00, $00
#_1DCF56: dw   4,   3 : db $8C, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Gibo:
#_1DCF5E: LDA.w $0D90,X
#_1DCF61: BNE .am_split

#_1DCF63: LDA.w $0E40,X
#_1DCF66: PHA

;---------------------------------------------------------------------------------------------------

#_1DCF67: LDA.b #$01
#_1DCF69: STA.w $0E40,X

#_1DCF6C: LDA.w $0E00,X
#_1DCF6F: AND.b #$04
#_1DCF71: LSR A
#_1DCF72: LSR A
#_1DCF73: STA.b $00

#_1DCF75: LDA.w $0EC0,X
#_1DCF78: LSR A
#_1DCF79: LSR A
#_1DCF7A: AND.b #$03
#_1DCF7C: TAY

#_1DCF7D: LDA.w $0F50,X

#_1DCF80: PHA
#_1DCF81: LDA.w Gibo_OAMFlip,Y

#_1DCF84: LDY.b $00
#_1DCF86: ORA.w Gibo_OAMPal,Y
#_1DCF89: STA.w $0F50,X

#_1DCF8C: JSL SpriteDraw_SingleLarge_long

#_1DCF90: PLA
#_1DCF91: STA.w $0F50,X

#_1DCF94: PLA
#_1DCF95: STA.w $0E40,X

;---------------------------------------------------------------------------------------------------

.am_split
#_1DCF98: LDA.b #$00
#_1DCF9A: XBA
#_1DCF9B: LDA.w $0E80,X
#_1DCF9E: CLC
#_1DCF9F: ADC.w $0DE0,X

#_1DCFA2: REP #$20

#_1DCFA4: ASL A ; x32
#_1DCFA5: ASL A
#_1DCFA6: ASL A
#_1DCFA7: ASL A
#_1DCFA8: ASL A

#_1DCFA9: ADC.w #.oam_groups
#_1DCFAC: STA.b $08

#_1DCFAE: REP #$20

#_1DCFB0: LDA.b $90
#_1DCFB2: CLC
#_1DCFB3: ADC.w #$0008
#_1DCFB6: STA.b $90

#_1DCFB8: INC.b $92
#_1DCFBA: INC.b $92

#_1DCFBC: SEP #$20

#_1DCFBE: LDA.b #$04
#_1DCFC0: JMP.w Sprite_DrawMultiple_Bank1D

;===================================================================================================

pool Boulder

.speed_z
#_1DCFC3: db  32,  48

.speed_y
#_1DCFC5: db   8,  32

.speed_x
#_1DCFC7: db  24,  16
#_1DCFC9: db -24, -16

pool off

;===================================================================================================

Sprite_C2_Boulder:
#_1DCFCB: LDA.b $1B
#_1DCFCD: BEQ Boulder

;===================================================================================================
; From Lanmolas
;===================================================================================================
Shrapnel:
#_1DCFCF: LDA.w $0FC6
#_1DCFD2: CMP.b #$03
#_1DCFD4: BCS .bad_gfx

#_1DCFD6: JSL SpriteDraw_SingleSmall_long

.bad_gfx
#_1DCFDA: JSR Sprite_CheckIfActive_Bank1D

#_1DCFDD: LDA.b $1A
#_1DCFDF: ASL A
#_1DCFE0: ASL A
#_1DCFE1: AND.b #$C0
#_1DCFE3: ORA.b #$00 ; useless and why?
#_1DCFE5: STA.w $0F50,X

#_1DCFE8: JSR Sprite_Move_XYZ_Bank1D

#_1DCFEB: TXA
#_1DCFEC: EOR.b $1A
#_1DCFEE: AND.b #$03
#_1DCFF0: BNE .exit

;---------------------------------------------------------------------------------------------------

; !HARDCODED hitbox detection
#_1DCFF2: REP #$20

#_1DCFF4: LDA.w $0FD8
#_1DCFF7: SEC
#_1DCFF8: SBC.b $22
#_1DCFFA: CLC
#_1DCFFB: ADC.w #$0004

#_1DCFFE: CMP.w #$0010
#_1DD001: BCS .no_overlap

#_1DD003: LDA.w $0FDA
#_1DD006: SEC
#_1DD007: SBC.b $20
#_1DD009: CLC
#_1DD00A: ADC.w #$FFFC

#_1DD00D: CMP.w #$000C
#_1DD010: BCS .no_overlap

#_1DD012: SEP #$20

#_1DD014: JSL Sprite_AttemptDamageToLinkPlusRecoil_long

.no_overlap
#_1DD018: SEP #$20

; This is redundant.
; It will always fail if we get this far.
#_1DD01A: TXA
#_1DD01B: EOR.b $1A
#_1DD01D: AND.b #$03
#_1DD01F: BNE .exit

#_1DD021: JSR Sprite_CheckTileCollision_Bank1D
#_1DD024: BEQ .exit

#_1DD026: STZ.w $0DD0,X

.exit
#_1DD029: RTS

;===================================================================================================

Boulder:
#_1DD02A: LDA.b #$30
#_1DD02C: STA.w $0B89,X

#_1DD02F: JSR SpriteDraw_Boulder
#_1DD032: JSR Sprite_CheckIfActive_Bank1D

#_1DD035: LDA.w $0E80,X
#_1DD038: SEC
#_1DD039: SBC.w $0DE0,X
#_1DD03C: STA.w $0E80,X

#_1DD03F: JSR Sprite_CheckDamageToAndFromLink_Bank1D
#_1DD042: JSR Sprite_Move_XYZ_Bank1D

#_1DD045: DEC.w $0F80,X
#_1DD048: DEC.w $0F80,X

#_1DD04B: LDA.w $0F70,X
#_1DD04E: BPL .exit

#_1DD050: STZ.w $0F70,X
#_1DD053: JSR Sprite_CheckTileCollision_Bank1D

#_1DD056: LDY.b #$00

#_1DD058: LDA.w $0E70,X
#_1DD05B: BEQ .in_air

#_1DD05D: INY

.in_air
#_1DD05E: LDA.w .speed_z,Y
#_1DD061: STA.w $0F80,X

#_1DD064: LDA.w .speed_y,Y
#_1DD067: STA.w $0D40,X

#_1DD06A: JSL GetRandomNumber
#_1DD06E: AND.b #$01
#_1DD070: BEQ .bounce_right

.bounce_left
#_1DD072: INY
#_1DD073: INY

.bounce_right
#_1DD074: LDA.w .speed_x,Y
#_1DD077: STA.w $0D50,X

#_1DD07A: TYA

#_1DD07B: AND.b #$02
#_1DD07D: DEC A
#_1DD07E: STA.w $0DE0,X

#_1DD081: LDA.b #!SFX2_0B
#_1DD083: JSL SpriteSFX_QueueSFX2WithPan

.exit
#_1DD087: RTS

;===================================================================================================
pool SpriteDraw_Boulder

.oam_groups
; group00
#_1DD088: dw  -8,  -8 : db $CC, $01, $00, $02
#_1DD090: dw   8,  -8 : db $CE, $01, $00, $02
#_1DD098: dw  -8,   8 : db $EC, $01, $00, $02
#_1DD0A0: dw   8,   8 : db $EE, $01, $00, $02

; group01
#_1DD0A8: dw  -8,  -8 : db $CE, $41, $00, $02
#_1DD0B0: dw   8,  -8 : db $CC, $41, $00, $02
#_1DD0B8: dw  -8,   8 : db $EE, $41, $00, $02
#_1DD0C0: dw   8,   8 : db $EC, $41, $00, $02

; group02
#_1DD0C8: dw  -8,  -8 : db $EE, $C1, $00, $02
#_1DD0D0: dw   8,  -8 : db $EC, $C1, $00, $02
#_1DD0D8: dw  -8,   8 : db $CE, $C1, $00, $02
#_1DD0E0: dw   8,   8 : db $CC, $C1, $00, $02

; group03
#_1DD0E8: dw  -8,  -8 : db $EC, $81, $00, $02
#_1DD0F0: dw   8,  -8 : db $EE, $81, $00, $02
#_1DD0F8: dw  -8,   8 : db $CC, $81, $00, $02
#_1DD100: dw   8,   8 : db $CE, $81, $00, $02

pool off

;===================================================================================================

pool SpriteDraw_BigShadow

.oam_groups

.group00
#_1DD108: dw  -6,  19 : db $6C, $08, $00, $02
#_1DD110: dw   0,  19 : db $6C, $08, $00, $02
#_1DD118: dw   6,  19 : db $6C, $08, $00, $02

.group01
#_1DD120: dw  -5,  19 : db $6C, $08, $00, $02
#_1DD128: dw   0,  19 : db $6C, $08, $00, $02
#_1DD130: dw   5,  19 : db $6C, $08, $00, $02

.group02
#_1DD138: dw  -4,  19 : db $6C, $08, $00, $02
#_1DD140: dw   0,  19 : db $6C, $08, $00, $02
#_1DD148: dw   4,  19 : db $6C, $08, $00, $02

.group03
#_1DD150: dw  -3,  19 : db $6C, $08, $00, $02
#_1DD158: dw   0,  19 : db $6C, $08, $00, $02
#_1DD160: dw   3,  19 : db $6C, $08, $00, $02

.group04
#_1DD168: dw  -2,  19 : db $6C, $08, $00, $02
#_1DD170: dw   0,  19 : db $6C, $08, $00, $02
#_1DD178: dw   2,  19 : db $6C, $08, $00, $02

;---------------------------------------------------------------------------------------------------

.data_offset
#_1DD180: db .group00-.group00 ; $00
#_1DD181: db .group01-.group00 ; $18
#_1DD182: db .group02-.group00 ; $30
#_1DD183: db .group03-.group00 ; $48
#_1DD184: db .group04-.group00 ; $60

pool off

;===================================================================================================

SpriteDraw_Boulder:
#_1DD185: LDA.b #$00
#_1DD187: XBA
#_1DD188: LDA.w $0E80,X

#_1DD18B: LSR A
#_1DD18C: LSR A
#_1DD18D: LSR A

#_1DD18E: AND.b #$03

#_1DD190: REP #$20

#_1DD192: ASL A ; x32
#_1DD193: ASL A
#_1DD194: ASL A
#_1DD195: ASL A
#_1DD196: ASL A
#_1DD197: ADC.w #.oam_groups
#_1DD19A: STA.b $08

#_1DD19C: SEP #$20

#_1DD19E: LDA.b #$04
#_1DD1A0: JSR Sprite_DrawMultiple_Bank1D
#_1DD1A3: JSL SpriteDraw_BigShadow_with_altitude

#_1DD1A7: RTS

;===================================================================================================

SpriteDraw_BigShadow:
#_1DD1A8: PHB
#_1DD1A9: PHK
#_1DD1AA: PLB

#_1DD1AB: LDY.b #$00

#_1DD1AD: BRA .draw

;===================================================================================================

#SpriteDraw_BigShadow_with_altitude:
#_1DD1AF: PHB
#_1DD1B0: PHK
#_1DD1B1: PLB

#_1DD1B2: LDA.w $0F70,X
#_1DD1B5: LSR A
#_1DD1B6: LSR A
#_1DD1B7: LSR A
#_1DD1B8: TAY

#_1DD1B9: CPY.b #$04
#_1DD1BB: BCC .draw

#_1DD1BD: LDY.b #$04

;===================================================================================================

.draw
#_1DD1BF: LDA.w $0F70,X
#_1DD1C2: STA.b $0E
#_1DD1C4: STZ.b $0F

#_1DD1C6: LDA.w SpriteDraw_BigShadow_data_offset,Y
#_1DD1C9: STA.b $00
#_1DD1CB: STZ.b $01

#_1DD1CD: REP #$20

#_1DD1CF: LDA.w $0FDA
#_1DD1D2: CLC
#_1DD1D3: ADC.b $0E
#_1DD1D5: STA.w $0FDA

#_1DD1D8: LDA.b $90
#_1DD1DA: CLC
#_1DD1DB: ADC.w #$0010
#_1DD1DE: STA.b $90

#_1DD1E0: LDA.b $92
#_1DD1E2: CLC
#_1DD1E3: ADC.w #$0004
#_1DD1E6: STA.b $92

;---------------------------------------------------------------------------------------------------

#_1DD1E8: LDA.w #SpriteDraw_BigShadow_oam_groups
#_1DD1EB: CLC
#_1DD1EC: ADC.b $00
#_1DD1EE: STA.b $08

#_1DD1F0: SEP #$20

#_1DD1F2: LDA.b #$03
#_1DD1F4: JSR Sprite_DrawMultiple_Bank1D
#_1DD1F7: JSL Sprite_Get16BitCoords_long

#_1DD1FB: PLB

#_1DD1FC: RTL

;===================================================================================================

CutsceneAgahnim_SpawnZeldaOnAltar:
#_1DD1FD: LDA.w $0D10,X ; right 8 pixels
#_1DD200: CLC
#_1DD201: ADC.b #$08
#_1DD203: STA.w $0D10,X

#_1DD206: LDA.w $0D00,X ; down 6 pixels
#_1DD209: CLC
#_1DD20A: ADC.b #$06
#_1DD20C: STA.w $0D00,X

#_1DD20F: LDA.b #!SPRITE_C1 ; Zelda
#_1DD211: JSL Sprite_SpawnDynamically

#_1DD215: LDA.b #$01
#_1DD217: STA.w $0D90,Y ; flag as zelda
#_1DD21A: STA.w $0BA0,Y ; immune to ancillae

#_1DD21D: JSL Sprite_SetSpawnedCoordinates

#_1DD221: LDA.b $02 ; move Zelda down 40 pixels
#_1DD223: CLC
#_1DD224: ADC.b #$28
#_1DD226: STA.w $0D00,Y

#_1DD229: LDA.b #$00 ; set Zelda's OAM
#_1DD22B: STA.w $0E40,Y

#_1DD22E: LDA.b #$0C
#_1DD230: STA.w $0F50,Y

#_1DD233: RTL

;===================================================================================================

Sprite_C1_CutsceneAgahnim:
#_1DD234: LDA.w $0D90,X
#_1DD237: JSL JumpTableLocal
#_1DD23B: dw CutsceneAgahnim_Agahnim
#_1DD23D: dw CutsceneAgahnim_Zelda

;===================================================================================================

CutsceneAgahnim_Agahnim:
#_1DD23F: LDA.w $0DB0,X
#_1DD242: BEQ .real_aga

#_1DD244: LDA.w $0DF0,X
#_1DD247: BNE .stay_alive

#_1DD249: STZ.w $0DD0,X

.stay_alive
#_1DD24C: AND.b #$01
#_1DD24E: BNE .exit

#_1DD250: JSR CutsceneAgahnim_Draw_Agahnim

.exit
#_1DD253: RTS

;---------------------------------------------------------------------------------------------------

.real_aga
#_1DD254: JSR CutsceneAgahnim_Draw_Agahnim
#_1DD257: JSR SpriteDraw_CutsceneAgahnimSpell

; This keeps Agahnim in his pre-cutscene state while the game is paused
; Once he's unpaused
#_1DD25A: LDA.w $0F00,X
#_1DD25D: BEQ .not_paused

#_1DD25F: STZ.w $0D80,X
#_1DD262: STZ.w $0DA0,X
#_1DD265: STZ.w $0DC0,X

#_1DD268: LDA.b #$40
#_1DD26A: STA.w $0DF0,X

.not_paused
#_1DD26D: JSR Sprite_CheckIfActive_Bank1D

#_1DD270: LDA.w $0D80,X
#_1DD273: JSL JumpTableLocal
#_1DD277: dw CutsceneAgahnim_HelloMyNameIs
#_1DD279: dw CutsceneAgahnim_LightAsAFeatherStiffAsABoard
#_1DD27B: dw CutsceneAgahnim_BanishZelda
#_1DD27D: dw CutsceneAgahnim_MadeHerGoPoof
#_1DD27F: dw CutsceneAgahnim_Brag
#_1DD281: dw CutsceneAgahnim_HideBehindCurtain
#_1DD283: dw CutsceneAgahnim_ExistNoMore

;===================================================================================================

CutsceneAgahnim_HelloMyNameIs:
#_1DD285: LDA.w $0DF0,X
#_1DD288: BNE .exit

#_1DD28A: LDA.b #$01 ; enable cutscene
#_1DD28C: STA.w $02E4

; Message 013B
#_1DD28F: LDA.b #$3B
#_1DD291: STA.w $1CF0

#_1DD294: LDA.b #$01
#_1DD296: STA.w $1CF1

#_1DD299: JSL Sprite_ShowMessageMinimal

#_1DD29D: INC.w $0D80,X

.exit
#_1DD2A0: RTS

;===================================================================================================
; Lift Zelda up
;===================================================================================================
pool CutsceneAgahnim_LightAsAFeatherStiffAsABoard

.pose
#_1DD2A1: db $02, $00, $03, $00

pool off

;---------------------------------------------------------------------------------------------------

CutsceneAgahnim_LightAsAFeatherStiffAsABoard:
#_1DD2A5: INC.w $0DA0,X

#_1DD2A8: LDA.w $0DA0,X
#_1DD2AB: PHA ; save actual timer

#_1DD2AC: LSR A ; get bits 5 and 6 as an index
#_1DD2AD: LSR A
#_1DD2AE: LSR A
#_1DD2AF: LSR A
#_1DD2B0: LSR A
#_1DD2B1: AND.b #$03

#_1DD2B3: TAY
#_1DD2B4: LDA.w .pose,Y

; WARNING: HARDCODED index ahead
#_1DD2B7: LDY.w $0F7F ; once Zelda reaches 16 pixels, keep arms up
#_1DD2BA: CPY.b #$10
#_1DD2BC: BCC .use_indexed_pose

#_1DD2BE: LDA.b #$01

.use_indexed_pose
#_1DD2C0: STA.w $0DC0,X

#_1DD2C3: PLA ; lift zelda up every 16 frames
#_1DD2C4: AND.b #$0F
#_1DD2C6: BNE .done

#_1DD2C8: LDA.b #$01 ; limp pose
#_1DD2CA: STA.w $0DCF

#_1DD2CD: INC.w $0F7F ; max height of zelda

#_1DD2D0: LDA.w $0F7F
#_1DD2D3: CMP.b #$16
#_1DD2D5: BNE .done

;---------------------------------------------------------------------------------------------------

#_1DD2D7: LDY.b #!SFX3_27 ; vwvwvwvwvwvwvw
#_1DD2D9: STY.w $012F

#_1DD2DC: INC.w $0D80,X

#_1DD2DF: LDA.b #$FF
#_1DD2E1: STA.w $0DF0,X

#_1DD2E4: LDA.b #$02 ; this controls the spell animation
#_1DD2E6: STA.w $0E80,X

#_1DD2E9: LDA.b #$FF
#_1DD2EB: STA.w $0E30,X

.done
#_1DD2EE: RTS

;===================================================================================================

CutsceneAgahnim_BanishZelda:
#_1DD2EF: LDA.w $0DF0,X
#_1DD2F2: BEQ .next_ai

#_1DD2F4: CMP.b #$78
#_1DD2F6: BEQ .start_flashing

#_1DD2F8: CMP.b #$80
#_1DD2FA: BCS .exit

#_1DD2FC: AND.b #$03 ; play sfx every 4 frames a few times
#_1DD2FE: BNE .exit

;---------------------------------------------------------------------------------------------------

#_1DD300: LDA.b #!SFX3_2B ; vwvwvwvwvwvwvwvwvwvwvwvwvwvwvwvwvwvwvwvwvw
#_1DD302: STA.w $012F

#_1DD305: LDA.w $0E80,X
#_1DD308: CMP.b #$0E
#_1DD30A: BEQ .exit

#_1DD30C: CLC
#_1DD30D: ADC.b #$04
#_1DD30F: STA.w $0E80,X

.exit
#_1DD312: RTS

;---------------------------------------------------------------------------------------------------

.start_flashing
#_1DD313: LDA.b #120 ; set flash timer to 2 seconds
#_1DD315: STA.w $0FF9

#_1DD318: RTS

;---------------------------------------------------------------------------------------------------

.next_ai
#_1DD319: INC.w $0D80,X

#_1DD31C: LDA.b #$50
#_1DD31E: STA.w $0DF0,X

#_1DD321: RTS

;===================================================================================================

CutsceneAgahnim_MadeHerGoPoof:
#_1DD322: LDA.w $0DF0,X
#_1DD325: BEQ .she_gone

#_1DD327: AND.b #$03
#_1DD329: BNE .exit

#_1DD32B: LDA.w $0E30,X

#_1DD32E: CMP.b #$09
#_1DD330: BEQ .exit

#_1DD332: CLC
#_1DD333: ADC.b #$02
#_1DD335: STA.w $0E30,X

#_1DD338: RTS

;---------------------------------------------------------------------------------------------------

; !HARDCODED slots
.she_gone
#_1DD339: LDA.b #$13
#_1DD33B: STA.w $0DFF

#_1DD33E: INC.w $0D80,X

#_1DD341: LDA.b #$50
#_1DD343: STA.w $0DF0,X

#_1DD346: STZ.w $0E80,X

#_1DD349: LDA.b #!SFX2_33
#_1DD34B: STA.w $012E

.exit
#_1DD34E: RTS

;===================================================================================================

CutsceneAgahnim_Brag:
#_1DD34F: LDA.w $0DF0,X
#_1DD352: BNE .exit

; Message 013C
#_1DD354: LDA.b #$3C
#_1DD356: STA.w $1CF0

#_1DD359: LDA.b #$01
#_1DD35B: STA.w $1CF1

#_1DD35E: JSL Sprite_ShowMessageMinimal

#_1DD362: INC.w $0D80,X

#_1DD365: LDA.b #$02
#_1DD367: STA.w $0DF0,X

.exit
#_1DD36A: RTS

;===================================================================================================

CutsceneAgahnim_HideBehindCurtain:
#_1DD36B: LDA.w $0DF0,X
#_1DD36E: DEC A
#_1DD36F: BNE .no_sfx

#_1DD371: LDA.b #!SFX3_28
#_1DD373: STA.w $012F

;---------------------------------------------------------------------------------------------------

.no_sfx
#_1DD376: LDA.b #$E0
#_1DD378: STA.w $0D40,X

#_1DD37B: JSR Sprite_Move_Y_Bank1D

#_1DD37E: LDA.w $0D00,X
#_1DD381: CMP.b #$30
#_1DD383: BCS .blurred_lines

#_1DD385: LDA.b #$42
#_1DD387: STA.w $0F10,X

#_1DD38A: INC.w $0D80,X

;---------------------------------------------------------------------------------------------------

.blurred_lines
#_1DD38D: JSL Agahnim_ApplyMotionBlur

#_1DD391: RTS

;===================================================================================================
; Actually, this routine spawns a transparent Agahnim sprite.
;===================================================================================================
Agahnim_ApplyMotionBlur:
#_1DD392: LDY.b #$FF

#_1DD394: LDA.b $1A
#_1DD396: AND.b #$03
#_1DD398: BNE .deny_filter

#_1DD39A: LDA.b #!SPRITE_C1
#_1DD39C: JSL Sprite_SpawnDynamically
#_1DD3A0: BMI .deny_filter

#_1DD3A2: JSL Sprite_SetSpawnedCoordinates

#_1DD3A6: LDA.w $0DC0,X
#_1DD3A9: STA.w $0DC0,Y

#_1DD3AC: LDA.b #$20
#_1DD3AE: STA.w $0DF0,Y
#_1DD3B1: STA.w $0BA0,Y
#_1DD3B4: STA.w $0DB0,Y

.deny_filter
#_1DD3B7: TYA

#_1DD3B8: RTL

;===================================================================================================

CutsceneAgahnim_ExistNoMore:
#_1DD3B9: LDA.w $0F10,X
#_1DD3BC: BNE .exist_more

; disable cutscene flag
#_1DD3BE: STZ.w $02E4

; die
#_1DD3C1: STZ.w $0DD0,X

#_1DD3C4: JSL Sprite_ManuallySetDeathFlagUW

; set room flag
#_1DD3C8: LDA.w $0403
#_1DD3CB: ORA.b #$40
#_1DD3CD: STA.w $0403

.exist_more
#_1DD3D0: RTS

;===================================================================================================

CutsceneAgahnim_Draw_Agahnim_oam_groups:
; group00
#_1DD3D1: dw  -8,  -8 : db $82, $0B, $00, $02
#_1DD3D9: dw   8,  -8 : db $82, $4B, $00, $02
#_1DD3E1: dw  -8,   8 : db $A2, $0B, $00, $02
#_1DD3E9: dw   8,   8 : db $A2, $4B, $00, $02

; group01
#_1DD3F1: dw  -8,  -8 : db $80, $0B, $00, $02
#_1DD3F9: dw   8,  -8 : db $80, $4B, $00, $02
#_1DD401: dw  -8,   8 : db $A0, $0B, $00, $02
#_1DD409: dw   8,   8 : db $A0, $4B, $00, $02

; group02
#_1DD411: dw  -8,  -8 : db $80, $0B, $00, $02
#_1DD419: dw   8,  -8 : db $82, $4B, $00, $02
#_1DD421: dw  -8,   8 : db $A0, $0B, $00, $02
#_1DD429: dw   8,   8 : db $A2, $4B, $00, $02

; group03
#_1DD431: dw  -8,  -8 : db $82, $0B, $00, $02
#_1DD439: dw   8,  -8 : db $80, $4B, $00, $02
#_1DD441: dw  -8,   8 : db $A2, $0B, $00, $02
#_1DD449: dw   8,   8 : db $A0, $4B, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

CutsceneAgahnim_Draw_Agahnim:
#_1DD451: LDA.w $0F10,X
#_1DD454: AND.b #$01
#_1DD456: BNE .exit

#_1DD458: LDA.w $0DB0,X
#_1DD45B: STA.b $00
#_1DD45D: STZ.b $01

#_1DD45F: LDA.b #$00
#_1DD461: XBA
#_1DD462: LDA.w $0DC0,X

#_1DD465: REP #$20

#_1DD467: ASL A ; x32
#_1DD468: ASL A
#_1DD469: ASL A
#_1DD46A: ASL A
#_1DD46B: ASL A
#_1DD46C: ADC.w #.oam_groups
#_1DD46F: STA.b $08

#_1DD471: LDA.b $00
#_1DD473: BNE .use_allotted_oam

;---------------------------------------------------------------------------------------------------

; !HARDCODED oam slots
#_1DD475: LDA.w #$0900
#_1DD478: STA.b $90

#_1DD47A: LDA.w #$0A60
#_1DD47D: STA.b $92

;---------------------------------------------------------------------------------------------------

.use_allotted_oam
#_1DD47F: SEP #$20

#_1DD481: LDA.b #$04
#_1DD483: JSR Sprite_DrawMultiple_Bank1D

#_1DD486: LDA.b #$12
#_1DD488: JSL SpriteDraw_Shadow_custom_long

.exit
#_1DD48C: RTS

;===================================================================================================

pool SpriteDraw_CutsceneAgahnimSpell

.oam_groups
; group00
#_1DD48D: db -10, -16, $CE, $06
#_1DD491: db  18, -16, $CE, $06
#_1DD495: db  20, -13, $26, $06
#_1DD499: db  20,  -5, $36, $06
#_1DD49D: db -12, -13, $26, $46
#_1DD4A1: db -12,  -5, $36, $46
#_1DD4A5: db  18,   0, $26, $06
#_1DD4A9: db  18,   8, $36, $06
#_1DD4AD: db -10,   0, $26, $46
#_1DD4B1: db -10,   8, $36, $46
#_1DD4B5: db  -8,   0, $22, $06
#_1DD4B9: db   8,   0, $22, $46
#_1DD4BD: db  -8,  16, $22, $86
#_1DD4C1: db   8,  16, $22, $C6

; group01
#_1DD4C5: db -10, -16, $CE, $04
#_1DD4C9: db  18, -16, $CE, $04
#_1DD4CD: db  20, -13, $26, $44
#_1DD4D1: db  20,  -5, $36, $44
#_1DD4D5: db -12, -13, $26, $04
#_1DD4D9: db -12,  -5, $36, $04
#_1DD4DD: db  18,   0, $26, $44
#_1DD4E1: db  18,   8, $36, $44
#_1DD4E5: db -10,   0, $26, $04
#_1DD4E9: db -10,   8, $36, $04
#_1DD4ED: db  -8,   0, $20, $04
#_1DD4F1: db   8,   0, $20, $44
#_1DD4F5: db  -8,  16, $20, $84
#_1DD4F9: db   8,  16, $20, $C4

;---------------------------------------------------------------------------------------------------

.oam_sizes
#_1DD4FD: db $00
#_1DD4FE: db $00
#_1DD4FF: db $00
#_1DD500: db $00
#_1DD501: db $00
#_1DD502: db $00
#_1DD503: db $00
#_1DD504: db $00
#_1DD505: db $00
#_1DD506: db $00
#_1DD507: db $02
#_1DD508: db $02
#_1DD509: db $02
#_1DD50A: db $02

;---------------------------------------------------------------------------------------------------

.oam_offset
#_1DD50B: db $00
#_1DD50C: db $04
#_1DD50D: db $08
#_1DD50E: db $0C
#_1DD50F: db $10
#_1DD510: db $14
#_1DD511: db $18
#_1DD512: db $1C
#_1DD513: db $20
#_1DD514: db $24
#_1DD515: db $28

pool off

;===================================================================================================

SpriteDraw_CutsceneAgahnimSpell:
#_1DD516: LDA.b #$38
#_1DD518: JSL OAM_AllocateFromRegionA

#_1DD51C: LDA.b $1A
#_1DD51E: LSR A
#_1DD51F: LSR A

#_1DD520: REP #$20

#_1DD522: LDA.w #.oam_groups
#_1DD525: BCS .frame_0

#_1DD527: ADC.w #$0038

;---------------------------------------------------------------------------------------------------

.frame_0
#_1DD52A: STA.b $08

#_1DD52C: LDA.w #.oam_sizes
#_1DD52F: STA.b $0A

#_1DD531: SEP #$20

#_1DD533: LDA.w $0E80,X
#_1DD536: BEQ .exit

#_1DD538: LDY.w $0E30,X
#_1DD53B: STY.b $0D

#_1DD53D: PHX

#_1DD53E: DEC A
#_1DD53F: TAX

#_1DD540: INY

;---------------------------------------------------------------------------------------------------

#_1DD541: LDA.w .oam_offset,Y
#_1DD544: TAY

.next_object
#_1DD545: LDA.b $00
#_1DD547: CLC
#_1DD548: ADC.b ($08),Y
#_1DD54A: STA.b ($90),Y

#_1DD54C: LDA.b $02
#_1DD54E: CLC
#_1DD54F: ADC.b #$F8
#_1DD551: CLC

#_1DD552: INY
#_1DD553: ADC.b ($08),Y
#_1DD555: STA.b ($90),Y

#_1DD557: INY
#_1DD558: LDA.b ($08),Y
#_1DD55A: STA.b ($90),Y

#_1DD55C: INY

#_1DD55D: LDA.b ($08),Y
#_1DD55F: ORA.b #$31
#_1DD561: STA.b ($90),Y

#_1DD563: PHY

#_1DD564: TYA
#_1DD565: LSR A
#_1DD566: LSR A
#_1DD567: TAY

; A is about to be read from something else anyway
#_1DD568: LDA.b #$00
#_1DD56A: CPX.b #$04
#_1DD56C: BCS .pointless

#_1DD56E: LDA.b #$02

.pointless
; wtf? why is this an indirect read?
; juse use the actual address
#_1DD570: LDA.b ($0A),Y
#_1DD572: STA.b ($92),Y

#_1DD574: PLY
#_1DD575: INY

#_1DD576: DEX
#_1DD577: CPX.b $0D
#_1DD579: BNE .next_object

;---------------------------------------------------------------------------------------------------

#_1DD57B: PLX

.exit
#_1DD57C: RTS

;===================================================================================================

CutsceneAgahnim_Zelda:
#_1DD57D: JSR .dumb ; why?

#_1DD580: RTS

;---------------------------------------------------------------------------------------------------

.oam_groups
; group00
#_1DD581: dw  -4,   0 : db $03, $01, $00, $02
#_1DD589: dw   4,   0 : db $04, $01, $00, $02

; group01
#_1DD591: dw  -4,   0 : db $00, $01, $00, $02
#_1DD599: dw   4,   0 : db $01, $01, $00, $02

;---------------------------------------------------------------------------------------------------

.dumb
#_1DD5A1: LDA.w $0DF0,X
#_1DD5A4: BEQ .draw

#_1DD5A6: PHA
#_1DD5A7: JSR SpriteDraw_AltarZeldaWarp
#_1DD5AA: PLA

#_1DD5AB: CMP.b #$01
#_1DD5AD: BNE .stay_alive

#_1DD5AF: STZ.w $0DD0,X

;---------------------------------------------------------------------------------------------------

.stay_alive
#_1DD5B2: CMP.b #$0C
#_1DD5B4: BCS .draw

#_1DD5B6: RTS

;===================================================================================================

.draw
#_1DD5B7: LDA.b #$08
#_1DD5B9: JSL OAM_AllocateFromRegionA

#_1DD5BD: LDA.b #$00
#_1DD5BF: XBA
#_1DD5C0: LDA.w $0DC0,X

#_1DD5C3: REP #$20

#_1DD5C5: ASL A ; x16
#_1DD5C6: ASL A
#_1DD5C7: ASL A
#_1DD5C8: ASL A

#_1DD5C9: ADC.w #.oam_groups
#_1DD5CC: STA.b $08

#_1DD5CE: SEP #$20

#_1DD5D0: LDA.b #$02

#_1DD5D2: JSR Sprite_DrawMultiple_Bank1D

; using sublabels makes my life easier here
#_1DD5D5: JSR .draw_body

#_1DD5D8: RTS

;===================================================================================================

.offset
#_1DD5D9: db 4, 4, 3, 3, 2, 2, 1, 1
#_1DD5E1: db 0, 0, 0, 0, 0, 0, 0, 0

;---------------------------------------------------------------------------------------------------

.draw_body
#_1DD5E9: LDA.b #$08
#_1DD5EB: JSL OAM_AllocateFromRegionA

; they could have saved 8 bytes if they used CMP.b #$0F
#_1DD5EF: LDA.w $0F70,X
#_1DD5F2: CMP.b #$1F
#_1DD5F4: BCC .not_max_height

#_1DD5F6: LDA.b #$1F

;---------------------------------------------------------------------------------------------------

.not_max_height
#_1DD5F8: LSR A
#_1DD5F9: TAY

#_1DD5FA: LDA.w .offset,Y
#_1DD5FD: STA.b $07

#_1DD5FF: LDA.w $0D00,X
#_1DD602: SEC
#_1DD603: SBC.b $E8
#_1DD605: STA.b $02

#_1DD607: LDA.w $0D20,X
#_1DD60A: SBC.b $E9
#_1DD60C: STA.b $03

#_1DD60E: LDY.b #$00

#_1DD610: LDA.b $00
#_1DD612: PHA

#_1DD613: CLC
#_1DD614: ADC.b $07
#_1DD616: STA.b ($90),Y

#_1DD618: PLA
#_1DD619: SEC
#_1DD61A: SBC.b $07

#_1DD61C: LDY.b #$04
#_1DD61E: STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

#_1DD620: REP #$20

#_1DD622: LDA.b $02
#_1DD624: CLC
#_1DD625: ADC.w #$0007

#_1DD628: LDY.b #$01
#_1DD62A: STA.b ($90),Y

#_1DD62C: LDY.b #$05
#_1DD62E: STA.b ($90),Y

#_1DD630: CLC
#_1DD631: ADC.w #$0010
#_1DD634: CMP.w #$0100

;---------------------------------------------------------------------------------------------------

#_1DD637: SEP #$20
#_1DD639: BCC .on_screen

#_1DD63B: LDA.b #$F0
#_1DD63D: STA.b ($90),Y

#_1DD63F: LDY.b #$01
#_1DD641: STA.b ($90),Y

.on_screen
#_1DD643: LDA.b #$6C
#_1DD645: LDY.b #$02
#_1DD647: STA.b ($90),Y

#_1DD649: LDY.b #$06
#_1DD64B: STA.b ($90),Y

#_1DD64D: LDA.b #$24
#_1DD64F: LDY.b #$03
#_1DD651: STA.b ($90),Y

#_1DD653: LDY.b #$07
#_1DD655: STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

#_1DD657: LDA.b #$02

#_1DD659: LDY.b #$00
#_1DD65B: STA.b ($92),Y

#_1DD65D: INY
#_1DD65E: STA.b ($92),Y

#_1DD660: RTS

;===================================================================================================

pool SpriteDraw_AltarZeldaWarp

.oam_groups
; group00
#_1DD661: dw   4,   4 : db $80, $04, $00, $00
#_1DD669: dw   4,   4 : db $80, $04, $00, $00

; group01
#_1DD671: dw   4,   4 : db $B7, $04, $00, $00
#_1DD679: dw   4,   4 : db $B7, $04, $00, $00

; group02
#_1DD681: dw  -6,   0 : db $24, $05, $00, $02
#_1DD689: dw   6,   0 : db $24, $45, $00, $02

; group03
#_1DD691: dw  -8,   0 : db $24, $05, $00, $02
#_1DD699: dw   8,   0 : db $24, $45, $00, $02

; group04
#_1DD6A1: dw   0,   0 : db $C6, $05, $00, $02
#_1DD6A9: dw   0,   0 : db $C6, $05, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_AltarZeldaWarp:
#_1DD6B1: LDA.b #$08
#_1DD6B3: JSL OAM_AllocateFromRegionA

#_1DD6B7: LDA.b #$00
#_1DD6B9: XBA

#_1DD6BA: LDA.w $0DF0,X
#_1DD6BD: LSR A
#_1DD6BE: LSR A

#_1DD6BF: REP #$20

#_1DD6C1: ASL A ; effectively x32
#_1DD6C2: ASL A
#_1DD6C3: ASL A
#_1DD6C4: ASL A

#_1DD6C5: ADC.w #.oam_groups
#_1DD6C8: STA.b $08

#_1DD6CA: SEP #$20

#_1DD6CC: LDA.b #$02
#_1DD6CE: JMP.w Sprite_DrawMultiple_Bank1D

;===================================================================================================

SpritePrep_Moldorm:
#_1DD6D1: PHX
#_1DD6D2: TXY

#_1DD6D3: LDX.b #$7F

.next_segment
#_1DD6D5: LDA.w $0D10,Y
#_1DD6D8: STA.l $7FFC00,X

#_1DD6DC: LDA.w $0D30,Y
#_1DD6DF: STA.l $7FFC80,X

#_1DD6E3: LDA.w $0D00,Y
#_1DD6E6: STA.l $7FFD00,X

#_1DD6EA: LDA.w $0D20,Y
#_1DD6ED: STA.l $7FFD80,X

#_1DD6F1: DEX
#_1DD6F2: BPL .next_segment

;---------------------------------------------------------------------------------------------------

#_1DD6F4: PLX


#_1DD6F5: RTL

;===================================================================================================

Sprite_09_Moldorm:
#_1DD6F6: PHB
#_1DD6F7: PHK
#_1DD6F8: PLB

#_1DD6F9: JSR .main

#_1DD6FC: PLB

#_1DD6FD: RTL

;---------------------------------------------------------------------------------------------------

.speed_x
#_1DD6FE: db  24,  22,  17,   9,   0,  -9, -17, -22
#_1DD706: db -24, -22, -17,  -9,   0,   9,  17,  22
#_1DD70E: db  36,  33,  25,  13,   0, -13, -25, -33
#_1DD716: db -36, -33, -25, -13,   0,  13,  25,  33

.speed_y
#_1DD71E: db   0,   9,  17,  22,  24,  22,  17,   9
#_1DD726: db   0,  -9, -17, -22, -24, -22, -17,  -9
#_1DD72E: db   0,  13,  25,  33,  36,  33,  25,  13
#_1DD736: db   0, -13, -25, -33, -36, -33, -25, -13

.direction
#_1DD73E: db   8,   9,  10,  11,  12,  13,  14,  15
#_1DD746: db   0,   1,   2,   3,   4,   5,   6,   7

;---------------------------------------------------------------------------------------------------

.main
#_1DD74E: JSR SpriteDraw_Moldorm
#_1DD751: JSR Sprite_CheckIfActive_Bank1D

#_1DD754: LDA.w $0D80,X
#_1DD757: CMP.b #$03
#_1DD759: BNE .dont_explode

#_1DD75B: JMP.w Moldorm_Explode

;===================================================================================================

.dont_explode
#_1DD75E: JSL Sprite_CheckDamageFromLink_long

#_1DD762: LDA.b #$07

; frenzy mode at 3 hp left
#_1DD764: LDY.w $0E50,X
#_1DD767: CPY.b #$03
#_1DD769: BCS .dont_frenzy

#_1DD76B: INC.w $0E80,X
#_1DD76E: LDA.b #$03

;---------------------------------------------------------------------------------------------------

.dont_frenzy
#_1DD770: INC.w $0E80,X
#_1DD773: AND.b $1A
#_1DD775: BNE .no_sfx

#_1DD777: LDA.b #!SFX3_31
#_1DD779: JSL SpriteSFX_QueueSFX3WithPan

;---------------------------------------------------------------------------------------------------

.no_sfx
#_1DD77D: LDA.w $0EA0,X
#_1DD780: BEQ .not_stunned

#_1DD782: LDA.b #$40
#_1DD784: STA.w $0E10,X

#_1DD787: LDA.b $1A
#_1DD789: AND.b #$03
#_1DD78B: BNE .delay_stun_tick

#_1DD78D: DEC.w $0EA0,X

.delay_stun_tick
#_1DD790: RTS

;---------------------------------------------------------------------------------------------------

.not_stunned
#_1DD791: LDA.b $46
#_1DD793: BNE .no_bounce_back

#_1DD795: JSL Sprite_CheckDamageToLink_long
#_1DD799: BCC .no_bounce_back

;---------------------------------------------------------------------------------------------------

#_1DD79B: JSL Link_CancelDash_long

#_1DD79F: LDA.b #$28
#_1DD7A1: JSL Sprite_ProjectSpeedTowardsLink_long

#_1DD7A5: LDA.b $00
#_1DD7A7: STA.b $27

#_1DD7A9: LDA.b $01
#_1DD7AB: STA.b $28

#_1DD7AD: LDA.b #$18
#_1DD7AF: STA.b $46

#_1DD7B1: LDA.b #$30
#_1DD7B3: STA.w $0E00,X

#_1DD7B6: LDA.b #!SFX3_32
#_1DD7B8: JSL Sprite_CalculateSFXPan
#_1DD7BC: STA.w $012F

;---------------------------------------------------------------------------------------------------

.no_bounce_back
#_1DD7BF: LDY.w $0DE0,X

#_1DD7C2: LDA.w $0E50,X
#_1DD7C5: CMP.b #$03
#_1DD7C7: BCS .slow_mode

#_1DD7C9: TYA
#_1DD7CA: CLC
#_1DD7CB: ADC.b #$10
#_1DD7CD: TAY

.slow_mode
#_1DD7CE: LDA.w .speed_x,Y
#_1DD7D1: STA.w $0D50,X

#_1DD7D4: LDA.w .speed_y,Y
#_1DD7D7: STA.w $0D40,X

;---------------------------------------------------------------------------------------------------

#_1DD7DA: JSR Sprite_Move_XY_Bank1D
#_1DD7DD: JSR Sprite_CheckTileCollision_Bank1D
#_1DD7E0: BEQ .no_tile_collision

#_1DD7E2: LDY.w $0DE0,X
#_1DD7E5: LDA.w .direction,Y
#_1DD7E8: STA.w $0DE0,X

#_1DD7EB: LDA.b #!SFX2_21
#_1DD7ED: JSL SpriteSFX_QueueSFX2WithPan

.no_tile_collision
#_1DD7F1: LDA.w $0D80,X
#_1DD7F4: JSL JumpTableLocal
#_1DD7F8: dw Moldorm_Move
#_1DD7FA: dw Moldorm_Turn
#_1DD7FC: dw Moldorm_Charge

;===================================================================================================

Moldorm_Move:
#_1DD7FE: LDA.w $0DF0,X
#_1DD801: BNE .exit

#_1DD803: LDA.b #$01

; counts number of movements
#_1DD805: INC.w $0ED0,X
#_1DD808: LDY.w $0ED0,X

; chase link every 4th move
#_1DD80B: CPY.b #$03
#_1DD80D: BNE .turn_next_move

#_1DD80F: STZ.w $0ED0,X

#_1DD812: LDA.b #$02

;---------------------------------------------------------------------------------------------------

.turn_next_move
#_1DD814: STA.w $0D80,X

#_1DD817: JSL GetRandomNumber
#_1DD81B: AND.b #$02

#_1DD81D: DEC A
#_1DD81E: STA.w $0EB0,X

#_1DD821: JSL GetRandomNumber
#_1DD825: AND.b #$1F
#_1DD827: ADC.b #$20
#_1DD829: STA.w $0DF0,X

.exit
#_1DD82C: RTS

;===================================================================================================

Moldorm_Turn:
#_1DD82D: LDA.w $0DF0,X
#_1DD830: BNE .delay

#_1DD832: JSL GetRandomNumber
#_1DD836: AND.b #$0F
#_1DD838: ADC.b #$08
#_1DD83A: STA.w $0DF0,X

; move straight now
#_1DD83D: STZ.w $0D80,X

#_1DD840: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_1DD841: AND.b #$03
#_1DD843: BNE .exit

#_1DD845: LDA.w $0DE0,X
#_1DD848: CLC
#_1DD849: ADC.w $0EB0,X
#_1DD84C: AND.b #$0F
#_1DD84E: STA.w $0DE0,X

.exit
#_1DD851: RTS

;===================================================================================================

Moldorm_Charge:
#_1DD852: TXA
#_1DD853: EOR.b $1A
#_1DD855: AND.b #$03
#_1DD857: BNE .exit

#_1DD859: LDA.b #$1F
#_1DD85B: JSL Sprite_ApplySpeedTowardsLink_long

#_1DD85F: JSL Sprite_ConvertVelocityToAngle
#_1DD863: CMP.w $0DE0,X
#_1DD866: BNE .adjust_angle

#_1DD868: STZ.w $0D80,X

#_1DD86B: LDA.b #$30
#_1DD86D: STA.w $0DF0,X

#_1DD870: RTS

;---------------------------------------------------------------------------------------------------

.adjust_angle
#_1DD871: PHP

#_1DD872: LDA.w $0DE0,X

#_1DD875: PLP
#_1DD876: BMI .backwards

; +2 so the -1 is a net +1
#_1DD878: INC A
#_1DD879: INC A

.backwards
#_1DD87A: DEC A
#_1DD87B: AND.b #$0F
#_1DD87D: STA.w $0DE0,X

.exit
#_1DD880: RTS

;===================================================================================================

SpriteDraw_Moldorm:
#_1DD881: JSR Sprite_PrepOAMCoord_Bank1D

#_1DD884: LDA.b #$0B
#_1DD886: STA.w $0F50,X

#_1DD889: JSR SpriteDraw_Moldorm_Eyeballs

#_1DD88C: REP #$20

#_1DD88E: LDA.b $90
#_1DD890: CLC
#_1DD891: ADC.w #$0008
#_1DD894: STA.b $90

#_1DD896: INC.b $92
#_1DD898: INC.b $92

;---------------------------------------------------------------------------------------------------

#_1DD89A: SEP #$20

#_1DD89C: PHX
#_1DD89D: TXY

#_1DD89E: LDA.w $0E80,X
#_1DD8A1: AND.b #$7F
#_1DD8A3: TAX

#_1DD8A4: LDA.w $0D10,Y
#_1DD8A7: STA.l $7FFC00,X

#_1DD8AB: LDA.w $0D00,Y
#_1DD8AE: STA.l $7FFD00,X

#_1DD8B2: LDA.w $0D30,Y
#_1DD8B5: STA.l $7FFC80,X

#_1DD8B9: LDA.w $0D20,Y
#_1DD8BC: STA.l $7FFD80,X

#_1DD8C0: PLX

#_1DD8C1: JSR SpriteDraw_Moldorm_Head

;---------------------------------------------------------------------------------------------------

#_1DD8C4: LDA.w $0DA0,X
#_1DD8C7: CMP.b #$04
#_1DD8C9: BCS .skip_segment

#_1DD8CB: JSR SpriteDraw_Moldorm_SegmentA

;---------------------------------------------------------------------------------------------------

#_1DD8CE: LDA.w $0DA0,X
#_1DD8D1: CMP.b #$03
#_1DD8D3: BCS .skip_segment

#_1DD8D5: JSR SpriteDraw_Moldorm_SegmentB

;---------------------------------------------------------------------------------------------------

#_1DD8D8: LDA.w $0DA0,X
#_1DD8DB: CMP.b #$02
#_1DD8DD: BCS .skip_segment

#_1DD8DF: JSR SpriteDraw_Moldorm_SegmentC

;---------------------------------------------------------------------------------------------------

#_1DD8E2: LDA.w $0DA0,X
#_1DD8E5: BNE .skip_segment

#_1DD8E7: JSR Moldorm_HandleTail

;---------------------------------------------------------------------------------------------------

.skip_segment
#_1DD8EA: JSR GiantMoldorm_IncrementalSegmentExplosion
#_1DD8ED: JSL Sprite_Get16BitCoords_long

#_1DD8F1: RTS

;===================================================================================================

GiantMoldorm_IncrementalSegmentExplosion:
#_1DD8F2: LDA.w $0DD0,X
#_1DD8F5: CMP.b #$09
#_1DD8F7: BNE .exit

#_1DD8F9: LDA.w $0F10,X
#_1DD8FC: BEQ .exit

#_1DD8FE: CMP.b #$50
#_1DD900: BCS .exit

#_1DD902: AND.b #$0F
#_1DD904: ORA.b $11
#_1DD906: ORA.w $0FC1
#_1DD909: BNE .exit

#_1DD90B: INC.w $0DA0,X

#_1DD90E: JSL MakeBossExplosion

.exit
#_1DD912: RTS

;===================================================================================================

pool SpriteDraw_Moldorm_Head

.oam_groups
; group00
#_1DD913: dw  -8,  -8 : db $80, $00, $00, $02
#_1DD91B: dw   8,  -8 : db $82, $00, $00, $02
#_1DD923: dw  -8,   8 : db $A0, $00, $00, $02
#_1DD92B: dw   8,   8 : db $A2, $00, $00, $02

; group01
#_1DD933: dw  -8,  -8 : db $82, $40, $00, $02
#_1DD93B: dw   8,  -8 : db $80, $40, $00, $02
#_1DD943: dw  -8,   8 : db $A2, $40, $00, $02
#_1DD94B: dw   8,   8 : db $A0, $40, $00, $02

; group02
#_1DD953: dw  -6,  -6 : db $80, $00, $00, $02
#_1DD95B: dw   6,  -6 : db $82, $00, $00, $02
#_1DD963: dw  -6,   6 : db $A0, $00, $00, $02
#_1DD96B: dw   6,   6 : db $A2, $00, $00, $02

; group03
#_1DD973: dw  -6,  -6 : db $82, $40, $00, $02
#_1DD97B: dw   6,  -6 : db $80, $40, $00, $02
#_1DD983: dw  -6,   6 : db $A2, $40, $00, $02
#_1DD98B: dw   6,   6 : db $A0, $40, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Moldorm_Head:
#_1DD993: LDA.b #$00
#_1DD995: XBA

#_1DD996: LDA.w $0E00,X
#_1DD999: AND.b #$02
#_1DD99B: STA.b $00

#_1DD99D: LDA.w $0E80,X
#_1DD9A0: LSR A
#_1DD9A1: AND.b #$01
#_1DD9A3: ORA.b $00

#_1DD9A5: REP #$20

#_1DD9A7: ASL A ; x32
#_1DD9A8: ASL A
#_1DD9A9: ASL A
#_1DD9AA: ASL A
#_1DD9AB: ASL A
#_1DD9AC: ADC.w #.oam_groups
#_1DD9AF: STA.b $08

#_1DD9B1: SEP #$20

#_1DD9B3: LDA.b #$04
#_1DD9B5: JMP.w Sprite_DrawMultiple_Bank1D

;===================================================================================================

pool SpriteDraw_Moldorm_LargeSegment

.oam_groups
; group00
#_1DD9B8: dw  -8,  -8 : db $84, $00, $00, $02
#_1DD9C0: dw   8,  -8 : db $86, $00, $00, $02
#_1DD9C8: dw  -8,   8 : db $A4, $00, $00, $02
#_1DD9D0: dw   8,   8 : db $A6, $00, $00, $02

; group01
#_1DD9D8: dw  -8,  -8 : db $86, $40, $00, $02
#_1DD9E0: dw   8,  -8 : db $84, $40, $00, $02
#_1DD9E8: dw  -8,   8 : db $A6, $40, $00, $02
#_1DD9F0: dw   8,   8 : db $A4, $40, $00, $02

pool off

;===================================================================================================

SpriteDraw_Moldorm_SegmentA:
#_1DD9F8: TXY

#_1DD9F9: PHX

#_1DD9FA: LDA.w $0E80,X
#_1DD9FD: SEC
#_1DD9FE: SBC.b #$10

;===================================================================================================

SpriteDraw_Moldorm_LargeSegment:
#_1DDA00: AND.b #$7F
#_1DDA02: TAX

#_1DDA03: LDA.l $7FFC00,X
#_1DDA07: STA.w $0FD8

#_1DDA0A: LDA.l $7FFC80,X
#_1DDA0E: STA.w $0FD9

#_1DDA11: LDA.l $7FFD00,X
#_1DDA15: STA.w $0FDA

#_1DDA18: LDA.l $7FFD80,X
#_1DDA1C: STA.w $0FDB

#_1DDA1F: PLX

#_1DDA20: LDA.b #$00
#_1DDA22: XBA
#_1DDA23: LDA.w $0E80,X

#_1DDA26: LSR A
#_1DDA27: AND.b #$01

#_1DDA29: REP #$20

#_1DDA2B: ASL A ; x32
#_1DDA2C: ASL A
#_1DDA2D: ASL A
#_1DDA2E: ASL A
#_1DDA2F: ASL A
#_1DDA30: ADC.w #.oam_groups
#_1DDA33: STA.b $08

#_1DDA35: REP #$20

#_1DDA37: LDA.b $90
#_1DDA39: CLC
#_1DDA3A: ADC.w #$0010
#_1DDA3D: STA.b $90

#_1DDA3F: LDA.b $92
#_1DDA41: CLC
#_1DDA42: ADC.w #$0004
#_1DDA45: STA.b $92

#_1DDA47: SEP #$20 ; useless double SEP
#_1DDA49: SEP #$20

#_1DDA4B: LDA.b #$04
#_1DDA4D: JMP.w Sprite_DrawMultiple_Bank1D

;===================================================================================================

SpriteDraw_Moldorm_SegmentB:
#_1DDA50: TXY
#_1DDA51: PHX

#_1DDA52: LDA.w $0E80,X
#_1DDA55: SEC
#_1DDA56: SBC.b #$1C

#_1DDA58: JMP.w SpriteDraw_Moldorm_LargeSegment

;===================================================================================================

pool SpriteDraw_Moldorm_SmallSegment

.flip
#_1DDA5B: db $00, $40, $C0, $80

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Moldorm_SegmentC:
#_1DDA5F: STZ.w $0DC0,X

#_1DDA62: REP #$20

#_1DDA64: LDA.b $90
#_1DDA66: CLC
#_1DDA67: ADC.w #$0010
#_1DDA6A: STA.b $90

#_1DDA6C: LDA.b $92
#_1DDA6E: CLC
#_1DDA6F: ADC.w #$0004
#_1DDA72: STA.b $92

#_1DDA74: SEP #$20

#_1DDA76: TXY

#_1DDA77: PHX

#_1DDA78: LDA.w $0E80,X
#_1DDA7B: SEC
#_1DDA7C: SBC.b #$28

;===================================================================================================

SpriteDraw_Moldorm_SmallSegment:
#_1DDA7E: AND.b #$7F
#_1DDA80: TAX

#_1DDA81: LDA.l $7FFC00,X
#_1DDA85: STA.w $0FD8

#_1DDA88: LDA.l $7FFC80,X
#_1DDA8C: STA.w $0FD9

#_1DDA8F: LDA.l $7FFD00,X
#_1DDA93: STA.w $0FDA

#_1DDA96: LDA.l $7FFD80,X
#_1DDA9A: STA.w $0FDB

#_1DDA9D: PLX

#_1DDA9E: LDA.w $0E80,X
#_1DDAA1: LSR A
#_1DDAA2: AND.b #$03
#_1DDAA4: TAY

#_1DDAA5: LDA.w $0F50,X
#_1DDAA8: PHA

#_1DDAA9: AND.b #$3F
#_1DDAAB: ORA.w .flip,Y
#_1DDAAE: STA.w $0F50,X

#_1DDAB1: JSL SpriteDraw_SingleLarge_long

#_1DDAB5: PLA
#_1DDAB6: STA.w $0F50,X

#_1DDAB9: RTS

;===================================================================================================

Moldorm_HandleTail:
#_1DDABA: JSR SpriteDraw_Moldorm_Tail

#_1DDABD: LDA.w $0E10,X
#_1DDAC0: BNE .no_damage

; reckless
; doesn't recover some values to their proper state
#_1DDAC2: LDA.b #$01
#_1DDAC4: STA.w $0D90,X

#_1DDAC7: STZ.w $0F60,X
#_1DDACA: STZ.w $0CAA,X

;---------------------------------------------------------------------------------------------------

#_1DDACD: LDA.w $0D10,X
#_1DDAD0: PHA

#_1DDAD1: LDA.w $0D30,X
#_1DDAD4: PHA

#_1DDAD5: LDA.w $0D00,X
#_1DDAD8: PHA

#_1DDAD9: LDA.w $0D20,X
#_1DDADC: PHA

;---------------------------------------------------------------------------------------------------

#_1DDADD: LDA.w $0FD8
#_1DDAE0: STA.w $0D10,X

#_1DDAE3: LDA.w $0FD9
#_1DDAE6: STA.w $0D30,X

#_1DDAE9: LDA.w $0FDA
#_1DDAEC: STA.w $0D00,X

#_1DDAEF: LDA.w $0FDB
#_1DDAF2: STA.w $0D20,X

#_1DDAF5: JSL Sprite_CheckDamageFromLink_long

#_1DDAF9: STZ.w $0D90,X

#_1DDAFC: LDA.b #$09
#_1DDAFE: STA.w $0F60,X

#_1DDB01: LDA.b #$04
#_1DDB03: STA.w $0CAA,X

;---------------------------------------------------------------------------------------------------

#_1DDB06: PLA
#_1DDB07: STA.w $0D20,X

#_1DDB0A: PLA
#_1DDB0B: STA.w $0D00,X

#_1DDB0E: PLA
#_1DDB0F: STA.w $0D30,X

#_1DDB12: PLA
#_1DDB13: STA.w $0D10,X

.no_damage
#_1DDB16: RTS

;===================================================================================================

SpriteDraw_Moldorm_Tail:
#_1DDB17: REP #$20

#_1DDB19: LDA.b $90
#_1DDB1B: CLC
#_1DDB1C: ADC.w #$0004
#_1DDB1F: STA.b $90

#_1DDB21: LDA.b $92
#_1DDB23: CLC
#_1DDB24: ADC.w #$0001
#_1DDB27: STA.b $92

#_1DDB29: SEP #$20

#_1DDB2B: INC.w $0DC0,X

#_1DDB2E: LDA.b #$0D
#_1DDB30: STA.w $0F50,X

#_1DDB33: TXY
#_1DDB34: PHX

#_1DDB35: LDA.w $0E80,X
#_1DDB38: SEC
#_1DDB39: SBC.b #$30

#_1DDB3B: JMP.w SpriteDraw_Moldorm_SmallSegment

;===================================================================================================

pool SpriteDraw_Moldorm_Eyeballs

.offset_x
#_1DDB3E: dw  16,  15,  12,   6,   0,  -6, -12, -13
#_1DDB4E: dw -16, -13, -12,  -6,   0,   6,  12,  15

.offset_y
#_1DDB5E: dw   0,   6,  12,  15,  16,  15,  12,   6
#_1DDB6E: dw   0,  -6, -12, -13, -16, -13, -12,  -6

.char
#_1DDB7E: db $AA, $AA, $A8, $A8, $8A, $8A, $A8, $A8
#_1DDB86: db $AA, $AA, $A8, $A8, $8A, $8A, $A8, $A8

.flip
#_1DDB8E: db $00, $00, $00, $00, $80, $80, $40, $40
#_1DDB96: db $40, $40, $C0, $C0, $00, $00, $80, $80

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Moldorm_Eyeballs:
#_1DDB9E: STZ.b $07

#_1DDBA0: LDA.w $0EA0,X
#_1DDBA3: BEQ .no_eye_wonk

#_1DDBA5: LDA.b $1A
#_1DDBA7: STA.b $07

.no_eye_wonk
#_1DDBA9: LDA.w $0DE0,X
#_1DDBAC: CLC
#_1DDBAD: ADC.b #$FF
#_1DDBAF: STA.b $06

#_1DDBB1: PHX

;---------------------------------------------------------------------------------------------------

#_1DDBB2: LDX.b #$01

.next_eye
#_1DDBB4: LDA.b $06
#_1DDBB6: AND.b #$0F
#_1DDBB8: ASL A

#_1DDBB9: PHX
#_1DDBBA: TAX

#_1DDBBB: REP #$20

#_1DDBBD: LDA.b $00
#_1DDBBF: CLC
#_1DDBC0: ADC.w .offset_x,X
#_1DDBC3: STA.b ($90),Y

#_1DDBC5: AND.w #$0100
#_1DDBC8: STA.b $0E

#_1DDBCA: LDA.b $02
#_1DDBCC: CLC
#_1DDBCD: ADC.w .offset_y,X
#_1DDBD0: INY
#_1DDBD1: STA.b ($90),Y

#_1DDBD3: ADC.w #$0010
#_1DDBD6: CMP.w #$0100

#_1DDBD9: SEP #$20
#_1DDBDB: BCC .on_screen

#_1DDBDD: LDA.b #$F0
#_1DDBDF: STA.b ($90),Y

.on_screen
#_1DDBE1: LDA.b $06
#_1DDBE3: CLC
#_1DDBE4: ADC.b $07

#_1DDBE6: AND.b #$0F
#_1DDBE8: TAX

#_1DDBE9: LDA.w .char,X
#_1DDBEC: INY
#_1DDBED: STA.b ($90),Y

#_1DDBEF: LDA.w .flip,X
#_1DDBF2: ORA.b $05
#_1DDBF4: INY
#_1DDBF5: STA.b ($90),Y

#_1DDBF7: PHY

#_1DDBF8: TYA
#_1DDBF9: LSR A
#_1DDBFA: LSR A
#_1DDBFB: TAY

#_1DDBFC: LDA.b $0F
#_1DDBFE: ORA.b #$02
#_1DDC00: STA.b ($92),Y

#_1DDC02: LDA.b $06
#_1DDC04: CLC
#_1DDC05: ADC.b #$02
#_1DDC07: STA.b $06

#_1DDC09: PLY
#_1DDC0A: INY

#_1DDC0B: PLX
#_1DDC0C: DEX
#_1DDC0D: BPL .next_eye

;---------------------------------------------------------------------------------------------------

#_1DDC0F: PLX

#_1DDC10: RTS

;===================================================================================================

Moldorm_Explode:
#_1DDC11: LDA.w $0F10,X
#_1DDC14: BNE .delay

;===================================================================================================

#Sprite_BossPrepareToDie:
#_1DDC16: LDA.b #$04
#_1DDC18: STA.w $0DD0,X

#_1DDC1B: STZ.w $0D90,X

#_1DDC1E: LDA.b #$E0
#_1DDC20: STA.w $0DF0,X

#_1DDC23: RTS

;===================================================================================================

.delay
#_1DDC24: ORA.b #$E0
#_1DDC26: STA.w $0EF0,X

#_1DDC29: RTS

;===================================================================================================

MakeBossExplosion:
#_1DDC2A: LDA.b #!SFX2_0C
#_1DDC2C: JSL SpriteSFX_QueueSFX2WithPan

;===================================================================================================

Trinexx_AddExplosion:
#_1DDC30: LDA.b #!SPRITE_00
#_1DDC32: JSL Sprite_SpawnDynamically
#_1DDC36: BMI .no_space

#_1DDC38: LDA.b #$0B
#_1DDC3A: STA.w $0AAA

#_1DDC3D: LDA.b #$04
#_1DDC3F: STA.w $0DD0,Y

#_1DDC42: LDA.b #$03
#_1DDC44: STA.w $0E40,Y

#_1DDC47: LDA.b #$0C
#_1DDC49: STA.w $0F50,Y

#_1DDC4C: LDA.w $0FD8
#_1DDC4F: STA.w $0D10,Y

#_1DDC52: LDA.w $0FD9
#_1DDC55: STA.w $0D30,Y

#_1DDC58: LDA.w $0FDA
#_1DDC5B: STA.w $0D00,Y

#_1DDC5E: LDA.w $0FDB
#_1DDC61: STA.w $0D20,Y

#_1DDC64: LDA.b #$1F
#_1DDC66: STA.w $0DF0,Y
#_1DDC69: STA.w $0D90,Y

#_1DDC6C: LDA.b #$02
#_1DDC6E: STA.w $0F20,Y

.no_space
#_1DDC71: RTL

;===================================================================================================

Sprite_01_Vulture:
#_1DDC72: PHB
#_1DDC73: PHK
#_1DDC74: PLB

#_1DDC75: JSR .main

#_1DDC78: PLB

#_1DDC79: RTL

;---------------------------------------------------------------------------------------------------

.main
#_1DDC7A: LDA.w $0B89,X
#_1DDC7D: ORA.b #$30
#_1DDC7F: STA.w $0B89,X

#_1DDC82: JSR SpriteDraw_Vulture

#_1DDC85: JSR Sprite_CheckIfActive_Bank1D
#_1DDC88: JSR Sprite_CheckIfRecoiling_Bank1D
#_1DDC8B: JSR Sprite_CheckDamageToAndFromLink_Bank1D

#_1DDC8E: JSR Sprite_Move_XY_Bank1D

#_1DDC91: LDA.w $0D80,X
#_1DDC94: JSL JumpTableLocal
#_1DDC98: dw Vulture_Perched
#_1DDC9A: dw Vulture_Circling

;===================================================================================================

Vulture_Perched:
#_1DDC9C: INC.w $0E80,X

#_1DDC9F: LDA.w $0E80,X
#_1DDCA2: CMP.b #$A0
#_1DDCA4: BNE .exit

#_1DDCA6: INC.w $0D80,X

#_1DDCA9: LDA.b #!SFX3_1E
#_1DDCAB: JSL SpriteSFX_QueueSFX3WithPan

#_1DDCAF: LDA.b #$10
#_1DDCB1: STA.w $0DF0,X

.exit
#_1DDCB4: RTS

;===================================================================================================

pool Vulture_Circling

.draw
#_1DDCB5: db $01, $02, $03, $02

pool off

;---------------------------------------------------------------------------------------------------

Vulture_Circling:
#_1DDCB9: LDA.b $1A
#_1DDCBB: LSR A
#_1DDCBC: AND.b #$03
#_1DDCBE: TAY

#_1DDCBF: LDA.w .draw,Y
#_1DDCC2: STA.w $0DC0,X

#_1DDCC5: LDA.w $0DF0,X
#_1DDCC8: BEQ .full_ascended

#_1DDCCA: INC.w $0F70,X

#_1DDCCD: RTS

;---------------------------------------------------------------------------------------------------

.full_ascended
#_1DDCCE: TXA
#_1DDCCF: EOR.b $1A
#_1DDCD1: AND.b #$01
#_1DDCD3: BNE .exit

; what? their speed depends on their sprite slot?
#_1DDCD5: TXA
#_1DDCD6: AND.b #$0F
#_1DDCD8: CLC
#_1DDCD9: ADC.b #$18
#_1DDCDB: JSL Sprite_ProjectSpeedTowardsLink_long

#_1DDCDF: LDA.b $00
#_1DDCE1: EOR.b #$FF
#_1DDCE3: INC A
#_1DDCE4: STA.w $0D50,X

#_1DDCE7: LDA.b $01
#_1DDCE9: STA.w $0D40,X

;---------------------------------------------------------------------------------------------------

#_1DDCEC: LDA.b $0E
#_1DDCEE: CLC
#_1DDCEF: ADC.b #$28
#_1DDCF1: CMP.b #$50
#_1DDCF3: BCS .too_far_away

#_1DDCF5: LDA.b $0F
#_1DDCF7: CLC
#_1DDCF8: ADC.b #$28
#_1DDCFA: CMP.b #$50
#_1DDCFC: BCS .too_far_away

;---------------------------------------------------------------------------------------------------

.exit
#_1DDCFE: RTS

;---------------------------------------------------------------------------------------------------

.too_far_away
#_1DDCFF: LDA.b $00

#_1DDD01: ASL.b $00

#_1DDD03: PHP
#_1DDD04: ROR A
#_1DDD05: PLP

#_1DDD06: ROR A
#_1DDD07: CLC
#_1DDD08: ADC.w $0D40,X
#_1DDD0B: STA.w $0D40,X

#_1DDD0E: LDA.b $01
#_1DDD10: ASL.b $01

#_1DDD12: PHP
#_1DDD13: ROR A
#_1DDD14: PLP

#_1DDD15: ROR A
#_1DDD16: CLC
#_1DDD17: ADC.w $0D50,X
#_1DDD1A: STA.w $0D50,X

#_1DDD1D: RTS

;===================================================================================================

pool SpriteDraw_Vulture

.oam_groups
; group00
#_1DDD1E: dw  -8,   0 : db $86, $00, $00, $02
#_1DDD26: dw   8,   0 : db $86, $40, $00, $02

; group01
#_1DDD2E: dw  -8,   0 : db $80, $00, $00, $02
#_1DDD36: dw   8,   0 : db $80, $40, $00, $02

; group02
#_1DDD3E: dw  -8,   0 : db $82, $00, $00, $02
#_1DDD46: dw   8,   0 : db $82, $40, $00, $02

; group03
#_1DDD4E: dw  -8,   0 : db $84, $00, $00, $02
#_1DDD56: dw   8,   0 : db $84, $40, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Vulture:
#_1DDD5E: LDA.b #$00
#_1DDD60: XBA
#_1DDD61: LDA.w $0DC0,X

#_1DDD64: REP #$20

#_1DDD66: ASL A ; x16
#_1DDD67: ASL A
#_1DDD68: ASL A
#_1DDD69: ASL A

#_1DDD6A: ADC.w #.oam_groups
#_1DDD6D: STA.b $08

#_1DDD6F: SEP #$20

#_1DDD71: LDA.b #$02
#_1DDD73: JSR Sprite_DrawMultiple_Bank1D
#_1DDD76: JSL SpriteDraw_Shadow_long

#_1DDD7A: RTS

;===================================================================================================

Sprite_00_Raven:
#_1DDD7B: PHB
#_1DDD7C: PHK
#_1DDD7D: PLB

#_1DDD7E: JSR .main

#_1DDD81: PLB

#_1DDD82: RTL

;---------------------------------------------------------------------------------------------------

#RavenFlip:
#_1DDD83: db $00, $40

;---------------------------------------------------------------------------------------------------

.main
#_1DDD85: LDA.w $0B89,X
#_1DDD88: ORA.b #$30
#_1DDD8A: STA.w $0B89,X

#_1DDD8D: JSL SpriteDraw_SingleLarge_long
#_1DDD91: JSR Sprite_CheckIfActive_Bank1D
#_1DDD94: JSR Sprite_CheckIfRecoiling_Bank1D
#_1DDD97: JSR Sprite_CheckDamageToAndFromLink_Bank1D
#_1DDD9A: JSR Sprite_Move_XY_Bank1D

#_1DDD9D: LDA.w $0D80,X
#_1DDDA0: JSL JumpTableLocal
#_1DDDA4: dw Raven_Perched
#_1DDDA6: dw Raven_Rise
#_1DDDA8: dw Raven_Attack
#_1DDDAA: dw Raven_Flee

;===================================================================================================

Raven_RiseTime:
#_1DDDAC: db $10, $F8

;===================================================================================================

Raven_Perched:
#_1DDDAE: JSR Sprite_IsRightOfLink_Bank1D
#_1DDDB1: JSR Raven_SetFlip

#_1DDDB4: REP #$20

#_1DDDB6: LDA.b $22
#_1DDDB8: SEC
#_1DDDB9: SBC.w $0FD8
#_1DDDBC: ADC.w #$0050
#_1DDDBF: CMP.w #$00A0
#_1DDDC2: BCS .link_not_close

#_1DDDC4: LDA.b $20
#_1DDDC6: SEC
#_1DDDC7: SBC.w $0FDA
#_1DDDCA: ADC.w #$0058
#_1DDDCD: CMP.w #$00A0
#_1DDDD0: BCS .link_not_close

#_1DDDD2: SEP #$20

#_1DDDD4: INC.w $0D80,X

#_1DDDD7: LDA.b #$18
#_1DDDD9: STA.w $0DF0,X

#_1DDDDC: LDA.b #!SFX3_1E
#_1DDDDE: JSL SpriteSFX_QueueSFX3WithPan

.link_not_close
#_1DDDE2: SEP #$20

#_1DDDE4: RTS

;===================================================================================================

Raven_Rise:
#_1DDDE5: LDA.w $0DF0,X
#_1DDDE8: BNE .delay

#_1DDDEA: INC.w $0D80,X

#_1DDDED: LDY.w $0D90,X

#_1DDDF0: LDA.w Raven_RiseTime,Y
#_1DDDF3: STA.w $0DF0,X

#_1DDDF6: LDA.b #$20
#_1DDDF8: JSL Sprite_ApplySpeedTowardsLink_long

.delay
#_1DDDFC: INC.w $0F70,X

#_1DDDFF: LDA.b $1A
#_1DDE01: LSR A
#_1DDE02: AND.b #$01
#_1DDE04: INC A
#_1DDE05: STA.w $0DC0,X

#_1DDE08: RTS

;===================================================================================================

Raven_Attack:
#_1DDE09: LDA.w $0DF0,X
#_1DDE0C: BNE .dont_flee

; Always flee in light world
#_1DDE0E: LDA.w $0FFF
#_1DDE11: BEQ .always_flee

#_1DDE13: LDA.w $0D90,X
#_1DDE16: BNE .dont_flee

.always_flee
#_1DDE18: INC.w $0D80,X

.dont_flee
#_1DDE1B: TXA
#_1DDE1C: EOR.b $1A
#_1DDE1E: LSR A
#_1DDE1F: BCS Raven_Animate

#_1DDE21: LDA.b #$20
#_1DDE23: JSL Sprite_ProjectSpeedTowardsLink_long

;===================================================================================================

Raven_Accelerate:
#_1DDE27: LDA.w $0D40,X
#_1DDE2A: CMP.b $00
#_1DDE2C: BEQ .y_speed_good
#_1DDE2E: BPL .y_speed_too_high

#_1DDE30: INC.w $0D40,X
#_1DDE33: BRA .y_speed_good

.y_speed_too_high
#_1DDE35: DEC.w $0D40,X

.y_speed_good
#_1DDE38: LDA.w $0D50,X
#_1DDE3B: CMP.b $01
#_1DDE3D: BEQ Raven_Animate
#_1DDE3F: BPL .x_speed_too_high

#_1DDE41: INC.w $0D50,X

#_1DDE44: BRA Raven_Animate

.x_speed_too_high
#_1DDE46: DEC.w $0D50,X

;===================================================================================================

Raven_Animate:
#_1DDE49: LDA.b $1A
#_1DDE4B: LSR A
#_1DDE4C: AND.b #$01
#_1DDE4E: INC A
#_1DDE4F: STA.w $0DC0,X

#_1DDE52: LDA.w $0D50,X
#_1DDE55: ASL A
#_1DDE56: ROL A
#_1DDE57: AND.b #$01
#_1DDE59: TAY

;===================================================================================================

Raven_SetFlip:
#_1DDE5A: LDA.w $0F50,X
#_1DDE5D: AND.b #$BF
#_1DDE5F: ORA.w RavenFlip,Y
#_1DDE62: STA.w $0F50,X

#_1DDE65: RTS

;===================================================================================================

Raven_Flee:
#_1DDE66: TXA
#_1DDE67: EOR.b $1A
#_1DDE69: LSR A
#_1DDE6A: BCS Raven_Animate

#_1DDE6C: LDA.b #$30
#_1DDE6E: JSL Sprite_ProjectSpeedTowardsLink_long

#_1DDE72: LDA.b $00
#_1DDE74: EOR.b #$FF
#_1DDE76: INC A
#_1DDE77: STA.b $00

#_1DDE79: LDA.b $01
#_1DDE7B: EOR.b #$FF
#_1DDE7D: INC A
#_1DDE7E: STA.b $01

#_1DDE80: BRA Raven_Accelerate

;===================================================================================================

Vitreous_SpawnMinions:
#_1DDE82: PHB
#_1DDE83: PHK
#_1DDE84: PLB

#_1DDE85: JSR .main

#_1DDE88: PLB

#_1DDE89: RTL

;---------------------------------------------------------------------------------------------------

.offset_x_low
#_1DDE8A: db   8,   22,   -8,  -22,    0,   14,   19,   33
#_1DDE92: db  26,  -14,  -19,  -33,  -26

.offset_x_high
#_1DDE97: db   0,    0,   -1,   -1,    0,    0,    0,    0
#_1DDE9F: db   0,   -1,   -1,   -1,   -1

.offset_y_low
#_1DDEA4: db  -8,  -12,   -8,  -12,    0,  -20,   -1,  -12
#_1DDEAC: db -24,  -20,   -1,  -12,  -24

.offset_y_high
#_1DDEB1: db  -1,   -1,   -1,   -1,    0,   -1,   -1,   -1
#_1DDEB9: db  -1,   -1,   -1,   -1,   -1

;---------------------------------------------------------------------------------------------------

.anim_state
#_1DDEBE: db $01,  $01,  $01,  $01,  $00,  $00,  $00,  $00
#_1DDEC6: db $00,  $00,  $00,  $00,  $00

;---------------------------------------------------------------------------------------------------

.main
#_1DDECB: LDA.b #$09
#_1DDECD: STA.w $0ED0,X

#_1DDED0: LDA.b #!SPRITE_04
#_1DDED2: STA.w $0DC0,X

; This is pointless.
; Every eyeball is written manually regardless.
#_1DDED5: LDY.b #$0D
#_1DDED7: JSL Sprite_SpawnDynamically_slot_limited

;---------------------------------------------------------------------------------------------------

#_1DDEDB: LDY.b #$0C

.next_eyeball
#_1DDEDD: LDA.b #$09
#_1DDEDF: STA.w $0DD1,Y

#_1DDEE2: LDA.b #!SPRITE_BE
#_1DDEE4: STA.w $0E21,Y

#_1DDEE7: PHX

#_1DDEE8: TYX
#_1DDEE9: INX

#_1DDEEA: JSL SpritePrep_LoadProperties

#_1DDEEE: PLX

#_1DDEEF: LDA.b #$00
#_1DDEF1: STA.w $0F21,Y

#_1DDEF4: LDA.b $00
#_1DDEF6: CLC
#_1DDEF7: ADC.w .offset_x_low,Y
#_1DDEFA: STA.w $0D11,Y
#_1DDEFD: STA.w $0D91,Y

#_1DDF00: LDA.b $01
#_1DDF02: ADC.w .offset_x_high,Y
#_1DDF05: STA.w $0D31,Y
#_1DDF08: STA.w $0DA1,Y

#_1DDF0B: LDA.b $02
#_1DDF0D: CLC
#_1DDF0E: ADC.w .offset_y_low,Y
#_1DDF11: PHP

#_1DDF12: CLC
#_1DDF13: ADC.b #$20
#_1DDF15: STA.w $0D01,Y
#_1DDF18: STA.w $0DB1,Y

#_1DDF1B: LDA.b $03
#_1DDF1D: ADC.b #$00

#_1DDF1F: PLP
#_1DDF20: ADC.w .offset_y_high,Y
#_1DDF23: STA.w $0D21,Y
#_1DDF26: STA.w $0DE1,Y

#_1DDF29: LDA.w .anim_state,Y
#_1DDF2C: STA.w $0DC1,Y
#_1DDF2F: STA.w $0BA1,Y

#_1DDF32: TYA
#_1DDF33: ASL A
#_1DDF34: ASL A
#_1DDF35: ASL A
#_1DDF36: STA.b $0F

#_1DDF38: JSL GetRandomNumber
#_1DDF3C: ADC.b $0F
#_1DDF3E: STA.w $0E81,Y

#_1DDF41: DEY
#_1DDF42: BPL .next_eyeball

;---------------------------------------------------------------------------------------------------

#_1DDF44: RTS

;===================================================================================================

QuakeBounceSpeeds:
#_1DDF45: db $20, $10, $08, $00

;===================================================================================================

Sprite_C0_Catfish:
#_1DDF49: LDA.w $0D90,X
#_1DDF4C: BPL .not_splash

#_1DDF4E: JSR Catfish_SplashOfWater

#_1DDF51: RTS

.not_splash
#_1DDF52: BEQ Catfish_BigFish

;===================================================================================================

Catfish_QuakeMedallion:
#_1DDF54: LDA.w $0F70,X
#_1DDF57: BNE .airborne

#_1DDF59: JSL SpriteDraw_WaterRipple_WithOAMAdjust_long

#_1DDF5D: LDA.b $11
#_1DDF5F: BNE .airborne

#_1DDF61: JSL Sprite_CheckDamageToLink_same_layer_long
#_1DDF65: BCC .airborne

#_1DDF67: STZ.w $0DD0,X
#_1DDF6A: STZ.w $02E9

#_1DDF6D: LDY.w $0D90,X

#_1DDF70: PHX

#_1DDF71: JSL Link_ReceiveItem

#_1DDF75: PLX

;---------------------------------------------------------------------------------------------------

.airborne
#_1DDF76: LDA.w $0EE0,X
#_1DDF79: BEQ .keep_oam_allotment

#_1DDF7B: LDA.b #$08
#_1DDF7D: JSL OAM_AllocateFromRegionC

.keep_oam_allotment
#_1DDF81: JSL SpriteDraw_SingleLarge_long
#_1DDF85: JSR Sprite_CheckIfActive_Bank1D
#_1DDF88: JSR Sprite_Move_XYZ_Bank1D

#_1DDF8B: DEC.w $0F80,X
#_1DDF8E: DEC.w $0F80,X

#_1DDF91: LDA.w $0F70,X
#_1DDF94: BPL .exit

;---------------------------------------------------------------------------------------------------

#_1DDF96: STZ.w $0F70,X

#_1DDF99: LDA.w $0D50,X
#_1DDF9C: ASL A
#_1DDF9D: ROR.w $0D50,X
#_1DDFA0: LDA.w $0D40,X

#_1DDFA3: ASL A
#_1DDFA4: ROR.w $0D40,X

; Counts the bounces we're on
#_1DDFA7: LDY.w $0D80,X
#_1DDFAA: CPY.b #$04
#_1DDFAC: BNE .still_bouncing

#_1DDFAE: STZ.w $0D50,X
#_1DDFB1: STZ.w $0D40,X
#_1DDFB4: STZ.w $0F80,X

#_1DDFB7: BRA .exit

;---------------------------------------------------------------------------------------------------

.still_bouncing
#_1DDFB9: INC.w $0D80,X

#_1DDFBC: LDA.w QuakeBounceSpeeds,Y
#_1DDFBF: STA.w $0F80,X

#_1DDFC2: CPY.b #$02
#_1DDFC4: BCS .exit

#_1DDFC6: JSR Sprite_SpawnWaterSplash
#_1DDFC9: BMI .exit

#_1DDFCB: LDA.b #$10
#_1DDFCD: STA.w $0DF0,Y

.exit
#_1DDFD0: RTS

;===================================================================================================

Catfish_BigFish:
#_1DDFD1: JSR SpriteDraw_Catfish
#_1DDFD4: JSR Sprite_CheckIfActive_Bank1D

#_1DDFD7: LDA.w $0D80,X
#_1DDFDA: JSL JumpTableLocal
#_1DDFDE: dw Catfish_Sleep
#_1DDFE0: dw Catfish_TheRumbling
#_1DDFE2: dw Catfish_Surface
#_1DDFE4: dw Catfish_LeaveMeAlone

;===================================================================================================

Catfish_Sleep:
#_1DDFE6: LDY.b #$0F

; Search for a sprite within bounds
.next_sprite

; skip catfish himself
#_1DDFE8: CPY.w $0FA0
#_1DDFEB: BEQ .skip_sprite

#_1DDFED: LDA.w $0DD0,Y
#_1DDFF0: CMP.b #$03
#_1DDFF2: BNE .skip_sprite

#_1DDFF4: LDA.w $0D10,Y
#_1DDFF7: STA.b $00

#_1DDFF9: LDA.w $0D30,Y
#_1DDFFC: STA.b $01

#_1DDFFE: LDA.w $0D00,Y
#_1DE001: STA.b $02

#_1DE003: LDA.w $0D20,Y
#_1DE006: STA.b $03

#_1DE008: REP #$20

#_1DE00A: LDA.w $0FD8
#_1DE00D: SEC
#_1DE00E: SBC.b $00
#_1DE010: CLC
#_1DE011: ADC.w #$0020

#_1DE014: CMP.w #$0040
#_1DE017: BCS .skip_sprite

#_1DE019: LDA.w $0FDA
#_1DE01C: SEC
#_1DE01D: SBC.b $02
#_1DE01F: CLC
#_1DE020: ADC.w #$0020

#_1DE023: CMP.w #$0040
#_1DE026: BCS .skip_sprite

#_1DE028: SEP #$20

;---------------------------------------------------------------------------------------------------

#Catfish_AdvanceAI:
#_1DE02A: INC.w $0D80,X

#_1DE02D: LDA.b #$FF
#_1DE02F: STA.w $0DF0,X

#_1DE032: RTS

;---------------------------------------------------------------------------------------------------

.skip_sprite
#_1DE033: SEP #$20

#_1DE035: DEY
#_1DE036: BPL .next_sprite

#_1DE038: RTS

;===================================================================================================

Catfish_TheRumbling:
#_1DE039: LDA.w $0DF0,X
#_1DE03C: BNE .delay

#_1DE03E: JSR Catfish_AdvanceAI

#_1DE041: STZ.w $011A
#_1DE044: STZ.w $011B

#_1DE047: LDA.b #!SFX1_05
#_1DE049: STA.w $012D

#_1DE04C: LDA.b #$30
#_1DE04E: STA.w $0F80,X

#_1DE051: LDA.b #$00
#_1DE053: STA.w $0D50,X

#_1DE056: JSR Catfish_SpawnPlop

#_1DE059: RTS

.delay
#_1DE05A: CMP.b #$C0
#_1DE05C: BCS .exit

#_1DE05E: CMP.b #$BF
#_1DE060: BNE .skip_sfx

#_1DE062: LDY.b #!SFX1_07
#_1DE064: STY.w $012D

.skip_sfx
#_1DE067: AND.b #$01
#_1DE069: TAY

#_1DE06A: LDA.w Sprite_ApplyConveyor_shake_x,Y
#_1DE06D: STA.w $011A

#_1DE070: LDA.w Sprite_ApplyConveyor_shake_y,Y
#_1DE073: STA.w $011B

#_1DE076: LDA.b #$01
#_1DE078: STA.w $02E4

.exit
#_1DE07B: RTS

;===================================================================================================

pool Catfish_Surface

.draw
#_1DE07C: db $01, $02, $02, $02, $02, $03, $03, $03
#_1DE084: db $04, $04, $04, $05, $00, $00, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

Catfish_Surface:
#_1DE08C: INC.w $0E80,X

#_1DE08F: JSR Sprite_Move_XYZ_Bank1D

#_1DE092: LDA.w $0F80,X
#_1DE095: SEC
#_1DE096: SBC.b #$02
#_1DE098: STA.w $0F80,X

#_1DE09B: CMP.b #$D0
#_1DE09D: BNE .no_plop

#_1DE09F: JSR Catfish_SpawnPlop

.no_plop
#_1DE0A2: LDA.w $0F70,X
#_1DE0A5: BPL .leaping

#_1DE0A7: STZ.w $0F70,X

#_1DE0AA: INC.w $0D80,X

#_1DE0AD: LDA.b #$FF
#_1DE0AF: STA.w $0DF0,X

.leaping
#_1DE0B2: LDA.w $0E80,X
#_1DE0B5: LSR A
#_1DE0B6: LSR A
#_1DE0B7: TAY

#_1DE0B8: LDA.w .draw,Y
#_1DE0BB: STA.w $0DC0,X

#_1DE0BE: RTS

;===================================================================================================

pool Catfish_LeaveMeAlone

.draw
#_1DE0BF: db $00, $06, $07, $07, $07, $07, $07, $07
#_1DE0C7: db $07, $07, $07, $07, $07, $07, $07, $07
#_1DE0CF: db $07, $07, $06, $06

pool off

;---------------------------------------------------------------------------------------------------

Catfish_LeaveMeAlone:
#_1DE0D3: LDA.w $0DF0,X
#_1DE0D6: BNE .stay

#_1DE0D8: STZ.w $0DD0,X

#_1DE0DB: RTS

.stay
#_1DE0DC: CMP.b #$A0
#_1DE0DE: BNE .no_plop

#_1DE0E0: PHA

#_1DE0E1: JSR Sprite_SpawnWaterSplash

#_1DE0E4: PLA

.no_plop
#_1DE0E5: BCS I_said_no_plop

#_1DE0E7: CMP.b #$0A
#_1DE0E9: BNE .no_plop_dammit

#_1DE0EB: PHA

#_1DE0EC: JSR Catfish_SpawnPlop

#_1DE0EF: PLA

.no_plop_dammit
#_1DE0F0: CMP.b #$04
#_1DE0F2: BNE .no_splash_either

#_1DE0F4: PHA

#_1DE0F5: JSR Sprite_SpawnWaterSplash

#_1DE0F8: PLA

.no_splash_either
#_1DE0F9: CMP.b #$60
#_1DE0FB: BNE .delay_message

#_1DE0FD: STZ.w $02E4

; Message 0128 if you don't have quake
#_1DE100: LDY.b #$28

#_1DE102: LDA.l $7EF349
#_1DE106: BEQ .give_quake_message

; Message 0129 if you do have quake
#_1DE108: LDY.b #$29

;---------------------------------------------------------------------------------------------------

.give_quake_message
#_1DE10A: STY.w $1CF0

#_1DE10D: LDA.b #$01
#_1DE10F: STA.w $1CF1

#_1DE112: JSL Sprite_ShowMessageMinimal

#_1DE116: RTS

;---------------------------------------------------------------------------------------------------

.delay_message
#_1DE117: CMP.b #$50
#_1DE119: BNE .just_draw

#_1DE11B: PHA

#_1DE11C: LDA.l $7EF349
#_1DE120: BEQ .give_quake

#_1DE122: JSL GetRandomNumber
#_1DE126: AND.b #$01
#_1DE128: BEQ .spit_fire

;---------------------------------------------------------------------------------------------------

.spit_bomb
#_1DE12A: JSR Sprite_SpawnBomb
#_1DE12D: BRA .recover_timer

;---------------------------------------------------------------------------------------------------

.spit_fire
#_1DE12F: JSL Sprite_SpawnFireball
#_1DE133: BRA .recover_timer

;---------------------------------------------------------------------------------------------------

.give_quake
#_1DE135: JSR Catfish_RegurgitateMedallion

;---------------------------------------------------------------------------------------------------

.recover_timer
#_1DE138: PLA

.just_draw
#_1DE139: LSR A
#_1DE13A: LSR A
#_1DE13B: LSR A
#_1DE13C: TAY

#_1DE13D: LDA.w .draw,Y
#_1DE140: STA.w $0DC0,X

#_1DE143: RTS

;===================================================================================================

Sprite_SpawnBomb:
#_1DE144: LDA.b #!SPRITE_4A
#_1DE146: JSL Sprite_SpawnDynamically
#_1DE14A: BMI .exit

#_1DE14C: JSL Sprite_SetSpawnedCoordinates
#_1DE150: JSL Sprite_TransmuteToBomb

#_1DE154: LDA.b #$50
#_1DE156: STA.w $0E00,Y

#_1DE159: LDA.b #$18
#_1DE15B: STA.w $0D50,Y

#_1DE15E: LDA.b #$30
#_1DE160: STA.w $0F80,Y

.exit
#_1DE163: RTS

;===================================================================================================

I_said_no_plop:
#_1DE164: CMP.b #$FC
#_1DE166: BNE .exit

#_1DE168: JSR Sprite_SpawnWaterSplash

.exit
#_1DE16B: RTS

;===================================================================================================

Catfish_RegurgitateMedallion:
#_1DE16C: LDA.b #!SPRITE_C0
#_1DE16E: JSL Sprite_SpawnDynamically
#_1DE172: BMI .exit

#_1DE174: JSL Sprite_SetSpawnedCoordinates

#_1DE178: PHX
#_1DE179: TYX

#_1DE17A: LDA.b #$18
#_1DE17C: STA.w $0D50,X

#_1DE17F: LDA.b #$30
#_1DE181: STA.w $0F80,X

#_1DE184: LDA.b #!ITEMGET_11
#_1DE186: STA.w $0D90,X

#_1DE189: LDA.b #!SFX2_20
#_1DE18B: JSL SpriteSFX_QueueSFX2WithPan

#_1DE18F: LDA.b #$83
#_1DE191: STA.w $0E40,X

#_1DE194: LDA.b #$58
#_1DE196: STA.w $0E60,X

#_1DE199: AND.b #$0F
#_1DE19B: STA.w $0F50,X

#_1DE19E: PLX

#_1DE19F: PHX
#_1DE1A0: PHY

#_1DE1A1: LDA.b #$1C
#_1DE1A3: JSL WriteTo4BPPBuffer_item_gfx

#_1DE1A7: PLY
#_1DE1A8: PLX

.exit
#_1DE1A9: RTS

;===================================================================================================
; Why is this here?
;===================================================================================================
Zora_RegurgitateFlippers:
#_1DE1AA: LDA.b #!SPRITE_C0
#_1DE1AC: JSL Sprite_SpawnDynamically
#_1DE1B0: BMI .exit

#_1DE1B2: JSL Sprite_SetSpawnedCoordinates

#_1DE1B6: PHX
#_1DE1B7: TYX

#_1DE1B8: LDA.b #$20
#_1DE1BA: STA.w $0F80,X

#_1DE1BD: LDA.b #$10
#_1DE1BF: STA.w $0D40,X

#_1DE1C2: LDA.b #!ITEMGET_1E
#_1DE1C4: STA.w $0D90,X

#_1DE1C7: LDA.b #!SFX2_20
#_1DE1C9: JSL SpriteSFX_QueueSFX2WithPan

#_1DE1CD: LDA.b #$83
#_1DE1CF: STA.w $0E40,X

#_1DE1D2: LDA.b #$54
#_1DE1D4: STA.w $0E60,X

#_1DE1D7: AND.b #$0F
#_1DE1D9: STA.w $0F50,X

#_1DE1DC: LDA.b #$30
#_1DE1DE: STA.w $0EE0,X

#_1DE1E1: PLX

#_1DE1E2: PHX
#_1DE1E3: PHY

#_1DE1E4: LDA.b #$11
#_1DE1E6: JSL WriteTo4BPPBuffer_item_gfx

#_1DE1EA: PLY
#_1DE1EB: PLX

.exit
#_1DE1EC: RTL

;===================================================================================================

Catfish_SpawnPlop:
#_1DE1ED: LDA.b #!SPRITE_EC
#_1DE1EF: JSL Sprite_SpawnDynamically
#_1DE1F3: BMI .exit

#_1DE1F5: JSL Sprite_SetSpawnedCoordinates

#_1DE1F9: LDA.b #$03
#_1DE1FB: STA.w $0DD0,Y

#_1DE1FE: LDA.b #$0F
#_1DE200: STA.w $0DF0,Y

#_1DE203: LDA.b #$00
#_1DE205: STA.w $0D80,Y

#_1DE208: LDA.b #$03
#_1DE20A: STA.w $0E40,Y

#_1DE20D: LDA.b #!SFX2_28
#_1DE20F: JSL SpriteSFX_QueueSFX2WithPan

.exit
#_1DE213: RTS

;===================================================================================================

Sprite_SpawnWaterSplash_long:
#_1DE214: PHB
#_1DE215: PHK
#_1DE216: PLB

#_1DE217: JSR Sprite_SpawnWaterSplash

#_1DE21A: PLB

#_1DE21B: RTL

;===================================================================================================

Sprite_SpawnWaterSplash:
#_1DE21C: LDA.b #!SPRITE_C0
#_1DE21E: JSL Sprite_SpawnDynamically
#_1DE222: BMI .exit

#_1DE224: JSL Sprite_SetSpawnedCoordinates

#_1DE228: LDA.b #$80
#_1DE22A: STA.w $0D90,Y

#_1DE22D: LDA.b #$02
#_1DE22F: STA.w $0E40,Y
#_1DE232: STA.w $0BA0,Y

#_1DE235: LDA.b #$04
#_1DE237: STA.w $0F50,Y

#_1DE23A: LDA.b #$1F
#_1DE23C: STA.w $0DF0,Y

.exit
#_1DE23F: RTS

;===================================================================================================

pool SpriteDraw_Catfish

.oam_groups
; group00
#_1DE240: dw  -4,   4 : db $8C, $00, $00, $02
#_1DE248: dw   4,   4 : db $8D, $00, $00, $02
#_1DE250: dw  -4,   4 : db $8C, $00, $00, $02
#_1DE258: dw   4,   4 : db $8D, $00, $00, $02

; group01
#_1DE260: dw  -4,  -4 : db $8C, $00, $00, $02
#_1DE268: dw   4,  -4 : db $8D, $00, $00, $02
#_1DE270: dw  -4,   4 : db $9C, $00, $00, $02
#_1DE278: dw   4,   4 : db $9D, $00, $00, $02

; group02
#_1DE280: dw  -4,  -4 : db $8D, $40, $00, $02
#_1DE288: dw   4,  -4 : db $8C, $40, $00, $02
#_1DE290: dw  -4,   4 : db $9D, $40, $00, $02
#_1DE298: dw   4,   4 : db $9C, $40, $00, $02

; group03
#_1DE2A0: dw  -4,  -4 : db $9D, $C0, $00, $02
#_1DE2A8: dw   4,  -4 : db $9C, $C0, $00, $02
#_1DE2B0: dw  -4,   4 : db $8D, $C0, $00, $02
#_1DE2B8: dw   4,   4 : db $8C, $C0, $00, $02

; group04
#_1DE2C0: dw  -4,   4 : db $9D, $C0, $00, $02
#_1DE2C8: dw   4,   4 : db $9C, $C0, $00, $02
#_1DE2D0: dw  -4,   4 : db $9D, $C0, $00, $02
#_1DE2D8: dw   4,   4 : db $9C, $C0, $00, $02

; group05
#_1DE2E0: dw   0,   8 : db $BD, $00, $00, $00
#_1DE2E8: dw   8,   8 : db $BD, $40, $00, $00
#_1DE2F0: dw   8,   8 : db $BD, $40, $00, $00
#_1DE2F8: dw   8,   8 : db $BD, $40, $00, $00

; group06
#_1DE300: dw  -8,   0 : db $86, $00, $00, $02
#_1DE308: dw   8,   0 : db $86, $40, $00, $02
#_1DE310: dw   8,   0 : db $86, $40, $00, $02
#_1DE318: dw   8,   0 : db $86, $40, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Catfish:
#_1DE320: LDA.b #$00
#_1DE322: XBA
#_1DE323: LDA.w $0DC0,X
#_1DE326: BEQ .no_draw

#_1DE328: DEC A

#_1DE329: REP #$20

#_1DE32B: ASL A ; x32
#_1DE32C: ASL A
#_1DE32D: ASL A
#_1DE32E: ASL A
#_1DE32F: ASL A
#_1DE330: ADC.w #.oam_groups
#_1DE333: STA.b $08

#_1DE335: SEP #$20

#_1DE337: LDA.b #$04
#_1DE339: JMP.w Sprite_DrawMultiple_Bank1D

.no_draw
#_1DE33C: RTS

;===================================================================================================

pool Catfish_SplashOfWater

.oam_groups
; group00
#_1DE33D: dw  -8,  -4 : db $80, $00, $00, $00
#_1DE345: dw  18,  -7 : db $80, $00, $00, $00

; group01
#_1DE34D: dw  -5,  -2 : db $BF, $00, $00, $00
#_1DE355: dw  15,  -4 : db $AF, $40, $00, $00

; group02
#_1DE35D: dw   0,  -4 : db $E7, $00, $00, $02
#_1DE365: dw   0,  -4 : db $E7, $00, $00, $02

; group03
#_1DE36D: dw   0,  -4 : db $C0, $00, $00, $02
#_1DE375: dw   0,  -4 : db $C0, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

Catfish_SplashOfWater:
#_1DE37D: LDA.b #$00
#_1DE37F: XBA
#_1DE380: LDA.w $0DF0,X
#_1DE383: BNE .dont_delete_self

#_1DE385: STZ.w $0DD0,X

.dont_delete_self
#_1DE388: LSR A ; /8
#_1DE389: LSR A
#_1DE38A: LSR A

#_1DE38B: REP #$20

#_1DE38D: ASL A ; x16
#_1DE38E: ASL A ; so x2 overall
#_1DE38F: ASL A
#_1DE390: ASL A
#_1DE391: ADC.w #.oam_groups
#_1DE394: STA.b $08

#_1DE396: SEP #$20

#_1DE398: LDA.b #$02
#_1DE39A: JMP.w Sprite_DrawMultiple_Bank1D

;===================================================================================================

pool Sprite_BF_Lightning

.anim
#_1DE39D: db $00, $01, $02, $03
#_1DE3A1: db $00, $01, $02, $03

.flip
#_1DE3A5: db $00, $00, $00, $00
#_1DE3A9: db $40, $40, $40, $40

.branch_offset_x
#_1DE3AD: db -15,   0,   0, -15,   0, -15, -15,   0
#_1DE3B5: db -15,   0,   0, -15,   0, -15, -15,   0
#_1DE3BD: db   0,  15,  15,   0,  15,   0,   0,  15
#_1DE3C5: db   0,  15,  15,   0,  15,   0,   0,  15
#_1DE3CD: db   0,  15,  15,   0,  15,   0,   0,  15
#_1DE3D5: db   0,  15,  15,   0,  15,   0,   0,  15
#_1DE3DD: db -15,   0,   0, -15,   0, -15, -15,   0
#_1DE3E5: db -15,   0,   0, -15,   0, -15, -15,   0

pool off

;---------------------------------------------------------------------------------------------------

Sprite_BF_Lightning:
#_1DE3ED: LDA.b $1A
#_1DE3EF: ASL A
#_1DE3F0: AND.b #$0E
#_1DE3F2: STA.b $00

#_1DE3F4: LDY.w $0D90,X

#_1DE3F7: LDA.w $0F50,X
#_1DE3FA: AND.b #$B1
#_1DE3FC: ORA.w .flip,Y
#_1DE3FF: ORA.b $00
#_1DE401: STA.w $0F50,X

#_1DE404: LDA.w .anim,Y

#_1DE407: LDY.w $048E
#_1DE40A: CPY.b #$20
#_1DE40C: BNE .use_set_1

#_1DE40E: CLC
#_1DE40F: ADC.b #$04

;---------------------------------------------------------------------------------------------------

.use_set_1
#_1DE411: STA.w $0DC0,X

#_1DE414: JSL SpriteDraw_SingleLarge_long

#_1DE418: JSR Sprite_CheckIfActive_Bank1D
#_1DE41B: LDA.w $0DF0,X
#_1DE41E: BNE .exit

#_1DE420: JSR Lightning_SpawnGarnish

#_1DE423: LDA.b #$02
#_1DE425: STA.w $0DF0,X

#_1DE428: LDA.w $0D00,X
#_1DE42B: CLC
#_1DE42C: ADC.b #$10
#_1DE42E: STA.w $0D00,X

#_1DE431: PHA

#_1DE432: LDA.w $0D20,X
#_1DE435: ADC.b #$00
#_1DE437: STA.w $0D20,X

#_1DE43A: PLA
#_1DE43B: SEC
#_1DE43C: SBC.b $E8

#_1DE43E: CMP.b #$D0
#_1DE440: BCC .dont_delete_self

#_1DE442: STZ.w $0DD0,X

#_1DE445: RTS

;---------------------------------------------------------------------------------------------------

.dont_delete_self
#_1DE446: JSL GetRandomNumber
#_1DE44A: AND.b #$07
#_1DE44C: STA.b $00

#_1DE44E: LDA.w $0D90,X
#_1DE451: ASL A
#_1DE452: ASL A
#_1DE453: ASL A
#_1DE454: ORA.b $00
#_1DE456: TAY

#_1DE457: STZ.b $01

#_1DE459: LDA.w .branch_offset_x,Y
#_1DE45C: BPL .positive_offset

#_1DE45E: DEC.b $01

;---------------------------------------------------------------------------------------------------

.positive_offset
#_1DE460: CLC
#_1DE461: ADC.w $0D10,X
#_1DE464: STA.w $0D10,X

#_1DE467: LDA.w $0D30,X
#_1DE46A: ADC.b $01
#_1DE46C: STA.w $0D30,X

#_1DE46F: LDA.b $00
#_1DE471: STA.w $0D90,X

.exit
#_1DE474: RTS

;===================================================================================================

Lightning_SpawnGarnish:
#_1DE475: PHX
#_1DE476: TXY

#_1DE477: LDX.b #$1D

.next_slot
#_1DE479: LDA.l $7FF800,X
#_1DE47D: BEQ .free_slot

#_1DE47F: DEX
#_1DE480: BPL .next_slot

#_1DE482: DEC.w $0FF8
#_1DE485: BPL .use_search_index

#_1DE487: LDA.b #$1D
#_1DE489: STA.w $0FF8

.use_search_index
#_1DE48C: LDX.w $0FF8

;---------------------------------------------------------------------------------------------------

.free_slot
#_1DE48F: LDA.b #!GARNISH_09
#_1DE491: STA.l $7FF800,X
#_1DE495: STA.w $0FB4

#_1DE498: LDA.w $0D90,Y
#_1DE49B: STA.l $7FF92C,X

#_1DE49F: LDA.w $0D10,Y
#_1DE4A2: STA.l $7FF83C,X

#_1DE4A6: LDA.w $0D30,Y
#_1DE4A9: STA.l $7FF878,X

;---------------------------------------------------------------------------------------------------

#_1DE4AD: LDA.w $0D00,Y
#_1DE4B0: CLC
#_1DE4B1: ADC.b #$10
#_1DE4B3: STA.l $7FF81E,X

#_1DE4B7: LDA.w $0D20,Y
#_1DE4BA: ADC.b #$00
#_1DE4BC: STA.l $7FF85A,X

#_1DE4C0: LDA.b #$20
#_1DE4C2: STA.l $7FF90E,X

;---------------------------------------------------------------------------------------------------

#_1DE4C6: PLX

#_1DE4C7: RTS

;===================================================================================================

Sprite_BD_Vitreous:
#_1DE4C8: LDA.w $0F10,X
#_1DE4CB: BEQ .not_lightningening

#_1DE4CD: LDA.b #$03
#_1DE4CF: STA.w $0DC0,X

;---------------------------------------------------------------------------------------------------

.not_lightningening
#_1DE4D2: JSR SpriteDraw_Vitreous
#_1DE4D5: JSR Sprite_CheckIfActive_Bank1D
#_1DE4D8: JSR Vitreous_SetMinionsForth
#_1DE4DB: JSR Sprite_CheckDamageToAndFromLink_Bank1D

#_1DE4DE: LDA.w $0D80,X
#_1DE4E1: JSL JumpTableLocal
#_1DE4E5: dw Vitreous_DunkedInGoo
#_1DE4E7: dw Vitreous_Lightningening
#_1DE4E9: dw Vitreous_Bouncing

;===================================================================================================

Vitreous_DunkedInGoo:
#_1DE4EB: STZ.w $0FF8

#_1DE4EE: STZ.w $0EA0,X

#_1DE4F1: LDA.w $0E60,X
#_1DE4F4: ORA.b #$40
#_1DE4F6: STA.w $0E60,X

#_1DE4F9: LDA.b $1A
#_1DE4FB: AND.b #$01
#_1DE4FD: BNE .not_about_to_zap

#_1DE4FF: DEC.w $0D90,X
#_1DE502: BNE .not_about_to_zap

;---------------------------------------------------------------------------------------------------

#_1DE504: LDA.w $0E60,X
#_1DE507: AND.b #$BF
#_1DE509: STA.w $0E60,X

#_1DE50C: LDA.b #$10
#_1DE50E: STA.w $0F10,X

#_1DE511: INC.w $0D80,X

#_1DE514: LDA.b #$80
#_1DE516: STA.w $0DF0,X

#_1DE519: LDA.w $0ED0,X
#_1DE51C: BNE .not_about_to_zap

;---------------------------------------------------------------------------------------------------

#_1DE51E: INC.w $0D80,X

#_1DE521: LDA.b #$40
#_1DE523: STA.w $0DF0,X

#_1DE526: STZ.w $0BA0,X

#_1DE529: LDA.b #!SFX2_35
#_1DE52B: STA.w $012E

#_1DE52E: RTS

;---------------------------------------------------------------------------------------------------

.not_about_to_zap
#_1DE52F: LDY.b #$04

#_1DE531: LDA.b $1A
#_1DE533: AND.b #$30
#_1DE535: BNE .anim_state_nonzero

#_1DE537: INY

.anim_state_nonzero
#_1DE538: TYA
#_1DE539: STA.w $0DC0,X

#_1DE53C: RTS

;===================================================================================================

Vitreous_Animate_step:
#_1DE53D: db $02, $01

;===================================================================================================

pool Vitreous_Lightningening

.timer
#_1DE53F: db 32, 32, 32, 64, 96, 128, 160, 192, 224, 0

pool off

;---------------------------------------------------------------------------------------------------

Vitreous_Lightningening:
#_1DE549: STZ.w $0EA0,X

#_1DE54C: LDA.w $0DF0,X
#_1DE54F: BNE Vitreous_Animate

#_1DE551: LDA.b #$10
#_1DE553: STA.w $0F10,X

#_1DE556: STZ.w $0D80,X

#_1DE559: LDY.w $0ED0,X

#_1DE55C: LDA.w .timer,Y
#_1DE55F: STA.w $0D90,X

#_1DE562: RTS

;===================================================================================================

Vitreous_Animate:
#_1DE563: CMP.b #$40
#_1DE565: BEQ .lightning

#_1DE567: CMP.b #$41
#_1DE569: BEQ .lightning

#_1DE56B: CMP.b #$42
#_1DE56D: BNE .no_lightning

.lightning
#_1DE56F: JSL Sprite_SpawnLightning

.no_lightning
#_1DE573: STZ.w $0DC0,X

#_1DE576: JSR Sprite_IsRightOfLink_Bank1D

#_1DE579: LDA.b $0F
#_1DE57B: CLC
#_1DE57C: ADC.b #$10
#_1DE57E: CMP.b #$20
#_1DE580: BCC .exit

#_1DE582: LDA.w .step,Y
#_1DE585: STA.w $0DC0,X

.exit
#_1DE588: RTS

;===================================================================================================

pool Vitreous_Bouncing

.x_shake
#_1DE589: db  8, -8

pool off

;---------------------------------------------------------------------------------------------------

Vitreous_Bouncing:
#_1DE58B: JSR Vitreous_Animate
#_1DE58E: JSR Sprite_CheckIfRecoiling_Bank1D

#_1DE591: LDA.w $0DF0,X
#_1DE594: BEQ .bouncing

; Shakes first
#_1DE596: AND.b #$02
#_1DE598: LSR A
#_1DE599: TAY

#_1DE59A: LDA.w .x_shake,Y
#_1DE59D: STA.w $0D50,X

#_1DE5A0: JSR Sprite_Move_X_Bank1D

#_1DE5A3: RTS

;---------------------------------------------------------------------------------------------------

.bouncing
#_1DE5A4: JSR Sprite_Move_XYZ_Bank1D
#_1DE5A7: JSR Sprite_CheckTileCollision_Bank1D

#_1DE5AA: DEC.w $0F80,X
#_1DE5AD: DEC.w $0F80,X

#_1DE5B0: LDA.w $0F70,X
#_1DE5B3: BPL .exit

#_1DE5B5: STZ.w $0F70,X

#_1DE5B8: LDA.b #$20
#_1DE5BA: STA.w $0F80,X

#_1DE5BD: LDA.b #$10
#_1DE5BF: JSL Sprite_ApplySpeedTowardsLink_long

#_1DE5C3: LDA.b #!SFX2_21
#_1DE5C5: JSL SpriteSFX_QueueSFX2WithPan

.exit
#_1DE5C9: RTS

;===================================================================================================
; Eyeball $0D is only in here once.
; Lucky guy has half the chance of being drafted as everyone else.
; His parents are probably wealthy aristocrats.
;===================================================================================================
Vitreous_EyeballRoster:
#_1DE5CA: db $05, $06, $07, $08, $09, $0A, $0B, $0C
#_1DE5D2: db $0D, $05, $06, $07, $08, $09, $0A, $0B

;---------------------------------------------------------------------------------------------------

Vitreous_SetMinionsForth:
#_1DE5DA: INC.w $0E80,X

#_1DE5DD: LDA.w $0E80,X
#_1DE5E0: AND.b #$3F
#_1DE5E2: BNE .exit

#_1DE5E4: JSL GetRandomNumber
#_1DE5E8: AND.b #$0F
#_1DE5EA: TAY

#_1DE5EB: LDA.w Vitreous_EyeballRoster,Y
#_1DE5EE: TAY

#_1DE5EF: LDA.w $0D80,Y
#_1DE5F2: BNE .already_enlisted

#_1DE5F4: INC A
#_1DE5F5: STA.w $0D80,Y

#_1DE5F8: LDA.b #!SFX2_15
#_1DE5FA: STA.w $012E

.exit
#_1DE5FD: RTS

.already_enlisted
#_1DE5FE: DEC.w $0E80,X

#_1DE601: RTS

;===================================================================================================

pool Sprite_SpawnLightning

.offset_x_low
#_1DE602: db  -8,   8,   8,  -8,   8,  -8,  -8,   8

.offset_x_high
#_1DE60A: db  -1,   0,   0,  -1,   0,  -1,  -1,   0

pool off

;---------------------------------------------------------------------------------------------------

Sprite_SpawnLightning:
#_1DE612: PHB
#_1DE613: PHK
#_1DE614: PLB

#_1DE615: LDA.b #!SPRITE_BF
#_1DE617: JSL Sprite_SpawnDynamically
#_1DE61B: BMI .no_room

#_1DE61D: LDA.b #!SFX3_26
#_1DE61F: STA.w $012F

#_1DE622: JSL Sprite_SetSpawnedCoordinates

#_1DE626: JSL GetRandomNumber
#_1DE62A: AND.b #$07
#_1DE62C: STA.w $0D90,Y

#_1DE62F: PHX

#_1DE630: TAX

#_1DE631: LDA.b $00
#_1DE633: CLC
#_1DE634: ADC.w .offset_x_low,X
#_1DE637: STA.w $0D10,Y

#_1DE63A: LDA.b $01
#_1DE63C: ADC.w .offset_x_high,X
#_1DE63F: STA.w $0D30,Y

#_1DE642: LDA.b $02
#_1DE644: ADC.b #$0C
#_1DE646: STA.w $0D00,Y

#_1DE649: PLX

#_1DE64A: LDA.b #$02
#_1DE64C: STA.w $0DF0,Y

#_1DE64F: LDA.b #$20
#_1DE651: STA.w $0FF9

.no_room
#_1DE654: PLB

#_1DE655: RTL

;===================================================================================================

pool SpriteDraw_Vitreous

.oam_groups
; group00
#_1DE656: dw  -8,  -8 : db $C0, $01, $00, $02
#_1DE65E: dw   8,  -8 : db $C0, $41, $00, $02
#_1DE666: dw  -8,   8 : db $E0, $01, $00, $02
#_1DE66E: dw   8,   8 : db $E0, $41, $00, $02

; group01
#_1DE676: dw  -8,  -8 : db $C8, $01, $00, $02
#_1DE67E: dw   8,  -8 : db $CA, $01, $00, $02
#_1DE686: dw  -8,   8 : db $E8, $01, $00, $02
#_1DE68E: dw   8,   8 : db $EA, $01, $00, $02

; group02
#_1DE696: dw  -8,  -8 : db $CA, $41, $00, $02
#_1DE69E: dw   8,  -8 : db $C8, $41, $00, $02
#_1DE6A6: dw  -8,   8 : db $EA, $41, $00, $02
#_1DE6AE: dw   8,   8 : db $E8, $41, $00, $02

; group03
#_1DE6B6: dw  -8,  -8 : db $C2, $01, $00, $02
#_1DE6BE: dw   8,  -8 : db $C2, $41, $00, $02
#_1DE6C6: dw  -8,   8 : db $E2, $01, $00, $02
#_1DE6CE: dw   8,   8 : db $E2, $41, $00, $02

; group04
#_1DE6D6: dw  -8,  -8 : db $C4, $01, $00, $02
#_1DE6DE: dw   8,  -8 : db $C4, $41, $00, $02
#_1DE6E6: dw  -8,   8 : db $E4, $01, $00, $02
#_1DE6EE: dw   8,   8 : db $E4, $41, $00, $02

; group05
#_1DE6F6: dw  -7,  -7 : db $C4, $01, $00, $02
#_1DE6FE: dw   7,  -7 : db $C4, $41, $00, $02
#_1DE706: dw  -7,   7 : db $E4, $01, $00, $02
#_1DE70E: dw   7,   7 : db $E4, $41, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Vitreous:
#_1DE716: LDA.b #$00
#_1DE718: XBA
#_1DE719: LDA.w $0DC0,X

#_1DE71C: REP #$20

#_1DE71E: ASL A ; x32
#_1DE71F: ASL A
#_1DE720: ASL A
#_1DE721: ASL A
#_1DE722: ASL A
#_1DE723: ADC.w #.oam_groups
#_1DE726: STA.b $08

#_1DE728: LDA.w $0D80,X
#_1DE72B: AND.w #$00FF
#_1DE72E: CMP.w #$0002
#_1DE731: BNE .use_allotted_oam

#_1DE733: LDA.w $0DD0,X
#_1DE736: AND.w #$00FF
#_1DE739: CMP.w #$0009
#_1DE73C: BNE .use_allotted_oam

; !HARDCODED oam slots
#_1DE73E: LDA.w #$0800
#_1DE741: STA.b $90

#_1DE743: LDA.w #$0A20
#_1DE746: STA.b $92

.use_allotted_oam
#_1DE748: SEP #$20

#_1DE74A: LDA.b #$04
#_1DE74C: JSR Sprite_DrawMultiple_Bank1D

#_1DE74F: LDA.w $0D80,X
#_1DE752: CMP.b #$02
#_1DE754: BNE .exit

#_1DE756: LDA.w $0B89,X
#_1DE759: AND.b #$F1
#_1DE75B: STA.w $0B89,X

#_1DE75E: JSL SpriteDraw_BigShadow_with_altitude

;---------------------------------------------------------------------------------------------------

.exit
#_1DE762: RTS

;===================================================================================================

pool Sprite_BE_VitreousEye

.draw_offset_x
#_1DE763: db  1,  0,  0,  0, -1, -1,  0,  0

.draw_offset_y
#_1DE76B: db  0,  0,  1,  0,  0,  0, -1, -1

pool off

;---------------------------------------------------------------------------------------------------

Sprite_BE_VitreousEye:
#_1DE773: LDA.w $0E80,X

#_1DE776: LSR A
#_1DE777: LSR A
#_1DE778: LSR A

#_1DE779: AND.b #$06
#_1DE77B: TAY

#_1DE77C: REP #$20

#_1DE77E: LDA.w $0FD8
#_1DE781: CLC
#_1DE782: ADC.w .draw_offset_x,Y
#_1DE785: STA.w $0FD8

#_1DE788: LDA.w $0FDA
#_1DE78B: CLC
#_1DE78C: ADC.w .draw_offset_y,Y
#_1DE78F: STA.w $0FDA

;---------------------------------------------------------------------------------------------------

#_1DE792: SEP #$20

#_1DE794: JSL SpriteDraw_SingleLarge_long
#_1DE798: JSR Sprite_CheckIfActive_Bank1D

#_1DE79B: INC.w $0E80,X

; The eyeballs underwater are probably sucking up to the boss.
; They don't do damage.
#_1DE79E: LDA.w $0DC0,X
#_1DE7A1: BEQ .not_buttkisser_eyeball

#_1DE7A3: RTS

;---------------------------------------------------------------------------------------------------

.not_buttkisser_eyeball
#_1DE7A4: JSL Sprite_CheckDamageFromLink_long
#_1DE7A8: JSL Sprite_CheckDamageToLink_long

; Interesting: short recoil timers for mini vitty.
#_1DE7AC: LDA.w $0EA0,X
#_1DE7AF: CMP.b #$0E
#_1DE7B1: BNE .shorter_recoil

#_1DE7B3: LDA.b #$05
#_1DE7B5: STA.w $0EA0,X

.shorter_recoil
#_1DE7B8: LDA.w $0D80,X
#_1DE7BB: BEQ VitreousEye_TargetLink

#_1DE7BD: CMP.b #$01
#_1DE7BF: BEQ VitreousEye_ApproachTarget

#_1DE7C1: JMP.w VitreousEye_ReturnHome

;===================================================================================================

VitreousEye_TargetLink:
#_1DE7C4: LDA.b $22
#_1DE7C6: STA.w $0ED0,X

#_1DE7C9: LDA.b $23
#_1DE7CB: STA.w $0EB0,X

#_1DE7CE: LDA.b $20
#_1DE7D0: STA.w $0EC0,X

#_1DE7D3: LDA.b $21
#_1DE7D5: STA.w $0E30,X

#_1DE7D8: RTS

;===================================================================================================

VitreousEye_ApproachTarget:
#_1DE7D9: JSR Sprite_CheckIfRecoiling_Bank1D

#_1DE7DC: TXA
#_1DE7DD: EOR.b $1A
#_1DE7DF: AND.b #$01
#_1DE7E1: BNE .dont_adjust_speed

#_1DE7E3: LDA.w $0ED0,X
#_1DE7E6: STA.b $04

#_1DE7E8: LDA.w $0EB0,X
#_1DE7EB: STA.b $05

#_1DE7ED: LDA.w $0EC0,X
#_1DE7F0: STA.b $06

#_1DE7F2: LDA.w $0E30,X
#_1DE7F5: STA.b $07

#_1DE7F7: LDA.b #$10
#_1DE7F9: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1DE7FD: LDA.b $00
#_1DE7FF: STA.w $0D40,X

#_1DE802: LDA.b $01
#_1DE804: STA.w $0D50,X

;---------------------------------------------------------------------------------------------------

.dont_adjust_speed
#_1DE807: JSR Sprite_Move_XY_Bank1D

#_1DE80A: LDA.w $0ED0,X
#_1DE80D: SEC
#_1DE80E: SBC.w $0D10,X
#_1DE811: CLC
#_1DE812: ADC.b #$04

#_1DE814: CMP.b #$08
#_1DE816: BCS .exit

#_1DE818: LDA.w $0EC0,X
#_1DE81B: SEC
#_1DE81C: SBC.w $0D00,X
#_1DE81F: CLC
#_1DE820: ADC.b #$04

#_1DE822: CMP.b #$08
#_1DE824: BCS .exit

#_1DE826: INC.w $0D80,X

.exit
#_1DE829: RTS

;===================================================================================================

VitreousEye_ReturnHome:
#_1DE82A: JSR Sprite_CheckIfRecoiling_Bank1D

#_1DE82D: TXA
#_1DE82E: EOR.b $1A
#_1DE830: AND.b #$01
#_1DE832: BNE .dont_adjust_speed

#_1DE834: LDA.w $0D90,X
#_1DE837: STA.b $04

#_1DE839: LDA.w $0DA0,X
#_1DE83C: STA.b $05

#_1DE83E: LDA.w $0DB0,X
#_1DE841: STA.b $06

#_1DE843: LDA.w $0DE0,X
#_1DE846: STA.b $07

#_1DE848: LDA.b #$10
#_1DE84A: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1DE84E: LDA.b $00
#_1DE850: STA.w $0D40,X

#_1DE853: LDA.b $01
#_1DE855: STA.w $0D50,X

;---------------------------------------------------------------------------------------------------

.dont_adjust_speed
#_1DE858: JSR Sprite_Move_XY_Bank1D

#_1DE85B: LDA.w $0D90,X
#_1DE85E: SEC
#_1DE85F: SBC.w $0D10,X
#_1DE862: CLC
#_1DE863: ADC.b #$04

#_1DE865: CMP.b #$08
#_1DE867: BCS .exit

#_1DE869: LDA.w $0DB0,X
#_1DE86C: SEC
#_1DE86D: SBC.w $0D00,X
#_1DE870: CLC
#_1DE871: ADC.b #$04

#_1DE873: CMP.b #$08
#_1DE875: BCS .exit

#_1DE877: LDA.w $0D90,X
#_1DE87A: STA.w $0D10,X

#_1DE87D: LDA.w $0DA0,X
#_1DE880: STA.w $0D30,X

#_1DE883: LDA.w $0DB0,X
#_1DE886: STA.w $0D00,X

#_1DE889: LDA.w $0DE0,X
#_1DE88C: STA.w $0D20,X

#_1DE88F: STZ.w $0D80,X

.exit
#_1DE892: RTS

;===================================================================================================

Sprite_DirectionToFaceLink_Bank1D:
#_1DE893: JSL Sprite_DirectionToFaceLink_long

#_1DE897: RTS

;===================================================================================================

Sprite_IsRightOfLink_Bank1D:
#_1DE898: JSL Sprite_IsRightOfLink_long

#_1DE89C: RTS

;===================================================================================================

Sprite_IsBelowLink_Bank1D:
#_1DE89D: JSL Sprite_IsBelowLink_long

#_1DE8A1: RTS

;===================================================================================================

Sprite_CheckIfActive_Bank1D:
#_1DE8A2: LDA.w $0DD0,X
#_1DE8A5: CMP.b #$09
#_1DE8A7: BNE .inactive

#_1DE8A9: LDA.w $0FC1
#_1DE8AC: BNE .inactive

#_1DE8AE: LDA.b $11
#_1DE8B0: BNE .inactive

#_1DE8B2: LDA.w $0CAA,X
#_1DE8B5: BMI .active

#_1DE8B7: LDA.w $0F00,X
#_1DE8BA: BEQ .active

.inactive
#_1DE8BC: PLA
#_1DE8BD: PLA

.active
#_1DE8BE: RTS

;===================================================================================================

pool Sprite_CheckIfRecoiling_Bank1D

.masks
#_1DE8BF: db $03, $01, $00, $00, $0C, $03

pool off

;---------------------------------------------------------------------------------------------------

Sprite_CheckIfRecoiling_Bank1D:
#_1DE8C5: LDA.w $0EA0,X
#_1DE8C8: BEQ .exit

#_1DE8CA: AND.b #$7F
#_1DE8CC: BEQ .recoil_over

#_1DE8CE: LDA.w $0D40,X
#_1DE8D1: PHA

#_1DE8D2: LDA.w $0D50,X
#_1DE8D5: PHA

#_1DE8D6: DEC.w $0EA0,X
#_1DE8D9: BNE .still_recoiling

#_1DE8DB: LDA.w $0F40,X
#_1DE8DE: CLC
#_1DE8DF: ADC.b #$20
#_1DE8E1: CMP.b #$40
#_1DE8E3: BCS .no_adjust

#_1DE8E5: LDA.w $0F30,X
#_1DE8E8: CLC
#_1DE8E9: ADC.b #$20
#_1DE8EB: CMP.b #$40
#_1DE8ED: BCC .still_recoiling

.no_adjust
#_1DE8EF: LDA.b #$90
#_1DE8F1: STA.w $0EA0,X

.still_recoiling
#_1DE8F4: LDA.w $0EA0,X
#_1DE8F7: BMI .no_movement

#_1DE8F9: LSR A
#_1DE8FA: LSR A
#_1DE8FB: TAY

#_1DE8FC: LDA.b $1A
#_1DE8FE: AND.w .masks,Y
#_1DE901: BNE .no_movement

#_1DE903: LDA.w $0F30,X
#_1DE906: STA.w $0D40,X

#_1DE909: LDA.w $0F40,X
#_1DE90C: STA.w $0D50,X

#_1DE90F: LDA.w $0CD2,X
#_1DE912: BMI .handle_movement

#_1DE914: JSR Sprite_CheckTileCollision_Bank1D
#_1DE917: AND.b #$0F
#_1DE919: BEQ .handle_movement

#_1DE91B: CMP.b #$04
#_1DE91D: BCS .stop_vertical_movement

.stop_horizontal_movement
#_1DE91F: STZ.w $0F40,X
#_1DE922: STZ.w $0D50,X
#_1DE925: BRA .movement_stopped

.stop_vertical_movement
#_1DE927: STZ.w $0F30,X
#_1DE92A: STZ.w $0D40,X

.movement_stopped
#_1DE92D: BRA .no_movement

.handle_movement
#_1DE92F: JSR Sprite_Move_XY_Bank1D

.no_movement
#_1DE932: PLA
#_1DE933: STA.w $0D50,X

#_1DE936: PLA
#_1DE937: STA.w $0D40,X

; !HARDCODED exception for blind
#_1DE93A: LDA.w $0E20,X
#_1DE93D: CMP.b #!SPRITE_CE
#_1DE93F: BEQ .exit

#_1DE941: PLA
#_1DE942: PLA

.exit
#_1DE943: RTS

;---------------------------------------------------------------------------------------------------

.recoil_over
#_1DE944: STZ.w $0EA0,X

#_1DE947: RTS

;===================================================================================================

Sprite_Move_XYZ_Bank1D:
#_1DE948: JSR Sprite_Move_Z_Bank1D

;===================================================================================================

Sprite_Move_XY_Bank1D:
#_1DE94B: JSR Sprite_Move_X_Bank1D
#_1DE94E: JSR Sprite_Move_Y_Bank1D

#_1DE951: RTS

;===================================================================================================

Sprite_Move_X_Bank1D:
#_1DE952: PHX

#_1DE953: TXA
#_1DE954: CLC
#_1DE955: ADC.b #$10
#_1DE957: TAX

#_1DE958: JSR Sprite_Move_Y_Bank1D

#_1DE95B: PLX

#_1DE95C: RTS

;===================================================================================================

Sprite_Move_Y_Bank1D:
#_1DE95D: LDA.w $0D40,X
#_1DE960: BEQ .exit

#_1DE962: ASL A
#_1DE963: ASL A
#_1DE964: ASL A
#_1DE965: ASL A
#_1DE966: CLC
#_1DE967: ADC.w $0D60,X
#_1DE96A: STA.w $0D60,X

#_1DE96D: LDA.w $0D40,X
#_1DE970: PHP

#_1DE971: LSR A
#_1DE972: LSR A
#_1DE973: LSR A
#_1DE974: LSR A

#_1DE975: LDY.b #$00

#_1DE977: PLP
#_1DE978: BPL .positive

#_1DE97A: ORA.b #$F0
#_1DE97C: DEY

.positive
#_1DE97D: ADC.w $0D00,X
#_1DE980: STA.w $0D00,X

#_1DE983: TYA
#_1DE984: ADC.w $0D20,X
#_1DE987: STA.w $0D20,X

.exit
#_1DE98A: RTS

;---------------------------------------------------------------------------------------------------

Sprite_Move_Z_Bank1D:
#_1DE98B: LDA.w $0F80,X
#_1DE98E: ASL A
#_1DE98F: ASL A
#_1DE990: ASL A
#_1DE991: ASL A
#_1DE992: CLC
#_1DE993: ADC.w $0F90,X
#_1DE996: STA.w $0F90,X

#_1DE999: LDA.w $0F80,X
#_1DE99C: PHP

#_1DE99D: LSR A
#_1DE99E: LSR A
#_1DE99F: LSR A
#_1DE9A0: LSR A

#_1DE9A1: PLP
#_1DE9A2: BPL .positive

#_1DE9A4: ORA.b #$F0

.positive
#_1DE9A6: ADC.w $0F70,X
#_1DE9A9: STA.w $0F70,X

#_1DE9AC: RTS

;===================================================================================================

Sprite_PrepOAMCoord_Bank1D:
#_1DE9AD: JSL Sprite_PrepOAMCoord_long
#_1DE9B1: BCC .exit

#_1DE9B3: PLA
#_1DE9B4: PLA

.exit
#_1DE9B5: RTS

;===================================================================================================
; Flashes the screenwhen timer is active
;===================================================================================================
HandleScreenFlash:
#_1DE9B6: LDA.w $0FF9
#_1DE9B9: BEQ .noflash

#_1DE9BB: LDY.b $11
#_1DE9BD: BNE .noflash

#_1DE9BF: DEC.w $0FF9
#_1DE9C2: BNE .do_filter

.restore_palette
#_1DE9C4: JSL Palette_RestoreBGAndHUD

#_1DE9C8: RTL

;---------------------------------------------------------------------------------------------------

.do_filter
#_1DE9C9: AND.b #$01
#_1DE9CB: BEQ .normal_palette

.bright_palette
#_1DE9CD: JSL PaletteFilter_Oversaturation
#_1DE9D1: BRA .done

.normal_palette
#_1DE9D3: JSL Palette_RestoreBGFromFlash

.done
#_1DE9D7: INC.b $15

.noflash
#_1DE9D9: RTL

;===================================================================================================

ExecuteCachedSprites:
#_1DE9DA: LDA.b $1B
#_1DE9DC: BEQ .exit

#_1DE9DE: LDA.b $11
#_1DE9E0: BEQ .exit

#_1DE9E2: CMP.b #$0E
#_1DE9E4: BEQ .exit

#_1DE9E6: LDA.w $0FFA
#_1DE9E9: BEQ .exit

#_1DE9EB: LDX.b #$0F

.next_sprite
#_1DE9ED: STX.w $0FA0

#_1DE9F0: LDA.w $1D00,X
#_1DE9F3: BEQ .inactive

#_1DE9F5: JSR UncacheAndExecuteSprite

.inactive
#_1DE9F8: DEX
#_1DE9F9: BPL .next_sprite

#_1DE9FB: RTL

.exit
#_1DE9FC: STZ.w $0FFA

#_1DE9FF: RTL

;===================================================================================================

UncacheAndExecuteSprite:
#_1DEA00: LDA.w $0DD0,X
#_1DEA03: PHA

#_1DEA04: LDA.w $0E20,X
#_1DEA07: PHA

#_1DEA08: LDA.w $0D10,X
#_1DEA0B: PHA

#_1DEA0C: LDA.w $0D30,X
#_1DEA0F: PHA

#_1DEA10: LDA.w $0D00,X
#_1DEA13: PHA

#_1DEA14: LDA.w $0D20,X
#_1DEA17: PHA

#_1DEA18: LDA.w $0DC0,X
#_1DEA1B: PHA

#_1DEA1C: LDA.w $0D90,X
#_1DEA1F: PHA

#_1DEA20: LDA.w $0EB0,X
#_1DEA23: PHA

#_1DEA24: LDA.w $0F50,X
#_1DEA27: PHA

#_1DEA28: LDA.w $0B89,X
#_1DEA2B: PHA

#_1DEA2C: LDA.w $0DE0,X
#_1DEA2F: PHA

#_1DEA30: LDA.w $0E40,X
#_1DEA33: PHA

#_1DEA34: LDA.w $0F20,X
#_1DEA37: PHA

#_1DEA38: LDA.w $0D80,X
#_1DEA3B: PHA

#_1DEA3C: LDA.w $0E60,X
#_1DEA3F: PHA

#_1DEA40: LDA.w $0DA0,X
#_1DEA43: PHA

#_1DEA44: LDA.w $0DB0,X
#_1DEA47: PHA

#_1DEA48: LDA.w $0E90,X
#_1DEA4B: PHA

#_1DEA4C: LDA.w $0E80,X
#_1DEA4F: PHA

#_1DEA50: LDA.w $0F70,X
#_1DEA53: PHA

#_1DEA54: LDA.w $0DF0,X
#_1DEA57: PHA

#_1DEA58: LDA.l $7FF9C2,X
#_1DEA5C: PHA

#_1DEA5D: LDA.w $0BA0,X
#_1DEA60: PHA

;---------------------------------------------------------------------------------------------------

#_1DEA61: LDA.w $1D00,X
#_1DEA64: STA.w $0DD0,X

#_1DEA67: LDA.w $1D10,X
#_1DEA6A: STA.w $0E20,X

#_1DEA6D: LDA.w $1D20,X
#_1DEA70: STA.w $0D10,X

#_1DEA73: LDA.w $1D30,X
#_1DEA76: STA.w $0D30,X

#_1DEA79: LDA.w $1D40,X
#_1DEA7C: STA.w $0D00,X

#_1DEA7F: LDA.w $1D50,X
#_1DEA82: STA.w $0D20,X

#_1DEA85: LDA.w $1D60,X
#_1DEA88: STA.w $0DC0,X

#_1DEA8B: LDA.w $1D70,X
#_1DEA8E: STA.w $0D90,X

#_1DEA91: LDA.w $1D80,X
#_1DEA94: STA.w $0EB0,X

#_1DEA97: LDA.w $1D90,X
#_1DEA9A: STA.w $0F50,X

#_1DEA9D: LDA.w $1DA0,X
#_1DEAA0: STA.w $0B89,X

#_1DEAA3: LDA.w $1DB0,X
#_1DEAA6: STA.w $0DE0,X

#_1DEAA9: LDA.w $1DC0,X
#_1DEAAC: STA.w $0E40,X

#_1DEAAF: LDA.w $1DD0,X
#_1DEAB2: STA.w $0F20,X

#_1DEAB5: LDA.w $1DE0,X
#_1DEAB8: STA.w $0D80,X

#_1DEABB: LDA.w $1DF0,X
#_1DEABE: STA.w $0E60,X

#_1DEAC1: LDA.l $7FFA5C,X
#_1DEAC5: STA.w $0DA0,X

#_1DEAC8: LDA.l $7FFA6C,X
#_1DEACC: STA.w $0DB0,X

#_1DEACF: LDA.l $7FFA7C,X
#_1DEAD3: STA.w $0E90,X

#_1DEAD6: LDA.l $7FFA8C,X
#_1DEADA: STA.w $0E80,X

#_1DEADD: LDA.l $7FFA9C,X
#_1DEAE1: STA.w $0F70,X

#_1DEAE4: LDA.l $7FFAAC,X
#_1DEAE8: STA.w $0DF0,X

#_1DEAEB: LDA.l $7FFACC,X
#_1DEAEF: STA.l $7FF9C2,X

#_1DEAF3: LDA.l $7FFADC,X
#_1DEAF7: STA.w $0BA0,X

;---------------------------------------------------------------------------------------------------

#_1DEAFA: JSL Sprite_ExecuteSingle_long

#_1DEAFE: LDA.w $0F00,X
#_1DEB01: BEQ .active

#_1DEB03: STZ.w $1D00,X

.active
#_1DEB06: PLA
#_1DEB07: STA.w $0BA0,X

#_1DEB0A: PLA
#_1DEB0B: STA.l $7FF9C2,X

#_1DEB0F: PLA
#_1DEB10: STA.w $0DF0,X

#_1DEB13: PLA
#_1DEB14: STA.w $0F70,X

#_1DEB17: PLA
#_1DEB18: STA.w $0E80,X

#_1DEB1B: PLA
#_1DEB1C: STA.w $0E90,X

#_1DEB1F: PLA
#_1DEB20: STA.w $0DB0,X

#_1DEB23: PLA
#_1DEB24: STA.w $0DA0,X

#_1DEB27: PLA
#_1DEB28: STA.w $0E60,X

#_1DEB2B: PLA
#_1DEB2C: STA.w $0D80,X

#_1DEB2F: PLA
#_1DEB30: STA.w $0F20,X

#_1DEB33: PLA
#_1DEB34: STA.w $0E40,X

#_1DEB37: PLA
#_1DEB38: STA.w $0DE0,X

#_1DEB3B: PLA
#_1DEB3C: STA.w $0B89,X

#_1DEB3F: PLA
#_1DEB40: STA.w $0F50,X

#_1DEB43: PLA
#_1DEB44: STA.w $0EB0,X

#_1DEB47: PLA
#_1DEB48: STA.w $0D90,X

#_1DEB4B: PLA
#_1DEB4C: STA.w $0DC0,X

#_1DEB4F: PLA
#_1DEB50: STA.w $0D20,X

#_1DEB53: PLA
#_1DEB54: STA.w $0D00,X

#_1DEB57: PLA
#_1DEB58: STA.w $0D30,X

#_1DEB5B: PLA
#_1DEB5C: STA.w $0D10,X

#_1DEB5F: PLA
#_1DEB60: STA.w $0E20,X

#_1DEB63: PLA
#_1DEB64: STA.w $0DD0,X

#_1DEB67: RTS

;===================================================================================================
; TODO is this for the opening cutscene?
;===================================================================================================
pool PuppetSoldier

.step
#_1DEB68: db $0B, $04, $00, $07

.oam_a
#_1DEB6C: dw $0800, $0820, $0840, $0860, $0880, $08A0

.oam_b
#_1DEB78: dw $0A20, $0A28, $0A30, $0A38, $0A40, $0A48

pool off

;---------------------------------------------------------------------------------------------------

PuppetSoldier:
#_1DEB84: PHB
#_1DEB85: PHK
#_1DEB86: PLB

#_1DEB87: LDA.b $00
#_1DEB89: STA.w $0D10,X

#_1DEB8C: LDA.b $01
#_1DEB8E: STA.w $0D30,X

#_1DEB91: LDA.b $02
#_1DEB93: STA.w $0D00,X

#_1DEB96: LDA.b $03
#_1DEB98: STA.w $0D20,X

#_1DEB9B: JSL Sprite_Get16BitCoords_long

#_1DEB9F: LDA.b $04
#_1DEBA1: STA.w $0DE0,X
#_1DEBA4: STA.w $0EB0,X

#_1DEBA7: TAY

#_1DEBA8: LDA.w .step,Y
#_1DEBAB: CLC
#_1DEBAC: ADC.b $06
#_1DEBAE: STA.w $0DC0,X

#_1DEBB1: STZ.w $0B89,X

#_1DEBB4: LDA.b $05
#_1DEBB6: ORA.b #$30
#_1DEBB8: STA.w $0F50,X

#_1DEBBB: LDA.b #$10
#_1DEBBD: STA.w $0E60,X

#_1DEBC0: STZ.w $0F70,X

#_1DEBC3: LDY.b #!SPRITE_41

; Useless
; This will always fail.
#_1DEBC5: CMP.b #$39
#_1DEBC7: BEQ .normal_guard

#_1DEBC9: LDY.b #!SPRITE_43

.normal_guard
#_1DEBCB: TYA
#_1DEBCC: STA.w $0E20,X

#_1DEBCF: LDA.b #$07
#_1DEBD1: STA.w $0E40,X

#_1DEBD4: TXA
#_1DEBD5: ASL A
#_1DEBD6: TAY

#_1DEBD7: REP #$20

#_1DEBD9: LDA.w .oam_a,Y
#_1DEBDC: STA.b $90

#_1DEBDE: LDA.w .oam_b,Y
#_1DEBE1: STA.b $92

#_1DEBE3: SEP #$20

#_1DEBE5: JSL Guard_HandleAllAnimation_long

#_1DEBE9: PLB

#_1DEBEA: RTL

;===================================================================================================

Overlord19_ArmosCoordinator:
#_1DEBEB: PHB
#_1DEBEC: PHK
#_1DEBED: PLB

#_1DEBEE: JSR .main

#_1DEBF1: PLB

#_1DEBF2: RTL

;---------------------------------------------------------------------------------------------------

.main
#_1DEBF3: LDA.w $0B30,X
#_1DEBF6: BEQ .timer_done

#_1DEBF8: DEC.w $0B30,X

.timer_done
#_1DEBFB: LDA.w $0B28,X
#_1DEBFE: JSL JumpTableLocal
#_1DEC02: dw ArmosCoordinator_WaitForWakeUp
#_1DEC04: dw ArmosCoordinator_CirclePosition
#_1DEC06: dw ArmosCoordinator_RotateKnights
#_1DEC08: dw ArmosCoordinator_Pinch
#_1DEC0A: dw ArmosCoordinator_RotateKnights
#_1DEC0C: dw ArmosCoordinator_Spread
#_1DEC0E: dw ArmosCoordinator_LineUp
#_1DEC10: dw ArmosCoordinator_ForwardMarch

;===================================================================================================

ArmosCoordinator_WaitForWakeUp:
; !HARDCODED slot checks
#_1DEC12: LDA.w $0D90
#_1DEC15: BEQ .exit

#_1DEC17: LDA.b #$78
#_1DEC19: STA.w $0B08,X

#_1DEC1C: LDA.b #$FF
#_1DEC1E: STA.w $0B40,X

#_1DEC21: LDA.b #$40
#_1DEC23: STA.w $0B0A

#_1DEC26: LDA.b #$C0
#_1DEC28: STA.w $0B08

#_1DEC2B: LDA.b #$01
#_1DEC2D: STA.w $0B09

#_1DEC30: JSR ArmosCoordinator_RotateKnights

.exit
#_1DEC33: RTS

;===================================================================================================

ArmosCoordinator_CirclePosition:
#_1DEC34: JSR ArmosCoordinator_CheckKnights
#_1DEC37: BCC .exit

#_1DEC39: INC.w $0B28,X

#_1DEC3C: LDA.b #$FF
#_1DEC3E: STA.w $0B30,X

.exit
#_1DEC41: RTS

;===================================================================================================

pool ArmosCoordinator_LineUp

.position_x
#_1DEC42: db $31, $4D, $69, $83, $9F, $BB

pool off

;---------------------------------------------------------------------------------------------------

ArmosCoordinator_LineUp:
#_1DEC48: LDA.w $0B30,X
#_1DEC4B: BNE .exit

#_1DEC4D: JSR ArmosCoordinator_DisableCoercion

#_1DEC50: LDY.b #$05

.next
#_1DEC52: LDA.w .position_x,Y
#_1DEC55: STA.w $0B10,Y

#_1DEC58: LDA.b #$30
#_1DEC5A: STA.w $0B30,Y

#_1DEC5D: DEY
#_1DEC5E: BPL .next

#_1DEC60: INC.w $0B28,X

#_1DEC63: LDA.b #$FF
#_1DEC65: STA.w $0B30,X

.exit
#_1DEC68: RTS

;===================================================================================================

ArmosCoordinator_ForwardMarch:
#_1DEC69: LDA.w $0B30,X
#_1DEC6C: BNE .exit

#_1DEC6E: LDY.b #$05

.next
#_1DEC70: LDA.w $0B30,Y

#_1DEC73: INC A
#_1DEC74: STA.w $0B30,Y

#_1DEC77: CPY.b #$00 ; !USELESS

#_1DEC79: CMP.b #$C0
#_1DEC7B: BNE .still_marching

#_1DEC7D: LDA.b #$01
#_1DEC7F: STA.w $0B28,X

#_1DEC82: LDA.w $0B40,X
#_1DEC85: EOR.b #$FF
#_1DEC87: INC A
#_1DEC88: STA.w $0B40,X

#_1DEC8B: JSR ArmosCoordinator_DisableCoercion
#_1DEC8E: JSR ArmosCoordinator_Rotate

#_1DEC91: RTS

.still_marching
#_1DEC92: DEY
#_1DEC93: BPL .next

.exit
#_1DEC95: RTS

;===================================================================================================

ArmosCoordinator_Pinch:
#_1DEC96: LDA.w $0B0A
#_1DEC99: DEC A
#_1DEC9A: STA.w $0B0A

#_1DEC9D: CMP.b #$20
#_1DEC9F: BNE .pinching

#_1DECA1: INC.w $0B28,X

#_1DECA4: LDA.b #$40
#_1DECA6: STA.w $0B30,X

.pinching
#_1DECA9: BRA ArmosCoordinator_Rotate

;===================================================================================================

ArmosCoordinator_Spread:
#_1DECAB: LDA.w $0B0A
#_1DECAE: INC A
#_1DECAF: STA.w $0B0A

#_1DECB2: CMP.b #$40
#_1DECB4: BNE .spreading

#_1DECB6: INC.w $0B28,X
#_1DECB9: LDA.b #$40
#_1DECBB: STA.w $0B30,X

.spreading
#_1DECBE: BRA ArmosCoordinator_Rotate

;===================================================================================================

pool ArmosCoordinator_Rotate

.angle_step
#_1DECC0: dw $0000, $01A9, $0154, $00FF, $00AA, $0055

pool off

;---------------------------------------------------------------------------------------------------

ArmosCoordinator_RotateKnights:
#_1DECCC: LDA.w $0B30,X
#_1DECCF: BNE ArmosCoordinator_Rotate

#_1DECD1: INC.w $0B28,X

;===================================================================================================

ArmosCoordinator_Rotate:
#_1DECD4: LDY.b #$00

#_1DECD6: LDA.w $0B40,X
#_1DECD9: BPL .delay

#_1DECDB: DEY

.delay
#_1DECDC: CLC
#_1DECDD: ADC.w $0B08
#_1DECE0: STA.w $0B08

#_1DECE3: TYA
#_1DECE4: ADC.w $0B09
#_1DECE7: STA.w $0B09

#_1DECEA: STZ.w $0FB5

.next_knight
#_1DECED: LDA.w $0FB5
#_1DECF0: PHA

#_1DECF1: ASL A
#_1DECF2: TAY

#_1DECF3: REP #$20

#_1DECF5: LDA.w $0B08
#_1DECF8: CLC
#_1DECF9: ADC.w .angle_step,Y
#_1DECFC: STA.b $00

#_1DECFE: SEP #$20

#_1DED00: PLY

#_1DED01: LDA.w $0B0A
#_1DED04: STA.b $0F

#_1DED06: PHX

#_1DED07: REP #$30

#_1DED09: LDA.b $00
#_1DED0B: AND.w #$00FF
#_1DED0E: ASL A
#_1DED0F: TAX

#_1DED10: LDA.l SmoothCurve,X
#_1DED14: STA.b $04

#_1DED16: LDA.b $00
#_1DED18: CLC
#_1DED19: ADC.w #$0080
#_1DED1C: STA.b $02

#_1DED1E: AND.w #$00FF
#_1DED21: ASL A
#_1DED22: TAX

#_1DED23: LDA.l SmoothCurve,X
#_1DED27: STA.b $06

#_1DED29: SEP #$30

#_1DED2B: PLX

#_1DED2C: LDA.b $04
#_1DED2E: STA.w CPUMULTA

#_1DED31: LDA.b $0F

#_1DED33: LDY.b $05
#_1DED35: BNE .nonzero_x

#_1DED37: STA.w CPUMULTB

#_1DED3A: NOP ; 8 NOP
#_1DED3B: NOP
#_1DED3C: NOP
#_1DED3D: NOP
#_1DED3E: NOP
#_1DED3F: NOP
#_1DED40: NOP
#_1DED41: NOP

#_1DED42: ASL.w CPUPRODUCTL ; carry = round up
#_1DED45: LDA.w CPUPRODUCTH
#_1DED48: ADC.b #$00

.nonzero_x
#_1DED4A: LSR.b $01
#_1DED4C: BCC .sign_correct_x

#_1DED4E: EOR.b #$FF
#_1DED50: INC A

.sign_correct_x
#_1DED51: STZ.b $0A

#_1DED53: CMP.b #$00
#_1DED55: BPL .positive_x

#_1DED57: DEC.b $0A

.positive_x
#_1DED59: CLC
#_1DED5A: ADC.w $0B08,X

#_1DED5D: LDY.w $0FB5

#_1DED60: STA.w $0B10,Y

#_1DED63: LDA.w $0B10,X
#_1DED66: ADC.b $0A
#_1DED68: STA.w $0B20,Y

#_1DED6B: LDA.b $06
#_1DED6D: STA.w CPUMULTA

#_1DED70: LDA.b $0F

#_1DED72: LDY.b $07
#_1DED74: BNE .nonzero_y

#_1DED76: STA.w CPUMULTB

#_1DED79: NOP ; 8 NOP
#_1DED7A: NOP
#_1DED7B: NOP
#_1DED7C: NOP
#_1DED7D: NOP
#_1DED7E: NOP
#_1DED7F: NOP
#_1DED80: NOP

#_1DED81: ASL.w CPUPRODUCTL ; carry = round up
#_1DED84: LDA.w CPUPRODUCTH
#_1DED87: ADC.b #$00

.nonzero_y
#_1DED89: LSR.b $03
#_1DED8B: BCC .sign_correct_y

#_1DED8D: EOR.b #$FF
#_1DED8F: INC A

.sign_correct_y
#_1DED90: STZ.b $0A

#_1DED92: CMP.b #$00
#_1DED94: BPL .positive_y

#_1DED96: DEC.b $0A

.positive_y
#_1DED98: CLC
#_1DED99: ADC.w $0B18,X

#_1DED9C: LDY.w $0FB5

#_1DED9F: STA.w $0B30,Y

#_1DEDA2: LDA.w $0B20,X
#_1DEDA5: ADC.b $0A
#_1DEDA7: STA.w $0B40,Y

#_1DEDAA: INC.w $0FB5

#_1DEDAD: LDA.w $0FB5
#_1DEDB0: CMP.b #$06
#_1DEDB2: BEQ .exit

#_1DEDB4: JMP.w .next_knight

.exit
#_1DEDB7: RTS

;===================================================================================================
; Exits with carry clear set to indicate all knights are good to go.
;===================================================================================================
ArmosCoordinator_CheckKnights:
#_1DEDB8: LDY.b #$05

.next
#_1DEDBA: LDA.w $0DD0,Y
#_1DEDBD: BEQ .is_good

#_1DEDBF: LDA.w $0D80,Y
#_1DEDC2: BNE .is_good

#_1DEDC4: CLC

#_1DEDC5: RTS

.is_good
#_1DEDC6: DEY
#_1DEDC7: BPL .next

#_1DEDC9: SEC

#_1DEDCA: RTS

;===================================================================================================

ArmosCoordinator_DisableCoercion:
#_1DEDCB: LDY.b #$05

.next
#_1DEDCD: LDA.b #$00
#_1DEDCF: STA.w $0D80,Y

#_1DEDD2: DEY
#_1DEDD3: BPL .next

#_1DEDD5: RTS

;===================================================================================================

Sprite_70_KingHelmasaurFireball:
#_1DEDD6: PHB
#_1DEDD7: PHK
#_1DEDD8: PLB

#_1DEDD9: JSR .main

#_1DEDDC: PLB

#_1DEDDD: RTL

;---------------------------------------------------------------------------------------------------

.char
#_1DEDDE: db $CC, $CC, $CA

.prop
#_1DEDE1: db $33, $73

;---------------------------------------------------------------------------------------------------

.main
#_1DEDE3: INC.w $0E80,X

#_1DEDE6: LDA.w $0E80,X
#_1DEDE9: LSR A
#_1DEDEA: LSR A
#_1DEDEB: AND.b #$01
#_1DEDED: TAY

#_1DEDEE: LDA.w .prop,Y
#_1DEDF1: STA.b $05

#_1DEDF3: LDY.b #$00

#_1DEDF5: LDA.w $0D10,X
#_1DEDF8: SEC
#_1DEDF9: SBC.b $E2
#_1DEDFB: STA.b ($90),Y

; Don't let fire balls get too far off screen.
; Usually handled by OAM allotment routines.
#_1DEDFD: CLC
#_1DEDFE: ADC.b #$20
#_1DEE00: CMP.b #$40
#_1DEE02: BCC .delete_self

#_1DEE04: LDA.w $0D00,X
#_1DEE07: SEC
#_1DEE08: SBC.b $E8
#_1DEE0A: INY
#_1DEE0B: STA.b ($90),Y

#_1DEE0D: CLC
#_1DEE0E: ADC.b #$10
#_1DEE10: CMP.b #$20
#_1DEE12: BCS .on_screen

.delete_self
#_1DEE14: STZ.w $0DD0,X

#_1DEE17: RTS

;---------------------------------------------------------------------------------------------------

.on_screen
#_1DEE18: PHX

#_1DEE19: LDA.w $0DC0,X
#_1DEE1C: TAX

#_1DEE1D: LDA.w .char,X

#_1DEE20: PLX

#_1DEE21: INY
#_1DEE22: STA.b ($90),Y

#_1DEE24: LDA.b $05
#_1DEE26: INY
#_1DEE27: STA.b ($90),Y

#_1DEE29: LDA.b #$02
#_1DEE2B: STA.b ($92)

;---------------------------------------------------------------------------------------------------

#_1DEE2D: JSR Sprite_CheckIfActive_Bank1D

; Why is everything with these manual?
#_1DEE30: TXA
#_1DEE31: EOR.b $1A
#_1DEE33: AND.b #$03
#_1DEE35: BNE .no_damage

#_1DEE37: REP #$20

#_1DEE39: LDA.b $22
#_1DEE3B: SEC
#_1DEE3C: SBC.w $0FD8
#_1DEE3F: CLC
#_1DEE40: ADC.w #$0008

#_1DEE43: CMP.w #$0010
#_1DEE46: BCS .no_damage

#_1DEE48: LDA.b $20
#_1DEE4A: SEC
#_1DEE4B: SBC.w $0FDA
#_1DEE4E: CLC
#_1DEE4F: ADC.w #$0010

#_1DEE52: CMP.w #$0010
#_1DEE55: BCS .no_damage

#_1DEE57: SEP #$20

#_1DEE59: JSL Sprite_AttemptDamageToLinkPlusRecoil_long

;---------------------------------------------------------------------------------------------------

.no_damage
#_1DEE5D: SEP #$20

#_1DEE5F: LDA.w $0D80,X

; DISGUSTING!
#_1DEE62: CMP.b #$04
#_1DEE64: BEQ HelmasaurFireball_Move

#_1DEE66: DEC A
#_1DEE67: BEQ HelmasaurFireball_MoveDown

#_1DEE69: DEC A
#_1DEE6A: BEQ HelmasaurFireball_SplitInto3

#_1DEE6C: DEC A
#_1DEE6D: BEQ HelmasaurFireball_SplitInto4

#_1DEE6F: JMP.w HelmasaurFireball_UselessJump

;===================================================================================================

HelmasaurFireball_UselessJump:
#_1DEE72: LDA.w $0DF0,X
#_1DEE75: BNE .delay

#_1DEE77: LDA.b #$12
#_1DEE79: STA.w $0DF0,X

#_1DEE7C: INC.w $0D80,X

#_1DEE7F: LDA.b #$24
#_1DEE81: STA.w $0D40,X

.delay
#_1DEE84: RTS

;===================================================================================================

HelmasaurFireball_MoveDown:
#_1DEE85: LDA.w $0DF0,X
#_1DEE88: BNE .delay

#_1DEE8A: INC.w $0D80,X

#_1DEE8D: LDA.b #$1F
#_1DEE8F: STA.w $0DF0,X

.delay
#_1DEE92: DEC.w $0D40,X
#_1DEE95: DEC.w $0D40,X

#_1DEE98: JSR Sprite_Move_Y_Bank1D

#_1DEE9B: RTS

;===================================================================================================

pool HelmasaurFireball_SplitInto3

.draw
#_1DEE9C: db $02, $02, $01, $00

pool off

;---------------------------------------------------------------------------------------------------

HelmasaurFireball_SplitInto3:
#_1DEEA0: LDA.w $0DF0,X
#_1DEEA3: BNE .delay

#_1DEEA5: JMP.w HelmasaurFireball_DoSplit3

;---------------------------------------------------------------------------------------------------

.delay
#_1DEEA8: LSR A
#_1DEEA9: LSR A
#_1DEEAA: LSR A
#_1DEEAB: TAY

#_1DEEAC: LDA.w .draw,Y
#_1DEEAF: STA.w $0DC0,X

#_1DEEB2: RTS

;===================================================================================================

HelmasaurFireball_SplitInto4:
#_1DEEB3: LDA.w $0DF0,X
#_1DEEB6: BNE .delay

#_1DEEB8: JMP.w HelmasaurFireball_DoSplit4

.delay
#_1DEEBB: LDA.w $0EB0,X
#_1DEEBE: CMP.b #$14
#_1DEEC0: BCS .exit

#_1DEEC2: INC.w $0EB0,X

#_1DEEC5: JSR Sprite_Move_XY_Bank1D

.exit
#_1DEEC8: RTS

;===================================================================================================

HelmasaurFireball_Move:
#_1DEEC9: JSR Sprite_Move_XY_Bank1D

#_1DEECC: RTS

;===================================================================================================

pool HelmasaurFireball_DoSplit3

.speed_x
#_1DEECD: db   0,  28, -28

.speed_y
#_1DEED0: db -32,  24,  24

pool off

;---------------------------------------------------------------------------------------------------

HelmasaurFireball_DoSplit3:
#_1DEED3: LDA.b #!SFX3_36
#_1DEED5: JSL SpriteSFX_QueueSFX3WithPan

#_1DEED9: STZ.w $0DD0,X

#_1DEEDC: LDA.b #$02
#_1DEEDE: STA.w $0FB5

#_1DEEE1: JSL GetRandomNumber
#_1DEEE5: STA.w $0FB6

.next
#_1DEEE8: LDA.b #!SPRITE_70
#_1DEEEA: JSL Sprite_SpawnDynamically
#_1DEEEE: BMI .spawn_failed

;---------------------------------------------------------------------------------------------------

#_1DEEF0: JSL Sprite_SetSpawnedCoordinates

#_1DEEF4: PHX

#_1DEEF5: LDX.w $0FB5

#_1DEEF8: LDA.w .speed_x,X
#_1DEEFB: STA.w $0D50,Y

#_1DEEFE: LDA.w .speed_y,X
#_1DEF01: STA.w $0D40,Y

#_1DEF04: LDA.b #$03
#_1DEF06: STA.w $0D80,Y
#_1DEF09: STA.w $0BA0,Y

#_1DEF0C: LDA.w $0FB6
#_1DEF0F: AND.b #$03
#_1DEF11: CLC
#_1DEF12: ADC.w $0FB5
#_1DEF15: TAX

#_1DEF16: LDA.w .timers,X
#_1DEF19: STA.w $0DF0,Y

#_1DEF1C: LDA.b #$00
#_1DEF1E: STA.w $0EB0,Y

#_1DEF21: LDA.b #$01
#_1DEF23: STA.w $0DC0,Y

#_1DEF26: PLX

;---------------------------------------------------------------------------------------------------

.spawn_failed
#_1DEF27: DEC.w $0FB5
#_1DEF2A: BPL .next

#_1DEF2C: RTS

;---------------------------------------------------------------------------------------------------

.timers
#_1DEF2D: db 32,  80, 128,  32
#_1DEF31: db 80, 128,  32,  80

;===================================================================================================

pool HelmasaurFireball_DoSplit4

.speed_x
#_1DEF35: db  32,  32, -32, -32

.speed_y
#_1DEF39: db -32,  32, -32,  32

pool off

;---------------------------------------------------------------------------------------------------

HelmasaurFireball_DoSplit4:
#_1DEF3D: LDA.b #!SFX3_36
#_1DEF3F: JSL SpriteSFX_QueueSFX3WithPan

#_1DEF43: STZ.w $0DD0,X

#_1DEF46: LDA.b #$03
#_1DEF48: STA.w $0FB5

.next
#_1DEF4B: LDA.b #!SPRITE_70
#_1DEF4D: JSL Sprite_SpawnDynamically
#_1DEF51: BMI .spawn_failed

#_1DEF53: JSL Sprite_SetSpawnedCoordinates

#_1DEF57: PHX
#_1DEF58: LDX.w $0FB5

#_1DEF5B: LDA.w .speed_x,X
#_1DEF5E: STA.w $0D50,Y

#_1DEF61: LDA.w .speed_y,X
#_1DEF64: STA.w $0D40,Y

#_1DEF67: PLX

#_1DEF68: LDA.b #$04
#_1DEF6A: STA.w $0D80,Y
#_1DEF6D: STA.w $0BA0,Y

.spawn_failed
#_1DEF70: DEC.w $0FB5
#_1DEF73: BPL .next

#_1DEF75: RTS

;===================================================================================================

RedArmosCrusher:
#_1DEF76: PHB
#_1DEF77: PHK
#_1DEF78: PLB

#_1DEF79: JSR .main

#_1DEF7C: PLB

#_1DEF7D: RTL

;---------------------------------------------------------------------------------------------------

.main
#_1DEF7E: LDA.b #$07
#_1DEF80: STA.w $0F50,X

#_1DEF83: STZ.w $011C
#_1DEF86: STZ.w $011D

#_1DEF89: LDA.w $0F10,X
#_1DEF8C: BEQ .no_shake

#_1DEF8E: AND.b #$01
#_1DEF90: TAY

#_1DEF91: LDA.w Sprite_ApplyConveyor_shake_x,Y
#_1DEF94: STA.w $011C

#_1DEF97: LDA.w Sprite_ApplyConveyor_shake_y,Y
#_1DEF9A: STA.w $011D

.no_shake
#_1DEF9D: LDA.w $0ED0,X
#_1DEFA0: JSL JumpTableLocal
#_1DEFA4: dw RedArmosCrusher_TargetLink
#_1DEFA6: dw RedArmosCrusher_Jump
#_1DEFA8: dw RedArmosCrusher_Hover
#_1DEFAA: dw RedArmosCrusher_Slam

;===================================================================================================

RedArmosCrusher_TargetLink:
#_1DEFAC: JSR Sprite_CheckDamageToAndFromLink_Bank1D

#_1DEFAF: LDA.w $0DF0,X
#_1DEFB2: ORA.w $0F70,X
#_1DEFB5: BNE .exit

#_1DEFB7: LDA.b #$20
#_1DEFB9: JSL Sprite_ApplySpeedTowardsLink_long

#_1DEFBD: LDA.b #$20
#_1DEFBF: STA.w $0F80,X

#_1DEFC2: INC.w $0ED0,X

#_1DEFC5: LDA.b $22
#_1DEFC7: STA.w $0DA0,X

#_1DEFCA: LDA.b $23
#_1DEFCC: STA.w $0DB0,X

#_1DEFCF: LDA.b $20
#_1DEFD1: STA.w $0E90,X

#_1DEFD4: LDA.b $21
#_1DEFD6: STA.w $0EB0,X

#_1DEFD9: LDA.b #!SFX2_20
#_1DEFDB: JSL SpriteSFX_QueueSFX2WithPan

.exit
#_1DEFDF: RTS

;===================================================================================================

RedArmosCrusher_Jump:
#_1DEFE0: LDA.w $0F80,X
#_1DEFE3: CLC
#_1DEFE4: ADC.b #$03
#_1DEFE6: STA.w $0F80,X

#_1DEFE9: JSR Sprite_CheckTileCollision_Bank1D
#_1DEFEC: BNE .tile_collision

;---------------------------------------------------------------------------------------------------

#_1DEFEE: JSL Sprite_Get16BitCoords_long

#_1DEFF2: LDA.w $0DA0,X
#_1DEFF5: STA.b $00

#_1DEFF7: LDA.w $0DB0,X
#_1DEFFA: STA.b $01

#_1DEFFC: LDA.w $0E90,X
#_1DEFFF: STA.b $02

#_1DF001: LDA.w $0EB0,X
#_1DF004: STA.b $03

#_1DF006: REP #$20

#_1DF008: LDA.b $00
#_1DF00A: SEC
#_1DF00B: SBC.w $0FD8
#_1DF00E: CLC
#_1DF00F: ADC.w #$0010

#_1DF012: CMP.w #$0020
#_1DF015: BCS .not_close_enough

#_1DF017: LDA.b $02
#_1DF019: SEC
#_1DF01A: SBC.w $0FDA
#_1DF01D: CLC
#_1DF01E: ADC.w #$0010

#_1DF021: CMP.w #$0020
#_1DF024: BCS .not_close_enough

#_1DF026: SEP #$20

;---------------------------------------------------------------------------------------------------

.tile_collision
#_1DF028: INC.w $0ED0,X

#_1DF02B: LDA.b #$10
#_1DF02D: STA.w $0DF0,X

#_1DF030: STZ.w $0D50,X
#_1DF033: STZ.w $0D40,X

;---------------------------------------------------------------------------------------------------

.not_close_enough
#_1DF036: SEP #$20

#_1DF038: RTS

;===================================================================================================

RedArmosCrusher_Hover:
#_1DF039: STZ.w $0F80,X

#_1DF03C: LDA.w $0DF0,X
#_1DF03F: BNE .exit

#_1DF041: INC.w $0ED0,X

.exit
#_1DF044: RTS

;===================================================================================================

RedArmosCrusher_Slam:
#_1DF045: LDA.b #$98
#_1DF047: STA.w $0F80,X

#_1DF04A: LDA.w $0F70,X
#_1DF04D: BMI .exit

#_1DF04F: LDA.b #$20
#_1DF051: STA.w $0DF0,X

#_1DF054: STZ.w $0ED0,X

#_1DF057: LDA.b #!SFX2_0C
#_1DF059: JSL SpriteSFX_QueueSFX2WithPan

#_1DF05D: LDA.b #$20
#_1DF05F: STA.w $0F10,X

.exit
#_1DF062: RTS

;===================================================================================================

Sprite_40_LightningGate:
#_1DF063: PHB
#_1DF064: PHK
#_1DF065: PLB

#_1DF066: JSR .main

#_1DF069: PLB

#_1DF06A: RTL

;---------------------------------------------------------------------------------------------------

.main
#_1DF06B: JSR SpriteDraw_LightningGate

#_1DF06E: LDA.w $0DC0,X
#_1DF071: CMP.b #$04
#_1DF073: BEQ .no_zap

#_1DF075: LDA.b $1A
#_1DF077: LSR A
#_1DF078: AND.b #$03
#_1DF07A: STA.w $0DC0,X

#_1DF07D: JSR Sprite_CheckIfActive_Bank1D

#_1DF080: JSL Sprite_CheckDamageFromLink_long
#_1DF084: BCC .dont_zap_from_attack

;---------------------------------------------------------------------------------------------------

; mastersword or above means don't zap
#_1DF086: LDA.l $7EF359
#_1DF08A: CMP.b #$02
#_1DF08C: BCS .dont_zap_from_attack

#_1DF08E: STZ.w $0EF0,X

#_1DF091: JSL Sprite_AttemptDamageToLinkPlusRecoil_long

#_1DF095: LDA.w $031F
#_1DF098: BNE .dont_zap_from_attack

#_1DF09A: LDA.b #$40
#_1DF09C: STA.w $0360

;---------------------------------------------------------------------------------------------------

.dont_zap_from_attack
#_1DF09F: REP #$20

#_1DF0A1: LDA.b $20
#_1DF0A3: SEC
#_1DF0A4: SBC.w $0FDA
#_1DF0A7: CLC
#_1DF0A8: ADC.w #$0008

#_1DF0AB: CMP.w #$0018
#_1DF0AE: BCS .no_zap

#_1DF0B0: LDA.b $22
#_1DF0B2: SEC
#_1DF0B3: SBC.w $0FD8
#_1DF0B6: CLC
#_1DF0B7: ADC.w #$0020

#_1DF0BA: CMP.w #$0040
#_1DF0BD: BCS .no_zap

#_1DF0BF: SEP #$20

#_1DF0C1: LDA.b $27
#_1DF0C3: DEC A
#_1DF0C4: BPL .no_zap

#_1DF0C6: LDA.b #$40
#_1DF0C8: STA.w $0360

#_1DF0CB: LDA.b #$0C
#_1DF0CD: STA.b $46

#_1DF0CF: LDA.b #$01
#_1DF0D1: STA.b $4D

#_1DF0D3: LDA.b #$02
#_1DF0D5: STA.w $0373

#_1DF0D8: STZ.b $28

#_1DF0DA: LDA.b #$30
#_1DF0DC: STA.b $27

.no_zap
#_1DF0DE: SEP #$20

#_1DF0E0: RTS

;===================================================================================================

pool SpriteDraw_LightningGate

.oam_groups
; group00
#_1DF0E1: dw   0,   0 : db $E8, $00, $00, $02
#_1DF0E9: dw -29,   3 : db $CA, $00, $00, $00
#_1DF0F1: dw -29,  11 : db $DA, $00, $00, $00
#_1DF0F9: dw  37,   3 : db $CA, $40, $00, $00
#_1DF101: dw  37,  11 : db $DA, $40, $00, $00
#_1DF109: dw -24,  -2 : db $E6, $00, $00, $02
#_1DF111: dw  -8,  -2 : db $E6, $00, $00, $02
#_1DF119: dw   8,  -2 : db $E6, $40, $00, $02
#_1DF121: dw  24,  -2 : db $E6, $40, $00, $02

; group01
#_1DF129: dw   0,   0 : db $CC, $00, $00, $02
#_1DF131: dw -29,   3 : db $CB, $00, $00, $00
#_1DF139: dw -29,  11 : db $DB, $00, $00, $00
#_1DF141: dw  37,   3 : db $CB, $40, $00, $00
#_1DF149: dw  37,  11 : db $DB, $40, $00, $00
#_1DF151: dw   0,   0 : db $CC, $00, $00, $02
#_1DF159: dw   0,   0 : db $CC, $00, $00, $02
#_1DF161: dw   0,   0 : db $CC, $00, $00, $02
#_1DF169: dw   0,   0 : db $CC, $00, $00, $02

; group02
#_1DF171: dw   0,   0 : db $CC, $00, $00, $02
#_1DF179: dw -29,   3 : db $CB, $00, $00, $00
#_1DF181: dw -29,  11 : db $DB, $00, $00, $00
#_1DF189: dw  37,   3 : db $CB, $40, $00, $00
#_1DF191: dw  37,  11 : db $DB, $40, $00, $00
#_1DF199: dw -24,  -2 : db $E6, $80, $00, $02
#_1DF1A1: dw  -8,  -2 : db $E6, $80, $00, $02
#_1DF1A9: dw   8,  -2 : db $E6, $C0, $00, $02
#_1DF1B1: dw  24,  -2 : db $E6, $C0, $00, $02

; group03
#_1DF1B9: dw   0,   0 : db $E8, $00, $00, $02
#_1DF1C1: dw -29,   3 : db $CA, $00, $00, $00
#_1DF1C9: dw -29,  11 : db $DA, $00, $00, $00
#_1DF1D1: dw  37,   3 : db $CA, $40, $00, $00
#_1DF1D9: dw  37,  11 : db $DA, $40, $00, $00
#_1DF1E1: dw   0,   0 : db $E8, $00, $00, $02
#_1DF1E9: dw   0,   0 : db $E8, $00, $00, $02
#_1DF1F1: dw   0,   0 : db $E8, $00, $00, $02
#_1DF1F9: dw   0,   0 : db $E8, $00, $00, $02

; group04
#_1DF201: dw -29,   3 : db $CB, $00, $00, $00
#_1DF209: dw -29,  11 : db $DB, $00, $00, $00
#_1DF211: dw  37,   3 : db $CB, $40, $00, $00
#_1DF219: dw  37,  11 : db $DB, $40, $00, $00
#_1DF221: dw  37,  11 : db $DB, $40, $00, $00
#_1DF229: dw  37,  11 : db $DB, $40, $00, $00
#_1DF231: dw  37,  11 : db $DB, $40, $00, $00
#_1DF239: dw  37,  11 : db $DB, $40, $00, $00
#_1DF241: dw  37,  11 : db $DB, $40, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_LightningGate:
#_1DF249: LDA.b #$00
#_1DF24B: XBA
#_1DF24C: LDA.w $0DC0,X

#_1DF24F: REP #$20

#_1DF251: ASL A ; x8
#_1DF252: ASL A
#_1DF253: ASL A
#_1DF254: STA.b $00

#_1DF256: ASL A ; 64
#_1DF257: ASL A
#_1DF258: ASL A
#_1DF259: CLC
#_1DF25A: ADC.b $00 ; x72 total

#_1DF25C: ADC.w #.oam_groups
#_1DF25F: STA.b $08

#_1DF261: LDA.w $0FDA
#_1DF264: CLC
#_1DF265: ADC.w #$0008
#_1DF268: STA.w $0FDA

#_1DF26B: SEP #$20

#_1DF26D: LDA.b #$09
#_1DF26F: JSR Sprite_DrawMultiple_Bank1D
#_1DF272: JSL Sprite_Get16BitCoords_long

#_1DF276: RTS

;===================================================================================================

SpritePrep_MiniMoldorm:
#_1DF277: PHX

#_1DF278: TXY

#_1DF279: LDA.l SpriteSlotToSegmentOffset,X
#_1DF27D: TAX

#_1DF27E: LDA.b #$1F
#_1DF280: STA.b $00

.next_segment
#_1DF282: LDA.w $0D10,Y
#_1DF285: STA.l $7FFC00,X

#_1DF289: LDA.w $0D30,Y
#_1DF28C: STA.l $7FFC80,X

#_1DF290: LDA.w $0D00,Y
#_1DF293: STA.l $7FFD00,X

#_1DF297: LDA.w $0D20,Y
#_1DF29A: STA.l $7FFD80,X

#_1DF29E: INX

#_1DF29F: DEC.b $00
#_1DF2A1: BPL .next_segment

#_1DF2A3: PLX

#_1DF2A4: RTL

;===================================================================================================

pool SpriteDraw_Antfairy

.oam_groups
; group00
#_1DF2A5: dw   4,   2 : db $E1, $02, $00, $00
#_1DF2AD: dw   4,  -3 : db $E3, $02, $00, $00
#_1DF2B5: dw  -1,   2 : db $E3, $02, $00, $00
#_1DF2BD: dw   9,   2 : db $E3, $02, $00, $00
#_1DF2C5: dw   4,   7 : db $E3, $02, $00, $00

; group01
#_1DF2CD: dw   4,   2 : db $E1, $02, $00, $00
#_1DF2D5: dw   3,  -3 : db $E3, $02, $00, $00
#_1DF2DD: dw   9,   1 : db $E3, $02, $00, $00
#_1DF2E5: dw  -1,   3 : db $E3, $02, $00, $00
#_1DF2ED: dw   5,   7 : db $E3, $02, $00, $00

; group02
#_1DF2F5: dw   4,   2 : db $E1, $02, $00, $00
#_1DF2FD: dw   1,  -3 : db $E3, $02, $00, $00
#_1DF305: dw   9,  -1 : db $E3, $02, $00, $00
#_1DF30D: dw  -1,   5 : db $E3, $02, $00, $00
#_1DF315: dw   7,   7 : db $E3, $02, $00, $00

; group03
#_1DF31D: dw   4,   2 : db $E1, $02, $00, $00
#_1DF325: dw   0,  -2 : db $E3, $02, $00, $00
#_1DF32D: dw   8,  -2 : db $E3, $02, $00, $00
#_1DF335: dw   0,   6 : db $E3, $02, $00, $00
#_1DF33D: dw   8,   6 : db $E3, $02, $00, $00

; group04
#_1DF345: dw   4,   2 : db $E1, $02, $00, $00
#_1DF34D: dw   7,  -3 : db $E3, $02, $00, $00
#_1DF355: dw  -1,  -1 : db $E3, $02, $00, $00
#_1DF35D: dw   9,   5 : db $E3, $02, $00, $00
#_1DF365: dw   1,   7 : db $E3, $02, $00, $00

; group05
#_1DF36D: dw   4,   2 : db $E1, $02, $00, $00
#_1DF375: dw   5,  -3 : db $E3, $02, $00, $00
#_1DF37D: dw  -1,   1 : db $E3, $02, $00, $00
#_1DF385: dw   9,   3 : db $E3, $02, $00, $00
#_1DF38D: dw   3,   7 : db $E3, $02, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Antfairy:
#_1DF395: PHB
#_1DF396: PHK
#_1DF397: PLB

#_1DF398: INC.w $0E80,X

#_1DF39B: LDA.w $0E80,X
#_1DF39E: AND.b #$01
#_1DF3A0: ORA.w $0011
#_1DF3A3: ORA.w $0FC1
#_1DF3A6: BNE .continue

#_1DF3A8: INC.w $0DC0,X

#_1DF3AB: LDA.w $0DC0,X
#_1DF3AE: CMP.b #$06
#_1DF3B0: BNE .continue

; reset animation step
#_1DF3B2: STZ.w $0DC0,X

.continue
#_1DF3B5: LDA.b #$00
#_1DF3B7: XBA
#_1DF3B8: LDA.w $0DC0,X

#_1DF3BB: REP #$20

#_1DF3BD: ASL A ; x8
#_1DF3BE: ASL A
#_1DF3BF: ASL A
#_1DF3C0: STA.b $00

#_1DF3C2: ASL A ; x32
#_1DF3C3: ASL A
#_1DF3C4: ADC.b $00 ; x40 total

#_1DF3C6: ADC.w #.oam_groups
#_1DF3C9: STA.b $08

#_1DF3CB: SEP #$20

#_1DF3CD: LDA.b #$05
#_1DF3CF: JSR Sprite_DrawMultiple_Bank1D

#_1DF3D2: PLB

#_1DF3D3: RTL

;===================================================================================================

Toppo_Flustered:
#_1DF3D4: PHB
#_1DF3D5: PHK
#_1DF3D6: PLB

#_1DF3D7: LDA.b #$82
#_1DF3D9: STA.w $0E40,X
#_1DF3DC: STA.w $0BA0,X

#_1DF3DF: LDA.b #$49
#_1DF3E1: STA.w $0E60,X

#_1DF3E4: LDA.w $0E30,X
#_1DF3E7: BNE .caught

;---------------------------------------------------------------------------------------------------

#_1DF3E9: JSL Sprite_CheckDamageToLink_long
#_1DF3ED: BCC .not_just_caught

#_1DF3EF: INC.w $0E30,X

; Message 0172
#_1DF3F2: LDA.b #$72
#_1DF3F4: STA.w $1CF0

#_1DF3F7: LDA.b #$01
#_1DF3F9: STA.w $1CF1

#_1DF3FC: JSL Sprite_ShowMessageMinimal
#_1DF400: BRA .not_just_caught

;---------------------------------------------------------------------------------------------------

.caught
#_1DF402: CMP.b #$10
#_1DF404: BCC .no_prize
#_1DF406: BNE .not_just_caught

#_1DF408: STZ.w $0BE0,X

#_1DF40B: LDA.b #$06
#_1DF40D: STA.w $0DD0,X

#_1DF410: LDA.b #$0F
#_1DF412: STA.w $0DF0,X

#_1DF415: LDA.w $0E40,X
#_1DF418: CLC
#_1DF419: ADC.b #$04
#_1DF41B: STA.w $0E40,X

#_1DF41E: LDA.b #!SFX2_15
#_1DF420: JSL SpriteSFX_QueueSFX2WithPan

;---------------------------------------------------------------------------------------------------

; !WTF
; Toppo spawn a dying child instead of just dying themselves.
#_1DF424: LDA.b #!SPRITE_4D
#_1DF426: JSL Sprite_SpawnDynamically
#_1DF42A: BMI .no_prize

#_1DF42C: JSL Sprite_SetSpawnedCoordinates

#_1DF430: PHX

#_1DF431: TYX

#_1DF432: LDY.b #$06
#_1DF434: JSL ForcePrizeDrop_long

#_1DF438: PLX

;---------------------------------------------------------------------------------------------------

.no_prize
#_1DF439: INC.w $0E30,X

;---------------------------------------------------------------------------------------------------

.not_just_caught
#_1DF43C: INC.w $0E80,X

#_1DF43F: LDA.w $0E80,X
#_1DF442: AND.b #$04
#_1DF444: LSR A
#_1DF445: LSR A
#_1DF446: ADC.b #$03
#_1DF448: STA.w $0DC0,X

#_1DF44B: PLB

#_1DF44C: RTL

;===================================================================================================
; TODO why do these have eyes?
;===================================================================================================

pool SpriteDraw_Mimic

.oam_groups

.group00
#_1DF44D: dw  -4,  -8 : db $44, $00, $00, $02
#_1DF455: dw  12,  -8 : db $44, $40, $00, $00
#_1DF45D: dw  -4,   8 : db $64, $00, $00, $00
#_1DF465: dw   4,   0 : db $54, $40, $00, $02

.group01
#_1DF46D: dw  -4,  -8 : db $44, $00, $00, $02
#_1DF475: dw  12,  -8 : db $44, $40, $00, $00
#_1DF47D: dw  -4,   8 : db $74, $40, $00, $00
#_1DF485: dw   4,   0 : db $62, $40, $00, $02

.group02
#_1DF48D: dw  -4,  -8 : db $44, $00, $00, $00
#_1DF495: dw   4,  -8 : db $44, $40, $00, $02
#_1DF49D: dw  -4,   0 : db $62, $00, $00, $02
#_1DF4A5: dw  12,   8 : db $64, $40, $00, $00

.group03
#_1DF4AD: dw  -4,  -8 : db $46, $00, $00, $02
#_1DF4B5: dw  12,  -8 : db $46, $40, $00, $00
#_1DF4BD: dw  -4,   8 : db $66, $00, $00, $00
#_1DF4C5: dw   4,   0 : db $56, $40, $00, $02

.group04
#_1DF4CD: dw  -4,  -8 : db $46, $00, $00, $02
#_1DF4D5: dw  12,  -8 : db $46, $40, $00, $00
#_1DF4DD: dw  -4,   8 : db $75, $40, $00, $00
#_1DF4E5: dw   4,   0 : db $6A, $40, $00, $02

.group05
#_1DF4ED: dw  -4,  -8 : db $46, $00, $00, $00
#_1DF4F5: dw   4,  -8 : db $46, $40, $00, $02
#_1DF4FD: dw  -4,   0 : db $6A, $00, $00, $02
#_1DF505: dw  12,   8 : db $75, $00, $00, $00

.group06
#_1DF50D: dw  -2,  -8 : db $4E, $00, $00, $02
#_1DF515: dw   0,   0 : db $6C, $00, $00, $02

.group07
#_1DF51D: dw  -2,  -7 : db $4E, $00, $00, $02
#_1DF525: dw   0,   0 : db $6E, $00, $00, $02

.group08
#_1DF52D: dw   2,  -8 : db $4E, $40, $00, $02
#_1DF535: dw   0,   0 : db $6C, $40, $00, $02

.group09
#_1DF53D: dw   2,  -7 : db $4E, $40, $00, $02
#_1DF545: dw   0,   0 : db $6E, $40, $00, $02

;---------------------------------------------------------------------------------------------------

.eyegroup00
#_1DF54D: dw  10,   4 : db $77, $40, $00, $00

.eyegroup01
#_1DF555: dw  -2,   4 : db $77, $00, $00, $00

.eyegroup02
#_1DF55D: dw   4,   4 : db $76, $00, $00, $00

;---------------------------------------------------------------------------------------------------

.eye_group_pointer
#_1DF565: dw .eyegroup00
#_1DF567: dw .eyegroup01
#_1DF569: dw .eyegroup02

;---------------------------------------------------------------------------------------------------

.group_pointer
#_1DF56B: dw .group00
#_1DF56D: dw .group01
#_1DF56F: dw .group02
#_1DF571: dw .group03
#_1DF573: dw .group04
#_1DF575: dw .group05
#_1DF577: dw .group06
#_1DF579: dw .group07
#_1DF57B: dw .group08
#_1DF57D: dw .group09

;---------------------------------------------------------------------------------------------------

.group_size
#_1DF57F: db 4 ; group00
#_1DF580: db 4 ; group01
#_1DF581: db 4 ; group02
#_1DF582: db 4 ; group03
#_1DF583: db 4 ; group04
#_1DF584: db 4 ; group05
#_1DF585: db 2 ; group06
#_1DF586: db 2 ; group07
#_1DF587: db 2 ; group08
#_1DF588: db 2 ; group09

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Mimic:
#_1DF589: PHB
#_1DF58A: PHK
#_1DF58B: PLB

; mimics are eyeless TODO ???
#_1DF58C: LDA.w $0E00,X
#_1DF58F: BEQ .no_eye

; if eyegore is facing up, don't draw the eye
#_1DF591: LDA.w $0DE0,X
#_1DF594: CMP.b #$03
#_1DF596: BEQ .no_eye

#_1DF598: ASL A
#_1DF599: TAY

#_1DF59A: REP #$20

#_1DF59C: LDA.w .eye_group_pointer,Y
#_1DF59F: STA.b $08

#_1DF5A1: SEP #$20

#_1DF5A3: LDA.b #$01
#_1DF5A5: JSR Sprite_DrawMultiple_Bank1D

;---------------------------------------------------------------------------------------------------

.no_eye
#_1DF5A8: LDA.w $0DC0,X
#_1DF5AB: PHA

#_1DF5AC: ASL A
#_1DF5AD: TAY

#_1DF5AE: REP #$20

#_1DF5B0: LDA.w .group_pointer,Y
#_1DF5B3: STA.b $08

#_1DF5B5: LDA.b $90
#_1DF5B7: CLC
#_1DF5B8: ADC.w #$0004
#_1DF5BB: STA.b $90

#_1DF5BD: INC.b $92

;---------------------------------------------------------------------------------------------------

#_1DF5BF: SEP #$20

#_1DF5C1: PLY

#_1DF5C2: LDA.w .group_size,Y
#_1DF5C5: JSR Sprite_DrawMultiple_Bank1D

#_1DF5C8: DEC.w $0E40,X
#_1DF5CB: JSL SpriteDraw_Shadow_long

#_1DF5CF: INC.w $0E40,X

#_1DF5D2: PLB

#_1DF5D3: RTL

;===================================================================================================

pool Sprite_ConvertVelocityToAngle

.angle_x
#_1DF5D4: db  0,  0,  1,  1,  1,  2,  2,  2
#_1DF5DC: db  0,  0, 15, 15, 15, 14, 14, 14
#_1DF5E4: db  8,  8,  7,  7,  7,  6,  6,  6
#_1DF5EC: db  8,  8,  9,  9,  9, 10, 10, 10

.angle_y
#_1DF5F4: db  4,  4,  3,  3,  3,  2,  2,  2
#_1DF5FC: db 12, 12, 13, 13, 13, 14, 14, 14
#_1DF604: db  4,  4,  5,  5,  5,  6,  6,  6
#_1DF60C: db 12, 12, 11, 11, 11, 10, 10, 10

pool off

;---------------------------------------------------------------------------------------------------

Sprite_ConvertVelocityToAngle:
#_1DF614: PHB
#_1DF615: PHK
#_1DF616: PLB

#_1DF617: LDA.b $00
#_1DF619: ASL A
#_1DF61A: ROL A
#_1DF61B: STA.b $08

#_1DF61D: LDA.b $01
#_1DF61F: ASL A
#_1DF620: ROL A
#_1DF621: ASL A

#_1DF622: ORA.b $08
#_1DF624: AND.b #$03
#_1DF626: ASL A
#_1DF627: ASL A
#_1DF628: ASL A
#_1DF629: STA.b $0A

#_1DF62B: LDA.b $01
#_1DF62D: BPL .positive_x

#_1DF62F: EOR.b #$FF
#_1DF631: INC A

.positive_x
#_1DF632: STA.b $08

#_1DF634: LDA.b $00
#_1DF636: BPL .positive_y

#_1DF638: EOR.b #$FF
#_1DF63A: INC A

.positive_y
#_1DF63B: STA.b $09

#_1DF63D: LDA.b $08
#_1DF63F: CMP.b $09
#_1DF641: BCC .use_y_for_angle

.use_x_for_angle
#_1DF643: LDA.b $09
#_1DF645: LSR A
#_1DF646: LSR A

#_1DF647: CLC
#_1DF648: ADC.b $0A
#_1DF64A: TAY

#_1DF64B: LDA.w .angle_x,Y
#_1DF64E: BRA .exit

.use_y_for_angle
#_1DF650: LDA.b $08
#_1DF652: LSR A
#_1DF653: LSR A

#_1DF654: CLC
#_1DF655: ADC.b $0A
#_1DF657: TAY

#_1DF658: LDA.w .angle_y,Y

.exit
#_1DF65B: PLB

#_1DF65C: RTL

;===================================================================================================
; Attempts to find an open slot for a sprite to spawn in
; returns with slot in Y, regardless of failure (0xFF)
;===================================================================================================
Sprite_SpawnDynamically:
#_1DF65D: LDY.b #$0F

;===================================================================================================

Sprite_SpawnDynamically_slot_limited:
#_1DF65F: PHA ; push sprite ID

.next
#_1DF660: LDA.w $0DD0,Y
#_1DF663: BEQ .free_slot

#_1DF665: DEY
#_1DF666: BPL .next

;---------------------------------------------------------------------------------------------------

; failure
#_1DF668: PLA
#_1DF669: TYA ; to set N flag via Y

#_1DF66A: RTL

;---------------------------------------------------------------------------------------------------

.free_slot
#_1DF66B: PLA
#_1DF66C: STA.w $0E20,Y

#_1DF66F: LDA.b #$09
#_1DF671: STA.w $0DD0,Y

; copy properties from the spawning sprite
#_1DF674: LDA.w $0D10,X
#_1DF677: STA.b $00

#_1DF679: LDA.w $0D30,X
#_1DF67C: STA.b $01

#_1DF67E: LDA.w $0D00,X
#_1DF681: STA.b $02

#_1DF683: LDA.w $0D20,X
#_1DF686: STA.b $03

#_1DF688: LDA.w $0F70,X
#_1DF68B: STA.b $04

; copy properties from the spawning overlord
#_1DF68D: LDA.w $0B08,X
#_1DF690: STA.b $05

#_1DF692: LDA.w $0B10,X
#_1DF695: STA.b $06

#_1DF697: LDA.w $0B18,X
#_1DF69A: STA.b $07

#_1DF69C: LDA.w $0B20,X
#_1DF69F: STA.b $08

;---------------------------------------------------------------------------------------------------

#_1DF6A1: PHX
#_1DF6A2: TYX

#_1DF6A3: JSL SpritePrep_LoadProperties

#_1DF6A7: LDA.b $1B
#_1DF6A9: BNE .indoors

;---------------------------------------------------------------------------------------------------

.outdoors
#_1DF6AB: TXA
#_1DF6AC: ASL A
#_1DF6AD: TAX

#_1DF6AE: LDA.b #$FF
#_1DF6B0: STA.w $0BC1,X

;---------------------------------------------------------------------------------------------------

.indoors
#_1DF6B3: LDA.b #$FF
#_1DF6B5: STA.w $0BC0,X

#_1DF6B8: PLX

;---------------------------------------------------------------------------------------------------

#_1DF6B9: LDA.w $0F20,X
#_1DF6BC: STA.w $0F20,Y

#_1DF6BF: LDA.w $0DE0,X
#_1DF6C2: STA.w $0DE0,Y

#_1DF6C5: LDA.b #$00
#_1DF6C7: STA.w $0CBA,Y
#_1DF6CA: STA.w $0E30,Y

#_1DF6CD: TYA

#_1DF6CE: RTL

;===================================================================================================
; TODO analyze and format
;===================================================================================================
Sprite_ReducedTileInteractionTable:
#_1DF6CF: db $00, $01, $02, $03, $02, $00, $00, $00
#_1DF6D7: db $00, $01, $00, $01, $00, $00, $00, $00
#_1DF6DF: db $01, $01, $01, $01, $01, $01, $01, $01
#_1DF6E7: db $01, $01, $01, $01, $00, $01, $01, $01
#_1DF6EF: db $01, $01, $01, $00, $00, $00, $01, $02
#_1DF6F7: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1DF6FF: db $01, $01, $01, $01, $01, $01, $01, $01
#_1DF707: db $01, $01, $00, $00, $01, $01, $01, $01
#_1DF70F: db $00, $01, $01, $01, $01, $01, $00, $01
#_1DF717: db $00, $01, $00, $00, $FF, $FF, $FF, $FF
#_1DF71F: db $01, $01, $01, $01, $01, $01, $01, $01
#_1DF727: db $01, $01, $01, $01, $01, $01, $01, $01
#_1DF72F: db $00, $00, $00, $00, $00, $01, $00, $02
#_1DF737: db $00, $00, $00, $00, $01, $01, $01, $01
#_1DF73F: db $01, $01, $01, $01, $01, $01, $01, $01
#_1DF747: db $01, $01, $01, $01, $01, $01, $01, $01
#_1DF74F: db $01, $01, $01, $01, $01, $01, $01, $01
#_1DF757: db $01, $01, $01, $01, $01, $01, $01, $01
#_1DF75F: db $01, $01, $01, $01, $01, $01, $01, $01
#_1DF767: db $01, $01, $01, $01, $01, $01, $01, $01
#_1DF76F: db $01, $01, $01, $01, $01, $01, $01, $01
#_1DF777: db $01, $01, $01, $01, $01, $01, $01, $01
#_1DF77F: db $01, $01, $01, $01, $01, $01, $01, $01
#_1DF787: db $01, $01, $01, $01, $01, $01, $01, $01
#_1DF78F: db $01, $01, $01, $01, $01, $01, $01, $01
#_1DF797: db $01, $01, $01, $01, $01, $01, $01, $01
#_1DF79F: db $01, $01, $01, $01, $01, $01, $01, $01
#_1DF7A7: db $01, $01, $01, $01, $01, $01, $01, $01
#_1DF7AF: db $01, $01, $01, $01, $01, $01, $01, $01
#_1DF7B7: db $01, $01, $01, $01, $01, $01, $01, $01
#_1DF7BF: db $01, $01, $01, $01, $01, $01, $01, $01
#_1DF7C7: db $01, $01, $01, $01, $01, $01, $01, $01

;===================================================================================================

SpriteSlotToSegmentOffset:
#_1DF7CF: db $00, $20, $40, $60

;===================================================================================================

pool SpriteDraw_MiniMoldorm

.char
#_1DF7D3: db $5D, $62, $60

.offset_segment
#_1DF7D6: db $04, $00, $00, $00, $00, $00

.prop
#_1DF7DC: db $00, $02, $02

.segment_index
#_1DF7DF: db $15, $1A, $00

.offset_main_x
#_1DF7E2: db 11,  0, 10,  0,  9,  0,  6,  0
#_1DF7EA: db  3,  0,  0,  0, -2, -1, -3, -1
#_1DF7F2: db -4, -1, -3, -1, -2, -1,  1,  0
#_1DF7FA: db  4,  0,  7,  0,  9,  0, 10,  0

.offset_main_y
#_1DF802: db  4,  0,  6,  0,  9,  0, 10,  0
#_1DF80A: db 11,  0, 10,  0,  9,  0,  6,  0
#_1DF812: db  3,  0,  0,  0, -2, -1, -3, -1
#_1DF81A: db -4, -1, -3, -1, -2, -1,  1,  0

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_MiniMoldorm:
#_1DF822: JSL Sprite_PrepOAMCoord_long
#_1DF826: BCC .continue

#_1DF828: RTL

;---------------------------------------------------------------------------------------------------

.continue
#_1DF829: PHB
#_1DF82A: PHK
#_1DF82B: PLB

#_1DF82C: LDA.w $0DE0,X
#_1DF82F: CLC
#_1DF830: ADC.b #$FF
#_1DF832: STA.b $06

;---------------------------------------------------------------------------------------------------

#_1DF834: PHX

#_1DF835: LDX.b #$01

.next_object_main
#_1DF837: LDA.b $06
#_1DF839: AND.b #$0F
#_1DF83B: ASL A

#_1DF83C: PHX
#_1DF83D: TAX

#_1DF83E: REP #$20

#_1DF840: LDA.b $00
#_1DF842: CLC
#_1DF843: ADC.w .offset_main_x,X
#_1DF846: STA.b ($90),Y

#_1DF848: AND.w #$0100
#_1DF84B: STA.b $0E

#_1DF84D: LDA.b $02
#_1DF84F: CLC
#_1DF850: ADC.w .offset_main_y,X
#_1DF853: INY
#_1DF854: STA.b ($90),Y

#_1DF856: ADC.w #$0010
#_1DF859: CMP.w #$0100

#_1DF85C: SEP #$20
#_1DF85E: BCC .on_screen_main

#_1DF860: LDA.b #$F0
#_1DF862: STA.b ($90),Y

.on_screen_main
#_1DF864: LDA.b #$4D
#_1DF866: INY
#_1DF867: STA.b ($90),Y

#_1DF869: LDA.b $05
#_1DF86B: INY
#_1DF86C: STA.b ($90),Y

#_1DF86E: PHY

#_1DF86F: TYA
#_1DF870: LSR A
#_1DF871: LSR A
#_1DF872: TAY

#_1DF873: LDA.b $0F
#_1DF875: STA.b ($92),Y

#_1DF877: LDA.b $06
#_1DF879: CLC
#_1DF87A: ADC.b #$02
#_1DF87C: STA.b $06

#_1DF87E: PLY
#_1DF87F: INY

#_1DF880: PLX
#_1DF881: DEX
#_1DF882: BPL .next_object_main

;---------------------------------------------------------------------------------------------------

#_1DF884: PLX

#_1DF885: REP #$20

#_1DF887: LDA.b $90
#_1DF889: CLC
#_1DF88A: ADC.w #$0008
#_1DF88D: STA.b $90

#_1DF88F: INC.b $92
#_1DF891: INC.b $92

#_1DF893: SEP #$20

#_1DF895: TXY

#_1DF896: LDA.w $0E80,X
#_1DF899: AND.b #$1F
#_1DF89B: CLC
#_1DF89C: ADC.w SpriteSlotToSegmentOffset,X
#_1DF89F: TAX

; copy parent coords
#_1DF8A0: LDA.w $0D10,Y
#_1DF8A3: STA.l $7FFC00,X

#_1DF8A7: LDA.w $0D30,Y
#_1DF8AA: STA.l $7FFC80,X

#_1DF8AE: LDA.w $0D00,Y
#_1DF8B1: STA.l $7FFD00,X

#_1DF8B5: LDA.w $0D20,Y
#_1DF8B8: STA.l $7FFD80,X

#_1DF8BC: LDA.b #$02
#_1DF8BE: STA.b $06

;---------------------------------------------------------------------------------------------------

#_1DF8C0: LDY.b #$00

.next_object_segment
#_1DF8C2: PHY

#_1DF8C3: LDY.b $06
#_1DF8C5: LDX.w $0FA0

#_1DF8C8: LDA.w $0E80,X
#_1DF8CB: CLC
#_1DF8CC: ADC.w .segment_index,Y
#_1DF8CF: AND.b #$1F

#_1DF8D1: CLC
#_1DF8D2: ADC.w SpriteSlotToSegmentOffset,X
#_1DF8D5: TAX

#_1DF8D6: LDA.l $7FFC00,X
#_1DF8DA: STA.b $00

#_1DF8DC: LDA.l $7FFC80,X
#_1DF8E0: STA.b $01

#_1DF8E2: LDA.l $7FFD00,X
#_1DF8E6: STA.b $02

#_1DF8E8: LDA.l $7FFD80,X
#_1DF8EC: STA.b $03

#_1DF8EE: TYA
#_1DF8EF: PLY
#_1DF8F0: PHA

#_1DF8F1: ASL A
#_1DF8F2: TAX

#_1DF8F3: REP #$20

#_1DF8F5: LDA.b $00
#_1DF8F7: SEC
#_1DF8F8: SBC.b $E2
#_1DF8FA: CLC
#_1DF8FB: ADC.w .offset_segment,X

#_1DF8FE: STA.b ($90),Y

#_1DF900: AND.w #$0100
#_1DF903: STA.b $0E

#_1DF905: LDA.b $02
#_1DF907: SEC
#_1DF908: SBC.b $E8
#_1DF90A: CLC
#_1DF90B: ADC.w .offset_segment,X

#_1DF90E: INY
#_1DF90F: STA.b ($90),Y

#_1DF911: CLC
#_1DF912: ADC.w #$0010
#_1DF915: CMP.w #$0100

#_1DF918: SEP #$20
#_1DF91A: BCC .on_screen_segment

#_1DF91C: LDA.b #$F0
#_1DF91E: STA.b ($90),Y

.on_screen_segment
#_1DF920: PLX

#_1DF921: LDA.w .char,X
#_1DF924: INY
#_1DF925: STA.b ($90),Y

#_1DF927: LDA.b $05
#_1DF929: INY
#_1DF92A: STA.b ($90),Y

#_1DF92C: PHY

#_1DF92D: TYA
#_1DF92E: LSR A
#_1DF92F: LSR A
#_1DF930: TAY

#_1DF931: LDA.w .prop,X
#_1DF934: ORA.b $0F
#_1DF936: STA.b ($92),Y

#_1DF938: PLY
#_1DF939: INY

#_1DF93A: DEC.b $06
#_1DF93C: BPL .next_object_segment

#_1DF93E: LDX.w $0FA0

#_1DF941: PLB

#_1DF942: RTL

;===================================================================================================

Sprite_25_TalkingTree:
#_1DF943: PHB
#_1DF944: PHK
#_1DF945: PLB

#_1DF946: JSR .main

#_1DF949: PLB

#_1DF94A: RTL

;---------------------------------------------------------------------------------------------------

.main
#_1DF94B: LDA.w $0E80,X
#_1DF94E: JSL JumpTableLocal
#_1DF952: dw TalkingTree_Mouth
#_1DF954: dw TalkingTree_Eye

;===================================================================================================

TalkingTree_Mouth:
#_1DF956: JSR SpriteDraw_TalkingTree
#_1DF959: JSR Sprite_CheckIfActive_Bank1D

#_1DF95C: STZ.w $0F60,X

#_1DF95F: LDA.w $0D80,X
#_1DF962: JSL JumpTableLocal
#_1DF966: dw TalkingTree_IdleWithBomb
#_1DF968: dw TalkingTree_DelayBomb
#_1DF96A: dw TalkingTree_SpitBomb
#_1DF96C: dw TalkingTree_IdleWithoutBomb

;===================================================================================================

TalkingTree_IdleWithBomb:
#_1DF96E: STZ.w $0DC0,X

#_1DF971: JSL Sprite_CheckDamageToLink_same_layer_long
#_1DF975: BCC .exit

#_1DF977: JSL Link_CancelDash_long

#_1DF97B: LDA.b #$10
#_1DF97D: STA.b $46

#_1DF97F: LDA.b #$30
#_1DF981: JSL Sprite_ProjectSpeedTowardsLink_long

#_1DF985: LDA.b $00
#_1DF987: STA.b $27

#_1DF989: LDA.b $01
#_1DF98B: STA.b $28

#_1DF98D: LDA.b #!SFX3_32
#_1DF98F: JSL SpriteSFX_QueueSFX3WithPan

#_1DF993: INC.w $0D80,X

#_1DF996: LDA.b #$30
#_1DF998: STA.w $0DF0,X

.exit
#_1DF99B: RTS

;===================================================================================================

TalkingTree_DelayBomb:
#_1DF99C: LDA.w $0DF0,X
#_1DF99F: BNE .pulsate_mouth

#_1DF9A1: INC.w $0D80,X

#_1DF9A4: LDA.b #$08
#_1DF9A6: STA.w $0DF0,X

.pulsate_mouth
#_1DF9A9: LSR A
#_1DF9AA: AND.b #$03
#_1DF9AC: STA.w $0DC0,X

#_1DF9AF: RTS

;===================================================================================================

pool TalkingTree_SpitBomb

.draw
#_1DF9B0: db $00, $02, $03, $01

pool off

;---------------------------------------------------------------------------------------------------

TalkingTree_SpitBomb:
#_1DF9B4: LDA.w $0DF0,X
#_1DF9B7: LSR A
#_1DF9B8: TAY

#_1DF9B9: LDA.w .draw,X
#_1DF9BC: STA.w $0DC0,X

#_1DF9BF: LDA.w $0DF0,X
#_1DF9C2: CMP.b #$07
#_1DF9C4: BNE .no_bomb

#_1DF9C6: JSR TalkingTree_SpawnBomb

.no_bomb
#_1DF9C9: LDA.w $0DF0,X
#_1DF9CC: BNE .exit

#_1DF9CE: INC.w $0D80,X

.exit
#_1DF9D1: RTS

;===================================================================================================

pool TalkingTree_IdleWithoutBomb

.draw_step
#_1DF9D2: db $01, $02, $03, $01, $03, $01, $02, $03

.timer
#_1DF9DA: db  13,  13,  13,  11,  11,   6,  16,   8

pool off

;---------------------------------------------------------------------------------------------------

TalkingTree_IdleWithoutBomb:
#_1DF9E2: JSR TalkingTree_ChooseTalkingPoint

#_1DF9E5: LDA.w $0DF0,X
#_1DF9E8: BNE .exit

#_1DF9EA: LDA.w $0DA0,X
#_1DF9ED: INC A
#_1DF9EE: AND.b #$07
#_1DF9F0: STA.w $0DA0,X

#_1DF9F3: TAY

#_1DF9F4: LDA.w .draw_step,Y
#_1DF9F7: STA.w $0DC0,X

#_1DF9FA: LDA.w .timer,Y
#_1DF9FD: STA.w $0DF0,X

.exit
#_1DFA00: RTS

;===================================================================================================

TalkingTree_Messages_setA:
#_1DFA01: db $80 ; Message 0080
#_1DFA02: db $7B ; Message 007B

;---------------------------------------------------------------------------------------------------

TalkingTree_ChooseTalkingPoint:
#_1DFA03: LDA.b #$07
#_1DFA05: STA.w $0F60,X

#_1DFA08: LDA.w $0D90,X
#_1DFA0B: BNE .use_screen_based_message

;---------------------------------------------------------------------------------------------------

#_1DFA0D: LDA.w $0D10,X
#_1DFA10: LSR A
#_1DFA11: LSR A
#_1DFA12: LSR A
#_1DFA13: LSR A
#_1DFA14: AND.b #$01
#_1DFA16: EOR.b #$01
#_1DFA18: STA.w $0D90,X

#_1DFA1B: TAY
#_1DFA1C: LDA.w TalkingTree_Messages_setA,Y

#_1DFA1F: LDY.b #$00
#_1DFA21: JSL Sprite_ShowSolicitedMessage
#_1DFA25: BCS .exit

#_1DFA27: STZ.w $0D90,X

.exit
#_1DFA2A: RTS

;===================================================================================================

.screen_based_hints
#_1DFA2B: db $7C ; Message 007C
#_1DFA2C: db $7D ; Message 007D
#_1DFA2D: db $7E ; Message 007E
#_1DFA2E: db $7F ; Message 007F

.screen_id
#_1DFA2F: db $58 ; Village of Outcasts
#_1DFA30: db $5D ; Dark Hylia River Peninsula
#_1DFA31: db $72 ; Stumpy Grove Entrance
#_1DFA32: db $6B ; West of Bomb Shoppe

;---------------------------------------------------------------------------------------------------

.use_screen_based_message
#_1DFA33: LDY.b #$00

#_1DFA35: LDA.b $8A

.check_screen
#_1DFA37: CMP.w .screen_id,Y
#_1DFA3A: BEQ .use_message

#_1DFA3C: INY
#_1DFA3D: BEQ .use_message

#_1DFA3F: BRA .check_screen

;---------------------------------------------------------------------------------------------------

.use_message
#_1DFA41: LDA.w .screen_based_hints,Y
#_1DFA44: LDY.b #$00
#_1DFA46: JSL Sprite_ShowMessageUnconditional

#_1DFA4A: STZ.w $0D90,X

#_1DFA4D: RTS

;===================================================================================================

TalkingTree_SpawnBomb:
#_1DFA4E: LDA.b #!SPRITE_4A
#_1DFA50: JSL Sprite_SpawnDynamically
#_1DFA54: BMI .exit

#_1DFA56: JSL Sprite_TransmuteToBomb
#_1DFA5A: JSL Sprite_SetSpawnedCoordinates

#_1DFA5E: LDA.b $02
#_1DFA60: CLC
#_1DFA61: ADC.b #$28
#_1DFA63: STA.b $08

#_1DFA65: LDA.b $03 ; useless? doesn't seem to get used afterwards
#_1DFA67: ADC.b #$00
#_1DFA69: STA.b $03

#_1DFA6B: LDA.b #$40
#_1DFA6D: STA.w $0E00,Y

#_1DFA70: LDA.b #$18
#_1DFA72: STA.w $0D40,Y

#_1DFA75: LDA.b #$12
#_1DFA77: STA.w $0F80,Y

.exit
#_1DFA7A: RTS

;===================================================================================================

pool SpriteDraw_TalkingTree

.oam_groups
; group00
#_1DFA7B: dw   1,  -1 : db $E8, $00, $00, $00
#_1DFA83: dw   1,   7 : db $F8, $00, $00, $00
#_1DFA8B: dw   7,  -1 : db $E8, $40, $00, $00
#_1DFA93: dw   7,   7 : db $F8, $40, $00, $00

; group01
#_1DFA9B: dw   0,  -1 : db $E8, $00, $00, $00
#_1DFAA3: dw   0,   7 : db $F8, $00, $00, $00
#_1DFAAB: dw   8,  -1 : db $E8, $40, $00, $00
#_1DFAB3: dw   8,   7 : db $F8, $40, $00, $00

; group02
#_1DFABB: dw   0,   0 : db $E8, $00, $00, $00
#_1DFAC3: dw   0,   7 : db $F8, $00, $00, $00
#_1DFACB: dw   8,   0 : db $E8, $40, $00, $00
#_1DFAD3: dw   8,   7 : db $F8, $40, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_TalkingTree:
#_1DFADB: LDA.w $0DC0,X
#_1DFADE: DEC A
#_1DFADF: BMI .exit

#_1DFAE1: ASL A ; x32
#_1DFAE2: ASL A
#_1DFAE3: ASL A
#_1DFAE4: ASL A
#_1DFAE5: ASL A

#_1DFAE6: ADC.b #.oam_groups>>0
#_1DFAE8: STA.b $08

#_1DFAEA: LDA.b #.oam_groups>>8
#_1DFAEC: ADC.b #$00
#_1DFAEE: STA.b $09

#_1DFAF0: LDA.b #$04
#_1DFAF2: STA.b $06
#_1DFAF4: STZ.b $07

#_1DFAF6: JSL Sprite_DrawMultiple_player_deferred

.exit
#_1DFAFA: RTS

;===================================================================================================

pool TalkingTree_Eye

.offset_x
#_1DFAFB: db  9, -9

.offset_y
#_1DFAFD: db  0, -1

; these all bleed into each other
.pupil_offset_x_low
#_1DFAFF: db -2, -1,  0,  1,  2

.pupil_offset_x_high
#_1DFB04: db -1

.pupil_offset_y
#_1DFB05: db -1,  0,  0,  0, -1

pool off

;---------------------------------------------------------------------------------------------------

TalkingTree_Eye:
#_1DFB0A: JSL SpriteDraw_SingleSmall_long
#_1DFB0E: JSR Sprite_CheckIfActive_Bank1D

#_1DFB11: LDY.w $0EB0,X

#_1DFB14: LDA.w $0D90,X
#_1DFB17: CLC
#_1DFB18: ADC.w .offset_x,Y
#_1DFB1B: STA.w $0D10,X

#_1DFB1E: LDA.w $0DA0,X
#_1DFB21: ADC.w .offset_y,Y
#_1DFB24: STA.w $0D30,X

#_1DFB27: LDA.w $0DB0,X
#_1DFB2A: STA.w $0D00,X

#_1DFB2D: LDA.w $0E90,X
#_1DFB30: STA.w $0D20,X

;---------------------------------------------------------------------------------------------------

#_1DFB33: LDA.b #$02
#_1DFB35: JSL Sprite_ProjectSpeedTowardsLink_long

#_1DFB39: LDA.b $00
#_1DFB3B: BMI .use_x

;---------------------------------------------------------------------------------------------------

.use_y
#_1DFB3D: LDA.b $01
#_1DFB3F: CLC
#_1DFB40: ADC.b #$02
#_1DFB42: STA.w $0DE0,X

#_1DFB45: BRA .use_offset

;---------------------------------------------------------------------------------------------------

.use_x
#_1DFB47: LDA.w $0DE0,X
#_1DFB4A: CMP.b #$02
#_1DFB4C: BEQ .use_offset

#_1DFB4E: ROL A
#_1DFB4F: AND.b #$01
#_1DFB51: TAY

#_1DFB52: LDA.w $0DE0,X
#_1DFB55: CLC
#_1DFB56: ADC.w Sprite_ApplyConveyor_shake_x,Y
#_1DFB59: STA.w $0DE0,X

;---------------------------------------------------------------------------------------------------

.use_offset
#_1DFB5C: LDY.w $0DE0,X

#_1DFB5F: LDA.w $0D90,X
#_1DFB62: CLC
#_1DFB63: ADC.w .pupil_offset_x_low,Y
#_1DFB66: STA.w $0D10,X

#_1DFB69: LDA.w $0DA0,X
#_1DFB6C: ADC.w .pupil_offset_x_high,Y
#_1DFB6F: STA.w $0D30,X

#_1DFB72: LDA.w $0DB0,X
#_1DFB75: CLC
#_1DFB76: ADC.w .pupil_offset_y,Y
#_1DFB79: STA.w $0D00,X

#_1DFB7C: LDA.w $0E90,X
#_1DFB7F: ADC.w .pupil_offset_y,Y
#_1DFB82: STA.w $0D20,X

#_1DFB85: RTS

;===================================================================================================

pool SpritePrep_TalkingTree_SpawnEyeball

.offset_x
#_1DFB86: db -4, 14

.offset_y
#_1DFB88: db -1,  0

pool off

;---------------------------------------------------------------------------------------------------

SpritePrep_TalkingTree_SpawnEyeball:
#_1DFB8A: PHX
#_1DFB8B: PHA

#_1DFB8C: LDA.b #!SPRITE_25
#_1DFB8E: JSL Sprite_SpawnDynamically

; No BMI = tree warp
#_1DFB92: PLA
#_1DFB93: STA.w $0EB0,Y

#_1DFB96: TAX

#_1DFB97: LDA.b $00
#_1DFB99: CLC
#_1DFB9A: ADC.l .offset_x,X
#_1DFB9E: STA.w $0D10,Y
#_1DFBA1: STA.w $0D90,Y

#_1DFBA4: LDA.b $01
#_1DFBA6: ADC.l .offset_y,X
#_1DFBAA: STA.w $0D30,Y
#_1DFBAD: STA.w $0DA0,Y

#_1DFBB0: LDA.b $02
#_1DFBB2: CLC
#_1DFBB3: ADC.b #$F5
#_1DFBB5: STA.w $0D00,Y
#_1DFBB8: STA.w $0DB0,Y

#_1DFBBB: LDA.b $03
#_1DFBBD: ADC.b #$FF
#_1DFBBF: STA.w $0D20,Y
#_1DFBC2: STA.w $0E90,Y

#_1DFBC5: LDA.b #$01
#_1DFBC7: STA.w $0E80,Y

#_1DFBCA: PLX

#_1DFBCB: RTL

;===================================================================================================

pool RupeePull_SpawnPrize

.speed_x
#_1DFBCC: db -18, -12,  12,  18

.speed_y
#_1DFBD0: db  16,  24,  24,  16

.rupee_type
#_1DFBD4: db !SPRITE_D9 ; green rupee
#_1DFBD5: db !SPRITE_DA ; blue rupee
#_1DFBD6: db !SPRITE_DB ; red rupee

pool off

;---------------------------------------------------------------------------------------------------

RupeePull_SpawnPrize:
#_1DFBD7: PHB
#_1DFBD8: PHK
#_1DFBD9: PLB

; zero kills = nothing
#_1DFBDA: LDA.w $0CFB
#_1DFBDD: BEQ .exit

#_1DFBDF: LDY.b #$00
#_1DFBE1: CMP.b #$04
#_1DFBE3: BCC .fewer_than_four

#_1DFBE5: INY
#_1DFBE6: LDA.w $0CFC
#_1DFBE9: BNE .fewer_than_four

#_1DFBEB: INY

;---------------------------------------------------------------------------------------------------

.fewer_than_four
#_1DFBEC: LDA.b #$03
#_1DFBEE: STA.w $0FB5

#_1DFBF1: STY.w $0FB6

;---------------------------------------------------------------------------------------------------

.next_rupee
#_1DFBF4: LDY.w $0FB6
#_1DFBF7: LDA.w .rupee_type,Y

#_1DFBFA: JSL Sprite_SpawnDynamically
#_1DFBFE: BMI .exit

#_1DFC00: LDA.b #!SFX3_30
#_1DFC02: JSL SpriteSFX_QueueSFX3WithPan

#_1DFC06: JSL Sprite_SetSpawnedCoordinates

#_1DFC0A: PHX

#_1DFC0B: LDX.w $0FB5

#_1DFC0E: LDA.w .speed_x,X
#_1DFC11: STA.w $0D50,Y

#_1DFC14: LDA.w .speed_y,X
#_1DFC17: STA.w $0D40,Y

#_1DFC1A: PLX

#_1DFC1B: LDA.b #$FF
#_1DFC1D: STA.w $0B58,Y

#_1DFC20: LDA.b #$20
#_1DFC22: STA.w $0F10,Y
#_1DFC25: STA.w $0EE0,Y
#_1DFC28: STA.w $0F80,Y

#_1DFC2B: DEC.w $0FB5
#_1DFC2E: BPL .next_rupee

;---------------------------------------------------------------------------------------------------

; reset counters
.exit
#_1DFC30: STZ.w $0CFB
#_1DFC33: STZ.w $0CFC

#_1DFC36: PLB

#_1DFC37: RTL

;===================================================================================================

Sprite_D5_DigGameGuy:
#_1DFC38: JSR SpriteDraw_DigGameGuy
#_1DFC3B: JSR Sprite_CheckIfActive_Bank1D
#_1DFC3E: JSL Sprite_BehaveAsBarrier
#_1DFC42: JSR Sprite_Move_XY_Bank1D

#_1DFC45: STZ.w $0D50,X

#_1DFC48: LDA.w $0D80,X
#_1DFC4B: JSL JumpTableLocal
#_1DFC4F: dw DigGameGuy_Idle
#_1DFC51: dw DigGameGuy_OfferGame
#_1DFC53: dw DigGameGuy_UnblockEntrance
#_1DFC55: dw DigGameGuy_SetTimer
#_1DFC57: dw DigGameGuy_Proctor
#_1DFC59: dw DigGameGuy_ThankYouComeAgain

;===================================================================================================

DigGameGuy_Idle:
#_1DFC5B: LDA.w $0D00,X
#_1DFC5E: CLC
#_1DFC5F: ADC.b #$07
#_1DFC61: CMP.b $20
#_1DFC63: BCS .exit

; Have to talk to him from below
#_1DFC65: JSR Sprite_DirectionToFaceLink_Bank1D

#_1DFC68: CPY.b #$02
#_1DFC6A: BNE .exit

;---------------------------------------------------------------------------------------------------

#_1DFC6C: LDA.l $7EF3CC
#_1DFC70: BNE .no_followers_allowed

; Message 0185
#_1DFC72: LDA.b #$85
#_1DFC74: LDY.b #$01
#_1DFC76: JSL Sprite_ShowSolicitedMessage
#_1DFC7A: BCC .exit

#_1DFC7C: INC.w $0D80,X

;---------------------------------------------------------------------------------------------------

.exit
#_1DFC7F: RTS

;---------------------------------------------------------------------------------------------------

.no_followers_allowed
; Message 018A
#_1DFC80: LDA.b #$8A
#_1DFC82: LDY.b #$01
#_1DFC84: JSL Sprite_ShowSolicitedMessage

#_1DFC88: RTS

;===================================================================================================

DigGameGuy_OfferGame:
; In this case, you reject him.
#_1DFC89: LDA.w $1CE8
#_1DFC8C: BNE .rejected

#_1DFC8E: REP #$20

; In this case, he rejects you.
; For being too poor.
#_1DFC90: LDA.l $7EF360
#_1DFC94: CMP.w #80
#_1DFC97: BCC .rejected

; They didn't need a CMP.
; Could have done the test with SBC.
; Would need to do REP #$21 : SBC.w #79 though.
; So that the state of the carry is guaranteed.
#_1DFC99: SBC.w #80
#_1DFC9C: STA.l $7EF360

#_1DFCA0: SEP #$30

; Message 0186
#_1DFCA2: LDA.b #$86
#_1DFCA4: LDY.b #$01
#_1DFCA6: JSL Sprite_ShowMessageUnconditional

#_1DFCAA: INC.w $0D80,X

#_1DFCAD: LDA.b #$01
#_1DFCAF: STA.w $0DC0,X

#_1DFCB2: LDA.b #$50
#_1DFCB4: STA.w $0DF0,X

#_1DFCB7: LDA.b #$00
#_1DFCB9: STA.l $7FFE00
#_1DFCBD: STA.l $7FFE01

#_1DFCC1: LDA.b #$05
#_1DFCC3: STA.w $0E00,X

#_1DFCC6: LDA.b #$01
#_1DFCC8: JSL DeleteBoomAndByrnaSparks

#_1DFCCC: LDA.b #!SONG_0E
#_1DFCCE: STA.w $012C

#_1DFCD1: RTS

;---------------------------------------------------------------------------------------------------

.rejected
#_1DFCD2: SEP #$30

; Message 0187
#_1DFCD4: LDA.b #$87
#_1DFCD6: LDY.b #$01
#_1DFCD8: JSL Sprite_ShowMessageUnconditional

#_1DFCDC: STZ.w $0D80,X

#_1DFCDF: RTS

;===================================================================================================

DigGameGuy_UnblockEntrance:
#_1DFCE0: LDA.w $0DF0,X
#_1DFCE3: BNE .shimmy

#_1DFCE5: INC.w $0D80,X

#_1DFCE8: LDA.b #$01
#_1DFCEA: STA.w $0DC0,X

#_1DFCED: RTS

;---------------------------------------------------------------------------------------------------

.shimmy
#_1DFCEE: LDA.w $0E00,X
#_1DFCF1: BNE .exit

#_1DFCF3: LDA.w $0DC0,X
#_1DFCF6: EOR.b #$03
#_1DFCF8: STA.w $0DC0,X

#_1DFCFB: AND.b #$01
#_1DFCFD: BEQ .dont_move_yet

#_1DFCFF: LDA.b #$F0
#_1DFD01: STA.w $0D50,X

;---------------------------------------------------------------------------------------------------

.dont_move_yet
#_1DFD04: LDA.b #$05
#_1DFD06: STA.w $0E00,X

.exit
#_1DFD09: RTS

;===================================================================================================

DigGameGuy_SetTimer:
#_1DFD0A: INC.w $0D80,X

#_1DFD0D: LDA.b #$00
#_1DFD0F: STA.w $04B5

#_1DFD12: LDA.b #$1E
#_1DFD14: STA.w $04B4

#_1DFD17: RTS

;===================================================================================================

DigGameGuy_Proctor:
#_1DFD18: LDA.w $04B4
#_1DFD1B: BEQ .times_up
#_1DFD1D: BMI .times_up

#_1DFD1F: RTS

.times_up
; let Link finish shovelling
#_1DFD20: LDA.w $037A
#_1DFD23: AND.b #$01
#_1DFD25: BNE .exit

#_1DFD27: LDA.b #!SONG_09
#_1DFD29: STA.w $012C

#_1DFD2C: INC.w $0D80,X

#_1DFD2F: STZ.w $03FC

; Message 0188
#_1DFD32: LDA.b #$88
#_1DFD34: STA.w $1CF0

#_1DFD37: LDA.b #$01
#_1DFD39: JSR Sprite_ShowMessageMinimal_bank1D

#_1DFD3C: LDA.b #$FE
#_1DFD3E: STA.w $04B4

.exit
#_1DFD41: RTS

;===================================================================================================

DigGameGuy_ThankYouComeAgain:
; Message 0189
#_1DFD42: LDA.b #$89
#_1DFD44: LDY.b #$01
#_1DFD46: JSL Sprite_ShowSolicitedMessage

#_1DFD4A: RTS

;===================================================================================================

DigGame_SpawnPrize:
#_1DFD4B: PHB
#_1DFD4C: PHK
#_1DFD4D: PLB

#_1DFD4E: LDA.l $7FFE01
#_1DFD52: INC A
#_1DFD53: STA.l $7FFE01

#_1DFD57: JSR .main

#_1DFD5A: PLB

#_1DFD5B: RTL

;---------------------------------------------------------------------------------------------------

.main
#_1DFD5C: REP #$20

; make sure you're in the field
#_1DFD5E: LDA.b $20
#_1DFD60: CMP.w #$0B18

#_1DFD63: SEP #$30
#_1DFD65: BCS DigGamePrize_Nothing

#_1DFD67: JSL GetRandomNumber
#_1DFD6B: AND.b #$07
#_1DFD6D: TAY

#_1DFD6E: JSL JumpTableLocal
#_1DFD72: dw DigGamePrize_CompensationPrize
#_1DFD74: dw DigGamePrize_CompensationPrize
#_1DFD76: dw DigGamePrize_CompensationPrize
#_1DFD78: dw DigGamePrize_CompensationPrize
#_1DFD7A: dw DigGamePrize_GrandPrize
#_1DFD7C: dw DigGamePrize_Nothing
#_1DFD7E: dw DigGamePrize_Nothing
#_1DFD80: dw DigGamePrize_Nothing

;===================================================================================================

DigGamePrize_Speed:
#_1DFD82: db -16,  16

DigGamePrize_Offset_X:
#_1DFD84: db $00, $13

CompensationPrizeTable:
#_1DFD86: db !SPRITE_DB ; red rupee
#_1DFD87: db !SPRITE_DA ; blue rupee
#_1DFD88: db !SPRITE_D9 ; green rupee
#_1DFD89: db !SPRITE_DF ; small magc

DigGamePrize_CompensationPrize:
#_1DFD8A: LDA.w CompensationPrizeTable,Y
#_1DFD8D: BRA .spawn_prize

;---------------------------------------------------------------------------------------------------

#DigGamePrize_Nothing:
#_1DFD8F: RTS

;---------------------------------------------------------------------------------------------------

#DigGamePrize_GrandPrize:
; 25 digs
#_1DFD90: LDA.l $7FFE01
#_1DFD94: CMP.b #25
#_1DFD96: BCC DigGamePrize_Nothing

; make sure it hasn't already been obtained
#_1DFD98: LDA.l $7FFE00
#_1DFD9C: BNE DigGamePrize_Nothing

; and you still only have a 1/4 shot at it
#_1DFD9E: JSL GetRandomNumber
#_1DFDA2: AND.b #$03
#_1DFDA4: BNE DigGamePrize_Nothing

#_1DFDA6: LDA.b #$EB
#_1DFDA8: STA.l $7FFE00

;---------------------------------------------------------------------------------------------------

.spawn_prize
#_1DFDAC: JSL Sprite_SpawnDynamically

#_1DFDB0: LDX.b #$00

#_1DFDB2: LDA.b $2F
#_1DFDB4: CMP.b #$04
#_1DFDB6: BEQ .facing_left

#_1DFDB8: INX

.facing_left
#_1DFDB9: LDA.w DigGamePrize_Speed,X
#_1DFDBC: STA.w $0D50,Y

#_1DFDBF: LDA.b #$00
#_1DFDC1: STA.w $0D40,Y

#_1DFDC4: LDA.b #$18
#_1DFDC6: STA.w $0F80,Y

#_1DFDC9: LDA.b #$FF
#_1DFDCB: STA.w $0B58,Y

#_1DFDCE: LDA.b #$30
#_1DFDD0: STA.w $0F10,Y

#_1DFDD3: LDA.b $22
#_1DFDD5: CLC
#_1DFDD6: ADC.w DigGamePrize_Offset_X,X
#_1DFDD9: AND.b #$F0
#_1DFDDB: STA.w $0D10,Y

#_1DFDDE: LDA.b $23
#_1DFDE0: ADC.b #$00
#_1DFDE2: STA.w $0D30,Y

#_1DFDE5: LDA.b $20
#_1DFDE7: CLC
#_1DFDE8: ADC.b #$16
#_1DFDEA: AND.b #$F0
#_1DFDEC: STA.w $0D00,Y

#_1DFDEF: LDA.b $21
#_1DFDF1: ADC.b #$00
#_1DFDF3: STA.w $0D20,Y

;---------------------------------------------------------------------------------------------------

#_1DFDF6: LDA.b #$00
#_1DFDF8: STA.w $0F20,Y

#_1DFDFB: TYX

#_1DFDFC: LDA.b #!SFX3_30
#_1DFDFE: JSL SpriteSFX_QueueSFX3WithPan

#_1DFE02: RTS

;===================================================================================================

pool SpriteDraw_DigGameGuy

.oam_groups
; group00
#_1DFE03: dw   0,  -8 : db $40, $0A, $00, $02
#_1DFE0B: dw   4,   9 : db $56, $0C, $00, $00
#_1DFE13: dw   0,   0 : db $42, $0A, $00, $02

; group01
#_1DFE1B: dw   0,  -8 : db $40, $0A, $00, $02
#_1DFE23: dw   0,   0 : db $42, $0A, $00, $02
#_1DFE2B: dw   0,   0 : db $42, $0A, $00, $02

; group02
#_1DFE33: dw  -1,  -7 : db $40, $0A, $00, $02
#_1DFE3B: dw  -1,   0 : db $44, $0A, $00, $02
#_1DFE43: dw  -1,   0 : db $44, $0A, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_DigGameGuy:
#_1DFE4B: LDA.b #$03
#_1DFE4D: STA.b $06
#_1DFE4F: STZ.b $07

#_1DFE51: LDA.w $0DC0,X
#_1DFE54: ASL A ; x2
#_1DFE55: ADC.w $0DC0,X ; +1 for x3

#_1DFE58: ASL A ; x8 for x24 total
#_1DFE59: ASL A
#_1DFE5A: ASL A

#_1DFE5B: ADC.b #.oam_groups>>0
#_1DFE5D: STA.b $08

#_1DFE5F: LDA.b #.oam_groups>>8
#_1DFE61: ADC.b #$00
#_1DFE63: STA.b $09

#_1DFE65: JSL Sprite_DrawMultiple_player_deferred
#_1DFE69: JSL SpriteDraw_Shadow_long

#_1DFE6D: RTS

;===================================================================================================

pool SpriteDraw_OldMan

.oam_groups_static
#_1DFE6E: dw   0,   0 : db $AC, $00, $00, $02
#_1DFE76: dw   0,   8 : db $AE, $00, $00, $02

;---------------------------------------------------------------------------------------------------

.oam_groups_dynamic
; group00
#_1DFE7E: dw   0,   0 : db $20, $01, $00, $02
#_1DFE86: dw   0,   8 : db $22, $01, $00, $02

; group01
#_1DFE8E: dw   0,   1 : db $20, $01, $00, $02
#_1DFE96: dw   0,   9 : db $22, $41, $00, $02

; group02
#_1DFE9E: dw   0,   0 : db $20, $01, $00, $02
#_1DFEA6: dw   0,   8 : db $22, $01, $00, $02

; group03
#_1DFEAE: dw   0,   1 : db $20, $01, $00, $02
#_1DFEB6: dw   0,   9 : db $22, $41, $00, $02

; group04
#_1DFEBE: dw  -2,   0 : db $20, $01, $00, $02
#_1DFEC6: dw   0,   8 : db $22, $01, $00, $02

; group05
#_1DFECE: dw  -2,   1 : db $20, $01, $00, $02
#_1DFED6: dw   0,   9 : db $22, $01, $00, $02

; group06
#_1DFEDE: dw   2,   0 : db $20, $41, $00, $02
#_1DFEE6: dw   0,   8 : db $22, $41, $00, $02

; group07
#_1DFEEE: dw   2,   1 : db $20, $41, $00, $02
#_1DFEF6: dw   0,   9 : db $22, $41, $00, $02

;---------------------------------------------------------------------------------------------------

; used to load follower graphics when old man is lost
.follower_gfx_offset
#_1DFEFE: db $20, $C0
#_1DFF00: db $20, $C0
#_1DFF02: db $00, $A0
#_1DFF04: db $00, $A0
#_1DFF06: db $40, $80
#_1DFF08: db $40, $60
#_1DFF0A: db $40, $80
#_1DFF0C: db $40, $60

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_OldMan:
#_1DFF0E: PHB
#_1DFF0F: PHK
#_1DFF10: PLB

#_1DFF11: LDA.w $0E80,X
#_1DFF14: CMP.b #$02
#_1DFF16: BEQ .draw_static

#_1DFF18: LDA.b #$02
#_1DFF1A: STA.b $06
#_1DFF1C: STZ.b $07

#_1DFF1E: LDA.w $0DE0,X
#_1DFF21: ASL A

#_1DFF22: ADC.w $0DC0,X
#_1DFF25: ASL A
#_1DFF26: TAY

#_1DFF27: LDA.w .follower_gfx_offset+0,Y
#_1DFF2A: STA.w $0AE8

#_1DFF2D: LDA.w .follower_gfx_offset+1,Y
#_1DFF30: STA.w $0AEA

#_1DFF33: TYA
#_1DFF34: ASL A ; x8
#_1DFF35: ASL A
#_1DFF36: ASL A
#_1DFF37: ADC.b #.oam_groups_dynamic>>0
#_1DFF39: STA.b $08

#_1DFF3B: LDA.b #.oam_groups_dynamic>>8
#_1DFF3D: ADC.b #$00
#_1DFF3F: STA.b $09

#_1DFF41: JSL Sprite_DrawMultiple_player_deferred

#_1DFF45: PLB

#_1DFF46: RTL

;---------------------------------------------------------------------------------------------------

.draw_static
#_1DFF47: LDA.b #$02
#_1DFF49: STA.b $06
#_1DFF4B: STZ.b $07

#_1DFF4D: LDA.b #.oam_groups_static>>0
#_1DFF4F: STA.b $08

#_1DFF51: LDA.b #.oam_groups_static>>8
#_1DFF53: STA.b $09

#_1DFF55: JSL Sprite_DrawMultiple_player_deferred

#_1DFF59: PLB

#_1DFF5A: RTL

;===================================================================================================

SpriteModule_Burn:
#_1DFF5B: PHB
#_1DFF5C: PHK
#_1DFF5D: PLB

#_1DFF5E: STZ.w $0EF0,X

#_1DFF61: LDA.w $0DF0,X
#_1DFF64: DEC A
#_1DFF65: BNE .burning_in_agony

#_1DFF67: JSL Sprite_DoTheDeath_long

#_1DFF6B: PLB

#_1DFF6C: RTL

;---------------------------------------------------------------------------------------------------

.burning_in_agony
#_1DFF6D: LDY.w $0DC0,X

#_1DFF70: PHY

#_1DFF71: LSR A
#_1DFF72: LSR A
#_1DFF73: LSR A

#_1DFF74: PHX

#_1DFF75: TAX
#_1DFF76: LDA.l LingeringFlameDrawStep,X

#_1DFF7A: PLX

#_1DFF7B: STA.w $0DC0,X

#_1DFF7E: LDA.w $0F50,X
#_1DFF81: PHA

#_1DFF82: LDA.b #$03
#_1DFF84: STA.w $0F50,X

#_1DFF87: JSL SpriteDraw_Flame

#_1DFF8B: PLA
#_1DFF8C: STA.w $0F50,X

#_1DFF8F: PLA
#_1DFF90: STA.w $0DC0,X

#_1DFF93: REP #$20

#_1DFF95: LDA.b $90
#_1DFF97: CLC
#_1DFF98: ADC.w #$0008
#_1DFF9B: STA.b $90

#_1DFF9D: INC.b $92
#_1DFF9F: INC.b $92

#_1DFFA1: SEP #$20

#_1DFFA3: LDA.w $0DF0,X
#_1DFFA6: CMP.b #$10
#_1DFFA8: BCC .stop_drawing_sprite

#_1DFFAA: LDA.w $0E40,X
#_1DFFAD: PHA

#_1DFFAE: DEC A
#_1DFFAF: DEC A
#_1DFFB0: STA.w $0E40,X

#_1DFFB3: JSL SpriteModule_Active_long

#_1DFFB7: PLA
#_1DFFB8: STA.w $0E40,X

;---------------------------------------------------------------------------------------------------

.stop_drawing_sprite
#_1DFFBB: PLB

#_1DFFBC: RTL

;===================================================================================================

pool SpriteDraw_Falling

.char
#_1DFFBD: db $83, $83, $83, $80
#_1DFFC1: db $80, $80, $B7, $B7

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Falling:
#_1DFFC5: PHB
#_1DFFC6: PHK
#_1DFFC7: PLB

#_1DFFC8: LDA.b $00
#_1DFFCA: CLC
#_1DFFCB: ADC.b #$04
#_1DFFCD: STA.b ($90),Y

#_1DFFCF: LDA.b $02
#_1DFFD1: CLC
#_1DFFD2: ADC.b #$04
#_1DFFD4: INY
#_1DFFD5: STA.b ($90),Y

#_1DFFD7: LDA.w $0DF0,X
#_1DFFDA: LSR A
#_1DFFDB: LSR A

#_1DFFDC: PHX

#_1DFFDD: TAX
#_1DFFDE: LDA.w .char,X

#_1DFFE1: INY
#_1DFFE2: STA.b ($90),Y

#_1DFFE4: LDA.b $05
#_1DFFE6: AND.b #$30
#_1DFFE8: ORA.b #$04
#_1DFFEA: INY
#_1DFFEB: STA.b ($90),Y

#_1DFFED: PLX

#_1DFFEE: LDY.b #$00
#_1DFFF0: LDA.b #$00
#_1DFFF2: JSL Sprite_CorrectOAMEntries_long

#_1DFFF6: PLB

#_1DFFF7: RTL

;===================================================================================================
; FREE ROM: 0x08
;===================================================================================================
NULL_1DFFF8:
#_1DFFF8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

org $1E8000

;===================================================================================================

HelmasaurKing_Initialize:
#_1E8000: LDA.b #$30
#_1E8002: STA.w $0B2F

#_1E8005: LDA.b #$80
#_1E8007: STA.w $0B2D

#_1E800A: STZ.w $0B2E
#_1E800D: STZ.w $0B30
#_1E8010: STZ.w $0B33
#_1E8013: STZ.w $0B31
#_1E8016: STZ.w $0B32

;===================================================================================================

HelmasaurKing_Reinitialize:
#_1E8019: PHB
#_1E801A: PHK
#_1E801B: PLB

#_1E801C: PHX

#_1E801D: LDA.w $0E80,X
#_1E8020: STA.b $00

#_1E8022: LDY.b #$03

.next_leg
#_1E8024: LDA.b $00
#_1E8026: CLC
#_1E8027: ADC.w HelmasaurKingLeg_OffsetYBaseIndex,Y
#_1E802A: AND.b #$1F
#_1E802C: TAX

#_1E802D: LDA.w HelmasaurKingLeg_Offset_Y,X
#_1E8030: STA.w $0B08,Y

#_1E8033: DEY
#_1E8034: BPL .next_leg

#_1E8036: PLX
#_1E8037: PLB

#_1E8038: RTL

;===================================================================================================

Sprite_92_HelmasaurKing:
#_1E8039: LDA.w $0DB0,X
#_1E803C: BPL HelmasaurKing_Main

;===================================================================================================

HelmasaurKing_MaskDebris:
#_1E803E: LDA.w $0DF0,X
#_1E8041: BEQ .stay_around

#_1E8043: DEC A
#_1E8044: BNE .stay_around

#_1E8046: STZ.w $0DD0,X

.stay_around
#_1E8049: JSL SpriteDraw_SingleLarge_long
#_1E804D: JSR Sprite_CheckIfActive_Bank1E

#_1E8050: LDA.b $1A
#_1E8052: AND.b #$07
#_1E8054: ORA.w $0E00,X
#_1E8057: BNE .preserve_flip

#_1E8059: LDA.w $0F50,X
#_1E805C: EOR.b #$40
#_1E805E: STA.w $0F50,X

.preserve_flip
#_1E8061: JSR Sprite_Move_XYZ_Bank1E

#_1E8064: DEC.w $0F80,X
#_1E8067: DEC.w $0F80,X

#_1E806A: LDA.w $0F70,X
#_1E806D: BPL .exit

#_1E806F: STZ.w $0F70,X

#_1E8072: LDA.b #$0C
#_1E8074: STA.w $0DF0,X

#_1E8077: LDA.b #$18
#_1E8079: STA.w $0F80,X

#_1E807C: LDA.b #$06
#_1E807E: STA.w $0DC0,X

.exit
#_1E8081: RTS

;===================================================================================================

HelmasaurKing_Main:
#_1E8082: CMP.b #$03
#_1E8084: BCS .still_masked

#_1E8086: LDA.w $0B89,X
#_1E8089: AND.b #$F1
#_1E808B: STA.w $0B89,X

#_1E808E: LDA.b #$0A
#_1E8090: STA.w $0B6B,X

#_1E8093: BRA .continue

.still_masked
#_1E8095: LDA.b #$1F
#_1E8097: STA.w $0F60,X

#_1E809A: LDA.b #$02
#_1E809C: STA.w $0B6B,X

.continue
#_1E809F: JSR SpriteDraw_KingHelmasaur

#_1E80A2: LDA.w $0DD0,X
#_1E80A5: CMP.b #$06
#_1E80A7: BNE HelmasaurKing_Alive

#_1E80A9: LDA.w $0DF0,X
#_1E80AC: BNE .delay_explosions

#_1E80AE: LDA.b #$04
#_1E80B0: STA.w $0DD0,X

#_1E80B3: STZ.w $0D90,X

#_1E80B6: LDA.b #$E0
#_1E80B8: STA.w $0DF0,X

#_1E80BB: RTS

;---------------------------------------------------------------------------------------------------

.delay_explosions
#_1E80BC: PHA

#_1E80BD: ORA.b #$F0
#_1E80BF: STA.w $0EF0,X

#_1E80C2: PLA
#_1E80C3: CMP.b #$80
#_1E80C5: BCS .exit

#_1E80C7: AND.b #$07
#_1E80C9: BNE .exit

#_1E80CB: LDY.w $0B33
#_1E80CE: CPY.b #$10
#_1E80D0: BEQ .exit

#_1E80D2: INC.w $0B33

#_1E80D5: STZ.b $00

#_1E80D7: LDA.w $0B0D,Y
#_1E80DA: BPL .positive_a

#_1E80DC: DEC.b $00

.positive_a
#_1E80DE: CLC
#_1E80DF: ADC.w $0D10,X
#_1E80E2: STA.w $0FD8

#_1E80E5: LDA.w $0D30,X
#_1E80E8: ADC.b $00
#_1E80EA: STA.w $0FD9

#_1E80ED: STZ.b $00

#_1E80EF: LDA.w $0B1D,Y
#_1E80F2: BPL .positive_b

#_1E80F4: DEC.b $00

.positive_b
#_1E80F6: CLC
#_1E80F7: ADC.w $0D00,X
#_1E80FA: STA.w $0FDA

#_1E80FD: LDA.w $0D20,X
#_1E8100: ADC.b $00
#_1E8102: STA.w $0FDB

#_1E8105: JSL MakeBossExplosion

.exit
#_1E8109: RTS

;===================================================================================================

pool HelmasaurKing_Alive

.phase_hp
#_1E810A: db $03, $03, $03, $03, $03, $03, $03, $03
#_1E8112: db $02, $02, $01, $01, $00

pool off

;---------------------------------------------------------------------------------------------------

HelmasaurKing_Alive:
#_1E8117: JSR Sprite_CheckIfActive_Bank1E

#_1E811A: LDA.w $0E50,X
#_1E811D: LSR A
#_1E811E: LSR A
#_1E811F: TAY

#_1E8120: LDA.w .phase_hp,Y
#_1E8123: STA.w $0DB0,X

#_1E8126: CMP.b #$03
#_1E8128: BNE .not_phase3

#_1E812A: CMP.w $0E90,X
#_1E812D: BEQ .continue

#_1E812F: STZ.w $0EF0,X

#_1E8132: JSR HelmasaurKing_ExplodeMask
#_1E8135: BRA .continue

.not_phase3
#_1E8137: CMP.w $0E90,X
#_1E813A: BEQ .continue

#_1E813C: JSR HelmasaurKing_ChipAwayAtMask

.continue
#_1E813F: LDA.w $0DB0,X
#_1E8142: STA.w $0E90,X

#_1E8145: JSL Sprite_CheckDamageFromLink_long

#_1E8149: JSR HelmasaurKing_SwingTail
#_1E814C: JSR HelmasaurKing_AttemptDamage
#_1E814F: JSR HelmasaurKing_CheckMaskDamageFromHammer

#_1E8152: LDA.w $0E00,X
#_1E8155: BEQ .might_fireball

#_1E8157: CMP.b #$60
#_1E8159: BEQ .no_fireball

#_1E815B: RTS

;---------------------------------------------------------------------------------------------------

.might_fireball
#_1E815C: LDA.w $0E10,X
#_1E815F: BEQ .do_attack

#_1E8161: CMP.b #$40
#_1E8163: BNE .exit

#_1E8165: JSR HelmasaurKing_SpitFireball

#_1E8168: LDA.w $0DB0,X
#_1E816B: CMP.b #$03
#_1E816D: BCC .exit

.no_fireball
#_1E816F: LDA.w $0EC0,X
#_1E8172: BNE .exit

#_1E8174: INC.w $0EC0,X

#_1E8177: LDA.b #$20
#_1E8179: STA.w $0EE0,X

.exit
#_1E817C: RTS

;---------------------------------------------------------------------------------------------------

.do_attack
#_1E817D: LDA.w $0D80,X
#_1E8180: JSL JumpTableLocal
#_1E8184: dw HelmasaurKing_DecisionHome
#_1E8186: dw HelmasaurKing_WalkToLocation
#_1E8188: dw HelmasaurKing_DecisionAway
#_1E818A: dw HelmasaurKing_WalkBackHome

;===================================================================================================

pool HelmasaurKing_DecisionHome

.speed_x
#_1E818C: db -12, -12,  -4,   0,   4,  12,  12,   0

.speed_y
#_1E8194: db   0,   4,  12,  12,  12,   4,   0,  12

pool off

;---------------------------------------------------------------------------------------------------

HelmasaurKing_DecisionHome:
#_1E819C: LDA.w $0EF0,X
#_1E819F: BNE .delay

#_1E81A1: LDA.w $0DF0,X
#_1E81A4: BNE .exit

.delay
#_1E81A6: JSR HelmasaurKing_MaybeFireball

#_1E81A9: JSL GetRandomNumber
#_1E81AD: AND.b #$07
#_1E81AF: TAY

#_1E81B0: LDA.w .speed_x,Y
#_1E81B3: STA.w $0D50,X

#_1E81B6: LDA.w .speed_y,Y
#_1E81B9: STA.w $0D40,X

#_1E81BC: LDA.b #$40
#_1E81BE: STA.w $0DF0,X

#_1E81C1: LDA.w $0DB0,X
#_1E81C4: CMP.b #$03
#_1E81C6: BCC .normal_speed

#_1E81C8: ASL.w $0D50,X
#_1E81CB: ASL.w $0D40,X
#_1E81CE: LSR.w $0DF0,X

.normal_speed
#_1E81D1: INC.w $0D80,X

.exit
#_1E81D4: RTS

;===================================================================================================

HelmasaurKing_WalkToLocation:
#_1E81D5: JSR HelmasaurKing_HandleMovement

#_1E81D8: LDA.w $0DF0,X
#_1E81DB: BNE .exit

#_1E81DD: LDA.b #$20
#_1E81DF: STA.w $0DF0,X

#_1E81E2: INC.w $0D80,X

.exit
#_1E81E5: RTS

;===================================================================================================

HelmasaurKing_HandleMovement:
#_1E81E6: JSR HelmasaurKing_ShuffleLegs

#_1E81E9: LDA.b $1A
#_1E81EB: AND.b #$03
#_1E81ED: BNE .no_extra_shuffle

#_1E81EF: JSR HelmasaurKing_ShuffleLegs

.no_extra_shuffle
#_1E81F2: LDA.w $0DB0,X
#_1E81F5: CMP.b #$03
#_1E81F7: BCC .no_double_extra_shuffle

#_1E81F9: JSR HelmasaurKing_ShuffleLegs

.no_double_extra_shuffle
#_1E81FC: JSR Sprite_Move_XY_Bank1E

#_1E81FF: RTS

;===================================================================================================

HelmasaurKing_ShuffleLegs:
#_1E8200: INC.w $0E80,X

#_1E8203: LDA.w $0E80,X
#_1E8206: AND.b #$0F
#_1E8208: BNE .exit

#_1E820A: LDA.b #$21 ; SFX2.21
#_1E820C: STA.w $012E

.exit
#_1E820F: RTS

;===================================================================================================

HelmasaurKing_DecisionAway:
#_1E8210: LDA.w $0EF0,X
#_1E8213: BNE .delay

#_1E8215: LDA.w $0DF0,X
#_1E8218: BNE .exit

.delay
#_1E821A: JSR HelmasaurKing_MaybeFireball

#_1E821D: LDA.b #$40
#_1E821F: STA.w $0DF0,X

#_1E8222: LDA.w $0E90,X
#_1E8225: CMP.b #$03
#_1E8227: BCC .dont_halve_timer

#_1E8229: LSR.w $0DF0,X

.dont_halve_timer
#_1E822C: LDA.w $0D50,X
#_1E822F: EOR.b #$FF
#_1E8231: INC A
#_1E8232: STA.w $0D50,X

#_1E8235: LDA.w $0D40,X
#_1E8238: EOR.b #$FF
#_1E823A: INC A
#_1E823B: STA.w $0D40,X

#_1E823E: INC.w $0D80,X

.exit
#_1E8241: RTS

;===================================================================================================

HelmasaurKing_WalkBackHome:
#_1E8242: JSR HelmasaurKing_HandleMovement

#_1E8245: LDA.w $0DF0,X
#_1E8248: BNE .exit

#_1E824A: STZ.w $0D80,X

#_1E824D: LDA.b #$40
#_1E824F: STA.w $0DF0,X

.exit
#_1E8252: RTS

;===================================================================================================

HelmasaurKing_MaybeFireball:
#_1E8253: INC.w $0E30,X

#_1E8256: LDA.w $0E30,X
#_1E8259: CMP.b #$04
#_1E825B: BNE .exit

#_1E825D: PLA
#_1E825E: PLA

#_1E825F: STZ.w $0E30,X

#_1E8262: JSL GetRandomNumber
#_1E8266: AND.b #$01
#_1E8268: BEQ .no_sfx

#_1E826A: LDA.b #$7F
#_1E826C: STA.w $0E10,X

#_1E826F: LDA.b #$2A ; SFX3.2A
#_1E8271: JSL SpriteSFX_QueueSFX3WithPan

#_1E8275: RTS

.no_sfx
#_1E8276: LDA.b #$A0
#_1E8278: STA.w $0E00,X

.exit
#_1E827B: RTS

;===================================================================================================

HelmasaurKingLeg_Offset_Y:
#_1E827C: db $00, $01, $02, $03, $04, $05, $06, $07
#_1E8284: db $08, $08, $08, $08, $08, $08, $08, $08
#_1E828C: db $08, $08, $08, $08, $08, $08, $08, $08
#_1E8294: db $08, $07, $06, $05, $04, $03, $02, $01

HelmasaurKingLeg_OffsetYBaseIndex:
#_1E829C: db $00, $08, $10, $18

;===================================================================================================
; TODO analyze and better sublabels
;===================================================================================================
HelmasaurKing_SwingTail:
#_1E82A0: INC.w $0B0C

#_1E82A3: JSL HelmasaurKing_Reinitialize

#_1E82A7: LDA.b #$01
#_1E82A9: LDY.w $0EC0,X
#_1E82AC: BEQ .allow_success

#_1E82AE: LDA.b #$00

.allow_success
#_1E82B0: AND.b $1A
#_1E82B2: BNE .bad_frame_parity

#_1E82B4: LDA.w $0DE0,X
#_1E82B7: AND.b #$01
#_1E82B9: TAY

#_1E82BA: LDA.w $0B30
#_1E82BD: CLC
#_1E82BE: ADC.w HelmasaurKing_TailSwingRotationDirection,Y
#_1E82C1: STA.w $0B30

#_1E82C4: CMP.w Sixteen_X,Y
#_1E82C7: BNE .x_max

#_1E82C9: INC.w $0DE0,X

.x_max
#_1E82CC: LDY.b #$00

#_1E82CE: LDA.w $0B30
#_1E82D1: BPL .x_pos

#_1E82D3: DEY

.x_pos
#_1E82D4: CLC
#_1E82D5: ADC.w $0B2D
#_1E82D8: STA.w $0B2D

#_1E82DB: TYA
#_1E82DC: ADC.w $0B2E
#_1E82DF: AND.b #$FF
#_1E82E1: STA.w $0B2E

.bad_frame_parity
#_1E82E4: LDA.w $0EC0,X
#_1E82E7: BEQ .exit_a

#_1E82E9: LDA.w $0B30
#_1E82EC: BNE .skip_sfx

#_1E82EE: LDA.b #$06 ; SFX3.06
#_1E82F0: JSL SpriteSFX_QueueSFX3WithPan

;---------------------------------------------------------------------------------------------------

.skip_sfx
#_1E82F4: LDA.w $0EC0,X
#_1E82F7: CMP.b #$02
#_1E82F9: BEQ .do_segment_a

#_1E82FB: CMP.b #$03
#_1E82FD: BEQ .do_segment_b

#_1E82FF: LDA.w $0B30
#_1E8302: ORA.w $0EE0,X
#_1E8305: BNE .exit_b

#_1E8307: LDA.w $0B2E
#_1E830A: AND.b #$01
#_1E830C: STA.w $0EB0,X

#_1E830F: JSR Sprite_IsRightOfLink_Bank1E

#_1E8312: TYA
#_1E8313: EOR.b #$01
#_1E8315: CMP.w $0EB0,X
#_1E8318: BNE .exit_a

#_1E831A: INC.w $0EC0,X

#_1E831D: JSL Sprite_CalculateSFXPan
#_1E8321: ORA.b #$26 ; SFX3.26
#_1E8323: STA.w $012F

.exit_a
#_1E8326: RTS

;===================================================================================================

.offset_low
#_1E8327: db    4,   -4

.offset_high
#_1E8329: db    0,   -1

.limit
#_1E832B: db  124, -124

;---------------------------------------------------------------------------------------------------

.do_segment_a
#_1E832D: LDY.w $0EB0,X

#_1E8330: LDA.w $0B31
#_1E8333: CLC
#_1E8334: ADC.w .offset_low,Y
#_1E8337: STA.w $0B31

#_1E833A: PHA

#_1E833B: LDA.w $0B32
#_1E833E: ADC.w .offset_high,Y
#_1E8341: STA.w $0B32

#_1E8344: PLA
#_1E8345: CMP.w .limit,Y
#_1E8348: BNE .a_fine

#_1E834A: INC.w $0EC0,X

.a_fine
#_1E834D: LDA.w $0B2F
#_1E8350: CLC
#_1E8351: ADC.b #$03
#_1E8353: STA.w $0B2F

#_1E8356: RTS

;---------------------------------------------------------------------------------------------------

.do_segment_b
#_1E8357: LDA.w $0EB0,X
#_1E835A: EOR.b #$01
#_1E835C: TAY

#_1E835D: LDA.w $0B31
#_1E8360: CLC
#_1E8361: ADC.w .offset_low,Y
#_1E8364: STA.w $0B31

#_1E8367: PHA

#_1E8368: LDA.w $0B32
#_1E836B: ADC.w .offset_high,Y
#_1E836E: STA.w $0B32

#_1E8371: PLA
#_1E8372: CMP.b #$00
#_1E8374: BNE .b_fine

#_1E8376: STZ.w $0EC0,X

.b_fine
#_1E8379: LDA.w $0B2F
#_1E837C: SEC
#_1E837D: SBC.b #$03
#_1E837F: STA.w $0B2F

.exit_b
#_1E8382: RTS

;===================================================================================================

HelmasaurKing_TailSwingRotationDirection:
#_1E8383: db  1, -1

;===================================================================================================

HelmasaurKing_CheckMaskDamageFromHammer:
#_1E8385: LDA.w $0DB0,X
#_1E8388: CMP.b #$03
#_1E838A: BCS .exit

#_1E838C: LDA.w $0301
#_1E838F: AND.b #$0A
#_1E8391: BEQ .exit

#_1E8393: LDA.b $44
#_1E8395: CMP.b #$80
#_1E8397: BEQ .exit

#_1E8399: JSL SetupActionHitbox_long

#_1E839D: LDA.w $0D00,X
#_1E83A0: PHA

#_1E83A1: CLC
#_1E83A2: ADC.b #$08
#_1E83A4: STA.w $0D00,X

#_1E83A7: JSL Sprite_SetupHitbox_long

#_1E83AB: PLA
#_1E83AC: STA.w $0D00,X

#_1E83AF: JSL CheckIfHitBoxesOverlap_long
#_1E83B3: BCC .exit

#_1E83B5: DEC.w $0E50,X

#_1E83B8: LDA.b #$21 ; SFX3.21
#_1E83BA: STA.w $012F

#_1E83BD: LDA.b #$30
#_1E83BF: JSL Sprite_ProjectSpeedTowardsLink_long

#_1E83C3: LDA.b $00
#_1E83C5: STA.b $27

#_1E83C7: LDA.b $01
#_1E83C9: STA.b $28

#_1E83CB: LDA.b #$08
#_1E83CD: STA.w $0046

#_1E83D0: LDA.w $0FAC
#_1E83D3: BNE .no_spark

; !BUG cute bug here
; Not sure what exactly they were planning to do,
; but this uses the projected speed values to place a weapon tink spark.
; This is why there's sometimes a spark at the bottom of the screen.
#_1E83D5: LDA.b $00
#_1E83D7: STA.w $0FAD

#_1E83DA: LDA.b $01
#_1E83DC: STA.w $0FAE

#_1E83DF: LDA.b #$05
#_1E83E1: STA.w $0FAC

.no_spark
#_1E83E4: LDA.b #$05 ; SFX2.05
#_1E83E6: JSL SpriteSFX_QueueSFX2WithPan

.exit
#_1E83EA: RTS

;===================================================================================================

HelmasaurKing_AttemptDamage:
#_1E83EB: LDA.b $1A
#_1E83ED: AND.b #$07
#_1E83EF: BNE .no_damage

#_1E83F1: REP #$20

#_1E83F3: LDA.b $22
#_1E83F5: SEC
#_1E83F6: SBC.w $0FD8
#_1E83F9: CLC
#_1E83FA: ADC.w #$0024

#_1E83FD: CMP.w #$0048
#_1E8400: BCS .no_damage

#_1E8402: LDA.b $20
#_1E8404: SEC
#_1E8405: SBC.w $0FDA
#_1E8408: CLC
#_1E8409: ADC.w #$0028

#_1E840C: CMP.w #$0040
#_1E840F: BCS .no_damage

#_1E8411: SEP #$20

#_1E8413: JSL Sprite_AttemptDamageToLinkPlusRecoil_long

.no_damage
#_1E8417: SEP #$20

#_1E8419: RTS

;===================================================================================================

pool HelmasaurKing_SpawnMaskDebris

.offset_y_low
#_1E841A: db  24,  27,  24,  24,  27,  24,  27,  27,  24,  24

.offset_y_high
#_1E8424: db   0,   0,   0,   0,   0,   0,   0,   0,   0,   0

.offset_x_low
#_1E842E: db -16,   0,  16, -16,   0,  16,  -8,   8, -16,  16

.offset_x_high
#_1E8438: db  -1,   0,   0,  -1,   0,   0,  -1,   0,  -1,   0

.initial_z
#_1E8442: db  29,  32,  29,  13,  16,  13,   0,   0,  13,  13

.speed_x
#_1E844C: db -16,  -4,  14, -12,   4,  18,  -2,   2, -12,  18

.speed_y
#_1E8456: db  -8,  -4,  -6,   4,   2,   7,   6,   8,   4,   7

.speed_z
#_1E8460: db  32,  40,  36,  37,  39,  34,  30,  33,  37,  34

.flip
#_1E846A: db $00, $00, $40, $00, $00, $40, $00, $40, $00, $40

.starting_anim
#_1E8474: db $00, $01, $00, $02, $03, $02, $04, $04, $05, $05

pool off

;===================================================================================================

HelmasaurKing_ChipAwayAtMask:
#_1E847E: LDA.w $0DB0,X
#_1E8481: CLC
#_1E8482: ADC.b #$07
#_1E8484: STA.w $0FB5

#_1E8487: JSR HelmasaurKing_SpawnMaskDebris

#_1E848A: BRA .make_sfx

;===================================================================================================

#HelmasaurKing_ExplodeMask:
#_1E848C: LDY.b #$0F
#_1E848E: LDA.b #$00

; Deletes all sprites except king helma
.next_sprite
#_1E8490: STA.w $0DD0,Y

#_1E8493: DEY
#_1E8494: BNE .next_sprite

; Spawn 8 debris sprites
#_1E8496: LDA.b #$07
#_1E8498: STA.w $0FB5

.next_debris
#_1E849B: JSR HelmasaurKing_SpawnMaskDebris

#_1E849E: DEC.w $0FB5
#_1E84A1: BPL .next_debris

.make_sfx
#_1E84A3: LDA.b #$1F ; SFX2.1F
#_1E84A5: JSL SpriteSFX_QueueSFX2WithPan

#_1E84A9: RTS

;===================================================================================================

HelmasaurKing_SpawnMaskDebris:
#_1E84AA: LDA.b #$92 ; SPRITE 92
#_1E84AC: JSL Sprite_SpawnDynamically
#_1E84B0: BMI .no_space

#_1E84B2: PHX

#_1E84B3: LDX.w $0FB5

#_1E84B6: LDA.b $00
#_1E84B8: CLC
#_1E84B9: ADC.w .offset_x_low,X
#_1E84BC: STA.w $0D10,Y

#_1E84BF: LDA.b $01
#_1E84C1: ADC.w .offset_x_high,X
#_1E84C4: STA.w $0D30,Y

#_1E84C7: LDA.b $02
#_1E84C9: CLC
#_1E84CA: ADC.w .offset_y_low,X
#_1E84CD: STA.w $0D00,Y

#_1E84D0: LDA.b $03
#_1E84D2: ADC.w .offset_y_high,X
#_1E84D5: STA.w $0D20,Y

#_1E84D8: LDA.w .initial_z,X
#_1E84DB: STA.w $0F70,Y

#_1E84DE: LDA.w .speed_x,X
#_1E84E1: STA.w $0D50,Y

#_1E84E4: LDA.w .speed_y,X
#_1E84E7: STA.w $0D40,Y

#_1E84EA: LDA.w .speed_z,X
#_1E84ED: STA.w $0F80,Y

#_1E84F0: LDA.w .flip,X
#_1E84F3: ORA.b #$0D
#_1E84F5: STA.w $0F50,Y

#_1E84F8: LDA.w .starting_anim,X
#_1E84FB: STA.w $0DC0,Y

#_1E84FE: LDA.b #$80
#_1E8500: STA.w $0DB0,Y

#_1E8503: ASL A
#_1E8504: STA.w $0E40,Y

#_1E8507: LDA.b #$0C
#_1E8509: STA.w $0E00,Y
#_1E850C: STA.w $0BA0,Y

#_1E850F: LDA.w $0FB5
#_1E8512: STA.w $0E30,Y

#_1E8515: PLX

.no_space
#_1E8516: RTS

;===================================================================================================

HelmasaurKing_SpitFireball:
#_1E8517: LDA.b #$70 ; SPRITE 70
#_1E8519: JSL Sprite_SpawnDynamically
#_1E851D: BMI .no_space

#_1E851F: JSL Sprite_SetSpawnedCoordinates

#_1E8523: LDA.b $02
#_1E8525: CLC
#_1E8526: ADC.b #$1C
#_1E8528: STA.w $0D00,Y

#_1E852B: LDA.b $03
#_1E852D: ADC.b #$00
#_1E852F: STA.w $0D20,Y

#_1E8532: LDA.b #$20
#_1E8534: STA.w $0DF0,Y
#_1E8537: STA.w $0BA0,Y

.no_space
#_1E853A: RTS

;===================================================================================================

SpriteDraw_KingHelmasaur:
#_1E853B: REP #$20

; !HARDCODED oam slots
#_1E853D: LDA.w #$089C
#_1E8540: STA.b $90

#_1E8542: LDA.w #$0A47
#_1E8545: STA.b $92

#_1E8547: SEP #$20

#_1E8549: JSR Sprite_PrepOAMCoord_Bank1E

#_1E854C: JSR KingHelmasaur_OperateTail
#_1E854F: JSR SpriteDraw_KingHelmasaur_Eyes
#_1E8552: JSR KingHelmasaurMask
#_1E8555: JSR SpriteDraw_KingHelmasaur_Body
#_1E8558: JSR SpriteDraw_KingHelmasaur_Legs
#_1E855B: JSR SpriteDraw_KingHelmasaur_Mouth

#_1E855E: RTS

;===================================================================================================

pool SpriteDraw_KingHelmasaur_Eyes

.offset_x
#_1E855F: db  -3,  11

; character for eye flasing
.char
#_1E8561: db $CE, $CF, $DE, $DE, $DE, $DE, $CF, $CE

.prop
#_1E8569: db $3B, $7B

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_KingHelmasaur_Eyes:
#_1E856B: REP #$20

#_1E856D: LDA.b $90
#_1E856F: CLC
#_1E8570: ADC.w #$0040
#_1E8573: STA.b $90

#_1E8575: LDA.b $92
#_1E8577: CLC
#_1E8578: ADC.w #$0010
#_1E857B: STA.b $92

#_1E857D: SEP #$20

#_1E857F: PHX

#_1E8580: LDY.b #$00
#_1E8582: LDX.b #$01

.next_eye
#_1E8584: PHX

#_1E8585: LDA.b $00
#_1E8587: CLC
#_1E8588: ADC.w .offset_x,X
#_1E858B: STA.b ($90),Y

#_1E858D: LDA.b $02
#_1E858F: CLC
#_1E8590: ADC.b #$14
#_1E8592: INY
#_1E8593: STA.b ($90),Y

#_1E8595: LDA.w $0B0C
#_1E8598: LSR A
#_1E8599: LSR A
#_1E859A: AND.b #$07
#_1E859C: TAX

#_1E859D: LDA.w .char,X
#_1E85A0: INY
#_1E85A1: STA.b ($90),Y

#_1E85A3: PLX

#_1E85A4: LDA.w .prop,X
#_1E85A7: INY
#_1E85A8: STA.b ($90),Y

#_1E85AA: PHY

#_1E85AB: TYA
#_1E85AC: LSR A
#_1E85AD: LSR A
#_1E85AE: TAY

#_1E85AF: LDA.b #$00
#_1E85B1: STA.b ($92),Y

#_1E85B3: PLY
#_1E85B4: INY

#_1E85B5: DEX
#_1E85B6: BPL .next_eye

;---------------------------------------------------------------------------------------------------

#_1E85B8: PLX

#_1E85B9: LDA.b $11
#_1E85BB: BEQ .exit

#_1E85BD: LDY.b #$00
#_1E85BF: LDA.b #$01
#_1E85C1: JSL Sprite_CorrectOAMEntries_long

.exit
#_1E85C5: RTS

;===================================================================================================

pool KingHelmasaurMask

.oam_groups
; group00
#_1E85C6: dw -16,  -5 : db $AE, $0D, $00, $02
#_1E85CE: dw   0,  -5 : db $C0, $0D, $00, $02
#_1E85D6: dw  16,  -5 : db $AE, $4D, $00, $02
#_1E85DE: dw -16,  11 : db $C2, $0D, $00, $02
#_1E85E6: dw   0,  11 : db $C4, $0D, $00, $02
#_1E85EE: dw  16,  11 : db $C2, $4D, $00, $02
#_1E85F6: dw  -8,  27 : db $C6, $0D, $00, $02
#_1E85FE: dw   8,  27 : db $C6, $4D, $00, $02

; group01
#_1E8606: dw -16,  -5 : db $AE, $0D, $00, $02
#_1E860E: dw   0,  -5 : db $C0, $0D, $00, $02
#_1E8616: dw  16,  -5 : db $AE, $4D, $00, $02
#_1E861E: dw -16,  11 : db $C8, $0D, $00, $02
#_1E8626: dw   0,  11 : db $C4, $0D, $00, $02
#_1E862E: dw  16,  11 : db $C2, $4D, $00, $02
#_1E8636: dw  -8,  27 : db $C6, $0D, $00, $02
#_1E863E: dw   8,  27 : db $C6, $4D, $00, $02

; group02
#_1E8646: dw -16,  -5 : db $AE, $0D, $00, $02
#_1E864E: dw   0,  -5 : db $C0, $0D, $00, $02
#_1E8656: dw  16,  -5 : db $AE, $4D, $00, $02
#_1E865E: dw -16,  11 : db $C8, $0D, $00, $02
#_1E8666: dw   0,  11 : db $C4, $0D, $00, $02
#_1E866E: dw  16,  11 : db $C8, $4D, $00, $02
#_1E8676: dw  -8,  27 : db $C6, $0D, $00, $02
#_1E867E: dw   8,  27 : db $C6, $4D, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

KingHelmasaurMask:
#_1E8686: LDA.b #$00
#_1E8688: XBA
#_1E8689: LDA.w $0DB0,X

#_1E868C: REP #$20

#_1E868E: ASL A ; x64
#_1E868F: ASL A
#_1E8690: ASL A
#_1E8691: ASL A
#_1E8692: ASL A
#_1E8693: ASL A

#_1E8694: ADC.w #.oam_groups
#_1E8697: STA.b $08

#_1E8699: LDA.b $90
#_1E869B: CLC
#_1E869C: ADC.w #$0008
#_1E869F: STA.b $90

#_1E86A1: INC.b $92
#_1E86A3: INC.b $92

#_1E86A5: SEP #$20

#_1E86A7: LDA.w $0DB0,X
#_1E86AA: CMP.b #$03
#_1E86AC: BCS .exit

#_1E86AE: LDA.b #$08
#_1E86B0: JSR Sprite_DrawMultiple_Bank1E

#_1E86B3: REP #$20

#_1E86B5: LDA.b $90
#_1E86B7: CLC
#_1E86B8: ADC.w #$0020
#_1E86BB: STA.b $90

#_1E86BD: LDA.b $92
#_1E86BF: CLC
#_1E86C0: ADC.w #$0008
#_1E86C3: STA.b $92

#_1E86C5: SEP #$20

#_1E86C7: LDA.w $0F10,X
#_1E86CA: BEQ .search_for_bomb

.exit
#_1E86CC: RTS

;---------------------------------------------------------------------------------------------------

.search_for_bomb
#_1E86CD: LDY.b #$01

.next_slot
#_1E86CF: LDA.w $0C4A,Y
#_1E86D2: CMP.b #$07 ; ANCILLA 07
#_1E86D4: BNE .to_next

#_1E86D6: LDA.w $0C2C,Y
#_1E86D9: ORA.w $0C22,Y
#_1E86DC: BEQ .to_next

#_1E86DE: JSR KingHelmasaur_CheckBombDamage

.to_next
#_1E86E1: DEY
#_1E86E2: BPL .next_slot

#_1E86E4: RTS

;===================================================================================================

KingHelmasaur_CheckBombDamage:
#_1E86E5: JSL Sprite_SetupHitbox_long

#_1E86E9: LDA.w $0C04,Y
#_1E86EC: CLC
#_1E86ED: ADC.b #$06
#_1E86EF: STA.b $00

#_1E86F1: LDA.w $0C18,Y
#_1E86F4: ADC.b #$00
#_1E86F6: STA.b $08

#_1E86F8: LDA.w $0BFA,Y
#_1E86FB: SEC
#_1E86FC: SBC.w $029E,Y
#_1E86FF: STA.b $01

#_1E8701: LDA.w $0C0E,Y
#_1E8704: SBC.b #$00
#_1E8706: STA.b $09

#_1E8708: LDA.b #$02
#_1E870A: STA.b $02

#_1E870C: LDA.b #$0F
#_1E870E: STA.b $03

#_1E8710: JSL CheckIfHitBoxesOverlap_long
#_1E8714: BCC .not_hit

#_1E8716: LDA.w $0C2C,Y
#_1E8719: EOR.b #$FF
#_1E871B: INC A
#_1E871C: STA.w $0C2C,Y

#_1E871F: LDA.w $0C22,Y
#_1E8722: EOR.b #$FF
#_1E8724: INC A
#_1E8725: STA.b $00

#_1E8727: ASL.b $00
#_1E8729: ROR A
#_1E872A: STA.w $0C22,Y

#_1E872D: LDA.b #$20
#_1E872F: STA.w $0F10,X

#_1E8732: LDA.b #$05
#_1E8734: STA.w $0FAC

#_1E8737: LDA.w $0C04,Y
#_1E873A: STA.w $0FAD

#_1E873D: LDA.w $0BFA,Y
#_1E8740: SEC
#_1E8741: SBC.w $029E,Y
#_1E8744: STA.w $0FAE

#_1E8747: LDA.b #$05 ; SFX2.05
#_1E8749: STA.w $012E

.not_hit
#_1E874C: RTS

;===================================================================================================

pool SpriteDraw_KingHelmasaur_Body

.oam_groups
#_1E874D: dw -24, -32 : db $80, $0B, $00, $02
#_1E8755: dw  -8, -32 : db $82, $0B, $00, $02
#_1E875D: dw   8, -32 : db $82, $4B, $00, $02
#_1E8765: dw  24, -32 : db $80, $4B, $00, $02
#_1E876D: dw -24, -16 : db $84, $0B, $00, $02
#_1E8775: dw  -8, -16 : db $86, $0B, $00, $02
#_1E877D: dw   8, -16 : db $86, $4B, $00, $02
#_1E8785: dw  24, -16 : db $84, $4B, $00, $02
#_1E878D: dw -24,   0 : db $88, $0B, $00, $02
#_1E8795: dw  -8,   0 : db $8A, $0B, $00, $02
#_1E879D: dw   8,   0 : db $8A, $4B, $00, $02
#_1E87A5: dw  24,   0 : db $88, $4B, $00, $02
#_1E87AD: dw -24,  16 : db $8C, $0B, $00, $02
#_1E87B5: dw  -8,  16 : db $8E, $0B, $00, $02
#_1E87BD: dw   8,  16 : db $8E, $4B, $00, $02
#_1E87C5: dw  24,  16 : db $8C, $4B, $00, $02
#_1E87CD: dw  -8,  32 : db $A0, $0B, $00, $02
#_1E87D5: dw   8,  32 : db $A0, $4B, $00, $02
#_1E87DD: dw   0, -40 : db $AC, $0B, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_KingHelmasaur_Body:
#_1E87E5: REP #$20

#_1E87E7: LDA.w #.oam_groups
#_1E87EA: STA.b $08

#_1E87EC: SEP #$20

#_1E87EE: LDA.b #$13

;===================================================================================================

Sprite_DrawMultiple_Bank1E:
#_1E87F0: JSL Sprite_DrawMultiple

#_1E87F4: RTS

;===================================================================================================

pool SpriteDraw_KingHelmasaur_Legs

.offset_x
#_1E87F5: db -28, -28,  28,  28

.offset_y
#_1E87F9: db -28,   4, -28,   4

.char
#_1E87FD: db $A2, $A6, $A2, $A6

.prop
#_1E8801: db $0B, $0B, $4B, $4B

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_KingHelmasaur_Legs:
#_1E8805: REP #$20

#_1E8807: LDA.b $90
#_1E8809: CLC
#_1E880A: ADC.w #$004C
#_1E880D: STA.b $90

#_1E880F: LDA.b $92
#_1E8811: CLC
#_1E8812: ADC.w #$0013
#_1E8815: STA.b $92

#_1E8817: SEP #$20

#_1E8819: PHX

#_1E881A: LDY.b #$00
#_1E881C: LDA.b #$03
#_1E881E: STA.w $0FB5

; Each iteration does 2 objects
.next_leg
#_1E8821: LDX.w $0FB5

#_1E8824: LDA.b $00
#_1E8826: CLC
#_1E8827: ADC.w .offset_x,X
#_1E882A: STA.b ($90),Y

#_1E882C: LDA.b $02
#_1E882E: CLC
#_1E882F: ADC.w .offset_y,X
#_1E8832: CLC
#_1E8833: ADC.w $0B08,X
#_1E8836: INY
#_1E8837: STA.b ($90),Y

#_1E8839: LDA.w .char,X
#_1E883C: INY
#_1E883D: STA.b ($90),Y

#_1E883F: LDA.w .prop,X
#_1E8842: EOR.b $05
#_1E8844: INY
#_1E8845: STA.b ($90),Y

#_1E8847: PHY

#_1E8848: TYA
#_1E8849: LSR A
#_1E884A: LSR A
#_1E884B: TAY

#_1E884C: LDA.b #$02
#_1E884E: STA.b ($92),Y

#_1E8850: PLY
#_1E8851: INY

#_1E8852: LDA.b $00
#_1E8854: CLC
#_1E8855: ADC.w .offset_x,X
#_1E8858: STA.b ($90),Y

#_1E885A: LDA.b $02
#_1E885C: CLC
#_1E885D: ADC.w .offset_y,X
#_1E8860: CLC
#_1E8861: ADC.b #$10
#_1E8863: CLC
#_1E8864: ADC.w $0B08,X
#_1E8867: INY
#_1E8868: STA.b ($90),Y

#_1E886A: LDA.w .char,X
#_1E886D: CLC
#_1E886E: ADC.b #$02
#_1E8870: INY
#_1E8871: STA.b ($90),Y

#_1E8873: LDA.w .prop,X
#_1E8876: EOR.b $05
#_1E8878: INY
#_1E8879: STA.b ($90),Y

#_1E887B: PHY

#_1E887C: TYA
#_1E887D: LSR A
#_1E887E: LSR A
#_1E887F: TAY

#_1E8880: LDA.b #$02
#_1E8882: STA.b ($92),Y

#_1E8884: PLY
#_1E8885: INY

#_1E8886: DEC.w $0FB5
#_1E8889: BPL .next_leg

#_1E888B: PLX

#_1E888C: LDA.b $11
#_1E888E: BEQ .exit

#_1E8890: LDY.b #$02
#_1E8892: LDA.b #$07
#_1E8894: JSL Sprite_CorrectOAMEntries_long

#_1E8898: JSR Sprite_PrepOAMCoord_Bank1E

.exit
#_1E889B: RTS

;===================================================================================================

pool SpriteDraw_KingHelmasaur_Mouth

.offset_y
#_1E889C: db  1,  2,  3,  4,  5,  6,  7,  8
#_1E88A4: db  9, 10, 10, 10, 10, 10, 10, 10
#_1E88AC: db 10, 10, 10, 10, 10, 10, 10,  9
#_1E88B4: db  8,  7,  6,  5,  4,  3,  2,  1

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_KingHelmasaur_Mouth:
#_1E88BC: LDA.w $0E10,X
#_1E88BF: BEQ .exit

#_1E88C1: LSR A
#_1E88C2: LSR A
#_1E88C3: TAY

#_1E88C4: LDA.w .offset_y,Y
#_1E88C7: STA.b $06

#_1E88C9: LDA.b #$04
#_1E88CB: JSL OAM_AllocateFromRegionB

#_1E88CF: LDY.b #$00
#_1E88D1: LDA.b $00
#_1E88D3: STA.b ($90),Y

#_1E88D5: LDA.b $02
#_1E88D7: CLC
#_1E88D8: ADC.b #$13

#_1E88DA: ADC.b $06
#_1E88DC: INY
#_1E88DD: STA.b ($90),Y

#_1E88DF: LDA.b #$AA
#_1E88E1: INY
#_1E88E2: STA.b ($90),Y

#_1E88E4: LDA.b $05
#_1E88E6: EOR.b #$0B
#_1E88E8: INY
#_1E88E9: STA.b ($90),Y

#_1E88EB: LDA.b #$02
#_1E88ED: STA.b ($92)

.exit
#_1E88EF: RTS

;===================================================================================================
; TODO analyze
;===================================================================================================
pool KingHelmasaur_OperateTail

.multiplier_a
#_1E88F0: db $FF, $F0, $E0, $D0, $C0, $B0, $A0, $90
#_1E88F8: db $80, $70, $60, $50, $40, $30, $20, $10

.multiplier_b
#_1E8900: db $FF, $F8, $F0, $E8, $E0, $D8, $D0, $C8
#_1E8908: db $BC, $B0, $A0, $90, $70, $40, $20, $10

.multiplier_c
#_1E8910: db $FF, $F0, $E0, $D0, $C0, $B0, $A0, $90
#_1E8918: db $80, $70, $60, $50, $40, $30, $20, $10

pool off

;---------------------------------------------------------------------------------------------------

KingHelmasaur_OperateTail:
#_1E8920: STZ.w $0FB5

.next_segment
#_1E8923: LDY.w $0FB5
#_1E8926: PHY

#_1E8927: LDA.w $0EC0,X
#_1E892A: BEQ .use_set_a

#_1E892C: TYA
#_1E892D: CLC
#_1E892E: ADC.b #$10
#_1E8930: TAY

.use_set_a
#_1E8931: REP #$20

#_1E8933: LDA.w $0B2D
#_1E8936: CLC
#_1E8937: ADC.w $0B31
#_1E893A: STA.b $0D

#_1E893C: SEP #$20

#_1E893E: LDA.b $0E
#_1E8940: CMP.b #$01

#_1E8942: PHP
#_1E8943: PHP

#_1E8944: LDA.b $0D
#_1E8946: PLP
#_1E8947: BPL .pos_a

#_1E8949: EOR.b #$FF
#_1E894B: INC A

.pos_a
#_1E894C: STA.w WRMPYA

#_1E894F: LDA.w .multiplier_a,Y
#_1E8952: STA.w WRMPYB

#_1E8955: JSR NOP8

#_1E8958: LDA.w RDMPYH

#_1E895B: PLP
#_1E895C: BPL .pos_b

#_1E895E: EOR.b #$FF

.pos_b
#_1E8960: STA.b $06

#_1E8962: LDA.b $0E
#_1E8964: STA.b $07

#_1E8966: PLY

#_1E8967: LDA.w $0B2F
#_1E896A: STA.w WRMPYA

#_1E896D: LDA.w .multiplier_c,Y
#_1E8970: STA.w WRMPYB

#_1E8973: JSR NOP8

#_1E8976: LDA.w RDMPYH
#_1E8979: STA.b $0F

#_1E897B: PHX
#_1E897C: REP #$30

#_1E897E: LDA.b $06
#_1E8980: AND.w #$00FF
#_1E8983: ASL A
#_1E8984: TAX

#_1E8985: LDA.l SmoothCurve,X
#_1E8989: STA.b $0A

#_1E898B: LDA.b $06
#_1E898D: CLC
#_1E898E: ADC.w #$0080
#_1E8991: STA.b $08

#_1E8993: AND.w #$00FF
#_1E8996: ASL A
#_1E8997: TAX

#_1E8998: LDA.l SmoothCurve,X
#_1E899C: STA.b $0C

#_1E899E: SEP #$30

#_1E89A0: PLX

#_1E89A1: LDA.b $0A
#_1E89A3: STA.w WRMPYA

#_1E89A6: LDA.b $0F
#_1E89A8: LDY.b $0B
#_1E89AA: BNE .nonzero_a

#_1E89AC: STA.w WRMPYB

#_1E89AF: JSR NOP8

#_1E89B2: ASL.w RDMPYL ; carry = round up
#_1E89B5: LDA.w RDMPYH
#_1E89B8: ADC.b #$00

.nonzero_a
#_1E89BA: LSR.b $07
#_1E89BC: BCC .keep_sign_a

#_1E89BE: EOR.b #$FF
#_1E89C0: INC A

.keep_sign_a
#_1E89C1: LDY.w $0FB5

#_1E89C4: STA.w $0B0D,Y

#_1E89C7: LDA.b $0C
#_1E89C9: STA.w WRMPYA

#_1E89CC: LDA.b $0F

#_1E89CE: LDY.b $0D
#_1E89D0: BNE .nonzero_b

#_1E89D2: STA.w WRMPYB

#_1E89D5: JSR NOP8

#_1E89D8: ASL.w RDMPYL ; carry = round up
#_1E89DB: LDA.w RDMPYH
#_1E89DE: ADC.b #$00

.nonzero_b
#_1E89E0: LSR.b $09
#_1E89E2: BCC .keep_sign_b

#_1E89E4: EOR.b #$FF
#_1E89E6: INC A

.keep_sign_b
#_1E89E7: LDY.w $0FB5

#_1E89EA: SEC
#_1E89EB: SBC.b #$28
#_1E89ED: STA.w $0B1D,Y

#_1E89F0: INC.w $0FB5

#_1E89F3: LDA.w $0FB5
#_1E89F6: CMP.b #$10
#_1E89F8: BEQ SpriteDraw_HelmasaurKingTailSegment

#_1E89FA: JMP.w .next_segment

;===================================================================================================

SpriteDraw_HelmasaurKingTailSegment:
#_1E89FD: LDA.w $0EC0,X
#_1E8A00: STA.b $0A

#_1E8A02: STZ.b $0F

#_1E8A04: PHX

#_1E8A05: LDX.w $0B33
#_1E8A08: CPX.b #$10
#_1E8A0A: BEQ .skip

#_1E8A0C: LDY.b #$00

.next_segment
#_1E8A0E: LDA.b $00
#_1E8A10: CLC
#_1E8A11: ADC.w $0B0D,X
#_1E8A14: STA.b ($90),Y
#_1E8A16: STA.b $08

#_1E8A18: LDA.b $02
#_1E8A1A: CLC
#_1E8A1B: ADC.w $0B1D,X

#_1E8A1E: INY

#_1E8A1F: STA.b ($90),Y
#_1E8A21: STA.b $09

#_1E8A23: LDA.b #$AC

#_1E8A25: CPY.b #$01
#_1E8A27: BNE .not_the_tip

#_1E8A29: LDA.b #$E4

.not_the_tip
#_1E8A2B: INY

#_1E8A2C: STA.b ($90),Y

#_1E8A2E: LDA.b $05
#_1E8A30: EOR.b #$1B
#_1E8A32: INY
#_1E8A33: STA.b ($90),Y

#_1E8A35: INY

; check for player contact
#_1E8A36: TXA
#_1E8A37: EOR.b $1A
#_1E8A39: AND.b #$00 ; useless, disables frame rule

#_1E8A3B: ORA.w $031F
#_1E8A3E: BNE .no_player_contact

#_1E8A40: LDA.b $0A
#_1E8A42: BEQ .no_player_contact

#_1E8A44: LDA.b $22
#_1E8A46: SBC.b $E2
#_1E8A48: SBC.b $08

#_1E8A4A: ADC.b #$0C
#_1E8A4C: CMP.b #$18
#_1E8A4E: BCS .no_player_contact

#_1E8A50: LDA.b $20
#_1E8A52: SBC.b $E8
#_1E8A54: ADC.b #$08

#_1E8A56: SBC.b $09
#_1E8A58: ADC.b #$08

#_1E8A5A: CMP.b #$10
#_1E8A5C: BCS .no_player_contact

; If any segment touches link, it sets this flag
#_1E8A5E: INC.b $0F

#_1E8A60: STZ.b $28

#_1E8A62: LDA.b #$38
#_1E8A64: STA.b $27

.no_player_contact
#_1E8A66: INX
#_1E8A67: CPX.b #$10
#_1E8A69: BNE .next_segment

.skip
#_1E8A6B: PLX

; did any segment touch link?
#_1E8A6C: LDA.b $0F
#_1E8A6E: BEQ .no_damage

#_1E8A70: LDA.w $0FFC
#_1E8A73: BNE .no_damage

#_1E8A75: JSL Sprite_AttemptDamageToLinkPlusRecoil_long

.no_damage
#_1E8A79: LDY.b #$02
#_1E8A7B: LDA.b #$0F
#_1E8A7D: JSL Sprite_CorrectOAMEntries_long

#_1E8A81: JSR Sprite_PrepOAMCoord_Bank1E

#_1E8A84: RTS

;===================================================================================================
; Used to delay for CPU register multiplication even though
; NOPs are 2 cycles each
; RTS is 6 cycles
; JSR is 6 cycles
; JSR to an RTS would work perfectly fine for the required delay
;===================================================================================================
NOP8:
#_1E8A85: NOP ; one
#_1E8A86: NOP ; two
#_1E8A87: NOP ; three
#_1E8A88: NOP ; four
#_1E8A89: NOP ; five
#_1E8A8A: NOP ; six
#_1E8A8B: NOP ; seven
#_1E8A8C: NOP ; eight

#_1E8A8D: RTS

;===================================================================================================
; Why is this separate from the main magic bat code?
;===================================================================================================
Sprite3A_MagicBatLightning:
#_1E8A8E: PHB
#_1E8A8F: PHK
#_1E8A90: PLB

#_1E8A91: JSR .main

#_1E8A94: PLB

#_1E8A95: RTL

;---------------------------------------------------------------------------------------------------

.main
; determine priority relative Link
#_1E8A96: LDA.w $0E80,X
#_1E8A99: AND.b #$10
#_1E8A9B: BEQ .in_front

#_1E8A9D: LDA.b #$04
#_1E8A9F: JSL OAM_AllocateFromRegionB

.in_front
#_1E8AA3: JSL SpriteDraw_SingleSmall_long
#_1E8AA7: JSR Sprite_CheckIfActive_Bank1E

#_1E8AAA: LDA.w $0D80,X
#_1E8AAD: BNE .active

#_1E8AAF: JSR Sprite_Move_XY_Bank1E

#_1E8AB2: LDA.w $0DF0,X
#_1E8AB5: BNE .wait

#_1E8AB7: INC.w $0D80,X

.wait
#_1E8ABA: RTS

;---------------------------------------------------------------------------------------------------

.offset_x
#_1E8ABB: db 0, 4, 8, 12, 12, 4, 8, 0

.offset_y
#_1E8AC3: db 0, 4, 8, 12, 12, 4, 8, 0

;---------------------------------------------------------------------------------------------------

.active
#_1E8ACB: INC.w $0D80,X
#_1E8ACE: BNE .stayalive

#_1E8AD0: STZ.w $0DD0,X

.stayalive
#_1E8AD3: INC.w $0E80,X

#_1E8AD6: LDA.w $0E80,X
#_1E8AD9: PHA

#_1E8ADA: AND.b #$07
#_1E8ADC: BNE .no_sfx

#_1E8ADE: LDA.b #$30 ; SFX3.30
#_1E8AE0: STA.w $012F

.no_sfx
#_1E8AE3: PLA
#_1E8AE4: LSR A
#_1E8AE5: LSR A
#_1E8AE6: PHA

#_1E8AE7: AND.b #$07
#_1E8AE9: TAY

#_1E8AEA: LDA.b $22
#_1E8AEC: CLC
#_1E8AED: ADC.w .offset_x,Y
#_1E8AF0: STA.w $0D10,X

#_1E8AF3: LDA.b $23
#_1E8AF5: ADC.b #$00
#_1E8AF7: STA.w $0D30,X

#_1E8AFA: PLA
#_1E8AFB: LSR A
#_1E8AFC: LSR A
#_1E8AFD: AND.b #$07
#_1E8AFF: TAY

#_1E8B00: LDA.b $20
#_1E8B02: CLC
#_1E8B03: ADC.w .offset_y,Y
#_1E8B06: STA.w $0D00,X

#_1E8B09: LDA.b $21
#_1E8B0B: ADC.b #$00
#_1E8B0D: STA.w $0D20,X

#_1E8B10: RTS

;===================================================================================================
; Sprite main routines in this bank instead of bank06
;===================================================================================================
SpriteModule_Active_Bank1E:
#_1E8B11: PHB
#_1E8B12: PHK
#_1E8B13: PLB

#_1E8B14: JSR .main

#_1E8B17: PLB

#_1E8B18: RTL

;---------------------------------------------------------------------------------------------------

.main
#_1E8B19: LDA.w $0E20,X
#_1E8B1C: SEC
#_1E8B1D: SBC.b #$79

#_1E8B1F: REP #$30

#_1E8B21: AND.w #$00FF
#_1E8B24: ASL A
#_1E8B25: TAY

#_1E8B26: LDA.w .vectors,Y
#_1E8B29: DEC A
#_1E8B2A: PHA

#_1E8B2B: SEP #$30

#_1E8B2D: RTS

;===================================================================================================
; For what reaſon doth thee pry thineſelf betwixt a routine and its vectors?
;===================================================================================================
#Sprite_CheckTileCollision_Bank1E:
#_1E8B2E: JSL Sprite_CheckTileCollision_long

#_1E8B32: RTS

;===================================================================================================

.vectors
#_1E8B33: dw Sprite_79_Bee
#_1E8B35: dw Sprite_7A_Agahnim
#_1E8B37: dw Sprite_7B_AgahnimBalls
#_1E8B39: dw Sprite_7C_GreenStalfos
#_1E8B3B: dw Sprite_7D_BigSpike
#_1E8B3D: dw Sprite_7E_Firebar_Clockwise
#_1E8B3F: dw Sprite_7F_Firebar_Counterclockwise
#_1E8B41: dw Sprite_80_Firesnake
#_1E8B43: dw Sprite_81_Hover
#_1E8B45: dw Sprite_82_AntifairyCircle
#_1E8B47: dw Sprite_83_GreenEyegore
#_1E8B49: dw Sprite_84_RedEyegore
#_1E8B4B: dw Sprite_85_YellowStalfos
#_1E8B4D: dw Sprite_86_Kodongo
#_1E8B4F: dw Sprite_87_KodongoFire
#_1E8B51: dw Sprite_88_Mothula
#_1E8B53: dw Sprite_89_MothulaBeam
#_1E8B55: dw Sprite_8A_SpikeBlock
#_1E8B57: dw Sprite_8B_Gibdo
#_1E8B59: dw Sprite_8C_Arrghus
#_1E8B5B: dw Sprite_8D_Arrghi
#_1E8B5D: dw Sprite_8E_Terrorpin
#_1E8B5F: dw Sprite_8F_Blob
#_1E8B61: dw Sprite_90_Wallmaster
#_1E8B63: dw Sprite_91_StalfosKnight
#_1E8B65: dw Sprite_92_HelmasaurKing
#_1E8B67: dw Sprite_93_Bumper
#_1E8B69: dw Sprite_94_Pirogusu
#_1E8B6B: dw Sprite_95_LaserEyeLeft
#_1E8B6D: dw Sprite_96_LaserEyeRight
#_1E8B6F: dw Sprite_97_LaserEyeTop
#_1E8B71: dw Sprite_98_LaserEyeBottom
#_1E8B73: dw Sprite_99_Pengator
#_1E8B75: dw Sprite_9A_Kyameron
#_1E8B77: dw Sprite_9B_Wizzrobe
#_1E8B79: dw Sprite_9C_Zoro
#_1E8B7B: dw Sprite_9D_Babasu
#_1E8B7D: dw Sprite_9E_HauntedGroveOstritch
#_1E8B7F: dw Sprite_9F_HauntedGroveRabbit
#_1E8B81: dw Sprite_A0_HauntedGroveBird
#_1E8B83: dw Sprite_A1_Freezor
#_1E8B85: dw Sprite_A2_Kholdstare
#_1E8B87: dw Sprite_A3_KholdstareShell
#_1E8B89: dw Sprite_A4_FallingIce
#_1E8B8B: dw Sprite_A5_BlueZazak
#_1E8B8D: dw Sprite_A6_RedZazak
#_1E8B8F: dw Sprite_A7_Stalfos
#_1E8B91: dw Sprite_A8_GreenZirro
#_1E8B93: dw Sprite_A9_BlueZirro
#_1E8B95: dw Sprite_AA_Pikit
#_1E8B97: dw Sprite_AB_CrystalMaiden
#_1E8B99: dw Sprite_AC_Apple
#_1E8B9B: dw Sprite_AD_OldMan
#_1E8B9D: dw Sprite_AE_Pipe_Down
#_1E8B9F: dw Sprite_AF_Pipe_Up
#_1E8BA1: dw Sprite_B0_Pipe_Right
#_1E8BA3: dw Sprite_B1_Pipe_Left
#_1E8BA5: dw Sprite_B2_PlayerBee
#_1E8BA7: dw Sprite_B3_PedestalPlaque
#_1E8BA9: dw Sprite_B4_PurpleChest
#_1E8BAB: dw Sprite_B5_BombShop
#_1E8BAD: dw Sprite_B6_Kiki
#_1E8BAF: dw Sprite_B7_BlindMaiden
#_1E8BB1: dw Sprite_B8_DialogueTester
#_1E8BB3: dw Sprite_B9_BullyAndPinkBall
#_1E8BB5: dw Sprite_BA_Whirlpool
#_1E8BB7: dw Sprite_BB_Shopkeeper
#_1E8BB9: dw Sprite_BC_Drunkard

;===================================================================================================

UNREACHABLE_1E8BBB:
#_1E8BBB: db $00, $00, $00, $00

;===================================================================================================

Sprite_AA_Pikit:
#_1E8BBF: JSR Pikit_PrepDraw
#_1E8BC2: JSR Sprite_CheckIfActive_Bank1E
#_1E8BC5: JSR Sprite_CheckIfRecoiling_Bank1E
#_1E8BC8: JSR Sprite_CheckDamageToAndFromLink_Bank1E

#_1E8BCB: LDA.w $0D80,X
#_1E8BCE: JSL JumpTableLocal
#_1E8BD2: dw Pikit_PikNextMovement
#_1E8BD4: dw Pikit_LandAndAttack
#_1E8BD6: dw Pikit_Steal

;===================================================================================================
; Wow, a lot of things share this table.
; Varied uses, not sure what to call this...
;===================================================================================================
Sixteen_X:
#_1E8BD8: db  16, -16

Sixteen_Y:
#_1E8BDA: db   0,   0,  16, -16

;===================================================================================================

Pikit_PikNextMovement:
#_1E8BDE: LDA.w $0DF0,X
#_1E8BE1: BNE Pikit_Animate

#_1E8BE3: INC.w $0D80,X
#_1E8BE6: INC.w $0DB0,X

#_1E8BE9: LDA.w $0DB0,X
#_1E8BEC: CMP.b #$04
#_1E8BEE: BNE .random_direction

.target_link
#_1E8BF0: STZ.w $0DB0,X

#_1E8BF3: JSR Sprite_DirectionToFaceLink_Bank1E

#_1E8BF6: BRA .direction_continue

.random_direction
#_1E8BF8: JSL GetRandomNumber
#_1E8BFC: AND.b #$03
#_1E8BFE: TAY

.direction_continue
#_1E8BFF: LDA.w Sixteen_X,Y
#_1E8C02: STA.w $0D50,X

#_1E8C05: LDA.w Sixteen_Y,Y
#_1E8C08: STA.w $0D40,X

#_1E8C0B: JSL GetRandomNumber
#_1E8C0F: AND.b #$07
#_1E8C11: ADC.b #$13
#_1E8C13: STA.w $0F80,X

;===================================================================================================

Pikit_Animate:
#_1E8C16: INC.w $0E80,X

#_1E8C19: LDA.w $0E80,X

#_1E8C1C: LSR A
#_1E8C1D: LSR A
#_1E8C1E: LSR A

#_1E8C1F: AND.b #$01
#_1E8C21: STA.w $0DC0,X

#_1E8C24: RTS

;===================================================================================================

Pikit_LandAndAttack:
#_1E8C25: JSR Sprite_Move_XYZ_Bank1E
#_1E8C28: JSR Sprite_CheckTileCollision_Bank1E

#_1E8C2B: DEC.w $0F80,X
#_1E8C2E: DEC.w $0F80,X

#_1E8C31: LDA.w $0F70,X
#_1E8C34: BPL .airborne

#_1E8C36: STZ.w $0F70,X
#_1E8C39: STZ.w $0F80,X

#_1E8C3C: JSR Sprite_DirectionToFaceLink_Bank1E

#_1E8C3F: LDA.b $0E
#_1E8C41: CLC
#_1E8C42: ADC.b #$30
#_1E8C44: CMP.b #$60
#_1E8C46: BCS .dont_tongue_link

#_1E8C48: LDA.b $0F
#_1E8C4A: CLC
#_1E8C4B: ADC.b #$30
#_1E8C4D: CMP.b #$60
#_1E8C4F: BCS .dont_tongue_link

#_1E8C51: INC.w $0D80,X

#_1E8C54: LDA.b #$1F
#_1E8C56: JSL Sprite_ProjectSpeedTowardsLink_long
#_1E8C5A: JSL Sprite_ConvertVelocityToAngle

#_1E8C5E: LSR A
#_1E8C5F: STA.w $0DE0,X

#_1E8C62: LDA.b #$5F
#_1E8C64: STA.w $0DF0,X

#_1E8C67: RTS

;---------------------------------------------------------------------------------------------------

.dont_tongue_link
#_1E8C68: STZ.w $0D80,X

#_1E8C6B: LDA.b #$10
#_1E8C6D: STA.w $0DF0,X

.airborne
#_1E8C70: BRA Pikit_Animate

;===================================================================================================

pool Pikit_Steal

.anim
#_1E8C72: db $02, $02, $02, $02, $03, $03, $03, $03
#_1E8C7A: db $03, $03, $03, $03, $03, $03, $03, $03
#_1E8C82: db $03, $03, $03, $03, $02, $02, $02, $02

; TODO or is it speed?
.pos
#_1E8C8A: db   0,   0,   0,   0,   0,   0,   0,   0
#_1E8C92: db   0,   0,   0,   0,   0,   0,   0,   0
#_1E8C9A: db   0,   0,   0,   0,   0,   0,   0,   0

#_1E8CA2: db   0,   0,   0,   0,   0,   0,   0,   0
#_1E8CAA: db  12,  16,  24,  32,  32,  24,  16,  12
#_1E8CB2: db   0,   0,   0,   0,   0,   0,   0,   0

#_1E8CBA: db   0,   0,   0,   0,   0,   0,   0,   0
#_1E8CC2: db -12, -16, -24, -32, -32, -24, -16, -12
#_1E8CCA: db   0,   0,   0,   0,   0,   0,   0,   0

.index_offset_x
#_1E8CD2: db $18, $18, $00, $30, $30, $30, $00, $18

.index_offset_y
#_1E8CDA: db $00, $18, $18, $18, $00, $30, $30, $30

pool off

;---------------------------------------------------------------------------------------------------

Pikit_Steal:
#_1E8CE2: LDA.w $0DF0,X
#_1E8CE5: BNE .lickylicky

#_1E8CE7: STZ.w $0D80,X

#_1E8CEA: LDA.b #$10
#_1E8CEC: STA.w $0DF0,X

#_1E8CEF: STZ.w $0D90,X
#_1E8CF2: STZ.w $0DA0,X
#_1E8CF5: STZ.w $0ED0,X

#_1E8CF8: RTS

;---------------------------------------------------------------------------------------------------

.lickylicky
#_1E8CF9: LSR A
#_1E8CFA: LSR A
#_1E8CFB: PHA

#_1E8CFC: TAY

#_1E8CFD: LDA.w .anim,Y
#_1E8D00: STA.w $0DC0,X

#_1E8D03: TYA

#_1E8D04: LDY.w $0DE0,X
#_1E8D07: PHY

#_1E8D08: CLC
#_1E8D09: ADC.w .index_offset_x,Y
#_1E8D0C: TAY

#_1E8D0D: LDA.w .pos,Y
#_1E8D10: STA.w $0D90,X

#_1E8D13: STA.b $04
#_1E8D15: STZ.b $05

#_1E8D17: BPL .positive_x

#_1E8D19: DEC.b $05

.positive_x
#_1E8D1B: PLY

#_1E8D1C: PLA
#_1E8D1D: CLC
#_1E8D1E: ADC.w .index_offset_y,Y

#_1E8D21: TAY
#_1E8D22: LDA.w .pos,Y

#_1E8D25: STA.w $0DA0,X

#_1E8D28: STA.b $06
#_1E8D2A: STZ.b $07
#_1E8D2C: STZ.b $07 ; useless, probably a typo

#_1E8D2E: BPL .positive_y

#_1E8D30: DEC.b $07

.positive_y
#_1E8D32: LDA.w $0ED0,X
#_1E8D35: BNE .exit

#_1E8D37: REP #$20

#_1E8D39: LDA.w $0FD8
#_1E8D3C: CLC
#_1E8D3D: ADC.b $04

#_1E8D3F: SEC
#_1E8D40: SBC.b $22

#_1E8D42: CLC
#_1E8D43: ADC.w #$000C

#_1E8D46: CMP.w #$0018
#_1E8D49: BCS .exit

#_1E8D4B: LDA.w $0FDA
#_1E8D4E: CLC
#_1E8D4F: ADC.b $06

#_1E8D51: SEC
#_1E8D52: SBC.b $20

#_1E8D54: CLC
#_1E8D55: ADC.w #$000C

#_1E8D58: CMP.w #$0020
#_1E8D5B: BCS .exit

;---------------------------------------------------------------------------------------------------

#_1E8D5D: SEP #$20

#_1E8D5F: LDA.w $0DF0,X
#_1E8D62: CMP.b #$2E
#_1E8D64: BCS .exit

#_1E8D66: JSL Link_CalculateSFXPan
#_1E8D6A: ORA.b #$26 ; SFX2.26
#_1E8D6C: STA.w $012E

#_1E8D6F: JSL GetRandomNumber
#_1E8D73: AND.b #$03
#_1E8D75: INC A
#_1E8D76: STA.w $0ED0,X
#_1E8D79: STA.w $0E90,X

#_1E8D7C: CMP.b #$01
#_1E8D7E: BNE .dont_steal_bomb

#_1E8D80: LDA.l $7EF343
#_1E8D84: BEQ .dont_steal_anything

#_1E8D86: DEC A
#_1E8D87: STA.l $7EF343

#_1E8D8B: RTS

.dont_steal_anything
#_1E8D8C: SEP #$20

#_1E8D8E: STZ.w $0ED0,X

#_1E8D91: RTS

;---------------------------------------------------------------------------------------------------

.dont_steal_bomb
#_1E8D92: CMP.b #$02
#_1E8D94: BNE .dont_steal_arrow

#_1E8D96: LDA.l $7EF377
#_1E8D9A: BEQ .dont_steal_anything

#_1E8D9C: DEC A
#_1E8D9D: STA.l $7EF377

#_1E8DA1: RTS

;---------------------------------------------------------------------------------------------------

.dont_steal_arrow
#_1E8DA2: CMP.b #$03
#_1E8DA4: BNE .dont_steal_rupee

#_1E8DA6: REP #$20

#_1E8DA8: LDA.l $7EF360
#_1E8DAC: BEQ .dont_steal_anything

#_1E8DAE: DEC A
#_1E8DAF: STA.l $7EF360

.exit
#_1E8DB3: SEP #$20

#_1E8DB5: RTS

;---------------------------------------------------------------------------------------------------

.dont_steal_rupee
#_1E8DB6: LDA.l $7EF35A
#_1E8DBA: STA.w $0E30,X
#_1E8DBD: BEQ .dont_steal_anything

#_1E8DBF: CMP.b #$03
#_1E8DC1: BEQ .dont_steal_anything

#_1E8DC3: LDA.b #$00
#_1E8DC5: STA.l $7EF35A

#_1E8DC9: RTS

;===================================================================================================

Pikit_PrepDraw:
#_1E8DCA: JSR Sprite_PrepOAMCoord_Bank1E
#_1E8DCD: JSL SpriteDraw_Pikit

#_1E8DD1: RTS

;===================================================================================================

Sprite_A8_GreenZirro:
Sprite_A9_BlueZirro:
#_1E8DD2: LDA.b #$30
#_1E8DD4: STA.w $0B89,X

#_1E8DD7: LDA.w $0D90,X
#_1E8DDA: BEQ Zirro_Main

;===================================================================================================

Zirro_Bomb:
#_1E8DDC: LDA.w $0D80,X
#_1E8DDF: JSL JumpTableLocal
#_1E8DE3: dw ZirroBomb_Falling
#_1E8DE5: dw ZirroBomb_Exploding

;===================================================================================================

ZirroBomb_Falling:
#_1E8DE7: JSL SpriteDraw_SingleSmall_long
#_1E8DEB: JSR Sprite_CheckIfActive_Bank1E
#_1E8DEE: JSR Sprite_Move_XY_Bank1E
#_1E8DF1: JSR Sprite_Move_Z_Bank1E

#_1E8DF4: DEC.w $0F80,X
#_1E8DF7: DEC.w $0F80,X

#_1E8DFA: LDA.w $0F70,X
#_1E8DFD: BPL .exit

#_1E8DFF: STZ.w $0F70,X

#_1E8E02: INC.w $0D80,X

#_1E8E05: LDA.b #$13
#_1E8E07: STA.w $0DF0,X

#_1E8E0A: INC.w $0E40,X

#_1E8E0D: LDA.b #$0C ; SFX2.0C
#_1E8E0F: JSL SpriteSFX_QueueSFX2WithPan

.exit
#_1E8E13: RTS

;===================================================================================================

ZirroBomb_Exploding:
#_1E8E14: JSL SpriteDraw_ZirroBomb
#_1E8E18: JSR Sprite_CheckIfActive_Bank1E

#_1E8E1B: LDA.b $1A
#_1E8E1D: AND.b #$03
#_1E8E1F: BNE .frame_rule

#_1E8E21: INC.w $0DF0,X

.frame_rule
#_1E8E24: JSL Sprite_CheckDamageToLink_long

#_1E8E28: RTS

;===================================================================================================

pool Zirro_Main

.speed_z
#_1E8E29: db  1, -1

.max_z
#_1E8E2B: db  8, -8

.anim_step
#_1E8E2D: db $09, $0A, $08, $07

pool off

;---------------------------------------------------------------------------------------------------

Zirro_Main:
#_1E8E31: LDA.w $0E00,X
#_1E8E34: BEQ .not_focused

#_1E8E36: LDY.w $0DE0,X

#_1E8E39: LDA.w .anim_step,Y
#_1E8E3C: STA.w $0DC0,X

.not_focused
#_1E8E3F: LDA.w $0B89,X
#_1E8E42: ORA.b #$30
#_1E8E44: STA.w $0B89,X

#_1E8E47: JSL SpriteDraw_Zirro
#_1E8E4B: JSR Sprite_CheckIfActive_Bank1E
#_1E8E4E: JSR Sprite_CheckIfRecoiling_Bank1E

#_1E8E51: LDA.w $0E00,X
#_1E8E54: CMP.b #$08
#_1E8E56: BNE .no_bombing

#_1E8E58: JSR Zirro_DropBomb

.no_bombing
#_1E8E5B: JSR Sprite_CheckDamageToAndFromLink_Bank1E

#_1E8E5E: LDA.b $1A
#_1E8E60: AND.b #$01
#_1E8E62: BNE .dont_adjust_z_speed

#_1E8E64: LDA.w $0ED0,X
#_1E8E67: AND.b #$01
#_1E8E69: TAY

#_1E8E6A: LDA.w $0F80,X
#_1E8E6D: CLC
#_1E8E6E: ADC.w .speed_z,Y
#_1E8E71: STA.w $0F80,X

#_1E8E74: CMP.w .max_z,Y
#_1E8E77: BNE .dont_adjust_z_speed

#_1E8E79: INC.w $0ED0,X

.dont_adjust_z_speed
#_1E8E7C: JSR Sprite_Move_Z_Bank1E
#_1E8E7F: JSR Sprite_DirectionToFaceLink_Bank1E

#_1E8E82: LDA.b $0E
#_1E8E84: CLC
#_1E8E85: ADC.b #$28
#_1E8E87: CMP.b #$50
#_1E8E89: BCS .dont_dodge

#_1E8E8B: LDA.b $0F
#_1E8E8D: CLC
#_1E8E8E: ADC.b #$28
#_1E8E90: CMP.b #$50
#_1E8E92: BCS .dont_dodge

#_1E8E94: LDA.b $44
#_1E8E96: CMP.b #$80
#_1E8E98: BEQ .dont_dodge

#_1E8E9A: LDA.w $0372
#_1E8E9D: BNE .dashing

#_1E8E9F: LDA.b $3C
#_1E8EA1: CMP.b #$09
#_1E8EA3: BPL .dont_dodge

.dashing
#_1E8EA5: LDA.b #$30
#_1E8EA7: JSL Sprite_ProjectSpeedTowardsLink_long

#_1E8EAB: LDA.b $01
#_1E8EAD: EOR.b #$FF
#_1E8EAF: INC A
#_1E8EB0: STA.w $0D50,X

#_1E8EB3: LDA.b $00
#_1E8EB5: EOR.b #$FF
#_1E8EB7: INC A
#_1E8EB8: STA.w $0D40,X

#_1E8EBB: LDA.b #$08
#_1E8EBD: STA.w $0DF0,X

#_1E8EC0: LDA.b #$02
#_1E8EC2: STA.w $0D80,X

.dont_dodge
#_1E8EC5: LDA.w $0D80,X
#_1E8EC8: JSL JumpTableLocal
#_1E8ECC: dw Zirro_Idle
#_1E8ECE: dw Zirro_Move
#_1E8ED0: dw Zirro_Dodge

;===================================================================================================

Zirro_Dodge:
#_1E8ED2: LDA.w $0DF0,X
#_1E8ED5: BNE .still_dodging

#_1E8ED7: STZ.w $0D80,X

.still_dodging
#_1E8EDA: INC.w $0E80,X
#_1E8EDD: INC.w $0E80,X

#_1E8EE0: JSR Zirro_HandleMovement

#_1E8EE3: RTS

;===================================================================================================

pool Zirro_Idle

.speed_x
#_1E8EE4: db  16,  12,   0, -12, -16, -12,   0,  12

.speed_y
#_1E8EEC: db   0,  12,  16,  12,   0, -12, -16, -12

.direction
#_1E8EF4: db $00, $04, $02, $06

pool off

;---------------------------------------------------------------------------------------------------

Zirro_Idle:
#_1E8EF8: LDA.w $0DF0,X
#_1E8EFB: BNE .delay

#_1E8EFD: INC.w $0D80,X
#_1E8F00: INC.w $0DA0,X

#_1E8F03: LDA.w $0DA0,X
#_1E8F06: CMP.b #$03
#_1E8F08: BNE .random_direction

#_1E8F0A: STZ.w $0DA0,X

#_1E8F0D: LDA.b #$30
#_1E8F0F: STA.w $0DF0,X

#_1E8F12: JSR Sprite_DirectionToFaceLink_Bank1E

#_1E8F15: LDA.w .direction,Y
#_1E8F18: BRA .use_direction

.random_direction
#_1E8F1A: JSL GetRandomNumber
#_1E8F1E: AND.b #$1F
#_1E8F20: ORA.b #$20
#_1E8F22: STA.w $0DF0,X

#_1E8F25: AND.b #$07

.use_direction
#_1E8F27: TAY

#_1E8F28: LDA.w .speed_x,Y
#_1E8F2B: STA.w $0D50,X

#_1E8F2E: LDA.w .speed_y,Y
#_1E8F31: STA.w $0D40,X

.delay
#_1E8F34: BRA Zirro_Animate

;===================================================================================================

Zirro_Move:
#_1E8F36: LDA.w $0DF0,X
#_1E8F39: BNE Zirro_HandleMovement

#_1E8F3B: STZ.w $0D80,X

#_1E8F3E: LDA.b #$0A
#_1E8F40: STA.w $0DF0,X

#_1E8F43: LDY.w $0E20,X
#_1E8F46: CPY.b #$A8 ; SPRITE A8
#_1E8F48: BNE .not_green

#_1E8F4A: LDA.b #$10
#_1E8F4C: STA.w $0E00,X

.not_green
#_1E8F4F: RTS

;===================================================================================================

Zirro_HandleMovement:
#_1E8F50: JSR Sprite_Move_XY_Bank1E

;===================================================================================================

Zirro_Animate:
#_1E8F53: JSR Sprite_DirectionToFaceLink_Bank1E
#_1E8F56: TYA
#_1E8F57: STA.w $0DE0,X

#_1E8F5A: INC.w $0E80,X

#_1E8F5D: LDA.w $0E80,X
#_1E8F60: LSR A
#_1E8F61: LSR A
#_1E8F62: LSR A
#_1E8F63: AND.b #$01
#_1E8F65: STA.b $00

#_1E8F67: LDA.w $0DE0,X
#_1E8F6A: ASL A
#_1E8F6B: ORA.b $00
#_1E8F6D: STA.w $0DC0,X

#_1E8F70: RTS

;===================================================================================================

pool Zirro_DropBomb

.offset_x_low
#_1E8F71: db  14,  -6,   4,   4

.offset_x_high
#_1E8F75: db   0,  -1,   0,   0

.offset_y_low
#_1E8F79: db   7,   7,  12,  -4

.offset_y_high
#_1E8F7D: db   0,   0,   0,  -1

pool off

;---------------------------------------------------------------------------------------------------

Zirro_DropBomb:
#_1E8F81: LDA.b #$A8 ; SPRITE A8
#_1E8F83: JSL Sprite_SpawnDynamically
#_1E8F87: BMI .exit

#_1E8F89: LDA.b #$20 ; SFX2.20
#_1E8F8B: JSL SpriteSFX_QueueSFX2WithPan

#_1E8F8F: LDA.b $04
#_1E8F91: STA.w $0F70,Y

#_1E8F94: PHX

#_1E8F95: LDX.w $0DE0,Y

#_1E8F98: LDA.b $00
#_1E8F9A: CLC
#_1E8F9B: ADC.w .offset_x_low,X
#_1E8F9E: STA.w $0D10,Y

#_1E8FA1: LDA.b $01
#_1E8FA3: ADC.w .offset_x_high,X
#_1E8FA6: STA.w $0D30,Y

#_1E8FA9: LDA.b $02
#_1E8FAB: CLC
#_1E8FAC: ADC.w .offset_y_low,X
#_1E8FAF: STA.w $0D00,Y

#_1E8FB2: LDA.b $03
#_1E8FB4: ADC.w .offset_y_high,X
#_1E8FB7: STA.w $0D20,Y

#_1E8FBA: LDA.w Sixteen_X,X
#_1E8FBD: STA.w $0D50,Y

#_1E8FC0: LDA.w Sixteen_Y,X
#_1E8FC3: STA.w $0D40,Y

#_1E8FC6: PLX

#_1E8FC7: LDA.b #$01
#_1E8FC9: STA.w $0D90,Y
#_1E8FCC: STA.w $0BA0,Y

#_1E8FCF: LDA.b #$09
#_1E8FD1: STA.w $0F60,Y

#_1E8FD4: LDA.b #$33
#_1E8FD6: STA.w $0E60,Y

#_1E8FD9: AND.b #$0F
#_1E8FDB: STA.w $0F50,Y

.exit
#_1E8FDE: RTS

;===================================================================================================

StalfosBone:
#_1E8FDF: JSR SpriteDraw_StalfosBone
#_1E8FE2: JSR Sprite_CheckIfActive_Bank1E
#_1E8FE5: JSR Sprite_CheckDamageToLink_Bank1E

#_1E8FE8: INC.w $0E80,X

#_1E8FEB: JSR Sprite_Move_XY_Bank1E

#_1E8FEE: LDA.w $0DF0,X
#_1E8FF1: BNE .exit

#_1E8FF3: JSR Sprite_CheckTileCollision_Bank1E
#_1E8FF6: BEQ .exit

#_1E8FF8: STZ.w $0DD0,X

#_1E8FFB: JSL Sprite_PlaceWeaponTink

.exit
#_1E8FFF: RTS

;===================================================================================================

pool SpriteDraw_StalfosBone

.oam_groups
; group00
#_1E9000: dw  -4,  -2 : db $2F, $80, $00, $00
#_1E9008: dw   4,   2 : db $2F, $40, $00, $00

; group01
#_1E9010: dw  -4,   2 : db $2F, $00, $00, $00
#_1E9018: dw   4,  -2 : db $2F, $C0, $00, $00

; group02
#_1E9020: dw   2,  -4 : db $3F, $40, $00, $00
#_1E9028: dw  -2,   4 : db $3F, $80, $00, $00

; group03
#_1E9030: dw  -2,  -4 : db $3F, $00, $00, $00
#_1E9038: dw   2,   4 : db $3F, $C0, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_StalfosBone:
#_1E9040: LDA.b #$00
#_1E9042: XBA
#_1E9043: LDA.w $0E80,X

#_1E9046: LSR A ; /4
#_1E9047: LSR A
#_1E9048: AND.b #$03

#_1E904A: REP #$20

#_1E904C: ASL A ; x16
#_1E904D: ASL A
#_1E904E: ASL A
#_1E904F: ASL A

#_1E9050: ADC.w #.oam_groups
#_1E9053: STA.b $08

#_1E9055: SEP #$20

#_1E9057: LDA.b #$02
#_1E9059: JMP.w Sprite_DrawMultiple_Bank1E

;===================================================================================================

StalfosTimers:
#_1E905C: db 16, 32, 64, 32

StalfosDrawStepsA:
#_1E9060: db $06, $04, $00, $02, $07, $05, $01, $03

StalfosDrawStepsB:
#_1E9068: db $08, $09, $0A, $0B

;===================================================================================================

Sprite_A7_Stalfos:
#_1E906C: LDA.w $0D90,X
#_1E906F: BEQ Stalfos

#_1E9071: JMP.w StalfosBone

;===================================================================================================

Stalfos:
#_1E9074: LDA.w $0E90,X
#_1E9077: BEQ Stalfos_Skellington

;===================================================================================================

Stalfos_Invisible:
#_1E9079: LDA.w $0DF0,X
#_1E907C: BNE .wait_in_closet

#_1E907E: LDA.b #$01
#_1E9080: STA.w $0D50,X
#_1E9083: STA.w $0D40,X

#_1E9086: JSR Sprite_CheckTileCollision_Bank1E
#_1E9089: BEQ .no_collision

#_1E908B: STZ.w $0DD0,X

#_1E908E: RTS

;---------------------------------------------------------------------------------------------------

.no_collision
#_1E908F: STZ.w $0E90,X

#_1E9092: LDA.b #$15 ; SFX2.15
#_1E9094: JSL SpriteSFX_QueueSFX2WithPan

#_1E9098: JSL Sprite_SpawnPoofGarnish

#_1E909C: LDA.b #$08
#_1E909E: STA.w $0E10,X

#_1E90A1: LDA.b #$40
#_1E90A3: STA.w $0DF0,X

#_1E90A6: STZ.w $0D40,X
#_1E90A9: STZ.w $0D50,X

.wait_in_closet
#_1E90AC: JSL Sprite_PrepOAMCoord_long

#_1E90B0: RTS

;===================================================================================================

pool Stalfos_Skellington

.direction
#_1E90B1: db $03, $02, $01, $00

pool off

;---------------------------------------------------------------------------------------------------

Stalfos_Skellington:
#_1E90B5: LDA.w $0DD0,X
#_1E90B8: CMP.b #$09
#_1E90BA: BNE .dont_dodge

#_1E90BC: REP #$20

#_1E90BE: LDA.b $22
#_1E90C0: SEC
#_1E90C1: SBC.w $0FD8
#_1E90C4: CLC
#_1E90C5: ADC.w #$0028

#_1E90C8: CMP.w #$0050
#_1E90CB: BCS .dont_dodge

#_1E90CD: LDA.b $20
#_1E90CF: SEC
#_1E90D0: SBC.w $0FDA
#_1E90D3: CLC
#_1E90D4: ADC.w #$0030

#_1E90D7: CMP.w #$0050
#_1E90DA: BCS .dont_dodge

#_1E90DC: SEP #$20

#_1E90DE: LDA.b $44
#_1E90E0: CMP.b #$80
#_1E90E2: BEQ .dont_dodge

#_1E90E4: LDA.w $0F70,X
#_1E90E7: ORA.w $0F00,X
#_1E90EA: BNE .dont_dodge

#_1E90EC: LDA.b $EE
#_1E90EE: CMP.w $0F20,X
#_1E90F1: BNE .dont_dodge

#_1E90F3: JSR Sprite_DirectionToFaceLink_Bank1E
#_1E90F6: STY.b $00

#_1E90F8: LDA.w $0372
#_1E90FB: BNE .dodge

#_1E90FD: LDA.b $3C
#_1E90FF: CMP.b #$90
#_1E9101: BCS .face_link

#_1E9103: CMP.b #$09
#_1E9105: BPL .dont_dodge

.dodge
#_1E9107: LDA.b $2F
#_1E9109: LSR A
#_1E910A: TAY

#_1E910B: LDA.b $00
#_1E910D: CMP.w .direction,Y
#_1E9110: BEQ .dont_dodge

.face_link
#_1E9112: LDA.b $00
#_1E9114: STA.w $0DE0,X

#_1E9117: LDA.b #$20
#_1E9119: JSL Sprite_ProjectSpeedTowardsLink_long

#_1E911D: LDA.b $01
#_1E911F: EOR.b #$FF
#_1E9121: INC A
#_1E9122: STA.w $0D50,X

#_1E9125: LDA.b $00
#_1E9127: EOR.b #$FF
#_1E9129: INC A
#_1E912A: STA.w $0D40,X

#_1E912D: LDA.b #$20
#_1E912F: STA.w $0F80,X

#_1E9132: LDA.b #$13 ; SFX3.13
#_1E9134: JSL SpriteSFX_QueueSFX3WithPan

#_1E9138: INC.w $0F70,X

;---------------------------------------------------------------------------------------------------

.dont_dodge
#_1E913B: SEP #$20

#_1E913D: LDA.w $0F70,X
#_1E9140: BEQ Zazak_Main

#_1E9142: LDY.w $0DE0,X

#_1E9145: LDA.w StalfosDrawStepsB,Y
#_1E9148: STA.w $0DC0,X

#_1E914B: JSL SpriteDraw_Stalfos
#_1E914F: JSR Sprite_CheckIfActive_Bank1E

#_1E9152: LDA.w $0EA0,X
#_1E9155: BEQ .not_recoiling

#_1E9157: STZ.w $0F80,X

.not_recoiling
#_1E915A: JSR Sprite_CheckIfRecoiling_Bank1E
#_1E915D: JSR Sprite_CheckDamageToAndFromLink_Bank1E
#_1E9160: JSR Sprite_CheckTileCollision_Bank1E

#_1E9163: PHA

#_1E9164: AND.b #$03
#_1E9166: BEQ .no_horizontal_tile_collision

#_1E9168: STZ.w $0D50,X

.no_horizontal_tile_collision
#_1E916B: PLA
#_1E916C: AND.b #$0C
#_1E916E: BEQ .no_vertital_tile_collision

#_1E9170: STZ.w $0D40,X

.no_vertital_tile_collision
#_1E9173: JSR Sprite_Move_XYZ_Bank1E

#_1E9176: LDA.w $0F80,X
#_1E9179: SEC
#_1E917A: SBC.b #$02
#_1E917C: STA.w $0F80,X

#_1E917F: LDA.w $0F70,X
#_1E9182: DEC A
#_1E9183: BPL .exit

#_1E9185: STZ.w $0F70,X

#_1E9188: JSR Sprite_ZeroVelocity_XY_Bank1E

#_1E918B: LDA.b #$21 ; SFX2.21
#_1E918D: JSL SpriteSFX_QueueSFX2WithPan

#_1E9191: LDA.w $0E30,X
#_1E9194: BEQ .exit

#_1E9196: LDA.b #$10
#_1E9198: STA.w $0EE0,X

#_1E919B: STZ.w $0E80,X

.exit
#_1E919E: RTS

;===================================================================================================

Zazak_Main:
Sprite_A5_BlueZazak:
Sprite_A6_RedZazak:
#_1E919F: LDA.w $0DA0,X
#_1E91A2: BEQ TrueZazak

;===================================================================================================

; If you're disgusted by this name, blame MathOnNapkins.
ZazakPhlegm:
#_1E91A4: JSR SpriteDraw_Phlegm
#_1E91A7: JSR Sprite_CheckIfActive_Bank1E

#_1E91AA: LDA.b $1A
#_1E91AC: LSR A
#_1E91AD: AND.b #$01
#_1E91AF: STA.w $0DC0,X

#_1E91B2: JSR Sprite_CheckDamageToLink_Bank1E
#_1E91B5: JSR Sprite_Move_XY_Bank1E

#_1E91B8: JSR Sprite_CheckTileCollision_Bank1E
#_1E91BB: BEQ .exit

#_1E91BD: STZ.w $0DD0,X

#_1E91C0: JSL Sprite_PlaceWeaponTink_forced

.exit
#_1E91C4: RTS

;===================================================================================================

TrueZazak:
; The infamous zazak-throws-a-bone glitch
#_1E91C5: LDA.w $0EE0,X
#_1E91C8: BEQ .dont_toss_bone

#_1E91CA: PHA

#_1E91CB: STZ.w $0D80,X

#_1E91CE: LDA.b #$20
#_1E91D0: STA.w $0DF0,X

#_1E91D3: JSR Sprite_ZeroVelocity_XY_Bank1E
#_1E91D6: JSR Sprite_DirectionToFaceLink_Bank1E

#_1E91D9: TYA
#_1E91DA: STA.w $0EB0,X

#_1E91DD: PLA

.dont_toss_bone
#_1E91DE: CMP.b #$01
#_1E91E0: BNE .definitely_dont_toss_bone

#_1E91E2: JSR Stalfos_ThrowBone

#_1E91E5: LDA.b #$01
#_1E91E7: STA.w $0E80,X

.definitely_dont_toss_bone
#_1E91EA: LDA.w $0E80,X
#_1E91ED: AND.b #$01
#_1E91EF: ASL A
#_1E91F0: ASL A
#_1E91F1: ADC.w $0DE0,X
#_1E91F4: TAY

#_1E91F5: LDA.w StalfosDrawStepsA,Y
#_1E91F8: STA.w $0DC0,X

#_1E91FB: LDA.w $0E20,X
#_1E91FE: CMP.b #$A7 ; SPRITE A7
#_1E9200: BNE .draw_as_zazak

.draw_as_stalfos
#_1E9202: JSL SpriteDraw_Stalfos
#_1E9206: JSR Sprite_CheckIfActive_Bank1E
#_1E9209: BRA .draw_done

.draw_as_zazak
#_1E920B: JSL SpriteDraw_Zazak
#_1E920F: JSR Sprite_CheckIfActive_Bank1E

.draw_done
#_1E9212: JSR Sprite_CheckIfRecoiling_Bank1E
#_1E9215: JSR Sprite_CheckDamageToAndFromLink_Bank1E
#_1E9218: JSR Sprite_Move_XY_Bank1E
#_1E921B: JSR Sprite_CheckTileCollision_Bank1E

#_1E921E: LDA.w $0D80,X
#_1E9221: JSL JumpTableLocal
#_1E9225: dw StalfosZazak_Walk
#_1E9227: dw StalfosZazak_Wait
#_1E9229: dw StalfosZazak_Shoot

;===================================================================================================

StalfosZazak_Walk:
#_1E922B: LDA.w $0DF0,X
#_1E922E: BNE .exit

#_1E9230: JSL GetRandomNumber
#_1E9234: AND.b #$03
#_1E9236: TAY

#_1E9237: LDA.w StalfosTimers,Y
#_1E923A: STA.w $0DF0,X

#_1E923D: INC.w $0D80,X

#_1E9240: LDA.w $0EB0,X
#_1E9243: STA.w $0DE0,X

#_1E9246: TAY

#_1E9247: LDA.w Sixteen_X,Y
#_1E924A: STA.w $0D50,X

#_1E924D: LDA.w Sixteen_Y,Y
#_1E9250: STA.w $0D40,X

.exit
#_1E9253: RTS

;===================================================================================================

SharedDirections_Nice:
#_1E9254: db $02, $03, $02, $03, $00, $01, $00, $01

;===================================================================================================

StalfosZazak_Wait:
#_1E925C: LDA.b #$10

#_1E925E: LDY.w $0E70,X
#_1E9261: BNE .new_direction

#_1E9263: LDA.w $0DF0,X
#_1E9266: BNE .delay

#_1E9268: LDA.w $0E20,X
#_1E926B: CMP.b #$A6 ; SPRITE A6
#_1E926D: BNE .dont_shoot

#_1E926F: JSR Sprite_DirectionToFaceLink_Bank1E
#_1E9272: TYA
#_1E9273: CMP.w $0DE0,X
#_1E9276: BNE .dont_shoot

#_1E9278: LDA.b $EE
#_1E927A: CMP.w $0F20,X
#_1E927D: BNE .dont_shoot

#_1E927F: INC.w $0D80,X

#_1E9282: LDA.b #$30
#_1E9284: STA.w $0DF0,X
#_1E9287: STA.w $0E00,X

#_1E928A: BRA Sprite_ZeroVelocity_XY_Bank1E

.dont_shoot
#_1E928C: LDA.b #$20

.new_direction
#_1E928E: STA.w $0DF0,X

#_1E9291: JSL GetRandomNumber
#_1E9295: LSR A
#_1E9296: LDA.w $0DE0,X
#_1E9299: ROL A
#_1E929A: TAY

#_1E929B: LDA.w SharedDirections_Nice,Y
#_1E929E: STA.w $0EB0,X

#_1E92A1: STZ.w $0D80,X

#_1E92A4: INC.w $0DB0,X

#_1E92A7: LDA.w $0DB0,X
#_1E92AA: CMP.b #$04
#_1E92AC: BNE Sprite_ZeroVelocity_XY_Bank1E

#_1E92AE: STZ.w $0DB0,X

#_1E92B1: JSR Sprite_DirectionToFaceLink_Bank1E
#_1E92B4: TYA
#_1E92B5: STA.w $0EB0,X

#_1E92B8: LDA.b #$18
#_1E92BA: STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

#Sprite_ZeroVelocity_XY_Bank1E:
#_1E92BD: STZ.w $0D50,X
#_1E92C0: STZ.w $0D40,X

#_1E92C3: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_1E92C4: DEC.w $0ED0,X
#_1E92C7: BPL .exit

#_1E92C9: LDA.b #$0B
#_1E92CB: STA.w $0ED0,X

#_1E92CE: INC.w $0E80,X

.exit
#_1E92D1: RTS

;===================================================================================================

StalfosZazak_Shoot:
#_1E92D2: LDA.w $0DF0,X
#_1E92D5: BNE .wait

#_1E92D7: STZ.w $0D80,X

#_1E92DA: RTS

.wait
#_1E92DB: CMP.b #24
#_1E92DD: BNE .wait_some_more

#_1E92DF: JSL Sprite_SpawnFirePhlegm

.wait_some_more
#_1E92E3: RTS

;===================================================================================================

Sprite_SpawnFirePhlegm:
#_1E92E4: PHB
#_1E92E5: PHK
#_1E92E6: PLB

#_1E92E7: LDA.b #$A5 ; SPRITE A5
#_1E92E9: JSL Sprite_SpawnDynamically
#_1E92ED: BMI .no_space

#_1E92EF: LDA.b #$05 ; SFX3.05
#_1E92F1: JSL SpriteSFX_QueueSFX3WithPan
#_1E92F5: JSL Sprite_SetSpawnedCoordinates

#_1E92F9: PHX

#_1E92FA: LDA.w $0DE0,X
#_1E92FD: TAX

#_1E92FE: LDA.b $00
#_1E9300: CLC
#_1E9301: ADC.w .offset_x_low,X
#_1E9304: STA.w $0D10,Y

#_1E9307: LDA.b $01
#_1E9309: ADC.w .offset_x_high,X
#_1E930C: STA.w $0D30,Y

#_1E930F: LDA.b $02
#_1E9311: CLC
#_1E9312: ADC.w .offset_y_low,X
#_1E9315: STA.w $0D00,Y

#_1E9318: LDA.b $03
#_1E931A: ADC.w .offset_y_high,X
#_1E931D: STA.w $0D20,Y

#_1E9320: LDA.w .speed_x,X
#_1E9323: STA.w $0D50,Y

#_1E9326: LDA.w .speed_y,X
#_1E9329: STA.w $0D40,Y

#_1E932C: LDA.w $0E60,Y
#_1E932F: ORA.b #$40
#_1E9331: STA.w $0E60,Y

#_1E9334: LDA.b #$40
#_1E9336: STA.w $0CAA,Y

#_1E9339: LDA.b #$21
#_1E933B: STA.w $0E40,Y
#_1E933E: STA.w $0DA0,Y

#_1E9341: LDA.b #$02
#_1E9343: STA.w $0F50,Y

#_1E9346: LDA.b #$14
#_1E9348: STA.w $0F60,Y
#_1E934B: STA.w $0BA0,Y

#_1E934E: LDA.b #$25
#_1E9350: STA.w $0CD2,Y

#_1E9353: LDA.l $7EF35A
#_1E9357: CMP.b #$03
#_1E9359: BCC .not_blockable

#_1E935B: LDA.b #$20
#_1E935D: STA.w $0BE0,Y

.not_blockable
#_1E9360: PLX

.no_space
#_1E9361: PLB

#_1E9362: RTL

;---------------------------------------------------------------------------------------------------

; It's so much easier to label things when data comes after the code.
.speed_x ; bleeds into next
#_1E9363: db  48, -48

.speed_y
#_1E9365: db   0,   0,  48, -48

.offset_x_low
#_1E9369: db  16,  -8,   4,   4

.offset_x_high
#_1E936D: db   0,  -1,   0,   0

.offset_y_low
#_1E9371: db  -2,  -2,   8, -20

.offset_y_high
#_1E9375: db  -1,  -1,   0,  -1

;===================================================================================================

Stalfos_ThrowBone:
#_1E9379: LDA.b #$A7 ; SPRITE A7
#_1E937B: JSL Sprite_SpawnDynamically
#_1E937F: BMI .exit

#_1E9381: LDA.b #$01
#_1E9383: STA.w $0D90,Y

#_1E9386: JSL Sprite_SetSpawnedCoordinates

#_1E938A: PHX
#_1E938B: TYX

#_1E938C: LDA.b #$20
#_1E938E: JSL Sprite_ApplySpeedTowardsLink_long

#_1E9392: LDA.b #$21
#_1E9394: STA.w $0E40,X
#_1E9397: STA.w $0BA0,X

#_1E939A: LDA.w $0E60,X
#_1E939D: ORA.b #$40
#_1E939F: STA.w $0E60,X

#_1E93A2: LDA.b #$48
#_1E93A4: STA.w $0CAA,X

#_1E93A7: LDA.b #$10
#_1E93A9: STA.w $0DF0,X

#_1E93AC: LDA.b #$14
#_1E93AE: STA.w $0F60,X

#_1E93B1: LDA.b #$07
#_1E93B3: STA.w $0F50,X

#_1E93B6: LDA.b #$20
#_1E93B8: STA.w $0CD2,X

#_1E93BB: PLX

#_1E93BC: LDA.b #$02 ; SFX2.02
#_1E93BE: JSL SpriteSFX_QueueSFX2WithPan

.exit
#_1E93C2: RTS

;===================================================================================================

pool SpriteDraw_Phlegm

.oam_groups
; group00
#_1E93C3: dw   0,   0 : db $C3, $00, $00, $00
#_1E93CB: dw  -8,   0 : db $C2, $00, $00, $00

; group01
#_1E93D3: dw   0,   0 : db $C3, $80, $00, $00
#_1E93DB: dw  -8,   0 : db $C2, $80, $00, $00

; group02
#_1E93E3: dw   0,   0 : db $C3, $40, $00, $00
#_1E93EB: dw   8,   0 : db $C2, $40, $00, $00

; group03
#_1E93F3: dw   0,   0 : db $C3, $C0, $00, $00
#_1E93FB: dw   8,   0 : db $C2, $C0, $00, $00

; group04
#_1E9403: dw   0,   0 : db $D4, $00, $00, $00
#_1E940B: dw   0,  -8 : db $D3, $00, $00, $00

; group05
#_1E9413: dw   0,   0 : db $D4, $40, $00, $00
#_1E941B: dw   0,  -8 : db $D3, $40, $00, $00

; group06
#_1E9423: dw   0,   0 : db $D4, $80, $00, $00
#_1E942B: dw   0,   8 : db $D3, $80, $00, $00

; group07
#_1E9433: dw   0,   0 : db $D4, $C0, $00, $00
#_1E943B: dw   0,   8 : db $D3, $C0, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Phlegm:
#_1E9443: LDA.b #$00
#_1E9445: XBA
#_1E9446: LDA.w $0DE0,X

#_1E9449: ASL A
#_1E944A: CLC
#_1E944B: ADC.w $0DC0,X

#_1E944E: REP #$20

#_1E9450: ASL A ; x16
#_1E9451: ASL A
#_1E9452: ASL A
#_1E9453: ASL A
#_1E9454: ADC.w #.oam_groups
#_1E9457: STA.b $08

#_1E9459: SEP #$20

#_1E945B: LDA.b #$02
#_1E945D: JMP.w Sprite_DrawMultiple_Bank1E

;===================================================================================================

Sprite_A3_KholdstareShell:
#_1E9460: JSR Sprite_CheckIfActivePermissive_Bank1E
#_1E9463: JSR Sprite_DirectionToFaceLink_Bank1E

#_1E9466: LDA.b $0F
#_1E9468: CLC
#_1E9469: ADC.b #$20
#_1E946B: CMP.b #$40
#_1E946D: BCS .link_not_close

#_1E946F: LDA.b $0E
#_1E9471: CLC
#_1E9472: ADC.b #$20
#_1E9474: CMP.b #$40
#_1E9476: BCS .link_not_close

#_1E9478: JSL Sprite_CancelHookshot
#_1E947C: JSL Sprite_RepelDash_long

.link_not_close
#_1E9480: JSL Sprite_CheckDamageFromLink_long

#_1E9484: LDA.w $0D80,X
#_1E9487: BNE .phase_out

#_1E9489: LDA.w $0DD0,X
#_1E948C: CMP.b #$06
#_1E948E: BNE .shake

#_1E9490: LDA.b #$C0
#_1E9492: STA.w $0E60,X

#_1E9495: INC.w $0D80,X

#_1E9498: LDA.b #$09
#_1E949A: STA.w $0DD0,X

#_1E949D: RTS

;---------------------------------------------------------------------------------------------------

.offset_x
#_1E949E: db  1, -1

.offset_y
#_1E94A0: db  0, -1

;---------------------------------------------------------------------------------------------------

.shake
#_1E94A2: LDA.w $0EF0,X
#_1E94A5: BEQ .not_recoiling

#_1E94A7: AND.b #$02
#_1E94A9: LSR A
#_1E94AA: TAY

#_1E94AB: LDA.w .offset_x,Y
#_1E94AE: STA.w $0422

#_1E94B1: LDA.w .offset_y,Y
#_1E94B4: STA.w $0423

#_1E94B7: LDA.b #$01
#_1E94B9: STA.w $0428

#_1E94BC: RTS

.not_recoiling
#_1E94BD: STZ.w $0428

#_1E94C0: RTS

;---------------------------------------------------------------------------------------------------

.phase_out
#_1E94C1: INC.w $0D80,X
#_1E94C4: CMP.b #$12
#_1E94C6: BEQ .activate_khold

#_1E94C8: PHX
#_1E94C9: JSL PaletteFilter_KholdstareShell
#_1E94CD: PLX

#_1E94CE: RTS

.activate_khold
#_1E94CF: STZ.w $0DD0,X

#_1E94D2: LDA.b #$02
#_1E94D4: STA.w $0D82

#_1E94D7: LDA.b #$80
#_1E94D9: STA.w $0DF2

#_1E94DC: RTS

;===================================================================================================

GenerateIceball:
#_1E94DD: INC.w $0E80,X

#_1E94E0: LDA.w $0E80,X
#_1E94E3: AND.b #$7F
#_1E94E5: ORA.w $0E00,X
#_1E94E8: BNE .exit

#_1E94EA: LDA.b #$A4 ; SPRITE A4
#_1E94EC: JSL Sprite_SpawnDynamically
#_1E94F0: BMI .exit

#_1E94F2: LDA.b $22
#_1E94F4: STA.w $0D10,Y

#_1E94F7: LDA.b $23
#_1E94F9: STA.w $0D30,Y

#_1E94FC: LDA.b $20
#_1E94FE: STA.w $0D00,Y

#_1E9501: LDA.b $21
#_1E9503: STA.w $0D20,Y

#_1E9506: LDA.b #$E0
#_1E9508: STA.w $0F70,Y
#_1E950B: STA.w $0DB0,Y

#_1E950E: PHX
#_1E950F: TYX

#_1E9510: LDA.b #$20 ; SFX2.20
#_1E9512: JSL SpriteSFX_QueueSFX2WithPan

#_1E9516: PLX

.exit
#_1E9517: RTS

;===================================================================================================

Sprite_A2_Kholdstare:
#_1E9518: JSL SpriteDraw_Kholdstare
#_1E951C: JSR Sprite_CheckIfActive_Bank1E

#_1E951F: LDA.w $0D80,X
#_1E9522: CMP.b #$02
#_1E9524: BCS .no_garnish

#_1E9526: JSR Kholdstare_SpawnPuffCloudGarnish

#_1E9529: LDA.b $1A
#_1E952B: AND.b #$07
#_1E952D: BNE .no_garnish

#_1E952F: LDA.b #$02 ; SFX2.02
#_1E9531: STA.w $012E

.no_garnish
#_1E9534: JSR Sprite_CheckIfRecoiling_Bank1E

#_1E9537: DEC.w $0E80,X
#_1E953A: BPL .delay_anim

#_1E953C: LDA.b #$0A
#_1E953E: STA.w $0E80,X

#_1E9541: LDA.w $0DC0,X
#_1E9544: INC A
#_1E9545: AND.b #$03
#_1E9547: STA.w $0DC0,X

.delay_anim
#_1E954A: LDA.b $1A
#_1E954C: AND.b #$03
#_1E954E: BNE .dont_turn_eye

#_1E9550: LDA.b #$1F
#_1E9552: JSL Sprite_ProjectSpeedTowardsLink_long
#_1E9556: JSL Sprite_ConvertVelocityToAngle
#_1E955A: STA.w $0D90,X

.dont_turn_eye
#_1E955D: JSR Sprite_Move_XY_Bank1E

#_1E9560: LDA.w $0D80,X
#_1E9563: JSL JumpTableLocal
#_1E9567: dw Kholdstare_Accelerate
#_1E9569: dw Kholdstare_Decelerate
#_1E956B: dw Kholdstare_Split
#_1E956D: dw Kholdstare_DoAbsolutelyNothing

;===================================================================================================

Kholdstare_Accelerate:
#_1E956F: JSR Sprite_CheckDamageToAndFromLink_Bank1E

#_1E9572: LDA.w $0DF0,X
#_1E9575: BNE .delay

#_1E9577: INC.w $0D80,X

#_1E957A: JSL GetRandomNumber
#_1E957E: AND.b #$3F
#_1E9580: ADC.b #$20
#_1E9582: STA.w $0DF0,X

#_1E9585: RTS

.delay
#_1E9586: LDA.w $0D50,X
#_1E9589: CMP.w $0F80,X
#_1E958C: BEQ .x_done
#_1E958E: BPL .x_too_high

.x_t00_low
#_1E9590: INC.w $0D50,X
#_1E9593: BRA .x_done

.x_too_high
#_1E9595: DEC.w $0D50,X

.x_done
#_1E9598: LDA.w $0D40,X
#_1E959B: CMP.w $0F90,X
#_1E959E: BEQ .y_done
#_1E95A0: BPL .y_too_high

.y_too_low
#_1E95A2: INC.w $0D40,X
#_1E95A5: BRA .y_done

.y_too_high
#_1E95A7: DEC.w $0D40,X

.y_done

;===================================================================================================

Kholdstare_CheckTileCollision:
#_1E95AA: JSR Sprite_CheckTileCollision_Bank1E
#_1E95AD: AND.b #$03
#_1E95AF: BEQ .no_collision

#_1E95B1: LDA.w $0D50,X
#_1E95B4: EOR.b #$FF
#_1E95B6: INC A
#_1E95B7: STA.w $0D50,X

#_1E95BA: LDA.w $0F80,X
#_1E95BD: EOR.b #$FF
#_1E95BF: INC A
#_1E95C0: STA.w $0F80,X

.no_collision
#_1E95C3: LDA.w $0E70,X
#_1E95C6: AND.b #$0C
#_1E95C8: BEQ .exit

#_1E95CA: LDA.w $0D40,X
#_1E95CD: EOR.b #$FF
#_1E95CF: INC A
#_1E95D0: STA.w $0D40,X

#_1E95D3: LDA.w $0F90,X
#_1E95D6: EOR.b #$FF
#_1E95D8: INC A
#_1E95D9: STA.w $0F90,X

.exit
#_1E95DC: RTS

;===================================================================================================

pool Kholdstare_Decelerate

.limit_x
#_1E95DD: db  16,  16, -16, -16

.limit_y
#_1E95E1: db -16,  16,  16, -16

pool off

;---------------------------------------------------------------------------------------------------

Kholdstare_Decelerate:
#_1E95E5: JSR Sprite_CheckDamageToAndFromLink_Bank1E

#_1E95E8: LDA.w $0DF0,X
#_1E95EB: BNE .delay

#_1E95ED: STZ.w $0D80,X

#_1E95F0: JSL GetRandomNumber
#_1E95F4: AND.b #$3F

#_1E95F6: ADC.b #$60
#_1E95F8: STA.w $0DF0,X

#_1E95FB: JSL GetRandomNumber
#_1E95FF: PHA

#_1E9600: AND.b #$03
#_1E9602: TAY

#_1E9603: LDA.w .limit_x,Y
#_1E9606: STA.w $0F80,X

#_1E9609: LDA.w .limit_y,Y
#_1E960C: STA.w $0F90,X

#_1E960F: PLA
#_1E9610: AND.b #$1C
#_1E9612: BNE .use_random_direction

#_1E9614: LDA.b #$18
#_1E9616: JSL Sprite_ProjectSpeedTowardsLink_long

#_1E961A: LDA.b $00
#_1E961C: STA.w $0F90,X

#_1E961F: LDA.b $01
#_1E9621: STA.w $0F80,X

.use_random_direction
#_1E9624: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_1E9625: LDA.w $0D50,X
#_1E9628: BEQ .x_done
#_1E962A: BPL .x_too_high

#_1E962C: INC.w $0D50,X
#_1E962F: BRA .x_done

.x_too_high
#_1E9631: DEC.w $0D50,X

.x_done
#_1E9634: LDA.w $0D40,X
#_1E9637: BEQ .y_done
#_1E9639: BPL .y_too_high

#_1E963B: INC.w $0D40,X
#_1E963E: BRA .y_done

.y_too_high
#_1E9640: DEC.w $0D40,X

.y_done
#_1E9643: JMP.w Kholdstare_CheckTileCollision

;===================================================================================================

pool Kholdstare_Split

.target_speed_x
#_1E9646: db  32, -32,   0

.target_speed_y
#_1E9649: db -32, -32,  48

pool off

;---------------------------------------------------------------------------------------------------

Kholdstare_Split:
#_1E964C: LDA.w $0DF0,X
#_1E964F: CMP.b #$01
#_1E9651: BNE .exit

#_1E9653: STZ.w $0DD0,X
#_1E9656: STZ.w $0DD1,X
#_1E9659: STZ.w $0DD2,X

#_1E965C: LDA.b #$02
#_1E965E: STA.w $0FB5

.next_scoop
#_1E9661: LDA.b #$A2 ; SPRITE A2
#_1E9663: LDY.b #$04
#_1E9665: JSL Sprite_SpawnDynamically_slot_limited
#_1E9669: BMI .exit

#_1E966B: JSL Sprite_SetSpawnedCoordinates

#_1E966F: PHX

#_1E9670: LDX.w $0FB5

#_1E9673: LDA.w .target_speed_x,X
#_1E9676: STA.w $0F80,Y

#_1E9679: LDA.w .target_speed_y,X
#_1E967C: STA.w $0F90,Y

#_1E967F: LDA.b #$20
#_1E9681: STA.w $0DF0,Y

#_1E9684: PLX

#_1E9685: DEC.w $0FB5
#_1E9688: BPL .next_scoop

#_1E968A: RTS

.exit
#_1E968B: LDA.w $0EF0,X
#_1E968E: ORA.b #$E0
#_1E9690: STA.w $0EF0,X

#_1E9693: RTS

;===================================================================================================

Kholdstare_DoAbsolutelyNothing:
#_1E9694: RTS

;===================================================================================================

pool Kholdstare_SpawnPuffCloudGarnish

.offset_low
#_1E9695: db  -8, -6, -4, -2,  0,  2,  4,  6

.offset_high
#_1E969D: db  -1, -1, -1, -1,  0,  0,  0,  0

pool off

;---------------------------------------------------------------------------------------------------

Kholdstare_SpawnPuffCloudGarnish:
; only attempt every 4 frames
#_1E96A5: TXA
#_1E96A6: EOR.b $1A
#_1E96A8: AND.b #$03
#_1E96AA: BNE .exit

#_1E96AC: PHX

#_1E96AD: LDX.b #$0E

; Find an open garnish slot
.next
#_1E96AF: LDA.l $7FF800,X
#_1E96B3: BEQ .open_slot

#_1E96B5: DEX
#_1E96B6: BPL .next

#_1E96B8: PLX

#_1E96B9: RTS

;---------------------------------------------------------------------------------------------------

.open_slot
#_1E96BA: LDA.b #$07 ; GARNISH 07
#_1E96BC: STA.l $7FF800,X
#_1E96C0: STA.w $0FB4

#_1E96C3: LDA.b #$1F
#_1E96C5: STA.l $7FF90E,X

#_1E96C9: JSL GetRandomNumber
#_1E96CD: AND.b #$07
#_1E96CF: TAY

#_1E96D0: LDA.w $0FD8
#_1E96D3: CLC
#_1E96D4: ADC.w .offset_low,Y
#_1E96D7: STA.l $7FF83C,X

#_1E96DB: LDA.w $0FD9
#_1E96DE: ADC.w .offset_high,Y
#_1E96E1: STA.l $7FF878,X

#_1E96E5: JSL GetRandomNumber
#_1E96E9: AND.b #$07
#_1E96EB: TAY

#_1E96EC: LDA.w $0FDA
#_1E96EF: CLC
#_1E96F0: ADC.w .offset_low,Y

#_1E96F3: PHP

#_1E96F4: CLC
#_1E96F5: ADC.b #$10
#_1E96F7: STA.l $7FF81E,X

#_1E96FB: LDA.w $0FDB
#_1E96FE: ADC.b #$00

#_1E9700: PLP
#_1E9701: ADC.w .offset_high,Y
#_1E9704: STA.l $7FF85A,X

#_1E9708: LDA.b #$00
#_1E970A: STA.l $7FF968,X

#_1E970E: PLX

.exit
#_1E970F: RTS

;===================================================================================================

Sprite_A4_FallingIce:
#_1E9710: LDA.w $0DB0,X
#_1E9713: BNE FallingIce_IceBall

;===================================================================================================

FallingIce_IceBallGenerator:
#_1E9715: JSR Sprite_CheckIfActive_Bank1E

; !HARDCODED sprite slots
; should have just loaded #$09 and compared to each address
#_1E9718: LDA.w $0DD2
#_1E971B: CMP.b #$09
#_1E971D: BCS .active_kholdstare

#_1E971F: LDA.w $0DD3
#_1E9722: CMP.b #$09
#_1E9724: BCS .active_kholdstare

#_1E9726: LDA.w $0DD4
#_1E9729: CMP.b #$09
#_1E972B: BCS .active_kholdstare

#_1E972D: STZ.w $0DD0,X

.active_kholdstare
#_1E9730: JMP.w GenerateIceball

;===================================================================================================

FallingIce_IceBall:
#_1E9733: LDA.b #$01
#_1E9735: STA.w $0BA0,X

#_1E9738: LDA.b #$30
#_1E973A: STA.w $0B89,X

#_1E973D: JSL SpriteDraw_SingleLarge_long

#_1E9741: LDA.w $0D80,X
#_1E9744: BNE .ice_ball_piece

#_1E9746: LDA.w $0E60,X
#_1E9749: EOR.b #$10
#_1E974B: STA.w $0E60,X

.ice_ball_piece
#_1E974E: JSR Sprite_CheckIfActive_Bank1E

#_1E9751: LDA.w $0DF0,X
#_1E9754: BEQ .falling_as_ball

#_1E9756: CMP.b #$01
#_1E9758: BNE .stick_around

#_1E975A: STZ.w $0DD0,X

.stick_around
#_1E975D: LSR A
#_1E975E: LSR A
#_1E975F: LSR A

#_1E9760: INC A
#_1E9761: INC A

#_1E9762: STA.w $0DC0,X

#_1E9765: RTS

;---------------------------------------------------------------------------------------------------

.falling_as_ball
#_1E9766: JSR Sprite_Move_XY_Bank1E

#_1E9769: LDA.w $0D80,X
#_1E976C: BEQ .is_also_iceball

#_1E976E: JSR Sprite_CheckDamageToLink_Bank1E
#_1E9771: JSR Sprite_CheckTileCollision_Bank1E
#_1E9774: BNE .tile_collision

.is_also_iceball
#_1E9776: LDA.w $0F70,X
#_1E9779: PHA

#_1E977A: JSR Sprite_Move_Z_Bank1E

#_1E977D: LDA.w $0F80,X
#_1E9780: CMP.b #$C0
#_1E9782: BMI .at_max_speed

#_1E9784: SEC
#_1E9785: SBC.b #$03
#_1E9787: STA.w $0F80,X

.at_max_speed
#_1E978A: PLA
#_1E978B: EOR.w $0F70,X
#_1E978E: BPL .exit

#_1E9790: LDA.w $0F70,X
#_1E9793: BPL .exit

#_1E9795: STZ.w $0F70,X

#_1E9798: LDA.w $0D80,X
#_1E979B: BNE .tile_collision

#_1E979D: STZ.w $0DD0,X

#_1E97A0: JSR IceBall_Split

#_1E97A3: RTS

;---------------------------------------------------------------------------------------------------

.tile_collision
#_1E97A4: LDA.b #$0F
#_1E97A6: STA.w $0DF0,X

#_1E97A9: LDA.b #$04
#_1E97AB: STA.w $0F50,X

#_1E97AE: LDA.w $012E
#_1E97B1: BNE .exit

#_1E97B3: LDA.b #$1E ; SFX2.1E
#_1E97B5: JSL SpriteSFX_QueueSFX2WithPan

#_1E97B9: LDA.b #$03
#_1E97BB: STA.w $0DC0,X

.exit
#_1E97BE: RTS

;===================================================================================================

pool IceBall_Split

.speed_x
#_1E97BF: db   0,  32,   0, -32
#_1E97C3: db  24,  24, -24, -24

.speed_y
#_1E97C7: db -32,   0,  32,   0
#_1E97CB: db -24,  24, -24,  24

pool off

;---------------------------------------------------------------------------------------------------

IceBall_Split:
#_1E97CF: LDA.b #$1F ; SFX2.1F
#_1E97D1: JSL SpriteSFX_QueueSFX2WithPan

#_1E97D5: JSL GetRandomNumber
#_1E97D9: AND.b #$04
#_1E97DB: STA.b $0D

#_1E97DD: LDA.b #$03
#_1E97DF: STA.w $0FB5

.next_shard
#_1E97E2: LDA.b #$A4 ; SPRITE A4
#_1E97E4: JSL Sprite_SpawnDynamically
#_1E97E8: BMI .no_space

#_1E97EA: JSL Sprite_SetSpawnedCoordinates

#_1E97EE: LDA.b #$01
#_1E97F0: STA.w $0D80,Y
#_1E97F3: STA.w $0DC0,Y
#_1E97F6: STA.w $0DB0,Y

#_1E97F9: LDA.b #$20
#_1E97FB: STA.w $0F80,Y

#_1E97FE: PHX

#_1E97FF: LDA.w $0FB5
#_1E9802: ORA.b $0D
#_1E9804: TAX

#_1E9805: LDA.w .speed_x,X
#_1E9808: STA.w $0D50,Y

#_1E980B: LDA.w .speed_y,X
#_1E980E: STA.w $0D40,Y

#_1E9811: PLX

#_1E9812: LDA.b #$1C
#_1E9814: STA.w $0F60,Y

.no_space
#_1E9817: DEC.w $0FB5
#_1E981A: BPL .next_shard

#_1E981C: RTS

;===================================================================================================

Sprite_A1_Freezor:
#_1E981D: JSL SpriteDraw_Freezor

#_1E9821: LDA.w $0DD0,X
#_1E9824: CMP.b #$09
#_1E9826: BEQ .active_state

#_1E9828: LDA.b #$03
#_1E982A: STA.w $0D80,X

#_1E982D: LDA.b #$1F
#_1E982F: STA.w $0DF0,X
#_1E9832: STA.w $0BA0,X

#_1E9835: LDA.b #$09
#_1E9837: STA.w $0DD0,X
#_1E983A: STZ.w $0EF0,X

.active_state
#_1E983D: JSR Sprite_CheckIfActive_Bank1E

#_1E9840: LDA.w $0D80,X
#_1E9843: CMP.b #$03
#_1E9845: BEQ .ignore_recoil

#_1E9847: JSR Sprite_CheckIfRecoiling_Bank1E

.ignore_recoil
#_1E984A: LDA.w $0D80,X
#_1E984D: JSL JumpTableLocal
#_1E9851: dw Freezor_Dormant
#_1E9853: dw Freezor_Waking
#_1E9855: dw Freezor_Flailing
#_1E9857: dw Freezor_ImMelllltiiiinnnnggggg

;===================================================================================================

Freezor_Dormant:
#_1E9859: INC.w $0BA0,X

#_1E985C: JSR Sprite_IsRightOfLink_Bank1E

#_1E985F: LDA.b $0F
#_1E9861: CLC
#_1E9862: ADC.b #$10

#_1E9864: CMP.b #$20
#_1E9866: BCS .stay_asleep

#_1E9868: INC.w $0D80,X

#_1E986B: LDA.b #$20
#_1E986D: STA.w $0DF0,X

.stay_asleep
#_1E9870: RTS

;===================================================================================================

Freezor_Waking:
#_1E9871: LDA.w $0DF0,X
#_1E9874: STA.w $0BA0,X
#_1E9877: BNE .still_shaking

#_1E9879: INC.w $0D80,X

#_1E987C: LDA.w $0D10,X
#_1E987F: SEC
#_1E9880: SBC.b #$05
#_1E9882: STA.b $00

#_1E9884: LDA.w $0D30,X
#_1E9887: SBC.b #$00
#_1E9889: STA.b $01

#_1E988B: LDA.w $0D00,X
#_1E988E: STA.b $02

#_1E9890: LDA.w $0D20,X
#_1E9893: STA.b $03

#_1E9895: LDY.b #$08
#_1E9897: JSL Underworld_UpdateTilemapWithCommonTile

#_1E989B: LDA.b #$60
#_1E989D: STA.w $0E00,X

#_1E98A0: LDA.b #$02
#_1E98A2: STA.w $0DE0,X

#_1E98A5: LDA.b #$50
#_1E98A7: STA.w $0DF0,X

#_1E98AA: RTS

.still_shaking
#_1E98AB: AND.b #$01
#_1E98AD: TAY

#_1E98AE: LDA.w Sixteen_X,Y
#_1E98B1: STA.w $0D50,X

#_1E98B4: JSR Sprite_Move_X_Bank1E

#_1E98B7: RTS

;===================================================================================================

pool Freezor_Flailing

.speed_x
#_1E98B8: db   8,  -8 ; bleeds into next

.speed_y
#_1E98BA: db   0,   0,  18, -18

.anim_step
#_1E98BE: db   1,   2,   1,   3

.sparkle_offset_low
#_1E98C2: db  -4,  -2,   0,   2,   4,   6,   8,  10

.sparkle_offset_high
#_1E98CA: db  -1,  -1,   0,   0,   0,   0,   0,   0

pool off

;---------------------------------------------------------------------------------------------------

Freezor_Flailing:
#_1E98D2: JSR Sprite_CheckDamageToLink_Bank1E

#_1E98D5: JSL Sprite_CheckDamageFromLink_long
#_1E98D9: BCC .no_damage

#_1E98DB: STZ.w $0EF0,X

.no_damage
#_1E98DE: LDA.w $0E00,X
#_1E98E1: BEQ .dont_sparkle

#_1E98E3: TXA
#_1E98E4: EOR.b $1A
#_1E98E6: AND.b #$07
#_1E98E8: BNE .dont_sparkle

#_1E98EA: JSL GetRandomNumber
#_1E98EE: AND.b #$07
#_1E98F0: TAY

#_1E98F1: LDA.w .sparkle_offset_low,Y
#_1E98F4: STA.b $00

#_1E98F6: LDA.w .sparkle_offset_high,Y
#_1E98F9: STA.b $01

#_1E98FB: LDA.b #$FC
#_1E98FD: STA.b $02

#_1E98FF: LDA.b #$FF
#_1E9901: STA.b $03

#_1E9903: JSL GarnishSpawn_Sparkle

.dont_sparkle
#_1E9907: LDA.w $0DF0,X
#_1E990A: BNE .dont_turn

#_1E990C: JSR Sprite_DirectionToFaceLink_Bank1E
#_1E990F: TYA
#_1E9910: STA.w $0DE0,X

.dont_turn
#_1E9913: LDY.w $0DE0,X

#_1E9916: LDA.w .speed_x,Y
#_1E9919: STA.w $0D50,X

#_1E991C: LDA.w .speed_y,Y
#_1E991F: STA.w $0D40,X

#_1E9922: LDA.w $0E70,X
#_1E9925: AND.b #$0F
#_1E9927: BNE .tile_collision

#_1E9929: JSR Sprite_Move_XY_Bank1E

.tile_collision
#_1E992C: JSR Sprite_CheckTileCollision_Bank1E

#_1E992F: TXA
#_1E9930: EOR.b $1A

#_1E9932: LSR A
#_1E9933: LSR A

#_1E9934: AND.b #$03
#_1E9936: TAY

#_1E9937: LDA.w .anim_step,Y
#_1E993A: STA.w $0DC0,X

#_1E993D: RTS

;===================================================================================================

pool Freezor_ImMelllltiiiinnnnggggg

.draw_step
#_1E993E: db $06, $05, $04, $07

pool off

;---------------------------------------------------------------------------------------------------

Freezor_ImMelllltiiiinnnnggggg:
#_1E9942: LDA.w $0DF0,X
#_1E9945: BNE .delay

#_1E9947: PHA

#_1E9948: JSL Sprite_ManuallySetDeathFlagUW

#_1E994C: STZ.w $0DD0,X

#_1E994F: PLA

.delay
#_1E9950: LSR A
#_1E9951: LSR A
#_1E9952: LSR A
#_1E9953: TAY

#_1E9954: LDA.w .draw_step,Y
#_1E9957: STA.w $0DC0,X

#_1E995A: RTS

;===================================================================================================

Sprite_9E_HauntedGroveOstritch:
#_1E995B: JSR SpriteDraw_HauntedGroveOstritch
#_1E995E: JSR Sprite_CheckIfActive_Bank1E

#_1E9961: LDA.w $0D80,X
#_1E9964: JSL JumpTableLocal
#_1E9968: dw HauntedGroveOstritch_Idle
#_1E996A: dw HauntedGroveOstritch_Flee

;===================================================================================================

HauntedGroveOstritch_Idle:
#_1E996C: LDY.b #$00

#_1E996E: LDA.b $1A
#_1E9970: AND.b #$18
#_1E9972: BEQ .default_anim

#_1E9974: LDY.b #$03

.default_anim
#_1E9976: TYA
#_1E9977: STA.w $0DC0,X

#_1E997A: LDA.w $0FDD
#_1E997D: BEQ .dont_run

#_1E997F: INC.w $0D80,X

#_1E9982: LDA.b #$F8
#_1E9984: STA.w $0D40,X

#_1E9987: LDA.b #$F0
#_1E9989: STA.w $0D50,X

.dont_run
#_1E998C: RTS

;===================================================================================================

pool HauntedGroveOstritch_Flee

.anim_step
#_1E998D: db $00, $01, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

HauntedGroveOstritch_Flee:
#_1E9991: JSR Sprite_Move_XYZ_Bank1E

#_1E9994: DEC.w $0F80,X
#_1E9997: DEC.w $0F80,X

#_1E999A: LDA.w $0F70,X
#_1E999D: BPL .no_hop

#_1E999F: LDA.b #$20
#_1E99A1: STA.w $0F80,X

#_1E99A4: STZ.w $0F70,X
#_1E99A7: STZ.w $0E80,X
#_1E99AA: STZ.w $0D90,X

.no_hop
#_1E99AD: INC.w $0E80,X

#_1E99B0: LDA.w $0E80,X
#_1E99B3: AND.b #$07
#_1E99B5: BNE .skip_anim_stepping

#_1E99B7: LDA.w $0D90,X
#_1E99BA: CMP.b #$03
#_1E99BC: BEQ .skip_anim_stepping

#_1E99BE: INC.w $0D90,X

.skip_anim_stepping
#_1E99C1: LDY.w $0D90,X

#_1E99C4: LDA.w .anim_step,Y
#_1E99C7: STA.w $0DC0,X

#_1E99CA: RTS

;===================================================================================================

pool SpriteDraw_HauntedGroveOstritch

.oam_groups
; group00
#_1E99CB: dw  -4,  -8 : db $80, $00, $00, $02
#_1E99D3: dw   4,  -8 : db $81, $00, $00, $02
#_1E99DB: dw  -4,   8 : db $A3, $00, $00, $02
#_1E99E3: dw   4,   8 : db $A4, $00, $00, $02

; group01
#_1E99EB: dw  -4,  -8 : db $80, $00, $00, $02
#_1E99F3: dw   4,  -8 : db $81, $00, $00, $02
#_1E99FB: dw  -4,   8 : db $A0, $00, $00, $02
#_1E9A03: dw   4,   8 : db $A1, $00, $00, $02

; group02
#_1E9A0B: dw  -4,  -8 : db $80, $00, $00, $02
#_1E9A13: dw   4,  -8 : db $81, $00, $00, $02
#_1E9A1B: dw  -4,   8 : db $83, $00, $00, $02
#_1E9A23: dw   4,   8 : db $84, $00, $00, $02

; group03
#_1E9A2B: dw  -4,  -7 : db $80, $00, $00, $02
#_1E9A33: dw   4,  -7 : db $81, $00, $00, $02
#_1E9A3B: dw  -4,   9 : db $A3, $00, $00, $02
#_1E9A43: dw   4,   9 : db $A4, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_HauntedGroveOstritch:
#_1E9A4B: LDA.b #$00
#_1E9A4D: XBA
#_1E9A4E: LDA.w $0DC0,X

#_1E9A51: REP #$20

#_1E9A53: ASL A ; x32
#_1E9A54: ASL A
#_1E9A55: ASL A
#_1E9A56: ASL A
#_1E9A57: ASL A

#_1E9A58: ADC.w #.oam_groups
#_1E9A5B: STA.b $08

#_1E9A5D: SEP #$20

#_1E9A5F: LDA.b #$04
#_1E9A61: JSR Sprite_DrawMultiple_Bank1E

#_1E9A64: LDA.b #$12
#_1E9A66: JSL SpriteDraw_Shadow_custom_long

#_1E9A6A: RTS

;===================================================================================================

HauntedGroveFlip:
#_1E9A6B: db $40, $00

;===================================================================================================

Sprite_9F_HauntedGroveRabbit:
#_1E9A6D: LDY.w $0DE0,X

#_1E9A70: LDA.w $0F50,X
#_1E9A73: AND.b #$BF
#_1E9A75: ORA.w HauntedGroveFlip,Y
#_1E9A78: STA.w $0F50,X

#_1E9A7B: JSL SpriteDraw_SingleLarge_long

#_1E9A7F: LDA.w $0D80,X
#_1E9A82: JSL JumpTableLocal
#_1E9A86: dw HauntedGroveRabbit_Idle
#_1E9A88: dw HauntedGroveRabbit_Flee

;===================================================================================================

HauntedGroveRabbit_Idle:
#_1E9A8A: LDA.b #$03
#_1E9A8C: STA.w $0DC0,X

#_1E9A8F: LDA.w $0FDD
#_1E9A92: BEQ .exit

#_1E9A94: INC.w $0D80,X

#_1E9A97: LDA.w $0DE0,X
#_1E9A9A: EOR.b #$01
#_1E9A9C: STA.w $0DE0,X

#_1E9A9F: TAY

#_1E9AA0: LDA.w Sixteen_X,Y
#_1E9AA3: STA.w $0D50,X

#_1E9AA6: LDA.b #$F8
#_1E9AA8: STA.w $0D40,X

.exit
#_1E9AAB: RTS

;===================================================================================================

pool HauntedGroveRabbit_Flee

.anim_step
#_1E9AAC: db $00, $01, $02

pool off

;---------------------------------------------------------------------------------------------------

HauntedGroveRabbit_Flee:
#_1E9AAF: JSR Sprite_Move_XYZ_Bank1E

#_1E9AB2: DEC.w $0F80,X
#_1E9AB5: DEC.w $0F80,X
#_1E9AB8: DEC.w $0F80,X

#_1E9ABB: LDA.w $0F70,X
#_1E9ABE: BPL .hopping

#_1E9AC0: LDA.b #$18
#_1E9AC2: STA.w $0F80,X

#_1E9AC5: STZ.w $0F70,X
#_1E9AC8: STZ.w $0E80,X
#_1E9ACB: STZ.w $0D90,X

.hopping
#_1E9ACE: INC.w $0E80,X

#_1E9AD1: LDA.w $0E80,X
#_1E9AD4: AND.b #$03
#_1E9AD6: BNE .dont_step_anim

#_1E9AD8: LDA.w $0D90,X
#_1E9ADB: CMP.b #$02
#_1E9ADD: BEQ .dont_step_anim

#_1E9ADF: INC.w $0D90,X

.dont_step_anim
#_1E9AE2: LDY.w $0D90,X

#_1E9AE5: LDA.w .anim_step,Y
#_1E9AE8: STA.w $0DC0,X

#_1E9AEB: RTS

;===================================================================================================

Sprite_A0_HauntedGroveBird:
#_1E9AEC: LDA.w $0DC0,X
#_1E9AEF: CMP.b #$03
#_1E9AF1: BNE .eyes_emoji

#_1E9AF3: JSR HauntedGroveBird_Blink

.eyes_emoji
#_1E9AF6: LDY.w $0DE0,X

#_1E9AF9: LDA.w $0F50,X
#_1E9AFC: AND.b #$BF
#_1E9AFE: ORA.w HauntedGroveFlip,Y
#_1E9B01: STA.w $0F50,X

#_1E9B04: REP #$20

#_1E9B06: LDA.b $90
#_1E9B08: CLC
#_1E9B09: ADC.w #$0004
#_1E9B0C: STA.b $90

#_1E9B0E: INC.b $92

#_1E9B10: SEP #$20

#_1E9B12: DEC.w $0E40,X

#_1E9B15: JSL SpriteDraw_SingleLarge_long

#_1E9B19: INC.w $0E40,X

#_1E9B1C: JSR Sprite_Move_XYZ_Bank1E

#_1E9B1F: LDA.w $0D80,X
#_1E9B22: JSL JumpTableLocal
#_1E9B26: dw HauntedGroveBird_Idle
#_1E9B28: dw HauntedGroveBird_Ascending
#_1E9B2A: dw HauntedGroveBird_Descending

;===================================================================================================

HauntedGroveBird_Idle:
#_1E9B2C: LDY.b #$00

#_1E9B2E: LDA.b $1A
#_1E9B30: AND.b #$18
#_1E9B32: BNE .keep_anim_step

#_1E9B34: LDY.b #$03

.keep_anim_step
#_1E9B36: TYA
#_1E9B37: STA.w $0DC0,X

#_1E9B3A: LDA.w $0FDD
#_1E9B3D: BEQ .exit

#_1E9B3F: INC.w $0D80,X

#_1E9B42: LDA.w $0DE0,X
#_1E9B45: EOR.b #$01
#_1E9B47: STA.w $0DE0,X

#_1E9B4A: TAY

#_1E9B4B: LDA.w Sixteen_X,Y
#_1E9B4E: STA.w $0D50,X

#_1E9B51: LDA.b #$20
#_1E9B53: STA.w $0DF0,X

#_1E9B56: LDA.b #$10
#_1E9B58: STA.w $0F80,X

#_1E9B5B: LDA.b #$F8
#_1E9B5D: STA.w $0D40,X

.exit
#_1E9B60: RTS

;===================================================================================================

HauntedGroveBird_Ascending:
#_1E9B61: LDA.w $0DF0,X
#_1E9B64: BNE .dont_accel

#_1E9B66: LDA.w $0F80,X
#_1E9B69: CLC
#_1E9B6A: ADC.b #$02
#_1E9B6C: STA.w $0F80,X

#_1E9B6F: CMP.b #$10
#_1E9B71: BMI .dont_accel

#_1E9B73: INC.w $0D80,X

.dont_accel
#_1E9B76: INC.w $0E80,X

#_1E9B79: LDA.w $0E80,X
#_1E9B7C: LSR A
#_1E9B7D: AND.b #$01

#_1E9B7F: INC A
#_1E9B80: STA.w $0DC0,X

#_1E9B83: RTS

;===================================================================================================

HauntedGroveBird_Descending:
#_1E9B84: LDA.b #$01
#_1E9B86: STA.w $0DC0,X

#_1E9B89: LDA.w $0F80,X
#_1E9B8C: SEC
#_1E9B8D: SBC.b #$01
#_1E9B8F: STA.w $0F80,X

#_1E9B92: CMP.b #$F1
#_1E9B94: BPL .dont_decel

#_1E9B96: DEC.w $0D80,X

.dont_decel
#_1E9B99: RTS

;===================================================================================================

pool HauntedGroveBird_Blink

.offset_x
#_1E9B9A: db  8,  0

pool off

;---------------------------------------------------------------------------------------------------

HauntedGroveBird_Blink:
#_1E9B9C: JSR Sprite_PrepOAMCoord_Bank1E

#_1E9B9F: PHX

#_1E9BA0: LDA.w $0DE0,X
#_1E9BA3: TAX

#_1E9BA4: LDA.b $00
#_1E9BA6: CLC
#_1E9BA7: ADC.w .offset_x,X
#_1E9BAA: STA.b ($90),Y

#_1E9BAC: LDA.b $02
#_1E9BAE: INY
#_1E9BAF: STA.b ($90),Y

#_1E9BB1: LDA.b #$AE
#_1E9BB3: INY
#_1E9BB4: STA.b ($90),Y

#_1E9BB6: LDA.b $05
#_1E9BB8: ORA.w HauntedGroveFlip,X
#_1E9BBB: INY
#_1E9BBC: STA.b ($90),Y

#_1E9BBE: PLX

#_1E9BBF: LDY.b #$00
#_1E9BC1: LDA.b #$00
#_1E9BC3: JSL Sprite_CorrectOAMEntries_long

#_1E9BC7: RTS

;===================================================================================================

Sprite_9C_Zoro:
Sprite_9D_Babasu:
#_1E9BC8: LDA.w $0E90,X
#_1E9BCB: BNE Zoro

#_1E9BCD: JMP.w Babasu

;===================================================================================================

Zoro:
#_1E9BD0: LDA.w $0DB0,X
#_1E9BD3: BNE .continue

; Flag as initialized
#_1E9BD5: INC.w $0DB0,X

; Don't spawn if Link is above
#_1E9BD8: JSR Sprite_IsBelowLink_Bank1E

#_1E9BDB: CPY.b #$00
#_1E9BDD: BEQ .continue

#_1E9BDF: STZ.w $0DD0,X

#_1E9BE2: RTS

.continue
#_1E9BE3: JSL SpriteDraw_SingleSmall_long
#_1E9BE7: JSR Sprite_CheckIfActive_Bank1E
#_1E9BEA: JSR Sprite_CheckDamageToAndFromLink_Bank1E

#_1E9BED: INC.w $0E80,X

#_1E9BF0: LDA.w $0E80,X
#_1E9BF3: LSR A
#_1E9BF4: AND.b #$01
#_1E9BF6: STA.w $0DC0,X

#_1E9BF9: LDA.w $0E80,X
#_1E9BFC: LSR A
#_1E9BFD: LSR A

#_1E9BFE: AND.b #$01
#_1E9C00: TAY

#_1E9C01: LDA.w Sixteen_X,Y
#_1E9C04: STA.w $0D50,X

#_1E9C07: JSR Sprite_Move_XY_Bank1E

#_1E9C0A: LDA.w $0DF0,X
#_1E9C0D: BNE .dont_die

#_1E9C0F: JSR Sprite_CheckTileCollision_Bank1E
#_1E9C12: BEQ .dont_die

#_1E9C14: STZ.w $0DD0,X

.dont_die
#_1E9C17: LDA.w $0E80,X
#_1E9C1A: AND.b #$03
#_1E9C1C: BNE .exit

#_1E9C1E: PHX
#_1E9C1F: TXY

#_1E9C20: LDX.b #$1D

.next_slot
#_1E9C22: LDA.l $7FF800,X
#_1E9C26: BEQ .spawn_garnish

#_1E9C28: DEX
#_1E9C29: BPL .next_slot

#_1E9C2B: PLX

.exit
#_1E9C2C: RTS

;---------------------------------------------------------------------------------------------------

.spawn_garnish
#_1E9C2D: LDA.b #$06 ; GARNISH 06
#_1E9C2F: STA.l $7FF800,X
#_1E9C33: STA.w $0FB4

#_1E9C36: LDA.w $0D10,Y
#_1E9C39: STA.l $7FF83C,X

#_1E9C3D: LDA.w $0D30,Y
#_1E9C40: STA.l $7FF878,X

#_1E9C44: LDA.w $0D00,Y
#_1E9C47: CLC
#_1E9C48: ADC.b #$10
#_1E9C4A: STA.l $7FF81E,X

#_1E9C4E: LDA.w $0D20,Y
#_1E9C51: ADC.b #$00
#_1E9C53: STA.l $7FF85A,X

#_1E9C57: LDA.b #$0A
#_1E9C59: STA.l $7FF90E,X

#_1E9C5D: TYA
#_1E9C5E: STA.l $7FF92C,X

#_1E9C62: LDA.w $0F20,Y
#_1E9C65: STA.l $7FF968,X

#_1E9C69: PLX

#_1E9C6A: RTS

;===================================================================================================

Babasu:
#_1E9C6B: JSL SpriteDraw_Babasu
#_1E9C6F: JSR Sprite_CheckIfActive_Bank1E

#_1E9C72: LDA.w $0D80,X
#_1E9C75: JSL JumpTableLocal
#_1E9C79: dw Babasu_Reset
#_1E9C7B: dw Babasu_Hidden
#_1E9C7D: dw Babasu_Telegraph
#_1E9C7F: dw Babasu_Dart

;===================================================================================================

Babasu_Reset:
#_1E9C81: INC.w $0D80,X

#_1E9C84: LDA.b #$80
#_1E9C86: STA.w $0DF0,X

#_1E9C89: LDA.b #$FF
#_1E9C8B: STA.w $0DC0,X

#_1E9C8E: RTS

;===================================================================================================

Babasu_Hidden:
#_1E9C8F: LDA.w $0DF0,X
#_1E9C92: BNE .exit

#_1E9C94: INC.w $0D80,X

#_1E9C97: LDA.b #$37
#_1E9C99: STA.w $0DF0,X

.exit
#_1E9C9C: RTS

;===================================================================================================

pool Babasu_Telegraph

.anim
#_1E9C9D: db $05, $04, $03, $02, $01, $00

.anim_offset
#_1E9CA3: db $06, $06, $00, $00

.speed_x ; bleeds into next
#_1E9CA7: db  32, -32

.speed_y
#_1E9CA9: db   0,   0,  32, -32

pool off

;---------------------------------------------------------------------------------------------------

Babasu_Telegraph:
#_1E9CAD: LDA.w $0DF0,X
#_1E9CB0: BNE .delay

#_1E9CB2: PHA

#_1E9CB3: INC.w $0D80,X

#_1E9CB6: LDY.w $0DE0,X

#_1E9CB9: LDA.w .speed_x,Y
#_1E9CBC: STA.w $0D50,X

#_1E9CBF: LDA.w .speed_y,Y
#_1E9CC2: STA.w $0D40,X

#_1E9CC5: LDA.b #$20
#_1E9CC7: STA.w $0DF0,X

#_1E9CCA: PLA

;---------------------------------------------------------------------------------------------------

.delay
#_1E9CCB: CMP.b #$20
#_1E9CCD: BCC .hide

#_1E9CCF: SBC.b #$20
#_1E9CD1: LSR A
#_1E9CD2: LSR A
#_1E9CD3: TAY

#_1E9CD4: LDA.w .anim,Y
#_1E9CD7: LDY.w $0DE0,X

#_1E9CDA: CLC
#_1E9CDB: ADC.w .anim_offset,Y
#_1E9CDE: STA.w $0DC0,X

#_1E9CE1: RTS

.hide
#_1E9CE2: LDA.b #$FF
#_1E9CE4: STA.w $0DC0,X

#_1E9CE7: RTS

;===================================================================================================

pool Babasu_Dart

.anim_step
#_1E9CE8: db $12, $0E, $0C, $10

pool off

;---------------------------------------------------------------------------------------------------

Babasu_Dart:
#_1E9CEC: JSR Sprite_CheckDamageToAndFromLink_Bank1E
#_1E9CEF: JSR Sprite_Move_XY_Bank1E

#_1E9CF2: LDA.b $1A
#_1E9CF4: LSR A
#_1E9CF5: AND.b #$01

#_1E9CF7: LDY.w $0DE0,X

#_1E9CFA: CLC
#_1E9CFB: ADC.w .anim_step,Y
#_1E9CFE: STA.w $0DC0,X

#_1E9D01: LDA.w $0DF0,X
#_1E9D04: BNE .exit

#_1E9D06: JSR Sprite_CheckTileCollision_Bank1E
#_1E9D09: BEQ .exit

#_1E9D0B: LDA.w $0DE0,X
#_1E9D0E: EOR.b #$01
#_1E9D10: STA.w $0DE0,X

#_1E9D13: STZ.w $0D80,X

.exit
#_1E9D16: RTS

;===================================================================================================

UNREACHABLE_1E9D17:
#_1E9D17: db $03, $43, $C3, $83

;===================================================================================================

Sprite_9B_Wizzrobe:
#_1E9D1B: LDA.w $0DB0,X
#_1E9D1E: BEQ Wizzrobe

;===================================================================================================

WizzrobeBeam:
#_1E9D20: JSL SpriteDraw_WizzrobeBeam
#_1E9D24: JSR Sprite_CheckIfActive_Bank1E

#_1E9D27: LDA.w $0F50,X
#_1E9D2A: EOR.b #$06
#_1E9D2C: STA.w $0F50,X

#_1E9D2F: INC.w $0E80,X

#_1E9D32: LDA.w $0D80,X
#_1E9D35: BNE .harmless

#_1E9D37: JSR Sprite_CheckDamageToLink_Bank1E

.harmless
#_1E9D3A: JSR Sprite_Move_XY_Bank1E
#_1E9D3D: JSR Sprite_CheckTileCollision_Bank1E
#_1E9D40: BEQ .exit

#_1E9D42: STZ.w $0DD0,X

.exit
#_1E9D45: RTS

;===================================================================================================

Wizzrobe:
#_1E9D46: LDA.w $0D80,X
#_1E9D49: BEQ .no_draw

#_1E9D4B: AND.b #$01
#_1E9D4D: BEQ .do_draw

#_1E9D4F: LDA.w $0DF0,X
#_1E9D52: AND.b #$01
#_1E9D54: BEQ .do_draw

.no_draw
#_1E9D56: JSL Sprite_PrepOAMCoord_long
#_1E9D5A: BRA .continue

.do_draw
#_1E9D5C: JSL SpriteDraw_Wizzrobe

.continue
#_1E9D60: JSR Sprite_CheckIfActive_Bank1E
#_1E9D63: JSR Sprite_CheckIfRecoiling_Bank1E

#_1E9D66: LDA.b #$01
#_1E9D68: STA.w $0BA0,X

#_1E9D6B: LDA.w $0D80,X
#_1E9D6E: JSL JumpTableLocal
#_1E9D72: dw Wizzrobe_Invisible
#_1E9D74: dw Wizzrobe_Appear
#_1E9D76: dw Wizzrobe_Attack
#_1E9D78: dw Wizzrobe_Disappear

;===================================================================================================

pool Wizzrobe_Invisible

.anim_step
#_1E9D7A: db $04, $02, $00, $06

pool off

;---------------------------------------------------------------------------------------------------

Wizzrobe_Invisible:
#_1E9D7E: LDA.w $0DF0,X
#_1E9D81: BNE .exit

#_1E9D83: LDA.b #$01
#_1E9D85: STA.w $0D50,X
#_1E9D88: STA.w $0D40,X

#_1E9D8B: JSR Sprite_CheckTileCollision_Bank1E
#_1E9D8E: BNE .die

#_1E9D90: INC.w $0D80,X

#_1E9D93: LDA.b #$3F
#_1E9D95: STA.w $0DF0,X

#_1E9D98: JSR Sprite_DirectionToFaceLink_Bank1E
#_1E9D9B: TYA
#_1E9D9C: STA.w $0DE0,X

#_1E9D9F: LDA.w .anim_step,Y
#_1E9DA2: STA.w $0DC0,X

#_1E9DA5: RTS

.die
#_1E9DA6: STZ.w $0DD0,X

.exit
#_1E9DA9: RTS

;===================================================================================================

Wizzrobe_Appear:
#_1E9DAA: LDA.w $0DF0,X
#_1E9DAD: BNE .exit

#_1E9DAF: INC.w $0D80,X

#_1E9DB2: LDA.b #$3F
#_1E9DB4: STA.w $0DF0,X

.exit
#_1E9DB7: RTS

;===================================================================================================

pool Wizzrobe_Attack

.anim_step
#_1E9DB8: db $00, $01, $01, $01, $01, $01, $01, $00

.anim_direction_offset
#_1E9DC0: db $04, $02, $00, $06

pool off

;---------------------------------------------------------------------------------------------------

Wizzrobe_Attack:
#_1E9DC4: STZ.w $0BA0,X

#_1E9DC7: JSR Sprite_CheckDamageToAndFromLink_Bank1E

#_1E9DCA: LDA.w $0DF0,X
#_1E9DCD: BNE .wait

#_1E9DCF: INC.w $0D80,X

#_1E9DD2: LDA.b #$3F
#_1E9DD4: STA.w $0DF0,X

#_1E9DD7: RTS

.wait
#_1E9DD8: CMP.b #$20
#_1E9DDA: BNE .delay_beam

#_1E9DDC: PHA

#_1E9DDD: JSR Wizzrobe_FireBeam

#_1E9DE0: PLA

.delay_beam
#_1E9DE1: LSR A
#_1E9DE2: LSR A
#_1E9DE3: LSR A
#_1E9DE4: TAY

#_1E9DE5: LDA.w .anim_step,Y

#_1E9DE8: LDY.w $0DE0,X

#_1E9DEB: CLC
#_1E9DEC: ADC.w .anim_direction_offset,Y
#_1E9DEF: STA.w $0DC0,X

#_1E9DF2: RTS

;===================================================================================================

Wizzrobe_Disappear:
#_1E9DF3: LDA.w $0DF0,X
#_1E9DF6: BNE .exit

; Used by overlords to flag temporary wizzrobes
#_1E9DF8: LDA.w $0DA0,X
#_1E9DFB: BEQ .dont_die

#_1E9DFD: STZ.w $0DD0,X

.dont_die
#_1E9E00: STZ.w $0D80,X

#_1E9E03: JSL GetRandomNumber
#_1E9E07: AND.b #$1F
#_1E9E09: ADC.b #$20
#_1E9E0B: STA.w $0DF0,X

.exit
#_1E9E0E: RTS

;===================================================================================================

pool Wizzrobe_FireBeam

.speed_x ; bleeds into next
#_1E9E0F: db  32, -32

.speed_y
#_1E9E11: db   0,   0,  32, -32

pool off

;---------------------------------------------------------------------------------------------------

Wizzrobe_FireBeam:
#_1E9E15: LDA.b #$9B ; SPRITE 9B
#_1E9E17: JSL Sprite_SpawnDynamically
#_1E9E1B: BMI .no_space

#_1E9E1D: LDA.b #$36 ; SFX3.36
#_1E9E1F: JSL SpriteSFX_QueueSFX3WithPan

#_1E9E23: LDA.b #$01
#_1E9E25: STA.w $0DB0,Y
#_1E9E28: STA.w $0BA0,Y

#_1E9E2B: LDA.b $00
#_1E9E2D: CLC
#_1E9E2E: ADC.b #$04
#_1E9E30: STA.w $0D10,Y

#_1E9E33: LDA.b $01
#_1E9E35: ADC.b #$00
#_1E9E37: STA.w $0D30,Y

#_1E9E3A: LDA.b $02
#_1E9E3C: CLC
#_1E9E3D: ADC.b #$00
#_1E9E3F: STA.w $0D00,Y

#_1E9E42: LDA.b $03
#_1E9E44: ADC.b #$00
#_1E9E46: STA.w $0D20,Y

#_1E9E49: PHX

#_1E9E4A: LDA.w $0DE0,X
#_1E9E4D: TAX

#_1E9E4E: LDA.w .speed_x,X
#_1E9E51: STA.w $0D50,Y

#_1E9E54: LDA.w .speed_y,X
#_1E9E57: STA.w $0D40,Y

#_1E9E5A: LDA.b #$48
#_1E9E5C: STA.w $0CAA,Y

#_1E9E5F: LDA.b #$02
#_1E9E61: STA.w $0F50,Y

#_1E9E64: LDA.l $7EF35A
#_1E9E68: TAX

#_1E9E69: LDA.b #$00
#_1E9E6B: CPX.b #$03
#_1E9E6D: BNE .not_blockable

#_1E9E6F: LDA.b #$20

.not_blockable
#_1E9E71: STA.w $0BE0,Y

#_1E9E74: PLX

#_1E9E75: LDA.b #$14
#_1E9E77: STA.w $0F60,Y

.no_space
#_1E9E7A: RTS

;===================================================================================================

Sprite_9A_Kyameron:
#_1E9E7B: LDA.w $0D80,X
#_1E9E7E: BNE .visible

#_1E9E80: JSL Sprite_PrepOAMCoord_long
#_1E9E84: BRA .not_visible

.visible
#_1E9E86: JSR SpriteDraw_Kyameron

.not_visible
#_1E9E89: JSR Sprite_CheckIfActive_Bank1E
#_1E9E8C: JSR Sprite_CheckIfRecoiling_Bank1E

#_1E9E8F: LDA.b #$01
#_1E9E91: STA.w $0BA0,X

#_1E9E94: LDA.w $0D80,X
#_1E9E97: JSL JumpTableLocal
#_1E9E9B: dw Kyameron_Reset
#_1E9E9D: dw Kyameron_Puddle
#_1E9E9F: dw Kyameron_BuildUp
#_1E9EA1: dw Kyameron_Moving
#_1E9EA3: dw Kyameron_Dissipate

;===================================================================================================

Kyameron_Reset:
#_1E9EA5: LDA.w $0DF0,X
#_1E9EA8: BNE .exit

#_1E9EAA: INC.w $0D80,X

#_1E9EAD: JSL GetRandomNumber
#_1E9EB1: AND.b #$3F
#_1E9EB3: ADC.b #$60
#_1E9EB5: STA.w $0DF0,X

#_1E9EB8: LDA.w $0D90,X
#_1E9EBB: STA.w $0D10,X

#_1E9EBE: LDA.w $0DA0,X
#_1E9EC1: STA.w $0D30,X

#_1E9EC4: LDA.w $0DB0,X
#_1E9EC7: STA.w $0D00,X

#_1E9ECA: LDA.w $0EB0,X
#_1E9ECD: STA.w $0D20,X

#_1E9ED0: LDA.b #$05
#_1E9ED2: STA.w $0E80,X

#_1E9ED5: LDA.b #$08
#_1E9ED7: STA.w $0DC0,X

.exit
#_1E9EDA: RTS

;===================================================================================================

Kyameron_Puddle:
#_1E9EDB: LDA.w $0DF0,X
#_1E9EDE: BNE .delay

#_1E9EE0: LDA.b #$1F
#_1E9EE2: STA.w $0DF0,X

#_1E9EE5: INC.w $0D80,X

.delay
#_1E9EE8: DEC.w $0E80,X
#_1E9EEB: BPL .exit

#_1E9EED: LDA.b #$05
#_1E9EEF: STA.w $0E80,X

#_1E9EF2: INC.w $0DC0,X

#_1E9EF5: LDA.w $0DC0,X
#_1E9EF8: AND.b #$03
#_1E9EFA: CLC
#_1E9EFB: ADC.b #$08
#_1E9EFD: STA.w $0DC0,X

.exit
#_1E9F00: RTS

;===================================================================================================

pool Kyameron_BuildUp

.anim_step
#_1E9F01: db $04, $07, $0E, $0D, $0C, $06, $06, $05

.speed_x
#_1E9F09: db  32, -32,  32, -32

.speed_y
#_1E9F0D: db  32,  32, -32, -32

pool off

;---------------------------------------------------------------------------------------------------

Kyameron_BuildUp:
#_1E9F11: LDA.w $0DF0,X
#_1E9F14: BNE .delay

#_1E9F16: INC.w $0D80,X

#_1E9F19: JSR Sprite_IsBelowLink_Bank1E
#_1E9F1C: TYA
#_1E9F1D: ASL A
#_1E9F1E: STA.b $00

#_1E9F20: JSR Sprite_IsRightOfLink_Bank1E
#_1E9F23: TYA
#_1E9F24: ORA.b $00
#_1E9F26: TAY

#_1E9F27: LDA.w .speed_x,Y
#_1E9F2A: STA.w $0D50,X

#_1E9F2D: LDA.w .speed_y,Y
#_1E9F30: STA.w $0D40,X

#_1E9F33: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_1E9F34: CMP.b #$07
#_1E9F36: BNE .dont_move_upwards

#_1E9F38: PHA

#_1E9F39: LDA.w $0D00,X
#_1E9F3C: SEC
#_1E9F3D: SBC.b #$1D
#_1E9F3F: STA.w $0D00,X

#_1E9F42: LDA.w $0D20,X
#_1E9F45: SBC.b #$00
#_1E9F47: STA.w $0D20,X

#_1E9F4A: PLA

.dont_move_upwards
#_1E9F4B: LSR A
#_1E9F4C: LSR A
#_1E9F4D: TAY

#_1E9F4E: LDA.w .anim_step,Y
#_1E9F51: STA.w $0DC0,X

#_1E9F54: RTS

;===================================================================================================

pool Kyameron_Moving

.anim_step
#_1E9F55: db $03, $02, $01, $00

pool off

;---------------------------------------------------------------------------------------------------

Kyameron_Moving:
#_1E9F59: STZ.w $0BA0,X

#_1E9F5C: JSR Sprite_CheckDamageToAndFromLink_Bank1E
#_1E9F5F: BCS .damage

#_1E9F61: JSR Sprite_Move_XY_Bank1E
#_1E9F64: JSR Sprite_CheckTileCollision_Bank1E
#_1E9F67: AND.b #$03
#_1E9F69: BEQ .no_horizontal_collision

#_1E9F6B: LDA.w $0D50,X
#_1E9F6E: EOR.b #$FF
#_1E9F70: INC A
#_1E9F71: STA.w $0D50,X

#_1E9F74: INC.w $0EC0,X
#_1E9F77: BRA .no_horizontal_collision ; useless

.no_horizontal_collision
#_1E9F79: LDA.w $0E70,X
#_1E9F7C: AND.b #$0C
#_1E9F7E: BEQ .no_vertital_collision

#_1E9F80: LDA.w $0D40,X
#_1E9F83: EOR.b #$FF
#_1E9F85: INC A
#_1E9F86: STA.w $0D40,X

#_1E9F89: INC.w $0EC0,X

.no_vertital_collision
; Bounce counter TODO document more things
#_1E9F8C: LDA.w $0EC0,X
#_1E9F8F: CMP.b #$03
#_1E9F91: BCC .can_bounce_more

.damage
#_1E9F93: LDA.b #$04
#_1E9F95: STA.w $0D80,X

#_1E9F98: LDA.b #$0F
#_1E9F9A: STA.w $0DF0,X

#_1E9F9D: LDA.b #$28 ; SFX2.28
#_1E9F9F: JSL SpriteSFX_QueueSFX2WithPan

.can_bounce_more
#_1E9FA3: INC.w $0E80,X

#_1E9FA6: LDA.w $0E80,X
#_1E9FA9: LSR A
#_1E9FAA: LSR A
#_1E9FAB: LSR A

#_1E9FAC: AND.b #$03
#_1E9FAE: TAY

#_1E9FAF: LDA.w .anim_step,Y
#_1E9FB2: STA.w $0DC0,X

; sparkles on a frame rule
#_1E9FB5: TXA
#_1E9FB6: EOR.b $1A
#_1E9FB8: AND.b #$07
#_1E9FBA: BNE .exit

#_1E9FBC: JSL GetRandomNumber

#_1E9FC0: REP #$20

#_1E9FC2: AND.w #$000F
#_1E9FC5: SEC
#_1E9FC6: SBC.w #$0004
#_1E9FC9: STA.b $00

#_1E9FCB: SEP #$20

#_1E9FCD: JSL GetRandomNumber

#_1E9FD1: REP #$20

#_1E9FD3: AND.w #$000F
#_1E9FD6: SEC
#_1E9FD7: SBC.w #$0004
#_1E9FDA: STA.b $02

#_1E9FDC: SEP #$20

#_1E9FDE: JSL GarnishSpawn_Sparkle

.exit
#_1E9FE2: RTS

;===================================================================================================

Kyameron_Dissipate:
#_1E9FE3: LDA.w $0DF0,X
#_1E9FE6: BNE .still_being_dramatic_about_the_ordeal

#_1E9FE8: STZ.w $0EC0,X
#_1E9FEB: STZ.w $0D80,X
#_1E9FEE: STZ.w $0F70,X

#_1E9FF1: LDA.b #$40
#_1E9FF3: STA.w $0DF0,X

#_1E9FF6: RTS

.still_being_dramatic_about_the_ordeal
#_1E9FF7: LSR A
#_1E9FF8: LSR A
#_1E9FF9: TAY

#_1E9FFA: CLC
#_1E9FFB: ADC.b #$0F
#_1E9FFD: STA.w $0DC0,X

#_1EA000: RTS

;===================================================================================================

GarnishSpawn_Sparkle_limited:
#_1EA001: PHX
#_1EA002: TXY

#_1EA003: LDX.b #$0E
#_1EA005: BRA .check_slot

;===================================================================================================

#GarnishSpawn_Sparkle:
#_1EA007: PHX
#_1EA008: TXY

#_1EA009: LDX.b #$1D

.check_slot
#_1EA00B: LDA.l $7FF800,X
#_1EA00F: BEQ .free_slot

#_1EA011: DEX
#_1EA012: BPL .check_slot

#_1EA014: STX.b $0F

#_1EA016: PLX

#_1EA017: RTL

;---------------------------------------------------------------------------------------------------

.free_slot
#_1EA018: STX.b $0F

#_1EA01A: LDA.b #$05 ; GARNISH 05
#_1EA01C: STA.l $7FF800,X
#_1EA020: STA.w $0FB4

#_1EA023: LDA.w $0D10,Y
#_1EA026: CLC
#_1EA027: ADC.b $00
#_1EA029: STA.l $7FF83C,X

#_1EA02D: LDA.w $0D30,Y
#_1EA030: ADC.b $01
#_1EA032: STA.l $7FF878,X

#_1EA036: LDA.w $0D00,Y
#_1EA039: SEC
#_1EA03A: SBC.w $0F70,Y
#_1EA03D: PHP

#_1EA03E: CLC
#_1EA03F: ADC.b #$10
#_1EA041: PHP

#_1EA042: CLC
#_1EA043: ADC.b $02
#_1EA045: STA.l $7FF81E,X

#_1EA049: LDA.w $0D20,Y
#_1EA04C: ADC.b $03

#_1EA04E: PLP
#_1EA04F: ADC.b #$00

#_1EA051: PLP
#_1EA052: SBC.b #$00

#_1EA054: STA.l $7FF85A,X

#_1EA058: LDA.b #$1F
#_1EA05A: STA.l $7FF90E,X

#_1EA05E: TYA
#_1EA05F: STA.l $7FF92C,X

#_1EA063: LDA.w $0F20,Y
#_1EA066: STA.l $7FF968,X

#_1EA06A: PLX

#_1EA06B: RTL

;===================================================================================================

pool SpriteDraw_Kyameron

.oam_groups
; group00
#_1EA06C: dw   1,   8 : db $B4, $00, $00, $00
#_1EA074: dw   7,   8 : db $B5, $00, $00, $00
#_1EA07C: dw   4,  -3 : db $86, $00, $00, $00
#_1EA084: dw   0, -13 : db $A2, $80, $00, $02

; group01
#_1EA08C: dw   2,   8 : db $B4, $00, $00, $00
#_1EA094: dw   6,   8 : db $B5, $00, $00, $00
#_1EA09C: dw   4,  -6 : db $96, $00, $00, $00
#_1EA0A4: dw   0, -20 : db $A2, $00, $00, $02

; group02
#_1EA0AC: dw   4,  -1 : db $96, $00, $00, $00
#_1EA0B4: dw   0, -27 : db $A2, $00, $00, $02
#_1EA0BC: dw   0, -27 : db $A2, $00, $00, $02
#_1EA0C4: dw   0, -27 : db $A2, $00, $00, $02

; group03
#_1EA0CC: dw  -6,  -6 : db $DF, $01, $00, $00
#_1EA0D4: dw  14,  -6 : db $DF, $41, $00, $00
#_1EA0DC: dw  -6,  14 : db $DF, $81, $00, $00
#_1EA0E4: dw  14,  14 : db $DF, $C1, $00, $00

; group04
#_1EA0EC: dw  -6,  -6 : db $96, $00, $00, $00
#_1EA0F4: dw  14,  -6 : db $96, $40, $00, $00
#_1EA0FC: dw  -6,  14 : db $96, $80, $00, $00
#_1EA104: dw  14,  14 : db $96, $C0, $00, $00

; group05
#_1EA10C: dw  -4,  -4 : db $8D, $01, $00, $00
#_1EA114: dw  12,  -4 : db $8D, $41, $00, $00
#_1EA11C: dw  -4,  12 : db $8D, $81, $00, $00
#_1EA124: dw  12,  12 : db $8D, $C1, $00, $00

; group06
#_1EA12C: dw   0,   0 : db $8D, $01, $00, $00
#_1EA134: dw   8,   0 : db $8D, $41, $00, $00
#_1EA13C: dw   0,   8 : db $8D, $81, $00, $00
#_1EA144: dw   8,   8 : db $8D, $C1, $00, $00

;---------------------------------------------------------------------------------------------------

.flip
#_1EA14C: db $40, $00
#_1EA14E: db $00, $00
#_1EA150: db $00, $00
#_1EA152: db $00, $00
#_1EA154: db $00, $40
#_1EA156: db $C0, $80

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Kyameron:
#_1EA158: LDA.w $0DC0,X
#_1EA15B: CMP.b #$0C
#_1EA15D: BCS .dispersing

#_1EA15F: LDY.w $0DC0,X

#_1EA162: LDA.w $0F50,X
#_1EA165: PHA

#_1EA166: AND.b #$3F
#_1EA168: ORA.w .flip,Y
#_1EA16B: STA.w $0F50,X

#_1EA16E: JSL SpriteDraw_SingleLarge_long

#_1EA172: PLA
#_1EA173: STA.w $0F50,X

#_1EA176: RTS

.dispersing
#_1EA177: SEC
#_1EA178: SBC.b #$0C
#_1EA17A: TAY

; Why clog Y when you could have just done a couple more XBA?
#_1EA17B: LDA.b #$00
#_1EA17D: XBA

#_1EA17E: TYA

#_1EA17F: REP #$20

#_1EA181: ASL A ; x32
#_1EA182: ASL A
#_1EA183: ASL A
#_1EA184: ASL A
#_1EA185: ASL A

#_1EA186: ADC.w #.oam_groups
#_1EA189: STA.b $08

#_1EA18B: SEP #$20

#_1EA18D: LDA.b #$04
#_1EA18F: JMP.w Sprite_DrawMultiple_Bank1E

;===================================================================================================

pool Sprite_99_Pengator

.anim_step
#_1EA192: db $05, $00, $0A, $0F

pool off

;---------------------------------------------------------------------------------------------------

Sprite_99_Pengator:
#_1EA196: LDY.w $0DE0,X

#_1EA199: LDA.w $0D90,X
#_1EA19C: CLC
#_1EA19D: ADC.w .anim_step,Y
#_1EA1A0: STA.w $0DC0,X

#_1EA1A3: JSR SpriteDraw_Pengator

#_1EA1A6: LDA.w $0EA0,X
#_1EA1A9: BNE .recoiling

#_1EA1AB: LDA.w $0E70,X
#_1EA1AE: AND.b #$0F
#_1EA1B0: BEQ .no_tile_collision

.recoiling
#_1EA1B2: STZ.w $0D80,X
#_1EA1B5: STZ.w $0D50,X
#_1EA1B8: STZ.w $0D40,X

.no_tile_collision
#_1EA1BB: JSR Sprite_CheckIfActive_Bank1E
#_1EA1BE: JSR Sprite_CheckIfRecoiling_Bank1E
#_1EA1C1: JSR Sprite_CheckDamageToAndFromLink_Bank1E
#_1EA1C4: JSR Sprite_Move_XYZ_Bank1E

#_1EA1C7: DEC.w $0F80,X
#_1EA1CA: DEC.w $0F80,X

#_1EA1CD: LDA.w $0F70,X
#_1EA1D0: BPL .airborne

#_1EA1D2: STZ.w $0F80,X
#_1EA1D5: STZ.w $0F70,X

.airborne
#_1EA1D8: JSR Sprite_CheckTileCollision_Bank1E

#_1EA1DB: LDA.w $0D80,X
#_1EA1DE: JSL JumpTableLocal
#_1EA1E2: dw Pengator_FaceLink
#_1EA1E4: dw Pengator_Accelerate
#_1EA1E6: dw Pengator_Hop
#_1EA1E8: dw Pengator_Slide

;===================================================================================================

Pengator_FaceLink:
#_1EA1EA: JSR Sprite_DirectionToFaceLink_Bank1E
#_1EA1ED: TYA
#_1EA1EE: STA.w $0DE0,X

#_1EA1F1: INC.w $0D80,X

#_1EA1F4: RTS

;===================================================================================================

pool Pengator_Accelerate

.speed_x ; bleeds into next
#_1EA1F5: db  1, -1

.speed_y
#_1EA1F7: db  0,  0,  1, -1

pool off

;---------------------------------------------------------------------------------------------------

Pengator_Accelerate:
#_1EA1FB: TXA
#_1EA1FC: EOR.b $1A
#_1EA1FE: AND.b #$03
#_1EA200: BNE .continue

#_1EA202: STZ.b $00

#_1EA204: LDY.w $0DE0,X

#_1EA207: LDA.w $0D50,X
#_1EA20A: CMP.w Sixteen_X,Y
#_1EA20D: BEQ .at_max_x

#_1EA20F: CLC
#_1EA210: ADC.w .speed_x,Y
#_1EA213: STA.w $0D50,X

#_1EA216: INC.b $00

.at_max_x
#_1EA218: LDA.w $0D40,X
#_1EA21B: CMP.w Sixteen_Y,Y
#_1EA21E: BEQ .at_max_y

#_1EA220: CLC
#_1EA221: ADC.w .speed_y,Y
#_1EA224: STA.w $0D40,X

#_1EA227: INC.b $00

.at_max_y
#_1EA229: LDA.b $00
#_1EA22B: BNE .continue

#_1EA22D: LDA.b #$0F
#_1EA22F: STA.w $0DF0,X

#_1EA232: INC.w $0D80,X

.continue
#_1EA235: LDA.b $1A
#_1EA237: AND.b #$04
#_1EA239: LSR A
#_1EA23A: LSR A
#_1EA23B: TAY ; useless

#_1EA23C: STA.w $0D90,X

#_1EA23F: RTS

;===================================================================================================

pool Pengator_Hop

.anim_step
#_1EA240: db $04, $04, $03, $02

pool off

;---------------------------------------------------------------------------------------------------

Pengator_Hop:
#_1EA244: LDA.w $0DF0,X
#_1EA247: BNE .delay

#_1EA249: INC.w $0D80,X

.delay
#_1EA24C: CMP.b #$05
#_1EA24E: BNE .no_hop

#_1EA250: PHA

#_1EA251: LDA.b #$18
#_1EA253: STA.w $0F80,X

#_1EA256: PLA

.no_hop
#_1EA257: LSR A
#_1EA258: LSR A
#_1EA259: TAY

#_1EA25A: LDA.w .anim_step,Y
#_1EA25D: STA.w $0D90,X

#_1EA260: RTS

;===================================================================================================

pool Pengator_Slide

.sparkle_offset_x
#_1EA261: db  8, 10, 12, 14, 12, 12, 12, 12

.sparkle_offset_y
#_1EA269: db  4,  4,  4,  4,  0,  4,  8, 12

pool off

;---------------------------------------------------------------------------------------------------

Pengator_Slide:
#_1EA271: TXA
#_1EA272: EOR.b $1A
#_1EA274: AND.b #$07
#_1EA276: ORA.w $0F70,X
#_1EA279: BNE .exit

#_1EA27B: LDA.w $0DE0,X
#_1EA27E: STA.b $06

#_1EA280: JSL GetRandomNumber
#_1EA284: AND.b #$03
#_1EA286: TAY

#_1EA287: LDA.b $06
#_1EA289: CMP.b #$02
#_1EA28B: BCC .facing_vertical

#_1EA28D: INY ; +4
#_1EA28E: INY
#_1EA28F: INY
#_1EA290: INY

.facing_vertical
#_1EA291: LDA.w .sparkle_offset_y,Y
#_1EA294: STA.b $00
#_1EA296: STZ.b $01

#_1EA298: JSL GetRandomNumber

#_1EA29C: AND.b #$03
#_1EA29E: TAY

#_1EA29F: LDA.b $06
#_1EA2A1: CMP.b #$02
#_1EA2A3: BCC .facing_vertical_also

#_1EA2A5: INY ; +4
#_1EA2A6: INY
#_1EA2A7: INY
#_1EA2A8: INY

.facing_vertical_also
#_1EA2A9: LDA.w .sparkle_offset_x,Y
#_1EA2AC: STA.b $02
#_1EA2AE: STZ.b $03

#_1EA2B0: JSL GarnishSpawn_Sparkle_limited

.exit
#_1EA2B4: RTS

;===================================================================================================

pool SpriteDraw_Pengator

.oam_group_set_1
; group00
#_1EA2B5: dw  -1,  -8 : db $82, $00, $00, $02
#_1EA2BD: dw   0,   0 : db $88, $00, $00, $02

; group01
#_1EA2C5: dw  -1,  -7 : db $82, $00, $00, $02
#_1EA2CD: dw   0,   0 : db $8A, $00, $00, $02

; group02
#_1EA2D5: dw  -3,  -6 : db $82, $00, $00, $02
#_1EA2DD: dw   0,   0 : db $88, $00, $00, $02

; group03
#_1EA2E5: dw  -6,  -4 : db $82, $00, $00, $02
#_1EA2ED: dw   0,   0 : db $8A, $00, $00, $02

; group04
#_1EA2F5: dw  -4,   0 : db $A2, $00, $00, $02
#_1EA2FD: dw   4,   0 : db $A3, $00, $00, $02

; group05
#_1EA305: dw   1,  -8 : db $82, $40, $00, $02
#_1EA30D: dw   0,   0 : db $88, $40, $00, $02

; group06
#_1EA315: dw   1,  -7 : db $82, $40, $00, $02
#_1EA31D: dw   0,   0 : db $8A, $40, $00, $02

; group07
#_1EA325: dw   3,  -6 : db $82, $40, $00, $02
#_1EA32D: dw   0,   0 : db $88, $40, $00, $02

; group08
#_1EA335: dw   6,  -4 : db $82, $40, $00, $02
#_1EA33D: dw   0,   0 : db $8A, $40, $00, $02

; group09
#_1EA345: dw   4,   0 : db $A2, $40, $00, $02
#_1EA34D: dw  -4,   0 : db $A3, $40, $00, $02

; group0A
#_1EA355: dw   0,  -7 : db $80, $00, $00, $02
#_1EA35D: dw   0,   0 : db $86, $00, $00, $02

; group0B
#_1EA365: dw   0,  -7 : db $80, $40, $00, $02
#_1EA36D: dw   0,   0 : db $86, $40, $00, $02

; group0C
#_1EA375: dw   0,  -4 : db $80, $00, $00, $02
#_1EA37D: dw   0,   0 : db $86, $00, $00, $02

; group0D
#_1EA385: dw   0,  -1 : db $80, $00, $00, $02
#_1EA38D: dw   0,   0 : db $86, $00, $00, $02

; group0E
#_1EA395: dw  -8,   0 : db $8E, $00, $00, $02
#_1EA39D: dw   8,   0 : db $8E, $40, $00, $02

; group0F
#_1EA3A5: dw   0,  -8 : db $84, $00, $00, $02
#_1EA3AD: dw   0,   0 : db $8C, $00, $00, $02

; group10
#_1EA3B5: dw   0,  -8 : db $84, $40, $00, $02
#_1EA3BD: dw   0,   0 : db $8C, $40, $00, $02

; group11
#_1EA3C5: dw   0,  -7 : db $84, $00, $00, $02
#_1EA3CD: dw   0,   0 : db $8C, $00, $00, $02

; group12
#_1EA3D5: dw   0,   0 : db $8C, $40, $00, $02
#_1EA3DD: dw   0,  -6 : db $84, $40, $00, $02

; group13
#_1EA3E5: dw  -8,   0 : db $A0, $00, $00, $02
#_1EA3ED: dw   8,   0 : db $A0, $40, $00, $02

;---------------------------------------------------------------------------------------------------

.oam_group_set_2
; group00
#_1EA3F5: dw   0,  16 : db $B5, $00, $00, $00
#_1EA3FD: dw   8,  16 : db $B5, $40, $00, $00

; group01
#_1EA405: dw   0,  -8 : db $A5, $00, $00, $00
#_1EA40D: dw   8,  -8 : db $A5, $40, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Pengator:
#_1EA415: LDA.b #$00
#_1EA417: XBA
#_1EA418: LDA.w $0DC0,X

#_1EA41B: REP #$20

#_1EA41D: ASL A ; x16
#_1EA41E: ASL A
#_1EA41F: ASL A
#_1EA420: ASL A
#_1EA421: ADC.w #.oam_group_set_1
#_1EA424: STA.b $08

#_1EA426: SEP #$20

#_1EA428: LDA.b #$02
#_1EA42A: JSR Sprite_DrawMultiple_Bank1E

#_1EA42D: LDY.b #$00

#_1EA42F: LDA.b #$00
#_1EA431: XBA

#_1EA432: LDA.w $0DC0,X
#_1EA435: CMP.b #$0E
#_1EA437: BEQ .draw_more

#_1EA439: INY

#_1EA43A: CMP.b #$13
#_1EA43C: BNE .draw_not_more

;---------------------------------------------------------------------------------------------------

.draw_more
#_1EA43E: TYA

#_1EA43F: REP #$20

#_1EA441: ASL A ; x16
#_1EA442: ASL A
#_1EA443: ASL A
#_1EA444: ASL A
#_1EA445: ADC.w #.oam_group_set_2
#_1EA448: STA.b $08

#_1EA44A: LDA.b $90
#_1EA44C: CLC
#_1EA44D: ADC.w #$0008
#_1EA450: STA.b $90

#_1EA452: INC.b $92
#_1EA454: INC.b $92

#_1EA456: SEP #$20

#_1EA458: LDA.b #$02
#_1EA45A: JSR Sprite_DrawMultiple_Bank1E

;---------------------------------------------------------------------------------------------------

.draw_not_more
#_1EA45D: JSL SpriteDraw_Shadow_long

#_1EA461: RTS

;===================================================================================================

LaserBeam:
#_1EA462: JSL SpriteDraw_SingleSmall_long
#_1EA466: JSR Sprite_CheckIfActive_Bank1E

#_1EA469: JSR LaserBeam_BuildUpGarnish
#_1EA46C: JSR Sprite_Move_XY_Bank1E
#_1EA46F: JSL Sprite_CheckDamageToLink_same_layer_long

#_1EA473: LDA.w $0DF0,X
#_1EA476: BNE .exit

#_1EA478: JSR Sprite_CheckTileCollision_Bank1E
#_1EA47B: BEQ .exit

#_1EA47D: STZ.w $0DD0,X

#_1EA480: LDA.b #$26 ; SFX3.26
#_1EA482: JSL SpriteSFX_QueueSFX3WithPan

#_1EA486: RTS

.exit
#_1EA487: RTS

;===================================================================================================

LaserBeam_BuildUpGarnish:
#_1EA488: PHX
#_1EA489: TXY

#_1EA48A: LDX.b #$1D

.next_slot
#_1EA48C: LDA.l $7FF800,X
#_1EA490: BEQ .free_slot

#_1EA492: DEX
#_1EA493: BPL .next_slot

#_1EA495: DEC.w $0FF8
#_1EA498: BPL .use_indexer

#_1EA49A: LDA.b #$1D
#_1EA49C: STA.w $0FF8

.use_indexer
#_1EA49F: LDX.w $0FF8

;---------------------------------------------------------------------------------------------------

.free_slot
#_1EA4A2: LDA.b #$04 ; GARNISH 04
#_1EA4A4: STA.l $7FF800,X
#_1EA4A8: STA.w $0FB4

#_1EA4AB: LDA.w $0D10,Y
#_1EA4AE: STA.l $7FF83C,X

#_1EA4B2: LDA.w $0D30,Y
#_1EA4B5: STA.l $7FF878,X

#_1EA4B9: LDA.w $0D00,Y
#_1EA4BC: CLC
#_1EA4BD: ADC.b #$10
#_1EA4BF: STA.l $7FF81E,X

#_1EA4C3: LDA.w $0D20,Y
#_1EA4C6: ADC.b #$00
#_1EA4C8: STA.l $7FF85A,X

#_1EA4CC: LDA.b #$10
#_1EA4CE: STA.l $7FF90E,X

#_1EA4D2: LDA.w $0DC0,Y
#_1EA4D5: STA.l $7FF9FE,X

#_1EA4D9: TYA
#_1EA4DA: STA.l $7FF92C,X

#_1EA4DE: LDA.w $0F20,Y
#_1EA4E1: STA.l $7FF968,X

#_1EA4E5: PLX

#_1EA4E6: RTS

;===================================================================================================

SpritePrep_LaserEye:
#_1EA4E7: PHB
#_1EA4E8: PHK
#_1EA4E9: PLB

#_1EA4EA: JSR .main

#_1EA4ED: PLB

#_1EA4EE: RTL

;---------------------------------------------------------------------------------------------------

.offset
#_1EA4EF: db  -8,  8

;---------------------------------------------------------------------------------------------------

.main
#_1EA4F1: LDA.w $0E20,X
#_1EA4F4: CMP.b #$97 ; SPRITE 97
#_1EA4F6: BCC .horizontal

#_1EA4F8: LDA.w $0D10,X
#_1EA4FB: CLC
#_1EA4FC: ADC.b #$08
#_1EA4FE: STA.w $0D10,X

#_1EA501: LDA.w $0E20,X
#_1EA504: SEC
#_1EA505: SBC.b #$95
#_1EA507: STA.w $0DE0,X

#_1EA50A: TAY

#_1EA50B: LDA.w $0D10,X
#_1EA50E: AND.b #$10
#_1EA510: EOR.b #$10
#_1EA512: STA.w $0EB0,X

#_1EA515: BNE .dont_adjust_y

#_1EA517: LDA.w $0D00,X
#_1EA51A: CLC
#_1EA51B: ADC.w .offset-2,Y
#_1EA51E: STA.w $0D00,X

.dont_adjust_y
#_1EA521: RTS

;---------------------------------------------------------------------------------------------------

.horizontal
#_1EA522: LDA.w $0E20,X
#_1EA525: SEC
#_1EA526: SBC.b #$95
#_1EA528: STA.w $0DE0,X

#_1EA52B: TAY

#_1EA52C: LDA.w $0D00,X
#_1EA52F: AND.b #$10
#_1EA531: STA.w $0EB0,X

#_1EA534: BNE .dont_adjust_x

#_1EA536: LDA.w $0D10,X
#_1EA539: CLC
#_1EA53A: ADC.w .offset,Y
#_1EA53D: STA.w $0D10,X

.dont_adjust_x
#_1EA540: RTS

;===================================================================================================

Sprite_95_LaserEyeLeft:
Sprite_96_LaserEyeRight:
Sprite_97_LaserEyeTop:
Sprite_98_LaserEyeBottom:
#_1EA541: LDA.w $0D90,X
#_1EA544: BEQ LaserEye

#_1EA546: JMP.w LaserBeam

;===================================================================================================

LaserEye:
#_1EA549: JSR SpriteDraw_LaserEye
#_1EA54C: JSR Sprite_CheckIfActive_Bank1E

#_1EA54F: LDA.w $0D80,X
#_1EA552: JSL JumpTableLocal
#_1EA556: dw LaserEye_Reconnaissance
#_1EA558: dw LaserEye_TangoLocked

;===================================================================================================

pool LaserEye_Reconnaissance

.direction
#_1EA55A: db $02, $03, $00, $01

pool off

;---------------------------------------------------------------------------------------------------

LaserEye_Reconnaissance:
#_1EA55E: REP #$20

#_1EA560: LDA.b $20
#_1EA562: SEC
#_1EA563: SBC.w $0FDA
#_1EA566: STA.b $0C

#_1EA568: LDA.b $22
#_1EA56A: SEC
#_1EA56B: SBC.w $0FD8
#_1EA56E: STA.b $0E

#_1EA570: SEP #$20

#_1EA572: LDA.b $2F
#_1EA574: LSR A

;---------------------------------------------------------------------------------------------------

#_1EA575: LDY.w $0EB0,X
#_1EA578: CPY.b #$01

#_1EA57A: TAY

#_1EA57B: LDA.w $0DE0,X
#_1EA57E: BCS .ignore_direction

#_1EA580: CMP.w .direction,Y
#_1EA583: BNE .dont_fire

.ignore_direction
#_1EA585: CMP.b #$02

#_1EA587: REP #$20
#_1EA589: BCS .vertical

#_1EA58B: LDA.b $0C
#_1EA58D: BRA .continue

.vertical
#_1EA58F: LDA.b $0E

;---------------------------------------------------------------------------------------------------

.continue
#_1EA591: CLC
#_1EA592: ADC.w #$0010
#_1EA595: CMP.w #$0020

#_1EA598: SEP #$20
#_1EA59A: BCS .dont_fire

#_1EA59C: LDA.b #$20

#_1EA59E: LDY.w $0EB0,X
#_1EA5A1: BEQ .pointless_check ; useless, 0x20 is loaded regardless

#_1EA5A3: LDA.b #$20

.pointless_check
#_1EA5A5: STA.w $0DF0,X

#_1EA5A8: INC.w $0D80,X

#_1EA5AB: RTS

.dont_fire
#_1EA5AC: STZ.w $0DC0,X

#_1EA5AF: RTS

;===================================================================================================

pool LaserEye_FireBeam

.offset_x_low ; bleeds into next
#_1EA5B0: db   12,   -4

.offset_y_low
#_1EA5B2: db    4,    4,   12,   -4

.offset_x_high ; bleeds into next
#_1EA5B6: db    0,   -1

.offset_y_high
#_1EA5B8: db    0,    0,    0,   -1

.speed_x ; bleeds into next
#_1EA5BC: db  112, -112

.speed_y
#_1EA5BE: db    0,    0,  112, -112

pool off

;---------------------------------------------------------------------------------------------------

LaserEye_TangoLocked:
#_1EA5C2: LDA.b #$01
#_1EA5C4: STA.w $0DC0,X

#_1EA5C7: LDA.w $0DF0,X
#_1EA5CA: BNE .cover_me_im_reloading

#_1EA5CC: STZ.w $0D80,X

#_1EA5CF: JSR LaserEye_FireBeam

#_1EA5D2: LDA.b #$0C
#_1EA5D4: STA.w $0F10,X

.cover_me_im_reloading
#_1EA5D7: RTS

;===================================================================================================

LaserEye_FireBeam:
#_1EA5D8: LDA.b #$95 ; SPRITE 95
#_1EA5DA: JSL Sprite_SpawnDynamically
#_1EA5DE: BMI .no_space

#_1EA5E0: PHX

#_1EA5E1: LDA.w $0DE0,X
#_1EA5E4: TAX

#_1EA5E5: AND.b #$02
#_1EA5E7: LSR A
#_1EA5E8: STA.w $0DC0,Y

#_1EA5EB: LDA.b $00
#_1EA5ED: CLC
#_1EA5EE: ADC.w .offset_x_low,X
#_1EA5F1: STA.w $0D10,Y

#_1EA5F4: LDA.b $01
#_1EA5F6: ADC.w .offset_x_high,X
#_1EA5F9: STA.w $0D30,Y

#_1EA5FC: LDA.b $02
#_1EA5FE: CLC
#_1EA5FF: ADC.w .offset_y_low,X
#_1EA602: STA.w $0D00,Y

#_1EA605: LDA.b $03
#_1EA607: ADC.w .offset_y_high,X
#_1EA60A: STA.w $0D20,Y

#_1EA60D: LDA.w .speed_x,X
#_1EA610: STA.w $0D50,Y

#_1EA613: LDA.w .speed_y,X
#_1EA616: STA.w $0D40,Y

#_1EA619: LDA.b #$20
#_1EA61B: STA.w $0E40,Y
#_1EA61E: STA.w $0D90,Y

#_1EA621: LDA.b #$05
#_1EA623: STA.w $0F50,Y

#_1EA626: LDA.b #$48
#_1EA628: STA.w $0CAA,Y
#_1EA62B: STA.w $0BA0,Y

#_1EA62E: LDA.b #$05
#_1EA630: STA.w $0DF0,Y

#_1EA633: LDA.l $7EF35A
#_1EA637: CMP.b #$03
#_1EA639: BNE .full_photon_jacket

#_1EA63B: LDA.b #$20
#_1EA63D: STA.w $0BE0,Y

.full_photon_jacket
#_1EA640: PLX

#_1EA641: LDA.b #$19 ; SFX3.19
#_1EA643: JSL SpriteSFX_QueueSFX3WithPan

.no_space
#_1EA647: RTS

;===================================================================================================

pool SpriteDraw_LaserEye

.oam_groups
; group00
#_1EA648: dw   8,  -4 : db $C8, $40, $00, $00
#_1EA650: dw   8,   4 : db $D8, $40, $00, $00
#_1EA658: dw   8,  12 : db $C8, $C0, $00, $00

; group01
#_1EA660: dw   8,  -4 : db $C9, $40, $00, $00
#_1EA668: dw   8,   4 : db $D9, $40, $00, $00
#_1EA670: dw   8,  12 : db $C9, $C0, $00, $00

; group02
#_1EA678: dw   0,  -4 : db $C8, $00, $00, $00
#_1EA680: dw   0,   4 : db $D8, $00, $00, $00
#_1EA688: dw   0,  12 : db $C8, $80, $00, $00

; group03
#_1EA690: dw   0,  -4 : db $C9, $00, $00, $00
#_1EA698: dw   0,   4 : db $D9, $00, $00, $00
#_1EA6A0: dw   0,  12 : db $C9, $80, $00, $00

; group04
#_1EA6A8: dw  -4,   8 : db $D6, $00, $00, $00
#_1EA6B0: dw   4,   8 : db $D7, $00, $00, $00
#_1EA6B8: dw  12,   8 : db $D6, $40, $00, $00

; group05
#_1EA6C0: dw  -4,   8 : db $C6, $00, $00, $00
#_1EA6C8: dw   4,   8 : db $C7, $00, $00, $00
#_1EA6D0: dw  12,   8 : db $C6, $40, $00, $00

; group06
#_1EA6D8: dw  -4,   0 : db $D6, $80, $00, $00
#_1EA6E0: dw   4,   0 : db $D7, $80, $00, $00
#_1EA6E8: dw  12,   0 : db $D6, $C0, $00, $00

; group07
#_1EA6F0: dw  -4,   0 : db $C6, $80, $00, $00
#_1EA6F8: dw   4,   0 : db $C7, $80, $00, $00
#_1EA700: dw  12,   0 : db $C6, $C0, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_LaserEye:
#_1EA708: LDA.w $0EB0,X
#_1EA70B: BEQ .continue

#_1EA70D: LDA.b #$01
#_1EA70F: STA.w $0DC0,X

#_1EA712: LDA.w $0F10,X
#_1EA715: BEQ .continue

#_1EA717: STZ.w $0DC0,X

.continue
#_1EA71A: LDA.b #$30
#_1EA71C: STA.w $0B89,X

#_1EA71F: LDA.b #$00
#_1EA721: XBA
#_1EA722: LDA.w $0DE0,X

#_1EA725: ASL A
#_1EA726: ADC.w $0DC0,X

#_1EA729: REP #$20

#_1EA72B: ASL A ; x8
#_1EA72C: ASL A
#_1EA72D: ASL A

#_1EA72E: STA.b $00

#_1EA730: ASL A
#_1EA731: ADC.b $00
#_1EA733: ADC.w #.oam_groups

#_1EA736: STA.b $08

#_1EA738: SEP #$20

#_1EA73A: LDA.b #$03
#_1EA73C: JMP.w Sprite_DrawMultiple_Bank1E

;===================================================================================================

Sprite_94_Tile_bounce:
#_1EA73F: JMP.w Sprite_94_Tile

;---------------------------------------------------------------------------------------------------

Sprite_94_Pirogusu:
#_1EA742: LDA.w $0E90,X
#_1EA745: BNE Sprite_94_Tile_bounce

#_1EA747: LDA.w $0B89,X
#_1EA74A: ORA.b #$30
#_1EA74C: STA.w $0B89,X

#_1EA74F: JSR SpriteDraw_Pirogusu
#_1EA752: JSR Sprite_CheckIfActive_Bank1E

#_1EA755: LDA.w $0D80,X
#_1EA758: JSL JumpTableLocal
#_1EA75C: dw Pirogusu_InHole
#_1EA75E: dw Pirogusu_Crowning
#_1EA760: dw Pirogusu_Plop
#_1EA762: dw Pirogusu_Active

;===================================================================================================

pool Pirogusu_InHole

.anim_step
#_1EA764: db $02, $03, $00, $01

pool off

;---------------------------------------------------------------------------------------------------

Pirogusu_InHole:
#_1EA768: LDA.w $0DF0,X
#_1EA76B: BNE .wait_for_timer

#_1EA76D: INC.w $0D80,X
#_1EA770: LDA.b #$1F
#_1EA772: STA.w $0DF0,X

.wait_for_timer
#_1EA775: STA.w $0BA0,X

#_1EA778: LDY.w $0DE0,X

#_1EA77B: LDA.w .anim_step,Y
#_1EA77E: STA.w $0D90,X

#_1EA781: RTS

;===================================================================================================

pool Pirogusu_Crowning

.anim
#_1EA782: db $09, $0B, $05, $07, $05, $0B, $07, $09

.speed_y
#_1EA78A: db  0,  0 ; bleeds into next

.speed_x
#_1EA78C: db  4, -4,  0,  0

pool off

;---------------------------------------------------------------------------------------------------

Pirogusu_Crowning:
#_1EA790: LDA.w $0DF0,X
#_1EA793: BNE .push_push

#_1EA795: INC.w $0D80,X

#_1EA798: LDA.b #$20
#_1EA79A: STA.w $0DF0,X

#_1EA79D: STZ.w $0BA0,X

#_1EA7A0: JSR Sprite_ZeroVelocity_XY_Bank1E

#_1EA7A3: RTS

.push_push
#_1EA7A4: LDA.w $0DE0,X
#_1EA7A7: ASL A
#_1EA7A8: STA.b $00

#_1EA7AA: LDA.w $0DF0,X
#_1EA7AD: LSR A
#_1EA7AE: LSR A
#_1EA7AF: LSR A
#_1EA7B0: AND.b #$01
#_1EA7B2: ORA.b $00
#_1EA7B4: TAY

#_1EA7B5: LDA.w .anim,Y
#_1EA7B8: STA.w $0D90,X

#_1EA7BB: LDY.w $0DE0,X

#_1EA7BE: LDA.w .speed_x,Y
#_1EA7C1: STA.w $0D50,X

#_1EA7C4: LDA.w .speed_y,Y
#_1EA7C7: STA.w $0D40,X

#_1EA7CA: JSR Sprite_Move_XY_Bank1E

#_1EA7CD: RTS

;===================================================================================================

pool Pirogusu_Animate

.anim_step
#_1EA7CE: db $10, $11, $12, $13, $0C, $0D, $0E, $0F

pool off

;===================================================================================================

pool Pirogusu_Plop

.acceleration_x
#_1EA7D6: db  2, -2 ; bleeds into next

.acceleration_y
#_1EA7D8: db  0,  0,  2, -2

pool off

;---------------------------------------------------------------------------------------------------

Pirogusu_Plop:
#_1EA7DC: JSR Sprite_CheckDamageToAndFromLink_Bank1E
#_1EA7DF: JSR Sprite_Move_XY_Bank1E

#_1EA7E2: LDY.w $0DE0,X

#_1EA7E5: LDA.w $0D50,X
#_1EA7E8: CLC
#_1EA7E9: ADC.w .acceleration_x,Y
#_1EA7EC: STA.w $0D50,X

#_1EA7EF: LDA.w $0D40,X
#_1EA7F2: CLC
#_1EA7F3: ADC.w .acceleration_y,Y
#_1EA7F6: STA.w $0D40,X

#_1EA7F9: LDA.w $0DF0,X
#_1EA7FC: BNE Pirogusu_Animate

#_1EA7FE: JSL Sprite_SpawnSmallSplash

#_1EA802: LDA.b #$10
#_1EA804: STA.w $0E00,X

#_1EA807: INC.w $0D80,X

;===================================================================================================

Pirogusu_Animate:
#_1EA80A: LDA.w $0DE0,X
#_1EA80D: ASL A
#_1EA80E: STA.b $00

#_1EA810: LDA.b $1A
#_1EA812: AND.b #$04
#_1EA814: LSR A
#_1EA815: LSR A

#_1EA816: ORA.b $00
#_1EA818: TAY

#_1EA819: LDA.w .anim_step,Y
#_1EA81C: STA.w $0D90,X

#_1EA81F: RTS

;===================================================================================================

Sprite_SpawnSmallSplash:
#_1EA820: LDA.b #$EC ; SPRITE EC
#_1EA822: LDY.b #$0E
#_1EA824: JSL Sprite_SpawnDynamically_slot_limited
#_1EA828: BMI .no_space

#_1EA82A: JSL Sprite_SetSpawnedCoordinates

#_1EA82E: STZ.w $012E

#_1EA831: LDA.b #$28 ; SFX2.28
#_1EA833: JSL SpriteSFX_QueueSFX2WithPan

#_1EA837: LDA.b #$03
#_1EA839: STA.w $0DD0,Y

#_1EA83C: LDA.b #$0F
#_1EA83E: STA.w $0DF0,Y

#_1EA841: LDA.b #$00
#_1EA843: STA.w $0D80,Y

#_1EA846: LDA.b #$03
#_1EA848: STA.w $0E40,Y

.no_space
#_1EA84B: RTL

;===================================================================================================

pool Pirogusu_Active

.speed_x ; bleeds into next
#_1EA84C: db  24, -24

.speed_y
#_1EA84E: db   0,   0,  24, -24

pool off

;---------------------------------------------------------------------------------------------------

Pirogusu_Active:
#_1EA852: JSR Sprite_CheckIfRecoiling_Bank1E
#_1EA855: JSR Sprite_CheckDamageToAndFromLink_Bank1E
#_1EA858: JSR Pirogusu_Animate

#_1EA85B: CLC
#_1EA85C: ADC.b #$08
#_1EA85E: STA.w $0D90,X

#_1EA861: LDA.w $0E00,X
#_1EA864: BNE .exit

#_1EA866: JSR Pirogusu_SpawnSplash
#_1EA869: JSR Sprite_Move_XY_Bank1E
#_1EA86C: JSR Sprite_CheckTileCollision_Bank1E

#_1EA86F: AND.b #$0F
#_1EA871: BEQ .no_collision

#_1EA873: JSL GetRandomNumber
#_1EA877: LSR A

#_1EA878: LDA.w $0DE0,X
#_1EA87B: ROL A
#_1EA87C: TAY

#_1EA87D: LDA.w SharedDirections_Nice,Y
#_1EA880: STA.w $0DE0,X

.no_collision
#_1EA883: LDY.w $0DE0,X

#_1EA886: LDA.w .speed_x,Y
#_1EA889: STA.w $0D50,X

#_1EA88C: LDA.w .speed_y,Y
#_1EA88F: STA.w $0D40,X

.exit
#_1EA892: RTS

;===================================================================================================

pool Pirogusu_SpawnSplash

.offset
#_1EA893: db $03, $04, $05, $04

pool off

;---------------------------------------------------------------------------------------------------

Pirogusu_SpawnSplash:
#_1EA897: TXA
#_1EA898: EOR.b $1A
#_1EA89A: AND.b #$03
#_1EA89C: BNE .exit

#_1EA89E: JSL GetRandomNumber
#_1EA8A2: AND.b #$03
#_1EA8A4: TAY

#_1EA8A5: LDA.w .offset,Y
#_1EA8A8: STA.b $00

#_1EA8AA: JSL GetRandomNumber
#_1EA8AE: AND.b #$03
#_1EA8B0: TAY

#_1EA8B1: LDA.w .offset,Y
#_1EA8B4: STA.b $01

#_1EA8B6: PHX
#_1EA8B7: TXY

#_1EA8B8: LDX.b #$0E

.next_slot
#_1EA8BA: LDA.l $7FF800,X
#_1EA8BE: BEQ .free_slot

#_1EA8C0: DEX
#_1EA8C1: BPL .next_slot

#_1EA8C3: PLX

.exit
#_1EA8C4: RTS

;---------------------------------------------------------------------------------------------------

.free_slot
#_1EA8C5: LDA.b #$0B ; GARNISH 0B
#_1EA8C7: STA.l $7FF800,X
#_1EA8CB: STA.w $0FB4

#_1EA8CE: LDA.w $0D10,Y
#_1EA8D1: CLC
#_1EA8D2: ADC.b $00
#_1EA8D4: STA.l $7FF83C,X

#_1EA8D8: LDA.w $0D30,Y
#_1EA8DB: ADC.b #$00
#_1EA8DD: STA.l $7FF878,X

#_1EA8E1: LDA.w $0D00,Y
#_1EA8E4: CLC
#_1EA8E5: ADC.b #$10

#_1EA8E7: PHP

#_1EA8E8: CLC
#_1EA8E9: ADC.b $01
#_1EA8EB: STA.l $7FF81E,X

#_1EA8EF: LDA.w $0D20,Y
#_1EA8F2: ADC.b #$00

#_1EA8F4: PLP

#_1EA8F5: ADC.b #$00
#_1EA8F7: STA.l $7FF85A,X

#_1EA8FB: LDA.b #$0F
#_1EA8FD: STA.l $7FF90E,X

#_1EA901: PLX

#_1EA902: RTS

;===================================================================================================

pool SpriteDraw_Pirogusu

.flip
#_1EA903: db $00, $80, $40, $00, $00, $00, $00
#_1EA90A: db $80, $80, $C0, $40, $40, $00, $40
#_1EA911: db $80, $C0, $40, $C0, $00, $80, $00
#_1EA918: db $40, $80, $C0, $40, $C0, $00, $80

.anim_step
#_1EA91F: db $00, $00, $01, $01, $02, $03, $04
#_1EA926: db $03, $02, $03, $04, $03, $05, $05
#_1EA92D: db $05, $05, $07, $07, $07, $07, $06
#_1EA934: db $06, $06, $06, $08, $08, $08, $08

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Pirogusu:
#_1EA93B: LDY.w $0D90,X

#_1EA93E: LDA.w $0F50,X
#_1EA941: AND.b #$3F
#_1EA943: ORA.w .flip,Y
#_1EA946: STA.w $0F50,X

#_1EA949: LDA.w .anim_step,Y
#_1EA94C: STA.w $0DC0,X

#_1EA94F: CPY.b #$04
#_1EA951: BCS .fully_visible

#_1EA953: LDA.w $0FD8
#_1EA956: CLC
#_1EA957: ADC.b #$04
#_1EA959: STA.w $0FD8

#_1EA95C: LDA.w $0FD9
#_1EA95F: ADC.b #$00
#_1EA961: STA.w $0FD9

#_1EA964: LDA.w $0FDA
#_1EA967: CLC
#_1EA968: ADC.b #$04
#_1EA96A: STA.w $0FDA

#_1EA96D: LDA.w $0FDB
#_1EA970: ADC.b #$00
#_1EA972: STA.w $0FDB

#_1EA975: JSL SpriteDraw_SingleSmall_long

#_1EA979: RTS

.fully_visible
#_1EA97A: JSL SpriteDraw_SingleLarge_long

#_1EA97E: RTS

;===================================================================================================

pool Sprite_93_Bumper

.recoil_speed
#_1EA97F: db 0,  2, -2

pool off

;---------------------------------------------------------------------------------------------------

Sprite_93_Bumper:
#_1EA982: JSR SpriteDraw_Bumper
#_1EA985: JSR Sprite_CheckIfActive_Bank1E
#_1EA988: JSR Sprite_CheckTileCollision_Bank1E

#_1EA98B: LDA.b $55
#_1EA98D: BNE .dont_boing_link

#_1EA98F: JSL Sprite_CheckDamageToLink_same_layer_long
#_1EA993: BCC .dont_boing_link

#_1EA995: JSL Link_CancelDash_long

#_1EA999: LDA.b #$20
#_1EA99B: STA.w $0DF0,X

#_1EA99E: LDA.b #$30
#_1EA9A0: JSL Sprite_ProjectSpeedTowardsLink_long

#_1EA9A4: LDA.b $F0
#_1EA9A6: LSR A
#_1EA9A7: LSR A
#_1EA9A8: AND.b #$03
#_1EA9AA: TAY

#_1EA9AB: LDA.b $00
#_1EA9AD: CLC
#_1EA9AE: ADC.w .recoil_speed,Y
#_1EA9B1: STA.b $27

#_1EA9B3: LDA.b $F0
#_1EA9B5: AND.b #$03
#_1EA9B7: TAY

#_1EA9B8: LDA.b $01
#_1EA9BA: CLC
#_1EA9BB: ADC.w .recoil_speed,Y
#_1EA9BE: STA.b $28

#_1EA9C0: LDA.b #$14
#_1EA9C2: STA.b $46

#_1EA9C4: PHX

#_1EA9C5: JSL Link_ResetSwimmingState

#_1EA9C9: PLX

#_1EA9CA: LDA.b #$32 ; SFX3.32
#_1EA9CC: JSL SpriteSFX_QueueSFX3WithPan

;---------------------------------------------------------------------------------------------------

.dont_boing_link
#_1EA9D0: LDY.b #$0F

; Each sprite is checked, but nothing prevents bumpers from hitting themselves,
; except for their statis bit.
; This is part of why moldorm bumper frenzy happens
.next_sprite
#_1EA9D2: TYA
#_1EA9D3: EOR.b $1A
#_1EA9D5: AND.b #$03
#_1EA9D7: ORA.w $0F70,Y
#_1EA9DA: BNE .dont_boing_sprite

#_1EA9DC: LDA.w $0DD0,Y
#_1EA9DF: CMP.b #$09
#_1EA9E1: BCC .dont_boing_sprite

#_1EA9E3: LDA.w $0E60,Y
#_1EA9E6: ORA.w $0F60,Y
#_1EA9E9: AND.b #$40
#_1EA9EB: BNE .dont_boing_sprite

#_1EA9ED: LDA.w $0D10,Y
#_1EA9F0: STA.b $04

#_1EA9F2: LDA.w $0D30,Y
#_1EA9F5: STA.b $05

#_1EA9F7: LDA.w $0D00,Y
#_1EA9FA: STA.b $06

#_1EA9FC: LDA.w $0D20,Y
#_1EA9FF: STA.b $07

#_1EAA01: REP #$20

#_1EAA03: LDA.w $0FD8
#_1EAA06: SEC
#_1EAA07: SBC.b $04
#_1EAA09: CLC
#_1EAA0A: ADC.w #$0010

#_1EAA0D: CMP.w #$0020
#_1EAA10: BCS .dont_boing_sprite

#_1EAA12: LDA.w $0FDA
#_1EAA15: SEC
#_1EAA16: SBC.b $06
#_1EAA18: CLC
#_1EAA19: ADC.w #$0010

#_1EAA1C: CMP.w #$0020
#_1EAA1F: BCS .dont_boing_sprite

#_1EAA21: SEP #$20

#_1EAA23: LDA.b #$0F
#_1EAA25: STA.w $0EA0,Y

#_1EAA28: PHY

#_1EAA29: LDA.b #$40
#_1EAA2B: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1EAA2F: PLY

#_1EAA30: LDA.b $00
#_1EAA32: STA.w $0F30,Y

#_1EAA35: LDA.b $01
#_1EAA37: STA.w $0F40,Y

#_1EAA3A: LDA.b #$20
#_1EAA3C: STA.w $0DF0,X

#_1EAA3F: LDA.b #$32 ; SFX3.32
#_1EAA41: JSL SpriteSFX_QueueSFX3WithPan

.dont_boing_sprite
#_1EAA45: SEP #$20

#_1EAA47: DEY
#_1EAA48: BPL .next_sprite

#_1EAA4A: RTS

;===================================================================================================

pool SpriteDraw_Bumper

.oam_groups
; group00
#_1EAA4B: dw  -8,  -8 : db $EC, $00, $00, $02
#_1EAA53: dw   8,  -8 : db $EC, $40, $00, $02
#_1EAA5B: dw  -8,   8 : db $EC, $80, $00, $02
#_1EAA63: dw   8,   8 : db $EC, $C0, $00, $02

; group01
#_1EAA6B: dw  -7,  -7 : db $EC, $00, $00, $02
#_1EAA73: dw   7,  -7 : db $EC, $40, $00, $02
#_1EAA7B: dw  -7,   7 : db $EC, $80, $00, $02
#_1EAA83: dw   7,   7 : db $EC, $C0, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Bumper:
#_1EAA8B: LDA.b #$00
#_1EAA8D: XBA
#_1EAA8E: LDA.w $0DF0,X

#_1EAA91: LSR A
#_1EAA92: AND.b #$01

#_1EAA94: REP #$20

#_1EAA96: ASL A ; x32
#_1EAA97: ASL A
#_1EAA98: ASL A
#_1EAA99: ASL A
#_1EAA9A: ASL A

#_1EAA9B: ADC.w #.oam_groups
#_1EAA9E: STA.b $08

#_1EAAA0: SEP #$20

#_1EAAA2: LDA.b #$04
#_1EAAA4: JMP.w Sprite_DrawMultiple_Bank1E

;===================================================================================================

Sprite_91_StalfosKnight:
#_1EAAA7: LDA.w $0D80,X
#_1EAAAA: BNE .dropped

#_1EAAAC: JSL Sprite_PrepOAMCoord_long
#_1EAAB0: BRA .continue

.dropped
#_1EAAB2: JSR SpriteDraw_StalfosKnight

.continue
#_1EAAB5: JSR Sprite_CheckIfActive_Bank1E

#_1EAAB8: LDA.w $0EF0,X
#_1EAABB: AND.b #$7F
#_1EAABD: CMP.b #$01
#_1EAABF: BNE .not_collapsed

#_1EAAC1: STZ.w $0EF0,X

#_1EAAC4: LDA.b #$06
#_1EAAC6: STA.w $0D80,X

#_1EAAC9: LDA.b #$FF
#_1EAACB: STA.w $0DF0,X

#_1EAACE: STZ.w $0D50,X
#_1EAAD1: STZ.w $0D40,X

; Directly modifes the damage value for bombs
#_1EAAD4: LDA.b #$02
#_1EAAD6: STA.l $7F6918

.not_collapsed
#_1EAADA: JSR Sprite_CheckIfRecoiling_Bank1E

#_1EAADD: LDA.w $0D80,X
#_1EAAE0: JSL JumpTableLocal
#_1EAAE4: dw StalfosKnight_Hidden
#_1EAAE6: dw StalfosKnight_EnterBattle
#_1EAAE8: dw StalfosKnight_Idle
#_1EAAEA: dw StalfosKnight_ScanForOpponents
#_1EAAEC: dw StalfosKnight_Squat
#_1EAAEE: dw StalfosKnight_HopAround
#_1EAAF0: dw StalfosKnight_Crumble
#_1EAAF2: dw StalfosKnight_CelebrateStandingUp

;===================================================================================================

StalfosKnight_Hidden:
#_1EAAF4: LDA.b #$09
#_1EAAF6: STA.w $0F60,X
#_1EAAF9: STA.w $0BA0,X

#_1EAAFC: LDA.w $0E40,X
#_1EAAFF: PHA

#_1EAB00: ORA.b #$80
#_1EAB02: STA.w $0E40,X

#_1EAB05: JSR Sprite_CheckDamageToLink_Bank1E

#_1EAB08: PLA
#_1EAB09: STA.w $0E40,X

#_1EAB0C: BCC .exit

#_1EAB0E: LDA.b #$90
#_1EAB10: STA.w $0F70,X

#_1EAB13: INC.w $0D80,X

#_1EAB16: LDA.b #$02
#_1EAB18: STA.w $0EB0,X

#_1EAB1B: LDA.b #$02
#_1EAB1D: STA.w $0DC0,X

#_1EAB20: LDA.b #$20 ; SFX2.20
#_1EAB22: JSL SpriteSFX_QueueSFX2WithPan

.exit
#_1EAB26: RTS

;===================================================================================================

StalfosKnight_EnterBattle:
#_1EAB27: LDA.w $0F70,X
#_1EAB2A: PHA

#_1EAB2B: JSR Sprite_Move_Z_Bank1E

#_1EAB2E: LDA.w $0F80,X
#_1EAB31: CMP.b #$C0
#_1EAB33: BMI .at_max_speed

#_1EAB35: SEC
#_1EAB36: SBC.b #$03
#_1EAB38: STA.w $0F80,X

.at_max_speed
#_1EAB3B: PLA
#_1EAB3C: EOR.w $0F70,X
#_1EAB3F: BPL .exit

#_1EAB41: LDA.w $0F70,X
#_1EAB44: BPL .exit

;===================================================================================================

#StalfosKnight_EnterIdleState:
#_1EAB46: LDA.b #$02
#_1EAB48: STA.w $0D80,X

#_1EAB4B: STZ.w $0BA0,X
#_1EAB4E: STZ.w $0F70,X
#_1EAB51: STZ.w $0F80,X

#_1EAB54: LDA.b #$3F
#_1EAB56: STA.w $0DF0,X

.exit
#_1EAB59: RTS

;===================================================================================================

pool StalfosKnight_Idle

.anim_step
#_1EAB5A: db $00, $01

pool off

;---------------------------------------------------------------------------------------------------

StalfosKnight_Idle:
; !HARDCODED edit to damage table
#_1EAB5C: LDA.b #$00
#_1EAB5E: STA.l $7F6918

#_1EAB62: JSR Sprite_CheckDamageToAndFromLink_Bank1E

#_1EAB65: LDA.w $0DF0,X
#_1EAB68: BNE .delay

#_1EAB6A: LDA.b #$03
#_1EAB6C: STA.w $0D80,X

#_1EAB6F: JSL GetRandomNumber
#_1EAB73: AND.b #$3F
#_1EAB75: STA.w $0DA0,X

#_1EAB78: LDA.b #$7F
#_1EAB7A: STA.w $0DF0,X

#_1EAB7D: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_1EAB7E: LSR A ; /32
#_1EAB7F: LSR A
#_1EAB80: LSR A
#_1EAB81: LSR A
#_1EAB82: LSR A

#_1EAB83: TAY

#_1EAB84: LDA.w .anim_step,Y
#_1EAB87: STA.w $0DC0,X

#_1EAB8A: LDA.w .anim_step,Y
#_1EAB8D: STA.w $0DB0,X

#_1EAB90: LDA.b #$02
#_1EAB92: STA.w $0EB0,X

#_1EAB95: RTS

;===================================================================================================

pool StalfosKnight_ScanForOpponents

.head_direction
#_1EAB96: db $00, $00, $00, $02, $01, $01, $01, $02
#_1EAB9E: db $00, $00, $00, $02, $01, $01, $01, $02

pool off

;---------------------------------------------------------------------------------------------------

StalfosKnight_ScanForOpponents:
#_1EABA6: JSR Sprite_CheckDamageToAndFromLink_Bank1E

#_1EABA9: LDA.w $0DF0,X
#_1EABAC: CMP.w $0DA0,X
#_1EABAF: BNE .delay

#_1EABB1: JSR Sprite_IsRightOfLink_Bank1E
#_1EABB4: TYA
#_1EABB5: STA.w $0EB0,X

#_1EABB8: INC.w $0D80,X

#_1EABBB: LDA.b #$20
#_1EABBD: STA.w $0DF0,X

#_1EABC0: RTS

.delay
#_1EABC1: LSR A
#_1EABC2: LSR A
#_1EABC3: LSR A
#_1EABC4: TAY

#_1EABC5: LDA.w .head_direction,Y
#_1EABC8: STA.w $0EB0,X

#_1EABCB: LDA.b #$00
#_1EABCD: STA.w $0DB0,X

#_1EABD0: LDA.b #$00
#_1EABD2: STA.w $0DC0,X

#_1EABD5: RTS

;===================================================================================================

StalfosKnight_Squat:
#_1EABD6: JSR Sprite_CheckDamageToAndFromLink_Bank1E

#_1EABD9: LDA.w $0DF0,X
#_1EABDC: BNE StalfosKnight_PrepJump

#_1EABDE: INC.w $0D80,X

#_1EABE1: LDA.b #$FF
#_1EABE3: STA.w $0DF0,X

#_1EABE6: LDA.b #$20
#_1EABE8: STA.w $0E00,X

;===================================================================================================

StalfosKnight_PrepJump:
#_1EABEB: LDA.b #$01
#_1EABED: STA.w $0DB0,X

#_1EABF0: LDA.b #$01
#_1EABF2: STA.w $0DC0,X

#_1EABF5: RTS

;===================================================================================================

StalfosKnight_HopAround:
#_1EABF6: JSR Sprite_CheckDamageToAndFromLink_Bank1E

#_1EABF9: LDA.w $0E00,X
#_1EABFC: BEQ .still_jumping

#_1EABFE: DEC A
#_1EABFF: BNE .dont_change_direction

#_1EAC01: LDA.b #$30
#_1EAC03: STA.w $0F80,X

#_1EAC06: LDA.b #$10
#_1EAC08: JSL Sprite_ApplySpeedTowardsLink_long

#_1EAC0C: JSR Sprite_IsRightOfLink_Bank1E
#_1EAC0F: TYA
#_1EAC10: STA.w $0EB0,X

#_1EAC13: LDA.b #$13 ; SFX3.13
#_1EAC15: JSL SpriteSFX_QueueSFX3WithPan

.dont_change_direction
#_1EAC19: BRA StalfosKnight_PrepJump

;---------------------------------------------------------------------------------------------------

.still_jumping
#_1EAC1B: JSR Sprite_Move_XYZ_Bank1E
#_1EAC1E: JSR Sprite_CheckTileCollision_Bank1E

#_1EAC21: LDA.w $0F80,X
#_1EAC24: CMP.b #$C0
#_1EAC26: BMI .at_max_ascending_speed

#_1EAC28: SEC
#_1EAC29: SBC.b #$02
#_1EAC2B: STA.w $0F80,X

.at_max_ascending_speed
#_1EAC2E: LDA.w $0F70,X
#_1EAC31: DEC A
#_1EAC32: BPL .airborne

#_1EAC34: STZ.w $0F70,X
#_1EAC37: STZ.w $0F80,X

#_1EAC3A: LDA.w $0DF0,X
#_1EAC3D: BNE .bounce_again

#_1EAC3F: JMP.w StalfosKnight_EnterIdleState

;---------------------------------------------------------------------------------------------------

.bounce_again
#_1EAC42: LDA.b #$10
#_1EAC44: STA.w $0E00,X

.airborne
#_1EAC47: LDY.b #$02

#_1EAC49: LDA.w $0F80,X
#_1EAC4C: CMP.b #$18
#_1EAC4E: BMI .at_max_descending_speed

#_1EAC50: LDY.b #$00

.at_max_descending_speed
#_1EAC52: TYA
#_1EAC53: STA.w $0DC0,X

#_1EAC56: RTS

;===================================================================================================

pool StalfosKnight_Crumble

.head_anim
#_1EAC57: db $00, $04, $08, $0C, $0E, $0E, $0E, $0E
#_1EAC5F: db $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E
#_1EAC67: db $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E
#_1EAC6F: db $0E, $0E, $0F, $0E, $0C, $08, $04, $00

pool off

;---------------------------------------------------------------------------------------------------

StalfosKnight_Crumble:
#_1EAC77: JSR Sprite_Move_XYZ_Bank1E
#_1EAC7A: JSR Sprite_CheckTileCollision_Bank1E

#_1EAC7D: LDA.w $0F80,X
#_1EAC80: CMP.b #$C0
#_1EAC82: BMI .at_max_speed

#_1EAC84: SEC
#_1EAC85: SBC.b #$02
#_1EAC87: STA.w $0F80,X

.at_max_speed
#_1EAC8A: LDA.w $0F70,X
#_1EAC8D: DEC A
#_1EAC8E: BPL .head_aloft

#_1EAC90: STZ.w $0F70,X
#_1EAC93: STZ.w $0F80,X

.head_aloft
#_1EAC96: LDA.w $0DF0,X
#_1EAC99: BNE .still_animating

; randomly celebrate
#_1EAC9B: JSL GetRandomNumber
#_1EAC9F: AND.b #$01
#_1EACA1: BNE .dont_celebrate_its_not_a_big_deal

#_1EACA3: LDA.b #$07
#_1EACA5: STA.w $0D80,X

#_1EACA8: LDA.b #$50
#_1EACAA: STA.w $0DF0,X

#_1EACAD: RTS

.dont_celebrate_its_not_a_big_deal
#_1EACAE: JMP.w StalfosKnight_EnterIdleState

;---------------------------------------------------------------------------------------------------

.still_animating
#_1EACB1: CMP.b #$E0
#_1EACB3: BCC .no_sfx

#_1EACB5: PHA
#_1EACB6: AND.b #$03
#_1EACB8: BNE .dont_do_sfx

#_1EACBA: LDA.b #$14 ; SFX3.14
#_1EACBC: JSL SpriteSFX_QueueSFX3WithPan

.dont_do_sfx
#_1EACC0: PLA

.no_sfx
#_1EACC1: LSR A
#_1EACC2: LSR A
#_1EACC3: LSR A
#_1EACC4: TAY

#_1EACC5: LDA.w .head_anim,Y
#_1EACC8: STA.w $0DB0,X

#_1EACCB: LDA.b #$03
#_1EACCD: STA.w $0DC0,X

#_1EACD0: LDA.b #$02
#_1EACD2: STA.w $0EB0,X

#_1EACD5: RTS

;===================================================================================================

pool StalfosKnight_CelebrateStandingUp

.anim_state
#_1EACD6: db $01, $04

pool off

;---------------------------------------------------------------------------------------------------

StalfosKnight_CelebrateStandingUp:
#_1EACD8: LDA.w $0DF0,X
#_1EACDB: BNE .still_celebrating

#_1EACDD: JMP.w StalfosKnight_EnterIdleState

.still_celebrating
#_1EACE0: LSR A
#_1EACE1: LSR A
#_1EACE2: AND.b #$01
#_1EACE4: TAY

#_1EACE5: LDA.w .anim_state,Y
#_1EACE8: STA.w $0DC0,X

#_1EACEB: RTS

;===================================================================================================

pool SpriteDraw_StalfosKnight

.oam_groups
; group00
#_1EACEC: dw  -4,  -8 : db $64, $00, $00, $00
#_1EACF4: dw  -4,   0 : db $61, $00, $00, $02
#_1EACFC: dw   4,   0 : db $62, $00, $00, $02
#_1EAD04: dw  -3,  16 : db $74, $00, $00, $00
#_1EAD0C: dw  11,  16 : db $74, $40, $00, $00

; group01
#_1EAD14: dw  -4,  -7 : db $64, $00, $00, $00
#_1EAD1C: dw  -4,   1 : db $61, $00, $00, $02
#_1EAD24: dw   4,   1 : db $62, $00, $00, $02
#_1EAD2C: dw  -3,  16 : db $65, $00, $00, $00
#_1EAD34: dw  11,  16 : db $65, $40, $00, $00

; group02
#_1EAD3C: dw  -4,  -8 : db $48, $00, $00, $02
#_1EAD44: dw   4,  -8 : db $49, $00, $00, $02
#_1EAD4C: dw  -4,   8 : db $4B, $00, $00, $02
#_1EAD54: dw   4,   8 : db $4C, $00, $00, $02
#_1EAD5C: dw   4,   8 : db $4C, $00, $00, $02

; group03
#_1EAD64: dw  -4,   8 : db $68, $00, $00, $02
#_1EAD6C: dw   4,   8 : db $69, $00, $00, $02
#_1EAD74: dw   4,   8 : db $69, $00, $00, $02
#_1EAD7C: dw   4,   8 : db $69, $00, $00, $02
#_1EAD84: dw   4,   8 : db $69, $00, $00, $02

; group04
#_1EAD8C: dw  12,  -7 : db $64, $40, $00, $00
#_1EAD94: dw  -4,   1 : db $62, $40, $00, $02
#_1EAD9C: dw   4,   1 : db $61, $40, $00, $02
#_1EADA4: dw  -3,  16 : db $65, $00, $00, $00
#_1EADAC: dw  11,  16 : db $65, $40, $00, $00

; group05
#_1EADB4: dw  12,  -8 : db $64, $40, $00, $00
#_1EADBC: dw  -4,   0 : db $62, $40, $00, $02
#_1EADC4: dw   4,   0 : db $61, $40, $00, $02
#_1EADCC: dw  -3,  16 : db $74, $00, $00, $00
#_1EADD4: dw  11,  16 : db $74, $40, $00, $00

; group06
#_1EADDC: dw  -4,  -8 : db $49, $40, $00, $02
#_1EADE4: dw   4,  -8 : db $48, $40, $00, $02
#_1EADEC: dw  -4,   8 : db $4C, $40, $00, $02
#_1EADF4: dw   4,   8 : db $4B, $40, $00, $02
#_1EADFC: dw   4,   8 : db $4B, $40, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_StalfosKnight:
#_1EAE04: JSR Sprite_PrepOAMCoord_Bank1E
#_1EAE07: JSR SpriteDraw_StalfosKnight_Head

#_1EAE0A: LDA.b #$00
#_1EAE0C: XBA
#_1EAE0D: LDA.w $0DC0,X

#_1EAE10: REP #$20

#_1EAE12: ASL A
#_1EAE13: ASL A
#_1EAE14: ASL A
#_1EAE15: STA.b $00

#_1EAE17: ASL A
#_1EAE18: ASL A
#_1EAE19: ADC.b $00

#_1EAE1B: ADC.w #.oam_groups
#_1EAE1E: STA.b $08

#_1EAE20: LDA.b $90
#_1EAE22: CLC
#_1EAE23: ADC.w #$0004
#_1EAE26: STA.b $90

#_1EAE28: INC.b $92

#_1EAE2A: SEP #$20

#_1EAE2C: LDA.b #$05
#_1EAE2E: JSR Sprite_DrawMultiple_Bank1E

#_1EAE31: REP #$20

#_1EAE33: LDA.b $90
#_1EAE35: SEC
#_1EAE36: SBC.w #$0004
#_1EAE39: STA.b $90

#_1EAE3B: DEC.b $92

#_1EAE3D: SEP #$20

#_1EAE3F: LDA.b #$12
#_1EAE41: JSL SpriteDraw_Shadow_custom_long

#_1EAE45: RTS

;===================================================================================================

pool SpriteDraw_StalfosKnight_Head

.head_char
#_1EAE46: db $66, $66, $46, $46

.head_flip
#_1EAE4A: db $40, $00, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_StalfosKnight_Head:
#_1EAE4E: LDA.w $0DC0,X
#_1EAE51: CMP.b #$02
#_1EAE53: BEQ .head_part_of_body_chars

#_1EAE55: LDA.w $0DB0,X
#_1EAE58: STA.b $06
#_1EAE5A: STZ.b $07

#_1EAE5C: LDY.b #$00

#_1EAE5E: PHX

#_1EAE5F: LDA.w $0EB0,X
#_1EAE62: TAX

#_1EAE63: REP #$20

#_1EAE65: LDA.b $00
#_1EAE67: STA.b ($90),Y

#_1EAE69: AND.w #$0100
#_1EAE6C: STA.b $0E

#_1EAE6E: LDA.b $02
#_1EAE70: CLC
#_1EAE71: ADC.b $06

#_1EAE73: SEC
#_1EAE74: SBC.w #$000C

#_1EAE77: INY
#_1EAE78: STA.b ($90),Y

#_1EAE7A: CLC
#_1EAE7B: ADC.w #$0010

#_1EAE7E: CMP.w #$0100
#_1EAE81: BCC .on_screen

#_1EAE83: LDA.w #$00F0
#_1EAE86: STA.b ($90),Y

.on_screen
#_1EAE88: SEP #$20

#_1EAE8A: LDA.w .head_char,X
#_1EAE8D: INY
#_1EAE8E: STA.b ($90),Y

#_1EAE90: LDA.w .head_flip,X
#_1EAE93: INY
#_1EAE94: ORA.b $05
#_1EAE96: STA.b ($90),Y

#_1EAE98: TYA
#_1EAE99: LSR A
#_1EAE9A: LSR A
#_1EAE9B: TAY

#_1EAE9C: LDA.b #$02
#_1EAE9E: ORA.b $0F
#_1EAEA0: STA.b ($92),Y

#_1EAEA2: PLX

.head_part_of_body_chars
#_1EAEA3: RTS

;===================================================================================================

Sprite_90_Wallmaster:
#_1EAEA4: LDA.w $0B89,X
#_1EAEA7: ORA.b #$30
#_1EAEA9: STA.w $0B89,X

#_1EAEAC: JSR SpriteDraw_WallMaster

#_1EAEAF: LDA.w $0DD0,X
#_1EAEB2: CMP.b #$09
#_1EAEB4: BEQ .continue

#_1EAEB6: STZ.w $02E4
#_1EAEB9: STZ.w $037B

.continue
#_1EAEBC: JSR Sprite_CheckIfActive_Bank1E

#_1EAEBF: LDA.w $0D90,X
#_1EAEC2: BEQ .not_holding_link

#_1EAEC4: LDA.w $0D10,X
#_1EAEC7: STA.b $22

#_1EAEC9: LDA.w $0D30,X
#_1EAECC: STA.b $23

#_1EAECE: LDA.w $0D00,X
#_1EAED1: SEC
#_1EAED2: SBC.w $0F70,X
#_1EAED5: PHP

#_1EAED6: CLC
#_1EAED7: ADC.b #$03
#_1EAED9: STA.b $20

#_1EAEDB: LDA.w $0D20,X
#_1EAEDE: ADC.b #$00

#_1EAEE0: PLP
#_1EAEE1: SBC.b #$00
#_1EAEE3: STA.b $21

#_1EAEE5: LDA.b #$01
#_1EAEE7: STA.w $02E4
#_1EAEEA: STA.w $037B

#_1EAEED: REP #$20

#_1EAEEF: LDA.b $20
#_1EAEF1: SEC

#_1EAEF2: SBC.b $E8
#_1EAEF4: SEC

#_1EAEF5: SBC.w #$0010
#_1EAEF8: CMP.w #$0100

#_1EAEFB: SEP #$20
#_1EAEFD: BCC .still_rising

#_1EAEFF: STZ.w $02E4
#_1EAF02: STZ.w $037B

#_1EAF05: PHX

#_1EAF06: JSL WallMaster_SendPlayerToLastEntrance
#_1EAF0A: JSL Link_Initialize

#_1EAF0E: PLX

#_1EAF0F: RTS

;---------------------------------------------------------------------------------------------------

.not_holding_link
#_1EAF10: JSL Sprite_CheckDamageFromLink_long

.still_rising
#_1EAF14: LDA.w $0D80,X
#_1EAF17: JSL JumpTableLocal
#_1EAF1B: dw Wallmaster_Descend
#_1EAF1D: dw Wallmaster_Grab
#_1EAF1F: dw Wallmaster_Ascend

;===================================================================================================

Wallmaster_Descend:
#_1EAF21: LDA.w $0F70,X
#_1EAF24: PHA

#_1EAF25: JSR Sprite_Move_Z_Bank1E

#_1EAF28: LDA.w $0F80,X
#_1EAF2B: CMP.b #$C0
#_1EAF2D: BMI .at_max_z_speed

#_1EAF2F: SEC
#_1EAF30: SBC.b #$03
#_1EAF32: STA.w $0F80,X

.at_max_z_speed
#_1EAF35: PLA
#_1EAF36: EOR.w $0F70,X
#_1EAF39: BPL .exit

#_1EAF3B: LDA.w $0F70,X
#_1EAF3E: BPL .exit

#_1EAF40: INC.w $0D80,X

#_1EAF43: STZ.w $0F70,X
#_1EAF46: STZ.w $0F80,X

#_1EAF49: LDA.b #$3F
#_1EAF4B: STA.w $0DF0,X

.exit
#_1EAF4E: RTS

;===================================================================================================

Wallmaster_Grab:
#_1EAF4F: LDA.w $0DF0,X
#_1EAF52: BNE .still_grabby

#_1EAF54: INC.w $0D80,X

.still_grabby
#_1EAF57: LDY.b #$00

#_1EAF59: AND.b #$20
#_1EAF5B: BNE .anim_step_0

#_1EAF5D: INY

.anim_step_0
#_1EAF5E: TYA
#_1EAF5F: STA.w $0DC0,X

#_1EAF62: JSR Sprite_CheckDamageToLink_Bank1E
#_1EAF65: BCC .exit

#_1EAF67: LDA.b #$01
#_1EAF69: STA.w $0D90,X

#_1EAF6C: LDA.b #$40
#_1EAF6E: STA.w $0E60,X

#_1EAF71: STZ.b $31
#_1EAF73: STZ.b $30

#_1EAF75: LDA.b #$2A ; SFX3.2A
#_1EAF77: JSL SpriteSFX_QueueSFX3WithPan

.exit
#_1EAF7B: RTS

;===================================================================================================

Wallmaster_Ascend:
#_1EAF7C: LDA.w $0F70,X
#_1EAF7F: PHA

#_1EAF80: JSR Sprite_Move_Z_Bank1E

#_1EAF83: LDA.w $0F80,X
#_1EAF86: CMP.b #$40
#_1EAF88: BPL .at_max_z_speed

#_1EAF8A: INC A
#_1EAF8B: INC A
#_1EAF8C: STA.w $0F80,X

.at_max_z_speed
#_1EAF8F: PLA
#_1EAF90: EOR.w $0F70,X
#_1EAF93: BPL .exit

#_1EAF95: LDA.w $0F70,X
#_1EAF98: BMI .exit

#_1EAF9A: STZ.w $0DD0,X

.exit
#_1EAF9D: RTS

;===================================================================================================

pool SpriteDraw_WallMaster

.oam_groups
; group00
#_1EAF9E: dw  -4,   0 : db $A6, $01, $00, $02
#_1EAFA6: dw  12,   0 : db $AA, $01, $00, $00
#_1EAFAE: dw  -4,  16 : db $BA, $01, $00, $00
#_1EAFB6: dw   4,   8 : db $A8, $01, $00, $02

; group01
#_1EAFBE: dw  -4,   0 : db $AB, $01, $00, $02
#_1EAFC6: dw  12,   0 : db $AF, $01, $00, $00
#_1EAFCE: dw  -4,  16 : db $BF, $01, $00, $00
#_1EAFD6: dw   4,   8 : db $AD, $01, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_WallMaster:
#_1EAFDE: LDA.b #$00
#_1EAFE0: XBA
#_1EAFE1: LDA.w $0DC0,X

#_1EAFE4: REP #$20

#_1EAFE6: ASL A ; x32
#_1EAFE7: ASL A
#_1EAFE8: ASL A
#_1EAFE9: ASL A
#_1EAFEA: ASL A
#_1EAFEB: ADC.w #.oam_groups
#_1EAFEE: STA.b $08

#_1EAFF0: SEP #$20

#_1EAFF2: LDA.b #$04
#_1EAFF4: JSR Sprite_DrawMultiple_Bank1E

#_1EAFF7: JSL SpriteDraw_BigShadow_with_altitude

#_1EAFFB: RTS

;===================================================================================================

Sprite_8F_Blob:
#_1EAFFC: LDA.w $0DD0,X
#_1EAFFF: CMP.b #$09
#_1EB001: BNE .skip_tile_collision

#_1EB003: LDA.w $0E90,X
#_1EB006: BEQ .skip_tile_collision

#_1EB008: STZ.w $0E90,X

#_1EB00B: LDA.b #$01
#_1EB00D: STA.w $0D50,X

#_1EB010: JSR Sprite_CheckTileCollision_Bank1E

#_1EB013: STZ.w $0D50,X

#_1EB016: BEQ .dont_die

#_1EB018: STZ.w $0DD0,X

#_1EB01B: RTS

;---------------------------------------------------------------------------------------------------

.dont_die
#_1EB01C: LDA.b #$20 ; SFX2.20
#_1EB01E: JSL SpriteSFX_QueueSFX2WithPan

.skip_tile_collision
#_1EB022: LDA.w $0DB0,X
#_1EB025: BEQ .normal_priority

#_1EB027: LDA.b #$30
#_1EB029: STA.w $0B89,X

.normal_priority
#_1EB02C: JSR SpriteDraw_Blob
#_1EB02F: JSR Sprite_CheckIfActive_Bank1E

#_1EB032: LDA.w $0D80,X
#_1EB035: CMP.b #$02
#_1EB037: BCC .hidden

#_1EB039: JSL Sprite_CheckDamageFromLink_long

.hidden
#_1EB03D: JSR Sprite_CheckIfRecoiling_Bank1E

#_1EB040: LDA.w $0D80,X
#_1EB043: JSL JumpTableLocal
#_1EB047: dw Blob_Hidden
#_1EB049: dw Blob_Peeking
#_1EB04B: dw Blob_Falling
#_1EB04D: dw Blob_Active

;===================================================================================================

Blob_Hidden:
#_1EB04F: LDA.w $0F60,X
#_1EB052: PHA

#_1EB053: ORA.b #$09
#_1EB055: STA.w $0F60,X

#_1EB058: LDA.w $0E40,X
#_1EB05B: ORA.b #$80
#_1EB05D: STA.w $0E40,X

#_1EB060: JSR Sprite_CheckDamageToLink_Bank1E

#_1EB063: PLA
#_1EB064: STA.w $0F60,X

#_1EB067: BCC .exit

#_1EB069: INC.w $0D80,X

#_1EB06C: LDA.b #$7F
#_1EB06E: STA.w $0DF0,X

#_1EB071: ASL.w $0E40,X
#_1EB074: LSR.w $0E40,X

; TODO examine this
#_1EB077: LDA.b $22
#_1EB079: STA.w $0D10,X

#_1EB07C: LDA.b $23
#_1EB07E: STA.w $0D30,X

#_1EB081: LDA.b $20
#_1EB083: CLC
#_1EB084: ADC.b #$08
#_1EB086: STA.w $0D00,X

#_1EB089: LDA.b $21
#_1EB08B: ADC.b #$00
#_1EB08D: STA.w $0D20,X

#_1EB090: LDA.b #$30
#_1EB092: STA.w $0F10,X

#_1EB095: STZ.w $0BA0,X

.exit
#_1EB098: RTS

;===================================================================================================

pool Blob_Peeking

.anim_step
#_1EB099: db $00, $01, $07, $07, $06, $06, $05, $05
#_1EB0A1: db $06, $06, $05, $05, $04, $04, $04, $04

pool off

;---------------------------------------------------------------------------------------------------

Blob_Peeking:
#_1EB0A9: LDA.w $0DF0,X
#_1EB0AC: BNE .delay

#_1EB0AE: INC.w $0D80,X

#_1EB0B1: LDA.b #$20
#_1EB0B3: STA.w $0F80,X

#_1EB0B6: LDA.b #$10
#_1EB0B8: JSL Sprite_ApplySpeedTowardsLink_long

#_1EB0BC: LDA.b #$30 ; SFX3.30
#_1EB0BE: JSL SpriteSFX_QueueSFX3WithPan

#_1EB0C2: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_1EB0C3: LSR A
#_1EB0C4: LSR A
#_1EB0C5: LSR A
#_1EB0C6: TAY

#_1EB0C7: LDA.w .anim_step,Y
#_1EB0CA: STA.w $0DC0,X

#_1EB0CD: RTS

;===================================================================================================

pool Blob_Falling

.anim_step
#_1EB0CE: db $00, $01

pool off

;---------------------------------------------------------------------------------------------------

Blob_Falling:
#_1EB0D0: LDA.w $0DF0,X
#_1EB0D3: BEQ .begin_descent

#_1EB0D5: DEC A
#_1EB0D6: BNE .shake_from_fall

#_1EB0D8: LDA.b #$20
#_1EB0DA: STA.w $0DF0,X

#_1EB0DD: INC.w $0D80,X

#_1EB0E0: STZ.w $0DC0,X

#_1EB0E3: RTS

.shake_from_fall
#_1EB0E4: LSR A ; /16
#_1EB0E5: LSR A
#_1EB0E6: LSR A
#_1EB0E7: LSR A
#_1EB0E8: TAY

#_1EB0E9: LDA.w .anim_step,Y
#_1EB0EC: STA.w $0DC0,X

#_1EB0EF: LDA.b $1A
#_1EB0F1: LSR A
#_1EB0F2: AND.b #$01
#_1EB0F4: TAY

#_1EB0F5: LDA.w .shake_x,Y
#_1EB0F8: STA.w $0D50,X

#_1EB0FB: JSR Sprite_Move_X_Bank1E

#_1EB0FE: RTS

.begin_descent
#_1EB0FF: JSL Sprite_CheckDamageFromLink_long
#_1EB103: JSR Sprite_Move_XY_Bank1E
#_1EB106: JSR Sprite_CheckTileCollision_Bank1E

#_1EB109: LDA.w $0F70,X
#_1EB10C: PHA

#_1EB10D: JSR Sprite_Move_Z_Bank1E

#_1EB110: LDA.w $0F80,X
#_1EB113: CMP.b #$C0
#_1EB115: BMI .at_max_z_speed

#_1EB117: SEC
#_1EB118: SBC.b #$02
#_1EB11A: STA.w $0F80,X

;---------------------------------------------------------------------------------------------------

.at_max_z_speed
#_1EB11D: PLA
#_1EB11E: EOR.w $0F70,X
#_1EB121: BPL .exit

#_1EB123: LDA.w $0F70,X
#_1EB126: BPL .exit

#_1EB128: STZ.w $0F80,X
#_1EB12B: STZ.w $0F70,X
#_1EB12E: STZ.w $0DB0,X

#_1EB131: LDA.b #$1F
#_1EB133: STA.w $0DF0,X

#_1EB136: LDA.b #$08
#_1EB138: STA.w $0EB0,X

.exit
#_1EB13B: RTS

;---------------------------------------------------------------------------------------------------

.shake_x
#_1EB13C: db -8,  8

;===================================================================================================

Blob_Active:
#_1EB13E: JSR Sprite_CheckDamageToLink_Bank1E

#_1EB141: LDA.w $0E00,X
#_1EB144: BNE .dont_turn

#_1EB146: LDA.b #$30
#_1EB148: JSL Sprite_ApplySpeedTowardsLink_long

#_1EB14C: JSL GetRandomNumber
#_1EB150: AND.b #$3F
#_1EB152: ORA.b #$60
#_1EB154: STA.w $0E00,X

#_1EB157: ASL.w $0F50,X
#_1EB15A: ASL.w $0F50,X

#_1EB15D: LDA.w $0D50,X
#_1EB160: ASL A
#_1EB161: ROR.w $0F50,X
#_1EB164: LSR.w $0F50,X

.dont_turn
; TODO examine this
#_1EB167: LDA.w $0E10,X
#_1EB16A: BNE .not_aggressive

#_1EB16C: INC.w $0E80,X

#_1EB16F: LDA.w $0E80,X
#_1EB172: AND.b #$0E
#_1EB174: ORA.w $0E70,X
#_1EB177: BNE .still_aggressive

#_1EB179: JSR Sprite_Move_XY_Bank1E

#_1EB17C: INC.w $0ED0,X

#_1EB17F: LDA.w $0ED0,X
#_1EB182: CMP.w $0EB0,X
#_1EB185: BNE .still_aggressive

#_1EB187: STZ.w $0ED0,X

#_1EB18A: JSL GetRandomNumber
#_1EB18E: AND.b #$1F
#_1EB190: ADC.b #$40
#_1EB192: STA.w $0E10,X

#_1EB195: JSL GetRandomNumber
#_1EB199: AND.b #$1F
#_1EB19B: ORA.b #$10
#_1EB19D: STA.w $0EB0,X

.still_aggressive
#_1EB1A0: JSR Sprite_CheckTileCollision_Bank1E

#_1EB1A3: LDA.w $0E80,X
#_1EB1A6: AND.b #$08
#_1EB1A8: LSR A
#_1EB1A9: LSR A
#_1EB1AA: LSR A
#_1EB1AB: STA.w $0DC0,X

#_1EB1AE: RTS

.not_aggressive
#_1EB1AF: LDY.b #$00

#_1EB1B1: AND.b #$10
#_1EB1B3: BEQ .anim_step_0

#_1EB1B5: INY

.anim_step_0
#_1EB1B6: TYA
#_1EB1B7: STA.w $0DC0,X

#_1EB1BA: RTS

;===================================================================================================

pool SpriteDraw_Blob

.flip
#_1EB1BB: db $00, $00, $40, $40

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Blob:
#_1EB1BF: LDA.w $0F50,X
#_1EB1C2: LSR A
#_1EB1C3: BCS .not_quake_blob

#_1EB1C5: LDA.w $0FC6
#_1EB1C8: CMP.b #$03
#_1EB1CA: BCS .bad_gfx

.not_quake_blob
#_1EB1CC: LDA.w $0F10,X
#_1EB1CF: BEQ .draw_in_front_of_link

#_1EB1D1: LDA.b #$08
#_1EB1D3: JSL OAM_AllocateFromRegionB

.draw_in_front_of_link
#_1EB1D7: LDA.w $0D80,X
#_1EB1DA: BEQ .invisible

#_1EB1DC: LDA.w $0DC0,X
#_1EB1DF: CMP.b #$04
#_1EB1E1: BCS .head_popping_out

;---------------------------------------------------------------------------------------------------

#_1EB1E3: PHA

#_1EB1E4: TAY

#_1EB1E5: LDA.w $0F50,X
#_1EB1E8: PHA

#_1EB1E9: EOR.w .flip,Y
#_1EB1EC: STA.w $0F50,X

#_1EB1EF: AND.b #$01
#_1EB1F1: EOR.b #$01

#_1EB1F3: ASL A
#_1EB1F4: ASL A

#_1EB1F5: CLC
#_1EB1F6: ADC.w $0DC0,X
#_1EB1F9: STA.w $0DC0,X

#_1EB1FC: JSL SpriteDraw_SingleLarge_long

#_1EB200: PLA
#_1EB201: STA.w $0F50,X

#_1EB204: PLA
#_1EB205: STA.w $0DC0,X

#_1EB208: RTS

;---------------------------------------------------------------------------------------------------

.invisible
#_1EB209: JSL Sprite_PrepOAMCoord_long

.bad_gfx
#_1EB20D: RTS

;---------------------------------------------------------------------------------------------------

.oam_groups
; group00
#_1EB20E: dw   0,   8 : db $6C, $03, $00, $00
#_1EB216: dw   8,   8 : db $6D, $03, $00, $00

; group01
#_1EB21E: dw   0,   8 : db $60, $00, $00, $00
#_1EB226: dw   8,   8 : db $70, $00, $00, $00

; group02
#_1EB22E: dw   0,   8 : db $70, $40, $00, $00
#_1EB236: dw   8,   8 : db $60, $40, $00, $00

; group03
#_1EB23E: dw   0,   0 : db $40, $00, $00, $02
#_1EB246: dw   0,   0 : db $40, $00, $00, $02

;---------------------------------------------------------------------------------------------------

; Technically, these are drawing broken graphics when hidden.
; It's just not visible because it's always off screen on the x-axis.
.head_popping_out
#_1EB24E: LDA.b #$00
#_1EB250: XBA

#_1EB251: LDA.w $0DC0,X
#_1EB254: SEC
#_1EB255: SBC.b #$04

#_1EB257: REP #$20

#_1EB259: ASL A ; x16
#_1EB25A: ASL A
#_1EB25B: ASL A
#_1EB25C: ASL A

#_1EB25D: ADC.w #.oam_groups
#_1EB260: STA.b $08

#_1EB262: SEP #$20

#_1EB264: LDA.b #$02
#_1EB266: JMP.w Sprite_DrawMultiple_Bank1E

;===================================================================================================

Sprite_8E_Terrorpin:
#_1EB269: JSL SpriteDraw_SingleLarge_long
#_1EB26D: JSR Sprite_CheckTileCollision_Bank1E
#_1EB270: JSR Sprite_CheckIfActive_Bank1E
#_1EB273: JSR Sprite_CheckIfRecoiling_Bank1E

#_1EB276: LDA.w $0E10,X
#_1EB279: BNE .invulnerable

#_1EB27B: JSL Sprite_CheckDamageFromLink_long

.invulnerable
#_1EB27F: JSR Terrorpin_CheckForHammer
#_1EB282: JSR Sprite_Move_XYZ_Bank1E

#_1EB285: LDA.w $0DA0,X
#_1EB288: JSL JumpTableLocal
#_1EB28C: dw Terrorpin_RightsideUp
#_1EB28E: dw Terrorpin_UpsideDown

#_1EB290: RTS ; useless

;===================================================================================================

pool Terrorpin_RightsideUp

.speed_x
#_1EB291: db   8,  -8,   0,   0
#_1EB295: db  12, -12,   0,   0

.speed_y
#_1EB299: db   0,   0,   8,  -8
#_1EB29D: db   0,   0,  12, -12

pool off

;---------------------------------------------------------------------------------------------------

Terrorpin_RightsideUp:
#_1EB2A1: LDA.w $0F10,X
#_1EB2A4: BNE .dont_turn

#_1EB2A6: JSL GetRandomNumber
#_1EB2AA: AND.b #$1F
#_1EB2AC: ADC.b #$20
#_1EB2AE: STA.w $0F10,X

#_1EB2B1: AND.b #$03
#_1EB2B3: STA.w $0DE0,X

; This will always fail, because of the previous AND
#_1EB2B6: AND.b #$30
#_1EB2B8: BNE .dont_turn

#_1EB2BA: JSR Sprite_DirectionToFaceLink_Bank1E
#_1EB2BD: TYA
#_1EB2BE: STA.w $0DE0,X

.dont_turn
#_1EB2C1: LDA.w $0DE0,X
#_1EB2C4: CLC
#_1EB2C5: ADC.w $0ED0,X
#_1EB2C8: TAY

#_1EB2C9: LDA.w .speed_x,Y
#_1EB2CC: STA.w $0D50,X

#_1EB2CF: LDA.w .speed_y,Y
#_1EB2D2: STA.w $0D40,X

#_1EB2D5: LDA.w $0F80,X
#_1EB2D8: DEC A
#_1EB2D9: DEC A
#_1EB2DA: STA.w $0F80,X

#_1EB2DD: LDA.w $0F70,X
#_1EB2E0: BPL .airborne

#_1EB2E2: STZ.w $0F70,X
#_1EB2E5: STZ.w $0F80,X

.airborne
#_1EB2E8: LDA.b $1A
#_1EB2EA: LDY.w $0ED0,X
#_1EB2ED: BNE .move_faster

#_1EB2EF: LSR A

.move_faster
#_1EB2F0: LSR A
#_1EB2F1: LSR A
#_1EB2F2: AND.b #$01
#_1EB2F4: STA.w $0DC0,X

#_1EB2F7: LDA.w $0E60,X
#_1EB2FA: ORA.b #$40
#_1EB2FC: STA.w $0E60,X

#_1EB2FF: LDA.b #$04
#_1EB301: STA.w $0CAA,X

#_1EB304: JSR Sprite_CheckDamageToLink_Bank1E

#_1EB307: RTS

;===================================================================================================

Terrorpin_UpsideDown:
#_1EB308: LDA.w $0E60,X
#_1EB30B: AND.b #$BF
#_1EB30D: STA.w $0E60,X

#_1EB310: STZ.w $0CAA,X

#_1EB313: LDA.w $0F10,X
#_1EB316: BNE .delay

#_1EB318: STZ.w $0DA0,X

#_1EB31B: LDA.b #$20
#_1EB31D: STA.w $0F80,X

#_1EB320: LDA.b #$40
#_1EB322: STA.w $0F10,X

#_1EB325: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_1EB326: LDA.w $0F80,X
#_1EB329: DEC A
#_1EB32A: DEC A
#_1EB32B: STA.w $0F80,X

#_1EB32E: LDA.w $0F70,X
#_1EB331: BPL .dont_reset_y_speed

#_1EB333: STZ.w $0F70,X

#_1EB336: LDA.w $0F80,X
#_1EB339: EOR.b #$FF
#_1EB33B: INC A
#_1EB33C: LSR A

#_1EB33D: CMP.b #$09
#_1EB33F: BCS .airborne

#_1EB341: LDA.b #$00

;---------------------------------------------------------------------------------------------------

.airborne
#_1EB343: STA.w $0F80,X

#_1EB346: LDA.w $0D50,X
#_1EB349: ASL A
#_1EB34A: ROR.w $0D50,X

#_1EB34D: LDA.w $0D50,X
#_1EB350: CMP.b #$FF
#_1EB352: BNE .dont_reset_x_speed

#_1EB354: STZ.w $0D50,X

;---------------------------------------------------------------------------------------------------

.dont_reset_x_speed
#_1EB357: LDA.w $0D40,X
#_1EB35A: ASL A
#_1EB35B: ROR.w $0D40,X

#_1EB35E: LDA.w $0D40,X
#_1EB361: CMP.b #$FF
#_1EB363: BNE .dont_reset_y_speed

#_1EB365: STZ.w $0D40,X

;---------------------------------------------------------------------------------------------------

.dont_reset_y_speed
#_1EB368: LDA.w $0F10,X
#_1EB36B: CMP.b #$40
#_1EB36D: BCS .not_struggling

#_1EB36F: LSR A
#_1EB370: AND.b #$01
#_1EB372: TAY

#_1EB373: LDA.w .shake,Y
#_1EB376: STA.w $0D50,X

#_1EB379: INC.w $0E80,X

;---------------------------------------------------------------------------------------------------

.not_struggling
#_1EB37C: INC.w $0E80,X

#_1EB37F: LDA.w $0E80,X
#_1EB382: LSR A
#_1EB383: LSR A
#_1EB384: LSR A

#_1EB385: AND.b #$01
#_1EB387: TAY

#_1EB388: LDA.b #$02
#_1EB38A: STA.w $0DC0,X

#_1EB38D: LDA.w $0F50,X
#_1EB390: AND.b #$BF
#_1EB392: ORA.w .flip,Y
#_1EB395: STA.w $0F50,X

#_1EB398: RTS

;---------------------------------------------------------------------------------------------------

.flip
#_1EB399: db $00, $40

.shake
#_1EB39B: db   8,  -8

;===================================================================================================

Terrorpin_CheckForHammer:
#_1EB39D: LDA.w $0F70,X ; check height and timer
#_1EB3A0: ORA.w $0E10,X
#_1EB3A3: BNE .nohit

#_1EB3A5: LDA.b $EE ; compare layers
#_1EB3A7: CMP.w $0F20,X
#_1EB3AA: BNE .nohit

#_1EB3AC: LDA.w $0044 ; check action hitbox offset thing
#_1EB3AF: CMP.b #$80
#_1EB3B1: BEQ .nohit

#_1EB3B3: LDA.w $0301 ; check if hammering
#_1EB3B6: AND.b #$0A
#_1EB3B8: BEQ .nohit

#_1EB3BA: JSL SetupActionHitbox_long
#_1EB3BE: JSR Terrorpin_SetUpHammerHitbox
#_1EB3C1: JSL CheckIfHitBoxesOverlap_long
#_1EB3C5: BCC .nohit

#_1EB3C7: LDA.w $0D50,X ; invert x speed
#_1EB3CA: EOR.b #$FF
#_1EB3CC: INC A
#_1EB3CD: STA.w $0D50,X

#_1EB3D0: LDA.w $0D40,X ; invert y speed
#_1EB3D3: EOR.b #$FF
#_1EB3D5: INC A
#_1EB3D6: STA.w $0D40,X

#_1EB3D9: LDA.b #$20 ; set timer to 32 frames
#_1EB3DB: STA.w $0E10,X

#_1EB3DE: LDA.b #$20 ; set z velocity
#_1EB3E0: STA.w $0F80,X

#_1EB3E3: LDA.b #$04
#_1EB3E5: STA.w $0ED0,X
#_1EB3E8: LDA.w $0DA0,X

#_1EB3EB: EOR.b #$01
#_1EB3ED: STA.w $0DA0,X

#_1EB3F0: CMP.b #$01
#_1EB3F2: LDA.b #$FF
#_1EB3F4: BCS .nonzerodao

#_1EB3F6: LDA.b #$40

.nonzerodao
#_1EB3F8: STA.w $0F10,X

.nohit
#_1EB3FB: STZ.w $0EB0,X

#_1EB3FE: RTS

;===================================================================================================

Terrorpin_SetUpHammerHitbox:
#_1EB3FF: LDA.w $0D10,X
#_1EB402: SEC
#_1EB403: SBC.b #$10
#_1EB405: STA.b $04

#_1EB407: LDA.w $0D30,X
#_1EB40A: SBC.b #$00
#_1EB40C: STA.b $0A

#_1EB40E: LDA.w $0D00,X
#_1EB411: SEC
#_1EB412: SBC.b #$10
#_1EB414: STA.b $05

#_1EB416: LDA.w $0D20,X
#_1EB419: SBC.b #$00
#_1EB41B: STA.b $0B

#_1EB41D: LDA.b #$30
#_1EB41F: STA.b $06
#_1EB421: STA.b $07

#_1EB423: RTS

;===================================================================================================

pool Sprite_8C_Arrghus

.anim_step
#_1EB424: db $01, $01, $01, $02, $02, $01, $01, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

Sprite_8C_Arrghus:
#_1EB42D: LDA.w $0B89,X
#_1EB430: ORA.b #$30
#_1EB432: STA.w $0B89,X

#_1EB435: JSR SpriteDraw_Arrghus

#_1EB438: LDA.w $0DD0,X
#_1EB43B: CMP.b #$09
#_1EB43D: BNE .dying

; This is why Josh's 17 frame save works.
; Weird to skip the check this way...
#_1EB43F: LDA.w $0F70,X
#_1EB442: CMP.b #$60
#_1EB444: BCS .airborne

.dying
#_1EB446: JSR Sprite_CheckIfActive_Bank1E

;---------------------------------------------------------------------------------------------------

.airborne
#_1EB449: JSR Arrghus_HandlePuffs

#_1EB44C: LDA.b #$01
#_1EB44E: STA.w $0B0C

#_1EB451: LDA.w $0EF0,X
#_1EB454: AND.b #$7F
#_1EB456: CMP.b #$02
#_1EB458: BNE .dont_jump

#_1EB45A: JSR Arrghus_BOING

#_1EB45D: LDA.b #$40
#_1EB45F: STA.w $0E60,X

.dont_jump
#_1EB462: JSR Sprite_CheckIfRecoiling_Bank1E
#_1EB465: JSR Sprite_CheckDamageToLink_Bank1E

#_1EB468: LDA.w $0E80,X
#_1EB46B: INC.w $0E80,X
#_1EB46E: AND.b #$03
#_1EB470: BNE .dont_tick_step

#_1EB472: INC.w $0ED0,X

#_1EB475: LDA.w $0ED0,X
#_1EB478: CMP.b #$09
#_1EB47A: BNE .dont_reset_step

#_1EB47C: STZ.w $0ED0,X

.dont_reset_step
#_1EB47F: LDY.w $0ED0,X

#_1EB482: LDA.w .anim_step,Y
#_1EB485: STA.w $0DC0,X

;---------------------------------------------------------------------------------------------------

.dont_tick_step
#_1EB488: JSR Sprite_CheckTileCollision_Bank1E
#_1EB48B: BEQ .handle_ai

#_1EB48D: LDY.w $0D80,X
#_1EB490: CPY.b #$05
#_1EB492: BNE .stop_moving

#_1EB494: AND.b #$03
#_1EB496: BEQ .invert_y_speed

.invert_x_speed
#_1EB498: LDA.w $0D50,X
#_1EB49B: EOR.b #$FF
#_1EB49D: INC A
#_1EB49E: STA.w $0D50,X

#_1EB4A1: BRA .handle_ai

.invert_y_speed
#_1EB4A3: LDA.w $0D40,X
#_1EB4A6: EOR.b #$FF
#_1EB4A8: INC A
#_1EB4A9: STA.w $0D40,X

#_1EB4AC: BRA .handle_ai

;---------------------------------------------------------------------------------------------------

.stop_moving
#_1EB4AE: JSR Sprite_ZeroVelocity_XY_Bank1E

.handle_ai
#_1EB4B1: LDA.w $0D80,X
#_1EB4B4: JSL JumpTableLocal
#_1EB4B8: dw Arrghus_Move
#_1EB4BA: dw Arrghus_MakeDecision
#_1EB4BC: dw Arrghus_PuffAttack
#_1EB4BE: dw Arrghus_JumpUp
#_1EB4C0: dw Arrghus_SmashDown
#_1EB4C2: dw Arrghus_PingPong

;===================================================================================================

Arrghus_JumpUp:
#_1EB4C4: LDA.b #$78
#_1EB4C6: STA.w $0F80,X

#_1EB4C9: JSR Sprite_Move_Z_Bank1E

#_1EB4CC: LDA.w $0F70,X
#_1EB4CF: CMP.b #$E0
#_1EB4D1: BCC .at_max_z_speed

#_1EB4D3: LDA.b #$40
#_1EB4D5: STA.w $0DF0,X

#_1EB4D8: INC.w $0D80,X

#_1EB4DB: STZ.w $0F80,X

#_1EB4DE: LDA.b $22
#_1EB4E0: STA.w $0D10,X

#_1EB4E3: LDA.b $20
#_1EB4E5: STA.w $0D00,X

.at_max_z_speed
#_1EB4E8: RTS

;===================================================================================================

Arrghus_SmashDown:
#_1EB4E9: LDA.w $0DF0,X
#_1EB4EC: BNE .descending

#_1EB4EE: LDA.b #$90
#_1EB4F0: STA.w $0F80,X

#_1EB4F3: LDA.w $0F70,X
#_1EB4F6: PHA

#_1EB4F7: JSR Sprite_Move_Z_Bank1E

#_1EB4FA: PLA
#_1EB4FB: EOR.w $0F70,X
#_1EB4FE: BPL .descending

#_1EB500: LDA.w $0F70,X
#_1EB503: BPL .descending

#_1EB505: STZ.w $0F70,X

#_1EB508: JSL Arrghus_SpawnSplash

#_1EB50C: INC.w $0D80,X

#_1EB50F: LDA.b #$20
#_1EB511: STA.w $0DF0,X

#_1EB514: LDA.b #$03 ; SFX3.03
#_1EB516: JSL SpriteSFX_QueueSFX3WithPan

#_1EB51A: LDA.b #$20
#_1EB51C: STA.w $0D50,X
#_1EB51F: STA.w $0D40,X

.descending
#_1EB522: DEC A
#_1EB523: BNE .exit

#_1EB525: LDA.b #$20 ; SFX2.20
#_1EB527: JSL SpriteSFX_QueueSFX2WithPan

.exit
#_1EB52B: RTS

;===================================================================================================

Arrghus_PingPong:
#_1EB52C: LDA.w $0DF0,X
#_1EB52F: BNE .exit

#_1EB531: STZ.w $0E60,X

#_1EB534: JSR Sprite_Move_XY_Bank1E
#_1EB537: JSL Sprite_CheckDamageFromLink_long

#_1EB53B: LDA.b $1A
#_1EB53D: AND.b #$07
#_1EB53F: BNE .exit

#_1EB541: LDA.b #$28 ; SFX2.28
#_1EB543: JSL SpriteSFX_QueueSFX2WithPan

#_1EB547: PHX

#_1EB548: TXY
#_1EB549: LDX.b #$1D

; Y speed determines slot? Interesting
#_1EB54B: LDA.w $0D40,Y
#_1EB54E: BMI .next_slot

#_1EB550: LDX.b #$0E

.next_slot
#_1EB552: LDA.l $7FF800,X
#_1EB556: BNE .slot_occupied

#_1EB558: LDA.b #$15 ; GARNISH 15
#_1EB55A: STA.l $7FF800,X
#_1EB55E: STA.w $0FB4

#_1EB561: LDA.w $0D10,Y
#_1EB564: STA.l $7FF83C,X

#_1EB568: LDA.w $0D30,Y
#_1EB56B: STA.l $7FF878,X

#_1EB56F: LDA.w $0D00,Y
#_1EB572: CLC
#_1EB573: ADC.b #$18
#_1EB575: STA.l $7FF81E,X

#_1EB579: LDA.w $0D20,Y
#_1EB57C: STA.l $7FF85A,X

#_1EB580: LDA.b #$0F
#_1EB582: STA.l $7FF90E,X

#_1EB586: PLX

#_1EB587: RTS

;---------------------------------------------------------------------------------------------------

.slot_occupied
#_1EB588: DEX
#_1EB589: BPL .next_slot

#_1EB58B: PLX

.exit
#_1EB58C: RTS

;===================================================================================================

Arrghus_Move:
#_1EB58D: LDA.w $0DF0,X
#_1EB590: BNE .delay

#_1EB592: INC.w $0D80,X

#_1EB595: LDA.b #$30
#_1EB597: STA.w $0DF0,X

.delay
#_1EB59A: JSR Sprite_Move_XY_Bank1E

#_1EB59D: LDA.w $0D50,X
#_1EB5A0: CMP.w $0EB0,X
#_1EB5A3: BEQ .check_y_speed
#_1EB5A5: BPL .x_too_high

#_1EB5A7: INC.w $0D50,X
#_1EB5AA: BRA .check_y_speed

.x_too_high
#_1EB5AC: DEC.w $0D50,X

.check_y_speed
#_1EB5AF: LDA.w $0D40,X
#_1EB5B2: CMP.w $0DE0,X
#_1EB5B5: BEQ .exit
#_1EB5B7: BPL .y_too_high

#_1EB5B9: INC.w $0D40,X
#_1EB5BC: BRA .exit

.y_too_high
#_1EB5BE: DEC.w $0D40,X

.exit
#_1EB5C1: RTS

;===================================================================================================

Arrghus_MakeDecision:
#_1EB5C2: LDA.w $0DF0,X
#_1EB5C5: BNE Arrghus_Decelerate

#_1EB5C7: STZ.w $0D80,X

#_1EB5CA: JSL CheckIfScreenIsClear
#_1EB5CE: BCS Arrghus_BOING

#_1EB5D0: INC.w $0B0B

#_1EB5D3: LDA.w $0B0B
#_1EB5D6: CMP.b #$04
#_1EB5D8: BNE Arrghus_TargetLink

#_1EB5DA: STZ.w $0B0B

#_1EB5DD: LDA.b #$02
#_1EB5DF: STA.w $0D80,X

#_1EB5E2: LDA.b #$B0
#_1EB5E4: STA.w $0DF0,X

#_1EB5E7: RTS

;===================================================================================================

Arrghus_BOING:
#_1EB5E8: LDA.b #$03
#_1EB5EA: STA.w $0D80,X

#_1EB5ED: LDA.b #$32 ; SFX3.32
#_1EB5EF: JSL SpriteSFX_QueueSFX3WithPan

#_1EB5F3: STZ.w $0E80,X

#_1EB5F6: RTS

;===================================================================================================

Arrghus_TargetLink:
#_1EB5F7: JSL GetRandomNumber
#_1EB5FB: AND.b #$3F
#_1EB5FD: ADC.b #$30
#_1EB5FF: STA.w $0DF0,X

#_1EB602: AND.b #$03
#_1EB604: ADC.b #$08
#_1EB606: JSL Sprite_ProjectSpeedTowardsLink_long

#_1EB60A: LDA.b $00
#_1EB60C: STA.w $0DE0,X

#_1EB60F: LDA.b $01
#_1EB611: STA.w $0EB0,X

#_1EB614: RTS

;===================================================================================================

Arrghus_Decelerate:
#_1EB615: JSR Sprite_Move_XY_Bank1E

#_1EB618: LDA.w $0D50,X
#_1EB61B: BEQ .check_y_speed
#_1EB61D: BPL .x_too_high

#_1EB61F: INC.w $0D50,X
#_1EB622: BRA .check_y_speed

.x_too_high
#_1EB624: DEC.w $0D50,X

.check_y_speed
#_1EB627: LDA.w $0D40,X
#_1EB62A: BEQ .exit
#_1EB62C: BPL .y_too_high

#_1EB62E: INC.w $0D40,X
#_1EB631: BRA .exit

.y_too_high
#_1EB633: DEC.w $0D40,X

.exit
#_1EB636: RTS

;===================================================================================================

Arrghus_PuffAttack:
#_1EB637: LDA.b #$08
#_1EB639: STA.w $0B0C

#_1EB63C: LDA.w $0DF0,X
#_1EB63F: CMP.b #$20
#_1EB641: BCC .shrink

#_1EB643: CMP.b #$60
#_1EB645: BCS .hold

.grow
#_1EB647: INC.w $0B0A

#_1EB64A: RTS

.shrink
#_1EB64B: DEC.w $0B0A
#_1EB64E: BMI .attack_over

#_1EB650: RTS

;---------------------------------------------------------------------------------------------------

.hold
#_1EB651: BNE .not_about_to_shrink

#_1EB653: LDA.b #$26 ; SFX3.26
#_1EB655: BRA .play_sfx

.not_about_to_shrink
#_1EB657: AND.b #$0F
#_1EB659: BNE .no_sfx

#_1EB65B: LDA.b #$06 ; SFX3.06

.play_sfx
#_1EB65D: JSL SpriteSFX_QueueSFX3WithPan

.no_sfx
#_1EB661: RTS

;---------------------------------------------------------------------------------------------------

.attack_over
#_1EB662: STZ.w $0B0A

#_1EB665: DEC.w $0D80,X

#_1EB668: LDA.b #$70
#_1EB66A: STA.w $0DF0,X

#_1EB66D: RTS

;===================================================================================================

pool Arrghus_HandlePuffs

.angle_offset
#_1EB66E: dw $0000, $0040, $0080, $00C0, $0100, $0140, $0180, $01C0
#_1EB67E: dw $0000, $0066, $00CC, $0132, $0198

.angle_mask
#_1EB688: dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000
#_1EB698: dw $01FF, $01FF, $01FF, $01FF, $01FF

.pinch
#_1EB6A2: db $14, $14, $14, $14, $14, $14, $14, $14
#_1EB6AA: db $0C, $0C, $0C, $0C, $0C

; TODO  name
.some_offset
#_1EB6AF: db $00, $FF, $FE, $FD, $FC, $FB, $FA, $FA
#_1EB6B7: db $FB, $FC, $FD, $FE, $FF, $00, $FF, $FE
#_1EB6BF: db $FD, $FC, $FB, $FA, $FA, $FB, $FC, $FD
#_1EB6C7: db $FE, $FF, $00, $FF, $FE, $FD, $FC, $FB
#_1EB6CF: db $FA, $FA, $FB, $FC, $FD, $FE, $FF, $00
#_1EB6D7: db $FF, $FE, $FD, $FC, $FB, $FA, $FA, $FB
#_1EB6DF: db $FC, $FD, $FE, $FF

pool off

;---------------------------------------------------------------------------------------------------

Arrghus_HandlePuffs:
; Spin arrghus puffs
#_1EB6E3: LDA.w $0B08
#_1EB6E6: CLC
#_1EB6E7: ADC.w $0B0C
#_1EB6EA: STA.w $0B08

#_1EB6ED: LDA.w $0B09
#_1EB6F0: ADC.b #$00
#_1EB6F2: STA.w $0B09

#_1EB6F5: LDA.b $1A
#_1EB6F7: AND.b #$03
#_1EB6F9: BNE .check_offset_y

; TODO what is this? some post angular offset?
#_1EB6FB: INC.w $0D90,X

#_1EB6FE: LDA.w $0D90,X
#_1EB701: CMP.b #$0D
#_1EB703: BNE .check_offset_y

#_1EB705: STZ.w $0D90,X

.check_offset_y
#_1EB708: LDA.b $1A
#_1EB70A: AND.b #$07
#_1EB70C: BNE .start_puffs

#_1EB70E: INC.w $0DA0,X

#_1EB711: LDA.w $0DA0,X
#_1EB714: CMP.b #$0D
#_1EB716: BNE .start_puffs

#_1EB718: STZ.w $0DA0,X

;---------------------------------------------------------------------------------------------------

; TODO analyze
.start_puffs
#_1EB71B: STZ.w $0FB5

.next_puff
#_1EB71E: LDA.w $0FB5
#_1EB721: PHA

#_1EB722: ASL A
#_1EB723: TAY

#_1EB724: REP #$20

#_1EB726: LDA.w $0B08
#_1EB729: CLC
#_1EB72A: ADC.w .angle_offset,Y
#_1EB72D: EOR.w .angle_mask,Y
#_1EB730: STA.b $00

#_1EB732: SEP #$20

#_1EB734: PLY

#_1EB735: LDA.w $0B0A
#_1EB738: CLC
#_1EB739: ADC.w .pinch,Y
#_1EB73C: STA.b $0E
#_1EB73E: STA.b $0F

#_1EB740: LDA.w $0FB5
#_1EB743: STA.b $02

#_1EB745: LDA.w $0D90,X
#_1EB748: CLC
#_1EB749: ADC.b $02
#_1EB74B: TAY

#_1EB74C: LDA.b $0F
#_1EB74E: CLC
#_1EB74F: ADC.w .some_offset,Y
#_1EB752: STA.b $0F

#_1EB754: LDA.w $0DA0,X
#_1EB757: CLC
#_1EB758: ADC.b $02
#_1EB75A: TAY

#_1EB75B: LDA.b $0E
#_1EB75D: CLC
#_1EB75E: ADC.w .some_offset,Y
#_1EB761: STA.b $0E

#_1EB763: PHX
#_1EB764: REP #$30

#_1EB766: LDA.b $00
#_1EB768: AND.w #$00FF
#_1EB76B: ASL A
#_1EB76C: TAX

#_1EB76D: LDA.l SmoothCurve,X
#_1EB771: STA.b $04

#_1EB773: LDA.b $00
#_1EB775: CLC
#_1EB776: ADC.w #$0080
#_1EB779: STA.b $02

#_1EB77B: AND.w #$00FF
#_1EB77E: ASL A
#_1EB77F: TAX

#_1EB780: LDA.l SmoothCurve,X
#_1EB784: STA.b $06

#_1EB786: SEP #$30

#_1EB788: PLX

#_1EB789: LDA.b $04
#_1EB78B: STA.w WRMPYA

#_1EB78E: LDA.b $0F

#_1EB790: LDY.b $05
#_1EB792: BNE .nonzero_a

#_1EB794: STA.w WRMPYB

#_1EB797: JSR NOP8

#_1EB79A: ASL.w RDMPYL ; carry = round up
#_1EB79D: LDA.w RDMPYH
#_1EB7A0: ADC.b #$00

.nonzero_a
#_1EB7A2: LSR.b $01
#_1EB7A4: BCC .dont_invert_a

#_1EB7A6: EOR.b #$FF
#_1EB7A8: INC A

.dont_invert_a
#_1EB7A9: STZ.b $0A

#_1EB7AB: CMP.b #$00
#_1EB7AD: BPL .positive_a

#_1EB7AF: DEC.b $0A

.positive_a
#_1EB7B1: CLC
#_1EB7B2: ADC.w $0D10,X

#_1EB7B5: LDY.w $0FB5
#_1EB7B8: STA.w $0B10,Y

#_1EB7BB: LDA.w $0D30,X
#_1EB7BE: ADC.b $0A
#_1EB7C0: STA.w $0B20,Y

#_1EB7C3: LDA.b $06
#_1EB7C5: STA.w WRMPYA

#_1EB7C8: LDA.b $0E

#_1EB7CA: LDY.b $07
#_1EB7CC: BNE .nonzero_b

#_1EB7CE: STA.w WRMPYB

#_1EB7D1: JSR NOP8

#_1EB7D4: ASL.w RDMPYL ; carry = round up
#_1EB7D7: LDA.w RDMPYH
#_1EB7DA: ADC.b #$00

.nonzero_b
#_1EB7DC: LSR.b $03
#_1EB7DE: BCC .dont_invert_b

#_1EB7E0: EOR.b #$FF
#_1EB7E2: INC A

.dont_invert_b
#_1EB7E3: STZ.b $0A

#_1EB7E5: CMP.b #$00
#_1EB7E7: BPL .positive_b

#_1EB7E9: DEC.b $0A

.positive_b
#_1EB7EB: CLC
#_1EB7EC: ADC.w $0D00,X
#_1EB7EF: PHP

#_1EB7F0: SEC
#_1EB7F1: SBC.b #$10

#_1EB7F3: LDY.w $0FB5
#_1EB7F6: STA.w $0B30,Y

#_1EB7F9: LDA.w $0D20,X
#_1EB7FC: SBC.b #$00

#_1EB7FE: PLP
#_1EB7FF: ADC.b $0A
#_1EB801: STA.w $0B40,Y

#_1EB804: INC.w $0FB5

#_1EB807: LDA.w $0FB5
#_1EB80A: CMP.b #$0D
#_1EB80C: BEQ .exit

#_1EB80E: JMP.w .next_puff

.exit
#_1EB811: RTS

;===================================================================================================

pool SpriteDraw_Arrghus

.oam_groups
#_1EB812: dw  -8,  -4 : db $80, $00, $00, $02
#_1EB81A: dw   8,  -4 : db $80, $40, $00, $02
#_1EB822: dw  -8,  12 : db $A0, $00, $00, $02
#_1EB82A: dw   8,  12 : db $A0, $40, $00, $02
#_1EB832: dw   0,  24 : db $A8, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Arrghus:
#_1EB83A: REP #$20

#_1EB83C: LDA.w #.oam_groups
#_1EB83F: STA.b $08

#_1EB841: SEP #$20

#_1EB843: LDA.b #$05
#_1EB845: JSR Sprite_DrawMultiple_Bank1E

#_1EB848: LDA.w $0DC0,X
#_1EB84B: ASL A
#_1EB84C: STA.b $00

;---------------------------------------------------------------------------------------------------

#_1EB84E: LDY.b #$02

.adjust_next_object
#_1EB850: LDA.b ($90),Y
#_1EB852: CLC
#_1EB853: ADC.b $00
#_1EB855: STA.b ($90),Y

#_1EB857: INY
#_1EB858: INY
#_1EB859: INY
#_1EB85A: INY

#_1EB85B: CPY.b #$12
#_1EB85D: BCC .adjust_next_object

#_1EB85F: LDA.w $0D80,X
#_1EB862: CMP.b #$05
#_1EB864: BNE .not_pingponging

#_1EB866: LDY.b #$11
#_1EB868: LDA.b #$F0
#_1EB86A: STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

.not_pingponging
#_1EB86C: LDA.w $0E80,X
#_1EB86F: AND.b #$08
#_1EB871: BEQ .dont_flip_tentacles

#_1EB873: LDY.b #$13

#_1EB875: LDA.b ($90),Y
#_1EB877: ORA.b #$40
#_1EB879: STA.b ($90),Y

.dont_flip_tentacles
#_1EB87B: LDA.w $0D80,X
#_1EB87E: CMP.b #$05
#_1EB880: BEQ .draw_wake

#_1EB882: REP #$20

#_1EB884: LDA.b $90
#_1EB886: CLC
#_1EB887: ADC.w #$0004
#_1EB88A: STA.b $90

;---------------------------------------------------------------------------------------------------

#_1EB88C: INC.b $92

#_1EB88E: SEP #$20

#_1EB890: LDA.w $0F70,X

#_1EB893: CMP.b #$A0
#_1EB895: BCS .exit

#_1EB897: LDA.w $0F50,X
#_1EB89A: PHA

#_1EB89B: AND.b #$FE
#_1EB89D: STA.w $0F50,X

#_1EB8A0: JSL SpriteDraw_BigShadow

#_1EB8A4: PLA
#_1EB8A5: STA.w $0F50,X

.exit
#_1EB8A8: RTS

;---------------------------------------------------------------------------------------------------

.draw_wake
#_1EB8A9: JSL SpriteDraw_ArrghusWake

#_1EB8AD: RTS

;===================================================================================================

Arrghus_HandlePuffs_long:
#_1EB8AE: PHB
#_1EB8AF: PHK
#_1EB8B0: PLB

#_1EB8B1: JSR Arrghus_HandlePuffs

#_1EB8B4: PLB

#_1EB8B5: RTL

;===================================================================================================

pool Sprite_8D_Arrghi

.anim_step
#_1EB8B6: db $00, $01, $02, $02, $02, $02, $02, $01

pool off

;---------------------------------------------------------------------------------------------------

Sprite_8D_Arrghi:
#_1EB8BE: LDA.w $0B89,X
#_1EB8C1: ORA.b #$30
#_1EB8C3: STA.w $0B89,X

#_1EB8C6: JSL SpriteDraw_SingleLarge_long
#_1EB8CA: JSR Sprite_CheckIfActive_Bank1E

#_1EB8CD: INC.w $0E80,X

#_1EB8D0: LDA.w $0E80,X
#_1EB8D3: LSR A
#_1EB8D4: LSR A
#_1EB8D5: LSR A
#_1EB8D6: AND.b #$07
#_1EB8D8: TAY

#_1EB8D9: LDA.w .anim_step,Y
#_1EB8DC: STA.w $0DC0,X

#_1EB8DF: LDA.w $0DA0,X
#_1EB8E2: BEQ .not_dragged

#_1EB8E4: TAY
#_1EB8E5: DEY

#_1EB8E6: LDA.w $0C4A,Y
#_1EB8E9: BEQ .stop_drag

#_1EB8EB: LDA.w $0C04,Y
#_1EB8EE: STA.w $0D10,X

#_1EB8F1: LDA.w $0C18,Y
#_1EB8F4: STA.w $0D30,X

#_1EB8F7: LDA.w $0BFA,Y
#_1EB8FA: STA.w $0D00,X

#_1EB8FD: LDA.w $0C0E,Y
#_1EB900: STA.w $0D20,X

#_1EB903: LDA.b #$05
#_1EB905: STA.w $0F50,X

#_1EB908: LDA.w $0E60,X
#_1EB90B: AND.b #$BF
#_1EB90D: STA.w $0E60,X

#_1EB910: RTS

.stop_drag
#_1EB911: LDA.b #$01
#_1EB913: STA.w $0D80,X

#_1EB916: STZ.w $0DA0,X

#_1EB919: LDA.b #$20
#_1EB91B: STA.w $0DF0,X

.not_dragged
#_1EB91E: LDA.w $0DF0,X
#_1EB921: BNE .harmless

#_1EB923: JSR Sprite_CheckDamageToLink_Bank1E

;---------------------------------------------------------------------------------------------------

.harmless
#_1EB926: LDA.w $0D80,X
#_1EB929: BNE .vulnerable

#_1EB92B: LDA.w $0B0F,X
#_1EB92E: STA.w $0D10,X

#_1EB931: LDA.w $0B1F,X
#_1EB934: STA.w $0D30,X

#_1EB937: LDA.w $0B2F,X
#_1EB93A: STA.w $0D00,X

#_1EB93D: LDA.w $0B3F,X
#_1EB940: STA.w $0D20,X

#_1EB943: RTS

;---------------------------------------------------------------------------------------------------

.vulnerable
#_1EB944: JSL Sprite_CheckDamageFromLink_long

#_1EB948: TXA
#_1EB949: EOR.b $1A
#_1EB94B: AND.b #$03
#_1EB94D: BNE .cant_hug_arrghus

#_1EB94F: LDA.w $0B0F,X
#_1EB952: STA.b $04

#_1EB954: LDA.w $0B1F,X
#_1EB957: STA.b $05

#_1EB959: LDA.w $0B2F,X
#_1EB95C: STA.b $06

#_1EB95E: LDA.w $0B3F,X
#_1EB961: STA.b $07

#_1EB963: LDA.b #$04
#_1EB965: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1EB969: LDA.b $00
#_1EB96B: STA.w $0D40,X

#_1EB96E: LDA.b $01
#_1EB970: STA.w $0D50,X

#_1EB973: LDA.w $0D10,X
#_1EB976: SEC
#_1EB977: SBC.w $0B0F,X
#_1EB97A: CLC
#_1EB97B: ADC.b #$08

#_1EB97D: CMP.b #$10
#_1EB97F: BCS .cant_hug_arrghus

#_1EB981: LDA.w $0D00,X
#_1EB984: SEC
#_1EB985: SBC.w $0B2F,X
#_1EB988: CLC
#_1EB989: ADC.b #$08

#_1EB98B: CMP.b #$10
#_1EB98D: BCS .cant_hug_arrghus

#_1EB98F: STZ.w $0D80,X

#_1EB992: LDA.b #$0D
#_1EB994: STA.w $0F50,X

#_1EB997: LDA.w $0E60,X
#_1EB99A: ORA.b #$40
#_1EB99C: STA.w $0E60,X

.cant_hug_arrghus
#_1EB99F: JSR Sprite_Move_XY_Bank1E

#_1EB9A2: RTS

;===================================================================================================

Sprite_8B_Gibdo:
#_1EB9A3: JSR SpriteDraw_Gibdo
#_1EB9A6: JSR Sprite_CheckIfActive_Bank1E
#_1EB9A9: JSR Sprite_CheckIfRecoiling_Bank1E
#_1EB9AC: JSR Sprite_CheckDamageToAndFromLink_Bank1E

#_1EB9AF: LDA.w $0D80,X
#_1EB9B2: JSL JumpTableLocal
#_1EB9B6: dw Gibdo_Turn
#_1EB9B8: dw Gibdo_Walk

;===================================================================================================

pool Gibdo_Turn

.target_direction
#_1EB9BA: db $02, $06, $04, $00

.anim_step
#_1EB9BE: db $04, $08, $0B, $0A, $00, $06, $03, $07

pool off

;---------------------------------------------------------------------------------------------------

Gibdo_Turn:
#_1EB9C6: LDY.w $0DE0,X

#_1EB9C9: LDA.w .anim_step,Y
#_1EB9CC: STA.w $0DC0,X

#_1EB9CF: LDA.b $1A
#_1EB9D1: AND.b #$07
#_1EB9D3: BNE .exit

#_1EB9D5: LDY.w $0D90,X

#_1EB9D8: LDA.w $0DE0,X
#_1EB9DB: CMP.w .target_direction,Y
#_1EB9DE: BEQ .begin_movement
#_1EB9E0: BPL .turn_left

.turn_right
#_1EB9E2: INC.w $0DE0,X
#_1EB9E5: BRA .exit

.turn_left
#_1EB9E7: DEC.w $0DE0,X

.exit
#_1EB9EA: RTS

.begin_movement
#_1EB9EB: JSL GetRandomNumber
#_1EB9EF: AND.b #$1F
#_1EB9F1: ADC.b #$30
#_1EB9F3: STA.w $0DF0,X

#_1EB9F6: INC.w $0D80,X

#_1EB9F9: RTS

;===================================================================================================

pool Gibdo_Walk

.speed_y ; bleeds into next
#_1EB9FA: db -16,   0

.speed_x
#_1EB9FC: db   0,   0,  16,   0,   0,   0, -16,   0

.anim_step
#_1EBA04: db $09, $02, $00, $04, $0B, $03, $01, $05

pool off

;---------------------------------------------------------------------------------------------------

Gibdo_Walk:
#_1EBA0C: LDY.w $0DE0,X

#_1EBA0F: LDA.w .speed_x,Y
#_1EBA12: STA.w $0D50,X

#_1EBA15: LDA.w .speed_y,Y
#_1EBA18: STA.w $0D40,X

#_1EBA1B: JSR Sprite_Move_XY_Bank1E
#_1EBA1E: JSR Sprite_CheckTileCollision_Bank1E

#_1EBA21: LDA.w $0DF0,X
#_1EBA24: BEQ .face_link

#_1EBA26: LDA.w $0E70,X
#_1EBA29: BEQ .continue

.face_link
#_1EBA2B: JSR Sprite_DirectionToFaceLink_Bank1E
#_1EBA2E: TYA
#_1EBA2F: CMP.w $0D90,X
#_1EBA32: BEQ .continue

#_1EBA34: STA.w $0D90,X

#_1EBA37: STZ.w $0D80,X

#_1EBA3A: RTS

.continue
#_1EBA3B: DEC.w $0DA0,X
#_1EBA3E: BPL .dont_step_animation

#_1EBA40: LDA.b #$0E
#_1EBA42: STA.w $0DA0,X

#_1EBA45: INC.w $0E80,X

.dont_step_animation
#_1EBA48: LDA.w $0E80,X
#_1EBA4B: ASL A
#_1EBA4C: ASL A

#_1EBA4D: AND.b #$04
#_1EBA4F: ORA.w $0D90,X
#_1EBA52: TAY

#_1EBA53: LDA.w .anim_step,Y
#_1EBA56: STA.w $0DC0,X

#_1EBA59: RTS

;===================================================================================================

pool SpriteDraw_Gibdo

.oam_groups
; group00
#_1EBA5A: dw   0,  -9 : db $80, $00, $00, $02
#_1EBA62: dw   0,   0 : db $8A, $00, $00, $02

; group01
#_1EBA6A: dw   0,  -8 : db $80, $00, $00, $02
#_1EBA72: dw   0,   1 : db $8A, $40, $00, $02

; group02
#_1EBA7A: dw   0,  -9 : db $82, $00, $00, $02
#_1EBA82: dw   0,   0 : db $8C, $00, $00, $02

; group03
#_1EBA8A: dw   0,  -8 : db $82, $00, $00, $02
#_1EBA92: dw   0,   0 : db $8E, $00, $00, $02

; group04
#_1EBA9A: dw   0,  -9 : db $84, $00, $00, $02
#_1EBAA2: dw   0,   0 : db $A0, $00, $00, $02

; group05
#_1EBAAA: dw   0,  -8 : db $84, $00, $00, $02
#_1EBAB2: dw   0,   1 : db $A0, $40, $00, $02

; group06
#_1EBABA: dw   0,  -9 : db $86, $00, $00, $02
#_1EBAC2: dw   0,   0 : db $A2, $00, $00, $02

; group07
#_1EBACA: dw   0,  -9 : db $88, $00, $00, $02
#_1EBAD2: dw   0,   0 : db $A4, $00, $00, $02

; group08
#_1EBADA: dw   0,  -9 : db $88, $40, $00, $02
#_1EBAE2: dw   0,   0 : db $A4, $40, $00, $02

; group09
#_1EBAEA: dw   0,  -9 : db $82, $40, $00, $02
#_1EBAF2: dw   0,   0 : db $8C, $40, $00, $02

; group0A
#_1EBAFA: dw   0,  -9 : db $86, $40, $00, $02
#_1EBB02: dw   0,   0 : db $A2, $40, $00, $02

; group0B
#_1EBB0A: dw   0,  -8 : db $82, $40, $00, $02
#_1EBB12: dw   0,   1 : db $8E, $40, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Gibdo:
#_1EBB1A: LDA.b #$00
#_1EBB1C: XBA
#_1EBB1D: LDA.w $0DC0,X

#_1EBB20: REP #$20

#_1EBB22: ASL A ; x16
#_1EBB23: ASL A
#_1EBB24: ASL A
#_1EBB25: ASL A

#_1EBB26: ADC.w #.oam_groups
#_1EBB29: STA.b $08

#_1EBB2B: SEP #$20

#_1EBB2D: LDA.b #$02
#_1EBB2F: JSR Sprite_DrawMultiple_Bank1E

#_1EBB32: LDA.w $0F00,X ; is this even necessary?
#_1EBB35: BNE .no_shadow

#_1EBB37: JSL SpriteDraw_Shadow_long

.no_shadow
#_1EBB3B: RTS

;===================================================================================================

Sprite_89_MothulaBeam:
#_1EBB3C: JSL SpriteDraw_SingleLarge_long
#_1EBB40: JSR Sprite_CheckIfActive_Bank1E
#_1EBB43: JSR Sprite_CheckDamageToLink_Bank1E

#_1EBB46: LDA.b $1A
#_1EBB48: AND.b #$01
#_1EBB4A: BNE .frame_parity

#_1EBB4C: LDA.w $0F50,X
#_1EBB4F: EOR.b #$80
#_1EBB51: STA.w $0F50,X

.frame_parity
#_1EBB54: JSR Sprite_Move_XY_Bank1E
#_1EBB57: LDA.w $0DF0,X ; wait for the timer
#_1EBB5A: BNE .stick_around

#_1EBB5C: JSR Sprite_CheckTileCollision_Bank1E
#_1EBB5F: BEQ .stick_around ; die if we collided

#_1EBB61: STZ.w $0DD0,X

.stick_around
#_1EBB64: TXA
#_1EBB65: EOR.b $1A
#_1EBB67: AND.b #$03
#_1EBB69: BNE .exit

#_1EBB6B: PHX
#_1EBB6C: TXY

;---------------------------------------------------------------------------------------------------

#_1EBB6D: LDX.b #$0E

.next_slot
#_1EBB6F: LDA.l $7FF800,X
#_1EBB73: BEQ .free_garnish_slot

#_1EBB75: DEX
#_1EBB76: BPL .next_slot

#_1EBB78: PLX

.exit
#_1EBB79: RTS

;---------------------------------------------------------------------------------------------------

.free_garnish_slot
#_1EBB7A: LDA.b #$02 ; GARNISH 02
#_1EBB7C: STA.l $7FF800,X
#_1EBB80: STA.w $0FB4

#_1EBB83: LDA.w $0D10,Y
#_1EBB86: STA.l $7FF83C,X

#_1EBB8A: LDA.w $0D30,Y
#_1EBB8D: STA.l $7FF878,X

#_1EBB91: LDA.w $0D00,Y
#_1EBB94: STA.l $7FF81E,X

#_1EBB98: LDA.w $0D20,Y
#_1EBB9B: STA.l $7FF85A,X

#_1EBB9F: LDA.b #$10
#_1EBBA1: STA.l $7FF90E,X

#_1EBBA5: TYA
#_1EBBA6: STA.l $7FF92C,X

#_1EBBAA: LDA.w $0F20,Y
#_1EBBAD: STA.l $7FF968,X

#_1EBBB1: PLX

#_1EBBB2: RTS

;===================================================================================================

Sprite_94_Tile:
#_1EBBB3: LDA.b #$30
#_1EBBB5: STA.w $0B89,X

#_1EBBB8: JSR SpriteDraw_Tile
#_1EBBBB: JSR Sprite_CheckIfActivePermissive_Bank1E

#_1EBBBE: LDA.w $0EF0,X
#_1EBBC1: BNE Tile_Shatter

#_1EBBC3: LDA.b #$01
#_1EBBC5: STA.w $0BA0,X

#_1EBBC8: LDA.w $0D80,X
#_1EBBCB: JSL JumpTableLocal
#_1EBBCF: dw Tile_DeleteFloor
#_1EBBD1: dw Tile_Ascend
#_1EBBD3: dw Tile_Launched

;===================================================================================================

Tile_DeleteFloor:
#_1EBBD5: LDA.w $0D10,X
#_1EBBD8: STA.b $00

#_1EBBDA: LDA.w $0D30,X
#_1EBBDD: STA.b $01

#_1EBBDF: LDA.w $0D00,X
#_1EBBE2: CLC
#_1EBBE3: ADC.b #$08
#_1EBBE5: STA.b $02

#_1EBBE7: LDA.w $0D20,X
#_1EBBEA: STA.b $03

#_1EBBEC: LDY.b #$06
#_1EBBEE: JSL Underworld_UpdateTilemapWithCommonTile

#_1EBBF2: INC.w $0D80,X

#_1EBBF5: LDA.b #$80
#_1EBBF7: STA.w $0DF0,X

#_1EBBFA: RTS

;===================================================================================================

Tile_Launched:
#_1EBBFB: STZ.w $0BA0,X

#_1EBBFE: LDA.w $0DF0,X
#_1EBC01: BEQ .dont_turn

#_1EBC03: AND.b #$03
#_1EBC05: BNE .dont_turn

#_1EBC07: JSR Tile_SpeedTowardsLink

.dont_turn
#_1EBC0A: JSR Sprite_CheckDamageToAndFromLink_Bank1E
#_1EBC0D: BCS Tile_Shatter

#_1EBC0F: JSR Sprite_Move_XY_Bank1E

#_1EBC12: LDA.w $0FDA
#_1EBC15: SEC
#_1EBC16: SBC.w $0F70,X
#_1EBC19: STA.w $0FDA

#_1EBC1C: LDA.w $0FDB
#_1EBC1F: SBC.b #$00
#_1EBC21: STA.w $0FDB

#_1EBC24: JSR Sprite_CheckTileCollision_Bank1E
#_1EBC27: BEQ .no_tile_collision

;---------------------------------------------------------------------------------------------------

#Tile_Shatter:
#_1EBC29: LDA.b #$1F ; SFX2.1F
#_1EBC2B: JSL SpriteSFX_QueueSFX2WithPan

#_1EBC2F: LDA.b #$06
#_1EBC31: STA.w $0DD0,X

#_1EBC34: LDA.b #$1F
#_1EBC36: STA.w $0DF0,X

#_1EBC39: LDA.b #$EC ; SPRITE EC
#_1EBC3B: STA.w $0E20,X

#_1EBC3E: STZ.w $0EF0,X

#_1EBC41: LDA.b #$80
#_1EBC43: STA.w $0DB0,X

#_1EBC46: RTS

.no_tile_collision
#_1EBC47: BRA Tile_Whirr

;===================================================================================================

Tile_Ascend:
#_1EBC49: LDA.w $0DF0,X
#_1EBC4C: BNE .ascending

#_1EBC4E: INC.w $0D80,X

#_1EBC51: LDA.b #$10
#_1EBC53: STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

#Tile_SpeedTowardsLink:
#_1EBC56: LDA.b #$20
#_1EBC58: JSL Sprite_ApplySpeedTowardsLink_long

#_1EBC5C: RTS

;---------------------------------------------------------------------------------------------------

.ascending
#_1EBC5D: CMP.b #$40
#_1EBC5F: BCC Tile_Whirr

#_1EBC61: LDA.b #$04
#_1EBC63: STA.w $0F80,X

#_1EBC66: JSR Sprite_Move_Z_Bank1E

;---------------------------------------------------------------------------------------------------

Tile_Whirr:
#_1EBC69: INC.w $0E80,X

#_1EBC6C: LDA.w $0E80,X
#_1EBC6F: LSR A
#_1EBC70: LSR A
#_1EBC71: AND.b #$01
#_1EBC73: STA.w $0DC0,X

#_1EBC76: TXA
#_1EBC77: EOR.b $1A
#_1EBC79: AND.b #$07
#_1EBC7B: BNE .exit

#_1EBC7D: LDA.b #$07 ; SFX2.07
#_1EBC7F: JSL SpriteSFX_QueueSFX2WithPan

.exit
#_1EBC83: RTS

;===================================================================================================

pool SpriteDraw_Tile

.oam_groups
; group00
#_1EBC84: dw   0,   0 : db $D3, $00, $00, $00
#_1EBC8C: dw   8,   0 : db $D3, $40, $00, $00
#_1EBC94: dw   0,   8 : db $D3, $80, $00, $00
#_1EBC9C: dw   8,   8 : db $D3, $C0, $00, $00

; group01
#_1EBCA4: dw   0,   0 : db $C3, $00, $00, $00
#_1EBCAC: dw   8,   0 : db $C3, $40, $00, $00
#_1EBCB4: dw   0,   8 : db $C3, $80, $00, $00
#_1EBCBC: dw   8,   8 : db $C3, $C0, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Tile:
#_1EBCC4: LDA.b #$00
#_1EBCC6: XBA
#_1EBCC7: LDA.w $0DC0,X

#_1EBCCA: REP #$20

#_1EBCCC: ASL A ; x32
#_1EBCCD: ASL A
#_1EBCCE: ASL A
#_1EBCCF: ASL A
#_1EBCD0: ASL A
#_1EBCD1: ADC.w #.oam_groups
#_1EBCD4: STA.b $08

#_1EBCD6: SEP #$20

#_1EBCD8: LDA.b #$04
#_1EBCDA: JSR Sprite_DrawMultiple_Bank1E

#_1EBCDD: JSL SpriteDraw_Shadow_long

#_1EBCE1: RTS

;===================================================================================================

Sprite_8A_SpikeBlock:
#_1EBCE2: LDA.w $0E90,X
#_1EBCE5: BNE SpikeBlock_ByMothula

#_1EBCE7: JSL SpriteDraw_SingleLarge_long
#_1EBCEB: JSR Sprite_CheckIfActive_Bank1E
#_1EBCEE: JSR Sprite_CheckDamageToAndFromLink_Bank1E
#_1EBCF1: JSR Sprite_Move_XY_Bank1E
#_1EBCF4: JSR Sprite_CheckTileCollision_Bank1E

#_1EBCF7: LDA.w $0DF0,X
#_1EBCFA: BNE .exit

#_1EBCFC: JSR SpikeBlock_CheckStatueCollision
#_1EBCFF: BCC .no_collision

#_1EBD01: LDA.w $0E70,X
#_1EBD04: AND.b #$0F
#_1EBD06: BEQ .exit

.no_collision
#_1EBD08: LDA.b #$04
#_1EBD0A: STA.w $0DF0,X

#_1EBD0D: LDA.w $0D50,X
#_1EBD10: EOR.b #$FF
#_1EBD12: INC A
#_1EBD13: STA.w $0D50,X

#_1EBD16: LDA.b #$05 ; SFX2.05
#_1EBD18: JSL SpriteSFX_QueueSFX2WithPan

.exit
#_1EBD1C: RTS

;===================================================================================================

SpikeBlock_ByMothula:
#_1EBD1D: LDA.b #$04
#_1EBD1F: JSL OAM_AllocateFromRegionB

#_1EBD23: JSL SpriteDraw_SingleLarge_long
#_1EBD27: JSR Sprite_CheckIfActive_Bank1E
#_1EBD2A: JSR Sprite_CheckDamageToAndFromLink_Bank1E

#_1EBD2D: LDA.w $0D80,X
#_1EBD30: BNE .active

#_1EBD32: LDY.b #$00
#_1EBD34: JSR SpikeBlock_UpdateTilemap

#_1EBD37: INC.w $0D80,X

#_1EBD3A: LDA.b #$40
#_1EBD3C: STA.w $0DF0,X

#_1EBD3F: LDA.b #$69
#_1EBD41: STA.w $0E00,X

#_1EBD44: RTS

;---------------------------------------------------------------------------------------------------

.shake
#_1EBD45: db  8, -8

;---------------------------------------------------------------------------------------------------

.active
#_1EBD47: LDA.w $0DF0,X
#_1EBD4A: BEQ .moving

#_1EBD4C: CMP.b #$01
#_1EBD4E: BNE .jiggle

#_1EBD50: LDA.w $0D90,X
#_1EBD53: STA.w $0D10,X

#_1EBD56: LDA.w $0DA0,X
#_1EBD59: STA.w $0D00,X

#_1EBD5C: RTS

.jiggle
#_1EBD5D: LSR A
#_1EBD5E: AND.b #$01
#_1EBD60: TAY

#_1EBD61: LDA.w .shake,Y
#_1EBD64: STA.w $0D50,X

#_1EBD67: JSR Sprite_Move_X_Bank1E

#_1EBD6A: STZ.w $0D50,X

#_1EBD6D: RTS

;---------------------------------------------------------------------------------------------------

.max_speed_x ; bleeds into next
#_1EBD6E: db  32, -32

.max_speed_y
#_1EBD70: db   0,   0,  32, -32

.accel_x ; bleeds into next
#_1EBD74: db   1,  -1

.accel_y
#_1EBD76: db   0,   0,   1,  -1

;---------------------------------------------------------------------------------------------------

.moving
#_1EBD7A: LDA.w $0D80,X
#_1EBD7D: CMP.b #$01
#_1EBD7F: BNE .returning

#_1EBD81: LDA.b $1A
#_1EBD83: AND.b #$00 ; useless, always fails
#_1EBD85: BNE .delay

#_1EBD87: LDY.w $0DE0,X

#_1EBD8A: LDA.w $0D50,X
#_1EBD8D: CMP.w .max_speed_x,Y
#_1EBD90: BEQ .up_to_speed_x

#_1EBD92: CLC
#_1EBD93: ADC.w .accel_x,Y
#_1EBD96: STA.w $0D50,X

.up_to_speed_x
#_1EBD99: LDA.w $0D40,X
#_1EBD9C: CMP.w .max_speed_y,Y
#_1EBD9F: BEQ .delay

#_1EBDA1: CLC
#_1EBDA2: ADC.w .accel_y,Y
#_1EBDA5: STA.w $0D40,X

.delay
#_1EBDA8: JSR Sprite_Move_XY_Bank1E
#_1EBDAB: LDA.w $0E00,X
#_1EBDAE: BNE .exit_a

#_1EBDB0: JSL Sprite_Get16BitCoords_long
#_1EBDB4: JSR Sprite_CheckTileCollision_Bank1E
#_1EBDB7: BEQ .exit_a

#_1EBDB9: INC.w $0D80,X
#_1EBDBC: LDA.b #$40
#_1EBDBE: STA.w $0E00,X

.exit_a
#_1EBDC1: RTS

;---------------------------------------------------------------------------------------------------

.return_speed_x
#_1EBDC2: db $F0, $10, $00, $00

.return_speed_y
#_1EBDC6: db $00, $00, $F0, $10

;---------------------------------------------------------------------------------------------------

.returning
#_1EBDCA: LDA.w $0E00,X
#_1EBDCD: BNE .exit_b

#_1EBDCF: LDY.w $0DE0,X

#_1EBDD2: LDA.w .return_speed_x,Y
#_1EBDD5: STA.w $0D50,X

#_1EBDD8: LDA.w .return_speed_y,Y
#_1EBDDB: STA.w $0D40,X

#_1EBDDE: JSR Sprite_Move_XY_Bank1E

#_1EBDE1: LDA.w $0D10,X
#_1EBDE4: CMP.w $0D90,X
#_1EBDE7: BNE .exit_b

#_1EBDE9: LDA.w $0D00,X
#_1EBDEC: CMP.w $0DA0,X
#_1EBDEF: BNE .exit_b

#_1EBDF1: STZ.w $0DD0,X

#_1EBDF4: LDY.b #$02
#_1EBDF6: JSR SpikeBlock_UpdateTilemap

.exit_b
#_1EBDF9: RTS

;===================================================================================================

SpikeBlock_UpdateTilemap:
#_1EBDFA: LDA.w $0D10,X
#_1EBDFD: STA.b $00

#_1EBDFF: LDA.w $0D30,X
#_1EBE02: STA.b $01

#_1EBE04: LDA.w $0D00,X
#_1EBE07: STA.b $02

#_1EBE09: LDA.w $0D20,X
#_1EBE0C: STA.b $03

#_1EBE0E: JSL Underworld_UpdateTilemapWithCommonTile

#_1EBE12: RTS

;===================================================================================================
; TODO analyze
; This looks like it will cause problems for multiple statues in a room
;===================================================================================================
SpikeBlock_CheckStatueCollision:
#_1EBE13: LDY.b #$0F

.next_sprite
#_1EBE15: TYA
#_1EBE16: EOR.b $1A
#_1EBE18: AND.b #$01
#_1EBE1A: BNE .skip

#_1EBE1C: LDA.w $0DD0,Y
#_1EBE1F: BEQ .skip

#_1EBE21: LDA.w $0E20,Y
#_1EBE24: CMP.b #$1C ; SPRITE 1C
#_1EBE26: BNE .skip

#_1EBE28: LDA.w $0D10,X
#_1EBE2B: STA.b $00

#_1EBE2D: LDA.w $0D30,X
#_1EBE30: STA.b $01

#_1EBE32: LDA.w $0D00,X
#_1EBE35: STA.b $02

#_1EBE37: LDA.w $0D20,X
#_1EBE3A: STA.b $03

#_1EBE3C: LDA.w $0D10,Y
#_1EBE3F: STA.b $04

#_1EBE41: LDA.w $0D30,Y
#_1EBE44: STA.b $05

#_1EBE46: LDA.w $0D00,Y
#_1EBE49: STA.b $06

#_1EBE4B: LDA.w $0D20,Y
#_1EBE4E: STA.b $07

#_1EBE50: REP #$20

#_1EBE52: LDA.b $00
#_1EBE54: SEC
#_1EBE55: SBC.b $04
#_1EBE57: CLC
#_1EBE58: ADC.w #$0010

#_1EBE5B: CMP.w #$0020
#_1EBE5E: BCS .no_collision

#_1EBE60: LDA.b $02
#_1EBE62: SEC
#_1EBE63: SBC.b $06
#_1EBE65: CLC
#_1EBE66: ADC.w #$0008

#_1EBE69: CMP.w #$0010
#_1EBE6C: BCS .no_collision

#_1EBE6E: SEP #$20

#_1EBE70: RTS

.no_collision
#_1EBE71: SEP #$20

.skip
#_1EBE73: DEY
#_1EBE74: BPL .next_sprite

#_1EBE76: SEC

#_1EBE77: RTS

;===================================================================================================

Sprite_88_Mothula:
#_1EBE78: JSR Mothula_Main

#_1EBE7B: JSR Sprite_CheckIfActive_Bank1E

#_1EBE7E: JSR Mothula_HandleSpikes

#_1EBE81: RTS

;===================================================================================================

Mothula_Main:
#_1EBE82: JSL SpriteDraw_Mothula

#_1EBE86: LDA.w $0DD0,X
#_1EBE89: CMP.b #$0B
#_1EBE8B: BNE .not_stunned

#_1EBE8D: STZ.w $0D80,X

.not_stunned
#_1EBE90: JSR Sprite_CheckIfActive_Bank1E

#_1EBE93: STZ.w $0E60,X

#_1EBE96: LDA.w $0EE0,X
#_1EBE99: BEQ .vulnerable

#_1EBE9B: LDA.b #$40
#_1EBE9D: STA.w $0E60,X

;---------------------------------------------------------------------------------------------------

.vulnerable
#_1EBEA0: LDA.w $0EA0,X
#_1EBEA3: BEQ .continue

#_1EBEA5: AND.b #$7F
#_1EBEA7: CMP.b #$06
#_1EBEA9: BNE .continue

#_1EBEAB: STZ.w $0EA0,X

#_1EBEAE: LDA.b #$20
#_1EBEB0: STA.w $0EE0,X

#_1EBEB3: LDA.b #$02
#_1EBEB5: STA.w $0D80,X

#_1EBEB8: STZ.w $0DF0,X

#_1EBEBB: LDA.b #$40
#_1EBEBD: STA.w $0ED0,X

;---------------------------------------------------------------------------------------------------

.continue
#_1EBEC0: JSR Sprite_CheckIfRecoiling_Bank1E

#_1EBEC3: LDA.w $0D80,X
#_1EBEC6: JSL JumpTableLocal
#_1EBECA: dw Modula_Dormant
#_1EBECC: dw Modula_WakeUp
#_1EBECE: dw Modula_ActLikeAMoth
#_1EBED0: dw Modula_FireBeams

;===================================================================================================

Modula_Dormant:
#_1EBED2: LDA.w $0DF0,X
#_1EBED5: BNE .exit

#_1EBED7: INC.w $0D80,X

.exit
#_1EBEDA: RTS

;===================================================================================================

Modula_WakeUp:
#_1EBEDB: LDA.b #$08
#_1EBEDD: STA.w $0F80,X

#_1EBEE0: JSR Sprite_Move_Z_Bank1E

#_1EBEE3: STZ.w $0F80,X

#_1EBEE6: LDA.w $0F70,X
#_1EBEE9: CMP.b #$18
#_1EBEEB: BCC .still_rising

#_1EBEED: LDA.b #$80
#_1EBEEF: STA.w $0ED0,X

#_1EBEF2: INC.w $0D80,X

#_1EBEF5: STZ.w $0BA0,X

#_1EBEF8: LDA.b #$40
#_1EBEFA: STA.w $0DF0,X

.still_rising
#_1EBEFD: JSR Mothula_FlapWings

#_1EBF00: RTS

;===================================================================================================

pool Modula_ActLikeAMoth

.speed_z
#_1EBF01: db   1,  -1

.speed_y ; bleeds into next
#_1EBF03: db -16, -12

.speed_x
#_1EBF05: db   0,  12,  16,  12,   0, -12, -16, -12

pool off

;---------------------------------------------------------------------------------------------------

Modula_ActLikeAMoth:
#_1EBF0D: LDA.w $0ED0,X
#_1EBF10: BNE .dont_shoot

#_1EBF12: LDA.b #$3F
#_1EBF14: STA.w $0DF0,X

#_1EBF17: INC.w $0D80,X

#_1EBF1A: RTS

;---------------------------------------------------------------------------------------------------

.dont_shoot
#_1EBF1B: DEC.w $0ED0,X

#_1EBF1E: JSR Mothula_FlapWings

#_1EBF21: LDA.w $0D90,X
#_1EBF24: AND.b #$01
#_1EBF26: TAY

#_1EBF27: LDA.w $0F80,X
#_1EBF2A: CLC
#_1EBF2B: ADC.w .speed_z,Y
#_1EBF2E: STA.w $0F80,X

#_1EBF31: CMP.w Sixteen_X,Y
#_1EBF34: BNE .dont_change_z_speed

#_1EBF36: INC.w $0D90,X

.dont_change_z_speed
#_1EBF39: LDA.w $0DF0,X
#_1EBF3C: BNE .direction_fine

#_1EBF3E: INC.w $0DB0,X

#_1EBF41: LDA.w $0DB0,X
#_1EBF44: CMP.b #$07
#_1EBF46: BNE .pick_random_direction

#_1EBF48: STZ.w $0DB0,X

#_1EBF4B: BRA .target_link

.pick_random_direction
#_1EBF4D: JSL GetRandomNumber
#_1EBF51: AND.b #$07
#_1EBF53: TAY

#_1EBF54: LDA.w .speed_x,Y
#_1EBF57: STA.w $0D50,X

#_1EBF5A: LDA.w .speed_y,Y
#_1EBF5D: STA.w $0D40,X

#_1EBF60: JSL GetRandomNumber
#_1EBF64: AND.b #$1F
#_1EBF66: ADC.b #$40
#_1EBF68: STA.w $0DF0,X

#_1EBF6B: BRA .direction_fine

;---------------------------------------------------------------------------------------------------

.target_link
#_1EBF6D: LDA.b #$20
#_1EBF6F: JSL Sprite_ApplySpeedTowardsLink_long
#_1EBF73: LDA.b #$80
#_1EBF75: STA.w $0DF0,X

.direction_fine
#_1EBF78: LDA.w $0E70,X ; check for tile collision
#_1EBF7B: BNE .skip_movement

#_1EBF7D: JSR Sprite_Move_XY_Bank1E

.skip_movement
#_1EBF80: JSR Sprite_Move_Z_Bank1E
#_1EBF83: JSR Sprite_CheckTileCollision_Bank1E
#_1EBF86: BEQ .no_tile_collision

#_1EBF88: STZ.w $0DF0,X

.no_tile_collision
#_1EBF8B: JSR Sprite_CheckDamageToAndFromLink_Bank1E

#_1EBF8E: INC.w $0E80,X
#_1EBF91: INC.w $0E80,X

#_1EBF94: RTS

;===================================================================================================

pool Mothula_FlapWings

.anim_step
#_1EBF95: db $00, $01, $02, $01

pool off

;---------------------------------------------------------------------------------------------------

Mothula_FlapWings:
#_1EBF99: INC.w $0E80,X

#_1EBF9C: LDA.w $0E80,X
#_1EBF9F: LSR A
#_1EBFA0: LSR A
#_1EBFA1: AND.b #$03
#_1EBFA3: TAY

#_1EBFA4: BNE .no_sfx

#_1EBFA6: LDA.b #$02 ; SFX3.02
#_1EBFA8: JSL SpriteSFX_QueueSFX3WithPan

.no_sfx
#_1EBFAC: LDA.w .anim_step,Y
#_1EBFAF: STA.w $0DC0,X

#_1EBFB2: RTS

;===================================================================================================

Modula_FireBeams:
#_1EBFB3: JSR Sprite_CheckDamageToAndFromLink_Bank1E

#_1EBFB6: LDA.w $0DF0,X
#_1EBFB9: BNE .delay

#_1EBFBB: DEC.w $0D80,X

#_1EBFBE: JSL GetRandomNumber
#_1EBFC2: AND.b #$1F
#_1EBFC4: ORA.b #$40
#_1EBFC6: STA.w $0ED0,X

#_1EBFC9: RTS

.delay
#_1EBFCA: CMP.b #$20
#_1EBFCC: BNE .not_yet

#_1EBFCE: JSR Mothula_SpawnBeams

.not_yet
#_1EBFD1: BRA Mothula_FlapWings

;===================================================================================================

pool Mothula_SpawnBeams

.speed_and_offset_x
#_1EBFD3: db -16,   0,  16

.speed_y
#_1EBFD6: db  24,  32,  24

pool off

;---------------------------------------------------------------------------------------------------

Mothula_SpawnBeams:
#_1EBFD9: LDA.b #$36 ; SFX3.36
#_1EBFDB: JSL SpriteSFX_QueueSFX3WithPan

#_1EBFDF: LDA.b #$02
#_1EBFE1: STA.w $0FB5

.next_spawn
#_1EBFE4: LDA.b #$89 ; SPRITE 89
#_1EBFE6: JSL Sprite_SpawnDynamically
#_1EBFEA: BMI .no_space

#_1EBFEC: JSL Sprite_SetSpawnedCoordinates

#_1EBFF0: LDA.b $02
#_1EBFF2: SEC
#_1EBFF3: SBC.b $04

#_1EBFF5: CLC
#_1EBFF6: ADC.b #$03
#_1EBFF8: STA.w $0D00,Y

#_1EBFFB: LDA.b #$10
#_1EBFFD: STA.w $0DF0,Y
#_1EC000: STA.w $0BA0,Y

#_1EC003: PHX

#_1EC004: LDX.w $0FB5

#_1EC007: LDA.b $00
#_1EC009: CLC
#_1EC00A: ADC.w .speed_and_offset_x,X
#_1EC00D: STA.w $0D10,Y

#_1EC010: LDA.w .speed_and_offset_x,X
#_1EC013: STA.w $0D50,Y

#_1EC016: LDA.w .speed_y,X
#_1EC019: STA.w $0D40,Y

#_1EC01C: LDA.b #$00
#_1EC01E: STA.w $0F70,Y

#_1EC021: PLX

.no_space
#_1EC022: DEC.w $0FB5
#_1EC025: BPL .next_spawn

#_1EC027: RTS

;===================================================================================================

pool Mothula_HandleSpikes

.position_x
#_1EC028: db $38, $48, $58, $68, $88, $98, $A8, $B8
#_1EC030: db $C8, $C8, $C8, $C8, $C8, $C8, $C8, $B8
#_1EC038: db $A8, $98, $78, $68, $58, $48, $38, $28
#_1EC040: db $28, $28, $28, $28, $28, $28

.position_y
#_1EC046: db $38, $38, $38, $38, $38, $38, $38, $38
#_1EC04E: db $48, $58, $68, $78, $98, $A8, $B8, $C8
#_1EC056: db $C8, $C8, $C8, $C8, $C8, $C8, $C8, $B8
#_1EC05E: db $A8, $98, $78, $68, $58, $48

.direction
#_1EC064: db $02, $02, $02, $02, $02, $02, $02, $02
#_1EC06C: db $01, $01, $01, $01, $01, $01, $01, $03
#_1EC074: db $03, $03, $03, $03, $03, $03, $03, $00
#_1EC07C: db $00, $00, $00, $00, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

Mothula_HandleSpikes:
#_1EC082: DEC.w $0EB0,X
#_1EC085: BNE .exit

#_1EC087: LDA.b #$40
#_1EC089: STA.w $0EB0,X

#_1EC08C: LDA.b #$8A ; SPRITE 8A
#_1EC08E: JSL Sprite_SpawnDynamically
#_1EC092: BMI .exit

#_1EC094: PHX

; This makes those last 2 blocks slightly less likely to occur
#_1EC095: JSL GetRandomNumber
#_1EC099: AND.b #$1F
#_1EC09B: CMP.b #$1E
#_1EC09D: BCC .rng_roll_in_range

#_1EC09F: SBC.b #$1E

.rng_roll_in_range
#_1EC0A1: TAX

#_1EC0A2: LDA.w .position_x,X
#_1EC0A5: STA.w $0D10,Y
#_1EC0A8: STA.w $0D90,Y

#_1EC0AB: LDA.w .position_y,X
#_1EC0AE: DEC A ; why not just have the data be -1?
#_1EC0AF: STA.w $0D00,Y
#_1EC0B2: STA.w $0DA0,Y

#_1EC0B5: LDA.w .direction,X
#_1EC0B8: STA.w $0DE0,Y

#_1EC0BB: LDA.b #$01
#_1EC0BD: STA.w $0E90,Y

#_1EC0C0: CLC
#_1EC0C1: ADC.w $0FB0
#_1EC0C4: STA.w $0D30,Y

#_1EC0C7: LDA.b #$01
#_1EC0C9: CLC
#_1EC0CA: ADC.w $0FB1
#_1EC0CD: STA.w $0D20,Y

#_1EC0D0: TYX

#_1EC0D1: LDA.b #$01
#_1EC0D3: STA.w $0D50,X

#_1EC0D6: JSL Sprite_Get16BitCoords_long
#_1EC0DA: JSR Sprite_CheckTileCollision_Bank1E

#_1EC0DD: STZ.w $0D50,X

#_1EC0E0: LDA.w $0D90,X
#_1EC0E3: STA.w $0D10,X

#_1EC0E6: LDA.w $0DA0,X
#_1EC0E9: STA.w $0D00,X

; prevent spawns on empty tiles
#_1EC0EC: LDA.w $0E70,X
#_1EC0EF: BNE .keep_spawn

#_1EC0F1: STZ.w $0DD0,X

#_1EC0F4: PLX

#_1EC0F5: LDA.b #$01
#_1EC0F7: STA.w $0EB0,X

#_1EC0FA: RTS

.keep_spawn
#_1EC0FB: PLX

.exit
#_1EC0FC: RTS

;===================================================================================================

Sprite_86_Kodongo:
#_1EC0FD: JSL SpriteDraw_SingleLarge_long
#_1EC101: JSR Sprite_CheckIfActive_Bank1E
#_1EC104: JSR Sprite_CheckIfRecoiling_Bank1E
#_1EC107: JSR Sprite_CheckDamageToAndFromLink_Bank1E

#_1EC10A: STZ.w $0B6B,X

#_1EC10D: LDA.w $0D80,X
#_1EC110: JSL JumpTableLocal
#_1EC114: dw Kodongo_MakeDecision
#_1EC116: dw Kodongo_Move
#_1EC118: dw Kodongo_ShootFire

;===================================================================================================

pool Kodongo_MakeDecision

.speed_x
#_1EC11A: db  1, -1,  0,  0

.speed_y
#_1EC11E: db  0,  0,  1, -1

pool off

;---------------------------------------------------------------------------------------------------

Kodongo_MakeDecision:
#_1EC122: INC.w $0D80,X

#_1EC125: JSL GetRandomNumber
#_1EC129: AND.b #$03
#_1EC12B: STA.w $0DE0,X

#_1EC12E: LDA.b #$B0
#_1EC130: STA.w $0B6B,X

; Hard lock potential if they spawn on a tile.
.try_new_direction
#_1EC133: LDY.w $0DE0,X

#_1EC136: LDA.w .speed_x,Y
#_1EC139: STA.w $0D50,X

#_1EC13C: LDA.w .speed_y,Y
#_1EC13F: STA.w $0D40,X

#_1EC142: JSR Sprite_CheckTileCollision_Bank1E
#_1EC145: BEQ Kodongo_SetDirection

#_1EC147: LDA.w $0DE0,X
#_1EC14A: INC A
#_1EC14B: AND.b #$03
#_1EC14D: STA.w $0DE0,X

#_1EC150: BRA .try_new_direction

;===================================================================================================

Kodongo_SetDirection:
#_1EC152: LDY.w $0DE0,X

#_1EC155: LDA.w Sixteen_X,Y
#_1EC158: STA.w $0D50,X

#_1EC15B: LDA.w Sixteen_Y,Y
#_1EC15E: STA.w $0D40,X

#_1EC161: RTS

;===================================================================================================

pool Kodongo_Move

.anim_step
#_1EC162: db $02, $02, $00, $05, $03, $03, $00, $05

.flip
#_1EC16A: db $40, $00, $00, $00, $40, $00, $40, $40

pool off

;---------------------------------------------------------------------------------------------------

Kodongo_Move:
#_1EC172: JSR Sprite_Move_XY_Bank1E
#_1EC175: JSR Sprite_CheckTileCollision_Bank1E
#_1EC178: BEQ .no_tile_collision

#_1EC17A: LDA.w $0DE0,X
#_1EC17D: EOR.b #$01
#_1EC17F: STA.w $0DE0,X

#_1EC182: JSR Kodongo_SetDirection

.no_tile_collision
#_1EC185: LDA.w $0D10,X
#_1EC188: AND.b #$1F
#_1EC18A: CMP.b #$04
#_1EC18C: BNE .dont_breathe_fire

#_1EC18E: LDA.w $0D00,X
#_1EC191: AND.b #$1F
#_1EC193: CMP.b #$1B
#_1EC195: BNE .dont_breathe_fire

#_1EC197: JSL GetRandomNumber
#_1EC19B: AND.b #$03
#_1EC19D: BNE .dont_breathe_fire

#_1EC19F: LDA.b #$6F
#_1EC1A1: STA.w $0DF0,X

#_1EC1A4: INC.w $0D80,X

#_1EC1A7: STZ.w $0D90,X

.dont_breathe_fire
#_1EC1AA: INC.w $0E80,X

#_1EC1AD: LDA.w $0E80,X
#_1EC1B0: AND.b #$04
#_1EC1B2: ORA.w $0DE0,X
#_1EC1B5: TAY

#_1EC1B6: LDA.w .anim_step,Y
#_1EC1B9: STA.w $0DC0,X

#_1EC1BC: LDA.w $0F50,X
#_1EC1BF: AND.b #$BF
#_1EC1C1: ORA.w .flip,Y
#_1EC1C4: STA.w $0F50,X

#_1EC1C7: RTS

;===================================================================================================

pool Kodongo_ShootFire

.anim_step
#_1EC1C8: db $02, $02, $00, $05, $04, $04, $01, $06

pool off

;---------------------------------------------------------------------------------------------------

Kodongo_ShootFire:
#_1EC1D0: LDA.w $0DF0,X
#_1EC1D3: BNE .wait

#_1EC1D5: STZ.w $0D80,X

; Who wrote this?
; That SBC should have been built into the CMP
; The behavior of Y is redundant
; This whole routine reeks.
.wait
#_1EC1D8: LDY.b #$00

#_1EC1DA: SEC
#_1EC1DB: SBC.b #$20

#_1EC1DD: CMP.b #$30
#_1EC1DF: BCS .wait_more

#_1EC1E1: LDY.b #$04

.wait_more
#_1EC1E3: CPY.b #$04
#_1EC1E5: BNE .dont_fire

#_1EC1E7: LDA.w $0DF0,X
#_1EC1EA: AND.b #$0F
#_1EC1EC: BNE .dont_fire

#_1EC1EE: PHY

#_1EC1EF: JSR Kodongo_SpawnFire

#_1EC1F2: PLY

.dont_fire
#_1EC1F3: TYA
#_1EC1F4: ORA.w $0DE0,X
#_1EC1F7: TAY

#_1EC1F8: LDA.w .anim_step,Y
#_1EC1FB: STA.w $0DC0,X

#_1EC1FE: RTS

;===================================================================================================

pool Kodongo_SpawnFire

.offset_x_low
#_1EC1FF: db   8,  -8,   0,   0

.offset_x_high
#_1EC203: db   0,  -1,   0,   0

.offset_y_low
#_1EC207: db   0,   0,   8,  -8

.offset_y_high
#_1EC20B: db   0,   0,   0,  -1

.speed_x
#_1EC20F: db  24, -24,   0,   0

.speed_y
#_1EC213: db   0,   0,  24, -24

; wtf is this?
#_1EC217: db  64,  56,  48,  40, 32,  24

pool off

;---------------------------------------------------------------------------------------------------

Kodongo_SpawnFire:
#_1EC21D: LDA.b #$87 ; SPRITE 87
#_1EC21F: LDY.b #$0D
#_1EC221: JSL Sprite_SpawnDynamically_slot_limited
#_1EC225: BMI .no_space

#_1EC227: PHX

#_1EC228: LDA.w $0DE0,X
#_1EC22B: TAX

#_1EC22C: LDA.b $00
#_1EC22E: CLC
#_1EC22F: ADC.w .offset_x_low,X
#_1EC232: STA.w $0D10,Y

#_1EC235: LDA.b $01
#_1EC237: ADC.w .offset_x_high,X
#_1EC23A: STA.w $0D30,Y

#_1EC23D: LDA.b $02
#_1EC23F: CLC
#_1EC240: ADC.w .offset_y_low,X
#_1EC243: STA.w $0D00,Y

#_1EC246: LDA.b $03
#_1EC248: ADC.w .offset_y_high,X
#_1EC24B: STA.w $0D20,Y

#_1EC24E: LDA.w .speed_x,X
#_1EC251: STA.w $0D50,Y

#_1EC254: LDA.w .speed_y,X
#_1EC257: STA.w $0D40,Y

#_1EC25A: LDA.b #$01
#_1EC25C: STA.w $0BA0,Y

#_1EC25F: PLX

.no_space
#_1EC260: RTS

;===================================================================================================

Sprite_CheckDamageToAndFromLink_Bank1E:
#_1EC261: JSL Sprite_CheckDamageFromLink_long

;===================================================================================================

Sprite_CheckDamageToLink_Bank1E:
#_1EC265: JSL Sprite_CheckDamageToLink_long

#_1EC269: RTS

;===================================================================================================

pool Sprite_87_KodongoFire

.flip
#_1EC26A: db $00, $40, $C0, $80

pool off

;---------------------------------------------------------------------------------------------------

Sprite_87_KodongoFire:
#_1EC26E: LDA.w $0DF0,X
#_1EC271: BNE LingeringFlame

#_1EC273: JSL SpriteDraw_SingleLarge_long
#_1EC277: JSR Sprite_CheckIfActive_Bank1E

#_1EC27A: LDA.b $1A
#_1EC27C: LSR A
#_1EC27D: LSR A
#_1EC27E: AND.b #$03
#_1EC280: TAY

#_1EC281: LDA.w $0F50,X
#_1EC284: AND.b #$3F
#_1EC286: ORA.w .flip,Y
#_1EC289: STA.w $0F50,X

#_1EC28C: JSR Sprite_CheckDamageToLink_Bank1E
#_1EC28F: BCS .collided

#_1EC291: JSR Sprite_Move_XY_Bank1E
#_1EC294: JSR Sprite_CheckTileCollision_Bank1E
#_1EC297: BNE .collided

#_1EC299: RTS

.collided
#_1EC29A: LDA.b #$7F
#_1EC29C: STA.w $0DF0,X

#_1EC29F: LDA.w $0F50,X
#_1EC2A2: AND.b #$3F
#_1EC2A4: STA.w $0F50,X

#_1EC2A7: LDA.b #$2A ; SFX2.2A
#_1EC2A9: JSL SpriteSFX_QueueSFX2WithPan

#_1EC2AD: RTS

;===================================================================================================

LingeringFlameDrawStep:
#_1EC2AE: db $05, $04, $03, $01, $02, $00, $03, $00
#_1EC2B6: db $01, $02, $03, $00, $01, $02, $03, $00
#_1EC2BE: db $01, $02, $03, $00, $01, $02, $03, $00
#_1EC2C6: db $01, $02, $03, $00, $01, $02, $03, $00

;===================================================================================================

LingeringFlame:
#_1EC2CE: JSL Sprite_CheckDamageFromLink_long
#_1EC2D2: BCC .nohit

#_1EC2D4: DEC.w $0DF0,X
#_1EC2D7: BEQ .extinguish

.nohit
#_1EC2D9: LDA.w $0DF0,X
#_1EC2DC: DEC A
#_1EC2DD: BNE .continue_burning

.extinguish
#_1EC2DF: STZ.w $0DD0,X

.continue_burning
#_1EC2E2: LDA.w $0DF0,X
#_1EC2E5: LSR A
#_1EC2E6: LSR A
#_1EC2E7: LSR A
#_1EC2E8: TAY

#_1EC2E9: LDA.w LingeringFlameDrawStep,Y
#_1EC2EC: STA.w $0DC0,X

#_1EC2EF: JSL SpriteDraw_Flame
#_1EC2F3: JMP.w Sprite_CheckDamageToLink_Bank1E

;===================================================================================================

pool SpriteDraw_Flame

.oam_groups
; group00
#_1EC2F6: dw   0,   0 : db $8E, $01, $00, $02
#_1EC2FE: dw   0,   0 : db $8E, $01, $00, $02

; group01
#_1EC306: dw   0,   0 : db $A0, $01, $00, $02
#_1EC30E: dw   0,   0 : db $A0, $01, $00, $02

; group02
#_1EC316: dw   0,   0 : db $8E, $41, $00, $02
#_1EC31E: dw   0,   0 : db $8E, $41, $00, $02

; group03
#_1EC326: dw   0,   0 : db $A0, $41, $00, $02
#_1EC32E: dw   0,   0 : db $A0, $41, $00, $02

; group04
#_1EC336: dw   0,   0 : db $A2, $01, $00, $02
#_1EC33E: dw   0,   0 : db $A2, $01, $00, $02

; group05
#_1EC346: dw   0,  -6 : db $A4, $01, $00, $00
#_1EC34E: dw   8,  -6 : db $A5, $01, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Flame:
#_1EC356: PHB
#_1EC357: PHK
#_1EC358: PLB

#_1EC359: LDA.b #$00
#_1EC35B: XBA
#_1EC35C: LDA.w $0DC0,X

#_1EC35F: REP #$20

#_1EC361: ASL A ; x16
#_1EC362: ASL A
#_1EC363: ASL A
#_1EC364: ASL A

#_1EC365: ADC.w #.oam_groups
#_1EC368: STA.b $08

#_1EC36A: SEP #$20

#_1EC36C: LDA.b #$02
#_1EC36E: JSR Sprite_DrawMultiple_Bank1E

#_1EC371: PLB

#_1EC372: RTL

;===================================================================================================

pool Sprite_85_YellowStalfos

.priority
#_1EC373: db $30, $00, $00, $00, $30, $00

pool off

;---------------------------------------------------------------------------------------------------

Sprite_85_YellowStalfos:
#_1EC379: LDA.w $0D90,X
#_1EC37C: BNE .tile_already_checked

#_1EC37E: LDA.b #$01
#_1EC380: STA.w $0D50,X
#_1EC383: STA.w $0D40,X

#_1EC386: JSR Sprite_CheckTileCollision_Bank1E
#_1EC389: BEQ .can_spawn

#_1EC38B: STZ.w $0DD0,X

#_1EC38E: RTS

;---------------------------------------------------------------------------------------------------

.can_spawn
#_1EC38F: INC.w $0D90,X

#_1EC392: LDA.b #$0A
#_1EC394: STA.w $0DB0,X

#_1EC397: LDA.w $0E60,X
#_1EC39A: ORA.b #$40
#_1EC39C: STA.w $0E60,X

#_1EC39F: LDA.b #$20 ; SFX2.20
#_1EC3A1: JSL SpriteSFX_QueueSFX2WithPan

.tile_already_checked
#_1EC3A5: LDY.w $0D80,X

#_1EC3A8: LDA.w $0B89,X
#_1EC3AB: ORA.w .priority,Y
#_1EC3AE: STA.w $0B89,X

#_1EC3B1: JSR SpriteDraw_YellowStalfos
#_1EC3B4: JSR Sprite_CheckIfActive_Bank1E

#_1EC3B7: LDA.l $7EF359
#_1EC3BB: CMP.b #$03
#_1EC3BD: BCC .dont_recoil_from_sword

#_1EC3BF: JSR Sprite_CheckIfRecoiling_Bank1E

#_1EC3C2: BRA .continue

.dont_recoil_from_sword
#_1EC3C4: LDA.w $0D80,X
#_1EC3C7: CMP.b #$05
#_1EC3C9: BEQ .continue

#_1EC3CB: LDA.w $0EF0,X
#_1EC3CE: BEQ .continue

#_1EC3D0: STZ.w $0EF0,X

#_1EC3D3: LDA.b #$05
#_1EC3D5: STA.w $0D80,X

#_1EC3D8: LDA.b #$FF
#_1EC3DA: STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

.continue
#_1EC3DD: LDA.b #$01
#_1EC3DF: STA.w $0BA0,X

#_1EC3E2: LDA.w $0D80,X
#_1EC3E5: JSL JumpTableLocal
#_1EC3E9: dw YellowStalfos_Descend
#_1EC3EB: dw YellowStalfos_TrackLink
#_1EC3ED: dw YellowStalfos_DecapitateSelf
#_1EC3EF: dw YellowStalfos_RegretDecapitatingSelf
#_1EC3F1: dw YellowStalfos_Ascend
#_1EC3F3: dw YellowStalfos_Collapsed

;===================================================================================================

YellowStalfos_Descend:
#_1EC3F5: LDA.b #$02
#_1EC3F7: STA.w $0EB0,X

#_1EC3FA: LDA.w $0F70,X
#_1EC3FD: PHA

#_1EC3FE: JSR Sprite_Move_Z_Bank1E

#_1EC401: LDA.w $0F80,X
#_1EC404: CMP.b #$C0
#_1EC406: BMI .at_max_z_speed

#_1EC408: SEC
#_1EC409: SBC.b #$03
#_1EC40B: STA.w $0F80,X

.at_max_z_speed
#_1EC40E: PLA
#_1EC40F: EOR.w $0F70,X
#_1EC412: BPL .exit

#_1EC414: LDA.w $0F70,X
#_1EC417: BPL .exit

#_1EC419: INC.w $0D80,X

#_1EC41C: STZ.w $0F70,X
#_1EC41F: STZ.w $0F80,X

#_1EC422: LDA.b #$40
#_1EC424: STA.w $0DF0,X

#_1EC427: JSR YellowStalfos_Animate

.exit
#_1EC42A: RTS

;===================================================================================================

YellowStalfos_TrackLink:
#_1EC42B: STZ.w $0BA0,X

#_1EC42E: JSR Sprite_CheckDamageToAndFromLink_Bank1E

#_1EC431: JSR Sprite_DirectionToFaceLink_Bank1E
#_1EC434: TYA
#_1EC435: STA.w $0DE0,X
#_1EC438: STA.w $0EB0,X

#_1EC43B: LDA.w $0DF0,X
#_1EC43E: BNE YellowStalfos_MakeVulnerable

#_1EC440: INC.w $0D80,X

#_1EC443: LDA.b #$7F
#_1EC445: STA.w $0DF0,X

;===================================================================================================

YellowStalfos_MakeVulnerable:
#_1EC448: LDA.w $0E60,X
#_1EC44B: AND.b #$BF
#_1EC44D: STA.w $0E60,X

#_1EC450: RTS

;===================================================================================================

pool YellowStalfos_DecapitateSelf

.anim_step
#_1EC451: db $08, $05, $01, $01, $08, $05, $01, $01
#_1EC459: db $08, $05, $01, $01, $07, $04, $02, $02
#_1EC461: db $07, $04, $02, $02, $07, $04, $02, $02
#_1EC469: db $07, $04, $02, $02, $07, $04, $02, $02

; TODO verify
.head_offset_x
#_1EC471: db $80, $80, $80, $80, $80, $80, $80, $80
#_1EC479: db $80, $80, $80, $80, $00, $00, $00, $00
#_1EC481: db $00, $00, $00, $00, $FF, $00, $01, $00
#_1EC489: db $FF, $00, $01, $00, $00, $00, $00, $00

.head_offset_y
#_1EC491: db $0D, $0D, $0D, $0D, $0D, $0D, $0D, $0D
#_1EC499: db $0D, $0D, $0D, $0D, $0D, $0D, $0D, $0D
#_1EC4A1: db $0D, $0C, $0B, $0A, $0A, $0A, $0A, $0A
#_1EC4A9: db $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A

pool off

;---------------------------------------------------------------------------------------------------

YellowStalfos_DecapitateSelf:
#_1EC4B1: STZ.w $0BA0,X

#_1EC4B4: JSR Sprite_CheckDamageToAndFromLink_Bank1E

#_1EC4B7: LDA.w $0DF0,X
#_1EC4BA: BNE .delay

#_1EC4BC: INC.w $0D80,X

#_1EC4BF: LDA.b #$40
#_1EC4C1: STA.w $0DF0,X

#_1EC4C4: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_1EC4C5: CMP.b #$30
#_1EC4C7: BNE .cold_feet

#_1EC4C9: PHA

#_1EC4CA: JSR YellowStalfos_EmancipateHead

#_1EC4CD: PLA

.cold_feet
#_1EC4CE: LSR A
#_1EC4CF: LSR A
#_1EC4D0: AND.b #$FC

#_1EC4D2: ORA.w $0DE0,X
#_1EC4D5: TAY

#_1EC4D6: LDA.w .anim_step,Y
#_1EC4D9: STA.w $0DC0,X

#_1EC4DC: LDA.w $0DF0,X
#_1EC4DF: LSR A
#_1EC4E0: LSR A
#_1EC4E1: TAY

#_1EC4E2: LDA.w .head_offset_x,Y
#_1EC4E5: STA.w $0DA0,X

#_1EC4E8: LDA.w .head_offset_y,Y
#_1EC4EB: STA.w $0DB0,X

#_1EC4EE: JMP.w YellowStalfos_MakeVulnerable

;===================================================================================================

pool YellowStalfos_Animate

.step
#_1EC4F1: db $06, $03, $01, $01

pool off

;===================================================================================================

YellowStalfos_RegretDecapitatingSelf:
#_1EC4F5: STZ.w $0BA0,X

#_1EC4F8: JSR Sprite_CheckDamageToAndFromLink_Bank1E

#_1EC4FB: LDA.w $0DF0,X
#_1EC4FE: BNE YellowStalfos_Animate

#_1EC500: INC.w $0D80,X

;===================================================================================================

YellowStalfos_Animate:
#_1EC503: LDY.w $0DE0,X

#_1EC506: LDA.w .step,Y
#_1EC509: STA.w $0DC0,X

#_1EC50C: JMP.w YellowStalfos_MakeVulnerable

;===================================================================================================

YellowStalfos_Ascend:
#_1EC50F: STZ.w $0DC0,X

#_1EC512: LDA.b #$02
#_1EC514: STA.w $0EB0,X

#_1EC517: LDA.w $0F70,X
#_1EC51A: PHA

#_1EC51B: JSR Sprite_Move_Z_Bank1E

#_1EC51E: LDA.w $0F80,X
#_1EC521: CMP.b #$40
#_1EC523: BPL .at_max_z_speed

#_1EC525: INC A
#_1EC526: INC A
#_1EC527: STA.w $0F80,X

.at_max_z_speed
#_1EC52A: PLA
#_1EC52B: EOR.w $0F70,X
#_1EC52E: BPL .exit

#_1EC530: LDA.w $0F70,X
#_1EC533: BMI .exit

#_1EC535: STZ.w $0DD0,X

.exit
#_1EC538: RTS

;===================================================================================================

pool YellowStalfos_Collapsed

.anim_step
#_1EC539: db $01, $01, $01, $09, $0A, $0A, $0A, $0A
#_1EC541: db $0A, $0A, $0A, $0A, $0A, $0A, $0A, $09

; TODO verify
.head_offset
#_1EC549: db $0A, $0A, $0A, $07, $00, $00, $00, $00
#_1EC551: db $00, $00, $00, $00, $00, $00, $00, $07

pool off

;---------------------------------------------------------------------------------------------------

YellowStalfos_Collapsed:
#_1EC559: STZ.w $0BA0,X

#_1EC55C: JSL Sprite_CheckDamageFromLink_long

#_1EC560: LDA.w $0DF0,X
#_1EC563: BNE .delay

#_1EC565: DEC.w $0D80,X

.delay
#_1EC568: LSR A ; /16
#_1EC569: LSR A
#_1EC56A: LSR A
#_1EC56B: LSR A
#_1EC56C: TAY

#_1EC56D: LDA.w .anim_step,Y
#_1EC570: STA.w $0DC0,X

#_1EC573: LDA.w .head_offset,Y
#_1EC576: STA.w $0DB0,X

#_1EC579: RTS

;===================================================================================================

YellowStalfos_EmancipateHead:
#_1EC57A: LDA.b #$02 ; SPRITE 02
#_1EC57C: JSL Sprite_SpawnDynamically
#_1EC580: BMI .no_space

#_1EC582: JSL Sprite_SetSpawnedCoordinates

#_1EC586: LDA.b #$0D
#_1EC588: STA.w $0F70,Y

#_1EC58B: PHX
#_1EC58C: TYX

#_1EC58D: LDA.b #$10
#_1EC58F: JSL Sprite_ApplySpeedTowardsLink_long

#_1EC593: PLX

#_1EC594: LDA.b #$FF
#_1EC596: STA.w $0DF0,Y

#_1EC599: LDA.b #$20
#_1EC59B: STA.w $0E00,Y

.no_space
#_1EC59E: RTS

;===================================================================================================

pool SpriteDraw_YellowStalfos

.oam_groups
; group00
#_1EC59F: dw   0,   0 : db $0A, $00, $00, $02
#_1EC5A7: dw   0,   0 : db $0A, $00, $00, $02

; group01
#_1EC5AF: dw   0,   0 : db $0C, $00, $00, $02
#_1EC5B7: dw   0,   0 : db $0C, $00, $00, $02

; group02
#_1EC5BF: dw   0,   0 : db $2C, $00, $00, $02
#_1EC5C7: dw   0,   0 : db $2C, $00, $00, $02

; group03
#_1EC5CF: dw   5,   5 : db $2E, $00, $00, $00
#_1EC5D7: dw   0,   0 : db $24, $00, $00, $02

; group04
#_1EC5DF: dw   4,   1 : db $3E, $00, $00, $00
#_1EC5E7: dw   0,   0 : db $24, $00, $00, $02

; group05
#_1EC5EF: dw   0,   0 : db $0E, $00, $00, $02
#_1EC5F7: dw   0,   0 : db $0E, $00, $00, $02

; group06
#_1EC5FF: dw   3,   5 : db $2E, $40, $00, $00
#_1EC607: dw   0,   0 : db $24, $40, $00, $02

; group07
#_1EC60F: dw   4,   1 : db $3E, $40, $00, $00
#_1EC617: dw   0,   0 : db $24, $40, $00, $02

; group08
#_1EC61F: dw   0,   0 : db $0E, $40, $00, $02
#_1EC627: dw   0,   0 : db $0E, $40, $00, $02

; group09
#_1EC62F: dw   0,   0 : db $2A, $00, $00, $02
#_1EC637: dw   0,   0 : db $2A, $00, $00, $02

; group0A
#_1EC63F: dw   0,   0 : db $2A, $00, $00, $02
#_1EC647: dw   0,   0 : db $2A, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_YellowStalfos:
#_1EC64F: LDA.b #$00
#_1EC651: XBA
#_1EC652: LDA.w $0DC0,X

#_1EC655: REP #$20

#_1EC657: ASL A ; x16
#_1EC658: ASL A
#_1EC659: ASL A
#_1EC65A: ASL A
#_1EC65B: ADC.w #.oam_groups
#_1EC65E: STA.b $08

#_1EC660: LDA.b $90
#_1EC662: CLC
#_1EC663: ADC.w #$0004
#_1EC666: STA.b $90

#_1EC668: INC.b $92

#_1EC66A: SEP #$20

#_1EC66C: LDA.b #$02
#_1EC66E: JSR Sprite_DrawMultiple_Bank1E

;---------------------------------------------------------------------------------------------------

#_1EC671: REP #$20

#_1EC673: LDA.b $90
#_1EC675: SEC
#_1EC676: SBC.w #$0004
#_1EC679: STA.b $90

#_1EC67B: DEC.b $92

#_1EC67D: SEP #$20

#_1EC67F: LDA.w $0F00,X
#_1EC682: BNE .no_head

#_1EC684: JSR .draw_head
#_1EC687: JSL SpriteDraw_Shadow_long

.no_head
#_1EC68B: RTS

;---------------------------------------------------------------------------------------------------

.char
#_1EC68C: db $02, $02, $00, $04

.flip
#_1EC690: db $40, $00, $00, $00

;---------------------------------------------------------------------------------------------------

.draw_head
#_1EC694: LDA.w $0DC0,X
#_1EC697: CMP.b #$0A
#_1EC699: BEQ .exit

#_1EC69B: LDA.w $0DA0,X

#_1EC69E: STZ.b $0D

#_1EC6A0: CMP.b #$80
#_1EC6A2: BEQ .exit

#_1EC6A4: STA.b $0C

#_1EC6A6: CMP.b #$00
#_1EC6A8: BPL .positive

#_1EC6AA: DEC.b $0D

.positive
#_1EC6AC: LDA.w $0DB0,X
#_1EC6AF: STA.b $0A
#_1EC6B1: STZ.b $0B

#_1EC6B3: LDY.b #$00

#_1EC6B5: PHX

#_1EC6B6: LDA.w $0EB0,X
#_1EC6B9: TAX

;---------------------------------------------------------------------------------------------------

#_1EC6BA: REP #$20

#_1EC6BC: LDA.b $00
#_1EC6BE: CLC
#_1EC6BF: ADC.b $0C
#_1EC6C1: STA.b ($90),Y

#_1EC6C3: AND.w #$0100
#_1EC6C6: STA.b $0E

#_1EC6C8: LDA.b $02
#_1EC6CA: SEC
#_1EC6CB: SBC.b $0A

#_1EC6CD: INY
#_1EC6CE: STA.b ($90),Y

#_1EC6D0: CLC
#_1EC6D1: ADC.w #$0010

#_1EC6D4: CMP.w #$0100
#_1EC6D7: BCC .on_screen

#_1EC6D9: LDA.w #$00F0
#_1EC6DC: STA.b ($90),Y

.on_screen
#_1EC6DE: SEP #$20

#_1EC6E0: LDA.w .char,X
#_1EC6E3: INY
#_1EC6E4: STA.b ($90),Y

#_1EC6E6: LDA.w .flip,X
#_1EC6E9: INY
#_1EC6EA: ORA.b $05
#_1EC6EC: STA.b ($90),Y

#_1EC6EE: TYA
#_1EC6EF: LSR A
#_1EC6F0: LSR A
#_1EC6F1: TAY

#_1EC6F2: LDA.b #$02
#_1EC6F4: ORA.b $0F
#_1EC6F6: STA.b ($92),Y

#_1EC6F8: PLX

.exit
#_1EC6F9: RTS

;===================================================================================================

SpritePrep_Eyegore:
#_1EC6FA: LDA.w $048E
#_1EC6FD: CMP.b #$0C ; mimic cave
#_1EC6FF: BEQ .become_mimic

#_1EC701: CMP.b #$1B ; pod mimics 2
#_1EC703: BEQ .become_mimic

#_1EC705: CMP.b #$4B ; pod mimics 1
#_1EC707: BEQ .become_mimic

#_1EC709: CMP.b #$6B ; gt mimics
#_1EC70B: BNE .exit

.become_mimic
#_1EC70D: INC.w $0DA0,X

#_1EC710: LDA.w $0E20,X
#_1EC713: CMP.b #$83 ; SPRITE 83
#_1EC715: BNE .exit

#_1EC717: STZ.w $0CAA,X

.exit
#_1EC71A: RTL

;===================================================================================================

Mimic:

.speed_x
; green
#_1EC71B: db   0,  16, -16,   0,   0,  13, -13,   0
#_1EC723: db   0,  13, -13,   0,   0,   0,   0,   0

; red
#_1EC72B: db   0, -24,  24,   0,   0, -16,  16,   0
#_1EC733: db   0, -16,  16,   0,   0,   0,   0,   0

.speed_y
; green
#_1EC73B: db   0,   0,   0,   0, -16,  -5,  -5,   0
#_1EC743: db  16,  13,  13,   0,   0,   0,   0,   0

; red
#_1EC74B: db   0,   0,   0,   0, -24, -16, -16,   0
#_1EC753: db  24,  16,  16,   0,   0,   0,   0,   0

.direction
; green
#_1EC75B: db $00, $00, $01, $00, $03, $03, $03, $00
#_1EC763: db $02, $02, $02, $00, $00, $00, $00, $00

; red
#_1EC76B: db $00, $01, $00, $00, $03, $03, $03, $00
#_1EC773: db $02, $02, $02, $00, $00, $00, $00, $00

.anim_step
; green
#_1EC77B: db $08, $06, $00, $03, $09, $07, $01, $04

; red
#_1EC783: db $08, $06, $00, $03, $09, $07, $02, $05

;===================================================================================================

Mimic_Stationary:
#_1EC78B: STZ.w $0D90,X

#_1EC78E: JSR Sprite_CheckDamageToAndFromLink_Bank1E
#_1EC791: JSR Sprite_CheckTileCollision_Bank1E

#_1EC794: RTS

;===================================================================================================

Sprite_83_GreenEyegore:
Sprite_84_RedEyegore:
#_1EC795: LDA.w $0DA0,X
#_1EC798: BNE Mimic_Main

#_1EC79A: JMP.w Eyegore_Main

;===================================================================================================

Mimic_Main:
#_1EC79D: JSL SpriteDraw_Mimic
#_1EC7A1: JSR Sprite_CheckIfActive_Bank1E
#_1EC7A4: JSR Sprite_CheckIfRecoiling_Bank1E

#_1EC7A7: LDA.w $0E00,X
#_1EC7AA: BEQ .dont_shoot

#_1EC7AC: CMP.b #$08
#_1EC7AE: BNE .dont_shoot

#_1EC7B0: JSL Sprite_SpawnFirePhlegm

;---------------------------------------------------------------------------------------------------

.dont_shoot
#_1EC7B4: LDA.w $0048
#_1EC7B7: CMP.b #$00
#_1EC7B9: BNE Mimic_Stationary

#_1EC7BB: LDY.w $0E20,X

#_1EC7BE: LDA.b $F0
#_1EC7C0: AND.b #$0F
#_1EC7C2: BEQ Mimic_Stationary

#_1EC7C4: CPY.b #$84 ; SPRITE 84
#_1EC7C6: BNE .not_red_mimic

#_1EC7C8: ORA.b #$10

;---------------------------------------------------------------------------------------------------

.not_red_mimic
#_1EC7CA: TAY

#_1EC7CB: LDA.w Mimic_direction,Y
#_1EC7CE: STA.w $0DE0,X

#_1EC7D1: LDA.w Mimic_speed_x,Y
#_1EC7D4: STA.w $0D50,X

#_1EC7D7: LDA.w Mimic_speed_y,Y
#_1EC7DA: STA.w $0D40,X

#_1EC7DD: LDA.w $0E70,X
#_1EC7E0: BNE .tile_collision

#_1EC7E2: JSR Sprite_Move_XY_Bank1E

.tile_collision
#_1EC7E5: JSR Sprite_CheckDamageToAndFromLink_Bank1E
#_1EC7E8: JSR Sprite_CheckTileCollision_Bank1E

#_1EC7EB: INC.w $0E80,X

#_1EC7EE: LDA.w $0E80,X
#_1EC7F1: AND.b #$0C
#_1EC7F3: ORA.w $0DE0,X
#_1EC7F6: TAY

#_1EC7F7: LDA.w Mimic_anim_step,Y
#_1EC7FA: STA.w $0DC0,X

#_1EC7FD: LDA.w $0E20,X
#_1EC800: CMP.b #$84 ; SPRITE 84
#_1EC802: BNE .dont_prep_shot

#_1EC804: JSR Sprite_DirectionToFaceLink_Bank1E

#_1EC807: LDA.b $0F
#_1EC809: CLC
#_1EC80A: ADC.b #$08

#_1EC80C: CMP.b #$10
#_1EC80E: BCC .link_in_sight

#_1EC810: LDA.b $0E
#_1EC812: CLC
#_1EC813: ADC.b #$08

#_1EC815: CMP.b #$10
#_1EC817: BCS .dont_prep_shot

;---------------------------------------------------------------------------------------------------

.link_in_sight
#_1EC819: TYA
#_1EC81A: CMP.w $0DE0,X
#_1EC81D: BNE .dont_prep_shot

#_1EC81F: LDA.w $0D90,X
#_1EC822: AND.b #$1F
#_1EC824: BNE .need_to_charge

#_1EC826: LDA.b #$10
#_1EC828: STA.w $0E00,X

.need_to_charge
#_1EC82B: INC.w $0D90,X

#_1EC82E: RTS

.dont_prep_shot
#_1EC82F: STZ.w $0D90,X

#_1EC832: RTS

;===================================================================================================

Eyegore_Main:
#_1EC833: JSR SpriteDraw_Eyegore
#_1EC836: JSR Sprite_CheckIfActive_Bank1E
#_1EC839: JSR Sprite_CheckIfRecoiling_Bank1E
#_1EC83C: JSR Sprite_CheckDamageToAndFromLink_Bank1E

#_1EC83F: LDA.w $0E60,X
#_1EC842: ORA.b #$40
#_1EC844: STA.w $0E60,X

#_1EC847: LDA.w $0CAA,X
#_1EC84A: ORA.b #$04
#_1EC84C: STA.w $0CAA,X

#_1EC84F: LDA.w $0D80,X
#_1EC852: JSL JumpTableLocal
#_1EC856: dw Eyegore_Dormant
#_1EC858: dw Eyegore_WakingUp
#_1EC85A: dw Eyegore_Chase
#_1EC85C: dw Eyegore_GoToSleep

;===================================================================================================

EyegoreMovementTimer:
#_1EC85E: db  96, 128, 160, 128

;---------------------------------------------------------------------------------------------------

Eyegore_Dormant:
#_1EC862: LDA.w $0DF0,X
#_1EC865: BNE .exit

#_1EC867: JSR Sprite_DirectionToFaceLink_Bank1E

#_1EC86A: LDA.b $0E
#_1EC86C: CLC
#_1EC86D: ADC.b #$30

#_1EC86F: CMP.b #$60
#_1EC871: BCS .exit

#_1EC873: LDA.b $0F
#_1EC875: CLC
#_1EC876: ADC.b #$30

#_1EC878: CMP.b #$60
#_1EC87A: BCS .exit

#_1EC87C: INC.w $0D80,X

#_1EC87F: LDA.b #$3F
#_1EC881: STA.w $0DF0,X

.exit
#_1EC884: RTS

;===================================================================================================

pool Eyegore_WakingUp

.anim_step
#_1EC885: db $02, $02, $02, $02
#_1EC889: db $01, $01, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

Eyegore_WakingUp:
#_1EC88D: LDA.w $0DF0,X
#_1EC890: BNE .waking_up

#_1EC892: JSR Sprite_DirectionToFaceLink_Bank1E
#_1EC895: TYA
#_1EC896: STA.w $0DE0,X

#_1EC899: INC.w $0D80,X

#_1EC89C: JSL GetRandomNumber
#_1EC8A0: AND.b #$03
#_1EC8A2: TAY

#_1EC8A3: LDA.w EyegoreMovementTimer,Y
#_1EC8A6: STA.w $0DF0,X

#_1EC8A9: RTS

;---------------------------------------------------------------------------------------------------

.waking_up
#_1EC8AA: LSR A
#_1EC8AB: LSR A
#_1EC8AC: LSR A
#_1EC8AD: TAY

#_1EC8AE: LDA.w .anim_step,Y
#_1EC8B1: STA.w $0DC0,X

#_1EC8B4: RTS

;===================================================================================================

pool Eyegore_Chase

.anim_step
#_1EC8B5: db $07, $05, $02, $09, $08, $06, $03, $0A
#_1EC8BD: db $07, $05, $02, $09, $08, $06, $04, $0B

pool off

;---------------------------------------------------------------------------------------------------

Eyegore_Chase:
#_1EC8C5: LDA.w $0E60,X
#_1EC8C8: AND.b #$BF
#_1EC8CA: STA.w $0E60,X

#_1EC8CD: LDA.w $0E20,X
#_1EC8D0: CMP.b #$84 ; SPRITE 84
#_1EC8D2: BEQ .not_red

#_1EC8D4: LDA.w $0CAA,X
#_1EC8D7: AND.b #$FB
#_1EC8D9: STA.w $0CAA,X

.not_red
#_1EC8DC: LDA.w $0DF0,X
#_1EC8DF: BNE .continue_chase

#_1EC8E1: LDA.b #$3F
#_1EC8E3: STA.w $0DF0,X

#_1EC8E6: INC.w $0D80,X

#_1EC8E9: STZ.w $0DC0,X

#_1EC8EC: RTS

;---------------------------------------------------------------------------------------------------

.continue_chase
#_1EC8ED: TXA
#_1EC8EE: EOR.b $1A
#_1EC8F0: AND.b #$1F
#_1EC8F2: BNE .dont_turn

#_1EC8F4: JSR Sprite_DirectionToFaceLink_Bank1E
#_1EC8F7: TYA
#_1EC8F8: STA.w $0DE0,X

.dont_turn
#_1EC8FB: LDY.w $0DE0,X

#_1EC8FE: LDA.w Sixteen_X,Y
#_1EC901: STA.w $0D50,X

#_1EC904: LDA.w Sixteen_Y,Y
#_1EC907: STA.w $0D40,X

#_1EC90A: LDA.w $0E70,X
#_1EC90D: BNE .tile_collision

#_1EC90F: JSR Sprite_Move_XY_Bank1E

;---------------------------------------------------------------------------------------------------

.tile_collision
#_1EC912: JSR Sprite_CheckTileCollision_Bank1E

#_1EC915: INC.w $0E80,X

#_1EC918: LDA.w $0E80,X
#_1EC91B: AND.b #$0C
#_1EC91D: ORA.w $0DE0,X
#_1EC920: TAY

#_1EC921: LDA.w .anim_step,Y
#_1EC924: STA.w $0DC0,X

#_1EC927: RTS

;===================================================================================================

pool Eyegore_GoToSleep

.anim_step
#_1EC928: db $00, $00, $01, $01, $02, $02, $02, $02

pool off

;---------------------------------------------------------------------------------------------------

Eyegore_GoToSleep:
#_1EC930: LDA.w $0DF0,X
#_1EC933: BNE .closing_eye

#_1EC935: STZ.w $0D80,X

#_1EC938: LDA.b #$60
#_1EC93A: STA.w $0DF0,X

#_1EC93D: RTS

.closing_eye
#_1EC93E: LSR A
#_1EC93F: LSR A
#_1EC940: LSR A
#_1EC941: TAY

#_1EC942: LDA.w .anim_step,Y
#_1EC945: STA.w $0DC0,X

#_1EC948: RTS

;===================================================================================================

pool SpriteDraw_Eyegore

.oam_groups
; group00
#_1EC949: dw  -4,  -4 : db $A2, $00, $00, $02
#_1EC951: dw   4,  -4 : db $A2, $40, $00, $02
#_1EC959: dw  -4,   4 : db $9C, $00, $00, $02
#_1EC961: dw   4,   4 : db $9C, $40, $00, $02

; group01
#_1EC969: dw  -4,  -4 : db $A4, $00, $00, $02
#_1EC971: dw   4,  -4 : db $A4, $40, $00, $02
#_1EC979: dw  -4,   4 : db $9C, $00, $00, $02
#_1EC981: dw   4,   4 : db $9C, $40, $00, $02

; group02
#_1EC989: dw  -4,  -4 : db $8C, $00, $00, $02
#_1EC991: dw   4,  -4 : db $8C, $40, $00, $02
#_1EC999: dw  -4,   4 : db $9C, $00, $00, $02
#_1EC9A1: dw   4,   4 : db $9C, $40, $00, $02

; group03
#_1EC9A9: dw  -4,  -3 : db $8C, $00, $00, $02
#_1EC9B1: dw  12,  -3 : db $8C, $40, $00, $00
#_1EC9B9: dw  -4,  13 : db $BC, $00, $00, $00
#_1EC9C1: dw   4,   5 : db $8A, $40, $00, $02

; group04
#_1EC9C9: dw  -4,  -3 : db $8C, $00, $00, $00
#_1EC9D1: dw   4,  -3 : db $8C, $40, $00, $02
#_1EC9D9: dw  -4,   5 : db $8A, $00, $00, $02
#_1EC9E1: dw  12,  13 : db $BC, $40, $00, $00

; group05
#_1EC9E9: dw   0,  -4 : db $AA, $00, $00, $02
#_1EC9F1: dw   0,   4 : db $A6, $00, $00, $02
#_1EC9F9: dw   0,  -4 : db $AA, $00, $00, $02
#_1ECA01: dw   0,   4 : db $A6, $00, $00, $02

; group06
#_1ECA09: dw   0,  -3 : db $AA, $00, $00, $02
#_1ECA11: dw   0,   4 : db $A8, $00, $00, $02
#_1ECA19: dw   0,  -3 : db $AA, $00, $00, $02
#_1ECA21: dw   0,   4 : db $A8, $00, $00, $02

; group07
#_1ECA29: dw   0,  -4 : db $AA, $40, $00, $02
#_1ECA31: dw   0,   4 : db $A6, $40, $00, $02
#_1ECA39: dw   0,  -4 : db $AA, $40, $00, $02
#_1ECA41: dw   0,   4 : db $A6, $40, $00, $02

; group08
#_1ECA49: dw   0,  -3 : db $AA, $40, $00, $02
#_1ECA51: dw   0,   4 : db $A8, $40, $00, $02
#_1ECA59: dw   0,  -3 : db $AA, $40, $00, $02
#_1ECA61: dw   0,   4 : db $A8, $40, $00, $02

; group09
#_1ECA69: dw  -4,  -4 : db $8E, $00, $00, $02
#_1ECA71: dw   4,  -4 : db $8E, $40, $00, $02
#_1ECA79: dw  -4,   4 : db $9E, $00, $00, $02
#_1ECA81: dw   4,   4 : db $9E, $40, $00, $02

; group0A
#_1ECA89: dw  -4,  -3 : db $8E, $00, $00, $02
#_1ECA91: dw  12,  -3 : db $8E, $40, $00, $00
#_1ECA99: dw  -4,  13 : db $BD, $00, $00, $00
#_1ECAA1: dw   4,   5 : db $A0, $40, $00, $02

; group0B
#_1ECAA9: dw  -4,  -3 : db $8E, $00, $00, $00
#_1ECAB1: dw   4,  -3 : db $8E, $40, $00, $02
#_1ECAB9: dw  -4,   5 : db $A0, $00, $00, $02
#_1ECAC1: dw  12,  13 : db $BD, $40, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Eyegore:
#_1ECAC9: LDA.b #$00
#_1ECACB: XBA
#_1ECACC: LDA.w $0DC0,X

#_1ECACF: REP #$20

#_1ECAD1: ASL A ; x32
#_1ECAD2: ASL A
#_1ECAD3: ASL A
#_1ECAD4: ASL A
#_1ECAD5: ASL A

#_1ECAD6: ADC.w #.oam_groups
#_1ECAD9: STA.b $08

#_1ECADB: SEP #$20

#_1ECADD: LDA.b #$04
#_1ECADF: JSR Sprite_DrawMultiple_Bank1E

#_1ECAE2: LDA.w $0F00,X
#_1ECAE5: BNE .exit

#_1ECAE7: LDA.b #$0E
#_1ECAE9: JSL SpriteDraw_Shadow_custom_long

.exit
#_1ECAED: RTS

;===================================================================================================

pool SpritePrep_AntifairyCircle

.offset_x_low
#_1ECAEE: db  10,  20,  10

.offset_x_high
#_1ECAF1: db   0,   0,   0

.offset_y_low
#_1ECAF4: db -10,   0,  10

.offset_y_high
#_1ECAF7: db  -1,   0,   0

;---------------------------------------------------------------------------------------------------

.speed_x
#_1ECAFA: db  18,   0, -18

.polarity_x
#_1ECAFD: db $01, $01, $00

.speed_y
#_1ECB00: db   0,  18,   0

.polarity_y
#_1ECB03: db $00, $01, $01

pool off

;---------------------------------------------------------------------------------------------------

SpritePrep_AntifairyCircle:
#_1ECB06: LDA.w $0D10,X
#_1ECB09: SEC
#_1ECB0A: SBC.b #$0A
#_1ECB0C: STA.w $0D10,X

#_1ECB0F: LDA.w $0D30,X
#_1ECB12: SBC.b #$00
#_1ECB14: STA.w $0D30,X

#_1ECB17: LDA.b #$EE
#_1ECB19: STA.w $0D40,X

#_1ECB1C: LDA.b #$00
#_1ECB1E: STA.w $0D50,X

#_1ECB21: LDA.b #$00
#_1ECB23: STA.w $0D90,X

#_1ECB26: LDA.b #$00
#_1ECB28: STA.w $0DA0,X

#_1ECB2B: LDA.b #$02
#_1ECB2D: STA.w $0FB5

;---------------------------------------------------------------------------------------------------

.next_bubble
#_1ECB30: LDA.b #$82 ; SPRITE 82
#_1ECB32: JSL Sprite_SpawnDynamically
#_1ECB36: BMI .no_space

#_1ECB38: PHX

#_1ECB39: LDX.w $0FB5

#_1ECB3C: LDA.b $00
#_1ECB3E: CLC
#_1ECB3F: ADC.l .offset_x_low,X
#_1ECB43: STA.w $0D10,Y

#_1ECB46: LDA.b $01
#_1ECB48: ADC.l .offset_x_high,X
#_1ECB4C: STA.w $0D30,Y

#_1ECB4F: LDA.b $02
#_1ECB51: CLC
#_1ECB52: ADC.l .offset_y_low,X
#_1ECB56: STA.w $0D00,Y

#_1ECB59: LDA.b $03
#_1ECB5B: ADC.l .offset_y_high,X
#_1ECB5F: STA.w $0D20,Y

#_1ECB62: LDA.l .speed_x,X
#_1ECB66: STA.w $0D50,Y

#_1ECB69: LDA.l .speed_y,X
#_1ECB6D: STA.w $0D40,Y

#_1ECB70: LDA.l .polarity_x,X
#_1ECB74: STA.w $0D90,Y

#_1ECB77: LDA.l .polarity_y,X
#_1ECB7B: STA.w $0DA0,Y

#_1ECB7E: PLX

.no_space
#_1ECB7F: DEC.w $0FB5
#_1ECB82: BPL .next_bubble

#_1ECB84: RTL

;===================================================================================================

UNREACHABLE_1ECB85:
#_1ECB85: db $00, $01, $00, $01, $00, $00, $40, $40

;===================================================================================================

pool Sprite_82_AntifairyCircle

.speed
#_1ECB8D: db   1,   -1

.speed_max
#_1ECB8F: db  18,  -18

pool off

;---------------------------------------------------------------------------------------------------

Sprite_82_AntifairyCircle:
#_1ECB91: JSL SpriteDraw_Antfairy
#_1ECB95: JSR Sprite_CheckIfActive_Bank1E

#_1ECB98: LDA.w $0D90,X
#_1ECB9B: AND.b #$01
#_1ECB9D: TAY

#_1ECB9E: LDA.w $0D50,X
#_1ECBA1: CLC
#_1ECBA2: ADC.w .speed,Y
#_1ECBA5: STA.w $0D50,X

#_1ECBA8: CMP.w .speed_max,Y
#_1ECBAB: BNE .not_at_max_x

#_1ECBAD: INC.w $0D90,X

.not_at_max_x
#_1ECBB0: LDA.w $0DA0,X
#_1ECBB3: AND.b #$01
#_1ECBB5: TAY

#_1ECBB6: LDA.w $0D40,X
#_1ECBB9: CLC
#_1ECBBA: ADC.w .speed,Y
#_1ECBBD: STA.w $0D40,X

#_1ECBC0: CMP.w .speed_max,Y
#_1ECBC3: BNE .not_at_max_y

#_1ECBC5: INC.w $0DA0,X

.not_at_max_y
#_1ECBC8: JSR Sprite_Move_XY_Bank1E

#_1ECBCB: LDA.w $0D50,X
#_1ECBCE: BEQ .keep_circling

#_1ECBD0: LDA.w $0D40,X
#_1ECBD3: BEQ .keep_circling

#_1ECBD5: JSL CheckIfRoomIsClear
#_1ECBD9: BCC .keep_circling

#_1ECBDB: LDA.b #$15 ; SPRITE 15
#_1ECBDD: STA.w $0E20,X

#_1ECBE0: LDA.b #$10
#_1ECBE2: LDY.w $0D50,X
#_1ECBE5: BPL .use_positive_x

#_1ECBE7: LDA.b #$F0

.use_positive_x
#_1ECBE9: STA.w $0D50,X

#_1ECBEC: LDA.b #$10

#_1ECBEE: LDY.w $0D40,X
#_1ECBF1: BPL .use_positive_y

#_1ECBF3: LDA.b #$F0

.use_positive_y
#_1ECBF5: STA.w $0D40,X

.keep_circling
#_1ECBF8: JSR Sprite_CheckDamageToLink_Bank1E

#_1ECBFB: RTS

;===================================================================================================

Sprite_81_Hover:
#_1ECBFC: LDA.w $0B89,X
#_1ECBFF: ORA.b #$30
#_1ECC01: STA.w $0B89,X

#_1ECC04: JSL SpriteDraw_SingleLarge_long
#_1ECC08: JSR Sprite_CheckIfActive_Bank1E

#_1ECC0B: LDA.w $0EA0,X
#_1ECC0E: BEQ .not_recoiling

#_1ECC10: STZ.w $0D80,X

.not_recoiling
#_1ECC13: JSR Sprite_CheckIfRecoiling_Bank1E
#_1ECC16: JSR Sprite_CheckDamageToAndFromLink_Bank1E

#_1ECC19: LDA.w $0E70,X
#_1ECC1C: BNE .tile_collision

#_1ECC1E: JSR Sprite_Move_XY_Bank1E

.tile_collision
#_1ECC21: JSR Sprite_CheckTileCollision_Bank1E

#_1ECC24: INC.w $0E80,X

#_1ECC27: LDA.w $0E80,X
#_1ECC2A: LSR A
#_1ECC2B: LSR A
#_1ECC2C: LSR A
#_1ECC2D: AND.b #$02
#_1ECC2F: STA.w $0DC0,X

#_1ECC32: LDA.w $0D80,X
#_1ECC35: JSL JumpTableLocal
#_1ECC39: dw Hover_Idle
#_1ECC3B: dw Hover_Move

;===================================================================================================

pool Hover_Idle

.flip
#_1ECC3D: db $40, $00, $40, $00

pool off

;---------------------------------------------------------------------------------------------------

Hover_Idle:
#_1ECC41: LDA.w $0DF0,X
#_1ECC44: BNE .exit

#_1ECC46: INC.w $0D80,X

#_1ECC49: JSR Sprite_IsRightOfLink_Bank1E
#_1ECC4C: STY.b $0C

#_1ECC4E: JSR Sprite_IsBelowLink_Bank1E

#_1ECC51: TYA
#_1ECC52: ASL A
#_1ECC53: ORA.b $0C
#_1ECC55: STA.w $0DE0,X

#_1ECC58: TAY

#_1ECC59: LDA.w $0F50,X
#_1ECC5C: AND.b #$BF
#_1ECC5E: ORA.w .flip,Y
#_1ECC61: STA.w $0F50,X

#_1ECC64: JSL GetRandomNumber
#_1ECC68: AND.b #$0F
#_1ECC6A: ADC.b #$0C
#_1ECC6C: STA.w $0DF0,X

#_1ECC6F: JSR Sprite_ZeroVelocity_XY_Bank1E

.exit
#_1ECC72: RTS

;===================================================================================================

pool Hover_Move

.accel_x
#_1ECC73: db  1, -1,  1, -1

.accel_y
#_1ECC77: db  1,  1, -1, -1

.decel_x
#_1ECC7B: db -1,  1, -1,  1

.decel_y
#_1ECC7F: db -1, -1,  1,  1

pool off

;---------------------------------------------------------------------------------------------------

Hover_Move:
#_1ECC83: LDA.w $0DF0,X
#_1ECC86: BEQ .decelerate

#_1ECC88: LDY.w $0DE0,X

#_1ECC8B: LDA.w $0D50,X
#_1ECC8E: CLC
#_1ECC8F: ADC.w .accel_x,Y
#_1ECC92: STA.w $0D50,X

#_1ECC95: LDA.w $0D40,X
#_1ECC98: CLC
#_1ECC99: ADC.w .accel_y,Y
#_1ECC9C: STA.w $0D40,X

#_1ECC9F: LDA.w $0E80,X
#_1ECCA2: LSR A
#_1ECCA3: LSR A
#_1ECCA4: LSR A
#_1ECCA5: AND.b #$01
#_1ECCA7: STA.w $0DC0,X

#_1ECCAA: RTS

;---------------------------------------------------------------------------------------------------

.decelerate
#_1ECCAB: LDY.w $0DE0,X

#_1ECCAE: LDA.w $0D50,X
#_1ECCB1: CLC
#_1ECCB2: ADC.w .decel_x,Y
#_1ECCB5: STA.w $0D50,X

#_1ECCB8: LDA.w $0D40,X
#_1ECCBB: CLC
#_1ECCBC: ADC.w .decel_y,Y
#_1ECCBF: STA.w $0D40,X

#_1ECCC2: BNE .exit

#_1ECCC4: STZ.w $0D80,X

#_1ECCC7: LDA.b #$40
#_1ECCC9: STA.w $0DF0,X

.exit
#_1ECCCC: RTS

;===================================================================================================

Palettes_Crystal:
; #RRGGBB :  000000, 080870, 181888, 2828A8, 3838B8, 4848D8, 6868F0, 8080F8
#_1ECCCD: dw  $0000,  $3821,  $4463,  $54A5,  $5CE7,  $6D29,  $79AD,  $7E10

;---------------------------------------------------------------------------------------------------

CrystalCutscene_Initialize:
#_1ECCDD: LDA.b #$33 ; color math for translucensy
#_1ECCDF: STA.b $9A

#_1ECCE1: LDA.b #$00
#_1ECCE3: STA.l $7EC007
#_1ECCE7: STA.l $7EC009

#_1ECCEB: PHX

#_1ECCEC: JSL Palette_AssertTranslucencySwap
#_1ECCF0: JSL PaletteFilter_Crystal

#_1ECCF4: PLX

#_1ECCF5: REP #$20

#_1ECCF7: LDA.l Palettes_Crystal+0
#_1ECCFB: STA.l $7EC5E0

#_1ECCFF: LDA.l Palettes_Crystal+2
#_1ECD03: STA.l $7EC5E2

#_1ECD07: LDA.l Palettes_Crystal+4
#_1ECD0B: STA.l $7EC5E4

#_1ECD0F: LDA.l Palettes_Crystal+6
#_1ECD13: STA.l $7EC5E6

#_1ECD17: LDA.l Palettes_Crystal+8
#_1ECD1B: STA.l $7EC5E8

#_1ECD1F: LDA.l Palettes_Crystal+10
#_1ECD23: STA.l $7EC5EA

#_1ECD27: LDA.l Palettes_Crystal+12
#_1ECD2B: STA.l $7EC5EC

#_1ECD2F: LDA.l Palettes_Crystal+14
#_1ECD33: STA.l $7EC5EE

#_1ECD37: SEP #$30

#_1ECD39: INC.b $15

#_1ECD3B: JSR CrystalCutscene_SpawnMaiden
#_1ECD3E: JSR CrystalCutscene_InitializePolyhedral

#_1ECD41: RTL

;===================================================================================================

CrystalCutscene_SpawnMaiden:
#_1ECD42: LDY.b #$0F

#_1ECD44: LDA.b #$00

.next_sprite
#_1ECD46: STA.w $0DD0,Y

#_1ECD49: DEY
#_1ECD4A: BPL .next_sprite

;---------------------------------------------------------------------------------------------------

#_1ECD4C: LDA.b #$AB ; SPRITE AB
#_1ECD4E: JSL Sprite_SpawnDynamically

#_1ECD52: LDA.b $23
#_1ECD54: STA.w $0D30,Y

#_1ECD57: LDA.b $21
#_1ECD59: STA.w $0D20,Y

#_1ECD5C: LDA.b #$78
#_1ECD5E: STA.w $0D10,Y

#_1ECD61: LDA.b #$7C
#_1ECD63: STA.w $0D00,Y

#_1ECD66: LDA.b #$01
#_1ECD68: STA.w $0DE0,Y

#_1ECD6B: LDA.b #$0B
#_1ECD6D: STA.w $0F50,Y

#_1ECD70: LDA.b #$00
#_1ECD72: STA.w $0E80,Y
#_1ECD75: STA.w $0F20,Y

#_1ECD78: PHY

#_1ECD79: JSL Ancilla_TerminateSelectInteractives

#_1ECD7D: STZ.w $02E9

#_1ECD80: TYA

#_1ECD81: PLY

#_1ECD82: STA.w $0D90,Y

;---------------------------------------------------------------------------------------------------

; If we're in turtle rock, use zelda graphics
#_1ECD85: LDA.w $040C
#_1ECD88: CMP.b #$18
#_1ECD8A: BNE .not_zelda

#_1ECD8C: LDA.b #$09
#_1ECD8E: STA.w $0F50,Y

#_1ECD91: LDA.b #$01 ; FOLLOWER 01

#_1ECD93: BRA .load_gfx

.not_zelda
#_1ECD95: LDA.b #$06 ; FOLLOWER 06

.load_gfx
#_1ECD97: STA.l $7EF3CC

#_1ECD9B: PHX

#_1ECD9C: JSL LoadFollowerGraphics

#_1ECDA0: PLX

#_1ECDA1: LDA.b #$00
#_1ECDA3: STA.l $7EF3CC

#_1ECDA7: STZ.w $0428

#_1ECDAA: REP #$20

#_1ECDAC: LDA.b $22
#_1ECDAE: SEC
#_1ECDAF: SBC.b $E2
#_1ECDB1: EOR.w #$FFFF
#_1ECDB4: SEC
#_1ECDB5: ADC.w #$0079
#_1ECDB8: STA.w $0422

#_1ECDBB: LDA.b $E6
#_1ECDBD: AND.w #$00FF
#_1ECDC0: STA.b $00

#_1ECDC2: LDA.w #$0030
#_1ECDC5: SEC
#_1ECDC6: SBC.b $00
#_1ECDC8: STA.w $0424

#_1ECDCB: SEP #$30

#_1ECDCD: LDA.b #$01
#_1ECDCF: STA.w $0428

#_1ECDD2: RTS

;===================================================================================================

CrystalCutscene_InitializePolyhedral:
#_1ECDD3: LDA.b #$9C
#_1ECDD5: STA.w $1F02

#_1ECDD8: LDA.b #$01
#_1ECDDA: STA.w $1F01
#_1ECDDD: STA.w $012A
#_1ECDE0: STA.w $1F00

#_1ECDE3: LDA.b #$20
#_1ECDE5: STA.w $1F06
#_1ECDE8: STA.w $1F07
#_1ECDEB: STA.w $1F08

#_1ECDEE: STZ.w $1F03

#_1ECDF1: LDA.b #$10
#_1ECDF3: STA.w $1F04

#_1ECDF6: STZ.b $1D
#_1ECDF8: LDA.b #$16

#_1ECDFA: STA.b $1C

#_1ECDFC: RTS

;===================================================================================================

Sprite_AB_CrystalMaiden:
#_1ECDFD: REP #$20

#_1ECDFF: LDA.w $0FD8
#_1ECE02: SEC
#_1ECE03: SBC.w $0422
#_1ECE06: STA.w $0FD8

#_1ECE09: LDA.w $0FDA
#_1ECE0C: SEC
#_1ECE0D: SBC.w $0424
#_1ECE10: STA.w $0FDA

#_1ECE13: SEP #$30

#_1ECE15: LDA.w $0D80,X
#_1ECE18: CMP.b #$03
#_1ECE1A: BCC .invisible

#_1ECE1C: JSL SpriteDraw_Maiden

.invisible
#_1ECE20: LDA.b #$01
#_1ECE22: STA.w $012A

#_1ECE25: LDA.w $1F00
#_1ECE28: BNE .exit

#_1ECE2A: JSR CrystalMaiden_RunCutscene

#_1ECE2D: LDA.b #$01
#_1ECE2F: STA.w $1F00

.exit
#_1ECE32: RTS

;===================================================================================================

CrystalMaiden_RunCutscene:
#_1ECE33: INC.w $0E90,X

#_1ECE36: LDA.w $1F05
#_1ECE39: CLC
#_1ECE3A: ADC.b #$06
#_1ECE3C: STA.w $1F05

#_1ECE3F: LDA.b $11
#_1ECE41: BEQ .continue

#_1ECE43: RTS

.continue
#_1ECE44: LDA.w $0D80,X
#_1ECE47: JSL JumpTableLocal
#_1ECE4B: dw CrystalMaiden_DisableSubscreen
#_1ECE4D: dw CrystalMaiden_EnableSubscreen
#_1ECE4F: dw CrystalMaiden_WaitForCrystalGrowth
#_1ECE51: dw CrystalMaiden_Emerge
#_1ECE53: dw CrystalMaiden_DelaySpeech
#_1ECE55: dw CrystalMaiden_GiveSpeech
#_1ECE57: dw CrystalMaiden_DoYouUnderstand
#_1ECE59: dw CrystalMaiden_GoodLuckKid
#_1ECE5B: dw CrystalMaiden_KickOutOfDungeon

;===================================================================================================
; Why does this routine even exist?
;===================================================================================================
CrystalMaiden_DisableSubscreen:
#_1ECE5D: STZ.b $1D

#_1ECE5F: INC.w $0D80,X

#_1ECE62: RTS

;===================================================================================================

CrystalMaiden_EnableSubscreen:
#_1ECE63: LDA.b #$01
#_1ECE65: STA.b $1D

#_1ECE67: INC.w $0D80,X

#_1ECE6A: RTS

;===================================================================================================

CrystalMaiden_WaitForCrystalGrowth:
#_1ECE6B: LDA.w $1F02
#_1ECE6E: CMP.b #$06
#_1ECE70: BCS .wait

#_1ECE72: STZ.w $1F02

#_1ECE75: INC.w $0D80,X

#_1ECE78: RTS

.wait
#_1ECE79: SBC.b #$03
#_1ECE7B: STA.w $1F02

#_1ECE7E: CMP.b #$40
#_1ECE80: BCC .exit

#_1ECE82: PHX

#_1ECE83: LDA.w $0D90,X
#_1ECE86: TAX

#_1ECE87: JSL AncillaAdd_SwordChargeSparkle_preserveX

#_1ECE8B: PLX

.exit
#_1ECE8C: RTS

;===================================================================================================
; I don't get the point of this specific, duplicated subroutine either.
;===================================================================================================
CrystalMaiden_Emerge:
#_1ECE8D: INC.w $0D80,X

;===================================================================================================

CrystalMaiden_DelaySpeech:
#_1ECE90: LDA.w $0E90,X
#_1ECE93: AND.b #$01
#_1ECE95: BNE .exit

#_1ECE97: PHX

#_1ECE98: JSL PaletteFilter_SP5F

#_1ECE9C: PLX

#_1ECE9D: LDA.l $7EC007
#_1ECEA1: BNE .exit

#_1ECEA3: INC.w $0D80,X

#_1ECEA6: LDA.b #$01
#_1ECEA8: STA.w $02E4

#_1ECEAB: STZ.w $02D8
#_1ECEAE: STZ.w $02DA

#_1ECEB1: STZ.b $2E
#_1ECEB3: STZ.b $2F

.exit
#_1ECEB5: RTS

;===================================================================================================

CrystalMaiden_Messages:
#_1ECEB6: dw $0131 ; Message 0131 - Swamp
#_1ECEB8: dw $0130 ; Message 0130 - PoD
#_1ECEBA: dw $0135 ; Message 0135 - Mire
#_1ECEBC: dw $0132 ; Message 0132 - Skull
#_1ECEBE: dw $0134 ; Message 0134 - Ice
#_1ECEC0: dw $0130 ; Message 0130 - Hera
#_1ECEC2: dw $0133 ; Message 0133 - Thieves
#_1ECEC4: dw $0136 ; Message 0136 - Turtle Rock
#_1ECEC6: dw $013A ; Message 013A - Turtle Rock every crystal

;---------------------------------------------------------------------------------------------------

CrystalMaiden_GiveSpeech:
#_1ECEC8: LDA.w $040C
#_1ECECB: SEC
#_1ECECC: SBC.b #$0A
#_1ECECE: TAY

; Is it pod?
#_1ECECF: CPY.b #$02
#_1ECED1: BNE .dont_update_map

#_1ECED3: LDA.l $7EF3C7

; don't change to crystals icon if we're past that
#_1ECED7: CMP.b #$07
#_1ECED9: BCS .dont_update_map

#_1ECEDB: LDA.b #$07
#_1ECEDD: STA.l $7EF3C7

.dont_update_map
; Is it turtle rock?
#_1ECEE1: CPY.b #$0E
#_1ECEE3: BNE .not_special_zelda_message

#_1ECEE5: LDA.l $7EF37A
#_1ECEE9: AND.b #$7F
#_1ECEEB: CMP.b #$7F
#_1ECEED: BEQ .not_special_zelda_message

#_1ECEEF: LDY.b #$10

.not_special_zelda_message
#_1ECEF1: LDA.w CrystalMaiden_Messages+0,Y
#_1ECEF4: XBA

#_1ECEF5: LDA.w CrystalMaiden_Messages+1,Y
#_1ECEF8: TAY

#_1ECEF9: XBA

#_1ECEFA: JSL Sprite_ShowMessageUnconditional

#_1ECEFE: INC.w $0D80,X

; Why wasn't this done with the above?
#_1ECF01: LDA.l $7EF37A
#_1ECF05: AND.b #$7F
#_1ECF07: CMP.b #$7F
#_1ECF09: BNE .exit

; map icon to gt
#_1ECF0B: LDA.b #$08
#_1ECF0D: STA.l $7EF3C7

.exit
#_1ECF11: RTS

;===================================================================================================

CrystalMaiden_DoYouUnderstand:
; Message 0138
#_1ECF12: LDA.b #$38
#_1ECF14: LDY.b #$01
#_1ECF16: JSL Sprite_ShowMessageUnconditional

#_1ECF1A: INC.w $0D80,X

#_1ECF1D: RTS

;===================================================================================================

CrystalMaiden_GoodLuckKid:
#_1ECF1E: LDA.w $1CE8
#_1ECF21: BEQ .speech_was_CRYSTAL_clear

#_1ECF23: LDA.b #$05
#_1ECF25: STA.w $0D80,X

#_1ECF28: RTS

.speech_was_CRYSTAL_clear
; Message 0137
#_1ECF29: LDA.b #$37
#_1ECF2B: LDY.b #$01
#_1ECF2D: JSL Sprite_ShowMessageUnconditional

#_1ECF31: INC.w $0D80,X

#_1ECF34: RTS

;===================================================================================================

CrystalMaiden_KickOutOfDungeon:
#_1ECF35: STZ.b $1D

#_1ECF37: PHX

#_1ECF38: JSL PrepareDungeonExitFromBossFight

#_1ECF3C: PLX

#_1ECF3D: STZ.w $0DD0,X

#_1ECF40: RTS

;===================================================================================================

Sprite_7D_BigSpike:
#_1ECF41: JSR SpriteDraw_BigSpike
#_1ECF44: JSR Sprite_CheckIfActive_Bank1E
#_1ECF47: JSR Sprite_CheckDamageToAndFromLink_Bank1E

#_1ECF4A: LDA.w $0D80,X
#_1ECF4D: BNE .in_motion

#_1ECF4F: JSR Sprite_DirectionToFaceLink_Bank1E
#_1ECF52: TYA
#_1ECF53: STA.w $0DE0,X

#_1ECF56: LDA.b $0F
#_1ECF58: CLC
#_1ECF59: ADC.b #$10

#_1ECF5B: CMP.b #$20
#_1ECF5D: BCS .not_close ; why not use BCC next time?
#_1ECF5F: BRA .start_movement

.not_close
#_1ECF61: LDA.b $0E
#_1ECF63: CLC
#_1ECF64: ADC.b #$10

#_1ECF66: CMP.b #$20
#_1ECF68: BCS .also_not_close

.start_movement
#_1ECF6A: LDA.w .timer,Y
#_1ECF6D: STA.w $0DF0,X

#_1ECF70: INC.w $0D80,X

#_1ECF73: LDA.w .forward_speed_x,Y
#_1ECF76: STA.w $0D50,X

#_1ECF79: LDA.w .forward_speed_y,Y
#_1ECF7C: STA.w $0D40,X

.also_not_close
#_1ECF7F: RTS

;---------------------------------------------------------------------------------------------------

.forward_speed_x
#_1ECF80: db  32, -32,   0,   0

.backward_speed_x
#_1ECF84: db -16,  16,   0,   0

.forward_speed_y
#_1ECF88: db   0,   0,  32, -32

.backward_speed_y
#_1ECF8C: db   0,   0, -16,  16

.timer
#_1ECF90: db  64,  64,  56,  56

;===================================================================================================

.in_motion
#_1ECF94: CMP.b #$01
#_1ECF96: BNE .retracting

#_1ECF98: JSR Sprite_CheckTileCollision_Bank1E
#_1ECF9B: BNE .tile_collision

#_1ECF9D: LDA.w $0DF0,X
#_1ECFA0: BNE .still_moving

.tile_collision
#_1ECFA2: INC.w $0D80,X

#_1ECFA5: LDA.b #$60
#_1ECFA7: STA.w $0DF0,X

.still_moving
#_1ECFAA: JSR Sprite_Move_XY_Bank1E

#_1ECFAD: RTS

;---------------------------------------------------------------------------------------------------

.retracting
#_1ECFAE: LDA.w $0DF0,X
#_1ECFB1: BNE .exit

#_1ECFB3: LDY.w $0DE0,X

#_1ECFB6: LDA.w .backward_speed_x,Y
#_1ECFB9: STA.w $0D50,X

#_1ECFBC: LDA.w .backward_speed_y,Y
#_1ECFBF: STA.w $0D40,X

#_1ECFC2: JSR Sprite_Move_XY_Bank1E

#_1ECFC5: LDA.w $0D10,X
#_1ECFC8: CMP.w $0D90,X
#_1ECFCB: BNE .exit

#_1ECFCD: LDA.w $0D00,X
#_1ECFD0: CMP.w $0DB0,X
#_1ECFD3: BNE .exit

#_1ECFD5: STZ.w $0D80,X

.exit
#_1ECFD8: RTS

;===================================================================================================

pool SpriteDraw_BigSpike

.oam_groups
#_1ECFD9: dw  -8,  -8 : db $C4, $00, $00, $02
#_1ECFE1: dw   8,  -8 : db $C4, $40, $00, $02
#_1ECFE9: dw  -8,   8 : db $C4, $80, $00, $02
#_1ECFF1: dw   8,   8 : db $C4, $C0, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_BigSpike:
#_1ECFF9: REP #$20

#_1ECFFB: LDA.w #.oam_groups
#_1ECFFE: STA.b $08

#_1ED000: LDA.w #$0004
#_1ED003: STA.b $06

#_1ED005: SEP #$30

#_1ED007: JSL Sprite_DrawMultiple_preset_quantity

#_1ED00B: RTS

;===================================================================================================

pool Firebar

.offset_low
#_1ED00C: db -2,  2
#_1ED00E: db -1,  1

.offset_high
#_1ED010: db -1,  0
#_1ED012: db -1,  0

pool off

;---------------------------------------------------------------------------------------------------

Sprite_7E_Firebar_Clockwise:
Sprite_7F_Firebar_Counterclockwise:
#_1ED014: JSR Firebar_Main
#_1ED017: JSR Sprite_CheckIfActive_Bank1E

#_1ED01A: INC.w $0E80,X

#_1ED01D: LDA.w $0E20,X
#_1ED020: SEC
#_1ED021: SBC.b #$7E
#_1ED023: TAY

; !HARDCODED ice palace speeds
#_1ED024: LDA.w $040C
#_1ED027: CMP.b #$12
#_1ED029: BNE .not_ice_palace

#_1ED02B: INY
#_1ED02C: INY

.not_ice_palace
#_1ED02D: LDA.w $0D90,X
#_1ED030: CLC
#_1ED031: ADC.w Firebar_offset_low,Y
#_1ED034: STA.w $0D90,X

#_1ED037: LDA.w $0DA0,X
#_1ED03A: ADC.w Firebar_offset_high,Y
#_1ED03D: AND.b #$01
#_1ED03F: STA.w $0DA0,X

#_1ED042: RTS

;===================================================================================================

Firebar_Main:
#_1ED043: JSR Sprite_PrepOAMCoord_Bank1E

#_1ED046: LDA.b $05
#_1ED048: STA.w $0FB6

#_1ED04B: LDA.b $00
#_1ED04D: STA.w $0FA8

#_1ED050: LDA.b $02
#_1ED052: STA.w $0FA9

#_1ED055: LDA.w $0D90,X
#_1ED058: STA.b $00

#_1ED05A: LDA.w $0DA0,X
#_1ED05D: STA.b $01

; This determines the spacing of the fire bar
#_1ED05F: LDA.b #$40
#_1ED061: STA.b $0F

#_1ED063: PHX

;---------------------------------------------------------------------------------------------------

#_1ED064: REP #$30

#_1ED066: LDA.b $00
#_1ED068: AND.w #$01FF

#_1ED06B: LSR A ; /64
#_1ED06C: LSR A
#_1ED06D: LSR A
#_1ED06E: LSR A
#_1ED06F: LSR A
#_1ED070: LSR A

#_1ED071: STA.b $0A

#_1ED073: LDA.b $00
#_1ED075: CLC
#_1ED076: ADC.w #$0080
#_1ED079: AND.w #$01FF
#_1ED07C: STA.b $02

#_1ED07E: LDA.b $00
#_1ED080: AND.w #$00FF
#_1ED083: ASL A
#_1ED084: TAX

#_1ED085: LDA.l SmoothCurve,X
#_1ED089: STA.b $04

#_1ED08B: LDA.b $02
#_1ED08D: AND.w #$00FF
#_1ED090: ASL A
#_1ED091: TAX

#_1ED092: LDA.l SmoothCurve,X
#_1ED096: STA.b $06

;---------------------------------------------------------------------------------------------------

#_1ED098: SEP #$30

#_1ED09A: PLX

#_1ED09B: LDA.b $04
#_1ED09D: STA.w WRMPYA

#_1ED0A0: LDA.b $0F

#_1ED0A2: LDY.b $05
#_1ED0A4: BNE .nonzero_a

#_1ED0A6: STA.w WRMPYB

#_1ED0A9: JSR NOP8

#_1ED0AC: ASL.w RDMPYL ; carry = round up
#_1ED0AF: LDA.w RDMPYH
#_1ED0B2: ADC.b #$00

.nonzero_a
#_1ED0B4: STA.b $0E

#_1ED0B6: LSR.b $01
#_1ED0B8: BCC .dont_invert_a

#_1ED0BA: EOR.b #$FF
#_1ED0BC: INC A

.dont_invert_a
#_1ED0BD: STA.b $04

;---------------------------------------------------------------------------------------------------

#_1ED0BF: LDA.b $06
#_1ED0C1: STA.w WRMPYA

#_1ED0C4: LDA.b $0F

#_1ED0C6: LDY.b $07
#_1ED0C8: BNE .nonzero_b

#_1ED0CA: STA.w WRMPYB

#_1ED0CD: JSR NOP8

#_1ED0D0: ASL.w RDMPYL ; carry = round up
#_1ED0D3: LDA.w RDMPYH
#_1ED0D6: ADC.b #$00

.nonzero_b
#_1ED0D8: STA.b $0F

#_1ED0DA: LSR.b $03
#_1ED0DC: BCC .dont_invert_b

#_1ED0DE: EOR.b #$FF
#_1ED0E0: INC A

.dont_invert_b
#_1ED0E1: STA.b $06

;---------------------------------------------------------------------------------------------------

#_1ED0E3: LDA.w $0E80,X

#_1ED0E6: ASL A ; x16
#_1ED0E7: ASL A
#_1ED0E8: ASL A
#_1ED0E9: ASL A

#_1ED0EA: AND.b #$C0
#_1ED0EC: ORA.w $0FB6
#_1ED0EF: STA.b $0D

#_1ED0F1: LDY.b #$00

#_1ED0F3: LDA.b $04
#_1ED0F5: CLC
#_1ED0F6: ADC.w $0FA8
#_1ED0F9: STA.b ($90),Y

#_1ED0FB: LDA.b $06
#_1ED0FD: CLC
#_1ED0FE: ADC.w $0FA9

#_1ED101: INY
#_1ED102: STA.b ($90),Y

#_1ED104: LDA.b #$28
#_1ED106: INY
#_1ED107: STA.b ($90),Y

#_1ED109: LDA.b $0D
#_1ED10B: INY
#_1ED10C: STA.b ($90),Y

#_1ED10E: LDA.b #$02
#_1ED110: STA.b ($92)

;---------------------------------------------------------------------------------------------------

#_1ED112: LDY.b #$04

#_1ED114: PHX

#_1ED115: LDX.b #$02

.next_object_a
#_1ED117: LDA.b $0E
#_1ED119: STA.w WRMPYA

#_1ED11C: LDA.w .mutliplier,X
#_1ED11F: STA.w WRMPYB

#_1ED122: JSR NOP8

#_1ED125: LDA.b $04
#_1ED127: ASL A
#_1ED128: LDA.w RDMPYH
#_1ED12B: BCC .dont_invert_c

#_1ED12D: EOR.b #$FF
#_1ED12F: INC A

.dont_invert_c
#_1ED130: CLC
#_1ED131: ADC.w $0FA8
#_1ED134: STA.b ($90),Y

#_1ED136: LDA.b $0F
#_1ED138: STA.w WRMPYA

#_1ED13B: LDA.w .mutliplier,X
#_1ED13E: STA.w WRMPYB

#_1ED141: JSR NOP8

#_1ED144: LDA.b $06
#_1ED146: ASL A
#_1ED147: LDA.w RDMPYH
#_1ED14A: BCC .dont_invert_d

#_1ED14C: EOR.b #$FF
#_1ED14E: INC A

.dont_invert_d
#_1ED14F: CLC
#_1ED150: ADC.w $0FA9

#_1ED153: INY
#_1ED154: STA.b ($90),Y

#_1ED156: LDA.b #$28
#_1ED158: INY
#_1ED159: STA.b ($90),Y

#_1ED15B: LDA.b $0D
#_1ED15D: INY
#_1ED15E: STA.b ($90),Y

#_1ED160: PHY

#_1ED161: TYA
#_1ED162: LSR A
#_1ED163: LSR A
#_1ED164: TAY

#_1ED165: LDA.b #$02
#_1ED167: STA.b ($92),Y

#_1ED169: PLY
#_1ED16A: INY

#_1ED16B: DEX
#_1ED16C: BPL .next_object_a

;---------------------------------------------------------------------------------------------------

#_1ED16E: PLX

#_1ED16F: LDY.b #$FF
#_1ED171: LDA.b #$03
#_1ED173: JSL Sprite_CorrectOAMEntries_long

#_1ED177: TXA
#_1ED178: EOR.b $1A
#_1ED17A: AND.b #$03

#_1ED17C: ORA.b $11
#_1ED17E: ORA.w $0FC1
#_1ED181: BNE .exit

#_1ED183: LDY.b #$00

;---------------------------------------------------------------------------------------------------

.next_segment
#_1ED185: PHY

#_1ED186: TYA
#_1ED187: LSR A
#_1ED188: LSR A
#_1ED189: TAY

#_1ED18A: LDA.b ($92),Y
#_1ED18C: PLY
#_1ED18D: AND.b #$01
#_1ED18F: BNE .no_damage

#_1ED191: LDA.b ($90),Y
#_1ED193: CLC
#_1ED194: ADC.b $E2

#_1ED196: SEC
#_1ED197: SBC.b $22

#_1ED199: CLC
#_1ED19A: ADC.b #$0C

#_1ED19C: CMP.b #$18
#_1ED19E: BCS .no_damage

#_1ED1A0: INY
#_1ED1A1: LDA.b ($90),Y

#_1ED1A3: DEY

#_1ED1A4: CMP.b #$F0
#_1ED1A6: BCS .no_damage

#_1ED1A8: CLC
#_1ED1A9: ADC.b $E8

#_1ED1AB: SEC
#_1ED1AC: SBC.b $20

#_1ED1AE: CLC
#_1ED1AF: ADC.b #$04

#_1ED1B1: CMP.b #$10
#_1ED1B3: BCS .no_damage

#_1ED1B5: PHY
#_1ED1B6: JSL Sprite_AttemptDamageToLinkPlusRecoil_long
#_1ED1BA: PLY

.no_damage
#_1ED1BB: INY
#_1ED1BC: INY
#_1ED1BD: INY
#_1ED1BE: INY

#_1ED1BF: CPY.b #$10
#_1ED1C1: BCC .next_segment

.exit
#_1ED1C3: RTS

;---------------------------------------------------------------------------------------------------

.mutliplier
#_1ED1C4: db $40, $80, $C0

;===================================================================================================

pool Sprite_80_Firesnake

.flip
#_1ED1C7: db $00, $40, $80, $C0

pool off

;---------------------------------------------------------------------------------------------------

Sprite_80_Firesnake:
#_1ED1CB: JSL SpriteDraw_SingleLarge_long
#_1ED1CF: JSR Sprite_CheckIfActive_Bank1E
#_1ED1D2: JSR Sprite_CheckIfRecoiling_Bank1E

#_1ED1D5: LDA.b $1A
#_1ED1D7: LSR A
#_1ED1D8: LSR A
#_1ED1D9: AND.b #$03
#_1ED1DB: TAY

#_1ED1DC: LDA.w $0F50,X
#_1ED1DF: AND.b #$3F
#_1ED1E1: ORA.w .flip,Y
#_1ED1E4: STA.w $0F50,X

; !WTF some unimplemented method of killing firesnakes
#_1ED1E7: LDA.w $0D90,X
#_1ED1EA: BEQ .main

#_1ED1EC: LDA.w $0DF0,X
#_1ED1EF: STA.w $0BA0,X
#_1ED1F2: BNE .exit

#_1ED1F4: STZ.w $0DD0,X

.exit
#_1ED1F7: RTS

;---------------------------------------------------------------------------------------------------

.speed_x
#_1ED1F8: db  24, -24,   0,   0

.speed_y
#_1ED1FC: db   0,   0,  24, -24

;---------------------------------------------------------------------------------------------------

.main
#_1ED200: JSR Sprite_CheckDamageToAndFromLink_Bank1E
#_1ED203: JSR Firesnake_SpawnFireball

; for previous frame
#_1ED206: LDA.w $0E70,X
#_1ED209: BNE .tile_collision

#_1ED20B: JSR Sprite_Move_XY_Bank1E

.tile_collision
#_1ED20E: JSR Sprite_CheckTileCollision_Bank1E
#_1ED211: BEQ .no_tile_collision

#_1ED213: JSL GetRandomNumber
#_1ED217: LSR A
#_1ED218: LDA.w $0DE0,X

#_1ED21B: ROL A
#_1ED21C: TAY

#_1ED21D: LDA.w SharedDirections_Nice,Y
#_1ED220: STA.w $0DE0,X

.no_tile_collision
#_1ED223: LDY.w $0DE0,X

#_1ED226: LDA.w .speed_x,Y
#_1ED229: STA.w $0D50,X

#_1ED22C: LDA.w .speed_y,Y
#_1ED22F: STA.w $0D40,X

#_1ED232: RTS

;===================================================================================================

Firesnake_SpawnFireball:
#_1ED233: TXA
#_1ED234: EOR.b $1A
#_1ED236: AND.b #$07
#_1ED238: BNE .exit

#_1ED23A: PHX
#_1ED23B: TXY

#_1ED23C: LDX.b #$1D

.next_slot
#_1ED23E: LDA.l $7FF800,X
#_1ED242: BEQ .free_slot

#_1ED244: DEX
#_1ED245: BPL .next_slot

#_1ED247: PLX

#_1ED248: RTS

;---------------------------------------------------------------------------------------------------

.free_slot
#_1ED249: LDA.b #$01 ; GARNISH 01
#_1ED24B: STA.l $7FF800,X
#_1ED24F: STA.w $0FB4

#_1ED252: LDA.w $0D10,Y
#_1ED255: STA.l $7FF83C,X

#_1ED259: LDA.w $0D30,Y
#_1ED25C: STA.l $7FF878,X

#_1ED260: LDA.w $0D00,Y
#_1ED263: CLC
#_1ED264: ADC.b #$10
#_1ED266: STA.l $7FF81E,X

#_1ED26A: LDA.w $0D20,Y
#_1ED26D: ADC.b #$00
#_1ED26F: STA.l $7FF85A,X

#_1ED273: LDA.b #$20
#_1ED275: STA.l $7FF90E,X

#_1ED279: TYA
#_1ED27A: STA.l $7FF92C,X

#_1ED27E: LDA.w $0F20,Y
#_1ED281: STA.l $7FF968,X

#_1ED285: PLX

.exit
#_1ED286: RTS

;===================================================================================================

pool Sprite_7C_GreenStalfos

.direction
#_1ED287: db $04, $06, $00, $02

.flip
#_1ED28B: db $40, $00, $00, $00

.anim_step
#_1ED28F: db $00, $00, $01, $02

pool off

;---------------------------------------------------------------------------------------------------

Sprite_7C_GreenStalfos:
#_1ED293: LDY.w $0DE0,X

#_1ED296: LDA.w $0F50,X
#_1ED299: AND.b #$BF
#_1ED29B: ORA.w .flip,Y
#_1ED29E: STA.w $0F50,X

#_1ED2A1: LDA.w .anim_step,Y
#_1ED2A4: STA.w $0DC0,X

#_1ED2A7: JSL SpriteDraw_SingleLarge_long
#_1ED2AB: JSR Sprite_CheckIfActive_Bank1E
#_1ED2AE: JSR Sprite_CheckIfRecoiling_Bank1E
#_1ED2B1: JSR Sprite_CheckDamageToAndFromLink_Bank1E

#_1ED2B4: STZ.w $0D90,X

#_1ED2B7: JSR Sprite_DirectionToFaceLink_Bank1E

#_1ED2BA: LDA.w .direction,Y
#_1ED2BD: CMP.w $002F
#_1ED2C0: BEQ .link_facing_me

#_1ED2C2: TXA
#_1ED2C3: EOR.b $1A
#_1ED2C5: AND.b #$07
#_1ED2C7: BNE .dont_turn

#_1ED2C9: JSR Sprite_DirectionToFaceLink_Bank1E
#_1ED2CC: TYA
#_1ED2CD: STA.w $0DE0,X

#_1ED2D0: LDA.w $0DA0,X
#_1ED2D3: CMP.b #$04
#_1ED2D5: BEQ .at_max

#_1ED2D7: INC.w $0DA0,X

.at_max
#_1ED2DA: JSL Sprite_ApplySpeedTowardsLink_long

#_1ED2DE: JSR Sprite_IsRightOfLink_Bank1E
#_1ED2E1: TYA
#_1ED2E2: STA.w $0DE0,X

;---------------------------------------------------------------------------------------------------

.dont_turn
#_1ED2E5: JSR Sprite_Move_XY_Bank1E

#_1ED2E8: RTS

.link_facing_me
#_1ED2E9: INC.w $0D90,X

#_1ED2EC: TXA
#_1ED2ED: EOR.b $1A
#_1ED2EF: AND.b #$0F
#_1ED2F1: BNE .dont_turn_b

#_1ED2F3: LDA.w $0DA0,X
#_1ED2F6: BEQ .at_min

#_1ED2F8: DEC.w $0DA0,X

.at_min
#_1ED2FB: JSL Sprite_ApplySpeedTowardsLink_long

#_1ED2FF: JSR Sprite_IsRightOfLink_Bank1E
#_1ED302: TYA
#_1ED303: STA.w $0DE0,X

.dont_turn_b
#_1ED306: JSR Sprite_Move_XY_Bank1E

#_1ED309: RTS

;===================================================================================================

Agahnim_Direction:
#_1ED30A: db $00, $00, $00, $00, $00, $00, $00, $00
#_1ED312: db $00, $00, $05, $05, $00, $01, $01, $04
#_1ED31A: db $04, $00, $02, $02, $04, $04, $03, $02
#_1ED322: db $02

;---------------------------------------------------------------------------------------------------

Agahnim_DirectionStepOffset:
#_1ED323: db $02, $0A, $08, $00, $04, $06, $FA

;===================================================================================================

Sprite_7A_Agahnim:
#_1ED32A: JSR SpriteDraw_Agahnim

; Continually reset timers and direction while off screen
#_1ED32D: LDA.w $0F00,X
#_1ED330: BEQ .active

#_1ED332: LDA.b #$20
#_1ED334: STA.w $0DF0,X

#_1ED337: LDA.b #$00
#_1ED339: STA.w $0DC0,X

#_1ED33C: LDA.b #$03
#_1ED33E: STA.w $0DE0,X

.active
#_1ED341: JSR Sprite_CheckIfActive_Bank1E
#_1ED344: JSR Sprite_CheckIfRecoiling_Bank1E

#_1ED347: LDA.b #$01
#_1ED349: STA.w $0BA0,X

#_1ED34C: LDA.w $0D80,X
#_1ED34F: JSL JumpTableLocal
#_1ED353: dw Agahnim_ChooseFirstMove

#_1ED355: dw Agahnim_HelloLightWorld
#_1ED357: dw Agahnim_EmergeFromShadow
#_1ED359: dw Agahnim_Attack
#_1ED35B: dw Agahnim_ChooseWarpSpot
#_1ED35D: dw Agahnim_MoveTowardsWarp

#_1ED35F: dw Agahnim_HelloDarkWorld
#_1ED361: dw Agahnim_CreateClones
#_1ED363: dw Agahnim_ExorciseGanon
#_1ED365: dw Agahnim_UncloneSelf

#_1ED367: dw Agahnim_SpinToPyramid

;===================================================================================================

pool Agahnim_SpinToPyramid

.anim_step
#_1ED369: db $00, $08, $0A, $02, $02, $06, $04

pool off

;---------------------------------------------------------------------------------------------------

Agahnim_SpinToPyramid:
#_1ED370: LDA.w $0DF0,X
#_1ED373: BNE .delay

#_1ED375: PHX

#_1ED376: STZ.w $0DD0,X

#_1ED379: JSL PrepareDungeonExitFromBossFight

#_1ED37D: PLX

.delay
#_1ED37E: LDA.w $0DF0,X
#_1ED381: CMP.b #$10
#_1ED383: BCS .spinning

#_1ED385: LDA.b #$7F
#_1ED387: STA.b $9A

#_1ED389: LDA.b #$06
#_1ED38B: STA.b $1C

#_1ED38D: LDA.b #$10
#_1ED38F: STA.b $1D

#_1ED391: PHX

#_1ED392: JSL PaletteFilter_SP5F

#_1ED396: PLX

.spinning
#_1ED397: LDA.w $0DF0,X
#_1ED39A: AND.b #$00 ; !DUMB and !WEIRD
#_1ED39C: BNE .dont_increase_rotation_speed

#_1ED39E: LDA.w $0F80,X
#_1ED3A1: CMP.b #$FF
#_1ED3A3: BEQ .dont_increase_rotation_speed

#_1ED3A5: CLC
#_1ED3A6: ADC.b #$01
#_1ED3A8: STA.w $0F80,X

.dont_increase_rotation_speed
#_1ED3AB: LDA.w $0F90,X
#_1ED3AE: CLC
#_1ED3AF: ADC.w $0F80,X
#_1ED3B2: STA.w $0F90,X

#_1ED3B5: BCC .no_sfx

#_1ED3B7: INC.w $0E80,X

#_1ED3BA: LDA.w $0E80,X
#_1ED3BD: CMP.b #$07
#_1ED3BF: BNE .no_sfx

#_1ED3C1: STZ.w $0E80,X

#_1ED3C4: LDA.b #$04 ; SFX2.04
#_1ED3C6: JSL SpriteSFX_QueueSFX2WithPan

.no_sfx
#_1ED3CA: LDY.w $0E80,X

#_1ED3CD: LDA.w .anim_step,Y
#_1ED3D0: STA.w $0DC0,X

#_1ED3D3: RTS

;===================================================================================================

Agahnim_ExorciseGanon:
#_1ED3D4: LDA.b #$02
#_1ED3D6: STA.w $0FFC

#_1ED3D9: STZ.w $0EB0,X

#_1ED3DC: LDA.w $0DF0,X
#_1ED3DF: CMP.b #$40
#_1ED3E1: BCC .delay

#_1ED3E3: LDA.w $0EF0,X
#_1ED3E6: ORA.b #$E0
#_1ED3E8: STA.w $0EF0,X

#_1ED3EB: RTS

.delay
#_1ED3EC: CMP.b #$01
#_1ED3EE: BNE .no_bat_yet

#_1ED3F0: JSL SpawnPhantomGanon

#_1ED3F4: LDA.b #$1D ; SONG 1D
#_1ED3F6: STA.w $012C

.no_bat_yet
#_1ED3F9: STZ.w $0EF0,X

#_1ED3FC: LDA.b #$11
#_1ED3FE: STA.w $0DC0,X

#_1ED401: RTS

;===================================================================================================
; When Agahnim 2 is defeated, the clones go to this mode to remerge.
;===================================================================================================
Agahnim_UncloneSelf:
#_1ED402: STZ.w $0EB0,X

#_1ED405: LDA.w $0D10
#_1ED408: STA.b $04

#_1ED40A: LDA.w $0D30
#_1ED40D: STA.b $05

#_1ED40F: LDA.w $0D00
#_1ED412: STA.b $06

#_1ED414: LDA.w $0D20
#_1ED417: STA.b $07

#_1ED419: REP #$20

#_1ED41B: LDA.w $0FD8
#_1ED41E: SEC
#_1ED41F: SBC.b $04
#_1ED421: CLC
#_1ED422: ADC.w #$0004

#_1ED425: CMP.w #$0008
#_1ED428: BCS .not_merged_yet

#_1ED42A: LDA.w $0FDA
#_1ED42D: SEC
#_1ED42E: SBC.b $06
#_1ED430: CLC
#_1ED431: ADC.w #$0004

#_1ED434: CMP.w #$0008
#_1ED437: BCS .not_merged_yet

#_1ED439: SEP #$20

#_1ED43B: STZ.w $0DD0,X

.not_merged_yet
#_1ED43E: SEP #$20

#_1ED440: LDA.b #$20
#_1ED442: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1ED446: LDA.b $00
#_1ED448: STA.w $0D40,X

#_1ED44B: LDA.b $01
#_1ED44D: STA.w $0D50,X

#_1ED450: JSR Sprite_Move_XY_Bank1E
#_1ED453: JSL Agahnim_ApplyMotionBlur

#_1ED457: RTS

;===================================================================================================

Agahnim_HelloDarkWorld:
#_1ED458: LDA.w $0DF0,X
#_1ED45B: BNE .exit

; Message 013F
#_1ED45D: LDA.b #$3F
#_1ED45F: STA.w $1CF0

#_1ED462: LDA.b #$01
#_1ED464: STA.w $1CF1

#_1ED467: JSL Sprite_ShowMessageMinimal

#_1ED46B: INC.w $0D80,X

#_1ED46E: LDA.b #$50
#_1ED470: STA.w $0DF0,X

.exit
#_1ED473: RTS

;===================================================================================================

pool Agahnim_CreateClones

.speed
#_1ED474: db  32, -32

pool off

;---------------------------------------------------------------------------------------------------

Agahnim_CreateClones:
#_1ED476: LDA.w $0EC0,X
#_1ED479: BEQ .spawn_clones

#_1ED47B: LDA.w $0DF0,X
#_1ED47E: BNE .delay

#_1ED480: JMP.w Agahnim_PrepareToAttack

;---------------------------------------------------------------------------------------------------

.delay
#_1ED483: LDA.w .speed-1,X
#_1ED486: STA.w $0D50,X

#_1ED489: LDA.w $0D40,X
#_1ED48C: CLC
#_1ED48D: ADC.b #$02
#_1ED48F: STA.w $0D40,X

#_1ED492: JSR Sprite_Move_XY_Bank1E

#_1ED495: JSL Agahnim_ApplyMotionBlur
#_1ED499: BMI .exit_a

#_1ED49B: LDA.b #$04
#_1ED49D: STA.w $0F50,Y

.exit_a
#_1ED4A0: RTS

;---------------------------------------------------------------------------------------------------

.palette
#_1ED4A1: db $09, $0B

;---------------------------------------------------------------------------------------------------

.spawn_clones
#_1ED4A3: LDA.w $0DF0,X
#_1ED4A6: BNE .wait_for_clones

#_1ED4A8: JMP.w Agahnim_PrepareToAttack

;---------------------------------------------------------------------------------------------------

.wait_for_clones
#_1ED4AB: CMP.b #$40
#_1ED4AD: BNE .exit_b

#_1ED4AF: LDA.b #$28 ; SFX3.28
#_1ED4B1: STA.w $012F

#_1ED4B4: LDA.b #$01
#_1ED4B6: STA.w $0FB5

.next_clone
#_1ED4B9: LDA.b #$7A ; SPRITE 7A
#_1ED4BB: LDY.b #$02
#_1ED4BD: JSL Sprite_SpawnDynamically_slot_limited

#_1ED4C1: JSL Sprite_SetSpawnedCoordinates

; Assumes they ended up in the slots they wanted.
; So why not just hardcode them to begin with?
; Or at least empty those slots before you start

; You can barely notice the palette difference between clones
#_1ED4C5: LDA.w .palette-1,Y
#_1ED4C8: STA.w $0E60,Y

#_1ED4CB: AND.b #$0F
#_1ED4CD: STA.w $0F50,Y
#_1ED4D0: STA.w $0EC0,Y

#_1ED4D3: LDA.w $0D80,X
#_1ED4D6: STA.w $0D80,Y

#_1ED4D9: LDA.b #$20
#_1ED4DB: STA.w $0DF0,Y

#_1ED4DE: DEC.w $0FB5
#_1ED4E1: BPL .next_clone

.exit_b
#_1ED4E3: RTS

;===================================================================================================

pool Agahnim_ChooseFirstMove

.next_ai
#_1ED4E4: db $01 ; LW: Aga 1
#_1ED4E5: db $06 ; DW: Aga 2

pool off

;---------------------------------------------------------------------------------------------------

Agahnim_ChooseFirstMove:
#_1ED4E6: LDY.w $0FFF

#_1ED4E9: LDA.w .next_ai,Y
#_1ED4EC: STA.w $0D80,X

#_1ED4EF: RTS

;===================================================================================================

Agahnim_HelloLightWorld:
#_1ED4F0: LDA.w $0DF0,X
#_1ED4F3: BNE EXIT_1ED518

; Message 013D
#_1ED4F5: LDA.b #$3D
#_1ED4F7: STA.w $1CF0

#_1ED4FA: LDA.b #$01
#_1ED4FC: STA.w $1CF1

#_1ED4FF: JSL Sprite_ShowMessageMinimal

;===================================================================================================

Agahnim_PrepareToAttack:
#_1ED503: LDA.b #$03
#_1ED505: STA.w $0D80,X

#_1ED508: LDA.b #$20
#_1ED50A: STA.w $0DF0,X

#_1ED50D: RTS

;===================================================================================================

Agahnim_PrepareToEmerge:
#_1ED50E: LDA.b #$02
#_1ED510: STA.w $0D80,X

#_1ED513: LDA.b #$27
#_1ED515: STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

#EXIT_1ED518:
#_1ED518: RTS

;===================================================================================================

pool Agahnim_EmergeFromShadow

.anim_step
#_1ED519: db $0C, $0D, $0E, $0F, $10

pool off

;---------------------------------------------------------------------------------------------------

Agahnim_EmergeFromShadow:
#_1ED51E: STZ.w $0FF8

#_1ED521: LDA.w $0DF0,X
#_1ED524: BNE .delay

#_1ED526: INC.w $0D80,X

#_1ED529: LDA.b #$FF
#_1ED52B: STA.w $0DF0,X

#_1ED52E: RTS

.delay
#_1ED52F: LSR A
#_1ED530: LSR A
#_1ED531: LSR A
#_1ED532: TAY

#_1ED533: LDA.w .anim_step,Y
#_1ED536: STA.w $0DC0,X

#_1ED539: RTS

;===================================================================================================
; TODO verify
pool Agahnim_Attack

.attack_anim_offset
#_1ED53A: db $00, $00, $00, $00, $00, $00, $00, $01
#_1ED542: db $01, $01, $01, $01, $01, $01, $00, $00

.attack_anim_ball_step
#_1ED54A: db $00, $00, $00, $00, $00, $00, $00, $06
#_1ED552: db $05, $04, $03, $02, $01, $00, $00, $00

.attack_anim_ball_step_offset
#_1ED55A: db $1E, $18, $0C, $00, $06, $12

pool off

;---------------------------------------------------------------------------------------------------

Agahnim_Attack:
#_1ED560: LDA.w $0DF0,X
#_1ED563: CMP.b #$C0
#_1ED565: BNE .no_charge_sfx

#_1ED567: PHA

#_1ED568: LDA.b #$27 ; SFX3.27
#_1ED56A: JSL SpriteSFX_QueueSFX3WithPan

#_1ED56E: PLA

;---------------------------------------------------------------------------------------------------

.no_charge_sfx
#_1ED56F: CMP.b #$EF
#_1ED571: BCS .apply_unfade_filter

.apply_fade_filter
#_1ED573: CMP.b #$10
#_1ED575: BCS .skip_filter

.apply_unfade_filter
#_1ED577: PHX

#_1ED578: LDA.w $0FFF
#_1ED57B: BNE .aga2_filtering

#_1ED57D: LDX.b #$02

.aga2_filtering
#_1ED57F: JSL AgahnimWarpShadowFilter

#_1ED583: PLX

#_1ED584: BRA .immune

;---------------------------------------------------------------------------------------------------

.skip_filter
#_1ED586: TXA
#_1ED587: BNE .immune

#_1ED589: JSR Sprite_CheckDamageToAndFromLink_Bank1E
#_1ED58C: STZ.w $0BA0,X

.immune
#_1ED58F: LDA.w $0DF0,X
#_1ED592: BNE .delay_warp

#_1ED594: INC.w $0D80,X

#_1ED597: LDA.b #$27
#_1ED599: STA.w $0DF0,X

#_1ED59C: RTS

;---------------------------------------------------------------------------------------------------

.delay_warp
#_1ED59D: CMP.b #$80
#_1ED59F: BCC .direction_locked

#_1ED5A1: PHA

#_1ED5A2: LDA.b #$02
#_1ED5A4: JSL Sprite_ApplySpeedTowardsLink_long

#_1ED5A8: LDY.b $01

#_1ED5AA: LDA.b $00
#_1ED5AC: CLC
#_1ED5AD: ADC.b #$02
#_1ED5AF: STA.b $02

#_1ED5B1: ASL A
#_1ED5B2: ASL A
#_1ED5B3: ADC.b $02
#_1ED5B5: ADC.b #$02

#_1ED5B7: CLC
#_1ED5B8: ADC.b $01
#_1ED5BA: TAY

#_1ED5BB: LDA.w Agahnim_Direction,Y
#_1ED5BE: STA.w $0DE0,X

#_1ED5C1: LDA.b #$20
#_1ED5C3: JSL Sprite_ApplySpeedTowardsLink_long

#_1ED5C7: LDA.w $0E30,X
#_1ED5CA: CMP.b #$04
#_1ED5CC: BNE .not_lightning

; Force Agahnim to face down during lightning.
#_1ED5CE: LDA.b #$03
#_1ED5D0: STA.w $0DE0,X

.not_lightning
#_1ED5D3: PLA

.direction_locked
#_1ED5D4: CMP.b #$70
#_1ED5D6: BNE .dont_fire

#_1ED5D8: PHA

#_1ED5D9: JSR Agahnim_PerformAttack

#_1ED5DC: PLA

.dont_fire
#_1ED5DD: LSR A ; /16
#_1ED5DE: LSR A
#_1ED5DF: LSR A
#_1ED5E0: LSR A
#_1ED5E1: TAY

#_1ED5E2: LDA.w .attack_anim_offset,Y
#_1ED5E5: STA.w $0D90,X

#_1ED5E8: LDA.w .attack_anim_ball_step,Y
#_1ED5EB: BEQ .no_offset_needed

#_1ED5ED: CLC
#_1ED5EE: LDY.w $0DE0,X
#_1ED5F1: ADC.w .attack_anim_ball_step_offset,Y

.no_offset_needed
#_1ED5F4: STA.w $0EB0,X

#_1ED5F7: LDY.w $0DE0,X

#_1ED5FA: LDA.w Agahnim_DirectionStepOffset,Y
#_1ED5FD: CLC
#_1ED5FE: ADC.w $0D90,X
#_1ED601: STA.w $0DC0,X

#_1ED604: RTS

;===================================================================================================

pool Agahnim_ChooseWarpSpot

.anim_step
#_1ED605: db $10, $0F, $0E, $0D, $0C

.pos_x
#_1ED60A: db $38, $38, $38, $58, $78, $98, $B8, $B8
#_1ED612: db $B8, $98, $58, $58, $60, $90, $98, $78

.pos_y
#_1ED61A: db $B8, $78, $58, $48, $48, $48, $58, $78
#_1ED622: db $B8, $B8, $B8, $90, $70, $70, $90, $A0

pool off

;---------------------------------------------------------------------------------------------------

Agahnim_ChooseWarpSpot:
#_1ED62A: LDA.w $0DF0,X
#_1ED62D: STA.w $0BA0,X
#_1ED630: BNE .delay

#_1ED632: INC.w $0D80,X

#_1ED635: LDY.b #$04

#_1ED637: LDA.w $0E30,X
#_1ED63A: CMP.b #$04
#_1ED63C: BEQ .use_middle_for_lightning

#_1ED63E: JSL GetRandomNumber
#_1ED642: AND.b #$0F
#_1ED644: TAY

.use_middle_for_lightning
#_1ED645: LDA.w .pos_x,Y
#_1ED648: STA.w $0DB0,X

#_1ED64B: LDA.w .pos_y,Y
#_1ED64E: STA.w $0E90,X

#_1ED651: LDA.b #$08
#_1ED653: STA.w $0ED0,X

#_1ED656: RTS

.delay
#_1ED657: LSR A
#_1ED658: LSR A
#_1ED659: LSR A
#_1ED65A: TAY

#_1ED65B: LDA.w .anim_step,Y
#_1ED65E: STA.w $0DC0,X

#_1ED661: RTS

;===================================================================================================

pool Agahnim_PerformAttack

.offset_x_low
#_1ED662: db   0,  10,   8,   0, -10, -10

.offset_x_high
#_1ED668: db   0,   0,   0,   0,  -1,  -1

.offset_y_low
#_1ED66E: db  -9,  -2,  -2,  -9,  -2,  -2

pool off

;---------------------------------------------------------------------------------------------------

Agahnim_PerformAttack:
; Only Agahnim in slot 0 can use other attacks (the real one)
#_1ED674: CPX.b #$00
#_1ED676: BNE .can_use_lightning

#_1ED678: INC.w $0E30,X

; Prevent Dark world aga from getting to lightning.
#_1ED67B: LDA.w $0FFF
#_1ED67E: BEQ .can_use_lightning

#_1ED680: LDA.w $0E30,X
#_1ED683: AND.b #$03
#_1ED685: STA.w $0E30,X

.can_use_lightning
#_1ED688: LDA.w $0E30,X
#_1ED68B: CMP.b #$05
#_1ED68D: BNE .balls

#_1ED68F: STZ.w $0E30,X

#_1ED692: LDA.b #$26 ; SFX3.26
#_1ED694: JSL SpriteSFX_QueueSFX3WithPan

#_1ED698: JSR .spawn_2

.spawn_2
#_1ED69B: JSL Sprite_SpawnLightning
#_1ED69F: JSL Sprite_SpawnLightning

#_1ED6A3: RTS

;---------------------------------------------------------------------------------------------------

.balls
#_1ED6A4: LDA.b #$7B ; SPRITE 7B
#_1ED6A6: JSL Sprite_SpawnDynamically
#_1ED6AA: BMI .exit

#_1ED6AC: LDA.b #$29 ; SFX3.29
#_1ED6AE: JSL SpriteSFX_QueueSFX3WithPan

#_1ED6B2: PHX

#_1ED6B3: LDA.w $0DE0,X
#_1ED6B6: TAX

#_1ED6B7: LDA.b $00
#_1ED6B9: CLC
#_1ED6BA: ADC.w .offset_x_low,X
#_1ED6BD: STA.w $0D10,Y

#_1ED6C0: LDA.b $01
#_1ED6C2: ADC.w .offset_x_high,X
#_1ED6C5: STA.w $0D30,Y

#_1ED6C8: LDA.b $02
#_1ED6CA: CLC
#_1ED6CB: ADC.w .offset_y_low,X
#_1ED6CE: STA.w $0D00,Y

; All the y offsets are negative, so it lacks a table.
#_1ED6D1: LDA.b $03
#_1ED6D3: ADC.b #$FF
#_1ED6D5: STA.w $0D20,Y
#_1ED6D8: STA.w $0BA0,Y

#_1ED6DB: PLX

#_1ED6DC: LDA.w $0D50,X
#_1ED6DF: STA.w $0D50,Y

#_1ED6E2: LDA.w $0D40,X
#_1ED6E5: STA.w $0D40,Y

#_1ED6E8: LDA.w $0E30,X
#_1ED6EB: CMP.b #$02
#_1ED6ED: BCC .exit

; blue balls: 50% chance
#_1ED6EF: JSL GetRandomNumber
#_1ED6F3: AND.b #$01
#_1ED6F5: BNE .exit

#_1ED6F7: LDA.b #$01
#_1ED6F9: STA.w $0DA0,Y

#_1ED6FC: LDA.b #$20
#_1ED6FE: STA.w $0DF0,Y

.exit
#_1ED701: RTS

;===================================================================================================

Agahnim_MoveTowardsWarp:
#_1ED702: LDA.b #$01
#_1ED704: STA.w $0BA0,X

#_1ED707: LDA.w $0D10,X
#_1ED70A: STA.b $00

#_1ED70C: LDA.w $0D30,X
#_1ED70F: STA.b $01
#_1ED711: STA.b $05

#_1ED713: LDA.w $0D00,X
#_1ED716: STA.b $02

#_1ED718: LDA.w $0D20,X
#_1ED71B: STA.b $03
#_1ED71D: STA.b $07

#_1ED71F: LDA.w $0DB0,X
#_1ED722: STA.b $04

#_1ED724: LDA.w $0E90,X
#_1ED727: STA.b $06

;---------------------------------------------------------------------------------------------------

#_1ED729: REP #$20

#_1ED72B: LDA.b $00
#_1ED72D: SEC
#_1ED72E: SBC.b $04

#_1ED730: CLC
#_1ED731: ADC.w #$0007

#_1ED734: CMP.w #$000E
#_1ED737: BCS .not_close

#_1ED739: LDA.b $02
#_1ED73B: SEC
#_1ED73C: SBC.b $06

#_1ED73E: CLC
#_1ED73F: ADC.w #$0007

#_1ED742: CMP.w #$000E
#_1ED745: BCS .not_close

#_1ED747: SEP #$20

#_1ED749: LDA.w $0DB0,X
#_1ED74C: STA.w $0D10,X

#_1ED74F: LDA.w $0E90,X
#_1ED752: STA.w $0D00,X

#_1ED755: JMP.w Agahnim_PrepareToEmerge

;---------------------------------------------------------------------------------------------------

.not_close
#_1ED758: SEP #$20

#_1ED75A: LDA.w $0ED0,X
#_1ED75D: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1ED761: LDA.b $00
#_1ED763: STA.w $0D40,X

#_1ED766: LDA.b $01
#_1ED768: STA.w $0D50,X

#_1ED76B: LDA.w $0ED0,X
#_1ED76E: CMP.b #$40
#_1ED770: BCS .skip

#_1ED772: INC.w $0ED0,X

.skip
#_1ED775: JSR Sprite_Move_XY_Bank1E

#_1ED778: RTS

;===================================================================================================

pool SpriteDraw_Agahnim

.agahnim_offset_x
#_1ED779: db  -8,   8,  -8,   8
#_1ED77D: db  -8,   8,  -8,   8
#_1ED781: db  -8,   8,  -8,   8
#_1ED785: db  -8,   8,  -8,   8
#_1ED789: db  -8,   8,  -8,   8
#_1ED78D: db  -8,   8,  -8,   8
#_1ED791: db  -8,   8,  -8,   8
#_1ED795: db  -8,   8,  -8,   8
#_1ED799: db  -8,   8,  -8,   8
#_1ED79D: db  -8,   8,  -8,   8
#_1ED7A1: db  -8,   8,  -8,   8
#_1ED7A5: db  -8,   8,  -8,   8
#_1ED7A9: db  -8,   8,  -8,   8
#_1ED7AD: db  -6,   6,  -6,   6
#_1ED7B1: db  -8,   8,  -8,   8
#_1ED7B5: db  -6,   6,  -6,   6
#_1ED7B9: db   0,   8,   0,   8
#_1ED7BD: db  -8,   8,  -8,   8

.agahnim_offset_y
#_1ED7C1: db  -8,  -8,   8,   8
#_1ED7C5: db  -8,  -8,   8,   8
#_1ED7C9: db  -8,  -8,   8,   8
#_1ED7CD: db  -8,  -8,   8,   8
#_1ED7D1: db  -8,  -8,   8,   8
#_1ED7D5: db  -8,  -8,   8,   8
#_1ED7D9: db  -8,  -8,   8,   8
#_1ED7DD: db  -8,  -8,   8,   8
#_1ED7E1: db  -8,  -8,   8,   8
#_1ED7E5: db  -8,  -8,   8,   8
#_1ED7E9: db  -8,  -8,   8,   8
#_1ED7ED: db  -8,  -8,   8,   8
#_1ED7F1: db  -8,  -8,   8,   8
#_1ED7F5: db  -6,  -6,   6,   6
#_1ED7F9: db  -8,  -8,   8,   8
#_1ED7FD: db  -6,  -6,   6,   6
#_1ED801: db   0,   0,   8,   8
#_1ED805: db   8,   8,   8,   8

.agahnim_char
#_1ED809: db $82, $82, $A2, $A2
#_1ED80D: db $80, $80, $A0, $A0
#_1ED811: db $84, $84, $A4, $A4
#_1ED815: db $86, $86, $A6, $A6
#_1ED819: db $88, $8A, $A8, $AA
#_1ED81D: db $8C, $8E, $AC, $AE
#_1ED821: db $C4, $C2, $E4, $E6
#_1ED825: db $C0, $C2, $E0, $E2
#_1ED829: db $8A, $88, $AA, $A8
#_1ED82D: db $8E, $8C, $AE, $AC
#_1ED831: db $C2, $C4, $E6, $E4
#_1ED835: db $C2, $C0, $E2, $E0
#_1ED839: db $EC, $EC, $EC, $EC
#_1ED83D: db $EC, $EC, $EC, $EC
#_1ED841: db $EE, $EE, $EE, $EE
#_1ED845: db $EE, $EE, $EE, $EE
#_1ED849: db $DF, $DF, $DF, $DF
#_1ED84D: db $40, $42, $40, $42

.agahnim_flip
#_1ED851: db $00, $40, $00, $40
#_1ED855: db $00, $40, $00, $40
#_1ED859: db $00, $40, $00, $40
#_1ED85D: db $00, $40, $00, $40
#_1ED861: db $00, $00, $00, $00
#_1ED865: db $00, $00, $00, $00
#_1ED869: db $00, $00, $00, $00
#_1ED86D: db $00, $00, $00, $00
#_1ED871: db $40, $40, $40, $40
#_1ED875: db $40, $40, $40, $40
#_1ED879: db $40, $40, $40, $40
#_1ED87D: db $40, $40, $40, $40
#_1ED881: db $00, $40, $80, $C0
#_1ED885: db $00, $40, $80, $C0
#_1ED889: db $00, $40, $80, $C0
#_1ED88D: db $00, $40, $80, $C0
#_1ED891: db $00, $40, $80, $C0
#_1ED895: db $00, $00, $00, $00

;---------------------------------------------------------------------------------------------------

.ball_offset_x
#_1ED899: db  -7,  15, -11,  11
#_1ED89D: db -11,  11,  -8,   8
#_1ED8A1: db  -4,   4,   0,   0
#_1ED8A5: db -10,  -1, -14,  -5
#_1ED8A9: db -14,  -5, -12,  -7
#_1ED8AD: db -10,  -7, -10, -10
#_1ED8B1: db  16,   8,  12,   4
#_1ED8B5: db  12,   4,  10,   6
#_1ED8B9: db   9,   7,   8,   8

#_1ED8BD: db  -6,  -6, -10, -10
#_1ED8C1: db -10, -10, -10, -10
#_1ED8C5: db -10, -10, -10, -10
#_1ED8C9: db  14,  14,  10,  10
#_1ED8CD: db  10,  10,  10,  10
#_1ED8D1: db  10,  10,  10,  10
#_1ED8D5: db  -7,  15, -11,  11
#_1ED8D9: db -11,  11,  -8,   8
#_1ED8DD: db  -4,   4,   0,   0

.ball_offset_y
#_1ED8E1: db  -5,  -5,  -9,  -9
#_1ED8E5: db  -9,  -9,  -9,  -9
#_1ED8E9: db  -9,  -9,  -9,  -9
#_1ED8ED: db  -3,   9,  -7,   5
#_1ED8F1: db  -7,   5,  -5,   3
#_1ED8F5: db  -3,   3,  -2,  -2
#_1ED8F9: db  -3,   9,  -7,   5
#_1ED8FD: db  -7,   5,  -5,   3
#_1ED901: db  -3,   3,  -2,  -2

#_1ED905: db  -3,   9,  -7,   5
#_1ED909: db  -7,   5,  -5,   3
#_1ED90D: db  -3,   3,  -2,  -2
#_1ED911: db  -3,   9,  -7,   5
#_1ED915: db  -7,   5,  -5,   3
#_1ED919: db  -3,   3,  -2,  -2
#_1ED91D: db  -5,  -5,  -9,  -9
#_1ED921: db  -9,  -9,  -9,  -9
#_1ED925: db  -9,  -9,  -9,  -9

.ball_char
#_1ED929: db $CE, $CC, $C6, $C6
#_1ED92D: db $C6, $C6, $CE, $CC
#_1ED931: db $C6, $C6, $C6, $C6
#_1ED935: db $CE, $CC, $C6, $C6
#_1ED939: db $C6, $C6, $CE, $CC
#_1ED93D: db $C6, $C6, $C6, $C6
#_1ED941: db $CE, $CC, $C6, $C6
#_1ED945: db $C6, $C6, $CE, $CC
#_1ED949: db $C6, $C6, $C6, $C6

.ball_palette
#_1ED94D: db $00, $02, $02, $02
#_1ED951: db $02, $02, $00, $02
#_1ED955: db $02, $02, $02, $02
#_1ED959: db $00, $02, $02, $02
#_1ED95D: db $02, $02, $00, $02
#_1ED961: db $02, $02, $02, $02
#_1ED965: db $00, $02, $02, $02
#_1ED969: db $02, $02, $00, $02
#_1ED96D: db $02, $02, $02, $02

pool off

;===================================================================================================

UNREACHABLE_1ED971:
#_1ED971: RTS

;===================================================================================================

SpriteDraw_Agahnim:
#_1ED972: JSR Sprite_PrepOAMCoord_Bank1E

#_1ED975: LDA.w $0DC0,X
#_1ED978: ASL A
#_1ED979: ASL A
#_1ED97A: STA.b $06

;---------------------------------------------------------------------------------------------------

#_1ED97C: PHX

#_1ED97D: LDX.b #$03

.next_aga_obj
#_1ED97F: PHX

#_1ED980: TXA
#_1ED981: CLC
#_1ED982: ADC.b $06
#_1ED984: TAX

#_1ED985: LDA.b $00
#_1ED987: CLC
#_1ED988: ADC.w .agahnim_offset_x,X
#_1ED98B: STA.b ($90),Y

#_1ED98D: LDA.b $02
#_1ED98F: CLC
#_1ED990: ADC.w .agahnim_offset_y,X
#_1ED993: INY
#_1ED994: STA.b ($90),Y

#_1ED996: LDA.w .agahnim_char,X
#_1ED999: INY
#_1ED99A: STA.b ($90),Y

#_1ED99C: LDA.w .agahnim_flip,X
#_1ED99F: ORA.b $05
#_1ED9A1: INY
#_1ED9A2: STA.b ($90),Y

#_1ED9A4: PHY

#_1ED9A5: TYA
#_1ED9A6: LSR A
#_1ED9A7: LSR A
#_1ED9A8: TAY

#_1ED9A9: LDA.b #$02

#_1ED9AB: CPX.b #$44
#_1ED9AD: BCS .draw_big

#_1ED9AF: CPX.b #$40
#_1ED9B1: BCC .draw_big

#_1ED9B3: LDA.b #$00

.draw_big
#_1ED9B5: STA.b ($92),Y

#_1ED9B7: PLY

#_1ED9B8: INY

#_1ED9B9: PLX
#_1ED9BA: DEX
#_1ED9BB: BPL .next_aga_obj

#_1ED9BD: PLX

;---------------------------------------------------------------------------------------------------

#_1ED9BE: LDA.w $0DC0,X
#_1ED9C1: CMP.b #$0C
#_1ED9C3: BCS .no_shadow

#_1ED9C5: LDA.b #$12
#_1ED9C7: JSL SpriteDraw_Shadow_custom_long

.no_shadow
#_1ED9CB: LDA.b $11
#_1ED9CD: BEQ .skip_correction

#_1ED9CF: LDY.b #$FF
#_1ED9D1: LDA.b #$03
#_1ED9D3: JSL Sprite_CorrectOAMEntries_long

.skip_correction
#_1ED9D7: JSR Sprite_PrepOAMCoord_Bank1E

#_1ED9DA: LDA.b #$08
#_1ED9DC: LDY.w $0DE0,X
#_1ED9DF: BEQ .use_region_b

.use_region_c
#_1ED9E1: JSL OAM_AllocateFromRegionC

#_1ED9E5: BRA .continue

.use_region_b
#_1ED9E7: JSL OAM_AllocateFromRegionB

;---------------------------------------------------------------------------------------------------

.continue
#_1ED9EB: LDY.b #$00
#_1ED9ED: LDA.w $0EB0,X
#_1ED9F0: BEQ .exit

#_1ED9F2: DEC A
#_1ED9F3: STA.b $0C

#_1ED9F5: ASL A
#_1ED9F6: STA.b $06

#_1ED9F8: LDA.b $1A
#_1ED9FA: LSR A
#_1ED9FB: AND.b #$02

#_1ED9FD: INC A
#_1ED9FE: INC A

#_1ED9FF: ORA.b #$31
#_1EDA01: STA.b $0D

;---------------------------------------------------------------------------------------------------

#_1EDA03: PHX

#_1EDA04: LDX.b #$01

.next_ball_obj
#_1EDA06: PHX

#_1EDA07: TXA
#_1EDA08: CLC
#_1EDA09: ADC.b $06
#_1EDA0B: TAX

#_1EDA0C: LDA.b $00
#_1EDA0E: CLC
#_1EDA0F: ADC.w .ball_offset_x,X
#_1EDA12: STA.b ($90),Y

#_1EDA14: LDA.b $02
#_1EDA16: CLC
#_1EDA17: ADC.w .ball_offset_y,X
#_1EDA1A: INY
#_1EDA1B: STA.b ($90),Y

#_1EDA1D: LDX.b $0C

#_1EDA1F: LDA.w .ball_char,X
#_1EDA22: INY
#_1EDA23: STA.b ($90),Y

#_1EDA25: INY

#_1EDA26: LDA.b $0D
#_1EDA28: STA.b ($90),Y

#_1EDA2A: PHY

#_1EDA2B: TYA
#_1EDA2C: LSR A
#_1EDA2D: LSR A
#_1EDA2E: TAY

#_1EDA2F: LDA.w .ball_palette,X
#_1EDA32: STA.b ($92),Y

#_1EDA34: PLY
#_1EDA35: INY

#_1EDA36: PLX
#_1EDA37: DEX
#_1EDA38: BPL .next_ball_obj

#_1EDA3A: PLX

.exit
#_1EDA3B: RTS

;===================================================================================================

Sprite_7B_AgahnimBalls:
#_1EDA3C: LDA.w $0DA0,X
#_1EDA3F: BEQ YellowBall

;===================================================================================================

BlueBall:
#_1EDA41: LDA.w $0DF0,X
#_1EDA44: BEQ .done_homing

#_1EDA46: LDA.b #$20
#_1EDA48: JSL Sprite_ApplySpeedTowardsLink_long

.done_homing
#_1EDA4C: LDA.b #$05
#_1EDA4E: BRA AgahnimBalls_Main

;===================================================================================================

YellowBall:
#_1EDA50: LDA.b $1A
#_1EDA52: LSR A
#_1EDA53: AND.b #$02

#_1EDA55: INC A
#_1EDA56: INC A
#_1EDA57: ORA.b #$01

;===================================================================================================

AgahnimBalls_Main:
#_1EDA59: STA.w $0F50,X

#_1EDA5C: LDA.w $0D80,X
#_1EDA5F: BEQ .continue

#_1EDA61: JMP.w AgahnimBalls_DrawTrail

.continue
#_1EDA64: LDA.w $0DA0,X
#_1EDA67: BEQ .draw_yellow

#_1EDA69: JSR SpriteDraw_BlueBalls
#_1EDA6C: BRA .drawing_done

.draw_yellow
#_1EDA6E: JSL SpriteDraw_SingleLarge_long

;---------------------------------------------------------------------------------------------------

.drawing_done
#_1EDA72: JSR Sprite_CheckIfActive_Bank1E

#_1EDA75: INC.w $0E80,X

#_1EDA78: JSR Sprite_Move_XY_Bank1E

#_1EDA7B: JSR Sprite_CheckTileCollision_Bank1E
#_1EDA7E: BEQ .no_tile_collision

#_1EDA80: STZ.w $0DD0,X

#_1EDA83: LDA.w $0DA0,X
#_1EDA86: BNE .blue_ball_explode

.no_tile_collision
#_1EDA88: LDA.w $0D90,X
#_1EDA8B: BEQ .reflected

#_1EDA8D: LDA.w $0BA0
#_1EDA90: BNE .reflected

#_1EDA92: LDA.w $0D10,X
#_1EDA95: STA.b $00

#_1EDA97: LDA.w $0D30,X
#_1EDA9A: STA.b $08

#_1EDA9C: LDA.b #$0F
#_1EDA9E: STA.b $02
#_1EDAA0: STA.b $03

#_1EDAA2: LDA.w $0D00,X
#_1EDAA5: STA.b $01

#_1EDAA7: LDA.w $0D20,X
#_1EDAAA: STA.b $09

#_1EDAAC: PHX

#_1EDAAD: LDX.b #$00
#_1EDAAF: JSL Sprite_SetupHitbox_long

#_1EDAB3: PLX

#_1EDAB4: JSL CheckIfHitBoxesOverlap_long
#_1EDAB8: BCC .didnt_hit_aga

#_1EDABA: PHX

#_1EDABB: LDA.b #$A0
#_1EDABD: STA.b $00

#_1EDABF: LDA.b #$10
#_1EDAC1: LDX.b #$00
#_1EDAC3: JSL AgahnimBalls_DamageAgahnim

#_1EDAC7: PLX

#_1EDAC8: STZ.w $0DD0,X

#_1EDACB: LDA.w $0D50,X
#_1EDACE: STA.w $0F40

#_1EDAD1: LDA.w $0D40,X
#_1EDAD4: STA.w $0F30

.didnt_hit_aga
#_1EDAD7: BRA .finish_up

;---------------------------------------------------------------------------------------------------

.reflected
#_1EDAD9: JSR Sprite_CheckDamageToLink_Bank1E
#_1EDADC: JSL Sprite_CheckDamageFromLink_long
#_1EDAE0: BCC .finish_up

#_1EDAE2: LDA.w $0DA0,X
#_1EDAE5: BEQ .reflected_yellow_ball

#_1EDAE7: STZ.w $0DD0,X

.blue_ball_explode
#_1EDAEA: LDA.b #$36 ; SFX3.36
#_1EDAEC: JSL SpriteSFX_QueueSFX3WithPan

#_1EDAF0: JSR CreateSixBlueBalls

#_1EDAF3: RTS

;---------------------------------------------------------------------------------------------------

.reflected_yellow_ball
#_1EDAF4: LDA.b #$05 ; SFX2.05
#_1EDAF6: JSL SpriteSFX_QueueSFX2WithPan

#_1EDAFA: LDA.b #$29 ; SFX3.29
#_1EDAFC: JSL SpriteSFX_QueueSFX3WithPan

#_1EDB00: LDA.b #$30
#_1EDB02: JSL Sprite_ApplySpeedTowardsLink_long

#_1EDB06: LDA.b $01
#_1EDB08: EOR.b #$FF
#_1EDB0A: INC A
#_1EDB0B: STA.w $0D50,X

#_1EDB0E: LDA.b $00
#_1EDB10: EOR.b #$FF
#_1EDB12: INC A
#_1EDB13: STA.w $0D40,X

#_1EDB16: INC.w $0D90,X

;---------------------------------------------------------------------------------------------------

.finish_up
#_1EDB19: TXA
#_1EDB1A: EOR.b $1A
#_1EDB1C: AND.b #$03
#_1EDB1E: ORA.w $0DA0,X
#_1EDB21: BNE .exit

#_1EDB23: LDA.b #$7B ; SPRITE 7B
#_1EDB25: JSL Sprite_SpawnDynamically
#_1EDB29: BMI .exit

#_1EDB2B: JSL Sprite_SetSpawnedCoordinates

#_1EDB2F: LDA.b #$0F
#_1EDB31: STA.w $0DF0,Y
#_1EDB34: STA.w $0D80,Y

#_1EDB37: LDA.w $0DA0,X
#_1EDB3A: STA.w $0DA0,Y

.exit
#_1EDB3D: RTS

;===================================================================================================

pool AgahnimBalls_DrawTrail

.anim_step
#_1EDB3E: db $02, $02, $02, $02, $02, $02, $02, $01
#_1EDB46: db $01, $01, $01, $01, $00, $00, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

AgahnimBalls_DrawTrail:
#_1EDB4E: LDA.w $0DC0,X
#_1EDB51: CMP.b #$02
#_1EDB53: BEQ .small

#_1EDB55: JSL SpriteDraw_SingleLarge_long
#_1EDB59: BRA .continue

.small
#_1EDB5B: JSL SpriteDraw_SingleSmall_long

.continue
#_1EDB5F: JSR Sprite_CheckIfActive_Bank1E

#_1EDB62: LDA.w $0DF0,X
#_1EDB65: STA.w $0BA0,X
#_1EDB68: BNE .stay_around

#_1EDB6A: STZ.w $0DD0,X

.stay_around
#_1EDB6D: TAY
#_1EDB6E: CMP.b #$06
#_1EDB70: BNE .dont_move

#_1EDB72: LDA.b #$40
#_1EDB74: STA.w $0D50,X
#_1EDB77: STA.w $0D40,X

#_1EDB7A: JSR Sprite_Move_XY_Bank1E

.dont_move
#_1EDB7D: LDA.w .anim_step,Y
#_1EDB80: STA.w $0DC0,X

#_1EDB83: RTS

;===================================================================================================

pool CreateSixBlueBalls

.speed_x
#_1EDB84: db   0,  24,  24,   0, -24, -24

.speed_y
#_1EDB8A: db -32, -16,  16,  32,  16, -16

pool off

;---------------------------------------------------------------------------------------------------

CreateSixBlueBalls:
#_1EDB90: LDA.b #$36 ; SFX3.36
#_1EDB92: JSL SpriteSFX_QueueSFX3WithPan

#_1EDB96: LDA.b #$05
#_1EDB98: STA.w $0FB5

.spawn_next
#_1EDB9B: JSR .spawn_one

#_1EDB9E: DEC.w $0FB5
#_1EDBA1: BNE .spawn_next

;---------------------------------------------------------------------------------------------------

.spawn_one
#_1EDBA3: LDA.b #$55 ; SPRITE 55
#_1EDBA5: JSL Sprite_SpawnDynamically
#_1EDBA9: BMI .no_space

#_1EDBAB: LDA.b $00
#_1EDBAD: CLC
#_1EDBAE: ADC.b #$04
#_1EDBB0: STA.w $0D10,Y

#_1EDBB3: LDA.b $01
#_1EDBB5: ADC.b #$00
#_1EDBB7: STA.w $0D30,Y

#_1EDBBA: LDA.b $02
#_1EDBBC: CLC
#_1EDBBD: ADC.b #$04
#_1EDBBF: STA.w $0D00,Y

#_1EDBC2: LDA.b $03
#_1EDBC4: ADC.b #$00
#_1EDBC6: STA.w $0D20,Y

#_1EDBC9: LDA.w $0E60,Y
#_1EDBCC: AND.b #$FE
#_1EDBCE: ORA.b #$40
#_1EDBD0: STA.w $0E60,Y

#_1EDBD3: LDA.b #$04
#_1EDBD5: STA.w $0F50,Y
#_1EDBD8: STA.w $0E00,Y

#_1EDBDB: LDA.b #$14
#_1EDBDD: STA.w $0F60,Y
#_1EDBE0: STA.w $0DB0,Y
#_1EDBE3: STA.w $0E90,Y

#_1EDBE6: PHX

#_1EDBE7: LDX.w $0FB5

#_1EDBEA: LDA.w .speed_x,X
#_1EDBED: STA.w $0D50,Y

#_1EDBF0: LDA.w .speed_y,X
#_1EDBF3: STA.w $0D40,Y

#_1EDBF6: PLX

.no_space
#_1EDBF7: RTS

;===================================================================================================

pool SpriteDraw_BlueBalls

.oam_groups
; group00
#_1EDBF8: dw   4,  -3 : db $CE, $00, $00, $00
#_1EDC00: dw  11,   4 : db $CE, $00, $00, $00
#_1EDC08: dw   4,  11 : db $CE, $00, $00, $00
#_1EDC10: dw  -3,   4 : db $CE, $00, $00, $00

; group01
#_1EDC18: dw  -1,  -1 : db $CE, $00, $00, $00
#_1EDC20: dw   9,  -1 : db $CE, $00, $00, $00
#_1EDC28: dw  -1,   9 : db $CE, $00, $00, $00
#_1EDC30: dw   9,   9 : db $CE, $00, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_BlueBalls:
#_1EDC38: LDA.b #$00
#_1EDC3A: XBA
#_1EDC3B: LDA.w $0E80,X

; Why not just AND.w #$0004?
#_1EDC3E: LSR A
#_1EDC3F: LSR A
#_1EDC40: AND.b #$01

#_1EDC42: REP #$20

#_1EDC44: ASL A ; x32
#_1EDC45: ASL A
#_1EDC46: ASL A
#_1EDC47: ASL A
#_1EDC48: ASL A
#_1EDC49: ADC.w #.oam_groups
#_1EDC4C: STA.b $08

#_1EDC4E: SEP #$20

#_1EDC50: LDA.b #$04
#_1EDC52: JMP.w Sprite_DrawMultiple_Bank1E

;===================================================================================================
; TODO analyze
;===================================================================================================
Sprite_79_Bee:
#_1EDC55: LDA.w $0D80,X
#_1EDC58: JSL JumpTableLocal
#_1EDC5C: dw Bee_DormantHive
#_1EDC5E: dw Bee_Main
#_1EDC60: dw Bee_Captured

;===================================================================================================

Bee_DormantHive:
#_1EDC62: LDA.w $0E90,X
#_1EDC65: BNE .exit

#_1EDC67: STZ.w $0DD0,X

#_1EDC6A: LDY.b #$0B

.more_bees
#_1EDC6C: PHY

#_1EDC6D: JSR SpawnBeeFromHive

#_1EDC70: PLY
#_1EDC71: DEY
#_1EDC72: BPL .more_bees

.exit
#_1EDC74: RTS

;===================================================================================================

BeeSpeedSlow:
#_1EDC75: db  15,   5,  -5, -15,  20,  10, -10, -20

BeeSpeedFast:
#_1EDC7D: db   8,   2,  -2,  -8,  10,   5,  -5, -10

BeeTimer:
#_1EDC85: db  64,  64, 255, 255

;===================================================================================================

SpawnBeeFromHive:
#_1EDC89: LDA.b #$79 ; SPRITE 79
#_1EDC8B: JSL Sprite_SpawnDynamically
#_1EDC8F: BMI .no_space

#_1EDC91: JSL Sprite_SetSpawnedCoordinates

;===================================================================================================

#InitializeSpawnedBee:
#_1EDC95: PHX

#_1EDC96: LDA.b #$01
#_1EDC98: STA.w $0D80,Y

#_1EDC9B: TYA
#_1EDC9C: AND.b #$03
#_1EDC9E: TAX

#_1EDC9F: LDA.w BeeTimer,X
#_1EDCA2: STA.w $0DF0,Y
#_1EDCA5: STA.w $0D90,Y

#_1EDCA8: LDA.b #$60
#_1EDCAA: STA.w $0F10,Y

#_1EDCAD: JSL GetRandomNumber
#_1EDCB1: AND.b #$07
#_1EDCB3: TAX

#_1EDCB4: LDA.w BeeSpeedSlow,X
#_1EDCB7: STA.w $0D50,Y

#_1EDCBA: JSL GetRandomNumber
#_1EDCBE: AND.b #$07
#_1EDCC0: TAX

#_1EDCC1: LDA.w BeeSpeedSlow,X
#_1EDCC4: STA.w $0D40,Y

#_1EDCC7: PLX

.no_space
#_1EDCC8: RTS

;===================================================================================================

ReleaseBeeFromBottle:
#_1EDCC9: PHB
#_1EDCCA: PHK
#_1EDCCB: PLB

#_1EDCCC: LDA.b #$B2 ; SPRITE B2
#_1EDCCE: JSL Sprite_SpawnDynamically
#_1EDCD2: BMI .no_space

#_1EDCD4: LDA.b $EE
#_1EDCD6: STA.w $0F20,Y

#_1EDCD9: LDA.b $22
#_1EDCDB: CLC
#_1EDCDC: ADC.b #$08
#_1EDCDE: STA.w $0D10,Y

#_1EDCE1: LDA.b $23
#_1EDCE3: ADC.b #$00
#_1EDCE5: STA.w $0D30,Y

#_1EDCE8: LDA.b $20
#_1EDCEA: CLC
#_1EDCEB: ADC.b #$10
#_1EDCED: STA.w $0D00,Y

#_1EDCF0: LDA.b $21
#_1EDCF2: ADC.b #$00
#_1EDCF4: STA.w $0D20,Y

#_1EDCF7: PHX

#_1EDCF8: LDX.w $0202
#_1EDCFB: LDA.l $7EF33F,X

#_1EDCFF: TAX

#_1EDD00: LDA.l $7EF35B,X
#_1EDD04: CMP.b #$08
#_1EDD06: BNE .regular_bee

#_1EDD08: LDA.b #$01
#_1EDD0A: STA.w $0EB0,Y

.regular_bee
#_1EDD0D: JSR InitializeSpawnedBee

#_1EDD10: JSL GetRandomNumber
#_1EDD14: AND.b #$07
#_1EDD16: TAX

#_1EDD17: LDA.w BeeSpeedFast,X
#_1EDD1A: STA.w $0D50,Y

#_1EDD1D: JSL GetRandomNumber
#_1EDD21: AND.b #$07
#_1EDD23: TAX

#_1EDD24: LDA.w BeeSpeedFast,X
#_1EDD27: STA.w $0D40,Y

#_1EDD2A: LDA.b #$40
#_1EDD2C: STA.w $0DF0,Y
#_1EDD2F: STA.w $0D90,Y

#_1EDD32: PLX
#_1EDD33: PLB

#_1EDD34: LDA.b #$00

#_1EDD36: RTL

.no_space
#_1EDD37: PLB

#_1EDD38: LDA.b #$FF

#_1EDD3A: RTL

;===================================================================================================

Bee_BounceBoundaries:
#_1EDD3B: db  0,  5, 10, 15

;===================================================================================================

Bee_Main:
#_1EDD3F: JSR Bee_HandleZ
#_1EDD42: JSL SpriteDraw_SingleSmall_long
#_1EDD46: JSR Bee_HandleInteractions
#_1EDD49: JSR Sprite_CheckIfActive_Bank1E
#_1EDD4C: JSR Sprite_CheckIfRecoiling_Bank1E

#_1EDD4F: LDA.w $0EB0,X
#_1EDD52: BEQ .regular_bee

#_1EDD54: JSL Sprite_SpawnSparkleGarnish

.regular_bee
#_1EDD58: JSR Bee_Bzzt
#_1EDD5B: JSR Sprite_Move_XY_Bank1E

#_1EDD5E: TXA
#_1EDD5F: EOR.b $1A
#_1EDD61: LSR A
#_1EDD62: AND.b #$01
#_1EDD64: STA.w $0DC0,X

#_1EDD67: LDA.w $0F10,X
#_1EDD6A: BNE .not_caught

#_1EDD6C: JSR Sprite_CheckDamageToLink_Bank1E
#_1EDD6F: JSL Sprite_CheckDamageFromLink_long
#_1EDD73: BEQ .not_caught

; Message 00C6
#_1EDD75: LDA.b #$C6
#_1EDD77: LDY.b #$00
#_1EDD79: JSL Sprite_ShowMessageUnconditional

#_1EDD7D: INC.w $0D80,X

#_1EDD80: RTS

;---------------------------------------------------------------------------------------------------

.not_caught
#_1EDD81: LDA.b $1A
#_1EDD83: BNE .skip_timer

#_1EDD85: LDA.w $0D90,X
#_1EDD88: CMP.b #$10
#_1EDD8A: BEQ .skip_timer

#_1EDD8C: SEC
#_1EDD8D: SBC.b #$08
#_1EDD8F: STA.w $0D90,X

.skip_timer
#_1EDD92: LDA.w $0DF0,X
#_1EDD95: BNE .exit

#_1EDD97: JSL GetRandomNumber
#_1EDD9B: AND.b #$03
#_1EDD9D: TAY

#_1EDD9E: LDA.b $22
#_1EDDA0: CLC
#_1EDDA1: ADC.w Bee_BounceBoundaries,Y
#_1EDDA4: STA.b $04

#_1EDDA6: LDA.b $23
#_1EDDA8: ADC.b #$00
#_1EDDAA: STA.b $05

#_1EDDAC: JSL GetRandomNumber
#_1EDDB0: AND.b #$03
#_1EDDB2: TAY

#_1EDDB3: LDA.b $20
#_1EDDB5: CLC
#_1EDDB6: ADC.w Bee_BounceBoundaries,Y
#_1EDDB9: STA.b $06

#_1EDDBB: LDA.b $21
#_1EDDBD: ADC.b #$00
#_1EDDBF: STA.b $07

#_1EDDC1: LDA.b #$14
#_1EDDC3: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1EDDC7: LDA.b $00
#_1EDDC9: STA.w $0D40,X

#_1EDDCC: LDA.b $01
#_1EDDCE: STA.w $0D50,X
#_1EDDD1: BPL .flip_horizontally

#_1EDDD3: LDA.w $0F50,X
#_1EDDD6: AND.b #$BF
#_1EDDD8: BRA .save_h_flip

.flip_horizontally
#_1EDDDA: LDA.w $0F50,X
#_1EDDDD: ORA.b #$40

.save_h_flip
#_1EDDDF: STA.w $0F50,X

#_1EDDE2: TXA
#_1EDDE3: CLC
#_1EDDE4: ADC.w $0D90,X
#_1EDDE7: STA.w $0DF0,X

.exit
#_1EDDEA: RTS

;===================================================================================================

Bee_Captured:
#_1EDDEB: JSR Bee_HandleInteractions
#_1EDDEE: JSR Sprite_CheckIfActive_Bank1E

#_1EDDF1: LDA.w $1CE8
#_1EDDF4: BNE .freed

#_1EDDF6: JSL Find_EmptyBottle
#_1EDDFA: BMI .no_bottles

#_1EDDFC: LDA.w $0EB0,X
#_1EDDFF: STA.b $00

#_1EDE01: PHX

#_1EDE02: TYX

#_1EDE03: LDA.b #$07
#_1EDE05: CLC
#_1EDE06: ADC.b $00
#_1EDE08: STA.l $7EF35C,X

#_1EDE0C: JSL RefreshIcon_long

#_1EDE10: PLX

#_1EDE11: STZ.w $0DD0,X

#_1EDE14: RTS

;---------------------------------------------------------------------------------------------------

.no_bottles
; Message 00C8
#_1EDE15: LDA.b #$C8
#_1EDE17: LDY.b #$00
#_1EDE19: JSL Sprite_ShowMessageUnconditional

.freed
#_1EDE1D: LDA.b #$40
#_1EDE1F: STA.w $0F10,X

#_1EDE22: LDA.b #$01
#_1EDE24: STA.w $0D80,X

#_1EDE27: RTS

;===================================================================================================

Find_EmptyBottle:
#_1EDE28: PHX

#_1EDE29: LDX.b #$00

.next_bottle
#_1EDE2B: LDA.l $7EF35C,X
#_1EDE2F: CMP.b #$02
#_1EDE31: BEQ .empty

#_1EDE33: INX
#_1EDE34: CPX.b #$04
#_1EDE36: BCC .next_bottle

#_1EDE38: LDX.b #$FF

.empty
#_1EDE3A: TXY
#_1EDE3B: PLX
#_1EDE3C: TYA

#_1EDE3D: RTL

;===================================================================================================

Bee_HandleInteractions:
#_1EDE3E: LDA.b $11
#_1EDE40: CMP.b #$02
#_1EDE42: BNE .exit

#_1EDE44: REP #$20

#_1EDE46: LDA.w $1CF0

; Checks for message 00C6
#_1EDE49: CMP.w #$00C6
#_1EDE4C: BEQ .not_caught

; Checks for message 00C8
#_1EDE4E: CMP.w #$00C8
#_1EDE51: BNE .exit

.not_caught
#_1EDE53: SEP #$30

#_1EDE55: LDA.b #$28
#_1EDE57: STA.w $0F10,X

.exit
#_1EDE5A: SEP #$30

#_1EDE5C: RTS

;===================================================================================================
; Encompasses both the hidden golden bee and the player bee.
;===================================================================================================
Sprite_B2_PlayerBee:
#_1EDE5D: LDA.w $0D80,X
#_1EDE60: JSL JumpTableLocal
#_1EDE64: dw GoldBee_Dormant
#_1EDE66: dw PlayerBee_Main
#_1EDE68: dw Bee_Captured

;===================================================================================================

GoldBee_Dormant:
#_1EDE6A: LDA.w $0E90,X
#_1EDE6D: BNE .exit

#_1EDE6F: STZ.w $0DD0,X

; Checks every bottle for a bee
#_1EDE72: LDA.l $7EF35C
#_1EDE76: ORA.l $7EF35D
#_1EDE7A: ORA.l $7EF35E
#_1EDE7E: ORA.l $7EF35F
#_1EDE82: AND.b #$08
#_1EDE84: BNE .exit

#_1EDE86: JSR GoldBee_SpawnSelf

.exit
#_1EDE89: RTS

;===================================================================================================

GoldBee_SpawnSelf:
#_1EDE8A: LDA.b #$79 ; SPRITE 79
#_1EDE8C: JSL Sprite_SpawnDynamically
#_1EDE90: BMI .no_space

#_1EDE92: JSL Sprite_SetSpawnedCoordinates

#_1EDE96: LDA.b #$01
#_1EDE98: STA.w $0D80,Y

#_1EDE9B: LDA.b #$40
#_1EDE9D: STA.w $0DF0,Y
#_1EDEA0: STA.w $0D90,Y

#_1EDEA3: LDA.b #$60
#_1EDEA5: STA.w $0F10,Y

#_1EDEA8: LDA.b #$01
#_1EDEAA: STA.w $0EB0,Y

#_1EDEAD: PHX

#_1EDEAE: JSL GetRandomNumber
#_1EDEB2: AND.b #$07
#_1EDEB4: TAX

#_1EDEB5: LDA.w BeeSpeedSlow,X
#_1EDEB8: STA.w $0D50,Y

#_1EDEBB: JSL GetRandomNumber
#_1EDEBF: AND.b #$07
#_1EDEC1: TAX

#_1EDEC2: LDA.w BeeSpeedSlow,X
#_1EDEC5: STA.w $0D40,Y

#_1EDEC8: PLX

.no_space
#_1EDEC9: RTS

;===================================================================================================
; Seems completely unused?
;===================================================================================================
PlayerBee_Useless:
#_1EDECA: db $0A, $14

;===================================================================================================

PlayerBee_Main:
#_1EDECC: LDA.b #$01
#_1EDECE: STA.w $0BA0,X

#_1EDED1: JSR Bee_HandleZ
#_1EDED4: JSL SpriteDraw_SingleSmall_long
#_1EDED8: JSR Bee_HandleInteractions
#_1EDEDB: JSR Sprite_CheckIfActive_Bank1E
#_1EDEDE: JSR Bee_Bzzt
#_1EDEE1: JSR Sprite_Move_XY_Bank1E

#_1EDEE4: TXA
#_1EDEE5: EOR.b $1A
#_1EDEE7: LSR A
#_1EDEE8: AND.b #$01
#_1EDEEA: STA.w $0DC0,X

#_1EDEED: LDA.w $0EB0,X
#_1EDEF0: BEQ .regular_bee

#_1EDEF2: JSL Sprite_SpawnSparkleGarnish

; TODO is this useless?
.regular_bee
#_1EDEF6: LDA.w $0DA0,X

#_1EDEF9: LDY.w $0EB0,X

#_1EDEFC: CMP.w PlayerBee_Useless,Y
#_1EDEFF: BCC .what

#_1EDF01: LDA.b #$40
#_1EDF03: STA.w $0CAA,X

#_1EDF06: RTS

.what
#_1EDF07: LDA.w $0F10,X
#_1EDF0A: BNE .exit

#_1EDF0C: JSL Sprite_CheckDamageFromLink_long
#_1EDF10: BEQ .not_caught

; Message 00C6
#_1EDF12: LDA.b #$C6
#_1EDF14: LDY.b #$00
#_1EDF16: JSL Sprite_ShowMessageUnconditional

#_1EDF1A: INC.w $0D80,X

#_1EDF1D: RTS

;---------------------------------------------------------------------------------------------------

.not_caught
#_1EDF1E: TXA
#_1EDF1F: EOR.b $1A
#_1EDF21: AND.b #$03
#_1EDF23: BNE .exit

#_1EDF25: JSR PlayerBee_FindTarget
#_1EDF28: BCS .target_locked

#_1EDF2A: TXA
#_1EDF2B: EOR.b $1A
#_1EDF2D: AND.b #$03
#_1EDF2F: BNE .exit

#_1EDF31: JSL GetRandomNumber
#_1EDF35: AND.b #$03
#_1EDF37: TAY

#_1EDF38: LDA.b $22
#_1EDF3A: CLC
#_1EDF3B: ADC.w Bee_BounceBoundaries,Y
#_1EDF3E: STA.b $04

#_1EDF40: LDA.b $23
#_1EDF42: ADC.b #$00
#_1EDF44: STA.b $05

#_1EDF46: JSL GetRandomNumber
#_1EDF4A: AND.b #$03
#_1EDF4C: TAY

#_1EDF4D: LDA.b $20
#_1EDF4F: CLC
#_1EDF50: ADC.w Bee_BounceBoundaries,Y
#_1EDF53: STA.b $06

#_1EDF55: LDA.b $21
#_1EDF57: ADC.b #$00
#_1EDF59: STA.b $07

;---------------------------------------------------------------------------------------------------

.target_locked
#_1EDF5B: TXA
#_1EDF5C: EOR.b $1A
#_1EDF5E: AND.b #$07
#_1EDF60: BNE .exit

#_1EDF62: LDA.b #$20
#_1EDF64: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1EDF68: LDA.b $00
#_1EDF6A: STA.w $0D40,X

#_1EDF6D: LDA.b $01
#_1EDF6F: STA.w $0D50,X
#_1EDF72: BPL .enable_h_flip

#_1EDF74: LDA.w $0F50,X
#_1EDF77: AND.b #$BF
#_1EDF79: BRA .set_h_flip

.enable_h_flip
#_1EDF7B: LDA.w $0F50,X
#_1EDF7E: ORA.b #$40

.set_h_flip
#_1EDF80: STA.w $0F50,X

.exit
#_1EDF83: RTS

;===================================================================================================
; The axis, not the sound.
;===================================================================================================
Bee_HandleZ:
#_1EDF84: LDA.b #$10
#_1EDF86: STA.w $0F70,X

#_1EDF89: LDA.w $0EB0,X
#_1EDF8C: BEQ .exit

#_1EDF8E: LDA.w $0F50,X
#_1EDF91: AND.b #$F1
#_1EDF93: STA.b $00

#_1EDF95: LDA.b $1A
#_1EDF97: LSR A ; /16
#_1EDF98: LSR A
#_1EDF99: LSR A
#_1EDF9A: LSR A

#_1EDF9B: AND.b #$03
#_1EDF9D: INC A
#_1EDF9E: ASL A

#_1EDF9F: ORA.b $00
#_1EDFA1: STA.w $0F50,X

.exit
#_1EDFA4: RTS

;===================================================================================================

PlayerBee_FindTarget:
#_1EDFA5: LDA.b #$0F
#_1EDFA7: STA.b $00

#_1EDFA9: TXA
#_1EDFAA: ASL A
#_1EDFAB: ASL A
#_1EDFAC: AND.b #$0F
#_1EDFAE: TAY

;---------------------------------------------------------------------------------------------------

.next_sprite
#_1EDFAF: CPY.w $0FA0
#_1EDFB2: BEQ .unsuitable_target

#_1EDFB4: LDA.w $0DD0,Y
#_1EDFB7: CMP.b #$09
#_1EDFB9: BCC .unsuitable_target

#_1EDFBB: LDA.w $0F00,Y
#_1EDFBE: BNE .unsuitable_target

#_1EDFC0: LDA.w $0E40,Y
#_1EDFC3: BMI .potential_target

#_1EDFC5: LDA.w $0F20,Y
#_1EDFC8: CMP.w $0F20,X
#_1EDFCB: BNE .unsuitable_target

#_1EDFCD: LDA.w $0F60,Y
#_1EDFD0: AND.b #$40
#_1EDFD2: BNE .unsuitable_target

#_1EDFD4: LDA.w $0BA0,Y
#_1EDFD7: BEQ .valid_target
#_1EDFD9: BRA .unsuitable_target

.potential_target
#_1EDFDB: LDA.w $0EB0,X
#_1EDFDE: BEQ .unsuitable_target

#_1EDFE0: LDA.w $0CD2,Y
#_1EDFE3: AND.b #$40
#_1EDFE5: BNE .valid_target

;---------------------------------------------------------------------------------------------------

.unsuitable_target
#_1EDFE7: DEY

#_1EDFE8: TYA
#_1EDFE9: AND.b #$0F
#_1EDFEB: TAY

#_1EDFEC: DEC.b $00
#_1EDFEE: BPL .next_sprite

#_1EDFF0: CLC

#_1EDFF1: RTS

;---------------------------------------------------------------------------------------------------

.valid_target
#_1EDFF2: JSL PlayerBee_HoneInOnTarget

#_1EDFF6: PHX

#_1EDFF7: JSL GetRandomNumber
#_1EDFFB: AND.b #$03
#_1EDFFD: TAX

#_1EDFFE: LDA.w $0D10,Y
#_1EE001: CLC
#_1EE002: ADC.w Bee_BounceBoundaries,X
#_1EE005: STA.b $04

#_1EE007: LDA.w $0D30,Y
#_1EE00A: ADC.b #$00
#_1EE00C: STA.b $05

#_1EE00E: JSL GetRandomNumber
#_1EE012: AND.b #$03
#_1EE014: TAX

#_1EE015: LDA.w $0D00,Y
#_1EE018: CLC
#_1EE019: ADC.w Bee_BounceBoundaries,X
#_1EE01C: STA.b $06

#_1EE01E: LDA.w $0D20,Y
#_1EE021: ADC.b #$00
#_1EE023: STA.b $07

#_1EE025: PLX

#_1EE026: SEC

#_1EE027: RTS

;===================================================================================================
; The sound, not the axis.
;===================================================================================================
Bee_Bzzt:
#_1EE028: TXA
#_1EE029: EOR.b $1A
#_1EE02B: AND.b #$1F
#_1EE02D: BNE .exit

#_1EE02F: LDA.b #$2C ; SFX3.2C
#_1EE031: JSL SpriteSFX_QueueSFX3WithPan

.exit
#_1EE035: RTS

;===================================================================================================

PlaqueMessages:
.pedestal_low
#_1EE036: db $B4 ; Message 00B4
#_1EE037: db $B5 ; Message 00B5

.pedestal_high
#_1EE038: db $00
#_1EE039: db $00

;---------------------------------------------------------------------------------------------------

.desert_low
#_1EE03A: db $BA ; Message 00BA
#_1EE03B: db $BB ; Message 00BB

.desert_high
#_1EE03C: db $00
#_1EE03D: db $00

;---------------------------------------------------------------------------------------------------

Sprite_B3_PedestalPlaque:
#_1EE03E: JSL Sprite_PrepOAMCoord_long
#_1EE042: JSR Sprite_CheckIfActive_Bank1E

#_1EE045: LDA.w $02E4
#_1EE048: BNE .cutscene

#_1EE04A: JSL CheckIfLinkIsBusy
#_1EE04E: BCC .continue

.cutscene
#_1EE050: RTS

.continue
#_1EE051: LDA.w $037A
#_1EE054: AND.b #$DF
#_1EE056: STA.w $037A

#_1EE059: LDA.b $8A
#_1EE05B: CMP.b #$30
#_1EE05D: BEQ DesertTablet

;===================================================================================================

MasterSwordPedestal:
#_1EE05F: LDA.b $2F
#_1EE061: BNE .exit

#_1EE063: JSL Sprite_CheckDamageToLink_same_layer_long
#_1EE067: BCC .exit

#_1EE069: LDA.w $0202
#_1EE06C: CMP.b #$0F
#_1EE06E: BNE .not_holding_book

#_1EE070: LDY.b #$01
#_1EE072: BIT.b $F4
#_1EE074: BVS .not_pressing_y

.not_holding_book
#_1EE076: LDA.b $F6
#_1EE078: BPL .exit

#_1EE07A: LDY.b #$00

.not_pressing_y
#_1EE07C: CPY.b #$01
#_1EE07E: BNE .no_book_pose

#_1EE080: STZ.w $0300

#_1EE083: LDA.b #$20
#_1EE085: STA.w $037A

#_1EE088: STZ.w $012E

.no_book_pose
#_1EE08B: LDA.w PlaqueMessages_pedestal_low,Y
#_1EE08E: XBA

#_1EE08F: LDA.w PlaqueMessages_pedestal_high,Y
#_1EE092: TAY

#_1EE093: XBA

#_1EE094: JSL Sprite_ShowMessageUnconditional

.exit
#_1EE098: RTS

;===================================================================================================

DesertTablet:
#_1EE099: LDA.b $2F
#_1EE09B: BNE .exit

#_1EE09D: JSL Sprite_CheckDamageToLink_same_layer_long
#_1EE0A1: BCC .exit

#_1EE0A3: LDA.w $0202
#_1EE0A6: CMP.b #$0F
#_1EE0A8: BNE .not_holding_book

#_1EE0AA: LDY.b #$01
#_1EE0AC: BIT.b $F4
#_1EE0AE: BVS .not_pressing_y

.not_holding_book
#_1EE0B0: LDA.b $F6
#_1EE0B2: BPL .exit

#_1EE0B4: LDY.b #$00

.not_pressing_y
#_1EE0B6: CPY.b #$01
#_1EE0B8: BNE .no_book_pose

#_1EE0BA: STZ.w $0300

#_1EE0BD: LDA.b #$20
#_1EE0BF: STA.w $037A

#_1EE0C2: STZ.w $012E

#_1EE0C5: JSL InitiateDesertCutscene

.no_book_pose
#_1EE0C9: LDA.w PlaqueMessages_desert_low,Y
#_1EE0CC: XBA

#_1EE0CD: LDA.w PlaqueMessages_desert_high,Y
#_1EE0D0: TAY

#_1EE0D1: XBA

#_1EE0D2: JSL Sprite_ShowMessageUnconditional

.exit
#_1EE0D6: RTS

;===================================================================================================

Sprite_B4_PurpleChest:
#_1EE0D7: JSL SpriteDraw_SingleLarge_long
#_1EE0DB: JSR Sprite_CheckIfActive_Bank1E

#_1EE0DE: LDA.w $0D80,X
#_1EE0E1: BNE .follow_link

; Message 0114
#_1EE0E3: LDA.b #$14
#_1EE0E5: LDY.b #$01
#_1EE0E7: JSL Sprite_ShowMessageOnContact
#_1EE0EB: BCC .exit

#_1EE0ED: LDA.l $7EF3CC
#_1EE0F1: BNE .exit

#_1EE0F3: INC.w $0D80,X

.exit
#_1EE0F6: RTS

;---------------------------------------------------------------------------------------------------

.follow_link
#_1EE0F7: STZ.w $0DD0,X

#_1EE0FA: LDA.b #$0C ; FOLLOWER 0C
#_1EE0FC: STA.l $7EF3CC

#_1EE100: PHX
#_1EE101: JSL LoadFollowerGraphics
#_1EE105: PLX

#_1EE106: JSL Sprite_BecomeFollower

#_1EE10A: RTS

;===================================================================================================

Sprite_B5_BombShop:
#_1EE10B: LDA.w $0E80,X
#_1EE10E: JSL JumpTableLocal
#_1EE112: dw BombShop_Clerk
#_1EE114: dw BombShop_Bomb
#_1EE116: dw BombShop_SuperBomb
#_1EE118: dw BombShop_Huff

;===================================================================================================

pool BombShop_Clerk

.message_low
#_1EE11A: db $15 ; Message 0115
#_1EE11B: db $16 ; Message 0116

.message_high
#_1EE11C: db $01
#_1EE11D: db $01

.anim_step
#_1EE11E: db $00, $01, $00, $01, $00, $01, $00, $01

.timer
#_1EE126: db 255,  32, 255,  24,  15,  24, 255,  15

pool off

;---------------------------------------------------------------------------------------------------

BombShop_Clerk:
#_1EE12E: JSR SpriteDraw_BombShop
#_1EE131: JSR Sprite_CheckIfActive_Bank1E

#_1EE134: LDA.w $0DF0,X
#_1EE137: BNE .continue

#_1EE139: LDA.w $0E90,X
#_1EE13C: TAY

#_1EE13D: INC A
#_1EE13E: AND.b #$07
#_1EE140: STA.w $0E90,X

#_1EE143: LDA.w .timer,Y
#_1EE146: STA.w $0DF0,X

#_1EE149: LDA.w .anim_step,Y
#_1EE14C: STA.w $0DC0,X
#_1EE14F: BNE .inhale

#_1EE151: LDA.b #$11 ; SFX3.11
#_1EE153: JSL SpriteSFX_QueueSFX3WithPan

#_1EE157: JSR BombShop_ClerkExhalation

#_1EE15A: BRA .continue

.inhale
#_1EE15C: LDA.b #$12 ; SFX3.12
#_1EE15E: JSL SpriteSFX_QueueSFX3WithPan

;---------------------------------------------------------------------------------------------------

.continue
#_1EE162: LDY.b #$00

; Check for crystals 5 and 6
#_1EE164: LDA.l $7EF37A
#_1EE168: AND.b #$05
#_1EE16A: CMP.b #$05
#_1EE16C: BNE .no_super_bomb_message

; Check for dwarf rescue
#_1EE16E: LDA.l $7EF3C9
#_1EE172: AND.b #$20
#_1EE174: BEQ .no_super_bomb_message

#_1EE176: LDY.b #$01

.no_super_bomb_message
#_1EE178: LDA.w .message_low,Y
#_1EE17B: XBA

#_1EE17C: LDA.w .message_high,Y
#_1EE17F: TAY

#_1EE180: XBA

#_1EE181: JSL Sprite_ShowSolicitedMessage
#_1EE185: JSL Sprite_BehaveAsBarrier

#_1EE189: RTS

;===================================================================================================

BombShop_Bomb:
#_1EE18A: JSR SpriteDraw_BombShop
#_1EE18D: JSR Sprite_CheckIfActive_Bank1E
#_1EE190: JSL Sprite_BehaveAsBarrier

#_1EE194: JSR ShopItem_CheckForAPress
#_1EE197: BCC .exit

#_1EE199: LDA.l $7EF370
#_1EE19D: PHX

#_1EE19E: TAX
#_1EE19F: LDA.l CapacityUpgrades_bombs_hex,X

#_1EE1A3: PLX

#_1EE1A4: CMP.l $7EF343
#_1EE1A8: BEQ .no_space

; 100 rupees
#_1EE1AA: LDA.b #$64
#_1EE1AC: LDY.b #$00
#_1EE1AE: JSR ShopItem_HandleCost
#_1EE1B1: BCC .too_poor

; Doesn't completely top you off...
#_1EE1B3: LDA.b #27
#_1EE1B5: STA.l $7EF375

#_1EE1B9: STZ.w $0DD0,X

; Message 0117
#_1EE1BC: LDA.b #$17
#_1EE1BE: LDY.b #$01
#_1EE1C0: JSL Sprite_ShowMessageUnconditional

#_1EE1C4: LDY.b #$28 ; ITEMGET 28
#_1EE1C6: JSR ShopItem_HandleReceipt

.exit
#_1EE1C9: RTS

;---------------------------------------------------------------------------------------------------

.no_space
; Message 016C
#_1EE1CA: LDA.b #$6C
#_1EE1CC: LDY.b #$01
#_1EE1CE: JSL Sprite_ShowMessageUnconditional

#_1EE1D2: JSR ShopItem_PlayBeep

#_1EE1D5: RTS

.too_poor
#_1EE1D6: JMP.w ShopItem_GiveFailureMessage

;===================================================================================================

BombShop_SuperBomb:
#_1EE1D9: JSR SpriteDraw_BombShop
#_1EE1DC: JSR Sprite_CheckIfActive_Bank1E
#_1EE1DF: JSL Sprite_BehaveAsBarrier
#_1EE1E3: JSR ShopItem_CheckForAPress
#_1EE1E6: BCC .exit

; 100 rupees
#_1EE1E8: LDA.b #$64
#_1EE1EA: LDY.b #$00
#_1EE1EC: JSR ShopItem_HandleCost
#_1EE1EF: BCC .too_poor

#_1EE1F1: LDA.b #$0D ; FOLLOWER 0D
#_1EE1F3: STA.l $7EF3CC

#_1EE1F7: PHX
#_1EE1F8: JSL LoadFollowerGraphics
#_1EE1FC: PLX

#_1EE1FD: JSL Sprite_BecomeFollower

#_1EE201: STZ.w $0DD0,X

; Message 0118
#_1EE204: LDA.b #$18
#_1EE206: LDY.b #$01
#_1EE208: JSL Sprite_ShowMessageUnconditional

.exit
#_1EE20C: RTS

;---------------------------------------------------------------------------------------------------

.too_poor
#_1EE20D: JMP.w ShopItem_GiveFailureMessage

;===================================================================================================

pool BombShop_Huff

.prop
#_1EE210: db $04, $44, $C4, $84

pool off

;---------------------------------------------------------------------------------------------------

BombShop_Huff:
#_1EE214: LDA.b #$04
#_1EE216: JSL OAM_AllocateFromRegionC

#_1EE21A: JSL SpriteDraw_SingleSmall_long

#_1EE21E: JSR Sprite_CheckIfActive_Bank1E

#_1EE221: LDA.w $0F50,X
#_1EE224: AND.b #$30
#_1EE226: STA.w $0F50,X

#_1EE229: LDA.b $1A
#_1EE22B: LSR A
#_1EE22C: LSR A
#_1EE22D: AND.b #$03
#_1EE22F: TAY

; Why wasn't this done with the above?
#_1EE230: LDA.w $0F50,X
#_1EE233: ORA.w .prop,Y
#_1EE236: STA.w $0F50,X

#_1EE239: INC.w $0F80,X

#_1EE23C: JSR Sprite_Move_Z_Bank1E

#_1EE23F: LDA.w $0DF0,X
#_1EE242: BNE .stick_around_for_now

#_1EE244: STZ.w $0DD0,X

.stick_around_for_now
#_1EE247: LSR A
#_1EE248: LSR A
#_1EE249: LSR A
#_1EE24A: AND.b #$03
#_1EE24C: STA.w $0DC0,X

#_1EE24F: RTS

;===================================================================================================

BombShop_ClerkExhalation:
#_1EE250: LDA.b #$B5 ; SPRITE B5
#_1EE252: JSL Sprite_SpawnDynamically

#_1EE256: LDA.b #$03
#_1EE258: STA.w $0E80,Y
#_1EE25B: STA.w $0BA0,Y

#_1EE25E: LDA.b $00
#_1EE260: CLC
#_1EE261: ADC.b #$04
#_1EE263: STA.w $0D10,Y

#_1EE266: LDA.b $01
#_1EE268: STA.w $0D30,Y

#_1EE26B: LDA.b $02
#_1EE26D: CLC
#_1EE26E: ADC.b #$10
#_1EE270: STA.w $0D00,Y

#_1EE273: LDA.b $03
#_1EE275: STA.w $0D20,Y

#_1EE278: LDA.b #$04
#_1EE27A: STA.w $0F70,Y

#_1EE27D: LDA.b #$F4
#_1EE27F: STA.w $0F80,Y

#_1EE282: LDA.b #$17
#_1EE284: STA.w $0DF0,Y

#_1EE287: LDA.w $0E60,Y
#_1EE28A: AND.b #$EE
#_1EE28C: STA.w $0E60,Y

#_1EE28F: RTS

;===================================================================================================

pool SpriteDraw_BombShop

.oam_groups
; clerk
#_1EE290: dw   0,   0 : db $48, $0A, $00, $02
#_1EE298: dw   0,   0 : db $4C, $0A, $00, $02

; bombs
#_1EE2A0: dw   0,   0 : db $C2, $04, $00, $02
#_1EE2A8: dw   0,   0 : db $C2, $04, $00, $02

; superbomb
#_1EE2B0: dw   0,   0 : db $4E, $08, $00, $02
#_1EE2B8: dw   0,   0 : db $4E, $08, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_BombShop:
#_1EE2C0: LDA.b #$01
#_1EE2C2: STA.b $06
#_1EE2C4: STZ.b $07

#_1EE2C6: LDA.w $0E80,X
#_1EE2C9: ASL A

#_1EE2CA: ADC.w $0DC0,X
#_1EE2CD: ASL A
#_1EE2CE: ASL A
#_1EE2CF: ASL A

#_1EE2D0: ADC.b #.oam_groups>>0
#_1EE2D2: STA.b $08

#_1EE2D4: LDA.b #.oam_groups>>8
#_1EE2D6: ADC.b #$00
#_1EE2D8: STA.b $09

#_1EE2DA: JSL Sprite_DrawMultiple_player_deferred
#_1EE2DE: JSL SpriteDraw_Shadow_long

#_1EE2E2: RTS

;===================================================================================================

pool Kiki_WalkOnRoof

.speed_x ; bleeds into next
#_1EE2E3: db   0,   0

.speed_y
#_1EE2E5: db  -9,   9,   0,   0

pool off

;===================================================================================================

Sprite_B6_Kiki:
#_1EE2E9: LDA.w $0E80,X
#_1EE2EC: JSL JumpTableLocal
#_1EE2F0: dw Kiki_Dormant
#_1EE2F2: dw Kiki_OfferEntranceService
#_1EE2F4: dw Kiki_OfferInitialService
#_1EE2F6: dw Kiki_Flee

;===================================================================================================

Kiki_Flee:
#_1EE2F8: JSR SpriteDraw_Kiki
#_1EE2FB: JSR Sprite_CheckIfActive_Bank1E

#_1EE2FE: LDA.w $0F70,X
#_1EE301: BNE .dont_flag

#_1EE303: REP #$20

#_1EE305: LDA.w $0FD8
#_1EE308: SEC
#_1EE309: SBC.w #$0C98

#_1EE30C: CMP.w #$00D0
#_1EE30F: BCS .dont_flag

#_1EE311: LDA.w $0FDA
#_1EE314: SEC
#_1EE315: SBC.w #$06A5

#_1EE318: CMP.w #$00D0
#_1EE31B: BCS .dont_flag

#_1EE31D: LDA.w #$FFFF
#_1EE320: STA.b $01

.dont_flag
#_1EE322: SEP #$30

; TODO ??
; analyze
#_1EE324: LDA.b $01
#_1EE326: ORA.b $03
#_1EE328: BEQ .stay

#_1EE32A: STZ.w $0DD0,X

.stay
#_1EE32D: DEC.w $0F80,X
#_1EE330: DEC.w $0F80,X

#_1EE333: JSR Sprite_Move_XYZ_Bank1E

#_1EE336: LDA.w $0F70,X
#_1EE339: BPL .no_bounce

#_1EE33B: STZ.w $0F70,X

#_1EE33E: JSL GetRandomNumber
#_1EE342: AND.b #$0F
#_1EE344: ORA.b #$10
#_1EE346: STA.w $0F80,X

.no_bounce
#_1EE349: LDA.b #$F5
#_1EE34B: STA.b $04

#_1EE34D: LDA.b #$0C
#_1EE34F: STA.b $05

#_1EE351: LDA.b #$FE
#_1EE353: STA.b $06

#_1EE355: LDA.b #$06
#_1EE357: STA.b $07

#_1EE359: LDA.b #$10
#_1EE35B: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1EE35F: LDA.b $00
#_1EE361: ASL A
#_1EE362: STA.w $0D40,X

#_1EE365: LDA.b $01
#_1EE367: ASL A
#_1EE368: STA.w $0D50,X

#_1EE36B: LDA.w $02F2
#_1EE36E: AND.b #$FC
#_1EE370: STA.w $02F2

#_1EE373: LDA.b $00
#_1EE375: BPL .positive_x

#_1EE377: EOR.b #$FF
#_1EE379: INC A
#_1EE37A: STA.b $00

.positive_x
#_1EE37C: LDA.b $01
#_1EE37E: BPL .positive_y

#_1EE380: EOR.b #$FF
#_1EE382: INC A

.positive_y
#_1EE383: CMP.b $00
#_1EE385: BCC .at_max_x

#_1EE387: LDA.w $0D50,X
#_1EE38A: ROL A
#_1EE38B: ROL A
#_1EE38C: AND.b #$01
#_1EE38E: EOR.b #$03
#_1EE390: BRA .continue

.at_max_x
#_1EE392: LDA.w $0D40,X
#_1EE395: ROL A
#_1EE396: ROL A
#_1EE397: AND.b #$01
#_1EE399: EOR.b #$01

.continue
#_1EE39B: STA.w $0DE0,X

#_1EE39E: LDA.b $1A
#_1EE3A0: LSR A
#_1EE3A1: LSR A
#_1EE3A2: LSR A
#_1EE3A3: AND.b #$01
#_1EE3A5: STA.w $0DC0,X

#_1EE3A8: RTS

;===================================================================================================

Kiki_OfferInitialService:
#_1EE3A9: LDA.w $0D80,X
#_1EE3AC: DEC A
#_1EE3AD: DEC A
#_1EE3AE: BMI .invisible

#_1EE3B0: JSR SpriteDraw_Kiki

.invisible
#_1EE3B3: JSR Sprite_CheckIfActive_Bank1E
#_1EE3B6: JSR Sprite_Move_XYZ_Bank1E

#_1EE3B9: DEC.w $0F80,X

#_1EE3BC: LDA.w $0F70,X
#_1EE3BF: BPL .airborne

#_1EE3C1: STZ.w $0F80,X
#_1EE3C4: STZ.w $0F70,X

.airborne
#_1EE3C7: LDA.b $1A
#_1EE3C9: LSR A
#_1EE3CA: LSR A
#_1EE3CB: LSR A
#_1EE3CC: AND.b #$01
#_1EE3CE: STA.w $0DC0,X

#_1EE3D1: LDA.w $0D80,X
#_1EE3D4: JSL JumpTableLocal
#_1EE3D8: dw Kiki_OfferToFollow
#_1EE3DA: dw Kiki_OfferToFollowTransaction
#_1EE3DC: dw Kiki_MoveTowardsLink
#_1EE3DE: dw Kiki_WaitABit
#_1EE3E0: dw Kiki_EndIntroductionCutscene

;===================================================================================================

Kiki_OfferToFollow:
; Message 011C
#_1EE3E2: LDA.b #$1C
#_1EE3E4: LDY.b #$01
#_1EE3E6: JSL Sprite_ShowMessageUnconditional

#_1EE3EA: INC.w $0D80,X

#_1EE3ED: RTS

;===================================================================================================

Kiki_OfferToFollowTransaction:
#_1EE3EE: LDA.w $1CE8
#_1EE3F1: BNE .offer_rejected

; 10 rupees
#_1EE3F3: LDA.b #$0A
#_1EE3F5: LDY.b #$00
#_1EE3F7: JSR ShopItem_HandleCost
#_1EE3FA: BCC .offer_rejected

; Message 011D
#_1EE3FC: LDA.b #$1D
#_1EE3FE: LDY.b #$01
#_1EE400: JSL Sprite_ShowMessageUnconditional

#_1EE404: LDA.w $02F2
#_1EE407: ORA.b #$03
#_1EE409: STA.w $02F2

#_1EE40C: STZ.w $0DD0,X

#_1EE40F: RTS

;---------------------------------------------------------------------------------------------------

.offer_rejected
; Message 011E
#_1EE410: LDA.b #$1E
#_1EE412: LDY.b #$01
#_1EE414: JSL Sprite_ShowMessageUnconditional

#_1EE418: LDA.w $02F2
#_1EE41B: AND.b #$FC
#_1EE41D: STA.w $02F2

#_1EE420: LDA.b #$00
#_1EE422: STA.l $7EF3CC

#_1EE426: INC.w $0D80,X
#_1EE429: INC.w $02E4

#_1EE42C: RTS

;===================================================================================================

Kiki_MoveTowardsLink:
#_1EE42D: INC.w $0D80,X

#_1EE430: LDA.b #$F5
#_1EE432: STA.b $04

#_1EE434: LDA.b #$0C
#_1EE436: STA.b $05

#_1EE438: LDA.b #$FE
#_1EE43A: STA.b $06

#_1EE43C: LDA.b #$06
#_1EE43E: STA.b $07

#_1EE440: LDA.b #$09
#_1EE442: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1EE446: LDA.b $00
#_1EE448: STA.w $0D40,X

#_1EE44B: LDA.b $01
#_1EE44D: STA.w $0D50,X

#_1EE450: ASL A
#_1EE451: ROL A
#_1EE452: AND.b #$01
#_1EE454: EOR.b #$03
#_1EE456: STA.w $0DE0,X

#_1EE459: LDA.b #$20
#_1EE45B: STA.w $0DF0,X

#_1EE45E: RTS

;===================================================================================================

Kiki_WaitABit:
#_1EE45F: LDA.w $0DF0,X
#_1EE462: BNE .exit

#_1EE464: INC.w $0D80,X

#_1EE467: LDA.b #$10
#_1EE469: STA.w $0F80,X
#_1EE46C: STA.w $0DF0,X

.exit
#_1EE46F: RTS

;===================================================================================================

Kiki_EndIntroductionCutscene:
#_1EE470: LDA.w $0DF0,X
#_1EE473: BNE .exit

#_1EE475: LDA.w $0F70,X
#_1EE478: BNE .exit

#_1EE47A: STZ.w $0DD0,X
#_1EE47D: STZ.w $02E4

.exit
#_1EE480: RTS

;===================================================================================================

Kiki_Dormant:
#_1EE481: JSL Sprite_PrepOAMCoord_long
#_1EE485: JSR Sprite_CheckIfActive_Bank1E

#_1EE488: LDA.w $02E0
#_1EE48B: BNE .exit

#_1EE48D: LDA.w $037B
#_1EE490: ORA.w $031F
#_1EE493: BNE .exit

#_1EE495: LDA.l $7EF3CC
#_1EE499: CMP.b #$0A ; FOLLOWER 0A
#_1EE49B: BEQ .exit

#_1EE49D: PHX

#_1EE49E: LDX.b $8A
#_1EE4A0: LDA.l $7EF280,X
#_1EE4A4: PLX

#_1EE4A5: AND.b #$20
#_1EE4A7: BNE .exit

#_1EE4A9: JSL Sprite_CheckDamageToLink_same_layer_long
#_1EE4AD: BCC .exit

#_1EE4AF: LDA.b #$0A ; FOLLOWER 0A
#_1EE4B1: STA.l $7EF3CC

#_1EE4B5: PHX

#_1EE4B6: STZ.w $02F9

#_1EE4B9: JSL LoadFollowerGraphics
#_1EE4BD: JSL Follower_Initialize

#_1EE4C1: PLX

.exit
#_1EE4C2: RTS

;===================================================================================================

Kiki_OfferEntranceService:
#_1EE4C3: JSR SpriteDraw_Kiki
#_1EE4C6: JSR Sprite_CheckIfActive_Bank1E
#_1EE4C9: JSR Sprite_Move_XYZ_Bank1E

#_1EE4CC: DEC.w $0F80,X

#_1EE4CF: LDA.w $0F70,X
#_1EE4D2: BPL .airborne

#_1EE4D4: STZ.w $0F80,X
#_1EE4D7: STZ.w $0F70,X

.airborne
#_1EE4DA: LDA.w $0D80,X
#_1EE4DD: JSL JumpTableLocal
#_1EE4E1: dw Kiki_OfferToOpenPOD
#_1EE4E3: dw Kiki_VerifyPurchase
#_1EE4E5: dw Kiki_HopToSpot
#_1EE4E7: dw Kiki_DartHead

#_1EE4E9: dw Kiki_HopToSpot
#_1EE4EB: dw Kiki_DartHead
#_1EE4ED: dw Kiki_HopToSpot
#_1EE4EF: dw Kiki_WalkOnRoof

#_1EE4F1: dw Kiki_ReadyButtonPress
#_1EE4F3: dw Kiki_SlamButton
#_1EE4F5: dw Kiki_IdleOnRoof

;===================================================================================================

Kiki_OfferToOpenPOD:
; Message 0119
#_1EE4F7: LDA.b #$19
#_1EE4F9: LDY.b #$01
#_1EE4FB: JSL Sprite_ShowMessageUnconditional

#_1EE4FF: INC.w $0D80,X

#_1EE502: RTS

;===================================================================================================

Kiki_VerifyPurchase:
#_1EE503: LDA.w $1CE8
#_1EE506: BEQ .offer_rejected

.too_poor
; Message 011A
#_1EE508: LDA.b #$1A
#_1EE50A: LDY.b #$01
#_1EE50C: JSL Sprite_ShowMessageUnconditional

#_1EE510: LDA.b #$03
#_1EE512: STA.w $0E80,X

#_1EE515: RTS

.offer_rejected
; 100 rupees
#_1EE516: LDA.b #$64
#_1EE518: LDY.b #$00
#_1EE51A: JSR ShopItem_HandleCost
#_1EE51D: BCC .too_poor

; Message 011B
#_1EE51F: LDA.b #$1B
#_1EE521: LDY.b #$01
#_1EE523: JSL Sprite_ShowMessageUnconditional

#_1EE527: INC.w $02E4

#_1EE52A: INC.w $0D80,X

#_1EE52D: STZ.w $0DE0,X

#_1EE530: RTS

;===================================================================================================

pool Kiki_DartHead

.next_jump_speed
#_1EE531: db  32,  28

pool off

;---------------------------------------------------------------------------------------------------

Kiki_DartHead:
#_1EE533: LDA.w $0E00,X
#_1EE536: BNE .delay

#_1EE538: LDA.w $0D80,X
#_1EE53B: INC.w $0D80,X

#_1EE53E: LSR A
#_1EE53F: AND.b #$01
#_1EE541: TAY

#_1EE542: LDA.w .next_jump_speed,Y
#_1EE545: STA.w $0F80,X

#_1EE548: LDA.b #$20 ; SFX2.20
#_1EE54A: JSL SpriteSFX_QueueSFX2WithPan

#_1EE54E: LDA.w $0D80,X
#_1EE551: LSR A
#_1EE552: AND.b #$01
#_1EE554: ORA.b #$04
#_1EE556: STA.w $0DE0,X

#_1EE559: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_1EE55A: LDA.w $0D80,X
#_1EE55D: LSR A
#_1EE55E: AND.b #$01
#_1EE560: ORA.b #$06
#_1EE562: STA.w $0DE0,X

#_1EE565: LDA.b $1A
#_1EE567: LSR A
#_1EE568: LSR A
#_1EE569: LSR A
#_1EE56A: AND.b #$01
#_1EE56C: STA.w $0DC0,X

#_1EE56F: RTS

;===================================================================================================

pool Kiki_HopToSpot

.target_y
#_1EE570: dw $0661
#_1EE572: dw $064C
#_1EE574: dw $0624

.target_x
#_1EE576: dw $0F4F
#_1EE578: dw $0F70
#_1EE57A: dw $0F5D

pool off

;---------------------------------------------------------------------------------------------------

Kiki_HopToSpot:
#_1EE57C: LDA.b $1A
#_1EE57E: LSR A
#_1EE57F: LSR A
#_1EE580: LSR A
#_1EE581: AND.b #$01
#_1EE583: STA.w $0DC0,X

#_1EE586: LDA.w $0D80,X
#_1EE589: SEC
#_1EE58A: SBC.b #$02
#_1EE58C: TAY

#_1EE58D: LDA.w .target_x+0,Y
#_1EE590: SEC
#_1EE591: SBC.w $0D10,X
#_1EE594: CLC
#_1EE595: ADC.b #$02

#_1EE597: CMP.b #$04
#_1EE599: BCS .not_at_target

#_1EE59B: LDA.w .target_y+0,Y
#_1EE59E: SEC
#_1EE59F: SBC.w $0D00,X
#_1EE5A2: CLC
#_1EE5A3: ADC.b #$02

#_1EE5A5: CMP.b #$04
#_1EE5A7: BCS .not_at_target

#_1EE5A9: INC.w $0D80,X

#_1EE5AC: STZ.w $0D40,X
#_1EE5AF: STZ.w $0D50,X

#_1EE5B2: LDA.b #$20
#_1EE5B4: STA.w $0E00,X

#_1EE5B7: LDA.b #$21 ; SFX2.21
#_1EE5B9: JSL SpriteSFX_QueueSFX2WithPan

#_1EE5BD: RTS

;---------------------------------------------------------------------------------------------------

.not_at_target
#_1EE5BE: LDA.w .target_x+0,Y
#_1EE5C1: STA.b $04

#_1EE5C3: LDA.w .target_x+1,Y
#_1EE5C6: STA.b $05

#_1EE5C8: LDA.w .target_y+0,Y
#_1EE5CB: STA.b $06

#_1EE5CD: LDA.w .target_y+1,Y
#_1EE5D0: STA.b $07

#_1EE5D2: LDA.b #$09
#_1EE5D4: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1EE5D8: LDA.b $00
#_1EE5DA: STA.w $0D40,X

#_1EE5DD: LDA.b $01
#_1EE5DF: STA.w $0D50,X

#_1EE5E2: RTS

;===================================================================================================

pool Kiki_WalkOnRoof

.step
#_1EE5E3: db $02, $01, $FF

.timer
#_1EE5E6: db  82,   0

pool off

;---------------------------------------------------------------------------------------------------

Kiki_WalkOnRoof:
#_1EE5E8: LDA.b $1A
#_1EE5EA: LSR A
#_1EE5EB: LSR A
#_1EE5EC: LSR A
#_1EE5ED: AND.b #$01
#_1EE5EF: STA.w $0DC0,X

#_1EE5F2: LDA.w $0F70,X
#_1EE5F5: BNE .exit

#_1EE5F7: LDA.w $0DF0,X
#_1EE5FA: BNE .exit

#_1EE5FC: LDA.w $0D90,X
#_1EE5FF: TAY

#_1EE600: INC.w $0D90,X

#_1EE603: LDA.w .step,Y
#_1EE606: BMI .on_roof

#_1EE608: PHA

#_1EE609: STA.w $0DE0,X

#_1EE60C: LDA.w .timer,Y
#_1EE60F: STA.w $0DF0,X

; Why not PLY?
; 6502 code?
#_1EE612: PLA
#_1EE613: TAY

#_1EE614: LDA.w .speed_x,Y
#_1EE617: STA.w $0D50,X

#_1EE61A: LDA.w .speed_y,Y
#_1EE61D: STA.w $0D40,X

.exit
#_1EE620: RTS

;---------------------------------------------------------------------------------------------------

.on_roof
#_1EE621: INC.w $0D80,X

#_1EE624: STZ.w $0D50,X
#_1EE627: STZ.w $0D40,X

#_1EE62A: LDA.b #$01
#_1EE62C: STA.w $04C6

#_1EE62F: STZ.b $B0
#_1EE631: STZ.b $C8

#_1EE633: STZ.w $0DE0,X

#_1EE636: STZ.w $02E4

#_1EE639: RTS

;===================================================================================================

Kiki_ReadyButtonPress:
#_1EE63A: LDA.b #$08
#_1EE63C: STA.w $0DE0,X

#_1EE63F: STZ.w $0DC0,X

#_1EE642: JSL GetRandomNumber
#_1EE646: AND.b #$0F
#_1EE648: ADC.b #$10
#_1EE64A: STA.w $0F80,X

#_1EE64D: INC.w $0D80,X

#_1EE650: RTS

;===================================================================================================

Kiki_SlamButton:
#_1EE651: LDA.w $0F80,X
#_1EE654: BPL Kiki_IdleOnRoof

#_1EE656: LDA.w $0F70,X
#_1EE659: BNE Kiki_IdleOnRoof

#_1EE65B: INC.w $0D80,X

#_1EE65E: LDA.b #$25 ; SFX3.25
#_1EE660: JSL SpriteSFX_QueueSFX3WithPan

;===================================================================================================

Kiki_IdleOnRoof:
#_1EE664: RTS

;===================================================================================================

Kiki_RevertToSprite:
#_1EE665: JSR Kiki_SpawnHandlerMonke

#_1EE668: LDA.b #$01
#_1EE66A: STA.w $0E80,Y

#_1EE66D: LDA.b #$00
#_1EE66F: STA.l $7EF3CC

#_1EE673: RTL

;===================================================================================================
; TODO analyze
;===================================================================================================
Kiki_SpawnHandlerMonke:
#_1EE674: PHA

#_1EE675: LDA.b #$B6 ; SPRITE B6
#_1EE677: JSL Sprite_SpawnDynamically
#_1EE67B: BMI .no_space

#_1EE67D: PLA
#_1EE67E: PHX
#_1EE67F: TAX

#_1EE680: LDA.w $1A64,X
#_1EE683: AND.b #$03
#_1EE685: STA.w $0EB0,Y
#_1EE688: STA.w $0DE0,Y

#_1EE68B: LDA.w $1A00,X
#_1EE68E: CLC
#_1EE68F: ADC.b #$02
#_1EE691: STA.w $0D00,Y

#_1EE694: LDA.w $1A14,X
#_1EE697: ADC.b #$00
#_1EE699: STA.w $0D20,Y

#_1EE69C: LDA.w $1A28,X
#_1EE69F: CLC
#_1EE6A0: ADC.b #$02
#_1EE6A2: STA.w $0D10,Y

#_1EE6A5: LDA.w $1A3C,X
#_1EE6A8: ADC.b #$00
#_1EE6AA: STA.w $0D30,Y

#_1EE6AD: LDA.b $EE
#_1EE6AF: STA.w $0F20,Y

#_1EE6B2: LDA.b #$01
#_1EE6B4: STA.w $0BA0,Y

#_1EE6B7: INC A
#_1EE6B8: STA.w $0F20,Y

#_1EE6BB: STZ.b $5E

#_1EE6BD: PLX

#_1EE6BE: RTS

.no_space
#_1EE6BF: PLA

#_1EE6C0: RTS

;===================================================================================================
; TODO
;===================================================================================================
Kiki_SpawnHandler_A:
#_1EE6C1: JSR Kiki_SpawnHandlerMonke

#_1EE6C4: LDA.b #$02
#_1EE6C6: STA.w $0E80,Y

#_1EE6C9: RTL

;===================================================================================================

Kiki_SpawnHandler_B:
#_1EE6CA: JSR Kiki_SpawnHandlerMonke

#_1EE6CD: LDA.b #$01
#_1EE6CF: STA.w $0F70,Y

#_1EE6D2: LDA.b #$10
#_1EE6D4: STA.w $0F80,Y

#_1EE6D7: LDA.b #$03
#_1EE6D9: STA.w $0E80,Y

#_1EE6DC: LDA.b #$00
#_1EE6DE: STA.l $7EF3CC

#_1EE6E2: RTL

;===================================================================================================

pool SpriteDraw_Kiki

.gfx_offset
#_1EE6E3: db $20, $C0
#_1EE6E5: db $20, $C0
#_1EE6E7: db $00, $A0
#_1EE6E9: db $00, $A0
#_1EE6EB: db $40, $80
#_1EE6ED: db $40, $60
#_1EE6EF: db $40, $80
#_1EE6F1: db $40, $60

;---------------------------------------------------------------------------------------------------

.oam_groups_a
; group00
#_1EE6F3: dw   0,  -6 : db $20, $00, $00, $02
#_1EE6FB: dw   0,   0 : db $22, $00, $00, $02

; group01
#_1EE703: dw   0,  -6 : db $20, $00, $00, $02
#_1EE70B: dw   0,   0 : db $22, $40, $00, $02

; group02
#_1EE713: dw   0,  -6 : db $20, $00, $00, $02
#_1EE71B: dw   0,   0 : db $22, $00, $00, $02

; group03
#_1EE723: dw   0,  -6 : db $20, $00, $00, $02
#_1EE72B: dw   0,   0 : db $22, $40, $00, $02

; group04
#_1EE733: dw  -1,  -6 : db $20, $00, $00, $02
#_1EE73B: dw   0,   0 : db $22, $00, $00, $02

; group05
#_1EE743: dw  -1,  -6 : db $20, $00, $00, $02
#_1EE74B: dw   0,   0 : db $22, $00, $00, $02

; group06
#_1EE753: dw   1,  -6 : db $20, $40, $00, $02
#_1EE75B: dw   0,   0 : db $22, $40, $00, $02

; group07
#_1EE763: dw   1,  -6 : db $20, $40, $00, $02
#_1EE76B: dw   0,   0 : db $22, $40, $00, $02

; group08
#_1EE773: dw   0,  -6 : db $CE, $01, $00, $02
#_1EE77B: dw   0,   0 : db $EE, $01, $00, $02

; group09
#_1EE783: dw   0,  -6 : db $CE, $01, $00, $02
#_1EE78B: dw   0,   0 : db $EE, $01, $00, $02

; group0A
#_1EE793: dw   0,  -6 : db $CE, $41, $00, $02
#_1EE79B: dw   0,   0 : db $EE, $41, $00, $02

; group0B
#_1EE7A3: dw   0,  -6 : db $CE, $41, $00, $02
#_1EE7AB: dw   0,   0 : db $EE, $41, $00, $02

; group0C
#_1EE7B3: dw  -1,  -6 : db $CE, $01, $00, $02
#_1EE7BB: dw   0,   0 : db $EC, $01, $00, $02

; group0D
#_1EE7C3: dw  -1,  -6 : db $CE, $41, $00, $02
#_1EE7CB: dw   0,   0 : db $EC, $01, $00, $02

; group0E
#_1EE7D3: dw   1,  -6 : db $CE, $41, $00, $02
#_1EE7DB: dw   0,   0 : db $EC, $41, $00, $02

; group0F
#_1EE7E3: dw   1,  -6 : db $CE, $01, $00, $02
#_1EE7EB: dw   0,   0 : db $EC, $41, $00, $02

;---------------------------------------------------------------------------------------------------

.oam_groups_b
; group10
#_1EE7F3: dw   0,  -6 : db $CA, $01, $00, $00
#_1EE7FB: dw   8,  -6 : db $CA, $41, $00, $00

; group11
#_1EE803: dw   0,   2 : db $DA, $01, $00, $00
#_1EE80B: dw   8,   2 : db $DA, $41, $00, $00

; group12
#_1EE813: dw   0,  10 : db $CB, $01, $00, $00
#_1EE81B: dw   8,  10 : db $CB, $41, $00, $00

; group13
#_1EE823: dw   0,  -6 : db $DB, $01, $00, $00
#_1EE82B: dw   8,  -6 : db $DB, $41, $00, $00

; group14
#_1EE833: dw   0,   2 : db $CC, $01, $00, $00
#_1EE83B: dw   8,   2 : db $CC, $41, $00, $00

; group15
#_1EE843: dw   0,  10 : db $DC, $01, $00, $00
#_1EE84B: dw   8,  10 : db $DD, $41, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Kiki:
#_1EE853: LDA.w $0DE0,X
#_1EE856: CMP.b #$08
#_1EE858: BCS .use_set_2

#_1EE85A: LDA.w $0DE0,X
#_1EE85D: ASL A
#_1EE85E: ADC.w $0DC0,X
#_1EE861: ASL A
#_1EE862: TAY

#_1EE863: LDA.w .gfx_offset+0,Y
#_1EE866: STA.w $0AE8

#_1EE869: LDA.w .gfx_offset+1,Y
#_1EE86C: STA.w $0AEA

#_1EE86F: TYA
#_1EE870: ASL A
#_1EE871: ASL A
#_1EE872: ASL A
#_1EE873: ADC.b #.oam_groups_a>>0
#_1EE875: STA.b $08

#_1EE877: LDA.b #.oam_groups_a>>8
#_1EE879: ADC.b #$00
#_1EE87B: STA.b $09

#_1EE87D: LDA.b #$02
#_1EE87F: JSR Sprite_DrawMultiple_Bank1E

#_1EE882: LDA.w $0F00,X
#_1EE885: BNE .exit_a

#_1EE887: JSL SpriteDraw_Shadow_long

.exit_a
#_1EE88B: RTS

;===================================================================================================

; TODO analyze
.use_set_2
#_1EE88C: LDA.w $0DC0,X
#_1EE88F: ASL A

#_1EE890: ADC.w $0DC0,X
#_1EE893: ASL A
#_1EE894: ASL A
#_1EE895: ASL A
#_1EE896: ASL A

#_1EE897: ADC.b #.oam_groups_b>>0
#_1EE899: STA.b $08

#_1EE89B: LDA.b #.oam_groups_b>>8
#_1EE89D: ADC.b #$00
#_1EE89F: STA.b $09

#_1EE8A1: LDA.b #$06
#_1EE8A3: JSR Sprite_DrawMultiple_Bank1E

#_1EE8A6: LDA.w $0F00,X
#_1EE8A9: BNE .exit_b

#_1EE8AB: JSL SpriteDraw_Shadow_long

.exit_b
#_1EE8AF: RTS

;===================================================================================================

Sprite_B7_BlindMaiden:
#_1EE8B0: JSL SpriteDraw_Maiden
#_1EE8B4: JSR Sprite_CheckIfActive_Bank1E
#_1EE8B7: JSL Sprite_TrackBodyToHead

#_1EE8BB: JSR Sprite_DirectionToFaceLink_Bank1E
#_1EE8BE: TYA
#_1EE8BF: EOR.b #$03
#_1EE8C1: STA.w $0EB0,X

#_1EE8C4: LDA.w $0D80,X
#_1EE8C7: BNE .become_follower

; Message 0120
#_1EE8C9: LDA.b #$20
#_1EE8CB: LDY.b #$01
#_1EE8CD: JSL Sprite_ShowMessageOnContact
#_1EE8D1: BCC .exit

#_1EE8D3: INC.w $0D80,X

.exit
#_1EE8D6: RTS

;---------------------------------------------------------------------------------------------------

.become_follower
#_1EE8D7: STZ.w $0DD0,X

#_1EE8DA: LDA.b #$06 ; FOLLOWER 06
#_1EE8DC: STA.l $7EF3CC

#_1EE8E0: PHX
#_1EE8E1: JSL LoadFollowerGraphics
#_1EE8E5: PLX

#_1EE8E6: JSL Sprite_BecomeFollower

#_1EE8EA: RTS

;===================================================================================================

SpritePrep_OldMan:
#_1EE8EB: PHB
#_1EE8EC: PHK
#_1EE8ED: PLB

#_1EE8EE: JSR .main

#_1EE8F1: PLB

#_1EE8F2: RTL

;---------------------------------------------------------------------------------------------------

.main
#_1EE8F3: INC.w $0BA0,X

#_1EE8F6: LDA.b $A0
#_1EE8F8: CMP.b #$E4 ; Room 00E4
#_1EE8FA: BNE .not_home

#_1EE8FC: LDA.b #$02
#_1EE8FE: STA.w $0E80,X

#_1EE901: RTS

.not_home
#_1EE902: LDA.l $7EF3CC
#_1EE906: CMP.b #$00 ; useless
#_1EE908: BNE .dont_spawn

#_1EE90A: LDA.l $7EF353
#_1EE90E: CMP.b #$02
#_1EE910: BNE .spawn

#_1EE912: STZ.w $0DD0,X

.spawn
#_1EE915: LDA.b #$04 ; FOLLOWER 04
#_1EE917: STA.l $7EF3CC

#_1EE91B: PHX
#_1EE91C: JSL LoadFollowerGraphics
#_1EE920: PLX

#_1EE921: LDA.b #$00
#_1EE923: STA.l $7EF3CC

#_1EE927: RTS

;---------------------------------------------------------------------------------------------------

.dont_spawn
#_1EE928: STZ.w $0DD0,X

#_1EE92B: PHX ; useless honestly
#_1EE92C: JSL LoadFollowerGraphics
#_1EE930: PLX

#_1EE931: RTS

;===================================================================================================

OldMan_RevertToSprite:
#_1EE932: PHA

#_1EE933: LDA.b #$AD ; SPRITE AD
#_1EE935: JSL Sprite_SpawnDynamically

#_1EE939: PLA

#_1EE93A: PHX

#_1EE93B: TAX

#_1EE93C: LDA.w $1A64,X
#_1EE93F: AND.b #$03
#_1EE941: STA.w $0EB0,Y
#_1EE944: STA.w $0DE0,Y

#_1EE947: LDA.w $1A00,X
#_1EE94A: CLC
#_1EE94B: ADC.b #$02
#_1EE94D: STA.w $0D00,Y

#_1EE950: LDA.w $1A14,X
#_1EE953: ADC.b #$00
#_1EE955: STA.w $0D20,Y

#_1EE958: LDA.w $1A28,X
#_1EE95B: CLC
#_1EE95C: ADC.b #$02
#_1EE95E: STA.w $0D10,Y

#_1EE961: LDA.w $1A3C,X
#_1EE964: ADC.b #$00
#_1EE966: STA.w $0D30,Y

#_1EE969: LDA.b $EE
#_1EE96B: STA.w $0F20,Y

#_1EE96E: LDA.b #$01
#_1EE970: STA.w $0BA0,Y
#_1EE973: STA.w $0E80,Y

#_1EE976: JSR OldMan_EnableCutscene

#_1EE979: PLX

#_1EE97A: LDA.b #$00
#_1EE97C: STA.l $7EF3CC

#_1EE980: STZ.b $5E

#_1EE982: RTL

;===================================================================================================

OldMan_EnableCutscene:
#_1EE983: LDA.b #$01
#_1EE985: STA.w $02E4
#_1EE988: STA.w $037B

#_1EE98B: RTS

;===================================================================================================

Sprite_AD_OldMan:
#_1EE98C: JSL SpriteDraw_OldMan
#_1EE990: JSR Sprite_CheckIfActive_Bank1E

#_1EE993: LDA.w $0E80,X
#_1EE996: JSL JumpTableLocal
#_1EE99A: dw OldMan_Lost
#_1EE99C: dw OldMan_Returning
#_1EE99E: dw OldMan_Home

;===================================================================================================

OldMan_Lost:
#_1EE9A0: LDA.w $0D80,X
#_1EE9A3: JSL JumpTableLocal
#_1EE9A7: dw OldMan_Lost_Wait
#_1EE9A9: dw OldMan_Lost_BecomeFollower

;===================================================================================================

OldMan_Lost_Wait:
#_1EE9AB: JSL Sprite_TrackBodyToHead

#_1EE9AF: JSR Sprite_DirectionToFaceLink_Bank1E
#_1EE9B2: TYA
#_1EE9B3: EOR.b #$03
#_1EE9B5: STA.w $0EB0,X

; Message 009A
#_1EE9B8: LDA.b #$9A
#_1EE9BA: LDY.b #$00
#_1EE9BC: JSL Sprite_ShowMessageOnContact
#_1EE9C0: BCC .exit

#_1EE9C2: STA.w $0DE0,X
#_1EE9C5: STA.w $0EB0,X

#_1EE9C8: INC.w $0D80,X

.exit
#_1EE9CB: RTS

;===================================================================================================

OldMan_Lost_BecomeFollower:
#_1EE9CC: LDA.b #$04 ; FOLLOWER 04
#_1EE9CE: STA.l $7EF3CC

#_1EE9D2: JSL Sprite_BecomeFollower

#_1EE9D6: LDA.b #$05
#_1EE9D8: STA.l $7EF3C8

#_1EE9DC: STZ.w $0DD0,X

#_1EE9DF: JSL CacheRoomEntryProperties_long

#_1EE9E3: RTS

;===================================================================================================

OldMan_Returning:
#_1EE9E4: JSR Sprite_Move_XY_Bank1E

#_1EE9E7: LDA.w $0D80,X
#_1EE9EA: JSL JumpTableLocal
#_1EE9EE: dw OldMan_Returning_GiveMirror
#_1EE9F0: dw OldMan_Returning_Move
#_1EE9F2: dw OldMan_Returning_EnterDoor
#_1EE9F4: dw OldMan_Returning_FinishUp

;===================================================================================================

OldMan_Returning_GiveMirror:
#_1EE9F6: INC.w $0D80,X

#_1EE9F9: LDY.b #$1A ; ITEMGET 1A
#_1EE9FB: STZ.w $02E9
#_1EE9FE: JSL Link_ReceiveItem

; This is weird.
; It's why rescuing old man in rain state spawns you in sanc.
#_1EEA02: LDA.b #$01
#_1EEA04: STA.l $7EF3C8

#_1EEA08: JSR OldMan_EnableCutscene

#_1EEA0B: LDA.b #$30
#_1EEA0D: STA.w $0DF0,X

#_1EEA10: LDA.b #$08
#_1EEA12: STA.w $0D50,X

#_1EEA15: LSR A
#_1EEA16: STA.w $0D40,X

#_1EEA19: LDA.b #$03
#_1EEA1B: STA.w $0EB0,X
#_1EEA1E: STA.w $0DE0,X

#_1EEA21: RTS

;===================================================================================================

OldMan_Returning_Move:
#_1EEA22: JSR OldMan_EnableCutscene

#_1EEA25: LDA.w $0DF0,X
#_1EEA28: BNE .delay

#_1EEA2A: INC.w $0D80,X

.delay
#_1EEA2D: TXA
#_1EEA2E: EOR.b $1A
#_1EEA30: LSR A
#_1EEA31: LSR A
#_1EEA32: LSR A
#_1EEA33: AND.b #$01
#_1EEA35: STA.w $0DC0,X

#_1EEA38: RTS

;===================================================================================================

OldMan_Returning_EnterDoor:
#_1EEA39: STZ.w $0EB0,X

#_1EEA3C: STZ.w $0DE0,X

#_1EEA3F: LDY.w $0FDE

#_1EEA42: LDA.w $0B18,Y
#_1EEA45: STA.b $00

#_1EEA47: LDA.w $0B20,Y
#_1EEA4A: STA.b $01

#_1EEA4C: LDA.w $0D00,X
#_1EEA4F: STA.b $02

#_1EEA51: LDA.w $0D20,X
#_1EEA54: STA.b $03

#_1EEA56: REP #$20

#_1EEA58: LDA.b $00
#_1EEA5A: CMP.b $02

#_1EEA5C: SEP #$30
#_1EEA5E: BCC .not_north_enough

#_1EEA60: INC.w $0D80,X

#_1EEA63: STZ.w $0D50,X
#_1EEA66: STZ.w $0D40,X

#_1EEA69: RTS

.not_north_enough
#_1EEA6A: LDA.w $0B08,Y
#_1EEA6D: STA.b $04

#_1EEA6F: LDA.w $0B10,Y
#_1EEA72: STA.b $05

#_1EEA74: LDA.w $0B18,Y
#_1EEA77: STA.b $06

#_1EEA79: LDA.w $0B20,Y
#_1EEA7C: STA.b $07

#_1EEA7E: LDA.b #$08
#_1EEA80: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1EEA84: LDA.b $00
#_1EEA86: STA.w $0D40,X

#_1EEA89: LDA.b $01
#_1EEA8B: STA.w $0D50,X

#_1EEA8E: TXA
#_1EEA8F: EOR.b $1A
#_1EEA91: LSR A
#_1EEA92: LSR A
#_1EEA93: LSR A
#_1EEA94: AND.b #$01
#_1EEA96: STA.w $0DC0,X

#_1EEA99: JSR OldMan_EnableCutscene

#_1EEA9C: RTS

;===================================================================================================

OldMan_Returning_FinishUp:
#_1EEA9D: STZ.w $0DD0,X
#_1EEAA0: STZ.w $02E4
#_1EEAA3: STZ.w $037B

#_1EEAA6: RTS

;===================================================================================================

pool OldMan_Home

.message_low
#_1EEAA7: db $9C ; Message 009C
#_1EEAA8: db $9D ; Message 009D
#_1EEAA9: db $9E ; Message 009E

.message_high
#_1EEAAA: db $00
#_1EEAAB: db $00
#_1EEAAC: db $00

pool off

;---------------------------------------------------------------------------------------------------

OldMan_Home:
#_1EEAAD: JSL Sprite_BehaveAsBarrier

#_1EEAB1: LDA.w $0D80,X
#_1EEAB4: BEQ .no_kiss

#_1EEAB6: LDA.b #$A0
#_1EEAB8: STA.l $7EF372

#_1EEABC: STZ.w $0D80,X

.no_kiss
#_1EEABF: LDY.b #$02

#_1EEAC1: LDA.l $7EF3C5
#_1EEAC5: CMP.b #$03
#_1EEAC7: BCS .agahnim_defeated

; Check for pearl
#_1EEAC9: LDA.l $7EF357
#_1EEACD: TAY

.agahnim_defeated
#_1EEACE: LDA.w .message_low,Y
#_1EEAD1: XBA

#_1EEAD2: LDA.w .message_high,Y
#_1EEAD5: TAY

#_1EEAD6: XBA
#_1EEAD7: JSL Sprite_ShowSolicitedMessage
#_1EEADB: BCC .exit

#_1EEADD: INC.w $0D80,X

.exit
#_1EEAE0: RTS

;===================================================================================================
; Unused sprite
; Used to, as the name implies, test every text in game.
;===================================================================================================
Sprite_B8_DialogueTester:
#_1EEAE1: JSL SpriteDraw_Priest

#_1EEAE5: JSR Sprite_CheckIfActive_Bank1E

#_1EEAE8: LDA.w $0D90,X
#_1EEAEB: AND.b #$03
#_1EEAED: STA.w $0DE0,X

#_1EEAF0: LDA.w $0D80,X
#_1EEAF3: JSL JumpTableLocal
#_1EEAF7: dw DialogueTester_Initialize
#_1EEAF9: dw DialogueTester_TestMessage
#_1EEAFB: dw DialogueTester_NextMessage

;===================================================================================================

DialogueTester_Initialize:
#_1EEAFD: STZ.w $0D90,X

#_1EEB00: STZ.w $0DA0,X

#_1EEB03: INC.w $0D80,X

;===================================================================================================

DialogueTester_TestMessage:
#_1EEB06: LDA.w $0D90,X
#_1EEB09: LDY.w $0DA0,X

#_1EEB0C: JSL Sprite_ShowMessageOnContact
#_1EEB10: BCC .exit

#_1EEB12: INC.w $0D80,X

.exit
#_1EEB15: RTS

;===================================================================================================

DialogueTester_NextMessage:
#_1EEB16: LDA.w $0D90,X
#_1EEB19: CLC
#_1EEB1A: ADC.b #$01
#_1EEB1C: STA.w $0D90,X

#_1EEB1F: LDA.w $0DA0,X
#_1EEB22: ADC.b #$00
#_1EEB24: STA.w $0DA0,X

#_1EEB27: LDA.b #$01
#_1EEB29: STA.w $0D80,X

#_1EEB2C: RTS

;===================================================================================================

Sprite_B9_BullyAndPinkBall:
#_1EEB2D: LDA.w $0E80,X
#_1EEB30: JSL JumpTableLocal
#_1EEB34: dw PinkBall
#_1EEB36: dw PinkBall_Distress
#_1EEB38: dw Bully

;===================================================================================================

PinkBall:
#_1EEB3A: JSL OAM_AllocateDeferToPlayer_long
#_1EEB3E: JSL SpriteDraw_SingleLarge_long

#_1EEB42: JSR Sprite_CheckIfActive_Bank1E
#_1EEB45: JSR PinkBall_HandleMessage

#_1EEB48: LDA.w $0F50,X
#_1EEB4B: AND.b #$7F
#_1EEB4D: ORA.w $0EB0,X
#_1EEB50: STA.w $0F50,X

#_1EEB53: JSR Sprite_Move_XYZ_Bank1E
#_1EEB56: JSR Sprite_CheckTileCollision_Bank1E
#_1EEB59: BEQ .no_tile_collision

#_1EEB5B: AND.b #$03
#_1EEB5D: BNE .bounce

#_1EEB5F: LDA.w $0D40,X
#_1EEB62: EOR.b #$FF
#_1EEB64: INC A
#_1EEB65: STA.w $0D40,X

#_1EEB68: LDA.w $0E90,X
#_1EEB6B: BEQ .bounce

#_1EEB6D: JSR BOI_OI_OI_OI_OING
#_1EEB70: BRA .no_tile_collision

.bounce
#_1EEB72: LDA.w $0D50,X
#_1EEB75: EOR.b #$FF
#_1EEB77: INC A
#_1EEB78: STA.w $0D50,X

#_1EEB7B: LDA.w $0E90,X
#_1EEB7E: BEQ .no_tile_collision

#_1EEB80: JSR BOI_OI_OI_OI_OING

.no_tile_collision
#_1EEB83: DEC.w $0F80,X

#_1EEB86: LDA.w $0F70,X
#_1EEB89: BPL .airborne

#_1EEB8B: STZ.w $0F70,X

#_1EEB8E: LDA.w $0F80,X
#_1EEB91: EOR.b #$FF
#_1EEB93: INC A

#_1EEB94: LSR A
#_1EEB95: LSR A
#_1EEB96: STA.w $0F80,X

#_1EEB99: AND.b #$FC
#_1EEB9B: BEQ .no_sfx

#_1EEB9D: JSR BOI_OI_OI_OI_OING

.no_sfx
#_1EEBA0: JSR PinkBall_HandleDeceleration

.airborne
#_1EEBA3: LDA.w $0E90,X
#_1EEBA6: BNE PinkBall_Kicked

#_1EEBA8: LDA.w $0EB0,X
#_1EEBAB: BEQ PinkBall_RightSideUp
#_1EEBAD: JMP.w PinkBall_UpsideDown

;===================================================================================================

PinkBall_RightSideUp:
#_1EEBB0: JSR PinkBall_Distress

#_1EEBB3: TXA
#_1EEBB4: EOR.b $1A
#_1EEBB6: PHA

#_1EEBB7: LSR A
#_1EEBB8: LSR A
#_1EEBB9: LSR A
#_1EEBBA: AND.b #$01
#_1EEBBC: STA.w $0DC0,X

#_1EEBBF: PLA
#_1EEBC0: AND.b #$3F
#_1EEBC2: BNE .continue

#_1EEBC4: JSL GetRandomNumber
#_1EEBC8: STA.b $04

; Always go to the same block of map that Link is at.
#_1EEBCA: LDA.b $23
#_1EEBCC: STA.b $05

#_1EEBCE: JSL GetRandomNumber
#_1EEBD2: STA.b $06

#_1EEBD4: LDA.b $21
#_1EEBD6: STA.b $07

#_1EEBD8: LDA.b #$08
#_1EEBDA: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1EEBDE: LDA.b $01
#_1EEBE0: STA.w $0DA0,X

#_1EEBE3: LDA.b $00
#_1EEBE5: STA.w $0D90,X

#_1EEBE8: BEQ .continue

#_1EEBEA: LDA.w $0F50,X
#_1EEBED: ORA.b #$40
#_1EEBEF: STA.w $0F50,X

#_1EEBF2: LDA.w $0D50,X
#_1EEBF5: LSR A
#_1EEBF6: AND.b #$40
#_1EEBF8: EOR.w $0F50,X
#_1EEBFB: STA.w $0F50,X

.continue
#_1EEBFE: LDA.w $0DA0,X
#_1EEC01: STA.w $0D50,X

#_1EEC04: LDA.w $0D90,X
#_1EEC07: STA.w $0D40,X

#_1EEC0A: RTS

;===================================================================================================

PinkBall_Kicked:
#_1EEC0B: LDA.w $0D50,X
#_1EEC0E: ORA.w $0D40,X
#_1EEC11: BNE .have_momentum

#_1EEC13: STZ.w $0E90,X

#_1EEC16: RTS

.have_momentum
#_1EEC17: TXA
#_1EEC18: EOR.b $1A
#_1EEC1A: PHA

#_1EEC1B: LSR A
#_1EEC1C: LSR A
#_1EEC1D: AND.b #$01
#_1EEC1F: STA.w $0DC0,X

#_1EEC22: PLA
#_1EEC23: ASL A
#_1EEC24: ASL A
#_1EEC25: AND.b #$80
#_1EEC27: STA.w $0EB0,X

#_1EEC2A: RTS

;===================================================================================================

PinkBall_UpsideDown:
#_1EEC2B: JSR PinkBall_Distress

#_1EEC2E: TXA
#_1EEC2F: EOR.b $1A
#_1EEC31: BEQ .flip_upright

#_1EEC33: LSR A
#_1EEC34: LSR A
#_1EEC35: AND.b #$01
#_1EEC37: STA.w $0DC0,X

#_1EEC3A: STZ.w $0D50,X
#_1EEC3D: STZ.w $0D40,X

#_1EEC40: RTS

.flip_upright
#_1EEC41: STZ.w $0EB0,X

#_1EEC44: RTS

;===================================================================================================

pool PinkBall_HandleDeceleration

.decel
#_1EEC45: db -2,  2

pool off

;---------------------------------------------------------------------------------------------------

PinkBall_HandleDeceleration:
#_1EEC47: LDA.w $0D50,X
#_1EEC4A: BEQ .handle_y

#_1EEC4C: PHA

#_1EEC4D: ASL A
#_1EEC4E: ROL A
#_1EEC4F: AND.b #$01
#_1EEC51: TAY

#_1EEC52: PLA
#_1EEC53: CLC
#_1EEC54: ADC.w .decel,Y
#_1EEC57: STA.w $0D50,X

.handle_y
#_1EEC5A: LDA.w $0D40,X
#_1EEC5D: BEQ .exit

#_1EEC5F: PHA

#_1EEC60: ASL A
#_1EEC61: ROL A
#_1EEC62: AND.b #$01
#_1EEC64: TAY

#_1EEC65: PLA
#_1EEC66: CLC
#_1EEC67: ADC.w .decel,Y
#_1EEC6A: STA.w $0D40,X

.exit
#_1EEC6D: RTS

;===================================================================================================

PinkBall_Distress:
#_1EEC6E: JSR Sprite_PrepOAMCoord_Bank1E
#_1EEC71: JSL Sprite_DrawDistressSweat

#_1EEC75: RTS

;===================================================================================================

Bully:
#_1EEC76: JSR SpriteDraw_Bully
#_1EEC79: JSR Sprite_CheckIfActive_Bank1E
#_1EEC7C: JSR Bully_HandleMessage

#_1EEC7F: JSR Sprite_Move_XYZ_Bank1E
#_1EEC82: JSR Sprite_CheckTileCollision_Bank1E
#_1EEC85: BEQ .no_tile_collision

#_1EEC87: AND.b #$03
#_1EEC89: BNE .horizontal_collision

#_1EEC8B: LDA.w $0D40,X
#_1EEC8E: EOR.b #$FF
#_1EEC90: INC A
#_1EEC91: STA.w $0D40,X
#_1EEC94: BRA .no_tile_collision

.horizontal_collision
#_1EEC96: LDA.w $0D50,X
#_1EEC99: EOR.b #$FF
#_1EEC9B: INC A
#_1EEC9C: STA.w $0D50,X

.no_tile_collision
#_1EEC9F: LDA.w $0D80,X
#_1EECA2: JSL JumpTableLocal
#_1EECA6: dw Bully_ChaseVictim
#_1EECA8: dw Bully_PuntVictim
#_1EECAA: dw Bully_Idle

;===================================================================================================

Bully_ChaseVictim:
#_1EECAC: TXA
#_1EECAD: EOR.b $1A
#_1EECAF: PHA

#_1EECB0: LSR A
#_1EECB1: LSR A
#_1EECB2: LSR A
#_1EECB3: AND.b #$01
#_1EECB5: STA.w $0DC0,X

#_1EECB8: PLA
#_1EECB9: AND.b #$1F
#_1EECBB: BNE .dont_turn

#_1EECBD: LDA.w $0EB0,X ; Use LDY.w $0EB0,X next time.
#_1EECC0: TAY

#_1EECC1: LDA.w $0D10,Y
#_1EECC4: STA.b $04

#_1EECC6: LDA.w $0D30,Y
#_1EECC9: STA.b $05

#_1EECCB: LDA.w $0D00,Y
#_1EECCE: STA.b $06

#_1EECD0: LDA.w $0D20,Y
#_1EECD3: STA.b $07

#_1EECD5: LDA.b #$0E
#_1EECD7: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1EECDB: LDA.b $00
#_1EECDD: STA.w $0D40,X

#_1EECE0: LDA.b $01
#_1EECE2: STA.w $0D50,X
#_1EECE5: BEQ .dont_turn

#_1EECE7: LDA.w $0D50,X
#_1EECEA: ASL A
#_1EECEB: ROL A
#_1EECEC: AND.b #$01
#_1EECEE: STA.w $0DE0,X

.dont_turn
#_1EECF1: LDA.w $0EB0,X ; I said use LDY next time.
#_1EECF4: TAY

#_1EECF5: LDA.w $0F70,Y
#_1EECF8: BNE .exit

#_1EECFA: LDA.w $0D10,X
#_1EECFD: SEC
#_1EECFE: SBC.w $0D10,Y
#_1EED01: CLC
#_1EED02: ADC.b #$08

#_1EED04: CMP.b #$10
#_1EED06: BCS .exit

#_1EED08: LDA.w $0D00,X
#_1EED0B: SEC
#_1EED0C: SBC.w $0D00,Y
#_1EED0F: CLC
#_1EED10: ADC.b #$08

#_1EED12: CMP.b #$10
#_1EED14: BCS .exit

#_1EED16: INC.w $0D80,X

#_1EED19: JSR BOI_OI_OI_OI_OING

.exit
#_1EED1C: RTS

;===================================================================================================

Bully_PuntVictim:
#_1EED1D: INC.w $0D80,X

#_1EED20: LDA.w $0EB0,X
#_1EED23: TAY

#_1EED24: LDA.w $0D50,X
#_1EED27: ASL A
#_1EED28: STA.w $0D50,Y

#_1EED2B: LDA.w $0D40,X
#_1EED2E: ASL A
#_1EED2F: STA.w $0D40,Y

#_1EED32: STZ.w $0D50,X
#_1EED35: STZ.w $0D40,X

#_1EED38: JSL GetRandomNumber
#_1EED3C: AND.b #$1F
#_1EED3E: STA.w $0F80,Y

#_1EED41: LDA.b #$60
#_1EED43: STA.w $0DF0,X

#_1EED46: LDA.b #$01
#_1EED48: STA.w $0DC0,X
#_1EED4B: STA.w $0E90,Y

#_1EED4E: RTS

;===================================================================================================

Bully_Idle:
#_1EED4F: LDA.w $0DF0,X
#_1EED52: BNE .exit

#_1EED54: STZ.w $0D80,X

.exit
#_1EED57: RTS

;===================================================================================================

pool SpriteDraw_Bully

.oam_groups
; group00
#_1EED58: dw   0,  -7 : db $E0, $46, $00, $02
#_1EED60: dw   0,   0 : db $E2, $46, $00, $02

; group01
#_1EED68: dw   0,  -7 : db $E0, $46, $00, $02
#_1EED70: dw   0,   0 : db $C4, $46, $00, $02

; group02
#_1EED78: dw   0,  -7 : db $E0, $06, $00, $02
#_1EED80: dw   0,   0 : db $E2, $06, $00, $02

; group03
#_1EED88: dw   0,  -7 : db $E0, $06, $00, $02
#_1EED90: dw   0,   0 : db $C4, $06, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Bully:
#_1EED98: LDA.b #$02
#_1EED9A: STA.b $06
#_1EED9C: STZ.b $07

#_1EED9E: LDA.w $0DE0,X
#_1EEDA1: ASL A

#_1EEDA2: ADC.w $0DC0,X

#_1EEDA5: ASL A ; x16
#_1EEDA6: ASL A
#_1EEDA7: ASL A
#_1EEDA8: ASL A

#_1EEDA9: ADC.b #.oam_groups>>0
#_1EEDAB: STA.b $08

#_1EEDAD: LDA.b #.oam_groups>>8
#_1EEDAF: ADC.b #$00
#_1EEDB1: STA.b $09

#_1EEDB3: JSL Sprite_DrawMultiple_player_deferred
#_1EEDB7: JSL SpriteDraw_Shadow_long

#_1EEDBB: RTS

;===================================================================================================
; BOI_OI_OI_OI_OING
;===================================================================================================
BOI_OI_OI_OI_OING:
#_1EEDBC: LDA.b #$32 ; SFX3.32
#_1EEDBE: JSL SpriteSFX_QueueSFX3WithPan

#_1EEDC2: RTS

;===================================================================================================

SpawnBully:
#_1EEDC3: LDA.b #$B9 ; SPRITE B9
#_1EEDC5: JSL Sprite_SpawnDynamically
#_1EEDC9: BMI .no_space

#_1EEDCB: JSL Sprite_SetSpawnedCoordinates

#_1EEDCF: LDA.b #$02
#_1EEDD1: STA.w $0E80,Y

#_1EEDD4: TXA
#_1EEDD5: STA.w $0EB0,Y

#_1EEDD8: LDA.b #$01
#_1EEDDA: STA.w $0BA0,Y

.no_space
#_1EEDDD: RTL

;===================================================================================================

pool PinkBall_HandleMessage

.message_low
#_1EEDDE: db $59 ; Message 0159
#_1EEDDF: db $5A ; Message 015A

.message_high
#_1EEDE0: db $01
#_1EEDE1: db $01

pool off

;---------------------------------------------------------------------------------------------------

PinkBall_HandleMessage:
#_1EEDE2: LDA.w $0F10,X
#_1EEDE5: BNE .exit

#_1EEDE7: LDA.l $7EF357
#_1EEDEB: AND.b #$01
#_1EEDED: TAY

#_1EEDEE: LDA.w .message_low,Y
#_1EEDF1: XBA

#_1EEDF2: LDA.w .message_high,Y
#_1EEDF5: TAY

#_1EEDF6: XBA

#_1EEDF7: JSL Sprite_ShowMessageOnContact
#_1EEDFB: BCC .exit

#_1EEDFD: LDA.w $0D50,X
#_1EEE00: EOR.b #$FF
#_1EEE02: STA.w $0D50,X

#_1EEE05: LDA.w $0D40,X
#_1EEE08: EOR.b #$FF
#_1EEE0A: STA.w $0D40,X

#_1EEE0D: LDA.w $0E90,X
#_1EEE10: BEQ .no_sfx

#_1EEE12: JSR BOI_OI_OI_OI_OING

.no_sfx
#_1EEE15: LDA.b #$40
#_1EEE17: STA.w $0F10,X

.exit
#_1EEE1A: RTS

;===================================================================================================

pool Bully_HandleMessage

.message_low
#_1EEE1B: db $5B ; Message 015B
#_1EEE1C: db $5C ; Message 015C

.message_high
#_1EEE1D: db $01
#_1EEE1E: db $01

pool off

;---------------------------------------------------------------------------------------------------

Bully_HandleMessage:
#_1EEE1F: LDA.w $0F10,X
#_1EEE22: BNE .exit

#_1EEE24: LDA.l $7EF357
#_1EEE28: AND.b #$01
#_1EEE2A: TAY

#_1EEE2B: LDA.w .message_low,Y
#_1EEE2E: XBA

#_1EEE2F: LDA.w .message_high,Y
#_1EEE32: TAY

#_1EEE33: XBA

#_1EEE34: JSL Sprite_ShowMessageOnContact
#_1EEE38: BCC .exit

#_1EEE3A: LDA.w $0D50,X
#_1EEE3D: EOR.b #$FF
#_1EEE3F: STA.w $0D50,X

#_1EEE42: LDA.w $0D40,X
#_1EEE45: EOR.b #$FF
#_1EEE47: STA.w $0D40,X

#_1EEE4A: LDA.b #$40
#_1EEE4C: STA.w $0F10,X

.exit
#_1EEE4F: RTS

;===================================================================================================

WhirlpoolFlip:
#_1EEE50: db $00, $40, $C0, $80

;---------------------------------------------------------------------------------------------------

Sprite_BA_Whirlpool:
#_1EEE54: LDA.b $8A
#_1EEE56: CMP.b #$1B
#_1EEE58: BNE Whirlpool

;===================================================================================================

CastleWarp:
#_1EEE5A: JSL Sprite_PrepOAMCoord_long
#_1EEE5E: JSR Sprite_CheckIfActive_Bank1E

#_1EEE61: REP #$20

; !HARDCODED hitbox
#_1EEE63: LDA.w $0FD8
#_1EEE66: SEC
#_1EEE67: SBC.b $22
#_1EEE69: CLC
#_1EEE6A: ADC.w #$0040
#_1EEE6D: CMP.w #$0051
#_1EEE70: BCS .no_warp

#_1EEE72: LDA.w $0FDA
#_1EEE75: SEC
#_1EEE76: SBC.b $20
#_1EEE78: CLC
#_1EEE79: ADC.w #$000F
#_1EEE7C: CMP.w #$0012
#_1EEE7F: BCS .no_warp

#_1EEE81: SEP #$30

#_1EEE83: LDA.b #$23
#_1EEE85: STA.b $11

#_1EEE87: LDA.b #$01
#_1EEE89: STA.w $02DB

#_1EEE8C: STZ.b $B0
#_1EEE8E: STZ.b $27
#_1EEE90: STZ.b $28

#_1EEE92: LDA.b #$14 ; LINKSTATE 14
#_1EEE94: STA.b $5D

.no_warp
#_1EEE96: SEP #$30

#_1EEE98: RTS

;===================================================================================================

Whirlpool:
#_1EEE99: LDA.w $0F50,X
#_1EEE9C: AND.b #$3F
#_1EEE9E: STA.w $0F50,X

#_1EEEA1: LDA.b $1A
#_1EEEA3: LSR A
#_1EEEA4: LSR A
#_1EEEA5: LSR A
#_1EEEA6: AND.b #$03
#_1EEEA8: TAY

#_1EEEA9: LDA.w WhirlpoolFlip,Y
#_1EEEAC: ORA.w $0F50,X
#_1EEEAF: STA.w $0F50,X

#_1EEEB2: LDA.b #$04
#_1EEEB4: JSL OAM_AllocateFromRegionB

#_1EEEB8: REP #$20

#_1EEEBA: LDA.w $0FD8
#_1EEEBD: SEC
#_1EEEBE: SBC.w #$0005
#_1EEEC1: STA.w $0FD8

#_1EEEC4: SEP #$30

#_1EEEC6: JSL SpriteDraw_SingleLarge_long
#_1EEECA: JSR Sprite_CheckIfActive_Bank1E

#_1EEECD: JSL Sprite_CheckDamageToLink_same_layer_long
#_1EEED1: BCC .no_contact

#_1EEED3: LDA.w $0D90,X
#_1EEED6: BNE .exit

#_1EEED8: LDA.b #$2E
#_1EEEDA: STA.b $11
#_1EEEDC: STZ.b $B0

.exit
#_1EEEDE: RTS

.no_contact
#_1EEEDF: STZ.w $0D90,X

#_1EEEE2: RTS

;===================================================================================================

Sprite_BB_Shopkeeper:
#_1EEEE3: LDA.w $0E80,X
#_1EEEE6: JSL JumpTableLocal
#_1EEEEA: dw Shopkeeper_StandardClerk
#_1EEEEC: dw ChestGameGuy
#_1EEEEE: dw NiceThiefWithGift
#_1EEEF0: dw MiniChestGameGuy
#_1EEEF2: dw LostWoodsChestGameGuy
#_1EEEF4: dw NiceThiefUnderRock
#_1EEEF6: dw NiceThiefUnderRock

#_1EEEF8: dw ShopItem_RedPotion150
#_1EEEFA: dw ShopItem_FighterShield
#_1EEEFC: dw ShopItem_FireShield
#_1EEEFE: dw ShopItem_Heart
#_1EEF00: dw ShopItem_Arrows
#_1EEF02: dw ShopItem_Bombs
#_1EEF04: dw ShopItem_Bee

;===================================================================================================

Shopkeeper_StandardClerk:
#_1EEF06: LDA.w $0FFF
#_1EEF09: BEQ .light_world

#_1EEF0B: JSL OAM_AllocateDeferToPlayer_long
#_1EEF0F: JSL SpriteDraw_SingleLarge_long
#_1EEF13: JSR Sprite_CheckIfActive_Bank1E

#_1EEF16: LDA.w $0F50,X
#_1EEF19: AND.b #$3F
#_1EEF1B: STA.b $00

#_1EEF1D: LDA.b $1A
#_1EEF1F: ASL A
#_1EEF20: ASL A
#_1EEF21: ASL A

#_1EEF22: AND.b #$40
#_1EEF24: ORA.b $00
#_1EEF26: STA.w $0F50,X

;---------------------------------------------------------------------------------------------------

.handle_interaction
#_1EEF29: JSL Sprite_BehaveAsBarrier
#_1EEF2D: LDY.w $0FFF

#_1EEF30: LDA.w .message_low,Y
#_1EEF33: XBA

#_1EEF34: LDA.w .message_high,Y
#_1EEF37: TAY

#_1EEF38: XBA

#_1EEF39: JSL Sprite_ShowSolicitedMessage

#_1EEF3D: LDA.w $0D80,X

#_1EEF40: BEQ .not_welcomed_yet
#_1EEF42: BRA .exit

;---------------------------------------------------------------------------------------------------

.light_world
#_1EEF44: LDA.b #$07
#_1EEF46: STA.w $0F50,X

#_1EEF49: JSL SpriteDraw_Shopkeeper
#_1EEF4D: JSR Sprite_CheckIfActive_Bank1E

#_1EEF50: LDA.b $1A
#_1EEF52: LSR A
#_1EEF53: LSR A
#_1EEF54: LSR A
#_1EEF55: LSR A

#_1EEF56: AND.b #$01
#_1EEF58: STA.w $0DC0,X

#_1EEF5B: BRA .handle_interaction

;---------------------------------------------------------------------------------------------------

.message_low
#_1EEF5D: db $63 ; Message 0163
#_1EEF5E: db $5D ; Message 015D

.message_high
#_1EEF5F: db $01
#_1EEF60: db $01

;---------------------------------------------------------------------------------------------------

.not_welcomed_yet
#_1EEF61: REP #$20

#_1EEF63: LDA.w $0FDA
#_1EEF66: CLC
#_1EEF67: ADC.w #$0060
#_1EEF6A: CMP.b $20

#_1EEF6C: SEP #$30
#_1EEF6E: BCC .exit

#_1EEF70: LDY.w $0FFF

#_1EEF73: LDA.w .message_low,Y
#_1EEF76: XBA

#_1EEF77: LDA.w .message_high,Y
#_1EEF7A: TAY

#_1EEF7B: XBA

#_1EEF7C: JSL Sprite_ShowMessageUnconditional

#_1EEF80: INC.w $0D80,X

.exit
#_1EEF83: RTS

;===================================================================================================

ChestGameGuy:
#_1EEF84: JSL OAM_AllocateDeferToPlayer_long
#_1EEF88: JSL SpriteDraw_SingleLarge_long

#_1EEF8C: JSR Sprite_CheckIfActive_Bank1E
#_1EEF8F: JSL Sprite_BehaveAsBarrier

#_1EEF93: LDA.w $0F50,X
#_1EEF96: AND.b #$3F
#_1EEF98: STA.b $00

#_1EEF9A: LDA.b $1A
#_1EEF9C: ASL A
#_1EEF9D: ASL A
#_1EEF9E: ASL A

#_1EEF9F: AND.b #$40
#_1EEFA1: ORA.b $00
#_1EEFA3: STA.w $0F50,X

#_1EEFA6: LDA.w $0D80,X
#_1EEFA9: JSL JumpTableLocal
#_1EEFAD: dw ChestGameGuy_OfferGame
#_1EEFAF: dw ChestGameGuy_HandlePayment
#_1EEFB1: dw ChestGameGuy_ProctorGame

;===================================================================================================

ChestGameGuy_OfferGame:
#_1EEFB3: LDA.w $04C4
#_1EEFB6: DEC A
#_1EEFB7: CMP.b #$02
#_1EEFB9: BCC .exit

; Message 015E
#_1EEFBB: LDA.b #$5E
#_1EEFBD: LDY.b #$01
#_1EEFBF: JSL Sprite_ShowSolicitedMessage
#_1EEFC3: BCC .exit

#_1EEFC5: INC.w $0D80,X

.exit
#_1EEFC8: RTS

;===================================================================================================

ChestGameGuy_HandlePayment:
#_1EEFC9: LDA.w $1CE8
#_1EEFCC: BNE .rejected

; 30 rupees
#_1EEFCE: LDA.b #$1E
#_1EEFD0: LDY.b #$00
#_1EEFD2: JSR ShopItem_HandleCost
#_1EEFD5: BCC .rejected

#_1EEFD7: LDA.b #$02
#_1EEFD9: STA.w $04C4

; Message 0162
#_1EEFDC: LDA.b #$62
#_1EEFDE: LDY.b #$01
#_1EEFE0: JSL Sprite_ShowMessageUnconditional

#_1EEFE4: INC.w $0D80,X

#_1EEFE7: RTS

.rejected
; Message 015F
#_1EEFE8: LDA.b #$5F
#_1EEFEA: LDY.b #$01
#_1EEFEC: JSL Sprite_ShowMessageUnconditional

#_1EEFF0: STZ.w $0D80,X

#_1EEFF3: RTS

;===================================================================================================

ChestGameGuy_ProctorGame:
#_1EEFF4: LDA.w $04C4
#_1EEFF7: BNE .credits_remaining

; Message 0161
#_1EEFF9: LDA.b #$61
#_1EEFFB: LDY.b #$01
#_1EEFFD: JSL Sprite_ShowSolicitedMessage

#_1EF001: RTS

.credits_remaining
; Message 017D
#_1EF002: LDA.b #$7D
#_1EF004: LDY.b #$01
#_1EF006: JSL Sprite_ShowSolicitedMessage

#_1EF00A: RTS

;===================================================================================================

NiceThief_Animate:
#_1EF00B: LDA.b $1A
#_1EF00D: AND.b #$03
#_1EF00F: BNE .dont_turn_head

#_1EF011: LDA.b #$02
#_1EF013: STA.w $0DC0,X

#_1EF016: JSR Sprite_DirectionToFaceLink_Bank1E

#_1EF019: CPY.b #$03
#_1EF01B: BNE .dont_face_up

#_1EF01D: LDY.b #$02

.dont_face_up
#_1EF01F: TYA
#_1EF020: STA.w $0EB0,X

.dont_turn_head
#_1EF023: JSL OAM_AllocateDeferToPlayer_long
#_1EF027: JSL SpriteDraw_Thief

#_1EF02B: RTS

;===================================================================================================

NiceThiefWithGift:
#_1EF02C: JSR NiceThief_Animate
#_1EF02F: JSR Sprite_CheckIfActive_Bank1E
#_1EF032: JSL Sprite_BehaveAsBarrier

#_1EF036: LDA.w $0D80,X
#_1EF039: JSL JumpTableLocal
#_1EF03D: dw NiceThiefWithGift_WaitForInteraction
#_1EF03F: dw NiceThiefWithGift_GiveRupees
#_1EF041: dw NiceThiefWithGift_ResetAI

NiceThiefWithGift_WaitForInteraction:
; Message 0174
#_1EF043: LDA.b #$74
#_1EF045: LDY.b #$01
#_1EF047: JSL Sprite_ShowSolicitedMessage
#_1EF04B: BCC .exit

#_1EF04D: INC.w $0D80,X

.exit
#_1EF050: RTS

;===================================================================================================

NiceThiefWithGift_GiveRupees:
#_1EF051: LDA.w $0403
#_1EF054: AND.b #$40
#_1EF056: BNE NiceThiefWithGift_ResetAI

#_1EF058: LDA.w $0403
#_1EF05B: ORA.b #$40
#_1EF05D: STA.w $0403

#_1EF060: INC.w $0D80,X

#_1EF063: LDY.b #$46 ; ITEMGET 46 - 300 rupees
#_1EF065: JMP.w ShopItem_HandleReceipt

;===================================================================================================

NiceThiefWithGift_ResetAI:
#_1EF068: STZ.w $0D80,X

#_1EF06B: RTS

;===================================================================================================

MiniChestGameGuy:
#_1EF06C: JSR Sprite_DirectionToFaceLink_Bank1E
#_1EF06F: TYA
#_1EF070: EOR.b #$03
#_1EF072: STA.w $0DE0,X

#_1EF075: STZ.w $0DC0,X

#_1EF078: JSL SpriteDraw_YoungGameGuy
#_1EF07C: JSR Sprite_CheckIfActive_Bank1E
#_1EF07F: JSL Sprite_BehaveAsBarrier

#_1EF083: LDA.w $0D80,X
#_1EF086: JSL JumpTableLocal
#_1EF08A: dw MiniChestGameGuy_OfferGame
#_1EF08C: dw MiniChestGameGuy_VerifyPurchase
#_1EF08E: dw LesserChestGameGuy_AfterGameStart

;===================================================================================================

MiniChestGameGuy_OfferGame:
#_1EF090: LDA.w $04C4
#_1EF093: DEC A
#_1EF094: CMP.b #$02
#_1EF096: BCC EXIT_1EF0A5

; Message 017C
#_1EF098: LDA.b #$7C
#_1EF09A: LDY.b #$01
#_1EF09C: JSL Sprite_ShowSolicitedMessage
#_1EF0A0: BCC EXIT_1EF0A5

#_1EF0A2: INC.w $0D80,X

;---------------------------------------------------------------------------------------------------

#EXIT_1EF0A5:
#_1EF0A5: RTS

;===================================================================================================

MiniChestGameGuy_VerifyPurchase:
#_1EF0A6: LDA.w $1CE8
#_1EF0A9: BNE .rejected

; 20 rupees
#_1EF0AB: LDA.b #$14
#_1EF0AD: LDY.b #$00
#_1EF0AF: JSR ShopItem_HandleCost
#_1EF0B2: BCC .rejected

#_1EF0B4: LDA.b #$01
#_1EF0B6: STA.w $04C4

; Message 017D
#_1EF0B9: LDA.b #$7D
#_1EF0BB: LDY.b #$01
#_1EF0BD: JSL Sprite_ShowMessageUnconditional

#_1EF0C1: INC.w $0D80,X

#_1EF0C4: RTS

.rejected
; Message 017E
#_1EF0C5: LDA.b #$7E
#_1EF0C7: LDY.b #$01
#_1EF0C9: JSL Sprite_ShowMessageUnconditional

#_1EF0CD: STZ.w $0D80,X

#_1EF0D0: RTS

;===================================================================================================

pool LesserChestGameGuy_AfterGameStart

.message_low
#_1EF0D1: db $61 ; Message 0161
#_1EF0D2: db $7D ; Message 017D

.message_high
#_1EF0D3: db $01
#_1EF0D4: db $01

pool off

;---------------------------------------------------------------------------------------------------

LesserChestGameGuy_AfterGameStart:
; C'mon! There's no excuse for not using LDY here.
#_1EF0D5: LDA.w $04C4
#_1EF0D8: TAY

#_1EF0D9: LDA.w .message_low,Y
#_1EF0DC: XBA

#_1EF0DD: LDA.w .message_high,Y
#_1EF0E0: TAY

#_1EF0E1: XBA

#_1EF0E2: JSL Sprite_ShowSolicitedMessage

#_1EF0E6: RTS

;===================================================================================================

LostWoodsChestGameGuy:
#_1EF0E7: JSR NiceThief_Animate
#_1EF0EA: JSR Sprite_CheckIfActive_Bank1E
#_1EF0ED: JSL Sprite_BehaveAsBarrier

#_1EF0F1: LDA.w $0D80,X
#_1EF0F4: JSL JumpTableLocal
#_1EF0F8: dw LostWoodsChestGameGuy_OfferGame
#_1EF0FA: dw LostWoodsChestGameGuy_VerifyPurchase
#_1EF0FC: dw LesserChestGameGuy_AfterGameStart

;===================================================================================================

LostWoodsChestGameGuy_OfferGame:
#_1EF0FE: LDA.w $04C4
#_1EF101: DEC A
#_1EF102: CMP.b #$02
#_1EF104: BCC EXIT_1EF0A5

; Message 017F
#_1EF106: LDA.b #$7F
#_1EF108: LDY.b #$01
#_1EF10A: JSL Sprite_ShowSolicitedMessage
#_1EF10E: BCC .exit

#_1EF110: INC.w $0D80,X

.exit
#_1EF113: RTS

;===================================================================================================

LostWoodsChestGameGuy_VerifyPurchase:
#_1EF114: LDA.w $1CE8
#_1EF117: BNE .rejected

; 100 rupees
#_1EF119: LDA.b #$64
#_1EF11B: LDY.b #$00
#_1EF11D: JSR ShopItem_HandleCost
#_1EF120: BCC .rejected

#_1EF122: LDA.b #$01
#_1EF124: STA.w $04C4

; Message 017D
#_1EF127: LDA.b #$7D
#_1EF129: LDY.b #$01
#_1EF12B: JSL Sprite_ShowMessageUnconditional

#_1EF12F: INC.w $0D80,X

#_1EF132: RTS

.rejected
; Message 017E
#_1EF133: LDA.b #$7E
#_1EF135: LDY.b #$01
#_1EF137: JSL Sprite_ShowMessageUnconditional

#_1EF13B: STZ.w $0D80,X

#_1EF13E: RTS

;===================================================================================================

pool NiceThiefUnderRock

.message_low
#_1EF13F: db $75 ; Message 0175
#_1EF140: db $76 ; Message 0176

.message_high
#_1EF141: db $01
#_1EF142: db $01

pool off

;---------------------------------------------------------------------------------------------------

NiceThiefUnderRock:
#_1EF143: JSR NiceThief_Animate
#_1EF146: JSR Sprite_CheckIfActive_Bank1E
#_1EF149: JSL Sprite_BehaveAsBarrier

#_1EF14D: LDA.w $0E80,X
#_1EF150: SEC
#_1EF151: SBC.b #$05
#_1EF153: TAY

#_1EF154: LDA.w .message_low,Y
#_1EF157: XBA

#_1EF158: LDA.w .message_high,Y
#_1EF15B: TAY

#_1EF15C: XBA

#_1EF15D: JSL Sprite_ShowSolicitedMessage

#_1EF161: RTS

;===================================================================================================

ShopItem_RedPotion150:
#_1EF162: JSR SpriteDraw_ShopItem
#_1EF165: JSR Sprite_CheckIfActive_Bank1E
#_1EF168: JSL Sprite_BehaveAsBarrier
#_1EF16C: JSR ShopItem_CheckForAPress
#_1EF16F: BCC .exit

#_1EF171: JSL Find_EmptyBottle
#_1EF175: BMI .no_empty_bottle

; 150 rupees
#_1EF177: LDA.b #$96
#_1EF179: LDY.b #$00
#_1EF17B: JSR ShopItem_HandleCost
#_1EF17E: BCC ShopItem_GiveFailureMessage

#_1EF180: STZ.w $0DD0,X

#_1EF183: LDY.b #$2E ; ITEMGET 2E
#_1EF185: JSR ShopItem_HandleReceipt

.exit
#_1EF188: RTS

.no_empty_bottle
; Message 016B
#_1EF189: LDA.b #$6B
#_1EF18B: LDY.b #$01
#_1EF18D: JSL Sprite_ShowMessageUnconditional

#_1EF191: JSR ShopItem_PlayBeep

#_1EF194: RTS

;===================================================================================================

ShopItem_GiveFailureMessage:
; Message 017A
#_1EF195: LDA.b #$7A
#_1EF197: LDY.b #$01
#_1EF199: JSL Sprite_ShowMessageUnconditional

#_1EF19D: JSR ShopItem_PlayBeep

#_1EF1A0: RTS

;===================================================================================================

pool ShopKeeper_SpawnShopItem

.offset_x
#_1EF1A1: dw -44,   8,  60

pool off

;---------------------------------------------------------------------------------------------------

ShopKeeper_SpawnShopItem:
#_1EF1A7: PHA
#_1EF1A8: PHY

#_1EF1A9: LDA.b #$BB ; SPRITE BB
#_1EF1AB: LDY.b #$0C
#_1EF1AD: JSL Sprite_SpawnDynamically_slot_limited

#_1EF1B1: PLA
#_1EF1B2: STA.w $0E80,Y
#_1EF1B5: STA.w $0BA0,Y

#_1EF1B8: PLA
#_1EF1B9: PHX
#_1EF1BA: ASL A
#_1EF1BB: TAX

#_1EF1BC: LDA.b $00
#_1EF1BE: CLC
#_1EF1BF: ADC.l .offset_x+0,X
#_1EF1C3: STA.w $0D10,Y

#_1EF1C6: LDA.b $01
#_1EF1C8: ADC.l .offset_x+1,X
#_1EF1CC: STA.w $0D30,Y

#_1EF1CF: LDA.b $02
#_1EF1D1: CLC
#_1EF1D2: ADC.b #$27
#_1EF1D4: STA.w $0D00,Y

#_1EF1D7: LDA.b $03
#_1EF1D9: STA.w $0D20,Y

#_1EF1DC: LDA.w $0E40,Y
#_1EF1DF: ORA.b #$04
#_1EF1E1: STA.w $0E40,Y

#_1EF1E4: PLX

#_1EF1E5: RTL

;===================================================================================================

ShopItem_FighterShield:
#_1EF1E6: JSR SpriteDraw_ShopItem

#_1EF1E9: JSR Sprite_CheckIfActive_Bank1E
#_1EF1EC: JSL Sprite_BehaveAsBarrier

#_1EF1F0: JSR ShopItem_MakeShieldsDeflect
#_1EF1F3: JSR ShopItem_CheckForAPress
#_1EF1F6: BCC .set_hitbox

#_1EF1F8: LDA.l $7EF35A
#_1EF1FC: BNE RejectShieldPurchase

; 50 rupees
#_1EF1FE: LDA.b #$32
#_1EF200: LDY.b #$00
#_1EF202: JSR ShopItem_HandleCost
#_1EF205: BCC TooPoorForAShield

#_1EF207: STZ.w $0DD0,X

#_1EF20A: LDY.b #$04 ; ITEMGET 04
#_1EF20C: JSR ShopItem_HandleReceipt

.set_hitbox
; !HARDCODED hitbox set every frame.
#_1EF20F: LDA.b #$1C
#_1EF211: STA.w $0F60,X

#_1EF214: RTS

;===================================================================================================

RejectShieldPurchase:
; Message 0164
#_1EF215: LDA.b #$64
#_1EF217: LDY.b #$01
#_1EF219: JSL Sprite_ShowMessageUnconditional

#_1EF21D: JSR ShopItem_PlayBeep

#_1EF220: RTS

;===================================================================================================

TooPoorForAShield:
#_1EF221: JMP.w ShopItem_GiveFailureMessage

;===================================================================================================

ShopItem_FireShield:
#_1EF224: JSR SpriteDraw_ShopItem
#_1EF227: JSR Sprite_CheckIfActive_Bank1E
#_1EF22A: JSL Sprite_BehaveAsBarrier

#_1EF22E: JSR ShopItem_MakeShieldsDeflect
#_1EF231: JSR ShopItem_CheckForAPress
#_1EF234: BCC .set_hitbox

#_1EF236: LDA.l $7EF35A
#_1EF23A: CMP.b #$02
#_1EF23C: BCS RejectShieldPurchase

; 500 rupees
#_1EF23E: LDA.b #$F4
#_1EF240: LDY.b #$01
#_1EF242: JSR ShopItem_HandleCost
#_1EF245: BCC TooPoorForAShield

#_1EF247: STZ.w $0DD0,X

#_1EF24A: LDY.b #$05 ; ITEMGET 05
#_1EF24C: JSR ShopItem_HandleReceipt

.set_hitbox
#_1EF24F: LDA.b #$1C
#_1EF251: STA.w $0F60,X

#_1EF254: RTS

;===================================================================================================
; Nice touch.
;===================================================================================================
ShopItem_MakeShieldsDeflect:
#_1EF255: STZ.w $0BA0,X

#_1EF258: LDA.b #$08
#_1EF25A: STA.w $0B6B,X

#_1EF25D: LDA.b #$04
#_1EF25F: STA.w $0CAA,X

#_1EF262: LDA.b #$1C
#_1EF264: STA.w $0F60,X

#_1EF267: JSL Sprite_CheckDamageFromLink_long

#_1EF26B: LDA.b #$0A
#_1EF26D: STA.w $0F60,X

#_1EF270: RTS

;===================================================================================================

ShopItem_Heart:
#_1EF271: JSR SpriteDraw_ShopItem

#_1EF274: JSR Sprite_CheckIfActive_Bank1E
#_1EF277: JSL Sprite_BehaveAsBarrier

#_1EF27B: JSR ShopItem_CheckForAPress
#_1EF27E: BCC .exit

#_1EF280: LDA.l $7EF36C
#_1EF284: CMP.l $7EF36D
#_1EF288: BEQ .too_much_health

; 10 rupees
#_1EF28A: LDA.b #$0A
#_1EF28C: LDY.b #$00
#_1EF28E: JSR ShopItem_HandleCost
#_1EF291: BCC .too_poor

#_1EF293: STZ.w $0DD0,X

#_1EF296: LDY.b #$42 ; ITEMGET 42
#_1EF298: JSR ShopItem_HandleReceipt

.exit
#_1EF29B: RTS

.too_much_health
#_1EF29C: JSR ShopItem_PlayBeep

#_1EF29F: RTS

.too_poor
#_1EF2A0: JMP.w ShopItem_GiveFailureMessage

;===================================================================================================

ShopItem_Arrows:
#_1EF2A3: JSR SpriteDraw_ShopItem
#_1EF2A6: JSR Sprite_CheckIfActive_Bank1E
#_1EF2A9: JSL Sprite_BehaveAsBarrier

#_1EF2AD: JSR ShopItem_CheckForAPress
#_1EF2B0: BCC .exit

#_1EF2B2: LDA.l $7EF371

#_1EF2B6: PHX

#_1EF2B7: TAX

#_1EF2B8: LDA.l CapacityUpgrades_arrows_hex,X

#_1EF2BC: PLX

#_1EF2BD: CMP.l $7EF377
#_1EF2C1: BEQ TooMuchAmmo

; 30 rupees
#_1EF2C3: LDA.b #$1E
#_1EF2C5: LDY.b #$00
#_1EF2C7: JSR ShopItem_HandleCost
#_1EF2CA: BCC RejectMunitionsPurchase

#_1EF2CC: STZ.w $0DD0,X

#_1EF2CF: LDY.b #$44 ; ITEMGET 44
#_1EF2D1: JSR ShopItem_HandleReceipt

.exit
#_1EF2D4: RTS

;===================================================================================================

TooMuchAmmo:
; Message 016C
#_1EF2D5: LDA.b #$6C
#_1EF2D7: LDY.b #$01
#_1EF2D9: JSL Sprite_ShowSolicitedMessage

#_1EF2DD: JSR ShopItem_PlayBeep

#_1EF2E0: RTS

;===================================================================================================

RejectMunitionsPurchase:
#_1EF2E1: JMP.w ShopItem_GiveFailureMessage

;===================================================================================================

ShopItem_Bombs:
#_1EF2E4: JSR SpriteDraw_ShopItem
#_1EF2E7: JSR Sprite_CheckIfActive_Bank1E
#_1EF2EA: JSL Sprite_BehaveAsBarrier

#_1EF2EE: JSR ShopItem_CheckForAPress
#_1EF2F1: BCC .exit

#_1EF2F3: LDA.l $7EF370
#_1EF2F7: PHX
#_1EF2F8: TAX

#_1EF2F9: LDA.l CapacityUpgrades_bombs_hex,X

#_1EF2FD: PLX

#_1EF2FE: CMP.l $7EF343
#_1EF302: BEQ TooMuchAmmo

; 50 rupees
#_1EF304: LDA.b #$32
#_1EF306: LDY.b #$00
#_1EF308: JSR ShopItem_HandleCost
#_1EF30B: BCC RejectMunitionsPurchase

#_1EF30D: STZ.w $0DD0,X

#_1EF310: LDY.b #$31 ; ITEMGET 31
#_1EF312: JSR ShopItem_HandleReceipt

.exit
#_1EF315: RTS

;===================================================================================================

ShopItem_Bee:
#_1EF316: JSR SpriteDraw_ShopItem
#_1EF319: JSR Sprite_CheckIfActive_Bank1E
#_1EF31C: JSL Sprite_BehaveAsBarrier

#_1EF320: JSR ShopItem_CheckForAPress
#_1EF323: BCC .exit

#_1EF325: JSL Find_EmptyBottle
#_1EF329: BMI .no_empty_bottle

; 10 rupees
#_1EF32B: LDA.b #$0A
#_1EF32D: LDY.b #$00
#_1EF32F: JSR ShopItem_HandleCost
#_1EF332: BCC .too_poor

#_1EF334: STZ.w $0DD0,X

#_1EF337: LDY.b #$0E ; ITEMGET 0E
#_1EF339: JSR ShopItem_HandleReceipt

.exit
#_1EF33C: RTS

.no_empty_bottle
; Message 016B
#_1EF33D: LDA.b #$6B
#_1EF33F: LDY.b #$01
#_1EF341: JSL Sprite_ShowMessageUnconditional

#_1EF345: JSR ShopItem_PlayBeep

#_1EF348: RTS

.too_poor
#_1EF349: JMP.w ShopItem_GiveFailureMessage

;===================================================================================================

pool ShopItem_HandleReceipt

.message_low
#_1EF34C: db $66 ; Message 0166
#_1EF34D: db $65 ; Message 0165
#_1EF34E: db $65 ; Message 0165
#_1EF34F: db $6A ; Message 016A
#_1EF350: db $67 ; Message 0167
#_1EF351: db $68 ; Message 0168
#_1EF352: db $69 ; Message 0169

.message_high
#_1EF353: db $01
#_1EF354: db $01
#_1EF355: db $01
#_1EF356: db $01
#_1EF357: db $01
#_1EF358: db $01
#_1EF359: db $01

pool off

;---------------------------------------------------------------------------------------------------

ShopItem_HandleReceipt:
#_1EF35A: STZ.w $02E9

#_1EF35D: PHX

#_1EF35E: JSL Link_ReceiveItem

#_1EF362: PLX

#_1EF363: LDA.w $0E80,X
#_1EF366: SEC
#_1EF367: SBC.b #$07
#_1EF369: BMI .exit

#_1EF36B: TAY

#_1EF36C: LDA.w .message_low,Y
#_1EF36F: XBA

#_1EF370: LDA.w .message_high,Y
#_1EF373: TAY

#_1EF374: XBA

#_1EF375: JSL Sprite_ShowMessageUnconditional
#_1EF379: JSL RushToTerminateReceiveItem

.exit
#_1EF37D: RTS

;===================================================================================================

ShopItem_PlayBeep:
#_1EF37E: LDA.b #$3C ; SFX2.3C
#_1EF380: JSL SpriteSFX_QueueSFX2WithPan

#_1EF384: RTS

;===================================================================================================
; Return in carry flag:
;   0 - no attempt or too far
;   1 - purchase attempt
;===================================================================================================
ShopItem_CheckForAPress:
#_1EF385: LDA.b $F6
#_1EF387: BPL .no_interaction

#_1EF389: JSL Sprite_CheckDamageToLink_same_layer_long

; Useless
; The carry is already clear, so just exit.
#_1EF38D: BCC .no_interaction

#_1EF38F: RTS

.no_interaction
#_1EF390: CLC

#_1EF391: RTS

;===================================================================================================
; Parameters:
;   A - low byte of cost
;   Y - high byte of cost
;
; Return in carry flag:
;   0 - too expensive for you
;   1 - purchase successful
;===================================================================================================
ShopItem_HandleCost:
#_1EF392: STA.b $00
#_1EF394: STY.b $01

#_1EF396: REP #$20

#_1EF398: LDA.l $7EF360
#_1EF39C: CMP.b $00
#_1EF39E: BCC .too_poor

#_1EF3A0: SBC.b $00
#_1EF3A2: STA.l $7EF360

#_1EF3A6: SEC

.too_poor
#_1EF3A7: SEP #$30

#_1EF3A9: RTS

;===================================================================================================

pool SpriteDraw_ShopItem

.oam_groups
; Red potion
#_1EF3AA: dw  -4,  16 : db $31, $02, $00, $00 ; 1
#_1EF3B2: dw   4,  16 : db $13, $02, $00, $00 ; 5
#_1EF3BA: dw  12,  16 : db $30, $02, $00, $00 ; 0
#_1EF3C2: dw   0,   0 : db $C0, $02, $00, $02 ; item
#_1EF3CA: dw   0,  11 : db $6C, $03, $00, $02 ; shadow

; Fighter shield
#_1EF3D2: dw   0,  16 : db $13, $02, $00, $00 ; 5
#_1EF3DA: dw   0,  16 : db $13, $02, $00, $00 ; 5
#_1EF3E2: dw   8,  16 : db $30, $02, $00, $00 ; 0
#_1EF3EA: dw   0,   0 : db $CE, $04, $00, $02 ; item
#_1EF3F2: dw   4,  12 : db $38, $03, $00, $00 ; shadow

; Fire shield
#_1EF3FA: dw  -4,  16 : db $13, $02, $00, $00 ; 5
#_1EF402: dw   4,  16 : db $30, $02, $00, $00 ; 0
#_1EF40A: dw  12,  16 : db $30, $02, $00, $00 ; 0
#_1EF412: dw   0,   0 : db $CC, $08, $00, $02 ; item
#_1EF41A: dw   4,  12 : db $38, $03, $00, $00 ; shadow

; Heart
#_1EF422: dw   0,  16 : db $31, $02, $00, $00 ; 1
#_1EF42A: dw   0,  16 : db $31, $02, $00, $00 ; 1
#_1EF432: dw   8,  16 : db $30, $02, $00, $00 ; 0
#_1EF43A: dw   4,   8 : db $29, $03, $00, $00 ; item
#_1EF442: dw   4,  11 : db $38, $03, $00, $00 ; shadow

; Arrows
#_1EF44A: dw  -4,  16 : db $03, $02, $00, $00 ; 3
#_1EF452: dw  -4,  16 : db $03, $02, $00, $00 ; 3
#_1EF45A: dw   4,  16 : db $30, $02, $00, $00 ; 0
#_1EF462: dw   0,   0 : db $C4, $04, $00, $02 ; item
#_1EF46A: dw   0,  11 : db $38, $03, $00, $00 ; shadow

; Bombs
#_1EF472: dw   0,  16 : db $13, $02, $00, $00 ; 5
#_1EF47A: dw   0,  16 : db $13, $02, $00, $00 ; 5
#_1EF482: dw   8,  16 : db $30, $02, $00, $00 ; 0
#_1EF48A: dw   0,   0 : db $E8, $04, $00, $02 ; item
#_1EF492: dw   0,  11 : db $6C, $03, $00, $02 ; shadow

; Bee
#_1EF49A: dw   0,  16 : db $31, $02, $00, $00 ; 1
#_1EF4A2: dw   0,  16 : db $31, $02, $00, $00 ; 1
#_1EF4AA: dw   8,  16 : db $30, $02, $00, $00 ; 0
#_1EF4B2: dw   4,   8 : db $F4, $0F, $00, $00 ; item
#_1EF4BA: dw   4,  11 : db $38, $03, $00, $00 ; shadow

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_ShopItem:
#_1EF4C2: LDA.w $0E80,X
#_1EF4C5: SEC
#_1EF4C6: SBC.b #$07

#_1EF4C8: REP #$20

#_1EF4CA: AND.w #$00FF
#_1EF4CD: STA.b $00

#_1EF4CF: ASL A
#_1EF4D0: ASL A
#_1EF4D1: ADC.b $00

#_1EF4D3: ASL A
#_1EF4D4: ASL A
#_1EF4D5: ASL A
#_1EF4D6: ADC.w #.oam_groups
#_1EF4D9: STA.b $08

#_1EF4DB: LDA.w #$0005
#_1EF4DE: STA.b $06

#_1EF4E0: SEP #$30

#_1EF4E2: JSL Sprite_DrawMultiple_player_deferred

#_1EF4E6: RTS

;===================================================================================================

Sprite_BehaveAsBarrier:
#_1EF4E7: LDA.w $0F60,X
#_1EF4EA: PHA

#_1EF4EB: STZ.w $0F60,X

#_1EF4EE: JSL Sprite_CheckDamageToLink_same_layer_long
#_1EF4F2: BCC .no_collision

#_1EF4F4: JSR Sprite_HaltAllMovement

.no_collision
#_1EF4F7: PLA
#_1EF4F8: STA.w $0F60,X

#_1EF4FB: RTL

;===================================================================================================

Sprite_HaltAllMovement:
#_1EF4FC: PHX

#_1EF4FD: JSL Sprite_CancelHookshot

#_1EF501: STZ.b $5E

#_1EF503: JSL Link_CancelDash_long

#_1EF507: PLX

#_1EF508: RTS

;===================================================================================================

Sprite_AC_Apple:
#_1EF509: LDA.w $0D80,X
#_1EF50C: BNE Apple

;===================================================================================================

ApplesInTree:
#_1EF50E: LDA.w $0E90,X
#_1EF511: BNE .exit

#_1EF513: STZ.w $0DD0,X

#_1EF516: JSL GetRandomNumber
#_1EF51A: AND.b #$03
#_1EF51C: CLC

#_1EF51D: ADC.b #$02
#_1EF51F: TAY

.next_apple
#_1EF520: PHY

#_1EF521: JSR SpawnApple

#_1EF524: PLY
#_1EF525: DEY
#_1EF526: BPL .next_apple

.exit
#_1EF528: RTS

;===================================================================================================

SpawnApple:
#_1EF529: LDA.b #$AC ; SPRITE AC
#_1EF52B: JSL Sprite_SpawnDynamically
#_1EF52F: BMI .exit

#_1EF531: JSL Sprite_SetSpawnedCoordinates

#_1EF535: LDA.b #$01
#_1EF537: STA.w $0D80,Y

#_1EF53A: LDA.b #$FF
#_1EF53C: STA.w $0D90,Y

#_1EF53F: LDA.b #$08
#_1EF541: STA.w $0F70,Y

#_1EF544: LDA.b #$16
#_1EF546: STA.w $0F80,Y

#_1EF549: JSL GetRandomNumber
#_1EF54D: STA.b $04

#_1EF54F: LDA.b $01
#_1EF551: STA.b $05

#_1EF553: JSL GetRandomNumber
#_1EF557: STA.b $06

#_1EF559: LDA.b $03
#_1EF55B: STA.b $07

#_1EF55D: LDA.b #$0A
#_1EF55F: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1EF563: LDA.b $00
#_1EF565: STA.w $0D40,Y

#_1EF568: LDA.b $01
#_1EF56A: STA.w $0D50,Y

.exit
#_1EF56D: RTS

;===================================================================================================

pool Apple

.speed
#_1EF56E: db -1,  1

pool off

;---------------------------------------------------------------------------------------------------

Apple:
#_1EF570: LDA.w $0D90,X
#_1EF573: CMP.b #$10
#_1EF575: BCS .no_flicker

#_1EF577: LDA.b $1A
#_1EF579: AND.b #$02
#_1EF57B: BEQ .flicker_off

.no_flicker
#_1EF57D: JSL SpriteDraw_SingleLarge_long

.flicker_off
#_1EF581: JSR Sprite_CheckIfActive_Bank1E

#_1EF584: LDA.w $0D90,X
#_1EF587: BEQ .rot

#_1EF589: JSR Sprite_Move_XYZ_Bank1E
#_1EF58C: JSR Sprite_CheckDamageToLink_Bank1E
#_1EF58F: BCC .not_collected

#_1EF591: LDA.b #$0B ; SFX3.0B
#_1EF593: JSL SpriteSFX_QueueSFX3WithPan

; +1 heart of health
#_1EF597: LDA.l $7EF372
#_1EF59B: CLC
#_1EF59C: ADC.b #$08
#_1EF59E: STA.l $7EF372

.rot
#_1EF5A2: STZ.w $0DD0,X

#_1EF5A5: RTS

;---------------------------------------------------------------------------------------------------

.not_collected
#_1EF5A6: LDA.b $1A
#_1EF5A8: AND.b #$01
#_1EF5AA: BNE .dont_tick_timer

#_1EF5AC: DEC.w $0D90,X

.dont_tick_timer
#_1EF5AF: LDA.w $0F70,X
#_1EF5B2: DEC A
#_1EF5B3: BPL .airborne

#_1EF5B5: STZ.w $0F70,X

#_1EF5B8: LDA.w $0F80,X
#_1EF5BB: BMI .hit_ground

#_1EF5BD: LDA.b #$00

;---------------------------------------------------------------------------------------------------

.hit_ground
#_1EF5BF: EOR.b #$FF
#_1EF5C1: INC A
#_1EF5C2: LSR A
#_1EF5C3: STA.w $0F80,X

#_1EF5C6: LDA.w $0D50,X
#_1EF5C9: BEQ .x_speed_at_0

#_1EF5CB: PHA

#_1EF5CC: ASL A
#_1EF5CD: LDA.b #$00
#_1EF5CF: ROL A
#_1EF5D0: TAY

#_1EF5D1: PLA
#_1EF5D2: CLC
#_1EF5D3: ADC.w .speed,Y
#_1EF5D6: STA.w $0D50,X

.x_speed_at_0
#_1EF5D9: LDA.w $0D40,X
#_1EF5DC: BEQ .exit

#_1EF5DE: PHA

#_1EF5DF: ASL A
#_1EF5E0: LDA.b #$00
#_1EF5E2: ROL A
#_1EF5E3: TAY

#_1EF5E4: PLA
#_1EF5E5: CLC
#_1EF5E6: ADC.w .speed,Y
#_1EF5E9: STA.w $0D40,X

.exit
#_1EF5EC: RTS

;---------------------------------------------------------------------------------------------------

.airborne
#_1EF5ED: LDA.w $0F80,X
#_1EF5F0: SEC
#_1EF5F1: SBC.b #$01
#_1EF5F3: STA.w $0F80,X

#_1EF5F6: RTS

;===================================================================================================

Sprite_BC_Drunkard:
#_1EF5F7: JSL SpriteDraw_Drunkard
#_1EF5FB: JSR Sprite_CheckIfActive_Bank1E
#_1EF5FE: JSL Sprite_BehaveAsBarrier
#_1EF602: JSL GetRandomNumber
#_1EF606: BNE .skip_timer

#_1EF608: LDA.b #$20
#_1EF60A: STA.w $0DF0,X

.skip_timer
#_1EF60D: STZ.w $0DC0,X

#_1EF610: LDA.w $0DF0,X
#_1EF613: BEQ .animating

#_1EF615: INC.w $0DC0,X

.animating
; Message 0173
#_1EF618: LDA.b #$73
#_1EF61A: LDY.b #$01
#_1EF61C: JSL Sprite_ShowSolicitedMessage
#_1EF620: BCC .exit

#_1EF622: STZ.w $0DC0,X

.exit
#_1EF625: RTS

;===================================================================================================

Pipe_LocatePath:
#_1EF626: LDA.b #$FF
#_1EF628: STA.w $1DE0

#_1EF62B: LDA.w $0E20,X
#_1EF62E: SEC
#_1EF62F: SBC.b #$AE
#_1EF631: STA.w $0DE0,X

;===================================================================================================

SomariaPlatform_LocatePath:

.next
#_1EF634: JSR SomariaPlatformAndPipe_CheckTile

#_1EF637: STA.w $0E90,X

#_1EF63A: SEC
#_1EF63B: SBC.b #$B0
#_1EF63D: BCS .upper_tile

.not_pipe
#_1EF63F: LDA.w $0D10,X
#_1EF642: CLC
#_1EF643: ADC.b #$08
#_1EF645: STA.w $0D10,X

#_1EF648: LDA.w $0D30,X
#_1EF64B: ADC.b #$00
#_1EF64D: STA.w $0D30,X

#_1EF650: LDA.w $0D00,X
#_1EF653: CLC
#_1EF654: ADC.b #$08
#_1EF656: STA.w $0D00,X

#_1EF659: LDA.w $0D20,X
#_1EF65C: ADC.b #$00
#_1EF65E: STA.w $0D20,X

#_1EF661: BRA .next

;---------------------------------------------------------------------------------------------------

.upper_tile
#_1EF663: CMP.b #$0F
#_1EF665: BCS .not_pipe

#_1EF667: LDA.w $0D10,X
#_1EF66A: AND.b #$F8
#_1EF66C: CLC
#_1EF66D: ADC.b #$04
#_1EF66F: STA.w $0D10,X

#_1EF672: LDA.w $0D00,X
#_1EF675: AND.b #$F8
#_1EF677: CLC
#_1EF678: ADC.b #$04
#_1EF67A: STA.w $0D00,X

#_1EF67D: LDA.w $0DE0,X
#_1EF680: STA.w $0EB0,X

#_1EF683: JSR SomariaPlatformAndPipe_HandleMovement

#_1EF686: INC.w $0BA0,X

#_1EF689: STZ.w $02F5

#_1EF68C: LDA.b #$0E
#_1EF68E: STA.w $0F10,X

#_1EF691: INC.w $0DC0,X

#_1EF694: RTS

;===================================================================================================

SomariaPlatformAndPipe:
#_1EF695: PHB
#_1EF696: PHK
#_1EF697: PLB

#_1EF698: JSR .main

#_1EF69B: PLB

#_1EF69C: RTL

;---------------------------------------------------------------------------------------------------

; TODO verify table sizes
.speed_x
#_1EF69D: db   0,   0, -16,  16
#_1EF6A1: db -16,  16,  16

.speed_y
#_1EF6A4: db -16,  16,   0,   0
#_1EF6A8: db -16,  16, -16,  16

;---------------------------------------------------------------------------------------------------

.drag_x_high
#_1EF6AC: db   0,   0,  -1,   0,  -1

.drag_x_low
#_1EF6B1: db   0,   0,  -1,   1,  -1,   1,   1

.drag_y_low
#_1EF6B8: db  -1,   1,   0,   0,  -1,   1,  -1,   1

.drag_y_high
#_1EF6C0: db  -1,   0,   0,   0,  -1,   0,  -1,   0

;---------------------------------------------------------------------------------------------------

.main
#_1EF6C8: LDA.w $0DC0,X
#_1EF6CB: JSL JumpTableLocal
#_1EF6CF: dw SomariaPlatform_Spawn
#_1EF6D1: dw SomariaPlatformAndPipe_Main

;===================================================================================================

SomariaPlatform_Spawn:
#_1EF6D3: JSR SomariaPlatform_LocatePath
#_1EF6D6: JSL Sprite_SpawnSuperficialBombBlast

#_1EF6DA: LDA.w $0D10,Y
#_1EF6DD: SEC
#_1EF6DE: SBC.b #$08
#_1EF6E0: STA.w $0D10,Y

#_1EF6E3: LDA.w $0D30,Y
#_1EF6E6: SBC.b #$00
#_1EF6E8: STA.w $0D30,Y

#_1EF6EB: LDA.w $0D00,Y
#_1EF6EE: SEC
#_1EF6EF: SBC.b #$08
#_1EF6F1: STA.w $0D00,Y

#_1EF6F4: LDA.w $0D20,Y
#_1EF6F7: SBC.b #$00
#_1EF6F9: STA.w $0D20,Y

#_1EF6FC: RTS

;===================================================================================================

SomariaPlatformAndPipe_Main:
#_1EF6FD: JSR SpriteDraw_SomariaPlatform
#_1EF700: JSR Sprite_CheckIfActive_Bank1E

#_1EF703: LDA.w $0B7C
#_1EF706: ORA.w $0B7D
#_1EF709: ORA.w $0B7E
#_1EF70C: ORA.w $0B7F
#_1EF70F: BEQ .not_dragging

.is_inactive
#_1EF711: JMP.w SomariaPlatform_Inactive

.not_dragging
#_1EF714: LDA.b $5B
#_1EF716: DEC A
#_1EF717: DEC A
#_1EF718: BPL .is_inactive

#_1EF71A: JSL Sprite_CheckDamageToLink_ignore_layer_long
#_1EF71E: BCC SomariaPlatform_Inactive

#_1EF720: LDA.b #$01
#_1EF722: STA.w $0DB0,X
#_1EF725: JSL Link_CancelDash_long

#_1EF729: LDA.b $5D
#_1EF72B: CMP.b #$13 ; LINKSTATE 13
#_1EF72D: BEQ SomariaPlatform_Inactive

#_1EF72F: CMP.b #$03 ; LINKSTATE 03
#_1EF731: BEQ SomariaPlatform_Inactive

#_1EF733: LDA.w $0D80,X
#_1EF736: BNE SomariaPlatformAndPipe_HandleMovement

#_1EF738: INC.w $0D90,X

#_1EF73B: LDA.b #$02
#_1EF73D: STA.w $02F5

#_1EF740: LDA.w $0D90,X
#_1EF743: AND.b #$07
#_1EF745: BNE .skip_movement

#_1EF747: JSR SomariaPlatformAndPipe_CheckTile

#_1EF74A: CMP.w $0E90,X
#_1EF74D: BEQ .skip_movement

#_1EF74F: STA.w $0E90,X

#_1EF752: LDA.w $0DE0,X
#_1EF755: STA.w $0EB0,X

#_1EF758: JSR SomariaPlatformAndPipe_HandleMovement
#_1EF75B: JSR SomariaPlatform_HandleDrag

.skip_movement
; !HARDCODED check for room 0024 to skip drag.
; Since it's alone question mark.
#_1EF75E: LDA.b $A0
#_1EF760: CMP.b #$24
#_1EF762: BEQ .not_big_chest

#_1EF764: LDY.w $0DE0,X

#_1EF767: LDA.w SomariaPlatformAndPipe_drag_x_low,Y
#_1EF76A: CLC
#_1EF76B: ADC.w $0B7C
#_1EF76E: STA.w $0B7C

#_1EF771: LDA.w SomariaPlatformAndPipe_drag_x_high,Y
#_1EF774: ADC.w $0B7D
#_1EF777: STA.w $0B7D

#_1EF77A: LDA.w SomariaPlatformAndPipe_drag_y_low,Y
#_1EF77D: CLC
#_1EF77E: ADC.w $0B7E
#_1EF781: STA.w $0B7E

#_1EF784: LDA.w SomariaPlatformAndPipe_drag_y_high,Y
#_1EF787: ADC.w $0B7F
#_1EF78A: STA.w $0B7F

#_1EF78D: JSR Sprite_Move_XY_Bank1E
#_1EF790: JSR SomariaPlatform_DragLink

#_1EF793: RTS

.not_big_chest
#_1EF794: JMP.w SomariaPlatform_EnableDragging

;===================================================================================================

SomariaPlatform_Inactive:
#_1EF797: LDA.w $0DB0,X
#_1EF79A: BEQ .exit

#_1EF79C: STZ.w $02F5
#_1EF79F: STZ.w $0DB0,X

.exit
#_1EF7A2: RTS

;===================================================================================================

SomariaPlatformAndPipe_HandleMovement:
#_1EF7A3: JSR SomariaPlatform_HandleTile

#_1EF7A6: LDY.w $0DE0,X

#_1EF7A9: LDA.w SomariaPlatformAndPipe_speed_x,Y
#_1EF7AC: STA.w $0D50,X

#_1EF7AF: LDA.w SomariaPlatformAndPipe_speed_y,Y
#_1EF7B2: STA.w $0D40,X

#_1EF7B5: RTS

;===================================================================================================

SomariaPlatformAndPipe_CheckTile:
#_1EF7B6: LDA.w $0D00,X
#_1EF7B9: STA.b $00

#_1EF7BB: LDA.w $0D20,X
#_1EF7BE: STA.b $01

#_1EF7C0: LDA.w $0D10,X
#_1EF7C3: STA.b $02

#_1EF7C5: LDA.w $0D30,X
#_1EF7C8: STA.b $03

#_1EF7CA: LDA.b #$00
#_1EF7CC: JSL GetTileAttribute_long

#_1EF7D0: LDA.w $0FA5

#_1EF7D3: RTS

;===================================================================================================

pool SpriteDraw_SomariaPlatform

.oam_groups
; group00
#_1EF7D4: dw -16, -16 : db $AC, $00, $00, $02
#_1EF7DC: dw   0, -16 : db $AC, $40, $00, $02
#_1EF7E4: dw -16,   0 : db $AC, $80, $00, $02
#_1EF7EC: dw   0,   0 : db $AC, $C0, $00, $02

; group01
#_1EF7F4: dw -13, -13 : db $AC, $00, $00, $02
#_1EF7FC: dw  -3, -13 : db $AC, $40, $00, $02
#_1EF804: dw -13,  -3 : db $AC, $80, $00, $02
#_1EF80C: dw  -3,  -3 : db $AC, $C0, $00, $02

; group02
#_1EF814: dw -10, -10 : db $AC, $00, $00, $02
#_1EF81C: dw  -6, -10 : db $AC, $40, $00, $02
#_1EF824: dw -10,  -6 : db $AC, $80, $00, $02
#_1EF82C: dw  -6,  -6 : db $AC, $C0, $00, $02

; group03
#_1EF834: dw  -8,  -8 : db $AC, $00, $00, $02
#_1EF83C: dw  -8,  -8 : db $AC, $40, $00, $02
#_1EF844: dw  -8,  -8 : db $AC, $80, $00, $02
#_1EF84C: dw  -8,  -8 : db $AC, $C0, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_SomariaPlatform:
#_1EF854: LDA.b #$10
#_1EF856: JSL OAM_AllocateFromRegionB

#_1EF85A: LDA.w $0F10,X
#_1EF85D: AND.b #$0C
#_1EF85F: ASL A
#_1EF860: ASL A
#_1EF861: ASL A

#_1EF862: ADC.b #.oam_groups>>0
#_1EF864: STA.b $08

#_1EF866: LDA.b #.oam_groups>>8
#_1EF868: ADC.b #$00
#_1EF86A: STA.b $09

#_1EF86C: LDA.b #$04
#_1EF86E: JMP.w Sprite_DrawMultiple_Bank1E

;===================================================================================================

SomariaPlatform_HandleTile:
#_1EF871: LDA.w $0E90,X
#_1EF874: SEC
#_1EF875: SBC.b #$B0
#_1EF877: BCS .possibly_valid_tile

#_1EF879: RTS

.possibly_valid_tile
#_1EF87A: CMP.b #$0F
#_1EF87C: BCC .valid_tile

#_1EF87E: RTS

;---------------------------------------------------------------------------------------------------

.valid_tile
#_1EF87F: JSL JumpTableLocal
#_1EF883: dw SomariaPlatform_HandleTile_DoNothing
#_1EF885: dw SomariaPlatform_HandleTile_DoNothing
#_1EF887: dw SomariaPlatform_HandleTile_RisingSlope
#_1EF889: dw SomariaPlatform_HandleTile_FallingSlope
#_1EF88B: dw SomariaPlatform_HandleTile_FallingSlope
#_1EF88D: dw SomariaPlatform_HandleTile_RisingSlope
#_1EF88F: dw SomariaPlatform_HandleTile_TJunctionDLR
#_1EF891: dw SomariaPlatform_HandleTile_TJunctionULR
#_1EF893: dw SomariaPlatform_HandleTile_TJunctionUDR
#_1EF895: dw SomariaPlatform_HandleTile_TJunctionUDL
#_1EF897: dw SomariaPlatform_HandleTile_4WayJunction
#_1EF899: dw SomariaPlatform_HandleTile_CrossOver
#_1EF89B: dw SomariaPlatform_HandleTile_Unknown
#_1EF89D: dw SomariaPlatform_HandleTile_DoNothing
#_1EF89F: dw SomariaPlatform_HandleTile_Station

;===================================================================================================

SomariaPlatform_HandleDragX:
#_1EF8A1: LDA.w $0DE0,X
#_1EF8A4: EOR.w $0EB0,X
#_1EF8A7: AND.b #$02
#_1EF8A9: BEQ .exit

#_1EF8AB: LDA.w $0D10,X
#_1EF8AE: AND.b #$F8

#_1EF8B0: CLC
#_1EF8B1: ADC.b #$04
#_1EF8B3: STA.b $00

#_1EF8B5: SEC
#_1EF8B6: SBC.w $0D10,X
#_1EF8B9: BEQ .exit

#_1EF8BB: STA.w $0B7C
#_1EF8BE: BPL .positive

#_1EF8C0: LDA.b #$FF
#_1EF8C2: STA.w $0B7D

.positive
#_1EF8C5: LDA.b $00
#_1EF8C7: STA.w $0D10,X

.exit
#_1EF8CA: RTS

;===================================================================================================

SomariaPlatform_HandleDragY:
#_1EF8CB: LDA.w $0DE0,X
#_1EF8CE: EOR.w $0EB0,X
#_1EF8D1: AND.b #$02
#_1EF8D3: BEQ .exit

#_1EF8D5: LDA.w $0D00,X
#_1EF8D8: AND.b #$F8

#_1EF8DA: CLC
#_1EF8DB: ADC.b #$04
#_1EF8DD: STA.b $00

#_1EF8DF: SEC
#_1EF8E0: SBC.w $0D00,X
#_1EF8E3: BEQ .exit

#_1EF8E5: STA.w $0B7E
#_1EF8E8: BPL .positive

#_1EF8EA: LDA.b #$FF
#_1EF8EC: STA.w $0B7F

.positive
#_1EF8EF: LDA.b $00
#_1EF8F1: STA.w $0D00,X

.exit
#_1EF8F4: RTS

;===================================================================================================

SomariaPlatform_HandleDrag:
#_1EF8F5: JSR SomariaPlatform_HandleDragX
#_1EF8F8: JSR SomariaPlatform_HandleDragY

#_1EF8FB: RTS

;===================================================================================================

SomariaPlatform_HandleTile_DoNothing:
#_1EF8FC: RTS

;===================================================================================================

SomariaPlatform_HandleTile_RisingSlope:
#_1EF8FD: LDA.w $0DE0,X
#_1EF900: EOR.b #$03
#_1EF902: STA.w $0DE0,X

#_1EF905: RTS

;===================================================================================================

SomariaPlatform_HandleTile_FallingSlope:
#_1EF906: LDA.w $0DE0,X
#_1EF909: EOR.b #$02
#_1EF90B: STA.w $0DE0,X

#_1EF90E: RTS

;===================================================================================================

pool SomariaPlatform_HandleTile_TJunctionDLR

.dpad_press
#_1EF90F: db $04, $08, $01, $02

pool off

;---------------------------------------------------------------------------------------------------

SomariaPlatform_HandleTile_TJunctionDLR:
#_1EF913: LDA.b #$01
#_1EF915: STA.w $0D80,X

#_1EF918: LDA.b $4D
#_1EF91A: BNE .continue

#_1EF91C: LDY.w $0DE0,X

#_1EF91F: LDA.b $F0
#_1EF921: AND.w .dpad_press,Y
#_1EF924: BEQ .continue

#_1EF926: STZ.w $0D80,X

#_1EF929: LDA.w $0DE0,X
#_1EF92C: EOR.b #$01
#_1EF92E: STA.w $0DE0,X

.continue
#_1EF931: STZ.b $4B

#_1EF933: JMP.w SomariaPlatform_EnableDragging

;===================================================================================================

pool SomariaPlatform_HandleTile_TJunctionULR

.dpad_press
#_1EF936: db $03, $07, $06, $05

pool off

;---------------------------------------------------------------------------------------------------

SomariaPlatform_HandleTile_TJunctionULR:
#_1EF93A: LDA.b #$01
#_1EF93C: STA.w $0D80,X

#_1EF93F: LDY.w $0DE0,X

#_1EF942: LDA.b $F0
#_1EF944: AND.w .dpad_press,Y
#_1EF947: STA.b $00

#_1EF949: AND.b #$08
#_1EF94B: BEQ .continue

#_1EF94D: LDA.b #$00
#_1EF94F: STA.w $0DE0,X

#_1EF952: STZ.w $0D80,X
#_1EF955: BRA .exit

.continue
#_1EF957: LDA.b $00
#_1EF959: AND.b #$04
#_1EF95B: BEQ .not_down_press

#_1EF95D: LDA.b #$01
#_1EF95F: STA.w $0DE0,X

#_1EF962: STZ.w $0D80,X
#_1EF965: BRA .exit

.not_down_press
#_1EF967: LDA.b $00
#_1EF969: AND.b #$02
#_1EF96B: BEQ .not_left_press

#_1EF96D: LDA.b #$02
#_1EF96F: STA.w $0DE0,X

#_1EF972: STZ.w $0D80,X
#_1EF975: BRA .exit

.not_left_press
#_1EF977: LDA.b $00
#_1EF979: AND.b #$01
#_1EF97B: BEQ .not_right_press

#_1EF97D: LDA.b #$03
#_1EF97F: STA.w $0DE0,X

#_1EF982: STZ.w $0D80,X

.not_right_press
#_1EF985: LDA.w $0DE0,X
#_1EF988: BNE .set_direction

#_1EF98A: LDA.b #$02
#_1EF98C: STA.w $0DE0,X

.set_direction
#_1EF98F: STZ.w $0D80,X

.exit
#_1EF992: RTS

;===================================================================================================

pool SomariaPlatform_HandleTile_TJunctionUDR

.dpad_press
#_1EF993: db $0B, $03, $0A, $09

pool off

;---------------------------------------------------------------------------------------------------

SomariaPlatform_HandleTile_TJunctionUDR:
#_1EF997: LDA.b #$01
#_1EF999: STA.w $0D80,X

#_1EF99C: LDY.w $0DE0,X

#_1EF99F: LDA.b $F0
#_1EF9A1: AND.w .dpad_press,Y
#_1EF9A4: STA.b $00

#_1EF9A6: AND.b #$08
#_1EF9A8: BEQ .not_up_press

#_1EF9AA: LDA.b #$00
#_1EF9AC: STA.w $0DE0,X

#_1EF9AF: STZ.w $0D80,X
#_1EF9B2: BRA .exit

.not_up_press
#_1EF9B4: LDA.b $00
#_1EF9B6: AND.b #$04
#_1EF9B8: BEQ .not_down_press

#_1EF9BA: LDA.b #$01
#_1EF9BC: STA.w $0DE0,X

#_1EF9BF: STZ.w $0D80,X
#_1EF9C2: BRA .exit

.not_down_press
#_1EF9C4: LDA.b $00
#_1EF9C6: AND.b #$02
#_1EF9C8: BEQ .not_left_press

#_1EF9CA: LDA.b #$02
#_1EF9CC: STA.w $0DE0,X

#_1EF9CF: STZ.w $0D80,X
#_1EF9D2: BRA .exit

.not_left_press
#_1EF9D4: LDA.b $00
#_1EF9D6: AND.b #$01
#_1EF9D8: BEQ .not_right_press

#_1EF9DA: LDA.b #$03
#_1EF9DC: STA.w $0DE0,X

#_1EF9DF: STZ.w $0D80,X

.not_right_press
#_1EF9E2: LDA.w $0DE0,X
#_1EF9E5: CMP.b #$01
#_1EF9E7: BNE .set_direction

#_1EF9E9: LDA.b #$02
#_1EF9EB: STA.w $0DE0,X

.set_direction
#_1EF9EE: STZ.w $0D80,X

.exit
#_1EF9F1: RTS

;===================================================================================================

pool SomariaPlatform_HandleTile_TJunctionUDL

.dpad_press
#_1EF9F2: db $09, $05, $0C, $0D

pool off

;---------------------------------------------------------------------------------------------------

SomariaPlatform_HandleTile_TJunctionUDL:
#_1EF9F6: LDA.b #$01
#_1EF9F8: STA.w $0D80,X

#_1EF9FB: LDY.w $0DE0,X

#_1EF9FE: LDA.b $F0
#_1EFA00: AND.w .dpad_press,Y
#_1EFA03: STA.b $00

#_1EFA05: AND.b #$08
#_1EFA07: BEQ .not_up_press

#_1EFA09: LDA.b #$00
#_1EFA0B: STA.w $0DE0,X

#_1EFA0E: STZ.w $0D80,X
#_1EFA11: BRA .exit

.not_up_press
#_1EFA13: LDA.b $00
#_1EFA15: AND.b #$04
#_1EFA17: BEQ .not_down_press

#_1EFA19: LDA.b #$01
#_1EFA1B: STA.w $0DE0,X

#_1EFA1E: STZ.w $0D80,X
#_1EFA21: BRA .exit

.not_down_press
#_1EFA23: LDA.b $00
#_1EFA25: AND.b #$02
#_1EFA27: BEQ .not_left_press

#_1EFA29: LDA.b #$02
#_1EFA2B: STA.w $0DE0,X

#_1EFA2E: STZ.w $0D80,X
#_1EFA31: BRA .exit

.not_left_press
#_1EFA33: LDA.b $00
#_1EFA35: AND.b #$01
#_1EFA37: BEQ .not_right_press

#_1EFA39: LDA.b #$03
#_1EFA3B: STA.w $0DE0,X

#_1EFA3E: STZ.w $0D80,X

.not_right_press
#_1EFA41: LDA.w $0DE0,X
#_1EFA44: CMP.b #$02
#_1EFA46: BNE .set_direction

#_1EFA48: LDA.b #$00
#_1EFA4A: STA.w $0DE0,X

.set_direction
#_1EFA4D: STZ.w $0D80,X

.exit
#_1EFA50: RTS

;===================================================================================================

pool SomariaPlatform_HandleTile_4WayJunction

.dpad_press
#_1EFA51: db $0A, $06, $0E, $0C

pool off

;---------------------------------------------------------------------------------------------------

SomariaPlatform_HandleTile_4WayJunction:
#_1EFA55: LDA.b #$01
#_1EFA57: STA.w $0D80,X

#_1EFA5A: LDY.w $0DE0,X

#_1EFA5D: LDA.b $F0
#_1EFA5F: AND.w .dpad_press,Y
#_1EFA62: STA.b $00

#_1EFA64: AND.b #$08
#_1EFA66: BEQ .not_up_press

#_1EFA68: LDA.b #$00
#_1EFA6A: STA.w $0DE0,X

#_1EFA6D: STZ.w $0D80,X
#_1EFA70: BRA .exit

.not_up_press
#_1EFA72: LDA.b $00
#_1EFA74: AND.b #$04
#_1EFA76: BEQ .not_down_press

#_1EFA78: LDA.b #$01
#_1EFA7A: STA.w $0DE0,X

#_1EFA7D: STZ.w $0D80,X
#_1EFA80: BRA .exit

.not_down_press
#_1EFA82: LDA.b $00
#_1EFA84: AND.b #$02
#_1EFA86: BEQ .not_left_press

#_1EFA88: LDA.b #$02
#_1EFA8A: STA.w $0DE0,X

#_1EFA8D: STZ.w $0D80,X
#_1EFA90: BRA .exit

.not_left_press
#_1EFA92: LDA.b $00
#_1EFA94: AND.b #$01
#_1EFA96: BEQ .not_right_press

#_1EFA98: LDA.b #$03
#_1EFA9A: STA.w $0DE0,X

#_1EFA9D: STZ.w $0D80,X

.not_right_press
#_1EFAA0: LDA.w $0DE0,X
#_1EFAA3: CMP.b #$03
#_1EFAA5: BNE .set_direction

#_1EFAA7: LDA.b #$00
#_1EFAA9: STA.w $0DE0,X

.set_direction
#_1EFAAC: STZ.w $0D80,X

.exit
#_1EFAAF: RTS

;===================================================================================================

pool SomariaPlatform_HandleTile_CrossOver

.dpad_press
#_1EFAB0: db $0B, $07, $0E, $0D

pool off

;---------------------------------------------------------------------------------------------------

SomariaPlatform_HandleTile_CrossOver:
#_1EFAB4: LDY.w $0DE0,X

#_1EFAB7: LDA.b $F0
#_1EFAB9: AND.w .dpad_press,Y
#_1EFABC: STA.b $00

#_1EFABE: AND.b #$08
#_1EFAC0: BEQ .not_up_press

#_1EFAC2: LDA.b #$00
#_1EFAC4: STA.w $0DE0,X
#_1EFAC7: BRA .exit

.not_up_press
#_1EFAC9: LDA.b $00
#_1EFACB: AND.b #$04
#_1EFACD: BEQ .not_down_press

#_1EFACF: LDA.b #$01
#_1EFAD1: STA.w $0DE0,X
#_1EFAD4: BRA .exit

.not_down_press
#_1EFAD6: LDA.b $00
#_1EFAD8: AND.b #$02
#_1EFADA: BEQ .not_left_press

#_1EFADC: LDA.b #$02
#_1EFADE: STA.w $0DE0,X
#_1EFAE1: BRA .exit

.not_left_press
#_1EFAE3: LDA.b $00
#_1EFAE5: AND.b #$01
#_1EFAE7: BEQ .exit

#_1EFAE9: LDA.b #$03
#_1EFAEB: STA.w $0DE0,X

.exit
#_1EFAEE: RTS

;===================================================================================================

pool SomariaPlatform_HandleTile_Unknown

.dpad_press
#_1EFAEF: db $0C, $0C, $03, $03

pool off

;---------------------------------------------------------------------------------------------------

SomariaPlatform_HandleTile_Unknown:
#_1EFAF3: LDA.b #$01
#_1EFAF5: STA.w $0D80,X

#_1EFAF8: LDY.w $0DE0,X

#_1EFAFB: LDA.b $F0
#_1EFAFD: AND.w .dpad_press,Y
#_1EFB00: BEQ SomariaPlatform_EnableDragging

#_1EFB02: STA.b $00

#_1EFB04: AND.b #$08
#_1EFB06: BEQ .not_up_press

#_1EFB08: LDA.b #$00
#_1EFB0A: BRA .set_direction

.not_up_press
#_1EFB0C: LDA.b $00
#_1EFB0E: AND.b #$04
#_1EFB10: BEQ .not_down_press

#_1EFB12: LDA.b #$01
#_1EFB14: BRA .set_direction

.not_down_press
#_1EFB16: LDA.b $00
#_1EFB18: AND.b #$02
#_1EFB1A: BEQ .not_left_press

#_1EFB1C: LDA.b #$02
#_1EFB1E: BRA .set_direction

.not_left_press
#_1EFB20: LDA.b #$03

.set_direction
#_1EFB22: STA.w $0DE0,X

#_1EFB25: STZ.w $0D80,X

;===================================================================================================

SomariaPlatform_EnableDragging:
#_1EFB28: LDA.b #$01
#_1EFB2A: STA.w $02F5

#_1EFB2D: RTS

;===================================================================================================

SomariaPlatform_HandleTile_Station:
#_1EFB2E: STZ.w $0D80,X

#_1EFB31: LDA.w $0DE0,X
#_1EFB34: EOR.b #$01
#_1EFB36: STA.w $0DE0,X

#_1EFB39: STZ.b $4B
#_1EFB3B: BRA SomariaPlatform_EnableDragging

;===================================================================================================

SomariaPlatform_DragLink:
#_1EFB3D: REP #$20

#_1EFB3F: LDA.w $0FD8
#_1EFB42: SEC
#_1EFB43: SBC.w #$0008

#_1EFB46: CMP.b $22
#_1EFB48: BEQ .x_done
#_1EFB4A: BPL .x_too_low

.x_too_high
#_1EFB4C: DEC.w $0B7C
#_1EFB4F: BRA .x_done

.x_too_low
#_1EFB51: INC.w $0B7C

.x_done
#_1EFB54: LDA.w $0FDA
#_1EFB57: SEC
#_1EFB58: SBC.w #$0010

#_1EFB5B: CMP.b $20
#_1EFB5D: BEQ .y_done
#_1EFB5F: BPL .y_too_low

.y_too_high
#_1EFB61: DEC.w $0B7E
#_1EFB64: BRA .y_done

.y_too_low
#_1EFB66: INC.w $0B7E

.y_done
#_1EFB69: SEP #$30

#_1EFB6B: RTS

;===================================================================================================

UNREACHABLE_1EFB6C:
#_1EFB6C: db $00, $00, $01, $FF, $00, $00

;===================================================================================================

Sprite_AE_Pipe_Down:
Sprite_AF_Pipe_Up:
Sprite_B0_Pipe_Right:
Sprite_B1_Pipe_Left:
#_1EFB72: JSR Sprite_CheckIfActive_Bank1E

#_1EFB75: LDA.w $0DC0,X
#_1EFB78: JSL JumpTableLocal
#_1EFB7C: dw Pipe_LocatePath
#_1EFB7E: dw Pipe_FindEndPoint
#_1EFB80: dw Pipe_Idle
#_1EFB82: dw Pipe_DragLink
#_1EFB84: dw Pipe_MoveLink
#_1EFB86: dw Pipe_Reset

;===================================================================================================

Pipe_FindEndPoint:
#_1EFB88: JSR SomariaPlatformAndPipe_CheckTile
#_1EFB8B: CMP.b #$BE ; TILETYPE BE
#_1EFB8D: BNE .invalid_tile

#_1EFB8F: STA.w $0E90,X

#_1EFB92: INC.w $0DC0,X

#_1EFB95: LDA.w $0DE0,X
#_1EFB98: EOR.b #$01
#_1EFB9A: STA.w $0DE0,X

.invalid_tile
#_1EFB9D: CMP.w $0E90,X
#_1EFBA0: BEQ .same_as_last

#_1EFBA2: STA.w $0E90,X

.same_as_last
#_1EFBA5: LDA.w $0DE0,X
#_1EFBA8: STA.w $0EB0,X

#_1EFBAB: JSR SomariaPlatformAndPipe_HandleMovement
#_1EFBAE: JSR Sprite_Move_XY_Bank1E

#_1EFBB1: RTS

;===================================================================================================

Pipe_Idle:
#_1EFBB2: LDA.w $1DE0
#_1EFBB5: CMP.b #$FF
#_1EFBB7: BNE .exit

#_1EFBB9: JSL Sprite_CheckDamageToLink_ignore_layer_long
#_1EFBBD: BCC .exit

#_1EFBBF: PHX
#_1EFBC0: JSL Pipe_ValidateEntry
#_1EFBC4: PLX

#_1EFBC5: BCS .cant_use

#_1EFBC7: INC.w $0DC0,X

#_1EFBCA: LDA.b #$04
#_1EFBCC: STA.w $0E00,X

#_1EFBCF: JSL Link_ResetProperties_A

#_1EFBD3: LDA.b #$01
#_1EFBD5: STA.w $02E4
#_1EFBD8: STA.w $037B

#_1EFBDB: TXA
#_1EFBDC: STA.w $1DE0

.exit
#_1EFBDF: RTS

.cant_use
#_1EFBE0: JSR Sprite_HaltAllMovement

#_1EFBE3: RTS

;===================================================================================================

PipeTileTypeMasks:
#_1EFBE4: db $08, $04, $02, $01

;===================================================================================================

Pipe_DragLink:
#_1EFBE8: LDA.w $0E00,X
#_1EFBEB: BNE .delay

#_1EFBED: INC.w $0DC0,X

#_1EFBF0: LDA.b #$0C
#_1EFBF2: STA.b $4B

#_1EFBF4: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_1EFBF5: LDA.b #$01
#_1EFBF7: STA.w $02E4
#_1EFBFA: STA.w $037B

#_1EFBFD: LDY.w $0DE0,X

#_1EFC00: LDA.w PipeTileTypeMasks,Y
#_1EFC03: JSR Pipe_HandlePlayerMovement

#_1EFC06: RTS

;===================================================================================================

Pipe_MoveLink:
#_1EFC07: LDA.b #$03
#_1EFC09: STA.w $0E80,X

#_1EFC0C: LDA.b $22
#_1EFC0E: STA.b $3F

#_1EFC10: LDA.b $23
#_1EFC12: STA.b $41

#_1EFC14: LDA.b $20
#_1EFC16: STA.b $3E

#_1EFC18: LDA.b $21
#_1EFC1A: STA.b $40

;---------------------------------------------------------------------------------------------------

.next
#_1EFC1C: INC.w $0D90,X

#_1EFC1F: LDA.w $0D90,X
#_1EFC22: AND.b #$07
#_1EFC24: BNE .do_movement

#_1EFC26: JSR SomariaPlatformAndPipe_CheckTile

#_1EFC29: PHA

#_1EFC2A: CMP.b #$B2 ; TILETYPE B2
#_1EFC2C: BCC .no_thud

#_1EFC2E: CMP.b #$B6 ; TILETYPE B6
#_1EFC30: BCS .no_thud

#_1EFC32: LDA.b #$0B ; SFX2.0B
#_1EFC34: JSL SpriteSFX_QueueSFX2WithPan

.no_thud
#_1EFC38: PLA
#_1EFC39: CMP.w $0E90,X
#_1EFC3C: BEQ .do_movement

#_1EFC3E: STA.w $0E90,X

#_1EFC41: CMP.b #$BE ; TILETYPE BE
#_1EFC43: BNE .check_new_tile

#_1EFC45: INC.w $0DC0,X

#_1EFC48: LDA.b #$18
#_1EFC4A: STA.w $0E00,X

.check_new_tile
#_1EFC4D: LDA.w $0DE0,X
#_1EFC50: STA.w $0EB0,X

#_1EFC53: JSR SomariaPlatformAndPipe_HandleMovement
#_1EFC56: JSR SomariaPlatform_HandleDrag

;---------------------------------------------------------------------------------------------------

.do_movement
#_1EFC59: JSR Sprite_Move_XY_Bank1E

#_1EFC5C: LDA.w $0D10,X
#_1EFC5F: SEC
#_1EFC60: SBC.b #$08
#_1EFC62: STA.b $00

#_1EFC64: LDA.w $0D30,X
#_1EFC67: SBC.b #$00
#_1EFC69: STA.b $01

#_1EFC6B: LDA.w $0D00,X
#_1EFC6E: SEC
#_1EFC6F: SBC.b #$0E
#_1EFC71: STA.b $02

#_1EFC73: LDA.w $0D20,X
#_1EFC76: SBC.b #$00
#_1EFC78: STA.b $03

#_1EFC7A: REP #$20

#_1EFC7C: LDA.b $00
#_1EFC7E: CMP.b $22
#_1EFC80: BEQ .x_done
#_1EFC82: BCS .move_right

.move_left
#_1EFC84: DEC.b $22
#_1EFC86: BRA .x_done

.move_right
#_1EFC88: INC.b $22

.x_done
#_1EFC8A: LDA.b $02
#_1EFC8C: CMP.b $20
#_1EFC8E: BEQ .y_done
#_1EFC90: BCS .move_down

.move_up
#_1EFC92: DEC.b $20
#_1EFC94: BRA .y_done

.move_down
#_1EFC96: INC.b $20

.y_done
#_1EFC98: SEP #$30

#_1EFC9A: DEC.w $0E80,X
#_1EFC9D: BEQ .finish_up

#_1EFC9F: JMP.w .next

;---------------------------------------------------------------------------------------------------

.finish_up
#_1EFCA2: LDA.b $22
#_1EFCA4: SEC
#_1EFCA5: SBC.b $3F
#_1EFCA7: STA.b $31

#_1EFCA9: LDA.b $20
#_1EFCAB: SEC
#_1EFCAC: SBC.b $3E
#_1EFCAE: STA.b $30

#_1EFCB0: LDY.w $0DE0,X

#_1EFCB3: LDA.w PipeTileTypeMasks,Y
#_1EFCB6: STA.b $26

#_1EFCB8: PHX

#_1EFCB9: JSL Link_HandleMovingAnimation_FullLongEntry
#_1EFCBD: JSL HandleIndoorCameraAndDoors_long
#_1EFCC1: JSL Link_CancelDash_long

#_1EFCC5: PLX

#_1EFCC6: RTS

;===================================================================================================

Pipe_Reset:
#_1EFCC7: LDA.w $0E00,X
#_1EFCCA: BNE .delay

#_1EFCCC: STZ.w $02E4
#_1EFCCF: STZ.w $02F5
#_1EFCD2: STZ.w $037B

#_1EFCD5: STZ.b $4B
#_1EFCD7: STZ.b $31
#_1EFCD9: STZ.b $30

#_1EFCDB: LDA.b #$FF
#_1EFCDD: STA.w $1DE0

#_1EFCE0: LDA.b #$02
#_1EFCE2: STA.w $0DC0,X

#_1EFCE5: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_1EFCE6: LDA.w $0DE0,X
#_1EFCE9: EOR.b #$01
#_1EFCEB: TAY

#_1EFCEC: LDA.w PipeTileTypeMasks,Y
#_1EFCEF: JSR Pipe_HandlePlayerMovement

#_1EFCF2: RTS

;===================================================================================================

Pipe_HandlePlayerMovement:
#_1EFCF3: PHX

#_1EFCF4: STA.b $67
#_1EFCF6: STA.b $26

#_1EFCF8: JSL Link_HandleVelocity
#_1EFCFC: JSL Link_HandleMovingAnimation_FullLongEntry
#_1EFD00: JSL HandleIndoorCameraAndDoors_long

#_1EFD04: PLX

#_1EFD05: RTS

;===================================================================================================

pool Fairy_HandleMovement

.z_accel
#_1EFD06: db  1, -1

pool off

;---------------------------------------------------------------------------------------------------

Fairy_HandleMovement:
#_1EFD08: PHB
#_1EFD09: PHK
#_1EFD0A: PLB

#_1EFD0B: JSR .main

#_1EFD0E: PLB

#_1EFD0F: RTL

;---------------------------------------------------------------------------------------------------

.main
#_1EFD10: LDA.b $1A
#_1EFD12: LSR A
#_1EFD13: LSR A
#_1EFD14: LSR A
#_1EFD15: AND.b #$01
#_1EFD17: STA.w $0DC0,X

#_1EFD1A: LDA.b $1B
#_1EFD1C: BEQ .ignore_tile_collision

#_1EFD1E: LDA.w $0E00,X
#_1EFD21: BNE .ignore_tile_collision

#_1EFD23: JSR Sprite_CheckTileCollision_Bank1E
#_1EFD26: AND.b #$03
#_1EFD28: BEQ .no_horizontal_collision

#_1EFD2A: LDA.w $0D50,X
#_1EFD2D: EOR.b #$FF
#_1EFD2F: INC A
#_1EFD30: STA.w $0D50,X

#_1EFD33: LDA.w $0DE0,X
#_1EFD36: EOR.b #$FF
#_1EFD38: INC A
#_1EFD39: STA.w $0DE0,X

#_1EFD3C: LDA.b #$20
#_1EFD3E: STA.w $0E00,X

.no_horizontal_collision
#_1EFD41: LDA.w $0E70,X
#_1EFD44: AND.b #$0C
#_1EFD46: BEQ .ignore_tile_collision

#_1EFD48: LDA.w $0D40,X
#_1EFD4B: EOR.b #$FF
#_1EFD4D: INC A
#_1EFD4E: STA.w $0D40,X

#_1EFD51: LDA.w $0D90,X
#_1EFD54: EOR.b #$FF
#_1EFD56: INC A
#_1EFD57: STA.w $0D90,X

#_1EFD5A: LDA.b #$20
#_1EFD5C: STA.w $0E00,X

;---------------------------------------------------------------------------------------------------

.ignore_tile_collision
#_1EFD5F: LDA.w $0D50,X
#_1EFD62: BEQ .not_moving_horizontally
#_1EFD64: BPL .moving_right

.moving_left
#_1EFD66: LDA.w $0F50,X
#_1EFD69: AND.b #$BF
#_1EFD6B: BRA .flip_done

.moving_right
#_1EFD6D: LDA.w $0F50,X
#_1EFD70: ORA.b #$40

.flip_done
#_1EFD72: STA.w $0F50,X

;---------------------------------------------------------------------------------------------------

.not_moving_horizontally
#_1EFD75: JSR Sprite_Move_XY_Bank1E
#_1EFD78: LDA.b $1A
#_1EFD7A: AND.b #$3F
#_1EFD7C: BNE .dont_turn

#_1EFD7E: JSL GetRandomNumber
#_1EFD82: STA.b $04

#_1EFD84: LDA.b $23
#_1EFD86: STA.b $05

#_1EFD88: JSL GetRandomNumber
#_1EFD8C: STA.b $06

#_1EFD8E: LDA.b $21
#_1EFD90: STA.b $07

#_1EFD92: LDA.b #$10
#_1EFD94: JSL Sprite_ProjectSpeedTowardsLocation_long

#_1EFD98: LDA.b $00
#_1EFD9A: STA.w $0D90,X

#_1EFD9D: LDA.b $01
#_1EFD9F: STA.w $0DE0,X

.dont_turn
#_1EFDA2: LDA.b $1A
#_1EFDA4: AND.b #$0F
#_1EFDA6: BNE .done_with_speed

#_1EFDA8: LDA.b #$FF
#_1EFDAA: STA.b $01
#_1EFDAC: STA.b $03

#_1EFDAE: LDA.w $0D90,X
#_1EFDB1: STA.b $00
#_1EFDB3: BMI .negative_y_target

#_1EFDB5: STZ.b $01

.negative_y_target
#_1EFDB7: LDA.w $0D40,X
#_1EFDBA: STA.b $02
#_1EFDBC: BMI .negative_y_speed

#_1EFDBE: STZ.b $03

.negative_y_speed
#_1EFDC0: REP #$21

#_1EFDC2: LDA.b $00
#_1EFDC4: ADC.b $02
#_1EFDC6: LSR A

#_1EFDC7: SEP #$30

#_1EFDC9: STA.w $0D40,X

#_1EFDCC: LDA.b #$FF
#_1EFDCE: STA.b $01
#_1EFDD0: STA.b $03

#_1EFDD2: LDA.w $0DE0,X
#_1EFDD5: STA.b $00
#_1EFDD7: BMI .negative_x_target

#_1EFDD9: STZ.b $01

.negative_x_target
#_1EFDDB: LDA.w $0D50,X
#_1EFDDE: STA.b $02
#_1EFDE0: BMI .negative_x_speed

#_1EFDE2: STZ.b $03

.negative_x_speed
#_1EFDE4: REP #$21

#_1EFDE6: LDA.b $00
#_1EFDE8: ADC.b $02
#_1EFDEA: LSR A

#_1EFDEB: SEP #$30

#_1EFDED: STA.w $0D50,X

;---------------------------------------------------------------------------------------------------

.done_with_speed
#_1EFDF0: JSR Sprite_Move_Z_Bank1E

#_1EFDF3: JSL GetRandomNumber
#_1EFDF7: AND.b #$01
#_1EFDF9: TAY

#_1EFDFA: LDA.w .z_accel,Y
#_1EFDFD: CLC
#_1EFDFE: ADC.w $0F80,X
#_1EFE01: STA.w $0F80,X

#_1EFE04: LDA.w $0F70,X

#_1EFE07: LDY.b #$08
#_1EFE09: CMP.b #$08
#_1EFE0B: BCC .float_up

;---------------------------------------------------------------------------------------------------

.float_down
#_1EFE0D: LDY.b #$18
#_1EFE0F: CMP.b #$18
#_1EFE11: BCC .exit

#_1EFE13: TYA
#_1EFE14: STA.w $0F70,X

#_1EFE17: LDA.b #$FB
#_1EFE19: STA.w $0F80,X

.exit
#_1EFE1C: RTS

;---------------------------------------------------------------------------------------------------

.float_up
#_1EFE1D: TYA
#_1EFE1E: STA.w $0F70,X

#_1EFE21: LDA.b #$05
#_1EFE23: STA.w $0F80,X

#_1EFE26: RTS

;===================================================================================================

ReleaseFairy:
#_1EFE27: LDA.b #$E3 ; SPRITE E3
#_1EFE29: JSL Sprite_SpawnDynamically
#_1EFE2D: BMI .no_space

#_1EFE2F: LDA.b $EE
#_1EFE31: STA.w $0F20,Y

#_1EFE34: LDA.b $22
#_1EFE36: CLC
#_1EFE37: ADC.b #$08
#_1EFE39: STA.w $0D10,Y

#_1EFE3C: LDA.b $23
#_1EFE3E: ADC.b #$00
#_1EFE40: STA.w $0D30,Y

#_1EFE43: LDA.b $20
#_1EFE45: CLC
#_1EFE46: ADC.b #$10
#_1EFE48: STA.w $0D00,Y

#_1EFE4B: LDA.b $21
#_1EFE4D: ADC.b #$00
#_1EFE4F: STA.w $0D20,Y

#_1EFE52: LDA.b #$00
#_1EFE54: STA.w $0DE0,Y

#_1EFE57: LDA.b #$60
#_1EFE59: STA.w $0F10,Y

.no_space
#_1EFE5C: RTL

;===================================================================================================

Sprite_DirectionToFaceLink_Bank1E:
#_1EFE5D: JSL Sprite_DirectionToFaceLink_long

#_1EFE61: RTS

;===================================================================================================

Sprite_IsRightOfLink_Bank1E:
#_1EFE62: JSL Sprite_IsRightOfLink_long

#_1EFE66: RTS

;===================================================================================================

Sprite_IsBelowLink_Bank1E:
#_1EFE67: JSL Sprite_IsBelowLink_long

#_1EFE6B: RTS

;===================================================================================================

Sprite_CheckIfActive_Bank1E:
#_1EFE6C: LDA.w $0DD0,X
#_1EFE6F: CMP.b #$09
#_1EFE71: BNE .inactive

#Sprite_CheckIfActivePermissive_Bank1E:
#_1EFE73: LDA.w $0FC1
#_1EFE76: BNE .inactive

#_1EFE78: LDA.b $11
#_1EFE7A: BNE .inactive

#_1EFE7C: LDA.w $0CAA,X
#_1EFE7F: BMI .active

#_1EFE81: LDA.w $0F00,X
#_1EFE84: BEQ .active

.inactive
#_1EFE86: PLA
#_1EFE87: PLA

.active
#_1EFE88: RTS

;===================================================================================================

pool Sprite_CheckIfRecoiling_Bank1E

.masks
#_1EFE89: db $03, $01, $00, $00, $0C, $03

pool off

;---------------------------------------------------------------------------------------------------

Sprite_CheckIfRecoiling_Bank1E:
#_1EFE8F: LDA.w $0EA0,X
#_1EFE92: BEQ .exit

#_1EFE94: AND.b #$7F
#_1EFE96: BEQ .recoil_over

#_1EFE98: LDA.w $0D40,X
#_1EFE9B: PHA

#_1EFE9C: LDA.w $0D50,X
#_1EFE9F: PHA

#_1EFEA0: DEC.w $0EA0,X
#_1EFEA3: BNE .still_recoiling

#_1EFEA5: LDA.w $0F40,X
#_1EFEA8: CLC
#_1EFEA9: ADC.b #$20
#_1EFEAB: CMP.b #$40
#_1EFEAD: BCS .no_adjust

#_1EFEAF: LDA.w $0F30,X
#_1EFEB2: CLC
#_1EFEB3: ADC.b #$20
#_1EFEB5: CMP.b #$40
#_1EFEB7: BCC .still_recoiling

.no_adjust
#_1EFEB9: LDA.b #$90
#_1EFEBB: STA.w $0EA0,X

.still_recoiling
#_1EFEBE: LDA.w $0EA0,X
#_1EFEC1: BMI .no_movement

#_1EFEC3: LSR A
#_1EFEC4: LSR A
#_1EFEC5: TAY

#_1EFEC6: LDA.b $1A
#_1EFEC8: AND.w .masks,Y
#_1EFECB: BNE .no_movement

#_1EFECD: LDA.w $0F30,X
#_1EFED0: STA.w $0D40,X

#_1EFED3: LDA.w $0F40,X
#_1EFED6: STA.w $0D50,X

#_1EFED9: LDA.w $0CD2,X
#_1EFEDC: BMI .handle_movement

#_1EFEDE: JSR Sprite_CheckTileCollision_Bank1E
#_1EFEE1: AND.b #$0F
#_1EFEE3: BEQ .handle_movement

#_1EFEE5: CMP.b #$04
#_1EFEE7: BCS .stop_vertical_movement

.stop_horizontal_movement
#_1EFEE9: STZ.w $0F40,X
#_1EFEEC: STZ.w $0D50,X

#_1EFEEF: BRA .movement_stopped

.stop_vertical_movement
#_1EFEF1: STZ.w $0F30,X
#_1EFEF4: STZ.w $0D40,X

.movement_stopped
#_1EFEF7: BRA .no_movement

.handle_movement
#_1EFEF9: JSR Sprite_Move_XY_Bank1E

.no_movement
#_1EFEFC: PLA
#_1EFEFD: STA.w $0D50,X

#_1EFF00: PLA
#_1EFF01: STA.w $0D40,X

; Agahnim recoils, but he keeps going.
#_1EFF04: LDA.w $0E20,X
#_1EFF07: CMP.b #$7A ; SPRITE 7A
#_1EFF09: BEQ .exit

#_1EFF0B: PLA
#_1EFF0C: PLA

.exit
#_1EFF0D: RTS

.recoil_over
#_1EFF0E: STZ.w $0EA0,X

#_1EFF11: RTS

;===================================================================================================

Sprite_Move_XYZ_Bank1E:
#_1EFF12: JSR Sprite_Move_Z_Bank1E

;===================================================================================================

Sprite_Move_XY_Bank1E:
#_1EFF15: JSR Sprite_Move_X_Bank1E
#_1EFF18: JSR Sprite_Move_Y_Bank1E

#_1EFF1B: RTS

;===================================================================================================

Sprite_Move_X_Bank1E:
#_1EFF1C: TXA
#_1EFF1D: CLC
#_1EFF1E: ADC.b #$10
#_1EFF20: TAX

#_1EFF21: JSR Sprite_Move_Y_Bank1E

#_1EFF24: LDX.w $0FA0

#_1EFF27: RTS

;===================================================================================================

Sprite_Move_Y_Bank1E:
#_1EFF28: LDA.w $0D40,X
#_1EFF2B: BEQ .exit

#_1EFF2D: ASL A
#_1EFF2E: ASL A
#_1EFF2F: ASL A
#_1EFF30: ASL A

#_1EFF31: CLC
#_1EFF32: ADC.w $0D60,X
#_1EFF35: STA.w $0D60,X

#_1EFF38: LDA.w $0D40,X
#_1EFF3B: PHP

#_1EFF3C: LSR A
#_1EFF3D: LSR A
#_1EFF3E: LSR A
#_1EFF3F: LSR A

#_1EFF40: LDY.b #$00

#_1EFF42: PLP
#_1EFF43: BPL .positive_velocity

#_1EFF45: ORA.b #$F0
#_1EFF47: DEY

.positive_velocity
#_1EFF48: ADC.w $0D00,X
#_1EFF4B: STA.w $0D00,X

#_1EFF4E: TYA
#_1EFF4F: ADC.w $0D20,X
#_1EFF52: STA.w $0D20,X

.exit
#_1EFF55: RTS

;===================================================================================================

Sprite_Move_Z_Bank1E:
#_1EFF56: LDA.w $0F80,X
#_1EFF59: ASL A
#_1EFF5A: ASL A
#_1EFF5B: ASL A
#_1EFF5C: ASL A
#_1EFF5D: CLC
#_1EFF5E: ADC.w $0F90,X
#_1EFF61: STA.w $0F90,X

#_1EFF64: LDA.w $0F80,X
#_1EFF67: PHP

#_1EFF68: LSR A
#_1EFF69: LSR A
#_1EFF6A: LSR A
#_1EFF6B: LSR A

#_1EFF6C: PLP
#_1EFF6D: BPL .positive_velocity

#_1EFF6F: ORA.b #$F0

.positive_velocity
#_1EFF71: ADC.w $0F70,X
#_1EFF74: STA.w $0F70,X

#_1EFF77: RTS

;===================================================================================================

Sprite_PrepOAMCoord_Bank1E:
#_1EFF78: JSL Sprite_PrepOAMCoord_long
#_1EFF7C: BCC .draw

#_1EFF7E: PLA
#_1EFF7F: PLA

.draw
#_1EFF80: RTS

;===================================================================================================

Sprite_DrawRippleIfInWater:
#_1EFF81: LDA.l $7FF9C2,X
#_1EFF85: CMP.b #$08
#_1EFF87: BEQ .water_tile

#_1EFF89: CMP.b #$09
#_1EFF8B: BNE .not_water_tile

.water_tile
#_1EFF8D: LDA.w $0E60,X
#_1EFF90: AND.b #$20
#_1EFF92: BEQ .no_offset

#_1EFF94: LDA.w $0FD8
#_1EFF97: SEC
#_1EFF98: SBC.b #$04
#_1EFF9A: STA.w $0FD8

#_1EFF9D: LDA.w $0FD9
#_1EFFA0: SBC.b #$00
#_1EFFA2: STA.w $0FD9

#_1EFFA5: LDA.w $0E20,X
#_1EFFA8: CMP.b #$DF ; !HARDCODED thing for small magic (SPRITE DF)
#_1EFFAA: BNE .no_offset

#_1EFFAC: LDA.w $0FDA
#_1EFFAF: SEC
#_1EFFB0: SBC.b #$07
#_1EFFB2: STA.w $0FDA

#_1EFFB5: LDA.w $0FDB
#_1EFFB8: SBC.b #$00
#_1EFFBA: STA.w $0FDB

.no_offset
#_1EFFBD: JSL SpriteDraw_WaterRipple
#_1EFFC1: JSL Sprite_Get16BitCoords_long

#_1EFFC5: LDA.w $0E40,X
#_1EFFC8: AND.b #$1F
#_1EFFCA: INC A
#_1EFFCB: ASL A
#_1EFFCC: ASL A

#_1EFFCD: JSL OAM_AllocateFromRegionA

.not_water_tile
#_1EFFD1: RTL

;===================================================================================================
; FREE ROM: 0x2E
;===================================================================================================
NULL_1EFFD2:
#_1EFFD2: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1EFFDA: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1EFFE2: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1EFFEA: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1EFFF2: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1EFFFA: db $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

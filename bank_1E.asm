org $1E8000

;===================================================================================================

HelmasaurKing_Initialize:
|1E8000| LDA.b #$30
|1E8002| STA.w $0B2F

|1E8005| LDA.b #$80
|1E8007| STA.w $0B2D

|1E800A| STZ.w $0B2E
|1E800D| STZ.w $0B30
|1E8010| STZ.w $0B33
|1E8013| STZ.w $0B31
|1E8016| STZ.w $0B32

;===================================================================================================

HelmasaurKing_Reinitialize:
|1E8019| PHB
|1E801A| PHK
|1E801B| PLB

|1E801C| PHX

|1E801D| LDA.w $0E80,X
|1E8020| STA.b $00

|1E8022| LDY.b #$03

.next_leg
|1E8024| LDA.b $00
|1E8026| CLC
|1E8027| ADC.w HelmasaurKingLeg_OffsetYBaseIndex,Y
|1E802A| AND.b #$1F
|1E802C| TAX

|1E802D| LDA.w HelmasaurKingLeg_Offset_Y,X
|1E8030| STA.w $0B08,Y

|1E8033| DEY
|1E8034| BPL .next_leg

|1E8036| PLX
|1E8037| PLB

|1E8038| RTL

;===================================================================================================

Sprite_92_HelmasaurKing:
|1E8039| LDA.w $0DB0,X
|1E803C| BPL HelmasaurKing_Main

;===================================================================================================

HelmasaurKing_MaskDebris:
|1E803E| LDA.w $0DF0,X
|1E8041| BEQ .stay_around

|1E8043| DEC A
|1E8044| BNE .stay_around

|1E8046| STZ.w $0DD0,X

.stay_around
|1E8049| JSL SpriteDraw_SingleLarge_long
|1E804D| JSR CheckIfActive_bank1E

|1E8050| LDA.b $1A
|1E8052| AND.b #$07
|1E8054| ORA.w $0E00,X
|1E8057| BNE .preserve_flip

|1E8059| LDA.w $0F50,X
|1E805C| EOR.b #$40
|1E805E| STA.w $0F50,X

.preserve_flip
|1E8061| JSR MoveSpriteXYZ_bank1E

|1E8064| DEC.w $0F80,X
|1E8067| DEC.w $0F80,X

|1E806A| LDA.w $0F70,X
|1E806D| BPL .exit

|1E806F| STZ.w $0F70,X

|1E8072| LDA.b #$0C
|1E8074| STA.w $0DF0,X

|1E8077| LDA.b #$18
|1E8079| STA.w $0F80,X

|1E807C| LDA.b #$06
|1E807E| STA.w $0DC0,X

.exit
|1E8081| RTS

;===================================================================================================

HelmasaurKing_Main:
|1E8082| CMP.b #$03
|1E8084| BCS .still_masked

|1E8086| LDA.w $0B89,X
|1E8089| AND.b #$F1
|1E808B| STA.w $0B89,X

|1E808E| LDA.b #$0A
|1E8090| STA.w $0B6B,X

|1E8093| BRA .continue

.still_masked
|1E8095| LDA.b #$1F
|1E8097| STA.w $0F60,X

|1E809A| LDA.b #$02
|1E809C| STA.w $0B6B,X

.continue
|1E809F| JSR SpriteDraw_KingHelmasaur

|1E80A2| LDA.w $0DD0,X
|1E80A5| CMP.b #$06
|1E80A7| BNE HelmasaurKing_Alive

|1E80A9| LDA.w $0DF0,X
|1E80AC| BNE .delay_explosions

|1E80AE| LDA.b #$04
|1E80B0| STA.w $0DD0,X

|1E80B3| STZ.w $0D90,X

|1E80B6| LDA.b #$E0
|1E80B8| STA.w $0DF0,X

|1E80BB| RTS

;---------------------------------------------------------------------------------------------------

.delay_explosions
|1E80BC| PHA

|1E80BD| ORA.b #$F0
|1E80BF| STA.w $0EF0,X

|1E80C2| PLA
|1E80C3| CMP.b #$80
|1E80C5| BCS .exit

|1E80C7| AND.b #$07
|1E80C9| BNE .exit

|1E80CB| LDY.w $0B33
|1E80CE| CPY.b #$10
|1E80D0| BEQ .exit

|1E80D2| INC.w $0B33

|1E80D5| STZ.b $00

|1E80D7| LDA.w $0B0D,Y
|1E80DA| BPL .positive_a

|1E80DC| DEC.b $00

.positive_a
|1E80DE| CLC
|1E80DF| ADC.w $0D10,X
|1E80E2| STA.w $0FD8

|1E80E5| LDA.w $0D30,X
|1E80E8| ADC.b $00
|1E80EA| STA.w $0FD9

|1E80ED| STZ.b $00

|1E80EF| LDA.w $0B1D,Y
|1E80F2| BPL .positive_b

|1E80F4| DEC.b $00

.positive_b
|1E80F6| CLC
|1E80F7| ADC.w $0D00,X
|1E80FA| STA.w $0FDA

|1E80FD| LDA.w $0D20,X
|1E8100| ADC.b $00
|1E8102| STA.w $0FDB

|1E8105| JSL MakeBossExplosion

.exit
|1E8109| RTS

;===================================================================================================

pool HelmasaurKing_Alive

.phase_hp
|1E810A| db $03, $03, $03, $03, $03, $03, $03, $03
|1E8112| db $02, $02, $01, $01, $00

endpool

;---------------------------------------------------------------------------------------------------

HelmasaurKing_Alive:
|1E8117| JSR CheckIfActive_bank1E

|1E811A| LDA.w $0E50,X
|1E811D| LSR A
|1E811E| LSR A
|1E811F| TAY

|1E8120| LDA.w .phase_hp,Y
|1E8123| STA.w $0DB0,X

|1E8126| CMP.b #$03
|1E8128| BNE .not_phase3

|1E812A| CMP.w $0E90,X
|1E812D| BEQ .continue

|1E812F| STZ.w $0EF0,X

|1E8132| JSR HelmasaurKing_ExplodeMask
|1E8135| BRA .continue

.not_phase3
|1E8137| CMP.w $0E90,X
|1E813A| BEQ .continue

|1E813C| JSR HelmasaurKing_ChipAwayAtMask

.continue
|1E813F| LDA.w $0DB0,X
|1E8142| STA.w $0E90,X

|1E8145| JSL CheckDamageFromLink_long

|1E8149| JSR HelmasaurKing_SwingTail
|1E814C| JSR HelmasaurKing_AttemptDamage
|1E814F| JSR HelmasaurKing_CheckMaskDamageFromHammer

|1E8152| LDA.w $0E00,X
|1E8155| BEQ .might_fireball

|1E8157| CMP.b #$60
|1E8159| BEQ .no_fireball

|1E815B| RTS

;---------------------------------------------------------------------------------------------------

.might_fireball
|1E815C| LDA.w $0E10,X
|1E815F| BEQ .do_attack

|1E8161| CMP.b #$40
|1E8163| BNE .exit

|1E8165| JSR HelmasaurKing_SpitFireball

|1E8168| LDA.w $0DB0,X
|1E816B| CMP.b #$03
|1E816D| BCC .exit

.no_fireball
|1E816F| LDA.w $0EC0,X
|1E8172| BNE .exit

|1E8174| INC.w $0EC0,X

|1E8177| LDA.b #$20
|1E8179| STA.w $0EE0,X

.exit
|1E817C| RTS

;---------------------------------------------------------------------------------------------------

.do_attack
|1E817D| LDA.w $0D80,X
|1E8180| JSL JumpTableLocal
|1E8184| dw HelmasaurKing_DecisionHome
|1E8186| dw HelmasaurKing_WalkToLocation
|1E8188| dw HelmasaurKing_DecisionAway
|1E818A| dw HelmasaurKing_WalkBackHome

;===================================================================================================

pool HelmasaurKing_DecisionHome

.speed_x
|1E818C| db -12, -12,  -4,   0,   4,  12,  12,   0

.speed_y
|1E8194| db   0,   4,  12,  12,  12,   4,   0,  12

endpool

;---------------------------------------------------------------------------------------------------

HelmasaurKing_DecisionHome:
|1E819C| LDA.w $0EF0,X
|1E819F| BNE .delay

|1E81A1| LDA.w $0DF0,X
|1E81A4| BNE .exit

.delay
|1E81A6| JSR HelmasaurKing_MaybeAttack

|1E81A9| JSL GetRandomNumber
|1E81AD| AND.b #$07
|1E81AF| TAY

|1E81B0| LDA.w .speed_x,Y
|1E81B3| STA.w $0D50,X

|1E81B6| LDA.w .speed_y,Y
|1E81B9| STA.w $0D40,X

|1E81BC| LDA.b #$40
|1E81BE| STA.w $0DF0,X

|1E81C1| LDA.w $0DB0,X
|1E81C4| CMP.b #$03
|1E81C6| BCC .normal_speed

|1E81C8| ASL.w $0D50,X
|1E81CB| ASL.w $0D40,X
|1E81CE| LSR.w $0DF0,X

.normal_speed
|1E81D1| INC.w $0D80,X

.exit
|1E81D4| RTS

;===================================================================================================

HelmasaurKing_WalkToLocation:
|1E81D5| JSR HelmasaurKing_HandleMovement

|1E81D8| LDA.w $0DF0,X
|1E81DB| BNE .exit

|1E81DD| LDA.b #$20
|1E81DF| STA.w $0DF0,X

|1E81E2| INC.w $0D80,X

.exit
|1E81E5| RTS

;===================================================================================================

HelmasaurKing_HandleMovement:
|1E81E6| JSR HelmasaurKing_ShuffleLegs

|1E81E9| LDA.b $1A
|1E81EB| AND.b #$03
|1E81ED| BNE .no_extra_shuffle

|1E81EF| JSR HelmasaurKing_ShuffleLegs

.no_extra_shuffle
|1E81F2| LDA.w $0DB0,X
|1E81F5| CMP.b #$03
|1E81F7| BCC .no_double_extra_shuffle

|1E81F9| JSR HelmasaurKing_ShuffleLegs

.no_double_extra_shuffle
|1E81FC| JSR MoveSpriteXY_bank1E

|1E81FF| RTS

;===================================================================================================

HelmasaurKing_ShuffleLegs:
|1E8200| INC.w $0E80,X

|1E8203| LDA.w $0E80,X
|1E8206| AND.b #$0F
|1E8208| BNE .exit

|1E820A| LDA.b #$21 ; SFX2.21
|1E820C| STA.w $012E

.exit
|1E820F| RTS

;===================================================================================================

HelmasaurKing_DecisionAway:
|1E8210| LDA.w $0EF0,X
|1E8213| BNE .delay

|1E8215| LDA.w $0DF0,X
|1E8218| BNE .exit

.delay
|1E821A| JSR HelmasaurKing_MaybeAttack

|1E821D| LDA.b #$40
|1E821F| STA.w $0DF0,X

|1E8222| LDA.w $0E90,X
|1E8225| CMP.b #$03
|1E8227| BCC .dont_halve_timer

|1E8229| LSR.w $0DF0,X

.dont_halve_timer
|1E822C| LDA.w $0D50,X
|1E822F| EOR.b #$FF
|1E8231| INC A
|1E8232| STA.w $0D50,X

|1E8235| LDA.w $0D40,X
|1E8238| EOR.b #$FF
|1E823A| INC A
|1E823B| STA.w $0D40,X

|1E823E| INC.w $0D80,X

.exit
|1E8241| RTS

;===================================================================================================

HelmasaurKing_WalkBackHome:
|1E8242| JSR HelmasaurKing_HandleMovement

|1E8245| LDA.w $0DF0,X
|1E8248| BNE .exit

|1E824A| STZ.w $0D80,X

|1E824D| LDA.b #$40
|1E824F| STA.w $0DF0,X

.exit
|1E8252| RTS

;===================================================================================================

HelmasaurKing_MaybeAttack:
|1E8253| INC.w $0E30,X

|1E8256| LDA.w $0E30,X
|1E8259| CMP.b #$04
|1E825B| BNE .exit

|1E825D| PLA
|1E825E| PLA

|1E825F| STZ.w $0E30,X

|1E8262| JSL GetRandomNumber
|1E8266| AND.b #$01
|1E8268| BEQ .no_sfx

|1E826A| LDA.b #$7F
|1E826C| STA.w $0E10,X

|1E826F| LDA.b #$2A ; SFX3.2A
|1E8271| JSL QueueSpriteSFX3WithPan

|1E8275| RTS

.no_sfx
|1E8276| LDA.b #$A0
|1E8278| STA.w $0E00,X

.exit
|1E827B| RTS

;===================================================================================================

HelmasaurKingLeg_Offset_Y:
|1E827C| db $00, $01, $02, $03, $04, $05, $06, $07
|1E8284| db $08, $08, $08, $08, $08, $08, $08, $08
|1E828C| db $08, $08, $08, $08, $08, $08, $08, $08
|1E8294| db $08, $07, $06, $05, $04, $03, $02, $01

HelmasaurKingLeg_OffsetYBaseIndex:
|1E829C| db $00, $08, $10, $18

;===================================================================================================
; TODO analyze and better sublabels
;===================================================================================================
HelmasaurKing_SwingTail:
|1E82A0| INC.w $0B0C

|1E82A3| JSL HelmasaurKing_Reinitialize

|1E82A7| LDA.b #$01
|1E82A9| LDY.w $0EC0,X
|1E82AC| BEQ .allow_failure

|1E82AE| LDA.b #$00

.allow_failure
|1E82B0| AND.b $1A
|1E82B2| BNE .bad_frame_parity

|1E82B4| LDA.w $0DE0,X
|1E82B7| AND.b #$01
|1E82B9| TAY

|1E82BA| LDA.w $0B30
|1E82BD| CLC
|1E82BE| ADC.w HelmasaurKing_TailSwingRotationDirection,Y
|1E82C1| STA.w $0B30

|1E82C4| CMP.w Sixteen_X,Y
|1E82C7| BNE .x_max

|1E82C9| INC.w $0DE0,X

.x_max
|1E82CC| LDY.b #$00

|1E82CE| LDA.w $0B30
|1E82D1| BPL .x_pos

|1E82D3| DEY

.x_pos
|1E82D4| CLC
|1E82D5| ADC.w $0B2D
|1E82D8| STA.w $0B2D

|1E82DB| TYA
|1E82DC| ADC.w $0B2E
|1E82DF| AND.b #$FF
|1E82E1| STA.w $0B2E

.bad_frame_parity
|1E82E4| LDA.w $0EC0,X
|1E82E7| BEQ .exit_a

|1E82E9| LDA.w $0B30
|1E82EC| BNE .skip_sfx

|1E82EE| LDA.b #$06 ; SFX3.06
|1E82F0| JSL QueueSpriteSFX3WithPan

;---------------------------------------------------------------------------------------------------

.skip_sfx
|1E82F4| LDA.w $0EC0,X
|1E82F7| CMP.b #$02
|1E82F9| BEQ .do_segment_a

|1E82FB| CMP.b #$03
|1E82FD| BEQ .do_segment_b

|1E82FF| LDA.w $0B30
|1E8302| ORA.w $0EE0,X
|1E8305| BNE .exit_b

|1E8307| LDA.w $0B2E
|1E830A| AND.b #$01
|1E830C| STA.w $0EB0,X

|1E830F| JSR GetXDisplacementFromLink_bank1E

|1E8312| TYA
|1E8313| EOR.b #$01
|1E8315| CMP.w $0EB0,X
|1E8318| BNE .exit_a

|1E831A| INC.w $0EC0,X

|1E831D| JSL CalculateSpriteSFXPan
|1E8321| ORA.b #$26 ; SFX3.26
|1E8323| STA.w $012F

.exit_a
|1E8326| RTS

;===================================================================================================

.offset_low
|1E8327| db    4,   -4

.offset_high
|1E8329| db    0,   -1

.limit
|1E832B| db  124, -124

;---------------------------------------------------------------------------------------------------

.do_segment_a
|1E832D| LDY.w $0EB0,X

|1E8330| LDA.w $0B31
|1E8333| CLC
|1E8334| ADC.w .offset_low,Y
|1E8337| STA.w $0B31

|1E833A| PHA

|1E833B| LDA.w $0B32
|1E833E| ADC.w .offset_high,Y
|1E8341| STA.w $0B32

|1E8344| PLA
|1E8345| CMP.w .limit,Y
|1E8348| BNE .a_fine

|1E834A| INC.w $0EC0,X

.a_fine
|1E834D| LDA.w $0B2F
|1E8350| CLC
|1E8351| ADC.b #$03
|1E8353| STA.w $0B2F

|1E8356| RTS

;---------------------------------------------------------------------------------------------------

.do_segment_b
|1E8357| LDA.w $0EB0,X
|1E835A| EOR.b #$01
|1E835C| TAY

|1E835D| LDA.w $0B31
|1E8360| CLC
|1E8361| ADC.w .offset_low,Y
|1E8364| STA.w $0B31

|1E8367| PHA

|1E8368| LDA.w $0B32
|1E836B| ADC.w .offset_high,Y
|1E836E| STA.w $0B32

|1E8371| PLA
|1E8372| CMP.b #$00
|1E8374| BNE .b_fine

|1E8376| STZ.w $0EC0,X

.b_fine
|1E8379| LDA.w $0B2F
|1E837C| SEC
|1E837D| SBC.b #$03
|1E837F| STA.w $0B2F

.exit_b
|1E8382| RTS

;===================================================================================================

HelmasaurKing_TailSwingRotationDirection:
|1E8383| db  1, -1

;===================================================================================================

HelmasaurKing_CheckMaskDamageFromHammer:
|1E8385| LDA.w $0DB0,X
|1E8388| CMP.b #$03
|1E838A| BCS .exit

|1E838C| LDA.w $0301
|1E838F| AND.b #$0A
|1E8391| BEQ .exit

|1E8393| LDA.b $44
|1E8395| CMP.b #$80
|1E8397| BEQ .exit

|1E8399| JSL SetupActionHitbox_long

|1E839D| LDA.w $0D00,X
|1E83A0| PHA

|1E83A1| CLC
|1E83A2| ADC.b #$08
|1E83A4| STA.w $0D00,X

|1E83A7| JSL SetupSpriteHitbox_long

|1E83AB| PLA
|1E83AC| STA.w $0D00,X

|1E83AF| JSL CheckIfHitboxesOverlap_long
|1E83B3| BCC .exit

|1E83B5| DEC.w $0E50,X

|1E83B8| LDA.b #$21 ; SFX3.21
|1E83BA| STA.w $012F

|1E83BD| LDA.b #$30
|1E83BF| JSL ProjectSpriteSpeedTowardsLink_long

|1E83C3| LDA.b $00
|1E83C5| STA.b $27

|1E83C7| LDA.b $01
|1E83C9| STA.b $28

|1E83CB| LDA.b #$08
|1E83CD| STA.w $0046

|1E83D0| LDA.w $0FAC
|1E83D3| BNE .no_spark

; [BUG] cute bug here
; Not sure what exactly they were planning to do,
; but this uses the projected speed values to place a weapon tink spark.
; This is why there's sometimes a spark at the bottom of the screen.
|1E83D5| LDA.b $00
|1E83D7| STA.w $0FAD

|1E83DA| LDA.b $01
|1E83DC| STA.w $0FAE

|1E83DF| LDA.b #$05
|1E83E1| STA.w $0FAC

.no_spark
|1E83E4| LDA.b #$05 ; SFX2.05
|1E83E6| JSL QueueSpriteSFX2WithPan

.exit
|1E83EA| RTS

;===================================================================================================

HelmasaurKing_AttemptDamage:
|1E83EB| LDA.b $1A
|1E83ED| AND.b #$07
|1E83EF| BNE .no_damage

|1E83F1| REP #$20

|1E83F3| LDA.b $22
|1E83F5| SEC
|1E83F6| SBC.w $0FD8
|1E83F9| CLC
|1E83FA| ADC.w #$0024

|1E83FD| CMP.w #$0048
|1E8400| BCS .no_damage

|1E8402| LDA.b $20
|1E8404| SEC
|1E8405| SBC.w $0FDA
|1E8408| CLC
|1E8409| ADC.w #$0028

|1E840C| CMP.w #$0040
|1E840F| BCS .no_damage

|1E8411| SEP #$20

|1E8413| JSL AttemptDamageToLinkPlusRecoil_long

.no_damage
|1E8417| SEP #$20

|1E8419| RTS

;===================================================================================================

pool HelmasaurKing_SpawnMaskDebris

.offset_y_low
|1E841A| db  24,  27,  24,  24,  27,  24,  27,  27,  24,  24

.offset_y_high
|1E8424| db   0,   0,   0,   0,   0,   0,   0,   0,   0,   0

.offset_x_low
|1E842E| db -16,   0,  16, -16,   0,  16,  -8,   8, -16,  16

.offset_x_high
|1E8438| db  -1,   0,   0,  -1,   0,   0,  -1,   0,  -1,   0

.initial_z
|1E8442| db  29,  32,  29,  13,  16,  13,   0,   0,  13,  13

.speed_x
|1E844C| db -16,  -4,  14, -12,   4,  18,  -2,   2, -12,  18

.speed_y
|1E8456| db  -8,  -4,  -6,   4,   2,   7,   6,   8,   4,   7

.speed_z
|1E8460| db  32,  40,  36,  37,  39,  34,  30,  33,  37,  34

.flip
|1E846A| db $00, $00, $40, $00, $00, $40, $00, $40, $00, $40

.starting_anim
|1E8474| db $00, $01, $00, $02, $03, $02, $04, $04, $05, $05

endpool

;===================================================================================================

HelmasaurKing_ChipAwayAtMask:
|1E847E| LDA.w $0DB0,X
|1E8481| CLC
|1E8482| ADC.b #$07
|1E8484| STA.w $0FB5

|1E8487| JSR HelmasaurKing_SpawnMaskDebris

|1E848A| BRA .make_sfx

;===================================================================================================

#HelmasaurKing_ExplodeMask:
|1E848C| LDY.b #$0F
|1E848E| LDA.b #$00

; Deletes all sprites except king helma
.next_sprite
|1E8490| STA.w $0DD0,Y

|1E8493| DEY
|1E8494| BNE .next_sprite

; Spawn 8 debris sprites
|1E8496| LDA.b #$07
|1E8498| STA.w $0FB5

.next_debris
|1E849B| JSR HelmasaurKing_SpawnMaskDebris

|1E849E| DEC.w $0FB5
|1E84A1| BPL .next_debris

.make_sfx
|1E84A3| LDA.b #$1F ; SFX2.1F
|1E84A5| JSL QueueSpriteSFX2WithPan

|1E84A9| RTS

;===================================================================================================

HelmasaurKing_SpawnMaskDebris:
|1E84AA| LDA.b #$92 ; SPRITE 92
|1E84AC| JSL SpawnSpriteDynamically
|1E84B0| BMI .no_space

|1E84B2| PHX

|1E84B3| LDX.w $0FB5

|1E84B6| LDA.b $00
|1E84B8| CLC
|1E84B9| ADC.w .offset_x_low,X
|1E84BC| STA.w $0D10,Y

|1E84BF| LDA.b $01
|1E84C1| ADC.w .offset_x_high,X
|1E84C4| STA.w $0D30,Y

|1E84C7| LDA.b $02
|1E84C9| CLC
|1E84CA| ADC.w .offset_y_low,X
|1E84CD| STA.w $0D00,Y

|1E84D0| LDA.b $03
|1E84D2| ADC.w .offset_y_high,X
|1E84D5| STA.w $0D20,Y

|1E84D8| LDA.w .initial_z,X
|1E84DB| STA.w $0F70,Y

|1E84DE| LDA.w .speed_x,X
|1E84E1| STA.w $0D50,Y

|1E84E4| LDA.w .speed_y,X
|1E84E7| STA.w $0D40,Y

|1E84EA| LDA.w .speed_z,X
|1E84ED| STA.w $0F80,Y

|1E84F0| LDA.w .flip,X
|1E84F3| ORA.b #$0D
|1E84F5| STA.w $0F50,Y

|1E84F8| LDA.w .starting_anim,X
|1E84FB| STA.w $0DC0,Y

|1E84FE| LDA.b #$80
|1E8500| STA.w $0DB0,Y

|1E8503| ASL A
|1E8504| STA.w $0E40,Y

|1E8507| LDA.b #$0C
|1E8509| STA.w $0E00,Y
|1E850C| STA.w $0BA0,Y

|1E850F| LDA.w $0FB5
|1E8512| STA.w $0E30,Y

|1E8515| PLX

.no_space
|1E8516| RTS

;===================================================================================================

HelmasaurKing_SpitFireball:
|1E8517| LDA.b #$70 ; SPRITE 70
|1E8519| JSL SpawnSpriteDynamically
|1E851D| BMI .no_space

|1E851F| JSL SetSpawnedSpriteCoordinates

|1E8523| LDA.b $02
|1E8525| CLC
|1E8526| ADC.b #$1C
|1E8528| STA.w $0D00,Y

|1E852B| LDA.b $03
|1E852D| ADC.b #$00
|1E852F| STA.w $0D20,Y

|1E8532| LDA.b #$20
|1E8534| STA.w $0DF0,Y
|1E8537| STA.w $0BA0,Y

.no_space
|1E853A| RTS

;===================================================================================================

SpriteDraw_KingHelmasaur:
|1E853B| REP #$20

; [HARDCODED] oam slots
|1E853D| LDA.w #$089C
|1E8540| STA.b $90

|1E8542| LDA.w #$0A47
|1E8545| STA.b $92

|1E8547| SEP #$20

|1E8549| JSR GetScreenCoordinates_bank1E

|1E854C| JSR KingHelmasaur_OperateTail
|1E854F| JSR SpriteDraw_KingHelmasaur_Eyes
|1E8552| JSR KingHelmasaurMask
|1E8555| JSR SpriteDraw_KingHelmasaur_Body
|1E8558| JSR SpriteDraw_KingHelmasaur_Legs
|1E855B| JSR SpriteDraw_KingHelmasaur_Mouth

|1E855E| RTS

;===================================================================================================

pool SpriteDraw_KingHelmasaur_Eyes

.offset_x
|1E855F| db  -3,  11

; character for eye flasing
.char
|1E8561| db $CE, $CF, $DE, $DE, $DE, $DE, $CF, $CE

.prop
|1E8569| db $3B, $7B

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_KingHelmasaur_Eyes:
|1E856B| REP #$20

|1E856D| LDA.b $90
|1E856F| CLC
|1E8570| ADC.w #$0040
|1E8573| STA.b $90

|1E8575| LDA.b $92
|1E8577| CLC
|1E8578| ADC.w #$0010
|1E857B| STA.b $92

|1E857D| SEP #$20

|1E857F| PHX

|1E8580| LDY.b #$00
|1E8582| LDX.b #$01

.next_eye
|1E8584| PHX

|1E8585| LDA.b $00
|1E8587| CLC
|1E8588| ADC.w .offset_x,X
|1E858B| STA.b ($90),Y

|1E858D| LDA.b $02
|1E858F| CLC
|1E8590| ADC.b #$14
|1E8592| INY
|1E8593| STA.b ($90),Y

|1E8595| LDA.w $0B0C
|1E8598| LSR A
|1E8599| LSR A
|1E859A| AND.b #$07
|1E859C| TAX

|1E859D| LDA.w .char,X
|1E85A0| INY
|1E85A1| STA.b ($90),Y

|1E85A3| PLX

|1E85A4| LDA.w .prop,X
|1E85A7| INY
|1E85A8| STA.b ($90),Y

|1E85AA| PHY

|1E85AB| TYA
|1E85AC| LSR A
|1E85AD| LSR A
|1E85AE| TAY

|1E85AF| LDA.b #$00
|1E85B1| STA.b ($92),Y

|1E85B3| PLY
|1E85B4| INY

|1E85B5| DEX
|1E85B6| BPL .next_eye

;---------------------------------------------------------------------------------------------------

|1E85B8| PLX

|1E85B9| LDA.b $11
|1E85BB| BEQ .exit

|1E85BD| LDY.b #$00
|1E85BF| LDA.b #$01
|1E85C1| JSL CorrectOAMEntries_long

.exit
|1E85C5| RTS

;===================================================================================================

pool KingHelmasaurMask

.oam_groups
; group00
|1E85C6| dw -16,  -5 : db $AE, $0D, $00, $02
|1E85CE| dw   0,  -5 : db $C0, $0D, $00, $02
|1E85D6| dw  16,  -5 : db $AE, $4D, $00, $02
|1E85DE| dw -16,  11 : db $C2, $0D, $00, $02
|1E85E6| dw   0,  11 : db $C4, $0D, $00, $02
|1E85EE| dw  16,  11 : db $C2, $4D, $00, $02
|1E85F6| dw  -8,  27 : db $C6, $0D, $00, $02
|1E85FE| dw   8,  27 : db $C6, $4D, $00, $02

; group01
|1E8606| dw -16,  -5 : db $AE, $0D, $00, $02
|1E860E| dw   0,  -5 : db $C0, $0D, $00, $02
|1E8616| dw  16,  -5 : db $AE, $4D, $00, $02
|1E861E| dw -16,  11 : db $C8, $0D, $00, $02
|1E8626| dw   0,  11 : db $C4, $0D, $00, $02
|1E862E| dw  16,  11 : db $C2, $4D, $00, $02
|1E8636| dw  -8,  27 : db $C6, $0D, $00, $02
|1E863E| dw   8,  27 : db $C6, $4D, $00, $02

; group02
|1E8646| dw -16,  -5 : db $AE, $0D, $00, $02
|1E864E| dw   0,  -5 : db $C0, $0D, $00, $02
|1E8656| dw  16,  -5 : db $AE, $4D, $00, $02
|1E865E| dw -16,  11 : db $C8, $0D, $00, $02
|1E8666| dw   0,  11 : db $C4, $0D, $00, $02
|1E866E| dw  16,  11 : db $C8, $4D, $00, $02
|1E8676| dw  -8,  27 : db $C6, $0D, $00, $02
|1E867E| dw   8,  27 : db $C6, $4D, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

KingHelmasaurMask:
|1E8686| LDA.b #$00
|1E8688| XBA
|1E8689| LDA.w $0DB0,X

|1E868C| REP #$20

|1E868E| ASL A ; x64
|1E868F| ASL A
|1E8690| ASL A
|1E8691| ASL A
|1E8692| ASL A
|1E8693| ASL A

|1E8694| ADC.w #.oam_groups
|1E8697| STA.b $08

|1E8699| LDA.b $90
|1E869B| CLC
|1E869C| ADC.w #$0008
|1E869F| STA.b $90

|1E86A1| INC.b $92
|1E86A3| INC.b $92

|1E86A5| SEP #$20

|1E86A7| LDA.w $0DB0,X
|1E86AA| CMP.b #$03
|1E86AC| BCS .exit

|1E86AE| LDA.b #$08
|1E86B0| JSR TabulatedSpriteDraw_bank1E

|1E86B3| REP #$20

|1E86B5| LDA.b $90
|1E86B7| CLC
|1E86B8| ADC.w #$0020
|1E86BB| STA.b $90

|1E86BD| LDA.b $92
|1E86BF| CLC
|1E86C0| ADC.w #$0008
|1E86C3| STA.b $92

|1E86C5| SEP #$20

|1E86C7| LDA.w $0F10,X
|1E86CA| BEQ .search_for_bomb

.exit
|1E86CC| RTS

;---------------------------------------------------------------------------------------------------

.search_for_bomb
|1E86CD| LDY.b #$01

.next_slot
|1E86CF| LDA.w $0C4A,Y
|1E86D2| CMP.b #$07 ; ANCILLA 07
|1E86D4| BNE .to_next

|1E86D6| LDA.w $0C2C,Y
|1E86D9| ORA.w $0C22,Y
|1E86DC| BEQ .to_next

|1E86DE| JSR KingHelmasaur_CheckBombDamage

.to_next
|1E86E1| DEY
|1E86E2| BPL .next_slot

|1E86E4| RTS

;===================================================================================================

KingHelmasaur_CheckBombDamage:
|1E86E5| JSL SetupSpriteHitbox_long

|1E86E9| LDA.w $0C04,Y
|1E86EC| CLC
|1E86ED| ADC.b #$06
|1E86EF| STA.b $00

|1E86F1| LDA.w $0C18,Y
|1E86F4| ADC.b #$00
|1E86F6| STA.b $08

|1E86F8| LDA.w $0BFA,Y
|1E86FB| SEC
|1E86FC| SBC.w $029E,Y
|1E86FF| STA.b $01

|1E8701| LDA.w $0C0E,Y
|1E8704| SBC.b #$00
|1E8706| STA.b $09

|1E8708| LDA.b #$02
|1E870A| STA.b $02

|1E870C| LDA.b #$0F
|1E870E| STA.b $03

|1E8710| JSL CheckIfHitboxesOverlap_long
|1E8714| BCC .not_hit

|1E8716| LDA.w $0C2C,Y
|1E8719| EOR.b #$FF
|1E871B| INC A
|1E871C| STA.w $0C2C,Y

|1E871F| LDA.w $0C22,Y
|1E8722| EOR.b #$FF
|1E8724| INC A
|1E8725| STA.b $00

|1E8727| ASL.b $00
|1E8729| ROR A
|1E872A| STA.w $0C22,Y

|1E872D| LDA.b #$20
|1E872F| STA.w $0F10,X

|1E8732| LDA.b #$05
|1E8734| STA.w $0FAC

|1E8737| LDA.w $0C04,Y
|1E873A| STA.w $0FAD

|1E873D| LDA.w $0BFA,Y
|1E8740| SEC
|1E8741| SBC.w $029E,Y
|1E8744| STA.w $0FAE

|1E8747| LDA.b #$05 ; SFX2.05
|1E8749| STA.w $012E

.not_hit
|1E874C| RTS

;===================================================================================================

pool SpriteDraw_KingHelmasaur_Body

.oam_groups
|1E874D| dw -24, -32 : db $80, $0B, $00, $02
|1E8755| dw  -8, -32 : db $82, $0B, $00, $02
|1E875D| dw   8, -32 : db $82, $4B, $00, $02
|1E8765| dw  24, -32 : db $80, $4B, $00, $02
|1E876D| dw -24, -16 : db $84, $0B, $00, $02
|1E8775| dw  -8, -16 : db $86, $0B, $00, $02
|1E877D| dw   8, -16 : db $86, $4B, $00, $02
|1E8785| dw  24, -16 : db $84, $4B, $00, $02
|1E878D| dw -24,   0 : db $88, $0B, $00, $02
|1E8795| dw  -8,   0 : db $8A, $0B, $00, $02
|1E879D| dw   8,   0 : db $8A, $4B, $00, $02
|1E87A5| dw  24,   0 : db $88, $4B, $00, $02
|1E87AD| dw -24,  16 : db $8C, $0B, $00, $02
|1E87B5| dw  -8,  16 : db $8E, $0B, $00, $02
|1E87BD| dw   8,  16 : db $8E, $4B, $00, $02
|1E87C5| dw  24,  16 : db $8C, $4B, $00, $02
|1E87CD| dw  -8,  32 : db $A0, $0B, $00, $02
|1E87D5| dw   8,  32 : db $A0, $4B, $00, $02
|1E87DD| dw   0, -40 : db $AC, $0B, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_KingHelmasaur_Body:
|1E87E5| REP #$20

|1E87E7| LDA.w #.oam_groups
|1E87EA| STA.b $08

|1E87EC| SEP #$20

|1E87EE| LDA.b #$13

;===================================================================================================

TabulatedSpriteDraw_bank1E:
|1E87F0| JSL TabulatedSpriteDraw

|1E87F4| RTS

;===================================================================================================

pool SpriteDraw_KingHelmasaur_Legs

.offset_x
|1E87F5| db -28, -28,  28,  28

.offset_y
|1E87F9| db -28,   4, -28,   4

.char
|1E87FD| db $A2, $A6, $A2, $A6

.prop
|1E8801| db $0B, $0B, $4B, $4B

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_KingHelmasaur_Legs:
|1E8805| REP #$20

|1E8807| LDA.b $90
|1E8809| CLC
|1E880A| ADC.w #$004C
|1E880D| STA.b $90

|1E880F| LDA.b $92
|1E8811| CLC
|1E8812| ADC.w #$0013
|1E8815| STA.b $92

|1E8817| SEP #$20

|1E8819| PHX

|1E881A| LDY.b #$00
|1E881C| LDA.b #$03
|1E881E| STA.w $0FB5

; Each iteration does 2 objects
.next_leg
|1E8821| LDX.w $0FB5

|1E8824| LDA.b $00
|1E8826| CLC
|1E8827| ADC.w .offset_x,X
|1E882A| STA.b ($90),Y

|1E882C| LDA.b $02
|1E882E| CLC
|1E882F| ADC.w .offset_y,X
|1E8832| CLC
|1E8833| ADC.w $0B08,X
|1E8836| INY
|1E8837| STA.b ($90),Y

|1E8839| LDA.w .char,X
|1E883C| INY
|1E883D| STA.b ($90),Y

|1E883F| LDA.w .prop,X
|1E8842| EOR.b $05
|1E8844| INY
|1E8845| STA.b ($90),Y

|1E8847| PHY

|1E8848| TYA
|1E8849| LSR A
|1E884A| LSR A
|1E884B| TAY

|1E884C| LDA.b #$02
|1E884E| STA.b ($92),Y

|1E8850| PLY
|1E8851| INY

|1E8852| LDA.b $00
|1E8854| CLC
|1E8855| ADC.w .offset_x,X
|1E8858| STA.b ($90),Y

|1E885A| LDA.b $02
|1E885C| CLC
|1E885D| ADC.w .offset_y,X
|1E8860| CLC
|1E8861| ADC.b #$10
|1E8863| CLC
|1E8864| ADC.w $0B08,X
|1E8867| INY
|1E8868| STA.b ($90),Y

|1E886A| LDA.w .char,X
|1E886D| CLC
|1E886E| ADC.b #$02
|1E8870| INY
|1E8871| STA.b ($90),Y

|1E8873| LDA.w .prop,X
|1E8876| EOR.b $05
|1E8878| INY
|1E8879| STA.b ($90),Y

|1E887B| PHY

|1E887C| TYA
|1E887D| LSR A
|1E887E| LSR A
|1E887F| TAY

|1E8880| LDA.b #$02
|1E8882| STA.b ($92),Y

|1E8884| PLY
|1E8885| INY

|1E8886| DEC.w $0FB5
|1E8889| BPL .next_leg

|1E888B| PLX

|1E888C| LDA.b $11
|1E888E| BEQ .exit

|1E8890| LDY.b #$02
|1E8892| LDA.b #$07
|1E8894| JSL CorrectOAMEntries_long

|1E8898| JSR GetScreenCoordinates_bank1E

.exit
|1E889B| RTS

;===================================================================================================

pool SpriteDraw_KingHelmasaur_Mouth

.offset_y
|1E889C| db  1,  2,  3,  4,  5,  6,  7,  8
|1E88A4| db  9, 10, 10, 10, 10, 10, 10, 10
|1E88AC| db 10, 10, 10, 10, 10, 10, 10,  9
|1E88B4| db  8,  7,  6,  5,  4,  3,  2,  1

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_KingHelmasaur_Mouth:
|1E88BC| LDA.w $0E10,X
|1E88BF| BEQ .exit

|1E88C1| LSR A
|1E88C2| LSR A
|1E88C3| TAY

|1E88C4| LDA.w .offset_y,Y
|1E88C7| STA.b $06

|1E88C9| LDA.b #$04
|1E88CB| JSL AllocateOAMInRegionB

|1E88CF| LDY.b #$00
|1E88D1| LDA.b $00
|1E88D3| STA.b ($90),Y

|1E88D5| LDA.b $02
|1E88D7| CLC
|1E88D8| ADC.b #$13

|1E88DA| ADC.b $06
|1E88DC| INY
|1E88DD| STA.b ($90),Y

|1E88DF| LDA.b #$AA
|1E88E1| INY
|1E88E2| STA.b ($90),Y

|1E88E4| LDA.b $05
|1E88E6| EOR.b #$0B
|1E88E8| INY
|1E88E9| STA.b ($90),Y

|1E88EB| LDA.b #$02
|1E88ED| STA.b ($92)

.exit
|1E88EF| RTS

;===================================================================================================
; TODO analyze
;===================================================================================================
pool KingHelmasaur_OperateTail

.multiplier_a
|1E88F0| db $FF, $F0, $E0, $D0, $C0, $B0, $A0, $90
|1E88F8| db $80, $70, $60, $50, $40, $30, $20, $10

.multiplier_b
|1E8900| db $FF, $F8, $F0, $E8, $E0, $D8, $D0, $C8
|1E8908| db $BC, $B0, $A0, $90, $70, $40, $20, $10

.multiplier_c
|1E8910| db $FF, $F0, $E0, $D0, $C0, $B0, $A0, $90
|1E8918| db $80, $70, $60, $50, $40, $30, $20, $10

endpool

;---------------------------------------------------------------------------------------------------

KingHelmasaur_OperateTail:
|1E8920| STZ.w $0FB5

.next_segment
|1E8923| LDY.w $0FB5
|1E8926| PHY

|1E8927| LDA.w $0EC0,X
|1E892A| BEQ .use_set_a

|1E892C| TYA
|1E892D| CLC
|1E892E| ADC.b #$10
|1E8930| TAY

.use_set_a
|1E8931| REP #$20

|1E8933| LDA.w $0B2D
|1E8936| CLC
|1E8937| ADC.w $0B31
|1E893A| STA.b $0D

|1E893C| SEP #$20

|1E893E| LDA.b $0E
|1E8940| CMP.b #$01

|1E8942| PHP
|1E8943| PHP

|1E8944| LDA.b $0D
|1E8946| PLP
|1E8947| BPL .pos_a

|1E8949| EOR.b #$FF
|1E894B| INC A

.pos_a
|1E894C| STA.w WRMPYA

|1E894F| LDA.w .multiplier_a,Y
|1E8952| STA.w WRMPYB

|1E8955| JSR NOP8

|1E8958| LDA.w RDMPYH

|1E895B| PLP
|1E895C| BPL .pos_b

|1E895E| EOR.b #$FF

.pos_b
|1E8960| STA.b $06

|1E8962| LDA.b $0E
|1E8964| STA.b $07

|1E8966| PLY

|1E8967| LDA.w $0B2F
|1E896A| STA.w WRMPYA

|1E896D| LDA.w .multiplier_c,Y
|1E8970| STA.w WRMPYB

|1E8973| JSR NOP8

|1E8976| LDA.w RDMPYH
|1E8979| STA.b $0F

|1E897B| PHX
|1E897C| REP #$30

|1E897E| LDA.b $06
|1E8980| AND.w #$00FF
|1E8983| ASL A
|1E8984| TAX

|1E8985| LDA.l TrigTable,X
|1E8989| STA.b $0A

|1E898B| LDA.b $06
|1E898D| CLC
|1E898E| ADC.w #$0080
|1E8991| STA.b $08

|1E8993| AND.w #$00FF
|1E8996| ASL A
|1E8997| TAX

|1E8998| LDA.l TrigTable,X
|1E899C| STA.b $0C

|1E899E| SEP #$30

|1E89A0| PLX

|1E89A1| LDA.b $0A
|1E89A3| STA.w WRMPYA

|1E89A6| LDA.b $0F
|1E89A8| LDY.b $0B
|1E89AA| BNE .nonzero_a

|1E89AC| STA.w WRMPYB

|1E89AF| JSR NOP8

|1E89B2| ASL.w RDMPYL ; carry = round up
|1E89B5| LDA.w RDMPYH
|1E89B8| ADC.b #$00

.nonzero_a
|1E89BA| LSR.b $07
|1E89BC| BCC .keep_sign_a

|1E89BE| EOR.b #$FF
|1E89C0| INC A

.keep_sign_a
|1E89C1| LDY.w $0FB5

|1E89C4| STA.w $0B0D,Y

|1E89C7| LDA.b $0C
|1E89C9| STA.w WRMPYA

|1E89CC| LDA.b $0F

|1E89CE| LDY.b $0D
|1E89D0| BNE .nonzero_b

|1E89D2| STA.w WRMPYB

|1E89D5| JSR NOP8

|1E89D8| ASL.w RDMPYL ; carry = round up
|1E89DB| LDA.w RDMPYH
|1E89DE| ADC.b #$00

.nonzero_b
|1E89E0| LSR.b $09
|1E89E2| BCC .keep_sign_b

|1E89E4| EOR.b #$FF
|1E89E6| INC A

.keep_sign_b
|1E89E7| LDY.w $0FB5

|1E89EA| SEC
|1E89EB| SBC.b #$28
|1E89ED| STA.w $0B1D,Y

|1E89F0| INC.w $0FB5

|1E89F3| LDA.w $0FB5
|1E89F6| CMP.b #$10
|1E89F8| BEQ SpriteDraw_HelmasaurKingTailSegment

|1E89FA| JMP.w .next_segment

;===================================================================================================

SpriteDraw_HelmasaurKingTailSegment:
|1E89FD| LDA.w $0EC0,X
|1E8A00| STA.b $0A

|1E8A02| STZ.b $0F

|1E8A04| PHX

|1E8A05| LDX.w $0B33
|1E8A08| CPX.b #$10
|1E8A0A| BEQ .skip

|1E8A0C| LDY.b #$00

.next_segment
|1E8A0E| LDA.b $00
|1E8A10| CLC
|1E8A11| ADC.w $0B0D,X
|1E8A14| STA.b ($90),Y
|1E8A16| STA.b $08

|1E8A18| LDA.b $02
|1E8A1A| CLC
|1E8A1B| ADC.w $0B1D,X

|1E8A1E| INY

|1E8A1F| STA.b ($90),Y
|1E8A21| STA.b $09

|1E8A23| LDA.b #$AC

|1E8A25| CPY.b #$01
|1E8A27| BNE .not_the_tip

|1E8A29| LDA.b #$E4

.not_the_tip
|1E8A2B| INY

|1E8A2C| STA.b ($90),Y

|1E8A2E| LDA.b $05
|1E8A30| EOR.b #$1B
|1E8A32| INY
|1E8A33| STA.b ($90),Y

|1E8A35| INY

; check for player contact
|1E8A36| TXA
|1E8A37| EOR.b $1A
|1E8A39| AND.b #$00 ; useless; disables frame rule

|1E8A3B| ORA.w $031F
|1E8A3E| BNE .no_player_contact

|1E8A40| LDA.b $0A
|1E8A42| BEQ .no_player_contact

|1E8A44| LDA.b $22
|1E8A46| SBC.b $E2
|1E8A48| SBC.b $08

|1E8A4A| ADC.b #$0C
|1E8A4C| CMP.b #$18
|1E8A4E| BCS .no_player_contact

|1E8A50| LDA.b $20
|1E8A52| SBC.b $E8
|1E8A54| ADC.b #$08

|1E8A56| SBC.b $09
|1E8A58| ADC.b #$08

|1E8A5A| CMP.b #$10
|1E8A5C| BCS .no_player_contact

; If any segment touches link, it sets this flag
|1E8A5E| INC.b $0F

; !WEIRD vestigial knockback code that gets overridden
; but causes extreme recoil when bonking over the tail as helma explodes
|1E8A60| STZ.b $28

|1E8A62| LDA.b #$38
|1E8A64| STA.b $27

.no_player_contact
|1E8A66| INX
|1E8A67| CPX.b #$10
|1E8A69| BNE .next_segment

.skip
|1E8A6B| PLX

; did any segment touch link?
|1E8A6C| LDA.b $0F
|1E8A6E| BEQ .no_damage

|1E8A70| LDA.w $0FFC
|1E8A73| BNE .no_damage

|1E8A75| JSL AttemptDamageToLinkPlusRecoil_long

.no_damage
|1E8A79| LDY.b #$02
|1E8A7B| LDA.b #$0F
|1E8A7D| JSL CorrectOAMEntries_long

|1E8A81| JSR GetScreenCoordinates_bank1E

|1E8A84| RTS

;===================================================================================================
; Used to delay for CPU register multiplication even though
; NOPs are 2 cycles each
; RTS is 6 cycles
; JSR is 6 cycles
; JSR to an RTS would work perfectly fine for the required delay
;===================================================================================================
NOP8:
|1E8A85| NOP ; one
|1E8A86| NOP ; two
|1E8A87| NOP ; three
|1E8A88| NOP ; four
|1E8A89| NOP ; five
|1E8A8A| NOP ; six
|1E8A8B| NOP ; seven
|1E8A8C| NOP ; eight

|1E8A8D| RTS

;===================================================================================================
; Why is this separate from the main magic bat code?
;===================================================================================================
MagicBatLightning:
|1E8A8E| PHB
|1E8A8F| PHK
|1E8A90| PLB

|1E8A91| JSR .main

|1E8A94| PLB

|1E8A95| RTL

;---------------------------------------------------------------------------------------------------

.main
; determine priority relative Link
|1E8A96| LDA.w $0E80,X
|1E8A99| AND.b #$10
|1E8A9B| BEQ .in_front

|1E8A9D| LDA.b #$04
|1E8A9F| JSL AllocateOAMInRegionB

.in_front
|1E8AA3| JSL SpriteDraw_SingleSmall_long
|1E8AA7| JSR CheckIfActive_bank1E

|1E8AAA| LDA.w $0D80,X
|1E8AAD| BNE .active

|1E8AAF| JSR MoveSpriteXY_bank1E

|1E8AB2| LDA.w $0DF0,X
|1E8AB5| BNE .wait

|1E8AB7| INC.w $0D80,X

.wait
|1E8ABA| RTS

;---------------------------------------------------------------------------------------------------

.offset_x
|1E8ABB| db 0, 4, 8, 12, 12, 4, 8, 0

.offset_y
|1E8AC3| db 0, 4, 8, 12, 12, 4, 8, 0

;---------------------------------------------------------------------------------------------------

.active
|1E8ACB| INC.w $0D80,X
|1E8ACE| BNE .stayalive

|1E8AD0| STZ.w $0DD0,X

.stayalive
|1E8AD3| INC.w $0E80,X

|1E8AD6| LDA.w $0E80,X
|1E8AD9| PHA

|1E8ADA| AND.b #$07
|1E8ADC| BNE .no_sfx

|1E8ADE| LDA.b #$30 ; SFX3.30
|1E8AE0| STA.w $012F

.no_sfx
|1E8AE3| PLA
|1E8AE4| LSR A
|1E8AE5| LSR A
|1E8AE6| PHA

|1E8AE7| AND.b #$07
|1E8AE9| TAY

|1E8AEA| LDA.b $22
|1E8AEC| CLC
|1E8AED| ADC.w .offset_x,Y
|1E8AF0| STA.w $0D10,X

|1E8AF3| LDA.b $23
|1E8AF5| ADC.b #$00
|1E8AF7| STA.w $0D30,X

|1E8AFA| PLA
|1E8AFB| LSR A
|1E8AFC| LSR A
|1E8AFD| AND.b #$07
|1E8AFF| TAY

|1E8B00| LDA.b $20
|1E8B02| CLC
|1E8B03| ADC.w .offset_y,Y
|1E8B06| STA.w $0D00,X

|1E8B09| LDA.b $21
|1E8B0B| ADC.b #$00
|1E8B0D| STA.w $0D20,X

|1E8B10| RTS

;===================================================================================================
; Sprite main routines in this bank instead of bank06
;===================================================================================================
SpriteModule_Active_bank1E:
|1E8B11| PHB
|1E8B12| PHK
|1E8B13| PLB

|1E8B14| JSR .main

|1E8B17| PLB

|1E8B18| RTL

;---------------------------------------------------------------------------------------------------

.main
|1E8B19| LDA.w $0E20,X
|1E8B1C| SEC
|1E8B1D| SBC.b #$79

|1E8B1F| REP #$30

|1E8B21| AND.w #$00FF
|1E8B24| ASL A
|1E8B25| TAY

|1E8B26| LDA.w .vectors,Y
|1E8B29| DEC A
|1E8B2A| PHA

|1E8B2B| SEP #$30

|1E8B2D| RTS

;===================================================================================================
; For what reaſon doth thee pry thineſelf betwixt a routine and its vectors?
;===================================================================================================
#CheckSpriteTileCollision_bank1E:
|1E8B2E| JSL CheckSpriteTileCollision_long

|1E8B32| RTS

;===================================================================================================

.vectors
|1E8B33| dw Sprite_79_Bee
|1E8B35| dw Sprite_7A_Agahnim
|1E8B37| dw Sprite_7B_AgahnimBalls
|1E8B39| dw Sprite_7C_GreenStalfos
|1E8B3B| dw Sprite_7D_BigSpike
|1E8B3D| dw Sprite_7E_Firebar_Clockwise
|1E8B3F| dw Sprite_7F_Firebar_Counterclockwise
|1E8B41| dw Sprite_80_Firesnake
|1E8B43| dw Sprite_81_Hover
|1E8B45| dw Sprite_82_AntifairyCircle
|1E8B47| dw Sprite_83_GreenEyegore
|1E8B49| dw Sprite_84_RedEyegore
|1E8B4B| dw Sprite_85_YellowStalfos
|1E8B4D| dw Sprite_86_Kodongo
|1E8B4F| dw Sprite_87_KodongoFire
|1E8B51| dw Sprite_88_Mothula
|1E8B53| dw Sprite_89_MothulaBeam
|1E8B55| dw Sprite_8A_SpikeBlock
|1E8B57| dw Sprite_8B_Gibdo
|1E8B59| dw Sprite_8C_Arrghus
|1E8B5B| dw Sprite_8D_Arrghi
|1E8B5D| dw Sprite_8E_Terrorpin
|1E8B5F| dw Sprite_8F_Blob
|1E8B61| dw Sprite_90_Wallmaster
|1E8B63| dw Sprite_91_StalfosKnight
|1E8B65| dw Sprite_92_HelmasaurKing
|1E8B67| dw Sprite_93_Bumper
|1E8B69| dw Sprite_94_Pirogusu
|1E8B6B| dw Sprite_95_LaserEyeLeft
|1E8B6D| dw Sprite_96_LaserEyeRight
|1E8B6F| dw Sprite_97_LaserEyeTop
|1E8B71| dw Sprite_98_LaserEyeBottom
|1E8B73| dw Sprite_99_Pengator
|1E8B75| dw Sprite_9A_Kyameron
|1E8B77| dw Sprite_9B_Wizzrobe
|1E8B79| dw Sprite_9C_Zoro
|1E8B7B| dw Sprite_9D_Babasu
|1E8B7D| dw Sprite_9E_HauntedGroveOstrich
|1E8B7F| dw Sprite_9F_HauntedGroveRabbit
|1E8B81| dw Sprite_A0_HauntedGroveBird
|1E8B83| dw Sprite_A1_Freezor
|1E8B85| dw Sprite_A2_Kholdstare
|1E8B87| dw Sprite_A3_KholdstareShell
|1E8B89| dw Sprite_A4_FallingIce
|1E8B8B| dw Sprite_A5_BlueZazak
|1E8B8D| dw Sprite_A6_RedZazak
|1E8B8F| dw Sprite_A7_Stalfos
|1E8B91| dw Sprite_A8_GreenZirro
|1E8B93| dw Sprite_A9_BlueZirro
|1E8B95| dw Sprite_AA_Pikit
|1E8B97| dw Sprite_AB_CrystalMaiden
|1E8B99| dw Sprite_AC_Apple
|1E8B9B| dw Sprite_AD_OldMan
|1E8B9D| dw Sprite_AE_Pipe_Down
|1E8B9F| dw Sprite_AF_Pipe_Up
|1E8BA1| dw Sprite_B0_Pipe_Right
|1E8BA3| dw Sprite_B1_Pipe_Left
|1E8BA5| dw Sprite_B2_PlayerBee
|1E8BA7| dw Sprite_B3_PedestalPlaque
|1E8BA9| dw Sprite_B4_PurpleChest
|1E8BAB| dw Sprite_B5_BombShop
|1E8BAD| dw Sprite_B6_Kiki
|1E8BAF| dw Sprite_B7_BlindMaiden
|1E8BB1| dw Sprite_B8_DialogueTester
|1E8BB3| dw Sprite_B9_BullyAndPinkBall
|1E8BB5| dw Sprite_BA_Whirlpool
|1E8BB7| dw Sprite_BB_Shopkeeper
|1E8BB9| dw Sprite_BC_Drunkard

;===================================================================================================

UNREACHABLE_1E8BBB:
|1E8BBB| db $00, $00, $00, $00

;===================================================================================================

Sprite_AA_Pikit:
|1E8BBF| JSR Pikit_PrepDraw
|1E8BC2| JSR CheckIfActive_bank1E
|1E8BC5| JSR HandleSpriteRecoil_bank1E
|1E8BC8| JSR CheckDamageToAndFromLink_bank1E

|1E8BCB| LDA.w $0D80,X
|1E8BCE| JSL JumpTableLocal
|1E8BD2| dw Pikit_PikNextMovement
|1E8BD4| dw Pikit_LandAndAttack
|1E8BD6| dw Pikit_Steal

;===================================================================================================
; Wow, a lot of things share this table.
; Varied uses, not sure what to call this...
;===================================================================================================
Sixteen_X:
|1E8BD8| db  16, -16

Sixteen_Y:
|1E8BDA| db   0,   0,  16, -16

;===================================================================================================

Pikit_PikNextMovement:
|1E8BDE| LDA.w $0DF0,X
|1E8BE1| BNE Pikit_Animate

|1E8BE3| INC.w $0D80,X
|1E8BE6| INC.w $0DB0,X

|1E8BE9| LDA.w $0DB0,X
|1E8BEC| CMP.b #$04
|1E8BEE| BNE .random_direction

.target_link
|1E8BF0| STZ.w $0DB0,X

|1E8BF3| JSR GetDirectionTowardsLink_bank1E

|1E8BF6| BRA .direction_continue

.random_direction
|1E8BF8| JSL GetRandomNumber
|1E8BFC| AND.b #$03
|1E8BFE| TAY

.direction_continue
|1E8BFF| LDA.w Sixteen_X,Y
|1E8C02| STA.w $0D50,X

|1E8C05| LDA.w Sixteen_Y,Y
|1E8C08| STA.w $0D40,X

|1E8C0B| JSL GetRandomNumber
|1E8C0F| AND.b #$07
|1E8C11| ADC.b #$13
|1E8C13| STA.w $0F80,X

;===================================================================================================

Pikit_Animate:
|1E8C16| INC.w $0E80,X

|1E8C19| LDA.w $0E80,X

|1E8C1C| LSR A
|1E8C1D| LSR A
|1E8C1E| LSR A

|1E8C1F| AND.b #$01
|1E8C21| STA.w $0DC0,X

|1E8C24| RTS

;===================================================================================================

Pikit_LandAndAttack:
|1E8C25| JSR MoveSpriteXYZ_bank1E
|1E8C28| JSR CheckSpriteTileCollision_bank1E

|1E8C2B| DEC.w $0F80,X
|1E8C2E| DEC.w $0F80,X

|1E8C31| LDA.w $0F70,X
|1E8C34| BPL .airborne

|1E8C36| STZ.w $0F70,X
|1E8C39| STZ.w $0F80,X

|1E8C3C| JSR GetDirectionTowardsLink_bank1E

|1E8C3F| LDA.b $0E
|1E8C41| CLC
|1E8C42| ADC.b #$30
|1E8C44| CMP.b #$60
|1E8C46| BCS .dont_tongue_link

|1E8C48| LDA.b $0F
|1E8C4A| CLC
|1E8C4B| ADC.b #$30
|1E8C4D| CMP.b #$60
|1E8C4F| BCS .dont_tongue_link

|1E8C51| INC.w $0D80,X

|1E8C54| LDA.b #$1F
|1E8C56| JSL ProjectSpriteSpeedTowardsLink_long
|1E8C5A| JSL ConvertVelocityToAngle

|1E8C5E| LSR A
|1E8C5F| STA.w $0DE0,X

|1E8C62| LDA.b #$5F
|1E8C64| STA.w $0DF0,X

|1E8C67| RTS

;---------------------------------------------------------------------------------------------------

.dont_tongue_link
|1E8C68| STZ.w $0D80,X

|1E8C6B| LDA.b #$10
|1E8C6D| STA.w $0DF0,X

.airborne
|1E8C70| BRA Pikit_Animate

;===================================================================================================

pool Pikit_Steal

.anim
|1E8C72| db $02, $02, $02, $02, $03, $03, $03, $03
|1E8C7A| db $03, $03, $03, $03, $03, $03, $03, $03
|1E8C82| db $03, $03, $03, $03, $02, $02, $02, $02

.pos
|1E8C8A| db   0,   0,   0,   0,   0,   0,   0,   0
|1E8C92| db   0,   0,   0,   0,   0,   0,   0,   0
|1E8C9A| db   0,   0,   0,   0,   0,   0,   0,   0

|1E8CA2| db   0,   0,   0,   0,   0,   0,   0,   0
|1E8CAA| db  12,  16,  24,  32,  32,  24,  16,  12
|1E8CB2| db   0,   0,   0,   0,   0,   0,   0,   0

|1E8CBA| db   0,   0,   0,   0,   0,   0,   0,   0
|1E8CC2| db -12, -16, -24, -32, -32, -24, -16, -12
|1E8CCA| db   0,   0,   0,   0,   0,   0,   0,   0

.index_offset_x
|1E8CD2| db $18, $18, $00, $30, $30, $30, $00, $18

.index_offset_y
|1E8CDA| db $00, $18, $18, $18, $00, $30, $30, $30

endpool

;---------------------------------------------------------------------------------------------------

Pikit_Steal:
|1E8CE2| LDA.w $0DF0,X
|1E8CE5| BNE .lickylicky

|1E8CE7| STZ.w $0D80,X

|1E8CEA| LDA.b #$10
|1E8CEC| STA.w $0DF0,X

|1E8CEF| STZ.w $0D90,X
|1E8CF2| STZ.w $0DA0,X
|1E8CF5| STZ.w $0ED0,X

|1E8CF8| RTS

;---------------------------------------------------------------------------------------------------

.lickylicky
|1E8CF9| LSR A
|1E8CFA| LSR A
|1E8CFB| PHA

|1E8CFC| TAY

|1E8CFD| LDA.w .anim,Y
|1E8D00| STA.w $0DC0,X

|1E8D03| TYA

|1E8D04| LDY.w $0DE0,X
|1E8D07| PHY

|1E8D08| CLC
|1E8D09| ADC.w .index_offset_x,Y
|1E8D0C| TAY

|1E8D0D| LDA.w .pos,Y
|1E8D10| STA.w $0D90,X

|1E8D13| STA.b $04
|1E8D15| STZ.b $05

|1E8D17| BPL .positive_x

|1E8D19| DEC.b $05

.positive_x
|1E8D1B| PLY

|1E8D1C| PLA
|1E8D1D| CLC
|1E8D1E| ADC.w .index_offset_y,Y

|1E8D21| TAY
|1E8D22| LDA.w .pos,Y

|1E8D25| STA.w $0DA0,X

|1E8D28| STA.b $06
|1E8D2A| STZ.b $07
|1E8D2C| STZ.b $07 ; useless; probably a typo

|1E8D2E| BPL .positive_y

|1E8D30| DEC.b $07

.positive_y
|1E8D32| LDA.w $0ED0,X
|1E8D35| BNE .exit

|1E8D37| REP #$20

|1E8D39| LDA.w $0FD8
|1E8D3C| CLC
|1E8D3D| ADC.b $04
|1E8D3F| SEC
|1E8D40| SBC.b $22
|1E8D42| CLC
|1E8D43| ADC.w #$000C

|1E8D46| CMP.w #$0018
|1E8D49| BCS .exit

|1E8D4B| LDA.w $0FDA
|1E8D4E| CLC
|1E8D4F| ADC.b $06
|1E8D51| SEC
|1E8D52| SBC.b $20
|1E8D54| CLC
|1E8D55| ADC.w #$000C

|1E8D58| CMP.w #$0020
|1E8D5B| BCS .exit

;---------------------------------------------------------------------------------------------------

|1E8D5D| SEP #$20

|1E8D5F| LDA.w $0DF0,X
|1E8D62| CMP.b #$2E
|1E8D64| BCS .exit

|1E8D66| JSL CalculateLinkSFXPan
|1E8D6A| ORA.b #$26 ; SFX2.26
|1E8D6C| STA.w $012E

|1E8D6F| JSL GetRandomNumber
|1E8D73| AND.b #$03
|1E8D75| INC A
|1E8D76| STA.w $0ED0,X
|1E8D79| STA.w $0E90,X

|1E8D7C| CMP.b #$01
|1E8D7E| BNE .dont_steal_bomb

|1E8D80| LDA.l $7EF343
|1E8D84| BEQ .dont_steal_anything

|1E8D86| DEC A
|1E8D87| STA.l $7EF343

|1E8D8B| RTS

.dont_steal_anything
|1E8D8C| SEP #$20

|1E8D8E| STZ.w $0ED0,X

|1E8D91| RTS

;---------------------------------------------------------------------------------------------------

.dont_steal_bomb
|1E8D92| CMP.b #$02
|1E8D94| BNE .dont_steal_arrow

|1E8D96| LDA.l $7EF377
|1E8D9A| BEQ .dont_steal_anything

|1E8D9C| DEC A
|1E8D9D| STA.l $7EF377

|1E8DA1| RTS

;---------------------------------------------------------------------------------------------------

.dont_steal_arrow
|1E8DA2| CMP.b #$03
|1E8DA4| BNE .dont_steal_rupee

|1E8DA6| REP #$20

|1E8DA8| LDA.l $7EF360
|1E8DAC| BEQ .dont_steal_anything

|1E8DAE| DEC A
|1E8DAF| STA.l $7EF360

.exit
|1E8DB3| SEP #$20

|1E8DB5| RTS

;---------------------------------------------------------------------------------------------------

.dont_steal_rupee
|1E8DB6| LDA.l $7EF35A
|1E8DBA| STA.w $0E30,X
|1E8DBD| BEQ .dont_steal_anything

|1E8DBF| CMP.b #$03
|1E8DC1| BEQ .dont_steal_anything

|1E8DC3| LDA.b #$00
|1E8DC5| STA.l $7EF35A

|1E8DC9| RTS

;===================================================================================================

Pikit_PrepDraw:
|1E8DCA| JSR GetScreenCoordinates_bank1E
|1E8DCD| JSL SpriteDraw_Pikit

|1E8DD1| RTS

;===================================================================================================

Sprite_A8_GreenZirro:
Sprite_A9_BlueZirro:
|1E8DD2| LDA.b #$30
|1E8DD4| STA.w $0B89,X

|1E8DD7| LDA.w $0D90,X
|1E8DDA| BEQ Zirro_Main

;===================================================================================================

Zirro_Bomb:
|1E8DDC| LDA.w $0D80,X
|1E8DDF| JSL JumpTableLocal
|1E8DE3| dw ZirroBomb_Falling
|1E8DE5| dw ZirroBomb_Exploding

;===================================================================================================

ZirroBomb_Falling:
|1E8DE7| JSL SpriteDraw_SingleSmall_long
|1E8DEB| JSR CheckIfActive_bank1E

|1E8DEE| JSR MoveSpriteXY_bank1E
|1E8DF1| JSR MoveSpriteZ_bank1E

|1E8DF4| DEC.w $0F80,X
|1E8DF7| DEC.w $0F80,X

|1E8DFA| LDA.w $0F70,X
|1E8DFD| BPL .exit

|1E8DFF| STZ.w $0F70,X

|1E8E02| INC.w $0D80,X

|1E8E05| LDA.b #$13
|1E8E07| STA.w $0DF0,X

|1E8E0A| INC.w $0E40,X

|1E8E0D| LDA.b #$0C ; SFX2.0C
|1E8E0F| JSL QueueSpriteSFX2WithPan

.exit
|1E8E13| RTS

;===================================================================================================

ZirroBomb_Exploding:
|1E8E14| JSL SpriteDraw_ZirroBomb
|1E8E18| JSR CheckIfActive_bank1E

|1E8E1B| LDA.b $1A
|1E8E1D| AND.b #$03
|1E8E1F| BNE .frame_rule

|1E8E21| INC.w $0DF0,X

.frame_rule
|1E8E24| JSL CheckDamageToLink_long

|1E8E28| RTS

;===================================================================================================

pool Zirro_Main

.speed_z
|1E8E29| db  1, -1

.max_z
|1E8E2B| db  8, -8

.anim_step
|1E8E2D| db $09, $0A, $08, $07

endpool

;---------------------------------------------------------------------------------------------------

Zirro_Main:
|1E8E31| LDA.w $0E00,X
|1E8E34| BEQ .not_focused

|1E8E36| LDY.w $0DE0,X

|1E8E39| LDA.w .anim_step,Y
|1E8E3C| STA.w $0DC0,X

.not_focused
|1E8E3F| LDA.w $0B89,X
|1E8E42| ORA.b #$30
|1E8E44| STA.w $0B89,X

|1E8E47| JSL SpriteDraw_Zirro
|1E8E4B| JSR CheckIfActive_bank1E
|1E8E4E| JSR HandleSpriteRecoil_bank1E

|1E8E51| LDA.w $0E00,X
|1E8E54| CMP.b #$08
|1E8E56| BNE .no_bombing

|1E8E58| JSR Zirro_DropBomb

.no_bombing
|1E8E5B| JSR CheckDamageToAndFromLink_bank1E

|1E8E5E| LDA.b $1A
|1E8E60| AND.b #$01
|1E8E62| BNE .dont_adjust_z_speed

|1E8E64| LDA.w $0ED0,X
|1E8E67| AND.b #$01
|1E8E69| TAY

|1E8E6A| LDA.w $0F80,X
|1E8E6D| CLC
|1E8E6E| ADC.w .speed_z,Y
|1E8E71| STA.w $0F80,X

|1E8E74| CMP.w .max_z,Y
|1E8E77| BNE .dont_adjust_z_speed

|1E8E79| INC.w $0ED0,X

.dont_adjust_z_speed
|1E8E7C| JSR MoveSpriteZ_bank1E
|1E8E7F| JSR GetDirectionTowardsLink_bank1E

|1E8E82| LDA.b $0E
|1E8E84| CLC
|1E8E85| ADC.b #$28
|1E8E87| CMP.b #$50
|1E8E89| BCS .dont_dodge

|1E8E8B| LDA.b $0F
|1E8E8D| CLC
|1E8E8E| ADC.b #$28
|1E8E90| CMP.b #$50
|1E8E92| BCS .dont_dodge

|1E8E94| LDA.b $44
|1E8E96| CMP.b #$80
|1E8E98| BEQ .dont_dodge

|1E8E9A| LDA.w $0372
|1E8E9D| BNE .dashing

|1E8E9F| LDA.b $3C
|1E8EA1| CMP.b #$09
|1E8EA3| BPL .dont_dodge

.dashing
|1E8EA5| LDA.b #$30
|1E8EA7| JSL ProjectSpriteSpeedTowardsLink_long

|1E8EAB| LDA.b $01
|1E8EAD| EOR.b #$FF
|1E8EAF| INC A
|1E8EB0| STA.w $0D50,X

|1E8EB3| LDA.b $00
|1E8EB5| EOR.b #$FF
|1E8EB7| INC A
|1E8EB8| STA.w $0D40,X

|1E8EBB| LDA.b #$08
|1E8EBD| STA.w $0DF0,X

|1E8EC0| LDA.b #$02
|1E8EC2| STA.w $0D80,X

.dont_dodge
|1E8EC5| LDA.w $0D80,X
|1E8EC8| JSL JumpTableLocal
|1E8ECC| dw Zirro_Idle
|1E8ECE| dw Zirro_Move
|1E8ED0| dw Zirro_Dodge

;===================================================================================================

Zirro_Dodge:
|1E8ED2| LDA.w $0DF0,X
|1E8ED5| BNE .still_dodging

|1E8ED7| STZ.w $0D80,X

.still_dodging
|1E8EDA| INC.w $0E80,X
|1E8EDD| INC.w $0E80,X

|1E8EE0| JSR Zirro_HandleMovement

|1E8EE3| RTS

;===================================================================================================

pool Zirro_Idle

.speed_x
|1E8EE4| db  16,  12,   0, -12, -16, -12,   0,  12

.speed_y
|1E8EEC| db   0,  12,  16,  12,   0, -12, -16, -12

.direction
|1E8EF4| db $00, $04, $02, $06

endpool

;---------------------------------------------------------------------------------------------------

Zirro_Idle:
|1E8EF8| LDA.w $0DF0,X
|1E8EFB| BNE .delay

|1E8EFD| INC.w $0D80,X
|1E8F00| INC.w $0DA0,X

|1E8F03| LDA.w $0DA0,X
|1E8F06| CMP.b #$03
|1E8F08| BNE .random_direction

|1E8F0A| STZ.w $0DA0,X

|1E8F0D| LDA.b #$30
|1E8F0F| STA.w $0DF0,X

|1E8F12| JSR GetDirectionTowardsLink_bank1E

|1E8F15| LDA.w .direction,Y
|1E8F18| BRA .use_direction

.random_direction
|1E8F1A| JSL GetRandomNumber
|1E8F1E| AND.b #$1F
|1E8F20| ORA.b #$20
|1E8F22| STA.w $0DF0,X

|1E8F25| AND.b #$07

.use_direction
|1E8F27| TAY

|1E8F28| LDA.w .speed_x,Y
|1E8F2B| STA.w $0D50,X

|1E8F2E| LDA.w .speed_y,Y
|1E8F31| STA.w $0D40,X

.delay
|1E8F34| BRA Zirro_Animate

;===================================================================================================

Zirro_Move:
|1E8F36| LDA.w $0DF0,X
|1E8F39| BNE Zirro_HandleMovement

|1E8F3B| STZ.w $0D80,X

|1E8F3E| LDA.b #$0A
|1E8F40| STA.w $0DF0,X

|1E8F43| LDY.w $0E20,X
|1E8F46| CPY.b #$A8 ; SPRITE A8
|1E8F48| BNE .not_green

|1E8F4A| LDA.b #$10
|1E8F4C| STA.w $0E00,X

.not_green
|1E8F4F| RTS

;===================================================================================================

Zirro_HandleMovement:
|1E8F50| JSR MoveSpriteXY_bank1E

;===================================================================================================

Zirro_Animate:
|1E8F53| JSR GetDirectionTowardsLink_bank1E
|1E8F56| TYA
|1E8F57| STA.w $0DE0,X

|1E8F5A| INC.w $0E80,X

|1E8F5D| LDA.w $0E80,X
|1E8F60| LSR A
|1E8F61| LSR A
|1E8F62| LSR A
|1E8F63| AND.b #$01
|1E8F65| STA.b $00

|1E8F67| LDA.w $0DE0,X
|1E8F6A| ASL A
|1E8F6B| ORA.b $00
|1E8F6D| STA.w $0DC0,X

|1E8F70| RTS

;===================================================================================================

pool Zirro_DropBomb

.offset_x_low
|1E8F71| db  14,  -6,   4,   4

.offset_x_high
|1E8F75| db   0,  -1,   0,   0

.offset_y_low
|1E8F79| db   7,   7,  12,  -4

.offset_y_high
|1E8F7D| db   0,   0,   0,  -1

endpool

;---------------------------------------------------------------------------------------------------

Zirro_DropBomb:
|1E8F81| LDA.b #$A8 ; SPRITE A8
|1E8F83| JSL SpawnSpriteDynamically
|1E8F87| BMI .exit

|1E8F89| LDA.b #$20 ; SFX2.20
|1E8F8B| JSL QueueSpriteSFX2WithPan

|1E8F8F| LDA.b $04
|1E8F91| STA.w $0F70,Y

|1E8F94| PHX

|1E8F95| LDX.w $0DE0,Y

|1E8F98| LDA.b $00
|1E8F9A| CLC
|1E8F9B| ADC.w .offset_x_low,X
|1E8F9E| STA.w $0D10,Y

|1E8FA1| LDA.b $01
|1E8FA3| ADC.w .offset_x_high,X
|1E8FA6| STA.w $0D30,Y

|1E8FA9| LDA.b $02
|1E8FAB| CLC
|1E8FAC| ADC.w .offset_y_low,X
|1E8FAF| STA.w $0D00,Y

|1E8FB2| LDA.b $03
|1E8FB4| ADC.w .offset_y_high,X
|1E8FB7| STA.w $0D20,Y

|1E8FBA| LDA.w Sixteen_X,X
|1E8FBD| STA.w $0D50,Y

|1E8FC0| LDA.w Sixteen_Y,X
|1E8FC3| STA.w $0D40,Y

|1E8FC6| PLX

|1E8FC7| LDA.b #$01
|1E8FC9| STA.w $0D90,Y
|1E8FCC| STA.w $0BA0,Y

|1E8FCF| LDA.b #$09
|1E8FD1| STA.w $0F60,Y

|1E8FD4| LDA.b #$33
|1E8FD6| STA.w $0E60,Y

|1E8FD9| AND.b #$0F
|1E8FDB| STA.w $0F50,Y

.exit
|1E8FDE| RTS

;===================================================================================================

StalfosBone:
|1E8FDF| JSR SpriteDraw_StalfosBone
|1E8FE2| JSR CheckIfActive_bank1E
|1E8FE5| JSR CheckDamageToLink_bank1E

|1E8FE8| INC.w $0E80,X

|1E8FEB| JSR MoveSpriteXY_bank1E

|1E8FEE| LDA.w $0DF0,X
|1E8FF1| BNE .exit

|1E8FF3| JSR CheckSpriteTileCollision_bank1E
|1E8FF6| BEQ .exit

|1E8FF8| STZ.w $0DD0,X

|1E8FFB| JSL PlaceWeaponTinkAtSprite

.exit
|1E8FFF| RTS

;===================================================================================================

pool SpriteDraw_StalfosBone

.oam_groups
; group00
|1E9000| dw  -4,  -2 : db $2F, $80, $00, $00
|1E9008| dw   4,   2 : db $2F, $40, $00, $00

; group01
|1E9010| dw  -4,   2 : db $2F, $00, $00, $00
|1E9018| dw   4,  -2 : db $2F, $C0, $00, $00

; group02
|1E9020| dw   2,  -4 : db $3F, $40, $00, $00
|1E9028| dw  -2,   4 : db $3F, $80, $00, $00

; group03
|1E9030| dw  -2,  -4 : db $3F, $00, $00, $00
|1E9038| dw   2,   4 : db $3F, $C0, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_StalfosBone:
|1E9040| LDA.b #$00
|1E9042| XBA
|1E9043| LDA.w $0E80,X

|1E9046| LSR A ; /4
|1E9047| LSR A
|1E9048| AND.b #$03

|1E904A| REP #$20

|1E904C| ASL A ; x16
|1E904D| ASL A
|1E904E| ASL A
|1E904F| ASL A

|1E9050| ADC.w #.oam_groups
|1E9053| STA.b $08

|1E9055| SEP #$20

|1E9057| LDA.b #$02
|1E9059| JMP.w TabulatedSpriteDraw_bank1E

;===================================================================================================

StalfosTimers:
|1E905C| db 16, 32, 64, 32

StalfosDrawStepsA:
|1E9060| db $06, $04, $00, $02, $07, $05, $01, $03

StalfosDrawStepsB:
|1E9068| db $08, $09, $0A, $0B

;===================================================================================================

Sprite_A7_Stalfos:
|1E906C| LDA.w $0D90,X
|1E906F| BEQ Stalfos

|1E9071| JMP.w StalfosBone

;===================================================================================================

Stalfos:
|1E9074| LDA.w $0E90,X
|1E9077| BEQ Stalfos_Skellington

;===================================================================================================

Stalfos_Invisible:
|1E9079| LDA.w $0DF0,X
|1E907C| BNE .wait_in_closet

|1E907E| LDA.b #$01
|1E9080| STA.w $0D50,X
|1E9083| STA.w $0D40,X

|1E9086| JSR CheckSpriteTileCollision_bank1E
|1E9089| BEQ .no_collision

|1E908B| STZ.w $0DD0,X

|1E908E| RTS

;---------------------------------------------------------------------------------------------------

.no_collision
|1E908F| STZ.w $0E90,X

|1E9092| LDA.b #$15 ; SFX2.15
|1E9094| JSL QueueSpriteSFX2WithPan

|1E9098| JSL SpawnPoofGarnish

|1E909C| LDA.b #$08
|1E909E| STA.w $0E10,X

|1E90A1| LDA.b #$40
|1E90A3| STA.w $0DF0,X

|1E90A6| STZ.w $0D40,X
|1E90A9| STZ.w $0D50,X

.wait_in_closet
|1E90AC| JSL GetScreenCoordinates_long

|1E90B0| RTS

;===================================================================================================

pool Stalfos_Skellington

.direction
|1E90B1| db $03, $02, $01, $00

endpool

;---------------------------------------------------------------------------------------------------

Stalfos_Skellington:
|1E90B5| LDA.w $0DD0,X
|1E90B8| CMP.b #$09
|1E90BA| BNE .dont_dodge

|1E90BC| REP #$20

|1E90BE| LDA.b $22
|1E90C0| SEC
|1E90C1| SBC.w $0FD8
|1E90C4| CLC
|1E90C5| ADC.w #$0028

|1E90C8| CMP.w #$0050
|1E90CB| BCS .dont_dodge

|1E90CD| LDA.b $20
|1E90CF| SEC
|1E90D0| SBC.w $0FDA
|1E90D3| CLC
|1E90D4| ADC.w #$0030

|1E90D7| CMP.w #$0050
|1E90DA| BCS .dont_dodge

|1E90DC| SEP #$20

|1E90DE| LDA.b $44
|1E90E0| CMP.b #$80
|1E90E2| BEQ .dont_dodge

|1E90E4| LDA.w $0F70,X
|1E90E7| ORA.w $0F00,X
|1E90EA| BNE .dont_dodge

|1E90EC| LDA.b $EE
|1E90EE| CMP.w $0F20,X
|1E90F1| BNE .dont_dodge

|1E90F3| JSR GetDirectionTowardsLink_bank1E
|1E90F6| STY.b $00

|1E90F8| LDA.w $0372
|1E90FB| BNE .dodge

|1E90FD| LDA.b $3C
|1E90FF| CMP.b #$90
|1E9101| BCS .face_link

|1E9103| CMP.b #$09
|1E9105| BPL .dont_dodge

.dodge
|1E9107| LDA.b $2F
|1E9109| LSR A
|1E910A| TAY

|1E910B| LDA.b $00
|1E910D| CMP.w .direction,Y
|1E9110| BEQ .dont_dodge

.face_link
|1E9112| LDA.b $00
|1E9114| STA.w $0DE0,X

|1E9117| LDA.b #$20
|1E9119| JSL ProjectSpriteSpeedTowardsLink_long

|1E911D| LDA.b $01
|1E911F| EOR.b #$FF
|1E9121| INC A
|1E9122| STA.w $0D50,X

|1E9125| LDA.b $00
|1E9127| EOR.b #$FF
|1E9129| INC A
|1E912A| STA.w $0D40,X

|1E912D| LDA.b #$20
|1E912F| STA.w $0F80,X

|1E9132| LDA.b #$13 ; SFX3.13
|1E9134| JSL QueueSpriteSFX3WithPan

|1E9138| INC.w $0F70,X

;---------------------------------------------------------------------------------------------------

.dont_dodge
|1E913B| SEP #$20

|1E913D| LDA.w $0F70,X
|1E9140| BEQ Zazak_Main

|1E9142| LDY.w $0DE0,X

|1E9145| LDA.w StalfosDrawStepsB,Y
|1E9148| STA.w $0DC0,X

|1E914B| JSL SpriteDraw_Stalfos
|1E914F| JSR CheckIfActive_bank1E

|1E9152| LDA.w $0EA0,X
|1E9155| BEQ .not_recoiling

|1E9157| STZ.w $0F80,X

.not_recoiling
|1E915A| JSR HandleSpriteRecoil_bank1E
|1E915D| JSR CheckDamageToAndFromLink_bank1E
|1E9160| JSR CheckSpriteTileCollision_bank1E

|1E9163| PHA

|1E9164| AND.b #$03
|1E9166| BEQ .no_horizontal_tile_collision

|1E9168| STZ.w $0D50,X

.no_horizontal_tile_collision
|1E916B| PLA
|1E916C| AND.b #$0C
|1E916E| BEQ .no_vertical_tile_collision

|1E9170| STZ.w $0D40,X

.no_vertical_tile_collision
|1E9173| JSR MoveSpriteXYZ_bank1E

|1E9176| LDA.w $0F80,X
|1E9179| SEC
|1E917A| SBC.b #$02
|1E917C| STA.w $0F80,X

|1E917F| LDA.w $0F70,X
|1E9182| DEC A
|1E9183| BPL .exit

|1E9185| STZ.w $0F70,X

|1E9188| JSR ZeroVelocityXY_bank1E

|1E918B| LDA.b #$21 ; SFX2.21
|1E918D| JSL QueueSpriteSFX2WithPan

|1E9191| LDA.w $0E30,X
|1E9194| BEQ .exit

|1E9196| LDA.b #$10
|1E9198| STA.w $0EE0,X

|1E919B| STZ.w $0E80,X

.exit
|1E919E| RTS

;===================================================================================================

Zazak_Main:
Sprite_A5_BlueZazak:
Sprite_A6_RedZazak:
|1E919F| LDA.w $0DA0,X
|1E91A2| BEQ TrueZazak

;===================================================================================================

; If you're disgusted by this name, blame MathOnNapkins.
ZazakPhlegm:
|1E91A4| JSR SpriteDraw_Phlegm
|1E91A7| JSR CheckIfActive_bank1E

|1E91AA| LDA.b $1A
|1E91AC| LSR A
|1E91AD| AND.b #$01
|1E91AF| STA.w $0DC0,X

|1E91B2| JSR CheckDamageToLink_bank1E
|1E91B5| JSR MoveSpriteXY_bank1E

|1E91B8| JSR CheckSpriteTileCollision_bank1E
|1E91BB| BEQ .exit

|1E91BD| STZ.w $0DD0,X

|1E91C0| JSL PlaceWeaponTinkAtSprite_forced

.exit
|1E91C4| RTS

;===================================================================================================

TrueZazak:
; The infamous zazak-throws-a-bone glitch
|1E91C5| LDA.w $0EE0,X
|1E91C8| BEQ .dont_toss_bone

|1E91CA| PHA

|1E91CB| STZ.w $0D80,X

|1E91CE| LDA.b #$20
|1E91D0| STA.w $0DF0,X

|1E91D3| JSR ZeroVelocityXY_bank1E
|1E91D6| JSR GetDirectionTowardsLink_bank1E

|1E91D9| TYA
|1E91DA| STA.w $0EB0,X

|1E91DD| PLA

.dont_toss_bone
|1E91DE| CMP.b #$01
|1E91E0| BNE .definitely_dont_toss_bone

|1E91E2| JSR Stalfos_ThrowBone

|1E91E5| LDA.b #$01
|1E91E7| STA.w $0E80,X

.definitely_dont_toss_bone
|1E91EA| LDA.w $0E80,X
|1E91ED| AND.b #$01
|1E91EF| ASL A
|1E91F0| ASL A
|1E91F1| ADC.w $0DE0,X
|1E91F4| TAY

|1E91F5| LDA.w StalfosDrawStepsA,Y
|1E91F8| STA.w $0DC0,X

|1E91FB| LDA.w $0E20,X
|1E91FE| CMP.b #$A7 ; SPRITE A7
|1E9200| BNE .draw_as_zazak

.draw_as_stalfos
|1E9202| JSL SpriteDraw_Stalfos
|1E9206| JSR CheckIfActive_bank1E
|1E9209| BRA .draw_done

.draw_as_zazak
|1E920B| JSL SpriteDraw_Zazak
|1E920F| JSR CheckIfActive_bank1E

.draw_done
|1E9212| JSR HandleSpriteRecoil_bank1E
|1E9215| JSR CheckDamageToAndFromLink_bank1E
|1E9218| JSR MoveSpriteXY_bank1E
|1E921B| JSR CheckSpriteTileCollision_bank1E

|1E921E| LDA.w $0D80,X
|1E9221| JSL JumpTableLocal
|1E9225| dw StalfosZazak_Walk
|1E9227| dw StalfosZazak_Wait
|1E9229| dw StalfosZazak_Shoot

;===================================================================================================

StalfosZazak_Walk:
|1E922B| LDA.w $0DF0,X
|1E922E| BNE .exit

|1E9230| JSL GetRandomNumber
|1E9234| AND.b #$03
|1E9236| TAY

|1E9237| LDA.w StalfosTimers,Y
|1E923A| STA.w $0DF0,X

|1E923D| INC.w $0D80,X

|1E9240| LDA.w $0EB0,X
|1E9243| STA.w $0DE0,X

|1E9246| TAY

|1E9247| LDA.w Sixteen_X,Y
|1E924A| STA.w $0D50,X

|1E924D| LDA.w Sixteen_Y,Y
|1E9250| STA.w $0D40,X

.exit
|1E9253| RTS

;===================================================================================================

SharedDirections_Nice:
|1E9254| db $02, $03, $02, $03, $00, $01, $00, $01

;===================================================================================================

StalfosZazak_Wait:
|1E925C| LDA.b #$10

|1E925E| LDY.w $0E70,X
|1E9261| BNE .new_direction

|1E9263| LDA.w $0DF0,X
|1E9266| BNE .delay

|1E9268| LDA.w $0E20,X
|1E926B| CMP.b #$A6 ; SPRITE A6
|1E926D| BNE .dont_shoot

|1E926F| JSR GetDirectionTowardsLink_bank1E
|1E9272| TYA
|1E9273| CMP.w $0DE0,X
|1E9276| BNE .dont_shoot

|1E9278| LDA.b $EE
|1E927A| CMP.w $0F20,X
|1E927D| BNE .dont_shoot

|1E927F| INC.w $0D80,X

|1E9282| LDA.b #$30
|1E9284| STA.w $0DF0,X
|1E9287| STA.w $0E00,X

|1E928A| BRA ZeroVelocityXY_bank1E

.dont_shoot
|1E928C| LDA.b #$20

.new_direction
|1E928E| STA.w $0DF0,X

|1E9291| JSL GetRandomNumber
|1E9295| LSR A
|1E9296| LDA.w $0DE0,X
|1E9299| ROL A
|1E929A| TAY

|1E929B| LDA.w SharedDirections_Nice,Y
|1E929E| STA.w $0EB0,X

|1E92A1| STZ.w $0D80,X

|1E92A4| INC.w $0DB0,X

|1E92A7| LDA.w $0DB0,X
|1E92AA| CMP.b #$04
|1E92AC| BNE ZeroVelocityXY_bank1E

|1E92AE| STZ.w $0DB0,X

|1E92B1| JSR GetDirectionTowardsLink_bank1E
|1E92B4| TYA
|1E92B5| STA.w $0EB0,X

|1E92B8| LDA.b #$18
|1E92BA| STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

#ZeroVelocityXY_bank1E:
|1E92BD| STZ.w $0D50,X
|1E92C0| STZ.w $0D40,X

|1E92C3| RTS

;---------------------------------------------------------------------------------------------------

.delay
|1E92C4| DEC.w $0ED0,X
|1E92C7| BPL .exit

|1E92C9| LDA.b #$0B
|1E92CB| STA.w $0ED0,X

|1E92CE| INC.w $0E80,X

.exit
|1E92D1| RTS

;===================================================================================================

StalfosZazak_Shoot:
|1E92D2| LDA.w $0DF0,X
|1E92D5| BNE .wait

|1E92D7| STZ.w $0D80,X

|1E92DA| RTS

.wait
|1E92DB| CMP.b #$18
|1E92DD| BNE .wait_some_more

|1E92DF| JSL Sprite_SpawnFirePhlegm

.wait_some_more
|1E92E3| RTS

;===================================================================================================

Sprite_SpawnFirePhlegm:
|1E92E4| PHB
|1E92E5| PHK
|1E92E6| PLB

|1E92E7| LDA.b #$A5 ; SPRITE A5
|1E92E9| JSL SpawnSpriteDynamically
|1E92ED| BMI .no_space

|1E92EF| LDA.b #$05 ; SFX3.05
|1E92F1| JSL QueueSpriteSFX3WithPan
|1E92F5| JSL SetSpawnedSpriteCoordinates

|1E92F9| PHX

|1E92FA| LDA.w $0DE0,X
|1E92FD| TAX

|1E92FE| LDA.b $00
|1E9300| CLC
|1E9301| ADC.w .offset_x_low,X
|1E9304| STA.w $0D10,Y

|1E9307| LDA.b $01
|1E9309| ADC.w .offset_x_high,X
|1E930C| STA.w $0D30,Y

|1E930F| LDA.b $02
|1E9311| CLC
|1E9312| ADC.w .offset_y_low,X
|1E9315| STA.w $0D00,Y

|1E9318| LDA.b $03
|1E931A| ADC.w .offset_y_high,X
|1E931D| STA.w $0D20,Y

|1E9320| LDA.w .speed_x,X
|1E9323| STA.w $0D50,Y

|1E9326| LDA.w .speed_y,X
|1E9329| STA.w $0D40,Y

|1E932C| LDA.w $0E60,Y
|1E932F| ORA.b #$40
|1E9331| STA.w $0E60,Y

|1E9334| LDA.b #$40
|1E9336| STA.w $0CAA,Y

|1E9339| LDA.b #$21
|1E933B| STA.w $0E40,Y
|1E933E| STA.w $0DA0,Y

|1E9341| LDA.b #$02
|1E9343| STA.w $0F50,Y

|1E9346| LDA.b #$14
|1E9348| STA.w $0F60,Y
|1E934B| STA.w $0BA0,Y

|1E934E| LDA.b #$25
|1E9350| STA.w $0CD2,Y

|1E9353| LDA.l $7EF35A
|1E9357| CMP.b #$03
|1E9359| BCC .not_blockable

|1E935B| LDA.b #$20
|1E935D| STA.w $0BE0,Y

.not_blockable
|1E9360| PLX

.no_space
|1E9361| PLB

|1E9362| RTL

;---------------------------------------------------------------------------------------------------

; It's so much easier to label things when data comes after the code.
.speed_x ; bleeds into next
|1E9363| db  48, -48

.speed_y
|1E9365| db   0,   0,  48, -48

.offset_x_low
|1E9369| db  16,  -8,   4,   4

.offset_x_high
|1E936D| db   0,  -1,   0,   0

.offset_y_low
|1E9371| db  -2,  -2,   8, -20

.offset_y_high
|1E9375| db  -1,  -1,   0,  -1

;===================================================================================================

Stalfos_ThrowBone:
|1E9379| LDA.b #$A7 ; SPRITE A7
|1E937B| JSL SpawnSpriteDynamically
|1E937F| BMI .exit

|1E9381| LDA.b #$01
|1E9383| STA.w $0D90,Y

|1E9386| JSL SetSpawnedSpriteCoordinates

|1E938A| PHX
|1E938B| TYX

|1E938C| LDA.b #$20
|1E938E| JSL ApplySpeedTowardsLink_long

|1E9392| LDA.b #$21
|1E9394| STA.w $0E40,X
|1E9397| STA.w $0BA0,X

|1E939A| LDA.w $0E60,X
|1E939D| ORA.b #$40
|1E939F| STA.w $0E60,X

|1E93A2| LDA.b #$48
|1E93A4| STA.w $0CAA,X

|1E93A7| LDA.b #$10
|1E93A9| STA.w $0DF0,X

|1E93AC| LDA.b #$14
|1E93AE| STA.w $0F60,X

|1E93B1| LDA.b #$07
|1E93B3| STA.w $0F50,X

|1E93B6| LDA.b #$20
|1E93B8| STA.w $0CD2,X

|1E93BB| PLX

|1E93BC| LDA.b #$02 ; SFX2.02
|1E93BE| JSL QueueSpriteSFX2WithPan

.exit
|1E93C2| RTS

;===================================================================================================

pool SpriteDraw_Phlegm

.oam_groups
; group00
|1E93C3| dw   0,   0 : db $C3, $00, $00, $00
|1E93CB| dw  -8,   0 : db $C2, $00, $00, $00

; group01
|1E93D3| dw   0,   0 : db $C3, $80, $00, $00
|1E93DB| dw  -8,   0 : db $C2, $80, $00, $00

; group02
|1E93E3| dw   0,   0 : db $C3, $40, $00, $00
|1E93EB| dw   8,   0 : db $C2, $40, $00, $00

; group03
|1E93F3| dw   0,   0 : db $C3, $C0, $00, $00
|1E93FB| dw   8,   0 : db $C2, $C0, $00, $00

; group04
|1E9403| dw   0,   0 : db $D4, $00, $00, $00
|1E940B| dw   0,  -8 : db $D3, $00, $00, $00

; group05
|1E9413| dw   0,   0 : db $D4, $40, $00, $00
|1E941B| dw   0,  -8 : db $D3, $40, $00, $00

; group06
|1E9423| dw   0,   0 : db $D4, $80, $00, $00
|1E942B| dw   0,   8 : db $D3, $80, $00, $00

; group07
|1E9433| dw   0,   0 : db $D4, $C0, $00, $00
|1E943B| dw   0,   8 : db $D3, $C0, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Phlegm:
|1E9443| LDA.b #$00
|1E9445| XBA
|1E9446| LDA.w $0DE0,X

|1E9449| ASL A
|1E944A| CLC
|1E944B| ADC.w $0DC0,X

|1E944E| REP #$20

|1E9450| ASL A ; x16
|1E9451| ASL A
|1E9452| ASL A
|1E9453| ASL A
|1E9454| ADC.w #.oam_groups
|1E9457| STA.b $08

|1E9459| SEP #$20

|1E945B| LDA.b #$02
|1E945D| JMP.w TabulatedSpriteDraw_bank1E

;===================================================================================================

Sprite_A3_KholdstareShell:
|1E9460| JSR CheckIfActivePermissive_bank1E
|1E9463| JSR GetDirectionTowardsLink_bank1E

|1E9466| LDA.b $0F
|1E9468| CLC
|1E9469| ADC.b #$20
|1E946B| CMP.b #$40
|1E946D| BCS .link_not_close

|1E946F| LDA.b $0E
|1E9471| CLC
|1E9472| ADC.b #$20
|1E9474| CMP.b #$40
|1E9476| BCS .link_not_close

|1E9478| JSL AbortMovement
|1E947C| JSL RepelDash_long

.link_not_close
|1E9480| JSL CheckDamageFromLink_long

|1E9484| LDA.w $0D80,X
|1E9487| BNE .phase_out

|1E9489| LDA.w $0DD0,X
|1E948C| CMP.b #$06
|1E948E| BNE .shake

|1E9490| LDA.b #$C0
|1E9492| STA.w $0E60,X

|1E9495| INC.w $0D80,X

|1E9498| LDA.b #$09
|1E949A| STA.w $0DD0,X

|1E949D| RTS

;---------------------------------------------------------------------------------------------------

.offset_low
|1E949E| db  1, -1

.offset_high
|1E94A0| db  0, -1

;---------------------------------------------------------------------------------------------------

.shake
|1E94A2| LDA.w $0EF0,X
|1E94A5| BEQ .not_recoiling

|1E94A7| AND.b #$02
|1E94A9| LSR A
|1E94AA| TAY

|1E94AB| LDA.w .offset_low,Y
|1E94AE| STA.w $0422

|1E94B1| LDA.w .offset_high,Y
|1E94B4| STA.w $0423

|1E94B7| LDA.b #$01
|1E94B9| STA.w $0428

|1E94BC| RTS

.not_recoiling
|1E94BD| STZ.w $0428

|1E94C0| RTS

;---------------------------------------------------------------------------------------------------

.phase_out
|1E94C1| INC.w $0D80,X
|1E94C4| CMP.b #$12
|1E94C6| BEQ .activate_khold

|1E94C8| PHX
|1E94C9| JSL PaletteFilter_KholdstareShell
|1E94CD| PLX

|1E94CE| RTS

.activate_khold
|1E94CF| STZ.w $0DD0,X

|1E94D2| LDA.b #$02
|1E94D4| STA.w $0D82

|1E94D7| LDA.b #$80
|1E94D9| STA.w $0DF2

|1E94DC| RTS

;===================================================================================================

GenerateIceball:
|1E94DD| INC.w $0E80,X

|1E94E0| LDA.w $0E80,X
|1E94E3| AND.b #$7F
|1E94E5| ORA.w $0E00,X
|1E94E8| BNE .exit

|1E94EA| LDA.b #$A4 ; SPRITE A4
|1E94EC| JSL SpawnSpriteDynamically
|1E94F0| BMI .exit

|1E94F2| LDA.b $22
|1E94F4| STA.w $0D10,Y

|1E94F7| LDA.b $23
|1E94F9| STA.w $0D30,Y

|1E94FC| LDA.b $20
|1E94FE| STA.w $0D00,Y

|1E9501| LDA.b $21
|1E9503| STA.w $0D20,Y

|1E9506| LDA.b #$E0
|1E9508| STA.w $0F70,Y
|1E950B| STA.w $0DB0,Y

|1E950E| PHX
|1E950F| TYX

|1E9510| LDA.b #$20 ; SFX2.20
|1E9512| JSL QueueSpriteSFX2WithPan

|1E9516| PLX

.exit
|1E9517| RTS

;===================================================================================================

Sprite_A2_Kholdstare:
|1E9518| JSL SpriteDraw_Kholdstare
|1E951C| JSR CheckIfActive_bank1E

|1E951F| LDA.w $0D80,X
|1E9522| CMP.b #$02
|1E9524| BCS .no_garnish

|1E9526| JSR SpawnPuffCloudGarnish

|1E9529| LDA.b $1A
|1E952B| AND.b #$07
|1E952D| BNE .no_garnish

|1E952F| LDA.b #$02 ; SFX2.02
|1E9531| STA.w $012E

.no_garnish
|1E9534| JSR HandleSpriteRecoil_bank1E

|1E9537| DEC.w $0E80,X
|1E953A| BPL .delay_anim

|1E953C| LDA.b #$0A
|1E953E| STA.w $0E80,X

|1E9541| LDA.w $0DC0,X
|1E9544| INC A
|1E9545| AND.b #$03
|1E9547| STA.w $0DC0,X

.delay_anim
|1E954A| LDA.b $1A
|1E954C| AND.b #$03
|1E954E| BNE .dont_turn_eye

|1E9550| LDA.b #$1F
|1E9552| JSL ProjectSpriteSpeedTowardsLink_long
|1E9556| JSL ConvertVelocityToAngle
|1E955A| STA.w $0D90,X

.dont_turn_eye
|1E955D| JSR MoveSpriteXY_bank1E

|1E9560| LDA.w $0D80,X
|1E9563| JSL JumpTableLocal
|1E9567| dw Kholdstare_Accelerate
|1E9569| dw Kholdstare_Decelerate
|1E956B| dw Kholdstare_Split
|1E956D| dw Kholdstare_DoAbsolutelyNothing

;===================================================================================================

Kholdstare_Accelerate:
|1E956F| JSR CheckDamageToAndFromLink_bank1E

|1E9572| LDA.w $0DF0,X
|1E9575| BNE .delay

|1E9577| INC.w $0D80,X

|1E957A| JSL GetRandomNumber
|1E957E| AND.b #$3F
|1E9580| ADC.b #$20
|1E9582| STA.w $0DF0,X

|1E9585| RTS

.delay
|1E9586| LDA.w $0D50,X
|1E9589| CMP.w $0F80,X
|1E958C| BEQ .x_done
|1E958E| BPL .x_too_high

|1E9590| INC.w $0D50,X
|1E9593| BRA .x_done

.x_too_high
|1E9595| DEC.w $0D50,X

.x_done
|1E9598| LDA.w $0D40,X
|1E959B| CMP.w $0F90,X
|1E959E| BEQ Kholdstare_CheckTileCollision
|1E95A0| BPL .y_too_high

.y_too_low
|1E95A2| INC.w $0D40,X
|1E95A5| BRA Kholdstare_CheckTileCollision

.y_too_high
|1E95A7| DEC.w $0D40,X

;===================================================================================================

Kholdstare_CheckTileCollision:
|1E95AA| JSR CheckSpriteTileCollision_bank1E
|1E95AD| AND.b #$03
|1E95AF| BEQ .no_collision

|1E95B1| LDA.w $0D50,X
|1E95B4| EOR.b #$FF
|1E95B6| INC A
|1E95B7| STA.w $0D50,X

|1E95BA| LDA.w $0F80,X
|1E95BD| EOR.b #$FF
|1E95BF| INC A
|1E95C0| STA.w $0F80,X

.no_collision
|1E95C3| LDA.w $0E70,X
|1E95C6| AND.b #$0C
|1E95C8| BEQ .exit

|1E95CA| LDA.w $0D40,X
|1E95CD| EOR.b #$FF
|1E95CF| INC A
|1E95D0| STA.w $0D40,X

|1E95D3| LDA.w $0F90,X
|1E95D6| EOR.b #$FF
|1E95D8| INC A
|1E95D9| STA.w $0F90,X

.exit
|1E95DC| RTS

;===================================================================================================

pool Kholdstare_Decelerate

.limit_x
|1E95DD| db  16,  16, -16, -16

.limit_y
|1E95E1| db -16,  16,  16, -16

endpool

;---------------------------------------------------------------------------------------------------

Kholdstare_Decelerate:
|1E95E5| JSR CheckDamageToAndFromLink_bank1E

|1E95E8| LDA.w $0DF0,X
|1E95EB| BNE .delay

|1E95ED| STZ.w $0D80,X

|1E95F0| JSL GetRandomNumber
|1E95F4| AND.b #$3F

|1E95F6| ADC.b #$60
|1E95F8| STA.w $0DF0,X

|1E95FB| JSL GetRandomNumber
|1E95FF| PHA

|1E9600| AND.b #$03
|1E9602| TAY

|1E9603| LDA.w .limit_x,Y
|1E9606| STA.w $0F80,X

|1E9609| LDA.w .limit_y,Y
|1E960C| STA.w $0F90,X

|1E960F| PLA
|1E9610| AND.b #$1C
|1E9612| BNE .use_random_direction

|1E9614| LDA.b #$18
|1E9616| JSL ProjectSpriteSpeedTowardsLink_long

|1E961A| LDA.b $00
|1E961C| STA.w $0F90,X

|1E961F| LDA.b $01
|1E9621| STA.w $0F80,X

.use_random_direction
|1E9624| RTS

;---------------------------------------------------------------------------------------------------

.delay
|1E9625| LDA.w $0D50,X
|1E9628| BEQ .x_done
|1E962A| BPL .x_too_high

|1E962C| INC.w $0D50,X
|1E962F| BRA .x_done

.x_too_high
|1E9631| DEC.w $0D50,X

.x_done
|1E9634| LDA.w $0D40,X
|1E9637| BEQ .y_done
|1E9639| BPL .y_too_high

|1E963B| INC.w $0D40,X
|1E963E| BRA .y_done

.y_too_high
|1E9640| DEC.w $0D40,X

.y_done
|1E9643| JMP.w Kholdstare_CheckTileCollision

;===================================================================================================

pool Kholdstare_Split

.target_speed_x
|1E9646| db  32, -32,   0

.target_speed_y
|1E9649| db -32, -32,  48

endpool

;---------------------------------------------------------------------------------------------------

Kholdstare_Split:
|1E964C| LDA.w $0DF0,X
|1E964F| CMP.b #$01
|1E9651| BNE .exit

|1E9653| STZ.w $0DD0,X
|1E9656| STZ.w $0DD1,X
|1E9659| STZ.w $0DD2,X

|1E965C| LDA.b #$02
|1E965E| STA.w $0FB5

.next_scoop
|1E9661| LDA.b #$A2 ; SPRITE A2
|1E9663| LDY.b #$04
|1E9665| JSL SpawnSpriteDynamically.slot_limited
|1E9669| BMI .exit

|1E966B| JSL SetSpawnedSpriteCoordinates

|1E966F| PHX

|1E9670| LDX.w $0FB5

|1E9673| LDA.w .target_speed_x,X
|1E9676| STA.w $0F80,Y

|1E9679| LDA.w .target_speed_y,X
|1E967C| STA.w $0F90,Y

|1E967F| LDA.b #$20
|1E9681| STA.w $0DF0,Y

|1E9684| PLX

|1E9685| DEC.w $0FB5
|1E9688| BPL .next_scoop

|1E968A| RTS

.exit
|1E968B| LDA.w $0EF0,X
|1E968E| ORA.b #$E0
|1E9690| STA.w $0EF0,X

|1E9693| RTS

;===================================================================================================

Kholdstare_DoAbsolutelyNothing:
|1E9694| RTS

;===================================================================================================

pool SpawnPuffCloudGarnish

.offset_low
|1E9695| db  -8, -6, -4, -2,  0,  2,  4,  6

.offset_high
|1E969D| db  -1, -1, -1, -1,  0,  0,  0,  0

endpool

;---------------------------------------------------------------------------------------------------

SpawnPuffCloudGarnish:
; only attempt every 4 frames
|1E96A5| TXA
|1E96A6| EOR.b $1A
|1E96A8| AND.b #$03
|1E96AA| BNE .exit

|1E96AC| PHX

|1E96AD| LDX.b #$0E

; Find an open garnish slot
.next
|1E96AF| LDA.l $7FF800,X
|1E96B3| BEQ .open_slot

|1E96B5| DEX
|1E96B6| BPL .next

|1E96B8| PLX

|1E96B9| RTS

;---------------------------------------------------------------------------------------------------

.open_slot
|1E96BA| LDA.b #$07 ; GARNISH 07
|1E96BC| STA.l $7FF800,X
|1E96C0| STA.w $0FB4

|1E96C3| LDA.b #$1F
|1E96C5| STA.l $7FF90E,X

|1E96C9| JSL GetRandomNumber
|1E96CD| AND.b #$07
|1E96CF| TAY

|1E96D0| LDA.w $0FD8
|1E96D3| CLC
|1E96D4| ADC.w .offset_low,Y
|1E96D7| STA.l $7FF83C,X

|1E96DB| LDA.w $0FD9
|1E96DE| ADC.w .offset_high,Y
|1E96E1| STA.l $7FF878,X

|1E96E5| JSL GetRandomNumber
|1E96E9| AND.b #$07
|1E96EB| TAY

|1E96EC| LDA.w $0FDA
|1E96EF| CLC
|1E96F0| ADC.w .offset_low,Y

|1E96F3| PHP

|1E96F4| CLC
|1E96F5| ADC.b #$10
|1E96F7| STA.l $7FF81E,X

|1E96FB| LDA.w $0FDB
|1E96FE| ADC.b #$00

|1E9700| PLP
|1E9701| ADC.w .offset_high,Y
|1E9704| STA.l $7FF85A,X

|1E9708| LDA.b #$00
|1E970A| STA.l $7FF968,X

|1E970E| PLX

.exit
|1E970F| RTS

;===================================================================================================

Sprite_A4_FallingIce:
|1E9710| LDA.w $0DB0,X
|1E9713| BNE IceBall

;===================================================================================================

IceBallGenerator:
|1E9715| JSR CheckIfActive_bank1E

; [HARDCODED] sprite slots
; should have just loaded $09 and compared to each address
|1E9718| LDA.w $0DD2
|1E971B| CMP.b #$09
|1E971D| BCS .active_kholdstare

|1E971F| LDA.w $0DD3
|1E9722| CMP.b #$09
|1E9724| BCS .active_kholdstare

|1E9726| LDA.w $0DD4
|1E9729| CMP.b #$09
|1E972B| BCS .active_kholdstare

|1E972D| STZ.w $0DD0,X

.active_kholdstare
|1E9730| JMP.w GenerateIceball

;===================================================================================================

IceBall:
|1E9733| LDA.b #$01
|1E9735| STA.w $0BA0,X

|1E9738| LDA.b #$30
|1E973A| STA.w $0B89,X

|1E973D| JSL SpriteDraw_SingleLarge_long

|1E9741| LDA.w $0D80,X
|1E9744| BNE .ice_ball_piece

|1E9746| LDA.w $0E60,X
|1E9749| EOR.b #$10
|1E974B| STA.w $0E60,X

.ice_ball_piece
|1E974E| JSR CheckIfActive_bank1E

|1E9751| LDA.w $0DF0,X
|1E9754| BEQ .falling_as_ball

|1E9756| CMP.b #$01
|1E9758| BNE .stick_around

|1E975A| STZ.w $0DD0,X

.stick_around
|1E975D| LSR A
|1E975E| LSR A
|1E975F| LSR A

|1E9760| INC A
|1E9761| INC A

|1E9762| STA.w $0DC0,X

|1E9765| RTS

;---------------------------------------------------------------------------------------------------

.falling_as_ball
|1E9766| JSR MoveSpriteXY_bank1E

|1E9769| LDA.w $0D80,X
|1E976C| BEQ .is_also_iceball

|1E976E| JSR CheckDamageToLink_bank1E
|1E9771| JSR CheckSpriteTileCollision_bank1E
|1E9774| BNE .tile_collision

.is_also_iceball
|1E9776| LDA.w $0F70,X
|1E9779| PHA

|1E977A| JSR MoveSpriteZ_bank1E

|1E977D| LDA.w $0F80,X
|1E9780| CMP.b #$C0
|1E9782| BMI .at_max_speed

|1E9784| SEC
|1E9785| SBC.b #$03
|1E9787| STA.w $0F80,X

.at_max_speed
|1E978A| PLA
|1E978B| EOR.w $0F70,X
|1E978E| BPL .exit

|1E9790| LDA.w $0F70,X
|1E9793| BPL .exit

|1E9795| STZ.w $0F70,X

|1E9798| LDA.w $0D80,X
|1E979B| BNE .tile_collision

|1E979D| STZ.w $0DD0,X

|1E97A0| JSR IceBall_Split

|1E97A3| RTS

;---------------------------------------------------------------------------------------------------

.tile_collision
|1E97A4| LDA.b #$0F
|1E97A6| STA.w $0DF0,X

|1E97A9| LDA.b #$04
|1E97AB| STA.w $0F50,X

|1E97AE| LDA.w $012E
|1E97B1| BNE .exit

|1E97B3| LDA.b #$1E ; SFX2.1E
|1E97B5| JSL QueueSpriteSFX2WithPan

|1E97B9| LDA.b #$03
|1E97BB| STA.w $0DC0,X

.exit
|1E97BE| RTS

;===================================================================================================

pool IceBall_Split

.speed_x
|1E97BF| db   0,  32,   0, -32
|1E97C3| db  24,  24, -24, -24

.speed_y
|1E97C7| db -32,   0,  32,   0
|1E97CB| db -24,  24, -24,  24

endpool

;---------------------------------------------------------------------------------------------------

IceBall_Split:
|1E97CF| LDA.b #$1F ; SFX2.1F
|1E97D1| JSL QueueSpriteSFX2WithPan

|1E97D5| JSL GetRandomNumber
|1E97D9| AND.b #$04
|1E97DB| STA.b $0D

|1E97DD| LDA.b #$03
|1E97DF| STA.w $0FB5

.next_shard
|1E97E2| LDA.b #$A4 ; SPRITE A4
|1E97E4| JSL SpawnSpriteDynamically
|1E97E8| BMI .no_space

|1E97EA| JSL SetSpawnedSpriteCoordinates

|1E97EE| LDA.b #$01
|1E97F0| STA.w $0D80,Y
|1E97F3| STA.w $0DC0,Y
|1E97F6| STA.w $0DB0,Y

|1E97F9| LDA.b #$20
|1E97FB| STA.w $0F80,Y

|1E97FE| PHX

|1E97FF| LDA.w $0FB5
|1E9802| ORA.b $0D
|1E9804| TAX

|1E9805| LDA.w .speed_x,X
|1E9808| STA.w $0D50,Y

|1E980B| LDA.w .speed_y,X
|1E980E| STA.w $0D40,Y

|1E9811| PLX

|1E9812| LDA.b #$1C
|1E9814| STA.w $0F60,Y

.no_space
|1E9817| DEC.w $0FB5
|1E981A| BPL .next_shard

|1E981C| RTS

;===================================================================================================

Sprite_A1_Freezor:
|1E981D| JSL SpriteDraw_Freezor

|1E9821| LDA.w $0DD0,X
|1E9824| CMP.b #$09
|1E9826| BEQ .active_state

|1E9828| LDA.b #$03
|1E982A| STA.w $0D80,X

|1E982D| LDA.b #$1F
|1E982F| STA.w $0DF0,X
|1E9832| STA.w $0BA0,X

|1E9835| LDA.b #$09
|1E9837| STA.w $0DD0,X
|1E983A| STZ.w $0EF0,X

.active_state
|1E983D| JSR CheckIfActive_bank1E

|1E9840| LDA.w $0D80,X
|1E9843| CMP.b #$03
|1E9845| BEQ .ignore_recoil

|1E9847| JSR HandleSpriteRecoil_bank1E

.ignore_recoil
|1E984A| LDA.w $0D80,X
|1E984D| JSL JumpTableLocal
|1E9851| dw Freezor_Dormant
|1E9853| dw Freezor_Waking
|1E9855| dw Freezor_Flailing
|1E9857| dw ImMelllltiiiinnnnggggg

;===================================================================================================

Freezor_Dormant:
|1E9859| INC.w $0BA0,X

|1E985C| JSR GetXDisplacementFromLink_bank1E

|1E985F| LDA.b $0F
|1E9861| CLC
|1E9862| ADC.b #$10
|1E9864| CMP.b #$20
|1E9866| BCS .stay_asleep

|1E9868| INC.w $0D80,X

|1E986B| LDA.b #$20
|1E986D| STA.w $0DF0,X

.stay_asleep
|1E9870| RTS

;===================================================================================================

Freezor_Waking:
|1E9871| LDA.w $0DF0,X
|1E9874| STA.w $0BA0,X
|1E9877| BNE .still_shaking

|1E9879| INC.w $0D80,X

|1E987C| LDA.w $0D10,X
|1E987F| SEC
|1E9880| SBC.b #$05
|1E9882| STA.b $00

|1E9884| LDA.w $0D30,X
|1E9887| SBC.b #$00
|1E9889| STA.b $01

|1E988B| LDA.w $0D00,X
|1E988E| STA.b $02

|1E9890| LDA.w $0D20,X
|1E9893| STA.b $03

|1E9895| LDY.b #$08
|1E9897| JSL UpdateTilemapWithCommonObject

|1E989B| LDA.b #$60
|1E989D| STA.w $0E00,X

|1E98A0| LDA.b #$02
|1E98A2| STA.w $0DE0,X

|1E98A5| LDA.b #$50
|1E98A7| STA.w $0DF0,X

|1E98AA| RTS

.still_shaking
|1E98AB| AND.b #$01
|1E98AD| TAY

|1E98AE| LDA.w Sixteen_X,Y
|1E98B1| STA.w $0D50,X

|1E98B4| JSR MoveSpriteX_bank1E

|1E98B7| RTS

;===================================================================================================

pool Freezor_Flailing

.speed_x ; bleeds into next
|1E98B8| db   8,  -8

.speed_y
|1E98BA| db   0,   0,  18, -18

.anim_step
|1E98BE| db   1,   2,   1,   3

.sparkle_offset_low
|1E98C2| db  -4,  -2,   0,   2,   4,   6,   8,  10

.sparkle_offset_high
|1E98CA| db  -1,  -1,   0,   0,   0,   0,   0,   0

endpool

;---------------------------------------------------------------------------------------------------

Freezor_Flailing:
|1E98D2| JSR CheckDamageToLink_bank1E

|1E98D5| JSL CheckDamageFromLink_long
|1E98D9| BCC .no_damage

|1E98DB| STZ.w $0EF0,X

.no_damage
|1E98DE| LDA.w $0E00,X
|1E98E1| BEQ .dont_sparkle

|1E98E3| TXA
|1E98E4| EOR.b $1A
|1E98E6| AND.b #$07
|1E98E8| BNE .dont_sparkle

|1E98EA| JSL GetRandomNumber
|1E98EE| AND.b #$07
|1E98F0| TAY

|1E98F1| LDA.w .sparkle_offset_low,Y
|1E98F4| STA.b $00

|1E98F6| LDA.w .sparkle_offset_high,Y
|1E98F9| STA.b $01

|1E98FB| LDA.b #$FC
|1E98FD| STA.b $02

|1E98FF| LDA.b #$FF
|1E9901| STA.b $03

|1E9903| JSL GarnishSpawn_Sparkle

.dont_sparkle
|1E9907| LDA.w $0DF0,X
|1E990A| BNE .dont_turn

|1E990C| JSR GetDirectionTowardsLink_bank1E
|1E990F| TYA
|1E9910| STA.w $0DE0,X

.dont_turn
|1E9913| LDY.w $0DE0,X

|1E9916| LDA.w .speed_x,Y
|1E9919| STA.w $0D50,X

|1E991C| LDA.w .speed_y,Y
|1E991F| STA.w $0D40,X

|1E9922| LDA.w $0E70,X
|1E9925| AND.b #$0F
|1E9927| BNE .tile_collision

|1E9929| JSR MoveSpriteXY_bank1E

.tile_collision
|1E992C| JSR CheckSpriteTileCollision_bank1E

|1E992F| TXA
|1E9930| EOR.b $1A

|1E9932| LSR A
|1E9933| LSR A

|1E9934| AND.b #$03
|1E9936| TAY

|1E9937| LDA.w .anim_step,Y
|1E993A| STA.w $0DC0,X

|1E993D| RTS

;===================================================================================================

pool ImMelllltiiiinnnnggggg

.draw_step
|1E993E| db $06, $05, $04, $07

endpool

;---------------------------------------------------------------------------------------------------

ImMelllltiiiinnnnggggg:
|1E9942| LDA.w $0DF0,X
|1E9945| BNE .delay

|1E9947| PHA

|1E9948| JSL ManuallySetDeathFlagUW

|1E994C| STZ.w $0DD0,X

|1E994F| PLA

.delay
|1E9950| LSR A
|1E9951| LSR A
|1E9952| LSR A
|1E9953| TAY

|1E9954| LDA.w .draw_step,Y
|1E9957| STA.w $0DC0,X

|1E995A| RTS

;===================================================================================================

Sprite_9E_HauntedGroveOstrich:
|1E995B| JSR SpriteDraw_HauntedGroveOstrich
|1E995E| JSR CheckIfActive_bank1E

|1E9961| LDA.w $0D80,X
|1E9964| JSL JumpTableLocal
|1E9968| dw HauntedGroveOstrich_Idle
|1E996A| dw HauntedGroveOstrich_Flee

;===================================================================================================

HauntedGroveOstrich_Idle:
|1E996C| LDY.b #$00

|1E996E| LDA.b $1A
|1E9970| AND.b #$18
|1E9972| BEQ .default_anim

|1E9974| LDY.b #$03

.default_anim
|1E9976| TYA
|1E9977| STA.w $0DC0,X

|1E997A| LDA.w $0FDD
|1E997D| BEQ .dont_run

|1E997F| INC.w $0D80,X

|1E9982| LDA.b #$F8
|1E9984| STA.w $0D40,X

|1E9987| LDA.b #$F0
|1E9989| STA.w $0D50,X

.dont_run
|1E998C| RTS

;===================================================================================================

pool HauntedGroveOstrich_Flee

.anim_step
|1E998D| db $00, $01, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

HauntedGroveOstrich_Flee:
|1E9991| JSR MoveSpriteXYZ_bank1E

|1E9994| DEC.w $0F80,X
|1E9997| DEC.w $0F80,X

|1E999A| LDA.w $0F70,X
|1E999D| BPL .no_hop

|1E999F| LDA.b #$20
|1E99A1| STA.w $0F80,X

|1E99A4| STZ.w $0F70,X
|1E99A7| STZ.w $0E80,X
|1E99AA| STZ.w $0D90,X

.no_hop
|1E99AD| INC.w $0E80,X

|1E99B0| LDA.w $0E80,X
|1E99B3| AND.b #$07
|1E99B5| BNE .skip_anim_stepping

|1E99B7| LDA.w $0D90,X
|1E99BA| CMP.b #$03
|1E99BC| BEQ .skip_anim_stepping

|1E99BE| INC.w $0D90,X

.skip_anim_stepping
|1E99C1| LDY.w $0D90,X

|1E99C4| LDA.w .anim_step,Y
|1E99C7| STA.w $0DC0,X

|1E99CA| RTS

;===================================================================================================

pool SpriteDraw_HauntedGroveOstrich

.oam_groups
; group00
|1E99CB| dw  -4,  -8 : db $80, $00, $00, $02
|1E99D3| dw   4,  -8 : db $81, $00, $00, $02
|1E99DB| dw  -4,   8 : db $A3, $00, $00, $02
|1E99E3| dw   4,   8 : db $A4, $00, $00, $02

; group01
|1E99EB| dw  -4,  -8 : db $80, $00, $00, $02
|1E99F3| dw   4,  -8 : db $81, $00, $00, $02
|1E99FB| dw  -4,   8 : db $A0, $00, $00, $02
|1E9A03| dw   4,   8 : db $A1, $00, $00, $02

; group02
|1E9A0B| dw  -4,  -8 : db $80, $00, $00, $02
|1E9A13| dw   4,  -8 : db $81, $00, $00, $02
|1E9A1B| dw  -4,   8 : db $83, $00, $00, $02
|1E9A23| dw   4,   8 : db $84, $00, $00, $02

; group03
|1E9A2B| dw  -4,  -7 : db $80, $00, $00, $02
|1E9A33| dw   4,  -7 : db $81, $00, $00, $02
|1E9A3B| dw  -4,   9 : db $A3, $00, $00, $02
|1E9A43| dw   4,   9 : db $A4, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_HauntedGroveOstrich:
|1E9A4B| LDA.b #$00
|1E9A4D| XBA
|1E9A4E| LDA.w $0DC0,X

|1E9A51| REP #$20

|1E9A53| ASL A ; x32
|1E9A54| ASL A
|1E9A55| ASL A
|1E9A56| ASL A
|1E9A57| ASL A

|1E9A58| ADC.w #.oam_groups
|1E9A5B| STA.b $08

|1E9A5D| SEP #$20

|1E9A5F| LDA.b #$04
|1E9A61| JSR TabulatedSpriteDraw_bank1E

|1E9A64| LDA.b #$12
|1E9A66| JSL DrawSpriteShadow_custom_long

|1E9A6A| RTS

;===================================================================================================

HauntedGroveFlip:
|1E9A6B| db $40, $00

;===================================================================================================

Sprite_9F_HauntedGroveRabbit:
|1E9A6D| LDY.w $0DE0,X

|1E9A70| LDA.w $0F50,X
|1E9A73| AND.b #$BF
|1E9A75| ORA.w HauntedGroveFlip,Y
|1E9A78| STA.w $0F50,X

|1E9A7B| JSL SpriteDraw_SingleLarge_long

|1E9A7F| LDA.w $0D80,X
|1E9A82| JSL JumpTableLocal
|1E9A86| dw HauntedGroveRabbit_Idle
|1E9A88| dw HauntedGroveRabbit_Flee

;===================================================================================================

HauntedGroveRabbit_Idle:
|1E9A8A| LDA.b #$03
|1E9A8C| STA.w $0DC0,X

|1E9A8F| LDA.w $0FDD
|1E9A92| BEQ .exit

|1E9A94| INC.w $0D80,X

|1E9A97| LDA.w $0DE0,X
|1E9A9A| EOR.b #$01
|1E9A9C| STA.w $0DE0,X

|1E9A9F| TAY

|1E9AA0| LDA.w Sixteen_X,Y
|1E9AA3| STA.w $0D50,X

|1E9AA6| LDA.b #$F8
|1E9AA8| STA.w $0D40,X

.exit
|1E9AAB| RTS

;===================================================================================================

pool HauntedGroveRabbit_Flee

.anim_step
|1E9AAC| db $00, $01, $02

endpool

;---------------------------------------------------------------------------------------------------

HauntedGroveRabbit_Flee:
|1E9AAF| JSR MoveSpriteXYZ_bank1E

|1E9AB2| DEC.w $0F80,X
|1E9AB5| DEC.w $0F80,X
|1E9AB8| DEC.w $0F80,X

|1E9ABB| LDA.w $0F70,X
|1E9ABE| BPL .hopping

|1E9AC0| LDA.b #$18
|1E9AC2| STA.w $0F80,X

|1E9AC5| STZ.w $0F70,X
|1E9AC8| STZ.w $0E80,X
|1E9ACB| STZ.w $0D90,X

.hopping
|1E9ACE| INC.w $0E80,X

|1E9AD1| LDA.w $0E80,X
|1E9AD4| AND.b #$03
|1E9AD6| BNE .dont_step_anim

|1E9AD8| LDA.w $0D90,X
|1E9ADB| CMP.b #$02
|1E9ADD| BEQ .dont_step_anim

|1E9ADF| INC.w $0D90,X

.dont_step_anim
|1E9AE2| LDY.w $0D90,X

|1E9AE5| LDA.w .anim_step,Y
|1E9AE8| STA.w $0DC0,X

|1E9AEB| RTS

;===================================================================================================

Sprite_A0_HauntedGroveBird:
|1E9AEC| LDA.w $0DC0,X
|1E9AEF| CMP.b #$03
|1E9AF1| BNE .eyes_emoji

|1E9AF3| JSR HauntedGroveBird_Blink

.eyes_emoji
|1E9AF6| LDY.w $0DE0,X

|1E9AF9| LDA.w $0F50,X
|1E9AFC| AND.b #$BF
|1E9AFE| ORA.w HauntedGroveFlip,Y
|1E9B01| STA.w $0F50,X

|1E9B04| REP #$20

|1E9B06| LDA.b $90
|1E9B08| CLC
|1E9B09| ADC.w #$0004
|1E9B0C| STA.b $90

|1E9B0E| INC.b $92

|1E9B10| SEP #$20

|1E9B12| DEC.w $0E40,X

|1E9B15| JSL SpriteDraw_SingleLarge_long

|1E9B19| INC.w $0E40,X

|1E9B1C| JSR MoveSpriteXYZ_bank1E

|1E9B1F| LDA.w $0D80,X
|1E9B22| JSL JumpTableLocal
|1E9B26| dw HauntedGroveBird_Idle
|1E9B28| dw HauntedGroveBird_Ascending
|1E9B2A| dw HauntedGroveBird_Descending

;===================================================================================================

HauntedGroveBird_Idle:
|1E9B2C| LDY.b #$00

|1E9B2E| LDA.b $1A
|1E9B30| AND.b #$18
|1E9B32| BNE .keep_anim_step

|1E9B34| LDY.b #$03

.keep_anim_step
|1E9B36| TYA
|1E9B37| STA.w $0DC0,X

|1E9B3A| LDA.w $0FDD
|1E9B3D| BEQ .exit

|1E9B3F| INC.w $0D80,X

|1E9B42| LDA.w $0DE0,X
|1E9B45| EOR.b #$01
|1E9B47| STA.w $0DE0,X

|1E9B4A| TAY

|1E9B4B| LDA.w Sixteen_X,Y
|1E9B4E| STA.w $0D50,X

|1E9B51| LDA.b #$20
|1E9B53| STA.w $0DF0,X

|1E9B56| LDA.b #$10
|1E9B58| STA.w $0F80,X

|1E9B5B| LDA.b #$F8
|1E9B5D| STA.w $0D40,X

.exit
|1E9B60| RTS

;===================================================================================================

HauntedGroveBird_Ascending:
|1E9B61| LDA.w $0DF0,X
|1E9B64| BNE .dont_accel

|1E9B66| LDA.w $0F80,X
|1E9B69| CLC
|1E9B6A| ADC.b #$02
|1E9B6C| STA.w $0F80,X

|1E9B6F| CMP.b #$10
|1E9B71| BMI .dont_accel

|1E9B73| INC.w $0D80,X

.dont_accel
|1E9B76| INC.w $0E80,X

|1E9B79| LDA.w $0E80,X
|1E9B7C| LSR A
|1E9B7D| AND.b #$01

|1E9B7F| INC A
|1E9B80| STA.w $0DC0,X

|1E9B83| RTS

;===================================================================================================

HauntedGroveBird_Descending:
|1E9B84| LDA.b #$01
|1E9B86| STA.w $0DC0,X

|1E9B89| LDA.w $0F80,X
|1E9B8C| SEC
|1E9B8D| SBC.b #$01
|1E9B8F| STA.w $0F80,X

|1E9B92| CMP.b #$F1
|1E9B94| BPL .dont_decel

|1E9B96| DEC.w $0D80,X

.dont_decel
|1E9B99| RTS

;===================================================================================================

pool HauntedGroveBird_Blink

.offset_x
|1E9B9A| db  8,  0

endpool

;---------------------------------------------------------------------------------------------------

HauntedGroveBird_Blink:
|1E9B9C| JSR GetScreenCoordinates_bank1E

|1E9B9F| PHX

|1E9BA0| LDA.w $0DE0,X
|1E9BA3| TAX

|1E9BA4| LDA.b $00
|1E9BA6| CLC
|1E9BA7| ADC.w .offset_x,X
|1E9BAA| STA.b ($90),Y

|1E9BAC| LDA.b $02
|1E9BAE| INY
|1E9BAF| STA.b ($90),Y

|1E9BB1| LDA.b #$AE
|1E9BB3| INY
|1E9BB4| STA.b ($90),Y

|1E9BB6| LDA.b $05
|1E9BB8| ORA.w HauntedGroveFlip,X
|1E9BBB| INY
|1E9BBC| STA.b ($90),Y

|1E9BBE| PLX

|1E9BBF| LDY.b #$00
|1E9BC1| LDA.b #$00
|1E9BC3| JSL CorrectOAMEntries_long

|1E9BC7| RTS

;===================================================================================================
; Actually, both of these behave as babasu, but, in practice
; 9C is always a Zoro
; 9D is always a Babasu
;===================================================================================================
Sprite_9C_Zoro:
Sprite_9D_Babasu:
|1E9BC8| LDA.w $0E90,X
|1E9BCB| BNE Zoro

|1E9BCD| JMP.w Babasu

;===================================================================================================

Zoro:
|1E9BD0| LDA.w $0DB0,X
|1E9BD3| BNE .continue

; Flag as initialized
|1E9BD5| INC.w $0DB0,X

; Don't spawn if Link is above
|1E9BD8| JSR GetYDisplacementFromLink_bank1E

|1E9BDB| CPY.b #$00
|1E9BDD| BEQ .continue

|1E9BDF| STZ.w $0DD0,X

|1E9BE2| RTS

.continue
|1E9BE3| JSL SpriteDraw_SingleSmall_long
|1E9BE7| JSR CheckIfActive_bank1E
|1E9BEA| JSR CheckDamageToAndFromLink_bank1E

|1E9BED| INC.w $0E80,X

|1E9BF0| LDA.w $0E80,X
|1E9BF3| LSR A
|1E9BF4| AND.b #$01
|1E9BF6| STA.w $0DC0,X

|1E9BF9| LDA.w $0E80,X
|1E9BFC| LSR A
|1E9BFD| LSR A

|1E9BFE| AND.b #$01
|1E9C00| TAY

|1E9C01| LDA.w Sixteen_X,Y
|1E9C04| STA.w $0D50,X

|1E9C07| JSR MoveSpriteXY_bank1E

|1E9C0A| LDA.w $0DF0,X
|1E9C0D| BNE .dont_die

|1E9C0F| JSR CheckSpriteTileCollision_bank1E
|1E9C12| BEQ .dont_die

|1E9C14| STZ.w $0DD0,X

.dont_die
|1E9C17| LDA.w $0E80,X
|1E9C1A| AND.b #$03
|1E9C1C| BNE .exit

|1E9C1E| PHX
|1E9C1F| TXY

|1E9C20| LDX.b #$1D

.next_slot
|1E9C22| LDA.l $7FF800,X
|1E9C26| BEQ .spawn_garnish

|1E9C28| DEX
|1E9C29| BPL .next_slot

|1E9C2B| PLX

.exit
|1E9C2C| RTS

;---------------------------------------------------------------------------------------------------

.spawn_garnish
|1E9C2D| LDA.b #$06 ; GARNISH 06
|1E9C2F| STA.l $7FF800,X
|1E9C33| STA.w $0FB4

|1E9C36| LDA.w $0D10,Y
|1E9C39| STA.l $7FF83C,X

|1E9C3D| LDA.w $0D30,Y
|1E9C40| STA.l $7FF878,X

|1E9C44| LDA.w $0D00,Y
|1E9C47| CLC
|1E9C48| ADC.b #$10
|1E9C4A| STA.l $7FF81E,X

|1E9C4E| LDA.w $0D20,Y
|1E9C51| ADC.b #$00
|1E9C53| STA.l $7FF85A,X

|1E9C57| LDA.b #$0A
|1E9C59| STA.l $7FF90E,X

|1E9C5D| TYA
|1E9C5E| STA.l $7FF92C,X

|1E9C62| LDA.w $0F20,Y
|1E9C65| STA.l $7FF968,X

|1E9C69| PLX

|1E9C6A| RTS

;===================================================================================================

Babasu:
|1E9C6B| JSL SpriteDraw_Babasu
|1E9C6F| JSR CheckIfActive_bank1E

|1E9C72| LDA.w $0D80,X
|1E9C75| JSL JumpTableLocal
|1E9C79| dw Babasu_Reset
|1E9C7B| dw Babasu_Hidden
|1E9C7D| dw Babasu_Telegraph
|1E9C7F| dw Babasu_Dart

;===================================================================================================

Babasu_Reset:
|1E9C81| INC.w $0D80,X

|1E9C84| LDA.b #$80
|1E9C86| STA.w $0DF0,X

|1E9C89| LDA.b #$FF
|1E9C8B| STA.w $0DC0,X

|1E9C8E| RTS

;===================================================================================================

Babasu_Hidden:
|1E9C8F| LDA.w $0DF0,X
|1E9C92| BNE .exit

|1E9C94| INC.w $0D80,X

|1E9C97| LDA.b #$37
|1E9C99| STA.w $0DF0,X

.exit
|1E9C9C| RTS

;===================================================================================================

pool Babasu_Telegraph

.anim
|1E9C9D| db $05, $04, $03, $02, $01, $00

.anim_offset
|1E9CA3| db $06, $06, $00, $00

.speed_x ; bleeds into next
|1E9CA7| db  32, -32

.speed_y
|1E9CA9| db   0,   0,  32, -32

endpool

;---------------------------------------------------------------------------------------------------

Babasu_Telegraph:
|1E9CAD| LDA.w $0DF0,X
|1E9CB0| BNE .delay

|1E9CB2| PHA

|1E9CB3| INC.w $0D80,X

|1E9CB6| LDY.w $0DE0,X

|1E9CB9| LDA.w .speed_x,Y
|1E9CBC| STA.w $0D50,X

|1E9CBF| LDA.w .speed_y,Y
|1E9CC2| STA.w $0D40,X

|1E9CC5| LDA.b #$20
|1E9CC7| STA.w $0DF0,X

|1E9CCA| PLA

;---------------------------------------------------------------------------------------------------

.delay
|1E9CCB| CMP.b #$20
|1E9CCD| BCC .hide

|1E9CCF| SBC.b #$20
|1E9CD1| LSR A
|1E9CD2| LSR A
|1E9CD3| TAY

|1E9CD4| LDA.w .anim,Y
|1E9CD7| LDY.w $0DE0,X

|1E9CDA| CLC
|1E9CDB| ADC.w .anim_offset,Y
|1E9CDE| STA.w $0DC0,X

|1E9CE1| RTS

.hide
|1E9CE2| LDA.b #$FF
|1E9CE4| STA.w $0DC0,X

|1E9CE7| RTS

;===================================================================================================

pool Babasu_Dart

.anim_step
|1E9CE8| db $12, $0E, $0C, $10

endpool

;---------------------------------------------------------------------------------------------------

Babasu_Dart:
|1E9CEC| JSR CheckDamageToAndFromLink_bank1E
|1E9CEF| JSR MoveSpriteXY_bank1E

|1E9CF2| LDA.b $1A
|1E9CF4| LSR A
|1E9CF5| AND.b #$01

|1E9CF7| LDY.w $0DE0,X

|1E9CFA| CLC
|1E9CFB| ADC.w .anim_step,Y
|1E9CFE| STA.w $0DC0,X

|1E9D01| LDA.w $0DF0,X
|1E9D04| BNE .exit

|1E9D06| JSR CheckSpriteTileCollision_bank1E
|1E9D09| BEQ .exit

|1E9D0B| LDA.w $0DE0,X
|1E9D0E| EOR.b #$01
|1E9D10| STA.w $0DE0,X

|1E9D13| STZ.w $0D80,X

.exit
|1E9D16| RTS

;===================================================================================================

UNREACHABLE_1E9D17:
|1E9D17| db $03, $43, $C3, $83

;===================================================================================================

Sprite_9B_Wizzrobe:
|1E9D1B| LDA.w $0DB0,X
|1E9D1E| BEQ Wizzrobe

;===================================================================================================

WizzrobeBeam:
|1E9D20| JSL SpriteDraw_WizzrobeBeam
|1E9D24| JSR CheckIfActive_bank1E

|1E9D27| LDA.w $0F50,X
|1E9D2A| EOR.b #$06
|1E9D2C| STA.w $0F50,X

|1E9D2F| INC.w $0E80,X

|1E9D32| LDA.w $0D80,X
|1E9D35| BNE .harmless

|1E9D37| JSR CheckDamageToLink_bank1E

.harmless
|1E9D3A| JSR MoveSpriteXY_bank1E
|1E9D3D| JSR CheckSpriteTileCollision_bank1E
|1E9D40| BEQ .exit

|1E9D42| STZ.w $0DD0,X

.exit
|1E9D45| RTS

;===================================================================================================

Wizzrobe:
|1E9D46| LDA.w $0D80,X
|1E9D49| BEQ .no_draw

|1E9D4B| AND.b #$01
|1E9D4D| BEQ .do_draw

|1E9D4F| LDA.w $0DF0,X
|1E9D52| AND.b #$01
|1E9D54| BEQ .do_draw

.no_draw
|1E9D56| JSL GetScreenCoordinates_long
|1E9D5A| BRA .continue

.do_draw
|1E9D5C| JSL SpriteDraw_Wizzrobe

.continue
|1E9D60| JSR CheckIfActive_bank1E
|1E9D63| JSR HandleSpriteRecoil_bank1E

|1E9D66| LDA.b #$01
|1E9D68| STA.w $0BA0,X

|1E9D6B| LDA.w $0D80,X
|1E9D6E| JSL JumpTableLocal
|1E9D72| dw Wizzrobe_Invisible
|1E9D74| dw Wizzrobe_Appear
|1E9D76| dw Wizzrobe_Attack
|1E9D78| dw Wizzrobe_Disappear

;===================================================================================================

pool Wizzrobe_Invisible

.anim_step
|1E9D7A| db $04, $02, $00, $06

endpool

;---------------------------------------------------------------------------------------------------

Wizzrobe_Invisible:
|1E9D7E| LDA.w $0DF0,X
|1E9D81| BNE .exit

|1E9D83| LDA.b #$01
|1E9D85| STA.w $0D50,X
|1E9D88| STA.w $0D40,X

|1E9D8B| JSR CheckSpriteTileCollision_bank1E
|1E9D8E| BNE .die

|1E9D90| INC.w $0D80,X

|1E9D93| LDA.b #$3F
|1E9D95| STA.w $0DF0,X

|1E9D98| JSR GetDirectionTowardsLink_bank1E
|1E9D9B| TYA
|1E9D9C| STA.w $0DE0,X

|1E9D9F| LDA.w .anim_step,Y
|1E9DA2| STA.w $0DC0,X

|1E9DA5| RTS

.die
|1E9DA6| STZ.w $0DD0,X

.exit
|1E9DA9| RTS

;===================================================================================================

Wizzrobe_Appear:
|1E9DAA| LDA.w $0DF0,X
|1E9DAD| BNE .exit

|1E9DAF| INC.w $0D80,X

|1E9DB2| LDA.b #$3F
|1E9DB4| STA.w $0DF0,X

.exit
|1E9DB7| RTS

;===================================================================================================

pool Wizzrobe_Attack

.anim_step
|1E9DB8| db $00, $01
|1E9DBA| db $01, $01
|1E9DBC| db $01, $01
|1E9DBE| db $01, $00

.anim_direction_offset
|1E9DC0| db $04, $02, $00, $06

endpool

;---------------------------------------------------------------------------------------------------

Wizzrobe_Attack:
|1E9DC4| STZ.w $0BA0,X

|1E9DC7| JSR CheckDamageToAndFromLink_bank1E

|1E9DCA| LDA.w $0DF0,X
|1E9DCD| BNE .wait

|1E9DCF| INC.w $0D80,X

|1E9DD2| LDA.b #$3F
|1E9DD4| STA.w $0DF0,X

|1E9DD7| RTS

.wait
|1E9DD8| CMP.b #$20
|1E9DDA| BNE .delay_beam

|1E9DDC| PHA

|1E9DDD| JSR Wizzrobe_FireBeam

|1E9DE0| PLA

.delay_beam
|1E9DE1| LSR A
|1E9DE2| LSR A
|1E9DE3| LSR A
|1E9DE4| TAY

|1E9DE5| LDA.w .anim_step,Y

|1E9DE8| LDY.w $0DE0,X

|1E9DEB| CLC
|1E9DEC| ADC.w .anim_direction_offset,Y
|1E9DEF| STA.w $0DC0,X

|1E9DF2| RTS

;===================================================================================================

Wizzrobe_Disappear:
|1E9DF3| LDA.w $0DF0,X
|1E9DF6| BNE .exit

; Used by overlords to flag temporary wizzrobes
|1E9DF8| LDA.w $0DA0,X
|1E9DFB| BEQ .dont_die

|1E9DFD| STZ.w $0DD0,X

.dont_die
|1E9E00| STZ.w $0D80,X

|1E9E03| JSL GetRandomNumber
|1E9E07| AND.b #$1F
|1E9E09| ADC.b #$20
|1E9E0B| STA.w $0DF0,X

.exit
|1E9E0E| RTS

;===================================================================================================

pool Wizzrobe_FireBeam

.speed_x ; bleeds into next
|1E9E0F| db  32, -32

.speed_y
|1E9E11| db   0,   0,  32, -32

endpool

;---------------------------------------------------------------------------------------------------

Wizzrobe_FireBeam:
|1E9E15| LDA.b #$9B ; SPRITE 9B
|1E9E17| JSL SpawnSpriteDynamically
|1E9E1B| BMI .no_space

|1E9E1D| LDA.b #$36 ; SFX3.36
|1E9E1F| JSL QueueSpriteSFX3WithPan

|1E9E23| LDA.b #$01
|1E9E25| STA.w $0DB0,Y
|1E9E28| STA.w $0BA0,Y

|1E9E2B| LDA.b $00
|1E9E2D| CLC
|1E9E2E| ADC.b #$04
|1E9E30| STA.w $0D10,Y

|1E9E33| LDA.b $01
|1E9E35| ADC.b #$00
|1E9E37| STA.w $0D30,Y

|1E9E3A| LDA.b $02
|1E9E3C| CLC
|1E9E3D| ADC.b #$00
|1E9E3F| STA.w $0D00,Y

|1E9E42| LDA.b $03
|1E9E44| ADC.b #$00
|1E9E46| STA.w $0D20,Y

|1E9E49| PHX

|1E9E4A| LDA.w $0DE0,X
|1E9E4D| TAX

|1E9E4E| LDA.w .speed_x,X
|1E9E51| STA.w $0D50,Y

|1E9E54| LDA.w .speed_y,X
|1E9E57| STA.w $0D40,Y

|1E9E5A| LDA.b #$48
|1E9E5C| STA.w $0CAA,Y

|1E9E5F| LDA.b #$02
|1E9E61| STA.w $0F50,Y

|1E9E64| LDA.l $7EF35A
|1E9E68| TAX

|1E9E69| LDA.b #$00
|1E9E6B| CPX.b #$03
|1E9E6D| BNE .not_blockable

|1E9E6F| LDA.b #$20

.not_blockable
|1E9E71| STA.w $0BE0,Y

|1E9E74| PLX

|1E9E75| LDA.b #$14
|1E9E77| STA.w $0F60,Y

.no_space
|1E9E7A| RTS

;===================================================================================================

Sprite_9A_Kyameron:
|1E9E7B| LDA.w $0D80,X
|1E9E7E| BNE .visible

|1E9E80| JSL GetScreenCoordinates_long
|1E9E84| BRA .not_visible

.visible
|1E9E86| JSR SpriteDraw_Kyameron

.not_visible
|1E9E89| JSR CheckIfActive_bank1E
|1E9E8C| JSR HandleSpriteRecoil_bank1E

|1E9E8F| LDA.b #$01
|1E9E91| STA.w $0BA0,X

|1E9E94| LDA.w $0D80,X
|1E9E97| JSL JumpTableLocal
|1E9E9B| dw Kyameron_Reset
|1E9E9D| dw Kyameron_Puddle
|1E9E9F| dw Kyameron_BuildUp
|1E9EA1| dw Kyameron_Moving
|1E9EA3| dw Kyameron_Dissipate

;===================================================================================================

Kyameron_Reset:
|1E9EA5| LDA.w $0DF0,X
|1E9EA8| BNE .exit

|1E9EAA| INC.w $0D80,X

|1E9EAD| JSL GetRandomNumber
|1E9EB1| AND.b #$3F
|1E9EB3| ADC.b #$60
|1E9EB5| STA.w $0DF0,X

|1E9EB8| LDA.w $0D90,X
|1E9EBB| STA.w $0D10,X

|1E9EBE| LDA.w $0DA0,X
|1E9EC1| STA.w $0D30,X

|1E9EC4| LDA.w $0DB0,X
|1E9EC7| STA.w $0D00,X

|1E9ECA| LDA.w $0EB0,X
|1E9ECD| STA.w $0D20,X

|1E9ED0| LDA.b #$05
|1E9ED2| STA.w $0E80,X

|1E9ED5| LDA.b #$08
|1E9ED7| STA.w $0DC0,X

.exit
|1E9EDA| RTS

;===================================================================================================

Kyameron_Puddle:
|1E9EDB| LDA.w $0DF0,X
|1E9EDE| BNE .delay

|1E9EE0| LDA.b #$1F
|1E9EE2| STA.w $0DF0,X

|1E9EE5| INC.w $0D80,X

.delay
|1E9EE8| DEC.w $0E80,X
|1E9EEB| BPL .exit

|1E9EED| LDA.b #$05
|1E9EEF| STA.w $0E80,X

|1E9EF2| INC.w $0DC0,X

|1E9EF5| LDA.w $0DC0,X
|1E9EF8| AND.b #$03
|1E9EFA| CLC
|1E9EFB| ADC.b #$08
|1E9EFD| STA.w $0DC0,X

.exit
|1E9F00| RTS

;===================================================================================================

pool Kyameron_BuildUp

.anim_step
|1E9F01| db $04, $07, $0E, $0D, $0C, $06, $06, $05

.speed_x
|1E9F09| db  32, -32,  32, -32

.speed_y
|1E9F0D| db  32,  32, -32, -32

endpool

;---------------------------------------------------------------------------------------------------

Kyameron_BuildUp:
|1E9F11| LDA.w $0DF0,X
|1E9F14| BNE .delay

|1E9F16| INC.w $0D80,X

|1E9F19| JSR GetYDisplacementFromLink_bank1E
|1E9F1C| TYA
|1E9F1D| ASL A
|1E9F1E| STA.b $00

|1E9F20| JSR GetXDisplacementFromLink_bank1E
|1E9F23| TYA
|1E9F24| ORA.b $00
|1E9F26| TAY

|1E9F27| LDA.w .speed_x,Y
|1E9F2A| STA.w $0D50,X

|1E9F2D| LDA.w .speed_y,Y
|1E9F30| STA.w $0D40,X

|1E9F33| RTS

;---------------------------------------------------------------------------------------------------

.delay
|1E9F34| CMP.b #$07
|1E9F36| BNE .dont_move_upwards

|1E9F38| PHA

|1E9F39| LDA.w $0D00,X
|1E9F3C| SEC
|1E9F3D| SBC.b #$1D
|1E9F3F| STA.w $0D00,X

|1E9F42| LDA.w $0D20,X
|1E9F45| SBC.b #$00
|1E9F47| STA.w $0D20,X

|1E9F4A| PLA

.dont_move_upwards
|1E9F4B| LSR A
|1E9F4C| LSR A
|1E9F4D| TAY

|1E9F4E| LDA.w .anim_step,Y
|1E9F51| STA.w $0DC0,X

|1E9F54| RTS

;===================================================================================================

pool Kyameron_Moving

.anim_step
|1E9F55| db $03, $02, $01, $00

endpool

;---------------------------------------------------------------------------------------------------

Kyameron_Moving:
|1E9F59| STZ.w $0BA0,X

|1E9F5C| JSR CheckDamageToAndFromLink_bank1E
|1E9F5F| BCS .damage

|1E9F61| JSR MoveSpriteXY_bank1E
|1E9F64| JSR CheckSpriteTileCollision_bank1E
|1E9F67| AND.b #$03
|1E9F69| BEQ .no_horizontal_collision

|1E9F6B| LDA.w $0D50,X
|1E9F6E| EOR.b #$FF
|1E9F70| INC A
|1E9F71| STA.w $0D50,X

|1E9F74| INC.w $0EC0,X
|1E9F77| BRA .no_horizontal_collision ; useless

.no_horizontal_collision
|1E9F79| LDA.w $0E70,X
|1E9F7C| AND.b #$0C
|1E9F7E| BEQ .no_vertical_collision

|1E9F80| LDA.w $0D40,X
|1E9F83| EOR.b #$FF
|1E9F85| INC A
|1E9F86| STA.w $0D40,X

|1E9F89| INC.w $0EC0,X

.no_vertical_collision
; Bounce counter TODO document more things
|1E9F8C| LDA.w $0EC0,X
|1E9F8F| CMP.b #$03
|1E9F91| BCC .can_bounce_more

.damage
|1E9F93| LDA.b #$04
|1E9F95| STA.w $0D80,X

|1E9F98| LDA.b #$0F
|1E9F9A| STA.w $0DF0,X

|1E9F9D| LDA.b #$28 ; SFX2.28
|1E9F9F| JSL QueueSpriteSFX2WithPan

.can_bounce_more
|1E9FA3| INC.w $0E80,X

|1E9FA6| LDA.w $0E80,X
|1E9FA9| LSR A
|1E9FAA| LSR A
|1E9FAB| LSR A

|1E9FAC| AND.b #$03
|1E9FAE| TAY

|1E9FAF| LDA.w .anim_step,Y
|1E9FB2| STA.w $0DC0,X

; sparkles on a frame rule
|1E9FB5| TXA
|1E9FB6| EOR.b $1A
|1E9FB8| AND.b #$07
|1E9FBA| BNE .exit

|1E9FBC| JSL GetRandomNumber

|1E9FC0| REP #$20

|1E9FC2| AND.w #$000F
|1E9FC5| SEC
|1E9FC6| SBC.w #$0004
|1E9FC9| STA.b $00

|1E9FCB| SEP #$20

|1E9FCD| JSL GetRandomNumber

|1E9FD1| REP #$20

|1E9FD3| AND.w #$000F
|1E9FD6| SEC
|1E9FD7| SBC.w #$0004
|1E9FDA| STA.b $02

|1E9FDC| SEP #$20

|1E9FDE| JSL GarnishSpawn_Sparkle

.exit
|1E9FE2| RTS

;===================================================================================================

Kyameron_Dissipate:
|1E9FE3| LDA.w $0DF0,X
|1E9FE6| BNE .still_being_dramatic_about_the_ordeal

|1E9FE8| STZ.w $0EC0,X
|1E9FEB| STZ.w $0D80,X
|1E9FEE| STZ.w $0F70,X

|1E9FF1| LDA.b #$40
|1E9FF3| STA.w $0DF0,X

|1E9FF6| RTS

.still_being_dramatic_about_the_ordeal
|1E9FF7| LSR A
|1E9FF8| LSR A
|1E9FF9| TAY

|1E9FFA| CLC
|1E9FFB| ADC.b #$0F
|1E9FFD| STA.w $0DC0,X

|1EA000| RTS

;===================================================================================================

GarnishSpawn_Sparkle_limited:
|1EA001| PHX
|1EA002| TXY

|1EA003| LDX.b #$0E
|1EA005| BRA .check_slot

;===================================================================================================

#GarnishSpawn_Sparkle:
|1EA007| PHX
|1EA008| TXY

|1EA009| LDX.b #$1D

.check_slot
|1EA00B| LDA.l $7FF800,X
|1EA00F| BEQ .free_slot

|1EA011| DEX
|1EA012| BPL .check_slot

|1EA014| STX.b $0F

|1EA016| PLX

|1EA017| RTL

;---------------------------------------------------------------------------------------------------

.free_slot
|1EA018| STX.b $0F

|1EA01A| LDA.b #$05 ; GARNISH 05
|1EA01C| STA.l $7FF800,X
|1EA020| STA.w $0FB4

|1EA023| LDA.w $0D10,Y
|1EA026| CLC
|1EA027| ADC.b $00
|1EA029| STA.l $7FF83C,X

|1EA02D| LDA.w $0D30,Y
|1EA030| ADC.b $01
|1EA032| STA.l $7FF878,X

|1EA036| LDA.w $0D00,Y
|1EA039| SEC
|1EA03A| SBC.w $0F70,Y
|1EA03D| PHP

|1EA03E| CLC
|1EA03F| ADC.b #$10
|1EA041| PHP

|1EA042| CLC
|1EA043| ADC.b $02
|1EA045| STA.l $7FF81E,X

|1EA049| LDA.w $0D20,Y
|1EA04C| ADC.b $03

|1EA04E| PLP
|1EA04F| ADC.b #$00

|1EA051| PLP
|1EA052| SBC.b #$00

|1EA054| STA.l $7FF85A,X

|1EA058| LDA.b #$1F
|1EA05A| STA.l $7FF90E,X

|1EA05E| TYA
|1EA05F| STA.l $7FF92C,X

|1EA063| LDA.w $0F20,Y
|1EA066| STA.l $7FF968,X

|1EA06A| PLX

|1EA06B| RTL

;===================================================================================================

pool SpriteDraw_Kyameron

.oam_groups
; group00
|1EA06C| dw   1,   8 : db $B4, $00, $00, $00
|1EA074| dw   7,   8 : db $B5, $00, $00, $00
|1EA07C| dw   4,  -3 : db $86, $00, $00, $00
|1EA084| dw   0, -13 : db $A2, $80, $00, $02

; group01
|1EA08C| dw   2,   8 : db $B4, $00, $00, $00
|1EA094| dw   6,   8 : db $B5, $00, $00, $00
|1EA09C| dw   4,  -6 : db $96, $00, $00, $00
|1EA0A4| dw   0, -20 : db $A2, $00, $00, $02

; group02
|1EA0AC| dw   4,  -1 : db $96, $00, $00, $00
|1EA0B4| dw   0, -27 : db $A2, $00, $00, $02
|1EA0BC| dw   0, -27 : db $A2, $00, $00, $02
|1EA0C4| dw   0, -27 : db $A2, $00, $00, $02

; group03
|1EA0CC| dw  -6,  -6 : db $DF, $01, $00, $00
|1EA0D4| dw  14,  -6 : db $DF, $41, $00, $00
|1EA0DC| dw  -6,  14 : db $DF, $81, $00, $00
|1EA0E4| dw  14,  14 : db $DF, $C1, $00, $00

; group04
|1EA0EC| dw  -6,  -6 : db $96, $00, $00, $00
|1EA0F4| dw  14,  -6 : db $96, $40, $00, $00
|1EA0FC| dw  -6,  14 : db $96, $80, $00, $00
|1EA104| dw  14,  14 : db $96, $C0, $00, $00

; group05
|1EA10C| dw  -4,  -4 : db $8D, $01, $00, $00
|1EA114| dw  12,  -4 : db $8D, $41, $00, $00
|1EA11C| dw  -4,  12 : db $8D, $81, $00, $00
|1EA124| dw  12,  12 : db $8D, $C1, $00, $00

; group06
|1EA12C| dw   0,   0 : db $8D, $01, $00, $00
|1EA134| dw   8,   0 : db $8D, $41, $00, $00
|1EA13C| dw   0,   8 : db $8D, $81, $00, $00
|1EA144| dw   8,   8 : db $8D, $C1, $00, $00

;---------------------------------------------------------------------------------------------------

.flip
|1EA14C| db $40, $00
|1EA14E| db $00, $00
|1EA150| db $00, $00
|1EA152| db $00, $00
|1EA154| db $00, $40
|1EA156| db $C0, $80

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Kyameron:
|1EA158| LDA.w $0DC0,X
|1EA15B| CMP.b #$0C
|1EA15D| BCS .dispersing

|1EA15F| LDY.w $0DC0,X

|1EA162| LDA.w $0F50,X
|1EA165| PHA

|1EA166| AND.b #$3F
|1EA168| ORA.w .flip,Y
|1EA16B| STA.w $0F50,X

|1EA16E| JSL SpriteDraw_SingleLarge_long

|1EA172| PLA
|1EA173| STA.w $0F50,X

|1EA176| RTS

.dispersing
|1EA177| SEC
|1EA178| SBC.b #$0C
|1EA17A| TAY

; Why clog Y when you could have just done a couple more XBA?
|1EA17B| LDA.b #$00
|1EA17D| XBA

|1EA17E| TYA

|1EA17F| REP #$20

|1EA181| ASL A ; x32
|1EA182| ASL A
|1EA183| ASL A
|1EA184| ASL A
|1EA185| ASL A

|1EA186| ADC.w #.oam_groups
|1EA189| STA.b $08

|1EA18B| SEP #$20

|1EA18D| LDA.b #$04
|1EA18F| JMP.w TabulatedSpriteDraw_bank1E

;===================================================================================================

pool Sprite_99_Pengator

.anim_step
|1EA192| db $05, $00, $0A, $0F

endpool

;---------------------------------------------------------------------------------------------------

Sprite_99_Pengator:
|1EA196| LDY.w $0DE0,X

|1EA199| LDA.w $0D90,X
|1EA19C| CLC
|1EA19D| ADC.w .anim_step,Y
|1EA1A0| STA.w $0DC0,X

|1EA1A3| JSR SpriteDraw_Pengator

|1EA1A6| LDA.w $0EA0,X
|1EA1A9| BNE .recoiling

|1EA1AB| LDA.w $0E70,X
|1EA1AE| AND.b #$0F
|1EA1B0| BEQ .no_tile_collision

.recoiling
|1EA1B2| STZ.w $0D80,X
|1EA1B5| STZ.w $0D50,X
|1EA1B8| STZ.w $0D40,X

.no_tile_collision
|1EA1BB| JSR CheckIfActive_bank1E
|1EA1BE| JSR HandleSpriteRecoil_bank1E
|1EA1C1| JSR CheckDamageToAndFromLink_bank1E
|1EA1C4| JSR MoveSpriteXYZ_bank1E

|1EA1C7| DEC.w $0F80,X
|1EA1CA| DEC.w $0F80,X

|1EA1CD| LDA.w $0F70,X
|1EA1D0| BPL .airborne

|1EA1D2| STZ.w $0F80,X
|1EA1D5| STZ.w $0F70,X

.airborne
|1EA1D8| JSR CheckSpriteTileCollision_bank1E

|1EA1DB| LDA.w $0D80,X
|1EA1DE| JSL JumpTableLocal
|1EA1E2| dw Pengator_FaceLink
|1EA1E4| dw Pengator_Accelerate
|1EA1E6| dw Pengator_Hop
|1EA1E8| dw Pengator_Slide

;===================================================================================================

Pengator_FaceLink:
|1EA1EA| JSR GetDirectionTowardsLink_bank1E
|1EA1ED| TYA
|1EA1EE| STA.w $0DE0,X

|1EA1F1| INC.w $0D80,X

|1EA1F4| RTS

;===================================================================================================

pool Pengator_Accelerate

.speed_x ; bleeds into next
|1EA1F5| db  1, -1

.speed_y
|1EA1F7| db  0,  0,  1, -1

endpool

;---------------------------------------------------------------------------------------------------

Pengator_Accelerate:
|1EA1FB| TXA
|1EA1FC| EOR.b $1A
|1EA1FE| AND.b #$03
|1EA200| BNE .continue

|1EA202| STZ.b $00

|1EA204| LDY.w $0DE0,X

|1EA207| LDA.w $0D50,X
|1EA20A| CMP.w Sixteen_X,Y
|1EA20D| BEQ .at_max_x

|1EA20F| CLC
|1EA210| ADC.w .speed_x,Y
|1EA213| STA.w $0D50,X

|1EA216| INC.b $00

.at_max_x
|1EA218| LDA.w $0D40,X
|1EA21B| CMP.w Sixteen_Y,Y
|1EA21E| BEQ .at_max_y

|1EA220| CLC
|1EA221| ADC.w .speed_y,Y
|1EA224| STA.w $0D40,X

|1EA227| INC.b $00

.at_max_y
|1EA229| LDA.b $00
|1EA22B| BNE .continue

|1EA22D| LDA.b #$0F
|1EA22F| STA.w $0DF0,X

|1EA232| INC.w $0D80,X

.continue
|1EA235| LDA.b $1A
|1EA237| AND.b #$04
|1EA239| LSR A
|1EA23A| LSR A
|1EA23B| TAY ; useless

|1EA23C| STA.w $0D90,X

|1EA23F| RTS

;===================================================================================================

pool Pengator_Hop

.anim_step
|1EA240| db $04, $04, $03, $02

endpool

;---------------------------------------------------------------------------------------------------

Pengator_Hop:
|1EA244| LDA.w $0DF0,X
|1EA247| BNE .delay

|1EA249| INC.w $0D80,X

.delay
|1EA24C| CMP.b #$05
|1EA24E| BNE .no_hop

|1EA250| PHA

|1EA251| LDA.b #$18
|1EA253| STA.w $0F80,X

|1EA256| PLA

.no_hop
|1EA257| LSR A
|1EA258| LSR A
|1EA259| TAY

|1EA25A| LDA.w .anim_step,Y
|1EA25D| STA.w $0D90,X

|1EA260| RTS

;===================================================================================================

pool Pengator_Slide

.sparkle_offset_x
|1EA261| db  8, 10, 12, 14, 12, 12, 12, 12

.sparkle_offset_y
|1EA269| db  4,  4,  4,  4,  0,  4,  8, 12

endpool

;---------------------------------------------------------------------------------------------------

Pengator_Slide:
|1EA271| TXA
|1EA272| EOR.b $1A
|1EA274| AND.b #$07
|1EA276| ORA.w $0F70,X
|1EA279| BNE .exit

|1EA27B| LDA.w $0DE0,X
|1EA27E| STA.b $06

|1EA280| JSL GetRandomNumber
|1EA284| AND.b #$03
|1EA286| TAY

|1EA287| LDA.b $06
|1EA289| CMP.b #$02
|1EA28B| BCC .facing_vertical

|1EA28D| INY ; +4
|1EA28E| INY
|1EA28F| INY
|1EA290| INY

.facing_vertical
|1EA291| LDA.w .sparkle_offset_y,Y
|1EA294| STA.b $00
|1EA296| STZ.b $01

|1EA298| JSL GetRandomNumber

|1EA29C| AND.b #$03
|1EA29E| TAY

|1EA29F| LDA.b $06
|1EA2A1| CMP.b #$02
|1EA2A3| BCC .facing_vertical_also

|1EA2A5| INY ; +4
|1EA2A6| INY
|1EA2A7| INY
|1EA2A8| INY

.facing_vertical_also
|1EA2A9| LDA.w .sparkle_offset_x,Y
|1EA2AC| STA.b $02
|1EA2AE| STZ.b $03

|1EA2B0| JSL GarnishSpawn_Sparkle_limited

.exit
|1EA2B4| RTS

;===================================================================================================

pool SpriteDraw_Pengator

.oam_group_set_1
; group00
|1EA2B5| dw  -1,  -8 : db $82, $00, $00, $02
|1EA2BD| dw   0,   0 : db $88, $00, $00, $02

; group01
|1EA2C5| dw  -1,  -7 : db $82, $00, $00, $02
|1EA2CD| dw   0,   0 : db $8A, $00, $00, $02

; group02
|1EA2D5| dw  -3,  -6 : db $82, $00, $00, $02
|1EA2DD| dw   0,   0 : db $88, $00, $00, $02

; group03
|1EA2E5| dw  -6,  -4 : db $82, $00, $00, $02
|1EA2ED| dw   0,   0 : db $8A, $00, $00, $02

; group04
|1EA2F5| dw  -4,   0 : db $A2, $00, $00, $02
|1EA2FD| dw   4,   0 : db $A3, $00, $00, $02

; group05
|1EA305| dw   1,  -8 : db $82, $40, $00, $02
|1EA30D| dw   0,   0 : db $88, $40, $00, $02

; group06
|1EA315| dw   1,  -7 : db $82, $40, $00, $02
|1EA31D| dw   0,   0 : db $8A, $40, $00, $02

; group07
|1EA325| dw   3,  -6 : db $82, $40, $00, $02
|1EA32D| dw   0,   0 : db $88, $40, $00, $02

; group08
|1EA335| dw   6,  -4 : db $82, $40, $00, $02
|1EA33D| dw   0,   0 : db $8A, $40, $00, $02

; group09
|1EA345| dw   4,   0 : db $A2, $40, $00, $02
|1EA34D| dw  -4,   0 : db $A3, $40, $00, $02

; group0A
|1EA355| dw   0,  -7 : db $80, $00, $00, $02
|1EA35D| dw   0,   0 : db $86, $00, $00, $02

; group0B
|1EA365| dw   0,  -7 : db $80, $40, $00, $02
|1EA36D| dw   0,   0 : db $86, $40, $00, $02

; group0C
|1EA375| dw   0,  -4 : db $80, $00, $00, $02
|1EA37D| dw   0,   0 : db $86, $00, $00, $02

; group0D
|1EA385| dw   0,  -1 : db $80, $00, $00, $02
|1EA38D| dw   0,   0 : db $86, $00, $00, $02

; group0E
|1EA395| dw  -8,   0 : db $8E, $00, $00, $02
|1EA39D| dw   8,   0 : db $8E, $40, $00, $02

; group0F
|1EA3A5| dw   0,  -8 : db $84, $00, $00, $02
|1EA3AD| dw   0,   0 : db $8C, $00, $00, $02

; group10
|1EA3B5| dw   0,  -8 : db $84, $40, $00, $02
|1EA3BD| dw   0,   0 : db $8C, $40, $00, $02

; group11
|1EA3C5| dw   0,  -7 : db $84, $00, $00, $02
|1EA3CD| dw   0,   0 : db $8C, $00, $00, $02

; group12
|1EA3D5| dw   0,   0 : db $8C, $40, $00, $02
|1EA3DD| dw   0,  -6 : db $84, $40, $00, $02

; group13
|1EA3E5| dw  -8,   0 : db $A0, $00, $00, $02
|1EA3ED| dw   8,   0 : db $A0, $40, $00, $02

;---------------------------------------------------------------------------------------------------

.oam_group_set_2
; group00
|1EA3F5| dw   0,  16 : db $B5, $00, $00, $00
|1EA3FD| dw   8,  16 : db $B5, $40, $00, $00

; group01
|1EA405| dw   0,  -8 : db $A5, $00, $00, $00
|1EA40D| dw   8,  -8 : db $A5, $40, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Pengator:
|1EA415| LDA.b #$00
|1EA417| XBA
|1EA418| LDA.w $0DC0,X

|1EA41B| REP #$20

|1EA41D| ASL A ; x16
|1EA41E| ASL A
|1EA41F| ASL A
|1EA420| ASL A
|1EA421| ADC.w #.oam_group_set_1
|1EA424| STA.b $08

|1EA426| SEP #$20

|1EA428| LDA.b #$02
|1EA42A| JSR TabulatedSpriteDraw_bank1E

|1EA42D| LDY.b #$00

|1EA42F| LDA.b #$00
|1EA431| XBA

|1EA432| LDA.w $0DC0,X
|1EA435| CMP.b #$0E
|1EA437| BEQ .draw_more

|1EA439| INY

|1EA43A| CMP.b #$13
|1EA43C| BNE .draw_not_more

;---------------------------------------------------------------------------------------------------

.draw_more
|1EA43E| TYA

|1EA43F| REP #$20

|1EA441| ASL A ; x16
|1EA442| ASL A
|1EA443| ASL A
|1EA444| ASL A
|1EA445| ADC.w #.oam_group_set_2
|1EA448| STA.b $08

|1EA44A| LDA.b $90
|1EA44C| CLC
|1EA44D| ADC.w #$0008
|1EA450| STA.b $90

|1EA452| INC.b $92
|1EA454| INC.b $92

|1EA456| SEP #$20

|1EA458| LDA.b #$02
|1EA45A| JSR TabulatedSpriteDraw_bank1E

;---------------------------------------------------------------------------------------------------

.draw_not_more
|1EA45D| JSL DrawSpriteShadow_long

|1EA461| RTS

;===================================================================================================

LaserBeam:
|1EA462| JSL SpriteDraw_SingleSmall_long
|1EA466| JSR CheckIfActive_bank1E

|1EA469| JSR LaserBeam_BuildUpGarnish
|1EA46C| JSR MoveSpriteXY_bank1E
|1EA46F| JSL CheckDamageToLink_same_layer_long

|1EA473| LDA.w $0DF0,X
|1EA476| BNE .exit

|1EA478| JSR CheckSpriteTileCollision_bank1E
|1EA47B| BEQ .exit

|1EA47D| STZ.w $0DD0,X

|1EA480| LDA.b #$26 ; SFX3.26
|1EA482| JSL QueueSpriteSFX3WithPan

|1EA486| RTS

.exit
|1EA487| RTS

;===================================================================================================

LaserBeam_BuildUpGarnish:
|1EA488| PHX
|1EA489| TXY

|1EA48A| LDX.b #$1D

.next_slot
|1EA48C| LDA.l $7FF800,X
|1EA490| BEQ .free_slot

|1EA492| DEX
|1EA493| BPL .next_slot

|1EA495| DEC.w $0FF8
|1EA498| BPL .use_indexer

|1EA49A| LDA.b #$1D
|1EA49C| STA.w $0FF8

.use_indexer
|1EA49F| LDX.w $0FF8

;---------------------------------------------------------------------------------------------------

.free_slot
|1EA4A2| LDA.b #$04 ; GARNISH 04
|1EA4A4| STA.l $7FF800,X
|1EA4A8| STA.w $0FB4

|1EA4AB| LDA.w $0D10,Y
|1EA4AE| STA.l $7FF83C,X

|1EA4B2| LDA.w $0D30,Y
|1EA4B5| STA.l $7FF878,X

|1EA4B9| LDA.w $0D00,Y
|1EA4BC| CLC
|1EA4BD| ADC.b #$10
|1EA4BF| STA.l $7FF81E,X

|1EA4C3| LDA.w $0D20,Y
|1EA4C6| ADC.b #$00
|1EA4C8| STA.l $7FF85A,X

|1EA4CC| LDA.b #$10
|1EA4CE| STA.l $7FF90E,X

|1EA4D2| LDA.w $0DC0,Y
|1EA4D5| STA.l $7FF9FE,X

|1EA4D9| TYA
|1EA4DA| STA.l $7FF92C,X

|1EA4DE| LDA.w $0F20,Y
|1EA4E1| STA.l $7FF968,X

|1EA4E5| PLX

|1EA4E6| RTS

;===================================================================================================

SpritePrep_LaserEye:
|1EA4E7| PHB
|1EA4E8| PHK
|1EA4E9| PLB

|1EA4EA| JSR .main

|1EA4ED| PLB

|1EA4EE| RTL

;---------------------------------------------------------------------------------------------------

.offset
|1EA4EF| db  -8,  8

;---------------------------------------------------------------------------------------------------

.main
|1EA4F1| LDA.w $0E20,X
|1EA4F4| CMP.b #$97 ; SPRITE 97
|1EA4F6| BCC .horizontal

|1EA4F8| LDA.w $0D10,X
|1EA4FB| CLC
|1EA4FC| ADC.b #$08
|1EA4FE| STA.w $0D10,X

|1EA501| LDA.w $0E20,X
|1EA504| SEC
|1EA505| SBC.b #$95
|1EA507| STA.w $0DE0,X

|1EA50A| TAY

|1EA50B| LDA.w $0D10,X
|1EA50E| AND.b #$10
|1EA510| EOR.b #$10
|1EA512| STA.w $0EB0,X

|1EA515| BNE .dont_adjust_y

|1EA517| LDA.w $0D00,X
|1EA51A| CLC
|1EA51B| ADC.w .offset-2,Y
|1EA51E| STA.w $0D00,X

.dont_adjust_y
|1EA521| RTS

;---------------------------------------------------------------------------------------------------

.horizontal
|1EA522| LDA.w $0E20,X
|1EA525| SEC
|1EA526| SBC.b #$95
|1EA528| STA.w $0DE0,X

|1EA52B| TAY

|1EA52C| LDA.w $0D00,X
|1EA52F| AND.b #$10
|1EA531| STA.w $0EB0,X

|1EA534| BNE .dont_adjust_x

|1EA536| LDA.w $0D10,X
|1EA539| CLC
|1EA53A| ADC.w .offset,Y
|1EA53D| STA.w $0D10,X

.dont_adjust_x
|1EA540| RTS

;===================================================================================================

Sprite_95_LaserEyeLeft:
Sprite_96_LaserEyeRight:
Sprite_97_LaserEyeTop:
Sprite_98_LaserEyeBottom:
|1EA541| LDA.w $0D90,X
|1EA544| BEQ LaserEye

|1EA546| JMP.w LaserBeam

;===================================================================================================

LaserEye:
|1EA549| JSR SpriteDraw_LaserEye
|1EA54C| JSR CheckIfActive_bank1E

|1EA54F| LDA.w $0D80,X
|1EA552| JSL JumpTableLocal
|1EA556| dw LaserEye_Reconnaissance
|1EA558| dw LaserEye_TangoLocked

;===================================================================================================

pool LaserEye_Reconnaissance

.direction
|1EA55A| db $02, $03, $00, $01

endpool

;---------------------------------------------------------------------------------------------------

LaserEye_Reconnaissance:
|1EA55E| REP #$20

|1EA560| LDA.b $20
|1EA562| SEC
|1EA563| SBC.w $0FDA
|1EA566| STA.b $0C

|1EA568| LDA.b $22
|1EA56A| SEC
|1EA56B| SBC.w $0FD8
|1EA56E| STA.b $0E

|1EA570| SEP #$20

|1EA572| LDA.b $2F
|1EA574| LSR A

;---------------------------------------------------------------------------------------------------

|1EA575| LDY.w $0EB0,X
|1EA578| CPY.b #$01

|1EA57A| TAY

|1EA57B| LDA.w $0DE0,X
|1EA57E| BCS .ignore_direction

|1EA580| CMP.w .direction,Y
|1EA583| BNE .dont_fire

.ignore_direction
|1EA585| CMP.b #$02

|1EA587| REP #$20
|1EA589| BCS .vertical

|1EA58B| LDA.b $0C
|1EA58D| BRA .continue

.vertical
|1EA58F| LDA.b $0E

;---------------------------------------------------------------------------------------------------

.continue
|1EA591| CLC
|1EA592| ADC.w #$0010
|1EA595| CMP.w #$0020

|1EA598| SEP #$20
|1EA59A| BCS .dont_fire

|1EA59C| LDA.b #$20

|1EA59E| LDY.w $0EB0,X
|1EA5A1| BEQ .pointless_check ; useless; 0x20 is loaded regardless

|1EA5A3| LDA.b #$20

.pointless_check
|1EA5A5| STA.w $0DF0,X

|1EA5A8| INC.w $0D80,X

|1EA5AB| RTS

.dont_fire
|1EA5AC| STZ.w $0DC0,X

|1EA5AF| RTS

;===================================================================================================

pool LaserEye_FireBeam

.offset_x_low ; bleeds into next
|1EA5B0| db   12,   -4

.offset_y_low
|1EA5B2| db    4,    4,   12,   -4

.offset_x_high ; bleeds into next
|1EA5B6| db    0,   -1

.offset_y_high
|1EA5B8| db    0,    0,    0,   -1

.speed_x ; bleeds into next
|1EA5BC| db  112, -112

.speed_y
|1EA5BE| db    0,    0,  112, -112

endpool

;---------------------------------------------------------------------------------------------------

LaserEye_TangoLocked:
|1EA5C2| LDA.b #$01
|1EA5C4| STA.w $0DC0,X

|1EA5C7| LDA.w $0DF0,X
|1EA5CA| BNE .cover_me_im_reloading

|1EA5CC| STZ.w $0D80,X

|1EA5CF| JSR LaserEye_FireBeam

|1EA5D2| LDA.b #$0C
|1EA5D4| STA.w $0F10,X

.cover_me_im_reloading
|1EA5D7| RTS

;===================================================================================================

LaserEye_FireBeam:
|1EA5D8| LDA.b #$95 ; SPRITE 95
|1EA5DA| JSL SpawnSpriteDynamically
|1EA5DE| BMI .no_space

|1EA5E0| PHX

|1EA5E1| LDA.w $0DE0,X
|1EA5E4| TAX

|1EA5E5| AND.b #$02
|1EA5E7| LSR A
|1EA5E8| STA.w $0DC0,Y

|1EA5EB| LDA.b $00
|1EA5ED| CLC
|1EA5EE| ADC.w .offset_x_low,X
|1EA5F1| STA.w $0D10,Y

|1EA5F4| LDA.b $01
|1EA5F6| ADC.w .offset_x_high,X
|1EA5F9| STA.w $0D30,Y

|1EA5FC| LDA.b $02
|1EA5FE| CLC
|1EA5FF| ADC.w .offset_y_low,X
|1EA602| STA.w $0D00,Y

|1EA605| LDA.b $03
|1EA607| ADC.w .offset_y_high,X
|1EA60A| STA.w $0D20,Y

|1EA60D| LDA.w .speed_x,X
|1EA610| STA.w $0D50,Y

|1EA613| LDA.w .speed_y,X
|1EA616| STA.w $0D40,Y

|1EA619| LDA.b #$20
|1EA61B| STA.w $0E40,Y
|1EA61E| STA.w $0D90,Y

|1EA621| LDA.b #$05
|1EA623| STA.w $0F50,Y

|1EA626| LDA.b #$48
|1EA628| STA.w $0CAA,Y
|1EA62B| STA.w $0BA0,Y

|1EA62E| LDA.b #$05
|1EA630| STA.w $0DF0,Y

|1EA633| LDA.l $7EF35A
|1EA637| CMP.b #$03
|1EA639| BNE .full_photon_jacket

|1EA63B| LDA.b #$20
|1EA63D| STA.w $0BE0,Y

.full_photon_jacket
|1EA640| PLX

|1EA641| LDA.b #$19 ; SFX3.19
|1EA643| JSL QueueSpriteSFX3WithPan

.no_space
|1EA647| RTS

;===================================================================================================

pool SpriteDraw_LaserEye

.oam_groups
; group00
|1EA648| dw   8,  -4 : db $C8, $40, $00, $00
|1EA650| dw   8,   4 : db $D8, $40, $00, $00
|1EA658| dw   8,  12 : db $C8, $C0, $00, $00

; group01
|1EA660| dw   8,  -4 : db $C9, $40, $00, $00
|1EA668| dw   8,   4 : db $D9, $40, $00, $00
|1EA670| dw   8,  12 : db $C9, $C0, $00, $00

; group02
|1EA678| dw   0,  -4 : db $C8, $00, $00, $00
|1EA680| dw   0,   4 : db $D8, $00, $00, $00
|1EA688| dw   0,  12 : db $C8, $80, $00, $00

; group03
|1EA690| dw   0,  -4 : db $C9, $00, $00, $00
|1EA698| dw   0,   4 : db $D9, $00, $00, $00
|1EA6A0| dw   0,  12 : db $C9, $80, $00, $00

; group04
|1EA6A8| dw  -4,   8 : db $D6, $00, $00, $00
|1EA6B0| dw   4,   8 : db $D7, $00, $00, $00
|1EA6B8| dw  12,   8 : db $D6, $40, $00, $00

; group05
|1EA6C0| dw  -4,   8 : db $C6, $00, $00, $00
|1EA6C8| dw   4,   8 : db $C7, $00, $00, $00
|1EA6D0| dw  12,   8 : db $C6, $40, $00, $00

; group06
|1EA6D8| dw  -4,   0 : db $D6, $80, $00, $00
|1EA6E0| dw   4,   0 : db $D7, $80, $00, $00
|1EA6E8| dw  12,   0 : db $D6, $C0, $00, $00

; group07
|1EA6F0| dw  -4,   0 : db $C6, $80, $00, $00
|1EA6F8| dw   4,   0 : db $C7, $80, $00, $00
|1EA700| dw  12,   0 : db $C6, $C0, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_LaserEye:
|1EA708| LDA.w $0EB0,X
|1EA70B| BEQ .continue

|1EA70D| LDA.b #$01
|1EA70F| STA.w $0DC0,X

|1EA712| LDA.w $0F10,X
|1EA715| BEQ .continue

|1EA717| STZ.w $0DC0,X

.continue
|1EA71A| LDA.b #$30
|1EA71C| STA.w $0B89,X

|1EA71F| LDA.b #$00
|1EA721| XBA
|1EA722| LDA.w $0DE0,X

|1EA725| ASL A
|1EA726| ADC.w $0DC0,X

|1EA729| REP #$20

|1EA72B| ASL A ; x8
|1EA72C| ASL A
|1EA72D| ASL A

|1EA72E| STA.b $00

|1EA730| ASL A
|1EA731| ADC.b $00
|1EA733| ADC.w #.oam_groups

|1EA736| STA.b $08

|1EA738| SEP #$20

|1EA73A| LDA.b #$03
|1EA73C| JMP.w TabulatedSpriteDraw_bank1E

;===================================================================================================

Sprite_94_Tile_bounce:
|1EA73F| JMP.w Sprite_94_Tile

;---------------------------------------------------------------------------------------------------

Sprite_94_Pirogusu:
|1EA742| LDA.w $0E90,X
|1EA745| BNE Sprite_94_Tile_bounce

|1EA747| LDA.w $0B89,X
|1EA74A| ORA.b #$30
|1EA74C| STA.w $0B89,X

|1EA74F| JSR SpriteDraw_Pirogusu
|1EA752| JSR CheckIfActive_bank1E

|1EA755| LDA.w $0D80,X
|1EA758| JSL JumpTableLocal
|1EA75C| dw Pirogusu_InHole
|1EA75E| dw Pirogusu_Crowning
|1EA760| dw Pirogusu_Plop
|1EA762| dw Pirogusu_Active

;===================================================================================================

pool Pirogusu_InHole

.anim_step
|1EA764| db $02, $03, $00, $01

endpool

;---------------------------------------------------------------------------------------------------

Pirogusu_InHole:
|1EA768| LDA.w $0DF0,X
|1EA76B| BNE .wait_for_timer

|1EA76D| INC.w $0D80,X
|1EA770| LDA.b #$1F
|1EA772| STA.w $0DF0,X

.wait_for_timer
|1EA775| STA.w $0BA0,X

|1EA778| LDY.w $0DE0,X

|1EA77B| LDA.w .anim_step,Y
|1EA77E| STA.w $0D90,X

|1EA781| RTS

;===================================================================================================

pool Pirogusu_Crowning

.anim
|1EA782| db $09, $0B, $05, $07, $05, $0B, $07, $09

.speed_y ; bleeds into next
|1EA78A| db  0,  0

.speed_x
|1EA78C| db  4, -4,  0,  0

endpool

;---------------------------------------------------------------------------------------------------

Pirogusu_Crowning:
|1EA790| LDA.w $0DF0,X
|1EA793| BNE .push_push

|1EA795| INC.w $0D80,X

|1EA798| LDA.b #$20
|1EA79A| STA.w $0DF0,X

|1EA79D| STZ.w $0BA0,X

|1EA7A0| JSR ZeroVelocityXY_bank1E

|1EA7A3| RTS

.push_push
|1EA7A4| LDA.w $0DE0,X
|1EA7A7| ASL A
|1EA7A8| STA.b $00

|1EA7AA| LDA.w $0DF0,X
|1EA7AD| LSR A
|1EA7AE| LSR A
|1EA7AF| LSR A
|1EA7B0| AND.b #$01
|1EA7B2| ORA.b $00
|1EA7B4| TAY

|1EA7B5| LDA.w .anim,Y
|1EA7B8| STA.w $0D90,X

|1EA7BB| LDY.w $0DE0,X

|1EA7BE| LDA.w .speed_x,Y
|1EA7C1| STA.w $0D50,X

|1EA7C4| LDA.w .speed_y,Y
|1EA7C7| STA.w $0D40,X

|1EA7CA| JSR MoveSpriteXY_bank1E

|1EA7CD| RTS

;===================================================================================================

pool Pirogusu_Animate

.anim_step
|1EA7CE| db $10, $11, $12, $13, $0C, $0D, $0E, $0F

endpool

;===================================================================================================

pool Pirogusu_Plop

.acceleration_x ; bleeds into next
|1EA7D6| db  2, -2

.acceleration_y
|1EA7D8| db  0,  0,  2, -2

endpool

;---------------------------------------------------------------------------------------------------

Pirogusu_Plop:
|1EA7DC| JSR CheckDamageToAndFromLink_bank1E
|1EA7DF| JSR MoveSpriteXY_bank1E

|1EA7E2| LDY.w $0DE0,X

|1EA7E5| LDA.w $0D50,X
|1EA7E8| CLC
|1EA7E9| ADC.w .acceleration_x,Y
|1EA7EC| STA.w $0D50,X

|1EA7EF| LDA.w $0D40,X
|1EA7F2| CLC
|1EA7F3| ADC.w .acceleration_y,Y
|1EA7F6| STA.w $0D40,X

|1EA7F9| LDA.w $0DF0,X
|1EA7FC| BNE Pirogusu_Animate

|1EA7FE| JSL Sprite_SpawnSmallSplash

|1EA802| LDA.b #$10
|1EA804| STA.w $0E00,X

|1EA807| INC.w $0D80,X

;===================================================================================================

Pirogusu_Animate:
|1EA80A| LDA.w $0DE0,X
|1EA80D| ASL A
|1EA80E| STA.b $00

|1EA810| LDA.b $1A
|1EA812| AND.b #$04
|1EA814| LSR A
|1EA815| LSR A

|1EA816| ORA.b $00
|1EA818| TAY

|1EA819| LDA.w .anim_step,Y
|1EA81C| STA.w $0D90,X

|1EA81F| RTS

;===================================================================================================

Sprite_SpawnSmallSplash:
|1EA820| LDA.b #$EC ; SPRITE EC
|1EA822| LDY.b #$0E
|1EA824| JSL SpawnSpriteDynamically.slot_limited
|1EA828| BMI .no_space

|1EA82A| JSL SetSpawnedSpriteCoordinates

|1EA82E| STZ.w $012E

|1EA831| LDA.b #$28 ; SFX2.28
|1EA833| JSL QueueSpriteSFX2WithPan

|1EA837| LDA.b #$03
|1EA839| STA.w $0DD0,Y

|1EA83C| LDA.b #$0F
|1EA83E| STA.w $0DF0,Y

|1EA841| LDA.b #$00
|1EA843| STA.w $0D80,Y

|1EA846| LDA.b #$03
|1EA848| STA.w $0E40,Y

.no_space
|1EA84B| RTL

;===================================================================================================

pool Pirogusu_Active

.speed_x ; bleeds into next
|1EA84C| db  24, -24

.speed_y
|1EA84E| db   0,   0,  24, -24

endpool

;---------------------------------------------------------------------------------------------------

Pirogusu_Active:
|1EA852| JSR HandleSpriteRecoil_bank1E
|1EA855| JSR CheckDamageToAndFromLink_bank1E
|1EA858| JSR Pirogusu_Animate

|1EA85B| CLC
|1EA85C| ADC.b #$08
|1EA85E| STA.w $0D90,X

|1EA861| LDA.w $0E00,X
|1EA864| BNE .exit

|1EA866| JSR Pirogusu_SpawnSplash
|1EA869| JSR MoveSpriteXY_bank1E
|1EA86C| JSR CheckSpriteTileCollision_bank1E

|1EA86F| AND.b #$0F
|1EA871| BEQ .no_collision

|1EA873| JSL GetRandomNumber
|1EA877| LSR A

|1EA878| LDA.w $0DE0,X
|1EA87B| ROL A
|1EA87C| TAY

|1EA87D| LDA.w SharedDirections_Nice,Y
|1EA880| STA.w $0DE0,X

.no_collision
|1EA883| LDY.w $0DE0,X

|1EA886| LDA.w .speed_x,Y
|1EA889| STA.w $0D50,X

|1EA88C| LDA.w .speed_y,Y
|1EA88F| STA.w $0D40,X

.exit
|1EA892| RTS

;===================================================================================================

pool Pirogusu_SpawnSplash

.offset
|1EA893| db $03, $04, $05, $04

endpool

;---------------------------------------------------------------------------------------------------

Pirogusu_SpawnSplash:
|1EA897| TXA
|1EA898| EOR.b $1A
|1EA89A| AND.b #$03
|1EA89C| BNE .exit

|1EA89E| JSL GetRandomNumber
|1EA8A2| AND.b #$03
|1EA8A4| TAY

|1EA8A5| LDA.w .offset,Y
|1EA8A8| STA.b $00

|1EA8AA| JSL GetRandomNumber
|1EA8AE| AND.b #$03
|1EA8B0| TAY

|1EA8B1| LDA.w .offset,Y
|1EA8B4| STA.b $01

|1EA8B6| PHX
|1EA8B7| TXY

|1EA8B8| LDX.b #$0E

.next_slot
|1EA8BA| LDA.l $7FF800,X
|1EA8BE| BEQ .free_slot

|1EA8C0| DEX
|1EA8C1| BPL .next_slot

|1EA8C3| PLX

.exit
|1EA8C4| RTS

;---------------------------------------------------------------------------------------------------

.free_slot
|1EA8C5| LDA.b #$0B ; GARNISH 0B
|1EA8C7| STA.l $7FF800,X
|1EA8CB| STA.w $0FB4

|1EA8CE| LDA.w $0D10,Y
|1EA8D1| CLC
|1EA8D2| ADC.b $00
|1EA8D4| STA.l $7FF83C,X

|1EA8D8| LDA.w $0D30,Y
|1EA8DB| ADC.b #$00
|1EA8DD| STA.l $7FF878,X

|1EA8E1| LDA.w $0D00,Y
|1EA8E4| CLC
|1EA8E5| ADC.b #$10

|1EA8E7| PHP

|1EA8E8| CLC
|1EA8E9| ADC.b $01
|1EA8EB| STA.l $7FF81E,X

|1EA8EF| LDA.w $0D20,Y
|1EA8F2| ADC.b #$00

|1EA8F4| PLP

|1EA8F5| ADC.b #$00
|1EA8F7| STA.l $7FF85A,X

|1EA8FB| LDA.b #$0F
|1EA8FD| STA.l $7FF90E,X

|1EA901| PLX

|1EA902| RTS

;===================================================================================================

pool SpriteDraw_Pirogusu

.flip
|1EA903| db $00, $80, $40, $00, $00, $00, $00
|1EA90A| db $80, $80, $C0, $40, $40, $00, $40
|1EA911| db $80, $C0, $40, $C0, $00, $80, $00
|1EA918| db $40, $80, $C0, $40, $C0, $00, $80

.anim_step
|1EA91F| db $00, $00, $01, $01, $02, $03, $04
|1EA926| db $03, $02, $03, $04, $03, $05, $05
|1EA92D| db $05, $05, $07, $07, $07, $07, $06
|1EA934| db $06, $06, $06, $08, $08, $08, $08

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Pirogusu:
|1EA93B| LDY.w $0D90,X

|1EA93E| LDA.w $0F50,X
|1EA941| AND.b #$3F
|1EA943| ORA.w .flip,Y
|1EA946| STA.w $0F50,X

|1EA949| LDA.w .anim_step,Y
|1EA94C| STA.w $0DC0,X

|1EA94F| CPY.b #$04
|1EA951| BCS .fully_visible

|1EA953| LDA.w $0FD8
|1EA956| CLC
|1EA957| ADC.b #$04
|1EA959| STA.w $0FD8

|1EA95C| LDA.w $0FD9
|1EA95F| ADC.b #$00
|1EA961| STA.w $0FD9

|1EA964| LDA.w $0FDA
|1EA967| CLC
|1EA968| ADC.b #$04
|1EA96A| STA.w $0FDA

|1EA96D| LDA.w $0FDB
|1EA970| ADC.b #$00
|1EA972| STA.w $0FDB

|1EA975| JSL SpriteDraw_SingleSmall_long

|1EA979| RTS

.fully_visible
|1EA97A| JSL SpriteDraw_SingleLarge_long

|1EA97E| RTS

;===================================================================================================

pool Sprite_93_Bumper

.recoil_speed
|1EA97F| db 0,  2, -2

endpool

;---------------------------------------------------------------------------------------------------

Sprite_93_Bumper:
|1EA982| JSR SpriteDraw_Bumper
|1EA985| JSR CheckIfActive_bank1E
|1EA988| JSR CheckSpriteTileCollision_bank1E

|1EA98B| LDA.b $55
|1EA98D| BNE .dont_boing_link

|1EA98F| JSL CheckDamageToLink_same_layer_long
|1EA993| BCC .dont_boing_link

|1EA995| JSL CancelDash_long

|1EA999| LDA.b #$20
|1EA99B| STA.w $0DF0,X

|1EA99E| LDA.b #$30
|1EA9A0| JSL ProjectSpriteSpeedTowardsLink_long

|1EA9A4| LDA.b $F0
|1EA9A6| LSR A
|1EA9A7| LSR A
|1EA9A8| AND.b #$03
|1EA9AA| TAY

|1EA9AB| LDA.b $00
|1EA9AD| CLC
|1EA9AE| ADC.w .recoil_speed,Y
|1EA9B1| STA.b $27

|1EA9B3| LDA.b $F0
|1EA9B5| AND.b #$03
|1EA9B7| TAY

|1EA9B8| LDA.b $01
|1EA9BA| CLC
|1EA9BB| ADC.w .recoil_speed,Y
|1EA9BE| STA.b $28

|1EA9C0| LDA.b #$14
|1EA9C2| STA.b $46

|1EA9C4| PHX

|1EA9C5| JSL ResetSwimmingState

|1EA9C9| PLX

|1EA9CA| LDA.b #$32 ; SFX3.32
|1EA9CC| JSL QueueSpriteSFX3WithPan

;---------------------------------------------------------------------------------------------------

.dont_boing_link
|1EA9D0| LDY.b #$0F

; Each sprite is checked, but nothing prevents bumpers from hitting themselves,
; except for their statis bit.
; This is part of why moldorm bumper frenzy happens
.next_sprite
|1EA9D2| TYA
|1EA9D3| EOR.b $1A
|1EA9D5| AND.b #$03
|1EA9D7| ORA.w $0F70,Y
|1EA9DA| BNE .dont_boing_sprite

|1EA9DC| LDA.w $0DD0,Y
|1EA9DF| CMP.b #$09
|1EA9E1| BCC .dont_boing_sprite

|1EA9E3| LDA.w $0E60,Y
|1EA9E6| ORA.w $0F60,Y
|1EA9E9| AND.b #$40
|1EA9EB| BNE .dont_boing_sprite

|1EA9ED| LDA.w $0D10,Y
|1EA9F0| STA.b $04

|1EA9F2| LDA.w $0D30,Y
|1EA9F5| STA.b $05

|1EA9F7| LDA.w $0D00,Y
|1EA9FA| STA.b $06

|1EA9FC| LDA.w $0D20,Y
|1EA9FF| STA.b $07

|1EAA01| REP #$20

|1EAA03| LDA.w $0FD8
|1EAA06| SEC
|1EAA07| SBC.b $04
|1EAA09| CLC
|1EAA0A| ADC.w #$0010

|1EAA0D| CMP.w #$0020
|1EAA10| BCS .dont_boing_sprite

|1EAA12| LDA.w $0FDA
|1EAA15| SEC
|1EAA16| SBC.b $06
|1EAA18| CLC
|1EAA19| ADC.w #$0010

|1EAA1C| CMP.w #$0020
|1EAA1F| BCS .dont_boing_sprite

|1EAA21| SEP #$20

|1EAA23| LDA.b #$0F
|1EAA25| STA.w $0EA0,Y

|1EAA28| PHY

|1EAA29| LDA.b #$40
|1EAA2B| JSL ProjectSpriteSpeedTowardsLocation_long

|1EAA2F| PLY

|1EAA30| LDA.b $00
|1EAA32| STA.w $0F30,Y

|1EAA35| LDA.b $01
|1EAA37| STA.w $0F40,Y

|1EAA3A| LDA.b #$20
|1EAA3C| STA.w $0DF0,X

|1EAA3F| LDA.b #$32 ; SFX3.32
|1EAA41| JSL QueueSpriteSFX3WithPan

.dont_boing_sprite
|1EAA45| SEP #$20

|1EAA47| DEY
|1EAA48| BPL .next_sprite

|1EAA4A| RTS

;===================================================================================================

pool SpriteDraw_Bumper

.oam_groups
; group00
|1EAA4B| dw  -8,  -8 : db $EC, $00, $00, $02
|1EAA53| dw   8,  -8 : db $EC, $40, $00, $02
|1EAA5B| dw  -8,   8 : db $EC, $80, $00, $02
|1EAA63| dw   8,   8 : db $EC, $C0, $00, $02

; group01
|1EAA6B| dw  -7,  -7 : db $EC, $00, $00, $02
|1EAA73| dw   7,  -7 : db $EC, $40, $00, $02
|1EAA7B| dw  -7,   7 : db $EC, $80, $00, $02
|1EAA83| dw   7,   7 : db $EC, $C0, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Bumper:
|1EAA8B| LDA.b #$00
|1EAA8D| XBA
|1EAA8E| LDA.w $0DF0,X

|1EAA91| LSR A
|1EAA92| AND.b #$01

|1EAA94| REP #$20

|1EAA96| ASL A ; x32
|1EAA97| ASL A
|1EAA98| ASL A
|1EAA99| ASL A
|1EAA9A| ASL A

|1EAA9B| ADC.w #.oam_groups
|1EAA9E| STA.b $08

|1EAAA0| SEP #$20

|1EAAA2| LDA.b #$04
|1EAAA4| JMP.w TabulatedSpriteDraw_bank1E

;===================================================================================================

Sprite_91_StalfosKnight:
|1EAAA7| LDA.w $0D80,X
|1EAAAA| BNE .dropped

|1EAAAC| JSL GetScreenCoordinates_long
|1EAAB0| BRA .continue

.dropped
|1EAAB2| JSR SpriteDraw_StalfosKnight

.continue
|1EAAB5| JSR CheckIfActive_bank1E

|1EAAB8| LDA.w $0EF0,X
|1EAABB| AND.b #$7F
|1EAABD| CMP.b #$01
|1EAABF| BNE .not_collapsed

|1EAAC1| STZ.w $0EF0,X

|1EAAC4| LDA.b #$06
|1EAAC6| STA.w $0D80,X

|1EAAC9| LDA.b #$FF
|1EAACB| STA.w $0DF0,X

|1EAACE| STZ.w $0D50,X
|1EAAD1| STZ.w $0D40,X

; Directly modifes the damage value for bombs
|1EAAD4| LDA.b #$02
|1EAAD6| STA.l $7F6918

.not_collapsed
|1EAADA| JSR HandleSpriteRecoil_bank1E

|1EAADD| LDA.w $0D80,X
|1EAAE0| JSL JumpTableLocal
|1EAAE4| dw StalfosKnight_Hidden
|1EAAE6| dw StalfosKnight_EnterBattle
|1EAAE8| dw StalfosKnight_Idle
|1EAAEA| dw StalfosKnight_ScanForOpponents
|1EAAEC| dw StalfosKnight_Squat
|1EAAEE| dw StalfosKnight_HopAround
|1EAAF0| dw StalfosKnight_Crumble
|1EAAF2| dw StalfosKnight_CelebrateStandingUp

;===================================================================================================

StalfosKnight_Hidden:
|1EAAF4| LDA.b #$09
|1EAAF6| STA.w $0F60,X
|1EAAF9| STA.w $0BA0,X

|1EAAFC| LDA.w $0E40,X
|1EAAFF| PHA

|1EAB00| ORA.b #$80
|1EAB02| STA.w $0E40,X

|1EAB05| JSR CheckDamageToLink_bank1E

|1EAB08| PLA
|1EAB09| STA.w $0E40,X

|1EAB0C| BCC .exit

|1EAB0E| LDA.b #$90
|1EAB10| STA.w $0F70,X

|1EAB13| INC.w $0D80,X

|1EAB16| LDA.b #$02
|1EAB18| STA.w $0EB0,X

|1EAB1B| LDA.b #$02
|1EAB1D| STA.w $0DC0,X

|1EAB20| LDA.b #$20 ; SFX2.20
|1EAB22| JSL QueueSpriteSFX2WithPan

.exit
|1EAB26| RTS

;===================================================================================================

StalfosKnight_EnterBattle:
|1EAB27| LDA.w $0F70,X
|1EAB2A| PHA

|1EAB2B| JSR MoveSpriteZ_bank1E

|1EAB2E| LDA.w $0F80,X
|1EAB31| CMP.b #$C0
|1EAB33| BMI .at_max_speed

|1EAB35| SEC
|1EAB36| SBC.b #$03
|1EAB38| STA.w $0F80,X

.at_max_speed
|1EAB3B| PLA
|1EAB3C| EOR.w $0F70,X
|1EAB3F| BPL .exit

|1EAB41| LDA.w $0F70,X
|1EAB44| BPL .exit

;===================================================================================================

#StalfosKnight_EnterIdleState:
|1EAB46| LDA.b #$02
|1EAB48| STA.w $0D80,X

|1EAB4B| STZ.w $0BA0,X
|1EAB4E| STZ.w $0F70,X
|1EAB51| STZ.w $0F80,X

|1EAB54| LDA.b #$3F
|1EAB56| STA.w $0DF0,X

.exit
|1EAB59| RTS

;===================================================================================================

pool StalfosKnight_Idle

.anim_step
|1EAB5A| db $00, $01

endpool

;---------------------------------------------------------------------------------------------------

StalfosKnight_Idle:
; [HARDCODED] edit to damage table
|1EAB5C| LDA.b #$00
|1EAB5E| STA.l $7F6918

|1EAB62| JSR CheckDamageToAndFromLink_bank1E

|1EAB65| LDA.w $0DF0,X
|1EAB68| BNE .delay

|1EAB6A| LDA.b #$03
|1EAB6C| STA.w $0D80,X

|1EAB6F| JSL GetRandomNumber
|1EAB73| AND.b #$3F
|1EAB75| STA.w $0DA0,X

|1EAB78| LDA.b #$7F
|1EAB7A| STA.w $0DF0,X

|1EAB7D| RTS

;---------------------------------------------------------------------------------------------------

.delay
|1EAB7E| LSR A ; /32
|1EAB7F| LSR A
|1EAB80| LSR A
|1EAB81| LSR A
|1EAB82| LSR A

|1EAB83| TAY

|1EAB84| LDA.w .anim_step,Y
|1EAB87| STA.w $0DC0,X

|1EAB8A| LDA.w .anim_step,Y
|1EAB8D| STA.w $0DB0,X

|1EAB90| LDA.b #$02
|1EAB92| STA.w $0EB0,X

|1EAB95| RTS

;===================================================================================================

pool StalfosKnight_ScanForOpponents

.head_direction
|1EAB96| db $00, $00, $00, $02, $01, $01, $01, $02
|1EAB9E| db $00, $00, $00, $02, $01, $01, $01, $02

endpool

;---------------------------------------------------------------------------------------------------

StalfosKnight_ScanForOpponents:
|1EABA6| JSR CheckDamageToAndFromLink_bank1E

|1EABA9| LDA.w $0DF0,X
|1EABAC| CMP.w $0DA0,X
|1EABAF| BNE .delay

|1EABB1| JSR GetXDisplacementFromLink_bank1E
|1EABB4| TYA
|1EABB5| STA.w $0EB0,X

|1EABB8| INC.w $0D80,X

|1EABBB| LDA.b #$20
|1EABBD| STA.w $0DF0,X

|1EABC0| RTS

.delay
|1EABC1| LSR A
|1EABC2| LSR A
|1EABC3| LSR A
|1EABC4| TAY

|1EABC5| LDA.w .head_direction,Y
|1EABC8| STA.w $0EB0,X

|1EABCB| LDA.b #$00
|1EABCD| STA.w $0DB0,X

|1EABD0| LDA.b #$00
|1EABD2| STA.w $0DC0,X

|1EABD5| RTS

;===================================================================================================

StalfosKnight_Squat:
|1EABD6| JSR CheckDamageToAndFromLink_bank1E

|1EABD9| LDA.w $0DF0,X
|1EABDC| BNE StalfosKnight_PrepJump

|1EABDE| INC.w $0D80,X

|1EABE1| LDA.b #$FF
|1EABE3| STA.w $0DF0,X

|1EABE6| LDA.b #$20
|1EABE8| STA.w $0E00,X

;===================================================================================================

StalfosKnight_PrepJump:
|1EABEB| LDA.b #$01
|1EABED| STA.w $0DB0,X

|1EABF0| LDA.b #$01
|1EABF2| STA.w $0DC0,X

|1EABF5| RTS

;===================================================================================================

StalfosKnight_HopAround:
|1EABF6| JSR CheckDamageToAndFromLink_bank1E

|1EABF9| LDA.w $0E00,X
|1EABFC| BEQ .still_jumping

|1EABFE| DEC A
|1EABFF| BNE .dont_change_direction

|1EAC01| LDA.b #$30
|1EAC03| STA.w $0F80,X

|1EAC06| LDA.b #$10
|1EAC08| JSL ApplySpeedTowardsLink_long

|1EAC0C| JSR GetXDisplacementFromLink_bank1E
|1EAC0F| TYA
|1EAC10| STA.w $0EB0,X

|1EAC13| LDA.b #$13 ; SFX3.13
|1EAC15| JSL QueueSpriteSFX3WithPan

.dont_change_direction
|1EAC19| BRA StalfosKnight_PrepJump

;---------------------------------------------------------------------------------------------------

.still_jumping
|1EAC1B| JSR MoveSpriteXYZ_bank1E
|1EAC1E| JSR CheckSpriteTileCollision_bank1E

|1EAC21| LDA.w $0F80,X
|1EAC24| CMP.b #$C0
|1EAC26| BMI .at_max_ascending_speed

|1EAC28| SEC
|1EAC29| SBC.b #$02
|1EAC2B| STA.w $0F80,X

.at_max_ascending_speed
|1EAC2E| LDA.w $0F70,X
|1EAC31| DEC A
|1EAC32| BPL .airborne

|1EAC34| STZ.w $0F70,X
|1EAC37| STZ.w $0F80,X

|1EAC3A| LDA.w $0DF0,X
|1EAC3D| BNE .bounce_again

|1EAC3F| JMP.w StalfosKnight_EnterIdleState

;---------------------------------------------------------------------------------------------------

.bounce_again
|1EAC42| LDA.b #$10
|1EAC44| STA.w $0E00,X

.airborne
|1EAC47| LDY.b #$02

|1EAC49| LDA.w $0F80,X
|1EAC4C| CMP.b #$18
|1EAC4E| BMI .at_max_descending_speed

|1EAC50| LDY.b #$00

.at_max_descending_speed
|1EAC52| TYA
|1EAC53| STA.w $0DC0,X

|1EAC56| RTS

;===================================================================================================

pool StalfosKnight_Crumble

.head_anim
|1EAC57| db $00, $04, $08, $0C, $0E, $0E, $0E, $0E
|1EAC5F| db $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E
|1EAC67| db $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E
|1EAC6F| db $0E, $0E, $0F, $0E, $0C, $08, $04, $00

endpool

;---------------------------------------------------------------------------------------------------

StalfosKnight_Crumble:
|1EAC77| JSR MoveSpriteXYZ_bank1E
|1EAC7A| JSR CheckSpriteTileCollision_bank1E

|1EAC7D| LDA.w $0F80,X
|1EAC80| CMP.b #$C0
|1EAC82| BMI .at_max_speed

|1EAC84| SEC
|1EAC85| SBC.b #$02
|1EAC87| STA.w $0F80,X

.at_max_speed
|1EAC8A| LDA.w $0F70,X
|1EAC8D| DEC A
|1EAC8E| BPL .head_aloft

|1EAC90| STZ.w $0F70,X
|1EAC93| STZ.w $0F80,X

.head_aloft
|1EAC96| LDA.w $0DF0,X
|1EAC99| BNE .still_animating

; randomly celebrate
|1EAC9B| JSL GetRandomNumber
|1EAC9F| AND.b #$01
|1EACA1| BNE .dont_celebrate_its_not_a_big_deal

|1EACA3| LDA.b #$07
|1EACA5| STA.w $0D80,X

|1EACA8| LDA.b #$50
|1EACAA| STA.w $0DF0,X

|1EACAD| RTS

.dont_celebrate_its_not_a_big_deal
|1EACAE| JMP.w StalfosKnight_EnterIdleState

;---------------------------------------------------------------------------------------------------

.still_animating
|1EACB1| CMP.b #$E0
|1EACB3| BCC .no_sfx

|1EACB5| PHA
|1EACB6| AND.b #$03
|1EACB8| BNE .dont_do_sfx

|1EACBA| LDA.b #$14 ; SFX3.14
|1EACBC| JSL QueueSpriteSFX3WithPan

.dont_do_sfx
|1EACC0| PLA

.no_sfx
|1EACC1| LSR A
|1EACC2| LSR A
|1EACC3| LSR A
|1EACC4| TAY

|1EACC5| LDA.w .head_anim,Y
|1EACC8| STA.w $0DB0,X

|1EACCB| LDA.b #$03
|1EACCD| STA.w $0DC0,X

|1EACD0| LDA.b #$02
|1EACD2| STA.w $0EB0,X

|1EACD5| RTS

;===================================================================================================

pool StalfosKnight_CelebrateStandingUp

.anim_state
|1EACD6| db $01, $04

endpool

;---------------------------------------------------------------------------------------------------

StalfosKnight_CelebrateStandingUp:
|1EACD8| LDA.w $0DF0,X
|1EACDB| BNE .still_celebrating

|1EACDD| JMP.w StalfosKnight_EnterIdleState

.still_celebrating
|1EACE0| LSR A
|1EACE1| LSR A
|1EACE2| AND.b #$01
|1EACE4| TAY

|1EACE5| LDA.w .anim_state,Y
|1EACE8| STA.w $0DC0,X

|1EACEB| RTS

;===================================================================================================

pool SpriteDraw_StalfosKnight

.oam_groups
; group00
|1EACEC| dw  -4,  -8 : db $64, $00, $00, $00
|1EACF4| dw  -4,   0 : db $61, $00, $00, $02
|1EACFC| dw   4,   0 : db $62, $00, $00, $02
|1EAD04| dw  -3,  16 : db $74, $00, $00, $00
|1EAD0C| dw  11,  16 : db $74, $40, $00, $00

; group01
|1EAD14| dw  -4,  -7 : db $64, $00, $00, $00
|1EAD1C| dw  -4,   1 : db $61, $00, $00, $02
|1EAD24| dw   4,   1 : db $62, $00, $00, $02
|1EAD2C| dw  -3,  16 : db $65, $00, $00, $00
|1EAD34| dw  11,  16 : db $65, $40, $00, $00

; group02
|1EAD3C| dw  -4,  -8 : db $48, $00, $00, $02
|1EAD44| dw   4,  -8 : db $49, $00, $00, $02
|1EAD4C| dw  -4,   8 : db $4B, $00, $00, $02
|1EAD54| dw   4,   8 : db $4C, $00, $00, $02
|1EAD5C| dw   4,   8 : db $4C, $00, $00, $02

; group03
|1EAD64| dw  -4,   8 : db $68, $00, $00, $02
|1EAD6C| dw   4,   8 : db $69, $00, $00, $02
|1EAD74| dw   4,   8 : db $69, $00, $00, $02
|1EAD7C| dw   4,   8 : db $69, $00, $00, $02
|1EAD84| dw   4,   8 : db $69, $00, $00, $02

; group04
|1EAD8C| dw  12,  -7 : db $64, $40, $00, $00
|1EAD94| dw  -4,   1 : db $62, $40, $00, $02
|1EAD9C| dw   4,   1 : db $61, $40, $00, $02
|1EADA4| dw  -3,  16 : db $65, $00, $00, $00
|1EADAC| dw  11,  16 : db $65, $40, $00, $00

; group05
|1EADB4| dw  12,  -8 : db $64, $40, $00, $00
|1EADBC| dw  -4,   0 : db $62, $40, $00, $02
|1EADC4| dw   4,   0 : db $61, $40, $00, $02
|1EADCC| dw  -3,  16 : db $74, $00, $00, $00
|1EADD4| dw  11,  16 : db $74, $40, $00, $00

; group06
|1EADDC| dw  -4,  -8 : db $49, $40, $00, $02
|1EADE4| dw   4,  -8 : db $48, $40, $00, $02
|1EADEC| dw  -4,   8 : db $4C, $40, $00, $02
|1EADF4| dw   4,   8 : db $4B, $40, $00, $02
|1EADFC| dw   4,   8 : db $4B, $40, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_StalfosKnight:
|1EAE04| JSR GetScreenCoordinates_bank1E
|1EAE07| JSR SpriteDraw_StalfosKnight_Head

|1EAE0A| LDA.b #$00
|1EAE0C| XBA
|1EAE0D| LDA.w $0DC0,X

|1EAE10| REP #$20

|1EAE12| ASL A
|1EAE13| ASL A
|1EAE14| ASL A
|1EAE15| STA.b $00

|1EAE17| ASL A
|1EAE18| ASL A
|1EAE19| ADC.b $00

|1EAE1B| ADC.w #.oam_groups
|1EAE1E| STA.b $08

|1EAE20| LDA.b $90
|1EAE22| CLC
|1EAE23| ADC.w #$0004
|1EAE26| STA.b $90

|1EAE28| INC.b $92

|1EAE2A| SEP #$20

|1EAE2C| LDA.b #$05
|1EAE2E| JSR TabulatedSpriteDraw_bank1E

|1EAE31| REP #$20

|1EAE33| LDA.b $90
|1EAE35| SEC
|1EAE36| SBC.w #$0004
|1EAE39| STA.b $90

|1EAE3B| DEC.b $92

|1EAE3D| SEP #$20

|1EAE3F| LDA.b #$12
|1EAE41| JSL DrawSpriteShadow_custom_long

|1EAE45| RTS

;===================================================================================================

pool SpriteDraw_StalfosKnight_Head

.head_char
|1EAE46| db $66, $66, $46, $46

.head_flip
|1EAE4A| db $40, $00, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_StalfosKnight_Head:
|1EAE4E| LDA.w $0DC0,X
|1EAE51| CMP.b #$02
|1EAE53| BEQ .head_part_of_body_chars

|1EAE55| LDA.w $0DB0,X
|1EAE58| STA.b $06
|1EAE5A| STZ.b $07

|1EAE5C| LDY.b #$00

|1EAE5E| PHX

|1EAE5F| LDA.w $0EB0,X
|1EAE62| TAX

|1EAE63| REP #$20

|1EAE65| LDA.b $00
|1EAE67| STA.b ($90),Y

|1EAE69| AND.w #$0100
|1EAE6C| STA.b $0E

|1EAE6E| LDA.b $02
|1EAE70| CLC
|1EAE71| ADC.b $06

|1EAE73| SEC
|1EAE74| SBC.w #$000C

|1EAE77| INY
|1EAE78| STA.b ($90),Y

|1EAE7A| CLC
|1EAE7B| ADC.w #$0010

|1EAE7E| CMP.w #$0100
|1EAE81| BCC .on_screen

|1EAE83| LDA.w #$00F0
|1EAE86| STA.b ($90),Y

.on_screen
|1EAE88| SEP #$20

|1EAE8A| LDA.w .head_char,X
|1EAE8D| INY
|1EAE8E| STA.b ($90),Y

|1EAE90| LDA.w .head_flip,X
|1EAE93| INY
|1EAE94| ORA.b $05
|1EAE96| STA.b ($90),Y

|1EAE98| TYA
|1EAE99| LSR A
|1EAE9A| LSR A
|1EAE9B| TAY

|1EAE9C| LDA.b #$02
|1EAE9E| ORA.b $0F
|1EAEA0| STA.b ($92),Y

|1EAEA2| PLX

.head_part_of_body_chars
|1EAEA3| RTS

;===================================================================================================

Sprite_90_Wallmaster:
|1EAEA4| LDA.w $0B89,X
|1EAEA7| ORA.b #$30
|1EAEA9| STA.w $0B89,X

|1EAEAC| JSR SpriteDraw_WallMaster

|1EAEAF| LDA.w $0DD0,X
|1EAEB2| CMP.b #$09
|1EAEB4| BEQ .continue

|1EAEB6| STZ.w $02E4
|1EAEB9| STZ.w $037B

.continue
|1EAEBC| JSR CheckIfActive_bank1E

|1EAEBF| LDA.w $0D90,X
|1EAEC2| BEQ .not_holding_link

|1EAEC4| LDA.w $0D10,X
|1EAEC7| STA.b $22

|1EAEC9| LDA.w $0D30,X
|1EAECC| STA.b $23

|1EAECE| LDA.w $0D00,X
|1EAED1| SEC
|1EAED2| SBC.w $0F70,X
|1EAED5| PHP

|1EAED6| CLC
|1EAED7| ADC.b #$03
|1EAED9| STA.b $20

|1EAEDB| LDA.w $0D20,X
|1EAEDE| ADC.b #$00

|1EAEE0| PLP
|1EAEE1| SBC.b #$00
|1EAEE3| STA.b $21

|1EAEE5| LDA.b #$01
|1EAEE7| STA.w $02E4
|1EAEEA| STA.w $037B

|1EAEED| REP #$20

|1EAEEF| LDA.b $20
|1EAEF1| SEC

|1EAEF2| SBC.b $E8
|1EAEF4| SEC

|1EAEF5| SBC.w #$0010
|1EAEF8| CMP.w #$0100

|1EAEFB| SEP #$20
|1EAEFD| BCC .still_rising

|1EAEFF| STZ.w $02E4
|1EAF02| STZ.w $037B

|1EAF05| PHX

|1EAF06| JSL DragToLastEntrance
|1EAF0A| JSL InitializeLink

|1EAF0E| PLX

|1EAF0F| RTS

;---------------------------------------------------------------------------------------------------

.not_holding_link
|1EAF10| JSL CheckDamageFromLink_long

.still_rising
|1EAF14| LDA.w $0D80,X
|1EAF17| JSL JumpTableLocal
|1EAF1B| dw Wallmaster_Descend
|1EAF1D| dw Wallmaster_Grab
|1EAF1F| dw Wallmaster_Ascend

;===================================================================================================

Wallmaster_Descend:
|1EAF21| LDA.w $0F70,X
|1EAF24| PHA

|1EAF25| JSR MoveSpriteZ_bank1E

|1EAF28| LDA.w $0F80,X
|1EAF2B| CMP.b #$C0
|1EAF2D| BMI .at_max_z_speed

|1EAF2F| SEC
|1EAF30| SBC.b #$03
|1EAF32| STA.w $0F80,X

.at_max_z_speed
|1EAF35| PLA
|1EAF36| EOR.w $0F70,X
|1EAF39| BPL .exit

|1EAF3B| LDA.w $0F70,X
|1EAF3E| BPL .exit

|1EAF40| INC.w $0D80,X

|1EAF43| STZ.w $0F70,X
|1EAF46| STZ.w $0F80,X

|1EAF49| LDA.b #$3F
|1EAF4B| STA.w $0DF0,X

.exit
|1EAF4E| RTS

;===================================================================================================

Wallmaster_Grab:
|1EAF4F| LDA.w $0DF0,X
|1EAF52| BNE .still_grabby

|1EAF54| INC.w $0D80,X

.still_grabby
|1EAF57| LDY.b #$00

|1EAF59| AND.b #$20
|1EAF5B| BNE .anim_step_0

|1EAF5D| INY

.anim_step_0
|1EAF5E| TYA
|1EAF5F| STA.w $0DC0,X

|1EAF62| JSR CheckDamageToLink_bank1E
|1EAF65| BCC .exit

|1EAF67| LDA.b #$01
|1EAF69| STA.w $0D90,X

|1EAF6C| LDA.b #$40
|1EAF6E| STA.w $0E60,X

|1EAF71| STZ.b $31
|1EAF73| STZ.b $30

|1EAF75| LDA.b #$2A ; SFX3.2A
|1EAF77| JSL QueueSpriteSFX3WithPan

.exit
|1EAF7B| RTS

;===================================================================================================

Wallmaster_Ascend:
|1EAF7C| LDA.w $0F70,X
|1EAF7F| PHA

|1EAF80| JSR MoveSpriteZ_bank1E

|1EAF83| LDA.w $0F80,X
|1EAF86| CMP.b #$40
|1EAF88| BPL .at_max_z_speed

|1EAF8A| INC A
|1EAF8B| INC A
|1EAF8C| STA.w $0F80,X

.at_max_z_speed
|1EAF8F| PLA
|1EAF90| EOR.w $0F70,X
|1EAF93| BPL .exit

|1EAF95| LDA.w $0F70,X
|1EAF98| BMI .exit

|1EAF9A| STZ.w $0DD0,X

.exit
|1EAF9D| RTS

;===================================================================================================

pool SpriteDraw_WallMaster

.oam_groups
; group00
|1EAF9E| dw  -4,   0 : db $A6, $01, $00, $02
|1EAFA6| dw  12,   0 : db $AA, $01, $00, $00
|1EAFAE| dw  -4,  16 : db $BA, $01, $00, $00
|1EAFB6| dw   4,   8 : db $A8, $01, $00, $02

; group01
|1EAFBE| dw  -4,   0 : db $AB, $01, $00, $02
|1EAFC6| dw  12,   0 : db $AF, $01, $00, $00
|1EAFCE| dw  -4,  16 : db $BF, $01, $00, $00
|1EAFD6| dw   4,   8 : db $AD, $01, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_WallMaster:
|1EAFDE| LDA.b #$00
|1EAFE0| XBA
|1EAFE1| LDA.w $0DC0,X

|1EAFE4| REP #$20

|1EAFE6| ASL A ; x32
|1EAFE7| ASL A
|1EAFE8| ASL A
|1EAFE9| ASL A
|1EAFEA| ASL A
|1EAFEB| ADC.w #.oam_groups
|1EAFEE| STA.b $08

|1EAFF0| SEP #$20

|1EAFF2| LDA.b #$04
|1EAFF4| JSR TabulatedSpriteDraw_bank1E

|1EAFF7| JSL SpriteDraw_BigShadow_with_altitude

|1EAFFB| RTS

;===================================================================================================

Sprite_8F_Blob:
|1EAFFC| LDA.w $0DD0,X
|1EAFFF| CMP.b #$09
|1EB001| BNE .skip_tile_collision

|1EB003| LDA.w $0E90,X
|1EB006| BEQ .skip_tile_collision

|1EB008| STZ.w $0E90,X

|1EB00B| LDA.b #$01
|1EB00D| STA.w $0D50,X

|1EB010| JSR CheckSpriteTileCollision_bank1E

|1EB013| STZ.w $0D50,X

|1EB016| BEQ .dont_die

|1EB018| STZ.w $0DD0,X

|1EB01B| RTS

;---------------------------------------------------------------------------------------------------

.dont_die
|1EB01C| LDA.b #$20 ; SFX2.20
|1EB01E| JSL QueueSpriteSFX2WithPan

.skip_tile_collision
|1EB022| LDA.w $0DB0,X
|1EB025| BEQ .normal_priority

|1EB027| LDA.b #$30
|1EB029| STA.w $0B89,X

.normal_priority
|1EB02C| JSR SpriteDraw_Blob
|1EB02F| JSR CheckIfActive_bank1E

|1EB032| LDA.w $0D80,X
|1EB035| CMP.b #$02
|1EB037| BCC .hidden

|1EB039| JSL CheckDamageFromLink_long

.hidden
|1EB03D| JSR HandleSpriteRecoil_bank1E

|1EB040| LDA.w $0D80,X
|1EB043| JSL JumpTableLocal
|1EB047| dw Blob_Hidden
|1EB049| dw Blob_Peeking
|1EB04B| dw Blob_Falling
|1EB04D| dw Blob_Active

;===================================================================================================

Blob_Hidden:
|1EB04F| LDA.w $0F60,X
|1EB052| PHA

|1EB053| ORA.b #$09
|1EB055| STA.w $0F60,X

|1EB058| LDA.w $0E40,X
|1EB05B| ORA.b #$80
|1EB05D| STA.w $0E40,X

|1EB060| JSR CheckDamageToLink_bank1E

|1EB063| PLA
|1EB064| STA.w $0F60,X

|1EB067| BCC .exit

|1EB069| INC.w $0D80,X

|1EB06C| LDA.b #$7F
|1EB06E| STA.w $0DF0,X

|1EB071| ASL.w $0E40,X
|1EB074| LSR.w $0E40,X

|1EB077| LDA.b $22
|1EB079| STA.w $0D10,X

|1EB07C| LDA.b $23
|1EB07E| STA.w $0D30,X

|1EB081| LDA.b $20
|1EB083| CLC
|1EB084| ADC.b #$08
|1EB086| STA.w $0D00,X

|1EB089| LDA.b $21
|1EB08B| ADC.b #$00
|1EB08D| STA.w $0D20,X

|1EB090| LDA.b #$30
|1EB092| STA.w $0F10,X

|1EB095| STZ.w $0BA0,X

.exit
|1EB098| RTS

;===================================================================================================

pool Blob_Peeking

.anim_step
|1EB099| db $00, $01, $07, $07, $06, $06, $05, $05
|1EB0A1| db $06, $06, $05, $05, $04, $04, $04, $04

endpool

;---------------------------------------------------------------------------------------------------

Blob_Peeking:
|1EB0A9| LDA.w $0DF0,X
|1EB0AC| BNE .delay

|1EB0AE| INC.w $0D80,X

|1EB0B1| LDA.b #$20
|1EB0B3| STA.w $0F80,X

|1EB0B6| LDA.b #$10
|1EB0B8| JSL ApplySpeedTowardsLink_long

|1EB0BC| LDA.b #$30 ; SFX3.30
|1EB0BE| JSL QueueSpriteSFX3WithPan

|1EB0C2| RTS

;---------------------------------------------------------------------------------------------------

.delay
|1EB0C3| LSR A
|1EB0C4| LSR A
|1EB0C5| LSR A
|1EB0C6| TAY

|1EB0C7| LDA.w .anim_step,Y
|1EB0CA| STA.w $0DC0,X

|1EB0CD| RTS

;===================================================================================================

pool Blob_Falling

.anim_step
|1EB0CE| db $00, $01

endpool

;---------------------------------------------------------------------------------------------------

Blob_Falling:
|1EB0D0| LDA.w $0DF0,X
|1EB0D3| BEQ .begin_descent

|1EB0D5| DEC A
|1EB0D6| BNE .shake_from_fall

|1EB0D8| LDA.b #$20
|1EB0DA| STA.w $0DF0,X

|1EB0DD| INC.w $0D80,X

|1EB0E0| STZ.w $0DC0,X

|1EB0E3| RTS

.shake_from_fall
|1EB0E4| LSR A ; /16
|1EB0E5| LSR A
|1EB0E6| LSR A
|1EB0E7| LSR A
|1EB0E8| TAY

|1EB0E9| LDA.w .anim_step,Y
|1EB0EC| STA.w $0DC0,X

|1EB0EF| LDA.b $1A
|1EB0F1| LSR A
|1EB0F2| AND.b #$01
|1EB0F4| TAY

|1EB0F5| LDA.w .shake_x,Y
|1EB0F8| STA.w $0D50,X

|1EB0FB| JSR MoveSpriteX_bank1E

|1EB0FE| RTS

.begin_descent
|1EB0FF| JSL CheckDamageFromLink_long
|1EB103| JSR MoveSpriteXY_bank1E
|1EB106| JSR CheckSpriteTileCollision_bank1E

|1EB109| LDA.w $0F70,X
|1EB10C| PHA

|1EB10D| JSR MoveSpriteZ_bank1E

|1EB110| LDA.w $0F80,X
|1EB113| CMP.b #$C0
|1EB115| BMI .at_max_z_speed

|1EB117| SEC
|1EB118| SBC.b #$02
|1EB11A| STA.w $0F80,X

;---------------------------------------------------------------------------------------------------

.at_max_z_speed
|1EB11D| PLA
|1EB11E| EOR.w $0F70,X
|1EB121| BPL .exit

|1EB123| LDA.w $0F70,X
|1EB126| BPL .exit

|1EB128| STZ.w $0F80,X
|1EB12B| STZ.w $0F70,X
|1EB12E| STZ.w $0DB0,X

|1EB131| LDA.b #$1F
|1EB133| STA.w $0DF0,X

|1EB136| LDA.b #$08
|1EB138| STA.w $0EB0,X

.exit
|1EB13B| RTS

;---------------------------------------------------------------------------------------------------

.shake_x
|1EB13C| db -8,  8

;===================================================================================================

Blob_Active:
|1EB13E| JSR CheckDamageToLink_bank1E

|1EB141| LDA.w $0E00,X
|1EB144| BNE .dont_turn

|1EB146| LDA.b #$30
|1EB148| JSL ApplySpeedTowardsLink_long

|1EB14C| JSL GetRandomNumber
|1EB150| AND.b #$3F
|1EB152| ORA.b #$60
|1EB154| STA.w $0E00,X

|1EB157| ASL.w $0F50,X
|1EB15A| ASL.w $0F50,X

|1EB15D| LDA.w $0D50,X
|1EB160| ASL A
|1EB161| ROR.w $0F50,X
|1EB164| LSR.w $0F50,X

.dont_turn
; TODO examine this
|1EB167| LDA.w $0E10,X
|1EB16A| BNE .not_aggressive

|1EB16C| INC.w $0E80,X

|1EB16F| LDA.w $0E80,X
|1EB172| AND.b #$0E
|1EB174| ORA.w $0E70,X
|1EB177| BNE .still_aggressive

|1EB179| JSR MoveSpriteXY_bank1E

|1EB17C| INC.w $0ED0,X

|1EB17F| LDA.w $0ED0,X
|1EB182| CMP.w $0EB0,X
|1EB185| BNE .still_aggressive

|1EB187| STZ.w $0ED0,X

|1EB18A| JSL GetRandomNumber
|1EB18E| AND.b #$1F
|1EB190| ADC.b #$40
|1EB192| STA.w $0E10,X

|1EB195| JSL GetRandomNumber
|1EB199| AND.b #$1F
|1EB19B| ORA.b #$10
|1EB19D| STA.w $0EB0,X

.still_aggressive
|1EB1A0| JSR CheckSpriteTileCollision_bank1E

|1EB1A3| LDA.w $0E80,X
|1EB1A6| AND.b #$08
|1EB1A8| LSR A
|1EB1A9| LSR A
|1EB1AA| LSR A
|1EB1AB| STA.w $0DC0,X

|1EB1AE| RTS

.not_aggressive
|1EB1AF| LDY.b #$00

|1EB1B1| AND.b #$10
|1EB1B3| BEQ .anim_step_0

|1EB1B5| INY

.anim_step_0
|1EB1B6| TYA
|1EB1B7| STA.w $0DC0,X

|1EB1BA| RTS

;===================================================================================================

pool SpriteDraw_Blob

.flip
|1EB1BB| db $00, $00, $40, $40

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Blob:
|1EB1BF| LDA.w $0F50,X
|1EB1C2| LSR A
|1EB1C3| BCS .not_quake_blob

|1EB1C5| LDA.w $0FC6
|1EB1C8| CMP.b #$03
|1EB1CA| BCS .bad_gfx

.not_quake_blob
|1EB1CC| LDA.w $0F10,X
|1EB1CF| BEQ .draw_in_front_of_link

|1EB1D1| LDA.b #$08
|1EB1D3| JSL AllocateOAMInRegionB

.draw_in_front_of_link
|1EB1D7| LDA.w $0D80,X
|1EB1DA| BEQ .invisible

|1EB1DC| LDA.w $0DC0,X
|1EB1DF| CMP.b #$04
|1EB1E1| BCS .head_popping_out

;---------------------------------------------------------------------------------------------------

|1EB1E3| PHA

|1EB1E4| TAY

|1EB1E5| LDA.w $0F50,X
|1EB1E8| PHA

|1EB1E9| EOR.w .flip,Y
|1EB1EC| STA.w $0F50,X

|1EB1EF| AND.b #$01
|1EB1F1| EOR.b #$01

|1EB1F3| ASL A
|1EB1F4| ASL A

|1EB1F5| CLC
|1EB1F6| ADC.w $0DC0,X
|1EB1F9| STA.w $0DC0,X

|1EB1FC| JSL SpriteDraw_SingleLarge_long

|1EB200| PLA
|1EB201| STA.w $0F50,X

|1EB204| PLA
|1EB205| STA.w $0DC0,X

|1EB208| RTS

;---------------------------------------------------------------------------------------------------

.invisible
|1EB209| JSL GetScreenCoordinates_long

.bad_gfx
|1EB20D| RTS

;---------------------------------------------------------------------------------------------------

.oam_groups
; group00
|1EB20E| dw   0,   8 : db $6C, $03, $00, $00
|1EB216| dw   8,   8 : db $6D, $03, $00, $00

; group01
|1EB21E| dw   0,   8 : db $60, $00, $00, $00
|1EB226| dw   8,   8 : db $70, $00, $00, $00

; group02
|1EB22E| dw   0,   8 : db $70, $40, $00, $00
|1EB236| dw   8,   8 : db $60, $40, $00, $00

; group03
|1EB23E| dw   0,   0 : db $40, $00, $00, $02
|1EB246| dw   0,   0 : db $40, $00, $00, $02

;---------------------------------------------------------------------------------------------------

; Technically, these are drawing broken graphics when hidden.
; It's just not visible because it's always off screen on the x-axis.
.head_popping_out
|1EB24E| LDA.b #$00
|1EB250| XBA

|1EB251| LDA.w $0DC0,X
|1EB254| SEC
|1EB255| SBC.b #$04

|1EB257| REP #$20

|1EB259| ASL A ; x16
|1EB25A| ASL A
|1EB25B| ASL A
|1EB25C| ASL A

|1EB25D| ADC.w #.oam_groups
|1EB260| STA.b $08

|1EB262| SEP #$20

|1EB264| LDA.b #$02
|1EB266| JMP.w TabulatedSpriteDraw_bank1E

;===================================================================================================

Sprite_8E_Terrorpin:
|1EB269| JSL SpriteDraw_SingleLarge_long
|1EB26D| JSR CheckSpriteTileCollision_bank1E
|1EB270| JSR CheckIfActive_bank1E
|1EB273| JSR HandleSpriteRecoil_bank1E

|1EB276| LDA.w $0E10,X
|1EB279| BNE .invulnerable

|1EB27B| JSL CheckDamageFromLink_long

.invulnerable
|1EB27F| JSR Terrorpin_CheckForHammer
|1EB282| JSR MoveSpriteXYZ_bank1E

|1EB285| LDA.w $0DA0,X
|1EB288| JSL JumpTableLocal
|1EB28C| dw Terrorpin_RightsideUp
|1EB28E| dw Terrorpin_UpsideDown

|1EB290| RTS ; useless

;===================================================================================================

pool Terrorpin_RightsideUp

.speed_x
|1EB291| db   8,  -8,   0,   0
|1EB295| db  12, -12,   0,   0

.speed_y
|1EB299| db   0,   0,   8,  -8
|1EB29D| db   0,   0,  12, -12

endpool

;---------------------------------------------------------------------------------------------------

Terrorpin_RightsideUp:
|1EB2A1| LDA.w $0F10,X
|1EB2A4| BNE .dont_turn

|1EB2A6| JSL GetRandomNumber
|1EB2AA| AND.b #$1F
|1EB2AC| ADC.b #$20
|1EB2AE| STA.w $0F10,X

|1EB2B1| AND.b #$03
|1EB2B3| STA.w $0DE0,X

; [BUG] This will always fail, because of the previous AND
|1EB2B6| AND.b #$30
|1EB2B8| BNE .dont_turn

|1EB2BA| JSR GetDirectionTowardsLink_bank1E
|1EB2BD| TYA
|1EB2BE| STA.w $0DE0,X

.dont_turn
|1EB2C1| LDA.w $0DE0,X
|1EB2C4| CLC
|1EB2C5| ADC.w $0ED0,X
|1EB2C8| TAY

|1EB2C9| LDA.w .speed_x,Y
|1EB2CC| STA.w $0D50,X

|1EB2CF| LDA.w .speed_y,Y
|1EB2D2| STA.w $0D40,X

|1EB2D5| LDA.w $0F80,X
|1EB2D8| DEC A
|1EB2D9| DEC A
|1EB2DA| STA.w $0F80,X

|1EB2DD| LDA.w $0F70,X
|1EB2E0| BPL .airborne

|1EB2E2| STZ.w $0F70,X
|1EB2E5| STZ.w $0F80,X

.airborne
|1EB2E8| LDA.b $1A
|1EB2EA| LDY.w $0ED0,X
|1EB2ED| BNE .move_faster

|1EB2EF| LSR A

.move_faster
|1EB2F0| LSR A
|1EB2F1| LSR A
|1EB2F2| AND.b #$01
|1EB2F4| STA.w $0DC0,X

|1EB2F7| LDA.w $0E60,X
|1EB2FA| ORA.b #$40
|1EB2FC| STA.w $0E60,X

|1EB2FF| LDA.b #$04
|1EB301| STA.w $0CAA,X

|1EB304| JSR CheckDamageToLink_bank1E

|1EB307| RTS

;===================================================================================================

Terrorpin_UpsideDown:
|1EB308| LDA.w $0E60,X
|1EB30B| AND.b #$BF
|1EB30D| STA.w $0E60,X

|1EB310| STZ.w $0CAA,X

|1EB313| LDA.w $0F10,X
|1EB316| BNE .delay

|1EB318| STZ.w $0DA0,X

|1EB31B| LDA.b #$20
|1EB31D| STA.w $0F80,X

|1EB320| LDA.b #$40
|1EB322| STA.w $0F10,X

|1EB325| RTS

;---------------------------------------------------------------------------------------------------

.delay
|1EB326| LDA.w $0F80,X
|1EB329| DEC A
|1EB32A| DEC A
|1EB32B| STA.w $0F80,X

|1EB32E| LDA.w $0F70,X
|1EB331| BPL .dont_reset_y_speed

|1EB333| STZ.w $0F70,X

|1EB336| LDA.w $0F80,X
|1EB339| EOR.b #$FF
|1EB33B| INC A
|1EB33C| LSR A

|1EB33D| CMP.b #$09
|1EB33F| BCS .airborne

|1EB341| LDA.b #$00

;---------------------------------------------------------------------------------------------------

.airborne
|1EB343| STA.w $0F80,X

|1EB346| LDA.w $0D50,X
|1EB349| ASL A
|1EB34A| ROR.w $0D50,X

|1EB34D| LDA.w $0D50,X
|1EB350| CMP.b #$FF
|1EB352| BNE .dont_reset_x_speed

|1EB354| STZ.w $0D50,X

;---------------------------------------------------------------------------------------------------

.dont_reset_x_speed
|1EB357| LDA.w $0D40,X
|1EB35A| ASL A
|1EB35B| ROR.w $0D40,X

|1EB35E| LDA.w $0D40,X
|1EB361| CMP.b #$FF
|1EB363| BNE .dont_reset_y_speed

|1EB365| STZ.w $0D40,X

;---------------------------------------------------------------------------------------------------

.dont_reset_y_speed
|1EB368| LDA.w $0F10,X
|1EB36B| CMP.b #$40
|1EB36D| BCS .not_struggling

|1EB36F| LSR A
|1EB370| AND.b #$01
|1EB372| TAY

|1EB373| LDA.w .shake,Y
|1EB376| STA.w $0D50,X

|1EB379| INC.w $0E80,X

;---------------------------------------------------------------------------------------------------

.not_struggling
|1EB37C| INC.w $0E80,X

|1EB37F| LDA.w $0E80,X
|1EB382| LSR A
|1EB383| LSR A
|1EB384| LSR A

|1EB385| AND.b #$01
|1EB387| TAY

|1EB388| LDA.b #$02
|1EB38A| STA.w $0DC0,X

|1EB38D| LDA.w $0F50,X
|1EB390| AND.b #$BF
|1EB392| ORA.w .flip,Y
|1EB395| STA.w $0F50,X

|1EB398| RTS

;---------------------------------------------------------------------------------------------------

.flip
|1EB399| db $00, $40

.shake
|1EB39B| db   8,  -8

;===================================================================================================

Terrorpin_CheckForHammer:
|1EB39D| LDA.w $0F70,X ; check height and timer
|1EB3A0| ORA.w $0E10,X
|1EB3A3| BNE .nohit

|1EB3A5| LDA.b $EE ; compare layers
|1EB3A7| CMP.w $0F20,X
|1EB3AA| BNE .nohit

|1EB3AC| LDA.w $0044 ; check action hitbox offset thing
|1EB3AF| CMP.b #$80
|1EB3B1| BEQ .nohit

|1EB3B3| LDA.w $0301 ; check if hammering
|1EB3B6| AND.b #$0A
|1EB3B8| BEQ .nohit

|1EB3BA| JSL SetupActionHitbox_long
|1EB3BE| JSR Terrorpin_SetUpHammerHitbox
|1EB3C1| JSL CheckIfHitboxesOverlap_long
|1EB3C5| BCC .nohit

|1EB3C7| LDA.w $0D50,X ; invert x speed
|1EB3CA| EOR.b #$FF
|1EB3CC| INC A
|1EB3CD| STA.w $0D50,X

|1EB3D0| LDA.w $0D40,X ; invert y speed
|1EB3D3| EOR.b #$FF
|1EB3D5| INC A
|1EB3D6| STA.w $0D40,X

|1EB3D9| LDA.b #$20 ; set timer to 32 frames
|1EB3DB| STA.w $0E10,X

|1EB3DE| LDA.b #$20 ; set z velocity
|1EB3E0| STA.w $0F80,X

|1EB3E3| LDA.b #$04
|1EB3E5| STA.w $0ED0,X

|1EB3E8| LDA.w $0DA0,X
|1EB3EB| EOR.b #$01
|1EB3ED| STA.w $0DA0,X

|1EB3F0| CMP.b #$01

|1EB3F2| LDA.b #$FF
|1EB3F4| BCS .nonzerodao

|1EB3F6| LDA.b #$40

.nonzerodao
|1EB3F8| STA.w $0F10,X

.nohit
|1EB3FB| STZ.w $0EB0,X

|1EB3FE| RTS

;===================================================================================================

Terrorpin_SetUpHammerHitbox:
|1EB3FF| LDA.w $0D10,X
|1EB402| SEC
|1EB403| SBC.b #$10
|1EB405| STA.b $04

|1EB407| LDA.w $0D30,X
|1EB40A| SBC.b #$00
|1EB40C| STA.b $0A

|1EB40E| LDA.w $0D00,X
|1EB411| SEC
|1EB412| SBC.b #$10
|1EB414| STA.b $05

|1EB416| LDA.w $0D20,X
|1EB419| SBC.b #$00
|1EB41B| STA.b $0B

|1EB41D| LDA.b #$30
|1EB41F| STA.b $06
|1EB421| STA.b $07

|1EB423| RTS

;===================================================================================================

pool Sprite_8C_Arrghus

.anim_step
|1EB424| db $01, $01, $01, $02, $02, $01, $01, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

Sprite_8C_Arrghus:
|1EB42D| LDA.w $0B89,X
|1EB430| ORA.b #$30
|1EB432| STA.w $0B89,X

|1EB435| JSR SpriteDraw_Arrghus

|1EB438| LDA.w $0DD0,X
|1EB43B| CMP.b #$09
|1EB43D| BNE .dying

; This is why Josh's 17 frame save works.
; Weird to skip the check this way...
|1EB43F| LDA.w $0F70,X
|1EB442| CMP.b #$60
|1EB444| BCS .airborne

.dying
|1EB446| JSR CheckIfActive_bank1E

;---------------------------------------------------------------------------------------------------

.airborne
|1EB449| JSR ControlArrghi

|1EB44C| LDA.b #$01
|1EB44E| STA.w $0B0C

|1EB451| LDA.w $0EF0,X
|1EB454| AND.b #$7F
|1EB456| CMP.b #$02
|1EB458| BNE .dont_jump

|1EB45A| JSR Arrghus_BOING

|1EB45D| LDA.b #$40
|1EB45F| STA.w $0E60,X

.dont_jump
|1EB462| JSR HandleSpriteRecoil_bank1E
|1EB465| JSR CheckDamageToLink_bank1E

|1EB468| LDA.w $0E80,X
|1EB46B| INC.w $0E80,X
|1EB46E| AND.b #$03
|1EB470| BNE .dont_tick_step

|1EB472| INC.w $0ED0,X

|1EB475| LDA.w $0ED0,X
|1EB478| CMP.b #$09
|1EB47A| BNE .dont_reset_step

|1EB47C| STZ.w $0ED0,X

.dont_reset_step
|1EB47F| LDY.w $0ED0,X

|1EB482| LDA.w .anim_step,Y
|1EB485| STA.w $0DC0,X

;---------------------------------------------------------------------------------------------------

.dont_tick_step
|1EB488| JSR CheckSpriteTileCollision_bank1E
|1EB48B| BEQ .handle_ai

|1EB48D| LDY.w $0D80,X
|1EB490| CPY.b #$05
|1EB492| BNE .stop_moving

|1EB494| AND.b #$03
|1EB496| BEQ .invert_y_speed

.invert_x_speed
|1EB498| LDA.w $0D50,X
|1EB49B| EOR.b #$FF
|1EB49D| INC A
|1EB49E| STA.w $0D50,X

|1EB4A1| BRA .handle_ai

.invert_y_speed
|1EB4A3| LDA.w $0D40,X
|1EB4A6| EOR.b #$FF
|1EB4A8| INC A
|1EB4A9| STA.w $0D40,X

|1EB4AC| BRA .handle_ai

;---------------------------------------------------------------------------------------------------

.stop_moving
|1EB4AE| JSR ZeroVelocityXY_bank1E

.handle_ai
|1EB4B1| LDA.w $0D80,X
|1EB4B4| JSL JumpTableLocal
|1EB4B8| dw Arrghus_Move
|1EB4BA| dw Arrghus_MakeDecision
|1EB4BC| dw Arrghus_PuffAttack
|1EB4BE| dw Arrghus_JumpUp
|1EB4C0| dw Arrghus_SmashDown
|1EB4C2| dw Arrghus_PingPong

;===================================================================================================

Arrghus_JumpUp:
|1EB4C4| LDA.b #$78
|1EB4C6| STA.w $0F80,X

|1EB4C9| JSR MoveSpriteZ_bank1E

|1EB4CC| LDA.w $0F70,X
|1EB4CF| CMP.b #$E0
|1EB4D1| BCC .at_max_z_speed

|1EB4D3| LDA.b #$40
|1EB4D5| STA.w $0DF0,X

|1EB4D8| INC.w $0D80,X

|1EB4DB| STZ.w $0F80,X

|1EB4DE| LDA.b $22
|1EB4E0| STA.w $0D10,X

|1EB4E3| LDA.b $20
|1EB4E5| STA.w $0D00,X

.at_max_z_speed
|1EB4E8| RTS

;===================================================================================================

Arrghus_SmashDown:
|1EB4E9| LDA.w $0DF0,X
|1EB4EC| BNE .descending

|1EB4EE| LDA.b #$90
|1EB4F0| STA.w $0F80,X

|1EB4F3| LDA.w $0F70,X
|1EB4F6| PHA

|1EB4F7| JSR MoveSpriteZ_bank1E

|1EB4FA| PLA
|1EB4FB| EOR.w $0F70,X
|1EB4FE| BPL .descending

|1EB500| LDA.w $0F70,X
|1EB503| BPL .descending

|1EB505| STZ.w $0F70,X

|1EB508| JSL Arrghus_SpawnSplash

|1EB50C| INC.w $0D80,X

|1EB50F| LDA.b #$20
|1EB511| STA.w $0DF0,X

|1EB514| LDA.b #$03 ; SFX3.03
|1EB516| JSL QueueSpriteSFX3WithPan

|1EB51A| LDA.b #$20
|1EB51C| STA.w $0D50,X
|1EB51F| STA.w $0D40,X

.descending
|1EB522| DEC A
|1EB523| BNE .exit

|1EB525| LDA.b #$20 ; SFX2.20
|1EB527| JSL QueueSpriteSFX2WithPan

.exit
|1EB52B| RTS

;===================================================================================================

Arrghus_PingPong:
|1EB52C| LDA.w $0DF0,X
|1EB52F| BNE .exit

|1EB531| STZ.w $0E60,X

|1EB534| JSR MoveSpriteXY_bank1E
|1EB537| JSL CheckDamageFromLink_long

|1EB53B| LDA.b $1A
|1EB53D| AND.b #$07
|1EB53F| BNE .exit

|1EB541| LDA.b #$28 ; SFX2.28
|1EB543| JSL QueueSpriteSFX2WithPan

|1EB547| PHX

|1EB548| TXY
|1EB549| LDX.b #$1D

; Y speed determines slot? Interesting
|1EB54B| LDA.w $0D40,Y
|1EB54E| BMI .next_slot

|1EB550| LDX.b #$0E

.next_slot
|1EB552| LDA.l $7FF800,X
|1EB556| BNE .slot_occupied

|1EB558| LDA.b #$15 ; GARNISH 15
|1EB55A| STA.l $7FF800,X
|1EB55E| STA.w $0FB4

|1EB561| LDA.w $0D10,Y
|1EB564| STA.l $7FF83C,X

|1EB568| LDA.w $0D30,Y
|1EB56B| STA.l $7FF878,X

|1EB56F| LDA.w $0D00,Y
|1EB572| CLC
|1EB573| ADC.b #$18
|1EB575| STA.l $7FF81E,X

|1EB579| LDA.w $0D20,Y
|1EB57C| STA.l $7FF85A,X

|1EB580| LDA.b #$0F
|1EB582| STA.l $7FF90E,X

|1EB586| PLX

|1EB587| RTS

;---------------------------------------------------------------------------------------------------

.slot_occupied
|1EB588| DEX
|1EB589| BPL .next_slot

|1EB58B| PLX

.exit
|1EB58C| RTS

;===================================================================================================

Arrghus_Move:
|1EB58D| LDA.w $0DF0,X
|1EB590| BNE .delay

|1EB592| INC.w $0D80,X

|1EB595| LDA.b #$30
|1EB597| STA.w $0DF0,X

.delay
|1EB59A| JSR MoveSpriteXY_bank1E

|1EB59D| LDA.w $0D50,X
|1EB5A0| CMP.w $0EB0,X
|1EB5A3| BEQ .check_y_speed
|1EB5A5| BPL .x_too_high

|1EB5A7| INC.w $0D50,X
|1EB5AA| BRA .check_y_speed

.x_too_high
|1EB5AC| DEC.w $0D50,X

.check_y_speed
|1EB5AF| LDA.w $0D40,X
|1EB5B2| CMP.w $0DE0,X
|1EB5B5| BEQ .exit
|1EB5B7| BPL .y_too_high

|1EB5B9| INC.w $0D40,X
|1EB5BC| BRA .exit

.y_too_high
|1EB5BE| DEC.w $0D40,X

.exit
|1EB5C1| RTS

;===================================================================================================

Arrghus_MakeDecision:
|1EB5C2| LDA.w $0DF0,X
|1EB5C5| BNE Arrghus_Decelerate

|1EB5C7| STZ.w $0D80,X

|1EB5CA| JSL CheckIfScreenIsClear
|1EB5CE| BCS Arrghus_BOING

|1EB5D0| INC.w $0B0B ; inc bob

|1EB5D3| LDA.w $0B0B
|1EB5D6| CMP.b #$04
|1EB5D8| BNE Arrghus_TargetLink

|1EB5DA| STZ.w $0B0B

|1EB5DD| LDA.b #$02
|1EB5DF| STA.w $0D80,X

|1EB5E2| LDA.b #$B0
|1EB5E4| STA.w $0DF0,X

|1EB5E7| RTS

;===================================================================================================

Arrghus_BOING:
|1EB5E8| LDA.b #$03
|1EB5EA| STA.w $0D80,X

|1EB5ED| LDA.b #$32 ; SFX3.32
|1EB5EF| JSL QueueSpriteSFX3WithPan

|1EB5F3| STZ.w $0E80,X

|1EB5F6| RTS

;===================================================================================================

Arrghus_TargetLink:
|1EB5F7| JSL GetRandomNumber
|1EB5FB| AND.b #$3F
|1EB5FD| ADC.b #$30
|1EB5FF| STA.w $0DF0,X

|1EB602| AND.b #$03
|1EB604| ADC.b #$08
|1EB606| JSL ProjectSpriteSpeedTowardsLink_long

|1EB60A| LDA.b $00
|1EB60C| STA.w $0DE0,X

|1EB60F| LDA.b $01
|1EB611| STA.w $0EB0,X

|1EB614| RTS

;===================================================================================================

Arrghus_Decelerate:
|1EB615| JSR MoveSpriteXY_bank1E

|1EB618| LDA.w $0D50,X
|1EB61B| BEQ .check_y_speed
|1EB61D| BPL .x_positive

|1EB61F| INC.w $0D50,X
|1EB622| BRA .check_y_speed

.x_positive
|1EB624| DEC.w $0D50,X

.check_y_speed
|1EB627| LDA.w $0D40,X
|1EB62A| BEQ .exit
|1EB62C| BPL .y_positive

|1EB62E| INC.w $0D40,X
|1EB631| BRA .exit

.y_positive
|1EB633| DEC.w $0D40,X

.exit
|1EB636| RTS

;===================================================================================================

Arrghus_PuffAttack:
|1EB637| LDA.b #$08
|1EB639| STA.w $0B0C

|1EB63C| LDA.w $0DF0,X
|1EB63F| CMP.b #$20
|1EB641| BCC .shrink

|1EB643| CMP.b #$60
|1EB645| BCS .hold

.grow
|1EB647| INC.w $0B0A

|1EB64A| RTS

.shrink
|1EB64B| DEC.w $0B0A
|1EB64E| BMI .attack_over

|1EB650| RTS

;---------------------------------------------------------------------------------------------------

.hold
|1EB651| BNE .not_about_to_shrink

|1EB653| LDA.b #$26 ; SFX3.26
|1EB655| BRA .play_sfx

.not_about_to_shrink
|1EB657| AND.b #$0F
|1EB659| BNE .no_sfx

|1EB65B| LDA.b #$06 ; SFX3.06

.play_sfx
|1EB65D| JSL QueueSpriteSFX3WithPan

.no_sfx
|1EB661| RTS

;---------------------------------------------------------------------------------------------------

.attack_over
|1EB662| STZ.w $0B0A

|1EB665| DEC.w $0D80,X

|1EB668| LDA.b #$70
|1EB66A| STA.w $0DF0,X

|1EB66D| RTS

;===================================================================================================

pool ControlArrghi

.angle_offset
|1EB66E| dw $0000, $0040, $0080, $00C0, $0100, $0140, $0180, $01C0
|1EB67E| dw $0000, $0066, $00CC, $0132, $0198

.angle_mask
|1EB688| dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000
|1EB698| dw $01FF, $01FF, $01FF, $01FF, $01FF

.pinch
|1EB6A2| db $14, $14, $14, $14, $14, $14, $14, $14
|1EB6AA| db $0C, $0C, $0C, $0C, $0C

; TODO name
.some_offset
|1EB6AF| db $00, $FF, $FE, $FD, $FC, $FB, $FA, $FA, $FB, $FC, $FD, $FE, $FF
|1EB6BC| db $00, $FF, $FE, $FD, $FC, $FB, $FA, $FA, $FB, $FC, $FD, $FE, $FF
|1EB6C9| db $00, $FF, $FE, $FD, $FC, $FB, $FA, $FA, $FB, $FC, $FD, $FE, $FF
|1EB6D6| db $00, $FF, $FE, $FD, $FC, $FB, $FA, $FA, $FB, $FC, $FD, $FE, $FF

endpool

;---------------------------------------------------------------------------------------------------

ControlArrghi:
; Spin arrghus puffs
|1EB6E3| LDA.w $0B08
|1EB6E6| CLC
|1EB6E7| ADC.w $0B0C
|1EB6EA| STA.w $0B08

|1EB6ED| LDA.w $0B09
|1EB6F0| ADC.b #$00
|1EB6F2| STA.w $0B09

|1EB6F5| LDA.b $1A
|1EB6F7| AND.b #$03
|1EB6F9| BNE .check_offset_y

; TODO what is this? some post angular offset?
|1EB6FB| INC.w $0D90,X

|1EB6FE| LDA.w $0D90,X
|1EB701| CMP.b #$0D
|1EB703| BNE .check_offset_y

|1EB705| STZ.w $0D90,X

.check_offset_y
|1EB708| LDA.b $1A
|1EB70A| AND.b #$07
|1EB70C| BNE .start_puffs

|1EB70E| INC.w $0DA0,X

|1EB711| LDA.w $0DA0,X
|1EB714| CMP.b #$0D
|1EB716| BNE .start_puffs

|1EB718| STZ.w $0DA0,X

;---------------------------------------------------------------------------------------------------

; TODO analyze
.start_puffs
|1EB71B| STZ.w $0FB5

.next_puff
|1EB71E| LDA.w $0FB5
|1EB721| PHA

|1EB722| ASL A
|1EB723| TAY

|1EB724| REP #$20

|1EB726| LDA.w $0B08
|1EB729| CLC
|1EB72A| ADC.w .angle_offset,Y
|1EB72D| EOR.w .angle_mask,Y
|1EB730| STA.b $00

|1EB732| SEP #$20

|1EB734| PLY

|1EB735| LDA.w $0B0A
|1EB738| CLC
|1EB739| ADC.w .pinch,Y
|1EB73C| STA.b $0E
|1EB73E| STA.b $0F

|1EB740| LDA.w $0FB5
|1EB743| STA.b $02

|1EB745| LDA.w $0D90,X
|1EB748| CLC
|1EB749| ADC.b $02
|1EB74B| TAY

|1EB74C| LDA.b $0F
|1EB74E| CLC
|1EB74F| ADC.w .some_offset,Y
|1EB752| STA.b $0F

|1EB754| LDA.w $0DA0,X
|1EB757| CLC
|1EB758| ADC.b $02
|1EB75A| TAY

|1EB75B| LDA.b $0E
|1EB75D| CLC
|1EB75E| ADC.w .some_offset,Y
|1EB761| STA.b $0E

|1EB763| PHX
|1EB764| REP #$30

|1EB766| LDA.b $00
|1EB768| AND.w #$00FF
|1EB76B| ASL A
|1EB76C| TAX

|1EB76D| LDA.l TrigTable,X
|1EB771| STA.b $04

|1EB773| LDA.b $00
|1EB775| CLC
|1EB776| ADC.w #$0080
|1EB779| STA.b $02

|1EB77B| AND.w #$00FF
|1EB77E| ASL A
|1EB77F| TAX

|1EB780| LDA.l TrigTable,X
|1EB784| STA.b $06

|1EB786| SEP #$30

|1EB788| PLX

|1EB789| LDA.b $04
|1EB78B| STA.w WRMPYA

|1EB78E| LDA.b $0F

|1EB790| LDY.b $05
|1EB792| BNE .nonzero_a

|1EB794| STA.w WRMPYB

|1EB797| JSR NOP8

|1EB79A| ASL.w RDMPYL ; carry = round up
|1EB79D| LDA.w RDMPYH
|1EB7A0| ADC.b #$00

.nonzero_a
|1EB7A2| LSR.b $01
|1EB7A4| BCC .dont_invert_a

|1EB7A6| EOR.b #$FF
|1EB7A8| INC A

.dont_invert_a
|1EB7A9| STZ.b $0A

|1EB7AB| CMP.b #$00
|1EB7AD| BPL .positive_a

|1EB7AF| DEC.b $0A

.positive_a
|1EB7B1| CLC
|1EB7B2| ADC.w $0D10,X

|1EB7B5| LDY.w $0FB5
|1EB7B8| STA.w $0B10,Y

|1EB7BB| LDA.w $0D30,X
|1EB7BE| ADC.b $0A
|1EB7C0| STA.w $0B20,Y

|1EB7C3| LDA.b $06
|1EB7C5| STA.w WRMPYA

|1EB7C8| LDA.b $0E

|1EB7CA| LDY.b $07
|1EB7CC| BNE .nonzero_b

|1EB7CE| STA.w WRMPYB

|1EB7D1| JSR NOP8

|1EB7D4| ASL.w RDMPYL ; carry = round up
|1EB7D7| LDA.w RDMPYH
|1EB7DA| ADC.b #$00

.nonzero_b
|1EB7DC| LSR.b $03
|1EB7DE| BCC .dont_invert_b

|1EB7E0| EOR.b #$FF
|1EB7E2| INC A

.dont_invert_b
|1EB7E3| STZ.b $0A

|1EB7E5| CMP.b #$00
|1EB7E7| BPL .positive_b

|1EB7E9| DEC.b $0A

.positive_b
|1EB7EB| CLC
|1EB7EC| ADC.w $0D00,X
|1EB7EF| PHP

|1EB7F0| SEC
|1EB7F1| SBC.b #$10

|1EB7F3| LDY.w $0FB5
|1EB7F6| STA.w $0B30,Y

|1EB7F9| LDA.w $0D20,X
|1EB7FC| SBC.b #$00

|1EB7FE| PLP
|1EB7FF| ADC.b $0A
|1EB801| STA.w $0B40,Y

|1EB804| INC.w $0FB5

|1EB807| LDA.w $0FB5
|1EB80A| CMP.b #$0D
|1EB80C| BEQ .exit

|1EB80E| JMP.w .next_puff

.exit
|1EB811| RTS

;===================================================================================================

pool SpriteDraw_Arrghus

.oam_groups
|1EB812| dw  -8,  -4 : db $80, $00, $00, $02
|1EB81A| dw   8,  -4 : db $80, $40, $00, $02
|1EB822| dw  -8,  12 : db $A0, $00, $00, $02
|1EB82A| dw   8,  12 : db $A0, $40, $00, $02
|1EB832| dw   0,  24 : db $A8, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Arrghus:
|1EB83A| REP #$20

|1EB83C| LDA.w #.oam_groups
|1EB83F| STA.b $08

|1EB841| SEP #$20

|1EB843| LDA.b #$05
|1EB845| JSR TabulatedSpriteDraw_bank1E

|1EB848| LDA.w $0DC0,X
|1EB84B| ASL A
|1EB84C| STA.b $00

;---------------------------------------------------------------------------------------------------

|1EB84E| LDY.b #$02

.adjust_next_object
|1EB850| LDA.b ($90),Y
|1EB852| CLC
|1EB853| ADC.b $00
|1EB855| STA.b ($90),Y

|1EB857| INY
|1EB858| INY
|1EB859| INY
|1EB85A| INY

|1EB85B| CPY.b #$12
|1EB85D| BCC .adjust_next_object

|1EB85F| LDA.w $0D80,X
|1EB862| CMP.b #$05
|1EB864| BNE .not_pingponging

|1EB866| LDY.b #$11
|1EB868| LDA.b #$F0
|1EB86A| STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

.not_pingponging
|1EB86C| LDA.w $0E80,X
|1EB86F| AND.b #$08
|1EB871| BEQ .dont_flip_tentacles

|1EB873| LDY.b #$13

|1EB875| LDA.b ($90),Y
|1EB877| ORA.b #$40
|1EB879| STA.b ($90),Y

.dont_flip_tentacles
|1EB87B| LDA.w $0D80,X
|1EB87E| CMP.b #$05
|1EB880| BEQ .draw_wake

|1EB882| REP #$20

|1EB884| LDA.b $90
|1EB886| CLC
|1EB887| ADC.w #$0004
|1EB88A| STA.b $90

|1EB88C| INC.b $92

|1EB88E| SEP #$20

|1EB890| LDA.w $0F70,X

|1EB893| CMP.b #$A0
|1EB895| BCS .exit

|1EB897| LDA.w $0F50,X
|1EB89A| PHA

|1EB89B| AND.b #$FE
|1EB89D| STA.w $0F50,X

|1EB8A0| JSL SpriteDraw_BigShadow

|1EB8A4| PLA
|1EB8A5| STA.w $0F50,X

.exit
|1EB8A8| RTS

;---------------------------------------------------------------------------------------------------

.draw_wake
|1EB8A9| JSL SpriteDraw_ArrghusWake

|1EB8AD| RTS

;===================================================================================================

ControlArrghi_long:
|1EB8AE| PHB
|1EB8AF| PHK
|1EB8B0| PLB

|1EB8B1| JSR ControlArrghi

|1EB8B4| PLB

|1EB8B5| RTL

;===================================================================================================

pool Sprite_8D_Arrghi

.anim_step
|1EB8B6| db $00, $01, $02, $02, $02, $02, $02, $01

endpool

;---------------------------------------------------------------------------------------------------

Sprite_8D_Arrghi:
|1EB8BE| LDA.w $0B89,X
|1EB8C1| ORA.b #$30
|1EB8C3| STA.w $0B89,X

|1EB8C6| JSL SpriteDraw_SingleLarge_long
|1EB8CA| JSR CheckIfActive_bank1E

|1EB8CD| INC.w $0E80,X

|1EB8D0| LDA.w $0E80,X
|1EB8D3| LSR A
|1EB8D4| LSR A
|1EB8D5| LSR A
|1EB8D6| AND.b #$07
|1EB8D8| TAY

|1EB8D9| LDA.w .anim_step,Y
|1EB8DC| STA.w $0DC0,X

|1EB8DF| LDA.w $0DA0,X
|1EB8E2| BEQ .not_dragged

|1EB8E4| TAY
|1EB8E5| DEY

|1EB8E6| LDA.w $0C4A,Y
|1EB8E9| BEQ .stop_drag

|1EB8EB| LDA.w $0C04,Y
|1EB8EE| STA.w $0D10,X

|1EB8F1| LDA.w $0C18,Y
|1EB8F4| STA.w $0D30,X

|1EB8F7| LDA.w $0BFA,Y
|1EB8FA| STA.w $0D00,X

|1EB8FD| LDA.w $0C0E,Y
|1EB900| STA.w $0D20,X

|1EB903| LDA.b #$05
|1EB905| STA.w $0F50,X

|1EB908| LDA.w $0E60,X
|1EB90B| AND.b #$BF
|1EB90D| STA.w $0E60,X

|1EB910| RTS

.stop_drag
|1EB911| LDA.b #$01
|1EB913| STA.w $0D80,X

|1EB916| STZ.w $0DA0,X

|1EB919| LDA.b #$20
|1EB91B| STA.w $0DF0,X

.not_dragged
|1EB91E| LDA.w $0DF0,X
|1EB921| BNE .harmless

|1EB923| JSR CheckDamageToLink_bank1E

;---------------------------------------------------------------------------------------------------

.harmless
|1EB926| LDA.w $0D80,X
|1EB929| BNE .vulnerable

|1EB92B| LDA.w $0B0F,X
|1EB92E| STA.w $0D10,X

|1EB931| LDA.w $0B1F,X
|1EB934| STA.w $0D30,X

|1EB937| LDA.w $0B2F,X
|1EB93A| STA.w $0D00,X

|1EB93D| LDA.w $0B3F,X
|1EB940| STA.w $0D20,X

|1EB943| RTS

;---------------------------------------------------------------------------------------------------

.vulnerable
|1EB944| JSL CheckDamageFromLink_long

|1EB948| TXA
|1EB949| EOR.b $1A
|1EB94B| AND.b #$03
|1EB94D| BNE .cant_hug_arrghus

|1EB94F| LDA.w $0B0F,X
|1EB952| STA.b $04

|1EB954| LDA.w $0B1F,X
|1EB957| STA.b $05

|1EB959| LDA.w $0B2F,X
|1EB95C| STA.b $06

|1EB95E| LDA.w $0B3F,X
|1EB961| STA.b $07

|1EB963| LDA.b #$04
|1EB965| JSL ProjectSpriteSpeedTowardsLocation_long

|1EB969| LDA.b $00
|1EB96B| STA.w $0D40,X

|1EB96E| LDA.b $01
|1EB970| STA.w $0D50,X

|1EB973| LDA.w $0D10,X
|1EB976| SEC
|1EB977| SBC.w $0B0F,X
|1EB97A| CLC
|1EB97B| ADC.b #$08

|1EB97D| CMP.b #$10
|1EB97F| BCS .cant_hug_arrghus

|1EB981| LDA.w $0D00,X
|1EB984| SEC
|1EB985| SBC.w $0B2F,X
|1EB988| CLC
|1EB989| ADC.b #$08

|1EB98B| CMP.b #$10
|1EB98D| BCS .cant_hug_arrghus

|1EB98F| STZ.w $0D80,X

|1EB992| LDA.b #$0D
|1EB994| STA.w $0F50,X

|1EB997| LDA.w $0E60,X
|1EB99A| ORA.b #$40
|1EB99C| STA.w $0E60,X

.cant_hug_arrghus
|1EB99F| JSR MoveSpriteXY_bank1E

|1EB9A2| RTS

;===================================================================================================

Sprite_8B_Gibdo:
|1EB9A3| JSR SpriteDraw_Gibdo
|1EB9A6| JSR CheckIfActive_bank1E
|1EB9A9| JSR HandleSpriteRecoil_bank1E
|1EB9AC| JSR CheckDamageToAndFromLink_bank1E

|1EB9AF| LDA.w $0D80,X
|1EB9B2| JSL JumpTableLocal
|1EB9B6| dw Gibdo_Turn
|1EB9B8| dw Gibdo_Walk

;===================================================================================================

pool Gibdo_Turn

.target_direction
|1EB9BA| db $02, $06, $04, $00

.anim_step
|1EB9BE| db $04, $08, $0B, $0A, $00, $06, $03, $07

endpool

;---------------------------------------------------------------------------------------------------

Gibdo_Turn:
|1EB9C6| LDY.w $0DE0,X

|1EB9C9| LDA.w .anim_step,Y
|1EB9CC| STA.w $0DC0,X

|1EB9CF| LDA.b $1A
|1EB9D1| AND.b #$07
|1EB9D3| BNE .exit

|1EB9D5| LDY.w $0D90,X

|1EB9D8| LDA.w $0DE0,X
|1EB9DB| CMP.w .target_direction,Y
|1EB9DE| BEQ .begin_movement
|1EB9E0| BPL .turn_left

.turn_right
|1EB9E2| INC.w $0DE0,X
|1EB9E5| BRA .exit

.turn_left
|1EB9E7| DEC.w $0DE0,X

.exit
|1EB9EA| RTS

.begin_movement
|1EB9EB| JSL GetRandomNumber
|1EB9EF| AND.b #$1F
|1EB9F1| ADC.b #$30
|1EB9F3| STA.w $0DF0,X

|1EB9F6| INC.w $0D80,X

|1EB9F9| RTS

;===================================================================================================

pool Gibdo_Walk

.speed_y ; bleeds into next
|1EB9FA| db -16,   0

.speed_x
|1EB9FC| db   0,   0,  16,   0,   0,   0, -16,   0

.anim_step
|1EBA04| db $09, $02, $00, $04, $0B, $03, $01, $05

endpool

;---------------------------------------------------------------------------------------------------

Gibdo_Walk:
|1EBA0C| LDY.w $0DE0,X

|1EBA0F| LDA.w .speed_x,Y
|1EBA12| STA.w $0D50,X

|1EBA15| LDA.w .speed_y,Y
|1EBA18| STA.w $0D40,X

|1EBA1B| JSR MoveSpriteXY_bank1E
|1EBA1E| JSR CheckSpriteTileCollision_bank1E

|1EBA21| LDA.w $0DF0,X
|1EBA24| BEQ .face_link

|1EBA26| LDA.w $0E70,X
|1EBA29| BEQ .continue

.face_link
|1EBA2B| JSR GetDirectionTowardsLink_bank1E
|1EBA2E| TYA
|1EBA2F| CMP.w $0D90,X
|1EBA32| BEQ .continue

|1EBA34| STA.w $0D90,X

|1EBA37| STZ.w $0D80,X

|1EBA3A| RTS

.continue
|1EBA3B| DEC.w $0DA0,X
|1EBA3E| BPL .dont_step_animation

|1EBA40| LDA.b #$0E
|1EBA42| STA.w $0DA0,X

|1EBA45| INC.w $0E80,X

.dont_step_animation
|1EBA48| LDA.w $0E80,X
|1EBA4B| ASL A
|1EBA4C| ASL A

|1EBA4D| AND.b #$04
|1EBA4F| ORA.w $0D90,X
|1EBA52| TAY

|1EBA53| LDA.w .anim_step,Y
|1EBA56| STA.w $0DC0,X

|1EBA59| RTS

;===================================================================================================

pool SpriteDraw_Gibdo

.oam_groups
; group00
|1EBA5A| dw   0,  -9 : db $80, $00, $00, $02
|1EBA62| dw   0,   0 : db $8A, $00, $00, $02

; group01
|1EBA6A| dw   0,  -8 : db $80, $00, $00, $02
|1EBA72| dw   0,   1 : db $8A, $40, $00, $02

; group02
|1EBA7A| dw   0,  -9 : db $82, $00, $00, $02
|1EBA82| dw   0,   0 : db $8C, $00, $00, $02

; group03
|1EBA8A| dw   0,  -8 : db $82, $00, $00, $02
|1EBA92| dw   0,   0 : db $8E, $00, $00, $02

; group04
|1EBA9A| dw   0,  -9 : db $84, $00, $00, $02
|1EBAA2| dw   0,   0 : db $A0, $00, $00, $02

; group05
|1EBAAA| dw   0,  -8 : db $84, $00, $00, $02
|1EBAB2| dw   0,   1 : db $A0, $40, $00, $02

; group06
|1EBABA| dw   0,  -9 : db $86, $00, $00, $02
|1EBAC2| dw   0,   0 : db $A2, $00, $00, $02

; group07
|1EBACA| dw   0,  -9 : db $88, $00, $00, $02
|1EBAD2| dw   0,   0 : db $A4, $00, $00, $02

; group08
|1EBADA| dw   0,  -9 : db $88, $40, $00, $02
|1EBAE2| dw   0,   0 : db $A4, $40, $00, $02

; group09
|1EBAEA| dw   0,  -9 : db $82, $40, $00, $02
|1EBAF2| dw   0,   0 : db $8C, $40, $00, $02

; group0A
|1EBAFA| dw   0,  -9 : db $86, $40, $00, $02
|1EBB02| dw   0,   0 : db $A2, $40, $00, $02

; group0B
|1EBB0A| dw   0,  -8 : db $82, $40, $00, $02
|1EBB12| dw   0,   1 : db $8E, $40, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Gibdo:
|1EBB1A| LDA.b #$00
|1EBB1C| XBA
|1EBB1D| LDA.w $0DC0,X

|1EBB20| REP #$20

|1EBB22| ASL A ; x16
|1EBB23| ASL A
|1EBB24| ASL A
|1EBB25| ASL A

|1EBB26| ADC.w #.oam_groups
|1EBB29| STA.b $08

|1EBB2B| SEP #$20

|1EBB2D| LDA.b #$02
|1EBB2F| JSR TabulatedSpriteDraw_bank1E

|1EBB32| LDA.w $0F00,X ; is this even necessary?
|1EBB35| BNE .no_shadow

|1EBB37| JSL DrawSpriteShadow_long

.no_shadow
|1EBB3B| RTS

;===================================================================================================

Sprite_89_MothulaBeam:
|1EBB3C| JSL SpriteDraw_SingleLarge_long
|1EBB40| JSR CheckIfActive_bank1E
|1EBB43| JSR CheckDamageToLink_bank1E

|1EBB46| LDA.b $1A
|1EBB48| AND.b #$01
|1EBB4A| BNE .frame_parity

|1EBB4C| LDA.w $0F50,X
|1EBB4F| EOR.b #$80
|1EBB51| STA.w $0F50,X

.frame_parity
|1EBB54| JSR MoveSpriteXY_bank1E

|1EBB57| LDA.w $0DF0,X
|1EBB5A| BNE .stick_around

|1EBB5C| JSR CheckSpriteTileCollision_bank1E
|1EBB5F| BEQ .stick_around

|1EBB61| STZ.w $0DD0,X

.stick_around
|1EBB64| TXA
|1EBB65| EOR.b $1A
|1EBB67| AND.b #$03
|1EBB69| BNE .exit

|1EBB6B| PHX
|1EBB6C| TXY

;---------------------------------------------------------------------------------------------------

|1EBB6D| LDX.b #$0E

.next_slot
|1EBB6F| LDA.l $7FF800,X
|1EBB73| BEQ .free_garnish_slot

|1EBB75| DEX
|1EBB76| BPL .next_slot

|1EBB78| PLX

.exit
|1EBB79| RTS

;---------------------------------------------------------------------------------------------------

.free_garnish_slot
|1EBB7A| LDA.b #$02 ; GARNISH 02
|1EBB7C| STA.l $7FF800,X
|1EBB80| STA.w $0FB4

|1EBB83| LDA.w $0D10,Y
|1EBB86| STA.l $7FF83C,X

|1EBB8A| LDA.w $0D30,Y
|1EBB8D| STA.l $7FF878,X

|1EBB91| LDA.w $0D00,Y
|1EBB94| STA.l $7FF81E,X

|1EBB98| LDA.w $0D20,Y
|1EBB9B| STA.l $7FF85A,X

|1EBB9F| LDA.b #$10
|1EBBA1| STA.l $7FF90E,X

|1EBBA5| TYA
|1EBBA6| STA.l $7FF92C,X

|1EBBAA| LDA.w $0F20,Y
|1EBBAD| STA.l $7FF968,X

|1EBBB1| PLX

|1EBBB2| RTS

;===================================================================================================

Sprite_94_Tile:
|1EBBB3| LDA.b #$30
|1EBBB5| STA.w $0B89,X

|1EBBB8| JSR SpriteDraw_Tile
|1EBBBB| JSR CheckIfActivePermissive_bank1E

|1EBBBE| LDA.w $0EF0,X
|1EBBC1| BNE Tile_Shatter

|1EBBC3| LDA.b #$01
|1EBBC5| STA.w $0BA0,X

|1EBBC8| LDA.w $0D80,X
|1EBBCB| JSL JumpTableLocal
|1EBBCF| dw Tile_DeleteFloor
|1EBBD1| dw Tile_Ascend
|1EBBD3| dw Tile_Launched

;===================================================================================================

Tile_DeleteFloor:
|1EBBD5| LDA.w $0D10,X
|1EBBD8| STA.b $00

|1EBBDA| LDA.w $0D30,X
|1EBBDD| STA.b $01

|1EBBDF| LDA.w $0D00,X
|1EBBE2| CLC
|1EBBE3| ADC.b #$08
|1EBBE5| STA.b $02

|1EBBE7| LDA.w $0D20,X
|1EBBEA| STA.b $03

|1EBBEC| LDY.b #$06
|1EBBEE| JSL UpdateTilemapWithCommonObject

|1EBBF2| INC.w $0D80,X

|1EBBF5| LDA.b #$80
|1EBBF7| STA.w $0DF0,X

|1EBBFA| RTS

;===================================================================================================

Tile_Launched:
|1EBBFB| STZ.w $0BA0,X

|1EBBFE| LDA.w $0DF0,X
|1EBC01| BEQ .dont_turn

|1EBC03| AND.b #$03
|1EBC05| BNE .dont_turn

|1EBC07| JSR Tile_SpeedTowardsLink

.dont_turn
|1EBC0A| JSR CheckDamageToAndFromLink_bank1E
|1EBC0D| BCS Tile_Shatter

|1EBC0F| JSR MoveSpriteXY_bank1E

|1EBC12| LDA.w $0FDA
|1EBC15| SEC
|1EBC16| SBC.w $0F70,X
|1EBC19| STA.w $0FDA

|1EBC1C| LDA.w $0FDB
|1EBC1F| SBC.b #$00
|1EBC21| STA.w $0FDB

|1EBC24| JSR CheckSpriteTileCollision_bank1E
|1EBC27| BEQ .no_tile_collision

;---------------------------------------------------------------------------------------------------

#Tile_Shatter:
|1EBC29| LDA.b #$1F ; SFX2.1F
|1EBC2B| JSL QueueSpriteSFX2WithPan

|1EBC2F| LDA.b #$06
|1EBC31| STA.w $0DD0,X

|1EBC34| LDA.b #$1F
|1EBC36| STA.w $0DF0,X

|1EBC39| LDA.b #$EC ; SPRITE EC
|1EBC3B| STA.w $0E20,X

|1EBC3E| STZ.w $0EF0,X

|1EBC41| LDA.b #$80
|1EBC43| STA.w $0DB0,X

|1EBC46| RTS

.no_tile_collision
|1EBC47| BRA Tile_Whirr

;===================================================================================================

Tile_Ascend:
|1EBC49| LDA.w $0DF0,X
|1EBC4C| BNE .ascending

|1EBC4E| INC.w $0D80,X

|1EBC51| LDA.b #$10
|1EBC53| STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

#Tile_SpeedTowardsLink:
|1EBC56| LDA.b #$20
|1EBC58| JSL ApplySpeedTowardsLink_long

|1EBC5C| RTS

;---------------------------------------------------------------------------------------------------

.ascending
|1EBC5D| CMP.b #$40
|1EBC5F| BCC Tile_Whirr

|1EBC61| LDA.b #$04
|1EBC63| STA.w $0F80,X

|1EBC66| JSR MoveSpriteZ_bank1E

;---------------------------------------------------------------------------------------------------

Tile_Whirr:
|1EBC69| INC.w $0E80,X

|1EBC6C| LDA.w $0E80,X
|1EBC6F| LSR A
|1EBC70| LSR A
|1EBC71| AND.b #$01
|1EBC73| STA.w $0DC0,X

|1EBC76| TXA
|1EBC77| EOR.b $1A
|1EBC79| AND.b #$07
|1EBC7B| BNE .exit

|1EBC7D| LDA.b #$07 ; SFX2.07
|1EBC7F| JSL QueueSpriteSFX2WithPan

.exit
|1EBC83| RTS

;===================================================================================================

pool SpriteDraw_Tile

.oam_groups
; group00
|1EBC84| dw   0,   0 : db $D3, $00, $00, $00
|1EBC8C| dw   8,   0 : db $D3, $40, $00, $00
|1EBC94| dw   0,   8 : db $D3, $80, $00, $00
|1EBC9C| dw   8,   8 : db $D3, $C0, $00, $00

; group01
|1EBCA4| dw   0,   0 : db $C3, $00, $00, $00
|1EBCAC| dw   8,   0 : db $C3, $40, $00, $00
|1EBCB4| dw   0,   8 : db $C3, $80, $00, $00
|1EBCBC| dw   8,   8 : db $C3, $C0, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Tile:
|1EBCC4| LDA.b #$00
|1EBCC6| XBA
|1EBCC7| LDA.w $0DC0,X

|1EBCCA| REP #$20

|1EBCCC| ASL A ; x32
|1EBCCD| ASL A
|1EBCCE| ASL A
|1EBCCF| ASL A
|1EBCD0| ASL A
|1EBCD1| ADC.w #.oam_groups
|1EBCD4| STA.b $08

|1EBCD6| SEP #$20

|1EBCD8| LDA.b #$04
|1EBCDA| JSR TabulatedSpriteDraw_bank1E

|1EBCDD| JSL DrawSpriteShadow_long

|1EBCE1| RTS

;===================================================================================================

Sprite_8A_SpikeBlock:
|1EBCE2| LDA.w $0E90,X
|1EBCE5| BNE SpikeBlock_ByMothula

|1EBCE7| JSL SpriteDraw_SingleLarge_long
|1EBCEB| JSR CheckIfActive_bank1E
|1EBCEE| JSR CheckDamageToAndFromLink_bank1E
|1EBCF1| JSR MoveSpriteXY_bank1E
|1EBCF4| JSR CheckSpriteTileCollision_bank1E

|1EBCF7| LDA.w $0DF0,X
|1EBCFA| BNE .exit

|1EBCFC| JSR SpikeBlock_CheckStatueCollision
|1EBCFF| BCC .hit_statue

|1EBD01| LDA.w $0E70,X
|1EBD04| AND.b #$0F
|1EBD06| BEQ .exit

.hit_statue
|1EBD08| LDA.b #$04
|1EBD0A| STA.w $0DF0,X

|1EBD0D| LDA.w $0D50,X
|1EBD10| EOR.b #$FF
|1EBD12| INC A
|1EBD13| STA.w $0D50,X

|1EBD16| LDA.b #$05 ; SFX2.05
|1EBD18| JSL QueueSpriteSFX2WithPan

.exit
|1EBD1C| RTS

;===================================================================================================

SpikeBlock_ByMothula:
|1EBD1D| LDA.b #$04
|1EBD1F| JSL AllocateOAMInRegionB

|1EBD23| JSL SpriteDraw_SingleLarge_long
|1EBD27| JSR CheckIfActive_bank1E
|1EBD2A| JSR CheckDamageToAndFromLink_bank1E

|1EBD2D| LDA.w $0D80,X
|1EBD30| BNE .active

|1EBD32| LDY.b #$00
|1EBD34| JSR SpikeBlock_UpdateTilemap

|1EBD37| INC.w $0D80,X

|1EBD3A| LDA.b #$40
|1EBD3C| STA.w $0DF0,X

|1EBD3F| LDA.b #$69
|1EBD41| STA.w $0E00,X

|1EBD44| RTS

;---------------------------------------------------------------------------------------------------

.shake
|1EBD45| db  8, -8

;---------------------------------------------------------------------------------------------------

.active
|1EBD47| LDA.w $0DF0,X
|1EBD4A| BEQ .moving

|1EBD4C| CMP.b #$01
|1EBD4E| BNE .jiggle

|1EBD50| LDA.w $0D90,X
|1EBD53| STA.w $0D10,X

|1EBD56| LDA.w $0DA0,X
|1EBD59| STA.w $0D00,X

|1EBD5C| RTS

.jiggle
|1EBD5D| LSR A
|1EBD5E| AND.b #$01
|1EBD60| TAY

|1EBD61| LDA.w .shake,Y
|1EBD64| STA.w $0D50,X

|1EBD67| JSR MoveSpriteX_bank1E

|1EBD6A| STZ.w $0D50,X

|1EBD6D| RTS

;---------------------------------------------------------------------------------------------------

.max_speed_x ; bleeds into next
|1EBD6E| db  32, -32

.max_speed_y
|1EBD70| db   0,   0,  32, -32

.accel_x ; bleeds into next
|1EBD74| db   1,  -1

.accel_y
|1EBD76| db   0,   0,   1,  -1

;---------------------------------------------------------------------------------------------------

.moving
|1EBD7A| LDA.w $0D80,X
|1EBD7D| CMP.b #$01
|1EBD7F| BNE .returning

|1EBD81| LDA.b $1A
|1EBD83| AND.b #$00 ; useless; always fails
|1EBD85| BNE .delay

|1EBD87| LDY.w $0DE0,X

|1EBD8A| LDA.w $0D50,X
|1EBD8D| CMP.w .max_speed_x,Y
|1EBD90| BEQ .up_to_speed_x

|1EBD92| CLC
|1EBD93| ADC.w .accel_x,Y
|1EBD96| STA.w $0D50,X

.up_to_speed_x
|1EBD99| LDA.w $0D40,X
|1EBD9C| CMP.w .max_speed_y,Y
|1EBD9F| BEQ .delay

|1EBDA1| CLC
|1EBDA2| ADC.w .accel_y,Y
|1EBDA5| STA.w $0D40,X

.delay
|1EBDA8| JSR MoveSpriteXY_bank1E

|1EBDAB| LDA.w $0E00,X
|1EBDAE| BNE .exit_a

|1EBDB0| JSL Get16BitSpriteCoords_long
|1EBDB4| JSR CheckSpriteTileCollision_bank1E
|1EBDB7| BEQ .exit_a

|1EBDB9| INC.w $0D80,X

|1EBDBC| LDA.b #$40
|1EBDBE| STA.w $0E00,X

.exit_a
|1EBDC1| RTS

;---------------------------------------------------------------------------------------------------

.return_speed_x
|1EBDC2| db $F0, $10, $00, $00

.return_speed_y
|1EBDC6| db $00, $00, $F0, $10

;---------------------------------------------------------------------------------------------------

.returning
|1EBDCA| LDA.w $0E00,X
|1EBDCD| BNE .exit_b

|1EBDCF| LDY.w $0DE0,X

|1EBDD2| LDA.w .return_speed_x,Y
|1EBDD5| STA.w $0D50,X

|1EBDD8| LDA.w .return_speed_y,Y
|1EBDDB| STA.w $0D40,X

|1EBDDE| JSR MoveSpriteXY_bank1E

|1EBDE1| LDA.w $0D10,X
|1EBDE4| CMP.w $0D90,X
|1EBDE7| BNE .exit_b

|1EBDE9| LDA.w $0D00,X
|1EBDEC| CMP.w $0DA0,X
|1EBDEF| BNE .exit_b

|1EBDF1| STZ.w $0DD0,X

|1EBDF4| LDY.b #$02
|1EBDF6| JSR SpikeBlock_UpdateTilemap

.exit_b
|1EBDF9| RTS

;===================================================================================================

SpikeBlock_UpdateTilemap:
|1EBDFA| LDA.w $0D10,X
|1EBDFD| STA.b $00

|1EBDFF| LDA.w $0D30,X
|1EBE02| STA.b $01

|1EBE04| LDA.w $0D00,X
|1EBE07| STA.b $02

|1EBE09| LDA.w $0D20,X
|1EBE0C| STA.b $03

|1EBE0E| JSL UpdateTilemapWithCommonObject

|1EBE12| RTS

;===================================================================================================
; This looks like it will cause problems for multiple statues in a room
;===================================================================================================
SpikeBlock_CheckStatueCollision:
|1EBE13| LDY.b #$0F

.next_sprite
|1EBE15| TYA
|1EBE16| EOR.b $1A
|1EBE18| AND.b #$01
|1EBE1A| BNE .skip

|1EBE1C| LDA.w $0DD0,Y
|1EBE1F| BEQ .skip

|1EBE21| LDA.w $0E20,Y
|1EBE24| CMP.b #$1C ; SPRITE 1C
|1EBE26| BNE .skip

|1EBE28| LDA.w $0D10,X
|1EBE2B| STA.b $00

|1EBE2D| LDA.w $0D30,X
|1EBE30| STA.b $01

|1EBE32| LDA.w $0D00,X
|1EBE35| STA.b $02

|1EBE37| LDA.w $0D20,X
|1EBE3A| STA.b $03

|1EBE3C| LDA.w $0D10,Y
|1EBE3F| STA.b $04

|1EBE41| LDA.w $0D30,Y
|1EBE44| STA.b $05

|1EBE46| LDA.w $0D00,Y
|1EBE49| STA.b $06

|1EBE4B| LDA.w $0D20,Y
|1EBE4E| STA.b $07

|1EBE50| REP #$20

|1EBE52| LDA.b $00
|1EBE54| SEC
|1EBE55| SBC.b $04
|1EBE57| CLC
|1EBE58| ADC.w #$0010

|1EBE5B| CMP.w #$0020
|1EBE5E| BCS .no_collision

|1EBE60| LDA.b $02
|1EBE62| SEC
|1EBE63| SBC.b $06
|1EBE65| CLC
|1EBE66| ADC.w #$0008

|1EBE69| CMP.w #$0010
|1EBE6C| BCS .no_collision

|1EBE6E| SEP #$20

|1EBE70| RTS

.no_collision
|1EBE71| SEP #$20

.skip
|1EBE73| DEY
|1EBE74| BPL .next_sprite

|1EBE76| SEC

|1EBE77| RTS

;===================================================================================================

Sprite_88_Mothula:
|1EBE78| JSR Mothula

|1EBE7B| JSR CheckIfActive_bank1E

|1EBE7E| JSR Mothula_HandleSpikes

|1EBE81| RTS

;===================================================================================================

Mothula:
|1EBE82| JSL SpriteDraw_Mothula

|1EBE86| LDA.w $0DD0,X
|1EBE89| CMP.b #$0B
|1EBE8B| BNE .not_stunned

|1EBE8D| STZ.w $0D80,X

.not_stunned
|1EBE90| JSR CheckIfActive_bank1E

|1EBE93| STZ.w $0E60,X

|1EBE96| LDA.w $0EE0,X
|1EBE99| BEQ .vulnerable

|1EBE9B| LDA.b #$40
|1EBE9D| STA.w $0E60,X

;---------------------------------------------------------------------------------------------------

.vulnerable
|1EBEA0| LDA.w $0EA0,X
|1EBEA3| BEQ .continue

|1EBEA5| AND.b #$7F
|1EBEA7| CMP.b #$06
|1EBEA9| BNE .continue

|1EBEAB| STZ.w $0EA0,X

|1EBEAE| LDA.b #$20
|1EBEB0| STA.w $0EE0,X

|1EBEB3| LDA.b #$02
|1EBEB5| STA.w $0D80,X

|1EBEB8| STZ.w $0DF0,X

|1EBEBB| LDA.b #$40
|1EBEBD| STA.w $0ED0,X

;---------------------------------------------------------------------------------------------------

.continue
|1EBEC0| JSR HandleSpriteRecoil_bank1E

|1EBEC3| LDA.w $0D80,X
|1EBEC6| JSL JumpTableLocal
|1EBECA| dw Modula_Dormant
|1EBECC| dw Modula_WakeUp
|1EBECE| dw Modula_ActLikeAMoth
|1EBED0| dw Modula_FireBeams

;===================================================================================================

Modula_Dormant:
|1EBED2| LDA.w $0DF0,X
|1EBED5| BNE .exit

|1EBED7| INC.w $0D80,X

.exit
|1EBEDA| RTS

;===================================================================================================

Modula_WakeUp:
|1EBEDB| LDA.b #$08
|1EBEDD| STA.w $0F80,X

|1EBEE0| JSR MoveSpriteZ_bank1E

|1EBEE3| STZ.w $0F80,X

|1EBEE6| LDA.w $0F70,X
|1EBEE9| CMP.b #$18
|1EBEEB| BCC .still_rising

|1EBEED| LDA.b #$80
|1EBEEF| STA.w $0ED0,X

|1EBEF2| INC.w $0D80,X

|1EBEF5| STZ.w $0BA0,X

|1EBEF8| LDA.b #$40
|1EBEFA| STA.w $0DF0,X

.still_rising
|1EBEFD| JSR Mothula_FlapWings

|1EBF00| RTS

;===================================================================================================

pool Modula_ActLikeAMoth

.speed_z
|1EBF01| db   1,  -1

.speed_y ; bleeds into next
|1EBF03| db -16, -12

.speed_x
|1EBF05| db   0,  12,  16,  12,   0, -12, -16, -12

endpool

;---------------------------------------------------------------------------------------------------

Modula_ActLikeAMoth:
|1EBF0D| LDA.w $0ED0,X
|1EBF10| BNE .dont_shoot

|1EBF12| LDA.b #$3F
|1EBF14| STA.w $0DF0,X

|1EBF17| INC.w $0D80,X

|1EBF1A| RTS

;---------------------------------------------------------------------------------------------------

.dont_shoot
|1EBF1B| DEC.w $0ED0,X

|1EBF1E| JSR Mothula_FlapWings

|1EBF21| LDA.w $0D90,X
|1EBF24| AND.b #$01
|1EBF26| TAY

|1EBF27| LDA.w $0F80,X
|1EBF2A| CLC
|1EBF2B| ADC.w .speed_z,Y
|1EBF2E| STA.w $0F80,X

|1EBF31| CMP.w Sixteen_X,Y
|1EBF34| BNE .dont_change_z_speed

|1EBF36| INC.w $0D90,X

.dont_change_z_speed
|1EBF39| LDA.w $0DF0,X
|1EBF3C| BNE .direction_fine

|1EBF3E| INC.w $0DB0,X

|1EBF41| LDA.w $0DB0,X
|1EBF44| CMP.b #$07
|1EBF46| BNE .pick_random_direction

|1EBF48| STZ.w $0DB0,X

|1EBF4B| BRA .target_link

.pick_random_direction
|1EBF4D| JSL GetRandomNumber
|1EBF51| AND.b #$07
|1EBF53| TAY

|1EBF54| LDA.w .speed_x,Y
|1EBF57| STA.w $0D50,X

|1EBF5A| LDA.w .speed_y,Y
|1EBF5D| STA.w $0D40,X

|1EBF60| JSL GetRandomNumber
|1EBF64| AND.b #$1F
|1EBF66| ADC.b #$40
|1EBF68| STA.w $0DF0,X

|1EBF6B| BRA .direction_fine

;---------------------------------------------------------------------------------------------------

.target_link
|1EBF6D| LDA.b #$20
|1EBF6F| JSL ApplySpeedTowardsLink_long

|1EBF73| LDA.b #$80
|1EBF75| STA.w $0DF0,X

.direction_fine
|1EBF78| LDA.w $0E70,X
|1EBF7B| BNE .skip_movement

|1EBF7D| JSR MoveSpriteXY_bank1E

.skip_movement
|1EBF80| JSR MoveSpriteZ_bank1E
|1EBF83| JSR CheckSpriteTileCollision_bank1E
|1EBF86| BEQ .no_tile_collision

|1EBF88| STZ.w $0DF0,X

.no_tile_collision
|1EBF8B| JSR CheckDamageToAndFromLink_bank1E

|1EBF8E| INC.w $0E80,X
|1EBF91| INC.w $0E80,X

|1EBF94| RTS

;===================================================================================================

pool Mothula_FlapWings

.anim_step
|1EBF95| db $00, $01, $02, $01

endpool

;---------------------------------------------------------------------------------------------------

Mothula_FlapWings:
|1EBF99| INC.w $0E80,X

|1EBF9C| LDA.w $0E80,X
|1EBF9F| LSR A
|1EBFA0| LSR A
|1EBFA1| AND.b #$03
|1EBFA3| TAY

|1EBFA4| BNE .no_sfx

|1EBFA6| LDA.b #$02 ; SFX3.02
|1EBFA8| JSL QueueSpriteSFX3WithPan

.no_sfx
|1EBFAC| LDA.w .anim_step,Y
|1EBFAF| STA.w $0DC0,X

|1EBFB2| RTS

;===================================================================================================

Modula_FireBeams:
|1EBFB3| JSR CheckDamageToAndFromLink_bank1E

|1EBFB6| LDA.w $0DF0,X
|1EBFB9| BNE .delay

|1EBFBB| DEC.w $0D80,X

|1EBFBE| JSL GetRandomNumber
|1EBFC2| AND.b #$1F
|1EBFC4| ORA.b #$40
|1EBFC6| STA.w $0ED0,X

|1EBFC9| RTS

.delay
|1EBFCA| CMP.b #$20
|1EBFCC| BNE .not_yet

|1EBFCE| JSR Mothula_SpawnBeams

.not_yet
|1EBFD1| BRA Mothula_FlapWings

;===================================================================================================

pool Mothula_SpawnBeams

.speed_and_offset_x
|1EBFD3| db -16,   0,  16

.speed_y
|1EBFD6| db  24,  32,  24

endpool

;---------------------------------------------------------------------------------------------------

Mothula_SpawnBeams:
|1EBFD9| LDA.b #$36 ; SFX3.36
|1EBFDB| JSL QueueSpriteSFX3WithPan

|1EBFDF| LDA.b #$02
|1EBFE1| STA.w $0FB5

.next_spawn
|1EBFE4| LDA.b #$89 ; SPRITE 89
|1EBFE6| JSL SpawnSpriteDynamically
|1EBFEA| BMI .no_space

|1EBFEC| JSL SetSpawnedSpriteCoordinates

|1EBFF0| LDA.b $02
|1EBFF2| SEC
|1EBFF3| SBC.b $04

|1EBFF5| CLC
|1EBFF6| ADC.b #$03
|1EBFF8| STA.w $0D00,Y

|1EBFFB| LDA.b #$10
|1EBFFD| STA.w $0DF0,Y
|1EC000| STA.w $0BA0,Y

|1EC003| PHX

|1EC004| LDX.w $0FB5

|1EC007| LDA.b $00
|1EC009| CLC
|1EC00A| ADC.w .speed_and_offset_x,X
|1EC00D| STA.w $0D10,Y

|1EC010| LDA.w .speed_and_offset_x,X
|1EC013| STA.w $0D50,Y

|1EC016| LDA.w .speed_y,X
|1EC019| STA.w $0D40,Y

|1EC01C| LDA.b #$00
|1EC01E| STA.w $0F70,Y

|1EC021| PLX

.no_space
|1EC022| DEC.w $0FB5
|1EC025| BPL .next_spawn

|1EC027| RTS

;===================================================================================================

pool Mothula_HandleSpikes

.position_x
|1EC028| db $38, $48, $58, $68, $88, $98, $A8, $B8
|1EC030| db $C8, $C8, $C8, $C8, $C8, $C8, $C8, $B8
|1EC038| db $A8, $98, $78, $68, $58, $48, $38, $28
|1EC040| db $28, $28, $28, $28, $28, $28

.position_y
|1EC046| db $38, $38, $38, $38, $38, $38, $38, $38
|1EC04E| db $48, $58, $68, $78, $98, $A8, $B8, $C8
|1EC056| db $C8, $C8, $C8, $C8, $C8, $C8, $C8, $B8
|1EC05E| db $A8, $98, $78, $68, $58, $48

.direction
|1EC064| db $02, $02, $02, $02, $02, $02, $02, $02
|1EC06C| db $01, $01, $01, $01, $01, $01, $01, $03
|1EC074| db $03, $03, $03, $03, $03, $03, $03, $00
|1EC07C| db $00, $00, $00, $00, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

Mothula_HandleSpikes:
|1EC082| DEC.w $0EB0,X
|1EC085| BNE .exit

|1EC087| LDA.b #$40
|1EC089| STA.w $0EB0,X

|1EC08C| LDA.b #$8A ; SPRITE 8A
|1EC08E| JSL SpawnSpriteDynamically
|1EC092| BMI .exit

|1EC094| PHX

; This makes those last 2 blocks slightly less likely to occur
|1EC095| JSL GetRandomNumber
|1EC099| AND.b #$1F
|1EC09B| CMP.b #$1E
|1EC09D| BCC .rng_roll_in_range

|1EC09F| SBC.b #$1E

.rng_roll_in_range
|1EC0A1| TAX

|1EC0A2| LDA.w .position_x,X
|1EC0A5| STA.w $0D10,Y
|1EC0A8| STA.w $0D90,Y

|1EC0AB| LDA.w .position_y,X
|1EC0AE| DEC A ; why not just have the data be -1?
|1EC0AF| STA.w $0D00,Y
|1EC0B2| STA.w $0DA0,Y

|1EC0B5| LDA.w .direction,X
|1EC0B8| STA.w $0DE0,Y

|1EC0BB| LDA.b #$01
|1EC0BD| STA.w $0E90,Y

|1EC0C0| CLC
|1EC0C1| ADC.w $0FB0
|1EC0C4| STA.w $0D30,Y

|1EC0C7| LDA.b #$01
|1EC0C9| CLC
|1EC0CA| ADC.w $0FB1
|1EC0CD| STA.w $0D20,Y

|1EC0D0| TYX

|1EC0D1| LDA.b #$01
|1EC0D3| STA.w $0D50,X

|1EC0D6| JSL Get16BitSpriteCoords_long
|1EC0DA| JSR CheckSpriteTileCollision_bank1E

|1EC0DD| STZ.w $0D50,X

|1EC0E0| LDA.w $0D90,X
|1EC0E3| STA.w $0D10,X

|1EC0E6| LDA.w $0DA0,X
|1EC0E9| STA.w $0D00,X

; prevent spawns on empty tiles
|1EC0EC| LDA.w $0E70,X
|1EC0EF| BNE .keep_spawn

|1EC0F1| STZ.w $0DD0,X

|1EC0F4| PLX

|1EC0F5| LDA.b #$01
|1EC0F7| STA.w $0EB0,X

|1EC0FA| RTS

.keep_spawn
|1EC0FB| PLX

.exit
|1EC0FC| RTS

;===================================================================================================

Sprite_86_Kodongo:
|1EC0FD| JSL SpriteDraw_SingleLarge_long
|1EC101| JSR CheckIfActive_bank1E
|1EC104| JSR HandleSpriteRecoil_bank1E
|1EC107| JSR CheckDamageToAndFromLink_bank1E

|1EC10A| STZ.w $0B6B,X

|1EC10D| LDA.w $0D80,X
|1EC110| JSL JumpTableLocal
|1EC114| dw Kodongo_MakeDecision
|1EC116| dw Kodongo_Move
|1EC118| dw Kodongo_ShootFire

;===================================================================================================

pool Kodongo_MakeDecision

.speed_x
|1EC11A| db  1, -1,  0,  0

.speed_y
|1EC11E| db  0,  0,  1, -1

endpool

;---------------------------------------------------------------------------------------------------

Kodongo_MakeDecision:
|1EC122| INC.w $0D80,X

|1EC125| JSL GetRandomNumber
|1EC129| AND.b #$03
|1EC12B| STA.w $0DE0,X

|1EC12E| LDA.b #$B0
|1EC130| STA.w $0B6B,X

; Hard lock potential if they spawn on a tile.
.try_new_direction
|1EC133| LDY.w $0DE0,X

|1EC136| LDA.w .speed_x,Y
|1EC139| STA.w $0D50,X

|1EC13C| LDA.w .speed_y,Y
|1EC13F| STA.w $0D40,X

|1EC142| JSR CheckSpriteTileCollision_bank1E
|1EC145| BEQ Kodongo_SetDirection

|1EC147| LDA.w $0DE0,X
|1EC14A| INC A
|1EC14B| AND.b #$03
|1EC14D| STA.w $0DE0,X

|1EC150| BRA .try_new_direction

;===================================================================================================

Kodongo_SetDirection:
|1EC152| LDY.w $0DE0,X

|1EC155| LDA.w Sixteen_X,Y
|1EC158| STA.w $0D50,X

|1EC15B| LDA.w Sixteen_Y,Y
|1EC15E| STA.w $0D40,X

|1EC161| RTS

;===================================================================================================

pool Kodongo_Move

.anim_step
|1EC162| db $02, $02, $00, $05
|1EC166| db $03, $03, $00, $05

.flip
|1EC16A| db $40, $00, $00, $00
|1EC16E| db $40, $00, $40, $40

endpool

;---------------------------------------------------------------------------------------------------

Kodongo_Move:
|1EC172| JSR MoveSpriteXY_bank1E
|1EC175| JSR CheckSpriteTileCollision_bank1E
|1EC178| BEQ .no_tile_collision

|1EC17A| LDA.w $0DE0,X
|1EC17D| EOR.b #$01
|1EC17F| STA.w $0DE0,X

|1EC182| JSR Kodongo_SetDirection

.no_tile_collision
|1EC185| LDA.w $0D10,X
|1EC188| AND.b #$1F
|1EC18A| CMP.b #$04
|1EC18C| BNE .dont_breathe_fire

|1EC18E| LDA.w $0D00,X
|1EC191| AND.b #$1F
|1EC193| CMP.b #$1B
|1EC195| BNE .dont_breathe_fire

|1EC197| JSL GetRandomNumber
|1EC19B| AND.b #$03
|1EC19D| BNE .dont_breathe_fire

|1EC19F| LDA.b #$6F
|1EC1A1| STA.w $0DF0,X

|1EC1A4| INC.w $0D80,X

|1EC1A7| STZ.w $0D90,X

.dont_breathe_fire
|1EC1AA| INC.w $0E80,X

|1EC1AD| LDA.w $0E80,X
|1EC1B0| AND.b #$04
|1EC1B2| ORA.w $0DE0,X
|1EC1B5| TAY

|1EC1B6| LDA.w .anim_step,Y
|1EC1B9| STA.w $0DC0,X

|1EC1BC| LDA.w $0F50,X
|1EC1BF| AND.b #$BF
|1EC1C1| ORA.w .flip,Y
|1EC1C4| STA.w $0F50,X

|1EC1C7| RTS

;===================================================================================================

pool Kodongo_ShootFire

.anim_step
|1EC1C8| db $02, $02, $00, $05
|1EC1CC| db $04, $04, $01, $06

endpool

;---------------------------------------------------------------------------------------------------

Kodongo_ShootFire:
|1EC1D0| LDA.w $0DF0,X
|1EC1D3| BNE .wait

|1EC1D5| STZ.w $0D80,X

; Who wrote this?
; That SBC should have been built into the CMP
; The behavior of Y is redundant
; This whole routine reeks.
.wait
|1EC1D8| LDY.b #$00

|1EC1DA| SEC
|1EC1DB| SBC.b #$20

|1EC1DD| CMP.b #$30
|1EC1DF| BCS .wait_more

|1EC1E1| LDY.b #$04

.wait_more
|1EC1E3| CPY.b #$04
|1EC1E5| BNE .dont_fire

|1EC1E7| LDA.w $0DF0,X
|1EC1EA| AND.b #$0F
|1EC1EC| BNE .dont_fire

|1EC1EE| PHY

|1EC1EF| JSR Kodongo_SpawnFire

|1EC1F2| PLY

.dont_fire
|1EC1F3| TYA
|1EC1F4| ORA.w $0DE0,X
|1EC1F7| TAY

|1EC1F8| LDA.w .anim_step,Y
|1EC1FB| STA.w $0DC0,X

|1EC1FE| RTS

;===================================================================================================

pool Kodongo_SpawnFire

.offset_x_low
|1EC1FF| db   8,  -8,   0,   0

.offset_x_high
|1EC203| db   0,  -1,   0,   0

.offset_y_low
|1EC207| db   0,   0,   8,  -8

.offset_y_high
|1EC20B| db   0,   0,   0,  -1

.speed_x
|1EC20F| db  24, -24,   0,   0

.speed_y
|1EC213| db   0,   0,  24, -24

; wtf is this?
|1EC217| db  64,  56,  48,  40, 32,  24

endpool

;---------------------------------------------------------------------------------------------------

Kodongo_SpawnFire:
|1EC21D| LDA.b #$87 ; SPRITE 87
|1EC21F| LDY.b #$0D
|1EC221| JSL SpawnSpriteDynamically.slot_limited
|1EC225| BMI .no_space

|1EC227| PHX

|1EC228| LDA.w $0DE0,X
|1EC22B| TAX

|1EC22C| LDA.b $00
|1EC22E| CLC
|1EC22F| ADC.w .offset_x_low,X
|1EC232| STA.w $0D10,Y

|1EC235| LDA.b $01
|1EC237| ADC.w .offset_x_high,X
|1EC23A| STA.w $0D30,Y

|1EC23D| LDA.b $02
|1EC23F| CLC
|1EC240| ADC.w .offset_y_low,X
|1EC243| STA.w $0D00,Y

|1EC246| LDA.b $03
|1EC248| ADC.w .offset_y_high,X
|1EC24B| STA.w $0D20,Y

|1EC24E| LDA.w .speed_x,X
|1EC251| STA.w $0D50,Y

|1EC254| LDA.w .speed_y,X
|1EC257| STA.w $0D40,Y

|1EC25A| LDA.b #$01
|1EC25C| STA.w $0BA0,Y

|1EC25F| PLX

.no_space
|1EC260| RTS

;===================================================================================================

CheckDamageToAndFromLink_bank1E:
|1EC261| JSL CheckDamageFromLink_long

;===================================================================================================

CheckDamageToLink_bank1E:
|1EC265| JSL CheckDamageToLink_long

|1EC269| RTS

;===================================================================================================

pool Sprite_87_KodongoFire

.flip
|1EC26A| db $00, $40, $C0, $80

endpool

;---------------------------------------------------------------------------------------------------

Sprite_87_KodongoFire:
|1EC26E| LDA.w $0DF0,X
|1EC271| BNE LingeringFlame

|1EC273| JSL SpriteDraw_SingleLarge_long
|1EC277| JSR CheckIfActive_bank1E

|1EC27A| LDA.b $1A
|1EC27C| LSR A
|1EC27D| LSR A
|1EC27E| AND.b #$03
|1EC280| TAY

|1EC281| LDA.w $0F50,X
|1EC284| AND.b #$3F
|1EC286| ORA.w .flip,Y
|1EC289| STA.w $0F50,X

|1EC28C| JSR CheckDamageToLink_bank1E
|1EC28F| BCS .collided

|1EC291| JSR MoveSpriteXY_bank1E
|1EC294| JSR CheckSpriteTileCollision_bank1E
|1EC297| BNE .collided

|1EC299| RTS

.collided
|1EC29A| LDA.b #$7F
|1EC29C| STA.w $0DF0,X

|1EC29F| LDA.w $0F50,X
|1EC2A2| AND.b #$3F
|1EC2A4| STA.w $0F50,X

|1EC2A7| LDA.b #$2A ; SFX2.2A
|1EC2A9| JSL QueueSpriteSFX2WithPan

|1EC2AD| RTS

;===================================================================================================

LingeringFlameDrawStep:
|1EC2AE| db $05, $04, $03, $01, $02, $00, $03, $00
|1EC2B6| db $01, $02, $03, $00, $01, $02, $03, $00
|1EC2BE| db $01, $02, $03, $00, $01, $02, $03, $00
|1EC2C6| db $01, $02, $03, $00, $01, $02, $03, $00

;===================================================================================================
; WOW!!!
; Attacking a flame extinguishes it faster
;===================================================================================================
LingeringFlame:
|1EC2CE| JSL CheckDamageFromLink_long
|1EC2D2| BCC .nohit

|1EC2D4| DEC.w $0DF0,X
|1EC2D7| BEQ .extinguish

.nohit
|1EC2D9| LDA.w $0DF0,X
|1EC2DC| DEC A
|1EC2DD| BNE .continue_burning

.extinguish
|1EC2DF| STZ.w $0DD0,X

.continue_burning
|1EC2E2| LDA.w $0DF0,X
|1EC2E5| LSR A
|1EC2E6| LSR A
|1EC2E7| LSR A
|1EC2E8| TAY

|1EC2E9| LDA.w LingeringFlameDrawStep,Y
|1EC2EC| STA.w $0DC0,X

|1EC2EF| JSL SpriteDraw_Flame
|1EC2F3| JMP.w CheckDamageToLink_bank1E

;===================================================================================================

pool SpriteDraw_Flame

.oam_groups
; group00
|1EC2F6| dw   0,   0 : db $8E, $01, $00, $02
|1EC2FE| dw   0,   0 : db $8E, $01, $00, $02

; group01
|1EC306| dw   0,   0 : db $A0, $01, $00, $02
|1EC30E| dw   0,   0 : db $A0, $01, $00, $02

; group02
|1EC316| dw   0,   0 : db $8E, $41, $00, $02
|1EC31E| dw   0,   0 : db $8E, $41, $00, $02

; group03
|1EC326| dw   0,   0 : db $A0, $41, $00, $02
|1EC32E| dw   0,   0 : db $A0, $41, $00, $02

; group04
|1EC336| dw   0,   0 : db $A2, $01, $00, $02
|1EC33E| dw   0,   0 : db $A2, $01, $00, $02

; group05
|1EC346| dw   0,  -6 : db $A4, $01, $00, $00
|1EC34E| dw   8,  -6 : db $A5, $01, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Flame:
|1EC356| PHB
|1EC357| PHK
|1EC358| PLB

|1EC359| LDA.b #$00
|1EC35B| XBA
|1EC35C| LDA.w $0DC0,X

|1EC35F| REP #$20

|1EC361| ASL A ; x16
|1EC362| ASL A
|1EC363| ASL A
|1EC364| ASL A

|1EC365| ADC.w #.oam_groups
|1EC368| STA.b $08

|1EC36A| SEP #$20

|1EC36C| LDA.b #$02
|1EC36E| JSR TabulatedSpriteDraw_bank1E

|1EC371| PLB

|1EC372| RTL

;===================================================================================================

pool Sprite_85_YellowStalfos

.priority
|1EC373| db $30, $00, $00, $00, $30, $00

endpool

;---------------------------------------------------------------------------------------------------

Sprite_85_YellowStalfos:
|1EC379| LDA.w $0D90,X
|1EC37C| BNE .tile_already_checked

|1EC37E| LDA.b #$01
|1EC380| STA.w $0D50,X
|1EC383| STA.w $0D40,X

|1EC386| JSR CheckSpriteTileCollision_bank1E
|1EC389| BEQ .can_spawn

|1EC38B| STZ.w $0DD0,X

|1EC38E| RTS

;---------------------------------------------------------------------------------------------------

.can_spawn
|1EC38F| INC.w $0D90,X

|1EC392| LDA.b #$0A
|1EC394| STA.w $0DB0,X

|1EC397| LDA.w $0E60,X
|1EC39A| ORA.b #$40
|1EC39C| STA.w $0E60,X

|1EC39F| LDA.b #$20 ; SFX2.20
|1EC3A1| JSL QueueSpriteSFX2WithPan

.tile_already_checked
|1EC3A5| LDY.w $0D80,X

|1EC3A8| LDA.w $0B89,X
|1EC3AB| ORA.w .priority,Y
|1EC3AE| STA.w $0B89,X

|1EC3B1| JSR SpriteDraw_YellowStalfos
|1EC3B4| JSR CheckIfActive_bank1E

|1EC3B7| LDA.l $7EF359
|1EC3BB| CMP.b #$03
|1EC3BD| BCC .dont_recoil_from_sword

|1EC3BF| JSR HandleSpriteRecoil_bank1E

|1EC3C2| BRA .continue

.dont_recoil_from_sword
|1EC3C4| LDA.w $0D80,X
|1EC3C7| CMP.b #$05
|1EC3C9| BEQ .continue

|1EC3CB| LDA.w $0EF0,X
|1EC3CE| BEQ .continue

|1EC3D0| STZ.w $0EF0,X

|1EC3D3| LDA.b #$05
|1EC3D5| STA.w $0D80,X

|1EC3D8| LDA.b #$FF
|1EC3DA| STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

.continue
|1EC3DD| LDA.b #$01
|1EC3DF| STA.w $0BA0,X

|1EC3E2| LDA.w $0D80,X
|1EC3E5| JSL JumpTableLocal
|1EC3E9| dw YellowStalfos_Descend
|1EC3EB| dw YellowStalfos_TrackLink
|1EC3ED| dw YellowStalfos_DecapitateSelf
|1EC3EF| dw YellowStalfos_RegretDecapitatingSelf
|1EC3F1| dw YellowStalfos_Ascend
|1EC3F3| dw YellowStalfos_Collapsed

;===================================================================================================

YellowStalfos_Descend:
|1EC3F5| LDA.b #$02
|1EC3F7| STA.w $0EB0,X

|1EC3FA| LDA.w $0F70,X
|1EC3FD| PHA

|1EC3FE| JSR MoveSpriteZ_bank1E

|1EC401| LDA.w $0F80,X
|1EC404| CMP.b #$C0
|1EC406| BMI .at_max_z_speed

|1EC408| SEC
|1EC409| SBC.b #$03
|1EC40B| STA.w $0F80,X

.at_max_z_speed
|1EC40E| PLA
|1EC40F| EOR.w $0F70,X
|1EC412| BPL .exit

|1EC414| LDA.w $0F70,X
|1EC417| BPL .exit

|1EC419| INC.w $0D80,X

|1EC41C| STZ.w $0F70,X
|1EC41F| STZ.w $0F80,X

|1EC422| LDA.b #$40
|1EC424| STA.w $0DF0,X

|1EC427| JSR YellowStalfos_Animate

.exit
|1EC42A| RTS

;===================================================================================================

YellowStalfos_TrackLink:
|1EC42B| STZ.w $0BA0,X

|1EC42E| JSR CheckDamageToAndFromLink_bank1E

|1EC431| JSR GetDirectionTowardsLink_bank1E
|1EC434| TYA
|1EC435| STA.w $0DE0,X
|1EC438| STA.w $0EB0,X

|1EC43B| LDA.w $0DF0,X
|1EC43E| BNE YellowStalfos_MakeVulnerable

|1EC440| INC.w $0D80,X

|1EC443| LDA.b #$7F
|1EC445| STA.w $0DF0,X

;===================================================================================================

YellowStalfos_MakeVulnerable:
|1EC448| LDA.w $0E60,X
|1EC44B| AND.b #$BF
|1EC44D| STA.w $0E60,X

|1EC450| RTS

;===================================================================================================

pool YellowStalfos_DecapitateSelf

.anim_step
|1EC451| db $08, $05, $01, $01, $08, $05, $01, $01
|1EC459| db $08, $05, $01, $01, $07, $04, $02, $02
|1EC461| db $07, $04, $02, $02, $07, $04, $02, $02
|1EC469| db $07, $04, $02, $02, $07, $04, $02, $02

.head_offset_x
|1EC471| db $80, $80, $80, $80, $80, $80, $80, $80
|1EC479| db $80, $80, $80, $80, $00, $00, $00, $00
|1EC481| db $00, $00, $00, $00, $FF, $00, $01, $00
|1EC489| db $FF, $00, $01, $00, $00, $00, $00, $00

.head_offset_y
|1EC491| db $0D, $0D, $0D, $0D, $0D, $0D, $0D, $0D
|1EC499| db $0D, $0D, $0D, $0D, $0D, $0D, $0D, $0D
|1EC4A1| db $0D, $0C, $0B, $0A, $0A, $0A, $0A, $0A
|1EC4A9| db $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A

endpool

;---------------------------------------------------------------------------------------------------

YellowStalfos_DecapitateSelf:
|1EC4B1| STZ.w $0BA0,X

|1EC4B4| JSR CheckDamageToAndFromLink_bank1E

|1EC4B7| LDA.w $0DF0,X
|1EC4BA| BNE .delay

|1EC4BC| INC.w $0D80,X

|1EC4BF| LDA.b #$40
|1EC4C1| STA.w $0DF0,X

|1EC4C4| RTS

;---------------------------------------------------------------------------------------------------

.delay
|1EC4C5| CMP.b #$30
|1EC4C7| BNE .cold_feet

|1EC4C9| PHA

|1EC4CA| JSR YellowStalfos_EmancipateHead

|1EC4CD| PLA

.cold_feet
|1EC4CE| LSR A
|1EC4CF| LSR A
|1EC4D0| AND.b #$FC

|1EC4D2| ORA.w $0DE0,X
|1EC4D5| TAY

|1EC4D6| LDA.w .anim_step,Y
|1EC4D9| STA.w $0DC0,X

|1EC4DC| LDA.w $0DF0,X
|1EC4DF| LSR A
|1EC4E0| LSR A
|1EC4E1| TAY

|1EC4E2| LDA.w .head_offset_x,Y
|1EC4E5| STA.w $0DA0,X

|1EC4E8| LDA.w .head_offset_y,Y
|1EC4EB| STA.w $0DB0,X

|1EC4EE| JMP.w YellowStalfos_MakeVulnerable

;===================================================================================================

pool YellowStalfos_Animate

.step
|1EC4F1| db $06, $03, $01, $01

endpool

;===================================================================================================

YellowStalfos_RegretDecapitatingSelf:
|1EC4F5| STZ.w $0BA0,X

|1EC4F8| JSR CheckDamageToAndFromLink_bank1E

|1EC4FB| LDA.w $0DF0,X
|1EC4FE| BNE YellowStalfos_Animate

|1EC500| INC.w $0D80,X

;===================================================================================================

YellowStalfos_Animate:
|1EC503| LDY.w $0DE0,X

|1EC506| LDA.w .step,Y
|1EC509| STA.w $0DC0,X

|1EC50C| JMP.w YellowStalfos_MakeVulnerable

;===================================================================================================

YellowStalfos_Ascend:
|1EC50F| STZ.w $0DC0,X

|1EC512| LDA.b #$02
|1EC514| STA.w $0EB0,X

|1EC517| LDA.w $0F70,X
|1EC51A| PHA

|1EC51B| JSR MoveSpriteZ_bank1E

|1EC51E| LDA.w $0F80,X
|1EC521| CMP.b #$40
|1EC523| BPL .at_max_z_speed

|1EC525| INC A
|1EC526| INC A
|1EC527| STA.w $0F80,X

.at_max_z_speed
|1EC52A| PLA
|1EC52B| EOR.w $0F70,X
|1EC52E| BPL .exit

|1EC530| LDA.w $0F70,X
|1EC533| BMI .exit

|1EC535| STZ.w $0DD0,X

.exit
|1EC538| RTS

;===================================================================================================

pool YellowStalfos_Collapsed

.anim_step
|1EC539| db $01, $01, $01, $09, $0A, $0A, $0A, $0A
|1EC541| db $0A, $0A, $0A, $0A, $0A, $0A, $0A, $09

.head_offset
|1EC549| db $0A, $0A, $0A, $07, $00, $00, $00, $00
|1EC551| db $00, $00, $00, $00, $00, $00, $00, $07

endpool

;---------------------------------------------------------------------------------------------------

YellowStalfos_Collapsed:
|1EC559| STZ.w $0BA0,X

|1EC55C| JSL CheckDamageFromLink_long

|1EC560| LDA.w $0DF0,X
|1EC563| BNE .delay

|1EC565| DEC.w $0D80,X

.delay
|1EC568| LSR A ; /16
|1EC569| LSR A
|1EC56A| LSR A
|1EC56B| LSR A
|1EC56C| TAY

|1EC56D| LDA.w .anim_step,Y
|1EC570| STA.w $0DC0,X

|1EC573| LDA.w .head_offset,Y
|1EC576| STA.w $0DB0,X

|1EC579| RTS

;===================================================================================================

YellowStalfos_EmancipateHead:
|1EC57A| LDA.b #$02 ; SPRITE 02
|1EC57C| JSL SpawnSpriteDynamically
|1EC580| BMI .no_space

|1EC582| JSL SetSpawnedSpriteCoordinates

|1EC586| LDA.b #$0D
|1EC588| STA.w $0F70,Y

|1EC58B| PHX
|1EC58C| TYX

|1EC58D| LDA.b #$10
|1EC58F| JSL ApplySpeedTowardsLink_long

|1EC593| PLX

|1EC594| LDA.b #$FF
|1EC596| STA.w $0DF0,Y

|1EC599| LDA.b #$20
|1EC59B| STA.w $0E00,Y

.no_space
|1EC59E| RTS

;===================================================================================================

pool SpriteDraw_YellowStalfos

.oam_groups
; group00
|1EC59F| dw   0,   0 : db $0A, $00, $00, $02
|1EC5A7| dw   0,   0 : db $0A, $00, $00, $02

; group01
|1EC5AF| dw   0,   0 : db $0C, $00, $00, $02
|1EC5B7| dw   0,   0 : db $0C, $00, $00, $02

; group02
|1EC5BF| dw   0,   0 : db $2C, $00, $00, $02
|1EC5C7| dw   0,   0 : db $2C, $00, $00, $02

; group03
|1EC5CF| dw   5,   5 : db $2E, $00, $00, $00
|1EC5D7| dw   0,   0 : db $24, $00, $00, $02

; group04
|1EC5DF| dw   4,   1 : db $3E, $00, $00, $00
|1EC5E7| dw   0,   0 : db $24, $00, $00, $02

; group05
|1EC5EF| dw   0,   0 : db $0E, $00, $00, $02
|1EC5F7| dw   0,   0 : db $0E, $00, $00, $02

; group06
|1EC5FF| dw   3,   5 : db $2E, $40, $00, $00
|1EC607| dw   0,   0 : db $24, $40, $00, $02

; group07
|1EC60F| dw   4,   1 : db $3E, $40, $00, $00
|1EC617| dw   0,   0 : db $24, $40, $00, $02

; group08
|1EC61F| dw   0,   0 : db $0E, $40, $00, $02
|1EC627| dw   0,   0 : db $0E, $40, $00, $02

; group09
|1EC62F| dw   0,   0 : db $2A, $00, $00, $02
|1EC637| dw   0,   0 : db $2A, $00, $00, $02

; group0A
|1EC63F| dw   0,   0 : db $2A, $00, $00, $02
|1EC647| dw   0,   0 : db $2A, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_YellowStalfos:
|1EC64F| LDA.b #$00
|1EC651| XBA
|1EC652| LDA.w $0DC0,X

|1EC655| REP #$20

|1EC657| ASL A ; x16
|1EC658| ASL A
|1EC659| ASL A
|1EC65A| ASL A
|1EC65B| ADC.w #.oam_groups
|1EC65E| STA.b $08

|1EC660| LDA.b $90
|1EC662| CLC
|1EC663| ADC.w #$0004
|1EC666| STA.b $90

|1EC668| INC.b $92

|1EC66A| SEP #$20

|1EC66C| LDA.b #$02
|1EC66E| JSR TabulatedSpriteDraw_bank1E

;---------------------------------------------------------------------------------------------------

|1EC671| REP #$20

|1EC673| LDA.b $90
|1EC675| SEC
|1EC676| SBC.w #$0004
|1EC679| STA.b $90

|1EC67B| DEC.b $92

|1EC67D| SEP #$20

|1EC67F| LDA.w $0F00,X
|1EC682| BNE .no_head

|1EC684| JSR .draw_head
|1EC687| JSL DrawSpriteShadow_long

.no_head
|1EC68B| RTS

;---------------------------------------------------------------------------------------------------

.char
|1EC68C| db $02, $02, $00, $04

.flip
|1EC690| db $40, $00, $00, $00

;---------------------------------------------------------------------------------------------------

.draw_head
|1EC694| LDA.w $0DC0,X
|1EC697| CMP.b #$0A
|1EC699| BEQ .exit

|1EC69B| LDA.w $0DA0,X

|1EC69E| STZ.b $0D

|1EC6A0| CMP.b #$80
|1EC6A2| BEQ .exit

|1EC6A4| STA.b $0C

|1EC6A6| CMP.b #$00
|1EC6A8| BPL .positive

|1EC6AA| DEC.b $0D

.positive
|1EC6AC| LDA.w $0DB0,X
|1EC6AF| STA.b $0A
|1EC6B1| STZ.b $0B

|1EC6B3| LDY.b #$00

|1EC6B5| PHX

|1EC6B6| LDA.w $0EB0,X
|1EC6B9| TAX

;---------------------------------------------------------------------------------------------------

|1EC6BA| REP #$20

|1EC6BC| LDA.b $00
|1EC6BE| CLC
|1EC6BF| ADC.b $0C
|1EC6C1| STA.b ($90),Y

|1EC6C3| AND.w #$0100
|1EC6C6| STA.b $0E

|1EC6C8| LDA.b $02
|1EC6CA| SEC
|1EC6CB| SBC.b $0A

|1EC6CD| INY
|1EC6CE| STA.b ($90),Y

|1EC6D0| CLC
|1EC6D1| ADC.w #$0010

|1EC6D4| CMP.w #$0100
|1EC6D7| BCC .on_screen

|1EC6D9| LDA.w #$00F0
|1EC6DC| STA.b ($90),Y

.on_screen
|1EC6DE| SEP #$20

|1EC6E0| LDA.w .char,X
|1EC6E3| INY
|1EC6E4| STA.b ($90),Y

|1EC6E6| LDA.w .flip,X
|1EC6E9| INY
|1EC6EA| ORA.b $05
|1EC6EC| STA.b ($90),Y

|1EC6EE| TYA
|1EC6EF| LSR A
|1EC6F0| LSR A
|1EC6F1| TAY

|1EC6F2| LDA.b #$02
|1EC6F4| ORA.b $0F
|1EC6F6| STA.b ($92),Y

|1EC6F8| PLX

.exit
|1EC6F9| RTS

;===================================================================================================

SpritePrep_Eyegore:
|1EC6FA| LDA.w $048E

; mimic cave
|1EC6FD| CMP.b #$0C ; ROOM 010C
|1EC6FF| BEQ .become_mimic

; pod mimics 2
|1EC701| CMP.b #$1B ; ROOM 001B
|1EC703| BEQ .become_mimic

; pod mimics 1
|1EC705| CMP.b #$4B ; ROOM 004B
|1EC707| BEQ .become_mimic

; gt mimics
|1EC709| CMP.b #$6B ; ROOM 006B
|1EC70B| BNE .exit

.become_mimic
|1EC70D| INC.w $0DA0,X

|1EC710| LDA.w $0E20,X
|1EC713| CMP.b #$83 ; SPRITE 83
|1EC715| BNE .exit

|1EC717| STZ.w $0CAA,X

.exit
|1EC71A| RTL

;===================================================================================================

pool Mimic

.speed_x
; green
|1EC71B| db   0,  16, -16,   0,   0,  13, -13,   0
|1EC723| db   0,  13, -13,   0,   0,   0,   0,   0

; red
|1EC72B| db   0, -24,  24,   0,   0, -16,  16,   0
|1EC733| db   0, -16,  16,   0,   0,   0,   0,   0

.speed_y
; green
|1EC73B| db   0,   0,   0,   0, -16,  -5,  -5,   0
|1EC743| db  16,  13,  13,   0,   0,   0,   0,   0

; red
|1EC74B| db   0,   0,   0,   0, -24, -16, -16,   0
|1EC753| db  24,  16,  16,   0,   0,   0,   0,   0

.direction
; green
|1EC75B| db $00, $00, $01, $00, $03, $03, $03, $00
|1EC763| db $02, $02, $02, $00, $00, $00, $00, $00

; red
|1EC76B| db $00, $01, $00, $00, $03, $03, $03, $00
|1EC773| db $02, $02, $02, $00, $00, $00, $00, $00

.anim_step
; green
|1EC77B| db $08, $06, $00, $03, $09, $07, $01, $04

; red
|1EC783| db $08, $06, $00, $03, $09, $07, $02, $05

endpool

;===================================================================================================

Mimic_Stationary:
|1EC78B| STZ.w $0D90,X

|1EC78E| JSR CheckDamageToAndFromLink_bank1E
|1EC791| JSR CheckSpriteTileCollision_bank1E

|1EC794| RTS

;===================================================================================================

Sprite_83_GreenEyegore:
Sprite_84_RedEyegore:
|1EC795| LDA.w $0DA0,X
|1EC798| BNE Mimic

|1EC79A| JMP.w Eyegore

;===================================================================================================
; Goriya
;===================================================================================================
Mimic:
|1EC79D| JSL SpriteDraw_Mimic
|1EC7A1| JSR CheckIfActive_bank1E
|1EC7A4| JSR HandleSpriteRecoil_bank1E

|1EC7A7| LDA.w $0E00,X
|1EC7AA| BEQ .dont_shoot

|1EC7AC| CMP.b #$08
|1EC7AE| BNE .dont_shoot

|1EC7B0| JSL Sprite_SpawnFirePhlegm

;---------------------------------------------------------------------------------------------------

.dont_shoot
|1EC7B4| LDA.w $0048
|1EC7B7| CMP.b #$00
|1EC7B9| BNE Mimic_Stationary

|1EC7BB| LDY.w $0E20,X

|1EC7BE| LDA.b $F0
|1EC7C0| AND.b #$0F
|1EC7C2| BEQ Mimic_Stationary

|1EC7C4| CPY.b #$84 ; SPRITE 84
|1EC7C6| BNE .not_red_mimic

|1EC7C8| ORA.b #$10

;---------------------------------------------------------------------------------------------------

.not_red_mimic
|1EC7CA| TAY

|1EC7CB| LDA.w Mimic.direction,Y
|1EC7CE| STA.w $0DE0,X

|1EC7D1| LDA.w Mimic.speed_x,Y
|1EC7D4| STA.w $0D50,X

|1EC7D7| LDA.w Mimic.speed_y,Y
|1EC7DA| STA.w $0D40,X

|1EC7DD| LDA.w $0E70,X
|1EC7E0| BNE .tile_collision

|1EC7E2| JSR MoveSpriteXY_bank1E

.tile_collision
|1EC7E5| JSR CheckDamageToAndFromLink_bank1E
|1EC7E8| JSR CheckSpriteTileCollision_bank1E

|1EC7EB| INC.w $0E80,X

|1EC7EE| LDA.w $0E80,X
|1EC7F1| AND.b #$0C
|1EC7F3| ORA.w $0DE0,X
|1EC7F6| TAY

|1EC7F7| LDA.w Mimic.anim_step,Y
|1EC7FA| STA.w $0DC0,X

|1EC7FD| LDA.w $0E20,X
|1EC800| CMP.b #$84 ; SPRITE 84
|1EC802| BNE .dont_prep_shot

|1EC804| JSR GetDirectionTowardsLink_bank1E

|1EC807| LDA.b $0F
|1EC809| CLC
|1EC80A| ADC.b #$08

|1EC80C| CMP.b #$10
|1EC80E| BCC .link_in_sight

|1EC810| LDA.b $0E
|1EC812| CLC
|1EC813| ADC.b #$08

|1EC815| CMP.b #$10
|1EC817| BCS .dont_prep_shot

;---------------------------------------------------------------------------------------------------

.link_in_sight
|1EC819| TYA
|1EC81A| CMP.w $0DE0,X
|1EC81D| BNE .dont_prep_shot

|1EC81F| LDA.w $0D90,X
|1EC822| AND.b #$1F
|1EC824| BNE .need_to_charge

|1EC826| LDA.b #$10
|1EC828| STA.w $0E00,X

.need_to_charge
|1EC82B| INC.w $0D90,X

|1EC82E| RTS

.dont_prep_shot
|1EC82F| STZ.w $0D90,X

|1EC832| RTS

;===================================================================================================

Eyegore:
|1EC833| JSR SpriteDraw_Eyegore
|1EC836| JSR CheckIfActive_bank1E
|1EC839| JSR HandleSpriteRecoil_bank1E
|1EC83C| JSR CheckDamageToAndFromLink_bank1E

|1EC83F| LDA.w $0E60,X
|1EC842| ORA.b #$40
|1EC844| STA.w $0E60,X

|1EC847| LDA.w $0CAA,X
|1EC84A| ORA.b #$04
|1EC84C| STA.w $0CAA,X

|1EC84F| LDA.w $0D80,X
|1EC852| JSL JumpTableLocal
|1EC856| dw Eyegore_Dormant
|1EC858| dw Eyegore_WakingUp
|1EC85A| dw Eyegore_Chase
|1EC85C| dw Eyegore_GoToSleep

;===================================================================================================

EyegoreMovementTimer:
|1EC85E| db  96, 128, 160, 128

;---------------------------------------------------------------------------------------------------

Eyegore_Dormant:
|1EC862| LDA.w $0DF0,X
|1EC865| BNE .exit

|1EC867| JSR GetDirectionTowardsLink_bank1E

|1EC86A| LDA.b $0E
|1EC86C| CLC
|1EC86D| ADC.b #$30

|1EC86F| CMP.b #$60
|1EC871| BCS .exit

|1EC873| LDA.b $0F
|1EC875| CLC
|1EC876| ADC.b #$30

|1EC878| CMP.b #$60
|1EC87A| BCS .exit

|1EC87C| INC.w $0D80,X

|1EC87F| LDA.b #$3F
|1EC881| STA.w $0DF0,X

.exit
|1EC884| RTS

;===================================================================================================

pool Eyegore_WakingUp

.anim_step
|1EC885| db $02, $02, $02, $02
|1EC889| db $01, $01, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

Eyegore_WakingUp:
|1EC88D| LDA.w $0DF0,X
|1EC890| BNE .waking_up

|1EC892| JSR GetDirectionTowardsLink_bank1E
|1EC895| TYA
|1EC896| STA.w $0DE0,X

|1EC899| INC.w $0D80,X

|1EC89C| JSL GetRandomNumber
|1EC8A0| AND.b #$03
|1EC8A2| TAY

|1EC8A3| LDA.w EyegoreMovementTimer,Y
|1EC8A6| STA.w $0DF0,X

|1EC8A9| RTS

;---------------------------------------------------------------------------------------------------

.waking_up
|1EC8AA| LSR A
|1EC8AB| LSR A
|1EC8AC| LSR A
|1EC8AD| TAY

|1EC8AE| LDA.w .anim_step,Y
|1EC8B1| STA.w $0DC0,X

|1EC8B4| RTS

;===================================================================================================

pool Eyegore_Chase

.anim_step
|1EC8B5| db $07, $05, $02, $09, $08, $06, $03, $0A
|1EC8BD| db $07, $05, $02, $09, $08, $06, $04, $0B

endpool

;---------------------------------------------------------------------------------------------------

Eyegore_Chase:
|1EC8C5| LDA.w $0E60,X
|1EC8C8| AND.b #$BF
|1EC8CA| STA.w $0E60,X

|1EC8CD| LDA.w $0E20,X
|1EC8D0| CMP.b #$84 ; SPRITE 84
|1EC8D2| BEQ .not_red

|1EC8D4| LDA.w $0CAA,X
|1EC8D7| AND.b #$FB
|1EC8D9| STA.w $0CAA,X

.not_red
|1EC8DC| LDA.w $0DF0,X
|1EC8DF| BNE .continue_chase

|1EC8E1| LDA.b #$3F
|1EC8E3| STA.w $0DF0,X

|1EC8E6| INC.w $0D80,X

|1EC8E9| STZ.w $0DC0,X

|1EC8EC| RTS

;---------------------------------------------------------------------------------------------------

.continue_chase
|1EC8ED| TXA
|1EC8EE| EOR.b $1A
|1EC8F0| AND.b #$1F
|1EC8F2| BNE .dont_turn

|1EC8F4| JSR GetDirectionTowardsLink_bank1E
|1EC8F7| TYA
|1EC8F8| STA.w $0DE0,X

.dont_turn
|1EC8FB| LDY.w $0DE0,X

|1EC8FE| LDA.w Sixteen_X,Y
|1EC901| STA.w $0D50,X

|1EC904| LDA.w Sixteen_Y,Y
|1EC907| STA.w $0D40,X

|1EC90A| LDA.w $0E70,X
|1EC90D| BNE .tile_collision

|1EC90F| JSR MoveSpriteXY_bank1E

;---------------------------------------------------------------------------------------------------

.tile_collision
|1EC912| JSR CheckSpriteTileCollision_bank1E

|1EC915| INC.w $0E80,X

|1EC918| LDA.w $0E80,X
|1EC91B| AND.b #$0C
|1EC91D| ORA.w $0DE0,X
|1EC920| TAY

|1EC921| LDA.w .anim_step,Y
|1EC924| STA.w $0DC0,X

|1EC927| RTS

;===================================================================================================

pool Eyegore_GoToSleep

.anim_step
|1EC928| db $00, $00, $01, $01, $02, $02, $02, $02

endpool

;---------------------------------------------------------------------------------------------------

Eyegore_GoToSleep:
|1EC930| LDA.w $0DF0,X
|1EC933| BNE .closing_eye

|1EC935| STZ.w $0D80,X

|1EC938| LDA.b #$60
|1EC93A| STA.w $0DF0,X

|1EC93D| RTS

.closing_eye
|1EC93E| LSR A
|1EC93F| LSR A
|1EC940| LSR A
|1EC941| TAY

|1EC942| LDA.w .anim_step,Y
|1EC945| STA.w $0DC0,X

|1EC948| RTS

;===================================================================================================

pool SpriteDraw_Eyegore

.oam_groups
; group00
|1EC949| dw  -4,  -4 : db $A2, $00, $00, $02
|1EC951| dw   4,  -4 : db $A2, $40, $00, $02
|1EC959| dw  -4,   4 : db $9C, $00, $00, $02
|1EC961| dw   4,   4 : db $9C, $40, $00, $02

; group01
|1EC969| dw  -4,  -4 : db $A4, $00, $00, $02
|1EC971| dw   4,  -4 : db $A4, $40, $00, $02
|1EC979| dw  -4,   4 : db $9C, $00, $00, $02
|1EC981| dw   4,   4 : db $9C, $40, $00, $02

; group02
|1EC989| dw  -4,  -4 : db $8C, $00, $00, $02
|1EC991| dw   4,  -4 : db $8C, $40, $00, $02
|1EC999| dw  -4,   4 : db $9C, $00, $00, $02
|1EC9A1| dw   4,   4 : db $9C, $40, $00, $02

; group03
|1EC9A9| dw  -4,  -3 : db $8C, $00, $00, $02
|1EC9B1| dw  12,  -3 : db $8C, $40, $00, $00
|1EC9B9| dw  -4,  13 : db $BC, $00, $00, $00
|1EC9C1| dw   4,   5 : db $8A, $40, $00, $02

; group04
|1EC9C9| dw  -4,  -3 : db $8C, $00, $00, $00
|1EC9D1| dw   4,  -3 : db $8C, $40, $00, $02
|1EC9D9| dw  -4,   5 : db $8A, $00, $00, $02
|1EC9E1| dw  12,  13 : db $BC, $40, $00, $00

; group05
|1EC9E9| dw   0,  -4 : db $AA, $00, $00, $02
|1EC9F1| dw   0,   4 : db $A6, $00, $00, $02
|1EC9F9| dw   0,  -4 : db $AA, $00, $00, $02
|1ECA01| dw   0,   4 : db $A6, $00, $00, $02

; group06
|1ECA09| dw   0,  -3 : db $AA, $00, $00, $02
|1ECA11| dw   0,   4 : db $A8, $00, $00, $02
|1ECA19| dw   0,  -3 : db $AA, $00, $00, $02
|1ECA21| dw   0,   4 : db $A8, $00, $00, $02

; group07
|1ECA29| dw   0,  -4 : db $AA, $40, $00, $02
|1ECA31| dw   0,   4 : db $A6, $40, $00, $02
|1ECA39| dw   0,  -4 : db $AA, $40, $00, $02
|1ECA41| dw   0,   4 : db $A6, $40, $00, $02

; group08
|1ECA49| dw   0,  -3 : db $AA, $40, $00, $02
|1ECA51| dw   0,   4 : db $A8, $40, $00, $02
|1ECA59| dw   0,  -3 : db $AA, $40, $00, $02
|1ECA61| dw   0,   4 : db $A8, $40, $00, $02

; group09
|1ECA69| dw  -4,  -4 : db $8E, $00, $00, $02
|1ECA71| dw   4,  -4 : db $8E, $40, $00, $02
|1ECA79| dw  -4,   4 : db $9E, $00, $00, $02
|1ECA81| dw   4,   4 : db $9E, $40, $00, $02

; group0A
|1ECA89| dw  -4,  -3 : db $8E, $00, $00, $02
|1ECA91| dw  12,  -3 : db $8E, $40, $00, $00
|1ECA99| dw  -4,  13 : db $BD, $00, $00, $00
|1ECAA1| dw   4,   5 : db $A0, $40, $00, $02

; group0B
|1ECAA9| dw  -4,  -3 : db $8E, $00, $00, $00
|1ECAB1| dw   4,  -3 : db $8E, $40, $00, $02
|1ECAB9| dw  -4,   5 : db $A0, $00, $00, $02
|1ECAC1| dw  12,  13 : db $BD, $40, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Eyegore:
|1ECAC9| LDA.b #$00
|1ECACB| XBA
|1ECACC| LDA.w $0DC0,X

|1ECACF| REP #$20

|1ECAD1| ASL A ; x32
|1ECAD2| ASL A
|1ECAD3| ASL A
|1ECAD4| ASL A
|1ECAD5| ASL A

|1ECAD6| ADC.w #.oam_groups
|1ECAD9| STA.b $08

|1ECADB| SEP #$20

|1ECADD| LDA.b #$04
|1ECADF| JSR TabulatedSpriteDraw_bank1E

|1ECAE2| LDA.w $0F00,X
|1ECAE5| BNE .exit

|1ECAE7| LDA.b #$0E
|1ECAE9| JSL DrawSpriteShadow_custom_long

.exit
|1ECAED| RTS

;===================================================================================================

pool SpritePrep_AntifairyCircle

.offset_x_low
|1ECAEE| db  10,  20,  10

.offset_x_high
|1ECAF1| db   0,   0,   0

.offset_y_low
|1ECAF4| db -10,   0,  10

.offset_y_high
|1ECAF7| db  -1,   0,   0

;---------------------------------------------------------------------------------------------------

.speed_x
|1ECAFA| db  18,   0, -18

.polarity_x
|1ECAFD| db $01, $01, $00

.speed_y
|1ECB00| db   0,  18,   0

.polarity_y
|1ECB03| db $00, $01, $01

endpool

;---------------------------------------------------------------------------------------------------

SpritePrep_AntifairyCircle:
|1ECB06| LDA.w $0D10,X
|1ECB09| SEC
|1ECB0A| SBC.b #$0A
|1ECB0C| STA.w $0D10,X

|1ECB0F| LDA.w $0D30,X
|1ECB12| SBC.b #$00
|1ECB14| STA.w $0D30,X

|1ECB17| LDA.b #$EE
|1ECB19| STA.w $0D40,X

|1ECB1C| LDA.b #$00
|1ECB1E| STA.w $0D50,X

|1ECB21| LDA.b #$00
|1ECB23| STA.w $0D90,X

|1ECB26| LDA.b #$00
|1ECB28| STA.w $0DA0,X

|1ECB2B| LDA.b #$02
|1ECB2D| STA.w $0FB5

;---------------------------------------------------------------------------------------------------

.next_bubble
|1ECB30| LDA.b #$82 ; SPRITE 82
|1ECB32| JSL SpawnSpriteDynamically
|1ECB36| BMI .no_space

|1ECB38| PHX

|1ECB39| LDX.w $0FB5

|1ECB3C| LDA.b $00
|1ECB3E| CLC
|1ECB3F| ADC.l .offset_x_low,X
|1ECB43| STA.w $0D10,Y

|1ECB46| LDA.b $01
|1ECB48| ADC.l .offset_x_high,X
|1ECB4C| STA.w $0D30,Y

|1ECB4F| LDA.b $02
|1ECB51| CLC
|1ECB52| ADC.l .offset_y_low,X
|1ECB56| STA.w $0D00,Y

|1ECB59| LDA.b $03
|1ECB5B| ADC.l .offset_y_high,X
|1ECB5F| STA.w $0D20,Y

|1ECB62| LDA.l .speed_x,X
|1ECB66| STA.w $0D50,Y

|1ECB69| LDA.l .speed_y,X
|1ECB6D| STA.w $0D40,Y

|1ECB70| LDA.l .polarity_x,X
|1ECB74| STA.w $0D90,Y

|1ECB77| LDA.l .polarity_y,X
|1ECB7B| STA.w $0DA0,Y

|1ECB7E| PLX

.no_space
|1ECB7F| DEC.w $0FB5
|1ECB82| BPL .next_bubble

|1ECB84| RTL

;===================================================================================================

UNREACHABLE_1ECB85:
|1ECB85| db $00, $01, $00, $01, $00, $00, $40, $40

;===================================================================================================

pool Sprite_82_AntifairyCircle

.speed
|1ECB8D| db   1,   -1

.speed_max
|1ECB8F| db  18,  -18

endpool

;---------------------------------------------------------------------------------------------------

Sprite_82_AntifairyCircle:
|1ECB91| JSL SpriteDraw_Antifairy
|1ECB95| JSR CheckIfActive_bank1E

|1ECB98| LDA.w $0D90,X
|1ECB9B| AND.b #$01
|1ECB9D| TAY

|1ECB9E| LDA.w $0D50,X
|1ECBA1| CLC
|1ECBA2| ADC.w .speed,Y
|1ECBA5| STA.w $0D50,X

|1ECBA8| CMP.w .speed_max,Y
|1ECBAB| BNE .not_at_max_x

|1ECBAD| INC.w $0D90,X

.not_at_max_x
|1ECBB0| LDA.w $0DA0,X
|1ECBB3| AND.b #$01
|1ECBB5| TAY

|1ECBB6| LDA.w $0D40,X
|1ECBB9| CLC
|1ECBBA| ADC.w .speed,Y
|1ECBBD| STA.w $0D40,X

|1ECBC0| CMP.w .speed_max,Y
|1ECBC3| BNE .not_at_max_y

|1ECBC5| INC.w $0DA0,X

.not_at_max_y
|1ECBC8| JSR MoveSpriteXY_bank1E

|1ECBCB| LDA.w $0D50,X
|1ECBCE| BEQ .keep_circling

|1ECBD0| LDA.w $0D40,X
|1ECBD3| BEQ .keep_circling

|1ECBD5| JSL CheckIfRoomIsClear
|1ECBD9| BCC .keep_circling

|1ECBDB| LDA.b #$15 ; SPRITE 15
|1ECBDD| STA.w $0E20,X

|1ECBE0| LDA.b #$10
|1ECBE2| LDY.w $0D50,X
|1ECBE5| BPL .use_positive_x

|1ECBE7| LDA.b #$F0

.use_positive_x
|1ECBE9| STA.w $0D50,X

|1ECBEC| LDA.b #$10

|1ECBEE| LDY.w $0D40,X
|1ECBF1| BPL .use_positive_y

|1ECBF3| LDA.b #$F0

.use_positive_y
|1ECBF5| STA.w $0D40,X

.keep_circling
|1ECBF8| JSR CheckDamageToLink_bank1E

|1ECBFB| RTS

;===================================================================================================

Sprite_81_Hover:
|1ECBFC| LDA.w $0B89,X
|1ECBFF| ORA.b #$30
|1ECC01| STA.w $0B89,X

|1ECC04| JSL SpriteDraw_SingleLarge_long
|1ECC08| JSR CheckIfActive_bank1E

|1ECC0B| LDA.w $0EA0,X
|1ECC0E| BEQ .not_recoiling

|1ECC10| STZ.w $0D80,X

.not_recoiling
|1ECC13| JSR HandleSpriteRecoil_bank1E
|1ECC16| JSR CheckDamageToAndFromLink_bank1E

|1ECC19| LDA.w $0E70,X
|1ECC1C| BNE .tile_collision

|1ECC1E| JSR MoveSpriteXY_bank1E

.tile_collision
|1ECC21| JSR CheckSpriteTileCollision_bank1E

|1ECC24| INC.w $0E80,X

|1ECC27| LDA.w $0E80,X
|1ECC2A| LSR A
|1ECC2B| LSR A
|1ECC2C| LSR A
|1ECC2D| AND.b #$02
|1ECC2F| STA.w $0DC0,X

|1ECC32| LDA.w $0D80,X
|1ECC35| JSL JumpTableLocal
|1ECC39| dw Hover_Idle
|1ECC3B| dw Hover_Move

;===================================================================================================

pool Hover_Idle

.flip
|1ECC3D| db $40, $00, $40, $00

endpool

;---------------------------------------------------------------------------------------------------

Hover_Idle:
|1ECC41| LDA.w $0DF0,X
|1ECC44| BNE .exit

|1ECC46| INC.w $0D80,X

|1ECC49| JSR GetXDisplacementFromLink_bank1E
|1ECC4C| STY.b $0C

|1ECC4E| JSR GetYDisplacementFromLink_bank1E

|1ECC51| TYA
|1ECC52| ASL A
|1ECC53| ORA.b $0C
|1ECC55| STA.w $0DE0,X

|1ECC58| TAY

|1ECC59| LDA.w $0F50,X
|1ECC5C| AND.b #$BF
|1ECC5E| ORA.w .flip,Y
|1ECC61| STA.w $0F50,X

|1ECC64| JSL GetRandomNumber
|1ECC68| AND.b #$0F
|1ECC6A| ADC.b #$0C
|1ECC6C| STA.w $0DF0,X

|1ECC6F| JSR ZeroVelocityXY_bank1E

.exit
|1ECC72| RTS

;===================================================================================================

pool Hover_Move

.accel_x
|1ECC73| db  1, -1,  1, -1

.accel_y
|1ECC77| db  1,  1, -1, -1

.decel_x
|1ECC7B| db -1,  1, -1,  1

.decel_y
|1ECC7F| db -1, -1,  1,  1

endpool

;---------------------------------------------------------------------------------------------------

Hover_Move:
|1ECC83| LDA.w $0DF0,X
|1ECC86| BEQ .decelerate

|1ECC88| LDY.w $0DE0,X

|1ECC8B| LDA.w $0D50,X
|1ECC8E| CLC
|1ECC8F| ADC.w .accel_x,Y
|1ECC92| STA.w $0D50,X

|1ECC95| LDA.w $0D40,X
|1ECC98| CLC
|1ECC99| ADC.w .accel_y,Y
|1ECC9C| STA.w $0D40,X

|1ECC9F| LDA.w $0E80,X
|1ECCA2| LSR A
|1ECCA3| LSR A
|1ECCA4| LSR A
|1ECCA5| AND.b #$01
|1ECCA7| STA.w $0DC0,X

|1ECCAA| RTS

;---------------------------------------------------------------------------------------------------

.decelerate
|1ECCAB| LDY.w $0DE0,X

|1ECCAE| LDA.w $0D50,X
|1ECCB1| CLC
|1ECCB2| ADC.w .decel_x,Y
|1ECCB5| STA.w $0D50,X

|1ECCB8| LDA.w $0D40,X
|1ECCBB| CLC
|1ECCBC| ADC.w .decel_y,Y
|1ECCBF| STA.w $0D40,X

|1ECCC2| BNE .exit

|1ECCC4| STZ.w $0D80,X

|1ECCC7| LDA.b #$40
|1ECCC9| STA.w $0DF0,X

.exit
|1ECCCC| RTS

;===================================================================================================

Palettes_Crystal:
; #RRGGBB :  000000, 080870, 181888, 2828A8, 3838B8, 4848D8, 6868F0, 8080F8
|1ECCCD| dw  $0000,  $3821,  $4463,  $54A5,  $5CE7,  $6D29,  $79AD,  $7E10

;---------------------------------------------------------------------------------------------------

CrystalCutscene_Initialize:
|1ECCDD| LDA.b #$33 ; color math for translucensy
|1ECCDF| STA.b $9A

|1ECCE1| LDA.b #$00
|1ECCE3| STA.l $7EC007
|1ECCE7| STA.l $7EC009

|1ECCEB| PHX

|1ECCEC| JSL AssertTranslucencySwap
|1ECCF0| JSL PaletteFilter_Crystal

|1ECCF4| PLX

|1ECCF5| REP #$20

|1ECCF7| LDA.l Palettes_Crystal+0
|1ECCFB| STA.l $7EC5E0

|1ECCFF| LDA.l Palettes_Crystal+2
|1ECD03| STA.l $7EC5E2

|1ECD07| LDA.l Palettes_Crystal+4
|1ECD0B| STA.l $7EC5E4

|1ECD0F| LDA.l Palettes_Crystal+6
|1ECD13| STA.l $7EC5E6

|1ECD17| LDA.l Palettes_Crystal+8
|1ECD1B| STA.l $7EC5E8

|1ECD1F| LDA.l Palettes_Crystal+10
|1ECD23| STA.l $7EC5EA

|1ECD27| LDA.l Palettes_Crystal+12
|1ECD2B| STA.l $7EC5EC

|1ECD2F| LDA.l Palettes_Crystal+14
|1ECD33| STA.l $7EC5EE

|1ECD37| SEP #$30

|1ECD39| INC.b $15

|1ECD3B| JSR CrystalCutscene_SpawnMaiden
|1ECD3E| JSR CrystalCutscene_InitializePolyhedral

|1ECD41| RTL

;===================================================================================================

CrystalCutscene_SpawnMaiden:
|1ECD42| LDY.b #$0F

|1ECD44| LDA.b #$00

.next_sprite
|1ECD46| STA.w $0DD0,Y

|1ECD49| DEY
|1ECD4A| BPL .next_sprite

;---------------------------------------------------------------------------------------------------

|1ECD4C| LDA.b #$AB ; SPRITE AB
|1ECD4E| JSL SpawnSpriteDynamically

|1ECD52| LDA.b $23
|1ECD54| STA.w $0D30,Y

|1ECD57| LDA.b $21
|1ECD59| STA.w $0D20,Y

|1ECD5C| LDA.b #$78
|1ECD5E| STA.w $0D10,Y

|1ECD61| LDA.b #$7C
|1ECD63| STA.w $0D00,Y

|1ECD66| LDA.b #$01
|1ECD68| STA.w $0DE0,Y

|1ECD6B| LDA.b #$0B
|1ECD6D| STA.w $0F50,Y

|1ECD70| LDA.b #$00
|1ECD72| STA.w $0E80,Y
|1ECD75| STA.w $0F20,Y

|1ECD78| PHY

|1ECD79| JSL TerminateSelectInteractives

|1ECD7D| STZ.w $02E9

|1ECD80| TYA

|1ECD81| PLY

|1ECD82| STA.w $0D90,Y

;---------------------------------------------------------------------------------------------------

; If we're in turtle rock, use zelda graphics
|1ECD85| LDA.w $040C
|1ECD88| CMP.b #$18 ; DUNGEON 18
|1ECD8A| BNE .not_zelda

|1ECD8C| LDA.b #$09
|1ECD8E| STA.w $0F50,Y

|1ECD91| LDA.b #$01 ; FOLLOWER 01

|1ECD93| BRA .load_gfx

.not_zelda
|1ECD95| LDA.b #$06 ; FOLLOWER 06

.load_gfx
|1ECD97| STA.l $7EF3CC

|1ECD9B| PHX

|1ECD9C| JSL LoadFollowerGraphics

|1ECDA0| PLX

|1ECDA1| LDA.b #$00
|1ECDA3| STA.l $7EF3CC

|1ECDA7| STZ.w $0428

|1ECDAA| REP #$20

|1ECDAC| LDA.b $22
|1ECDAE| SEC
|1ECDAF| SBC.b $E2
|1ECDB1| EOR.w #$FFFF
|1ECDB4| SEC
|1ECDB5| ADC.w #$0079
|1ECDB8| STA.w $0422

|1ECDBB| LDA.b $E6
|1ECDBD| AND.w #$00FF
|1ECDC0| STA.b $00

|1ECDC2| LDA.w #$0030
|1ECDC5| SEC
|1ECDC6| SBC.b $00
|1ECDC8| STA.w $0424

|1ECDCB| SEP #$30

|1ECDCD| LDA.b #$01
|1ECDCF| STA.w $0428

|1ECDD2| RTS

;===================================================================================================

CrystalCutscene_InitializePolyhedral:
|1ECDD3| LDA.b #$9C
|1ECDD5| STA.w $1F02

|1ECDD8| LDA.b #$01
|1ECDDA| STA.w $1F01
|1ECDDD| STA.w $012A
|1ECDE0| STA.w $1F00

|1ECDE3| LDA.b #$20
|1ECDE5| STA.w $1F06
|1ECDE8| STA.w $1F07
|1ECDEB| STA.w $1F08

|1ECDEE| STZ.w $1F03

|1ECDF1| LDA.b #$10
|1ECDF3| STA.w $1F04

|1ECDF6| STZ.b $1D

|1ECDF8| LDA.b #$16
|1ECDFA| STA.b $1C

|1ECDFC| RTS

;===================================================================================================

Sprite_AB_CrystalMaiden:
|1ECDFD| REP #$20

|1ECDFF| LDA.w $0FD8
|1ECE02| SEC
|1ECE03| SBC.w $0422
|1ECE06| STA.w $0FD8

|1ECE09| LDA.w $0FDA
|1ECE0C| SEC
|1ECE0D| SBC.w $0424
|1ECE10| STA.w $0FDA

|1ECE13| SEP #$30

|1ECE15| LDA.w $0D80,X
|1ECE18| CMP.b #$03
|1ECE1A| BCC .invisible

|1ECE1C| JSL SpriteDraw_Maiden

.invisible
|1ECE20| LDA.b #$01
|1ECE22| STA.w $012A

|1ECE25| LDA.w $1F00
|1ECE28| BNE .exit

|1ECE2A| JSR CrystalMaiden_RunCutscene

|1ECE2D| LDA.b #$01
|1ECE2F| STA.w $1F00

.exit
|1ECE32| RTS

;===================================================================================================

CrystalMaiden_RunCutscene:
|1ECE33| INC.w $0E90,X

|1ECE36| LDA.w $1F05
|1ECE39| CLC
|1ECE3A| ADC.b #$06
|1ECE3C| STA.w $1F05

|1ECE3F| LDA.b $11
|1ECE41| BEQ .continue

|1ECE43| RTS

.continue
|1ECE44| LDA.w $0D80,X
|1ECE47| JSL JumpTableLocal
|1ECE4B| dw CrystalMaiden_DisableSubscreen
|1ECE4D| dw CrystalMaiden_EnableSubscreen
|1ECE4F| dw CrystalMaiden_WaitForCrystalGrowth
|1ECE51| dw CrystalMaiden_Emerge
|1ECE53| dw CrystalMaiden_DelaySpeech
|1ECE55| dw CrystalMaiden_GiveSpeech
|1ECE57| dw CrystalMaiden_DoYouUnderstand
|1ECE59| dw CrystalMaiden_GoodLuckKid
|1ECE5B| dw CrystalMaiden_KickOutOfDungeon

;===================================================================================================
; Why does this routine even exist?
;===================================================================================================
CrystalMaiden_DisableSubscreen:
|1ECE5D| STZ.b $1D

|1ECE5F| INC.w $0D80,X

|1ECE62| RTS

;===================================================================================================

CrystalMaiden_EnableSubscreen:
|1ECE63| LDA.b #$01
|1ECE65| STA.b $1D

|1ECE67| INC.w $0D80,X

|1ECE6A| RTS

;===================================================================================================

CrystalMaiden_WaitForCrystalGrowth:
|1ECE6B| LDA.w $1F02
|1ECE6E| CMP.b #$06
|1ECE70| BCS .wait

|1ECE72| STZ.w $1F02

|1ECE75| INC.w $0D80,X

|1ECE78| RTS

.wait
|1ECE79| SBC.b #$03
|1ECE7B| STA.w $1F02

|1ECE7E| CMP.b #$40
|1ECE80| BCC .exit

|1ECE82| PHX

|1ECE83| LDA.w $0D90,X
|1ECE86| TAX

|1ECE87| JSL AncillaAdd_SwordChargeSparkle_preserveX

|1ECE8B| PLX

.exit
|1ECE8C| RTS

;===================================================================================================
; I don't get the point of this specific, duplicated subroutine either.
;===================================================================================================
CrystalMaiden_Emerge:
|1ECE8D| INC.w $0D80,X

;===================================================================================================

CrystalMaiden_DelaySpeech:
|1ECE90| LDA.w $0E90,X
|1ECE93| AND.b #$01
|1ECE95| BNE .exit

|1ECE97| PHX

|1ECE98| JSL PaletteFilter_Sprite5Left

|1ECE9C| PLX

|1ECE9D| LDA.l $7EC007
|1ECEA1| BNE .exit

|1ECEA3| INC.w $0D80,X

|1ECEA6| LDA.b #$01
|1ECEA8| STA.w $02E4

|1ECEAB| STZ.w $02D8
|1ECEAE| STZ.w $02DA

|1ECEB1| STZ.b $2E
|1ECEB3| STZ.b $2F

.exit
|1ECEB5| RTS

;===================================================================================================

CrystalMaiden_Messages:
|1ECEB6| dw $0131 ; MESSAGE 0131 - Swamp
|1ECEB8| dw $0130 ; MESSAGE 0130 - PoD
|1ECEBA| dw $0135 ; MESSAGE 0135 - Mire
|1ECEBC| dw $0132 ; MESSAGE 0132 - Skull
|1ECEBE| dw $0134 ; MESSAGE 0134 - Ice
|1ECEC0| dw $0130 ; MESSAGE 0130 - Hera
|1ECEC2| dw $0133 ; MESSAGE 0133 - Thieves
|1ECEC4| dw $0136 ; MESSAGE 0136 - Turtle Rock
|1ECEC6| dw $013A ; MESSAGE 013A - Turtle Rock every crystal

;---------------------------------------------------------------------------------------------------

CrystalMaiden_GiveSpeech:
|1ECEC8| LDA.w $040C
|1ECECB| SEC
|1ECECC| SBC.b #$0A
|1ECECE| TAY

; Is it pod?
|1ECECF| CPY.b #$02
|1ECED1| BNE .dont_update_map

|1ECED3| LDA.l $7EF3C7

; don't change to crystals icon if we're past that
|1ECED7| CMP.b #$07
|1ECED9| BCS .dont_update_map

|1ECEDB| LDA.b #$07
|1ECEDD| STA.l $7EF3C7

.dont_update_map
; Is it turtle rock?
|1ECEE1| CPY.b #$0E
|1ECEE3| BNE .not_special_zelda_message

|1ECEE5| LDA.l $7EF37A
|1ECEE9| AND.b #$7F
|1ECEEB| CMP.b #$7F
|1ECEED| BEQ .not_special_zelda_message

|1ECEEF| LDY.b #$10

.not_special_zelda_message
|1ECEF1| LDA.w CrystalMaiden_Messages+0,Y
|1ECEF4| XBA

|1ECEF5| LDA.w CrystalMaiden_Messages+1,Y
|1ECEF8| TAY

|1ECEF9| XBA

|1ECEFA| JSL ShowMessageUnconditional

|1ECEFE| INC.w $0D80,X

; Why wasn't this done with the above?
|1ECF01| LDA.l $7EF37A
|1ECF05| AND.b #$7F
|1ECF07| CMP.b #$7F
|1ECF09| BNE .exit

; map icon to gt
|1ECF0B| LDA.b #$08
|1ECF0D| STA.l $7EF3C7

.exit
|1ECF11| RTS

;===================================================================================================

CrystalMaiden_DoYouUnderstand:
|1ECF12| LDA.b #$38 ; MESSAGE 0138
|1ECF14| LDY.b #$01
|1ECF16| JSL ShowMessageUnconditional

|1ECF1A| INC.w $0D80,X

|1ECF1D| RTS

;===================================================================================================

CrystalMaiden_GoodLuckKid:
|1ECF1E| LDA.w $1CE8
|1ECF21| BEQ .speech_was_CRYSTAL_clear

|1ECF23| LDA.b #$05
|1ECF25| STA.w $0D80,X

|1ECF28| RTS

.speech_was_CRYSTAL_clear
|1ECF29| LDA.b #$37 ; MESSAGE 0137
|1ECF2B| LDY.b #$01
|1ECF2D| JSL ShowMessageUnconditional

|1ECF31| INC.w $0D80,X

|1ECF34| RTS

;===================================================================================================

CrystalMaiden_KickOutOfDungeon:
|1ECF35| STZ.b $1D

|1ECF37| PHX

|1ECF38| JSL PrepareDungeonExitFromBossFight

|1ECF3C| PLX

|1ECF3D| STZ.w $0DD0,X

|1ECF40| RTS

;===================================================================================================

Sprite_7D_BigSpike:
|1ECF41| JSR SpriteDraw_BigSpike
|1ECF44| JSR CheckIfActive_bank1E
|1ECF47| JSR CheckDamageToAndFromLink_bank1E

|1ECF4A| LDA.w $0D80,X
|1ECF4D| BNE .in_motion

|1ECF4F| JSR GetDirectionTowardsLink_bank1E
|1ECF52| TYA
|1ECF53| STA.w $0DE0,X

|1ECF56| LDA.b $0F
|1ECF58| CLC
|1ECF59| ADC.b #$10

|1ECF5B| CMP.b #$20
|1ECF5D| BCS .not_close ; why not use BCC next time?
|1ECF5F| BRA .start_movement

.not_close
|1ECF61| LDA.b $0E
|1ECF63| CLC
|1ECF64| ADC.b #$10

|1ECF66| CMP.b #$20
|1ECF68| BCS .also_not_close

.start_movement
|1ECF6A| LDA.w .timer,Y
|1ECF6D| STA.w $0DF0,X

|1ECF70| INC.w $0D80,X

|1ECF73| LDA.w .forward_speed_x,Y
|1ECF76| STA.w $0D50,X

|1ECF79| LDA.w .forward_speed_y,Y
|1ECF7C| STA.w $0D40,X

.also_not_close
|1ECF7F| RTS

;---------------------------------------------------------------------------------------------------

.forward_speed_x
|1ECF80| db  32, -32,   0,   0

.backward_speed_x
|1ECF84| db -16,  16,   0,   0

.forward_speed_y
|1ECF88| db   0,   0,  32, -32

.backward_speed_y
|1ECF8C| db   0,   0, -16,  16

.timer
|1ECF90| db  64,  64,  56,  56

;===================================================================================================

.in_motion
|1ECF94| CMP.b #$01
|1ECF96| BNE .retracting

|1ECF98| JSR CheckSpriteTileCollision_bank1E
|1ECF9B| BNE .tile_collision

|1ECF9D| LDA.w $0DF0,X
|1ECFA0| BNE .still_moving

.tile_collision
|1ECFA2| INC.w $0D80,X

|1ECFA5| LDA.b #$60
|1ECFA7| STA.w $0DF0,X

.still_moving
|1ECFAA| JSR MoveSpriteXY_bank1E

|1ECFAD| RTS

;---------------------------------------------------------------------------------------------------

.retracting
|1ECFAE| LDA.w $0DF0,X
|1ECFB1| BNE .exit

|1ECFB3| LDY.w $0DE0,X

|1ECFB6| LDA.w .backward_speed_x,Y
|1ECFB9| STA.w $0D50,X

|1ECFBC| LDA.w .backward_speed_y,Y
|1ECFBF| STA.w $0D40,X

|1ECFC2| JSR MoveSpriteXY_bank1E

|1ECFC5| LDA.w $0D10,X
|1ECFC8| CMP.w $0D90,X
|1ECFCB| BNE .exit

|1ECFCD| LDA.w $0D00,X
|1ECFD0| CMP.w $0DB0,X
|1ECFD3| BNE .exit

|1ECFD5| STZ.w $0D80,X

.exit
|1ECFD8| RTS

;===================================================================================================

pool SpriteDraw_BigSpike

.oam_groups
|1ECFD9| dw  -8,  -8 : db $C4, $00, $00, $02
|1ECFE1| dw   8,  -8 : db $C4, $40, $00, $02
|1ECFE9| dw  -8,   8 : db $C4, $80, $00, $02
|1ECFF1| dw   8,   8 : db $C4, $C0, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_BigSpike:
|1ECFF9| REP #$20

|1ECFFB| LDA.w #.oam_groups
|1ECFFE| STA.b $08

|1ED000| LDA.w #$0004
|1ED003| STA.b $06

|1ED005| SEP #$30

|1ED007| JSL TabulatedSpriteDraw.preset_quantity

|1ED00B| RTS

;===================================================================================================

pool Firebar

.offset_low
|1ED00C| db -2,  2
|1ED00E| db -1,  1

.offset_high
|1ED010| db -1,  0
|1ED012| db -1,  0

endpool

;---------------------------------------------------------------------------------------------------

Sprite_7E_Firebar_Clockwise:
Sprite_7F_Firebar_Counterclockwise:
|1ED014| JSR Firebar_Main
|1ED017| JSR CheckIfActive_bank1E

|1ED01A| INC.w $0E80,X

|1ED01D| LDA.w $0E20,X
|1ED020| SEC
|1ED021| SBC.b #$7E
|1ED023| TAY

; [HARDCODED] ice palace speeds
|1ED024| LDA.w $040C
|1ED027| CMP.b #$12 ; DUNGEON 12
|1ED029| BNE .not_ice_palace

|1ED02B| INY
|1ED02C| INY

.not_ice_palace
|1ED02D| LDA.w $0D90,X
|1ED030| CLC
|1ED031| ADC.w Firebar.offset_low,Y
|1ED034| STA.w $0D90,X

|1ED037| LDA.w $0DA0,X
|1ED03A| ADC.w Firebar.offset_high,Y
|1ED03D| AND.b #$01
|1ED03F| STA.w $0DA0,X

|1ED042| RTS

;===================================================================================================

Firebar_Main:
|1ED043| JSR GetScreenCoordinates_bank1E

|1ED046| LDA.b $05
|1ED048| STA.w $0FB6

|1ED04B| LDA.b $00
|1ED04D| STA.w $0FA8

|1ED050| LDA.b $02
|1ED052| STA.w $0FA9

|1ED055| LDA.w $0D90,X
|1ED058| STA.b $00

|1ED05A| LDA.w $0DA0,X
|1ED05D| STA.b $01

; This determines the spacing of the fire bar
|1ED05F| LDA.b #$40
|1ED061| STA.b $0F

|1ED063| PHX

;---------------------------------------------------------------------------------------------------

|1ED064| REP #$30

|1ED066| LDA.b $00
|1ED068| AND.w #$01FF

|1ED06B| LSR A ; /64
|1ED06C| LSR A
|1ED06D| LSR A
|1ED06E| LSR A
|1ED06F| LSR A
|1ED070| LSR A

|1ED071| STA.b $0A

|1ED073| LDA.b $00
|1ED075| CLC
|1ED076| ADC.w #$0080
|1ED079| AND.w #$01FF
|1ED07C| STA.b $02

|1ED07E| LDA.b $00
|1ED080| AND.w #$00FF
|1ED083| ASL A
|1ED084| TAX

|1ED085| LDA.l TrigTable,X
|1ED089| STA.b $04

|1ED08B| LDA.b $02
|1ED08D| AND.w #$00FF
|1ED090| ASL A
|1ED091| TAX

|1ED092| LDA.l TrigTable,X
|1ED096| STA.b $06

;---------------------------------------------------------------------------------------------------

|1ED098| SEP #$30

|1ED09A| PLX

|1ED09B| LDA.b $04
|1ED09D| STA.w WRMPYA

|1ED0A0| LDA.b $0F

|1ED0A2| LDY.b $05
|1ED0A4| BNE .nonzero_a

|1ED0A6| STA.w WRMPYB

|1ED0A9| JSR NOP8

|1ED0AC| ASL.w RDMPYL ; carry = round up
|1ED0AF| LDA.w RDMPYH
|1ED0B2| ADC.b #$00

.nonzero_a
|1ED0B4| STA.b $0E

|1ED0B6| LSR.b $01
|1ED0B8| BCC .dont_invert_a

|1ED0BA| EOR.b #$FF
|1ED0BC| INC A

.dont_invert_a
|1ED0BD| STA.b $04

;---------------------------------------------------------------------------------------------------

|1ED0BF| LDA.b $06
|1ED0C1| STA.w WRMPYA

|1ED0C4| LDA.b $0F

|1ED0C6| LDY.b $07
|1ED0C8| BNE .nonzero_b

|1ED0CA| STA.w WRMPYB

|1ED0CD| JSR NOP8

|1ED0D0| ASL.w RDMPYL ; carry = round up
|1ED0D3| LDA.w RDMPYH
|1ED0D6| ADC.b #$00

.nonzero_b
|1ED0D8| STA.b $0F

|1ED0DA| LSR.b $03
|1ED0DC| BCC .dont_invert_b

|1ED0DE| EOR.b #$FF
|1ED0E0| INC A

.dont_invert_b
|1ED0E1| STA.b $06

;---------------------------------------------------------------------------------------------------

|1ED0E3| LDA.w $0E80,X

|1ED0E6| ASL A ; x16
|1ED0E7| ASL A
|1ED0E8| ASL A
|1ED0E9| ASL A

|1ED0EA| AND.b #$C0
|1ED0EC| ORA.w $0FB6
|1ED0EF| STA.b $0D

|1ED0F1| LDY.b #$00

|1ED0F3| LDA.b $04
|1ED0F5| CLC
|1ED0F6| ADC.w $0FA8
|1ED0F9| STA.b ($90),Y

|1ED0FB| LDA.b $06
|1ED0FD| CLC
|1ED0FE| ADC.w $0FA9

|1ED101| INY
|1ED102| STA.b ($90),Y

|1ED104| LDA.b #$28
|1ED106| INY
|1ED107| STA.b ($90),Y

|1ED109| LDA.b $0D
|1ED10B| INY
|1ED10C| STA.b ($90),Y

|1ED10E| LDA.b #$02
|1ED110| STA.b ($92)

;---------------------------------------------------------------------------------------------------

|1ED112| LDY.b #$04

|1ED114| PHX

|1ED115| LDX.b #$02

.next_object_a
|1ED117| LDA.b $0E
|1ED119| STA.w WRMPYA

|1ED11C| LDA.w .mutliplier,X
|1ED11F| STA.w WRMPYB

|1ED122| JSR NOP8

|1ED125| LDA.b $04
|1ED127| ASL A
|1ED128| LDA.w RDMPYH
|1ED12B| BCC .dont_invert_c

|1ED12D| EOR.b #$FF
|1ED12F| INC A

.dont_invert_c
|1ED130| CLC
|1ED131| ADC.w $0FA8
|1ED134| STA.b ($90),Y

|1ED136| LDA.b $0F
|1ED138| STA.w WRMPYA

|1ED13B| LDA.w .mutliplier,X
|1ED13E| STA.w WRMPYB

|1ED141| JSR NOP8

|1ED144| LDA.b $06
|1ED146| ASL A
|1ED147| LDA.w RDMPYH
|1ED14A| BCC .dont_invert_d

|1ED14C| EOR.b #$FF
|1ED14E| INC A

.dont_invert_d
|1ED14F| CLC
|1ED150| ADC.w $0FA9

|1ED153| INY
|1ED154| STA.b ($90),Y

|1ED156| LDA.b #$28
|1ED158| INY
|1ED159| STA.b ($90),Y

|1ED15B| LDA.b $0D
|1ED15D| INY
|1ED15E| STA.b ($90),Y

|1ED160| PHY

|1ED161| TYA
|1ED162| LSR A
|1ED163| LSR A
|1ED164| TAY

|1ED165| LDA.b #$02
|1ED167| STA.b ($92),Y

|1ED169| PLY
|1ED16A| INY

|1ED16B| DEX
|1ED16C| BPL .next_object_a

;---------------------------------------------------------------------------------------------------

|1ED16E| PLX

|1ED16F| LDY.b #$FF
|1ED171| LDA.b #$03
|1ED173| JSL CorrectOAMEntries_long

|1ED177| TXA
|1ED178| EOR.b $1A
|1ED17A| AND.b #$03

|1ED17C| ORA.b $11
|1ED17E| ORA.w $0FC1
|1ED181| BNE .exit

|1ED183| LDY.b #$00

;---------------------------------------------------------------------------------------------------

.next_segment
|1ED185| PHY

|1ED186| TYA
|1ED187| LSR A
|1ED188| LSR A
|1ED189| TAY

|1ED18A| LDA.b ($92),Y
|1ED18C| PLY
|1ED18D| AND.b #$01
|1ED18F| BNE .no_damage

|1ED191| LDA.b ($90),Y
|1ED193| CLC
|1ED194| ADC.b $E2
|1ED196| SEC
|1ED197| SBC.b $22
|1ED199| CLC
|1ED19A| ADC.b #$0C

|1ED19C| CMP.b #$18
|1ED19E| BCS .no_damage

|1ED1A0| INY
|1ED1A1| LDA.b ($90),Y

|1ED1A3| DEY

|1ED1A4| CMP.b #$F0
|1ED1A6| BCS .no_damage

|1ED1A8| CLC
|1ED1A9| ADC.b $E8
|1ED1AB| SEC
|1ED1AC| SBC.b $20
|1ED1AE| CLC
|1ED1AF| ADC.b #$04

|1ED1B1| CMP.b #$10
|1ED1B3| BCS .no_damage

|1ED1B5| PHY
|1ED1B6| JSL AttemptDamageToLinkPlusRecoil_long
|1ED1BA| PLY

.no_damage
|1ED1BB| INY
|1ED1BC| INY
|1ED1BD| INY
|1ED1BE| INY

|1ED1BF| CPY.b #$10
|1ED1C1| BCC .next_segment

.exit
|1ED1C3| RTS

;---------------------------------------------------------------------------------------------------

.mutliplier
|1ED1C4| db $40, $80, $C0

;===================================================================================================

pool Sprite_80_Firesnake

.flip
|1ED1C7| db $00, $40, $80, $C0

endpool

;---------------------------------------------------------------------------------------------------

Sprite_80_Firesnake:
|1ED1CB| JSL SpriteDraw_SingleLarge_long
|1ED1CF| JSR CheckIfActive_bank1E
|1ED1D2| JSR HandleSpriteRecoil_bank1E

|1ED1D5| LDA.b $1A
|1ED1D7| LSR A
|1ED1D8| LSR A
|1ED1D9| AND.b #$03
|1ED1DB| TAY

|1ED1DC| LDA.w $0F50,X
|1ED1DF| AND.b #$3F
|1ED1E1| ORA.w .flip,Y
|1ED1E4| STA.w $0F50,X

; [WTF] some unimplemented method of killing firesnakes
|1ED1E7| LDA.w $0D90,X
|1ED1EA| BEQ .main

|1ED1EC| LDA.w $0DF0,X
|1ED1EF| STA.w $0BA0,X
|1ED1F2| BNE .exit

|1ED1F4| STZ.w $0DD0,X

.exit
|1ED1F7| RTS

;---------------------------------------------------------------------------------------------------

.speed_x
|1ED1F8| db  24, -24,   0,   0

.speed_y
|1ED1FC| db   0,   0,  24, -24

;---------------------------------------------------------------------------------------------------

.main
|1ED200| JSR CheckDamageToAndFromLink_bank1E
|1ED203| JSR SpawnFiresnakeSegment

; for previous frame
|1ED206| LDA.w $0E70,X
|1ED209| BNE .tile_collision

|1ED20B| JSR MoveSpriteXY_bank1E

.tile_collision
|1ED20E| JSR CheckSpriteTileCollision_bank1E
|1ED211| BEQ .no_tile_collision

|1ED213| JSL GetRandomNumber
|1ED217| LSR A
|1ED218| LDA.w $0DE0,X

|1ED21B| ROL A
|1ED21C| TAY

|1ED21D| LDA.w SharedDirections_Nice,Y
|1ED220| STA.w $0DE0,X

.no_tile_collision
|1ED223| LDY.w $0DE0,X

|1ED226| LDA.w .speed_x,Y
|1ED229| STA.w $0D50,X

|1ED22C| LDA.w .speed_y,Y
|1ED22F| STA.w $0D40,X

|1ED232| RTS

;===================================================================================================

SpawnFiresnakeSegment:
|1ED233| TXA
|1ED234| EOR.b $1A
|1ED236| AND.b #$07
|1ED238| BNE .exit

|1ED23A| PHX
|1ED23B| TXY

|1ED23C| LDX.b #$1D

.next_slot
|1ED23E| LDA.l $7FF800,X
|1ED242| BEQ .free_slot

|1ED244| DEX
|1ED245| BPL .next_slot

|1ED247| PLX

|1ED248| RTS

;---------------------------------------------------------------------------------------------------

.free_slot
|1ED249| LDA.b #$01 ; GARNISH 01
|1ED24B| STA.l $7FF800,X
|1ED24F| STA.w $0FB4

|1ED252| LDA.w $0D10,Y
|1ED255| STA.l $7FF83C,X

|1ED259| LDA.w $0D30,Y
|1ED25C| STA.l $7FF878,X

|1ED260| LDA.w $0D00,Y
|1ED263| CLC
|1ED264| ADC.b #$10
|1ED266| STA.l $7FF81E,X

|1ED26A| LDA.w $0D20,Y
|1ED26D| ADC.b #$00
|1ED26F| STA.l $7FF85A,X

|1ED273| LDA.b #$20
|1ED275| STA.l $7FF90E,X

|1ED279| TYA
|1ED27A| STA.l $7FF92C,X

|1ED27E| LDA.w $0F20,Y
|1ED281| STA.l $7FF968,X

|1ED285| PLX

.exit
|1ED286| RTS

;===================================================================================================

pool Sprite_7C_GreenStalfos

.direction
|1ED287| db $04, $06, $00, $02

.flip
|1ED28B| db $40, $00, $00, $00

.anim_step
|1ED28F| db $00, $00, $01, $02

endpool

;---------------------------------------------------------------------------------------------------
; Actually, they're only green in Misery Mire.
; They're orange in Turtle Rock.
;---------------------------------------------------------------------------------------------------
Sprite_7C_GreenStalfos:
|1ED293| LDY.w $0DE0,X

|1ED296| LDA.w $0F50,X
|1ED299| AND.b #$BF
|1ED29B| ORA.w .flip,Y
|1ED29E| STA.w $0F50,X

|1ED2A1| LDA.w .anim_step,Y
|1ED2A4| STA.w $0DC0,X

|1ED2A7| JSL SpriteDraw_SingleLarge_long
|1ED2AB| JSR CheckIfActive_bank1E
|1ED2AE| JSR HandleSpriteRecoil_bank1E
|1ED2B1| JSR CheckDamageToAndFromLink_bank1E

|1ED2B4| STZ.w $0D90,X

|1ED2B7| JSR GetDirectionTowardsLink_bank1E

|1ED2BA| LDA.w .direction,Y
|1ED2BD| CMP.w $002F
|1ED2C0| BEQ .link_facing_me

|1ED2C2| TXA
|1ED2C3| EOR.b $1A
|1ED2C5| AND.b #$07
|1ED2C7| BNE .dont_turn

|1ED2C9| JSR GetDirectionTowardsLink_bank1E
|1ED2CC| TYA
|1ED2CD| STA.w $0DE0,X

|1ED2D0| LDA.w $0DA0,X
|1ED2D3| CMP.b #$04
|1ED2D5| BEQ .at_max

|1ED2D7| INC.w $0DA0,X

.at_max
|1ED2DA| JSL ApplySpeedTowardsLink_long

|1ED2DE| JSR GetXDisplacementFromLink_bank1E
|1ED2E1| TYA
|1ED2E2| STA.w $0DE0,X

;---------------------------------------------------------------------------------------------------

.dont_turn
|1ED2E5| JSR MoveSpriteXY_bank1E

|1ED2E8| RTS

.link_facing_me
|1ED2E9| INC.w $0D90,X

|1ED2EC| TXA
|1ED2ED| EOR.b $1A
|1ED2EF| AND.b #$0F
|1ED2F1| BNE .dont_turn_b

|1ED2F3| LDA.w $0DA0,X
|1ED2F6| BEQ .at_min

|1ED2F8| DEC.w $0DA0,X

.at_min
|1ED2FB| JSL ApplySpeedTowardsLink_long

|1ED2FF| JSR GetXDisplacementFromLink_bank1E
|1ED302| TYA
|1ED303| STA.w $0DE0,X

.dont_turn_b
|1ED306| JSR MoveSpriteXY_bank1E

|1ED309| RTS

;===================================================================================================

Agahnim_Direction:
|1ED30A| db $00, $00, $00, $00, $00, $00, $00, $00
|1ED312| db $00, $00, $05, $05, $00, $01, $01, $04
|1ED31A| db $04, $00, $02, $02, $04, $04, $03, $02
|1ED322| db $02

;---------------------------------------------------------------------------------------------------

Agahnim_DirectionStepOffset:
|1ED323| db $02, $0A, $08, $00, $04, $06, $FA

;===================================================================================================

Sprite_7A_Agahnim:
|1ED32A| JSR SpriteDraw_Agahnim

; Continually reset timers and direction while off screen
|1ED32D| LDA.w $0F00,X
|1ED330| BEQ .active

|1ED332| LDA.b #$20
|1ED334| STA.w $0DF0,X

|1ED337| LDA.b #$00
|1ED339| STA.w $0DC0,X

|1ED33C| LDA.b #$03
|1ED33E| STA.w $0DE0,X

.active
|1ED341| JSR CheckIfActive_bank1E
|1ED344| JSR HandleSpriteRecoil_bank1E

|1ED347| LDA.b #$01
|1ED349| STA.w $0BA0,X

|1ED34C| LDA.w $0D80,X
|1ED34F| JSL JumpTableLocal
|1ED353| dw Agahnim_ChooseFirstMove

|1ED355| dw Agahnim_HelloLightWorld
|1ED357| dw Agahnim_EmergeFromShadow
|1ED359| dw Agahnim_Attack
|1ED35B| dw Agahnim_ChooseWarpSpot
|1ED35D| dw Agahnim_MoveTowardsWarp

|1ED35F| dw Agahnim_HelloDarkWorld
|1ED361| dw Agahnim_CreateClones
|1ED363| dw Agahnim_ExorciseGanon
|1ED365| dw Agahnim_UncloneSelf

|1ED367| dw Agahnim_SpinToPyramid

;===================================================================================================

pool Agahnim_SpinToPyramid

.anim_step
|1ED369| db $00, $08, $0A, $02, $02, $06, $04

endpool

;---------------------------------------------------------------------------------------------------

Agahnim_SpinToPyramid:
|1ED370| LDA.w $0DF0,X
|1ED373| BNE .delay

|1ED375| PHX

|1ED376| STZ.w $0DD0,X

|1ED379| JSL PrepareDungeonExitFromBossFight

|1ED37D| PLX

.delay
|1ED37E| LDA.w $0DF0,X
|1ED381| CMP.b #$10
|1ED383| BCS .spinning

|1ED385| LDA.b #$7F
|1ED387| STA.b $9A

|1ED389| LDA.b #$06
|1ED38B| STA.b $1C

|1ED38D| LDA.b #$10
|1ED38F| STA.b $1D

|1ED391| PHX

|1ED392| JSL PaletteFilter_Sprite5Left

|1ED396| PLX

.spinning
|1ED397| LDA.w $0DF0,X
|1ED39A| AND.b #$00 ; [DUMB] and !WEIRD
|1ED39C| BNE .dont_increase_rotation_speed

|1ED39E| LDA.w $0F80,X
|1ED3A1| CMP.b #$FF
|1ED3A3| BEQ .dont_increase_rotation_speed

|1ED3A5| CLC
|1ED3A6| ADC.b #$01
|1ED3A8| STA.w $0F80,X

.dont_increase_rotation_speed
|1ED3AB| LDA.w $0F90,X
|1ED3AE| CLC
|1ED3AF| ADC.w $0F80,X
|1ED3B2| STA.w $0F90,X

|1ED3B5| BCC .no_sfx

|1ED3B7| INC.w $0E80,X

|1ED3BA| LDA.w $0E80,X
|1ED3BD| CMP.b #$07
|1ED3BF| BNE .no_sfx

|1ED3C1| STZ.w $0E80,X

|1ED3C4| LDA.b #$04 ; SFX2.04
|1ED3C6| JSL QueueSpriteSFX2WithPan

.no_sfx
|1ED3CA| LDY.w $0E80,X

|1ED3CD| LDA.w .anim_step,Y
|1ED3D0| STA.w $0DC0,X

|1ED3D3| RTS

;===================================================================================================

Agahnim_ExorciseGanon:
|1ED3D4| LDA.b #$02
|1ED3D6| STA.w $0FFC

|1ED3D9| STZ.w $0EB0,X

|1ED3DC| LDA.w $0DF0,X
|1ED3DF| CMP.b #$40
|1ED3E1| BCC .delay

|1ED3E3| LDA.w $0EF0,X
|1ED3E6| ORA.b #$E0
|1ED3E8| STA.w $0EF0,X

|1ED3EB| RTS

.delay
|1ED3EC| CMP.b #$01
|1ED3EE| BNE .no_bat_yet

|1ED3F0| JSL SpawnPhantomGanon

|1ED3F4| LDA.b #$1D ; SONG 1D
|1ED3F6| STA.w $012C

.no_bat_yet
|1ED3F9| STZ.w $0EF0,X

|1ED3FC| LDA.b #$11
|1ED3FE| STA.w $0DC0,X

|1ED401| RTS

;===================================================================================================
; When Agahnim 2 is defeated, the clones go to this mode to remerge.
;===================================================================================================
Agahnim_UncloneSelf:
|1ED402| STZ.w $0EB0,X

|1ED405| LDA.w $0D10
|1ED408| STA.b $04

|1ED40A| LDA.w $0D30
|1ED40D| STA.b $05

|1ED40F| LDA.w $0D00
|1ED412| STA.b $06

|1ED414| LDA.w $0D20
|1ED417| STA.b $07

|1ED419| REP #$20

|1ED41B| LDA.w $0FD8
|1ED41E| SEC
|1ED41F| SBC.b $04
|1ED421| CLC
|1ED422| ADC.w #$0004

|1ED425| CMP.w #$0008
|1ED428| BCS .not_merged_yet

|1ED42A| LDA.w $0FDA
|1ED42D| SEC
|1ED42E| SBC.b $06
|1ED430| CLC
|1ED431| ADC.w #$0004

|1ED434| CMP.w #$0008
|1ED437| BCS .not_merged_yet

|1ED439| SEP #$20

|1ED43B| STZ.w $0DD0,X

.not_merged_yet
|1ED43E| SEP #$20

|1ED440| LDA.b #$20
|1ED442| JSL ProjectSpriteSpeedTowardsLocation_long

|1ED446| LDA.b $00
|1ED448| STA.w $0D40,X

|1ED44B| LDA.b $01
|1ED44D| STA.w $0D50,X

|1ED450| JSR MoveSpriteXY_bank1E
|1ED453| JSL Agahnim_ApplyMotionBlur

|1ED457| RTS

;===================================================================================================

Agahnim_HelloDarkWorld:
|1ED458| LDA.w $0DF0,X
|1ED45B| BNE .exit

|1ED45D| LDA.b #$3F ; MESSAGE 013F
|1ED45F| STA.w $1CF0

|1ED462| LDA.b #$01
|1ED464| STA.w $1CF1

|1ED467| JSL ShowMessageMinimal

|1ED46B| INC.w $0D80,X

|1ED46E| LDA.b #$50
|1ED470| STA.w $0DF0,X

.exit
|1ED473| RTS

;===================================================================================================

pool Agahnim_CreateClones

.speed
|1ED474| db  32, -32

endpool

;---------------------------------------------------------------------------------------------------

Agahnim_CreateClones:
|1ED476| LDA.w $0EC0,X
|1ED479| BEQ .spawn_clones

|1ED47B| LDA.w $0DF0,X
|1ED47E| BNE .delay

|1ED480| JMP.w Agahnim_PrepareToAttack

;---------------------------------------------------------------------------------------------------

.delay
|1ED483| LDA.w .speed-1,X
|1ED486| STA.w $0D50,X

|1ED489| LDA.w $0D40,X
|1ED48C| CLC
|1ED48D| ADC.b #$02
|1ED48F| STA.w $0D40,X

|1ED492| JSR MoveSpriteXY_bank1E

|1ED495| JSL Agahnim_ApplyMotionBlur
|1ED499| BMI .exit_a

|1ED49B| LDA.b #$04
|1ED49D| STA.w $0F50,Y

.exit_a
|1ED4A0| RTS

;---------------------------------------------------------------------------------------------------

.palette
|1ED4A1| db $09, $0B

;---------------------------------------------------------------------------------------------------

.spawn_clones
|1ED4A3| LDA.w $0DF0,X
|1ED4A6| BNE .wait_for_clones

|1ED4A8| JMP.w Agahnim_PrepareToAttack

;---------------------------------------------------------------------------------------------------

.wait_for_clones
|1ED4AB| CMP.b #$40
|1ED4AD| BNE .exit_b

|1ED4AF| LDA.b #$28 ; SFX3.28
|1ED4B1| STA.w $012F

|1ED4B4| LDA.b #$01
|1ED4B6| STA.w $0FB5

.next_clone
|1ED4B9| LDA.b #$7A ; SPRITE 7A
|1ED4BB| LDY.b #$02
|1ED4BD| JSL SpawnSpriteDynamically.slot_limited

|1ED4C1| JSL SetSpawnedSpriteCoordinates

; Assumes they ended up in the slots they wanted.
; So why not just hardcode them to begin with?
; Or at least empty those slots before you start

; You can barely notice the palette difference between clones
|1ED4C5| LDA.w .palette-1,Y
|1ED4C8| STA.w $0E60,Y

|1ED4CB| AND.b #$0F
|1ED4CD| STA.w $0F50,Y
|1ED4D0| STA.w $0EC0,Y

|1ED4D3| LDA.w $0D80,X
|1ED4D6| STA.w $0D80,Y

|1ED4D9| LDA.b #$20
|1ED4DB| STA.w $0DF0,Y

|1ED4DE| DEC.w $0FB5
|1ED4E1| BPL .next_clone

.exit_b
|1ED4E3| RTS

;===================================================================================================

pool Agahnim_ChooseFirstMove

.next_ai
|1ED4E4| db $01 ; LW: Aga 1
|1ED4E5| db $06 ; DW: Aga 2

endpool

;---------------------------------------------------------------------------------------------------

Agahnim_ChooseFirstMove:
|1ED4E6| LDY.w $0FFF

|1ED4E9| LDA.w .next_ai,Y
|1ED4EC| STA.w $0D80,X

|1ED4EF| RTS

;===================================================================================================

Agahnim_HelloLightWorld:
|1ED4F0| LDA.w $0DF0,X
|1ED4F3| BNE EXIT_1ED518

|1ED4F5| LDA.b #$3D ; MESSAGE 013D
|1ED4F7| STA.w $1CF0

|1ED4FA| LDA.b #$01
|1ED4FC| STA.w $1CF1

|1ED4FF| JSL ShowMessageMinimal

;===================================================================================================

Agahnim_PrepareToAttack:
|1ED503| LDA.b #$03
|1ED505| STA.w $0D80,X

|1ED508| LDA.b #$20
|1ED50A| STA.w $0DF0,X

|1ED50D| RTS

;===================================================================================================

Agahnim_PrepareToEmerge:
|1ED50E| LDA.b #$02
|1ED510| STA.w $0D80,X

|1ED513| LDA.b #$27
|1ED515| STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

#EXIT_1ED518:
|1ED518| RTS

;===================================================================================================

pool Agahnim_EmergeFromShadow

.anim_step
|1ED519| db $0C, $0D, $0E, $0F, $10

endpool

;---------------------------------------------------------------------------------------------------

Agahnim_EmergeFromShadow:
|1ED51E| STZ.w $0FF8

|1ED521| LDA.w $0DF0,X
|1ED524| BNE .delay

|1ED526| INC.w $0D80,X

|1ED529| LDA.b #$FF
|1ED52B| STA.w $0DF0,X

|1ED52E| RTS

.delay
|1ED52F| LSR A
|1ED530| LSR A
|1ED531| LSR A
|1ED532| TAY

|1ED533| LDA.w .anim_step,Y
|1ED536| STA.w $0DC0,X

|1ED539| RTS

;===================================================================================================
; TODO verify
pool Agahnim_Attack

.attack_anim_offset
|1ED53A| db $00, $00, $00, $00, $00, $00, $00, $01
|1ED542| db $01, $01, $01, $01, $01, $01, $00, $00

.attack_anim_ball_step
|1ED54A| db $00, $00, $00, $00, $00, $00, $00, $06
|1ED552| db $05, $04, $03, $02, $01, $00, $00, $00

.attack_anim_ball_step_offset
|1ED55A| db $1E, $18, $0C, $00, $06, $12

endpool

;---------------------------------------------------------------------------------------------------

Agahnim_Attack:
|1ED560| LDA.w $0DF0,X
|1ED563| CMP.b #$C0
|1ED565| BNE .no_charge_sfx

|1ED567| PHA

|1ED568| LDA.b #$27 ; SFX3.27
|1ED56A| JSL QueueSpriteSFX3WithPan

|1ED56E| PLA

;---------------------------------------------------------------------------------------------------

.no_charge_sfx
|1ED56F| CMP.b #$EF
|1ED571| BCS .apply_unfade_filter

.apply_fade_filter
|1ED573| CMP.b #$10
|1ED575| BCS .skip_filter

.apply_unfade_filter
|1ED577| PHX

|1ED578| LDA.w $0FFF
|1ED57B| BNE .aga2_filtering

|1ED57D| LDX.b #$02

.aga2_filtering
|1ED57F| JSL AgahnimWarpShadowFilter

|1ED583| PLX

|1ED584| BRA .immune

;---------------------------------------------------------------------------------------------------

.skip_filter
|1ED586| TXA
|1ED587| BNE .immune

|1ED589| JSR CheckDamageToAndFromLink_bank1E

|1ED58C| STZ.w $0BA0,X

.immune
|1ED58F| LDA.w $0DF0,X
|1ED592| BNE .delay_warp

|1ED594| INC.w $0D80,X

|1ED597| LDA.b #$27
|1ED599| STA.w $0DF0,X

|1ED59C| RTS

;---------------------------------------------------------------------------------------------------

.delay_warp
|1ED59D| CMP.b #$80
|1ED59F| BCC .direction_locked

|1ED5A1| PHA

|1ED5A2| LDA.b #$02
|1ED5A4| JSL ApplySpeedTowardsLink_long

|1ED5A8| LDY.b $01 ; [USELESS]

|1ED5AA| LDA.b $00
|1ED5AC| CLC
|1ED5AD| ADC.b #$02
|1ED5AF| STA.b $02

|1ED5B1| ASL A
|1ED5B2| ASL A
|1ED5B3| ADC.b $02
|1ED5B5| ADC.b #$02

|1ED5B7| CLC
|1ED5B8| ADC.b $01
|1ED5BA| TAY

|1ED5BB| LDA.w Agahnim_Direction,Y
|1ED5BE| STA.w $0DE0,X

|1ED5C1| LDA.b #$20
|1ED5C3| JSL ApplySpeedTowardsLink_long

|1ED5C7| LDA.w $0E30,X
|1ED5CA| CMP.b #$04
|1ED5CC| BNE .not_lightning

; Force Agahnim to face down during lightning.
|1ED5CE| LDA.b #$03
|1ED5D0| STA.w $0DE0,X

.not_lightning
|1ED5D3| PLA

.direction_locked
|1ED5D4| CMP.b #$70
|1ED5D6| BNE .dont_fire

|1ED5D8| PHA

|1ED5D9| JSR Agahnim_PerformAttack

|1ED5DC| PLA

.dont_fire
|1ED5DD| LSR A ; /16
|1ED5DE| LSR A
|1ED5DF| LSR A
|1ED5E0| LSR A
|1ED5E1| TAY

|1ED5E2| LDA.w .attack_anim_offset,Y
|1ED5E5| STA.w $0D90,X

|1ED5E8| LDA.w .attack_anim_ball_step,Y
|1ED5EB| BEQ .no_offset_needed

|1ED5ED| CLC
|1ED5EE| LDY.w $0DE0,X
|1ED5F1| ADC.w .attack_anim_ball_step_offset,Y

.no_offset_needed
|1ED5F4| STA.w $0EB0,X

|1ED5F7| LDY.w $0DE0,X

|1ED5FA| LDA.w Agahnim_DirectionStepOffset,Y
|1ED5FD| CLC
|1ED5FE| ADC.w $0D90,X
|1ED601| STA.w $0DC0,X

|1ED604| RTS

;===================================================================================================

pool Agahnim_ChooseWarpSpot

.anim_step
|1ED605| db $10, $0F, $0E, $0D, $0C

.pos_x
|1ED60A| db $38, $38, $38, $58, $78, $98, $B8, $B8
|1ED612| db $B8, $98, $58, $58, $60, $90, $98, $78

.pos_y
|1ED61A| db $B8, $78, $58, $48, $48, $48, $58, $78
|1ED622| db $B8, $B8, $B8, $90, $70, $70, $90, $A0

endpool

;---------------------------------------------------------------------------------------------------

Agahnim_ChooseWarpSpot:
|1ED62A| LDA.w $0DF0,X
|1ED62D| STA.w $0BA0,X
|1ED630| BNE .delay

|1ED632| INC.w $0D80,X

|1ED635| LDY.b #$04

|1ED637| LDA.w $0E30,X
|1ED63A| CMP.b #$04
|1ED63C| BEQ .use_middle_for_lightning

|1ED63E| JSL GetRandomNumber
|1ED642| AND.b #$0F
|1ED644| TAY

.use_middle_for_lightning
|1ED645| LDA.w .pos_x,Y
|1ED648| STA.w $0DB0,X

|1ED64B| LDA.w .pos_y,Y
|1ED64E| STA.w $0E90,X

|1ED651| LDA.b #$08
|1ED653| STA.w $0ED0,X

|1ED656| RTS

.delay
|1ED657| LSR A
|1ED658| LSR A
|1ED659| LSR A
|1ED65A| TAY

|1ED65B| LDA.w .anim_step,Y
|1ED65E| STA.w $0DC0,X

|1ED661| RTS

;===================================================================================================

pool Agahnim_PerformAttack

.offset_x_low
|1ED662| db   0,  10,   8,   0, -10, -10

.offset_x_high
|1ED668| db   0,   0,   0,   0,  -1,  -1

.offset_y_low
|1ED66E| db  -9,  -2,  -2,  -9,  -2,  -2

endpool

;---------------------------------------------------------------------------------------------------

Agahnim_PerformAttack:
; Only Agahnim in slot 0 can use other attacks (the real one)
|1ED674| CPX.b #$00
|1ED676| BNE .can_use_lightning

|1ED678| INC.w $0E30,X

; Prevent Dark world aga from getting to lightning.
|1ED67B| LDA.w $0FFF
|1ED67E| BEQ .can_use_lightning

|1ED680| LDA.w $0E30,X
|1ED683| AND.b #$03
|1ED685| STA.w $0E30,X

.can_use_lightning
|1ED688| LDA.w $0E30,X
|1ED68B| CMP.b #$05
|1ED68D| BNE .balls

|1ED68F| STZ.w $0E30,X

|1ED692| LDA.b #$26 ; SFX3.26
|1ED694| JSL QueueSpriteSFX3WithPan

|1ED698| JSR .spawn_2

.spawn_2
|1ED69B| JSL Sprite_SpawnLightning
|1ED69F| JSL Sprite_SpawnLightning

|1ED6A3| RTS

;---------------------------------------------------------------------------------------------------

.balls
|1ED6A4| LDA.b #$7B ; SPRITE 7B
|1ED6A6| JSL SpawnSpriteDynamically
|1ED6AA| BMI .exit

|1ED6AC| LDA.b #$29 ; SFX3.29
|1ED6AE| JSL QueueSpriteSFX3WithPan

|1ED6B2| PHX

|1ED6B3| LDA.w $0DE0,X
|1ED6B6| TAX

|1ED6B7| LDA.b $00
|1ED6B9| CLC
|1ED6BA| ADC.w .offset_x_low,X
|1ED6BD| STA.w $0D10,Y

|1ED6C0| LDA.b $01
|1ED6C2| ADC.w .offset_x_high,X
|1ED6C5| STA.w $0D30,Y

|1ED6C8| LDA.b $02
|1ED6CA| CLC
|1ED6CB| ADC.w .offset_y_low,X
|1ED6CE| STA.w $0D00,Y

; All the y offsets are negative, so it lacks a table.
|1ED6D1| LDA.b $03
|1ED6D3| ADC.b #$FF
|1ED6D5| STA.w $0D20,Y
|1ED6D8| STA.w $0BA0,Y

|1ED6DB| PLX

|1ED6DC| LDA.w $0D50,X
|1ED6DF| STA.w $0D50,Y

|1ED6E2| LDA.w $0D40,X
|1ED6E5| STA.w $0D40,Y

|1ED6E8| LDA.w $0E30,X
|1ED6EB| CMP.b #$02
|1ED6ED| BCC .exit

; blue balls: 50% chance
|1ED6EF| JSL GetRandomNumber
|1ED6F3| AND.b #$01
|1ED6F5| BNE .exit

|1ED6F7| LDA.b #$01
|1ED6F9| STA.w $0DA0,Y

|1ED6FC| LDA.b #$20
|1ED6FE| STA.w $0DF0,Y

.exit
|1ED701| RTS

;===================================================================================================

Agahnim_MoveTowardsWarp:
|1ED702| LDA.b #$01
|1ED704| STA.w $0BA0,X

|1ED707| LDA.w $0D10,X
|1ED70A| STA.b $00

|1ED70C| LDA.w $0D30,X
|1ED70F| STA.b $01
|1ED711| STA.b $05

|1ED713| LDA.w $0D00,X
|1ED716| STA.b $02

|1ED718| LDA.w $0D20,X
|1ED71B| STA.b $03
|1ED71D| STA.b $07

|1ED71F| LDA.w $0DB0,X
|1ED722| STA.b $04

|1ED724| LDA.w $0E90,X
|1ED727| STA.b $06

;---------------------------------------------------------------------------------------------------

|1ED729| REP #$20

|1ED72B| LDA.b $00
|1ED72D| SEC
|1ED72E| SBC.b $04

|1ED730| CLC
|1ED731| ADC.w #$0007

|1ED734| CMP.w #$000E
|1ED737| BCS .not_close

|1ED739| LDA.b $02
|1ED73B| SEC
|1ED73C| SBC.b $06

|1ED73E| CLC
|1ED73F| ADC.w #$0007

|1ED742| CMP.w #$000E
|1ED745| BCS .not_close

|1ED747| SEP #$20

|1ED749| LDA.w $0DB0,X
|1ED74C| STA.w $0D10,X

|1ED74F| LDA.w $0E90,X
|1ED752| STA.w $0D00,X

|1ED755| JMP.w Agahnim_PrepareToEmerge

;---------------------------------------------------------------------------------------------------

.not_close
|1ED758| SEP #$20

|1ED75A| LDA.w $0ED0,X
|1ED75D| JSL ProjectSpriteSpeedTowardsLocation_long

|1ED761| LDA.b $00
|1ED763| STA.w $0D40,X

|1ED766| LDA.b $01
|1ED768| STA.w $0D50,X

|1ED76B| LDA.w $0ED0,X
|1ED76E| CMP.b #$40
|1ED770| BCS .skip

|1ED772| INC.w $0ED0,X

.skip
|1ED775| JSR MoveSpriteXY_bank1E

|1ED778| RTS

;===================================================================================================

pool SpriteDraw_Agahnim

.agahnim_offset_x
|1ED779| db  -8,   8,  -8,   8
|1ED77D| db  -8,   8,  -8,   8
|1ED781| db  -8,   8,  -8,   8
|1ED785| db  -8,   8,  -8,   8
|1ED789| db  -8,   8,  -8,   8
|1ED78D| db  -8,   8,  -8,   8
|1ED791| db  -8,   8,  -8,   8
|1ED795| db  -8,   8,  -8,   8
|1ED799| db  -8,   8,  -8,   8
|1ED79D| db  -8,   8,  -8,   8
|1ED7A1| db  -8,   8,  -8,   8
|1ED7A5| db  -8,   8,  -8,   8
|1ED7A9| db  -8,   8,  -8,   8
|1ED7AD| db  -6,   6,  -6,   6
|1ED7B1| db  -8,   8,  -8,   8
|1ED7B5| db  -6,   6,  -6,   6
|1ED7B9| db   0,   8,   0,   8
|1ED7BD| db  -8,   8,  -8,   8

.agahnim_offset_y
|1ED7C1| db  -8,  -8,   8,   8
|1ED7C5| db  -8,  -8,   8,   8
|1ED7C9| db  -8,  -8,   8,   8
|1ED7CD| db  -8,  -8,   8,   8
|1ED7D1| db  -8,  -8,   8,   8
|1ED7D5| db  -8,  -8,   8,   8
|1ED7D9| db  -8,  -8,   8,   8
|1ED7DD| db  -8,  -8,   8,   8
|1ED7E1| db  -8,  -8,   8,   8
|1ED7E5| db  -8,  -8,   8,   8
|1ED7E9| db  -8,  -8,   8,   8
|1ED7ED| db  -8,  -8,   8,   8
|1ED7F1| db  -8,  -8,   8,   8
|1ED7F5| db  -6,  -6,   6,   6
|1ED7F9| db  -8,  -8,   8,   8
|1ED7FD| db  -6,  -6,   6,   6
|1ED801| db   0,   0,   8,   8
|1ED805| db   8,   8,   8,   8

.agahnim_char
|1ED809| db $82, $82, $A2, $A2
|1ED80D| db $80, $80, $A0, $A0
|1ED811| db $84, $84, $A4, $A4
|1ED815| db $86, $86, $A6, $A6
|1ED819| db $88, $8A, $A8, $AA
|1ED81D| db $8C, $8E, $AC, $AE
|1ED821| db $C4, $C2, $E4, $E6
|1ED825| db $C0, $C2, $E0, $E2
|1ED829| db $8A, $88, $AA, $A8
|1ED82D| db $8E, $8C, $AE, $AC
|1ED831| db $C2, $C4, $E6, $E4
|1ED835| db $C2, $C0, $E2, $E0
|1ED839| db $EC, $EC, $EC, $EC
|1ED83D| db $EC, $EC, $EC, $EC
|1ED841| db $EE, $EE, $EE, $EE
|1ED845| db $EE, $EE, $EE, $EE
|1ED849| db $DF, $DF, $DF, $DF
|1ED84D| db $40, $42, $40, $42

.agahnim_flip
|1ED851| db $00, $40, $00, $40
|1ED855| db $00, $40, $00, $40
|1ED859| db $00, $40, $00, $40
|1ED85D| db $00, $40, $00, $40
|1ED861| db $00, $00, $00, $00
|1ED865| db $00, $00, $00, $00
|1ED869| db $00, $00, $00, $00
|1ED86D| db $00, $00, $00, $00
|1ED871| db $40, $40, $40, $40
|1ED875| db $40, $40, $40, $40
|1ED879| db $40, $40, $40, $40
|1ED87D| db $40, $40, $40, $40
|1ED881| db $00, $40, $80, $C0
|1ED885| db $00, $40, $80, $C0
|1ED889| db $00, $40, $80, $C0
|1ED88D| db $00, $40, $80, $C0
|1ED891| db $00, $40, $80, $C0
|1ED895| db $00, $00, $00, $00

;---------------------------------------------------------------------------------------------------

.ball_offset_x
|1ED899| db  -7,  15, -11,  11
|1ED89D| db -11,  11,  -8,   8
|1ED8A1| db  -4,   4,   0,   0
|1ED8A5| db -10,  -1, -14,  -5
|1ED8A9| db -14,  -5, -12,  -7
|1ED8AD| db -10,  -7, -10, -10
|1ED8B1| db  16,   8,  12,   4
|1ED8B5| db  12,   4,  10,   6
|1ED8B9| db   9,   7,   8,   8

|1ED8BD| db  -6,  -6, -10, -10
|1ED8C1| db -10, -10, -10, -10
|1ED8C5| db -10, -10, -10, -10
|1ED8C9| db  14,  14,  10,  10
|1ED8CD| db  10,  10,  10,  10
|1ED8D1| db  10,  10,  10,  10
|1ED8D5| db  -7,  15, -11,  11
|1ED8D9| db -11,  11,  -8,   8
|1ED8DD| db  -4,   4,   0,   0

.ball_offset_y
|1ED8E1| db  -5,  -5,  -9,  -9
|1ED8E5| db  -9,  -9,  -9,  -9
|1ED8E9| db  -9,  -9,  -9,  -9
|1ED8ED| db  -3,   9,  -7,   5
|1ED8F1| db  -7,   5,  -5,   3
|1ED8F5| db  -3,   3,  -2,  -2
|1ED8F9| db  -3,   9,  -7,   5
|1ED8FD| db  -7,   5,  -5,   3
|1ED901| db  -3,   3,  -2,  -2

|1ED905| db  -3,   9,  -7,   5
|1ED909| db  -7,   5,  -5,   3
|1ED90D| db  -3,   3,  -2,  -2
|1ED911| db  -3,   9,  -7,   5
|1ED915| db  -7,   5,  -5,   3
|1ED919| db  -3,   3,  -2,  -2
|1ED91D| db  -5,  -5,  -9,  -9
|1ED921| db  -9,  -9,  -9,  -9
|1ED925| db  -9,  -9,  -9,  -9

.ball_char
|1ED929| db $CE, $CC, $C6, $C6
|1ED92D| db $C6, $C6, $CE, $CC
|1ED931| db $C6, $C6, $C6, $C6
|1ED935| db $CE, $CC, $C6, $C6
|1ED939| db $C6, $C6, $CE, $CC
|1ED93D| db $C6, $C6, $C6, $C6
|1ED941| db $CE, $CC, $C6, $C6
|1ED945| db $C6, $C6, $CE, $CC
|1ED949| db $C6, $C6, $C6, $C6

.ball_palette
|1ED94D| db $00, $02, $02, $02
|1ED951| db $02, $02, $00, $02
|1ED955| db $02, $02, $02, $02
|1ED959| db $00, $02, $02, $02
|1ED95D| db $02, $02, $00, $02
|1ED961| db $02, $02, $02, $02
|1ED965| db $00, $02, $02, $02
|1ED969| db $02, $02, $00, $02
|1ED96D| db $02, $02, $02, $02

endpool

;===================================================================================================

UNREACHABLE_1ED971:
|1ED971| RTS

;===================================================================================================

SpriteDraw_Agahnim:
|1ED972| JSR GetScreenCoordinates_bank1E

|1ED975| LDA.w $0DC0,X
|1ED978| ASL A
|1ED979| ASL A
|1ED97A| STA.b $06

;---------------------------------------------------------------------------------------------------

|1ED97C| PHX

|1ED97D| LDX.b #$03

.next_aga_obj
|1ED97F| PHX

|1ED980| TXA
|1ED981| CLC
|1ED982| ADC.b $06
|1ED984| TAX

|1ED985| LDA.b $00
|1ED987| CLC
|1ED988| ADC.w .agahnim_offset_x,X
|1ED98B| STA.b ($90),Y

|1ED98D| LDA.b $02
|1ED98F| CLC
|1ED990| ADC.w .agahnim_offset_y,X
|1ED993| INY
|1ED994| STA.b ($90),Y

|1ED996| LDA.w .agahnim_char,X
|1ED999| INY
|1ED99A| STA.b ($90),Y

|1ED99C| LDA.w .agahnim_flip,X
|1ED99F| ORA.b $05
|1ED9A1| INY
|1ED9A2| STA.b ($90),Y

|1ED9A4| PHY

|1ED9A5| TYA
|1ED9A6| LSR A
|1ED9A7| LSR A
|1ED9A8| TAY

|1ED9A9| LDA.b #$02

|1ED9AB| CPX.b #$44
|1ED9AD| BCS .draw_big

|1ED9AF| CPX.b #$40
|1ED9B1| BCC .draw_big

|1ED9B3| LDA.b #$00

.draw_big
|1ED9B5| STA.b ($92),Y

|1ED9B7| PLY

|1ED9B8| INY

|1ED9B9| PLX
|1ED9BA| DEX
|1ED9BB| BPL .next_aga_obj

;---------------------------------------------------------------------------------------------------

|1ED9BD| PLX

|1ED9BE| LDA.w $0DC0,X
|1ED9C1| CMP.b #$0C
|1ED9C3| BCS .no_shadow

|1ED9C5| LDA.b #$12
|1ED9C7| JSL DrawSpriteShadow_custom_long

.no_shadow
|1ED9CB| LDA.b $11
|1ED9CD| BEQ .skip_correction

|1ED9CF| LDY.b #$FF
|1ED9D1| LDA.b #$03
|1ED9D3| JSL CorrectOAMEntries_long

.skip_correction
|1ED9D7| JSR GetScreenCoordinates_bank1E

|1ED9DA| LDA.b #$08
|1ED9DC| LDY.w $0DE0,X
|1ED9DF| BEQ .use_region_b

.use_region_c
|1ED9E1| JSL AllocateOAMInRegionC

|1ED9E5| BRA .continue

.use_region_b
|1ED9E7| JSL AllocateOAMInRegionB

;---------------------------------------------------------------------------------------------------

.continue
|1ED9EB| LDY.b #$00
|1ED9ED| LDA.w $0EB0,X
|1ED9F0| BEQ .exit

|1ED9F2| DEC A
|1ED9F3| STA.b $0C

|1ED9F5| ASL A
|1ED9F6| STA.b $06

|1ED9F8| LDA.b $1A
|1ED9FA| LSR A
|1ED9FB| AND.b #$02

|1ED9FD| INC A
|1ED9FE| INC A

|1ED9FF| ORA.b #$31
|1EDA01| STA.b $0D

;---------------------------------------------------------------------------------------------------

|1EDA03| PHX

|1EDA04| LDX.b #$01

.next_ball_obj
|1EDA06| PHX

|1EDA07| TXA
|1EDA08| CLC
|1EDA09| ADC.b $06
|1EDA0B| TAX

|1EDA0C| LDA.b $00
|1EDA0E| CLC
|1EDA0F| ADC.w .ball_offset_x,X
|1EDA12| STA.b ($90),Y

|1EDA14| LDA.b $02
|1EDA16| CLC
|1EDA17| ADC.w .ball_offset_y,X
|1EDA1A| INY
|1EDA1B| STA.b ($90),Y

|1EDA1D| LDX.b $0C

|1EDA1F| LDA.w .ball_char,X
|1EDA22| INY
|1EDA23| STA.b ($90),Y

|1EDA25| INY

|1EDA26| LDA.b $0D
|1EDA28| STA.b ($90),Y

|1EDA2A| PHY

|1EDA2B| TYA
|1EDA2C| LSR A
|1EDA2D| LSR A
|1EDA2E| TAY

|1EDA2F| LDA.w .ball_palette,X
|1EDA32| STA.b ($92),Y

|1EDA34| PLY
|1EDA35| INY

|1EDA36| PLX
|1EDA37| DEX
|1EDA38| BPL .next_ball_obj

|1EDA3A| PLX

.exit
|1EDA3B| RTS

;===================================================================================================

Sprite_7B_AgahnimBalls:
|1EDA3C| LDA.w $0DA0,X
|1EDA3F| BEQ YellowBall

;===================================================================================================

BlueBall:
|1EDA41| LDA.w $0DF0,X
|1EDA44| BEQ .done_homing

|1EDA46| LDA.b #$20
|1EDA48| JSL ApplySpeedTowardsLink_long

.done_homing
|1EDA4C| LDA.b #$05
|1EDA4E| BRA AgahnimBalls_Main

;===================================================================================================

YellowBall:
|1EDA50| LDA.b $1A
|1EDA52| LSR A
|1EDA53| AND.b #$02

|1EDA55| INC A
|1EDA56| INC A
|1EDA57| ORA.b #$01

;===================================================================================================

AgahnimBalls_Main:
|1EDA59| STA.w $0F50,X

|1EDA5C| LDA.w $0D80,X
|1EDA5F| BEQ .continue

|1EDA61| JMP.w AgahnimBalls_DrawTrail

.continue
|1EDA64| LDA.w $0DA0,X
|1EDA67| BEQ .draw_yellow

|1EDA69| JSR SpriteDraw_BlueBalls
|1EDA6C| BRA .drawing_done

.draw_yellow
|1EDA6E| JSL SpriteDraw_SingleLarge_long

;---------------------------------------------------------------------------------------------------

.drawing_done
|1EDA72| JSR CheckIfActive_bank1E

|1EDA75| INC.w $0E80,X

|1EDA78| JSR MoveSpriteXY_bank1E

|1EDA7B| JSR CheckSpriteTileCollision_bank1E
|1EDA7E| BEQ .no_tile_collision

|1EDA80| STZ.w $0DD0,X

|1EDA83| LDA.w $0DA0,X
|1EDA86| BNE .blue_ball_explode

.no_tile_collision
|1EDA88| LDA.w $0D90,X
|1EDA8B| BEQ .reflected

|1EDA8D| LDA.w $0BA0
|1EDA90| BNE .reflected

|1EDA92| LDA.w $0D10,X
|1EDA95| STA.b $00

|1EDA97| LDA.w $0D30,X
|1EDA9A| STA.b $08

|1EDA9C| LDA.b #$0F
|1EDA9E| STA.b $02
|1EDAA0| STA.b $03

|1EDAA2| LDA.w $0D00,X
|1EDAA5| STA.b $01

|1EDAA7| LDA.w $0D20,X
|1EDAAA| STA.b $09

|1EDAAC| PHX

|1EDAAD| LDX.b #$00
|1EDAAF| JSL SetupSpriteHitbox_long

|1EDAB3| PLX

|1EDAB4| JSL CheckIfHitboxesOverlap_long
|1EDAB8| BCC .didnt_hit_aga

|1EDABA| PHX

|1EDABB| LDA.b #$A0
|1EDABD| STA.b $00

|1EDABF| LDA.b #$10
|1EDAC1| LDX.b #$00
|1EDAC3| JSL DamageAgahnimWithBalls

|1EDAC7| PLX

|1EDAC8| STZ.w $0DD0,X

|1EDACB| LDA.w $0D50,X
|1EDACE| STA.w $0F40

|1EDAD1| LDA.w $0D40,X
|1EDAD4| STA.w $0F30

.didnt_hit_aga
|1EDAD7| BRA .finish_up

;---------------------------------------------------------------------------------------------------

.reflected
|1EDAD9| JSR CheckDamageToLink_bank1E
|1EDADC| JSL CheckDamageFromLink_long
|1EDAE0| BCC .finish_up

|1EDAE2| LDA.w $0DA0,X
|1EDAE5| BEQ .reflected_yellow_ball

|1EDAE7| STZ.w $0DD0,X

.blue_ball_explode
|1EDAEA| LDA.b #$36 ; SFX3.36
|1EDAEC| JSL QueueSpriteSFX3WithPan

|1EDAF0| JSR CreateSixBlueBalls

|1EDAF3| RTS

;---------------------------------------------------------------------------------------------------

.reflected_yellow_ball
|1EDAF4| LDA.b #$05 ; SFX2.05
|1EDAF6| JSL QueueSpriteSFX2WithPan

|1EDAFA| LDA.b #$29 ; SFX3.29
|1EDAFC| JSL QueueSpriteSFX3WithPan

|1EDB00| LDA.b #$30
|1EDB02| JSL ApplySpeedTowardsLink_long

|1EDB06| LDA.b $01
|1EDB08| EOR.b #$FF
|1EDB0A| INC A
|1EDB0B| STA.w $0D50,X

|1EDB0E| LDA.b $00
|1EDB10| EOR.b #$FF
|1EDB12| INC A
|1EDB13| STA.w $0D40,X

|1EDB16| INC.w $0D90,X

;---------------------------------------------------------------------------------------------------

.finish_up
|1EDB19| TXA
|1EDB1A| EOR.b $1A
|1EDB1C| AND.b #$03
|1EDB1E| ORA.w $0DA0,X
|1EDB21| BNE .exit

|1EDB23| LDA.b #$7B ; SPRITE 7B
|1EDB25| JSL SpawnSpriteDynamically
|1EDB29| BMI .exit

|1EDB2B| JSL SetSpawnedSpriteCoordinates

|1EDB2F| LDA.b #$0F
|1EDB31| STA.w $0DF0,Y
|1EDB34| STA.w $0D80,Y

|1EDB37| LDA.w $0DA0,X
|1EDB3A| STA.w $0DA0,Y

.exit
|1EDB3D| RTS

;===================================================================================================

pool AgahnimBalls_DrawTrail

.anim_step
|1EDB3E| db $02, $02, $02, $02, $02, $02, $02, $01
|1EDB46| db $01, $01, $01, $01, $00, $00, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

AgahnimBalls_DrawTrail:
|1EDB4E| LDA.w $0DC0,X
|1EDB51| CMP.b #$02
|1EDB53| BEQ .small

|1EDB55| JSL SpriteDraw_SingleLarge_long
|1EDB59| BRA .continue

.small
|1EDB5B| JSL SpriteDraw_SingleSmall_long

.continue
|1EDB5F| JSR CheckIfActive_bank1E

|1EDB62| LDA.w $0DF0,X
|1EDB65| STA.w $0BA0,X
|1EDB68| BNE .stay_around

|1EDB6A| STZ.w $0DD0,X

.stay_around
|1EDB6D| TAY
|1EDB6E| CMP.b #$06
|1EDB70| BNE .dont_move

|1EDB72| LDA.b #$40
|1EDB74| STA.w $0D50,X
|1EDB77| STA.w $0D40,X

; [BUG] technically...
; this clobbers Y
; though it will always be 0, which gives the same value as the index for 6
|1EDB7A| JSR MoveSpriteXY_bank1E 

.dont_move
|1EDB7D| LDA.w .anim_step,Y
|1EDB80| STA.w $0DC0,X

|1EDB83| RTS

;===================================================================================================

pool CreateSixBlueBalls

.speed_x
|1EDB84| db   0,  24,  24,   0, -24, -24

.speed_y
|1EDB8A| db -32, -16,  16,  32,  16, -16

endpool

;---------------------------------------------------------------------------------------------------

CreateSixBlueBalls:
|1EDB90| LDA.b #$36 ; SFX3.36
|1EDB92| JSL QueueSpriteSFX3WithPan

|1EDB96| LDA.b #$05
|1EDB98| STA.w $0FB5

.spawn_next
|1EDB9B| JSR .spawn_one

|1EDB9E| DEC.w $0FB5
|1EDBA1| BNE .spawn_next

;---------------------------------------------------------------------------------------------------

.spawn_one
|1EDBA3| LDA.b #$55 ; SPRITE 55
|1EDBA5| JSL SpawnSpriteDynamically
|1EDBA9| BMI .no_space

|1EDBAB| LDA.b $00
|1EDBAD| CLC
|1EDBAE| ADC.b #$04
|1EDBB0| STA.w $0D10,Y

|1EDBB3| LDA.b $01
|1EDBB5| ADC.b #$00
|1EDBB7| STA.w $0D30,Y

|1EDBBA| LDA.b $02
|1EDBBC| CLC
|1EDBBD| ADC.b #$04
|1EDBBF| STA.w $0D00,Y

|1EDBC2| LDA.b $03
|1EDBC4| ADC.b #$00
|1EDBC6| STA.w $0D20,Y

|1EDBC9| LDA.w $0E60,Y
|1EDBCC| AND.b #$FE
|1EDBCE| ORA.b #$40
|1EDBD0| STA.w $0E60,Y

|1EDBD3| LDA.b #$04
|1EDBD5| STA.w $0F50,Y
|1EDBD8| STA.w $0E00,Y

|1EDBDB| LDA.b #$14
|1EDBDD| STA.w $0F60,Y
|1EDBE0| STA.w $0DB0,Y
|1EDBE3| STA.w $0E90,Y

|1EDBE6| PHX

|1EDBE7| LDX.w $0FB5

|1EDBEA| LDA.w .speed_x,X
|1EDBED| STA.w $0D50,Y

|1EDBF0| LDA.w .speed_y,X
|1EDBF3| STA.w $0D40,Y

|1EDBF6| PLX

.no_space
|1EDBF7| RTS

;===================================================================================================

pool SpriteDraw_BlueBalls

.oam_groups
; group00
|1EDBF8| dw   4,  -3 : db $CE, $00, $00, $00
|1EDC00| dw  11,   4 : db $CE, $00, $00, $00
|1EDC08| dw   4,  11 : db $CE, $00, $00, $00
|1EDC10| dw  -3,   4 : db $CE, $00, $00, $00

; group01
|1EDC18| dw  -1,  -1 : db $CE, $00, $00, $00
|1EDC20| dw   9,  -1 : db $CE, $00, $00, $00
|1EDC28| dw  -1,   9 : db $CE, $00, $00, $00
|1EDC30| dw   9,   9 : db $CE, $00, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_BlueBalls:
|1EDC38| LDA.b #$00
|1EDC3A| XBA
|1EDC3B| LDA.w $0E80,X

; Why not just AND.w #$0004?
|1EDC3E| LSR A
|1EDC3F| LSR A
|1EDC40| AND.b #$01

|1EDC42| REP #$20

|1EDC44| ASL A ; x32
|1EDC45| ASL A
|1EDC46| ASL A
|1EDC47| ASL A
|1EDC48| ASL A
|1EDC49| ADC.w #.oam_groups
|1EDC4C| STA.b $08

|1EDC4E| SEP #$20

|1EDC50| LDA.b #$04
|1EDC52| JMP.w TabulatedSpriteDraw_bank1E

;===================================================================================================

Sprite_79_Bee:
|1EDC55| LDA.w $0D80,X
|1EDC58| JSL JumpTableLocal
|1EDC5C| dw Bee_DormantHive
|1EDC5E| dw Bee_Main
|1EDC60| dw Bee_Captured

;===================================================================================================

Bee_DormantHive:
|1EDC62| LDA.w $0E90,X
|1EDC65| BNE .exit

|1EDC67| STZ.w $0DD0,X

|1EDC6A| LDY.b #$0B

.more_bees
|1EDC6C| PHY

|1EDC6D| JSR SpawnBeeFromHive

|1EDC70| PLY
|1EDC71| DEY
|1EDC72| BPL .more_bees

.exit
|1EDC74| RTS

;===================================================================================================

BeeSpeedSlow:
|1EDC75| db  15,   5,  -5, -15,  20,  10, -10, -20

BeeSpeedFast:
|1EDC7D| db   8,   2,  -2,  -8,  10,   5,  -5, -10

BeeTimer:
|1EDC85| db  64,  64, 255, 255

;===================================================================================================

SpawnBeeFromHive:
|1EDC89| LDA.b #$79 ; SPRITE 79
|1EDC8B| JSL SpawnSpriteDynamically
|1EDC8F| BMI .no_space

|1EDC91| JSL SetSpawnedSpriteCoordinates

;===================================================================================================

#InitializeSpawnedBee:
|1EDC95| PHX

|1EDC96| LDA.b #$01
|1EDC98| STA.w $0D80,Y

|1EDC9B| TYA
|1EDC9C| AND.b #$03
|1EDC9E| TAX

|1EDC9F| LDA.w BeeTimer,X
|1EDCA2| STA.w $0DF0,Y
|1EDCA5| STA.w $0D90,Y

|1EDCA8| LDA.b #$60
|1EDCAA| STA.w $0F10,Y

|1EDCAD| JSL GetRandomNumber
|1EDCB1| AND.b #$07
|1EDCB3| TAX

|1EDCB4| LDA.w BeeSpeedSlow,X
|1EDCB7| STA.w $0D50,Y

|1EDCBA| JSL GetRandomNumber
|1EDCBE| AND.b #$07
|1EDCC0| TAX

|1EDCC1| LDA.w BeeSpeedSlow,X
|1EDCC4| STA.w $0D40,Y

|1EDCC7| PLX

.no_space
|1EDCC8| RTS

;===================================================================================================

ReleaseBeeFromBottle:
|1EDCC9| PHB
|1EDCCA| PHK
|1EDCCB| PLB

|1EDCCC| LDA.b #$B2 ; SPRITE B2
|1EDCCE| JSL SpawnSpriteDynamically
|1EDCD2| BMI .no_space

|1EDCD4| LDA.b $EE
|1EDCD6| STA.w $0F20,Y

|1EDCD9| LDA.b $22
|1EDCDB| CLC
|1EDCDC| ADC.b #$08
|1EDCDE| STA.w $0D10,Y

|1EDCE1| LDA.b $23
|1EDCE3| ADC.b #$00
|1EDCE5| STA.w $0D30,Y

|1EDCE8| LDA.b $20
|1EDCEA| CLC
|1EDCEB| ADC.b #$10
|1EDCED| STA.w $0D00,Y

|1EDCF0| LDA.b $21
|1EDCF2| ADC.b #$00
|1EDCF4| STA.w $0D20,Y

|1EDCF7| PHX

|1EDCF8| LDX.w $0202
|1EDCFB| LDA.l $7EF33F,X

|1EDCFF| TAX

|1EDD00| LDA.l $7EF35B,X
|1EDD04| CMP.b #$08
|1EDD06| BNE .regular_bee

|1EDD08| LDA.b #$01
|1EDD0A| STA.w $0EB0,Y

.regular_bee
|1EDD0D| JSR InitializeSpawnedBee

|1EDD10| JSL GetRandomNumber
|1EDD14| AND.b #$07
|1EDD16| TAX

|1EDD17| LDA.w BeeSpeedFast,X
|1EDD1A| STA.w $0D50,Y

|1EDD1D| JSL GetRandomNumber
|1EDD21| AND.b #$07
|1EDD23| TAX

|1EDD24| LDA.w BeeSpeedFast,X
|1EDD27| STA.w $0D40,Y

|1EDD2A| LDA.b #$40
|1EDD2C| STA.w $0DF0,Y
|1EDD2F| STA.w $0D90,Y

|1EDD32| PLX
|1EDD33| PLB

|1EDD34| LDA.b #$00

|1EDD36| RTL

.no_space
|1EDD37| PLB

|1EDD38| LDA.b #$FF

|1EDD3A| RTL

;===================================================================================================

Bee_BounceBoundaries:
|1EDD3B| db  0,  5, 10, 15

;===================================================================================================

Bee_Main:
|1EDD3F| JSR Bee_HandleZ

|1EDD42| JSL SpriteDraw_SingleSmall_long

|1EDD46| JSR Bee_HandleInteractions

|1EDD49| JSR CheckIfActive_bank1E
|1EDD4C| JSR HandleSpriteRecoil_bank1E

|1EDD4F| LDA.w $0EB0,X
|1EDD52| BEQ .regular_bee

|1EDD54| JSL SpawnBeeSparkle

.regular_bee
|1EDD58| JSR BuzzBuzz
|1EDD5B| JSR MoveSpriteXY_bank1E

|1EDD5E| TXA
|1EDD5F| EOR.b $1A
|1EDD61| LSR A
|1EDD62| AND.b #$01
|1EDD64| STA.w $0DC0,X

|1EDD67| LDA.w $0F10,X
|1EDD6A| BNE .not_caught

|1EDD6C| JSR CheckDamageToLink_bank1E

|1EDD6F| JSL CheckDamageFromLink_long
|1EDD73| BEQ .not_caught

|1EDD75| LDA.b #$C6 ; MESSAGE 00C6
|1EDD77| LDY.b #$00
|1EDD79| JSL ShowMessageUnconditional

|1EDD7D| INC.w $0D80,X

|1EDD80| RTS

;---------------------------------------------------------------------------------------------------

.not_caught
|1EDD81| LDA.b $1A
|1EDD83| BNE .skip_timer

|1EDD85| LDA.w $0D90,X
|1EDD88| CMP.b #$10
|1EDD8A| BEQ .skip_timer

|1EDD8C| SEC
|1EDD8D| SBC.b #$08
|1EDD8F| STA.w $0D90,X

.skip_timer
|1EDD92| LDA.w $0DF0,X
|1EDD95| BNE .exit

|1EDD97| JSL GetRandomNumber
|1EDD9B| AND.b #$03
|1EDD9D| TAY

|1EDD9E| LDA.b $22
|1EDDA0| CLC
|1EDDA1| ADC.w Bee_BounceBoundaries,Y
|1EDDA4| STA.b $04

|1EDDA6| LDA.b $23
|1EDDA8| ADC.b #$00
|1EDDAA| STA.b $05

|1EDDAC| JSL GetRandomNumber
|1EDDB0| AND.b #$03
|1EDDB2| TAY

|1EDDB3| LDA.b $20
|1EDDB5| CLC
|1EDDB6| ADC.w Bee_BounceBoundaries,Y
|1EDDB9| STA.b $06

|1EDDBB| LDA.b $21
|1EDDBD| ADC.b #$00
|1EDDBF| STA.b $07

|1EDDC1| LDA.b #$14
|1EDDC3| JSL ProjectSpriteSpeedTowardsLocation_long

|1EDDC7| LDA.b $00
|1EDDC9| STA.w $0D40,X

|1EDDCC| LDA.b $01
|1EDDCE| STA.w $0D50,X
|1EDDD1| BPL .flip_horizontally

|1EDDD3| LDA.w $0F50,X
|1EDDD6| AND.b #$BF
|1EDDD8| BRA .save_h_flip

.flip_horizontally
|1EDDDA| LDA.w $0F50,X
|1EDDDD| ORA.b #$40

.save_h_flip
|1EDDDF| STA.w $0F50,X

|1EDDE2| TXA
|1EDDE3| CLC
|1EDDE4| ADC.w $0D90,X
|1EDDE7| STA.w $0DF0,X

.exit
|1EDDEA| RTS

;===================================================================================================

Bee_Captured:
|1EDDEB| JSR Bee_HandleInteractions

|1EDDEE| JSR CheckIfActive_bank1E

|1EDDF1| LDA.w $1CE8
|1EDDF4| BNE .freed

|1EDDF6| JSL FindEmptyBottle
|1EDDFA| BMI .no_bottles

|1EDDFC| LDA.w $0EB0,X
|1EDDFF| STA.b $00

|1EDE01| PHX

|1EDE02| TYX

|1EDE03| LDA.b #$07
|1EDE05| CLC
|1EDE06| ADC.b $00
|1EDE08| STA.l $7EF35C,X

|1EDE0C| JSL RefreshItemIcon

|1EDE10| PLX

|1EDE11| STZ.w $0DD0,X

|1EDE14| RTS

;---------------------------------------------------------------------------------------------------

.no_bottles
|1EDE15| LDA.b #$C8 ; MESSAGE 00C8
|1EDE17| LDY.b #$00
|1EDE19| JSL ShowMessageUnconditional

.freed
|1EDE1D| LDA.b #$40
|1EDE1F| STA.w $0F10,X

|1EDE22| LDA.b #$01
|1EDE24| STA.w $0D80,X

|1EDE27| RTS

;===================================================================================================

FindEmptyBottle:
|1EDE28| PHX

|1EDE29| LDX.b #$00

.next_bottle
|1EDE2B| LDA.l $7EF35C,X
|1EDE2F| CMP.b #$02
|1EDE31| BEQ .empty

|1EDE33| INX
|1EDE34| CPX.b #$04
|1EDE36| BCC .next_bottle

|1EDE38| LDX.b #$FF

.empty
|1EDE3A| TXY
|1EDE3B| PLX
|1EDE3C| TYA

|1EDE3D| RTL

;===================================================================================================

Bee_HandleInteractions:
|1EDE3E| LDA.b $11
|1EDE40| CMP.b #$02
|1EDE42| BNE .exit

|1EDE44| REP #$20

|1EDE46| LDA.w $1CF0

|1EDE49| CMP.w #$00C6 ; MESSAGE 00C6
|1EDE4C| BEQ .not_caught

|1EDE4E| CMP.w #$00C8 ; MESSAGE 00C8
|1EDE51| BNE .exit

.not_caught
|1EDE53| SEP #$30

|1EDE55| LDA.b #$28
|1EDE57| STA.w $0F10,X

.exit
|1EDE5A| SEP #$30

|1EDE5C| RTS

;===================================================================================================
; Encompasses both the hidden golden bee and the player bee.
;===================================================================================================
Sprite_B2_PlayerBee:
|1EDE5D| LDA.w $0D80,X
|1EDE60| JSL JumpTableLocal
|1EDE64| dw GoldBee_Dormant
|1EDE66| dw PlayerBee_Main
|1EDE68| dw Bee_Captured

;===================================================================================================

GoldBee_Dormant:
|1EDE6A| LDA.w $0E90,X
|1EDE6D| BNE .exit

|1EDE6F| STZ.w $0DD0,X

; Checks every bottle for a bee
|1EDE72| LDA.l $7EF35C
|1EDE76| ORA.l $7EF35D
|1EDE7A| ORA.l $7EF35E
|1EDE7E| ORA.l $7EF35F
|1EDE82| AND.b #$08
|1EDE84| BNE .exit

|1EDE86| JSR GoldBee_SpawnSelf

.exit
|1EDE89| RTS

;===================================================================================================

GoldBee_SpawnSelf:
|1EDE8A| LDA.b #$79 ; SPRITE 79
|1EDE8C| JSL SpawnSpriteDynamically
|1EDE90| BMI .no_space

|1EDE92| JSL SetSpawnedSpriteCoordinates

|1EDE96| LDA.b #$01
|1EDE98| STA.w $0D80,Y

|1EDE9B| LDA.b #$40
|1EDE9D| STA.w $0DF0,Y
|1EDEA0| STA.w $0D90,Y

|1EDEA3| LDA.b #$60
|1EDEA5| STA.w $0F10,Y

|1EDEA8| LDA.b #$01
|1EDEAA| STA.w $0EB0,Y

|1EDEAD| PHX

|1EDEAE| JSL GetRandomNumber
|1EDEB2| AND.b #$07
|1EDEB4| TAX

|1EDEB5| LDA.w BeeSpeedSlow,X
|1EDEB8| STA.w $0D50,Y

|1EDEBB| JSL GetRandomNumber
|1EDEBF| AND.b #$07
|1EDEC1| TAX

|1EDEC2| LDA.w BeeSpeedSlow,X
|1EDEC5| STA.w $0D40,Y

|1EDEC8| PLX

.no_space
|1EDEC9| RTS

;===================================================================================================
; Seems completely unused?
;===================================================================================================
PlayerBee_Useless:
|1EDECA| db $0A, $14

;===================================================================================================

PlayerBee_Main:
|1EDECC| LDA.b #$01
|1EDECE| STA.w $0BA0,X

|1EDED1| JSR Bee_HandleZ

|1EDED4| JSL SpriteDraw_SingleSmall_long

|1EDED8| JSR Bee_HandleInteractions
|1EDEDB| JSR CheckIfActive_bank1E

|1EDEDE| JSR BuzzBuzz

|1EDEE1| JSR MoveSpriteXY_bank1E

|1EDEE4| TXA
|1EDEE5| EOR.b $1A
|1EDEE7| LSR A
|1EDEE8| AND.b #$01
|1EDEEA| STA.w $0DC0,X

|1EDEED| LDA.w $0EB0,X
|1EDEF0| BEQ .regular_bee

|1EDEF2| JSL SpawnBeeSparkle

; [USELESS] bees never even set this
.regular_bee
|1EDEF6| LDA.w $0DA0,X

|1EDEF9| LDY.w $0EB0,X

|1EDEFC| CMP.w PlayerBee_Useless,Y
|1EDEFF| BCC .what

|1EDF01| LDA.b #$40
|1EDF03| STA.w $0CAA,X

|1EDF06| RTS

.what
|1EDF07| LDA.w $0F10,X
|1EDF0A| BNE .exit

|1EDF0C| JSL CheckDamageFromLink_long
|1EDF10| BEQ .not_caught

|1EDF12| LDA.b #$C6 ; MESSAGE 00C6
|1EDF14| LDY.b #$00
|1EDF16| JSL ShowMessageUnconditional

|1EDF1A| INC.w $0D80,X

|1EDF1D| RTS

;---------------------------------------------------------------------------------------------------

.not_caught
|1EDF1E| TXA
|1EDF1F| EOR.b $1A
|1EDF21| AND.b #$03
|1EDF23| BNE .exit

|1EDF25| JSR PlayerBee_FindTarget
|1EDF28| BCS .target_locked

; How many freaking times are you going to check the frame counter!?
|1EDF2A| TXA
|1EDF2B| EOR.b $1A
|1EDF2D| AND.b #$03
|1EDF2F| BNE .exit

|1EDF31| JSL GetRandomNumber
|1EDF35| AND.b #$03
|1EDF37| TAY

|1EDF38| LDA.b $22
|1EDF3A| CLC
|1EDF3B| ADC.w Bee_BounceBoundaries,Y
|1EDF3E| STA.b $04

|1EDF40| LDA.b $23
|1EDF42| ADC.b #$00
|1EDF44| STA.b $05

|1EDF46| JSL GetRandomNumber
|1EDF4A| AND.b #$03
|1EDF4C| TAY

|1EDF4D| LDA.b $20
|1EDF4F| CLC
|1EDF50| ADC.w Bee_BounceBoundaries,Y
|1EDF53| STA.b $06

|1EDF55| LDA.b $21
|1EDF57| ADC.b #$00
|1EDF59| STA.b $07

;---------------------------------------------------------------------------------------------------

.target_locked
; Seriously! This should have been under the .not_caught label, and that's it.
|1EDF5B| TXA
|1EDF5C| EOR.b $1A
|1EDF5E| AND.b #$07
|1EDF60| BNE .exit

|1EDF62| LDA.b #$20
|1EDF64| JSL ProjectSpriteSpeedTowardsLocation_long

|1EDF68| LDA.b $00
|1EDF6A| STA.w $0D40,X

|1EDF6D| LDA.b $01
|1EDF6F| STA.w $0D50,X
|1EDF72| BPL .enable_h_flip

|1EDF74| LDA.w $0F50,X
|1EDF77| AND.b #$BF
|1EDF79| BRA .set_h_flip

.enable_h_flip
|1EDF7B| LDA.w $0F50,X
|1EDF7E| ORA.b #$40

.set_h_flip
|1EDF80| STA.w $0F50,X

.exit
|1EDF83| RTS

;===================================================================================================
; The axis, not the sound.
;===================================================================================================
Bee_HandleZ:
|1EDF84| LDA.b #$10
|1EDF86| STA.w $0F70,X

|1EDF89| LDA.w $0EB0,X
|1EDF8C| BEQ .exit

|1EDF8E| LDA.w $0F50,X
|1EDF91| AND.b #$F1
|1EDF93| STA.b $00

|1EDF95| LDA.b $1A
|1EDF97| LSR A ; /16
|1EDF98| LSR A
|1EDF99| LSR A
|1EDF9A| LSR A

|1EDF9B| AND.b #$03
|1EDF9D| INC A
|1EDF9E| ASL A

|1EDF9F| ORA.b $00
|1EDFA1| STA.w $0F50,X

.exit
|1EDFA4| RTS

;===================================================================================================

PlayerBee_FindTarget:
|1EDFA5| LDA.b #$0F
|1EDFA7| STA.b $00

|1EDFA9| TXA
|1EDFAA| ASL A
|1EDFAB| ASL A
|1EDFAC| AND.b #$0F
|1EDFAE| TAY

;---------------------------------------------------------------------------------------------------

.next_sprite
|1EDFAF| CPY.w $0FA0
|1EDFB2| BEQ .unsuitable_target

|1EDFB4| LDA.w $0DD0,Y
|1EDFB7| CMP.b #$09
|1EDFB9| BCC .unsuitable_target

|1EDFBB| LDA.w $0F00,Y
|1EDFBE| BNE .unsuitable_target

|1EDFC0| LDA.w $0E40,Y
|1EDFC3| BMI .potential_target

|1EDFC5| LDA.w $0F20,Y
|1EDFC8| CMP.w $0F20,X
|1EDFCB| BNE .unsuitable_target

|1EDFCD| LDA.w $0F60,Y
|1EDFD0| AND.b #$40
|1EDFD2| BNE .unsuitable_target

|1EDFD4| LDA.w $0BA0,Y
|1EDFD7| BEQ .valid_target
|1EDFD9| BRA .unsuitable_target

.potential_target
|1EDFDB| LDA.w $0EB0,X
|1EDFDE| BEQ .unsuitable_target

|1EDFE0| LDA.w $0CD2,Y
|1EDFE3| AND.b #$40
|1EDFE5| BNE .valid_target

;---------------------------------------------------------------------------------------------------

.unsuitable_target
|1EDFE7| DEY

|1EDFE8| TYA
|1EDFE9| AND.b #$0F
|1EDFEB| TAY

|1EDFEC| DEC.b $00
|1EDFEE| BPL .next_sprite

|1EDFF0| CLC

|1EDFF1| RTS

;---------------------------------------------------------------------------------------------------

.valid_target
|1EDFF2| JSL PlayerBee_HoneInOnTarget

|1EDFF6| PHX

|1EDFF7| JSL GetRandomNumber
|1EDFFB| AND.b #$03
|1EDFFD| TAX

|1EDFFE| LDA.w $0D10,Y
|1EE001| CLC
|1EE002| ADC.w Bee_BounceBoundaries,X
|1EE005| STA.b $04

|1EE007| LDA.w $0D30,Y
|1EE00A| ADC.b #$00
|1EE00C| STA.b $05

|1EE00E| JSL GetRandomNumber
|1EE012| AND.b #$03
|1EE014| TAX

|1EE015| LDA.w $0D00,Y
|1EE018| CLC
|1EE019| ADC.w Bee_BounceBoundaries,X
|1EE01C| STA.b $06

|1EE01E| LDA.w $0D20,Y
|1EE021| ADC.b #$00
|1EE023| STA.b $07

|1EE025| PLX

|1EE026| SEC

|1EE027| RTS

;===================================================================================================

BuzzBuzz:
|1EE028| TXA
|1EE029| EOR.b $1A
|1EE02B| AND.b #$1F
|1EE02D| BNE .exit

|1EE02F| LDA.b #$2C ; SFX3.2C
|1EE031| JSL QueueSpriteSFX3WithPan

.exit
|1EE035| RTS

;===================================================================================================

PlaqueMessages:
.pedestal_low
|1EE036| db $B4 ; MESSAGE 00B4
|1EE037| db $B5 ; MESSAGE 00B5

.pedestal_high
|1EE038| db $00
|1EE039| db $00

;---------------------------------------------------------------------------------------------------

.desert_low
|1EE03A| db $BA ; MESSAGE 00BA
|1EE03B| db $BB ; MESSAGE 00BB

.desert_high
|1EE03C| db $00
|1EE03D| db $00

;---------------------------------------------------------------------------------------------------

Sprite_B3_PedestalPlaque:
|1EE03E| JSL GetScreenCoordinates_long
|1EE042| JSR CheckIfActive_bank1E

|1EE045| LDA.w $02E4
|1EE048| BNE .cutscene

|1EE04A| JSL CheckIfLinkIsBusy
|1EE04E| BCC .continue

.cutscene
|1EE050| RTS

.continue
|1EE051| LDA.w $037A
|1EE054| AND.b #$DF
|1EE056| STA.w $037A

|1EE059| LDA.b $8A
|1EE05B| CMP.b #$30 ; OW 30
|1EE05D| BEQ DesertTablet

;===================================================================================================

MasterSwordPedestal:
|1EE05F| LDA.b $2F
|1EE061| BNE .exit

|1EE063| JSL CheckDamageToLink_same_layer_long
|1EE067| BCC .exit

|1EE069| LDA.w $0202
|1EE06C| CMP.b #$0F
|1EE06E| BNE .not_holding_book

|1EE070| LDY.b #$01
|1EE072| BIT.b $F4
|1EE074| BVS .not_pressing_y

.not_holding_book
|1EE076| LDA.b $F6
|1EE078| BPL .exit

|1EE07A| LDY.b #$00

.not_pressing_y
|1EE07C| CPY.b #$01
|1EE07E| BNE .no_book_pose

|1EE080| STZ.w $0300

|1EE083| LDA.b #$20
|1EE085| STA.w $037A

|1EE088| STZ.w $012E

.no_book_pose
|1EE08B| LDA.w PlaqueMessages.pedestal_low,Y
|1EE08E| XBA

|1EE08F| LDA.w PlaqueMessages.pedestal_high,Y
|1EE092| TAY

|1EE093| XBA

|1EE094| JSL ShowMessageUnconditional

.exit
|1EE098| RTS

;===================================================================================================

DesertTablet:
|1EE099| LDA.b $2F
|1EE09B| BNE .exit

|1EE09D| JSL CheckDamageToLink_same_layer_long
|1EE0A1| BCC .exit

|1EE0A3| LDA.w $0202
|1EE0A6| CMP.b #$0F
|1EE0A8| BNE .not_holding_book

|1EE0AA| LDY.b #$01
|1EE0AC| BIT.b $F4
|1EE0AE| BVS .not_pressing_y

.not_holding_book
|1EE0B0| LDA.b $F6
|1EE0B2| BPL .exit

|1EE0B4| LDY.b #$00

.not_pressing_y
|1EE0B6| CPY.b #$01
|1EE0B8| BNE .no_book_pose

|1EE0BA| STZ.w $0300

|1EE0BD| LDA.b #$20
|1EE0BF| STA.w $037A

|1EE0C2| STZ.w $012E

|1EE0C5| JSL InitiateDesertCutscene

.no_book_pose
|1EE0C9| LDA.w PlaqueMessages.desert_low,Y
|1EE0CC| XBA

|1EE0CD| LDA.w PlaqueMessages.desert_high,Y
|1EE0D0| TAY

|1EE0D1| XBA

|1EE0D2| JSL ShowMessageUnconditional

.exit
|1EE0D6| RTS

;===================================================================================================

Sprite_B4_PurpleChest:
|1EE0D7| JSL SpriteDraw_SingleLarge_long
|1EE0DB| JSR CheckIfActive_bank1E

|1EE0DE| LDA.w $0D80,X
|1EE0E1| BNE .follow_link

|1EE0E3| LDA.b #$14 ; MESSAGE 0114
|1EE0E5| LDY.b #$01
|1EE0E7| JSL ShowMessageOnContact
|1EE0EB| BCC .exit

|1EE0ED| LDA.l $7EF3CC
|1EE0F1| BNE .exit

|1EE0F3| INC.w $0D80,X

.exit
|1EE0F6| RTS

;---------------------------------------------------------------------------------------------------

.follow_link
|1EE0F7| STZ.w $0DD0,X

|1EE0FA| LDA.b #$0C ; FOLLOWER 0C
|1EE0FC| STA.l $7EF3CC

|1EE100| PHX
|1EE101| JSL LoadFollowerGraphics
|1EE105| PLX

|1EE106| JSL BecomeFollower

|1EE10A| RTS

;===================================================================================================

Sprite_B5_BombShop:
|1EE10B| LDA.w $0E80,X
|1EE10E| JSL JumpTableLocal
|1EE112| dw BombShop_Clerk
|1EE114| dw BombShop_Bomb
|1EE116| dw BombShop_SuperBomb
|1EE118| dw BombShop_Huff

;===================================================================================================

pool BombShop_Clerk

.message_low
|1EE11A| db $15 ; MESSAGE 0115
|1EE11B| db $16 ; MESSAGE 0116

.message_high
|1EE11C| db $01
|1EE11D| db $01

.anim_step
|1EE11E| db $00, $01, $00, $01, $00, $01, $00, $01

.timer
|1EE126| db 255,  32, 255,  24,  15,  24, 255,  15

endpool

;---------------------------------------------------------------------------------------------------

BombShop_Clerk:
|1EE12E| JSR SpriteDraw_BombShop
|1EE131| JSR CheckIfActive_bank1E

|1EE134| LDA.w $0DF0,X
|1EE137| BNE .continue

|1EE139| LDA.w $0E90,X
|1EE13C| TAY

|1EE13D| INC A
|1EE13E| AND.b #$07
|1EE140| STA.w $0E90,X

|1EE143| LDA.w .timer,Y
|1EE146| STA.w $0DF0,X

|1EE149| LDA.w .anim_step,Y
|1EE14C| STA.w $0DC0,X
|1EE14F| BNE .inhale

|1EE151| LDA.b #$11 ; SFX3.11
|1EE153| JSL QueueSpriteSFX3WithPan

|1EE157| JSR BombShop_ClerkExhalation

|1EE15A| BRA .continue

.inhale
|1EE15C| LDA.b #$12 ; SFX3.12
|1EE15E| JSL QueueSpriteSFX3WithPan

;---------------------------------------------------------------------------------------------------

.continue
|1EE162| LDY.b #$00

; Check for crystals 5 and 6
|1EE164| LDA.l $7EF37A
|1EE168| AND.b #$05
|1EE16A| CMP.b #$05
|1EE16C| BNE .no_super_bomb_message

; Check for dwarf rescue
|1EE16E| LDA.l $7EF3C9
|1EE172| AND.b #$20
|1EE174| BEQ .no_super_bomb_message

|1EE176| LDY.b #$01

.no_super_bomb_message
|1EE178| LDA.w .message_low,Y
|1EE17B| XBA

|1EE17C| LDA.w .message_high,Y
|1EE17F| TAY

|1EE180| XBA

|1EE181| JSL ShowSolicitedMessage
|1EE185| JSL BehaveAsBarrier

|1EE189| RTS

;===================================================================================================

BombShop_Bomb:
|1EE18A| JSR SpriteDraw_BombShop
|1EE18D| JSR CheckIfActive_bank1E
|1EE190| JSL BehaveAsBarrier

|1EE194| JSR ShopItem_CheckForAPress
|1EE197| BCC .exit

|1EE199| LDA.l $7EF370
|1EE19D| PHX

|1EE19E| TAX
|1EE19F| LDA.l CapacityUpgrades.bombs_hex,X

|1EE1A3| PLX

|1EE1A4| CMP.l $7EF343
|1EE1A8| BEQ .no_space

; 100 rupees
|1EE1AA| LDA.b #$64
|1EE1AC| LDY.b #$00
|1EE1AE| JSR ShopItem_HandleCost
|1EE1B1| BCC .too_poor

; only 27 bombs, because you've already got 3 from the bomb item
|1EE1B3| LDA.b #$1B
|1EE1B5| STA.l $7EF375

|1EE1B9| STZ.w $0DD0,X

|1EE1BC| LDA.b #$17 ; MESSAGE 0117
|1EE1BE| LDY.b #$01
|1EE1C0| JSL ShowMessageUnconditional

|1EE1C4| LDY.b #$28 ; ITEMGET 28
|1EE1C6| JSR ShopItem_HandleReceipt

.exit
|1EE1C9| RTS

;---------------------------------------------------------------------------------------------------

.no_space
|1EE1CA| LDA.b #$6C ; MESSAGE 016C
|1EE1CC| LDY.b #$01
|1EE1CE| JSL ShowMessageUnconditional

|1EE1D2| JSR ShopItem_PlayBeep

|1EE1D5| RTS

.too_poor
|1EE1D6| JMP.w ShopItem_GiveFailureMessage

;===================================================================================================

BombShop_SuperBomb:
|1EE1D9| JSR SpriteDraw_BombShop
|1EE1DC| JSR CheckIfActive_bank1E
|1EE1DF| JSL BehaveAsBarrier
|1EE1E3| JSR ShopItem_CheckForAPress
|1EE1E6| BCC .exit

; 100 rupees
|1EE1E8| LDA.b #$64
|1EE1EA| LDY.b #$00
|1EE1EC| JSR ShopItem_HandleCost
|1EE1EF| BCC .too_poor

|1EE1F1| LDA.b #$0D ; FOLLOWER 0D
|1EE1F3| STA.l $7EF3CC

|1EE1F7| PHX
|1EE1F8| JSL LoadFollowerGraphics
|1EE1FC| PLX

|1EE1FD| JSL BecomeFollower

|1EE201| STZ.w $0DD0,X

|1EE204| LDA.b #$18 ; MESSAGE 0118
|1EE206| LDY.b #$01
|1EE208| JSL ShowMessageUnconditional

.exit
|1EE20C| RTS

;---------------------------------------------------------------------------------------------------

.too_poor
|1EE20D| JMP.w ShopItem_GiveFailureMessage

;===================================================================================================

pool BombShop_Huff

.prop
|1EE210| db $04, $44, $C4, $84

endpool

;---------------------------------------------------------------------------------------------------

BombShop_Huff:
|1EE214| LDA.b #$04
|1EE216| JSL AllocateOAMInRegionC

|1EE21A| JSL SpriteDraw_SingleSmall_long

|1EE21E| JSR CheckIfActive_bank1E

|1EE221| LDA.w $0F50,X
|1EE224| AND.b #$30
|1EE226| STA.w $0F50,X

|1EE229| LDA.b $1A
|1EE22B| LSR A
|1EE22C| LSR A
|1EE22D| AND.b #$03
|1EE22F| TAY

; Why wasn't this done with the above?
|1EE230| LDA.w $0F50,X
|1EE233| ORA.w .prop,Y
|1EE236| STA.w $0F50,X

|1EE239| INC.w $0F80,X

|1EE23C| JSR MoveSpriteZ_bank1E

|1EE23F| LDA.w $0DF0,X
|1EE242| BNE .stick_around_for_now

|1EE244| STZ.w $0DD0,X

.stick_around_for_now
|1EE247| LSR A
|1EE248| LSR A
|1EE249| LSR A
|1EE24A| AND.b #$03
|1EE24C| STA.w $0DC0,X

|1EE24F| RTS

;===================================================================================================

BombShop_ClerkExhalation:
|1EE250| LDA.b #$B5 ; SPRITE B5
|1EE252| JSL SpawnSpriteDynamically

|1EE256| LDA.b #$03
|1EE258| STA.w $0E80,Y
|1EE25B| STA.w $0BA0,Y

|1EE25E| LDA.b $00
|1EE260| CLC
|1EE261| ADC.b #$04
|1EE263| STA.w $0D10,Y

|1EE266| LDA.b $01
|1EE268| STA.w $0D30,Y

|1EE26B| LDA.b $02
|1EE26D| CLC
|1EE26E| ADC.b #$10
|1EE270| STA.w $0D00,Y

|1EE273| LDA.b $03
|1EE275| STA.w $0D20,Y

|1EE278| LDA.b #$04
|1EE27A| STA.w $0F70,Y

|1EE27D| LDA.b #$F4
|1EE27F| STA.w $0F80,Y

|1EE282| LDA.b #$17
|1EE284| STA.w $0DF0,Y

|1EE287| LDA.w $0E60,Y
|1EE28A| AND.b #$EE
|1EE28C| STA.w $0E60,Y

|1EE28F| RTS

;===================================================================================================

pool SpriteDraw_BombShop

.oam_groups
; clerk
|1EE290| dw   0,   0 : db $48, $0A, $00, $02
|1EE298| dw   0,   0 : db $4C, $0A, $00, $02

; bombs
|1EE2A0| dw   0,   0 : db $C2, $04, $00, $02
|1EE2A8| dw   0,   0 : db $C2, $04, $00, $02

; superbomb
|1EE2B0| dw   0,   0 : db $4E, $08, $00, $02
|1EE2B8| dw   0,   0 : db $4E, $08, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_BombShop:
|1EE2C0| LDA.b #$01
|1EE2C2| STA.b $06
|1EE2C4| STZ.b $07

|1EE2C6| LDA.w $0E80,X
|1EE2C9| ASL A

|1EE2CA| ADC.w $0DC0,X
|1EE2CD| ASL A
|1EE2CE| ASL A
|1EE2CF| ASL A

|1EE2D0| ADC.b #<.oam_groups
|1EE2D2| STA.b $08

|1EE2D4| LDA.b #>.oam_groups
|1EE2D6| ADC.b #$00
|1EE2D8| STA.b $09

|1EE2DA| JSL TabulatedSpriteDraw.player_deferred
|1EE2DE| JSL DrawSpriteShadow_long

|1EE2E2| RTS

;===================================================================================================

pool Kiki_WalkOnRoof

.speed_x ; bleeds into next
|1EE2E3| db   0,   0

.speed_y
|1EE2E5| db  -9,   9,   0,   0

endpool

;===================================================================================================

Sprite_B6_Kiki:
|1EE2E9| LDA.w $0E80,X
|1EE2EC| JSL JumpTableLocal
|1EE2F0| dw Kiki_Dormant
|1EE2F2| dw Kiki_OfferEntranceService
|1EE2F4| dw Kiki_OfferInitialService
|1EE2F6| dw Kiki_Flee

;===================================================================================================

Kiki_Flee:
|1EE2F8| JSR SpriteDraw_Kiki
|1EE2FB| JSR CheckIfActive_bank1E

|1EE2FE| LDA.w $0F70,X
|1EE301| BNE .dont_flag

|1EE303| REP #$20

|1EE305| LDA.w $0FD8
|1EE308| SEC
|1EE309| SBC.w #$0C98

|1EE30C| CMP.w #$00D0
|1EE30F| BCS .dont_flag

|1EE311| LDA.w $0FDA
|1EE314| SEC
|1EE315| SBC.w #$06A5

|1EE318| CMP.w #$00D0
|1EE31B| BCS .dont_flag

|1EE31D| LDA.w #$FFFF
|1EE320| STA.b $01

.dont_flag
|1EE322| SEP #$30

; TODO ??
; analyze
|1EE324| LDA.b $01
|1EE326| ORA.b $03
|1EE328| BEQ .stay

|1EE32A| STZ.w $0DD0,X

.stay
|1EE32D| DEC.w $0F80,X
|1EE330| DEC.w $0F80,X

|1EE333| JSR MoveSpriteXYZ_bank1E

|1EE336| LDA.w $0F70,X
|1EE339| BPL .no_bounce

|1EE33B| STZ.w $0F70,X

|1EE33E| JSL GetRandomNumber
|1EE342| AND.b #$0F
|1EE344| ORA.b #$10
|1EE346| STA.w $0F80,X

.no_bounce
|1EE349| LDA.b #$F5
|1EE34B| STA.b $04

|1EE34D| LDA.b #$0C
|1EE34F| STA.b $05

|1EE351| LDA.b #$FE
|1EE353| STA.b $06

|1EE355| LDA.b #$06
|1EE357| STA.b $07

|1EE359| LDA.b #$10
|1EE35B| JSL ProjectSpriteSpeedTowardsLocation_long

|1EE35F| LDA.b $00
|1EE361| ASL A
|1EE362| STA.w $0D40,X

|1EE365| LDA.b $01
|1EE367| ASL A
|1EE368| STA.w $0D50,X

|1EE36B| LDA.w $02F2
|1EE36E| AND.b #$FC
|1EE370| STA.w $02F2

|1EE373| LDA.b $00
|1EE375| BPL .positive_x

|1EE377| EOR.b #$FF
|1EE379| INC A
|1EE37A| STA.b $00

.positive_x
|1EE37C| LDA.b $01
|1EE37E| BPL .positive_y

|1EE380| EOR.b #$FF
|1EE382| INC A

.positive_y
|1EE383| CMP.b $00
|1EE385| BCC .at_max_x

|1EE387| LDA.w $0D50,X
|1EE38A| ROL A
|1EE38B| ROL A
|1EE38C| AND.b #$01
|1EE38E| EOR.b #$03
|1EE390| BRA .continue

.at_max_x
|1EE392| LDA.w $0D40,X
|1EE395| ROL A
|1EE396| ROL A
|1EE397| AND.b #$01
|1EE399| EOR.b #$01

.continue
|1EE39B| STA.w $0DE0,X

|1EE39E| LDA.b $1A
|1EE3A0| LSR A
|1EE3A1| LSR A
|1EE3A2| LSR A
|1EE3A3| AND.b #$01
|1EE3A5| STA.w $0DC0,X

|1EE3A8| RTS

;===================================================================================================

Kiki_OfferInitialService:
|1EE3A9| LDA.w $0D80,X
|1EE3AC| DEC A
|1EE3AD| DEC A
|1EE3AE| BMI .invisible

|1EE3B0| JSR SpriteDraw_Kiki

.invisible
|1EE3B3| JSR CheckIfActive_bank1E
|1EE3B6| JSR MoveSpriteXYZ_bank1E

|1EE3B9| DEC.w $0F80,X

|1EE3BC| LDA.w $0F70,X
|1EE3BF| BPL .airborne

|1EE3C1| STZ.w $0F80,X
|1EE3C4| STZ.w $0F70,X

.airborne
|1EE3C7| LDA.b $1A
|1EE3C9| LSR A
|1EE3CA| LSR A
|1EE3CB| LSR A
|1EE3CC| AND.b #$01
|1EE3CE| STA.w $0DC0,X

|1EE3D1| LDA.w $0D80,X
|1EE3D4| JSL JumpTableLocal
|1EE3D8| dw Kiki_OfferToFollow
|1EE3DA| dw Kiki_OfferToFollowTransaction
|1EE3DC| dw Kiki_MoveTowardsLink
|1EE3DE| dw Kiki_WaitABit
|1EE3E0| dw Kiki_EndIntroductionCutscene

;===================================================================================================

Kiki_OfferToFollow:
|1EE3E2| LDA.b #$1C ; MESSAGE 011C
|1EE3E4| LDY.b #$01
|1EE3E6| JSL ShowMessageUnconditional

|1EE3EA| INC.w $0D80,X

|1EE3ED| RTS

;===================================================================================================

Kiki_OfferToFollowTransaction:
|1EE3EE| LDA.w $1CE8
|1EE3F1| BNE .offer_rejected

; 10 rupees
|1EE3F3| LDA.b #$0A
|1EE3F5| LDY.b #$00
|1EE3F7| JSR ShopItem_HandleCost
|1EE3FA| BCC .offer_rejected

|1EE3FC| LDA.b #$1D ; MESSAGE 011D
|1EE3FE| LDY.b #$01
|1EE400| JSL ShowMessageUnconditional

|1EE404| LDA.w $02F2
|1EE407| ORA.b #$03
|1EE409| STA.w $02F2

|1EE40C| STZ.w $0DD0,X

|1EE40F| RTS

;---------------------------------------------------------------------------------------------------

.offer_rejected
|1EE410| LDA.b #$1E ; MESSAGE 011E
|1EE412| LDY.b #$01
|1EE414| JSL ShowMessageUnconditional

|1EE418| LDA.w $02F2
|1EE41B| AND.b #$FC
|1EE41D| STA.w $02F2

|1EE420| LDA.b #$00
|1EE422| STA.l $7EF3CC

|1EE426| INC.w $0D80,X
|1EE429| INC.w $02E4

|1EE42C| RTS

;===================================================================================================

Kiki_MoveTowardsLink:
|1EE42D| INC.w $0D80,X

|1EE430| LDA.b #$F5
|1EE432| STA.b $04

|1EE434| LDA.b #$0C
|1EE436| STA.b $05

|1EE438| LDA.b #$FE
|1EE43A| STA.b $06

|1EE43C| LDA.b #$06
|1EE43E| STA.b $07

|1EE440| LDA.b #$09
|1EE442| JSL ProjectSpriteSpeedTowardsLocation_long

|1EE446| LDA.b $00
|1EE448| STA.w $0D40,X

|1EE44B| LDA.b $01
|1EE44D| STA.w $0D50,X

|1EE450| ASL A
|1EE451| ROL A
|1EE452| AND.b #$01
|1EE454| EOR.b #$03
|1EE456| STA.w $0DE0,X

|1EE459| LDA.b #$20
|1EE45B| STA.w $0DF0,X

|1EE45E| RTS

;===================================================================================================

Kiki_WaitABit:
|1EE45F| LDA.w $0DF0,X
|1EE462| BNE .exit

|1EE464| INC.w $0D80,X

|1EE467| LDA.b #$10
|1EE469| STA.w $0F80,X
|1EE46C| STA.w $0DF0,X

.exit
|1EE46F| RTS

;===================================================================================================

Kiki_EndIntroductionCutscene:
|1EE470| LDA.w $0DF0,X
|1EE473| BNE .exit

|1EE475| LDA.w $0F70,X
|1EE478| BNE .exit

|1EE47A| STZ.w $0DD0,X
|1EE47D| STZ.w $02E4

.exit
|1EE480| RTS

;===================================================================================================

Kiki_Dormant:
|1EE481| JSL GetScreenCoordinates_long
|1EE485| JSR CheckIfActive_bank1E

|1EE488| LDA.w $02E0
|1EE48B| BNE .exit

|1EE48D| LDA.w $037B
|1EE490| ORA.w $031F
|1EE493| BNE .exit

|1EE495| LDA.l $7EF3CC
|1EE499| CMP.b #$0A ; FOLLOWER 0A
|1EE49B| BEQ .exit

|1EE49D| PHX

|1EE49E| LDX.b $8A
|1EE4A0| LDA.l $7EF280,X

|1EE4A4| PLX

|1EE4A5| AND.b #$20
|1EE4A7| BNE .exit

|1EE4A9| JSL CheckDamageToLink_same_layer_long
|1EE4AD| BCC .exit

|1EE4AF| LDA.b #$0A ; FOLLOWER 0A
|1EE4B1| STA.l $7EF3CC

|1EE4B5| PHX

|1EE4B6| STZ.w $02F9

|1EE4B9| JSL LoadFollowerGraphics
|1EE4BD| JSL InitializeFollower

|1EE4C1| PLX

.exit
|1EE4C2| RTS

;===================================================================================================

Kiki_OfferEntranceService:
|1EE4C3| JSR SpriteDraw_Kiki
|1EE4C6| JSR CheckIfActive_bank1E
|1EE4C9| JSR MoveSpriteXYZ_bank1E

|1EE4CC| DEC.w $0F80,X

|1EE4CF| LDA.w $0F70,X
|1EE4D2| BPL .airborne

|1EE4D4| STZ.w $0F80,X
|1EE4D7| STZ.w $0F70,X

.airborne
|1EE4DA| LDA.w $0D80,X
|1EE4DD| JSL JumpTableLocal
|1EE4E1| dw Kiki_OfferToOpenPOD
|1EE4E3| dw Kiki_VerifyPurchase
|1EE4E5| dw Kiki_HopToSpot
|1EE4E7| dw Kiki_DartHead

|1EE4E9| dw Kiki_HopToSpot
|1EE4EB| dw Kiki_DartHead
|1EE4ED| dw Kiki_HopToSpot
|1EE4EF| dw Kiki_WalkOnRoof

|1EE4F1| dw Kiki_ReadyButtonPress
|1EE4F3| dw Kiki_SlamButton
|1EE4F5| dw Kiki_IdleOnRoof

;===================================================================================================

Kiki_OfferToOpenPOD:
|1EE4F7| LDA.b #$19 ; MESSAGE 0119
|1EE4F9| LDY.b #$01
|1EE4FB| JSL ShowMessageUnconditional

|1EE4FF| INC.w $0D80,X

|1EE502| RTS

;===================================================================================================

Kiki_VerifyPurchase:
|1EE503| LDA.w $1CE8
|1EE506| BEQ .made_the_sale

.too_poor
|1EE508| LDA.b #$1A ; MESSAGE 011A
|1EE50A| LDY.b #$01
|1EE50C| JSL ShowMessageUnconditional

|1EE510| LDA.b #$03
|1EE512| STA.w $0E80,X

|1EE515| RTS

.made_the_sale
; 100 rupees
|1EE516| LDA.b #$64
|1EE518| LDY.b #$00
|1EE51A| JSR ShopItem_HandleCost
|1EE51D| BCC .too_poor

|1EE51F| LDA.b #$1B ; MESSAGE 011B
|1EE521| LDY.b #$01
|1EE523| JSL ShowMessageUnconditional

|1EE527| INC.w $02E4

|1EE52A| INC.w $0D80,X

|1EE52D| STZ.w $0DE0,X

|1EE530| RTS

;===================================================================================================

pool Kiki_DartHead

.next_jump_speed
|1EE531| db  32,  28

endpool

;---------------------------------------------------------------------------------------------------

Kiki_DartHead:
|1EE533| LDA.w $0E00,X
|1EE536| BNE .delay

|1EE538| LDA.w $0D80,X
|1EE53B| INC.w $0D80,X

|1EE53E| LSR A
|1EE53F| AND.b #$01
|1EE541| TAY

|1EE542| LDA.w .next_jump_speed,Y
|1EE545| STA.w $0F80,X

|1EE548| LDA.b #$20 ; SFX2.20
|1EE54A| JSL QueueSpriteSFX2WithPan

|1EE54E| LDA.w $0D80,X
|1EE551| LSR A
|1EE552| AND.b #$01
|1EE554| ORA.b #$04
|1EE556| STA.w $0DE0,X

|1EE559| RTS

;---------------------------------------------------------------------------------------------------

.delay
|1EE55A| LDA.w $0D80,X
|1EE55D| LSR A
|1EE55E| AND.b #$01
|1EE560| ORA.b #$06
|1EE562| STA.w $0DE0,X

|1EE565| LDA.b $1A
|1EE567| LSR A
|1EE568| LSR A
|1EE569| LSR A
|1EE56A| AND.b #$01
|1EE56C| STA.w $0DC0,X

|1EE56F| RTS

;===================================================================================================

pool Kiki_HopToSpot

.target_y
|1EE570| dw $0661
|1EE572| dw $064C
|1EE574| dw $0624

.target_x
|1EE576| dw $0F4F
|1EE578| dw $0F70
|1EE57A| dw $0F5D

endpool

;---------------------------------------------------------------------------------------------------

Kiki_HopToSpot:
|1EE57C| LDA.b $1A
|1EE57E| LSR A
|1EE57F| LSR A
|1EE580| LSR A
|1EE581| AND.b #$01
|1EE583| STA.w $0DC0,X

|1EE586| LDA.w $0D80,X
|1EE589| SEC
|1EE58A| SBC.b #$02
|1EE58C| TAY

|1EE58D| LDA.w .target_x+0,Y
|1EE590| SEC
|1EE591| SBC.w $0D10,X
|1EE594| CLC
|1EE595| ADC.b #$02

|1EE597| CMP.b #$04
|1EE599| BCS .not_at_target

|1EE59B| LDA.w .target_y+0,Y
|1EE59E| SEC
|1EE59F| SBC.w $0D00,X
|1EE5A2| CLC
|1EE5A3| ADC.b #$02

|1EE5A5| CMP.b #$04
|1EE5A7| BCS .not_at_target

|1EE5A9| INC.w $0D80,X

|1EE5AC| STZ.w $0D40,X
|1EE5AF| STZ.w $0D50,X

|1EE5B2| LDA.b #$20
|1EE5B4| STA.w $0E00,X

|1EE5B7| LDA.b #$21 ; SFX2.21
|1EE5B9| JSL QueueSpriteSFX2WithPan

|1EE5BD| RTS

;---------------------------------------------------------------------------------------------------

.not_at_target
|1EE5BE| LDA.w .target_x+0,Y
|1EE5C1| STA.b $04

|1EE5C3| LDA.w .target_x+1,Y
|1EE5C6| STA.b $05

|1EE5C8| LDA.w .target_y+0,Y
|1EE5CB| STA.b $06

|1EE5CD| LDA.w .target_y+1,Y
|1EE5D0| STA.b $07

|1EE5D2| LDA.b #$09
|1EE5D4| JSL ProjectSpriteSpeedTowardsLocation_long

|1EE5D8| LDA.b $00
|1EE5DA| STA.w $0D40,X

|1EE5DD| LDA.b $01
|1EE5DF| STA.w $0D50,X

|1EE5E2| RTS

;===================================================================================================

pool Kiki_WalkOnRoof

.step
|1EE5E3| db $02, $01, $FF

.timer
|1EE5E6| db  82,   0

endpool

;---------------------------------------------------------------------------------------------------

Kiki_WalkOnRoof:
|1EE5E8| LDA.b $1A
|1EE5EA| LSR A
|1EE5EB| LSR A
|1EE5EC| LSR A
|1EE5ED| AND.b #$01
|1EE5EF| STA.w $0DC0,X

|1EE5F2| LDA.w $0F70,X
|1EE5F5| BNE .exit

|1EE5F7| LDA.w $0DF0,X
|1EE5FA| BNE .exit

|1EE5FC| LDA.w $0D90,X
|1EE5FF| TAY

|1EE600| INC.w $0D90,X

|1EE603| LDA.w .step,Y
|1EE606| BMI .on_roof

|1EE608| PHA

|1EE609| STA.w $0DE0,X

|1EE60C| LDA.w .timer,Y
|1EE60F| STA.w $0DF0,X

; Why not PLY?
; 6502 code?
|1EE612| PLA
|1EE613| TAY

|1EE614| LDA.w .speed_x,Y
|1EE617| STA.w $0D50,X

|1EE61A| LDA.w .speed_y,Y
|1EE61D| STA.w $0D40,X

.exit
|1EE620| RTS

;---------------------------------------------------------------------------------------------------

.on_roof
|1EE621| INC.w $0D80,X

|1EE624| STZ.w $0D50,X
|1EE627| STZ.w $0D40,X

|1EE62A| LDA.b #$01
|1EE62C| STA.w $04C6

|1EE62F| STZ.b $B0
|1EE631| STZ.b $C8

|1EE633| STZ.w $0DE0,X

|1EE636| STZ.w $02E4

|1EE639| RTS

;===================================================================================================

Kiki_ReadyButtonPress:
|1EE63A| LDA.b #$08
|1EE63C| STA.w $0DE0,X

|1EE63F| STZ.w $0DC0,X

|1EE642| JSL GetRandomNumber
|1EE646| AND.b #$0F
|1EE648| ADC.b #$10
|1EE64A| STA.w $0F80,X

|1EE64D| INC.w $0D80,X

|1EE650| RTS

;===================================================================================================

Kiki_SlamButton:
|1EE651| LDA.w $0F80,X
|1EE654| BPL Kiki_IdleOnRoof

|1EE656| LDA.w $0F70,X
|1EE659| BNE Kiki_IdleOnRoof

|1EE65B| INC.w $0D80,X

|1EE65E| LDA.b #$25 ; SFX3.25
|1EE660| JSL QueueSpriteSFX3WithPan

;===================================================================================================

Kiki_IdleOnRoof:
|1EE664| RTS

;===================================================================================================

Kiki_RevertToSprite:
|1EE665| JSR Kiki_SpawnHandlerMonke

|1EE668| LDA.b #$01
|1EE66A| STA.w $0E80,Y

|1EE66D| LDA.b #$00
|1EE66F| STA.l $7EF3CC

|1EE673| RTL

;===================================================================================================

Kiki_SpawnHandlerMonke:
|1EE674| PHA

|1EE675| LDA.b #$B6 ; SPRITE B6
|1EE677| JSL SpawnSpriteDynamically
|1EE67B| BMI .no_space

|1EE67D| PLA
|1EE67E| PHX
|1EE67F| TAX

|1EE680| LDA.w $1A64,X
|1EE683| AND.b #$03
|1EE685| STA.w $0EB0,Y
|1EE688| STA.w $0DE0,Y

|1EE68B| LDA.w $1A00,X
|1EE68E| CLC
|1EE68F| ADC.b #$02
|1EE691| STA.w $0D00,Y

|1EE694| LDA.w $1A14,X
|1EE697| ADC.b #$00
|1EE699| STA.w $0D20,Y

|1EE69C| LDA.w $1A28,X
|1EE69F| CLC
|1EE6A0| ADC.b #$02
|1EE6A2| STA.w $0D10,Y

|1EE6A5| LDA.w $1A3C,X
|1EE6A8| ADC.b #$00
|1EE6AA| STA.w $0D30,Y

|1EE6AD| LDA.b $EE ; [USELESS]
|1EE6AF| STA.w $0F20,Y

|1EE6B2| LDA.b #$01
|1EE6B4| STA.w $0BA0,Y

|1EE6B7| INC A
|1EE6B8| STA.w $0F20,Y

|1EE6BB| STZ.b $5E

|1EE6BD| PLX

|1EE6BE| RTS

.no_space
|1EE6BF| PLA

|1EE6C0| RTS

;===================================================================================================

Kiki_SpawnHandler_A:
|1EE6C1| JSR Kiki_SpawnHandlerMonke

|1EE6C4| LDA.b #$02
|1EE6C6| STA.w $0E80,Y

|1EE6C9| RTL

;===================================================================================================

Kiki_SpawnHandler_B:
|1EE6CA| JSR Kiki_SpawnHandlerMonke

|1EE6CD| LDA.b #$01
|1EE6CF| STA.w $0F70,Y

|1EE6D2| LDA.b #$10
|1EE6D4| STA.w $0F80,Y

|1EE6D7| LDA.b #$03
|1EE6D9| STA.w $0E80,Y

|1EE6DC| LDA.b #$00
|1EE6DE| STA.l $7EF3CC

|1EE6E2| RTL

;===================================================================================================

pool SpriteDraw_Kiki

.gfx_offset
|1EE6E3| db $20, $C0
|1EE6E5| db $20, $C0
|1EE6E7| db $00, $A0
|1EE6E9| db $00, $A0
|1EE6EB| db $40, $80
|1EE6ED| db $40, $60
|1EE6EF| db $40, $80
|1EE6F1| db $40, $60

;---------------------------------------------------------------------------------------------------

.oam_groups_a
; group00
|1EE6F3| dw   0,  -6 : db $20, $00, $00, $02
|1EE6FB| dw   0,   0 : db $22, $00, $00, $02

; group01
|1EE703| dw   0,  -6 : db $20, $00, $00, $02
|1EE70B| dw   0,   0 : db $22, $40, $00, $02

; group02
|1EE713| dw   0,  -6 : db $20, $00, $00, $02
|1EE71B| dw   0,   0 : db $22, $00, $00, $02

; group03
|1EE723| dw   0,  -6 : db $20, $00, $00, $02
|1EE72B| dw   0,   0 : db $22, $40, $00, $02

; group04
|1EE733| dw  -1,  -6 : db $20, $00, $00, $02
|1EE73B| dw   0,   0 : db $22, $00, $00, $02

; group05
|1EE743| dw  -1,  -6 : db $20, $00, $00, $02
|1EE74B| dw   0,   0 : db $22, $00, $00, $02

; group06
|1EE753| dw   1,  -6 : db $20, $40, $00, $02
|1EE75B| dw   0,   0 : db $22, $40, $00, $02

; group07
|1EE763| dw   1,  -6 : db $20, $40, $00, $02
|1EE76B| dw   0,   0 : db $22, $40, $00, $02

; group08
|1EE773| dw   0,  -6 : db $CE, $01, $00, $02
|1EE77B| dw   0,   0 : db $EE, $01, $00, $02

; group09
|1EE783| dw   0,  -6 : db $CE, $01, $00, $02
|1EE78B| dw   0,   0 : db $EE, $01, $00, $02

; group0A
|1EE793| dw   0,  -6 : db $CE, $41, $00, $02
|1EE79B| dw   0,   0 : db $EE, $41, $00, $02

; group0B
|1EE7A3| dw   0,  -6 : db $CE, $41, $00, $02
|1EE7AB| dw   0,   0 : db $EE, $41, $00, $02

; group0C
|1EE7B3| dw  -1,  -6 : db $CE, $01, $00, $02
|1EE7BB| dw   0,   0 : db $EC, $01, $00, $02

; group0D
|1EE7C3| dw  -1,  -6 : db $CE, $41, $00, $02
|1EE7CB| dw   0,   0 : db $EC, $01, $00, $02

; group0E
|1EE7D3| dw   1,  -6 : db $CE, $41, $00, $02
|1EE7DB| dw   0,   0 : db $EC, $41, $00, $02

; group0F
|1EE7E3| dw   1,  -6 : db $CE, $01, $00, $02
|1EE7EB| dw   0,   0 : db $EC, $41, $00, $02

;---------------------------------------------------------------------------------------------------

.oam_groups_b
|1EE7F3| dw   0,  -6 : db $CA, $01, $00, $00
|1EE7FB| dw   8,  -6 : db $CA, $41, $00, $00
|1EE803| dw   0,   2 : db $DA, $01, $00, $00
|1EE80B| dw   8,   2 : db $DA, $41, $00, $00
|1EE813| dw   0,  10 : db $CB, $01, $00, $00
|1EE81B| dw   8,  10 : db $CB, $41, $00, $00

|1EE823| dw   0,  -6 : db $DB, $01, $00, $00
|1EE82B| dw   8,  -6 : db $DB, $41, $00, $00
|1EE833| dw   0,   2 : db $CC, $01, $00, $00
|1EE83B| dw   8,   2 : db $CC, $41, $00, $00
|1EE843| dw   0,  10 : db $DC, $01, $00, $00
|1EE84B| dw   8,  10 : db $DD, $41, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Kiki:
|1EE853| LDA.w $0DE0,X
|1EE856| CMP.b #$08
|1EE858| BCS .use_set_2

|1EE85A| LDA.w $0DE0,X
|1EE85D| ASL A
|1EE85E| ADC.w $0DC0,X
|1EE861| ASL A
|1EE862| TAY

|1EE863| LDA.w .gfx_offset+0,Y
|1EE866| STA.w $0AE8

|1EE869| LDA.w .gfx_offset+1,Y
|1EE86C| STA.w $0AEA

|1EE86F| TYA
|1EE870| ASL A
|1EE871| ASL A
|1EE872| ASL A
|1EE873| ADC.b #<.oam_groups_a
|1EE875| STA.b $08

|1EE877| LDA.b #>.oam_groups_a
|1EE879| ADC.b #$00
|1EE87B| STA.b $09

|1EE87D| LDA.b #$02
|1EE87F| JSR TabulatedSpriteDraw_bank1E

|1EE882| LDA.w $0F00,X
|1EE885| BNE .exit_a

|1EE887| JSL DrawSpriteShadow_long

.exit_a
|1EE88B| RTS

;---------------------------------------------------------------------------------------------------

.use_set_2
|1EE88C| LDA.w $0DC0,X
|1EE88F| ASL A

|1EE890| ADC.w $0DC0,X
|1EE893| ASL A
|1EE894| ASL A
|1EE895| ASL A
|1EE896| ASL A

|1EE897| ADC.b #<.oam_groups_b
|1EE899| STA.b $08

|1EE89B| LDA.b #>.oam_groups_b
|1EE89D| ADC.b #$00
|1EE89F| STA.b $09

|1EE8A1| LDA.b #$06
|1EE8A3| JSR TabulatedSpriteDraw_bank1E

|1EE8A6| LDA.w $0F00,X
|1EE8A9| BNE .exit_b

|1EE8AB| JSL DrawSpriteShadow_long

.exit_b
|1EE8AF| RTS

;===================================================================================================

Sprite_B7_BlindMaiden:
|1EE8B0| JSL SpriteDraw_Maiden
|1EE8B4| JSR CheckIfActive_bank1E
|1EE8B7| JSL TrackBodyToHead

|1EE8BB| JSR GetDirectionTowardsLink_bank1E
|1EE8BE| TYA
|1EE8BF| EOR.b #$03
|1EE8C1| STA.w $0EB0,X

|1EE8C4| LDA.w $0D80,X
|1EE8C7| BNE .become_follower

|1EE8C9| LDA.b #$20 ; MESSAGE 0120
|1EE8CB| LDY.b #$01
|1EE8CD| JSL ShowMessageOnContact
|1EE8D1| BCC .exit

|1EE8D3| INC.w $0D80,X

.exit
|1EE8D6| RTS

;---------------------------------------------------------------------------------------------------

.become_follower
|1EE8D7| STZ.w $0DD0,X

|1EE8DA| LDA.b #$06 ; FOLLOWER 06
|1EE8DC| STA.l $7EF3CC

|1EE8E0| PHX
|1EE8E1| JSL LoadFollowerGraphics
|1EE8E5| PLX

|1EE8E6| JSL BecomeFollower

|1EE8EA| RTS

;===================================================================================================

SpritePrep_OldMan:
|1EE8EB| PHB
|1EE8EC| PHK
|1EE8ED| PLB

|1EE8EE| JSR .main

|1EE8F1| PLB

|1EE8F2| RTL

;---------------------------------------------------------------------------------------------------

.main
|1EE8F3| INC.w $0BA0,X

|1EE8F6| LDA.b $A0
|1EE8F8| CMP.b #$E4 ; ROOM 00E4
|1EE8FA| BNE .not_home

|1EE8FC| LDA.b #$02
|1EE8FE| STA.w $0E80,X

|1EE901| RTS

.not_home
|1EE902| LDA.l $7EF3CC
|1EE906| CMP.b #$00 ; useless
|1EE908| BNE .dont_spawn

|1EE90A| LDA.l $7EF353
|1EE90E| CMP.b #$02
|1EE910| BNE .spawn

|1EE912| STZ.w $0DD0,X

.spawn
|1EE915| LDA.b #$04 ; FOLLOWER 04
|1EE917| STA.l $7EF3CC

|1EE91B| PHX
|1EE91C| JSL LoadFollowerGraphics
|1EE920| PLX

|1EE921| LDA.b #$00
|1EE923| STA.l $7EF3CC

|1EE927| RTS

;---------------------------------------------------------------------------------------------------

.dont_spawn
|1EE928| STZ.w $0DD0,X

|1EE92B| PHX ; useless honestly
|1EE92C| JSL LoadFollowerGraphics
|1EE930| PLX

|1EE931| RTS

;===================================================================================================

OldMan_RevertToSprite:
|1EE932| PHA

|1EE933| LDA.b #$AD ; SPRITE AD
|1EE935| JSL SpawnSpriteDynamically

|1EE939| PLA

|1EE93A| PHX

|1EE93B| TAX

|1EE93C| LDA.w $1A64,X
|1EE93F| AND.b #$03
|1EE941| STA.w $0EB0,Y
|1EE944| STA.w $0DE0,Y

|1EE947| LDA.w $1A00,X
|1EE94A| CLC
|1EE94B| ADC.b #$02
|1EE94D| STA.w $0D00,Y

|1EE950| LDA.w $1A14,X
|1EE953| ADC.b #$00
|1EE955| STA.w $0D20,Y

|1EE958| LDA.w $1A28,X
|1EE95B| CLC
|1EE95C| ADC.b #$02
|1EE95E| STA.w $0D10,Y

|1EE961| LDA.w $1A3C,X
|1EE964| ADC.b #$00
|1EE966| STA.w $0D30,Y

|1EE969| LDA.b $EE
|1EE96B| STA.w $0F20,Y

|1EE96E| LDA.b #$01
|1EE970| STA.w $0BA0,Y
|1EE973| STA.w $0E80,Y

|1EE976| JSR OldMan_EnableCutscene

|1EE979| PLX

|1EE97A| LDA.b #$00
|1EE97C| STA.l $7EF3CC

|1EE980| STZ.b $5E

|1EE982| RTL

;===================================================================================================

OldMan_EnableCutscene:
|1EE983| LDA.b #$01
|1EE985| STA.w $02E4
|1EE988| STA.w $037B

|1EE98B| RTS

;===================================================================================================

Sprite_AD_OldMan:
|1EE98C| JSL SpriteDraw_OldMan
|1EE990| JSR CheckIfActive_bank1E

|1EE993| LDA.w $0E80,X
|1EE996| JSL JumpTableLocal
|1EE99A| dw OldMan_Lost
|1EE99C| dw OldMan_Returning
|1EE99E| dw OldMan_Home

;===================================================================================================

OldMan_Lost:
|1EE9A0| LDA.w $0D80,X
|1EE9A3| JSL JumpTableLocal
|1EE9A7| dw OldMan_Wait
|1EE9A9| dw OldMan_BecomeFollower

;===================================================================================================

OldMan_Wait:
|1EE9AB| JSL TrackBodyToHead

|1EE9AF| JSR GetDirectionTowardsLink_bank1E
|1EE9B2| TYA
|1EE9B3| EOR.b #$03
|1EE9B5| STA.w $0EB0,X

|1EE9B8| LDA.b #$9A ; MESSAGE 009A
|1EE9BA| LDY.b #$00
|1EE9BC| JSL ShowMessageOnContact
|1EE9C0| BCC .exit

|1EE9C2| STA.w $0DE0,X
|1EE9C5| STA.w $0EB0,X

|1EE9C8| INC.w $0D80,X

.exit
|1EE9CB| RTS

;===================================================================================================

OldMan_BecomeFollower:
|1EE9CC| LDA.b #$04 ; FOLLOWER 04
|1EE9CE| STA.l $7EF3CC

|1EE9D2| JSL BecomeFollower

|1EE9D6| LDA.b #$05
|1EE9D8| STA.l $7EF3C8

|1EE9DC| STZ.w $0DD0,X

|1EE9DF| JSL CacheRoomEntryProperties_long

|1EE9E3| RTS

;===================================================================================================

OldMan_Returning:
|1EE9E4| JSR MoveSpriteXY_bank1E

|1EE9E7| LDA.w $0D80,X
|1EE9EA| JSL JumpTableLocal
|1EE9EE| dw OldMan_GiveMirror
|1EE9F0| dw OldMan_Move
|1EE9F2| dw OldMan_EnterDoor
|1EE9F4| dw OldMan_FinishUp

;===================================================================================================

OldMan_GiveMirror:
|1EE9F6| INC.w $0D80,X

|1EE9F9| LDY.b #$1A ; ITEMGET 1A
|1EE9FB| STZ.w $02E9
|1EE9FE| JSL GrantItemReceipt

; This is weird.
; It's why rescuing old man in rain state spawns you in sanc.
|1EEA02| LDA.b #$01
|1EEA04| STA.l $7EF3C8

|1EEA08| JSR OldMan_EnableCutscene

|1EEA0B| LDA.b #$30
|1EEA0D| STA.w $0DF0,X

|1EEA10| LDA.b #$08
|1EEA12| STA.w $0D50,X

|1EEA15| LSR A
|1EEA16| STA.w $0D40,X

|1EEA19| LDA.b #$03
|1EEA1B| STA.w $0EB0,X
|1EEA1E| STA.w $0DE0,X

|1EEA21| RTS

;===================================================================================================

OldMan_Move:
|1EEA22| JSR OldMan_EnableCutscene

|1EEA25| LDA.w $0DF0,X
|1EEA28| BNE .delay

|1EEA2A| INC.w $0D80,X

.delay
|1EEA2D| TXA
|1EEA2E| EOR.b $1A
|1EEA30| LSR A
|1EEA31| LSR A
|1EEA32| LSR A
|1EEA33| AND.b #$01
|1EEA35| STA.w $0DC0,X

|1EEA38| RTS

;===================================================================================================

OldMan_EnterDoor:
|1EEA39| STZ.w $0EB0,X

|1EEA3C| STZ.w $0DE0,X

|1EEA3F| LDY.w $0FDE

|1EEA42| LDA.w $0B18,Y
|1EEA45| STA.b $00

|1EEA47| LDA.w $0B20,Y
|1EEA4A| STA.b $01

|1EEA4C| LDA.w $0D00,X
|1EEA4F| STA.b $02

|1EEA51| LDA.w $0D20,X
|1EEA54| STA.b $03

|1EEA56| REP #$20

|1EEA58| LDA.b $00
|1EEA5A| CMP.b $02

|1EEA5C| SEP #$30
|1EEA5E| BCC .not_north_enough

|1EEA60| INC.w $0D80,X

|1EEA63| STZ.w $0D50,X
|1EEA66| STZ.w $0D40,X

|1EEA69| RTS

.not_north_enough
|1EEA6A| LDA.w $0B08,Y
|1EEA6D| STA.b $04

|1EEA6F| LDA.w $0B10,Y
|1EEA72| STA.b $05

|1EEA74| LDA.w $0B18,Y
|1EEA77| STA.b $06

|1EEA79| LDA.w $0B20,Y
|1EEA7C| STA.b $07

|1EEA7E| LDA.b #$08
|1EEA80| JSL ProjectSpriteSpeedTowardsLocation_long

|1EEA84| LDA.b $00
|1EEA86| STA.w $0D40,X

|1EEA89| LDA.b $01
|1EEA8B| STA.w $0D50,X

|1EEA8E| TXA
|1EEA8F| EOR.b $1A
|1EEA91| LSR A
|1EEA92| LSR A
|1EEA93| LSR A
|1EEA94| AND.b #$01
|1EEA96| STA.w $0DC0,X

|1EEA99| JSR OldMan_EnableCutscene

|1EEA9C| RTS

;===================================================================================================

OldMan_FinishUp:
|1EEA9D| STZ.w $0DD0,X
|1EEAA0| STZ.w $02E4
|1EEAA3| STZ.w $037B

|1EEAA6| RTS

;===================================================================================================

pool OldMan_Home

.message_low
|1EEAA7| db $9C ; MESSAGE 009C
|1EEAA8| db $9D ; MESSAGE 009D
|1EEAA9| db $9E ; MESSAGE 009E

.message_high
|1EEAAA| db $00
|1EEAAB| db $00
|1EEAAC| db $00

endpool

;---------------------------------------------------------------------------------------------------

OldMan_Home:
|1EEAAD| JSL BehaveAsBarrier

|1EEAB1| LDA.w $0D80,X
|1EEAB4| BEQ .no_kiss

|1EEAB6| LDA.b #$A0
|1EEAB8| STA.l $7EF372

|1EEABC| STZ.w $0D80,X

.no_kiss
|1EEABF| LDY.b #$02

|1EEAC1| LDA.l $7EF3C5
|1EEAC5| CMP.b #$03
|1EEAC7| BCS .agahnim_defeated

; Check for pearl
|1EEAC9| LDA.l $7EF357
|1EEACD| TAY

.agahnim_defeated
|1EEACE| LDA.w .message_low,Y
|1EEAD1| XBA

|1EEAD2| LDA.w .message_high,Y
|1EEAD5| TAY

|1EEAD6| XBA
|1EEAD7| JSL ShowSolicitedMessage
|1EEADB| BCC .exit

|1EEADD| INC.w $0D80,X

.exit
|1EEAE0| RTS

;===================================================================================================
; Unused sprite
; Used to, as the name implies, test every text in game.
;===================================================================================================
Sprite_B8_DialogueTester:
|1EEAE1| JSL SpriteDraw_Priest

|1EEAE5| JSR CheckIfActive_bank1E

|1EEAE8| LDA.w $0D90,X
|1EEAEB| AND.b #$03
|1EEAED| STA.w $0DE0,X

|1EEAF0| LDA.w $0D80,X
|1EEAF3| JSL JumpTableLocal
|1EEAF7| dw DialogueTester_Initialize
|1EEAF9| dw DialogueTester_TestMessage
|1EEAFB| dw DialogueTester_NextMessage

;===================================================================================================

DialogueTester_Initialize:
|1EEAFD| STZ.w $0D90,X

|1EEB00| STZ.w $0DA0,X

|1EEB03| INC.w $0D80,X

;===================================================================================================

DialogueTester_TestMessage:
|1EEB06| LDA.w $0D90,X
|1EEB09| LDY.w $0DA0,X

|1EEB0C| JSL ShowMessageOnContact
|1EEB10| BCC .exit

|1EEB12| INC.w $0D80,X

.exit
|1EEB15| RTS

;===================================================================================================

DialogueTester_NextMessage:
|1EEB16| LDA.w $0D90,X
|1EEB19| CLC
|1EEB1A| ADC.b #$01
|1EEB1C| STA.w $0D90,X

|1EEB1F| LDA.w $0DA0,X
|1EEB22| ADC.b #$00
|1EEB24| STA.w $0DA0,X

|1EEB27| LDA.b #$01
|1EEB29| STA.w $0D80,X

|1EEB2C| RTS

;===================================================================================================

Sprite_B9_BullyAndPinkBall:
|1EEB2D| LDA.w $0E80,X
|1EEB30| JSL JumpTableLocal
|1EEB34| dw PinkBall
|1EEB36| dw PinkBall_Distress
|1EEB38| dw Bully

;===================================================================================================

PinkBall:
|1EEB3A| JSL AllocateOAMDeferToPlayer_long
|1EEB3E| JSL SpriteDraw_SingleLarge_long

|1EEB42| JSR CheckIfActive_bank1E
|1EEB45| JSR PinkBall_HandleMessage

|1EEB48| LDA.w $0F50,X
|1EEB4B| AND.b #$7F
|1EEB4D| ORA.w $0EB0,X
|1EEB50| STA.w $0F50,X

|1EEB53| JSR MoveSpriteXYZ_bank1E
|1EEB56| JSR CheckSpriteTileCollision_bank1E
|1EEB59| BEQ .no_tile_collision

|1EEB5B| AND.b #$03
|1EEB5D| BNE .bounce

|1EEB5F| LDA.w $0D40,X
|1EEB62| EOR.b #$FF
|1EEB64| INC A
|1EEB65| STA.w $0D40,X

|1EEB68| LDA.w $0E90,X
|1EEB6B| BEQ .bounce

|1EEB6D| JSR BOIoiOIoiOING
|1EEB70| BRA .no_tile_collision

.bounce
|1EEB72| LDA.w $0D50,X
|1EEB75| EOR.b #$FF
|1EEB77| INC A
|1EEB78| STA.w $0D50,X

|1EEB7B| LDA.w $0E90,X
|1EEB7E| BEQ .no_tile_collision

|1EEB80| JSR BOIoiOIoiOING

.no_tile_collision
|1EEB83| DEC.w $0F80,X

|1EEB86| LDA.w $0F70,X
|1EEB89| BPL .airborne

|1EEB8B| STZ.w $0F70,X

|1EEB8E| LDA.w $0F80,X
|1EEB91| EOR.b #$FF
|1EEB93| INC A

|1EEB94| LSR A
|1EEB95| LSR A
|1EEB96| STA.w $0F80,X

|1EEB99| AND.b #$FC
|1EEB9B| BEQ .no_sfx

|1EEB9D| JSR BOIoiOIoiOING

.no_sfx
|1EEBA0| JSR PinkBall_HandleDeceleration

.airborne
|1EEBA3| LDA.w $0E90,X
|1EEBA6| BNE PinkBall_Kicked

|1EEBA8| LDA.w $0EB0,X
|1EEBAB| BEQ PinkBall_RightSideUp

|1EEBAD| JMP.w PinkBall_UpsideDown

;===================================================================================================

PinkBall_RightSideUp:
|1EEBB0| JSR PinkBall_Distress

|1EEBB3| TXA
|1EEBB4| EOR.b $1A
|1EEBB6| PHA

|1EEBB7| LSR A
|1EEBB8| LSR A
|1EEBB9| LSR A
|1EEBBA| AND.b #$01
|1EEBBC| STA.w $0DC0,X

|1EEBBF| PLA
|1EEBC0| AND.b #$3F
|1EEBC2| BNE .continue

|1EEBC4| JSL GetRandomNumber
|1EEBC8| STA.b $04

; Always go to the same block of map that Link is at.
|1EEBCA| LDA.b $23
|1EEBCC| STA.b $05

|1EEBCE| JSL GetRandomNumber
|1EEBD2| STA.b $06

|1EEBD4| LDA.b $21
|1EEBD6| STA.b $07

|1EEBD8| LDA.b #$08
|1EEBDA| JSL ProjectSpriteSpeedTowardsLocation_long

|1EEBDE| LDA.b $01
|1EEBE0| STA.w $0DA0,X

|1EEBE3| LDA.b $00
|1EEBE5| STA.w $0D90,X

|1EEBE8| BEQ .continue

|1EEBEA| LDA.w $0F50,X
|1EEBED| ORA.b #$40
|1EEBEF| STA.w $0F50,X

|1EEBF2| LDA.w $0D50,X
|1EEBF5| LSR A
|1EEBF6| AND.b #$40
|1EEBF8| EOR.w $0F50,X
|1EEBFB| STA.w $0F50,X

.continue
|1EEBFE| LDA.w $0DA0,X
|1EEC01| STA.w $0D50,X

|1EEC04| LDA.w $0D90,X
|1EEC07| STA.w $0D40,X

|1EEC0A| RTS

;===================================================================================================

PinkBall_Kicked:
|1EEC0B| LDA.w $0D50,X
|1EEC0E| ORA.w $0D40,X
|1EEC11| BNE .have_momentum

|1EEC13| STZ.w $0E90,X

|1EEC16| RTS

.have_momentum
|1EEC17| TXA
|1EEC18| EOR.b $1A
|1EEC1A| PHA

|1EEC1B| LSR A
|1EEC1C| LSR A
|1EEC1D| AND.b #$01
|1EEC1F| STA.w $0DC0,X

|1EEC22| PLA
|1EEC23| ASL A
|1EEC24| ASL A
|1EEC25| AND.b #$80
|1EEC27| STA.w $0EB0,X

|1EEC2A| RTS

;===================================================================================================

PinkBall_UpsideDown:
|1EEC2B| JSR PinkBall_Distress

|1EEC2E| TXA
|1EEC2F| EOR.b $1A
|1EEC31| BEQ .flip_upright

|1EEC33| LSR A
|1EEC34| LSR A
|1EEC35| AND.b #$01
|1EEC37| STA.w $0DC0,X

|1EEC3A| STZ.w $0D50,X
|1EEC3D| STZ.w $0D40,X

|1EEC40| RTS

.flip_upright
|1EEC41| STZ.w $0EB0,X

|1EEC44| RTS

;===================================================================================================

pool PinkBall_HandleDeceleration

.decel
|1EEC45| db -2,  2

endpool

;---------------------------------------------------------------------------------------------------

PinkBall_HandleDeceleration:
|1EEC47| LDA.w $0D50,X
|1EEC4A| BEQ .handle_y

|1EEC4C| PHA

|1EEC4D| ASL A
|1EEC4E| ROL A
|1EEC4F| AND.b #$01
|1EEC51| TAY

|1EEC52| PLA
|1EEC53| CLC
|1EEC54| ADC.w .decel,Y
|1EEC57| STA.w $0D50,X

.handle_y
|1EEC5A| LDA.w $0D40,X
|1EEC5D| BEQ .exit

|1EEC5F| PHA

|1EEC60| ASL A
|1EEC61| ROL A
|1EEC62| AND.b #$01
|1EEC64| TAY

|1EEC65| PLA
|1EEC66| CLC
|1EEC67| ADC.w .decel,Y
|1EEC6A| STA.w $0D40,X

.exit
|1EEC6D| RTS

;===================================================================================================

PinkBall_Distress:
|1EEC6E| JSR GetScreenCoordinates_bank1E
|1EEC71| JSL DrawSpriteDistress

|1EEC75| RTS

;===================================================================================================

Bully:
|1EEC76| JSR SpriteDraw_Bully
|1EEC79| JSR CheckIfActive_bank1E
|1EEC7C| JSR Bully_HandleMessage

|1EEC7F| JSR MoveSpriteXYZ_bank1E
|1EEC82| JSR CheckSpriteTileCollision_bank1E
|1EEC85| BEQ .no_tile_collision

|1EEC87| AND.b #$03
|1EEC89| BNE .horizontal_collision

|1EEC8B| LDA.w $0D40,X
|1EEC8E| EOR.b #$FF
|1EEC90| INC A
|1EEC91| STA.w $0D40,X
|1EEC94| BRA .no_tile_collision

.horizontal_collision
|1EEC96| LDA.w $0D50,X
|1EEC99| EOR.b #$FF
|1EEC9B| INC A
|1EEC9C| STA.w $0D50,X

.no_tile_collision
|1EEC9F| LDA.w $0D80,X
|1EECA2| JSL JumpTableLocal
|1EECA6| dw Bully_ChaseVictim
|1EECA8| dw Bully_PuntVictim
|1EECAA| dw Bully_Idle

;===================================================================================================

Bully_ChaseVictim:
|1EECAC| TXA
|1EECAD| EOR.b $1A
|1EECAF| PHA

|1EECB0| LSR A
|1EECB1| LSR A
|1EECB2| LSR A
|1EECB3| AND.b #$01
|1EECB5| STA.w $0DC0,X

|1EECB8| PLA
|1EECB9| AND.b #$1F
|1EECBB| BNE .dont_turn

|1EECBD| LDA.w $0EB0,X ; Use LDY.w $0EB0,X next time.
|1EECC0| TAY

|1EECC1| LDA.w $0D10,Y
|1EECC4| STA.b $04

|1EECC6| LDA.w $0D30,Y
|1EECC9| STA.b $05

|1EECCB| LDA.w $0D00,Y
|1EECCE| STA.b $06

|1EECD0| LDA.w $0D20,Y
|1EECD3| STA.b $07

|1EECD5| LDA.b #$0E
|1EECD7| JSL ProjectSpriteSpeedTowardsLocation_long

|1EECDB| LDA.b $00
|1EECDD| STA.w $0D40,X

|1EECE0| LDA.b $01
|1EECE2| STA.w $0D50,X
|1EECE5| BEQ .dont_turn

|1EECE7| LDA.w $0D50,X
|1EECEA| ASL A
|1EECEB| ROL A
|1EECEC| AND.b #$01
|1EECEE| STA.w $0DE0,X

.dont_turn
|1EECF1| LDA.w $0EB0,X ; I said use LDY next time.
|1EECF4| TAY

|1EECF5| LDA.w $0F70,Y
|1EECF8| BNE .exit

|1EECFA| LDA.w $0D10,X
|1EECFD| SEC
|1EECFE| SBC.w $0D10,Y
|1EED01| CLC
|1EED02| ADC.b #$08

|1EED04| CMP.b #$10
|1EED06| BCS .exit

|1EED08| LDA.w $0D00,X
|1EED0B| SEC
|1EED0C| SBC.w $0D00,Y
|1EED0F| CLC
|1EED10| ADC.b #$08

|1EED12| CMP.b #$10
|1EED14| BCS .exit

|1EED16| INC.w $0D80,X

|1EED19| JSR BOIoiOIoiOING

.exit
|1EED1C| RTS

;===================================================================================================

Bully_PuntVictim:
|1EED1D| INC.w $0D80,X

|1EED20| LDA.w $0EB0,X
|1EED23| TAY

|1EED24| LDA.w $0D50,X
|1EED27| ASL A
|1EED28| STA.w $0D50,Y

|1EED2B| LDA.w $0D40,X
|1EED2E| ASL A
|1EED2F| STA.w $0D40,Y

|1EED32| STZ.w $0D50,X
|1EED35| STZ.w $0D40,X

|1EED38| JSL GetRandomNumber
|1EED3C| AND.b #$1F
|1EED3E| STA.w $0F80,Y

|1EED41| LDA.b #$60
|1EED43| STA.w $0DF0,X

|1EED46| LDA.b #$01
|1EED48| STA.w $0DC0,X
|1EED4B| STA.w $0E90,Y

|1EED4E| RTS

;===================================================================================================

Bully_Idle:
|1EED4F| LDA.w $0DF0,X
|1EED52| BNE .exit

|1EED54| STZ.w $0D80,X

.exit
|1EED57| RTS

;===================================================================================================

pool SpriteDraw_Bully

.oam_groups
; group00
|1EED58| dw   0,  -7 : db $E0, $46, $00, $02
|1EED60| dw   0,   0 : db $E2, $46, $00, $02

; group01
|1EED68| dw   0,  -7 : db $E0, $46, $00, $02
|1EED70| dw   0,   0 : db $C4, $46, $00, $02

; group02
|1EED78| dw   0,  -7 : db $E0, $06, $00, $02
|1EED80| dw   0,   0 : db $E2, $06, $00, $02

; group03
|1EED88| dw   0,  -7 : db $E0, $06, $00, $02
|1EED90| dw   0,   0 : db $C4, $06, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Bully:
|1EED98| LDA.b #$02
|1EED9A| STA.b $06
|1EED9C| STZ.b $07

|1EED9E| LDA.w $0DE0,X
|1EEDA1| ASL A

|1EEDA2| ADC.w $0DC0,X

|1EEDA5| ASL A ; x16
|1EEDA6| ASL A
|1EEDA7| ASL A
|1EEDA8| ASL A

|1EEDA9| ADC.b #<.oam_groups
|1EEDAB| STA.b $08

|1EEDAD| LDA.b #>.oam_groups
|1EEDAF| ADC.b #$00
|1EEDB1| STA.b $09

|1EEDB3| JSL TabulatedSpriteDraw.player_deferred
|1EEDB7| JSL DrawSpriteShadow_long

|1EEDBB| RTS

;===================================================================================================
; BOI OI OI OI OING
;===================================================================================================
BOIoiOIoiOING:
|1EEDBC| LDA.b #$32 ; SFX3.32
|1EEDBE| JSL QueueSpriteSFX3WithPan

|1EEDC2| RTS

;===================================================================================================

SpawnBully:
|1EEDC3| LDA.b #$B9 ; SPRITE B9
|1EEDC5| JSL SpawnSpriteDynamically
|1EEDC9| BMI .no_space

|1EEDCB| JSL SetSpawnedSpriteCoordinates

|1EEDCF| LDA.b #$02
|1EEDD1| STA.w $0E80,Y

|1EEDD4| TXA
|1EEDD5| STA.w $0EB0,Y

|1EEDD8| LDA.b #$01
|1EEDDA| STA.w $0BA0,Y

.no_space
|1EEDDD| RTL

;===================================================================================================

pool PinkBall_HandleMessage

.message_low
|1EEDDE| db $59 ; MESSAGE 0159
|1EEDDF| db $5A ; MESSAGE 015A

.message_high
|1EEDE0| db $01
|1EEDE1| db $01

endpool

;---------------------------------------------------------------------------------------------------

PinkBall_HandleMessage:
|1EEDE2| LDA.w $0F10,X
|1EEDE5| BNE .exit

|1EEDE7| LDA.l $7EF357
|1EEDEB| AND.b #$01
|1EEDED| TAY

|1EEDEE| LDA.w .message_low,Y
|1EEDF1| XBA

|1EEDF2| LDA.w .message_high,Y
|1EEDF5| TAY

|1EEDF6| XBA

|1EEDF7| JSL ShowMessageOnContact
|1EEDFB| BCC .exit

|1EEDFD| LDA.w $0D50,X
|1EEE00| EOR.b #$FF
|1EEE02| STA.w $0D50,X

|1EEE05| LDA.w $0D40,X
|1EEE08| EOR.b #$FF
|1EEE0A| STA.w $0D40,X

|1EEE0D| LDA.w $0E90,X
|1EEE10| BEQ .no_sfx

|1EEE12| JSR BOIoiOIoiOING

.no_sfx
|1EEE15| LDA.b #$40
|1EEE17| STA.w $0F10,X

.exit
|1EEE1A| RTS

;===================================================================================================

pool Bully_HandleMessage

.message_low
|1EEE1B| db $5B ; MESSAGE 015B
|1EEE1C| db $5C ; MESSAGE 015C

.message_high
|1EEE1D| db $01
|1EEE1E| db $01

endpool

;---------------------------------------------------------------------------------------------------

Bully_HandleMessage:
|1EEE1F| LDA.w $0F10,X
|1EEE22| BNE .exit

|1EEE24| LDA.l $7EF357
|1EEE28| AND.b #$01
|1EEE2A| TAY

|1EEE2B| LDA.w .message_low,Y
|1EEE2E| XBA

|1EEE2F| LDA.w .message_high,Y
|1EEE32| TAY

|1EEE33| XBA

|1EEE34| JSL ShowMessageOnContact
|1EEE38| BCC .exit

|1EEE3A| LDA.w $0D50,X
|1EEE3D| EOR.b #$FF
|1EEE3F| STA.w $0D50,X

|1EEE42| LDA.w $0D40,X
|1EEE45| EOR.b #$FF
|1EEE47| STA.w $0D40,X

|1EEE4A| LDA.b #$40
|1EEE4C| STA.w $0F10,X

.exit
|1EEE4F| RTS

;===================================================================================================

WhirlpoolFlip:
|1EEE50| db $00, $40, $C0, $80

;---------------------------------------------------------------------------------------------------

Sprite_BA_Whirlpool:
|1EEE54| LDA.b $8A
|1EEE56| CMP.b #$1B ; OW 1B
|1EEE58| BNE Whirlpool

;===================================================================================================

CastleWarp:
|1EEE5A| JSL GetScreenCoordinates_long
|1EEE5E| JSR CheckIfActive_bank1E

|1EEE61| REP #$20

; [HARDCODED] hitbox
|1EEE63| LDA.w $0FD8
|1EEE66| SEC
|1EEE67| SBC.b $22
|1EEE69| CLC
|1EEE6A| ADC.w #$0040
|1EEE6D| CMP.w #$0051
|1EEE70| BCS .no_warp

|1EEE72| LDA.w $0FDA
|1EEE75| SEC
|1EEE76| SBC.b $20
|1EEE78| CLC
|1EEE79| ADC.w #$000F
|1EEE7C| CMP.w #$0012
|1EEE7F| BCS .no_warp

|1EEE81| SEP #$30

|1EEE83| LDA.b #$23
|1EEE85| STA.b $11

|1EEE87| LDA.b #$01
|1EEE89| STA.w $02DB

|1EEE8C| STZ.b $B0
|1EEE8E| STZ.b $27
|1EEE90| STZ.b $28

|1EEE92| LDA.b #$14 ; LINKSTATE 14
|1EEE94| STA.b $5D

.no_warp
|1EEE96| SEP #$30

|1EEE98| RTS

;===================================================================================================

Whirlpool:
|1EEE99| LDA.w $0F50,X
|1EEE9C| AND.b #$3F
|1EEE9E| STA.w $0F50,X

|1EEEA1| LDA.b $1A
|1EEEA3| LSR A
|1EEEA4| LSR A
|1EEEA5| LSR A
|1EEEA6| AND.b #$03
|1EEEA8| TAY

|1EEEA9| LDA.w WhirlpoolFlip,Y
|1EEEAC| ORA.w $0F50,X
|1EEEAF| STA.w $0F50,X

|1EEEB2| LDA.b #$04
|1EEEB4| JSL AllocateOAMInRegionB

|1EEEB8| REP #$20

|1EEEBA| LDA.w $0FD8
|1EEEBD| SEC
|1EEEBE| SBC.w #$0005
|1EEEC1| STA.w $0FD8

|1EEEC4| SEP #$30

|1EEEC6| JSL SpriteDraw_SingleLarge_long
|1EEECA| JSR CheckIfActive_bank1E

|1EEECD| JSL CheckDamageToLink_same_layer_long
|1EEED1| BCC .no_contact

|1EEED3| LDA.w $0D90,X
|1EEED6| BNE .exit

|1EEED8| LDA.b #$2E
|1EEEDA| STA.b $11
|1EEEDC| STZ.b $B0

.exit
|1EEEDE| RTS

.no_contact
|1EEEDF| STZ.w $0D90,X

|1EEEE2| RTS

;===================================================================================================

Sprite_BB_Shopkeeper:
|1EEEE3| LDA.w $0E80,X
|1EEEE6| JSL JumpTableLocal
|1EEEEA| dw Shopkeeper_StandardClerk
|1EEEEC| dw ChestGameGuy
|1EEEEE| dw NiceThiefWithGift
|1EEEF0| dw MiniChestGameGuy
|1EEEF2| dw LostWoodsChestGameGuy
|1EEEF4| dw NiceThiefUnderRock
|1EEEF6| dw NiceThiefUnderRock

|1EEEF8| dw ShopItem_RedPotion150
|1EEEFA| dw ShopItem_FighterShield
|1EEEFC| dw ShopItem_FireShield
|1EEEFE| dw ShopItem_Heart
|1EEF00| dw ShopItem_Arrows
|1EEF02| dw ShopItem_Bombs
|1EEF04| dw ShopItem_Bee

;===================================================================================================

Shopkeeper_StandardClerk:
|1EEF06| LDA.w $0FFF
|1EEF09| BEQ .light_world

|1EEF0B| JSL AllocateOAMDeferToPlayer_long
|1EEF0F| JSL SpriteDraw_SingleLarge_long
|1EEF13| JSR CheckIfActive_bank1E

|1EEF16| LDA.w $0F50,X
|1EEF19| AND.b #$3F
|1EEF1B| STA.b $00

|1EEF1D| LDA.b $1A
|1EEF1F| ASL A
|1EEF20| ASL A
|1EEF21| ASL A

|1EEF22| AND.b #$40
|1EEF24| ORA.b $00
|1EEF26| STA.w $0F50,X

;---------------------------------------------------------------------------------------------------

.handle_interaction
|1EEF29| JSL BehaveAsBarrier
|1EEF2D| LDY.w $0FFF

|1EEF30| LDA.w .message_low,Y
|1EEF33| XBA

|1EEF34| LDA.w .message_high,Y
|1EEF37| TAY

|1EEF38| XBA

|1EEF39| JSL ShowSolicitedMessage

|1EEF3D| LDA.w $0D80,X

|1EEF40| BEQ .not_welcomed_yet
|1EEF42| BRA .exit

;---------------------------------------------------------------------------------------------------

.light_world
|1EEF44| LDA.b #$07
|1EEF46| STA.w $0F50,X

|1EEF49| JSL SpriteDraw_Shopkeeper
|1EEF4D| JSR CheckIfActive_bank1E

|1EEF50| LDA.b $1A
|1EEF52| LSR A
|1EEF53| LSR A
|1EEF54| LSR A
|1EEF55| LSR A

|1EEF56| AND.b #$01
|1EEF58| STA.w $0DC0,X

|1EEF5B| BRA .handle_interaction

;---------------------------------------------------------------------------------------------------

.message_low
|1EEF5D| db $63 ; MESSAGE 0163
|1EEF5E| db $5D ; MESSAGE 015D

.message_high
|1EEF5F| db $01
|1EEF60| db $01

;---------------------------------------------------------------------------------------------------

.not_welcomed_yet
|1EEF61| REP #$20

|1EEF63| LDA.w $0FDA
|1EEF66| CLC
|1EEF67| ADC.w #$0060
|1EEF6A| CMP.b $20

|1EEF6C| SEP #$30
|1EEF6E| BCC .exit

|1EEF70| LDY.w $0FFF

|1EEF73| LDA.w .message_low,Y
|1EEF76| XBA

|1EEF77| LDA.w .message_high,Y
|1EEF7A| TAY

|1EEF7B| XBA

|1EEF7C| JSL ShowMessageUnconditional

|1EEF80| INC.w $0D80,X

.exit
|1EEF83| RTS

;===================================================================================================

ChestGameGuy:
|1EEF84| JSL AllocateOAMDeferToPlayer_long
|1EEF88| JSL SpriteDraw_SingleLarge_long

|1EEF8C| JSR CheckIfActive_bank1E
|1EEF8F| JSL BehaveAsBarrier

|1EEF93| LDA.w $0F50,X
|1EEF96| AND.b #$3F
|1EEF98| STA.b $00

|1EEF9A| LDA.b $1A
|1EEF9C| ASL A
|1EEF9D| ASL A
|1EEF9E| ASL A

|1EEF9F| AND.b #$40
|1EEFA1| ORA.b $00
|1EEFA3| STA.w $0F50,X

|1EEFA6| LDA.w $0D80,X
|1EEFA9| JSL JumpTableLocal
|1EEFAD| dw ChestGameGuy_OfferGame
|1EEFAF| dw ChestGameGuy_HandlePayment
|1EEFB1| dw ChestGameGuy_ProctorGame

;===================================================================================================

ChestGameGuy_OfferGame:
|1EEFB3| LDA.w $04C4
|1EEFB6| DEC A
|1EEFB7| CMP.b #$02
|1EEFB9| BCC .exit

|1EEFBB| LDA.b #$5E ; MESSAGE 015E
|1EEFBD| LDY.b #$01
|1EEFBF| JSL ShowSolicitedMessage
|1EEFC3| BCC .exit

|1EEFC5| INC.w $0D80,X

.exit
|1EEFC8| RTS

;===================================================================================================

ChestGameGuy_HandlePayment:
|1EEFC9| LDA.w $1CE8
|1EEFCC| BNE .rejected

; 30 rupees
|1EEFCE| LDA.b #$1E
|1EEFD0| LDY.b #$00
|1EEFD2| JSR ShopItem_HandleCost
|1EEFD5| BCC .rejected

|1EEFD7| LDA.b #$02
|1EEFD9| STA.w $04C4

|1EEFDC| LDA.b #$62 ; MESSAGE 0162
|1EEFDE| LDY.b #$01
|1EEFE0| JSL ShowMessageUnconditional

|1EEFE4| INC.w $0D80,X

|1EEFE7| RTS

.rejected
|1EEFE8| LDA.b #$5F ; MESSAGE 015F
|1EEFEA| LDY.b #$01
|1EEFEC| JSL ShowMessageUnconditional

|1EEFF0| STZ.w $0D80,X

|1EEFF3| RTS

;===================================================================================================

ChestGameGuy_ProctorGame:
|1EEFF4| LDA.w $04C4
|1EEFF7| BNE .credits_remaining

|1EEFF9| LDA.b #$61 ; MESSAGE 0161
|1EEFFB| LDY.b #$01
|1EEFFD| JSL ShowSolicitedMessage

|1EF001| RTS

.credits_remaining
|1EF002| LDA.b #$7D ; MESSAGE 017D
|1EF004| LDY.b #$01
|1EF006| JSL ShowSolicitedMessage

|1EF00A| RTS

;===================================================================================================

NiceThief_Animate:
|1EF00B| LDA.b $1A
|1EF00D| AND.b #$03
|1EF00F| BNE .dont_turn_head

|1EF011| LDA.b #$02
|1EF013| STA.w $0DC0,X

|1EF016| JSR GetDirectionTowardsLink_bank1E

|1EF019| CPY.b #$03
|1EF01B| BNE .dont_face_up

|1EF01D| LDY.b #$02

.dont_face_up
|1EF01F| TYA
|1EF020| STA.w $0EB0,X

.dont_turn_head
|1EF023| JSL AllocateOAMDeferToPlayer_long
|1EF027| JSL SpriteDraw_Thief

|1EF02B| RTS

;===================================================================================================

NiceThiefWithGift:
|1EF02C| JSR NiceThief_Animate
|1EF02F| JSR CheckIfActive_bank1E
|1EF032| JSL BehaveAsBarrier

|1EF036| LDA.w $0D80,X
|1EF039| JSL JumpTableLocal
|1EF03D| dw NiceThiefWithGift_WaitForInteraction
|1EF03F| dw NiceThiefWithGift_GiveRupees
|1EF041| dw NiceThiefWithGift_ResetAI

;===================================================================================================

NiceThiefWithGift_WaitForInteraction:
|1EF043| LDA.b #$74 ; MESSAGE 0174
|1EF045| LDY.b #$01
|1EF047| JSL ShowSolicitedMessage
|1EF04B| BCC .exit

|1EF04D| INC.w $0D80,X

.exit
|1EF050| RTS

;===================================================================================================

NiceThiefWithGift_GiveRupees:
|1EF051| LDA.w $0403
|1EF054| AND.b #$40
|1EF056| BNE NiceThiefWithGift_ResetAI

|1EF058| LDA.w $0403
|1EF05B| ORA.b #$40
|1EF05D| STA.w $0403

|1EF060| INC.w $0D80,X

|1EF063| LDY.b #$46 ; ITEMGET 46
|1EF065| JMP.w ShopItem_HandleReceipt

;===================================================================================================

NiceThiefWithGift_ResetAI:
|1EF068| STZ.w $0D80,X

|1EF06B| RTS

;===================================================================================================

MiniChestGameGuy:
|1EF06C| JSR GetDirectionTowardsLink_bank1E
|1EF06F| TYA
|1EF070| EOR.b #$03
|1EF072| STA.w $0DE0,X

|1EF075| STZ.w $0DC0,X

|1EF078| JSL SpriteDraw_YoungGamer
|1EF07C| JSR CheckIfActive_bank1E
|1EF07F| JSL BehaveAsBarrier

|1EF083| LDA.w $0D80,X
|1EF086| JSL JumpTableLocal
|1EF08A| dw MiniChestGameGuy_OfferGame
|1EF08C| dw MiniChestGameGuy_VerifyPurchase
|1EF08E| dw LesserChestGameGuy_AfterGameStart

;===================================================================================================

MiniChestGameGuy_OfferGame:
|1EF090| LDA.w $04C4
|1EF093| DEC A
|1EF094| CMP.b #$02
|1EF096| BCC EXIT_1EF0A5

|1EF098| LDA.b #$7C ; MESSAGE 017C
|1EF09A| LDY.b #$01
|1EF09C| JSL ShowSolicitedMessage
|1EF0A0| BCC EXIT_1EF0A5

|1EF0A2| INC.w $0D80,X

;---------------------------------------------------------------------------------------------------

#EXIT_1EF0A5:
|1EF0A5| RTS

;===================================================================================================

MiniChestGameGuy_VerifyPurchase:
|1EF0A6| LDA.w $1CE8
|1EF0A9| BNE .rejected

; 20 rupees
|1EF0AB| LDA.b #$14
|1EF0AD| LDY.b #$00
|1EF0AF| JSR ShopItem_HandleCost
|1EF0B2| BCC .rejected

|1EF0B4| LDA.b #$01
|1EF0B6| STA.w $04C4

|1EF0B9| LDA.b #$7D ; MESSAGE 017D
|1EF0BB| LDY.b #$01
|1EF0BD| JSL ShowMessageUnconditional

|1EF0C1| INC.w $0D80,X

|1EF0C4| RTS

.rejected
|1EF0C5| LDA.b #$7E ; MESSAGE 017E
|1EF0C7| LDY.b #$01
|1EF0C9| JSL ShowMessageUnconditional

|1EF0CD| STZ.w $0D80,X

|1EF0D0| RTS

;===================================================================================================

pool LesserChestGameGuy_AfterGameStart

.message_low
|1EF0D1| db $61 ; MESSAGE 0161
|1EF0D2| db $7D ; MESSAGE 017D

.message_high
|1EF0D3| db $01
|1EF0D4| db $01

endpool

;---------------------------------------------------------------------------------------------------

LesserChestGameGuy_AfterGameStart:
; C'mon! There's no excuse for not using LDY here.
|1EF0D5| LDA.w $04C4
|1EF0D8| TAY

|1EF0D9| LDA.w .message_low,Y
|1EF0DC| XBA

|1EF0DD| LDA.w .message_high,Y
|1EF0E0| TAY

|1EF0E1| XBA

|1EF0E2| JSL ShowSolicitedMessage

|1EF0E6| RTS

;===================================================================================================

LostWoodsChestGameGuy:
|1EF0E7| JSR NiceThief_Animate
|1EF0EA| JSR CheckIfActive_bank1E
|1EF0ED| JSL BehaveAsBarrier

|1EF0F1| LDA.w $0D80,X
|1EF0F4| JSL JumpTableLocal
|1EF0F8| dw LostWoodsChestGameGuy_OfferGame
|1EF0FA| dw LostWoodsChestGameGuy_VerifyPurchase
|1EF0FC| dw LesserChestGameGuy_AfterGameStart

;===================================================================================================

LostWoodsChestGameGuy_OfferGame:
|1EF0FE| LDA.w $04C4
|1EF101| DEC A
|1EF102| CMP.b #$02
|1EF104| BCC EXIT_1EF0A5

|1EF106| LDA.b #$7F ; MESSAGE 017F
|1EF108| LDY.b #$01
|1EF10A| JSL ShowSolicitedMessage
|1EF10E| BCC .exit

|1EF110| INC.w $0D80,X

.exit
|1EF113| RTS

;===================================================================================================

LostWoodsChestGameGuy_VerifyPurchase:
|1EF114| LDA.w $1CE8
|1EF117| BNE .rejected

; 100 rupees
|1EF119| LDA.b #$64
|1EF11B| LDY.b #$00
|1EF11D| JSR ShopItem_HandleCost
|1EF120| BCC .rejected

|1EF122| LDA.b #$01
|1EF124| STA.w $04C4

|1EF127| LDA.b #$7D ; MESSAGE 017D
|1EF129| LDY.b #$01
|1EF12B| JSL ShowMessageUnconditional

|1EF12F| INC.w $0D80,X

|1EF132| RTS

.rejected
|1EF133| LDA.b #$7E ; MESSAGE 017E
|1EF135| LDY.b #$01
|1EF137| JSL ShowMessageUnconditional

|1EF13B| STZ.w $0D80,X

|1EF13E| RTS

;===================================================================================================

pool NiceThiefUnderRock

.message_low
|1EF13F| db $75 ; MESSAGE 0175
|1EF140| db $76 ; MESSAGE 0176

.message_high
|1EF141| db $01
|1EF142| db $01

endpool

;---------------------------------------------------------------------------------------------------

NiceThiefUnderRock:
|1EF143| JSR NiceThief_Animate
|1EF146| JSR CheckIfActive_bank1E
|1EF149| JSL BehaveAsBarrier

|1EF14D| LDA.w $0E80,X
|1EF150| SEC
|1EF151| SBC.b #$05
|1EF153| TAY

|1EF154| LDA.w .message_low,Y
|1EF157| XBA

|1EF158| LDA.w .message_high,Y
|1EF15B| TAY

|1EF15C| XBA

|1EF15D| JSL ShowSolicitedMessage

|1EF161| RTS

;===================================================================================================

ShopItem_RedPotion150:
|1EF162| JSR SpriteDraw_ShopItem
|1EF165| JSR CheckIfActive_bank1E
|1EF168| JSL BehaveAsBarrier
|1EF16C| JSR ShopItem_CheckForAPress
|1EF16F| BCC .exit

|1EF171| JSL FindEmptyBottle
|1EF175| BMI .no_empty_bottle

; 150 rupees
|1EF177| LDA.b #$96
|1EF179| LDY.b #$00
|1EF17B| JSR ShopItem_HandleCost
|1EF17E| BCC ShopItem_GiveFailureMessage

|1EF180| STZ.w $0DD0,X

|1EF183| LDY.b #$2E ; ITEMGET 2E
|1EF185| JSR ShopItem_HandleReceipt

.exit
|1EF188| RTS

.no_empty_bottle
|1EF189| LDA.b #$6B ; MESSAGE 016B
|1EF18B| LDY.b #$01
|1EF18D| JSL ShowMessageUnconditional

|1EF191| JSR ShopItem_PlayBeep

|1EF194| RTS

;===================================================================================================

ShopItem_GiveFailureMessage:
|1EF195| LDA.b #$7A ; MESSAGE 017A
|1EF197| LDY.b #$01
|1EF199| JSL ShowMessageUnconditional

|1EF19D| JSR ShopItem_PlayBeep

|1EF1A0| RTS

;===================================================================================================

pool Shopkeeper_SpawnShopItem

.offset_x
|1EF1A1| dw -44,   8,  60

endpool

;---------------------------------------------------------------------------------------------------

Shopkeeper_SpawnShopItem:
|1EF1A7| PHA
|1EF1A8| PHY

|1EF1A9| LDA.b #$BB ; SPRITE BB
|1EF1AB| LDY.b #$0C
|1EF1AD| JSL SpawnSpriteDynamically.slot_limited

|1EF1B1| PLA
|1EF1B2| STA.w $0E80,Y
|1EF1B5| STA.w $0BA0,Y

|1EF1B8| PLA
|1EF1B9| PHX

|1EF1BA| ASL A
|1EF1BB| TAX

|1EF1BC| LDA.b $00
|1EF1BE| CLC
|1EF1BF| ADC.l .offset_x+0,X
|1EF1C3| STA.w $0D10,Y

|1EF1C6| LDA.b $01
|1EF1C8| ADC.l .offset_x+1,X
|1EF1CC| STA.w $0D30,Y

|1EF1CF| LDA.b $02
|1EF1D1| CLC
|1EF1D2| ADC.b #$27
|1EF1D4| STA.w $0D00,Y

|1EF1D7| LDA.b $03
|1EF1D9| STA.w $0D20,Y

|1EF1DC| LDA.w $0E40,Y
|1EF1DF| ORA.b #$04
|1EF1E1| STA.w $0E40,Y

|1EF1E4| PLX

|1EF1E5| RTL

;===================================================================================================

ShopItem_FighterShield:
|1EF1E6| JSR SpriteDraw_ShopItem

|1EF1E9| JSR CheckIfActive_bank1E
|1EF1EC| JSL BehaveAsBarrier

|1EF1F0| JSR ShopItem_MakeShieldsDeflect

|1EF1F3| JSR ShopItem_CheckForAPress
|1EF1F6| BCC .set_hitbox

|1EF1F8| LDA.l $7EF35A
|1EF1FC| BNE RejectShieldPurchase

; 50 rupees
|1EF1FE| LDA.b #$32
|1EF200| LDY.b #$00
|1EF202| JSR ShopItem_HandleCost
|1EF205| BCC TooPoorForAShield

|1EF207| STZ.w $0DD0,X

|1EF20A| LDY.b #$04 ; ITEMGET 04
|1EF20C| JSR ShopItem_HandleReceipt

.set_hitbox
; [HARDCODED] hitbox set every frame.
|1EF20F| LDA.b #$1C
|1EF211| STA.w $0F60,X

|1EF214| RTS

;===================================================================================================

RejectShieldPurchase:
|1EF215| LDA.b #$64 ; MESSAGE 0164
|1EF217| LDY.b #$01
|1EF219| JSL ShowMessageUnconditional

|1EF21D| JSR ShopItem_PlayBeep

|1EF220| RTS

;===================================================================================================

TooPoorForAShield:
|1EF221| JMP.w ShopItem_GiveFailureMessage

;===================================================================================================

ShopItem_FireShield:
|1EF224| JSR SpriteDraw_ShopItem
|1EF227| JSR CheckIfActive_bank1E
|1EF22A| JSL BehaveAsBarrier

|1EF22E| JSR ShopItem_MakeShieldsDeflect

|1EF231| JSR ShopItem_CheckForAPress
|1EF234| BCC .set_hitbox

|1EF236| LDA.l $7EF35A
|1EF23A| CMP.b #$02
|1EF23C| BCS RejectShieldPurchase

; 500 rupees
|1EF23E| LDA.b #$F4
|1EF240| LDY.b #$01
|1EF242| JSR ShopItem_HandleCost
|1EF245| BCC TooPoorForAShield

|1EF247| STZ.w $0DD0,X

|1EF24A| LDY.b #$05 ; ITEMGET 05
|1EF24C| JSR ShopItem_HandleReceipt

.set_hitbox
|1EF24F| LDA.b #$1C
|1EF251| STA.w $0F60,X

|1EF254| RTS

;===================================================================================================
; Nice touch.
;===================================================================================================
ShopItem_MakeShieldsDeflect:
|1EF255| STZ.w $0BA0,X

|1EF258| LDA.b #$08
|1EF25A| STA.w $0B6B,X

|1EF25D| LDA.b #$04
|1EF25F| STA.w $0CAA,X

|1EF262| LDA.b #$1C
|1EF264| STA.w $0F60,X

|1EF267| JSL CheckDamageFromLink_long

|1EF26B| LDA.b #$0A
|1EF26D| STA.w $0F60,X

|1EF270| RTS

;===================================================================================================

ShopItem_Heart:
|1EF271| JSR SpriteDraw_ShopItem

|1EF274| JSR CheckIfActive_bank1E
|1EF277| JSL BehaveAsBarrier

|1EF27B| JSR ShopItem_CheckForAPress
|1EF27E| BCC .exit

|1EF280| LDA.l $7EF36C
|1EF284| CMP.l $7EF36D
|1EF288| BEQ .too_much_health

; 10 rupees
|1EF28A| LDA.b #$0A
|1EF28C| LDY.b #$00
|1EF28E| JSR ShopItem_HandleCost
|1EF291| BCC .too_poor

|1EF293| STZ.w $0DD0,X

|1EF296| LDY.b #$42 ; ITEMGET 42
|1EF298| JSR ShopItem_HandleReceipt

.exit
|1EF29B| RTS

.too_much_health
|1EF29C| JSR ShopItem_PlayBeep

|1EF29F| RTS

.too_poor
|1EF2A0| JMP.w ShopItem_GiveFailureMessage

;===================================================================================================

ShopItem_Arrows:
|1EF2A3| JSR SpriteDraw_ShopItem
|1EF2A6| JSR CheckIfActive_bank1E
|1EF2A9| JSL BehaveAsBarrier

|1EF2AD| JSR ShopItem_CheckForAPress
|1EF2B0| BCC .exit

|1EF2B2| LDA.l $7EF371

|1EF2B6| PHX

|1EF2B7| TAX

|1EF2B8| LDA.l CapacityUpgrades.arrows_hex,X

|1EF2BC| PLX

|1EF2BD| CMP.l $7EF377
|1EF2C1| BEQ TooMuchAmmo

; 30 rupees
|1EF2C3| LDA.b #$1E
|1EF2C5| LDY.b #$00
|1EF2C7| JSR ShopItem_HandleCost
|1EF2CA| BCC RejectMunitionsPurchase

|1EF2CC| STZ.w $0DD0,X

|1EF2CF| LDY.b #$44 ; ITEMGET 44
|1EF2D1| JSR ShopItem_HandleReceipt

.exit
|1EF2D4| RTS

;===================================================================================================

TooMuchAmmo:
|1EF2D5| LDA.b #$6C ; MESSAGE 016C
|1EF2D7| LDY.b #$01
|1EF2D9| JSL ShowSolicitedMessage

|1EF2DD| JSR ShopItem_PlayBeep

|1EF2E0| RTS

;===================================================================================================

RejectMunitionsPurchase:
|1EF2E1| JMP.w ShopItem_GiveFailureMessage

;===================================================================================================

ShopItem_Bombs:
|1EF2E4| JSR SpriteDraw_ShopItem
|1EF2E7| JSR CheckIfActive_bank1E
|1EF2EA| JSL BehaveAsBarrier

|1EF2EE| JSR ShopItem_CheckForAPress
|1EF2F1| BCC .exit

|1EF2F3| LDA.l $7EF370
|1EF2F7| PHX
|1EF2F8| TAX

|1EF2F9| LDA.l CapacityUpgrades.bombs_hex,X

|1EF2FD| PLX

|1EF2FE| CMP.l $7EF343
|1EF302| BEQ TooMuchAmmo

; 50 rupees
|1EF304| LDA.b #$32
|1EF306| LDY.b #$00
|1EF308| JSR ShopItem_HandleCost
|1EF30B| BCC RejectMunitionsPurchase

|1EF30D| STZ.w $0DD0,X

|1EF310| LDY.b #$31 ; ITEMGET 31
|1EF312| JSR ShopItem_HandleReceipt

.exit
|1EF315| RTS

;===================================================================================================

ShopItem_Bee:
|1EF316| JSR SpriteDraw_ShopItem
|1EF319| JSR CheckIfActive_bank1E
|1EF31C| JSL BehaveAsBarrier

|1EF320| JSR ShopItem_CheckForAPress
|1EF323| BCC .exit

|1EF325| JSL FindEmptyBottle
|1EF329| BMI .no_empty_bottle

; 10 rupees
|1EF32B| LDA.b #$0A
|1EF32D| LDY.b #$00
|1EF32F| JSR ShopItem_HandleCost
|1EF332| BCC .too_poor

|1EF334| STZ.w $0DD0,X

|1EF337| LDY.b #$0E ; ITEMGET 0E
|1EF339| JSR ShopItem_HandleReceipt

.exit
|1EF33C| RTS

.no_empty_bottle
|1EF33D| LDA.b #$6B ; MESSAGE 016B
|1EF33F| LDY.b #$01
|1EF341| JSL ShowMessageUnconditional

|1EF345| JSR ShopItem_PlayBeep

|1EF348| RTS

.too_poor
|1EF349| JMP.w ShopItem_GiveFailureMessage

;===================================================================================================

pool ShopItem_HandleReceipt

.message_low
|1EF34C| db $66 ; MESSAGE 0166
|1EF34D| db $65 ; MESSAGE 0165
|1EF34E| db $65 ; MESSAGE 0165
|1EF34F| db $6A ; MESSAGE 016A
|1EF350| db $67 ; MESSAGE 0167
|1EF351| db $68 ; MESSAGE 0168
|1EF352| db $69 ; MESSAGE 0169

.message_high
|1EF353| db $01
|1EF354| db $01
|1EF355| db $01
|1EF356| db $01
|1EF357| db $01
|1EF358| db $01
|1EF359| db $01

endpool

;---------------------------------------------------------------------------------------------------

ShopItem_HandleReceipt:
|1EF35A| STZ.w $02E9

|1EF35D| PHX

|1EF35E| JSL GrantItemReceipt

|1EF362| PLX

|1EF363| LDA.w $0E80,X
|1EF366| SEC
|1EF367| SBC.b #$07
|1EF369| BMI .exit

|1EF36B| TAY

|1EF36C| LDA.w .message_low,Y
|1EF36F| XBA

|1EF370| LDA.w .message_high,Y
|1EF373| TAY

|1EF374| XBA

|1EF375| JSL ShowMessageUnconditional
|1EF379| JSL RushToTerminateReceiveItem

.exit
|1EF37D| RTS

;===================================================================================================

ShopItem_PlayBeep:
|1EF37E| LDA.b #$3C ; SFX2.3C
|1EF380| JSL QueueSpriteSFX2WithPan

|1EF384| RTS

;===================================================================================================
; Return in carry flag:
;   0 - no attempt or too far
;   1 - purchase attempt
;===================================================================================================
ShopItem_CheckForAPress:
|1EF385| LDA.b $F6
|1EF387| BPL .no_interaction

|1EF389| JSL CheckDamageToLink_same_layer_long

; Useless
; The carry is already clear, so just exit.
|1EF38D| BCC .no_interaction

|1EF38F| RTS

.no_interaction
|1EF390| CLC

|1EF391| RTS

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
|1EF392| STA.b $00
|1EF394| STY.b $01

|1EF396| REP #$20

|1EF398| LDA.l $7EF360
|1EF39C| CMP.b $00
|1EF39E| BCC .too_poor

|1EF3A0| SBC.b $00
|1EF3A2| STA.l $7EF360

|1EF3A6| SEC

.too_poor
|1EF3A7| SEP #$30

|1EF3A9| RTS

;===================================================================================================

pool SpriteDraw_ShopItem

.oam_groups
; Red potion
|1EF3AA| dw  -4,  16 : db $31, $02, $00, $00 ; 1
|1EF3B2| dw   4,  16 : db $13, $02, $00, $00 ; 5
|1EF3BA| dw  12,  16 : db $30, $02, $00, $00 ; 0
|1EF3C2| dw   0,   0 : db $C0, $02, $00, $02 ; item
|1EF3CA| dw   0,  11 : db $6C, $03, $00, $02 ; shadow

; Fighter shield
|1EF3D2| dw   0,  16 : db $13, $02, $00, $00 ; 5
|1EF3DA| dw   0,  16 : db $13, $02, $00, $00 ; 5
|1EF3E2| dw   8,  16 : db $30, $02, $00, $00 ; 0
|1EF3EA| dw   0,   0 : db $CE, $04, $00, $02 ; item
|1EF3F2| dw   4,  12 : db $38, $03, $00, $00 ; shadow

; Fire shield
|1EF3FA| dw  -4,  16 : db $13, $02, $00, $00 ; 5
|1EF402| dw   4,  16 : db $30, $02, $00, $00 ; 0
|1EF40A| dw  12,  16 : db $30, $02, $00, $00 ; 0
|1EF412| dw   0,   0 : db $CC, $08, $00, $02 ; item
|1EF41A| dw   4,  12 : db $38, $03, $00, $00 ; shadow

; Heart
|1EF422| dw   0,  16 : db $31, $02, $00, $00 ; 1
|1EF42A| dw   0,  16 : db $31, $02, $00, $00 ; 1
|1EF432| dw   8,  16 : db $30, $02, $00, $00 ; 0
|1EF43A| dw   4,   8 : db $29, $03, $00, $00 ; item
|1EF442| dw   4,  11 : db $38, $03, $00, $00 ; shadow

; Arrows
|1EF44A| dw  -4,  16 : db $03, $02, $00, $00 ; 3
|1EF452| dw  -4,  16 : db $03, $02, $00, $00 ; 3
|1EF45A| dw   4,  16 : db $30, $02, $00, $00 ; 0
|1EF462| dw   0,   0 : db $C4, $04, $00, $02 ; item
|1EF46A| dw   0,  11 : db $38, $03, $00, $00 ; shadow

; Bombs
|1EF472| dw   0,  16 : db $13, $02, $00, $00 ; 5
|1EF47A| dw   0,  16 : db $13, $02, $00, $00 ; 5
|1EF482| dw   8,  16 : db $30, $02, $00, $00 ; 0
|1EF48A| dw   0,   0 : db $E8, $04, $00, $02 ; item
|1EF492| dw   0,  11 : db $6C, $03, $00, $02 ; shadow

; Bee
|1EF49A| dw   0,  16 : db $31, $02, $00, $00 ; 1
|1EF4A2| dw   0,  16 : db $31, $02, $00, $00 ; 1
|1EF4AA| dw   8,  16 : db $30, $02, $00, $00 ; 0
|1EF4B2| dw   4,   8 : db $F4, $0F, $00, $00 ; item
|1EF4BA| dw   4,  11 : db $38, $03, $00, $00 ; shadow

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_ShopItem:
|1EF4C2| LDA.w $0E80,X
|1EF4C5| SEC
|1EF4C6| SBC.b #$07

|1EF4C8| REP #$20

|1EF4CA| AND.w #$00FF
|1EF4CD| STA.b $00

|1EF4CF| ASL A
|1EF4D0| ASL A
|1EF4D1| ADC.b $00

|1EF4D3| ASL A
|1EF4D4| ASL A
|1EF4D5| ASL A
|1EF4D6| ADC.w #.oam_groups
|1EF4D9| STA.b $08

|1EF4DB| LDA.w #$0005
|1EF4DE| STA.b $06

|1EF4E0| SEP #$30

|1EF4E2| JSL TabulatedSpriteDraw.player_deferred

|1EF4E6| RTS

;===================================================================================================

BehaveAsBarrier:
|1EF4E7| LDA.w $0F60,X
|1EF4EA| PHA

|1EF4EB| STZ.w $0F60,X

|1EF4EE| JSL CheckDamageToLink_same_layer_long
|1EF4F2| BCC .no_collision

|1EF4F4| JSR HaltAllMovement

.no_collision
|1EF4F7| PLA
|1EF4F8| STA.w $0F60,X

|1EF4FB| RTL

;===================================================================================================

HaltAllMovement:
|1EF4FC| PHX

|1EF4FD| JSL AbortMovement

|1EF501| STZ.b $5E

|1EF503| JSL CancelDash_long

|1EF507| PLX

|1EF508| RTS

;===================================================================================================

Sprite_AC_Apple:
|1EF509| LDA.w $0D80,X
|1EF50C| BNE Apple

;===================================================================================================

ApplesInTree:
|1EF50E| LDA.w $0E90,X
|1EF511| BNE .exit

|1EF513| STZ.w $0DD0,X

|1EF516| JSL GetRandomNumber
|1EF51A| AND.b #$03
|1EF51C| CLC

|1EF51D| ADC.b #$02
|1EF51F| TAY

.next_apple
|1EF520| PHY

|1EF521| JSR SpawnApple

|1EF524| PLY
|1EF525| DEY
|1EF526| BPL .next_apple

.exit
|1EF528| RTS

;===================================================================================================

SpawnApple:
|1EF529| LDA.b #$AC ; SPRITE AC
|1EF52B| JSL SpawnSpriteDynamically
|1EF52F| BMI .exit

|1EF531| JSL SetSpawnedSpriteCoordinates

|1EF535| LDA.b #$01
|1EF537| STA.w $0D80,Y

|1EF53A| LDA.b #$FF
|1EF53C| STA.w $0D90,Y

|1EF53F| LDA.b #$08
|1EF541| STA.w $0F70,Y

|1EF544| LDA.b #$16
|1EF546| STA.w $0F80,Y

|1EF549| JSL GetRandomNumber
|1EF54D| STA.b $04

|1EF54F| LDA.b $01
|1EF551| STA.b $05

|1EF553| JSL GetRandomNumber
|1EF557| STA.b $06

|1EF559| LDA.b $03
|1EF55B| STA.b $07

|1EF55D| LDA.b #$0A
|1EF55F| JSL ProjectSpriteSpeedTowardsLocation_long

|1EF563| LDA.b $00
|1EF565| STA.w $0D40,Y

|1EF568| LDA.b $01
|1EF56A| STA.w $0D50,Y

.exit
|1EF56D| RTS

;===================================================================================================

pool Apple

.speed
|1EF56E| db -1,  1

endpool

;---------------------------------------------------------------------------------------------------

Apple:
|1EF570| LDA.w $0D90,X
|1EF573| CMP.b #$10
|1EF575| BCS .no_flicker

|1EF577| LDA.b $1A
|1EF579| AND.b #$02
|1EF57B| BEQ .flicker_off

.no_flicker
|1EF57D| JSL SpriteDraw_SingleLarge_long

.flicker_off
|1EF581| JSR CheckIfActive_bank1E

|1EF584| LDA.w $0D90,X
|1EF587| BEQ .rot

|1EF589| JSR MoveSpriteXYZ_bank1E
|1EF58C| JSR CheckDamageToLink_bank1E
|1EF58F| BCC .not_collected

|1EF591| LDA.b #$0B ; SFX3.0B
|1EF593| JSL QueueSpriteSFX3WithPan

; +1 heart of health
|1EF597| LDA.l $7EF372
|1EF59B| CLC
|1EF59C| ADC.b #$08
|1EF59E| STA.l $7EF372

.rot
|1EF5A2| STZ.w $0DD0,X

|1EF5A5| RTS

;---------------------------------------------------------------------------------------------------

.not_collected
|1EF5A6| LDA.b $1A
|1EF5A8| AND.b #$01
|1EF5AA| BNE .dont_tick_timer

|1EF5AC| DEC.w $0D90,X

.dont_tick_timer
|1EF5AF| LDA.w $0F70,X
|1EF5B2| DEC A
|1EF5B3| BPL .airborne

|1EF5B5| STZ.w $0F70,X

|1EF5B8| LDA.w $0F80,X
|1EF5BB| BMI .hit_ground

|1EF5BD| LDA.b #$00

;---------------------------------------------------------------------------------------------------

.hit_ground
|1EF5BF| EOR.b #$FF
|1EF5C1| INC A
|1EF5C2| LSR A
|1EF5C3| STA.w $0F80,X

|1EF5C6| LDA.w $0D50,X
|1EF5C9| BEQ .x_speed_at_0

|1EF5CB| PHA

|1EF5CC| ASL A
|1EF5CD| LDA.b #$00
|1EF5CF| ROL A
|1EF5D0| TAY

|1EF5D1| PLA
|1EF5D2| CLC
|1EF5D3| ADC.w .speed,Y
|1EF5D6| STA.w $0D50,X

.x_speed_at_0
|1EF5D9| LDA.w $0D40,X
|1EF5DC| BEQ .exit

|1EF5DE| PHA

|1EF5DF| ASL A
|1EF5E0| LDA.b #$00
|1EF5E2| ROL A
|1EF5E3| TAY

|1EF5E4| PLA
|1EF5E5| CLC
|1EF5E6| ADC.w .speed,Y
|1EF5E9| STA.w $0D40,X

.exit
|1EF5EC| RTS

;---------------------------------------------------------------------------------------------------

.airborne
|1EF5ED| LDA.w $0F80,X
|1EF5F0| SEC
|1EF5F1| SBC.b #$01
|1EF5F3| STA.w $0F80,X

|1EF5F6| RTS

;===================================================================================================

Sprite_BC_Drunkard:
|1EF5F7| JSL SpriteDraw_Drunkard
|1EF5FB| JSR CheckIfActive_bank1E
|1EF5FE| JSL BehaveAsBarrier
|1EF602| JSL GetRandomNumber
|1EF606| BNE .skip_timer

|1EF608| LDA.b #$20
|1EF60A| STA.w $0DF0,X

.skip_timer
|1EF60D| STZ.w $0DC0,X

|1EF610| LDA.w $0DF0,X
|1EF613| BEQ .animating

|1EF615| INC.w $0DC0,X

.animating
|1EF618| LDA.b #$73 ; MESSAGE 0173
|1EF61A| LDY.b #$01
|1EF61C| JSL ShowSolicitedMessage
|1EF620| BCC .exit

|1EF622| STZ.w $0DC0,X

.exit
|1EF625| RTS

;===================================================================================================

Pipe_LocatePath:
|1EF626| LDA.b #$FF
|1EF628| STA.w $1DE0

|1EF62B| LDA.w $0E20,X
|1EF62E| SEC
|1EF62F| SBC.b #$AE
|1EF631| STA.w $0DE0,X

;===================================================================================================

SomariaPlatform_LocatePath:

.next
|1EF634| JSR SomariaPlatformAndPipe_CheckTile

|1EF637| STA.w $0E90,X

|1EF63A| SEC
|1EF63B| SBC.b #$B0 ; TILETYPE B0
|1EF63D| BCS .upper_tile

.not_pipe
|1EF63F| LDA.w $0D10,X
|1EF642| CLC
|1EF643| ADC.b #$08
|1EF645| STA.w $0D10,X

|1EF648| LDA.w $0D30,X
|1EF64B| ADC.b #$00
|1EF64D| STA.w $0D30,X

|1EF650| LDA.w $0D00,X
|1EF653| CLC
|1EF654| ADC.b #$08
|1EF656| STA.w $0D00,X

|1EF659| LDA.w $0D20,X
|1EF65C| ADC.b #$00
|1EF65E| STA.w $0D20,X

|1EF661| BRA .next

;---------------------------------------------------------------------------------------------------

.upper_tile
|1EF663| CMP.b #$0F ; TILETYPE BF
|1EF665| BCS .not_pipe

|1EF667| LDA.w $0D10,X
|1EF66A| AND.b #$F8
|1EF66C| CLC
|1EF66D| ADC.b #$04
|1EF66F| STA.w $0D10,X

|1EF672| LDA.w $0D00,X
|1EF675| AND.b #$F8
|1EF677| CLC
|1EF678| ADC.b #$04
|1EF67A| STA.w $0D00,X

|1EF67D| LDA.w $0DE0,X
|1EF680| STA.w $0EB0,X

|1EF683| JSR SomariaPlatformAndPipe_HandleMovement

|1EF686| INC.w $0BA0,X

|1EF689| STZ.w $02F5

|1EF68C| LDA.b #$0E
|1EF68E| STA.w $0F10,X

|1EF691| INC.w $0DC0,X

|1EF694| RTS

;===================================================================================================

SomariaPlatformAndPipe:
|1EF695| PHB
|1EF696| PHK
|1EF697| PLB

|1EF698| JSR .main

|1EF69B| PLB

|1EF69C| RTL

;---------------------------------------------------------------------------------------------------

.speed_x
|1EF69D| db   0,   0, -16,  16
|1EF6A1| db -16,  16,  16

.speed_y
|1EF6A4| db -16,  16,   0,   0
|1EF6A8| db -16,  16, -16,  16

;---------------------------------------------------------------------------------------------------

.drag_x_high
|1EF6AC| db $00, $00, $FF, $00, $FF

.drag_x_low
|1EF6B1| db $00, $00, $FF, $01, $FF, $01, $01

.drag_y_low
|1EF6B8| db $FF, $01, $00, $00, $FF, $01, $FF, $01

.drag_y_high
|1EF6C0| db $FF, $00, $00, $00, $FF, $00, $FF, $00

;---------------------------------------------------------------------------------------------------

.main
|1EF6C8| LDA.w $0DC0,X
|1EF6CB| JSL JumpTableLocal
|1EF6CF| dw SomariaPlatform_Spawn
|1EF6D1| dw SomariaPlatformAndPipe_Main

;===================================================================================================

SomariaPlatform_Spawn:
|1EF6D3| JSR SomariaPlatform_LocatePath
|1EF6D6| JSL SpawnSuperficialExplosion

|1EF6DA| LDA.w $0D10,Y
|1EF6DD| SEC
|1EF6DE| SBC.b #$08
|1EF6E0| STA.w $0D10,Y

|1EF6E3| LDA.w $0D30,Y
|1EF6E6| SBC.b #$00
|1EF6E8| STA.w $0D30,Y

|1EF6EB| LDA.w $0D00,Y
|1EF6EE| SEC
|1EF6EF| SBC.b #$08
|1EF6F1| STA.w $0D00,Y

|1EF6F4| LDA.w $0D20,Y
|1EF6F7| SBC.b #$00
|1EF6F9| STA.w $0D20,Y

|1EF6FC| RTS

;===================================================================================================

SomariaPlatformAndPipe_Main:
|1EF6FD| JSR SpriteDraw_SomariaPlatform
|1EF700| JSR CheckIfActive_bank1E

|1EF703| LDA.w $0B7C
|1EF706| ORA.w $0B7D
|1EF709| ORA.w $0B7E
|1EF70C| ORA.w $0B7F
|1EF70F| BEQ .not_dragging

.is_inactive
|1EF711| JMP.w SomariaPlatform_Inactive

.not_dragging
|1EF714| LDA.b $5B
|1EF716| DEC A
|1EF717| DEC A
|1EF718| BPL .is_inactive

|1EF71A| JSL CheckDamageToLink_ignore_layer_long
|1EF71E| BCC SomariaPlatform_Inactive

|1EF720| LDA.b #$01
|1EF722| STA.w $0DB0,X
|1EF725| JSL CancelDash_long

|1EF729| LDA.b $5D
|1EF72B| CMP.b #$13 ; LINKSTATE 13
|1EF72D| BEQ SomariaPlatform_Inactive

|1EF72F| CMP.b #$03 ; LINKSTATE 03
|1EF731| BEQ SomariaPlatform_Inactive

|1EF733| LDA.w $0D80,X
|1EF736| BNE SomariaPlatformAndPipe_HandleMovement

|1EF738| INC.w $0D90,X

|1EF73B| LDA.b #$02
|1EF73D| STA.w $02F5

|1EF740| LDA.w $0D90,X
|1EF743| AND.b #$07
|1EF745| BNE .skip_movement

|1EF747| JSR SomariaPlatformAndPipe_CheckTile

|1EF74A| CMP.w $0E90,X
|1EF74D| BEQ .skip_movement

|1EF74F| STA.w $0E90,X

|1EF752| LDA.w $0DE0,X
|1EF755| STA.w $0EB0,X

|1EF758| JSR SomariaPlatformAndPipe_HandleMovement
|1EF75B| JSR SomariaPlatform_HandleDrag

.skip_movement
; [HARDCODED] check for room 0024 to skip drag.
; Since it's a lone question mark.
|1EF75E| LDA.b $A0
|1EF760| CMP.b #$24 ; ROOM 0024
|1EF762| BEQ .not_big_chest

|1EF764| LDY.w $0DE0,X

|1EF767| LDA.w SomariaPlatformAndPipe.drag_x_low,Y
|1EF76A| CLC
|1EF76B| ADC.w $0B7C
|1EF76E| STA.w $0B7C

|1EF771| LDA.w SomariaPlatformAndPipe.drag_x_high,Y
|1EF774| ADC.w $0B7D
|1EF777| STA.w $0B7D

|1EF77A| LDA.w SomariaPlatformAndPipe.drag_y_low,Y
|1EF77D| CLC
|1EF77E| ADC.w $0B7E
|1EF781| STA.w $0B7E

|1EF784| LDA.w SomariaPlatformAndPipe.drag_y_high,Y
|1EF787| ADC.w $0B7F
|1EF78A| STA.w $0B7F

|1EF78D| JSR MoveSpriteXY_bank1E
|1EF790| JSR SomariaPlatform_DragLink

|1EF793| RTS

.not_big_chest
|1EF794| JMP.w SomariaPlatform_EnableDragging

;===================================================================================================

SomariaPlatform_Inactive:
|1EF797| LDA.w $0DB0,X
|1EF79A| BEQ .exit

|1EF79C| STZ.w $02F5
|1EF79F| STZ.w $0DB0,X

.exit
|1EF7A2| RTS

;===================================================================================================

SomariaPlatformAndPipe_HandleMovement:
|1EF7A3| JSR SomariaPlatform_HandleTile

|1EF7A6| LDY.w $0DE0,X

|1EF7A9| LDA.w SomariaPlatformAndPipe.speed_x,Y
|1EF7AC| STA.w $0D50,X

|1EF7AF| LDA.w SomariaPlatformAndPipe.speed_y,Y
|1EF7B2| STA.w $0D40,X

|1EF7B5| RTS

;===================================================================================================

SomariaPlatformAndPipe_CheckTile:
|1EF7B6| LDA.w $0D00,X
|1EF7B9| STA.b $00

|1EF7BB| LDA.w $0D20,X
|1EF7BE| STA.b $01

|1EF7C0| LDA.w $0D10,X
|1EF7C3| STA.b $02

|1EF7C5| LDA.w $0D30,X
|1EF7C8| STA.b $03

|1EF7CA| LDA.b #$00
|1EF7CC| JSL GetTileType_long

|1EF7D0| LDA.w $0FA5

|1EF7D3| RTS

;===================================================================================================

pool SpriteDraw_SomariaPlatform

.oam_groups
; group00
|1EF7D4| dw -16, -16 : db $AC, $00, $00, $02
|1EF7DC| dw   0, -16 : db $AC, $40, $00, $02
|1EF7E4| dw -16,   0 : db $AC, $80, $00, $02
|1EF7EC| dw   0,   0 : db $AC, $C0, $00, $02

; group01
|1EF7F4| dw -13, -13 : db $AC, $00, $00, $02
|1EF7FC| dw  -3, -13 : db $AC, $40, $00, $02
|1EF804| dw -13,  -3 : db $AC, $80, $00, $02
|1EF80C| dw  -3,  -3 : db $AC, $C0, $00, $02

; group02
|1EF814| dw -10, -10 : db $AC, $00, $00, $02
|1EF81C| dw  -6, -10 : db $AC, $40, $00, $02
|1EF824| dw -10,  -6 : db $AC, $80, $00, $02
|1EF82C| dw  -6,  -6 : db $AC, $C0, $00, $02

; group03
|1EF834| dw  -8,  -8 : db $AC, $00, $00, $02
|1EF83C| dw  -8,  -8 : db $AC, $40, $00, $02
|1EF844| dw  -8,  -8 : db $AC, $80, $00, $02
|1EF84C| dw  -8,  -8 : db $AC, $C0, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_SomariaPlatform:
|1EF854| LDA.b #$10
|1EF856| JSL AllocateOAMInRegionB

|1EF85A| LDA.w $0F10,X
|1EF85D| AND.b #$0C
|1EF85F| ASL A
|1EF860| ASL A
|1EF861| ASL A

|1EF862| ADC.b #<.oam_groups
|1EF864| STA.b $08

|1EF866| LDA.b #>.oam_groups
|1EF868| ADC.b #$00
|1EF86A| STA.b $09

|1EF86C| LDA.b #$04
|1EF86E| JMP.w TabulatedSpriteDraw_bank1E

;===================================================================================================

SomariaPlatform_HandleTile:
|1EF871| LDA.w $0E90,X
|1EF874| SEC
|1EF875| SBC.b #$B0
|1EF877| BCS .possibly_valid_tile

|1EF879| RTS

.possibly_valid_tile
|1EF87A| CMP.b #$0F
|1EF87C| BCC .valid_tile

|1EF87E| RTS

;---------------------------------------------------------------------------------------------------

.valid_tile
|1EF87F| JSL JumpTableLocal
|1EF883| dw SomariaPlatform_HandleDoNothing
|1EF885| dw SomariaPlatform_HandleDoNothing
|1EF887| dw SomariaPlatform_HandleRisingSlope
|1EF889| dw SomariaPlatform_HandleFallingSlope
|1EF88B| dw SomariaPlatform_HandleFallingSlope
|1EF88D| dw SomariaPlatform_HandleRisingSlope
|1EF88F| dw SomariaPlatform_HandleTJunctionDLR
|1EF891| dw SomariaPlatform_HandleTJunctionULR
|1EF893| dw SomariaPlatform_HandleTJunctionUDR
|1EF895| dw SomariaPlatform_HandleTJunctionUDL
|1EF897| dw SomariaPlatform_Handle4WayJunction
|1EF899| dw SomariaPlatform_HandleCrossOver
|1EF89B| dw SomariaPlatform_HandleUnknown
|1EF89D| dw SomariaPlatform_HandleDoNothing
|1EF89F| dw SomariaPlatform_HandleStation

;===================================================================================================

SomariaPlatform_HandleDragX:
|1EF8A1| LDA.w $0DE0,X
|1EF8A4| EOR.w $0EB0,X
|1EF8A7| AND.b #$02
|1EF8A9| BEQ .exit

|1EF8AB| LDA.w $0D10,X
|1EF8AE| AND.b #$F8

|1EF8B0| CLC
|1EF8B1| ADC.b #$04
|1EF8B3| STA.b $00

|1EF8B5| SEC
|1EF8B6| SBC.w $0D10,X
|1EF8B9| BEQ .exit

|1EF8BB| STA.w $0B7C
|1EF8BE| BPL .positive

|1EF8C0| LDA.b #$FF
|1EF8C2| STA.w $0B7D

.positive
|1EF8C5| LDA.b $00
|1EF8C7| STA.w $0D10,X

.exit
|1EF8CA| RTS

;===================================================================================================

SomariaPlatform_HandleDragY:
|1EF8CB| LDA.w $0DE0,X
|1EF8CE| EOR.w $0EB0,X
|1EF8D1| AND.b #$02
|1EF8D3| BEQ .exit

|1EF8D5| LDA.w $0D00,X
|1EF8D8| AND.b #$F8

|1EF8DA| CLC
|1EF8DB| ADC.b #$04
|1EF8DD| STA.b $00

|1EF8DF| SEC
|1EF8E0| SBC.w $0D00,X
|1EF8E3| BEQ .exit

|1EF8E5| STA.w $0B7E
|1EF8E8| BPL .positive

|1EF8EA| LDA.b #$FF
|1EF8EC| STA.w $0B7F

.positive
|1EF8EF| LDA.b $00
|1EF8F1| STA.w $0D00,X

.exit
|1EF8F4| RTS

;===================================================================================================

SomariaPlatform_HandleDrag:
|1EF8F5| JSR SomariaPlatform_HandleDragX
|1EF8F8| JSR SomariaPlatform_HandleDragY

|1EF8FB| RTS

;===================================================================================================

SomariaPlatform_HandleDoNothing:
|1EF8FC| RTS

;===================================================================================================

SomariaPlatform_HandleRisingSlope:
|1EF8FD| LDA.w $0DE0,X
|1EF900| EOR.b #$03
|1EF902| STA.w $0DE0,X

|1EF905| RTS

;===================================================================================================

SomariaPlatform_HandleFallingSlope:
|1EF906| LDA.w $0DE0,X
|1EF909| EOR.b #$02
|1EF90B| STA.w $0DE0,X

|1EF90E| RTS

;===================================================================================================

pool SomariaPlatform_HandleTJunctionDLR

.dpad_press
|1EF90F| db $04, $08, $01, $02

endpool

;---------------------------------------------------------------------------------------------------

SomariaPlatform_HandleTJunctionDLR:
|1EF913| LDA.b #$01
|1EF915| STA.w $0D80,X

|1EF918| LDA.b $4D
|1EF91A| BNE .continue

|1EF91C| LDY.w $0DE0,X

|1EF91F| LDA.b $F0
|1EF921| AND.w .dpad_press,Y
|1EF924| BEQ .continue

|1EF926| STZ.w $0D80,X

|1EF929| LDA.w $0DE0,X
|1EF92C| EOR.b #$01
|1EF92E| STA.w $0DE0,X

.continue
|1EF931| STZ.b $4B

|1EF933| JMP.w SomariaPlatform_EnableDragging

;===================================================================================================

pool SomariaPlatform_HandleTJunctionULR

.dpad_press
|1EF936| db $03, $07, $06, $05

endpool

;---------------------------------------------------------------------------------------------------

SomariaPlatform_HandleTJunctionULR:
|1EF93A| LDA.b #$01
|1EF93C| STA.w $0D80,X

|1EF93F| LDY.w $0DE0,X

|1EF942| LDA.b $F0
|1EF944| AND.w .dpad_press,Y
|1EF947| STA.b $00

|1EF949| AND.b #$08
|1EF94B| BEQ .not_up_press

|1EF94D| LDA.b #$00
|1EF94F| STA.w $0DE0,X

|1EF952| STZ.w $0D80,X
|1EF955| BRA .exit

.not_up_press
|1EF957| LDA.b $00
|1EF959| AND.b #$04
|1EF95B| BEQ .not_down_press

|1EF95D| LDA.b #$01
|1EF95F| STA.w $0DE0,X

|1EF962| STZ.w $0D80,X
|1EF965| BRA .exit

.not_down_press
|1EF967| LDA.b $00
|1EF969| AND.b #$02
|1EF96B| BEQ .not_left_press

|1EF96D| LDA.b #$02
|1EF96F| STA.w $0DE0,X

|1EF972| STZ.w $0D80,X
|1EF975| BRA .exit

.not_left_press
|1EF977| LDA.b $00
|1EF979| AND.b #$01
|1EF97B| BEQ .not_right_press

|1EF97D| LDA.b #$03
|1EF97F| STA.w $0DE0,X

|1EF982| STZ.w $0D80,X

.not_right_press
|1EF985| LDA.w $0DE0,X
|1EF988| BNE .set_direction

|1EF98A| LDA.b #$02
|1EF98C| STA.w $0DE0,X

.set_direction
|1EF98F| STZ.w $0D80,X

.exit
|1EF992| RTS

;===================================================================================================

pool SomariaPlatform_HandleTJunctionUDR

.dpad_press
|1EF993| db $0B, $03, $0A, $09

endpool

;---------------------------------------------------------------------------------------------------

SomariaPlatform_HandleTJunctionUDR:
|1EF997| LDA.b #$01
|1EF999| STA.w $0D80,X

|1EF99C| LDY.w $0DE0,X

|1EF99F| LDA.b $F0
|1EF9A1| AND.w .dpad_press,Y
|1EF9A4| STA.b $00

|1EF9A6| AND.b #$08
|1EF9A8| BEQ .not_up_press

|1EF9AA| LDA.b #$00
|1EF9AC| STA.w $0DE0,X

|1EF9AF| STZ.w $0D80,X
|1EF9B2| BRA .exit

.not_up_press
|1EF9B4| LDA.b $00
|1EF9B6| AND.b #$04
|1EF9B8| BEQ .not_down_press

|1EF9BA| LDA.b #$01
|1EF9BC| STA.w $0DE0,X

|1EF9BF| STZ.w $0D80,X
|1EF9C2| BRA .exit

.not_down_press
|1EF9C4| LDA.b $00
|1EF9C6| AND.b #$02
|1EF9C8| BEQ .not_left_press

|1EF9CA| LDA.b #$02
|1EF9CC| STA.w $0DE0,X

|1EF9CF| STZ.w $0D80,X
|1EF9D2| BRA .exit

.not_left_press
|1EF9D4| LDA.b $00
|1EF9D6| AND.b #$01
|1EF9D8| BEQ .not_right_press

|1EF9DA| LDA.b #$03
|1EF9DC| STA.w $0DE0,X

|1EF9DF| STZ.w $0D80,X

.not_right_press
|1EF9E2| LDA.w $0DE0,X
|1EF9E5| CMP.b #$01
|1EF9E7| BNE .set_direction

|1EF9E9| LDA.b #$02
|1EF9EB| STA.w $0DE0,X

.set_direction
|1EF9EE| STZ.w $0D80,X

.exit
|1EF9F1| RTS

;===================================================================================================

pool SomariaPlatform_HandleTJunctionUDL

.dpad_press
|1EF9F2| db $09, $05, $0C, $0D

endpool

;---------------------------------------------------------------------------------------------------

SomariaPlatform_HandleTJunctionUDL:
|1EF9F6| LDA.b #$01
|1EF9F8| STA.w $0D80,X

|1EF9FB| LDY.w $0DE0,X

|1EF9FE| LDA.b $F0
|1EFA00| AND.w .dpad_press,Y
|1EFA03| STA.b $00

|1EFA05| AND.b #$08
|1EFA07| BEQ .not_up_press

|1EFA09| LDA.b #$00
|1EFA0B| STA.w $0DE0,X

|1EFA0E| STZ.w $0D80,X
|1EFA11| BRA .exit

.not_up_press
|1EFA13| LDA.b $00
|1EFA15| AND.b #$04
|1EFA17| BEQ .not_down_press

|1EFA19| LDA.b #$01
|1EFA1B| STA.w $0DE0,X

|1EFA1E| STZ.w $0D80,X
|1EFA21| BRA .exit

.not_down_press
|1EFA23| LDA.b $00
|1EFA25| AND.b #$02
|1EFA27| BEQ .not_left_press

|1EFA29| LDA.b #$02
|1EFA2B| STA.w $0DE0,X

|1EFA2E| STZ.w $0D80,X
|1EFA31| BRA .exit

.not_left_press
|1EFA33| LDA.b $00
|1EFA35| AND.b #$01
|1EFA37| BEQ .not_right_press

|1EFA39| LDA.b #$03
|1EFA3B| STA.w $0DE0,X

|1EFA3E| STZ.w $0D80,X

.not_right_press
|1EFA41| LDA.w $0DE0,X
|1EFA44| CMP.b #$02
|1EFA46| BNE .set_direction

|1EFA48| LDA.b #$00
|1EFA4A| STA.w $0DE0,X

.set_direction
|1EFA4D| STZ.w $0D80,X

.exit
|1EFA50| RTS

;===================================================================================================

pool SomariaPlatform_Handle4WayJunction

.dpad_press
|1EFA51| db $0A, $06, $0E, $0C

endpool

;---------------------------------------------------------------------------------------------------

SomariaPlatform_Handle4WayJunction:
|1EFA55| LDA.b #$01
|1EFA57| STA.w $0D80,X

|1EFA5A| LDY.w $0DE0,X

|1EFA5D| LDA.b $F0
|1EFA5F| AND.w .dpad_press,Y
|1EFA62| STA.b $00

|1EFA64| AND.b #$08
|1EFA66| BEQ .not_up_press

|1EFA68| LDA.b #$00
|1EFA6A| STA.w $0DE0,X

|1EFA6D| STZ.w $0D80,X
|1EFA70| BRA .exit

.not_up_press
|1EFA72| LDA.b $00
|1EFA74| AND.b #$04
|1EFA76| BEQ .not_down_press

|1EFA78| LDA.b #$01
|1EFA7A| STA.w $0DE0,X

|1EFA7D| STZ.w $0D80,X
|1EFA80| BRA .exit

.not_down_press
|1EFA82| LDA.b $00
|1EFA84| AND.b #$02
|1EFA86| BEQ .not_left_press

|1EFA88| LDA.b #$02
|1EFA8A| STA.w $0DE0,X

|1EFA8D| STZ.w $0D80,X
|1EFA90| BRA .exit

.not_left_press
|1EFA92| LDA.b $00
|1EFA94| AND.b #$01
|1EFA96| BEQ .not_right_press

|1EFA98| LDA.b #$03
|1EFA9A| STA.w $0DE0,X

|1EFA9D| STZ.w $0D80,X

.not_right_press
|1EFAA0| LDA.w $0DE0,X
|1EFAA3| CMP.b #$03
|1EFAA5| BNE .set_direction

|1EFAA7| LDA.b #$00
|1EFAA9| STA.w $0DE0,X

.set_direction
|1EFAAC| STZ.w $0D80,X

.exit
|1EFAAF| RTS

;===================================================================================================

pool SomariaPlatform_HandleCrossOver

.dpad_press
|1EFAB0| db $0B, $07, $0E, $0D

endpool

;---------------------------------------------------------------------------------------------------

SomariaPlatform_HandleCrossOver:
|1EFAB4| LDY.w $0DE0,X

|1EFAB7| LDA.b $F0
|1EFAB9| AND.w .dpad_press,Y
|1EFABC| STA.b $00

|1EFABE| AND.b #$08
|1EFAC0| BEQ .not_up_press

|1EFAC2| LDA.b #$00
|1EFAC4| STA.w $0DE0,X
|1EFAC7| BRA .exit

.not_up_press
|1EFAC9| LDA.b $00
|1EFACB| AND.b #$04
|1EFACD| BEQ .not_down_press

|1EFACF| LDA.b #$01
|1EFAD1| STA.w $0DE0,X
|1EFAD4| BRA .exit

.not_down_press
|1EFAD6| LDA.b $00
|1EFAD8| AND.b #$02
|1EFADA| BEQ .not_left_press

|1EFADC| LDA.b #$02
|1EFADE| STA.w $0DE0,X
|1EFAE1| BRA .exit

.not_left_press
|1EFAE3| LDA.b $00
|1EFAE5| AND.b #$01
|1EFAE7| BEQ .exit

|1EFAE9| LDA.b #$03
|1EFAEB| STA.w $0DE0,X

.exit
|1EFAEE| RTS

;===================================================================================================

pool SomariaPlatform_HandleUnknown

.dpad_press
|1EFAEF| db $0C, $0C, $03, $03

endpool

;---------------------------------------------------------------------------------------------------

SomariaPlatform_HandleUnknown:
|1EFAF3| LDA.b #$01
|1EFAF5| STA.w $0D80,X

|1EFAF8| LDY.w $0DE0,X

|1EFAFB| LDA.b $F0
|1EFAFD| AND.w .dpad_press,Y
|1EFB00| BEQ SomariaPlatform_EnableDragging

|1EFB02| STA.b $00

|1EFB04| AND.b #$08
|1EFB06| BEQ .not_up_press

|1EFB08| LDA.b #$00
|1EFB0A| BRA .set_direction

.not_up_press
|1EFB0C| LDA.b $00
|1EFB0E| AND.b #$04
|1EFB10| BEQ .not_down_press

|1EFB12| LDA.b #$01
|1EFB14| BRA .set_direction

.not_down_press
|1EFB16| LDA.b $00
|1EFB18| AND.b #$02
|1EFB1A| BEQ .not_left_press

|1EFB1C| LDA.b #$02
|1EFB1E| BRA .set_direction

.not_left_press
|1EFB20| LDA.b #$03

.set_direction
|1EFB22| STA.w $0DE0,X

|1EFB25| STZ.w $0D80,X

;===================================================================================================

SomariaPlatform_EnableDragging:
|1EFB28| LDA.b #$01
|1EFB2A| STA.w $02F5

|1EFB2D| RTS

;===================================================================================================

SomariaPlatform_HandleStation:
|1EFB2E| STZ.w $0D80,X

|1EFB31| LDA.w $0DE0,X
|1EFB34| EOR.b #$01
|1EFB36| STA.w $0DE0,X

|1EFB39| STZ.b $4B
|1EFB3B| BRA SomariaPlatform_EnableDragging

;===================================================================================================

SomariaPlatform_DragLink:
|1EFB3D| REP #$20

|1EFB3F| LDA.w $0FD8
|1EFB42| SEC
|1EFB43| SBC.w #$0008

|1EFB46| CMP.b $22
|1EFB48| BEQ .x_done
|1EFB4A| BPL .x_too_low

.x_too_high
|1EFB4C| DEC.w $0B7C
|1EFB4F| BRA .x_done

.x_too_low
|1EFB51| INC.w $0B7C

.x_done
|1EFB54| LDA.w $0FDA
|1EFB57| SEC
|1EFB58| SBC.w #$0010

|1EFB5B| CMP.b $20
|1EFB5D| BEQ .y_done
|1EFB5F| BPL .y_too_low

.y_too_high
|1EFB61| DEC.w $0B7E
|1EFB64| BRA .y_done

.y_too_low
|1EFB66| INC.w $0B7E

.y_done
|1EFB69| SEP #$30

|1EFB6B| RTS

;===================================================================================================

UNREACHABLE_1EFB6C:
|1EFB6C| db $00, $00, $01, $FF, $00, $00

;===================================================================================================

Sprite_AE_Pipe_Down:
Sprite_AF_Pipe_Up:
Sprite_B0_Pipe_Right:
Sprite_B1_Pipe_Left:
|1EFB72| JSR CheckIfActive_bank1E

|1EFB75| LDA.w $0DC0,X
|1EFB78| JSL JumpTableLocal
|1EFB7C| dw Pipe_LocatePath
|1EFB7E| dw Pipe_FindEndPoint
|1EFB80| dw Pipe_Idle
|1EFB82| dw Pipe_DragLink
|1EFB84| dw Pipe_MoveLink
|1EFB86| dw Pipe_Reset

;===================================================================================================

Pipe_FindEndPoint:
|1EFB88| JSR SomariaPlatformAndPipe_CheckTile
|1EFB8B| CMP.b #$BE ; TILETYPE BE
|1EFB8D| BNE .invalid_tile

|1EFB8F| STA.w $0E90,X

|1EFB92| INC.w $0DC0,X

|1EFB95| LDA.w $0DE0,X
|1EFB98| EOR.b #$01
|1EFB9A| STA.w $0DE0,X

.invalid_tile
|1EFB9D| CMP.w $0E90,X
|1EFBA0| BEQ .same_as_last

|1EFBA2| STA.w $0E90,X

.same_as_last
|1EFBA5| LDA.w $0DE0,X
|1EFBA8| STA.w $0EB0,X

|1EFBAB| JSR SomariaPlatformAndPipe_HandleMovement
|1EFBAE| JSR MoveSpriteXY_bank1E

|1EFBB1| RTS

;===================================================================================================

Pipe_Idle:
|1EFBB2| LDA.w $1DE0
|1EFBB5| CMP.b #$FF
|1EFBB7| BNE .exit

|1EFBB9| JSL CheckDamageToLink_ignore_layer_long
|1EFBBD| BCC .exit

|1EFBBF| PHX
|1EFBC0| JSL ValidatePipeEntry
|1EFBC4| PLX

|1EFBC5| BCS .cant_use

|1EFBC7| INC.w $0DC0,X

|1EFBCA| LDA.b #$04
|1EFBCC| STA.w $0E00,X

|1EFBCF| JSL ResetLinkProperties_A

|1EFBD3| LDA.b #$01
|1EFBD5| STA.w $02E4
|1EFBD8| STA.w $037B

|1EFBDB| TXA
|1EFBDC| STA.w $1DE0

.exit
|1EFBDF| RTS

.cant_use
|1EFBE0| JSR HaltAllMovement

|1EFBE3| RTS

;===================================================================================================

PipeTileTypeMasks:
|1EFBE4| db $08, $04, $02, $01

;===================================================================================================

Pipe_DragLink:
|1EFBE8| LDA.w $0E00,X
|1EFBEB| BNE .delay

|1EFBED| INC.w $0DC0,X

|1EFBF0| LDA.b #$0C
|1EFBF2| STA.b $4B

|1EFBF4| RTS

;---------------------------------------------------------------------------------------------------

.delay
|1EFBF5| LDA.b #$01
|1EFBF7| STA.w $02E4
|1EFBFA| STA.w $037B

|1EFBFD| LDY.w $0DE0,X

|1EFC00| LDA.w PipeTileTypeMasks,Y
|1EFC03| JSR Pipe_HandlePlayerMovement

|1EFC06| RTS

;===================================================================================================

Pipe_MoveLink:
|1EFC07| LDA.b #$03
|1EFC09| STA.w $0E80,X

|1EFC0C| LDA.b $22
|1EFC0E| STA.b $3F

|1EFC10| LDA.b $23
|1EFC12| STA.b $41

|1EFC14| LDA.b $20
|1EFC16| STA.b $3E

|1EFC18| LDA.b $21
|1EFC1A| STA.b $40

;---------------------------------------------------------------------------------------------------

.next
|1EFC1C| INC.w $0D90,X

|1EFC1F| LDA.w $0D90,X
|1EFC22| AND.b #$07
|1EFC24| BNE .do_movement

|1EFC26| JSR SomariaPlatformAndPipe_CheckTile

|1EFC29| PHA

|1EFC2A| CMP.b #$B2 ; TILETYPE B2
|1EFC2C| BCC .no_thud

|1EFC2E| CMP.b #$B6 ; TILETYPE B6
|1EFC30| BCS .no_thud

|1EFC32| LDA.b #$0B ; SFX2.0B
|1EFC34| JSL QueueSpriteSFX2WithPan

.no_thud
|1EFC38| PLA
|1EFC39| CMP.w $0E90,X
|1EFC3C| BEQ .do_movement

|1EFC3E| STA.w $0E90,X

|1EFC41| CMP.b #$BE ; TILETYPE BE
|1EFC43| BNE .check_new_tile

|1EFC45| INC.w $0DC0,X

|1EFC48| LDA.b #$18
|1EFC4A| STA.w $0E00,X

.check_new_tile
|1EFC4D| LDA.w $0DE0,X
|1EFC50| STA.w $0EB0,X

|1EFC53| JSR SomariaPlatformAndPipe_HandleMovement
|1EFC56| JSR SomariaPlatform_HandleDrag

;---------------------------------------------------------------------------------------------------

.do_movement
|1EFC59| JSR MoveSpriteXY_bank1E

|1EFC5C| LDA.w $0D10,X
|1EFC5F| SEC
|1EFC60| SBC.b #$08
|1EFC62| STA.b $00

|1EFC64| LDA.w $0D30,X
|1EFC67| SBC.b #$00
|1EFC69| STA.b $01

|1EFC6B| LDA.w $0D00,X
|1EFC6E| SEC
|1EFC6F| SBC.b #$0E
|1EFC71| STA.b $02

|1EFC73| LDA.w $0D20,X
|1EFC76| SBC.b #$00
|1EFC78| STA.b $03

|1EFC7A| REP #$20

|1EFC7C| LDA.b $00
|1EFC7E| CMP.b $22
|1EFC80| BEQ .x_done
|1EFC82| BCS .move_right

.move_left
|1EFC84| DEC.b $22
|1EFC86| BRA .x_done

.move_right
|1EFC88| INC.b $22

.x_done
|1EFC8A| LDA.b $02
|1EFC8C| CMP.b $20
|1EFC8E| BEQ .y_done
|1EFC90| BCS .move_down

.move_up
|1EFC92| DEC.b $20
|1EFC94| BRA .y_done

.move_down
|1EFC96| INC.b $20

.y_done
|1EFC98| SEP #$30

|1EFC9A| DEC.w $0E80,X
|1EFC9D| BEQ .finish_up

|1EFC9F| JMP.w .next

;---------------------------------------------------------------------------------------------------

.finish_up
|1EFCA2| LDA.b $22
|1EFCA4| SEC
|1EFCA5| SBC.b $3F
|1EFCA7| STA.b $31

|1EFCA9| LDA.b $20
|1EFCAB| SEC
|1EFCAC| SBC.b $3E
|1EFCAE| STA.b $30

|1EFCB0| LDY.w $0DE0,X

|1EFCB3| LDA.w PipeTileTypeMasks,Y
|1EFCB6| STA.b $26

|1EFCB8| PHX

|1EFCB9| JSL HandleLinkAnimation_FullLongEntry
|1EFCBD| JSL HandleIndoorCameraAndDoors_long
|1EFCC1| JSL CancelDash_long

|1EFCC5| PLX

|1EFCC6| RTS

;===================================================================================================

Pipe_Reset:
|1EFCC7| LDA.w $0E00,X
|1EFCCA| BNE .delay

|1EFCCC| STZ.w $02E4
|1EFCCF| STZ.w $02F5
|1EFCD2| STZ.w $037B

|1EFCD5| STZ.b $4B
|1EFCD7| STZ.b $31
|1EFCD9| STZ.b $30

|1EFCDB| LDA.b #$FF
|1EFCDD| STA.w $1DE0

|1EFCE0| LDA.b #$02
|1EFCE2| STA.w $0DC0,X

|1EFCE5| RTS

;---------------------------------------------------------------------------------------------------

.delay
|1EFCE6| LDA.w $0DE0,X
|1EFCE9| EOR.b #$01
|1EFCEB| TAY

|1EFCEC| LDA.w PipeTileTypeMasks,Y
|1EFCEF| JSR Pipe_HandlePlayerMovement

|1EFCF2| RTS

;===================================================================================================

Pipe_HandlePlayerMovement:
|1EFCF3| PHX

|1EFCF4| STA.b $67
|1EFCF6| STA.b $26

|1EFCF8| JSL HandleLinkVelocity
|1EFCFC| JSL HandleLinkAnimation_FullLongEntry
|1EFD00| JSL HandleIndoorCameraAndDoors_long

|1EFD04| PLX

|1EFD05| RTS

;===================================================================================================

pool HandleFairyMovement

.z_accel
|1EFD06| db  1, -1

endpool

;---------------------------------------------------------------------------------------------------

HandleFairyMovement:
|1EFD08| PHB
|1EFD09| PHK
|1EFD0A| PLB

|1EFD0B| JSR .main

|1EFD0E| PLB

|1EFD0F| RTL

;---------------------------------------------------------------------------------------------------

.main
|1EFD10| LDA.b $1A
|1EFD12| LSR A
|1EFD13| LSR A
|1EFD14| LSR A
|1EFD15| AND.b #$01
|1EFD17| STA.w $0DC0,X

|1EFD1A| LDA.b $1B
|1EFD1C| BEQ .ignore_tile_collision

|1EFD1E| LDA.w $0E00,X
|1EFD21| BNE .ignore_tile_collision

|1EFD23| JSR CheckSpriteTileCollision_bank1E
|1EFD26| AND.b #$03
|1EFD28| BEQ .no_horizontal_collision

|1EFD2A| LDA.w $0D50,X
|1EFD2D| EOR.b #$FF
|1EFD2F| INC A
|1EFD30| STA.w $0D50,X

|1EFD33| LDA.w $0DE0,X
|1EFD36| EOR.b #$FF
|1EFD38| INC A
|1EFD39| STA.w $0DE0,X

|1EFD3C| LDA.b #$20
|1EFD3E| STA.w $0E00,X

.no_horizontal_collision
|1EFD41| LDA.w $0E70,X
|1EFD44| AND.b #$0C
|1EFD46| BEQ .ignore_tile_collision

|1EFD48| LDA.w $0D40,X
|1EFD4B| EOR.b #$FF
|1EFD4D| INC A
|1EFD4E| STA.w $0D40,X

|1EFD51| LDA.w $0D90,X
|1EFD54| EOR.b #$FF
|1EFD56| INC A
|1EFD57| STA.w $0D90,X

|1EFD5A| LDA.b #$20
|1EFD5C| STA.w $0E00,X

;---------------------------------------------------------------------------------------------------

.ignore_tile_collision
|1EFD5F| LDA.w $0D50,X
|1EFD62| BEQ .not_moving_horizontally
|1EFD64| BPL .moving_right

.moving_left
|1EFD66| LDA.w $0F50,X
|1EFD69| AND.b #$BF
|1EFD6B| BRA .flip_done

.moving_right
|1EFD6D| LDA.w $0F50,X
|1EFD70| ORA.b #$40

.flip_done
|1EFD72| STA.w $0F50,X

;---------------------------------------------------------------------------------------------------

.not_moving_horizontally
|1EFD75| JSR MoveSpriteXY_bank1E

|1EFD78| LDA.b $1A
|1EFD7A| AND.b #$3F
|1EFD7C| BNE .dont_turn

|1EFD7E| JSL GetRandomNumber
|1EFD82| STA.b $04

|1EFD84| LDA.b $23
|1EFD86| STA.b $05

|1EFD88| JSL GetRandomNumber
|1EFD8C| STA.b $06

|1EFD8E| LDA.b $21
|1EFD90| STA.b $07

|1EFD92| LDA.b #$10
|1EFD94| JSL ProjectSpriteSpeedTowardsLocation_long

|1EFD98| LDA.b $00
|1EFD9A| STA.w $0D90,X

|1EFD9D| LDA.b $01
|1EFD9F| STA.w $0DE0,X

.dont_turn
|1EFDA2| LDA.b $1A
|1EFDA4| AND.b #$0F
|1EFDA6| BNE .done_with_speed

|1EFDA8| LDA.b #$FF
|1EFDAA| STA.b $01
|1EFDAC| STA.b $03

|1EFDAE| LDA.w $0D90,X
|1EFDB1| STA.b $00
|1EFDB3| BMI .negative_y_target

|1EFDB5| STZ.b $01

.negative_y_target
|1EFDB7| LDA.w $0D40,X
|1EFDBA| STA.b $02
|1EFDBC| BMI .negative_y_speed

|1EFDBE| STZ.b $03

.negative_y_speed
|1EFDC0| REP #$21

|1EFDC2| LDA.b $00
|1EFDC4| ADC.b $02
|1EFDC6| LSR A

|1EFDC7| SEP #$30

|1EFDC9| STA.w $0D40,X

|1EFDCC| LDA.b #$FF
|1EFDCE| STA.b $01
|1EFDD0| STA.b $03

|1EFDD2| LDA.w $0DE0,X
|1EFDD5| STA.b $00
|1EFDD7| BMI .negative_x_target

|1EFDD9| STZ.b $01

.negative_x_target
|1EFDDB| LDA.w $0D50,X
|1EFDDE| STA.b $02
|1EFDE0| BMI .negative_x_speed

|1EFDE2| STZ.b $03

.negative_x_speed
|1EFDE4| REP #$21

|1EFDE6| LDA.b $00
|1EFDE8| ADC.b $02
|1EFDEA| LSR A

|1EFDEB| SEP #$30

|1EFDED| STA.w $0D50,X

;---------------------------------------------------------------------------------------------------

.done_with_speed
|1EFDF0| JSR MoveSpriteZ_bank1E

|1EFDF3| JSL GetRandomNumber
|1EFDF7| AND.b #$01
|1EFDF9| TAY

|1EFDFA| LDA.w .z_accel,Y
|1EFDFD| CLC
|1EFDFE| ADC.w $0F80,X
|1EFE01| STA.w $0F80,X

|1EFE04| LDA.w $0F70,X

|1EFE07| LDY.b #$08
|1EFE09| CMP.b #$08
|1EFE0B| BCC .float_up

;---------------------------------------------------------------------------------------------------

.float_down
|1EFE0D| LDY.b #$18
|1EFE0F| CMP.b #$18
|1EFE11| BCC .exit

|1EFE13| TYA
|1EFE14| STA.w $0F70,X

|1EFE17| LDA.b #$FB
|1EFE19| STA.w $0F80,X

.exit
|1EFE1C| RTS

;---------------------------------------------------------------------------------------------------

.float_up
|1EFE1D| TYA
|1EFE1E| STA.w $0F70,X

|1EFE21| LDA.b #$05
|1EFE23| STA.w $0F80,X

|1EFE26| RTS

;===================================================================================================

ReleaseFairy:
|1EFE27| LDA.b #$E3 ; SPRITE E3
|1EFE29| JSL SpawnSpriteDynamically
|1EFE2D| BMI .no_space

|1EFE2F| LDA.b $EE
|1EFE31| STA.w $0F20,Y

|1EFE34| LDA.b $22
|1EFE36| CLC
|1EFE37| ADC.b #$08
|1EFE39| STA.w $0D10,Y

|1EFE3C| LDA.b $23
|1EFE3E| ADC.b #$00
|1EFE40| STA.w $0D30,Y

|1EFE43| LDA.b $20
|1EFE45| CLC
|1EFE46| ADC.b #$10
|1EFE48| STA.w $0D00,Y

|1EFE4B| LDA.b $21
|1EFE4D| ADC.b #$00
|1EFE4F| STA.w $0D20,Y

|1EFE52| LDA.b #$00
|1EFE54| STA.w $0DE0,Y

|1EFE57| LDA.b #$60
|1EFE59| STA.w $0F10,Y

.no_space
|1EFE5C| RTL

;===================================================================================================

GetDirectionTowardsLink_bank1E:
|1EFE5D| JSL GetDirectionTowardsLink_long

|1EFE61| RTS

;===================================================================================================

GetXDisplacementFromLink_bank1E:
|1EFE62| JSL GetXDisplacementFromLink_long

|1EFE66| RTS

;===================================================================================================

GetYDisplacementFromLink_bank1E:
|1EFE67| JSL GetYDisplacementFromLink_long

|1EFE6B| RTS

;===================================================================================================

CheckIfActive_bank1E:
|1EFE6C| LDA.w $0DD0,X
|1EFE6F| CMP.b #$09
|1EFE71| BNE .inactive

#CheckIfActivePermissive_bank1E:
|1EFE73| LDA.w $0FC1
|1EFE76| BNE .inactive

|1EFE78| LDA.b $11
|1EFE7A| BNE .inactive

|1EFE7C| LDA.w $0CAA,X
|1EFE7F| BMI .active

|1EFE81| LDA.w $0F00,X
|1EFE84| BEQ .active

.inactive
|1EFE86| PLA
|1EFE87| PLA

.active
|1EFE88| RTS

;===================================================================================================

pool HandleSpriteRecoil_bank1E

.masks
|1EFE89| db $03, $01, $00, $00, $0C, $03

endpool

;---------------------------------------------------------------------------------------------------

HandleSpriteRecoil_bank1E:
|1EFE8F| LDA.w $0EA0,X
|1EFE92| BEQ .exit

|1EFE94| AND.b #$7F
|1EFE96| BEQ .recoil_over

|1EFE98| LDA.w $0D40,X
|1EFE9B| PHA

|1EFE9C| LDA.w $0D50,X
|1EFE9F| PHA

|1EFEA0| DEC.w $0EA0,X
|1EFEA3| BNE .still_recoiling

|1EFEA5| LDA.w $0F40,X
|1EFEA8| CLC
|1EFEA9| ADC.b #$20
|1EFEAB| CMP.b #$40
|1EFEAD| BCS .no_adjust

|1EFEAF| LDA.w $0F30,X
|1EFEB2| CLC
|1EFEB3| ADC.b #$20
|1EFEB5| CMP.b #$40
|1EFEB7| BCC .still_recoiling

.no_adjust
|1EFEB9| LDA.b #$90
|1EFEBB| STA.w $0EA0,X

.still_recoiling
|1EFEBE| LDA.w $0EA0,X
|1EFEC1| BMI .no_movement

|1EFEC3| LSR A
|1EFEC4| LSR A
|1EFEC5| TAY

|1EFEC6| LDA.b $1A
|1EFEC8| AND.w .masks,Y
|1EFECB| BNE .no_movement

|1EFECD| LDA.w $0F30,X
|1EFED0| STA.w $0D40,X

|1EFED3| LDA.w $0F40,X
|1EFED6| STA.w $0D50,X

|1EFED9| LDA.w $0CD2,X
|1EFEDC| BMI .handle_movement

|1EFEDE| JSR CheckSpriteTileCollision_bank1E
|1EFEE1| AND.b #$0F
|1EFEE3| BEQ .handle_movement

|1EFEE5| CMP.b #$04
|1EFEE7| BCS .stop_vertical_movement

.stop_horizontal_movement
|1EFEE9| STZ.w $0F40,X
|1EFEEC| STZ.w $0D50,X

|1EFEEF| BRA .movement_stopped

.stop_vertical_movement
|1EFEF1| STZ.w $0F30,X
|1EFEF4| STZ.w $0D40,X

.movement_stopped
|1EFEF7| BRA .no_movement

.handle_movement
|1EFEF9| JSR MoveSpriteXY_bank1E

.no_movement
|1EFEFC| PLA
|1EFEFD| STA.w $0D50,X

|1EFF00| PLA
|1EFF01| STA.w $0D40,X

; [HARDCODED] Agahnim recoils, but he keeps going.
|1EFF04| LDA.w $0E20,X
|1EFF07| CMP.b #$7A ; SPRITE 7A
|1EFF09| BEQ .exit

|1EFF0B| PLA
|1EFF0C| PLA

.exit
|1EFF0D| RTS

.recoil_over
|1EFF0E| STZ.w $0EA0,X

|1EFF11| RTS

;===================================================================================================

MoveSpriteXYZ_bank1E:
|1EFF12| JSR MoveSpriteZ_bank1E

;===================================================================================================

MoveSpriteXY_bank1E:
|1EFF15| JSR MoveSpriteX_bank1E
|1EFF18| JSR MoveSpriteY_bank1E

|1EFF1B| RTS

;===================================================================================================

MoveSpriteX_bank1E:
|1EFF1C| TXA
|1EFF1D| CLC
|1EFF1E| ADC.b #$10
|1EFF20| TAX

|1EFF21| JSR MoveSpriteY_bank1E

|1EFF24| LDX.w $0FA0

|1EFF27| RTS

;===================================================================================================

MoveSpriteY_bank1E:
|1EFF28| LDA.w $0D40,X
|1EFF2B| BEQ .exit

|1EFF2D| ASL A
|1EFF2E| ASL A
|1EFF2F| ASL A
|1EFF30| ASL A

|1EFF31| CLC
|1EFF32| ADC.w $0D60,X
|1EFF35| STA.w $0D60,X

|1EFF38| LDA.w $0D40,X
|1EFF3B| PHP

|1EFF3C| LSR A
|1EFF3D| LSR A
|1EFF3E| LSR A
|1EFF3F| LSR A

|1EFF40| LDY.b #$00

|1EFF42| PLP
|1EFF43| BPL .positive_velocity

|1EFF45| ORA.b #$F0
|1EFF47| DEY

.positive_velocity
|1EFF48| ADC.w $0D00,X
|1EFF4B| STA.w $0D00,X

|1EFF4E| TYA
|1EFF4F| ADC.w $0D20,X
|1EFF52| STA.w $0D20,X

.exit
|1EFF55| RTS

;===================================================================================================

MoveSpriteZ_bank1E:
|1EFF56| LDA.w $0F80,X
|1EFF59| ASL A
|1EFF5A| ASL A
|1EFF5B| ASL A
|1EFF5C| ASL A
|1EFF5D| CLC
|1EFF5E| ADC.w $0F90,X
|1EFF61| STA.w $0F90,X

|1EFF64| LDA.w $0F80,X
|1EFF67| PHP

|1EFF68| LSR A
|1EFF69| LSR A
|1EFF6A| LSR A
|1EFF6B| LSR A

|1EFF6C| PLP
|1EFF6D| BPL .positive_velocity

|1EFF6F| ORA.b #$F0

.positive_velocity
|1EFF71| ADC.w $0F70,X
|1EFF74| STA.w $0F70,X

|1EFF77| RTS

;===================================================================================================

GetScreenCoordinates_bank1E:
|1EFF78| JSL GetScreenCoordinates_long
|1EFF7C| BCC .draw

|1EFF7E| PLA
|1EFF7F| PLA

.draw
|1EFF80| RTS

;===================================================================================================

DrawRippleIfInWater:
|1EFF81| LDA.l $7FF9C2,X
|1EFF85| CMP.b #$08 ; TILETYPE 08
|1EFF87| BEQ .water_tile

|1EFF89| CMP.b #$09 ; TILETYPE 09
|1EFF8B| BNE .not_water_tile

.water_tile
|1EFF8D| LDA.w $0E60,X
|1EFF90| AND.b #$20
|1EFF92| BEQ .no_offset

|1EFF94| LDA.w $0FD8
|1EFF97| SEC
|1EFF98| SBC.b #$04
|1EFF9A| STA.w $0FD8

|1EFF9D| LDA.w $0FD9
|1EFFA0| SBC.b #$00
|1EFFA2| STA.w $0FD9

|1EFFA5| LDA.w $0E20,X
|1EFFA8| CMP.b #$DF ; [HARDCODED] thing for small magic (SPRITE DF)
|1EFFAA| BNE .no_offset

|1EFFAC| LDA.w $0FDA
|1EFFAF| SEC
|1EFFB0| SBC.b #$07
|1EFFB2| STA.w $0FDA

|1EFFB5| LDA.w $0FDB
|1EFFB8| SBC.b #$00
|1EFFBA| STA.w $0FDB

.no_offset
|1EFFBD| JSL SpriteDraw_WaterRipple
|1EFFC1| JSL Get16BitSpriteCoords_long

|1EFFC5| LDA.w $0E40,X
|1EFFC8| AND.b #$1F
|1EFFCA| INC A
|1EFFCB| ASL A
|1EFFCC| ASL A

|1EFFCD| JSL AllocateOAMInRegionA

.not_water_tile
|1EFFD1| RTL

;===================================================================================================
; FREE ROM: 0x2E
;===================================================================================================
NULL_1EFFD2:
|1EFFD2| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1EFFDA| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1EFFE2| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1EFFEA| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1EFFF2| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1EFFFA| db $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

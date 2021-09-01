org $058000

;===================================================================================================

pool Sprite_SpawnSparkleGarnish

.offset_low
#_058000: db  -4,   0,   4,   8

.offset_high
#_058004: db  -1,   0,   0,   0

pool off

;---------------------------------------------------------------------------------------------------

Sprite_SpawnSparkleGarnish:
#_058008: LDA.b $1A
#_05800A: AND.b #$03
#_05800C: BNE .exit

#_05800E: PHX
#_05800F: TXY

#_058010: JSL GetRandomNumber
#_058014: AND.b #$03
#_058016: TAX

#_058017: LDA.l .offset_low,X
#_05801B: STA.b $00

#_05801D: LDA.l .offset_high,X
#_058021: STA.b $01

#_058023: JSL GetRandomNumber
#_058027: AND.b #$03
#_058029: TAX

#_05802A: LDA.l .offset_low,X
#_05802E: STA.b $02

#_058030: LDA.l .offset_high,X
#_058034: STA.b $03

;---------------------------------------------------------------------------------------------------

#_058036: LDX.b #$1D

.next_slot
#_058038: LDA.l $7FF800,X
#_05803C: BEQ .empty_slot

#_05803E: DEX
#_05803F: BPL .next_slot

#_058041: INX

;---------------------------------------------------------------------------------------------------

.empty_slot
#_058042: LDA.b #!GARNISH_12
#_058044: STA.l $7FF800,X
#_058048: STA.w $0FB4

#_05804B: LDA.w $0D10,Y
#_05804E: CLC
#_05804F: ADC.b $00
#_058051: STA.l $7FF83C,X

#_058055: LDA.w $0D30,Y
#_058058: ADC.b $01
#_05805A: STA.l $7FF878,X

#_05805E: LDA.w $0D00,Y
#_058061: CLC
#_058062: ADC.b $02
#_058064: STA.l $7FF81E,X

#_058068: LDA.w $0D20,Y
#_05806B: ADC.b $03
#_05806D: STA.l $7FF85A,X

#_058071: TYA
#_058072: STA.l $7FF92C,X

#_058076: LDA.b #$0F
#_058078: STA.l $7FF90E,X

;---------------------------------------------------------------------------------------------------

#_05807C: TXY
#_05807D: PLX

.exit
#_05807E: RTL

;===================================================================================================

Sprite_70_KingHelmasaurFireball_bounce:
#_05807F: JSL Sprite_70_KingHelmasaurFireball

#_058083: RTS

;===================================================================================================

pool WallCannon

.speed_x
#_058084: db    0,   0 ; X and Y speeds both bleed to next tables

.speed_y
#_058086: db  -16,  16

.anim
#_058088: db    0,   0,   2,   2

.flip
#_05808C: db  $40, $00, $00, $80

pool off

;---------------------------------------------------------------------------------------------------

Sprite_66_WallCannonVerticalLeft:
Sprite_67_WallCannonVerticalRight:
Sprite_68_WallCannonHorizontalTop:
Sprite_69_WallCannonHorizontalBottom:
#_058090: LDY.w $0DE0,X

#_058093: LDA.w $0E10,X
#_058096: CMP.b #$01

#_058098: LDA.w WallCannon_anim,Y
#_05809B: ADC.b #$00
#_05809D: STA.w $0DC0,X

#_0580A0: LDA.w $0F50,X
#_0580A3: AND.b #$BF
#_0580A5: ORA.w WallCannon_flip,Y
#_0580A8: STA.w $0F50,X

#_0580AB: JSL SpriteDraw_SingleLarge_long
#_0580AF: JSR Sprite_CheckIfActive_Bank05

#_0580B2: LDA.w $0DF0,X
#_0580B5: BNE .direction_change_delay

#_0580B7: LDA.b #$80
#_0580B9: STA.w $0DF0,X

#_0580BC: LDA.w $0D90,X
#_0580BF: EOR.b #$01
#_0580C1: STA.w $0D90,X

;---------------------------------------------------------------------------------------------------

.direction_change_delay
#_0580C4: LDY.w $0D90,X

#_0580C7: LDA.w WallCannon_speed_x,Y
#_0580CA: STA.w $0D50,X

#_0580CD: LDA.w WallCannon_speed_y,Y
#_0580D0: STA.w $0D40,X

#_0580D3: JSR Sprite_Move_XY_Bank05

#_0580D6: TXA
#_0580D7: ASL A
#_0580D8: ASL A
#_0580D9: CLC
#_0580DA: ADC.b $1A

#_0580DC: AND.b #$1F
#_0580DE: BNE .dont_reset_firing_delay

#_0580E0: LDA.b #$10
#_0580E2: STA.w $0E10,X

;---------------------------------------------------------------------------------------------------

.dont_reset_firing_delay
#_0580E5: LDA.w $0E10,X
#_0580E8: CMP.b #$01
#_0580EA: BEQ .cleared_for_fire

#_0580EC: RTS

.cleared_for_fire
#_0580ED: LDA.w $0F00,X
#_0580F0: BNE .exit

#_0580F2: LDA.b #!SPRITE_6B
#_0580F4: LDY.b #$0D
#_0580F6: JSL Sprite_SpawnDynamically_slot_limited
#_0580FA: BMI .exit

;---------------------------------------------------------------------------------------------------

#_0580FC: LDA.b #!SFX3_07
#_0580FE: JSL SpriteSFX_QueueSFX3WithPan

#_058102: LDA.b #$01
#_058104: STA.w $0DB0,Y
#_058107: STA.w $0DC0,Y

#_05810A: LDA.w $0DE0,X

#_05810D: PHX
#_05810E: TAX

;---------------------------------------------------------------------------------------------------

#_05810F: LDA.b $00
#_058111: CLC
#_058112: ADC.w .offset_x_low,X
#_058115: STA.w $0D10,Y

#_058118: LDA.b $01
#_05811A: ADC.w .offset_x_high,X
#_05811D: STA.w $0D30,Y

#_058120: LDA.b $02
#_058122: CLC
#_058123: ADC.w .offset_y_low,X
#_058126: STA.w $0D00,Y

#_058129: LDA.b $03
#_05812B: ADC.w .offset_y_high,X
#_05812E: STA.w $0D20,Y

#_058131: LDA.w .speed_x,X
#_058134: STA.w $0D50,Y

#_058137: LDA.w .speed_y,X
#_05813A: STA.w $0D40,Y

#_05813D: LDA.w $0E40,Y
#_058140: AND.b #$F0
#_058142: ORA.b #$01
#_058144: STA.w $0E40,Y

#_058147: LDA.w $0E60,Y
#_05814A: ORA.b #$47
#_05814C: STA.w $0E60,Y

#_05814F: LDA.w $0CAA,Y
#_058152: ORA.b #$44
#_058154: STA.w $0CAA,Y

#_058157: LDA.b #$20
#_058159: STA.w $0DF0,Y

#_05815C: PLX

.exit
#_05815D: RTS

;---------------------------------------------------------------------------------------------------

; projectile properties based on sprite ID of parent
.offset_x_low
#_05815E: db   8,  -8,   0,   0

.offset_x_high
#_058162: db   0,  -1,   0,   0

.offset_y_low
#_058166: db   0,   0,   8,  -8

.offset_y_high
#_05816A: db   0,   0,   0,  -1

;---------------------------------------------------------------------------------------------------

.speed_x
#_05816E: db  24, -24,   0,   0

.speed_y
#_058172: db   0,   0,  24, -24

;===================================================================================================

pool SpritePrep_ArrowGame

.pos_x
#_058176: db $00, $40, $80, $C0, $30, $60, $90, $C0

.pos_y
#_05817E: db $00, $4F, $4F, $4F, $5A, $5A, $5A, $5A

.subtype
#_058186: db $00, $01, $01, $01, $02, $02, $02, $02

;---------------------------------------------------------------------------------------------------

.speed_x
#_05818E: db  -8,  12

;---------------------------------------------------------------------------------------------------

.hitbox
#_058190: db $1C, $15

pool off

;---------------------------------------------------------------------------------------------------

SpritePrep_ArrowGame:
#_058192: PHB
#_058193: PHK
#_058194: PLB

#_058195: STZ.w $0B88

#_058198: LDA.w $0D00,X
#_05819B: SBC.b #$08
#_05819D: STA.w $0D00,X

;---------------------------------------------------------------------------------------------------

#_0581A0: PHX
#_0581A1: LDX.b #$07

.next_sprite
#_0581A3: LDA.b #!SPRITE_65
#_0581A5: STA.w $0E20,X

#_0581A8: LDA.b #$09
#_0581AA: STA.w $0DD0,X

#_0581AD: JSL SpritePrep_LoadProperties

#_0581B1: LDA.b $23
#_0581B3: STA.w $0D30,X

#_0581B6: LDA.w .pos_x,X
#_0581B9: STA.w $0D10,X

#_0581BC: LDA.b $21
#_0581BE: STA.w $0D20,X

#_0581C1: LDA.w .pos_y,X
#_0581C4: STA.w $0D00,X

#_0581C7: LDA.w .subtype,X
#_0581CA: STA.w $0D90,X

#_0581CD: DEC A
#_0581CE: STA.w $0DC0,X

#_0581D1: TAY

#_0581D2: LDA.w .speed_x,Y
#_0581D5: STA.w $0D50,X

#_0581D8: LDA.w .hitbox,Y
#_0581DB: STA.w $0F60,X

#_0581DE: LDA.b #$0D
#_0581E0: STA.w $0F50,X

#_0581E3: LDA.b $EE
#_0581E5: STA.w $0F20,X

#_0581E8: JSL GetRandomNumber
#_0581EC: STA.w $0E80,X

#_0581EF: DEX
#_0581F0: BNE .next_sprite

;---------------------------------------------------------------------------------------------------

#_0581F2: PLX

#_0581F3: INC.w $0BA0,X

#_0581F6: LDA.l $7EF377
#_0581FA: STA.w $0E30,X

#_0581FD: PLB

#_0581FE: RTL

;===================================================================================================

Sprite_65_ArcheryGame:
#_0581FF: LDA.w $0E30,X
#_058202: STA.l $7EF377

#_058206: LDA.w $0D90,X
#_058209: JSL JumpTableLocal
#_05820D: dw ArcheryGame_Host
#_05820F: dw ArcheryGame_Octo
#_058211: dw ArcheryGame_Hand

;===================================================================================================

pool ArcheryGame_Host

.anim_step
#_058213: db $03, $04, $03, $02

pool off

;---------------------------------------------------------------------------------------------------

ArcheryGame_Host:
#_058217: LDA.w $0B99
#_05821A: BNE .game_in_progress

#_05821C: INC.w $0B9A

.game_in_progress
#_05821F: JSL SpriteDraw_ArcheryGame_Host
#_058223: JSR Sprite_CheckIfActive_Bank05

#_058226: LDA.b #$00
#_058228: STA.w $0F60,X

;---------------------------------------------------------------------------------------------------

#_05822B: JSL Sprite_CheckDamageToLink_same_layer_long
#_05822F: BCC .no_contact

#_058231: JSL Sprite_CancelHookshot

#_058235: STZ.b $5E

#_058237: JSL Link_CancelDash_long

;---------------------------------------------------------------------------------------------------

.no_contact
#_05823B: LDA.w $0DF0,X
#_05823E: BEQ .not_drumming

#_058240: AND.b #$07
#_058242: BNE .skip_a_beat

#_058244: LDA.b #!SFX2_11
#_058246: JSL SpriteSFX_QueueSFX2WithPan

.skip_a_beat
#_05824A: LDA.w $0DF0,X
#_05824D: AND.b #$04
#_05824F: LSR A
#_058250: LSR A
#_058251: BRA .adjust_animation

;---------------------------------------------------------------------------------------------------

.not_drumming
#_058253: LDA.w $0D80,X
#_058256: BEQ .in_idle_state

#_058258: LDA.b $1A

#_05825A: LSR A ; /32
#_05825B: LSR A
#_05825C: LSR A
#_05825D: LSR A
#_05825E: LSR A

#_05825F: AND.b #$03

;---------------------------------------------------------------------------------------------------

.in_idle_state
#_058261: TAY
#_058262: LDA.w .anim_step,Y

;---------------------------------------------------------------------------------------------------

.adjust_animation
#_058265: STA.w $0DC0,X

; Why didn't this use the jump table routine?
#_058268: LDA.w $0D80,X

#_05826B: CMP.b #$02
#_05826D: BEQ ArcheryGame_Host_ProctorGame

#_05826F: CMP.b #$01
#_058271: BEQ ArcheryGame_Host_VerifyPlay

#_058273: CMP.b #$03
#_058275: BNE ArcheryGame_Host_Idle

;===================================================================================================

#_058277: LDA.w $1CE8
#_05827A: BNE ArcheryGame_Host_GameRejected

#_05827C: LDA.b #$01
#_05827E: STA.w $0D80,X

#_058281: BRA ArcheryGame_Host_TakeMoney

;===================================================================================================

ArcheryGame_Host_Idle:
#_058283: LDA.b #$0A
#_058285: STA.w $0F60,X

#_058288: JSL Sprite_CheckDamageToLink_same_layer_long
#_05828C: BCC .exit

#_05828E: LDA.b $F6
#_058290: BPL .exit

; Message 0083
#_058292: LDA.b #$83
#_058294: JSR ArcheryGame_Host_ShowMessage

#_058297: INC.w $0D80,X

.exit
#_05829A: RTS

;===================================================================================================

ArcheryGame_Host_VerifyPlay:
#_05829B: LDA.w $1CE8
#_05829E: BNE ArcheryGame_Host_GameRejected

;===================================================================================================

ArcheryGame_Host_TakeMoney:
#_0582A0: REP #$20

#_0582A2: LDA.l $7EF360
#_0582A6: CMP.w #20

#_0582A9: SEP #$20
#_0582AB: BCC ArcheryGame_Host_InformLinkOfHisPoverty

#_0582AD: STZ.w $0EB0,X

#_0582B0: STZ.w $0B88

#_0582B3: INC.w $0D80,X

; Message 0084
#_0582B6: LDA.b #$84
#_0582B8: BRA ArcheryGame_Host_ShowMessage

;===================================================================================================

ArcheryGame_Host_GameRejected:
#_0582BA: STZ.w $0D80,X

; Message 0085
#_0582BD: LDA.b #$85

;===================================================================================================

ArcheryGame_Host_ShowMessage:
#_0582BF: STA.w $1CF0
#_0582C2: STZ.w $1CF1
#_0582C5: JSL Sprite_ShowMessageMinimal

#_0582C9: STZ.w $0DF0,X

#_0582CC: RTS

;===================================================================================================

ArcheryGame_Host_InformLinkOfHisPoverty:
#_0582CD: STZ.w $0D80,X

; Message 0085
#_0582D0: LDA.b #$85
#_0582D2: BRA ArcheryGame_Host_ShowMessage

;===================================================================================================

ArcheryGame_Host_ProctorGame:
#_0582D4: LDA.w $0EB0,X
#_0582D7: BNE .arrows_on_display

#_0582D9: LDA.b #$05
#_0582DB: STA.w $0B99

#_0582DE: LDA.b #$02
#_0582E0: JSL DeleteBoomAndByrnaSparks

#_0582E4: LDA.b #$27
#_0582E6: STA.w $0E00,X

#_0582E9: REP #$20

; take 20 rupees
#_0582EB: LDA.l $7EF360
#_0582EF: SEC
#_0582F0: SBC.w #20
#_0582F3: STA.l $7EF360

#_0582F7: SEP #$20

#_0582F9: INC.w $0EB0,X

;---------------------------------------------------------------------------------------------------

.arrows_on_display
#_0582FC: LDA.b #$34
#_0582FE: JSL OAM_AllocateFromRegionA

#_058302: JSR Sprite_PrepOAMCoord_Bank05

#_058305: LDY.w $0B99
#_058308: STY.b $0D

#_05830A: LDA.w $0E00,X
#_05830D: BEQ .dont_update_credits_display

#_05830F: LSR A
#_058310: LSR A
#_058311: LSR A
#_058312: TAY

#_058313: LDA.w .arrow_credits,Y
#_058316: STA.b $0D

;---------------------------------------------------------------------------------------------------

.dont_update_credits_display
#_058318: PHX

#_058319: LDA.b $0D
#_05831B: ASL A
#_05831C: CLC
#_05831D: ADC.b #$07
#_05831F: TAX

;---------------------------------------------------------------------------------------------------

#_058320: LDY.b #$00

.next_arrow_draw
#_058322: LDA.b $00
#_058324: CLC
#_058325: ADC.b #$EC
#_058327: ADC.w .offset_x,X
#_05832A: STA.b ($90),Y

#_05832C: LDA.b $02
#_05832E: CLC
#_05832F: ADC.b #$D0
#_058331: ADC.w .offset_y,X

#_058334: INY
#_058335: STA.b ($90),Y

#_058337: LDA.w .char,X
#_05833A: INY
#_05833B: STA.b ($90),Y

#_05833D: LDA.w .props,X
#_058340: INY
#_058341: STA.b ($90),Y

#_058343: PHY

#_058344: TYA
#_058345: LSR A
#_058346: LSR A
#_058347: TAY

#_058348: LDA.b #$00
#_05834A: STA.b ($92),Y

#_05834C: PLY
#_05834D: INY

#_05834E: DEX
#_05834F: BPL .next_arrow_draw

;---------------------------------------------------------------------------------------------------

#_058351: PLX

#_058352: LDA.w $0B99
#_058355: ORA.w $0F10,X

; !HARDCODED ancilla slot checks
#_058358: ORA.w $0C4A
#_05835B: ORA.w $0C4B
#_05835E: ORA.w $0C4C
#_058361: ORA.w $0C4D
#_058364: ORA.w $0C4E
#_058367: BNE .exit_b

#_058369: LDA.b #$0A
#_05836B: STA.w $0F60,X

#_05836E: JSL Sprite_CheckDamageToLink_same_layer_long
#_058372: BCC .exit_b

#_058374: LDA.b $F6
#_058376: BPL .exit_b

; Message 0086
#_058378: LDA.b #$86
#_05837A: JSR ArcheryGame_Host_ShowMessage

#_05837D: INC.w $0D80,X

.exit_b
#_058380: RTS

;---------------------------------------------------------------------------------------------------

.arrow_credits
#_058381: db  5
#_058382: db  4
#_058383: db  3
#_058384: db  2
#_058385: db  1
#_058386: db  0

;---------------------------------------------------------------------------------------------------

.offset_x
#_058387: db   0,   0
#_058389: db   0,   0
#_05838B: db  48,  48
#_05838D: db  48,  48
#_05838F: db   8,   8
#_058391: db  16,  16
#_058393: db  24,  24
#_058395: db  32,  32
#_058397: db  40,  40

;---------------------------------------------------------------------------------------------------

.offset_y
#_058399: db  -8,   0
#_05839B: db   8,  16
#_05839D: db  -8,   0
#_05839F: db   8,  16
#_0583A1: db   0,   8
#_0583A3: db   0,   8
#_0583A5: db   0,   8
#_0583A7: db   0,   8
#_0583A9: db   0,   8

;---------------------------------------------------------------------------------------------------

.char
#_0583AB: db $2B, $3B
#_0583AD: db $3B, $2B
#_0583AF: db $2B, $3B
#_0583B1: db $3B, $2B
#_0583B3: db $63, $73
#_0583B5: db $63, $73
#_0583B7: db $63, $73
#_0583B9: db $63, $73
#_0583BB: db $63, $73

;---------------------------------------------------------------------------------------------------

.props
#_0583BD: db $33, $33
#_0583BF: db $B3, $B3
#_0583C1: db $73, $73
#_0583C3: db $F3, $F3
#_0583C5: db $32, $32
#_0583C7: db $32, $32
#_0583C9: db $32, $32
#_0583CB: db $32, $32
#_0583CD: db $32, $32

;===================================================================================================

ArcheryGame_Prizes:
#_0583CF: db  4,  8, 16, 32, 64
#_0583D4: db 99, 99, 99, 99, 99

;===================================================================================================

ArcheryGame_Octo:
#_0583D9: LDA.w $0ED0,X
#_0583DC: CMP.b #$05
#_0583DE: BCC .prize_fine

#_0583E0: LDA.b #$06
#_0583E2: STA.w $0DA0,X

;---------------------------------------------------------------------------------------------------

.prize_fine
#_0583E5: LDA.w $0E40,X
#_0583E8: AND.b #$E0
#_0583EA: STA.w $0E40,X

#_0583ED: LDA.w $0E10,X
#_0583F0: BNE .arrow_sticking

#_0583F2: LDA.w $0E80,X
#_0583F5: LSR A
#_0583F6: LSR A
#_0583F7: LSR A

;---------------------------------------------------------------------------------------------------

.arrow_sticking
#_0583F8: AND.b #$04
#_0583FA: ASL A
#_0583FB: ASL A
#_0583FC: ASL A
#_0583FD: ASL A
#_0583FE: STA.b $00

#_058400: LDA.w $0F50,X
#_058403: AND.b #$BF
#_058405: ORA.b $00
#_058407: STA.w $0F50,X

#_05840A: LDA.w $0FDA
#_05840D: SEC
#_05840E: SBC.b #$03
#_058410: STA.w $0FDA

#_058413: JSL SpriteDraw_SingleLarge_long

;---------------------------------------------------------------------------------------------------

#_058417: LDA.w $0E10,X
#_05841A: BEQ .no_arrow_sticking

;---------------------------------------------------------------------------------------------------

#_05841C: PHA

#_05841D: LDA.w $0E40,X
#_058420: ORA.b #$05
#_058422: STA.w $0E40,X

#_058425: PLA
#_058426: CMP.b #$60
#_058428: BNE .dont_payout

#_05842A: LDA.b $11
#_05842C: BNE .dont_payout

#_05842E: LDA.b #$70
#_058430: STA.w $0DF0

#_058433: LDY.w $0DA0,X

#_058436: LDA.b #$00
#_058438: XBA
#_058439: LDA.w ArcheryGame_Prizes-1,Y

#_05843C: REP #$20

#_05843E: CLC
#_05843F: ADC.l $7EF360
#_058443: STA.l $7EF360

#_058447: SEP #$20

;---------------------------------------------------------------------------------------------------

.dont_payout
#_058449: JSR ArcheryGame_DrawPrize

.no_arrow_sticking
#_05844C: BRA ArcheryGame_TargetMain

;===================================================================================================

ArcheryGame_Hand:
#_05844E: LDA.w $0E40,X
#_058451: AND.b #$E0
#_058453: STA.w $0E40,X

#_058456: LDA.w $0FDA
#_058459: CLC
#_05845A: ADC.b #$03
#_05845C: STA.w $0FDA

#_05845F: JSL SpriteDraw_SingleLarge_long

;===================================================================================================
; Shared between both types of targets
;===================================================================================================
ArcheryGame_TargetMain:
#_058463: JSR Sprite_CheckIfActive_Bank05

#_058466: LDA.w $0EE0,X
#_058469: DEC A
#_05846A: BNE .no_sfx

#_05846C: LDA.b #!SFX2_3C
#_05846E: STA.w $012E

.no_sfx
#_058471: INC.w $0E80,X

#_058474: JSR Sprite_Move_X_Bank05

#_058477: LDA.w $0E00,X
#_05847A: BNE .exit_a

#_05847C: LDA.w $0DF0,X
#_05847F: STA.w $0BA0,X
#_058482: BNE .reset_location

;---------------------------------------------------------------------------------------------------

#_058484: JSR Sprite_CheckTileCollision_Bank05
#_058487: BEQ .exit_a

#_058489: LDA.b #$10
#_05848B: STA.w $0DF0,X
#_05848E: STZ.w $0E10,X

.exit_a
#_058491: RTS

;===================================================================================================

; where the sprite spawns to when it moves off screen
.respawn_location
#_058492: db $E8, $08

;---------------------------------------------------------------------------------------------------

.reset_location
#_058494: CMP.b #$01
#_058496: BNE .exit_b

#_058498: LDY.w $0DC0,X

#_05849B: LDA.w .respawn_location,Y
#_05849E: STA.w $0D10,X

#_0584A1: LDA.b $23
#_0584A3: STA.w $0D30,X

#_0584A6: LDA.b #$20
#_0584A8: STA.w $0E00,X

#_0584AB: STZ.w $0ED0,X

.exit_b
#_0584AE: RTS

;===================================================================================================

pool ArcheryGame_DrawPrize

.offset_x
#_0584AF: db  -8,  -8,   0,   8,  16

.offset_y
#_0584B4: db -24, -16, -20, -20, -20

.char
#_0584B9: db $0B, $1B, $B6, $02, $30

.prop
#_0584BE: db $38, $38, $34, $35, $35

.tens_digit
#_0584C3: db $12, $32, $31, $03, $22, $33

.ones_digit
#_0584C9: db $7C, $7C, $22, $02, $12, $33

pool off

;---------------------------------------------------------------------------------------------------

ArcheryGame_DrawPrize:
#_0584CF: JSR Sprite_PrepOAMCoord_Bank05

#_0584D2: LDA.w $0DA0,X
#_0584D5: STA.b $06

#_0584D7: PHX

;---------------------------------------------------------------------------------------------------

#_0584D8: LDX.b #$04
#_0584DA: LDY.b #$04

.next_object
#_0584DC: LDA.b $00
#_0584DE: CLC
#_0584DF: ADC.w .offset_x,X
#_0584E2: STA.b ($90),Y

#_0584E4: LDA.b $02
#_0584E6: CLC
#_0584E7: ADC.w .offset_y,X

#_0584EA: INY
#_0584EB: STA.b ($90),Y

#_0584ED: CPX.b #$04
#_0584EF: BNE .not_ones_place

#_0584F1: PHX

#_0584F2: LDX.b $06
#_0584F4: LDA.w .ones_digit-1,X

#_0584F7: PLX

#_0584F8: BRA .write_char

.not_ones_place
#_0584FA: CPX.b #$03
#_0584FC: BNE .not_tens_place

#_0584FE: PHX

#_0584FF: LDX.b $06
#_058501: LDA.w .tens_digit-1,X

#_058504: PLX

#_058505: BRA .write_char

.not_tens_place
#_058507: LDA.w .char,X

.write_char
#_05850A: INY
#_05850B: STA.b ($90),Y

#_05850D: CMP.b #$7C
#_05850F: INY

#_058510: LDA.w .prop,X
#_058513: BCC .nonempty

#_058515: AND.b #$FE

.nonempty
#_058517: STA.b ($90),Y

#_058519: PHY

#_05851A: TYA
#_05851B: LSR A
#_05851C: LSR A
#_05851D: TAY

#_05851E: LDA.b #$00
#_058520: STA.b ($92),Y

#_058522: PLY
#_058523: INY

#_058524: DEX
#_058525: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_058527: PLX

#_058528: JSL Sprite_DrawDistressSweat

#_05852C: RTS

;===================================================================================================

pool Sprite_63_DebirandoPit

.drag_x
#_05852D: db -1,  1

.drag_y
#_05852F: db -1,  0

pool off

;---------------------------------------------------------------------------------------------------

Sprite_63_DebirandoPit:
#_058531: JSR Sprite_DirectionToFaceLink_Bank05

#_058534: LDA.b $0E
#_058536: CLC
#_058537: ADC.b #$20
#_058539: CMP.b #$40
#_05853B: BCS .ignore_link_priority

#_05853D: LDA.b $0F
#_05853F: CLC
#_058540: ADC.b #$20
#_058542: CMP.b #$40
#_058544: BCS .ignore_link_priority

#_058546: LDA.b #$10
#_058548: JSL OAM_AllocateFromRegionB

.ignore_link_priority
#_05854C: JSR SpriteDraw_DebirandoPit
#_05854F: JSR Sprite_CheckIfActive_Bank05

;---------------------------------------------------------------------------------------------------

#_058552: LDY.w $0EB0,X

#_058555: LDA.w $0DD0,Y
#_058558: CMP.b #$06
#_05855A: BNE .parent_not_dying

#_05855C: STA.w $0DD0,X

#_05855F: LDA.w $0DF0,Y
#_058562: STA.w $0DF0,X

#_058565: LDA.w $0E40,X
#_058568: CLC
#_058569: ADC.b #$04
#_05856B: STA.w $0E40,X

#_05856E: RTS

;---------------------------------------------------------------------------------------------------

.parent_not_dying
#_05856F: LDA.w $0DC0,X
#_058572: CMP.b #$03
#_058574: BCS .run_ai

#_058576: JSL Sprite_CheckDamageToLink_same_layer_long
#_05857A: BCC .run_ai

#_05857C: JSL Link_CancelDash_long

; Why does this mechanic even exist?
#_058580: LDA.b $F6
#_058582: AND.b #$10
#_058584: BNE .not_pressing_r

#_058586: LDA.b #$01
#_058588: STA.w $0B7B

;---------------------------------------------------------------------------------------------------

.not_pressing_r
#_05858B: LDA.b #$10
#_05858D: JSL Sprite_ApplySpeedTowardsLink_long

#_058591: LDY.b #$00

#_058593: LDA.b $00
#_058595: BPL .positive_x

#_058597: EOR.b #$FF
#_058599: INC A

#_05859A: INY

.positive_x
#_05859B: CLC
#_05859C: ADC.w $0D90,X
#_05859F: STA.w $0D90,X
#_0585A2: BCC .skip_drag_a

#_0585A4: LDA.w .drag_x,Y
#_0585A7: STA.w $0B7E

#_0585AA: LDA.w .drag_y,Y
#_0585AD: STA.w $0B7F

;---------------------------------------------------------------------------------------------------

.skip_drag_a
#_0585B0: LDY.b #$00

#_0585B2: LDA.b $01
#_0585B4: BPL .positive_y

#_0585B6: EOR.b #$FF
#_0585B8: INC A

#_0585B9: INY

.positive_y
#_0585BA: CLC
#_0585BB: ADC.w $0DA0,X
#_0585BE: STA.w $0DA0,X

#_0585C1: BCC .run_ai

#_0585C3: LDA.w .drag_x,Y
#_0585C6: STA.w $0B7C

#_0585C9: LDA.w .drag_y,Y
#_0585CC: STA.w $0B7D

;---------------------------------------------------------------------------------------------------

.run_ai
#_0585CF: LDA.w $0D80,X
#_0585D2: JSL JumpTableLocal
#_0585D6: dw DebirandoPit_Closed
#_0585D8: dw DebirandoPit_Opening
#_0585DA: dw DebirandoPit_Open
#_0585DC: dw DebirandoPit_Closing

;===================================================================================================

DebirandoPit_Closed:
#_0585DE: LDA.b #$06
#_0585E0: STA.w $0DC0,X

#_0585E3: LDA.w $0DF0,X
#_0585E6: BNE .exit

#_0585E8: INC.w $0D80,X

#_0585EB: LDA.b #$3F
#_0585ED: STA.w $0DF0,X

.exit
#_0585F0: RTS

;===================================================================================================

pool DebirandoPit_Opening

.anim_step
#_0585F1: db $05, $04, $03, $03

pool off

;---------------------------------------------------------------------------------------------------

DebirandoPit_Opening:
#_0585F5: LDA.w $0DF0,X
#_0585F8: BNE .delay

#_0585FA: INC.w $0D80,X

#_0585FD: LDA.b #$FF
#_0585FF: STA.w $0DF0,X

#_058602: RTS

.delay
#_058603: LSR A ; /16
#_058604: LSR A
#_058605: LSR A
#_058606: LSR A
#_058607: TAY

#_058608: LDA.w .anim_step,Y
#_05860B: STA.w $0DC0,X

#_05860E: RTS

;===================================================================================================

DebirandoPit_Open:
#_05860F: LDA.b $1A
#_058611: AND.b #$0F
#_058613: BNE .dont_adjust_anim

#_058615: INC.w $0DC0,X

#_058618: LDA.w $0DC0,X
#_05861B: CMP.b #$03
#_05861D: BCC .dont_adjust_anim

#_05861F: STZ.w $0DC0,X

.dont_adjust_anim
#_058622: LDA.w $0DF0,X
#_058625: BNE .exit

#_058627: LDA.b #$3F
#_058629: STA.w $0DF0,X

#_05862C: INC.w $0D80,X

.exit
#_05862F: RTS

;===================================================================================================

pool DebirandoPit_Closing

.anim_step
#_058630: db $03, $03, $04, $05

pool off

;---------------------------------------------------------------------------------------------------

DebirandoPit_Closing:
#_058634: LDA.w $0DF0,X
#_058637: BNE .delay

#_058639: STZ.w $0D80,X

#_05863C: LDA.b #$20
#_05863E: STA.w $0DF0,X

#_058641: RTS

.delay
#_058642: LSR A ; /16
#_058643: LSR A
#_058644: LSR A
#_058645: LSR A
#_058646: TAY

#_058647: LDA.w .anim_step,Y
#_05864A: STA.w $0DC0,X

#_05864D: RTS

;===================================================================================================

pool SpriteDraw_DebirandoPit

.offset_x
#_05864E: dw  -8,   8,  -8,   8
#_058656: dw  -8,   8,  -8,   8
#_05865E: dw  -8,   8,  -8,   8
#_058666: dw   0,   8,   0,   8
#_05866E: dw   0,   8,   0,   8
#_058676: dw  -8,   8,  -8,   8

.offset_y
#_05867E: dw  -8,  -8,   8,   8
#_058686: dw  -8,  -8,   8,   8
#_05868E: dw  -8,  -8,   8,   8
#_058696: dw   0,   0,   8,   8
#_05869E: dw   0,   0,   8,   8
#_0586A6: dw  -8,  -8,   8,   8

.char
#_0586AE: db $04, $04, $04, $04
#_0586B2: db $22, $22, $22, $22
#_0586B6: db $02, $02, $02, $02
#_0586BA: db $29, $29, $29, $29
#_0586BE: db $39, $39, $39, $39
#_0586C2: db $2A, $2A, $2A, $2A

.flip
#_0586C6: db $00, $40, $80, $C0
#_0586CA: db $00, $40, $80, $C0
#_0586CE: db $00, $40, $80, $C0
#_0586D2: db $00, $40, $80, $C0
#_0586D6: db $00, $40, $80, $C0
#_0586DA: db $00, $40, $80, $C0

.size
#_0586DE: db $02
#_0586DF: db $02
#_0586E0: db $02
#_0586E1: db $00
#_0586E2: db $00
#_0586E3: db $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_DebirandoPit:
#_0586E4: JSR Sprite_PrepOAMCoord_Bank05

#_0586E7: LDA.w $0DC0,X
#_0586EA: CMP.b #$06
#_0586EC: BEQ .exit

#_0586EE: PHX

#_0586EF: TAX

#_0586F0: LDA.w .size,X
#_0586F3: STA.b $0D

#_0586F5: TXA
#_0586F6: ASL A
#_0586F7: ASL A
#_0586F8: STA.b $06

;---------------------------------------------------------------------------------------------------

#_0586FA: LDX.b #$03

.next_object
#_0586FC: PHX

#_0586FD: TXA
#_0586FE: CLC
#_0586FF: ADC.b $06
#_058701: PHA

#_058702: ASL A
#_058703: TAX

#_058704: REP #$20

#_058706: LDA.b $00
#_058708: CLC
#_058709: ADC.w .offset_x,X
#_05870C: STA.b ($90),Y

#_05870E: AND.w #$0100
#_058711: STA.b $0E

#_058713: LDA.b $02
#_058715: CLC
#_058716: ADC.w .offset_y,X

#_058719: INY
#_05871A: STA.b ($90),Y

#_05871C: CLC
#_05871D: ADC.w #$0010
#_058720: CMP.w #$0100

#_058723: SEP #$20
#_058725: BCC .on_screen

#_058727: LDA.b #$F0
#_058729: STA.b ($90),Y

.on_screen
#_05872B: PLX

#_05872C: LDA.w .char,X
#_05872F: INY
#_058730: STA.b ($90),Y

#_058732: LDA.w .flip,X
#_058735: ORA.b $05

#_058737: INY
#_058738: STA.b ($90),Y

#_05873A: PHY

#_05873B: TYA
#_05873C: LSR A
#_05873D: LSR A
#_05873E: TAY

#_05873F: LDA.b $0D
#_058741: ORA.b $0F
#_058743: STA.b ($92),Y

#_058745: PLY
#_058746: INY

#_058747: PLX
#_058748: DEX
#_058749: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_05874B: PLX

.exit
#_05874C: RTS

;===================================================================================================

Sprite_64_Debirando:
#_05874D: JSR SpriteDraw_Debirando
#_058750: JSR Sprite_CheckIfActive_Bank05

#_058753: LDA.w $0D80,X
#_058756: JSL JumpTableLocal
#_05875A: dw Debirando_Underground
#_05875C: dw Debirando_Emerge
#_05875E: dw Debirando_Shoot
#_058760: dw Debirando_Submerge

;===================================================================================================

Debirando_Underground:
#_058762: LDA.w $0DF0,X
#_058765: STA.w $0BA0,X
#_058768: BNE .exit

#_05876A: INC.w $0D80,X

#_05876D: LDA.b #$1F
#_05876F: STA.w $0DF0,X

.exit
#_058772: RTS

;===================================================================================================

pool Debirando_Emerge

.anim_step
#_058773: db $01, $00

pool off

;===================================================================================================

Debirando_Emerge:
#_058775: JSR Sprite_CheckDamageToAndFromLink_Bank05

#_058778: LDA.w $0DF0,X
#_05877B: BNE .delay

#_05877D: INC.w $0D80,X

#_058780: LDA.b #$80
#_058782: STA.w $0DF0,X

#_058785: RTS

.delay
#_058786: LSR A ; /16
#_058787: LSR A
#_058788: LSR A
#_058789: LSR A
#_05878A: TAY

#_05878B: LDA.w .anim_step,Y
#_05878E: STA.w $0DC0,X

#_058791: RTS

;===================================================================================================

Debirando_Shoot:
#_058792: JSR Sprite_CheckDamageToAndFromLink_Bank05

#_058795: LDA.w $0DF0,X
#_058798: BNE .delay

#_05879A: LDA.b #$1F
#_05879C: STA.w $0DF0,X

#_05879F: INC.w $0D80,X

#_0587A2: RTS

.delay
#_0587A3: AND.b #$1F
#_0587A5: ORA.w $0ED0,X

; pretty useless since CheckIfActive already covers this
#_0587A8: ORA.b $11
#_0587AA: ORA.w $0F00,X
#_0587AD: ORA.w $0FC1
#_0587B0: BNE .dont_shoot

#_0587B2: JSL Sprite_SpawnFireball

.dont_shoot
#_0587B6: INC.w $0E80,X

#_0587B9: LDA.w $0E80,X
#_0587BC: LSR A
#_0587BD: LSR A
#_0587BE: LSR A
#_0587BF: AND.b #$01

#_0587C1: CLC
#_0587C2: ADC.b #$02
#_0587C4: STA.w $0DC0,X

#_0587C7: RTS

;===================================================================================================

pool Debirando_Submerge

.anim_step
#_0587C8: db $00, $01

pool off

;---------------------------------------------------------------------------------------------------

Debirando_Submerge:
#_0587CA: JSR Sprite_CheckDamageToAndFromLink_Bank05

#_0587CD: LDA.w $0DF0,X
#_0587D0: BNE .delay

#_0587D2: STZ.w $0D80,X

#_0587D5: LDA.b #$DF
#_0587D7: STA.w $0DF0,X

#_0587DA: RTS

.delay
#_0587DB: LSR A ; /16
#_0587DC: LSR A
#_0587DD: LSR A
#_0587DE: LSR A
#_0587DF: TAY

#_0587E0: LDA.w .anim_step,Y
#_0587E3: STA.w $0DC0,X

#_0587E6: RTS

;===================================================================================================

pool SpriteDraw_Debirando

.offset_x
#_0587E7: dw   0,   8,   0,   8
#_0587EF: dw   0,   0,   0,   8
#_0587F7: dw   0,   0,   0,   0
#_0587FF: dw   0,   0,   0,   0

.offset_y
#_058807: dw   2,   2,   6,   6
#_05880F: dw  -2,  -2,   6,   6
#_058817: dw  -4,  -4,  -4,  -4
#_05881F: dw  -4,  -4,  -4,  -4

.char
#_058827: db $00, $00, $D8, $D8
#_05882B: db $00, $00, $D9, $D9
#_05882F: db $00, $00, $00, $00
#_058833: db $20, $20, $20, $20

.prop
#_058837: db $01, $41, $00, $40
#_05883B: db $01, $01, $00, $40
#_05883F: db $01, $01, $01, $01
#_058843: db $01, $01, $01, $01

.size
#_058847: db $00, $00, $00, $00
#_05884B: db $02, $02, $00, $00
#_05884F: db $02, $02, $02, $02
#_058853: db $02, $02, $02, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Debirando:
#_058857: LDA.w $0D80,X
#_05885A: BEQ .exit

#_05885C: JSR Sprite_PrepOAMCoord_Bank05

#_05885F: LDA.w $0DC0,X
#_058862: ASL A
#_058863: ASL A
#_058864: STA.b $06

#_058866: PHX

;---------------------------------------------------------------------------------------------------

#_058867: LDX.b #$03

.next_object
#_058869: PHX

#_05886A: TXA
#_05886B: CLC
#_05886C: ADC.b $06
#_05886E: PHA

#_05886F: ASL A
#_058870: TAX

#_058871: REP #$20

#_058873: LDA.b $00
#_058875: CLC
#_058876: ADC.w .offset_x,X
#_058879: STA.b ($90),Y

#_05887B: AND.w #$0100
#_05887E: STA.b $0E

#_058880: LDA.b $02
#_058882: CLC
#_058883: ADC.w .offset_y,X

#_058886: INY
#_058887: STA.b ($90),Y

#_058889: CLC
#_05888A: ADC.w #$0010
#_05888D: CMP.w #$0100

#_058890: SEP #$20
#_058892: BCC .on_screen

#_058894: LDA.b #$F0
#_058896: STA.b ($90),Y

.on_screen
#_058898: PLX

#_058899: LDA.w .char,X
#_05889C: INY
#_05889D: STA.b ($90),Y

#_05889F: LDA.w .prop,X
#_0588A2: PHA

#_0588A3: AND.b #$0F
#_0588A5: CMP.b #$01
#_0588A7: PLA

#_0588A8: EOR.b $05
#_0588AA: BCS .skip_pal_override

#_0588AC: AND.b #$F0

.skip_pal_override
#_0588AE: INY

#_0588AF: STA.b ($90),Y

#_0588B1: PHY

#_0588B2: TYA
#_0588B3: LSR A
#_0588B4: LSR A
#_0588B5: TAY

#_0588B6: LDA.w .size,X
#_0588B9: ORA.b $0F
#_0588BB: STA.b ($92),Y

#_0588BD: PLY
#_0588BE: INY

#_0588BF: PLX
#_0588C0: DEX
#_0588C1: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_0588C3: PLX

.exit
#_0588C4: RTS

;===================================================================================================

Sprite_62_MasterSword:
#_0588C5: LDA.w $0E80,X
#_0588C8: JSL JumpTableLocal
#_0588CC: dw MasterSword_Main
#_0588CE: dw MasterSword_LightFountain
#_0588D0: dw MasterSword_LightBeam
#_0588D2: dw MasterSword_Prop
#_0588D4: dw MasterSword_LightWell

;===================================================================================================

MasterSword_Main:
; Is this the ending sequence?
#_0588D6: LDA.b $10
#_0588D8: CMP.b #$1A
#_0588DA: BEQ .dont_terminate

;---------------------------------------------------------------------------------------------------

#_0588DC: PHX

#_0588DD: LDX.b $8A
#_0588DF: LDA.l $7EF280,X

#_0588E3: PLX

#_0588E4: AND.b #$40
#_0588E6: BEQ .dont_terminate

#_0588E8: JMP.w MasterSword_SelfTerminate

;---------------------------------------------------------------------------------------------------

.dont_terminate
#_0588EB: LDA.w $0D80,X
#_0588EE: CMP.b #$05
#_0588F0: BEQ .dont_draw

#_0588F2: JSR SpriteDraw_MasterSword

.dont_draw
#_0588F5: LDA.w $0D80,X
#_0588F8: JSL JumpTableLocal
#_0588FC: dw MasterSword_InPedestal
#_0588FE: dw MasterSword_PendantsCircling
#_058900: dw MasterSword_TurnUpLights
#_058902: dw MasterSword_MaxBrightness
#_058904: dw MasterSword_HandleReceipt
#_058906: dw MasterSword_SelfTerminate

;===================================================================================================

MasterSword_InPedestal:
#_058908: JSL CheckIfLinkIsBusy
#_05890C: BCS .exit

#_05890E: JSL Sprite_CheckDamageToLink_same_layer_long
#_058912: BCC .exit

;---------------------------------------------------------------------------------------------------

#_058914: LDA.b $2F
#_058916: CMP.b #$02
#_058918: BNE .exit

#_05891A: LDA.b $F6
#_05891C: BPL .exit

#_05891E: LDA.l $7EF374
#_058922: AND.b #$07
#_058924: CMP.b #$07
#_058926: BNE .exit

#_058928: LDA.b #!SONG_0A
#_05892A: STA.w $012C

#_05892D: LDA.b #$01
#_05892F: STA.w $037B

#_058932: LDA.b #$09
#_058934: JSR MasterSword_SpawnPendantProp

#_058937: LDA.b #$0B
#_058939: JSR MasterSword_SpawnPendantProp

#_05893C: LDA.b #$0F
#_05893E: JSR MasterSword_SpawnPendantProp

#_058941: JSR MasterSword_SpawnLightWell

#_058944: INC.w $0D80,X

#_058947: LDA.b #$F0
#_058949: STA.w $0DF0,X

.exit
#_05894C: RTS

;===================================================================================================

MasterSword_PendantsCircling:
#_05894D: LDA.w $0DF0,X
#_058950: BNE .delay

#_058952: JSR MasterSword_SpawnLightFountain

#_058955: INC.w $0D80,X

#_058958: LDA.b #$C0
#_05895A: STA.w $0DF0,X

.delay
#_05895D: LDA.b #$0A
#_05895F: STA.w $0377

#_058962: LDA.b #$01
#_058964: STA.w $02E4

#_058967: RTS

;===================================================================================================

MasterSword_TurnUpLights:
#_058968: LDA.w $0DF0,X
#_05896B: BNE .delay

#_05896D: LDY.b #$FF
#_05896F: JSR MasterSword_SpawnLightBeam

#_058972: INC.w $0D80,X

#_058975: LDA.b #$08
#_058977: STA.w $0DF0,X

.delay
#_05897A: LDA.b #$0A
#_05897C: BRA MasterSword_AssertCutscene

;===================================================================================================

MasterSword_MaxBrightness:
#_05897E: LDA.w $0DF0,X
#_058981: BNE .delay

#_058983: LDA.b #$01
#_058985: LDY.b #$FF
#_058987: JSR MasterSword_SpawnLightBeam

#_05898A: INC.w $0D80,X

#_05898D: LDA.b #$10
#_05898F: STA.w $0DF0,X

.delay
#_058992: LDA.b #$0B

;===================================================================================================

MasterSword_AssertCutscene:
#_058994: STA.w $0377

#_058997: LDA.b #$01
#_058999: STA.w $02E4

#_05899C: RTS

;===================================================================================================

MasterSword_HandleReceipt:
#_05899D: LDA.w $0DF0,X
#_0589A0: BNE .delay

#_0589A2: PHX

#_0589A3: LDX.b $8A

#_0589A5: LDA.l $7EF280,X
#_0589A9: ORA.b #$40
#_0589AB: STA.l $7EF280,X

#_0589AF: LDY.b #!ITEMGET_01
#_0589B1: STZ.w $02E9
#_0589B4: JSL Link_ReceiveItem

#_0589B8: PLX

#_0589B9: LDA.b #$05
#_0589BB: STA.l $7EF3C7

#_0589BF: STZ.w $0377

#_0589C2: INC.w $0D80,X

.delay
#_0589C5: RTS

;===================================================================================================

MasterSword_SelfTerminate:
#_0589C6: STZ.w $0DD0,X

#_0589C9: RTS

;===================================================================================================

pool MasterSword_LightFountain

.anim_step
#_0589CA: db $00, $01, $01, $02
#_0589CE: db $02, $02, $01, $01
#_0589D2: db $00

.spawn_light_flag
#_0589D3: db $00, $00, $01, $01
#_0589D7: db $02, $02, $00, $00
#_0589DB: db $00

pool off

;---------------------------------------------------------------------------------------------------

MasterSword_LightFountain:
#_0589DC: JSR SpriteDraw_LightFountain

#_0589DF: INC.w $0D90,X

#_0589E2: LDA.w $0D90,X
#_0589E5: BNE .continue_light_show

#_0589E7: INC.w $0DB0,X
#_0589EA: STZ.w $0DD0,X

;---------------------------------------------------------------------------------------------------

.continue_light_show
#_0589ED: LSR A
#_0589EE: LSR A
#_0589EF: AND.b #$03
#_0589F1: STA.w $0DE0,X

#_0589F4: LDA.w $0D90,X
#_0589F7: LSR A ; /32
#_0589F8: LSR A
#_0589F9: LSR A
#_0589FA: LSR A
#_0589FB: LSR A
#_0589FC: AND.b #$07
#_0589FE: TAY

#_0589FF: LDA.w .anim_step,Y
#_058A02: STA.w $0DC0,X

;---------------------------------------------------------------------------------------------------

#_058A05: LDA.w .spawn_light_flag,Y
#_058A08: BEQ .exit

#_058A0A: TAY

#_058A0B: LDA.w $0D90,X
#_058A0E: LSR A
#_058A0F: LSR A
#_058A10: AND.b #$01

#_058A12: JSR MasterSword_SpawnLightBeam

.exit
#_058A15: RTS

;===================================================================================================

MasterSword_LightWell:
#_058A16: JSR SpriteDraw_LightFountain

#_058A19: INC.w $0D90,X

#_058A1C: LDA.w $0D90,X
#_058A1F: BNE .delay

#_058A21: INC.w $0DB0,X

#_058A24: STZ.w $0DD0,X

.delay
#_058A27: LSR A
#_058A28: LSR A
#_058A29: AND.b #$03
#_058A2B: STA.w $0DE0,X

#_058A2E: LDA.b #$00
#_058A30: STA.w $0DC0,X

#_058A33: RTS

;===================================================================================================

pool SpriteDraw_LightFountain

.oam_groups
; group00
#_058A34: dw  -6,   4 : db $82, $00, $00, $02

; group01
#_058A3C: dw  -6,   4 : db $82, $40, $00, $02

; group02
#_058A44: dw  -6,   4 : db $82, $C0, $00, $02

; group03
#_058A4C: dw  -6,   4 : db $82, $80, $00, $02

; group04
#_058A54: dw  -6,   4 : db $A0, $00, $00, $02

; group05
#_058A5C: dw  -6,   4 : db $A0, $40, $00, $02

; group06
#_058A64: dw  -6,   4 : db $A0, $C0, $00, $02

; group07
#_058A6C: dw  -6,   4 : db $A0, $80, $00, $02

; group08
#_058A74: dw  -6,   4 : db $80, $00, $00, $02

; group09
#_058A7C: dw  -6,   4 : db $80, $40, $00, $02

; group0A
#_058A84: dw  -6,   4 : db $80, $C0, $00, $02

; group0B
#_058A8C: dw  -6,   4 : db $80, $80, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_LightFountain:
#_058A94: LDA.b #$04
#_058A96: JSL OAM_AllocateFromRegionC

#_058A9A: LDA.w $0DC0,X
#_058A9D: ASL A
#_058A9E: ASL A

#_058A9F: ADC.w $0DE0,X

#_058AA2: ASL A
#_058AA3: ASL A
#_058AA4: ASL A

#_058AA5: ADC.b #.oam_groups>>0
#_058AA7: STA.b $08

#_058AA9: LDA.b #.oam_groups>>8
#_058AAB: ADC.b #$00
#_058AAD: STA.b $09

#_058AAF: LDA.b #$01

;===================================================================================================

Sprite_DrawMultiple_Bank05:
#_058AB1: JSL Sprite_DrawMultiple

#_058AB5: RTS

;===================================================================================================

MasterSword_SpawnLightWell:
#_058AB6: LDA.b #!SPRITE_62
#_058AB8: JSL Sprite_SpawnDynamically
#_058ABC: JSL Sprite_SetSpawnedCoordinates

#_058AC0: LDA.b #$04
#_058AC2: STA.w $0E80,Y

#_058AC5: LDA.b #$05
#_058AC7: STA.w $0F50,Y

#_058ACA: LDA.b #$00
#_058ACC: STA.w $0E40,Y

#_058ACF: RTS

;===================================================================================================

MasterSword_SpawnLightFountain:
#_058AD0: LDA.b #!SPRITE_62
#_058AD2: JSL Sprite_SpawnDynamically
#_058AD6: JSL Sprite_SetSpawnedCoordinates

#_058ADA: LDA.b #$01
#_058ADC: STA.w $0E80,Y

#_058ADF: LDA.b #$05
#_058AE1: STA.w $0F50,Y

#_058AE4: LDA.b #$00
#_058AE6: STA.w $0E40,Y

#_058AE9: RTS

;===================================================================================================

MasterSword_LightBeam:
#_058AEA: JSL SpriteDraw_SingleLarge_long

#_058AEE: LDA.w $0D90,X
#_058AF1: BEQ .dont_move

#_058AF3: JSR Sprite_Move_XY_Bank05

#_058AF6: LDA.b $1A
#_058AF8: AND.b #$03
#_058AFA: BNE .exit

#_058AFC: JSR MasterSword_SpawnReplacementLightBeam

.dont_move
#_058AFF: DEC.w $0DA0,X
#_058B02: BNE .exit

#_058B04: STZ.w $0DD0,X

.exit
#_058B07: RTS

;===================================================================================================

pool SpawnLightBeam

.speed_x_1
#_058B08: db   0, -48

.speed_x_2
#_058B0A: db   0,  48

.speed_x_3
#_058B0C: db -96, -48

.speed_x_4
#_058B0E: db  96,  48

;---------------------------------------------------------------------------------------------------

.speed_y_1
#_058B10: db -96, -48

.speed_y_2
#_058B12: db  96,  48

.speed_y_3
#_058B14: db   0,  48

.speed_y_4
#_058B16: db   0, -48

;---------------------------------------------------------------------------------------------------

.anim_step_1
#_058B18: db $01, $00

.anim_step_2
#_058B1A: db $03, $02

;---------------------------------------------------------------------------------------------------

.props_1
#_058B1C: db $05, $45

.props_2
#_058B1E: db $05, $05

pool off

;===================================================================================================

MasterSword_SpawnReplacementLightBeam:
#_058B20: LDA.b #!SPRITE_62
#_058B22: JSL Sprite_SpawnDynamically
#_058B26: BMI .exit

#_058B28: LDA.b $00
#_058B2A: CLC
#_058B2B: ADC.b #$00
#_058B2D: STA.w $0D10,Y

#_058B30: LDA.b $01
#_058B32: ADC.b #$00
#_058B34: STA.w $0D30,Y

#_058B37: LDA.b $02
#_058B39: CLC
#_058B3A: ADC.b #$00
#_058B3C: STA.w $0D00,Y

#_058B3F: LDA.b $03
#_058B41: ADC.b #$00
#_058B43: STA.w $0D20,Y

#_058B46: LDA.b #$02
#_058B48: STA.w $0E80,Y

#_058B4B: LDA.b #$03
#_058B4D: STA.w $0DA0,Y

#_058B50: LDA.w $0DC0,X
#_058B53: STA.w $0DC0,Y

#_058B56: LDA.w $0F50,X
#_058B59: STA.w $0F50,Y

#_058B5C: LDA.b #$00
#_058B5E: STA.w $0E40,Y

.exit
#_058B61: RTS

;===================================================================================================

MasterSword_SpawnLightBeam:
#_058B62: PHY
#_058B63: PHA

#_058B64: LDA.b #!SPRITE_62
#_058B66: JSL Sprite_SpawnDynamically
#_058B6A: BPL .spawn_a

#_058B6C: JMP.w .exit

;---------------------------------------------------------------------------------------------------

.spawn_a
#_058B6F: LDA.b $00
#_058B71: SEC
#_058B72: SBC.b #$04
#_058B74: STA.w $0D10,Y

#_058B77: LDA.b $01
#_058B79: SBC.b #$00
#_058B7B: STA.w $0D30,Y

#_058B7E: LDA.b $02
#_058B80: CLC
#_058B81: ADC.b #$04
#_058B83: STA.w $0D00,Y

#_058B86: LDA.b $03
#_058B88: ADC.b #$00
#_058B8A: STA.w $0D20,Y

#_058B8D: LDA.b #$02
#_058B8F: STA.w $0E80,Y
#_058B92: STA.w $0D90,Y

#_058B95: LDA.b #$00
#_058B97: STA.w $0E40,Y

#_058B9A: PLA
#_058B9B: PHX
#_058B9C: TAX

#_058B9D: LDA.w SpawnLightBeam_speed_x_1,X
#_058BA0: STA.w $0D50,Y

#_058BA3: LDA.w SpawnLightBeam_speed_y_1,X
#_058BA6: STA.w $0D40,Y

#_058BA9: LDA.w SpawnLightBeam_anim_step_1,X
#_058BAC: STA.w $0DC0,Y

#_058BAF: LDA.w SpawnLightBeam_props_1,X
#_058BB2: STA.w $0F50,Y

#_058BB5: TXA

#_058BB6: PLX

#_058BB7: STA.b $00

#_058BB9: PLA
#_058BBA: STA.w $0DA0,Y

#_058BBD: PHA

#_058BBE: LDA.b $00
#_058BC0: PHA

;---------------------------------------------------------------------------------------------------

#_058BC1: LDA.b #!SPRITE_62
#_058BC3: JSL Sprite_SpawnDynamically
#_058BC7: BPL .spawn_b

#_058BC9: JMP.w .exit

;---------------------------------------------------------------------------------------------------

.spawn_b
#_058BCC: LDA.b $00
#_058BCE: SEC
#_058BCF: SBC.b #$04
#_058BD1: STA.w $0D10,Y

#_058BD4: LDA.b $01
#_058BD6: SBC.b #$00
#_058BD8: STA.w $0D30,Y

#_058BDB: LDA.b $02
#_058BDD: CLC
#_058BDE: ADC.b #$04
#_058BE0: STA.w $0D00,Y

#_058BE3: LDA.b $03
#_058BE5: ADC.b #$00
#_058BE7: STA.w $0D20,Y

#_058BEA: LDA.b #$02
#_058BEC: STA.w $0E80,Y
#_058BEF: STA.w $0D90,Y

#_058BF2: LDA.b #$00
#_058BF4: STA.w $0E40,Y

#_058BF7: PLA
#_058BF8: PHX
#_058BF9: TAX

#_058BFA: LDA.w SpawnLightBeam_speed_x_2,X
#_058BFD: STA.w $0D50,Y

#_058C00: LDA.w SpawnLightBeam_speed_y_2,X
#_058C03: STA.w $0D40,Y

#_058C06: LDA.w SpawnLightBeam_anim_step_1,X
#_058C09: STA.w $0DC0,Y

#_058C0C: LDA.w SpawnLightBeam_props_1,X
#_058C0F: STA.w $0F50,Y

#_058C12: TXA

#_058C13: PLX
#_058C14: STA.b $00

#_058C16: PLA
#_058C17: STA.w $0DA0,Y

#_058C1A: PHA

#_058C1B: LDA.b $00
#_058C1D: PHA

;---------------------------------------------------------------------------------------------------

#_058C1E: LDA.b #!SPRITE_62
#_058C20: JSL Sprite_SpawnDynamically
#_058C24: BPL .spawn_c

#_058C26: JMP.w .exit

;---------------------------------------------------------------------------------------------------

.spawn_c
#_058C29: LDA.b $00
#_058C2B: SEC
#_058C2C: SBC.b #$04
#_058C2E: STA.w $0D10,Y

#_058C31: LDA.b $01
#_058C33: SBC.b #$00
#_058C35: STA.w $0D30,Y

#_058C38: LDA.b $02
#_058C3A: CLC
#_058C3B: ADC.b #$04
#_058C3D: STA.w $0D00,Y

#_058C40: LDA.b $03
#_058C42: ADC.b #$00
#_058C44: STA.w $0D20,Y

#_058C47: LDA.b #$02
#_058C49: STA.w $0E80,Y
#_058C4C: STA.w $0D90,Y

#_058C4F: LDA.b #$00
#_058C51: STA.w $0E40,Y

#_058C54: PLA
#_058C55: PHX
#_058C56: TAX

#_058C57: LDA.w SpawnLightBeam_speed_x_3,X
#_058C5A: STA.w $0D50,Y

#_058C5D: LDA.w SpawnLightBeam_speed_y_3,X
#_058C60: STA.w $0D40,Y

#_058C63: LDA.w SpawnLightBeam_anim_step_2,X
#_058C66: STA.w $0DC0,Y

#_058C69: LDA.w SpawnLightBeam_props_2,X
#_058C6C: STA.w $0F50,Y

#_058C6F: TXA

#_058C70: PLX

#_058C71: STA.b $00

#_058C73: PLA
#_058C74: STA.w $0DA0,Y

#_058C77: PHA

#_058C78: LDA.b $00
#_058C7A: PHA

;---------------------------------------------------------------------------------------------------

#_058C7B: LDA.b #!SPRITE_62
#_058C7D: JSL Sprite_SpawnDynamically
#_058C81: BMI .exit

#_058C83: LDA.b $00
#_058C85: SEC
#_058C86: SBC.b #$04
#_058C88: STA.w $0D10,Y

#_058C8B: LDA.b $01
#_058C8D: SBC.b #$00
#_058C8F: STA.w $0D30,Y

#_058C92: LDA.b $02
#_058C94: CLC
#_058C95: ADC.b #$04
#_058C97: STA.w $0D00,Y

#_058C9A: LDA.b $03
#_058C9C: ADC.b #$00
#_058C9E: STA.w $0D20,Y

#_058CA1: LDA.b #$02
#_058CA3: STA.w $0E80,Y
#_058CA6: STA.w $0D90,Y

#_058CA9: LDA.b #$00
#_058CAB: STA.w $0E40,Y

#_058CAE: PLA
#_058CAF: PHX
#_058CB0: TAX

#_058CB1: LDA.w SpawnLightBeam_speed_x_4,X
#_058CB4: STA.w $0D50,Y

#_058CB7: LDA.w SpawnLightBeam_speed_y_4,X
#_058CBA: STA.w $0D40,Y

#_058CBD: LDA.w SpawnLightBeam_anim_step_2,X
#_058CC0: STA.w $0DC0,Y

#_058CC3: LDA.w SpawnLightBeam_props_2,X
#_058CC6: STA.w $0F50,Y

#_058CC9: TXA

#_058CCA: PLX

#_058CCB: PLA
#_058CCC: STA.w $0DA0,Y

#_058CCF: RTS

;---------------------------------------------------------------------------------------------------

.exit
#_058CD0: PLA
#_058CD1: PLY

#_058CD2: RTS

;===================================================================================================

MasterSword_SpawnPendantProp:
#_058CD3: PHA

#_058CD4: LDA.b #!SPRITE_62
#_058CD6: JSL Sprite_SpawnDynamically

#_058CDA: PLA
#_058CDB: STA.w $0F50,Y

#_058CDE: LDA.b $22
#_058CE0: STA.w $0D10,Y

#_058CE3: LDA.b $23
#_058CE5: STA.w $0D30,Y

#_058CE8: LDA.b $20
#_058CEA: CLC
#_058CEB: ADC.b #$08
#_058CED: STA.w $0D00,Y

#_058CF0: LDA.b $21
#_058CF2: ADC.b #$00
#_058CF4: STA.w $0D20,Y

#_058CF7: LDA.b #$04
#_058CF9: STA.w $0DC0,Y

#_058CFC: LDA.b #$03
#_058CFE: STA.w $0E80,Y

#_058D01: LDA.b #$40
#_058D03: STA.w $0E40,Y

#_058D06: LDA.b #$E4
#_058D08: STA.w $0DF0,Y

#_058D0B: PHX

#_058D0C: LDA.w $0F50,Y
#_058D0F: LSR A
#_058D10: AND.b #$03
#_058D12: TAX

#_058D13: LDA.w .speed_x,X
#_058D16: STA.w $0D50,Y

#_058D19: LDA.w .speed_y,X
#_058D1C: STA.w $0D40,Y

#_058D1F: PLX

#_058D20: RTS

;---------------------------------------------------------------------------------------------------

.speed_x
#_058D21: db  -4,   4,   0,   0

.speed_y
#_058D25: db  -2,  -2,  -4,  -4

;===================================================================================================

MasterSword_Prop:
#_058D29: LDA.b #$04
#_058D2B: JSL OAM_AllocateFromRegionB
#_058D2F: JSL SpriteDraw_SingleLarge_long

#_058D33: LDA.w $0D80,X
#_058D36: JSL JumpTableLocal
#_058D3A: dw MasterSword_Prop_Floating
#_058D3C: dw MasterSword_Prop_Flashing
#_058D3E: dw MasterSword_Prop_FlyAwayNow

;===================================================================================================

MasterSword_Prop_Floating:
#_058D40: JSR Sprite_Move_XY_Bank05

#_058D43: LDA.w $0DF0,X
#_058D46: BNE .delay

#_058D48: INC.w $0D80,X

#_058D4B: LDA.b #$D0
#_058D4D: STA.w $0DF0,X

#_058D50: LDA.w $0F50,X
#_058D53: STA.w $0D90,X

.delay
#_058D56: RTS

;===================================================================================================

MasterSword_Prop_Flashing:
#_058D57: LDA.w $0F50,X
#_058D5A: AND.b #$F1
#_058D5C: STA.w $0F50,X

#_058D5F: TXA
#_058D60: ASL A
#_058D61: EOR.b $1A

#_058D63: AND.b #$0E
#_058D65: ORA.w $0F50,X
#_058D68: STA.w $0F50,X

#_058D6B: LDA.w $0DF0,X
#_058D6E: BNE .delay

#_058D70: INC.w $0D80,X

#_058D73: LDA.w $0D90,X
#_058D76: STA.w $0F50,X

.delay
#_058D79: RTS

;===================================================================================================

MasterSword_Prop_FlyAwayNow:
#_058D7A: JSR Sprite_Move_XY_Bank05

#_058D7D: LDA.w $0DF0,X
#_058D80: BNE .delay

#_058D82: ASL.w $0D50,X
#_058D85: ASL.w $0D40,X

#_058D88: LDA.b #$06
#_058D8A: STA.w $0DF0,X

.delay
#_058D8D: INC.w $0E90,X
#_058D90: BNE .exit

#_058D92: STZ.w $0DD0,X

.exit
#_058D95: RTS

;===================================================================================================

pool SpriteDraw_MasterSword

.offset_x
#_058D96: db  -8,   0,  -8,   0,  -8,   0

.offset_y
#_058D9C: db  -8,  -8,   0,   0,   8,   8

.prop
#_058DA2: db $C3, $C4, $D3, $D4, $E0, $F0

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_MasterSword:
#_058DA8: JSR Sprite_PrepOAMCoord_Bank05

#_058DAB: PHX

#_058DAC: LDX.b #$05

.next_object
#_058DAE: LDA.b $00
#_058DB0: CLC
#_058DB1: ADC.w .offset_x,X
#_058DB4: STA.b ($90),Y

#_058DB6: LDA.b $02
#_058DB8: CLC
#_058DB9: ADC.w .offset_y,X

#_058DBC: INY
#_058DBD: STA.b ($90),Y

#_058DBF: LDA.w .prop,X
#_058DC2: INY
#_058DC3: STA.b ($90),Y

#_058DC5: INY

#_058DC6: LDA.b $05
#_058DC8: STA.b ($90),Y

#_058DCA: INY

#_058DCB: DEX
#_058DCC: BPL .next_object

#_058DCE: PLX

;---------------------------------------------------------------------------------------------------

#_058DCF: LDY.b #$00
#_058DD1: LDA.b #$05
#_058DD3: JSL Sprite_CorrectOAMEntries_long

#_058DD7: RTS

;---------------------------------------------------------------------------------------------------

RollerSpeed:
.x ; bleeds into next
#_058DD8: db -16,  16

.y
#_058DDA: db   0,   0, -16,  16

;---------------------------------------------------------------------------------------------------

Sprite_5D_Roller_VerticalStartUp:
Sprite_5E_Roller_VerticalStartDown:
Sprite_5F_Roller_HorizontalStartLeft:
Sprite_60_Roller_HorizontalStartRight:
#_058DDE: LDA.w $0DE0,X
#_058DE1: AND.b #$02
#_058DE3: STA.b $00

#_058DE5: LDA.w $0E80,X
#_058DE8: LSR A
#_058DE9: AND.b #$01
#_058DEB: ORA.b $00
#_058DED: STA.w $0DC0,X

#_058DF0: JSR SpriteDraw_Roller
#_058DF3: JSR Sprite_CheckIfActive_Bank05
#_058DF6: JSR Sprite_CheckDamageToAndFromLink_Bank05

;---------------------------------------------------------------------------------------------------

#_058DF9: LDA.w $0DF0,X
#_058DFC: BNE .dont_turn

#_058DFE: LDA.b #$70
#_058E00: STA.w $0DF0,X

#_058E03: LDA.w $0DE0,X
#_058E06: EOR.b #$01
#_058E08: STA.w $0DE0,X

.dont_turn
#_058E0B: LDY.w $0DE0,X

#_058E0E: LDA.w RollerSpeed_x,Y
#_058E11: STA.w $0D50,X

#_058E14: LDA.w RollerSpeed_y,Y
#_058E17: STA.w $0D40,X

#_058E1A: JSR Sprite_Move_XY_Bank05

#_058E1D: INC.w $0E80,X

#_058E20: RTS

;===================================================================================================

pool SpriteDraw_Roller

.spacing_x
#_058E21: dw   0,   0,   0,   0
#_058E29: dw   0,   0,   0,   0
#_058E31: dw   0,   0,   0,   0
#_058E39: dw   0,   0,   0,   0
#_058E41: dw   0,  16,  32,  48
#_058E49: dw  64,  80,  96, 112
#_058E51: dw   0,  16,  32,  48
#_058E59: dw  64,  80,  96, 112

;---------------------------------------------------------------------------------------------------

.spacing_y
#_058E61: dw   0,  16,  32,  48
#_058E69: dw  64,  80,  96, 112
#_058E71: dw   0,  16,  32,  48
#_058E79: dw  64,  80,  96, 112
#_058E81: dw   0,   0,   0,   0
#_058E89: dw   0,   0,   0,   0
#_058E91: dw   0,   0,   0,   0
#_058E99: dw   0,   0,   0,   0

;---------------------------------------------------------------------------------------------------

.char
#_058EA1: db $8E, $9E, $9E, $9E
#_058EA5: db $9E, $9E, $9E, $8E
#_058EA9: db $8E, $9E, $9E, $9E
#_058EAD: db $9E, $9E, $9E, $8E
#_058EB1: db $88, $89, $89, $89
#_058EB5: db $89, $89, $89, $88
#_058EB9: db $88, $89, $89, $89
#_058EBD: db $89, $89, $89, $88

;---------------------------------------------------------------------------------------------------

.flip
#_058EC1: db $00, $00, $00, $80
#_058EC5: db $00, $00, $00, $80
#_058EC9: db $40, $40, $40, $C0
#_058ECD: db $40, $40, $40, $C0
#_058ED1: db $00, $00, $00, $40
#_058ED5: db $00, $00, $00, $40
#_058ED9: db $80, $80, $80, $C0
#_058EDD: db $80, $80, $80, $C0

;---------------------------------------------------------------------------------------------------

.obj_count
#_058EE1: db $03
#_058EE2: db $07

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Roller:
#_058EE3: JSR Sprite_PrepOAMCoord_Bank05

#_058EE6: LDA.w $0DC0,X
#_058EE9: ASL A
#_058EEA: ASL A
#_058EEB: ASL A
#_058EEC: STA.b $06

#_058EEE: TAY

#_058EEF: LDA.w .char,Y
#_058EF2: STA.b $08

;---------------------------------------------------------------------------------------------------

#_058EF4: PHX

#_058EF5: LDY.w $0D80,X
#_058EF8: LDX.w .obj_count,Y

#_058EFB: LDY.b #$00

.next_object
#_058EFD: PHX

#_058EFE: TXA
#_058EFF: CLC
#_058F00: ADC.b $06
#_058F02: PHA

#_058F03: ASL A
#_058F04: TAX

#_058F05: REP #$20

#_058F07: LDA.b $00
#_058F09: CLC
#_058F0A: ADC.w .spacing_x,X
#_058F0D: STA.b ($90),Y

#_058F0F: AND.w #$0100
#_058F12: STA.b $0E

#_058F14: LDA.b $02
#_058F16: CLC
#_058F17: ADC.w .spacing_y,X

#_058F1A: INY
#_058F1B: STA.b ($90),Y

#_058F1D: CLC
#_058F1E: ADC.w #$0010
#_058F21: CMP.w #$0100

#_058F24: SEP #$20
#_058F26: BCC .on_screen

#_058F28: LDA.b #$F0
#_058F2A: STA.b ($90),Y

.on_screen
#_058F2C: PLX

#_058F2D: LDA.b $08
#_058F2F: BNE .end_segment

#_058F31: LDA.w .char,X

.end_segment
#_058F34: STZ.b $08

#_058F36: INY
#_058F37: STA.b ($90),Y

#_058F39: LDA.w .flip,X
#_058F3C: ORA.b $05
#_058F3E: INY
#_058F3F: STA.b ($90),Y

#_058F41: PHY

#_058F42: TYA
#_058F43: LSR A
#_058F44: LSR A
#_058F45: TAY

#_058F46: LDA.b #$02
#_058F48: ORA.b $0F
#_058F4A: STA.b ($92),Y

#_058F4C: PLY
#_058F4D: INY

#_058F4E: PLX
#_058F4F: DEX
#_058F50: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_058F52: PLX

#_058F53: RTS

;===================================================================================================

Sprite_61_Beamos:
#_058F54: LDA.w $0DB0,X
#_058F57: BEQ Beamos_Turret

#_058F59: CMP.b #$01
#_058F5B: BNE .collided_laser

#_058F5D: JMP.w Beamos_Laser

.collided_laser
#_058F60: JMP.w Beamos_LaserHit

;===================================================================================================

Beamos_Turret:
#_058F63: JSR SpriteDraw_Beamos
#_058F66: JSR Sprite_CheckIfActive_Bank05
#_058F69: JSR Sprite_CheckTileCollision_Bank05
#_058F6C: JSL Sprite_CheckDamageToLink_long

#_058F70: LDA.w $0D80,X
#_058F73: BEQ Beamos_OnPatrol

#_058F75: CMP.b #$03
#_058F77: BNE Beamos_OnCoolDown

.firing
#_058F79: LDA.w $0DF0,X
#_058F7C: BNE .not_firing

#_058F7E: INC.w $0D80,X

#_058F81: LDA.b #$50
#_058F83: STA.w $0DF0,X

#_058F86: JSL SpritePrep_LoadPalette

#_058F8A: RTS

;---------------------------------------------------------------------------------------------------

.not_firing
#_058F8B: CMP.b #$0F
#_058F8D: BNE .dont_fire

#_058F8F: PHA

#_058F90: JSR Beamos_FireLaser

#_058F93: PLA

.dont_fire
#_058F94: LSR A
#_058F95: AND.b #$0E
#_058F97: EOR.w $0F50,X
#_058F9A: STA.w $0F50,X

#_058F9D: RTS

;===================================================================================================

Beamos_OnCoolDown:
#_058F9E: LDA.w $0DF0,X
#_058FA1: BNE .exit

#_058FA3: STZ.w $0D80,X

.exit
#_058FA6: RTS

;===================================================================================================

Beamos_OnPatrol:
#_058FA7: TXA
#_058FA8: EOR.b $1A
#_058FAA: AND.b #$03
#_058FAC: BNE .dont_rotate

#_058FAE: LDA.w $0DE0,X
#_058FB1: STA.b $0F

#_058FB3: JSR Sprite_SpawnProbeAlways

#_058FB6: INC.w $0DE0,X

.dont_rotate
#_058FB9: LDA.w $0DE0,X
#_058FBC: AND.b #$3F
#_058FBE: STA.w $0DE0,X

;---------------------------------------------------------------------------------------------------

#EXIT_058FC1:
#_058FC1: RTS

;---------------------------------------------------------------------------------------------------

Beamos_FireLaser:
#_058FC2: LDA.w $0B6A
#_058FC5: CMP.b #$04
#_058FC7: BCS EXIT_058FC1

#_058FC9: LDA.b #!SPRITE_61
#_058FCB: JSL Sprite_SpawnDynamically
#_058FCF: BMI EXIT_058FC1

#_058FD1: LDA.b #!SFX3_19
#_058FD3: JSL SpriteSFX_QueueSFX3WithPan

;---------------------------------------------------------------------------------------------------

#_058FD7: PHX

#_058FD8: LDX.b #$00

#_058FDA: LDA.w $0FA8
#_058FDD: BPL .positive_x

#_058FDF: DEX

.positive_x
#_058FE0: CLC
#_058FE1: ADC.b $00
#_058FE3: STA.w $0D10,Y

#_058FE6: TXA
#_058FE7: ADC.b $01
#_058FE9: STA.w $0D30,Y

#_058FEC: LDX.b #$00

#_058FEE: LDA.w $0FA9
#_058FF1: BPL .positive_y

#_058FF3: DEX

.positive_y
#_058FF4: CLC
#_058FF5: ADC.b $02
#_058FF7: STA.w $0D00,Y

#_058FFA: TXA
#_058FFB: ADC.b $03
#_058FFD: STA.w $0D20,Y

#_059000: TYX

;---------------------------------------------------------------------------------------------------

#_059001: LDA.b #$20
#_059003: JSL Sprite_ApplySpeedTowardsLink_long

#_059007: LDA.b #$3F
#_059009: STA.w $0E40,Y

#_05900C: LDA.b #$54
#_05900E: STA.w $0F60,Y

#_059011: LDA.b #$01
#_059013: STA.w $0DB0,Y

#_059016: LDA.b #$48
#_059018: STA.w $0CAA,Y

#_05901B: LDA.b #$03
#_05901D: STA.w $0F50,Y

#_059020: LDA.b #$04
#_059022: STA.w $0CD2,Y

#_059025: LDA.b #$0C
#_059027: STA.w $0E00,Y

#_05902A: LDA.w $0B6A
#_05902D: STA.w $0DC0,Y

#_059030: INC.w $0B6A

#_059033: LDA.b #$1F
#_059035: STA.b $00

;---------------------------------------------------------------------------------------------------

#_059037: LDX.w $0DC0,Y

#_05903A: CLC
#_05903B: ADC.w SpriteSubspriteSlots_bank05,X
#_05903E: TAX

.next_subsprite
#_05903F: LDA.w $0D10,Y
#_059042: STA.l $7FFD80,X

#_059046: LDA.w $0D30,Y
#_059049: STA.l $7FFE00,X

#_05904D: LDA.w $0D00,Y
#_059050: STA.l $7FFE80,X

#_059054: LDA.w $0D20,Y
#_059057: STA.l $7FFF00,X

#_05905B: DEX

#_05905C: DEC.b $00
#_05905E: BPL .next_subsprite

;---------------------------------------------------------------------------------------------------

#_059060: PLX

#_059061: RTS

;===================================================================================================

pool SpriteDraw_Beamos

.offset_eye
#_059062: dw -16,   0

.char
#_059066: db $48, $68

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Beamos:
#_059068: JSR Sprite_PrepOAMCoord_Bank05

#_05906B: LDY.b #$00

#_05906D: LDA.w $0DE0,X
#_059070: CMP.b #$20
#_059072: BCS .use_region_c

;---------------------------------------------------------------------------------------------------

.use_region_b
#_059074: LDA.b #$0C
#_059076: JSL OAM_AllocateFromRegionB

#_05907A: LDY.b #$04
#_05907C: BRA .continue

;---------------------------------------------------------------------------------------------------

.use_region_c
#_05907E: LDA.b #$0C
#_059080: JSL OAM_AllocateFromRegionC

#_059084: LDY.b #$00

;---------------------------------------------------------------------------------------------------

.continue
#_059086: PHX

#_059087: LDX.b #$01

.next_object
#_059089: PHX

#_05908A: TXA
#_05908B: ASL A
#_05908C: TAX

#_05908D: REP #$20

#_05908F: LDA.b $00
#_059091: STA.b ($90),Y

#_059093: AND.w #$0100
#_059096: STA.b $0E

#_059098: LDA.b $02
#_05909A: CLC
#_05909B: ADC.w .offset_eye,X

#_05909E: INY
#_05909F: STA.b ($90),Y

#_0590A1: CLC
#_0590A2: ADC.w #$0010
#_0590A5: CMP.w #$0100

#_0590A8: SEP #$20
#_0590AA: BCC .on_screen

#_0590AC: LDA.b #$F0
#_0590AE: STA.b ($90),Y

.on_screen
#_0590B0: PLX

#_0590B1: LDA.w .char,X
#_0590B4: INY
#_0590B5: STA.b ($90),Y

#_0590B7: LDA.b $05
#_0590B9: INY
#_0590BA: STA.b ($90),Y

#_0590BC: PHY

#_0590BD: TYA
#_0590BE: LSR A
#_0590BF: LSR A
#_0590C0: TAY

#_0590C1: LDA.b #$02
#_0590C3: ORA.b $0F
#_0590C5: STA.b ($92),Y

#_0590C7: PLY
#_0590C8: INY

#_0590C9: DEX
#_0590CA: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_0590CC: PLX

; Why is this even a JSR when it could just branch?
#_0590CD: JSR SpriteDraw_Beamos_Eyeball

#_0590D0: RTS

;===================================================================================================

.eyeball_offset_x
#_0590D1: db  -1,   0,   1,   2,   3,   4,   5,   7
#_0590D9: db   8,  10,  11,  12,  13,  14,  15,  16
#_0590E1: db  17,  15,  14,  13,  12,  11,  10,   8
#_0590E9: db   7,   5,   4,   3,   2,   1,   0,  -2

.eyeball_offset_y
#_0590F1: db  11,  12,  13,  14,  14,  15,  15,  15
#_0590F9: db  15,  15,  15,  14,  14,  13,  12,  11
#_059101: db  10,   9,   8,   7,   7,   6,   6,   6
#_059109: db   6,   6,   6,   7,   7,   8,   9,  10

.eyeball_char
#_059111: db $5B, $5B, $5A, $5A, $4B, $4B, $4A, $4A
#_059119: db $4A, $4A, $4B, $4B, $5A, $5A, $5B, $5B
#_059121: db $5B, $5B, $4C, $4C, $4C, $4C, $4C, $4C
#_059129: db $5B, $5B, $4C, $4C, $4C, $4C, $4C, $4C

.eyeball_flip
#_059131: db $00, $00, $00, $00, $00, $00, $00, $00
#_059139: db $40, $40, $40, $40, $40, $40, $40, $40
#_059141: db $40, $40, $40, $40, $40, $40, $40, $40
#_059149: db $00, $00, $00, $00, $00, $00, $00, $00

;---------------------------------------------------------------------------------------------------

#SpriteDraw_Beamos_Eyeball:
#_059151: LDY.b #$08

#_059153: LDA.w $0DE0,X
#_059156: CMP.b #$20
#_059158: BCS .upper_part_of_rotation

#_05915A: LDY.b #$00

.upper_part_of_rotation
#_05915C: STY.b $0E
#_05915E: STZ.b $0F

#_059160: LSR A
#_059161: STA.b $06

;---------------------------------------------------------------------------------------------------

#_059163: PHX

#_059164: TAX

#_059165: LDA.w .eyeball_offset_x,X
#_059168: SEC
#_059169: SBC.b #$03
#_05916B: STA.w $0FA8

#_05916E: CLC
#_05916F: ADC.b $00
#_059171: STA.b ($90),Y

#_059173: LDA.w .eyeball_offset_y,X
#_059176: SEC
#_059177: SBC.b #$12
#_059179: STA.w $0FA9

#_05917C: CLC
#_05917D: ADC.b $02
#_05917F: INY
#_059180: STA.b ($90),Y

#_059182: LDA.w .eyeball_char,X
#_059185: INY
#_059186: STA.b ($90),Y

#_059188: LDA.b $05
#_05918A: AND.b #$31
#_05918C: ORA.w .eyeball_flip,X
#_05918F: ORA.b #$0A
#_059191: INY
#_059192: STA.b ($90),Y

#_059194: PLX

;---------------------------------------------------------------------------------------------------

#_059195: REP #$20

#_059197: LDA.b $0E
#_059199: CLC
#_05919A: ADC.b $90
#_05919C: STA.b $90

#_05919E: LDA.b $0E
#_0591A0: LSR A
#_0591A1: LSR A

#_0591A2: CLC
#_0591A3: ADC.b $92
#_0591A5: STA.b $92

#_0591A7: SEP #$20

#_0591A9: LDY.b #$00
#_0591AB: TYA

#_0591AC: JSL Sprite_CorrectOAMEntries_long

#_0591B0: RTS

;===================================================================================================

SpriteSubspriteSlots_bank05:
#_0591B1: db $00, $20, $40, $60

;===================================================================================================

Beamos_Laser:
#_0591B5: LDA.w $0E00,X
#_0591B8: BNE .exit_a

#_0591BA: JSR SpriteDraw_BeamosLaser

#_0591BD: LDA.w $0DD0,X
#_0591C0: BNE .active

#_0591C2: DEC.w $0B6A

#_0591C5: RTS

;---------------------------------------------------------------------------------------------------

.active
#_0591C6: JSR Sprite_CheckIfActive_Bank05

#_0591C9: LDY.b #$03

.next_subsprite
#_0591CB: PHY
#_0591CC: PHX

#_0591CD: LDA.w $0D10,X
#_0591D0: PHA

#_0591D1: LDA.w $0D30,X
#_0591D4: PHA

#_0591D5: LDA.w $0D00,X
#_0591D8: PHA

#_0591D9: LDA.w $0D20,X
#_0591DC: PHA

#_0591DD: LDA.w $0E80,X
#_0591E0: AND.b #$1F

#_0591E2: LDY.w $0DC0,X

#_0591E5: CLC
#_0591E6: ADC.w SpriteSubspriteSlots_bank05,Y
#_0591E9: TAX

#_0591EA: PLA
#_0591EB: STA.l $7FFF00,X

#_0591EF: PLA
#_0591F0: STA.l $7FFE80,X

#_0591F4: PLA
#_0591F5: STA.l $7FFE00,X

#_0591F9: PLA
#_0591FA: STA.l $7FFD80,X

#_0591FE: PLX

#_0591FF: INC.w $0E80,X

#_059202: JSR Sprite_Move_XY_Bank05

#_059205: PLY
#_059206: DEY
#_059207: BPL .next_subsprite

;---------------------------------------------------------------------------------------------------

#_059209: LDA.w $0DF0,X
#_05920C: BEQ .can_do_damage

#_05920E: DEC A
#_05920F: BNE .exit_a

#_059211: STZ.w $0DD0,X

#_059214: DEC.w $0B6A

.exit_a
#_059217: RTS

;---------------------------------------------------------------------------------------------------

.can_do_damage
#_059218: JSL Sprite_CheckDamageToLink_same_layer_long
#_05921C: BCS .collision

#_05921E: JSR Sprite_CheckTileCollision_Bank05
#_059221: BEQ .exit_b

.collision
#_059223: LDA.b #!SFX3_26
#_059225: JSL SpriteSFX_QueueSFX3WithPan

#_059229: LDA.b #$10
#_05922B: STA.w $0DF0,X

#_05922E: JSR Sprite_ZeroVelocity_XY_Bank05

#_059231: LDA.b #!SPRITE_61
#_059233: JSL Sprite_SpawnDynamically
#_059237: BMI .no_room

#_059239: JSL Sprite_SetSpawnedCoordinates

#_05923D: LDA.b #$10
#_05923F: STA.w $0DF0,Y

#_059242: LDA.b #$03
#_059244: STA.w $0E40,Y

#_059247: LDA.b #$02
#_059249: STA.w $0DB0,Y

#_05924C: LDA.b #$40
#_05924E: STA.w $0E60,Y

.no_room
#_059251: LDA.b #$80
#_059253: STA.w $0D20,X

.exit_b
#_059256: RTS

;===================================================================================================
; Prevents the sprite from dying if the thing fails
;===================================================================================================
Sprite_PrepOAMCoord_Bank05_wrapper:
#_059257: JSR Sprite_PrepOAMCoord_Bank05

#_05925A: RTS

;===================================================================================================

SpriteDraw_BeamosLaser:
#_05925B: JSR Sprite_PrepOAMCoord_Bank05_wrapper

#_05925E: PHX

#_05925F: LDA.b #$1F
#_059261: STA.b $0D

#_059263: LDY.w $0DC0,X

#_059266: CLC
#_059267: ADC.w SpriteSubspriteSlots_bank05,Y
#_05926A: TAX

#_05926B: LDY.b #$00

.next_object
#_05926D: LDA.l $7FFD80,X
#_059271: STA.b $00

#_059273: LDA.l $7FFE00,X
#_059277: STA.b $01

#_059279: LDA.l $7FFE80,X
#_05927D: STA.b $02

#_05927F: LDA.l $7FFF00,X
#_059283: STA.b $03

#_059285: REP #$20

#_059287: LDA.b $00
#_059289: SEC
#_05928A: SBC.b $E2
#_05928C: STA.b ($90),Y

#_05928E: AND.w #$0100
#_059291: STA.b $0E

#_059293: LDA.b $02
#_059295: SEC
#_059296: SBC.b $E8

#_059298: INY
#_059299: STA.b ($90),Y

#_05929B: CLC
#_05929C: ADC.w #$0010
#_05929F: CMP.w #$0100

#_0592A2: SEP #$20
#_0592A4: BCC .on_screen

#_0592A6: LDA.b #$F0
#_0592A8: STA.b ($90),Y

.on_screen
#_0592AA: LDA.b #$5C
#_0592AC: INY
#_0592AD: STA.b ($90),Y

#_0592AF: LDA.b $05
#_0592B1: INY
#_0592B2: STA.b ($90),Y

#_0592B4: PHY

#_0592B5: TYA
#_0592B6: LSR A
#_0592B7: LSR A
#_0592B8: TAY

#_0592B9: LDA.b $0F
#_0592BB: STA.b ($92),Y

#_0592BD: PLY
#_0592BE: INY

#_0592BF: DEX

#_0592C0: DEC.b $0D
#_0592C2: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_0592C4: PLX

#_0592C5: RTS

;===================================================================================================

pool Beamos_LaserHit

.offset_x
#_0592C6: db  -4,  -1,   4,   0
#_0592CA: db  -4,  -1,   4,   0

.offset_y
#_0592CE: db  -4,  -1,  -4,  -1
#_0592D2: db   4,   0,   4,   0

.prop
#_0592D6: db $06, $46, $86, $C6

pool off

;---------------------------------------------------------------------------------------------------

Beamos_LaserHit:
#_0592DA: LDA.w $0DF0,X
#_0592DD: BNE .delay

#_0592DF: STZ.w $0DD0,X

.delay
#_0592E2: JSR Sprite_PrepOAMCoord_Bank05

#_0592E5: PHX

;---------------------------------------------------------------------------------------------------

#_0592E6: LDX.b #$03

.next_object
#_0592E8: PHX

#_0592E9: TXA
#_0592EA: ASL A
#_0592EB: TAX

#_0592EC: REP #$20

#_0592EE: LDA.b $00
#_0592F0: CLC
#_0592F1: ADC.w .offset_x,X
#_0592F4: STA.b ($90),Y

#_0592F6: AND.w #$0100
#_0592F9: STA.b $0E

#_0592FB: LDA.b $02
#_0592FD: CLC
#_0592FE: ADC.w .offset_y,X

#_059301: INY
#_059302: STA.b ($90),Y

#_059304: CLC
#_059305: ADC.w #$0010
#_059308: CMP.w #$0100

#_05930B: SEP #$20
#_05930D: BCC .on_screen

#_05930F: LDA.b #$F0
#_059311: STA.b ($90),Y

.on_screen
#_059313: PLX

#_059314: LDA.b #$D6
#_059316: INY
#_059317: STA.b ($90),Y

#_059319: LDA.b $05
#_05931B: AND.b #$30
#_05931D: ORA.w .prop,X

#_059320: INY
#_059321: STA.b ($90),Y

#_059323: PHY

#_059324: TYA
#_059325: LSR A
#_059326: LSR A
#_059327: TAY

#_059328: LDA.b $0F
#_05932A: STA.b ($92),Y

#_05932C: PLY
#_05932D: INY

#_05932E: DEX
#_05932F: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_059331: PLX

#_059332: RTS

;===================================================================================================

SparkFlip:
#_059333: db $00, $40, $80, $C0

SparkDirection:
#_059337: db $01, $03, $02, $00
#_05933B: db $07, $05, $06, $04 ; MoN freaked out about these for some reason

;===================================================================================================

Sprite_5B_Spark_Clockwise:
Sprite_5C_Spark_Counterclockwise:
#_05933F: JSL SpriteDraw_SingleLarge_long
#_059343: JSR Sprite_CheckIfActive_Bank05

#_059346: LDA.b $1A
#_059348: AND.b #$01
#_05934A: BNE .dont_flash

#_05934C: LDA.w $0F50,X
#_05934F: EOR.b #$06
#_059351: STA.w $0F50,X

.dont_flash
#_059354: LDA.w $0D80,X
#_059357: BNE Spark_Main

;===================================================================================================

Spark_Init:
#_059359: INC.w $0D80,X

#_05935C: LDA.b #$01
#_05935E: STA.w $0D40,X
#_059361: STA.w $0D50,X

#_059364: JSR Sprite_CheckTileCollision_Bank05
#_059367: PHA

#_059368: LDA.b #$FF
#_05936A: STA.w $0D40,X
#_05936D: STA.w $0D50,X

#_059370: JSR Sprite_CheckTileCollision_Bank05

#_059373: PLA
#_059374: ORA.w $0E70,X

#_059377: CMP.b #$04
#_059379: BCS .collided_vertically

#_05937B: LDY.b #$00

#_05937D: AND.b #$01
#_05937F: BNE .collided_right

;---------------------------------------------------------------------------------------------------

.collided_left
#_059381: INY

.collided_right
#_059382: BRA .continue

.collided_vertically
#_059384: LDY.b #$02

#_059386: AND.b #$04
#_059388: BNE .continue

.collided_up
#_05938A: INY

.continue
#_05938B: LDA.w $0E20,X
#_05938E: CMP.b #!SPRITE_5C
#_059390: BEQ .counterclockwise

#_059392: INY ; +4
#_059393: INY
#_059394: INY
#_059395: INY

.counterclockwise
#_059396: LDA.w SparkDirection,Y
#_059399: STA.w $0DE0,X

;===================================================================================================

Spark_Main:
#_05939C: LDA.b $1A
#_05939E: LSR A
#_05939F: LSR A
#_0593A0: AND.b #$03
#_0593A2: TAY

#_0593A3: LDA.w $0F50,X
#_0593A6: AND.b #$3F
#_0593A8: ORA.w SparkFlip,Y
#_0593AB: STA.w $0F50,X

#_0593AE: JSR Sprite_Move_XY_Bank05
#_0593B1: JSL Sprite_CheckDamageToLink_long

#_0593B5: LDY.w $0DE0,X

#_0593B8: LDA.w ProbeAndSparkCheckDirXSpeed,Y
#_0593BB: STA.w $0D50,X

#_0593BE: LDA.w ProbeAndSparkCheckDirYSpeed,Y
#_0593C1: STA.w $0D40,X

;---------------------------------------------------------------------------------------------------

#_0593C4: JSR Sprite_CheckTileCollision_Bank05

#_0593C7: LDA.w $0E10,X
#_0593CA: BEQ .check_orthogonal_collision

#_0593CC: CMP.b #$06
#_0593CE: BNE .check_colinear_collision

#_0593D0: LDY.w $0DE0,X

#_0593D3: LDA.w OrthogonalNextDirections,Y
#_0593D6: STA.w $0DE0,X

#_0593D9: BRA .check_colinear_collision

;---------------------------------------------------------------------------------------------------

.check_orthogonal_collision
#_0593DB: LDY.w $0DE0,X

#_0593DE: LDA.w $0E70,X
#_0593E1: AND.w OrthogonalDirections,Y
#_0593E4: BNE .check_colinear_collision

#_0593E6: LDA.b #$0A
#_0593E8: STA.w $0E10,X

;---------------------------------------------------------------------------------------------------

.check_colinear_collision
#_0593EB: LDY.w $0DE0,X

#_0593EE: LDA.w $0E70,X
#_0593F1: AND.w ColinearDirections,Y
#_0593F4: BEQ .no_colinear_collision

#_0593F6: LDA.w ColinearNextDirections,Y
#_0593F9: STA.w $0DE0,X

;---------------------------------------------------------------------------------------------------

.no_colinear_collision
#_0593FC: LDY.w $0DE0,X

#_0593FF: LDA.w ProbeAndSparkXSpeed,Y
#_059402: ASL A
#_059403: STA.w $0D50,X

#_059406: LDA.w ProbeAndSparkYSpeed,Y
#_059409: ASL A
#_05940A: STA.w $0D40,X

#_05940D: RTS

;===================================================================================================

Sprite_59_LostWoodsBird:
#_05940E: LDA.w $0E00,X
#_059411: BNE EXIT_05944B

#_059413: LDA.w $0F50,X
#_059416: AND.b #$BF

#_059418: LDY.w $0D50,X
#_05941B: BMI .moving_left

#_05941D: ORA.b #$40

.moving_left
#_05941F: STA.w $0F50,X

#_059422: JSL SpriteDraw_SingleLarge_long
#_059426: JSR Sprite_CheckIfActive_Bank05
#_059429: JSR Sprite_Move_XY_Bank05
#_05942C: JSR Sprite_Move_Z_Bank05

#_05942F: LDA.w $0D80,X
#_059432: JSL JumpTableLocal
#_059436: dw LostWoodsBird_Descend
#_059438: dw LostWoodsBird_Ascend

;===================================================================================================

LostWoodsBird_Descend:
#_05943A: STZ.w $0DC0,X

#_05943D: LDA.w $0F80,X
#_059440: DEC A
#_059441: STA.w $0F80,X

#_059444: CMP.b #$F1
#_059446: BPL EXIT_05944B

#_059448: INC.w $0D80,X

;---------------------------------------------------------------------------------------------------

#EXIT_05944B:
#_05944B: RTS

;===================================================================================================

LostWoodsBird_Ascend:
#_05944C: LDA.w $0F80,X
#_05944F: INC A
#_059450: INC A
#_059451: STA.w $0F80,X

#_059454: CMP.b #$10
#_059456: BMI .delay

#_059458: STZ.w $0D80,X

.delay
#_05945B: INC.w $0E80,X

#_05945E: LDA.w $0E80,X
#_059461: LSR A
#_059462: AND.b #$01
#_059464: STA.w $0DC0,X

#_059467: RTS

;===================================================================================================

Sprite_5A_LostWoodsSquirrel:
#_059468: LDA.w $0E00,X
#_05946B: BNE .exit

#_05946D: LDA.w $0F50,X
#_059470: AND.b #$BF

#_059472: LDY.w $0D50,X
#_059475: BMI .moving_left

#_059477: ORA.b #$40

.moving_left
#_059479: STA.w $0F50,X

;---------------------------------------------------------------------------------------------------

#_05947C: JSL SpriteDraw_SingleLarge_long
#_059480: JSR Sprite_CheckIfActive_Bank05
#_059483: JSR Sprite_Move_XY_Bank05
#_059486: JSR Sprite_Move_Z_Bank05

#_059489: LDA.w $0F80,X
#_05948C: DEC A
#_05948D: DEC A
#_05948E: STA.w $0F80,X

#_059491: LDA.w $0F70,X
#_059494: BPL .airborne

#_059496: STZ.w $0F70,X

#_059499: LDA.b #$10
#_05949B: STA.w $0F80,X

#_05949E: LDA.b #$0C
#_0594A0: STA.w $0DF0,X

.airborne
#_0594A3: LDA.b #$00

#_0594A5: LDY.w $0DF0,X
#_0594A8: BEQ .landing

#_0594AA: INC A

.landing
#_0594AB: STA.w $0DC0,X

.exit
#_0594AE: RTS

;===================================================================================================

pool Sprite_58_Crab

.speed_x ; bleeds into next
#_0594AF: db  28, -28

.speed_y
#_0594B1: db   0,   0,  12, -12

pool off

;---------------------------------------------------------------------------------------------------

Sprite_58_Crab:
#_0594B5: JSR SpriteDraw_Crab

#_0594B8: JSR Sprite_CheckIfActive_Bank05
#_0594BB: JSR Sprite_CheckIfRecoiling_Bank05
#_0594BE: JSR Sprite_CheckDamageToAndFromLink_Bank05

#_0594C1: JSR Sprite_Move_XY_Bank05
#_0594C4: JSR Sprite_CheckTileCollision_Bank05
#_0594C7: BNE .collision

#_0594C9: LDA.w $0DF0,X
#_0594CC: BNE .dont_turn

.collision
#_0594CE: JSL GetRandomNumber
#_0594D2: AND.b #$3F
#_0594D4: ADC.b #$20
#_0594D6: STA.w $0DF0,X

#_0594D9: AND.b #$03
#_0594DB: STA.w $0DE0,X

.dont_turn
#_0594DE: LDY.w $0DE0,X

#_0594E1: LDA.w .speed_x,Y
#_0594E4: STA.w $0D50,X

#_0594E7: LDA.w .speed_y,Y
#_0594EA: STA.w $0D40,X

#_0594ED: INC.w $0E80,X

#_0594F0: LDA.w $0E80,X
#_0594F3: LSR A

#_0594F4: CPY.b #$02
#_0594F6: BCC .horizontal

.vertical
#_0594F8: LSR A
#_0594F9: LSR A

.horizontal
#_0594FA: AND.b #$01
#_0594FC: STA.w $0DC0,X

#_0594FF: RTS

;===================================================================================================

pool SpriteDraw_Crab

.offset_x
#_059500: dw  -8,   8
#_059504: dw  -8,   8

.char
#_059508: db $8E, $8E
#_05950A: db $AE, $AE

.flip
#_05950C: db $00, $40
#_05950E: db $00, $40

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Crab:
#_059510: JSR Sprite_PrepOAMCoord_Bank05

#_059513: LDA.w $0DC0,X
#_059516: ASL A
#_059517: STA.b $06

#_059519: PHX

#_05951A: LDX.b #$01

.next_object
#_05951C: PHX

#_05951D: TXA
#_05951E: CLC
#_05951F: ADC.b $06
#_059521: PHA

#_059522: ASL A
#_059523: TAX

#_059524: REP #$20

#_059526: LDA.b $00
#_059528: CLC
#_059529: ADC.w .offset_x,X
#_05952C: STA.b ($90),Y

#_05952E: AND.w #$0100
#_059531: STA.b $0E

#_059533: LDA.b $02
#_059535: INY
#_059536: STA.b ($90),Y

#_059538: CLC
#_059539: ADC.w #$0010
#_05953C: CMP.w #$0100

#_05953F: SEP #$20
#_059541: BCC .on_screen

#_059543: LDA.b #$F0
#_059545: STA.b ($90),Y

.on_screen
#_059547: PLX

#_059548: LDA.w .char,X
#_05954B: INY
#_05954C: STA.b ($90),Y

#_05954E: LDA.w .flip,X
#_059551: ORA.b $05
#_059553: INY
#_059554: STA.b ($90),Y

#_059556: PHY

#_059557: TYA
#_059558: LSR A
#_059559: LSR A
#_05955A: TAY

#_05955B: LDA.b #$02
#_05955D: ORA.b $0F
#_05955F: STA.b ($92),Y

#_059561: PLY
#_059562: INY

#_059563: PLX
#_059564: DEX
#_059565: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_059567: PLX

#_059568: JSL SpriteDraw_Shadow_long

#_05956C: RTS

;===================================================================================================

Sprite_57_DesertStatue:
#_05956D: JSR SpriteDraw_DesertStatue
#_059570: JSR Sprite_CheckIfActive_Bank05
#_059573: JSL Sprite_CheckDamageToLink_same_layer_long

#_059577: PHP
#_059578: BCC .no_collision

#_05957A: JSL Sprite_CancelHookshot
#_05957E: JSL Sprite_RepelDash_long

.no_collision
#_059582: PLP
#_059583: LDA.w $0DF0,X
#_059586: BNE .exit

#_059588: LDA.w $0D80,X
#_05958B: BMI .exit
#_05958D: BNE DesertStatue_Moving

#_05958F: LDA.w $02F0
#_059592: BNE DesertStatue_Activate

.exit
#_059594: RTS

;===================================================================================================

DesertStatue_Activate:
#_059595: STA.w $0D80,X

#_059598: LDA.b #$80
#_05959A: STA.w $0DF0,X

#_05959D: LDA.b #!SFX1_07
#_05959F: STA.w $012D

;===================================================================================================

DesertStatue_Moving:
#_0595A2: BCC .no_collision

#_0595A4: LDA.b $46
#_0595A6: BNE .no_collision

#_0595A8: LDA.b #$10
#_0595AA: STA.b $46

#_0595AC: LDA.b #$20
#_0595AE: JSL Sprite_ApplySpeedTowardsLink_long

#_0595B2: LDA.b $01
#_0595B4: STA.b $28

#_0595B6: LDA.b $00
#_0595B8: STA.b $27

;---------------------------------------------------------------------------------------------------

.no_collision
#_0595BA: LDY.w $0DE0,X

#_0595BD: LDA.w .speed_x,Y
#_0595C0: STA.w $0D50,X

#_0595C3: LDA.w .speed_y,Y
#_0595C6: STA.w $0D40,X

#_0595C9: JSR Sprite_Move_XY_Bank05
#_0595CC: JSR Sprite_CheckTileCollision_Bank05
#_0595CF: BEQ .stay_true

#_0595D1: LDY.w $0DE0,X

#_0595D4: LDA.w .next_direction,Y
#_0595D7: STA.w $0DE0,X

;---------------------------------------------------------------------------------------------------

.stay_true
#_0595DA: LDA.b #$01
#_0595DC: STA.w $02E4

#_0595DF: INC.w $0E80,X

#_0595E2: LDA.w $0E80,X
#_0595E5: AND.b #$01
#_0595E7: BNE .exit

#_0595E9: INC.w $0ED0,X

#_0595EC: LDA.w $0ED0,X
#_0595EF: CMP.b #$82
#_0595F1: BNE .exit

#_0595F3: LDA.b #$80
#_0595F5: STA.w $0D80,X

#_0595F8: STZ.w $02E4

.exit
#_0595FB: RTS

;---------------------------------------------------------------------------------------------------
; Weird shared table
#Speed16_Bank05:

.speed_x ; bleeds into next
#_0595FC: db  16, -16

.speed_y
#_0595FE: db   0,   0,  16, -16

.next_direction
#_059602: db $03, $02, $00, $01

;===================================================================================================

pool SpriteDraw_DesertStatue

.oam_groups
#_059606: dw  -8,  -8 : db $8E, $00, $00, $02
#_05960E: dw   8,  -8 : db $8E, $40, $00, $02
#_059616: dw  -8,   8 : db $AE, $00, $00, $02
#_05961E: dw   8,   8 : db $AE, $40, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_DesertStatue:
#_059626: LDA.w $0DF0,X
#_059629: CMP.b #$01
#_05962B: BNE .no_sfx

#_05962D: LDY.b #!SFX3_1B
#_05962F: STY.w $012F

#_059632: LDY.b #!SFX1_05
#_059634: STY.w $012D

.no_sfx
#_059637: LSR A
#_059638: AND.b #$01
#_05963A: CLC
#_05963B: ADC.w $0FD8
#_05963E: STA.w $0FD8

#_059641: JSR Sprite_DirectionToFaceLink_Bank05

#_059644: LDA.b $0F
#_059646: CLC
#_059647: ADC.b #$20
#_059649: CMP.b #$40
#_05964B: BCS .use_current_region

#_05964D: LDA.b $0E
#_05964F: CLC
#_059650: ADC.b #$20
#_059652: CMP.b #$40
#_059654: BCS .use_current_region

#_059656: LDA.b #$10
#_059658: JSL OAM_AllocateFromRegionB

.use_current_region
#_05965C: REP #$20

#_05965E: LDA.w #.oam_groups
#_059661: STA.b $08

#_059663: SEP #$20

#_059665: LDA.b #$04
#_059667: JMP.w Sprite_DrawMultiple_Bank05

;===================================================================================================

BlockFireball:

.offset_x_low
#_05966A: db   4,   4,  -4,  16

.shield_sides ; bleeds into next
#_05966E: db $03, $02

.offset_x_high ; bleeds into next
#_059670: db   0,   0,  -1

.offset_y_low ; bleeds into next
#_059673: db   0,  16

.hitbox_w ; bleeds into next
#_059675: db   8,   8

.hitbox_h
#_059677: db   4,   4,   8,   8

;===================================================================================================

Sprite_55_Zora:
#_05967B: LDA.w $0E90,X
#_05967E: BNE Fireball

#_059680: JMP.w Zora_Main

;===================================================================================================

Fireball:
#_059683: STA.w $0BA0,X

#_059686: LDA.w $0DF0,X
#_059689: BEQ .skip_allocation

#_05968B: LDA.b #$04
#_05968D: JSL OAM_AllocateFromRegionC

.skip_allocation
#_059691: JSL SpriteDraw_SingleSmall_long
#_059695: JSR Sprite_CheckIfActive_Bank05

#_059698: JSL Fireball_SpawnTrailGarnish

#_05969C: JSL Sprite_CheckDamageToLink_long
#_0596A0: BCC .no_damage

.die_forever
#_0596A2: STZ.w $0DD0,X

#_0596A5: RTS

;---------------------------------------------------------------------------------------------------

.no_damage
#_0596A6: JSR Sprite_Move_XY_Bank05
#_0596A9: LDA.b $1B
#_0596AB: BEQ .ignore_collision

#_0596AD: LDA.w $0E00,X
#_0596B0: BNE .ignore_collision

#_0596B2: TXA
#_0596B3: EOR.b $1A
#_0596B5: AND.b #$03
#_0596B7: BNE .ignore_collision

#_0596B9: JSR Sprite_CheckTileCollision_Bank05
#_0596BC: BNE .die_forever

.ignore_collision
#_0596BE: LDA.w $02E0
#_0596C1: ORA.w $037B
#_0596C4: BNE .exit

#_0596C6: LDA.w $0308
#_0596C9: BMI .exit

#_0596CB: LDA.l $7EF35A
#_0596CF: CMP.b #$02
#_0596D1: BCC .exit

#_0596D3: LDA.b $EE
#_0596D5: CMP.w $0F20,X
#_0596D8: BNE .exit

#_0596DA: JSL Sprite_SetupHitbox_long

#_0596DE: LDA.b $2F
#_0596E0: LSR A
#_0596E1: TAY

#_0596E2: LDA.b $3C
#_0596E4: BEQ .sword_not_out

; separate index for when sword is out
#_0596E6: LDA.w BlockFireball_shield_sides,Y
#_0596E9: TAY

.sword_not_out
#_0596EA: LDA.b $22
#_0596EC: CLC
#_0596ED: ADC.w BlockFireball_offset_x_low,Y
#_0596F0: STA.b $00

#_0596F2: LDA.b $23
#_0596F4: ADC.w BlockFireball_offset_x_high,Y
#_0596F7: STA.b $08

#_0596F9: LDA.w BlockFireball_hitbox_w,Y
#_0596FC: STA.b $02

#_0596FE: LDA.b $20
#_059700: CLC
#_059701: ADC.w BlockFireball_offset_y_low,Y
#_059704: STA.b $01

#_059706: LDA.b $21
#_059708: ADC.b #$00
#_05970A: STA.b $09

#_05970C: LDA.w BlockFireball_hitbox_h,Y
#_05970F: STA.b $03

#_059711: JSL CheckIfHitBoxesOverlap_long
#_059715: BCC .exit

#_059717: JSL Sprite_PlaceRepulseSpark_forced

#_05971B: STZ.w $0DD0,X

#_05971E: LDA.b #!SFX2_06
#_059720: JSL SpriteSFX_QueueSFX2WithPan

.exit
#_059724: RTS

;===================================================================================================

Zora_Main:
#_059725: LDA.w $0D80,X
#_059728: BNE .just_draw

#_05972A: JSL Sprite_PrepOAMCoord_long
#_05972E: BRA .continue

.just_draw
#_059730: JSR SpriteDraw_Zora

.continue
#_059733: JSR Sprite_CheckIfActive_Bank05

#_059736: LDA.w $0D80,X
#_059739: BEQ Zora_Submerged

#_05973B: DEC A
#_05973C: BEQ .surfacing

#_05973E: DEC A
#_05973F: BEQ .attacking

#_059741: JMP.w Zora_Submerge

.attacking
#_059744: JMP.w Zora_Attack

.surfacing
#_059747: JMP.w Zora_Surface

;===================================================================================================

pool Zora_Submerged

.offset_low
#_05974A: db -32, -24, -16,  -8,   8,  16,  24,  32

.offset_high
#_059752: db  -1,  -1,  -1,  -1,   0,   0,   0,   0

pool off

;---------------------------------------------------------------------------------------------------

Zora_Submerged:
#_05975A: LDA.w $0DF0,X
#_05975D: STA.w $0BA0,X
#_059760: BNE .exit

#_059762: JSL GetRandomNumber
#_059766: AND.b #$07
#_059768: TAY

#_059769: LDA.w $0D90,X
#_05976C: CLC
#_05976D: ADC.w .offset_low,Y
#_059770: STA.w $0D10,X

#_059773: LDA.w $0DA0,X
#_059776: ADC.w .offset_high,Y
#_059779: STA.w $0D30,X

#_05977C: JSL GetRandomNumber
#_059780: AND.b #$07
#_059782: TAY

#_059783: LDA.w $0DB0,X
#_059786: CLC
#_059787: ADC.w .offset_low,Y
#_05978A: STA.w $0D00,X

#_05978D: LDA.w $0EB0,X
#_059790: ADC.w .offset_high,Y
#_059793: STA.w $0D20,X

#_059796: JSL Sprite_Get16BitCoords_long
#_05979A: JSR Sprite_CheckTileCollision_Bank05

; Only spawn on water
#_05979D: LDA.w $0FA5
#_0597A0: CMP.b #!TILETYPE_08
#_0597A2: BNE .exit

; Keep trying until water is selected
#_0597A4: LDA.b #$7F
#_0597A6: STA.w $0DF0,X

#_0597A9: INC.w $0D80,X

#_0597AC: LDA.w $0E60,X
#_0597AF: ORA.b #$40
#_0597B1: STA.w $0E60,X

.exit
#_0597B4: RTS

;===================================================================================================

ZoraSurfacing_anim_step:
#_0597B5: db $04, $03, $02, $01, $02, $01, $02, $01
#_0597BD: db $02, $01, $02, $01, $02, $01, $00, $00

;===================================================================================================

Zora_Surface:
#_0597C5: LDA.w $0DF0,X
#_0597C8: STA.w $0BA0,X
#_0597CB: BNE .delay

#_0597CD: INC.w $0D80,X

#_0597D0: LDA.b #$7F
#_0597D2: STA.w $0DF0,X

#_0597D5: LDA.w $0E60,X
#_0597D8: AND.b #$BF
#_0597DA: STA.w $0E60,X

#_0597DD: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_0597DE: LSR A
#_0597DF: LSR A
#_0597E0: LSR A
#_0597E1: TAY

#_0597E2: LDA.w ZoraSurfacing_anim_step,Y
#_0597E5: STA.w $0DC0,X

#_0597E8: RTS

;===================================================================================================

pool Zora_Attack

.anim_step
#_0597E9: db $05, $05, $06, $0A, $06, $05, $05, $05

pool off

;---------------------------------------------------------------------------------------------------

Zora_Attack:
#_0597F1: JSR Sprite_CheckDamageToAndFromLink_Bank05

#_0597F4: LDA.w $0DF0,X
#_0597F7: BNE .delay

#_0597F9: INC.w $0D80,X

#_0597FC: LDA.b #$17
#_0597FE: STA.w $0DF0,X

#_059801: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_059802: CMP.b #$30
#_059804: BNE .dont_shoot

#_059806: PHA
#_059807: JSL Sprite_SpawnFireball
#_05980B: PLA

.dont_shoot
#_05980C: LSR A
#_05980D: LSR A
#_05980E: LSR A
#_05980F: LSR A
#_059810: TAY

#_059811: LDA.w .anim_step,Y
#_059814: STA.w $0DC0,X

#_059817: RTS

;===================================================================================================

pool Zora_Submerge

.anim_step
#_059818: db $0C, $0B, $09, $08
#_05981C: db $07, $00, $00, $00
#_059820: db $00, $00, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

Zora_Submerge:
#_059824: LDA.w $0DF0,X
#_059827: BNE .delay

#_059829: LDA.b #$80
#_05982B: STA.w $0DF0,X

#_05982E: STZ.w $0DC0,X
#_059831: STZ.w $0D80,X

#_059834: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_059835: LSR A
#_059836: LSR A
#_059837: TAY

#_059838: LDA.w .anim_step,Y
#_05983B: STA.w $0DC0,X

#_05983E: RTS

;===================================================================================================

pool SpriteDraw_Zora

.offset_x
#_05983F: dw   4,   4
#_059843: dw   0,   0
#_059847: dw   0,   0
#_05984B: dw   0,   0
#_05984F: dw   0,   0
#_059853: dw   0,   0
#_059857: dw   0,   0
#_05985B: dw   0,   0
#_05985F: dw   0,   0
#_059863: dw  -4,  11
#_059867: dw   0,   4
#_05986B: dw  -8,  18
#_05986F: dw  -8,  18

.offset_y
#_059873: dw   4,   4
#_059877: dw   0,   0
#_05987B: dw   0,   0
#_05987F: dw   0,  -3
#_059883: dw   0,  -3
#_059887: dw  -3,  -3
#_05988B: dw  -3,  -3
#_05988F: dw  -3,  -3
#_059893: dw  -6,  -6
#_059897: dw  -8,  -9
#_05989B: dw  -3,   5
#_05989F: dw -10, -11
#_0598A3: dw -10, -11

.char
#_0598A7: db $A8, $A8
#_0598A9: db $88, $88
#_0598AB: db $88, $88
#_0598AD: db $88, $A4
#_0598AF: db $88, $A4
#_0598B1: db $A4, $A4
#_0598B3: db $A6, $A6
#_0598B5: db $A4, $C0
#_0598B7: db $8A, $8A
#_0598B9: db $AE, $AF
#_0598BB: db $A6, $8D
#_0598BD: db $CF, $CF
#_0598BF: db $DF, $DF

.prop
#_0598C1: db $25, $25
#_0598C3: db $25, $25
#_0598C5: db $E5, $E5
#_0598C7: db $25, $20
#_0598C9: db $E5, $20
#_0598CB: db $20, $20
#_0598CD: db $20, $20
#_0598CF: db $20, $24
#_0598D1: db $25, $25
#_0598D3: db $24, $64
#_0598D5: db $20, $26
#_0598D7: db $24, $64
#_0598D9: db $24, $64

.size
#_0598DB: db $00, $00
#_0598DD: db $02, $02
#_0598DF: db $02, $02
#_0598E1: db $02, $02
#_0598E3: db $02, $02
#_0598E5: db $02, $02
#_0598E7: db $02, $02
#_0598E9: db $02, $02
#_0598EB: db $02, $02
#_0598ED: db $00, $00
#_0598EF: db $02, $00
#_0598F1: db $00, $00
#_0598F3: db $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Zora:
#_0598F5: JSR Sprite_PrepOAMCoord_Bank05

#_0598F8: LDA.w $0DC0,X
#_0598FB: ASL A
#_0598FC: STA.b $06

#_0598FE: PHX

#_0598FF: LDX.b #$01

.next_object
#_059901: PHX

#_059902: TXA
#_059903: CLC
#_059904: ADC.b $06
#_059906: PHA

#_059907: ASL A
#_059908: TAX

#_059909: REP #$20

#_05990B: LDA.b $00
#_05990D: CLC
#_05990E: ADC.w .offset_x,X
#_059911: STA.b ($90),Y

#_059913: AND.w #$0100
#_059916: STA.b $0E

#_059918: LDA.b $02
#_05991A: CLC
#_05991B: ADC.w .offset_y,X

#_05991E: INY
#_05991F: STA.b ($90),Y

#_059921: CLC
#_059922: ADC.w #$0010
#_059925: CMP.w #$0100

#_059928: SEP #$20
#_05992A: BCC .on_screen

#_05992C: LDA.b #$F0
#_05992E: STA.b ($90),Y

.on_screen
#_059930: PLX

#_059931: LDA.w .char,X
#_059934: INY
#_059935: STA.b ($90),Y

#_059937: LDA.b #$0F
#_059939: STA.b $0D

; Could have just done BIT.b #$0F
#_05993B: LDA.w .prop,X
#_05993E: BIT.b $0D
#_059940: BNE .include_calced_prop

#_059942: ORA.b $05

.include_calced_prop
#_059944: INY

#_059945: STA.b ($90),Y

#_059947: PHY

#_059948: TYA
#_059949: LSR A
#_05994A: LSR A
#_05994B: TAY

#_05994C: LDA.w .size,X
#_05994F: ORA.b $0F
#_059951: STA.b ($92),Y

#_059953: PLY
#_059954: INY

#_059955: PLX
#_059956: DEX
#_059957: BPL .next_object

#_059959: PLX

#_05995A: RTS

;===================================================================================================

Sprite_52_KingZora:
#_05995B: JSR SpriteDraw_KingZora
#_05995E: JSR Sprite_CheckIfActive_Bank05

#_059961: LDA.w $0D80,X
#_059964: JSL JumpTableLocal
#_059968: dw KingZora_Idle
#_05996A: dw KingZora_TheRumbling
#_05996C: dw KingZora_Surface
#_05996E: dw KingZora_Talking
#_059970: dw KingZora_Submerge

;===================================================================================================

UNREACHABLE_059972:
#_059972: db $28, $78, $C8, $78
#_059976: db $60, $50, $70, $50

;===================================================================================================

KingZora_Idle:
#_05997A: REP #$20

#_05997C: LDA.b $22
#_05997E: SEC
#_05997F: SBC.w $0FD8
#_059982: CLC
#_059983: ADC.w #$0010
#_059986: CMP.w #$0020
#_059989: BCS .out_of_range

#_05998B: LDA.b $20
#_05998D: SEC
#_05998E: SBC.w $0FDA
#_059991: CLC
#_059992: ADC.w #$0030
#_059995: CMP.w #$0060
#_059998: BCS .out_of_range

#_05999A: SEP #$20

#_05999C: JSL Link_CancelDash_long

#_0599A0: LDA.b #$7F
#_0599A2: STA.w $0DF0,X

#_0599A5: LDA.b #!SFX2_35
#_0599A7: STA.w $012E

#_0599AA: INC.w $0D80,X

;---------------------------------------------------------------------------------------------------

#_0599AD: LDY.b #$0F

.next_sprite
#_0599AF: CPY.w $0FA0
#_0599B2: BEQ .this_sprite_can_live

#_0599B4: LDA.w $0CAA,Y
#_0599B7: BMI .this_sprite_can_live

#_0599B9: PHX
#_0599BA: TYX
#_0599BB: PHY

#_0599BC: LDA.w $0DD0,X
#_0599BF: CMP.b #$0A
#_0599C1: BNE .not_carried

#_0599C3: STZ.w $0308
#_0599C6: STZ.w $0309

.not_carried
#_0599C9: JSL Sprite_KillSelf

#_0599CD: PLY
#_0599CE: PLX

.this_sprite_can_live
#_0599CF: DEY
#_0599D0: BPL .next_sprite

;---------------------------------------------------------------------------------------------------

.out_of_range
#_0599D2: SEP #$20

#_0599D4: RTS

;===================================================================================================

ZoraShake:
.low
#_0599D5: db   1,  -1

.high
#_0599D7: db   0,  -1

;===================================================================================================

KingZora_TheRumbling:
#_0599D9: LDA.w $0DF0,X
#_0599DC: BNE .delay

#_0599DE: INC.w $0D80,X

#_0599E1: LDA.b #$7F
#_0599E3: STA.w $0DF0,X

#_0599E6: STZ.w $011A
#_0599E9: STZ.w $011B

#_0599EC: LDA.b #$04
#_0599EE: STA.w $0DC0,X

#_0599F1: RTS

.delay
#_0599F2: AND.b #$01
#_0599F4: TAY

#_0599F5: LDA.w ZoraShake_low,Y
#_0599F8: STA.w $011A

#_0599FB: LDA.w ZoraShake_high,Y
#_0599FE: STA.w $011B

#_059A01: LDA.b #$01
#_059A03: STA.w $02E4

#_059A06: RTS

;===================================================================================================

pool KingZora_Surface

.anim_step
#_059A07: db $00, $00, $00, $03, $09, $08, $07, $06
#_059A0F: db $09, $08, $07, $06, $05, $04, $05, $04

pool off

;---------------------------------------------------------------------------------------------------

KingZora_Surface:
#_059A17: LDA.w $0DF0,X
#_059A1A: BNE .delay

#_059A1C: INC.w $0D80,X

#_059A1F: LDA.b #$7F
#_059A21: STA.w $0DF0,X

#_059A24: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_059A25: CMP.b #$1C
#_059A27: BNE .dont_splash

#_059A29: PHA

#_059A2A: LDA.b #$0F
#_059A2C: STA.w $0E10,X

#_059A2F: JSR Sprite_SpawnBigSplash

#_059A32: PLA

.dont_splash
#_059A33: LSR A
#_059A34: LSR A
#_059A35: LSR A
#_059A36: TAY

#_059A37: LDA.w .anim_step,Y
#_059A3A: STA.w $0DC0,X

#_059A3D: RTS

;===================================================================================================

pool KingZora_Talking

.anim_step
#_059A3E: db $00, $00, $01, $02
#_059A42: db $01, $02, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

KingZora_Talking:
#_059A46: LDA.w $0DF0,X
#_059A49: BNE .delay

#_059A4B: INC.w $0D80,X

#_059A4E: LDA.b #$24
#_059A50: STA.w $0DF0,X

#_059A53: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_059A54: LSR A ; /16
#_059A55: LSR A
#_059A56: LSR A
#_059A57: LSR A
#_059A58: TAY

#_059A59: LDA.w .anim_step,Y
#_059A5C: STA.w $0DC0,X

#_059A5F: LDA.w $0DF0,X
#_059A62: CMP.b #$50
#_059A64: BEQ KingZora_WelcomeToZoraMart

#_059A66: CMP.b #$4F
#_059A68: BEQ KingZora_SellingFlippers

#_059A6A: CMP.b #$4E
#_059A6C: BEQ KingZora_HandlePayment

#_059A6E: CMP.b #$4D
#_059A70: BEQ KingZora_HandleReceipt

#_059A72: RTS

;===================================================================================================

KingZora_WelcomeToZoraMart:
; Message 0140
#_059A73: LDA.b #$40

;===================================================================================================

KingZora_SendYouAMessage:
#_059A75: STA.w $1CF0

#_059A78: LDA.b #$01
#_059A7A: STA.w $1CF1

#_059A7D: JSL Sprite_ShowMessageMinimal

#_059A81: RTS

;===================================================================================================

KingZora_SellingFlippers:
#_059A82: LDA.w $1CE8
#_059A85: BNE KingZora_OfferRejected

; Message 0141
#_059A87: LDA.b #$41
#_059A89: JSR KingZora_SendYouAMessage

#_059A8C: RTS

;===================================================================================================

KingZora_HandlePayment:
#_059A8D: LDA.w $1CE8
#_059A90: BNE KingZora_FailedToSell

#_059A92: REP #$20

#_059A94: LDA.l $7EF360
#_059A98: SEC
#_059A99: SBC.w #500
#_059A9C: BCC KingZora_FailedToSell

#_059A9E: STA.l $7EF360

#_059AA2: SEP #$20

; Message 0142
#_059AA4: LDA.b #$42
#_059AA6: JSR KingZora_SendYouAMessage

#_059AA9: INC.w $0E90,X

#_059AAC: RTS

;===================================================================================================

KingZora_OfferRejected:
; Message 0144
#_059AAD: LDA.b #$44
#_059AAF: JSR KingZora_SendYouAMessage

#_059AB2: LDA.b #$30
#_059AB4: STA.w $0DF0,X

#_059AB7: RTS

;===================================================================================================

KingZora_FailedToSell:
#_059AB8: SEP #$20

; Message 0143
#_059ABA: LDA.b #$43
#_059ABC: JSR KingZora_SendYouAMessage

#_059ABF: LDA.b #$30
#_059AC1: STA.w $0DF0,X

#_059AC4: RTS

;===================================================================================================

KingZora_HandleReceipt:
#_059AC5: LDA.w $0E90,X
#_059AC8: BEQ .exit

#_059ACA: JSL Zora_RegurgitateFlippers

.exit
#_059ACE: RTS

;===================================================================================================

pool KingZora_Submerge

.anim_step
#_059ACF: db $0C, $0C, $0C, $0C, $0C, $0C, $0B, $0B
#_059AD7: db $0B, $0B, $0B, $0A, $0A, $0A, $0A, $03
#_059ADF: db $03, $03, $03, $03, $03

pool off

;---------------------------------------------------------------------------------------------------

KingZora_Submerge:
#_059AE4: LDA.w $0DF0,X
#_059AE7: BNE .still_diving

#_059AE9: JSL Sprite_KillSelf

#_059AED: STZ.w $02E4

#_059AF0: RTS

.still_diving
#_059AF1: CMP.b #$1D
#_059AF3: BNE .no_splash

#_059AF5: PHA

#_059AF6: LDA.b #$0F
#_059AF8: STA.w $0E10,X

#_059AFB: JSR Sprite_SpawnBigSplash

#_059AFE: PLA

.no_splash
#_059AFF: LSR A
#_059B00: TAY

#_059B01: LDA.w .anim_step,Y
#_059B04: STA.w $0DC0,X

#_059B07: RTS

;===================================================================================================

pool Sprite_SpawnBigSplash

.offset_x_low
#_059B08: db  -8,  -5,   4,  13,  16,  13,   4,  -5

.offset_x_high
#_059B10: db  -1,  -1,   0,   0,   0,   0,   0,  -1

.offset_y_low
#_059B18: db   4,  -5,  -8,  -5,   4,  13,  16,  13

.offset_y_high
#_059B20: db   0,  -1,  -1,  -1,   0,   0,   0,   0

.speed_x
#_059B28: db  -8,  -6,   0,   6,   8,   6,   0,  -6

.speed_y
#_059B30: db   0,  -6,  -8,  -6,   0,   6,   8,   6

pool off

;===================================================================================================

Arrghus_SpawnSplash:
#_059B38: PHB
#_059B39: PHK
#_059B3A: PLB

#_059B3B: JSR Sprite_SpawnBigSplash

#_059B3E: PLB

#_059B3F: RTL

;===================================================================================================

Sprite_SpawnBigSplash:
#_059B40: LDA.b #!SFX2_24
#_059B42: JSL SpriteSFX_QueueSFX2WithPan

#_059B46: NOP ; why?

#_059B47: LDA.b #$07
#_059B49: STA.b $0D

.next
#_059B4B: LDA.b #!SPRITE_08
#_059B4D: JSL Sprite_SpawnDynamically
#_059B51: BMI .no_room

#_059B53: LDA.b #$03
#_059B55: STA.w $0DD0,Y

#_059B58: PHX

#_059B59: LDX.b $0D

#_059B5B: LDA.w .offset_x_low,X
#_059B5E: SEC
#_059B5F: SBC.b #$04
#_059B61: CLC
#_059B62: ADC.b $00
#_059B64: STA.w $0D10,Y

#_059B67: LDA.b $01
#_059B69: ADC.w .offset_x_high,X
#_059B6C: STA.w $0D30,Y

#_059B6F: LDA.w .offset_y_low,X
#_059B72: SEC
#_059B73: SBC.b #$04
#_059B75: CLC
#_059B76: ADC.b $02
#_059B78: STA.w $0D00,Y

#_059B7B: LDA.b $03
#_059B7D: ADC.w .offset_y_high,X
#_059B80: STA.w $0D20,Y

#_059B83: LDA.w .speed_x,X
#_059B86: STA.w $0D50,Y

#_059B89: LDA.w .speed_y,X
#_059B8C: STA.w $0D40,Y

#_059B8F: TXA
#_059B90: STA.w $0D90,Y

#_059B93: PHY ; !WEIRD not necessary; indicative of an old RNG, possibly SMW's

#_059B94: JSL GetRandomNumber

#_059B98: PLY

#_059B99: AND.b #$0F
#_059B9B: ADC.b #$18
#_059B9D: STA.w $0F80,Y

#_059BA0: LDA.b #$01
#_059BA2: STA.w $0D80,Y

#_059BA5: LDA.b #$00
#_059BA7: STA.w $0F70,Y

#_059BAA: LDA.w $0E60,Y
#_059BAD: ORA.b #$40
#_059BAF: STA.w $0E60,Y
#_059BB2: STA.w $0BA0,Y

#_059BB5: PLX

.no_room
#_059BB6: DEC.b $0D
#_059BB8: BPL .next

#_059BBA: RTS

;===================================================================================================

pool SpriteDraw_KingZora

.offset_x
#_059BBB: db  -8,   8,  -8,   8
#_059BBF: db  -8,   8,  -8,   8
#_059BC3: db  -8,   8,  -8,   8
#_059BC7: db  -8,   8,  -8,   8
#_059BCB: db   0,   0,   0,   0
#_059BCF: db   0,   0,   0,   0
#_059BD3: db  -8,   8,  -8,   8
#_059BD7: db  -8,   8,  -8,   8
#_059BDB: db  -8,   8,  -8,   8
#_059BDF: db  -8,   8,  -8,   8
#_059BE3: db  -9,   9,  -9,   9
#_059BE7: db -10,  10, -10,  10
#_059BEB: db -11,  11, -11,  11

.offset_y
#_059BEF: db -18, -18,  -2,  -2
#_059BF3: db -18, -18,  -2,  -2
#_059BF7: db -18, -18,  -2,  -2
#_059BFB: db -12, -12,   4,   4
#_059BFF: db   0,   0,   0,   0
#_059C03: db   0,   0,   0,   0
#_059C07: db  -8,  -8,   8,   8
#_059C0B: db  -8,  -8,   8,   8
#_059C0F: db  -8,  -8,   8,   8
#_059C13: db  -8,  -8,   8,   8
#_059C17: db  -5,  -5,   5,   5
#_059C1B: db  -5,  -5,   5,   5
#_059C1F: db  -5,  -5,   5,   5

.char
#_059C23: db $C0, $C0, $E0, $E0
#_059C27: db $C2, $EA, $E2, $E2
#_059C2B: db $EA, $C2, $E2, $E2
#_059C2F: db $C0, $C0, $E4, $E6
#_059C33: db $88, $88, $88, $88
#_059C37: db $88, $88, $88, $88
#_059C3B: db $C4, $C6, $E4, $E6
#_059C3F: db $C6, $C4, $E6, $E4
#_059C43: db $E6, $E4, $C6, $C4
#_059C47: db $E4, $E6, $C4, $C6
#_059C4B: db $88, $88, $88, $88
#_059C4F: db $88, $88, $88, $88
#_059C53: db $88, $88, $88, $88

.prop
#_059C57: db $00, $40, $00, $40
#_059C5B: db $00, $40, $00, $40
#_059C5F: db $00, $40, $00, $40
#_059C63: db $00, $40, $05, $05
#_059C67: db $05, $05, $05, $05
#_059C6B: db $C5, $C5, $C5, $C5
#_059C6F: db $05, $05, $05, $05
#_059C73: db $45, $45, $45, $45
#_059C77: db $C5, $C5, $C5, $C5
#_059C7B: db $85, $85, $85, $85
#_059C7F: db $04, $44, $84, $C4
#_059C83: db $04, $44, $84, $C4
#_059C87: db $04, $44, $84, $C4

;---------------------------------------------------------------------------------------------------

.whirlpool_offset_x
#_059C8B: db -23,  23,  23,  23
#_059C8F: db -20, -15,  13,  18

.whirlpool_offset_y
#_059C93: db  -8,  -8,  -8,  -8
#_059C97: db  -7,   0,   0,  -7

.whirlpool_char
#_059C9B: db $AE, $AE, $AE, $AE
#_059C9F: db $AC, $AC, $AC, $AC

.whirlpool_prop
#_059CA3: db $00, $40, $40, $40
#_059CA7: db $00, $00, $40, $40

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_KingZora:
#_059CAB: JSR Sprite_PrepOAMCoord_Bank05

#_059CAE: LDA.w $0D80,X
#_059CB1: CMP.b #$02
#_059CB3: BCC .draw_whirlpool

#_059CB5: LDA.w $0DC0,X
#_059CB8: ASL A
#_059CB9: ASL A
#_059CBA: STA.b $06

#_059CBC: PHX

#_059CBD: LDX.b #$03

.next_zora_object
#_059CBF: PHX

#_059CC0: TXA
#_059CC1: CLC
#_059CC2: ADC.b $06
#_059CC4: TAX

#_059CC5: LDA.b $00
#_059CC7: CLC
#_059CC8: ADC.w .offset_x,X
#_059CCB: STA.b ($90),Y

#_059CCD: INY

#_059CCE: LDA.w .offset_y,X
#_059CD1: CLC
#_059CD2: ADC.b $02
#_059CD4: STA.b ($90),Y

#_059CD6: LDA.w .char,X
#_059CD9: INY
#_059CDA: STA.b ($90),Y

#_059CDC: LDA.b #$0F
#_059CDE: STA.b $0F

#_059CE0: LDA.w .prop,X
#_059CE3: BIT.b $0F
#_059CE5: BNE .ignore_prop

#_059CE7: ORA.b $05

.ignore_prop
#_059CE9: INY

#_059CEA: ORA.b #$20
#_059CEC: STA.b ($90),Y

#_059CEE: INY

#_059CEF: PLX
#_059CF0: DEX
#_059CF1: BPL .next_zora_object

;---------------------------------------------------------------------------------------------------

#_059CF3: PLX

#_059CF4: LDY.b #$02
#_059CF6: LDA.b #$03
#_059CF8: JSL Sprite_CorrectOAMEntries_long

#_059CFC: JSR Sprite_PrepOAMCoord_Bank05

;---------------------------------------------------------------------------------------------------

.draw_whirlpool
#_059CFF: LDA.w $0E10,X
#_059D02: BEQ .exit

#_059D04: LSR A
#_059D05: AND.b #$04
#_059D07: STA.b $06

#_059D09: LDA.b #$10
#_059D0B: JSL OAM_AllocateFromRegionC

#_059D0F: LDY.b #$00

#_059D11: PHX

#_059D12: LDX.b #$03

.next_whirlpool_object
#_059D14: PHX

#_059D15: TXA
#_059D16: CLC
#_059D17: ADC.b $06
#_059D19: TAX

#_059D1A: LDA.b $00
#_059D1C: CLC
#_059D1D: ADC.w .whirlpool_offset_x,X
#_059D20: STA.b ($90),Y

#_059D22: LDA.b $02
#_059D24: CLC
#_059D25: ADC.w .whirlpool_offset_y,X

#_059D28: INY
#_059D29: STA.b ($90),Y

#_059D2B: LDA.w .whirlpool_char,X
#_059D2E: INY
#_059D2F: STA.b ($90),Y

#_059D31: LDA.w .whirlpool_prop,X
#_059D34: ORA.b #$24
#_059D36: INY
#_059D37: STA.b ($90),Y

#_059D39: PHY

#_059D3A: TYA
#_059D3B: LSR A
#_059D3C: LSR A
#_059D3D: TAY

#_059D3E: LDA.b #$02
#_059D40: STA.b ($92),Y

#_059D42: PLY
#_059D43: INY

#_059D44: PLX
#_059D45: DEX
#_059D46: BPL .next_whirlpool_object

;---------------------------------------------------------------------------------------------------

#_059D48: PLX

.exit
#_059D49: RTS

;===================================================================================================

Sprite_56_WalkingZora:
#_059D4A: LDA.w $0EA0,X
#_059D4D: BEQ .not_recoiling

#_059D4F: STZ.w $0EA0,X

#_059D52: LDA.b #$03
#_059D54: STA.w $0DA0,X

#_059D57: LDA.b #$C0
#_059D59: STA.w $0ED0,X

#_059D5C: LDA.w $0F40,X
#_059D5F: STA.w $0D50,X

; Effectively an arithmetic shift right on $0D50,X
#_059D62: ASL A
#_059D63: ROR.w $0D50,X
#_059D66: LDA.w $0F30,X

#_059D69: STA.w $0D40,X
#_059D6C: ASL A
#_059D6D: ROR.w $0D40,X

.not_recoiling
#_059D70: LDA.w $0DA0,X
#_059D73: JSL JumpTableLocal
#_059D77: dw WalkingZora_Wait
#_059D79: dw WalkingZora_Surface
#_059D7B: dw WalkingZora_Walking
#_059D7D: dw WalkingZora_Stunned

;===================================================================================================

WalkingZora_Wait:
#_059D7F: JSL Sprite_PrepOAMCoord_long
#_059D83: JSR Sprite_CheckIfActive_Bank05

#_059D86: LDA.w $0DF0,X
#_059D89: BNE .exit

#_059D8B: LDA.b #$7F
#_059D8D: STA.w $0DF0,X

#_059D90: INC.w $0DA0,X

#_059D93: LDA.w $0E60,X
#_059D96: ORA.b #$40
#_059D98: STA.w $0E60,X

.exit
#_059D9B: RTS

;===================================================================================================

WalkingZora_Surface:
#_059D9C: JSR SpriteDraw_Zora
#_059D9F: JSR Sprite_CheckIfActive_Bank05

#_059DA2: LDA.w $0DF0,X
#_059DA5: STA.w $0BA0,X
#_059DA8: BNE .delay

#_059DAA: LDA.w $0E60,X
#_059DAD: AND.b #$BF
#_059DAF: STA.w $0E60,X

#_059DB2: LDA.b #!SFX2_28
#_059DB4: JSL SpriteSFX_QueueSFX2WithPan

#_059DB8: INC.w $0DA0,X

#_059DBB: LDA.b #$30
#_059DBD: STA.w $0F80,X

#_059DC0: JSR Sprite_DirectionToFaceLink_Bank05
#_059DC3: TYA
#_059DC4: STA.w $0DE0,X
#_059DC7: STA.w $0EB0,X

#_059DCA: RTS

.delay
#_059DCB: LSR A
#_059DCC: LSR A
#_059DCD: LSR A
#_059DCE: TAY

#_059DCF: LDA.w ZoraSurfacing_anim_step,Y
#_059DD2: STA.w $0DC0,X

#_059DD5: RTS

;===================================================================================================

WalkingZora_Walking:
#_059DD6: LDA.w $0E80,X
#_059DD9: AND.b #$08
#_059DDB: LSR A
#_059DDC: ADC.w $0DE0,X
#_059DDF: TAY

#_059DE0: LDA.w ZoraAndGuardAnimationState,Y
#_059DE3: STA.w $0DC0,X

#_059DE6: JSR SpriteDraw_WalkingZora
#_059DE9: JSR Sprite_CheckIfActive_Bank05
#_059DEC: JSR Sprite_CheckDamageToAndFromLink_Bank05
#_059DEF: JSR Sprite_Move_Z_Bank05

#_059DF2: LDA.w $0F80,X
#_059DF5: SEC
#_059DF6: SBC.b #$02
#_059DF8: STA.w $0F80,X

#_059DFB: LDA.w $0F70,X
#_059DFE: DEC A
#_059DFF: BPL .continue

#_059E01: LDA.w $0F80,X
#_059E04: CMP.b #$F0
#_059E06: BPL .airborne

#_059E08: JSR Sprite_ZeroVelocity_XY_Bank05

;---------------------------------------------------------------------------------------------------

.airborne
#_059E0B: STZ.w $0F70,X
#_059E0E: STZ.w $0F80,X

#_059E11: TXA
#_059E12: EOR.b $1A
#_059E14: AND.b #$0F
#_059E16: BNE .continue

#_059E18: JSR Sprite_DirectionToFaceLink_Bank05

#_059E1B: TYA
#_059E1C: STA.w $0EB0,X

#_059E1F: TXA
#_059E20: EOR.b $1A
#_059E22: AND.b #$1F
#_059E24: BNE .continue

#_059E26: TYA
#_059E27: STA.w $0DE0,X

#_059E2A: LDA.b #$08
#_059E2C: JSL Sprite_ApplySpeedTowardsLink_long

;---------------------------------------------------------------------------------------------------

.continue
#_059E30: JSR Sprite_Move_XY_Bank05
#_059E33: JSR Sprite_CheckTileCollision_Bank05

#_059E36: LDA.w $0F70,X
#_059E39: DEC A
#_059E3A: BPL .skip_extra_recoil_logic

#_059E3C: JSR WalkingZora_AdjustShadow

#_059E3F: LDA.w $0FA5
#_059E42: CMP.b #!TILETYPE_08
#_059E44: BNE .skip_extra_recoil_logic

#_059E46: JSL Sprite_KillSelf

#_059E4A: LDA.b #!SFX2_28
#_059E4C: JSL SpriteSFX_QueueSFX2WithPan

#_059E50: LDA.b #$03
#_059E52: STA.w $0DD0,X

#_059E55: LDA.b #$0F
#_059E57: STA.w $0DF0,X

#_059E5A: STZ.w $0D80,X

#_059E5D: LDA.b #$03
#_059E5F: STA.w $0E40,X

.skip_extra_recoil_logic
#_059E62: JSR ZoraAndGuardAdvanceAnimation ; stupid

#_059E65: RTS

;===================================================================================================

WalkingZora_Stunned:
#_059E66: JSL Sprite_CheckDamageFromLink_long

#_059E6A: LDA.b $1A
#_059E6C: AND.b #$03
#_059E6E: BNE .not_waking

#_059E70: DEC.w $0ED0,X
#_059E73: BNE .not_waking

#_059E75: LDA.b #$02
#_059E77: STA.w $0DA0,X

#_059E7A: LDY.w $0DD0,X

#_059E7D: LDA.b #$09
#_059E7F: STA.w $0DD0,X

#_059E82: CPY.b #$0A
#_059E84: BNE .not_waking

#_059E86: STZ.w $0308
#_059E89: STZ.w $0309

;---------------------------------------------------------------------------------------------------

.not_waking
#_059E8C: LDA.w $0ED0,X
#_059E8F: CMP.b #$30
#_059E91: BCS .dont_tremble

#_059E93: LDA.b $1A
#_059E95: AND.b #$01
#_059E97: BNE .dont_tremble

#_059E99: LDA.b $1A
#_059E9B: LSR A
#_059E9C: AND.b #$01
#_059E9E: TAY

#_059E9F: LDA.w ZoraShake_low,Y
#_059EA2: CLC
#_059EA3: ADC.w $0D10,X
#_059EA6: STA.w $0D10,X

#_059EA9: LDA.w .offset_x_high,Y
#_059EAC: ADC.w $0D30,X
#_059EAF: STA.w $0D30,X

;---------------------------------------------------------------------------------------------------

.dont_tremble
#_059EB2: STZ.w $0DC0,X
#_059EB5: STZ.w $0E70,X

#_059EB8: JSR WalkingZora_DrawWaterRipples

#_059EBB: DEC.w $0E40,X
#_059EBE: DEC.w $0E40,X

#_059EC1: JSL SpriteDraw_SingleLarge_long

#_059EC5: INC.w $0E40,X
#_059EC8: INC.w $0E40,X

#_059ECB: STZ.w $0EC0,X

#_059ECE: JSR Sprite_CheckIfActive_Bank05
#_059ED1: JSR Sprite_CheckIfRecoiling_Bank05

#_059ED4: JSR Sprite_Move_XY_Bank05
#_059ED7: JSL ThrownSprite_TileAndSpriteInteraction_long

;===================================================================================================

#WalkingZora_AdjustShadow:
#_059EDB: STZ.w $0EC0,X

#_059EDE: LDA.w $0F70,X
#_059EE1: BNE .exit

#_059EE3: LDA.w $0FA5
#_059EE6: CMP.b #!TILETYPE_09
#_059EE8: BNE .exit

#_059EEA: INC.w $0EC0,X

.exit
#_059EED: RTS

;---------------------------------------------------------------------------------------------------

.offset_x_high
#_059EEE: db   0,  -1

;===================================================================================================

pool SpriteDraw_WalkingZora

.head_char
#_059EF0: db $CE, $CE, $A4, $EE

.head_prop
#_059EF4: db $40, $00, $00, $00

.body_char
#_059EF8: db $CC, $EC, $CC, $EC
#_059EFC: db $E8, $E8, $CA, $CA

.body_prop
#_059F00: db $40, $40, $00, $00
#_059F04: db $00, $40, $00, $40

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_WalkingZora:
#_059F08: JSR WalkingZora_DrawWaterRipples
#_059F0B: JSR Sprite_PrepOAMCoord_Bank05

#_059F0E: LDY.b #$00

#_059F10: LDA.w $0DC0,X
#_059F13: STA.b $06

; TODO analyze
#_059F15: CMP.b #$04
#_059F17: BCS .skip_this_one

#_059F19: LSR A

#_059F1A: REP #$20

#_059F1C: LDA.b $02
#_059F1E: SBC.w #$0000
#_059F21: STA.b $02

#_059F23: SEP #$20

;---------------------------------------------------------------------------------------------------

.skip_this_one
#_059F25: PHX

#_059F26: LDA.w $0EB0,X
#_059F29: TAX

#_059F2A: REP #$20

#_059F2C: LDA.b $00
#_059F2E: STA.b ($90),Y

#_059F30: AND.w #$0100
#_059F33: STA.b $0E

#_059F35: LDA.b $02
#_059F37: SEC
#_059F38: SBC.w #$0006

#_059F3B: INY
#_059F3C: STA.b ($90),Y

#_059F3E: CLC
#_059F3F: ADC.w #$0010
#_059F42: CMP.w #$0100
#_059F45: BCC .head_on_screen

#_059F47: LDA.w #$00F0
#_059F4A: STA.b ($90),Y

.head_on_screen
#_059F4C: SEP #$20

#_059F4E: LDA.w .head_char,X
#_059F51: INY
#_059F52: STA.b ($90),Y

#_059F54: LDA.w .head_prop,X
#_059F57: INY
#_059F58: ORA.b $05
#_059F5A: STA.b ($90),Y

#_059F5C: LDA.b #$02
#_059F5E: ORA.b $0F
#_059F60: STA.b ($92)

#_059F62: LDA.b $06

#_059F64: PHA

#_059F65: ASL A
#_059F66: TAX

;---------------------------------------------------------------------------------------------------

#_059F67: REP #$20

#_059F69: LDA.b $00
#_059F6B: INY
#_059F6C: STA.b ($90),Y

#_059F6E: AND.w #$0100
#_059F71: STA.b $0E

#_059F73: LDA.b $02
#_059F75: INC A
#_059F76: INC A

#_059F77: INY

#_059F78: STA.b ($90),Y

#_059F7A: CLC
#_059F7B: ADC.w #$0010
#_059F7E: CMP.w #$0100
#_059F81: BCC .body_on_screen

#_059F83: LDA.w #$00F0
#_059F86: STA.b ($90),Y

.body_on_screen
#_059F88: SEP #$20

#_059F8A: PLX

#_059F8B: LDA.w .body_char,X
#_059F8E: INY
#_059F8F: STA.b ($90),Y

#_059F91: LDA.w .body_prop,X
#_059F94: ORA.b $05
#_059F96: INY
#_059F97: STA.b ($90),Y

#_059F99: LDY.b #$01

#_059F9B: LDA.b #$02
#_059F9D: ORA.b $0F
#_059F9F: STA.b ($92),Y

;---------------------------------------------------------------------------------------------------

#_059FA1: PLX

#_059FA2: LDA.w $0EC0,X
#_059FA5: BNE .exit

#_059FA7: JSL SpriteDraw_Shadow_long

.exit
#_059FAB: RTS

;===================================================================================================

pool SpriteDraw_WaterRipple

.oam_groups
.group00
#_059FAC: dw   0,  10 : db $D8, $01, $00, $00
#_059FB4: dw   8,  10 : db $D8, $41, $00, $00

.group01
#_059FBC: dw   0,  10 : db $D9, $01, $00, $00
#_059FC4: dw   8,  10 : db $D9, $41, $00, $00

.group02
#_059FCC: dw   0,  10 : db $DA, $01, $00, $00
#_059FD4: dw   8,  10 : db $DA, $41, $00, $00

;-------------------------------------------------------------------------------'

.oam_groups_offset
#_059FDC: db .group00-.group00 ; $00
#_059FDD: db .group01-.group00 ; $10
#_059FDE: db .group02-.group00 ; $20
#_059FDF: db .group01-.group00 ; $10

pool off

;===================================================================================================

WalkingZora_DrawWaterRipples:
#_059FE0: LDA.w $0EC0,X
#_059FE3: BEQ .exit

;===================================================================================================

#SpriteDraw_WaterRipple_WithOAMAdjust:
#_059FE5: JSL SpriteDraw_WaterRipple

#_059FE9: REP #$20

#_059FEB: LDA.b $90
#_059FED: CLC
#_059FEE: ADC.w #$0008
#_059FF1: STA.b $90

#_059FF3: INC.b $92
#_059FF5: INC.b $92

#_059FF7: SEP #$20

.exit
#_059FF9: RTS

;===================================================================================================

SpriteDraw_WaterRipple:
#_059FFA: PHB
#_059FFB: PHK
#_059FFC: PLB

#_059FFD: LDA.b $1A
#_059FFF: LSR A
#_05A000: LSR A
#_05A001: AND.b #$03
#_05A003: TAY

#_05A004: LDA.w .oam_groups_offset,Y
#_05A007: CLC
#_05A008: ADC.b #.oam_groups>>0
#_05A00A: STA.b $08

#_05A00C: LDA.b #.oam_groups>>8
#_05A00E: ADC.b #$00
#_05A010: STA.b $09

#_05A012: LDA.b #$02
#_05A014: JSR Sprite_DrawMultiple_Bank05

#_05A017: LDY.b #$03

#_05A019: LDA.b ($90),Y
#_05A01B: AND.b #$30
#_05A01D: ORA.b #$04
#_05A01F: STA.b ($90),Y

#_05A021: LDY.b #$07
#_05A023: ORA.b #$40
#_05A025: STA.b ($90),Y

#_05A027: PLB

#_05A028: RTL

;===================================================================================================

SpriteDraw_WaterRipple_WithOAMAdjust_long:
#_05A029: PHB
#_05A02A: PHK
#_05A02B: PLB

#_05A02C: JSR SpriteDraw_WaterRipple_WithOAMAdjust

#_05A02F: PLB

#_05A030: RTL

;===================================================================================================

ArmosKnightDeath_anim_step:
#_05A031: db $05, $04, $03, $02, $01

;===================================================================================================

Sprite_53_ArmosKnight:
#_05A036: LDA.w $0B89,X
#_05A039: ORA.b #$30
#_05A03B: STA.w $0B89,X

#_05A03E: JSR SpriteDraw_ArmosKnight
#_05A041: JSR Sprite_CheckIfActivePermissive_Bank05

#_05A044: LDA.w $0DD0,X
#_05A047: CMP.b #$09
#_05A049: BEQ ArmosKnight_Alive

#_05A04B: LDA.w $0DF0,X
#_05A04E: BNE ArmostKnight_Dying

;===================================================================================================

ArmosKnight_Dead:
#_05A050: DEC.w $0FF8

#_05A053: LDA.w $0FF8
#_05A056: CMP.b #$01
#_05A058: BNE .knights_remain

; Look for last knight to turn red
#_05A05A: LDY.b #$05

.next_knight
#_05A05C: LDA.b #$30
#_05A05E: STA.w $0E50,Y

#_05A061: LDA.b #$00
#_05A063: STA.w $0D50,Y
#_05A066: STA.w $0D40,Y
#_05A069: STA.w $0F80,Y

#_05A06C: DEY
#_05A06D: BPL .next_knight

;---------------------------------------------------------------------------------------------------

.knights_remain
#_05A06F: STZ.w $0DD0,X

#_05A072: JSL CheckIfRoomIsClear
#_05A076: BCC .exit

#_05A078: LDA.b #!SPRITE_EA
#_05A07A: JSL Sprite_SpawnDynamically
#_05A07E: JSL Sprite_SetSpawnedCoordinates

#_05A082: LDA.b #$20
#_05A084: STA.w $0F80,Y

#_05A087: LDA.b #$01
#_05A089: STA.w $0D90,Y

.exit
#_05A08C: RTS

;===================================================================================================

ArmostKnight_Dying:
#_05A08D: LSR A
#_05A08E: LSR A
#_05A08F: LSR A
#_05A090: TAY

#_05A091: LDA.w ArmosKnightDeath_anim_step,Y
#_05A094: STA.w $0DC0,X

#_05A097: RTS

;===================================================================================================

ArmosKnight_Alive:
#_05A098: JSR Sprite_Move_XY_Bank05
#_05A09B: JSR Sprite_Move_Z_Bank05

#_05A09E: LDA.w $0F80,X
#_05A0A1: SEC
#_05A0A2: SBC.b #$04
#_05A0A4: STA.w $0F80,X

#_05A0A7: LDA.w $0F70,X
#_05A0AA: BPL .continue

#_05A0AC: STZ.w $0F80,X
#_05A0AF: STZ.w $0F70,X

#_05A0B2: LDA.w $0FF8
#_05A0B5: CMP.b #$01
#_05A0B7: BEQ .continue

#_05A0B9: LDA.w $0D90,X
#_05A0BC: BEQ .continue

#_05A0BE: LDA.b #$30
#_05A0C0: STA.w $0F80,X

#_05A0C3: LDA.b #!SFX3_16
#_05A0C5: JSL SpriteSFX_QueueSFX3WithPan

;---------------------------------------------------------------------------------------------------

.continue
#_05A0C9: LDA.w $0EA0,X
#_05A0CC: BEQ .dont_stop

#_05A0CE: JSR Sprite_ZeroVelocity_XY_Bank05

#_05A0D1: STZ.w $0D80,X
#_05A0D4: STZ.w $0ED0,X

.dont_stop
#_05A0D7: JSR Sprite_CheckIfRecoiling_Bank05

#_05A0DA: LDA.w $0D90,X
#_05A0DD: BNE ArmosKnight_Awake

#_05A0DF: LDA.w $0DF0,X
#_05A0E2: BNE .still_sleeping

#_05A0E4: INC.w $0D90,X

#_05A0E7: LDA.w $0E40,X
#_05A0EA: AND.b #$7F
#_05A0EC: DEC A
#_05A0ED: DEC A
#_05A0EE: STA.w $0E40,X

#_05A0F1: LDA.w $0CAA,X
#_05A0F4: AND.b #$FB
#_05A0F6: STA.w $0CAA,X

#_05A0F9: LDA.w $0E60,X
#_05A0FC: AND.b #$BF
#_05A0FE: STA.w $0E60,X

#_05A101: RTS

;---------------------------------------------------------------------------------------------------

.still_sleeping
#_05A102: CMP.b #$40
#_05A104: BNE .skip_sfx

#_05A106: LDY.b #!SFX2_35
#_05A108: STY.w $012E

.skip_sfx
#_05A10B: BCS .check_clink

#_05A10D: LSR A
#_05A10E: EOR.w $0FA0
#_05A111: AND.b #$01
#_05A113: TAY

#_05A114: LDA.w Speed16_Bank05,Y
#_05A117: STA.w $0D50,X

#_05A11A: JSR Sprite_Move_X_Bank05

#_05A11D: STZ.w $0D50,X

.check_clink
#_05A120: JSL Sprite_CheckDamageFromLink_long
#_05A124: JSL Sprite_CheckDamageToLink_same_layer_long
#_05A128: BCC .exit

#_05A12A: JSL Sprite_CancelHookshot
#_05A12E: JSL Sprite_RepelDash_long

.exit
#_05A132: RTS

;===================================================================================================

ArmosKnight_Awake:
#_05A133: LDA.w $0FF8
#_05A136: CMP.b #$01
#_05A138: BEQ ArmosKnight_BeRed

#_05A13A: JSR Sprite_CheckDamageToAndFromLink_Bank05

#_05A13D: LDA.w $0D80,X
#_05A140: BNE .copy_overlord

#_05A142: JSR ArmosKnight_ProjectSpeedTowardsTarget
#_05A145: JSL Sprite_Get16BitCoords_long

#_05A149: REP #$20

#_05A14B: LDA.b $04
#_05A14D: SEC
#_05A14E: SBC.w $0FD8
#_05A151: CLC
#_05A152: ADC.w #$0002

#_05A155: CMP.w #$0004
#_05A158: BCS .exit

#_05A15A: LDA.b $06
#_05A15C: SEC
#_05A15D: SBC.w $0FDA
#_05A160: CLC
#_05A161: ADC.w #$0002

#_05A164: CMP.w #$0004
#_05A167: BCS .exit

#_05A169: SEP #$20

#_05A16B: INC.w $0D80,X

.exit
#_05A16E: SEP #$20

#_05A170: RTS

;---------------------------------------------------------------------------------------------------

.copy_overlord
#_05A171: LDA.w $0B10,X
#_05A174: STA.w $0D10,X

#_05A177: LDA.w $0B20,X
#_05A17A: STA.w $0D30,X

#_05A17D: LDA.w $0B30,X
#_05A180: STA.w $0D00,X

#_05A183: LDA.w $0B40,X
#_05A186: STA.w $0D20,X

#_05A189: RTS

;===================================================================================================

ArmosKnight_BeRed:
#_05A18A: JSL RedArmosCrusher

#_05A18E: RTS

;===================================================================================================

ArmosKnight_ProjectSpeedTowardsTarget:
#_05A18F: LDA.w $0B10,X
#_05A192: STA.b $04

#_05A194: LDA.w $0B20,X
#_05A197: STA.b $05

#_05A199: LDA.w $0B30,X
#_05A19C: STA.b $06

#_05A19E: LDA.w $0B40,X
#_05A1A1: STA.b $07

#_05A1A3: LDA.b #$10
#_05A1A5: JSL Sprite_ProjectSpeedTowardsLocation_long

#_05A1A9: LDA.b $00
#_05A1AB: STA.w $0D40,X

#_05A1AE: LDA.b $01
#_05A1B0: STA.w $0D50,X

#_05A1B3: RTS

;===================================================================================================

pool SpriteDraw_ArmosKnight

.offset_x
#_05A1B4: dw  -8,   8,  -8,   8
#_05A1BC: dw -10,  10, -10,  10
#_05A1C4: dw -10,  10, -10,  10
#_05A1CC: dw -12,  12, -12,  12
#_05A1D4: dw -14,  14, -14,  14
#_05A1DC: dw -16,  24, -16,  24

.offset_y
#_05A1E4: dw  -8,  -8,   8,   8
#_05A1EC: dw -10, -10,  10,  10
#_05A1F4: dw -10, -10,  10,  10
#_05A1FC: dw -12, -12,  12,  12
#_05A204: dw -14, -14,  14,  14
#_05A20C: dw -16, -16,  24,  24

.char
#_05A214: db $C0, $C2, $E0, $E2
#_05A218: db $C0, $C2, $E0, $E2
#_05A21C: db $C4, $C4, $C4, $C4
#_05A220: db $C6, $C6, $C6, $C6
#_05A224: db $C8, $C8, $C8, $C8
#_05A228: db $D8, $D8, $D8, $D8

.flip
#_05A22C: db $00, $00, $00, $00
#_05A230: db $00, $00, $00, $00
#_05A234: db $40, $00, $C0, $80
#_05A238: db $40, $00, $C0, $80
#_05A23C: db $40, $00, $C0, $80
#_05A240: db $40, $00, $C0, $80

.size
#_05A244: db $02, $02, $02, $02
#_05A248: db $02, $02, $02, $02
#_05A24C: db $02, $02, $02, $02
#_05A250: db $02, $02, $02, $02
#_05A254: db $02, $02, $02, $02
#_05A258: db $00, $00, $00, $00

; !HARDCODED oam slots
.oam_a_loc
#_05A25C: dw $0930, $0938, $0940, $0948, $0950, $0958

.oam_b_loc
#_05A268: dw $0A6C, $0A6E, $0A70, $0A72, $0A74, $0A76

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_ArmosKnight:
#_05A274: JSR Sprite_PrepOAMCoord_Bank05

#_05A277: LDA.w $0D90,X
#_05A27A: BNE .awakening

#_05A27C: LDA.b $11
#_05A27E: CMP.b #$07
#_05A280: BEQ .awakening

#_05A282: JSL OAM_AllocateDeferToPlayer_long

#_05A286: LDY.b #$00

.awakening
#_05A288: LDA.w $0DC0,X
#_05A28B: ASL A
#_05A28C: ASL A
#_05A28D: STA.b $06

;---------------------------------------------------------------------------------------------------

#_05A28F: PHX

#_05A290: LDX.b #$03

.next_object
#_05A292: PHX

#_05A293: TXA
#_05A294: CLC
#_05A295: ADC.b $06
#_05A297: PHA

#_05A298: ASL A
#_05A299: TAX

#_05A29A: REP #$20

#_05A29C: LDA.b $00
#_05A29E: CLC
#_05A29F: ADC.w .offset_x,X
#_05A2A2: STA.b ($90),Y

#_05A2A4: AND.w #$0100
#_05A2A7: STA.b $0E

#_05A2A9: LDA.b $02
#_05A2AB: CLC
#_05A2AC: ADC.w .offset_y,X

#_05A2AF: INY
#_05A2B0: STA.b ($90),Y

#_05A2B2: CLC
#_05A2B3: ADC.w #$0010
#_05A2B6: CMP.w #$0100

#_05A2B9: SEP #$20
#_05A2BB: BCC .on_screen

#_05A2BD: LDA.b #$F0
#_05A2BF: STA.b ($90),Y

.on_screen
#_05A2C1: PLX

#_05A2C2: LDA.w .char,X
#_05A2C5: INY
#_05A2C6: STA.b ($90),Y

#_05A2C8: LDA.w .flip,X
#_05A2CB: ORA.b $05
#_05A2CD: INY
#_05A2CE: STA.b ($90),Y

#_05A2D0: PHY

#_05A2D1: TYA
#_05A2D2: LSR A
#_05A2D3: LSR A
#_05A2D4: TAY

#_05A2D5: LDA.w .size,X
#_05A2D8: ORA.b $0F
#_05A2DA: STA.b ($92),Y

#_05A2DC: PLY
#_05A2DD: INY

#_05A2DE: PLX
#_05A2DF: DEX
#_05A2E0: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_05A2E2: PLX

#_05A2E3: LDA.w $0DC0,X
#_05A2E6: BEQ .alive

#_05A2E8: RTS

;---------------------------------------------------------------------------------------------------

.alive
#_05A2E9: LDA.w $0D90,X
#_05A2EC: BEQ .use_previously_allotted_oam

#_05A2EE: TXA
#_05A2EF: ASL A
#_05A2F0: TAY

#_05A2F1: REP #$20

#_05A2F3: LDA.w .oam_a_loc,Y
#_05A2F6: STA.b $90

#_05A2F8: LDA.w .oam_b_loc,Y
#_05A2FB: STA.b $92

#_05A2FD: SEP #$20

;---------------------------------------------------------------------------------------------------

.use_previously_allotted_oam
#_05A2FF: LDA.w $0F70,X
#_05A302: CMP.b #$20
#_05A304: BCC .low_altitude

#_05A306: LDA.b #$20

.low_altitude
#_05A308: LSR A
#_05A309: LSR A
#_05A30A: LSR A
#_05A30B: STA.b $07

#_05A30D: LDA.w $0D00,X
#_05A310: SEC
#_05A311: SBC.b $E8
#_05A313: STA.b $02

#_05A315: LDA.w $0D20,X
#_05A318: SBC.b $E9
#_05A31A: STA.b $03

#_05A31C: LDY.b #$10

#_05A31E: LDA.b $00
#_05A320: SEC
#_05A321: SBC.b #$08
#_05A323: PHA

#_05A324: CLC
#_05A325: ADC.b $07
#_05A327: STA.b ($90),Y

#_05A329: PLA
#_05A32A: CLC
#_05A32B: ADC.b #$10

#_05A32D: SEC
#_05A32E: SBC.b $07

#_05A330: LDY.b #$14
#_05A332: STA.b ($90),Y

#_05A334: REP #$20

#_05A336: LDA.b $02
#_05A338: CLC
#_05A339: ADC.w #$000C

#_05A33C: LDY.b #$11
#_05A33E: STA.b ($90),Y

#_05A340: LDY.b #$15
#_05A342: STA.b ($90),Y

#_05A344: CLC
#_05A345: ADC.w #$0010
#_05A348: CMP.w #$0100

#_05A34B: SEP #$20
#_05A34D: BCC .shadow_on_screen

#_05A34F: LDA.b #$F0
#_05A351: STA.b ($90),Y

#_05A353: LDY.b #$11
#_05A355: STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

.shadow_on_screen
#_05A357: LDA.b #$E4
#_05A359: LDY.b #$12
#_05A35B: STA.b ($90),Y

#_05A35D: LDY.b #$16
#_05A35F: STA.b ($90),Y

#_05A361: LDA.b #$25
#_05A363: LDY.b #$13
#_05A365: STA.b ($90),Y

#_05A367: ORA.b #$40
#_05A369: LDY.b #$17
#_05A36B: STA.b ($90),Y

#_05A36D: LDA.b #$02
#_05A36F: LDY.b #$04
#_05A371: STA.b ($92),Y

#_05A373: INY
#_05A374: STA.b ($92),Y

#_05A376: RTS

;===================================================================================================

pool SpritePrep_Lanmolas

.delay
#_05A377: db 128, 192, 255

pool off

;---------------------------------------------------------------------------------------------------

SpritePrep_Lanmolas:
#_05A37A: LDA.l .delay,X
#_05A37E: STA.w $0DF0,X

#_05A381: LDA.b #$FF
#_05A383: STA.w $0F70,X

#_05A386: PHX

#_05A387: LDY.b #$3F

#_05A389: LDA.l SubspriteIndices_Bank05,X
#_05A38D: TAX

#_05A38E: LDA.b #$FF

.next_subsprite
#_05A390: STA.l $7FFE00,X

#_05A394: INX

#_05A395: DEY
#_05A396: BPL .next_subsprite

#_05A398: PLX

#_05A399: LDA.b #$07
#_05A39B: STA.l $7FF81E,X

#_05A39F: RTL

;===================================================================================================

UNREACHABLE_05A3A0:
#_05A3A0: db $18, $E8

;===================================================================================================

Sprite_54_Lanmolas:
#_05A3A2: JSL Sprite_PrepOAMCoord_long
#_05A3A6: JSR SpriteDraw_Lanmola
#_05A3A9: JSR Sprite_CheckIfActivePermissive_Bank05

#_05A3AC: LDA.w $0D80,X
#_05A3AF: JSL JumpTableLocal
#_05A3B3: dw Lanmolas_Hiding
#_05A3B5: dw Lanmolas_BurrowingUp
#_05A3B7: dw Lanmolas_LeapFromSand
#_05A3B9: dw Lanmolas_WiggleInAir
#_05A3BB: dw Lanmolas_BurrowDown
#_05A3BD: dw Lanmolas_Exploding

;===================================================================================================

Lanmolas_Hiding:
#_05A3BF: LDA.w $0DF0,X
#_05A3C2: ORA.w $0F00,X
#_05A3C5: BNE .exit

#_05A3C7: LDA.b #$7F
#_05A3C9: STA.w $0DF0,X

#_05A3CC: INC.w $0D80,X

#_05A3CF: LDA.b #!SFX2_35
#_05A3D1: JSL SpriteSFX_QueueSFX2WithPan

.exit
#_05A3D5: RTS

;===================================================================================================

Lanmolas_Targets:
.position_x
#_05A3D6: db $58, $50, $60, $70
#_05A3DA: db $80, $90, $A0, $98

.position_y
#_05A3DE: db $68, $60, $70, $80
#_05A3E2: db $90, $A0, $A8, $80

;===================================================================================================

Lanmolas_BurrowingUp:
#_05A3E6: LDA.w $0DF0,X
#_05A3E9: BNE EXIT_05A42E

#_05A3EB: JSL Lanmola_SpawnShrapnel

#_05A3EF: LDA.b #!SFX1_13
#_05A3F1: STA.w $012D

#_05A3F4: JSL GetRandomNumber
#_05A3F8: AND.b #$07
#_05A3FA: TAY

#_05A3FB: LDA.w Lanmolas_Targets_position_x,Y
#_05A3FE: STA.w $0DA0,X

#_05A401: JSL GetRandomNumber
#_05A405: AND.b #$07
#_05A407: TAY

#_05A408: LDA.w Lanmolas_Targets_position_y,Y
#_05A40B: STA.w $0DB0,X

#_05A40E: INC.w $0D80,X

#_05A411: LDA.b #$18
#_05A413: STA.w $0F80,X

#_05A416: STZ.w $0EC0,X
#_05A419: STZ.w $0ED0,X

;===================================================================================================

Lanmolas_CacheLocation:
#_05A41C: LDA.w $0D10,X
#_05A41F: STA.w $0DE0,X

#_05A422: LDA.w $0D00,X
#_05A425: STA.w $0E70,X

#_05A428: LDA.b #$4A
#_05A42A: STA.w $0E00,X

#_05A42D: RTS

;---------------------------------------------------------------------------------------------------

#EXIT_05A42E:
#_05A42E: RTS

;===================================================================================================

pool Lanmolas_LeapFromSand

.z_speed
#_05A42F: db  2, -2

pool off

;---------------------------------------------------------------------------------------------------

Lanmolas_LeapFromSand:
#_05A431: JSR Sprite_CheckDamageToAndFromLink_Bank05
#_05A434: JSR Sprite_Move_Z_Bank05

#_05A437: LDA.w $0EC0,X
#_05A43A: BNE .ascending

#_05A43C: LDA.w $0F80,X
#_05A43F: SEC
#_05A440: SBC.b #$01
#_05A442: STA.w $0F80,X

#_05A445: BNE .not_at_peak

#_05A447: INC.w $0EC0,X

.not_at_peak
#_05A44A: BRA .continue

;---------------------------------------------------------------------------------------------------

.ascending
#_05A44C: LDA.b $1A
#_05A44E: AND.b #$01
#_05A450: BNE .continue

#_05A452: LDA.w $0ED0,X
#_05A455: AND.b #$01
#_05A457: TAY

#_05A458: LDA.w $0F80,X
#_05A45B: CLC
#_05A45C: ADC.w .z_speed,Y
#_05A45F: STA.w $0F80,X

#_05A462: CMP.w Speed16_Bank05,Y
#_05A465: BNE .continue

#_05A467: INC.w $0ED0,X

;---------------------------------------------------------------------------------------------------

.continue
#_05A46A: LDA.w $0DA0,X
#_05A46D: STA.b $04

#_05A46F: LDA.w $0D30,X
#_05A472: STA.b $05

#_05A474: LDA.w $0DB0,X
#_05A477: STA.b $06

#_05A479: LDA.w $0D20,X
#_05A47C: STA.b $07

#_05A47E: LDA.w $0D10,X
#_05A481: STA.b $00

#_05A483: LDA.w $0D30,X
#_05A486: STA.b $01

#_05A488: LDA.w $0D00,X
#_05A48B: STA.b $02

#_05A48D: LDA.w $0D20,X
#_05A490: STA.b $03

;---------------------------------------------------------------------------------------------------

#_05A492: REP #$20

#_05A494: LDA.b $00
#_05A496: SEC
#_05A497: SBC.b $04
#_05A499: CLC
#_05A49A: ADC.w #$0002

#_05A49D: CMP.w #$0004
#_05A4A0: BCS .not_at_target

#_05A4A2: LDA.b $02
#_05A4A4: SEC
#_05A4A5: SBC.b $06
#_05A4A7: CLC
#_05A4A8: ADC.w #$0002
#_05A4AB: CMP.w #$0004

#_05A4AE: SEP #$20
#_05A4B0: BCS .not_at_target

#_05A4B2: INC.w $0D80,X

;---------------------------------------------------------------------------------------------------

.not_at_target
#_05A4B5: SEP #$20

#_05A4B7: LDA.b #$0A
#_05A4B9: JSL Sprite_ProjectSpeedTowardsLocation_long

#_05A4BD: LDA.b $00
#_05A4BF: STA.w $0D40,X

#_05A4C2: LDA.b $01
#_05A4C4: STA.w $0D50,X

#_05A4C7: JSR Sprite_Move_XY_Bank05

#_05A4CA: RTS

;===================================================================================================

Lanmolas_WiggleInAir:
#_05A4CB: JSR Sprite_CheckDamageToAndFromLink_Bank05
#_05A4CE: JSR Sprite_Move_XY_Bank05
#_05A4D1: JSR Sprite_Move_Z_Bank05

#_05A4D4: LDA.w $0F80,X
#_05A4D7: CMP.b #$EC
#_05A4D9: BMI .descending

#_05A4DB: SEC
#_05A4DC: SBC.b #$01
#_05A4DE: STA.w $0F80,X

.descending
#_05A4E1: LDA.w $0F70,X
#_05A4E4: BPL .exit

#_05A4E6: INC.w $0D80,X

#_05A4E9: LDA.b #$80
#_05A4EB: STA.w $0DF0,X

#_05A4EE: JSR Lanmolas_CacheLocation

.exit
#_05A4F1: RTS

;===================================================================================================

Lanmolas_BurrowDown:
#_05A4F2: LDA.w $0DF0,X
#_05A4F5: BNE EXIT_05A514

#_05A4F7: STZ.w $0D80,X

#_05A4FA: JSL GetRandomNumber
#_05A4FE: AND.b #$07
#_05A500: TAY

#_05A501: LDA.w Lanmolas_Targets_position_x,Y
#_05A504: STA.w $0D10,X

#_05A507: JSL GetRandomNumber
#_05A50B: AND.b #$07
#_05A50D: TAY

#_05A50E: LDA.w Lanmolas_Targets_position_y,Y
#_05A511: STA.w $0D00,X

;---------------------------------------------------------------------------------------------------

#EXIT_05A514:
#_05A514: RTS

;===================================================================================================

Lanmolas_SegmentOffsets:
#_05A515: db $00, $08, $10, $18, $20, $28, $30, $38

;===================================================================================================

Ancilla_SpawnFallingPrize:
#_05A51D: PHX
#_05A51E: TAX

#_05A51F: LDY.b #$04
#_05A521: LDA.b #!ANCILLA_29
#_05A523: JSL AncillaAdd_FallingPrize

#_05A527: PLX

#_05A528: RTL

;===================================================================================================

Lanmolas_Exploding:
#_05A529: LDY.w $0DF0,X
#_05A52C: BNE .delay

#_05A52E: STZ.w $0DD0,X

#_05A531: JSL CheckIfRoomIsClear
#_05A535: BCC .delay

#_05A537: LDA.b #!SPRITE_EA
#_05A539: JSL Sprite_SpawnDynamically
#_05A53D: JSL Sprite_SetSpawnedCoordinates

#_05A541: LDA.b #$20
#_05A543: STA.w $0F80,Y

#_05A546: LDA.b #$03
#_05A548: STA.w $0D90,Y

.delay
#_05A54B: LDA.w $0DF0,X
#_05A54E: CMP.b #$20
#_05A550: BCC EXIT_05A514

#_05A552: CMP.b #$A0
#_05A554: BCS EXIT_05A514

#_05A556: AND.b #$0F
#_05A558: BNE EXIT_05A514

;---------------------------------------------------------------------------------------------------

#_05A55A: LDA.l $7FF81E,X
#_05A55E: TAY

#_05A55F: LDA.w $0E80,X
#_05A562: SEC
#_05A563: SBC.w Lanmolas_SegmentOffsets,Y
#_05A566: AND.b #$3F

#_05A568: CLC
#_05A569: ADC.w SubspriteIndices_Bank05,X

#_05A56C: PHX

#_05A56D: TAX

#_05A56E: LDA.l $7FFC00,X
#_05A572: SEC
#_05A573: SBC.b $E2
#_05A575: STA.b $0A

#_05A577: LDA.l $7FFD00,X
#_05A57B: SEC
#_05A57C: SBC.l $7FFE00,X
#_05A580: SEC
#_05A581: SBC.b $E8
#_05A583: STA.b $0B

;---------------------------------------------------------------------------------------------------

#_05A585: PLX

#_05A586: LDA.b #!SPRITE_00
#_05A588: JSL Sprite_SpawnDynamically
#_05A58C: BMI .exit

#_05A58E: LDA.b #$0B
#_05A590: STA.w $0AAA

#_05A593: LDA.b #$04
#_05A595: STA.w $0DD0,Y

#_05A598: LDA.b #$1F
#_05A59A: STA.w $0DF0,Y
#_05A59D: STA.w $0D90,Y

#_05A5A0: LDA.b $0A
#_05A5A2: CLC
#_05A5A3: ADC.b $E2
#_05A5A5: STA.w $0D10,Y

#_05A5A8: LDA.b $E3
#_05A5AA: ADC.b #$00
#_05A5AC: STA.w $0D30,Y

#_05A5AF: LDA.b $0B
#_05A5B1: CLC
#_05A5B2: ADC.b $E8
#_05A5B4: STA.w $0D00,Y

#_05A5B7: LDA.b $E9
#_05A5B9: ADC.b #$00
#_05A5BB: STA.w $0D20,Y

#_05A5BE: LDA.b #$03
#_05A5C0: STA.w $0E40,Y

#_05A5C3: LDA.b #$0C
#_05A5C5: STA.w $0F50,Y

#_05A5C8: LDA.b #!SFX2_0C
#_05A5CA: JSL SpriteSFX_QueueSFX2WithPan

#_05A5CE: LDA.l $7FF81E,X
#_05A5D2: BMI .exit

#_05A5D4: DEC A
#_05A5D5: STA.l $7FF81E,X

.exit
#_05A5D9: RTS

;===================================================================================================

SubspriteIndices_Bank05:
#_05A5DA: db $00, $40, $80, $C0

;===================================================================================================
; TODO fuck this routine
pool SpriteDraw_Lanmola

.oam_a_offset
#_05A5DE: db $00,  $1C

.oam_b_offset
#_05A5E0: db $01, $F9

.segment_char
#_05A5E2: db $C4, $E2, $C2, $E0, $C0, $E0, $C2, $E2
#_05A5EA: db $C4, $E2, $C2, $E0, $C0, $E0, $C2, $E2

.head_char
#_05A5F2: db $CC, $E4, $CA, $E6, $C8, $E6, $CA, $E4
#_05A5FA: db $CC, $E4, $CA, $E6, $C8, $E6, $CA, $E4

.prop
#_05A602: db $C0, $C0, $C0, $C0, $80, $80, $80, $80
#_05A60A: db $00, $00, $00, $00, $40, $40, $40, $40

;---------------------------------------------------------------------------------------------------

.tail_offset_x
#_05A612: db $F8, $08, $F6, $0A, $F0, $10, $E8, $20

.tail_offset_y
#_05A61A: db $00, $00, $FF, $FF, $FF, $FF, $03, $03

.tail_tile
#_05A622: db $E8, $E8, $E8, $E8, $EA, $EA, $EA, $EA

.tail_prop
#_05A62A: db $00, $40, $00, $40, $00, $40, $00, $40

.tail_size
#_05A632: db $02, $02, $02, $02, $02, $02, $00, $00

;---------------------------------------------------------------------------------------------------

; !HARDCODED oam slots
.oam_a_pointer
#_05A63A: dw $0930
#_05A63C: dw $08F0
#_05A63E: dw $08B0
#_05A640: dw $0870

.oam_b_pointer
#_05A642: dw $0A6C
#_05A644: dw $0A5C
#_05A646: dw $0A4C
#_05A648: dw $0A3C

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Lanmola:
#_05A64A: TXA
#_05A64B: ASL A
#_05A64C: TAY

#_05A64D: REP #$20

#_05A64F: LDA.w .oam_a_pointer,Y
#_05A652: STA.b $90

#_05A654: LDA.w .oam_b_pointer,Y
#_05A657: STA.b $92

#_05A659: SEP #$20

#_05A65B: LDA.w $0D40,X
#_05A65E: SEC
#_05A65F: SBC.w $0F80,X
#_05A662: STA.b $00

#_05A664: LDA.w $0D50,X
#_05A667: STA.b $01

#_05A669: JSL Sprite_ConvertVelocityToAngle
#_05A66D: STA.w $0DC0,X

#_05A670: LDA.w SubspriteIndices_Bank05,X
#_05A673: STA.b $04

#_05A675: PHX

#_05A676: LDA.w $0D10,X
#_05A679: PHA

#_05A67A: LDA.w $0D00,X
#_05A67D: PHA

#_05A67E: LDA.w $0F70,X
#_05A681: PHA

#_05A682: LDA.w $0DC0,X
#_05A685: PHA

#_05A686: LDA.w $0E80,X
#_05A689: STA.b $02
#_05A68B: STA.b $05

#_05A68D: CLC
#_05A68E: ADC.b $04
#_05A690: TAX

#_05A691: PLA
#_05A692: STA.l $7FFF00,X

#_05A696: PLA
#_05A697: STA.l $7FFE00,X

#_05A69B: PLA
#_05A69C: STA.l $7FFD00,X

#_05A6A0: PLA
#_05A6A1: STA.l $7FFC00,X

#_05A6A5: PLX

;---------------------------------------------------------------------------------------------------

#_05A6A6: LDA.w $0DD0,X
#_05A6A9: CMP.b #$09
#_05A6AB: BNE .active

#_05A6AD: LDA.b $11
#_05A6AF: ORA.w $0FC1
#_05A6B2: BNE .active

#_05A6B4: LDA.w $0E80,X
#_05A6B7: INC A
#_05A6B8: AND.b #$3F
#_05A6BA: STA.w $0E80,X

.active
#_05A6BD: LDA.w $0F50,X
#_05A6C0: ORA.w $0B89,X
#_05A6C3: STA.b $03

#_05A6C5: LDA.l $7FF81E,X
#_05A6C9: BPL .segments_visible

#_05A6CB: RTS

;---------------------------------------------------------------------------------------------------

.segments_visible
#_05A6CC: PHX
#_05A6CD: PHA

#_05A6CE: STA.b $0E

#_05A6D0: LDA.w $0D40,X
#_05A6D3: ASL A
#_05A6D4: ROL A
#_05A6D5: AND.b #$01
#_05A6D7: TAX

#_05A6D8: LDA.w .oam_b_offset,X
#_05A6DB: STA.b $0C

#_05A6DD: LDY.w .oam_a_offset,X

#_05A6E0: PLX
#_05A6E1: STX.b $0B

.next_segment_object
#_05A6E3: PHX

#_05A6E4: STX.b $0D

#_05A6E6: LDA.b $02
#_05A6E8: CLC
#_05A6E9: ADC.b $04
#_05A6EB: TAX

#_05A6EC: LDA.b $02
#_05A6EE: SEC
#_05A6EF: SBC.b #$08
#_05A6F1: AND.b #$3F
#_05A6F3: STA.b $02

#_05A6F5: LDA.l $7FFC00,X
#_05A6F9: SEC
#_05A6FA: SBC.b $E2
#_05A6FC: STA.b ($90),Y

#_05A6FE: INY

#_05A6FF: LDA.l $7FFE00,X
#_05A703: BMI .on_screen_x

#_05A705: LDA.l $7FFD00,X
#_05A709: SEC
#_05A70A: SBC.l $7FFE00,X
#_05A70E: SEC
#_05A70F: SBC.b $E8
#_05A711: STA.b ($90),Y

.on_screen_x
#_05A713: PHY

#_05A714: LDA.l $7FFF00,X
#_05A718: TAX

#_05A719: LDY.b $0D

#_05A71B: LDA.b $0B
#_05A71D: CMP.b #$07
#_05A71F: BNE .segment_visible

#_05A721: CPY.b #$00
#_05A723: BEQ .head

.segment_visible
#_05A725: LDA.b #$C6

#_05A727: CPY.b $0B
#_05A729: BNE .segment_good

#_05A72B: LDA.w .segment_char,X
#_05A72E: BRA .segment_good

.head
#_05A730: LDA.w .head_char,X

.segment_good
#_05A733: PLY
#_05A734: INY

#_05A735: STA.b ($90),Y

#_05A737: LDA.w .prop,X
#_05A73A: ORA.b $03
#_05A73C: INY
#_05A73D: STA.b ($90),Y

#_05A73F: TYA

#_05A740: PHY

#_05A741: LSR A
#_05A742: LSR A
#_05A743: TAY

#_05A744: LDA.b #$02
#_05A746: STA.b ($92),Y

#_05A748: PLA
#_05A749: CLC
#_05A74A: ADC.b $0C
#_05A74C: TAY

#_05A74D: PLX
#_05A74E: DEX
#_05A74F: BPL .next_segment_object

;---------------------------------------------------------------------------------------------------

#_05A751: LDX.b $0E
#_05A753: LDY.b #$20

.next_segment_object_b
#_05A755: PHX

#_05A756: LDA.b $05
#_05A758: CLC
#_05A759: ADC.b $04
#_05A75B: TAX

#_05A75C: LDA.b $05
#_05A75E: SEC
#_05A75F: SBC.b #$08
#_05A761: AND.b #$3F
#_05A763: STA.b $05

#_05A765: LDA.l $7FFC00,X
#_05A769: SEC
#_05A76A: SBC.b $E2
#_05A76C: STA.b ($90),Y

#_05A76E: INY

#_05A76F: LDA.l $7FFE00,X
#_05A773: BMI .no_extra_offset

#_05A775: LDA.l $7FFD00,X
#_05A779: CLC
#_05A77A: ADC.b #$0A
#_05A77C: SEC
#_05A77D: SBC.b $E8
#_05A77F: STA.b ($90),Y

.no_extra_offset
#_05A781: LDA.b #$6C
#_05A783: INY
#_05A784: STA.b ($90),Y

#_05A786: LDA.b #$34
#_05A788: INY
#_05A789: STA.b ($90),Y

#_05A78B: TYA

#_05A78C: PHY
#_05A78D: LSR A
#_05A78E: LSR A
#_05A78F: TAY

#_05A790: LDA.b #$02
#_05A792: STA.b ($92),Y

#_05A794: PLY
#_05A795: INY

#_05A796: PLX
#_05A797: DEX
#_05A798: BPL .next_segment_object_b

;---------------------------------------------------------------------------------------------------

#_05A79A: PLX
#_05A79B: LDA.w $0D80,X
#_05A79E: CMP.b #$01
#_05A7A0: BNE .not_done

#_05A7A2: JMP.w .draw_dirt

;---------------------------------------------------------------------------------------------------

.not_done
#_05A7A5: CMP.b #$05
#_05A7A7: BEQ .exit

#_05A7A9: LDA.w $0E00,X
#_05A7AC: BEQ .exit

#_05A7AE: PHA

#_05A7AF: LDA.w $0D40,X
#_05A7B2: ASL A
#_05A7B3: ROL A
#_05A7B4: ASL A
#_05A7B5: EOR.w $0D80,X
#_05A7B8: AND.b #$02
#_05A7BA: BEQ .use_region_c

#_05A7BC: LDA.b #$08
#_05A7BE: JSL OAM_AllocateFromRegionB

#_05A7C2: BRA .region_was_set

.use_region_c
#_05A7C4: LDA.b #$08
#_05A7C6: JSL OAM_AllocateFromRegionC

;---------------------------------------------------------------------------------------------------

.region_was_set
#_05A7CA: LDY.b #$00

#_05A7CC: PLA
#_05A7CD: LSR A
#_05A7CE: LSR A
#_05A7CF: AND.b #$03
#_05A7D1: EOR.b #$03
#_05A7D3: ASL A
#_05A7D4: STA.b $06

#_05A7D6: LDA.w $0DE0,X
#_05A7D9: SEC
#_05A7DA: SBC.b $E2
#_05A7DC: STA.b $00

#_05A7DE: LDA.w $0E70,X
#_05A7E1: SEC
#_05A7E2: SBC.b $E8
#_05A7E4: STA.b $02

#_05A7E6: PHX

#_05A7E7: LDX.b #$01

;---------------------------------------------------------------------------------------------------

.next_segment_object_c
#_05A7E9: PHX

#_05A7EA: TXA
#_05A7EB: CLC
#_05A7EC: ADC.b $06
#_05A7EE: TAX

#_05A7EF: LDA.b $00
#_05A7F1: CLC
#_05A7F2: ADC.w .tail_offset_x,X
#_05A7F5: STA.b ($90),Y

#_05A7F7: LDA.b $02
#_05A7F9: CLC
#_05A7FA: ADC.w .tail_offset_y,X
#_05A7FD: INY
#_05A7FE: STA.b ($90),Y

#_05A800: LDA.w .tail_tile,X
#_05A803: INY
#_05A804: STA.b ($90),Y

#_05A806: LDA.w .tail_prop,X
#_05A809: ORA.b #$31
#_05A80B: INY
#_05A80C: STA.b ($90),Y

#_05A80E: PHY
#_05A80F: TYA

#_05A810: LSR A
#_05A811: LSR A
#_05A812: TAY

#_05A813: LDA.w .tail_size,X
#_05A816: STA.b ($92),Y

#_05A818: PLY
#_05A819: INY

#_05A81A: PLX
#_05A81B: DEX
#_05A81C: BPL .next_segment_object_c

;---------------------------------------------------------------------------------------------------

#_05A81E: PLX

.exit
#_05A81F: RTS

;---------------------------------------------------------------------------------------------------

.draw_dirt
#_05A820: LDA.b #$04

#_05A822: JSL OAM_AllocateFromRegionB

#_05A826: LDA.w $0D10,X
#_05A829: SEC
#_05A82A: SBC.b $E2
#_05A82C: STA.b $00

#_05A82E: LDA.w $0D00,X
#_05A831: SEC
#_05A832: SBC.b $E8
#_05A834: STA.b $02

#_05A836: LDA.w $0DF0,X
#_05A839: LSR A
#_05A83A: LSR A
#_05A83B: LSR A
#_05A83C: TAY

;---------------------------------------------------------------------------------------------------

#_05A83D: PHX

#_05A83E: LDX.w .lanmo_some_index,Y

#_05A841: LDY.b #$00

#_05A843: LDA.b $00
#_05A845: STA.b ($90),Y

#_05A847: LDA.b $02
#_05A849: INY
#_05A84A: STA.b ($90),Y

#_05A84C: LDA.w .adjust_tile_char,X
#_05A84F: INY
#_05A850: STA.b ($90),Y

#_05A852: LDA.w .adjust_flip,X
#_05A855: ORA.b #$31
#_05A857: INY
#_05A858: STA.b ($90),Y

#_05A85A: TYA
#_05A85B: LSR A
#_05A85C: LSR A
#_05A85D: TAY

#_05A85E: LDA.b #$02
#_05A860: STA.b ($92),Y

#_05A862: PLX

#_05A863: RTS

;---------------------------------------------------------------------------------------------------

.adjust_tile_char
#_05A864: db $EE, $EE, $EC, $EC, $CE, $CE

.adjust_flip
#_05A86A: db $00, $40, $00, $40, $00, $40

.lanmo_some_index
#_05A870: db $04, $05, $04, $05, $04, $05, $04, $05
#_05A878: db $04, $03, $02, $02, $01, $01, $00, $00

;===================================================================================================

pool Sprite_6D_Rat

.anim_step
#_05A880: db $00, $00, $03, $03, $01, $02, $04, $05
#_05A888: db $01, $02, $04, $05, $00, $00, $03, $03

.flip
#_05A890: db $00, $40, $00, $40, $00, $00, $00, $00
#_05A898: db $40, $40, $40, $40, $80, $C0, $80, $C0

.stationary_state
#_05A8A0: db $0A, $0B, $06, $07, $02, $03, $0E, $0F

pool off

;===================================================================================================

RatMovingState:
#_05A8A8: db $08, $09, $04, $05, $00, $01, $0C, $0D

;===================================================================================================

Sprite_6D_Rat:
#_05A8B0: LDY.w $0D90,X

#_05A8B3: LDA.w .anim_step,Y
#_05A8B6: STA.w $0DC0,X

#_05A8B9: LDA.w $0F50,X
#_05A8BC: AND.b #$3F
#_05A8BE: ORA.w .flip,Y
#_05A8C1: STA.w $0F50,X

#_05A8C4: JSL SpriteDraw_SingleLarge_long

#_05A8C8: JSR Sprite_CheckIfActive_Bank05
#_05A8CB: JSR Sprite_CheckIfRecoiling_Bank05
#_05A8CE: JSR Sprite_CheckDamageToAndFromLink_Bank05

#_05A8D1: JSR Sprite_Move_XY_Bank05
#_05A8D4: JSR Sprite_CheckTileCollision_Bank05

#_05A8D7: LDA.w $0D80,X
#_05A8DA: BNE Rat_Moving

#_05A8DC: JSR Sprite_ZeroVelocity_XY_Bank05
#_05A8DF: LDA.w $0DF0,X
#_05A8E2: BNE .delay

#_05A8E4: JSL GetRandomNumber
#_05A8E8: PHA

#_05A8E9: AND.b #$03
#_05A8EB: STA.w $0DE0,X

#_05A8EE: INC.w $0D80,X

#_05A8F1: PLA
#_05A8F2: AND.b #$7F
#_05A8F4: ADC.b #$40
#_05A8F6: STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

.delay
#_05A8F9: LDA.b $1A
#_05A8FB: LSR A
#_05A8FC: LSR A
#_05A8FD: LSR A
#_05A8FE: LSR A

#_05A8FF: LDA.w $0DE0,X
#_05A902: ROL A
#_05A903: TAY

#_05A904: LDA.w .stationary_state,Y
#_05A907: STA.w $0D90,X

#_05A90A: RTS

;===================================================================================================

pool Rat_Moving

.speed_x
#_05A90B: db  24, -24,   0,   0

.speed_y
#_05A90F: db   0,   0,  24, -24

.direction
#_05A913: db $02, $03, $01, $00

pool off

;===================================================================================================

Rat_Moving:
#_05A917: LDA.w $0DF0,X
#_05A91A: BNE .no_sfx

#_05A91C: LDA.w $0FFF
#_05A91F: BNE .crickets_dont_squeak

#_05A921: LDA.b #!SFX3_17
#_05A923: JSL SpriteSFX_QueueSFX3WithPan

.crickets_dont_squeak
#_05A927: STZ.w $0D80,X

#_05A92A: LDA.b #$50
#_05A92C: STA.w $0DF0,X

.no_sfx
#_05A92F: LDY.w $0DE0,X

#_05A932: LDA.w $0E70,X
#_05A935: BEQ .no_tile_collision

#_05A937: LDA.w .direction,Y
#_05A93A: STA.w $0DE0,X
#_05A93D: TAY

.no_tile_collision
#_05A93E: LDA.w .speed_x,Y
#_05A941: STA.w $0D50,X

#_05A944: LDA.w .speed_y,Y
#_05A947: STA.w $0D40,X

#_05A94A: LDA.b $1A
#_05A94C: LSR A
#_05A94D: LSR A
#_05A94E: LSR A

#_05A94F: LDA.w $0DE0,X
#_05A952: ROL A
#_05A953: TAY

#_05A954: LDA.w RatMovingState,Y
#_05A957: STA.w $0D90,X

#_05A95A: RTS

;===================================================================================================

pool Sprite_6E_Rope

.anim_step
#_05A95B: db $00, $00, $02, $03, $02, $03, $01, $01

.flip
#_05A963: db $00, $40, $00, $00, $40, $40, $00, $40

pool off

;===================================================================================================

RopeAnimControl:
#_05A96B: db $04, $05, $02, $03, $00, $01, $06, $07

;===================================================================================================

Sprite_6E_Rope:
#_05A973: LDY.w $0D90,X

#_05A976: LDA.w .anim_step,Y
#_05A979: STA.w $0DC0,X

#_05A97C: LDA.w $0F50,X
#_05A97F: AND.b #$3F
#_05A981: ORA.w .flip,Y
#_05A984: STA.w $0F50,X

#_05A987: JSL SpriteDraw_SingleLarge_long
#_05A98B: JSR Sprite_CheckIfActive_Bank05

#_05A98E: LDA.w $0E90,X
#_05A991: BEQ Rope_Slither

;===================================================================================================

RopeFalling:
#_05A993: LDY.b #$03

#_05A995: LDA.b ($90),Y
#_05A997: ORA.b #$30
#_05A999: STA.b ($90),Y

#_05A99B: LDA.w $0F70,X
#_05A99E: PHA

#_05A99F: JSR Sprite_Move_Z_Bank05

#_05A9A2: LDA.w $0F80,X
#_05A9A5: CMP.b #$C0
#_05A9A7: BMI .at_max_z_speed

#_05A9A9: SEC
#_05A9AA: SBC.b #$02
#_05A9AC: STA.w $0F80,X

.at_max_z_speed
#_05A9AF: PLA
#_05A9B0: EOR.w $0F70,X
#_05A9B3: BPL .exit

#_05A9B5: LDA.w $0F70,X
#_05A9B8: BPL .exit

#_05A9BA: STZ.w $0F70,X
#_05A9BD: STZ.w $0F80,X
#_05A9C0: STZ.w $0E90,X

#_05A9C3: LDA.w $0E60,X
#_05A9C6: AND.b #$EF
#_05A9C8: STA.w $0E60,X

.exit
#_05A9CB: RTS

;===================================================================================================

Rope_Slither:
#_05A9CC: STZ.w $0E40,X

#_05A9CF: JSR Sprite_CheckIfRecoiling_Bank05
#_05A9D2: JSR Sprite_CheckDamageToAndFromLink_Bank05

#_05A9D5: JSR Sprite_Move_XY_Bank05
#_05A9D8: JSR Sprite_CheckTileCollision_Bank05

#_05A9DB: LDA.w $0D80,X
#_05A9DE: BNE Rope_Moving

;===================================================================================================

Rope_ChooseNextMove:
#_05A9E0: JSR Sprite_ZeroVelocity_XY_Bank05

#_05A9E3: LDA.w $0DF0,X
#_05A9E6: BNE .dont_turn

#_05A9E8: STZ.w $0ED0,X

#_05A9EB: JSL GetRandomNumber
#_05A9EF: PHA

#_05A9F0: AND.b #$03
#_05A9F2: STA.w $0DE0,X

#_05A9F5: INC.w $0D80,X

#_05A9F8: PLA
#_05A9F9: AND.b #$7F
#_05A9FB: ADC.b #$40
#_05A9FD: STA.w $0DF0,X

#_05AA00: JSR Sprite_DirectionToFaceLink_Bank05

#_05AA03: LDA.b $0E
#_05AA05: CLC
#_05AA06: ADC.b #$10
#_05AA08: CMP.b #$20
#_05AA0A: BCC .link_in_sights

#_05AA0C: LDA.b $0F
#_05AA0E: CLC
#_05AA0F: ADC.b #$18
#_05AA11: CMP.b #$20
#_05AA13: BCS .dont_turn

.link_in_sights
#_05AA15: LDA.b #$04
#_05AA17: STA.w $0ED0,X

#_05AA1A: TYA
#_05AA1B: STA.w $0DE0,X

.dont_turn
#_05AA1E: LDA.b $1A
#_05AA20: LSR A ; /16
#_05AA21: LSR A
#_05AA22: LSR A
#_05AA23: LSR A

#_05AA24: LDA.w $0DE0,X
#_05AA27: ROL A
#_05AA28: TAY

#_05AA29: LDA.w RopeAnimControl,Y
#_05AA2C: STA.w $0D90,X

#_05AA2F: RTS

;===================================================================================================

pool Rope_Moving

.speed_x
#_05AA30: db   8,  -8,   0,   0
#_05AA34: db  16, -16,   0,   0

.speed_y
#_05AA38: db   0,   0,   8,  -8
#_05AA3C: db   0,   0,  16, -16

.direction
#_05AA40: db $02, $03, $01, $00

pool off

;---------------------------------------------------------------------------------------------------

Rope_Moving:
#_05AA44: LDA.w $0DF0,X
#_05AA47: BNE .delay

#_05AA49: STZ.w $0D80,X

#_05AA4C: LDA.b #$20
#_05AA4E: STA.w $0DF0,X

.delay
#_05AA51: LDY.w $0DE0,X

#_05AA54: LDA.w $0E70,X
#_05AA57: BEQ .no_tile_collision

#_05AA59: LDA.w .direction,Y
#_05AA5C: STA.w $0DE0,X

#_05AA5F: TAY

.no_tile_collision
#_05AA60: TYA
#_05AA61: CLC
#_05AA62: ADC.w $0ED0,X
#_05AA65: TAY

#_05AA66: LDA.w .speed_x,Y
#_05AA69: STA.w $0D50,X

#_05AA6C: LDA.w .speed_y,Y
#_05AA6F: STA.w $0D40,X

#_05AA72: LDA.b $1A
#_05AA74: CPY.b #$04
#_05AA76: BCS .move_fast

#_05AA78: LSR A

.move_fast
#_05AA79: LSR A
#_05AA7A: LSR A

#_05AA7B: LDA.w $0DE0,X
#_05AA7E: ROL A
#_05AA7F: TAY

#_05AA80: LDA.w RopeAnimControl,Y
#_05AA83: STA.w $0D90,X

#_05AA86: RTS

;===================================================================================================

pool Sprite_6F_Keese

.speed_index
#_05AA87: db $02, $0A, $06, $0E

pool off

;---------------------------------------------------------------------------------------------------

Sprite_6F_Keese:
#_05AA8B: LDA.w $0B89,X
#_05AA8E: ORA.b #$30
#_05AA90: STA.w $0B89,X

#_05AA93: JSL SpriteDraw_SingleLarge_long

#_05AA97: JSR Sprite_CheckIfActive_Bank05
#_05AA9A: JSR Sprite_CheckIfRecoiling_Bank05
#_05AA9D: JSR Sprite_CheckDamageToAndFromLink_Bank05
#_05AAA0: JSR Sprite_Move_XY_Bank05

#_05AAA3: LDA.w $0D80,X
#_05AAA6: BNE Keese_Agitated

#_05AAA8: TXA
#_05AAA9: EOR.b $1A
#_05AAAB: AND.b #$03
#_05AAAD: ORA.w $0DF0,X
#_05AAB0: BNE .exit

#_05AAB2: JSR Sprite_DirectionToFaceLink_Bank05

#_05AAB5: LDA.b $0E
#_05AAB7: CLC
#_05AAB8: ADC.b #$28
#_05AABA: CMP.b #$50
#_05AABC: BCS .exit

#_05AABE: LDA.b $0F
#_05AAC0: CLC
#_05AAC1: ADC.b #$28
#_05AAC3: CMP.b #$50
#_05AAC5: BCS .exit

#_05AAC7: LDA.b #!SFX3_1E
#_05AAC9: JSL SpriteSFX_QueueSFX3WithPan

#_05AACD: INC.w $0D80,X

#_05AAD0: LDA.b #$40
#_05AAD2: STA.w $0DF0,X
#_05AAD5: STA.w $0DA0,X

#_05AAD8: JSR Sprite_DirectionToFaceLink_Bank05

#_05AADB: LDA.w .speed_index,Y
#_05AADE: STA.w $0D90,X

.exit
#_05AAE1: RTS

;===================================================================================================

Keese_MovementIndexStep:
#_05AAE2: db   1,  -1

;===================================================================================================

SomeRandomXSpeeds_Bank05:
#_05AAE4: db   0,   8,  11,  14
#_05AAE8: db  16,  14,  11,   8
#_05AAEC: db   0,  -8, -11, -14
#_05AAF0: db -16, -14, -11,  -8

SomeRandomYSpeeds_Bank05:
#_05AAF4: db -16, -14, -11,  -8
#_05AAF8: db   0,   8,  11,  14
#_05AAFC: db  16,  14,  11,   8
#_05AB00: db   0,  -9, -11, -14

;===================================================================================================

Keese_Agitated:
#_05AB04: LDA.w $0DF0,X
#_05AB07: BNE .not_calm

#_05AB09: STZ.w $0D80,X

#_05AB0C: LDA.b #$40
#_05AB0E: STA.w $0DF0,X

#_05AB11: STZ.w $0DC0,X

#_05AB14: JSR Sprite_ZeroVelocity_XY_Bank05

#_05AB17: RTS

;---------------------------------------------------------------------------------------------------

.not_calm
#_05AB18: AND.b #$07
#_05AB1A: BNE .keep_momentum

#_05AB1C: LDA.w $0DA0,X
#_05AB1F: AND.b #$01
#_05AB21: TAY

#_05AB22: LDA.w $0D90,X
#_05AB25: CLC
#_05AB26: ADC.w Keese_MovementIndexStep,Y
#_05AB29: STA.w $0D90,X

#_05AB2C: JSL GetRandomNumber
#_05AB30: AND.b #$03
#_05AB32: BNE .keep_momentum

#_05AB34: INC.w $0DA0,X

;---------------------------------------------------------------------------------------------------

.keep_momentum
#_05AB37: LDA.w $0D90,X
#_05AB3A: AND.b #$0F
#_05AB3C: TAY

#_05AB3D: LDA.w SomeRandomXSpeeds_Bank05,Y
#_05AB40: STA.w $0D50,X

#_05AB43: LDA.w SomeRandomYSpeeds_Bank05,Y
#_05AB46: STA.w $0D40,X

#_05AB49: LDA.b $1A
#_05AB4B: LSR A
#_05AB4C: LSR A
#_05AB4D: AND.b #$01
#_05AB4F: INC A
#_05AB50: STA.w $0DC0,X

#_05AB53: RTS

;===================================================================================================

Cannonball:
#_05AB54: JSL SpriteDraw_SingleLarge_long
#_05AB58: JSR Sprite_CheckIfActive_Bank05
#_05AB5B: JSR Sprite_Move_XY_Bank05

#_05AB5E: LDA.w $0DF0,X
#_05AB61: CMP.b #$1E
#_05AB63: BNE .no_poof

#_05AB65: PHA
#_05AB66: JSL Sprite_SpawnPoofGarnish
#_05AB6A: PLA

.no_poof
#_05AB6B: CMP.b #$00
#_05AB6D: BNE Sprite_CheckDamageToAndFromLink_Bank05

#_05AB6F: JSR Sprite_CheckTileCollision_Bank05
#_05AB72: BEQ Sprite_CheckDamageToAndFromLink_Bank05

#_05AB74: STZ.w $0DD0,X

#_05AB77: LDA.w $0D10,X
#_05AB7A: CLC
#_05AB7B: ADC.b #$04
#_05AB7D: STA.w $0D10,X

#_05AB80: LDA.w $0D00,X
#_05AB83: CLC
#_05AB84: ADC.b #$04
#_05AB86: STA.w $0D00,X

#_05AB89: JSL Sprite_PlaceRepulseSpark_forced

#_05AB8D: LDA.b #!SFX2_05
#_05AB8F: JSL SpriteSFX_QueueSFX2WithPan

;===================================================================================================

Sprite_CheckDamageToAndFromLink_Bank05:
#_05AB93: JSL Sprite_CheckDamageFromLink_long
#_05AB97: JSL Sprite_CheckDamageToLink_long

#_05AB9B: RTS

;===================================================================================================

Sprite_SpawnPoofGarnish:
#_05AB9C: PHX
#_05AB9D: TXY

#_05AB9E: LDX.b #$1D

.next_slot
#_05ABA0: LDA.l $7FF800,X
#_05ABA4: BEQ .free_slot

#_05ABA6: DEX
#_05ABA7: BPL .next_slot

#_05ABA9: INX

.free_slot
#_05ABAA: LDA.b #!GARNISH_0A
#_05ABAC: STA.l $7FF800,X
#_05ABB0: STA.w $0FB4

#_05ABB3: LDA.w $0D10,Y
#_05ABB6: STA.l $7FF83C,X

#_05ABBA: LDA.w $0D30,Y
#_05ABBD: STA.l $7FF878,X

#_05ABC1: LDA.w $0D00,Y
#_05ABC4: CLC
#_05ABC5: ADC.b #$10
#_05ABC7: STA.l $7FF81E,X

#_05ABCB: LDA.w $0D20,Y
#_05ABCE: ADC.b #$00
#_05ABD0: STA.l $7FF85A,X

#_05ABD4: LDA.w $0F20,Y
#_05ABD7: STA.l $7FF92C,X

#_05ABDB: LDA.b #$0F
#_05ABDD: STA.l $7FF90E,X

#_05ABE1: TXY
#_05ABE2: PLX

#_05ABE3: RTL

;===================================================================================================

Sprite_6B_Cannonball:
#_05ABE4: LDA.w $0DB0,X
#_05ABE7: BEQ CannonGuard

#_05ABE9: JMP.w Cannonball

;===================================================================================================

CannonGuard:
#_05ABEC: LDY.w $0DE0,X
#_05ABEF: PHY

#_05ABF0: LDA.w $0E00,X
#_05ABF3: BEQ .dont_turn

#_05ABF5: LDA.w SpriteDirections_Bank05,Y
#_05ABF8: STA.w $0DE0,X

.dont_turn
#_05ABFB: JSR SpriteDraw_CannonGuard

#_05ABFE: PLA
#_05ABFF: STA.w $0DE0,X

#_05AC02: JSR Sprite_CheckIfActive_Bank05
#_05AC05: JSR Sprite_CheckDamageToAndFromLink_Bank05

#_05AC08: LDA.w $0D80,X

#_05AC0B: REP #$30

#_05AC0D: AND.w #$00FF
#_05AC10: ASL A
#_05AC11: TAY

#_05AC12: LDA.w .vectors,Y
#_05AC15: DEC A
#_05AC16: PHA

#_05AC17: SEP #$30

#_05AC19: RTS

;---------------------------------------------------------------------------------------------------

.vectors
#_05AC1A: dw CannonGuard_Idle
#_05AC1C: dw CannonGuard_Charge
#_05AC1E: dw CannonGuard_Fire
#_05AC20: dw CannonGuard_Recoil
#_05AC22: dw CannonGuard_Recover

;===================================================================================================

CannonGuard_Idle:
#_05AC24: STZ.w $0D90,X

#_05AC27: LDA.w $0DF0,X
#_05AC2A: BNE .exit

#_05AC2C: INC.w $0D80,X

#_05AC2F: LDA.b #$60
#_05AC31: STA.w $0DF0,X

;===================================================================================================

#CannonGuard_FaceLink:
#_05AC34: LDA.w $0DE0,X
#_05AC37: PHA

#_05AC38: JSR Sprite_DirectionToFaceLink_Bank05

#_05AC3B: TYA
#_05AC3C: STA.w $0DE0,X

#_05AC3F: PLA
#_05AC40: CMP.w $0DE0,X
#_05AC43: BEQ .exit

#_05AC45: EOR.w $0DE0,X
#_05AC48: AND.b #$02
#_05AC4A: BNE .exit

#_05AC4C: LDA.b #$0C
#_05AC4E: STA.w $0E00,X

.exit
#_05AC51: RTS

;===================================================================================================

CannonGuard_Charge:
#_05AC52: LDA.b #$00

#_05AC54: LDY.w $0DF0,X
#_05AC57: BEQ .fire_shot

#_05AC59: CPY.b #$30
#_05AC5B: BCS .lift_arm

#_05AC5D: LDA.b #$02

.lift_arm
#_05AC5F: STA.w $0D90,X

#_05AC62: RTS

;---------------------------------------------------------------------------------------------------

.offset_x_low
#_05AC63: db  16, -16,   0,   0

.offset_x_high
#_05AC67: db   0,  -1,   0,   0

.offset_y_low
#_05AC6B: db   0,   0,   8, -16

.offset_y_high
#_05AC6F: db   0,   0,   0,  -1

.speed_x
#_05AC73: db  24, -24,   0,   0

.speed_y
#_05AC77: db   0,   0,  24, -24

;---------------------------------------------------------------------------------------------------

.fire_shot
#_05AC7B: INC.w $0D80,X

#_05AC7E: LDA.b #$04
#_05AC80: STA.w $0DF0,X

#_05AC83: LDA.b #!SPRITE_6B
#_05AC85: JSL Sprite_SpawnDynamically
#_05AC89: BMI .exit

#_05AC8B: LDA.b #!SFX3_07
#_05AC8D: JSL SpriteSFX_QueueSFX3WithPan

#_05AC91: LDA.b #$01
#_05AC93: STA.w $0DB0,Y

#_05AC96: LDA.w $0DE0,X

#_05AC99: PHX

#_05AC9A: TAX

#_05AC9B: LDA.b $00
#_05AC9D: CLC
#_05AC9E: ADC.w .offset_x_low,X
#_05ACA1: STA.w $0D10,Y

#_05ACA4: LDA.b $01
#_05ACA6: ADC.w .offset_x_high,X
#_05ACA9: STA.w $0D30,Y

#_05ACAC: LDA.b $02
#_05ACAE: CLC
#_05ACAF: ADC.w .offset_y_low,X
#_05ACB2: STA.w $0D00,Y

#_05ACB5: LDA.b $03
#_05ACB7: ADC.w .offset_y_high,X
#_05ACBA: STA.w $0D20,Y

#_05ACBD: LDA.w .speed_x,X
#_05ACC0: STA.w $0D50,Y

#_05ACC3: LDA.w .speed_y,X
#_05ACC6: STA.w $0D40,Y

#_05ACC9: LDA.w $0E40,Y
#_05ACCC: AND.b #$F0
#_05ACCE: ORA.b #$01
#_05ACD0: STA.w $0E40,Y

#_05ACD3: LDA.w $0E60,Y
#_05ACD6: ORA.b #$47
#_05ACD8: STA.w $0E60,Y

#_05ACDB: LDA.w $0CAA,Y
#_05ACDE: ORA.b #$44
#_05ACE0: STA.w $0CAA,Y

#_05ACE3: LDA.b #$20
#_05ACE5: STA.w $0DF0,Y

#_05ACE8: PLX

.exit
#_05ACE9: RTS

;===================================================================================================

pool CannonGuard_Fire

.recoil_speed_x
#_05ACEA: db -32,  32,   0,   0

.recoil_speed_y
#_05ACEE: db   0,   0, -32,  32

pool off

;---------------------------------------------------------------------------------------------------

CannonGuard_Fire:
#_05ACF2: LDA.w $0DF0,X
#_05ACF5: BNE .delay

#_05ACF7: INC.w $0D80,X

#_05ACFA: LDA.b #$20
#_05ACFC: STA.w $0DF0,X

.delay
#_05ACFF: LDY.w $0DE0,X

#_05AD02: LDA.w .recoil_speed_x,Y
#_05AD05: STA.w $0D50,X

#_05AD08: LDA.w .recoil_speed_y,Y
#_05AD0B: STA.w $0D40,X

#_05AD0E: JSR Sprite_Move_XY_Bank05

#_05AD11: RTS

;===================================================================================================

CannonGuard_Recoil:
#_05AD12: LDA.w $0DF0,X
#_05AD15: BNE .exit

#_05AD17: INC.w $0D80,X

#_05AD1A: LDA.b #$10
#_05AD1C: STA.w $0DF0,X

.exit
#_05AD1F: RTS

;===================================================================================================

pool CannonGuard_Recover

.recover_speed_x
#_05AD20: db   8,  -8,   0,   0

.recover_speed_y
#_05AD24: db   0,   0,   8,  -8

pool off

;---------------------------------------------------------------------------------------------------

CannonGuard_Recover:
#_05AD28: LDA.w $0DF0,X
#_05AD2B: BNE .delay

#_05AD2D: STZ.w $0D80,X

#_05AD30: LDA.b #$80
#_05AD32: STA.w $0DF0,X

.delay
#_05AD35: LDY.w $0DE0,X

#_05AD38: LDA.w .recover_speed_x,Y
#_05AD3B: STA.w $0D50,X

#_05AD3E: LDA.w .recover_speed_y,Y
#_05AD41: STA.w $0D40,X

#_05AD44: JSR Sprite_Move_XY_Bank05

#_05AD47: LDA.b $1A
#_05AD49: LSR A
#_05AD4A: LSR A
#_05AD4B: AND.b #$01
#_05AD4D: STA.w $0D90,X

#_05AD50: RTS

;===================================================================================================

pool SpriteDraw_CannonGuard

.offset_x
#_05AD51: dw  -4,   4,   0,   0
#_05AD59: dw   0,  -4,   4,   0
#_05AD61: dw   0,   0,  -4,   4
#_05AD69: dw   0,   0,  12,   4
#_05AD71: dw   4,  -8,  -8,  -8
#_05AD79: dw   4,   4,  -8,  -8
#_05AD81: dw  -8,   4,   4,  -8
#_05AD89: dw   9,   9,   0,  -4
#_05AD91: dw   4,   0,   0,   0
#_05AD99: dw  -4,   4,   0,   0
#_05ADA1: dw   0,  -4,   4,   0
#_05ADA9: dw  -5,  -4,  -4,   8
#_05ADB1: dw   8,   8,  -4,  -4
#_05ADB9: dw   8,   8,   8,  -4
#_05ADC1: dw  -4,   8,  -1,  -1

.offset_y
#_05ADC9: dw   0,   0,  -9,   7
#_05ADD1: dw   7,   0,   0,  -9
#_05ADD9: dw   7,   7,   0,   0
#_05ADE1: dw  -9,   7,  -3,   0
#_05ADE9: dw  -9,   0,   0,   0
#_05ADF1: dw   0,  -9,   0,   0
#_05ADF9: dw   0,   0,  -9,   0
#_05AE01: dw   0,   0, -12,   0
#_05AE09: dw   0,  -9,  -9, -12
#_05AE11: dw   0,   0,  -9,  -9
#_05AE19: dw -12,   0,   0,  -9
#_05AE21: dw  -3,   0,  -9,   0
#_05AE29: dw   0,   0,   0,  -9
#_05AE31: dw   0,   0,   0,   0
#_05AE39: dw  -9,   0,   0,   0

.char
#_05AE41: db $46, $46, $00, $24
#_05AE45: db $24, $48, $49, $00
#_05AE49: db $24, $24, $46, $06
#_05AE4D: db $00, $24, $2F, $4E
#_05AE51: db $02, $26, $26, $26
#_05AE55: db $60, $02, $26, $26
#_05AE59: db $26, $08, $02, $26
#_05AE5D: db $2F, $2F, $28, $64
#_05AE61: db $64, $04, $04, $28
#_05AE65: db $66, $67, $04, $04
#_05AE69: db $28, $0A, $64, $04
#_05AE6D: db $2F, $4E, $02, $26
#_05AE71: db $26, $26, $60, $02
#_05AE75: db $26, $26, $26, $08
#_05AE79: db $02, $26, $2F, $2F

.flip
#_05AE7D: db $00, $40, $00, $00
#_05AE81: db $00, $00, $00, $00
#_05AE85: db $00, $00, $00, $00
#_05AE89: db $00, $00, $00, $00
#_05AE8D: db $00, $00, $00, $00
#_05AE91: db $00, $00, $00, $00
#_05AE95: db $00, $00, $00, $00
#_05AE99: db $00, $00, $00, $00
#_05AE9D: db $40, $00, $00, $00
#_05AEA1: db $00, $00, $00, $00
#_05AEA5: db $00, $00, $40, $00
#_05AEA9: db $40, $40, $40, $40
#_05AEAD: db $40, $40, $40, $40
#_05AEB1: db $40, $40, $40, $40
#_05AEB5: db $40, $40, $40, $40

.size
#_05AEB9: db $02, $02, $02, $02
#_05AEBD: db $02, $02, $02, $02
#_05AEC1: db $02, $02, $02, $02
#_05AEC5: db $02, $02, $00, $02
#_05AEC9: db $02, $02, $02, $02
#_05AECD: db $02, $02, $02, $02
#_05AED1: db $02, $02, $02, $02
#_05AED5: db $00, $00, $02, $02
#_05AED9: db $02, $02, $02, $02
#_05AEDD: db $02, $02, $02, $02
#_05AEE1: db $02, $02, $02, $02
#_05AEE5: db $00, $02, $02, $02
#_05AEE9: db $02, $02, $02, $02
#_05AEED: db $02, $02, $02, $02
#_05AEF1: db $02, $02, $00, $00

.direction_offset
#_05AEF5: db $09
#_05AEF6: db $03
#_05AEF7: db $00
#_05AEF8: db $06

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_CannonGuard:
#_05AEF9: JSR Sprite_PrepOAMCoord_Bank05

#_05AEFC: LDY.w $0DE0,X

#_05AEFF: LDA.w .direction_offset,Y
#_05AF02: CLC
#_05AF03: ADC.w $0D90,X
#_05AF06: STA.b $06

#_05AF08: ASL A
#_05AF09: ASL A
#_05AF0A: ADC.b $06
#_05AF0C: STA.b $06

#_05AF0E: PHX

#_05AF0F: LDX.b #$04
#_05AF11: LDY.b #$00

.next_object
#_05AF13: PHX

#_05AF14: TXA
#_05AF15: CLC
#_05AF16: ADC.b $06
#_05AF18: PHA

#_05AF19: ASL A
#_05AF1A: TAX

#_05AF1B: REP #$20

#_05AF1D: LDA.b $00
#_05AF1F: CLC
#_05AF20: ADC.w .offset_x,X
#_05AF23: STA.b ($90),Y

#_05AF25: AND.w #$0100
#_05AF28: STA.b $0E

#_05AF2A: LDA.b $02
#_05AF2C: CLC
#_05AF2D: ADC.w .offset_y,X

#_05AF30: INY
#_05AF31: STA.b ($90),Y

#_05AF33: CLC
#_05AF34: ADC.w #$0010
#_05AF37: CMP.w #$0100
#_05AF3A: BCC .on_screen

#_05AF3C: LDA.w #$00F0
#_05AF3F: STA.b ($90),Y

.on_screen
#_05AF41: SEP #$20

#_05AF43: PLX

#_05AF44: LDA.w .char,X
#_05AF47: INY
#_05AF48: STA.b ($90),Y

#_05AF4A: SEC
#_05AF4B: SBC.b #$24
#_05AF4D: CMP.b #$05

#_05AF4F: LDA.w .flip,X
#_05AF52: ORA.b $05
#_05AF54: BCS .not_cannon

; change to red palette for cannon
#_05AF56: AND.b #$F1
#_05AF58: ORA.b #$06

.not_cannon
#_05AF5A: INY

#_05AF5B: STA.b ($90),Y

#_05AF5D: PHY

#_05AF5E: TYA
#_05AF5F: LSR A
#_05AF60: LSR A
#_05AF61: TAY

#_05AF62: LDA.w .size,X
#_05AF65: ORA.b $0F
#_05AF67: STA.b ($92),Y

#_05AF69: PLY
#_05AF6A: INY

#_05AF6B: PLX
#_05AF6C: DEX
#_05AF6D: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_05AF6F: PLX

#_05AF70: RTS

;===================================================================================================

pool Sprite_6C_MirrorPortal

.flip
#_05AF71: db $00, $40, $C0, $80

pool off

;---------------------------------------------------------------------------------------------------

Sprite_6C_MirrorPortal:
#_05AF75: LDA.l $7EF3CA
#_05AF79: BNE .missing_mirror

#_05AF7B: LDA.b $8A
#_05AF7D: CMP.b #$80
#_05AF7F: BCC .in_normal_overworld

#_05AF81: RTS

;---------------------------------------------------------------------------------------------------

.in_normal_overworld
#_05AF82: LDA.b $11
#_05AF84: CMP.b #$23
#_05AF86: BEQ .skip_draw

#_05AF88: LDA.w $0FC6
#_05AF8B: CMP.b #$03
#_05AF8D: BCS .skip_draw

#_05AF8F: JSL SpriteDraw_SingleLarge_long

.skip_draw
#_05AF93: JSR Sprite_CheckIfActive_Bank05

#_05AF96: LDA.b $1A
#_05AF98: LSR A
#_05AF99: LSR A
#_05AF9A: AND.b #$03
#_05AF9C: TAY

#_05AF9D: LDA.w $0F50,X
#_05AFA0: AND.b #$3F
#_05AFA2: ORA.w .flip,Y
#_05AFA5: STA.w $0F50,X

#_05AFA8: JSL CheckIfLinkIsBusy
#_05AFAC: BCS .exit

#_05AFAE: JSL Sprite_CheckDamageToLink_same_layer_long
#_05AFB2: BCC .not_touching

#_05AFB4: LDA.w $0D90,X
#_05AFB7: BEQ .dont_do_warp

#_05AFB9: LDA.w $037B
#_05AFBC: ORA.w $031F
#_05AFBF: BNE .dont_do_warp

#_05AFC1: LDA.w $02E4
#_05AFC4: BNE .dont_do_warp

;---------------------------------------------------------------------------------------------------

#_05AFC6: LDA.b #$23
#_05AFC8: STA.b $11

#_05AFCA: LDA.b #$01
#_05AFCC: STA.w $02DB

#_05AFCF: STZ.b $B0

#_05AFD1: STZ.b $27
#_05AFD3: STZ.b $28

#_05AFD5: LDA.b #!LINKSTATE_14
#_05AFD7: STA.b $5D

#_05AFD9: LDA.b $8A
#_05AFDB: AND.b #$40
#_05AFDD: STA.b $7B

;---------------------------------------------------------------------------------------------------

.missing_mirror
#_05AFDF: STZ.w $0DD0,X

#_05AFE2: BRA .dont_do_warp

;---------------------------------------------------------------------------------------------------

.not_touching
#_05AFE4: LDA.b #$01
#_05AFE6: STA.w $0D90,X

#_05AFE9: LDA.w $0F50,X
#_05AFEC: AND.b #$FF
#_05AFEE: STA.w $0F50,X

.dont_do_warp
#_05AFF1: INC.w $0DA0,X
#_05AFF4: BNE .dont_flag_as_touching

#_05AFF6: LDA.b #$01
#_05AFF8: STA.w $0D90,X

.dont_flag_as_touching
#_05AFFB: LDA.w $1ABF
#_05AFFE: STA.w $0D10,X

#_05B001: LDA.w $1ACF
#_05B004: STA.w $0D30,X

#_05B007: LDA.w $1ADF
#_05B00A: CLC
#_05B00B: ADC.b #$08
#_05B00D: STA.w $0D00,X

#_05B010: LDA.w $1AEF
#_05B013: ADC.b #$00
#_05B015: STA.w $0D20,X

.exit
#_05B018: RTS

;===================================================================================================

pool Sprite_6A_BallNChain

.spin_speed
#_05B019: db $22, $10

pool off

;---------------------------------------------------------------------------------------------------

Sprite_6A_BallNChain:
#_05B01B: JSR SpriteDraw_BallNChain

#_05B01E: LDA.w $0D80,X
#_05B021: CMP.b #$02
#_05B023: BCS .not_attacking

#_05B025: LDA.b #$80
#_05B027: STA.w $0FAB

.not_attacking
#_05B02A: JSR Sprite_CheckIfActive_Bank05
#_05B02D: JSL Guard_ParrySwordAttacks

#_05B031: LDY.w $0D80,X

#_05B034: LDA.w .spin_speed-2,Y
#_05B037: CLC
#_05B038: ADC.w $0D90,X
#_05B03B: STA.w $0D90,X

#_05B03E: LDA.w $0DA0,X
#_05B041: ADC.b #$00
#_05B043: AND.b #$01
#_05B045: STA.w $0DA0,X

#_05B048: JSR Sprite_CheckIfRecoiling_Bank05
#_05B04B: JSR Sprite_CheckTileCollision_Bank05
#_05B04E: JSR Sprite_Move_XY_Bank05
#_05B051: JSL Sprite_CheckDamageToLink_long

#_05B055: TXA
#_05B056: EOR.b $1A
#_05B058: AND.b #$0F
#_05B05A: BNE .dont_turn

#_05B05C: JSR Sprite_DirectionToFaceLink_Bank05
#_05B05F: TYA
#_05B060: STA.w $0EB0,X

;---------------------------------------------------------------------------------------------------

.dont_turn
#_05B063: LDA.w $0D80,X

#_05B066: REP #$30

#_05B068: AND.w #$00FF
#_05B06B: ASL A
#_05B06C: TAY

#_05B06D: LDA.w .vectors,Y
#_05B070: DEC A
#_05B071: PHA

#_05B072: SEP #$30

#_05B074: RTS

;---------------------------------------------------------------------------------------------------

.vectors
#_05B075: dw BallNChain_Approach
#_05B077: dw BallNChain_Steady
#_05B079: dw BallNChain_SpinFlail
#_05B07B: dw BallNChain_SlowFlail

;===================================================================================================

BallNChain_Approach:
#_05B07D: TXA
#_05B07E: EOR.b $1A
#_05B080: AND.b #$0F
#_05B082: BNE BallNChain_Animate

#_05B084: LDA.w $0EB0,X
#_05B087: STA.w $0DE0,X

#_05B08A: LDA.b $0E
#_05B08C: CLC
#_05B08D: ADC.b #$40
#_05B08F: CMP.b #$68
#_05B091: BCS .out_of_range

#_05B093: LDA.b $0F
#_05B095: CLC
#_05B096: ADC.b #$30
#_05B098: CMP.b #$60
#_05B09A: BCS .out_of_range

#_05B09C: INC.w $0D80,X

#_05B09F: LDA.b #$18
#_05B0A1: STA.w $0DF0,X

#_05B0A4: RTS

;---------------------------------------------------------------------------------------------------

.out_of_range
#_05B0A5: LDA.b #$08
#_05B0A7: JSL Sprite_ApplySpeedTowardsLink_long

;===================================================================================================

BallNChain_Animate:
#_05B0AB: LDA.w $0DE0,X
#_05B0AE: ASL A
#_05B0AF: ASL A
#_05B0B0: ASL A
#_05B0B1: STA.b $00

#_05B0B3: INC.w $0E80,X

#_05B0B6: LDA.w $0E80,X
#_05B0B9: LSR A
#_05B0BA: LSR A
#_05B0BB: AND.b #$07
#_05B0BD: ORA.b $00
#_05B0BF: TAY

#_05B0C0: LDA.w BlusainAndBNC_anim_step,Y
#_05B0C3: STA.w $0DC0,X

#_05B0C6: RTS

;===================================================================================================

BlusainAndBNC_anim_step:
#_05B0C7: db $10, $11, $12, $13, $10, $11, $12, $13
#_05B0CF: db $06, $07, $08, $09, $06, $07, $08, $09
#_05B0D7: db $00, $01, $02, $03, $00, $01, $04, $05
#_05B0DF: db $0A, $0B, $0C, $0D, $0A, $0B, $0E, $0F

;===================================================================================================

BallNChain_Steady:
#_05B0E7: JSR Sprite_ZeroVelocity_XY_Bank05

#_05B0EA: LDA.w $0DF0,X
#_05B0ED: BNE .exit

#_05B0EF: LDA.b #$30
#_05B0F1: STA.w $0DF0,X

#_05B0F4: INC.w $0D80,X

.exit
#_05B0F7: RTS

;===================================================================================================

pool BallNChain_SpinFlail

.direction
#_05B0F8: db $03, $01, $02, $00

pool off

;---------------------------------------------------------------------------------------------------

BallNChain_SpinFlail:
#_05B0FC: LDA.w $0DF0,X
#_05B0FF: BNE BallNChain_AnimateAndSFX

#_05B101: LDA.w $0D90,X
#_05B104: ASL A

#_05B105: LDA.w $0DA0,X
#_05B108: ROL A
#_05B109: TAY

#_05B10A: LDA.w .direction,Y
#_05B10D: CMP.w $0EB0,X
#_05B110: BNE BallNChain_AnimateAndSFX

#_05B112: INC.w $0D80,X

#_05B115: LDA.b #$1F
#_05B117: STA.w $0E10,X

;===================================================================================================

BallNChain_AnimateAndSFX:
#_05B11A: INC.w $0E80,X

#_05B11D: JSR BallNChain_Animate

#_05B120: TXA
#_05B121: EOR.b $1A
#_05B123: AND.b #$0F
#_05B125: BNE .exit

#_05B127: LDA.b #!SFX3_06
#_05B129: JSL SpriteSFX_QueueSFX3WithPan

.exit
#_05B12D: RTS

;===================================================================================================

BallNChain_SlowFlail:
#_05B12E: JSR Sprite_ZeroVelocity_XY_Bank05

#_05B131: LDA.w $0E10,X
#_05B134: BNE .delay

#_05B136: STZ.w $0D80,X

.delay
#_05B139: CMP.b #$10
#_05B13B: BCS BallNChain_AnimateAndSFX

#_05B13D: INC.w $0E80,X

#_05B140: JSR BallNChain_Animate

#_05B143: RTS

;===================================================================================================

SpriteDraw_BallNChain:
#_05B144: JSR Sprite_PrepOAMCoord_Bank05
#_05B147: JSR SpriteDraw_BNCHead
#_05B14A: JSR SpriteDraw_BNCBody
#_05B14D: JSR SpriteDraw_BNCFlail

#_05B150: JSR Sprite_PrepOAMCoord_Bank05

#_05B153: JMP.w Guard_DrawShadow

;===================================================================================================

pool SpriteDraw_GuardHead

.head_char
#_05B156: db $02, $02, $00, $04

.head_flip
#_05B15A: db $40, $00, $00, $00

pool off

;===================================================================================================

SpriteDraw_BNCHead:
#_05B15E: LDY.b #$18

;===================================================================================================

SpriteDraw_GuardHead:
#_05B160: PHX

#_05B161: LDA.w $0EB0,X
#_05B164: TAX

#_05B165: REP #$20

#_05B167: LDA.b $00
#_05B169: STA.b ($90),Y

#_05B16B: AND.w #$0100
#_05B16E: STA.b $0E

#_05B170: LDA.b $02
#_05B172: SEC
#_05B173: SBC.w #$0009

#_05B176: INY
#_05B177: STA.b ($90),Y

#_05B179: CLC
#_05B17A: ADC.w #$0010
#_05B17D: CMP.w #$0100
#_05B180: BCC .head_on_screen

#_05B182: LDA.w #$00F0
#_05B185: STA.b ($90),Y

.head_on_screen
#_05B187: SEP #$20

#_05B189: LDA.w .head_char,X
#_05B18C: INY
#_05B18D: STA.b ($90),Y

#_05B18F: LDA.w .head_flip,X
#_05B192: INY
#_05B193: ORA.b $05
#_05B195: STA.b ($90),Y

#_05B197: TYA
#_05B198: LSR A
#_05B199: LSR A
#_05B19A: TAY

#_05B19B: LDA.b #$02
#_05B19D: ORA.b $0F
#_05B19F: STA.b ($92),Y

#_05B1A1: PLX

#_05B1A2: RTS

;===================================================================================================

pool SpriteDraw_GuardBody

.body_offset_x
#_05B1A3: dw  -4,   4,  12,  -4
#_05B1AB: dw   4,  13,  -4,   4
#_05B1B3: dw  13,  -4,   4,  13
#_05B1BB: dw  -4,   4,  13,  -4
#_05B1C3: dw   4,  13,   0,   0
#_05B1CB: dw   4,   0,   0,   5
#_05B1D3: dw   0,   0,   6,   0
#_05B1DB: dw   0,   4,  -4,   4
#_05B1E3: dw  -6,  -4,   4,  -5
#_05B1EB: dw  -4,   4,  -5,  -4
#_05B1F3: dw   4,  -6,  -4,   4
#_05B1FB: dw  -5,  -4,   4,  -6
#_05B203: dw   0,   0,   4,   0
#_05B20B: dw   0,   3,   0,   0
#_05B213: dw   2,   0,   0,   4
#_05B21B: dw   0,   0,   0,   0
#_05B223: dw   0,   0,  -4,   4
#_05B22B: dw   4,  -4,   4,   4

.body_offset_y
#_05B233: dw   0,   0,  -4,   0
#_05B23B: dw   0,  -4,   0,   0
#_05B243: dw  -3,   0,   0,  -2
#_05B24B: dw   0,   0,  -3,   0
#_05B253: dw   0,  -2,   0,   0
#_05B25B: dw   1,   0,   0,   1
#_05B263: dw   0,   0,   2,   0
#_05B26B: dw   0,   2,   0,   0
#_05B273: dw  -2,   0,   0,  -2
#_05B27B: dw   0,   0,  -1,   0
#_05B283: dw   0,  -1,   0,   0
#_05B28B: dw  -1,   0,   0,  -1
#_05B293: dw   0,   0,   1,   0
#_05B29B: dw   0,   1,   0,   0
#_05B2A3: dw   2,   0,   0,   2
#_05B2AB: dw   0,   0,   0,   0
#_05B2B3: dw   0,   0,   0,   0
#_05B2BB: dw   0,   0,   0,   0

.body_char
#_05B2C3: db $46, $06, $2F, $46
#_05B2C7: db $06, $2F, $48, $0D
#_05B2CB: db $2F, $48, $0D, $2F
#_05B2CF: db $49, $0C, $2F, $49
#_05B2D3: db $0C, $2F, $08, $08
#_05B2D7: db $2F, $08, $08, $2F
#_05B2DB: db $22, $22, $2F, $22
#_05B2DF: db $22, $2F, $0A, $64
#_05B2E3: db $2F, $0A, $64, $2F
#_05B2E7: db $2C, $67, $2F, $2C
#_05B2EB: db $67, $2F, $2D, $66
#_05B2EF: db $2F, $2D, $66, $2F
#_05B2F3: db $08, $08, $2F, $08
#_05B2F7: db $08, $2F, $22, $22
#_05B2FB: db $2F, $22, $22, $2F
#_05B2FF: db $62, $62, $62, $62
#_05B303: db $62, $62, $46, $4B
#_05B307: db $4B, $69, $64, $64

.body_flip
#_05B30B: db $00, $00, $00, $00
#_05B30F: db $00, $00, $00, $00
#_05B313: db $00, $00, $00, $00
#_05B317: db $40, $40, $00, $40
#_05B31B: db $40, $00, $00, $00
#_05B31F: db $00, $00, $00, $00
#_05B323: db $00, $00, $00, $00
#_05B327: db $00, $00, $00, $40
#_05B32B: db $40, $00, $40, $40
#_05B32F: db $00, $00, $40, $00
#_05B333: db $00, $40, $40, $40
#_05B337: db $40, $40, $40, $40
#_05B33B: db $40, $40, $40, $40
#_05B33F: db $40, $40, $40, $40
#_05B343: db $40, $40, $40, $40
#_05B347: db $40, $40, $40, $00
#_05B34B: db $00, $00, $00, $40
#_05B34F: db $40, $00, $40, $40

.body_size
#_05B353: db $02, $02, $00, $02
#_05B357: db $02, $00, $02, $02
#_05B35B: db $00, $02, $02, $00
#_05B35F: db $02, $02, $00, $02
#_05B363: db $02, $00, $02, $02
#_05B367: db $00, $02, $02, $00
#_05B36B: db $02, $02, $00, $02
#_05B36F: db $02, $00, $02, $02
#_05B373: db $00, $02, $02, $00
#_05B377: db $02, $02, $00, $02
#_05B37B: db $02, $00, $02, $02
#_05B37F: db $00, $02, $02, $00
#_05B383: db $02, $02, $00, $02
#_05B387: db $02, $00, $02, $02
#_05B38B: db $00, $02, $02, $00
#_05B38F: db $02, $02, $02, $02
#_05B393: db $02, $02, $02, $02
#_05B397: db $02, $02, $02, $02

.body_object_count
#_05B39B: db $02, $02, $02, $02
#_05B39F: db $02, $02, $02, $02
#_05B3A3: db $02, $02, $02, $02
#_05B3A7: db $02, $02, $02, $02
#_05B3AB: db $02, $02, $02, $02
#_05B3AF: db $01, $01, $01, $01

.body_oam_offset
#_05B3B3: db $00, $00, $00, $00
#_05B3B7: db $00, $00, $00, $00
#_05B3BB: db $00, $00, $00, $00
#_05B3BF: db $00, $00, $00, $00
#_05B3C3: db $00, $00, $00, $00
#_05B3C7: db $08, $08, $08, $08

pool off

;===================================================================================================

SpriteDraw_BNCBody:
#_05B3CB: LDY.b #$14

;===================================================================================================

SpriteDraw_GuardBody:
#_05B3CD: LDA.w $0DC0,X
#_05B3D0: ASL A
#_05B3D1: ADC.w $0DC0,X
#_05B3D4: STA.b $06

#_05B3D6: PHX

#_05B3D7: LDA.w $0DC0,X
#_05B3DA: TAX

#_05B3DB: TYA
#_05B3DC: CLC
#_05B3DD: ADC.w .body_oam_offset,X
#_05B3E0: TAY

#_05B3E1: LDA.w .body_object_count,X
#_05B3E4: TAX

.next_object
#_05B3E5: PHX

#_05B3E6: TXA
#_05B3E7: CLC
#_05B3E8: ADC.b $06
#_05B3EA: PHA

#_05B3EB: ASL A
#_05B3EC: TAX

#_05B3ED: REP #$20

#_05B3EF: LDA.b $00
#_05B3F1: CLC
#_05B3F2: ADC.w .body_offset_x,X
#_05B3F5: STA.b ($90),Y

#_05B3F7: AND.w #$0100
#_05B3FA: STA.b $0E

#_05B3FC: LDA.b $02
#_05B3FE: CLC
#_05B3FF: ADC.w .body_offset_y,X

#_05B402: INY
#_05B403: STA.b ($90),Y

#_05B405: CLC
#_05B406: ADC.w #$0010
#_05B409: CMP.w #$0100
#_05B40C: BCC .body_on_screen

#_05B40E: LDA.w #$00F0
#_05B411: STA.b ($90),Y

.body_on_screen
#_05B413: SEP #$20

#_05B415: PLX

#_05B416: LDA.w .body_char,X
#_05B419: INY
#_05B41A: STA.b ($90),Y

#_05B41C: LDA.w .body_flip,X
#_05B41F: ORA.b $05
#_05B421: INY
#_05B422: STA.b ($90),Y

#_05B424: PHY

#_05B425: TYA
#_05B426: LSR A
#_05B427: LSR A
#_05B428: TAY

#_05B429: LDA.w .body_size,X
#_05B42C: ORA.b $0F
#_05B42E: STA.b ($92),Y

#_05B430: PLY
#_05B431: INY

#_05B432: PLX
#_05B433: CPX.b #$02
#_05B435: BNE .body_no_advance

#_05B437: INY
#_05B438: INY
#_05B439: INY
#_05B43A: INY

.body_no_advance
#_05B43B: DEX
#_05B43C: BPL .next_object

#_05B43E: PLX

#_05B43F: RTS

;===================================================================================================

pool SpriteDraw_BNCFlail

.flail_extension
#_05B440: db $10, $12, $14, $16
#_05B444: db $18, $1A, $1C, $1E
#_05B448: db $20, $22, $24, $26
#_05B44C: db $28, $2A, $2C, $2E
#_05B450: db $30, $2E, $2C, $2A
#_05B454: db $28, $26, $24, $22
#_05B458: db $20, $1E, $1C, $1A
#_05B45C: db $18, $16, $14, $12

.flail_offset_x
#_05B460: db   4 ; right
#_05B461: db   4 ; left
#_05B462: db  12 ; down
#_05B463: db  -5 ; up

.flail_offset_y
#_05B464: db  -2 ; right
#_05B465: db  -2 ; left
#_05B466: db  -6 ; down
#_05B467: db  -4 ; up

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_BNCFlail:
#_05B468: LDA.b $00
#_05B46A: STA.w $0FA8

#_05B46D: LDA.b $02
#_05B46F: STA.w $0FA9

#_05B472: LDA.w $0D90,X
#_05B475: STA.b $00

#_05B477: LDA.w $0DA0,X
#_05B47A: STA.b $01

#_05B47C: LDA.b #$00

#_05B47E: LDY.w $0D80,X
#_05B481: CPY.b #$02
#_05B483: BCC .not_swinging_a

#_05B485: LDA.w $0E10,X
#_05B488: TAY

#_05B489: LDA.w .flail_extension,Y

.not_swinging_a
#_05B48C: STA.b $0F

#_05B48E: LDY.w $0DE0,X

#_05B491: LDA.w .flail_offset_x,Y
#_05B494: STA.b $0C

#_05B496: LDA.w .flail_offset_y,Y
#_05B499: STA.b $0D

#_05B49B: PHX

#_05B49C: REP #$30

#_05B49E: LDA.b $00
#_05B4A0: AND.w #$01FF
#_05B4A3: LSR A
#_05B4A4: LSR A
#_05B4A5: LSR A
#_05B4A6: LSR A
#_05B4A7: LSR A
#_05B4A8: LSR A
#_05B4A9: STA.b $0A

#_05B4AB: LDA.b $00
#_05B4AD: CLC
#_05B4AE: ADC.w #$0080

#_05B4B1: AND.w #$01FF
#_05B4B4: STA.b $02

#_05B4B6: LDA.b $00
#_05B4B8: AND.w #$00FF
#_05B4BB: ASL A
#_05B4BC: TAX

#_05B4BD: LDA.l SmoothCurve,X
#_05B4C1: STA.b $04

#_05B4C3: LDA.b $02
#_05B4C5: AND.w #$00FF
#_05B4C8: ASL A
#_05B4C9: TAX

#_05B4CA: LDA.l SmoothCurve,X
#_05B4CE: STA.b $06

#_05B4D0: SEP #$30

#_05B4D2: PLX

#_05B4D3: LDA.b $04
#_05B4D5: STA.w CPUMULTA

#_05B4D8: LDA.b $0F

#_05B4DA: LDY.b $05
#_05B4DC: BNE .not_swinging_b

#_05B4DE: STA.w CPUMULTB
#_05B4E1: JSR NOP4

#_05B4E4: ASL.w CPUPRODUCTL ; carry = round up
#_05B4E7: LDA.w CPUPRODUCTH
#_05B4EA: ADC.b #$00

.not_swinging_b
#_05B4EC: STA.b $0E

#_05B4EE: LSR.b $01
#_05B4F0: BCC .this_is_positive_a

#_05B4F2: EOR.b #$FF
#_05B4F4: INC A

.this_is_positive_a
#_05B4F5: STA.b $04

;---------------------------------------------------------------------------------------------------

#_05B4F7: LDA.b $06
#_05B4F9: STA.w CPUMULTA

#_05B4FC: LDA.b $0F

#_05B4FE: LDY.b $07
#_05B500: BNE .this_was_nonzero

#_05B502: STA.w CPUMULTB
#_05B505: JSR NOP4

#_05B508: ASL.w CPUPRODUCTL ; carry = round up
#_05B50B: LDA.w CPUPRODUCTH
#_05B50E: ADC.b #$00

.this_was_nonzero
#_05B510: STA.b $0F

#_05B512: LSR.b $03
#_05B514: BCC .this_is_positive_b

#_05B516: EOR.b #$FF
#_05B518: INC A

.this_is_positive_b
#_05B519: STA.b $06

;---------------------------------------------------------------------------------------------------

#_05B51B: LDY.b #$00

#_05B51D: LDA.b $04
#_05B51F: SEC
#_05B520: SBC.b #$04

#_05B522: CLC
#_05B523: ADC.b $0C
#_05B525: STA.w $0FAB

#_05B528: CLC
#_05B529: ADC.w $0FA8
#_05B52C: STA.b ($90),Y

#_05B52E: LDA.b $06
#_05B530: SEC
#_05B531: SBC.b #$04

#_05B533: CLC
#_05B534: ADC.b $0D
#_05B536: STA.w $0FAA

#_05B539: CLC
#_05B53A: ADC.w $0FA9
#_05B53D: INY
#_05B53E: STA.b ($90),Y

#_05B540: LDA.b #$2A
#_05B542: INY
#_05B543: STA.b ($90),Y

#_05B545: LDA.b #$2D
#_05B547: INY
#_05B548: STA.b ($90),Y

#_05B54A: LDA.b #$02
#_05B54C: STA.b ($92)

#_05B54E: LDY.b #$04

;---------------------------------------------------------------------------------------------------

#_05B550: PHX

#_05B551: LDX.b #$03

.next_object_flail
#_05B553: LDA.b $0E
#_05B555: STA.w CPUMULTA

#_05B558: LDA.w .chain_multiplicand,X
#_05B55B: STA.w CPUMULTB

#_05B55E: JSR NOP4

#_05B561: LDA.b $04
#_05B563: ASL A

#_05B564: LDA.w CPUPRODUCTH
#_05B567: BCC .dont_invert_a

#_05B569: EOR.b #$FF
#_05B56B: INC A

.dont_invert_a
#_05B56C: CLC
#_05B56D: ADC.w $0FA8
#_05B570: CLC
#_05B571: ADC.b $0C
#_05B573: STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

#_05B575: LDA.b $0F
#_05B577: STA.w CPUMULTA

#_05B57A: LDA.w .chain_multiplicand,X
#_05B57D: STA.w CPUMULTB

#_05B580: JSR NOP4

#_05B583: LDA.b $06
#_05B585: ASL A

#_05B586: LDA.w CPUPRODUCTH
#_05B589: BCC .dont_invert_b

#_05B58B: EOR.b #$FF
#_05B58D: INC A

.dont_invert_b
#_05B58E: CLC
#_05B58F: ADC.w $0FA9
#_05B592: CLC
#_05B593: ADC.b $0D
#_05B595: INY
#_05B596: STA.b ($90),Y

#_05B598: LDA.b #$3F
#_05B59A: INY
#_05B59B: STA.b ($90),Y

#_05B59D: LDA.b #$2D
#_05B59F: INY
#_05B5A0: STA.b ($90),Y

#_05B5A2: PHY

#_05B5A3: TYA
#_05B5A4: LSR A
#_05B5A5: LSR A
#_05B5A6: TAY

#_05B5A7: LDA.b #$00
#_05B5A9: STA.b ($92),Y

#_05B5AB: PLY
#_05B5AC: INY

#_05B5AD: DEX
#_05B5AE: BPL .next_object_flail

#_05B5B0: PLX

#_05B5B1: LDY.b #$FF
#_05B5B3: LDA.b #$04
#_05B5B5: JSL Sprite_CorrectOAMEntries_long

#_05B5B9: RTS

;---------------------------------------------------------------------------------------------------

.chain_multiplicand
#_05B5BA: db $33, $66, $99, $CC

;===================================================================================================
; NOP NOP NOP NOP
;===================================================================================================
NOP4:
#_05B5BE: NOP ; one
#_05B5BF: NOP ; two
#_05B5C0: NOP ; three
#_05B5C1: NOP ; four

#_05B5C2: RTS

;===================================================================================================

SpriteModule_Active_Bank05:
#_05B5C3: PHB
#_05B5C4: PHK
#_05B5C5: PLB

#_05B5C6: JSR .main

#_05B5C9: PLB

#_05B5CA: RTL

;===================================================================================================
; Why are these here?
;===================================================================================================
#SpriteDirections_Bank05:
#_05B5CB: db $03, $02, $00, $01

#SpriteDrawSteps_Bank05:
#_05B5CF: db $08, $00, $0C, $05

;===================================================================================================

.main
#_05B5D3: LDA.w $0E20,X
#_05B5D6: SEC
#_05B5D7: SBC.b #$41

#_05B5D9: REP #$30

#_05B5DB: AND.w #$00FF
#_05B5DE: ASL A
#_05B5DF: TAY
#_05B5E0: LDA.w .vectors,Y

#_05B5E3: DEC A
#_05B5E4: PHA

#_05B5E5: SEP #$30

#_05B5E7: RTS

;---------------------------------------------------------------------------------------------------

.vectors
#_05B5E8: dw Sprite_41_BlueGuard
#_05B5EA: dw Sprite_42_GreenGuard
#_05B5EC: dw Sprite_43_RedGuard
#_05B5EE: dw Sprite_44_BluesainBolt

#_05B5F0: dw Sprite_45_UsainBolt
#_05B5F2: dw Sprite_46_BlueArcher
#_05B5F4: dw Sprite_47_GreenBushGuard
#_05B5F6: dw Sprite_48_RedJavelinGuard

#_05B5F8: dw Sprite_49_RedBushGuard
#_05B5FA: dw Sprite_4A_BombGuard
#_05B5FC: dw Sprite_4B_GreenKnifeGuard
#_05B5FE: dw Sprite_4C_Geldman

#_05B600: dw Sprite_4D_Toppo
#_05B602: dw Sprite_4E_Popo
#_05B604: dw Sprite_4F_Popo
#_05B606: dw Sprite_50_Cannonball

#_05B608: dw Sprite_51_ArmosStatue
#_05B60A: dw Sprite_52_KingZora
#_05B60C: dw Sprite_53_ArmosKnight
#_05B60E: dw Sprite_54_Lanmolas

#_05B610: dw Sprite_55_Zora
#_05B612: dw Sprite_56_WalkingZora
#_05B614: dw Sprite_57_DesertStatue
#_05B616: dw Sprite_58_Crab

#_05B618: dw Sprite_59_LostWoodsBird
#_05B61A: dw Sprite_5A_LostWoodsSquirrel
#_05B61C: dw Sprite_5B_Spark_Clockwise
#_05B61E: dw Sprite_5C_Spark_Counterclockwise

#_05B620: dw Sprite_5D_Roller_VerticalStartUp
#_05B622: dw Sprite_5E_Roller_VerticalStartDown
#_05B624: dw Sprite_5F_Roller_HorizontalStartLeft
#_05B626: dw Sprite_60_Roller_HorizontalStartRight

#_05B628: dw Sprite_61_Beamos
#_05B62A: dw Sprite_62_MasterSword
#_05B62C: dw Sprite_63_DebirandoPit
#_05B62E: dw Sprite_64_Debirando

#_05B630: dw Sprite_65_ArcheryGame
#_05B632: dw Sprite_66_WallCannonVerticalLeft
#_05B634: dw Sprite_67_WallCannonVerticalRight
#_05B636: dw Sprite_68_WallCannonHorizontalTop

#_05B638: dw Sprite_69_WallCannonHorizontalBottom
#_05B63A: dw Sprite_6A_BallNChain
#_05B63C: dw Sprite_6B_Cannonball
#_05B63E: dw Sprite_6C_MirrorPortal

#_05B640: dw Sprite_6D_Rat
#_05B642: dw Sprite_6E_Rope
#_05B644: dw Sprite_6F_Keese
#_05B646: dw Sprite_70_KingHelmasaurFireball_bounce

;===================================================================================================

Sprite_50_Cannonball:
#_05B648: LDA.w $0D80,X
#_05B64B: BNE .big_ball

#_05B64D: JSL SpriteDraw_SingleLarge_long
#_05B651: BRA .continue

.big_ball
#_05B653: JSR SpriteDraw_BigCannonball

.continue
#_05B656: JSR Sprite_CheckIfActive_Bank05

#_05B659: INC.w $0E80,X

#_05B65C: LDA.w $0E80,X
#_05B65F: LSR A
#_05B660: LSR A
#_05B661: AND.b #$01
#_05B663: STA.w $0DC0,X

#_05B666: JSR Sprite_Move_XY_Bank05

#_05B669: LDA.w $0DF0,X
#_05B66C: BEQ .delay

#_05B66E: DEC A
#_05B66F: BNE .exit_a

#_05B671: STZ.w $0DD0,X

.exit_a
#_05B674: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_05B675: JSR Sprite_CheckDamageToAndFromLink_Bank05

#_05B678: LDA.w $0E10,X
#_05B67B: BNE .exit_b

#_05B67D: JSR Sprite_CheckTileCollision_Bank05
#_05B680: BEQ .exit_b

#_05B682: LDA.b #$10
#_05B684: STA.w $0DF0,X

.exit_b
#_05B687: RTS

;===================================================================================================

pool SpriteDraw_BigCannonball

.offset_x
#_05B688: dw  -8,   8,  -8,   8

.offset_y
#_05B690: dw  -8,  -8,   8,   8

.char
#_05B698: db $84, $88, $88, $88
#_05B69C: db $86, $88, $88, $88

.flip
#_05B6A0: db $00, $00, $C0, $80

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_BigCannonball:
#_05B6A4: JSR Sprite_PrepOAMCoord_Bank05

#_05B6A7: LDA.w $0DC0,X
#_05B6AA: ASL A
#_05B6AB: ASL A
#_05B6AC: STA.b $06

#_05B6AE: PHX

#_05B6AF: LDX.b #$03

.next_object
#_05B6B1: PHX
#_05B6B2: PHX

#_05B6B3: TXA
#_05B6B4: ASL A
#_05B6B5: TAX

#_05B6B6: REP #$20

#_05B6B8: LDA.b $00
#_05B6BA: CLC
#_05B6BB: ADC.w .offset_x,X
#_05B6BE: STA.b ($90),Y

#_05B6C0: AND.w #$0100
#_05B6C3: STA.b $0E

#_05B6C5: LDA.b $02
#_05B6C7: CLC
#_05B6C8: ADC.w .offset_y,X

#_05B6CB: INY
#_05B6CC: STA.b ($90),Y

#_05B6CE: CLC
#_05B6CF: ADC.w #$0010
#_05B6D2: CMP.w #$0100

#_05B6D5: SEP #$20
#_05B6D7: BCC .on_screen

#_05B6D9: LDA.b #$F0
#_05B6DB: STA.b ($90),Y

.on_screen
#_05B6DD: PLA
#_05B6DE: CLC
#_05B6DF: ADC.b $06
#_05B6E1: TAX

#_05B6E2: LDA.w .char,X
#_05B6E5: INY
#_05B6E6: STA.b ($90),Y

#_05B6E8: PLX
#_05B6E9: LDA.w .flip,X

#_05B6EC: INY
#_05B6ED: ORA.b $05
#_05B6EF: STA.b ($90),Y

#_05B6F1: PHY

#_05B6F2: TYA
#_05B6F3: LSR A
#_05B6F4: LSR A
#_05B6F5: TAY

#_05B6F6: LDA.b $0F
#_05B6F8: ORA.b #$02
#_05B6FA: STA.b ($92),Y

#_05B6FC: PLY
#_05B6FD: INY

#_05B6FE: DEX
#_05B6FF: BPL .next_object

#_05B701: PLX

#_05B702: RTS

;===================================================================================================

Sprite_51_ArmosStatue:
#_05B703: JSR SpriteDraw_ArmosStatue

#_05B706: LDA.w $0EA0,X
#_05B709: BEQ .not_recoiling

#_05B70B: JSR Sprite_ZeroVelocity_XY_Bank05

.not_recoiling
#_05B70E: JSR Sprite_CheckIfActive_Bank05
#_05B711: JSR Sprite_Move_Z_Bank05

#_05B714: LDA.w $0F80,X
#_05B717: SEC
#_05B718: SBC.b #$02
#_05B71A: STA.w $0F80,X

#_05B71D: LDA.w $0F70,X
#_05B720: BPL .airborne

#_05B722: STZ.w $0F70,X
#_05B725: STZ.w $0F80,X

#_05B728: JSR Sprite_ZeroVelocity_XY_Bank05

.airborne
#_05B72B: LDA.w $0D80,X
#_05B72E: BEQ ArmosStatue_Inactive

#_05B730: JMP.w ArmosStatue_Active

;===================================================================================================

ArmosStatue_Inactive:
#_05B733: LDA.w $0E60,X
#_05B736: ORA.b #$40
#_05B738: STA.w $0E60,X

#_05B73B: LDY.w $0DF0,X
#_05B73E: CPY.b #$01
#_05B740: BNE .delay

#_05B742: AND.b #$BF
#_05B744: STA.w $0E60,X

#_05B747: INC.w $0D80,X

#_05B74A: ASL.w $0E40,X
#_05B74D: LSR.w $0E40,X

#_05B750: LDA.w $0E60,X
#_05B753: AND.b #$BF
#_05B755: STA.w $0E60,X

#_05B758: LDA.b #$0B
#_05B75A: STA.w $0F50,X

#_05B75D: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_05B75E: TXA
#_05B75F: EOR.b $1A
#_05B761: AND.b #$03
#_05B763: BNE .dont_wake

#_05B765: REP #$20

#_05B767: LDA.b $22
#_05B769: SEC
#_05B76A: SBC.w $0FD8
#_05B76D: CLC
#_05B76E: ADC.w #$001F

#_05B771: CMP.w #$003E
#_05B774: BCS .dont_wake

#_05B776: LDA.b $20
#_05B778: CLC
#_05B779: ADC.w #$0008
#_05B77C: SEC
#_05B77D: SBC.w $0FDA
#_05B780: CLC
#_05B781: ADC.w #$0030

#_05B784: CMP.w #$0058
#_05B787: BCS .dont_wake

#_05B789: SEP #$20

#_05B78B: LDA.w $0DF0,X
#_05B78E: BNE .dont_wake

#_05B790: LDA.b #$30
#_05B792: STA.w $0DF0,X

#_05B795: LDA.b #!SFX2_22
#_05B797: JSL SpriteSFX_QueueSFX2WithPan

;---------------------------------------------------------------------------------------------------

.dont_wake
#_05B79B: SEP #$20

#_05B79D: JSL Sprite_CheckDamageToLink_same_layer_long
#_05B7A1: BCC .no_contact

#_05B7A3: JSL Sprite_CancelHookshot
#_05B7A7: JSL Sprite_RepelDash_long

.no_contact
#_05B7AB: LDA.w $0DF0,X
#_05B7AE: BEQ .exit

#_05B7B0: LSR A
#_05B7B1: AND.b #$0E
#_05B7B3: EOR.w $0F50,X
#_05B7B6: STA.w $0F50,X

.exit
#_05B7B9: RTS

;===================================================================================================

ArmosStatue_Active:
#_05B7BA: JSR Sprite_CheckDamageToAndFromLink_Bank05
#_05B7BD: JSR Sprite_CheckIfRecoiling_Bank05
#_05B7C0: JSR Sprite_Move_XY_Bank05
#_05B7C3: JSR Sprite_CheckTileCollision_Bank05

#_05B7C6: LDA.w $0DF0,X
#_05B7C9: ORA.w $0F70,X
#_05B7CC: BNE .exit

#_05B7CE: LDA.b #$08
#_05B7D0: STA.w $0DF0,X

#_05B7D3: LDA.b #$10
#_05B7D5: STA.w $0F80,X

#_05B7D8: LDA.b #$0C
#_05B7DA: JSL Sprite_ApplySpeedTowardsLink_long

.exit
#_05B7DE: RTS

;===================================================================================================

pool SpriteDraw_ArmosStatue

.oam_groups
#_05B7DF: dw   0, -16 : db $C0, $00, $00, $02
#_05B7E7: dw   0,   0 : db $E0, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_ArmosStatue:
#_05B7EF: LDA.w $0D80,X
#_05B7F2: BNE .lower_region

#_05B7F4: JSR Sprite_PrepOAMCoord_Bank05

.lower_region
#_05B7F7: REP #$20

#_05B7F9: LDA.w #.oam_groups
#_05B7FC: STA.b $08

#_05B7FE: SEP #$20

#_05B800: LDA.b #$02
#_05B802: JSR Sprite_DrawMultiple_Bank05

#_05B805: JSL SpriteDraw_Shadow_long

#_05B809: RTS

;===================================================================================================

Sprite_4E_Popo:
Sprite_4F_Popo:
#_05B80A: JSR SpriteDraw_Popo
#_05B80D: JSR Sprite_CheckIfActive_Bank05
#_05B810: JSR Sprite_CheckIfRecoiling_Bank05

#_05B813: INC.w $0E80,X

#_05B816: LDA.w $0E80,X
#_05B819: LSR A
#_05B81A: LSR A
#_05B81B: LSR A
#_05B81C: LSR A
#_05B81D: AND.b #$03
#_05B81F: STA.w $0D90,X

#_05B822: JSR Sprite_CheckDamageToAndFromLink_Bank05

#_05B825: LDA.w $0D80,X
#_05B828: CMP.b #$02
#_05B82A: BEQ Popo_Moving

#_05B82C: CMP.b #$01
#_05B82E: BEQ Popo_Wiggling

;===================================================================================================

Popo_Idling:
#_05B830: LDA.w $0DF0,X
#_05B833: BNE .exit

#_05B835: INC.w $0D80,X

#_05B838: LDA.b #$69
#_05B83A: STA.w $0DF0,X

.exit
#_05B83D: RTS

;===================================================================================================

Popo_Wiggling:
#_05B83E: INC.w $0E80,X

#_05B841: LDA.w $0DF0,X
#_05B844: BNE .exit

#_05B846: JSL GetRandomNumber
#_05B84A: AND.b #$3F
#_05B84C: ADC.b #$80
#_05B84E: STA.w $0DF0,X

#_05B851: INC.w $0D80,X

#_05B854: JSL GetRandomNumber
#_05B858: AND.b #$0F
#_05B85A: TAY

#_05B85B: LDA.w SomeRandomXSpeeds_Bank05,Y
#_05B85E: ASL A
#_05B85F: ASL A
#_05B860: STA.w $0D50,X

#_05B863: LDA.w SomeRandomYSpeeds_Bank05,Y
#_05B866: ASL A
#_05B867: ASL A
#_05B868: STA.w $0D40,X

.exit
#_05B86B: RTS

;===================================================================================================

Popo_Moving:
#_05B86C: INC.w $0E80,X

#_05B86F: LDA.w $0DF0,X
#_05B872: BNE .delay

.reset_ai
#_05B874: STZ.w $0D80,X

#_05B877: LDA.b #$50
#_05B879: STA.w $0DF0,X

#_05B87C: RTS

.delay
#_05B87D: TXA
#_05B87E: EOR.b $1A
#_05B880: AND.w $0DA0,X
#_05B883: BNE Sprite_CheckTileCollision_Bank05

#_05B885: JSR Sprite_Move_XY_Bank05

#_05B888: LDA.w $0E70,X
#_05B88B: BNE .reset_ai

;===================================================================================================

Sprite_CheckTileCollision_Bank05:
#_05B88D: JSL Sprite_CheckTileCollision_long

#_05B891: RTS

;===================================================================================================

pool SpriteDraw_Popo

.anim_step
#_05B892: db $00, $01, $00, $01

.flip
#_05B896: db $00, $00, $40, $40

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Popo:
#_05B89A: LDY.w $0D90,X

#_05B89D: LDA.w .anim_step,Y
#_05B8A0: STA.w $0DC0,X

#_05B8A3: LDA.w $0F50,X
#_05B8A6: AND.b #$BF
#_05B8A8: ORA.w .flip,Y
#_05B8AB: STA.w $0F50,X

#_05B8AE: JSL SpriteDraw_SingleLarge_long

#_05B8B2: RTS

;===================================================================================================

Sprite_4C_Geldman:
#_05B8B3: LDA.w $0D80,X
#_05B8B6: CMP.b #$02
#_05B8B8: BCS .do_indeed_draw

#_05B8BA: JSL Sprite_PrepOAMCoord_long
#_05B8BE: BRA .continue

.do_indeed_draw
#_05B8C0: JSR SpriteDraw_Geldman

.continue
#_05B8C3: JSR Sprite_CheckIfActive_Bank05
#_05B8C6: JSR Sprite_CheckIfRecoiling_Bank05

#_05B8C9: LDA.b #$01
#_05B8CB: STA.w $0BA0,X

#_05B8CE: LDA.w $0D80,X

#_05B8D1: REP #$30

#_05B8D3: AND.w #$00FF
#_05B8D6: ASL A
#_05B8D7: TAY

#_05B8D8: LDA.w .vectors,Y
#_05B8DB: DEC A
#_05B8DC: PHA

#_05B8DD: SEP #$30

#_05B8DF: RTS

;---------------------------------------------------------------------------------------------------

.vectors
#_05B8E0: dw Geldman_Hiding
#_05B8E2: dw Geldman_WaitForLink
#_05B8E4: dw Geldman_Ambush
#_05B8E6: dw Geldman_Chase
#_05B8E8: dw Geldman_Retreat

;===================================================================================================

Geldman_Hiding:
#_05B8EA: LDA.w $0DF0,X
#_05B8ED: BNE .exit

#_05B8EF: LDA.w $0D90,X
#_05B8F2: STA.w $0D10,X

#_05B8F5: LDA.w $0DA0,X
#_05B8F8: STA.w $0D30,X

#_05B8FB: LDA.w $0DB0,X
#_05B8FE: STA.w $0D00,X

#_05B901: LDA.w $0EB0,X
#_05B904: STA.w $0D20,X

#_05B907: INC.w $0D80,X

.exit
#_05B90A: RTS

;===================================================================================================

Geldman_WaitForLink:
#_05B90B: TXA
#_05B90C: EOR.b $1A
#_05B90E: AND.b #$07
#_05B910: BNE .dont_pounce

#_05B912: REP #$20

#_05B914: LDA.b $22
#_05B916: SEC
#_05B917: SBC.w $0FD8
#_05B91A: CLC
#_05B91B: ADC.w #$0030

#_05B91E: CMP.w #$0060
#_05B921: BCS .dont_pounce

#_05B923: LDA.b $20
#_05B925: SEC
#_05B926: SBC.w $0FDA
#_05B929: CLC
#_05B92A: ADC.w #$0030

#_05B92D: CMP.w #$0060
#_05B930: BCS .dont_pounce

#_05B932: SEP #$20

#_05B934: INC.w $0D80,X

#_05B937: LDA.b #$1F
#_05B939: STA.w $0DF0,X

.dont_pounce
#_05B93C: SEP #$20

#_05B93E: RTS

;===================================================================================================

Geldman_Ambush:
#_05B93F: LDA.w $0DF0,X
#_05B942: BNE .delay

#_05B944: INC.w $0D80,X

#_05B947: LDA.b #$60
#_05B949: STA.w $0DF0,X

#_05B94C: LDA.b #$10
#_05B94E: JSL Sprite_ApplySpeedTowardsLink_long

#_05B952: RTS

.delay
#_05B953: LSR A
#_05B954: LSR A
#_05B955: TAY

#_05B956: LDA.w .anim_step,Y
#_05B959: STA.w $0DC0,X

#_05B95C: RTS

;---------------------------------------------------------------------------------------------------

.anim_step
#_05B95D: db $03, $02, $00, $00, $00, $00, $00, $00

;===================================================================================================

pool Geldman_Chase

.anim_step
#_05B965: db $04, $05

pool off

;===================================================================================================

pool Geldman_Retreat

.anim_step
#_05B967: db $00, $01, $02, $03, $03

pool off

;===================================================================================================

Geldman_Chase:
#_05B96C: STZ.w $0BA0,X

#_05B96F: LDA.w $0DF0,X
#_05B972: BNE .delay

#_05B974: INC.w $0D80,X

#_05B977: LDA.b #$08
#_05B979: STA.w $0DF0,X

#_05B97C: RTS

.delay
#_05B97D: LSR A
#_05B97E: LSR A
#_05B97F: AND.b #$01
#_05B981: TAY

#_05B982: LDA.w Geldman_Chase_anim_step,Y
#_05B985: STA.w $0DC0,X

#_05B988: JSR Sprite_CheckDamageToAndFromLink_Bank05
#_05B98B: JSR Sprite_Move_XY_Bank05

#_05B98E: RTS

;===================================================================================================

Geldman_Retreat:
#_05B98F: LDA.w $0DF0,X
#_05B992: BNE .delay

#_05B994: STZ.w $0D80,X

#_05B997: LDA.b #$10
#_05B999: STA.w $0DF0,X

#_05B99C: RTS

.delay
#_05B99D: LSR A
#_05B99E: TAY

#_05B99F: LDA.w Geldman_Retreat_anim_step,Y
#_05B9A2: STA.w $0DC0,X

#_05B9A5: RTS

;===================================================================================================

pool SpriteDraw_Geldman

.offset_x
#_05B9A6: dw   4,   4,   4
#_05B9AC: dw   4,   4,   4
#_05B9B2: dw  -8,   8,   8
#_05B9B8: dw  -8,   8,   8
#_05B9BE: dw -16,   0,  16
#_05B9C4: dw -16,   0,  16

.offset_y
#_05B9CA: dw   8,   8,   8
#_05B9D0: dw   8,   8,   8
#_05B9D6: dw   4,   4,   4
#_05B9DC: dw   0,   0,   0
#_05B9E2: dw   0,   0,   0
#_05B9E8: dw   0,   0,   0

.char
#_05B9EE: db $B8, $B8, $B8
#_05B9F1: db $B8, $B8, $B8
#_05B9F4: db $A6, $A6, $A6
#_05B9F7: db $A6, $A6, $A6
#_05B9FA: db $A4, $A2, $A0
#_05B9FD: db $A0, $A2, $A4

.prop
#_05BA00: db $00, $00, $00
#_05BA03: db $40, $40, $40
#_05BA06: db $00, $40, $40
#_05BA09: db $00, $40, $40
#_05BA0C: db $40, $40, $40
#_05BA0F: db $00, $00, $00

.size
#_05BA12: db $00, $00, $00
#_05BA15: db $00, $00, $00
#_05BA18: db $02, $02, $02
#_05BA1B: db $02, $02, $02
#_05BA1E: db $02, $02, $02
#_05BA21: db $02, $02, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Geldman:
#_05BA24: JSR Sprite_PrepOAMCoord_Bank05

#_05BA27: LDA.w $0DC0,X
#_05BA2A: ASL A
#_05BA2B: ADC.w $0DC0,X
#_05BA2E: STA.b $06

#_05BA30: PHX

#_05BA31: LDX.b #$02

.next_object
#_05BA33: PHX

#_05BA34: TXA
#_05BA35: CLC
#_05BA36: ADC.b $06
#_05BA38: PHA

#_05BA39: ASL A
#_05BA3A: TAX

#_05BA3B: REP #$20

#_05BA3D: LDA.b $00
#_05BA3F: CLC
#_05BA40: ADC.w .offset_x,X
#_05BA43: STA.b ($90),Y

#_05BA45: AND.w #$0100
#_05BA48: STA.b $0E

#_05BA4A: LDA.b $02
#_05BA4C: CLC
#_05BA4D: ADC.w .offset_y,X

#_05BA50: INY
#_05BA51: STA.b ($90),Y

#_05BA53: CLC
#_05BA54: ADC.w #$0010
#_05BA57: CMP.w #$0100

#_05BA5A: SEP #$20
#_05BA5C: BCC .on_screen

#_05BA5E: LDA.b #$F0
#_05BA60: STA.b ($90),Y

.on_screen
#_05BA62: PLX

#_05BA63: LDA.w .char,X
#_05BA66: INY
#_05BA67: STA.b ($90),Y

#_05BA69: LDA.w .prop,X
#_05BA6C: INY
#_05BA6D: ORA.b $05
#_05BA6F: STA.b ($90),Y

#_05BA71: PHY

#_05BA72: TYA
#_05BA73: LSR A
#_05BA74: LSR A
#_05BA75: TAY

#_05BA76: LDA.w .size,X
#_05BA79: ORA.b $0F
#_05BA7B: STA.b ($92),Y

#_05BA7D: PLY
#_05BA7E: INY

#_05BA7F: PLX
#_05BA80: DEX
#_05BA81: BPL .next_object

#_05BA83: PLX

#_05BA84: RTS

;===================================================================================================

Sprite_4D_Toppo:
#_05BA85: LDA.w $0D80,X
#_05BA88: BEQ .hidden

#_05BA8A: LDA.w $0B89,X
#_05BA8D: ORA.b #$30
#_05BA8F: STA.w $0B89,X

#_05BA92: JSR SpriteDraw_Toppo

.hidden
#_05BA95: JSR Sprite_CheckIfActive_Bank05

#_05BA98: LDA.w $0D80,X

#_05BA9B: REP #$30

#_05BA9D: AND.w #$00FF
#_05BAA0: ASL A
#_05BAA1: TAY

#_05BAA2: LDA.w .vectors,Y
#_05BAA5: DEC A
#_05BAA6: PHA

#_05BAA7: SEP #$30

#_05BAA9: RTS

;---------------------------------------------------------------------------------------------------

.vectors
#_05BAAA: dw Toppo_Hiding
#_05BAAC: dw Toppo_RustleGrass
#_05BAAE: dw Toppo_PokingOut
#_05BAB0: dw Toppo_Leaping
#_05BAB2: dw Toppo_Retreat
#_05BAB4: dw Toppo_Flustered_bounce

;===================================================================================================

pool Toppo_Hiding

.offset_x_low
#_05BAB6: db -32,  32,   0,   0

.offset_x_high
#_05BABA: db  -1,   0,   0,   0

.offset_y_low
#_05BABE: db   0,   0, -32,  32

.offset_y_high
#_05BAC2: db   0,   0,  -1,   0

pool off

;---------------------------------------------------------------------------------------------------

Toppo_Hiding:
#_05BAC6: LDA.w $0DF0,X
#_05BAC9: BNE .exit

#_05BACB: INC.w $0D80,X

#_05BACE: LDA.b #$08
#_05BAD0: STA.w $0DF0,X

#_05BAD3: JSL GetRandomNumber
#_05BAD7: AND.b #$03
#_05BAD9: TAY

#_05BADA: LDA.w $0D90,X
#_05BADD: CLC
#_05BADE: ADC.w .offset_x_low,Y
#_05BAE1: STA.w $0D10,X

#_05BAE4: LDA.w $0DA0,X
#_05BAE7: ADC.w .offset_x_high,Y
#_05BAEA: STA.w $0D30,X

#_05BAED: LDA.w $0DB0,X
#_05BAF0: CLC
#_05BAF1: ADC.w .offset_y_low,Y
#_05BAF4: STA.w $0D00,X

#_05BAF7: LDA.w $0EB0,X
#_05BAFA: ADC.w .offset_y_high,Y
#_05BAFD: STA.w $0D20,X

.exit
#_05BB00: RTS

;===================================================================================================

Toppo_RustleGrass:
#_05BB01: LDA.w $0DF0,X
#_05BB04: BNE .delay

#_05BB06: INC.w $0D80,X

#_05BB09: LDA.b #$10
#_05BB0B: STA.w $0DF0,X

#_05BB0E: RTS

.delay
#_05BB0F: LSR A
#_05BB10: LSR A
#_05BB11: AND.b #$01
#_05BB13: STA.w $0DC0,X

#_05BB16: JSR Toppo_VerifyTile

#_05BB19: RTS

;===================================================================================================

Toppo_PokingOut:
#_05BB1A: LDA.w $0DF0,X
#_05BB1D: BNE .delay

#_05BB1F: INC.w $0D80,X

#_05BB22: LDA.b #$40
#_05BB24: STA.w $0F80,X

.delay
#_05BB27: LDA.b #$02
#_05BB29: STA.w $0DC0,X

#_05BB2C: JSR Toppo_VerifyTile

#_05BB2F: RTS

;===================================================================================================

Toppo_Leaping:
#_05BB30: JSR Sprite_CheckDamageToAndFromLink_Bank05
#_05BB33: JSR Sprite_Move_Z_Bank05

#_05BB36: LDA.w $0F80,X
#_05BB39: SEC
#_05BB3A: SBC.b #$02
#_05BB3C: STA.w $0F80,X

#_05BB3F: LDA.w $0F70,X
#_05BB42: BPL .exit

#_05BB44: STZ.w $0F70,X

#_05BB47: INC.w $0D80,X

#_05BB4A: LDA.b #$10
#_05BB4C: STA.w $0DF0,X

#_05BB4F: JSR Toppo_VerifyTile

.exit
#_05BB52: RTS

;===================================================================================================

Toppo_Retreat:
#_05BB53: LDA.w $0DF0,X
#_05BB56: BNE .delay

#_05BB58: STZ.w $0D80,X

#_05BB5B: LDA.b #$20
#_05BB5D: STA.w $0DF0,X

#_05BB60: BRA .continue

.delay
#_05BB62: LSR A
#_05BB63: LSR A
#_05BB64: AND.b #$01
#_05BB66: STA.w $0DC0,X

.continue
#_05BB69: JSR Toppo_VerifyTile

#_05BB6C: RTS

;===================================================================================================

Toppo_Flustered_bounce:
#_05BB6D: JSL Toppo_Flustered

#_05BB71: RTS

;===================================================================================================

Toppo_VerifyTile:
#_05BB72: LDA.w $0D00,X
#_05BB75: STA.b $00

#_05BB77: LDA.w $0D20,X
#_05BB7A: STA.b $01

#_05BB7C: LDA.w $0D10,X
#_05BB7F: STA.b $02

#_05BB81: LDA.w $0D30,X
#_05BB84: STA.b $03

#_05BB86: LDA.b #$00
#_05BB88: JSL GetTileAttribute_long

#_05BB8C: CMP.b #$40
#_05BB8E: BEQ .exit

#_05BB90: LDA.b #$05
#_05BB92: STA.w $0D80,X

.exit
#_05BB95: RTS

;===================================================================================================

pool SpriteDraw_Toppo

.offset_x
#_05BB96: dw   0,   8,   8
#_05BB9C: dw   0,   8,   8
#_05BBA2: dw   0,   0,   8
#_05BBA8: dw   0,   0,   0
#_05BBAE: dw   0,   0,   0

.offset_y
#_05BBB4: dw   8,   8,   8
#_05BBBA: dw   8,   8,   8
#_05BBC0: dw   0,   8,   8
#_05BBC6: dw   0,   0,   0
#_05BBCC: dw   0,   0,   0

.char
#_05BBD2: db $C8, $C8, $C8
#_05BBD5: db $CA, $CA, $CA
#_05BBD8: db $C0, $C8, $C8
#_05BBDB: db $C2, $C2, $C2
#_05BBDE: db $C2, $C2, $C2

.flip
#_05BBE1: db $00, $40, $40
#_05BBE4: db $00, $40, $40
#_05BBE7: db $00, $00, $40
#_05BBEA: db $00, $00, $00
#_05BBED: db $40, $40, $40

.size
#_05BBF0: db $00, $00, $00
#_05BBF3: db $00, $00, $00
#_05BBF6: db $02, $00, $00
#_05BBF9: db $02, $02, $02
#_05BBFC: db $02, $02, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Toppo:
#_05BBFF: JSR Sprite_PrepOAMCoord_Bank05

#_05BC02: LDA.w $0D00,X
#_05BC05: SEC
#_05BC06: SBC.b $E8
#_05BC08: STA.b $06

#_05BC0A: LDA.w $0D20,X
#_05BC0D: SBC.b $E9
#_05BC0F: STA.b $07

#_05BC11: LDA.w $0DC0,X
#_05BC14: ASL A
#_05BC15: ADC.w $0DC0,X
#_05BC18: STA.b $08

#_05BC1A: PHX

#_05BC1B: LDX.b #$02

.next_object
#_05BC1D: PHX

#_05BC1E: TXA
#_05BC1F: CLC
#_05BC20: ADC.b $08
#_05BC22: PHA

#_05BC23: TAX

#_05BC24: LDA.w .size,X
#_05BC27: STA.b $0C

#_05BC29: TXA
#_05BC2A: ASL A
#_05BC2B: TAX

#_05BC2C: REP #$20

#_05BC2E: LDA.b $00
#_05BC30: CLC
#_05BC31: ADC.w .offset_x,X
#_05BC34: STA.b ($90),Y

#_05BC36: AND.w #$0100
#_05BC39: STA.b $0E

#_05BC3B: PHX

#_05BC3C: LDX.b $0C
#_05BC3E: CPX.b #$01

#_05BC40: PLX

#_05BC41: LDA.b $02
#_05BC43: BCS .large_object_a

#_05BC45: LDA.b $06

.large_object_a
#_05BC47: CLC
#_05BC48: ADC.w .offset_y,X

#_05BC4B: INY
#_05BC4C: STA.b ($90),Y

#_05BC4E: CLC
#_05BC4F: ADC.w #$0010
#_05BC52: CMP.w #$0100

#_05BC55: SEP #$20
#_05BC57: BCC .on_screen

#_05BC59: LDA.b #$F0
#_05BC5B: STA.b ($90),Y

.on_screen
#_05BC5D: PLX

#_05BC5E: LDA.w .char,X
#_05BC61: INY
#_05BC62: STA.b ($90),Y

#_05BC64: LDA.b $0C
#_05BC66: CMP.b #$01

#_05BC68: LDA.w .flip,X
#_05BC6B: ORA.b $05
#_05BC6D: BCS .toppo_part

#_05BC6F: AND.b #$F0
#_05BC71: ORA.b #$02

;---------------------------------------------------------------------------------------------------

.toppo_part
#_05BC73: INY
#_05BC74: STA.b ($90),Y

#_05BC76: PHY

#_05BC77: TYA
#_05BC78: LSR A
#_05BC79: LSR A
#_05BC7A: TAY

#_05BC7B: LDA.b $0C
#_05BC7D: ORA.b $0F
#_05BC7F: STA.b ($92),Y

#_05BC81: PLY
#_05BC82: INY

#_05BC83: PLX
#_05BC84: DEX
#_05BC85: BPL .next_object

#_05BC87: PLX

#_05BC88: RTS

;===================================================================================================

UNREACHABLE_05BC89:
#_05BC89: RTS

;===================================================================================================

GreenKnifeGuardSpeedX:
#_05BC8A: db  12, -12,   0,   0,  18, -18,   0,   0

GreenKnifeGuardSpeedY:
#_05BC92: db   0,   0,  12, -12,   0,   0,  18, -18

;===================================================================================================

ZoraAndGuardAnimationState:
#_05BC9A: db $00, $02, $04, $06, $01, $03, $05, $07

;===================================================================================================

Sprite_4B_GreenKnifeGuard:
#_05BCA2: LDA.w $0E80,X
#_05BCA5: AND.b #$08
#_05BCA7: LSR A
#_05BCA8: ADC.w $0DE0,X
#_05BCAB: TAY

#_05BCAC: LDA.w ZoraAndGuardAnimationState,Y
#_05BCAF: STA.w $0DC0,X

#_05BCB2: JSR SpriteDraw_GreenKnifeGuard

#_05BCB5: JSR Sprite_CheckIfActive_Bank05
#_05BCB8: JSR Sprite_CheckIfRecoiling_Bank05

#_05BCBB: JSR Sprite_CheckDamageToAndFromLink_Bank05

#_05BCBE: JSR Sprite_Move_XY_Bank05
#_05BCC1: JSR Sprite_CheckTileCollision_Bank05

#_05BCC4: LDA.w $0D80,X
#_05BCC7: BNE GreenKnifeGuard_Moving

;===================================================================================================

GreenKnifeGuard_Idle:
#_05BCC9: LDA.w $0DF0,X
#_05BCCC: BNE .exit

#_05BCCE: JSL GetRandomNumber
#_05BCD2: AND.b #$3F
#_05BCD4: ADC.b #$30
#_05BCD6: STA.w $0DF0,X

#_05BCD9: INC.w $0D80,X

#_05BCDC: LDA.w $0EB0,X
#_05BCDF: STA.w $0DE0,X

#_05BCE2: JSR Sprite_DirectionToFaceLink_Bank05

#_05BCE5: TYA

#_05BCE6: LDY.w $0DE0,X
#_05BCE9: CMP.w $0DE0,X
#_05BCEC: BNE .dont_speed_up

#_05BCEE: LDA.b $0E
#_05BCF0: CLC
#_05BCF1: ADC.b #$10
#_05BCF3: CMP.b #$20
#_05BCF5: BCC .speed_up

#_05BCF7: LDA.b $0F
#_05BCF9: CLC
#_05BCFA: ADC.b #$10
#_05BCFC: CMP.b #$20
#_05BCFE: BCS .dont_speed_up

.speed_up
#_05BD00: INY ; +4
#_05BD01: INY
#_05BD02: INY
#_05BD03: INY

#_05BD04: LDA.b #$80
#_05BD06: STA.w $0DF0,X

.dont_speed_up
#_05BD09: LDA.w GreenKnifeGuardSpeedX,Y
#_05BD0C: STA.w $0D50,X

#_05BD0F: LDA.w GreenKnifeGuardSpeedY,Y
#_05BD12: STA.w $0D40,X

.exit
#_05BD15: RTS

;===================================================================================================

pool GreenKnifeGuard_Moving

.direction
#_05BD16: db $02, $03
#_05BD18: db $02, $03
#_05BD1A: db $00, $01
#_05BD1C: db $00, $01

pool off

;---------------------------------------------------------------------------------------------------

GreenKnifeGuard_Moving:
#_05BD1E: LDA.b #$10

#_05BD20: LDY.w $0E70,X
#_05BD23: BNE .tile_collision

#_05BD25: LDA.w $0DF0,X
#_05BD28: BNE .moving

#_05BD2A: LDA.b #$30

.tile_collision
#_05BD2C: STA.w $0DF0,X

#_05BD2F: JSR Sprite_ZeroVelocity_XY_Bank05

#_05BD32: JSL GetRandomNumber
#_05BD36: AND.b #$01
#_05BD38: STA.b $00

#_05BD3A: LDA.w $0DE0,X
#_05BD3D: ASL A
#_05BD3E: ORA.b $00
#_05BD40: TAY

#_05BD41: LDA.w .direction,Y
#_05BD44: STA.w $0EB0,X

#_05BD47: STZ.w $0D80,X

.moving
#_05BD4A: LDA.w $0E00,X
#_05BD4D: BEQ ZoraAndGuardAdvanceAnimation

#_05BD4F: INC.w $0E80,X

;===================================================================================================

ZoraAndGuardAdvanceAnimation:
#_05BD52: INC.w $0E80,X

#_05BD55: RTS

;===================================================================================================

UNREACHABLE_05BD56:
#_05BD56: db $82, $82, $80, $84
#_05BD5A: db $40, $00, $00, $00

;===================================================================================================

pool SpriteDraw_GreenKnifeGuard

.offset_x
#_05BD5E: dw   2,   2,  -2,  -2
#_05BD66: dw   0,   0,   0,   0

.char
#_05BD6E: db $8A, $8C, $8A, $8C
#_05BD72: db $86, $88, $8E, $A0

.flip
#_05BD76: db $40, $40, $00, $00
#_05BD7A: db $00, $00, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_GreenKnifeGuard:
#_05BD7E: JSR Sprite_PrepOAMCoord_Bank05

#_05BD81: LDA.w $0DC0,X
#_05BD84: STA.b $06

#_05BD86: PHX

#_05BD87: LDA.w $0EB0,X
#_05BD8A: TAX

#_05BD8B: REP #$20

#_05BD8D: LDA.b $00
#_05BD8F: STA.b ($90),Y

#_05BD91: AND.w #$0100
#_05BD94: STA.b $0E

#_05BD96: LDA.b $02
#_05BD98: SEC
#_05BD99: SBC.w #$000B

#_05BD9C: INY
#_05BD9D: STA.b ($90),Y

#_05BD9F: CLC
#_05BDA0: ADC.w #$0010
#_05BDA3: CMP.w #$0100
#_05BDA6: BCC .on_screen

#_05BDA8: LDA.w #$00F0
#_05BDAB: STA.b ($90),Y

.on_screen
#_05BDAD: SEP #$20

#_05BDAF: LDA.w GuardHeadChar,X
#_05BDB2: INY
#_05BDB3: STA.b ($90),Y

#_05BDB5: LDA.w GuardHeadProp,X
#_05BDB8: INY
#_05BDB9: ORA.b $05
#_05BDBB: STA.b ($90),Y

#_05BDBD: LDA.b #$02
#_05BDBF: ORA.b $0F
#_05BDC1: STA.b ($92)

;---------------------------------------------------------------------------------------------------

#_05BDC3: LDA.b $06
#_05BDC5: PHA

#_05BDC6: ASL A
#_05BDC7: TAX

#_05BDC8: REP #$20

#_05BDCA: LDA.b $00
#_05BDCC: CLC
#_05BDCD: ADC.w .offset_x,X

#_05BDD0: INY
#_05BDD1: STA.b ($90),Y

#_05BDD3: AND.w #$0100
#_05BDD6: STA.b $0E

#_05BDD8: LDA.b $02
#_05BDDA: INY
#_05BDDB: STA.b ($90),Y

#_05BDDD: CLC
#_05BDDE: ADC.w #$0010
#_05BDE1: CMP.w #$0100
#_05BDE4: BCC .body_on_screen

#_05BDE6: LDA.w #$00F0
#_05BDE9: STA.b ($90),Y

.body_on_screen
#_05BDEB: SEP #$20

#_05BDED: PLX

#_05BDEE: LDA.w .char,X
#_05BDF1: INY
#_05BDF2: STA.b ($90),Y

#_05BDF4: LDA.w .flip,X
#_05BDF7: ORA.b $05
#_05BDF9: INY
#_05BDFA: STA.b ($90),Y

#_05BDFC: LDY.b #$01

#_05BDFE: LDA.b #$02
#_05BE00: ORA.b $0F
#_05BE02: STA.b ($92),Y

#_05BE04: PLX

#_05BE05: JSL SpriteDraw_Shadow_long

#_05BE09: RTS

;===================================================================================================

Sprite_4A_BombGuard:
#_05BE0A: LDA.w $0DB0,X
#_05BE0D: BNE SpriteBomb

#_05BE0F: JMP.w BombGuard

;===================================================================================================

SpriteBomb:
#_05BE12: CMP.b #$02
#_05BE14: BCS .explosion_imminent

#_05BE16: JMP.w SpriteBomb_ExplosionIncoming

.explosion_imminent
#_05BE19: BNE SpriteBomb_Exploding

#_05BE1B: LDY.b #$0F

.check_next_sprite
#_05BE1D: CPY.w $0FA0
#_05BE20: BEQ .no_damage

#_05BE22: LDA.w $0DD0,Y
#_05BE25: CMP.b #$09
#_05BE27: BCC .no_damage

#_05BE29: TYA
#_05BE2A: EOR.b $1A
#_05BE2C: AND.b #$07
#_05BE2E: ORA.w $0EF0,Y
#_05BE31: BNE .no_damage

#_05BE33: JSR SpriteBomb_CheckDamageToSprite

.no_damage
#_05BE36: DEY
#_05BE37: BPL .check_next_sprite

#_05BE39: JSL Sprite_CheckDamageToLink_long

;===================================================================================================

SpriteBomb_Exploding:
#_05BE3D: JSR SpriteDraw_SpriteBombExplosion

#_05BE40: LDA.w $0E00,X
#_05BE43: BNE .exit

#_05BE45: STZ.w $0DD0,X

.exit
#_05BE48: RTS

;===================================================================================================

SpriteBomb_CheckDamageToSprite:
#_05BE49: LDA.w $0D10,X
#_05BE4C: SEC
#_05BE4D: SBC.b #$10
#_05BE4F: STA.b $00

#_05BE51: LDA.w $0D30,X
#_05BE54: SBC.b #$00
#_05BE56: STA.b $08

#_05BE58: LDA.b #$30
#_05BE5A: STA.b $02
#_05BE5C: STA.b $03

#_05BE5E: LDA.w $0D00,X
#_05BE61: SEC
#_05BE62: SBC.b #$10
#_05BE64: STA.b $01

#_05BE66: LDA.w $0D20,X
#_05BE69: SBC.b #$00
#_05BE6B: STA.b $09

#_05BE6D: PHX
#_05BE6E: TYX

#_05BE6F: JSL Sprite_SetupHitbox_long

#_05BE73: PLX

#_05BE74: JSL CheckIfHitBoxesOverlap_long
#_05BE78: BCC .no_damage

#_05BE7A: LDA.w $0E20,Y
#_05BE7D: CMP.b #!SPRITE_11
#_05BE7F: BEQ .no_damage

#_05BE81: PHX
#_05BE82: TYX
#_05BE83: PHY

#_05BE84: LDA.b #$08
#_05BE86: JSL Ancilla_CheckDamageToSprite_preset

#_05BE8A: PLY
#_05BE8B: PLX

#_05BE8C: LDA.w $0D10,X
#_05BE8F: STA.b $00

#_05BE91: LDA.w $0D30,X
#_05BE94: STA.b $01

#_05BE96: LDA.w $0D00,X
#_05BE99: SEC
#_05BE9A: SBC.w $0F70,X
#_05BE9D: STA.b $02

#_05BE9F: LDA.w $0D20,X
#_05BEA2: SBC.b #$00
#_05BEA4: STA.b $03

#_05BEA6: LDA.w $0D10,Y
#_05BEA9: STA.b $04

#_05BEAB: LDA.w $0D30,Y
#_05BEAE: STA.b $05

#_05BEB0: LDA.w $0D00,Y
#_05BEB3: SEC
#_05BEB4: SBC.w $0F70,Y
#_05BEB7: STA.b $06

#_05BEB9: LDA.w $0D20,Y
#_05BEBC: SBC.b #$00
#_05BEBE: STA.b $07

#_05BEC0: PHY

#_05BEC1: LDA.b #$20
#_05BEC3: JSL Sprite_ProjectSpeedTowardsLocation_long

#_05BEC7: PLY

#_05BEC8: LDA.b $00
#_05BECA: STA.w $0F30,Y

#_05BECD: LDA.b $01
#_05BECF: STA.w $0F40,Y

.no_damage
#_05BED2: RTS

;===================================================================================================

SpriteBomb_ExplosionIncoming:
#_05BED3: LDA.w $0E90,X ; TODO come back to this
#_05BED6: BEQ .skip_priority_stuff

#_05BED8: LDA.w $0B89,X
#_05BEDB: ORA.b #$30
#_05BEDD: STA.w $0B89,X

.skip_priority_stuff
#_05BEE0: JSL SpriteDraw_SingleLarge_long

#_05BEE4: LDA.w $0EF0,X
#_05BEE7: BNE .explode_immediately

#_05BEE9: LDA.w $0E00,X
#_05BEEC: CMP.b #$40
#_05BEEE: BCS .still_flashing

#_05BEF0: CMP.b #$01
#_05BEF2: BNE .dont_explode

.explode_immediately
#_05BEF4: STZ.w $0EF0,X

#_05BEF7: LDA.w $0DD0,X
#_05BEFA: CMP.b #$0A
#_05BEFC: BNE .not_carried

#_05BEFE: STZ.w $0309
#_05BF01: STZ.w $0308

.not_carried
#_05BF04: LDA.b #!SFX2_0C
#_05BF06: JSL SpriteSFX_QueueSFX2WithPan

#_05BF0A: INC.w $0DB0,X

#_05BF0D: LDA.b #$09
#_05BF0F: STA.w $0F60,X

#_05BF12: LDA.b #$02
#_05BF14: STA.w $0F50,X

#_05BF17: LDA.b #$1F
#_05BF19: STA.w $0E00,X

#_05BF1C: LDA.b #$06
#_05BF1E: STA.w $0DD0,X

#_05BF21: LDA.b #$03
#_05BF23: STA.w $0E40,X

#_05BF26: RTS

.dont_explode
#_05BF27: LSR A
#_05BF28: AND.b #$0E
#_05BF2A: STA.b $00

#_05BF2C: LDA.w $0F50,X
#_05BF2F: AND.b #$F1
#_05BF31: ORA.b $00
#_05BF33: STA.w $0F50,X

;---------------------------------------------------------------------------------------------------

.still_flashing
#_05BF36: JSR Sprite_CheckIfActive_Bank05

#_05BF39: LDA.w $0EE0,X
#_05BF3C: BNE .dont_check_for_hit

#_05BF3E: JSL Sprite_CheckDamageFromLink_long

.dont_check_for_hit
#_05BF42: JSR Sprite_Move_XY_Bank05

#_05BF45: LDA.b $1B
#_05BF47: BEQ .outdoors

#_05BF49: JSR Sprite_CheckTileCollision_Bank05

.outdoors
#_05BF4C: JSL ThrownSprite_TileAndSpriteInteraction_long

#_05BF50: RTS

;===================================================================================================

BombGuard:
#_05BF51: JSR SpriteDraw_BombGuard

#_05BF54: JSR Sprite_CheckIfActive_Bank05
#_05BF57: JSR Sprite_CheckDamageToAndFromLink_Bank05

#_05BF5A: JSR Sprite_DirectionToFaceLink_Bank05

#_05BF5D: TYA
#_05BF5E: STA.w $0DE0,X
#_05BF61: STA.w $0EB0,X

#_05BF64: LDA.w $0D80,X
#_05BF67: BNE BombGuard_TossingBomb

;===================================================================================================

BombGuard_Idle:
#_05BF69: LDA.w $0DF0,X
#_05BF6C: BNE .exit

#_05BF6E: INC.w $0D80,X

#_05BF71: LDA.b #$70
#_05BF73: STA.w $0DF0,X

.exit
#_05BF76: RTS

;===================================================================================================

BombGuard_TossingBomb:
#_05BF77: LDA.w $0DF0,X
#_05BF7A: BNE .delay

#_05BF7C: STZ.w $0D80,X

#_05BF7F: LDA.b #$20

#_05BF81: STA.w $0DF0,X

#_05BF84: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_05BF85: STZ.w $0E80,X

#_05BF88: CMP.b #$50
#_05BF8A: BCC .arm_down

#_05BF8C: INC.w $0E80,X

.arm_down
#_05BF8F: CMP.b #$20
#_05BF91: BNE .dont_spawn_bomb

#_05BF93: PHA

#_05BF94: JSR BombGuard_CreateBomb

#_05BF97: PLA

.dont_spawn_bomb
#_05BF98: LSR A
#_05BF99: LSR A
#_05BF9A: LSR A
#_05BF9B: LSR A
#_05BF9C: STA.b $00

#_05BF9E: LDA.w $0DE0,X
#_05BFA1: ASL A
#_05BFA2: ASL A
#_05BFA3: ASL A
#_05BFA4: ORA.b $00

#_05BFA6: CLC
#_05BFA7: ADC.b #$20
#_05BFA9: TAY

#_05BFAA: LDA.w SomeGuardAnimStates,Y
#_05BFAD: STA.w $0DC0,X

#_05BFB0: RTS

;===================================================================================================

pool BombGuard_CreateBomb

.offset_x_low
#_05BFB1: db   0,   1,   9,  -8

.offset_x_high
#_05BFB5: db   0,   0,   0,  -1

.offset_y_low
#_05BFB9: db -12, -12, -15, -13

.offset_y_high
#_05BFBD: db  -1,  -1,  -1,  -1

pool off

;---------------------------------------------------------------------------------------------------

BombGuard_CreateBomb:
#_05BFC1: LDA.b #!SPRITE_4A
#_05BFC3: JSL Sprite_SpawnDynamically
#_05BFC7: BMI .exit

#_05BFC9: PHX

#_05BFCA: LDA.w $0DE0,X
#_05BFCD: TAX

#_05BFCE: LDA.b $00
#_05BFD0: CLC
#_05BFD1: ADC.w .offset_x_low,X
#_05BFD4: STA.w $0D10,Y

#_05BFD7: LDA.b $01
#_05BFD9: ADC.w .offset_x_high,X
#_05BFDC: STA.w $0D30,Y

#_05BFDF: LDA.b $02
#_05BFE1: CLC
#_05BFE2: ADC.w .offset_y_low,X
#_05BFE5: STA.w $0D00,Y

#_05BFE8: LDA.b $03
#_05BFEA: ADC.w .offset_y_high,X
#_05BFED: STA.w $0D20,Y

#_05BFF0: TYX

#_05BFF1: LDA.b #$10
#_05BFF3: JSL Sprite_ApplySpeedTowardsLink_long

#_05BFF7: LDA.b #$01
#_05BFF9: STA.w $0DB0,X

#_05BFFC: JSR Sprite_DirectionToFaceLink_Bank05

#_05BFFF: LDA.b $0F
#_05C001: BPL .positive_x

#_05C003: EOR.b #$FF
#_05C005: INC A

.positive_x
#_05C006: STA.b $0F

#_05C008: LDA.b $0E
#_05C00A: BPL .positive_y

#_05C00C: EOR.b #$FF
#_05C00E: INC A

.positive_y
#_05C00F: ORA.b $0F
#_05C011: LSR A ; /16
#_05C012: LSR A
#_05C013: LSR A
#_05C014: LSR A
#_05C015: TAY

#_05C016: LDA.w .z_speed,Y
#_05C019: STA.w $0F80,X

#_05C01C: LDA.w $0E60,X
#_05C01F: AND.b #$EE
#_05C021: ORA.b #$18
#_05C023: STA.w $0E60,X

#_05C026: LDA.b #$08
#_05C028: STA.w $0F50,X

#_05C02B: LDA.b #$FF
#_05C02D: STA.w $0E00,X

#_05C030: STZ.w $0E50,X

#_05C033: LDA.b #!SFX3_13
#_05C035: JSL SpriteSFX_QueueSFX3WithPan

#_05C039: PLX

.exit
#_05C03A: RTS

;---------------------------------------------------------------------------------------------------

.z_speed
#_05C03B: db  32,  40,  48,  56,  64,  64,  64,  64
#_05C043: db  64,  64,  64,  64,  64,  64,  64,  64

;===================================================================================================

SpriteDraw_BombGuard:
#_05C04B: JSR Sprite_PrepOAMCoord_Bank05

#_05C04E: LDY.b #$08
#_05C050: JSR SpriteDraw_GuardHead

#_05C053: LDY.b #$04
#_05C055: JSR SpriteDraw_GuardBody

#_05C058: LDA.w $0DC0,X
#_05C05B: CMP.b #$14
#_05C05D: BCS .no_arm

#_05C05F: JSR SpriteDraw_BombGuard_Arm

.no_arm
#_05C062: LDA.b #$0A
#_05C064: JSL SpriteDraw_Shadow_custom_long

#_05C068: RTS

;===================================================================================================

pool SpriteDraw_BombGuard_Arm

.offset_x
#_05C069: dw  -1,   1,   2,   0
#_05C071: dw   9,   9,  -8,  -8

.offset_y
#_05C079: dw -12, -12, -12, -12
#_05C081: dw -16, -14, -12, -14

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_BombGuard_Arm:
#_05C089: PHX

#_05C08A: LDA.w $0DE0,X
#_05C08D: ASL A
#_05C08E: ORA.w $0E80,X
#_05C091: ASL A
#_05C092: TAX

#_05C093: REP #$20

#_05C095: LDA.b $00
#_05C097: CLC
#_05C098: ADC.w .offset_x,X

#_05C09B: LDY.b #$00
#_05C09D: STA.b ($90),Y

#_05C09F: AND.w #$0100
#_05C0A2: STA.b $0E

#_05C0A4: LDA.b $02
#_05C0A6: CLC
#_05C0A7: ADC.w .offset_y,X

#_05C0AA: INY
#_05C0AB: STA.b ($90),Y

#_05C0AD: CLC
#_05C0AE: ADC.w #$0010
#_05C0B1: CMP.w #$0100
#_05C0B4: BCC .on_screen

#_05C0B6: LDA.w #$00F0
#_05C0B9: STA.b ($90),Y

.on_screen
#_05C0BB: SEP #$20

#_05C0BD: LDA.b #$6E
#_05C0BF: INY
#_05C0C0: STA.b ($90),Y

#_05C0C2: INY

#_05C0C3: LDA.b $05
#_05C0C5: AND.b #$30
#_05C0C7: ORA.b #$08
#_05C0C9: STA.b ($90),Y

#_05C0CB: LDA.b #$02
#_05C0CD: ORA.b $0F
#_05C0CF: STA.b ($92)

#_05C0D1: PLX

#_05C0D2: RTS

;===================================================================================================

pool SpriteDraw_SpriteBombExplosion

.offset_x
#_05C0D3: db -12,  12, -12,  12
#_05C0D7: db  -8,   8,  -8,   8
#_05C0DB: db  -8,   8,  -8,   8
#_05C0DF: db   0,   0,   0,   0

.offset_y
#_05C0E3: db -12, -12,  12,  12
#_05C0E7: db  -8,  -8,   8,   8
#_05C0EB: db  -8,  -8,   8,   8
#_05C0EF: db   0,   0,   0,   0

.char
#_05C0F3: db $88, $88, $88, $88
#_05C0F7: db $8A, $8A, $8A, $8A
#_05C0FB: db $84, $84, $84, $84
#_05C0FF: db $86, $86, $86, $86

.flip
#_05C103: db $00, $40, $80, $C0
#_05C107: db $00, $40, $80, $C0
#_05C10B: db $00, $40, $80, $C0
#_05C10F: db $00, $00, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_SpriteBombExplosion:
#_05C113: JSR Sprite_PrepOAMCoord_Bank05

#_05C116: LDA.w $0E00,X
#_05C119: LSR A
#_05C11A: AND.b #$0C
#_05C11C: STA.b $06

#_05C11E: PHX

#_05C11F: LDX.b #$03

.next_object
#_05C121: PHX

#_05C122: TXA
#_05C123: CLC
#_05C124: ADC.b $06
#_05C126: TAX

#_05C127: LDA.b $00
#_05C129: CLC
#_05C12A: ADC.w .offset_x,X
#_05C12D: STA.b ($90),Y

#_05C12F: LDA.b $02
#_05C131: CLC
#_05C132: ADC.w .offset_y,X

#_05C135: INY
#_05C136: STA.b ($90),Y

#_05C138: LDA.w .char,X
#_05C13B: INY
#_05C13C: STA.b ($90),Y

#_05C13E: LDA.w .flip,X
#_05C141: ORA.b $05
#_05C143: INY
#_05C144: STA.b ($90),Y

#_05C146: INY

#_05C147: PLX
#_05C148: DEX
#_05C149: BPL .next_object

#_05C14B: PLX

#_05C14C: LDY.b #$02
#_05C14E: LDA.b #$03
#_05C150: JSL Sprite_CorrectOAMEntries_long

#_05C154: RTS

;===================================================================================================

Sprite_41_BlueGuard:
Sprite_42_GreenGuard:
Sprite_43_RedGuard:
#_05C155: LDA.w $0DB0,X
#_05C158: BNE Probe

#_05C15A: JMP.w Guard_Main

;===================================================================================================

Probe:
#_05C15D: LDY.b #$00

#_05C15F: LDA.w $0D50,X
#_05C162: BPL .positive_x

#_05C164: DEY

.positive_x
#_05C165: CLC
#_05C166: ADC.w $0D10,X
#_05C169: STA.w $0D10,X

#_05C16C: TYA
#_05C16D: ADC.w $0D30,X
#_05C170: STA.w $0D30,X

#_05C173: LDY.b #$00

#_05C175: LDA.w $0D40,X
#_05C178: BPL .positive_y

#_05C17A: DEY

.positive_y
#_05C17B: CLC
#_05C17C: ADC.w $0D00,X
#_05C17F: STA.w $0D00,X

#_05C182: TYA
#_05C183: ADC.w $0D20,X
#_05C186: STA.w $0D20,X

#_05C189: LDY.w $0DB0,X

#_05C18C: LDA.w $0E1F,Y
#_05C18F: CMP.b #!SPRITE_CE
#_05C191: BNE .not_from_blind

;---------------------------------------------------------------------------------------------------

#_05C193: REP #$20

#_05C195: LDA.w $0FD8
#_05C198: SEC
#_05C199: SBC.b $22
#_05C19B: CLC
#_05C19C: ADC.w #$0010
#_05C19F: CMP.w #$0020

#_05C1A2: SEP #$20

#_05C1A4: BCS .no_hit_blind

#_05C1A6: REP #$20

#_05C1A8: LDA.b $20
#_05C1AA: SEC
#_05C1AB: SBC.w $0FDA
#_05C1AE: CLC
#_05C1AF: ADC.w #$0018
#_05C1B2: CMP.w #$0020

#_05C1B5: SEP #$20

#_05C1B7: BCS .no_hit_blind

#_05C1B9: JMP.w .made_contact

.no_hit_blind
#_05C1BC: JMP.w .no_contact

;---------------------------------------------------------------------------------------------------

.not_from_blind
#_05C1BF: JSL Probe_CheckTileSolidity
#_05C1C3: BCC .passable

#_05C1C5: LDA.w $0FA5
#_05C1C8: CMP.b #!TILETYPE_09
#_05C1CA: BNE .complete_failure

.passable
#_05C1CC: LDA.w $0055
#_05C1CF: BNE .complete_failure

#_05C1D1: REP #$20

#_05C1D3: LDA.w $0FD8
#_05C1D6: SEC
#_05C1D7: SBC.b $22
#_05C1D9: CMP.w #$0010

#_05C1DC: SEP #$20

#_05C1DE: BCS .no_contact

#_05C1E0: REP #$20

#_05C1E2: LDA.w $0FDA
#_05C1E5: SEC
#_05C1E6: SBC.b $20
#_05C1E8: CMP.w #$0010

#_05C1EB: SEP #$20

#_05C1ED: BCS .no_contact

#_05C1EF: LDA.w $0F20,X
#_05C1F2: CMP.b $EE
#_05C1F4: BNE .no_contact

;---------------------------------------------------------------------------------------------------

.made_contact
#_05C1F6: LDA.w $0DB0,X
#_05C1F9: DEC A

#_05C1FA: PHX

#_05C1FB: TAX

#_05C1FC: LDA.w $0D80,X
#_05C1FF: CMP.b #$03
#_05C201: BEQ .dont_trigger_parent

#_05C203: LDA.b #$03
#_05C205: STA.w $0D80,X

; Don't trigger Blind
#_05C208: LDA.w $0E20,X
#_05C20B: CMP.b #!SPRITE_CE
#_05C20D: BEQ .dont_trigger_parent

#_05C20F: LDA.b #$10
#_05C211: STA.w $0DF0,X

#_05C214: STZ.w $0E80,X

.dont_trigger_parent
#_05C217: PLX

#_05C218: BRA .complete_failure

;---------------------------------------------------------------------------------------------------

.no_contact
#_05C21A: JSR Sprite_PrepOAMCoord_Bank05

#_05C21D: LDA.b $01
#_05C21F: ORA.b $03
#_05C221: BEQ EXIT_05C226

.complete_failure
#_05C223: STZ.w $0DD0,X

;---------------------------------------------------------------------------------------------------

#EXIT_05C226:
#_05C226: RTS

;===================================================================================================

Guard_Main:
#_05C227: LDA.w $0DC0,X
#_05C22A: PHA

#_05C22B: LDY.w $0DE0,X
#_05C22E: PHY

#_05C22F: LDA.w $0E00,X
#_05C232: BEQ .looking_around

#_05C234: LDA.w SpriteDirections_Bank05,Y
#_05C237: STA.w $0DE0,X

#_05C23A: LDA.w SpriteDrawSteps_Bank05,Y
#_05C23D: STA.w $0DC0,X

.looking_around
#_05C240: JSR Guard_HandleAllAnimation

#_05C243: PLA
#_05C244: STA.w $0DE0,X

#_05C247: PLA
#_05C248: STA.w $0DC0,X

#_05C24B: LDA.w $0DD0,X
#_05C24E: CMP.b #$05
#_05C250: BNE Guard_NotFalling

#_05C252: LDA.b $11
#_05C254: BNE EXIT_05C226

#_05C256: JSR Guard_TickTwiceAndUpdateBody

#_05C259: JMP.w Guard_TickTwiceAndUpdateBody

;===================================================================================================

Guard_NotFalling:
#_05C25C: JSR Sprite_CheckIfActive_Bank05
#_05C25F: JSL Guard_ParrySwordAttacks

#_05C263: JSL Sprite_CheckDamageToLink_long
#_05C267: BCS .hit_im

#_05C269: LDA.w $0FDC
#_05C26C: BEQ .not_triggered

.hit_im
#_05C26E: LDA.w $0D80,X
#_05C271: CMP.b #$03
#_05C273: BCS .not_triggered

#_05C275: LDA.b #$03
#_05C277: STA.w $0D80,X

#_05C27A: LDA.b #$20
#_05C27C: BRA .continue

.not_triggered
#_05C27E: LDA.w $0EA0,X
#_05C281: BEQ .not_recoiling

#_05C283: CMP.b #$04
#_05C285: BCC .not_recoiling

#_05C287: LDA.b #$04
#_05C289: STA.w $0D80,X

#_05C28C: LDA.b #$80

.continue
#_05C28E: JSR Guard_SetTimerAndAssertTileHitbox

.not_recoiling
#_05C291: JSR Sprite_CheckIfRecoiling_Bank05

#_05C294: LDA.w $0E30,X
#_05C297: AND.b #$07
#_05C299: CMP.b #$05
#_05C29B: BCS .cant_go_over_short_tiles

#_05C29D: LDA.w $0E70,X
#_05C2A0: BNE .tile_collision

#_05C2A2: JSR Sprite_Move_XY_Bank05

.tile_collision
#_05C2A5: JSR Sprite_CheckTileCollision_Bank05

#_05C2A8: BRA .continue_after_move

.cant_go_over_short_tiles
#_05C2AA: JSR Sprite_Move_XY_Bank05

.continue_after_move
#_05C2AD: LDA.w $0D80,X
#_05C2B0: CMP.b #$04
#_05C2B2: BEQ .not_chasing

#_05C2B4: STZ.w $0ED0,X

.not_chasing
#_05C2B7: REP #$30

#_05C2B9: AND.w #$00FF
#_05C2BC: ASL A
#_05C2BD: TAY

#_05C2BE: LDA.w .vectors,Y
#_05C2C1: DEC A
#_05C2C2: PHA

#_05C2C3: SEP #$30

#_05C2C5: RTS

;---------------------------------------------------------------------------------------------------

.vectors
#_05C2C6: dw Guard_Idle
#_05C2C8: dw Guard_OnPatrol
#_05C2CA: dw Guard_Surveying
#_05C2CC: dw Guard_InPursuit
#_05C2CE: dw Guard_FallingToDeath

;===================================================================================================

pool Guard_Idle

.timer
#_05C2D0: db  96, 192, 255,  64

pool off

;---------------------------------------------------------------------------------------------------

Guard_Idle:
#_05C2D4: JSR Sprite_ZeroVelocity_XY_Bank05

#_05C2D7: LDA.w $0DF0,X
#_05C2DA: BNE .exit

#_05C2DC: INC.w $0D80,X

#_05C2DF: LDA.w $0E30,X
#_05C2E2: BEQ .not_glancing_around

#_05C2E4: AND.b #$07
#_05C2E6: CMP.b #$05
#_05C2E8: BCS .not_glancing_around

#_05C2EA: LDA.w $0E30,X
#_05C2ED: LSR A
#_05C2EE: LSR A
#_05C2EF: LSR A
#_05C2F0: AND.b #$03
#_05C2F2: TAY

#_05C2F3: LDA.w .timer,Y
#_05C2F6: STA.w $0DF0,X

#_05C2F9: LDA.w $0DE0,X
#_05C2FC: EOR.b #$01
#_05C2FE: STA.w $0DE0,X

#_05C301: STZ.w $0E80,X

#_05C304: BRA Guard_SetGlanceTo12

.not_glancing_around
#_05C306: JSL GetRandomNumber
#_05C30A: AND.b #$3F
#_05C30C: ADC.b #$28
#_05C30E: STA.w $0DF0,X

#_05C311: LDA.w $0DE0,X
#_05C314: PHA

#_05C315: JSL GetRandomNumber
#_05C319: AND.b #$03
#_05C31B: STA.w $0DE0,X

#_05C31E: PLA
#_05C31F: CMP.w $0DE0,X
#_05C322: BEQ .exit

#_05C324: EOR.w $0DE0,X
#_05C327: AND.b #$02
#_05C329: BNE .exit

;===================================================================================================

#Guard_SetGlanceTo12:
#_05C32B: LDA.b #$0C
#_05C32D: STA.w $0E00,X

.exit
#_05C330: RTS

;===================================================================================================

SharedGuardSpeeds_X:
#_05C331: db   8,  -8,   0,   0

SharedGuardSpeeds_Y:
#_05C335: db   0,   0,   8,  -8

;===================================================================================================

GuardBodySteps:
#_05C339: db $0B, $0C, $0D, $0C, $04, $05, $06, $05
#_05C341: db $00, $01, $02, $03, $07, $08, $09, $0A
#_05C349: db $11, $12, $11, $12, $07, $08, $07, $08
#_05C351: db $03, $04, $03, $04, $0D, $0E, $0D, $0E

;===================================================================================================

ProbeAndSparkCheckDirXSpeed:
#_05C359: db   1,   1,  -1,  -1,  -1,  -1,   1,   1

ProbeAndSparkCheckDirYSpeed:
#_05C361: db  -1,   1,   1,  -1,  -1,   1,   1,  -1

ProbeAndSparkXSpeed:
#_05C369: db   8,   0,  -8,   0,  -8,   0,   8,   0

ProbeAndSparkYSpeed:
#_05C371: db   0,   8,   0,  -8,   0,   8,   0,  -8

;===================================================================================================

ProbeType:
#_05C379: db $00, $02, $01, $03, $01, $02, $00, $03

;===================================================================================================

ColinearDirections:
#_05C381: db $01, $04, $02, $08, $02, $04, $01, $08

OrthogonalDirections:
#_05C389: db $08, $01, $04, $02, $08, $02, $04, $01

;===================================================================================================

ColinearNextDirections:
#_05C391: db $01, $02, $03, $00, $05, $06, $07, $04

OrthogonalNextDirections:
#_05C399: db $03, $00, $01, $02, $07, $04, $05, $06

;===================================================================================================

Guard_ShootProbeAndStuff:
#_05C3A1: LDY.w $0DA0,X

#_05C3A4: LDA.w ProbeAndSparkCheckDirXSpeed,Y
#_05C3A7: STA.w $0D50,X

#_05C3AA: LDA.w ProbeAndSparkCheckDirYSpeed,Y
#_05C3AD: STA.w $0D40,X

#_05C3B0: JSR Sprite_CheckTileCollision_Bank05

#_05C3B3: LDA.w $0E10,X
#_05C3B6: BEQ .skip_first_ortho

#_05C3B8: CMP.b #$2C
#_05C3BA: BNE .done_ortho

#_05C3BC: LDY.w $0DA0,X

#_05C3BF: LDA.w OrthogonalNextDirections,Y
#_05C3C2: STA.w $0DA0,X

#_05C3C5: BRA .done_ortho

.skip_first_ortho
#_05C3C7: LDY.w $0DA0,X

#_05C3CA: LDA.w $0E70,X
#_05C3CD: AND.w OrthogonalDirections,Y
#_05C3D0: BNE .done_ortho

#_05C3D2: LDA.b #$58
#_05C3D4: STA.w $0E10,X

.done_ortho
#_05C3D7: LDY.w $0DA0,X

#_05C3DA: LDA.w $0E70,X
#_05C3DD: AND.w ColinearDirections,Y
#_05C3E0: BEQ .skip_next_colinear

#_05C3E2: LDA.w ColinearNextDirections,Y
#_05C3E5: STA.w $0DA0,X

.skip_next_colinear
#_05C3E8: LDY.w $0DA0,X

#_05C3EB: LDA.w ProbeAndSparkXSpeed,Y
#_05C3EE: STA.w $0D50,X

#_05C3F1: LDA.w ProbeAndSparkYSpeed,Y
#_05C3F4: STA.w $0D40,X

; TODO VERIFY AND ANALYZE
#_05C3F7: LDA.w ProbeType,Y
#_05C3FA: STA.w $0DE0,X
#_05C3FD: STA.w $0EB0,X

#_05C400: JMP.w Guard_TickAndUpdateBody

;===================================================================================================

Guard_OnPatrol:
#_05C403: JSR Guard_SendOutProbe

; TODO $0E30 needs analysis
#_05C406: LDA.w $0E30,X
#_05C409: AND.b #$07
#_05C40B: CMP.b #$05
#_05C40D: BCC .check_timer

#_05C40F: JMP.w Guard_ShootProbeAndStuff

.check_timer
#_05C412: LDA.w $0DF0,X
#_05C415: BNE .delay

;===================================================================================================

#Guard_StopAndLookAround:
#_05C417: JSR Sprite_ZeroVelocity_XY_Bank05

#_05C41A: LDA.b #$02
#_05C41C: STA.w $0D80,X

#_05C41F: LDA.b #$A0
#_05C421: STA.w $0DF0,X

#_05C424: RTS

;===================================================================================================

.delay
#_05C425: LDA.w $0E80,X
#_05C428: AND.b #$01
#_05C42A: BNE .dont_resist_timer

#_05C42C: INC.w $0DF0,X

.dont_resist_timer
#_05C42F: LDA.w $0E70,X
#_05C432: AND.b #$0F
#_05C434: BEQ .no_tile_collision

#_05C436: LDA.w $0DE0,X
#_05C439: EOR.b #$01
#_05C43B: STA.w $0DE0,X

#_05C43E: JSR Guard_SetGlanceTo12

.no_tile_collision
#_05C441: LDY.w $0DE0,X

#_05C444: LDA.w SharedGuardSpeeds_X,Y
#_05C447: STA.w $0D50,X

#_05C44A: LDA.w SharedGuardSpeeds_Y,Y
#_05C44D: STA.w $0D40,X

#_05C450: TYA
#_05C451: STA.w $0EB0,X

;===================================================================================================

Guard_TickAndUpdateBody:
#_05C454: INC.w $0E80,X

#_05C457: LDA.w $0E80,X
#_05C45A: LSR A
#_05C45B: LSR A
#_05C45C: LSR A
#_05C45D: AND.b #$03
#_05C45F: STA.b $00

#_05C461: LDA.w $0DE0,X
#_05C464: ASL A
#_05C465: ASL A
#_05C466: ADC.b $00
#_05C468: TAY

#_05C469: LDA.w GuardBodySteps,Y
#_05C46C: STA.w $0DC0,X

#_05C46F: RTS

;===================================================================================================

Guard_GlanceDirections:
#_05C470: db $00, $02, $02, $02, $00, $03, $03, $03
#_05C478: db $01, $03, $03, $03, $01, $02, $02, $02
#_05C480: db $02, $00, $00, $00, $02, $01, $01, $01
#_05C488: db $03, $01, $01, $01, $03, $00, $00, $00

;===================================================================================================

Guard_Surveying:
#_05C490: JSR Sprite_ZeroVelocity_XY_Bank05
#_05C493: JSR Guard_SendOutProbe

#_05C496: LDA.w $0DF0,X
#_05C499: BNE .delay

#_05C49B: LDA.b #$20
#_05C49D: STA.w $0DF0,X

#_05C4A0: LDA.b #$00
#_05C4A2: STA.w $0D80,X

#_05C4A5: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_05C4A6: CMP.b #$80
#_05C4A8: BCS .exit

#_05C4AA: LSR A
#_05C4AB: LSR A
#_05C4AC: LSR A

#_05C4AD: AND.b #$07
#_05C4AF: STA.b $00

#_05C4B1: LDA.w $0DE0,X
#_05C4B4: ASL A
#_05C4B5: ASL A
#_05C4B6: ASL A

#_05C4B7: ORA.b $00
#_05C4B9: TAY

#_05C4BA: LDA.w Guard_GlanceDirections,Y
#_05C4BD: STA.w $0EB0,X

.exit
#_05C4C0: RTS

;===================================================================================================

Guard_InPursuit:
#_05C4C1: JSR Sprite_ZeroVelocity_XY_Bank05
#_05C4C4: JSR Sprite_DirectionToFaceLink_Bank05

#_05C4C7: TYA
#_05C4C8: STA.w $0EB0,X

#_05C4CB: LDA.w $0DF0,X
#_05C4CE: BNE .exit

#_05C4D0: LDA.b #$04
#_05C4D2: STA.w $0D80,X

#_05C4D5: LDA.b #$FF

;===================================================================================================

#Guard_SetTimerAndAssertTileHitbox:
#_05C4D7: STA.w $0DF0,X

#_05C4DA: STZ.w $0E30,X

#_05C4DD: LDA.w $0B6B,X
#_05C4E0: AND.b #$0F
#_05C4E2: ORA.b #$60
#_05C4E4: STA.w $0B6B,X

.exit
#_05C4E7: RTS

;===================================================================================================

Guard_FallingToDeath:
#_05C4E8: LDA.w $0DF0,X
#_05C4EB: BNE .delay

#_05C4ED: LDY.w $0DE0,X

#_05C4F0: LDA.w Guard_GlanceTimers,Y
#_05C4F3: STA.w $0EC0,X

#_05C4F6: BRL Guard_StopAndLookAround

;===================================================================================================

#Sprite_ZeroVelocity_XY_Bank05:
#_05C4F9: STZ.w $0D50,X
#_05C4FC: STZ.w $0D40,X

#_05C4FF: RTS

;===================================================================================================

.delay
#_05C500: TXA
#_05C501: EOR.b $1A
#_05C503: AND.b #$1F
#_05C505: BNE .dont_attempt_chase

#_05C507: LDA.w $0ED0,X
#_05C50A: BNE .dont_whistle

#_05C50C: LDA.b #!SFX3_04
#_05C50E: JSL SpriteSFX_QueueSFX3WithPan

#_05C512: INC.w $0ED0,X

.dont_whistle
#_05C515: TXA
#_05C516: AND.b #$03
#_05C518: TAY

#_05C519: LDA.w $0E20,X
#_05C51C: CMP.b #!SPRITE_42
#_05C51E: BEQ .blue_da_ba_dee ; useless branch

.blue_da_ba_dee
#_05C520: LDA.w AppliedSpeed16,Y
#_05C523: JSL Sprite_ApplySpeedTowardsLink_long

#_05C527: JSR Sprite_DirectionToFaceLink_Bank05

#_05C52A: TYA
#_05C52B: STA.w $0DE0,X
#_05C52E: STA.w $0EB0,X

.dont_attempt_chase
#_05C531: JSL Guard_ApplySpeedInDirection

;===================================================================================================

Guard_TickTwiceAndUpdateBody:
#_05C535: INC.w $0E80,X

#_05C538: JSR Guard_TickAndUpdateBody

#_05C53B: RTS

;===================================================================================================

GuardAppliedSpeeds_X:
#_05C53C: db  14, -14

GuardAppliedSpeeds_Y:
#_05C53E: db   0,   0,  14, -14

;===================================================================================================

Guard_ApplySpeedInDirection:
#_05C542: PHB
#_05C543: PHK
#_05C544: PLB

#_05C545: LDA.w $0E70,X
#_05C548: BEQ .exit

#_05C54A: AND.b #$03
#_05C54C: BEQ .check_horizontal

#_05C54E: JSR Sprite_IsBelowLink_Bank05

#_05C551: INY
#_05C552: INY
#_05C553: BRA .continue

.check_horizontal
#_05C555: JSR Sprite_IsRightOfLink_Bank05

.continue
#_05C558: LDA.w GuardAppliedSpeeds_X,Y
#_05C55B: STA.w $0D50,X

#_05C55E: LDA.w GuardAppliedSpeeds_Y,Y
#_05C561: STA.w $0D40,X

.exit
#_05C564: PLB

#_05C565: RTL

;===================================================================================================
; Why do these even exist?
;===================================================================================================
AppliedSpeed16:
#_05C566: db  16,  16,  16,  16

AppliedSpeed18:
#_05C56A: db  18,  18,  18,  18

;===================================================================================================

pool Guard_SendOutProbe

.speed_x
#_05C56E: db -16, -16, -16, -16, -16, -16, -16, -16
#_05C576: db -16, -14, -12, -10,  -8,  -6,  -4,  -2

#_05C57E: db   0,   2,   4,   6,   8,  10,  12,  14
#_05C586: db  16,  16,  16,  16,  16,  16,  16,  16

#_05C58E: db  16,  16,  16,  16,  16,  16,  16,  16
#_05C596: db  14,  12,  10,   8,   6,   4,   2,   0

#_05C59E: db  -2,  -4,  -6,  -8, -10, -12, -14, -16
#_05C5A6: db -16, -16, -16, -16, -16, -16, -16, -16

.speed_y
#_05C5AE: db   0,   2,   4,   6,   8,  10,  12,  14
#_05C5B6: db  16,  16,  16,  16,  16,  16,  16,  16

#_05C5BE: db  16,  16,  16,  16,  16,  16,  16,  16
#_05C5C6: db  14,  12,  10,   8,   6,   4,   2,   0

#_05C5CE: db  -2,  -4,  -6,  -8, -10, -12, -14, -16
#_05C5D6: db -16, -16, -16, -16, -16, -16, -16, -16

#_05C5DE: db -16, -16, -16, -16, -16, -16, -16, -16
#_05C5E6: db -14, -12, -10,  -8,  -6,  -4,  -2,   0

.index_offset
#_05C5EE: db $10
#_05C5EF: db $30
#_05C5F0: db $00
#_05C5F1: db $20

pool off

;---------------------------------------------------------------------------------------------------

Guard_SendOutProbe:
#_05C5F2: TXA
#_05C5F3: CLC
#_05C5F4: ADC.b $1A
#_05C5F6: STA.b $0F

#_05C5F8: AND.b #$03
#_05C5FA: ORA.w $0F00,X
#_05C5FD: BNE .exit

#_05C5FF: LDA.w $0EC0,X
#_05C602: INC.w $0EC0,X

#_05C605: LDY.w $0DE0,X

#_05C608: CLC
#_05C609: AND.b #$1F
#_05C60B: ADC.w .index_offset,Y

#_05C60E: AND.b #$3F
#_05C610: STA.b $0F

;===================================================================================================

#Sprite_SpawnProbeAlways:
#_05C612: LDA.b #!SPRITE_41
#_05C614: LDY.b #$0A
#_05C616: JSL Sprite_SpawnDynamically_slot_limited
#_05C61A: BMI .exit

#_05C61C: LDA.b $00
#_05C61E: CLC
#_05C61F: ADC.b #$08
#_05C621: STA.w $0D10,Y

#_05C624: LDA.b $01
#_05C626: ADC.b #$00
#_05C628: STA.w $0D30,Y

#_05C62B: LDA.b $02
#_05C62D: CLC
#_05C62E: ADC.b #$04
#_05C630: STA.w $0D00,Y

#_05C633: LDA.b $03
#_05C635: ADC.b #$00
#_05C637: STA.w $0D20,Y

#_05C63A: PHX

#_05C63B: LDX.b $0F
#_05C63D: TXA
#_05C63E: STA.w $0DE0,Y

#_05C641: LDA.w .speed_x,X
#_05C644: STA.w $0D50,Y

#_05C647: LDA.w .speed_y,X
#_05C64A: STA.w $0D40,Y

#_05C64D: LDA.w $0E40,Y
#_05C650: AND.b #$F0
#_05C652: ORA.b #$A0
#_05C654: STA.w $0E40,Y

#_05C657: PLX

#_05C658: TXA
#_05C659: INC A
#_05C65A: STA.w $0DB0,Y
#_05C65D: STA.w $0BA0,Y

#_05C660: LDA.b #$40
#_05C662: STA.w $0F60,Y
#_05C665: STA.w $0E60,Y

#_05C668: LDA.b #$02
#_05C66A: STA.w $0CAA,Y

.exit
#_05C66D: RTS

;===================================================================================================

Sprite_SpawnProbeAlways_long:
#_05C66E: PHB
#_05C66F: PHK
#_05C670: PLB

#_05C671: JSR Sprite_SpawnProbeAlways

#_05C674: PLB

#_05C675: RTL

;===================================================================================================

Guard_HandleAllAnimation_long:
#_05C676: PHB
#_05C677: PHK
#_05C678: PLB

#_05C679: PHX

#_05C67A: JSR Guard_HandleAllAnimation

#_05C67D: PLX

#_05C67E: PLB

#_05C67F: RTL

;---------------------------------------------------------------------------------------------------

Guard_HandleAllAnimation:
#_05C680: JSR Sprite_PrepOAMCoord_Bank05
#_05C683: JSR Guard_AnimateHead
#_05C686: JSR Guard_AnimateBody
#_05C689: JSR Guard_AnimateWeapon

;===================================================================================================

Guard_DrawShadow:
#_05C68C: LDA.w $0E60,X
#_05C68F: AND.b #$10
#_05C691: BEQ .exit

#_05C693: LDY.w $0DE0,X

#_05C696: LDA.w .shadow_type,Y
#_05C699: JSL SpriteDraw_Shadow_custom_long

.exit
#_05C69D: RTS

;---------------------------------------------------------------------------------------------------

.shadow_type
#_05C69E: db $0C, $0C, $0A, $0A

;===================================================================================================

GuardHeadChar:
#_05C6A2: db $42, $42, $40, $44

GuardHeadProp:
#_05C6A6: db $40, $00, $00, $00

;===================================================================================================

GuardHeadOffsetY:
#_05C6AA: dw   7,  8,  7,  8
#_05C6B2: dw   8,  7,  8,  7
#_05C6BA: dw   8,  7,  8,  8
#_05C6C2: dw   7,  8,  8,  8
#_05C6CA: dw   8,  8,  8,  8
#_05C6D2: dw   8,  8,  8,  8
#_05C6DA: dw   8,  8

;===================================================================================================

Guard_AnimateHead:
#_05C6DE: LDY.b #$00

;---------------------------------------------------------------------------------------------------

#Guard_AnimateHead_PreserveOAMOffset:
#_05C6E0: PHX

#_05C6E1: LDA.w $0DC0,X
#_05C6E4: ASL A
#_05C6E5: STA.b $0D

#_05C6E7: LDA.w $0EB0,X
#_05C6EA: TAX

#_05C6EB: REP #$20

#_05C6ED: LDA.b $00
#_05C6EF: STA.b ($90),Y

#_05C6F1: AND.w #$0100
#_05C6F4: STA.b $0E

#_05C6F6: PHY

#_05C6F7: LDA.b $02
#_05C6F9: SEC

#_05C6FA: LDY.b $0D
#_05C6FC: SBC.w GuardHeadOffsetY,Y

#_05C6FF: PLY
#_05C700: INY

#_05C701: STA.b ($90),Y

#_05C703: CLC
#_05C704: ADC.w #$0010
#_05C707: CMP.w #$0100
#_05C70A: BCC .on_screen

#_05C70C: LDA.w #$00F0
#_05C70F: STA.b ($90),Y

.on_screen
#_05C711: SEP #$20

#_05C713: LDA.w GuardHeadChar,X
#_05C716: INY
#_05C717: STA.b ($90),Y

#_05C719: LDA.w GuardHeadProp,X
#_05C71C: INY
#_05C71D: ORA.b $05
#_05C71F: STA.b ($90),Y

#_05C721: TYA
#_05C722: LSR A
#_05C723: LSR A
#_05C724: TAY

#_05C725: LDA.b #$02
#_05C727: ORA.b $0F
#_05C729: STA.b ($92),Y

#_05C72B: PLX

#_05C72C: RTS

;===================================================================================================

GuardBodyObjectOffsetX:
#_05C72D: dw  -4,   4,  10,  10
#_05C735: dw  -4,   4,  10,  10
#_05C73D: dw  -4,   4,  10,  10
#_05C745: dw  -4,   4,  10,  10
#_05C74D: dw  -4,  -4,   0,   0
#_05C755: dw  -4,  -4,   0,   0
#_05C75D: dw  -3,  -3,   0,   0
#_05C765: dw  -3,  -3,  -4,   4
#_05C76D: dw  -3,  -3,  -4,   4
#_05C775: dw  -3,  -3,  -4,   4
#_05C77D: dw  -3,  -3,  -4,   4
#_05C785: dw  12,  12,   0,   0
#_05C78D: dw  12,  12,   0,   0
#_05C795: dw  11,  11,   0,   0
#_05C79D: dw  -4,   4,   0,   0
#_05C7A5: dw  -4,   4,   0,   0
#_05C7AD: dw  -4,   4,   0,   0
#_05C7B5: dw   0,   0,   0,   0
#_05C7BD: dw   0,   0,   0,   0
#_05C7C5: dw   0,   0,   0,   0
#_05C7CD: dw  -4,   4,   0,   0
#_05C7D5: dw  -4,   4,   0,   0
#_05C7DD: dw  -4,   4,   0,   0
#_05C7E5: dw   0,   0,   0,   0
#_05C7ED: dw   0,   0,   0,   0
#_05C7F5: dw   0,   0,   0,   0

;===================================================================================================

GuardBodyObjectOffsetY:
#_05C7FD: dw   0,   0,   2,  10
#_05C805: dw   0,   0,   2,  10
#_05C80D: dw   0,   0,   1,   9
#_05C815: dw   0,   0,   2,  10
#_05C81D: dw  -2,   6,   1,   1
#_05C825: dw  -2,   6,   2,   2
#_05C82D: dw  -2,   6,   1,   1
#_05C835: dw  -5,   3,   0,   0
#_05C83D: dw  -4,   4,   0,   0
#_05C845: dw  -4,   4,   0,   0
#_05C84D: dw  -5,   3,   0,   0
#_05C855: dw  -2,   6,   1,   1
#_05C85D: dw  -2,   6,   2,   2
#_05C865: dw  -2,   6,   1,   1
#_05C86D: dw   0,   0,   8,   8
#_05C875: dw   0,   0,   8,   8
#_05C87D: dw   0,   0,   8,   8
#_05C885: dw   0,   0,   8,   8
#_05C88D: dw   0,   0,   8,   8
#_05C895: dw   0,   0,   8,   8
#_05C89D: dw   0,   0,   8,   8
#_05C8A5: dw   0,   0,   8,   8
#_05C8AD: dw   0,   0,   8,   8
#_05C8B5: dw   0,   0,   8,   8
#_05C8BD: dw   0,   0,   8,   8
#_05C8C5: dw   0,   0,   8,   8

;===================================================================================================

GuardBodyObjectChar:
#_05C8CD: db $48, $49, $6D, $7D
#_05C8D1: db $49, $48, $6D, $7D
#_05C8D5: db $46, $46, $6D, $7D
#_05C8D9: db $4B, $46, $6D, $7D
#_05C8DD: db $4D, $5D, $4E, $4E
#_05C8E1: db $4D, $5D, $60, $60
#_05C8E5: db $4D, $5D, $62, $62
#_05C8E9: db $6D, $7D, $64, $64
#_05C8ED: db $6D, $7D, $66, $67
#_05C8F1: db $6D, $7D, $67, $66
#_05C8F5: db $6D, $7D, $64, $69
#_05C8F9: db $4D, $5D, $4E, $4E
#_05C8FD: db $4D, $5D, $60, $60
#_05C901: db $4D, $5D, $62, $62
#_05C905: db $02, $03, $20, $20
#_05C909: db $02, $0C, $20, $20
#_05C90D: db $02, $0C, $20, $20
#_05C911: db $08, $08, $20, $20
#_05C915: db $0E, $0E, $20, $20
#_05C919: db $0E, $0E, $20, $20
#_05C91D: db $05, $06, $20, $20
#_05C921: db $22, $06, $20, $20
#_05C925: db $22, $06, $20, $20
#_05C929: db $08, $08, $20, $20
#_05C92D: db $0E, $0E, $20, $20
#_05C931: db $0E, $0E, $20, $20

;===================================================================================================

GuardBodyObjectFlip:
#_05C935: db $00, $00, $00, $00
#_05C939: db $40, $40, $00, $00
#_05C93D: db $00, $40, $00, $00
#_05C941: db $00, $40, $00, $00
#_05C945: db $00, $00, $00, $00
#_05C949: db $00, $00, $00, $00
#_05C94D: db $00, $00, $00, $00
#_05C951: db $00, $00, $00, $40
#_05C955: db $00, $00, $00, $00
#_05C959: db $00, $00, $40, $40
#_05C95D: db $00, $00, $00, $40
#_05C961: db $40, $40, $40, $40
#_05C965: db $40, $40, $40, $40
#_05C969: db $40, $40, $40, $40
#_05C96D: db $00, $00, $00, $00
#_05C971: db $00, $00, $00, $00
#_05C975: db $00, $00, $00, $00
#_05C979: db $00, $00, $00, $00
#_05C97D: db $00, $00, $00, $00
#_05C981: db $00, $00, $00, $00
#_05C985: db $00, $00, $00, $00
#_05C989: db $00, $00, $00, $00
#_05C98D: db $00, $00, $00, $00
#_05C991: db $40, $40, $40, $40
#_05C995: db $40, $40, $40, $40
#_05C999: db $40, $40, $40, $40

;===================================================================================================

GuardBodyObjectSize:
#_05C99D: db $02, $02, $00, $00
#_05C9A1: db $02, $02, $00, $00
#_05C9A5: db $02, $02, $00, $00
#_05C9A9: db $02, $02, $00, $00
#_05C9AD: db $00, $00, $02, $02
#_05C9B1: db $00, $00, $02, $02
#_05C9B5: db $00, $00, $02, $02
#_05C9B9: db $00, $00, $02, $02
#_05C9BD: db $00, $00, $02, $02
#_05C9C1: db $00, $00, $02, $02
#_05C9C5: db $00, $00, $02, $02
#_05C9C9: db $00, $00, $02, $02
#_05C9CD: db $00, $00, $02, $02
#_05C9D1: db $00, $00, $02, $02
#_05C9D5: db $02, $02, $02, $02
#_05C9D9: db $02, $02, $02, $02
#_05C9DD: db $02, $02, $02, $02
#_05C9E1: db $02, $02, $02, $02
#_05C9E5: db $02, $02, $02, $02
#_05C9E9: db $02, $02, $02, $02
#_05C9ED: db $02, $02, $02, $02
#_05C9F1: db $02, $02, $02, $02
#_05C9F5: db $02, $02, $02, $02
#_05C9F9: db $02, $02, $02, $02
#_05C9FD: db $02, $02, $02, $02
#_05CA01: db $02, $02, $02, $02

;===================================================================================================

GuardBodyOAMOffsets:
#_05CA05: db $0C
#_05CA06: db $0C
#_05CA07: db $0C
#_05CA08: db $04

;===================================================================================================

Guard_AnimateBody:
#_05CA09: LDY.w $0DE0,X

#_05CA0C: LDA.w GuardBodyOAMOffsets,Y
#_05CA0F: TAY

;---------------------------------------------------------------------------------------------------

#Guard_AnimateBody_PreserveOAMOffset:
#_05CA10: LDA.w $0DC0,X
#_05CA13: ASL A
#_05CA14: ASL A
#_05CA15: STA.b $07

#_05CA17: LDA.w $0E20,X
#_05CA1A: STA.b $08

#_05CA1C: PHX

#_05CA1D: LDX.b #$03

.next_object
#_05CA1F: PHX

#_05CA20: TXA
#_05CA21: CLC
#_05CA22: ADC.b $07
#_05CA24: TAX

#_05CA25: STX.b $06

#_05CA27: LDA.b $08
#_05CA29: CMP.b #!SPRITE_46
#_05CA2B: BCC .do_draw

#_05CA2D: LDA.w GuardBodyObjectSize,X
#_05CA30: BEQ .skip

#_05CA32: LDA.w GuardBodyObjectChar,X

#_05CA35: PLX
#_05CA36: PHX

#_05CA37: CPX.b #$03
#_05CA39: BNE .do_draw

#_05CA3B: CMP.b #$20
#_05CA3D: BEQ .skip

.do_draw
#_05CA3F: LDA.b $06
#_05CA41: ASL A
#_05CA42: TAX

#_05CA43: REP #$20

#_05CA45: LDA.b $00
#_05CA47: CLC
#_05CA48: ADC.w GuardBodyObjectOffsetX,X
#_05CA4B: STA.b ($90),Y

#_05CA4D: AND.w #$0100
#_05CA50: STA.b $0E

#_05CA52: LDA.b $02
#_05CA54: CLC
#_05CA55: ADC.w GuardBodyObjectOffsetY,X

#_05CA58: INY
#_05CA59: STA.b ($90),Y

#_05CA5B: CLC
#_05CA5C: ADC.w #$0010
#_05CA5F: CMP.w #$0100
#_05CA62: BCC .on_screen

#_05CA64: LDA.w #$00F0
#_05CA67: STA.b ($90),Y

.on_screen
#_05CA69: SEP #$20

#_05CA6B: LDA.b #$08
#_05CA6D: STA.b $0D

#_05CA6F: LDX.b $06

#_05CA71: LDA.w GuardBodyObjectChar,X
#_05CA74: INY
#_05CA75: STA.b ($90),Y

#_05CA77: CMP.b #$20
#_05CA79: BNE .test_size

#_05CA7B: LDA.b #$02
#_05CA7D: STA.b $0D

#_05CA7F: LDA.b $08
#_05CA81: CMP.b #!SPRITE_46

#_05CA83: CLC ; so the palette change always occurs
#_05CA84: BNE .do_flip

#_05CA86: DEY

#_05CA87: LDA.b #$F0
#_05CA89: STA.b ($90),Y

#_05CA8B: INY
#_05CA8C: BRA .do_flip

.test_size
#_05CA8E: LDA.w GuardBodyObjectSize,X
#_05CA91: CMP.b #$01

.do_flip
#_05CA93: LDA.w GuardBodyObjectFlip,X
#_05CA96: ORA.b $05
#_05CA98: BCS .dont_change_palette

#_05CA9A: AND.b #$F1
#_05CA9C: ORA.b $0D

.dont_change_palette
#_05CA9E: INY
#_05CA9F: STA.b ($90),Y

#_05CAA1: PHY

#_05CAA2: TYA
#_05CAA3: LSR A
#_05CAA4: LSR A
#_05CAA5: TAY

#_05CAA6: LDA.w GuardBodyObjectSize,X
#_05CAA9: ORA.b $0F
#_05CAAB: STA.b ($92),Y

#_05CAAD: PLY
#_05CAAE: INY

;---------------------------------------------------------------------------------------------------

.skip
#_05CAAF: PLX

#_05CAB0: DEX
#_05CAB1: BMI .exit
#_05CAB3: JMP.w .next_object

.exit
#_05CAB6: PLX

#_05CAB7: RTS

;===================================================================================================

GuardWeaponObjectOffsetX:
#_05CAB8: dw  -3,  -3
#_05CABC: dw  -4,  -4
#_05CAC0: dw  -4,  -4
#_05CAC4: dw  -4,  -4
#_05CAC8: dw -11,  -3
#_05CACC: dw -11,  -3
#_05CAD0: dw -16,  -8
#_05CAD4: dw  12,  12
#_05CAD8: dw  12,  12
#_05CADC: dw  12,  12
#_05CAE0: dw  12,  12
#_05CAE4: dw  21,  13
#_05CAE8: dw  21,  13
#_05CAEC: dw  24,  16

;===================================================================================================

GuardWeaponObjectOffsetY:
#_05CAF0: dw  11,  19
#_05CAF4: dw  11,  19
#_05CAF8: dw  10,  18
#_05CAFC: dw  14,  22
#_05CB00: dw   8,   8
#_05CB04: dw   8,   8
#_05CB08: dw   6,   6
#_05CB0C: dw -10,  -2
#_05CB10: dw  -9,  -1
#_05CB14: dw  -9,  -1
#_05CB18: dw -16,  -8
#_05CB1C: dw   8,   8
#_05CB20: dw   8,   8
#_05CB24: dw   6,   6

;===================================================================================================

GuardWeaponObjectChar:
#_05CB28: db $7B, $6B
#_05CB2A: db $7B, $6B
#_05CB2C: db $7B, $6B
#_05CB2E: db $7B, $6B
#_05CB30: db $6C, $7C
#_05CB32: db $6C, $7C
#_05CB34: db $6C, $7C
#_05CB36: db $6B, $7B
#_05CB38: db $6B, $7B
#_05CB3A: db $6B, $7B
#_05CB3C: db $6B, $7B
#_05CB3E: db $6C, $7C
#_05CB40: db $6C, $7C
#_05CB42: db $6C, $7C

;===================================================================================================

GuardWeaponObjectFlip:
#_05CB44: db $80, $80
#_05CB46: db $80, $80
#_05CB48: db $80, $80
#_05CB4A: db $80, $80
#_05CB4C: db $00, $00
#_05CB4E: db $00, $00
#_05CB50: db $00, $00
#_05CB52: db $00, $00
#_05CB54: db $00, $00
#_05CB56: db $00, $00
#_05CB58: db $00, $00
#_05CB5A: db $40, $40
#_05CB5C: db $40, $40
#_05CB5E: db $40, $40

;===================================================================================================

GuardWeaponObjectOAMOffset:
#_05CB60: db $04
#_05CB61: db $04
#_05CB62: db $04
#_05CB63: db $14

;===================================================================================================

Guard_AnimateWeapon:
#_05CB64: LDA.w $0DC0,X
#_05CB67: ASL A
#_05CB68: STA.b $06

#_05CB6A: LDA.w $0E20,X
#_05CB6D: SEC
#_05CB6E: SBC.b #$41
#_05CB70: STA.b $08

#_05CB72: LDY.w $0DE0,X

#_05CB75: LDA.w GuardWeaponObjectOAMOffset,Y
#_05CB78: TAY

#_05CB79: PHX

#_05CB7A: LDX.b #$01

.next_object
#_05CB7C: PHX

#_05CB7D: TXA
#_05CB7E: CLC
#_05CB7F: ADC.b $06
#_05CB81: PHA

#_05CB82: ASL A
#_05CB83: TAX

#_05CB84: REP #$20

#_05CB86: LDA.w GuardWeaponObjectOffsetX,X
#_05CB89: CLC
#_05CB8A: ADC.b $00
#_05CB8C: STA.b ($90),Y

#_05CB8E: AND.w #$0100
#_05CB91: STA.b $0E

#_05CB93: LDA.w GuardWeaponObjectOffsetY,X
#_05CB96: CLC
#_05CB97: ADC.b $02

#_05CB99: INY
#_05CB9A: STA.b ($90),Y

#_05CB9C: CLC
#_05CB9D: ADC.w #$0010
#_05CBA0: CMP.w #$0100
#_05CBA3: BCC .on_screen

#_05CBA5: LDA.w #$00F0
#_05CBA8: STA.b ($90),Y

.on_screen
#_05CBAA: SEP #$20

#_05CBAC: LDA.w GuardWeaponObjectOffsetX,X
#_05CBAF: STA.w $0FAB

#_05CBB2: LDA.w GuardWeaponObjectOffsetY,X
#_05CBB5: STA.w $0FAA

#_05CBB8: PLX

#_05CBB9: LDA.b $08
#_05CBBB: CMP.b #$02 ; indicates !SPRITE_43

#_05CBBD: LDA.w GuardWeaponObjectChar,X
#_05CBC0: BCS .dont_adjust

#_05CBC2: ADC.b #$03

.dont_adjust
#_05CBC4: INY
#_05CBC5: STA.b ($90),Y

#_05CBC7: LDA.w GuardWeaponObjectFlip,X
#_05CBCA: ORA.b $05
#_05CBCC: INY
#_05CBCD: STA.b ($90),Y

#_05CBCF: PHY

#_05CBD0: TYA
#_05CBD1: LSR A
#_05CBD2: LSR A
#_05CBD3: TAY

#_05CBD4: LDA.b $0F
#_05CBD6: STA.b ($92),Y

#_05CBD8: PLY
#_05CBD9: INY

#_05CBDA: PLX
#_05CBDB: DEX
#_05CBDC: BPL .next_object

#_05CBDE: PLX

#_05CBDF: RTS

;===================================================================================================

Sprite_45_UsainBolt:
#_05CBE0: JSR Guard_HandleAllAnimation
#_05CBE3: JSR Sprite_CheckIfActive_Bank05

#_05CBE6: JSR BoltGuard_TriggerChaseTheme
#_05CBE9: JSL Guard_ParrySwordAttacks

#_05CBED: JSR Sprite_CheckIfRecoiling_Bank05

#_05CBF0: JSR Guard_MoveIfNoTileCollision
#_05CBF3: JSR Sprite_CheckTileCollision_Bank05

#_05CBF6: JSL Sprite_CheckDamageToLink_long

#_05CBFA: TXA
#_05CBFB: EOR.b $1A
#_05CBFD: AND.b #$0F
#_05CBFF: BNE .dont_turn

#_05CC01: JSR Sprite_DirectionToFaceLink_Bank05

#_05CC04: TYA
#_05CC05: STA.w $0EB0,X
#_05CC08: STA.w $0DE0,X

; Seems they were planning to have different speeds based on slot
#_05CC0B: TXA
#_05CC0C: AND.b #$03
#_05CC0E: TAY

#_05CC0F: LDA.w AppliedSpeed18,Y
#_05CC12: JSL Sprite_ApplySpeedTowardsLink_long

#_05CC16: LDA.w $0E70,X
#_05CC19: BEQ .dont_turn

#_05CC1B: AND.b #$03
#_05CC1D: BEQ .check_horizontal

.check_vertical
#_05CC1F: JSR Sprite_IsBelowLink_Bank05

#_05CC22: INY
#_05CC23: INY
#_05CC24: BRA .do_speed

.check_horizontal
#_05CC26: JSR Sprite_IsRightOfLink_Bank05

.do_speed
#_05CC29: LDA.w GuardAppliedSpeeds_X,Y
#_05CC2C: STA.w $0D50,X

#_05CC2F: LDA.w GuardAppliedSpeeds_Y,Y
#_05CC32: STA.w $0D40,X

.dont_turn
#_05CC35: INC.w $0E80,X

#_05CC38: JSR Guard_TickAndUpdateBody

#_05CC3B: RTS

;===================================================================================================

BoltGuard_TriggerChaseTheme:
#_05CC3C: LDA.w $0ED0,X
#_05CC3F: CMP.b #$10
#_05CC41: BEQ .exit

#_05CC43: INC.w $0ED0,X

#_05CC46: CMP.b #$0F
#_05CC48: BNE .exit

#_05CC4A: LDA.b #!SFX3_04
#_05CC4C: JSL SpriteSFX_QueueSFX3WithPan

#_05CC50: LDA.l $7EF3C5
#_05CC54: CMP.b #$02
#_05CC56: BNE .exit

#_05CC58: LDA.w $040A
#_05CC5B: CMP.b #$18
#_05CC5D: BNE .exit

#_05CC5F: LDA.b #!SONG_0C
#_05CC61: STA.w $012C

.exit
#_05CC64: RTS

;===================================================================================================

Sprite_44_BluesainBolt:
#_05CC65: JSR SpriteDraw_BluesainBolt
#_05CC68: JSR Sprite_CheckIfActive_Bank05

#_05CC6B: JSR BoltGuard_TriggerChaseTheme
#_05CC6E: JSL Guard_ParrySwordAttacks

#_05CC72: JSR Sprite_CheckIfRecoiling_Bank05

#_05CC75: JSR Guard_MoveIfNoTileCollision
#_05CC78: JSR Sprite_CheckTileCollision_Bank05

#_05CC7B: JSL Sprite_CheckDamageToLink_long

#_05CC7F: TXA
#_05CC80: EOR.b $1A
#_05CC82: AND.b #$0F
#_05CC84: BNE .dont_turn

#_05CC86: JSR Sprite_DirectionToFaceLink_Bank05

#_05CC89: TYA
#_05CC8A: STA.w $0EB0,X
#_05CC8D: STA.w $0DE0,X

#_05CC90: TXA
#_05CC91: AND.b #$03
#_05CC93: TAY

#_05CC94: LDA.w AppliedSpeed18,Y
#_05CC97: JSL Sprite_ApplySpeedTowardsLink_long

#_05CC9B: LDA.w $0E70,X
#_05CC9E: BEQ .dont_turn

;---------------------------------------------------------------------------------------------------

.check_vertical
#_05CCA0: AND.b #$03
#_05CCA2: BEQ .check_horizontal

#_05CCA4: JSR Sprite_IsBelowLink_Bank05
#_05CCA7: INY
#_05CCA8: INY
#_05CCA9: BRA .do_speed

.check_horizontal
#_05CCAB: JSR Sprite_IsRightOfLink_Bank05

.do_speed
#_05CCAE: LDA.w GuardAppliedSpeeds_X,Y
#_05CCB1: STA.w $0D50,X

#_05CCB4: LDA.w GuardAppliedSpeeds_Y,Y
#_05CCB7: STA.w $0D40,X

;---------------------------------------------------------------------------------------------------

.dont_turn
#_05CCBA: LDA.w $0DE0,X
#_05CCBD: ASL A
#_05CCBE: ASL A
#_05CCBF: ASL A
#_05CCC0: STA.b $00

#_05CCC2: INC.w $0E80,X

#_05CCC5: LDA.w $0E80,X
#_05CCC8: LSR A
#_05CCC9: AND.b #$07
#_05CCCB: ORA.b $00
#_05CCCD: TAY

#_05CCCE: LDA.w BlusainAndBNC_anim_step,Y
#_05CCD1: STA.w $0DC0,X

#_05CCD4: RTS

;===================================================================================================

SpriteDraw_BluesainBolt:
#_05CCD5: JSR Sprite_PrepOAMCoord_Bank05

#_05CCD8: LDY.b #$0C
#_05CCDA: JSR SpriteDraw_GuardHead

#_05CCDD: LDY.b #$08
#_05CCDF: JSR SpriteDraw_GuardBody

#_05CCE2: JSR SpriteDraw_GuardSpear_Bolt

#_05CCE5: JMP.w Guard_DrawShadow

;---------------------------------------------------------------------------------------------------

pool SpriteDraw_GuardSpear

.offset_x
#_05CCE8: dw  15,   7
#_05CCEC: dw  17,   9
#_05CCF0: dw  -8,   0
#_05CCF4: dw -10,  -2
#_05CCF8: dw  13,  13
#_05CCFC: dw  13,  13
#_05CD00: dw  -4,  -4
#_05CD04: dw  -4,  -4

.offset_y
#_05CD08: dw  -2,  -2
#_05CD0C: dw  -2,  -2
#_05CD10: dw  -2,  -2
#_05CD14: dw  -2,  -2
#_05CD18: dw   8,   0
#_05CD1C: dw  10,   2
#_05CD20: dw -14,  -6
#_05CD24: dw -16,  -8

.char
#_05CD28: db $6F, $7F
#_05CD2A: db $6F, $7F
#_05CD2C: db $6F, $7F
#_05CD2E: db $6F, $7F
#_05CD30: db $6E, $7E
#_05CD32: db $6E, $7E
#_05CD34: db $6E, $7E
#_05CD36: db $6E, $7E

.flip
#_05CD38: db $40, $40
#_05CD3A: db $40, $40
#_05CD3C: db $00, $00
#_05CD3E: db $00, $00
#_05CD40: db $80, $80
#_05CD42: db $80, $80
#_05CD44: db $00, $00
#_05CD46: db $00, $00

pool off

;===================================================================================================

SpriteDraw_GuardSpear_Fresh:
#_05CD48: LDY.b #$00

;===================================================================================================

SpriteDraw_GuardSpear_PreserveOAMOffset:
#_05CD4A: LDA.w $0D90,X

#_05CD4D: BRA SpriteDraw_GuardSpear

;===================================================================================================

SpriteDraw_GuardSpear_Bolt:
#_05CD4F: LDA.w $0D90,X

#_05CD52: LDY.b #$00

;===================================================================================================

SpriteDraw_GuardSpear:
#_05CD54: EOR.b #$01
#_05CD56: ASL A
#_05CD57: AND.b #$02
#_05CD59: STA.b $06

#_05CD5B: LDA.w $0E20,X
#_05CD5E: STA.b $08

#_05CD60: LDA.w $0DE0,X
#_05CD63: ASL A
#_05CD64: ASL A
#_05CD65: ORA.b $06
#_05CD67: STA.b $06

#_05CD69: PHX

#_05CD6A: LDX.b #$01

.next_object
#_05CD6C: PHX

#_05CD6D: TXA
#_05CD6E: CLC
#_05CD6F: ADC.b $06
#_05CD71: PHA

#_05CD72: ASL A
#_05CD73: TAX

#_05CD74: REP #$20

#_05CD76: LDA.w .offset_x,X
#_05CD79: CLC
#_05CD7A: ADC.b $00
#_05CD7C: STA.b ($90),Y

#_05CD7E: AND.w #$0100
#_05CD81: STA.b $0E

#_05CD83: LDA.w .offset_y,X
#_05CD86: CLC
#_05CD87: ADC.b $02
#_05CD89: INY
#_05CD8A: STA.b ($90),Y

#_05CD8C: CLC
#_05CD8D: ADC.w #$0010
#_05CD90: CMP.w #$0100
#_05CD93: BCC .on_screen

#_05CD95: LDA.w #$00F0
#_05CD98: STA.b ($90),Y

.on_screen
#_05CD9A: SEP #$20

#_05CD9C: LDA.w .offset_x,X
#_05CD9F: STA.w $0FAB

#_05CDA2: LDA.w .offset_y,X
#_05CDA5: STA.w $0FAA

#_05CDA8: PLX

#_05CDA9: LDA.b $08
#_05CDAB: CMP.b #!SPRITE_48

#_05CDAD: LDA.w .char,X
#_05CDB0: BCC .dont_adjust_char

#_05CDB2: SBC.b #$03

.dont_adjust_char
#_05CDB4: INY

#_05CDB5: STA.b ($90),Y

#_05CDB7: LDA.w .flip,X
#_05CDBA: ORA.b $05

#_05CDBC: AND.b #$F1
#_05CDBE: ORA.b #$08

#_05CDC0: INY
#_05CDC1: STA.b ($90),Y

#_05CDC3: PLX

#_05CDC4: PHY

#_05CDC5: TYA
#_05CDC6: LSR A
#_05CDC7: LSR A
#_05CDC8: TAY

#_05CDC9: LDA.b $0F
#_05CDCB: STA.b ($92),Y

#_05CDCD: PLY
#_05CDCE: INY

#_05CDCF: DEX
#_05CDD0: BPL .next_object

#_05CDD2: PLX

#_05CDD3: RTS

;===================================================================================================

Guard_MoveIfNoTileCollision:
#_05CDD4: LDA.w $0E70,X
#_05CDD7: BNE .exit

#_05CDD9: JMP.w Sprite_Move_XY_Bank05

.exit
#_05CDDC: RTS

;===================================================================================================

pool Sprite_48_RedJavelinGuard

.anim_step
#_05CDDD: db $0C, $00, $12, $08

pool off

;---------------------------------------------------------------------------------------------------

Sprite_48_RedJavelinGuard:
#_05CDE1: LDA.w $0DC0,X
#_05CDE4: PHA

#_05CDE5: LDY.w $0DE0,X
#_05CDE8: PHY

#_05CDE9: LDA.w $0E00,X
#_05CDEC: BEQ .delay

#_05CDEE: LDA.w SpriteDirections_Bank05,Y
#_05CDF1: STA.w $0DE0,X

#_05CDF4: LDA.w .anim_step,Y
#_05CDF7: STA.w $0DC0,X

.delay
#_05CDFA: JSR SpriteDraw_RedJavelinGuard

#_05CDFD: BRA ArcherAndJavelinGuardMain

;===================================================================================================

Sprite_46_BlueArcher:
#_05CDFF: LDA.w $0DC0,X
#_05CE02: PHA

#_05CE03: LDY.w $0DE0,X
#_05CE06: PHY

#_05CE07: LDA.w $0E00,X
#_05CE0A: BEQ .delay

#_05CE0C: LDA.w SpriteDirections_Bank05,Y
#_05CE0F: STA.w $0DE0,X

#_05CE12: LDA.w SpriteDrawSteps_Bank05,Y
#_05CE15: STA.w $0DC0,X

.delay
#_05CE18: JSR SpriteDraw_ArcherGuard

;===================================================================================================

ArcherAndJavelinGuardMain:
#_05CE1B: PLA
#_05CE1C: STA.w $0DE0,X

#_05CE1F: PLA
#_05CE20: STA.w $0DC0,X

#_05CE23: JSR Sprite_CheckIfActive_Bank05
#_05CE26: JSR Sprite_CheckDamageToAndFromLink_Bank05
#_05CE29: BCS .no_damage

#_05CE2B: LDA.w $0FDC
#_05CE2E: BEQ .continue

.no_damage
#_05CE30: LDA.w $0D80,X
#_05CE33: CMP.b #$03
#_05CE35: BCS .continue

#_05CE37: LDA.b #$03
#_05CE39: STA.w $0D80,X

#_05CE3C: LDA.b #$20
#_05CE3E: STA.w $0DF0,X

.continue
#_05CE41: LDA.w $0EA0,X
#_05CE44: BEQ .not_recoiling

#_05CE46: CMP.b #$04
#_05CE48: BCC .not_recoiling

#_05CE4A: JSR Archer_NoticeSenpaiWithoutHesitation

.not_recoiling
#_05CE4D: JSR Sprite_CheckIfRecoiling_Bank05
#_05CE50: JSR Guard_MoveIfNoTileCollision
#_05CE53: JSR Sprite_CheckTileCollision_Bank05

#_05CE56: LDA.w $0D80,X

#_05CE59: REP #$30

#_05CE5B: AND.w #$00FF
#_05CE5E: ASL A
#_05CE5F: TAY

#_05CE60: LDA.w .vectors,Y
#_05CE63: DEC A
#_05CE64: PHA

#_05CE65: SEP #$30

#_05CE67: RTS

;---------------------------------------------------------------------------------------------------

.vectors
#_05CE68: dw Archer_Hiding
#_05CE6A: dw Archer_Walking
#_05CE6C: dw Archer_Scanning
#_05CE6E: dw Archer_NoticeSenpai
#_05CE70: dw Archer_Agitated
#_05CE72: dw Archer_Attack

;===================================================================================================

Archer_Hiding:
#_05CE74: JSR Sprite_ZeroVelocity_XY_Bank05

#_05CE77: LDA.w $0DF0,X
#_05CE7A: BNE .exit

#_05CE7C: INC.w $0D80,X

#_05CE7F: JSL GetRandomNumber
#_05CE83: AND.b #$7F
#_05CE85: ADC.b #$50
#_05CE87: STA.w $0DF0,X

#_05CE8A: LDA.w $0DE0,X
#_05CE8D: PHA

#_05CE8E: JSL GetRandomNumber
#_05CE92: AND.b #$03
#_05CE94: STA.w $0DE0,X

#_05CE97: PLA
#_05CE98: CMP.w $0DE0,X
#_05CE9B: BEQ .exit

#_05CE9D: EOR.w $0DE0,X
#_05CEA0: AND.b #$02
#_05CEA2: BNE .exit

#_05CEA4: LDA.b #$0C
#_05CEA6: STA.w $0E00,X

.exit
#_05CEA9: RTS

;===================================================================================================

Archer_Walking:
#_05CEAA: LDA.w $0DF0,X
#_05CEAD: BNE .delay

#_05CEAF: LDA.b #$02
#_05CEB1: STA.w $0D80,X

#_05CEB4: LDA.b #$A0
#_05CEB6: STA.w $0DF0,X

#_05CEB9: RTS

.delay
#_05CEBA: JSR Guard_SendOutProbe

#_05CEBD: LDA.w $0E70,X
#_05CEC0: AND.b #$0F
#_05CEC2: BEQ .no_tile_collision

#_05CEC4: LDA.w $0DE0,X
#_05CEC7: EOR.b #$01
#_05CEC9: STA.w $0DE0,X

#_05CECC: JSR Guard_SetGlanceTo12

.no_tile_collision
#_05CECF: LDY.w $0DE0,X

#_05CED2: LDA.w SharedGuardSpeeds_X,Y
#_05CED5: STA.w $0D50,X

#_05CED8: LDA.w SharedGuardSpeeds_Y,Y
#_05CEDB: STA.w $0D40,X

#_05CEDE: TYA
#_05CEDF: STA.w $0EB0,X

;===================================================================================================

Archer_AdvanceGlance:
#_05CEE2: INC.w $0E80,X

#_05CEE5: LDA.w $0E80,X
#_05CEE8: AND.b #$0F
#_05CEEA: BNE .dont_reset

#_05CEEC: INC.w $0D90,X

#_05CEEF: LDA.w $0D90,X
#_05CEF2: CMP.b #$02
#_05CEF4: BNE .dont_reset

#_05CEF6: STZ.w $0D90,X

.dont_reset
#_05CEF9: LDA.w $0DE0,X
#_05CEFC: ASL A
#_05CEFD: ASL A
#_05CEFE: ADC.w $0D90,X

#_05CF01: LDY.w $0E20,X
#_05CF04: CPY.b #!SPRITE_48
#_05CF06: BNE .not_red_java

#_05CF08: CLC
#_05CF09: ADC.b #$10

.not_red_java
#_05CF0B: TAY

#_05CF0C: LDA.w GuardBodySteps,Y
#_05CF0F: STA.w $0DC0,X

#_05CF12: RTS

;===================================================================================================

Archer_Scanning:
#_05CF13: JSR Sprite_ZeroVelocity_XY_Bank05
#_05CF16: JSR Guard_SendOutProbe

#_05CF19: LDA.w $0DF0,X
#_05CF1C: BNE .delay

#_05CF1E: LDA.b #$20
#_05CF20: STA.w $0DF0,X

#_05CF23: LDA.b #$00
#_05CF25: STA.w $0D80,X

#_05CF28: RTS

.delay
#_05CF29: CMP.b #$80
#_05CF2B: BCS .exit

#_05CF2D: LSR A
#_05CF2E: LSR A
#_05CF2F: LSR A
#_05CF30: AND.b #$07
#_05CF32: STA.b $00

#_05CF34: LDA.w $0DE0,X
#_05CF37: ASL A
#_05CF38: ASL A
#_05CF39: ASL A
#_05CF3A: ORA.b $00
#_05CF3C: TAY

#_05CF3D: LDA.w Guard_GlanceDirections,Y
#_05CF40: STA.w $0EB0,X

.exit
#_05CF43: RTS

;===================================================================================================

Archer_NoticeSenpai:
#_05CF44: JSR Sprite_ZeroVelocity_XY_Bank05
#_05CF47: JSR Sprite_DirectionToFaceLink_Bank05

#_05CF4A: TYA
#_05CF4B: STA.w $0EB0,X

#_05CF4E: LDA.w $0DF0,X
#_05CF51: BNE .exit

;===================================================================================================

#Archer_NoticeSenpaiWithoutHesitation:
#_05CF53: LDA.b #$04
#_05CF55: STA.w $0D80,X

#_05CF58: LDA.b #$3C
#_05CF5A: STA.w $0DF0,X

#_05CF5D: STZ.w $0E80,X

.exit
#_05CF60: RTS

;===================================================================================================

pool Archer_Agitated

.offset_x_low
#_05CF61: db -80,  80,   0,  -8
#_05CF65: db -80,  80,  -8,   8

.offset_x_high
#_05CF69: db  -1,   0,   0,  -1
#_05CF6D: db  -1,   0,  -1,   0

.offset_y_low
#_05CF71: db   8,   8, -80,  80
#_05CF75: db   8,   8, -80,  80

.offset_y_high
#_05CF79: db   0,   0,  -1,   0
#_05CF7D: db   0,   0,  -1,   0

.masks
#_05CF81: db $03, $03, $0C, $0C

pool off

;---------------------------------------------------------------------------------------------------

Archer_Agitated:
#_05CF85: LDY.w $0DE0,X

#_05CF88: LDA.w $0E70,X
#_05CF8B: AND.w .masks,Y
#_05CF8E: BNE .delay

#_05CF90: LDA.w $0DF0,X
#_05CF93: BNE .continue

.delay
#_05CF95: INC.w $0D80,X

#_05CF98: LDA.b #$18
#_05CF9A: STA.w $0DF0,X

#_05CF9D: RTS

.continue
#_05CF9E: TXA
#_05CF9F: EOR.b $1A
#_05CFA1: AND.b #$07
#_05CFA3: BNE .done

#_05CFA5: JSR Sprite_DirectionToFaceLink_Bank05

#_05CFA8: TYA
#_05CFA9: STA.w $0DE0,X
#_05CFAC: STA.w $0EB0,X

#_05CFAF: LDA.w $0E20,X
#_05CFB2: CMP.b #!SPRITE_48
#_05CFB4: BNE .not_javelin

#_05CFB6: INY
#_05CFB7: INY
#_05CFB8: INY
#_05CFB9: INY

.not_javelin
#_05CFBA: LDA.b $22
#_05CFBC: CLC
#_05CFBD: ADC.w .offset_x_low,Y
#_05CFC0: STA.b $04

#_05CFC2: LDA.b $23
#_05CFC4: ADC.w .offset_x_high,Y
#_05CFC7: STA.b $05

#_05CFC9: LDA.b $20
#_05CFCB: CLC
#_05CFCC: ADC.w .offset_y_low,Y
#_05CFCF: STA.b $06

#_05CFD1: LDA.b $21
#_05CFD3: ADC.w .offset_y_high,Y
#_05CFD6: STA.b $07

#_05CFD8: LDA.b #$18
#_05CFDA: JSL Sprite_ProjectSpeedTowardsLocation_long

#_05CFDE: LDA.b $00
#_05CFE0: STA.w $0D40,X

#_05CFE3: LDA.b $01
#_05CFE5: STA.w $0D50,X

#_05CFE8: LDA.b $0E
#_05CFEA: CLC
#_05CFEB: ADC.b #$06
#_05CFED: CMP.b #$0C
#_05CFEF: BCS .done

#_05CFF1: LDA.b $0F
#_05CFF3: CLC
#_05CFF4: ADC.b #$06
#_05CFF6: CMP.b #$0C
#_05CFF8: BCC .delay

;---------------------------------------------------------------------------------------------------

.done
#_05CFFA: INC.w $0E80,X

#_05CFFD: JSR Archer_AdvanceGlance

#_05D000: RTS

;===================================================================================================

SomeGuardAnimStates:
#_05D001: db $19, $19, $18, $18
#_05D005: db $17, $17, $17, $17
#_05D009: db $13, $13, $12, $12
#_05D00D: db $11, $11, $11, $11
#_05D011: db $10, $10, $0F, $0F
#_05D015: db $0E, $0E, $0E, $0E
#_05D019: db $16, $16, $15, $15
#_05D01D: db $14, $14, $14, $14
#_05D021: db $14, $14, $12, $12
#_05D025: db $12, $10, $10, $10
#_05D029: db $15, $15, $08, $08
#_05D02D: db $08, $06, $06, $06
#_05D031: db $16, $16, $04, $04
#_05D035: db $04, $03, $03, $03
#_05D039: db $17, $17, $0F, $0F
#_05D03D: db $0F, $0B, $0B, $0B

;===================================================================================================

Guard_GlanceTimers:
#_05D041: db 13, 13, 12, 12

;===================================================================================================

Archer_Attack:
#_05D045: LDY.w $0DE0,X

#_05D048: LDA.w Guard_GlanceTimers,Y
#_05D04B: STA.w $0EC0,X

#_05D04E: JSR Sprite_ZeroVelocity_XY_Bank05

#_05D051: LDA.w $0DF0,X
#_05D054: BNE .delay

#_05D056: JMP.w Guard_StopAndLookAround

.delay
#_05D059: STZ.w $0E80,X

#_05D05C: CMP.b #$28
#_05D05E: BCC .normal_timer_speed

#_05D060: DEC.w $0E80,X

.normal_timer_speed
#_05D063: CMP.b #$0C
#_05D065: BNE .dont_shoot

#_05D067: PHA
#_05D068: JSR Guard_LaunchProjectile
#_05D06B: PLA

.dont_shoot
#_05D06C: LSR A
#_05D06D: LSR A
#_05D06E: LSR A
#_05D06F: STA.b $00

#_05D071: LDA.w $0DE0,X
#_05D074: ASL A
#_05D075: ASL A
#_05D076: ASL A
#_05D077: ORA.b $00

#_05D079: LDY.w $0E20,X
#_05D07C: CPY.b #!SPRITE_48
#_05D07E: BNE .not_javelin

#_05D080: CLC
#_05D081: ADC.b #$20

.not_javelin
#_05D083: TAY

#_05D084: LDA.w SomeGuardAnimStates,Y
#_05D087: STA.w $0DC0,X

#_05D08A: RTS

;===================================================================================================

pool Guard_LaunchProjectile

.offset_x_low
#_05D08B: db  16,  -8,   3,  11
#_05D08F: db  12,  -4,  12,  -4

.offset_x_high
#_05D093: db   0,  -1,   0,   0
#_05D097: db   0,  -1,   0,  -1

.offset_y_low
#_05D09B: db   2,   2,  16,  -8
#_05D09F: db  -2,  -2,   2,  -8

.offset_y_high
#_05D0A3: db   0,   0,   0,  -1
#_05D0A7: db  -1,  -1,   0,  -1

.speed_x ; bleeds into next
#_05D0AB: db  48, -48,   0,   0,  32, -32

.speed_y
#_05D0B1: db   0,   0,  48, -48,   0,   0,  32, -32
#_05D0B9: db   3,   2,   1,   0,   3,   2,   1,   0

.palette
#_05D0C1: db $05, $05
#_05D0C3: db $06, $06

pool off

;-------------------------------------------------------------------------------]

Guard_LaunchProjectile:
#_05D0C5: LDA.b #!SPRITE_1B
#_05D0C7: JSL Sprite_SpawnDynamically
#_05D0CB: BMI .exit

#_05D0CD: LDA.b #!SFX3_05
#_05D0CF: JSL SpriteSFX_QueueSFX3WithPan

#_05D0D3: PHX

#_05D0D4: LDA.w $0E20,X
#_05D0D7: CMP.b #!SPRITE_48

#_05D0D9: LDA.w $0DE0,X
#_05D0DC: BCC .not_javelin_a

#_05D0DE: CLC
#_05D0DF: ADC.b #$04

.not_javelin_a
#_05D0E1: TAX

#_05D0E2: LDA.b $00
#_05D0E4: CLC
#_05D0E5: ADC.w .offset_x_low,X
#_05D0E8: STA.w $0D10,Y

#_05D0EB: LDA.b $01
#_05D0ED: ADC.w .offset_x_high,X
#_05D0F0: STA.w $0D30,Y

#_05D0F3: LDA.b $02
#_05D0F5: CLC
#_05D0F6: ADC.w .offset_y_low,X
#_05D0F9: STA.w $0D00,Y

#_05D0FC: LDA.b $03
#_05D0FE: ADC.w .offset_y_high,X
#_05D101: STA.w $0D20,Y

#_05D104: LDA.w .speed_x,X
#_05D107: STA.w $0D50,Y

#_05D10A: LDA.w .speed_y,X
#_05D10D: STA.w $0D40,Y

#_05D110: TXA
#_05D111: AND.b #$03
#_05D113: STA.w $0DE0,Y

#_05D116: TAX

#_05D117: LDA.w .palette,X
#_05D11A: STA.w $0F60,Y

#_05D11D: LDA.b #$00
#_05D11F: STA.w $0F70,Y

#_05D122: PLX

#_05D123: LDA.w $0E20,X
#_05D126: CMP.b #!SPRITE_48

#_05D128: LDA.b #$00
#_05D12A: BCC .not_javelin_b

#_05D12C: INC A

.not_javelin_b
#_05D12D: STA.w $0D90,Y
#_05D130: BEQ .exit

#_05D132: LDA.l $7EF35A
#_05D136: BNE .exit

#_05D138: LDA.w $0BE0,Y
#_05D13B: AND.b #$DF
#_05D13D: STA.w $0BE0,Y

.exit
#_05D140: RTS

;===================================================================================================

RedJavelinGuard_Animate:
#_05D141: LDA.w $0DC0,X
#_05D144: PHA

#_05D145: STZ.w $0DC0,X

#_05D148: LDA.w $0F50,X
#_05D14B: PHA

#_05D14C: AND.b #$F1
#_05D14E: ORA.b #$02
#_05D150: STA.w $0F50,X

#_05D153: REP #$20

#_05D155: LDA.w $0FDA
#_05D158: PHA
#_05D159: CLC
#_05D15A: ADC.w #$0008
#_05D15D: STA.w $0FDA

#_05D160: SEP #$20

#_05D162: JSL SpriteDraw_SingleLarge_long

#_05D166: REP #$20

#_05D168: PLA
#_05D169: STA.w $0FDA

#_05D16C: SEP #$20

#_05D16E: PLA
#_05D16F: STA.w $0F50,X

#_05D172: PLA
#_05D173: STA.w $0DC0,X

#_05D176: JSR Sprite_PrepOAMCoord_Bank05

#_05D179: LDY.b #$10
#_05D17B: JSR Guard_AnimateHead_PreserveOAMOffset

#_05D17E: LDY.b #$0C
#_05D180: JSR SpriteDraw_GuardBody

#_05D183: LDA.w $0DC0,X
#_05D186: CMP.b #$14
#_05D188: BCS .use_shadow

#_05D18A: LDY.b #$04
#_05D18C: JSR SpriteDraw_GuardSpear_PreserveOAMOffset

.use_shadow
#_05D18F: JMP.w Guard_DrawShadow

;===================================================================================================

SpriteDraw_RedJavelinGuard:
#_05D192: JSR Sprite_PrepOAMCoord_Bank05

#_05D195: LDY.b #$0C
#_05D197: JSR SpriteDraw_GuardHead

#_05D19A: LDY.b #$08
#_05D19C: JSR SpriteDraw_GuardBody

#_05D19F: LDA.w $0DC0,X
#_05D1A2: CMP.b #$14
#_05D1A4: BCS .use_shadow

#_05D1A6: JSR SpriteDraw_GuardSpear_Fresh

.use_shadow
#_05D1A9: JMP.w Guard_DrawShadow

;===================================================================================================

Sprite_49_RedBushGuard:
#_05D1AC: LDA.w $0D80,X
#_05D1AF: BEQ .continue

#_05D1B1: CMP.b #$02
#_05D1B3: BNE .dont_animate

#_05D1B5: JSR RedJavelinGuard_Animate
#_05D1B8: BRA .continue

.dont_animate
#_05D1BA: JSR SpriteDraw_BushGuardBush

.continue
#_05D1BD: BRA BushGuard_Main

;===================================================================================================

Sprite_47_GreenBushGuard:
#_05D1BF: LDA.w $0D80,X
#_05D1C2: BEQ BushGuard_Main

#_05D1C4: LDA.w $0DC0,X
#_05D1C7: CMP.b #$0E
#_05D1C9: BCC .not_firing_yet

#_05D1CB: JSR SpriteDraw_ArcherGuard

#_05D1CE: BRA BushGuard_Main

.not_firing_yet
#_05D1D0: JSR SpriteDraw_BushGuardBush

;---------------------------------------------------------------------------------------------------

BushGuard_Main:
#_05D1D3: JSR Sprite_CheckIfActive_Bank05

#_05D1D6: LDA.b #$01
#_05D1D8: STA.w $0BA0,X

#_05D1DB: LDA.w $0D80,X

#_05D1DE: REP #$30

#_05D1E0: AND.w #$00FF
#_05D1E3: ASL A
#_05D1E4: TAY

#_05D1E5: LDA.w .vectors,Y
#_05D1E8: DEC A
#_05D1E9: PHA

#_05D1EA: SEP #$30

#_05D1EC: RTS

;---------------------------------------------------------------------------------------------------

.vectors
#_05D1ED: dw BushGuard_Hiding
#_05D1EF: dw BushGuard_Emerging
#_05D1F1: dw BushGuard_Shoot
#_05D1F3: dw BushGuard_Retreating

;===================================================================================================

BushGuard_Hiding:
#_05D1F5: LDA.w $0DF0,X
#_05D1F8: BNE .exit

#_05D1FA: INC.w $0D80,X

#_05D1FD: LDA.b #$40
#_05D1FF: STA.w $0DF0,X

.exit
#_05D202: RTS

;===================================================================================================

pool BushGuard_Emerging

.anim_step
#_05D203: db $04, $04, $04, $04, $04, $04, $04, $04
#_05D20B: db $00, $01, $00, $01, $00, $01, $00, $01

#_05D213: db $00, $01, $00, $01, $00, $01, $00, $01
#_05D21B: db $00, $01, $00, $01, $00, $01, $00, $01

pool off

;---------------------------------------------------------------------------------------------------

BushGuard_Emerging:
#_05D223: JSL Sprite_CheckDamageFromLink_long

#_05D227: LDA.w $0DF0,X
#_05D22A: BNE .delay

#_05D22C: INC.w $0D80,X

#_05D22F: LDA.b #$30
#_05D231: STA.w $0DF0,X

#_05D234: JSR Sprite_DirectionToFaceLink_Bank05

#_05D237: TYA
#_05D238: STA.w $0DE0,X
#_05D23B: STA.w $0EB0,X

#_05D23E: RTS

.delay
#_05D23F: CMP.b #$20
#_05D241: BNE .dont_rustle

#_05D243: PHA
#_05D244: JSR BushGuard_SpawnFoliage
#_05D247: PLA

.dont_rustle
#_05D248: LSR A
#_05D249: LSR A
#_05D24A: TAY

#_05D24B: LDA.w .anim_step,Y
#_05D24E: STA.w $0DC0,X

#_05D251: RTS

;===================================================================================================

BushGuard_SpawnFoliage:
#_05D252: LDA.b #!SPRITE_EC
#_05D254: JSL Sprite_SpawnDynamically
#_05D258: BMI .exit

#_05D25A: JSL Sprite_SetSpawnedCoordinates

#_05D25E: LDA.b #$06
#_05D260: STA.w $0DD0,Y

#_05D263: LDA.b #$20
#_05D265: STA.w $0DF0,Y

#_05D268: LDA.w $0E40,Y
#_05D26B: CLC
#_05D26C: ADC.b #$03
#_05D26E: STA.w $0E40,Y

#_05D271: LDA.b #$02
#_05D273: STA.w $0DB0,Y

.exit
#_05D276: RTS

;===================================================================================================

BushGuard_Shoot:
#_05D277: STZ.w $0BA0,X

#_05D27A: JSR Sprite_CheckDamageToAndFromLink_Bank05

#_05D27D: LDA.w $0DF0,X
#_05D280: BNE .delay

#_05D282: INC.w $0D80,X

#_05D285: LDA.b #$30
#_05D287: STA.w $0DF0,X

#_05D28A: BRA BushGuard_Retreating

.delay
#_05D28C: STZ.w $0D90,X

#_05D28F: CMP.b #$28
#_05D291: BCS .dont_double_tick

#_05D293: DEC.w $0D90,X

.dont_double_tick
#_05D296: CMP.b #$10
#_05D298: BNE .dont_shoot

#_05D29A: PHA
#_05D29B: JSR Guard_LaunchProjectile
#_05D29E: PLA

.dont_shoot
#_05D29F: LSR A
#_05D2A0: LSR A
#_05D2A1: LSR A
#_05D2A2: STA.b $00

#_05D2A4: LDA.w $0DE0,X
#_05D2A7: ASL A
#_05D2A8: ASL A
#_05D2A9: ASL A
#_05D2AA: ORA.b $00

#_05D2AC: LDY.w $0E20,X
#_05D2AF: CPY.b #!SPRITE_49
#_05D2B1: BNE .not_red_bush_guard

#_05D2B3: CLC
#_05D2B4: ADC.b #$20

.not_red_bush_guard
#_05D2B6: TAY

#_05D2B7: LDA.w SomeGuardAnimStates,Y
#_05D2BA: STA.w $0DC0,X

#_05D2BD: RTS

;===================================================================================================

pool BushGuard_Retreating

.anim_step
#_05D2BE: db $00, $01, $00, $01, $00, $01, $00, $01
#_05D2C6: db $00, $02, $03, $04, $04, $04, $04, $04

pool off

;---------------------------------------------------------------------------------------------------

BushGuard_Retreating:
#_05D2CE: JSR Sprite_CheckDamageToAndFromLink_Bank05

#_05D2D1: LDA.w $0DF0,X
#_05D2D4: BNE .delay

#_05D2D6: STZ.w $0D80,X

#_05D2D9: LDA.b #$40
#_05D2DB: STA.w $0DF0,X

#_05D2DE: RTS

.delay
#_05D2DF: LSR A
#_05D2E0: LSR A
#_05D2E1: TAY

#_05D2E2: LDA.w .anim_step,Y
#_05D2E5: STA.w $0DC0,X

#_05D2E8: RTS

;===================================================================================================

pool SpriteDraw_BushGuardBush

.offset_y
#_05D2E9: dw   8,   8
#_05D2ED: dw   8,   8
#_05D2F1: dw   2,   8
#_05D2F5: dw   0,   8
#_05D2F9: dw  -3,   8
#_05D2FD: dw  -3,   8
#_05D301: dw  -3,   8

.char
#_05D305: db $20, $20
#_05D307: db $20, $20
#_05D309: db $40, $20
#_05D30B: db $40, $20
#_05D30D: db $40, $20
#_05D30F: db $42, $20
#_05D311: db $42, $20

.prop
#_05D313: db $09, $03
#_05D315: db $49, $43
#_05D317: db $09, $03
#_05D319: db $49, $43
#_05D31B: db $09, $03
#_05D31D: db $49, $43
#_05D31F: db $09, $03

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_BushGuardBush:
#_05D321: JSR Sprite_PrepOAMCoord_Bank05

#_05D324: LDA.w $0DC0,X
#_05D327: ASL A
#_05D328: STA.b $06

#_05D32A: PHX

#_05D32B: LDX.b #$01

.next_object
#_05D32D: PHX

#_05D32E: TXA
#_05D32F: CLC
#_05D330: ADC.b $06
#_05D332: PHA

#_05D333: ASL A
#_05D334: TAX

#_05D335: REP #$20

#_05D337: LDA.b $00
#_05D339: STA.b ($90),Y

#_05D33B: AND.w #$0100
#_05D33E: STA.b $0E

#_05D340: LDA.b $02
#_05D342: CLC
#_05D343: ADC.w .offset_y,X

#_05D346: INY
#_05D347: STA.b ($90),Y

#_05D349: CLC
#_05D34A: ADC.w #$0010
#_05D34D: CMP.w #$0100
#_05D350: BCC .on_screen

#_05D352: LDA.w #$00F0
#_05D355: STA.b ($90),Y

.on_screen
#_05D357: SEP #$20

#_05D359: PLX

#_05D35A: LDA.w .char,X
#_05D35D: INY
#_05D35E: STA.b ($90),Y

#_05D360: LDA.w .prop,X
#_05D363: ORA.b #$20
#_05D365: PLX
#_05D366: BNE .dont_change_palette

#_05D368: AND.b #$F1
#_05D36A: ORA.b $05

.dont_change_palette
#_05D36C: INY

#_05D36D: STA.b ($90),Y

#_05D36F: PHY

#_05D370: TYA
#_05D371: LSR A
#_05D372: LSR A
#_05D373: TAY

#_05D374: LDA.b #$02
#_05D376: ORA.b $0F
#_05D378: STA.b ($92),Y

#_05D37A: PLY
#_05D37B: INY

#_05D37C: DEX
#_05D37D: BPL .next_object

#_05D37F: PLX

#_05D380: RTS

;===================================================================================================

pool SpriteDraw_ArcherGuard

.weapon
#_05D381: db $00 ; right
#_05D382: db $00 ; left
#_05D383: db $00 ; down
                 ; up bleeds into below

.head
#_05D384: db $10 ; right
#_05D385: db $10 ; left
#_05D386: db $10 ; down
#_05D387: db $00 ; up

.body
#_05D388: db $14 ; right
#_05D389: db $14 ; left
#_05D38A: db $14 ; down
#_05D38B: db $04 ; up

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_ArcherGuard:
#_05D38C: JSR Sprite_PrepOAMCoord_Bank05

#_05D38F: LDY.w $0DE0,X
#_05D392: LDA.w .head,Y
#_05D395: TAY
#_05D396: JSR Guard_AnimateHead_PreserveOAMOffset

#_05D399: LDY.w $0DE0,X
#_05D39C: LDA.w .body,Y
#_05D39F: TAY
#_05D3A0: JSR Guard_AnimateBody_PreserveOAMOffset

#_05D3A3: LDY.w $0DE0,X
#_05D3A6: LDA.w .weapon,Y
#_05D3A9: TAY
#_05D3AA: JSR SpriteDraw_Archer_Weapon

#_05D3AD: JMP.w Guard_DrawShadow

;===================================================================================================

pool SpriteDraw_Archer_Weapon

.offset_x
#_05D3B0: dw  -1,   7,   3,   3
#_05D3B8: dw  -1,   7,   3,   3
#_05D3C0: dw  -1,   7,   7,   7
#_05D3C8: dw  -5,  -5, -10,  -2
#_05D3D0: dw  -4,  -4,  -6,   2
#_05D3D8: dw  -5,  -5,  -5,  -5
#_05D3E0: dw   6,  14,  11,  11
#_05D3E8: dw   6,  14,  11,  11
#_05D3F0: dw   6,  14,  14,  14
#_05D3F8: dw  11,  11,  18,  10
#_05D400: dw  12,  12,  14,   6
#_05D408: dw  11,  11,  11,  11

.offset_y
#_05D410: dw   7,   7,   3,  11
#_05D418: dw   6,   6,   1,   9
#_05D420: dw   7,   7,   7,   7
#_05D428: dw  -2,   6,   2,   2
#_05D430: dw  -2,   6,   2,   2
#_05D438: dw  -2,   6,   6,   6
#_05D440: dw  -6,  -6, -12,  -4
#_05D448: dw  -6,  -6,  -9,  -1
#_05D450: dw  -6,  -6,  -6,  -6
#_05D458: dw  -2,   6,   2,   2
#_05D460: dw  -2,   6,   2,   2
#_05D468: dw  -2,   6,   6,   6

.char
#_05D470: db $0A, $0A, $2A, $2B
#_05D474: db $1A, $1A, $2A, $2B
#_05D478: db $0A, $0A, $0A, $0A
#_05D47C: db $0B, $0B, $3D, $3A
#_05D480: db $1B, $1B, $3D, $3A
#_05D484: db $0B, $0B, $0B, $0B
#_05D488: db $0A, $0A, $2B, $2A
#_05D48C: db $0A, $0A, $2B, $2A
#_05D490: db $0A, $0A, $0A, $0A
#_05D494: db $0B, $0B, $3D, $3A
#_05D498: db $1B, $1B, $3D, $3A
#_05D49C: db $0B, $0B, $0B, $0B

.prop
#_05D4A0: db $0D, $4D, $08, $08
#_05D4A4: db $0D, $4D, $08, $08
#_05D4A8: db $0D, $4D, $4D, $4D
#_05D4AC: db $0D, $8D, $48, $48
#_05D4B0: db $0D, $8D, $48, $48
#_05D4B4: db $0D, $8D, $8D, $8D
#_05D4B8: db $8D, $CD, $88, $88
#_05D4BC: db $8D, $CD, $88, $88
#_05D4C0: db $8D, $CD, $CD, $CD
#_05D4C4: db $4D, $CD, $08, $08
#_05D4C8: db $4D, $CD, $08, $08
#_05D4CC: db $4D, $CD, $CD, $CD

.oam_offset
#_05D4D0: db $09
#_05D4D1: db $03
#_05D4D2: db $00
#_05D4D3: db $06

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Archer_Weapon:
#_05D4D4: LDA.w $0DC0,X
#_05D4D7: SEC
#_05D4D8: SBC.b #$0E
#_05D4DA: BCS .skip_offset

#_05D4DC: PHY

#_05D4DD: LDY.w $0DE0,X
#_05D4E0: LDA.w .oam_offset,Y

#_05D4E3: PLY

.skip_offset
#_05D4E4: ASL A
#_05D4E5: ASL A
#_05D4E6: STA.b $06

#_05D4E8: PHX

#_05D4E9: LDX.b #$03

.next_object
#_05D4EB: PHX

#_05D4EC: TXA
#_05D4ED: CLC
#_05D4EE: ADC.b $06
#_05D4F0: PHA

#_05D4F1: ASL A
#_05D4F2: TAX

#_05D4F3: REP #$20

#_05D4F5: LDA.b $00
#_05D4F7: CLC
#_05D4F8: ADC.w .offset_x,X
#_05D4FB: STA.b ($90),Y

#_05D4FD: AND.w #$0100
#_05D500: STA.b $0E

#_05D502: LDA.b $02
#_05D504: CLC
#_05D505: ADC.w .offset_y,X

#_05D508: INY
#_05D509: STA.b ($90),Y

#_05D50B: CLC
#_05D50C: ADC.w #$0010
#_05D50F: CMP.w #$0100
#_05D512: BCC .on_screen

#_05D514: LDA.w #$00F0
#_05D517: STA.b ($90),Y

.on_screen
#_05D519: SEP #$20

#_05D51B: PLX

#_05D51C: LDA.w .char,X
#_05D51F: INY
#_05D520: STA.b ($90),Y

#_05D522: LDA.w .prop,X
#_05D525: ORA.b #$20
#_05D527: INY
#_05D528: STA.b ($90),Y

#_05D52A: PHY

#_05D52B: TYA
#_05D52C: LSR A
#_05D52D: LSR A
#_05D52E: TAY

#_05D52F: LDA.b $0F
#_05D531: STA.b ($92),Y

#_05D533: PLY
#_05D534: INY

#_05D535: PLX
#_05D536: DEX
#_05D537: BPL .next_object

#_05D539: PLX

#_05D53A: RTS

;===================================================================================================
; !DUMB I hate this.
;===================================================================================================
TutorialGuardOrBarrier:
#_05D53B: PHB
#_05D53C: PHK
#_05D53D: PLB

#_05D53E: JSR GuardOrBarrierTest

#_05D541: PLB

#_05D542: RTL

;===================================================================================================

BarrierBounce:
#_05D543: JSL Sprite_40_LightningGate

#_05D547: RTS

;===================================================================================================

pool Sprite_3F_TutorialGuard

.anim_step
#_05D548: db $02, $01, $00, $03

pool off

;===================================================================================================

GuardOrBarrierTest:
#_05D54C: LDA.w $0E20,X
#_05D54F: CMP.b #!SPRITE_40
#_05D551: BEQ BarrierBounce

;===================================================================================================

Sprite_3F_TutorialGuard:
#_05D553: LDY.w $0DE0,X

#_05D556: PHY

#_05D557: LDA.w $0E00,X
#_05D55A: BEQ .dont_turn

#_05D55C: LDA.w SpriteDirections_Bank05,Y
#_05D55F: STA.w $0DE0,X

.dont_turn
#_05D562: LDY.w $0DE0,X

#_05D565: LDA.w .anim_step,Y
#_05D568: STA.w $0DC0,X

#_05D56B: JSR SpriteDraw_TutorialGuard

#_05D56E: PLA
#_05D56F: STA.w $0DE0,X

#_05D572: JSR Sprite_CheckIfActive_Bank05
#_05D575: JSL Sprite_CheckDamageFromLink_long

#_05D579: LDA.w $040A
#_05D57C: CMP.b #$1B
#_05D57E: BNE .use_default_messages

; Message 00B0
#_05D580: LDA.b #$B0

; !HARDCODED position check
#_05D582: LDY.w $0D00,X
#_05D585: CPY.b #$50
#_05D587: BEQ .soldier_on_walls

; Message 00B1
#_05D589: LDA.b #$B1
#_05D58B: CPY.b #$90
#_05D58D: BNE .use_default_messages

.soldier_on_walls
#_05D58F: LDY.b #$00
#_05D591: JSL TutorialGuard_ShowMessageOnContact
#_05D595: BRA .continue

.use_default_messages

#_05D597: LDA.w $0B69
#_05D59A: PHA

#_05D59B: CLC
#_05D59C: ADC.b #$0D

#_05D59E: LDY.b #$00
#_05D5A0: JSL TutorialGuard_ShowMessageOnContact

#_05D5A4: PLA
#_05D5A5: BCC .set_message

#_05D5A7: INC A
#_05D5A8: CMP.b #$07
#_05D5AA: BNE .set_message

#_05D5AC: LDA.b #$00

.set_message
#_05D5AE: STA.w $0B69

.continue
#_05D5B1: JSR Sprite_CheckDamageToAndFromLink_Bank05

#_05D5B4: TXA
#_05D5B5: EOR.b $1A
#_05D5B7: AND.b #$1F
#_05D5B9: BNE .exit

#_05D5BB: JSR CannonGuard_FaceLink

.exit
#_05D5BE: RTS

;===================================================================================================

pool SpriteDraw_TutorialGuard

.offset_x
#_05D5BF: dw   4,   0,  -6,  -6,   2
#_05D5C9: dw   0,   0,  -7,  -7,  -7
#_05D5D3: dw   0,   0,  15,  15,  15
#_05D5DD: dw   6,  14,  -4,   4,   0

.offset_y
#_05D5E7: dw   0, -10,  -4,  12,  12
#_05D5F1: dw   0,  -9, -11,  -3,   5
#_05D5FB: dw   0,  -9, -11,  -3,   5
#_05D605: dw -11,   5,   0,   0,  -9

.char
#_05D60F: db $46, $40, $00, $28, $29
#_05D614: db $4E, $42, $39, $2A, $3A
#_05D619: db $4E, $42, $39, $2A, $3A
#_05D61E: db $26, $38, $64, $64, $44

.flip
#_05D623: db $40, $00, $00, $00, $00
#_05D628: db $00, $00, $00, $00, $00
#_05D62D: db $40, $40, $40, $40, $40
#_05D632: db $00, $40, $00, $40, $00

.size
#_05D637: db $02, $02, $02, $00, $00
#_05D63C: db $02, $02, $00, $00, $00
#_05D641: db $02, $02, $00, $00, $00
#_05D646: db $02, $00, $02, $02, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_TutorialGuard:
#_05D64B: JSR Sprite_PrepOAMCoord_Bank05

#_05D64E: LDA.w $0DC0,X
#_05D651: ASL A
#_05D652: ASL A
#_05D653: ADC.w $0DC0,X
#_05D656: STA.b $06

#_05D658: PHX

#_05D659: LDX.b #$04

.next_object
#_05D65B: PHX

#_05D65C: TXA
#_05D65D: CLC
#_05D65E: ADC.b $06
#_05D660: PHA

#_05D661: ASL A
#_05D662: TAX

#_05D663: REP #$20

#_05D665: LDA.w .offset_x,X
#_05D668: CLC
#_05D669: ADC.b $00
#_05D66B: STA.b ($90),Y

#_05D66D: AND.w #$0100
#_05D670: STA.b $0E

#_05D672: LDA.w .offset_y,X
#_05D675: CLC
#_05D676: ADC.b $02

#_05D678: INY
#_05D679: STA.b ($90),Y

#_05D67B: CLC
#_05D67C: ADC.w #$0010
#_05D67F: CMP.w #$0100
#_05D682: BCC .on_screen

#_05D684: LDA.w #$00F0
#_05D687: STA.b ($90),Y

.on_screen
#_05D689: SEP #$20

#_05D68B: PLX

#_05D68C: LDA.w .char,X
#_05D68F: INY
#_05D690: STA.b ($90),Y

#_05D692: CMP.b #$40
#_05D694: LDA.w .flip,X

#_05D697: ORA.b $05
#_05D699: BCS .keep_palette

#_05D69B: AND.b #$F1
#_05D69D: ORA.b #$08

.keep_palette
#_05D69F: INY
#_05D6A0: STA.b ($90),Y

#_05D6A2: PHY

#_05D6A3: TYA
#_05D6A4: LSR A
#_05D6A5: LSR A
#_05D6A6: TAY

#_05D6A7: LDA.w .size,X
#_05D6AA: ORA.b $0F
#_05D6AC: STA.b ($92),Y

#_05D6AE: PLY
#_05D6AF: INY

#_05D6B0: PLX
#_05D6B1: DEX
#_05D6B2: BPL .next_object

#_05D6B4: PLX

#_05D6B5: LDA.b #$0C
#_05D6B7: JSL SpriteDraw_Shadow_custom_long

#_05D6BB: RTS

;===================================================================================================
; TODO these are bad, look at poke rewrite
Sprite_04_PullSwitch:
Sprite_05_PullSwitch:
Sprite_06_PullSwitch:
Sprite_07_PullSwitch:
Sprite_PullSwitch:
#_05D6BC: PHB
#_05D6BD: PHK
#_05D6BE: PLB

#_05D6BF: LDA.w $0E20,X
#_05D6C2: CMP.b #!SPRITE_07
#_05D6C4: BEQ .facing_up

#_05D6C6: CMP.b #!SPRITE_05
#_05D6C8: BNE .facing_down

.facing_up
#_05D6CA: JSR PullSwitch_FacingUp

#_05D6CD: PLB

#_05D6CE: RTL

.facing_down
#_05D6CF: JSR PullSwitch_FacingDown

#_05D6D2: PLB

#_05D6D3: RTL

;===================================================================================================

PullSwitch_FacingUp:
#_05D6D4: JSR PullSwitch_HandleUpPulling

#_05D6D7: LDY.w $0DC0,X
#_05D6DA: BEQ .continue

#_05D6DC: CPY.b #$0B
#_05D6DE: BEQ .continue

; TODO ????
#_05D6E0: LDA.w PullSwitch_LinkAnimState,Y
#_05D6E3: STA.w $0377

#_05D6E6: LDA.w $0D00,X
#_05D6E9: SEC
#_05D6EA: SBC.b #$13
#_05D6EC: STA.b $20

#_05D6EE: LDA.w $0D20,X
#_05D6F1: SBC.b #$00
#_05D6F3: STA.b $21

#_05D6F5: LDA.w $0D10,X
#_05D6F8: STA.b $22

#_05D6FA: LDA.w $0D30,X
#_05D6FD: STA.b $23

#_05D6FF: LDA.w $0DF0,X
#_05D702: BNE .continue

#_05D704: INC.w $0DC0,X

#_05D707: LDY.w $0DC0,X
#_05D70A: CPY.b #$0B
#_05D70C: BNE .skip_sfx

#_05D70E: LDA.b #!SFX3_1B
#_05D710: STA.w $012F

#_05D713: LDA.b #$01
#_05D715: STA.w $0642

.skip_sfx
#_05D718: LDA.w PullSwitch_Timers-2,Y
#_05D71B: STA.w $0DF0,X

#_05D71E: BRA .continue ; useless

.continue
#_05D720: LDA.w $0E20,X
#_05D723: CMP.b #!SPRITE_07
#_05D725: BEQ .wrong_switch

#_05D727: JSR SpriteDraw_PullSwitch_Good_Up

#_05D72A: RTS

.wrong_switch
#_05D72B: JSR SpriteDraw_PullSwitch_Bad_Up

#_05D72E: RTS

;===================================================================================================

PullSwitch_Timers:
#_05D72F: db   8,  24,   4,   4
#_05D733: db   4,   4,   4,   4
#_05D737: db   2

;===================================================================================================

PullSwitch_LinkAnimState:
#_05D738: db $0A, $06, $07, $08
#_05D73C: db $08, $08, $08, $08
#_05D740: db $09, $09, $09

;===================================================================================================

PullSwitch_HandleUpPulling:
#_05D743: JSL Sprite_CheckDamageToLink_same_layer_long
#_05D747: BCC .exit

#_05D749: STZ.b $27
#_05D74B: STZ.b $28

#_05D74D: JSL Sprite_RepelDash_long

#_05D751: STZ.b $48

#_05D753: LDA.w $0020
#_05D756: SEC
#_05D757: SBC.w $0D00,X
#_05D75A: CMP.b #$02
#_05D75C: BPL .snap_link_down

#_05D75E: CMP.b #$F4
#_05D760: BMI .check_for_press

#_05D762: LDA.w $0022
#_05D765: CMP.w $0D10,X
#_05D768: BPL .snap_link_right

.snap_link_left
#_05D76A: LDA.w $0D10,X
#_05D76D: SEC
#_05D76E: SBC.b #$10
#_05D770: STA.b $22

#_05D772: LDA.w $0D30,X
#_05D775: SBC.b #$00
#_05D777: STA.b $23

#_05D779: RTS

.snap_link_right
#_05D77A: LDA.w $0D10,X
#_05D77D: CLC
#_05D77E: ADC.b #$0E
#_05D780: STA.b $22

#_05D782: LDA.w $0D30,X
#_05D785: ADC.b #$00
#_05D787: STA.b $23

.exit
#_05D789: RTS

;---------------------------------------------------------------------------------------------------

.check_for_press
#_05D78A: INC.w $0379

#_05D78D: LDA.b $F2
#_05D78F: BPL .snap_link_up

#_05D791: LDA.b $F0
#_05D793: AND.b #$03
#_05D795: BNE .snap_link_up

#_05D797: LDA.w $0DC0,X
#_05D79A: BNE .snap_link_up

#_05D79C: INC.w $0DC0,X

#_05D79F: LDA.b #$08
#_05D7A1: STA.w $0DF0,X

#_05D7A4: LDA.b #!SFX2_22
#_05D7A6: JSL SpriteSFX_QueueSFX2WithPan

.snap_link_up
#_05D7AA: LDA.w $0D00,X
#_05D7AD: SEC
#_05D7AE: SBC.b #$15
#_05D7B0: STA.b $20

#_05D7B2: LDA.w $0D20,X
#_05D7B5: SBC.b #$00
#_05D7B7: STA.b $21

#_05D7B9: RTS

.snap_link_down
#_05D7BA: LDA.w $0D00,X
#_05D7BD: CLC
#_05D7BE: ADC.b #$09
#_05D7C0: STA.b $20

#_05D7C2: LDA.w $0D20,X
#_05D7C5: ADC.b #$00
#_05D7C7: STA.b $21

#_05D7C9: RTS

;===================================================================================================

pool SpriteDraw_PullSwitch_Good_Up

.offset_x
#_05D7CA: db  -4,  12,   0,  -4,   4,   4

.offset_y
#_05D7D0: db  -3,  -3,   0,   5,   5,   5

.char
#_05D7D6: db $D2, $D2, $C4, $E4, $E4, $E4

.flip
#_05D7DC: db $40, $00, $00, $40 ; bleeds into next I think?

.size
#_05D7E0: db $00, $00, $02, $02, $02, $02

pool off

;===================================================================================================

DrawPullSwitch_pull_distance:
#_05D7E6: db $00, $01, $02, $03, $04, $05, $05

;===================================================================================================

DrawPullSwitch_data_index:
#_05D7ED: db $00, $00, $01, $01
#_05D7F1: db $02, $02, $03, $03
#_05D7F5: db $04, $05, $05, $05

;===================================================================================================

SpriteDraw_PullSwitch_Good_Up:
#_05D7F9: JSR Sprite_PrepOAMCoord_Bank05
#_05D7FC: JSL OAM_AllocateDeferToPlayer_long

#_05D800: LDY.w $0DC0,X

#_05D803: LDA.w DrawPullSwitch_data_index,Y
#_05D806: TAY

#_05D807: LDA.w DrawPullSwitch_pull_distance,Y
#_05D80A: STA.b $06

#_05D80C: PHX

#_05D80D: LDX.b #$04
#_05D80F: LDY.b #$00

.next_object
#_05D811: LDA.b $00
#_05D813: CLC
#_05D814: ADC.w .offset_x,X
#_05D817: STA.b ($90),Y

#_05D819: LDA.b $02
#_05D81B: CLC
#_05D81C: ADC.w .offset_y,X

#_05D81F: INY
#_05D820: STA.b ($90),Y

#_05D822: LDA.w .char,X
#_05D825: INY
#_05D826: STA.b ($90),Y

#_05D828: LDA.w .flip,X
#_05D82B: ORA.b #$21
#_05D82D: INY
#_05D82E: STA.b ($90),Y

#_05D830: PHY

; TODO ??
#_05D831: CPX.b #$02
#_05D833: BNE .skip

#_05D835: DEY
#_05D836: DEY

#_05D837: LDA.b ($90),Y
#_05D839: SEC
#_05D83A: SBC.b $06
#_05D83C: STA.b ($90),Y

.skip
#_05D83E: TYA
#_05D83F: LSR A
#_05D840: LSR A
#_05D841: TAY

#_05D842: LDA.w .size,X
#_05D845: STA.b ($92),Y

#_05D847: PLY
#_05D848: INY

#_05D849: DEX
#_05D84A: BPL .next_object

#_05D84C: PLX

#_05D84D: LDY.b #$FF
#_05D84F: LDA.b #$04
#_05D851: JSL Sprite_CorrectOAMEntries_long

#_05D855: RTS

;===================================================================================================

pool SpriteDraw_PullSwitch_Bad_Up

.char
#_05D856: db $A2, $A4

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_PullSwitch_Bad_Up:
#_05D858: JSR Sprite_PrepOAMCoord_Bank05
#_05D85B: JSL OAM_AllocateDeferToPlayer_long

#_05D85F: LDY.w $0DC0,X

#_05D862: LDA.w DrawPullSwitch_data_index,Y
#_05D865: TAY

#_05D866: LDA.w DrawPullSwitch_pull_distance,Y
#_05D869: STA.b $06
#_05D86B: STZ.b $07

#_05D86D: PHX

#_05D86E: LDX.b #$01
#_05D870: LDY.b #$00

.next_object
#_05D872: REP #$20

#_05D874: LDA.b $00
#_05D876: STA.b ($90),Y

#_05D878: AND.w #$0100
#_05D87B: STA.b $0E

#_05D87D: LDA.b $02

; TODO ???
#_05D87F: CPX.b #$00
#_05D881: BNE .skip

#_05D883: SEC
#_05D884: SBC.b $06

.skip
#_05D886: INY
#_05D887: STA.b ($90),Y

#_05D889: CLC
#_05D88A: ADC.w #$0010
#_05D88D: CMP.w #$0100

#_05D890: SEP #$20
#_05D892: BCC .on_screen

#_05D894: LDA.b #$F0
#_05D896: STA.b ($90),Y

.on_screen
#_05D898: LDA.w .char,X
#_05D89B: INY
#_05D89C: STA.b ($90),Y

#_05D89E: LDA.b $05
#_05D8A0: INY
#_05D8A1: STA.b ($90),Y

#_05D8A3: PHY

#_05D8A4: TYA
#_05D8A5: LSR A
#_05D8A6: LSR A
#_05D8A7: TAY

#_05D8A8: LDA.b #$02
#_05D8AA: ORA.b $0F
#_05D8AC: STA.b ($92),Y

#_05D8AE: PLY
#_05D8AF: INY

#_05D8B0: DEX
#_05D8B1: BPL .next_object

#_05D8B3: PLX

#_05D8B4: RTS

;===================================================================================================

PullSwitch_FacingDown:
#_05D8B5: JSR PullSwitch_HandleDownPulling
#_05D8B8: LDY.w $0DC0,X
#_05D8BB: BEQ .continue

#_05D8BD: CPY.b #$0D
#_05D8BF: BEQ .continue

#_05D8C1: LDA.w .grab_anim_state,Y
#_05D8C4: STA.w $0377

#_05D8C7: LDA.w $0D00,X
#_05D8CA: CLC
#_05D8CB: ADC.w .snap_offset_y,Y
#_05D8CE: STA.b $20

#_05D8D0: LDA.w $0D20,X
#_05D8D3: ADC.b #$00
#_05D8D5: STA.b $21

#_05D8D7: LDA.w $0D10,X
#_05D8DA: STA.b $22

#_05D8DC: LDA.w $0D30,X
#_05D8DF: STA.b $23

#_05D8E1: LDA.w $0DF0,X
#_05D8E4: BNE .continue

#_05D8E6: INC.w $0DC0,X

#_05D8E9: LDY.w $0DC0,X
#_05D8EC: CPY.b #$0D
#_05D8EE: BNE .adjust_timer

#_05D8F0: LDA.w $0E20,X
#_05D8F3: CMP.b #!SPRITE_06
#_05D8F5: BNE .good_switch

#_05D8F7: LDA.b #$01
#_05D8F9: STA.w $0CF4

#_05D8FC: LDA.b #!SFX2_3C
#_05D8FE: STA.w $012E

#_05D901: BRA .adjust_timer

;---------------------------------------------------------------------------------------------------

.good_switch
#_05D903: LDA.b #$01
#_05D905: STA.w $0642

#_05D908: LDA.b #!SFX3_1B
#_05D90A: STA.w $012F

.adjust_timer
#_05D90D: LDA.w .timers-2,Y
#_05D910: STA.w $0DF0,X

#_05D913: BRA .continue ; useless

;---------------------------------------------------------------------------------------------------

.continue
#_05D915: JSR SpriteDraw_PullSwitch_Down

#_05D918: LDA.w $0F00,X
#_05D91B: BEQ .exit

#_05D91D: STZ.w $0DC0,X

.exit
#_05D920: RTS

;---------------------------------------------------------------------------------------------------

.timers
#_05D921: db   5,   5,   5,   5
#_05D925: db   5,   5,   5,   5
#_05D929: db   5,   5,   5

.grab_anim_state
#_05D92C: db $05, $01, $01, $02
#_05D930: db $02, $03, $03, $01
#_05D934: db $01, $04, $04, $05

.snap_offset_y
#_05D938: db   5,   9,   9,  10
#_05D93C: db  10,  11,  11,  12
#_05D940: db  12,  13,  13,  14
#_05D944: db  14

;===================================================================================================

pool SpriteDraw_PullSwitch_Down

.pull_distance
#_05D945: db $01, $01, $02, $03
#_05D949: db $02, $03, $04, $05
#_05D94D: db $06, $07, $06, $07
#_05D951: db $07, $07

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_PullSwitch_Down:
#_05D953: JSR Sprite_PrepOAMCoord_Bank05
#_05D956: JSL OAM_AllocateDeferToPlayer_long

#_05D95A: LDY.w $0DC0,X

#_05D95D: LDA.w .pull_distance,Y
#_05D960: STA.b $06

#_05D962: LDY.b #$04

#_05D964: LDA.b $00
#_05D966: STA.b ($90),Y

#_05D968: LDY.b #$00
#_05D96A: STA.b ($90),Y

#_05D96C: LDA.b $02
#_05D96E: DEC A
#_05D96F: LDY.b #$01
#_05D971: STA.b ($90),Y

#_05D973: CLC
#_05D974: ADC.b $06
#_05D976: LDY.b #$05
#_05D978: STA.b ($90),Y

#_05D97A: LDA.b #$CE
#_05D97C: LDY.b #$06
#_05D97E: STA.b ($90),Y

#_05D980: LDA.b #$EE
#_05D982: LDY.b #$02
#_05D984: STA.b ($90),Y

#_05D986: LDA.b $05
#_05D988: LDY.b #$03
#_05D98A: STA.b ($90),Y

#_05D98C: LDY.b #$07
#_05D98E: STA.b ($90),Y

#_05D990: LDY.b #$02
#_05D992: LDA.b #$01
#_05D994: JSL Sprite_CorrectOAMEntries_long

#_05D998: RTS

;===================================================================================================

PullSwitch_HandleDownPulling:
#_05D999: JSL Sprite_CheckDamageToLink_same_layer_long
#_05D99D: BCC .exit

#_05D99F: STZ.b $27
#_05D9A1: STZ.b $28

#_05D9A3: JSL Sprite_RepelDash_long

#_05D9A7: STZ.b $48

#_05D9A9: LDA.w $0020
#_05D9AC: SEC
#_05D9AD: SBC.w $0D00,X
#_05D9B0: CMP.b #$02
#_05D9B2: BPL .check_input

#_05D9B4: CMP.b #$F4
#_05D9B6: BMI .snap_link_up

#_05D9B8: LDA.w $0022
#_05D9BB: CMP.w $0D10,X
#_05D9BE: BPL .snap_link_right

#_05D9C0: LDA.w $0D10,X
#_05D9C3: SEC
#_05D9C4: SBC.b #$10
#_05D9C6: STA.b $22

#_05D9C8: LDA.w $0D30,X
#_05D9CB: SBC.b #$00
#_05D9CD: STA.b $23

.exit
#_05D9CF: RTS

;---------------------------------------------------------------------------------------------------

.snap_link_right
#_05D9D0: LDA.w $0D10,X
#_05D9D3: CLC
#_05D9D4: ADC.b #$0E
#_05D9D6: STA.b $22

#_05D9D8: LDA.w $0D30,X
#_05D9DB: ADC.b #$00
#_05D9DD: STA.b $23

#_05D9DF: RTS

;---------------------------------------------------------------------------------------------------

.snap_link_up
#_05D9E0: LDA.w $0D00,X
#_05D9E3: SEC
#_05D9E4: SBC.b #$15
#_05D9E6: STA.b $20

#_05D9E8: LDA.w $0D20,X
#_05D9EB: SBC.b #$00
#_05D9ED: STA.b $21

#_05D9EF: RTS

;---------------------------------------------------------------------------------------------------

.check_input
#_05D9F0: INC.w $0379

#_05D9F3: LDA.b $F2
#_05D9F5: BPL .no_pull

#_05D9F7: LDA.b $F0
#_05D9F9: AND.b #$03
#_05D9FB: BNE .no_pull

#_05D9FD: INC.w $0377

#_05DA00: LDA.b $F0
#_05DA02: AND.b #$04
#_05DA04: BEQ .no_pull

#_05DA06: LDA.w $0DC0,X
#_05DA09: BNE .no_pull

#_05DA0B: INC.w $0DC0,X

#_05DA0E: LDA.b #$0C
#_05DA10: STA.w $0DF0,X

#_05DA13: LDA.b #!SFX2_22
#_05DA15: JSL SpriteSFX_QueueSFX2WithPan

;---------------------------------------------------------------------------------------------------

.no_pull
#_05DA19: LDA.w $0D00,X
#_05DA1C: CLC
#_05DA1D: ADC.b #$09
#_05DA1F: STA.b $20

#_05DA21: LDA.w $0D20,X
#_05DA24: ADC.b #$00
#_05DA26: STA.b $21

#_05DA28: RTS

;===================================================================================================

SpritePrep_UncleAndPriest:
#_05DA29: PHB
#_05DA2A: PHK
#_05DA2B: PLB

#_05DA2C: JSR UncleOrPriestPrepCheck

#_05DA2F: PLB

#_05DA30: RTL

;===================================================================================================

pool SpritePrep_Priest

.offset_x
#_05DA31: dw -6, -6, -6

.offset_y
#_05DA37: dw  0, -9,  0

pool off

;===================================================================================================

UncleOrPriestPrepCheck:
#_05DA3D: LDA.b $A0
#_05DA3F: CMP.b #$12
#_05DA41: BEQ SpritePrep_Priest

#_05DA43: JMP.w SpritePrep_Uncle

;===================================================================================================

SpritePrep_Priest:
#_05DA46: JSR Priest_SpawnMantle

#_05DA49: LDA.l $7EF3C5
#_05DA4D: CMP.b #$03
#_05DA4F: BCC .aga_not_defeated

#_05DA51: LDA.l $7EF3C6
#_05DA55: ORA.b #$02
#_05DA57: STA.l $7EF3C6

.aga_not_defeated
#_05DA5B: LDA.l $7EF3C6
#_05DA5F: AND.b #$02
#_05DA61: BEQ .alive_and_well

#_05DA63: STZ.w $0DD0,X

#_05DA66: RTS

;---------------------------------------------------------------------------------------------------

.alive_and_well
#_05DA67: LDA.b #$01
#_05DA69: STA.w $0E90,X

#_05DA6C: LDA.w $0E40,X
#_05DA6F: AND.b #$F0
#_05DA71: ORA.b #$02
#_05DA73: STA.w $0E40,X

#_05DA76: LDA.b #$03
#_05DA78: STA.w $0F60,X

#_05DA7B: LDA.l $7EF359
#_05DA7F: CMP.b #$02
#_05DA81: BCC .no_master_sword

#_05DA83: LDA.b #$04
#_05DA85: STA.w $0DE0,X

#_05DA88: STZ.w $0DC0,X

#_05DA8B: LDA.b #$00
#_05DA8D: BRA .continue

;---------------------------------------------------------------------------------------------------

.no_master_sword
#_05DA8F: JSR Sprite_DirectionToFaceLink_Bank05

#_05DA92: TYA
#_05DA93: EOR.b #$03
#_05DA95: STA.w $0EB0,X
#_05DA98: STA.w $0DE0,X

#_05DA9B: LDA.l $7EF3CC
#_05DA9F: CMP.b #!FOLLOWER_01
#_05DAA1: BNE .dont_have_zelda

#_05DAA3: LDA.l $7EF3C6
#_05DAA7: ORA.b #$04
#_05DAA9: STA.l $7EF3C6

; Hyrule Castle overlay
#_05DAAD: LDA.l $7EF29B
#_05DAB1: ORA.b #$20
#_05DAB3: STA.l $7EF29B

#_05DAB7: LDA.b #$AA
#_05DAB9: STA.w $0DF0,X

#_05DABC: LDA.b #$01
#_05DABE: BRA .continue

.dont_have_zelda
#_05DAC0: LDA.b #$02

;---------------------------------------------------------------------------------------------------

.continue
#_05DAC2: STA.w $0E80,X
#_05DAC5: ASL A
#_05DAC6: TAY

#_05DAC7: LDA.w .offset_x+0,Y
#_05DACA: CLC
#_05DACB: ADC.w $0D10,X
#_05DACE: STA.w $0D10,X

#_05DAD1: LDA.w .offset_x+1,Y
#_05DAD4: ADC.w $0D30,X
#_05DAD7: STA.w $0D30,X

#_05DADA: LDA.w .offset_y+0,Y
#_05DADD: CLC
#_05DADE: ADC.w $0D00,X
#_05DAE1: STA.w $0D00,X

#_05DAE4: LDA.w .offset_y+1,Y
#_05DAE7: ADC.w $0D20,X
#_05DAEA: STA.w $0D20,X

#_05DAED: INC.w $0BA0,X

; Zelda dialog counter
#_05DAF0: LDA.b #$00
#_05DAF2: STA.l $7FFE01

#_05DAF6: RTS

;===================================================================================================

SpritePrep_Uncle:
#_05DAF7: CMP.b #$04
#_05DAF9: BNE .not_house

#_05DAFB: LDA.l $7EF3C6
#_05DAFF: AND.b #$10
#_05DB01: BNE .kill_your_uncle

#_05DB03: LDA.w $0D10,X
#_05DB06: CLC
#_05DB07: ADC.b #$08
#_05DB09: STA.w $0D10,X

#_05DB0C: RTS

.not_house
#_05DB0D: LDA.l $7EF3C6
#_05DB11: AND.b #$01
#_05DB13: BNE .kill_your_uncle

#_05DB15: LDA.b #$03
#_05DB17: STA.w $0DE0,X

#_05DB1A: LSR A
#_05DB1B: STA.w $0E80,X

#_05DB1E: RTS

;---------------------------------------------------------------------------------------------------

.kill_your_uncle
#_05DB1F: STZ.w $0DD0,X

#_05DB22: RTS

;===================================================================================================

pool Priest_SpawnMantle

.mantle_position_x_low
#_05DB23: db $F0

.mantle_position_x_high
#_05DB24: db $04

.mantle_position_y_low
#_05DB25: db $37

.mantle_position_y_high
#_05DB26: db $02

pool off

;---------------------------------------------------------------------------------------------------

Priest_SpawnMantle:
; What? Is this forcing this sprite to exist and then killing it?
#_05DB27: INC.w $0DDF

; Why not use the slot limited version of the routine?
#_05DB2A: LDA.b #!SPRITE_73
#_05DB2C: JSL Sprite_SpawnDynamically

#_05DB30: STZ.w $0DDF

#_05DB33: LDA.w $0E40,Y
#_05DB36: AND.b #$F0
#_05DB38: ORA.b #$03
#_05DB3A: STA.w $0E40,Y

#_05DB3D: LDA.w .mantle_position_x_low
#_05DB40: STA.w $0D10,Y

#_05DB43: LDA.w .mantle_position_x_high
#_05DB46: STA.w $0D30,Y

#_05DB49: LDA.w .mantle_position_y_low
#_05DB4C: STA.w $0D00,Y

#_05DB4F: LDA.w .mantle_position_y_high
#_05DB52: STA.w $0D20,Y

#_05DB55: LDA.b #$02
#_05DB57: STA.w $0E90,Y

#_05DB5A: LDA.b #$0B
#_05DB5C: STA.w $0F60,Y

#_05DB5F: LDA.w $0CAA,Y
#_05DB62: ORA.b #$20
#_05DB64: STA.w $0CAA,Y

#_05DB67: LDA.b #$01
#_05DB69: STA.w $0E80,Y

#_05DB6C: LDA.w $0D00,Y
#_05DB6F: STA.b $00

#_05DB71: LDA.w $0D20,Y
#_05DB74: STA.b $01

#_05DB76: REP #$30

#_05DB78: LDA.b $20
#_05DB7A: CMP.b $00

#_05DB7C: SEP #$30
#_05DB7E: BCS .exit

#_05DB80: LDA.b #$01
#_05DB82: STA.w $0DB0,Y

.exit
#_05DB85: RTS

;===================================================================================================

Sprite_73_UncleAndPriest:
#_05DB86: PHB
#_05DB87: PHK
#_05DB88: PLB

#_05DB89: JSR .main

#_05DB8C: PLB

#_05DB8D: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05DB8E: LDA.w $0E90,X
#_05DB91: JSL JumpTableLocal
#_05DB95: dw Sprite_Uncle
#_05DB97: dw Sprite_Priest
#_05DB99: dw Sprite_SanctuaryMantle

;===================================================================================================

Sprite_SanctuaryMantle:
#_05DB9B: JSR SpriteDraw_SanctuaryMantle
#_05DB9E: JSR Sprite_CheckIfActive_Bank05

#_05DBA1: LDA.w $0DB0,X
#_05DBA4: BNE SanctuaryMantle_SlidingOpen

#_05DBA6: JSL Sprite_CheckDamageToLink_same_layer_long
#_05DBAA: BCC SanctuaryMantle_NoContact

;===================================================================================================

SanctuaryMantle_MadeContact:
#_05DBAC: JSL Sprite_CancelHookshot

#_05DBB0: STZ.b $5E

#_05DBB2: JSL Sprite_RepelDash_long

#_05DBB6: LDA.b #$07
#_05DBB8: STA.w $0E00,X

;===================================================================================================

SanctuaryMantle_RecentContact:
#_05DBBB: STZ.w $0E80,X

#_05DBBE: LDA.b #$81
#_05DBC0: STA.b $48

#_05DBC2: LDA.b #$08
#_05DBC4: STA.b $5E

#_05DBC6: LDA.w $0D80,X
#_05DBC9: JSL JumpTableLocal
#_05DBCD: dw SanctuaryMantle_AttemptCutscene
#_05DBCF: dw SanctuaryMantle_InitializeSlide
#_05DBD1: dw SanctuaryMantle_SlideToTheRight

;===================================================================================================

SanctuaryMantle_NoContact:
#_05DBD3: LDA.w $0E00,X
#_05DBD6: BNE SanctuaryMantle_RecentContact

#_05DBD8: LDA.w $0E80,X
#_05DBDB: JSL JumpTableLocal
#_05DBDF: dw SanctuaryMantle_ResetGrabAndSpeed
#_05DBE1: dw SanctuaryMantle_Nothing

;===================================================================================================

SanctuaryMantle_SlidingOpen:
#_05DBE3: LDA.b #$40
#_05DBE5: STA.w $0D90,X

#_05DBE8: LDA.w $0D80,X
#_05DBEB: JSL JumpTableLocal
#_05DBEF: dw SanctuaryMantle_AttemptCutscene
#_05DBF1: dw SanctuaryMantle_InitializeSlide
#_05DBF3: dw SanctuaryMantle_SlideToTheRight

;===================================================================================================

SanctuaryMantle_ResetGrabAndSpeed:
#_05DBF5: STZ.w $0D90,X

#_05DBF8: STZ.b $48
#_05DBFA: STZ.b $5E

#_05DBFC: INC.w $0E80,X

;===================================================================================================

SanctuaryMantle_Nothing:
#_05DBFF: RTS

;===================================================================================================

SanctuaryMantle_AttemptCutscene:
#_05DC00: LDA.w $0D10,X
#_05DC03: PHA

#_05DC04: CLC
#_05DC05: ADC.b #$13
#_05DC07: STA.w $0D10,X

#_05DC0A: LDA.w $0D30,X
#_05DC0D: PHA

#_05DC0E: ADC.b #$00
#_05DC10: STA.w $0D30,X

#_05DC13: JSR Sprite_DirectionToFaceLink_Bank05

#_05DC16: PLA
#_05DC17: STA.w $0D30,X

#_05DC1A: PLA
#_05DC1B: STA.w $0D10,X

#_05DC1E: CPY.b #$03
#_05DC20: BEQ .link_above

#_05DC22: CPY.b #$01
#_05DC24: BNE .exit

.link_above
#_05DC26: INC.w $0D90,X

#_05DC29: LDA.w $0D90,X
#_05DC2C: CMP.b #$40
#_05DC2E: BCC .exit

#_05DC30: INC.w $0D80,X

#_05DC33: LDA.b #$01
#_05DC35: STA.w $02E4

.exit
#_05DC38: RTS

;===================================================================================================

SanctuaryMantle_InitializeSlide:
#_05DC39: LDA.b #!SFX3_18
#_05DC3B: JSL SpriteSFX_QueueSFX3WithPan

#_05DC3F: INC.w $0D80,X

#_05DC42: LDA.b #$A8
#_05DC44: STA.w $0DF0,X

#_05DC47: LDA.b #$03
#_05DC49: STA.w $0D50,X

#_05DC4C: LDA.b #$02
#_05DC4E: STA.w $0E00,X

#_05DC51: RTS

;===================================================================================================

SanctuaryMantle_SlideToTheRight:
#_05DC52: JSR Sprite_Move_XY_Bank05

#_05DC55: LDA.w $0DF0,X
#_05DC58: BNE .delay

#_05DC5A: STZ.w $02E4

#_05DC5D: STZ.w $0D50,X
#_05DC60: STZ.w $0DB0,X

#_05DC63: RTS

.delay
#_05DC64: LDA.b #$02
#_05DC66: STA.w $0E00,X

#_05DC69: RTS

;===================================================================================================

pool SpriteDraw_SanctuaryMantle

.oam_groups
#_05DC6A: dw   0,   0 : db $2C, $16, $00, $02
#_05DC72: dw  16,   0 : db $2C, $56, $00, $02
#_05DC7A: dw   0,  16 : db $2E, $06, $00, $02
#_05DC82: dw  16,  16 : db $2E, $46, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_SanctuaryMantle:
#_05DC8A: LDA.b #.oam_groups>>0
#_05DC8C: STA.b $08

#_05DC8E: LDA.b #.oam_groups>>8
#_05DC90: STA.b $09

#_05DC92: LDA.w $0DB0,X
#_05DC95: BNE .dont_change_region

#_05DC97: LDA.b #$10
#_05DC99: JSL OAM_AllocateFromRegionB

.dont_change_region
#_05DC9D: LDA.b #$04
#_05DC9F: JMP.w Sprite_DrawMultiple_Bank05

;===================================================================================================

Sprite_TrackBodyToHead:
#_05DCA2: LDA.w $0DE0,X
#_05DCA5: CMP.w $0EB0,X
#_05DCA8: BEQ .sync_body

#_05DCAA: LDA.b $1A
#_05DCAC: AND.b #$1F
#_05DCAE: BNE .exit

#_05DCB0: LDA.w $0DE0,X
#_05DCB3: EOR.w $0EB0,X
#_05DCB6: AND.b #$02
#_05DCB8: BNE .sync_body

#_05DCBA: TXA
#_05DCBB: EOR.b $1A

#_05DCBD: LSR A
#_05DCBE: LSR A
#_05DCBF: LSR A
#_05DCC0: LSR A
#_05DCC1: LSR A

#_05DCC2: ORA.b #$02
#_05DCC4: AND.b #$03
#_05DCC6: STA.w $0DE0,X

#_05DCC9: LDA.w $0EB0,X
#_05DCCC: AND.b #$02
#_05DCCE: EOR.w $0DE0,X
#_05DCD1: STA.w $0DE0,X

.exit
#_05DCD4: CLC

#_05DCD5: RTL

;---------------------------------------------------------------------------------------------------

.sync_body
#_05DCD6: LDA.w $0EB0,X
#_05DCD9: STA.w $0DE0,X

#_05DCDC: SEC

#_05DCDD: RTL

;===================================================================================================

UNREACHABLE_05DCDE:
#_05DCDE: db $00, $00, $F7, $09, $F7, $09, $00, $00

;===================================================================================================

Sprite_Priest:
#_05DCE6: LDA.w $0D90,X
#_05DCE9: BNE .skip_drawing

#_05DCEB: JSL SpriteDraw_Priest

.skip_drawing
#_05DCEF: JSR Sprite_CheckIfActive_Bank05
#_05DCF2: JSL Sprite_BehaveAsBarrier
#_05DCF6: JSL Sprite_TrackBodyToHead
#_05DCFA: JSR Sprite_Move_XY_Bank05

#_05DCFD: LDA.w $0E80,X
#_05DD00: JSL JumpTableLocal
#_05DD04: dw Priest_Dying
#_05DD06: dw Priest_RunRescueCutscene
#_05DD08: dw Priest_Chillin

;===================================================================================================

Priest_Dying:
#_05DD0A: LDA.b #$04
#_05DD0C: STA.w $0EB0,X
#_05DD0F: STA.w $0DE0,X

#_05DD12: LDA.w $0D80,X
#_05DD15: JSL JumpTableLocal
#_05DD19: dw Priest_LyingOnGround
#_05DD1B: dw Priest_FinalWords
#_05DD1D: dw Priest_Die

;===================================================================================================

Priest_LyingOnGround:
; Message 0019
#_05DD1F: LDA.b #$19
#_05DD21: LDY.b #$00
#_05DD23: JSL Sprite_ShowSolicitedMessage
#_05DD27: BCC .exit

#_05DD29: INC.w $0D80,X
#_05DD2C: INC.w $0DC0,X

#_05DD2F: LDA.l $7EF3C6
#_05DD33: ORA.b #$02
#_05DD35: STA.l $7EF3C6

#_05DD39: LDA.b #$80
#_05DD3B: STA.w $0E10,X

.exit
#_05DD3E: RTS

;===================================================================================================

Priest_FinalWords:
#_05DD3F: STZ.w $0DC0,X

#_05DD42: LDA.w $0E10,X
#_05DD45: BNE .delay

#_05DD47: INC.w $0D80,X

.delay
#_05DD4A: LDA.b $1A
#_05DD4C: AND.b #$02
#_05DD4E: STA.w $0D90,X

#_05DD51: LDA.w $0E10,X
#_05DD54: AND.b #$07
#_05DD56: BNE .exit

#_05DD58: LDA.b #!SFX2_33
#_05DD5A: JSL SpriteSFX_QueueSFX2WithPan

.exit
#_05DD5E: RTS

;===================================================================================================

Priest_Die:
#_05DD5F: STZ.w $0DD0,X

#_05DD62: RTS

;===================================================================================================

Priest_RunRescueCutscene:
#_05DD63: LDA.w $0D80,X
#_05DD66: JSL JumpTableLocal
#_05DD6A: dw Priest_WelcomeToSanctuary
#_05DD6C: dw Priest_WaitForZelda
#_05DD6E: dw Priest_MoreTalking
#_05DD70: dw Priest_OfferKisses

;===================================================================================================

Priest_WelcomeToSanctuary:
#_05DD72: LDA.b #$00
#_05DD74: STA.w $0EB0,X
#_05DD77: STA.w $0DE0,X

#_05DD7A: LDA.w $0DF0,X
#_05DD7D: BNE .exit

; Message 0015
#_05DD7F: LDA.b #$15
#_05DD81: LDY.b #$00
#_05DD83: JSL Sprite_ShowMessageUnconditional

#_05DD87: INC.w $0D80,X

#_05DD8A: LDA.b #$01
#_05DD8C: STA.l $7FFE01

#_05DD90: JSR Priest_SpawnRescuedPrincess

#_05DD93: LDA.b #$01
#_05DD95: STA.w $02E4

#_05DD98: LDA.b #$01
#_05DD9A: STA.l $7EF3C7

.exit
#_05DD9E: RTS

;===================================================================================================

Priest_WaitForZelda:
#_05DD9F: LDA.l $7FFE01
#_05DDA3: CMP.b #$02
#_05DDA5: BNE .exit

; Message 0016
#_05DDA7: LDA.b #$16
#_05DDA9: LDY.b #$00
#_05DDAB: JSL Sprite_ShowMessageUnconditional

#_05DDAF: INC.w $0D80,X

.exit
#_05DDB2: RTS

;===================================================================================================

Priest_MoreTalking:
#_05DDB3: LDA.w $1CE8
#_05DDB6: BNE .player_misunderstood

#_05DDB8: INC.w $0D80,X

#_05DDBB: STZ.w $02E4

#_05DDBE: RTS

.player_misunderstood
#_05DDBF: LDA.b #$01
#_05DDC1: STA.w $0D80,X

#_05DDC4: RTS

;===================================================================================================

Priest_OfferKisses:
#_05DDC5: JSR Sprite_DirectionToFaceLink_Bank05
#_05DDC8: TYA
#_05DDC9: EOR.b #$03
#_05DDCB: STA.w $0EB0,X

; Message 0014
#_05DDCE: LDA.b #$14
#_05DDD0: LDY.b #$00
#_05DDD2: JSL Sprite_ShowSolicitedMessage
#_05DDD6: BCC .exit

#_05DDD8: STA.w $0DE0,X
#_05DDDB: STA.w $0EB0,X

.exit
#_05DDDE: RTS

;===================================================================================================

pool Priest_Chillin

.messages_low
#_05DDDF: db $14 ; Message 0014
#_05DDE0: db $17 ; Message 0017
#_05DDE1: db $18 ; Message 0018

.messages_high
#_05DDE2: db $00
#_05DDE3: db $00
#_05DDE4: db $00

pool off

;---------------------------------------------------------------------------------------------------

Priest_Chillin:
#_05DDE5: JSR Sprite_DirectionToFaceLink_Bank05

#_05DDE8: TYA
#_05DDE9: EOR.b #$03
#_05DDEB: STA.w $0EB0,X

#_05DDEE: LDY.b #$00

#_05DDF0: LDA.l $7EF374
#_05DDF4: AND.b #$07
#_05DDF6: CMP.b #$07
#_05DDF8: BNE .has_every_pendant

#_05DDFA: LDY.b #$02
#_05DDFC: BRA .quest_unfinished

;---------------------------------------------------------------------------------------------------

.has_every_pendant
#_05DDFE: LDA.l $7EF3C7
#_05DE02: CMP.b #$03
#_05DE04: BCC .quest_unfinished

#_05DE06: LDY.b #$01

.quest_unfinished
#_05DE08: LDA.w .messages_low,Y
#_05DE0B: XBA

#_05DE0C: LDA.w .messages_high,Y
#_05DE0F: TAY

#_05DE10: XBA
#_05DE11: JSL Sprite_ShowSolicitedMessage
#_05DE15: BCC .exit

#_05DE17: STA.w $0DE0,X
#_05DE1A: STA.w $0EB0,X

#_05DE1D: LDA.b #$A0
#_05DE1F: STA.l $7EF372

.exit
#_05DE23: RTS

;===================================================================================================

UncleSpeed_X:
#_05DE24: db   0,   0, -12,  12

UncleSpeed_Y:
#_05DE28: db -12,  12,   0,   0

;===================================================================================================

Sprite_Uncle:
#_05DE2C: JSL SpriteDraw_Uncle
#_05DE30: JSR Sprite_CheckIfActive_Bank05

#_05DE33: LDA.w $0E80,X
#_05DE36: JSL JumpTableLocal
#_05DE3A: dw Uncle_AtHouse
#_05DE3C: dw Uncle_InPassage

;===================================================================================================

Uncle_AtHouse:
#_05DE3E: JSR Sprite_Move_XY_Bank05

#_05DE41: LDA.w $0D80,X
#_05DE44: JSL JumpTableLocal
#_05DE48: dw Uncle_TriggerTelepathy
#_05DE4A: dw Uncle_AwakenLink
#_05DE4C: dw Uncle_DeclareCurfew
#_05DE4E: dw Uncle_Embark
#_05DE50: dw Uncle_ApplyTelepathyFollower

;===================================================================================================

Uncle_TriggerTelepathy:
#_05DE52: LDA.b #$40
#_05DE54: STA.w $0FC2

#_05DE57: LDA.b #$09
#_05DE59: STA.w $0FC3

#_05DE5C: LDA.b #$5A
#_05DE5E: STA.w $0FC4

#_05DE61: LDA.b #$21
#_05DE63: STA.w $0FC5

; Message 001D
#_05DE66: LDA.b #$1D
#_05DE68: LDY.b #$00
#_05DE6A: JSL Sprite_ShowMessageUnconditional

#_05DE6E: INC.w $0D80,X

#_05DE71: RTS

;===================================================================================================

Uncle_AwakenLink:
#_05DE72: LDA.b $1A
#_05DE74: AND.b #$03
#_05DE76: BNE .exit

#_05DE78: LDA.b $9C
#_05DE7A: CMP.b #$20
#_05DE7C: BEQ .lights_are_on

#_05DE7E: DEC.b $9C
#_05DE80: DEC.b $9D

.exit
#_05DE82: RTS

;---------------------------------------------------------------------------------------------------

.lights_are_on
#_05DE83: INC.w $0D80,X

#_05DE86: INC.w $037D
#_05DE89: INC.w $037C

#_05DE8C: LDA.b #$57
#_05DE8E: STA.b $20

#_05DE90: LDA.b #$21
#_05DE92: STA.b $21

#_05DE94: LDA.b #$01
#_05DE96: STA.w $02E4

#_05DE99: RTS

;===================================================================================================

Uncle_DeclareCurfew:
; Message 000B
#_05DE9A: LDA.b #$0B
#_05DE9C: LDY.b #$00
#_05DE9E: JSL Sprite_ShowMessageUnconditional

#_05DEA2: INC.w $0D80,X

#_05DEA5: LDA.b #!SONG_03
#_05DEA7: STA.w $012C

#_05DEAA: LDA.b #$01
#_05DEAC: STA.w $0DC0,X

#_05DEAF: RTS

;===================================================================================================

pool Uncle_Embark

.timer
#_05DEB0: db  64, 224

.direction
#_05DEB2: db $02, $01

pool off

;---------------------------------------------------------------------------------------------------

Uncle_Embark:
#_05DEB4: LDA.w $0DF0,X
#_05DEB7: BNE .delay

#_05DEB9: LDY.w $0D90,X
#_05DEBC: BNE .already_standing

#_05DEBE: LDA.w $0D00,X
#_05DEC1: SEC
#_05DEC2: SBC.b #$02
#_05DEC4: STA.w $0D00,X

.already_standing
#_05DEC7: LDA.w .timer,Y
#_05DECA: STA.w $0DF0,X

#_05DECD: LDA.w .direction,Y
#_05DED0: STA.w $0DE0,X

#_05DED3: TAY

#_05DED4: LDA.w UncleSpeed_X,Y
#_05DED7: STA.w $0D50,X

#_05DEDA: LDA.w UncleSpeed_Y,Y
#_05DEDD: STA.w $0D40,X

#_05DEE0: INC.w $0D90,X

#_05DEE3: LDA.w $0D90,X
#_05DEE6: CMP.b #$03
#_05DEE8: BNE .delay

#_05DEEA: INC.w $0D80,X

.delay
#_05DEED: LDA.b $1A
#_05DEEF: LSR A
#_05DEF0: LSR A
#_05DEF1: LSR A
#_05DEF2: AND.b #$01
#_05DEF4: STA.w $0DC0,X

#_05DEF7: RTS

;===================================================================================================

Uncle_ApplyTelepathyFollower:
#_05DEF8: LDA.b #!FOLLOWER_05
#_05DEFA: STA.l $7EF3CC

#_05DEFE: LDA.b #$F3
#_05DF00: STA.w $02CD

#_05DF03: LDA.b #$0D
#_05DF05: STA.w $02CE

#_05DF08: LDA.l $7EF3C6
#_05DF0C: ORA.b #$10
#_05DF0E: STA.l $7EF3C6

#_05DF12: STZ.w $0DD0,X
#_05DF15: STZ.w $02E4

#_05DF18: RTS

;===================================================================================================

Uncle_InPassage:
#_05DF19: LDA.w $0D80,X
#_05DF1C: JSL JumpTableLocal
#_05DF20: dw Uncle_LyingInDefeat
#_05DF22: dw Uncle_GrantEquipment
#_05DF24: dw Uncle_Dead

;===================================================================================================

Uncle_LyingInDefeat:
#_05DF26: JSL Sprite_CheckDamageToLink_same_layer_long
#_05DF2A: BCC .still_waiting

#_05DF2C: JSL Link_CancelDash_long

.still_waiting
; Message 000C
#_05DF30: LDA.b #$0C
#_05DF32: LDY.b #$00
#_05DF34: JSL Sprite_ShowMessageOnContact
#_05DF38: BCC Uncle_Dead

#_05DF3A: LDA.b #$00
#_05DF3C: STA.l $7EF3CC

#_05DF40: INC.w $0D80,X

;===================================================================================================

Uncle_Dead:
#_05DF43: RTS

;===================================================================================================

Uncle_GrantEquipment:
#_05DF44: LDY.b #!ITEMGET_00
#_05DF46: STZ.w $02E9
#_05DF49: JSL Link_ReceiveItem

#_05DF4D: INC.w $0D80,X

#_05DF50: LDA.b #$01
#_05DF52: STA.w $0DC0,X

#_05DF55: LDA.b #$03
#_05DF57: STA.l $7EF3C8

#_05DF5B: LDA.l $7EF3C6
#_05DF5F: ORA.b #$01
#_05DF61: STA.l $7EF3C6

#_05DF65: LDA.b #$01
#_05DF67: STA.l $7EF3C5

#_05DF6B: RTS

;===================================================================================================
; ALTTP SpriteDraw format
;===================================================================================================
; Pose 1: dw XXXX, YYYY : db CHAR, PROP, ??, ??
; Pose 2: dw XXXX, YYYY : db CHAR, PROP, ??, ??
; etc...
;
; XXXX - signed 16-bit offset of object's X position relative to its position
; YYYY - signed 16-bit offset of object's Y position relative to its position
;
; CHAR - 8-bit character name
; PROP - object properties
;
; $00 X position low
; $01 X position high
;
; $02 Y position low
; $03 Y position high
;
; $04 Properties low (EOR'd in)
; $05 Properties high
;
; $06 Number of objects low
; $07 Number of objects high (always 0)
;
; $08 Data pointer low
; $09 Data pointer high
;
; $0C OAM X low
; $0D OAM X bit 8 (written to $0A20, X)
;===================================================================================================
Sprite_DrawMultiple:
#_05DF6C: STA.b $06
#_05DF6E: STZ.b $07

;---------------------------------------------------------------------------------------------------

#Sprite_DrawMultiple_preset_quantity:
#_05DF70: JSR Sprite_DrawMultiple_prep_oam
#_05DF73: BRA .continue

;---------------------------------------------------------------------------------------------------

#Sprite_DrawMultiple_player_deferred:
#_05DF75: JSR Sprite_DrawMultiple_prep_oam_deferred

;---------------------------------------------------------------------------------------------------

.continue
#_05DF78: BCS .exit

#_05DF7A: PHX

#_05DF7B: REP #$30

#_05DF7D: LDY.w #$0000
#_05DF80: LDX.w $0090

.next_object
#_05DF83: LDA.b ($08),Y
#_05DF85: CLC
#_05DF86: ADC.b $00
#_05DF88: STA.w $0000,X

#_05DF8B: AND.w #$0100
#_05DF8E: STA.b $0C

#_05DF90: INY
#_05DF91: INY

#_05DF92: LDA.b ($08),Y
#_05DF94: CLC
#_05DF95: ADC.b $02
#_05DF97: STA.w $0001,X

#_05DF9A: CLC
#_05DF9B: ADC.w #$0010
#_05DF9E: CMP.w #$0100
#_05DFA1: BCC .on_screen

#_05DFA3: LDA.w #$00F0
#_05DFA6: STA.w $0001,X

.on_screen
#_05DFA9: INY
#_05DFAA: INY

#_05DFAB: LDA.w $0CFE
#_05DFAE: CMP.w #$0001

#_05DFB1: LDA.b ($08),Y
#_05DFB3: EOR.b $04
#_05DFB5: BCC .dont_override_palette

#_05DFB7: AND.w #$F1FF
#_05DFBA: ORA.w #$0400

.dont_override_palette
#_05DFBD: STA.w $0002,X

#_05DFC0: PHX

#_05DFC1: TXA
#_05DFC2: SEC
#_05DFC3: SBC.w #$0800
#_05DFC6: LSR A
#_05DFC7: LSR A
#_05DFC8: TAX

#_05DFC9: SEP #$20

#_05DFCB: INY
#_05DFCC: INY
#_05DFCD: INY

#_05DFCE: LDA.b ($08),Y
#_05DFD0: ORA.b $0D
#_05DFD2: STA.w $0A20,X

#_05DFD5: PLX

#_05DFD6: REP #$20

#_05DFD8: INY

#_05DFD9: INX
#_05DFDA: INX
#_05DFDB: INX
#_05DFDC: INX

#_05DFDD: DEC.b $06
#_05DFDF: BNE .next_object

#_05DFE1: SEP #$30

#_05DFE3: PLX

.exit
#_05DFE4: RTL

;===================================================================================================

Sprite_DrawMultiple_prep_oam_deferred:
#_05DFE5: JSL OAM_AllocateDeferToPlayer_long

;===================================================================================================

Sprite_DrawMultiple_prep_oam:
#_05DFE9: JSR Sprite_PrepOAMCoord_Bank05

#_05DFEC: PHP

#_05DFED: STZ.w $0CFE
#_05DFF0: STZ.w $0CFF

#_05DFF3: LDA.w $0DD0,X
#_05DFF6: CMP.b #$0A
#_05DFF8: BNE .not_carried

#_05DFFA: LDA.l $7FFA2C,X

.not_carried
#_05DFFE: CMP.b #$0B
#_05E000: BNE .not_stunned

#_05E002: LDA.l $7FFA3C,X
#_05E006: STA.w $0CFE

.not_stunned
#_05E009: PLP

#_05E00A: RTS

;===================================================================================================

Sprite_32_ArguingBros:
#_05E00B: PHB
#_05E00C: PHK
#_05E00D: PLB

#_05E00E: JSR .main

#_05E011: PLB

#_05E012: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05E013: JSR SpriteDraw_ArguingBros
#_05E016: JSR Sprite_CheckIfActive_Bank05
#_05E019: JSL Sprite_TrackBodyToHead

#_05E01D: JSR Sprite_DirectionToFaceLink_Bank05

#_05E020: TYA
#_05E021: EOR.b #$03
#_05E023: STA.w $0EB0,X

;---------------------------------------------------------------------------------------------------

#_05E026: LDA.b $A0
#_05E028: AND.b #$01
#_05E02A: BNE .east_side

.west_side
; Message 012F
#_05E02C: LDA.b #$2F
#_05E02E: LDY.b #$01
#_05E030: JSL Sprite_ShowSolicitedMessage
#_05E034: BRA .continue

;---------------------------------------------------------------------------------------------------

.east_side
; Message 012D
#_05E036: LDA.w $0401
#_05E039: BNE .door_opened

#_05E03B: LDA.b #$2D
#_05E03D: LDY.b #$01
#_05E03F: JSL Sprite_ShowSolicitedMessage
#_05E043: BRA .continue

;---------------------------------------------------------------------------------------------------

.door_opened
; Message 012E
#_05E045: LDA.b #$2E
#_05E047: LDY.b #$01
#_05E049: JSL Sprite_ShowSolicitedMessage

;---------------------------------------------------------------------------------------------------

.continue
#_05E04D: JSL Sprite_BehaveAsBarrier

#_05E051: RTS

;===================================================================================================

UNREACHABLE_05E052:
#_05E052: JSR Sprite_Move_XY_Bank05
#_05E055: JSR Sprite_CheckTileCollision_Bank05

#_05E058: LDA.w $0D80,X
#_05E05B: JSL JumpTableLocal
#_05E05F: dw UNREACHABLE_05E06B
#_05E061: dw UNREACHABLE_05E0B6

;===================================================================================================

pool  UNREACHABLE_05E06B

.speed_x
#_05E063: db   0,   0, -12,  11

.speed_y
#_05E067: db -12,  11,   0,   0

pool off

;---------------------------------------------------------------------------------------------------

UNREACHABLE_05E06B:
#_05E06B: LDA.w $0DF0,X
#_05E06E: BNE .delay

#_05E070: JSL GetRandomNumber
#_05E074: AND.b #$1F
#_05E076: CLC
#_05E077: ADC.b #$40
#_05E079: STA.w $0DF0,X

#_05E07C: LDA.b $1A
#_05E07E: AND.b #$01
#_05E080: ORA.b #$02
#_05E082: EOR.w $0DE0,X
#_05E085: STA.w $0DE0,X

.delay
#_05E088: LDA.w $0E70,X
#_05E08B: AND.b #$0F
#_05E08D: BEQ .dont_change_state

#_05E08F: INC.w $0D80,X

#_05E092: LDA.b #$60
#_05E094: STA.w $0DF0,X

.dont_change_state
#_05E097: TXA
#_05E098: EOR.b $1A
#_05E09A: LSR A
#_05E09B: LSR A
#_05E09C: LSR A
#_05E09D: AND.b #$01
#_05E09F: STA.w $0DC0,X

#_05E0A2: LDY.w $0DE0,X

#_05E0A5: LDA.w .speed_x,Y
#_05E0A8: STA.w $0D50,X

#_05E0AB: LDA.w .speed_y,Y
#_05E0AE: STA.w $0D40,X

#_05E0B1: TYA
#_05E0B2: STA.w $0D90,X

#_05E0B5: RTS

;===================================================================================================

UNREACHABLE_05E0B6:
#_05E0B6: LDA.w $0DF0,X
#_05E0B9: BNE .delay

#_05E0BB: JSL GetRandomNumber
#_05E0BF: AND.b #$1F
#_05E0C1: CLC
#_05E0C2: ADC.b #$60
#_05E0C4: STA.w $0DF0,X

#_05E0C7: STZ.w $0D80,X

#_05E0CA: LDA.b $1A
#_05E0CC: AND.b #$01
#_05E0CE: ORA.b #$02
#_05E0D0: EOR.w $0DE0,X
#_05E0D3: STA.w $0DE0,X

.delay
#_05E0D6: STZ.w $0D50,X
#_05E0D9: STZ.w $0D40,X

#_05E0DC: TXA
#_05E0DD: EOR.b $1A

#_05E0DF: LSR A
#_05E0E0: LSR A
#_05E0E1: LSR A
#_05E0E2: LSR A
#_05E0E3: LSR A

#_05E0E4: AND.b #$03
#_05E0E6: STA.b $00

#_05E0E8: AND.b #$01
#_05E0EA: BNE .skip

#_05E0EC: LDA.b $00
#_05E0EE: LSR A
#_05E0EF: ORA.b #$02

#_05E0F1: EOR.w $0DE0,X
#_05E0F4: STA.w $0D90,X

#_05E0F7: RTS

.skip
#_05E0F8: LDA.w $0DE0,X
#_05E0FB: STA.w $0D90,X

#_05E0FE: RTS

;===================================================================================================

pool SpriteDraw_ArguingBros

.oam_groups
; group00
#_05E0FF: dw   0, -12 : db $04, $00, $00, $02
#_05E107: dw   0,   0 : db $0A, $00, $00, $02

; group01
#_05E10F: dw   0, -11 : db $04, $00, $00, $02
#_05E117: dw   0,   1 : db $0A, $40, $00, $02

; group02
#_05E11F: dw   0, -12 : db $04, $00, $00, $02
#_05E127: dw   0,   0 : db $0A, $00, $00, $02

; group03
#_05E12F: dw   0, -11 : db $04, $00, $00, $02
#_05E137: dw   0,   1 : db $0A, $40, $00, $02

; group04
#_05E13F: dw   0, -12 : db $08, $00, $00, $02
#_05E147: dw   0,   0 : db $0A, $00, $00, $02

; group05
#_05E14F: dw   0, -11 : db $08, $00, $00, $02
#_05E157: dw   0,   1 : db $0A, $40, $00, $02

; group06
#_05E15F: dw   0, -12 : db $08, $40, $00, $02
#_05E167: dw   0,   0 : db $0A, $00, $00, $02

; group07
#_05E16F: dw   0, -11 : db $08, $40, $00, $02
#_05E177: dw   0,   1 : db $0A, $40, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_ArguingBros:
#_05E17F: LDA.b #$02
#_05E181: STA.b $06
#_05E183: STZ.b $07

#_05E185: LDA.w $0DE0,X
#_05E188: ASL A
#_05E189: ADC.w $0DC0,X

#_05E18C: ASL A
#_05E18D: ASL A
#_05E18E: ASL A
#_05E18F: ASL A

#_05E190: ADC.b #.oam_groups>>0
#_05E192: STA.b $08

#_05E194: LDA.b #.oam_groups>>8
#_05E196: ADC.b #$00
#_05E198: STA.b $09

#_05E19A: JSL Sprite_DrawMultiple_player_deferred
#_05E19E: JSL SpriteDraw_Shadow_long

#_05E1A2: RTS

;===================================================================================================

pool Sprite_ShowSolicitedMessage

.direction
#_05E1A3: db $04
#_05E1A4: db $06
#_05E1A5: db $00
#_05E1A6: db $02

pool off

;---------------------------------------------------------------------------------------------------

Sprite_ShowSolicitedMessage:
#_05E1A7: STA.w $1CF0
#_05E1AA: STY.w $1CF1

#_05E1AD: JSL Sprite_CheckDamageToLink_same_layer_long
#_05E1B1: BCC .fail

#_05E1B3: JSL CheckIfLinkIsBusy
#_05E1B7: BCS .fail

#_05E1B9: LDA.b $F6
#_05E1BB: BPL .fail

#_05E1BD: LDA.w $0F10,X
#_05E1C0: BNE .fail

#_05E1C2: LDA.b $4D
#_05E1C4: CMP.b #$02
#_05E1C6: BEQ .fail

#_05E1C8: JSR Sprite_DirectionToFaceLink_Bank05

#_05E1CB: PHX

#_05E1CC: TYX
#_05E1CD: LDA.l .direction,X

#_05E1D1: PLX

#_05E1D2: CMP.b $2F
#_05E1D4: BNE .fail

#_05E1D6: PHY

#_05E1D7: LDA.w $1CF0
#_05E1DA: LDY.w $1CF1
#_05E1DD: JSL Sprite_ShowMessageUnconditional

#_05E1E1: LDA.b #$40
#_05E1E3: STA.w $0F10,X

#_05E1E6: PLA
#_05E1E7: EOR.b #$03
#_05E1E9: SEC

#_05E1EA: RTL

.fail
#_05E1EB: LDA.w $0DE0,X

#_05E1EE: CLC

#_05E1EF: RTL

;===================================================================================================

Sprite_ShowMessageOnContact:
#_05E1F0: STA.w $1CF0
#_05E1F3: STY.w $1CF1

#_05E1F6: JSL Sprite_CheckDamageToLink_same_layer_long
#_05E1FA: BCC .fail

#_05E1FC: LDA.b $4D
#_05E1FE: CMP.b #$02
#_05E200: BEQ .fail

#_05E202: LDA.w $1CF0
#_05E205: LDY.w $1CF1
#_05E208: JSL Sprite_ShowMessageUnconditional

#_05E20C: JSR Sprite_DirectionToFaceLink_Bank05

#_05E20F: TYA
#_05E210: EOR.b #$03
#_05E212: SEC

#_05E213: RTL

.fail
#_05E214: LDA.w $0DE0,X

#_05E217: CLC

#_05E218: RTL

;===================================================================================================

Sprite_ShowMessageUnconditional:
#_05E219: STA.w $1CF0
#_05E21C: STY.w $1CF1

#_05E21F: STZ.w $0223
#_05E222: STZ.w $1CD8

#_05E225: LDA.b #$02
#_05E227: STA.b $11

#_05E229: LDA.b $10
#_05E22B: STA.w $010C

#_05E22E: LDA.b #$0E
#_05E230: STA.b $10

#_05E232: PHX

#_05E233: JSL Sprite_CancelHookshot

#_05E237: STZ.b $5E

#_05E239: JSL Link_CancelDash_long

#_05E23D: STZ.b $4D
#_05E23F: STZ.b $46

#_05E241: LDA.b $5D
#_05E243: CMP.b #!LINKSTATE_02
#_05E245: BNE .exit

#_05E247: LDA.b #!LINKSTATE_00
#_05E249: STA.b $5D

.exit
#_05E24B: PLX

#_05E24C: RTL

;===================================================================================================

Sprite_33_RupeePull:
#_05E24D: PHB
#_05E24E: PHK
#_05E24F: PLB

#_05E250: JSR .main

#_05E253: PLB

#_05E254: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05E255: JSL Sprite_PrepOAMCoord_long
#_05E259: JSR Sprite_CheckIfActive_Bank05

#_05E25C: JSL CheckIfLinkIsBusy
#_05E260: BCS .exit

#_05E262: JSL Sprite_CheckDamageToLink_same_layer_long
#_05E266: BCC .no_contact

#_05E268: LDA.b #$01
#_05E26A: STA.w $03F8
#_05E26D: STA.w $0D90,X

#_05E270: RTS

;---------------------------------------------------------------------------------------------------

.no_contact
#_05E271: LDA.w $0D90,X
#_05E274: BEQ .exit

#_05E276: STZ.w $03F8

#_05E279: LDA.w $0308
#_05E27C: AND.b #$01
#_05E27E: BEQ .exit

#_05E280: STZ.w $0DD0,X

#_05E283: JSL RupeePull_SpawnPrize
#_05E287: JSL Sprite_SpawnPoofGarnish

.exit
#_05E28B: RTS

;===================================================================================================

Sprite_14_ThievesTownGrate:
#_05E28C: PHB
#_05E28D: PHK
#_05E28E: PLB

#_05E28F: JSR .main

#_05E292: PLB

#_05E293: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05E294: JSL Sprite_PrepOAMCoord_long
#_05E298: JSR Sprite_CheckIfActive_Bank05

#_05E29B: JSL CheckIfLinkIsBusy
#_05E29F: BCS .exit

#_05E2A1: JSL Sprite_CheckDamageToLink_same_layer_long
#_05E2A5: BCC .no_contact

#_05E2A7: LDA.b #$01
#_05E2A9: STA.w $03F8
#_05E2AC: STA.w $0D90,X

#_05E2AF: RTS

;---------------------------------------------------------------------------------------------------

.no_contact
#_05E2B0: LDA.w $0D90,X
#_05E2B3: BEQ .exit

#_05E2B5: STZ.w $03F8

#_05E2B8: LDA.w $0308
#_05E2BB: AND.b #$01
#_05E2BD: BEQ .exit

#_05E2BF: LDA.b #!SFX2_1F
#_05E2C1: JSL SpriteSFX_QueueSFX2WithPan

#_05E2C5: PHX

#_05E2C6: JSL OpenGargoylesDomain

#_05E2CA: PLX

#_05E2CB: JSR Sprite_SpawnDustCloud

#_05E2CE: LDA.w $0D10,X
#_05E2D1: STA.w $0D10,Y

#_05E2D4: LDA.w $0D30,X
#_05E2D7: STA.w $0D30,Y

#_05E2DA: LDA.w $0D00,X
#_05E2DD: STA.w $0D00,Y

#_05E2E0: LDA.w $0D20,X
#_05E2E3: STA.w $0D20,Y

#_05E2E6: STZ.w $0DD0,X

.exit
#_05E2E9: RTS

;===================================================================================================

Sprite_34_YoungSnitch:
#_05E2EA: PHB
#_05E2EB: PHK
#_05E2EC: PLB

#_05E2ED: JSR .main

#_05E2F0: PLB

#_05E2F1: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05E2F2: LDA.w $0D80,X
#_05E2F5: CMP.b #$02
#_05E2F7: BCS .invisible

#_05E2F9: JSR SpriteDraw_YoungSnitch

.invisible
#_05E2FC: JMP.w Snitch_Main

;===================================================================================================

pool SpriteDraw_YoungSnitch

.oam_groups
; group00
#_05E2FF: dw   0,  -8 : db $26, $00, $00, $02
#_05E307: dw   0,   0 : db $E8, $00, $00, $02

; group01
#_05E30F: dw   0,  -7 : db $26, $00, $00, $02
#_05E317: dw   0,   1 : db $E8, $40, $00, $02

; group02
#_05E31F: dw   0,  -8 : db $24, $00, $00, $02
#_05E327: dw   0,   0 : db $C2, $00, $00, $02

; group03
#_05E32F: dw   0,  -7 : db $24, $00, $00, $02
#_05E337: dw   0,   1 : db $C2, $40, $00, $02

; group04
#_05E33F: dw   0,  -8 : db $28, $00, $00, $02
#_05E347: dw   0,   0 : db $E4, $00, $00, $02

; group05
#_05E34F: dw   0,  -7 : db $28, $00, $00, $02
#_05E357: dw   0,   1 : db $E6, $00, $00, $02

; group06
#_05E35F: dw   0,  -8 : db $28, $40, $00, $02
#_05E367: dw   0,   0 : db $E4, $40, $00, $02

; group07
#_05E36F: dw   0,  -7 : db $28, $40, $00, $02
#_05E377: dw   0,   1 : db $E6, $40, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_YoungSnitch:
#_05E37F: LDA.b #$02
#_05E381: STA.b $06
#_05E383: STZ.b $07

#_05E385: LDA.w $0DE0,X
#_05E388: ASL A
#_05E389: ADC.w $0DC0,X

#_05E38C: ASL A
#_05E38D: ASL A
#_05E38E: ASL A
#_05E38F: ASL A

#_05E390: ADC.b #.oam_groups>>0
#_05E392: STA.b $08

#_05E394: LDA.b #.oam_groups>>8
#_05E396: ADC.b #$00
#_05E398: STA.b $09

#_05E39A: JSL Sprite_DrawMultiple_player_deferred
#_05E39E: JSL SpriteDraw_Shadow_long

#_05E3A2: RTS

;===================================================================================================

pool Sprite_35_Innkeeper

.messages_low
#_05E3A3: db $80 ; Message 0180
#_05E3A4: db $81 ; Message 0181

.messages_high
#_05E3A5: db $01
#_05E3A6: db $01

pool off

;---------------------------------------------------------------------------------------------------

Sprite_35_Innkeeper:
#_05E3A7: PHB
#_05E3A8: PHK
#_05E3A9: PLB

#_05E3AA: JSR .main

#_05E3AD: PLB

#_05E3AE: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05E3AF: JSR SpriteDraw_Innkeeper
#_05E3B2: JSR Sprite_CheckIfActive_Bank05
#_05E3B5: JSL Sprite_BehaveAsBarrier

#_05E3B9: LDA.l $7EF356
#_05E3BD: TAY

#_05E3BE: LDA.w .messages_low,Y
#_05E3C1: XBA

#_05E3C2: LDA.w .messages_high,Y
#_05E3C5: TAY

#_05E3C6: XBA
#_05E3C7: JSL Sprite_ShowSolicitedMessage

#_05E3CB: RTS

;===================================================================================================

pool SpriteDraw_Innkeeper

.oam_groups
#_05E3CC: dw   0,  -8 : db $C4, $00, $00, $02
#_05E3D4: dw   0,   0 : db $CA, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Innkeeper:
#_05E3DC: LDA.b #$02
#_05E3DE: STA.b $06
#_05E3E0: STZ.b $07

#_05E3E2: LDA.b #.oam_groups>>0
#_05E3E4: STA.b $08

#_05E3E6: LDA.b #.oam_groups>>8
#_05E3E8: STA.b $09

#_05E3EA: JSL Sprite_DrawMultiple_player_deferred
#_05E3EE: JSL SpriteDraw_Shadow_long

#_05E3F2: RTS

;===================================================================================================

Sprite_36_Witch:
#_05E3F3: PHB
#_05E3F4: PHK
#_05E3F5: PLB

#_05E3F6: JSR .main

#_05E3F9: PLB

#_05E3FA: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05E3FB: JSR SpriteDraw_Witch
#_05E3FE: JSR Sprite_CheckIfActive_Bank05

#_05E401: LDA.w $0F60,X
#_05E404: PHA

#_05E405: LDA.b #$02
#_05E407: STA.w $0F60,X

#_05E40A: JSL Sprite_CheckDamageToLink_same_layer_long
#_05E40E: BCC .no_contact

#_05E410: PHX

#_05E411: JSL Sprite_CancelHookshot

#_05E415: STZ.b $5E

#_05E417: JSL Link_CancelDash_long

#_05E41B: PLX

;---------------------------------------------------------------------------------------------------

.no_contact
#_05E41C: PLA
#_05E41D: STA.w $0F60,X

#_05E420: LDA.b $1A
#_05E422: BNE .dont_change_stir

#_05E424: JSL GetRandomNumber
#_05E428: AND.b #$01
#_05E42A: CLC
#_05E42B: ADC.b #$02
#_05E42D: STA.w $0D90,X

.dont_change_stir
#_05E430: LDA.w $0D90,X
#_05E433: STA.b $00

#_05E435: LDA.b $1A

.shift
#_05E437: LSR A
#_05E438: DEC.b $00
#_05E43A: BPL .shift

#_05E43C: AND.b #$07
#_05E43E: STA.w $0DC0,X

#_05E441: JSL CheckIfLinkIsBusy
#_05E445: BCC .continue

#_05E447: RTS

;---------------------------------------------------------------------------------------------------

.continue
#_05E448: LDA.w $0D80,X
#_05E44B: JSL JumpTableLocal
#_05E44F: dw Witch_DiscussThings
#_05E451: dw Witch_GrantByrna

;===================================================================================================

Witch_GrantByrna:
#_05E453: STZ.w $0D80,X

#_05E456: LDY.b #!ITEMGET_18
#_05E458: STZ.w $02E9
#_05E45B: JSL Link_ReceiveItem

#_05E45F: RTS

;===================================================================================================

Witch_DiscussThings:
#_05E460: STZ.b $00

#_05E462: LDA.l $7EF344
#_05E466: CMP.b #$01
#_05E468: BNE .no_mushroom

#_05E46A: INC.b $00

.no_mushroom
#_05E46C: LDA.b $00
#_05E46E: JSL JumpTableLocal
#_05E472: dw Witch_DiscussMushroom
#_05E474: dw Witch_YouHaveShroom
#_05E476: dw Witch_YouHaveShroom
#_05E478: dw Witch_YouHaveShroom
#_05E47A: dw Witch_YouHaveShroom

;===================================================================================================

Witch_DiscussMushroom:
#_05E47C: LDA.l $7EF344
#_05E480: CMP.b #$02
#_05E482: BNE .no_powder

.give_me_shroom
; Message 0048
#_05E484: LDA.b #$48
#_05E486: LDY.b #$00
#_05E488: JSL Sprite_ShowSolicitedMessage

#_05E48C: RTS

.no_powder
#_05E48D: PHX

#_05E48E: REP #$10

#_05E490: LDX.w #$0212
#_05E493: LDA.l $7EF000,X

#_05E497: SEP #$30

#_05E499: PLX

#_05E49A: CMP.b #$00
#_05E49C: BPL .give_me_shroom

; Message 0049
#_05E49E: LDA.b #$49
#_05E4A0: LDY.b #$00
#_05E4A2: JSL Sprite_ShowSolicitedMessage

#_05E4A6: RTS

;===================================================================================================

Witch_YouHaveShroom:
#_05E4A7: LDA.b $F0
#_05E4A9: AND.b #$40
#_05E4AB: BEQ .no_y_press

#_05E4AD: JSL Sprite_CheckDamageToLink_same_layer_long
#_05E4B1: BCC .exit

#_05E4B3: LDA.w $0202
#_05E4B6: CMP.b #$05
#_05E4B8: BNE .exit

#_05E4BA: LDA.l $7EF344
#_05E4BE: CMP.b #$01
#_05E4C0: BNE .exit

#_05E4C2: JSR Witch_AcceptShroom

.exit
#_05E4C5: RTS

.no_y_press
; Message 004A
#_05E4C6: LDA.b #$4A
#_05E4C8: LDY.b #$00
#_05E4CA: JSL Sprite_ShowSolicitedMessage

#_05E4CE: RTS

;===================================================================================================

Witch_AcceptShroom:
#_05E4CF: LDA.l $7EF344
#_05E4D3: CMP.b #$01
#_05E4D5: BNE .thats_not_the_shroom

#_05E4D7: LDA.b #$00
#_05E4D9: STA.l $7EF344

#_05E4DD: PHX

#_05E4DE: REP #$10

#_05E4E0: LDX.w #$0212

#_05E4E3: LDA.l $7EF000,X
#_05E4E7: ORA.b #$80
#_05E4E9: STA.l $7EF000,X

#_05E4ED: SEP #$30

#_05E4EF: STZ.w $012E

#_05E4F2: JSL RefreshIcon_long

#_05E4F6: PLX

; Message 0049
#_05E4F7: LDA.b #$49
#_05E4F9: LDY.b #$00
#_05E4FB: JSL Sprite_ShowMessageUnconditional

#_05E4FF: LDA.b #!SFX1_0D
#_05E501: JSL SpriteSFX_QueueSFX1WithPan

.thats_not_the_shroom
#_05E505: STZ.w $0ABF

#_05E508: RTS

;===================================================================================================

pool SpriteDraw_Witch

.oam_groups_stirring
; group00
#_05E509: db  -3,   8 : db $AE, $00
#_05E50D: db  -3,  16 : db $BE, $00

; group01
#_05E511: db  -2,   8 : db $AE, $00
#_05E515: db  -2,  16 : db $BE, $00

; group02
#_05E519: db  -1,   8 : db $AF, $00
#_05E51D: db  -1,  16 : db $BF, $00

; group03
#_05E521: db   0,   9 : db $AF, $00
#_05E525: db   0,  17 : db $BF, $00

; group04
#_05E529: db   1,  10 : db $AF, $00
#_05E52D: db   1,  18 : db $BF, $00

; group05
#_05E531: db   0,  11 : db $AF, $00
#_05E535: db   0,  18 : db $BF, $00

; group06
#_05E539: db  -1,  10 : db $AE, $00
#_05E53D: db  -1,  18 : db $BE, $00

; group07
#_05E541: db  -3,   9 : db $AE, $00
#_05E545: db  -3,  17 : db $BE, $00

;---------------------------------------------------------------------------------------------------

.oam_groups_body
#_05E549: db   0,  -4 : db $80, $00
#_05E54D: db -11,  15 : db $86, $04
#_05E551: db  -3,  15 : db $86, $44

.oam_groups_cloak
#_05E555: db   0,   4 : db $84, $00
#_05E559: db   0,   4 : db $82, $00

pool off

;---------------------------------------------------------------------------------------------------
; A fairly unorthodox routine
;---------------------------------------------------------------------------------------------------
SpriteDraw_Witch:
#_05E55D: JSR Sprite_PrepOAMCoord_Bank05
#_05E560: JSL OAM_AllocateDeferToPlayer_long

#_05E564: LDA.w $0DC0,X
#_05E567: STA.b $00
#_05E569: STZ.b $01

#_05E56B: PHX

#_05E56C: REP #$30

#_05E56E: ASL A
#_05E56F: ASL A
#_05E570: ASL A
#_05E571: AND.w #$00FF
#_05E574: TAX

#_05E575: LDY.b $90
#_05E577: LDA.w .oam_groups_stirring+0,X
#_05E57A: CLC
#_05E57B: ADC.w $0FA8
#_05E57E: STA.w $0000,Y

#_05E581: LDA.w .oam_groups_stirring+1,X
#_05E584: CLC
#_05E585: ADC.w $0FA9
#_05E588: STA.w $0001,Y

#_05E58B: LDA.w .oam_groups_stirring+2,X
#_05E58E: ORA.b $04
#_05E590: STA.w $0002,Y

#_05E593: LDA.w .oam_groups_stirring+4,X
#_05E596: CLC
#_05E597: ADC.w $0FA8
#_05E59A: STA.w $0004,Y

#_05E59D: LDA.w .oam_groups_stirring+5,X
#_05E5A0: CLC
#_05E5A1: ADC.w $0FA9
#_05E5A4: STA.w $0005,Y

#_05E5A7: LDA.w .oam_groups_stirring+6,X
#_05E5AA: ORA.b $04
#_05E5AC: STA.w $0006,Y

;---------------------------------------------------------------------------------------------------

#_05E5AF: LDX.w #$0000

#_05E5B2: LDA.w #$0002
#_05E5B5: STA.b $0E

.next_body_object
#_05E5B7: LDA.w .oam_groups_body+0,X
#_05E5BA: CLC
#_05E5BB: ADC.w $0FA8
#_05E5BE: STA.w $0008,Y

#_05E5C1: LDA.w .oam_groups_body+1,X
#_05E5C4: CLC
#_05E5C5: ADC.w $0FA9
#_05E5C8: STA.w $0009,Y

#_05E5CB: LDA.w .oam_groups_body+2,X
#_05E5CE: EOR.b $04
#_05E5D0: STA.w $000A,Y

#_05E5D3: INX ; +4
#_05E5D4: INX
#_05E5D5: INX
#_05E5D6: INX

#_05E5D7: INY ; +4
#_05E5D8: INY
#_05E5D9: INY
#_05E5DA: INY

#_05E5DB: DEC.b $0E
#_05E5DD: BPL .next_body_object

#_05E5DF: LDA.b $00
#_05E5E1: SEC
#_05E5E2: SBC.w #$0003
#_05E5E5: CMP.w #$0003
#_05E5E8: BCC .next_cloak_object

#_05E5EA: LDX.w #$0000
#_05E5ED: BRA .first_cloak_object

;---------------------------------------------------------------------------------------------------

.next_cloak_object
#_05E5EF: LDX.w #$0004

.first_cloak_object
#_05E5F2: LDA.w .oam_groups_cloak+0,X
#_05E5F5: CLC
#_05E5F6: ADC.w $0FA8
#_05E5F9: STA.w $0008,Y

#_05E5FC: LDA.w .oam_groups_cloak+1,X
#_05E5FF: CLC
#_05E600: ADC.w $0FA9
#_05E603: STA.w $0009,Y

#_05E606: LDA.w .oam_groups_cloak+2,X
#_05E609: ORA.b $04
#_05E60B: STA.w $000A,Y

#_05E60E: LDY.b $92

#_05E610: LDA.w #$0000
#_05E613: STA.w $0000,Y

#_05E616: LDA.w #$0202
#_05E619: STA.w $0002,Y
#_05E61C: STA.w $0004,Y

#_05E61F: SEP #$30

#_05E621: PLX

#_05E622: LDA.b #$05
#_05E624: LDY.b #$FF
#_05E626: JSL Sprite_CorrectOAMEntries_long

#_05E62A: RTS

;===================================================================================================

Sprite_38_EyeStatue:
#_05E62B: PHB
#_05E62C: PHK
#_05E62D: PLB

#_05E62E: JSR .main

#_05E631: PLB

#_05E632: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05E633: LDA.w $0DA0,X
#_05E636: BNE .exit

#_05E638: JSL Sprite_PrepOAMCoord_long
#_05E63C: JSR Sprite_CheckIfActive_Bank05
#_05E63F: JSR Sprite_DirectionToFaceLink_Bank05

#_05E642: CPY.b #$02
#_05E644: BNE .exit

#_05E646: LDA.w $0BB0,X
#_05E649: CMP.b #$09
#_05E64B: BNE .exit

#_05E64D: INC.w $0642

#_05E650: LDA.b #$01
#_05E652: STA.w $0DA0,X

.exit
#_05E655: RTS

;===================================================================================================

#UNREACHABLE_05E656:
#_05E656: RTL

;===================================================================================================
; Unreachable routines
;===================================================================================================
Sprite_Decelerate_X:
#_05E657: LDA.w $0D50,X
#_05E65A: BEQ .set_speed
#_05E65C: BPL .positive

#_05E65E: INC A
#_05E65F: BRA .set_speed

.positive
#_05E661: DEC A

.set_speed
#_05E662: STA.w $0D50,X

#_05E665: RTL

;===================================================================================================

Sprite_Decelerate_Y:
#_05E666: LDA.w $0D40,X
#_05E669: BEQ .set_speed
#_05E66B: BPL .positive

#_05E66D: INC A
#_05E66E: BRA .set_speed

.positive
#_05E670: DEC A

.set_speed
#_05E671: STA.w $0D40,X

#_05E674: RTL

;===================================================================================================

SpritePrep_Snitch:
#_05E675: PHB
#_05E676: PHK
#_05E677: PLB

#_05E678: JSR .main

#_05E67B: PLB

#_05E67C: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05E67D: LDA.b #$02
#_05E67F: STA.w $0DE0,X
#_05E682: STA.w $0EB0,X

#_05E685: INC.w $0BA0,X

#_05E688: LDA.w $0D10,X
#_05E68B: STA.w $0D90,X

#_05E68E: LDA.w $0D30,X
#_05E691: STA.w $0DA0,X

#_05E694: LDA.b #$F7
#_05E696: STA.w $0D50,X

#_05E699: RTS

;===================================================================================================

Sprite_3D_OldSnitch:
#_05E69A: PHB
#_05E69B: PHK
#_05E69C: PLB

#_05E69D: JSR .main

#_05E6A0: PLB

#_05E6A1: RTL

;---------------------------------------------------------------------------------------------------

#SnitchSpeedX:
#_05E6A2: db $00, $00, $F7, $09

#SnitchSpeedY:
#_05E6A6: db $F7, $09, $00, $00

;---------------------------------------------------------------------------------------------------

.main
#_05E6AA: LDA.w $0E30,X
#_05E6AD: BEQ .not_chicken_lady

#_05E6AF: JSL ChickenLady

#_05E6B3: RTS

;---------------------------------------------------------------------------------------------------

.not_chicken_lady
#_05E6B4: LDA.w $0D80,X
#_05E6B7: CMP.b #$03
#_05E6B9: BCS Snitch_Main

#_05E6BB: JSL SpriteDraw_RaceGameLady

;===================================================================================================

Snitch_Main:
#_05E6BF: JSR Sprite_CheckIfActive_Bank05
#_05E6C2: LDA.w $0D80,X
#_05E6C5: CMP.b #$03
#_05E6C7: BCS .continue

#_05E6C9: LDA.b $1B
#_05E6CB: BEQ .outdoors

;---------------------------------------------------------------------------------------------------

#_05E6CD: JSL Sprite_TrackBodyToHead
#_05E6D1: JSR Sprite_DirectionToFaceLink_Bank05

#_05E6D4: TYA
#_05E6D5: EOR.b #$03
#_05E6D7: STA.w $0EB0,X

; Message 00AB
#_05E6DA: LDA.b #$AB
#_05E6DC: LDY.b #$00
#_05E6DE: JSL Sprite_ShowSolicitedMessage

#_05E6E2: RTS

;---------------------------------------------------------------------------------------------------

.outdoors
#_05E6E3: LDA.w $0D80,X
#_05E6E6: BNE .ignore_contact

#_05E6E8: JSL Sprite_CheckDamageToLink_same_layer_long
#_05E6EC: BCS .face_away

.ignore_contact
#_05E6EE: JSL Sprite_TrackBodyToHead
#_05E6F2: BCC .short_timer

#_05E6F4: JSR Sprite_Move_XY_Bank05

;---------------------------------------------------------------------------------------------------

.continue
#_05E6F7: LDA.w $0D80,X
#_05E6FA: JSL JumpTableLocal
#_05E6FE: dw Snitch_Meander
#_05E700: dw Snitch_FreakOut
#_05E702: dw Snitch_OpenDoor
#_05E704: dw Snitch_SlamDoor

;---------------------------------------------------------------------------------------------------

.face_away
#_05E706: JSR Sprite_DirectionToFaceLink_Bank05
#_05E709: TYA
#_05E70A: EOR.b #$03
#_05E70C: STA.w $0DE0,X

.short_timer
#_05E70F: LDA.b #$01
#_05E711: STA.w $0DF0,X

#_05E714: BRA .continue

;===================================================================================================

pool Snitch_Meander

.max_displacement_low
#_05E716: db -32,  32

.max_displacement_high
#_05E718: db  -1,   0

pool off

;---------------------------------------------------------------------------------------------------

Snitch_Meander:
#_05E71A: LDA.w $0DF0,X
#_05E71D: BNE .dont_turn_around

#_05E71F: LDY.w $0DB0,X

#_05E722: LDA.w $0D90,X
#_05E725: CLC
#_05E726: ADC.w .max_displacement_low,Y
#_05E729: CMP.w $0D10,X
#_05E72C: BNE .dont_turn_around

#_05E72E: LDA.w $0D90,X
#_05E731: CLC
#_05E732: ADC.w .max_displacement_low,Y

#_05E735: LDA.w $0DA0,X
#_05E738: ADC.w .max_displacement_high,Y
#_05E73B: CMP.w $0D30,X
#_05E73E: BNE .dont_turn_around

;---------------------------------------------------------------------------------------------------

#_05E740: LDA.w $0DE0,X
#_05E743: EOR.b #$01
#_05E745: STA.w $0EB0,X

#_05E748: TAY

#_05E749: LDA.w SnitchSpeedX,Y
#_05E74C: STA.w $0D50,X

#_05E74F: LDA.w SnitchSpeedY,Y
#_05E752: STA.w $0D40,X

#_05E755: LDA.w $0DB0,X
#_05E758: EOR.b #$01
#_05E75A: STA.w $0DB0,X

;---------------------------------------------------------------------------------------------------

.dont_turn_around
#_05E75D: TXA
#_05E75E: EOR.b $1A

#_05E760: LSR A
#_05E761: LSR A
#_05E762: LSR A
#_05E763: LSR A

#_05E764: AND.b #$01
#_05E766: STA.w $0DC0,X

#_05E769: LDA.w $0F60,X
#_05E76C: PHA

#_05E76D: LDA.b #$03
#_05E76F: STA.w $0F60,X

; Message 002D
#_05E772: LDA.b #$2D
#_05E774: LDY.b #$00
#_05E776: JSL Sprite_ShowMessageOnContact

#_05E77A: TAY

#_05E77B: PLA
#_05E77C: STA.w $0F60,X
#_05E77F: BCC .exit

#_05E781: TYA
#_05E782: STA.w $0DE0,X

#_05E785: JSL Snitch_SpawnGuard
#_05E789: INC.w $0D80,X

.exit
#_05E78C: RTS

;===================================================================================================

Snitch_FreakOut:
#_05E78D: STZ.w $0EB0,X

#_05E790: LDY.w $0FDE

#_05E793: LDA.w $0B18,Y
#_05E796: STA.b $00

#_05E798: LDA.w $0B20,Y
#_05E79B: STA.b $01

#_05E79D: LDA.w $0D00,X
#_05E7A0: STA.b $02

#_05E7A2: LDA.w $0D20,X
#_05E7A5: STA.b $03

#_05E7A7: REP #$20

#_05E7A9: LDA.b $00
#_05E7AB: CMP.b $02

#_05E7AD: SEP #$30

#_05E7AF: BCC .not_at_door_yet

;---------------------------------------------------------------------------------------------------

#_05E7B1: INC.w $0D80,X

#_05E7B4: STZ.w $0D50,X
#_05E7B7: STZ.w $0D40,X

#_05E7BA: LDA.b #$02
#_05E7BC: STA.w $0F60,X

#_05E7BF: LDA.w $0B08,Y
#_05E7C2: STA.b $02

#_05E7C4: LDA.w $0B10,Y
#_05E7C7: STA.b $03

#_05E7C9: PHX

#_05E7CA: REP #$30

#_05E7CC: LDA.b $00
#_05E7CE: SEC
#_05E7CF: SBC.w $0708
#_05E7D2: AND.w $070A

#_05E7D5: ASL A
#_05E7D6: ASL A
#_05E7D7: ASL A

#_05E7D8: STA.b $04

#_05E7DA: LDA.b $02
#_05E7DC: LSR A
#_05E7DD: LSR A
#_05E7DE: LSR A

#_05E7DF: SEC
#_05E7E0: SBC.w $070C

#_05E7E3: AND.w $070E
#_05E7E6: CLC
#_05E7E7: ADC.b $04
#_05E7E9: TAX

#_05E7EA: CLC
#_05E7EB: JSL Overworld_DrawWoodenDoor

#_05E7EF: PLX

#_05E7F0: LDA.b #$10
#_05E7F2: STA.w $0DF0,X

#_05E7F5: RTS

;---------------------------------------------------------------------------------------------------

.not_at_door_yet
#_05E7F6: LDA.b #$01
#_05E7F8: STA.w $02E4

#_05E7FB: LDA.w $0B08,Y
#_05E7FE: STA.b $04

#_05E800: LDA.w $0B10,Y
#_05E803: STA.b $05

#_05E805: LDA.w $0B18,Y
#_05E808: STA.b $06

#_05E80A: LDA.w $0B20,Y
#_05E80D: STA.b $07

#_05E80F: LDA.b #$40
#_05E811: JSL Sprite_ProjectSpeedTowardsLocation_long

#_05E815: LDA.b $00
#_05E817: STA.w $0D40,X

#_05E81A: LDA.b $01
#_05E81C: STA.w $0D50,X

#_05E81F: STZ.w $0DE0,X
#_05E822: STZ.w $0EB0,X

#_05E825: TXA
#_05E826: EOR.b $1A
#_05E828: LSR A
#_05E829: LSR A
#_05E82A: LSR A
#_05E82B: AND.b #$01
#_05E82D: STA.w $0DC0,X

#_05E830: RTS

;===================================================================================================

Snitch_OpenDoor:
#_05E831: LDA.w $0DF0,X
#_05E834: BNE .delay

#_05E836: LDY.w $0FDE

#_05E839: LDA.w $0B18,Y
#_05E83C: STA.w $0D00,X
#_05E83F: STA.b $00

#_05E841: LDA.w $0B20,Y
#_05E844: STA.w $0D20,X
#_05E847: STA.b $01

#_05E849: LDA.w $0B08,Y
#_05E84C: STA.w $0D10,X
#_05E84F: STA.b $02

#_05E851: LDA.w $0B10,Y
#_05E854: STA.w $0D30,X
#_05E857: STA.b $03

#_05E859: PHX

#_05E85A: REP #$30

#_05E85C: LDA.b $00
#_05E85E: SEC
#_05E85F: SBC.w $0708
#_05E862: AND.w $070A

#_05E865: ASL A
#_05E866: ASL A
#_05E867: ASL A

#_05E868: STA.b $04

#_05E86A: LDA.b $02
#_05E86C: LSR A
#_05E86D: LSR A
#_05E86E: LSR A

#_05E86F: SEC
#_05E870: SBC.w $070C
#_05E873: AND.w $070E

#_05E876: CLC
#_05E877: ADC.b $04
#_05E879: TAX

#_05E87A: SEC
#_05E87B: JSL Overworld_DrawWoodenDoor

#_05E87F: PLX

#_05E880: INC.w $0D80,X

.delay
#_05E883: JSR Sprite_Move_XY_Bank05

#_05E886: RTS

;===================================================================================================

Snitch_SlamDoor:
#_05E887: STZ.w $0DD0,X
#_05E88A: STZ.w $02E4

#_05E88D: RTS

;===================================================================================================

SpritePrep_RunningBoy:
#_05E88E: PHB
#_05E88F: PHK
#_05E890: PLB

#_05E891: JSR .main

#_05E894: PLB

#_05E895: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05E896: LDA.b #$02
#_05E898: STA.w $0EB0,X
#_05E89B: STA.w $0DE0,X

#_05E89E: INC.w $0BA0,X

#_05E8A1: RTS

;===================================================================================================

Sprite_74_RunningBoy:
#_05E8A2: PHB
#_05E8A3: PHK
#_05E8A4: PLB

#_05E8A5: JSR .main

#_05E8A8: PLB

#_05E8A9: RTL

;---------------------------------------------------------------------------------------------------

#RunningBoySpeedX:
#_05E8AA: db   0,   0, -54,  54

#RunningBoySpeedY:
#_05E8AE: db -54,  54,   0,   0

;---------------------------------------------------------------------------------------------------

.main
#_05E8B2: JSR SpriteDraw_RunningBoy
#_05E8B5: JSR Sprite_CheckIfActive_Bank05

#_05E8B8: JSL Sprite_TrackBodyToHead
#_05E8BC: JSL Sprite_BehaveAsBarrier

#_05E8C0: LDA.b #$FF
#_05E8C2: STA.w $0E30,X

#_05E8C5: JSR Sprite_CheckTileCollision_Bank05

#_05E8C8: LDA.w $0F60,X
#_05E8CB: PHA

#_05E8CC: LDA.b #$07
#_05E8CE: STA.w $0F60,X

#_05E8D1: JSL Sprite_CheckDamageToLink_same_layer_long
#_05E8D5: BCC .no_contact

#_05E8D7: LDA.w $0D80,X
#_05E8DA: STA.w $0DB0,X

#_05E8DD: LDA.b #$03
#_05E8DF: STA.w $0D80,X

.no_contact
#_05E8E2: PLA
#_05E8E3: STA.w $0F60,X

#_05E8E6: LDA.w $0D80,X
#_05E8E9: JSL JumpTableLocal
#_05E8ED: dw RunningBoy_Idle
#_05E8EF: dw RunningBoy_RunLeft
#_05E8F1: dw RunningBoy_RunRight
#_05E8F3: dw RunningBoy_Caught

;===================================================================================================

pool RunningBoy_Idle

.speed_x
#_05E8F5: db -24,  24

pool off

;---------------------------------------------------------------------------------------------------

RunningBoy_Idle:
#_05E8F7: JSL Sprite_TrackBodyToHead
#_05E8FB: JSR Sprite_DirectionToFaceLink_Bank05

#_05E8FE: TYA
#_05E8FF: EOR.b #$03
#_05E901: STA.w $0EB0,X

#_05E904: JSL Sprite_CheckDamageToLink_same_layer_long
#_05E908: BCC .no_contact

#_05E90A: JSL Link_CancelDash_long
#_05E90E: JSR Sprite_DirectionToFaceLink_Bank05

#_05E911: TYA
#_05E912: EOR.b #$03
#_05E914: STA.w $0DE0,X

#_05E917: EOR.b #$01
#_05E919: ORA.b #$02
#_05E91B: STA.w $0EB0,X

#_05E91E: TAY

#_05E91F: AND.b #$01
#_05E921: INC A
#_05E922: STA.w $0D80,X

#_05E925: LDA.w .speed_x-2,Y
#_05E928: STA.w $0D50,X

#_05E92B: LDA.b #$20
#_05E92D: STA.w $0DF0,X

#_05E930: RTS

.no_contact
#_05E931: STZ.w $0D50,X
#_05E934: STZ.w $0D40,X

#_05E937: RTS

;===================================================================================================

RunningMan_Running:
#_05E938: LDA.b $1A
#_05E93A: LSR A
#_05E93B: LSR A
#_05E93C: LSR A
#_05E93D: AND.b #$01
#_05E93F: STA.w $0DC0,X

#_05E942: JSR Sprite_Move_XY_Bank05

#_05E945: RTS

;===================================================================================================

RunningBoy_RunLeft:
#_05E946: LDA.w $0DF0,X
#_05E949: BNE RunningMan_Running

#_05E94B: JSR RunningMan_AnimateAndDust
#_05E94E: JSR RunningMan_RunAway

#_05E951: LDA.w $0D90,X
#_05E954: BNE RunningMan_TickTimer

#_05E956: LDA.b #$FF
#_05E958: STA.w $0D90,X

#_05E95B: LDA.b #$02
#_05E95D: STA.w $0EB0,X

#_05E960: RTS

;===================================================================================================

RunningMan_TickTimer:
#_05E961: DEC.w $0D90,X

#_05E964: RTS

;===================================================================================================

RunningMan_Relax:
#_05E965: STZ.w $0D80,X
#_05E968: STZ.w $0E80,X

#_05E96B: RTS

;===================================================================================================

pool RunningBoy_RunRight

.timer
#_05E96C: db 120,  24, 128

.direction
#_05E96F: db $03, $01, $03, $FF

pool off

;---------------------------------------------------------------------------------------------------

RunningBoy_RunRight:
#_05E973: LDA.w $0DF0,X
#_05E976: BNE RunningMan_Running

#_05E978: JSR RunningMan_AnimateAndDust
#_05E97B: JSR RunningMan_RunAway

#_05E97E: LDA.w $0D90,X
#_05E981: BNE RunningMan_TickTimer

#_05E983: LDY.w $0DA0,X

#_05E986: INC.w $0DA0,X

#_05E989: LDA.w .timer,Y
#_05E98C: STA.w $0D90,X

#_05E98F: LDA.w .direction,Y
#_05E992: BMI RunningMan_Relax

#_05E994: STA.w $0EB0,X

#_05E997: RTS

;===================================================================================================

RunningBoy_Caught:
; Message 00A4
#_05E998: LDA.b #$A4
#_05E99A: LDY.b #$00
#_05E99C: JSL Sprite_ShowMessageUnconditional
#_05E9A0: BCC .no_talk

#_05E9A2: STA.w $0DE0,X

.no_talk
#_05E9A5: LDA.w $0DB0,X
#_05E9A8: STA.w $0D80,X

#_05E9AB: RTS

;===================================================================================================

RunningMan_AnimateAndDust:
#_05E9AC: JSL RunningBoy_SpawnDushGarnish

#_05E9B0: LDA.b $1A
#_05E9B2: LSR A
#_05E9B3: LSR A
#_05E9B4: AND.b #$01
#_05E9B6: STA.w $0DC0,X

#_05E9B9: RTS

;===================================================================================================

RunningMan_RunAway:
#_05E9BA: LDY.w $0EB0,X

#_05E9BD: LDA.w RunningBoySpeedX,Y
#_05E9C0: STA.w $0D50,X

#_05E9C3: LDA.w RunningBoySpeedY,Y
#_05E9C6: STA.w $0D40,X

#_05E9C9: JSR Sprite_Move_XY_Bank05

#_05E9CC: RTS

;===================================================================================================

pool SpriteDraw_RunningBoy

.oam_groups
; group00
#_05E9CD: dw   0,  -8 : db $2C, $00, $00, $02
#_05E9D5: dw   0,   0 : db $EE, $08, $00, $02

; group01
#_05E9DD: dw   0,  -7 : db $2C, $00, $00, $02
#_05E9E5: dw   0,   1 : db $EE, $48, $00, $02

; group02
#_05E9ED: dw   0,  -8 : db $2A, $00, $00, $02
#_05E9F5: dw   0,   0 : db $CA, $08, $00, $02

; group03
#_05E9FD: dw   0,  -7 : db $2A, $00, $00, $02
#_05EA05: dw   0,   1 : db $CA, $48, $00, $02

; group04
#_05EA0D: dw   0,  -8 : db $2E, $00, $00, $02
#_05EA15: dw   0,   0 : db $CC, $08, $00, $02

; group05
#_05EA1D: dw   0,  -7 : db $2E, $00, $00, $02
#_05EA25: dw   0,   1 : db $CE, $08, $00, $02

; group06
#_05EA2D: dw   0,  -8 : db $2E, $40, $00, $02
#_05EA35: dw   0,   0 : db $CC, $48, $00, $02

; group07
#_05EA3D: dw   0,  -7 : db $2E, $40, $00, $02
#_05EA45: dw   0,   1 : db $CE, $48, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_RunningBoy:
#_05EA4D: LDA.b #$02
#_05EA4F: STA.b $06
#_05EA51: STZ.b $07

#_05EA53: LDA.w $0DE0,X
#_05EA56: ASL A
#_05EA57: ADC.w $0DC0,X

#_05EA5A: ASL A
#_05EA5B: ASL A
#_05EA5C: ASL A
#_05EA5D: ASL A

#_05EA5E: ADC.b #.oam_groups>>0
#_05EA60: STA.b $08

#_05EA62: LDA.b #.oam_groups>>8
#_05EA64: ADC.b #$00
#_05EA66: STA.b $09

#_05EA68: JSL Sprite_DrawMultiple_player_deferred
#_05EA6C: JSL SpriteDraw_Shadow_long

#_05EA70: RTS

;===================================================================================================

Sprite_75_BottleMerchant:
#_05EA71: PHB
#_05EA72: PHK
#_05EA73: PLB

#_05EA74: JSR .main

#_05EA77: PLB

#_05EA78: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05EA79: JSR SpriteDraw_BottleMerchant

#_05EA7C: LDA.b $03
#_05EA7E: ORA.b $01
#_05EA80: STA.w $0D90,X

#_05EA83: JSR Sprite_CheckIfActive_Bank05

#_05EA86: JSL BottleMerchant_DetectFish
#_05EA8A: JSL Sprite_BehaveAsBarrier

#_05EA8E: JSL CheckIfLinkIsBusy
#_05EA92: BCC .cant_do_nothin

#_05EA94: RTS

;---------------------------------------------------------------------------------------------------

.cant_do_nothin
#_05EA95: JSL GetRandomNumber
#_05EA99: BNE .dont_reset

#_05EA9B: LDA.b #$01
#_05EA9D: STA.w $0DC0,X

#_05EAA0: LDA.b #$14
#_05EAA2: STA.w $0DF0,X

.dont_reset
#_05EAA5: LDA.w $0DF0,X
#_05EAA8: BNE .delay

#_05EAAA: STZ.w $0DC0,X

.delay
#_05EAAD: LDA.w $0D80,X
#_05EAB0: JSL JumpTableLocal
#_05EAB4: dw BottleVendor_Idle
#_05EAB6: dw BottleVendor_OfferSale
#_05EAB8: dw BottleVendor_GrantBottle
#_05EABA: dw BottleVendor_BuyingItem
#_05EABC: dw BottleVendor_PayOut

;===================================================================================================

BottleVendor_OutOfStock:
; Message 00D2
#_05EABE: LDA.b #$D2
#_05EAC0: LDY.b #$00
#_05EAC2: JSL Sprite_ShowSolicitedMessage

#_05EAC6: RTS

;===================================================================================================

BottleVendor_Idle:
#_05EAC7: LDA.w $0D90,X
#_05EACA: BNE .no_trade

#_05EACC: LDA.w $0E90,X
#_05EACF: BEQ .no_trade

#_05EAD1: LDA.b #$03
#_05EAD3: STA.w $0D80,X

#_05EAD6: RTS

;---------------------------------------------------------------------------------------------------

.no_trade
#_05EAD7: LDA.l $7EF3C9
#_05EADB: AND.b #$02
#_05EADD: BNE BottleVendor_OutOfStock

;---------------------------------------------------------------------------------------------------

; Message 00CF
#_05EADF: LDA.b #$CF
#_05EAE1: LDY.b #$00
#_05EAE3: JSL Sprite_ShowSolicitedMessage
#_05EAE7: BCC .exit

#_05EAE9: INC.w $0D80,X

.exit
#_05EAEC: RTS

;===================================================================================================

BottleVendor_OfferSale:
#_05EAED: LDA.w $1CE8
#_05EAF0: BNE .rejected

#_05EAF2: REP #$20

; 100 rupees
#_05EAF4: LDA.l $7EF360
#_05EAF8: CMP.w #100

#_05EAFB: SEP #$30

#_05EAFD: BCC .rejected

; Message 00D0
#_05EAFF: LDA.b #$D0
#_05EB01: LDY.b #$00
#_05EB03: JSL Sprite_ShowMessageUnconditional

#_05EB07: INC.w $0D80,X

#_05EB0A: RTS

;---------------------------------------------------------------------------------------------------

.rejected
; Message 00D1
#_05EB0B: LDA.b #$D1
#_05EB0D: LDY.b #$00
#_05EB0F: JSL Sprite_ShowMessageUnconditional

#_05EB13: STZ.w $0D80,X

#_05EB16: RTS

;===================================================================================================

BottleVendor_GrantBottle:
#_05EB17: LDY.b #!ITEMGET_16

#_05EB19: STZ.w $02E9

#_05EB1C: PHX

#_05EB1D: JSL Link_ReceiveItem

#_05EB21: PLX

#_05EB22: LDA.l $7EF3C9
#_05EB26: ORA.b #$02
#_05EB28: STA.l $7EF3C9

#_05EB2C: REP #$20

; take 100 rupees
#_05EB2E: LDA.l $7EF360
#_05EB32: SEC
#_05EB33: SBC.w #100
#_05EB36: STA.l $7EF360

#_05EB3A: SEP #$30

#_05EB3C: STZ.w $0D80,X

#_05EB3F: RTS

;===================================================================================================

BottleVendor_BuyingItem:
#_05EB40: LDA.w $0E90,X
#_05EB43: BMI .buying_fish

;---------------------------------------------------------------------------------------------------

.buying_bee
; Message 00D3
#_05EB45: LDA.b #$D3
#_05EB47: LDY.b #$00
#_05EB49: JSL Sprite_ShowMessageUnconditional

#_05EB4D: INC.w $0D80,X

#_05EB50: RTS

;---------------------------------------------------------------------------------------------------

.buying_fish
; Message 00D4
#_05EB51: LDA.b #$D4
#_05EB53: LDY.b #$00
#_05EB55: JSL Sprite_ShowMessageUnconditional

#_05EB59: INC.w $0D80,X

#_05EB5C: RTS

;===================================================================================================

BottleVendor_PayOut:
#_05EB5D: LDY.w $0E90,X
#_05EB60: BMI .buying_fish

;---------------------------------------------------------------------------------------------------

.buying_bee
#_05EB62: DEY
#_05EB63: LDA.b #$00
#_05EB65: STA.w $0DD0,Y

#_05EB68: JSL BottleMerchant_BuyBee

#_05EB6C: STZ.w $0E90,X
#_05EB6F: STZ.w $0D80,X

#_05EB72: RTS

;---------------------------------------------------------------------------------------------------

.buying_fish
#_05EB73: TYA
#_05EB74: AND.b #$0F
#_05EB76: TAY

#_05EB77: LDA.b #$00
#_05EB79: STA.w $0DD0,Y

#_05EB7C: JSL BottleMerchant_BuyFish

#_05EB80: STZ.w $0E90,X
#_05EB83: STZ.w $0D80,X

#_05EB86: RTS

;===================================================================================================

pool SpriteDraw_BottleMerchant

.oam_groups
; group00
#_05EB87: dw   0,  -7 : db $AC, $00, $00, $02
#_05EB8F: dw   0,   0 : db $88, $00, $00, $02

; group01
#_05EB97: dw   0,  -6 : db $AC, $00, $00, $02
#_05EB9F: dw   0,   0 : db $A2, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_BottleMerchant:
#_05EBA7: LDA.b #$02
#_05EBA9: STA.b $06
#_05EBAB: STZ.b $07

#_05EBAD: LDA.w $0DC0,X
#_05EBB0: ASL A
#_05EBB1: ASL A
#_05EBB2: ASL A
#_05EBB3: ASL A

#_05EBB4: ADC.b #.oam_groups>>0
#_05EBB6: STA.b $08

#_05EBB8: LDA.b #.oam_groups>>8
#_05EBBA: ADC.b #$00
#_05EBBC: STA.b $09

#_05EBBE: JSL Sprite_DrawMultiple_player_deferred
#_05EBC2: JSL SpriteDraw_Shadow_long

#_05EBC6: RTS

;===================================================================================================

SpritePrep_Zelda:
#_05EBC7: PHB
#_05EBC8: PHK
#_05EBC9: PLB

#_05EBCA: JSR .main

#_05EBCD: PLB

#_05EBCE: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05EBCF: LDA.l $7EF359
#_05EBD3: CMP.b #$02
#_05EBD5: BCS .have_master_sword

#_05EBD7: INC.w $0BA0,X

#_05EBDA: JSR Sprite_DirectionToFaceLink_Bank05

#_05EBDD: TYA
#_05EBDE: EOR.b #$03
#_05EBE0: STA.w $0EB0,X
#_05EBE3: STA.w $0DE0,X

#_05EBE6: LDA.l $7EF3CC
#_05EBEA: PHA

#_05EBEB: LDA.b #!FOLLOWER_01
#_05EBED: STA.l $7EF3CC

#_05EBF1: PHX

#_05EBF2: JSL LoadFollowerGraphics

#_05EBF6: PLX

#_05EBF7: PLA
#_05EBF8: STA.l $7EF3CC

#_05EBFC: LDA.b $A0
#_05EBFE: CMP.b #$12
#_05EC00: BNE .not_sanc

#_05EC02: LDA.b #$02
#_05EC04: STA.w $0E80,X

#_05EC07: LDA.l $7EF3C6
#_05EC0B: AND.b #$04
#_05EC0D: BNE .rescued_already

.have_master_sword
#_05EC0F: STZ.w $0DD0,X

#_05EC12: RTS

;---------------------------------------------------------------------------------------------------

.rescued_already
#_05EC13: LDA.w $0D00,X
#_05EC16: CLC
#_05EC17: ADC.b #$0F
#_05EC19: STA.w $0D00,X

#_05EC1C: LDA.w $0D20,X
#_05EC1F: ADC.b #$00
#_05EC21: STA.w $0D20,X

#_05EC24: LDA.w $0D10,X
#_05EC27: CLC
#_05EC28: ADC.b #$06
#_05EC2A: STA.w $0D10,X

#_05EC2D: LDA.b #$03
#_05EC2F: STA.w $0F60,X

#_05EC32: RTS

;---------------------------------------------------------------------------------------------------

.not_sanc
#_05EC33: LDA.b #$00
#_05EC35: STA.w $0E80,X

#_05EC38: LDA.l $7EF3CC
#_05EC3C: CMP.b #!FOLLOWER_01
#_05EC3E: BEQ .already_following

#_05EC40: LDA.l $7EF3C6
#_05EC44: AND.b #$04
#_05EC46: BEQ .exit

.already_following
#_05EC48: STZ.w $0DD0,X

.exit
#_05EC4B: RTS

;===================================================================================================

Priest_SpawnRescuedPrincess:
#_05EC4C: LDA.b #!SPRITE_76
#_05EC4E: JSL Sprite_SpawnDynamically

#_05EC52: PHX

#_05EC53: LDX.w $02CF

#_05EC56: LDA.w $1A64,X
#_05EC59: AND.b #$03
#_05EC5B: STA.w $0EB0,Y
#_05EC5E: STA.w $0DE0,Y

#_05EC61: LDA.b $20
#_05EC63: STA.w $0D00,Y

#_05EC66: LDA.b $21
#_05EC68: STA.w $0D20,Y

#_05EC6B: LDA.b $22
#_05EC6D: STA.w $0D10,Y

#_05EC70: LDA.b $23
#_05EC72: STA.w $0D30,Y

#_05EC75: LDA.b #$01
#_05EC77: STA.w $0E80,Y

#_05EC7A: LDA.b #$00
#_05EC7C: STA.l $7EF3CC

#_05EC80: LDA.w $0BA0,Y
#_05EC83: INC A
#_05EC84: STA.w $0BA0,Y

#_05EC87: LDA.b #$03
#_05EC89: STA.w $0F60,Y

#_05EC8C: PLX

#_05EC8D: RTS

;===================================================================================================

ZeldaSpeedX:
#_05EC8E: db   0,   0,  -9,   9

ZeldaSpeedY:
#_05EC92: db  -9,   9,   0,   0

;===================================================================================================

Sprite_76_Zelda:
#_05EC96: PHB
#_05EC97: PHK
#_05EC98: PLB

#_05EC99: JSR .main

#_05EC9C: PLB

#_05EC9D: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05EC9E: JSL SpriteDraw_Maiden
#_05ECA2: JSR Sprite_CheckIfActive_Bank05

#_05ECA5: JSL Sprite_BehaveAsBarrier
#_05ECA9: JSL Sprite_TrackBodyToHead
#_05ECAD: BCC .dont_move

#_05ECAF: JSR Sprite_Move_XY_Bank05

.dont_move
#_05ECB2: LDA.w $0E80,X
#_05ECB5: JSL JumpTableLocal
#_05ECB9: dw Zelda_InCell
#_05ECBB: dw Zelda_EnteringSanctuary
#_05ECBD: dw Zelda_AtSanctuary

;===================================================================================================

Zelda_InCell:
#_05ECBF: JSR Sprite_DirectionToFaceLink_Bank05

#_05ECC2: TYA
#_05ECC3: EOR.b #$03
#_05ECC5: STA.w $0EB0,X

#_05ECC8: LDA.w $0D80,X
#_05ECCB: JSL JumpTableLocal
#_05ECCF: dw Zelda_WaitingInCell
#_05ECD1: dw Zelda_ApproachHero
#_05ECD3: dw Zelda_DebaseAgahnim
#_05ECD5: dw Zelda_VerifyAttentionSpan
#_05ECD7: dw Zelda_BecomeFollower

;===================================================================================================

Zelda_WaitingInCell:
#_05ECD9: JSL Sprite_CheckDamageToLink_same_layer_long
#_05ECDD: BCC .exit

#_05ECDF: INC.w $0D80,X
#_05ECE2: INC.w $02E4

#_05ECE5: LDY.w $0EB0,X

#_05ECE8: LDA.w ZeldaSpeedX,Y
#_05ECEB: STA.w $0D50,X

#_05ECEE: LDA.w ZeldaSpeedY,Y
#_05ECF1: STA.w $0D40,X

#_05ECF4: LDA.b #$10
#_05ECF6: STA.w $0DF0,X

.exit
#_05ECF9: RTS

;===================================================================================================

Zelda_ApproachHero:
#_05ECFA: LDA.w $0DF0,X
#_05ECFD: BNE .delay

#_05ECFF: INC.w $0D80,X

; Message 001A
#_05ED02: LDA.b #$1A
#_05ED04: LDY.b #$00
#_05ED06: JSL Sprite_ShowMessageUnconditional

#_05ED0A: STZ.w $0D50,X
#_05ED0D: STZ.w $0D40,X

#_05ED10: LDA.b #!SONG_19
#_05ED12: STA.w $012C

.delay
#_05ED15: LDA.b $1A
#_05ED17: LSR A
#_05ED18: LSR A
#_05ED19: LSR A
#_05ED1A: AND.b #$01
#_05ED1C: STA.w $0DC0,X

#_05ED1F: RTS

;===================================================================================================

Zelda_DebaseAgahnim:
#_05ED20: INC.w $0D80,X

; Message 0023
#_05ED23: LDA.b #$23
#_05ED25: LDY.b #$00
#_05ED27: JSL Sprite_ShowMessageUnconditional

#_05ED2B: RTS

;===================================================================================================

Zelda_VerifyAttentionSpan:
#_05ED2C: LDA.w $1CE8
#_05ED2F: BNE .moron

; Message 0022
#_05ED31: LDA.b #$22
#_05ED33: LDY.b #$00
#_05ED35: JSL Sprite_ShowMessageUnconditional

#_05ED39: INC.w $0D80,X

#_05ED3C: RTS

.moron
#_05ED3D: LDA.b #$02
#_05ED3F: STA.w $0D80,X

#_05ED42: RTS

;===================================================================================================

Zelda_BecomeFollower:
#_05ED43: STZ.w $02E4

#_05ED46: LDA.b #$02
#_05ED48: STA.l $7EF3C8

#_05ED4C: JSL SaveDeathCount

#_05ED50: LDA.b #!FOLLOWER_01
#_05ED52: STA.l $7EF3CC

#_05ED56: PHX

#_05ED57: JSL Underworld_FlagRoomData_Quadrants
#_05ED5B: JSL Sprite_BecomeFollower

#_05ED5F: PLX

#_05ED60: STZ.w $0DD0,X

#_05ED63: LDA.b #!SONG_10
#_05ED65: STA.w $012C

#_05ED68: RTS

;===================================================================================================

Zelda_EnteringSanctuary:
#_05ED69: LDA.w $0D80,X
#_05ED6C: JSL JumpTableLocal
#_05ED70: dw Zelda_EnterSanctuary
#_05ED72: dw Zelda_TalkHeadOff
#_05ED74: dw Zelda_WellWishes

;===================================================================================================

pool Zelda_EnterSanctuary

.timer
#_05ED76: db  38,  26,  44,   1

.direction
#_05ED7A: db $01, $03, $01, $02

pool off

;---------------------------------------------------------------------------------------------------

Zelda_EnterSanctuary:
#_05ED7E: LDA.w $0DF0,X
#_05ED81: BNE .walking

#_05ED83: LDY.w $0D90,X
#_05ED86: CPY.b #$04
#_05ED88: BCC .turn

#_05ED8A: INC.w $0D80,X

#_05ED8D: STZ.w $0DE0,X
#_05ED90: STZ.w $0EB0,X
#_05ED93: STZ.w $0D50,X
#_05ED96: STZ.w $0D40,X

#_05ED99: RTS

.turn
#_05ED9A: LDA.w .timer,Y
#_05ED9D: STA.w $0DF0,X

#_05EDA0: LDA.w .direction,Y
#_05EDA3: STA.w $0EB0,X
#_05EDA6: STA.w $0DE0,X

#_05EDA9: INC.w $0D90,X

#_05EDAC: TAY

#_05EDAD: LDA.w ZeldaSpeedX,Y
#_05EDB0: STA.w $0D50,X

#_05EDB3: LDA.w ZeldaSpeedY,Y
#_05EDB6: STA.w $0D40,X

;---------------------------------------------------------------------------------------------------

.walking
#_05EDB9: LDA.b $1A
#_05EDBB: LSR A
#_05EDBC: LSR A
#_05EDBD: LSR A
#_05EDBE: AND.b #$01
#_05EDC0: STA.w $0DC0,X

#_05EDC3: RTS

;===================================================================================================

Zelda_TalkHeadOff:
; Message 001B
#_05EDC4: LDA.b #$1B
#_05EDC6: LDY.b #$00
#_05EDC8: JSL Sprite_ShowMessageUnconditional

#_05EDCC: INC.w $0D80,X

#_05EDCF: LDA.b #$02
#_05EDD1: STA.l $7FFE01

#_05EDD5: LDA.b #$01
#_05EDD7: STA.l $7EF3C8

#_05EDDB: JSL SaveDeathCount

#_05EDDF: LDA.b #$02
#_05EDE1: STA.l $7EF3C5

#_05EDE5: PHX

#_05EDE6: JSL Sprite_LoadGraphicsProperties_light_world_only

#_05EDEA: PLX

#_05EDEB: RTS

;===================================================================================================

Zelda_WellWishes:
#_05EDEC: JSR Sprite_DirectionToFaceLink_Bank05

#_05EDEF: TYA
#_05EDF0: EOR.b #$03
#_05EDF2: STA.w $0EB0,X

; Message 001C
#_05EDF5: LDA.b #$1C
#_05EDF7: LDY.b #$00
#_05EDF9: JSL Sprite_ShowSolicitedMessage
#_05EDFD: BCC .exit

#_05EDFF: STA.w $0DE0,X
#_05EE02: STA.w $0EB0,X

.exit
#_05EE05: RTS

;===================================================================================================

pool Zelda_AtSanctuary

.message_low
#_05EE06: db $1C ; Message 001C
#_05EE07: db $24 ; Message 0024
#_05EE08: db $25 ; Message 0025

.message_high
#_05EE09: db $00
#_05EE0A: db $00
#_05EE0B: db $00

pool off

;---------------------------------------------------------------------------------------------------

Zelda_AtSanctuary:
#_05EE0C: JSR Sprite_DirectionToFaceLink_Bank05

#_05EE0F: TYA
#_05EE10: EOR.b #$03
#_05EE12: STA.w $0EB0,X

#_05EE15: LDY.b #$00

#_05EE17: LDA.l $7EF374
#_05EE1B: AND.b #$07
#_05EE1D: CMP.b #$07
#_05EE1F: BNE .missing_pendants

#_05EE21: LDY.b #$02
#_05EE23: BRA .set_message

.missing_pendants
#_05EE25: LDA.l $7EF3C7
#_05EE29: CMP.b #$03
#_05EE2B: BCC .set_message

#_05EE2D: LDY.b #$01

.set_message
#_05EE2F: LDA.w .message_low,Y
#_05EE32: XBA

#_05EE33: LDA.w .message_high,Y
#_05EE36: TAY

#_05EE37: XBA
#_05EE38: JSL Sprite_ShowSolicitedMessage
#_05EE3C: BCC .exit

#_05EE3E: STA.w $0DE0,X
#_05EE41: STA.w $0EB0,X

; kissy kissy
#_05EE44: LDA.b #$A0
#_05EE46: STA.l $7EF372

.exit
#_05EE4A: RTS

;===================================================================================================

SpritePrep_Mushroom:
#_05EE4B: PHB
#_05EE4C: PHK
#_05EE4D: PLB

#_05EE4E: JSR .main

#_05EE51: PLB

#_05EE52: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05EE53: LDA.l $7EF344
#_05EE57: CMP.b #$02
#_05EE59: BCC .no_powder

#_05EE5B: STZ.w $0DD0,X

#_05EE5E: RTS

.no_powder
#_05EE5F: LDA.b #$00
#_05EE61: STA.w $0DC0,X

#_05EE64: LDA.b #$08
#_05EE66: ORA.w $0F50,X
#_05EE69: STA.w $0F50,X

#_05EE6C: INC.w $0BA0,X

#_05EE6F: RTS

;===================================================================================================

Sprite_E7_Mushroom:
#_05EE70: PHB
#_05EE71: PHK
#_05EE72: PLB

#_05EE73: JSR .main

#_05EE76: PLB

#_05EE77: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05EE78: JSL SpriteDraw_SingleLarge_long
#_05EE7C: JSL CheckIfLinkIsBusy
#_05EE80: BCS .exit

#_05EE82: JSL Sprite_CheckDamageToLink_same_layer_long
#_05EE86: BCC .not_foraged

#_05EE88: STZ.w $0DD0,X

#_05EE8B: PHX

#_05EE8C: LDY.b #!ITEMGET_29
#_05EE8E: STZ.w $02E9
#_05EE91: JSL Link_ReceiveItem

#_05EE95: PLX

#_05EE96: RTS

;---------------------------------------------------------------------------------------------------

.not_foraged
#_05EE97: LDA.b $1A
#_05EE99: AND.b #$1F
#_05EE9B: BNE .exit

#_05EE9D: LDA.w $0F50,X
#_05EEA0: EOR.b #$40
#_05EEA2: STA.w $0F50,X

.exit
#_05EEA5: RTS

;===================================================================================================
; 10/10 routine
;===================================================================================================
SpritePrep_FakeMasterSword:
#_05EEA6: RTL

;===================================================================================================

Sprite_E8_FakeMasterSword:
#_05EEA7: PHB
#_05EEA8: PHK
#_05EEA9: PLB

#_05EEAA: JSR .main

#_05EEAD: PLB

#_05EEAE: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05EEAF: JSR SpriteDraw_FakeMasterSword
#_05EEB2: JSR Sprite_CheckIfActivePermissive_Bank05

#_05EEB5: LDA.l $7FFA1C,X
#_05EEB9: CMP.b #$03
#_05EEBB: BNE .held

#_05EEBD: LDA.w $0DB0,X
#_05EEC0: BNE .exit

#_05EEC2: INC.w $0DB0,X

; Message 006D
#_05EEC5: LDA.b #$6D
#_05EEC7: LDY.b #$00
#_05EEC9: JSL Sprite_ShowMessageUnconditional

.exit
#_05EECD: RTS

.held
#_05EECE: JSR Sprite_Move_XY_Bank05
#_05EED1: JSL ThrownSprite_TileAndSpriteInteraction_long

#_05EED5: RTS

;===================================================================================================

pool SpriteDraw_FakeMasterSword

.oam_groups
#_05EED6: dw   4,   0 : db $F4, $00, $00, $00
#_05EEDE: dw   4,   8 : db $F5, $00, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_FakeMasterSword:
#_05EEE6: LDA.b #$02
#_05EEE8: STA.b $06
#_05EEEA: STZ.b $07

#_05EEEC: LDA.b #.oam_groups>>0
#_05EEEE: STA.b $08

#_05EEF0: LDA.b #.oam_groups>>8
#_05EEF2: STA.b $09

#_05EEF4: JSL Sprite_DrawMultiple_player_deferred

#_05EEF8: RTS

;===================================================================================================

HeartPieceMessage:
.low
#_05EEF9: db $56 ; Message 0156
#_05EEFA: db $53 ; Message 0153
#_05EEFB: db $54 ; Message 0154
#_05EEFC: db $55 ; Message 0155

.high
#_05EEFD: db $01
#_05EEFE: db $01
#_05EEFF: db $01
#_05EF00: db $01

;===================================================================================================

SpritePrep_HeartContainer:
#_05EF01: PHB
#_05EF02: PHK
#_05EF03: PLB

#_05EF04: JSR .main

#_05EF07: PLB

#_05EF08: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05EF09: LDA.b $1B
#_05EF0B: BNE .indoors

#_05EF0D: LDA.b $8A
#_05EF0F: CMP.b #$3B
#_05EF11: BNE .not_dam_screen

#_05EF13: LDA.l $7EF2BB
#_05EF17: AND.b #$20
#_05EF19: BEQ .collected

.not_dam_screen
#_05EF1B: PHX

#_05EF1C: LDX.b $8A

#_05EF1E: LDA.l $7EF280,X
#_05EF22: AND.b #$40
#_05EF24: BEQ .not_collected

#_05EF26: PLX

.collected
#_05EF27: STZ.w $0DD0,X

#_05EF2A: RTS

;---------------------------------------------------------------------------------------------------

.not_collected
#_05EF2B: PLX

#_05EF2C: RTS

;---------------------------------------------------------------------------------------------------

.indoors
#_05EF2D: LDA.w $0D30,X
#_05EF30: AND.b #$01
#_05EF32: TAY

#_05EF33: LDA.w $0403
#_05EF36: AND.w HeartRoomFlags,Y
#_05EF39: BEQ .exit

#_05EF3B: STZ.w $0DD0,X

.exit
#_05EF3E: RTS

;===================================================================================================

Sprite_EA_HeartContainer:
#_05EF3F: PHB
#_05EF40: PHK
#_05EF41: PLB

#_05EF42: JSR .main

#_05EF45: PLB

#_05EF46: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05EF47: LDA.w $040C
#_05EF4A: CMP.b #$1A
#_05EF4C: BNE .not_ganons_tower

#_05EF4E: STZ.w $0DD0,X

#_05EF51: RTS

.not_ganons_tower
#_05EF52: LDA.w $0ED0,X
#_05EF55: STA.w $0BA0,X
#_05EF58: BNE .gfx_loaded

#_05EF5A: LDA.b #$03

#_05EF5C: PHX

#_05EF5D: JSL WriteTo4BPPBuffer_item_gfx

#_05EF61: PLX

#_05EF62: JSL Sprite_Get16BitCoords_long
#_05EF66: INC.w $0ED0,X

.gfx_loaded
#_05EF69: LDA.w $048E
#_05EF6C: CMP.b #$06
#_05EF6E: BNE .no_water_ripple

#_05EF70: LDA.w $0F70,X
#_05EF73: BNE .no_water_ripple

#_05EF75: JSL SpriteDraw_WaterRipple_WithOAMAdjust_long

.no_water_ripple
#_05EF79: JSL SpriteDraw_SingleLarge_long
#_05EF7D: JSR Sprite_CheckIfActive_Bank05

#_05EF80: DEC.w $0F80,X
#_05EF83: DEC.w $0F80,X

#_05EF86: JSR Sprite_Move_Z_Bank05

#_05EF89: LDA.w $0F70,X
#_05EF8C: BPL .continue

#_05EF8E: STZ.w $0F70,X

#_05EF91: LDA.w $0F80,X
#_05EF94: EOR.b #$FF
#_05EF96: INC A

#_05EF97: LSR A
#_05EF98: LSR A
#_05EF99: STA.w $0F80,X

#_05EF9C: LDA.w $048E
#_05EF9F: CMP.b #$06
#_05EFA1: BNE .continue

#_05EFA3: LDA.w $0E30,X
#_05EFA6: BNE .continue

#_05EFA8: LDA.w $0E40,X
#_05EFAB: CLC
#_05EFAC: ADC.b #$02
#_05EFAE: STA.w $0E40,X

#_05EFB1: INC.w $0E30,X

#_05EFB4: JSL Sprite_SpawnWaterSplash_long

;---------------------------------------------------------------------------------------------------

.continue
#_05EFB8: JSL CheckIfLinkIsBusy
#_05EFBC: BCC .link_not_busy

#_05EFBE: RTS

.link_not_busy
#_05EFBF: JSL Sprite_CheckDamageToLink_same_layer_long
#_05EFC3: BCS .contact

#_05EFC5: RTS

;---------------------------------------------------------------------------------------------------

.from_sprite
#_05EFC6: PHX

#_05EFC7: LDA.b #$02
#_05EFC9: STA.w $02E9

#_05EFCC: LDY.b #!ITEMGET_3E
#_05EFCE: JSL Link_ReceiveItem

#_05EFD2: PLX

#_05EFD3: LDA.w $0403
#_05EFD6: ORA.b #$80
#_05EFD8: STA.w $0403

#_05EFDB: RTS

;---------------------------------------------------------------------------------------------------

.contact
#_05EFDC: STZ.w $0DD0,X

#_05EFDF: LDA.w $0D90,X
#_05EFE2: BNE .from_sprite

#_05EFE4: PHX

#_05EFE5: JSL Link_CancelDash_long

#_05EFE9: LDY.b #!ITEMGET_26
#_05EFEB: STZ.w $02E9
#_05EFEE: JSL Link_ReceiveItem

#_05EFF2: PLX

#_05EFF3: LDA.b $1B
#_05EFF5: BNE HeartSetFlagUnderWorld

;===================================================================================================

HeartSetFlagOverworld:
#_05EFF7: PHX

#_05EFF8: LDX.b $8A

#_05EFFA: LDA.l $7EF280,X
#_05EFFE: ORA.b #$40
#_05F000: STA.l $7EF280,X

#_05F004: PLX

#_05F005: RTS

;===================================================================================================

HeartRoomFlags:
#_05F006: db $40, $20

;---------------------------------------------------------------------------------------------------

HeartSetFlagUnderWorld:
#_05F008: LDA.w $0D30,X
#_05F00B: AND.b #$01
#_05F00D: TAY

#_05F00E: LDA.w $0403
#_05F011: ORA.w HeartRoomFlags,Y
#_05F014: STA.w $0403

#_05F017: RTS

;===================================================================================================

Sprite_EB_HeartPiece:
#_05F018: PHB
#_05F019: PHK
#_05F01A: PLB

#_05F01B: JSR .main

#_05F01E: PLB

#_05F01F: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05F020: LDA.w $0D80,X
#_05F023: BNE .check_completed

#_05F025: INC.w $0D80,X

#_05F028: JSR SpritePrep_HeartContainer_main

#_05F02B: LDA.w $0DD0,X
#_05F02E: BEQ .exit

;---------------------------------------------------------------------------------------------------

.check_completed
#_05F030: JSL SpriteDraw_SingleLarge_long
#_05F034: JSR Sprite_CheckIfActive_Bank05

#_05F037: JSL CheckIfLinkIsBusy
#_05F03B: BCS .exit

; Unused code for moving
#_05F03D: JSR Sprite_CheckTileCollision_Bank05

#_05F040: LDA.w $0E70,X
#_05F043: AND.b #$03
#_05F045: BEQ .no_horizontal_collision

#_05F047: LDA.w $0D50,X
#_05F04A: EOR.b #$FF
#_05F04C: INC A
#_05F04D: STA.w $0D50,X

.no_horizontal_collision
#_05F050: DEC.w $0F80,X

#_05F053: JSR Sprite_Move_Z_Bank05
#_05F056: JSR Sprite_Move_XY_Bank05

#_05F059: LDA.w $0F70,X
#_05F05C: BPL .not_bouncing

#_05F05E: STZ.w $0F70,X

#_05F061: LDA.w $0F80,X
#_05F064: EOR.b #$FF
#_05F066: AND.b #$F8
#_05F068: LSR A
#_05F069: STA.w $0F80,X

#_05F06C: LDA.w $0D50,X
#_05F06F: BEQ .not_bouncing

#_05F071: CMP.b #$7F
#_05F073: ROR A
#_05F074: STA.w $0D50,X

#_05F077: CMP.b #$FF
#_05F079: BNE .not_bouncing

#_05F07B: INC.w $0D50,X

;---------------------------------------------------------------------------------------------------

.not_bouncing
#_05F07E: LDA.w $0F10,X
#_05F081: BNE .exit

#_05F083: JSL Sprite_CheckDamageToLink_same_layer_long
#_05F087: BCS .contact

.exit
#_05F089: RTS

;---------------------------------------------------------------------------------------------------

.contact
#_05F08A: LDA.l $7EF36B
#_05F08E: INC A
#_05F08F: AND.b #$03
#_05F091: STA.l $7EF36B
#_05F095: BNE .not_full_set

#_05F097: PHX

#_05F098: JSL Link_CancelDash_long

#_05F09C: LDY.b #!ITEMGET_26
#_05F09E: STZ.w $02E9
#_05F0A1: JSL Link_ReceiveItem

#_05F0A5: PLX

#_05F0A6: BRA .handle_flags

;---------------------------------------------------------------------------------------------------

.not_full_set
#_05F0A8: LDA.b #!SFX3_2D
#_05F0AA: JSL SpriteSFX_QueueSFX3WithPan

#_05F0AE: LDA.l $7EF36B
#_05F0B2: TAY

#_05F0B3: LDA.w HeartPieceMessage_low,Y
#_05F0B6: XBA

#_05F0B7: LDA.w HeartPieceMessage_high,Y
#_05F0BA: TAY

#_05F0BB: XBA
#_05F0BC: JSL Sprite_ShowMessageUnconditional

;---------------------------------------------------------------------------------------------------

.handle_flags
#_05F0C0: STZ.w $0DD0,X

#_05F0C3: LDA.b $1B
#_05F0C5: BEQ .handle_overworld_flags

#_05F0C7: JMP.w HeartSetFlagUnderWorld

.handle_overworld_flags
#_05F0CA: JMP.w HeartSetFlagOverworld

;===================================================================================================

Sprite_16_Elder:
#_05F0CD: PHB
#_05F0CE: PHK
#_05F0CF: PLB

#_05F0D0: JSR .main

#_05F0D3: PLB

#_05F0D4: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05F0D5: JSR SpriteDraw_Elder
#_05F0D8: JSR Sprite_CheckIfActive_Bank05
#_05F0DB: JSL Sprite_BehaveAsBarrier

#_05F0DF: LDA.w $0E80,X
#_05F0E2: JSL JumpTableLocal
#_05F0E6: dw Sahasrahla
#_05F0E8: dw Aginah

;===================================================================================================

Aginah:
#_05F0EA: LDA.l $7EF3C6
#_05F0EE: AND.b #$20
#_05F0F0: BEQ .first_message

;---------------------------------------------------------------------------------------------------

#_05F0F2: LDA.l $7EF359
#_05F0F6: CMP.b #$02
#_05F0F8: BCC .weak_sword

; Message 0126
#_05F0FA: LDA.b #$26
#_05F0FC: LDY.b #$01
#_05F0FE: JSL Sprite_ShowSolicitedMessage

#_05F102: BRA .continue

;---------------------------------------------------------------------------------------------------

.weak_sword
#_05F104: LDA.l $7EF374
#_05F108: AND.b #$07
#_05F10A: CMP.b #$07
#_05F10C: BNE .missing_pendants

; Message 0124
#_05F10E: LDA.b #$24
#_05F110: LDY.b #$01
#_05F112: JSL Sprite_ShowSolicitedMessage

#_05F116: BRA .continue

;---------------------------------------------------------------------------------------------------

.missing_pendants
#_05F118: AND.b #$02
#_05F11A: CMP.b #$02
#_05F11C: BNE .missing_blue_pendant

; Message 0127
#_05F11E: LDA.b #$27
#_05F120: LDY.b #$01
#_05F122: JSL Sprite_ShowSolicitedMessage
#_05F126: BRA .continue

;---------------------------------------------------------------------------------------------------

.missing_blue_pendant
#_05F128: LDA.l $7EF34E
#_05F12C: BEQ .first_message

; Message 0125
#_05F12E: LDA.b #$25
#_05F130: LDY.b #$01
#_05F132: JSL Sprite_ShowSolicitedMessage

#_05F136: BRA .continue

;---------------------------------------------------------------------------------------------------

.first_message
; Message 0123
#_05F138: LDA.b #$23
#_05F13A: LDY.b #$01
#_05F13C: JSL Sprite_ShowSolicitedMessage

#_05F140: LDA.l $7EF3C6
#_05F144: ORA.b #$20
#_05F146: STA.l $7EF3C6

.continue
#_05F14A: JMP.w Elder_Animate

;===================================================================================================

Sahasrahla:
#_05F14D: LDA.w $0D80,X
#_05F150: JSL JumpTableLocal
#_05F154: dw Sasha_Idle
#_05F156: dw Sasha_GiveQuest
#_05F158: dw Sasha_GiveBoots
#_05F15A: dw Sasha_PromoteIceRod

;===================================================================================================

pool Sasha_Idle

.message_low
#_05F15C: db $37 ; Message 0036
#_05F15D: db $36 ; Message 0037

.message_high
#_05F15E: db $00
#_05F15F: db $00

pool off

;---------------------------------------------------------------------------------------------------

Sasha_Idle:
#_05F160: LDA.l $7EF374
#_05F164: AND.b #$04
#_05F166: BNE .green_pendant_obtained

; Message 0030
#_05F168: LDA.b #$30
#_05F16A: LDY.b #$00
#_05F16C: JSL Sprite_ShowSolicitedMessage
#_05F170: BCC .no_talk

#_05F172: INC.w $0D80,X

.no_talk
#_05F175: BRA Elder_Animate

;---------------------------------------------------------------------------------------------------

.green_pendant_obtained
#_05F177: LDA.l $7EF355
#_05F17B: BNE .boots_obtained

#_05F17D: LDA.l $7EF3C7
#_05F181: CMP.b #$03
#_05F183: ROL A
#_05F184: AND.b #$01
#_05F186: TAY

#_05F187: LDA.w .message_low,Y
#_05F18A: XBA

#_05F18B: LDA.w .message_high,Y
#_05F18E: TAY

#_05F18F: XBA
#_05F190: JSL Sprite_ShowSolicitedMessage
#_05F194: BCC .no_speak

#_05F196: INC.w $0D80,X
#_05F199: INC.w $0D80,X

.no_speak
#_05F19C: BRA Elder_Animate

;---------------------------------------------------------------------------------------------------

.boots_obtained
#_05F19E: LDA.l $7EF346
#_05F1A2: BNE .have_ice_rod

; Message 0035
#_05F1A4: LDA.b #$35
#_05F1A6: LDY.b #$00
#_05F1A8: JSL Sprite_ShowSolicitedMessage

#_05F1AC: BRA Elder_Animate

;---------------------------------------------------------------------------------------------------

.have_ice_rod
#_05F1AE: LDA.l $7EF374
#_05F1B2: AND.b #$07
#_05F1B4: CMP.b #$07
#_05F1B6: BEQ .have_every_pendant

; Message 0032
#_05F1B8: LDA.b #$32
#_05F1BA: LDY.b #$00
#_05F1BC: JSL Sprite_ShowSolicitedMessage

#_05F1C0: BRA Elder_Animate

;---------------------------------------------------------------------------------------------------

.have_every_pendant
#_05F1C2: LDA.l $7EF359
#_05F1C6: CMP.b #$02
#_05F1C8: BCS .have_mastersword

; Message 002E
#_05F1CA: LDA.b #$2E
#_05F1CC: LDY.b #$00
#_05F1CE: JSL Sprite_ShowSolicitedMessage

#_05F1D2: BRA Elder_Animate

;---------------------------------------------------------------------------------------------------

.have_mastersword
; Message 002F
#_05F1D4: LDA.b #$2F
#_05F1D6: LDY.b #$00
#_05F1D8: JSL Sprite_ShowSolicitedMessage

;===================================================================================================

Elder_Animate:
#_05F1DC: LDA.b $1A

#_05F1DE: LSR A ; /32
#_05F1DF: LSR A
#_05F1E0: LSR A
#_05F1E1: LSR A
#_05F1E2: LSR A

#_05F1E3: AND.b #$01
#_05F1E5: STA.w $0DC0,X

#_05F1E8: RTS

;===================================================================================================

Sasha_GiveQuest:
; Message 0031
#_05F1E9: LDA.b #$31
#_05F1EB: LDY.b #$00
#_05F1ED: JSL Sprite_ShowMessageUnconditional

#_05F1F1: STZ.w $0D80,X

#_05F1F4: LDA.b #$03
#_05F1F6: STA.l $7EF3C7

#_05F1FA: RTS

;===================================================================================================

Sasha_GiveBoots:
#_05F1FB: LDY.b #!ITEMGET_4B
#_05F1FD: STZ.w $02E9
#_05F200: JSL Link_ReceiveItem

#_05F204: INC.w $0D80,X

#_05F207: LDA.b #$03
#_05F209: STA.l $7EF3C7

#_05F20D: RTS

;===================================================================================================

Sasha_PromoteIceRod:
; Message 0035
#_05F20E: LDA.b #$35
#_05F210: LDY.b #$00
#_05F212: JSL Sprite_ShowMessageUnconditional

#_05F216: STZ.w $0D80,X

#_05F219: RTS

;===================================================================================================

pool SpriteDraw_Elder

.oam_groups
; group00
#_05F21A: dw   0,  -9 : db $A0, $00, $00, $02
#_05F222: dw   0,   0 : db $A2, $00, $00, $02

; group01
#_05F22A: dw   0,  -8 : db $A0, $00, $00, $02
#_05F232: dw   0,   0 : db $A4, $40, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Elder:
#_05F23A: LDA.b #$02
#_05F23C: STA.b $06
#_05F23E: STZ.b $07

#_05F240: LDA.w $0DC0,X

#_05F243: ASL A ; x16
#_05F244: ASL A
#_05F245: ASL A
#_05F246: ASL A

#_05F247: ADC.b #.oam_groups>>0
#_05F249: STA.b $08

#_05F24B: LDA.b #.oam_groups>>8
#_05F24D: ADC.b #$00
#_05F24F: STA.b $09

#_05F251: JSL Sprite_DrawMultiple_player_deferred
#_05F255: JSL SpriteDraw_Shadow_long

#_05F259: RTS

;===================================================================================================

SpritePrep_MedallionTablet:
#_05F25A: PHB
#_05F25B: PHK
#_05F25C: PLB

#_05F25D: JSR .main

#_05F260: PLB

#_05F261: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05F262: INC.w $0BA0,X

#_05F265: LDA.b $8A
#_05F267: CMP.b #$03
#_05F269: BEQ .ether_tablet

#_05F26B: LDA.w $0D10,X
#_05F26E: CLC
#_05F26F: ADC.b #$08
#_05F271: STA.w $0D10,X

#_05F274: LDA.l $7EF347
#_05F278: BEQ .exit

#_05F27A: LDA.b #$04
#_05F27C: STA.w $0DC0,X

#_05F27F: LDA.b #$03
#_05F281: STA.w $0D80,X

#_05F284: RTS

;---------------------------------------------------------------------------------------------------

.ether_tablet
#_05F285: LDA.l $7EF348
#_05F289: BEQ .exit

#_05F28B: LDA.b #$04
#_05F28D: STA.w $0DC0,X

#_05F290: LDA.b #$03
#_05F292: STA.w $0D80,X

.exit
#_05F295: RTS

;===================================================================================================

Sprite_F2_MedallionTablet:
#_05F296: PHB
#_05F297: PHK
#_05F298: PLB

#_05F299: JSR .main

#_05F29C: PLB

#_05F29D: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05F29E: LDA.w $0E80,X
#_05F2A1: JSL JumpTableLocal
#_05F2A5: dw MedallionTablet_Main
#_05F2A7: dw DustCloud

;===================================================================================================

pool DustCloud

.anim_step
#_05F2A9: db $00, $01, $02, $03
#_05F2AD: db $04, $05, $01, $00
#_05F2B1: db $FF

pool off

;---------------------------------------------------------------------------------------------------

DustCloud:
#_05F2B2: JSL SpriteDraw_MedallionTabletDebris
#_05F2B6: JSR Sprite_CheckIfActive_Bank05

#_05F2B9: LDA.w $0DF0,X
#_05F2BC: BNE .exit

#_05F2BE: LDA.b #$05
#_05F2C0: STA.w $0DF0,X

#_05F2C3: LDY.w $0D90,X

#_05F2C6: LDA.w .anim_step,Y
#_05F2C9: BPL .still_animating

#_05F2CB: STZ.w $0DD0,X

#_05F2CE: RTS

.still_animating
#_05F2CF: STA.w $0DC0,X

#_05F2D2: INC.w $0D90,X

.exit
#_05F2D5: RTS

;===================================================================================================

Sprite_SpawnDustCloud:
#_05F2D6: LDA.b #!SPRITE_F2
#_05F2D8: JSL Sprite_SpawnDynamically
#_05F2DC: BMI .exit

#_05F2DE: JSL GetRandomNumber
#_05F2E2: STA.b $0F

#_05F2E4: JSL GetRandomNumber

#_05F2E8: REP #$20

#_05F2EA: AND.w #$000F

#_05F2ED: SEC
#_05F2EE: SBC.w #$0008

#_05F2F1: CLC
#_05F2F2: ADC.b $00
#_05F2F4: STA.b $00

#_05F2F6: LDA.b $0F
#_05F2F8: AND.w #$000F

#_05F2FB: CLC
#_05F2FC: ADC.b $02
#_05F2FE: STA.b $02

#_05F300: SEP #$30

#_05F302: JSL Sprite_SetSpawnedCoordinates

#_05F306: LDA.b #$01
#_05F308: STA.w $0E80,Y

.exit
#_05F30B: RTS

;===================================================================================================

MedallionTablet_Main:
#_05F30C: JSL SpriteDraw_MedallionTablet
#_05F310: JSR Sprite_CheckIfActive_Bank05

#_05F313: LDA.w $037A
#_05F316: AND.b #$DF
#_05F318: STA.w $037A

#_05F31B: STZ.w $0D90,X

#_05F31E: JSL Sprite_CheckDamageToLink_same_layer_long
#_05F322: BCC .no_contact

#_05F324: JSL Sprite_CancelHookshot

#_05F328: STZ.b $5E

#_05F32A: JSL Sprite_RepelDash_long

#_05F32E: INC.w $0D90,X

.no_contact
#_05F331: JSL CheckIfLinkIsBusy
#_05F335: BCC .continue

#_05F337: RTS

.continue
#_05F338: LDA.w $0D80,X
#_05F33B: JSL JumpTableLocal
#_05F33F: dw MedallionTablet_WaitingToBeRead
#_05F341: dw MedallionTablet_WasteTime
#_05F343: dw MedallionTablet_Crumble
#_05F345: dw MedallionTablet_AmCrumbled

;===================================================================================================

EtherMessage:
.low
#_05F347: db $0B ; Message 010B
#_05F348: db $0C ; Message 010C

.high
#_05F349: db $01
#_05F34A: db $01

;===================================================================================================

BombosMessage:
.low
#_05F34B: db $0B ; Message 010B
#_05F34C: db $0D ; Message 010D

.high
#_05F34D: db $01
#_05F34E: db $01

;===================================================================================================

MedallionTablet_WaitingToBeRead:
#_05F34F: LDA.b $8A
#_05F351: CMP.b #$03
#_05F353: BEQ EtherTablet

;===================================================================================================

BombosTablet:
#_05F355: LDA.b $2F
#_05F357: BNE .exit

#_05F359: JSR Sprite_DirectionToFaceLink_Bank05

#_05F35C: CPY.b #$02
#_05F35E: BNE .exit

#_05F360: REP #$20

#_05F362: LDA.w $0FDA
#_05F365: CLC
#_05F366: ADC.w #$0010
#_05F369: CMP.b $20

#_05F36B: SEP #$30
#_05F36D: BCC .exit

#_05F36F: LDA.b $F4
#_05F371: BPL .check_for_book

#_05F373: LDA.l $7EF359
#_05F377: CMP.b #$02
#_05F379: BNE .check_for_book

#_05F37B: RTS

;---------------------------------------------------------------------------------------------------

.check_for_book
#_05F37C: LDA.w $0202
#_05F37F: CMP.b #$0F
#_05F381: BNE .not_book

#_05F383: LDY.b #$01

#_05F385: LDA.b $F4
#_05F387: AND.b #$40
#_05F389: BNE .pressed_y

.not_book
#_05F38B: LDA.b $F6
#_05F38D: BPL .exit

#_05F38F: LDY.b #$00

.pressed_y
#_05F391: CPY.b #$00
#_05F393: BEQ .show_message

#_05F395: STZ.w $0300

#_05F398: LDA.b #$20
#_05F39A: STA.w $037A

#_05F39D: STZ.w $012E

#_05F3A0: LDA.l $7EF359
#_05F3A4: BMI .show_message

#_05F3A6: CMP.b #$02
#_05F3A8: BCC .show_message

#_05F3AA: INC.w $0D80,X

#_05F3AD: JSL BombosTablet_StartCutscene

#_05F3B1: LDA.b #$40
#_05F3B3: STA.w $0DF0,X

.show_message
#_05F3B6: LDA.w BombosMessage_low,Y
#_05F3B9: XBA

#_05F3BA: LDA.w BombosMessage_high,Y
#_05F3BD: TAY

#_05F3BE: XBA
#_05F3BF: JSL Sprite_ShowMessageUnconditional

.exit
#_05F3C3: RTS

;===================================================================================================

EtherTablet:
#_05F3C4: LDA.b $2F
#_05F3C6: BNE .exit

#_05F3C8: JSR Sprite_DirectionToFaceLink_Bank05
#_05F3CB: CPY.b #$02
#_05F3CD: BNE .exit

#_05F3CF: LDA.w $0D00,X
#_05F3D2: CLC
#_05F3D3: ADC.b #$10
#_05F3D5: CMP.b $20
#_05F3D7: BCC .exit

#_05F3D9: LDA.b $F4
#_05F3DB: BPL .check_book

#_05F3DD: LDA.l $7EF359
#_05F3E1: CMP.b #$02
#_05F3E3: BNE .check_book

#_05F3E5: RTS

;---------------------------------------------------------------------------------------------------

.check_book
#_05F3E6: LDA.w $0202
#_05F3E9: CMP.b #$0F
#_05F3EB: BNE .not_book

#_05F3ED: LDY.b #$01

#_05F3EF: LDA.b $F4
#_05F3F1: AND.b #$40
#_05F3F3: BNE .pressed_y

.not_book
#_05F3F5: LDA.b $F6
#_05F3F7: BPL .exit

#_05F3F9: LDY.b #$00

.pressed_y
#_05F3FB: CPY.b #$00
#_05F3FD: BEQ .show_message

#_05F3FF: STZ.w $0300

#_05F402: LDA.b #$20
#_05F404: STA.w $037A

#_05F407: STZ.w $012E

#_05F40A: LDA.l $7EF359
#_05F40E: BMI .show_message

#_05F410: CMP.b #$02
#_05F412: BCC .show_message

#_05F414: INC.w $0D80,X

#_05F417: JSL EtherTablet_StartCutscene

#_05F41B: LDA.b #$40
#_05F41D: STA.w $0DF0,X

.show_message
#_05F420: LDA.w EtherMessage_low,Y
#_05F423: XBA

#_05F424: LDA.w EtherMessage_high,Y
#_05F427: TAY

#_05F428: XBA
#_05F429: JSL Sprite_ShowMessageUnconditional

.exit
#_05F42D: RTS

;===================================================================================================

MedallionTablet_WasteTime:
#_05F42E: LDA.w $0DF0,X
#_05F431: BNE .exit

#_05F433: INC.w $0D80,X

#_05F436: LDA.b #$80
#_05F438: STA.w $0DF0,X

.exit
#_05F43B: RTS

;===================================================================================================

MedallionTablet_Crumble:
#_05F43C: LDA.w $0DF0,X
#_05F43F: BNE .delay

#_05F441: INC.w $0D80,X

#_05F444: LDA.b #$F0
#_05F446: STA.w $0DF0,X

#_05F449: RTS

.delay
#_05F44A: CMP.b #$60
#_05F44C: BEQ .next_step

#_05F44E: CMP.b #$40
#_05F450: BEQ .next_step

#_05F452: CMP.b #$20
#_05F454: BNE .dont_step

.next_step
#_05F456: INC.w $0DC0,X

.dont_step
#_05F459: LDA.b $1A
#_05F45B: AND.b #$07
#_05F45D: BNE .exit

#_05F45F: JSR Sprite_SpawnDustCloud

.exit
#_05F462: RTS

;===================================================================================================

MedallionTablet_AmCrumbled:
#_05F463: LDA.b #$04
#_05F465: STA.w $0DC0,X

#_05F468: RTS

;===================================================================================================

Sprite_78_MrsSahasrahla:
#_05F469: PHB
#_05F46A: PHK
#_05F46B: PLB

#_05F46C: JSR .main

#_05F46F: PLB

#_05F470: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05F471: JSR SpriteDraw_MrsSahasrahla
#_05F474: JSR Sprite_CheckIfActive_Bank05
#_05F477: JSL Sprite_BehaveAsBarrier

#_05F47B: LDA.w $0D80,X
#_05F47E: JSL JumpTableLocal
#_05F482: dw MrsSahasrahla_Idle
#_05F484: dw MrsSahasrahla_BabbleOn
#_05F486: dw MrsSahasrahla_QuestionSanity
#_05F488: dw MrsSahasrahla_FindMyHubby

;===================================================================================================

MrsSahasrahla_Idle:
#_05F48A: LDA.l $7EF359
#_05F48E: CMP.b #$02
#_05F490: BCS MrsSahasrahla_DiscussMasterSword

; Message 0029
#_05F492: LDA.b #$29
#_05F494: LDY.b #$00
#_05F496: JSL Sprite_ShowSolicitedMessage
#_05F49A: BCC MrsSahasrahla_Animate

#_05F49C: INC.w $0D80,X

;===================================================================================================

MrsSahasrahla_Animate:
#_05F49F: LDA.b $1A
#_05F4A1: LSR A
#_05F4A2: LSR A
#_05F4A3: LSR A
#_05F4A4: LSR A
#_05F4A5: AND.b #$01
#_05F4A7: STA.w $0DC0,X

#_05F4AA: RTS

;===================================================================================================

MrsSahasrahla_DiscussMasterSword:
; Message 002C
#_05F4AB: LDA.b #$2C
#_05F4AD: LDY.b #$00
#_05F4AF: JSL Sprite_ShowSolicitedMessage

#_05F4B3: BRA MrsSahasrahla_Animate

;===================================================================================================

MrsSahasrahla_BabbleOn:
; Message 002A
#_05F4B5: LDA.b #$2A
#_05F4B7: LDY.b #$00
#_05F4B9: JSL Sprite_ShowMessageUnconditional

#_05F4BD: INC.w $0D80,X

#_05F4C0: RTS

;===================================================================================================

MrsSahasrahla_QuestionSanity:
#_05F4C1: LDA.w $1CE8
#_05F4C4: BNE .confirm_insanity

#_05F4C6: INC.w $0D80,X

; Message 002B
#_05F4C9: LDA.b #$2B
#_05F4CB: LDY.b #$00
#_05F4CD: JSL Sprite_ShowMessageUnconditional

#_05F4D1: RTS

;---------------------------------------------------------------------------------------------------

.confirm_insanity
; Message 002A
#_05F4D2: LDA.b #$2A
#_05F4D4: LDY.b #$00
#_05F4D6: JSL Sprite_ShowMessageUnconditional

#_05F4DA: RTS

;===================================================================================================

MrsSahasrahla_FindMyHubby:
; Message 002B
#_05F4DB: LDA.b #$2B
#_05F4DD: LDY.b #$00
#_05F4DF: JSL Sprite_ShowSolicitedMessage

#_05F4E3: BRA MrsSahasrahla_Animate

;===================================================================================================

pool SpriteDraw_MrsSahasrahla

.oam_groups
; group00
#_05F4E5: dw   0,  -5 : db $8E, $00, $00, $02
#_05F4ED: dw   0,   5 : db $28, $00, $00, $02

; group01
#_05F4F5: dw   0,  -4 : db $8E, $00, $00, $02
#_05F4FD: dw   0,   5 : db $28, $40, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_MrsSahasrahla:
#_05F505: LDA.b #$02
#_05F507: STA.b $06
#_05F509: STZ.b $07

#_05F50B: LDA.w $0DC0,X
#_05F50E: ASL A
#_05F50F: ASL A
#_05F510: ASL A
#_05F511: ASL A

#_05F512: ADC.b #.oam_groups>>0
#_05F514: STA.b $08

#_05F516: LDA.b #.oam_groups>>8
#_05F518: ADC.b #$00
#_05F51A: STA.b $09

#_05F51C: JSL Sprite_DrawMultiple_player_deferred

#_05F520: RTS

;===================================================================================================

SpritePrep_MagicShopAssistant:
#_05F521: PHB
#_05F522: PHK
#_05F523: PLB

#_05F524: JSR .main

#_05F527: PLB

#_05F528: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05F529: JSR MagicShopAssistant_SpawnPowder
#_05F52C: JSR MagicShopAssistant_SpawnGreenCauldron
#_05F52F: JSR MagicShopAssistant_SpawnBlueCauldron
#_05F532: JSR MagicShopAssistant_SpawnRedCauldron

#_05F535: INC.w $0BA0,X

#_05F538: RTS

;===================================================================================================

MagicShopAssistant_SpawnPowder:
#_05F539: LDA.w $0ABF
#_05F53C: BEQ .exit

#_05F53E: LDA.l $7EF344
#_05F542: CMP.b #$02
#_05F544: BEQ .exit

#_05F546: PHX

#_05F547: STZ.b $00

#_05F549: REP #$10

#_05F54B: LDX.w #$0212

#_05F54E: LDA.l $7EF000,X
#_05F552: AND.b #$80
#_05F554: STA.b $00

#_05F556: SEP #$30

#_05F558: PLX

#_05F559: LDA.b $00
#_05F55B: BEQ .exit

#_05F55D: LDA.b #!SPRITE_E9
#_05F55F: JSL Sprite_SpawnDynamically

#_05F563: LDA.b #$01
#_05F565: STA.w $0E80,Y

#_05F568: LDA.w $0D00,X
#_05F56B: SEC
#_05F56C: SBC.b #$00
#_05F56E: STA.w $0D00,Y

#_05F571: LDA.w $0D20,X
#_05F574: SBC.b #$00
#_05F576: STA.w $0D20,Y

#_05F579: LDA.w $0D10,X
#_05F57C: SEC
#_05F57D: SBC.b #$10
#_05F57F: STA.w $0D10,Y

#_05F582: LDA.w $0D30,X
#_05F585: SBC.b #$00
#_05F587: STA.w $0D30,Y

#_05F58A: JMP.w MagicShopAssistant_SpawnObject

.exit
#_05F58D: RTS

;===================================================================================================

MagicShopAssistant_SpawnGreenCauldron:
#_05F58E: LDA.b #!SPRITE_E9
#_05F590: JSL Sprite_SpawnDynamically

#_05F594: LDA.b #$02
#_05F596: STA.w $0E80,Y

#_05F599: LDA.w $0D00,X
#_05F59C: SEC
#_05F59D: SBC.b #$48
#_05F59F: STA.w $0D00,Y

#_05F5A2: LDA.w $0D20,X
#_05F5A5: SBC.b #$00
#_05F5A7: STA.w $0D20,Y

#_05F5AA: LDA.w $0D10,X
#_05F5AD: SEC
#_05F5AE: SBC.b #$28
#_05F5B0: STA.w $0D10,Y

#_05F5B3: LDA.w $0D30,X
#_05F5B6: SBC.b #$00
#_05F5B8: STA.w $0D30,Y

#_05F5BB: JMP.w MagicShopAssistant_SpawnObject

;===================================================================================================

UNREACHABLE_05F5BE:
#_05F5BE: RTS

;===================================================================================================

MagicShopAssistant_SpawnBlueCauldron:
#_05F5BF: LDA.b #!SPRITE_E9
#_05F5C1: JSL Sprite_SpawnDynamically

#_05F5C5: LDA.b #$03
#_05F5C7: STA.w $0E80,Y

#_05F5CA: LDA.w $0D00,X
#_05F5CD: SEC
#_05F5CE: SBC.b #$48
#_05F5D0: STA.w $0D00,Y

#_05F5D3: LDA.w $0D20,X
#_05F5D6: SBC.b #$00
#_05F5D8: STA.w $0D20,Y

#_05F5DB: LDA.w $0D10,X
#_05F5DE: CLC
#_05F5DF: ADC.b #$08
#_05F5E1: STA.w $0D10,Y

#_05F5E4: LDA.w $0D30,X
#_05F5E7: ADC.b #$00
#_05F5E9: STA.w $0D30,Y

#_05F5EC: JMP.w MagicShopAssistant_SpawnObject

;===================================================================================================

UNREACHABLE_05F5EF:
#_05F5EF: RTS

;===================================================================================================

MagicShopAssistant_SpawnRedCauldron:
#_05F5F0: LDA.b #!SPRITE_E9
#_05F5F2: JSL Sprite_SpawnDynamically

#_05F5F6: LDA.b #$04
#_05F5F8: STA.w $0E80,Y

#_05F5FB: LDA.w $0D00,X
#_05F5FE: SEC
#_05F5FF: SBC.b #$48
#_05F601: STA.w $0D00,Y

#_05F604: LDA.w $0D20,X
#_05F607: SBC.b #$00
#_05F609: STA.w $0D20,Y

#_05F60C: LDA.w $0D10,X
#_05F60F: SEC
#_05F610: SBC.b #$58
#_05F612: STA.w $0D10,Y

#_05F615: LDA.w $0D30,X
#_05F618: SBC.b #$00
#_05F61A: STA.w $0D30,Y

;===================================================================================================

MagicShopAssistant_SpawnObject:
#_05F61D: LDA.b #$03
#_05F61F: STA.w $0F60,Y

#_05F622: LDA.w $0CAA,Y
#_05F625: ORA.b #$20
#_05F627: STA.w $0CAA,Y

#_05F62A: RTS

;===================================================================================================

Sprite_E9_MagicShopAssistant:
#_05F62B: PHB
#_05F62C: PHK
#_05F62D: PLB

#_05F62E: JSR .main

#_05F631: PLB

#_05F632: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05F633: LDA.w $0E80,X
#_05F636: JSL JumpTableLocal
#_05F63A: dw MagicShopAssistant_Main
#_05F63C: dw Sprite_BagOfPowder
#_05F63E: dw Sprite_GreenCauldron
#_05F640: dw Sprite_BlueCauldron
#_05F642: dw Sprite_RedCauldron

;===================================================================================================

Sprite_BagOfPowder:
#_05F644: JSR SpriteDraw_BagOfPowder
#_05F647: JSR Sprite_CheckIfActive_Bank05

#_05F64A: JSL Sprite_BehaveAsBarrier
#_05F64E: JSL Sprite_CheckDamageToLink_same_layer_long
#_05F652: BCC .exit

#_05F654: LDA.b $F6
#_05F656: BPL .exit

#_05F658: PHX

#_05F659: JSL Link_CancelDash_long

#_05F65D: LDY.b #!ITEMGET_0D
#_05F65F: STZ.w $02E9
#_05F662: JSL Link_ReceiveItem

#_05F666: PLX
#_05F667: STZ.w $0DD0,X

.exit
#_05F66A: RTS

;===================================================================================================

pool SpriteDraw_BagOfPowder

.oam_groups
#_05F66B: dw   0,   0 : db $E6, $04, $00, $02
#_05F673: dw   0,   0 : db $E6, $04, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_BagOfPowder:
#_05F67B: LDA.b #$02
#_05F67D: STA.b $06
#_05F67F: STZ.b $07

#_05F681: LDA.b #.oam_groups>>0
#_05F683: STA.b $08

#_05F685: LDA.b #.oam_groups>>8
#_05F687: STA.b $09

#_05F689: JSL Sprite_DrawMultiple_player_deferred

#_05F68D: RTS

;===================================================================================================

Sprite_GreenCauldron:
#_05F68E: JSR SpriteDraw_GreenCauldron
#_05F691: JSR Sprite_CheckIfActive_Bank05
#_05F694: JSL Sprite_BehaveAsBarrier

#_05F698: LDA.w $0DF0,X
#_05F69B: BNE .exit_a

#_05F69D: JSR PotionCauldron_CheckBottles
#_05F6A0: BCS .have_bottles

; Message 004D
#_05F6A2: LDA.b #$4D
#_05F6A4: LDY.b #$00
#_05F6A6: JSL Sprite_ShowMessageOnContact
#_05F6AA: BCC .exit_a

#_05F6AC: JSR PotionCauldron_GoBeep

.exit_a
#_05F6AF: RTS

;---------------------------------------------------------------------------------------------------

.have_bottles
#_05F6B0: JSL Sprite_CheckDamageToLink_same_layer_long
#_05F6B4: BCC .exit_b

#_05F6B6: LDA.b $F6
#_05F6B8: BPL .exit_b

#_05F6BA: REP #$20

; 60 rupees
#_05F6BC: LDA.l $7EF360
#_05F6C0: CMP.w #60

#_05F6C3: SEP #$30
#_05F6C5: BCC .too_poor

#_05F6C7: JSL Find_EmptyBottle
#_05F6CB: BMI .no_space

#_05F6CD: LDA.b #!SFX3_1D
#_05F6CF: JSL SpriteSFX_QueueSFX3WithPan

#_05F6D3: LDA.b #$40
#_05F6D5: STA.w $0DF0,X

#_05F6D8: REP #$20

; take 60 rupees
#_05F6DA: LDA.l $7EF360
#_05F6DE: SEC
#_05F6DF: SBC.w #60
#_05F6E2: STA.l $7EF360

#_05F6E6: SEP #$30

#_05F6E8: LDY.b #!ITEMGET_2F
#_05F6EA: STZ.w $02E9
#_05F6ED: JSL Link_ReceiveItem

.exit_b
#_05F6F1: RTS

;---------------------------------------------------------------------------------------------------

.no_space
; Message 004E
#_05F6F2: LDA.b #$4E
#_05F6F4: LDY.b #$00
#_05F6F6: JSL Sprite_ShowMessageUnconditional

#_05F6FA: JMP.w PotionCauldron_GoBeep

.too_poor
#_05F6FD: JMP.w PotionCauldron_PovertyDisclaimer

;===================================================================================================

pool SpriteDraw_GreenCauldron

.oam_groups
#_05F700: dw   0,   0 : db $C0, $08, $00, $02
#_05F708: dw   8,  18 : db $30, $0A, $00, $00
#_05F710: dw  -1,  18 : db $22, $0A, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_GreenCauldron:
#_05F718: LDA.b #$03
#_05F71A: STA.b $06
#_05F71C: STZ.b $07

#_05F71E: LDA.b #.oam_groups>>0
#_05F720: STA.b $08

#_05F722: LDA.b #.oam_groups>>8
#_05F724: STA.b $09

#_05F726: JSL Sprite_DrawMultiple_player_deferred

#_05F72A: RTS

;===================================================================================================

Sprite_BlueCauldron:
#_05F72B: JSR SpriteDraw_BlueCauldron
#_05F72E: JSR Sprite_CheckIfActive_Bank05
#_05F731: JSL Sprite_BehaveAsBarrier

#_05F735: LDA.w $0DF0,X
#_05F738: BNE .exit_a

#_05F73A: JSR PotionCauldron_CheckBottles
#_05F73D: BCS .have_bottles

; Message 004D
#_05F73F: LDA.b #$4D
#_05F741: LDY.b #$00
#_05F743: JSL Sprite_ShowMessageOnContact
#_05F747: BCC .exit_a

#_05F749: JSR PotionCauldron_GoBeep

.exit_a
#_05F74C: RTS

;---------------------------------------------------------------------------------------------------

.have_bottles
#_05F74D: JSL Sprite_CheckDamageToLink_same_layer_long
#_05F751: BCC .exit_b

#_05F753: LDA.b $F6
#_05F755: BPL .exit_b

#_05F757: REP #$20

; 160 rupees
#_05F759: LDA.l $7EF360
#_05F75D: CMP.w #160

#_05F760: SEP #$30
#_05F762: BCC .too_poor

#_05F764: JSL Find_EmptyBottle
#_05F768: BMI .no_space

#_05F76A: LDA.b #!SFX3_1D
#_05F76C: JSL SpriteSFX_QueueSFX3WithPan

#_05F770: LDA.b #$40
#_05F772: STA.w $0DF0,X

#_05F775: REP #$20

; take 160 rupees
#_05F777: LDA.l $7EF360
#_05F77B: SEC
#_05F77C: SBC.w #160
#_05F77F: STA.l $7EF360

#_05F783: SEP #$30

#_05F785: LDY.b #!ITEMGET_30
#_05F787: STZ.w $02E9
#_05F78A: JSL Link_ReceiveItem

.exit_b
#_05F78E: RTS

;---------------------------------------------------------------------------------------------------

.no_space
; Message 004E
#_05F78F: LDA.b #$4E
#_05F791: LDY.b #$00
#_05F793: JSL Sprite_ShowMessageUnconditional

#_05F797: JMP.w PotionCauldron_GoBeep

.too_poor
#_05F79A: JMP.w PotionCauldron_PovertyDisclaimer

;===================================================================================================

pool SpriteDraw_BlueCauldron

.oam_groups
#_05F79D: dw   0,   0 : db $C0, $04, $00, $02
#_05F7A5: dw  13,  18 : db $30, $0A, $00, $00
#_05F7AD: dw   5,  18 : db $22, $0A, $00, $00
#_05F7B5: dw  -3,  18 : db $31, $0A, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_BlueCauldron:
#_05F7BD: LDA.b #$04
#_05F7BF: STA.b $06
#_05F7C1: STZ.b $07

#_05F7C3: LDA.b #.oam_groups>>0
#_05F7C5: STA.b $08

#_05F7C7: LDA.b #.oam_groups>>8
#_05F7C9: STA.b $09

#_05F7CB: JSL Sprite_DrawMultiple_player_deferred

#_05F7CF: RTS

;===================================================================================================

Sprite_RedCauldron:
#_05F7D0: JSR SpriteDraw_RedCauldron
#_05F7D3: JSR Sprite_CheckIfActive_Bank05
#_05F7D6: JSL Sprite_BehaveAsBarrier

#_05F7DA: LDA.w $0DF0,X
#_05F7DD: BNE .exit_a

#_05F7DF: JSR PotionCauldron_CheckBottles
#_05F7E2: BCS .have_bottles

; Message 004D
#_05F7E4: LDA.b #$4D
#_05F7E6: LDY.b #$00
#_05F7E8: JSL Sprite_ShowMessageOnContact
#_05F7EC: BCC .exit_a

#_05F7EE: JSR PotionCauldron_GoBeep

.exit_a
#_05F7F1: RTS

;---------------------------------------------------------------------------------------------------

.have_bottles
#_05F7F2: JSL Sprite_CheckDamageToLink_same_layer_long
#_05F7F6: BCC .exit_b

#_05F7F8: LDA.b $F6
#_05F7FA: BPL .exit_b

#_05F7FC: REP #$20

; 120 rupees
#_05F7FE: LDA.l $7EF360
#_05F802: CMP.w #120

#_05F805: SEP #$30
#_05F807: BCC PotionCauldron_PovertyDisclaimer

#_05F809: JSL Find_EmptyBottle
#_05F80D: BMI .no_space

#_05F80F: LDA.b #!SFX3_1D
#_05F811: JSL SpriteSFX_QueueSFX3WithPan

#_05F815: LDA.b #$40
#_05F817: STA.w $0DF0,X

#_05F81A: REP #$20

; take 120 rupees
#_05F81C: LDA.l $7EF360
#_05F820: SEC
#_05F821: SBC.w #120
#_05F824: STA.l $7EF360

#_05F828: SEP #$30

#_05F82A: LDY.b #!ITEMGET_2E
#_05F82C: STZ.w $02E9
#_05F82F: JSL Link_ReceiveItem

.exit_b
#_05F833: RTS

;---------------------------------------------------------------------------------------------------

.no_space
; Message 004E
#_05F834: LDA.b #$4E
#_05F836: LDY.b #$00
#_05F838: JSL Sprite_ShowMessageUnconditional

#_05F83C: BRA PotionCauldron_GoBeep

;===================================================================================================

PotionCauldron_PovertyDisclaimer:
; Message 017A
#_05F83E: LDA.b #$7A
#_05F840: LDY.b #$01
#_05F842: JSL Sprite_ShowMessageUnconditional

;===================================================================================================

PotionCauldron_GoBeep:
#_05F846: LDA.b #!SFX2_3C
#_05F848: JSL SpriteSFX_QueueSFX2WithPan

#_05F84C: RTS

;===================================================================================================

pool SpriteDraw_RedCauldron

.oam_groups
#_05F84D: dw   0,   0 : db $C0, $02, $00, $02
#_05F855: dw  13,  18 : db $30, $0A, $00, $00
#_05F85D: dw   5,  18 : db $02, $0A, $00, $00
#_05F865: dw  -3,  18 : db $31, $0A, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_RedCauldron:
#_05F86D: LDA.b #$04
#_05F86F: STA.b $06
#_05F871: STZ.b $07

#_05F873: LDA.b #.oam_groups>>0
#_05F875: STA.b $08

#_05F877: LDA.b #.oam_groups>>8
#_05F879: STA.b $09

#_05F87B: JSL Sprite_DrawMultiple_player_deferred

#_05F87F: RTS

;===================================================================================================

PotionCauldron_CheckBottles:
#_05F880: LDA.l $7EF35C
#_05F884: ORA.l $7EF35D
#_05F888: ORA.l $7EF35E
#_05F88C: ORA.l $7EF35F

#_05F890: CMP.b #$02

#_05F892: RTS

;===================================================================================================

MagicShopAssistant_Main:
#_05F893: JSL SpriteDraw_Shopkeeper
#_05F897: JSR Sprite_CheckIfActive_Bank05
#_05F89A: JSL Sprite_BehaveAsBarrier

#_05F89E: JSL CheckIfLinkIsBusy
#_05F8A2: BCS .exit

#_05F8A4: LDA.w $0D80,X
#_05F8A7: BEQ .not_healing

#_05F8A9: LDA.b #$A0
#_05F8AB: STA.l $7EF372

#_05F8AF: STZ.w $0D80,X

.not_healing
#_05F8B2: LDA.b $1A
#_05F8B4: LSR A
#_05F8B5: LSR A
#_05F8B6: LSR A
#_05F8B7: LSR A
#_05F8B8: LSR A
#_05F8B9: AND.b #$01
#_05F8BB: STA.w $0DC0,X

#_05F8BE: LDA.l $7EF35C
#_05F8C2: CMP.b #$02
#_05F8C4: BCS .own_bottle

#_05F8C6: LDA.l $7EF35D
#_05F8CA: CMP.b #$02
#_05F8CC: BCS .own_bottle

#_05F8CE: LDA.l $7EF35E
#_05F8D2: CMP.b #$02
#_05F8D4: BCS .own_bottle

#_05F8D6: LDA.l $7EF35F
#_05F8DA: CMP.b #$02
#_05F8DC: BCS .own_bottle

#_05F8DE: LDA.w $0ABF
#_05F8E1: BEQ .own_bottle

; Message 004B
#_05F8E3: LDA.b #$4B
#_05F8E5: LDY.b #$00
#_05F8E7: JSL Sprite_ShowSolicitedMessage

;---------------------------------------------------------------------------------------------------

.trigger_heal
#_05F8EB: BCC .exit

#_05F8ED: INC.w $0D80,X

.exit
#_05F8F0: RTS

;---------------------------------------------------------------------------------------------------

.own_bottle
; Message 004C
#_05F8F1: LDA.b #$4C
#_05F8F3: LDY.b #$00
#_05F8F5: JSL Sprite_ShowSolicitedMessage

#_05F8F9: BRA .trigger_heal

;===================================================================================================

pool SpriteDraw_Shopkeeper

.oam_groups
; group00
#_05F8FB: dw   0,  -8 : db $00, $0C, $00, $02
#_05F903: dw   0,   0 : db $10, $0C, $00, $02

; group01
#_05F90B: dw   0,  -8 : db $00, $0C, $00, $02
#_05F913: dw   0,   0 : db $10, $4C, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Shopkeeper:
#_05F91B: PHB
#_05F91C: PHK
#_05F91D: PLB

#_05F91E: LDA.b #$02
#_05F920: STA.b $06
#_05F922: STZ.b $07

#_05F924: LDA.w $0DC0,X

#_05F927: ASL A ; x16
#_05F928: ASL A
#_05F929: ASL A
#_05F92A: ASL A

#_05F92B: ADC.b #.oam_groups>>0
#_05F92D: STA.b $08

#_05F92F: LDA.b #.oam_groups>>8
#_05F931: ADC.b #$00
#_05F933: STA.b $09

#_05F935: JSL Sprite_DrawMultiple_player_deferred
#_05F939: JSL SpriteDraw_Shadow_long

#_05F93D: PLB

#_05F93E: RTL

;===================================================================================================

Sprite_DirectionToFaceLink_Bank05:
#_05F93F: JSL Sprite_DirectionToFaceLink_long

#_05F943: RTS

;===================================================================================================

Sprite_IsRightOfLink_Bank05:
#_05F944: JSL Sprite_IsRightOfLink_long

#_05F948: RTS

;===================================================================================================

Sprite_IsBelowLink_Bank05:
#_05F949: JSL Sprite_IsBelowLink_long

#_05F94D: RTS

;===================================================================================================

Sprite_CheckIfActive_Bank05:
#_05F94E: LDA.w $0DD0,X
#_05F951: CMP.b #$09
#_05F953: BNE .inactive

#Sprite_CheckIfActivePermissive_Bank05:
#_05F955: LDA.w $0FC1
#_05F958: BNE .inactive

#_05F95A: LDA.b $11
#_05F95C: BNE .inactive

#_05F95E: LDA.w $0CAA,X
#_05F961: BMI .active

#_05F963: LDA.w $0F00,X
#_05F966: BEQ .active

.inactive
#_05F968: PLA
#_05F969: PLA

.active
#_05F96A: RTS

;===================================================================================================

pool Sprite_CheckIfRecoiling_Bank05

.masks
#_05F96B: db $03, $01, $00, $00, $0C, $03

pool off

;---------------------------------------------------------------------------------------------------

Sprite_CheckIfRecoiling_Bank05:
#_05F971: LDA.w $0EA0,X
#_05F974: BEQ .exit

#_05F976: AND.b #$7F
#_05F978: BEQ .recoil_over

#_05F97A: LDA.w $0D40,X
#_05F97D: PHA

#_05F97E: LDA.w $0D50,X
#_05F981: PHA

#_05F982: DEC.w $0EA0,X
#_05F985: BNE .still_recoiling

#_05F987: LDA.w $0F40,X
#_05F98A: CLC
#_05F98B: ADC.b #$20
#_05F98D: CMP.b #$40
#_05F98F: BCS .no_adjust

#_05F991: LDA.w $0F30,X
#_05F994: CLC
#_05F995: ADC.b #$20
#_05F997: CMP.b #$40
#_05F999: BCC .still_recoiling

.no_adjust
#_05F99B: LDA.b #$90
#_05F99D: STA.w $0EA0,X

.still_recoiling
#_05F9A0: LDA.w $0EA0,X
#_05F9A3: BMI .no_movement

#_05F9A5: LSR A
#_05F9A6: LSR A
#_05F9A7: TAY

#_05F9A8: LDA.b $1A
#_05F9AA: AND.w .masks,Y
#_05F9AD: BNE .no_movement

#_05F9AF: LDA.w $0F30,X
#_05F9B2: STA.w $0D40,X

#_05F9B5: LDA.w $0F40,X
#_05F9B8: STA.w $0D50,X

#_05F9BB: LDA.w $0CD2,X
#_05F9BE: BMI .handle_movement

#_05F9C0: JSR Sprite_CheckTileCollision_Bank05
#_05F9C3: AND.b #$0F
#_05F9C5: BEQ .handle_movement

#_05F9C7: CMP.b #$04
#_05F9C9: BCS .stop_vertical_movement

.stop_horizontal_movement
#_05F9CB: STZ.w $0F40,X
#_05F9CE: STZ.w $0D50,X

#_05F9D1: BRA .movement_stopped

.stop_vertical_movement
#_05F9D3: STZ.w $0F30,X
#_05F9D6: STZ.w $0D40,X

.movement_stopped
#_05F9D9: BRA .no_movement

.handle_movement
#_05F9DB: JSR Sprite_Move_XY_Bank05

.no_movement
#_05F9DE: PLA
#_05F9DF: STA.w $0D50,X

#_05F9E2: PLA
#_05F9E3: STA.w $0D40,X

#_05F9E6: PLA
#_05F9E7: PLA

.exit
#_05F9E8: RTS

.recoil_over
#_05F9E9: STZ.w $0EA0,X

#_05F9EC: RTS

;===================================================================================================

Sprite_Move_XY_Bank05:
#_05F9ED: JSR Sprite_Move_X_Bank05
#_05F9F0: JSR Sprite_Move_Y_Bank05

#_05F9F3: RTS

;===================================================================================================

Sprite_Move_X_Bank05:
#_05F9F4: TXA
#_05F9F5: CLC
#_05F9F6: ADC.b #$10
#_05F9F8: TAX

#_05F9F9: JSR Sprite_Move_Y_Bank05

#_05F9FC: LDX.w $0FA0

#_05F9FF: RTS

;===================================================================================================

Sprite_Move_Y_Bank05:
#_05FA00: LDA.w $0D40,X
#_05FA03: BEQ .exit

#_05FA05: ASL A
#_05FA06: ASL A
#_05FA07: ASL A
#_05FA08: ASL A

#_05FA09: CLC
#_05FA0A: ADC.w $0D60,X
#_05FA0D: STA.w $0D60,X

#_05FA10: LDA.w $0D40,X
#_05FA13: PHP

#_05FA14: LSR A
#_05FA15: LSR A
#_05FA16: LSR A
#_05FA17: LSR A

#_05FA18: LDY.b #$00

#_05FA1A: PLP
#_05FA1B: BPL .positive_velocity

#_05FA1D: ORA.b #$F0
#_05FA1F: DEY

.positive_velocity
#_05FA20: ADC.w $0D00,X
#_05FA23: STA.w $0D00,X

#_05FA26: TYA
#_05FA27: ADC.w $0D20,X
#_05FA2A: STA.w $0D20,X

.exit
#_05FA2D: RTS

;===================================================================================================

Sprite_Move_Z_Bank05:
#_05FA2E: LDA.w $0F80,X
#_05FA31: ASL A
#_05FA32: ASL A
#_05FA33: ASL A
#_05FA34: ASL A

#_05FA35: CLC
#_05FA36: ADC.w $0F90,X
#_05FA39: STA.w $0F90,X

#_05FA3C: LDA.w $0F80,X
#_05FA3F: PHP

#_05FA40: LSR A
#_05FA41: LSR A
#_05FA42: LSR A
#_05FA43: LSR A

#_05FA44: PLP
#_05FA45: BPL .positive_velocity

#_05FA47: ORA.b #$F0

.positive_velocity
#_05FA49: ADC.w $0F70,X
#_05FA4C: STA.w $0F70,X

#_05FA4F: RTS

;===================================================================================================

Sprite_PrepOAMCoord_Bank05:
#_05FA50: JSL Sprite_PrepOAMCoord_long
#_05FA54: BCC .onscreen

#_05FA56: PLA
#_05FA57: PLA

.onscreen
#_05FA58: RTS

;===================================================================================================

TutorialGuard_ShowMessageOnContact:
#_05FA59: STA.w $1CF0
#_05FA5C: STY.w $1CF1

#_05FA5F: LDA.w $0E40,X
#_05FA62: PHA

#_05FA63: LDA.b #$80
#_05FA65: STA.w $0E40,X

#_05FA68: LDA.w $0F60,X
#_05FA6B: PHA

#_05FA6C: LDA.b #$07
#_05FA6E: STA.w $0F60,X

#_05FA71: JSL Sprite_CheckDamageToLink_same_layer_long

#_05FA75: PLA
#_05FA76: STA.w $0F60,X

#_05FA79: PLA
#_05FA7A: STA.w $0E40,X

#_05FA7D: BCC EXIT_05FAA1

#_05FA7F: PHP
#_05FA80: JSL Sprite_CancelHookshot
#_05FA84: PLP

#_05FA85: STZ.w $0372
#_05FA88: STZ.b $5E

#_05FA8A: LDA.b $4D
#_05FA8C: BNE EXIT_05FAA1

;===================================================================================================

Sprite_ShowMessageMinimal:
#_05FA8E: STZ.w $0223
#_05FA91: STZ.w $1CD8

#_05FA94: LDA.b #$02
#_05FA96: STA.b $11

#_05FA98: LDA.b $10
#_05FA9A: STA.w $010C

#_05FA9D: LDA.b #$0E
#_05FA9F: STA.b $10

;---------------------------------------------------------------------------------------------------

#EXIT_05FAA1
#_05FAA1: RTL

;===================================================================================================

Overworld_ReadTileAttribute:
#_05FAA2: REP #$30

#_05FAA4: LDA.b $00
#_05FAA6: SEC
#_05FAA7: SBC.w $0708
#_05FAAA: AND.w $070A
#_05FAAD: ASL A
#_05FAAE: ASL A
#_05FAAF: ASL A
#_05FAB0: STA.b $06

#_05FAB2: LDA.b $02
#_05FAB4: SEC
#_05FAB5: SBC.w $070C
#_05FAB8: AND.w $070E
#_05FABB: ORA.b $06
#_05FABD: TAX

#_05FABE: LDA.l $7E2000,X
#_05FAC2: TAX

#_05FAC3: LDA.l OverworldTileAttributeTable,X

#_05FAC7: SEP #$30

#_05FAC9: RTL

;===================================================================================================

Sprite_3A_MagicBat:
#_05FACA: PHB
#_05FACB: PHK
#_05FACC: PLB

#_05FACD: JSR .main

#_05FAD0: PLB

#_05FAD1: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05FAD2: LDA.w $0EB0,X
#_05FAD5: BEQ MagicBat

;---------------------------------------------------------------------------------------------------

#_05FAD7: JSL Sprite3A_MagicBatLightning

#_05FADB: RTS

;===================================================================================================

MagicBat:
#_05FADC: LDA.w $0D80,X
#_05FADF: BEQ .hidden

#_05FAE1: JSL SpriteDraw_SingleLarge_long

.hidden
#_05FAE5: JSR Sprite_CheckIfActive_Bank05
#_05FAE8: JSR Sprite_Move_XY_Bank05
#_05FAEB: JSR Sprite_Move_Z_Bank05

#_05FAEE: LDA.w $0D80,X
#_05FAF1: JSL JumpTableLocal
#_05FAF5: dw MagicBat_Dormant
#_05FAF7: dw MagicBat_Ascend
#_05FAF9: dw MagicBat_Attack
#_05FAFB: dw MagicBat_EnhanceMagic
#_05FAFD: dw MagicBat_Retreat

;===================================================================================================

MagicBat_Dormant:
#_05FAFF: LDA.l $7EF37B
#_05FB03: CMP.b #$01
#_05FB05: BCS .exit

#_05FB07: JSL Sprite_CheckDamageToLink_same_layer_long
#_05FB0B: BCC .exit

; Only checks for powder existing while touching.
; The dust doesn't actually have to hit the altar.
#_05FB0D: LDY.b #$04

.next_ancilla
#_05FB0F: LDA.w $0C4A,Y
#_05FB12: CMP.b #!ANCILLA_1A
#_05FB14: BEQ .powder

#_05FB16: DEY
#_05FB17: BPL .next_ancilla

#_05FB19: RTS

.powder
#_05FB1A: JSL Sprite_SpawnSuperficialBombBlast

#_05FB1E: LDA.b #!SFX1_0D
#_05FB20: JSL SpriteSFX_QueueSFX1WithPan

#_05FB24: INC.w $0D80,X

#_05FB27: LDA.b #$14
#_05FB29: STA.w $0D90,X

#_05FB2C: LDA.b #$01
#_05FB2E: STA.w $02E4

#_05FB31: LDA.w $0F50,X
#_05FB34: ORA.b #$20
#_05FB36: STA.w $0F50,X

.exit
#_05FB39: RTS

;===================================================================================================

pool MagicBat_Ascend

.speed_x
#_05FB3A: db  -8,   7

pool off

;---------------------------------------------------------------------------------------------------

MagicBat_Ascend:
#_05FB3C: LDA.w $0DF0,X
#_05FB3F: BNE .exit

#_05FB41: DEC.w $0D90,X

#_05FB44: LDA.w $0D90,X
#_05FB47: STA.w $0DF0,X

#_05FB4A: CMP.b #$01
#_05FB4C: BEQ .speak

#_05FB4E: LSR A
#_05FB4F: LSR A
#_05FB50: STA.w $0F80,X

#_05FB53: LDA.w $0D90,X
#_05FB56: AND.b #$01
#_05FB58: TAY

#_05FB59: LDA.w .speed_x,Y
#_05FB5C: CLC
#_05FB5D: ADC.w $0D50,X
#_05FB60: STA.w $0D50,X

#_05FB63: LDA.w $0DC0,X
#_05FB66: EOR.b #$01
#_05FB68: STA.w $0DC0,X

.exit
#_05FB6B: RTS

;---------------------------------------------------------------------------------------------------

.speak
; Message 010E
#_05FB6C: LDA.b #$0E
#_05FB6E: LDY.b #$01
#_05FB70: JSL Sprite_ShowMessageUnconditional

#_05FB74: INC.w $0D80,X

#_05FB77: STZ.w $0DC0,X
#_05FB7A: STZ.w $0F80,X
#_05FB7D: STZ.w $0D50,X

#_05FB80: LDA.b #$FF
#_05FB82: STA.w $0DF0,X

#_05FB85: RTS

;===================================================================================================

pool MagicBat_Attack

.palette
#_05FB86: db $0A, $04, $02, $04, $02, $0A, $04, $02

pool off

;---------------------------------------------------------------------------------------------------

MagicBat_Attack:
#_05FB8E: LDA.w $0DF0,X
#_05FB91: BNE .delay

#_05FB93: INC.w $0D80,X

#_05FB96: LDA.b #$40
#_05FB98: STA.w $0E00,X

; It's guaranteed to be 0 here.
#_05FB9B: LDA.w $0DF0,X

.delay
#_05FB9E: LSR A
#_05FB9F: AND.b #$07
#_05FBA1: TAY

#_05FBA2: LDA.w $0F50,X
#_05FBA5: AND.b #$F1
#_05FBA7: ORA.w .palette,Y
#_05FBAA: STA.w $0F50,X

#_05FBAD: LDA.w $0DF0,X
#_05FBB0: CMP.b #$F0
#_05FBB2: BNE .exit

#_05FBB4: JSL MagicBat_SpawnLightning

.exit
#_05FBB8: RTS

;===================================================================================================

MagicBat_EnhanceMagic:
#_05FBB9: LDA.w $0E00,X
#_05FBBC: BNE .delay

; Message 010F
#_05FBBE: LDA.b #$0F
#_05FBC0: LDY.b #$01
#_05FBC2: JSL Sprite_ShowMessageUnconditional

#_05FBC6: PHX

#_05FBC7: JSL Palette_RestoreBGAndHUD

#_05FBCB: INC.b $15

#_05FBCD: PLX

#_05FBCE: INC.w $0D80,X

#_05FBD1: LDA.b #$01
#_05FBD3: STA.l $7EF37B

#_05FBD7: JSL RefreshIcon_long

#_05FBDB: RTS

.delay
#_05FBDC: CMP.b #$10
#_05FBDE: BNE .exit

#_05FBE0: STA.w $0FF9

.exit
#_05FBE3: RTS

;===================================================================================================

MagicBat_Retreat:
#_05FBE4: JSL Sprite_SpawnDummyDeathAnimation

#_05FBE8: STZ.w $0DD0,X

#_05FBEB: STZ.w $02E4

#_05FBEE: RTS

;===================================================================================================

Sprite_3B_BonkItem:
#_05FBEF: PHB
#_05FBF0: PHK
#_05FBF1: PLB

#_05FBF2: JSR .main

#_05FBF5: PLB

#_05FBF6: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05FBF7: LDA.w $0DC0,X
#_05FBFA: JSL JumpTableLocal
#_05FBFE: dw Sprite_BookOfMudora
#_05FC00: dw Sprite_BonkKey
#_05FC02: dw Sprite_LumberjackTree

;===================================================================================================

Sprite_BonkKey:
#_05FC04: JSL Sprite_DrawThinAndTall_long
#_05FC08: JSR Sprite_CheckIfActive_Bank05
#_05FC0B: JSL Sprite_CheckDamageToLink_same_layer_long
#_05FC0F: BCC .no_contact

#_05FC11: LDA.b #$03
#_05FC13: STA.w $0D80,X

.no_contact
#_05FC16: JSR Sprite_Move_XY_Bank05

#_05FC19: DEC.w $0F80,X

#_05FC1C: JSR Sprite_Move_Z_Bank05

#_05FC1F: LDA.w $0F70,X
#_05FC22: BPL .continue

#_05FC24: STZ.w $0D40,X
#_05FC27: STZ.w $0F70,X

#_05FC2A: LDA.w $0F80,X
#_05FC2D: EOR.b #$FF
#_05FC2F: INC A

#_05FC30: LSR A
#_05FC31: LSR A
#_05FC32: STA.w $0F80,X

#_05FC35: AND.b #$FE
#_05FC37: BEQ .continue

#_05FC39: LDA.b #!SFX3_14
#_05FC3B: JSL SpriteSFX_QueueSFX3WithPan

.continue
#_05FC3F: LDA.w $0D80,X
#_05FC42: JSL JumpTableLocal
#_05FC46: dw BonkKey_Undisturbed
#_05FC48: dw BonkItem_KnockedDown
#_05FC4A: dw BonkItem_Land
#_05FC4C: dw BonkKey_GrantKey

;===================================================================================================

BonkKey_Undisturbed:
#_05FC4E: REP #$20

#_05FC50: LDA.w $0FD8
#_05FC53: SEC
#_05FC54: SBC.b $22

#_05FC56: CLC
#_05FC57: ADC.w #$0010

#_05FC5A: CMP.w #$0021
#_05FC5D: BCS .remain_stable

#_05FC5F: LDA.w $0FDA
#_05FC62: SEC
#_05FC63: SBC.b $20

#_05FC65: CLC
#_05FC66: ADC.w #$0018

#_05FC69: CMP.w #$0029
#_05FC6C: BCS .remain_stable

#_05FC6E: LDA.w $011A
#_05FC71: ORA.w $011C
#_05FC74: BEQ .remain_stable

#_05FC76: INC.w $0D80,X

.remain_stable
#_05FC79: SEP #$30

#_05FC7B: RTS

;===================================================================================================

pool BonkKey_GrantKey

.room_flag
#_05FC7C: db $40
#_05FC7D: db $20

pool off

;---------------------------------------------------------------------------------------------------

BonkKey_GrantKey:
#_05FC7E: LDA.l $7EF36F
#_05FC82: INC A
#_05FC83: STA.l $7EF36F

#_05FC87: STZ.w $0DD0,X

#_05FC8A: LDA.w $0CBA,X
#_05FC8D: TAY

#_05FC8E: LDA.w $0403
#_05FC91: ORA.w .room_flag,Y
#_05FC94: STA.w $0403

#_05FC97: LDA.b #!SFX3_2F
#_05FC99: JSL SpriteSFX_QueueSFX3WithPan

#_05FC9D: RTS

;===================================================================================================

Sprite_BookOfMudora:
#_05FC9E: JSL SpriteDraw_SingleLarge_long
#_05FCA2: JSR Sprite_CheckIfActive_Bank05
#_05FCA5: JSL Sprite_CheckDamageToLink_same_layer_long
#_05FCA9: BCC .no_contact

#_05FCAB: LDA.b #$03
#_05FCAD: STA.w $0D80,X

.no_contact
#_05FCB0: JSR Sprite_Move_XY_Bank05

#_05FCB3: DEC.w $0F80,X

#_05FCB6: JSR Sprite_Move_Z_Bank05

#_05FCB9: LDA.w $0F70,X

#_05FCBC: BPL .continue

#_05FCBE: STZ.w $0D40,X
#_05FCC1: STZ.w $0F70,X

#_05FCC4: LDA.w $0F80,X
#_05FCC7: EOR.b #$FF
#_05FCC9: INC A
#_05FCCA: LSR A
#_05FCCB: LSR A
#_05FCCC: STA.w $0F80,X

#_05FCCF: AND.b #$FE
#_05FCD1: BEQ .continue

#_05FCD3: LDA.b #!SFX2_21
#_05FCD5: JSL SpriteSFX_QueueSFX2WithPan

.continue
#_05FCD9: LDA.w $0D80,X
#_05FCDC: JSL JumpTableLocal
#_05FCE0: dw BookOfMudora_WaitForBonk
#_05FCE2: dw BonkItem_KnockedDown
#_05FCE4: dw BonkItem_Land
#_05FCE6: dw BookOfMudora_GrantLiterature

;===================================================================================================

BookOfMudora_WaitForBonk:
; Have to be facing up
#_05FCE8: LDA.w $002F
#_05FCEB: BNE .fail

#_05FCED: REP #$20

#_05FCEF: LDA.w $0FD8
#_05FCF2: SEC
#_05FCF3: SBC.b $22

#_05FCF5: CLC
#_05FCF6: ADC.w #$0027

#_05FCF9: CMP.w #$002F
#_05FCFC: BCS .fail

#_05FCFE: LDA.w $0FDA
#_05FD01: SEC
#_05FD02: SBC.b $20

#_05FD04: CLC
#_05FD05: ADC.w #$0028

#_05FD08: CMP.w #$002E
#_05FD0B: BCS .fail

#_05FD0D: LDA.w $011A
#_05FD10: ORA.w $011C
#_05FD13: BEQ .fail

#_05FD15: INC.w $0D80,X

.fail
#_05FD18: SEP #$30

#_05FD1A: RTS

;===================================================================================================

BonkItem_KnockedDown:
#_05FD1B: LDA.b #$20
#_05FD1D: STA.w $0F80,X

#_05FD20: LDA.b #$FB
#_05FD22: STA.w $0D40,X

#_05FD25: INC.w $0D80,X

#_05FD28: LDA.b #!SFX3_1B
#_05FD2A: STA.w $012F

#_05FD2D: RTS

;===================================================================================================

BonkItem_Land:
#_05FD2E: LDA.w $0F70,X
#_05FD31: BNE .exit

#_05FD33: LDA.w $00EE
#_05FD36: STA.w $0F20,X

.exit
#_05FD39: RTS

;===================================================================================================

BookOfMudora_GrantLiterature:
#_05FD3A: PHX

#_05FD3B: JSL Link_CancelDash_long

#_05FD3F: LDY.b #!ITEMGET_1D
#_05FD41: STZ.w $02E9
#_05FD44: JSL Link_ReceiveItem

#_05FD48: PLX

#_05FD49: STZ.w $0DD0,X

#_05FD4C: RTS

;===================================================================================================

Sprite_LumberjackTree:
#_05FD4D: LDA.b #$8F
#_05FD4F: STA.w $0E40,X

#_05FD52: LDA.b #$47
#_05FD54: STA.w $0F60,X

#_05FD57: JSR SpriteDraw_LumberjackTree

#_05FD5A: JSR Sprite_CheckIfActive_Bank05
#_05FD5D: JSL Sprite_CheckDamageToLink_same_layer_long
#_05FD61: BCC .no_contact

#_05FD63: PHX

#_05FD64: JSL Sprite_CancelHookshot

#_05FD68: STZ.b $5E

#_05FD6A: JSL Sprite_RepelDash_long

#_05FD6E: PLX

.no_contact
#_05FD6F: JSR Sprite_Move_XY_Bank05

#_05FD72: DEC.w $0F80,X

#_05FD75: JSR Sprite_Move_Z_Bank05

#_05FD78: LDA.w $0F70,X
#_05FD7B: BPL .continue

#_05FD7D: STZ.w $0F70,X

#_05FD80: LDA.w $0F80,X
#_05FD83: EOR.b #$FF
#_05FD85: INC A

#_05FD86: LSR A
#_05FD87: LSR A
#_05FD88: STA.w $0F80,X

.continue
#_05FD8B: LDA.w $0D80,X
#_05FD8E: JSL JumpTableLocal
#_05FD92: dw LumberjackTree_WaitForBonk
#_05FD94: dw LumberjackTree_ExplodeViolently
#_05FD96: dw LumberjackTree_DispersionOfLeaves

;===================================================================================================

LumberjackTree_WaitForBonk:
#_05FD98: STZ.w $0E80,X

#_05FD9B: REP #$20

#_05FD9D: LDA.w $0FD8
#_05FDA0: SEC
#_05FDA1: SBC.b $22

#_05FDA3: CLC
#_05FDA4: ADC.w #$0018

#_05FDA7: CMP.w #$0041
#_05FDAA: BCS .fail

#_05FDAC: LDA.w $0FDA
#_05FDAF: SEC
#_05FDB0: SBC.b $20

#_05FDB2: CLC
#_05FDB3: ADC.w #$0020

#_05FDB6: CMP.w #$0051
#_05FDB9: BCS .fail

#_05FDBB: SEP #$30

#_05FDBD: LDA.w $011A
#_05FDC0: ORA.w $011C
#_05FDC3: BEQ .fail

#_05FDC5: INC.w $0D80,X

#_05FDC8: LDA.b #$14
#_05FDCA: STA.w $0F80,X

.fail
#_05FDCD: SEP #$30

#_05FDCF: RTS

;===================================================================================================

LumberjackTree_ExplodeViolently:
#_05FDD0: LDA.w $0F70,X
#_05FDD3: BNE .exit

#_05FDD5: INC.w $0D80,X

#_05FDD8: LDA.b #!SFX3_1B
#_05FDDA: STA.w $012F

#_05FDDD: LDA.b #$FC
#_05FDDF: STA.w $0D50,X
#_05FDE2: STA.w $0D40,X

#_05FDE5: JSR LumberjackTree_SpawnLeaves

#_05FDE8: LDA.b #$05
#_05FDEA: STA.w $0D50,Y
#_05FDED: STA.w $0D40,Y

#_05FDF0: JSR LumberjackTree_SpawnLeaves

#_05FDF3: LDA.b #$05
#_05FDF5: STA.w $0D50,Y

#_05FDF8: LDA.b #$FC
#_05FDFA: STA.w $0D40,Y

#_05FDFD: JSR LumberjackTree_SpawnLeaves

#_05FE00: LDA.b #$FC
#_05FE02: STA.w $0D50,Y

#_05FE05: LDA.b #$04
#_05FE07: STA.w $0D40,Y

.exit
#_05FE0A: RTS

;===================================================================================================

LumberjackTree_DispersionOfLeaves:
#_05FE0B: LDA.w $0DF0,X
#_05FE0E: BNE .exit

#_05FE10: LDA.b #$08
#_05FE12: STA.w $0DF0,X

#_05FE15: LDA.w $0E80,X
#_05FE18: CMP.b #$06
#_05FE1A: BNE .delay

#_05FE1C: STZ.w $0DD0,X

.delay
#_05FE1F: INC.w $0E80,X

.exit
#_05FE22: RTS

;===================================================================================================

pool SpriteDraw_LumberjackTree

.tree_char
#_05FE23: db $00, $31, $02, $31, $02, $71, $00, $71
#_05FE2B: db $20, $31, $22, $31, $22, $71, $20, $71
#_05FE33: db $04, $31, $06, $31, $06, $71, $04, $71
#_05FE3B: db $24, $31, $26, $31, $26, $71, $24, $71

.offset_x
#_05FE43: db  10,  22,  30,   1,  34,   5,  13,  29
#_05FE4B: db   0,  17,  27,  44,  15,  33,  18,  26

.offset_y
#_05FE53: db   0,   4,   2,   7,  10,  16,  24,  23
#_05FE5B: db  34,  35,  30,  31,  46,  42,  10,  11

.char
#_05FE63: db $08, $08, $28, $28, $2A, $2A

.prop
#_05FE69: db $31, $71, $31, $71, $31, $71

pool off

;---------------------------------------------------------------------------------------------------

; What the...?
SpriteDraw_LumberjackTree:
#_05FE6F: JSR Sprite_PrepOAMCoord_Bank05

#_05FE72: LDA.w $0FA8
#_05FE75: SEC
#_05FE76: SBC.b #$20
#_05FE78: STA.w $0FA8

#_05FE7B: LDA.w $0FA9
#_05FE7E: SEC
#_05FE7F: SBC.b #$20
#_05FE81: STA.w $0FA9

#_05FE84: PHX

#_05FE85: LDA.w $0E80,X
#_05FE88: BNE .exploding

;---------------------------------------------------------------------------------------------------

#_05FE8A: REP #$10

#_05FE8C: LDX.b $90

#_05FE8E: LDA.b #$03
#_05FE90: STA.b $00

#_05FE92: LDA.w $0FA8

.next_oam_entry
#_05FE95: STA.b $00,X
#_05FE97: STA.b $10,X
#_05FE99: STA.b $20,X
#_05FE9B: STA.b $30,X

#_05FE9D: CLC
#_05FE9E: ADC.b #$10

#_05FEA0: INX ; +4
#_05FEA1: INX
#_05FEA2: INX
#_05FEA3: INX

#_05FEA4: DEC.b $00
#_05FEA6: BPL .next_oam_entry

;---------------------------------------------------------------------------------------------------

#_05FEA8: LDX.b $90

#_05FEAA: LDA.w $0FA9
#_05FEAD: STA.b $01,X
#_05FEAF: STA.b $05,X
#_05FEB1: STA.b $09,X
#_05FEB3: STA.b $0D,X

#_05FEB5: CLC
#_05FEB6: ADC.b #$10
#_05FEB8: STA.b $11,X
#_05FEBA: STA.b $15,X
#_05FEBC: STA.b $19,X
#_05FEBE: STA.b $1D,X

#_05FEC0: CLC
#_05FEC1: ADC.b #$10
#_05FEC3: STA.b $21,X
#_05FEC5: STA.b $25,X
#_05FEC7: STA.b $29,X
#_05FEC9: STA.b $2D,X

#_05FECB: CLC
#_05FECC: ADC.b #$10
#_05FECE: STA.b $31,X
#_05FED0: STA.b $35,X
#_05FED2: STA.b $39,X
#_05FED4: STA.b $3D,X

;---------------------------------------------------------------------------------------------------

#_05FED6: REP #$30

#_05FED8: LDY.w #$0000

.next_tree_char
#_05FEDB: LDA.w .tree_char,Y
#_05FEDE: STA.b $02,X

#_05FEE0: INX ; +4
#_05FEE1: INX
#_05FEE2: INX
#_05FEE3: INX

#_05FEE4: INY
#_05FEE5: INY

#_05FEE6: CPY.w #$0020
#_05FEE9: BCC .next_tree_char

#_05FEEB: SEP #$30

#_05FEED: PLX

#_05FEEE: LDA.b #$0F
#_05FEF0: LDY.b #$02
#_05FEF2: JSL Sprite_CorrectOAMEntries_long

#_05FEF6: RTS

;---------------------------------------------------------------------------------------------------

.exploding
#_05FEF7: LDA.w $0E80,X
#_05FEFA: DEC A
#_05FEFB: STA.b $00
#_05FEFD: STZ.b $01

#_05FEFF: REP #$10

#_05FF01: LDX.b $90
#_05FF03: LDY.w #$000F

.next_leaf_object
#_05FF06: LDA.w $0FA8
#_05FF09: CLC
#_05FF0A: ADC.w .offset_x,Y
#_05FF0D: STA.b $00,X

#_05FF0F: INX

#_05FF10: LDA.w $0FA9
#_05FF13: CLC
#_05FF14: ADC.w .offset_y,Y
#_05FF17: STA.b $00,X

#_05FF19: INX

#_05FF1A: PHY

#_05FF1B: LDY.b $00

#_05FF1D: LDA.w .char,Y
#_05FF20: STA.b $00,X

#_05FF22: INX

#_05FF23: LDA.w .prop,Y
#_05FF26: STA.b $00,X

#_05FF28: INX

#_05FF29: PLY
#_05FF2A: DEY
#_05FF2B: BPL .next_leaf_object

;---------------------------------------------------------------------------------------------------

#_05FF2D: SEP #$30

#_05FF2F: PLX

#_05FF30: LDA.b #$0F
#_05FF32: LDY.b #$02

#_05FF34: JSL Sprite_CorrectOAMEntries_long

#_05FF38: RTS

;===================================================================================================

LumberjackTree_SpawnLeaves:
#_05FF39: LDA.b #!SPRITE_3B
#_05FF3B: JSL Sprite_SpawnDynamically

#_05FF3F: LDA.b #$02
#_05FF41: STA.w $0DC0,Y

#_05FF44: LDA.w $0F80,X
#_05FF47: STA.w $0F80,Y

#_05FF4A: LDA.b #$01
#_05FF4C: STA.w $0E80,Y

#_05FF4F: LDA.b #$02
#_05FF51: STA.w $0D80,Y

#_05FF54: LDA.b #$08
#_05FF56: STA.w $0DF0,Y

#_05FF59: JSL Sprite_SetSpawnedCoordinates

#_05FF5D: RTS

;===================================================================================================

Sprite_3C_KidInKak:
#_05FF5E: PHB
#_05FF5F: PHK
#_05FF60: PLB

#_05FF61: JSR .main

#_05FF64: PLB

#_05FF65: RTL

;---------------------------------------------------------------------------------------------------

.main
#_05FF66: JSR SpriteDraw_KidInKak
#_05FF69: JSR Sprite_CheckIfActive_Bank05

#_05FF6C: JSL Sprite_BehaveAsBarrier
#_05FF70: JSL Sprite_TrackBodyToHead
#_05FF74: JSR Sprite_DirectionToFaceLink_Bank05

#_05FF77: TYA
#_05FF78: EOR.b #$03
#_05FF7A: STA.w $0EB0,X

#_05FF7D: LDA.l $7EF3C7
#_05FF81: CMP.b #$03
#_05FF83: BCS .dont_discuss_quest

; Mssage 0145
#_05FF85: LDA.b #$45
#_05FF87: LDY.b #$01
#_05FF89: JSL Sprite_ShowSolicitedMessage

#_05FF8D: BCC .exit

#_05FF8F: LDA.b #$02
#_05FF91: STA.l $7EF3C7

.exit
#_05FF95: RTS

;---------------------------------------------------------------------------------------------------

.dont_discuss_quest
; Mssage 0146
#_05FF96: LDA.b #$46
#_05FF98: LDY.b #$01
#_05FF9A: JSL Sprite_ShowSolicitedMessage

#_05FF9E: RTS

;===================================================================================================

pool SpriteDraw_KidInKak

.oam_groups:
; group00
#_05FF9F: dw   0,  -8 : db $82, $08, $00, $02
#_05FFA7: dw   0,   0 : db $AA, $0A, $00, $02

; group01
#_05FFAF: dw   0,  -8 : db $82, $08, $00, $02
#_05FFB7: dw   0,   0 : db $AA, $0A, $00, $02

; group02
#_05FFBF: dw   0,  -8 : db $80, $48, $00, $02
#_05FFC7: dw   0,   0 : db $AA, $0A, $00, $02

; group03
#_05FFCF: dw   0,  -8 : db $80, $08, $00, $02
#_05FFD7: dw   0,   0 : db $AA, $0A, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_KidInKak:
#_05FFDF: LDA.b #$02
#_05FFE1: STA.b $06
#_05FFE3: STZ.b $07

#_05FFE5: LDA.w $0DE0,X

#_05FFE8: ASL A ; x16
#_05FFE9: ASL A
#_05FFEA: ASL A
#_05FFEB: ASL A

#_05FFEC: ADC.b #.oam_groups>>0
#_05FFEE: STA.b $08

#_05FFF0: LDA.b #.oam_groups>>8
#_05FFF2: ADC.b #$00
#_05FFF4: STA.b $09

#_05FFF6: JSL Sprite_DrawMultiple_player_deferred
#_05FFFA: JSL SpriteDraw_Shadow_long

#_05FFFE: RTS

;===================================================================================================
; FREE ROM: 0x01
;===================================================================================================
NULL_05FFFF:
#_05FFFF: db $FF

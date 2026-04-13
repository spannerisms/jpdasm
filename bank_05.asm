org $058000

;===================================================================================================

pool SpawnBeeSparkle

.offset_low
|058000| db  -4,   0,   4,   8

.offset_high
|058004| db  -1,   0,   0,   0

endpool

;---------------------------------------------------------------------------------------------------

SpawnBeeSparkle:
|058008| LDA.b $1A
|05800A| AND.b #$03
|05800C| BNE .exit

|05800E| PHX
|05800F| TXY

|058010| JSL GetRandomNumber
|058014| AND.b #$03
|058016| TAX

|058017| LDA.l .offset_low,X
|05801B| STA.b $00

|05801D| LDA.l .offset_high,X
|058021| STA.b $01

|058023| JSL GetRandomNumber
|058027| AND.b #$03
|058029| TAX

|05802A| LDA.l .offset_low,X
|05802E| STA.b $02

|058030| LDA.l .offset_high,X
|058034| STA.b $03

;---------------------------------------------------------------------------------------------------

|058036| LDX.b #$1D

.next_slot
|058038| LDA.l $7FF800,X
|05803C| BEQ .empty_slot

|05803E| DEX
|05803F| BPL .next_slot

|058041| INX

;---------------------------------------------------------------------------------------------------

.empty_slot
|058042| LDA.b #$12 ; GARNISH 12
|058044| STA.l $7FF800,X
|058048| STA.w $0FB4

|05804B| LDA.w $0D10,Y
|05804E| CLC
|05804F| ADC.b $00
|058051| STA.l $7FF83C,X

|058055| LDA.w $0D30,Y
|058058| ADC.b $01
|05805A| STA.l $7FF878,X

|05805E| LDA.w $0D00,Y
|058061| CLC
|058062| ADC.b $02
|058064| STA.l $7FF81E,X

|058068| LDA.w $0D20,Y
|05806B| ADC.b $03
|05806D| STA.l $7FF85A,X

|058071| TYA
|058072| STA.l $7FF92C,X

|058076| LDA.b #$0F
|058078| STA.l $7FF90E,X

|05807C| TXY
|05807D| PLX

.exit
|05807E| RTL

;===================================================================================================

Sprite_70_KingHelmasaurFireball_bounce:
|05807F| JSL Sprite_70_KingHelmasaurFireball

|058083| RTS

;===================================================================================================

pool WallCannon

.speed_x ; bleeds into next
|058084| db    0,   0

.speed_y ; bleeds into next
|058086| db  -16,  16

.anim
|058088| db    0,   0,   2,   2

.flip
|05808C| db  $40, $00, $00, $80

endpool

;---------------------------------------------------------------------------------------------------

Sprite_66_WallCannonVerticalLeft:
Sprite_67_WallCannonVerticalRight:
Sprite_68_WallCannonHorizontalTop:
Sprite_69_WallCannonHorizontalBottom:
|058090| LDY.w $0DE0,X

|058093| LDA.w $0E10,X
|058096| CMP.b #$01

|058098| LDA.w WallCannon.anim,Y
|05809B| ADC.b #$00
|05809D| STA.w $0DC0,X

|0580A0| LDA.w $0F50,X
|0580A3| AND.b #$BF
|0580A5| ORA.w WallCannon.flip,Y
|0580A8| STA.w $0F50,X

|0580AB| JSL SpriteDraw_SingleLarge_long
|0580AF| JSR CheckIfActive_bank05

|0580B2| LDA.w $0DF0,X
|0580B5| BNE .direction_change_delay

|0580B7| LDA.b #$80
|0580B9| STA.w $0DF0,X

|0580BC| LDA.w $0D90,X
|0580BF| EOR.b #$01
|0580C1| STA.w $0D90,X

;---------------------------------------------------------------------------------------------------

.direction_change_delay
|0580C4| LDY.w $0D90,X

|0580C7| LDA.w WallCannon.speed_x,Y
|0580CA| STA.w $0D50,X

|0580CD| LDA.w WallCannon.speed_y,Y
|0580D0| STA.w $0D40,X

|0580D3| JSR MoveSpriteXY_bank05

|0580D6| TXA
|0580D7| ASL A
|0580D8| ASL A
|0580D9| CLC
|0580DA| ADC.b $1A

|0580DC| AND.b #$1F
|0580DE| BNE .dont_reset_firing_delay

|0580E0| LDA.b #$10
|0580E2| STA.w $0E10,X

;---------------------------------------------------------------------------------------------------

.dont_reset_firing_delay
|0580E5| LDA.w $0E10,X
|0580E8| CMP.b #$01
|0580EA| BEQ .cleared_for_fire

|0580EC| RTS

.cleared_for_fire
|0580ED| LDA.w $0F00,X
|0580F0| BNE .exit

|0580F2| LDA.b #$6B ; SPRITE 6B
|0580F4| LDY.b #$0D
|0580F6| JSL SpawnSpriteDynamically.slot_limited
|0580FA| BMI .exit

;---------------------------------------------------------------------------------------------------

|0580FC| LDA.b #$07 ; SFX3.07
|0580FE| JSL QueueSpriteSFX3WithPan

|058102| LDA.b #$01
|058104| STA.w $0DB0,Y
|058107| STA.w $0DC0,Y

|05810A| LDA.w $0DE0,X

|05810D| PHX
|05810E| TAX

;---------------------------------------------------------------------------------------------------

|05810F| LDA.b $00
|058111| CLC
|058112| ADC.w .offset_x_low,X
|058115| STA.w $0D10,Y

|058118| LDA.b $01
|05811A| ADC.w .offset_x_high,X
|05811D| STA.w $0D30,Y

|058120| LDA.b $02
|058122| CLC
|058123| ADC.w .offset_y_low,X
|058126| STA.w $0D00,Y

|058129| LDA.b $03
|05812B| ADC.w .offset_y_high,X
|05812E| STA.w $0D20,Y

|058131| LDA.w .speed_x,X
|058134| STA.w $0D50,Y

|058137| LDA.w .speed_y,X
|05813A| STA.w $0D40,Y

|05813D| LDA.w $0E40,Y
|058140| AND.b #$F0
|058142| ORA.b #$01
|058144| STA.w $0E40,Y

|058147| LDA.w $0E60,Y
|05814A| ORA.b #$47
|05814C| STA.w $0E60,Y

|05814F| LDA.w $0CAA,Y
|058152| ORA.b #$44
|058154| STA.w $0CAA,Y

|058157| LDA.b #$20
|058159| STA.w $0DF0,Y

|05815C| PLX

.exit
|05815D| RTS

;---------------------------------------------------------------------------------------------------

; projectile properties based on sprite ID of parent
.offset_x_low
|05815E| db   8,  -8,   0,   0

.offset_x_high
|058162| db   0,  -1,   0,   0

.offset_y_low
|058166| db   0,   0,   8,  -8

.offset_y_high
|05816A| db   0,   0,   0,  -1

;---------------------------------------------------------------------------------------------------

.speed_x
|05816E| db  24, -24,   0,   0

.speed_y
|058172| db   0,   0,  24, -24

;===================================================================================================

pool SpritePrep_ArcheryGame

.pos_x
|058176| db $00, $40, $80, $C0, $30, $60, $90, $C0

.pos_y
|05817E| db $00, $4F, $4F, $4F, $5A, $5A, $5A, $5A

.subtype
|058186| db $00, $01, $01, $01, $02, $02, $02, $02

;---------------------------------------------------------------------------------------------------

.speed_x
|05818E| db  -8,  12

;---------------------------------------------------------------------------------------------------

.hitbox
|058190| db $1C, $15

endpool

;---------------------------------------------------------------------------------------------------

SpritePrep_ArcheryGame:
|058192| PHB
|058193| PHK
|058194| PLB

|058195| STZ.w $0B88

|058198| LDA.w $0D00,X
|05819B| SBC.b #$08
|05819D| STA.w $0D00,X

;---------------------------------------------------------------------------------------------------

|0581A0| PHX
|0581A1| LDX.b #$07

.next_sprite
|0581A3| LDA.b #$65 ; SPRITE 65
|0581A5| STA.w $0E20,X

|0581A8| LDA.b #$09
|0581AA| STA.w $0DD0,X

|0581AD| JSL LoadSpriteProperties

|0581B1| LDA.b $23
|0581B3| STA.w $0D30,X

|0581B6| LDA.w .pos_x,X
|0581B9| STA.w $0D10,X

|0581BC| LDA.b $21
|0581BE| STA.w $0D20,X

|0581C1| LDA.w .pos_y,X
|0581C4| STA.w $0D00,X

|0581C7| LDA.w .subtype,X
|0581CA| STA.w $0D90,X

|0581CD| DEC A
|0581CE| STA.w $0DC0,X

|0581D1| TAY

|0581D2| LDA.w .speed_x,Y
|0581D5| STA.w $0D50,X

|0581D8| LDA.w .hitbox,Y
|0581DB| STA.w $0F60,X

|0581DE| LDA.b #$0D
|0581E0| STA.w $0F50,X

|0581E3| LDA.b $EE
|0581E5| STA.w $0F20,X

|0581E8| JSL GetRandomNumber
|0581EC| STA.w $0E80,X

|0581EF| DEX
|0581F0| BNE .next_sprite

;---------------------------------------------------------------------------------------------------

|0581F2| PLX

|0581F3| INC.w $0BA0,X

|0581F6| LDA.l $7EF377
|0581FA| STA.w $0E30,X

|0581FD| PLB

|0581FE| RTL

;===================================================================================================

Sprite_65_ArcheryGame:
|0581FF| LDA.w $0E30,X
|058202| STA.l $7EF377

|058206| LDA.w $0D90,X
|058209| JSL JumpTableLocal
|05820D| dw ArcheryGameHost
|05820F| dw OctorokTarget
|058211| dw HandTarget

;===================================================================================================

pool ArcheryGameHost

.anim_step
|058213| db $03, $04, $03, $02

endpool

;---------------------------------------------------------------------------------------------------

ArcheryGameHost:
|058217| LDA.w $0B99
|05821A| BNE .game_in_progress

|05821C| INC.w $0B9A

.game_in_progress
|05821F| JSL SpriteDraw_ArcheryGameHost
|058223| JSR CheckIfActive_bank05

|058226| LDA.b #$00
|058228| STA.w $0F60,X

;---------------------------------------------------------------------------------------------------

|05822B| JSL CheckDamageToLink_same_layer_long
|05822F| BCC .no_contact

|058231| JSL AbortMovement

|058235| STZ.b $5E

|058237| JSL CancelDash_long

;---------------------------------------------------------------------------------------------------

.no_contact
|05823B| LDA.w $0DF0,X
|05823E| BEQ .not_drumming

|058240| AND.b #$07
|058242| BNE .skip_a_beat

|058244| LDA.b #$11 ; SFX2.11
|058246| JSL QueueSpriteSFX2WithPan

.skip_a_beat
|05824A| LDA.w $0DF0,X
|05824D| AND.b #$04
|05824F| LSR A
|058250| LSR A
|058251| BRA .adjust_animation

;---------------------------------------------------------------------------------------------------

.not_drumming
|058253| LDA.w $0D80,X
|058256| BEQ .in_idle_state

|058258| LDA.b $1A

|05825A| LSR A ; /32
|05825B| LSR A
|05825C| LSR A
|05825D| LSR A
|05825E| LSR A

|05825F| AND.b #$03

;---------------------------------------------------------------------------------------------------

.in_idle_state
|058261| TAY
|058262| LDA.w .anim_step,Y

;---------------------------------------------------------------------------------------------------

.adjust_animation
|058265| STA.w $0DC0,X

; Why didn't this use the jump table routine?
|058268| LDA.w $0D80,X

|05826B| CMP.b #$02
|05826D| BEQ ArcheryGameHost_ProctorGame

|05826F| CMP.b #$01
|058271| BEQ ArcheryGameHost_VerifyPlay

|058273| CMP.b #$03
|058275| BNE ArcheryGameHost_Idle

;===================================================================================================

|058277| LDA.w $1CE8
|05827A| BNE ArcheryGameHost_GameRejected

|05827C| LDA.b #$01
|05827E| STA.w $0D80,X

|058281| BRA ArcheryGameHost_TakeMoney

;===================================================================================================

ArcheryGameHost_Idle:
|058283| LDA.b #$0A
|058285| STA.w $0F60,X

|058288| JSL CheckDamageToLink_same_layer_long
|05828C| BCC .exit

|05828E| LDA.b $F6
|058290| BPL .exit

|058292| LDA.b #$83 ; MESSAGE 0083
|058294| JSR ArcheryGameHost_ShowMessage

|058297| INC.w $0D80,X

.exit
|05829A| RTS

;===================================================================================================

ArcheryGameHost_VerifyPlay:
|05829B| LDA.w $1CE8
|05829E| BNE ArcheryGameHost_GameRejected

;===================================================================================================

ArcheryGameHost_TakeMoney:
|0582A0| REP #$20

|0582A2| LDA.l $7EF360
|0582A6| CMP.w #$0014 ; 20 rupees

|0582A9| SEP #$20
|0582AB| BCC ArcheryGameHost_InformLinkOfHisPoverty

|0582AD| STZ.w $0EB0,X

|0582B0| STZ.w $0B88

|0582B3| INC.w $0D80,X

|0582B6| LDA.b #$84 ; MESSAGE 0084
|0582B8| BRA ArcheryGameHost_ShowMessage

;===================================================================================================

ArcheryGameHost_GameRejected:
|0582BA| STZ.w $0D80,X

|0582BD| LDA.b #$85 ; MESSAGE 0085

;===================================================================================================

ArcheryGameHost_ShowMessage:
|0582BF| STA.w $1CF0
|0582C2| STZ.w $1CF1
|0582C5| JSL ShowMessageMinimal

|0582C9| STZ.w $0DF0,X

|0582CC| RTS

;===================================================================================================

ArcheryGameHost_InformLinkOfHisPoverty:
|0582CD| STZ.w $0D80,X

|0582D0| LDA.b #$85 ; MESSAGE 0085
|0582D2| BRA ArcheryGameHost_ShowMessage

;===================================================================================================

ArcheryGameHost_ProctorGame:
|0582D4| LDA.w $0EB0,X
|0582D7| BNE .arrows_on_display

|0582D9| LDA.b #$05
|0582DB| STA.w $0B99

|0582DE| LDA.b #$02
|0582E0| JSL PrepAndSetForcedYItem

|0582E4| LDA.b #$27
|0582E6| STA.w $0E00,X

|0582E9| REP #$20

|0582EB| LDA.l $7EF360
|0582EF| SEC
|0582F0| SBC.w #$0014 ; take 20 rupees
|0582F3| STA.l $7EF360

|0582F7| SEP #$20

|0582F9| INC.w $0EB0,X

;---------------------------------------------------------------------------------------------------

.arrows_on_display
|0582FC| LDA.b #$34
|0582FE| JSL AllocateOAMInRegionA

|058302| JSR GetScreenCoordinates_bank05

|058305| LDY.w $0B99
|058308| STY.b $0D

|05830A| LDA.w $0E00,X
|05830D| BEQ .dont_update_credits_display

|05830F| LSR A
|058310| LSR A
|058311| LSR A
|058312| TAY

|058313| LDA.w .arrow_credits,Y
|058316| STA.b $0D

;---------------------------------------------------------------------------------------------------

.dont_update_credits_display
|058318| PHX

|058319| LDA.b $0D
|05831B| ASL A
|05831C| CLC
|05831D| ADC.b #$07
|05831F| TAX

;---------------------------------------------------------------------------------------------------

|058320| LDY.b #$00

.next_arrow_draw
|058322| LDA.b $00
|058324| CLC
|058325| ADC.b #$EC
|058327| ADC.w .offset_x,X
|05832A| STA.b ($90),Y

|05832C| LDA.b $02
|05832E| CLC
|05832F| ADC.b #$D0
|058331| ADC.w .offset_y,X

|058334| INY
|058335| STA.b ($90),Y

|058337| LDA.w .char,X
|05833A| INY
|05833B| STA.b ($90),Y

|05833D| LDA.w .props,X
|058340| INY
|058341| STA.b ($90),Y

|058343| PHY

|058344| TYA
|058345| LSR A
|058346| LSR A
|058347| TAY

|058348| LDA.b #$00
|05834A| STA.b ($92),Y

|05834C| PLY
|05834D| INY

|05834E| DEX
|05834F| BPL .next_arrow_draw

;---------------------------------------------------------------------------------------------------

|058351| PLX

|058352| LDA.w $0B99
|058355| ORA.w $0F10,X

; [HARDCODED] ancilla slot checks
|058358| ORA.w $0C4A
|05835B| ORA.w $0C4B
|05835E| ORA.w $0C4C
|058361| ORA.w $0C4D
|058364| ORA.w $0C4E
|058367| BNE .exit

|058369| LDA.b #$0A
|05836B| STA.w $0F60,X

|05836E| JSL CheckDamageToLink_same_layer_long
|058372| BCC .exit

|058374| LDA.b $F6
|058376| BPL .exit

|058378| LDA.b #$86 ; MESSAGE 0086
|05837A| JSR ArcheryGameHost_ShowMessage

|05837D| INC.w $0D80,X

.exit
|058380| RTS

;---------------------------------------------------------------------------------------------------

.arrow_credits
|058381| db $05
|058382| db $04
|058383| db $03
|058384| db $02
|058385| db $01
|058386| db $00

;---------------------------------------------------------------------------------------------------

.offset_x
|058387| db   0,   0
|058389| db   0,   0
|05838B| db  48,  48
|05838D| db  48,  48
|05838F| db   8,   8
|058391| db  16,  16
|058393| db  24,  24
|058395| db  32,  32
|058397| db  40,  40

;---------------------------------------------------------------------------------------------------

.offset_y
|058399| db  -8,   0
|05839B| db   8,  16
|05839D| db  -8,   0
|05839F| db   8,  16
|0583A1| db   0,   8
|0583A3| db   0,   8
|0583A5| db   0,   8
|0583A7| db   0,   8
|0583A9| db   0,   8

;---------------------------------------------------------------------------------------------------

.char
|0583AB| db $2B, $3B
|0583AD| db $3B, $2B
|0583AF| db $2B, $3B
|0583B1| db $3B, $2B
|0583B3| db $63, $73
|0583B5| db $63, $73
|0583B7| db $63, $73
|0583B9| db $63, $73
|0583BB| db $63, $73

;---------------------------------------------------------------------------------------------------

.props
|0583BD| db $33, $33
|0583BF| db $B3, $B3
|0583C1| db $73, $73
|0583C3| db $F3, $F3
|0583C5| db $32, $32
|0583C7| db $32, $32
|0583C9| db $32, $32
|0583CB| db $32, $32
|0583CD| db $32, $32

;===================================================================================================

ArcheryGamePrizes:
|0583CF| db  4,  8, 16, 32, 64
|0583D4| db 99, 99, 99, 99, 99

;===================================================================================================

OctorokTarget:
|0583D9| LDA.w $0ED0,X
|0583DC| CMP.b #$05
|0583DE| BCC .prize_fine

|0583E0| LDA.b #$06
|0583E2| STA.w $0DA0,X

;---------------------------------------------------------------------------------------------------

.prize_fine
|0583E5| LDA.w $0E40,X
|0583E8| AND.b #$E0
|0583EA| STA.w $0E40,X

|0583ED| LDA.w $0E10,X
|0583F0| BNE .arrow_sticking

|0583F2| LDA.w $0E80,X
|0583F5| LSR A
|0583F6| LSR A
|0583F7| LSR A

;---------------------------------------------------------------------------------------------------

.arrow_sticking
|0583F8| AND.b #$04
|0583FA| ASL A
|0583FB| ASL A
|0583FC| ASL A
|0583FD| ASL A
|0583FE| STA.b $00

|058400| LDA.w $0F50,X
|058403| AND.b #$BF
|058405| ORA.b $00
|058407| STA.w $0F50,X

|05840A| LDA.w $0FDA
|05840D| SEC
|05840E| SBC.b #$03
|058410| STA.w $0FDA

|058413| JSL SpriteDraw_SingleLarge_long

;---------------------------------------------------------------------------------------------------

|058417| LDA.w $0E10,X
|05841A| BEQ .no_arrow_sticking

|05841C| PHA

|05841D| LDA.w $0E40,X
|058420| ORA.b #$05
|058422| STA.w $0E40,X

|058425| PLA
|058426| CMP.b #$60
|058428| BNE .dont_payout

|05842A| LDA.b $11
|05842C| BNE .dont_payout

|05842E| LDA.b #$70
|058430| STA.w $0DF0 ; [HARDCODED] sprite slot

|058433| LDY.w $0DA0,X

|058436| LDA.b #$00
|058438| XBA
|058439| LDA.w ArcheryGamePrizes-1,Y

|05843C| REP #$20

|05843E| CLC
|05843F| ADC.l $7EF360
|058443| STA.l $7EF360

|058447| SEP #$20

.dont_payout
|058449| JSR DrawSharpShooterWinnings

.no_arrow_sticking
|05844C| BRA ArcheryGameTarget

;===================================================================================================

HandTarget:
|05844E| LDA.w $0E40,X
|058451| AND.b #$E0
|058453| STA.w $0E40,X

|058456| LDA.w $0FDA
|058459| CLC
|05845A| ADC.b #$03
|05845C| STA.w $0FDA

|05845F| JSL SpriteDraw_SingleLarge_long

;===================================================================================================
; Shared between both types of targets
;===================================================================================================
ArcheryGameTarget:
|058463| JSR CheckIfActive_bank05

|058466| LDA.w $0EE0,X
|058469| DEC A
|05846A| BNE .no_sfx

|05846C| LDA.b #$3C ; SFX2.3C
|05846E| STA.w $012E

.no_sfx
|058471| INC.w $0E80,X

|058474| JSR MoveSpriteX_bank05

|058477| LDA.w $0E00,X
|05847A| BNE .exit_a

|05847C| LDA.w $0DF0,X
|05847F| STA.w $0BA0,X
|058482| BNE .reset_location

;---------------------------------------------------------------------------------------------------

|058484| JSR CheckSpriteTileCollision_bank05
|058487| BEQ .exit_a

|058489| LDA.b #$10
|05848B| STA.w $0DF0,X
|05848E| STZ.w $0E10,X

.exit_a
|058491| RTS

;---------------------------------------------------------------------------------------------------

; where the sprite spawns to when it moves off screen
.respawn_location
|058492| db $E8, $08

;---------------------------------------------------------------------------------------------------

.reset_location
|058494| CMP.b #$01
|058496| BNE .exit_b

|058498| LDY.w $0DC0,X

|05849B| LDA.w .respawn_location,Y
|05849E| STA.w $0D10,X

|0584A1| LDA.b $23
|0584A3| STA.w $0D30,X

|0584A6| LDA.b #$20
|0584A8| STA.w $0E00,X

|0584AB| STZ.w $0ED0,X

.exit_b
|0584AE| RTS

;===================================================================================================

pool DrawSharpShooterWinnings

.offset_x
|0584AF| db  -8,  -8,   0,   8,  16

.offset_y
|0584B4| db -24, -16, -20, -20, -20

.char
|0584B9| db $0B, $1B, $B6, $02, $30

.prop
|0584BE| db $38, $38, $34, $35, $35

.tens_digit
|0584C3| db $12, $32, $31, $03, $22, $33

.ones_digit
|0584C9| db $7C, $7C, $22, $02, $12, $33

endpool

;---------------------------------------------------------------------------------------------------

DrawSharpShooterWinnings:
|0584CF| JSR GetScreenCoordinates_bank05

|0584D2| LDA.w $0DA0,X
|0584D5| STA.b $06

|0584D7| PHX

;---------------------------------------------------------------------------------------------------

|0584D8| LDX.b #$04
|0584DA| LDY.b #$04

.next_object
|0584DC| LDA.b $00
|0584DE| CLC
|0584DF| ADC.w .offset_x,X
|0584E2| STA.b ($90),Y

|0584E4| LDA.b $02
|0584E6| CLC
|0584E7| ADC.w .offset_y,X

|0584EA| INY
|0584EB| STA.b ($90),Y

|0584ED| CPX.b #$04
|0584EF| BNE .not_ones_place

|0584F1| PHX

|0584F2| LDX.b $06
|0584F4| LDA.w .ones_digit-1,X

|0584F7| PLX

|0584F8| BRA .write_char

.not_ones_place
|0584FA| CPX.b #$03
|0584FC| BNE .not_tens_place

|0584FE| PHX

|0584FF| LDX.b $06
|058501| LDA.w .tens_digit-1,X

|058504| PLX

|058505| BRA .write_char

.not_tens_place
|058507| LDA.w .char,X

.write_char
|05850A| INY
|05850B| STA.b ($90),Y

|05850D| CMP.b #$7C
|05850F| INY

|058510| LDA.w .prop,X
|058513| BCC .nonempty

|058515| AND.b #$FE

.nonempty
|058517| STA.b ($90),Y

|058519| PHY

|05851A| TYA
|05851B| LSR A
|05851C| LSR A
|05851D| TAY

|05851E| LDA.b #$00
|058520| STA.b ($92),Y

|058522| PLY
|058523| INY

|058524| DEX
|058525| BPL .next_object

;---------------------------------------------------------------------------------------------------

|058527| PLX

|058528| JSL DrawSpriteDistress

|05852C| RTS

;===================================================================================================

pool Sprite_63_DebirandoPit

.drag_low
|05852D| db -1,  1

.drag_high
|05852F| db -1,  0

endpool

;---------------------------------------------------------------------------------------------------

Sprite_63_DebirandoPit:
|058531| JSR GetDirectionTowardsLink_bank05

|058534| LDA.b $0E
|058536| CLC
|058537| ADC.b #$20
|058539| CMP.b #$40
|05853B| BCS .ignore_link_priority

|05853D| LDA.b $0F
|05853F| CLC
|058540| ADC.b #$20
|058542| CMP.b #$40
|058544| BCS .ignore_link_priority

|058546| LDA.b #$10
|058548| JSL AllocateOAMInRegionB

.ignore_link_priority
|05854C| JSR SpriteDraw_DebirandoPit
|05854F| JSR CheckIfActive_bank05

;---------------------------------------------------------------------------------------------------

|058552| LDY.w $0EB0,X

|058555| LDA.w $0DD0,Y
|058558| CMP.b #$06
|05855A| BNE .parent_not_dying

|05855C| STA.w $0DD0,X

|05855F| LDA.w $0DF0,Y
|058562| STA.w $0DF0,X

|058565| LDA.w $0E40,X
|058568| CLC
|058569| ADC.b #$04
|05856B| STA.w $0E40,X

|05856E| RTS

;---------------------------------------------------------------------------------------------------

.parent_not_dying
|05856F| LDA.w $0DC0,X
|058572| CMP.b #$03
|058574| BCS .run_ai

|058576| JSL CheckDamageToLink_same_layer_long
|05857A| BCC .run_ai

|05857C| JSL CancelDash_long

; Why does this mechanic even exist?
|058580| LDA.b $F6
|058582| AND.b #$10
|058584| BNE .not_pressing_r

|058586| LDA.b #$01
|058588| STA.w $0B7B

;---------------------------------------------------------------------------------------------------

.not_pressing_r
|05858B| LDA.b #$10
|05858D| JSL ApplySpeedTowardsLink_long

|058591| LDY.b #$00

|058593| LDA.b $00
|058595| BPL .positive_x

|058597| EOR.b #$FF
|058599| INC A

|05859A| INY

.positive_x
|05859B| CLC
|05859C| ADC.w $0D90,X
|05859F| STA.w $0D90,X
|0585A2| BCC .skip_drag_y

|0585A4| LDA.w .drag_low,Y
|0585A7| STA.w $0B7E

|0585AA| LDA.w .drag_high,Y
|0585AD| STA.w $0B7F

;---------------------------------------------------------------------------------------------------

.skip_drag_y
|0585B0| LDY.b #$00

|0585B2| LDA.b $01
|0585B4| BPL .positive_y

|0585B6| EOR.b #$FF
|0585B8| INC A

|0585B9| INY

.positive_y
|0585BA| CLC
|0585BB| ADC.w $0DA0,X
|0585BE| STA.w $0DA0,X
|0585C1| BCC .run_ai

|0585C3| LDA.w .drag_low,Y
|0585C6| STA.w $0B7C

|0585C9| LDA.w .drag_high,Y
|0585CC| STA.w $0B7D

;---------------------------------------------------------------------------------------------------

.run_ai
|0585CF| LDA.w $0D80,X
|0585D2| JSL JumpTableLocal
|0585D6| dw DebirandoPit_Closed
|0585D8| dw DebirandoPit_Opening
|0585DA| dw DebirandoPit_Open
|0585DC| dw DebirandoPit_Closing

;===================================================================================================

DebirandoPit_Closed:
|0585DE| LDA.b #$06
|0585E0| STA.w $0DC0,X

|0585E3| LDA.w $0DF0,X
|0585E6| BNE .exit

|0585E8| INC.w $0D80,X

|0585EB| LDA.b #$3F
|0585ED| STA.w $0DF0,X

.exit
|0585F0| RTS

;===================================================================================================

pool DebirandoPit_Opening

.anim_step
|0585F1| db $05, $04, $03, $03

endpool

;---------------------------------------------------------------------------------------------------

DebirandoPit_Opening:
|0585F5| LDA.w $0DF0,X
|0585F8| BNE .delay

|0585FA| INC.w $0D80,X

|0585FD| LDA.b #$FF
|0585FF| STA.w $0DF0,X

|058602| RTS

.delay
|058603| LSR A ; /16
|058604| LSR A
|058605| LSR A
|058606| LSR A
|058607| TAY

|058608| LDA.w .anim_step,Y
|05860B| STA.w $0DC0,X

|05860E| RTS

;===================================================================================================

DebirandoPit_Open:
|05860F| LDA.b $1A
|058611| AND.b #$0F
|058613| BNE .dont_adjust_anim

|058615| INC.w $0DC0,X

|058618| LDA.w $0DC0,X
|05861B| CMP.b #$03
|05861D| BCC .dont_adjust_anim

|05861F| STZ.w $0DC0,X

.dont_adjust_anim
|058622| LDA.w $0DF0,X
|058625| BNE .exit

|058627| LDA.b #$3F
|058629| STA.w $0DF0,X

|05862C| INC.w $0D80,X

.exit
|05862F| RTS

;===================================================================================================

pool DebirandoPit_Closing

.anim_step
|058630| db $03, $03, $04, $05

endpool

;---------------------------------------------------------------------------------------------------

DebirandoPit_Closing:
|058634| LDA.w $0DF0,X
|058637| BNE .delay

|058639| STZ.w $0D80,X

|05863C| LDA.b #$20
|05863E| STA.w $0DF0,X

|058641| RTS

.delay
|058642| LSR A ; /16
|058643| LSR A
|058644| LSR A
|058645| LSR A
|058646| TAY

|058647| LDA.w .anim_step,Y
|05864A| STA.w $0DC0,X

|05864D| RTS

;===================================================================================================

pool SpriteDraw_DebirandoPit

.offset_x
|05864E| dw  -8,   8,  -8,   8
|058656| dw  -8,   8,  -8,   8
|05865E| dw  -8,   8,  -8,   8
|058666| dw   0,   8,   0,   8
|05866E| dw   0,   8,   0,   8
|058676| dw  -8,   8,  -8,   8

.offset_y
|05867E| dw  -8,  -8,   8,   8
|058686| dw  -8,  -8,   8,   8
|05868E| dw  -8,  -8,   8,   8
|058696| dw   0,   0,   8,   8
|05869E| dw   0,   0,   8,   8
|0586A6| dw  -8,  -8,   8,   8

.char
|0586AE| db $04, $04, $04, $04
|0586B2| db $22, $22, $22, $22
|0586B6| db $02, $02, $02, $02
|0586BA| db $29, $29, $29, $29
|0586BE| db $39, $39, $39, $39
|0586C2| db $2A, $2A, $2A, $2A

.flip
|0586C6| db $00, $40, $80, $C0
|0586CA| db $00, $40, $80, $C0
|0586CE| db $00, $40, $80, $C0
|0586D2| db $00, $40, $80, $C0
|0586D6| db $00, $40, $80, $C0
|0586DA| db $00, $40, $80, $C0

.size
|0586DE| db $02
|0586DF| db $02
|0586E0| db $02
|0586E1| db $00
|0586E2| db $00
|0586E3| db $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_DebirandoPit:
|0586E4| JSR GetScreenCoordinates_bank05

|0586E7| LDA.w $0DC0,X
|0586EA| CMP.b #$06
|0586EC| BEQ .exit

|0586EE| PHX

|0586EF| TAX

|0586F0| LDA.w .size,X
|0586F3| STA.b $0D

|0586F5| TXA
|0586F6| ASL A
|0586F7| ASL A
|0586F8| STA.b $06

;---------------------------------------------------------------------------------------------------

|0586FA| LDX.b #$03

.next_object
|0586FC| PHX

|0586FD| TXA
|0586FE| CLC
|0586FF| ADC.b $06
|058701| PHA

|058702| ASL A
|058703| TAX

|058704| REP #$20

|058706| LDA.b $00
|058708| CLC
|058709| ADC.w .offset_x,X
|05870C| STA.b ($90),Y

|05870E| AND.w #$0100
|058711| STA.b $0E

|058713| LDA.b $02
|058715| CLC
|058716| ADC.w .offset_y,X

|058719| INY
|05871A| STA.b ($90),Y

|05871C| CLC
|05871D| ADC.w #$0010
|058720| CMP.w #$0100

|058723| SEP #$20
|058725| BCC .on_screen

|058727| LDA.b #$F0
|058729| STA.b ($90),Y

.on_screen
|05872B| PLX

|05872C| LDA.w .char,X
|05872F| INY
|058730| STA.b ($90),Y

|058732| LDA.w .flip,X
|058735| ORA.b $05

|058737| INY
|058738| STA.b ($90),Y

|05873A| PHY

|05873B| TYA
|05873C| LSR A
|05873D| LSR A
|05873E| TAY

|05873F| LDA.b $0D
|058741| ORA.b $0F
|058743| STA.b ($92),Y

|058745| PLY
|058746| INY

|058747| PLX
|058748| DEX
|058749| BPL .next_object

;---------------------------------------------------------------------------------------------------

|05874B| PLX

.exit
|05874C| RTS

;===================================================================================================

Sprite_64_Debirando:
|05874D| JSR SpriteDraw_Debirando
|058750| JSR CheckIfActive_bank05

|058753| LDA.w $0D80,X
|058756| JSL JumpTableLocal
|05875A| dw Debirando_Underground
|05875C| dw Debirando_Emerge
|05875E| dw Debirando_Shoot
|058760| dw Debirando_Submerge

;===================================================================================================

Debirando_Underground:
|058762| LDA.w $0DF0,X
|058765| STA.w $0BA0,X
|058768| BNE .exit

|05876A| INC.w $0D80,X

|05876D| LDA.b #$1F
|05876F| STA.w $0DF0,X

.exit
|058772| RTS

;===================================================================================================

pool Debirando_Emerge

.anim_step
|058773| db $01, $00

endpool

;===================================================================================================

Debirando_Emerge:
|058775| JSR CheckDamageToAndFromLink_bank05

|058778| LDA.w $0DF0,X
|05877B| BNE .delay

|05877D| INC.w $0D80,X

|058780| LDA.b #$80
|058782| STA.w $0DF0,X

|058785| RTS

.delay
|058786| LSR A ; /16
|058787| LSR A
|058788| LSR A
|058789| LSR A
|05878A| TAY

|05878B| LDA.w .anim_step,Y
|05878E| STA.w $0DC0,X

|058791| RTS

;===================================================================================================

Debirando_Shoot:
|058792| JSR CheckDamageToAndFromLink_bank05

|058795| LDA.w $0DF0,X
|058798| BNE .delay

|05879A| LDA.b #$1F
|05879C| STA.w $0DF0,X

|05879F| INC.w $0D80,X

|0587A2| RTS

.delay
|0587A3| AND.b #$1F
|0587A5| ORA.w $0ED0,X

; pretty useless since CheckIfActive already covers this
|0587A8| ORA.b $11
|0587AA| ORA.w $0F00,X
|0587AD| ORA.w $0FC1
|0587B0| BNE .dont_shoot

|0587B2| JSL ShootFireball

.dont_shoot
|0587B6| INC.w $0E80,X

|0587B9| LDA.w $0E80,X
|0587BC| LSR A
|0587BD| LSR A
|0587BE| LSR A
|0587BF| AND.b #$01

|0587C1| CLC
|0587C2| ADC.b #$02
|0587C4| STA.w $0DC0,X

|0587C7| RTS

;===================================================================================================

pool Debirando_Submerge

.anim_step
|0587C8| db $00, $01

endpool

;---------------------------------------------------------------------------------------------------

Debirando_Submerge:
|0587CA| JSR CheckDamageToAndFromLink_bank05

|0587CD| LDA.w $0DF0,X
|0587D0| BNE .delay

|0587D2| STZ.w $0D80,X

|0587D5| LDA.b #$DF
|0587D7| STA.w $0DF0,X

|0587DA| RTS

.delay
|0587DB| LSR A ; /16
|0587DC| LSR A
|0587DD| LSR A
|0587DE| LSR A
|0587DF| TAY

|0587E0| LDA.w .anim_step,Y
|0587E3| STA.w $0DC0,X

|0587E6| RTS

;===================================================================================================

pool SpriteDraw_Debirando

.offset_x
|0587E7| dw   0,   8,   0,   8
|0587EF| dw   0,   0,   0,   8
|0587F7| dw   0,   0,   0,   0
|0587FF| dw   0,   0,   0,   0

.offset_y
|058807| dw   2,   2,   6,   6
|05880F| dw  -2,  -2,   6,   6
|058817| dw  -4,  -4,  -4,  -4
|05881F| dw  -4,  -4,  -4,  -4

.char
|058827| db $00, $00, $D8, $D8
|05882B| db $00, $00, $D9, $D9
|05882F| db $00, $00, $00, $00
|058833| db $20, $20, $20, $20

.prop
|058837| db $01, $41, $00, $40
|05883B| db $01, $01, $00, $40
|05883F| db $01, $01, $01, $01
|058843| db $01, $01, $01, $01

.size
|058847| db $00, $00, $00, $00
|05884B| db $02, $02, $00, $00
|05884F| db $02, $02, $02, $02
|058853| db $02, $02, $02, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Debirando:
|058857| LDA.w $0D80,X
|05885A| BEQ .exit

|05885C| JSR GetScreenCoordinates_bank05

|05885F| LDA.w $0DC0,X
|058862| ASL A
|058863| ASL A
|058864| STA.b $06

|058866| PHX

;---------------------------------------------------------------------------------------------------

|058867| LDX.b #$03

.next_object
|058869| PHX

|05886A| TXA
|05886B| CLC
|05886C| ADC.b $06
|05886E| PHA

|05886F| ASL A
|058870| TAX

|058871| REP #$20

|058873| LDA.b $00
|058875| CLC
|058876| ADC.w .offset_x,X
|058879| STA.b ($90),Y

|05887B| AND.w #$0100
|05887E| STA.b $0E

|058880| LDA.b $02
|058882| CLC
|058883| ADC.w .offset_y,X

|058886| INY
|058887| STA.b ($90),Y

|058889| CLC
|05888A| ADC.w #$0010
|05888D| CMP.w #$0100

|058890| SEP #$20
|058892| BCC .on_screen

|058894| LDA.b #$F0
|058896| STA.b ($90),Y

.on_screen
|058898| PLX

|058899| LDA.w .char,X
|05889C| INY
|05889D| STA.b ($90),Y

|05889F| LDA.w .prop,X
|0588A2| PHA

|0588A3| AND.b #$0F
|0588A5| CMP.b #$01
|0588A7| PLA

|0588A8| EOR.b $05
|0588AA| BCS .skip_pal_override

|0588AC| AND.b #$F0

.skip_pal_override
|0588AE| INY

|0588AF| STA.b ($90),Y

|0588B1| PHY

|0588B2| TYA
|0588B3| LSR A
|0588B4| LSR A
|0588B5| TAY

|0588B6| LDA.w .size,X
|0588B9| ORA.b $0F
|0588BB| STA.b ($92),Y

|0588BD| PLY
|0588BE| INY

|0588BF| PLX
|0588C0| DEX
|0588C1| BPL .next_object

;---------------------------------------------------------------------------------------------------

|0588C3| PLX

.exit
|0588C4| RTS

;===================================================================================================

Sprite_62_MasterSword:
|0588C5| LDA.w $0E80,X
|0588C8| JSL JumpTableLocal
|0588CC| dw MasterSword_Main
|0588CE| dw MasterSword_LightFountain
|0588D0| dw MasterSword_LightBeam
|0588D2| dw MasterSword_Prop
|0588D4| dw MasterSword_LightWell

;===================================================================================================

MasterSword_Main:
; Don't delete self during the epilog
|0588D6| LDA.b $10
|0588D8| CMP.b #$1A
|0588DA| BEQ .dont_terminate

;---------------------------------------------------------------------------------------------------

|0588DC| PHX

|0588DD| LDX.b $8A
|0588DF| LDA.l $7EF280,X

|0588E3| PLX

|0588E4| AND.b #$40
|0588E6| BEQ .dont_terminate

|0588E8| JMP.w MasterSword_SelfTerminate

;---------------------------------------------------------------------------------------------------

.dont_terminate
|0588EB| LDA.w $0D80,X
|0588EE| CMP.b #$05
|0588F0| BEQ .dont_draw

|0588F2| JSR SpriteDraw_MasterSword

.dont_draw
|0588F5| LDA.w $0D80,X
|0588F8| JSL JumpTableLocal
|0588FC| dw MasterSword_InPedestal
|0588FE| dw MasterSword_PendantsCircling
|058900| dw MasterSword_TurnUpLights
|058902| dw MasterSword_MaxBrightness
|058904| dw MasterSword_HandleReceipt
|058906| dw MasterSword_SelfTerminate

;===================================================================================================

MasterSword_InPedestal:
|058908| JSL CheckIfLinkIsBusy
|05890C| BCS .exit

|05890E| JSL CheckDamageToLink_same_layer_long
|058912| BCC .exit

;---------------------------------------------------------------------------------------------------

|058914| LDA.b $2F
|058916| CMP.b #$02
|058918| BNE .exit

|05891A| LDA.b $F6
|05891C| BPL .exit

|05891E| LDA.l $7EF374
|058922| AND.b #$07
|058924| CMP.b #$07
|058926| BNE .exit

|058928| LDA.b #$0A ; SONG 0A
|05892A| STA.w $012C

|05892D| LDA.b #$01
|05892F| STA.w $037B

|058932| LDA.b #$09
|058934| JSR MasterSword_SpawnPendantProp

|058937| LDA.b #$0B
|058939| JSR MasterSword_SpawnPendantProp

|05893C| LDA.b #$0F
|05893E| JSR MasterSword_SpawnPendantProp

|058941| JSR MasterSword_SpawnLightWell

|058944| INC.w $0D80,X

|058947| LDA.b #$F0
|058949| STA.w $0DF0,X

.exit
|05894C| RTS

;===================================================================================================

MasterSword_PendantsCircling:
|05894D| LDA.w $0DF0,X
|058950| BNE .delay

|058952| JSR MasterSword_SpawnLightFountain

|058955| INC.w $0D80,X

|058958| LDA.b #$C0
|05895A| STA.w $0DF0,X

.delay
|05895D| LDA.b #$0A
|05895F| STA.w $0377

|058962| LDA.b #$01
|058964| STA.w $02E4

|058967| RTS

;===================================================================================================

MasterSword_TurnUpLights:
|058968| LDA.w $0DF0,X
|05896B| BNE .delay

|05896D| LDY.b #$FF
|05896F| JSR MasterSword_SpawnLightBeam

|058972| INC.w $0D80,X

|058975| LDA.b #$08
|058977| STA.w $0DF0,X

.delay
|05897A| LDA.b #$0A
|05897C| BRA MasterSword_AssertCutscene

;===================================================================================================

MasterSword_MaxBrightness:
|05897E| LDA.w $0DF0,X
|058981| BNE .delay

|058983| LDA.b #$01
|058985| LDY.b #$FF
|058987| JSR MasterSword_SpawnLightBeam

|05898A| INC.w $0D80,X

|05898D| LDA.b #$10
|05898F| STA.w $0DF0,X

.delay
|058992| LDA.b #$0B

;===================================================================================================

MasterSword_AssertCutscene:
|058994| STA.w $0377

|058997| LDA.b #$01
|058999| STA.w $02E4

|05899C| RTS

;===================================================================================================

MasterSword_HandleReceipt:
|05899D| LDA.w $0DF0,X
|0589A0| BNE .delay

|0589A2| PHX

|0589A3| LDX.b $8A

|0589A5| LDA.l $7EF280,X
|0589A9| ORA.b #$40
|0589AB| STA.l $7EF280,X

|0589AF| LDY.b #$01 ; ITEMGET 01
|0589B1| STZ.w $02E9
|0589B4| JSL GrantItemReceipt

|0589B8| PLX

|0589B9| LDA.b #$05
|0589BB| STA.l $7EF3C7

|0589BF| STZ.w $0377

|0589C2| INC.w $0D80,X

.delay
|0589C5| RTS

;===================================================================================================

MasterSword_SelfTerminate:
|0589C6| STZ.w $0DD0,X

|0589C9| RTS

;===================================================================================================

pool MasterSword_LightFountain

.anim_step
|0589CA| db $00, $01, $01, $02
|0589CE| db $02, $02, $01, $01
|0589D2| db $00

.spawn_light_flag
|0589D3| db $00, $00, $01, $01
|0589D7| db $02, $02, $00, $00
|0589DB| db $00

endpool

;---------------------------------------------------------------------------------------------------

MasterSword_LightFountain:
|0589DC| JSR SpriteDraw_LightFountain

|0589DF| INC.w $0D90,X

|0589E2| LDA.w $0D90,X
|0589E5| BNE .continue_light_show

|0589E7| INC.w $0DB0,X
|0589EA| STZ.w $0DD0,X

;---------------------------------------------------------------------------------------------------

.continue_light_show
|0589ED| LSR A
|0589EE| LSR A
|0589EF| AND.b #$03
|0589F1| STA.w $0DE0,X

|0589F4| LDA.w $0D90,X
|0589F7| LSR A ; /32
|0589F8| LSR A
|0589F9| LSR A
|0589FA| LSR A
|0589FB| LSR A
|0589FC| AND.b #$07
|0589FE| TAY

|0589FF| LDA.w .anim_step,Y
|058A02| STA.w $0DC0,X

;---------------------------------------------------------------------------------------------------

|058A05| LDA.w .spawn_light_flag,Y
|058A08| BEQ .exit

|058A0A| TAY

|058A0B| LDA.w $0D90,X
|058A0E| LSR A
|058A0F| LSR A
|058A10| AND.b #$01

|058A12| JSR MasterSword_SpawnLightBeam

.exit
|058A15| RTS

;===================================================================================================

MasterSword_LightWell:
|058A16| JSR SpriteDraw_LightFountain

|058A19| INC.w $0D90,X

|058A1C| LDA.w $0D90,X
|058A1F| BNE .delay

|058A21| INC.w $0DB0,X

|058A24| STZ.w $0DD0,X

.delay
|058A27| LSR A
|058A28| LSR A
|058A29| AND.b #$03
|058A2B| STA.w $0DE0,X

|058A2E| LDA.b #$00
|058A30| STA.w $0DC0,X

|058A33| RTS

;===================================================================================================

pool SpriteDraw_LightFountain

.oam_groups
; group00
|058A34| dw  -6,   4 : db $82, $00, $00, $02

; group01
|058A3C| dw  -6,   4 : db $82, $40, $00, $02

; group02
|058A44| dw  -6,   4 : db $82, $C0, $00, $02

; group03
|058A4C| dw  -6,   4 : db $82, $80, $00, $02

; group04
|058A54| dw  -6,   4 : db $A0, $00, $00, $02

; group05
|058A5C| dw  -6,   4 : db $A0, $40, $00, $02

; group06
|058A64| dw  -6,   4 : db $A0, $C0, $00, $02

; group07
|058A6C| dw  -6,   4 : db $A0, $80, $00, $02

; group08
|058A74| dw  -6,   4 : db $80, $00, $00, $02

; group09
|058A7C| dw  -6,   4 : db $80, $40, $00, $02

; group0A
|058A84| dw  -6,   4 : db $80, $C0, $00, $02

; group0B
|058A8C| dw  -6,   4 : db $80, $80, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_LightFountain:
|058A94| LDA.b #$04
|058A96| JSL AllocateOAMInRegionC

|058A9A| LDA.w $0DC0,X
|058A9D| ASL A
|058A9E| ASL A

|058A9F| ADC.w $0DE0,X

|058AA2| ASL A
|058AA3| ASL A
|058AA4| ASL A

|058AA5| ADC.b #<.oam_groups
|058AA7| STA.b $08

|058AA9| LDA.b #>.oam_groups
|058AAB| ADC.b #$00
|058AAD| STA.b $09

|058AAF| LDA.b #$01

;===================================================================================================

TabulatedSpriteDraw_bank05:
|058AB1| JSL TabulatedSpriteDraw

|058AB5| RTS

;===================================================================================================

MasterSword_SpawnLightWell:
|058AB6| LDA.b #$62 ; SPRITE 62
|058AB8| JSL SpawnSpriteDynamically
|058ABC| JSL SetSpawnedSpriteCoordinates

|058AC0| LDA.b #$04
|058AC2| STA.w $0E80,Y

|058AC5| LDA.b #$05
|058AC7| STA.w $0F50,Y

|058ACA| LDA.b #$00
|058ACC| STA.w $0E40,Y

|058ACF| RTS

;===================================================================================================

MasterSword_SpawnLightFountain:
|058AD0| LDA.b #$62 ; SPRITE 62
|058AD2| JSL SpawnSpriteDynamically
|058AD6| JSL SetSpawnedSpriteCoordinates

|058ADA| LDA.b #$01
|058ADC| STA.w $0E80,Y

|058ADF| LDA.b #$05
|058AE1| STA.w $0F50,Y

|058AE4| LDA.b #$00
|058AE6| STA.w $0E40,Y

|058AE9| RTS

;===================================================================================================

MasterSword_LightBeam:
|058AEA| JSL SpriteDraw_SingleLarge_long

|058AEE| LDA.w $0D90,X
|058AF1| BEQ .dont_move

|058AF3| JSR MoveSpriteXY_bank05

|058AF6| LDA.b $1A
|058AF8| AND.b #$03
|058AFA| BNE .exit

|058AFC| JSR MasterSword_SpawnReplacementLightBeam

.dont_move
|058AFF| DEC.w $0DA0,X
|058B02| BNE .exit

|058B04| STZ.w $0DD0,X

.exit
|058B07| RTS

;===================================================================================================

pool SpawnLightBeam

.speed_x_1
|058B08| db   0, -48

.speed_x_2
|058B0A| db   0,  48

.speed_x_3
|058B0C| db -96, -48

.speed_x_4
|058B0E| db  96,  48

;---------------------------------------------------------------------------------------------------

.speed_y_1
|058B10| db -96, -48

.speed_y_2
|058B12| db  96,  48

.speed_y_3
|058B14| db   0,  48

.speed_y_4
|058B16| db   0, -48

;---------------------------------------------------------------------------------------------------

.anim_step_1
|058B18| db $01, $00

.anim_step_2
|058B1A| db $03, $02

;---------------------------------------------------------------------------------------------------

.props_1
|058B1C| db $05, $45

.props_2
|058B1E| db $05, $05

endpool

;===================================================================================================

MasterSword_SpawnReplacementLightBeam:
|058B20| LDA.b #$62 ; SPRITE 62
|058B22| JSL SpawnSpriteDynamically
|058B26| BMI .exit

|058B28| LDA.b $00
|058B2A| CLC
|058B2B| ADC.b #$00
|058B2D| STA.w $0D10,Y

|058B30| LDA.b $01
|058B32| ADC.b #$00
|058B34| STA.w $0D30,Y

|058B37| LDA.b $02
|058B39| CLC
|058B3A| ADC.b #$00
|058B3C| STA.w $0D00,Y

|058B3F| LDA.b $03
|058B41| ADC.b #$00
|058B43| STA.w $0D20,Y

|058B46| LDA.b #$02
|058B48| STA.w $0E80,Y

|058B4B| LDA.b #$03
|058B4D| STA.w $0DA0,Y

|058B50| LDA.w $0DC0,X
|058B53| STA.w $0DC0,Y

|058B56| LDA.w $0F50,X
|058B59| STA.w $0F50,Y

|058B5C| LDA.b #$00
|058B5E| STA.w $0E40,Y

.exit
|058B61| RTS

;===================================================================================================

MasterSword_SpawnLightBeam:
|058B62| PHY
|058B63| PHA

|058B64| LDA.b #$62 ; SPRITE 62
|058B66| JSL SpawnSpriteDynamically
|058B6A| BPL .spawn_a

|058B6C| JMP.w .exit

.spawn_a
|058B6F| LDA.b $00
|058B71| SEC
|058B72| SBC.b #$04
|058B74| STA.w $0D10,Y

|058B77| LDA.b $01
|058B79| SBC.b #$00
|058B7B| STA.w $0D30,Y

|058B7E| LDA.b $02
|058B80| CLC
|058B81| ADC.b #$04
|058B83| STA.w $0D00,Y

|058B86| LDA.b $03
|058B88| ADC.b #$00
|058B8A| STA.w $0D20,Y

|058B8D| LDA.b #$02
|058B8F| STA.w $0E80,Y
|058B92| STA.w $0D90,Y

|058B95| LDA.b #$00
|058B97| STA.w $0E40,Y

|058B9A| PLA
|058B9B| PHX
|058B9C| TAX

|058B9D| LDA.w SpawnLightBeam.speed_x_1,X
|058BA0| STA.w $0D50,Y

|058BA3| LDA.w SpawnLightBeam.speed_y_1,X
|058BA6| STA.w $0D40,Y

|058BA9| LDA.w SpawnLightBeam.anim_step_1,X
|058BAC| STA.w $0DC0,Y

|058BAF| LDA.w SpawnLightBeam.props_1,X
|058BB2| STA.w $0F50,Y

|058BB5| TXA

|058BB6| PLX

|058BB7| STA.b $00

|058BB9| PLA
|058BBA| STA.w $0DA0,Y

|058BBD| PHA

|058BBE| LDA.b $00
|058BC0| PHA

;---------------------------------------------------------------------------------------------------

|058BC1| LDA.b #$62 ; SPRITE 62
|058BC3| JSL SpawnSpriteDynamically
|058BC7| BPL .spawn_b

|058BC9| JMP.w .exit

.spawn_b
|058BCC| LDA.b $00
|058BCE| SEC
|058BCF| SBC.b #$04
|058BD1| STA.w $0D10,Y

|058BD4| LDA.b $01
|058BD6| SBC.b #$00
|058BD8| STA.w $0D30,Y

|058BDB| LDA.b $02
|058BDD| CLC
|058BDE| ADC.b #$04
|058BE0| STA.w $0D00,Y

|058BE3| LDA.b $03
|058BE5| ADC.b #$00
|058BE7| STA.w $0D20,Y

|058BEA| LDA.b #$02
|058BEC| STA.w $0E80,Y
|058BEF| STA.w $0D90,Y

|058BF2| LDA.b #$00
|058BF4| STA.w $0E40,Y

|058BF7| PLA
|058BF8| PHX
|058BF9| TAX

|058BFA| LDA.w SpawnLightBeam.speed_x_2,X
|058BFD| STA.w $0D50,Y

|058C00| LDA.w SpawnLightBeam.speed_y_2,X
|058C03| STA.w $0D40,Y

|058C06| LDA.w SpawnLightBeam.anim_step_1,X
|058C09| STA.w $0DC0,Y

|058C0C| LDA.w SpawnLightBeam.props_1,X
|058C0F| STA.w $0F50,Y

|058C12| TXA

|058C13| PLX
|058C14| STA.b $00

|058C16| PLA
|058C17| STA.w $0DA0,Y

|058C1A| PHA

|058C1B| LDA.b $00
|058C1D| PHA

;---------------------------------------------------------------------------------------------------

|058C1E| LDA.b #$62 ; SPRITE 62
|058C20| JSL SpawnSpriteDynamically
|058C24| BPL .spawn_c

|058C26| JMP.w .exit

.spawn_c
|058C29| LDA.b $00
|058C2B| SEC
|058C2C| SBC.b #$04
|058C2E| STA.w $0D10,Y

|058C31| LDA.b $01
|058C33| SBC.b #$00
|058C35| STA.w $0D30,Y

|058C38| LDA.b $02
|058C3A| CLC
|058C3B| ADC.b #$04
|058C3D| STA.w $0D00,Y

|058C40| LDA.b $03
|058C42| ADC.b #$00
|058C44| STA.w $0D20,Y

|058C47| LDA.b #$02
|058C49| STA.w $0E80,Y
|058C4C| STA.w $0D90,Y

|058C4F| LDA.b #$00
|058C51| STA.w $0E40,Y

|058C54| PLA
|058C55| PHX
|058C56| TAX

|058C57| LDA.w SpawnLightBeam.speed_x_3,X
|058C5A| STA.w $0D50,Y

|058C5D| LDA.w SpawnLightBeam.speed_y_3,X
|058C60| STA.w $0D40,Y

|058C63| LDA.w SpawnLightBeam.anim_step_2,X
|058C66| STA.w $0DC0,Y

|058C69| LDA.w SpawnLightBeam.props_2,X
|058C6C| STA.w $0F50,Y

|058C6F| TXA

|058C70| PLX

|058C71| STA.b $00

|058C73| PLA
|058C74| STA.w $0DA0,Y

|058C77| PHA

|058C78| LDA.b $00
|058C7A| PHA

;---------------------------------------------------------------------------------------------------

|058C7B| LDA.b #$62 ; SPRITE 62
|058C7D| JSL SpawnSpriteDynamically
|058C81| BMI .exit

|058C83| LDA.b $00
|058C85| SEC
|058C86| SBC.b #$04
|058C88| STA.w $0D10,Y

|058C8B| LDA.b $01
|058C8D| SBC.b #$00
|058C8F| STA.w $0D30,Y

|058C92| LDA.b $02
|058C94| CLC
|058C95| ADC.b #$04
|058C97| STA.w $0D00,Y

|058C9A| LDA.b $03
|058C9C| ADC.b #$00
|058C9E| STA.w $0D20,Y

|058CA1| LDA.b #$02
|058CA3| STA.w $0E80,Y
|058CA6| STA.w $0D90,Y

|058CA9| LDA.b #$00
|058CAB| STA.w $0E40,Y

|058CAE| PLA
|058CAF| PHX
|058CB0| TAX

|058CB1| LDA.w SpawnLightBeam.speed_x_4,X
|058CB4| STA.w $0D50,Y

|058CB7| LDA.w SpawnLightBeam.speed_y_4,X
|058CBA| STA.w $0D40,Y

|058CBD| LDA.w SpawnLightBeam.anim_step_2,X
|058CC0| STA.w $0DC0,Y

|058CC3| LDA.w SpawnLightBeam.props_2,X
|058CC6| STA.w $0F50,Y

|058CC9| TXA

|058CCA| PLX

|058CCB| PLA
|058CCC| STA.w $0DA0,Y

|058CCF| RTS

;---------------------------------------------------------------------------------------------------

.exit
|058CD0| PLA
|058CD1| PLY

|058CD2| RTS

;===================================================================================================

MasterSword_SpawnPendantProp:
|058CD3| PHA

|058CD4| LDA.b #$62 ; SPRITE 62
|058CD6| JSL SpawnSpriteDynamically

|058CDA| PLA
|058CDB| STA.w $0F50,Y

|058CDE| LDA.b $22
|058CE0| STA.w $0D10,Y

|058CE3| LDA.b $23
|058CE5| STA.w $0D30,Y

|058CE8| LDA.b $20
|058CEA| CLC
|058CEB| ADC.b #$08
|058CED| STA.w $0D00,Y

|058CF0| LDA.b $21
|058CF2| ADC.b #$00
|058CF4| STA.w $0D20,Y

|058CF7| LDA.b #$04
|058CF9| STA.w $0DC0,Y

|058CFC| LDA.b #$03
|058CFE| STA.w $0E80,Y

|058D01| LDA.b #$40
|058D03| STA.w $0E40,Y

|058D06| LDA.b #$E4
|058D08| STA.w $0DF0,Y

|058D0B| PHX

|058D0C| LDA.w $0F50,Y
|058D0F| LSR A
|058D10| AND.b #$03
|058D12| TAX

|058D13| LDA.w .speed_x,X
|058D16| STA.w $0D50,Y

|058D19| LDA.w .speed_y,X
|058D1C| STA.w $0D40,Y

|058D1F| PLX

|058D20| RTS

;---------------------------------------------------------------------------------------------------

.speed_x
|058D21| db  -4,   4,   0,   0

.speed_y
|058D25| db  -2,  -2,  -4,  -4

;===================================================================================================

MasterSword_Prop:
|058D29| LDA.b #$04
|058D2B| JSL AllocateOAMInRegionB
|058D2F| JSL SpriteDraw_SingleLarge_long

|058D33| LDA.w $0D80,X
|058D36| JSL JumpTableLocal
|058D3A| dw MasterSword_Prop_Floating
|058D3C| dw MasterSword_Prop_Flashing
|058D3E| dw MasterSword_Prop_FlyAwayNow

;===================================================================================================

MasterSword_Prop_Floating:
|058D40| JSR MoveSpriteXY_bank05

|058D43| LDA.w $0DF0,X
|058D46| BNE .delay

|058D48| INC.w $0D80,X

|058D4B| LDA.b #$D0
|058D4D| STA.w $0DF0,X

|058D50| LDA.w $0F50,X
|058D53| STA.w $0D90,X

.delay
|058D56| RTS

;===================================================================================================

MasterSword_Prop_Flashing:
|058D57| LDA.w $0F50,X
|058D5A| AND.b #$F1
|058D5C| STA.w $0F50,X

|058D5F| TXA
|058D60| ASL A
|058D61| EOR.b $1A

|058D63| AND.b #$0E
|058D65| ORA.w $0F50,X
|058D68| STA.w $0F50,X

|058D6B| LDA.w $0DF0,X
|058D6E| BNE .delay

|058D70| INC.w $0D80,X

|058D73| LDA.w $0D90,X
|058D76| STA.w $0F50,X

.delay
|058D79| RTS

;===================================================================================================

MasterSword_Prop_FlyAwayNow:
|058D7A| JSR MoveSpriteXY_bank05

|058D7D| LDA.w $0DF0,X
|058D80| BNE .delay

|058D82| ASL.w $0D50,X
|058D85| ASL.w $0D40,X

|058D88| LDA.b #$06
|058D8A| STA.w $0DF0,X

.delay
|058D8D| INC.w $0E90,X
|058D90| BNE .exit

|058D92| STZ.w $0DD0,X

.exit
|058D95| RTS

;===================================================================================================

pool SpriteDraw_MasterSword

.offset_x
|058D96| db  -8,   0,  -8,   0,  -8,   0

.offset_y
|058D9C| db  -8,  -8,   0,   0,   8,   8

.prop
|058DA2| db $C3, $C4, $D3, $D4, $E0, $F0

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_MasterSword:
|058DA8| JSR GetScreenCoordinates_bank05

|058DAB| PHX

|058DAC| LDX.b #$05

.next_object
|058DAE| LDA.b $00
|058DB0| CLC
|058DB1| ADC.w .offset_x,X
|058DB4| STA.b ($90),Y

|058DB6| LDA.b $02
|058DB8| CLC
|058DB9| ADC.w .offset_y,X

|058DBC| INY
|058DBD| STA.b ($90),Y

|058DBF| LDA.w .prop,X
|058DC2| INY
|058DC3| STA.b ($90),Y

|058DC5| INY

|058DC6| LDA.b $05
|058DC8| STA.b ($90),Y

|058DCA| INY

|058DCB| DEX
|058DCC| BPL .next_object

|058DCE| PLX

;---------------------------------------------------------------------------------------------------

|058DCF| LDY.b #$00
|058DD1| LDA.b #$05
|058DD3| JSL CorrectOAMEntries_long

|058DD7| RTS

;===================================================================================================

RollerSpeed:

.x ; bleeds into next
|058DD8| db -16,  16

.y
|058DDA| db   0,   0, -16,  16

;===================================================================================================

Sprite_5D_Roller_VerticalDownFirst:
Sprite_5E_Roller_VerticalUpFirst:
Sprite_5F_Roller_HorizontalRightFirst:
Sprite_60_Roller_HorizontalLeftFirst:
|058DDE| LDA.w $0DE0,X
|058DE1| AND.b #$02
|058DE3| STA.b $00

|058DE5| LDA.w $0E80,X
|058DE8| LSR A
|058DE9| AND.b #$01
|058DEB| ORA.b $00
|058DED| STA.w $0DC0,X

|058DF0| JSR SpriteDraw_Roller
|058DF3| JSR CheckIfActive_bank05
|058DF6| JSR CheckDamageToAndFromLink_bank05

;---------------------------------------------------------------------------------------------------

|058DF9| LDA.w $0DF0,X
|058DFC| BNE .dont_turn

|058DFE| LDA.b #$70
|058E00| STA.w $0DF0,X

|058E03| LDA.w $0DE0,X
|058E06| EOR.b #$01
|058E08| STA.w $0DE0,X

.dont_turn
|058E0B| LDY.w $0DE0,X

|058E0E| LDA.w RollerSpeed.x,Y
|058E11| STA.w $0D50,X

|058E14| LDA.w RollerSpeed.y,Y
|058E17| STA.w $0D40,X

|058E1A| JSR MoveSpriteXY_bank05

|058E1D| INC.w $0E80,X

|058E20| RTS

;===================================================================================================

pool SpriteDraw_Roller

.spacing_x
|058E21| dw   0,   0,   0,   0
|058E29| dw   0,   0,   0,   0
|058E31| dw   0,   0,   0,   0
|058E39| dw   0,   0,   0,   0
|058E41| dw   0,  16,  32,  48
|058E49| dw  64,  80,  96, 112
|058E51| dw   0,  16,  32,  48
|058E59| dw  64,  80,  96, 112

;---------------------------------------------------------------------------------------------------

.spacing_y
|058E61| dw   0,  16,  32,  48
|058E69| dw  64,  80,  96, 112
|058E71| dw   0,  16,  32,  48
|058E79| dw  64,  80,  96, 112
|058E81| dw   0,   0,   0,   0
|058E89| dw   0,   0,   0,   0
|058E91| dw   0,   0,   0,   0
|058E99| dw   0,   0,   0,   0

;---------------------------------------------------------------------------------------------------

.char
|058EA1| db $8E, $9E, $9E, $9E
|058EA5| db $9E, $9E, $9E, $8E
|058EA9| db $8E, $9E, $9E, $9E
|058EAD| db $9E, $9E, $9E, $8E
|058EB1| db $88, $89, $89, $89
|058EB5| db $89, $89, $89, $88
|058EB9| db $88, $89, $89, $89
|058EBD| db $89, $89, $89, $88

;---------------------------------------------------------------------------------------------------

.flip
|058EC1| db $00, $00, $00, $80
|058EC5| db $00, $00, $00, $80
|058EC9| db $40, $40, $40, $C0
|058ECD| db $40, $40, $40, $C0
|058ED1| db $00, $00, $00, $40
|058ED5| db $00, $00, $00, $40
|058ED9| db $80, $80, $80, $C0
|058EDD| db $80, $80, $80, $C0

;---------------------------------------------------------------------------------------------------

.obj_count
|058EE1| db $03
|058EE2| db $07

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Roller:
|058EE3| JSR GetScreenCoordinates_bank05

|058EE6| LDA.w $0DC0,X
|058EE9| ASL A
|058EEA| ASL A
|058EEB| ASL A
|058EEC| STA.b $06

|058EEE| TAY

|058EEF| LDA.w .char,Y
|058EF2| STA.b $08

;---------------------------------------------------------------------------------------------------

|058EF4| PHX

|058EF5| LDY.w $0D80,X
|058EF8| LDX.w .obj_count,Y

|058EFB| LDY.b #$00

.next_object
|058EFD| PHX

|058EFE| TXA
|058EFF| CLC
|058F00| ADC.b $06
|058F02| PHA

|058F03| ASL A
|058F04| TAX

|058F05| REP #$20

|058F07| LDA.b $00
|058F09| CLC
|058F0A| ADC.w .spacing_x,X
|058F0D| STA.b ($90),Y

|058F0F| AND.w #$0100
|058F12| STA.b $0E

|058F14| LDA.b $02
|058F16| CLC
|058F17| ADC.w .spacing_y,X

|058F1A| INY
|058F1B| STA.b ($90),Y

|058F1D| CLC
|058F1E| ADC.w #$0010
|058F21| CMP.w #$0100

|058F24| SEP #$20
|058F26| BCC .on_screen

|058F28| LDA.b #$F0
|058F2A| STA.b ($90),Y

.on_screen
|058F2C| PLX

|058F2D| LDA.b $08
|058F2F| BNE .end_segment

|058F31| LDA.w .char,X

.end_segment
|058F34| STZ.b $08

|058F36| INY
|058F37| STA.b ($90),Y

|058F39| LDA.w .flip,X
|058F3C| ORA.b $05
|058F3E| INY
|058F3F| STA.b ($90),Y

|058F41| PHY

|058F42| TYA
|058F43| LSR A
|058F44| LSR A
|058F45| TAY

|058F46| LDA.b #$02
|058F48| ORA.b $0F
|058F4A| STA.b ($92),Y

|058F4C| PLY
|058F4D| INY

|058F4E| PLX
|058F4F| DEX
|058F50| BPL .next_object

;---------------------------------------------------------------------------------------------------

|058F52| PLX

|058F53| RTS

;===================================================================================================

Sprite_61_Beamos:
|058F54| LDA.w $0DB0,X
|058F57| BEQ Beamos_Turret

|058F59| CMP.b #$01
|058F5B| BNE .collided_laser

|058F5D| JMP.w BeamosLaser

.collided_laser
|058F60| JMP.w BeamosLaserHit

;===================================================================================================

Beamos_Turret:
|058F63| JSR SpriteDraw_Beamos
|058F66| JSR CheckIfActive_bank05
|058F69| JSR CheckSpriteTileCollision_bank05
|058F6C| JSL CheckDamageToLink_long

|058F70| LDA.w $0D80,X
|058F73| BEQ Beamos_OnPatrol

|058F75| CMP.b #$03
|058F77| BNE Beamos_OnCoolDown

.firing
|058F79| LDA.w $0DF0,X
|058F7C| BNE .not_firing

|058F7E| INC.w $0D80,X

|058F81| LDA.b #$50
|058F83| STA.w $0DF0,X

|058F86| JSL GetInitialSpritePalette

|058F8A| RTS

;---------------------------------------------------------------------------------------------------

.not_firing
|058F8B| CMP.b #$0F
|058F8D| BNE .dont_fire

|058F8F| PHA

|058F90| JSR Beamos_FireLaser

|058F93| PLA

.dont_fire
|058F94| LSR A
|058F95| AND.b #$0E
|058F97| EOR.w $0F50,X
|058F9A| STA.w $0F50,X

|058F9D| RTS

;===================================================================================================

Beamos_OnCoolDown:
|058F9E| LDA.w $0DF0,X
|058FA1| BNE .exit

|058FA3| STZ.w $0D80,X

.exit
|058FA6| RTS

;===================================================================================================

Beamos_OnPatrol:
|058FA7| TXA
|058FA8| EOR.b $1A
|058FAA| AND.b #$03
|058FAC| BNE .dont_rotate

|058FAE| LDA.w $0DE0,X
|058FB1| STA.b $0F

|058FB3| JSR FireProbe

|058FB6| INC.w $0DE0,X

.dont_rotate
|058FB9| LDA.w $0DE0,X
|058FBC| AND.b #$3F
|058FBE| STA.w $0DE0,X

;---------------------------------------------------------------------------------------------------

#EXIT_058FC1:
|058FC1| RTS

;===================================================================================================

Beamos_FireLaser:
|058FC2| LDA.w $0B6A
|058FC5| CMP.b #$04
|058FC7| BCS EXIT_058FC1

|058FC9| LDA.b #$61 ; SPRITE 61
|058FCB| JSL SpawnSpriteDynamically
|058FCF| BMI EXIT_058FC1

|058FD1| LDA.b #$19 ; SFX3.19
|058FD3| JSL QueueSpriteSFX3WithPan

;---------------------------------------------------------------------------------------------------

|058FD7| PHX

|058FD8| LDX.b #$00

|058FDA| LDA.w $0FA8
|058FDD| BPL .positive_x

|058FDF| DEX

.positive_x
|058FE0| CLC
|058FE1| ADC.b $00
|058FE3| STA.w $0D10,Y

|058FE6| TXA
|058FE7| ADC.b $01
|058FE9| STA.w $0D30,Y

|058FEC| LDX.b #$00

|058FEE| LDA.w $0FA9
|058FF1| BPL .positive_y

|058FF3| DEX

.positive_y
|058FF4| CLC
|058FF5| ADC.b $02
|058FF7| STA.w $0D00,Y

|058FFA| TXA
|058FFB| ADC.b $03
|058FFD| STA.w $0D20,Y

|059000| TYX

;---------------------------------------------------------------------------------------------------

|059001| LDA.b #$20
|059003| JSL ApplySpeedTowardsLink_long

|059007| LDA.b #$3F
|059009| STA.w $0E40,Y

|05900C| LDA.b #$54
|05900E| STA.w $0F60,Y

|059011| LDA.b #$01
|059013| STA.w $0DB0,Y

|059016| LDA.b #$48
|059018| STA.w $0CAA,Y

|05901B| LDA.b #$03
|05901D| STA.w $0F50,Y

|059020| LDA.b #$04
|059022| STA.w $0CD2,Y

|059025| LDA.b #$0C
|059027| STA.w $0E00,Y

|05902A| LDA.w $0B6A
|05902D| STA.w $0DC0,Y

|059030| INC.w $0B6A

|059033| LDA.b #$1F
|059035| STA.b $00

;---------------------------------------------------------------------------------------------------

|059037| LDX.w $0DC0,Y

|05903A| CLC
|05903B| ADC.w SpriteSubspriteSlots_bank05,X
|05903E| TAX

.next_subsprite
|05903F| LDA.w $0D10,Y
|059042| STA.l $7FFD80,X

|059046| LDA.w $0D30,Y
|059049| STA.l $7FFE00,X

|05904D| LDA.w $0D00,Y
|059050| STA.l $7FFE80,X

|059054| LDA.w $0D20,Y
|059057| STA.l $7FFF00,X

|05905B| DEX

|05905C| DEC.b $00
|05905E| BPL .next_subsprite

;---------------------------------------------------------------------------------------------------

|059060| PLX

|059061| RTS

;===================================================================================================

pool SpriteDraw_Beamos

.offset_eye
|059062| dw -16,   0

.char
|059066| db $48, $68

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Beamos:
|059068| JSR GetScreenCoordinates_bank05

|05906B| LDY.b #$00

|05906D| LDA.w $0DE0,X
|059070| CMP.b #$20
|059072| BCS .use_region_c

.use_region_b
|059074| LDA.b #$0C
|059076| JSL AllocateOAMInRegionB

|05907A| LDY.b #$04
|05907C| BRA .continue

.use_region_c
|05907E| LDA.b #$0C
|059080| JSL AllocateOAMInRegionC

|059084| LDY.b #$00

;---------------------------------------------------------------------------------------------------

.continue
|059086| PHX

|059087| LDX.b #$01

.next_object
|059089| PHX

|05908A| TXA
|05908B| ASL A
|05908C| TAX

|05908D| REP #$20

|05908F| LDA.b $00
|059091| STA.b ($90),Y

|059093| AND.w #$0100
|059096| STA.b $0E

|059098| LDA.b $02
|05909A| CLC
|05909B| ADC.w .offset_eye,X

|05909E| INY
|05909F| STA.b ($90),Y

|0590A1| CLC
|0590A2| ADC.w #$0010
|0590A5| CMP.w #$0100

|0590A8| SEP #$20
|0590AA| BCC .on_screen

|0590AC| LDA.b #$F0
|0590AE| STA.b ($90),Y

.on_screen
|0590B0| PLX

|0590B1| LDA.w .char,X
|0590B4| INY
|0590B5| STA.b ($90),Y

|0590B7| LDA.b $05
|0590B9| INY
|0590BA| STA.b ($90),Y

|0590BC| PHY

|0590BD| TYA
|0590BE| LSR A
|0590BF| LSR A
|0590C0| TAY

|0590C1| LDA.b #$02
|0590C3| ORA.b $0F
|0590C5| STA.b ($92),Y

|0590C7| PLY
|0590C8| INY

|0590C9| DEX
|0590CA| BPL .next_object

;---------------------------------------------------------------------------------------------------

|0590CC| PLX

; Why is this even a JSR when it could just branch?
|0590CD| JSR SpriteDraw_Beamos_Eyeball

|0590D0| RTS

;===================================================================================================

.eyeball_offset_x
|0590D1| db  -1,   0,   1,   2,   3,   4,   5,   7
|0590D9| db   8,  10,  11,  12,  13,  14,  15,  16
|0590E1| db  17,  15,  14,  13,  12,  11,  10,   8
|0590E9| db   7,   5,   4,   3,   2,   1,   0,  -2

.eyeball_offset_y
|0590F1| db  11,  12,  13,  14,  14,  15,  15,  15
|0590F9| db  15,  15,  15,  14,  14,  13,  12,  11
|059101| db  10,   9,   8,   7,   7,   6,   6,   6
|059109| db   6,   6,   6,   7,   7,   8,   9,  10

.eyeball_char
|059111| db $5B, $5B, $5A, $5A, $4B, $4B, $4A, $4A
|059119| db $4A, $4A, $4B, $4B, $5A, $5A, $5B, $5B
|059121| db $5B, $5B, $4C, $4C, $4C, $4C, $4C, $4C
|059129| db $5B, $5B, $4C, $4C, $4C, $4C, $4C, $4C

.eyeball_flip
|059131| db $00, $00, $00, $00, $00, $00, $00, $00
|059139| db $40, $40, $40, $40, $40, $40, $40, $40
|059141| db $40, $40, $40, $40, $40, $40, $40, $40
|059149| db $00, $00, $00, $00, $00, $00, $00, $00

;---------------------------------------------------------------------------------------------------

#SpriteDraw_Beamos_Eyeball:
|059151| LDY.b #$08

|059153| LDA.w $0DE0,X
|059156| CMP.b #$20
|059158| BCS .upper_part_of_rotation

|05915A| LDY.b #$00

.upper_part_of_rotation
|05915C| STY.b $0E
|05915E| STZ.b $0F

|059160| LSR A
|059161| STA.b $06

;---------------------------------------------------------------------------------------------------

|059163| PHX

|059164| TAX

|059165| LDA.w .eyeball_offset_x,X
|059168| SEC
|059169| SBC.b #$03
|05916B| STA.w $0FA8

|05916E| CLC
|05916F| ADC.b $00
|059171| STA.b ($90),Y

|059173| LDA.w .eyeball_offset_y,X
|059176| SEC
|059177| SBC.b #$12
|059179| STA.w $0FA9

|05917C| CLC
|05917D| ADC.b $02
|05917F| INY
|059180| STA.b ($90),Y

|059182| LDA.w .eyeball_char,X
|059185| INY
|059186| STA.b ($90),Y

|059188| LDA.b $05
|05918A| AND.b #$31
|05918C| ORA.w .eyeball_flip,X
|05918F| ORA.b #$0A
|059191| INY
|059192| STA.b ($90),Y

|059194| PLX

;---------------------------------------------------------------------------------------------------

|059195| REP #$20

|059197| LDA.b $0E
|059199| CLC
|05919A| ADC.b $90
|05919C| STA.b $90

|05919E| LDA.b $0E
|0591A0| LSR A
|0591A1| LSR A

|0591A2| CLC
|0591A3| ADC.b $92
|0591A5| STA.b $92

|0591A7| SEP #$20

|0591A9| LDY.b #$00
|0591AB| TYA

|0591AC| JSL CorrectOAMEntries_long

|0591B0| RTS

;===================================================================================================

SpriteSubspriteSlots_bank05:
|0591B1| db $00, $20, $40, $60

;===================================================================================================

BeamosLaser:
|0591B5| LDA.w $0E00,X
|0591B8| BNE .exit_a

|0591BA| JSR SpriteDraw_BeamosLaser

|0591BD| LDA.w $0DD0,X
|0591C0| BNE .active

|0591C2| DEC.w $0B6A

|0591C5| RTS

;---------------------------------------------------------------------------------------------------

.active
|0591C6| JSR CheckIfActive_bank05

|0591C9| LDY.b #$03

.next_subsprite
|0591CB| PHY
|0591CC| PHX

|0591CD| LDA.w $0D10,X
|0591D0| PHA

|0591D1| LDA.w $0D30,X
|0591D4| PHA

|0591D5| LDA.w $0D00,X
|0591D8| PHA

|0591D9| LDA.w $0D20,X
|0591DC| PHA

|0591DD| LDA.w $0E80,X
|0591E0| AND.b #$1F

|0591E2| LDY.w $0DC0,X

|0591E5| CLC
|0591E6| ADC.w SpriteSubspriteSlots_bank05,Y
|0591E9| TAX

|0591EA| PLA
|0591EB| STA.l $7FFF00,X

|0591EF| PLA
|0591F0| STA.l $7FFE80,X

|0591F4| PLA
|0591F5| STA.l $7FFE00,X

|0591F9| PLA
|0591FA| STA.l $7FFD80,X

|0591FE| PLX

|0591FF| INC.w $0E80,X

|059202| JSR MoveSpriteXY_bank05

|059205| PLY
|059206| DEY
|059207| BPL .next_subsprite

;---------------------------------------------------------------------------------------------------

|059209| LDA.w $0DF0,X
|05920C| BEQ .can_do_damage

|05920E| DEC A
|05920F| BNE .exit_a

|059211| STZ.w $0DD0,X

|059214| DEC.w $0B6A

.exit_a
|059217| RTS

;---------------------------------------------------------------------------------------------------

.can_do_damage
|059218| JSL CheckDamageToLink_same_layer_long
|05921C| BCS .collision

|05921E| JSR CheckSpriteTileCollision_bank05
|059221| BEQ .exit_b

.collision
|059223| LDA.b #$26 ; SFX3.26
|059225| JSL QueueSpriteSFX3WithPan

|059229| LDA.b #$10
|05922B| STA.w $0DF0,X

|05922E| JSR ZeroVelocityXY_bank05

|059231| LDA.b #$61 ; SPRITE 61
|059233| JSL SpawnSpriteDynamically
|059237| BMI .no_space

|059239| JSL SetSpawnedSpriteCoordinates

|05923D| LDA.b #$10
|05923F| STA.w $0DF0,Y

|059242| LDA.b #$03
|059244| STA.w $0E40,Y

|059247| LDA.b #$02
|059249| STA.w $0DB0,Y

|05924C| LDA.b #$40
|05924E| STA.w $0E60,Y

.no_space
|059251| LDA.b #$80
|059253| STA.w $0D20,X

.exit_b
|059256| RTS

;===================================================================================================
; Prevents the sprite from dying if the thing fails
;===================================================================================================
GetScreenCoordinates_bank05_wrapper:
|059257| JSR GetScreenCoordinates_bank05

|05925A| RTS

;===================================================================================================

SpriteDraw_BeamosLaser:
|05925B| JSR GetScreenCoordinates_bank05_wrapper

|05925E| PHX

|05925F| LDA.b #$1F
|059261| STA.b $0D

|059263| LDY.w $0DC0,X

|059266| CLC
|059267| ADC.w SpriteSubspriteSlots_bank05,Y
|05926A| TAX

|05926B| LDY.b #$00

.next_object
|05926D| LDA.l $7FFD80,X
|059271| STA.b $00

|059273| LDA.l $7FFE00,X
|059277| STA.b $01

|059279| LDA.l $7FFE80,X
|05927D| STA.b $02

|05927F| LDA.l $7FFF00,X
|059283| STA.b $03

|059285| REP #$20

|059287| LDA.b $00
|059289| SEC
|05928A| SBC.b $E2
|05928C| STA.b ($90),Y

|05928E| AND.w #$0100
|059291| STA.b $0E

|059293| LDA.b $02
|059295| SEC
|059296| SBC.b $E8

|059298| INY
|059299| STA.b ($90),Y

|05929B| CLC
|05929C| ADC.w #$0010
|05929F| CMP.w #$0100

|0592A2| SEP #$20
|0592A4| BCC .on_screen

|0592A6| LDA.b #$F0
|0592A8| STA.b ($90),Y

.on_screen
|0592AA| LDA.b #$5C
|0592AC| INY
|0592AD| STA.b ($90),Y

|0592AF| LDA.b $05
|0592B1| INY
|0592B2| STA.b ($90),Y

|0592B4| PHY

|0592B5| TYA
|0592B6| LSR A
|0592B7| LSR A
|0592B8| TAY

|0592B9| LDA.b $0F
|0592BB| STA.b ($92),Y

|0592BD| PLY
|0592BE| INY

|0592BF| DEX

|0592C0| DEC.b $0D
|0592C2| BPL .next_object

;---------------------------------------------------------------------------------------------------

|0592C4| PLX

|0592C5| RTS

;===================================================================================================

pool BeamosLaserHit

.offset_x
|0592C6| db  -4,  -1,   4,   0
|0592CA| db  -4,  -1,   4,   0

.offset_y
|0592CE| db  -4,  -1,  -4,  -1
|0592D2| db   4,   0,   4,   0

.prop
|0592D6| db $06, $46, $86, $C6

endpool

;---------------------------------------------------------------------------------------------------

BeamosLaserHit:
|0592DA| LDA.w $0DF0,X
|0592DD| BNE .delay

|0592DF| STZ.w $0DD0,X

.delay
|0592E2| JSR GetScreenCoordinates_bank05

|0592E5| PHX

;---------------------------------------------------------------------------------------------------

|0592E6| LDX.b #$03

.next_object
|0592E8| PHX

|0592E9| TXA
|0592EA| ASL A
|0592EB| TAX

|0592EC| REP #$20

|0592EE| LDA.b $00
|0592F0| CLC
|0592F1| ADC.w .offset_x,X
|0592F4| STA.b ($90),Y

|0592F6| AND.w #$0100
|0592F9| STA.b $0E

|0592FB| LDA.b $02
|0592FD| CLC
|0592FE| ADC.w .offset_y,X

|059301| INY
|059302| STA.b ($90),Y

|059304| CLC
|059305| ADC.w #$0010
|059308| CMP.w #$0100

|05930B| SEP #$20
|05930D| BCC .on_screen

|05930F| LDA.b #$F0
|059311| STA.b ($90),Y

.on_screen
|059313| PLX

|059314| LDA.b #$D6
|059316| INY
|059317| STA.b ($90),Y

|059319| LDA.b $05
|05931B| AND.b #$30
|05931D| ORA.w .prop,X

|059320| INY
|059321| STA.b ($90),Y

|059323| PHY

|059324| TYA
|059325| LSR A
|059326| LSR A
|059327| TAY

|059328| LDA.b $0F
|05932A| STA.b ($92),Y

|05932C| PLY
|05932D| INY

|05932E| DEX
|05932F| BPL .next_object

;---------------------------------------------------------------------------------------------------

|059331| PLX

|059332| RTS

;===================================================================================================

SparkFlip:
|059333| db $00, $40, $80, $C0

SparkDirection:
|059337| db $01, $03, $02, $00
|05933B| db $07, $05, $06, $04 ; MoN freaked out about these for some reason

;===================================================================================================

Sprite_5B_Spark_Clockwise:
Sprite_5C_Spark_Counterclockwise:
|05933F| JSL SpriteDraw_SingleLarge_long
|059343| JSR CheckIfActive_bank05

|059346| LDA.b $1A
|059348| AND.b #$01
|05934A| BNE .dont_flash

|05934C| LDA.w $0F50,X
|05934F| EOR.b #$06
|059351| STA.w $0F50,X

.dont_flash
|059354| LDA.w $0D80,X
|059357| BNE Spark_Main

;===================================================================================================

Spark_Init:
|059359| INC.w $0D80,X

|05935C| LDA.b #$01
|05935E| STA.w $0D40,X
|059361| STA.w $0D50,X

|059364| JSR CheckSpriteTileCollision_bank05
|059367| PHA

|059368| LDA.b #$FF
|05936A| STA.w $0D40,X
|05936D| STA.w $0D50,X

|059370| JSR CheckSpriteTileCollision_bank05

|059373| PLA
|059374| ORA.w $0E70,X

|059377| CMP.b #$04
|059379| BCS .collided_vertically

|05937B| LDY.b #$00

|05937D| AND.b #$01
|05937F| BNE .collided_right

.collided_left
|059381| INY

.collided_right
|059382| BRA .continue

.collided_vertically
|059384| LDY.b #$02

|059386| AND.b #$04
|059388| BNE .continue

.collided_up
|05938A| INY

.continue
|05938B| LDA.w $0E20,X
|05938E| CMP.b #$5C ; SPRITE 5C
|059390| BEQ .counterclockwise

|059392| INY ; +4
|059393| INY
|059394| INY
|059395| INY

.counterclockwise
|059396| LDA.w SparkDirection,Y
|059399| STA.w $0DE0,X

;===================================================================================================

Spark_Main:
|05939C| LDA.b $1A
|05939E| LSR A
|05939F| LSR A
|0593A0| AND.b #$03
|0593A2| TAY

|0593A3| LDA.w $0F50,X
|0593A6| AND.b #$3F
|0593A8| ORA.w SparkFlip,Y
|0593AB| STA.w $0F50,X

|0593AE| JSR MoveSpriteXY_bank05
|0593B1| JSL CheckDamageToLink_long

|0593B5| LDY.w $0DE0,X

|0593B8| LDA.w ProbeAndSparkCheckDirXSpeed,Y
|0593BB| STA.w $0D50,X

|0593BE| LDA.w ProbeAndSparkCheckDirYSpeed,Y
|0593C1| STA.w $0D40,X

|0593C4| JSR CheckSpriteTileCollision_bank05

|0593C7| LDA.w $0E10,X
|0593CA| BEQ .check_orthogonal_collision

|0593CC| CMP.b #$06
|0593CE| BNE .check_colinear_collision

|0593D0| LDY.w $0DE0,X

|0593D3| LDA.w OrthogonalNextDirections,Y
|0593D6| STA.w $0DE0,X

|0593D9| BRA .check_colinear_collision

.check_orthogonal_collision
|0593DB| LDY.w $0DE0,X

|0593DE| LDA.w $0E70,X
|0593E1| AND.w OrthogonalDirections,Y
|0593E4| BNE .check_colinear_collision

|0593E6| LDA.b #$0A
|0593E8| STA.w $0E10,X

.check_colinear_collision
|0593EB| LDY.w $0DE0,X

|0593EE| LDA.w $0E70,X
|0593F1| AND.w ColinearDirections,Y
|0593F4| BEQ .no_colinear_collision

|0593F6| LDA.w ColinearNextDirections,Y
|0593F9| STA.w $0DE0,X

.no_colinear_collision
|0593FC| LDY.w $0DE0,X

|0593FF| LDA.w ProbeAndSparkXSpeed,Y
|059402| ASL A
|059403| STA.w $0D50,X

|059406| LDA.w ProbeAndSparkYSpeed,Y
|059409| ASL A
|05940A| STA.w $0D40,X

|05940D| RTS

;===================================================================================================

Sprite_59_LostWoodsBird:
|05940E| LDA.w $0E00,X
|059411| BNE EXIT_05944B

|059413| LDA.w $0F50,X
|059416| AND.b #$BF

|059418| LDY.w $0D50,X
|05941B| BMI .moving_left

|05941D| ORA.b #$40

.moving_left
|05941F| STA.w $0F50,X

|059422| JSL SpriteDraw_SingleLarge_long
|059426| JSR CheckIfActive_bank05
|059429| JSR MoveSpriteXY_bank05
|05942C| JSR MoveSpriteZ_bank05

|05942F| LDA.w $0D80,X
|059432| JSL JumpTableLocal
|059436| dw LostWoodsBird_Descend
|059438| dw LostWoodsBird_Ascend

;===================================================================================================

LostWoodsBird_Descend:
|05943A| STZ.w $0DC0,X

|05943D| LDA.w $0F80,X
|059440| DEC A
|059441| STA.w $0F80,X

|059444| CMP.b #$F1
|059446| BPL EXIT_05944B

|059448| INC.w $0D80,X

;---------------------------------------------------------------------------------------------------

#EXIT_05944B:
|05944B| RTS

;===================================================================================================

LostWoodsBird_Ascend:
|05944C| LDA.w $0F80,X
|05944F| INC A
|059450| INC A
|059451| STA.w $0F80,X

|059454| CMP.b #$10
|059456| BMI .delay

|059458| STZ.w $0D80,X

.delay
|05945B| INC.w $0E80,X

|05945E| LDA.w $0E80,X
|059461| LSR A
|059462| AND.b #$01
|059464| STA.w $0DC0,X

|059467| RTS

;===================================================================================================

Sprite_5A_LostWoodsSquirrel:
|059468| LDA.w $0E00,X
|05946B| BNE .exit

|05946D| LDA.w $0F50,X
|059470| AND.b #$BF

|059472| LDY.w $0D50,X
|059475| BMI .moving_left

|059477| ORA.b #$40

.moving_left
|059479| STA.w $0F50,X

|05947C| JSL SpriteDraw_SingleLarge_long

|059480| JSR CheckIfActive_bank05

|059483| JSR MoveSpriteXY_bank05
|059486| JSR MoveSpriteZ_bank05

|059489| LDA.w $0F80,X
|05948C| DEC A
|05948D| DEC A
|05948E| STA.w $0F80,X

|059491| LDA.w $0F70,X
|059494| BPL .airborne

|059496| STZ.w $0F70,X

|059499| LDA.b #$10
|05949B| STA.w $0F80,X

|05949E| LDA.b #$0C
|0594A0| STA.w $0DF0,X

.airborne
|0594A3| LDA.b #$00

|0594A5| LDY.w $0DF0,X
|0594A8| BEQ .landing

|0594AA| INC A

.landing
|0594AB| STA.w $0DC0,X

.exit
|0594AE| RTS

;===================================================================================================

pool Sprite_58_Crab

.speed_x ; bleeds into next
|0594AF| db  28, -28

.speed_y
|0594B1| db   0,   0,  12, -12

endpool

;---------------------------------------------------------------------------------------------------

Sprite_58_Crab:
|0594B5| JSR SpriteDraw_Crab

|0594B8| JSR CheckIfActive_bank05
|0594BB| JSR HandleSpriteRecoil_bank05
|0594BE| JSR CheckDamageToAndFromLink_bank05

|0594C1| JSR MoveSpriteXY_bank05
|0594C4| JSR CheckSpriteTileCollision_bank05
|0594C7| BNE .collision

|0594C9| LDA.w $0DF0,X
|0594CC| BNE .dont_turn

.collision
|0594CE| JSL GetRandomNumber
|0594D2| AND.b #$3F
|0594D4| ADC.b #$20
|0594D6| STA.w $0DF0,X

|0594D9| AND.b #$03
|0594DB| STA.w $0DE0,X

.dont_turn
|0594DE| LDY.w $0DE0,X

|0594E1| LDA.w .speed_x,Y
|0594E4| STA.w $0D50,X

|0594E7| LDA.w .speed_y,Y
|0594EA| STA.w $0D40,X

|0594ED| INC.w $0E80,X

|0594F0| LDA.w $0E80,X
|0594F3| LSR A

|0594F4| CPY.b #$02
|0594F6| BCC .horizontal

.vertical
|0594F8| LSR A
|0594F9| LSR A

.horizontal
|0594FA| AND.b #$01
|0594FC| STA.w $0DC0,X

|0594FF| RTS

;===================================================================================================

pool SpriteDraw_Crab

.offset_x
|059500| dw  -8,   8
|059504| dw  -8,   8

.char
|059508| db $8E, $8E
|05950A| db $AE, $AE

.flip
|05950C| db $00, $40
|05950E| db $00, $40

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Crab:
|059510| JSR GetScreenCoordinates_bank05

|059513| LDA.w $0DC0,X
|059516| ASL A
|059517| STA.b $06

|059519| PHX

|05951A| LDX.b #$01

.next_object
|05951C| PHX

|05951D| TXA
|05951E| CLC
|05951F| ADC.b $06
|059521| PHA

|059522| ASL A
|059523| TAX

|059524| REP #$20

|059526| LDA.b $00
|059528| CLC
|059529| ADC.w .offset_x,X
|05952C| STA.b ($90),Y

|05952E| AND.w #$0100
|059531| STA.b $0E

|059533| LDA.b $02
|059535| INY
|059536| STA.b ($90),Y

|059538| CLC
|059539| ADC.w #$0010
|05953C| CMP.w #$0100

|05953F| SEP #$20
|059541| BCC .on_screen

|059543| LDA.b #$F0
|059545| STA.b ($90),Y

.on_screen
|059547| PLX

|059548| LDA.w .char,X
|05954B| INY
|05954C| STA.b ($90),Y

|05954E| LDA.w .flip,X
|059551| ORA.b $05
|059553| INY
|059554| STA.b ($90),Y

|059556| PHY

|059557| TYA
|059558| LSR A
|059559| LSR A
|05955A| TAY

|05955B| LDA.b #$02
|05955D| ORA.b $0F
|05955F| STA.b ($92),Y

|059561| PLY
|059562| INY

|059563| PLX
|059564| DEX
|059565| BPL .next_object

;---------------------------------------------------------------------------------------------------

|059567| PLX

|059568| JSL DrawSpriteShadow_long

|05956C| RTS

;===================================================================================================

Sprite_57_DesertStatue:
|05956D| JSR SpriteDraw_DesertStatue
|059570| JSR CheckIfActive_bank05
|059573| JSL CheckDamageToLink_same_layer_long

|059577| PHP
|059578| BCC .no_collision

|05957A| JSL AbortMovement
|05957E| JSL RepelDash_long

.no_collision
|059582| PLP
|059583| LDA.w $0DF0,X
|059586| BNE .exit

|059588| LDA.w $0D80,X
|05958B| BMI .exit
|05958D| BNE DesertStatue_Moving

|05958F| LDA.w $02F0
|059592| BNE DesertStatue_Activate

.exit
|059594| RTS

;===================================================================================================

DesertStatue_Activate:
|059595| STA.w $0D80,X

|059598| LDA.b #$80
|05959A| STA.w $0DF0,X

|05959D| LDA.b #$07 ; SFX1.07
|05959F| STA.w $012D

;===================================================================================================

DesertStatue_Moving:
|0595A2| BCC .no_collision

|0595A4| LDA.b $46
|0595A6| BNE .no_collision

|0595A8| LDA.b #$10
|0595AA| STA.b $46

|0595AC| LDA.b #$20
|0595AE| JSL ApplySpeedTowardsLink_long

|0595B2| LDA.b $01
|0595B4| STA.b $28

|0595B6| LDA.b $00
|0595B8| STA.b $27

;---------------------------------------------------------------------------------------------------

.no_collision
|0595BA| LDY.w $0DE0,X

|0595BD| LDA.w .speed_x,Y
|0595C0| STA.w $0D50,X

|0595C3| LDA.w .speed_y,Y
|0595C6| STA.w $0D40,X

|0595C9| JSR MoveSpriteXY_bank05
|0595CC| JSR CheckSpriteTileCollision_bank05
|0595CF| BEQ .stay_true

|0595D1| LDY.w $0DE0,X

|0595D4| LDA.w .next_direction,Y
|0595D7| STA.w $0DE0,X

;---------------------------------------------------------------------------------------------------

.stay_true
|0595DA| LDA.b #$01
|0595DC| STA.w $02E4

|0595DF| INC.w $0E80,X

|0595E2| LDA.w $0E80,X
|0595E5| AND.b #$01
|0595E7| BNE .exit

|0595E9| INC.w $0ED0,X

|0595EC| LDA.w $0ED0,X
|0595EF| CMP.b #$82
|0595F1| BNE .exit

|0595F3| LDA.b #$80
|0595F5| STA.w $0D80,X

|0595F8| STZ.w $02E4

.exit
|0595FB| RTS

;---------------------------------------------------------------------------------------------------
; Weird shared table
#Speed16_bank05:

.speed_x ; bleeds into next
|0595FC| db  16, -16

.speed_y
|0595FE| db   0,   0,  16, -16

.next_direction
|059602| db $03, $02, $00, $01

;===================================================================================================

pool SpriteDraw_DesertStatue

.oam_groups
|059606| dw  -8,  -8 : db $8E, $00, $00, $02
|05960E| dw   8,  -8 : db $8E, $40, $00, $02
|059616| dw  -8,   8 : db $AE, $00, $00, $02
|05961E| dw   8,   8 : db $AE, $40, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_DesertStatue:
|059626| LDA.w $0DF0,X
|059629| CMP.b #$01
|05962B| BNE .no_sfx

|05962D| LDY.b #$1B ; SFX3.1B
|05962F| STY.w $012F

|059632| LDY.b #$05 ; SFX1.05
|059634| STY.w $012D

.no_sfx
|059637| LSR A
|059638| AND.b #$01
|05963A| CLC
|05963B| ADC.w $0FD8
|05963E| STA.w $0FD8

|059641| JSR GetDirectionTowardsLink_bank05

|059644| LDA.b $0F
|059646| CLC
|059647| ADC.b #$20
|059649| CMP.b #$40
|05964B| BCS .use_current_region

|05964D| LDA.b $0E
|05964F| CLC
|059650| ADC.b #$20
|059652| CMP.b #$40
|059654| BCS .use_current_region

|059656| LDA.b #$10
|059658| JSL AllocateOAMInRegionB

.use_current_region
|05965C| REP #$20

|05965E| LDA.w #.oam_groups
|059661| STA.b $08

|059663| SEP #$20

|059665| LDA.b #$04
|059667| JMP.w TabulatedSpriteDraw_bank05

;===================================================================================================

BlockFireball:

.offset_x_low
|05966A| db   4,   4,  -4,  16

.shield_sides ; bleeds into next
|05966E| db $03, $02

.offset_x_high ; bleeds into next
|059670| db   0,   0,  -1

.offset_y_low ; bleeds into next
|059673| db   0,  16

.hitbox_w ; bleeds into next
|059675| db   8,   8

.hitbox_h
|059677| db   4,   4,   8,   8

;===================================================================================================

Sprite_55_Zora:
|05967B| LDA.w $0E90,X
|05967E| BNE Fireball

|059680| JMP.w Zora_Main

;===================================================================================================

Fireball:
|059683| STA.w $0BA0,X

|059686| LDA.w $0DF0,X
|059689| BEQ .skip_allocation

|05968B| LDA.b #$04
|05968D| JSL AllocateOAMInRegionC

.skip_allocation
|059691| JSL SpriteDraw_SingleSmall_long
|059695| JSR CheckIfActive_bank05

|059698| JSL SpawnFireballTail

|05969C| JSL CheckDamageToLink_long
|0596A0| BCC .no_damage

.die_forever
|0596A2| STZ.w $0DD0,X

|0596A5| RTS

;---------------------------------------------------------------------------------------------------

.no_damage
|0596A6| JSR MoveSpriteXY_bank05
|0596A9| LDA.b $1B
|0596AB| BEQ .ignore_collision

|0596AD| LDA.w $0E00,X
|0596B0| BNE .ignore_collision

|0596B2| TXA
|0596B3| EOR.b $1A
|0596B5| AND.b #$03
|0596B7| BNE .ignore_collision

|0596B9| JSR CheckSpriteTileCollision_bank05
|0596BC| BNE .die_forever

.ignore_collision
|0596BE| LDA.w $02E0
|0596C1| ORA.w $037B
|0596C4| BNE .exit

|0596C6| LDA.w $0308
|0596C9| BMI .exit

|0596CB| LDA.l $7EF35A
|0596CF| CMP.b #$02
|0596D1| BCC .exit

|0596D3| LDA.b $EE
|0596D5| CMP.w $0F20,X
|0596D8| BNE .exit

|0596DA| JSL SetupSpriteHitbox_long

|0596DE| LDA.b $2F
|0596E0| LSR A
|0596E1| TAY

|0596E2| LDA.b $3C
|0596E4| BEQ .sword_not_out

; separate index for when sword is out
|0596E6| LDA.w BlockFireball.shield_sides,Y
|0596E9| TAY

.sword_not_out
|0596EA| LDA.b $22
|0596EC| CLC
|0596ED| ADC.w BlockFireball.offset_x_low,Y
|0596F0| STA.b $00

|0596F2| LDA.b $23
|0596F4| ADC.w BlockFireball.offset_x_high,Y
|0596F7| STA.b $08

|0596F9| LDA.w BlockFireball.hitbox_w,Y
|0596FC| STA.b $02

|0596FE| LDA.b $20
|059700| CLC
|059701| ADC.w BlockFireball.offset_y_low,Y
|059704| STA.b $01

|059706| LDA.b $21
|059708| ADC.b #$00
|05970A| STA.b $09

|05970C| LDA.w BlockFireball.hitbox_h,Y
|05970F| STA.b $03

|059711| JSL CheckIfHitboxesOverlap_long
|059715| BCC .exit

|059717| JSL PlaceWeaponTinkAtSprite_forced

|05971B| STZ.w $0DD0,X

|05971E| LDA.b #$06 ; SFX2.06
|059720| JSL QueueSpriteSFX2WithPan

.exit
|059724| RTS

;===================================================================================================

Zora_Main:
|059725| LDA.w $0D80,X
|059728| BNE .just_draw

|05972A| JSL GetScreenCoordinates_long
|05972E| BRA .continue

.just_draw
|059730| JSR SpriteDraw_Zora

.continue
|059733| JSR CheckIfActive_bank05

|059736| LDA.w $0D80,X
|059739| BEQ Zora_Submerged

|05973B| DEC A
|05973C| BEQ .surfacing

|05973E| DEC A
|05973F| BEQ .attacking

|059741| JMP.w Zora_Submerge

.attacking
|059744| JMP.w Zora_Attack

.surfacing
|059747| JMP.w Zora_Surface

;===================================================================================================

pool Zora_Submerged

.offset_low
|05974A| db -32, -24, -16,  -8,   8,  16,  24,  32

.offset_high
|059752| db  -1,  -1,  -1,  -1,   0,   0,   0,   0

endpool

;---------------------------------------------------------------------------------------------------

Zora_Submerged:
|05975A| LDA.w $0DF0,X
|05975D| STA.w $0BA0,X
|059760| BNE .exit

|059762| JSL GetRandomNumber
|059766| AND.b #$07
|059768| TAY

|059769| LDA.w $0D90,X
|05976C| CLC
|05976D| ADC.w .offset_low,Y
|059770| STA.w $0D10,X

|059773| LDA.w $0DA0,X
|059776| ADC.w .offset_high,Y
|059779| STA.w $0D30,X

|05977C| JSL GetRandomNumber
|059780| AND.b #$07
|059782| TAY

|059783| LDA.w $0DB0,X
|059786| CLC
|059787| ADC.w .offset_low,Y
|05978A| STA.w $0D00,X

|05978D| LDA.w $0EB0,X
|059790| ADC.w .offset_high,Y
|059793| STA.w $0D20,X

|059796| JSL Get16BitSpriteCoords_long
|05979A| JSR CheckSpriteTileCollision_bank05

; Only spawn on water
|05979D| LDA.w $0FA5
|0597A0| CMP.b #$08 ; TILETYPE 08
|0597A2| BNE .exit

; Keep trying until water is selected
|0597A4| LDA.b #$7F
|0597A6| STA.w $0DF0,X

|0597A9| INC.w $0D80,X

|0597AC| LDA.w $0E60,X
|0597AF| ORA.b #$40
|0597B1| STA.w $0E60,X

.exit
|0597B4| RTS

;===================================================================================================

ZoraSurfacing_anim_step:
|0597B5| db $04, $03, $02, $01, $02, $01, $02, $01
|0597BD| db $02, $01, $02, $01, $02, $01, $00, $00

;===================================================================================================

Zora_Surface:
|0597C5| LDA.w $0DF0,X
|0597C8| STA.w $0BA0,X
|0597CB| BNE .delay

|0597CD| INC.w $0D80,X

|0597D0| LDA.b #$7F
|0597D2| STA.w $0DF0,X

|0597D5| LDA.w $0E60,X
|0597D8| AND.b #$BF
|0597DA| STA.w $0E60,X

|0597DD| RTS

;---------------------------------------------------------------------------------------------------

.delay
|0597DE| LSR A
|0597DF| LSR A
|0597E0| LSR A
|0597E1| TAY

|0597E2| LDA.w ZoraSurfacing_anim_step,Y
|0597E5| STA.w $0DC0,X

|0597E8| RTS

;===================================================================================================

pool Zora_Attack

.anim_step
|0597E9| db $05, $05, $06, $0A, $06, $05, $05, $05

endpool

;---------------------------------------------------------------------------------------------------

Zora_Attack:
|0597F1| JSR CheckDamageToAndFromLink_bank05

|0597F4| LDA.w $0DF0,X
|0597F7| BNE .delay

|0597F9| INC.w $0D80,X

|0597FC| LDA.b #$17
|0597FE| STA.w $0DF0,X

|059801| RTS

;---------------------------------------------------------------------------------------------------

.delay
|059802| CMP.b #$30
|059804| BNE .dont_shoot

|059806| PHA
|059807| JSL ShootFireball
|05980B| PLA

.dont_shoot
|05980C| LSR A
|05980D| LSR A
|05980E| LSR A
|05980F| LSR A
|059810| TAY

|059811| LDA.w .anim_step,Y
|059814| STA.w $0DC0,X

|059817| RTS

;===================================================================================================

pool Zora_Submerge

.anim_step
|059818| db $0C, $0B, $09, $08
|05981C| db $07, $00, $00, $00
|059820| db $00, $00, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

Zora_Submerge:
|059824| LDA.w $0DF0,X
|059827| BNE .delay

|059829| LDA.b #$80
|05982B| STA.w $0DF0,X

|05982E| STZ.w $0DC0,X
|059831| STZ.w $0D80,X

|059834| RTS

;---------------------------------------------------------------------------------------------------

.delay
|059835| LSR A
|059836| LSR A
|059837| TAY

|059838| LDA.w .anim_step,Y
|05983B| STA.w $0DC0,X

|05983E| RTS

;===================================================================================================

pool SpriteDraw_Zora

.offset_x
|05983F| dw   4,   4
|059843| dw   0,   0
|059847| dw   0,   0
|05984B| dw   0,   0
|05984F| dw   0,   0
|059853| dw   0,   0
|059857| dw   0,   0
|05985B| dw   0,   0
|05985F| dw   0,   0
|059863| dw  -4,  11
|059867| dw   0,   4
|05986B| dw  -8,  18
|05986F| dw  -8,  18

.offset_y
|059873| dw   4,   4
|059877| dw   0,   0
|05987B| dw   0,   0
|05987F| dw   0,  -3
|059883| dw   0,  -3
|059887| dw  -3,  -3
|05988B| dw  -3,  -3
|05988F| dw  -3,  -3
|059893| dw  -6,  -6
|059897| dw  -8,  -9
|05989B| dw  -3,   5
|05989F| dw -10, -11
|0598A3| dw -10, -11

.char
|0598A7| db $A8, $A8
|0598A9| db $88, $88
|0598AB| db $88, $88
|0598AD| db $88, $A4
|0598AF| db $88, $A4
|0598B1| db $A4, $A4
|0598B3| db $A6, $A6
|0598B5| db $A4, $C0
|0598B7| db $8A, $8A
|0598B9| db $AE, $AF
|0598BB| db $A6, $8D
|0598BD| db $CF, $CF
|0598BF| db $DF, $DF

.prop
|0598C1| db $25, $25
|0598C3| db $25, $25
|0598C5| db $E5, $E5
|0598C7| db $25, $20
|0598C9| db $E5, $20
|0598CB| db $20, $20
|0598CD| db $20, $20
|0598CF| db $20, $24
|0598D1| db $25, $25
|0598D3| db $24, $64
|0598D5| db $20, $26
|0598D7| db $24, $64
|0598D9| db $24, $64

.size
|0598DB| db $00, $00
|0598DD| db $02, $02
|0598DF| db $02, $02
|0598E1| db $02, $02
|0598E3| db $02, $02
|0598E5| db $02, $02
|0598E7| db $02, $02
|0598E9| db $02, $02
|0598EB| db $02, $02
|0598ED| db $00, $00
|0598EF| db $02, $00
|0598F1| db $00, $00
|0598F3| db $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Zora:
|0598F5| JSR GetScreenCoordinates_bank05

|0598F8| LDA.w $0DC0,X
|0598FB| ASL A
|0598FC| STA.b $06

|0598FE| PHX

|0598FF| LDX.b #$01

.next_object
|059901| PHX

|059902| TXA
|059903| CLC
|059904| ADC.b $06
|059906| PHA

|059907| ASL A
|059908| TAX

|059909| REP #$20

|05990B| LDA.b $00
|05990D| CLC
|05990E| ADC.w .offset_x,X
|059911| STA.b ($90),Y

|059913| AND.w #$0100
|059916| STA.b $0E

|059918| LDA.b $02
|05991A| CLC
|05991B| ADC.w .offset_y,X

|05991E| INY
|05991F| STA.b ($90),Y

|059921| CLC
|059922| ADC.w #$0010
|059925| CMP.w #$0100

|059928| SEP #$20
|05992A| BCC .on_screen

|05992C| LDA.b #$F0
|05992E| STA.b ($90),Y

.on_screen
|059930| PLX

|059931| LDA.w .char,X
|059934| INY
|059935| STA.b ($90),Y

|059937| LDA.b #$0F
|059939| STA.b $0D

; Could have just done BIT.b #$0F
|05993B| LDA.w .prop,X
|05993E| BIT.b $0D
|059940| BNE .include_calced_prop

|059942| ORA.b $05

.include_calced_prop
|059944| INY

|059945| STA.b ($90),Y

|059947| PHY

|059948| TYA
|059949| LSR A
|05994A| LSR A
|05994B| TAY

|05994C| LDA.w .size,X
|05994F| ORA.b $0F
|059951| STA.b ($92),Y

|059953| PLY
|059954| INY

|059955| PLX
|059956| DEX
|059957| BPL .next_object

|059959| PLX

|05995A| RTS

;===================================================================================================

Sprite_52_KingZora:
|05995B| JSR SpriteDraw_KingZora
|05995E| JSR CheckIfActive_bank05

|059961| LDA.w $0D80,X
|059964| JSL JumpTableLocal
|059968| dw KingZora_Idle
|05996A| dw KingZora_TheRumbling
|05996C| dw KingZora_Surface
|05996E| dw KingZora_Talking
|059970| dw KingZora_Submerge

;===================================================================================================

UNREACHABLE_059972:
|059972| db $28, $78, $C8, $78
|059976| db $60, $50, $70, $50

;===================================================================================================

KingZora_Idle:
|05997A| REP #$20

|05997C| LDA.b $22
|05997E| SEC
|05997F| SBC.w $0FD8
|059982| CLC
|059983| ADC.w #$0010
|059986| CMP.w #$0020
|059989| BCS .out_of_range

|05998B| LDA.b $20
|05998D| SEC
|05998E| SBC.w $0FDA
|059991| CLC
|059992| ADC.w #$0030
|059995| CMP.w #$0060
|059998| BCS .out_of_range

|05999A| SEP #$20

|05999C| JSL CancelDash_long

|0599A0| LDA.b #$7F
|0599A2| STA.w $0DF0,X

|0599A5| LDA.b #$35 ; SFX2.35
|0599A7| STA.w $012E

|0599AA| INC.w $0D80,X

;---------------------------------------------------------------------------------------------------

|0599AD| LDY.b #$0F

.next_sprite
|0599AF| CPY.w $0FA0
|0599B2| BEQ .this_sprite_can_live

|0599B4| LDA.w $0CAA,Y
|0599B7| BMI .this_sprite_can_live

|0599B9| PHX
|0599BA| TYX
|0599BB| PHY

|0599BC| LDA.w $0DD0,X
|0599BF| CMP.b #$0A
|0599C1| BNE .not_carried

|0599C3| STZ.w $0308
|0599C6| STZ.w $0309

.not_carried
|0599C9| JSL KillThisSprite

|0599CD| PLY
|0599CE| PLX

.this_sprite_can_live
|0599CF| DEY
|0599D0| BPL .next_sprite

;---------------------------------------------------------------------------------------------------

.out_of_range
|0599D2| SEP #$20

|0599D4| RTS

;===================================================================================================

ZoraShake:
.low
|0599D5| db   1,  -1

.high
|0599D7| db   0,  -1

;===================================================================================================

KingZora_TheRumbling:
|0599D9| LDA.w $0DF0,X
|0599DC| BNE .delay

|0599DE| INC.w $0D80,X

|0599E1| LDA.b #$7F
|0599E3| STA.w $0DF0,X

|0599E6| STZ.w $011A
|0599E9| STZ.w $011B

|0599EC| LDA.b #$04
|0599EE| STA.w $0DC0,X

|0599F1| RTS

.delay
|0599F2| AND.b #$01
|0599F4| TAY

|0599F5| LDA.w ZoraShake.low,Y
|0599F8| STA.w $011A

|0599FB| LDA.w ZoraShake.high,Y
|0599FE| STA.w $011B

|059A01| LDA.b #$01
|059A03| STA.w $02E4

|059A06| RTS

;===================================================================================================

pool KingZora_Surface

.anim_step
|059A07| db $00, $00, $00, $03, $09, $08, $07, $06
|059A0F| db $09, $08, $07, $06, $05, $04, $05, $04

endpool

;---------------------------------------------------------------------------------------------------

KingZora_Surface:
|059A17| LDA.w $0DF0,X
|059A1A| BNE .delay

|059A1C| INC.w $0D80,X

|059A1F| LDA.b #$7F
|059A21| STA.w $0DF0,X

|059A24| RTS

;---------------------------------------------------------------------------------------------------

.delay
|059A25| CMP.b #$1C
|059A27| BNE .dont_splash

|059A29| PHA

|059A2A| LDA.b #$0F
|059A2C| STA.w $0E10,X

|059A2F| JSR SpawnBigSplash

|059A32| PLA

.dont_splash
|059A33| LSR A
|059A34| LSR A
|059A35| LSR A
|059A36| TAY

|059A37| LDA.w .anim_step,Y
|059A3A| STA.w $0DC0,X

|059A3D| RTS

;===================================================================================================

pool KingZora_Talking

.anim_step
|059A3E| db $00, $00, $01, $02
|059A42| db $01, $02, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

KingZora_Talking:
|059A46| LDA.w $0DF0,X
|059A49| BNE .delay

|059A4B| INC.w $0D80,X

|059A4E| LDA.b #$24
|059A50| STA.w $0DF0,X

|059A53| RTS

;---------------------------------------------------------------------------------------------------

.delay
|059A54| LSR A ; /16
|059A55| LSR A
|059A56| LSR A
|059A57| LSR A
|059A58| TAY

|059A59| LDA.w .anim_step,Y
|059A5C| STA.w $0DC0,X

|059A5F| LDA.w $0DF0,X
|059A62| CMP.b #$50
|059A64| BEQ KingZora_WelcomeToZoraMart

|059A66| CMP.b #$4F
|059A68| BEQ KingZora_SellingFlippers

|059A6A| CMP.b #$4E
|059A6C| BEQ KingZora_HandlePayment

|059A6E| CMP.b #$4D
|059A70| BEQ KingZora_HandleReceipt

|059A72| RTS

;===================================================================================================

KingZora_WelcomeToZoraMart:
|059A73| LDA.b #$40 ; MESSAGE 0140

;===================================================================================================

KingZora_SendYouAMessage:
|059A75| STA.w $1CF0

|059A78| LDA.b #$01
|059A7A| STA.w $1CF1

|059A7D| JSL ShowMessageMinimal

|059A81| RTS

;===================================================================================================

KingZora_SellingFlippers:
|059A82| LDA.w $1CE8
|059A85| BNE KingZora_OfferRejected

|059A87| LDA.b #$41 ; MESSAGE 0141
|059A89| JSR KingZora_SendYouAMessage

|059A8C| RTS

;===================================================================================================

KingZora_HandlePayment:
|059A8D| LDA.w $1CE8
|059A90| BNE KingZora_FailedToSell

|059A92| REP #$20

|059A94| LDA.l $7EF360
|059A98| SEC
|059A99| SBC.w #$01F4 ; take 500 rupees
|059A9C| BCC KingZora_FailedToSell

|059A9E| STA.l $7EF360

|059AA2| SEP #$20

|059AA4| LDA.b #$42 ; MESSAGE 0142
|059AA6| JSR KingZora_SendYouAMessage

|059AA9| INC.w $0E90,X

|059AAC| RTS

;===================================================================================================

KingZora_OfferRejected:
|059AAD| LDA.b #$44 ; MESSAGE 0144
|059AAF| JSR KingZora_SendYouAMessage

|059AB2| LDA.b #$30
|059AB4| STA.w $0DF0,X

|059AB7| RTS

;===================================================================================================

KingZora_FailedToSell:
|059AB8| SEP #$20

|059ABA| LDA.b #$43 ; MESSAGE 0143
|059ABC| JSR KingZora_SendYouAMessage

|059ABF| LDA.b #$30
|059AC1| STA.w $0DF0,X

|059AC4| RTS

;===================================================================================================

KingZora_HandleReceipt:
|059AC5| LDA.w $0E90,X
|059AC8| BEQ .exit

|059ACA| JSL RegurgitateFlippers

.exit
|059ACE| RTS

;===================================================================================================

pool KingZora_Submerge

.anim_step
|059ACF| db $0C, $0C, $0C, $0C, $0C, $0C, $0B, $0B
|059AD7| db $0B, $0B, $0B, $0A, $0A, $0A, $0A, $03
|059ADF| db $03, $03, $03, $03, $03

endpool

;---------------------------------------------------------------------------------------------------

KingZora_Submerge:
|059AE4| LDA.w $0DF0,X
|059AE7| BNE .still_diving

|059AE9| JSL KillThisSprite

|059AED| STZ.w $02E4

|059AF0| RTS

.still_diving
|059AF1| CMP.b #$1D
|059AF3| BNE .no_splash

|059AF5| PHA

|059AF6| LDA.b #$0F
|059AF8| STA.w $0E10,X

|059AFB| JSR SpawnBigSplash

|059AFE| PLA

.no_splash
|059AFF| LSR A
|059B00| TAY

|059B01| LDA.w .anim_step,Y
|059B04| STA.w $0DC0,X

|059B07| RTS

;===================================================================================================

pool SpawnBigSplash

.offset_x_low
|059B08| db  -8,  -5,   4,  13,  16,  13,   4,  -5

.offset_x_high
|059B10| db  -1,  -1,   0,   0,   0,   0,   0,  -1

.offset_y_low
|059B18| db   4,  -5,  -8,  -5,   4,  13,  16,  13

.offset_y_high
|059B20| db   0,  -1,  -1,  -1,   0,   0,   0,   0

.speed_x
|059B28| db  -8,  -6,   0,   6,   8,   6,   0,  -6

.speed_y
|059B30| db   0,  -6,  -8,  -6,   0,   6,   8,   6

endpool

;===================================================================================================

Arrghus_SpawnSplash:
|059B38| PHB
|059B39| PHK
|059B3A| PLB

|059B3B| JSR SpawnBigSplash

|059B3E| PLB

|059B3F| RTL

;===================================================================================================

SpawnBigSplash:
|059B40| LDA.b #$24 ; SFX2.24
|059B42| JSL QueueSpriteSFX2WithPan

|059B46| NOP ; why?

|059B47| LDA.b #$07
|059B49| STA.b $0D

.next
|059B4B| LDA.b #$08 ; SPRITE 08
|059B4D| JSL SpawnSpriteDynamically
|059B51| BMI .no_space

|059B53| LDA.b #$03
|059B55| STA.w $0DD0,Y

|059B58| PHX

|059B59| LDX.b $0D

|059B5B| LDA.w .offset_x_low,X
|059B5E| SEC
|059B5F| SBC.b #$04
|059B61| CLC
|059B62| ADC.b $00
|059B64| STA.w $0D10,Y

|059B67| LDA.b $01
|059B69| ADC.w .offset_x_high,X
|059B6C| STA.w $0D30,Y

|059B6F| LDA.w .offset_y_low,X
|059B72| SEC
|059B73| SBC.b #$04
|059B75| CLC
|059B76| ADC.b $02
|059B78| STA.w $0D00,Y

|059B7B| LDA.b $03
|059B7D| ADC.w .offset_y_high,X
|059B80| STA.w $0D20,Y

|059B83| LDA.w .speed_x,X
|059B86| STA.w $0D50,Y

|059B89| LDA.w .speed_y,X
|059B8C| STA.w $0D40,Y

|059B8F| TXA
|059B90| STA.w $0D90,Y

|059B93| PHY ; !WEIRD not necessary; indicative of an old RNG, possibly SMW's

|059B94| JSL GetRandomNumber

|059B98| PLY

|059B99| AND.b #$0F
|059B9B| ADC.b #$18
|059B9D| STA.w $0F80,Y

|059BA0| LDA.b #$01
|059BA2| STA.w $0D80,Y

|059BA5| LDA.b #$00
|059BA7| STA.w $0F70,Y

|059BAA| LDA.w $0E60,Y
|059BAD| ORA.b #$40
|059BAF| STA.w $0E60,Y
|059BB2| STA.w $0BA0,Y

|059BB5| PLX

.no_space
|059BB6| DEC.b $0D
|059BB8| BPL .next

|059BBA| RTS

;===================================================================================================

pool SpriteDraw_KingZora

.offset_x
|059BBB| db  -8,   8,  -8,   8
|059BBF| db  -8,   8,  -8,   8
|059BC3| db  -8,   8,  -8,   8
|059BC7| db  -8,   8,  -8,   8
|059BCB| db   0,   0,   0,   0
|059BCF| db   0,   0,   0,   0
|059BD3| db  -8,   8,  -8,   8
|059BD7| db  -8,   8,  -8,   8
|059BDB| db  -8,   8,  -8,   8
|059BDF| db  -8,   8,  -8,   8
|059BE3| db  -9,   9,  -9,   9
|059BE7| db -10,  10, -10,  10
|059BEB| db -11,  11, -11,  11

.offset_y
|059BEF| db -18, -18,  -2,  -2
|059BF3| db -18, -18,  -2,  -2
|059BF7| db -18, -18,  -2,  -2
|059BFB| db -12, -12,   4,   4
|059BFF| db   0,   0,   0,   0
|059C03| db   0,   0,   0,   0
|059C07| db  -8,  -8,   8,   8
|059C0B| db  -8,  -8,   8,   8
|059C0F| db  -8,  -8,   8,   8
|059C13| db  -8,  -8,   8,   8
|059C17| db  -5,  -5,   5,   5
|059C1B| db  -5,  -5,   5,   5
|059C1F| db  -5,  -5,   5,   5

.char
|059C23| db $C0, $C0, $E0, $E0
|059C27| db $C2, $EA, $E2, $E2
|059C2B| db $EA, $C2, $E2, $E2
|059C2F| db $C0, $C0, $E4, $E6
|059C33| db $88, $88, $88, $88
|059C37| db $88, $88, $88, $88
|059C3B| db $C4, $C6, $E4, $E6
|059C3F| db $C6, $C4, $E6, $E4
|059C43| db $E6, $E4, $C6, $C4
|059C47| db $E4, $E6, $C4, $C6
|059C4B| db $88, $88, $88, $88
|059C4F| db $88, $88, $88, $88
|059C53| db $88, $88, $88, $88

.prop
|059C57| db $00, $40, $00, $40
|059C5B| db $00, $40, $00, $40
|059C5F| db $00, $40, $00, $40
|059C63| db $00, $40, $05, $05
|059C67| db $05, $05, $05, $05
|059C6B| db $C5, $C5, $C5, $C5
|059C6F| db $05, $05, $05, $05
|059C73| db $45, $45, $45, $45
|059C77| db $C5, $C5, $C5, $C5
|059C7B| db $85, $85, $85, $85
|059C7F| db $04, $44, $84, $C4
|059C83| db $04, $44, $84, $C4
|059C87| db $04, $44, $84, $C4

;---------------------------------------------------------------------------------------------------

.whirlpool_offset_x
|059C8B| db -23,  23,  23,  23
|059C8F| db -20, -15,  13,  18

.whirlpool_offset_y
|059C93| db  -8,  -8,  -8,  -8
|059C97| db  -7,   0,   0,  -7

.whirlpool_char
|059C9B| db $AE, $AE, $AE, $AE
|059C9F| db $AC, $AC, $AC, $AC

.whirlpool_prop
|059CA3| db $00, $40, $40, $40
|059CA7| db $00, $00, $40, $40

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_KingZora:
|059CAB| JSR GetScreenCoordinates_bank05

|059CAE| LDA.w $0D80,X
|059CB1| CMP.b #$02
|059CB3| BCC .draw_whirlpool

|059CB5| LDA.w $0DC0,X
|059CB8| ASL A
|059CB9| ASL A
|059CBA| STA.b $06

|059CBC| PHX

|059CBD| LDX.b #$03

.next_zora_object
|059CBF| PHX

|059CC0| TXA
|059CC1| CLC
|059CC2| ADC.b $06
|059CC4| TAX

|059CC5| LDA.b $00
|059CC7| CLC
|059CC8| ADC.w .offset_x,X
|059CCB| STA.b ($90),Y

|059CCD| INY

|059CCE| LDA.w .offset_y,X
|059CD1| CLC
|059CD2| ADC.b $02
|059CD4| STA.b ($90),Y

|059CD6| LDA.w .char,X
|059CD9| INY
|059CDA| STA.b ($90),Y

|059CDC| LDA.b #$0F
|059CDE| STA.b $0F

|059CE0| LDA.w .prop,X
|059CE3| BIT.b $0F
|059CE5| BNE .ignore_prop

|059CE7| ORA.b $05

.ignore_prop
|059CE9| INY

|059CEA| ORA.b #$20
|059CEC| STA.b ($90),Y

|059CEE| INY

|059CEF| PLX
|059CF0| DEX
|059CF1| BPL .next_zora_object

;---------------------------------------------------------------------------------------------------

|059CF3| PLX

|059CF4| LDY.b #$02
|059CF6| LDA.b #$03
|059CF8| JSL CorrectOAMEntries_long

|059CFC| JSR GetScreenCoordinates_bank05

;---------------------------------------------------------------------------------------------------

.draw_whirlpool
|059CFF| LDA.w $0E10,X
|059D02| BEQ .exit

|059D04| LSR A
|059D05| AND.b #$04
|059D07| STA.b $06

|059D09| LDA.b #$10
|059D0B| JSL AllocateOAMInRegionC

|059D0F| LDY.b #$00

|059D11| PHX

|059D12| LDX.b #$03

.next_whirlpool_object
|059D14| PHX

|059D15| TXA
|059D16| CLC
|059D17| ADC.b $06
|059D19| TAX

|059D1A| LDA.b $00
|059D1C| CLC
|059D1D| ADC.w .whirlpool_offset_x,X
|059D20| STA.b ($90),Y

|059D22| LDA.b $02
|059D24| CLC
|059D25| ADC.w .whirlpool_offset_y,X

|059D28| INY
|059D29| STA.b ($90),Y

|059D2B| LDA.w .whirlpool_char,X
|059D2E| INY
|059D2F| STA.b ($90),Y

|059D31| LDA.w .whirlpool_prop,X
|059D34| ORA.b #$24
|059D36| INY
|059D37| STA.b ($90),Y

|059D39| PHY

|059D3A| TYA
|059D3B| LSR A
|059D3C| LSR A
|059D3D| TAY

|059D3E| LDA.b #$02
|059D40| STA.b ($92),Y

|059D42| PLY
|059D43| INY

|059D44| PLX
|059D45| DEX
|059D46| BPL .next_whirlpool_object

;---------------------------------------------------------------------------------------------------

|059D48| PLX

.exit
|059D49| RTS

;===================================================================================================

Sprite_56_WalkingZora:
|059D4A| LDA.w $0EA0,X
|059D4D| BEQ .not_recoiling

|059D4F| STZ.w $0EA0,X

|059D52| LDA.b #$03
|059D54| STA.w $0DA0,X

|059D57| LDA.b #$C0
|059D59| STA.w $0ED0,X

|059D5C| LDA.w $0F40,X
|059D5F| STA.w $0D50,X

; Effectively an arithmetic shift right on $0D50,X
|059D62| ASL A
|059D63| ROR.w $0D50,X
|059D66| LDA.w $0F30,X

|059D69| STA.w $0D40,X
|059D6C| ASL A
|059D6D| ROR.w $0D40,X

.not_recoiling
|059D70| LDA.w $0DA0,X
|059D73| JSL JumpTableLocal
|059D77| dw WalkingZora_Wait
|059D79| dw WalkingZora_Surface
|059D7B| dw WalkingZora_Walking
|059D7D| dw WalkingZora_Stunned

;===================================================================================================

WalkingZora_Wait:
|059D7F| JSL GetScreenCoordinates_long
|059D83| JSR CheckIfActive_bank05

|059D86| LDA.w $0DF0,X
|059D89| BNE .exit

|059D8B| LDA.b #$7F
|059D8D| STA.w $0DF0,X

|059D90| INC.w $0DA0,X

|059D93| LDA.w $0E60,X
|059D96| ORA.b #$40
|059D98| STA.w $0E60,X

.exit
|059D9B| RTS

;===================================================================================================

WalkingZora_Surface:
|059D9C| JSR SpriteDraw_Zora
|059D9F| JSR CheckIfActive_bank05

|059DA2| LDA.w $0DF0,X
|059DA5| STA.w $0BA0,X
|059DA8| BNE .delay

|059DAA| LDA.w $0E60,X
|059DAD| AND.b #$BF
|059DAF| STA.w $0E60,X

|059DB2| LDA.b #$28 ; SFX2.28
|059DB4| JSL QueueSpriteSFX2WithPan

|059DB8| INC.w $0DA0,X

|059DBB| LDA.b #$30
|059DBD| STA.w $0F80,X

|059DC0| JSR GetDirectionTowardsLink_bank05
|059DC3| TYA
|059DC4| STA.w $0DE0,X
|059DC7| STA.w $0EB0,X

|059DCA| RTS

.delay
|059DCB| LSR A
|059DCC| LSR A
|059DCD| LSR A
|059DCE| TAY

|059DCF| LDA.w ZoraSurfacing_anim_step,Y
|059DD2| STA.w $0DC0,X

|059DD5| RTS

;===================================================================================================

WalkingZora_Walking:
|059DD6| LDA.w $0E80,X
|059DD9| AND.b #$08
|059DDB| LSR A
|059DDC| ADC.w $0DE0,X
|059DDF| TAY

|059DE0| LDA.w ZoraAndGuardAnimationState,Y
|059DE3| STA.w $0DC0,X

|059DE6| JSR SpriteDraw_WalkingZora
|059DE9| JSR CheckIfActive_bank05
|059DEC| JSR CheckDamageToAndFromLink_bank05
|059DEF| JSR MoveSpriteZ_bank05

|059DF2| LDA.w $0F80,X
|059DF5| SEC
|059DF6| SBC.b #$02
|059DF8| STA.w $0F80,X

|059DFB| LDA.w $0F70,X
|059DFE| DEC A
|059DFF| BPL .continue

|059E01| LDA.w $0F80,X
|059E04| CMP.b #$F0
|059E06| BPL .airborne

|059E08| JSR ZeroVelocityXY_bank05

;---------------------------------------------------------------------------------------------------

.airborne
|059E0B| STZ.w $0F70,X
|059E0E| STZ.w $0F80,X

|059E11| TXA
|059E12| EOR.b $1A
|059E14| AND.b #$0F
|059E16| BNE .continue

|059E18| JSR GetDirectionTowardsLink_bank05

|059E1B| TYA
|059E1C| STA.w $0EB0,X

|059E1F| TXA
|059E20| EOR.b $1A
|059E22| AND.b #$1F
|059E24| BNE .continue

|059E26| TYA
|059E27| STA.w $0DE0,X

|059E2A| LDA.b #$08
|059E2C| JSL ApplySpeedTowardsLink_long

;---------------------------------------------------------------------------------------------------

.continue
|059E30| JSR MoveSpriteXY_bank05
|059E33| JSR CheckSpriteTileCollision_bank05

|059E36| LDA.w $0F70,X
|059E39| DEC A
|059E3A| BPL .skip_extra_recoil_logic

|059E3C| JSR WalkingZora_AdjustShadow

|059E3F| LDA.w $0FA5
|059E42| CMP.b #$08 ; TILETYPE 08
|059E44| BNE .skip_extra_recoil_logic

|059E46| JSL KillThisSprite

|059E4A| LDA.b #$28 ; SFX2.28
|059E4C| JSL QueueSpriteSFX2WithPan

|059E50| LDA.b #$03
|059E52| STA.w $0DD0,X

|059E55| LDA.b #$0F
|059E57| STA.w $0DF0,X

|059E5A| STZ.w $0D80,X

|059E5D| LDA.b #$03
|059E5F| STA.w $0E40,X

.skip_extra_recoil_logic
|059E62| JSR ZoraAndGuardAdvanceAnimation ; stupid

|059E65| RTS

;===================================================================================================

WalkingZora_Stunned:
|059E66| JSL CheckDamageFromLink_long

|059E6A| LDA.b $1A
|059E6C| AND.b #$03
|059E6E| BNE .not_waking

|059E70| DEC.w $0ED0,X
|059E73| BNE .not_waking

|059E75| LDA.b #$02
|059E77| STA.w $0DA0,X

|059E7A| LDY.w $0DD0,X

|059E7D| LDA.b #$09
|059E7F| STA.w $0DD0,X

|059E82| CPY.b #$0A
|059E84| BNE .not_waking

|059E86| STZ.w $0308
|059E89| STZ.w $0309

;---------------------------------------------------------------------------------------------------

.not_waking
|059E8C| LDA.w $0ED0,X
|059E8F| CMP.b #$30
|059E91| BCS .dont_tremble

|059E93| LDA.b $1A
|059E95| AND.b #$01
|059E97| BNE .dont_tremble

|059E99| LDA.b $1A
|059E9B| LSR A
|059E9C| AND.b #$01
|059E9E| TAY

|059E9F| LDA.w ZoraShake.low,Y
|059EA2| CLC
|059EA3| ADC.w $0D10,X
|059EA6| STA.w $0D10,X

|059EA9| LDA.w .offset_x_high,Y
|059EAC| ADC.w $0D30,X
|059EAF| STA.w $0D30,X

;---------------------------------------------------------------------------------------------------

.dont_tremble
|059EB2| STZ.w $0DC0,X
|059EB5| STZ.w $0E70,X

|059EB8| JSR WalkingZora_DrawWaterRipples

|059EBB| DEC.w $0E40,X
|059EBE| DEC.w $0E40,X

|059EC1| JSL SpriteDraw_SingleLarge_long

|059EC5| INC.w $0E40,X
|059EC8| INC.w $0E40,X

|059ECB| STZ.w $0EC0,X

|059ECE| JSR CheckIfActive_bank05
|059ED1| JSR HandleSpriteRecoil_bank05

|059ED4| JSR MoveSpriteXY_bank05
|059ED7| JSL ThrownSprite_TileAndSpriteInteraction_long

;===================================================================================================

#WalkingZora_AdjustShadow:
|059EDB| STZ.w $0EC0,X

|059EDE| LDA.w $0F70,X
|059EE1| BNE .exit

|059EE3| LDA.w $0FA5
|059EE6| CMP.b #$09 ; TILETYPE 09
|059EE8| BNE .exit

|059EEA| INC.w $0EC0,X

.exit
|059EED| RTS

;---------------------------------------------------------------------------------------------------

.offset_x_high
|059EEE| db   0,  -1

;===================================================================================================

pool SpriteDraw_WalkingZora

.head_char
|059EF0| db $CE, $CE, $A4, $EE

.head_prop
|059EF4| db $40, $00, $00, $00

.body_char
|059EF8| db $CC, $EC, $CC, $EC
|059EFC| db $E8, $E8, $CA, $CA

.body_prop
|059F00| db $40, $40, $00, $00
|059F04| db $00, $40, $00, $40

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_WalkingZora:
|059F08| JSR WalkingZora_DrawWaterRipples
|059F0B| JSR GetScreenCoordinates_bank05

|059F0E| LDY.b #$00

|059F10| LDA.w $0DC0,X
|059F13| STA.b $06

|059F15| CMP.b #$04 ; weird shared stuff
|059F17| BCS .skip_this_one

|059F19| LSR A

|059F1A| REP #$20

|059F1C| LDA.b $02
|059F1E| SBC.w #$0000
|059F21| STA.b $02

|059F23| SEP #$20

;---------------------------------------------------------------------------------------------------

.skip_this_one
|059F25| PHX

|059F26| LDA.w $0EB0,X
|059F29| TAX

|059F2A| REP #$20

|059F2C| LDA.b $00
|059F2E| STA.b ($90),Y

|059F30| AND.w #$0100
|059F33| STA.b $0E

|059F35| LDA.b $02
|059F37| SEC
|059F38| SBC.w #$0006

|059F3B| INY
|059F3C| STA.b ($90),Y

|059F3E| CLC
|059F3F| ADC.w #$0010
|059F42| CMP.w #$0100
|059F45| BCC .head_on_screen

|059F47| LDA.w #$00F0
|059F4A| STA.b ($90),Y

.head_on_screen
|059F4C| SEP #$20

|059F4E| LDA.w .head_char,X
|059F51| INY
|059F52| STA.b ($90),Y

|059F54| LDA.w .head_prop,X
|059F57| INY
|059F58| ORA.b $05
|059F5A| STA.b ($90),Y

|059F5C| LDA.b #$02
|059F5E| ORA.b $0F
|059F60| STA.b ($92)

|059F62| LDA.b $06

|059F64| PHA

|059F65| ASL A
|059F66| TAX

;---------------------------------------------------------------------------------------------------

|059F67| REP #$20

|059F69| LDA.b $00
|059F6B| INY
|059F6C| STA.b ($90),Y

|059F6E| AND.w #$0100
|059F71| STA.b $0E

|059F73| LDA.b $02
|059F75| INC A
|059F76| INC A

|059F77| INY

|059F78| STA.b ($90),Y

|059F7A| CLC
|059F7B| ADC.w #$0010
|059F7E| CMP.w #$0100
|059F81| BCC .body_on_screen

|059F83| LDA.w #$00F0
|059F86| STA.b ($90),Y

.body_on_screen
|059F88| SEP #$20

|059F8A| PLX

|059F8B| LDA.w .body_char,X
|059F8E| INY
|059F8F| STA.b ($90),Y

|059F91| LDA.w .body_prop,X
|059F94| ORA.b $05
|059F96| INY
|059F97| STA.b ($90),Y

|059F99| LDY.b #$01

|059F9B| LDA.b #$02
|059F9D| ORA.b $0F
|059F9F| STA.b ($92),Y

;---------------------------------------------------------------------------------------------------

|059FA1| PLX

|059FA2| LDA.w $0EC0,X
|059FA5| BNE .exit

|059FA7| JSL DrawSpriteShadow_long

.exit
|059FAB| RTS

;===================================================================================================

pool SpriteDraw_WaterRipple

.oam_groups
.group00
|059FAC| dw   0,  10 : db $D8, $01, $00, $00
|059FB4| dw   8,  10 : db $D8, $41, $00, $00

.group01
|059FBC| dw   0,  10 : db $D9, $01, $00, $00
|059FC4| dw   8,  10 : db $D9, $41, $00, $00

.group02
|059FCC| dw   0,  10 : db $DA, $01, $00, $00
|059FD4| dw   8,  10 : db $DA, $41, $00, $00

;-------------------------------------------------------------------------------'

.oam_groups_offset
|059FDC| db .group00-.oam_groups ; $00
|059FDD| db .group01-.oam_groups ; $10
|059FDE| db .group02-.oam_groups ; $20
|059FDF| db .group01-.oam_groups ; $10

endpool

;===================================================================================================

WalkingZora_DrawWaterRipples:
|059FE0| LDA.w $0EC0,X
|059FE3| BEQ .exit

;===================================================================================================

#SpriteDraw_WaterRipple_WithOAMAdjust:
|059FE5| JSL SpriteDraw_WaterRipple

|059FE9| REP #$20

|059FEB| LDA.b $90
|059FED| CLC
|059FEE| ADC.w #$0008
|059FF1| STA.b $90

|059FF3| INC.b $92
|059FF5| INC.b $92

|059FF7| SEP #$20

.exit
|059FF9| RTS

;===================================================================================================

SpriteDraw_WaterRipple:
|059FFA| PHB
|059FFB| PHK
|059FFC| PLB

|059FFD| LDA.b $1A
|059FFF| LSR A
|05A000| LSR A
|05A001| AND.b #$03
|05A003| TAY

|05A004| LDA.w .oam_groups_offset,Y
|05A007| CLC
|05A008| ADC.b #<.oam_groups
|05A00A| STA.b $08

|05A00C| LDA.b #>.oam_groups
|05A00E| ADC.b #$00
|05A010| STA.b $09

|05A012| LDA.b #$02
|05A014| JSR TabulatedSpriteDraw_bank05

|05A017| LDY.b #$03

|05A019| LDA.b ($90),Y
|05A01B| AND.b #$30
|05A01D| ORA.b #$04
|05A01F| STA.b ($90),Y

|05A021| LDY.b #$07
|05A023| ORA.b #$40
|05A025| STA.b ($90),Y

|05A027| PLB

|05A028| RTL

;===================================================================================================

SpriteDraw_WaterRipple_WithOAMAdjust_long:
|05A029| PHB
|05A02A| PHK
|05A02B| PLB

|05A02C| JSR SpriteDraw_WaterRipple_WithOAMAdjust

|05A02F| PLB

|05A030| RTL

;===================================================================================================

ArmosKnight_death_anim_step:
|05A031| db $05, $04, $03, $02, $01

;===================================================================================================

Sprite_53_ArmosKnight:
|05A036| LDA.w $0B89,X
|05A039| ORA.b #$30
|05A03B| STA.w $0B89,X

|05A03E| JSR SpriteDraw_ArmosKnight
|05A041| JSR CheckIfActivePermissive_bank05

|05A044| LDA.w $0DD0,X
|05A047| CMP.b #$09
|05A049| BEQ ArmosKnight_Alive

|05A04B| LDA.w $0DF0,X
|05A04E| BNE ArmostKnight_Dying

;===================================================================================================

ArmosKnight_Dead:
|05A050| DEC.w $0FF8

|05A053| LDA.w $0FF8
|05A056| CMP.b #$01
|05A058| BNE .knights_remain

; Look for last knight to turn red
|05A05A| LDY.b #$05

.next_knight
|05A05C| LDA.b #$30
|05A05E| STA.w $0E50,Y

|05A061| LDA.b #$00
|05A063| STA.w $0D50,Y
|05A066| STA.w $0D40,Y
|05A069| STA.w $0F80,Y

|05A06C| DEY
|05A06D| BPL .next_knight

;---------------------------------------------------------------------------------------------------

.knights_remain
|05A06F| STZ.w $0DD0,X

|05A072| JSL CheckIfScreenIsClear
|05A076| BCC .exit

|05A078| LDA.b #$EA ; SPRITE EA
|05A07A| JSL SpawnSpriteDynamically
|05A07E| JSL SetSpawnedSpriteCoordinates

|05A082| LDA.b #$20
|05A084| STA.w $0F80,Y

|05A087| LDA.b #$01
|05A089| STA.w $0D90,Y

.exit
|05A08C| RTS

;===================================================================================================

ArmostKnight_Dying:
|05A08D| LSR A
|05A08E| LSR A
|05A08F| LSR A
|05A090| TAY

|05A091| LDA.w ArmosKnight_death_anim_step,Y
|05A094| STA.w $0DC0,X

|05A097| RTS

;===================================================================================================

ArmosKnight_Alive:
|05A098| JSR MoveSpriteXY_bank05
|05A09B| JSR MoveSpriteZ_bank05

|05A09E| LDA.w $0F80,X
|05A0A1| SEC
|05A0A2| SBC.b #$04
|05A0A4| STA.w $0F80,X

|05A0A7| LDA.w $0F70,X
|05A0AA| BPL .continue

|05A0AC| STZ.w $0F80,X
|05A0AF| STZ.w $0F70,X

|05A0B2| LDA.w $0FF8
|05A0B5| CMP.b #$01
|05A0B7| BEQ .continue

|05A0B9| LDA.w $0D90,X
|05A0BC| BEQ .continue

|05A0BE| LDA.b #$30
|05A0C0| STA.w $0F80,X

|05A0C3| LDA.b #$16 ; SFX3.16
|05A0C5| JSL QueueSpriteSFX3WithPan

;---------------------------------------------------------------------------------------------------

.continue
|05A0C9| LDA.w $0EA0,X
|05A0CC| BEQ .dont_stop

|05A0CE| JSR ZeroVelocityXY_bank05

|05A0D1| STZ.w $0D80,X
|05A0D4| STZ.w $0ED0,X

.dont_stop
|05A0D7| JSR HandleSpriteRecoil_bank05

|05A0DA| LDA.w $0D90,X
|05A0DD| BNE ArmosKnight_Awake

|05A0DF| LDA.w $0DF0,X
|05A0E2| BNE .still_sleeping

|05A0E4| INC.w $0D90,X

|05A0E7| LDA.w $0E40,X
|05A0EA| AND.b #$7F
|05A0EC| DEC A
|05A0ED| DEC A
|05A0EE| STA.w $0E40,X

|05A0F1| LDA.w $0CAA,X
|05A0F4| AND.b #$FB
|05A0F6| STA.w $0CAA,X

|05A0F9| LDA.w $0E60,X
|05A0FC| AND.b #$BF
|05A0FE| STA.w $0E60,X

|05A101| RTS

;---------------------------------------------------------------------------------------------------

.still_sleeping
|05A102| CMP.b #$40
|05A104| BNE .skip_sfx

|05A106| LDY.b #$35 ; SFX2.35
|05A108| STY.w $012E

.skip_sfx
|05A10B| BCS .check_clink

|05A10D| LSR A
|05A10E| EOR.w $0FA0
|05A111| AND.b #$01
|05A113| TAY

|05A114| LDA.w Speed16_bank05,Y
|05A117| STA.w $0D50,X

|05A11A| JSR MoveSpriteX_bank05

|05A11D| STZ.w $0D50,X

.check_clink
|05A120| JSL CheckDamageFromLink_long
|05A124| JSL CheckDamageToLink_same_layer_long
|05A128| BCC .exit

|05A12A| JSL AbortMovement
|05A12E| JSL RepelDash_long

.exit
|05A132| RTS

;===================================================================================================

ArmosKnight_Awake:
|05A133| LDA.w $0FF8
|05A136| CMP.b #$01
|05A138| BEQ ArmosKnight_BeRed

|05A13A| JSR CheckDamageToAndFromLink_bank05

|05A13D| LDA.w $0D80,X
|05A140| BNE .copy_overlord

|05A142| JSR ArmosKnight_ProjectSpeedTowardsTarget
|05A145| JSL Get16BitSpriteCoords_long

|05A149| REP #$20

|05A14B| LDA.b $04
|05A14D| SEC
|05A14E| SBC.w $0FD8
|05A151| CLC
|05A152| ADC.w #$0002

|05A155| CMP.w #$0004
|05A158| BCS .exit

|05A15A| LDA.b $06
|05A15C| SEC
|05A15D| SBC.w $0FDA
|05A160| CLC
|05A161| ADC.w #$0002

|05A164| CMP.w #$0004
|05A167| BCS .exit

|05A169| SEP #$20

|05A16B| INC.w $0D80,X

.exit
|05A16E| SEP #$20

|05A170| RTS

;---------------------------------------------------------------------------------------------------

.copy_overlord
|05A171| LDA.w $0B10,X
|05A174| STA.w $0D10,X

|05A177| LDA.w $0B20,X
|05A17A| STA.w $0D30,X

|05A17D| LDA.w $0B30,X
|05A180| STA.w $0D00,X

|05A183| LDA.w $0B40,X
|05A186| STA.w $0D20,X

|05A189| RTS

;===================================================================================================

ArmosKnight_BeRed:
|05A18A| JSL RedArmosCrusher

|05A18E| RTS

;===================================================================================================

ArmosKnight_ProjectSpeedTowardsTarget:
|05A18F| LDA.w $0B10,X
|05A192| STA.b $04

|05A194| LDA.w $0B20,X
|05A197| STA.b $05

|05A199| LDA.w $0B30,X
|05A19C| STA.b $06

|05A19E| LDA.w $0B40,X
|05A1A1| STA.b $07

|05A1A3| LDA.b #$10
|05A1A5| JSL ProjectSpriteSpeedTowardsLocation_long

|05A1A9| LDA.b $00
|05A1AB| STA.w $0D40,X

|05A1AE| LDA.b $01
|05A1B0| STA.w $0D50,X

|05A1B3| RTS

;===================================================================================================

pool SpriteDraw_ArmosKnight

.offset_x
|05A1B4| dw  -8,   8,  -8,   8
|05A1BC| dw -10,  10, -10,  10
|05A1C4| dw -10,  10, -10,  10
|05A1CC| dw -12,  12, -12,  12
|05A1D4| dw -14,  14, -14,  14
|05A1DC| dw -16,  24, -16,  24

.offset_y
|05A1E4| dw  -8,  -8,   8,   8
|05A1EC| dw -10, -10,  10,  10
|05A1F4| dw -10, -10,  10,  10
|05A1FC| dw -12, -12,  12,  12
|05A204| dw -14, -14,  14,  14
|05A20C| dw -16, -16,  24,  24

.char
|05A214| db $C0, $C2, $E0, $E2
|05A218| db $C0, $C2, $E0, $E2
|05A21C| db $C4, $C4, $C4, $C4
|05A220| db $C6, $C6, $C6, $C6
|05A224| db $C8, $C8, $C8, $C8
|05A228| db $D8, $D8, $D8, $D8

.flip
|05A22C| db $00, $00, $00, $00
|05A230| db $00, $00, $00, $00
|05A234| db $40, $00, $C0, $80
|05A238| db $40, $00, $C0, $80
|05A23C| db $40, $00, $C0, $80
|05A240| db $40, $00, $C0, $80

.size
|05A244| db $02, $02, $02, $02
|05A248| db $02, $02, $02, $02
|05A24C| db $02, $02, $02, $02
|05A250| db $02, $02, $02, $02
|05A254| db $02, $02, $02, $02
|05A258| db $00, $00, $00, $00

; [HARDCODED] oam slots
.oam_a_loc
|05A25C| dw $0930, $0938, $0940, $0948, $0950, $0958

.oam_b_loc
|05A268| dw $0A6C, $0A6E, $0A70, $0A72, $0A74, $0A76

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_ArmosKnight:
|05A274| JSR GetScreenCoordinates_bank05

|05A277| LDA.w $0D90,X
|05A27A| BNE .awakening

|05A27C| LDA.b $11
|05A27E| CMP.b #$07
|05A280| BEQ .awakening

|05A282| JSL AllocateOAMDeferToPlayer_long

|05A286| LDY.b #$00

.awakening
|05A288| LDA.w $0DC0,X
|05A28B| ASL A
|05A28C| ASL A
|05A28D| STA.b $06

;---------------------------------------------------------------------------------------------------

|05A28F| PHX

|05A290| LDX.b #$03

.next_object
|05A292| PHX

|05A293| TXA
|05A294| CLC
|05A295| ADC.b $06
|05A297| PHA

|05A298| ASL A
|05A299| TAX

|05A29A| REP #$20

|05A29C| LDA.b $00
|05A29E| CLC
|05A29F| ADC.w .offset_x,X
|05A2A2| STA.b ($90),Y

|05A2A4| AND.w #$0100
|05A2A7| STA.b $0E

|05A2A9| LDA.b $02
|05A2AB| CLC
|05A2AC| ADC.w .offset_y,X

|05A2AF| INY
|05A2B0| STA.b ($90),Y

|05A2B2| CLC
|05A2B3| ADC.w #$0010
|05A2B6| CMP.w #$0100

|05A2B9| SEP #$20
|05A2BB| BCC .on_screen

|05A2BD| LDA.b #$F0
|05A2BF| STA.b ($90),Y

.on_screen
|05A2C1| PLX

|05A2C2| LDA.w .char,X
|05A2C5| INY
|05A2C6| STA.b ($90),Y

|05A2C8| LDA.w .flip,X
|05A2CB| ORA.b $05
|05A2CD| INY
|05A2CE| STA.b ($90),Y

|05A2D0| PHY

|05A2D1| TYA
|05A2D2| LSR A
|05A2D3| LSR A
|05A2D4| TAY

|05A2D5| LDA.w .size,X
|05A2D8| ORA.b $0F
|05A2DA| STA.b ($92),Y

|05A2DC| PLY
|05A2DD| INY

|05A2DE| PLX
|05A2DF| DEX
|05A2E0| BPL .next_object

;---------------------------------------------------------------------------------------------------

|05A2E2| PLX

|05A2E3| LDA.w $0DC0,X
|05A2E6| BEQ .alive

|05A2E8| RTS

;---------------------------------------------------------------------------------------------------

.alive
|05A2E9| LDA.w $0D90,X
|05A2EC| BEQ .use_previously_allotted_oam

|05A2EE| TXA
|05A2EF| ASL A
|05A2F0| TAY

|05A2F1| REP #$20

|05A2F3| LDA.w .oam_a_loc,Y
|05A2F6| STA.b $90

|05A2F8| LDA.w .oam_b_loc,Y
|05A2FB| STA.b $92

|05A2FD| SEP #$20

;---------------------------------------------------------------------------------------------------

.use_previously_allotted_oam
|05A2FF| LDA.w $0F70,X
|05A302| CMP.b #$20
|05A304| BCC .low_altitude

|05A306| LDA.b #$20

.low_altitude
|05A308| LSR A
|05A309| LSR A
|05A30A| LSR A
|05A30B| STA.b $07

|05A30D| LDA.w $0D00,X
|05A310| SEC
|05A311| SBC.b $E8
|05A313| STA.b $02

|05A315| LDA.w $0D20,X
|05A318| SBC.b $E9
|05A31A| STA.b $03

|05A31C| LDY.b #$10

|05A31E| LDA.b $00
|05A320| SEC
|05A321| SBC.b #$08
|05A323| PHA

|05A324| CLC
|05A325| ADC.b $07
|05A327| STA.b ($90),Y

|05A329| PLA
|05A32A| CLC
|05A32B| ADC.b #$10

|05A32D| SEC
|05A32E| SBC.b $07

|05A330| LDY.b #$14
|05A332| STA.b ($90),Y

|05A334| REP #$20

|05A336| LDA.b $02
|05A338| CLC
|05A339| ADC.w #$000C

|05A33C| LDY.b #$11
|05A33E| STA.b ($90),Y

|05A340| LDY.b #$15
|05A342| STA.b ($90),Y

|05A344| CLC
|05A345| ADC.w #$0010
|05A348| CMP.w #$0100

|05A34B| SEP #$20
|05A34D| BCC .shadow_on_screen

|05A34F| LDA.b #$F0
|05A351| STA.b ($90),Y

|05A353| LDY.b #$11
|05A355| STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

.shadow_on_screen
|05A357| LDA.b #$E4
|05A359| LDY.b #$12
|05A35B| STA.b ($90),Y

|05A35D| LDY.b #$16
|05A35F| STA.b ($90),Y

|05A361| LDA.b #$25
|05A363| LDY.b #$13
|05A365| STA.b ($90),Y

|05A367| ORA.b #$40
|05A369| LDY.b #$17
|05A36B| STA.b ($90),Y

|05A36D| LDA.b #$02
|05A36F| LDY.b #$04
|05A371| STA.b ($92),Y

|05A373| INY
|05A374| STA.b ($92),Y

|05A376| RTS

;===================================================================================================

pool SpritePrep_Lanmolas

.delay
|05A377| db 128, 192, 255

endpool

;---------------------------------------------------------------------------------------------------

SpritePrep_Lanmolas:
|05A37A| LDA.l .delay,X
|05A37E| STA.w $0DF0,X

|05A381| LDA.b #$FF
|05A383| STA.w $0F70,X

|05A386| PHX

|05A387| LDY.b #$3F

|05A389| LDA.l SubspriteIndices_bank05,X
|05A38D| TAX

|05A38E| LDA.b #$FF

.next_subsprite
|05A390| STA.l $7FFE00,X

|05A394| INX

|05A395| DEY
|05A396| BPL .next_subsprite

|05A398| PLX

|05A399| LDA.b #$07
|05A39B| STA.l $7FF81E,X

|05A39F| RTL

;===================================================================================================

UNREACHABLE_05A3A0:
|05A3A0| db $18, $E8

;===================================================================================================

Sprite_54_Lanmolas:
|05A3A2| JSL GetScreenCoordinates_long
|05A3A6| JSR SpriteDraw_Lanmola
|05A3A9| JSR CheckIfActivePermissive_bank05

|05A3AC| LDA.w $0D80,X
|05A3AF| JSL JumpTableLocal
|05A3B3| dw Lanmolas_Hiding
|05A3B5| dw Lanmolas_BurrowingUp
|05A3B7| dw Lanmolas_LeapFromSand
|05A3B9| dw Lanmolas_WiggleInAir
|05A3BB| dw Lanmolas_BurrowDown
|05A3BD| dw Lanmolas_Exploding

;===================================================================================================

Lanmolas_Hiding:
|05A3BF| LDA.w $0DF0,X
|05A3C2| ORA.w $0F00,X
|05A3C5| BNE .exit

|05A3C7| LDA.b #$7F
|05A3C9| STA.w $0DF0,X

|05A3CC| INC.w $0D80,X

|05A3CF| LDA.b #$35 ; SFX2.35
|05A3D1| JSL QueueSpriteSFX2WithPan

.exit
|05A3D5| RTS

;===================================================================================================

Lanmolas_Targets:

.position_x
|05A3D6| db $58, $50, $60, $70
|05A3DA| db $80, $90, $A0, $98

.position_y
|05A3DE| db $68, $60, $70, $80
|05A3E2| db $90, $A0, $A8, $80

;===================================================================================================

Lanmolas_BurrowingUp:
|05A3E6| LDA.w $0DF0,X
|05A3E9| BNE EXIT_05A42E

|05A3EB| JSL Lanmola_SpawnShrapnel

|05A3EF| LDA.b #$13 ; SFX1.13
|05A3F1| STA.w $012D

|05A3F4| JSL GetRandomNumber
|05A3F8| AND.b #$07
|05A3FA| TAY

|05A3FB| LDA.w Lanmolas_Targets.position_x,Y
|05A3FE| STA.w $0DA0,X

|05A401| JSL GetRandomNumber
|05A405| AND.b #$07
|05A407| TAY

|05A408| LDA.w Lanmolas_Targets.position_y,Y
|05A40B| STA.w $0DB0,X

|05A40E| INC.w $0D80,X

|05A411| LDA.b #$18
|05A413| STA.w $0F80,X

|05A416| STZ.w $0EC0,X
|05A419| STZ.w $0ED0,X

;===================================================================================================

Lanmolas_CacheLocation:
|05A41C| LDA.w $0D10,X
|05A41F| STA.w $0DE0,X

|05A422| LDA.w $0D00,X
|05A425| STA.w $0E70,X

|05A428| LDA.b #$4A
|05A42A| STA.w $0E00,X

|05A42D| RTS

;---------------------------------------------------------------------------------------------------

#EXIT_05A42E:
|05A42E| RTS

;===================================================================================================

pool Lanmolas_LeapFromSand

.z_speed
|05A42F| db  2, -2

endpool

;---------------------------------------------------------------------------------------------------

Lanmolas_LeapFromSand:
|05A431| JSR CheckDamageToAndFromLink_bank05
|05A434| JSR MoveSpriteZ_bank05

|05A437| LDA.w $0EC0,X
|05A43A| BNE .ascending

|05A43C| LDA.w $0F80,X
|05A43F| SEC
|05A440| SBC.b #$01
|05A442| STA.w $0F80,X

|05A445| BNE .not_at_peak

|05A447| INC.w $0EC0,X

.not_at_peak
|05A44A| BRA .continue

;---------------------------------------------------------------------------------------------------

.ascending
|05A44C| LDA.b $1A
|05A44E| AND.b #$01
|05A450| BNE .continue

|05A452| LDA.w $0ED0,X
|05A455| AND.b #$01
|05A457| TAY

|05A458| LDA.w $0F80,X
|05A45B| CLC
|05A45C| ADC.w .z_speed,Y
|05A45F| STA.w $0F80,X

|05A462| CMP.w Speed16_bank05,Y
|05A465| BNE .continue

|05A467| INC.w $0ED0,X

;---------------------------------------------------------------------------------------------------

.continue
|05A46A| LDA.w $0DA0,X
|05A46D| STA.b $04

|05A46F| LDA.w $0D30,X
|05A472| STA.b $05

|05A474| LDA.w $0DB0,X
|05A477| STA.b $06

|05A479| LDA.w $0D20,X
|05A47C| STA.b $07

|05A47E| LDA.w $0D10,X
|05A481| STA.b $00

|05A483| LDA.w $0D30,X
|05A486| STA.b $01

|05A488| LDA.w $0D00,X
|05A48B| STA.b $02

|05A48D| LDA.w $0D20,X
|05A490| STA.b $03

;---------------------------------------------------------------------------------------------------

|05A492| REP #$20

|05A494| LDA.b $00
|05A496| SEC
|05A497| SBC.b $04
|05A499| CLC
|05A49A| ADC.w #$0002

|05A49D| CMP.w #$0004
|05A4A0| BCS .not_at_target

|05A4A2| LDA.b $02
|05A4A4| SEC
|05A4A5| SBC.b $06
|05A4A7| CLC
|05A4A8| ADC.w #$0002
|05A4AB| CMP.w #$0004

|05A4AE| SEP #$20
|05A4B0| BCS .not_at_target

|05A4B2| INC.w $0D80,X

;---------------------------------------------------------------------------------------------------

.not_at_target
|05A4B5| SEP #$20

|05A4B7| LDA.b #$0A
|05A4B9| JSL ProjectSpriteSpeedTowardsLocation_long

|05A4BD| LDA.b $00
|05A4BF| STA.w $0D40,X

|05A4C2| LDA.b $01
|05A4C4| STA.w $0D50,X

|05A4C7| JSR MoveSpriteXY_bank05

|05A4CA| RTS

;===================================================================================================

Lanmolas_WiggleInAir:
|05A4CB| JSR CheckDamageToAndFromLink_bank05
|05A4CE| JSR MoveSpriteXY_bank05
|05A4D1| JSR MoveSpriteZ_bank05

|05A4D4| LDA.w $0F80,X
|05A4D7| CMP.b #$EC
|05A4D9| BMI .descending

|05A4DB| SEC
|05A4DC| SBC.b #$01
|05A4DE| STA.w $0F80,X

.descending
|05A4E1| LDA.w $0F70,X
|05A4E4| BPL .exit

|05A4E6| INC.w $0D80,X

|05A4E9| LDA.b #$80
|05A4EB| STA.w $0DF0,X

|05A4EE| JSR Lanmolas_CacheLocation

.exit
|05A4F1| RTS

;===================================================================================================

Lanmolas_BurrowDown:
|05A4F2| LDA.w $0DF0,X
|05A4F5| BNE EXIT_05A514

|05A4F7| STZ.w $0D80,X

|05A4FA| JSL GetRandomNumber
|05A4FE| AND.b #$07
|05A500| TAY

|05A501| LDA.w Lanmolas_Targets.position_x,Y
|05A504| STA.w $0D10,X

|05A507| JSL GetRandomNumber
|05A50B| AND.b #$07
|05A50D| TAY

|05A50E| LDA.w Lanmolas_Targets.position_y,Y
|05A511| STA.w $0D00,X

;---------------------------------------------------------------------------------------------------

#EXIT_05A514:
|05A514| RTS

;===================================================================================================

Lanmolas_SegmentOffsets:
|05A515| db $00, $08, $10, $18, $20, $28, $30, $38

;===================================================================================================

SpawnFallingDungeonPrize:
|05A51D| PHX
|05A51E| TAX

|05A51F| LDY.b #$04
|05A521| LDA.b #$29 ; ANCILLA 29
|05A523| JSL AncillaAdd_FallingPrize

|05A527| PLX

|05A528| RTL

;===================================================================================================

Lanmolas_Exploding:
|05A529| LDY.w $0DF0,X
|05A52C| BNE .delay

|05A52E| STZ.w $0DD0,X

|05A531| JSL CheckIfScreenIsClear
|05A535| BCC .delay

|05A537| LDA.b #$EA ; SPRITE EA
|05A539| JSL SpawnSpriteDynamically
|05A53D| JSL SetSpawnedSpriteCoordinates

|05A541| LDA.b #$20
|05A543| STA.w $0F80,Y

|05A546| LDA.b #$03
|05A548| STA.w $0D90,Y

.delay
|05A54B| LDA.w $0DF0,X
|05A54E| CMP.b #$20
|05A550| BCC EXIT_05A514

|05A552| CMP.b #$A0
|05A554| BCS EXIT_05A514

|05A556| AND.b #$0F
|05A558| BNE EXIT_05A514

;---------------------------------------------------------------------------------------------------

|05A55A| LDA.l $7FF81E,X
|05A55E| TAY

|05A55F| LDA.w $0E80,X
|05A562| SEC
|05A563| SBC.w Lanmolas_SegmentOffsets,Y
|05A566| AND.b #$3F

|05A568| CLC
|05A569| ADC.w SubspriteIndices_bank05,X

|05A56C| PHX

|05A56D| TAX

|05A56E| LDA.l $7FFC00,X
|05A572| SEC
|05A573| SBC.b $E2
|05A575| STA.b $0A

|05A577| LDA.l $7FFD00,X
|05A57B| SEC
|05A57C| SBC.l $7FFE00,X
|05A580| SEC
|05A581| SBC.b $E8
|05A583| STA.b $0B

;---------------------------------------------------------------------------------------------------

|05A585| PLX

|05A586| LDA.b #$00 ; SPRITE 00
|05A588| JSL SpawnSpriteDynamically
|05A58C| BMI .exit

|05A58E| LDA.b #$0B
|05A590| STA.w $0AAA

|05A593| LDA.b #$04
|05A595| STA.w $0DD0,Y

|05A598| LDA.b #$1F
|05A59A| STA.w $0DF0,Y
|05A59D| STA.w $0D90,Y

|05A5A0| LDA.b $0A
|05A5A2| CLC
|05A5A3| ADC.b $E2
|05A5A5| STA.w $0D10,Y

|05A5A8| LDA.b $E3
|05A5AA| ADC.b #$00
|05A5AC| STA.w $0D30,Y

|05A5AF| LDA.b $0B
|05A5B1| CLC
|05A5B2| ADC.b $E8
|05A5B4| STA.w $0D00,Y

|05A5B7| LDA.b $E9
|05A5B9| ADC.b #$00
|05A5BB| STA.w $0D20,Y

|05A5BE| LDA.b #$03
|05A5C0| STA.w $0E40,Y

|05A5C3| LDA.b #$0C
|05A5C5| STA.w $0F50,Y

|05A5C8| LDA.b #$0C ; SFX2.0C
|05A5CA| JSL QueueSpriteSFX2WithPan

|05A5CE| LDA.l $7FF81E,X
|05A5D2| BMI .exit

|05A5D4| DEC A
|05A5D5| STA.l $7FF81E,X

.exit
|05A5D9| RTS

;===================================================================================================

SubspriteIndices_bank05:
|05A5DA| db $00, $40, $80, $C0

;===================================================================================================

pool SpriteDraw_Lanmola

.oam_a_offset
|05A5DE| db $00, $1C

.oam_b_offset
|05A5E0| db $01, $F9

.segment_char
|05A5E2| db $C4, $E2, $C2, $E0, $C0, $E0, $C2, $E2
|05A5EA| db $C4, $E2, $C2, $E0, $C0, $E0, $C2, $E2

.head_char
|05A5F2| db $CC, $E4, $CA, $E6, $C8, $E6, $CA, $E4
|05A5FA| db $CC, $E4, $CA, $E6, $C8, $E6, $CA, $E4

.prop
|05A602| db $C0, $C0, $C0, $C0, $80, $80, $80, $80
|05A60A| db $00, $00, $00, $00, $40, $40, $40, $40

;---------------------------------------------------------------------------------------------------

.tail_offset_x
|05A612| db $F8, $08, $F6, $0A, $F0, $10, $E8, $20

.tail_offset_y
|05A61A| db $00, $00, $FF, $FF, $FF, $FF, $03, $03

.tail_tile
|05A622| db $E8, $E8, $E8, $E8, $EA, $EA, $EA, $EA

.tail_prop
|05A62A| db $00, $40, $00, $40, $00, $40, $00, $40

.tail_size
|05A632| db $02, $02, $02, $02, $02, $02, $00, $00

;---------------------------------------------------------------------------------------------------

; [HARDCODED] oam slots
.oam_a_pointer
|05A63A| dw $0930
|05A63C| dw $08F0
|05A63E| dw $08B0
|05A640| dw $0870

.oam_b_pointer
|05A642| dw $0A6C
|05A644| dw $0A5C
|05A646| dw $0A4C
|05A648| dw $0A3C

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Lanmola:
|05A64A| TXA
|05A64B| ASL A
|05A64C| TAY

|05A64D| REP #$20

|05A64F| LDA.w .oam_a_pointer,Y
|05A652| STA.b $90

|05A654| LDA.w .oam_b_pointer,Y
|05A657| STA.b $92

|05A659| SEP #$20

|05A65B| LDA.w $0D40,X
|05A65E| SEC
|05A65F| SBC.w $0F80,X
|05A662| STA.b $00

|05A664| LDA.w $0D50,X
|05A667| STA.b $01

|05A669| JSL ConvertVelocityToAngle
|05A66D| STA.w $0DC0,X

|05A670| LDA.w SubspriteIndices_bank05,X
|05A673| STA.b $04

|05A675| PHX

|05A676| LDA.w $0D10,X
|05A679| PHA

|05A67A| LDA.w $0D00,X
|05A67D| PHA

|05A67E| LDA.w $0F70,X
|05A681| PHA

|05A682| LDA.w $0DC0,X
|05A685| PHA

|05A686| LDA.w $0E80,X
|05A689| STA.b $02
|05A68B| STA.b $05

|05A68D| CLC
|05A68E| ADC.b $04
|05A690| TAX

|05A691| PLA
|05A692| STA.l $7FFF00,X

|05A696| PLA
|05A697| STA.l $7FFE00,X

|05A69B| PLA
|05A69C| STA.l $7FFD00,X

|05A6A0| PLA
|05A6A1| STA.l $7FFC00,X

|05A6A5| PLX

;---------------------------------------------------------------------------------------------------

|05A6A6| LDA.w $0DD0,X
|05A6A9| CMP.b #$09
|05A6AB| BNE .active

|05A6AD| LDA.b $11
|05A6AF| ORA.w $0FC1
|05A6B2| BNE .active

|05A6B4| LDA.w $0E80,X
|05A6B7| INC A
|05A6B8| AND.b #$3F
|05A6BA| STA.w $0E80,X

.active
|05A6BD| LDA.w $0F50,X
|05A6C0| ORA.w $0B89,X
|05A6C3| STA.b $03

|05A6C5| LDA.l $7FF81E,X
|05A6C9| BPL .segments_visible

|05A6CB| RTS

;---------------------------------------------------------------------------------------------------

.segments_visible
|05A6CC| PHX
|05A6CD| PHA

|05A6CE| STA.b $0E

|05A6D0| LDA.w $0D40,X
|05A6D3| ASL A
|05A6D4| ROL A
|05A6D5| AND.b #$01
|05A6D7| TAX

|05A6D8| LDA.w .oam_b_offset,X
|05A6DB| STA.b $0C

|05A6DD| LDY.w .oam_a_offset,X

|05A6E0| PLX
|05A6E1| STX.b $0B

.next_segment_object
|05A6E3| PHX

|05A6E4| STX.b $0D

|05A6E6| LDA.b $02
|05A6E8| CLC
|05A6E9| ADC.b $04
|05A6EB| TAX

|05A6EC| LDA.b $02
|05A6EE| SEC
|05A6EF| SBC.b #$08
|05A6F1| AND.b #$3F
|05A6F3| STA.b $02

|05A6F5| LDA.l $7FFC00,X
|05A6F9| SEC
|05A6FA| SBC.b $E2
|05A6FC| STA.b ($90),Y

|05A6FE| INY

|05A6FF| LDA.l $7FFE00,X
|05A703| BMI .on_screen_x

|05A705| LDA.l $7FFD00,X
|05A709| SEC
|05A70A| SBC.l $7FFE00,X
|05A70E| SEC
|05A70F| SBC.b $E8
|05A711| STA.b ($90),Y

.on_screen_x
|05A713| PHY

|05A714| LDA.l $7FFF00,X
|05A718| TAX

|05A719| LDY.b $0D

|05A71B| LDA.b $0B
|05A71D| CMP.b #$07
|05A71F| BNE .segment_visible

|05A721| CPY.b #$00
|05A723| BEQ .head

.segment_visible
|05A725| LDA.b #$C6

|05A727| CPY.b $0B
|05A729| BNE .segment_good

|05A72B| LDA.w .segment_char,X
|05A72E| BRA .segment_good

.head
|05A730| LDA.w .head_char,X

.segment_good
|05A733| PLY
|05A734| INY

|05A735| STA.b ($90),Y

|05A737| LDA.w .prop,X
|05A73A| ORA.b $03
|05A73C| INY
|05A73D| STA.b ($90),Y

|05A73F| TYA

|05A740| PHY

|05A741| LSR A
|05A742| LSR A
|05A743| TAY

|05A744| LDA.b #$02
|05A746| STA.b ($92),Y

|05A748| PLA
|05A749| CLC
|05A74A| ADC.b $0C
|05A74C| TAY

|05A74D| PLX
|05A74E| DEX
|05A74F| BPL .next_segment_object

;---------------------------------------------------------------------------------------------------

|05A751| LDX.b $0E
|05A753| LDY.b #$20

.next_segment_object_b
|05A755| PHX

|05A756| LDA.b $05
|05A758| CLC
|05A759| ADC.b $04
|05A75B| TAX

|05A75C| LDA.b $05
|05A75E| SEC
|05A75F| SBC.b #$08
|05A761| AND.b #$3F
|05A763| STA.b $05

|05A765| LDA.l $7FFC00,X
|05A769| SEC
|05A76A| SBC.b $E2
|05A76C| STA.b ($90),Y

|05A76E| INY

|05A76F| LDA.l $7FFE00,X
|05A773| BMI .no_extra_offset

|05A775| LDA.l $7FFD00,X
|05A779| CLC
|05A77A| ADC.b #$0A
|05A77C| SEC
|05A77D| SBC.b $E8
|05A77F| STA.b ($90),Y

.no_extra_offset
|05A781| LDA.b #$6C
|05A783| INY
|05A784| STA.b ($90),Y

|05A786| LDA.b #$34
|05A788| INY
|05A789| STA.b ($90),Y

|05A78B| TYA

|05A78C| PHY
|05A78D| LSR A
|05A78E| LSR A
|05A78F| TAY

|05A790| LDA.b #$02
|05A792| STA.b ($92),Y

|05A794| PLY
|05A795| INY

|05A796| PLX
|05A797| DEX
|05A798| BPL .next_segment_object_b

;---------------------------------------------------------------------------------------------------

|05A79A| PLX
|05A79B| LDA.w $0D80,X
|05A79E| CMP.b #$01
|05A7A0| BNE .not_done

|05A7A2| JMP.w .draw_dirt

;---------------------------------------------------------------------------------------------------

.not_done
|05A7A5| CMP.b #$05
|05A7A7| BEQ .exit

|05A7A9| LDA.w $0E00,X
|05A7AC| BEQ .exit

|05A7AE| PHA

|05A7AF| LDA.w $0D40,X
|05A7B2| ASL A
|05A7B3| ROL A
|05A7B4| ASL A
|05A7B5| EOR.w $0D80,X
|05A7B8| AND.b #$02
|05A7BA| BEQ .use_region_c

|05A7BC| LDA.b #$08
|05A7BE| JSL AllocateOAMInRegionB

|05A7C2| BRA .region_was_set

.use_region_c
|05A7C4| LDA.b #$08
|05A7C6| JSL AllocateOAMInRegionC

;---------------------------------------------------------------------------------------------------

.region_was_set
|05A7CA| LDY.b #$00

|05A7CC| PLA
|05A7CD| LSR A
|05A7CE| LSR A
|05A7CF| AND.b #$03
|05A7D1| EOR.b #$03
|05A7D3| ASL A
|05A7D4| STA.b $06

|05A7D6| LDA.w $0DE0,X
|05A7D9| SEC
|05A7DA| SBC.b $E2
|05A7DC| STA.b $00

|05A7DE| LDA.w $0E70,X
|05A7E1| SEC
|05A7E2| SBC.b $E8
|05A7E4| STA.b $02

|05A7E6| PHX

|05A7E7| LDX.b #$01

;---------------------------------------------------------------------------------------------------

.next_segment_object_c
|05A7E9| PHX

|05A7EA| TXA
|05A7EB| CLC
|05A7EC| ADC.b $06
|05A7EE| TAX

|05A7EF| LDA.b $00
|05A7F1| CLC
|05A7F2| ADC.w .tail_offset_x,X
|05A7F5| STA.b ($90),Y

|05A7F7| LDA.b $02
|05A7F9| CLC
|05A7FA| ADC.w .tail_offset_y,X
|05A7FD| INY
|05A7FE| STA.b ($90),Y

|05A800| LDA.w .tail_tile,X
|05A803| INY
|05A804| STA.b ($90),Y

|05A806| LDA.w .tail_prop,X
|05A809| ORA.b #$31
|05A80B| INY
|05A80C| STA.b ($90),Y

|05A80E| PHY
|05A80F| TYA

|05A810| LSR A
|05A811| LSR A
|05A812| TAY

|05A813| LDA.w .tail_size,X
|05A816| STA.b ($92),Y

|05A818| PLY
|05A819| INY

|05A81A| PLX
|05A81B| DEX
|05A81C| BPL .next_segment_object_c

;---------------------------------------------------------------------------------------------------

|05A81E| PLX

.exit
|05A81F| RTS

;---------------------------------------------------------------------------------------------------

.draw_dirt
|05A820| LDA.b #$04

|05A822| JSL AllocateOAMInRegionB

|05A826| LDA.w $0D10,X
|05A829| SEC
|05A82A| SBC.b $E2
|05A82C| STA.b $00

|05A82E| LDA.w $0D00,X
|05A831| SEC
|05A832| SBC.b $E8
|05A834| STA.b $02

|05A836| LDA.w $0DF0,X
|05A839| LSR A
|05A83A| LSR A
|05A83B| LSR A
|05A83C| TAY

;---------------------------------------------------------------------------------------------------

|05A83D| PHX

|05A83E| LDX.w .lanmo_some_index,Y

|05A841| LDY.b #$00

|05A843| LDA.b $00
|05A845| STA.b ($90),Y

|05A847| LDA.b $02
|05A849| INY
|05A84A| STA.b ($90),Y

|05A84C| LDA.w .adjust_tile_char,X
|05A84F| INY
|05A850| STA.b ($90),Y

|05A852| LDA.w .adjust_flip,X
|05A855| ORA.b #$31
|05A857| INY
|05A858| STA.b ($90),Y

|05A85A| TYA
|05A85B| LSR A
|05A85C| LSR A
|05A85D| TAY

|05A85E| LDA.b #$02
|05A860| STA.b ($92),Y

|05A862| PLX

|05A863| RTS

;---------------------------------------------------------------------------------------------------

.adjust_tile_char
|05A864| db $EE, $EE, $EC, $EC, $CE, $CE

.adjust_flip
|05A86A| db $00, $40, $00, $40, $00, $40

.lanmo_some_index
|05A870| db $04, $05, $04, $05, $04, $05, $04, $05
|05A878| db $04, $03, $02, $02, $01, $01, $00, $00

;===================================================================================================

pool Sprite_6D_Rat

.anim_step
|05A880| db $00, $00, $03, $03, $01, $02, $04, $05
|05A888| db $01, $02, $04, $05, $00, $00, $03, $03

.flip
|05A890| db $00, $40, $00, $40, $00, $00, $00, $00
|05A898| db $40, $40, $40, $40, $80, $C0, $80, $C0

.stationary_state
|05A8A0| db $0A, $0B, $06, $07, $02, $03, $0E, $0F

endpool

;===================================================================================================

RatMovingState:
|05A8A8| db $08, $09, $04, $05, $00, $01, $0C, $0D

;===================================================================================================

Sprite_6D_Rat:
|05A8B0| LDY.w $0D90,X

|05A8B3| LDA.w .anim_step,Y
|05A8B6| STA.w $0DC0,X

|05A8B9| LDA.w $0F50,X
|05A8BC| AND.b #$3F
|05A8BE| ORA.w .flip,Y
|05A8C1| STA.w $0F50,X

|05A8C4| JSL SpriteDraw_SingleLarge_long

|05A8C8| JSR CheckIfActive_bank05
|05A8CB| JSR HandleSpriteRecoil_bank05
|05A8CE| JSR CheckDamageToAndFromLink_bank05

|05A8D1| JSR MoveSpriteXY_bank05
|05A8D4| JSR CheckSpriteTileCollision_bank05

|05A8D7| LDA.w $0D80,X
|05A8DA| BNE Rat_Moving

|05A8DC| JSR ZeroVelocityXY_bank05

|05A8DF| LDA.w $0DF0,X
|05A8E2| BNE .delay

|05A8E4| JSL GetRandomNumber
|05A8E8| PHA

|05A8E9| AND.b #$03
|05A8EB| STA.w $0DE0,X

|05A8EE| INC.w $0D80,X

|05A8F1| PLA
|05A8F2| AND.b #$7F
|05A8F4| ADC.b #$40
|05A8F6| STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

.delay
|05A8F9| LDA.b $1A
|05A8FB| LSR A
|05A8FC| LSR A
|05A8FD| LSR A
|05A8FE| LSR A

|05A8FF| LDA.w $0DE0,X
|05A902| ROL A
|05A903| TAY

|05A904| LDA.w .stationary_state,Y
|05A907| STA.w $0D90,X

|05A90A| RTS

;===================================================================================================

pool Rat_Moving

.speed_x
|05A90B| db  24, -24,   0,   0

.speed_y
|05A90F| db   0,   0,  24, -24

.direction
|05A913| db $02, $03, $01, $00

endpool

;===================================================================================================

Rat_Moving:
|05A917| LDA.w $0DF0,X
|05A91A| BNE .no_sfx

|05A91C| LDA.w $0FFF
|05A91F| BNE .crickets_dont_squeak

|05A921| LDA.b #$17 ; SFX3.17
|05A923| JSL QueueSpriteSFX3WithPan

.crickets_dont_squeak
|05A927| STZ.w $0D80,X

|05A92A| LDA.b #$50
|05A92C| STA.w $0DF0,X

.no_sfx
|05A92F| LDY.w $0DE0,X

|05A932| LDA.w $0E70,X
|05A935| BEQ .no_tile_collision

|05A937| LDA.w .direction,Y
|05A93A| STA.w $0DE0,X
|05A93D| TAY

.no_tile_collision
|05A93E| LDA.w .speed_x,Y
|05A941| STA.w $0D50,X

|05A944| LDA.w .speed_y,Y
|05A947| STA.w $0D40,X

|05A94A| LDA.b $1A
|05A94C| LSR A
|05A94D| LSR A
|05A94E| LSR A

|05A94F| LDA.w $0DE0,X
|05A952| ROL A
|05A953| TAY

|05A954| LDA.w RatMovingState,Y
|05A957| STA.w $0D90,X

|05A95A| RTS

;===================================================================================================

pool Sprite_6E_Rope

.anim_step
|05A95B| db $00, $00, $02, $03, $02, $03, $01, $01

.flip
|05A963| db $00, $40, $00, $00, $40, $40, $00, $40

endpool

;===================================================================================================

RopeAnimControl:
|05A96B| db $04, $05, $02, $03, $00, $01, $06, $07

;===================================================================================================

Sprite_6E_Rope:
|05A973| LDY.w $0D90,X

|05A976| LDA.w .anim_step,Y
|05A979| STA.w $0DC0,X

|05A97C| LDA.w $0F50,X
|05A97F| AND.b #$3F
|05A981| ORA.w .flip,Y
|05A984| STA.w $0F50,X

|05A987| JSL SpriteDraw_SingleLarge_long
|05A98B| JSR CheckIfActive_bank05

|05A98E| LDA.w $0E90,X
|05A991| BEQ Rope_Slither

;===================================================================================================

RopeFalling:
|05A993| LDY.b #$03

|05A995| LDA.b ($90),Y
|05A997| ORA.b #$30
|05A999| STA.b ($90),Y

|05A99B| LDA.w $0F70,X
|05A99E| PHA

|05A99F| JSR MoveSpriteZ_bank05

|05A9A2| LDA.w $0F80,X
|05A9A5| CMP.b #$C0
|05A9A7| BMI .at_max_z_speed

|05A9A9| SEC
|05A9AA| SBC.b #$02
|05A9AC| STA.w $0F80,X

.at_max_z_speed
|05A9AF| PLA
|05A9B0| EOR.w $0F70,X
|05A9B3| BPL .exit

|05A9B5| LDA.w $0F70,X
|05A9B8| BPL .exit

|05A9BA| STZ.w $0F70,X
|05A9BD| STZ.w $0F80,X
|05A9C0| STZ.w $0E90,X

|05A9C3| LDA.w $0E60,X
|05A9C6| AND.b #$EF
|05A9C8| STA.w $0E60,X

.exit
|05A9CB| RTS

;===================================================================================================
; Yeah. Here comes the water.
;===================================================================================================
Rope_Slither:
|05A9CC| STZ.w $0E40,X

|05A9CF| JSR HandleSpriteRecoil_bank05
|05A9D2| JSR CheckDamageToAndFromLink_bank05

|05A9D5| JSR MoveSpriteXY_bank05
|05A9D8| JSR CheckSpriteTileCollision_bank05

|05A9DB| LDA.w $0D80,X
|05A9DE| BNE Rope_Moving

;===================================================================================================

Rope_ChooseNextMove:
|05A9E0| JSR ZeroVelocityXY_bank05

|05A9E3| LDA.w $0DF0,X
|05A9E6| BNE .dont_turn

|05A9E8| STZ.w $0ED0,X

|05A9EB| JSL GetRandomNumber
|05A9EF| PHA

|05A9F0| AND.b #$03
|05A9F2| STA.w $0DE0,X

|05A9F5| INC.w $0D80,X

|05A9F8| PLA
|05A9F9| AND.b #$7F
|05A9FB| ADC.b #$40
|05A9FD| STA.w $0DF0,X

|05AA00| JSR GetDirectionTowardsLink_bank05

|05AA03| LDA.b $0E
|05AA05| CLC
|05AA06| ADC.b #$10
|05AA08| CMP.b #$20
|05AA0A| BCC .link_in_sights

|05AA0C| LDA.b $0F
|05AA0E| CLC
|05AA0F| ADC.b #$18
|05AA11| CMP.b #$20
|05AA13| BCS .dont_turn

.link_in_sights
|05AA15| LDA.b #$04
|05AA17| STA.w $0ED0,X

|05AA1A| TYA
|05AA1B| STA.w $0DE0,X

.dont_turn
|05AA1E| LDA.b $1A
|05AA20| LSR A ; /16
|05AA21| LSR A
|05AA22| LSR A
|05AA23| LSR A

|05AA24| LDA.w $0DE0,X
|05AA27| ROL A
|05AA28| TAY

|05AA29| LDA.w RopeAnimControl,Y
|05AA2C| STA.w $0D90,X

|05AA2F| RTS

;===================================================================================================

pool Rope_Moving

.speed_x
|05AA30| db   8,  -8,   0,   0
|05AA34| db  16, -16,   0,   0

.speed_y
|05AA38| db   0,   0,   8,  -8
|05AA3C| db   0,   0,  16, -16

.direction
|05AA40| db $02, $03, $01, $00

endpool

;---------------------------------------------------------------------------------------------------

Rope_Moving:
|05AA44| LDA.w $0DF0,X
|05AA47| BNE .delay

|05AA49| STZ.w $0D80,X

|05AA4C| LDA.b #$20
|05AA4E| STA.w $0DF0,X

.delay
|05AA51| LDY.w $0DE0,X

|05AA54| LDA.w $0E70,X
|05AA57| BEQ .no_tile_collision

|05AA59| LDA.w .direction,Y
|05AA5C| STA.w $0DE0,X

|05AA5F| TAY

.no_tile_collision
|05AA60| TYA
|05AA61| CLC
|05AA62| ADC.w $0ED0,X
|05AA65| TAY

|05AA66| LDA.w .speed_x,Y
|05AA69| STA.w $0D50,X

|05AA6C| LDA.w .speed_y,Y
|05AA6F| STA.w $0D40,X

|05AA72| LDA.b $1A
|05AA74| CPY.b #$04
|05AA76| BCS .move_fast

|05AA78| LSR A

.move_fast
|05AA79| LSR A
|05AA7A| LSR A

|05AA7B| LDA.w $0DE0,X
|05AA7E| ROL A
|05AA7F| TAY

|05AA80| LDA.w RopeAnimControl,Y
|05AA83| STA.w $0D90,X

|05AA86| RTS

;===================================================================================================

pool Sprite_6F_Keese

.speed_index
|05AA87| db $02, $0A, $06, $0E

endpool

;---------------------------------------------------------------------------------------------------

Sprite_6F_Keese:
|05AA8B| LDA.w $0B89,X
|05AA8E| ORA.b #$30
|05AA90| STA.w $0B89,X

|05AA93| JSL SpriteDraw_SingleLarge_long

|05AA97| JSR CheckIfActive_bank05
|05AA9A| JSR HandleSpriteRecoil_bank05
|05AA9D| JSR CheckDamageToAndFromLink_bank05
|05AAA0| JSR MoveSpriteXY_bank05

|05AAA3| LDA.w $0D80,X
|05AAA6| BNE Keese_Agitated

|05AAA8| TXA
|05AAA9| EOR.b $1A
|05AAAB| AND.b #$03
|05AAAD| ORA.w $0DF0,X
|05AAB0| BNE .exit

|05AAB2| JSR GetDirectionTowardsLink_bank05

|05AAB5| LDA.b $0E
|05AAB7| CLC
|05AAB8| ADC.b #$28
|05AABA| CMP.b #$50
|05AABC| BCS .exit

|05AABE| LDA.b $0F
|05AAC0| CLC
|05AAC1| ADC.b #$28
|05AAC3| CMP.b #$50
|05AAC5| BCS .exit

|05AAC7| LDA.b #$1E ; SFX3.1E
|05AAC9| JSL QueueSpriteSFX3WithPan

|05AACD| INC.w $0D80,X

|05AAD0| LDA.b #$40
|05AAD2| STA.w $0DF0,X
|05AAD5| STA.w $0DA0,X

|05AAD8| JSR GetDirectionTowardsLink_bank05

|05AADB| LDA.w .speed_index,Y
|05AADE| STA.w $0D90,X

.exit
|05AAE1| RTS

;===================================================================================================

Keese_MovementIndexStep:
|05AAE2| db   1,  -1

;===================================================================================================

SomeRandomXSpeeds_bank05:
|05AAE4| db   0,   8,  11,  14
|05AAE8| db  16,  14,  11,   8
|05AAEC| db   0,  -8, -11, -14
|05AAF0| db -16, -14, -11,  -8

SomeRandomYSpeeds_bank05:
|05AAF4| db -16, -14, -11,  -8
|05AAF8| db   0,   8,  11,  14
|05AAFC| db  16,  14,  11,   8
|05AB00| db   0,  -9, -11, -14 ; yo what's up with this random -9

;===================================================================================================

Keese_Agitated:
|05AB04| LDA.w $0DF0,X
|05AB07| BNE .not_calm

|05AB09| STZ.w $0D80,X

|05AB0C| LDA.b #$40
|05AB0E| STA.w $0DF0,X

|05AB11| STZ.w $0DC0,X

|05AB14| JSR ZeroVelocityXY_bank05

|05AB17| RTS

;---------------------------------------------------------------------------------------------------

.not_calm
|05AB18| AND.b #$07
|05AB1A| BNE .keep_momentum

|05AB1C| LDA.w $0DA0,X
|05AB1F| AND.b #$01
|05AB21| TAY

|05AB22| LDA.w $0D90,X
|05AB25| CLC
|05AB26| ADC.w Keese_MovementIndexStep,Y
|05AB29| STA.w $0D90,X

|05AB2C| JSL GetRandomNumber
|05AB30| AND.b #$03
|05AB32| BNE .keep_momentum

|05AB34| INC.w $0DA0,X

;---------------------------------------------------------------------------------------------------

.keep_momentum
|05AB37| LDA.w $0D90,X
|05AB3A| AND.b #$0F
|05AB3C| TAY

|05AB3D| LDA.w SomeRandomXSpeeds_bank05,Y
|05AB40| STA.w $0D50,X

|05AB43| LDA.w SomeRandomYSpeeds_bank05,Y
|05AB46| STA.w $0D40,X

|05AB49| LDA.b $1A
|05AB4B| LSR A
|05AB4C| LSR A
|05AB4D| AND.b #$01
|05AB4F| INC A
|05AB50| STA.w $0DC0,X

|05AB53| RTS

;===================================================================================================

Cannonball:
|05AB54| JSL SpriteDraw_SingleLarge_long
|05AB58| JSR CheckIfActive_bank05
|05AB5B| JSR MoveSpriteXY_bank05

|05AB5E| LDA.w $0DF0,X
|05AB61| CMP.b #$1E
|05AB63| BNE .no_poof

|05AB65| PHA
|05AB66| JSL SpawnPoofGarnish
|05AB6A| PLA

.no_poof
|05AB6B| CMP.b #$00
|05AB6D| BNE CheckDamageToAndFromLink_bank05

|05AB6F| JSR CheckSpriteTileCollision_bank05
|05AB72| BEQ CheckDamageToAndFromLink_bank05

|05AB74| STZ.w $0DD0,X

|05AB77| LDA.w $0D10,X
|05AB7A| CLC
|05AB7B| ADC.b #$04
|05AB7D| STA.w $0D10,X

|05AB80| LDA.w $0D00,X
|05AB83| CLC
|05AB84| ADC.b #$04
|05AB86| STA.w $0D00,X

|05AB89| JSL PlaceWeaponTinkAtSprite_forced

|05AB8D| LDA.b #$05 ; SFX2.05
|05AB8F| JSL QueueSpriteSFX2WithPan

;===================================================================================================

CheckDamageToAndFromLink_bank05:
|05AB93| JSL CheckDamageFromLink_long
|05AB97| JSL CheckDamageToLink_long

|05AB9B| RTS

;===================================================================================================

SpawnPoofGarnish:
|05AB9C| PHX
|05AB9D| TXY

|05AB9E| LDX.b #$1D

.next_slot
|05ABA0| LDA.l $7FF800,X
|05ABA4| BEQ .free_slot

|05ABA6| DEX
|05ABA7| BPL .next_slot

|05ABA9| INX

.free_slot
|05ABAA| LDA.b #$0A ; GARNISH 0A
|05ABAC| STA.l $7FF800,X
|05ABB0| STA.w $0FB4

|05ABB3| LDA.w $0D10,Y
|05ABB6| STA.l $7FF83C,X

|05ABBA| LDA.w $0D30,Y
|05ABBD| STA.l $7FF878,X

|05ABC1| LDA.w $0D00,Y
|05ABC4| CLC
|05ABC5| ADC.b #$10
|05ABC7| STA.l $7FF81E,X

|05ABCB| LDA.w $0D20,Y
|05ABCE| ADC.b #$00
|05ABD0| STA.l $7FF85A,X

|05ABD4| LDA.w $0F20,Y
|05ABD7| STA.l $7FF92C,X

|05ABDB| LDA.b #$0F
|05ABDD| STA.l $7FF90E,X

|05ABE1| TXY
|05ABE2| PLX

|05ABE3| RTL

;===================================================================================================

Sprite_6B_Cannonball:
|05ABE4| LDA.w $0DB0,X
|05ABE7| BEQ CannonGuard

|05ABE9| JMP.w Cannonball

;===================================================================================================

CannonGuard:
|05ABEC| LDY.w $0DE0,X
|05ABEF| PHY

|05ABF0| LDA.w $0E00,X
|05ABF3| BEQ .dont_turn

|05ABF5| LDA.w SpriteDirections_bank05,Y
|05ABF8| STA.w $0DE0,X

.dont_turn
|05ABFB| JSR SpriteDraw_CannonGuard

|05ABFE| PLA
|05ABFF| STA.w $0DE0,X

|05AC02| JSR CheckIfActive_bank05
|05AC05| JSR CheckDamageToAndFromLink_bank05

|05AC08| LDA.w $0D80,X

|05AC0B| REP #$30

|05AC0D| AND.w #$00FF
|05AC10| ASL A
|05AC11| TAY

|05AC12| LDA.w .vectors,Y
|05AC15| DEC A
|05AC16| PHA

|05AC17| SEP #$30

|05AC19| RTS

;---------------------------------------------------------------------------------------------------

.vectors
|05AC1A| dw CannonGuard_Idle
|05AC1C| dw CannonGuard_Charge
|05AC1E| dw CannonGuard_Fire
|05AC20| dw CannonGuard_Recoil
|05AC22| dw CannonGuard_Recover

;===================================================================================================

CannonGuard_Idle:
|05AC24| STZ.w $0D90,X

|05AC27| LDA.w $0DF0,X
|05AC2A| BNE .exit

|05AC2C| INC.w $0D80,X

|05AC2F| LDA.b #$60
|05AC31| STA.w $0DF0,X

;===================================================================================================

#CannonGuard_FaceLink:
|05AC34| LDA.w $0DE0,X
|05AC37| PHA

|05AC38| JSR GetDirectionTowardsLink_bank05

|05AC3B| TYA
|05AC3C| STA.w $0DE0,X

|05AC3F| PLA
|05AC40| CMP.w $0DE0,X
|05AC43| BEQ .exit

|05AC45| EOR.w $0DE0,X
|05AC48| AND.b #$02
|05AC4A| BNE .exit

|05AC4C| LDA.b #$0C
|05AC4E| STA.w $0E00,X

.exit
|05AC51| RTS

;===================================================================================================

CannonGuard_Charge:
|05AC52| LDA.b #$00

|05AC54| LDY.w $0DF0,X
|05AC57| BEQ .fire_shot

|05AC59| CPY.b #$30
|05AC5B| BCS .lift_arm

|05AC5D| LDA.b #$02

.lift_arm
|05AC5F| STA.w $0D90,X

|05AC62| RTS

;---------------------------------------------------------------------------------------------------

.offset_x_low
|05AC63| db  16, -16,   0,   0

.offset_x_high
|05AC67| db   0,  -1,   0,   0

.offset_y_low
|05AC6B| db   0,   0,   8, -16

.offset_y_high
|05AC6F| db   0,   0,   0,  -1

.speed_x
|05AC73| db  24, -24,   0,   0

.speed_y
|05AC77| db   0,   0,  24, -24

;---------------------------------------------------------------------------------------------------

.fire_shot
|05AC7B| INC.w $0D80,X

|05AC7E| LDA.b #$04
|05AC80| STA.w $0DF0,X

|05AC83| LDA.b #$6B ; SPRITE 6B
|05AC85| JSL SpawnSpriteDynamically
|05AC89| BMI .exit

|05AC8B| LDA.b #$07 ; SFX3.07
|05AC8D| JSL QueueSpriteSFX3WithPan

|05AC91| LDA.b #$01
|05AC93| STA.w $0DB0,Y

|05AC96| LDA.w $0DE0,X

|05AC99| PHX

|05AC9A| TAX

|05AC9B| LDA.b $00
|05AC9D| CLC
|05AC9E| ADC.w .offset_x_low,X
|05ACA1| STA.w $0D10,Y

|05ACA4| LDA.b $01
|05ACA6| ADC.w .offset_x_high,X
|05ACA9| STA.w $0D30,Y

|05ACAC| LDA.b $02
|05ACAE| CLC
|05ACAF| ADC.w .offset_y_low,X
|05ACB2| STA.w $0D00,Y

|05ACB5| LDA.b $03
|05ACB7| ADC.w .offset_y_high,X
|05ACBA| STA.w $0D20,Y

|05ACBD| LDA.w .speed_x,X
|05ACC0| STA.w $0D50,Y

|05ACC3| LDA.w .speed_y,X
|05ACC6| STA.w $0D40,Y

|05ACC9| LDA.w $0E40,Y
|05ACCC| AND.b #$F0
|05ACCE| ORA.b #$01
|05ACD0| STA.w $0E40,Y

|05ACD3| LDA.w $0E60,Y
|05ACD6| ORA.b #$47
|05ACD8| STA.w $0E60,Y

|05ACDB| LDA.w $0CAA,Y
|05ACDE| ORA.b #$44
|05ACE0| STA.w $0CAA,Y

|05ACE3| LDA.b #$20
|05ACE5| STA.w $0DF0,Y

|05ACE8| PLX

.exit
|05ACE9| RTS

;===================================================================================================

pool CannonGuard_Fire

.recoil_speed_x
|05ACEA| db -32,  32,   0,   0

.recoil_speed_y
|05ACEE| db   0,   0, -32,  32

endpool

;---------------------------------------------------------------------------------------------------

CannonGuard_Fire:
|05ACF2| LDA.w $0DF0,X
|05ACF5| BNE .delay

|05ACF7| INC.w $0D80,X

|05ACFA| LDA.b #$20
|05ACFC| STA.w $0DF0,X

.delay
|05ACFF| LDY.w $0DE0,X

|05AD02| LDA.w .recoil_speed_x,Y
|05AD05| STA.w $0D50,X

|05AD08| LDA.w .recoil_speed_y,Y
|05AD0B| STA.w $0D40,X

|05AD0E| JSR MoveSpriteXY_bank05

|05AD11| RTS

;===================================================================================================

CannonGuard_Recoil:
|05AD12| LDA.w $0DF0,X
|05AD15| BNE .exit

|05AD17| INC.w $0D80,X

|05AD1A| LDA.b #$10
|05AD1C| STA.w $0DF0,X

.exit
|05AD1F| RTS

;===================================================================================================

pool CannonGuard_Recover

.recover_speed_x
|05AD20| db   8,  -8,   0,   0

.recover_speed_y
|05AD24| db   0,   0,   8,  -8

endpool

;---------------------------------------------------------------------------------------------------

CannonGuard_Recover:
|05AD28| LDA.w $0DF0,X
|05AD2B| BNE .delay

|05AD2D| STZ.w $0D80,X

|05AD30| LDA.b #$80
|05AD32| STA.w $0DF0,X

.delay
|05AD35| LDY.w $0DE0,X

|05AD38| LDA.w .recover_speed_x,Y
|05AD3B| STA.w $0D50,X

|05AD3E| LDA.w .recover_speed_y,Y
|05AD41| STA.w $0D40,X

|05AD44| JSR MoveSpriteXY_bank05

|05AD47| LDA.b $1A
|05AD49| LSR A
|05AD4A| LSR A
|05AD4B| AND.b #$01
|05AD4D| STA.w $0D90,X

|05AD50| RTS

;===================================================================================================

pool SpriteDraw_CannonGuard

.offset_x
|05AD51| dw  -4,   4,   0,   0
|05AD59| dw   0,  -4,   4,   0
|05AD61| dw   0,   0,  -4,   4
|05AD69| dw   0,   0,  12,   4
|05AD71| dw   4,  -8,  -8,  -8
|05AD79| dw   4,   4,  -8,  -8
|05AD81| dw  -8,   4,   4,  -8
|05AD89| dw   9,   9,   0,  -4
|05AD91| dw   4,   0,   0,   0
|05AD99| dw  -4,   4,   0,   0
|05ADA1| dw   0,  -4,   4,   0
|05ADA9| dw  -5,  -4,  -4,   8
|05ADB1| dw   8,   8,  -4,  -4
|05ADB9| dw   8,   8,   8,  -4
|05ADC1| dw  -4,   8,  -1,  -1

.offset_y
|05ADC9| dw   0,   0,  -9,   7
|05ADD1| dw   7,   0,   0,  -9
|05ADD9| dw   7,   7,   0,   0
|05ADE1| dw  -9,   7,  -3,   0
|05ADE9| dw  -9,   0,   0,   0
|05ADF1| dw   0,  -9,   0,   0
|05ADF9| dw   0,   0,  -9,   0
|05AE01| dw   0,   0, -12,   0
|05AE09| dw   0,  -9,  -9, -12
|05AE11| dw   0,   0,  -9,  -9
|05AE19| dw -12,   0,   0,  -9
|05AE21| dw  -3,   0,  -9,   0
|05AE29| dw   0,   0,   0,  -9
|05AE31| dw   0,   0,   0,   0
|05AE39| dw  -9,   0,   0,   0

.char
|05AE41| db $46, $46, $00, $24
|05AE45| db $24, $48, $49, $00
|05AE49| db $24, $24, $46, $06
|05AE4D| db $00, $24, $2F, $4E
|05AE51| db $02, $26, $26, $26
|05AE55| db $60, $02, $26, $26
|05AE59| db $26, $08, $02, $26
|05AE5D| db $2F, $2F, $28, $64
|05AE61| db $64, $04, $04, $28
|05AE65| db $66, $67, $04, $04
|05AE69| db $28, $0A, $64, $04
|05AE6D| db $2F, $4E, $02, $26
|05AE71| db $26, $26, $60, $02
|05AE75| db $26, $26, $26, $08
|05AE79| db $02, $26, $2F, $2F

.flip
|05AE7D| db $00, $40, $00, $00
|05AE81| db $00, $00, $00, $00
|05AE85| db $00, $00, $00, $00
|05AE89| db $00, $00, $00, $00
|05AE8D| db $00, $00, $00, $00
|05AE91| db $00, $00, $00, $00
|05AE95| db $00, $00, $00, $00
|05AE99| db $00, $00, $00, $00
|05AE9D| db $40, $00, $00, $00
|05AEA1| db $00, $00, $00, $00
|05AEA5| db $00, $00, $40, $00
|05AEA9| db $40, $40, $40, $40
|05AEAD| db $40, $40, $40, $40
|05AEB1| db $40, $40, $40, $40
|05AEB5| db $40, $40, $40, $40

.size
|05AEB9| db $02, $02, $02, $02
|05AEBD| db $02, $02, $02, $02
|05AEC1| db $02, $02, $02, $02
|05AEC5| db $02, $02, $00, $02
|05AEC9| db $02, $02, $02, $02
|05AECD| db $02, $02, $02, $02
|05AED1| db $02, $02, $02, $02
|05AED5| db $00, $00, $02, $02
|05AED9| db $02, $02, $02, $02
|05AEDD| db $02, $02, $02, $02
|05AEE1| db $02, $02, $02, $02
|05AEE5| db $00, $02, $02, $02
|05AEE9| db $02, $02, $02, $02
|05AEED| db $02, $02, $02, $02
|05AEF1| db $02, $02, $00, $00

.direction_offset
|05AEF5| db $09
|05AEF6| db $03
|05AEF7| db $00
|05AEF8| db $06

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_CannonGuard:
|05AEF9| JSR GetScreenCoordinates_bank05

|05AEFC| LDY.w $0DE0,X

|05AEFF| LDA.w .direction_offset,Y
|05AF02| CLC
|05AF03| ADC.w $0D90,X
|05AF06| STA.b $06

|05AF08| ASL A
|05AF09| ASL A
|05AF0A| ADC.b $06
|05AF0C| STA.b $06

|05AF0E| PHX

|05AF0F| LDX.b #$04
|05AF11| LDY.b #$00

.next_object
|05AF13| PHX

|05AF14| TXA
|05AF15| CLC
|05AF16| ADC.b $06
|05AF18| PHA

|05AF19| ASL A
|05AF1A| TAX

|05AF1B| REP #$20

|05AF1D| LDA.b $00
|05AF1F| CLC
|05AF20| ADC.w .offset_x,X
|05AF23| STA.b ($90),Y

|05AF25| AND.w #$0100
|05AF28| STA.b $0E

|05AF2A| LDA.b $02
|05AF2C| CLC
|05AF2D| ADC.w .offset_y,X

|05AF30| INY
|05AF31| STA.b ($90),Y

|05AF33| CLC
|05AF34| ADC.w #$0010
|05AF37| CMP.w #$0100
|05AF3A| BCC .on_screen

|05AF3C| LDA.w #$00F0
|05AF3F| STA.b ($90),Y

.on_screen
|05AF41| SEP #$20

|05AF43| PLX

|05AF44| LDA.w .char,X
|05AF47| INY
|05AF48| STA.b ($90),Y

|05AF4A| SEC
|05AF4B| SBC.b #$24
|05AF4D| CMP.b #$05

|05AF4F| LDA.w .flip,X
|05AF52| ORA.b $05
|05AF54| BCS .not_cannon

; change to red palette for cannon
|05AF56| AND.b #$F1
|05AF58| ORA.b #$06

.not_cannon
|05AF5A| INY

|05AF5B| STA.b ($90),Y

|05AF5D| PHY

|05AF5E| TYA
|05AF5F| LSR A
|05AF60| LSR A
|05AF61| TAY

|05AF62| LDA.w .size,X
|05AF65| ORA.b $0F
|05AF67| STA.b ($92),Y

|05AF69| PLY
|05AF6A| INY

|05AF6B| PLX
|05AF6C| DEX
|05AF6D| BPL .next_object

;---------------------------------------------------------------------------------------------------

|05AF6F| PLX

|05AF70| RTS

;===================================================================================================

pool Sprite_6C_MirrorPortal

.flip
|05AF71| db $00, $40, $C0, $80

endpool

;---------------------------------------------------------------------------------------------------

Sprite_6C_MirrorPortal:
|05AF75| LDA.l $7EF3CA
|05AF79| BNE .in_dark_world

|05AF7B| LDA.b $8A
|05AF7D| CMP.b #$80 ; SPOW
|05AF7F| BCC .in_normal_overworld

|05AF81| RTS

;---------------------------------------------------------------------------------------------------

.in_normal_overworld
|05AF82| LDA.b $11
|05AF84| CMP.b #$23
|05AF86| BEQ .skip_draw

|05AF88| LDA.w $0FC6
|05AF8B| CMP.b #$03
|05AF8D| BCS .skip_draw

|05AF8F| JSL SpriteDraw_SingleLarge_long

.skip_draw
|05AF93| JSR CheckIfActive_bank05

|05AF96| LDA.b $1A
|05AF98| LSR A
|05AF99| LSR A
|05AF9A| AND.b #$03
|05AF9C| TAY

|05AF9D| LDA.w $0F50,X
|05AFA0| AND.b #$3F
|05AFA2| ORA.w .flip,Y
|05AFA5| STA.w $0F50,X

|05AFA8| JSL CheckIfLinkIsBusy
|05AFAC| BCS .exit

|05AFAE| JSL CheckDamageToLink_same_layer_long
|05AFB2| BCC .not_touching

|05AFB4| LDA.w $0D90,X
|05AFB7| BEQ .dont_do_warp

|05AFB9| LDA.w $037B
|05AFBC| ORA.w $031F
|05AFBF| BNE .dont_do_warp

|05AFC1| LDA.w $02E4
|05AFC4| BNE .dont_do_warp

;---------------------------------------------------------------------------------------------------

|05AFC6| LDA.b #$23
|05AFC8| STA.b $11

|05AFCA| LDA.b #$01
|05AFCC| STA.w $02DB

|05AFCF| STZ.b $B0

|05AFD1| STZ.b $27
|05AFD3| STZ.b $28

|05AFD5| LDA.b #$14 ; LINKSTATE 14
|05AFD7| STA.b $5D

|05AFD9| LDA.b $8A
|05AFDB| AND.b #$40
|05AFDD| STA.b $7B

;---------------------------------------------------------------------------------------------------

.in_dark_world
|05AFDF| STZ.w $0DD0,X

|05AFE2| BRA .dont_do_warp

;---------------------------------------------------------------------------------------------------

.not_touching
|05AFE4| LDA.b #$01
|05AFE6| STA.w $0D90,X

|05AFE9| LDA.w $0F50,X ; !WEIRD why?
|05AFEC| AND.b #$FF
|05AFEE| STA.w $0F50,X

.dont_do_warp
|05AFF1| INC.w $0DA0,X
|05AFF4| BNE .dont_flag_as_touching

|05AFF6| LDA.b #$01
|05AFF8| STA.w $0D90,X

.dont_flag_as_touching
|05AFFB| LDA.w $1ABF
|05AFFE| STA.w $0D10,X

|05B001| LDA.w $1ACF
|05B004| STA.w $0D30,X

|05B007| LDA.w $1ADF
|05B00A| CLC
|05B00B| ADC.b #$08
|05B00D| STA.w $0D00,X

|05B010| LDA.w $1AEF
|05B013| ADC.b #$00
|05B015| STA.w $0D20,X

.exit
|05B018| RTS

;===================================================================================================

pool Sprite_6A_BallNChain

.spin_speed
|05B019| db $22, $10

endpool

;---------------------------------------------------------------------------------------------------

Sprite_6A_BallNChain:
|05B01B| JSR SpriteDraw_BallNChain

|05B01E| LDA.w $0D80,X
|05B021| CMP.b #$02
|05B023| BCS .not_attacking

|05B025| LDA.b #$80
|05B027| STA.w $0FAB

.not_attacking
|05B02A| JSR CheckIfActive_bank05
|05B02D| JSL ParrySwordAttacks

|05B031| LDY.w $0D80,X

|05B034| LDA.w .spin_speed-2,Y
|05B037| CLC
|05B038| ADC.w $0D90,X
|05B03B| STA.w $0D90,X

|05B03E| LDA.w $0DA0,X
|05B041| ADC.b #$00
|05B043| AND.b #$01
|05B045| STA.w $0DA0,X

|05B048| JSR HandleSpriteRecoil_bank05
|05B04B| JSR CheckSpriteTileCollision_bank05
|05B04E| JSR MoveSpriteXY_bank05
|05B051| JSL CheckDamageToLink_long

|05B055| TXA
|05B056| EOR.b $1A
|05B058| AND.b #$0F
|05B05A| BNE .dont_turn

|05B05C| JSR GetDirectionTowardsLink_bank05
|05B05F| TYA
|05B060| STA.w $0EB0,X

;---------------------------------------------------------------------------------------------------

.dont_turn
|05B063| LDA.w $0D80,X

|05B066| REP #$30

|05B068| AND.w #$00FF
|05B06B| ASL A
|05B06C| TAY

|05B06D| LDA.w .vectors,Y
|05B070| DEC A
|05B071| PHA

|05B072| SEP #$30

|05B074| RTS

;---------------------------------------------------------------------------------------------------

.vectors
|05B075| dw BallNChain_Approach
|05B077| dw BallNChain_Steady
|05B079| dw BallNChain_SpinFlail
|05B07B| dw BallNChain_SlowFlail

;===================================================================================================

BallNChain_Approach:
|05B07D| TXA
|05B07E| EOR.b $1A
|05B080| AND.b #$0F
|05B082| BNE BallNChain_Animate

|05B084| LDA.w $0EB0,X
|05B087| STA.w $0DE0,X

|05B08A| LDA.b $0E
|05B08C| CLC
|05B08D| ADC.b #$40
|05B08F| CMP.b #$68
|05B091| BCS .out_of_range

|05B093| LDA.b $0F
|05B095| CLC
|05B096| ADC.b #$30
|05B098| CMP.b #$60
|05B09A| BCS .out_of_range

|05B09C| INC.w $0D80,X

|05B09F| LDA.b #$18
|05B0A1| STA.w $0DF0,X

|05B0A4| RTS

;---------------------------------------------------------------------------------------------------

.out_of_range
|05B0A5| LDA.b #$08
|05B0A7| JSL ApplySpeedTowardsLink_long

;===================================================================================================

BallNChain_Animate:
|05B0AB| LDA.w $0DE0,X
|05B0AE| ASL A
|05B0AF| ASL A
|05B0B0| ASL A
|05B0B1| STA.b $00

|05B0B3| INC.w $0E80,X

|05B0B6| LDA.w $0E80,X
|05B0B9| LSR A
|05B0BA| LSR A
|05B0BB| AND.b #$07
|05B0BD| ORA.b $00
|05B0BF| TAY

|05B0C0| LDA.w BluesainAndBNC_anim_step,Y
|05B0C3| STA.w $0DC0,X

|05B0C6| RTS

;===================================================================================================

BluesainAndBNC_anim_step:
|05B0C7| db $10, $11, $12, $13, $10, $11, $12, $13
|05B0CF| db $06, $07, $08, $09, $06, $07, $08, $09
|05B0D7| db $00, $01, $02, $03, $00, $01, $04, $05
|05B0DF| db $0A, $0B, $0C, $0D, $0A, $0B, $0E, $0F

;===================================================================================================

BallNChain_Steady:
|05B0E7| JSR ZeroVelocityXY_bank05

|05B0EA| LDA.w $0DF0,X
|05B0ED| BNE .exit

|05B0EF| LDA.b #$30
|05B0F1| STA.w $0DF0,X

|05B0F4| INC.w $0D80,X

.exit
|05B0F7| RTS

;===================================================================================================

pool BallNChain_SpinFlail

.direction
|05B0F8| db $03, $01, $02, $00

endpool

;---------------------------------------------------------------------------------------------------

BallNChain_SpinFlail:
|05B0FC| LDA.w $0DF0,X
|05B0FF| BNE BallNChain_AnimateAndSFX

|05B101| LDA.w $0D90,X
|05B104| ASL A

|05B105| LDA.w $0DA0,X
|05B108| ROL A
|05B109| TAY

|05B10A| LDA.w .direction,Y
|05B10D| CMP.w $0EB0,X
|05B110| BNE BallNChain_AnimateAndSFX

|05B112| INC.w $0D80,X

|05B115| LDA.b #$1F
|05B117| STA.w $0E10,X

;===================================================================================================

BallNChain_AnimateAndSFX:
|05B11A| INC.w $0E80,X

|05B11D| JSR BallNChain_Animate

|05B120| TXA
|05B121| EOR.b $1A
|05B123| AND.b #$0F
|05B125| BNE .exit

|05B127| LDA.b #$06 ; SFX3.06
|05B129| JSL QueueSpriteSFX3WithPan

.exit
|05B12D| RTS

;===================================================================================================

BallNChain_SlowFlail:
|05B12E| JSR ZeroVelocityXY_bank05

|05B131| LDA.w $0E10,X
|05B134| BNE .delay

|05B136| STZ.w $0D80,X

.delay
|05B139| CMP.b #$10
|05B13B| BCS BallNChain_AnimateAndSFX

|05B13D| INC.w $0E80,X

|05B140| JSR BallNChain_Animate

|05B143| RTS

;===================================================================================================

SpriteDraw_BallNChain:
|05B144| JSR GetScreenCoordinates_bank05

|05B147| JSR SpriteDraw_BNCHead
|05B14A| JSR SpriteDraw_BNCBody
|05B14D| JSR SpriteDraw_BNCFlail

|05B150| JSR GetScreenCoordinates_bank05

|05B153| JMP.w DrawGuardShadow

;===================================================================================================

pool SpriteDraw_GuardHead

.head_char
|05B156| db $02, $02, $00, $04

.head_flip
|05B15A| db $40, $00, $00, $00

endpool

;===================================================================================================

SpriteDraw_BNCHead:
|05B15E| LDY.b #$18

;===================================================================================================

SpriteDraw_GuardHead:
|05B160| PHX

|05B161| LDA.w $0EB0,X
|05B164| TAX

|05B165| REP #$20

|05B167| LDA.b $00
|05B169| STA.b ($90),Y

|05B16B| AND.w #$0100
|05B16E| STA.b $0E

|05B170| LDA.b $02
|05B172| SEC
|05B173| SBC.w #$0009

|05B176| INY
|05B177| STA.b ($90),Y

|05B179| CLC
|05B17A| ADC.w #$0010
|05B17D| CMP.w #$0100
|05B180| BCC .head_on_screen

|05B182| LDA.w #$00F0
|05B185| STA.b ($90),Y

.head_on_screen
|05B187| SEP #$20

|05B189| LDA.w .head_char,X
|05B18C| INY
|05B18D| STA.b ($90),Y

|05B18F| LDA.w .head_flip,X
|05B192| INY
|05B193| ORA.b $05
|05B195| STA.b ($90),Y

|05B197| TYA
|05B198| LSR A
|05B199| LSR A
|05B19A| TAY

|05B19B| LDA.b #$02
|05B19D| ORA.b $0F
|05B19F| STA.b ($92),Y

|05B1A1| PLX

|05B1A2| RTS

;===================================================================================================

pool SpriteDraw_GuardBody

.body_offset_x
|05B1A3| dw  -4,   4,  12,  -4
|05B1AB| dw   4,  13,  -4,   4
|05B1B3| dw  13,  -4,   4,  13
|05B1BB| dw  -4,   4,  13,  -4
|05B1C3| dw   4,  13,   0,   0
|05B1CB| dw   4,   0,   0,   5
|05B1D3| dw   0,   0,   6,   0
|05B1DB| dw   0,   4,  -4,   4
|05B1E3| dw  -6,  -4,   4,  -5
|05B1EB| dw  -4,   4,  -5,  -4
|05B1F3| dw   4,  -6,  -4,   4
|05B1FB| dw  -5,  -4,   4,  -6
|05B203| dw   0,   0,   4,   0
|05B20B| dw   0,   3,   0,   0
|05B213| dw   2,   0,   0,   4
|05B21B| dw   0,   0,   0,   0
|05B223| dw   0,   0,  -4,   4
|05B22B| dw   4,  -4,   4,   4

.body_offset_y
|05B233| dw   0,   0,  -4,   0
|05B23B| dw   0,  -4,   0,   0
|05B243| dw  -3,   0,   0,  -2
|05B24B| dw   0,   0,  -3,   0
|05B253| dw   0,  -2,   0,   0
|05B25B| dw   1,   0,   0,   1
|05B263| dw   0,   0,   2,   0
|05B26B| dw   0,   2,   0,   0
|05B273| dw  -2,   0,   0,  -2
|05B27B| dw   0,   0,  -1,   0
|05B283| dw   0,  -1,   0,   0
|05B28B| dw  -1,   0,   0,  -1
|05B293| dw   0,   0,   1,   0
|05B29B| dw   0,   1,   0,   0
|05B2A3| dw   2,   0,   0,   2
|05B2AB| dw   0,   0,   0,   0
|05B2B3| dw   0,   0,   0,   0
|05B2BB| dw   0,   0,   0,   0

.body_char
|05B2C3| db $46, $06, $2F, $46
|05B2C7| db $06, $2F, $48, $0D
|05B2CB| db $2F, $48, $0D, $2F
|05B2CF| db $49, $0C, $2F, $49
|05B2D3| db $0C, $2F, $08, $08
|05B2D7| db $2F, $08, $08, $2F
|05B2DB| db $22, $22, $2F, $22
|05B2DF| db $22, $2F, $0A, $64
|05B2E3| db $2F, $0A, $64, $2F
|05B2E7| db $2C, $67, $2F, $2C
|05B2EB| db $67, $2F, $2D, $66
|05B2EF| db $2F, $2D, $66, $2F
|05B2F3| db $08, $08, $2F, $08
|05B2F7| db $08, $2F, $22, $22
|05B2FB| db $2F, $22, $22, $2F
|05B2FF| db $62, $62, $62, $62
|05B303| db $62, $62, $46, $4B
|05B307| db $4B, $69, $64, $64

.body_flip
|05B30B| db $00, $00, $00, $00
|05B30F| db $00, $00, $00, $00
|05B313| db $00, $00, $00, $00
|05B317| db $40, $40, $00, $40
|05B31B| db $40, $00, $00, $00
|05B31F| db $00, $00, $00, $00
|05B323| db $00, $00, $00, $00
|05B327| db $00, $00, $00, $40
|05B32B| db $40, $00, $40, $40
|05B32F| db $00, $00, $40, $00
|05B333| db $00, $40, $40, $40
|05B337| db $40, $40, $40, $40
|05B33B| db $40, $40, $40, $40
|05B33F| db $40, $40, $40, $40
|05B343| db $40, $40, $40, $40
|05B347| db $40, $40, $40, $00
|05B34B| db $00, $00, $00, $40
|05B34F| db $40, $00, $40, $40

.body_size
|05B353| db $02, $02, $00, $02
|05B357| db $02, $00, $02, $02
|05B35B| db $00, $02, $02, $00
|05B35F| db $02, $02, $00, $02
|05B363| db $02, $00, $02, $02
|05B367| db $00, $02, $02, $00
|05B36B| db $02, $02, $00, $02
|05B36F| db $02, $00, $02, $02
|05B373| db $00, $02, $02, $00
|05B377| db $02, $02, $00, $02
|05B37B| db $02, $00, $02, $02
|05B37F| db $00, $02, $02, $00
|05B383| db $02, $02, $00, $02
|05B387| db $02, $00, $02, $02
|05B38B| db $00, $02, $02, $00
|05B38F| db $02, $02, $02, $02
|05B393| db $02, $02, $02, $02
|05B397| db $02, $02, $02, $02

.body_object_count
|05B39B| db $02, $02, $02, $02
|05B39F| db $02, $02, $02, $02
|05B3A3| db $02, $02, $02, $02
|05B3A7| db $02, $02, $02, $02
|05B3AB| db $02, $02, $02, $02
|05B3AF| db $01, $01, $01, $01

.body_oam_offset
|05B3B3| db $00, $00, $00, $00
|05B3B7| db $00, $00, $00, $00
|05B3BB| db $00, $00, $00, $00
|05B3BF| db $00, $00, $00, $00
|05B3C3| db $00, $00, $00, $00
|05B3C7| db $08, $08, $08, $08

endpool

;===================================================================================================

SpriteDraw_BNCBody:
|05B3CB| LDY.b #$14

;===================================================================================================

SpriteDraw_GuardBody:
|05B3CD| LDA.w $0DC0,X
|05B3D0| ASL A
|05B3D1| ADC.w $0DC0,X
|05B3D4| STA.b $06

|05B3D6| PHX

|05B3D7| LDA.w $0DC0,X
|05B3DA| TAX

|05B3DB| TYA
|05B3DC| CLC
|05B3DD| ADC.w .body_oam_offset,X
|05B3E0| TAY

|05B3E1| LDA.w .body_object_count,X
|05B3E4| TAX

.next_object
|05B3E5| PHX

|05B3E6| TXA
|05B3E7| CLC
|05B3E8| ADC.b $06
|05B3EA| PHA

|05B3EB| ASL A
|05B3EC| TAX

|05B3ED| REP #$20

|05B3EF| LDA.b $00
|05B3F1| CLC
|05B3F2| ADC.w .body_offset_x,X
|05B3F5| STA.b ($90),Y

|05B3F7| AND.w #$0100
|05B3FA| STA.b $0E

|05B3FC| LDA.b $02
|05B3FE| CLC
|05B3FF| ADC.w .body_offset_y,X

|05B402| INY
|05B403| STA.b ($90),Y

|05B405| CLC
|05B406| ADC.w #$0010
|05B409| CMP.w #$0100
|05B40C| BCC .body_on_screen

|05B40E| LDA.w #$00F0
|05B411| STA.b ($90),Y

.body_on_screen
|05B413| SEP #$20

|05B415| PLX

|05B416| LDA.w .body_char,X
|05B419| INY
|05B41A| STA.b ($90),Y

|05B41C| LDA.w .body_flip,X
|05B41F| ORA.b $05
|05B421| INY
|05B422| STA.b ($90),Y

|05B424| PHY

|05B425| TYA
|05B426| LSR A
|05B427| LSR A
|05B428| TAY

|05B429| LDA.w .body_size,X
|05B42C| ORA.b $0F
|05B42E| STA.b ($92),Y

|05B430| PLY
|05B431| INY

|05B432| PLX
|05B433| CPX.b #$02
|05B435| BNE .body_no_advance

|05B437| INY
|05B438| INY
|05B439| INY
|05B43A| INY

.body_no_advance
|05B43B| DEX
|05B43C| BPL .next_object

|05B43E| PLX

|05B43F| RTS

;===================================================================================================

pool SpriteDraw_BNCFlail

.flail_extension
|05B440| db $10, $12, $14, $16
|05B444| db $18, $1A, $1C, $1E
|05B448| db $20, $22, $24, $26
|05B44C| db $28, $2A, $2C, $2E
|05B450| db $30, $2E, $2C, $2A
|05B454| db $28, $26, $24, $22
|05B458| db $20, $1E, $1C, $1A
|05B45C| db $18, $16, $14, $12

.flail_offset_x
|05B460| db   4 ; right
|05B461| db   4 ; left
|05B462| db  12 ; down
|05B463| db  -5 ; up

.flail_offset_y
|05B464| db  -2 ; right
|05B465| db  -2 ; left
|05B466| db  -6 ; down
|05B467| db  -4 ; up

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_BNCFlail:
|05B468| LDA.b $00
|05B46A| STA.w $0FA8

|05B46D| LDA.b $02
|05B46F| STA.w $0FA9

|05B472| LDA.w $0D90,X
|05B475| STA.b $00

|05B477| LDA.w $0DA0,X
|05B47A| STA.b $01

|05B47C| LDA.b #$00

|05B47E| LDY.w $0D80,X
|05B481| CPY.b #$02
|05B483| BCC .not_swinging_a

|05B485| LDA.w $0E10,X
|05B488| TAY

|05B489| LDA.w .flail_extension,Y

.not_swinging_a
|05B48C| STA.b $0F

|05B48E| LDY.w $0DE0,X

|05B491| LDA.w .flail_offset_x,Y
|05B494| STA.b $0C

|05B496| LDA.w .flail_offset_y,Y
|05B499| STA.b $0D

|05B49B| PHX

|05B49C| REP #$30

|05B49E| LDA.b $00
|05B4A0| AND.w #$01FF
|05B4A3| LSR A
|05B4A4| LSR A
|05B4A5| LSR A
|05B4A6| LSR A
|05B4A7| LSR A
|05B4A8| LSR A
|05B4A9| STA.b $0A

|05B4AB| LDA.b $00
|05B4AD| CLC
|05B4AE| ADC.w #$0080
|05B4B1| AND.w #$01FF
|05B4B4| STA.b $02

|05B4B6| LDA.b $00
|05B4B8| AND.w #$00FF
|05B4BB| ASL A
|05B4BC| TAX

|05B4BD| LDA.l TrigTable,X
|05B4C1| STA.b $04

|05B4C3| LDA.b $02
|05B4C5| AND.w #$00FF
|05B4C8| ASL A
|05B4C9| TAX

|05B4CA| LDA.l TrigTable,X
|05B4CE| STA.b $06

|05B4D0| SEP #$30

|05B4D2| PLX

|05B4D3| LDA.b $04
|05B4D5| STA.w WRMPYA

|05B4D8| LDA.b $0F

|05B4DA| LDY.b $05
|05B4DC| BNE .not_swinging_b

|05B4DE| STA.w WRMPYB

|05B4E1| JSR NOP4

|05B4E4| ASL.w RDMPYL ; carry = round up
|05B4E7| LDA.w RDMPYH
|05B4EA| ADC.b #$00

.not_swinging_b
|05B4EC| STA.b $0E

|05B4EE| LSR.b $01
|05B4F0| BCC .this_is_positive_a

|05B4F2| EOR.b #$FF
|05B4F4| INC A

.this_is_positive_a
|05B4F5| STA.b $04

;---------------------------------------------------------------------------------------------------

|05B4F7| LDA.b $06
|05B4F9| STA.w WRMPYA

|05B4FC| LDA.b $0F

|05B4FE| LDY.b $07
|05B500| BNE .this_was_nonzero

|05B502| STA.w WRMPYB

|05B505| JSR NOP4

|05B508| ASL.w RDMPYL ; carry = round up
|05B50B| LDA.w RDMPYH
|05B50E| ADC.b #$00

.this_was_nonzero
|05B510| STA.b $0F

|05B512| LSR.b $03
|05B514| BCC .this_is_positive_b

|05B516| EOR.b #$FF
|05B518| INC A

.this_is_positive_b
|05B519| STA.b $06

;---------------------------------------------------------------------------------------------------

|05B51B| LDY.b #$00

|05B51D| LDA.b $04
|05B51F| SEC
|05B520| SBC.b #$04
|05B522| CLC
|05B523| ADC.b $0C
|05B525| STA.w $0FAB

|05B528| CLC
|05B529| ADC.w $0FA8
|05B52C| STA.b ($90),Y

|05B52E| LDA.b $06
|05B530| SEC
|05B531| SBC.b #$04
|05B533| CLC
|05B534| ADC.b $0D
|05B536| STA.w $0FAA

|05B539| CLC
|05B53A| ADC.w $0FA9
|05B53D| INY
|05B53E| STA.b ($90),Y

|05B540| LDA.b #$2A
|05B542| INY
|05B543| STA.b ($90),Y

|05B545| LDA.b #$2D
|05B547| INY
|05B548| STA.b ($90),Y

|05B54A| LDA.b #$02
|05B54C| STA.b ($92)

|05B54E| LDY.b #$04

;---------------------------------------------------------------------------------------------------

|05B550| PHX

|05B551| LDX.b #$03

.next_object_flail
|05B553| LDA.b $0E
|05B555| STA.w WRMPYA

|05B558| LDA.w .chain_multiplicand,X
|05B55B| STA.w WRMPYB

|05B55E| JSR NOP4

|05B561| LDA.b $04
|05B563| ASL A

|05B564| LDA.w RDMPYH
|05B567| BCC .dont_invert_a

|05B569| EOR.b #$FF
|05B56B| INC A

.dont_invert_a
|05B56C| CLC
|05B56D| ADC.w $0FA8
|05B570| CLC
|05B571| ADC.b $0C
|05B573| STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

|05B575| LDA.b $0F
|05B577| STA.w WRMPYA

|05B57A| LDA.w .chain_multiplicand,X
|05B57D| STA.w WRMPYB

|05B580| JSR NOP4

|05B583| LDA.b $06
|05B585| ASL A

|05B586| LDA.w RDMPYH
|05B589| BCC .dont_invert_b

|05B58B| EOR.b #$FF
|05B58D| INC A

.dont_invert_b
|05B58E| CLC
|05B58F| ADC.w $0FA9
|05B592| CLC
|05B593| ADC.b $0D
|05B595| INY
|05B596| STA.b ($90),Y

|05B598| LDA.b #$3F
|05B59A| INY
|05B59B| STA.b ($90),Y

|05B59D| LDA.b #$2D
|05B59F| INY
|05B5A0| STA.b ($90),Y

|05B5A2| PHY

|05B5A3| TYA
|05B5A4| LSR A
|05B5A5| LSR A
|05B5A6| TAY

|05B5A7| LDA.b #$00
|05B5A9| STA.b ($92),Y

|05B5AB| PLY
|05B5AC| INY

|05B5AD| DEX
|05B5AE| BPL .next_object_flail

|05B5B0| PLX

|05B5B1| LDY.b #$FF
|05B5B3| LDA.b #$04
|05B5B5| JSL CorrectOAMEntries_long

|05B5B9| RTS

;---------------------------------------------------------------------------------------------------

.chain_multiplicand
|05B5BA| db $33, $66, $99, $CC

;===================================================================================================
; NOP NOP NOP NOP
;===================================================================================================
NOP4:
|05B5BE| NOP ; one
|05B5BF| NOP ; two
|05B5C0| NOP ; three
|05B5C1| NOP ; four

|05B5C2| RTS

;===================================================================================================

SpriteModule_Active_bank05:
|05B5C3| PHB
|05B5C4| PHK
|05B5C5| PLB

|05B5C6| JSR .main

|05B5C9| PLB

|05B5CA| RTL

;===================================================================================================
; Why are these here?
;===================================================================================================
#SpriteDirections_bank05:
|05B5CB| db $03, $02, $00, $01

#SpriteDrawSteps_bank05:
|05B5CF| db $08, $00, $0C, $05

;===================================================================================================

.main
|05B5D3| LDA.w $0E20,X
|05B5D6| SEC
|05B5D7| SBC.b #$41

|05B5D9| REP #$30

|05B5DB| AND.w #$00FF
|05B5DE| ASL A
|05B5DF| TAY
|05B5E0| LDA.w .vectors,Y

|05B5E3| DEC A
|05B5E4| PHA

|05B5E5| SEP #$30

|05B5E7| RTS

;---------------------------------------------------------------------------------------------------

.vectors
|05B5E8| dw Sprite_41_BlueGuard
|05B5EA| dw Sprite_42_GreenGuard
|05B5EC| dw Sprite_43_RedGuard
|05B5EE| dw Sprite_44_BluesainBolt

|05B5F0| dw Sprite_45_UsainBolt
|05B5F2| dw Sprite_46_BlueArcher
|05B5F4| dw Sprite_47_GreenBushGuard
|05B5F6| dw Sprite_48_RedJavelinGuard

|05B5F8| dw Sprite_49_RedBushGuard
|05B5FA| dw Sprite_4A_BombGuard
|05B5FC| dw Sprite_4B_GreenKnifeGuard
|05B5FE| dw Sprite_4C_Geldman

|05B600| dw Sprite_4D_Toppo
|05B602| dw Sprite_4E_Popo
|05B604| dw Sprite_4F_Popo
|05B606| dw Sprite_50_Cannonball

|05B608| dw Sprite_51_ArmosStatue
|05B60A| dw Sprite_52_KingZora
|05B60C| dw Sprite_53_ArmosKnight
|05B60E| dw Sprite_54_Lanmolas

|05B610| dw Sprite_55_Zora
|05B612| dw Sprite_56_WalkingZora
|05B614| dw Sprite_57_DesertStatue
|05B616| dw Sprite_58_Crab

|05B618| dw Sprite_59_LostWoodsBird
|05B61A| dw Sprite_5A_LostWoodsSquirrel
|05B61C| dw Sprite_5B_Spark_Clockwise
|05B61E| dw Sprite_5C_Spark_Counterclockwise

|05B620| dw Sprite_5D_Roller_VerticalDownFirst
|05B622| dw Sprite_5E_Roller_VerticalUpFirst
|05B624| dw Sprite_5F_Roller_HorizontalRightFirst
|05B626| dw Sprite_60_Roller_HorizontalLeftFirst

|05B628| dw Sprite_61_Beamos
|05B62A| dw Sprite_62_MasterSword
|05B62C| dw Sprite_63_DebirandoPit
|05B62E| dw Sprite_64_Debirando

|05B630| dw Sprite_65_ArcheryGame
|05B632| dw Sprite_66_WallCannonVerticalLeft
|05B634| dw Sprite_67_WallCannonVerticalRight
|05B636| dw Sprite_68_WallCannonHorizontalTop

|05B638| dw Sprite_69_WallCannonHorizontalBottom
|05B63A| dw Sprite_6A_BallNChain
|05B63C| dw Sprite_6B_Cannonball
|05B63E| dw Sprite_6C_MirrorPortal

|05B640| dw Sprite_6D_Rat
|05B642| dw Sprite_6E_Rope
|05B644| dw Sprite_6F_Keese
|05B646| dw Sprite_70_KingHelmasaurFireball_bounce

;===================================================================================================

Sprite_50_Cannonball:
|05B648| LDA.w $0D80,X
|05B64B| BNE .big_ball

|05B64D| JSL SpriteDraw_SingleLarge_long
|05B651| BRA .continue

.big_ball
|05B653| JSR SpriteDraw_BigCannonball

.continue
|05B656| JSR CheckIfActive_bank05

|05B659| INC.w $0E80,X

|05B65C| LDA.w $0E80,X
|05B65F| LSR A
|05B660| LSR A
|05B661| AND.b #$01
|05B663| STA.w $0DC0,X

|05B666| JSR MoveSpriteXY_bank05

|05B669| LDA.w $0DF0,X
|05B66C| BEQ .delay

|05B66E| DEC A
|05B66F| BNE .exit_a

|05B671| STZ.w $0DD0,X

.exit_a
|05B674| RTS

;---------------------------------------------------------------------------------------------------

.delay
|05B675| JSR CheckDamageToAndFromLink_bank05

|05B678| LDA.w $0E10,X
|05B67B| BNE .exit_b

|05B67D| JSR CheckSpriteTileCollision_bank05
|05B680| BEQ .exit_b

|05B682| LDA.b #$10
|05B684| STA.w $0DF0,X

.exit_b
|05B687| RTS

;===================================================================================================

pool SpriteDraw_BigCannonball

.offset_x
|05B688| dw  -8,   8,  -8,   8

.offset_y
|05B690| dw  -8,  -8,   8,   8

.char
|05B698| db $84, $88, $88, $88
|05B69C| db $86, $88, $88, $88

.flip
|05B6A0| db $00, $00, $C0, $80

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_BigCannonball:
|05B6A4| JSR GetScreenCoordinates_bank05

|05B6A7| LDA.w $0DC0,X
|05B6AA| ASL A
|05B6AB| ASL A
|05B6AC| STA.b $06

|05B6AE| PHX

|05B6AF| LDX.b #$03

.next_object
|05B6B1| PHX
|05B6B2| PHX

|05B6B3| TXA
|05B6B4| ASL A
|05B6B5| TAX

|05B6B6| REP #$20

|05B6B8| LDA.b $00
|05B6BA| CLC
|05B6BB| ADC.w .offset_x,X
|05B6BE| STA.b ($90),Y

|05B6C0| AND.w #$0100
|05B6C3| STA.b $0E

|05B6C5| LDA.b $02
|05B6C7| CLC
|05B6C8| ADC.w .offset_y,X

|05B6CB| INY
|05B6CC| STA.b ($90),Y

|05B6CE| CLC
|05B6CF| ADC.w #$0010
|05B6D2| CMP.w #$0100

|05B6D5| SEP #$20
|05B6D7| BCC .on_screen

|05B6D9| LDA.b #$F0
|05B6DB| STA.b ($90),Y

.on_screen
|05B6DD| PLA
|05B6DE| CLC
|05B6DF| ADC.b $06
|05B6E1| TAX

|05B6E2| LDA.w .char,X
|05B6E5| INY
|05B6E6| STA.b ($90),Y

|05B6E8| PLX
|05B6E9| LDA.w .flip,X

|05B6EC| INY
|05B6ED| ORA.b $05
|05B6EF| STA.b ($90),Y

|05B6F1| PHY

|05B6F2| TYA
|05B6F3| LSR A
|05B6F4| LSR A
|05B6F5| TAY

|05B6F6| LDA.b $0F
|05B6F8| ORA.b #$02
|05B6FA| STA.b ($92),Y

|05B6FC| PLY
|05B6FD| INY

|05B6FE| DEX
|05B6FF| BPL .next_object

|05B701| PLX

|05B702| RTS

;===================================================================================================

Sprite_51_ArmosStatue:
|05B703| JSR SpriteDraw_ArmosStatue

|05B706| LDA.w $0EA0,X
|05B709| BEQ .not_recoiling

|05B70B| JSR ZeroVelocityXY_bank05

.not_recoiling
|05B70E| JSR CheckIfActive_bank05
|05B711| JSR MoveSpriteZ_bank05

|05B714| LDA.w $0F80,X
|05B717| SEC
|05B718| SBC.b #$02
|05B71A| STA.w $0F80,X

|05B71D| LDA.w $0F70,X
|05B720| BPL .airborne

|05B722| STZ.w $0F70,X
|05B725| STZ.w $0F80,X

|05B728| JSR ZeroVelocityXY_bank05

.airborne
|05B72B| LDA.w $0D80,X
|05B72E| BEQ ArmosStatue_Inactive

|05B730| JMP.w ArmosStatue_Active

;===================================================================================================

ArmosStatue_Inactive:
|05B733| LDA.w $0E60,X
|05B736| ORA.b #$40
|05B738| STA.w $0E60,X

|05B73B| LDY.w $0DF0,X
|05B73E| CPY.b #$01
|05B740| BNE .delay

|05B742| AND.b #$BF
|05B744| STA.w $0E60,X

|05B747| INC.w $0D80,X

|05B74A| ASL.w $0E40,X
|05B74D| LSR.w $0E40,X

|05B750| LDA.w $0E60,X
|05B753| AND.b #$BF
|05B755| STA.w $0E60,X

|05B758| LDA.b #$0B
|05B75A| STA.w $0F50,X

|05B75D| RTS

;---------------------------------------------------------------------------------------------------

.delay
|05B75E| TXA
|05B75F| EOR.b $1A
|05B761| AND.b #$03
|05B763| BNE .dont_wake

|05B765| REP #$20

|05B767| LDA.b $22
|05B769| SEC
|05B76A| SBC.w $0FD8
|05B76D| CLC
|05B76E| ADC.w #$001F

|05B771| CMP.w #$003E
|05B774| BCS .dont_wake

|05B776| LDA.b $20
|05B778| CLC
|05B779| ADC.w #$0008
|05B77C| SEC
|05B77D| SBC.w $0FDA
|05B780| CLC
|05B781| ADC.w #$0030

|05B784| CMP.w #$0058
|05B787| BCS .dont_wake

|05B789| SEP #$20

|05B78B| LDA.w $0DF0,X
|05B78E| BNE .dont_wake

|05B790| LDA.b #$30
|05B792| STA.w $0DF0,X

|05B795| LDA.b #$22 ; SFX2.22
|05B797| JSL QueueSpriteSFX2WithPan

;---------------------------------------------------------------------------------------------------

.dont_wake
|05B79B| SEP #$20

|05B79D| JSL CheckDamageToLink_same_layer_long
|05B7A1| BCC .no_contact

|05B7A3| JSL AbortMovement
|05B7A7| JSL RepelDash_long

.no_contact
|05B7AB| LDA.w $0DF0,X
|05B7AE| BEQ .exit

|05B7B0| LSR A
|05B7B1| AND.b #$0E
|05B7B3| EOR.w $0F50,X
|05B7B6| STA.w $0F50,X

.exit
|05B7B9| RTS

;===================================================================================================

ArmosStatue_Active:
|05B7BA| JSR CheckDamageToAndFromLink_bank05
|05B7BD| JSR HandleSpriteRecoil_bank05
|05B7C0| JSR MoveSpriteXY_bank05
|05B7C3| JSR CheckSpriteTileCollision_bank05

|05B7C6| LDA.w $0DF0,X
|05B7C9| ORA.w $0F70,X
|05B7CC| BNE .exit

|05B7CE| LDA.b #$08
|05B7D0| STA.w $0DF0,X

|05B7D3| LDA.b #$10
|05B7D5| STA.w $0F80,X

|05B7D8| LDA.b #$0C
|05B7DA| JSL ApplySpeedTowardsLink_long

.exit
|05B7DE| RTS

;===================================================================================================

pool SpriteDraw_ArmosStatue

.oam_groups
|05B7DF| dw   0, -16 : db $C0, $00, $00, $02
|05B7E7| dw   0,   0 : db $E0, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_ArmosStatue:
; Pretty sure this is useless? The TabulatedSpriteDraw will call that parser
|05B7EF| LDA.w $0D80,X
|05B7F2| BNE .lower_region

|05B7F4| JSR GetScreenCoordinates_bank05

.lower_region
|05B7F7| REP #$20

|05B7F9| LDA.w #.oam_groups
|05B7FC| STA.b $08

|05B7FE| SEP #$20

|05B800| LDA.b #$02
|05B802| JSR TabulatedSpriteDraw_bank05

|05B805| JSL DrawSpriteShadow_long

|05B809| RTS

;===================================================================================================

Sprite_4E_Popo:
Sprite_4F_Popo:
|05B80A| JSR SpriteDraw_Popo
|05B80D| JSR CheckIfActive_bank05
|05B810| JSR HandleSpriteRecoil_bank05

|05B813| INC.w $0E80,X

|05B816| LDA.w $0E80,X
|05B819| LSR A
|05B81A| LSR A
|05B81B| LSR A
|05B81C| LSR A
|05B81D| AND.b #$03
|05B81F| STA.w $0D90,X

|05B822| JSR CheckDamageToAndFromLink_bank05

|05B825| LDA.w $0D80,X
|05B828| CMP.b #$02
|05B82A| BEQ Popo_Moving

|05B82C| CMP.b #$01
|05B82E| BEQ Popo_Wiggling

;===================================================================================================

Popo_Idling:
|05B830| LDA.w $0DF0,X
|05B833| BNE .exit

|05B835| INC.w $0D80,X

|05B838| LDA.b #$69
|05B83A| STA.w $0DF0,X

.exit
|05B83D| RTS

;===================================================================================================

Popo_Wiggling:
|05B83E| INC.w $0E80,X

|05B841| LDA.w $0DF0,X
|05B844| BNE .exit

|05B846| JSL GetRandomNumber
|05B84A| AND.b #$3F
|05B84C| ADC.b #$80
|05B84E| STA.w $0DF0,X

|05B851| INC.w $0D80,X

|05B854| JSL GetRandomNumber
|05B858| AND.b #$0F
|05B85A| TAY

|05B85B| LDA.w SomeRandomXSpeeds_bank05,Y
|05B85E| ASL A
|05B85F| ASL A
|05B860| STA.w $0D50,X

|05B863| LDA.w SomeRandomYSpeeds_bank05,Y
|05B866| ASL A
|05B867| ASL A
|05B868| STA.w $0D40,X

.exit
|05B86B| RTS

;===================================================================================================

Popo_Moving:
|05B86C| INC.w $0E80,X

|05B86F| LDA.w $0DF0,X
|05B872| BNE .delay

.reset_ai
|05B874| STZ.w $0D80,X

|05B877| LDA.b #$50
|05B879| STA.w $0DF0,X

|05B87C| RTS

.delay
|05B87D| TXA
|05B87E| EOR.b $1A
|05B880| AND.w $0DA0,X
|05B883| BNE CheckSpriteTileCollision_bank05

|05B885| JSR MoveSpriteXY_bank05

|05B888| LDA.w $0E70,X
|05B88B| BNE .reset_ai

;===================================================================================================

CheckSpriteTileCollision_bank05:
|05B88D| JSL CheckSpriteTileCollision_long

|05B891| RTS

;===================================================================================================

pool SpriteDraw_Popo

.anim_step
|05B892| db $00, $01, $00, $01

.flip
|05B896| db $00, $00, $40, $40

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Popo:
|05B89A| LDY.w $0D90,X

|05B89D| LDA.w .anim_step,Y
|05B8A0| STA.w $0DC0,X

|05B8A3| LDA.w $0F50,X
|05B8A6| AND.b #$BF
|05B8A8| ORA.w .flip,Y
|05B8AB| STA.w $0F50,X

|05B8AE| JSL SpriteDraw_SingleLarge_long

|05B8B2| RTS

;===================================================================================================

Sprite_4C_Geldman:
|05B8B3| LDA.w $0D80,X
|05B8B6| CMP.b #$02
|05B8B8| BCS .do_indeed_draw

|05B8BA| JSL GetScreenCoordinates_long
|05B8BE| BRA .continue

.do_indeed_draw
|05B8C0| JSR SpriteDraw_Geldman

.continue
|05B8C3| JSR CheckIfActive_bank05
|05B8C6| JSR HandleSpriteRecoil_bank05

|05B8C9| LDA.b #$01
|05B8CB| STA.w $0BA0,X

|05B8CE| LDA.w $0D80,X

|05B8D1| REP #$30

|05B8D3| AND.w #$00FF
|05B8D6| ASL A
|05B8D7| TAY

|05B8D8| LDA.w .vectors,Y
|05B8DB| DEC A
|05B8DC| PHA

|05B8DD| SEP #$30

|05B8DF| RTS

;---------------------------------------------------------------------------------------------------

.vectors
|05B8E0| dw Geldman_Hiding
|05B8E2| dw Geldman_WaitForLink
|05B8E4| dw Geldman_Ambush
|05B8E6| dw Geldman_Chase
|05B8E8| dw Geldman_Retreat

;===================================================================================================

Geldman_Hiding:
|05B8EA| LDA.w $0DF0,X
|05B8ED| BNE .exit

|05B8EF| LDA.w $0D90,X
|05B8F2| STA.w $0D10,X

|05B8F5| LDA.w $0DA0,X
|05B8F8| STA.w $0D30,X

|05B8FB| LDA.w $0DB0,X
|05B8FE| STA.w $0D00,X

|05B901| LDA.w $0EB0,X
|05B904| STA.w $0D20,X

|05B907| INC.w $0D80,X

.exit
|05B90A| RTS

;===================================================================================================

Geldman_WaitForLink:
|05B90B| TXA
|05B90C| EOR.b $1A
|05B90E| AND.b #$07
|05B910| BNE .dont_pounce

|05B912| REP #$20

|05B914| LDA.b $22
|05B916| SEC
|05B917| SBC.w $0FD8
|05B91A| CLC
|05B91B| ADC.w #$0030

|05B91E| CMP.w #$0060
|05B921| BCS .dont_pounce

|05B923| LDA.b $20
|05B925| SEC
|05B926| SBC.w $0FDA
|05B929| CLC
|05B92A| ADC.w #$0030

|05B92D| CMP.w #$0060
|05B930| BCS .dont_pounce

|05B932| SEP #$20

|05B934| INC.w $0D80,X

|05B937| LDA.b #$1F
|05B939| STA.w $0DF0,X

.dont_pounce
|05B93C| SEP #$20

|05B93E| RTS

;===================================================================================================

Geldman_Ambush:
|05B93F| LDA.w $0DF0,X
|05B942| BNE .delay

|05B944| INC.w $0D80,X

|05B947| LDA.b #$60
|05B949| STA.w $0DF0,X

|05B94C| LDA.b #$10
|05B94E| JSL ApplySpeedTowardsLink_long

|05B952| RTS

.delay
|05B953| LSR A
|05B954| LSR A
|05B955| TAY

|05B956| LDA.w .anim_step,Y
|05B959| STA.w $0DC0,X

|05B95C| RTS

;---------------------------------------------------------------------------------------------------

.anim_step
|05B95D| db $03, $02, $00, $00, $00, $00, $00, $00

;===================================================================================================

pool Geldman_Chase

.anim_step
|05B965| db $04, $05

endpool

;===================================================================================================

pool Geldman_Retreat

.anim_step
|05B967| db $00, $01, $02, $03, $03

endpool

;===================================================================================================

Geldman_Chase:
|05B96C| STZ.w $0BA0,X

|05B96F| LDA.w $0DF0,X
|05B972| BNE .delay

|05B974| INC.w $0D80,X

|05B977| LDA.b #$08
|05B979| STA.w $0DF0,X

|05B97C| RTS

.delay
|05B97D| LSR A
|05B97E| LSR A
|05B97F| AND.b #$01
|05B981| TAY

|05B982| LDA.w .anim_step,Y
|05B985| STA.w $0DC0,X

|05B988| JSR CheckDamageToAndFromLink_bank05
|05B98B| JSR MoveSpriteXY_bank05

|05B98E| RTS

;===================================================================================================

Geldman_Retreat:
|05B98F| LDA.w $0DF0,X
|05B992| BNE .delay

|05B994| STZ.w $0D80,X

|05B997| LDA.b #$10
|05B999| STA.w $0DF0,X

|05B99C| RTS

.delay
|05B99D| LSR A
|05B99E| TAY

|05B99F| LDA.w .anim_step,Y
|05B9A2| STA.w $0DC0,X

|05B9A5| RTS

;===================================================================================================

pool SpriteDraw_Geldman

.offset_x
|05B9A6| dw   4,   4,   4
|05B9AC| dw   4,   4,   4
|05B9B2| dw  -8,   8,   8
|05B9B8| dw  -8,   8,   8
|05B9BE| dw -16,   0,  16
|05B9C4| dw -16,   0,  16

.offset_y
|05B9CA| dw   8,   8,   8
|05B9D0| dw   8,   8,   8
|05B9D6| dw   4,   4,   4
|05B9DC| dw   0,   0,   0
|05B9E2| dw   0,   0,   0
|05B9E8| dw   0,   0,   0

.char
|05B9EE| db $B8, $B8, $B8
|05B9F1| db $B8, $B8, $B8
|05B9F4| db $A6, $A6, $A6
|05B9F7| db $A6, $A6, $A6
|05B9FA| db $A4, $A2, $A0
|05B9FD| db $A0, $A2, $A4

.prop
|05BA00| db $00, $00, $00
|05BA03| db $40, $40, $40
|05BA06| db $00, $40, $40
|05BA09| db $00, $40, $40
|05BA0C| db $40, $40, $40
|05BA0F| db $00, $00, $00

.size
|05BA12| db $00, $00, $00
|05BA15| db $00, $00, $00
|05BA18| db $02, $02, $02
|05BA1B| db $02, $02, $02
|05BA1E| db $02, $02, $02
|05BA21| db $02, $02, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Geldman:
|05BA24| JSR GetScreenCoordinates_bank05

|05BA27| LDA.w $0DC0,X
|05BA2A| ASL A
|05BA2B| ADC.w $0DC0,X
|05BA2E| STA.b $06

|05BA30| PHX

|05BA31| LDX.b #$02

.next_object
|05BA33| PHX

|05BA34| TXA
|05BA35| CLC
|05BA36| ADC.b $06
|05BA38| PHA

|05BA39| ASL A
|05BA3A| TAX

|05BA3B| REP #$20

|05BA3D| LDA.b $00
|05BA3F| CLC
|05BA40| ADC.w .offset_x,X
|05BA43| STA.b ($90),Y

|05BA45| AND.w #$0100
|05BA48| STA.b $0E

|05BA4A| LDA.b $02
|05BA4C| CLC
|05BA4D| ADC.w .offset_y,X

|05BA50| INY
|05BA51| STA.b ($90),Y

|05BA53| CLC
|05BA54| ADC.w #$0010
|05BA57| CMP.w #$0100

|05BA5A| SEP #$20
|05BA5C| BCC .on_screen

|05BA5E| LDA.b #$F0
|05BA60| STA.b ($90),Y

.on_screen
|05BA62| PLX

|05BA63| LDA.w .char,X
|05BA66| INY
|05BA67| STA.b ($90),Y

|05BA69| LDA.w .prop,X
|05BA6C| INY
|05BA6D| ORA.b $05
|05BA6F| STA.b ($90),Y

|05BA71| PHY

|05BA72| TYA
|05BA73| LSR A
|05BA74| LSR A
|05BA75| TAY

|05BA76| LDA.w .size,X
|05BA79| ORA.b $0F
|05BA7B| STA.b ($92),Y

|05BA7D| PLY
|05BA7E| INY

|05BA7F| PLX
|05BA80| DEX
|05BA81| BPL .next_object

|05BA83| PLX

|05BA84| RTS

;===================================================================================================

Sprite_4D_Toppo:
|05BA85| LDA.w $0D80,X
|05BA88| BEQ .hidden

|05BA8A| LDA.w $0B89,X
|05BA8D| ORA.b #$30
|05BA8F| STA.w $0B89,X

|05BA92| JSR SpriteDraw_Toppo

.hidden
|05BA95| JSR CheckIfActive_bank05

|05BA98| LDA.w $0D80,X

|05BA9B| REP #$30

|05BA9D| AND.w #$00FF
|05BAA0| ASL A
|05BAA1| TAY

|05BAA2| LDA.w .vectors,Y
|05BAA5| DEC A
|05BAA6| PHA

|05BAA7| SEP #$30

|05BAA9| RTS

;---------------------------------------------------------------------------------------------------

.vectors
|05BAAA| dw Toppo_Hiding
|05BAAC| dw Toppo_RustleGrass
|05BAAE| dw Toppo_PokingOut
|05BAB0| dw Toppo_Leaping
|05BAB2| dw Toppo_Retreat
|05BAB4| dw Toppo_Flustered_bounce

;===================================================================================================

pool Toppo_Hiding

.offset_x_low
|05BAB6| db -32,  32,   0,   0

.offset_x_high
|05BABA| db  -1,   0,   0,   0

.offset_y_low
|05BABE| db   0,   0, -32,  32

.offset_y_high
|05BAC2| db   0,   0,  -1,   0

endpool

;---------------------------------------------------------------------------------------------------

Toppo_Hiding:
|05BAC6| LDA.w $0DF0,X
|05BAC9| BNE .exit

|05BACB| INC.w $0D80,X

|05BACE| LDA.b #$08
|05BAD0| STA.w $0DF0,X

|05BAD3| JSL GetRandomNumber
|05BAD7| AND.b #$03
|05BAD9| TAY

|05BADA| LDA.w $0D90,X
|05BADD| CLC
|05BADE| ADC.w .offset_x_low,Y
|05BAE1| STA.w $0D10,X

|05BAE4| LDA.w $0DA0,X
|05BAE7| ADC.w .offset_x_high,Y
|05BAEA| STA.w $0D30,X

|05BAED| LDA.w $0DB0,X
|05BAF0| CLC
|05BAF1| ADC.w .offset_y_low,Y
|05BAF4| STA.w $0D00,X

|05BAF7| LDA.w $0EB0,X
|05BAFA| ADC.w .offset_y_high,Y
|05BAFD| STA.w $0D20,X

.exit
|05BB00| RTS

;===================================================================================================

Toppo_RustleGrass:
|05BB01| LDA.w $0DF0,X
|05BB04| BNE .delay

|05BB06| INC.w $0D80,X

|05BB09| LDA.b #$10
|05BB0B| STA.w $0DF0,X

|05BB0E| RTS

.delay
|05BB0F| LSR A
|05BB10| LSR A
|05BB11| AND.b #$01
|05BB13| STA.w $0DC0,X

|05BB16| JSR Toppo_VerifyTile

|05BB19| RTS

;===================================================================================================

Toppo_PokingOut:
|05BB1A| LDA.w $0DF0,X
|05BB1D| BNE .delay

|05BB1F| INC.w $0D80,X

|05BB22| LDA.b #$40
|05BB24| STA.w $0F80,X

.delay
|05BB27| LDA.b #$02
|05BB29| STA.w $0DC0,X

|05BB2C| JSR Toppo_VerifyTile

|05BB2F| RTS

;===================================================================================================

Toppo_Leaping:
|05BB30| JSR CheckDamageToAndFromLink_bank05
|05BB33| JSR MoveSpriteZ_bank05

|05BB36| LDA.w $0F80,X
|05BB39| SEC
|05BB3A| SBC.b #$02
|05BB3C| STA.w $0F80,X

|05BB3F| LDA.w $0F70,X
|05BB42| BPL .exit

|05BB44| STZ.w $0F70,X

|05BB47| INC.w $0D80,X

|05BB4A| LDA.b #$10
|05BB4C| STA.w $0DF0,X

|05BB4F| JSR Toppo_VerifyTile

.exit
|05BB52| RTS

;===================================================================================================

Toppo_Retreat:
|05BB53| LDA.w $0DF0,X
|05BB56| BNE .delay

|05BB58| STZ.w $0D80,X

|05BB5B| LDA.b #$20
|05BB5D| STA.w $0DF0,X

|05BB60| BRA .continue

.delay
|05BB62| LSR A
|05BB63| LSR A
|05BB64| AND.b #$01
|05BB66| STA.w $0DC0,X

.continue
|05BB69| JSR Toppo_VerifyTile

|05BB6C| RTS

;===================================================================================================

Toppo_Flustered_bounce:
|05BB6D| JSL Toppo_Flustered

|05BB71| RTS

;===================================================================================================

Toppo_VerifyTile:
|05BB72| LDA.w $0D00,X
|05BB75| STA.b $00

|05BB77| LDA.w $0D20,X
|05BB7A| STA.b $01

|05BB7C| LDA.w $0D10,X
|05BB7F| STA.b $02

|05BB81| LDA.w $0D30,X
|05BB84| STA.b $03

|05BB86| LDA.b #$00
|05BB88| JSL GetTileType_long

|05BB8C| CMP.b #$40
|05BB8E| BEQ .exit

|05BB90| LDA.b #$05
|05BB92| STA.w $0D80,X

.exit
|05BB95| RTS

;===================================================================================================

pool SpriteDraw_Toppo

.offset_x
|05BB96| dw   0,   8,   8
|05BB9C| dw   0,   8,   8
|05BBA2| dw   0,   0,   8
|05BBA8| dw   0,   0,   0
|05BBAE| dw   0,   0,   0

.offset_y
|05BBB4| dw   8,   8,   8
|05BBBA| dw   8,   8,   8
|05BBC0| dw   0,   8,   8
|05BBC6| dw   0,   0,   0
|05BBCC| dw   0,   0,   0

.char
|05BBD2| db $C8, $C8, $C8
|05BBD5| db $CA, $CA, $CA
|05BBD8| db $C0, $C8, $C8
|05BBDB| db $C2, $C2, $C2
|05BBDE| db $C2, $C2, $C2

.flip
|05BBE1| db $00, $40, $40
|05BBE4| db $00, $40, $40
|05BBE7| db $00, $00, $40
|05BBEA| db $00, $00, $00
|05BBED| db $40, $40, $40

.size
|05BBF0| db $00, $00, $00
|05BBF3| db $00, $00, $00
|05BBF6| db $02, $00, $00
|05BBF9| db $02, $02, $02
|05BBFC| db $02, $02, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Toppo:
|05BBFF| JSR GetScreenCoordinates_bank05

|05BC02| LDA.w $0D00,X
|05BC05| SEC
|05BC06| SBC.b $E8
|05BC08| STA.b $06

|05BC0A| LDA.w $0D20,X
|05BC0D| SBC.b $E9
|05BC0F| STA.b $07

|05BC11| LDA.w $0DC0,X
|05BC14| ASL A
|05BC15| ADC.w $0DC0,X
|05BC18| STA.b $08

|05BC1A| PHX

|05BC1B| LDX.b #$02

.next_object
|05BC1D| PHX

|05BC1E| TXA
|05BC1F| CLC
|05BC20| ADC.b $08
|05BC22| PHA

|05BC23| TAX

|05BC24| LDA.w .size,X
|05BC27| STA.b $0C

|05BC29| TXA
|05BC2A| ASL A
|05BC2B| TAX

|05BC2C| REP #$20

|05BC2E| LDA.b $00
|05BC30| CLC
|05BC31| ADC.w .offset_x,X
|05BC34| STA.b ($90),Y

|05BC36| AND.w #$0100
|05BC39| STA.b $0E

|05BC3B| PHX

|05BC3C| LDX.b $0C
|05BC3E| CPX.b #$01

|05BC40| PLX

|05BC41| LDA.b $02
|05BC43| BCS .large_object_a

|05BC45| LDA.b $06

.large_object_a
|05BC47| CLC
|05BC48| ADC.w .offset_y,X

|05BC4B| INY
|05BC4C| STA.b ($90),Y

|05BC4E| CLC
|05BC4F| ADC.w #$0010
|05BC52| CMP.w #$0100

|05BC55| SEP #$20
|05BC57| BCC .on_screen

|05BC59| LDA.b #$F0
|05BC5B| STA.b ($90),Y

.on_screen
|05BC5D| PLX

|05BC5E| LDA.w .char,X
|05BC61| INY
|05BC62| STA.b ($90),Y

|05BC64| LDA.b $0C
|05BC66| CMP.b #$01

|05BC68| LDA.w .flip,X
|05BC6B| ORA.b $05
|05BC6D| BCS .toppo_part

|05BC6F| AND.b #$F0
|05BC71| ORA.b #$02

;---------------------------------------------------------------------------------------------------

.toppo_part
|05BC73| INY
|05BC74| STA.b ($90),Y

|05BC76| PHY

|05BC77| TYA
|05BC78| LSR A
|05BC79| LSR A
|05BC7A| TAY

|05BC7B| LDA.b $0C
|05BC7D| ORA.b $0F
|05BC7F| STA.b ($92),Y

|05BC81| PLY
|05BC82| INY

|05BC83| PLX
|05BC84| DEX
|05BC85| BPL .next_object

|05BC87| PLX

|05BC88| RTS

;===================================================================================================
; Or is it db $60? We'll never know...
;===================================================================================================
UNREACHABLE_05BC89:
|05BC89| RTS

;===================================================================================================

GreenKnifeGuardSpeedX:
|05BC8A| db  12, -12,   0,   0,  18, -18,   0,   0

GreenKnifeGuardSpeedY:
|05BC92| db   0,   0,  12, -12,   0,   0,  18, -18

;===================================================================================================

ZoraAndGuardAnimationState:
|05BC9A| db $00, $02, $04, $06, $01, $03, $05, $07

;===================================================================================================

Sprite_4B_GreenKnifeGuard:
|05BCA2| LDA.w $0E80,X
|05BCA5| AND.b #$08
|05BCA7| LSR A
|05BCA8| ADC.w $0DE0,X
|05BCAB| TAY

|05BCAC| LDA.w ZoraAndGuardAnimationState,Y
|05BCAF| STA.w $0DC0,X

|05BCB2| JSR SpriteDraw_GreenKnifeGuard

|05BCB5| JSR CheckIfActive_bank05
|05BCB8| JSR HandleSpriteRecoil_bank05

|05BCBB| JSR CheckDamageToAndFromLink_bank05

|05BCBE| JSR MoveSpriteXY_bank05
|05BCC1| JSR CheckSpriteTileCollision_bank05

|05BCC4| LDA.w $0D80,X
|05BCC7| BNE GreenKnifeGuard_Moving

;===================================================================================================

GreenKnifeGuard_Idle:
|05BCC9| LDA.w $0DF0,X
|05BCCC| BNE .exit

|05BCCE| JSL GetRandomNumber
|05BCD2| AND.b #$3F
|05BCD4| ADC.b #$30
|05BCD6| STA.w $0DF0,X

|05BCD9| INC.w $0D80,X

|05BCDC| LDA.w $0EB0,X
|05BCDF| STA.w $0DE0,X

|05BCE2| JSR GetDirectionTowardsLink_bank05

|05BCE5| TYA

|05BCE6| LDY.w $0DE0,X
|05BCE9| CMP.w $0DE0,X
|05BCEC| BNE .dont_speed_up

|05BCEE| LDA.b $0E
|05BCF0| CLC
|05BCF1| ADC.b #$10
|05BCF3| CMP.b #$20
|05BCF5| BCC .speed_up

|05BCF7| LDA.b $0F
|05BCF9| CLC
|05BCFA| ADC.b #$10
|05BCFC| CMP.b #$20
|05BCFE| BCS .dont_speed_up

.speed_up
|05BD00| INY ; +4
|05BD01| INY
|05BD02| INY
|05BD03| INY

|05BD04| LDA.b #$80
|05BD06| STA.w $0DF0,X

.dont_speed_up
|05BD09| LDA.w GreenKnifeGuardSpeedX,Y
|05BD0C| STA.w $0D50,X

|05BD0F| LDA.w GreenKnifeGuardSpeedY,Y
|05BD12| STA.w $0D40,X

.exit
|05BD15| RTS

;===================================================================================================

pool GreenKnifeGuard_Moving

.direction
|05BD16| db $02, $03
|05BD18| db $02, $03
|05BD1A| db $00, $01
|05BD1C| db $00, $01

endpool

;---------------------------------------------------------------------------------------------------

GreenKnifeGuard_Moving:
|05BD1E| LDA.b #$10

|05BD20| LDY.w $0E70,X
|05BD23| BNE .tile_collision

|05BD25| LDA.w $0DF0,X
|05BD28| BNE .moving

|05BD2A| LDA.b #$30

.tile_collision
|05BD2C| STA.w $0DF0,X

|05BD2F| JSR ZeroVelocityXY_bank05

|05BD32| JSL GetRandomNumber
|05BD36| AND.b #$01
|05BD38| STA.b $00

|05BD3A| LDA.w $0DE0,X
|05BD3D| ASL A
|05BD3E| ORA.b $00
|05BD40| TAY

|05BD41| LDA.w .direction,Y
|05BD44| STA.w $0EB0,X

|05BD47| STZ.w $0D80,X

.moving
|05BD4A| LDA.w $0E00,X
|05BD4D| BEQ ZoraAndGuardAdvanceAnimation

|05BD4F| INC.w $0E80,X

;===================================================================================================

ZoraAndGuardAdvanceAnimation:
|05BD52| INC.w $0E80,X

|05BD55| RTS

;===================================================================================================

UNREACHABLE_05BD56:
|05BD56| db $82, $82, $80, $84
|05BD5A| db $40, $00, $00, $00

;===================================================================================================

pool SpriteDraw_GreenKnifeGuard

.offset_x
|05BD5E| dw   2,   2,  -2,  -2
|05BD66| dw   0,   0,   0,   0

.char
|05BD6E| db $8A, $8C, $8A, $8C
|05BD72| db $86, $88, $8E, $A0

.flip
|05BD76| db $40, $40, $00, $00
|05BD7A| db $00, $00, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_GreenKnifeGuard:
|05BD7E| JSR GetScreenCoordinates_bank05

|05BD81| LDA.w $0DC0,X
|05BD84| STA.b $06

|05BD86| PHX

|05BD87| LDA.w $0EB0,X
|05BD8A| TAX

|05BD8B| REP #$20

|05BD8D| LDA.b $00
|05BD8F| STA.b ($90),Y

|05BD91| AND.w #$0100
|05BD94| STA.b $0E

|05BD96| LDA.b $02
|05BD98| SEC
|05BD99| SBC.w #$000B

|05BD9C| INY
|05BD9D| STA.b ($90),Y

|05BD9F| CLC
|05BDA0| ADC.w #$0010
|05BDA3| CMP.w #$0100
|05BDA6| BCC .on_screen

|05BDA8| LDA.w #$00F0
|05BDAB| STA.b ($90),Y

.on_screen
|05BDAD| SEP #$20

|05BDAF| LDA.w GuardHeadChar,X
|05BDB2| INY
|05BDB3| STA.b ($90),Y

|05BDB5| LDA.w GuardHeadProp,X
|05BDB8| INY
|05BDB9| ORA.b $05
|05BDBB| STA.b ($90),Y

|05BDBD| LDA.b #$02
|05BDBF| ORA.b $0F
|05BDC1| STA.b ($92)

;---------------------------------------------------------------------------------------------------

|05BDC3| LDA.b $06
|05BDC5| PHA

|05BDC6| ASL A
|05BDC7| TAX

|05BDC8| REP #$20

|05BDCA| LDA.b $00
|05BDCC| CLC
|05BDCD| ADC.w .offset_x,X

|05BDD0| INY
|05BDD1| STA.b ($90),Y

|05BDD3| AND.w #$0100
|05BDD6| STA.b $0E

|05BDD8| LDA.b $02
|05BDDA| INY
|05BDDB| STA.b ($90),Y

|05BDDD| CLC
|05BDDE| ADC.w #$0010
|05BDE1| CMP.w #$0100
|05BDE4| BCC .body_on_screen

|05BDE6| LDA.w #$00F0
|05BDE9| STA.b ($90),Y

.body_on_screen
|05BDEB| SEP #$20

|05BDED| PLX

|05BDEE| LDA.w .char,X
|05BDF1| INY
|05BDF2| STA.b ($90),Y

|05BDF4| LDA.w .flip,X
|05BDF7| ORA.b $05
|05BDF9| INY
|05BDFA| STA.b ($90),Y

|05BDFC| LDY.b #$01

|05BDFE| LDA.b #$02
|05BE00| ORA.b $0F
|05BE02| STA.b ($92),Y

|05BE04| PLX

|05BE05| JSL DrawSpriteShadow_long

|05BE09| RTS

;===================================================================================================

Sprite_4A_BombGuard:
|05BE0A| LDA.w $0DB0,X
|05BE0D| BNE SpriteBomb

|05BE0F| JMP.w BombGuard

;===================================================================================================

SpriteBomb:
|05BE12| CMP.b #$02
|05BE14| BCS .explosion_imminent

|05BE16| JMP.w SpriteBomb_ExplosionIncoming

.explosion_imminent
|05BE19| BNE SpriteBomb_Exploding

|05BE1B| LDY.b #$0F

.check_next_sprite
|05BE1D| CPY.w $0FA0
|05BE20| BEQ .no_damage

|05BE22| LDA.w $0DD0,Y
|05BE25| CMP.b #$09
|05BE27| BCC .no_damage

|05BE29| TYA
|05BE2A| EOR.b $1A
|05BE2C| AND.b #$07
|05BE2E| ORA.w $0EF0,Y
|05BE31| BNE .no_damage

|05BE33| JSR SpriteBomb_CheckDamageToSprite

.no_damage
|05BE36| DEY
|05BE37| BPL .check_next_sprite

|05BE39| JSL CheckDamageToLink_long

;===================================================================================================

SpriteBomb_Exploding:
|05BE3D| JSR SpriteDraw_SpriteBombExplosion

|05BE40| LDA.w $0E00,X
|05BE43| BNE .exit

|05BE45| STZ.w $0DD0,X

.exit
|05BE48| RTS

;===================================================================================================

SpriteBomb_CheckDamageToSprite:
|05BE49| LDA.w $0D10,X
|05BE4C| SEC
|05BE4D| SBC.b #$10
|05BE4F| STA.b $00

|05BE51| LDA.w $0D30,X
|05BE54| SBC.b #$00
|05BE56| STA.b $08

|05BE58| LDA.b #$30
|05BE5A| STA.b $02
|05BE5C| STA.b $03

|05BE5E| LDA.w $0D00,X
|05BE61| SEC
|05BE62| SBC.b #$10
|05BE64| STA.b $01

|05BE66| LDA.w $0D20,X
|05BE69| SBC.b #$00
|05BE6B| STA.b $09

|05BE6D| PHX
|05BE6E| TYX

|05BE6F| JSL SetupSpriteHitbox_long

|05BE73| PLX

|05BE74| JSL CheckIfHitboxesOverlap_long
|05BE78| BCC .no_damage

|05BE7A| LDA.w $0E20,Y
|05BE7D| CMP.b #$11 ; SPRITE 11
|05BE7F| BEQ .no_damage

|05BE81| PHX
|05BE82| TYX
|05BE83| PHY

|05BE84| LDA.b #$08
|05BE86| JSL CheckAncillaDamageToSprite_preset

|05BE8A| PLY
|05BE8B| PLX

|05BE8C| LDA.w $0D10,X
|05BE8F| STA.b $00

|05BE91| LDA.w $0D30,X
|05BE94| STA.b $01

|05BE96| LDA.w $0D00,X
|05BE99| SEC
|05BE9A| SBC.w $0F70,X
|05BE9D| STA.b $02

|05BE9F| LDA.w $0D20,X
|05BEA2| SBC.b #$00
|05BEA4| STA.b $03

|05BEA6| LDA.w $0D10,Y
|05BEA9| STA.b $04

|05BEAB| LDA.w $0D30,Y
|05BEAE| STA.b $05

|05BEB0| LDA.w $0D00,Y
|05BEB3| SEC
|05BEB4| SBC.w $0F70,Y
|05BEB7| STA.b $06

|05BEB9| LDA.w $0D20,Y
|05BEBC| SBC.b #$00
|05BEBE| STA.b $07

|05BEC0| PHY

|05BEC1| LDA.b #$20
|05BEC3| JSL ProjectSpriteSpeedTowardsLocation_long

|05BEC7| PLY

|05BEC8| LDA.b $00
|05BECA| STA.w $0F30,Y

|05BECD| LDA.b $01
|05BECF| STA.w $0F40,Y

.no_damage
|05BED2| RTS

;===================================================================================================

SpriteBomb_ExplosionIncoming:
|05BED3| LDA.w $0E90,X ; TODO come back to this
|05BED6| BEQ .skip_priority_stuff

|05BED8| LDA.w $0B89,X
|05BEDB| ORA.b #$30
|05BEDD| STA.w $0B89,X

.skip_priority_stuff
|05BEE0| JSL SpriteDraw_SingleLarge_long

|05BEE4| LDA.w $0EF0,X
|05BEE7| BNE .explode_immediately

|05BEE9| LDA.w $0E00,X
|05BEEC| CMP.b #$40
|05BEEE| BCS .still_flashing

|05BEF0| CMP.b #$01
|05BEF2| BNE .dont_explode

.explode_immediately
|05BEF4| STZ.w $0EF0,X

|05BEF7| LDA.w $0DD0,X
|05BEFA| CMP.b #$0A
|05BEFC| BNE .not_carried

|05BEFE| STZ.w $0309
|05BF01| STZ.w $0308

.not_carried
|05BF04| LDA.b #$0C ; SFX2.0C
|05BF06| JSL QueueSpriteSFX2WithPan

|05BF0A| INC.w $0DB0,X

|05BF0D| LDA.b #$09
|05BF0F| STA.w $0F60,X

|05BF12| LDA.b #$02
|05BF14| STA.w $0F50,X

|05BF17| LDA.b #$1F
|05BF19| STA.w $0E00,X

|05BF1C| LDA.b #$06
|05BF1E| STA.w $0DD0,X

|05BF21| LDA.b #$03
|05BF23| STA.w $0E40,X

|05BF26| RTS

.dont_explode
|05BF27| LSR A
|05BF28| AND.b #$0E
|05BF2A| STA.b $00

|05BF2C| LDA.w $0F50,X
|05BF2F| AND.b #$F1
|05BF31| ORA.b $00
|05BF33| STA.w $0F50,X

;---------------------------------------------------------------------------------------------------

.still_flashing
|05BF36| JSR CheckIfActive_bank05

|05BF39| LDA.w $0EE0,X
|05BF3C| BNE .dont_check_for_hit

|05BF3E| JSL CheckDamageFromLink_long

.dont_check_for_hit
|05BF42| JSR MoveSpriteXY_bank05

|05BF45| LDA.b $1B
|05BF47| BEQ .outdoors

|05BF49| JSR CheckSpriteTileCollision_bank05

.outdoors
|05BF4C| JSL ThrownSprite_TileAndSpriteInteraction_long

|05BF50| RTS

;===================================================================================================

BombGuard:
|05BF51| JSR SpriteDraw_BombGuard

|05BF54| JSR CheckIfActive_bank05
|05BF57| JSR CheckDamageToAndFromLink_bank05

|05BF5A| JSR GetDirectionTowardsLink_bank05

|05BF5D| TYA
|05BF5E| STA.w $0DE0,X
|05BF61| STA.w $0EB0,X

|05BF64| LDA.w $0D80,X
|05BF67| BNE BombGuard_TossingBomb

;===================================================================================================

BombGuard_Idle:
|05BF69| LDA.w $0DF0,X
|05BF6C| BNE .exit

|05BF6E| INC.w $0D80,X

|05BF71| LDA.b #$70
|05BF73| STA.w $0DF0,X

.exit
|05BF76| RTS

;===================================================================================================

BombGuard_TossingBomb:
|05BF77| LDA.w $0DF0,X
|05BF7A| BNE .delay

|05BF7C| STZ.w $0D80,X

|05BF7F| LDA.b #$20

|05BF81| STA.w $0DF0,X

|05BF84| RTS

;---------------------------------------------------------------------------------------------------

.delay
|05BF85| STZ.w $0E80,X

|05BF88| CMP.b #$50
|05BF8A| BCC .arm_down

|05BF8C| INC.w $0E80,X

.arm_down
|05BF8F| CMP.b #$20
|05BF91| BNE .dont_spawn_bomb

|05BF93| PHA

|05BF94| JSR BombGuard_CreateBomb

|05BF97| PLA

.dont_spawn_bomb
|05BF98| LSR A
|05BF99| LSR A
|05BF9A| LSR A
|05BF9B| LSR A
|05BF9C| STA.b $00

|05BF9E| LDA.w $0DE0,X
|05BFA1| ASL A
|05BFA2| ASL A
|05BFA3| ASL A
|05BFA4| ORA.b $00

|05BFA6| CLC
|05BFA7| ADC.b #$20
|05BFA9| TAY

|05BFAA| LDA.w SomeGuardAnimStates,Y
|05BFAD| STA.w $0DC0,X

|05BFB0| RTS

;===================================================================================================

pool BombGuard_CreateBomb

.offset_x_low
|05BFB1| db   0,   1,   9,  -8

.offset_x_high
|05BFB5| db   0,   0,   0,  -1

.offset_y_low
|05BFB9| db -12, -12, -15, -13

.offset_y_high
|05BFBD| db  -1,  -1,  -1,  -1

endpool

;---------------------------------------------------------------------------------------------------

BombGuard_CreateBomb:
|05BFC1| LDA.b #$4A ; SPRITE 4A
|05BFC3| JSL SpawnSpriteDynamically
|05BFC7| BMI .exit

|05BFC9| PHX

|05BFCA| LDA.w $0DE0,X
|05BFCD| TAX

|05BFCE| LDA.b $00
|05BFD0| CLC
|05BFD1| ADC.w .offset_x_low,X
|05BFD4| STA.w $0D10,Y

|05BFD7| LDA.b $01
|05BFD9| ADC.w .offset_x_high,X
|05BFDC| STA.w $0D30,Y

|05BFDF| LDA.b $02
|05BFE1| CLC
|05BFE2| ADC.w .offset_y_low,X
|05BFE5| STA.w $0D00,Y

|05BFE8| LDA.b $03
|05BFEA| ADC.w .offset_y_high,X
|05BFED| STA.w $0D20,Y

|05BFF0| TYX

|05BFF1| LDA.b #$10
|05BFF3| JSL ApplySpeedTowardsLink_long

|05BFF7| LDA.b #$01
|05BFF9| STA.w $0DB0,X

|05BFFC| JSR GetDirectionTowardsLink_bank05

|05BFFF| LDA.b $0F
|05C001| BPL .positive_x

|05C003| EOR.b #$FF
|05C005| INC A

.positive_x
|05C006| STA.b $0F

|05C008| LDA.b $0E
|05C00A| BPL .positive_y

|05C00C| EOR.b #$FF
|05C00E| INC A

.positive_y
|05C00F| ORA.b $0F
|05C011| LSR A ; /16
|05C012| LSR A
|05C013| LSR A
|05C014| LSR A
|05C015| TAY

|05C016| LDA.w .z_speed,Y
|05C019| STA.w $0F80,X

|05C01C| LDA.w $0E60,X
|05C01F| AND.b #$EE
|05C021| ORA.b #$18
|05C023| STA.w $0E60,X

|05C026| LDA.b #$08
|05C028| STA.w $0F50,X

|05C02B| LDA.b #$FF
|05C02D| STA.w $0E00,X

|05C030| STZ.w $0E50,X

|05C033| LDA.b #$13 ; SFX3.13
|05C035| JSL QueueSpriteSFX3WithPan

|05C039| PLX

.exit
|05C03A| RTS

;---------------------------------------------------------------------------------------------------

.z_speed
|05C03B| db  32,  40,  48,  56,  64,  64,  64,  64
|05C043| db  64,  64,  64,  64,  64,  64,  64,  64

;===================================================================================================

SpriteDraw_BombGuard:
|05C04B| JSR GetScreenCoordinates_bank05

|05C04E| LDY.b #$08
|05C050| JSR SpriteDraw_GuardHead

|05C053| LDY.b #$04
|05C055| JSR SpriteDraw_GuardBody

|05C058| LDA.w $0DC0,X
|05C05B| CMP.b #$14
|05C05D| BCS .no_arm

|05C05F| JSR SpriteDraw_BombGuard_Arm

.no_arm
|05C062| LDA.b #$0A
|05C064| JSL DrawSpriteShadow_custom_long

|05C068| RTS

;===================================================================================================

pool SpriteDraw_BombGuard_Arm

.offset_x
|05C069| dw  -1,   1,   2,   0
|05C071| dw   9,   9,  -8,  -8

.offset_y
|05C079| dw -12, -12, -12, -12
|05C081| dw -16, -14, -12, -14

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_BombGuard_Arm:
|05C089| PHX

|05C08A| LDA.w $0DE0,X
|05C08D| ASL A
|05C08E| ORA.w $0E80,X
|05C091| ASL A
|05C092| TAX

|05C093| REP #$20

|05C095| LDA.b $00
|05C097| CLC
|05C098| ADC.w .offset_x,X

|05C09B| LDY.b #$00
|05C09D| STA.b ($90),Y

|05C09F| AND.w #$0100
|05C0A2| STA.b $0E

|05C0A4| LDA.b $02
|05C0A6| CLC
|05C0A7| ADC.w .offset_y,X

|05C0AA| INY
|05C0AB| STA.b ($90),Y

|05C0AD| CLC
|05C0AE| ADC.w #$0010
|05C0B1| CMP.w #$0100
|05C0B4| BCC .on_screen

|05C0B6| LDA.w #$00F0
|05C0B9| STA.b ($90),Y

.on_screen
|05C0BB| SEP #$20

|05C0BD| LDA.b #$6E
|05C0BF| INY
|05C0C0| STA.b ($90),Y

|05C0C2| INY

|05C0C3| LDA.b $05
|05C0C5| AND.b #$30
|05C0C7| ORA.b #$08
|05C0C9| STA.b ($90),Y

|05C0CB| LDA.b #$02
|05C0CD| ORA.b $0F
|05C0CF| STA.b ($92)

|05C0D1| PLX

|05C0D2| RTS

;===================================================================================================

pool SpriteDraw_SpriteBombExplosion

.offset_x
|05C0D3| db -12,  12, -12,  12
|05C0D7| db  -8,   8,  -8,   8
|05C0DB| db  -8,   8,  -8,   8
|05C0DF| db   0,   0,   0,   0

.offset_y
|05C0E3| db -12, -12,  12,  12
|05C0E7| db  -8,  -8,   8,   8
|05C0EB| db  -8,  -8,   8,   8
|05C0EF| db   0,   0,   0,   0

.char
|05C0F3| db $88, $88, $88, $88
|05C0F7| db $8A, $8A, $8A, $8A
|05C0FB| db $84, $84, $84, $84
|05C0FF| db $86, $86, $86, $86

.flip
|05C103| db $00, $40, $80, $C0
|05C107| db $00, $40, $80, $C0
|05C10B| db $00, $40, $80, $C0
|05C10F| db $00, $00, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_SpriteBombExplosion:
|05C113| JSR GetScreenCoordinates_bank05

|05C116| LDA.w $0E00,X
|05C119| LSR A
|05C11A| AND.b #$0C
|05C11C| STA.b $06

|05C11E| PHX

|05C11F| LDX.b #$03

.next_object
|05C121| PHX

|05C122| TXA
|05C123| CLC
|05C124| ADC.b $06
|05C126| TAX

|05C127| LDA.b $00
|05C129| CLC
|05C12A| ADC.w .offset_x,X
|05C12D| STA.b ($90),Y

|05C12F| LDA.b $02
|05C131| CLC
|05C132| ADC.w .offset_y,X

|05C135| INY
|05C136| STA.b ($90),Y

|05C138| LDA.w .char,X
|05C13B| INY
|05C13C| STA.b ($90),Y

|05C13E| LDA.w .flip,X
|05C141| ORA.b $05
|05C143| INY
|05C144| STA.b ($90),Y

|05C146| INY

|05C147| PLX
|05C148| DEX
|05C149| BPL .next_object

|05C14B| PLX

|05C14C| LDY.b #$02
|05C14E| LDA.b #$03
|05C150| JSL CorrectOAMEntries_long

|05C154| RTS

;===================================================================================================

Sprite_41_BlueGuard:
Sprite_42_GreenGuard:
Sprite_43_RedGuard:
|05C155| LDA.w $0DB0,X
|05C158| BNE Probe

|05C15A| JMP.w Guard_Main

;===================================================================================================

Probe:
|05C15D| LDY.b #$00

|05C15F| LDA.w $0D50,X
|05C162| BPL .positive_x

|05C164| DEY

.positive_x
|05C165| CLC
|05C166| ADC.w $0D10,X
|05C169| STA.w $0D10,X

|05C16C| TYA
|05C16D| ADC.w $0D30,X
|05C170| STA.w $0D30,X

|05C173| LDY.b #$00

|05C175| LDA.w $0D40,X
|05C178| BPL .positive_y

|05C17A| DEY

.positive_y
|05C17B| CLC
|05C17C| ADC.w $0D00,X
|05C17F| STA.w $0D00,X

|05C182| TYA
|05C183| ADC.w $0D20,X
|05C186| STA.w $0D20,X

|05C189| LDY.w $0DB0,X

|05C18C| LDA.w $0E20-1,Y ; $0E1F,Y but minus 1
|05C18F| CMP.b #$CE ; SPRITE CE
|05C191| BNE .not_from_blind

;---------------------------------------------------------------------------------------------------

|05C193| REP #$20

|05C195| LDA.w $0FD8
|05C198| SEC
|05C199| SBC.b $22
|05C19B| CLC
|05C19C| ADC.w #$0010
|05C19F| CMP.w #$0020

|05C1A2| SEP #$20

|05C1A4| BCS .no_hit_blind

|05C1A6| REP #$20

|05C1A8| LDA.b $20
|05C1AA| SEC
|05C1AB| SBC.w $0FDA
|05C1AE| CLC
|05C1AF| ADC.w #$0018
|05C1B2| CMP.w #$0020

|05C1B5| SEP #$20

|05C1B7| BCS .no_hit_blind

|05C1B9| JMP.w .made_contact

.no_hit_blind
|05C1BC| JMP.w .no_contact

;---------------------------------------------------------------------------------------------------

.not_from_blind
|05C1BF| JSL CheckTileSolidity
|05C1C3| BCC .passable

|05C1C5| LDA.w $0FA5
|05C1C8| CMP.b #$09 ; TILETYPE 09
|05C1CA| BNE .complete_failure

.passable
|05C1CC| LDA.w $0055
|05C1CF| BNE .complete_failure

|05C1D1| REP #$20

|05C1D3| LDA.w $0FD8
|05C1D6| SEC
|05C1D7| SBC.b $22
|05C1D9| CMP.w #$0010

|05C1DC| SEP #$20

|05C1DE| BCS .no_contact

|05C1E0| REP #$20

|05C1E2| LDA.w $0FDA
|05C1E5| SEC
|05C1E6| SBC.b $20
|05C1E8| CMP.w #$0010

|05C1EB| SEP #$20

|05C1ED| BCS .no_contact

|05C1EF| LDA.w $0F20,X
|05C1F2| CMP.b $EE
|05C1F4| BNE .no_contact

;---------------------------------------------------------------------------------------------------

.made_contact
|05C1F6| LDA.w $0DB0,X
|05C1F9| DEC A

|05C1FA| PHX

|05C1FB| TAX

|05C1FC| LDA.w $0D80,X
|05C1FF| CMP.b #$03
|05C201| BEQ .dont_trigger_parent

|05C203| LDA.b #$03
|05C205| STA.w $0D80,X

; Don't change Blind's timer
|05C208| LDA.w $0E20,X
|05C20B| CMP.b #$CE ; SPRITE CE
|05C20D| BEQ .dont_trigger_parent

|05C20F| LDA.b #$10
|05C211| STA.w $0DF0,X

|05C214| STZ.w $0E80,X

.dont_trigger_parent
|05C217| PLX

|05C218| BRA .complete_failure

;---------------------------------------------------------------------------------------------------

.no_contact
|05C21A| JSR GetScreenCoordinates_bank05

|05C21D| LDA.b $01
|05C21F| ORA.b $03
|05C221| BEQ EXIT_05C226

.complete_failure
|05C223| STZ.w $0DD0,X

;---------------------------------------------------------------------------------------------------

#EXIT_05C226:
|05C226| RTS

;===================================================================================================

Guard_Main:
|05C227| LDA.w $0DC0,X
|05C22A| PHA

|05C22B| LDY.w $0DE0,X
|05C22E| PHY

|05C22F| LDA.w $0E00,X
|05C232| BEQ .looking_around

|05C234| LDA.w SpriteDirections_bank05,Y
|05C237| STA.w $0DE0,X

|05C23A| LDA.w SpriteDrawSteps_bank05,Y
|05C23D| STA.w $0DC0,X

.looking_around
|05C240| JSR Guard_HandleAllAnimation

|05C243| PLA
|05C244| STA.w $0DE0,X

|05C247| PLA
|05C248| STA.w $0DC0,X

|05C24B| LDA.w $0DD0,X
|05C24E| CMP.b #$05
|05C250| BNE Guard_NotFalling

|05C252| LDA.b $11
|05C254| BNE EXIT_05C226

|05C256| JSR Guard_TickTwiceAndUpdateBody

|05C259| JMP.w Guard_TickTwiceAndUpdateBody

;===================================================================================================

Guard_NotFalling:
|05C25C| JSR CheckIfActive_bank05
|05C25F| JSL ParrySwordAttacks

|05C263| JSL CheckDamageToLink_long
|05C267| BCS .hit_im

|05C269| LDA.w $0FDC
|05C26C| BEQ .not_triggered

.hit_im
|05C26E| LDA.w $0D80,X
|05C271| CMP.b #$03
|05C273| BCS .not_triggered

|05C275| LDA.b #$03
|05C277| STA.w $0D80,X

|05C27A| LDA.b #$20
|05C27C| BRA .continue

.not_triggered
|05C27E| LDA.w $0EA0,X
|05C281| BEQ .not_recoiling

|05C283| CMP.b #$04
|05C285| BCC .not_recoiling

|05C287| LDA.b #$04
|05C289| STA.w $0D80,X

|05C28C| LDA.b #$80

.continue
|05C28E| JSR Guard_SetTimerAndAssertTileHitbox

.not_recoiling
|05C291| JSR HandleSpriteRecoil_bank05

|05C294| LDA.w $0E30,X
|05C297| AND.b #$07
|05C299| CMP.b #$05
|05C29B| BCS .cant_go_over_short_tiles

|05C29D| LDA.w $0E70,X
|05C2A0| BNE .tile_collision

|05C2A2| JSR MoveSpriteXY_bank05

.tile_collision
|05C2A5| JSR CheckSpriteTileCollision_bank05

|05C2A8| BRA .continue_after_move

.cant_go_over_short_tiles
|05C2AA| JSR MoveSpriteXY_bank05

.continue_after_move
|05C2AD| LDA.w $0D80,X
|05C2B0| CMP.b #$04
|05C2B2| BEQ .not_chasing

|05C2B4| STZ.w $0ED0,X

.not_chasing
|05C2B7| REP #$30

|05C2B9| AND.w #$00FF
|05C2BC| ASL A
|05C2BD| TAY

|05C2BE| LDA.w .vectors,Y
|05C2C1| DEC A
|05C2C2| PHA

|05C2C3| SEP #$30

|05C2C5| RTS

;---------------------------------------------------------------------------------------------------

.vectors
|05C2C6| dw Guard_Idle
|05C2C8| dw Guard_OnPatrol
|05C2CA| dw Guard_Surveying
|05C2CC| dw Guard_NoticeKouhai
|05C2CE| dw Guard_InPursuit

;===================================================================================================

pool Guard_Idle

.timer
|05C2D0| db  96, 192, 255,  64

endpool

;---------------------------------------------------------------------------------------------------

Guard_Idle:
|05C2D4| JSR ZeroVelocityXY_bank05

|05C2D7| LDA.w $0DF0,X
|05C2DA| BNE .exit

|05C2DC| INC.w $0D80,X

|05C2DF| LDA.w $0E30,X
|05C2E2| BEQ .not_glancing_around

|05C2E4| AND.b #$07
|05C2E6| CMP.b #$05
|05C2E8| BCS .not_glancing_around

|05C2EA| LDA.w $0E30,X
|05C2ED| LSR A
|05C2EE| LSR A
|05C2EF| LSR A
|05C2F0| AND.b #$03
|05C2F2| TAY

|05C2F3| LDA.w .timer,Y
|05C2F6| STA.w $0DF0,X

|05C2F9| LDA.w $0DE0,X
|05C2FC| EOR.b #$01
|05C2FE| STA.w $0DE0,X

|05C301| STZ.w $0E80,X

|05C304| BRA Set12FrameGlance

.not_glancing_around
|05C306| JSL GetRandomNumber
|05C30A| AND.b #$3F
|05C30C| ADC.b #$28
|05C30E| STA.w $0DF0,X

|05C311| LDA.w $0DE0,X
|05C314| PHA

|05C315| JSL GetRandomNumber
|05C319| AND.b #$03
|05C31B| STA.w $0DE0,X

|05C31E| PLA
|05C31F| CMP.w $0DE0,X
|05C322| BEQ .exit

|05C324| EOR.w $0DE0,X
|05C327| AND.b #$02
|05C329| BNE .exit

;===================================================================================================

#Set12FrameGlance:
|05C32B| LDA.b #$0C
|05C32D| STA.w $0E00,X

.exit
|05C330| RTS

;===================================================================================================

GuardSpeeds_X:
|05C331| db   8,  -8,   0,   0

GuardSpeeds_Y:
|05C335| db   0,   0,   8,  -8

;===================================================================================================

GuardBodySteps:
|05C339| db $0B, $0C, $0D, $0C, $04, $05, $06, $05
|05C341| db $00, $01, $02, $03, $07, $08, $09, $0A
|05C349| db $11, $12, $11, $12, $07, $08, $07, $08
|05C351| db $03, $04, $03, $04, $0D, $0E, $0D, $0E

;===================================================================================================

ProbeAndSparkCheckDirXSpeed:
|05C359| db   1,   1,  -1,  -1,  -1,  -1,   1,   1

ProbeAndSparkCheckDirYSpeed:
|05C361| db  -1,   1,   1,  -1,  -1,   1,   1,  -1

ProbeAndSparkXSpeed:
|05C369| db   8,   0,  -8,   0,  -8,   0,   8,   0

ProbeAndSparkYSpeed:
|05C371| db   0,   8,   0,  -8,   0,   8,   0,  -8

;===================================================================================================

ProbeType:
|05C379| db $00, $02, $01, $03, $01, $02, $00, $03

;===================================================================================================

ColinearDirections:
|05C381| db $01, $04, $02, $08, $02, $04, $01, $08

OrthogonalDirections:
|05C389| db $08, $01, $04, $02, $08, $02, $04, $01

;===================================================================================================

ColinearNextDirections:
|05C391| db $01, $02, $03, $00, $05, $06, $07, $04

OrthogonalNextDirections:
|05C399| db $03, $00, $01, $02, $07, $04, $05, $06

;===================================================================================================

Guard_ShootProbeAndStuff:
|05C3A1| LDY.w $0DA0,X

|05C3A4| LDA.w ProbeAndSparkCheckDirXSpeed,Y
|05C3A7| STA.w $0D50,X

|05C3AA| LDA.w ProbeAndSparkCheckDirYSpeed,Y
|05C3AD| STA.w $0D40,X

|05C3B0| JSR CheckSpriteTileCollision_bank05

|05C3B3| LDA.w $0E10,X
|05C3B6| BEQ .skip_first_ortho

|05C3B8| CMP.b #$2C
|05C3BA| BNE .done_ortho

|05C3BC| LDY.w $0DA0,X

|05C3BF| LDA.w OrthogonalNextDirections,Y
|05C3C2| STA.w $0DA0,X

|05C3C5| BRA .done_ortho

.skip_first_ortho
|05C3C7| LDY.w $0DA0,X

|05C3CA| LDA.w $0E70,X
|05C3CD| AND.w OrthogonalDirections,Y
|05C3D0| BNE .done_ortho

|05C3D2| LDA.b #$58
|05C3D4| STA.w $0E10,X

.done_ortho
|05C3D7| LDY.w $0DA0,X

|05C3DA| LDA.w $0E70,X
|05C3DD| AND.w ColinearDirections,Y
|05C3E0| BEQ .skip_next_colinear

|05C3E2| LDA.w ColinearNextDirections,Y
|05C3E5| STA.w $0DA0,X

.skip_next_colinear
|05C3E8| LDY.w $0DA0,X

|05C3EB| LDA.w ProbeAndSparkXSpeed,Y
|05C3EE| STA.w $0D50,X

|05C3F1| LDA.w ProbeAndSparkYSpeed,Y
|05C3F4| STA.w $0D40,X

; TODO VERIFY AND ANALYZE
|05C3F7| LDA.w ProbeType,Y
|05C3FA| STA.w $0DE0,X
|05C3FD| STA.w $0EB0,X

|05C400| JMP.w Guard_TickAndUpdateBody

;===================================================================================================

Guard_OnPatrol:
|05C403| JSR Guard_SendOutProbe

; TODO $0E30 needs analysis
|05C406| LDA.w $0E30,X
|05C409| AND.b #$07
|05C40B| CMP.b #$05
|05C40D| BCC .check_timer

|05C40F| JMP.w Guard_ShootProbeAndStuff

.check_timer
|05C412| LDA.w $0DF0,X
|05C415| BNE .delay

;===================================================================================================

#Guard_StopAndLookAround:
|05C417| JSR ZeroVelocityXY_bank05

|05C41A| LDA.b #$02
|05C41C| STA.w $0D80,X

|05C41F| LDA.b #$A0
|05C421| STA.w $0DF0,X

|05C424| RTS

;===================================================================================================

.delay
|05C425| LDA.w $0E80,X
|05C428| AND.b #$01
|05C42A| BNE .dont_resist_timer

|05C42C| INC.w $0DF0,X

.dont_resist_timer
|05C42F| LDA.w $0E70,X
|05C432| AND.b #$0F
|05C434| BEQ .no_tile_collision

|05C436| LDA.w $0DE0,X
|05C439| EOR.b #$01
|05C43B| STA.w $0DE0,X

|05C43E| JSR Set12FrameGlance

.no_tile_collision
|05C441| LDY.w $0DE0,X

|05C444| LDA.w GuardSpeeds_X,Y
|05C447| STA.w $0D50,X

|05C44A| LDA.w GuardSpeeds_Y,Y
|05C44D| STA.w $0D40,X

|05C450| TYA
|05C451| STA.w $0EB0,X

;===================================================================================================

Guard_TickAndUpdateBody:
|05C454| INC.w $0E80,X

|05C457| LDA.w $0E80,X
|05C45A| LSR A
|05C45B| LSR A
|05C45C| LSR A
|05C45D| AND.b #$03
|05C45F| STA.b $00

|05C461| LDA.w $0DE0,X
|05C464| ASL A
|05C465| ASL A
|05C466| ADC.b $00
|05C468| TAY

|05C469| LDA.w GuardBodySteps,Y
|05C46C| STA.w $0DC0,X

|05C46F| RTS

;===================================================================================================

GlanceDirections:
|05C470| db $00, $02, $02, $02, $00, $03, $03, $03 ; up
|05C478| db $01, $03, $03, $03, $01, $02, $02, $02 ; down
|05C480| db $02, $00, $00, $00, $02, $01, $01, $01 ; left
|05C488| db $03, $01, $01, $01, $03, $00, $00, $00 ; right

;===================================================================================================

Guard_Surveying:
|05C490| JSR ZeroVelocityXY_bank05
|05C493| JSR Guard_SendOutProbe

|05C496| LDA.w $0DF0,X
|05C499| BNE .delay

|05C49B| LDA.b #$20
|05C49D| STA.w $0DF0,X

|05C4A0| LDA.b #$00
|05C4A2| STA.w $0D80,X

|05C4A5| RTS

;---------------------------------------------------------------------------------------------------

.delay
|05C4A6| CMP.b #$80
|05C4A8| BCS .exit

|05C4AA| LSR A
|05C4AB| LSR A
|05C4AC| LSR A

|05C4AD| AND.b #$07
|05C4AF| STA.b $00

|05C4B1| LDA.w $0DE0,X
|05C4B4| ASL A
|05C4B5| ASL A
|05C4B6| ASL A
|05C4B7| ORA.b $00
|05C4B9| TAY

|05C4BA| LDA.w GlanceDirections,Y
|05C4BD| STA.w $0EB0,X

.exit
|05C4C0| RTS

;===================================================================================================

Guard_NoticeKouhai:
|05C4C1| JSR ZeroVelocityXY_bank05
|05C4C4| JSR GetDirectionTowardsLink_bank05

|05C4C7| TYA
|05C4C8| STA.w $0EB0,X

|05C4CB| LDA.w $0DF0,X
|05C4CE| BNE .exit

|05C4D0| LDA.b #$04
|05C4D2| STA.w $0D80,X

|05C4D5| LDA.b #$FF

;===================================================================================================

#Guard_SetTimerAndAssertTileHitbox:
|05C4D7| STA.w $0DF0,X

|05C4DA| STZ.w $0E30,X

|05C4DD| LDA.w $0B6B,X
|05C4E0| AND.b #$0F
|05C4E2| ORA.b #$60
|05C4E4| STA.w $0B6B,X

.exit
|05C4E7| RTS

;===================================================================================================

Guard_InPursuit:
|05C4E8| LDA.w $0DF0,X
|05C4EB| BNE .delay

|05C4ED| LDY.w $0DE0,X

|05C4F0| LDA.w GlanceTimers,Y
|05C4F3| STA.w $0EC0,X

|05C4F6| BRL Guard_StopAndLookAround

;===================================================================================================

#ZeroVelocityXY_bank05:
|05C4F9| STZ.w $0D50,X
|05C4FC| STZ.w $0D40,X

|05C4FF| RTS

;===================================================================================================

.delay
|05C500| TXA
|05C501| EOR.b $1A
|05C503| AND.b #$1F
|05C505| BNE .dont_update_trajectory

|05C507| LDA.w $0ED0,X
|05C50A| BNE .dont_whistle

|05C50C| LDA.b #$04 ; SFX3.04
|05C50E| JSL QueueSpriteSFX3WithPan

|05C512| INC.w $0ED0,X

.dont_whistle
|05C515| TXA
|05C516| AND.b #$03
|05C518| TAY

|05C519| LDA.w $0E20,X
|05C51C| CMP.b #$42 ; SPRITE 42
|05C51E| BEQ .blue_da_ba_dee ; useless branch

.blue_da_ba_dee
|05C520| LDA.w AppliedSpeed16,Y
|05C523| JSL ApplySpeedTowardsLink_long

|05C527| JSR GetDirectionTowardsLink_bank05

|05C52A| TYA
|05C52B| STA.w $0DE0,X
|05C52E| STA.w $0EB0,X

.dont_update_trajectory
|05C531| JSL Guard_ChaseLinkOnOneAxis

;===================================================================================================

Guard_TickTwiceAndUpdateBody:
|05C535| INC.w $0E80,X

|05C538| JSR Guard_TickAndUpdateBody

|05C53B| RTS

;===================================================================================================

GuardAppliedSpeeds_X:
; bleeds into next
|05C53C| db  14, -14

GuardAppliedSpeeds_Y:
|05C53E| db   0,   0,  14, -14

;===================================================================================================

Guard_ChaseLinkOnOneAxis:
|05C542| PHB
|05C543| PHK
|05C544| PLB

|05C545| LDA.w $0E70,X
|05C548| BEQ .exit

|05C54A| AND.b #$03
|05C54C| BEQ .check_horizontal

|05C54E| JSR GetYDisplacementFromLink_bank05

|05C551| INY
|05C552| INY
|05C553| BRA .continue

.check_horizontal
|05C555| JSR GetXDisplacementFromLink_bank05

.continue
|05C558| LDA.w GuardAppliedSpeeds_X,Y
|05C55B| STA.w $0D50,X

|05C55E| LDA.w GuardAppliedSpeeds_Y,Y
|05C561| STA.w $0D40,X

.exit
|05C564| PLB

|05C565| RTL

;===================================================================================================
; Why do these even exist?
;===================================================================================================
AppliedSpeed16:
|05C566| db  16,  16,  16,  16

AppliedSpeed18:
|05C56A| db  18,  18,  18,  18

;===================================================================================================

pool Guard_SendOutProbe

.speed_x
|05C56E| db -16, -16, -16, -16, -16, -16, -16, -16
|05C576| db -16, -14, -12, -10,  -8,  -6,  -4,  -2

|05C57E| db   0,   2,   4,   6,   8,  10,  12,  14
|05C586| db  16,  16,  16,  16,  16,  16,  16,  16

|05C58E| db  16,  16,  16,  16,  16,  16,  16,  16
|05C596| db  14,  12,  10,   8,   6,   4,   2,   0

|05C59E| db  -2,  -4,  -6,  -8, -10, -12, -14, -16
|05C5A6| db -16, -16, -16, -16, -16, -16, -16, -16

.speed_y
|05C5AE| db   0,   2,   4,   6,   8,  10,  12,  14
|05C5B6| db  16,  16,  16,  16,  16,  16,  16,  16

|05C5BE| db  16,  16,  16,  16,  16,  16,  16,  16
|05C5C6| db  14,  12,  10,   8,   6,   4,   2,   0

|05C5CE| db  -2,  -4,  -6,  -8, -10, -12, -14, -16
|05C5D6| db -16, -16, -16, -16, -16, -16, -16, -16

|05C5DE| db -16, -16, -16, -16, -16, -16, -16, -16
|05C5E6| db -14, -12, -10,  -8,  -6,  -4,  -2,   0

.index_offset
|05C5EE| db $10
|05C5EF| db $30
|05C5F0| db $00
|05C5F1| db $20

endpool

;---------------------------------------------------------------------------------------------------

Guard_SendOutProbe:
|05C5F2| TXA
|05C5F3| CLC
|05C5F4| ADC.b $1A
|05C5F6| STA.b $0F ; useless write

|05C5F8| AND.b #$03
|05C5FA| ORA.w $0F00,X
|05C5FD| BNE .exit

|05C5FF| LDA.w $0EC0,X
|05C602| INC.w $0EC0,X

|05C605| LDY.w $0DE0,X

|05C608| CLC
|05C609| AND.b #$1F
|05C60B| ADC.w .index_offset,Y

|05C60E| AND.b #$3F
|05C610| STA.b $0F

;===================================================================================================

#FireProbe:
|05C612| LDA.b #$41 ; SPRITE 41
|05C614| LDY.b #$0A
|05C616| JSL SpawnSpriteDynamically.slot_limited
|05C61A| BMI .exit

|05C61C| LDA.b $00
|05C61E| CLC
|05C61F| ADC.b #$08
|05C621| STA.w $0D10,Y

|05C624| LDA.b $01
|05C626| ADC.b #$00
|05C628| STA.w $0D30,Y

|05C62B| LDA.b $02
|05C62D| CLC
|05C62E| ADC.b #$04
|05C630| STA.w $0D00,Y

|05C633| LDA.b $03
|05C635| ADC.b #$00
|05C637| STA.w $0D20,Y

|05C63A| PHX

|05C63B| LDX.b $0F
|05C63D| TXA
|05C63E| STA.w $0DE0,Y

|05C641| LDA.w .speed_x,X
|05C644| STA.w $0D50,Y

|05C647| LDA.w .speed_y,X
|05C64A| STA.w $0D40,Y

|05C64D| LDA.w $0E40,Y
|05C650| AND.b #$F0
|05C652| ORA.b #$A0
|05C654| STA.w $0E40,Y

|05C657| PLX

|05C658| TXA
|05C659| INC A
|05C65A| STA.w $0DB0,Y
|05C65D| STA.w $0BA0,Y

|05C660| LDA.b #$40
|05C662| STA.w $0F60,Y
|05C665| STA.w $0E60,Y

|05C668| LDA.b #$02
|05C66A| STA.w $0CAA,Y

.exit
|05C66D| RTS

;===================================================================================================

FireProbe_long:
|05C66E| PHB
|05C66F| PHK
|05C670| PLB

|05C671| JSR FireProbe

|05C674| PLB

|05C675| RTL

;===================================================================================================

Guard_HandleAllAnimation_long:
|05C676| PHB
|05C677| PHK
|05C678| PLB

|05C679| PHX

|05C67A| JSR Guard_HandleAllAnimation

|05C67D| PLX

|05C67E| PLB

|05C67F| RTL

;---------------------------------------------------------------------------------------------------

Guard_HandleAllAnimation:
|05C680| JSR GetScreenCoordinates_bank05
|05C683| JSR Guard_AnimateHead
|05C686| JSR Guard_AnimateBody
|05C689| JSR Guard_AnimateWeapon

;===================================================================================================

DrawGuardShadow:
|05C68C| LDA.w $0E60,X
|05C68F| AND.b #$10
|05C691| BEQ .exit

|05C693| LDY.w $0DE0,X

|05C696| LDA.w .shadow_type,Y
|05C699| JSL DrawSpriteShadow_custom_long

.exit
|05C69D| RTS

;---------------------------------------------------------------------------------------------------

.shadow_type
|05C69E| db $0C, $0C, $0A, $0A

;===================================================================================================

GuardHeadChar:
|05C6A2| db $42, $42, $40, $44

GuardHeadProp:
|05C6A6| db $40, $00, $00, $00

;===================================================================================================

GuardHeadOffsetY:
|05C6AA| dw   7,  8,  7,  8
|05C6B2| dw   8,  7,  8,  7
|05C6BA| dw   8,  7,  8,  8
|05C6C2| dw   7,  8,  8,  8
|05C6CA| dw   8,  8,  8,  8
|05C6D2| dw   8,  8,  8,  8
|05C6DA| dw   8,  8

;===================================================================================================

Guard_AnimateHead:
|05C6DE| LDY.b #$00

;---------------------------------------------------------------------------------------------------

#Guard_AnimateHead_PreserveOAMOffset:
|05C6E0| PHX

|05C6E1| LDA.w $0DC0,X
|05C6E4| ASL A
|05C6E5| STA.b $0D

|05C6E7| LDA.w $0EB0,X
|05C6EA| TAX

|05C6EB| REP #$20

|05C6ED| LDA.b $00
|05C6EF| STA.b ($90),Y

|05C6F1| AND.w #$0100
|05C6F4| STA.b $0E

|05C6F6| PHY

|05C6F7| LDA.b $02
|05C6F9| SEC

|05C6FA| LDY.b $0D
|05C6FC| SBC.w GuardHeadOffsetY,Y

|05C6FF| PLY
|05C700| INY

|05C701| STA.b ($90),Y

|05C703| CLC
|05C704| ADC.w #$0010
|05C707| CMP.w #$0100
|05C70A| BCC .on_screen

|05C70C| LDA.w #$00F0
|05C70F| STA.b ($90),Y

.on_screen
|05C711| SEP #$20

|05C713| LDA.w GuardHeadChar,X
|05C716| INY
|05C717| STA.b ($90),Y

|05C719| LDA.w GuardHeadProp,X
|05C71C| INY
|05C71D| ORA.b $05
|05C71F| STA.b ($90),Y

|05C721| TYA
|05C722| LSR A
|05C723| LSR A
|05C724| TAY

|05C725| LDA.b #$02
|05C727| ORA.b $0F
|05C729| STA.b ($92),Y

|05C72B| PLX

|05C72C| RTS

;===================================================================================================

GuardBodyObjectOffsetX:
|05C72D| dw  -4,   4,  10,  10
|05C735| dw  -4,   4,  10,  10
|05C73D| dw  -4,   4,  10,  10
|05C745| dw  -4,   4,  10,  10
|05C74D| dw  -4,  -4,   0,   0
|05C755| dw  -4,  -4,   0,   0
|05C75D| dw  -3,  -3,   0,   0
|05C765| dw  -3,  -3,  -4,   4
|05C76D| dw  -3,  -3,  -4,   4
|05C775| dw  -3,  -3,  -4,   4
|05C77D| dw  -3,  -3,  -4,   4
|05C785| dw  12,  12,   0,   0
|05C78D| dw  12,  12,   0,   0
|05C795| dw  11,  11,   0,   0
|05C79D| dw  -4,   4,   0,   0
|05C7A5| dw  -4,   4,   0,   0
|05C7AD| dw  -4,   4,   0,   0
|05C7B5| dw   0,   0,   0,   0
|05C7BD| dw   0,   0,   0,   0
|05C7C5| dw   0,   0,   0,   0
|05C7CD| dw  -4,   4,   0,   0
|05C7D5| dw  -4,   4,   0,   0
|05C7DD| dw  -4,   4,   0,   0
|05C7E5| dw   0,   0,   0,   0
|05C7ED| dw   0,   0,   0,   0
|05C7F5| dw   0,   0,   0,   0

;===================================================================================================

GuardBodyObjectOffsetY:
|05C7FD| dw   0,   0,   2,  10
|05C805| dw   0,   0,   2,  10
|05C80D| dw   0,   0,   1,   9
|05C815| dw   0,   0,   2,  10
|05C81D| dw  -2,   6,   1,   1
|05C825| dw  -2,   6,   2,   2
|05C82D| dw  -2,   6,   1,   1
|05C835| dw  -5,   3,   0,   0
|05C83D| dw  -4,   4,   0,   0
|05C845| dw  -4,   4,   0,   0
|05C84D| dw  -5,   3,   0,   0
|05C855| dw  -2,   6,   1,   1
|05C85D| dw  -2,   6,   2,   2
|05C865| dw  -2,   6,   1,   1
|05C86D| dw   0,   0,   8,   8
|05C875| dw   0,   0,   8,   8
|05C87D| dw   0,   0,   8,   8
|05C885| dw   0,   0,   8,   8
|05C88D| dw   0,   0,   8,   8
|05C895| dw   0,   0,   8,   8
|05C89D| dw   0,   0,   8,   8
|05C8A5| dw   0,   0,   8,   8
|05C8AD| dw   0,   0,   8,   8
|05C8B5| dw   0,   0,   8,   8
|05C8BD| dw   0,   0,   8,   8
|05C8C5| dw   0,   0,   8,   8

;===================================================================================================

GuardBodyObjectChar:
|05C8CD| db $48, $49, $6D, $7D
|05C8D1| db $49, $48, $6D, $7D
|05C8D5| db $46, $46, $6D, $7D
|05C8D9| db $4B, $46, $6D, $7D
|05C8DD| db $4D, $5D, $4E, $4E
|05C8E1| db $4D, $5D, $60, $60
|05C8E5| db $4D, $5D, $62, $62
|05C8E9| db $6D, $7D, $64, $64
|05C8ED| db $6D, $7D, $66, $67
|05C8F1| db $6D, $7D, $67, $66
|05C8F5| db $6D, $7D, $64, $69
|05C8F9| db $4D, $5D, $4E, $4E
|05C8FD| db $4D, $5D, $60, $60
|05C901| db $4D, $5D, $62, $62
|05C905| db $02, $03, $20, $20
|05C909| db $02, $0C, $20, $20
|05C90D| db $02, $0C, $20, $20
|05C911| db $08, $08, $20, $20
|05C915| db $0E, $0E, $20, $20
|05C919| db $0E, $0E, $20, $20
|05C91D| db $05, $06, $20, $20
|05C921| db $22, $06, $20, $20
|05C925| db $22, $06, $20, $20
|05C929| db $08, $08, $20, $20
|05C92D| db $0E, $0E, $20, $20
|05C931| db $0E, $0E, $20, $20

;===================================================================================================

GuardBodyObjectFlip:
|05C935| db $00, $00, $00, $00
|05C939| db $40, $40, $00, $00
|05C93D| db $00, $40, $00, $00
|05C941| db $00, $40, $00, $00
|05C945| db $00, $00, $00, $00
|05C949| db $00, $00, $00, $00
|05C94D| db $00, $00, $00, $00
|05C951| db $00, $00, $00, $40
|05C955| db $00, $00, $00, $00
|05C959| db $00, $00, $40, $40
|05C95D| db $00, $00, $00, $40
|05C961| db $40, $40, $40, $40
|05C965| db $40, $40, $40, $40
|05C969| db $40, $40, $40, $40
|05C96D| db $00, $00, $00, $00
|05C971| db $00, $00, $00, $00
|05C975| db $00, $00, $00, $00
|05C979| db $00, $00, $00, $00
|05C97D| db $00, $00, $00, $00
|05C981| db $00, $00, $00, $00
|05C985| db $00, $00, $00, $00
|05C989| db $00, $00, $00, $00
|05C98D| db $00, $00, $00, $00
|05C991| db $40, $40, $40, $40
|05C995| db $40, $40, $40, $40
|05C999| db $40, $40, $40, $40

;===================================================================================================

GuardBodyObjectSize:
|05C99D| db $02, $02, $00, $00
|05C9A1| db $02, $02, $00, $00
|05C9A5| db $02, $02, $00, $00
|05C9A9| db $02, $02, $00, $00
|05C9AD| db $00, $00, $02, $02
|05C9B1| db $00, $00, $02, $02
|05C9B5| db $00, $00, $02, $02
|05C9B9| db $00, $00, $02, $02
|05C9BD| db $00, $00, $02, $02
|05C9C1| db $00, $00, $02, $02
|05C9C5| db $00, $00, $02, $02
|05C9C9| db $00, $00, $02, $02
|05C9CD| db $00, $00, $02, $02
|05C9D1| db $00, $00, $02, $02
|05C9D5| db $02, $02, $02, $02
|05C9D9| db $02, $02, $02, $02
|05C9DD| db $02, $02, $02, $02
|05C9E1| db $02, $02, $02, $02
|05C9E5| db $02, $02, $02, $02
|05C9E9| db $02, $02, $02, $02
|05C9ED| db $02, $02, $02, $02
|05C9F1| db $02, $02, $02, $02
|05C9F5| db $02, $02, $02, $02
|05C9F9| db $02, $02, $02, $02
|05C9FD| db $02, $02, $02, $02
|05CA01| db $02, $02, $02, $02

;===================================================================================================

GuardBodyOAMOffsets:
|05CA05| db $0C
|05CA06| db $0C
|05CA07| db $0C
|05CA08| db $04

;===================================================================================================

Guard_AnimateBody:
|05CA09| LDY.w $0DE0,X

|05CA0C| LDA.w GuardBodyOAMOffsets,Y
|05CA0F| TAY

;---------------------------------------------------------------------------------------------------

#Guard_AnimateBody_PreserveOAMOffset:
|05CA10| LDA.w $0DC0,X
|05CA13| ASL A
|05CA14| ASL A
|05CA15| STA.b $07

|05CA17| LDA.w $0E20,X
|05CA1A| STA.b $08

|05CA1C| PHX

|05CA1D| LDX.b #$03

.next_object
|05CA1F| PHX

|05CA20| TXA
|05CA21| CLC
|05CA22| ADC.b $07
|05CA24| TAX

|05CA25| STX.b $06

|05CA27| LDA.b $08
|05CA29| CMP.b #$46 ; SPRITE 46
|05CA2B| BCC .do_draw

|05CA2D| LDA.w GuardBodyObjectSize,X
|05CA30| BEQ .skip

|05CA32| LDA.w GuardBodyObjectChar,X

|05CA35| PLX
|05CA36| PHX

|05CA37| CPX.b #$03
|05CA39| BNE .do_draw

|05CA3B| CMP.b #$20
|05CA3D| BEQ .skip

.do_draw
|05CA3F| LDA.b $06
|05CA41| ASL A
|05CA42| TAX

|05CA43| REP #$20

|05CA45| LDA.b $00
|05CA47| CLC
|05CA48| ADC.w GuardBodyObjectOffsetX,X
|05CA4B| STA.b ($90),Y

|05CA4D| AND.w #$0100
|05CA50| STA.b $0E

|05CA52| LDA.b $02
|05CA54| CLC
|05CA55| ADC.w GuardBodyObjectOffsetY,X

|05CA58| INY
|05CA59| STA.b ($90),Y

|05CA5B| CLC
|05CA5C| ADC.w #$0010
|05CA5F| CMP.w #$0100
|05CA62| BCC .on_screen

|05CA64| LDA.w #$00F0
|05CA67| STA.b ($90),Y

.on_screen
|05CA69| SEP #$20

|05CA6B| LDA.b #$08
|05CA6D| STA.b $0D

|05CA6F| LDX.b $06

|05CA71| LDA.w GuardBodyObjectChar,X
|05CA74| INY
|05CA75| STA.b ($90),Y

|05CA77| CMP.b #$20
|05CA79| BNE .test_size

|05CA7B| LDA.b #$02
|05CA7D| STA.b $0D

|05CA7F| LDA.b $08
|05CA81| CMP.b #$46 ; SPRITE 46

|05CA83| CLC ; so the palette change always occurs
|05CA84| BNE .do_flip

|05CA86| DEY

|05CA87| LDA.b #$F0
|05CA89| STA.b ($90),Y

|05CA8B| INY
|05CA8C| BRA .do_flip

.test_size
|05CA8E| LDA.w GuardBodyObjectSize,X
|05CA91| CMP.b #$01

.do_flip
|05CA93| LDA.w GuardBodyObjectFlip,X
|05CA96| ORA.b $05
|05CA98| BCS .dont_change_palette

|05CA9A| AND.b #$F1
|05CA9C| ORA.b $0D

.dont_change_palette
|05CA9E| INY
|05CA9F| STA.b ($90),Y

|05CAA1| PHY

|05CAA2| TYA
|05CAA3| LSR A
|05CAA4| LSR A
|05CAA5| TAY

|05CAA6| LDA.w GuardBodyObjectSize,X
|05CAA9| ORA.b $0F
|05CAAB| STA.b ($92),Y

|05CAAD| PLY
|05CAAE| INY

;---------------------------------------------------------------------------------------------------

.skip
|05CAAF| PLX

|05CAB0| DEX
|05CAB1| BMI .exit
|05CAB3| JMP.w .next_object

.exit
|05CAB6| PLX

|05CAB7| RTS

;===================================================================================================

GuardWeaponObjectOffsetX:
|05CAB8| dw  -3,  -3
|05CABC| dw  -4,  -4
|05CAC0| dw  -4,  -4
|05CAC4| dw  -4,  -4
|05CAC8| dw -11,  -3
|05CACC| dw -11,  -3
|05CAD0| dw -16,  -8
|05CAD4| dw  12,  12
|05CAD8| dw  12,  12
|05CADC| dw  12,  12
|05CAE0| dw  12,  12
|05CAE4| dw  21,  13
|05CAE8| dw  21,  13
|05CAEC| dw  24,  16

;===================================================================================================

GuardWeaponObjectOffsetY:
|05CAF0| dw  11,  19
|05CAF4| dw  11,  19
|05CAF8| dw  10,  18
|05CAFC| dw  14,  22
|05CB00| dw   8,   8
|05CB04| dw   8,   8
|05CB08| dw   6,   6
|05CB0C| dw -10,  -2
|05CB10| dw  -9,  -1
|05CB14| dw  -9,  -1
|05CB18| dw -16,  -8
|05CB1C| dw   8,   8
|05CB20| dw   8,   8
|05CB24| dw   6,   6

;===================================================================================================

GuardWeaponObjectChar:
|05CB28| db $7B, $6B
|05CB2A| db $7B, $6B
|05CB2C| db $7B, $6B
|05CB2E| db $7B, $6B
|05CB30| db $6C, $7C
|05CB32| db $6C, $7C
|05CB34| db $6C, $7C
|05CB36| db $6B, $7B
|05CB38| db $6B, $7B
|05CB3A| db $6B, $7B
|05CB3C| db $6B, $7B
|05CB3E| db $6C, $7C
|05CB40| db $6C, $7C
|05CB42| db $6C, $7C

;===================================================================================================

GuardWeaponObjectFlip:
|05CB44| db $80, $80
|05CB46| db $80, $80
|05CB48| db $80, $80
|05CB4A| db $80, $80
|05CB4C| db $00, $00
|05CB4E| db $00, $00
|05CB50| db $00, $00
|05CB52| db $00, $00
|05CB54| db $00, $00
|05CB56| db $00, $00
|05CB58| db $00, $00
|05CB5A| db $40, $40
|05CB5C| db $40, $40
|05CB5E| db $40, $40

;===================================================================================================

GuardWeaponObjectOAMOffset:
|05CB60| db $04
|05CB61| db $04
|05CB62| db $04
|05CB63| db $14

;===================================================================================================

Guard_AnimateWeapon:
|05CB64| LDA.w $0DC0,X
|05CB67| ASL A
|05CB68| STA.b $06

|05CB6A| LDA.w $0E20,X
|05CB6D| SEC
|05CB6E| SBC.b #$41
|05CB70| STA.b $08

|05CB72| LDY.w $0DE0,X

|05CB75| LDA.w GuardWeaponObjectOAMOffset,Y
|05CB78| TAY

|05CB79| PHX

|05CB7A| LDX.b #$01

.next_object
|05CB7C| PHX

|05CB7D| TXA
|05CB7E| CLC
|05CB7F| ADC.b $06
|05CB81| PHA

|05CB82| ASL A
|05CB83| TAX

|05CB84| REP #$20

|05CB86| LDA.w GuardWeaponObjectOffsetX,X
|05CB89| CLC
|05CB8A| ADC.b $00
|05CB8C| STA.b ($90),Y

|05CB8E| AND.w #$0100
|05CB91| STA.b $0E

|05CB93| LDA.w GuardWeaponObjectOffsetY,X
|05CB96| CLC
|05CB97| ADC.b $02

|05CB99| INY
|05CB9A| STA.b ($90),Y

|05CB9C| CLC
|05CB9D| ADC.w #$0010
|05CBA0| CMP.w #$0100
|05CBA3| BCC .on_screen

|05CBA5| LDA.w #$00F0
|05CBA8| STA.b ($90),Y

.on_screen
|05CBAA| SEP #$20

|05CBAC| LDA.w GuardWeaponObjectOffsetX,X
|05CBAF| STA.w $0FAB

|05CBB2| LDA.w GuardWeaponObjectOffsetY,X
|05CBB5| STA.w $0FAA

|05CBB8| PLX

|05CBB9| LDA.b $08
|05CBBB| CMP.b #$02 ; indicates SPRITE 43

|05CBBD| LDA.w GuardWeaponObjectChar,X
|05CBC0| BCS .dont_adjust

|05CBC2| ADC.b #$03

.dont_adjust
|05CBC4| INY
|05CBC5| STA.b ($90),Y

|05CBC7| LDA.w GuardWeaponObjectFlip,X
|05CBCA| ORA.b $05
|05CBCC| INY
|05CBCD| STA.b ($90),Y

|05CBCF| PHY

|05CBD0| TYA
|05CBD1| LSR A
|05CBD2| LSR A
|05CBD3| TAY

|05CBD4| LDA.b $0F
|05CBD6| STA.b ($92),Y

|05CBD8| PLY
|05CBD9| INY

|05CBDA| PLX
|05CBDB| DEX
|05CBDC| BPL .next_object

|05CBDE| PLX

|05CBDF| RTS

;===================================================================================================

Sprite_45_UsainBolt:
|05CBE0| JSR Guard_HandleAllAnimation
|05CBE3| JSR CheckIfActive_bank05

|05CBE6| JSR BoltGuard_TriggerChaseTheme
|05CBE9| JSL ParrySwordAttacks

|05CBED| JSR HandleSpriteRecoil_bank05

|05CBF0| JSR MoveIfNoTileCollision
|05CBF3| JSR CheckSpriteTileCollision_bank05

|05CBF6| JSL CheckDamageToLink_long

|05CBFA| TXA
|05CBFB| EOR.b $1A
|05CBFD| AND.b #$0F
|05CBFF| BNE .dont_turn

|05CC01| JSR GetDirectionTowardsLink_bank05

|05CC04| TYA
|05CC05| STA.w $0EB0,X
|05CC08| STA.w $0DE0,X

; Seems they were planning to have different speeds based on slot
|05CC0B| TXA
|05CC0C| AND.b #$03
|05CC0E| TAY

|05CC0F| LDA.w AppliedSpeed18,Y
|05CC12| JSL ApplySpeedTowardsLink_long

|05CC16| LDA.w $0E70,X
|05CC19| BEQ .dont_turn

|05CC1B| AND.b #$03
|05CC1D| BEQ .check_horizontal

.check_vertical
|05CC1F| JSR GetYDisplacementFromLink_bank05

|05CC22| INY
|05CC23| INY
|05CC24| BRA .do_speed

.check_horizontal
|05CC26| JSR GetXDisplacementFromLink_bank05

.do_speed
|05CC29| LDA.w GuardAppliedSpeeds_X,Y
|05CC2C| STA.w $0D50,X

|05CC2F| LDA.w GuardAppliedSpeeds_Y,Y
|05CC32| STA.w $0D40,X

.dont_turn
|05CC35| INC.w $0E80,X

|05CC38| JSR Guard_TickAndUpdateBody

|05CC3B| RTS

;===================================================================================================

BoltGuard_TriggerChaseTheme:
|05CC3C| LDA.w $0ED0,X
|05CC3F| CMP.b #$10
|05CC41| BEQ .exit

|05CC43| INC.w $0ED0,X

|05CC46| CMP.b #$0F
|05CC48| BNE .exit

|05CC4A| LDA.b #$04 ; SFX3.04
|05CC4C| JSL QueueSpriteSFX3WithPan

|05CC50| LDA.l $7EF3C5
|05CC54| CMP.b #$02
|05CC56| BNE .exit

|05CC58| LDA.w $040A
|05CC5B| CMP.b #$18 ; OW 18
|05CC5D| BNE .exit

|05CC5F| LDA.b #$0C ; SONG 0C
|05CC61| STA.w $012C

.exit
|05CC64| RTS

;===================================================================================================

Sprite_44_BluesainBolt:
|05CC65| JSR SpriteDraw_BluesainBolt
|05CC68| JSR CheckIfActive_bank05

|05CC6B| JSR BoltGuard_TriggerChaseTheme
|05CC6E| JSL ParrySwordAttacks

|05CC72| JSR HandleSpriteRecoil_bank05

|05CC75| JSR MoveIfNoTileCollision
|05CC78| JSR CheckSpriteTileCollision_bank05

|05CC7B| JSL CheckDamageToLink_long

|05CC7F| TXA
|05CC80| EOR.b $1A
|05CC82| AND.b #$0F
|05CC84| BNE .dont_turn

|05CC86| JSR GetDirectionTowardsLink_bank05

|05CC89| TYA
|05CC8A| STA.w $0EB0,X
|05CC8D| STA.w $0DE0,X

|05CC90| TXA
|05CC91| AND.b #$03
|05CC93| TAY

|05CC94| LDA.w AppliedSpeed18,Y
|05CC97| JSL ApplySpeedTowardsLink_long

|05CC9B| LDA.w $0E70,X
|05CC9E| BEQ .dont_turn

;---------------------------------------------------------------------------------------------------

.check_vertical
|05CCA0| AND.b #$03
|05CCA2| BEQ .check_horizontal

|05CCA4| JSR GetYDisplacementFromLink_bank05
|05CCA7| INY
|05CCA8| INY
|05CCA9| BRA .do_speed

.check_horizontal
|05CCAB| JSR GetXDisplacementFromLink_bank05

.do_speed
|05CCAE| LDA.w GuardAppliedSpeeds_X,Y
|05CCB1| STA.w $0D50,X

|05CCB4| LDA.w GuardAppliedSpeeds_Y,Y
|05CCB7| STA.w $0D40,X

;---------------------------------------------------------------------------------------------------

.dont_turn
|05CCBA| LDA.w $0DE0,X
|05CCBD| ASL A
|05CCBE| ASL A
|05CCBF| ASL A
|05CCC0| STA.b $00

|05CCC2| INC.w $0E80,X

|05CCC5| LDA.w $0E80,X
|05CCC8| LSR A
|05CCC9| AND.b #$07
|05CCCB| ORA.b $00
|05CCCD| TAY

|05CCCE| LDA.w BluesainAndBNC_anim_step,Y
|05CCD1| STA.w $0DC0,X

|05CCD4| RTS

;===================================================================================================

SpriteDraw_BluesainBolt:
|05CCD5| JSR GetScreenCoordinates_bank05

|05CCD8| LDY.b #$0C
|05CCDA| JSR SpriteDraw_GuardHead

|05CCDD| LDY.b #$08
|05CCDF| JSR SpriteDraw_GuardBody

|05CCE2| JSR SpriteDraw_GuardSpear_Bolt

|05CCE5| JMP.w DrawGuardShadow

;---------------------------------------------------------------------------------------------------

pool SpriteDraw_GuardSpear

.offset_x
|05CCE8| dw  15,   7
|05CCEC| dw  17,   9
|05CCF0| dw  -8,   0
|05CCF4| dw -10,  -2
|05CCF8| dw  13,  13
|05CCFC| dw  13,  13
|05CD00| dw  -4,  -4
|05CD04| dw  -4,  -4

.offset_y
|05CD08| dw  -2,  -2
|05CD0C| dw  -2,  -2
|05CD10| dw  -2,  -2
|05CD14| dw  -2,  -2
|05CD18| dw   8,   0
|05CD1C| dw  10,   2
|05CD20| dw -14,  -6
|05CD24| dw -16,  -8

.char
|05CD28| db $6F, $7F
|05CD2A| db $6F, $7F
|05CD2C| db $6F, $7F
|05CD2E| db $6F, $7F
|05CD30| db $6E, $7E
|05CD32| db $6E, $7E
|05CD34| db $6E, $7E
|05CD36| db $6E, $7E

.flip
|05CD38| db $40, $40
|05CD3A| db $40, $40
|05CD3C| db $00, $00
|05CD3E| db $00, $00
|05CD40| db $80, $80
|05CD42| db $80, $80
|05CD44| db $00, $00
|05CD46| db $00, $00

endpool

;===================================================================================================

SpriteDraw_GuardSpear_Fresh:
|05CD48| LDY.b #$00

;===================================================================================================

SpriteDraw_GuardSpear_PreserveOAMOffset:
|05CD4A| LDA.w $0D90,X

|05CD4D| BRA SpriteDraw_GuardSpear

;===================================================================================================

SpriteDraw_GuardSpear_Bolt:
|05CD4F| LDA.w $0D90,X

|05CD52| LDY.b #$00

;===================================================================================================

SpriteDraw_GuardSpear:
|05CD54| EOR.b #$01
|05CD56| ASL A
|05CD57| AND.b #$02
|05CD59| STA.b $06

|05CD5B| LDA.w $0E20,X
|05CD5E| STA.b $08

|05CD60| LDA.w $0DE0,X
|05CD63| ASL A
|05CD64| ASL A
|05CD65| ORA.b $06
|05CD67| STA.b $06

|05CD69| PHX

|05CD6A| LDX.b #$01

.next_object
|05CD6C| PHX

|05CD6D| TXA
|05CD6E| CLC
|05CD6F| ADC.b $06
|05CD71| PHA

|05CD72| ASL A
|05CD73| TAX

|05CD74| REP #$20

|05CD76| LDA.w .offset_x,X
|05CD79| CLC
|05CD7A| ADC.b $00
|05CD7C| STA.b ($90),Y

|05CD7E| AND.w #$0100
|05CD81| STA.b $0E

|05CD83| LDA.w .offset_y,X
|05CD86| CLC
|05CD87| ADC.b $02
|05CD89| INY
|05CD8A| STA.b ($90),Y

|05CD8C| CLC
|05CD8D| ADC.w #$0010
|05CD90| CMP.w #$0100
|05CD93| BCC .on_screen

|05CD95| LDA.w #$00F0
|05CD98| STA.b ($90),Y

.on_screen
|05CD9A| SEP #$20

|05CD9C| LDA.w .offset_x,X
|05CD9F| STA.w $0FAB

|05CDA2| LDA.w .offset_y,X
|05CDA5| STA.w $0FAA

|05CDA8| PLX

|05CDA9| LDA.b $08
|05CDAB| CMP.b #$48 ; SPRITE 48

|05CDAD| LDA.w .char,X
|05CDB0| BCC .dont_adjust_char

|05CDB2| SBC.b #$03

.dont_adjust_char
|05CDB4| INY

|05CDB5| STA.b ($90),Y

|05CDB7| LDA.w .flip,X
|05CDBA| ORA.b $05

|05CDBC| AND.b #$F1
|05CDBE| ORA.b #$08

|05CDC0| INY
|05CDC1| STA.b ($90),Y

|05CDC3| PLX

|05CDC4| PHY

|05CDC5| TYA
|05CDC6| LSR A
|05CDC7| LSR A
|05CDC8| TAY

|05CDC9| LDA.b $0F
|05CDCB| STA.b ($92),Y

|05CDCD| PLY
|05CDCE| INY

|05CDCF| DEX
|05CDD0| BPL .next_object

|05CDD2| PLX

|05CDD3| RTS

;===================================================================================================

MoveIfNoTileCollision:
|05CDD4| LDA.w $0E70,X
|05CDD7| BNE .exit

|05CDD9| JMP.w MoveSpriteXY_bank05

.exit
|05CDDC| RTS

;===================================================================================================

pool Sprite_48_RedJavelinGuard

.anim_step
|05CDDD| db $0C, $00, $12, $08

endpool

;---------------------------------------------------------------------------------------------------

Sprite_48_RedJavelinGuard:
|05CDE1| LDA.w $0DC0,X
|05CDE4| PHA

|05CDE5| LDY.w $0DE0,X
|05CDE8| PHY

|05CDE9| LDA.w $0E00,X
|05CDEC| BEQ .delay

|05CDEE| LDA.w SpriteDirections_bank05,Y
|05CDF1| STA.w $0DE0,X

|05CDF4| LDA.w .anim_step,Y
|05CDF7| STA.w $0DC0,X

.delay
|05CDFA| JSR SpriteDraw_RedJavelinGuard

|05CDFD| BRA ArcherAndJavelinGuardMain

;===================================================================================================

Sprite_46_BlueArcher:
|05CDFF| LDA.w $0DC0,X
|05CE02| PHA

|05CE03| LDY.w $0DE0,X
|05CE06| PHY

|05CE07| LDA.w $0E00,X
|05CE0A| BEQ .delay

|05CE0C| LDA.w SpriteDirections_bank05,Y
|05CE0F| STA.w $0DE0,X

|05CE12| LDA.w SpriteDrawSteps_bank05,Y
|05CE15| STA.w $0DC0,X

.delay
|05CE18| JSR SpriteDraw_ArcherGuard

;===================================================================================================

ArcherAndJavelinGuardMain:
|05CE1B| PLA
|05CE1C| STA.w $0DE0,X

|05CE1F| PLA
|05CE20| STA.w $0DC0,X

|05CE23| JSR CheckIfActive_bank05
|05CE26| JSR CheckDamageToAndFromLink_bank05
|05CE29| BCS .no_damage

|05CE2B| LDA.w $0FDC
|05CE2E| BEQ .continue

.no_damage
|05CE30| LDA.w $0D80,X
|05CE33| CMP.b #$03
|05CE35| BCS .continue

|05CE37| LDA.b #$03
|05CE39| STA.w $0D80,X

|05CE3C| LDA.b #$20
|05CE3E| STA.w $0DF0,X

.continue
|05CE41| LDA.w $0EA0,X
|05CE44| BEQ .not_recoiling

|05CE46| CMP.b #$04
|05CE48| BCC .not_recoiling

|05CE4A| JSR NoticeKouhaiWithoutHesitation

.not_recoiling
|05CE4D| JSR HandleSpriteRecoil_bank05
|05CE50| JSR MoveIfNoTileCollision
|05CE53| JSR CheckSpriteTileCollision_bank05

|05CE56| LDA.w $0D80,X

|05CE59| REP #$30

|05CE5B| AND.w #$00FF
|05CE5E| ASL A
|05CE5F| TAY

|05CE60| LDA.w .vectors,Y
|05CE63| DEC A
|05CE64| PHA

|05CE65| SEP #$30

|05CE67| RTS

;---------------------------------------------------------------------------------------------------

.vectors
|05CE68| dw Archer_Hiding
|05CE6A| dw Archer_Walking
|05CE6C| dw Archer_Scanning
|05CE6E| dw Archer_NoticeKouhai
|05CE70| dw Archer_Agitated
|05CE72| dw Archer_Attack

;===================================================================================================

Archer_Hiding:
|05CE74| JSR ZeroVelocityXY_bank05

|05CE77| LDA.w $0DF0,X
|05CE7A| BNE .exit

|05CE7C| INC.w $0D80,X

|05CE7F| JSL GetRandomNumber
|05CE83| AND.b #$7F
|05CE85| ADC.b #$50
|05CE87| STA.w $0DF0,X

|05CE8A| LDA.w $0DE0,X
|05CE8D| PHA

|05CE8E| JSL GetRandomNumber
|05CE92| AND.b #$03
|05CE94| STA.w $0DE0,X

|05CE97| PLA
|05CE98| CMP.w $0DE0,X
|05CE9B| BEQ .exit

|05CE9D| EOR.w $0DE0,X
|05CEA0| AND.b #$02
|05CEA2| BNE .exit

|05CEA4| LDA.b #$0C
|05CEA6| STA.w $0E00,X

.exit
|05CEA9| RTS

;===================================================================================================

Archer_Walking:
|05CEAA| LDA.w $0DF0,X
|05CEAD| BNE .delay

|05CEAF| LDA.b #$02
|05CEB1| STA.w $0D80,X

|05CEB4| LDA.b #$A0
|05CEB6| STA.w $0DF0,X

|05CEB9| RTS

.delay
|05CEBA| JSR Guard_SendOutProbe

|05CEBD| LDA.w $0E70,X
|05CEC0| AND.b #$0F
|05CEC2| BEQ .no_tile_collision

|05CEC4| LDA.w $0DE0,X
|05CEC7| EOR.b #$01
|05CEC9| STA.w $0DE0,X

|05CECC| JSR Set12FrameGlance

.no_tile_collision
|05CECF| LDY.w $0DE0,X

|05CED2| LDA.w GuardSpeeds_X,Y
|05CED5| STA.w $0D50,X

|05CED8| LDA.w GuardSpeeds_Y,Y
|05CEDB| STA.w $0D40,X

|05CEDE| TYA
|05CEDF| STA.w $0EB0,X

;===================================================================================================

AdvanceGlance:
|05CEE2| INC.w $0E80,X

|05CEE5| LDA.w $0E80,X
|05CEE8| AND.b #$0F
|05CEEA| BNE .dont_reset

|05CEEC| INC.w $0D90,X

|05CEEF| LDA.w $0D90,X
|05CEF2| CMP.b #$02
|05CEF4| BNE .dont_reset

|05CEF6| STZ.w $0D90,X

.dont_reset
|05CEF9| LDA.w $0DE0,X
|05CEFC| ASL A
|05CEFD| ASL A
|05CEFE| ADC.w $0D90,X

|05CF01| LDY.w $0E20,X
|05CF04| CPY.b #$48 ; SPRITE 48
|05CF06| BNE .not_red_java

|05CF08| CLC
|05CF09| ADC.b #$10

.not_red_java
|05CF0B| TAY

|05CF0C| LDA.w GuardBodySteps,Y
|05CF0F| STA.w $0DC0,X

|05CF12| RTS

;===================================================================================================

Archer_Scanning:
|05CF13| JSR ZeroVelocityXY_bank05
|05CF16| JSR Guard_SendOutProbe

|05CF19| LDA.w $0DF0,X
|05CF1C| BNE .delay

|05CF1E| LDA.b #$20
|05CF20| STA.w $0DF0,X

|05CF23| LDA.b #$00
|05CF25| STA.w $0D80,X

|05CF28| RTS

.delay
|05CF29| CMP.b #$80
|05CF2B| BCS .exit

|05CF2D| LSR A
|05CF2E| LSR A
|05CF2F| LSR A
|05CF30| AND.b #$07
|05CF32| STA.b $00

|05CF34| LDA.w $0DE0,X
|05CF37| ASL A
|05CF38| ASL A
|05CF39| ASL A
|05CF3A| ORA.b $00
|05CF3C| TAY

|05CF3D| LDA.w GlanceDirections,Y
|05CF40| STA.w $0EB0,X

.exit
|05CF43| RTS

;===================================================================================================

Archer_NoticeKouhai:
|05CF44| JSR ZeroVelocityXY_bank05
|05CF47| JSR GetDirectionTowardsLink_bank05

|05CF4A| TYA
|05CF4B| STA.w $0EB0,X

|05CF4E| LDA.w $0DF0,X
|05CF51| BNE .exit

;===================================================================================================

#NoticeKouhaiWithoutHesitation:
|05CF53| LDA.b #$04
|05CF55| STA.w $0D80,X

|05CF58| LDA.b #$3C
|05CF5A| STA.w $0DF0,X

|05CF5D| STZ.w $0E80,X

.exit
|05CF60| RTS

;===================================================================================================

pool Archer_Agitated

.offset_x_low
|05CF61| db -80,  80,   0,  -8
|05CF65| db -80,  80,  -8,   8

.offset_x_high
|05CF69| db  -1,   0,   0,  -1
|05CF6D| db  -1,   0,  -1,   0

.offset_y_low
|05CF71| db   8,   8, -80,  80
|05CF75| db   8,   8, -80,  80

.offset_y_high
|05CF79| db   0,   0,  -1,   0
|05CF7D| db   0,   0,  -1,   0

.masks
|05CF81| db $03, $03, $0C, $0C

endpool

;---------------------------------------------------------------------------------------------------

Archer_Agitated:
|05CF85| LDY.w $0DE0,X

|05CF88| LDA.w $0E70,X
|05CF8B| AND.w .masks,Y
|05CF8E| BNE .delay

|05CF90| LDA.w $0DF0,X
|05CF93| BNE .continue

.delay
|05CF95| INC.w $0D80,X

|05CF98| LDA.b #$18
|05CF9A| STA.w $0DF0,X

|05CF9D| RTS

.continue
|05CF9E| TXA
|05CF9F| EOR.b $1A
|05CFA1| AND.b #$07
|05CFA3| BNE .done

|05CFA5| JSR GetDirectionTowardsLink_bank05

|05CFA8| TYA
|05CFA9| STA.w $0DE0,X
|05CFAC| STA.w $0EB0,X

|05CFAF| LDA.w $0E20,X
|05CFB2| CMP.b #$48 ; SPRITE 48
|05CFB4| BNE .not_javelin

|05CFB6| INY
|05CFB7| INY
|05CFB8| INY
|05CFB9| INY

.not_javelin
|05CFBA| LDA.b $22
|05CFBC| CLC
|05CFBD| ADC.w .offset_x_low,Y
|05CFC0| STA.b $04

|05CFC2| LDA.b $23
|05CFC4| ADC.w .offset_x_high,Y
|05CFC7| STA.b $05

|05CFC9| LDA.b $20
|05CFCB| CLC
|05CFCC| ADC.w .offset_y_low,Y
|05CFCF| STA.b $06

|05CFD1| LDA.b $21
|05CFD3| ADC.w .offset_y_high,Y
|05CFD6| STA.b $07

|05CFD8| LDA.b #$18
|05CFDA| JSL ProjectSpriteSpeedTowardsLocation_long

|05CFDE| LDA.b $00
|05CFE0| STA.w $0D40,X

|05CFE3| LDA.b $01
|05CFE5| STA.w $0D50,X

|05CFE8| LDA.b $0E
|05CFEA| CLC
|05CFEB| ADC.b #$06
|05CFED| CMP.b #$0C
|05CFEF| BCS .done

|05CFF1| LDA.b $0F
|05CFF3| CLC
|05CFF4| ADC.b #$06
|05CFF6| CMP.b #$0C
|05CFF8| BCC .delay

;---------------------------------------------------------------------------------------------------

.done
|05CFFA| INC.w $0E80,X

|05CFFD| JSR AdvanceGlance

|05D000| RTS

;===================================================================================================

SomeGuardAnimStates:
|05D001| db $19, $19, $18, $18
|05D005| db $17, $17, $17, $17
|05D009| db $13, $13, $12, $12
|05D00D| db $11, $11, $11, $11
|05D011| db $10, $10, $0F, $0F
|05D015| db $0E, $0E, $0E, $0E
|05D019| db $16, $16, $15, $15
|05D01D| db $14, $14, $14, $14
|05D021| db $14, $14, $12, $12
|05D025| db $12, $10, $10, $10
|05D029| db $15, $15, $08, $08
|05D02D| db $08, $06, $06, $06
|05D031| db $16, $16, $04, $04
|05D035| db $04, $03, $03, $03
|05D039| db $17, $17, $0F, $0F
|05D03D| db $0F, $0B, $0B, $0B

;===================================================================================================

GlanceTimers:
|05D041| db 13, 13, 12, 12

;===================================================================================================

Archer_Attack:
|05D045| LDY.w $0DE0,X

|05D048| LDA.w GlanceTimers,Y
|05D04B| STA.w $0EC0,X

|05D04E| JSR ZeroVelocityXY_bank05

|05D051| LDA.w $0DF0,X
|05D054| BNE .delay

|05D056| JMP.w Guard_StopAndLookAround

.delay
|05D059| STZ.w $0E80,X

|05D05C| CMP.b #$28
|05D05E| BCC .normal_timer_speed

|05D060| DEC.w $0E80,X

.normal_timer_speed
|05D063| CMP.b #$0C
|05D065| BNE .dont_shoot

|05D067| PHA
|05D068| JSR Guard_LaunchProjectile
|05D06B| PLA

.dont_shoot
|05D06C| LSR A
|05D06D| LSR A
|05D06E| LSR A
|05D06F| STA.b $00

|05D071| LDA.w $0DE0,X
|05D074| ASL A
|05D075| ASL A
|05D076| ASL A
|05D077| ORA.b $00

|05D079| LDY.w $0E20,X
|05D07C| CPY.b #$48 ; SPRITE 48
|05D07E| BNE .not_javelin

|05D080| CLC
|05D081| ADC.b #$20

.not_javelin
|05D083| TAY

|05D084| LDA.w SomeGuardAnimStates,Y
|05D087| STA.w $0DC0,X

|05D08A| RTS

;===================================================================================================

pool Guard_LaunchProjectile

.offset_x_low
|05D08B| db  16,  -8,   3,  11
|05D08F| db  12,  -4,  12,  -4

.offset_x_high
|05D093| db   0,  -1,   0,   0
|05D097| db   0,  -1,   0,  -1

.offset_y_low
|05D09B| db   2,   2,  16,  -8
|05D09F| db  -2,  -2,   2,  -8

.offset_y_high
|05D0A3| db   0,   0,   0,  -1
|05D0A7| db  -1,  -1,   0,  -1

.speed_x ; bleeds into next
|05D0AB| db  48, -48,   0,   0,  32, -32

.speed_y
|05D0B1| db   0,   0,  48, -48,   0,   0,  32, -32
|05D0B9| db   3,   2,   1,   0,   3,   2,   1,   0

.hitbox
|05D0C1| db $05, $05
|05D0C3| db $06, $06

endpool

;-------------------------------------------------------------------------------]

Guard_LaunchProjectile:
|05D0C5| LDA.b #$1B ; SPRITE 1B
|05D0C7| JSL SpawnSpriteDynamically
|05D0CB| BMI .exit

|05D0CD| LDA.b #$05 ; SFX3.05
|05D0CF| JSL QueueSpriteSFX3WithPan

|05D0D3| PHX

|05D0D4| LDA.w $0E20,X
|05D0D7| CMP.b #$48 ; SPRITE 48

|05D0D9| LDA.w $0DE0,X
|05D0DC| BCC .not_javelin_a

|05D0DE| CLC
|05D0DF| ADC.b #$04

.not_javelin_a
|05D0E1| TAX

|05D0E2| LDA.b $00
|05D0E4| CLC
|05D0E5| ADC.w .offset_x_low,X
|05D0E8| STA.w $0D10,Y

|05D0EB| LDA.b $01
|05D0ED| ADC.w .offset_x_high,X
|05D0F0| STA.w $0D30,Y

|05D0F3| LDA.b $02
|05D0F5| CLC
|05D0F6| ADC.w .offset_y_low,X
|05D0F9| STA.w $0D00,Y

|05D0FC| LDA.b $03
|05D0FE| ADC.w .offset_y_high,X
|05D101| STA.w $0D20,Y

|05D104| LDA.w .speed_x,X
|05D107| STA.w $0D50,Y

|05D10A| LDA.w .speed_y,X
|05D10D| STA.w $0D40,Y

|05D110| TXA
|05D111| AND.b #$03
|05D113| STA.w $0DE0,Y

|05D116| TAX

|05D117| LDA.w .hitbox,X
|05D11A| STA.w $0F60,Y

|05D11D| LDA.b #$00
|05D11F| STA.w $0F70,Y

|05D122| PLX

|05D123| LDA.w $0E20,X
|05D126| CMP.b #$48 ; SPRITE 48

|05D128| LDA.b #$00
|05D12A| BCC .not_javelin_b

|05D12C| INC A

.not_javelin_b
|05D12D| STA.w $0D90,Y
|05D130| BEQ .exit

|05D132| LDA.l $7EF35A
|05D136| BNE .exit

|05D138| LDA.w $0BE0,Y
|05D13B| AND.b #$DF
|05D13D| STA.w $0BE0,Y

.exit
|05D140| RTS

;===================================================================================================

RedJavelinGuard_Animate:
|05D141| LDA.w $0DC0,X
|05D144| PHA

|05D145| STZ.w $0DC0,X

|05D148| LDA.w $0F50,X
|05D14B| PHA

|05D14C| AND.b #$F1
|05D14E| ORA.b #$02
|05D150| STA.w $0F50,X

|05D153| REP #$20

|05D155| LDA.w $0FDA
|05D158| PHA
|05D159| CLC
|05D15A| ADC.w #$0008
|05D15D| STA.w $0FDA

|05D160| SEP #$20

|05D162| JSL SpriteDraw_SingleLarge_long

|05D166| REP #$20

|05D168| PLA
|05D169| STA.w $0FDA

|05D16C| SEP #$20

|05D16E| PLA
|05D16F| STA.w $0F50,X

|05D172| PLA
|05D173| STA.w $0DC0,X

|05D176| JSR GetScreenCoordinates_bank05

|05D179| LDY.b #$10
|05D17B| JSR Guard_AnimateHead_PreserveOAMOffset

|05D17E| LDY.b #$0C
|05D180| JSR SpriteDraw_GuardBody

|05D183| LDA.w $0DC0,X
|05D186| CMP.b #$14
|05D188| BCS .use_shadow

|05D18A| LDY.b #$04
|05D18C| JSR SpriteDraw_GuardSpear_PreserveOAMOffset

.use_shadow
|05D18F| JMP.w DrawGuardShadow

;===================================================================================================

SpriteDraw_RedJavelinGuard:
|05D192| JSR GetScreenCoordinates_bank05

|05D195| LDY.b #$0C
|05D197| JSR SpriteDraw_GuardHead

|05D19A| LDY.b #$08
|05D19C| JSR SpriteDraw_GuardBody

|05D19F| LDA.w $0DC0,X
|05D1A2| CMP.b #$14
|05D1A4| BCS .use_shadow

|05D1A6| JSR SpriteDraw_GuardSpear_Fresh

.use_shadow
|05D1A9| JMP.w DrawGuardShadow

;===================================================================================================

Sprite_49_RedBushGuard:
|05D1AC| LDA.w $0D80,X
|05D1AF| BEQ .continue

|05D1B1| CMP.b #$02
|05D1B3| BNE .dont_animate

|05D1B5| JSR RedJavelinGuard_Animate
|05D1B8| BRA .continue

.dont_animate
|05D1BA| JSR SpriteDraw_BushGuardBush

.continue
|05D1BD| BRA BushGuard_Main

;===================================================================================================

Sprite_47_GreenBushGuard:
|05D1BF| LDA.w $0D80,X
|05D1C2| BEQ BushGuard_Main

|05D1C4| LDA.w $0DC0,X
|05D1C7| CMP.b #$0E
|05D1C9| BCC .not_firing_yet

|05D1CB| JSR SpriteDraw_ArcherGuard

|05D1CE| BRA BushGuard_Main

.not_firing_yet
|05D1D0| JSR SpriteDraw_BushGuardBush

;---------------------------------------------------------------------------------------------------

BushGuard_Main:
|05D1D3| JSR CheckIfActive_bank05

|05D1D6| LDA.b #$01
|05D1D8| STA.w $0BA0,X

|05D1DB| LDA.w $0D80,X

|05D1DE| REP #$30

|05D1E0| AND.w #$00FF
|05D1E3| ASL A
|05D1E4| TAY

|05D1E5| LDA.w .vectors,Y
|05D1E8| DEC A
|05D1E9| PHA

|05D1EA| SEP #$30

|05D1EC| RTS

;---------------------------------------------------------------------------------------------------

.vectors
|05D1ED| dw BushGuard_Hiding
|05D1EF| dw BushGuard_Emerging
|05D1F1| dw BushGuard_Shoot
|05D1F3| dw BushGuard_Retreating

;===================================================================================================

BushGuard_Hiding:
|05D1F5| LDA.w $0DF0,X
|05D1F8| BNE .exit

|05D1FA| INC.w $0D80,X

|05D1FD| LDA.b #$40
|05D1FF| STA.w $0DF0,X

.exit
|05D202| RTS

;===================================================================================================

pool BushGuard_Emerging

.anim_step
|05D203| db $04, $04, $04, $04, $04, $04, $04, $04
|05D20B| db $00, $01, $00, $01, $00, $01, $00, $01

|05D213| db $00, $01, $00, $01, $00, $01, $00, $01
|05D21B| db $00, $01, $00, $01, $00, $01, $00, $01

endpool

;---------------------------------------------------------------------------------------------------

BushGuard_Emerging:
|05D223| JSL CheckDamageFromLink_long

|05D227| LDA.w $0DF0,X
|05D22A| BNE .delay

|05D22C| INC.w $0D80,X

|05D22F| LDA.b #$30
|05D231| STA.w $0DF0,X

|05D234| JSR GetDirectionTowardsLink_bank05

|05D237| TYA
|05D238| STA.w $0DE0,X
|05D23B| STA.w $0EB0,X

|05D23E| RTS

.delay
|05D23F| CMP.b #$20
|05D241| BNE .dont_rustle

|05D243| PHA
|05D244| JSR BushGuard_SpawnFoliage
|05D247| PLA

.dont_rustle
|05D248| LSR A
|05D249| LSR A
|05D24A| TAY

|05D24B| LDA.w .anim_step,Y
|05D24E| STA.w $0DC0,X

|05D251| RTS

;===================================================================================================

BushGuard_SpawnFoliage:
|05D252| LDA.b #$EC ; SPRITE EC
|05D254| JSL SpawnSpriteDynamically
|05D258| BMI .exit

|05D25A| JSL SetSpawnedSpriteCoordinates

|05D25E| LDA.b #$06
|05D260| STA.w $0DD0,Y

|05D263| LDA.b #$20
|05D265| STA.w $0DF0,Y

|05D268| LDA.w $0E40,Y
|05D26B| CLC
|05D26C| ADC.b #$03
|05D26E| STA.w $0E40,Y

|05D271| LDA.b #$02
|05D273| STA.w $0DB0,Y

.exit
|05D276| RTS

;===================================================================================================

BushGuard_Shoot:
|05D277| STZ.w $0BA0,X

|05D27A| JSR CheckDamageToAndFromLink_bank05

|05D27D| LDA.w $0DF0,X
|05D280| BNE .delay

|05D282| INC.w $0D80,X

|05D285| LDA.b #$30
|05D287| STA.w $0DF0,X

|05D28A| BRA BushGuard_Retreating

.delay
|05D28C| STZ.w $0D90,X

|05D28F| CMP.b #$28
|05D291| BCS .dont_double_tick

|05D293| DEC.w $0D90,X

.dont_double_tick
|05D296| CMP.b #$10
|05D298| BNE .dont_shoot

|05D29A| PHA
|05D29B| JSR Guard_LaunchProjectile
|05D29E| PLA

.dont_shoot
|05D29F| LSR A
|05D2A0| LSR A
|05D2A1| LSR A
|05D2A2| STA.b $00

|05D2A4| LDA.w $0DE0,X
|05D2A7| ASL A
|05D2A8| ASL A
|05D2A9| ASL A
|05D2AA| ORA.b $00

|05D2AC| LDY.w $0E20,X
|05D2AF| CPY.b #$49 ; SPRITE 49
|05D2B1| BNE .not_red_bush_guard

|05D2B3| CLC
|05D2B4| ADC.b #$20

.not_red_bush_guard
|05D2B6| TAY

|05D2B7| LDA.w SomeGuardAnimStates,Y
|05D2BA| STA.w $0DC0,X

|05D2BD| RTS

;===================================================================================================

pool BushGuard_Retreating

.anim_step
|05D2BE| db $00, $01, $00, $01, $00, $01, $00, $01
|05D2C6| db $00, $02, $03, $04, $04, $04, $04, $04

endpool

;---------------------------------------------------------------------------------------------------

BushGuard_Retreating:
|05D2CE| JSR CheckDamageToAndFromLink_bank05

|05D2D1| LDA.w $0DF0,X
|05D2D4| BNE .delay

|05D2D6| STZ.w $0D80,X

|05D2D9| LDA.b #$40
|05D2DB| STA.w $0DF0,X

|05D2DE| RTS

.delay
|05D2DF| LSR A
|05D2E0| LSR A
|05D2E1| TAY

|05D2E2| LDA.w .anim_step,Y
|05D2E5| STA.w $0DC0,X

|05D2E8| RTS

;===================================================================================================

pool SpriteDraw_BushGuardBush

.offset_y
|05D2E9| dw   8,   8
|05D2ED| dw   8,   8
|05D2F1| dw   2,   8
|05D2F5| dw   0,   8
|05D2F9| dw  -3,   8
|05D2FD| dw  -3,   8
|05D301| dw  -3,   8

.char
|05D305| db $20, $20
|05D307| db $20, $20
|05D309| db $40, $20
|05D30B| db $40, $20
|05D30D| db $40, $20
|05D30F| db $42, $20
|05D311| db $42, $20

.prop
|05D313| db $09, $03
|05D315| db $49, $43
|05D317| db $09, $03
|05D319| db $49, $43
|05D31B| db $09, $03
|05D31D| db $49, $43
|05D31F| db $09, $03

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_BushGuardBush:
|05D321| JSR GetScreenCoordinates_bank05

|05D324| LDA.w $0DC0,X
|05D327| ASL A
|05D328| STA.b $06

|05D32A| PHX

|05D32B| LDX.b #$01

.next_object
|05D32D| PHX

|05D32E| TXA
|05D32F| CLC
|05D330| ADC.b $06
|05D332| PHA

|05D333| ASL A
|05D334| TAX

|05D335| REP #$20

|05D337| LDA.b $00
|05D339| STA.b ($90),Y

|05D33B| AND.w #$0100
|05D33E| STA.b $0E

|05D340| LDA.b $02
|05D342| CLC
|05D343| ADC.w .offset_y,X

|05D346| INY
|05D347| STA.b ($90),Y

|05D349| CLC
|05D34A| ADC.w #$0010
|05D34D| CMP.w #$0100
|05D350| BCC .on_screen

|05D352| LDA.w #$00F0
|05D355| STA.b ($90),Y

.on_screen
|05D357| SEP #$20

|05D359| PLX

|05D35A| LDA.w .char,X
|05D35D| INY
|05D35E| STA.b ($90),Y

|05D360| LDA.w .prop,X
|05D363| ORA.b #$20
|05D365| PLX
|05D366| BNE .dont_change_palette

|05D368| AND.b #$F1
|05D36A| ORA.b $05

.dont_change_palette
|05D36C| INY

|05D36D| STA.b ($90),Y

|05D36F| PHY

|05D370| TYA
|05D371| LSR A
|05D372| LSR A
|05D373| TAY

|05D374| LDA.b #$02
|05D376| ORA.b $0F
|05D378| STA.b ($92),Y

|05D37A| PLY
|05D37B| INY

|05D37C| DEX
|05D37D| BPL .next_object

|05D37F| PLX

|05D380| RTS

;===================================================================================================

pool SpriteDraw_ArcherGuard

.weapon
|05D381| db $00 ; right
|05D382| db $00 ; left
|05D383| db $00 ; down
                 ; up bleeds into below

.head
|05D384| db $10 ; right
|05D385| db $10 ; left
|05D386| db $10 ; down
|05D387| db $00 ; up

.body
|05D388| db $14 ; right
|05D389| db $14 ; left
|05D38A| db $14 ; down
|05D38B| db $04 ; up

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_ArcherGuard:
|05D38C| JSR GetScreenCoordinates_bank05

|05D38F| LDY.w $0DE0,X
|05D392| LDA.w .head,Y
|05D395| TAY
|05D396| JSR Guard_AnimateHead_PreserveOAMOffset

|05D399| LDY.w $0DE0,X
|05D39C| LDA.w .body,Y
|05D39F| TAY
|05D3A0| JSR Guard_AnimateBody_PreserveOAMOffset

|05D3A3| LDY.w $0DE0,X
|05D3A6| LDA.w .weapon,Y
|05D3A9| TAY
|05D3AA| JSR SpriteDraw_ArcherWeapon

|05D3AD| JMP.w DrawGuardShadow

;===================================================================================================

pool SpriteDraw_ArcherWeapon

.offset_x
|05D3B0| dw  -1,   7,   3,   3
|05D3B8| dw  -1,   7,   3,   3
|05D3C0| dw  -1,   7,   7,   7
|05D3C8| dw  -5,  -5, -10,  -2
|05D3D0| dw  -4,  -4,  -6,   2
|05D3D8| dw  -5,  -5,  -5,  -5
|05D3E0| dw   6,  14,  11,  11
|05D3E8| dw   6,  14,  11,  11
|05D3F0| dw   6,  14,  14,  14
|05D3F8| dw  11,  11,  18,  10
|05D400| dw  12,  12,  14,   6
|05D408| dw  11,  11,  11,  11

.offset_y
|05D410| dw   7,   7,   3,  11
|05D418| dw   6,   6,   1,   9
|05D420| dw   7,   7,   7,   7
|05D428| dw  -2,   6,   2,   2
|05D430| dw  -2,   6,   2,   2
|05D438| dw  -2,   6,   6,   6
|05D440| dw  -6,  -6, -12,  -4
|05D448| dw  -6,  -6,  -9,  -1
|05D450| dw  -6,  -6,  -6,  -6
|05D458| dw  -2,   6,   2,   2
|05D460| dw  -2,   6,   2,   2
|05D468| dw  -2,   6,   6,   6

.char
|05D470| db $0A, $0A, $2A, $2B
|05D474| db $1A, $1A, $2A, $2B
|05D478| db $0A, $0A, $0A, $0A
|05D47C| db $0B, $0B, $3D, $3A
|05D480| db $1B, $1B, $3D, $3A
|05D484| db $0B, $0B, $0B, $0B
|05D488| db $0A, $0A, $2B, $2A
|05D48C| db $0A, $0A, $2B, $2A
|05D490| db $0A, $0A, $0A, $0A
|05D494| db $0B, $0B, $3D, $3A
|05D498| db $1B, $1B, $3D, $3A
|05D49C| db $0B, $0B, $0B, $0B

.prop
|05D4A0| db $0D, $4D, $08, $08
|05D4A4| db $0D, $4D, $08, $08
|05D4A8| db $0D, $4D, $4D, $4D
|05D4AC| db $0D, $8D, $48, $48
|05D4B0| db $0D, $8D, $48, $48
|05D4B4| db $0D, $8D, $8D, $8D
|05D4B8| db $8D, $CD, $88, $88
|05D4BC| db $8D, $CD, $88, $88
|05D4C0| db $8D, $CD, $CD, $CD
|05D4C4| db $4D, $CD, $08, $08
|05D4C8| db $4D, $CD, $08, $08
|05D4CC| db $4D, $CD, $CD, $CD

.oam_offset
|05D4D0| db $09
|05D4D1| db $03
|05D4D2| db $00
|05D4D3| db $06

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_ArcherWeapon:
|05D4D4| LDA.w $0DC0,X
|05D4D7| SEC
|05D4D8| SBC.b #$0E
|05D4DA| BCS .skip_offset

|05D4DC| PHY

|05D4DD| LDY.w $0DE0,X
|05D4E0| LDA.w .oam_offset,Y

|05D4E3| PLY

.skip_offset
|05D4E4| ASL A
|05D4E5| ASL A
|05D4E6| STA.b $06

|05D4E8| PHX

|05D4E9| LDX.b #$03

.next_object
|05D4EB| PHX

|05D4EC| TXA
|05D4ED| CLC
|05D4EE| ADC.b $06
|05D4F0| PHA

|05D4F1| ASL A
|05D4F2| TAX

|05D4F3| REP #$20

|05D4F5| LDA.b $00
|05D4F7| CLC
|05D4F8| ADC.w .offset_x,X
|05D4FB| STA.b ($90),Y

|05D4FD| AND.w #$0100
|05D500| STA.b $0E

|05D502| LDA.b $02
|05D504| CLC
|05D505| ADC.w .offset_y,X

|05D508| INY
|05D509| STA.b ($90),Y

|05D50B| CLC
|05D50C| ADC.w #$0010
|05D50F| CMP.w #$0100
|05D512| BCC .on_screen

|05D514| LDA.w #$00F0
|05D517| STA.b ($90),Y

.on_screen
|05D519| SEP #$20

|05D51B| PLX

|05D51C| LDA.w .char,X
|05D51F| INY
|05D520| STA.b ($90),Y

|05D522| LDA.w .prop,X
|05D525| ORA.b #$20
|05D527| INY
|05D528| STA.b ($90),Y

|05D52A| PHY

|05D52B| TYA
|05D52C| LSR A
|05D52D| LSR A
|05D52E| TAY

|05D52F| LDA.b $0F
|05D531| STA.b ($92),Y

|05D533| PLY
|05D534| INY

|05D535| PLX
|05D536| DEX
|05D537| BPL .next_object

|05D539| PLX

|05D53A| RTS

;===================================================================================================
; [DUMB] I hate this.
;===================================================================================================
TutorialGuardOrBarrier:
|05D53B| PHB
|05D53C| PHK
|05D53D| PLB

|05D53E| JSR GuardOrBarrierTest

|05D541| PLB

|05D542| RTL

;===================================================================================================

BarrierBounce:
|05D543| JSL Sprite_40_LightningGate

|05D547| RTS

;===================================================================================================

pool Sprite_3F_TutorialGuard

.anim_step
|05D548| db $02, $01, $00, $03

endpool

;===================================================================================================

GuardOrBarrierTest:
|05D54C| LDA.w $0E20,X
|05D54F| CMP.b #$40 ; SPRITE 40
|05D551| BEQ BarrierBounce

;===================================================================================================

Sprite_3F_TutorialGuard:
|05D553| LDY.w $0DE0,X

|05D556| PHY

|05D557| LDA.w $0E00,X
|05D55A| BEQ .dont_turn

|05D55C| LDA.w SpriteDirections_bank05,Y
|05D55F| STA.w $0DE0,X

.dont_turn
|05D562| LDY.w $0DE0,X

|05D565| LDA.w .anim_step,Y
|05D568| STA.w $0DC0,X

|05D56B| JSR SpriteDraw_TutorialGuard

|05D56E| PLA
|05D56F| STA.w $0DE0,X

|05D572| JSR CheckIfActive_bank05
|05D575| JSL CheckDamageFromLink_long

|05D579| LDA.w $040A
|05D57C| CMP.b #$1B ; OW 1B
|05D57E| BNE .use_default_messages

|05D580| LDA.b #$B0 ; MESSAGE 00B0

; [HARDCODED] position check
|05D582| LDY.w $0D00,X
|05D585| CPY.b #$50
|05D587| BEQ .soldier_on_walls

|05D589| LDA.b #$B1 ; MESSAGE 00B1
|05D58B| CPY.b #$90
|05D58D| BNE .use_default_messages

.soldier_on_walls
|05D58F| LDY.b #$00
|05D591| JSL TutorialGuard_ShowMessageOnContact
|05D595| BRA .continue

.use_default_messages

|05D597| LDA.w $0B69
|05D59A| PHA

; This all accounts for:
; MESSAGE 000D
; MESSAGE 000E
; MESSAGE 000F
; MESSAGE 0010
; MESSAGE 0011
; MESSAGE 0012
; MESSAGE 0013
|05D59B| CLC
|05D59C| ADC.b #$0D

|05D59E| LDY.b #$00
|05D5A0| JSL TutorialGuard_ShowMessageOnContact

|05D5A4| PLA
|05D5A5| BCC .set_message

|05D5A7| INC A
|05D5A8| CMP.b #$07
|05D5AA| BNE .set_message

|05D5AC| LDA.b #$00

.set_message
|05D5AE| STA.w $0B69

.continue
|05D5B1| JSR CheckDamageToAndFromLink_bank05

|05D5B4| TXA
|05D5B5| EOR.b $1A
|05D5B7| AND.b #$1F
|05D5B9| BNE .exit

|05D5BB| JSR CannonGuard_FaceLink

.exit
|05D5BE| RTS

;===================================================================================================

pool SpriteDraw_TutorialGuard

.offset_x
|05D5BF| dw   4,   0,  -6,  -6,   2
|05D5C9| dw   0,   0,  -7,  -7,  -7
|05D5D3| dw   0,   0,  15,  15,  15
|05D5DD| dw   6,  14,  -4,   4,   0

.offset_y
|05D5E7| dw   0, -10,  -4,  12,  12
|05D5F1| dw   0,  -9, -11,  -3,   5
|05D5FB| dw   0,  -9, -11,  -3,   5
|05D605| dw -11,   5,   0,   0,  -9

.char
|05D60F| db $46, $40, $00, $28, $29
|05D614| db $4E, $42, $39, $2A, $3A
|05D619| db $4E, $42, $39, $2A, $3A
|05D61E| db $26, $38, $64, $64, $44

.flip
|05D623| db $40, $00, $00, $00, $00
|05D628| db $00, $00, $00, $00, $00
|05D62D| db $40, $40, $40, $40, $40
|05D632| db $00, $40, $00, $40, $00

.size
|05D637| db $02, $02, $02, $00, $00
|05D63C| db $02, $02, $00, $00, $00
|05D641| db $02, $02, $00, $00, $00
|05D646| db $02, $00, $02, $02, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_TutorialGuard:
|05D64B| JSR GetScreenCoordinates_bank05

|05D64E| LDA.w $0DC0,X
|05D651| ASL A
|05D652| ASL A
|05D653| ADC.w $0DC0,X
|05D656| STA.b $06

|05D658| PHX

|05D659| LDX.b #$04

.next_object
|05D65B| PHX

|05D65C| TXA
|05D65D| CLC
|05D65E| ADC.b $06
|05D660| PHA

|05D661| ASL A
|05D662| TAX

|05D663| REP #$20

|05D665| LDA.w .offset_x,X
|05D668| CLC
|05D669| ADC.b $00
|05D66B| STA.b ($90),Y

|05D66D| AND.w #$0100
|05D670| STA.b $0E

|05D672| LDA.w .offset_y,X
|05D675| CLC
|05D676| ADC.b $02

|05D678| INY
|05D679| STA.b ($90),Y

|05D67B| CLC
|05D67C| ADC.w #$0010
|05D67F| CMP.w #$0100
|05D682| BCC .on_screen

|05D684| LDA.w #$00F0
|05D687| STA.b ($90),Y

.on_screen
|05D689| SEP #$20

|05D68B| PLX

|05D68C| LDA.w .char,X
|05D68F| INY
|05D690| STA.b ($90),Y

|05D692| CMP.b #$40
|05D694| LDA.w .flip,X

|05D697| ORA.b $05
|05D699| BCS .keep_palette

|05D69B| AND.b #$F1
|05D69D| ORA.b #$08

.keep_palette
|05D69F| INY
|05D6A0| STA.b ($90),Y

|05D6A2| PHY

|05D6A3| TYA
|05D6A4| LSR A
|05D6A5| LSR A
|05D6A6| TAY

|05D6A7| LDA.w .size,X
|05D6AA| ORA.b $0F
|05D6AC| STA.b ($92),Y

|05D6AE| PLY
|05D6AF| INY

|05D6B0| PLX
|05D6B1| DEX
|05D6B2| BPL .next_object

|05D6B4| PLX

|05D6B5| LDA.b #$0C
|05D6B7| JSL DrawSpriteShadow_custom_long

|05D6BB| RTS

;===================================================================================================

Sprite_04_PullSwitch:
Sprite_05_PullSwitch:
Sprite_06_PullSwitch:
Sprite_07_PullSwitch:
PullSwitch:
|05D6BC| PHB
|05D6BD| PHK
|05D6BE| PLB

|05D6BF| LDA.w $0E20,X
|05D6C2| CMP.b #$07 ; SPRITE 07
|05D6C4| BEQ .facing_up

|05D6C6| CMP.b #$05 ; SPRITE 05
|05D6C8| BNE .facing_down

.facing_up
|05D6CA| JSR PullSwitch_FacingUp

|05D6CD| PLB

|05D6CE| RTL

.facing_down
|05D6CF| JSR PullSwitch_FacingDown

|05D6D2| PLB

|05D6D3| RTL

;===================================================================================================

PullSwitch_FacingUp:
|05D6D4| JSR PullSwitch_HandleUpPulling

|05D6D7| LDY.w $0DC0,X
|05D6DA| BEQ .continue

|05D6DC| CPY.b #$0B
|05D6DE| BEQ .continue

|05D6E0| LDA.w PullSwitch_LinkAnimState,Y
|05D6E3| STA.w $0377

|05D6E6| LDA.w $0D00,X
|05D6E9| SEC
|05D6EA| SBC.b #$13
|05D6EC| STA.b $20

|05D6EE| LDA.w $0D20,X
|05D6F1| SBC.b #$00
|05D6F3| STA.b $21

|05D6F5| LDA.w $0D10,X
|05D6F8| STA.b $22

|05D6FA| LDA.w $0D30,X
|05D6FD| STA.b $23

|05D6FF| LDA.w $0DF0,X
|05D702| BNE .continue

|05D704| INC.w $0DC0,X

|05D707| LDY.w $0DC0,X
|05D70A| CPY.b #$0B
|05D70C| BNE .skip_sfx

|05D70E| LDA.b #$1B ; SFX3.1B
|05D710| STA.w $012F

|05D713| LDA.b #$01
|05D715| STA.w $0642

.skip_sfx
|05D718| LDA.w PullSwitch_Timers-2,Y
|05D71B| STA.w $0DF0,X

|05D71E| BRA .continue ; useless

.continue
|05D720| LDA.w $0E20,X
|05D723| CMP.b #$07 ; SPRITE 07
|05D725| BEQ .wrong_switch

|05D727| JSR SpriteDraw_PullSwitch_Good_Up

|05D72A| RTS

.wrong_switch
|05D72B| JSR SpriteDraw_PullSwitch_Bad_Up

|05D72E| RTS

;===================================================================================================

PullSwitch_Timers:
|05D72F| db   8,  24,   4,   4
|05D733| db   4,   4,   4,   4
|05D737| db   2

;===================================================================================================

PullSwitch_LinkAnimState:
|05D738| db $0A, $06, $07, $08
|05D73C| db $08, $08, $08, $08
|05D740| db $09, $09, $09

;===================================================================================================

PullSwitch_HandleUpPulling:
|05D743| JSL CheckDamageToLink_same_layer_long
|05D747| BCC .exit

|05D749| STZ.b $27
|05D74B| STZ.b $28

|05D74D| JSL RepelDash_long

|05D751| STZ.b $48

|05D753| LDA.w $0020
|05D756| SEC
|05D757| SBC.w $0D00,X
|05D75A| CMP.b #$02
|05D75C| BPL .snap_link_down

|05D75E| CMP.b #$F4
|05D760| BMI .check_for_press

|05D762| LDA.w $0022
|05D765| CMP.w $0D10,X
|05D768| BPL .snap_link_right

.snap_link_left
|05D76A| LDA.w $0D10,X
|05D76D| SEC
|05D76E| SBC.b #$10
|05D770| STA.b $22

|05D772| LDA.w $0D30,X
|05D775| SBC.b #$00
|05D777| STA.b $23

|05D779| RTS

.snap_link_right
|05D77A| LDA.w $0D10,X
|05D77D| CLC
|05D77E| ADC.b #$0E
|05D780| STA.b $22

|05D782| LDA.w $0D30,X
|05D785| ADC.b #$00
|05D787| STA.b $23

.exit
|05D789| RTS

;---------------------------------------------------------------------------------------------------

.check_for_press
|05D78A| INC.w $0379

|05D78D| LDA.b $F2
|05D78F| BPL .snap_link_up

|05D791| LDA.b $F0
|05D793| AND.b #$03
|05D795| BNE .snap_link_up

|05D797| LDA.w $0DC0,X
|05D79A| BNE .snap_link_up

|05D79C| INC.w $0DC0,X

|05D79F| LDA.b #$08
|05D7A1| STA.w $0DF0,X

|05D7A4| LDA.b #$22 ; SFX2.22
|05D7A6| JSL QueueSpriteSFX2WithPan

.snap_link_up
|05D7AA| LDA.w $0D00,X
|05D7AD| SEC
|05D7AE| SBC.b #$15
|05D7B0| STA.b $20

|05D7B2| LDA.w $0D20,X
|05D7B5| SBC.b #$00
|05D7B7| STA.b $21

|05D7B9| RTS

.snap_link_down
|05D7BA| LDA.w $0D00,X
|05D7BD| CLC
|05D7BE| ADC.b #$09
|05D7C0| STA.b $20

|05D7C2| LDA.w $0D20,X
|05D7C5| ADC.b #$00
|05D7C7| STA.b $21

|05D7C9| RTS

;===================================================================================================

pool SpriteDraw_PullSwitch_Good_Up

.offset_x
|05D7CA| db  -4,  12,   0,  -4,   4,   4

.offset_y
|05D7D0| db  -3,  -3,   0,   5,   5,   5

.char
|05D7D6| db $D2, $D2, $C4, $E4, $E4, $E4

.flip ; bleeds into next I think?
|05D7DC| db $40, $00, $00, $40

.size
|05D7E0| db $00, $00, $02, $02, $02, $02

endpool

;===================================================================================================

DrawPullSwitch_pull_distance:
|05D7E6| db $00, $01, $02, $03, $04, $05, $05

;===================================================================================================

DrawPullSwitch_data_index:
|05D7ED| db $00, $00, $01, $01
|05D7F1| db $02, $02, $03, $03
|05D7F5| db $04, $05, $05, $05

;===================================================================================================

SpriteDraw_PullSwitch_Good_Up:
|05D7F9| JSR GetScreenCoordinates_bank05
|05D7FC| JSL AllocateOAMDeferToPlayer_long

|05D800| LDY.w $0DC0,X

|05D803| LDA.w DrawPullSwitch_data_index,Y
|05D806| TAY

|05D807| LDA.w DrawPullSwitch_pull_distance,Y
|05D80A| STA.b $06

|05D80C| PHX

|05D80D| LDX.b #$04
|05D80F| LDY.b #$00

.next_object
|05D811| LDA.b $00
|05D813| CLC
|05D814| ADC.w .offset_x,X
|05D817| STA.b ($90),Y

|05D819| LDA.b $02
|05D81B| CLC
|05D81C| ADC.w .offset_y,X

|05D81F| INY
|05D820| STA.b ($90),Y

|05D822| LDA.w .char,X
|05D825| INY
|05D826| STA.b ($90),Y

|05D828| LDA.w .flip,X
|05D82B| ORA.b #$21
|05D82D| INY
|05D82E| STA.b ($90),Y

|05D830| PHY

|05D831| CPX.b #$02
|05D833| BNE .skip

|05D835| DEY
|05D836| DEY

|05D837| LDA.b ($90),Y
|05D839| SEC
|05D83A| SBC.b $06
|05D83C| STA.b ($90),Y

.skip
|05D83E| TYA
|05D83F| LSR A
|05D840| LSR A
|05D841| TAY

|05D842| LDA.w .size,X
|05D845| STA.b ($92),Y

|05D847| PLY
|05D848| INY

|05D849| DEX
|05D84A| BPL .next_object

|05D84C| PLX

|05D84D| LDY.b #$FF
|05D84F| LDA.b #$04
|05D851| JSL CorrectOAMEntries_long

|05D855| RTS

;===================================================================================================

pool SpriteDraw_PullSwitch_Bad_Up

.char
|05D856| db $A2, $A4

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_PullSwitch_Bad_Up:
|05D858| JSR GetScreenCoordinates_bank05
|05D85B| JSL AllocateOAMDeferToPlayer_long

|05D85F| LDY.w $0DC0,X

|05D862| LDA.w DrawPullSwitch_data_index,Y
|05D865| TAY

|05D866| LDA.w DrawPullSwitch_pull_distance,Y
|05D869| STA.b $06
|05D86B| STZ.b $07

|05D86D| PHX

|05D86E| LDX.b #$01
|05D870| LDY.b #$00

.next_object
|05D872| REP #$20

|05D874| LDA.b $00
|05D876| STA.b ($90),Y

|05D878| AND.w #$0100
|05D87B| STA.b $0E

|05D87D| LDA.b $02

|05D87F| CPX.b #$00
|05D881| BNE .skip

|05D883| SEC
|05D884| SBC.b $06

.skip
|05D886| INY
|05D887| STA.b ($90),Y

|05D889| CLC
|05D88A| ADC.w #$0010
|05D88D| CMP.w #$0100

|05D890| SEP #$20
|05D892| BCC .on_screen

|05D894| LDA.b #$F0
|05D896| STA.b ($90),Y

.on_screen
|05D898| LDA.w .char,X
|05D89B| INY
|05D89C| STA.b ($90),Y

|05D89E| LDA.b $05
|05D8A0| INY
|05D8A1| STA.b ($90),Y

|05D8A3| PHY

|05D8A4| TYA
|05D8A5| LSR A
|05D8A6| LSR A
|05D8A7| TAY

|05D8A8| LDA.b #$02
|05D8AA| ORA.b $0F
|05D8AC| STA.b ($92),Y

|05D8AE| PLY
|05D8AF| INY

|05D8B0| DEX
|05D8B1| BPL .next_object

|05D8B3| PLX

|05D8B4| RTS

;===================================================================================================

PullSwitch_FacingDown:
|05D8B5| JSR PullSwitch_HandleDownPulling
|05D8B8| LDY.w $0DC0,X
|05D8BB| BEQ .continue

|05D8BD| CPY.b #$0D
|05D8BF| BEQ .continue

|05D8C1| LDA.w .grab_anim_state,Y
|05D8C4| STA.w $0377

|05D8C7| LDA.w $0D00,X
|05D8CA| CLC
|05D8CB| ADC.w .snap_offset_y,Y
|05D8CE| STA.b $20

|05D8D0| LDA.w $0D20,X
|05D8D3| ADC.b #$00
|05D8D5| STA.b $21

|05D8D7| LDA.w $0D10,X
|05D8DA| STA.b $22

|05D8DC| LDA.w $0D30,X
|05D8DF| STA.b $23

|05D8E1| LDA.w $0DF0,X
|05D8E4| BNE .continue

|05D8E6| INC.w $0DC0,X

|05D8E9| LDY.w $0DC0,X
|05D8EC| CPY.b #$0D
|05D8EE| BNE .adjust_timer

|05D8F0| LDA.w $0E20,X
|05D8F3| CMP.b #$06 ; SPRITE 06
|05D8F5| BNE .good_switch

|05D8F7| LDA.b #$01
|05D8F9| STA.w $0CF4

|05D8FC| LDA.b #$3C ; SFX2.3C
|05D8FE| STA.w $012E

|05D901| BRA .adjust_timer

;---------------------------------------------------------------------------------------------------

.good_switch
|05D903| LDA.b #$01
|05D905| STA.w $0642

|05D908| LDA.b #$1B ; SFX3.1B
|05D90A| STA.w $012F

.adjust_timer
|05D90D| LDA.w .timers-2,Y
|05D910| STA.w $0DF0,X

|05D913| BRA .continue ; useless

;---------------------------------------------------------------------------------------------------

.continue
|05D915| JSR SpriteDraw_PullSwitch_Down

|05D918| LDA.w $0F00,X
|05D91B| BEQ .exit

|05D91D| STZ.w $0DC0,X

.exit
|05D920| RTS

;---------------------------------------------------------------------------------------------------

.timers
|05D921| db   5,   5,   5,   5
|05D925| db   5,   5,   5,   5
|05D929| db   5,   5,   5

.grab_anim_state
|05D92C| db $05, $01, $01, $02
|05D930| db $02, $03, $03, $01
|05D934| db $01, $04, $04, $05

.snap_offset_y
|05D938| db   5,   9,   9,  10
|05D93C| db  10,  11,  11,  12
|05D940| db  12,  13,  13,  14
|05D944| db  14

;===================================================================================================

pool SpriteDraw_PullSwitch_Down

.pull_distance
|05D945| db $01, $01, $02, $03
|05D949| db $02, $03, $04, $05
|05D94D| db $06, $07, $06, $07
|05D951| db $07, $07

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_PullSwitch_Down:
|05D953| JSR GetScreenCoordinates_bank05
|05D956| JSL AllocateOAMDeferToPlayer_long

|05D95A| LDY.w $0DC0,X

|05D95D| LDA.w .pull_distance,Y
|05D960| STA.b $06

|05D962| LDY.b #$04

|05D964| LDA.b $00
|05D966| STA.b ($90),Y

|05D968| LDY.b #$00
|05D96A| STA.b ($90),Y

|05D96C| LDA.b $02
|05D96E| DEC A
|05D96F| LDY.b #$01
|05D971| STA.b ($90),Y

|05D973| CLC
|05D974| ADC.b $06
|05D976| LDY.b #$05
|05D978| STA.b ($90),Y

|05D97A| LDA.b #$CE
|05D97C| LDY.b #$06
|05D97E| STA.b ($90),Y

|05D980| LDA.b #$EE
|05D982| LDY.b #$02
|05D984| STA.b ($90),Y

|05D986| LDA.b $05
|05D988| LDY.b #$03
|05D98A| STA.b ($90),Y

|05D98C| LDY.b #$07
|05D98E| STA.b ($90),Y

|05D990| LDY.b #$02
|05D992| LDA.b #$01
|05D994| JSL CorrectOAMEntries_long

|05D998| RTS

;===================================================================================================

PullSwitch_HandleDownPulling:
|05D999| JSL CheckDamageToLink_same_layer_long
|05D99D| BCC .exit

|05D99F| STZ.b $27
|05D9A1| STZ.b $28

|05D9A3| JSL RepelDash_long

|05D9A7| STZ.b $48

|05D9A9| LDA.w $0020
|05D9AC| SEC
|05D9AD| SBC.w $0D00,X
|05D9B0| CMP.b #$02
|05D9B2| BPL .check_input

|05D9B4| CMP.b #$F4
|05D9B6| BMI .snap_link_up

|05D9B8| LDA.w $0022
|05D9BB| CMP.w $0D10,X
|05D9BE| BPL .snap_link_right

|05D9C0| LDA.w $0D10,X
|05D9C3| SEC
|05D9C4| SBC.b #$10
|05D9C6| STA.b $22

|05D9C8| LDA.w $0D30,X
|05D9CB| SBC.b #$00
|05D9CD| STA.b $23

.exit
|05D9CF| RTS

;---------------------------------------------------------------------------------------------------

.snap_link_right
|05D9D0| LDA.w $0D10,X
|05D9D3| CLC
|05D9D4| ADC.b #$0E
|05D9D6| STA.b $22

|05D9D8| LDA.w $0D30,X
|05D9DB| ADC.b #$00
|05D9DD| STA.b $23

|05D9DF| RTS

;---------------------------------------------------------------------------------------------------

.snap_link_up
|05D9E0| LDA.w $0D00,X
|05D9E3| SEC
|05D9E4| SBC.b #$15
|05D9E6| STA.b $20

|05D9E8| LDA.w $0D20,X
|05D9EB| SBC.b #$00
|05D9ED| STA.b $21

|05D9EF| RTS

;---------------------------------------------------------------------------------------------------

.check_input
|05D9F0| INC.w $0379

|05D9F3| LDA.b $F2
|05D9F5| BPL .no_pull

|05D9F7| LDA.b $F0
|05D9F9| AND.b #$03
|05D9FB| BNE .no_pull

|05D9FD| INC.w $0377

|05DA00| LDA.b $F0
|05DA02| AND.b #$04
|05DA04| BEQ .no_pull

|05DA06| LDA.w $0DC0,X
|05DA09| BNE .no_pull

|05DA0B| INC.w $0DC0,X

|05DA0E| LDA.b #$0C
|05DA10| STA.w $0DF0,X

|05DA13| LDA.b #$22 ; SFX2.22
|05DA15| JSL QueueSpriteSFX2WithPan

;---------------------------------------------------------------------------------------------------

.no_pull
|05DA19| LDA.w $0D00,X
|05DA1C| CLC
|05DA1D| ADC.b #$09
|05DA1F| STA.b $20

|05DA21| LDA.w $0D20,X
|05DA24| ADC.b #$00
|05DA26| STA.b $21

|05DA28| RTS

;===================================================================================================

SpritePrep_UncleAndPriest:
|05DA29| PHB
|05DA2A| PHK
|05DA2B| PLB

|05DA2C| JSR UncleOrPriestPrepCheck

|05DA2F| PLB

|05DA30| RTL

;===================================================================================================

pool SpritePrep_Priest

.offset_x
|05DA31| dw -6, -6, -6

.offset_y
|05DA37| dw  0, -9,  0

endpool

;===================================================================================================

UncleOrPriestPrepCheck:
|05DA3D| LDA.b $A0
|05DA3F| CMP.b #$12 ; ROOM 0012
|05DA41| BEQ SpritePrep_Priest

|05DA43| JMP.w SpritePrep_Uncle

;===================================================================================================

SpritePrep_Priest:
|05DA46| JSR Priest_SpawnMantle

|05DA49| LDA.l $7EF3C5
|05DA4D| CMP.b #$03
|05DA4F| BCC .aga_not_defeated

|05DA51| LDA.l $7EF3C6
|05DA55| ORA.b #$02
|05DA57| STA.l $7EF3C6

.aga_not_defeated
|05DA5B| LDA.l $7EF3C6
|05DA5F| AND.b #$02
|05DA61| BEQ .alive_and_well

|05DA63| STZ.w $0DD0,X

|05DA66| RTS

;---------------------------------------------------------------------------------------------------

.alive_and_well
|05DA67| LDA.b #$01
|05DA69| STA.w $0E90,X

|05DA6C| LDA.w $0E40,X
|05DA6F| AND.b #$F0
|05DA71| ORA.b #$02
|05DA73| STA.w $0E40,X

|05DA76| LDA.b #$03
|05DA78| STA.w $0F60,X

|05DA7B| LDA.l $7EF359
|05DA7F| CMP.b #$02
|05DA81| BCC .no_master_sword

|05DA83| LDA.b #$04
|05DA85| STA.w $0DE0,X

|05DA88| STZ.w $0DC0,X

|05DA8B| LDA.b #$00
|05DA8D| BRA .continue

;---------------------------------------------------------------------------------------------------

.no_master_sword
|05DA8F| JSR GetDirectionTowardsLink_bank05

|05DA92| TYA
|05DA93| EOR.b #$03
|05DA95| STA.w $0EB0,X
|05DA98| STA.w $0DE0,X

|05DA9B| LDA.l $7EF3CC
|05DA9F| CMP.b #$01 ; FOLLOWER 01
|05DAA1| BNE .dont_have_zelda

|05DAA3| LDA.l $7EF3C6
|05DAA7| ORA.b #$04
|05DAA9| STA.l $7EF3C6

; Hyrule Castle overlay
|05DAAD| LDA.l $7EF29B
|05DAB1| ORA.b #$20
|05DAB3| STA.l $7EF29B

|05DAB7| LDA.b #$AA
|05DAB9| STA.w $0DF0,X

|05DABC| LDA.b #$01
|05DABE| BRA .continue

.dont_have_zelda
|05DAC0| LDA.b #$02

;---------------------------------------------------------------------------------------------------

.continue
|05DAC2| STA.w $0E80,X
|05DAC5| ASL A
|05DAC6| TAY

|05DAC7| LDA.w .offset_x+0,Y
|05DACA| CLC
|05DACB| ADC.w $0D10,X
|05DACE| STA.w $0D10,X

|05DAD1| LDA.w .offset_x+1,Y
|05DAD4| ADC.w $0D30,X
|05DAD7| STA.w $0D30,X

|05DADA| LDA.w .offset_y+0,Y
|05DADD| CLC
|05DADE| ADC.w $0D00,X
|05DAE1| STA.w $0D00,X

|05DAE4| LDA.w .offset_y+1,Y
|05DAE7| ADC.w $0D20,X
|05DAEA| STA.w $0D20,X

|05DAED| INC.w $0BA0,X

; Zelda dialog counter
|05DAF0| LDA.b #$00
|05DAF2| STA.l $7FFE01

|05DAF6| RTS

;===================================================================================================

SpritePrep_Uncle:
|05DAF7| CMP.b #$04 ; ROOM 0104
|05DAF9| BNE .not_house

|05DAFB| LDA.l $7EF3C6
|05DAFF| AND.b #$10
|05DB01| BNE .kill_your_uncle

|05DB03| LDA.w $0D10,X
|05DB06| CLC
|05DB07| ADC.b #$08
|05DB09| STA.w $0D10,X

|05DB0C| RTS

.not_house
|05DB0D| LDA.l $7EF3C6
|05DB11| AND.b #$01
|05DB13| BNE .kill_your_uncle

|05DB15| LDA.b #$03
|05DB17| STA.w $0DE0,X

|05DB1A| LSR A
|05DB1B| STA.w $0E80,X

|05DB1E| RTS

;---------------------------------------------------------------------------------------------------

.kill_your_uncle
|05DB1F| STZ.w $0DD0,X

|05DB22| RTS

;===================================================================================================

pool Priest_SpawnMantle

.mantle_position_x_low
|05DB23| db $F0

.mantle_position_x_high
|05DB24| db $04

.mantle_position_y_low
|05DB25| db $37

.mantle_position_y_high
|05DB26| db $02

endpool

;---------------------------------------------------------------------------------------------------

Priest_SpawnMantle:
; [WTF] Is this forcing this sprite to exist and then killing it?
|05DB27| INC.w $0DDF

; Why not use the slot limited version of the routine?
|05DB2A| LDA.b #$73 ; SPRITE 73
|05DB2C| JSL SpawnSpriteDynamically

|05DB30| STZ.w $0DDF

|05DB33| LDA.w $0E40,Y
|05DB36| AND.b #$F0
|05DB38| ORA.b #$03
|05DB3A| STA.w $0E40,Y

|05DB3D| LDA.w .mantle_position_x_low
|05DB40| STA.w $0D10,Y

|05DB43| LDA.w .mantle_position_x_high
|05DB46| STA.w $0D30,Y

|05DB49| LDA.w .mantle_position_y_low
|05DB4C| STA.w $0D00,Y

|05DB4F| LDA.w .mantle_position_y_high
|05DB52| STA.w $0D20,Y

|05DB55| LDA.b #$02
|05DB57| STA.w $0E90,Y

|05DB5A| LDA.b #$0B
|05DB5C| STA.w $0F60,Y

|05DB5F| LDA.w $0CAA,Y
|05DB62| ORA.b #$20
|05DB64| STA.w $0CAA,Y

|05DB67| LDA.b #$01
|05DB69| STA.w $0E80,Y

|05DB6C| LDA.w $0D00,Y
|05DB6F| STA.b $00

|05DB71| LDA.w $0D20,Y
|05DB74| STA.b $01

|05DB76| REP #$30

|05DB78| LDA.b $20
|05DB7A| CMP.b $00

|05DB7C| SEP #$30
|05DB7E| BCS .exit

|05DB80| LDA.b #$01
|05DB82| STA.w $0DB0,Y

.exit
|05DB85| RTS

;===================================================================================================

Sprite_73_UncleAndPriest:
|05DB86| PHB
|05DB87| PHK
|05DB88| PLB

|05DB89| JSR .main

|05DB8C| PLB

|05DB8D| RTL

;---------------------------------------------------------------------------------------------------

.main
|05DB8E| LDA.w $0E90,X
|05DB91| JSL JumpTableLocal
|05DB95| dw Uncle
|05DB97| dw Priest
|05DB99| dw SanctuaryMantle

;===================================================================================================

SanctuaryMantle:
|05DB9B| JSR SpriteDraw_SanctuaryMantle
|05DB9E| JSR CheckIfActive_bank05

|05DBA1| LDA.w $0DB0,X
|05DBA4| BNE SanctuaryMantle_SlidingOpen

|05DBA6| JSL CheckDamageToLink_same_layer_long
|05DBAA| BCC SanctuaryMantle_NoContact

;===================================================================================================

SanctuaryMantle_MadeContact:
|05DBAC| JSL AbortMovement

|05DBB0| STZ.b $5E

|05DBB2| JSL RepelDash_long

|05DBB6| LDA.b #$07
|05DBB8| STA.w $0E00,X

;===================================================================================================

SanctuaryMantle_RecentContact:
|05DBBB| STZ.w $0E80,X

|05DBBE| LDA.b #$81
|05DBC0| STA.b $48

|05DBC2| LDA.b #$08
|05DBC4| STA.b $5E

|05DBC6| LDA.w $0D80,X
|05DBC9| JSL JumpTableLocal
|05DBCD| dw SanctuaryMantle_AttemptCutscene
|05DBCF| dw SanctuaryMantle_InitializeSlide
|05DBD1| dw SanctuaryMantle_SlideToTheRight

;===================================================================================================

SanctuaryMantle_NoContact:
|05DBD3| LDA.w $0E00,X
|05DBD6| BNE SanctuaryMantle_RecentContact

|05DBD8| LDA.w $0E80,X
|05DBDB| JSL JumpTableLocal
|05DBDF| dw SanctuaryMantle_ResetGrabAndSpeed
|05DBE1| dw SanctuaryMantle_Nothing

;===================================================================================================

SanctuaryMantle_SlidingOpen:
|05DBE3| LDA.b #$40
|05DBE5| STA.w $0D90,X

|05DBE8| LDA.w $0D80,X
|05DBEB| JSL JumpTableLocal
|05DBEF| dw SanctuaryMantle_AttemptCutscene
|05DBF1| dw SanctuaryMantle_InitializeSlide
|05DBF3| dw SanctuaryMantle_SlideToTheRight

;===================================================================================================

SanctuaryMantle_ResetGrabAndSpeed:
|05DBF5| STZ.w $0D90,X

|05DBF8| STZ.b $48
|05DBFA| STZ.b $5E

|05DBFC| INC.w $0E80,X

;===================================================================================================

SanctuaryMantle_Nothing:
|05DBFF| RTS

;===================================================================================================

SanctuaryMantle_AttemptCutscene:
|05DC00| LDA.w $0D10,X
|05DC03| PHA

|05DC04| CLC
|05DC05| ADC.b #$13
|05DC07| STA.w $0D10,X

|05DC0A| LDA.w $0D30,X
|05DC0D| PHA

|05DC0E| ADC.b #$00
|05DC10| STA.w $0D30,X

|05DC13| JSR GetDirectionTowardsLink_bank05

|05DC16| PLA
|05DC17| STA.w $0D30,X

|05DC1A| PLA
|05DC1B| STA.w $0D10,X

|05DC1E| CPY.b #$03
|05DC20| BEQ .link_above

|05DC22| CPY.b #$01
|05DC24| BNE .exit

.link_above
|05DC26| INC.w $0D90,X

|05DC29| LDA.w $0D90,X
|05DC2C| CMP.b #$40
|05DC2E| BCC .exit

|05DC30| INC.w $0D80,X

|05DC33| LDA.b #$01
|05DC35| STA.w $02E4

.exit
|05DC38| RTS

;===================================================================================================

SanctuaryMantle_InitializeSlide:
|05DC39| LDA.b #$18 ; SFX3.18
|05DC3B| JSL QueueSpriteSFX3WithPan

|05DC3F| INC.w $0D80,X

|05DC42| LDA.b #$A8
|05DC44| STA.w $0DF0,X

|05DC47| LDA.b #$03
|05DC49| STA.w $0D50,X

|05DC4C| LDA.b #$02
|05DC4E| STA.w $0E00,X

|05DC51| RTS

;===================================================================================================

SanctuaryMantle_SlideToTheRight:
|05DC52| JSR MoveSpriteXY_bank05

|05DC55| LDA.w $0DF0,X
|05DC58| BNE .delay

|05DC5A| STZ.w $02E4

|05DC5D| STZ.w $0D50,X
|05DC60| STZ.w $0DB0,X

|05DC63| RTS

.delay
|05DC64| LDA.b #$02
|05DC66| STA.w $0E00,X

|05DC69| RTS

;===================================================================================================

pool SpriteDraw_SanctuaryMantle

.oam_groups
|05DC6A| dw   0,   0 : db $2C, $16, $00, $02
|05DC72| dw  16,   0 : db $2C, $56, $00, $02
|05DC7A| dw   0,  16 : db $2E, $06, $00, $02
|05DC82| dw  16,  16 : db $2E, $46, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_SanctuaryMantle:
|05DC8A| LDA.b #<.oam_groups
|05DC8C| STA.b $08

|05DC8E| LDA.b #>.oam_groups
|05DC90| STA.b $09

|05DC92| LDA.w $0DB0,X
|05DC95| BNE .dont_change_region

|05DC97| LDA.b #$10
|05DC99| JSL AllocateOAMInRegionB

.dont_change_region
|05DC9D| LDA.b #$04
|05DC9F| JMP.w TabulatedSpriteDraw_bank05

;===================================================================================================

TrackBodyToHead:
|05DCA2| LDA.w $0DE0,X
|05DCA5| CMP.w $0EB0,X
|05DCA8| BEQ .sync_body

|05DCAA| LDA.b $1A
|05DCAC| AND.b #$1F
|05DCAE| BNE .exit

|05DCB0| LDA.w $0DE0,X
|05DCB3| EOR.w $0EB0,X
|05DCB6| AND.b #$02
|05DCB8| BNE .sync_body

|05DCBA| TXA
|05DCBB| EOR.b $1A

|05DCBD| LSR A
|05DCBE| LSR A
|05DCBF| LSR A
|05DCC0| LSR A
|05DCC1| LSR A

|05DCC2| ORA.b #$02
|05DCC4| AND.b #$03
|05DCC6| STA.w $0DE0,X

|05DCC9| LDA.w $0EB0,X
|05DCCC| AND.b #$02
|05DCCE| EOR.w $0DE0,X
|05DCD1| STA.w $0DE0,X

.exit
|05DCD4| CLC

|05DCD5| RTL

;---------------------------------------------------------------------------------------------------

.sync_body
|05DCD6| LDA.w $0EB0,X
|05DCD9| STA.w $0DE0,X

|05DCDC| SEC

|05DCDD| RTL

;===================================================================================================

UNREACHABLE_05DCDE:
|05DCDE| db $00, $00, $F7, $09, $F7, $09, $00, $00

;===================================================================================================

Priest:
|05DCE6| LDA.w $0D90,X
|05DCE9| BNE .skip_drawing

|05DCEB| JSL SpriteDraw_Priest

.skip_drawing
|05DCEF| JSR CheckIfActive_bank05
|05DCF2| JSL BehaveAsBarrier
|05DCF6| JSL TrackBodyToHead
|05DCFA| JSR MoveSpriteXY_bank05

|05DCFD| LDA.w $0E80,X
|05DD00| JSL JumpTableLocal
|05DD04| dw Priest_Dying
|05DD06| dw Priest_RunRescueCutscene
|05DD08| dw Priest_Chillin

;===================================================================================================

Priest_Dying:
|05DD0A| LDA.b #$04
|05DD0C| STA.w $0EB0,X
|05DD0F| STA.w $0DE0,X

|05DD12| LDA.w $0D80,X
|05DD15| JSL JumpTableLocal
|05DD19| dw Priest_LyingOnGround
|05DD1B| dw Priest_FinalWords
|05DD1D| dw Priest_Die

;===================================================================================================

Priest_LyingOnGround:
|05DD1F| LDA.b #$19 ; MESSAGE 0019
|05DD21| LDY.b #$00
|05DD23| JSL ShowSolicitedMessage
|05DD27| BCC .exit

|05DD29| INC.w $0D80,X
|05DD2C| INC.w $0DC0,X

|05DD2F| LDA.l $7EF3C6
|05DD33| ORA.b #$02
|05DD35| STA.l $7EF3C6

|05DD39| LDA.b #$80
|05DD3B| STA.w $0E10,X

.exit
|05DD3E| RTS

;===================================================================================================

Priest_FinalWords:
|05DD3F| STZ.w $0DC0,X

|05DD42| LDA.w $0E10,X
|05DD45| BNE .delay

|05DD47| INC.w $0D80,X

.delay
|05DD4A| LDA.b $1A
|05DD4C| AND.b #$02
|05DD4E| STA.w $0D90,X

|05DD51| LDA.w $0E10,X
|05DD54| AND.b #$07
|05DD56| BNE .exit

|05DD58| LDA.b #$33 ; SFX2.33
|05DD5A| JSL QueueSpriteSFX2WithPan

.exit
|05DD5E| RTS

;===================================================================================================

Priest_Die:
|05DD5F| STZ.w $0DD0,X

|05DD62| RTS

;===================================================================================================

Priest_RunRescueCutscene:
|05DD63| LDA.w $0D80,X
|05DD66| JSL JumpTableLocal
|05DD6A| dw Priest_WelcomeToSanctuary
|05DD6C| dw Priest_WaitForZelda
|05DD6E| dw Priest_MoreTalking
|05DD70| dw Priest_OfferKisses

;===================================================================================================

Priest_WelcomeToSanctuary:
|05DD72| LDA.b #$00
|05DD74| STA.w $0EB0,X
|05DD77| STA.w $0DE0,X

|05DD7A| LDA.w $0DF0,X
|05DD7D| BNE .exit

|05DD7F| LDA.b #$15 ; MESSAGE 0015
|05DD81| LDY.b #$00
|05DD83| JSL ShowMessageUnconditional

|05DD87| INC.w $0D80,X

|05DD8A| LDA.b #$01
|05DD8C| STA.l $7FFE01

|05DD90| JSR Priest_SpawnRescuedPrincess

|05DD93| LDA.b #$01
|05DD95| STA.w $02E4

|05DD98| LDA.b #$01
|05DD9A| STA.l $7EF3C7

.exit
|05DD9E| RTS

;===================================================================================================

Priest_WaitForZelda:
|05DD9F| LDA.l $7FFE01
|05DDA3| CMP.b #$02
|05DDA5| BNE .exit

|05DDA7| LDA.b #$16 ; MESSAGE 0016
|05DDA9| LDY.b #$00
|05DDAB| JSL ShowMessageUnconditional

|05DDAF| INC.w $0D80,X

.exit
|05DDB2| RTS

;===================================================================================================

Priest_MoreTalking:
|05DDB3| LDA.w $1CE8
|05DDB6| BNE .player_misunderstood

|05DDB8| INC.w $0D80,X

|05DDBB| STZ.w $02E4

|05DDBE| RTS

.player_misunderstood
|05DDBF| LDA.b #$01
|05DDC1| STA.w $0D80,X

|05DDC4| RTS

;===================================================================================================

Priest_OfferKisses:
|05DDC5| JSR GetDirectionTowardsLink_bank05
|05DDC8| TYA
|05DDC9| EOR.b #$03
|05DDCB| STA.w $0EB0,X

|05DDCE| LDA.b #$14 ; MESSAGE 0014
|05DDD0| LDY.b #$00
|05DDD2| JSL ShowSolicitedMessage
|05DDD6| BCC .exit

|05DDD8| STA.w $0DE0,X
|05DDDB| STA.w $0EB0,X

.exit
|05DDDE| RTS

;===================================================================================================

pool Priest_Chillin

.messages_low
|05DDDF| db $14 ; MESSAGE 0014
|05DDE0| db $17 ; MESSAGE 0017
|05DDE1| db $18 ; MESSAGE 0018

.messages_high
|05DDE2| db $00
|05DDE3| db $00
|05DDE4| db $00

endpool

;---------------------------------------------------------------------------------------------------

Priest_Chillin:
|05DDE5| JSR GetDirectionTowardsLink_bank05

|05DDE8| TYA
|05DDE9| EOR.b #$03
|05DDEB| STA.w $0EB0,X

|05DDEE| LDY.b #$00

|05DDF0| LDA.l $7EF374
|05DDF4| AND.b #$07
|05DDF6| CMP.b #$07
|05DDF8| BNE .has_every_pendant

|05DDFA| LDY.b #$02
|05DDFC| BRA .quest_unfinished

;---------------------------------------------------------------------------------------------------

.has_every_pendant
|05DDFE| LDA.l $7EF3C7
|05DE02| CMP.b #$03
|05DE04| BCC .quest_unfinished

|05DE06| LDY.b #$01

.quest_unfinished
|05DE08| LDA.w .messages_low,Y
|05DE0B| XBA

|05DE0C| LDA.w .messages_high,Y
|05DE0F| TAY

|05DE10| XBA
|05DE11| JSL ShowSolicitedMessage
|05DE15| BCC .exit

|05DE17| STA.w $0DE0,X
|05DE1A| STA.w $0EB0,X

|05DE1D| LDA.b #$A0
|05DE1F| STA.l $7EF372

.exit
|05DE23| RTS

;===================================================================================================

UncleSpeed_X:
|05DE24| db   0,   0, -12,  12

UncleSpeed_Y:
|05DE28| db -12,  12,   0,   0

;===================================================================================================

Uncle:
|05DE2C| JSL SpriteDraw_Uncle
|05DE30| JSR CheckIfActive_bank05

|05DE33| LDA.w $0E80,X
|05DE36| JSL JumpTableLocal
|05DE3A| dw Uncle_AtHouse
|05DE3C| dw Uncle_InPassage

;===================================================================================================

Uncle_AtHouse:
|05DE3E| JSR MoveSpriteXY_bank05

|05DE41| LDA.w $0D80,X
|05DE44| JSL JumpTableLocal
|05DE48| dw Uncle_TriggerTelepathy
|05DE4A| dw Uncle_AwakenLink
|05DE4C| dw Uncle_DeclareCurfew
|05DE4E| dw Uncle_Embark
|05DE50| dw Uncle_GrantNaggingFollower

;===================================================================================================

Uncle_TriggerTelepathy:
|05DE52| LDA.b #$40
|05DE54| STA.w $0FC2

|05DE57| LDA.b #$09
|05DE59| STA.w $0FC3

|05DE5C| LDA.b #$5A
|05DE5E| STA.w $0FC4

|05DE61| LDA.b #$21
|05DE63| STA.w $0FC5

|05DE66| LDA.b #$1D ; MESSAGE 001D
|05DE68| LDY.b #$00
|05DE6A| JSL ShowMessageUnconditional

|05DE6E| INC.w $0D80,X

|05DE71| RTS

;===================================================================================================

Uncle_AwakenLink:
|05DE72| LDA.b $1A
|05DE74| AND.b #$03
|05DE76| BNE .exit

|05DE78| LDA.b $9C
|05DE7A| CMP.b #$20
|05DE7C| BEQ .lights_are_on

|05DE7E| DEC.b $9C
|05DE80| DEC.b $9D

.exit
|05DE82| RTS

;---------------------------------------------------------------------------------------------------

.lights_are_on
|05DE83| INC.w $0D80,X

|05DE86| INC.w $037D
|05DE89| INC.w $037C

|05DE8C| LDA.b #$57
|05DE8E| STA.b $20

|05DE90| LDA.b #$21
|05DE92| STA.b $21

|05DE94| LDA.b #$01
|05DE96| STA.w $02E4

|05DE99| RTS

;===================================================================================================

Uncle_DeclareCurfew:
|05DE9A| LDA.b #$0B ; MESSAGE 000B
|05DE9C| LDY.b #$00
|05DE9E| JSL ShowMessageUnconditional

|05DEA2| INC.w $0D80,X

|05DEA5| LDA.b #$03 ; SONG 03
|05DEA7| STA.w $012C

|05DEAA| LDA.b #$01
|05DEAC| STA.w $0DC0,X

|05DEAF| RTS

;===================================================================================================

pool Uncle_Embark

.timer
|05DEB0| db  64, 224

.direction
|05DEB2| db $02, $01

endpool

;---------------------------------------------------------------------------------------------------

Uncle_Embark:
|05DEB4| LDA.w $0DF0,X
|05DEB7| BNE .delay

|05DEB9| LDY.w $0D90,X
|05DEBC| BNE .already_standing

|05DEBE| LDA.w $0D00,X
|05DEC1| SEC
|05DEC2| SBC.b #$02
|05DEC4| STA.w $0D00,X

.already_standing
|05DEC7| LDA.w .timer,Y
|05DECA| STA.w $0DF0,X

|05DECD| LDA.w .direction,Y
|05DED0| STA.w $0DE0,X

|05DED3| TAY

|05DED4| LDA.w UncleSpeed_X,Y
|05DED7| STA.w $0D50,X

|05DEDA| LDA.w UncleSpeed_Y,Y
|05DEDD| STA.w $0D40,X

|05DEE0| INC.w $0D90,X

|05DEE3| LDA.w $0D90,X
|05DEE6| CMP.b #$03
|05DEE8| BNE .delay

|05DEEA| INC.w $0D80,X

.delay
|05DEED| LDA.b $1A
|05DEEF| LSR A
|05DEF0| LSR A
|05DEF1| LSR A
|05DEF2| AND.b #$01
|05DEF4| STA.w $0DC0,X

|05DEF7| RTS

;===================================================================================================

Uncle_GrantNaggingFollower:
|05DEF8| LDA.b #$05 ; FOLLOWER 05
|05DEFA| STA.l $7EF3CC

|05DEFE| LDA.b #$F3
|05DF00| STA.w $02CD

|05DF03| LDA.b #$0D
|05DF05| STA.w $02CE

|05DF08| LDA.l $7EF3C6
|05DF0C| ORA.b #$10
|05DF0E| STA.l $7EF3C6

|05DF12| STZ.w $0DD0,X
|05DF15| STZ.w $02E4

|05DF18| RTS

;===================================================================================================

Uncle_InPassage:
|05DF19| LDA.w $0D80,X
|05DF1C| JSL JumpTableLocal
|05DF20| dw Uncle_LyingInDefeat
|05DF22| dw Uncle_GrantEquipment
|05DF24| dw Uncle_Dead

;===================================================================================================

Uncle_LyingInDefeat:
|05DF26| JSL CheckDamageToLink_same_layer_long
|05DF2A| BCC .still_waiting

|05DF2C| JSL CancelDash_long

.still_waiting
|05DF30| LDA.b #$0C ; MESSAGE 000C
|05DF32| LDY.b #$00
|05DF34| JSL ShowMessageOnContact
|05DF38| BCC Uncle_Dead

|05DF3A| LDA.b #$00
|05DF3C| STA.l $7EF3CC

|05DF40| INC.w $0D80,X

;===================================================================================================

Uncle_Dead:
|05DF43| RTS

;===================================================================================================

Uncle_GrantEquipment:
|05DF44| LDY.b #$00 ; ITEMGET 00
|05DF46| STZ.w $02E9
|05DF49| JSL GrantItemReceipt

|05DF4D| INC.w $0D80,X

|05DF50| LDA.b #$01
|05DF52| STA.w $0DC0,X

|05DF55| LDA.b #$03
|05DF57| STA.l $7EF3C8

|05DF5B| LDA.l $7EF3C6
|05DF5F| ORA.b #$01
|05DF61| STA.l $7EF3C6

|05DF65| LDA.b #$01
|05DF67| STA.l $7EF3C5

|05DF6B| RTS

;===================================================================================================
; Format:
;---------------------------------------------------------------------------------------------------
; Pose 1: dw XXXX, YYYY : db CHAR, PROP, PAL2, SIZE
; Pose 2: dw XXXX, YYYY : db CHAR, PROP, PAL2, SIZE
; etc...
;
; XXXX - signed 16-bit offset of object's X position relative to its position
; YYYY - signed 16-bit offset of object's Y position relative to its position
;
; CHAR - 8-bit character name
; PROP - object properties
; PAL2 - some palette override
; SIZE - size bit ORA'd in with X bit 8
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
; $0D OAM X bit 8 (written to $0A20,X)
;===================================================================================================
TabulatedSpriteDraw:
|05DF6C| STA.b $06
|05DF6E| STZ.b $07

;---------------------------------------------------------------------------------------------------

.preset_quantity
|05DF70| JSR .prep_oam
|05DF73| BRA .continue

;---------------------------------------------------------------------------------------------------

.player_deferred
|05DF75| JSR .prep_oam_deferred

;---------------------------------------------------------------------------------------------------

.continue
|05DF78| BCS .exit

|05DF7A| PHX

|05DF7B| REP #$30

|05DF7D| LDY.w #$0000
|05DF80| LDX.w $0090

.next_object
|05DF83| LDA.b ($08),Y
|05DF85| CLC
|05DF86| ADC.b $00
|05DF88| STA.w $0000,X

|05DF8B| AND.w #$0100
|05DF8E| STA.b $0C

|05DF90| INY
|05DF91| INY

|05DF92| LDA.b ($08),Y
|05DF94| CLC
|05DF95| ADC.b $02
|05DF97| STA.w $0001,X

|05DF9A| CLC
|05DF9B| ADC.w #$0010
|05DF9E| CMP.w #$0100
|05DFA1| BCC .on_screen

|05DFA3| LDA.w #$00F0
|05DFA6| STA.w $0001,X

.on_screen
|05DFA9| INY
|05DFAA| INY

|05DFAB| LDA.w $0CFE
|05DFAE| CMP.w #$0001

|05DFB1| LDA.b ($08),Y
|05DFB3| EOR.b $04
|05DFB5| BCC .dont_override_palette

|05DFB7| AND.w #$F1FF
|05DFBA| ORA.w #$0400

.dont_override_palette
|05DFBD| STA.w $0002,X

|05DFC0| PHX

|05DFC1| TXA
|05DFC2| SEC
|05DFC3| SBC.w #$0800
|05DFC6| LSR A
|05DFC7| LSR A
|05DFC8| TAX

|05DFC9| SEP #$20

|05DFCB| INY
|05DFCC| INY
|05DFCD| INY

|05DFCE| LDA.b ($08),Y
|05DFD0| ORA.b $0D
|05DFD2| STA.w $0A20,X

|05DFD5| PLX

|05DFD6| REP #$20

|05DFD8| INY

|05DFD9| INX
|05DFDA| INX
|05DFDB| INX
|05DFDC| INX

|05DFDD| DEC.b $06
|05DFDF| BNE .next_object

|05DFE1| SEP #$30

|05DFE3| PLX

.exit
|05DFE4| RTL

;===================================================================================================

.prep_oam_deferred
|05DFE5| JSL AllocateOAMDeferToPlayer_long

;===================================================================================================

.prep_oam
|05DFE9| JSR GetScreenCoordinates_bank05

|05DFEC| PHP

|05DFED| STZ.w $0CFE
|05DFF0| STZ.w $0CFF

|05DFF3| LDA.w $0DD0,X
|05DFF6| CMP.b #$0A
|05DFF8| BNE .not_carried

|05DFFA| LDA.l $7FFA2C,X

.not_carried
|05DFFE| CMP.b #$0B
|05E000| BNE .not_stunned

|05E002| LDA.l $7FFA3C,X
|05E006| STA.w $0CFE

.not_stunned
|05E009| PLP

|05E00A| RTS

;===================================================================================================

Sprite_32_ArguingBros:
|05E00B| PHB
|05E00C| PHK
|05E00D| PLB

|05E00E| JSR .main

|05E011| PLB

|05E012| RTL

;---------------------------------------------------------------------------------------------------

.main
|05E013| JSR SpriteDraw_ArguingBros
|05E016| JSR CheckIfActive_bank05
|05E019| JSL TrackBodyToHead

|05E01D| JSR GetDirectionTowardsLink_bank05

|05E020| TYA
|05E021| EOR.b #$03
|05E023| STA.w $0EB0,X

;---------------------------------------------------------------------------------------------------

; Checks for ROOM 00F4 or ROOM 00F5
|05E026| LDA.b $A0
|05E028| AND.b #$01
|05E02A| BNE .east_side

.west_side
|05E02C| LDA.b #$2F ; MESSAGE 012F
|05E02E| LDY.b #$01
|05E030| JSL ShowSolicitedMessage
|05E034| BRA .continue

;---------------------------------------------------------------------------------------------------

.east_side
|05E036| LDA.w $0401
|05E039| BNE .door_opened

|05E03B| LDA.b #$2D ; MESSAGE 012D
|05E03D| LDY.b #$01
|05E03F| JSL ShowSolicitedMessage
|05E043| BRA .continue

;---------------------------------------------------------------------------------------------------

.door_opened
|05E045| LDA.b #$2E ; MESSAGE 012E
|05E047| LDY.b #$01
|05E049| JSL ShowSolicitedMessage

;---------------------------------------------------------------------------------------------------

.continue
|05E04D| JSL BehaveAsBarrier

|05E051| RTS

;===================================================================================================

UNREACHABLE_05E052:
|05E052| JSR MoveSpriteXY_bank05
|05E055| JSR CheckSpriteTileCollision_bank05

|05E058| LDA.w $0D80,X
|05E05B| JSL JumpTableLocal
|05E05F| dw UNREACHABLE_05E06B
|05E061| dw UNREACHABLE_05E0B6

;===================================================================================================

pool UNREACHABLE_05E06B

.speed_x
|05E063| db   0,   0, -12,  11

.speed_y
|05E067| db -12,  11,   0,   0

endpool

;---------------------------------------------------------------------------------------------------

UNREACHABLE_05E06B:
|05E06B| LDA.w $0DF0,X
|05E06E| BNE .delay

|05E070| JSL GetRandomNumber
|05E074| AND.b #$1F
|05E076| CLC
|05E077| ADC.b #$40
|05E079| STA.w $0DF0,X

|05E07C| LDA.b $1A
|05E07E| AND.b #$01
|05E080| ORA.b #$02
|05E082| EOR.w $0DE0,X
|05E085| STA.w $0DE0,X

.delay
|05E088| LDA.w $0E70,X
|05E08B| AND.b #$0F
|05E08D| BEQ .dont_change_state

|05E08F| INC.w $0D80,X

|05E092| LDA.b #$60
|05E094| STA.w $0DF0,X

.dont_change_state
|05E097| TXA
|05E098| EOR.b $1A
|05E09A| LSR A
|05E09B| LSR A
|05E09C| LSR A
|05E09D| AND.b #$01
|05E09F| STA.w $0DC0,X

|05E0A2| LDY.w $0DE0,X

|05E0A5| LDA.w .speed_x,Y
|05E0A8| STA.w $0D50,X

|05E0AB| LDA.w .speed_y,Y
|05E0AE| STA.w $0D40,X

|05E0B1| TYA
|05E0B2| STA.w $0D90,X

|05E0B5| RTS

;===================================================================================================

UNREACHABLE_05E0B6:
|05E0B6| LDA.w $0DF0,X
|05E0B9| BNE .delay

|05E0BB| JSL GetRandomNumber
|05E0BF| AND.b #$1F
|05E0C1| CLC
|05E0C2| ADC.b #$60
|05E0C4| STA.w $0DF0,X

|05E0C7| STZ.w $0D80,X

|05E0CA| LDA.b $1A
|05E0CC| AND.b #$01
|05E0CE| ORA.b #$02
|05E0D0| EOR.w $0DE0,X
|05E0D3| STA.w $0DE0,X

.delay
|05E0D6| STZ.w $0D50,X
|05E0D9| STZ.w $0D40,X

|05E0DC| TXA
|05E0DD| EOR.b $1A

|05E0DF| LSR A
|05E0E0| LSR A
|05E0E1| LSR A
|05E0E2| LSR A
|05E0E3| LSR A

|05E0E4| AND.b #$03
|05E0E6| STA.b $00

|05E0E8| AND.b #$01
|05E0EA| BNE .skip

|05E0EC| LDA.b $00
|05E0EE| LSR A
|05E0EF| ORA.b #$02

|05E0F1| EOR.w $0DE0,X
|05E0F4| STA.w $0D90,X

|05E0F7| RTS

.skip
|05E0F8| LDA.w $0DE0,X
|05E0FB| STA.w $0D90,X

|05E0FE| RTS

;===================================================================================================

pool SpriteDraw_ArguingBros

.oam_groups
; group00
|05E0FF| dw   0, -12 : db $04, $00, $00, $02
|05E107| dw   0,   0 : db $0A, $00, $00, $02

; group01
|05E10F| dw   0, -11 : db $04, $00, $00, $02
|05E117| dw   0,   1 : db $0A, $40, $00, $02

; group02
|05E11F| dw   0, -12 : db $04, $00, $00, $02
|05E127| dw   0,   0 : db $0A, $00, $00, $02

; group03
|05E12F| dw   0, -11 : db $04, $00, $00, $02
|05E137| dw   0,   1 : db $0A, $40, $00, $02

; group04
|05E13F| dw   0, -12 : db $08, $00, $00, $02
|05E147| dw   0,   0 : db $0A, $00, $00, $02

; group05
|05E14F| dw   0, -11 : db $08, $00, $00, $02
|05E157| dw   0,   1 : db $0A, $40, $00, $02

; group06
|05E15F| dw   0, -12 : db $08, $40, $00, $02
|05E167| dw   0,   0 : db $0A, $00, $00, $02

; group07
|05E16F| dw   0, -11 : db $08, $40, $00, $02
|05E177| dw   0,   1 : db $0A, $40, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_ArguingBros:
|05E17F| LDA.b #$02
|05E181| STA.b $06
|05E183| STZ.b $07

|05E185| LDA.w $0DE0,X
|05E188| ASL A
|05E189| ADC.w $0DC0,X

|05E18C| ASL A
|05E18D| ASL A
|05E18E| ASL A
|05E18F| ASL A

|05E190| ADC.b #<.oam_groups
|05E192| STA.b $08

|05E194| LDA.b #>.oam_groups
|05E196| ADC.b #$00
|05E198| STA.b $09

|05E19A| JSL TabulatedSpriteDraw.player_deferred
|05E19E| JSL DrawSpriteShadow_long

|05E1A2| RTS

;===================================================================================================

pool ShowSolicitedMessage

.direction
|05E1A3| db $04
|05E1A4| db $06
|05E1A5| db $00
|05E1A6| db $02

endpool

;---------------------------------------------------------------------------------------------------

ShowSolicitedMessage:
|05E1A7| STA.w $1CF0
|05E1AA| STY.w $1CF1

|05E1AD| JSL CheckDamageToLink_same_layer_long
|05E1B1| BCC .fail

|05E1B3| JSL CheckIfLinkIsBusy
|05E1B7| BCS .fail

|05E1B9| LDA.b $F6
|05E1BB| BPL .fail

|05E1BD| LDA.w $0F10,X
|05E1C0| BNE .fail

|05E1C2| LDA.b $4D
|05E1C4| CMP.b #$02
|05E1C6| BEQ .fail

|05E1C8| JSR GetDirectionTowardsLink_bank05

|05E1CB| PHX

|05E1CC| TYX
|05E1CD| LDA.l .direction,X

|05E1D1| PLX

|05E1D2| CMP.b $2F
|05E1D4| BNE .fail

|05E1D6| PHY

|05E1D7| LDA.w $1CF0
|05E1DA| LDY.w $1CF1
|05E1DD| JSL ShowMessageUnconditional

|05E1E1| LDA.b #$40
|05E1E3| STA.w $0F10,X

|05E1E6| PLA
|05E1E7| EOR.b #$03
|05E1E9| SEC

|05E1EA| RTL

.fail
|05E1EB| LDA.w $0DE0,X

|05E1EE| CLC

|05E1EF| RTL

;===================================================================================================

ShowMessageOnContact:
|05E1F0| STA.w $1CF0
|05E1F3| STY.w $1CF1

|05E1F6| JSL CheckDamageToLink_same_layer_long
|05E1FA| BCC .fail

|05E1FC| LDA.b $4D
|05E1FE| CMP.b #$02
|05E200| BEQ .fail

|05E202| LDA.w $1CF0
|05E205| LDY.w $1CF1
|05E208| JSL ShowMessageUnconditional

|05E20C| JSR GetDirectionTowardsLink_bank05

|05E20F| TYA
|05E210| EOR.b #$03
|05E212| SEC

|05E213| RTL

.fail
|05E214| LDA.w $0DE0,X

|05E217| CLC

|05E218| RTL

;===================================================================================================

ShowMessageUnconditional:
|05E219| STA.w $1CF0
|05E21C| STY.w $1CF1

|05E21F| STZ.w $0223
|05E222| STZ.w $1CD8

|05E225| LDA.b #$02
|05E227| STA.b $11

|05E229| LDA.b $10
|05E22B| STA.w $010C

|05E22E| LDA.b #$0E
|05E230| STA.b $10

|05E232| PHX

|05E233| JSL AbortMovement

|05E237| STZ.b $5E

|05E239| JSL CancelDash_long

|05E23D| STZ.b $4D
|05E23F| STZ.b $46

|05E241| LDA.b $5D
|05E243| CMP.b #$02 ; LINKSTATE 02
|05E245| BNE .exit

|05E247| LDA.b #$00 ; LINKSTATE 00
|05E249| STA.b $5D

.exit
|05E24B| PLX

|05E24C| RTL

;===================================================================================================

Sprite_33_RupeePull:
|05E24D| PHB
|05E24E| PHK
|05E24F| PLB

|05E250| JSR .main

|05E253| PLB

|05E254| RTL

;---------------------------------------------------------------------------------------------------

.main
|05E255| JSL GetScreenCoordinates_long
|05E259| JSR CheckIfActive_bank05

|05E25C| JSL CheckIfLinkIsBusy
|05E260| BCS .exit

|05E262| JSL CheckDamageToLink_same_layer_long
|05E266| BCC .no_contact

|05E268| LDA.b #$01
|05E26A| STA.w $03F8
|05E26D| STA.w $0D90,X

|05E270| RTS

;---------------------------------------------------------------------------------------------------

.no_contact
|05E271| LDA.w $0D90,X
|05E274| BEQ .exit

|05E276| STZ.w $03F8

|05E279| LDA.w $0308
|05E27C| AND.b #$01
|05E27E| BEQ .exit

|05E280| STZ.w $0DD0,X

|05E283| JSL RupeePull_SpawnPrize
|05E287| JSL SpawnPoofGarnish

.exit
|05E28B| RTS

;===================================================================================================

Sprite_14_ThievesTownGrate:
|05E28C| PHB
|05E28D| PHK
|05E28E| PLB

|05E28F| JSR .main

|05E292| PLB

|05E293| RTL

;---------------------------------------------------------------------------------------------------

.main
|05E294| JSL GetScreenCoordinates_long
|05E298| JSR CheckIfActive_bank05

|05E29B| JSL CheckIfLinkIsBusy
|05E29F| BCS .exit

|05E2A1| JSL CheckDamageToLink_same_layer_long
|05E2A5| BCC .no_contact

|05E2A7| LDA.b #$01
|05E2A9| STA.w $03F8
|05E2AC| STA.w $0D90,X

|05E2AF| RTS

;---------------------------------------------------------------------------------------------------

.no_contact
|05E2B0| LDA.w $0D90,X
|05E2B3| BEQ .exit

|05E2B5| STZ.w $03F8

|05E2B8| LDA.w $0308
|05E2BB| AND.b #$01
|05E2BD| BEQ .exit

|05E2BF| LDA.b #$1F ; SFX2.1F
|05E2C1| JSL QueueSpriteSFX2WithPan

|05E2C5| PHX

|05E2C6| JSL OpenGargoylesDomain

|05E2CA| PLX

|05E2CB| JSR SpawnDustCloud

|05E2CE| LDA.w $0D10,X
|05E2D1| STA.w $0D10,Y

|05E2D4| LDA.w $0D30,X
|05E2D7| STA.w $0D30,Y

|05E2DA| LDA.w $0D00,X
|05E2DD| STA.w $0D00,Y

|05E2E0| LDA.w $0D20,X
|05E2E3| STA.w $0D20,Y

|05E2E6| STZ.w $0DD0,X

.exit
|05E2E9| RTS

;===================================================================================================

Sprite_34_YoungSnitch:
|05E2EA| PHB
|05E2EB| PHK
|05E2EC| PLB

|05E2ED| JSR .main

|05E2F0| PLB

|05E2F1| RTL

;---------------------------------------------------------------------------------------------------

.main
|05E2F2| LDA.w $0D80,X
|05E2F5| CMP.b #$02
|05E2F7| BCS .invisible

|05E2F9| JSR SpriteDraw_YoungSnitch

.invisible
|05E2FC| JMP.w Snitch_Main

;===================================================================================================

pool SpriteDraw_YoungSnitch

.oam_groups
; group00
|05E2FF| dw   0,  -8 : db $26, $00, $00, $02
|05E307| dw   0,   0 : db $E8, $00, $00, $02

; group01
|05E30F| dw   0,  -7 : db $26, $00, $00, $02
|05E317| dw   0,   1 : db $E8, $40, $00, $02

; group02
|05E31F| dw   0,  -8 : db $24, $00, $00, $02
|05E327| dw   0,   0 : db $C2, $00, $00, $02

; group03
|05E32F| dw   0,  -7 : db $24, $00, $00, $02
|05E337| dw   0,   1 : db $C2, $40, $00, $02

; group04
|05E33F| dw   0,  -8 : db $28, $00, $00, $02
|05E347| dw   0,   0 : db $E4, $00, $00, $02

; group05
|05E34F| dw   0,  -7 : db $28, $00, $00, $02
|05E357| dw   0,   1 : db $E6, $00, $00, $02

; group06
|05E35F| dw   0,  -8 : db $28, $40, $00, $02
|05E367| dw   0,   0 : db $E4, $40, $00, $02

; group07
|05E36F| dw   0,  -7 : db $28, $40, $00, $02
|05E377| dw   0,   1 : db $E6, $40, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_YoungSnitch:
|05E37F| LDA.b #$02
|05E381| STA.b $06
|05E383| STZ.b $07

|05E385| LDA.w $0DE0,X
|05E388| ASL A
|05E389| ADC.w $0DC0,X

|05E38C| ASL A
|05E38D| ASL A
|05E38E| ASL A
|05E38F| ASL A

|05E390| ADC.b #<.oam_groups
|05E392| STA.b $08

|05E394| LDA.b #>.oam_groups
|05E396| ADC.b #$00
|05E398| STA.b $09

|05E39A| JSL TabulatedSpriteDraw.player_deferred
|05E39E| JSL DrawSpriteShadow_long

|05E3A2| RTS

;===================================================================================================

pool Sprite_35_Innkeeper

.messages_low
|05E3A3| db $80 ; MESSAGE 0180
|05E3A4| db $81 ; MESSAGE 0181

.messages_high
|05E3A5| db $01
|05E3A6| db $01

endpool

;---------------------------------------------------------------------------------------------------

Sprite_35_Innkeeper:
|05E3A7| PHB
|05E3A8| PHK
|05E3A9| PLB

|05E3AA| JSR .main

|05E3AD| PLB

|05E3AE| RTL

;---------------------------------------------------------------------------------------------------

.main
|05E3AF| JSR SpriteDraw_Innkeeper
|05E3B2| JSR CheckIfActive_bank05
|05E3B5| JSL BehaveAsBarrier

|05E3B9| LDA.l $7EF356
|05E3BD| TAY

|05E3BE| LDA.w .messages_low,Y
|05E3C1| XBA

|05E3C2| LDA.w .messages_high,Y
|05E3C5| TAY

|05E3C6| XBA
|05E3C7| JSL ShowSolicitedMessage

|05E3CB| RTS

;===================================================================================================

pool SpriteDraw_Innkeeper

.oam_groups
|05E3CC| dw   0,  -8 : db $C4, $00, $00, $02
|05E3D4| dw   0,   0 : db $CA, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Innkeeper:
|05E3DC| LDA.b #$02
|05E3DE| STA.b $06
|05E3E0| STZ.b $07

|05E3E2| LDA.b #<.oam_groups
|05E3E4| STA.b $08

|05E3E6| LDA.b #>.oam_groups
|05E3E8| STA.b $09

|05E3EA| JSL TabulatedSpriteDraw.player_deferred
|05E3EE| JSL DrawSpriteShadow_long

|05E3F2| RTS

;===================================================================================================

Sprite_36_Witch:
|05E3F3| PHB
|05E3F4| PHK
|05E3F5| PLB

|05E3F6| JSR .main

|05E3F9| PLB

|05E3FA| RTL

;---------------------------------------------------------------------------------------------------

.main
|05E3FB| JSR SpriteDraw_Witch
|05E3FE| JSR CheckIfActive_bank05

|05E401| LDA.w $0F60,X
|05E404| PHA

|05E405| LDA.b #$02
|05E407| STA.w $0F60,X

|05E40A| JSL CheckDamageToLink_same_layer_long
|05E40E| BCC .no_contact

|05E410| PHX

|05E411| JSL AbortMovement

|05E415| STZ.b $5E

|05E417| JSL CancelDash_long

|05E41B| PLX

;---------------------------------------------------------------------------------------------------

.no_contact
|05E41C| PLA
|05E41D| STA.w $0F60,X

|05E420| LDA.b $1A
|05E422| BNE .dont_change_stir

|05E424| JSL GetRandomNumber
|05E428| AND.b #$01
|05E42A| CLC
|05E42B| ADC.b #$02
|05E42D| STA.w $0D90,X

.dont_change_stir
|05E430| LDA.w $0D90,X
|05E433| STA.b $00

|05E435| LDA.b $1A

.shift
|05E437| LSR A
|05E438| DEC.b $00
|05E43A| BPL .shift

|05E43C| AND.b #$07
|05E43E| STA.w $0DC0,X

|05E441| JSL CheckIfLinkIsBusy
|05E445| BCC .continue

|05E447| RTS

;---------------------------------------------------------------------------------------------------

.continue
|05E448| LDA.w $0D80,X
|05E44B| JSL JumpTableLocal
|05E44F| dw Witch_DiscussThings
|05E451| dw Witch_GrantByrna

;===================================================================================================

Witch_GrantByrna:
|05E453| STZ.w $0D80,X

|05E456| LDY.b #$18 ; ITEMGET 18
|05E458| STZ.w $02E9
|05E45B| JSL GrantItemReceipt

|05E45F| RTS

;===================================================================================================

Witch_DiscussThings:
|05E460| STZ.b $00

|05E462| LDA.l $7EF344
|05E466| CMP.b #$01
|05E468| BNE .no_mushroom

|05E46A| INC.b $00

.no_mushroom
|05E46C| LDA.b $00
|05E46E| JSL JumpTableLocal
|05E472| dw Witch_DiscussMushroom
|05E474| dw Witch_YouHaveShroom
|05E476| dw Witch_YouHaveShroom
|05E478| dw Witch_YouHaveShroom
|05E47A| dw Witch_YouHaveShroom

;===================================================================================================

Witch_DiscussMushroom:
|05E47C| LDA.l $7EF344
|05E480| CMP.b #$02
|05E482| BNE .no_powder

.give_me_shroom
|05E484| LDA.b #$48 ; MESSAGE 0048
|05E486| LDY.b #$00
|05E488| JSL ShowSolicitedMessage

|05E48C| RTS

.no_powder
|05E48D| PHX

|05E48E| REP #$10

|05E490| LDX.w #$0212
|05E493| LDA.l $7EF000,X

|05E497| SEP #$30

|05E499| PLX

|05E49A| CMP.b #$00
|05E49C| BPL .give_me_shroom

|05E49E| LDA.b #$49 ; MESSAGE 0049
|05E4A0| LDY.b #$00
|05E4A2| JSL ShowSolicitedMessage

|05E4A6| RTS

;===================================================================================================

Witch_YouHaveShroom:
|05E4A7| LDA.b $F0
|05E4A9| AND.b #$40
|05E4AB| BEQ .no_y_press

|05E4AD| JSL CheckDamageToLink_same_layer_long
|05E4B1| BCC .exit

|05E4B3| LDA.w $0202
|05E4B6| CMP.b #$05
|05E4B8| BNE .exit

|05E4BA| LDA.l $7EF344
|05E4BE| CMP.b #$01
|05E4C0| BNE .exit

|05E4C2| JSR Witch_AcceptShroom

.exit
|05E4C5| RTS

.no_y_press
|05E4C6| LDA.b #$4A ; MESSAGE 004A
|05E4C8| LDY.b #$00
|05E4CA| JSL ShowSolicitedMessage

|05E4CE| RTS

;===================================================================================================

Witch_AcceptShroom:
|05E4CF| LDA.l $7EF344
|05E4D3| CMP.b #$01
|05E4D5| BNE .thats_not_the_shroom

|05E4D7| LDA.b #$00
|05E4D9| STA.l $7EF344

|05E4DD| PHX

|05E4DE| REP #$10

|05E4E0| LDX.w #$0212

|05E4E3| LDA.l $7EF000,X
|05E4E7| ORA.b #$80
|05E4E9| STA.l $7EF000,X

|05E4ED| SEP #$30

|05E4EF| STZ.w $012E

|05E4F2| JSL RefreshItemIcon

|05E4F6| PLX

|05E4F7| LDA.b #$49 ; MESSAGE 0049
|05E4F9| LDY.b #$00
|05E4FB| JSL ShowMessageUnconditional

|05E4FF| LDA.b #$0D ; SFX1.0D
|05E501| JSL QueueSpriteSFX1WithPan

.thats_not_the_shroom
|05E505| STZ.w $0ABF

|05E508| RTS

;===================================================================================================

pool SpriteDraw_Witch

.oam_groups_stirring
; group00
|05E509| db  -3,   8 : db $AE, $00
|05E50D| db  -3,  16 : db $BE, $00

; group01
|05E511| db  -2,   8 : db $AE, $00
|05E515| db  -2,  16 : db $BE, $00

; group02
|05E519| db  -1,   8 : db $AF, $00
|05E51D| db  -1,  16 : db $BF, $00

; group03
|05E521| db   0,   9 : db $AF, $00
|05E525| db   0,  17 : db $BF, $00

; group04
|05E529| db   1,  10 : db $AF, $00
|05E52D| db   1,  18 : db $BF, $00

; group05
|05E531| db   0,  11 : db $AF, $00
|05E535| db   0,  18 : db $BF, $00

; group06
|05E539| db  -1,  10 : db $AE, $00
|05E53D| db  -1,  18 : db $BE, $00

; group07
|05E541| db  -3,   9 : db $AE, $00
|05E545| db  -3,  17 : db $BE, $00

;---------------------------------------------------------------------------------------------------

.oam_groups_body
|05E549| db   0,  -4 : db $80, $00
|05E54D| db -11,  15 : db $86, $04
|05E551| db  -3,  15 : db $86, $44

.oam_groups_cloak
|05E555| db   0,   4 : db $84, $00
|05E559| db   0,   4 : db $82, $00

endpool

;---------------------------------------------------------------------------------------------------
; A fairly unorthodox routine
;---------------------------------------------------------------------------------------------------
SpriteDraw_Witch:
|05E55D| JSR GetScreenCoordinates_bank05
|05E560| JSL AllocateOAMDeferToPlayer_long

|05E564| LDA.w $0DC0,X
|05E567| STA.b $00
|05E569| STZ.b $01

|05E56B| PHX

|05E56C| REP #$30

|05E56E| ASL A
|05E56F| ASL A
|05E570| ASL A
|05E571| AND.w #$00FF
|05E574| TAX

|05E575| LDY.b $90
|05E577| LDA.w .oam_groups_stirring+0,X
|05E57A| CLC
|05E57B| ADC.w $0FA8
|05E57E| STA.w $0000,Y

|05E581| LDA.w .oam_groups_stirring+1,X
|05E584| CLC
|05E585| ADC.w $0FA9
|05E588| STA.w $0001,Y

|05E58B| LDA.w .oam_groups_stirring+2,X
|05E58E| ORA.b $04
|05E590| STA.w $0002,Y

|05E593| LDA.w .oam_groups_stirring+4,X
|05E596| CLC
|05E597| ADC.w $0FA8
|05E59A| STA.w $0004,Y

|05E59D| LDA.w .oam_groups_stirring+5,X
|05E5A0| CLC
|05E5A1| ADC.w $0FA9
|05E5A4| STA.w $0005,Y

|05E5A7| LDA.w .oam_groups_stirring+6,X
|05E5AA| ORA.b $04
|05E5AC| STA.w $0006,Y

;---------------------------------------------------------------------------------------------------

|05E5AF| LDX.w #$0000

|05E5B2| LDA.w #$0002
|05E5B5| STA.b $0E

.next_body_object
|05E5B7| LDA.w .oam_groups_body+0,X
|05E5BA| CLC
|05E5BB| ADC.w $0FA8
|05E5BE| STA.w $0008,Y

|05E5C1| LDA.w .oam_groups_body+1,X
|05E5C4| CLC
|05E5C5| ADC.w $0FA9
|05E5C8| STA.w $0009,Y

|05E5CB| LDA.w .oam_groups_body+2,X
|05E5CE| EOR.b $04
|05E5D0| STA.w $000A,Y

|05E5D3| INX ; +4
|05E5D4| INX
|05E5D5| INX
|05E5D6| INX

|05E5D7| INY ; +4
|05E5D8| INY
|05E5D9| INY
|05E5DA| INY

|05E5DB| DEC.b $0E
|05E5DD| BPL .next_body_object

|05E5DF| LDA.b $00
|05E5E1| SEC
|05E5E2| SBC.w #$0003
|05E5E5| CMP.w #$0003
|05E5E8| BCC .second_cloak

|05E5EA| LDX.w #$0000
|05E5ED| BRA .first_cloak

;---------------------------------------------------------------------------------------------------

.second_cloak
|05E5EF| LDX.w #$0004

.first_cloak
|05E5F2| LDA.w .oam_groups_cloak+0,X
|05E5F5| CLC
|05E5F6| ADC.w $0FA8
|05E5F9| STA.w $0008,Y

|05E5FC| LDA.w .oam_groups_cloak+1,X
|05E5FF| CLC
|05E600| ADC.w $0FA9
|05E603| STA.w $0009,Y

|05E606| LDA.w .oam_groups_cloak+2,X
|05E609| ORA.b $04
|05E60B| STA.w $000A,Y

|05E60E| LDY.b $92

|05E610| LDA.w #$0000
|05E613| STA.w $0000,Y

|05E616| LDA.w #$0202
|05E619| STA.w $0002,Y
|05E61C| STA.w $0004,Y

|05E61F| SEP #$30

|05E621| PLX

|05E622| LDA.b #$05
|05E624| LDY.b #$FF
|05E626| JSL CorrectOAMEntries_long

|05E62A| RTS

;===================================================================================================

Sprite_38_EyeStatue:
|05E62B| PHB
|05E62C| PHK
|05E62D| PLB

|05E62E| JSR .main

|05E631| PLB

|05E632| RTL

;---------------------------------------------------------------------------------------------------

.main
|05E633| LDA.w $0DA0,X
|05E636| BNE .exit

|05E638| JSL GetScreenCoordinates_long
|05E63C| JSR CheckIfActive_bank05
|05E63F| JSR GetDirectionTowardsLink_bank05

|05E642| CPY.b #$02
|05E644| BNE .exit

|05E646| LDA.w $0BB0,X
|05E649| CMP.b #$09
|05E64B| BNE .exit

|05E64D| INC.w $0642

|05E650| LDA.b #$01
|05E652| STA.w $0DA0,X

.exit
|05E655| RTS

;===================================================================================================

UNREACHABLE_05E656:
|05E656| RTL

;===================================================================================================
; Decelerates X and Y speeds
;===================================================================================================
UNREACHABLE_05E657:
|05E657| LDA.w $0D50,X
|05E65A| BEQ .set_speed
|05E65C| BPL .positive

|05E65E| INC A
|05E65F| BRA .set_speed

.positive
|05E661| DEC A

.set_speed
|05E662| STA.w $0D50,X

|05E665| RTL

;===================================================================================================

UNREACHABLE_05E666:
|05E666| LDA.w $0D40,X
|05E669| BEQ .set_speed
|05E66B| BPL .positive

|05E66D| INC A
|05E66E| BRA .set_speed

.positive
|05E670| DEC A

.set_speed
|05E671| STA.w $0D40,X

|05E674| RTL

;===================================================================================================

SpritePrep_Snitch:
|05E675| PHB
|05E676| PHK
|05E677| PLB

|05E678| JSR .main

|05E67B| PLB

|05E67C| RTL

;---------------------------------------------------------------------------------------------------

.main
|05E67D| LDA.b #$02
|05E67F| STA.w $0DE0,X
|05E682| STA.w $0EB0,X

|05E685| INC.w $0BA0,X

|05E688| LDA.w $0D10,X
|05E68B| STA.w $0D90,X

|05E68E| LDA.w $0D30,X
|05E691| STA.w $0DA0,X

|05E694| LDA.b #$F7
|05E696| STA.w $0D50,X

|05E699| RTS

;===================================================================================================

Sprite_3D_OldSnitch:
|05E69A| PHB
|05E69B| PHK
|05E69C| PLB

|05E69D| JSR .main

|05E6A0| PLB

|05E6A1| RTL

;---------------------------------------------------------------------------------------------------

#SnitchSpeedX:
|05E6A2| db $00, $00, $F7, $09

#SnitchSpeedY:
|05E6A6| db $F7, $09, $00, $00

;---------------------------------------------------------------------------------------------------

.main
|05E6AA| LDA.w $0E30,X
|05E6AD| BEQ .not_chicken_lady

|05E6AF| JSL ChickenLady

|05E6B3| RTS

;---------------------------------------------------------------------------------------------------

.not_chicken_lady
|05E6B4| LDA.w $0D80,X
|05E6B7| CMP.b #$03
|05E6B9| BCS Snitch_Main

|05E6BB| JSL SpriteDraw_RaceGameLady

;===================================================================================================

Snitch_Main:
|05E6BF| JSR CheckIfActive_bank05
|05E6C2| LDA.w $0D80,X
|05E6C5| CMP.b #$03
|05E6C7| BCS .continue

|05E6C9| LDA.b $1B
|05E6CB| BEQ .outdoors

;---------------------------------------------------------------------------------------------------

|05E6CD| JSL TrackBodyToHead
|05E6D1| JSR GetDirectionTowardsLink_bank05

|05E6D4| TYA
|05E6D5| EOR.b #$03
|05E6D7| STA.w $0EB0,X

|05E6DA| LDA.b #$AB ; MESSAGE 00AB
|05E6DC| LDY.b #$00
|05E6DE| JSL ShowSolicitedMessage

|05E6E2| RTS

;---------------------------------------------------------------------------------------------------

.outdoors
|05E6E3| LDA.w $0D80,X
|05E6E6| BNE .ignore_contact

|05E6E8| JSL CheckDamageToLink_same_layer_long
|05E6EC| BCS .face_away

.ignore_contact
|05E6EE| JSL TrackBodyToHead
|05E6F2| BCC .short_timer

|05E6F4| JSR MoveSpriteXY_bank05

;---------------------------------------------------------------------------------------------------

.continue
|05E6F7| LDA.w $0D80,X
|05E6FA| JSL JumpTableLocal
|05E6FE| dw Snitch_Meander
|05E700| dw Snitch_FreakOut
|05E702| dw Snitch_OpenDoor
|05E704| dw Snitch_SlamDoor

;---------------------------------------------------------------------------------------------------

.face_away
|05E706| JSR GetDirectionTowardsLink_bank05
|05E709| TYA
|05E70A| EOR.b #$03
|05E70C| STA.w $0DE0,X

.short_timer
|05E70F| LDA.b #$01
|05E711| STA.w $0DF0,X

|05E714| BRA .continue

;===================================================================================================

pool Snitch_Meander

.max_displacement_low
|05E716| db -32,  32

.max_displacement_high
|05E718| db  -1,   0

endpool

;---------------------------------------------------------------------------------------------------

Snitch_Meander:
|05E71A| LDA.w $0DF0,X
|05E71D| BNE .dont_turn_around

|05E71F| LDY.w $0DB0,X

|05E722| LDA.w $0D90,X
|05E725| CLC
|05E726| ADC.w .max_displacement_low,Y
|05E729| CMP.w $0D10,X
|05E72C| BNE .dont_turn_around

|05E72E| LDA.w $0D90,X
|05E731| CLC
|05E732| ADC.w .max_displacement_low,Y

|05E735| LDA.w $0DA0,X
|05E738| ADC.w .max_displacement_high,Y
|05E73B| CMP.w $0D30,X
|05E73E| BNE .dont_turn_around

;---------------------------------------------------------------------------------------------------

|05E740| LDA.w $0DE0,X
|05E743| EOR.b #$01
|05E745| STA.w $0EB0,X

|05E748| TAY

|05E749| LDA.w SnitchSpeedX,Y
|05E74C| STA.w $0D50,X

|05E74F| LDA.w SnitchSpeedY,Y
|05E752| STA.w $0D40,X

|05E755| LDA.w $0DB0,X
|05E758| EOR.b #$01
|05E75A| STA.w $0DB0,X

;---------------------------------------------------------------------------------------------------

.dont_turn_around
|05E75D| TXA
|05E75E| EOR.b $1A

|05E760| LSR A
|05E761| LSR A
|05E762| LSR A
|05E763| LSR A

|05E764| AND.b #$01
|05E766| STA.w $0DC0,X

|05E769| LDA.w $0F60,X
|05E76C| PHA

|05E76D| LDA.b #$03
|05E76F| STA.w $0F60,X

|05E772| LDA.b #$2D ; MESSAGE 002D
|05E774| LDY.b #$00
|05E776| JSL ShowMessageOnContact

|05E77A| TAY

|05E77B| PLA
|05E77C| STA.w $0F60,X
|05E77F| BCC .exit

|05E781| TYA
|05E782| STA.w $0DE0,X

|05E785| JSL CallThePolice
|05E789| INC.w $0D80,X

.exit
|05E78C| RTS

;===================================================================================================

Snitch_FreakOut:
|05E78D| STZ.w $0EB0,X

|05E790| LDY.w $0FDE

|05E793| LDA.w $0B18,Y
|05E796| STA.b $00

|05E798| LDA.w $0B20,Y
|05E79B| STA.b $01

|05E79D| LDA.w $0D00,X
|05E7A0| STA.b $02

|05E7A2| LDA.w $0D20,X
|05E7A5| STA.b $03

|05E7A7| REP #$20

|05E7A9| LDA.b $00
|05E7AB| CMP.b $02

|05E7AD| SEP #$30

|05E7AF| BCC .not_at_door_yet

;---------------------------------------------------------------------------------------------------

|05E7B1| INC.w $0D80,X

|05E7B4| STZ.w $0D50,X
|05E7B7| STZ.w $0D40,X

|05E7BA| LDA.b #$02
|05E7BC| STA.w $0F60,X

|05E7BF| LDA.w $0B08,Y
|05E7C2| STA.b $02

|05E7C4| LDA.w $0B10,Y
|05E7C7| STA.b $03

|05E7C9| PHX

|05E7CA| REP #$30

|05E7CC| LDA.b $00
|05E7CE| SEC
|05E7CF| SBC.w $0708
|05E7D2| AND.w $070A

|05E7D5| ASL A
|05E7D6| ASL A
|05E7D7| ASL A

|05E7D8| STA.b $04

|05E7DA| LDA.b $02
|05E7DC| LSR A
|05E7DD| LSR A
|05E7DE| LSR A

|05E7DF| SEC
|05E7E0| SBC.w $070C

|05E7E3| AND.w $070E
|05E7E6| CLC
|05E7E7| ADC.b $04
|05E7E9| TAX

|05E7EA| CLC
|05E7EB| JSL DrawWoodenDoor

|05E7EF| PLX

|05E7F0| LDA.b #$10
|05E7F2| STA.w $0DF0,X

|05E7F5| RTS

;---------------------------------------------------------------------------------------------------

.not_at_door_yet
|05E7F6| LDA.b #$01
|05E7F8| STA.w $02E4

|05E7FB| LDA.w $0B08,Y
|05E7FE| STA.b $04

|05E800| LDA.w $0B10,Y
|05E803| STA.b $05

|05E805| LDA.w $0B18,Y
|05E808| STA.b $06

|05E80A| LDA.w $0B20,Y
|05E80D| STA.b $07

|05E80F| LDA.b #$40
|05E811| JSL ProjectSpriteSpeedTowardsLocation_long

|05E815| LDA.b $00
|05E817| STA.w $0D40,X

|05E81A| LDA.b $01
|05E81C| STA.w $0D50,X

|05E81F| STZ.w $0DE0,X
|05E822| STZ.w $0EB0,X

|05E825| TXA
|05E826| EOR.b $1A
|05E828| LSR A
|05E829| LSR A
|05E82A| LSR A
|05E82B| AND.b #$01
|05E82D| STA.w $0DC0,X

|05E830| RTS

;===================================================================================================

Snitch_OpenDoor:
|05E831| LDA.w $0DF0,X
|05E834| BNE .delay

|05E836| LDY.w $0FDE

|05E839| LDA.w $0B18,Y
|05E83C| STA.w $0D00,X
|05E83F| STA.b $00

|05E841| LDA.w $0B20,Y
|05E844| STA.w $0D20,X
|05E847| STA.b $01

|05E849| LDA.w $0B08,Y
|05E84C| STA.w $0D10,X
|05E84F| STA.b $02

|05E851| LDA.w $0B10,Y
|05E854| STA.w $0D30,X
|05E857| STA.b $03

|05E859| PHX

|05E85A| REP #$30

|05E85C| LDA.b $00
|05E85E| SEC
|05E85F| SBC.w $0708
|05E862| AND.w $070A

|05E865| ASL A
|05E866| ASL A
|05E867| ASL A

|05E868| STA.b $04

|05E86A| LDA.b $02
|05E86C| LSR A
|05E86D| LSR A
|05E86E| LSR A

|05E86F| SEC
|05E870| SBC.w $070C
|05E873| AND.w $070E

|05E876| CLC
|05E877| ADC.b $04
|05E879| TAX

|05E87A| SEC
|05E87B| JSL DrawWoodenDoor

|05E87F| PLX

|05E880| INC.w $0D80,X

.delay
|05E883| JSR MoveSpriteXY_bank05

|05E886| RTS

;===================================================================================================

Snitch_SlamDoor:
|05E887| STZ.w $0DD0,X
|05E88A| STZ.w $02E4

|05E88D| RTS

;===================================================================================================

SpritePrep_RunningBoy:
|05E88E| PHB
|05E88F| PHK
|05E890| PLB

|05E891| JSR .main

|05E894| PLB

|05E895| RTL

;---------------------------------------------------------------------------------------------------

.main
|05E896| LDA.b #$02
|05E898| STA.w $0EB0,X
|05E89B| STA.w $0DE0,X

|05E89E| INC.w $0BA0,X

|05E8A1| RTS

;===================================================================================================

Sprite_74_RunningBoy:
|05E8A2| PHB
|05E8A3| PHK
|05E8A4| PLB

|05E8A5| JSR .main

|05E8A8| PLB

|05E8A9| RTL

;---------------------------------------------------------------------------------------------------

#RunningBoySpeedX:
|05E8AA| db   0,   0, -54,  54

#RunningBoySpeedY:
|05E8AE| db -54,  54,   0,   0

;---------------------------------------------------------------------------------------------------

.main
|05E8B2| JSR SpriteDraw_RunningBoy
|05E8B5| JSR CheckIfActive_bank05

|05E8B8| JSL TrackBodyToHead
|05E8BC| JSL BehaveAsBarrier

|05E8C0| LDA.b #$FF
|05E8C2| STA.w $0E30,X

|05E8C5| JSR CheckSpriteTileCollision_bank05

|05E8C8| LDA.w $0F60,X
|05E8CB| PHA

|05E8CC| LDA.b #$07
|05E8CE| STA.w $0F60,X

|05E8D1| JSL CheckDamageToLink_same_layer_long
|05E8D5| BCC .no_contact

|05E8D7| LDA.w $0D80,X
|05E8DA| STA.w $0DB0,X

|05E8DD| LDA.b #$03
|05E8DF| STA.w $0D80,X

.no_contact
|05E8E2| PLA
|05E8E3| STA.w $0F60,X

|05E8E6| LDA.w $0D80,X
|05E8E9| JSL JumpTableLocal
|05E8ED| dw RunningBoy_Idle
|05E8EF| dw RunningBoy_RunLeft
|05E8F1| dw RunningBoy_RunRight
|05E8F3| dw RunningBoy_Caught

;===================================================================================================

pool RunningBoy_Idle

.speed_x
|05E8F5| db -24,  24

endpool

;---------------------------------------------------------------------------------------------------

RunningBoy_Idle:
|05E8F7| JSL TrackBodyToHead
|05E8FB| JSR GetDirectionTowardsLink_bank05

|05E8FE| TYA
|05E8FF| EOR.b #$03
|05E901| STA.w $0EB0,X

|05E904| JSL CheckDamageToLink_same_layer_long
|05E908| BCC .no_contact

|05E90A| JSL CancelDash_long
|05E90E| JSR GetDirectionTowardsLink_bank05

|05E911| TYA
|05E912| EOR.b #$03
|05E914| STA.w $0DE0,X

|05E917| EOR.b #$01
|05E919| ORA.b #$02
|05E91B| STA.w $0EB0,X

|05E91E| TAY

|05E91F| AND.b #$01
|05E921| INC A
|05E922| STA.w $0D80,X

|05E925| LDA.w .speed_x-2,Y
|05E928| STA.w $0D50,X

|05E92B| LDA.b #$20
|05E92D| STA.w $0DF0,X

|05E930| RTS

.no_contact
|05E931| STZ.w $0D50,X
|05E934| STZ.w $0D40,X

|05E937| RTS

;===================================================================================================

RunningBoy_Running:
|05E938| LDA.b $1A
|05E93A| LSR A
|05E93B| LSR A
|05E93C| LSR A
|05E93D| AND.b #$01
|05E93F| STA.w $0DC0,X

|05E942| JSR MoveSpriteXY_bank05

|05E945| RTS

;===================================================================================================

RunningBoy_RunLeft:
|05E946| LDA.w $0DF0,X
|05E949| BNE RunningBoy_Running

|05E94B| JSR RunningBoy_AnimateAndDust
|05E94E| JSR RunningBoy_RunAway

|05E951| LDA.w $0D90,X
|05E954| BNE RunningBoy_TickTimer

|05E956| LDA.b #$FF
|05E958| STA.w $0D90,X

|05E95B| LDA.b #$02
|05E95D| STA.w $0EB0,X

|05E960| RTS

;===================================================================================================

RunningBoy_TickTimer:
|05E961| DEC.w $0D90,X

|05E964| RTS

;===================================================================================================

RunningBoy_Relax:
|05E965| STZ.w $0D80,X
|05E968| STZ.w $0E80,X

|05E96B| RTS

;===================================================================================================

pool RunningBoy_RunRight

.timer
|05E96C| db 120,  24, 128

.direction
|05E96F| db $03, $01, $03, $FF

endpool

;---------------------------------------------------------------------------------------------------

RunningBoy_RunRight:
|05E973| LDA.w $0DF0,X
|05E976| BNE RunningBoy_Running

|05E978| JSR RunningBoy_AnimateAndDust
|05E97B| JSR RunningBoy_RunAway

|05E97E| LDA.w $0D90,X
|05E981| BNE RunningBoy_TickTimer

|05E983| LDY.w $0DA0,X

|05E986| INC.w $0DA0,X

|05E989| LDA.w .timer,Y
|05E98C| STA.w $0D90,X

|05E98F| LDA.w .direction,Y
|05E992| BMI RunningBoy_Relax

|05E994| STA.w $0EB0,X

|05E997| RTS

;===================================================================================================

RunningBoy_Caught:
|05E998| LDA.b #$A4 ; MESSAGE 00A4
|05E99A| LDY.b #$00
|05E99C| JSL ShowMessageUnconditional

; This is so weird... It basically checks for LINKSTATE 00 or LINKSTATE 01
; possibly a vestigial BCC
|05E9A0| BCC .no_talk

|05E9A2| STA.w $0DE0,X

.no_talk
|05E9A5| LDA.w $0DB0,X
|05E9A8| STA.w $0D80,X

|05E9AB| RTS

;===================================================================================================

RunningBoy_AnimateAndDust:
|05E9AC| JSL RunningBoy_SpawnDustGarnish

|05E9B0| LDA.b $1A
|05E9B2| LSR A
|05E9B3| LSR A
|05E9B4| AND.b #$01
|05E9B6| STA.w $0DC0,X

|05E9B9| RTS

;===================================================================================================

RunningBoy_RunAway:
|05E9BA| LDY.w $0EB0,X

|05E9BD| LDA.w RunningBoySpeedX,Y
|05E9C0| STA.w $0D50,X

|05E9C3| LDA.w RunningBoySpeedY,Y
|05E9C6| STA.w $0D40,X

|05E9C9| JSR MoveSpriteXY_bank05

|05E9CC| RTS

;===================================================================================================

pool SpriteDraw_RunningBoy

.oam_groups
; group00
|05E9CD| dw   0,  -8 : db $2C, $00, $00, $02
|05E9D5| dw   0,   0 : db $EE, $08, $00, $02

; group01
|05E9DD| dw   0,  -7 : db $2C, $00, $00, $02
|05E9E5| dw   0,   1 : db $EE, $48, $00, $02

; group02
|05E9ED| dw   0,  -8 : db $2A, $00, $00, $02
|05E9F5| dw   0,   0 : db $CA, $08, $00, $02

; group03
|05E9FD| dw   0,  -7 : db $2A, $00, $00, $02
|05EA05| dw   0,   1 : db $CA, $48, $00, $02

; group04
|05EA0D| dw   0,  -8 : db $2E, $00, $00, $02
|05EA15| dw   0,   0 : db $CC, $08, $00, $02

; group05
|05EA1D| dw   0,  -7 : db $2E, $00, $00, $02
|05EA25| dw   0,   1 : db $CE, $08, $00, $02

; group06
|05EA2D| dw   0,  -8 : db $2E, $40, $00, $02
|05EA35| dw   0,   0 : db $CC, $48, $00, $02

; group07
|05EA3D| dw   0,  -7 : db $2E, $40, $00, $02
|05EA45| dw   0,   1 : db $CE, $48, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_RunningBoy:
|05EA4D| LDA.b #$02
|05EA4F| STA.b $06
|05EA51| STZ.b $07

|05EA53| LDA.w $0DE0,X
|05EA56| ASL A
|05EA57| ADC.w $0DC0,X

|05EA5A| ASL A
|05EA5B| ASL A
|05EA5C| ASL A
|05EA5D| ASL A

|05EA5E| ADC.b #<.oam_groups
|05EA60| STA.b $08

|05EA62| LDA.b #>.oam_groups
|05EA64| ADC.b #$00
|05EA66| STA.b $09

|05EA68| JSL TabulatedSpriteDraw.player_deferred
|05EA6C| JSL DrawSpriteShadow_long

|05EA70| RTS

;===================================================================================================

Sprite_75_BottleMerchant:
|05EA71| PHB
|05EA72| PHK
|05EA73| PLB

|05EA74| JSR .main

|05EA77| PLB

|05EA78| RTL

;---------------------------------------------------------------------------------------------------

.main
|05EA79| JSR SpriteDraw_BottleMerchant

|05EA7C| LDA.b $03
|05EA7E| ORA.b $01
|05EA80| STA.w $0D90,X

|05EA83| JSR CheckIfActive_bank05

|05EA86| JSL SearchForFishToBuy
|05EA8A| JSL BehaveAsBarrier

|05EA8E| JSL CheckIfLinkIsBusy
|05EA92| BCC .cant_do_nothin

|05EA94| RTS

;---------------------------------------------------------------------------------------------------

.cant_do_nothin
|05EA95| JSL GetRandomNumber
|05EA99| BNE .dont_reset

|05EA9B| LDA.b #$01
|05EA9D| STA.w $0DC0,X

|05EAA0| LDA.b #$14
|05EAA2| STA.w $0DF0,X

.dont_reset
|05EAA5| LDA.w $0DF0,X
|05EAA8| BNE .delay

|05EAAA| STZ.w $0DC0,X

.delay
|05EAAD| LDA.w $0D80,X
|05EAB0| JSL JumpTableLocal
|05EAB4| dw BottleVendor_Idle
|05EAB6| dw BottleVendor_OfferSale
|05EAB8| dw BottleVendor_GrantBottle
|05EABA| dw BottleVendor_BuyingItem
|05EABC| dw BottleVendor_PayOut

;===================================================================================================

BottleVendor_OutOfStock:
|05EABE| LDA.b #$D2 ; MESSAGE 00D2
|05EAC0| LDY.b #$00
|05EAC2| JSL ShowSolicitedMessage

|05EAC6| RTS

;===================================================================================================

BottleVendor_Idle:
|05EAC7| LDA.w $0D90,X
|05EACA| BNE .no_trade

|05EACC| LDA.w $0E90,X
|05EACF| BEQ .no_trade

|05EAD1| LDA.b #$03
|05EAD3| STA.w $0D80,X

|05EAD6| RTS

;---------------------------------------------------------------------------------------------------

.no_trade
|05EAD7| LDA.l $7EF3C9
|05EADB| AND.b #$02
|05EADD| BNE BottleVendor_OutOfStock

;---------------------------------------------------------------------------------------------------

|05EADF| LDA.b #$CF ; MESSAGE 00CF
|05EAE1| LDY.b #$00
|05EAE3| JSL ShowSolicitedMessage
|05EAE7| BCC .exit

|05EAE9| INC.w $0D80,X

.exit
|05EAEC| RTS

;===================================================================================================

BottleVendor_OfferSale:
|05EAED| LDA.w $1CE8
|05EAF0| BNE .rejected

|05EAF2| REP #$20

|05EAF4| LDA.l $7EF360
|05EAF8| CMP.w #$0064 ; 100 rupees

|05EAFB| SEP #$30

|05EAFD| BCC .rejected

|05EAFF| LDA.b #$D0 ; MESSAGE 00D0
|05EB01| LDY.b #$00
|05EB03| JSL ShowMessageUnconditional

|05EB07| INC.w $0D80,X

|05EB0A| RTS

;---------------------------------------------------------------------------------------------------

.rejected
|05EB0B| LDA.b #$D1 ; MESSAGE 00D1
|05EB0D| LDY.b #$00
|05EB0F| JSL ShowMessageUnconditional

|05EB13| STZ.w $0D80,X

|05EB16| RTS

;===================================================================================================

BottleVendor_GrantBottle:
|05EB17| LDY.b #$16 ; ITEMGET 16

|05EB19| STZ.w $02E9

|05EB1C| PHX

|05EB1D| JSL GrantItemReceipt

|05EB21| PLX

|05EB22| LDA.l $7EF3C9
|05EB26| ORA.b #$02
|05EB28| STA.l $7EF3C9

|05EB2C| REP #$20

|05EB2E| LDA.l $7EF360
|05EB32| SEC
|05EB33| SBC.w #$0064 ; take 100 rupees
|05EB36| STA.l $7EF360

|05EB3A| SEP #$30

|05EB3C| STZ.w $0D80,X

|05EB3F| RTS

;===================================================================================================

BottleVendor_BuyingItem:
|05EB40| LDA.w $0E90,X
|05EB43| BMI .buying_fish

;---------------------------------------------------------------------------------------------------

.buying_bee
|05EB45| LDA.b #$D3 ; MESSAGE 00D3
|05EB47| LDY.b #$00
|05EB49| JSL ShowMessageUnconditional

|05EB4D| INC.w $0D80,X

|05EB50| RTS

;---------------------------------------------------------------------------------------------------

.buying_fish
|05EB51| LDA.b #$D4 ; MESSAGE 00D4
|05EB53| LDY.b #$00
|05EB55| JSL ShowMessageUnconditional

|05EB59| INC.w $0D80,X

|05EB5C| RTS

;===================================================================================================

BottleVendor_PayOut:
|05EB5D| LDY.w $0E90,X
|05EB60| BMI .buying_fish

;---------------------------------------------------------------------------------------------------

.buying_bee
|05EB62| DEY
|05EB63| LDA.b #$00
|05EB65| STA.w $0DD0,Y

|05EB68| JSL PurchaseGoldenBee

|05EB6C| STZ.w $0E90,X
|05EB6F| STZ.w $0D80,X

|05EB72| RTS

;---------------------------------------------------------------------------------------------------

.buying_fish
|05EB73| TYA
|05EB74| AND.b #$0F
|05EB76| TAY

|05EB77| LDA.b #$00
|05EB79| STA.w $0DD0,Y

|05EB7C| JSL PurchaseFloppingFish

|05EB80| STZ.w $0E90,X
|05EB83| STZ.w $0D80,X

|05EB86| RTS

;===================================================================================================

pool SpriteDraw_BottleMerchant

.oam_groups
; group00
|05EB87| dw   0,  -7 : db $AC, $00, $00, $02
|05EB8F| dw   0,   0 : db $88, $00, $00, $02

; group01
|05EB97| dw   0,  -6 : db $AC, $00, $00, $02
|05EB9F| dw   0,   0 : db $A2, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_BottleMerchant:
|05EBA7| LDA.b #$02
|05EBA9| STA.b $06
|05EBAB| STZ.b $07

|05EBAD| LDA.w $0DC0,X
|05EBB0| ASL A
|05EBB1| ASL A
|05EBB2| ASL A
|05EBB3| ASL A

|05EBB4| ADC.b #<.oam_groups
|05EBB6| STA.b $08

|05EBB8| LDA.b #>.oam_groups
|05EBBA| ADC.b #$00
|05EBBC| STA.b $09

|05EBBE| JSL TabulatedSpriteDraw.player_deferred
|05EBC2| JSL DrawSpriteShadow_long

|05EBC6| RTS

;===================================================================================================

SpritePrep_Zelda:
|05EBC7| PHB
|05EBC8| PHK
|05EBC9| PLB

|05EBCA| JSR .main

|05EBCD| PLB

|05EBCE| RTL

;---------------------------------------------------------------------------------------------------

.main
|05EBCF| LDA.l $7EF359
|05EBD3| CMP.b #$02
|05EBD5| BCS .have_master_sword

|05EBD7| INC.w $0BA0,X

|05EBDA| JSR GetDirectionTowardsLink_bank05

|05EBDD| TYA
|05EBDE| EOR.b #$03
|05EBE0| STA.w $0EB0,X
|05EBE3| STA.w $0DE0,X

|05EBE6| LDA.l $7EF3CC
|05EBEA| PHA

|05EBEB| LDA.b #$01 ; FOLLOWER 01
|05EBED| STA.l $7EF3CC

|05EBF1| PHX

|05EBF2| JSL LoadFollowerGraphics

|05EBF6| PLX

|05EBF7| PLA
|05EBF8| STA.l $7EF3CC

|05EBFC| LDA.b $A0
|05EBFE| CMP.b #$12 ; ROOM 0012
|05EC00| BNE .not_sanc

|05EC02| LDA.b #$02
|05EC04| STA.w $0E80,X

|05EC07| LDA.l $7EF3C6
|05EC0B| AND.b #$04
|05EC0D| BNE .rescued_already

.have_master_sword
|05EC0F| STZ.w $0DD0,X

|05EC12| RTS

;---------------------------------------------------------------------------------------------------

.rescued_already
|05EC13| LDA.w $0D00,X
|05EC16| CLC
|05EC17| ADC.b #$0F
|05EC19| STA.w $0D00,X

|05EC1C| LDA.w $0D20,X
|05EC1F| ADC.b #$00
|05EC21| STA.w $0D20,X

|05EC24| LDA.w $0D10,X
|05EC27| CLC
|05EC28| ADC.b #$06
|05EC2A| STA.w $0D10,X

|05EC2D| LDA.b #$03
|05EC2F| STA.w $0F60,X

|05EC32| RTS

;---------------------------------------------------------------------------------------------------

.not_sanc
|05EC33| LDA.b #$00
|05EC35| STA.w $0E80,X

|05EC38| LDA.l $7EF3CC
|05EC3C| CMP.b #$01 ; FOLLOWER 01
|05EC3E| BEQ .already_following

|05EC40| LDA.l $7EF3C6
|05EC44| AND.b #$04
|05EC46| BEQ .exit

.already_following
|05EC48| STZ.w $0DD0,X

.exit
|05EC4B| RTS

;===================================================================================================

Priest_SpawnRescuedPrincess:
|05EC4C| LDA.b #$76 ; SPRITE 76
|05EC4E| JSL SpawnSpriteDynamically

|05EC52| PHX

|05EC53| LDX.w $02CF

|05EC56| LDA.w $1A64,X
|05EC59| AND.b #$03
|05EC5B| STA.w $0EB0,Y
|05EC5E| STA.w $0DE0,Y

|05EC61| LDA.b $20
|05EC63| STA.w $0D00,Y

|05EC66| LDA.b $21
|05EC68| STA.w $0D20,Y

|05EC6B| LDA.b $22
|05EC6D| STA.w $0D10,Y

|05EC70| LDA.b $23
|05EC72| STA.w $0D30,Y

|05EC75| LDA.b #$01
|05EC77| STA.w $0E80,Y

|05EC7A| LDA.b #$00
|05EC7C| STA.l $7EF3CC

|05EC80| LDA.w $0BA0,Y
|05EC83| INC A
|05EC84| STA.w $0BA0,Y

|05EC87| LDA.b #$03
|05EC89| STA.w $0F60,Y

|05EC8C| PLX

|05EC8D| RTS

;===================================================================================================

ZeldaSpeed_X:
|05EC8E| db   0,   0,  -9,   9

ZeldaSpeed_Y:
|05EC92| db  -9,   9,   0,   0

;===================================================================================================

Sprite_76_Zelda:
|05EC96| PHB
|05EC97| PHK
|05EC98| PLB

|05EC99| JSR .main

|05EC9C| PLB

|05EC9D| RTL

;---------------------------------------------------------------------------------------------------

.main
|05EC9E| JSL SpriteDraw_Maiden
|05ECA2| JSR CheckIfActive_bank05

|05ECA5| JSL BehaveAsBarrier
|05ECA9| JSL TrackBodyToHead
|05ECAD| BCC .dont_move

|05ECAF| JSR MoveSpriteXY_bank05

.dont_move
|05ECB2| LDA.w $0E80,X
|05ECB5| JSL JumpTableLocal
|05ECB9| dw Zelda_InCell
|05ECBB| dw Zelda_EnteringSanctuary
|05ECBD| dw Zelda_AtSanctuary

;===================================================================================================

Zelda_InCell:
|05ECBF| JSR GetDirectionTowardsLink_bank05

|05ECC2| TYA
|05ECC3| EOR.b #$03
|05ECC5| STA.w $0EB0,X

|05ECC8| LDA.w $0D80,X
|05ECCB| JSL JumpTableLocal
|05ECCF| dw Zelda_WaitingInCell
|05ECD1| dw Zelda_ApproachHero
|05ECD3| dw Zelda_DebaseAgahnim
|05ECD5| dw Zelda_VerifyAttentionSpan
|05ECD7| dw Zelda_BecomeFollower

;===================================================================================================

Zelda_WaitingInCell:
|05ECD9| JSL CheckDamageToLink_same_layer_long
|05ECDD| BCC .exit

|05ECDF| INC.w $0D80,X
|05ECE2| INC.w $02E4

|05ECE5| LDY.w $0EB0,X

|05ECE8| LDA.w ZeldaSpeed_X,Y
|05ECEB| STA.w $0D50,X

|05ECEE| LDA.w ZeldaSpeed_Y,Y
|05ECF1| STA.w $0D40,X

|05ECF4| LDA.b #$10
|05ECF6| STA.w $0DF0,X

.exit
|05ECF9| RTS

;===================================================================================================

Zelda_ApproachHero:
|05ECFA| LDA.w $0DF0,X
|05ECFD| BNE .delay

|05ECFF| INC.w $0D80,X

|05ED02| LDA.b #$1A ; MESSAGE 001A
|05ED04| LDY.b #$00
|05ED06| JSL ShowMessageUnconditional

|05ED0A| STZ.w $0D50,X
|05ED0D| STZ.w $0D40,X

|05ED10| LDA.b #$19 ; SONG 19
|05ED12| STA.w $012C

.delay
|05ED15| LDA.b $1A
|05ED17| LSR A
|05ED18| LSR A
|05ED19| LSR A
|05ED1A| AND.b #$01
|05ED1C| STA.w $0DC0,X

|05ED1F| RTS

;===================================================================================================

Zelda_DebaseAgahnim:
|05ED20| INC.w $0D80,X

|05ED23| LDA.b #$23 ; MESSAGE 0023
|05ED25| LDY.b #$00
|05ED27| JSL ShowMessageUnconditional

|05ED2B| RTS

;===================================================================================================

Zelda_VerifyAttentionSpan:
|05ED2C| LDA.w $1CE8
|05ED2F| BNE .moron

|05ED31| LDA.b #$22 ; MESSAGE 0022
|05ED33| LDY.b #$00
|05ED35| JSL ShowMessageUnconditional

|05ED39| INC.w $0D80,X

|05ED3C| RTS

.moron
|05ED3D| LDA.b #$02
|05ED3F| STA.w $0D80,X

|05ED42| RTS

;===================================================================================================

Zelda_BecomeFollower:
|05ED43| STZ.w $02E4

|05ED46| LDA.b #$02
|05ED48| STA.l $7EF3C8

|05ED4C| JSL SaveDeathCount

|05ED50| LDA.b #$01 ; FOLLOWER 01
|05ED52| STA.l $7EF3CC

|05ED56| PHX

|05ED57| JSL FullyUpdateRoomFlags
|05ED5B| JSL BecomeFollower

|05ED5F| PLX

|05ED60| STZ.w $0DD0,X

|05ED63| LDA.b #$10 ; SONG 10
|05ED65| STA.w $012C

|05ED68| RTS

;===================================================================================================

Zelda_EnteringSanctuary:
|05ED69| LDA.w $0D80,X
|05ED6C| JSL JumpTableLocal
|05ED70| dw Zelda_EnterSanctuary
|05ED72| dw Zelda_TalkHeadOff
|05ED74| dw Zelda_WellWishes

;===================================================================================================

pool Zelda_EnterSanctuary

.timer
|05ED76| db  38,  26,  44,   1

.direction
|05ED7A| db $01, $03, $01, $02

endpool

;---------------------------------------------------------------------------------------------------

Zelda_EnterSanctuary:
|05ED7E| LDA.w $0DF0,X
|05ED81| BNE .walking

|05ED83| LDY.w $0D90,X
|05ED86| CPY.b #$04
|05ED88| BCC .turn

|05ED8A| INC.w $0D80,X

|05ED8D| STZ.w $0DE0,X
|05ED90| STZ.w $0EB0,X
|05ED93| STZ.w $0D50,X
|05ED96| STZ.w $0D40,X

|05ED99| RTS

.turn
|05ED9A| LDA.w .timer,Y
|05ED9D| STA.w $0DF0,X

|05EDA0| LDA.w .direction,Y
|05EDA3| STA.w $0EB0,X
|05EDA6| STA.w $0DE0,X

|05EDA9| INC.w $0D90,X

|05EDAC| TAY

|05EDAD| LDA.w ZeldaSpeed_X,Y
|05EDB0| STA.w $0D50,X

|05EDB3| LDA.w ZeldaSpeed_Y,Y
|05EDB6| STA.w $0D40,X

;---------------------------------------------------------------------------------------------------

.walking
|05EDB9| LDA.b $1A
|05EDBB| LSR A
|05EDBC| LSR A
|05EDBD| LSR A
|05EDBE| AND.b #$01
|05EDC0| STA.w $0DC0,X

|05EDC3| RTS

;===================================================================================================

Zelda_TalkHeadOff:
|05EDC4| LDA.b #$1B ; MESSAGE 001B
|05EDC6| LDY.b #$00
|05EDC8| JSL ShowMessageUnconditional

|05EDCC| INC.w $0D80,X

|05EDCF| LDA.b #$02
|05EDD1| STA.l $7FFE01

|05EDD5| LDA.b #$01
|05EDD7| STA.l $7EF3C8

|05EDDB| JSL SaveDeathCount

|05EDDF| LDA.b #$02
|05EDE1| STA.l $7EF3C5

|05EDE5| PHX

|05EDE6| JSL ConfigureSpriteSet_light_world_only

|05EDEA| PLX

|05EDEB| RTS

;===================================================================================================

Zelda_WellWishes:
|05EDEC| JSR GetDirectionTowardsLink_bank05

|05EDEF| TYA
|05EDF0| EOR.b #$03
|05EDF2| STA.w $0EB0,X

|05EDF5| LDA.b #$1C ; MESSAGE 001C
|05EDF7| LDY.b #$00
|05EDF9| JSL ShowSolicitedMessage
|05EDFD| BCC .exit

|05EDFF| STA.w $0DE0,X
|05EE02| STA.w $0EB0,X

.exit
|05EE05| RTS

;===================================================================================================

pool Zelda_AtSanctuary

.message_low
|05EE06| db $1C ; MESSAGE 001C
|05EE07| db $24 ; MESSAGE 0024
|05EE08| db $25 ; MESSAGE 0025

.message_high
|05EE09| db $00
|05EE0A| db $00
|05EE0B| db $00

endpool

;---------------------------------------------------------------------------------------------------

Zelda_AtSanctuary:
|05EE0C| JSR GetDirectionTowardsLink_bank05

|05EE0F| TYA
|05EE10| EOR.b #$03
|05EE12| STA.w $0EB0,X

|05EE15| LDY.b #$00

|05EE17| LDA.l $7EF374
|05EE1B| AND.b #$07
|05EE1D| CMP.b #$07
|05EE1F| BNE .missing_pendants

|05EE21| LDY.b #$02
|05EE23| BRA .set_message

.missing_pendants
|05EE25| LDA.l $7EF3C7
|05EE29| CMP.b #$03
|05EE2B| BCC .set_message

|05EE2D| LDY.b #$01

.set_message
|05EE2F| LDA.w .message_low,Y
|05EE32| XBA

|05EE33| LDA.w .message_high,Y
|05EE36| TAY

|05EE37| XBA
|05EE38| JSL ShowSolicitedMessage
|05EE3C| BCC .exit

|05EE3E| STA.w $0DE0,X
|05EE41| STA.w $0EB0,X

; kissy kissy
|05EE44| LDA.b #$A0
|05EE46| STA.l $7EF372

.exit
|05EE4A| RTS

;===================================================================================================

SpritePrep_Mushroom:
|05EE4B| PHB
|05EE4C| PHK
|05EE4D| PLB

|05EE4E| JSR .main

|05EE51| PLB

|05EE52| RTL

;---------------------------------------------------------------------------------------------------

.main
|05EE53| LDA.l $7EF344
|05EE57| CMP.b #$02
|05EE59| BCC .no_powder

|05EE5B| STZ.w $0DD0,X

|05EE5E| RTS

.no_powder
|05EE5F| LDA.b #$00
|05EE61| STA.w $0DC0,X

|05EE64| LDA.b #$08
|05EE66| ORA.w $0F50,X
|05EE69| STA.w $0F50,X

|05EE6C| INC.w $0BA0,X

|05EE6F| RTS

;===================================================================================================

Sprite_E7_Mushroom:
|05EE70| PHB
|05EE71| PHK
|05EE72| PLB

|05EE73| JSR .main

|05EE76| PLB

|05EE77| RTL

;---------------------------------------------------------------------------------------------------

.main
|05EE78| JSL SpriteDraw_SingleLarge_long
|05EE7C| JSL CheckIfLinkIsBusy
|05EE80| BCS .exit

|05EE82| JSL CheckDamageToLink_same_layer_long
|05EE86| BCC .not_foraged

|05EE88| STZ.w $0DD0,X

|05EE8B| PHX

|05EE8C| LDY.b #$29 ; ITEMGET 29
|05EE8E| STZ.w $02E9
|05EE91| JSL GrantItemReceipt

|05EE95| PLX

|05EE96| RTS

;---------------------------------------------------------------------------------------------------

.not_foraged
|05EE97| LDA.b $1A
|05EE99| AND.b #$1F
|05EE9B| BNE .exit

|05EE9D| LDA.w $0F50,X
|05EEA0| EOR.b #$40
|05EEA2| STA.w $0F50,X

.exit
|05EEA5| RTS

;===================================================================================================
; 10/10 routine
;===================================================================================================
SpritePrep_FakeMasterSword:
|05EEA6| RTL

;===================================================================================================

Sprite_E8_FakeMasterSword:
|05EEA7| PHB
|05EEA8| PHK
|05EEA9| PLB

|05EEAA| JSR .main

|05EEAD| PLB

|05EEAE| RTL

;---------------------------------------------------------------------------------------------------

.main
|05EEAF| JSR SpriteDraw_FakeMasterSword
|05EEB2| JSR CheckIfActivePermissive_bank05

|05EEB5| LDA.l $7FFA1C,X
|05EEB9| CMP.b #$03
|05EEBB| BNE .held

|05EEBD| LDA.w $0DB0,X
|05EEC0| BNE .exit

|05EEC2| INC.w $0DB0,X

|05EEC5| LDA.b #$6D ; MESSAGE 006D
|05EEC7| LDY.b #$00
|05EEC9| JSL ShowMessageUnconditional

.exit
|05EECD| RTS

.held
|05EECE| JSR MoveSpriteXY_bank05
|05EED1| JSL ThrownSprite_TileAndSpriteInteraction_long

|05EED5| RTS

;===================================================================================================

pool SpriteDraw_FakeMasterSword

.oam_groups
|05EED6| dw   4,   0 : db $F4, $00, $00, $00
|05EEDE| dw   4,   8 : db $F5, $00, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_FakeMasterSword:
|05EEE6| LDA.b #$02
|05EEE8| STA.b $06
|05EEEA| STZ.b $07

|05EEEC| LDA.b #<.oam_groups
|05EEEE| STA.b $08

|05EEF0| LDA.b #>.oam_groups
|05EEF2| STA.b $09

|05EEF4| JSL TabulatedSpriteDraw.player_deferred

|05EEF8| RTS

;===================================================================================================

HeartPieceMessage:
.low
|05EEF9| db $56 ; MESSAGE 0156
|05EEFA| db $53 ; MESSAGE 0153
|05EEFB| db $54 ; MESSAGE 0154
|05EEFC| db $55 ; MESSAGE 0155

.high
|05EEFD| db $01
|05EEFE| db $01
|05EEFF| db $01
|05EF00| db $01

;===================================================================================================

SpritePrep_HeartContainer:
|05EF01| PHB
|05EF02| PHK
|05EF03| PLB

|05EF04| JSR .main

|05EF07| PLB

|05EF08| RTL

;---------------------------------------------------------------------------------------------------

.main
|05EF09| LDA.b $1B
|05EF0B| BNE .indoors

|05EF0D| LDA.b $8A
|05EF0F| CMP.b #$3B ; OW 3B
|05EF11| BNE .not_dam_screen

|05EF13| LDA.l $7EF2BB
|05EF17| AND.b #$20
|05EF19| BEQ .collected

.not_dam_screen
|05EF1B| PHX

|05EF1C| LDX.b $8A

|05EF1E| LDA.l $7EF280,X
|05EF22| AND.b #$40
|05EF24| BEQ .not_collected

|05EF26| PLX

.collected
|05EF27| STZ.w $0DD0,X

|05EF2A| RTS

;---------------------------------------------------------------------------------------------------

.not_collected
|05EF2B| PLX

|05EF2C| RTS

;---------------------------------------------------------------------------------------------------

.indoors
|05EF2D| LDA.w $0D30,X
|05EF30| AND.b #$01
|05EF32| TAY

|05EF33| LDA.w $0403
|05EF36| AND.w HeartRoomFlags,Y
|05EF39| BEQ .exit

|05EF3B| STZ.w $0DD0,X

.exit
|05EF3E| RTS

;===================================================================================================

Sprite_EA_HeartContainer:
|05EF3F| PHB
|05EF40| PHK
|05EF41| PLB

|05EF42| JSR .main

|05EF45| PLB

|05EF46| RTL

;---------------------------------------------------------------------------------------------------

.main
|05EF47| LDA.w $040C
|05EF4A| CMP.b #$1A ; DUNGEON 1A
|05EF4C| BNE .not_ganons_tower

|05EF4E| STZ.w $0DD0,X

|05EF51| RTS

.not_ganons_tower
|05EF52| LDA.w $0ED0,X
|05EF55| STA.w $0BA0,X
|05EF58| BNE .gfx_loaded

|05EF5A| LDA.b #$03

|05EF5C| PHX

|05EF5D| JSL WriteTo4BPPBuffer_item_gfx

|05EF61| PLX

|05EF62| JSL Get16BitSpriteCoords_long

|05EF66| INC.w $0ED0,X

.gfx_loaded
|05EF69| LDA.w $048E
|05EF6C| CMP.b #$06 ; ROOM 0006
|05EF6E| BNE .no_water_ripple

|05EF70| LDA.w $0F70,X
|05EF73| BNE .no_water_ripple

|05EF75| JSL SpriteDraw_WaterRipple_WithOAMAdjust_long

.no_water_ripple
|05EF79| JSL SpriteDraw_SingleLarge_long
|05EF7D| JSR CheckIfActive_bank05

|05EF80| DEC.w $0F80,X
|05EF83| DEC.w $0F80,X

|05EF86| JSR MoveSpriteZ_bank05

|05EF89| LDA.w $0F70,X
|05EF8C| BPL .continue

|05EF8E| STZ.w $0F70,X

|05EF91| LDA.w $0F80,X
|05EF94| EOR.b #$FF
|05EF96| INC A

|05EF97| LSR A
|05EF98| LSR A
|05EF99| STA.w $0F80,X

|05EF9C| LDA.w $048E
|05EF9F| CMP.b #$06 ; ROOM 0006
|05EFA1| BNE .continue

|05EFA3| LDA.w $0E30,X
|05EFA6| BNE .continue

|05EFA8| LDA.w $0E40,X
|05EFAB| CLC
|05EFAC| ADC.b #$02
|05EFAE| STA.w $0E40,X

|05EFB1| INC.w $0E30,X

|05EFB4| JSL SpawnWaterSplash_long

;---------------------------------------------------------------------------------------------------

.continue
|05EFB8| JSL CheckIfLinkIsBusy
|05EFBC| BCC .link_not_busy

|05EFBE| RTS

.link_not_busy
|05EFBF| JSL CheckDamageToLink_same_layer_long
|05EFC3| BCS .contact

|05EFC5| RTS

;---------------------------------------------------------------------------------------------------

.from_sprite
|05EFC6| PHX

|05EFC7| LDA.b #$02
|05EFC9| STA.w $02E9

|05EFCC| LDY.b #$3E ; ITEMGET 3E
|05EFCE| JSL GrantItemReceipt

|05EFD2| PLX

|05EFD3| LDA.w $0403
|05EFD6| ORA.b #$80
|05EFD8| STA.w $0403

|05EFDB| RTS

;---------------------------------------------------------------------------------------------------

.contact
|05EFDC| STZ.w $0DD0,X

|05EFDF| LDA.w $0D90,X
|05EFE2| BNE .from_sprite

|05EFE4| PHX

|05EFE5| JSL CancelDash_long

|05EFE9| LDY.b #$26 ; ITEMGET 26
|05EFEB| STZ.w $02E9
|05EFEE| JSL GrantItemReceipt

|05EFF2| PLX

|05EFF3| LDA.b $1B
|05EFF5| BNE HeartSetFlagUnderWorld

;===================================================================================================

HeartSetFlagOverworld:
|05EFF7| PHX

|05EFF8| LDX.b $8A

|05EFFA| LDA.l $7EF280,X
|05EFFE| ORA.b #$40
|05F000| STA.l $7EF280,X

|05F004| PLX

|05F005| RTS

;===================================================================================================

HeartRoomFlags:
|05F006| db $40, $20

;---------------------------------------------------------------------------------------------------

HeartSetFlagUnderWorld:
|05F008| LDA.w $0D30,X
|05F00B| AND.b #$01
|05F00D| TAY

|05F00E| LDA.w $0403
|05F011| ORA.w HeartRoomFlags,Y
|05F014| STA.w $0403

|05F017| RTS

;===================================================================================================

Sprite_EB_HeartPiece:
|05F018| PHB
|05F019| PHK
|05F01A| PLB

|05F01B| JSR .main

|05F01E| PLB

|05F01F| RTL

;---------------------------------------------------------------------------------------------------

.main
|05F020| LDA.w $0D80,X
|05F023| BNE .check_completed

|05F025| INC.w $0D80,X

|05F028| JSR SpritePrep_HeartContainer.main

|05F02B| LDA.w $0DD0,X
|05F02E| BEQ .exit

;---------------------------------------------------------------------------------------------------

.check_completed
|05F030| JSL SpriteDraw_SingleLarge_long
|05F034| JSR CheckIfActive_bank05

|05F037| JSL CheckIfLinkIsBusy
|05F03B| BCS .exit

; Unused code for moving
|05F03D| JSR CheckSpriteTileCollision_bank05

|05F040| LDA.w $0E70,X
|05F043| AND.b #$03
|05F045| BEQ .no_horizontal_collision

|05F047| LDA.w $0D50,X
|05F04A| EOR.b #$FF
|05F04C| INC A
|05F04D| STA.w $0D50,X

.no_horizontal_collision
|05F050| DEC.w $0F80,X

|05F053| JSR MoveSpriteZ_bank05
|05F056| JSR MoveSpriteXY_bank05

|05F059| LDA.w $0F70,X
|05F05C| BPL .not_bouncing

|05F05E| STZ.w $0F70,X

|05F061| LDA.w $0F80,X
|05F064| EOR.b #$FF
|05F066| AND.b #$F8
|05F068| LSR A
|05F069| STA.w $0F80,X

|05F06C| LDA.w $0D50,X
|05F06F| BEQ .not_bouncing

|05F071| CMP.b #$7F
|05F073| ROR A
|05F074| STA.w $0D50,X

|05F077| CMP.b #$FF
|05F079| BNE .not_bouncing

|05F07B| INC.w $0D50,X

;---------------------------------------------------------------------------------------------------

.not_bouncing
|05F07E| LDA.w $0F10,X
|05F081| BNE .exit

|05F083| JSL CheckDamageToLink_same_layer_long
|05F087| BCS .contact

.exit
|05F089| RTS

;---------------------------------------------------------------------------------------------------

.contact
|05F08A| LDA.l $7EF36B
|05F08E| INC A
|05F08F| AND.b #$03
|05F091| STA.l $7EF36B
|05F095| BNE .not_full_set

|05F097| PHX

|05F098| JSL CancelDash_long

|05F09C| LDY.b #$26 ; ITEMGET 26
|05F09E| STZ.w $02E9
|05F0A1| JSL GrantItemReceipt

|05F0A5| PLX

|05F0A6| BRA .handle_flags

;---------------------------------------------------------------------------------------------------

.not_full_set
|05F0A8| LDA.b #$2D ; SFX3.2D
|05F0AA| JSL QueueSpriteSFX3WithPan

|05F0AE| LDA.l $7EF36B
|05F0B2| TAY

|05F0B3| LDA.w HeartPieceMessage.low,Y
|05F0B6| XBA

|05F0B7| LDA.w HeartPieceMessage.high,Y
|05F0BA| TAY

|05F0BB| XBA
|05F0BC| JSL ShowMessageUnconditional

;---------------------------------------------------------------------------------------------------

.handle_flags
|05F0C0| STZ.w $0DD0,X

|05F0C3| LDA.b $1B
|05F0C5| BEQ .handle_overworld_flags

|05F0C7| JMP.w HeartSetFlagUnderWorld

.handle_overworld_flags
|05F0CA| JMP.w HeartSetFlagOverworld

;===================================================================================================

Sprite_16_Elder:
|05F0CD| PHB
|05F0CE| PHK
|05F0CF| PLB

|05F0D0| JSR .main

|05F0D3| PLB

|05F0D4| RTL

;---------------------------------------------------------------------------------------------------

.main
|05F0D5| JSR SpriteDraw_Elder
|05F0D8| JSR CheckIfActive_bank05
|05F0DB| JSL BehaveAsBarrier

|05F0DF| LDA.w $0E80,X
|05F0E2| JSL JumpTableLocal
|05F0E6| dw Sahasrahla
|05F0E8| dw Aginah

;===================================================================================================

Aginah:
|05F0EA| LDA.l $7EF3C6
|05F0EE| AND.b #$20
|05F0F0| BEQ .first_message

;---------------------------------------------------------------------------------------------------

|05F0F2| LDA.l $7EF359
|05F0F6| CMP.b #$02
|05F0F8| BCC .weak_sword

|05F0FA| LDA.b #$26 ; MESSAGE 0126
|05F0FC| LDY.b #$01
|05F0FE| JSL ShowSolicitedMessage

|05F102| BRA .continue

;---------------------------------------------------------------------------------------------------

.weak_sword
|05F104| LDA.l $7EF374
|05F108| AND.b #$07
|05F10A| CMP.b #$07
|05F10C| BNE .missing_pendants

|05F10E| LDA.b #$24 ; MESSAGE 0124
|05F110| LDY.b #$01
|05F112| JSL ShowSolicitedMessage

|05F116| BRA .continue

;---------------------------------------------------------------------------------------------------

.missing_pendants
|05F118| AND.b #$02
|05F11A| CMP.b #$02
|05F11C| BNE .missing_blue_pendant

|05F11E| LDA.b #$27 ; MESSAGE 0127
|05F120| LDY.b #$01
|05F122| JSL ShowSolicitedMessage

|05F126| BRA .continue

;---------------------------------------------------------------------------------------------------

.missing_blue_pendant
|05F128| LDA.l $7EF34E
|05F12C| BEQ .first_message

|05F12E| LDA.b #$25 ; MESSAGE 0125
|05F130| LDY.b #$01
|05F132| JSL ShowSolicitedMessage

|05F136| BRA .continue

;---------------------------------------------------------------------------------------------------

.first_message
|05F138| LDA.b #$23 ; MESSAGE 0123
|05F13A| LDY.b #$01
|05F13C| JSL ShowSolicitedMessage

|05F140| LDA.l $7EF3C6
|05F144| ORA.b #$20
|05F146| STA.l $7EF3C6

.continue
|05F14A| JMP.w Elder_Animate

;===================================================================================================

Sahasrahla:
|05F14D| LDA.w $0D80,X
|05F150| JSL JumpTableLocal
|05F154| dw Sasha_Idle
|05F156| dw Sasha_GiveQuest
|05F158| dw Sasha_GiveBoots
|05F15A| dw Sasha_PromoteIceRod

;===================================================================================================

pool Sasha_Idle

.message_low
|05F15C| db $37 ; MESSAGE 0037
|05F15D| db $36 ; MESSAGE 0036

.message_high
|05F15E| db $00
|05F15F| db $00

endpool

;---------------------------------------------------------------------------------------------------

Sasha_Idle:
|05F160| LDA.l $7EF374
|05F164| AND.b #$04
|05F166| BNE .green_pendant_obtained

|05F168| LDA.b #$30 ; MESSAGE 0030
|05F16A| LDY.b #$00
|05F16C| JSL ShowSolicitedMessage
|05F170| BCC .no_talk

|05F172| INC.w $0D80,X

.no_talk
|05F175| BRA Elder_Animate

;---------------------------------------------------------------------------------------------------

.green_pendant_obtained
|05F177| LDA.l $7EF355
|05F17B| BNE .boots_obtained

|05F17D| LDA.l $7EF3C7
|05F181| CMP.b #$03
|05F183| ROL A
|05F184| AND.b #$01
|05F186| TAY

|05F187| LDA.w .message_low,Y
|05F18A| XBA

|05F18B| LDA.w .message_high,Y
|05F18E| TAY

|05F18F| XBA
|05F190| JSL ShowSolicitedMessage
|05F194| BCC .no_speak

|05F196| INC.w $0D80,X
|05F199| INC.w $0D80,X

.no_speak
|05F19C| BRA Elder_Animate

;---------------------------------------------------------------------------------------------------

.boots_obtained
|05F19E| LDA.l $7EF346
|05F1A2| BNE .have_ice_rod

|05F1A4| LDA.b #$35 ; MESSAGE 0035
|05F1A6| LDY.b #$00
|05F1A8| JSL ShowSolicitedMessage

|05F1AC| BRA Elder_Animate

;---------------------------------------------------------------------------------------------------

.have_ice_rod
|05F1AE| LDA.l $7EF374
|05F1B2| AND.b #$07
|05F1B4| CMP.b #$07
|05F1B6| BEQ .have_every_pendant

|05F1B8| LDA.b #$32 ; MESSAGE 0032
|05F1BA| LDY.b #$00
|05F1BC| JSL ShowSolicitedMessage

|05F1C0| BRA Elder_Animate

;---------------------------------------------------------------------------------------------------

.have_every_pendant
|05F1C2| LDA.l $7EF359
|05F1C6| CMP.b #$02
|05F1C8| BCS .have_mastersword

|05F1CA| LDA.b #$2E ; MESSAGE 002E
|05F1CC| LDY.b #$00
|05F1CE| JSL ShowSolicitedMessage

|05F1D2| BRA Elder_Animate

;---------------------------------------------------------------------------------------------------

.have_mastersword
|05F1D4| LDA.b #$2F ; MESSAGE 002F
|05F1D6| LDY.b #$00
|05F1D8| JSL ShowSolicitedMessage

;===================================================================================================

Elder_Animate:
|05F1DC| LDA.b $1A

|05F1DE| LSR A ; /32
|05F1DF| LSR A
|05F1E0| LSR A
|05F1E1| LSR A
|05F1E2| LSR A

|05F1E3| AND.b #$01
|05F1E5| STA.w $0DC0,X

|05F1E8| RTS

;===================================================================================================

Sasha_GiveQuest:
|05F1E9| LDA.b #$31 ; MESSAGE 0031
|05F1EB| LDY.b #$00
|05F1ED| JSL ShowMessageUnconditional

|05F1F1| STZ.w $0D80,X

|05F1F4| LDA.b #$03
|05F1F6| STA.l $7EF3C7

|05F1FA| RTS

;===================================================================================================

Sasha_GiveBoots:
|05F1FB| LDY.b #$4B ; ITEMGET 4B
|05F1FD| STZ.w $02E9
|05F200| JSL GrantItemReceipt

|05F204| INC.w $0D80,X

|05F207| LDA.b #$03
|05F209| STA.l $7EF3C7

|05F20D| RTS

;===================================================================================================

Sasha_PromoteIceRod:
|05F20E| LDA.b #$35 ; MESSAGE 0035
|05F210| LDY.b #$00
|05F212| JSL ShowMessageUnconditional

|05F216| STZ.w $0D80,X

|05F219| RTS

;===================================================================================================

pool SpriteDraw_Elder

.oam_groups
; group00
|05F21A| dw   0,  -9 : db $A0, $00, $00, $02
|05F222| dw   0,   0 : db $A2, $00, $00, $02

; group01
|05F22A| dw   0,  -8 : db $A0, $00, $00, $02
|05F232| dw   0,   0 : db $A4, $40, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Elder:
|05F23A| LDA.b #$02
|05F23C| STA.b $06
|05F23E| STZ.b $07

|05F240| LDA.w $0DC0,X

|05F243| ASL A ; x16
|05F244| ASL A
|05F245| ASL A
|05F246| ASL A

|05F247| ADC.b #<.oam_groups
|05F249| STA.b $08

|05F24B| LDA.b #>.oam_groups
|05F24D| ADC.b #$00
|05F24F| STA.b $09

|05F251| JSL TabulatedSpriteDraw.player_deferred
|05F255| JSL DrawSpriteShadow_long

|05F259| RTS

;===================================================================================================

SpritePrep_MedallionTablet:
|05F25A| PHB
|05F25B| PHK
|05F25C| PLB

|05F25D| JSR .main

|05F260| PLB

|05F261| RTL

;---------------------------------------------------------------------------------------------------

.main
|05F262| INC.w $0BA0,X

|05F265| LDA.b $8A
|05F267| CMP.b #$03 ; OW 03
|05F269| BEQ .ether_tablet

|05F26B| LDA.w $0D10,X
|05F26E| CLC
|05F26F| ADC.b #$08
|05F271| STA.w $0D10,X

|05F274| LDA.l $7EF347
|05F278| BEQ .exit

|05F27A| LDA.b #$04
|05F27C| STA.w $0DC0,X

|05F27F| LDA.b #$03
|05F281| STA.w $0D80,X

|05F284| RTS

;---------------------------------------------------------------------------------------------------

.ether_tablet
|05F285| LDA.l $7EF348
|05F289| BEQ .exit

|05F28B| LDA.b #$04
|05F28D| STA.w $0DC0,X

|05F290| LDA.b #$03
|05F292| STA.w $0D80,X

.exit
|05F295| RTS

;===================================================================================================

Sprite_F2_MedallionTablet:
|05F296| PHB
|05F297| PHK
|05F298| PLB

|05F299| JSR .main

|05F29C| PLB

|05F29D| RTL

;---------------------------------------------------------------------------------------------------

.main
|05F29E| LDA.w $0E80,X
|05F2A1| JSL JumpTableLocal
|05F2A5| dw MedallionTablet
|05F2A7| dw DustCloud

;===================================================================================================

pool DustCloud

.anim_step
|05F2A9| db $00, $01, $02, $03
|05F2AD| db $04, $05, $01, $00
|05F2B1| db $FF

endpool

;---------------------------------------------------------------------------------------------------

DustCloud:
|05F2B2| JSL SpriteDraw_MedallionTabletDebris
|05F2B6| JSR CheckIfActive_bank05

|05F2B9| LDA.w $0DF0,X
|05F2BC| BNE .exit

|05F2BE| LDA.b #$05
|05F2C0| STA.w $0DF0,X

|05F2C3| LDY.w $0D90,X

|05F2C6| LDA.w .anim_step,Y
|05F2C9| BPL .still_animating

|05F2CB| STZ.w $0DD0,X

|05F2CE| RTS

.still_animating
|05F2CF| STA.w $0DC0,X

|05F2D2| INC.w $0D90,X

.exit
|05F2D5| RTS

;===================================================================================================

SpawnDustCloud:
|05F2D6| LDA.b #$F2 ; SPRITE F2
|05F2D8| JSL SpawnSpriteDynamically
|05F2DC| BMI .exit

|05F2DE| JSL GetRandomNumber
|05F2E2| STA.b $0F

|05F2E4| JSL GetRandomNumber

|05F2E8| REP #$20

|05F2EA| AND.w #$000F

|05F2ED| SEC
|05F2EE| SBC.w #$0008

|05F2F1| CLC
|05F2F2| ADC.b $00
|05F2F4| STA.b $00

|05F2F6| LDA.b $0F
|05F2F8| AND.w #$000F

|05F2FB| CLC
|05F2FC| ADC.b $02
|05F2FE| STA.b $02

|05F300| SEP #$30

|05F302| JSL SetSpawnedSpriteCoordinates

|05F306| LDA.b #$01
|05F308| STA.w $0E80,Y

.exit
|05F30B| RTS

;===================================================================================================

MedallionTablet:
|05F30C| JSL SpriteDraw_MedallionTablet
|05F310| JSR CheckIfActive_bank05

|05F313| LDA.w $037A
|05F316| AND.b #$DF
|05F318| STA.w $037A

|05F31B| STZ.w $0D90,X

|05F31E| JSL CheckDamageToLink_same_layer_long
|05F322| BCC .no_contact

|05F324| JSL AbortMovement

|05F328| STZ.b $5E

|05F32A| JSL RepelDash_long

|05F32E| INC.w $0D90,X

.no_contact
|05F331| JSL CheckIfLinkIsBusy
|05F335| BCC .continue

|05F337| RTS

.continue
|05F338| LDA.w $0D80,X
|05F33B| JSL JumpTableLocal
|05F33F| dw MedallionTablet_WaitingToBeRead
|05F341| dw MedallionTablet_WasteTime
|05F343| dw MedallionTablet_Crumble
|05F345| dw MedallionTablet_AmCrumbled

;===================================================================================================

EtherMessage:
.low
|05F347| db $0B ; MESSAGE 010B
|05F348| db $0C ; MESSAGE 010C

.high
|05F349| db $01
|05F34A| db $01

;===================================================================================================

BombosMessage:
.low
|05F34B| db $0B ; MESSAGE 010B
|05F34C| db $0D ; MESSAGE 010D

.high
|05F34D| db $01
|05F34E| db $01

;===================================================================================================

MedallionTablet_WaitingToBeRead:
|05F34F| LDA.b $8A
|05F351| CMP.b #$03 ; OW 03
|05F353| BEQ EtherTablet

;===================================================================================================

BombosTablet:
|05F355| LDA.b $2F
|05F357| BNE .exit

|05F359| JSR GetDirectionTowardsLink_bank05

|05F35C| CPY.b #$02
|05F35E| BNE .exit

|05F360| REP #$20

|05F362| LDA.w $0FDA
|05F365| CLC
|05F366| ADC.w #$0010
|05F369| CMP.b $20

|05F36B| SEP #$30
|05F36D| BCC .exit

; [WTF] is this weird code?
; You can't read the tablets on the same frame you slash the master sword???
|05F36F| LDA.b $F4
|05F371| BPL .check_for_book

|05F373| LDA.l $7EF359
|05F377| CMP.b #$02
|05F379| BNE .check_for_book

|05F37B| RTS

;---------------------------------------------------------------------------------------------------

.check_for_book
|05F37C| LDA.w $0202
|05F37F| CMP.b #$0F
|05F381| BNE .not_book

|05F383| LDY.b #$01

|05F385| LDA.b $F4
|05F387| AND.b #$40
|05F389| BNE .pressed_y

.not_book
|05F38B| LDA.b $F6
|05F38D| BPL .exit

|05F38F| LDY.b #$00

.pressed_y
|05F391| CPY.b #$00
|05F393| BEQ .show_message

|05F395| STZ.w $0300

|05F398| LDA.b #$20
|05F39A| STA.w $037A

|05F39D| STZ.w $012E

|05F3A0| LDA.l $7EF359
|05F3A4| BMI .show_message

|05F3A6| CMP.b #$02
|05F3A8| BCC .show_message

|05F3AA| INC.w $0D80,X

|05F3AD| JSL StartBombosTabletCutscene

|05F3B1| LDA.b #$40
|05F3B3| STA.w $0DF0,X

.show_message
|05F3B6| LDA.w BombosMessage.low,Y
|05F3B9| XBA

|05F3BA| LDA.w BombosMessage.high,Y
|05F3BD| TAY

|05F3BE| XBA
|05F3BF| JSL ShowMessageUnconditional

.exit
|05F3C3| RTS

;===================================================================================================

EtherTablet:
|05F3C4| LDA.b $2F
|05F3C6| BNE .exit

|05F3C8| JSR GetDirectionTowardsLink_bank05
|05F3CB| CPY.b #$02
|05F3CD| BNE .exit

|05F3CF| LDA.w $0D00,X
|05F3D2| CLC
|05F3D3| ADC.b #$10
|05F3D5| CMP.b $20
|05F3D7| BCC .exit

|05F3D9| LDA.b $F4
|05F3DB| BPL .check_book

|05F3DD| LDA.l $7EF359
|05F3E1| CMP.b #$02
|05F3E3| BNE .check_book

|05F3E5| RTS

;---------------------------------------------------------------------------------------------------

.check_book
|05F3E6| LDA.w $0202
|05F3E9| CMP.b #$0F
|05F3EB| BNE .not_book

|05F3ED| LDY.b #$01

|05F3EF| LDA.b $F4
|05F3F1| AND.b #$40
|05F3F3| BNE .pressed_y

.not_book
|05F3F5| LDA.b $F6
|05F3F7| BPL .exit

|05F3F9| LDY.b #$00

.pressed_y
|05F3FB| CPY.b #$00
|05F3FD| BEQ .show_message

|05F3FF| STZ.w $0300

|05F402| LDA.b #$20
|05F404| STA.w $037A

|05F407| STZ.w $012E

|05F40A| LDA.l $7EF359
|05F40E| BMI .show_message

|05F410| CMP.b #$02
|05F412| BCC .show_message

|05F414| INC.w $0D80,X

|05F417| JSL StartEtherTabletCutscene

|05F41B| LDA.b #$40
|05F41D| STA.w $0DF0,X

.show_message
|05F420| LDA.w EtherMessage.low,Y
|05F423| XBA

|05F424| LDA.w EtherMessage.high,Y
|05F427| TAY

|05F428| XBA
|05F429| JSL ShowMessageUnconditional

.exit
|05F42D| RTS

;===================================================================================================

MedallionTablet_WasteTime:
|05F42E| LDA.w $0DF0,X
|05F431| BNE .exit

|05F433| INC.w $0D80,X

|05F436| LDA.b #$80
|05F438| STA.w $0DF0,X

.exit
|05F43B| RTS

;===================================================================================================

MedallionTablet_Crumble:
|05F43C| LDA.w $0DF0,X
|05F43F| BNE .delay

|05F441| INC.w $0D80,X

|05F444| LDA.b #$F0
|05F446| STA.w $0DF0,X

|05F449| RTS

.delay
|05F44A| CMP.b #$60
|05F44C| BEQ .next_step

|05F44E| CMP.b #$40
|05F450| BEQ .next_step

|05F452| CMP.b #$20
|05F454| BNE .dont_step

.next_step
|05F456| INC.w $0DC0,X

.dont_step
|05F459| LDA.b $1A
|05F45B| AND.b #$07
|05F45D| BNE .exit

|05F45F| JSR SpawnDustCloud

.exit
|05F462| RTS

;===================================================================================================

MedallionTablet_AmCrumbled:
|05F463| LDA.b #$04
|05F465| STA.w $0DC0,X

|05F468| RTS

;===================================================================================================

Sprite_78_MrsSahasrahla:
|05F469| PHB
|05F46A| PHK
|05F46B| PLB

|05F46C| JSR .main

|05F46F| PLB

|05F470| RTL

;---------------------------------------------------------------------------------------------------

.main
|05F471| JSR SpriteDraw_MrsSahasrahla
|05F474| JSR CheckIfActive_bank05
|05F477| JSL BehaveAsBarrier

|05F47B| LDA.w $0D80,X
|05F47E| JSL JumpTableLocal
|05F482| dw MrsSahasrahla_Idle
|05F484| dw MrsSahasrahla_BabbleOn
|05F486| dw MrsSahasrahla_QuestionSanity
|05F488| dw MrsSahasrahla_FindMyHubby

;===================================================================================================

MrsSahasrahla_Idle:
|05F48A| LDA.l $7EF359
|05F48E| CMP.b #$02
|05F490| BCS MrsSahasrahla_DiscussMasterSword

|05F492| LDA.b #$29 ; MESSAGE 0029
|05F494| LDY.b #$00
|05F496| JSL ShowSolicitedMessage
|05F49A| BCC MrsSahasrahla_Animate

|05F49C| INC.w $0D80,X

;===================================================================================================

MrsSahasrahla_Animate:
|05F49F| LDA.b $1A
|05F4A1| LSR A
|05F4A2| LSR A
|05F4A3| LSR A
|05F4A4| LSR A
|05F4A5| AND.b #$01
|05F4A7| STA.w $0DC0,X

|05F4AA| RTS

;===================================================================================================

MrsSahasrahla_DiscussMasterSword:
|05F4AB| LDA.b #$2C ; MESSAGE 002C
|05F4AD| LDY.b #$00
|05F4AF| JSL ShowSolicitedMessage

|05F4B3| BRA MrsSahasrahla_Animate

;===================================================================================================

MrsSahasrahla_BabbleOn:
|05F4B5| LDA.b #$2A ; MESSAGE 002A
|05F4B7| LDY.b #$00
|05F4B9| JSL ShowMessageUnconditional

|05F4BD| INC.w $0D80,X

|05F4C0| RTS

;===================================================================================================

MrsSahasrahla_QuestionSanity:
|05F4C1| LDA.w $1CE8
|05F4C4| BNE .confirm_insanity

|05F4C6| INC.w $0D80,X

|05F4C9| LDA.b #$2B ; MESSAGE 002B
|05F4CB| LDY.b #$00
|05F4CD| JSL ShowMessageUnconditional

|05F4D1| RTS

;---------------------------------------------------------------------------------------------------

.confirm_insanity
|05F4D2| LDA.b #$2A ; MESSAGE 002A
|05F4D4| LDY.b #$00
|05F4D6| JSL ShowMessageUnconditional

|05F4DA| RTS

;===================================================================================================

MrsSahasrahla_FindMyHubby:
|05F4DB| LDA.b #$2B ; MESSAGE 002B
|05F4DD| LDY.b #$00
|05F4DF| JSL ShowSolicitedMessage

|05F4E3| BRA MrsSahasrahla_Animate

;===================================================================================================

pool SpriteDraw_MrsSahasrahla

.oam_groups
; group00
|05F4E5| dw   0,  -5 : db $8E, $00, $00, $02
|05F4ED| dw   0,   5 : db $28, $00, $00, $02

; group01
|05F4F5| dw   0,  -4 : db $8E, $00, $00, $02
|05F4FD| dw   0,   5 : db $28, $40, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_MrsSahasrahla:
|05F505| LDA.b #$02
|05F507| STA.b $06
|05F509| STZ.b $07

|05F50B| LDA.w $0DC0,X
|05F50E| ASL A
|05F50F| ASL A
|05F510| ASL A
|05F511| ASL A

|05F512| ADC.b #<.oam_groups
|05F514| STA.b $08

|05F516| LDA.b #>.oam_groups
|05F518| ADC.b #$00
|05F51A| STA.b $09

|05F51C| JSL TabulatedSpriteDraw.player_deferred

|05F520| RTS

;===================================================================================================

SpritePrep_MagicShopAssistant:
|05F521| PHB
|05F522| PHK
|05F523| PLB

|05F524| JSR .main

|05F527| PLB

|05F528| RTL

;---------------------------------------------------------------------------------------------------

.main
|05F529| JSR SpawnPowder
|05F52C| JSR SpawnGreenCauldron
|05F52F| JSR SpawnBlueCauldron
|05F532| JSR SpawnRedCauldron

|05F535| INC.w $0BA0,X

|05F538| RTS

;===================================================================================================

SpawnPowder:
|05F539| LDA.w $0ABF
|05F53C| BEQ .exit

|05F53E| LDA.l $7EF344
|05F542| CMP.b #$02
|05F544| BEQ .exit

|05F546| PHX

|05F547| STZ.b $00

|05F549| REP #$10

|05F54B| LDX.w #$0212

|05F54E| LDA.l $7EF000,X
|05F552| AND.b #$80
|05F554| STA.b $00

|05F556| SEP #$30

|05F558| PLX

|05F559| LDA.b $00
|05F55B| BEQ .exit

|05F55D| LDA.b #$E9 ; SPRITE E9
|05F55F| JSL SpawnSpriteDynamically

|05F563| LDA.b #$01
|05F565| STA.w $0E80,Y

|05F568| LDA.w $0D00,X
|05F56B| SEC
|05F56C| SBC.b #$00
|05F56E| STA.w $0D00,Y

|05F571| LDA.w $0D20,X
|05F574| SBC.b #$00
|05F576| STA.w $0D20,Y

|05F579| LDA.w $0D10,X
|05F57C| SEC
|05F57D| SBC.b #$10
|05F57F| STA.w $0D10,Y

|05F582| LDA.w $0D30,X
|05F585| SBC.b #$00
|05F587| STA.w $0D30,Y

|05F58A| JMP.w SpawnPotionShopObject

.exit
|05F58D| RTS

;===================================================================================================

SpawnGreenCauldron:
|05F58E| LDA.b #$E9 ; SPRITE E9
|05F590| JSL SpawnSpriteDynamically

|05F594| LDA.b #$02
|05F596| STA.w $0E80,Y

|05F599| LDA.w $0D00,X
|05F59C| SEC
|05F59D| SBC.b #$48
|05F59F| STA.w $0D00,Y

|05F5A2| LDA.w $0D20,X
|05F5A5| SBC.b #$00
|05F5A7| STA.w $0D20,Y

|05F5AA| LDA.w $0D10,X
|05F5AD| SEC
|05F5AE| SBC.b #$28
|05F5B0| STA.w $0D10,Y

|05F5B3| LDA.w $0D30,X
|05F5B6| SBC.b #$00
|05F5B8| STA.w $0D30,Y

|05F5BB| JMP.w SpawnPotionShopObject

;===================================================================================================

UNREACHABLE_05F5BE:
|05F5BE| RTS

;===================================================================================================

SpawnBlueCauldron:
|05F5BF| LDA.b #$E9 ; SPRITE E9
|05F5C1| JSL SpawnSpriteDynamically

|05F5C5| LDA.b #$03
|05F5C7| STA.w $0E80,Y

|05F5CA| LDA.w $0D00,X
|05F5CD| SEC
|05F5CE| SBC.b #$48
|05F5D0| STA.w $0D00,Y

|05F5D3| LDA.w $0D20,X
|05F5D6| SBC.b #$00
|05F5D8| STA.w $0D20,Y

|05F5DB| LDA.w $0D10,X
|05F5DE| CLC
|05F5DF| ADC.b #$08
|05F5E1| STA.w $0D10,Y

|05F5E4| LDA.w $0D30,X
|05F5E7| ADC.b #$00
|05F5E9| STA.w $0D30,Y

|05F5EC| JMP.w SpawnPotionShopObject

;===================================================================================================

UNREACHABLE_05F5EF:
|05F5EF| RTS

;===================================================================================================

SpawnRedCauldron:
|05F5F0| LDA.b #$E9 ; SPRITE E9
|05F5F2| JSL SpawnSpriteDynamically

|05F5F6| LDA.b #$04
|05F5F8| STA.w $0E80,Y

|05F5FB| LDA.w $0D00,X
|05F5FE| SEC
|05F5FF| SBC.b #$48
|05F601| STA.w $0D00,Y

|05F604| LDA.w $0D20,X
|05F607| SBC.b #$00
|05F609| STA.w $0D20,Y

|05F60C| LDA.w $0D10,X
|05F60F| SEC
|05F610| SBC.b #$58
|05F612| STA.w $0D10,Y

|05F615| LDA.w $0D30,X
|05F618| SBC.b #$00
|05F61A| STA.w $0D30,Y

;===================================================================================================

SpawnPotionShopObject:
|05F61D| LDA.b #$03
|05F61F| STA.w $0F60,Y

|05F622| LDA.w $0CAA,Y
|05F625| ORA.b #$20
|05F627| STA.w $0CAA,Y

|05F62A| RTS

;===================================================================================================

Sprite_E9_MagicShopAssistant:
|05F62B| PHB
|05F62C| PHK
|05F62D| PLB

|05F62E| JSR .main

|05F631| PLB

|05F632| RTL

;---------------------------------------------------------------------------------------------------

.main
|05F633| LDA.w $0E80,X
|05F636| JSL JumpTableLocal
|05F63A| dw MagicShopAssistant
|05F63C| dw BagOfPowder
|05F63E| dw GreenCauldron
|05F640| dw BlueCauldron
|05F642| dw RedCauldron

;===================================================================================================

BagOfPowder:
|05F644| JSR SpriteDraw_BagOfPowder
|05F647| JSR CheckIfActive_bank05

|05F64A| JSL BehaveAsBarrier
|05F64E| JSL CheckDamageToLink_same_layer_long
|05F652| BCC .exit

|05F654| LDA.b $F6
|05F656| BPL .exit

|05F658| PHX

|05F659| JSL CancelDash_long

|05F65D| LDY.b #$0D ; ITEMGET 0D
|05F65F| STZ.w $02E9
|05F662| JSL GrantItemReceipt

|05F666| PLX
|05F667| STZ.w $0DD0,X

.exit
|05F66A| RTS

;===================================================================================================

pool SpriteDraw_BagOfPowder

.oam_groups
|05F66B| dw   0,   0 : db $E6, $04, $00, $02
|05F673| dw   0,   0 : db $E6, $04, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_BagOfPowder:
|05F67B| LDA.b #$02
|05F67D| STA.b $06
|05F67F| STZ.b $07

|05F681| LDA.b #<.oam_groups
|05F683| STA.b $08

|05F685| LDA.b #>.oam_groups
|05F687| STA.b $09

|05F689| JSL TabulatedSpriteDraw.player_deferred

|05F68D| RTS

;===================================================================================================

GreenCauldron:
|05F68E| JSR SpriteDraw_GreenCauldron
|05F691| JSR CheckIfActive_bank05
|05F694| JSL BehaveAsBarrier

|05F698| LDA.w $0DF0,X
|05F69B| BNE .exit_a

|05F69D| JSR CheckForEmptyPotionBottles
|05F6A0| BCS .have_bottles

|05F6A2| LDA.b #$4D ; MESSAGE 004D
|05F6A4| LDY.b #$00
|05F6A6| JSL ShowMessageOnContact
|05F6AA| BCC .exit_a

|05F6AC| JSR PotionShopBeep

.exit_a
|05F6AF| RTS

;---------------------------------------------------------------------------------------------------

.have_bottles
|05F6B0| JSL CheckDamageToLink_same_layer_long
|05F6B4| BCC .exit_b

|05F6B6| LDA.b $F6
|05F6B8| BPL .exit_b

|05F6BA| REP #$20

|05F6BC| LDA.l $7EF360
|05F6C0| CMP.w #$003C ; 60 rupees

|05F6C3| SEP #$30
|05F6C5| BCC .too_poor

|05F6C7| JSL FindEmptyBottle
|05F6CB| BMI .no_space

|05F6CD| LDA.b #$1D ; SFX3.1D
|05F6CF| JSL QueueSpriteSFX3WithPan

|05F6D3| LDA.b #$40
|05F6D5| STA.w $0DF0,X

|05F6D8| REP #$20

|05F6DA| LDA.l $7EF360
|05F6DE| SEC
|05F6DF| SBC.w #$003C ; take 60 rupees
|05F6E2| STA.l $7EF360

|05F6E6| SEP #$30

|05F6E8| LDY.b #$2F ; ITEMGET 2F
|05F6EA| STZ.w $02E9
|05F6ED| JSL GrantItemReceipt

.exit_b
|05F6F1| RTS

;---------------------------------------------------------------------------------------------------

.no_space
|05F6F2| LDA.b #$4E ; MESSAGE 004E
|05F6F4| LDY.b #$00
|05F6F6| JSL ShowMessageUnconditional

|05F6FA| JMP.w PotionShopBeep

.too_poor
|05F6FD| JMP.w ThePotionShopIsNotACharity

;===================================================================================================

pool SpriteDraw_GreenCauldron

.oam_groups
|05F700| dw   0,   0 : db $C0, $08, $00, $02
|05F708| dw   8,  18 : db $30, $0A, $00, $00
|05F710| dw  -1,  18 : db $22, $0A, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_GreenCauldron:
|05F718| LDA.b #$03
|05F71A| STA.b $06
|05F71C| STZ.b $07

|05F71E| LDA.b #<.oam_groups
|05F720| STA.b $08

|05F722| LDA.b #>.oam_groups
|05F724| STA.b $09

|05F726| JSL TabulatedSpriteDraw.player_deferred

|05F72A| RTS

;===================================================================================================

BlueCauldron:
|05F72B| JSR SpriteDraw_BlueCauldron
|05F72E| JSR CheckIfActive_bank05
|05F731| JSL BehaveAsBarrier

|05F735| LDA.w $0DF0,X
|05F738| BNE .exit_a

|05F73A| JSR CheckForEmptyPotionBottles
|05F73D| BCS .have_bottles

|05F73F| LDA.b #$4D ; MESSAGE 004D
|05F741| LDY.b #$00
|05F743| JSL ShowMessageOnContact
|05F747| BCC .exit_a

|05F749| JSR PotionShopBeep

.exit_a
|05F74C| RTS

;---------------------------------------------------------------------------------------------------

.have_bottles
|05F74D| JSL CheckDamageToLink_same_layer_long
|05F751| BCC .exit_b

|05F753| LDA.b $F6
|05F755| BPL .exit_b

|05F757| REP #$20

|05F759| LDA.l $7EF360
|05F75D| CMP.w #$00A0 ; 160 rupees

|05F760| SEP #$30
|05F762| BCC .too_poor

|05F764| JSL FindEmptyBottle
|05F768| BMI .no_space

|05F76A| LDA.b #$1D ; SFX3.1D
|05F76C| JSL QueueSpriteSFX3WithPan

|05F770| LDA.b #$40
|05F772| STA.w $0DF0,X

|05F775| REP #$20

|05F777| LDA.l $7EF360
|05F77B| SEC
|05F77C| SBC.w #$00A0 ; take 160 rupees
|05F77F| STA.l $7EF360

|05F783| SEP #$30

|05F785| LDY.b #$30 ; ITEMGET 30
|05F787| STZ.w $02E9
|05F78A| JSL GrantItemReceipt

.exit_b
|05F78E| RTS

;---------------------------------------------------------------------------------------------------

.no_space
|05F78F| LDA.b #$4E ; MESSAGE 004E
|05F791| LDY.b #$00
|05F793| JSL ShowMessageUnconditional

|05F797| JMP.w PotionShopBeep

.too_poor
|05F79A| JMP.w ThePotionShopIsNotACharity

;===================================================================================================

pool SpriteDraw_BlueCauldron

.oam_groups
|05F79D| dw   0,   0 : db $C0, $04, $00, $02
|05F7A5| dw  13,  18 : db $30, $0A, $00, $00
|05F7AD| dw   5,  18 : db $22, $0A, $00, $00
|05F7B5| dw  -3,  18 : db $31, $0A, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_BlueCauldron:
|05F7BD| LDA.b #$04
|05F7BF| STA.b $06
|05F7C1| STZ.b $07

|05F7C3| LDA.b #<.oam_groups
|05F7C5| STA.b $08

|05F7C7| LDA.b #>.oam_groups
|05F7C9| STA.b $09

|05F7CB| JSL TabulatedSpriteDraw.player_deferred

|05F7CF| RTS

;===================================================================================================

RedCauldron:
|05F7D0| JSR SpriteDraw_RedCauldron
|05F7D3| JSR CheckIfActive_bank05
|05F7D6| JSL BehaveAsBarrier

|05F7DA| LDA.w $0DF0,X
|05F7DD| BNE .exit_a

|05F7DF| JSR CheckForEmptyPotionBottles
|05F7E2| BCS .have_bottles

|05F7E4| LDA.b #$4D ; MESSAGE 004D
|05F7E6| LDY.b #$00
|05F7E8| JSL ShowMessageOnContact
|05F7EC| BCC .exit_a

|05F7EE| JSR PotionShopBeep

.exit_a
|05F7F1| RTS

;---------------------------------------------------------------------------------------------------

.have_bottles
|05F7F2| JSL CheckDamageToLink_same_layer_long
|05F7F6| BCC .exit_b

|05F7F8| LDA.b $F6
|05F7FA| BPL .exit_b

|05F7FC| REP #$20

|05F7FE| LDA.l $7EF360
|05F802| CMP.w #$0078 ; 120 rupees

|05F805| SEP #$30
|05F807| BCC ThePotionShopIsNotACharity

|05F809| JSL FindEmptyBottle
|05F80D| BMI .no_space

|05F80F| LDA.b #$1D ; SFX3.1D
|05F811| JSL QueueSpriteSFX3WithPan

|05F815| LDA.b #$40
|05F817| STA.w $0DF0,X

|05F81A| REP #$20

|05F81C| LDA.l $7EF360
|05F820| SEC
|05F821| SBC.w #$0078 ; take 120 rupees
|05F824| STA.l $7EF360

|05F828| SEP #$30

|05F82A| LDY.b #$2E ; ITEMGET 2E
|05F82C| STZ.w $02E9
|05F82F| JSL GrantItemReceipt

.exit_b
|05F833| RTS

;---------------------------------------------------------------------------------------------------

.no_space
|05F834| LDA.b #$4E ; MESSAGE 004E
|05F836| LDY.b #$00
|05F838| JSL ShowMessageUnconditional

|05F83C| BRA PotionShopBeep

;===================================================================================================

ThePotionShopIsNotACharity:
|05F83E| LDA.b #$7A ; MESSAGE 017A
|05F840| LDY.b #$01
|05F842| JSL ShowMessageUnconditional

;===================================================================================================

PotionShopBeep:
|05F846| LDA.b #$3C ; SFX2.3C
|05F848| JSL QueueSpriteSFX2WithPan

|05F84C| RTS

;===================================================================================================

pool SpriteDraw_RedCauldron

.oam_groups
|05F84D| dw   0,   0 : db $C0, $02, $00, $02
|05F855| dw  13,  18 : db $30, $0A, $00, $00
|05F85D| dw   5,  18 : db $02, $0A, $00, $00
|05F865| dw  -3,  18 : db $31, $0A, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_RedCauldron:
|05F86D| LDA.b #$04
|05F86F| STA.b $06
|05F871| STZ.b $07

|05F873| LDA.b #<.oam_groups
|05F875| STA.b $08

|05F877| LDA.b #>.oam_groups
|05F879| STA.b $09

|05F87B| JSL TabulatedSpriteDraw.player_deferred

|05F87F| RTS

;===================================================================================================

CheckForEmptyPotionBottles:
|05F880| LDA.l $7EF35C
|05F884| ORA.l $7EF35D
|05F888| ORA.l $7EF35E
|05F88C| ORA.l $7EF35F

|05F890| CMP.b #$02

|05F892| RTS

;===================================================================================================

MagicShopAssistant:
|05F893| JSL SpriteDraw_Shopkeeper
|05F897| JSR CheckIfActive_bank05
|05F89A| JSL BehaveAsBarrier

|05F89E| JSL CheckIfLinkIsBusy
|05F8A2| BCS .exit

|05F8A4| LDA.w $0D80,X
|05F8A7| BEQ .not_healing

|05F8A9| LDA.b #$A0
|05F8AB| STA.l $7EF372

|05F8AF| STZ.w $0D80,X

.not_healing
|05F8B2| LDA.b $1A
|05F8B4| LSR A
|05F8B5| LSR A
|05F8B6| LSR A
|05F8B7| LSR A
|05F8B8| LSR A
|05F8B9| AND.b #$01
|05F8BB| STA.w $0DC0,X

|05F8BE| LDA.l $7EF35C
|05F8C2| CMP.b #$02
|05F8C4| BCS .own_bottle

|05F8C6| LDA.l $7EF35D
|05F8CA| CMP.b #$02
|05F8CC| BCS .own_bottle

|05F8CE| LDA.l $7EF35E
|05F8D2| CMP.b #$02
|05F8D4| BCS .own_bottle

|05F8D6| LDA.l $7EF35F
|05F8DA| CMP.b #$02
|05F8DC| BCS .own_bottle

|05F8DE| LDA.w $0ABF
|05F8E1| BEQ .own_bottle

|05F8E3| LDA.b #$4B ; MESSAGE 004B
|05F8E5| LDY.b #$00
|05F8E7| JSL ShowSolicitedMessage

;---------------------------------------------------------------------------------------------------

.trigger_heal
|05F8EB| BCC .exit

|05F8ED| INC.w $0D80,X

.exit
|05F8F0| RTS

;---------------------------------------------------------------------------------------------------

.own_bottle
|05F8F1| LDA.b #$4C ; MESSAGE 004C
|05F8F3| LDY.b #$00
|05F8F5| JSL ShowSolicitedMessage

|05F8F9| BRA .trigger_heal

;===================================================================================================

pool SpriteDraw_Shopkeeper

.oam_groups
; group00
|05F8FB| dw   0,  -8 : db $00, $0C, $00, $02
|05F903| dw   0,   0 : db $10, $0C, $00, $02

; group01
|05F90B| dw   0,  -8 : db $00, $0C, $00, $02
|05F913| dw   0,   0 : db $10, $4C, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Shopkeeper:
|05F91B| PHB
|05F91C| PHK
|05F91D| PLB

|05F91E| LDA.b #$02
|05F920| STA.b $06
|05F922| STZ.b $07

|05F924| LDA.w $0DC0,X

|05F927| ASL A ; x16
|05F928| ASL A
|05F929| ASL A
|05F92A| ASL A

|05F92B| ADC.b #<.oam_groups
|05F92D| STA.b $08

|05F92F| LDA.b #>.oam_groups
|05F931| ADC.b #$00
|05F933| STA.b $09

|05F935| JSL TabulatedSpriteDraw.player_deferred
|05F939| JSL DrawSpriteShadow_long

|05F93D| PLB

|05F93E| RTL

;===================================================================================================

GetDirectionTowardsLink_bank05:
|05F93F| JSL GetDirectionTowardsLink_long

|05F943| RTS

;===================================================================================================

GetXDisplacementFromLink_bank05:
|05F944| JSL GetXDisplacementFromLink_long

|05F948| RTS

;===================================================================================================

GetYDisplacementFromLink_bank05:
|05F949| JSL GetYDisplacementFromLink_long

|05F94D| RTS

;===================================================================================================

CheckIfActive_bank05:
|05F94E| LDA.w $0DD0,X
|05F951| CMP.b #$09
|05F953| BNE .inactive

#CheckIfActivePermissive_bank05:
|05F955| LDA.w $0FC1
|05F958| BNE .inactive

|05F95A| LDA.b $11
|05F95C| BNE .inactive

|05F95E| LDA.w $0CAA,X
|05F961| BMI .active

|05F963| LDA.w $0F00,X
|05F966| BEQ .active

.inactive
|05F968| PLA
|05F969| PLA

.active
|05F96A| RTS

;===================================================================================================

pool HandleSpriteRecoil_bank05

.masks
|05F96B| db $03, $01, $00, $00, $0C, $03

endpool

;---------------------------------------------------------------------------------------------------

HandleSpriteRecoil_bank05:
|05F971| LDA.w $0EA0,X
|05F974| BEQ .exit

|05F976| AND.b #$7F
|05F978| BEQ .recoil_over

|05F97A| LDA.w $0D40,X
|05F97D| PHA

|05F97E| LDA.w $0D50,X
|05F981| PHA

|05F982| DEC.w $0EA0,X
|05F985| BNE .still_recoiling

|05F987| LDA.w $0F40,X
|05F98A| CLC
|05F98B| ADC.b #$20
|05F98D| CMP.b #$40
|05F98F| BCS .no_adjust

|05F991| LDA.w $0F30,X
|05F994| CLC
|05F995| ADC.b #$20
|05F997| CMP.b #$40
|05F999| BCC .still_recoiling

.no_adjust
|05F99B| LDA.b #$90
|05F99D| STA.w $0EA0,X

.still_recoiling
|05F9A0| LDA.w $0EA0,X
|05F9A3| BMI .no_movement

|05F9A5| LSR A
|05F9A6| LSR A
|05F9A7| TAY

|05F9A8| LDA.b $1A
|05F9AA| AND.w .masks,Y
|05F9AD| BNE .no_movement

|05F9AF| LDA.w $0F30,X
|05F9B2| STA.w $0D40,X

|05F9B5| LDA.w $0F40,X
|05F9B8| STA.w $0D50,X

|05F9BB| LDA.w $0CD2,X
|05F9BE| BMI .handle_movement

|05F9C0| JSR CheckSpriteTileCollision_bank05
|05F9C3| AND.b #$0F
|05F9C5| BEQ .handle_movement

|05F9C7| CMP.b #$04
|05F9C9| BCS .stop_vertical_movement

.stop_horizontal_movement
|05F9CB| STZ.w $0F40,X
|05F9CE| STZ.w $0D50,X

|05F9D1| BRA .movement_stopped

.stop_vertical_movement
|05F9D3| STZ.w $0F30,X
|05F9D6| STZ.w $0D40,X

.movement_stopped
|05F9D9| BRA .no_movement

.handle_movement
|05F9DB| JSR MoveSpriteXY_bank05

.no_movement
|05F9DE| PLA
|05F9DF| STA.w $0D50,X

|05F9E2| PLA
|05F9E3| STA.w $0D40,X

|05F9E6| PLA
|05F9E7| PLA

.exit
|05F9E8| RTS

.recoil_over
|05F9E9| STZ.w $0EA0,X

|05F9EC| RTS

;===================================================================================================

MoveSpriteXY_bank05:
|05F9ED| JSR MoveSpriteX_bank05
|05F9F0| JSR MoveSpriteY_bank05

|05F9F3| RTS

;===================================================================================================

MoveSpriteX_bank05:
|05F9F4| TXA
|05F9F5| CLC
|05F9F6| ADC.b #$10
|05F9F8| TAX

|05F9F9| JSR MoveSpriteY_bank05

|05F9FC| LDX.w $0FA0

|05F9FF| RTS

;===================================================================================================

MoveSpriteY_bank05:
|05FA00| LDA.w $0D40,X
|05FA03| BEQ .exit

|05FA05| ASL A
|05FA06| ASL A
|05FA07| ASL A
|05FA08| ASL A

|05FA09| CLC
|05FA0A| ADC.w $0D60,X
|05FA0D| STA.w $0D60,X

|05FA10| LDA.w $0D40,X
|05FA13| PHP

|05FA14| LSR A
|05FA15| LSR A
|05FA16| LSR A
|05FA17| LSR A

|05FA18| LDY.b #$00

|05FA1A| PLP
|05FA1B| BPL .positive_velocity

|05FA1D| ORA.b #$F0
|05FA1F| DEY

.positive_velocity
|05FA20| ADC.w $0D00,X
|05FA23| STA.w $0D00,X

|05FA26| TYA
|05FA27| ADC.w $0D20,X
|05FA2A| STA.w $0D20,X

.exit
|05FA2D| RTS

;===================================================================================================

MoveSpriteZ_bank05:
|05FA2E| LDA.w $0F80,X
|05FA31| ASL A
|05FA32| ASL A
|05FA33| ASL A
|05FA34| ASL A

|05FA35| CLC
|05FA36| ADC.w $0F90,X
|05FA39| STA.w $0F90,X

|05FA3C| LDA.w $0F80,X
|05FA3F| PHP

|05FA40| LSR A
|05FA41| LSR A
|05FA42| LSR A
|05FA43| LSR A

|05FA44| PLP
|05FA45| BPL .positive_velocity

|05FA47| ORA.b #$F0

.positive_velocity
|05FA49| ADC.w $0F70,X
|05FA4C| STA.w $0F70,X

|05FA4F| RTS

;===================================================================================================

GetScreenCoordinates_bank05:
|05FA50| JSL GetScreenCoordinates_long
|05FA54| BCC .onscreen

|05FA56| PLA
|05FA57| PLA

.onscreen
|05FA58| RTS

;===================================================================================================

TutorialGuard_ShowMessageOnContact:
|05FA59| STA.w $1CF0
|05FA5C| STY.w $1CF1

|05FA5F| LDA.w $0E40,X
|05FA62| PHA

|05FA63| LDA.b #$80
|05FA65| STA.w $0E40,X

|05FA68| LDA.w $0F60,X
|05FA6B| PHA

|05FA6C| LDA.b #$07
|05FA6E| STA.w $0F60,X

|05FA71| JSL CheckDamageToLink_same_layer_long

|05FA75| PLA
|05FA76| STA.w $0F60,X

|05FA79| PLA
|05FA7A| STA.w $0E40,X

|05FA7D| BCC EXIT_05FAA1

|05FA7F| PHP
|05FA80| JSL AbortMovement
|05FA84| PLP

|05FA85| STZ.w $0372
|05FA88| STZ.b $5E

|05FA8A| LDA.b $4D
|05FA8C| BNE EXIT_05FAA1

;===================================================================================================

ShowMessageMinimal:
|05FA8E| STZ.w $0223
|05FA91| STZ.w $1CD8

|05FA94| LDA.b #$02
|05FA96| STA.b $11

|05FA98| LDA.b $10
|05FA9A| STA.w $010C

|05FA9D| LDA.b #$0E
|05FA9F| STA.b $10

;---------------------------------------------------------------------------------------------------

#EXIT_05FAA1:
|05FAA1| RTL

;===================================================================================================

ReadOverworldTileType:
|05FAA2| REP #$30

|05FAA4| LDA.b $00
|05FAA6| SEC
|05FAA7| SBC.w $0708
|05FAAA| AND.w $070A
|05FAAD| ASL A
|05FAAE| ASL A
|05FAAF| ASL A
|05FAB0| STA.b $06

|05FAB2| LDA.b $02
|05FAB4| SEC
|05FAB5| SBC.w $070C
|05FAB8| AND.w $070E
|05FABB| ORA.b $06
|05FABD| TAX

|05FABE| LDA.l $7E2000,X
|05FAC2| TAX

|05FAC3| LDA.l OverworldTileTypeTable,X

|05FAC7| SEP #$30

|05FAC9| RTL

;===================================================================================================

Sprite_3A_MagicBat:
|05FACA| PHB
|05FACB| PHK
|05FACC| PLB

|05FACD| JSR .main

|05FAD0| PLB

|05FAD1| RTL

;---------------------------------------------------------------------------------------------------

.main
|05FAD2| LDA.w $0EB0,X
|05FAD5| BEQ MagicBat

|05FAD7| JSL MagicBatLightning

|05FADB| RTS

;===================================================================================================

MagicBat:
|05FADC| LDA.w $0D80,X
|05FADF| BEQ .hidden

|05FAE1| JSL SpriteDraw_SingleLarge_long

.hidden
|05FAE5| JSR CheckIfActive_bank05
|05FAE8| JSR MoveSpriteXY_bank05
|05FAEB| JSR MoveSpriteZ_bank05

|05FAEE| LDA.w $0D80,X
|05FAF1| JSL JumpTableLocal
|05FAF5| dw MagicBat_Dormant
|05FAF7| dw MagicBat_Ascend
|05FAF9| dw MagicBat_Attack
|05FAFB| dw MagicBat_EnhanceMagic
|05FAFD| dw MagicBat_Retreat

;===================================================================================================

MagicBat_Dormant:
|05FAFF| LDA.l $7EF37B
|05FB03| CMP.b #$01
|05FB05| BCS .exit

|05FB07| JSL CheckDamageToLink_same_layer_long
|05FB0B| BCC .exit

; Only checks for powder existing while touching.
; The dust doesn't actually have to hit the altar.
|05FB0D| LDY.b #$04

.next_ancilla
|05FB0F| LDA.w $0C4A,Y
|05FB12| CMP.b #$1A ; ANCILLA 1A
|05FB14| BEQ .powder

|05FB16| DEY
|05FB17| BPL .next_ancilla

|05FB19| RTS

.powder
|05FB1A| JSL SpawnSuperficialExplosion

|05FB1E| LDA.b #$0D ; SFX1.0D
|05FB20| JSL QueueSpriteSFX1WithPan

|05FB24| INC.w $0D80,X

|05FB27| LDA.b #$14
|05FB29| STA.w $0D90,X

|05FB2C| LDA.b #$01
|05FB2E| STA.w $02E4

|05FB31| LDA.w $0F50,X
|05FB34| ORA.b #$20
|05FB36| STA.w $0F50,X

.exit
|05FB39| RTS

;===================================================================================================

pool MagicBat_Ascend

.speed_x
|05FB3A| db  -8,   7

endpool

;---------------------------------------------------------------------------------------------------

MagicBat_Ascend:
|05FB3C| LDA.w $0DF0,X
|05FB3F| BNE .exit

|05FB41| DEC.w $0D90,X

|05FB44| LDA.w $0D90,X
|05FB47| STA.w $0DF0,X

|05FB4A| CMP.b #$01
|05FB4C| BEQ .speak

|05FB4E| LSR A
|05FB4F| LSR A
|05FB50| STA.w $0F80,X

|05FB53| LDA.w $0D90,X
|05FB56| AND.b #$01
|05FB58| TAY

|05FB59| LDA.w .speed_x,Y
|05FB5C| CLC
|05FB5D| ADC.w $0D50,X
|05FB60| STA.w $0D50,X

|05FB63| LDA.w $0DC0,X
|05FB66| EOR.b #$01
|05FB68| STA.w $0DC0,X

.exit
|05FB6B| RTS

;---------------------------------------------------------------------------------------------------

.speak
|05FB6C| LDA.b #$0E ; MESSAGE 010E
|05FB6E| LDY.b #$01
|05FB70| JSL ShowMessageUnconditional

|05FB74| INC.w $0D80,X

|05FB77| STZ.w $0DC0,X
|05FB7A| STZ.w $0F80,X
|05FB7D| STZ.w $0D50,X

|05FB80| LDA.b #$FF
|05FB82| STA.w $0DF0,X

|05FB85| RTS

;===================================================================================================

pool MagicBat_Attack

.palette
|05FB86| db $0A, $04, $02, $04, $02, $0A, $04, $02

endpool

;---------------------------------------------------------------------------------------------------

MagicBat_Attack:
|05FB8E| LDA.w $0DF0,X
|05FB91| BNE .delay

|05FB93| INC.w $0D80,X

|05FB96| LDA.b #$40
|05FB98| STA.w $0E00,X

; It's guaranteed to be 0 here.
|05FB9B| LDA.w $0DF0,X

.delay
|05FB9E| LSR A
|05FB9F| AND.b #$07
|05FBA1| TAY

|05FBA2| LDA.w $0F50,X
|05FBA5| AND.b #$F1
|05FBA7| ORA.w .palette,Y
|05FBAA| STA.w $0F50,X

|05FBAD| LDA.w $0DF0,X
|05FBB0| CMP.b #$F0
|05FBB2| BNE .exit

|05FBB4| JSL SpawnCursedLightning

.exit
|05FBB8| RTS

;===================================================================================================

MagicBat_EnhanceMagic:
|05FBB9| LDA.w $0E00,X
|05FBBC| BNE .delay

|05FBBE| LDA.b #$0F ; MESSAGE 010F
|05FBC0| LDY.b #$01
|05FBC2| JSL ShowMessageUnconditional

|05FBC6| PHX

|05FBC7| JSL RestoreBackgroundPalettes

|05FBCB| INC.b $15

|05FBCD| PLX

|05FBCE| INC.w $0D80,X

|05FBD1| LDA.b #$01
|05FBD3| STA.l $7EF37B

|05FBD7| JSL RefreshItemIcon

|05FBDB| RTS

.delay
|05FBDC| CMP.b #$10
|05FBDE| BNE .exit

|05FBE0| STA.w $0FF9

.exit
|05FBE3| RTS

;===================================================================================================

MagicBat_Retreat:
|05FBE4| JSL SpawnDummyDeathAnimation

|05FBE8| STZ.w $0DD0,X

|05FBEB| STZ.w $02E4

|05FBEE| RTS

;===================================================================================================

Sprite_3B_BonkItem:
|05FBEF| PHB
|05FBF0| PHK
|05FBF1| PLB

|05FBF2| JSR .main

|05FBF5| PLB

|05FBF6| RTL

;---------------------------------------------------------------------------------------------------

.main
|05FBF7| LDA.w $0DC0,X
|05FBFA| JSL JumpTableLocal
|05FBFE| dw BookOfMudora
|05FC00| dw BonkKey
|05FC02| dw LumberjackTree

;===================================================================================================

BonkKey:
|05FC04| JSL SpriteDraw_ThinAndTall_long
|05FC08| JSR CheckIfActive_bank05
|05FC0B| JSL CheckDamageToLink_same_layer_long
|05FC0F| BCC .no_contact

|05FC11| LDA.b #$03
|05FC13| STA.w $0D80,X

.no_contact
|05FC16| JSR MoveSpriteXY_bank05

|05FC19| DEC.w $0F80,X

|05FC1C| JSR MoveSpriteZ_bank05

|05FC1F| LDA.w $0F70,X
|05FC22| BPL .continue

|05FC24| STZ.w $0D40,X
|05FC27| STZ.w $0F70,X

|05FC2A| LDA.w $0F80,X
|05FC2D| EOR.b #$FF
|05FC2F| INC A

|05FC30| LSR A
|05FC31| LSR A
|05FC32| STA.w $0F80,X

|05FC35| AND.b #$FE
|05FC37| BEQ .continue

|05FC39| LDA.b #$14 ; SFX3.14
|05FC3B| JSL QueueSpriteSFX3WithPan

.continue
|05FC3F| LDA.w $0D80,X
|05FC42| JSL JumpTableLocal
|05FC46| dw BonkKey_Undisturbed
|05FC48| dw BonkItem_KnockedDown
|05FC4A| dw BonkItem_Land
|05FC4C| dw BonkKey_GrantKey

;===================================================================================================

BonkKey_Undisturbed:
|05FC4E| REP #$20

|05FC50| LDA.w $0FD8
|05FC53| SEC
|05FC54| SBC.b $22

|05FC56| CLC
|05FC57| ADC.w #$0010

|05FC5A| CMP.w #$0021
|05FC5D| BCS .remain_stable

|05FC5F| LDA.w $0FDA
|05FC62| SEC
|05FC63| SBC.b $20

|05FC65| CLC
|05FC66| ADC.w #$0018

|05FC69| CMP.w #$0029
|05FC6C| BCS .remain_stable

|05FC6E| LDA.w $011A
|05FC71| ORA.w $011C
|05FC74| BEQ .remain_stable

|05FC76| INC.w $0D80,X

.remain_stable
|05FC79| SEP #$30

|05FC7B| RTS

;===================================================================================================

pool BonkKey_GrantKey

.room_flag
|05FC7C| db $40
|05FC7D| db $20

endpool

;---------------------------------------------------------------------------------------------------

BonkKey_GrantKey:
|05FC7E| LDA.l $7EF36F
|05FC82| INC A
|05FC83| STA.l $7EF36F

|05FC87| STZ.w $0DD0,X

|05FC8A| LDA.w $0CBA,X
|05FC8D| TAY

|05FC8E| LDA.w $0403
|05FC91| ORA.w .room_flag,Y
|05FC94| STA.w $0403

|05FC97| LDA.b #$2F ; SFX3.2F
|05FC99| JSL QueueSpriteSFX3WithPan

|05FC9D| RTS

;===================================================================================================

BookOfMudora:
|05FC9E| JSL SpriteDraw_SingleLarge_long
|05FCA2| JSR CheckIfActive_bank05
|05FCA5| JSL CheckDamageToLink_same_layer_long
|05FCA9| BCC .no_contact

|05FCAB| LDA.b #$03
|05FCAD| STA.w $0D80,X

.no_contact
|05FCB0| JSR MoveSpriteXY_bank05

|05FCB3| DEC.w $0F80,X

|05FCB6| JSR MoveSpriteZ_bank05

|05FCB9| LDA.w $0F70,X

|05FCBC| BPL .continue

|05FCBE| STZ.w $0D40,X
|05FCC1| STZ.w $0F70,X

|05FCC4| LDA.w $0F80,X
|05FCC7| EOR.b #$FF
|05FCC9| INC A
|05FCCA| LSR A
|05FCCB| LSR A
|05FCCC| STA.w $0F80,X

|05FCCF| AND.b #$FE
|05FCD1| BEQ .continue

|05FCD3| LDA.b #$21 ; SFX2.21
|05FCD5| JSL QueueSpriteSFX2WithPan

.continue
|05FCD9| LDA.w $0D80,X
|05FCDC| JSL JumpTableLocal
|05FCE0| dw BookOfMudora_WaitForBonk
|05FCE2| dw BonkItem_KnockedDown
|05FCE4| dw BonkItem_Land
|05FCE6| dw BookOfMudora_GrantLiterature

;===================================================================================================

BookOfMudora_WaitForBonk:
; Have to be facing up
|05FCE8| LDA.w $002F
|05FCEB| BNE .fail

|05FCED| REP #$20

|05FCEF| LDA.w $0FD8
|05FCF2| SEC
|05FCF3| SBC.b $22

|05FCF5| CLC
|05FCF6| ADC.w #$0027

|05FCF9| CMP.w #$002F
|05FCFC| BCS .fail

|05FCFE| LDA.w $0FDA
|05FD01| SEC
|05FD02| SBC.b $20

|05FD04| CLC
|05FD05| ADC.w #$0028

|05FD08| CMP.w #$002E
|05FD0B| BCS .fail

|05FD0D| LDA.w $011A
|05FD10| ORA.w $011C
|05FD13| BEQ .fail

|05FD15| INC.w $0D80,X

.fail
|05FD18| SEP #$30

|05FD1A| RTS

;===================================================================================================

BonkItem_KnockedDown:
|05FD1B| LDA.b #$20
|05FD1D| STA.w $0F80,X

|05FD20| LDA.b #$FB
|05FD22| STA.w $0D40,X

|05FD25| INC.w $0D80,X

|05FD28| LDA.b #$1B ; SFX3.1B
|05FD2A| STA.w $012F

|05FD2D| RTS

;===================================================================================================

BonkItem_Land:
|05FD2E| LDA.w $0F70,X
|05FD31| BNE .exit

|05FD33| LDA.w $00EE
|05FD36| STA.w $0F20,X

.exit
|05FD39| RTS

;===================================================================================================

BookOfMudora_GrantLiterature:
|05FD3A| PHX

|05FD3B| JSL CancelDash_long

|05FD3F| LDY.b #$1D ; ITEMGET 1D
|05FD41| STZ.w $02E9
|05FD44| JSL GrantItemReceipt

|05FD48| PLX

|05FD49| STZ.w $0DD0,X

|05FD4C| RTS

;===================================================================================================

LumberjackTree:
|05FD4D| LDA.b #$8F
|05FD4F| STA.w $0E40,X

|05FD52| LDA.b #$47
|05FD54| STA.w $0F60,X

|05FD57| JSR SpriteDraw_LumberjackTree

|05FD5A| JSR CheckIfActive_bank05
|05FD5D| JSL CheckDamageToLink_same_layer_long
|05FD61| BCC .no_contact

|05FD63| PHX

|05FD64| JSL AbortMovement

|05FD68| STZ.b $5E

|05FD6A| JSL RepelDash_long

|05FD6E| PLX

.no_contact
|05FD6F| JSR MoveSpriteXY_bank05

|05FD72| DEC.w $0F80,X

|05FD75| JSR MoveSpriteZ_bank05

|05FD78| LDA.w $0F70,X
|05FD7B| BPL .continue

|05FD7D| STZ.w $0F70,X

|05FD80| LDA.w $0F80,X
|05FD83| EOR.b #$FF
|05FD85| INC A

|05FD86| LSR A
|05FD87| LSR A
|05FD88| STA.w $0F80,X

.continue
|05FD8B| LDA.w $0D80,X
|05FD8E| JSL JumpTableLocal
|05FD92| dw LumberjackTree_WaitForBonk
|05FD94| dw LumberjackTree_ExplodeViolently
|05FD96| dw LumberjackTree_DispersionOfLeaves

;===================================================================================================

LumberjackTree_WaitForBonk:
|05FD98| STZ.w $0E80,X

|05FD9B| REP #$20

|05FD9D| LDA.w $0FD8
|05FDA0| SEC
|05FDA1| SBC.b $22

|05FDA3| CLC
|05FDA4| ADC.w #$0018

|05FDA7| CMP.w #$0041
|05FDAA| BCS .fail

|05FDAC| LDA.w $0FDA
|05FDAF| SEC
|05FDB0| SBC.b $20

|05FDB2| CLC
|05FDB3| ADC.w #$0020

|05FDB6| CMP.w #$0051
|05FDB9| BCS .fail

|05FDBB| SEP #$30

|05FDBD| LDA.w $011A
|05FDC0| ORA.w $011C
|05FDC3| BEQ .fail

|05FDC5| INC.w $0D80,X

|05FDC8| LDA.b #$14
|05FDCA| STA.w $0F80,X

.fail
|05FDCD| SEP #$30

|05FDCF| RTS

;===================================================================================================

LumberjackTree_ExplodeViolently:
|05FDD0| LDA.w $0F70,X
|05FDD3| BNE .exit

|05FDD5| INC.w $0D80,X

|05FDD8| LDA.b #$1B ; SFX3.1B
|05FDDA| STA.w $012F

|05FDDD| LDA.b #$FC
|05FDDF| STA.w $0D50,X
|05FDE2| STA.w $0D40,X

|05FDE5| JSR SpawnABillionLeaves

|05FDE8| LDA.b #$05
|05FDEA| STA.w $0D50,Y
|05FDED| STA.w $0D40,Y

|05FDF0| JSR SpawnABillionLeaves

|05FDF3| LDA.b #$05
|05FDF5| STA.w $0D50,Y

|05FDF8| LDA.b #$FC
|05FDFA| STA.w $0D40,Y

|05FDFD| JSR SpawnABillionLeaves

|05FE00| LDA.b #$FC
|05FE02| STA.w $0D50,Y

|05FE05| LDA.b #$04
|05FE07| STA.w $0D40,Y

.exit
|05FE0A| RTS

;===================================================================================================

LumberjackTree_DispersionOfLeaves:
|05FE0B| LDA.w $0DF0,X
|05FE0E| BNE .exit

|05FE10| LDA.b #$08
|05FE12| STA.w $0DF0,X

|05FE15| LDA.w $0E80,X
|05FE18| CMP.b #$06
|05FE1A| BNE .delay

|05FE1C| STZ.w $0DD0,X

.delay
|05FE1F| INC.w $0E80,X

.exit
|05FE22| RTS

;===================================================================================================

pool SpriteDraw_LumberjackTree

.tree_char
|05FE23| db $00, $31, $02, $31, $02, $71, $00, $71
|05FE2B| db $20, $31, $22, $31, $22, $71, $20, $71
|05FE33| db $04, $31, $06, $31, $06, $71, $04, $71
|05FE3B| db $24, $31, $26, $31, $26, $71, $24, $71

.offset_x
|05FE43| db  10,  22,  30,   1,  34,   5,  13,  29
|05FE4B| db   0,  17,  27,  44,  15,  33,  18,  26

.offset_y
|05FE53| db   0,   4,   2,   7,  10,  16,  24,  23
|05FE5B| db  34,  35,  30,  31,  46,  42,  10,  11

.char
|05FE63| db $08, $08, $28, $28, $2A, $2A

.prop
|05FE69| db $31, $71, $31, $71, $31, $71

endpool

;---------------------------------------------------------------------------------------------------

; What the...?
SpriteDraw_LumberjackTree:
|05FE6F| JSR GetScreenCoordinates_bank05

|05FE72| LDA.w $0FA8
|05FE75| SEC
|05FE76| SBC.b #$20
|05FE78| STA.w $0FA8

|05FE7B| LDA.w $0FA9
|05FE7E| SEC
|05FE7F| SBC.b #$20
|05FE81| STA.w $0FA9

|05FE84| PHX

|05FE85| LDA.w $0E80,X
|05FE88| BNE .exploding

;---------------------------------------------------------------------------------------------------

|05FE8A| REP #$10

|05FE8C| LDX.b $90

|05FE8E| LDA.b #$03
|05FE90| STA.b $00

|05FE92| LDA.w $0FA8

.next_oam_entry
|05FE95| STA.b $00,X
|05FE97| STA.b $10,X
|05FE99| STA.b $20,X
|05FE9B| STA.b $30,X

|05FE9D| CLC
|05FE9E| ADC.b #$10

|05FEA0| INX ; +4
|05FEA1| INX
|05FEA2| INX
|05FEA3| INX

|05FEA4| DEC.b $00
|05FEA6| BPL .next_oam_entry

;---------------------------------------------------------------------------------------------------

|05FEA8| LDX.b $90

|05FEAA| LDA.w $0FA9
|05FEAD| STA.b $01,X
|05FEAF| STA.b $05,X
|05FEB1| STA.b $09,X
|05FEB3| STA.b $0D,X

|05FEB5| CLC
|05FEB6| ADC.b #$10
|05FEB8| STA.b $11,X
|05FEBA| STA.b $15,X
|05FEBC| STA.b $19,X
|05FEBE| STA.b $1D,X

|05FEC0| CLC
|05FEC1| ADC.b #$10
|05FEC3| STA.b $21,X
|05FEC5| STA.b $25,X
|05FEC7| STA.b $29,X
|05FEC9| STA.b $2D,X

|05FECB| CLC
|05FECC| ADC.b #$10
|05FECE| STA.b $31,X
|05FED0| STA.b $35,X
|05FED2| STA.b $39,X
|05FED4| STA.b $3D,X

;---------------------------------------------------------------------------------------------------

|05FED6| REP #$30

|05FED8| LDY.w #$0000

.next_tree_char
|05FEDB| LDA.w .tree_char,Y
|05FEDE| STA.b $02,X

|05FEE0| INX ; +4
|05FEE1| INX
|05FEE2| INX
|05FEE3| INX

|05FEE4| INY
|05FEE5| INY

|05FEE6| CPY.w #$0020
|05FEE9| BCC .next_tree_char

|05FEEB| SEP #$30

|05FEED| PLX

|05FEEE| LDA.b #$0F
|05FEF0| LDY.b #$02
|05FEF2| JSL CorrectOAMEntries_long

|05FEF6| RTS

;---------------------------------------------------------------------------------------------------

.exploding
|05FEF7| LDA.w $0E80,X
|05FEFA| DEC A
|05FEFB| STA.b $00
|05FEFD| STZ.b $01

|05FEFF| REP #$10

|05FF01| LDX.b $90
|05FF03| LDY.w #$000F

.next_leaf_object
|05FF06| LDA.w $0FA8
|05FF09| CLC
|05FF0A| ADC.w .offset_x,Y
|05FF0D| STA.b $00,X

|05FF0F| INX

|05FF10| LDA.w $0FA9
|05FF13| CLC
|05FF14| ADC.w .offset_y,Y
|05FF17| STA.b $00,X

|05FF19| INX

|05FF1A| PHY

|05FF1B| LDY.b $00

|05FF1D| LDA.w .char,Y
|05FF20| STA.b $00,X

|05FF22| INX

|05FF23| LDA.w .prop,Y
|05FF26| STA.b $00,X

|05FF28| INX

|05FF29| PLY
|05FF2A| DEY
|05FF2B| BPL .next_leaf_object

;---------------------------------------------------------------------------------------------------

|05FF2D| SEP #$30

|05FF2F| PLX

|05FF30| LDA.b #$0F
|05FF32| LDY.b #$02

|05FF34| JSL CorrectOAMEntries_long

|05FF38| RTS

;===================================================================================================

SpawnABillionLeaves:
|05FF39| LDA.b #$3B ; SPRITE 3B
|05FF3B| JSL SpawnSpriteDynamically

|05FF3F| LDA.b #$02
|05FF41| STA.w $0DC0,Y

|05FF44| LDA.w $0F80,X
|05FF47| STA.w $0F80,Y

|05FF4A| LDA.b #$01
|05FF4C| STA.w $0E80,Y

|05FF4F| LDA.b #$02
|05FF51| STA.w $0D80,Y

|05FF54| LDA.b #$08
|05FF56| STA.w $0DF0,Y

|05FF59| JSL SetSpawnedSpriteCoordinates

|05FF5D| RTS

;===================================================================================================

Sprite_3C_KidInKak:
|05FF5E| PHB
|05FF5F| PHK
|05FF60| PLB

|05FF61| JSR .main

|05FF64| PLB

|05FF65| RTL

;---------------------------------------------------------------------------------------------------

.main
|05FF66| JSR SpriteDraw_KidInKak
|05FF69| JSR CheckIfActive_bank05

|05FF6C| JSL BehaveAsBarrier
|05FF70| JSL TrackBodyToHead
|05FF74| JSR GetDirectionTowardsLink_bank05

|05FF77| TYA
|05FF78| EOR.b #$03
|05FF7A| STA.w $0EB0,X

|05FF7D| LDA.l $7EF3C7
|05FF81| CMP.b #$03
|05FF83| BCS .dont_discuss_quest

|05FF85| LDA.b #$45 ; MESSAGE 0145
|05FF87| LDY.b #$01
|05FF89| JSL ShowSolicitedMessage

|05FF8D| BCC .exit

|05FF8F| LDA.b #$02
|05FF91| STA.l $7EF3C7

.exit
|05FF95| RTS

;---------------------------------------------------------------------------------------------------

.dont_discuss_quest
|05FF96| LDA.b #$46 ; MESSAGE 0146
|05FF98| LDY.b #$01
|05FF9A| JSL ShowSolicitedMessage

|05FF9E| RTS

;===================================================================================================

pool SpriteDraw_KidInKak

.oam_groups
; group00
|05FF9F| dw   0,  -8 : db $82, $08, $00, $02
|05FFA7| dw   0,   0 : db $AA, $0A, $00, $02

; group01
|05FFAF| dw   0,  -8 : db $82, $08, $00, $02
|05FFB7| dw   0,   0 : db $AA, $0A, $00, $02

; group02
|05FFBF| dw   0,  -8 : db $80, $48, $00, $02
|05FFC7| dw   0,   0 : db $AA, $0A, $00, $02

; group03
|05FFCF| dw   0,  -8 : db $80, $08, $00, $02
|05FFD7| dw   0,   0 : db $AA, $0A, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_KidInKak:
|05FFDF| LDA.b #$02
|05FFE1| STA.b $06
|05FFE3| STZ.b $07

|05FFE5| LDA.w $0DE0,X

|05FFE8| ASL A ; x16
|05FFE9| ASL A
|05FFEA| ASL A
|05FFEB| ASL A

|05FFEC| ADC.b #<.oam_groups
|05FFEE| STA.b $08

|05FFF0| LDA.b #>.oam_groups
|05FFF2| ADC.b #$00
|05FFF4| STA.b $09

|05FFF6| JSL TabulatedSpriteDraw.player_deferred
|05FFFA| JSL DrawSpriteShadow_long

|05FFFE| RTS

;===================================================================================================
; FREE ROM: 0x01
;===================================================================================================
NULL_05FFFF:
|05FFFF| db $FF

;===================================================================================================

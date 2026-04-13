org $078000

;===================================================================================================
; Link's main handler
;===================================================================================================
Link:
|078000| PHB
|078001| PHK
|078002| PLB

; cache link's coordinates
|078003| REP #$20

|078005| LDA.b $22
|078007| STA.w $0FC2

|07800A| LDA.b $20
|07800C| STA.w $0FC4

; Unfreeze sprites
|07800F| SEP #$20

|078011| STZ.w $0FC1

|078014| LDA.w $02E4
|078017| BNE .no_control

|078019| JSR LinkControlHandler

.no_control
|07801C| JSR HandleSomariaAndGraves

|07801F| PLB

|078020| RTL

;===================================================================================================
; Link SFX Control
;===================================================================================================
PlayLinkSFX1Panned:
|078021| JSR GetLinkSFXPan
|078024| STA.w $012D

|078027| RTS

;===================================================================================================

PlayLinkSFX2Panned:
|078028| JSR GetLinkSFXPan
|07802B| STA.w $012E

|07802E| RTS

;===================================================================================================

PlayLinkSFX3Panned:
|07802F| JSR GetLinkSFXPan
|078032| STA.w $012F

|078035| RTS

;===================================================================================================

GetLinkSFXPan:
|078036| STA.w $0CF8

|078039| JSL CalculateLinkSFXPan
|07803D| ORA.w $0CF8

|078040| RTS

;===================================================================================================

pool LinkControlHandler

.vectors
|078041| dw LinkState_Default                  ; 0x00
|078043| dw LinkState_Pits                     ; 0x01
|078045| dw LinkState_Recoil                   ; 0x02
|078047| dw LinkState_SpinAttack               ; 0x03
|078049| dw LinkState_Swimming                 ; 0x04
|07804B| dw LinkState_OnIce                    ; 0x05
|07804D| dw LinkState_Recoil                   ; 0x06
|07804F| dw LinkState_Zapped                   ; 0x07
|078051| dw LinkState_UsingEther               ; 0x08
|078053| dw LinkState_UsingBombos              ; 0x09
|078055| dw LinkState_UsingQuake               ; 0x0A
|078057| dw LinkState_HoppingSouthOW           ; 0x0B
|078059| dw LinkState_HoppingHorizontallyOW    ; 0x0C
|07805B| dw LinkState_HoppingDiagonallyUpOW    ; 0x0D
|07805D| dw LinkState_HoppingDiagonallyDownOW  ; 0x0E
|07805F| dw LinkState_0F                       ; 0x0F
|078061| dw LinkState_0F                       ; 0x10
|078063| dw LinkState_Dashing                  ; 0x11
|078065| dw LinkState_ExitingDash              ; 0x12
|078067| dw LinkState_Hookshotting             ; 0x13
|078069| dw LinkState_CrossingWorlds           ; 0x14
|07806B| dw LinkState_ShowingOffItem           ; 0x15
|07806D| dw LinkState_Sleeping                 ; 0x16
|07806F| dw LinkState_Bunny                    ; 0x17
|078071| dw LinkState_HoldingBigRock           ; 0x18
|078073| dw LinkState_ReceivingEther           ; 0x19
|078075| dw LinkState_ReceivingBombos          ; 0x1A
|078077| dw LinkState_ReadingDesertTablet      ; 0x1B
|078079| dw LinkState_TemporaryBunny           ; 0x1C
|07807B| dw LinkState_TreePull                 ; 0x1D
|07807D| dw LinkState_SpinAttack               ; 0x1E

endpool

;---------------------------------------------------------------------------------------------------

LinkControlHandler:
|07807F| LDA.w $0373 ; is damage queued for Link?
|078082| BEQ .no_damage

|078084| LDA.b $55 ; is cape active?
|078086| BEQ .no_cape

|078088| STZ.w $0373 ; cape is active, so prevent damage

|07808B| STZ.b $4D
|07808D| STZ.b $46

|07808F| BRA .no_damage

.no_cape
|078091| LDA.w $037B ; is the no damage flag on?
|078094| BNE .no_damage

|078096| LDA.w $0373 ; cache and clear damage to be taken
|078099| STA.b $00

|07809B| STZ.w $0373

; !WEIRD hardcoded boomerang things
|07809E| LDA.w $0C4A
|0780A1| CMP.b #$05 ; ANCILLA 05
|0780A3| BNE .dont_delete_boom

|0780A5| LDA.w $0300
|0780A8| BNE .dont_delete_boom

|0780AA| LDA.b $3D
|0780AC| BEQ .dont_delete_boom

|0780AE| STZ.w $0C4A
|0780B1| STZ.w $035F

.dont_delete_boom
|0780B4| LDA.w $031F
|0780B7| BNE .have_iframes

|0780B9| LDA.b #$3A
|0780BB| STA.w $031F

.have_iframes
|0780BE| LDA.b #$26 ; SFX2.26 ; OOF
|0780C0| JSR PlayLinkSFX2Panned

|0780C3| INC.w $0CFC

|0780C6| LDA.l $7EF36D ; remove HP
|0780CA| SEC
|0780CB| SBC.b $00

; kill Link if he has 0 HP or >=21
; probably coulda used BCC after the SBC instead of this weird stuff
|0780CD| CMP.b #$00
|0780CF| BEQ .you_died

|0780D1| CMP.b #$A8
|0780D3| BCC .do_not_die

;---------------------------------------------------------------------------------------------------

.you_died
|0780D5| LDA.b $1C ; cache TM and TS queue
|0780D7| STA.l $7EC211

|0780DB| LDA.b $1D
|0780DD| STA.l $7EC212

|0780E1| LDA.b $10 ; cache main module
|0780E3| STA.w $010C

|0780E6| LDA.b #$12 ; death mode
|0780E8| STA.b $10

|0780EA| LDA.b #$01
|0780EC| STA.b $11

|0780EE| LDA.b #$00
|0780F0| STA.w $031F ; remove iframes
|0780F3| STA.l $7EF372 ; prevent healing

;---------------------------------------------------------------------------------------------------

.do_not_die
|0780F7| STA.l $7EF36D

.no_damage
|0780FB| LDA.b $5D ; LINKSTATE 00
|0780FD| BEQ .base_state

|0780FF| JSR HandleCapePassive

.base_state
|078102| LDA.b $5D
|078104| ASL A
|078105| TAX

|078106| JMP.w (.vectors,X)

;===================================================================================================

LinkState_Default:
|078109| JSR CacheCameraPropertiesIfOutdoors

; check player 2 B for debug cheats
|07810C| LDA.b $F5
|07810E| AND.b #$80
|078110| BEQ .stay_in_bounds_forever

|078112| LDA.w $037F
|078115| EOR.b #$01
|078117| STA.w $037F

.stay_in_bounds_forever
|07811A| JSR HandleBunnyTransformation
|07811D| BCC .no_bunny

|07811F| LDA.b $5D
|078121| CMP.b #$17 ; LINKSTATE 17
|078123| BNE .already_bunny

|078125| BRL LinkState_Bunny

.already_bunny
|078128| RTS

;---------------------------------------------------------------------------------------------------

.no_bunny
|078129| STZ.w $02CA ; I have no clue TODO set related to $0302 which is ????

|07812C| LDA.b $4D
|07812E| BEQ .not_recoiling

;---------------------------------------------------------------------------------------------------

; state 1D continues from here
#HandleLinkFromState1D:
|078130| STZ.w $0301
|078133| STZ.w $037A

|078136| STZ.w $020B ; debug variables?
|078139| STZ.w $0350 ; debug variables?

|07813C| STZ.w $030D
|07813F| STZ.w $030E ; debug variables?

|078142| STZ.w $030A

|078145| STZ.b $3B

|078147| LDA.b $3A ; clear Y button
|078149| AND.b #$BF
|07814B| STA.b $3A

|07814D| STZ.w $0308
|078150| STZ.w $0309

|078153| STZ.w $0376
|078156| STZ.b $48

|078158| JSL ResetSwimmingState

|07815C| LDA.b $50
|07815E| AND.b #$FE
|078160| STA.b $50

|078162| STZ.b $25

|078164| LDA.w $0360
|078167| BEQ .no_zapping

|078169| LDA.b $55
|07816B| BEQ .cape_is_off

|07816D| JSR ForciblyUnequipCape_quietly

;---------------------------------------------------------------------------------------------------

.cape_is_off
|078170| JSR ResetSwordAndItemUsage

|078173| LDA.b #$01
|078175| STA.w $037B

|078178| STZ.w $0300

|07817B| LDA.b #$02
|07817D| STA.b $3D

|07817F| STZ.b $2E

|078181| LDA.b $67
|078183| AND.b #$F0
|078185| STA.b $67

|078187| LDA.b #$2B ; SFX3.2B
|078189| JSR PlayLinkSFX3Panned

|07818C| LDA.b #$07 ; LINKSTATE 07
|07818E| STA.b $5D

|078190| BRL LinkState_Zapped

;---------------------------------------------------------------------------------------------------

.no_zapping
|078193| LDA.b $1B
|078195| BNE .pointless_branch

.pointless_branch
|078197| STZ.b $6B

|078199| LDA.b #$02 ; LINKSTATE 02
|07819B| STA.b $5D

|07819D| BRL LinkState_Recoil

;===================================================================================================

.not_recoiling
|0781A0| LDA.b #$FF ; reset Link's Z-coordinate and velocity
|0781A2| STA.b $24
|0781A4| STA.b $25
|0781A6| STA.b $29

|0781A8| STZ.w $02C6

|0781AB| JSR HandleTossing
|0781AE| BCS .continue_a

|0781B0| JSR HandleAPress

|0781B3| LDA.w $0308
|0781B6| ORA.w $0376
|0781B9| BNE .continue_a

|0781BB| LDA.w $0377
|0781BE| BNE .continue_a

|0781C0| JSR HandleYItem

|0781C3| LDA.l $7EF3C5
|0781C7| BEQ .continue_a

|0781C9| JSR HandleSwordCooldown

|0781CC| LDA.b $5D
|0781CE| CMP.b #$03 ; LINKSTATE 03
|0781D0| BNE .continue_a

|0781D2| STZ.b $30
|0781D4| STZ.b $31

|0781D6| BRL .dont_halt_link

;---------------------------------------------------------------------------------------------------

.continue_a
|0781D9| JSR HandleCapePassive_LiftCheck

|0781DC| LDA.b $46
|0781DE| BEQ .not_recoil_timering

|0781E0| LDA.b $6B
|0781E2| BEQ .dont_reset_slope

|0781E4| STZ.b $6B

.dont_reset_slope
|0781E6| STZ.w $030D
|0781E9| STZ.w $030E
|0781EC| STZ.w $030A

|0781EF| STZ.b $3B

|0781F1| STZ.w $0309
|0781F4| STZ.w $0308

|0781F7| STZ.w $0376

|0781FA| LDA.b $3A
|0781FC| AND.b #$80
|0781FE| BNE .dont_allow_turning

|078200| LDA.b $50
|078202| AND.b #$FE
|078204| STA.b $50

.dont_allow_turning
|078206| BRL HandleRecoilAndTimer

;---------------------------------------------------------------------------------------------------

.not_recoil_timering
|078209| LDA.w $0377
|07820C| BEQ .no_forced_pull_anim

|07820E| STZ.b $67

|078210| BRA .proceed_to_finish_up

.no_forced_pull_anim
|078212| LDA.w $02E1
|078215| BNE .proceed_to_finish_up

|078217| LDA.w $0376
|07821A| AND.b #$FD
|07821C| BNE .proceed_to_finish_up

|07821E| LDA.w $0308
|078221| AND.b #$7F
|078223| BNE .proceed_to_finish_up

|078225| LDA.w $0308
|078228| AND.b #$80
|07822A| BEQ .not_carrying

|07822C| LDA.w $0309
|07822F| AND.b #$01
|078231| BNE .proceed_to_finish_up

.not_carrying
|078233| LDA.w $0301
|078236| BNE .proceed_to_finish_up

|078238| LDA.w $037A
|07823B| BNE .proceed_to_finish_up

|07823D| LDA.b $3C
|07823F| CMP.b #$09
|078241| BCS .sword_out

|078243| LDA.b $3A
|078245| AND.b #$20
|078247| BNE .sword_out

|078249| LDA.b $3A
|07824B| AND.b #$80
|07824D| BEQ .sword_out

;---------------------------------------------------------------------------------------------------

.proceed_to_finish_up
|07824F| BRA .finish_up

;---------------------------------------------------------------------------------------------------

.sword_out
|078251| LDA.w $034A
|078254| BEQ .not_on_any_ice

|078256| LDA.b #$01
|078258| STA.w $0335
|07825B| STA.w $0337

|07825E| LDA.b #$80
|078260| STA.w $0334
|078263| STA.w $0336

|078266| BRL HandleSwimMovement

;---------------------------------------------------------------------------------------------------

.not_on_any_ice
|078269| JSR ResetAllAcceleration

|07826C| LDA.b $49
|07826E| AND.b #$0F
|078270| BNE .am_moving

|078272| LDA.w $0376
|078275| AND.b #$02
|078277| BNE .finish_up

|078279| LDA.b $F0
|07827B| AND.b #$0F
|07827D| BNE .am_moving

|07827F| STA.b $30
|078281| STA.b $31

|078283| STA.b $67
|078285| STA.b $26

|078287| STZ.b $2E

|078289| LDA.b $48
|07828B| AND.b #$F0
|07828D| STA.b $48

|07828F| LDX.b #$20
|078291| STX.w $0371

|078294| LDX.b #$13
|078296| STX.w $0375

|078299| BRA .finish_up

;---------------------------------------------------------------------------------------------------

.am_moving
|07829B| STA.b $67

|07829D| CMP.b $26
|07829F| BEQ .directions_matching

|0782A1| STZ.b $2A
|0782A3| STZ.b $2B
|0782A5| STZ.b $6B
|0782A7| STZ.b $48

|0782A9| LDX.b #$20
|0782AB| STX.w $0371

|0782AE| LDX.b #$13
|0782B0| STX.w $0375

.directions_matching
|0782B3| STA.b $26

;---------------------------------------------------------------------------------------------------

.finish_up
; TODO analyze and verify these
|0782B5| JSR HandleLinkDiagonalCollision
|0782B8| JSL HandleLinkVelocity
|0782BC| JSR HandleLinkCardinalCollision

|0782BF| JSL HandleLinkAnimation_FullLongEntry

|0782C3| LDA.w $0377
|0782C6| BEQ .dont_halt_link

|0782C8| STZ.b $30
|0782CA| STZ.b $31

.dont_halt_link
|0782CC| STZ.w $0302

|0782CF| JSR HandleIndoorCameraAndDoors

;---------------------------------------------------------------------------------------------------

#EXIT_0782D2:
|0782D2| CLC

|0782D3| RTS

;===================================================================================================

HandleBunnyTransformation:
|0782D4| LDA.w $03F5 ; temp bunny timer
|0782D7| ORA.w $03F6
|0782DA| BEQ EXIT_0782D2

|0782DC| LDA.w $03F7
|0782DF| BNE .tick_timer

|0782E1| LDA.b $5D ; if we're already a bunny, don't do anything
|0782E3| CMP.b #$17 ; LINKSTATE 17
|0782E5| BEQ .exit_clear_timer

|0782E7| CMP.b #$1C ; LINKSTATE 1C
|0782E9| BEQ .exit_clear_timer

|0782EB| LDA.w $0309
|0782EE| AND.b #$02
|0782F0| BEQ .ignore_carry

|0782F2| STZ.w $0308

.ignore_carry
|0782F5| LDA.w $0308
|0782F8| AND.b #$80
|0782FA| PHA

|0782FB| JSL ResetLinkProperties_A

|0782FF| PLA
|078300| STA.w $0308

;---------------------------------------------------------------------------------------------------

|078303| LDX.b #$04

.next_ancilla
|078305| LDA.w $0C4A,X
|078308| CMP.b #$30 ; ANCILLA 30
|07830A| BEQ .kill_ancilla

|07830C| CMP.b #$31 ; ANCILLA 31
|07830E| BNE .skip_ancilla

.kill_ancilla
|078310| STZ.w $0C4A,X

.skip_ancilla
|078313| DEX
|078314| BPL .next_ancilla

;---------------------------------------------------------------------------------------------------

|078316| JSR CancelDash

|078319| LDY.b #$04
|07831B| LDA.b #$23 ; ANCILLA 23
|07831D| JSL AncillaAdd_CapePoof

|078321| LDA.b #$14 ; SFX2.14
|078323| JSR PlayLinkSFX2Panned

|078326| LDA.b #$14
|078328| STA.w $02E2

|07832B| LDA.b #$01
|07832D| STA.w $037B
|078330| STA.w $03F7

|078333| LDA.b #$0C
|078335| STA.b $4B

;---------------------------------------------------------------------------------------------------

.tick_timer
|078337| DEC.w $02E2
|07833A| BPL .dont_revert

|07833C| LDA.b #$1C ; LINKSTATE 1C
|07833E| STA.b $5D

|078340| LDA.b #$01
|078342| STA.w $02E0
|078345| STA.b $56

|078347| JSL RefreshEquipmentPalettes_bunny

|07834B| STZ.b $4B
|07834D| STZ.w $037B
|078350| STZ.w $03F7

|078353| BRA .dont_revert

;---------------------------------------------------------------------------------------------------

.exit_clear_timer
|078355| STZ.w $03F5
|078358| STZ.w $03F6

|07835B| CLC

|07835C| RTS

;---------------------------------------------------------------------------------------------------

.dont_revert
|07835D| SEC

|07835E| RTS

;===================================================================================================

LinkState_TemporaryBunny:
|07835F| LDA.w $03F5
|078362| ORA.w $03F6
|078365| BNE .delay_change_back

|078367| LDY.b #$04
|078369| LDA.b #$23 ; ANCILLA 23
|07836B| JSL AncillaAdd_CapePoof

|07836F| LDA.b #$15 ; SFX2.15
|078371| JSR PlayLinkSFX2Panned

|078374| LDA.b #$20
|078376| STA.w $02E2

|078379| LDA.b #$00 ; LINKSTATE 00
|07837B| STA.b $5D

|07837D| JSL ResetLinkProperties_C

|078381| STZ.w $03F7

|078384| STZ.b $56
|078386| STZ.w $02E0

|078389| JSL RefreshEquipmentPalettes_sword_and_mail

|07838D| STZ.w $03F7

|078390| BRL LinkState_Default

;---------------------------------------------------------------------------------------------------

#UNREACHABLE_078393:
|078393| RTS

;---------------------------------------------------------------------------------------------------

.delay_change_back
|078394| REP #$20

|078396| DEC.w $03F5

|078399| SEP #$20

;===================================================================================================

LinkState_Bunny:
|07839B| JSR CacheCameraPropertiesIfOutdoors

|07839E| LDA.b $F5
|0783A0| AND.b #$80
|0783A2| BEQ .dont_toggle_oob

|0783A4| LDA.w $037F
|0783A7| EOR.b #$01
|0783A9| STA.w $037F

.dont_toggle_oob
|0783AC| STZ.w $02CA

|0783AF| LDA.w $0345
|0783B2| BNE LinkState_Bunny.recache

|0783B4| LDA.b $4D
|0783B6| BEQ .recoiling

|0783B8| LDA.l $7EF357
|0783BC| BEQ LinkState_Bunny.recache

|0783BE| STZ.w $02E0

;---------------------------------------------------------------------------------------------------

.recache
|0783C1| STZ.w $03F7
|0783C4| STZ.w $03F5
|0783C7| STZ.w $03F6

|0783CA| LDA.l $7EF357
|0783CE| BEQ .no_pearl_a

|0783D0| STZ.b $56
|0783D2| STZ.b $4D

;---------------------------------------------------------------------------------------------------

.no_pearl_a
|0783D4| STZ.b $2E
|0783D6| STZ.w $02E1
|0783D9| STZ.b $50

|0783DB| JSL ResetSwimmingState

|0783DF| LDA.b #$02 ; LINKSTATE 02
|0783E1| STA.b $5D

|0783E3| LDA.l $7EF357
|0783E7| BEQ .no_pearl_b

|0783E9| LDA.b #$00 ; LINKSTATE 00
|0783EB| STA.b $5D

|0783ED| JSL RefreshEquipmentPalettes_sword_and_mail

.no_pearl_b
|0783F1| BRL .exit

;---------------------------------------------------------------------------------------------------

.recoiling
|0783F4| LDA.b $46
|0783F6| BEQ .wait_maybe_not_recoiling

|0783F8| BRL HandleRecoilAndTimer

.wait_maybe_not_recoiling
|0783FB| LDA.b #$FF
|0783FD| STA.b $24
|0783FF| STA.b $25
|078401| STA.b $29

|078403| STZ.w $02C6

; check for ice
|078406| LDA.w $034A
|078409| BEQ .not_on_any_ice

|07840B| LDA.b #$01
|07840D| STA.w $0335
|078410| STA.w $0337

|078413| LDA.b #$80
|078415| STA.w $0334
|078418| STA.w $0336

|07841B| BRL HandleSwimMovement

;---------------------------------------------------------------------------------------------------

.not_on_any_ice
|07841E| JSR ResetAllAcceleration
|078421| JSR HandleYItem

|078424| LDA.b $49
|078426| AND.b #$0F
|078428| BNE .movement

|07842A| LDA.b $F0
|07842C| AND.b #$0F
|07842E| BNE .movement

|078430| STA.b $30
|078432| STA.b $31

|078434| STA.b $67
|078436| STA.b $26

|078438| STZ.b $2E

|07843A| LDA.b $48
|07843C| AND.b #$F6
|07843E| STA.b $48

|078440| LDX.b #$20
|078442| STX.w $0371

|078445| LDX.b #$13
|078447| STX.w $0375
|07844A| BRA .finish_up

;---------------------------------------------------------------------------------------------------

.movement
|07844C| STA.b $67

|07844E| CMP.b $26
|078450| BEQ .directions_match

|078452| STZ.b $2A
|078454| STZ.b $2B

|078456| STZ.b $6B
|078458| STZ.b $48

|07845A| LDX.b #$20
|07845C| STX.w $0371

|07845F| LDX.b #$13
|078461| STX.w $0375

.directions_match
|078464| STA.b $26

;---------------------------------------------------------------------------------------------------

.finish_up
|078466| JSR HandleLinkDiagonalCollision
|078469| JSL HandleLinkVelocity
|07846D| JSR HandleLinkCardinalCollision
|078470| JSL HandleLinkAnimation_FullLongEntry

|078474| STZ.w $0302

|078477| JSR HandleIndoorCameraAndDoors

.exit
|07847A| RTS

;===================================================================================================

LinkState_HoldingBigRock:
|07847B| LDA.b $4D
|07847D| BEQ .no_recoil

|07847F| STZ.w $0301
|078482| STZ.w $037A

|078485| STZ.w $020B

|078488| STZ.w $0350
|07848B| STZ.w $030D
|07848E| STZ.w $030E
|078491| STZ.w $030A

|078494| STZ.b $3B

|078496| STZ.w $0308
|078499| STZ.w $0309
|07849C| STZ.w $0376

|07849F| STZ.b $48

|0784A1| LDA.b $50
|0784A3| AND.b #$FE
|0784A5| STA.b $50

|0784A7| STZ.b $25

|0784A9| LDA.w $0360
|0784AC| BEQ .no_zapping

|0784AE| JSR ResetSwordAndItemUsage

|0784B1| LDA.b #$01
|0784B3| STA.w $037B

|0784B6| STZ.w $0300

|0784B9| LDA.b #$02
|0784BB| STA.b $3D

|0784BD| STZ.b $2E

|0784BF| LDA.b $67
|0784C1| AND.b #$F0
|0784C3| STA.b $67

|0784C5| LDA.b #$2B ; SFX3.2B
|0784C7| JSR PlayLinkSFX3Panned

|0784CA| LDA.b #$07 ; LINKSTATE 07
|0784CC| STA.b $5D

|0784CE| BRL LinkState_Zapped

;---------------------------------------------------------------------------------------------------

.no_zapping
|0784D1| LDA.b #$02 ; LINKSTATE 02
|0784D3| STA.b $5D

|0784D5| BRL LinkState_Recoil

;---------------------------------------------------------------------------------------------------

.no_recoil
|0784D8| LDA.b #$FF
|0784DA| STA.b $24
|0784DC| STA.b $25
|0784DE| STA.b $29

|0784E0| STZ.w $02C6

|0784E3| LDA.b $46
|0784E5| BEQ .definitely_no_recoil

|0784E7| STZ.w $030D
|0784EA| STZ.w $030E
|0784ED| STZ.w $030A

|0784F0| STZ.b $3B

|0784F2| STZ.w $0308
|0784F5| STZ.w $0309

|0784F8| STZ.w $0376

|0784FB| LDA.b $3A
|0784FD| AND.b #$80
|0784FF| BNE .dont_allow_turn

|078501| LDA.b $50
|078503| AND.b #$FE
|078505| STA.b $50

.dont_allow_turn
|078507| BRL HandleRecoilAndTimer

;---------------------------------------------------------------------------------------------------

.definitely_no_recoil
|07850A| JSR HandleAPress

|07850D| LDA.b $F0
|07850F| AND.b #$0F
|078511| BNE .pressing_d_pad

|078513| STA.b $30
|078515| STA.b $31

|078517| STA.b $67

|078519| STA.b $26
|07851B| STZ.b $2E

|07851D| LDA.b $48
|07851F| AND.b #$F6
|078521| STA.b $48

|078523| LDX.b #$20
|078525| STX.w $0371

|078528| LDX.b #$13
|07852A| STX.w $0375

|07852D| BRA .handle_the_animation

;---------------------------------------------------------------------------------------------------

.pressing_d_pad
|07852F| STA.b $67

|078531| CMP.b $26
|078533| BEQ .directions_do_match

|078535| STZ.b $2A
|078537| STZ.b $2B

|078539| STZ.b $6B
|07853B| STZ.b $48

|07853D| LDX.b #$20
|07853F| STX.w $0371

|078542| LDX.b #$13
|078544| STX.w $0375

.directions_do_match
|078547| STA.b $26

;---------------------------------------------------------------------------------------------------

.handle_the_animation
|078549| JSL HandleLinkAnimation_FullLongEntry

|07854D| STZ.w $0302

|078550| JSR HandleIndoorCameraAndDoors

|078553| RTS

;===================================================================================================

StartEtherTabletCutscene:
|078554| REP #$20

|078556| LDA.w #$00C0
|078559| STA.b $3C

|07855B| SEP #$20

|07855D| LDA.b #$19 ; LINKSTATE 19
|07855F| STA.b $5D

|078561| LDA.b #$01
|078563| STA.w $037B
|078566| STA.w $0FFC

|078569| RTL

;===================================================================================================

LinkState_ReceivingEther:
|07856A| STZ.b $4D
|07856C| STZ.b $46

|07856E| STZ.w $0373

|078571| REP #$20

|078573| DEC.b $3C

|078575| LDA.b $3C
|078577| BMI .spinning
|078579| BEQ .spawn_medallion

|07857B| CMP.w #$00A0
|07857E| BEQ .add_lightning

|078580| CMP.w #$00BF
|078583| BEQ .sword_up

|078585| SEP #$20

|078587| RTS

;---------------------------------------------------------------------------------------------------

.spinning
|078588| SEP #$20

|07858A| STZ.b $3C
|07858C| STZ.b $3D

|07858E| RTS

;---------------------------------------------------------------------------------------------------

.sword_up
|07858F| SEP #$20

|078591| LDA.b #$01
|078593| STA.w $03EF

|078596| RTS

;---------------------------------------------------------------------------------------------------

.spawn_medallion
|078597| SEP #$20

|078599| LDX.b #$00

|07859B| LDY.b #$04
|07859D| LDA.b #$29 ; ANCILLA 29
|07859F| JSL AncillaAdd_FallingPrize

|0785A3| LDA.b #$01
|0785A5| STA.w $02E4

|0785A8| STZ.w $0FFC

|0785AB| RTS

;---------------------------------------------------------------------------------------------------

.add_lightning
|0785AC| SEP #$20

|0785AE| LDA.b $20
|0785B0| PHA

|0785B1| LDA.b $21
|0785B3| PHA

|0785B4| LDA.b $22
|0785B6| PHA

|0785B7| LDA.b $23
|0785B9| PHA

|0785BA| LDA.b #$37
|0785BC| STA.b $20

|0785BE| LDA.b #$00
|0785C0| STA.b $21

|0785C2| LDA.b #$B0
|0785C4| STA.b $22

|0785C6| LDA.b #$06
|0785C8| STA.b $23

|0785CA| LDY.b #$00
|0785CC| LDA.b #$18 ; ANCILLA 18
|0785CE| JSL AncillaAdd_EtherSpell

|0785D2| PLA
|0785D3| STA.b $23

|0785D5| PLA
|0785D6| STA.b $22

|0785D8| PLA
|0785D9| STA.b $21

|0785DB| PLA
|0785DC| STA.b $20

|0785DE| RTS

;===================================================================================================

StartBombosTabletCutscene:
|0785DF| REP #$20

|0785E1| LDA.w #$00E0
|0785E4| STA.b $3C

|0785E6| SEP #$20

|0785E8| LDA.b #$1A ; LINKSTATE 1A
|0785EA| STA.b $5D

|0785EC| LDA.b #$01
|0785EE| STA.w $037B
|0785F1| STA.w $0112

|0785F4| RTL

;===================================================================================================

LinkState_ReceivingBombos:
|0785F5| STZ.b $4D
|0785F7| STZ.b $46

|0785F9| STZ.w $0373

|0785FC| REP #$20

|0785FE| DEC.b $3C

|078600| LDA.b $3C
|078602| BMI .spinning
|078604| BEQ .spawn_medallion

|078606| CMP.w #$00A0
|078609| BEQ .EXPLOSION

|07860B| CMP.w #$00DF
|07860E| BEQ .sword_up

|078610| SEP #$20

|078612| RTS

.sword_up
|078613| SEP #$20

|078615| LDA.b #$01
|078617| STA.w $03EF

|07861A| RTS

;---------------------------------------------------------------------------------------------------

.spinning
|07861B| SEP #$20

|07861D| STZ.b $3C
|07861F| STZ.b $3D

|078621| RTS

;---------------------------------------------------------------------------------------------------

.spawn_medallion
|078622| SEP #$20

|078624| LDY.b #$04
|078626| LDX.b #$05
|078628| LDA.b #$29 ; ANCILLA 29
|07862A| JSL AncillaAdd_FallingPrize

|07862E| LDA.b #$01
|078630| STA.w $02E4

|078633| RTS

;---------------------------------------------------------------------------------------------------
; Best type of magic
.EXPLOSION
|078634| SEP #$20

|078636| LDA.b $20
|078638| PHA

|078639| LDA.b $21
|07863B| PHA

|07863C| LDA.b $22
|07863E| PHA

|07863F| LDA.b $23
|078641| PHA

|078642| LDA.b #$B0
|078644| STA.b $20

|078646| LDA.b #$0E
|078648| STA.b $21

|07864A| LDA.b #$78
|07864C| STA.b $22

|07864E| LDA.b #$03
|078650| STA.b $23

|078652| LDY.b #$00
|078654| LDA.b #$19 ; ANCILLA 19
|078656| JSL AncillaAdd_BombosSpell

|07865A| PLA
|07865B| STA.b $23

|07865D| PLA
|07865E| STA.b $22

|078660| PLA
|078661| STA.b $21

|078663| PLA
|078664| STA.b $20

|078666| RTS

;===================================================================================================

InitiateDesertCutscene:
|078667| REP #$20

|078669| LDA.w #$0001
|07866C| STA.b $3C

|07866E| SEP #$20

|078670| LDA.b #$1B ; LINKSTATE 1B
|078672| STA.b $5D

|078674| RTL

;===================================================================================================

LinkState_ReadingDesertTablet:
|078675| DEC.b $3C

|078677| LDA.b $3C
|078679| BNE .delay

|07867B| LDA.b #$00 ; LINKSTATE 00
|07867D| STA.b $5D

|07867F| JSR PerformDesertPrayer

.delay
|078682| RTS

;===================================================================================================
; This is dumb and hacky
;===================================================================================================
HandleSomariaAndGraves:
|078683| LDA.b $1B
|078685| BNE .ignore_graves

|078687| LDA.w $03E9
|07868A| BEQ .ignore_graves

;---------------------------------------------------------------------------------------------------

; check first 5 ancilla slots for a gravestone
|07868C| LDX.b #$04

.next_slot
|07868E| LDA.w $0C4A,X
|078691| CMP.b #$24 ; ANCILLA 24
|078693| BNE .not_grave

|078695| JSL Gravestone_Move

.not_grave
|078699| DEX
|07869A| BPL .next_slot

;---------------------------------------------------------------------------------------------------

.ignore_graves
; check first 5 ancilla slots for a somaria block, but only one
|07869C| LDX.b #$04

.next_slot_again
|07869E| LDA.w $0C4A,X
|0786A1| CMP.b #$2C ; ANCILLA 2C
|0786A3| BNE .not_somaria

|0786A5| JSL SomariaBlock_HandlePlayerInteraction

|0786A9| BRA .done

.not_somaria
|0786AB| DEX
|0786AC| BPL .next_slot_again

.done
|0786AE| RTS

;===================================================================================================
; State 0x02 and 0x06
;===================================================================================================
LinkState_Recoil:
; cache coordinates
; not sure why this is interleaved?
|0786AF| LDA.b $20
|0786B1| STA.b $3E

|0786B3| LDA.b $21
|0786B5| STA.b $40

|0786B7| LDA.b $22
|0786B9| STA.b $3F

|0786BB| LDA.b $23
|0786BD| STA.b $41

|0786BF| JSR HandleChangeInZVelocity

|0786C2| STZ.b $50

|0786C4| STZ.w $0351

|0786C7| LDA.b $24
|0786C9| BPL HandleRecoilAndTimer

|0786CB| LDA.b $29
|0786CD| BPL HandleRecoilAndTimer

|0786CF| LDY.b #$05
|0786D1| JSR TileDetect_MainHandler

|0786D4| LDA.w $0341
|0786D7| AND.b #$01
|0786D9| BEQ .no_deep_water_interaction

|0786DB| LDA.b #$04 ; LINKSTATE 04
|0786DD| STA.b $5D

|0786DF| JSR SetToDeepWater
|0786E2| JSR ResetSwordAndItemUsage

|0786E5| LDA.b #$15 ; ANCILLA 15
|0786E7| LDY.b #$00
|0786E9| JSL AncillaAdd_Splash

|0786ED| BRL CheckLayerForChange

;---------------------------------------------------------------------------------------------------

.no_deep_water_interaction
|0786F0| INC.w $02C6

; TODO??
|0786F3| LDA.w $02C6
|0786F6| CMP.b #$04
|0786F8| BEQ .done_bouncing

|0786FA| TAX

|0786FB| LDA.w $02C7

.shift
|0786FE| LSR A

|0786FF| DEX
|078700| BEQ .shift

|078702| STA.b $29
|078704| BNE HandleRecoilAndTimer

.done_bouncing
|078706| LDA.b #$03
|078708| STA.w $02C6

;===================================================================================================

HandleRecoilAndTimer:
|07870B| STZ.b $68
|07870D| STZ.b $69
|07870F| STZ.b $6A

|078711| JSR HandleLinkRecoiling

|078714| DEC.b $46

|078716| LDA.b $46
|078718| BEQ .delay

.airborne
|07871A| BRL HandleLinkRecoilVelocity

;---------------------------------------------------------------------------------------------------

.delay
|07871D| INC A
|07871E| STA.b $46

|078720| LDA.b $24
|078722| AND.b #$FE
|078724| BEQ .no_height
|078726| BPL .airborne

.no_height
|078728| LDA.b $29
|07872A| BPL .airborne

|07872C| LDA.b $4D
|07872E| BNE .not_special_recoil

|078730| BRL HandleLinkRecoilVelocity_and_reset

;---------------------------------------------------------------------------------------------------

.not_special_recoil
|078733| STZ.w $037B

|078736| LDA.b $5D
|078738| STA.b $72

|07873A| LDA.b $5D
|07873C| CMP.b #$06 ; LINKSTATE 06
|07873E| BEQ .jumping

|078740| STZ.b $3C
|078742| STZ.b $3A
|078744| STZ.b $3D

|078746| STZ.b $79

.jumping
|078748| JSR SplashUponLanding

|07874B| LDA.w $02E0
|07874E| BEQ .not_bunny

|078750| LDA.w $0345
|078753| BEQ .not_bunny

|078755| BRL CheckLayerForChange.preserve_layer

;---------------------------------------------------------------------------------------------------

.not_bunny
|078758| LDA.w $02F8
|07875B| BEQ .no_guaranteed_thud

|07875D| STZ.w $02F8

|078760| BRA .play_thud

;---------------------------------------------------------------------------------------------------

.no_guaranteed_thud
|078762| LDA.b $72
|078764| CMP.b #$02 ; LINKSTATE 02
|078766| BEQ .skip_thud_sfx

|078768| LDA.b $5D
|07876A| CMP.b #$04 ; LINKSTATE 04
|07876C| BEQ .skip_thud_sfx

.play_thud
|07876E| LDA.b #$21 ; SFX2.21
|078770| JSR PlayLinkSFX2Panned

.skip_thud_sfx
|078773| LDY.b $5D
|078775| CPY.b #$04 ; LINKSTATE 04
|078777| BNE .not_swimming

|078779| JSR ForciblyUnequipCape_quietly

|07877C| LDA.b $1B
|07877E| BEQ .dont_swap_layers

|078780| LDA.b $72
|078782| CMP.b #$02 ; LINKSTATE 02
|078784| BEQ .dont_swap_layers

|078786| LDA.l $7EF356
|07878A| BEQ .dont_swap_layers

|07878C| LDA.b #$01
|07878E| STA.b $EE

.dont_swap_layers
|078790| LDA.b #$15 ; ANCILLA 15
|078792| LDY.b #$00
|078794| JSL AncillaAdd_Splash

;---------------------------------------------------------------------------------------------------

.not_swimming
|078798| LDY.b #$00
|07879A| JSR TileDetect_MainHandler

|07879D| LDA.w $0357
|0787A0| AND.b #$01
|0787A2| BEQ .not_in_thick_grass

|0787A4| LDA.b #$1A ; SFX2.1A
|0787A6| JSR PlayLinkSFX2Panned

.not_in_thick_grass
|0787A9| LDA.w $0359
|0787AC| AND.b #$01
|0787AE| BEQ .skip_sploosh_sfx

|0787B0| LDA.w $012E
|0787B3| CMP.b #$24 ; SFX2.24
|0787B5| BEQ .skip_sploosh_sfx

|0787B7| LDA.b #$1C ; SFX2.1C
|0787B9| JSR PlayLinkSFX2Panned

;---------------------------------------------------------------------------------------------------

.skip_sploosh_sfx
|0787BC| LDA.w $0341
|0787BF| AND.b #$01
|0787C1| BEQ CheckLayerForChange

|0787C3| LDA.b #$04 ; LINKSTATE 04
|0787C5| STA.b $5D

|0787C7| JSR SetToDeepWater
|0787CA| JSR ResetSwordAndItemUsage

|0787CD| LDA.b #$15 ; ANCILLA 15
|0787CF| LDY.b #$00
|0787D1| JSL AncillaAdd_Splash

;===================================================================================================

CheckLayerForChange:
|0787D5| LDA.b $EE
|0787D7| CMP.b #$02
|0787D9| BNE .dont_reset_layer

|0787DB| STZ.b $EE

.dont_reset_layer
|0787DD| LDA.w $047A
|0787E0| BEQ .preserve_layer

|0787E2| JSL HandleLayerChange

.preserve_layer
|0787E6| STZ.b $24
|0787E8| STZ.b $25

|0787EA| STZ.b $4D

|0787EC| STZ.b $5E
|0787EE| STZ.b $50

|0787F0| STZ.w $0301
|0787F3| STZ.w $037A

|0787F6| STZ.w $0300
|0787F9| STZ.w $037B
|0787FC| STZ.w $0360

|0787FF| STZ.b $27
|078801| STZ.b $28

;===================================================================================================

HandleLinkRecoilVelocity_and_reset:
|078803| STZ.b $2E
|078805| STZ.b $46

;===================================================================================================

HandleLinkRecoilVelocity:
|078807| LDA.b $5D
|078809| CMP.b #$05 ; LINKSTATE 05
|07880B| BEQ .icy_or_low_timer

|07880D| LDA.b $46
|07880F| CMP.b #$21
|078811| BCC .icy_or_low_timer

|078813| DEC.w $02C5
|078816| BPL .delay_flagging

|078818| LSR A
|078819| LSR A
|07881A| LSR A
|07881B| LSR A
|07881C| STA.w $02C5

.icy_or_low_timer
|07881F| JSR FlagWalkDirections

|078822| LDA.b $5D
|078824| CMP.b #$06 ; LINKSTATE 06
|078826| BEQ .find_spot

|078828| JSR HandleLinkDiagonalCollision

|07882B| LDA.b $67
|07882D| AND.b #$03
|07882F| BNE .going_horizontally

|078831| STZ.b $28

.going_horizontally
|078833| LDA.b $67
|078835| AND.b #$0C
|078837| BNE .find_spot

|078839| STZ.b $27

.find_spot
|07883B| JSL FindArbitraryLandingSpot

;---------------------------------------------------------------------------------------------------

.delay_flagging
|07883F| LDA.b $5D
|078841| CMP.b #$06 ; LINKSTATE 06
|078843| BEQ .jumping_out_of_water

|078845| JSR HandleLinkCardinalCollision

|078848| STZ.w $0302

.jumping_out_of_water
|07884B| JSR HandleIndoorCameraAndDoors

|07884E| LDA.b $24
|078850| BEQ .not_airborne

|078852| CMP.b #$E0
|078854| BCC .skip_pit_detect

.not_airborne
|078856| JSR TileDetect_BigArea

|078859| LDA.b $59
|07885B| AND.b #$0F
|07885D| CMP.b #$0F
|07885F| BNE .skip_pit_detect

|078861| LDA.b #$01 ; LINKSTATE 01
|078863| STA.b $5D

|078865| LDA.b #$04
|078867| STA.b $5E

.skip_pit_detect
|078869| STZ.b $25

|07886B| RTS

;===================================================================================================
; Appears completely unused
;===================================================================================================
LinkState_OnIce:
|07886C| LDA.b $1B
|07886E| BNE .indoors

|078870| BRL .overworld

;---------------------------------------------------------------------------------------------------

.indoors
|078873| LDX.b #$00

|078875| LDA.b $EE
|078877| BEQ .upper_layer_or_staircase

|078879| STZ.b $EE

|07887B| JSR TileDetect_UnusedIce

|07887E| LDX.b #$00

|078880| LDA.b #$01
|078882| STA.b $EE

|078884| LDA.w $034C
|078887| AND.b #$03
|078889| CMP.b #$03
|07888B| BEQ .upper_layer_or_staircase

|07888D| LDX.b #$01

.upper_layer_or_staircase
|07888F| STX.w $034E

;---------------------------------------------------------------------------------------------------

.continue_from_ow_stuff
|078892| DEC.b $3D
|078894| BPL .delay

|078896| LDA.b #$03
|078898| STA.b $3D

|07889A| LDA.w $0300
|07889D| EOR.b #$01
|07889F| STA.w $0300

.delay
|0788A2| LDA.b $F0
|0788A4| AND.b #$0F
|0788A6| BNE .no_dpad

|0788A8| STA.b $30
|0788AA| STA.b $31

|0788AC| STA.b $67
|0788AE| STA.b $26

|0788B0| STZ.b $2E

|0788B2| BRA .continue_b

;---------------------------------------------------------------------------------------------------

.no_dpad
|0788B4| STA.b $67

|0788B6| CMP.b $26
|0788B8| BEQ .matches

|0788BA| STZ.b $2A
|0788BC| STZ.b $2B
|0788BE| STZ.b $6B

.matches
|0788C0| STA.b $26

;---------------------------------------------------------------------------------------------------

.continue_b
|0788C2| LDX.b #$10

|0788C4| LDA.b $67
|0788C6| AND.b #$0F
|0788C8| BEQ .just_animate

|0788CA| AND.b #$0C
|0788CC| BEQ .moving_for_sure

|0788CE| LDA.b $67
|0788D0| AND.b #$03
|0788D2| BEQ .moving_for_sure

|0788D4| LDX.b #$0A

.moving_for_sure
|0788D6| STX.b $00

|0788D8| LDA.b $67
|0788DA| AND.b #$0C
|0788DC| BEQ .no_vertical_movement

|0788DE| AND.b #$08
|0788E0| BEQ .moving_on_down

|0788E2| TXA
|0788E3| EOR.b #$FF
|0788E5| INC A
|0788E6| TAX

.moving_on_down
|0788E7| STX.b $27

;---------------------------------------------------------------------------------------------------

.no_vertical_movement
|0788E9| LDX.b $00

|0788EB| LDA.b $67
|0788ED| AND.b #$03
|0788EF| BEQ .just_animate

|0788F1| AND.b #$02
|0788F3| BEQ .moving_on_right

|0788F5| TXA
|0788F6| EOR.b #$FF
|0788F8| INC A
|0788F9| TAX

.moving_on_right
|0788FA| STX.b $28

;---------------------------------------------------------------------------------------------------

.just_animate
|0788FC| JSL HandleLinkAnimation_FullLongEntry

|078900| BRL LinkState_Recoil

;---------------------------------------------------------------------------------------------------

.overworld
|078903| LDY.b #$00
|078905| JSR TileDetect_MainHandler

|078908| LDA.w $035B
|07890B| AND.b #$01
|07890D| BEQ .reset_layer

|07890F| LDA.b #$02
|078911| STA.b $EE

|078913| BRA .layer_is_set

.reset_layer
|078915| STZ.w $00EE

.layer_is_set
|078918| LDA.b #$01
|07891A| STA.w $034E

|07891D| BRL .continue_from_ow_stuff

;===================================================================================================
; Does what's on the tin.
;===================================================================================================
HandleChangeInZVelocity:
|078920| LDX.b #$02

|078922| LDA.b $5D
|078924| CMP.b #$05 ; LINKSTATE 05
|078926| BNE .not_weird_ice

|078928| LDX.b #$01

.not_weird_ice
|07892A| STX.b $00

.preset
|07892C| LDA.b $29 ; immediately apply positive velocity changes
|07892E| BPL ApplyZSpeedChange

|078930| LDA.b $24 ; don't apply change if Z-coord is 0
|078932| BEQ .exit
|078934| BPL ApplyZSpeedChange ; apply as is if positive Z-coord

|078936| LDA.b #$FF ; otherwise, reset Z-coord and velocity
|078938| STA.b $24
|07893A| STA.b $25
|07893C| STA.b $29

|07893E| BRA .exit

;===================================================================================================

#ApplyZSpeedChange:
|078940| LDA.b $29
|078942| SEC
|078943| SBC.b $00
|078945| STA.b $29

.exit
|078947| RTS

;===================================================================================================

LinkState_HoppingSouthOW:
|078948| LDA.b #$01
|07894A| STA.b $66

|07894C| STZ.b $50

|07894E| STZ.b $27
|078950| STZ.b $28

|078952| STZ.w $0351

|078955| LDA.b $46
|078957| BNE .continue

|078959| LDA.w $0362
|07895C| BNE .continue

|07895E| LDA.b #$20 ; SFX2.20
|078960| JSR PlayLinkSFX2Panned

|078963| JSR FindTileToLandOnSouth

|078966| LDA.b $1B
|078968| BNE .continue

|07896A| LDA.b #$02
|07896C| STA.b $EE

;---------------------------------------------------------------------------------------------------

.continue
|07896E| LDA.w $0362
|078971| STA.b $29

|078973| LDA.w $0363
|078976| STA.w $02C7

|078979| LDA.w $0364
|07897C| STA.b $24

|07897E| LDA.w $0365
|078981| STA.b $25

|078983| LDA.b #$02
|078985| STA.b $00

|078987| JSR ApplyZSpeedChange
|07898A| JSL FindArbitraryLandingSpot

|07898E| LDA.b $29
|078990| BPL .adjust_velocity

|078992| CMP.b #$A0
|078994| BCS .not_maxed_out

|078996| LDA.b #$A0
|078998| STA.b $29

.not_maxed_out
|07899A| REP #$20

|07899C| LDA.b $24
|07899E| CMP.w #$FFF0
|0789A1| BCC .adjust_velocity

|0789A3| STZ.b $24

|0789A5| SEP #$20

|0789A7| JSR SplashUponLanding

|0789AA| LDA.b $5B
|0789AC| BEQ .not_near_pit

|0789AE| LDA.b #$01 ; LINKSTATE 01
|0789B0| STA.b $5D

.not_near_pit
|0789B2| LDA.b $5D
|0789B4| CMP.b #$04 ; LINKSTATE 04
|0789B6| BEQ .skip_sfx

|0789B8| CMP.b #$01 ; LINKSTATE 01
|0789BA| BEQ .skip_sfx

|0789BC| LDA.w $0345
|0789BF| BNE .skip_sfx

|0789C1| LDA.b #$21 ; SFX2.21
|0789C3| JSR PlayLinkSFX2Panned

.skip_sfx
|0789C6| STZ.w $037B

|0789C9| STZ.b $78
|0789CB| STZ.b $4D

|0789CD| LDA.b #$FF
|0789CF| STA.b $29
|0789D1| STA.b $24
|0789D3| STA.b $25

|0789D5| STZ.b $46

|0789D7| LDA.b $1B
|0789D9| BNE .no_layer_reset

|0789DB| STZ.b $EE

.no_layer_reset
|0789DD| BRA .finisher_up

;===================================================================================================

.adjust_velocity
|0789DF| SEP #$20

|0789E1| LDA.w $0364
|0789E4| SEC
|0789E5| SBC.b $24
|0789E7| STA.b $30

;---------------------------------------------------------------------------------------------------

.finisher_up
|0789E9| LDA.b $29
|0789EB| STA.w $0362

|0789EE| LDA.w $02C7
|0789F1| STA.w $0363

|0789F4| LDA.b $24
|0789F6| STA.w $0364

|0789F9| LDA.b $25
|0789FB| STA.w $0365

|0789FE| RTS

;===================================================================================================

LinkState_HandlingJump:
|0789FF| LDA.w $0362
|078A02| STA.b $29

|078A04| LDA.w $0363
|078A07| STA.w $02C7

|078A0A| LDA.w $0364
|078A0D| STA.b $24

|078A0F| LDA.b #$02
|078A11| STA.b $00

|078A13| JSR ApplyZSpeedChange
|078A16| JSL FindArbitraryLandingSpot

|078A1A| LDA.b $29
|078A1C| BMI .negative_speed

|078A1E| BRL .not_at_max_z

.negative_speed
|078A21| CMP.b #$A0
|078A23| BCS .not_at_max_z_speed

|078A25| LDA.b #$A0
|078A27| STA.b $29

.not_at_max_z_speed
|078A29| LDA.b $24
|078A2B| CMP.b #$F0
|078A2D| BCC .not_at_max_z

|078A2F| STZ.b $24
|078A31| STZ.b $25

|078A33| LDA.b $5D
|078A35| CMP.b #$0C ; LINKSTATE 0C
|078A37| BEQ .left_or_right

|078A39| CMP.b #$0E ; LINKSTATE 0E
|078A3B| BNE .continue_a

;---------------------------------------------------------------------------------------------------

.left_or_right
|078A3D| LDY.b #$00
|078A3F| JSR TileDetect_MainHandler

|078A42| LDA.w $0341
|078A45| AND.b #$01
|078A47| BEQ .dont_become_swimming

|078A49| LDA.b #$04 ; LINKSTATE 04
|078A4B| STA.b $5D

|078A4D| JSR SetToDeepWater
|078A50| JSR ResetSwordAndItemUsage

|078A53| LDA.b #$15 ; ANCILLA 15
|078A55| LDY.b #$00
|078A57| JSL AncillaAdd_Splash

|078A5B| BRA .continue_a

;---------------------------------------------------------------------------------------------------

.dont_become_swimming
|078A5D| LDA.b $59
|078A5F| AND.b #$01
|078A61| BEQ .continue_a

|078A63| LDA.b #$09
|078A65| STA.b $5C

|078A67| STZ.b $5A

|078A69| LDA.b #$01
|078A6B| STA.b $5B

; we won't be swimming
; branch further, dumdum
|078A6D| LDA.b #$01 ; LINKSTATE 01
|078A6F| STA.b $5D

|078A71| BRA .check_if_swimming

;---------------------------------------------------------------------------------------------------

.continue_a
|078A73| JSR SplashUponLanding

|078A76| LDA.b $5D
|078A78| CMP.b #$04 ; LINKSTATE 04
|078A7A| BEQ .check_if_swimming

|078A7C| LDA.w $0345
|078A7F| BNE .check_if_swimming

|078A81| LDA.b #$21 ; SFX2.21
|078A83| JSR PlayLinkSFX2Panned

.check_if_swimming
|078A86| LDA.b $5D
|078A88| CMP.b #$04 ; LINKSTATE 04
|078A8A| BNE .not_swimming

|078A8C| LDA.w $02E0
|078A8F| BNE .am_bunny

.not_swimming
|078A91| STZ.w $037B

;---------------------------------------------------------------------------------------------------

.am_bunny
|078A94| STZ.b $78
|078A96| STZ.b $4D

|078A98| LDA.b #$FF
|078A9A| STA.b $29
|078A9C| STA.b $24
|078A9E| STA.b $25

|078AA0| STZ.b $46

|078AA2| LDA.b $1B
|078AA4| BNE .dont_reset_layer

|078AA6| STZ.b $EE

.dont_reset_layer
|078AA8| BRA .continue_b

;---------------------------------------------------------------------------------------------------

.not_at_max_z
|078AAA| LDA.w $0364
|078AAD| SEC
|078AAE| SBC.b $24
|078AB0| STA.b $30

.continue_b
|078AB2| LDA.b $29
|078AB4| STA.w $0362

|078AB7| LDA.w $02C7
|078ABA| STA.w $0363

|078ABD| LDA.b $24
|078ABF| STA.w $0364

|078AC2| RTS

;===================================================================================================

pool FindTileToLandOnSouth FindVerticalHopTile

.offset_x
|078AC3| dw  -8
|078AC5| dw   8

.offset_y
|078AC7| dw -16
|078AC9| dw  16

endpool

;---------------------------------------------------------------------------------------------------

FindTileToLandOnSouth:
|078ACB| LDA.b $21
|078ACD| STA.b $33

|078ACF| LDA.b $20
|078AD1| STA.b $32

|078AD3| SEC
|078AD4| SBC.b $3E
|078AD6| STA.b $30

.next_y
|078AD8| LDA.b $66
|078ADA| ASL A
|078ADB| TAY

|078ADC| REP #$20

|078ADE| LDA.w .offset_x,Y
|078AE1| CLC
|078AE2| ADC.b $20
|078AE4| STA.b $20

|078AE6| SEP #$20

|078AE8| JSR TileDetectOnMovement_Vertical

|078AEB| LDA.w $0343
|078AEE| ORA.b $59
|078AF0| ORA.w $035B
|078AF3| ORA.w $0357
|078AF6| ORA.w $0341
|078AF9| AND.b #$07
|078AFB| CMP.b #$07
|078AFD| BNE .next_y

;---------------------------------------------------------------------------------------------------

|078AFF| LDA.w $0341
|078B02| AND.b #$07
|078B04| BEQ .didnt_find_water

|078B06| LDA.b #$01
|078B08| STA.w $0345

|078B0B| LDA.b $4D
|078B0D| CMP.b #$04
|078B0F| BEQ .leave_recoil_state

|078B11| LDA.b #$02
|078B13| STA.b $4D

.leave_recoil_state
|078B15| LDA.w $0026
|078B18| STA.w $0340

|078B1B| JSL ResetSwimmingState

|078B1F| STZ.w $0376
|078B22| STZ.b $5E

.didnt_find_water
|078B24| LDA.b $59
|078B26| AND.b #$07
|078B28| BEQ .didnt_find_pit

|078B2A| LDA.b #$09
|078B2C| STA.b $5C

|078B2E| STZ.b $5A

|078B30| LDA.b #$01
|078B32| STA.b $5B

.didnt_find_pit
|078B34| LDA.b $66
|078B36| ASL A
|078B37| TAY

|078B38| REP #$20

|078B3A| LDA.w .offset_y,Y
|078B3D| CLC
|078B3E| ADC.b $20
|078B40| STA.b $20

|078B42| SEP #$20

|078B44| LDA.b $20
|078B46| STA.b $3E

|078B48| LDA.b $21
|078B4A| STA.b $40

|078B4C| LDA.b #$01
|078B4E| STA.b $46

|078B50| LDA.b $24
|078B52| CMP.b #$F0
|078B54| BCC .z_coord_fine

|078B56| LDA.b #$00

.z_coord_fine
|078B58| STA.b $00
|078B5A| STZ.b $01

|078B5C| REP #$20

|078B5E| LDA.b $20
|078B60| SEC
|078B61| SBC.b $32
|078B63| CLC
|078B64| ADC.b $00
|078B66| STA.w $0364
|078B69| STA.b $24

|078B6B| SEP #$20

|078B6D| RTS

;===================================================================================================

LinkState_HoppingHorizontallyOW:
|078B6E| LDX.b #$01

|078B70| LDA.b $28
|078B72| BPL .moving_right

|078B74| LDX.b #$02

.moving_right
|078B76| TXA
|078B77| ORA.b #$04
|078B79| STA.b $67

|078B7B| STZ.b $50
|078B7D| STZ.b $27

|078B7F| STZ.w $0351

|078B82| BRL LinkState_HandlingJump

;===================================================================================================

pool FindVerticalHopTile
; TODO verify
.speed_z
|078B85| db $20, $20, $20, $28
|078B89| db $30, $38, $40, $48

.speed_x
|078B8D| db $10, $1C, $1C, $1C
|078B91| db $1C, $1C, $1C, $1C

endpool

;---------------------------------------------------------------------------------------------------

FindVerticalHopTile:
|078B95| LDA.b $21
|078B97| STA.b $33

|078B99| LDA.b $20
|078B9B| STA.b $32

|078B9D| SEC
|078B9E| SBC.b $3E
|078BA0| STA.b $30

|078BA2| LDA.b $66
|078BA4| ASL A
|078BA5| TAY

|078BA6| REP #$20

|078BA8| LDA.w .offset_x,Y
|078BAB| CLC
|078BAC| ADC.b $20
|078BAE| STA.b $20

|078BB0| SEP #$20

|078BB2| JSR TileDetectOnMovement_Vertical

|078BB5| LDA.w $0343
|078BB8| ORA.w $035B
|078BBB| ORA.w $0357
|078BBE| ORA.w $0341
|078BC1| AND.b #$07
|078BC3| CMP.b #$07
|078BC5| BEQ .no_tiles_flagged

|078BC7| LDA.b $33
|078BC9| STA.b $21

|078BCB| LDA.b $32
|078BCD| STA.b $20

|078BCF| LDY.b #$00

|078BD1| LDA.b #$01
|078BD3| STA.b $46

|078BD5| LDA.b $28
|078BD7| BPL .x_speed_positive

|078BD9| LDY.b #$FF

|078BDB| EOR.b #$FF
|078BDD| INC A

.x_speed_positive
|078BDE| LSR A
|078BDF| LSR A
|078BE0| LSR A
|078BE1| LSR A
|078BE2| TAX

|078BE3| LDA.w .speed_z,X
|078BE6| STA.w $0362
|078BE9| STA.w $0363

|078BEC| LDA.w .speed_x,X
|078BEF| CPY.b #$FF
|078BF1| BNE .dont_invert_x_speed

|078BF3| EOR.b #$FF
|078BF5| INC A

.dont_invert_x_speed
|078BF6| STA.b $28

|078BF8| BRA .check_for_water

;---------------------------------------------------------------------------------------------------

.no_tiles_flagged
|078BFA| LDA.b $66
|078BFC| ASL A
|078BFD| TAY

|078BFE| REP #$20

|078C00| LDA.w .offset_y,Y
|078C03| CLC
|078C04| ADC.b $20
|078C06| STA.b $20

|078C08| SEP #$20

|078C0A| LDA.b $20
|078C0C| STA.b $3E

|078C0E| LDA.b $21
|078C10| STA.b $40

|078C12| LDA.b #$01
|078C14| STA.b $46

|078C16| LDA.b $24
|078C18| CMP.b #$FF
|078C1A| BNE .dont_zero_z_coord

|078C1C| LDA.b #$00

.dont_zero_z_coord
|078C1E| STA.b $00
|078C20| STZ.b $01

|078C22| REP #$20

|078C24| LDA.b $20
|078C26| SEC
|078C27| SBC.b $32
|078C29| CLC
|078C2A| ADC.b $00
|078C2C| STA.w $0364
|078C2F| STA.b $24

|078C31| SEP #$20

.check_for_water
|078C33| LDA.w $0341
|078C36| AND.b #$07
|078C38| BEQ .exit

|078C3A| LDA.b #$02
|078C3C| STA.b $4D

;===================================================================================================

#SetToDeepWater:
|078C3E| LDA.b #$01
|078C40| STA.w $0345

|078C43| LDA.w $0026
|078C46| STA.w $0340

|078C49| JSL ResetSwimmingState

|078C4D| STZ.w $0376
|078C50| STZ.b $5E

.exit
|078C52| RTS

;===================================================================================================

pool LinkState_0F

.offset_x
|078C53| dw $FFE8
|078C55| dw $0018
|078C57| dw $FFE8
|078C59| dw $0018

.offset_y
|078C5B| dw $0020
|078C5D| dw $0050

.speed_x
|078C5F| db $10
|078C60| db $18

.offset_z
|078C61| db $20
|078C62| db $50

endpool

;---------------------------------------------------------------------------------------------------

LinkState_0F:
|078C63| LDY.b #$03

|078C65| LDA.b $28
|078C67| BPL .x_speed_positive

|078C69| LDY.b #$02

.x_speed_positive
|078C6B| STY.b $66

|078C6D| STZ.b $50
|078C6F| STZ.b $27

|078C71| STZ.w $0351

|078C74| LDA.b $46
|078C76| BNE .proceed_to_jump

|078C78| LDA.w $0362
|078C7B| BNE .proceed_to_jump

|078C7D| LDA.b $5D
|078C7F| SEC
|078C80| SBC.b #$0F ; LINKSTATE 0F
|078C82| ASL A
|078C83| ASL A
|078C84| STA.b $00

|078C86| TYA
|078C87| AND.b #$FD
|078C89| ASL A
|078C8A| CLC
|078C8B| ADC.b $00
|078C8D| TAX

; [DUMB] cached, written to, then just restored without anything being done to it
|078C8E| LDA.b $22
|078C90| PHA

|078C91| LDA.b $23
|078C93| PHA

|078C94| REP #$20

|078C96| LDA.b $22
|078C98| CLC
|078C99| ADC.w .offset_x,X
|078C9C| STA.b $22

|078C9E| SEP #$20

|078CA0| TXA
|078CA1| LSR A
|078CA2| LSR A
|078CA3| TAX

|078CA4| LDA.w .speed_x,X

|078CA7| CPY.b #$02
|078CA9| BNE .keep_speed_positive

|078CAB| EOR.b #$FF
|078CAD| INC A

.keep_speed_positive
|078CAE| STA.b $28

|078CB0| LDA.b $24
|078CB2| CMP.b #$FF
|078CB4| BNE .dont_zero_z

|078CB6| LDA.b #$00

.dont_zero_z
|078CB8| CLC
|078CB9| ADC.w .offset_z,X
|078CBC| STA.w $0364
|078CBF| STA.b $24

|078CC1| TXA
|078CC2| ASL A
|078CC3| TAX

|078CC4| REP #$20

|078CC6| LDA.w .offset_y,X
|078CC9| CLC
|078CCA| ADC.b $20
|078CCC| STA.b $20

|078CCE| SEP #$20

|078CD0| LDA.b $20
|078CD2| STA.b $3E

|078CD4| LDA.b $21
|078CD6| STA.b $40

|078CD8| PLA
|078CD9| STA.b $23

|078CDB| PLA
|078CDC| STA.b $22

|078CDE| LDA.b $1B
|078CE0| BNE .proceed_to_jump

|078CE2| LDA.b #$02
|078CE4| STA.b $EE

.proceed_to_jump
|078CE6| BRL LinkState_HandlingJump

;===================================================================================================

pool FindHorizontalHopTile

.offset_x_a
|078CE9| dw  -8
|078CEB| dw   8

.offset_x_b
|078CED| dw -32
|078CEF| dw  32

.offset_x_c
|078CF1| dw -16
|078CF3| dw  16

.speed_x
|078CF5| db $14, $14, $14, $18, $18, $18, $18, $1C
|078CFD| db $1C, $24, $24, $24, $24, $24, $24, $26
|078D05| db $26, $26, $26, $26, $26, $26, $28, $28

; TODO verify
.speed_z
|078D0D| db $14, $14, $14, $14, $14, $14, $14, $18
|078D15| db $18, $20, $20, $20, $24, $24, $24, $26
|078D1D| db $26, $26, $26, $26, $26, $26, $28, $28

endpool

;---------------------------------------------------------------------------------------------------

FindHorizontalHopTile:
|078D25| LDA.b $23
|078D27| STA.b $33

|078D29| LDA.b $22
|078D2B| STA.b $32

|078D2D| LDX.b #$07

.find_next
|078D2F| PHX
|078D30| PHY

|078D31| REP #$20

|078D33| LDA.w .offset_x_a,Y
|078D36| CLC
|078D37| ADC.b $22
|078D39| STA.b $22

|078D3B| SEP #$20

|078D3D| LDA.b $66
|078D3F| ASL A
|078D40| TAY

|078D41| JSR TileDetectOnMovement_Horizontal

|078D44| PLY
|078D45| PLX

|078D46| LDA.w $0343
|078D49| ORA.w $035B
|078D4C| ORA.w $0357
|078D4F| ORA.w $0341
|078D52| ORA.b $59
|078D54| AND.b #$07
|078D56| CMP.b #$07
|078D58| BNE .doesnt_work

|078D5A| LDA.w $0341
|078D5D| AND.b #$07
|078D5F| CMP.b #$07
|078D61| BNE .water_handled

|078D63| LDA.b #$01
|078D65| STA.w $0345

|078D68| INC A
|078D69| STA.b $4D

|078D6B| LDA.w $0026
|078D6E| STA.w $0340

|078D71| STZ.w $02CB
|078D74| STZ.b $5E
|078D76| STZ.w $0376

|078D79| JSR ResetAllAcceleration
|078D7C| BRA .water_handled

.doesnt_work
|078D7E| DEX
|078D7F| BPL .find_next

;---------------------------------------------------------------------------------------------------

|078D81| REP #$20

|078D83| LDA.w .offset_x_b,Y
|078D86| CLC
|078D87| ADC.b $32
|078D89| STA.b $22

|078D8B| SEP #$20

.water_handled
|078D8D| PHX

|078D8E| REP #$20

|078D90| LDA.w .offset_x_c,Y
|078D93| CLC
|078D94| ADC.b $22
|078D96| STA.b $22

|078D98| LDA.b $32
|078D9A| SEC
|078D9B| SBC.b $22
|078D9D| BPL .positive

|078D9F| EOR.w #$FFFF
|078DA2| INC A

.positive
|078DA3| LSR A
|078DA4| LSR A
|078DA5| LSR A
|078DA6| TAX

|078DA7| SEP #$20

|078DA9| LDA.w .speed_x,X

|078DAC| CPY.b #$02
|078DAE| BEQ .dont_invert

|078DB0| EOR.b #$FF
|078DB2| INC A

.dont_invert
|078DB3| STA.b $28

|078DB5| LDA.w .speed_z,X
|078DB8| STA.w $0362
|078DBB| STA.w $0363

|078DBE| PLX

|078DBF| RTS

;===================================================================================================

LinkState_HoppingDiagonallyUpOW:
|078DC0| STZ.w $0351

|078DC3| LDA.b #$02
|078DC5| STA.b $00

|078DC7| JSR HandleChangeInZVelocity.preset
|078DCA| JSL FindArbitraryLandingSpot

|078DCE| LDA.b $24
|078DD0| BPL .exit

;---------------------------------------------------------------------------------------------------

|078DD2| JSR SplashUponLanding

|078DD5| LDA.b $5D
|078DD7| CMP.b #$04 ; LINKSTATE 04
|078DD9| BEQ .no_sfx

|078DDB| LDA.w $0345
|078DDE| BNE .no_sfx

|078DE0| LDA.b #$21 ; SFX2.21
|078DE2| JSR PlayLinkSFX2Panned

;---------------------------------------------------------------------------------------------------

.no_sfx
|078DE5| STZ.w $037B
|078DE8| STZ.b $4D

|078DEA| LDA.b #$FF
|078DEC| STA.b $29
|078DEE| STA.b $24
|078DF0| STA.b $25

|078DF2| STZ.b $46
|078DF4| STZ.b $50

.exit
|078DF6| RTS

;===================================================================================================

pool LinkState_HoppingDiagonallyDownOW

.speed_x
|078DF7| db $04, $04, $04, $0A, $0A, $0A, $0B, $12
|078DFF| db $12, $12, $14, $14, $14, $14, $16, $16
|078E07| db $1A, $1A, $1A, $1A, $1C, $1C, $1C, $1C

endpool

;---------------------------------------------------------------------------------------------------

LinkState_HoppingDiagonallyDownOW:
|078E0F| LDY.b #$03

|078E11| LDA.b $28
|078E13| BPL .down_right

|078E15| LDY.b #$02

.down_right
|078E17| STY.b $66

|078E19| STZ.b $50
|078E1B| STZ.b $27

|078E1D| STZ.w $0351

|078E20| LDA.b $46
|078E22| BNE .underworld

|078E24| LDA.w $0362
|078E27| BNE .underworld

|078E29| LDA.b #$01
|078E2B| STA.b $66

|078E2D| PHY

|078E2E| LDA.b $22
|078E30| PHA

|078E31| LDA.b $23
|078E33| PHA

|078E34| LDA.b #$20 ; SFX2.20
|078E36| JSR PlayLinkSFX2Panned

|078E39| JSR FindLandingSpotDiagonallyDown

|078E3C| PLA
|078E3D| STA.b $23

|078E3F| PLA
|078E40| STA.b $22

|078E42| PLX

|078E43| REP #$20

|078E45| LDA.b $20
|078E47| SEC
|078E48| SBC.b $32
|078E4A| LSR A
|078E4B| LSR A
|078E4C| LSR A
|078E4D| TAY

|078E4E| SEP #$20

|078E50| LDA.w .speed_x,Y

|078E53| CPX.b #$02
|078E55| BNE .dont_invert

|078E57| EOR.b #$FF
|078E59| INC A

.dont_invert
|078E5A| STA.b $28

|078E5C| LDA.b $1B
|078E5E| BNE .underworld

|078E60| LDA.b #$02
|078E62| STA.b $EE

.underworld
|078E64| BRL LinkState_HandlingJump

;===================================================================================================

pool FindLandingSpotDiagonallyDown

.offset_x
|078E67| dw $FFF8
|078E69| dw $0008

.offset_y
|078E6B| dw $FFF7
|078E6D| dw $0009

.offset_y_2
|078E6F| dw $FFE8
|078E71| dw $0018

.detection_masks
|078E73| db $06
|078E74| db $03

endpool

;---------------------------------------------------------------------------------------------------

FindLandingSpotDiagonallyDown:
|078E75| LDA.b $21
|078E77| STA.b $33

|078E79| LDA.b $20
|078E7B| STA.b $32

|078E7D| SEC
|078E7E| SBC.b $3E
|078E80| STA.b $30

.check_next
|078E82| LDY.b #$00

|078E84| LDA.b $28
|078E86| BMI .positive_x_jump

|078E88| LDY.b #$02

.positive_x_jump
|078E8A| PHY

|078E8B| REP #$20

|078E8D| LDA.w .offset_x,Y
|078E90| CLC
|078E91| ADC.b $22
|078E93| STA.b $22

|078E95| LDA.b $66
|078E97| AND.w #$00FF
|078E9A| ASL A
|078E9B| TAY

|078E9C| LDA.w .offset_y,Y
|078E9F| CLC
|078EA0| ADC.b $20
|078EA2| STA.b $20

|078EA4| SEP #$20

|078EA6| JSR TileDetectOnMovement_Vertical

|078EA9| PLY

|078EAA| TYA
|078EAB| LSR A
|078EAC| TAY

|078EAD| LDA.w .detection_masks,Y
|078EB0| STA.b $72

|078EB2| LDA.w $0343
|078EB5| ORA.w $035B
|078EB8| ORA.w $0357
|078EBB| ORA.w $0341
|078EBE| AND.b $72
|078EC0| CMP.b $72
|078EC2| BNE .check_next

;---------------------------------------------------------------------------------------------------

|078EC4| LDA.w $0341
|078EC7| AND.b $72
|078EC9| BEQ .didnt_find_water

|078ECB| LDA.b #$01
|078ECD| STA.w $0345

|078ED0| LDA.b #$02
|078ED2| STA.b $4D

|078ED4| LDA.w $0026
|078ED7| STA.w $0340

|078EDA| JSL ResetSwimmingState

|078EDE| STZ.b $5E
|078EE0| STZ.w $0376

.didnt_find_water
|078EE3| LDA.b $66
|078EE5| ASL A
|078EE6| TAY

|078EE7| REP #$20

|078EE9| LDA.w .offset_y_2,Y
|078EEC| CLC
|078EED| ADC.b $20
|078EEF| STA.b $20

|078EF1| SEP #$20

|078EF3| LDA.b $20
|078EF5| STA.b $3E

|078EF7| LDA.b $21
|078EF9| STA.b $40

|078EFB| LDA.b #$01
|078EFD| STA.b $46

|078EFF| LDA.b $24
|078F01| STA.b $00
|078F03| STZ.b $01

|078F05| REP #$20

|078F07| LDA.b $20
|078F09| SEC
|078F0A| SBC.b $32
|078F0C| CLC
|078F0D| ADC.b $00
|078F0F| STA.w $0364
|078F12| STA.b $24

|078F14| SEP #$20

|078F16| RTS

;===================================================================================================

SplashUponLanding:
|078F17| PHX
|078F18| PHY

|078F19| LDA.w $02E0
|078F1C| BEQ .not_bunny

|078F1E| LDA.w $0345
|078F21| BEQ .not_deep_water

|078F23| LDA.b #$15 ; ANCILLA 15
|078F25| LDY.b #$00
|078F27| JSL AncillaAdd_Splash

|078F2B| PLY
|078F2C| PLX

|078F2D| BRL LinkState_Bunny.recache

;---------------------------------------------------------------------------------------------------

.not_deep_water
|078F30| LDX.b #$17 ; LINKSTATE 17

|078F32| LDA.l $7EF357
|078F36| BEQ .set_state

|078F38| LDX.b #$1C ; LINKSTATE 1C
|078F3A| BRA .set_state

.not_bunny
|078F3C| LDX.b #$00 ; LINKSTATE 00

; check for deep water
|078F3E| LDA.w $0345
|078F41| BEQ .set_state

; check for some type of recoil
|078F43| LDA.b $5D
|078F45| CMP.b #$06 ; LINKSTATE 06
|078F47| BEQ .not_recoiling

|078F49| LDA.b #$15 ; ANCILLA 15
|078F4B| LDY.b #$00
|078F4D| JSL AncillaAdd_Splash

.not_recoiling
|078F51| JSR ForciblyUnequipCape_quietly

; set to swim state
|078F54| LDX.b #$04 ; LINKSTATE 04

.set_state
|078F56| STX.b $5D

|078F58| PLY
|078F59| PLX

|078F5A| RTS

;===================================================================================================

WalkDirectionFlags:
|078F5B| db $08
|078F5C| db $04
|078F5D| db $02
|078F5E| db $01

;---------------------------------------------------------------------------------------------------

LinkDashSFXMasks:
|078F5F| db $07, $0F, $0F

;---------------------------------------------------------------------------------------------------

FollowerReactionToDashing:
|078F62| db $FF ; 0x00 - No follower
|078F63| db $00 ; 0x01 - Zelda
|078F64| db $02 ; 0x02 - Old man that stops following you
|078F65| db $00 ; 0x03 - Unused old man
|078F66| db $00 ; 0x04 - Normal old man
|078F67| db $00 ; 0x05 - Zelda rescue telepathy
|078F68| db $00 ; 0x06 - Blind maiden
|078F69| db $00 ; 0x07 - Frogsmith
|078F6A| db $00 ; 0x08 - Smithy
|078F6B| db $00 ; 0x09 - Locksmith
|078F6C| db $00 ; 0x0A - Kiki
|078F6D| db $00 ; 0x0B - Unused old man
|078F6E| db $00 ; 0x0C - Purple chest
|078F6F| db $00 ; 0x0D - Super bomb
|078F70| db $00 ; 0x0E - Master Sword telepathy

;---------------------------------------------------------------------------------------------------

FollowerDashReplacement:
|078F71| db $FF ; 0x00 - No follower
|078F72| db $00 ; 0x01 - Zelda
|078F73| db $03 ; 0x02 - Old man that stops following you ⇒ FOLLOWER 03
|078F74| db $00 ; 0x03 - Unused old man
|078F75| db $00 ; 0x04 - Normal old man
|078F76| db $00 ; 0x05 - Zelda rescue telepathy
|078F77| db $00 ; 0x06 - Blind maiden
|078F78| db $00 ; 0x07 - Frogsmith
|078F79| db $00 ; 0x08 - Smithy
|078F7A| db $00 ; 0x09 - Locksmith
|078F7B| db $00 ; 0x0A - Kiki
|078F7C| db $00 ; 0x0B - Unused old man
|078F7D| db $00 ; 0x0C - Purple chest
|078F7E| db $00 ; 0x0D - Super bomb
|078F7F| db $00 ; 0x0E - Master Sword telepathy

;===================================================================================================

LinkState_Dashing:
|078F80| JSR CacheCameraPropertiesIfOutdoors

|078F83| JSR HandleBunnyTransformation
|078F86| BCC .not_bunnifying

|078F88| LDA.b $5D
|078F8A| CMP.b #$17 ; LINKSTATE 17
|078F8C| BNE .not_bunny

|078F8E| BRL LinkState_Bunny

.not_bunny
|078F91| RTS

;---------------------------------------------------------------------------------------------------

.not_bunnifying
|078F92| LDA.w $0372
|078F95| BNE .still_dashing

|078F97| STZ.w $037B
|078F9A| STZ.w $0374
|078F9D| STZ.b $5E

|078F9F| LDA.b #$00 ; LINKSTATE 00
|078FA1| STA.b $5D

|078FA3| STZ.b $50

|078FA5| BRL .exit

;---------------------------------------------------------------------------------------------------

.still_dashing
|078FA8| BIT.b $3A
|078FAA| BPL .no_b_press

|078FAC| LDA.b $3C
|078FAE| CMP.b #$09
|078FB0| BCC .no_b_press

|078FB2| LDA.b #$09
|078FB4| STA.b $3C

.no_b_press
|078FB6| STZ.w $02CA

|078FB9| LDA.b $4D
|078FBB| BEQ .not_recoiling

|078FBD| STZ.w $037B
|078FC0| STZ.w $0374

|078FC3| STZ.b $5E
|078FC5| STZ.b $50

|078FC7| STZ.w $0372

|078FCA| STZ.b $48

|078FCC| LDA.w $0360
|078FCF| BEQ .bonking

;---------------------------------------------------------------------------------------------------

|078FD1| LDA.b $55
|078FD3| BEQ .no_cape

|078FD5| JSR ForciblyUnequipCape_quietly

.no_cape
|078FD8| JSR ResetSwordAndItemUsage

|078FDB| LDA.b #$01
|078FDD| STA.w $037B

|078FE0| STZ.w $0300

|078FE3| LDA.b #$02
|078FE5| STA.b $3D

|078FE7| STZ.b $2E

|078FE9| LDA.b $67
|078FEB| AND.b #$F0
|078FED| STA.b $67

|078FEF| LDA.b #$2B ; SFX3.2B
|078FF1| JSR PlayLinkSFX3Panned

|078FF4| LDA.b #$07 ; LINKSTATE 07
|078FF6| STA.b $5D

|078FF8| BRL LinkState_Zapped

;---------------------------------------------------------------------------------------------------

.bonking
|078FFB| LDA.b #$02 ; LINKSTATE 02
|078FFD| STA.b $5D

|078FFF| BRL LinkState_Recoil

;---------------------------------------------------------------------------------------------------

.not_recoiling
|079002| LDA.w $0374
|079005| LSR A
|079006| LSR A
|079007| LSR A
|079008| LSR A
|079009| TAX

|07900A| LDA.w $0374
|07900D| BNE .dont_tick_dash_timer

|07900F| LDA.b $4F

|079011| DEC.b $4F

.dont_tick_dash_timer
|079013| AND.w LinkDashSFXMasks,X
|079016| BNE .no_sfx

|079018| LDA.b #$23 ; SFX2.23
|07901A| JSR PlayLinkSFX2Panned

.no_sfx
|07901D| DEC.w $0374
|079020| BPL .skip_follower_logic

|079022| STZ.w $0374

|079025| LDA.l $7EF3CC
|079029| TAX

|07902A| CMP.w FollowerReactionToDashing,X
|07902D| BNE .dont_replace

|07902F| LDA.w FollowerDashReplacement,X
|079032| STA.l $7EF3CC

.dont_replace
|079036| BRL .continue_from_follower

;---------------------------------------------------------------------------------------------------

.skip_follower_logic
|079039| LDA.b #$00
|07903B| STA.b $4F

|07903D| BIT.b $F2
|07903F| BMI .holding_a

|079041| STZ.b $2E
|079043| STZ.w $0374
|079046| STZ.b $5E

|079048| LDA.b #$00 ; LINKSTATE 00
|07904A| STA.b $5D

|07904C| STZ.w $0372

|07904F| BIT.b $3A
|079051| BMI .b_held

|079053| STZ.b $50

.b_held
|079055| BRL .exit

.holding_a
|079058| LDY.b #$00
|07905A| LDA.b #$1E ; ANCILLA 1E
|07905C| JSL AncillaAdd_DashDust_charging

|079060| STZ.b $30
|079062| STZ.b $31

|079064| LDA.b #$40
|079066| STA.w $02F1

|079069| LDA.b #$10
|07906B| STA.b $5E

|07906D| LDA.b $3A
|07906F| AND.b #$80
|079071| BNE .cant_turn

|079073| LDA.b $6C
|079075| BNE .cant_turn

|079077| LDA.b $F0
|079079| AND.b #$0F
|07907B| BNE .dpad_held

.cant_turn
|07907D| LDA.b $2F
|07907F| LSR A
|079080| TAX

|079081| LDA.w WalkDirectionFlags,X

.dpad_held
|079084| STA.b $26
|079086| STA.b $67
|079088| STA.w $0340

|07908B| STZ.b $6B

;---------------------------------------------------------------------------------------------------

|07908D| JSL HandleLinkAnimation_FullLongEntry

|079091| LDA.b $20
|079093| STA.b $00
|079095| STA.b $3E

|079097| LDA.b $22
|079099| STA.b $01
|07909B| STA.b $3F

|07909D| LDA.b $21
|07909F| STA.b $02
|0790A1| STA.b $40

|0790A3| LDA.b $23
|0790A5| STA.b $03
|0790A7| STA.b $41

|0790A9| JSR HandleLinkMovingFloor
|0790AC| JSR ApplyConveyorToLink

|0790AF| LDA.w $02F5
|0790B2| BEQ .not_on_somaria_platform

|0790B4| JSL HandleLinkVelocityAndSandDrag_long

.not_on_somaria_platform
|0790B8| LDA.b $20
|0790BA| SEC
|0790BB| SBC.b $3E
|0790BD| STA.b $30

|0790BF| LDA.b $22
|0790C1| SEC
|0790C2| SBC.b $3F
|0790C4| STA.b $31

|0790C6| JSR HandleLinkCardinalCollision
|0790C9| JSR HandleIndoorCameraAndDoors

|0790CC| BRL .exit

;---------------------------------------------------------------------------------------------------

.continue_from_follower
|0790CF| LDA.b $2E
|0790D1| CMP.b #$06
|0790D3| BCC .dont_reset_anim_step

|0790D5| STZ.b $2E

.dont_reset_anim_step
|0790D7| DEC.w $02F1

|0790DA| LDA.w $02F1
|0790DD| CMP.b #$20
|0790DF| BCS .dont_reset_anim_timer

|0790E1| LDA.b #$20
|0790E3| STA.w $02F1

.dont_reset_anim_timer
|0790E6| LDY.b #$00
|0790E8| LDA.b #$1E ; ANCILLA 1E
|0790EA| JSL AncillaAdd_DashDust

|0790EE| STZ.b $79

|0790F0| LDA.l $7EF359
|0790F4| INC A
|0790F5| AND.b #$FE
|0790F7| BEQ .no_sword

|0790F9| LDY.b #$07
|0790FB| JSR TileDetect_MainHandler

.no_sword
|0790FE| LDA.l $7EF3C5
|079102| BEQ .game_state_0

|079104| LDA.b #$80
|079106| TSB.b $3A

|079108| LDA.b #$09
|07910A| STA.b $3C

;---------------------------------------------------------------------------------------------------

.game_state_0
|07910C| STZ.b $46

|07910E| LDA.b $2F
|079110| LSR A
|079111| TAX

|079112| LDA.w WalkDirectionFlags,X
|079115| STA.b $00

|079117| LDA.b $F0
|079119| AND.b #$0F
|07911B| BEQ .no_direction_change

|07911D| CMP.b $00
|07911F| BEQ .no_direction_change

|079121| LDA.b #$12 ; LINKSTATE 12
|079123| STA.b $5D

|079125| LDA.b $3A
|079127| AND.b #$7F
|079129| STA.b $3A

|07912B| STZ.b $3C
|07912D| STZ.b $3D

|07912F| BRL LinkState_ExitingDash

;---------------------------------------------------------------------------------------------------

.no_direction_change
|079132| LDA.b $49
|079134| AND.b #$0F
|079136| BNE .dont_turn

|079138| LDA.b $2F
|07913A| LSR A
|07913B| TAX

|07913C| LDA.w WalkDirectionFlags,X

.dont_turn
|07913F| STA.b $67
|079141| STA.b $26

|079143| JSR HandleLinkDiagonalCollision
|079146| JSL HandleLinkVelocity
|07914A| JSR HandleLinkCardinalCollision
|07914D| JSL HandleLinkAnimation_FullLongEntry

|079151| STZ.w $0302

|079154| JSR HandleIndoorCameraAndDoors

.exit
|079157| RTS

;===================================================================================================

LinkState_ExitingDash:
|079158| JSR CacheCameraPropertiesIfOutdoors

|07915B| LDA.b $F0
|07915D| AND.b #$0F
|07915F| BNE .dpad_pressed

|079161| LDA.w $0374
|079164| CMP.b #$10
|079166| BCC .low_dash_timer

.dpad_pressed
|079168| STZ.w $0374
|07916B| STZ.b $5E

|07916D| LDA.b #$00 ; LINKSTATE 00
|07916F| STA.b $5D

|079171| STZ.w $0372
|079174| STZ.w $032B

|079177| LDA.b $3C
|079179| CMP.b #$09
|07917B| BCS .finish_up

|07917D| STZ.b $50

|07917F| BRA .finish_up

;---------------------------------------------------------------------------------------------------

.low_dash_timer
|079181| LDA.w $0374
|079184| CLC
|079185| ADC.b #$01
|079187| STA.w $0374

;---------------------------------------------------------------------------------------------------

.finish_up
|07918A| JSL HandleLinkAnimation_FullLongEntry

|07918E| RTS

;===================================================================================================

CancelDash:
|07918F| LDA.w $0372
|079192| BEQ .exit

|079194| PHX

|079195| LDX.b #$04

.next_ancilla
|079197| LDA.w $0C4A,X
|07919A| CMP.b #$1E ; ANCILLA 1E
|07919C| BNE .dont_delete

|07919E| STZ.w $0C4A,X

.dont_delete
|0791A1| DEX
|0791A2| BPL .next_ancilla

|0791A4| PLX

|0791A5| STZ.w $0374
|0791A8| STZ.b $5E
|0791AA| STZ.w $0372
|0791AD| STZ.b $50
|0791AF| STZ.w $032B

.exit
|0791B2| RTS

;===================================================================================================

CancelDash_long:
|0791B3| JSR CancelDash

|0791B6| RTL

;===================================================================================================

RepelBonkSpeedY:
|0791B7| db $18, $E8, $00, $00

RepelBonkSpeedX:
|0791BB| db $00, $00, $18, $E8

TileReboundAFlaggingY:
|0791BF| db $01, $00, $00, $00

TileReboundAFlaggingX:
|0791C3| db $00, $00, $01, $00

;===================================================================================================

IceRepelAccelY:
|0791C7| dw $0180, $0180, $0000, $0000
|0791CF| dw $0100, $0100, $0000, $0000

IceRepelAccelX:
|0791D7| dw $0000, $0000, $0180, $0180
|0791DF| dw $0000, $0000, $0100, $0100

;===================================================================================================

RepelDirectionMasks:
|0791E7| db $08, $04, $02, $01

;---------------------------------------------------------------------------------------------------

RepelDash:
|0791EB| LDA.w $0372
|0791EE| BEQ .not_even_dashing

|0791F0| LDA.w $02F1
|0791F3| CMP.b #$40
|0791F5| BNE .continue

.not_even_dashing
|0791F7| BRL .exit

;---------------------------------------------------------------------------------------------------

.continue
|0791FA| JSL ResetSwimmingState

|0791FE| LDY.b #$01
|079200| LDA.b #$1D ; ANCILLA 1D
|079202| JSL AncillaAdd_DashTremor

|079206| JSL LetsGetReadyToRumble

|07920A| LDA.w $012F
|07920D| AND.b #$3F
|07920F| CMP.b #$1B ; SFX3.1B
|079211| BEQ LinkApplyTileRebound

|079213| CMP.b #$32 ; SFX3.32
|079215| BEQ LinkApplyTileRebound

|079217| LDA.b #$03 ; SFX3.03
|079219| JSR PlayLinkSFX3Panned

;---------------------------------------------------------------------------------------------------

#LinkApplyTileRebound:
|07921C| LDX.b $66

|07921E| LDA.w RepelBonkSpeedY,X
|079221| STA.b $27

|079223| LDA.w RepelBonkSpeedX,X
|079226| STA.b $28

|079228| LDA.b #$18
|07922A| STA.b $46

|07922C| LDA.b #$24
|07922E| STA.b $29
|079230| STA.w $02C7

|079233| LDA.w $034A
|079236| BEQ .not_on_any_ice

;---------------------------------------------------------------------------------------------------

|079238| LDA.w RepelDirectionMasks,X
|07923B| STA.w $0340
|07923E| STA.b $67

|079240| LDA.w TileReboundAFlaggingY,X
|079243| STA.w $0338

|079246| LDA.w TileReboundAFlaggingX,X
|079249| STA.w $033A

|07924C| PHX

|07924D| LDA.w $034A
|079250| DEC A
|079251| ASL A
|079252| ASL A
|079253| ASL A
|079254| STA.b $08

|079256| TXA
|079257| ASL A
|079258| CLC
|079259| ADC.b $08
|07925B| TAX

|07925C| REP #$20

|07925E| LDA.w IceRepelAccelY,X
|079261| STA.w $033C

|079264| LDA.w IceRepelAccelX,X
|079267| STA.w $033E

|07926A| SEP #$20

|07926C| PLX

;---------------------------------------------------------------------------------------------------

.not_on_any_ice
|07926D| LDA.b #$01
|07926F| STA.b $4D
|079271| STA.w $02F8

|079274| STZ.b $74
|079276| STZ.w $0360

|079279| STZ.b $5E
|07927B| STZ.b $50
|07927D| STZ.b $6B

|07927F| TXA
|079280| AND.b #$02
|079282| BNE .dont_reset_x

|079284| STZ.b $31

|079286| BRA .exit

.dont_reset_x
|079288| STZ.b $30

.exit
|07928A| RTS

;===================================================================================================

RepelDash_long:
|07928B| PHB
|07928C| PHK
|07928D| PLB

|07928E| PHX

|07928F| LDA.b $2F
|079291| LSR A
|079292| STA.b $66

|079294| JSR RepelDash

|079297| PLX

|079298| PLB

|079299| RTL

;===================================================================================================

FlagWalkDirections:
|07929A| STZ.b $67

|07929C| LDY.b #$00

|07929E| LDA.b $27
|0792A0| BEQ .zero_y
|0792A2| BMI .negative_y

|0792A4| LDY.b #$01

.negative_y
|0792A6| JSR .flag_one

;---------------------------------------------------------------------------------------------------

.zero_y
|0792A9| LDY.b #$02

|0792AB| LDA.b $28
|0792AD| BEQ .exit
|0792AF| BMI .flag_one

|0792B1| LDY.b #$03

;---------------------------------------------------------------------------------------------------

.flag_one
|0792B3| LDA.w RepelDirectionMasks,Y
|0792B6| TSB.b $67

.exit
|0792B8| RTS

;===================================================================================================

PitFallAnimationFlags:
|0792B9| db $0A, $09, $06, $05, $08, $04, $02, $01

PitFallDirectionFlags:
|0792C1| db $05, $06, $09, $0A, $04, $08, $01, $02

PitFallDetectionFlags:
|0792C9| db $0C, $03, $0A, $05

;===================================================================================================

LinkState_Pits:
|0792CD| STZ.b $67

|0792CF| LDA.w $0302
|0792D2| BEQ .no_wall_touch

; TODO is this possible to reach?
|0792D4| INC.w $02CA

|0792D7| LDA.w $02CA
|0792DA| CMP.b #$20
|0792DC| BNE .no_wall_touch

|0792DE| LDA.b #$1F
|0792E0| STA.w $02CA

|0792E3| BRA .check_for_pits

.no_wall_touch
|0792E5| LDA.w $0372
|0792E8| BEQ .not_dashing_a

|0792EA| LDA.w $0374
|0792ED| BEQ .not_charging_dash

|0792EF| BRL LinkState_Dashing

.not_charging_dash
; check for udlr
|0792F2| LDA.b $F0
|0792F4| AND.b #$0F
|0792F6| BEQ .check_for_pits

|0792F8| AND.b $67
|0792FA| BNE .check_for_pits

|0792FC| JSR CancelDash

.not_dashing_a
|0792FF| LDA.b $4D
|079301| CMP.b #$01
|079303| BEQ .check_for_pits

; cache udlr
|079305| LDA.b $F0
|079307| AND.b #$0F
|079309| STA.b $67

;---------------------------------------------------------------------------------------------------

.check_for_pits
|07930B| LDY.b #$04
|07930D| JSR TileDetect_MainHandler

|079310| LDA.b $59
|079312| AND.b #$01
|079314| BNE HandleLinkFallingInPit

|079316| LDA.w $0372
|079319| BEQ .not_dashing_b

|07931B| BRL LinkState_Dashing

.not_dashing_b
|07931E| STZ.b $5E

|079320| JSR CancelDash

|079323| LDA.b $3A
|079325| AND.b #$80
|079327| BNE .holding_b

|079329| LDA.b $50
|07932B| AND.b #$FE
|07932D| STA.b $50

.holding_b
|07932F| STZ.b $5B

|079331| LDY.b #$00 ; LINKSTATE 00

|079333| LDA.w $02E0
|079336| BEQ .set_state_and_continue

|079338| LDY.b #$17 ; LINKSTATE 17

|07933A| LDA.l $7EF357
|07933E| BEQ .set_state_and_continue

|079340| LDY.b #$1C ; LINKSTATE 1C

.set_state_and_continue
|079342| STY.b $5D

|079344| CPY.b #$17 ; LINKSTATE 17
|079346| BEQ .normal_bunny

|079348| CPY.b #$1C ; LINKSTATE 1C
|07934A| BEQ .temp_bunny

|07934C| BRL LinkState_Default

.normal_bunny
|07934F| BRL LinkState_Bunny

.temp_bunny
|079352| BRL LinkState_TemporaryBunny

;===================================================================================================

HandleLinkFallingInPit:
|079355| JSR TileDetect_BigArea

|079358| LDA.b #$04
|07935A| STA.b $5E

|07935C| LDA.b $59
|07935E| AND.b #$0F
|079360| BNE .prepare_to_fall

|079362| STZ.b $5B
|079364| STZ.b $5E

|079366| LDY.b #$00 ; LINKSTATE 00

|079368| LDA.w $02E0
|07936B| BEQ .set_state

|07936D| LDY.b #$17 ; LINKSTATE 17

|07936F| LDA.l $7EF357
|079373| BEQ .set_state

|079375| LDY.b #$1C ; LINKSTATE 1C

.set_state
|079377| STY.b $5D

|079379| JSR CancelDash

|07937C| LDA.b $3A
|07937E| AND.b #$80
|079380| BNE .sword_not_out

|079382| LDA.b $50
|079384| AND.b #$FE
|079386| STA.b $50

.sword_not_out
|079388| BRL EXIT_079420

;---------------------------------------------------------------------------------------------------

.prepare_to_fall
|07938B| CMP.b #$0F
|07938D| BNE .dont_fall_just_yet

|07938F| LDA.b $5B
|079391| CMP.b #$02
|079393| BEQ .already_falling

|079395| LDA.l $7EF357
|079399| BEQ .no_pearl

|07939B| STZ.w $03F7

|07939E| STZ.b $56

|0793A0| STZ.w $02E0

|0793A3| STZ.w $03F5
|0793A6| STZ.w $03F6

.no_pearl
|0793A9| STZ.b $67
|0793AB| STZ.b $00

|0793AD| LDA.b #$02
|0793AF| STA.b $5B

|0793B1| LDA.b #$01
|0793B3| STA.w $037B

|0793B6| STZ.b $3A
|0793B8| STZ.b $3C

|0793BA| STZ.w $0301
|0793BD| STZ.w $037A

|0793C0| STZ.b $46
|0793C2| STZ.b $4D

|0793C4| LDA.b #$1F ; SFX3.1F
|0793C6| JSR PlayLinkSFX3Panned

.already_falling
|0793C9| BRA DetermineConsequencesOfFalling

;---------------------------------------------------------------------------------------------------

.dont_fall_just_yet
|0793CB| LDX.b #$03

.check_next_flag
|0793CD| LDA.b $59
|0793CF| AND.b #$0F
|0793D1| CMP.w PitFallDetectionFlags,X
|0793D4| BNE .skip

|0793D6| TXA
|0793D7| CLC
|0793D8| ADC.b #$04
|0793DA| TAX

|0793DB| BRA .set_flag_index

.skip
|0793DD| DEX
|0793DE| BPL .check_next_flag

;---------------------------------------------------------------------------------------------------

|0793E0| LDX.b #$03

|0793E2| LDA.b $59

.shift
|0793E4| LSR A
|0793E5| BCS .set_flag_index

|0793E7| DEX
|0793E8| BPL .shift

.set_flag_index
|0793EA| STX.w $02C9

|0793ED| LDA.b $67
|0793EF| AND.w PitFallDirectionFlags,X
|0793F2| BEQ .not_very_slippery

|0793F4| LDA.b $67
|0793F6| STA.b $26

|0793F8| LDA.b #$06
|0793FA| STA.b $5E

|0793FC| BRA .continue

.not_very_slippery
|0793FE| LDA.b $67
|079400| STA.b $00

|079402| LDX.w $02C9

|079405| LDA.w PitFallAnimationFlags,X
|079408| TSB.b $67

|07940A| LDA.b $00
|07940C| BEQ .dont_animate

;---------------------------------------------------------------------------------------------------

.continue
|07940E| JSL HandleLinkAnimation_FullLongEntry

.dont_animate
|079412| JSR HandleLinkDiagonalCollision
|079415| JSL HandleLinkVelocity
|079419| JSR HandleLinkCardinalCollision
|07941C| JSL ApplyLinksMovementToCamera

;---------------------------------------------------------------------------------------------------

#EXIT_079420:
|079420| RTS

;===================================================================================================

DetermineConsequencesOfFalling:
|079421| STZ.b $50
|079423| STZ.b $46

|079425| STZ.b $24
|079427| STZ.b $25
|079429| STZ.b $29

|07942B| STZ.b $4D

|07942D| STZ.w $0373
|079430| STZ.w $02E1

|079433| JSR ForciblyUnequipCape_quietly

|079436| DEC.b $5C
|079438| BPL EXIT_079420

|07943A| INC.b $5A

|07943C| LDX.b $5A

|07943E| LDA.b #$09
|079440| STA.b $5C

|079442| LDA.l $7EF3CC
|079446| CMP.b #$0D ; FOLLOWER 0D
|079448| BEQ .no_hud_numbers

|07944A| CPX.b #$01
|07944C| BNE .no_hud_numbers

|07944E| STX.w $02F9

;---------------------------------------------------------------------------------------------------

.no_hud_numbers
|079451| CPX.b #$06
|079453| BNE EXIT_079420

|079455| JSR CancelDash

|079458| LDY.b #$07
|07945A| STY.b $11

|07945C| LDA.b #$06
|07945E| STA.b $5A

|079460| LDA.b #$03
|079462| STA.b $5B

|079464| LDA.b #$0C
|079466| STA.b $4B

|079468| LDA.b #$10
|07946A| STA.b $57

|07946C| LDA.b $20
|07946E| SEC
|07946F| SBC.b $E8
|079471| STA.b $00

|079473| STZ.b $01

|079475| STZ.w $0308
|079478| STZ.w $0309
|07947B| STZ.w $0376
|07947E| STZ.w $030B

;---------------------------------------------------------------------------------------------------

|079481| REP #$30

|079483| LDA.b $1B
|079485| AND.w #$00FF
|079488| BEQ .overworld_pit

|07948A| LDA.b $00
|07948C| PHA

|07948D| SEP #$30

|07948F| LDA.b $A0
|079491| STA.b $A2

|079493| JSL FullyUpdateRoomFlags

|079497| REP #$30

|079499| PLA
|07949A| STA.b $00

|07949C| LDX.w #$0070

|07949F| LDA.b $A0

.check_next_room
|0794A1| CMP.l RoomsWithPitDamage,X
|0794A5| BEQ UnderworldPitDoDamage

|0794A7| DEX
|0794A8| DEX
|0794A9| BPL .check_next_room

;---------------------------------------------------------------------------------------------------

.overworld_pit
|0794AB| SEP #$20

|0794AD| LDA.b $A0
|0794AF| STA.b $A2

|0794B1| LDA.l $7EC000
|0794B5| STA.b $A0

|0794B7| REP #$20

|0794B9| LDA.w #$0010
|0794BC| CLC
|0794BD| ADC.b $00
|0794BF| STA.b $00

|0794C1| LDA.b $20
|0794C3| STA.b $51

|0794C5| SEC
|0794C6| SBC.b $00
|0794C8| STA.b $20

|0794CA| SEP #$30

|0794CC| LDA.b $1B
|0794CE| BNE HandleLayerOfDestination

|0794D0| LDA.b $8A
|0794D2| CMP.b #$05 ; OW 05
|0794D4| BNE .overworld_pit_transition

|0794D6| JSL TakeDamageFromPit

|0794DA| RTS

;---------------------------------------------------------------------------------------------------

.overworld_pit_transition
|0794DB| JSL GetPitEntranceDestination

|0794DF| LDA.b #$11
|0794E1| STA.b $10

|0794E3| STZ.b $11
|0794E5| STZ.b $B0

|0794E7| RTS

;===================================================================================================

HandleLayerOfDestination:
|0794E8| LDX.w $063C

|0794EB| LDA.l LayerOfDestination.for_0476,X
|0794EF| STA.w $0476

|0794F2| LDA.l LayerOfDestination.for_EE,X
|0794F6| STA.b $EE

|0794F8| RTS

;===================================================================================================

UnderworldPitDoDamage:
|0794F9| SEP #$30

|0794FB| LDA.b #$14
|0794FD| STA.b $11

|0794FF| LDA.l $7EF36D
|079503| SEC
|079504| SBC.b #$08
|079506| STA.l $7EF36D

|07950A| CMP.b #$A8
|07950C| BCC .exit

|07950E| LDA.b #$00
|079510| STA.l $7EF36D

.exit
|079514| RTS

;===================================================================================================

UNREACHABLE_079515:
|079515| db $21, $24

;===================================================================================================

HandleUnderworldLandingFromPit:
|079517| PHB
|079518| PHK
|079519| PLB

|07951A| JSL DrawLink

|07951E| REP #$20

|079520| LDA.b $22
|079522| STA.w $0FC2

|079525| LDA.b $20
|079527| STA.w $0FC4

|07952A| SEP #$20

|07952C| LDA.b $11
|07952E| CMP.b #$07
|079530| BNE .dont_make_link_visible

|079532| STZ.b $4B

.dont_make_link_visible
|079534| LDA.b $1A
|079536| AND.b #$03
|079538| BNE .dont_update_pose

|07953A| INC.b $5A

|07953C| LDA.b $5A
|07953E| CMP.b #$0A
|079540| BNE .dont_update_pose

|079542| LDA.b #$06
|079544| STA.b $5A

.dont_update_pose
|079546| LDA.b #$04
|079548| STA.b $67

|07954A| JSL HandleLinkVelocity

|07954E| REP #$20

|079550| LDA.b $20
|079552| BPL .compare_target_coord

|079554| LDA.b $51
|079556| BMI .compare_target_coord

|079558| LDA.b $20
|07955A| EOR.w #$FFFF
|07955D| INC A
|07955E| CLC
|07955F| ADC.b $51
|079561| BMI .the_eagle_has_landed

|079563| BRL .exit

.compare_target_coord
|079566| LDA.b $51
|079568| CMP.b $20
|07956A| BCC .the_eagle_has_landed

|07956C| BRL .exit

;---------------------------------------------------------------------------------------------------

.the_eagle_has_landed
|07956F| LDA.b $51
|079571| STA.b $20

|079573| SEP #$20

|079575| STZ.b $2E

|079577| STZ.b $57

|079579| STZ.b $5A
|07957B| STZ.b $5B

|07957D| STZ.b $5E

|07957F| STZ.b $B0
|079581| STZ.b $11

|079583| STZ.w $037B

|079586| LDA.l $7EF3CC
|07958A| BEQ .dont_reinitialize_follower

; Unused old man
|07958C| CMP.b #$03 ; FOLLOWER 03
|07958E| BEQ .dont_reinitialize_follower

|079590| STZ.w $02F9

; Delete super bomb follower
|079593| CMP.b #$0D ; FOLLOWER 0D
|079595| BNE .dont_delete_follower

|079597| LDA.b #$00
|079599| STA.l $7EF3CC
|07959D| STA.w $04B4
|0795A0| STA.w $04B5
|0795A3| STA.l $7EF3D3

|0795A7| BRA .dont_reinitialize_follower

.dont_delete_follower
|0795A9| JSL InitializeFollower

;---------------------------------------------------------------------------------------------------

.dont_reinitialize_follower
|0795AD| LDY.b #$00
|0795AF| JSR TileDetect_MainHandler

|0795B2| LDA.w $0359
|0795B5| AND.b #$01
|0795B7| BEQ .not_shallow_water

|0795B9| LDA.b #$24 ; SFX2.24
|0795BB| JSR PlayLinkSFX2Panned

.not_shallow_water
|0795BE| JSR TileDetect_BigArea

|0795C1| LDA.w $012E
|0795C4| AND.b #$3F
|0795C6| CMP.b #$24 ; SFX2.24
|0795C8| BEQ .already_made_a_sound

|0795CA| LDA.b #$21 ; SFX2.21
|0795CC| JSR PlayLinkSFX2Panned

.already_made_a_sound
|0795CF| LDA.b $AD
|0795D1| CMP.b #$02
|0795D3| BNE .dont_flag_masks

|0795D5| LDA.w $034C
|0795D8| AND.b #$0F
|0795DA| BEQ .dont_flag_masks

|0795DC| LDA.b #$03
|0795DE| STA.w $0322

.dont_flag_masks
|0795E1| LDA.w $0341
|0795E4| AND.b #$0F
|0795E6| CMP.b #$0F
|0795E8| BNE .didnt_find_water

; [BUG] where's the flippers check?
|0795EA| LDA.b #$01
|0795EC| STA.w $0345

|0795EF| LDA.b $26
|0795F1| STA.w $0340

|0795F4| JSL ResetSwimmingState

|0795F8| LDA.b #$01
|0795FA| STA.b $EE

|0795FC| LDA.b #$15 ; ANCILLA 15
|0795FE| LDY.b #$00
|079600| JSL AncillaAdd_Splash

|079604| LDA.b #$04 ; LINKSTATE 04
|079606| STA.b $5D

|079608| JSR ForciblyUnequipCape_quietly

|07960B| STZ.w $0308
|07960E| STZ.w $0309
|079611| STZ.w $0376
|079614| STZ.b $5E

|079616| BRA .exit

.didnt_find_water
|079618| LDA.b $59
|07961A| AND.b #$0F
|07961C| BNE .pit

|07961E| LDA.b #$00 ; LINKSTATE 00
|079620| STA.b $5D

|079622| BRA .exit

.pit
|079624| LDA.b #$01 ; LINKSTATE 01
|079626| STA.b $5D

;---------------------------------------------------------------------------------------------------

.exit
|079628| SEP #$20

|07962A| PLB

|07962B| RTL

;===================================================================================================

LinkSwimming_anim_offset:
|07962C| db $02, $00, $01, $00

;===================================================================================================

MaxSwimAcceleration:
|079630| dw $00F0

;===================================================================================================

LinkState_Swimming:
|079632| LDA.b $4D
|079634| BEQ .not_diving

|079636| LDA.b #$02 ; LINKSTATE 02
|079638| STA.b $5D
|07963A| STZ.b $25

|07963C| JSR ResetAllAcceleration

|07963F| STZ.w $032A ; swim stroke reset
|079642| STZ.w $034F

|079645| LDA.b $50 ; allow direction change
|079647| AND.b #$FE
|079649| STA.b $50

|07964B| BRL LinkState_Recoil

;---------------------------------------------------------------------------------------------------

.not_diving
|07964E| STZ.b $3A
|079650| STZ.b $3C
|079652| STZ.b $3D
|079654| STZ.b $79

|079656| STZ.w $0308 ; prevent carrying things
|079659| STZ.w $0309

|07965C| LDA.w $033C
|07965F| ORA.w $033D
|079662| ORA.w $033E
|079665| ORA.w $033F
|079668| BNE .no_accel

|07966A| LDA.w $032B
|07966D| CMP.b #$02
|07966F| BEQ .dont_reset_collision

|079671| LDA.w $032D
|079674| CMP.b #$02
|079676| BEQ .dont_reset_collision

|079678| JSR ResetAllAcceleration

;---------------------------------------------------------------------------------------------------

.dont_reset_collision
|07967B| LDA.b $2E
|07967D| AND.b #$01
|07967F| STA.b $2E

|079681| INC.b $2D

|079683| LDA.b $2D
|079685| CMP.b #$10
|079687| BCC .continue

|079689| STZ.b $2D
|07968B| STZ.w $02CC

|07968E| LDA.b $2E
|079690| AND.b #$01
|079692| EOR.b #$01
|079694| STA.b $2E

|079696| BRA .continue

;---------------------------------------------------------------------------------------------------

.no_accel
|079698| INC.b $2D

|07969A| LDA.b $2D
|07969C| CMP.b #$08
|07969E| BCC .continue

|0796A0| STZ.b $2D

|0796A2| LDA.b $2E
|0796A4| INC A
|0796A5| AND.b #$03
|0796A7| STA.b $2E

|0796A9| TAX

|0796AA| LDA.w LinkSwimming_anim_offset,X
|0796AD| STA.w $02CC

;---------------------------------------------------------------------------------------------------

.continue
|0796B0| LDA.w $034F
|0796B3| BNE .not_stroking

|0796B5| LDA.w $033C
|0796B8| ORA.w $033D
|0796BB| ORA.w $033E
|0796BE| ORA.w $033F
|0796C1| BEQ HandleSwimMovement

|0796C3| LDA.b $F6
|0796C5| AND.b #$80
|0796C7| STA.b $00

|0796C9| LDA.b $F4
|0796CB| ORA.b $00
|0796CD| AND.b #$C0
|0796CF| BEQ HandleSwimMovement

|0796D1| STA.w $034F

|0796D4| LDA.b #$25 ; SFX2.25
|0796D6| JSR PlayLinkSFX2Panned

|0796D9| LDA.b #$01
|0796DB| STA.w $032A

|0796DE| LDA.b #$07
|0796E0| STA.w $02CB

|0796E3| JSR HandleSwimAccels

;---------------------------------------------------------------------------------------------------

.not_stroking
|0796E6| DEC.w $02CB
|0796E9| BPL HandleSwimMovement

|0796EB| LDA.b #$07
|0796ED| STA.w $02CB

; Increment the counter
|0796F0| INC.w $032A

|0796F3| LDA.w $032A
|0796F6| CMP.b #$05
|0796F8| BNE HandleSwimMovement

; reset stroke
|0796FA| STZ.w $032A

|0796FD| LDA.w $034F
|079700| AND.b #$3F
|079702| STA.w $034F

;===================================================================================================

HandleSwimMovement:
|079705| LDA.b $49
|079707| AND.b #$0F
|079709| BNE .did_movement

|07970B| LDA.b $F0
|07970D| AND.b #$0F
|07970F| BNE .did_movement

|079711| STZ.b $30
|079713| STZ.b $31

|079715| JSR FlagMaxAccels

|079718| LDA.w $034A
|07971B| BEQ .check_if_swimming

|07971D| LDA.w $0372
|079720| BEQ .not_dashing

|079722| LDA.w $0340
|079725| BRA .did_movement

;---------------------------------------------------------------------------------------------------

.not_dashing
|079727| LDA.w $033C
|07972A| ORA.w $033D
|07972D| ORA.w $033E
|079730| ORA.w $033F
|079733| BNE .finish_up

|079735| STZ.b $48

|079737| JSL ResetSwimmingState

|07973B| BRA .finish_up

;---------------------------------------------------------------------------------------------------

.check_if_swimming
|07973D| LDA.b $5D
|07973F| CMP.b #$04 ; LINKSTATE 04
|079741| BEQ .finish_up

|079743| STZ.b $2E

|079745| BRA .finish_up

;---------------------------------------------------------------------------------------------------

.did_movement
|079747| CMP.w $0340
|07974A| BEQ .dont_reset

|07974C| STZ.b $2A
|07974E| STZ.b $2B
|079750| STZ.b $6B
|079752| STZ.b $48

.dont_reset
|079754| STA.w $0340

|079757| JSR SetIceMaxAccel
|07975A| JSR SetMomentum
|07975D| JSR SetMaxAccel

;---------------------------------------------------------------------------------------------------

.finish_up
|079760| JSR HandleLinkDiagonalCollision
|079763| JSL HandleLinkVelocity
|079767| JSR HandleLinkCardinalCollision
|07976A| JSL HandleLinkAnimation_FullLongEntry

|07976E| STZ.w $0302

|079771| JSR HandleIndoorCameraAndDoors

|079774| RTS

;===================================================================================================
; TODO RENAME
FlagMaxAccels:
|079775| REP #$20

; check for ice
|079777| LDA.w $034A
|07977A| AND.w #$00FF
|07977D| BEQ .exit

|07977F| LDX.b #$02

.next
|079781| LDA.w $033C,X
|079784| BEQ .to_next

|079786| STA.w $0334,X

|079789| LDA.w #$0001
|07978C| STA.w $032B,X

.to_next
|07978F| DEX
|079790| DEX
|079791| BPL .next

.exit
|079793| SEP #$20

|079795| RTS

;===================================================================================================

SetIceMaxAccel:
|079796| REP #$20

|079798| LDA.w $034A
|07979B| AND.w #$00FF
|07979E| BEQ .exit

|0797A0| LDX.b #$02

.next
|0797A2| LDA.w #$0180
|0797A5| STA.w $0334,X

|0797A8| DEX
|0797A9| DEX
|0797AA| BPL .next

.exit
|0797AC| SEP #$20

|0797AE| RTS

;===================================================================================================

pool SetMomentum

.direction ; Unused
|0797AF| db $08, $04, $02, $01

.momentum
|0797B3| dw $0020
|0797B5| dw $0008

endpool

;---------------------------------------------------------------------------------------------------

SetMomentum:
|0797B7| SEP #$20

|0797B9| LDA.b $F0
|0797BB| AND.b #$0F
|0797BD| STA.b $00

|0797BF| STZ.b $01

|0797C1| REP #$30

|0797C3| LDA.w #$0003
|0797C6| STA.b $02

|0797C8| LDX.w #$0002
|0797CB| STX.b $04

;---------------------------------------------------------------------------------------------------

.next
|0797CD| LDY.w #$0000

|0797D0| LDA.b $00
|0797D2| AND.b $02
|0797D4| BEQ .skip

|0797D6| AND.b $04
|0797D8| BNE .pressed_left

|0797DA| LDY.w #$0001

.pressed_left
|0797DD| LDA.w #$0020
|0797E0| STA.w $0326,X

|0797E3| LDA.w $034A
|0797E6| AND.w #$00FF
|0797E9| BEQ .not_on_ice

|0797EB| PHY

|0797EC| DEC A
|0797ED| ASL A
|0797EE| TAY

|0797EF| LDA.w .momentum,Y
|0797F2| STA.w $0326,X

|0797F5| PLY

.not_on_ice
|0797F6| LDA.w $0340
|0797F9| ORA.b $67
|0797FB| AND.b $02
|0797FD| CMP.b $02
|0797FF| BNE .did_a_left_press

|079801| LDA.w #$0002
|079804| STA.w $032B,X

|079807| BRA .continue

.did_a_left_press
|079809| TYA
|07980A| STA.w $0338,X

|07980D| STZ.w $032B,X

.continue
|079810| LDA.w $0334,X
|079813| BNE .skip

|079815| LDA.w MaxSwimAcceleration
|079818| STA.w $0334,X

.skip
|07981B| ASL.b $02
|07981D| ASL.b $02

|07981F| ASL.b $04
|079821| ASL.b $04

|079823| DEX
|079824| DEX
|079825| BPL .next

|079827| SEP #$30

|079829| RTS

;===================================================================================================

ResetSwimmingState:
|07982A| PHB
|07982B| PHK
|07982C| PLB

|07982D| STZ.w $02CB
|079830| STZ.w $034F
|079833| STZ.w $032A

|079836| JSR ResetAllAcceleration

|079839| PLB

|07983A| RTL

;===================================================================================================

ResetStateAfterDamagingPit:
|07983B| PHB
|07983C| PHK
|07983D| PLB

|07983E| JSL ResetSwimmingState

|079842| LDY.b #$00 ; LINKSTATE 00

|079844| LDA.b $56
|079846| BEQ .dont_bunny

|079848| LDA.l $7EF357
|07984C| BNE .dont_bunny

|07984E| LDY.b #$17 ; LINKSTATE 17

.dont_bunny
|079850| STY.b $5D

|079852| LDA.w $0340
|079855| STA.b $26

|079857| STZ.w $0345
|07985A| STZ.w $037B

|07985D| STZ.b $5A
|07985F| STZ.b $5B

|079861| PLB

|079862| RTL

;===================================================================================================
; Resets a bunch of swimming properties
;===================================================================================================
ResetAllAcceleration:
|079863| REP #$20

|079865| STZ.w $032F
|079868| STZ.w $0331

|07986B| STZ.w $0326
|07986E| STZ.w $0328

|079871| STZ.w $032B
|079874| STZ.w $032D

|079877| STZ.w $033C
|07987A| STZ.w $033E

|07987D| STZ.w $0334
|079880| STZ.w $0336

|079883| SEP #$20

|079885| RTS

;===================================================================================================

pool HandleSwimAccels

.max_speeds
|079886| dw $0080, $00A0, $00C0, $00E0
|07988E| dw $0100, $0120, $0140, $0160
|079896| dw $0180

endpool

;---------------------------------------------------------------------------------------------------

HandleSwimAccels:
|079898| REP #$30

|07989A| LDX.w #$0002

|07989D| LDA.w #$0003
|0798A0| STA.b $02

;---------------------------------------------------------------------------------------------------

.next
|0798A2| LDA.b $F0
|0798A4| AND.b $02
|0798A6| BEQ .next_axis

|0798A8| LDA.w $033C,X
|0798AB| BEQ .check_max

|0798AD| LDA.w $0334,X
|0798B0| CMP.w #$0180
|0798B3| BCC .check_max

|0798B5| LDY.w #$0000

.check_next
|0798B8| LDA.w .max_speeds,Y
|0798BB| CMP.w $033C,X
|0798BE| BCS .set

|0798C0| INY
|0798C1| INY
|0798C2| CPY.w #$0012
|0798C5| BNE .check_next

|0798C7| BRA .set

.check_max
|0798C9| LDA.w $0334,X
|0798CC| BEQ .no_max

|0798CE| CLC
|0798CF| ADC.w #$00A0
|0798D2| CMP.w #$0180
|0798D5| BCC .set

|0798D7| LDA.w #$0180
|0798DA| BRA .set

.no_max
|0798DC| LDA.w #$0001
|0798DF| STA.w $033C,X

|0798E2| LDA.w MaxSwimAcceleration

.set
|0798E5| STA.w $0334,X

.next_axis
|0798E8| ASL.b $02
|0798EA| ASL.b $02

|0798EC| DEX
|0798ED| DEX
|0798EE| BPL .next

|0798F0| SEP #$30

|0798F2| RTS

;===================================================================================================

SetMaxAccel:
|0798F3| REP #$30

|0798F5| LDA.w $034A
|0798F8| AND.w #$00FF
|0798FB| BNE .exit

|0798FD| LDA.w $034F
|079900| AND.w #$00FF
|079903| BNE .exit

;---------------------------------------------------------------------------------------------------

|079905| LDX.w #$0002

|079908| LDA.w #$0003
|07990B| STA.b $02

.next
|07990D| LDA.b $F0
|07990F| AND.b $02
|079911| BEQ .set

|079913| LDA.w $032B,X
|079916| CMP.w #$0002
|079919| BEQ .set

|07991B| LDA.w $032F,X
|07991E| BNE .reset

|079920| STZ.w $032F,X

|079923| LDA.w $033C,X
|079926| CMP.w MaxSwimAcceleration
|079929| BCC .to_next

|07992B| CMP.w $0334,X
|07992E| BEQ .reset
|079930| BCC .to_next

.reset
|079932| STZ.w $032B,X

|079935| LDA.w $033C,X
|079938| CMP.w MaxSwimAcceleration
|07993B| BCC .set

|07993D| LDA.w #$0001
|079940| STA.w $032B,X
|079943| STA.w $032F,X

|079946| BRA .to_next

.set
|079948| LDA.w MaxSwimAcceleration
|07994B| STA.w $0334,X
|07994E| STZ.w $032F,X

.to_next
|079951| ASL.b $02
|079953| ASL.b $02

|079955| DEX
|079956| DEX
|079957| BPL .next

.exit
|079959| SEP #$30

|07995B| RTS

;===================================================================================================

LinkState_Zapped:
|07995C| JSR CacheCameraPropertiesIfOutdoors
|07995F| JSL HandleZapMosaic

|079963| DEC.b $3D
|079965| BPL LinkState_ShowingOffItem

|079967| LDA.b #$02
|079969| STA.b $3D

|07996B| LDA.w $0300
|07996E| INC A
|07996F| STA.w $0300

|079972| AND.b #$01
|079974| BEQ .normal_palette

|079976| JSL RefreshEquipmentPalettes_zap
|07997A| BRA .continue

.normal_palette
|07997C| JSL RefreshEquipmentPalettes_sword_and_mail

.continue
|079980| LDA.w $0300
|079983| CMP.b #$08
|079985| BNE LinkState_ShowingOffItem

|079987| STZ.w $0300

|07998A| LDA.b #$00 ; LINKSTATE 00
|07998C| STA.b $5D

|07998E| STZ.w $037B
|079991| STZ.w $0360

|079994| STZ.b $4D

|079996| LDA.b #$00
|079998| JSL ResetZapMosaic

;===================================================================================================

LinkState_ShowingOffItem:
|07999C| RTS

;===================================================================================================

GrantItemReceipt:
|07999D| PHB
|07999E| PHK
|07999F| PLB

|0799A0| LDA.b $4D
|0799A2| BEQ .not_recoiling

|0799A4| STZ.b $4D
|0799A6| STZ.b $46

|0799A8| STZ.w $031F
|0799AB| STZ.w $0308

.not_recoiling
|0799AE| STY.w $02D8

|0799B1| CPY.b #$3E ; ITEMGET 3E
|0799B3| BNE .not_boss_heart

|0799B5| LDA.b #$2E ; SFX3.2E
|0799B7| JSR PlayLinkSFX3Panned

.not_boss_heart
|0799BA| LDA.b #$60
|0799BC| STA.w $02D9

|0799BF| LDA.w $02E9
|0799C2| BEQ .normal_pose

; I don't actually know
|0799C4| CMP.b #$03
|0799C6| BNE .not_cool_pose

;---------------------------------------------------------------------------------------------------

.normal_pose
|0799C8| STZ.w $0308

|0799CB| STZ.b $3A
|0799CD| STZ.b $3B
|0799CF| STZ.b $3C

|0799D1| STZ.b $5E
|0799D3| STZ.b $50

|0799D5| STZ.w $0301
|0799D8| STZ.w $037A

|0799DB| STZ.w $0300

|0799DE| LDA.b #$15 ; LINKSTATE 15
|0799E0| STA.b $5D

|0799E2| LDA.b #$01
|0799E4| STA.w $02DA
|0799E7| STA.w $037B

|0799EA| CPY.b #$20 ; ITEMGET 20
|0799EC| BNE .not_cool_pose

|0799EE| INC A
|0799EF| STA.w $02DA

;---------------------------------------------------------------------------------------------------

.not_cool_pose
|0799F2| PHX

|0799F3| LDY.b #$04
|0799F5| LDA.b #$22 ; ANCILLA 22
|0799F7| JSL AncillaAdd_ItemReceipt

; Checks for prizes
|0799FB| LDA.w $02D8

; crystal
|0799FE| CMP.b #$20 ; ITEMGET 20
|079A00| BEQ .skip_hud

; pendants
|079A02| CMP.b #$37 ; ITEMGET 37
|079A04| BEQ .skip_hud

|079A06| CMP.b #$38 ; ITEMGET 38
|079A08| BEQ .skip_hud

|079A0A| CMP.b #$39 ; ITEMGET 39
|079A0C| BEQ .skip_hud

|079A0E| JSL RefreshItemIcon

.skip_hud
|079A12| JSR CancelDash

|079A15| PLX

|079A16| CLC

|079A17| PLB

|079A18| RTL

;===================================================================================================

UNREACHABLE_079A19:
|079A19| SEC

|079A1A| PLB

|079A1B| RTL

;===================================================================================================

TuckLinkIntoBed:
|079A1C| PHB
|079A1D| PHK
|079A1E| PLB

|079A1F| REP #$20

; [HARDCODED] coordinates
|079A21| LDA.w #$215A
|079A24| STA.b $20

|079A26| LDA.w #$0940
|079A29| STA.b $22

|079A2B| SEP #$20

|079A2D| LDA.b #$16 ; LINKSTATE 16
|079A2F| STA.b $5D

|079A31| STZ.w $037C
|079A34| STZ.w $037D

|079A37| LDA.b #$03
|079A39| STA.w $0374

|079A3C| LDA.b #$20 ; ANCILLA 20
|079A3E| JSL AncillaAdd_Blanket

|079A42| PLB

|079A43| RTL

;===================================================================================================

pool LinkState_Sleeping

.vectors
|079A44| dw SnoringInBed
|079A46| dw SittingUpInBed
|079A48| dw JumpingOutOfBed

endpool

;---------------------------------------------------------------------------------------------------

LinkState_Sleeping:
|079A4A| LDA.w $037C
|079A4D| ASL A
|079A4E| TAX

|079A4F| JMP.w (.vectors,X)

;===================================================================================================

SnoringInBed:
|079A52| LDA.b $1A
|079A54| AND.b #$1F
|079A56| BNE .exit

|079A58| LDY.b #$01
|079A5A| LDA.b #$21 ; ANCILLA 21
|079A5C| JSL AncillaAdd_Snoring

.exit
|079A60| RTS

;===================================================================================================

SittingUpInBed:
|079A61| LDA.b $11
|079A63| BNE .exit

|079A65| DEC.w $0374
|079A68| BPL .exit

|079A6A| STZ.w $0374

|079A6D| LDA.b $F4
|079A6F| AND.b #$E0
|079A71| STA.b $00

|079A73| LDA.b $F4

|079A75| ASL A
|079A76| ASL A
|079A77| ASL A
|079A78| ASL A

|079A79| ORA.b $00
|079A7B| ORA.b $F6

|079A7D| AND.b #$F0
|079A7F| BEQ .exit

|079A81| INC.w $037D

|079A84| LDA.b #$06
|079A86| STA.b $2F

|079A88| INC.w $037C

|079A8B| LDA.b #$04
|079A8D| STA.w $0374

.exit
|079A90| RTS

;===================================================================================================

JumpingOutOfBed:
|079A91| DEC.w $0374
|079A94| BPL .exit

|079A96| LDA.b #$04
|079A98| STA.b $27

|079A9A| LDA.b #$15
|079A9C| STA.b $28

|079A9E| LDA.b #$18
|079AA0| STA.b $29
|079AA2| STA.w $02C7

|079AA5| LDA.b #$10
|079AA7| STA.b $46

|079AA9| LDA.b #$02
|079AAB| STA.b $4D

|079AAD| LDA.b #$06 ; LINKSTATE 06
|079AAF| STA.b $5D

.exit
|079AB1| RTS

;===================================================================================================

HandleSwordCooldown:
|079AB2| DEC.w $02E3
|079AB5| BPL EXIT_079AD5

|079AB7| STZ.w $02E3

|079ABA| LDA.w $0301
|079ABD| ORA.w $037A
|079AC0| BNE EXIT_079AD5

|079AC2| LDA.b $3C
|079AC4| CMP.b #$09
|079AC6| BCS .spin_attack

|079AC8| LDA.w $0372
|079ACB| BNE EXIT_079AD5

|079ACD| JSR CheckForSwordSwing
|079AD0| BRA EXIT_079AD5

.spin_attack
|079AD2| JSR HandleSwordControls

;---------------------------------------------------------------------------------------------------

#EXIT_079AD5:
|079AD5| RTS

;===================================================================================================

pool HandleYItem

.vectors
|079AD6| dw LinkItem_Bombs
|079AD8| dw LinkItem_Boomerang
|079ADA| dw LinkItem_Bow
|079ADC| dw LinkItem_Hammer

|079ADE| dw LinkItem_Rod
|079AE0| dw LinkItem_Rod
|079AE2| dw LinkItem_Net
|079AE4| dw LinkItem_ShovelAndFlute

|079AE6| dw LinkItem_Lamp
|079AE8| dw LinkItem_Powder
|079AEA| dw LinkItem_Bottle
|079AEC| dw LinkItem_Book

|079AEE| dw LinkItem_CaneOfByrna
|079AF0| dw LinkItem_Hookshot
|079AF2| dw LinkItem_Bombos
|079AF4| dw LinkItem_Ether

|079AF6| dw LinkItem_Quake
|079AF8| dw LinkItem_CaneOfSomaria
|079AFA| dw LinkItem_Cape
|079AFC| dw LinkItem_Mirror

endpool

;---------------------------------------------------------------------------------------------------

HandleYItem:
|079AFE| LDA.b $3C
|079B00| BEQ .sword_not_out

|079B02| CMP.b #$09
|079B04| BCC EXIT_079AD5

.sword_not_out
|079B06| LDA.w $02E0
|079B09| BEQ .not_bunny

|079B0B| LDA.w $0303
|079B0E| CMP.b #$0B ; can use bottle
|079B10| BEQ .not_bunny

|079B12| CMP.b #$14 ; can use mirror
|079B14| BEQ .not_bunny

|079B16| RTS

;---------------------------------------------------------------------------------------------------

.not_bunny
|079B17| LDY.w $03FC ; check for item override
|079B1A| BEQ .just_use_item_already

|079B1C| LDA.w $02E0
|079B1F| BNE .just_use_item_already

|079B21| CPY.b #$02
|079B23| BEQ .force_bow

|079B25| BRL LinkItem_Shovel

.force_bow
|079B28| BRL LinkItem_Bow

.just_use_item_already
|079B2B| LDY.w $0304
|079B2E| CPY.w $0303
|079B31| BEQ .dont_remove_cape

|079B33| LDA.w $0304
|079B36| CMP.b #$08
|079B38| BNE .cant_flute

|079B3A| LDA.l $7EF34C
|079B3E| AND.b #$02
|079B40| BEQ .cant_flute

|079B42| LDA.b $3A
|079B44| AND.b #$BF
|079B46| STA.b $3A

;---------------------------------------------------------------------------------------------------

.cant_flute
|079B48| LDA.w $0304
|079B4B| CMP.b #$13
|079B4D| BNE .dont_remove_cape

|079B4F| LDA.b $55
|079B51| BEQ .dont_remove_cape

|079B53| JSR ForciblyUnequipCape

.dont_remove_cape
|079B56| LDA.w $0301
|079B59| ORA.w $037A
|079B5C| BNE .dont_copy_item

|079B5E| LDY.w $0303
|079B61| STY.w $0304

.dont_copy_item
|079B64| BEQ .exit

;---------------------------------------------------------------------------------------------------

|079B66| CPY.b #$05
|079B68| BEQ .rod

|079B6A| CPY.b #$06
|079B6C| BNE .not_rod

.rod
|079B6E| LDA.w $0304
|079B71| SEC
|079B72| SBC.b #$05
|079B74| INC A
|079B75| STA.w $0307

;---------------------------------------------------------------------------------------------------

.not_rod
|079B78| DEY
|079B79| BMI .exit

|079B7B| TYA
|079B7C| ASL A
|079B7D| TAX

|079B7E| JMP.w (.vectors,X)

.exit
|079B81| RTS

;===================================================================================================

HandleDO_vectors:
|079B82| dw EXIT_07AA8A
|079B84| dw HandleDO_LiftCarryThrow
|079B86| dw EXIT_07B2D6
|079B88| dw HandleDO_PullObject
|079B8A| dw EXIT_07B510
|079B8C| dw EXIT_07B5A8
|079B8E| dw HandleDO_StatueDrag
|079B90| dw EXIT_07B3F5

;===================================================================================================
; Used to check $7EF379
;===================================================================================================
AbilityChecks:
|079B92| db $E0 ; 11100000 - Lift, read, talk
|079B93| db $40 ; 01000000 - Read
|079B94| db $04 ; 00000100 - Run
|079B95| db $E0 ; 11100000 - Lift, read, talk
|079B96| db $E0 ; 11100000 - Lift, read, talk
|079B97| db $E0 ; 11100000 - Lift, read, talk
|079B98| db $E0 ; 11100000 - Lift, read, talk | used by statue drag
|079B99| db $E0 ; 11100000 - Lift, read, talk | used by rupee pull

;===================================================================================================

HandleAPress:
|079B9A| STZ.w $02F4

|079B9D| LDA.w $0301
|079BA0| BNE .exit

|079BA2| LDA.w $037A
|079BA5| AND.b #$1F
|079BA7| BNE .exit

|079BA9| LDA.w $0379
|079BAC| BNE .exit

|079BAE| LDA.b $3C
|079BB0| CMP.b #$09
|079BB2| BCS .not_using_sword

|079BB4| LDA.b $3A
|079BB6| AND.b #$80
|079BB8| BEQ .not_using_sword

.exit
|079BBA| RTS

;---------------------------------------------------------------------------------------------------

.not_using_sword
|079BBB| LDX.w $036C

|079BBE| LDA.w $0308
|079BC1| ORA.w $0376
|079BC4| BNE .handle_toss_and_grab

;---------------------------------------------------------------------------------------------------

|079BC6| JSR TestAButton
|079BC9| BCC .no_a_press

; Rupee pull sprite will set this flag
; Make sure we're facing up
|079BCB| LDA.w $03F8
|079BCE| BEQ .no_rupee_pull

|079BD0| LDA.b $2F
|079BD2| BNE .no_rupee_pull

|079BD4| LDX.b #$07
|079BD6| BRL .use_a_press

.no_rupee_pull
; And statues will set this flag
|079BD9| LDA.w $02FA
|079BDC| BEQ .not_statue

|079BDE| LDX.b #$06
|079BE0| BRL .use_a_press

;---------------------------------------------------------------------------------------------------

.not_statue
|079BE3| LDA.w $02EC
|079BE6| BNE .not_lifting

|079BE8| LDA.w $0314
|079BEB| BEQ .cant_lift_sprite

|079BED| LDA.w $0314
|079BF0| STA.w $02F4

.not_lifting
|079BF3| LDA.b $3C
|079BF5| BEQ .no_sword

|079BF7| JSR ResetSwordAndItemUsage

.no_sword
|079BFA| LDA.w $0301
|079BFD| ORA.w $037A
|079C00| BEQ .no_boom

|079C02| STZ.w $0301
|079C05| STZ.w $037A

; TODO investigate when this activates and what happens
|079C08| JSR ResetBoomerangYStuff

|079C0B| STZ.w $035F

; All these hardcoded boomerang checks
|079C0E| LDA.w $0C4A
|079C11| CMP.b #$05 ; ANCILLA 05
|079C13| BNE .no_boom

|079C15| STZ.w $0C4A

.no_boom
|079C18| LDX.b #$01
|079C1A| BRA .use_a_press

.cant_lift_sprite
|079C1C| JSR HandleLiftables

;---------------------------------------------------------------------------------------------------

.use_a_press
|079C1F| LDA.w AbilityChecks,X
|079C22| AND.l $7EF379
|079C26| BEQ .no_a_press ; We lack the ability

|079C28| STX.w $036C

|079C2B| TXA
|079C2C| ASL A
|079C2D| TAX

|079C2E| JSR .run_vector

;---------------------------------------------------------------------------------------------------

.handle_toss_and_grab
|079C31| LDA.w $036C
|079C34| STA.w $0306

|079C37| ASL A
|079C38| TAX

|079C39| JMP.w (HandleDO_vectors,X)

.no_a_press
|079C3C| STZ.b $3B

|079C3E| RTS

;---------------------------------------------------------------------------------------------------

.vectors
|079C3F| dw PerformDesertPrayer
|079C41| dw PerformThrow
|079C43| dw PerformDash
|079C45| dw PerformGrab
|079C47| dw PerformRead
|079C49| dw PerformOpenChest
|079C4B| dw PerformStatueDrag
|079C4D| dw PerformRupeePull

;---------------------------------------------------------------------------------------------------

.run_vector
|079C4F| JMP.w (.vectors,X)

;===================================================================================================

UNREACHABLE_079C52:
|079C52| RTS

;===================================================================================================

UNREACHABLE_079C53:
|079C53| db $00, $01, $01

;===================================================================================================

HandleSwordSFXAndBeam:
|079C56| LDA.b $67
|079C58| AND.b #$F0
|079C5A| STA.b $67

|079C5C| STZ.b $3C
|079C5E| STZ.b $79

|079C60| LDA.l $7EF36C
|079C64| SEC
|079C65| SBC.b #$04
|079C67| CMP.l $7EF36D
|079C6B| BCS .no_make_beam

|079C6D| LDA.l $7EF359
|079C71| INC A
|079C72| AND.b #$FE
|079C74| BEQ .no_make_beam

|079C76| LDA.l $7EF359
|079C7A| CMP.b #$02
|079C7C| BCC .no_make_beam

;---------------------------------------------------------------------------------------------------

; Look for a free slot to make beam
|079C7E| LDX.b #$04

.next_slot
|079C80| LDA.w $0C4A,X
|079C83| CMP.b #$31 ; ANCILLA 31
|079C85| BEQ .no_make_beam

|079C87| DEX
|079C88| BPL .next_slot

;---------------------------------------------------------------------------------------------------

|079C8A| LDY.b #$00
|079C8C| JSL AncillaAdd_SwordBeam

.no_make_beam
|079C90| JSL CalculateLinkSFXPan
|079C94| PHA

|079C95| LDA.l $7EF359
|079C99| DEC A

|079C9A| TAX
|079C9B| PLA

|079C9C| CPX.b #$FE
|079C9E| BEQ .no_make_swing_sfx

|079CA0| CPX.b #$FF
|079CA2| BEQ .no_make_swing_sfx

|079CA4| ORA.w SwordSwingSFX,X
|079CA7| STA.w $012E

.no_make_swing_sfx
|079CAA| LDX.b #$01
|079CAC| STX.b $3D

;---------------------------------------------------------------------------------------------------

#EXIT_079CAE:
|079CAE| RTS

;===================================================================================================

SwordSwingTimers:
|079CAF| db $01, $00, $00, $00, $00, $03, $00, $00
|079CB7| db $01, $00, $03, $03, $03, $03, $04, $04
|079CBF| db $01, $05

;===================================================================================================

SwordSwingSFX:
|079CC1| db $01 ; SFX2.01
|079CC2| db $02 ; SFX2.02
|079CC3| db $03 ; SFX2.03
|079CC4| db $04 ; SFX2.04

;===================================================================================================
; Seems to be some unused offsets for the sword
;===================================================================================================
UNREACHABLE_079CC5:
|079CC5| db $00, $09, $12, $1B

;===================================================================================================

CheckForSwordSwing:
|079CC9| LDA.b $3B
|079CCB| AND.b #$10
|079CCD| BNE EXIT_079CAE

|079CCF| BIT.b $3A
|079CD1| BMI .pressing_b

|079CD3| BIT.b $F4
|079CD5| BPL EXIT_079CAE

|079CD7| LDX.b $6C
|079CD9| BEQ .not_in_door

|079CDB| JSR TileDetect_SwordSwingDeepInDoor

|079CDE| LDA.b $0E
|079CE0| AND.b #$30
|079CE2| EOR.b #$30
|079CE4| BEQ EXIT_079CAE

;---------------------------------------------------------------------------------------------------

.not_in_door
|079CE6| LDA.b #$80
|079CE8| TSB.b $3A

|079CEA| JSR HandleSwordSFXAndBeam

|079CED| LDA.b #$01
|079CEF| TSB.b $50

|079CF1| STZ.b $2E

;---------------------------------------------------------------------------------------------------

.pressing_b
|079CF3| BIT.b $F0
|079CF5| BMI .holding_b

|079CF7| LDA.b #$01
|079CF9| TSB.b $3A

.holding_b
|079CFB| JSR HaltLinkWhenUsingItems

|079CFE| LDA.b $67
|079D00| AND.b #$F0
|079D02| STA.b $67

|079D04| DEC.b $3D
|079D06| BPL .finish_up

;---------------------------------------------------------------------------------------------------

|079D08| INC.b $3C

|079D0A| LDA.b $3C
|079D0C| CMP.b #$09
|079D0E| BCS HandleSwordControls

|079D10| TAX

|079D11| LDA.w SwordSwingTimers,X
|079D14| STA.b $3D

|079D16| CPX.b #$05
|079D18| BNE .no_swing_sparkle

|079D1A| LDA.l $7EF359
|079D1E| BEQ .weak_or_no_sword

|079D20| CMP.b #$01
|079D22| BEQ .weak_or_no_sword

|079D24| CMP.b #$FF
|079D26| BEQ .weak_or_no_sword

|079D28| LDY.b #$04
|079D2A| LDA.b #$26 ; ANCILLA 26
|079D2C| JSL AncillaAdd_SwordSwingSparkle

;---------------------------------------------------------------------------------------------------

.weak_or_no_sword
|079D30| LDY.b #$01

|079D32| LDA.l $7EF359
|079D36| BEQ .finish_up

|079D38| CMP.b #$FF
|079D3A| BEQ .finish_up

|079D3C| CMP.b #$01
|079D3E| BEQ .fighter_sword

|079D40| LDY.b #$06

.fighter_sword
|079D42| JSR TileDetect_MainHandler

|079D45| BRA .finish_up

;---------------------------------------------------------------------------------------------------

.no_swing_sparkle
|079D47| CPX.b #$04
|079D49| BCC .finish_up

|079D4B| LDA.b $3A
|079D4D| AND.b #$01
|079D4F| BEQ .finish_up

|079D51| BIT.b $F0
|079D53| BPL .finish_up

|079D55| LDA.b $3A
|079D57| AND.b #$FE
|079D59| STA.b $3A

|079D5B| BRL HandleSwordSFXAndBeam

;---------------------------------------------------------------------------------------------------

.finish_up
|079D5E| JSR CalculateSwordHitbox

|079D61| RTS

;===================================================================================================

HandleSwordControls:
|079D62| BIT.b $F0
|079D64| BMI .holding_b

|079D66| LDA.b $79
|079D68| CMP.b #$30
|079D6A| BCC ResetSwordAndItemUsage

|079D6C| JSR ResetSwordAndItemUsage

|079D6F| STZ.b $79

|079D71| BRL ActivateSpinAttack

;===================================================================================================
; Resets speed, spin timers, direction change
;===================================================================================================
#ResetSwordAndItemUsage:
|079D74| STZ.b $5E

|079D76| LDA.b $48
|079D78| AND.b #$F6
|079D7A| STA.b $48

|079D7C| STZ.b $3D
|079D7E| STZ.b $3C

|079D80| LDA.b $3A
|079D82| AND.b #$7E
|079D84| STA.b $3A

|079D86| LDA.b $50
|079D88| AND.b #$FE
|079D8A| STA.b $50

|079D8C| BRL EXIT_079E52

;---------------------------------------------------------------------------------------------------

.holding_b
|079D8F| BIT.b $48
|079D91| BMI .pushing_statue

|079D93| LDA.b $48
|079D95| AND.b #$09
|079D97| BNE .pushing_possibly_against_a_door

.pushing_statue
|079D99| LDA.b $47
|079D9B| BEQ .no_tink

|079D9D| CMP.b #$01
|079D9F| BEQ ResetSwordAndItemUsage

.pushing_possibly_against_a_door
|079DA1| LDA.b $3C
|079DA3| CMP.b #$09
|079DA5| BNE .not_in_strafe

|079DA7| LDX.b #$0A
|079DA9| STX.b $3C

|079DAB| LDA.w SwordSwingTimers,X
|079DAE| STA.b $3D

.not_in_strafe
|079DB0| DEC.b $3D
|079DB2| BPL .timer_running

|079DB4| LDA.b $3C
|079DB6| INC A
|079DB7| CMP.b #$0D
|079DB9| BNE .dont_tap_wall

|079DBB| LDA.l $7EF359
|079DBF| INC A
|079DC0| AND.b #$FE
|079DC2| BEQ .reset_poke_index

|079DC4| LDA.b $48
|079DC6| AND.b #$09
|079DC8| BEQ .reset_poke_index

|079DCA| LDY.b #$01
|079DCC| LDA.b #$1B ; ANCILLA 1B
|079DCE| JSL AncillaAdd_WallTapSpark

|079DD2| LDA.b $48
|079DD4| AND.b #$08
|079DD6| BNE .not_poking_door

|079DD8| LDA.b #$05 ; SFX2.05
|079DDA| JSR PlayLinkSFX2Panned

|079DDD| BRA .detect_poked_tile

.not_poking_door
|079DDF| LDA.b #$06 ; SFX2.06
|079DE1| JSR PlayLinkSFX2Panned

.detect_poked_tile
|079DE4| LDY.b #$01
|079DE6| JSR TileDetect_MainHandler

.reset_poke_index
|079DE9| LDA.b #$0A

.dont_tap_wall
|079DEB| STA.b $3C

|079DED| TAX

|079DEE| LDA.w SwordSwingTimers,X
|079DF1| STA.b $3D

.timer_running
|079DF3| BRA .do_hitbox

;---------------------------------------------------------------------------------------------------

.no_tink
|079DF5| LDA.b #$09
|079DF7| STA.b $3C

|079DF9| LDA.b #$01
|079DFB| TSB.b $50

|079DFD| STZ.b $3D

|079DFF| LDA.b $5E
|079E01| CMP.b #$04
|079E03| BEQ .do_hitbox

|079E05| CMP.b #$10
|079E07| BEQ .do_hitbox

|079E09| LDA.b #$0C
|079E0B| STA.b $5E

|079E0D| LDA.l $7EF359
|079E11| INC A
|079E12| AND.b #$FE
|079E14| BEQ EXIT_079E52

;---------------------------------------------------------------------------------------------------

|079E16| LDX.b #$04

.look_for_byrna_spark
|079E18| LDA.w $0C4A,X
|079E1B| CMP.b #$30 ; ANCILLA 30
|079E1D| BEQ EXIT_079E52

|079E1F| CMP.b #$31 ; ANCILLA 31
|079E21| BEQ EXIT_079E52

|079E23| DEX
|079E24| BPL .look_for_byrna_spark

;---------------------------------------------------------------------------------------------------

|079E26| LDA.b $79
|079E28| CMP.b #$06
|079E2A| BCC .dont_add_charge_sparkle

|079E2C| LDA.b $1A
|079E2E| AND.b #$03
|079E30| BNE .dont_add_charge_sparkle

|079E32| JSL AncillaSpawn_SwordChargeSparkle

.dont_add_charge_sparkle
; hard cap timer at 64 frames
|079E36| LDA.b $79
|079E38| CMP.b #$40
|079E3A| BCS EXIT_079E52

|079E3C| INC.b $79

|079E3E| LDA.b $79
|079E40| CMP.b #$30 ; 48 frames for a spin attack
|079E42| BNE EXIT_079E52

|079E44| LDA.b #$37 ; SFX2.37
|079E46| JSR PlayLinkSFX2Panned

|079E49| JSL AncillaAdd_ChargedSpinAttackSparkle

|079E4D| BRA EXIT_079E52

.do_hitbox
|079E4F| JSR CalculateSwordHitbox

;---------------------------------------------------------------------------------------------------

#EXIT_079E52:
|079E52| RTS

;===================================================================================================

CalculateSwordHitbox:
|079E53| LDA.l $7EF359
|079E57| BEQ EXIT_079E52

|079E59| CMP.b #$FF
|079E5B| BEQ EXIT_079E52

|079E5D| CMP.b #$02
|079E5F| BCS .not_fighter_sword

;===================================================================================================

.set_sword_hitbox_offsets
|079E61| LDY.b #$27

|079E63| LDA.b $3C
|079E65| STA.b $02
|079E67| STZ.b $03

|079E69| CMP.b #$09
|079E6B| BEQ EXIT_079E52
|079E6D| BCC .slashing

|079E6F| LDA.b $02
|079E71| SEC
|079E72| SBC.b #$0A
|079E74| STA.b $02

|079E76| LDY.b #$03

;---------------------------------------------------------------------------------------------------

.slashing
|079E78| REP #$30

|079E7A| LDA.b $2F
|079E7C| AND.w #$00FF
|079E7F| TAX

|079E80| LDA.l LinkAnimationDirectionToTableOffset,X
|079E84| STA.b $04

|079E86| TYA
|079E87| AND.w #$00FF
|079E8A| ASL A
|079E8B| CLC
|079E8C| ADC.b $04
|079E8E| TAX

|079E8F| LDA.l LinkAnimationDataOffsets,X
|079E93| CLC
|079E94| ADC.b $02
|079E96| TAX

|079E97| SEP #$20

|079E99| LDA.l AttackHitboxY,X
|079E9D| STA.b $44

|079E9F| LDA.l AttackHitboxX,X
|079EA3| STA.b $45

|079EA5| SEP #$10

|079EA7| RTS

;---------------------------------------------------------------------------------------------------

.not_fighter_sword
|079EA8| LDA.b $3C
|079EAA| CMP.b #$09
|079EAC| BCS .set_sword_hitbox_offsets

|079EAE| ASL A
|079EAF| STA.b $04

|079EB1| LDA.b $2F
|079EB3| LSR A
|079EB4| STA.b $0E

|079EB6| ASL A
|079EB7| ASL A
|079EB8| ASL A

|079EB9| CLC
|079EBA| ADC.b $0E

|079EBC| ASL A
|079EBD| CLC
|079EBE| ADC.b $04
|079EC0| TAX

|079EC1| LDA.l SwordSwingTipTile,X
|079EC5| CMP.b #$FF
|079EC7| BEQ .no_hitbox

|079EC9| TXA
|079ECA| LSR A
|079ECB| TAX

|079ECC| LDA.l SwordSwingTipOffsetY,X
|079ED0| STA.b $44

|079ED2| LDA.l SwordSwingTipOffsetX,X
|079ED6| STA.b $45

;---------------------------------------------------------------------------------------------------

#EXIT_079ED8:
|079ED8| RTS

;---------------------------------------------------------------------------------------------------

.no_hitbox
|079ED9| BRL .set_sword_hitbox_offsets

;===================================================================================================

RodAndCaneAnimationTimer:
|079EDC| db $03, $03, $05

;===================================================================================================

LinkItem_Rod:
|079EDF| BIT.b $3A
|079EE1| BVS .in_action

|079EE3| LDA.b $6C
|079EE5| BNE EXIT_079ED8

|079EE7| JSR TestYButton
|079EEA| BCC EXIT_079ED8

|079EEC| LDX.b #$00
|079EEE| JSR CheckMagicCost
|079EF1| BCC .lacking_magic

|079EF3| LDA.w $020B
|079EF6| BNE .lacking_magic

|079EF8| LDA.b #$01
|079EFA| STA.w $0350

|079EFD| JSR CreateRodShot

|079F00| LDA.w RodAndCaneAnimationTimer
|079F03| STA.b $3D

|079F05| STZ.b $2E

|079F07| STZ.w $0300
|079F0A| STZ.w $0301

|079F0D| LDA.b #$01
|079F0F| TSB.w $0301

;---------------------------------------------------------------------------------------------------

.in_action
|079F12| JSR HaltLinkWhenUsingItems

|079F15| LDA.b $67
|079F17| AND.b #$F0
|079F19| STA.b $67

|079F1B| DEC.b $3D
|079F1D| BPL EXIT_079F48

|079F1F| LDA.w $0300
|079F22| INC A
|079F23| STA.w $0300

|079F26| TAX

|079F27| LDA.w RodAndCaneAnimationTimer,X
|079F2A| STA.b $3D

|079F2C| CPX.b #$03
|079F2E| BNE EXIT_079F48

|079F30| STZ.b $5E
|079F32| STZ.w $0300
|079F35| STZ.b $3D
|079F37| STZ.w $0350

|079F3A| LDA.w $0301
|079F3D| AND.b #$FE
|079F3F| STA.w $0301

;---------------------------------------------------------------------------------------------------

.lacking_magic
|079F42| LDA.b $3A
|079F44| AND.b #$BF
|079F46| STA.b $3A

;---------------------------------------------------------------------------------------------------

#EXIT_079F48:
|079F48| RTS

;===================================================================================================

pool CreateRodShot

.vectors
|079F49| dw CreateFireShot
|079F4B| dw CreateIceShot

endpool

;---------------------------------------------------------------------------------------------------

CreateRodShot:
|079F4D| LDA.w $0307
|079F50| DEC A
|079F51| ASL A
|079F52| TAX

|079F53| JMP.w (.vectors,X)

;===================================================================================================

CreateIceShot:
|079F56| LDA.b #$0B ; ANCILLA 0B
|079F58| LDY.b #$01
|079F5A| JSL AncillaAdd_IceRodShot

|079F5E| RTS

;===================================================================================================

CreateFireShot:
|079F5F| LDA.b #$02 ; ANCILLA 02
|079F61| LDY.b #$01
|079F63| JSL AncillaAdd_FireRodShot

|079F67| RTS

;===================================================================================================

pool LinkItem_Hammer

.timers
|079F68| db  3,  3, 16

endpool

;---------------------------------------------------------------------------------------------------

LinkItem_Hammer:
|079F6B| LDA.w $0301
|079F6E| AND.b #$10
|079F70| BNE .bounce_to_exit

|079F72| BIT.b $3A
|079F74| BVS .in_action

|079F76| LDA.b $6C
|079F78| BNE .bounce_to_exit

|079F7A| JSR TestYButton_unfiltered
|079F7D| BCS .pressed_y

.bounce_to_exit
|079F7F| BRL EXIT_079F48

;---------------------------------------------------------------------------------------------------

.pressed_y
|079F82| LDA.w .timers
|079F85| STA.b $3D

|079F87| LDA.b #$01
|079F89| TSB.b $50

|079F8B| STZ.b $2E

|079F8D| LDA.w $0301
|079F90| AND.b #$00
|079F92| ORA.b #$02
|079F94| STA.w $0301

|079F97| STZ.w $0300

.in_action
|079F9A| JSR HaltLinkWhenUsingItems

|079F9D| LDA.b $67
|079F9F| AND.b #$F0
|079FA1| STA.b $67

|079FA3| DEC.b $3D
|079FA5| BPL EXIT_079FF2

|079FA7| LDA.w $0300
|079FAA| INC A
|079FAB| STA.w $0300

|079FAE| TAX

|079FAF| LDA.w .timers,X
|079FB2| STA.b $3D

|079FB4| CPX.b #$01
|079FB6| BNE .no_impact_yet

;---------------------------------------------------------------------------------------------------

|079FB8| PHX

|079FB9| LDY.b #$03
|079FBB| JSR TileDetect_MainHandler

|079FBE| LDY.b #$00
|079FC0| LDA.b #$16 ; ANCILLA 16
|079FC2| JSL Ancilla_AddHitStars

|079FC6| PLX

|079FC7| LDA.w $012E
|079FCA| BNE .no_impact_yet

|079FCC| LDA.b #$10 ; SFX2.10
|079FCE| JSR PlayLinkSFX2Panned

|079FD1| JSL SpawnHammeredSplash

;---------------------------------------------------------------------------------------------------

.no_impact_yet
|079FD5| CPX.b #$03
|079FD7| BNE EXIT_079FF2

|079FD9| STZ.w $0300
|079FDC| STZ.b $3D

|079FDE| LDA.b $3A
|079FE0| AND.b #$BF
|079FE2| STA.b $3A

|079FE4| LDA.b $50
|079FE6| AND.b #$FE
|079FE8| STA.b $50

|079FEA| LDA.w $0301
|079FED| AND.b #$FD
|079FEF| STA.w $0301

;---------------------------------------------------------------------------------------------------

#EXIT_079FF2:
|079FF2| RTS

;===================================================================================================

pool LinkItem_Bow

.timer
|079FF3| db $03, $03, $08

endpool

;---------------------------------------------------------------------------------------------------

LinkItem_Bow:
|079FF6| BIT.b $3A
|079FF8| BVS .in_action

|079FFA| LDA.b $6C
|079FFC| BNE EXIT_079FF2

|079FFE| JSR TestYButton
|07A001| BCC EXIT_079FF2

|07A003| LDA.b #$01
|07A005| TSB.b $50

|07A007| LDA.w .timer
|07A00A| STA.b $3D

|07A00C| STZ.b $2E
|07A00E| STZ.w $0300

|07A011| LDA.w $0301
|07A014| AND.b #$00
|07A016| ORA.b #$10
|07A018| STA.w $0301

;---------------------------------------------------------------------------------------------------

.in_action
|07A01B| JSR HaltLinkWhenUsingItems

|07A01E| LDA.b $67
|07A020| AND.b #$F0
|07A022| STA.b $67

|07A024| DEC.b $3D
|07A026| BPL EXIT_079FF2

|07A028| LDA.w $0300
|07A02B| INC A
|07A02C| STA.w $0300

|07A02F| TAX

|07A030| LDA.w .timer,X
|07A033| STA.b $3D

|07A035| CPX.b #$03
|07A037| BNE EXIT_07A0AA

; [VESTIGIAL] ?
; This caches Link's coordinates and direction for use with the arrow add routine
; but nothing else ever adds arrows, so there's no reason to cache these
; over just using Link's properties directly
; This might imply other entities were able to create ancilla arrows at some point
|07A039| LDA.b $20
|07A03B| STA.b $72

|07A03D| LDA.b $21
|07A03F| STA.b $73

|07A041| LDA.b $22
|07A043| STA.b $74

|07A045| LDA.b $23
|07A047| STA.b $75

|07A049| LDX.b $2F

|07A04B| LDY.b #$02
|07A04D| LDA.b #$09 ; ANCILLA 09
|07A04F| JSL AncillaAdd_Arrow
|07A053| BCC .arrow_handled

;---------------------------------------------------------------------------------------------------

|07A055| LDA.w $0B99
|07A058| BEQ .not_using_credits

|07A05A| DEC.w $0B99

|07A05D| LDA.l $7EF377
|07A061| INC A
|07A062| INC A
|07A063| STA.l $7EF377

.not_using_credits
|07A067| LDA.w $0B9A
|07A06A| BNE .delete_arrow

|07A06C| LDA.l $7EF377
|07A070| BEQ .delete_arrow

|07A072| DEC A
|07A073| STA.l $7EF377
|07A077| BNE .arrow_handled

|07A079| JSL RefreshItemIcon

|07A07D| BRA .arrow_handled

.delete_arrow
|07A07F| STZ.w $0C4A,X

|07A082| LDA.b #$3C ; SFX2.3C
|07A084| JSR PlayLinkSFX2Panned

;---------------------------------------------------------------------------------------------------

.arrow_handled
|07A087| STZ.w $0300
|07A08A| STZ.b $3D

|07A08C| LDA.b $3A
|07A08E| AND.b #$BF
|07A090| STA.b $3A

|07A092| LDA.b $50
|07A094| AND.b #$FE
|07A096| STA.b $50

|07A098| LDA.w $0301
|07A09B| AND.b #$EF
|07A09D| STA.w $0301

|07A0A0| LDA.b $3C
|07A0A2| CMP.b #$09
|07A0A4| BCC EXIT_07A0AA

|07A0A6| LDA.b #$09
|07A0A8| STA.b $3C

;---------------------------------------------------------------------------------------------------

#EXIT_07A0AA:
|07A0AA| RTS

;===================================================================================================

LinkItem_Boomerang:
|07A0AB| BIT.b $3A
|07A0AD| BVS .in_action

|07A0AF| LDA.b $6C
|07A0B1| BNE EXIT_07A0AA

|07A0B3| JSR TestYButton
|07A0B6| BCC .exit

|07A0B8| LDA.w $035F
|07A0BB| BNE .exit

|07A0BD| STZ.b $2E

|07A0BF| LDA.w $0301
|07A0C2| AND.b #$00
|07A0C4| ORA.b #$80
|07A0C6| STA.w $0301

|07A0C9| STZ.w $0300

|07A0CC| LDA.b #$07
|07A0CE| STA.b $3D

|07A0D0| LDY.b #$00
|07A0D2| LDA.b #$05 ; ANCILLA 05
|07A0D4| JSL AncillaAdd_Boomerang

|07A0D8| LDA.b $3C
|07A0DA| CMP.b #$09
|07A0DC| BCS ResetBoomerangYStuff

|07A0DE| LDA.b $72
|07A0E0| BNE .in_action

|07A0E2| LDA.b $F0
|07A0E4| AND.b #$0F
|07A0E6| STA.b $26

|07A0E8| BRA .continue

;---------------------------------------------------------------------------------------------------

.in_action
|07A0EA| LDA.b #$01
|07A0EC| TSB.b $50

.continue
|07A0EE| LDA.w $0301
|07A0F1| BEQ ResetBoomerangYStuff

|07A0F3| JSR HaltLinkWhenUsingItems

|07A0F6| LDA.b $67
|07A0F8| AND.b #$F0
|07A0FA| STA.b $67

|07A0FC| DEC.b $3D
|07A0FE| BPL .exit

|07A100| LDA.b #$05
|07A102| STA.b $3D

|07A104| LDA.w $0300
|07A107| INC A
|07A108| STA.w $0300

|07A10B| CMP.b #$02
|07A10D| BNE .exit

;===================================================================================================

#ResetBoomerangYStuff:
|07A10F| STZ.w $0301
|07A112| STZ.w $0300

|07A115| STZ.b $3D

|07A117| LDA.b $3A
|07A119| AND.b #$BF
|07A11B| STA.b $3A

|07A11D| AND.b #$80
|07A11F| BNE .exit

|07A121| LDA.b $50
|07A123| AND.b #$FE
|07A125| STA.b $50

.exit
|07A127| RTS

;===================================================================================================

LinkItem_Bombs:
|07A128| LDA.b $6C
|07A12A| BNE EXIT_07A14A

; can't use with super bombs
|07A12C| LDA.l $7EF3CC
|07A130| CMP.b #$0D ; FOLLOWER 0D
|07A132| BEQ EXIT_07A14A

|07A134| JSR TestYButton
|07A137| BCC EXIT_07A14A

|07A139| LDA.b $3A
|07A13B| AND.b #$BF
|07A13D| STA.b $3A

|07A13F| LDY.b #$01
|07A141| LDA.b #$07 ; ANCILLA 07
|07A143| JSL AncillaAdd_Bomb

|07A147| STZ.w $0301

;---------------------------------------------------------------------------------------------------

#EXIT_07A14A:
|07A14A| RTS

;===================================================================================================

LinkItem_Bottle:
|07A14B| JSR TestYButton
|07A14E| BCC EXIT_07A14A

|07A150| LDA.b $3A
|07A152| AND.b #$BF
|07A154| STA.b $3A

|07A156| LDA.l $7EF34F
|07A15A| DEC A
|07A15B| TAX

|07A15C| LDA.l $7EF35C,X
|07A160| BEQ EXIT_07A14A

|07A162| CMP.b #$03
|07A164| BCC LinkItem_UselessBottle

|07A166| CMP.b #$03
|07A168| BEQ LinkItem_RedPotion

|07A16A| CMP.b #$04
|07A16C| BEQ LinkItem_GreenPotion

|07A16E| CMP.b #$05
|07A170| BEQ LinkItem_BluePotion

|07A172| CMP.b #$06
|07A174| BEQ .fairy

|07A176| BRL LinkItem_BeeBottle

.fairy
|07A179| BRL LinkItem_FairyBottle

;===================================================================================================

LinkItem_RedPotion:
|07A17C| LDA.l $7EF36C
|07A180| CMP.l $7EF36D
|07A184| BNE .can_drink

;===================================================================================================

#LinkItem_UselessBottle:
|07A186| BRL LinkGoBeep

;===================================================================================================

.can_drink
|07A189| LDA.b #$02
|07A18B| STA.l $7EF35C,X

|07A18F| STZ.w $0301

|07A192| LDA.b #$04
|07A194| STA.b $11

|07A196| LDA.b $10
|07A198| STA.w $010C

|07A19B| LDA.b #$0E
|07A19D| STA.b $10

|07A19F| LDA.b #$07
|07A1A1| STA.w $0208

|07A1A4| JSL RebuildHUD_long

|07A1A8| RTS

;===================================================================================================

LinkItem_GreenPotion:
|07A1A9| LDA.l $7EF36E
|07A1AD| CMP.b #$80
|07A1AF| BNE .can_drink

|07A1B1| BRL LinkGoBeep

.can_drink
|07A1B4| LDA.b #$02
|07A1B6| STA.l $7EF35C,X

|07A1BA| STZ.w $0301

|07A1BD| LDA.b #$08
|07A1BF| STA.b $11

|07A1C1| LDA.b $10
|07A1C3| STA.w $010C

|07A1C6| LDA.b #$0E
|07A1C8| STA.b $10

|07A1CA| LDA.b #$07
|07A1CC| STA.w $0208

|07A1CF| JSL RebuildHUD_long

|07A1D3| BRA EXIT_07A239

;===================================================================================================

LinkItem_BluePotion:
|07A1D5| LDA.l $7EF36C
|07A1D9| CMP.l $7EF36D
|07A1DD| BNE .can_drink

|07A1DF| LDA.l $7EF36E
|07A1E3| CMP.b #$80
|07A1E5| BNE .can_drink

|07A1E7| BRL LinkGoBeep

.can_drink
|07A1EA| LDA.b #$02
|07A1EC| STA.l $7EF35C,X

|07A1F0| STZ.w $0301

|07A1F3| LDA.b #$09
|07A1F5| STA.b $11

|07A1F7| LDA.b $10
|07A1F9| STA.w $010C

|07A1FC| LDA.b #$0E
|07A1FE| STA.b $10

|07A200| LDA.b #$07
|07A202| STA.w $0208

|07A205| JSL RebuildHUD_long

|07A209| BRA EXIT_07A239

;===================================================================================================

LinkItem_FairyBottle:
|07A20B| STZ.w $0301

|07A20E| JSL ReleaseFairy
|07A212| BPL .released

|07A214| BRL LinkGoBeep

.released
|07A217| LDA.b #$02
|07A219| STA.l $7EF35C,X

|07A21D| JSL RebuildHUD_long

|07A221| BRA EXIT_07A239

;===================================================================================================

LinkItem_BeeBottle:
|07A223| STZ.w $0301

|07A226| JSL ReleaseBeeFromBottle
|07A22A| BPL .released

|07A22C| BRL LinkGoBeep

.released
|07A22F| LDA.b #$02
|07A231| STA.l $7EF35C,X

|07A235| JSL RebuildHUD_long

;---------------------------------------------------------------------------------------------------

#EXIT_07A239:
|07A239| RTS

;===================================================================================================

UNREACHABLE_07A23A:
|07A23A| CLC
|07A23B| BPL LinkItem_Lamp

;===================================================================================================

LinkItem_Lamp:
|07A23D| LDA.b $6C
|07A23F| BNE EXIT_07A278

|07A241| JSR TestYButton
|07A244| BCC EXIT_07A278

|07A246| LDA.l $7EF34A
|07A24A| BEQ .no_magic

|07A24C| LDX.b #$06
|07A24E| JSR CheckMagicCost
|07A251| BCC .no_magic

; [WTF] it only does this to get collision
|07A253| LDY.b #$00
|07A255| LDA.b #$1A ; ANCILLA 1A
|07A257| JSL AncillaAdd_MagicPowder

; [BUG] doesn't check for ancilla being created
; can cause garbage on screen outside:
;  1 powder a toch
;  2 save and quit mid powder
;  3 fill every slot
;  4 use lamp
|07A25B| JSL LightTorch

|07A25F| LDY.b #$02
|07A261| LDA.b #$2F ; ANCILLA 2F
|07A263| JSL AncillaAdd_LampFlame

.no_magic
|07A267| STZ.w $0301
|07A26A| STZ.b $3A
|07A26C| STZ.b $3C
|07A26E| STZ.b $50

; Reset sword, for whatever reason
|07A270| LDA.b $3C
|07A272| CMP.b #$09
|07A274| BNE EXIT_07A278

|07A276| STZ.b $5E

;---------------------------------------------------------------------------------------------------

#EXIT_07A278:
|07A278| RTS

;===================================================================================================

pool LinkItem_Powder

.timer
|07A279| db $02, $01, $01, $03
|07A27D| db $02, $02, $02, $02
|07A281| db $06, $00

endpool

;---------------------------------------------------------------------------------------------------

LinkItem_Powder:
|07A283| BIT.b $3A
|07A285| BVS .in_use

|07A287| LDA.b $6C
|07A289| BNE EXIT_07A278

|07A28B| JSR TestYButton
|07A28E| BCC EXIT_07A302

|07A290| LDA.l $7EF344
|07A294| CMP.b #$02
|07A296| BEQ .is_powder

|07A298| LDA.b #$3C ; SFX2.3C
|07A29A| JSR PlayLinkSFX2Panned

|07A29D| BRA .no_tile_detect

;---------------------------------------------------------------------------------------------------

.is_powder
|07A29F| LDX.b #$02
|07A2A1| JSR CheckMagicCost
|07A2A4| BCC .no_tile_detect

|07A2A6| LDA.w .timer
|07A2A9| STA.b $3D

|07A2AB| STZ.w $0300
|07A2AE| STZ.b $2E

|07A2B0| LDA.b $67
|07A2B2| AND.b #$F0
|07A2B4| STA.b $67

|07A2B6| STZ.w $0301

|07A2B9| LDA.b #$40
|07A2BB| TSB.w $0301

;---------------------------------------------------------------------------------------------------

.in_use
|07A2BE| STZ.b $30
|07A2C0| STZ.b $31

|07A2C2| STZ.b $67

|07A2C4| STZ.b $2A
|07A2C6| STZ.b $2B

|07A2C8| STZ.b $6B

|07A2CA| DEC.b $3D
|07A2CC| BPL EXIT_07A302

|07A2CE| LDA.w $0300
|07A2D1| INC A
|07A2D2| STA.w $0300

|07A2D5| TAX
|07A2D6| LDA.w .timer,X
|07A2D9| STA.b $3D

|07A2DB| CPX.b #$04
|07A2DD| BNE .dont_make_powder

|07A2DF| LDY.b #$00
|07A2E1| LDA.b #$1A ; ANCILLA 1A
|07A2E3| JSL AncillaAdd_MagicPowder

.dont_make_powder
|07A2E7| CPX.b #$09
|07A2E9| BNE EXIT_07A302

|07A2EB| LDA.b $11
|07A2ED| BNE .no_tile_detect

; What is this? nothing?
|07A2EF| LDY.b #$01
|07A2F1| JSR TileDetect_MainHandler
|07A2F4| BRA .no_tile_detect ; [USELESS] BRANCH

.no_tile_detect
|07A2F6| STZ.w $0301
|07A2F9| STZ.w $0300

|07A2FC| LDA.b $3A
|07A2FE| AND.b #$BF
|07A300| STA.b $3A

;---------------------------------------------------------------------------------------------------

#EXIT_07A302:
|07A302| RTS

;===================================================================================================

LinkItem_ShovelAndFlute:
|07A303| LDA.l $7EF34C
|07A307| BEQ EXIT_07A302

|07A309| CMP.b #$01
|07A30B| BEQ LinkItem_Shovel

|07A30D| BRL LinkItem_Flute

;===================================================================================================
; Is this indicative of different poses for left and right?
;===================================================================================================
pool LinkItem_Shovel

.timer
|07A310| db   7,  18,  16
|07A313| db   7,  18,  16

.pose
|07A316| db $00, $01, $02
|07A319| db $00, $01, $02

endpool

;---------------------------------------------------------------------------------------------------

LinkItem_Shovel:
|07A31C| BIT.b $3A
|07A31E| BVS .in_use

|07A320| LDA.b $6C
|07A322| BNE EXIT_07A302

|07A324| JSR TestYButton
|07A327| BCC EXIT_07A302

|07A329| LDA.w .timer
|07A32C| STA.b $3D

|07A32E| STZ.w $030D
|07A331| STZ.w $0300

|07A334| LDA.b #$01
|07A336| STA.w $037A

|07A339| LDA.b #$01
|07A33B| TSB.b $50

|07A33D| STZ.b $2E

;===================================================================================================

.in_use
|07A33F| JSR HaltLinkWhenUsingItems

|07A342| LDA.b $67
|07A344| AND.b #$F0
|07A346| STA.b $67

|07A348| DEC.b $3D
|07A34A| BMI .continue

|07A34C| RTS

;---------------------------------------------------------------------------------------------------

.continue
|07A34D| LDX.w $030D
|07A350| INX
|07A351| STX.w $030D

|07A354| LDA.w .timer,X
|07A357| STA.b $3D

|07A359| LDA.w .pose,X
|07A35C| STA.w $0300

|07A35F| CMP.b #$01
|07A361| BNE .finish_up

;---------------------------------------------------------------------------------------------------

|07A363| LDY.b #$02

|07A365| PHX

|07A366| JSR TileDetect_MainHandler

|07A369| PLX

|07A36A| LDA.w $04B2
|07A36D| BEQ .not_flute_spot

|07A36F| LDA.b #$1B ; SFX3.1B
|07A371| JSR PlayLinkSFX3Panned

|07A374| PHX

|07A375| LDY.b #$00
|07A377| LDA.b #$36 ; ANCILLA 36
|07A379| JSL AncillaAdd_DugUpFlute

|07A37D| PLX

;---------------------------------------------------------------------------------------------------

.not_flute_spot
|07A37E| LDA.w $0357
|07A381| ORA.w $035B
|07A384| AND.b #$01
|07A386| BNE .dont_clink

|07A388| PHX

|07A389| LDY.b #$00
|07A38B| LDA.b #$16 ; ANCILLA 16
|07A38D| JSL Ancilla_AddHitStars

|07A391| PLX

|07A392| LDA.b #$05 ; SFX2.05
|07A394| JSR PlayLinkSFX2Panned

|07A397| BRA .finish_up

;---------------------------------------------------------------------------------------------------

.dont_clink
|07A399| PHX

|07A39A| LDY.b #$00
|07A39C| LDA.b #$17 ; ANCILLA 17
|07A39E| JSL AncillaAdd_ShovelDirt

|07A3A2| LDA.w $03FC
|07A3A5| BEQ .not_dig_game

|07A3A7| JSL SpawnDiggingGamePrize

.not_dig_game
|07A3AB| PLX

|07A3AC| LDA.b #$12 ; SFX2.12
|07A3AE| JSR PlayLinkSFX2Panned

;---------------------------------------------------------------------------------------------------

.finish_up
|07A3B1| CPX.b #$03
|07A3B3| BNE EXIT_07A3CA

|07A3B5| STZ.w $030D
|07A3B8| STZ.w $0300

|07A3BB| LDA.b $3A
|07A3BD| AND.b #$80
|07A3BF| STA.b $3A

|07A3C1| STZ.w $037A

|07A3C4| LDA.b $50
|07A3C6| AND.b #$FE
|07A3C8| STA.b $50

;---------------------------------------------------------------------------------------------------

#EXIT_07A3CA:
|07A3CA| RTS

;===================================================================================================

LinkItem_Flute:
|07A3CB| BIT.b $3A
|07A3CD| BVC .can_use

|07A3CF| DEC.w $03F0

|07A3D2| LDA.w $03F0
|07A3D5| BNE EXIT_07A3CA

|07A3D7| LDA.b $3A
|07A3D9| AND.b #$BF
|07A3DB| STA.b $3A

;---------------------------------------------------------------------------------------------------

.can_use
|07A3DD| JSR TestYButton
|07A3E0| BCC EXIT_07A3CA

|07A3E2| LDA.b #$80
|07A3E4| STA.w $03F0

|07A3E7| LDA.b #$13 ; SFX2.13
|07A3E9| JSR PlayLinkSFX2Panned

|07A3EC| LDA.b $1B
|07A3EE| BNE EXIT_07A3CA

; are we in dark world?
|07A3F0| LDA.b $8A
|07A3F2| AND.b #$40
|07A3F4| BNE EXIT_07A3CA

; are we in special overworld?
|07A3F6| LDA.b $10
|07A3F8| CMP.b #$0B
|07A3FA| BEQ EXIT_07A3CA

;---------------------------------------------------------------------------------------------------

|07A3FC| LDX.b #$04

.look_for_duck
|07A3FE| LDA.w $0C4A,X
|07A401| CMP.b #$27 ; ANCILLA 27
|07A403| BEQ EXIT_07A3CA

|07A405| DEX
|07A406| BPL .look_for_duck

|07A408| LDA.l $7EF34C
|07A40C| CMP.b #$02
|07A40E| BNE .have_activated_flute

;---------------------------------------------------------------------------------------------------

|07A410| REP #$20

|07A412| LDA.b $8A
|07A414| CMP.w #$0018 ; OW 18
|07A417| BNE .dont_blow_up_weathervane

|07A419| LDA.b $20
|07A41B| CMP.w #$0760
|07A41E| BCC .dont_blow_up_weathervane

|07A420| CMP.w #$07E0
|07A423| BCS .dont_blow_up_weathervane

|07A425| LDA.b $22
|07A427| CMP.w #$01CF
|07A42A| BCC .dont_blow_up_weathervane

|07A42C| CMP.w #$0230
|07A42F| BCS .dont_blow_up_weathervane

|07A431| SEP #$20

|07A433| LDA.b #$2D
|07A435| STA.b $11

|07A437| LDY.b #$00
|07A439| LDA.b #$37 ; ANCILLA 37
|07A43B| JSL AncillaAdd_ExplodingWeatherVane

.dont_blow_up_weathervane
|07A43F| SEP #$20

|07A441| BRA EXIT_07A44E

;---------------------------------------------------------------------------------------------------

.have_activated_flute
|07A443| LDY.b #$04
|07A445| LDA.b #$27 ; ANCILLA 27
|07A447| JSL AncillaAdd_Duck_take_off

|07A44B| STZ.w $03F8

;---------------------------------------------------------------------------------------------------

#EXIT_07A44E:
|07A44E| RTS

;===================================================================================================

CallForDuckIndoors:
|07A44F| PHB
|07A450| PHK
|07A451| PLB

|07A452| LDA.b #$13 ; SFX2.13
|07A454| JSR PlayLinkSFX2Panned

|07A457| LDY.b #$04
|07A459| LDA.b #$27 ; ANCILLA 27
|07A45B| JSL AncillaAdd_Duck_take_off

|07A45F| PLB

|07A460| RTL

;===================================================================================================

LinkItem_Book:
|07A461| BIT.b $3A
|07A463| BVS .exit

; How contrarian
|07A465| LDA.b $6C
|07A467| BNE EXIT_07A44E

|07A469| JSR TestYButton
|07A46C| BCC .exit

|07A46E| LDA.b $3A
|07A470| AND.b #$BF
|07A472| STA.b $3A

|07A474| LDA.w $02ED
|07A477| BNE .do_prayer

|07A479| LDA.b #$3C ; SFX2.3C
|07A47B| JSR PlayLinkSFX2Panned

|07A47E| BRA .exit

;---------------------------------------------------------------------------------------------------

.do_prayer
|07A480| BRL PerformDesertPrayer

.exit
|07A483| RTS

;===================================================================================================

LinkItem_Ether:
|07A484| JSR TestYButton
|07A487| BCC .exit

|07A489| LDA.b $3A
|07A48B| AND.b #$BF
|07A48D| STA.b $3A

|07A48F| LDA.b $6C
|07A491| BNE .cannot_ether

|07A493| LDA.w $0FFC
|07A496| BNE .cannot_ether

|07A498| LDA.w $0403
|07A49B| AND.b #$80
|07A49D| BNE .cannot_ether

|07A49F| LDA.l $7EF359
|07A4A3| INC A
|07A4A4| AND.b #$FE
|07A4A6| BEQ .cannot_ether

|07A4A8| LDA.l $7EF3D3
|07A4AC| BEQ .allow_ether

|07A4AE| LDA.l $7EF3CC
|07A4B2| CMP.b #$0D ; FOLLOWER 0D
|07A4B4| BNE .allow_ether

.cannot_ether
|07A4B6| BRL LinkGoBeep

;---------------------------------------------------------------------------------------------------

.allow_ether
|07A4B9| LDA.w $0C4A
|07A4BC| ORA.w $0C4B
|07A4BF| ORA.w $0C4C
|07A4C2| BNE .exit

|07A4C4| LDX.b #$01
|07A4C6| JSR CheckMagicCost
|07A4C9| BCC .exit

|07A4CB| LDA.b #$08 ; LINKSTATE 08
|07A4CD| STA.b $5D

|07A4CF| LDA.b #$01
|07A4D1| TSB.b $50

|07A4D3| LDA.w .anim_timer
|07A4D6| STA.b $3D

|07A4D8| STZ.w $031C
|07A4DB| STZ.w $031D
|07A4DE| STZ.w $0324

|07A4E1| LDA.b #$23 ; SFX3.23
|07A4E3| JSR PlayLinkSFX3Panned

.exit
|07A4E6| RTS

;===================================================================================================

pool LinkItem_Ether LinkState_UsingEther

.anim_step
|07A4E7| db $00, $01, $02, $03
|07A4EB| db $00, $01, $02, $03
|07A4EF| db $04, $05, $06, $07

.anim_timer
|07A4F3| db   5,   5,   5,   5
|07A4F7| db   5,   5,   5,   5
|07A4FB| db   7,   7,   3,   3

endpool

;---------------------------------------------------------------------------------------------------

LinkState_UsingEther:
|07A4FF| INC.w $0FC1

|07A502| DEC.b $3D
|07A504| BPL .exit

|07A506| INC.w $031D

|07A509| LDX.w $031D

|07A50C| CPX.b #$0B
|07A50E| BNE .not_last_step

|07A510| LDX.b #$0B
|07A512| BRA .continue

;---------------------------------------------------------------------------------------------------

.not_last_step
|07A514| CPX.b #$04
|07A516| BNE .skip_swish_sfx

|07A518| PHX

|07A519| LDA.b #$23 ; SFX3.23
|07A51B| JSR PlayLinkSFX3Panned

|07A51E| PLX

.skip_swish_sfx
|07A51F| CPX.b #$09
|07A521| BNE .skip_ding_sfx

|07A523| LDA.b #$2C ; SFX2.2C
|07A525| JSR PlayLinkSFX2Panned

.skip_ding_sfx
|07A528| CPX.b #$0C
|07A52A| BNE .continue

|07A52C| LDA.b #$0A
|07A52E| STA.w $031D

|07A531| TAX

;---------------------------------------------------------------------------------------------------

.continue
|07A532| LDA.w .anim_timer,X
|07A535| STA.b $3D

|07A537| LDA.w .anim_step,X
|07A53A| STA.w $031C

|07A53D| LDA.w $0324
|07A540| BNE .exit

|07A542| CPX.b #$0A
|07A544| BNE .exit

|07A546| LDA.b #$01
|07A548| STA.w $0324

|07A54B| LDY.b #$00
|07A54D| LDA.b #$18 ; ANCILLA 18
|07A54F| JSL AncillaAdd_EtherSpell

|07A553| STZ.b $4D
|07A555| STZ.w $0046

.exit
|07A558| RTS

;===================================================================================================

LinkItem_Bombos:
|07A559| JSR TestYButton
|07A55C| BCC .exit

|07A55E| LDA.b $3A
|07A560| AND.b #$BF
|07A562| STA.b $3A

|07A564| LDA.b $6C
|07A566| BNE .cannot_bombos

|07A568| LDA.w $0FFC
|07A56B| BNE .cannot_bombos

|07A56D| LDA.w $0403
|07A570| AND.b #$80
|07A572| BNE .cannot_bombos

|07A574| LDA.l $7EF359
|07A578| INC A
|07A579| AND.b #$FE
|07A57B| BEQ .cannot_bombos

|07A57D| LDA.l $7EF3D3
|07A581| BEQ .allow_bombos

|07A583| LDA.l $7EF3CC
|07A587| CMP.b #$0D ; FOLLOWER 0D
|07A589| BNE .allow_bombos

.cannot_bombos
|07A58B| BRL LinkGoBeep

;---------------------------------------------------------------------------------------------------

.allow_bombos
|07A58E| LDA.w $0C4A
|07A591| ORA.w $0C4B
|07A594| ORA.w $0C4C
|07A597| BNE .exit

|07A599| LDX.b #$01
|07A59B| JSR CheckMagicCost
|07A59E| BCC .exit

|07A5A0| LDA.b #$09 ; LINKSTATE 09
|07A5A2| STA.b $5D

|07A5A4| LDA.b #$01
|07A5A6| TSB.b $50

|07A5A8| LDA.w .anim_timer
|07A5AB| STA.b $3D

|07A5AD| LDA.w .anim_step
|07A5B0| STA.w $031C
|07A5B3| STZ.w $031D

|07A5B6| STZ.w $0324

|07A5B9| LDA.b #$23 ; SFX3.23
|07A5BB| JSR PlayLinkSFX3Panned

.exit
|07A5BE| RTS

;===================================================================================================

pool LinkItem_Bombos LinkState_UsingBombos

.anim_step
|07A5BF| db $00, $01, $02, $03
|07A5C3| db $00, $01, $02, $03
|07A5C7| db $08, $09, $0A, $0B
|07A5CB| db $0C, $0A, $08, $0D
|07A5CF| db $0E, $0F, $10, $11

.anim_timer
|07A5D3| db   5,   5,   5,   5
|07A5D7| db   5,   5,   5,   5
|07A5DB| db   3,   3,   3,   3
|07A5DF| db   3,   7,   1,   1
|07A5E3| db   1,   1,   1,  13

endpool

;---------------------------------------------------------------------------------------------------

LinkState_UsingBombos:
|07A5E7| INC.w $0FC1

|07A5EA| DEC.b $3D
|07A5EC| BPL .exit

|07A5EE| INC.w $031D

|07A5F1| LDX.w $031D
|07A5F4| CPX.b #$04
|07A5F6| BNE .skip_swish_sfx

|07A5F8| PHX

|07A5F9| LDA.b #$23 ; SFX3.23
|07A5FB| JSR PlayLinkSFX3Panned

|07A5FE| PLX

.skip_swish_sfx
|07A5FF| CPX.b #$0A
|07A601| BNE .skip_ping_sfx

|07A603| PHX

|07A604| LDA.b #$2C ; SFX2.2C
|07A606| JSR PlayLinkSFX2Panned

|07A609| PLX

;---------------------------------------------------------------------------------------------------

.skip_ping_sfx
|07A60A| CPX.b #$14
|07A60C| BNE .dont_reset_step

|07A60E| LDA.b #$13
|07A610| STA.w $031D

|07A613| TAX

.dont_reset_step
|07A614| LDA.w .anim_timer,X
|07A617| STA.b $3D

|07A619| LDA.w .anim_step,X
|07A61C| STA.w $031C

|07A61F| LDA.w $0324
|07A622| BNE .exit

|07A624| CPX.b #$13
|07A626| BNE .exit

|07A628| LDA.b #$01
|07A62A| STA.w $0324

|07A62D| LDY.b #$00
|07A62F| LDA.b #$19 ; ANCILLA 19
|07A631| JSL AncillaAdd_BombosSpell

|07A635| STZ.b $4D
|07A637| STZ.w $0046

.exit
|07A63A| RTS

;===================================================================================================

LinkItem_Quake:
|07A63B| JSR TestYButton
|07A63E| BCC .exit

|07A640| LDA.b $3A
|07A642| AND.b #$BF
|07A644| STA.b $3A

|07A646| LDA.b $6C
|07A648| BNE .cannot_quake

|07A64A| LDA.w $0FFC
|07A64D| BNE .cannot_quake

|07A64F| LDA.w $0403
|07A652| AND.b #$80
|07A654| BNE .cannot_quake

|07A656| LDA.l $7EF359
|07A65A| INC A
|07A65B| AND.b #$FE
|07A65D| BEQ .cannot_quake

|07A65F| LDA.l $7EF3D3
|07A663| BEQ .allow_quake

|07A665| LDA.l $7EF3CC
|07A669| CMP.b #$0D ; FOLLOWER 0D
|07A66B| BNE .allow_quake

.cannot_quake
|07A66D| BRL LinkGoBeep

;---------------------------------------------------------------------------------------------------

.allow_quake
|07A670| LDA.w $0C4A
|07A673| ORA.w $0C4B
|07A676| ORA.w $0C4C
|07A679| BNE .exit

|07A67B| LDX.b #$01
|07A67D| JSR CheckMagicCost
|07A680| BCC .exit

|07A682| LDA.b #$0A ; LINKSTATE 0A
|07A684| STA.b $5D

|07A686| LDA.b #$01
|07A688| TSB.b $50

|07A68A| LDA.w .anim_timer
|07A68D| STA.b $3D

|07A68F| LDA.w .anim_step
|07A692| STA.w $031C
|07A695| STZ.w $031D

|07A698| STZ.w $0324

|07A69B| STZ.b $46

|07A69D| LDA.b #$28
|07A69F| STA.w $0362
|07A6A2| STA.w $0363
|07A6A5| STZ.w $0364

|07A6A8| LDA.b #$23 ; SFX3.23
|07A6AA| JSR PlayLinkSFX3Panned

.exit
|07A6AD| RTS

;===================================================================================================

pool LinkItem_Quake LinkState_UsingQuake

.anim_step
|07A6AE| db $00, $01, $02, $03
|07A6B2| db $00, $01, $02, $03
|07A6B6| db $12, $13, $14, $16

.anim_timer
|07A6BA| db   5,   5,   5,   5
|07A6BE| db   5,   5,   5,   5
|07A6C2| db   5,   5,   5,  19

endpool

;---------------------------------------------------------------------------------------------------

LinkState_UsingQuake:
|07A6C6| INC.w $0FC1

|07A6C9| STZ.b $27
|07A6CB| STZ.b $28

|07A6CD| LDA.w $031D
|07A6D0| CMP.b #$0A
|07A6D2| BNE .not_ascending

|07A6D4| LDA.w $0362
|07A6D7| STA.b $29

|07A6D9| LDA.w $0363
|07A6DC| STA.w $02C7

|07A6DF| LDA.w $0364
|07A6E2| STA.b $24

|07A6E4| LDA.b #$02
|07A6E6| STA.b $00
|07A6E8| STA.b $4D

|07A6EA| JSR HandleChangeInZVelocity.preset
|07A6ED| JSL FindArbitraryLandingSpot

|07A6F1| LDA.b $29
|07A6F3| STA.w $0362

|07A6F6| LDA.w $02C7
|07A6F9| STA.w $0363

|07A6FC| LDA.b $24
|07A6FE| STA.w $0364
|07A701| BMI .still_ascending

;---------------------------------------------------------------------------------------------------

|07A703| LDY.b #$14

|07A705| LDA.b $29
|07A707| BPL .done_ascending

|07A709| LDY.b #$15

.done_ascending
|07A70B| STY.w $031C

|07A70E| BRA .exit

.not_ascending
|07A710| DEC.b $3D
|07A712| BPL .exit

;---------------------------------------------------------------------------------------------------

.still_ascending
|07A714| INC.w $031D

|07A717| LDX.w $031D
|07A71A| CPX.b #$04
|07A71C| BNE .skip_swish_sfx

|07A71E| PHX

|07A71F| LDA.b #$23 ; SFX3.23
|07A721| JSR PlayLinkSFX3Panned

|07A724| PLX

.skip_swish_sfx
|07A725| CPX.b #$0A
|07A727| BNE .skip_ping_sfx

|07A729| PHX

|07A72A| LDA.b #$2C ; SFX2.2C
|07A72C| JSR PlayLinkSFX2Panned

|07A72F| PLX

.skip_ping_sfx
|07A730| CPX.b #$0B
|07A732| BNE .skip_boom_sfx

|07A734| LDA.b #$0C ; SFX2.0C
|07A736| JSR PlayLinkSFX2Panned

;---------------------------------------------------------------------------------------------------

.skip_boom_sfx
|07A739| CPX.b #$0C
|07A73B| BNE .dont_reset_step

|07A73D| LDA.b #$0B
|07A73F| STA.w $031D

|07A742| TAX

.dont_reset_step
|07A743| LDA.w .anim_timer,X
|07A746| STA.b $3D

|07A748| LDA.w .anim_step,X
|07A74B| STA.w $031C

|07A74E| LDA.w $0324
|07A751| BNE .exit

|07A753| CPX.b #$0B
|07A755| BNE .exit

|07A757| LDA.b #$01
|07A759| STA.w $0324

|07A75C| LDY.b #$00
|07A75E| LDA.b #$1C ; ANCILLA 1C
|07A760| JSL AncillaAdd_QuakeSpell

|07A764| STZ.b $4D
|07A766| STZ.w $0046

.exit
|07A769| RTS

;===================================================================================================

ActivateSpinAttack:
|07A76A| LDY.b #$00
|07A76C| TYX

|07A76D| LDA.b #$2A ; ANCILLA 2A
|07A76F| JSL AncillaAdd_SpinAttackInitSpark

;===================================================================================================

AnimateVictorySpin:
|07A773| LDA.b #$03 ; LINKSTATE 03
|07A775| STA.b $5D

|07A777| LDA.b $2F
|07A779| LSR A
|07A77A| TAX

|07A77B| LDA.w SpinAttack.data_offset,X
|07A77E| STA.w $031E
|07A781| TAX

|07A782| LDA.w SpinAttack.anim_timer_a
|07A785| STA.b $3D

|07A787| LDA.w SpinAttack.anim_step,X
|07A78A| STA.w $031C
|07A78D| STZ.w $031D

|07A790| LDA.b #$90
|07A792| STA.b $3C

|07A794| LDA.b #$01
|07A796| TSB.b $50

|07A798| LDA.b #$80
|07A79A| STA.b $3A

|07A79C| BRL LinkState_SpinAttack

;===================================================================================================

UNREACHABLE_07A79F:
|07A79F| RTS

;===================================================================================================

AnimateVictorySpin_long:
|07A7A0| PHB
|07A7A1| PHK
|07A7A2| PLB

|07A7A3| JSR AnimateVictorySpin

|07A7A6| PLB

|07A7A7| RTL

;===================================================================================================

SpinAttack:

.anim_step
|07A7A8| db $0A, $0B, $0A, $06, $07, $08, $09, $02, $03, $04, $05, $0A ; up
|07A7B4| db $00, $01, $00, $02, $03, $04, $05, $06, $07, $08, $09, $00 ; down
|07A7C0| db $0C, $0D, $0C, $04, $05, $06, $07, $08, $09, $02, $03, $0C ; left
|07A7CC| db $0E, $0F, $0E, $08, $09, $02, $03, $04, $05, $06, $07, $0E ; right

.anim_timer_a
|07A7D8| db $03, $09, $03 ; up
|07A7DB| db $01, $01, $01 ; down
|07A7DE| db $01, $01, $01 ; left
|07A7E1| db $01, $01, $05 ; right

.anim_timer_b
|07A7E4| db $01, $05, $01 ; up
|07A7E7| db $01, $01, $01 ; down
|07A7EA| db $01, $01, $01 ; left
|07A7ED| db $01, $01, $05 ; right

.data_offset
|07A7F0| db $00 ; up
|07A7F1| db $0C ; down
|07A7F2| db $18 ; left
|07A7F3| db $24 ; right

;===================================================================================================

LinkState_SpinAttack:
|07A7F4| JSR CacheCameraPropertiesIfOutdoors

|07A7F7| LDA.b $4D
|07A7F9| BEQ .not_recoiling

;---------------------------------------------------------------------------------------------------

|07A7FB| LDX.b #$04

.next_ancilla
|07A7FD| LDA.w $0C4A,X
|07A800| CMP.b #$2A ; ANCILLA 2A
|07A802| BEQ .delete_ancilla

|07A804| CMP.b #$2B ; ANCILLA 2B
|07A806| BNE .skip_ancilla

.delete_ancilla
|07A808| STZ.w $0C4A,X

.skip_ancilla
|07A80B| DEX
|07A80C| BPL .next_ancilla

;---------------------------------------------------------------------------------------------------

|07A80E| STZ.b $25

|07A810| LDA.b $50
|07A812| AND.b #$FE
|07A814| STA.b $50

|07A816| STZ.b $3D
|07A818| STZ.b $3C

|07A81A| STZ.b $3A
|07A81C| STZ.b $3B

|07A81E| STZ.w $031C
|07A821| STZ.w $031D

|07A824| STZ.b $5E

|07A826| LDA.b $1B
|07A828| BNE .useless_branch

.useless_branch
|07A82A| LDA.w $0360
|07A82D| BEQ .not_electrocuted

|07A82F| LDA.b $55
|07A831| BEQ .no_cape

|07A833| JSR ForciblyUnequipCape_quietly

;---------------------------------------------------------------------------------------------------

.no_cape
|07A836| JSR ResetSwordAndItemUsage

|07A839| LDA.b #$01
|07A83B| STA.w $037B

|07A83E| STZ.w $0300

|07A841| LDA.b #$02
|07A843| STA.b $3D

|07A845| STZ.b $2E

|07A847| LDA.b $67
|07A849| AND.b #$F0
|07A84B| STA.b $67

|07A84D| LDA.b #$2B ; SFX3.2B
|07A84F| JSR PlayLinkSFX3Panned

|07A852| LDA.b #$07 ; LINKSTATE 07
|07A854| STA.b $5D

|07A856| BRL LinkState_Zapped

;---------------------------------------------------------------------------------------------------

.not_electrocuted
|07A859| LDA.b #$02 ; LINKSTATE 02
|07A85B| STA.b $5D

|07A85D| BRL LinkState_Recoil

;---------------------------------------------------------------------------------------------------

.not_recoiling
|07A860| LDA.b $46
|07A862| BEQ .not_rebounding

|07A864| JSR HandleRecoilAndTimer
|07A867| BRA .done_rebound

.not_rebounding
|07A869| STZ.b $67

|07A86B| JSL HandleLinkVelocity

|07A86F| JSR HandleLinkCardinalCollision

|07A872| LDA.b #$03 ; LINKSTATE 03
|07A874| STA.b $5D

|07A876| STZ.w $0302

|07A879| JSR HandleIndoorCameraAndDoors

;---------------------------------------------------------------------------------------------------

.done_rebound
|07A87C| DEC.b $3D
|07A87E| BPL EXIT_07A8DB

|07A880| LDA.w $031D
|07A883| INC A
|07A884| STA.w $031D

|07A887| CMP.b #$02
|07A889| BNE .skip_swoosh_sfx

|07A88B| LDA.b #$23 ; SFX3.23
|07A88D| JSR PlayLinkSFX3Panned

;---------------------------------------------------------------------------------------------------

.skip_swoosh_sfx
|07A890| LDA.w $031D
|07A893| CMP.b #$0C
|07A895| BNE .still_spinning

|07A897| LDA.b $50
|07A899| AND.b #$FE
|07A89B| STA.b $50

|07A89D| STZ.b $3D
|07A89F| STZ.b $3C

|07A8A1| STZ.w $031C
|07A8A4| STZ.w $031D

|07A8A7| LDA.b $5D
|07A8A9| CMP.b #$1E ; LINKSTATE 1E
|07A8AB| BEQ .victory_spin

|07A8AD| LDX.b #$00

; This will always be 00.
|07A8AF| LDA.b $3C
|07A8B1| BEQ .dont_preserve_b_button

|07A8B3| LDA.b $F0
|07A8B5| AND.b #$80
|07A8B7| TAX

.dont_preserve_b_button
|07A8B8| STX.b $3A

.victory_spin
|07A8BA| LDA.b #$00 ; LINKSTATE 00
|07A8BC| STA.b $5D

|07A8BE| BRA EXIT_07A8DB

;---------------------------------------------------------------------------------------------------

.still_spinning
|07A8C0| LDA.w $031D
|07A8C3| CLC
|07A8C4| ADC.w $031E
|07A8C7| TAX

|07A8C8| LDA.w SpinAttack.anim_step,X
|07A8CB| STA.w $031C

|07A8CE| LDX.w $031D

|07A8D1| LDY.w SpinAttack.anim_timer_b,X
|07A8D4| STY.b $3D

|07A8D6| LDY.b #$08
|07A8D8| JSR TileDetect_MainHandler

;---------------------------------------------------------------------------------------------------

#EXIT_07A8DB:
|07A8DB| RTS

;===================================================================================================

UNREACHABLE_07A8DC:
|07A8DC| LDY.b #$00
|07A8DE| LDX.b #$01
|07A8E0| LDA.b #$2A ; ANCILLA 2A
|07A8E2| JSL AncillaAdd_SpinAttackInitSpark

|07A8E6| LDA.b #$1E ; LINKSTATE 1E
|07A8E8| STA.b $5D

|07A8EA| LDA.b $2F
|07A8EC| LSR A
|07A8ED| TAX

|07A8EE| LDA.w SpinAttack.data_offset,X
|07A8F1| STA.w $031E

|07A8F4| TAX

|07A8F5| LDA.w SpinAttack.anim_timer_a
|07A8F8| STA.b $3D

|07A8FA| LDA.w SpinAttack.anim_step,X
|07A8FD| STA.w $031C
|07A900| STZ.w $031D

|07A903| LDA.b #$01
|07A905| TSB.b $50

|07A907| BRL LinkState_SpinAttack

;===================================================================================================

LinkItem_Mirror:
|07A90A| BIT.b $3A
|07A90C| BVS .continue

|07A90E| JSR TestYButton
|07A911| BCC EXIT_07A8DB

; check for kiki
|07A913| LDA.l $7EF3CC
|07A917| CMP.b #$0A ; FOLLOWER 0A
|07A919| BNE .continue

;---------------------------------------------------------------------------------------------------

|07A91B| REP #$20

|07A91D| LDA.w #$011F ; MESSAGE 011F
|07A920| STA.w $1CF0

|07A923| SEP #$20

|07A925| JSL PrepAndDisplayMessage
|07A929| BRL .exit

;---------------------------------------------------------------------------------------------------

.continue
|07A92C| LDA.b $3A
|07A92E| AND.b #$BF
|07A930| STA.b $3A

|07A932| LDA.b $6C
|07A934| BNE LinkGoBeep

|07A936| LDA.w $037F
|07A939| BNE AttemptMirrorWarp

|07A93B| LDA.b $1B
|07A93D| BNE AttemptMirrorWarp

|07A93F| LDA.b $8A
|07A941| AND.b #$40
|07A943| BNE AttemptMirrorWarp

;===================================================================================================

#LinkGoBeep:
|07A945| LDA.b #$3C ; SFX2.3C
|07A947| JSR PlayLinkSFX2Panned

|07A94A| BRA .exit

;===================================================================================================

#AttemptMirrorWarp:
|07A94C| LDA.b $1B
|07A94E| BEQ .overworld

|07A950| LDA.w $0FFC
|07A953| BNE .exit

|07A955| STZ.w $05FC
|07A958| STZ.w $05FD

|07A95B| JSL MirrorAndSaveRoomFlags

|07A95F| BRA .exit

;---------------------------------------------------------------------------------------------------

.overworld
|07A961| LDA.b $10
|07A963| CMP.b #$0B
|07A965| BEQ .exit

; cache dark worldness
|07A967| LDA.b $8A
|07A969| AND.b #$40
|07A96B| STA.b $7B

|07A96D| BEQ .no_mirror_portal

|07A96F| LDA.b $20
|07A971| STA.w $1ADF

|07A974| LDA.b $21
|07A976| STA.w $1AEF

|07A979| LDA.b $22
|07A97B| STA.w $1ABF

|07A97E| LDA.b $23
|07A980| STA.w $1ACF

.no_mirror_portal
|07A983| LDA.b #$23

;---------------------------------------------------------------------------------------------------

#SetGameModeLikeMirror:
|07A985| STA.b $11

|07A987| STZ.w $03F8

|07A98A| LDA.b #$01
|07A98C| STA.w $02DB

|07A98F| STZ.b $B0

|07A991| STZ.b $27
|07A993| STZ.b $28

|07A995| LDA.b #$14 ; LINKSTATE 14
|07A997| STA.b $5D

.exit
|07A999| RTS

;===================================================================================================

LinkState_CrossingWorlds:
|07A99A| JSL ResetLinkProperties_B

|07A99E| JSR TileCheckForMirrorBonk

; check for world and original world
|07A9A1| LDA.b $8A
|07A9A3| AND.b #$40
|07A9A5| CMP.b $7B
|07A9A7| BNE .worlds_dont_match

|07A9A9| BRL .dont_mirror_bonk

;---------------------------------------------------------------------------------------------------

.worlds_dont_match
|07A9AC| LDA.b $0C
|07A9AE| ORA.b $0E
|07A9B0| STA.b $00

|07A9B2| AND.b #$0C
|07A9B4| BEQ .dont_mirror_bonk

|07A9B6| LDA.b $00
|07A9B8| AND.b #$03
|07A9BA| BNE .mirror_bonk

|07A9BC| LDA.b $00
|07A9BE| AND.b #$0F
|07A9C0| BEQ .dont_mirror_bonk

;---------------------------------------------------------------------------------------------------

|07A9C2| LDX.b #$03
|07A9C4| LDY.b #$00

.next_shift_a
|07A9C6| LSR A
|07A9C7| BCC .no_bit_a

|07A9C9| INY

.no_bit_a
|07A9CA| DEX
|07A9CB| BPL .next_shift_a

|07A9CD| CPY.b #$02
|07A9CF| BCC .dont_mirror_bonk

.mirror_bonk
|07A9D1| LDA.b #$2C
|07A9D3| BRA SetGameModeLikeMirror

.dont_mirror_bonk
|07A9D5| LDY.b #$00
|07A9D7| LDX.b #$03

|07A9D9| LDA.w $0341

.next_shift_b
|07A9DC| LSR A
|07A9DD| BCC .no_bit_b

|07A9DF| INY

.no_bit_b
|07A9E0| DEX
|07A9E1| BPL .next_shift_b

|07A9E3| CPY.b #$02
|07A9E5| BCC .dont_reset_swim_or_cape

;---------------------------------------------------------------------------------------------------

|07A9E7| LDA.l $7EF356
|07A9EB| BNE .have_flippers

; bonk if worlds didn't match
|07A9ED| LDA.b $8A
|07A9EF| AND.b #$40
|07A9F1| CMP.b $7B
|07A9F3| BNE .mirror_bonk

|07A9F5| JSL CheckAbilityToSwim

|07A9F9| BRA .dont_reset_swim_or_cape

;---------------------------------------------------------------------------------------------------

.have_flippers
|07A9FB| LDA.b #$01
|07A9FD| STA.w $0345

|07AA00| LDA.b $26
|07AA02| STA.w $0340

|07AA05| JSL ResetSwimmingState

|07AA09| LDA.b #$04 ; LINKSTATE 04
|07AA0B| STA.b $5D

|07AA0D| JSR ForciblyUnequipCape_quietly

|07AA10| STZ.b $5E

|07AA12| BRA .exit

;---------------------------------------------------------------------------------------------------

.dont_reset_swim_or_cape
|07AA14| LDA.w $0345
|07AA17| BEQ .not_deep_water

|07AA19| STZ.w $0345

|07AA1C| LDA.w $0340
|07AA1F| STA.b $26

.not_deep_water
|07AA21| STZ.w $0374
|07AA24| STZ.w $0372

|07AA27| STZ.b $5E

|07AA29| STZ.b $3A
|07AA2B| STZ.b $3C

|07AA2D| STZ.b $50

|07AA2F| STZ.w $032B

|07AA32| STZ.b $27

;---------------------------------------------------------------------------------------------------

; check for world and original world
|07AA34| LDA.b $8A
|07AA36| AND.b #$40
|07AA38| CMP.b $7B
|07AA3A| BEQ .worlds_match

|07AA3C| STZ.w $04AC
|07AA3F| STZ.w $04AD

.worlds_match
|07AA42| LDY.b #$00 ; LINKSTATE 00

|07AA44| LDA.l $7EF357
|07AA48| BNE .not_pearlless_in_darkworld

|07AA4A| LDA.b $8A
|07AA4C| AND.b #$40
|07AA4E| BEQ .not_pearlless_in_darkworld

; become bunny
|07AA50| LDY.b #$17 ; LINKSTATE 17

.not_pearlless_in_darkworld
|07AA52| STY.b $5D

.exit
|07AA54| RTS

;===================================================================================================

PerformDesertPrayer:
|07AA55| LDA.b #$05
|07AA57| STA.b $11

|07AA59| LDA.b $10
|07AA5B| STA.w $010C

|07AA5E| LDA.b #$0E
|07AA60| STA.b $10

|07AA62| LDA.b #$01
|07AA64| STA.w $0FC1

|07AA67| LDA.b #$16
|07AA69| STA.w $030B

|07AA6C| STZ.w $030A

|07AA6F| LDA.b #$02
|07AA71| STA.w $0308

|07AA74| LDA.b #$01
|07AA76| TSB.b $50

|07AA78| STZ.b $2E

|07AA7A| LDA.b $67
|07AA7C| AND.b #$F0
|07AA7E| STA.b $67

|07AA80| LDA.b #$11 ; SFX1.11
|07AA82| STA.w $012D

|07AA85| LDA.b #$F2 ; SONG F2 - half volume
|07AA87| STA.w $012C

;---------------------------------------------------------------------------------------------------

#EXIT_07AA8A:
|07AA8A| RTS

;===================================================================================================

HandleFollowersAfterMirroring:
|07AA8B| PHB
|07AA8C| PHK
|07AA8D| PLB

|07AA8E| LDY.b #$00
|07AA90| JSR TileDetect_MainHandler

|07AA93| STZ.b $2E

|07AA95| LDA.l $7EF3CC
|07AA99| CMP.b #$0C ; FOLLOWER 0C
|07AA9B| BEQ .have_purple_chest

|07AA9D| CMP.b #$0D ; FOLLOWER 0D
|07AA9F| BNE .dont_have_superbomb

|07AAA1| LDA.b #$FE
|07AAA3| STA.w $04B4
|07AAA6| STZ.w $04B5

;---------------------------------------------------------------------------------------------------

.have_purple_chest
|07AAA9| LDA.l $7EF3D3
|07AAAD| BEQ .check_for_pearl

|07AAAF| LDA.b #$00
|07AAB1| STA.l $7EF3D3

|07AAB5| BRA .clear_follower

;---------------------------------------------------------------------------------------------------

.dont_have_superbomb
|07AAB7| LDA.l $7EF3CC

; is it sign guy?
|07AABB| CMP.b #$09 ; FOLLOWER 09
|07AABD| BEQ .clear_follower

|07AABF| CMP.b #$0A ; FOLLOWER 0A
|07AAC1| BNE .not_kiki

.clear_follower
|07AAC3| LDA.b #$00
|07AAC5| STA.l $7EF3CC

|07AAC9| BRA .check_for_pearl

;---------------------------------------------------------------------------------------------------

.not_kiki
|07AACB| LDY.b #$07 ; FOLLOWER 07

|07AACD| LDA.l $7EF3CC
|07AAD1| CMP.b #$08 ; FOLLOWER 08
|07AAD3| BEQ .smithy

|07AAD5| LDY.b #$08 ; FOLLOWER 08

; or is it the frog?
|07AAD7| CMP.b #$07 ; FOLLOWER 07
|07AAD9| BNE .check_for_pearl

;---------------------------------------------------------------------------------------------------

.smithy
|07AADB| TYA
|07AADC| STA.l $7EF3CC
|07AAE0| JSL LoadFollowerGraphics

|07AAE4| LDY.b #$04
|07AAE6| LDA.b #$40 ; ANCILLA 40
|07AAE8| JSL AncillaAdd_DwarfPoof

;---------------------------------------------------------------------------------------------------

.check_for_pearl
|07AAEC| LDA.l $7EF357
|07AAF0| BNE .have_pearl

|07AAF2| LDY.b #$04
|07AAF4| LDA.b #$23 ; ANCILLA 23
|07AAF6| JSL AncillaAdd_BunnyPoof

|07AAFA| JSR ForciblyUnequipCape_quietly

|07AAFD| STZ.w $02E2

|07AB00| BRA .exit

.have_pearl
|07AB02| LDA.b $55
|07AB04| BEQ .exit

|07AB06| JSR ForciblyUnequipCape

|07AB09| STZ.w $02E2

.exit
|07AB0C| PLB

|07AB0D| RTL

;===================================================================================================

LinkItem_Hookshot:
; y press?
|07AB0E| LDA.b $3A
|07AB10| AND.b #$40
|07AB12| BNE EXIT_07AB54

; in a door?
|07AB14| LDA.b $6C
|07AB16| BNE EXIT_07AB54

; grabbing?
|07AB18| LDA.b $48
|07AB1A| AND.b #$02
|07AB1C| BNE EXIT_07AB54

|07AB1E| JSR TestYButton
|07AB21| BCC EXIT_07AB54

;---------------------------------------------------------------------------------------------------

|07AB23| JSR ResetAllAcceleration

|07AB26| STZ.w $0300

|07AB29| LDA.b #$01
|07AB2B| TSB.b $50

|07AB2D| LDA.b #$07
|07AB2F| STA.b $3D

|07AB31| STZ.b $2E

|07AB33| LDA.b $67
|07AB35| AND.b #$F0
|07AB37| STA.b $67

|07AB39| LDA.w $037A
|07AB3C| AND.b #$00
|07AB3E| ORA.b #$04
|07AB40| STA.w $037A

|07AB43| LDA.b #$13 ; LINKSTATE 13
|07AB45| STA.b $5D

|07AB47| LDA.b #$01
|07AB49| STA.w $037B

|07AB4C| LDY.b #$03
|07AB4E| LDA.b #$1F ; ANCILLA 1F
|07AB50| JSL AncillaAdd_Hookshot

;---------------------------------------------------------------------------------------------------

#EXIT_07AB54:
|07AB54| RTS

;===================================================================================================

Hookdrag:

.offset_y
|07AB55| db $F8 ; up
|07AB56| db $F0 ; down
|07AB57| db $00 ; left
|07AB58| db $00 ; right

.offset_x
|07AB59| db $00 ; up
|07AB5A| db $00 ; down
|07AB5B| db $04 ; left
|07AB5C| db $F4 ; right

;---------------------------------------------------------------------------------------------------

.speed_y
|07AB5D| db $C0 ; up
|07AB5E| db $40 ; down
|07AB5F| db $00 ; left
|07AB60| db $00 ; right

.speed_x
|07AB61| db $00 ; up
|07AB62| db $00 ; down
|07AB63| db $C0 ; left
|07AB64| db $40 ; right

;===================================================================================================

LinkState_Hookshotting:
|07AB65| STZ.w $0373
|07AB68| STZ.b $4D
|07AB6A| STZ.b $46

|07AB6C| LDX.b #$04

.next_ancilla_check
|07AB6E| LDA.w $0C4A,X
|07AB71| CMP.b #$1F ; ANCILLA 1F
|07AB73| BEQ .found_hookshot

|07AB75| DEX
|07AB76| BPL .next_ancilla_check

; handle hook timer
|07AB78| DEC.b $3D

|07AB7A| LDA.b $3D
|07AB7C| BPL EXIT_07AB54

;---------------------------------------------------------------------------------------------------

; reset link state
|07AB7E| STZ.w $0300
|07AB81| STZ.w $037B

|07AB84| LDA.b $3A
|07AB86| AND.b #$BF
|07AB88| STA.b $3A

|07AB8A| LDA.b $50
|07AB8C| AND.b #$FE
|07AB8E| STA.b $50

|07AB90| LDA.w $037A
|07AB93| AND.b #$FB
|07AB95| STA.w $037A

|07AB98| LDA.b #$00 ; LINKSTATE 00
|07AB9A| STA.b $5D

|07AB9C| LDA.b $3C
|07AB9E| CMP.b #$09
|07ABA0| BCC .exit

|07ABA2| LDA.b #$09
|07ABA4| STA.b $3C

.exit
|07ABA6| RTS

;---------------------------------------------------------------------------------------------------

.found_hookshot
|07ABA7| DEC.b $3D
|07ABA9| BPL .timer_going

|07ABAB| STZ.b $3D

.timer_going
|07ABAD| LDA.w $037E
|07ABB0| BNE .being_dragged

|07ABB2| LDA.b $20
|07ABB4| STA.b $3E

|07ABB6| LDA.b $22
|07ABB8| STA.b $3F

|07ABBA| STZ.b $30
|07ABBC| STZ.b $31

|07ABBE| BRL HandleLinkCardinalCollision

;---------------------------------------------------------------------------------------------------

.being_dragged
|07ABC1| STZ.w $02F5

|07ABC4| LDX.w $039D

|07ABC7| DEC.w $0C5E,X
|07ABCA| BPL .keep_hooking

|07ABCC| STZ.w $0C5E,X

|07ABCF| BRL DeleteHookshot

;---------------------------------------------------------------------------------------------------

.keep_hooking
|07ABD2| LDA.w $0BFA,X
|07ABD5| STA.b $00

|07ABD7| LDA.w $0C0E,X
|07ABDA| STA.b $01

|07ABDC| LDA.w $0C04,X
|07ABDF| STA.b $02

|07ABE1| LDA.w $0C18,X
|07ABE4| STA.b $03

|07ABE6| LDY.w $0C72,X

|07ABE9| STZ.b $05

|07ABEB| LDA.w Hookdrag.offset_y,Y
|07ABEE| STA.b $04
|07ABF0| BPL .positive_a

|07ABF2| LDA.b #$FF
|07ABF4| STA.b $05

.positive_a
|07ABF6| STZ.b $07

|07ABF8| LDA.w Hookdrag.offset_x,Y
|07ABFB| STA.b $06
|07ABFD| BPL .positive_b

|07ABFF| LDA.b #$FF
|07AC01| STA.b $07

.positive_b
|07AC03| STZ.b $27
|07AC05| STZ.b $28

|07AC07| LDA.w Hookdrag.speed_y,Y
|07AC0A| STA.b $08
|07AC0C| STZ.b $09

|07AC0E| LDA.w Hookdrag.speed_x,Y
|07AC11| STA.b $0A
|07AC13| STZ.b $0B

;---------------------------------------------------------------------------------------------------

|07AC15| REP #$20

|07AC17| LDA.b $00
|07AC19| CLC
|07AC1A| ADC.b $04
|07AC1C| SEC
|07AC1D| SBC.b $20
|07AC1F| BPL .positive_y

|07AC21| EOR.w #$FFFF
|07AC24| INC A

; TODO analyze
.positive_y
|07AC25| CMP.w #$0002
|07AC28| BCC .not_limited_y

|07AC2A| LDA.b $27
|07AC2C| AND.w #$FF00
|07AC2F| ORA.b $08
|07AC31| STA.b $27

.not_limited_y
|07AC33| LDA.b $02
|07AC35| CLC
|07AC36| ADC.b $06
|07AC38| SEC
|07AC39| SBC.b $22
|07AC3B| BPL .positive_x

|07AC3D| EOR.w #$FFFF
|07AC40| INC A

.positive_x
|07AC41| CMP.w #$0002
|07AC44| BCC .not_limited_x

|07AC46| LDA.b $28
|07AC48| AND.w #$FF00
|07AC4B| ORA.b $0A
|07AC4D| STA.b $28

.not_limited_x
|07AC4F| SEP #$20

|07AC51| LDA.b $27
|07AC53| ORA.b $28
|07AC55| BEQ DeleteHookshot

|07AC57| BRL DragLinkWithHookshot

;===================================================================================================

DeleteHookshot:
|07AC5A| LDX.w $039D

|07AC5D| STZ.w $0C4A,X

|07AC60| LDA.w $02D3
|07AC63| STA.w $02D1

|07AC66| LDA.b #$00 ; LINKSTATE 00
|07AC68| STA.b $5D

|07AC6A| STZ.w $0300
|07AC6D| STZ.b $3D
|07AC6F| STZ.w $037E

|07AC72| LDA.b $3A
|07AC74| AND.b #$BF
|07AC76| STA.b $3A

|07AC78| LDA.b $50
|07AC7A| AND.b #$FE
|07AC7C| STA.b $50

|07AC7E| LDA.w $037A
|07AC81| AND.b #$FB
|07AC83| STA.w $037A

|07AC86| STZ.w $037B

; !WEIRD and [DUMB] code
|07AC89| LDA.w $03A4,X
|07AC8C| BEQ .no_layer_changing

|07AC8E| LDA.w $0476
|07AC91| EOR.b #$01
|07AC93| STA.w $0476

|07AC96| DEC.b $A4

|07AC98| LDA.w $044A ; EG0
|07AC9B| BNE .dont_go_down_1_room

|07AC9D| LDA.b $A0
|07AC9F| STA.w $048E

|07ACA2| CLC
|07ACA3| ADC.b #$10
|07ACA5| STA.b $A0

.dont_go_down_1_room
|07ACA7| LDA.w $044A
|07ACAA| CMP.b #$02 ; weak EG
|07ACAC| BEQ .dont_swap_layer

|07ACAE| LDA.b $EE
|07ACB0| EOR.b #$01
|07ACB2| STA.b $EE

.dont_swap_layer
|07ACB4| JSL FullyUpdateRoomFlags

;---------------------------------------------------------------------------------------------------

.no_layer_changing
|07ACB8| JSR TileDetect_BigArea

|07ACBB| LDA.w $0341
|07ACBE| AND.b #$0F
|07ACC0| BEQ .not_on_deep_water

|07ACC2| LDA.w $0345
|07ACC5| BNE .not_on_deep_water

;---------------------------------------------------------------------------------------------------

|07ACC7| LDA.b #$01
|07ACC9| STA.w $0345

|07ACCC| LDA.b $26
|07ACCE| STA.w $0340

|07ACD1| JSL ResetSwimmingState

|07ACD5| LDA.b #$15 ; ANCILLA 15
|07ACD7| LDY.b #$00
|07ACD9| JSL AncillaAdd_Splash

|07ACDD| LDA.b #$04 ; LINKSTATE 04
|07ACDF| STA.b $5D

|07ACE1| JSR ForciblyUnequipCape_quietly

|07ACE4| STZ.w $0308
|07ACE7| STZ.w $0309
|07ACEA| STZ.w $0376
|07ACED| STZ.b $5E

|07ACEF| LDA.b $1B
|07ACF1| BEQ .dont_set_to_water_layer

|07ACF3| LDA.b #$01
|07ACF5| STA.b $EE

.dont_set_to_water_layer
|07ACF7| BRA .continue_after_tiles

;---------------------------------------------------------------------------------------------------

.not_on_deep_water
; TODO ANALYZE
|07ACF9| LDA.b $59
|07ACFB| AND.b #$0F
|07ACFD| BEQ .not_pit

|07ACFF| LDA.b #$09
|07AD01| STA.b $5C

|07AD03| STZ.b $5A

|07AD05| LDA.b #$01
|07AD07| STA.b $5B

|07AD09| LDA.b #$01 ; LINKSTATE 01
|07AD0B| STA.b $5D

|07AD0D| BRA .continue_after_tiles

;---------------------------------------------------------------------------------------------------

.not_pit
|07AD0F| LDA.b $20
|07AD11| STA.b $3E

|07AD13| LDA.b $22
|07AD15| STA.b $3F

|07AD17| LDA.b $21
|07AD19| STA.b $40

|07AD1B| LDA.b $23
|07AD1D| STA.b $41

|07AD1F| JSR HandleLinkCardinalCollision

|07AD22| BRL DragLinkWithHookshot.go_backwards

;---------------------------------------------------------------------------------------------------

.continue_after_tiles
|07AD25| LDA.b $3C
|07AD27| CMP.b #$09
|07AD29| BCC .no_spin_charge

|07AD2B| LDA.b #$09
|07AD2D| STA.b $3C

.no_spin_charge
|07AD2F| BRL EXIT_07ADA6

;===================================================================================================

DragLinkWithHookshot:
|07AD32| JSL FindArbitraryLandingSpot

|07AD36| LDY.b #$05
|07AD38| JSR TileDetect_MainHandler

|07AD3B| LDA.b $1B
|07AD3D| BEQ .dont_flag_layers

;---------------------------------------------------------------------------------------------------

|07AD3F| LDA.w $036D

|07AD42| LSR A
|07AD43| LSR A
|07AD44| LSR A
|07AD45| LSR A

|07AD46| ORA.w $036D
|07AD49| ORA.w $036E

|07AD4C| AND.b #$01
|07AD4E| BEQ .dont_flag_layers

|07AD50| DEC.w $03F9
|07AD53| BPL .dont_flag_layers

|07AD55| LDA.b #$03
|07AD57| STA.w $03F9

|07AD5A| LDA.w $037E
|07AD5D| EOR.b #$02
|07AD5F| STA.w $037E

;---------------------------------------------------------------------------------------------------

.dont_flag_layers
|07AD62| STZ.w $0351

|07AD65| LDA.w $037E
|07AD68| AND.b #$02
|07AD6A| BNE .go_backwards

|07AD6C| LDA.w $0357
|07AD6F| AND.b #$01
|07AD71| BEQ .not_thick_grass

|07AD73| LDA.b #$02
|07AD75| STA.w $0351

|07AD78| JSR GetPermissionForSloshSounds
|07AD7B| BCS .go_backwards

|07AD7D| LDA.b #$1A ; SFX2.1A
|07AD7F| JSR PlayLinkSFX2Panned

|07AD82| BRA .go_backwards

.not_thick_grass
|07AD84| LDA.w $0359
|07AD87| ORA.w $0341
|07AD8A| AND.b #$01
|07AD8C| BEQ .go_backwards

|07AD8E| INC.w $0351

; different SFX in mire
|07AD91| LDA.b $8A
|07AD93| CMP.b #$70 ; OW 70
|07AD95| BNE .not_mire

|07AD97| LDA.b #$1B ; SFX2.1B
|07AD99| JSR PlayLinkSFX2Panned

|07AD9C| BRA .go_backwards

.not_mire
|07AD9E| LDA.b #$1C ; SFX2.1C
|07ADA0| JSR PlayLinkSFX2Panned

.go_backwards
|07ADA3| JSR HandleIndoorCameraAndDoors

;---------------------------------------------------------------------------------------------------

#EXIT_07ADA6:
|07ADA6| RTS

;===================================================================================================
; How long each tick of the tock lasts for cape.
;===================================================================================================
CapeSapTimers:
|07ADA7| db $04 ; normal
|07ADA8| db $08 ; 1/2 magic
|07ADA9| db $08 ; 1/4 magic

;===================================================================================================

LinkItem_Cape:
|07ADAA| LDA.b $55
|07ADAC| BNE .cape_active

|07ADAE| DEC.w $02E2
|07ADB1| BMI .delay_active

|07ADB3| LDA.b $67
|07ADB5| AND.b #$F0
|07ADB7| STA.b $67

|07ADB9| BRL HaltLinkWhenUsingItems

.delay_active
|07ADBC| STZ.w $02E2

|07ADBF| LDA.b $6C
|07ADC1| BNE EXIT_07ADA6

|07ADC3| JSR TestYButton
|07ADC6| BCC EXIT_07ADA6

;---------------------------------------------------------------------------------------------------

|07ADC8| LDA.b $3A
|07ADCA| AND.b #$BF
|07ADCC| STA.b $3A

|07ADCE| LDA.l $7EF36E
|07ADD2| BEQ CannotEquipCape

|07ADD4| STZ.w $0300

|07ADD7| LDA.b #$01
|07ADD9| STA.b $55

|07ADDB| LDA.l $7EF37B
|07ADDF| TAY

|07ADE0| LDA.w CapeSapTimers,Y
|07ADE3| STA.b $4C

|07ADE5| LDA.b #$14
|07ADE7| STA.w $02E2

|07ADEA| LDY.b #$04
|07ADEC| LDA.b #$23 ; ANCILLA 23
|07ADEE| JSL AncillaAdd_CapePoof

|07ADF2| LDA.b #$14 ; SFX2.14
|07ADF4| JSR PlayLinkSFX2Panned

|07ADF7| BRA .exit

;===================================================================================================

.cape_active
|07ADF9| LDA.b #$01
|07ADFB| STA.w $037B

|07ADFE| JSR HaltLinkWhenUsingItems

|07AE01| LDA.b $67
|07AE03| AND.b #$F0
|07AE05| STA.b $67

|07AE07| DEC.b $4C

|07AE09| LDA.b $4C
|07AE0B| BNE .dont_sap

|07AE0D| LDA.l $7EF37B
|07AE11| TAY

|07AE12| LDA.w CapeSapTimers,Y
|07AE15| STA.b $4C

|07AE17| LDA.l $7EF36E
|07AE1B| DEC A
|07AE1C| STA.l $7EF36E

|07AE20| BEQ ForciblyUnequipCape

.dont_sap
|07AE22| DEC.w $02E2
|07AE25| BPL .exit

|07AE27| STZ.w $02E2

|07AE2A| LDA.b $F4
|07AE2C| AND.b #$40
|07AE2E| BEQ .exit

;===================================================================================================

#ForciblyUnequipCape:
|07AE30| LDY.b #$04
|07AE32| LDA.b #$23 ; ANCILLA 23
|07AE34| JSL AncillaAdd_CapePoof

|07AE38| LDA.b #$15 ; SFX2.15
|07AE3A| JSR PlayLinkSFX2Panned

;---------------------------------------------------------------------------------------------------

#ForciblyUnequipCape_quietly:
|07AE3D| LDA.b #$20
|07AE3F| STA.w $02E2

|07AE42| STZ.w $037B
|07AE45| STZ.b $55
|07AE47| STZ.w $0360

.exit
|07AE4A| RTS

;===================================================================================================

CannotEquipCape:
|07AE4B| BRL DisplayNoMagicMessage

;===================================================================================================
; Seems to just be an extra guard, as deleting the routine doesn't let you move.
;===================================================================================================
HaltLinkWhenUsingItems:
; Allow movement if conveyor room like ice palace.
|07AE4E| LDA.b $AD
|07AE50| CMP.b #$02
|07AE52| BNE .skip

|07AE54| LDA.w $0322
|07AE57| AND.b #$03
|07AE59| CMP.b #$03
|07AE5B| BNE .skip

|07AE5D| STZ.b $30
|07AE5F| STZ.b $31

|07AE61| STZ.b $67

|07AE63| STZ.b $2A
|07AE65| STZ.b $2B

|07AE67| STZ.b $6B

.skip
|07AE69| LDA.w $02F5
|07AE6C| BEQ EXIT_07AE70

|07AE6E| STZ.b $67

;---------------------------------------------------------------------------------------------------

#EXIT_07AE70:
|07AE70| RTS

;===================================================================================================
; Handles the cape's passive magic drain effect
;===================================================================================================
HandleCapePassive_LiftCheck:
|07AE71| LDA.w $0308
|07AE74| AND.b #$80
|07AE76| BEQ EXIT_07AE70

;===================================================================================================

HandleCapePassive:
|07AE78| LDA.b $55
|07AE7A| BEQ EXIT_07AE70

|07AE7C| LDA.w $0304
|07AE7F| CMP.b #$13 ; are we using cape?
|07AE81| BNE EXIT_07AE70

|07AE83| CMP.w $0303
|07AE86| BNE .unequip

|07AE88| DEC.b $4C

|07AE8A| LDA.b $4C
|07AE8C| BNE .exit

|07AE8E| LDA.l $7EF37B
|07AE92| TAY

|07AE93| LDA.w CapeSapTimers,Y
|07AE96| STA.b $4C

; check if we have no magic, both before and after draining
|07AE98| LDA.l $7EF36E
|07AE9C| BEQ .exit

|07AE9E| DEC A
|07AE9F| STA.l $7EF36E
|07AEA3| BNE .exit ; magic left, so don't unequip

.unequip
|07AEA5| JSR ForciblyUnequipCape

.exit
|07AEA8| RTS

;===================================================================================================

LinkItem_CaneOfSomaria:
|07AEA9| BIT.b $3A
|07AEAB| BVS .in_action

|07AEAD| LDA.w $02F5
|07AEB0| BNE EXIT_07AE70

|07AEB2| LDA.b $6C
|07AEB4| BNE EXIT_07AE70

|07AEB6| JSR TestYButton
|07AEB9| BCC EXIT_07AE70

;---------------------------------------------------------------------------------------------------

|07AEBB| LDX.b #$04

.next_ancilla
|07AEBD| LDA.w $0C4A,X
|07AEC0| CMP.b #$2C ; ANCILLA 2C
|07AEC2| BEQ .found_block

|07AEC4| DEX
|07AEC5| BPL .next_ancilla

|07AEC7| LDX.b #$04
|07AEC9| JSR CheckMagicCost
|07AECC| BCC EXIT_07AE70

;---------------------------------------------------------------------------------------------------

.found_block
|07AECE| LDA.b #$01
|07AED0| STA.w $0350

|07AED3| LDY.b #$01
|07AED5| LDA.b #$2C ; ANCILLA 2C
|07AED7| JSL AncillaAdd_SomariaBlock

|07AEDB| LDA.w RodAndCaneAnimationTimer
|07AEDE| STA.b $3D

|07AEE0| STZ.b $2E
|07AEE2| STZ.w $0300
|07AEE5| STZ.w $0301

|07AEE8| LDA.b #$08
|07AEEA| TSB.w $037A

;---------------------------------------------------------------------------------------------------

.in_action
|07AEED| JSR HaltLinkWhenUsingItems

|07AEF0| LDA.b $67
|07AEF2| AND.b #$F0
|07AEF4| STA.b $67

|07AEF6| DEC.b $3D
|07AEF8| BPL EXIT_07AF23

|07AEFA| LDA.w $0300
|07AEFD| INC A
|07AEFE| STA.w $0300

|07AF01| TAX

|07AF02| LDA.w RodAndCaneAnimationTimer,X
|07AF05| STA.b $3D

|07AF07| CPX.b #$03
|07AF09| BNE EXIT_07AF23

;---------------------------------------------------------------------------------------------------

|07AF0B| STZ.b $5E
|07AF0D| STZ.w $0300

|07AF10| STZ.b $3D
|07AF12| STZ.w $0350

|07AF15| LDA.b $3A
|07AF17| AND.b #$BF
|07AF19| STA.b $3A

|07AF1B| LDA.w $037A
|07AF1E| AND.b #$F7
|07AF20| STA.w $037A

;---------------------------------------------------------------------------------------------------

#EXIT_07AF23:
|07AF23| RTS

;===================================================================================================

ByrnaAnimationTimers:
|07AF24| db 19
|07AF25| db  7
|07AF26| db 13

;===================================================================================================

LinkItem_CaneOfByrna:
|07AF27| JSR SearchForByrnaSpark
|07AF2A| BCS EXIT_07AF23

|07AF2C| BIT.b $3A
|07AF2E| BVS .in_action

|07AF30| LDA.b $6C
|07AF32| BNE EXIT_07AF23

|07AF34| JSR TestYButton
|07AF37| BCC EXIT_07AF23

;---------------------------------------------------------------------------------------------------

|07AF39| LDX.b #$08
|07AF3B| JSR CheckMagicCost
|07AF3E| BCC .lack_magic

|07AF40| LDY.b #$00
|07AF42| LDA.b #$30 ; ANCILLA 30
|07AF44| JSL AncillaAdd_CaneOfByrnaInitSpark

|07AF48| STZ.b $79

|07AF4A| LDA.w ByrnaAnimationTimers
|07AF4D| STA.b $3D

|07AF4F| STZ.w $030D
|07AF52| STZ.w $0300

|07AF55| LDA.b #$08
|07AF57| STA.w $037A

|07AF5A| LDA.b #$01
|07AF5C| TSB.b $50

|07AF5E| STZ.b $2E

;---------------------------------------------------------------------------------------------------

.in_action
|07AF60| JSR HaltLinkWhenUsingItems

|07AF63| LDA.b $67
|07AF65| AND.b #$F0
|07AF67| STA.b $67

|07AF69| DEC.b $3D
|07AF6B| BPL EXIT_07AF9D

|07AF6D| LDX.w $0300
|07AF70| INX
|07AF71| STX.w $0300

|07AF74| LDA.w ByrnaAnimationTimers,X
|07AF77| STA.b $3D

|07AF79| CPX.b #$01
|07AF7B| BNE .skip_sfx

|07AF7D| PHX

|07AF7E| LDA.b #$2A ; SFX3.2A
|07AF80| JSR PlayLinkSFX3Panned

|07AF83| PLX

.skip_sfx
|07AF84| CPX.b #$03
|07AF86| BNE EXIT_07AF9D

;---------------------------------------------------------------------------------------------------

.lack_magic
|07AF88| STZ.w $030D
|07AF8B| STZ.w $0300

|07AF8E| LDA.b $3A
|07AF90| AND.b #$80
|07AF92| STA.b $3A

|07AF94| STZ.w $037A

|07AF97| LDA.b $50
|07AF99| AND.b #$FE
|07AF9B| STA.b $50

;---------------------------------------------------------------------------------------------------

#EXIT_07AF9D:
|07AF9D| RTS

;===================================================================================================

SearchForByrnaSpark:
|07AF9E| LDA.w $037A
|07AFA1| AND.b #$08
|07AFA3| BNE .cane_not_equipped

|07AFA5| LDX.b #$04

.next
|07AFA7| LDA.w $0C4A,X
|07AFAA| CMP.b #$31 ; ANCILLA 31
|07AFAC| BEQ .found_spark

|07AFAE| DEX
|07AFAF| BPL .next

;---------------------------------------------------------------------------------------------------

.cane_not_equipped
|07AFB1| CLC

|07AFB2| RTS

.found_spark
|07AFB3| SEC

|07AFB4| RTS

;===================================================================================================

pool LinkItem_Net

.pose_id
|07AFB5| db $0B, $06, $07, $08, $01, $02, $03, $04, $05, $06 ; up
|07AFBF| db $01, $02, $03, $04, $05, $06, $07, $08, $01, $02 ; down
|07AFC9| db $09, $04, $05, $06, $07, $08, $01, $02, $03, $04 ; left
|07AFD3| db $0A, $08, $01, $02, $03, $04, $05, $06, $07, $08 ; right

.pose_offset
|07AFDD| db $00 ; up
|07AFDE| db $0A ; down
|07AFDF| db $14 ; left
|07AFE0| db $1E ; right

endpool

;===================================================================================================

LinkItem_Net:
|07AFE1| BIT.b $3A
|07AFE3| BVS .in_action

; in door
|07AFE5| LDA.b $6C
|07AFE7| BNE EXIT_07AF9D

|07AFE9| JSR TestYButton
|07AFEC| BCC EXIT_07AF9D

;---------------------------------------------------------------------------------------------------

|07AFEE| LDA.b $2F
|07AFF0| LSR A
|07AFF1| TAY

|07AFF2| LDX.w .pose_offset,Y
|07AFF5| LDA.w .pose_id,X
|07AFF8| STA.w $0300

|07AFFB| LDA.b #$03
|07AFFD| STA.b $3D

|07AFFF| STZ.w $030D

|07B002| LDA.b #$10
|07B004| STA.w $037A

|07B007| LDA.b #$01
|07B009| TSB.b $50

|07B00B| STZ.b $2E

|07B00D| LDA.b #$32 ; SFX2.32
|07B00F| JSR PlayLinkSFX2Panned

;---------------------------------------------------------------------------------------------------

.in_action
|07B012| JSR HaltLinkWhenUsingItems

|07B015| LDA.b $67
|07B017| AND.b #$F0
|07B019| STA.b $67

|07B01B| DEC.b $3D
|07B01D| BPL .exit

;---------------------------------------------------------------------------------------------------

|07B01F| LDX.w $030D
|07B022| INX
|07B023| STX.w $030D

|07B026| LDA.b #$03
|07B028| STA.b $3D

|07B02A| LDA.b $2F
|07B02C| LSR A
|07B02D| TAY

|07B02E| LDA.w .pose_offset,Y
|07B031| CLC
|07B032| ADC.w $030D
|07B035| TAY

|07B036| LDA.w .pose_id,Y
|07B039| STA.w $0300

|07B03C| CPX.b #$0A
|07B03E| BNE .exit

;---------------------------------------------------------------------------------------------------

|07B040| STZ.w $030D
|07B043| STZ.w $0300

|07B046| LDA.b $3A
|07B048| AND.b #$80
|07B04A| STA.b $3A

|07B04C| STZ.w $037A

|07B04F| LDA.b $50
|07B051| AND.b #$FE
|07B053| STA.b $50

|07B055| LDA.b #$80
|07B057| STA.b $44
|07B059| STA.b $45

.exit
|07B05B| RTS

;===================================================================================================

TestYButton:
|07B05C| BIT.b $3A
|07B05E| BVS .fail

|07B060| LDA.b $46
|07B062| BNE .fail

;===================================================================================================

#TestYButton_unfiltered:
|07B064| LDA.b $F4
|07B066| AND.b #$40
|07B068| BEQ .fail

|07B06A| TSB.b $3A

|07B06C| SEC

|07B06D| RTS

.fail
|07B06E| CLC

|07B06F| RTS

;===================================================================================================

ItemMagicCost:

.cost
|07B070| db $10, $08, $04 ; rod
|07B073| db $20, $10, $08 ; medallion
|07B076| db $08, $04, $02 ; powder
|07B079| db $08, $04, $02
|07B07C| db $08, $04, $02 ; somaria
|07B07F| db $10, $08, $04
|07B082| db $04, $02, $02 ; lamp
|07B085| db $08, $04, $02
|07B088| db $10, $08, $04 ; byrna

.offset
|07B08B| db $00 ; rod
|07B08C| db $03 ; medallion
|07B08D| db $06 ; powder
|07B08E| db $09
|07B08F| db $0C ; somaria
|07B090| db $0F
|07B091| db $12 ; lamp
|07B092| db $15
|07B093| db $18 ; byrna

;===================================================================================================

CheckMagicCost:
|07B094| STX.b $02

|07B096| LDA.w ItemMagicCost.offset,X
|07B099| CLC
|07B09A| ADC.l $7EF37B
|07B09E| TAX

|07B09F| LDA.w ItemMagicCost.cost,X
|07B0A2| STA.b $00

|07B0A4| LDA.l $7EF36E
|07B0A8| BEQ .not_enough_magic

|07B0AA| SEC
|07B0AB| SBC.b $00
|07B0AD| CMP.b #$80
|07B0AF| BCS .not_enough_magic

|07B0B1| STA.l $7EF36E

|07B0B5| SEC

|07B0B6| RTS

;---------------------------------------------------------------------------------------------------

.not_enough_magic
; unused doesn't get a message
|07B0B7| LDA.b $02
|07B0B9| CMP.b #$03
|07B0BB| BEQ .fail

;---------------------------------------------------------------------------------------------------

#DisplayNoMagicMessage:
|07B0BD| LDA.b #$3C ; SFX2.3C
|07B0BF| JSR PlayLinkSFX2Panned

|07B0C2| REP #$20

|07B0C4| LDA.w #$0079 ; MESSAGE 0079
|07B0C7| STA.w $1CF0

|07B0CA| SEP #$20

|07B0CC| JSL PrepAndDisplayMessage

.fail
|07B0D0| CLC

|07B0D1| RTS

;===================================================================================================

RefundMagic:
|07B0D2| PHB
|07B0D3| PHK
|07B0D4| PLB

|07B0D5| LDA.w ItemMagicCost.offset,X
|07B0D8| CLC
|07B0D9| ADC.l $7EF37B
|07B0DD| TAX

|07B0DE| LDA.w ItemMagicCost.cost,X
|07B0E1| STA.b $00

|07B0E3| LDA.l $7EF36E
|07B0E7| CLC
|07B0E8| ADC.b $00
|07B0EA| STA.l $7EF36E

|07B0EE| PLB

|07B0EF| RTL

;===================================================================================================

ResetBasicActions:
|07B0F0| STZ.w $030A

|07B0F3| STZ.b $3B

|07B0F5| STZ.w $0308
|07B0F8| STZ.w $0309
|07B0FB| STZ.w $0376

|07B0FE| LDA.b $50
|07B100| AND.b #$FE
|07B102| STA.b $50

|07B104| RTL

;===================================================================================================

PerformThrow:
|07B105| LDA.w $0314
|07B108| ORA.w $02EC
|07B10B| BNE .actually_lifting

|07B10D| JSR ResetSwordAndItemUsage

|07B110| STZ.b $3B

;---------------------------------------------------------------------------------------------------

|07B112| LDX.b #$0F

.next_sprite
|07B114| LDA.w $0DD0,X
|07B117| BEQ .free_spot

|07B119| DEX
|07B11A| BPL .next_sprite

|07B11C| BRA .bounce_to_exit

;---------------------------------------------------------------------------------------------------

.free_spot
|07B11E| LDA.w $0368
|07B121| CMP.b #$05
|07B123| BEQ .big_rock

|07B125| CMP.b #$06
|07B127| BNE .not_big_rock

.big_rock
|07B129| LDA.b #$01
|07B12B| STA.w $0300

|07B12E| BRA .continue_a

;---------------------------------------------------------------------------------------------------

.not_big_rock
|07B130| LDA.b $1B
|07B132| BEQ .outdoors

|07B134| JSL HandleUnderworldLiftables

|07B138| BRA .continue_b

.outdoors
|07B13A| JSL HandleOverworldLiftables

;---------------------------------------------------------------------------------------------------

.continue_b
|07B13E| LDX.b #$08

; TODO analyze
.next_a
|07B140| CMP.w LinkToss.liftable_tiles,X
|07B143| BEQ .matched

|07B145| DEX
|07B146| BPL .next_a

;---------------------------------------------------------------------------------------------------

.bounce_to_exit
|07B148| BRL EXIT_07B269

;---------------------------------------------------------------------------------------------------

.matched
|07B14B| LDA.b #$01
|07B14D| STA.w $0314

|07B150| TXA
|07B151| JSL SpawnThrowableTerrain

|07B155| ASL.b $F6
|07B157| LSR.b $F6

.actually_lifting
|07B159| STZ.w $0300

.continue_a
|07B15C| STZ.b $3A

|07B15E| LDA.w LinkToss.timer_a
|07B161| STA.w $030B

|07B164| LDA.b #$01
|07B166| STA.w $0309

|07B169| LDA.b #$80
|07B16B| STA.w $0308

|07B16E| STZ.w $030A

|07B171| LDA.b #$0C
|07B173| STA.b $5E

|07B175| STZ.b $2E

|07B177| LDA.b $67
|07B179| AND.b #$F0
|07B17B| STA.b $67

|07B17D| LDA.b #$01
|07B17F| TSB.b $50

;---------------------------------------------------------------------------------------------------

#EXIT_07B181:
|07B181| RTS

;===================================================================================================

pool LinkToss

.timer_a
|07B182| db $06, $07, $07

.timer_b
|07B185| db $05

; TODO unused?
|07B186| dw $000A, $0017, $0012, $0012
|07B18E| dw $0008, $0008, $FFFE, $0011

; TODO name each
.liftable_tiles
|07B196| db $54, $52, $50, $FF
|07B19A| db $51, $53, $55, $56
|07B19E| db $57

.heavy_lift_animation_timers
|07B19F| db   8,  24,   8,  24
|07B1A3| db   8,  32,   6,   8
|07B1A7| db  13,  13

.heavy_lift_animation_steps
|07B1A9| db $00, $01, $00, $01
|07B1AD| db $00, $01, $00, $01
|07B1B1| db $02, $03

endpool

;===================================================================================================

HandleDO_LiftCarryThrow:
|07B1B3| LDA.w $0308
|07B1B6| BEQ EXIT_07B181

|07B1B8| LDA.w $0309
|07B1BB| AND.b #$02
|07B1BD| BEQ .dont_toss

|07B1BF| LDA.w $030B
|07B1C2| CMP.b #$05
|07B1C4| BCC .dont_toss

|07B1C6| LDA.w LinkToss.timer_b
|07B1C9| STA.w $030B

.dont_toss
|07B1CC| LDA.w $0309
|07B1CF| BEQ .skip_collision

|07B1D1| JSR HaltLinkWhenUsingItems

.skip_collision
|07B1D4| LDA.w $0309
|07B1D7| AND.b #$01
|07B1D9| BEQ .dont_reset_anim

|07B1DB| STZ.b $2E
|07B1DD| STZ.b $2D

|07B1DF| LDA.b $67
|07B1E1| AND.b #$F0
|07B1E3| STA.b $67

.dont_reset_anim
|07B1E5| DEC.w $030B

|07B1E8| LDA.w $030B
|07B1EB| BNE EXIT_07B181

|07B1ED| LDA.w $0309
|07B1F0| AND.b #$02
|07B1F2| BEQ .dont_try_to_reset_strafe

|07B1F4| STZ.w $0308
|07B1F7| STZ.b $48
|07B1F9| STZ.b $5E

|07B1FB| LDA.b $5D
|07B1FD| CMP.b #$18 ; LINKSTATE 18
|07B1FF| BNE .reset_dirlock

|07B201| LDA.b #$00 ; LINKSTATE 00
|07B203| STA.b $5D

|07B205| BRL .reset_dirlock

.dont_try_to_reset_strafe
|07B208| LDA.w $0300
|07B20B| BEQ .not_doing_heavy_lift

|07B20D| INC A
|07B20E| CMP.b #$09
|07B210| BEQ .reset_dirlock

|07B212| STA.w $0300

|07B215| TAX

|07B216| LDA.w LinkToss.heavy_lift_animation_timers,X
|07B219| STA.w $030B

|07B21C| LDA.w LinkToss.heavy_lift_animation_steps,X
|07B21F| STA.w $030A

|07B222| CPX.b #$06
|07B224| BNE EXIT_07B269

|07B226| STZ.w $0B9C

|07B229| LDA.b $1B
|07B22B| BEQ .throwing_out_doors

|07B22D| JSL HandleUnderworldLiftables

|07B231| BRA .continue_indoors

.throwing_out_doors
|07B233| JSL HandleOverworldLiftables

;---------------------------------------------------------------------------------------------------

.continue_indoors
|07B237| AND.b #$0F
|07B239| INC A
|07B23A| PHA

|07B23B| LDA.b #$18 ; LINKSTATE 18
|07B23D| STA.b $5D

|07B23F| LDA.b #$01
|07B241| STA.w $0314

|07B244| PLA
|07B245| JSL SpawnThrowableTerrain

|07B249| ASL.b $F6
|07B24B| LSR.b $F6

|07B24D| BRA EXIT_07B269

;---------------------------------------------------------------------------------------------------

.not_doing_heavy_lift
|07B24F| LDX.w $030A
|07B252| INX

|07B253| LDA.w LinkToss.timer_a,X
|07B256| STA.w $030B

|07B259| STX.w $030A

|07B25C| CPX.b #$03
|07B25E| BNE EXIT_07B269

;---------------------------------------------------------------------------------------------------

.reset_dirlock
|07B260| STZ.w $0309

|07B263| LDA.b $50
|07B265| AND.b #$FE
|07B267| STA.b $50

;---------------------------------------------------------------------------------------------------

#EXIT_07B269:
|07B269| RTS

;===================================================================================================

PerformDash:
|07B26A| LDA.w $02F5
|07B26D| BNE EXIT_07B269

|07B26F| LDA.w $0314
|07B272| ORA.w $02EC
|07B275| BNE EXIT_07B269

|07B277| BIT.w $0308
|07B27A| BMI EXIT_07B269

|07B27C| LDA.b $1B
|07B27E| BNE .pointless_branch

.pointless_branch
|07B280| STZ.b $3B

|07B282| LDA.b #$1D
|07B284| STA.w $0374

|07B287| LDA.b #$40
|07B289| STA.w $02F1

|07B28C| LDA.b #$11 ; LINKSTATE 11
|07B28E| STA.b $5D

|07B290| LDA.b #$01
|07B292| STA.w $0372

|07B295| LDA.b $3A
|07B297| AND.b #$80
|07B299| STA.b $3A

|07B29B| STZ.w $0308
|07B29E| STZ.w $0301

|07B2A1| STZ.b $48
|07B2A3| STZ.b $6B

;---------------------------------------------------------------------------------------------------

|07B2A5| LDA.l $7EF3CC
|07B2A9| TAX

|07B2AA| CMP.w FollowerReactionToDashing,X
|07B2AD| BNE EXIT_07B2D6

|07B2AF| STZ.b $5E

|07B2B1| LDX.w $02CF

; Broken game writes to ROM (verified)
; Listed addresses are probably what was intended
|07B2B4| LDA.w $1A00,X
|07B2B7| STA.w $7EF3CD

|07B2BA| LDA.w $1A14,X
|07B2BD| STA.w $7EF3CE

|07B2C0| LDA.w $1A28,X
|07B2C3| STA.w $7EF3CF

|07B2C6| LDA.w $1A3C,X
|07B2C9| STA.w $7EF3D0

|07B2CC| LDA.b $EE
|07B2CE| STA.w $7EF3D2

|07B2D1| LDA.b #$40
|07B2D3| STA.w $02D2

;---------------------------------------------------------------------------------------------------

#EXIT_07B2D6:
|07B2D6| RTS

;===================================================================================================

PerformGrab:
|07B2D7| LDA.b $3A
|07B2D9| AND.b #$80
|07B2DB| BEQ .no_press

|07B2DD| LDA.b $3C
|07B2DF| CMP.b #$09
|07B2E1| BCS EXIT_07B2D6

.no_press
|07B2E3| LDA.b #$01
|07B2E5| STA.w $0376

|07B2E8| TSB.b $50

|07B2EA| STZ.b $2E
|07B2EC| STZ.w $030A

|07B2EF| LDA.w LinkStrain.timer
|07B2F2| STA.w $030B
|07B2F5| STZ.w $030D

|07B2F8| RTS

;===================================================================================================

LinkPull_Directions:
|07B2F9| db $04
|07B2FA| db $08
|07B2FB| db $01
|07B2FC| db $02

;===================================================================================================

LinkStrain:
.timer
|07B2FD| db   0,   5,   5,  12,   5,   5,  12

.char
|07B304| db $00, $01, $02, $03, $01, $02, $03

;===================================================================================================

HandleDO_PullObject:
|07B30B| LDA.b $67
|07B30D| AND.b #$F0
|07B30F| STA.b $67

|07B311| LDA.b $2F
|07B313| LSR A
|07B314| TAX

; check for udlr
|07B315| LDA.b $F0
|07B317| AND.b #$0F
|07B319| BEQ .no_dpad

|07B31B| AND.w LinkPull_Directions,X
|07B31E| BNE .tick_timer

.no_dpad
|07B320| LDX.b #$00
|07B322| BRA .set_strain_index

;---------------------------------------------------------------------------------------------------

.tick_timer
|07B324| DEC.w $030B
|07B327| BPL .timer_running

|07B329| LDX.w $030D
|07B32C| INX
|07B32D| CPX.b #$07
|07B32F| BNE .set_strain_index

|07B331| LDX.b #$01

.set_strain_index
|07B333| STX.w $030D

|07B336| LDA.w LinkStrain.char,X
|07B339| STA.w $030A

|07B33C| LDA.w LinkStrain.timer,X
|07B33F| STA.w $030B

;---------------------------------------------------------------------------------------------------

.timer_running
; check for A
|07B342| LDA.b $F2
|07B344| AND.b #$80
|07B346| BNE .exit

|07B348| STZ.w $030D
|07B34B| STZ.w $030A

|07B34E| STZ.w $0376

|07B351| STZ.b $3B

|07B353| LDA.b $50
|07B355| AND.b #$FE
|07B357| STA.b $50

.exit
|07B359| RTS

;===================================================================================================

PerformStatueDrag:
|07B35A| LDA.b #$02
|07B35C| STA.w $0376

|07B35F| LDA.b #$01
|07B361| TSB.b $50

|07B363| STZ.b $2E
|07B365| STZ.w $030A

|07B368| LDA.w LinkStrain.timer
|07B36B| STA.w $030B
|07B36E| STZ.w $030D

|07B371| RTS

;===================================================================================================

HandleDO_StatueDrag:
|07B372| LDA.b #$14
|07B374| STA.b $5E

|07B376| LDA.b $2F
|07B378| LSR A
|07B379| TAX

; check for udlr
|07B37A| LDA.b $F0
|07B37C| AND.b #$0F
|07B37E| BEQ .halted

|07B380| AND.w LinkPull_Directions,X
|07B383| BNE .dragging

;---------------------------------------------------------------------------------------------------

.halted
|07B385| STZ.b $67

|07B387| STZ.b $30
|07B389| STZ.b $31
|07B38B| STZ.b $2E

|07B38D| LDX.b #$00
|07B38F| BRA .set_strain_index

;---------------------------------------------------------------------------------------------------

.dragging
|07B391| STA.b $67

|07B393| DEC.w $030B
|07B396| BPL .delay

|07B398| LDX.w $030D
|07B39B| INX
|07B39C| CPX.b #$07
|07B39E| BNE .set_strain_index

|07B3A0| LDX.b #$01

;---------------------------------------------------------------------------------------------------

.set_strain_index
|07B3A2| STX.w $030D

|07B3A5| LDA.w LinkStrain.char,X
|07B3A8| STA.w $030A

|07B3AB| LDA.w LinkStrain.timer,X
|07B3AE| STA.w $030B

;---------------------------------------------------------------------------------------------------

.delay
; check for A
|07B3B1| LDA.b $F2
|07B3B3| AND.b #$80
|07B3B5| BNE .exit

|07B3B7| STZ.b $5E

|07B3B9| STZ.w $02FA

|07B3BC| STZ.w $030D
|07B3BF| STZ.w $030A

|07B3C2| STZ.w $0376

|07B3C5| STZ.b $3B

|07B3C7| LDA.b $50
|07B3C9| AND.b #$FE
|07B3CB| STA.b $50

.exit
|07B3CD| RTS

;===================================================================================================

PerformRupeePull:
|07B3CE| LDA.b $2F
|07B3D0| BNE EXIT_07B3F5

|07B3D2| JSL ResetLinkProperties_A

|07B3D6| LDA.b #$02
|07B3D8| STA.w $0376

|07B3DB| TSB.b $50

|07B3DD| STZ.b $2E
|07B3DF| STZ.w $030A

|07B3E2| LDA.w LinkStrain.timer
|07B3E5| STA.w $030B

|07B3E8| STZ.w $030D

|07B3EB| LDA.b #$1D ; LINKSTATE 1D
|07B3ED| STA.b $5D

|07B3EF| STZ.b $27
|07B3F1| STZ.b $28
|07B3F3| STZ.b $3A

;---------------------------------------------------------------------------------------------------

#EXIT_07B3F5:
|07B3F5| RTS

;===================================================================================================

pool LinkState_TreePull

.step
|07B3F6| db $00, $01, $02, $03
|07B3FA| db $04, $00, $01, $02
|07B3FE| db $03

endpool

;---------------------------------------------------------------------------------------------------

; TODO bad branch names
LinkState_TreePull:
|07B3FF| JSR CacheCameraPropertiesIfOutdoors

|07B402| LDA.b $4D
|07B404| BEQ .not_recoiling

|07B406| BRL HandleLinkFromState1D

;---------------------------------------------------------------------------------------------------

.not_recoiling
|07B409| LDA.w $0376
|07B40C| BEQ .strain_adjusted

|07B40E| LDA.b $3A
|07B410| BNE .continue

|07B412| BIT.b $F2
|07B414| BPL .no_a_press

|07B416| LDA.b $F0
|07B418| AND.b #$04
|07B41A| BEQ .dont_adjust_strain

|07B41C| STA.b $3A

|07B41E| LDA.b #$22 ; SFX2.22
|07B420| JSR PlayLinkSFX2Panned

|07B423| BRA .continue

;---------------------------------------------------------------------------------------------------

.no_a_press
|07B425| STZ.w $0376
|07B428| STZ.w $030D

|07B42B| LDA.b #$02
|07B42D| STA.w $030B
|07B430| STZ.w $030A

|07B433| STZ.b $50

|07B435| LDA.b #$00 ; LINKSTATE 00
|07B437| STA.b $5D

|07B439| BRA .reset_state

;---------------------------------------------------------------------------------------------------

.continue
|07B43B| DEC.w $030B
|07B43E| BPL .dont_adjust_strain

|07B440| INC.w $030D

|07B443| LDX.w $030D

|07B446| LDA.w LinkStrain.char,X
|07B449| STA.w $030A

|07B44C| LDA.w LinkStrain.timer,X
|07B44F| STA.w $030B

|07B452| CPX.b #$07
|07B454| BNE .dont_adjust_strain

;---------------------------------------------------------------------------------------------------

|07B456| STZ.w $0376
|07B459| STZ.w $030D

|07B45C| LDA.b #$02
|07B45E| STA.w $030B
|07B461| STZ.w $030A

|07B464| LDA.b #$01
|07B466| STA.w $0308
|07B469| STZ.w $0309

|07B46C| BRA .strain_adjusted

;---------------------------------------------------------------------------------------------------

.dont_adjust_strain
|07B46E| BRA .finish_up

;---------------------------------------------------------------------------------------------------

.strain_adjusted
|07B470| LDA.b $48
|07B472| AND.b #$09
|07B474| BNE .reset_direction_and_state

|07B476| LDA.w $030D
|07B479| CMP.b #$09
|07B47B| BNE .add_dust

; check for udlr
|07B47D| LDA.b $F4
|07B47F| AND.b #$0F
|07B481| BEQ .no_new_direction_press

;---------------------------------------------------------------------------------------------------

.reset_state
|07B483| LDA.b #$00 ; LINKSTATE 00
|07B485| STA.b $5D

|07B487| BRL LinkState_Default

;---------------------------------------------------------------------------------------------------

.add_dust
|07B48A| LDY.b #$00
|07B48C| LDA.b #$1E ; ANCILLA 1E
|07B48E| JSL AncillaAdd_DashDust_charging

|07B492| DEC.w $030B
|07B495| BPL .delay_reset

|07B497| INC.w $030D

|07B49A| LDX.w $030D

|07B49D| LDA.b #$02
|07B49F| STA.w $030B

|07B4A2| LDA.w .step,X
|07B4A5| STA.w $030A

|07B4A8| LDA.b #$30
|07B4AA| STA.b $27

|07B4AC| CPX.b #$09

|07B4AE| BNE .delay_reset

;---------------------------------------------------------------------------------------------------

.reset_direction_and_state
|07B4B0| STZ.b $2F
|07B4B2| STZ.w $0308

|07B4B5| STZ.b $50

|07B4B7| LDA.b #$00 ; LINKSTATE 00
|07B4B9| STA.b $5D

|07B4BB| BRA .exit

;---------------------------------------------------------------------------------------------------

.delay_reset
|07B4BD| JSR FlagWalkDirections

|07B4C0| LDA.b $67
|07B4C2| AND.b #$03
|07B4C4| BNE .is_horizontal

|07B4C6| STZ.b $28

.is_horizontal
|07B4C8| LDA.b $67
|07B4CA| AND.b #$0C
|07B4CC| BNE .finish_up

|07B4CE| STZ.b $27

;---------------------------------------------------------------------------------------------------

.finish_up
|07B4D0| JSL FindArbitraryLandingSpot

.no_new_direction_press
|07B4D4| JSR HandleLinkCardinalCollision
|07B4D7| JSR HandleIndoorCameraAndDoors

.exit
|07B4DA| RTS

;===================================================================================================

PerformRead:
|07B4DB| REP #$30

|07B4DD| LDA.b $1B
|07B4DF| AND.w #$00FF
|07B4E2| BEQ .overworld

.underworld
|07B4E4| LDA.b $A0
|07B4E6| ASL A
|07B4E7| TAY

|07B4E8| LDA.w SignTextUnderworld,Y
|07B4EB| BRA .set_message

;---------------------------------------------------------------------------------------------------

.overworld
|07B4ED| LDA.l $7EF3C5
|07B4F1| AND.w #$00FF
|07B4F4| CMP.w #$0002
|07B4F7| BCS .rain_over

|07B4F9| LDA.w #$0038 ; MESSAGE 0038
|07B4FC| BRA .set_message

;---------------------------------------------------------------------------------------------------

.rain_over
|07B4FE| LDA.b $8A
|07B500| ASL A
|07B501| TAY

|07B502| LDA.w SignTextOverworld,Y

.set_message
|07B505| STA.w $1CF0

|07B508| SEP #$30

|07B50A| JSL PrepAndDisplayMessage

|07B50E| STZ.b $3B

;---------------------------------------------------------------------------------------------------

#EXIT_07B510:
|07B510| RTS

;===================================================================================================

pool PerformOpenChest

.overflow_replacement
|07B511| db $FF ; FIGHTER SWORD
|07B512| db $FF ; MASTER SWORD
|07B513| db $FF ; TEMPERED SWORD
|07B514| db $FF ; BUTTER SWORD
|07B515| db $FF ; FIGHTER SHIELD
|07B516| db $FF ; FIRE SHIELD
|07B517| db $FF ; MIRROR SHIELD
|07B518| db $FF ; FIRE ROD
|07B519| db $FF ; ICE ROD
|07B51A| db $FF ; HAMMER
|07B51B| db $FF ; HOOKSHOT
|07B51C| db $FF ; BOW
|07B51D| db $44 ; BOOMERANG => 10 arrows (ITEMGET 44)
|07B51E| db $FF ; POWDER
|07B51F| db $FF ; BOTTLE REFILL (BEE)
|07B520| db $FF ; BOMBOS
|07B521| db $FF ; ETHER
|07B522| db $FF ; QUAKE
|07B523| db $35 ; LAMP => Blue rupee (ITEMGET 35)
|07B524| db $FF ; SHOVEL
|07B525| db $FF ; FLUTE
|07B526| db $FF ; SOMARIA
|07B527| db $FF ; BOTTLE
|07B528| db $FF ; HEART PIECE
|07B529| db $FF ; BYRNA
|07B52A| db $FF ; CAPE
|07B52B| db $FF ; MIRROR
|07B52C| db $FF ; GLOVE
|07B52D| db $FF ; MITTS
|07B52E| db $FF ; BOOK
|07B52F| db $FF ; FLIPPERS
|07B530| db $FF ; PEARL
|07B531| db $FF ; CRYSTAL
|07B532| db $FF ; NET
|07B533| db $FF ; BLUE MAIL
|07B534| db $FF ; RED MAIL
|07B535| db $FF ; SMALL KEY
|07B536| db $FF ; COMPASS
|07B537| db $FF ; HEART CONTAINER FROM 4/4
|07B538| db $FF ; BOMB
|07B539| db $FF ; 3 BOMBS
|07B53A| db $FF ; MUSHROOM
|07B53B| db $46 ; RED BOOMERANG => 300 rupees (ITEMGET 46)
|07B53C| db $FF ; FULL BOTTLE (RED)
|07B53D| db $FF ; FULL BOTTLE (GREEN)
|07B53E| db $FF ; FULL BOTTLE (BLUE)
|07B53F| db $FF ; POTION REFILL (RED)
|07B540| db $FF ; POTION REFILL (GREEN)
|07B541| db $FF ; POTION REFILL (BLUE)
|07B542| db $FF ; 10 BOMBS
|07B543| db $FF ; BIG KEY
|07B544| db $FF ; MAP
|07B545| db $FF ; 1 RUPEE
|07B546| db $FF ; 5 RUPEES
|07B547| db $FF ; 20 RUPEES
|07B548| db $FF ; GREEN PENDANT
|07B549| db $FF ; BLUE PENDANT
|07B54A| db $FF ; RED PENDANT
|07B54B| db $FF ; TOSSED BOW
|07B54C| db $FF ; SILVERS
|07B54D| db $FF ; FULL BOTTLE (BEE)
|07B54E| db $FF ; FULL BOTTLE (FAIRY)
|07B54F| db $FF ; BOSS HC
|07B550| db $FF ; SANC HC
|07B551| db $FF ; 100 RUPEES
|07B552| db $FF ; 50 RUPEES
|07B553| db $FF ; HEART
|07B554| db $FF ; ARROW
|07B555| db $FF ; 10 ARROWS
|07B556| db $FF ; SMALL MAGIC
|07B557| db $FF ; 300 RUPEES
|07B558| db $FF ; 20 RUPEES GREEN
|07B559| db $FF ; FULL BOTTLE (GOOD BEE)
|07B55A| db $FF ; TOSSED FIGHTER SWORD
|07B55B| db $FF ; FLUTE (ACTIVATED)
|07B55C| db $FF ; BOOTS

endpool

;---------------------------------------------------------------------------------------------------

PerformOpenChest:
|07B55D| LDA.b $2F
|07B55F| BNE EXIT_07B5A8

|07B561| LDA.w $02E9
|07B564| BNE EXIT_07B5A8

|07B566| LDA.b $4D
|07B568| BNE EXIT_07B5A8

|07B56A| STZ.b $3B

|07B56C| LDA.b $76
|07B56E| JSL OpenChestForItem
|07B572| BCC .failed_to_open

|07B574| LDA.b #$01
|07B576| STA.w $02E9

; $0C contains the item receipt ID
|07B579| LDY.b $0C
|07B57B| BMI .failed_to_open

|07B57D| LDA.w .overflow_replacement,Y
|07B580| STA.b $03

|07B582| CMP.b #$FF
|07B584| BEQ .no_replacement

|07B586| TYA
|07B587| ASL A
|07B588| TAX

|07B589| LDA.l AncillaAdd_ItemReceipt.sram_write+0,X
|07B58D| STA.b $00

|07B58F| LDA.l AncillaAdd_ItemReceipt.sram_write+1,X
|07B593| STA.b $01

|07B595| LDA.b #$7E
|07B597| STA.b $02

|07B599| LDA.b [$00]
|07B59B| BEQ .no_replacement

|07B59D| LDY.b $03

.no_replacement
|07B59F| JSL GrantItemReceipt

|07B5A3| BRA EXIT_07B5A8

.failed_to_open
|07B5A5| STZ.w $02E9

;---------------------------------------------------------------------------------------------------

#EXIT_07B5A8:
|07B5A8| RTS

;===================================================================================================
; Looks for a new A press.
;===================================================================================================
TestAButton:
|07B5A9| LDA.b $3B ; This flags A already being down
|07B5AB| AND.b #$80
|07B5AD| BNE .fail

|07B5AF| LDA.b $46 ; no presses during recoil
|07B5B1| BNE .fail

|07B5B3| LDA.b $F6 ; check controller input
|07B5B5| AND.b #$80
|07B5B7| BEQ .fail

|07B5B9| TSB.b $3B

|07B5BB| SEC

|07B5BC| RTS

.fail
|07B5BD| CLC

|07B5BE| RTS

;===================================================================================================

HandleTossing:
|07B5BF| LDA.b $3B
|07B5C1| AND.b #$80
|07B5C3| BEQ .unpressed

|07B5C5| LDA.b $F6
|07B5C7| AND.b #$80
|07B5C9| BEQ .unpressed

|07B5CB| LDA.w $0309
|07B5CE| AND.b #$01
|07B5D0| BNE .unpressed

|07B5D2| STZ.w $030D ; reset grab
|07B5D5| STZ.w $030E
|07B5D8| STZ.w $030A

|07B5DB| STZ.b $3B

|07B5DD| LDA.b $50
|07B5DF| AND.b #$FE
|07B5E1| STA.b $50

|07B5E3| LDA.w $0305 ; [WTF] WHY IS THIS HERE?
|07B5E6| CMP.b #$01
|07B5E8| BNE .leave_windows

|07B5EA| STZ.b $1E
|07B5EC| STZ.b $1F

.leave_windows
|07B5EE| SEC

|07B5EF| RTS

.unpressed
|07B5F0| CLC

|07B5F1| RTS

;===================================================================================================

UNREACHABLE_07B5F2:
|07B5F2| LDA.b $F2
|07B5F4| AND.b #$10
|07B5F6| BNE .r_held

|07B5F8| STZ.b $3B

.r_held
|07B5FA| BIT.b $F0
|07B5FC| BMI .a_held

|07B5FE| LDA.b $3A
|07B600| AND.b #$DF
|07B602| STA.b $3A

.a_held
; debug flag only referenced here
|07B604| LDA.b $3B
|07B606| AND.b #$10
|07B608| STA.b $00

|07B60A| LDA.b $3A
|07B60C| AND.b #$A0
|07B60E| ORA.b $00
|07B610| AND.b #$B0
|07B612| CMP.b #$30
|07B614| BEQ .fail

|07B616| CMP.b #$90
|07B618| BEQ .fail

|07B61A| LDA.b $F2
|07B61C| AND.b #$10
|07B61E| BEQ .fail

|07B620| STA.b $00

|07B622| LDA.b $F0
|07B624| AND.b #$80
|07B626| BEQ .fail

|07B628| LSR A
|07B629| LSR A
|07B62A| STA.b $3A

|07B62C| LDA.b $00
|07B62E| TSB.b $3B

|07B630| SEC

|07B631| RTS

.fail
|07B632| CLC

|07B633| RTS

;===================================================================================================

StoppedFlags:
|07B634| db $07
|07B635| db $0B
|07B636| db $0D
|07B637| db $0E

;---------------------------------------------------------------------------------------------------

HandleLinkDiagonalCollision:
|07B638| JSR CheckIfRoomNeedsDoubleLayerCheck
|07B63B| BCC .no_layer_change

|07B63D| JSR FlagObstructions
|07B640| JSR CreateVelocityFromMovingBackground

.no_layer_change
|07B643| LDA.b $67
|07B645| AND.b #$0F
|07B647| STA.b $67

;===================================================================================================

FlagObstructions:
|07B649| LDA.b #$0F
|07B64B| STA.b $42
|07B64D| STA.b $43

|07B64F| STZ.b $6A

|07B651| LDA.b $67
|07B653| AND.b #$0C
|07B655| BNE FlagObstructions_vertical_component

|07B657| BRL UpdateDiagonalMovementFlags

;===================================================================================================

FlagObstructions_vertical_component:
|07B65A| INC.b $6A

|07B65C| LDY.b #$00

|07B65E| AND.b #$08
|07B660| BNE .walking_up

|07B662| LDY.b #$02

.walking_up
|07B664| TYA
|07B665| LSR A
|07B666| STA.b $66

|07B668| JSR TileDetectOnMovement_VerticalSlopes

|07B66B| LDA.b $0E
|07B66D| AND.b #$30
|07B66F| BEQ .no_obstruction

|07B671| LDA.b $62
|07B673| AND.b #$02
|07B675| BNE .no_obstruction

; checks doors
|07B677| LDA.b $0E
|07B679| AND.b #$30
|07B67B| LSR A ; /16
|07B67C| LSR A
|07B67D| LSR A
|07B67E| LSR A
|07B67F| AND.b $67
|07B681| BNE .no_obstruction

|07B683| LDY.b #$02

|07B685| LDA.b $67
|07B687| AND.b #$03
|07B689| BEQ .no_obstruction

; moving left
|07B68B| AND.b #$02
|07B68D| BNE .going_diagonal

; moving right
|07B68F| LDY.b #$03
|07B691| BRA .going_diagonal

.no_obstruction
|07B693| LDA.w $046C
|07B696| BEQ .no_layer_junk

|07B698| LDA.b $0E
|07B69A| AND.b #$03
|07B69C| BNE .dont_use_last_direction_yet
|07B69E| BRA FlagObstructions_horizontal_component

.no_layer_junk
|07B6A0| LDA.b $4D
|07B6A2| BEQ .dont_use_last_direction_yet

|07B6A4| LDA.b $0C
|07B6A6| AND.b #$03
|07B6A8| BEQ .dont_use_last_direction_yet
|07B6AA| BRA .flag_based_on_last_direction

.dont_use_last_direction_yet
|07B6AC| LDA.b $0E
|07B6AE| AND.b #$03
|07B6B0| BEQ FlagObstructions_horizontal_component

|07B6B2| STZ.b $6B

|07B6B4| LDA.w $034A
|07B6B7| BEQ .flag_based_on_last_direction

|07B6B9| LDA.w $02E8
|07B6BC| AND.b #$03
|07B6BE| BNE .flag_based_on_last_direction

|07B6C0| LDA.b $67
|07B6C2| AND.b #$03
|07B6C4| BEQ .flag_based_on_last_direction

|07B6C6| STZ.w $033C
|07B6C9| STZ.w $033D
|07B6CC| STZ.w $032F
|07B6CF| STZ.w $0330
|07B6D2| STZ.w $032B
|07B6D5| STZ.w $032C
|07B6D8| STZ.w $0334
|07B6DB| STZ.w $0335

.flag_based_on_last_direction
|07B6DE| LDA.b #$01
|07B6E0| STA.w $0302

|07B6E3| LDY.b $66

.going_diagonal
|07B6E5| LDA.w StoppedFlags,Y
|07B6E8| STA.b $42

;===================================================================================================

FlagObstructions_horizontal_component:
|07B6EA| LDA.b $67
|07B6EC| AND.b #$03
|07B6EE| BNE .moving_horizontally

|07B6F0| BRL UpdateDiagonalMovementFlags

.moving_horizontally
|07B6F3| INC.b $6A

|07B6F5| LDY.b #$04
|07B6F7| AND.b #$02
|07B6F9| BNE .moving_left

|07B6FB| LDY.b #$06

.moving_left
|07B6FD| TYA
|07B6FE| LSR A
|07B6FF| STA.b $66

|07B701| JSR TileDetectOnMovement_HorizontalSlopes

|07B704| LDA.b $0E
|07B706| AND.b #$30
|07B708| BEQ .no_obstruction

|07B70A| LDA.b $62
|07B70C| AND.b #$02
|07B70E| BEQ .no_obstruction

; checks doors
|07B710| LDA.b $0E
|07B712| AND.b #$30
|07B714| LSR A
|07B715| LSR A
|07B716| AND.b $67
|07B718| BNE .no_obstruction

|07B71A| LDY.b #$00

|07B71C| LDA.b $67
|07B71E| AND.b #$0C
|07B720| BEQ .no_obstruction

; moving up
|07B722| AND.b #$08
|07B724| BNE .going_diagonal

; moving down
|07B726| LDY.b #$01
|07B728| BRA .going_diagonal

.no_obstruction
|07B72A| LDA.w $046C
|07B72D| BEQ .no_layer_junk

|07B72F| LDA.b $0E
|07B731| AND.b #$03
|07B733| BNE .dont_use_last_direction_yet
|07B735| BRA .adjust_move_flags_with_obstruction

.no_layer_junk
|07B737| LDA.b $4D
|07B739| BEQ .dont_use_last_direction_yet

|07B73B| LDA.b $0C
|07B73D| AND.b #$03
|07B73F| BEQ .dont_use_last_direction_yet
|07B741| BRA .flag_based_on_last_direction

.dont_use_last_direction_yet
|07B743| LDA.b $0E
|07B745| AND.b #$03
|07B747| BEQ .adjust_move_flags_with_obstruction

|07B749| STZ.b $6B

|07B74B| LDA.w $034A
|07B74E| BEQ .flag_based_on_last_direction

|07B750| LDA.w $02E8
|07B753| AND.b #$03
|07B755| BNE .flag_based_on_last_direction

|07B757| LDA.b $67
|07B759| AND.b #$0C
|07B75B| BEQ .flag_based_on_last_direction

|07B75D| STZ.w $033E
|07B760| STZ.w $033F
|07B763| STZ.w $0331
|07B766| STZ.w $0332
|07B769| STZ.w $032D
|07B76C| STZ.w $032E
|07B76F| STZ.w $0336
|07B772| STZ.w $0337

.flag_based_on_last_direction
|07B775| LDA.b #$01
|07B777| STA.w $0302

|07B77A| LDY.b $66

.going_diagonal
|07B77C| LDA.w StoppedFlags,Y
|07B77F| STA.b $43

.adjust_move_flags_with_obstruction
|07B781| LDA.b $67
|07B783| AND.b $42
|07B785| AND.b $43
|07B787| STA.b $67

;===================================================================================================

UpdateDiagonalMovementFlags:
|07B789| LDA.b $67
|07B78B| AND.b #$0F
|07B78D| BEQ .dont_update_direction

|07B78F| LDA.b $6B
|07B791| AND.b #$0F
|07B793| BEQ .dont_update_direction

|07B795| STA.b $67

.dont_update_direction
|07B797| LDA.b $6A

|07B799| STZ.b $6A

|07B79B| CMP.b #$02
|07B79D| BNE .exit

|07B79F| LDY.b #$01

|07B7A1| LDA.b $2F
|07B7A3| AND.b #$04
|07B7A5| BEQ .not_facing_left

|07B7A7| LDY.b #$02

.not_facing_left
|07B7A9| STY.b $6A

.exit
|07B7AB| RTS

;===================================================================================================

AutoMove49Directions:
|07B7AC| db $08
|07B7AD| db $04
|07B7AE| db $02
|07B7AF| db $01

;===================================================================================================

HandleLinkCardinalCollision:
|07B7B0| STZ.b $6E
|07B7B2| STZ.b $38

|07B7B4| LDA.b $6B
|07B7B6| AND.b #$30
|07B7B8| BNE .no_kickback

|07B7BA| JSR HandleLinkDiagonalKickback

|07B7BD| LDA.b $6D
|07B7BF| BEQ .no_kickback

|07B7C1| BRL CheckCollisionSingleLayerRun

;---------------------------------------------------------------------------------------------------

.no_kickback
|07B7C4| JSR CheckIfRoomNeedsDoubleLayerCheck
|07B7C7| BCC CheckCollisionSingleLayerRun

|07B7C9| LDA.w $046C
|07B7CC| CMP.b #$02
|07B7CE| BCC .run_vertical_first

|07B7D0| LDA.w $046C
|07B7D3| CMP.b #$03
|07B7D5| BEQ .run_vertical_first

|07B7D7| LDA.b #$02
|07B7D9| STA.w $0315

|07B7DC| REP #$20

|07B7DE| JSR TileDetect_BigArea

|07B7E1| SEP #$20

|07B7E3| LDA.b $0E
|07B7E5| STA.w $0316
|07B7E8| BEQ .run_vertical_first

|07B7EA| LDA.b $30
|07B7EC| STA.b $00

|07B7EE| CLC
|07B7EF| ADC.w $0310
|07B7F2| STA.b $30

|07B7F4| LDA.b $31
|07B7F6| STA.b $01

|07B7F8| CLC
|07B7F9| ADC.w $0312
|07B7FC| STA.b $31

|07B7FE| LDA.b $0E
|07B800| CMP.b #$0C
|07B802| BEQ .run_vertical_first

|07B804| CMP.b #$03
|07B806| BEQ .run_vertical_first

|07B808| CMP.b #$0A
|07B80A| BEQ .run_horizontal_first

|07B80C| CMP.b #$05
|07B80E| BEQ .run_horizontal_first

|07B810| AND.b #$0C
|07B812| BNE .detected_on_axis

|07B814| LDA.b $0E
|07B816| AND.b #$03
|07B818| BNE .detected_on_axis

|07B81A| BRA .run_vertical_first

.detected_on_axis
|07B81C| LDA.b $00
|07B81E| BNE .run_horizontal_first

|07B820| LDA.b $01
|07B822| BEQ .run_vertical_first

|07B824| LDA.w $0310
|07B827| BPL .run_horizontal_first

.run_vertical_first
|07B829| JSR RunSlopeCollisionChecks_VerticalFirst
|07B82C| BRA .continue

.run_horizontal_first
|07B82E| JSR RunSlopeCollisionChecks_HorizontalFirst

.continue
|07B831| JSR CreateVelocityFromMovingBackground

;===================================================================================================

CheckCollisionSingleLayerRun:
|07B834| LDA.w $046C
|07B837| CMP.b #$02
|07B839| BEQ CheckCollisionWithMovingWallLayer

|07B83B| CMP.b #$03
|07B83D| BEQ FlagAndRunSlopeChecks_HorizontalFirst

|07B83F| CMP.b #$04
|07B841| BEQ FlagAndRunSlopeChecks_VerticalFirst

|07B843| LDA.b $30
|07B845| ORA.b $31
|07B847| BNE FlagAndRunSlopeChecks_VerticalFirst

|07B849| LDA.b $5D
|07B84B| CMP.b #$13 ; LINKSTATE 13
|07B84D| BEQ .skip_pit_stuff

|07B84F| CMP.b #$08 ; LINKSTATE 08
|07B851| BEQ .skip_pit_stuff

|07B853| CMP.b #$09 ; LINKSTATE 09
|07B855| BEQ .skip_pit_stuff

|07B857| CMP.b #$0A ; LINKSTATE 0A
|07B859| BEQ .skip_pit_stuff

|07B85B| CMP.b #$03 ; LINKSTATE 03
|07B85D| BEQ .skip_pit_stuff

|07B85F| JSR TileDetect_BigArea

|07B862| LDA.b $59
|07B864| AND.b #$0F
|07B866| BEQ .skip_pit_stuff

|07B868| LDA.b #$01 ; LINKSTATE 01
|07B86A| STA.b $5D

|07B86C| LDA.w $0372
|07B86F| BNE .skip_pit_stuff

|07B871| LDA.b #$04
|07B873| STA.b $5E

.skip_pit_stuff
|07B875| BRL CalculateSaveFlagVelocity

;===================================================================================================

CheckCollisionWithMovingWallLayer:
|07B878| JSR TileDetect_BigArea

|07B87B| LDA.b $0E
|07B87D| ORA.w $0316
|07B880| CMP.b #$0F
|07B882| BNE FlagAndRunSlopeChecks_VerticalFirst

; !WEIRD Moving walls make you invulnerable for some reason
|07B884| LDA.w $031F
|07B887| BNE .actively_blinking

|07B889| LDA.b #$3A
|07B88B| STA.w $031F

.actively_blinking
|07B88E| LDA.b $67
|07B890| BNE FlagAndRunSlopeChecks_VerticalFirst

|07B892| LDA.w $0310
|07B895| BEQ .no_moving_floor_y

|07B897| LDA.b $30
|07B899| EOR.b #$FF
|07B89B| INC A
|07B89C| STA.b $30

.no_moving_floor_y
|07B89E| LDA.w $0312
|07B8A1| BEQ FlagAndRunSlopeChecks_VerticalFirst

|07B8A3| LDA.b $31
|07B8A5| EOR.b #$FF
|07B8A7| INC A
|07B8A8| STA.b $31

;===================================================================================================

FlagAndRunSlopeChecks_VerticalFirst:
|07B8AA| LDA.b #$01
|07B8AC| STA.w $0315

|07B8AF| JSR RunSlopeCollisionChecks_VerticalFirst

|07B8B2| BRA CalculateSaveFlagVelocity

;===================================================================================================

FlagAndRunSlopeChecks_HorizontalFirst:
|07B8B4| LDA.b #$01
|07B8B6| STA.w $0315

|07B8B9| JSR RunSlopeCollisionChecks_HorizontalFirst

;===================================================================================================

CalculateSaveFlagVelocity:
|07B8BC| LDY.b #$00
|07B8BE| JSR TileDetect_MainHandler

|07B8C1| LDA.b $6A
|07B8C3| BEQ .not_moving_diagonal

|07B8C5| STZ.b $6B

.not_moving_diagonal
|07B8C7| LDA.b $5D
|07B8C9| CMP.b #$0B ; LINKSTATE 0B
|07B8CB| BEQ .no_y_movement

|07B8CD| LDY.b #$08

|07B8CF| LDA.b $20
|07B8D1| SEC
|07B8D2| SBC.b $3E
|07B8D4| STA.b $30

|07B8D6| BEQ .no_y_movement
|07B8D8| BMI .negative_y_movement

|07B8DA| LDY.b #$04

.negative_y_movement
|07B8DC| LDA.b $67
|07B8DE| AND.b #$03
|07B8E0| STA.b $67

|07B8E2| TYA
|07B8E3| TSB.b $67

.no_y_movement
|07B8E5| LDY.b #$02

|07B8E7| LDA.b $22
|07B8E9| SEC
|07B8EA| SBC.b $3F
|07B8EC| STA.b $31

|07B8EE| BEQ .no_x_movement
|07B8F0| BMI .negative_x_movement

|07B8F2| LDY.b #$01

.negative_x_movement
|07B8F4| LDA.b $67
|07B8F6| AND.b #$0C
|07B8F8| STA.b $67

|07B8FA| TYA
|07B8FB| TSB.b $67

.no_x_movement
|07B8FD| LDA.b $1B
|07B8FF| BEQ .exit

|07B901| LDA.w $046C
|07B904| CMP.b #$04
|07B906| BNE .exit

|07B908| LDA.b $5D
|07B90A| CMP.b #$04 ; LINKSTATE 04
|07B90C| BNE .exit

|07B90E| LDY.b #$F7

|07B910| LDA.w $0310
|07B913| BEQ .no_floor_y_velocity
|07B915| BMI .negative_floor_y_velocity

|07B917| LDY.b #$FB

.negative_floor_y_velocity
|07B919| EOR.b #$FF
|07B91B| INC A
|07B91C| CLC
|07B91D| ADC.b $30
|07B91F| BNE .no_floor_y_velocity

|07B921| TYA
|07B922| AND.b $67
|07B924| STA.b $67

.no_floor_y_velocity
|07B926| LDY.b #$FD

|07B928| LDA.w $0312
|07B92B| BEQ .exit
|07B92D| BMI .negative_floor_x_velocity

|07B92F| LDY.b #$FE

.negative_floor_x_velocity
|07B931| EOR.b #$FF
|07B933| INC A
|07B934| CLC
|07B935| ADC.b $31
|07B937| BNE .exit

|07B939| TYA
|07B93A| AND.b $67
|07B93C| STA.b $67

.exit
|07B93E| RTS

;===================================================================================================

RunSlopeCollisionChecks_VerticalFirst:
|07B93F| LDA.b $6B
|07B941| AND.b #$20
|07B943| BNE .moving_horizontally_into_slope

|07B945| JSR StartMovementCollisionChecks_Vertical

.moving_horizontally_into_slope
|07B948| LDA.b $6B
|07B94A| AND.b #$10
|07B94C| BNE .exit

|07B94E| JSR StartMovementCollisionChecks_Horizontal

.exit
|07B951| RTS

;===================================================================================================

RunSlopeCollisionChecks_HorizontalFirst:
|07B952| LDA.b $6B
|07B954| AND.b #$10
|07B956| BNE .moving_vertically_into_slope

|07B958| JSR StartMovementCollisionChecks_Horizontal

.moving_vertically_into_slope
|07B95B| LDA.b $6B
|07B95D| AND.b #$20
|07B95F| BNE .exit

|07B961| JSR StartMovementCollisionChecks_Vertical

.exit
|07B964| RTS

;===================================================================================================

CheckIfRoomNeedsDoubleLayerCheck:
|07B965| LDA.w $046C
|07B968| BEQ .no_layer_change

|07B96A| CMP.b #$04
|07B96C| BEQ .no_layer_change

|07B96E| CMP.b #$02
|07B970| BCC .change_layer

|07B972| CMP.b #$03
|07B974| BNE .useless ; [USELESS] 0-length branch

.useless
|07B976| REP #$20

|07B978| LDA.b $E6
|07B97A| SEC
|07B97B| SBC.b $E8

|07B97D| CLC
|07B97E| ADC.b $20
|07B980| STA.b $20
|07B982| STA.w $0318

|07B985| LDA.b $E0
|07B987| SEC
|07B988| SBC.b $E2

|07B98A| CLC
|07B98B| ADC.b $22
|07B98D| STA.b $22
|07B98F| STA.w $031A

|07B992| SEP #$20

.change_layer
|07B994| LDA.b #$01
|07B996| STA.b $EE

|07B998| SEC

|07B999| RTS

.no_layer_change
|07B99A| CLC

|07B99B| RTS

;===================================================================================================

CreateVelocityFromMovingBackground:
|07B99C| LDA.w $046C
|07B99F| CMP.b #$01
|07B9A1| BEQ .reset_and_exit

|07B9A3| REP #$20

|07B9A5| LDA.b $20
|07B9A7| SEC
|07B9A8| SBC.w $0318
|07B9AB| STA.b $00

|07B9AD| LDA.b $22
|07B9AF| SEC
|07B9B0| SBC.w $031A
|07B9B3| STA.b $02

|07B9B5| LDA.b $E8
|07B9B7| SEC
|07B9B8| SBC.b $E6
|07B9BA| CLC
|07B9BB| ADC.b $20
|07B9BD| STA.b $20

|07B9BF| LDA.b $E2
|07B9C1| SEC
|07B9C2| SBC.b $E0
|07B9C4| CLC
|07B9C5| ADC.b $22
|07B9C7| STA.b $22

|07B9C9| SEP #$20

|07B9CB| LDA.b $67
|07B9CD| BEQ .reset_and_exit

|07B9CF| LDA.b $30
|07B9D1| CLC
|07B9D2| ADC.b $00
|07B9D4| STA.b $30

|07B9D6| LDA.b $31
|07B9D8| CLC
|07B9D9| ADC.b $02
|07B9DB| STA.b $31

.reset_and_exit
|07B9DD| STZ.b $EE

|07B9DF| RTS

;===================================================================================================

RupeeTileOffset_y:
|07B9E0| dw $0008 ; up
|07B9E2| dw $0018 ; down
|07B9E4| dw $0010 ; left
|07B9E6| dw $0010 ; right

RupeeTileOffset_x:
|07B9E8| dw $0008 ; up
|07B9EA| dw $0008 ; down
|07B9EC| dw $0000 ; left
|07B9EE| dw $000F ; right

;===================================================================================================

SpikeDamageValues:
|07B9F0| db $08 ; green
|07B9F1| db $08 ; blue
|07B9F2| db $08 ; red

;===================================================================================================

StartMovementCollisionChecks_Vertical:
|07B9F3| LDA.b $30
|07B9F5| BNE .moving_on_axis

|07B9F7| RTS

.moving_on_axis
|07B9F8| LDA.b $6C
|07B9FA| CMP.b #$01
|07B9FC| BNE .not_in_vertical_door

|07B9FE| LDY.b #$00

|07BA00| LDA.b $20
|07BA02| CMP.b #$80
|07BA04| BCC .negative_y
|07BA06| BRA .continue_y

.not_in_vertical_door
|07BA08| LDY.b #$00

|07BA0A| LDA.b $30
|07BA0C| BMI .negative_y

.continue_y
|07BA0E| LDY.b #$02

.negative_y
|07BA10| TYA
|07BA11| LSR A
|07BA12| STA.b $66

|07BA14| JSR TileDetectOnMovement_Vertical

|07BA17| LDA.b $1B
|07BA19| BNE StartMovementCollisionChecks_Vertical_HandleIndoors

|07BA1B| BRL StartMovementCollisionChecks_Vertical_HandleOutdoors

;===================================================================================================

StartMovementCollisionChecks_Vertical_HandleIndoors:
|07BA1E| LDA.w $0308
|07BA21| BMI .carrying_something

|07BA23| LDA.b $46
|07BA25| BEQ .not_taking_damage

.carrying_something
|07BA27| LDA.b $0E
|07BA29| LSR A
|07BA2A| LSR A
|07BA2B| LSR A
|07BA2C| LSR A
|07BA2D| TSB.b $0E

|07BA2F| BRL ResetDoorPropsVertical_door_pre

;---------------------------------------------------------------------------------------------------

.not_taking_damage
|07BA32| LDA.b $6C
|07BA34| CMP.b #$02
|07BA36| BNE HandleAutoDoorFlagging_Vertical

|07BA38| LDA.b $6A
|07BA3A| BNE .not_moving_diagonally

|07BA3C| LDA.w $046C
|07BA3F| CMP.b #$03
|07BA41| BNE .no_moving_floor

|07BA43| LDA.b $EE
|07BA45| BEQ .no_moving_floor

|07BA47| BRL CheckForMasksRupeesConveyors_Vertical

.no_moving_floor
|07BA4A| JSR AddInLinksYVelocity
|07BA4D| BRL ChangeAxisOfPerpendicularDoorMovement_Vertical

.not_moving_diagonally
|07BA50| LDA.b $62
|07BA52| BEQ HandleAutoDoorFlagging_Vertical

|07BA54| JSR AddInLinksYVelocity

|07BA57| BRA ResetDoorPropsVertical

;===================================================================================================

HandleAutoDoorFlagging_Vertical:
|07BA59| LDA.b $0E
|07BA5B| AND.b #$70
|07BA5D| BEQ ResetDoorPropsVertical_door_pre

|07BA5F| STZ.b $05

|07BA61| LDA.b $0F
|07BA63| AND.b #$07
|07BA65| BEQ .no_auto_move

|07BA67| LDY.b #$00

|07BA69| LDA.b $30
|07BA6B| BMI .negative_y

|07BA6D| LDY.b #$01

.negative_y
|07BA6F| LDA.w AutoMove49Directions,Y
|07BA72| STA.b $49

;---------------------------------------------------------------------------------------------------

.no_auto_move
|07BA74| LDA.b #$01
|07BA76| STA.b $6C

|07BA78| STZ.w $03F3

|07BA7B| LDA.b $0E
|07BA7D| AND.b #$70
|07BA7F| CMP.b #$70
|07BA81| BEQ .dont_snap

|07BA83| LDA.b $0E
|07BA85| AND.b #$05
|07BA87| BNE .handle_falling_too

|07BA89| LDA.b $0E
|07BA8B| AND.b #$20
|07BA8D| BNE .dont_snap

|07BA8F| BRA ResetDoorPropsVertical_door_pre

.handle_falling_too
|07BA91| STZ.b $6B

|07BA93| JSR AddInLinksYVelocityFalling
|07BA96| JSR CalculateSnapScratch_Vertical

|07BA99| STZ.b $6C

|07BA9B| LDA.b $0E
|07BA9D| AND.b #$20
|07BA9F| BEQ .dont_snap

|07BAA1| LDA.b $0E
|07BAA3| AND.b #$01
|07BAA5| BNE .dont_snap

|07BAA7| LDA.b $22
|07BAA9| AND.b #$07
|07BAAB| CMP.b #$01
|07BAAD| BNE .dont_snap

|07BAAF| LDA.b $22
|07BAB1| AND.b #$F8
|07BAB3| STA.b $22

.dont_snap
|07BAB5| LDA.w $0315
|07BAB8| AND.b #$02
|07BABA| BNE .exit

|07BABC| LDA.b $50
|07BABE| AND.b #$FD
|07BAC0| STA.b $50

.exit
|07BAC2| RTS

;===================================================================================================

ResetDoorPropsVertical_door_pre:
|07BAC3| LDA.w $0315
|07BAC6| AND.b #$02
|07BAC8| BNE ResetDoorPropsVertical

|07BACA| STZ.b $6C

;===================================================================================================

ResetDoorPropsVertical:
|07BACC| LDA.w $0315
|07BACF| AND.b #$02
|07BAD1| BNE CheckForMasksRupeesConveyors_Vertical

|07BAD3| LDA.b $50
|07BAD5| AND.b #$FD
|07BAD7| STA.b $50

|07BAD9| STZ.b $49
|07BADB| STZ.b $EF

;===================================================================================================

CheckForMasksRupeesConveyors_Vertical:
|07BADD| LDA.b $0E
|07BADF| AND.b #$07
|07BAE1| BNE HandleMasksRupeesConveyors_Vertical

|07BAE3| LDA.b $0C
|07BAE5| AND.b #$05
|07BAE7| BEQ HandleMasksRupeesConveyors_Vertical

|07BAE9| STZ.w $03F3

|07BAEC| JSR FlagMovingIntoSlopes_Vertical

|07BAEF| LDA.b $6B
|07BAF1| AND.b #$0F
|07BAF3| BEQ HandleMasksRupeesConveyors_Vertical

|07BAF5| RTS

;===================================================================================================

HandleMasksRupeesConveyors_Vertical:
|07BAF6| STZ.b $6B

|07BAF8| LDA.w $02E7
|07BAFB| AND.b #$20
|07BAFD| BEQ .no_chest_above

|07BAFF| LDA.b $0E
|07BB01| PHA

|07BB02| LDA.b $0F
|07BB04| PHA

|07BB05| LDA.w $02EA
|07BB08| JSL OpenChestForItem

|07BB0C| STZ.w $02EA

|07BB0F| PLA
|07BB10| STA.b $0F

|07BB12| PLA
|07BB13| STA.b $0E

;---------------------------------------------------------------------------------------------------

.no_chest_above
|07BB15| LDA.b $EE
|07BB17| BNE .lower_layer

|07BB19| LDA.w $034C
|07BB1C| AND.b #$07
|07BB1E| BEQ .no_mask1C

|07BB20| LDA.b #$01
|07BB22| TSB.w $0322

|07BB25| BRA .check_for_rupee_tiles

;---------------------------------------------------------------------------------------------------

.no_mask1C
|07BB27| LDA.w $02E8
|07BB2A| AND.b #$07
|07BB2C| BNE .check_for_rupee_tiles

|07BB2E| LDA.b $0E
|07BB30| AND.b #$02
|07BB32| BNE .check_for_rupee_tiles

|07BB34| LDA.w $0322
|07BB37| AND.b #$FE
|07BB39| STA.w $0322

|07BB3C| BRA .check_for_rupee_tiles

.lower_layer
|07BB3E| LDA.w $0320
|07BB41| AND.b #$07
|07BB43| BEQ .no_mask0C

|07BB45| LDA.b #$02
|07BB47| TSB.w $0322

|07BB4A| BRA .check_for_rupee_tiles

.no_mask0C
|07BB4C| LDA.w $0322
|07BB4F| AND.b #$FD
|07BB51| STA.w $0322

;---------------------------------------------------------------------------------------------------

.check_for_rupee_tiles
|07BB54| LDA.w $02F7
|07BB57| AND.b #$22
|07BB59| BEQ .no_rupee_tiles

|07BB5B| LDX.b #$00

|07BB5D| AND.b #$20
|07BB5F| BEQ .no_rupee_from_this_side

|07BB61| LDX.b #$08

.no_rupee_from_this_side
|07BB63| STX.b $00

|07BB65| STZ.b $01

|07BB67| LDA.b $66
|07BB69| ASL A
|07BB6A| TAY

|07BB6B| REP #$20

|07BB6D| LDA.l $7EF360
|07BB71| CLC
|07BB72| ADC.w #$0005
|07BB75| STA.l $7EF360

|07BB79| LDA.b $20
|07BB7B| CLC
|07BB7C| ADC.w RupeeTileOffset_y,Y
|07BB7F| SEC
|07BB80| SBC.b $00
|07BB82| STA.b $00

|07BB84| LDA.b $22
|07BB86| CLC
|07BB87| ADC.w RupeeTileOffset_x,Y
|07BB8A| STA.b $02

|07BB8C| SEP #$20

|07BB8E| JSL DeleteRupeeTile

|07BB92| LDA.b #$0A ; SFX3.0A
|07BB94| JSR PlayLinkSFX3Panned

;---------------------------------------------------------------------------------------------------

.no_rupee_tiles
|07BB97| LDY.b #$01 ; up

|07BB99| LDA.w $03F1
|07BB9C| AND.b #$22
|07BB9E| BEQ .no_conveyor_ud

|07BBA0| AND.b #$20
|07BBA2| BEQ .up_conveyor

|07BBA4| LDY.b #$02 ; down

.up_conveyor
|07BBA6| STY.w $03F3

|07BBA9| BRA CheckForLedgeTile_Vertical

;---------------------------------------------------------------------------------------------------

.no_conveyor_ud
|07BBAB| LDY.b #$03 ; left

|07BBAD| LDA.w $03F2
|07BBB0| AND.b #$22
|07BBB2| BEQ .no_conveyor_lr

|07BBB4| AND.b #$20
|07BBB6| BEQ .left_conveyor

|07BBB8| LDY.b #$04 ; right

.left_conveyor
|07BBBA| STY.w $03F3

|07BBBD| BRA CheckForLedgeTile_Vertical

;---------------------------------------------------------------------------------------------------

.no_conveyor_lr
; check for spikes
|07BBBF| LDA.w $02E8
|07BBC2| AND.b #$07
|07BBC4| BNE CheckForLedgeTile_Vertical

|07BBC6| LDA.b $0E
|07BBC8| AND.b #$02
|07BBCA| BNE CheckForLedgeTile_Vertical

|07BBCC| STZ.w $03F3

;===================================================================================================

CheckForLedgeTile_Vertical:
|07BBCF| LDA.w $036D
|07BBD2| AND.b #$07
|07BBD4| CMP.b #$07
|07BBD6| BNE CheckForWaterTiles_Vertical

|07BBD8| JSR RunLedgeHopTimer
|07BBDB| BCC CheckForWaterTiles_Vertical

|07BBDD| JSR CancelDash

|07BBE0| INC.w $047A

|07BBE3| LDA.b #$01
|07BBE5| STA.w $037B

|07BBE8| LDA.b #$02
|07BBEA| STA.b $4D

|07BBEC| LDA.b #$20 ; SFX2.20
|07BBEE| JSR PlayLinkSFX2Panned

|07BBF1| BRA HandleUnderworldHopOntoWater_Vertical

;---------------------------------------------------------------------------------------------------

CheckForWaterTiles_Vertical:
|07BBF3| LDA.w $0341
|07BBF6| AND.b #$07
|07BBF8| CMP.b #$07
|07BBFA| BNE .on_deep_water

|07BBFC| LDA.w $0345
|07BBFF| BNE .on_deep_water

|07BC01| JSR CancelDash

|07BC04| LDA.b $1D
|07BC06| BNE .no_layer_change

|07BC08| JSL HandleLayerChange

|07BC0C| BRA HandleUnderworldHopOntoWater_Vertical

;---------------------------------------------------------------------------------------------------

.no_layer_change
|07BC0E| LDA.b #$01
|07BC10| STA.w $0345

|07BC13| LDA.b $26
|07BC15| STA.w $0340

|07BC18| STZ.w $0308
|07BC1B| STZ.w $0309
|07BC1E| STZ.w $0376

|07BC21| STZ.b $5E

|07BC23| JSL ResetSwimmingState

|07BC27| LDA.b #$20 ; SFX2.20
|07BC29| JSR PlayLinkSFX2Panned

;===================================================================================================

#HandleUnderworldHopOntoWater_Vertical:
|07BC2C| LDA.b #$01
|07BC2E| STA.w $037B

|07BC31| JSR HopInOrOutOfWater_Vertical

|07BC34| BRA .continue

;---------------------------------------------------------------------------------------------------

.on_deep_water
|07BC36| LDA.w $0343
|07BC39| AND.b #$02
|07BC3B| BEQ .continue

|07BC3D| LDA.w $0345
|07BC40| BEQ .continue

|07BC42| LDA.b $4D
|07BC44| BEQ .not_in_recoil

|07BC46| LDA.b #$07
|07BC48| STA.b $0E

|07BC4A| BRA .continue

.not_in_recoil
|07BC4C| JSR CancelDash

|07BC4F| STZ.w $0345

|07BC52| LDA.w $0340
|07BC55| STA.b $26

|07BC57| LDA.b #$15 ; ANCILLA 15
|07BC59| LDY.b #$00
|07BC5B| JSL AncillaAdd_Splash
|07BC5F| BCC .splash_around

|07BC61| LDA.b #$01
|07BC63| STA.w $0345

|07BC66| LDA.b #$07
|07BC68| STA.b $0E

|07BC6A| BRA .continue

.splash_around
|07BC6C| LDA.b #$01
|07BC6E| STA.w $037B

|07BC71| JSR HopInOrOutOfWater_Vertical

;---------------------------------------------------------------------------------------------------

; TODO stairs
.continue
|07BC74| LDA.b $58
|07BC76| AND.b #$07
|07BC78| CMP.b #$07
|07BC7A| BNE HandleLinkStairDetection

|07BC7C| LDA.b $46
|07BC7E| BEQ .not_taking_damage

|07BC80| LDA.b $58
|07BC82| AND.b #$07
|07BC84| STA.b $0E

|07BC86| BRL HandlePushingBonkingSnaps_Vertical

.not_taking_damage
|07BC89| LDA.w $02C0
|07BC8C| AND.b #$77
|07BC8E| BEQ .no_stairs

; TODO good submodule info
|07BC90| LDY.b #$08
|07BC92| AND.b #$70
|07BC94| BEQ .merged_layer_stairs

|07BC96| LDY.b #$10

.merged_layer_stairs
|07BC98| STY.b $11

|07BC9A| LDA.b #$07
|07BC9C| STA.b $10

|07BC9E| JSR CancelDash

.no_stairs
|07BCA1| LDA.b $66
|07BCA3| AND.b #$02
|07BCA5| BNE HandleLinkStairDetection

|07BCA7| LDA.b #$02
|07BCA9| STA.b $5E

|07BCAB| LDA.b #$01
|07BCAD| STA.b $57

|07BCAF| RTS

;===================================================================================================

HandleLinkStairDetection:
|07BCB0| LDA.b $5E
|07BCB2| CMP.b #$02
|07BCB4| BNE .not_stair_speed

|07BCB6| LDX.b #$10

|07BCB8| LDA.w $0372
|07BCBB| BNE .dashing_speed

|07BCBD| LDX.b #$00

.dashing_speed
|07BCBF| STX.b $5E

.not_stair_speed
|07BCC1| LDA.b $57
|07BCC3| CMP.b #$01
|07BCC5| BNE HandleUnderworldPitSlip_Vertical

|07BCC7| LDX.b #$02
|07BCC9| STX.b $57

;===================================================================================================

HandleUnderworldPitSlip_Vertical:
; check for pits
|07BCCB| LDA.b $59
|07BCCD| AND.b #$05
|07BCCF| BEQ HandleUnderworldSpikeBlockCollision_Vertical

|07BCD1| LDA.b $0E
|07BCD3| AND.b #$02
|07BCD5| BNE HandleUnderworldSpikeBlockCollision_Vertical

|07BCD7| LDA.b $5D
|07BCD9| CMP.b #$05 ; LINKSTATE 05
|07BCDB| BEQ .exit

|07BCDD| CMP.b #$02 ; LINKSTATE 02
|07BCDF| BEQ .exit

|07BCE1| LDA.b #$09
|07BCE3| STA.b $5C

|07BCE5| STZ.b $5A

|07BCE7| LDA.b #$01
|07BCE9| STA.b $5B

|07BCEB| LDA.b #$01 ; LINKSTATE 01
|07BCED| STA.b $5D

.exit
|07BCEF| RTS

;===================================================================================================

HandleUnderworldSpikeBlockCollision_Vertical:
|07BCF0| STZ.b $5A

|07BCF2| LDA.w $02E8
|07BCF5| AND.b #$07
|07BCF7| BEQ .check_collision_type

|07BCF9| LDA.b $46
|07BCFB| ORA.w $031F
|07BCFE| ORA.b $55
|07BD00| BNE .no_spike_damage

|07BD02| LDA.b $20
|07BD04| LDY.b $66
|07BD06| BNE .didnt_move

|07BD08| AND.b #$04
|07BD0A| BEQ .not_on_4px_edge
|07BD0C| BRA .check_collision_type

.didnt_move
|07BD0E| AND.b #$04
|07BD10| BEQ .check_collision_type

.not_on_4px_edge
|07BD12| LDA.w $031F
|07BD15| BNE .check_collision_type

|07BD17| LDA.l $7EF35B
|07BD1B| TAY

|07BD1C| LDA.w SpikeDamageValues,Y
|07BD1F| STA.w $0373

|07BD22| JSR CancelDash
|07BD25| JSR ForciblyUnequipCape_quietly

|07BD28| BRL LinkApplyTileRebound

;---------------------------------------------------------------------------------------------------

.no_spike_damage
|07BD2B| LDA.w $02E8
|07BD2E| AND.b #$07
|07BD30| STA.b $0E

.check_collision_type
|07BD32| LDA.w $046C
|07BD35| BEQ .ignore_layer

|07BD37| CMP.b #$04
|07BD39| BEQ .ignore_layer

|07BD3B| LDA.b $EE
|07BD3D| BNE HandlePushingBonkingSnaps_Vertical

.ignore_layer
|07BD3F| LDA.b $5F
|07BD41| ORA.b $60
|07BD43| BEQ .not_pushing_block

|07BD45| LDA.b $6A
|07BD47| BNE .not_pushing_block

|07BD49| LDA.b $5F
|07BD4B| STA.w $02C2

|07BD4E| DEC.b $61
|07BD50| BPL HandlePushingBonkingSnaps_Vertical

;---------------------------------------------------------------------------------------------------

|07BD52| REP #$20

|07BD54| LDY.b #$0F

|07BD56| LDA.b $5F

.check_next_block
|07BD58| ASL A
|07BD59| BCC .skip_block

|07BD5B| PHA
|07BD5C| PHY

|07BD5D| SEP #$20

|07BD5F| JSR FindFreeMovingBlockSlot
|07BD62| BCS .no_free_slot

|07BD64| STX.b $0E

|07BD66| TYA
|07BD67| ASL A
|07BD68| TAX

|07BD69| JSR InitializePushBlock
|07BD6C| BCS .no_free_slot

|07BD6E| LDA.b $0E
|07BD70| ASL A
|07BD71| TAY

|07BD72| JSR DrawSinglePushBlock

|07BD75| TYX

|07BD76| LDY.b $66

|07BD78| TYA
|07BD79| ASL A
|07BD7A| STA.w $05F8,X
|07BD7D| STA.w $0474

|07BD80| LDA.w $05F0,X

|07BD83| CPY.b #$01
|07BD85| BNE .not_pushing_down

|07BD87| DEC A

.not_pushing_down
|07BD88| AND.b #$0F
|07BD8A| STA.w $05E8,X

.no_free_slot
|07BD8D| REP #$20

|07BD8F| PLY
|07BD90| PLA

.skip_block
|07BD91| DEY
|07BD92| BPL .check_next_block

;---------------------------------------------------------------------------------------------------

|07BD94| SEP #$20

.not_pushing_block
|07BD96| LDA.b #$15
|07BD98| STA.b $61

;===================================================================================================

HandlePushingBonkingSnaps_Vertical:
|07BD9A| LDA.b $0E
|07BD9C| AND.b #$07
|07BD9E| BNE .check_for_swimming

|07BDA0| BRL RestartPushingTimer_UnflagDoors_Vertical

.check_for_swimming
|07BDA3| LDA.b $5D
|07BDA5| CMP.b #$04 ; LINKSTATE 04
|07BDA7| BNE .not_swimming_or_moving

|07BDA9| LDA.w $0310
|07BDAC| BNE .moving_floor_active

|07BDAE| JSR ResetAllAcceleration

.moving_floor_active
|07BDB1| LDA.b $6A
|07BDB3| BEQ .not_swimming_or_moving

|07BDB5| JSR AddInLinksYVelocityFalling
|07BDB8| BRA .check_for_bonk

.not_swimming_or_moving
|07BDBA| LDA.b $0E
|07BDBC| AND.b #$02
|07BDBE| BNE .do_a_bonk

|07BDC0| LDA.b $0E
|07BDC2| AND.b #$05
|07BDC4| CMP.b #$05
|07BDC6| BNE .no_bonk

.do_a_bonk
|07BDC8| LDA.b $0E
|07BDCA| PHA

|07BDCB| JSR BonkAndSmash
|07BDCE| JSR RepelDash

|07BDD1| PLA
|07BDD2| STA.b $0E

.no_bonk
|07BDD4| LDA.b #$01
|07BDD6| STA.w $0302

|07BDD9| LDA.b $0E
|07BDDB| AND.b #$02
|07BDDD| CMP.b #$02
|07BDDF| BNE .check_diagonal_direction

|07BDE1| JSR AddInLinksYVelocityFalling
|07BDE4| BRA .check_for_bonk

.check_diagonal_direction
|07BDE6| LDA.b $6A
|07BDE8| CMP.b #$01
|07BDEA| BNE .not_diagonal_facing_vetically

.diagonal_facing_horizontally
|07BDEC| BRL RestartPushingTimer_Vertical

.not_diagonal_facing_vetically
|07BDEF| JSR AddInLinksYVelocityFalling

|07BDF2| LDA.b $6A
|07BDF4| CMP.b #$02
|07BDF6| BEQ .diagonal_facing_horizontally

;---------------------------------------------------------------------------------------------------

.check_for_bonk
|07BDF8| LDA.b $0E
|07BDFA| AND.b #$05
|07BDFC| CMP.b #$05
|07BDFE| BEQ .definitely_bonk

|07BE00| AND.b #$04
|07BE02| BEQ .no_bonk_this_way

|07BE04| LDY.b #$01

|07BE06| LDA.b $30
|07BE08| BMI .already_negative

|07BE0A| EOR.b #$FF
|07BE0C| INC A

.already_negative
; just in case it was 0, make it -1
|07BE0D| BPL .extra_positive_check

|07BE0F| LDY.b #$FF

.extra_positive_check
|07BE11| STY.b $00
|07BE13| STZ.b $01

|07BE15| LDA.b $0E
|07BE17| AND.b #$02
|07BE19| BNE HandlePushingObstruction_Vertical

|07BE1B| LDA.b $22
|07BE1D| AND.b #$07
|07BE1F| BNE .do_not_bonk

|07BE21| JSR BonkAndSmash
|07BE24| JSR RepelDash

|07BE27| BRA HandlePushingObstruction_Vertical

;---------------------------------------------------------------------------------------------------

.no_bonk_this_way
|07BE29| LDY.b #$01

|07BE2B| LDA.b $30
|07BE2D| BPL .already_positive

|07BE2F| EOR.b #$FF
|07BE31| INC A

.already_positive
|07BE32| BPL .make_sure_not_negative

|07BE34| LDY.b #$FF

.make_sure_not_negative
|07BE36| STY.b $00
|07BE38| STZ.b $01

|07BE3A| LDA.b $0E
|07BE3C| AND.b #$02
|07BE3E| BNE HandlePushingObstruction_Vertical

|07BE40| LDA.b $22
|07BE42| AND.b #$07
|07BE44| BNE .do_not_bonk

.definitely_bonk
|07BE46| JSR BonkAndSmash
|07BE49| JSR RepelDash

|07BE4C| BRA HandlePushingObstruction_Vertical

.do_not_bonk
|07BE4E| JSR AddAbsoluteScratchToXCoord

|07BE51| JMP.w HandleNudging

;===================================================================================================

HandlePushingObstruction_Vertical:
|07BE54| LDA.b $66
|07BE56| ASL A
|07BE57| CMP.b $2F
|07BE59| BNE RestartPushingTimer_Vertical

|07BE5B| LDA.w $0315
|07BE5E| AND.b #$01
|07BE60| ASL A
|07BE61| TSB.b $48

|07BE63| LDA.b $3C
|07BE65| BNE .dont_run_push_timer

|07BE67| DEC.w $0371
|07BE6A| BPL EXIT_07BE97

.dont_run_push_timer
|07BE6C| LDY.w $0315

|07BE6F| LDA.w $02F6
|07BE72| AND.b #$20
|07BE74| BEQ .not_a_flaggable_door

|07BE76| LDA.w $0315
|07BE79| ASL A
|07BE7A| ASL A
|07BE7B| ASL A
|07BE7C| TAY

.not_a_flaggable_door
|07BE7D| TYA
|07BE7E| TSB.b $48

|07BE80| BRA RestartPushingTimer_Vertical

;===================================================================================================

RestartPushingTimer_UnflagDoors_Vertical:
|07BE82| LDA.b $EE
|07BE84| BNE EXIT_07BE97

|07BE86| LDA.b $48
|07BE88| AND.b #$F6
|07BE8A| STA.b $48

;===================================================================================================

RestartPushingTimer_Vertical:
|07BE8C| LDA.b #$20
|07BE8E| STA.w $0371

|07BE91| LDA.b $48
|07BE93| AND.b #$FD
|07BE95| STA.b $48

;---------------------------------------------------------------------------------------------------

#EXIT_07BE97:
|07BE97| RTS

;===================================================================================================

StartMovementCollisionChecks_Vertical_HandleOutdoors:
|07BE98| LDA.b $5E
|07BE9A| CMP.b #$02
|07BE9C| BNE .not_stair_speed

|07BE9E| LDX.b #$10

|07BEA0| LDA.w $0372
|07BEA3| BNE .dashing

|07BEA5| LDX.b #$00

.dashing
|07BEA7| STX.b $5E

.not_stair_speed
|07BEA9| LDA.b $59
|07BEAB| AND.b #$05
|07BEAD| BEQ HandleLiftablesBeforeDeepWater_Vertical

|07BEAF| LDA.b $0E
|07BEB1| AND.b #$02
|07BEB3| BNE HandleLiftablesBeforeDeepWater_Vertical

|07BEB5| LDA.b $5D
|07BEB7| CMP.b #$05 ; LINKSTATE 05
|07BEB9| BEQ .exit

|07BEBB| CMP.b #$02 ; LINKSTATE 02
|07BEBD| BEQ .exit

|07BEBF| LDA.b #$09
|07BEC1| STA.b $5C

|07BEC3| STZ.b $5A

|07BEC5| LDA.b #$01
|07BEC7| STA.b $5B

|07BEC9| LDA.b #$01 ; LINKSTATE 01
|07BECB| STA.b $5D

.exit
|07BECD| RTS

;===================================================================================================

HandleLiftablesBeforeDeepWater_Vertical:
|07BECE| LDA.w $0366
|07BED1| AND.b #$02
|07BED3| BEQ .not_touching_some_liftable

|07BED5| LDA.w $036A
|07BED8| LSR A
|07BED9| STA.w $0368

|07BEDC| BRA .index_is_set

.not_touching_some_liftable
|07BEDE| STZ.w $0368

.index_is_set
|07BEE1| LDA.w $0341
|07BEE4| AND.b #$02
|07BEE6| BEQ HandleLinkEnteringWater_Vertical

|07BEE8| BRA TestWaterEntryVertical

;===================================================================================================

UNREACHABLE_07BEEA:
|07BEEA| LDA.w $0341
|07BEED| AND.b #$07
|07BEEF| CMP.b #$07
|07BEF1| BNE HandleLinkEnteringWater_Vertical

;===================================================================================================

TestWaterEntryVertical:
|07BEF3| LDA.w $0345
|07BEF6| BNE HandleLinkEnteringWater_Vertical

|07BEF8| LDA.b $4D
|07BEFA| BNE HandleLinkEnteringWater_Vertical

|07BEFC| JSR ResetSwordAndItemUsage
|07BEFF| JSR CancelDash

|07BF02| LDA.b #$01
|07BF04| STA.w $0345

|07BF07| LDA.b $26
|07BF09| STA.w $0340

|07BF0C| STZ.w $0376
|07BF0F| STZ.b $5E

|07BF11| JSL ResetSwimmingState

|07BF15| LDA.w $0351
|07BF18| CMP.b #$01
|07BF1A| BNE .jump_into_water

;---------------------------------------------------------------------------------------------------

|07BF1C| JSR ForciblyUnequipCape_quietly

|07BF1F| LDA.l $7EF356
|07BF23| BEQ .jump_into_water

|07BF25| LDA.w $02E0
|07BF28| BNE HandleLinkEnteringWater_Vertical

|07BF2A| LDA.b #$04 ; LINKSTATE 04
|07BF2C| STA.b $5D

|07BF2E| BRA HandleLinkEnteringWater_Vertical

.jump_into_water
|07BF30| LDA.b #$20 ; SFX2.20
|07BF32| JSR PlayLinkSFX2Panned

|07BF35| LDA.b $3E
|07BF37| STA.b $20

|07BF39| LDA.b $40
|07BF3B| STA.b $21

|07BF3D| LDA.b $3F
|07BF3F| STA.b $22

|07BF41| LDA.b $41
|07BF43| STA.b $23

|07BF45| LDA.b #$01
|07BF47| STA.w $037B

|07BF4A| JSR HopInOrOutOfWater_Vertical

;===================================================================================================

HandleLinkEnteringWater_Vertical:
|07BF4D| LDA.w $0345
|07BF50| BEQ .not_on_deep_water

|07BF52| LDA.w $036D
|07BF55| AND.b #$07
|07BF57| BEQ .no_ledge

|07BF59| STA.b $0E

|07BF5B| BRL HandlePushingBonkingSnaps_Vertical

.no_ledge
|07BF5E| LDA.b $58
|07BF60| AND.b #$07
|07BF62| CMP.b #$07
|07BF64| BEQ .stairs_detected

|07BF66| LDA.w $0343
|07BF69| AND.b #$07
|07BF6B| CMP.b #$07
|07BF6D| BNE .not_on_deep_water

.stairs_detected
|07BF6F| JSR CancelDash

|07BF72| STZ.w $0345

|07BF75| LDA.b $4D
|07BF77| BNE .not_on_deep_water

|07BF79| LDA.w $0340
|07BF7C| STA.b $26

|07BF7E| LDA.b #$01
|07BF80| STA.w $037B

|07BF83| LDA.b #$15 ; ANCILLA 15
|07BF85| LDY.b #$00
|07BF87| JSL AncillaAdd_Splash

|07BF8B| BRL HopInOrOutOfWater_Vertical

;---------------------------------------------------------------------------------------------------

.not_on_deep_water
|07BF8E| LDA.w $036E
|07BF91| AND.b #$02
|07BF93| BNE .horizontal_ledge_detected

|07BF95| LDA.w $0370
|07BF98| AND.b #$22
|07BF9A| BEQ .no_weird_ledges

.horizontal_ledge_detected
|07BF9C| LDA.b #$07
|07BF9E| STA.b $0E

|07BFA0| BRL HandlePushingBonkingSnaps_Vertical

.no_weird_ledges
|07BFA3| LDA.w $036D
|07BFA6| AND.b #$70
|07BFA8| BEQ CheckForNorthSouthLedges

|07BFAA| JSR RunLedgeHopTimer
|07BFAD| BCC CheckForNorthSouthLedges

|07BFAF| JSR CancelDash

|07BFB2| LDA.b #$01
|07BFB4| STA.w $037B
|07BFB7| STA.b $78

|07BFB9| LDA.b #$0B ; LINKSTATE 0B
|07BFBB| STA.b $5D

|07BFBD| STZ.b $46

|07BFBF| LDA.b #$FF
|07BFC1| STA.w $0364
|07BFC4| STA.w $0365

|07BFC7| STZ.b $48
|07BFC9| STZ.b $5E

|07BFCB| LDY.b #$02
|07BFCD| LDX.b #$14

|07BFCF| LDA.w $0345
|07BFD2| BEQ .jumping_into_water

|07BFD4| LDY.b #$04
|07BFD6| LDX.b #$0E

.jumping_into_water
|07BFD8| STX.w $0362
|07BFDB| STX.w $0363

|07BFDE| STY.b $4D

|07BFE0| RTS

;===================================================================================================

CheckForNorthSouthLedges:
|07BFE1| LDA.w $036D
|07BFE4| AND.b #$07
|07BFE6| BEQ .dont_hop

|07BFE8| JSR RunLedgeHopTimer
|07BFEB| BCC .dont_hop

|07BFED| LDA.b #$20 ; SFX2.20
|07BFEF| JSR PlayLinkSFX2Panned

|07BFF2| LDA.b #$01
|07BFF4| STA.w $037B

|07BFF7| JSR CancelDash

|07BFFA| STZ.b $48
|07BFFC| STZ.b $5E

|07BFFE| BRL FindValidLandingTile_North

.dont_hop
|07C001| LDA.w $0345
|07C004| BEQ .not_in_water

|07C006| BRL OverworldRecoverAndDoGraves

.not_in_water
|07C009| LDA.w $036F
|07C00C| AND.b #$07
|07C00E| BEQ CheckOverworldHopTiles_Vertical

|07C010| LDA.w $036D
|07C013| AND.b #$77
|07C015| BNE CheckOverworldHopTiles_Vertical

|07C017| LDX.b #$04

|07C019| LDA.b $76
|07C01B| CMP.b #$2F
|07C01D| BEQ .check_north_east

|07C01F| LDX.b #$01

.check_north_east
|07C021| TXA
|07C022| AND.w $036F
|07C025| BEQ CheckOverworldHopTiles_Vertical

|07C027| JSR RunLedgeHopTimer
|07C02A| BCC CheckOverworldHopTiles_Vertical

|07C02C| JSR CancelDash

|07C02F| LDX.b #$10

|07C031| LDA.w $036F
|07C034| AND.b #$04
|07C036| BNE .dont_invert_recoil

|07C038| TXA
|07C039| EOR.b #$FF
|07C03B| INC A
|07C03C| TAX

.dont_invert_recoil
|07C03D| LDA.b #$01
|07C03F| STA.w $037B

|07C042| STX.b $28

|07C044| STZ.b $48
|07C046| STZ.b $5E

|07C048| LDA.b #$01
|07C04A| STA.w $037B
|07C04D| STA.b $78

|07C04F| LDA.b #$02
|07C051| STA.b $4D

|07C053| LDA.b #$14
|07C055| STA.w $0362
|07C058| STA.w $0363

|07C05B| LDA.b #$FF
|07C05D| STA.w $0364

|07C060| STZ.b $46

|07C062| LDA.b #$0E ; LINKSTATE 0E
|07C064| STA.b $5D

|07C066| RTS

;===================================================================================================

CheckOverworldHopTiles_Vertical:
|07C067| LDA.w $036E
|07C06A| AND.b #$70
|07C06C| BEQ OverworldRecoverAndDoGraves

|07C06E| LDA.w $036D
|07C071| AND.b #$77
|07C073| BNE OverworldRecoverAndDoGraves

|07C075| JSR RunLedgeHopTimer
|07C078| BCC OverworldRecoverAndDoGraves

|07C07A| JSR CancelDash

|07C07D| LDA.b #$20 ; SFX2.20
|07C07F| JSR PlayLinkSFX2Panned

|07C082| LDY.b #$03

|07C084| LDA.w $036E
|07C087| AND.b #$40
|07C089| BNE .diagonal_north_ledge

|07C08B| LDY.b #$02

.diagonal_north_ledge
|07C08D| STY.b $66

|07C08F| LDA.b #$01
|07C091| STA.w $037B

|07C094| STZ.b $48
|07C096| STZ.b $5E

|07C098| BRL FindValidLandingTile_DiagonalNorth

;===================================================================================================

OverworldRecoverAndDoGraves:
|07C09B| LDA.b $58
|07C09D| AND.b #$07
|07C09F| CMP.b #$07
|07C0A1| BNE OverworldHandleStairsAndPushGraves

|07C0A3| LDA.b $46
|07C0A5| BEQ .not_recoiling

|07C0A7| LDA.b $58
|07C0A9| AND.b #$07
|07C0AB| STA.b $0E

|07C0AD| BRL HandlePushingBonkingSnaps_Vertical

.not_recoiling
|07C0B0| LDA.b $66
|07C0B2| AND.b #$02
|07C0B4| BNE OverworldHandleStairsAndPushGraves

|07C0B6| LDA.b #$02
|07C0B8| STA.b $5E

|07C0BA| LDA.b #$01
|07C0BC| STA.b $57

|07C0BE| RTS

;===================================================================================================
; This is where superspeed happens
OverworldHandleStairsAndPushGraves:
|07C0BF| LDA.b $5E
|07C0C1| CMP.b #$02
|07C0C3| BNE .not_stair_speed

|07C0C5| LDX.b #$10

|07C0C7| LDA.w $0372
|07C0CA| BNE .dashing

|07C0CC| LDX.b #$00

.dashing
|07C0CE| STX.b $5E

.not_stair_speed
|07C0D0| LDA.b $57
|07C0D2| CMP.b #$01
|07C0D4| BNE .not_slow_speed

|07C0D6| LDX.b #$02
|07C0D8| STX.b $57

.not_slow_speed
|07C0DA| LDA.b $0C
|07C0DC| AND.b #$05
|07C0DE| BEQ CheckForGravePush

|07C0E0| LDA.b $0E
|07C0E2| AND.b #$07
|07C0E4| BNE CheckForGravePush

|07C0E6| JSR FlagMovingIntoSlopes_Vertical

|07C0E9| LDA.b $6B
|07C0EB| AND.b #$0F
|07C0ED| BEQ CheckForGravePush

|07C0EF| RTS

;===================================================================================================

CheckForGravePush:
|07C0F0| STZ.b $6B

|07C0F2| LDA.w $02E7
|07C0F5| AND.b #$02
|07C0F7| BEQ .reset_push_timer

|07C0F9| LDA.b $66
|07C0FB| BNE .reset_push_timer

|07C0FD| LDA.w $0372
|07C100| BNE .dashing

|07C102| DEC.b $61
|07C104| BPL CheckForSpikeTouch

.dashing
|07C106| LDA.b $0E
|07C108| PHA

|07C109| LDY.b #$04
|07C10B| LDA.b #$24 ; ANCILLA 24
|07C10D| JSL AncillaAdd_GraveStone

|07C111| PLA
|07C112| STA.b $0E

.reset_push_timer
|07C114| LDA.b #$34
|07C116| STA.b $61

;===================================================================================================

CheckForSpikeTouch:
|07C118| LDA.w $02E8
|07C11B| AND.b #$07
|07C11D| BEQ .not_touching_spike

|07C11F| LDA.b $55
|07C121| BNE .invulnerable

|07C123| LDA.w $031F
|07C126| BNE .invulnerable

|07C128| LDA.b $20

|07C12A| LDY.b $66
|07C12C| BNE .didnt_move

|07C12E| AND.b #$04
|07C130| BEQ .not_on_4px_edge

|07C132| BRA .not_touching_spike

.didnt_move
|07C134| AND.b #$04
|07C136| BEQ .not_touching_spike

.not_on_4px_edge
|07C138| LDA.l $7EF35B
|07C13C| TAY

|07C13D| LDA.w SpikeDamageValues,Y
|07C140| STA.w $0373

|07C143| JSR CancelDash
|07C146| JSR ForciblyUnequipCape_quietly

|07C149| BRL LinkApplyTileRebound

.invulnerable
|07C14C| LDA.w $02E8
|07C14F| AND.b #$07
|07C151| STA.b $0E

.not_touching_spike
|07C153| BRL HandlePushingBonkingSnaps_Vertical

;===================================================================================================
; This code is weird, particularly the dashing part.
;===================================================================================================
RunLedgeHopTimer:
|07C156| LDA.b $4D
|07C158| CMP.b #$01
|07C15A| BEQ .restore_coordinates

|07C15C| LDA.w $0372
|07C15F| BNE .dashing

|07C161| DEC.w $0375
|07C164| BPL .restore_coordinates

|07C166| LDA.b #$13
|07C168| STA.w $0375

|07C16B| BRA .exit_and_set

.dashing
|07C16D| JSR .restore_coordinates

.exit_and_set
|07C170| SEC

|07C171| RTS

;---------------------------------------------------------------------------------------------------

.restore_coordinates
|07C172| REP #$20

|07C174| LDA.w $0FC4
|07C177| STA.b $20

|07C179| LDA.w $0FC2
|07C17C| STA.b $22

|07C17E| SEP #$20

|07C180| STZ.b $2A
|07C182| STZ.b $2B

|07C184| LDA.b $1B
|07C186| BNE EXIT_AND_CLC ; useless

;---------------------------------------------------------------------------------------------------

#EXIT_AND_CLC:
|07C188| CLC

|07C189| RTS

;===================================================================================================

BonkAndSmash:
|07C18A| LDA.w $0372
|07C18D| BEQ EXIT_AND_CLC

|07C18F| LDA.w $02F1
|07C192| CMP.b #$40
|07C194| BEQ EXIT_AND_CLC

|07C196| LDA.w $02EF
|07C199| AND.b #$70
|07C19B| BEQ EXIT_AND_CLC

|07C19D| JSL SmashRockPileFromHere
|07C1A1| BCC .didnt_break_here

|07C1A3| JSR .break_pile

.didnt_break_here
|07C1A6| JSL SmashRockPileFromAbove
|07C1AA| BCC .exit

;---------------------------------------------------------------------------------------------------

.break_pile
|07C1AC| LDX.b #$08

.check_next
|07C1AE| CMP.w LinkToss.liftable_tiles,X
|07C1B1| BEQ .match

|07C1B3| DEX
|07C1B4| BPL .check_next

|07C1B6| BRA .exit

;---------------------------------------------------------------------------------------------------

.match
|07C1B8| CPX.b #$02
|07C1BA| BEQ .play_sfx

|07C1BC| CPX.b #$04
|07C1BE| BNE .skip_sfx

.play_sfx
|07C1C0| PHX

|07C1C1| LDA.b #$32 ; SFX3.32
|07C1C3| JSR PlayLinkSFX3Panned

|07C1C6| PLX

.skip_sfx
|07C1C7| TXA
|07C1C8| JSL SpawnImmediatelySmashedTerrain

.exit
|07C1CC| RTS

;===================================================================================================

AddInLinksYVelocityFalling:
|07C1CD| REP #$20

|07C1CF| LDA.b $51
|07C1D1| AND.w #$0007

|07C1D4| LDY.b $30
|07C1D6| BPL .positive

|07C1D8| SEC
|07C1D9| SBC.w #$0008

.positive
|07C1DC| EOR.w #$FFFF
|07C1DF| INC A

|07C1E0| CLC
|07C1E1| ADC.b $20
|07C1E3| STA.b $20

|07C1E5| SEP #$20

|07C1E7| RTS

;===================================================================================================

CalculateSnapScratch_Vertical:
|07C1E8| LDA.b $0E
|07C1EA| AND.b #$04
|07C1EC| BEQ .invert_first

|07C1EE| LDY.b #$01
|07C1F0| LDA.b $30
|07C1F2| BMI .negative_y_a

|07C1F4| EOR.b #$FF
|07C1F6| INC A

.negative_y_a
|07C1F7| BPL .positive_y_a

|07C1F9| LDY.b #$FF

.positive_y_a
|07C1FB| STY.b $00
|07C1FD| STZ.b $01

|07C1FF| BRA AddAbsoluteScratchToXCoord

.invert_first
|07C201| LDY.b #$01

|07C203| LDA.b $30
|07C205| BPL .positive_y_b

|07C207| EOR.b #$FF
|07C209| INC A

.positive_y_b
|07C20A| BPL .positive_y_c

|07C20C| LDY.b #$FF

.positive_y_c
|07C20E| STY.b $00
|07C210| STZ.b $01

;===================================================================================================

AddAbsoluteScratchToXCoord:
|07C212| REP #$20

|07C214| LDA.b $00
|07C216| CMP.w #$0080
|07C219| BCC .positive

|07C21B| ORA.w #$FF00

.positive
|07C21E| CLC
|07C21F| ADC.b $22
|07C221| STA.b $22

|07C223| SEP #$20

|07C225| RTS

;===================================================================================================

ChangeAxisOfPerpendicularDoorMovement_Vertical:
|07C226| LDA.b #$02
|07C228| TSB.b $50

|07C22A| LDA.b $0E
|07C22C| LSR A
|07C22D| LSR A
|07C22E| LSR A
|07C22F| LSR A
|07C230| ORA.b $0E
|07C232| AND.b #$0F
|07C234| STA.b $00

|07C236| AND.b #$07
|07C238| BNE .dont_clear_doorway

|07C23A| STZ.b $6C

|07C23C| BRA .exit

;---------------------------------------------------------------------------------------------------

.dont_clear_doorway
|07C23E| LDA.b $22
|07C240| CMP.b #$80
|07C242| BCC .x_low_positive

|07C244| LDY.b #$01

|07C246| LDA.b $30
|07C248| BMI .keep_negative_x

|07C24A| EOR.b #$FF
|07C24C| INC A

.keep_negative_x
|07C24D| BPL .keep_y1_positive

|07C24F| LDY.b #$FF

.keep_y1_positive
|07C251| STY.b $00
|07C253| STZ.b $01

|07C255| LDY.b #$04
|07C257| BRA .continue

;---------------------------------------------------------------------------------------------------

.x_low_positive
|07C259| LDY.b #$01

|07C25B| LDA.b $30
|07C25D| BPL .keep_positive_x

|07C25F| EOR.b #$FF
|07C261| INC A

.keep_positive_x
|07C262| BPL .keep_y2_positive

|07C264| LDY.b #$FF

.keep_y2_positive
|07C266| STY.b $00
|07C268| STZ.b $01

|07C26A| LDY.b #$06

.continue
|07C26C| LDA.b $50
|07C26E| AND.b #$01
|07C270| BNE .cannot_turn

|07C272| STY.b $2F

.cannot_turn
|07C274| REP #$20

|07C276| LDA.b $00
|07C278| CMP.w #$0080
|07C27B| BCC .positive

|07C27D| ORA.w #$FF00

.positive
|07C280| CLC
|07C281| ADC.b $22
|07C283| STA.b $22

|07C285| SEP #$20

.exit
|07C287| RTS

;===================================================================================================

AddInLinksYVelocity:
|07C288| REP #$20

|07C28A| LDA.b $30
|07C28C| AND.w #$00FF
|07C28F| CMP.w #$0080
|07C292| BCC .positive

|07C294| ORA.w #$FF00

.positive
|07C297| EOR.w #$FFFF
|07C29A| INC A
|07C29B| CLC
|07C29C| ADC.b $20
|07C29E| STA.b $20

|07C2A0| SEP #$20

|07C2A2| RTS

;===================================================================================================

pool HopInOrOutOfWater_Vertical

.speed_y
|07C2A3| db 24, 16, 16

.speed_z
|07C2A6| db 36, 24, 24

.timer
|07C2A9| db 16, 16, 16

endpool

;---------------------------------------------------------------------------------------------------

HopInOrOutOfWater_Vertical:
|07C2AC| LDA.b $1B
|07C2AE| BNE .indoors

|07C2B0| LDX.b #$02
|07C2B2| BRA .continue

.indoors
|07C2B4| LDX.b $1D

|07C2B6| LDA.w $047A
|07C2B9| BEQ .continue

|07C2BB| LDX.b #$00

.continue
|07C2BD| STX.b $00

|07C2BF| LDA.w .speed_y,X
|07C2C2| TAX

|07C2C3| LDA.b $66
|07C2C5| BNE .dont_invert

|07C2C7| TXA
|07C2C8| EOR.b #$FF
|07C2CA| INC A
|07C2CB| TAX

.dont_invert
|07C2CC| STX.b $27
|07C2CE| STZ.b $28

|07C2D0| LDX.b $00

|07C2D2| LDA.w .speed_z,X
|07C2D5| STA.b $29
|07C2D7| STA.w $02C7

|07C2DA| STZ.b $24
|07C2DC| STZ.b $25

|07C2DE| LDA.w .timer,X
|07C2E1| STA.b $46

|07C2E3| LDA.b $4D
|07C2E5| CMP.b #$02
|07C2E7| BEQ .already_recoiling

|07C2E9| LDA.b #$01
|07C2EB| STA.b $4D

|07C2ED| STZ.w $0360

.already_recoiling
|07C2F0| LDA.b #$06 ; LINKSTATE 06
|07C2F2| STA.b $5D

|07C2F4| RTS

;===================================================================================================

pool FindValidLandingTile_North

.recoil_y
|07C2F5| db $10, $10, $14, $14, $18, $18, $1C, $1C
|07C2FD| db $20, $20, $24, $24, $28, $28, $2C, $2C
|07C305| db $30, $30, $30, $30, $30, $30, $30, $30
|07C30D| db $30, $30, $30, $30, $30, $30, $30, $30

.recoil_z
|07C315| db $18, $18, $18, $18, $1C, $1C, $1C, $1C
|07C31D| db $20, $20, $20, $20, $24, $24, $24, $24
|07C325| db $28, $28, $28, $28, $2C, $2C, $2C, $2C
|07C32D| db $30, $30, $30, $30, $34, $34, $34, $34

.timer
|07C335| db $10, $10, $14, $14, $18, $18, $1C, $1C
|07C33D| db $20, $20, $24, $24, $28, $28, $2C, $2C
|07C345| db $30, $30, $30, $30, $30, $30, $30, $30
|07C34D| db $30, $30, $30, $30, $30, $30, $30, $30

endpool

;---------------------------------------------------------------------------------------------------

FindValidLandingTile_North:
|07C355| LDA.b $20
|07C357| STA.b $32

|07C359| PHA

|07C35A| LDA.b $21
|07C35C| STA.b $33

|07C35E| PHA

;---------------------------------------------------------------------------------------------------

.next
|07C35F| REP #$20

|07C361| LDA.b $20
|07C363| SEC
|07C364| SBC.w #$0010
|07C367| STA.b $20

|07C369| SEP #$20

|07C36B| LDA.b $66
|07C36D| ASL A
|07C36E| TAY

|07C36F| JSR TileDetectOnMovement_Vertical

|07C372| LDA.w $0343
|07C375| ORA.w $035B
|07C378| ORA.w $0357
|07C37B| ORA.w $0341

|07C37E| AND.b #$07
|07C380| CMP.b #$07
|07C382| BNE .next

;---------------------------------------------------------------------------------------------------

|07C384| LDA.w $0341
|07C387| AND.b #$07
|07C389| BEQ .didnt_find_water

|07C38B| LDA.b #$01
|07C38D| STA.b $4D

|07C38F| STZ.w $0360

|07C392| LDA.b #$01
|07C394| STA.w $0345

|07C397| LDA.b $26
|07C399| STA.w $0340

|07C39C| JSL ResetSwimmingState

|07C3A0| STZ.w $0376
|07C3A3| STZ.b $5E

;---------------------------------------------------------------------------------------------------

.didnt_find_water
|07C3A5| REP #$20

|07C3A7| LDA.b $20
|07C3A9| SEC
|07C3AA| SBC.w #$0010
|07C3AD| STA.b $20

|07C3AF| LDA.b $32
|07C3B1| SEC
|07C3B2| SBC.b $20
|07C3B4| STA.b $32

;---------------------------------------------------------------------------------------------------

|07C3B6| SEP #$20

|07C3B8| PLA
|07C3B9| STA.b $21

|07C3BB| PLA
|07C3BC| STA.b $20

|07C3BE| LDA.b $32
|07C3C0| LSR A
|07C3C1| LSR A
|07C3C2| LSR A
|07C3C3| TAY

|07C3C4| LDA.w .recoil_y,Y
|07C3C7| TAX

|07C3C8| LDA.b $66
|07C3CA| BNE .dont_flip

|07C3CC| TXA
|07C3CD| EOR.b #$FF
|07C3CF| INC A
|07C3D0| TAX

.dont_flip
|07C3D1| STX.b $27
|07C3D3| STZ.b $28

|07C3D5| LDA.w .recoil_z,Y
|07C3D8| STA.b $29
|07C3DA| STA.w $02C7

|07C3DD| STZ.b $24
|07C3DF| STZ.b $25

|07C3E1| LDA.w .timer,Y
|07C3E4| STA.b $46

|07C3E6| LDA.b #$02
|07C3E8| STA.b $4D

|07C3EA| STZ.w $0360

|07C3ED| LDA.b #$06 ; LINKSTATE 06
|07C3EF| STA.b $5D

|07C3F1| RTS

;===================================================================================================

pool FindValidLandingTile_DiagonalNorth

.recoil_y
|07C3F2| db $08, $08, $08, $08, $10, $10, $14, $14
|07C3FA| db $18, $18, $18, $18, $20, $20, $20, $20
|07C402| db $08, $14, $14, $14, $18, $18, $18, $18
|07C40A| db $1C, $1C, $1C, $1C, $20, $20, $20, $20

.recoil_x
|07C412| db $08, $08, $08, $08, $10, $10, $10, $10
|07C41A| db $18, $18, $18, $18, $10, $10, $10, $10
|07C422| db $08, $14, $14, $14, $18, $18, $18, $18
|07C42A| db $1C, $1C, $1C, $1C, $20, $20, $20, $20

.recoil_z
|07C432| db $20, $20, $20, $20, $20, $20, $20, $20
|07C43A| db $24, $24, $24, $24, $28, $28, $28, $28
|07C442| db $20, $28, $28, $28, $2C, $2C, $2C, $2C
|07C44A| db $30, $30, $30, $30, $34, $34, $34, $34
|07C452| db $E0, $FF, $20, $00

endpool

;---------------------------------------------------------------------------------------------------

FindValidLandingTile_DiagonalNorth:
|07C456| LDA.b $3E
|07C458| PHA

|07C459| LDA.b $22
|07C45B| PHA

|07C45C| LDA.b $23
|07C45E| PHA

|07C45F| LDX.b $66
|07C461| PHX

|07C462| LDY.b #$01
|07C464| CPX.b #$02
|07C466| BNE .positive

|07C468| LDY.b #$FF

.positive
|07C46A| STY.b $28

|07C46C| LDA.b #$00
|07C46E| STA.b $66

|07C470| JSR FindLandingSpotDiagonallyDown

|07C473| PLX

|07C474| PLA
|07C475| STA.b $23

|07C477| PLA
|07C478| STA.b $22

|07C47A| PLA
|07C47B| STA.b $3E

;---------------------------------------------------------------------------------------------------

|07C47D| REP #$20

|07C47F| LDA.b $32
|07C481| SEC
|07C482| SBC.b $20
|07C484| LSR A
|07C485| LSR A
|07C486| LSR A
|07C487| TAY

|07C488| LDA.b $32
|07C48A| STA.b $20

|07C48C| SEP #$20

|07C48E| LDA.w .recoil_y,Y
|07C491| EOR.b #$FF
|07C493| INC A
|07C494| STA.b $27

|07C496| LDA.w .recoil_x,Y
|07C499| CPX.b #$02
|07C49B| BNE .dont_flip_sign

|07C49D| EOR.b #$FF
|07C49F| INC A

.dont_flip_sign
|07C4A0| STA.b $28

|07C4A2| LDA.w .recoil_z,Y
|07C4A5| STA.b $29
|07C4A7| STA.w $02C7

|07C4AA| STZ.b $24
|07C4AC| STZ.b $25
|07C4AE| STZ.w $0364

|07C4B1| LDA.b #$02
|07C4B3| STA.b $4D

|07C4B5| STZ.w $0360

|07C4B8| LDA.b #$0D ; LINKSTATE 0D
|07C4BA| STA.b $5D

|07C4BC| RTS

;===================================================================================================

StartMovementCollisionChecks_Horizontal:
|07C4BD| LDA.b $31
|07C4BF| BNE .moving_on_axis

|07C4C1| RTS

.moving_on_axis
|07C4C2| LDA.b $6C
|07C4C4| CMP.b #$02
|07C4C6| BNE .not_in_horizontal_door

|07C4C8| LDY.b #$04

|07C4CA| LDA.b $22
|07C4CC| CMP.b #$80
|07C4CE| BCC .negative_x
|07C4D0| BRA .continue_x

.not_in_horizontal_door
|07C4D2| LDY.b #$04
|07C4D4| LDA.b $31
|07C4D6| BMI .negative_x

.continue_x
|07C4D8| LDY.b #$06

.negative_x
|07C4DA| TYA
|07C4DB| LSR A
|07C4DC| STA.b $66

|07C4DE| JSR TileDetectOnMovement_Horizontal

|07C4E1| LDA.b $1B
|07C4E3| BNE StartMovementCollisionChecks_Horizontal_HandleIndoors

|07C4E5| BRL StartMovementCollisionChecks_Horizontal_HandleOutdoors

;===================================================================================================

StartMovementCollisionChecks_Horizontal_HandleIndoors:
|07C4E8| LDA.w $0308
|07C4EB| BMI .carrying_something

|07C4ED| LDA.b $46
|07C4EF| BEQ .not_taking_damage

.carrying_something
|07C4F1| LDA.b $0E
|07C4F3| LSR A
|07C4F4| LSR A
|07C4F5| LSR A
|07C4F6| LSR A
|07C4F7| TSB.b $0E

|07C4F9| BRL ResetDoorPropsHorizontal

;---------------------------------------------------------------------------------------------------

.not_taking_damage
|07C4FC| LDA.b $6A
|07C4FE| BNE .not_moving_diagonally

|07C500| STZ.b $57

.not_moving_diagonally
|07C502| LDA.b $6C
|07C504| CMP.b #$01
|07C506| BNE HandleAutoDoorFlagging_Horizontal

|07C508| LDA.b $6A
|07C50A| BNE HandleAutoDoorFlagging_Horizontal

|07C50C| LDA.w $046C
|07C50F| CMP.b #$03
|07C511| BNE .no_moving_floor

|07C513| LDA.b $EE
|07C515| BEQ .no_moving_floor

|07C517| BRL CheckForMasksRupeesConveyors_Horizontal

.no_moving_floor
|07C51A| JSR SnapOnX
|07C51D| JSR ChangeAxisOfPerpendicularDoorMovement_Horizontal
|07C520| BRL HandleNudgingInADoor

;===================================================================================================

HandleAutoDoorFlagging_Horizontal:
|07C523| LDA.b $0E
|07C525| AND.b #$70
|07C527| BEQ ResetDoorPropsHorizontal

|07C529| STZ.b $05

|07C52B| LDA.b $0F
|07C52D| AND.b #$07
|07C52F| BEQ .no_auto_move

|07C531| LDY.b #$02

|07C533| LDA.b $31
|07C535| BMI .negative_x

|07C537| LDY.b #$03

.negative_x
|07C539| LDA.w AutoMove49Directions,Y
|07C53C| STA.b $49

;---------------------------------------------------------------------------------------------------

.no_auto_move
|07C53E| LDA.b #$02
|07C540| STA.b $6C

|07C542| STZ.w $03F3

|07C545| LDA.b $0E
|07C547| AND.b #$70
|07C549| CMP.b #$70
|07C54B| BEQ .dont_snap

|07C54D| LDA.b $0E
|07C54F| AND.b #$07
|07C551| BNE .go_snap

|07C553| LDA.b $0E
|07C555| AND.b #$70
|07C557| BNE .dont_snap

|07C559| BRA ResetDoorPropsHorizontal

.go_snap
|07C55B| STZ.b $6B
|07C55D| STZ.b $6C

|07C55F| JSR SnapOnX

|07C562| JML CalculateSnapScratch_Horizontal

.dont_snap
|07C566| LDA.w $0315
|07C569| AND.b #$02
|07C56B| BNE .exit

|07C56D| LDA.b $50
|07C56F| AND.b #$FD
|07C571| STA.b $50

.exit
|07C573| RTS

;===================================================================================================

ResetDoorPropsHorizontal:
|07C574| LDA.w $0315
|07C577| AND.b #$02
|07C579| BNE CheckForMasksRupeesConveyors_Horizontal

|07C57B| LDA.b $50
|07C57D| AND.b #$FD
|07C57F| STA.b $50

|07C581| STZ.b $6C
|07C583| STZ.b $EF
|07C585| STZ.b $49

;===================================================================================================

CheckForMasksRupeesConveyors_Horizontal:
|07C587| LDA.b $0E
|07C589| AND.b #$02
|07C58B| BNE HandleMasksRupeesConveyors_Horizontal

|07C58D| LDA.b $0C
|07C58F| AND.b #$05
|07C591| BEQ HandleMasksRupeesConveyors_Horizontal

|07C593| STZ.w $03F3

|07C596| JSR FlagMovingIntoSlopes_Horizontal

|07C599| LDA.b $6B
|07C59B| AND.b #$0F
|07C59D| BEQ HandleMasksRupeesConveyors_Horizontal

|07C59F| RTS

;===================================================================================================

HandleMasksRupeesConveyors_Horizontal:
|07C5A0| STZ.b $6B

|07C5A2| LDA.b $EE
|07C5A4| BNE .lower_layer

|07C5A6| LDA.w $034C
|07C5A9| AND.b #$07
|07C5AB| BEQ .no_mask_1C

|07C5AD| LDA.b #$01
|07C5AF| TSB.w $0322

|07C5B2| BRA .check_for_rupee_tiles

;---------------------------------------------------------------------------------------------------

.no_mask_1C
|07C5B4| LDA.w $02E8
|07C5B7| AND.b #$07
|07C5B9| BNE .check_for_rupee_tiles

|07C5BB| LDA.b $0E
|07C5BD| AND.b #$02
|07C5BF| BNE .check_for_rupee_tiles

|07C5C1| LDA.w $0322
|07C5C4| AND.b #$FE
|07C5C6| STA.w $0322
|07C5C9| BRA .check_for_rupee_tiles

.lower_layer
|07C5CB| LDA.w $0320
|07C5CE| AND.b #$07
|07C5D0| BEQ .no_mask0C

|07C5D2| LDA.b #$02
|07C5D4| TSB.w $0322

|07C5D7| BRA .check_for_rupee_tiles

.no_mask0C
|07C5D9| LDA.w $0322
|07C5DC| AND.b #$FD
|07C5DE| STA.w $0322

;---------------------------------------------------------------------------------------------------

.check_for_rupee_tiles
|07C5E1| LDA.w $02F7
|07C5E4| AND.b #$22
|07C5E6| BEQ .no_rupee_tiles

|07C5E8| LDX.b #$00
|07C5EA| AND.b #$20
|07C5EC| BEQ .no_rupee_from_this_side

|07C5EE| LDX.b #$08

.no_rupee_from_this_side
|07C5F0| STX.b $00

|07C5F2| STZ.b $01

|07C5F4| LDA.b $66
|07C5F6| ASL A
|07C5F7| TAY

|07C5F8| REP #$20

|07C5FA| LDA.l $7EF360
|07C5FE| CLC
|07C5FF| ADC.w #$0005
|07C602| STA.l $7EF360

|07C606| LDA.b $20
|07C608| CLC
|07C609| ADC.w RupeeTileOffset_y,Y
|07C60C| SEC
|07C60D| SBC.b $00
|07C60F| STA.b $00

|07C611| LDA.b $22
|07C613| CLC
|07C614| ADC.w RupeeTileOffset_x,Y
|07C617| STA.b $02

|07C619| SEP #$20

|07C61B| JSL DeleteRupeeTile

|07C61F| LDA.b #$0A ; SFX3.0A
|07C621| JSR PlayLinkSFX3Panned

;---------------------------------------------------------------------------------------------------

.no_rupee_tiles
|07C624| LDY.b #$01 ; up

|07C626| LDA.w $03F1
|07C629| AND.b #$22
|07C62B| BEQ .no_conveyor_ud

|07C62D| AND.b #$20
|07C62F| BEQ .up_conveyor

|07C631| LDY.b #$02 ; down

.up_conveyor
|07C633| STY.w $03F3

|07C636| BRA CheckForLedgeTile_Horizontal

;---------------------------------------------------------------------------------------------------

.no_conveyor_ud
|07C638| LDY.b #$03 ; left

|07C63A| LDA.w $03F2
|07C63D| AND.b #$22
|07C63F| BEQ .no_conveyor_lr

|07C641| AND.b #$20
|07C643| BEQ .left_conveyor

|07C645| LDY.b #$04 ; right

.left_conveyor
|07C647| STY.w $03F3

|07C64A| BRA CheckForLedgeTile_Horizontal

;---------------------------------------------------------------------------------------------------

.no_conveyor_lr
|07C64C| LDA.w $02E8
|07C64F| AND.b #$07
|07C651| BNE CheckForLedgeTile_Horizontal

|07C653| LDA.b $0E
|07C655| AND.b #$02
|07C657| BNE CheckForLedgeTile_Horizontal

|07C659| STZ.w $03F3

;===================================================================================================

CheckForLedgeTile_Horizontal:
|07C65C| LDA.w $036E
|07C65F| AND.b #$07
|07C661| CMP.b #$07
|07C663| BNE CheckForWaterTiles_Horizontal

|07C665| JSR RunLedgeHopTimer
|07C668| BCC CheckForWaterTiles_Horizontal

|07C66A| JSR CancelDash

|07C66D| INC.w $047A

|07C670| LDA.b #$02
|07C672| STA.b $4D

|07C674| BRA HandleUnderworldHopOntoWater_Horizontal

;===================================================================================================

CheckForWaterTiles_Horizontal:
|07C676| LDA.w $0341
|07C679| AND.b #$07
|07C67B| CMP.b #$07
|07C67D| BNE .not_deep_water

|07C67F| LDA.w $0345
|07C682| BNE .not_deep_water

|07C684| LDA.b $5D
|07C686| CMP.b #$06 ; LINKSTATE 06
|07C688| BEQ .not_deep_water

|07C68A| LDA.b $3E
|07C68C| STA.b $20

|07C68E| LDA.b $40
|07C690| STA.b $21

|07C692| LDA.b $3F
|07C694| STA.b $22

|07C696| LDA.b $41
|07C698| STA.b $23

|07C69A| JSR CancelDash

|07C69D| LDA.b $1D
|07C69F| BNE .dont_change_layer

|07C6A1| JSL HandleLayerChange
|07C6A5| BRA HandleUnderworldHopOntoWater_Horizontal

.dont_change_layer
|07C6A7| LDA.b #$01
|07C6A9| STA.w $0345

|07C6AC| LDA.b $26
|07C6AE| STA.w $0340

|07C6B1| STZ.w $0308
|07C6B4| STZ.w $0309

|07C6B7| STZ.w $0376

|07C6BA| STZ.b $5E

|07C6BC| JSL ResetSwimmingState

;===================================================================================================

#HandleUnderworldHopOntoWater_Horizontal:
|07C6C0| LDA.b #$01
|07C6C2| STA.w $037B

|07C6C5| JSR HopInOrOutOfWater_Horizontal

|07C6C8| LDA.b #$20 ; SFX2.20
|07C6CA| JSR PlayLinkSFX2Panned

|07C6CD| BRA HandleUnderworldPitSlip_Horizontal

.not_deep_water
|07C6CF| LDA.w $0343
|07C6D2| AND.b #$07
|07C6D4| CMP.b #$07
|07C6D6| BNE HandleUnderworldPitSlip_Horizontal

|07C6D8| LDA.w $0345
|07C6DB| BEQ HandleUnderworldPitSlip_Horizontal

|07C6DD| LDA.b $4D
|07C6DF| BEQ .not_in_recoil

|07C6E1| LDA.b #$07
|07C6E3| STA.b $0E
|07C6E5| BRA HandleUnderworldPitSlip_Horizontal

.not_in_recoil
|07C6E7| JSR CancelDash

|07C6EA| LDA.b $4D
|07C6EC| BNE HandleUnderworldPitSlip_Horizontal

|07C6EE| LDA.w $0340
|07C6F1| STA.b $26

|07C6F3| STZ.w $0345

|07C6F6| LDA.b #$15 ; ANCILLA 15
|07C6F8| LDY.b #$00
|07C6FA| JSL AncillaAdd_Splash

|07C6FE| LDA.b #$01
|07C700| STA.w $037B

|07C703| JSR HopInOrOutOfWater_Horizontal

;===================================================================================================

HandleUnderworldPitSlip_Horizontal:
|07C706| LDA.b $59
|07C708| AND.b #$05
|07C70A| BEQ HandleUnderworldSpikeBlockCollision_Horizontal

|07C70C| LDA.b $0E
|07C70E| AND.b #$02
|07C710| BNE HandleUnderworldSpikeBlockCollision_Horizontal

|07C712| LDA.b $5D
|07C714| CMP.b #$05 ; LINKSTATE 05
|07C716| BEQ .exit

|07C718| CMP.b #$02 ; LINKSTATE 02
|07C71A| BEQ .exit

|07C71C| LDA.b #$09
|07C71E| STA.b $5C

|07C720| STZ.b $5A

|07C722| LDA.b #$01
|07C724| STA.b $5B

|07C726| LDA.b #$01 ; LINKSTATE 01
|07C728| STA.b $5D

.exit
|07C72A| RTS

;===================================================================================================

HandleUnderworldSpikeBlockCollision_Horizontal:
|07C72B| STZ.b $5B

|07C72D| LDA.w $02E8
|07C730| AND.b #$07
|07C732| BEQ .check_collision_type

|07C734| LDA.b $46
|07C736| ORA.w $031F
|07C739| ORA.b $55
|07C73B| BNE .no_spike_damage

|07C73D| LDA.b $22

|07C73F| LDY.b $66
|07C741| CPY.b #$02
|07C743| BNE .didnt_move

|07C745| AND.b #$04
|07C747| BEQ .not_on_4px_edge
|07C749| BRA .check_collision_type

.didnt_move
|07C74B| AND.b #$04
|07C74D| BEQ .check_collision_type

.not_on_4px_edge
|07C74F| LDA.w $031F
|07C752| BNE .check_collision_type

|07C754| LDA.l $7EF35B
|07C758| TAY

|07C759| LDA.w SpikeDamageValues,Y
|07C75C| STA.w $0373

|07C75F| JSR CancelDash
|07C762| JSR ForciblyUnequipCape_quietly

|07C765| BRL LinkApplyTileRebound

;---------------------------------------------------------------------------------------------------

.no_spike_damage
|07C768| LDA.w $02E8
|07C76B| AND.b #$07
|07C76D| STA.b $0E

.check_collision_type
|07C76F| LDA.w $046C
|07C772| BEQ .ignore_layer

|07C774| CMP.b #$04
|07C776| BEQ .ignore_layer

|07C778| LDA.b $EE
|07C77A| BNE CancelStairDragWithHorizontals

.ignore_layer
|07C77C| LDA.b $5F
|07C77E| ORA.b $60
|07C780| BEQ .not_pushing_block

|07C782| LDA.b $6A
|07C784| BNE .not_pushing_block

|07C786| LDA.b $5F
|07C788| STA.w $02C2

|07C78B| DEC.b $61
|07C78D| BPL CancelStairDragWithHorizontals

;---------------------------------------------------------------------------------------------------

|07C78F| REP #$20

|07C791| LDY.b #$0F
|07C793| LDA.b $5F

.check_next_block
|07C795| ASL A
|07C796| BCC .skip_block

|07C798| PHA
|07C799| PHY

|07C79A| SEP #$20

|07C79C| JSR FindFreeMovingBlockSlot
|07C79F| BCS .no_free_slot

|07C7A1| STX.b $0E

|07C7A3| TYA
|07C7A4| ASL A
|07C7A5| TAX

|07C7A6| JSR InitializePushBlock
|07C7A9| BCS .no_free_slot

|07C7AB| LDA.b $0E
|07C7AD| ASL A
|07C7AE| TAY

|07C7AF| JSR DrawSinglePushBlock

|07C7B2| TYX

|07C7B3| LDY.b $66

|07C7B5| TYA
|07C7B6| ASL A
|07C7B7| STA.w $05F8,X
|07C7BA| STA.w $0474

|07C7BD| LDA.w $05E4,X

|07C7C0| CPY.b #$02
|07C7C2| BEQ .not_pushing_left

|07C7C4| DEC A

.not_pushing_left
|07C7C5| AND.b #$0F
|07C7C7| STA.w $05E8,X

.no_free_slot
|07C7CA| REP #$20

|07C7CC| PLY
|07C7CD| PLA

.skip_block
|07C7CE| DEY
|07C7CF| BPL .check_next_block

;---------------------------------------------------------------------------------------------------

|07C7D1| SEP #$20

.not_pushing_block
|07C7D3| LDA.b #$15
|07C7D5| STA.b $61

;===================================================================================================

CancelStairDragWithHorizontals:
|07C7D7| LDA.b $6A
|07C7D9| BNE HandlePushingBonkingSnaps_Horizontal

|07C7DB| STZ.b $57

|07C7DD| LDA.b $5E
|07C7DF| CMP.b #$02
|07C7E1| BNE HandlePushingBonkingSnaps_Horizontal

|07C7E3| STZ.b $5E

;===================================================================================================

HandlePushingBonkingSnaps_Horizontal:
|07C7E5| LDA.b $0E
|07C7E7| AND.b #$07
|07C7E9| BNE .check_swimming

|07C7EB| BRL RestartPushingTimer_UnflagDoors_Horizontal

.check_swimming
|07C7EE| LDA.b $5D
|07C7F0| CMP.b #$04 ; LINKSTATE 04
|07C7F2| BNE .not_swimming_or_moving

|07C7F4| LDA.w $0312
|07C7F7| BNE .not_swimming_or_moving

|07C7F9| JSR ResetAllAcceleration

.not_swimming_or_moving
|07C7FC| LDA.b $0E
|07C7FE| AND.b #$02
|07C800| BEQ .do_no_bonk

|07C802| LDA.b $0E
|07C804| PHA

|07C805| JSR BonkAndSmash
|07C808| JSR RepelDash

|07C80B| PLA
|07C80C| STA.b $0E

.do_no_bonk
|07C80E| LDA.b #$01
|07C810| STA.w $0302

|07C813| LDA.b $0E
|07C815| AND.b #$07
|07C817| CMP.b #$07
|07C819| BNE .no_x_snap

|07C81B| JSR SnapOnX
|07C81E| BRA .check_for_bonk

.no_x_snap
|07C820| LDA.b $6A
|07C822| CMP.b #$02
|07C824| BNE .not_horizontally_facing_diagonal

.diagonal_facing_vertically
|07C826| BRL RestartPushingTimer_Horizontal

.not_horizontally_facing_diagonal
|07C829| JSR SnapOnX

|07C82C| LDA.b $6A
|07C82E| CMP.b #$01
|07C830| BEQ .diagonal_facing_vertically

;---------------------------------------------------------------------------------------------------

.check_for_bonk
|07C832| LDA.b $0E
|07C834| AND.b #$05
|07C836| CMP.b #$05
|07C838| BEQ .definitely_bonk

|07C83A| AND.b #$04
|07C83C| BEQ .no_bonk_this_way

|07C83E| LDY.b #$01
|07C840| LDA.b $31
|07C842| BMI .already_negative

|07C844| EOR.b #$FF
|07C846| INC A

.already_negative
|07C847| BPL .extra_positive_check

|07C849| LDY.b #$FF

.extra_positive_check
|07C84B| STY.b $00
|07C84D| STZ.b $01

|07C84F| LDA.b $0E
|07C851| AND.b #$02
|07C853| BNE HandlePushingObstruction_Horizontal

|07C855| LDA.b $20
|07C857| AND.b #$07
|07C859| BNE .do_not_bonk

|07C85B| JSR BonkAndSmash
|07C85E| JSR RepelDash

|07C861| BRA HandlePushingObstruction_Horizontal

;---------------------------------------------------------------------------------------------------

.no_bonk_this_way
|07C863| LDY.b #$01

|07C865| LDA.b $31
|07C867| BPL .already_positive

|07C869| EOR.b #$FF
|07C86B| INC A

.already_positive
|07C86C| BPL .make_sure_not_negative

|07C86E| LDY.b #$FF

.make_sure_not_negative
|07C870| STY.b $00
|07C872| STZ.b $01

|07C874| LDA.b $0E
|07C876| AND.b #$02
|07C878| BNE HandlePushingObstruction_Horizontal

|07C87A| LDA.b $20
|07C87C| AND.b #$07
|07C87E| BNE .do_not_bonk

.definitely_bonk
|07C880| JSR BonkAndSmash
|07C883| JSR RepelDash

|07C886| BRA HandlePushingObstruction_Horizontal

.do_not_bonk
|07C888| JSR AddAbsoluteScratchToYCoord

|07C88B| JMP.w HandleNudging

;===================================================================================================

HandlePushingObstruction_Horizontal:
|07C88E| LDA.b $66
|07C890| ASL A
|07C891| CMP.b $2F
|07C893| BNE RestartPushingTimer_Horizontal

|07C895| LDA.w $0315
|07C898| AND.b #$01
|07C89A| ASL A
|07C89B| TSB.b $48

|07C89D| LDA.b $3C
|07C89F| BNE .dont_run_push_timer

|07C8A1| DEC.w $0371
|07C8A4| BPL EXIT_07C8D1

.dont_run_push_timer
|07C8A6| LDY.w $0315

|07C8A9| LDA.w $02F6
|07C8AC| AND.b #$20
|07C8AE| BEQ .not_a_flaggable_door

|07C8B0| LDA.w $0315
|07C8B3| ASL A
|07C8B4| ASL A
|07C8B5| ASL A
|07C8B6| TAY

.not_a_flaggable_door
|07C8B7| TYA
|07C8B8| TSB.b $48

|07C8BA| BRA RestartPushingTimer_Horizontal

;===================================================================================================

RestartPushingTimer_UnflagDoors_Horizontal:
; TODO why does this check for layer???
|07C8BC| LDA.b $EE
|07C8BE| BNE EXIT_07C8D1

|07C8C0| LDA.b $48
|07C8C2| AND.b #$F6
|07C8C4| STA.b $48

;===================================================================================================

RestartPushingTimer_Horizontal:
|07C8C6| LDA.b #$20
|07C8C8| STA.w $0371

|07C8CB| LDA.b $48
|07C8CD| AND.b #$FD
|07C8CF| STA.b $48

;---------------------------------------------------------------------------------------------------

#EXIT_07C8D1:
|07C8D1| RTS

;===================================================================================================

StartMovementCollisionChecks_Horizontal_HandleOutdoors:
|07C8D2| LDA.b $6A
|07C8D4| BNE .no_speed_reset

|07C8D6| STZ.b $57

|07C8D8| LDA.b $5E
|07C8DA| CMP.b #$02
|07C8DC| BNE .no_speed_reset

|07C8DE| STZ.b $5E

.no_speed_reset
|07C8E0| LDA.b $59
|07C8E2| AND.b #$05
|07C8E4| BEQ HandleLiftablesBeforeDeepWater_Horizontal

|07C8E6| LDA.b $0E
|07C8E8| AND.b #$02
|07C8EA| BNE HandleLiftablesBeforeDeepWater_Horizontal

|07C8EC| LDA.b $5D
|07C8EE| CMP.b #$05 ; LINKSTATE 05
|07C8F0| BEQ .exit

|07C8F2| CMP.b #$02 ; LINKSTATE 02
|07C8F4| BEQ .exit

|07C8F6| LDA.b #$09
|07C8F8| STA.b $5C

|07C8FA| STZ.b $5A

|07C8FC| LDA.b #$01
|07C8FE| STA.b $5B

|07C900| LDA.b #$01 ; LINKSTATE 01
|07C902| STA.b $5D

.exit
|07C904| RTS

;---------------------------------------------------------------------------------------------------

HandleLiftablesBeforeDeepWater_Horizontal:
|07C905| LDA.w $0366
|07C908| AND.b #$02
|07C90A| BEQ .not_touching_some_liftable

|07C90C| LDA.w $036A
|07C90F| LSR A
|07C910| STA.w $0369

|07C913| BRA .index_is_set

.not_touching_some_liftable
|07C915| STZ.w $0369

.index_is_set
|07C918| LDA.w $0341
|07C91B| AND.b #$04
|07C91D| BEQ HandleLinkEnteringWater_Horizontal

|07C91F| BRA TestWaterEntry_Horizontal

;===================================================================================================

UNREACHABLE_07C921:
|07C921| LDA.w $0341
|07C924| AND.b #$07
|07C926| CMP.b #$07
|07C928| BNE HandleLinkEnteringWater_Horizontal

;===================================================================================================

TestWaterEntry_Horizontal:
|07C92A| LDA.w $0345
|07C92D| BNE HandleLinkEnteringWater_Horizontal

|07C92F| LDA.b $4D
|07C931| BNE HandleLinkEnteringWater_Horizontal

|07C933| JSR CancelDash
|07C936| JSR ResetSwordAndItemUsage

|07C939| LDA.b #$01
|07C93B| STA.w $0345

|07C93E| LDA.b $26
|07C940| STA.w $0340

|07C943| JSL ResetSwimmingState

|07C947| STZ.w $0376
|07C94A| STZ.b $5E

|07C94C| LDA.w $0351
|07C94F| CMP.b #$01
|07C951| BNE .jump_into_water

|07C953| JSR ForciblyUnequipCape_quietly

|07C956| LDA.l $7EF356
|07C95A| BEQ .jump_into_water

|07C95C| LDA.w $02E0
|07C95F| BNE HandleLinkEnteringWater_Horizontal

|07C961| LDA.b #$04 ; LINKSTATE 04
|07C963| STA.b $5D

|07C965| BRA HandleLinkEnteringWater_Horizontal

;---------------------------------------------------------------------------------------------------

.jump_into_water
|07C967| LDA.b $3E
|07C969| STA.b $20

|07C96B| LDA.b $40
|07C96D| STA.b $21

|07C96F| LDA.b $3F
|07C971| STA.b $22

|07C973| LDA.b $41
|07C975| STA.b $23

|07C977| LDA.b #$01
|07C979| STA.w $037B

|07C97C| JSR HopInOrOutOfWater_Horizontal

|07C97F| LDA.b #$20 ; SFX2.20
|07C981| JSR PlayLinkSFX2Panned

;===================================================================================================

HandleLinkEnteringWater_Horizontal:
|07C984| LDA.w $0345
|07C987| BEQ .not_on_deep_water

|07C989| LDA.w $036E
|07C98C| AND.b #$07
|07C98E| CMP.b #$07
|07C990| BEQ .no_horizontal_ledges
|07C992| BRA .no_vertical_ledges

.not_on_deep_water
|07C994| LDA.w $036D
|07C997| AND.b #$42
|07C999| BEQ .no_vertical_ledges

.no_horizontal_ledges
|07C99B| LDA.b #$07
|07C99D| STA.b $0E

|07C99F| BRL HandlePushingBonkingSnaps_Horizontal

.no_vertical_ledges
|07C9A2| LDA.w $0343
|07C9A5| AND.b #$07
|07C9A7| CMP.b #$07
|07C9A9| BNE HandleLinkLedgeTile_Horizontal

|07C9AB| LDA.w $0345
|07C9AE| BEQ HandleLinkLedgeTile_Horizontal

|07C9B0| JSR CancelDash

|07C9B3| LDA.b $4D
|07C9B5| BNE HandleLinkLedgeTile_Horizontal

|07C9B7| LDA.w $0340
|07C9BA| STA.b $26

|07C9BC| STZ.w $0345

|07C9BF| LDA.b #$15 ; ANCILLA 15
|07C9C1| LDY.b #$00
|07C9C3| JSL AncillaAdd_Splash

|07C9C7| LDA.b #$01
|07C9C9| STA.w $037B

|07C9CC| BRL HopInOrOutOfWater_Horizontal

;===================================================================================================

HandleLinkLedgeTile_Horizontal:
|07C9CF| LDA.w $036E
|07C9D2| AND.b #$07
|07C9D4| BEQ CheckForWeirdLedges_Horizontal

|07C9D6| JSR RunLedgeHopTimer
|07C9D9| BCC CheckForWeirdLedges_Horizontal

|07C9DB| LDA.b #$20 ; SFX2.20
|07C9DD| JSR PlayLinkSFX2Panned

|07C9E0| LDX.b #$10

|07C9E2| LDA.b $66
|07C9E4| AND.b #$01
|07C9E6| BNE .positive

|07C9E8| TXA
|07C9E9| EOR.b #$FF
|07C9EB| INC A
|07C9EC| TAX

.positive
|07C9ED| STX.b $28

|07C9EF| JSR CancelDash

|07C9F2| LDA.b #$02
|07C9F4| STA.b $4D

|07C9F6| LDA.b #$14
|07C9F8| STA.w $0362
|07C9FB| STA.w $0363

|07C9FE| LDA.b #$FF
|07CA00| STA.w $0364

|07CA03| LDA.b #$0C ; LINKSTATE 0C
|07CA05| STA.b $5D

|07CA07| LDA.b #$01
|07CA09| STA.w $037B
|07CA0C| STA.b $78

|07CA0E| STZ.b $48
|07CA10| STZ.b $5E

|07CA12| LDA.b $1B
|07CA14| BNE .indoors

|07CA16| LDA.b #$02
|07CA18| STA.b $EE

.indoors
|07CA1A| LDA.b $66
|07CA1C| AND.b #$FD
|07CA1E| ASL A
|07CA1F| TAY

|07CA20| LDA.b $22
|07CA22| PHA

|07CA23| LDA.b $23
|07CA25| PHA

|07CA26| JSR FindHorizontalHopTile

|07CA29| LDA.b #$01
|07CA2B| STA.b $66

|07CA2D| CPX.b #$FF
|07CA2F| BEQ .find_south

|07CA31| JSR FindVerticalHopTile
|07CA34| BRL .finish

.find_south
|07CA37| JSR FindTileToLandOnSouth

.finish
|07CA3A| PLA
|07CA3B| STA.b $23

|07CA3D| PLA
|07CA3E| STA.b $22

|07CA40| RTS

;===================================================================================================
; TODO these weird EP tiles?
CheckForWeirdLedges_Horizontal:
|07CA41| LDA.w $0370
|07CA44| AND.b #$77
|07CA46| BEQ CheckLedgeTypes_Horizontal

|07CA48| JSR RunLedgeHopTimer
|07CA4B| BCC CheckLedgeTypes_Horizontal

|07CA4D| LDA.b #$20 ; SFX2.20
|07CA4F| JSR PlayLinkSFX2Panned

|07CA52| LDX.b #$0F ; LINKSTATE 0F

|07CA54| AND.b #$07
|07CA56| BNE .dumb_thing_has_sfx

|07CA58| LDX.b #$10 ; LINKSTATE 10

.dumb_thing_has_sfx
|07CA5A| STX.b $5D

|07CA5C| LDX.b #$10

|07CA5E| LDA.b $66
|07CA60| AND.b #$01
|07CA62| BNE .positive

|07CA64| LDX.b #$F0

.positive
|07CA66| STX.b $28

|07CA68| JSR CancelDash

|07CA6B| LDA.b #$02
|07CA6D| STA.b $4D

|07CA6F| LDA.b #$14
|07CA71| STA.w $0362
|07CA74| STA.w $0363

|07CA77| LDA.b #$FF
|07CA79| STA.w $0364

|07CA7C| STZ.b $46

|07CA7E| LDA.b #$01
|07CA80| STA.w $037B
|07CA83| STA.b $78

|07CA85| STZ.b $48
|07CA87| STZ.b $5E

|07CA89| RTS

;===================================================================================================

CheckLedgeTypes_Horizontal:
|07CA8A| LDA.w $036E
|07CA8D| AND.b #$70
|07CA8F| BEQ .dont_hop

|07CA91| LDA.w $036E
|07CA94| AND.b #$07
|07CA96| BNE .dont_hop

|07CA98| LDA.w $0370
|07CA9B| AND.b #$77
|07CA9D| BNE .dont_hop

|07CA9F| LDA.b $5D
|07CAA1| CMP.b #$0D ; LINKSTATE 0D
|07CAA3| BEQ .dont_hop

|07CAA5| JSR RunLedgeHopTimer
|07CAA8| BCC .dont_hop

|07CAAA| LDA.b #$20 ; SFX2.20
|07CAAC| JSR PlayLinkSFX2Panned

|07CAAF| JSR CancelDash

|07CAB2| LDA.b #$01
|07CAB4| STA.w $037B

|07CAB7| STZ.b $48
|07CAB9| STZ.b $5E

|07CABB| BRL FindValidLandingTile_DiagonalNorth

;---------------------------------------------------------------------------------------------------

.dont_hop
|07CABE| LDA.w $036F
|07CAC1| AND.b #$07
|07CAC3| BEQ .dont_quickhop

|07CAC5| LDA.w $036E
|07CAC8| AND.b #$07
|07CACA| BNE .dont_quickhop

|07CACC| LDA.w $0370
|07CACF| AND.b #$77
|07CAD1| BNE .dont_quickhop

|07CAD3| JSR RunLedgeHopTimer
|07CAD6| BCC .dont_quickhop

|07CAD8| LDX.b #$10

|07CADA| LDA.b $66
|07CADC| AND.b #$01
|07CADE| BNE .dont_invert

|07CAE0| TXA
|07CAE1| EOR.b #$FF
|07CAE3| INC A
|07CAE4| TAX

.dont_invert
|07CAE5| STX.b $28

|07CAE7| JSR CancelDash

|07CAEA| LDA.b #$02
|07CAEC| STA.b $4D

|07CAEE| LDA.b #$14
|07CAF0| STA.w $0362
|07CAF3| STA.w $0363

|07CAF6| LDA.b #$FF
|07CAF8| STA.w $0364

|07CAFB| LDA.b #$0E ; LINKSTATE 0E
|07CAFD| STA.b $5D

|07CAFF| STZ.b $46

|07CB01| LDA.b #$01
|07CB03| STA.w $037B
|07CB06| STA.b $78

|07CB08| STZ.b $48
|07CB0A| STZ.b $5E

|07CB0C| RTS

;---------------------------------------------------------------------------------------------------

.dont_quickhop
|07CB0D| LDA.b $0E
|07CB0F| AND.b #$02
|07CB11| BNE .slope_reset

|07CB13| LDA.b $0C
|07CB15| AND.b #$05
|07CB17| BEQ .slope_reset

|07CB19| LDA.w $0372
|07CB1C| BEQ .not_dashing

|07CB1E| LDA.b $2F
|07CB20| AND.b #$04
|07CB22| BEQ .slope_reset

.not_dashing
|07CB24| JSR FlagMovingIntoSlopes_Horizontal

|07CB27| LDA.b $6B
|07CB29| AND.b #$0F
|07CB2B| BEQ .slope_reset

|07CB2D| RTS

;---------------------------------------------------------------------------------------------------

.slope_reset
|07CB2E| STZ.b $6B

|07CB30| LDA.w $02E8
|07CB33| AND.b #$07
|07CB35| BEQ .didnt_hit_spike

|07CB37| LDA.b $55
|07CB39| BNE .invulnerable

|07CB3B| LDA.w $031F
|07CB3E| BNE .invulnerable

|07CB40| LDA.b $22

|07CB42| LDY.b $66
|07CB44| CPY.b #$02
|07CB46| BNE .invert_logic

|07CB48| AND.b #$04
|07CB4A| BEQ .take_damage
|07CB4C| BRA .didnt_hit_spike

.invert_logic
|07CB4E| AND.b #$04
|07CB50| BEQ .didnt_hit_spike

.take_damage
|07CB52| LDA.l $7EF35B
|07CB56| TAY

|07CB57| LDA.w SpikeDamageValues,Y
|07CB5A| STA.w $0373

|07CB5D| JSR CancelDash

|07CB60| BRL LinkApplyTileRebound

;---------------------------------------------------------------------------------------------------

.invulnerable
|07CB63| LDA.w $02E8
|07CB66| AND.b #$07
|07CB68| STA.b $0E

.didnt_hit_spike
|07CB6A| BRL HandlePushingBonkingSnaps_Horizontal

;===================================================================================================

SnapOnX:
|07CB6D| REP #$20

|07CB6F| LDA.b $22
|07CB71| AND.w #$0007

|07CB74| LDY.b $31
|07CB76| BPL .positive_x

|07CB78| SEC
|07CB79| SBC.w #$0008

.positive_x
|07CB7C| EOR.w #$FFFF
|07CB7F| INC A

|07CB80| CLC
|07CB81| ADC.b $22
|07CB83| STA.b $22

|07CB85| SEP #$20

|07CB87| RTS

;===================================================================================================

CalculateSnapScratch_Horizontal:
|07CB88| LDA.b $0E
|07CB8A| AND.b #$04
|07CB8C| BEQ .invert_if_negative

.invert_if_positive
|07CB8E| LDY.b #$01

|07CB90| LDA.b $31
|07CB92| BMI .negative_x

|07CB94| EOR.b #$FF
|07CB96| INC A

.negative_x
|07CB97| BPL .was_positive_a

|07CB99| LDY.b #$FF

.was_positive_a
|07CB9B| STY.b $00
|07CB9D| STZ.b $01

|07CB9F| BRA AddAbsoluteScratchToYCoord

.invert_if_negative
|07CBA1| LDY.b #$01

|07CBA3| LDA.b $31
|07CBA5| BPL .positive_x

|07CBA7| EOR.b #$FF
|07CBA9| INC A

.positive_x
|07CBAA| BPL .was_positive_b

|07CBAC| LDY.b #$FF

.was_positive_b
|07CBAE| STY.b $00
|07CBB0| STZ.b $01

;===================================================================================================

AddAbsoluteScratchToYCoord:
|07CBB2| REP #$20

|07CBB4| LDA.b $00
|07CBB6| CMP.w #$0080
|07CBB9| BCC .positive

|07CBBB| ORA.w #$FF00

.positive
|07CBBE| CLC
|07CBBF| ADC.b $20
|07CBC1| STA.b $20

|07CBC3| SEP #$20

|07CBC5| RTS

;===================================================================================================

ChangeAxisOfPerpendicularDoorMovement_Horizontal:
|07CBC6| LDA.b #$02
|07CBC8| TSB.b $50

|07CBCA| LDA.b $0E
|07CBCC| LSR A
|07CBCD| LSR A
|07CBCE| LSR A
|07CBCF| LSR A
|07CBD0| ORA.b $0E
|07CBD2| AND.b #$0F
|07CBD4| STA.b $00

|07CBD6| AND.b #$07
|07CBD8| BNE .dont_clear_doorway

|07CBDA| STZ.b $6C

|07CBDC| BRA .exit

;---------------------------------------------------------------------------------------------------

.dont_clear_doorway
|07CBDE| LDA.b $20
|07CBE0| CMP.b #$80
|07CBE2| BCC .y_low_positive

|07CBE4| LDA.b $31
|07CBE6| BMI .keep_negative_x

|07CBE8| EOR.b #$FF
|07CBEA| INC A

.keep_negative_x
|07CBEB| STA.b $00
|07CBED| STZ.b $01

|07CBEF| LDY.b #$00
|07CBF1| BRA .continue

;---------------------------------------------------------------------------------------------------

.y_low_positive
|07CBF3| LDA.b $31
|07CBF5| BPL .keep_positive_x

|07CBF7| EOR.b #$FF
|07CBF9| INC A

.keep_positive_x
|07CBFA| STA.b $00
|07CBFC| STZ.b $01

|07CBFE| LDY.b #$02

;---------------------------------------------------------------------------------------------------

.continue
|07CC00| LDA.b $50
|07CC02| AND.b #$01
|07CC04| BNE .cannot_turn

|07CC06| STY.b $2F

.cannot_turn
|07CC08| REP #$20

|07CC0A| LDA.b $00
|07CC0C| CMP.w #$0080
|07CC0F| BCC .positive

|07CC11| ORA.w #$FF00

.positive
|07CC14| CLC
|07CC15| ADC.b $20
|07CC17| STA.b $20

|07CC19| SEP #$20

.exit
|07CC1B| RTS

;===================================================================================================

pool HopInOrOutOfWater_Horizontal

.speed_x
|07CC1C| db 28, 24, 16

.speed_z
|07CC1F| db 32, 24, 24

.timer
|07CC22| db 16, 16, 16

endpool

;---------------------------------------------------------------------------------------------------

HopInOrOutOfWater_Horizontal:
|07CC25| LDA.b $1B
|07CC27| BNE .indoors

|07CC29| LDX.b #$02
|07CC2B| BRA .index_decided

.indoors
|07CC2D| LDX.b $1D
|07CC2F| LDA.w $047A
|07CC32| BEQ .index_decided

|07CC34| LDX.b #$00

.index_decided
|07CC36| STX.b $00

|07CC38| LDA.w .speed_x,X
|07CC3B| TAX

|07CC3C| LDA.b $66
|07CC3E| AND.b #$01
|07CC40| BNE .dont_invert

|07CC42| TXA
|07CC43| EOR.b #$FF
|07CC45| INC A
|07CC46| TAX

.dont_invert
|07CC47| STX.b $28

|07CC49| STZ.b $27

|07CC4B| LDX.b $00

|07CC4D| LDA.w .speed_z,X
|07CC50| STA.b $29
|07CC52| STA.w $02C7

|07CC55| LDA.w .timer,X
|07CC58| STA.b $46

|07CC5A| LDA.b $4D
|07CC5C| CMP.b #$02
|07CC5E| BEQ .dont_set_recoil

|07CC60| LDA.b #$01
|07CC62| STA.b $4D

|07CC64| STZ.w $0360

.dont_set_recoil
|07CC67| LDA.b #$06 ; LINKSTATE 06
|07CC69| STA.b $5D

|07CC6B| RTS

;===================================================================================================
; TODO teleports happen here
;===================================================================================================
DiagonalKickback:

.right
|07CC6C| db   0,   1,   1,   1
|07CC70| db   2,   2,   2,   3
|07CC74| db   3,   3

.left
|07CC76| db   0,  -1,  -1,  -1
|07CC7A| db  -2,  -2,  -2,  -3
|07CC7E| db  -3,  -3

.down
|07CC80| db   0,   0,   0,   1
|07CC84| db   1,   1,   2,   2
|07CC88| db   2,   3

.up
|07CC8A| db   0,   1,   1,   2
|07CC8E| db   2,   2,   3,   3
|07CC92| db   3,   3

;---------------------------------------------------------------------------------------------------

HandleLinkDiagonalKickback:
|07CC94| LDA.b $30
|07CC96| BEQ .no_y_velocity

|07CC98| LDA.b $31
|07CC9A| BNE .have_x_velocity

.no_y_velocity
|07CC9C| BRL ResetSlopeIntoFlagAndFailCache

.have_x_velocity
|07CC9F| LDA.b $20
|07CCA1| STA.w $02DE

|07CCA4| LDA.b $21
|07CCA6| STA.w $02DF

|07CCA9| LDA.b $22
|07CCAB| STA.w $02DC

|07CCAE| LDA.b $23
|07CCB0| STA.w $02DD

|07CCB3| LDY.b #$04

|07CCB5| LDA.b $31
|07CCB7| BMI .x_velocity_negative_a

|07CCB9| LDY.b #$06

.x_velocity_negative_a
|07CCBB| JSR TileDetectOnMovement_Horizontal

|07CCBE| LDA.b $0C
|07CCC0| AND.b #$05
|07CCC2| BEQ .nothing_flagged_for_x

|07CCC4| JSR FlagMovingIntoSlopes_Horizontal

|07CCC7| LDA.b $6B
|07CCC9| AND.b #$0F
|07CCCB| BNE .not_flagged_as_into_slope

.nothing_flagged_for_x
|07CCCD| BRL ResetSlopeIntoFlagAndFailCache

;---------------------------------------------------------------------------------------------------

.not_flagged_as_into_slope
|07CCD0| REP #$20

|07CCD2| LDA.b $22
|07CCD4| SEC
|07CCD5| SBC.w $02DC
|07CCD8| STA.b $00

|07CCDA| LDA.w $02DC
|07CCDD| STA.b $22

|07CCDF| SEP #$20

|07CCE1| LDA.b $00
|07CCE3| STA.b $31

;---------------------------------------------------------------------------------------------------

|07CCE5| LDY.b #$00

|07CCE7| LDA.b $30
|07CCE9| BMI .y_velocity_negative_a

|07CCEB| LDY.b #$02

.y_velocity_negative_a
|07CCED| JSR TileDetectOnMovement_Vertical

|07CCF0| LDA.b $0C
|07CCF2| AND.b #$05
|07CCF4| BEQ ResetSlopeIntoFlagAndFailCache

|07CCF6| JSR FlagMovingIntoSlopes_Vertical

|07CCF9| LDA.b $6B
|07CCFB| AND.b #$0F
|07CCFD| BEQ ResetSlopeIntoFlagAndFailCache

|07CCFF| LDA.b $6B
|07CD01| STA.b $6D

|07CD03| REP #$20

|07CD05| LDA.b $20
|07CD07| SEC
|07CD08| SBC.w $02DE
|07CD0B| STA.b $00

|07CD0D| SEP #$20

|07CD0F| LDA.b $00
|07CD11| STA.b $30

;---------------------------------------------------------------------------------------------------

|07CD13| LDY.b $31
|07CD15| BMI .x_velocity_negative_b

|07CD17| LDA.w DiagonalKickback.right,Y

|07CD1A| BRA .kickback_x_decided

.x_velocity_negative_b
|07CD1C| TYA
|07CD1D| EOR.b #$FF
|07CD1F| INC A
|07CD20| TAY

|07CD21| LDA.w DiagonalKickback.left,Y

.kickback_x_decided
|07CD24| REP #$20

|07CD26| AND.w #$00FF
|07CD29| CMP.w #$0080
|07CD2C| BCC .kickback_x_positive

|07CD2E| ORA.w #$FF00

.kickback_x_positive
|07CD31| CLC
|07CD32| ADC.b $22
|07CD34| STA.b $22

;---------------------------------------------------------------------------------------------------

|07CD36| SEP #$20

|07CD38| LDY.b $30
|07CD3A| BMI .y_velocity_negative_b

|07CD3C| LDA.w DiagonalKickback.down,Y

|07CD3F| BRA .kickback_y_decided

.y_velocity_negative_b
|07CD41| TYA
|07CD42| EOR.b #$FF
|07CD44| INC A
|07CD45| TAY

|07CD46| LDA.w DiagonalKickback.up,Y

.kickback_y_decided
|07CD49| REP #$20

|07CD4B| AND.w #$00FF
|07CD4E| CMP.w #$0080
|07CD51| BCC .kickback_y_positive

|07CD53| ORA.w #$FF00

.kickback_y_positive
|07CD56| CLC
|07CD57| ADC.b $20
|07CD59| STA.b $20

|07CD5B| SEP #$20

|07CD5D| BRA ResetSlopeIntoFlag

;===================================================================================================

ResetSlopeIntoFlagAndFailCache:
|07CD5F| STZ.b $6D

ResetSlopeIntoFlag:
|07CD61| STZ.b $6B

|07CD63| RTS

;===================================================================================================

TileDetectOnMovement:

.offset_same_axis
|07CD64| dw $0008, $0018, $0000, $000F

.offset_perpendicular_axis_1
|07CD6C| dw $0000, $0000

.offset_pit_y
|07CD70| dw $0008

.unused_a
|07CD72| dw $0008

.offset_perpendicular_axis_2
|07CD74| dw $0008, $0008, $0010, $0010

.offset_perpendicular_axis_3
|07CD7C| dw $000F, $000F

.offset_pit_x
|07CD80| dw $0017

.unused_b
|07CD82| dw $0017, $0000, $0000, $001F, $001F

.offset_slope_same_axis
|07CD8C| dw $0007, $0018, $FFFF, $0010

.offset_slope_perpendicular_axis_1
|07CD94| dw $0000, $0000, $0008, $0008

.offset_slope_perpendicular_axis_2
|07CD9C| dw $000F, $000F, $0017, $0017
|07CDA4| dw $0000, $0000, $0000, $000F
|07CDAC| dw $0000, $0000, $0012, $0012

;===================================================================================================

TileDetectOnMovement_Vertical:
|07CDB4| REP #$20

|07CDB6| JSR ResetTileDetect

|07CDB9| STZ.b $59

|07CDBB| LDA.b $20
|07CDBD| CLC
|07CDBE| ADC.w TileDetectOnMovement.offset_same_axis,Y
|07CDC1| STA.b $51

|07CDC3| AND.b $EC
|07CDC5| STA.b $00

|07CDC7| LDA.b $22
|07CDC9| CLC
|07CDCA| ADC.w TileDetectOnMovement.offset_perpendicular_axis_1,Y
|07CDCD| AND.b $EC

|07CDCF| LSR A
|07CDD0| LSR A
|07CDD1| LSR A
|07CDD2| STA.b $02

|07CDD4| LDA.b $22
|07CDD6| CLC
|07CDD7| ADC.w TileDetectOnMovement.offset_perpendicular_axis_2,Y
|07CDDA| AND.b $EC

|07CDDC| LSR A
|07CDDD| LSR A
|07CDDE| LSR A
|07CDDF| STA.b $04

|07CDE1| LDA.b $22
|07CDE3| CLC
|07CDE4| ADC.w TileDetectOnMovement.offset_perpendicular_axis_3,Y
|07CDE7| AND.b $EC

|07CDE9| LSR A
|07CDEA| LSR A
|07CDEB| LSR A
|07CDEC| STA.b $74

|07CDEE| REP #$10

|07CDF0| LDA.w #$0001
|07CDF3| STA.b $0A

|07CDF5| JSR ExecuteTileDetection

|07CDF8| LDA.b $04
|07CDFA| STA.b $02

|07CDFC| LDA.w #$0002
|07CDFF| STA.b $0A

|07CE01| JSR ExecuteTileDetection

|07CE04| LDA.b $74
|07CE06| STA.b $02

|07CE08| LDA.w #$0004
|07CE0B| STA.b $0A

|07CE0D| JSR ExecuteTileDetection

|07CE10| SEP #$30

|07CE12| RTS

;===================================================================================================

TileDetectOnMovement_Horizontal:
|07CE13| REP #$20

|07CE15| JSR ResetTileDetect

|07CE18| STZ.b $59

|07CE1A| LDA.b $22
|07CE1C| CLC
|07CE1D| ADC.w TileDetectOnMovement.offset_same_axis,Y
|07CE20| AND.b $EC

|07CE22| LSR A
|07CE23| LSR A
|07CE24| LSR A
|07CE25| STA.b $02

|07CE27| LDA.b $20
|07CE29| CLC
|07CE2A| ADC.w TileDetectOnMovement.offset_perpendicular_axis_1,Y
|07CE2D| AND.b $EC
|07CE2F| STA.b $00

|07CE31| LDA.b $20
|07CE33| CLC
|07CE34| ADC.w TileDetectOnMovement.offset_perpendicular_axis_2,Y
|07CE37| STA.b $51

|07CE39| AND.b $EC
|07CE3B| STA.b $04

|07CE3D| LDA.b $20
|07CE3F| CLC
|07CE40| ADC.w TileDetectOnMovement.offset_perpendicular_axis_3,Y
|07CE43| STA.b $53

|07CE45| AND.b $EC
|07CE47| STA.b $08

|07CE49| REP #$10

|07CE4B| LDA.w #$0001
|07CE4E| STA.b $0A

|07CE50| JSR ExecuteTileDetection

|07CE53| LDA.b $04
|07CE55| STA.b $00

|07CE57| LDA.w #$0002
|07CE5A| STA.b $0A

|07CE5C| JSR ExecuteTileDetection

|07CE5F| LDA.b $08
|07CE61| STA.b $00

|07CE63| LDA.w #$0004
|07CE66| STA.b $0A

|07CE68| JSR ExecuteTileDetection

|07CE6B| SEP #$30

|07CE6D| RTS

;===================================================================================================

TileDetectOnMovement_VerticalSlopes:
|07CE6E| REP #$20

|07CE70| JSR ResetTileDetect

|07CE73| STZ.b $59

|07CE75| LDA.b $20
|07CE77| CLC
|07CE78| ADC.w TileDetectOnMovement.offset_slope_same_axis,Y
|07CE7B| AND.b $EC
|07CE7D| STA.b $00

|07CE7F| LDA.b $22
|07CE81| CLC
|07CE82| ADC.w TileDetectOnMovement.offset_slope_perpendicular_axis_1,Y
|07CE85| AND.b $EC

|07CE87| LSR A
|07CE88| LSR A
|07CE89| LSR A
|07CE8A| STA.b $02

|07CE8C| LDA.b $22
|07CE8E| CLC
|07CE8F| ADC.w TileDetectOnMovement.offset_slope_perpendicular_axis_2,Y
|07CE92| AND.b $EC

|07CE94| LSR A
|07CE95| LSR A
|07CE96| LSR A
|07CE97| STA.b $04

|07CE99| REP #$10

|07CE9B| LDA.w #$0001
|07CE9E| STA.b $0A

|07CEA0| JSR ExecuteTileDetection

|07CEA3| LDA.b $04
|07CEA5| STA.b $02

|07CEA7| LDA.w #$0002
|07CEAA| STA.b $0A

|07CEAC| JSR ExecuteTileDetection

|07CEAF| SEP #$30

|07CEB1| RTS

;===================================================================================================

TileDetectOnMovement_HorizontalSlopes:
|07CEB2| REP #$20

|07CEB4| JSR ResetTileDetect

|07CEB7| STZ.b $59

|07CEB9| LDA.b $22
|07CEBB| CLC
|07CEBC| ADC.w TileDetectOnMovement.offset_slope_same_axis,Y
|07CEBF| AND.b $EC

|07CEC1| LSR A
|07CEC2| LSR A
|07CEC3| LSR A
|07CEC4| STA.b $02

|07CEC6| LDA.b $20
|07CEC8| CLC
|07CEC9| ADC.w TileDetectOnMovement.offset_slope_perpendicular_axis_1,Y
|07CECC| AND.b $EC
|07CECE| STA.b $00

|07CED0| LDA.b $20
|07CED2| CLC
|07CED3| ADC.w TileDetectOnMovement.offset_slope_perpendicular_axis_2,Y
|07CED6| AND.b $EC
|07CED8| STA.b $04

|07CEDA| REP #$10

|07CEDC| LDA.w #$0001
|07CEDF| STA.b $0A

|07CEE1| JSR ExecuteTileDetection

|07CEE4| LDA.b $04
|07CEE6| STA.b $00

|07CEE8| LDA.w #$0002
|07CEEB| STA.b $0A

|07CEED| JSR ExecuteTileDetection

|07CEF0| SEP #$30

|07CEF2| RTS

;===================================================================================================

TileDetect_BigArea_long:
|07CEF3| PHB
|07CEF4| PHK
|07CEF5| PLB

|07CEF6| JSR TileDetect_BigArea

|07CEF9| PLB

|07CEFA| RTL

;===================================================================================================

TileDetect_BigArea:
|07CEFB| STZ.b $59

|07CEFD| REP #$20

|07CEFF| JSR ResetTileDetect

|07CF02| LDA.b $22
|07CF04| CLC
|07CF05| ADC.w TileDetectOnMovement.offset_perpendicular_axis_1
|07CF08| AND.b $EC
|07CF0A| LSR A
|07CF0B| LSR A
|07CF0C| LSR A
|07CF0D| STA.b $02

|07CF0F| LDA.b $22
|07CF11| CLC
|07CF12| ADC.w TileDetectOnMovement.offset_perpendicular_axis_3
|07CF15| AND.b $EC
|07CF17| LSR A
|07CF18| LSR A
|07CF19| LSR A
|07CF1A| STA.b $04

|07CF1C| LDA.b $20
|07CF1E| CLC
|07CF1F| ADC.w TileDetectOnMovement.offset_pit_y
|07CF22| AND.b $EC
|07CF24| STA.b $00
|07CF26| STA.b $74

|07CF28| LDA.b $20
|07CF2A| CLC
|07CF2B| ADC.w TileDetectOnMovement.offset_pit_x
|07CF2E| AND.b $EC
|07CF30| STA.b $08

;===================================================================================================

TileDetect_FromMirrorBonk:
|07CF32| REP #$10

|07CF34| LDA.w #$0008
|07CF37| STA.b $0A

|07CF39| JSR ExecuteTileDetection

|07CF3C| LDA.b $08
|07CF3E| STA.b $00

|07CF40| LDA.w #$0002
|07CF43| STA.b $0A

|07CF45| JSR ExecuteTileDetection

|07CF48| LDA.b $74
|07CF4A| STA.b $00

|07CF4C| LDA.b $04
|07CF4E| STA.b $02

|07CF50| LDA.w #$0004
|07CF53| STA.b $0A

|07CF55| JSR ExecuteTileDetection

|07CF58| LDA.b $08
|07CF5A| STA.b $00

|07CF5C| LDA.w #$0001
|07CF5F| STA.b $0A

|07CF61| JSR ExecuteTileDetection

|07CF64| SEP #$30

|07CF66| RTS

;===================================================================================================

TileDetect_UnusedIce:
|07CF67| STZ.b $59

|07CF69| REP #$20

|07CF6B| JSR ResetTileDetect

|07CF6E| LDA.b $22
|07CF70| CLC
|07CF71| ADC.w #$0000

|07CF74| AND.b $EC
|07CF76| LSR A
|07CF77| LSR A
|07CF78| LSR A
|07CF79| STA.b $02

|07CF7B| LDA.b $22
|07CF7D| CLC
|07CF7E| ADC.w #$0008

|07CF81| AND.b $EC
|07CF83| LSR A
|07CF84| LSR A
|07CF85| LSR A
|07CF86| STA.b $04

;---------------------------------------------------------------------------------------------------

|07CF88| LDA.b $24
|07CF8A| AND.w #$00FF
|07CF8D| CMP.w #$00FF
|07CF90| BNE .not_grounded

|07CF92| LDA.w #$0000

.not_grounded
|07CF95| CLC
|07CF96| ADC.b $20
|07CF98| AND.b $EC
|07CF9A| STA.b $00

;---------------------------------------------------------------------------------------------------

|07CF9C| REP #$10

|07CF9E| LDA.w #$0001
|07CFA1| STA.b $0A

|07CFA3| JSR ExecuteTileDetection

|07CFA6| LDA.b $04
|07CFA8| STA.b $02

|07CFAA| LDA.w #$0002
|07CFAD| STA.b $0A

|07CFAF| JSR ExecuteTileDetection

|07CFB2| SEP #$30

|07CFB4| RTS

;===================================================================================================

pool TileDetect_MainHandler

.offset_y
|07CFB5| dw  20,  20,  20,  20
|07CFBD| dw   4,  28,  16,  16
|07CFC5| dw  22,  22,  22,  22
|07CFCD| dw   4,  24,  16,  16
|07CFD5| dw  16,  16,  16,  16
|07CFDD| dw  20,  20,  23,  23
|07CFE5| dw  -4,  36,  16,  16
|07CFED| dw   4,  28,  16,  16
|07CFF5| dw   4,  28,  16,  16
|07CFFD| dw   4,   4,  28,  28

.offset_x
|07D005| dw   8,   8,   8,   8
|07D00D| dw   6,   8,  -1,  22
|07D015| dw  19,  19,   0,  19
|07D01D| dw   6,   8,  -1,  22
|07D025| dw   8,   8,   8,   8
|07D02D| dw   8,   8,   0,  15
|07D035| dw   6,   8, -10,  29
|07D03D| dw   6,   8,  -6,  22
|07D045| dw   6,   8,  -4,  22
|07D04D| dw  -4,  22,  -4,  22

;---------------------------------------------------------------------------------------------------

.spike_floor_damage
|07D055| db $08 ; green
|07D056| db $08 ; blue
|07D057| db $08 ; red

;---------------------------------------------------------------------------------------------------

.index_offset
|07D058| db $0A, $06, $0E, $02
|07D05C| db $0C, $04, $08, $00

endpool

;---------------------------------------------------------------------------------------------------
; uses an input in Y register - TODO finish identifying
;   00 - 
;   01 - sword/powder
;   02 - shovel
;   03 - Hammer
;   04 - pit state
;   05 - hookshot/recoil
;   06 - sword swing
;   07 - dashing
;   08 - spin attack
;---------------------------------------------------------------------------------------------------
TileDetect_MainHandler:
|07D060| STZ.b $59 ; clear pits

|07D062| REP #$20

|07D064| JSR ResetTileDetect

|07D067| STY.b $00

|07D069| CPY.b #$08
|07D06B| BNE .direction_based

|07D06D| LDA.w $031C
|07D070| AND.w #$00FF
|07D073| DEC A
|07D074| DEC A
|07D075| BMI .dirty_exit

|07D077| CMP.w #$0008
|07D07A| BCS .dirty_exit

|07D07C| PHY
|07D07D| TAY

|07D07E| LDA.w .index_offset,Y
|07D081| AND.w #$00FF
|07D084| CLC
|07D085| ADC.w #$0040
|07D088| TAY

|07D089| BRA .calculate_offset

.direction_based
|07D08B| PHY

|07D08C| LDA.b $00
|07D08E| AND.w #$00FF
|07D091| ASL A
|07D092| ASL A
|07D093| ASL A
|07D094| CLC
|07D095| ADC.b $2F
|07D097| TAY

;---------------------------------------------------------------------------------------------------

.calculate_offset
|07D098| LDA.b $22
|07D09A| CLC
|07D09B| ADC.w .offset_x,Y

|07D09E| AND.b $EC
|07D0A0| LSR A
|07D0A1| LSR A
|07D0A2| LSR A
|07D0A3| STA.b $02

|07D0A5| LDA.b $20
|07D0A7| CLC
|07D0A8| ADC.w .offset_y,Y
|07D0AB| AND.b $EC
|07D0AD| STA.b $00

;---------------------------------------------------------------------------------------------------

|07D0AF| LDA.w #$0001
|07D0B2| STA.b $0A

|07D0B4| PLY

|07D0B5| REP #$10

|07D0B7| TYA
|07D0B8| CMP.w #$0001
|07D0BB| BEQ .detect_from_item

|07D0BD| CMP.w #$0002
|07D0C0| BEQ .detect_from_item

|07D0C2| CMP.w #$0003
|07D0C5| BEQ .detect_from_item

|07D0C7| CMP.w #$0006
|07D0CA| BEQ .detect_from_item

|07D0CC| CMP.w #$0007
|07D0CF| BEQ .detect_from_item

|07D0D1| CMP.w #$0008
|07D0D4| BEQ .detect_from_item

|07D0D6| PHY

|07D0D7| JSR ExecuteTileDetection

|07D0DA| PLY

|07D0DB| BRA .continue_from_detection

.detect_from_item
|07D0DD| SEP #$30

|07D0DF| JSR TileBehavior_HandleItemAndExecute

;---------------------------------------------------------------------------------------------------

.dirty_exit
|07D0E2| SEP #$30

.proceed_to_exit
|07D0E4| BRL .exit

;---------------------------------------------------------------------------------------------------

.continue_from_detection
|07D0E7| SEP #$30

|07D0E9| CPY.b #$05
|07D0EB| BEQ .proceed_to_exit

|07D0ED| LDA.w $0357
|07D0F0| AND.b #$10
|07D0F2| BEQ .no_warp_tile

|07D0F4| LDA.b $20
|07D0F6| CLC
|07D0F7| ADC.b #$08
|07D0F9| AND.b #$0F
|07D0FB| CMP.b #$04
|07D0FD| BCC .check_warp_x

|07D0FF| CMP.b #$0B
|07D101| BCC .dont_attempt_to_warp

.check_warp_x
|07D103| LDA.b $22
|07D105| AND.b #$0F
|07D107| CMP.b #$04
|07D109| BCC .okay_x_position

|07D10B| CMP.b #$0C
|07D10D| BCC .dont_attempt_to_warp

.okay_x_position
|07D10F| LDA.w $031F
|07D112| BNE .dont_attempt_to_warp

|07D114| LDA.b $4D
|07D116| BNE .dont_attempt_to_warp

|07D118| LDA.b $1B
|07D11A| BEQ .try_overworld_warp

|07D11C| JSL FullyUpdateRoomFlags

|07D120| LDA.b #$33 ; SFX2.33
|07D122| JSR PlayLinkSFX2Panned

|07D125| STZ.b $5E

|07D127| LDA.b #$15
|07D129| STA.b $11

|07D12B| LDA.b $A0
|07D12D| STA.b $A2

|07D12F| LDA.l $7EC000
|07D133| STA.b $A0

|07D135| JSR HandleLayerOfDestination
|07D138| BRA .dont_attempt_to_warp

;---------------------------------------------------------------------------------------------------

.try_overworld_warp
|07D13A| LDA.w $02DB
|07D13D| BNE .dont_attempt_to_warp

|07D13F| JSR AttemptMirrorWarp

.dont_attempt_to_warp
|07D142| BRL .clear_tall_grass_flag

;---------------------------------------------------------------------------------------------------

.no_warp_tile
|07D145| STZ.w $02DB

|07D148| LDA.w $0357
|07D14B| AND.b #$01
|07D14D| BEQ .not_in_tall_grass

|07D14F| LDA.b #$02
|07D151| STA.w $0351

|07D154| JSR GetPermissionForSloshSounds
|07D157| BCS .jump_to_exit

|07D159| LDA.b $4D
|07D15B| BNE .jump_to_exit

|07D15D| LDA.b #$1A ; SFX2.1A
|07D15F| JSR PlayLinkSFX2Panned

.jump_to_exit
|07D162| BRL .exit

;---------------------------------------------------------------------------------------------------

.not_in_tall_grass
|07D165| LDA.w $0359
|07D168| AND.b #$01
|07D16A| BEQ .not_in_shallow_water

|07D16C| LDA.b #$01
|07D16E| STA.w $0351

|07D171| LDA.b $1B
|07D173| BNE .try_splash_noise

|07D175| LDA.w $0345
|07D178| BEQ .try_splash_noise

|07D17A| LDA.w $02E0
|07D17D| BNE .try_splash_noise

|07D17F| LDA.l $7EF356
|07D183| BEQ .jump_to_exit

|07D185| STZ.w $0345

|07D188| LDA.w $0340
|07D18B| STA.b $26

|07D18D| LDA.b #$00 ; LINKSTATE 00
|07D18F| STA.b $5D

|07D191| BRL .exit

;---------------------------------------------------------------------------------------------------

.try_splash_noise
|07D194| JSR GetPermissionForSloshSounds
|07D197| BCS .no_sound_allowed

|07D199| LDA.b $8A
|07D19B| CMP.b #$70 ; OW 70
|07D19D| BNE .not_mire_splash

|07D19F| LDA.b #$1B ; SFX2.1B
|07D1A1| JSR PlayLinkSFX2Panned

|07D1A4| BRA .no_sound_allowed

;---------------------------------------------------------------------------------------------------

.not_mire_splash
|07D1A6| LDA.b $4D
|07D1A8| BNE .no_sound_allowed

|07D1AA| LDA.b #$1C ; SFX2.1C
|07D1AC| JSR PlayLinkSFX2Panned

.no_sound_allowed
|07D1AF| BRL .exit

;---------------------------------------------------------------------------------------------------

.not_in_shallow_water
|07D1B2| LDA.b $1B
|07D1B4| BNE .clear_tall_grass_flag

|07D1B6| LDA.w $0345
|07D1B9| BNE .clear_tall_grass_flag

|07D1BB| LDA.w $0341
|07D1BE| AND.b #$01
|07D1C0| BEQ .clear_tall_grass_flag

|07D1C2| LDA.b #$01
|07D1C4| STA.w $0351

|07D1C7| JSR GetPermissionForSloshSounds
|07D1CA| BCS .no_sloshing_sounds

|07D1CC| LDA.b $8A
|07D1CE| CMP.b #$70 ; OW 70
|07D1D0| BNE .not_mire_again

|07D1D2| LDA.b #$1B ; SFX2.1B
|07D1D4| JSR PlayLinkSFX2Panned

|07D1D7| BRA .no_sloshing_sounds

;---------------------------------------------------------------------------------------------------

.not_mire_again
|07D1D9| LDA.b $4D
|07D1DB| BNE .no_sloshing_sounds

|07D1DD| LDA.b #$1C ; SFX2.1C
|07D1DF| JSR PlayLinkSFX2Panned

.no_sloshing_sounds
|07D1E2| BRL .exit

;---------------------------------------------------------------------------------------------------

.clear_tall_grass_flag
|07D1E5| STZ.w $0351

|07D1E8| LDA.w $02EE
|07D1EB| AND.b #$01
|07D1ED| BEQ .not_near_desert_trigger

|07D1EF| LDA.b #$01
|07D1F1| STA.w $02ED

|07D1F4| BRL .exit

;---------------------------------------------------------------------------------------------------

.not_near_desert_trigger
|07D1F7| STZ.w $02ED

|07D1FA| LDA.w $02EE
|07D1FD| AND.b #$10
|07D1FF| BEQ .not_touching_spikes

|07D201| STZ.w $0373

|07D204| LDA.b $55
|07D206| BNE .not_touching_spikes

|07D208| JSR SearchForByrnaSpark
|07D20B| BCS .not_touching_spikes

|07D20D| LDA.w $031F
|07D210| BNE .not_touching_spikes

|07D212| STZ.w $03F7
|07D215| STZ.w $03F5
|07D218| STZ.w $03F6

|07D21B| LDA.l $7EF357
|07D21F| BEQ .no_moon_pearl

|07D221| STZ.b $56
|07D223| STZ.w $02E0

.no_moon_pearl
|07D226| LDA.l $7EF35B
|07D22A| TAY

|07D22B| LDA.w .spike_floor_damage,Y
|07D22E| STA.w $0373

|07D231| BRL CancelDash

;---------------------------------------------------------------------------------------------------

.not_touching_spikes
|07D234| LDA.w $0348
|07D237| AND.b #$11
|07D239| BEQ .not_on_any_ice

; how would this work out?
|07D23B| LDA.w $034A
|07D23E| BEQ .not_gt_or_ip_ice

|07D240| LDA.b $6A
|07D242| BEQ .finish_up

|07D244| LDA.w $0340
|07D247| STA.b $26

|07D249| BRL .finish_up

;---------------------------------------------------------------------------------------------------

.not_gt_or_ip_ice
|07D24C| LDA.b $67
|07D24E| AND.b #$0C
|07D250| BEQ .velocity_not_up_or_down

|07D252| LDA.b #$01
|07D254| STA.w $033D

|07D257| LDA.b #$80
|07D259| STA.w $033C

.velocity_not_up_or_down
|07D25C| LDA.b $67
|07D25E| AND.b #$03
|07D260| BEQ .velocity_not_left_or_right

|07D262| LDA.b #$01
|07D264| STA.w $033D

|07D267| LDA.b #$80
|07D269| STA.w $033C

.velocity_not_left_or_right
|07D26C| LDY.b #$01

|07D26E| LDA.w $0348
|07D271| AND.b #$01
|07D273| BNE .set_to_gt_ice

|07D275| LDY.b #$02

.set_to_gt_ice
|07D277| STY.w $034A

|07D27A| LDA.b $26
|07D27C| STA.w $0340

|07D27F| JSL ResetSwimmingState
|07D283| BRL .finish_up

;---------------------------------------------------------------------------------------------------

.not_on_any_ice
|07D286| LDA.b $5D
|07D288| CMP.b #$04 ; LINKSTATE 04
|07D28A| BEQ .swimming

|07D28C| LDA.w $034A
|07D28F| BEQ .not_on_ice_yet

|07D291| LDA.w $0340
|07D294| STA.b $26

.not_on_ice_yet
|07D296| JSL ResetSwimmingState

.swimming
|07D29A| STZ.w $034A

;---------------------------------------------------------------------------------------------------

.finish_up
|07D29D| LDA.w $02E8
|07D2A0| AND.b #$10
|07D2A2| BEQ .exit

|07D2A4| LDA.w $031F
|07D2A7| BNE .exit

|07D2A9| LDA.b #$3A
|07D2AB| STA.w $031F

.exit
|07D2AE| RTS

;===================================================================================================

GetPermissionForSloshSounds:
|07D2AF| LDA.b $67
|07D2B1| AND.b #$0F
|07D2B3| BEQ .fail

|07D2B5| LDA.b $5D
|07D2B7| CMP.b #$11 ; LINKSTATE 11
|07D2B9| BEQ .dashing

|07D2BB| LDA.b $1A
|07D2BD| AND.b #$0F
|07D2BF| BEQ .succeed

|07D2C1| BRA .fail

.dashing
|07D2C3| LDA.b $1A
|07D2C5| AND.b #$07
|07D2C7| BNE .fail

.succeed
|07D2C9| CLC

|07D2CA| RTS

.fail
|07D2CB| SEC

|07D2CC| RTS

;===================================================================================================

pool AttemptToPushTheBlock

.target_offset_y_a
|07D2CD| dw $FFFC ; up
|07D2CF| dw $0014 ; down
|07D2D1| dw $0004 ; left
|07D2D3| dw $0004 ; right

.target_offset_y_b
|07D2D5| dw $FFFC ; up
|07D2D7| dw $0014 ; down
|07D2D9| dw $000C ; left
|07D2DB| dw $000C ; right

.target_offset_x_a
|07D2DD| dw $0004 ; up
|07D2DF| dw $0004 ; down
|07D2E1| dw $FFFC ; left
|07D2E3| dw $0014 ; right

.target_offset_x_b
|07D2E5| dw $000C ; up
|07D2E7| dw $000C ; down
|07D2E9| dw $FFFC ; left
|07D2EB| dw $0014 ; right

endpool

;---------------------------------------------------------------------------------------------------

AttemptToPushTheBlock:
|07D2ED| REP #$20

; !WEIRD
; This always enters with Y=00 though
; If I change it to 1, I can't push blocks to the left
|07D2EF| TYA
|07D2F0| ASL A
|07D2F1| ASL A
|07D2F2| ASL A
|07D2F3| STA.b $0A

|07D2F5| LDA.b $66
|07D2F7| ASL A
|07D2F8| CLC
|07D2F9| ADC.b $0A
|07D2FB| TAY

|07D2FC| LDA.b $00
|07D2FE| STA.b $08

|07D300| LDA.b $02
|07D302| STA.b $04

|07D304| LDA.b $08
|07D306| CLC
|07D307| ADC.w .target_offset_x_a,Y
|07D30A| AND.b $EC

|07D30C| LSR A
|07D30D| LSR A
|07D30E| LSR A
|07D30F| STA.b $02

|07D311| LDA.b $04
|07D313| CLC
|07D314| ADC.w .target_offset_y_a,Y
|07D317| AND.b $EC
|07D319| STA.b $00

|07D31B| JSR PushBlock_GetGeneralizedTileInteractionOfTarget
|07D31E| BEQ .no_blockage

; special case for shallow water
|07D320| CPX.w #$0009 ; TILETYPE 09
|07D323| BNE .cannot_push

.no_blockage
|07D325| LDA.b $08
|07D327| CLC
|07D328| ADC.w .target_offset_x_b,Y
|07D32B| AND.b $EC
|07D32D| LSR A
|07D32E| LSR A
|07D32F| LSR A
|07D330| STA.b $02

|07D332| LDA.b $04
|07D334| CLC
|07D335| ADC.w .target_offset_y_b,Y
|07D338| AND.b $EC
|07D33A| STA.b $00

|07D33C| JSR PushBlock_GetGeneralizedTileInteractionOfTarget
|07D33F| BEQ .can_push

; special case for shallow water
|07D341| CPX.w #$0009 ; TILETYPE 09
|07D344| BNE .cannot_push

;---------------------------------------------------------------------------------------------------

.can_push
|07D346| SEP #$30
|07D348| CLC

|07D349| RTS

.cannot_push
|07D34A| SEP #$30
|07D34C| SEC

|07D34D| RTS

;===================================================================================================

LiftableCheckOffset_Y:
|07D34E| dw  6
|07D350| dw 24
|07D352| dw 12
|07D354| dw 12

LiftableCheckOffset_X:
|07D356| dw  7
|07D358| dw  7
|07D35A| dw -3
|07D35C| dw 16

;===================================================================================================

LiftableGloveLevels:
|07D35E| db $00 ; sign
|07D35F| db $01 ; small gray rock
|07D360| db $00 ; bush
|07D361| db $00 ; dark bush
|07D362| db $02 ; small black rock
|07D363| db $01 ; big gray rock
|07D364| db $02 ; big black rock

LiftableTypeID:
|07D365| db $02 ; sign
|07D366| db $03 ; small gray rock
|07D367| db $01 ; bush
|07D368| db $04 ; dark bush
|07D369| db $00 ; small black rock
|07D36A| db $05 ; big gray rock
|07D36B| db $06 ; big black rock

;===================================================================================================

HandleLiftables:
|07D36C| STZ.b $59

|07D36E| REP #$20

|07D370| JSR ResetTileDetect

|07D373| LDA.b $2F
|07D375| TAY

|07D376| LDA.b $20
|07D378| CLC
|07D379| ADC.w LiftableCheckOffset_Y,Y
|07D37C| AND.b $EC
|07D37E| STA.b $00

|07D380| LDA.b $20
|07D382| CLC
|07D383| ADC.w #$0014
|07D386| AND.b $EC
|07D388| STA.b $04

|07D38A| LDA.b $22
|07D38C| CLC
|07D38D| ADC.w LiftableCheckOffset_X,Y
|07D390| AND.b $EC

|07D392| LSR A
|07D393| LSR A
|07D394| LSR A

|07D395| STA.b $02

|07D397| LDA.b $22
|07D399| CLC
|07D39A| ADC.w #$0008
|07D39D| AND.b $EC

|07D39F| LSR A
|07D3A0| LSR A
|07D3A1| LSR A

|07D3A2| STA.b $08

;---------------------------------------------------------------------------------------------------

|07D3A4| LDA.w #$0001
|07D3A7| STA.b $0A

|07D3A9| REP #$10

|07D3AB| JSR ExecuteTileDetection

|07D3AE| LDA.b $04
|07D3B0| STA.b $00

|07D3B2| LDA.b $08
|07D3B4| STA.b $02

|07D3B6| LDA.w #$0002
|07D3B9| STA.b $0A

|07D3BB| JSR ExecuteTileDetection

|07D3BE| SEP #$30

|07D3C0| LDX.b #$02

|07D3C2| LDA.b $0E
|07D3C4| ORA.w $036D
|07D3C7| AND.b #$01
|07D3C9| BEQ .no_north_ledge

|07D3CB| LDX.b #$03

.no_north_ledge
|07D3CD| LDA.b $1B
|07D3CF| BEQ .outdoors

|07D3D1| PHX

|07D3D2| JSL TestAndIDLiftableObject
|07D3D6| BCC .not_liftable

|07D3D8| PLX

|07D3D9| AND.b #$0F
|07D3DB| TAY

|07D3DC| LDA.w LiftableTypeID,Y
|07D3DF| STA.w $0368

|07D3E2| TAY

|07D3E3| BRA .check_lift_level

;---------------------------------------------------------------------------------------------------

.not_liftable
|07D3E5| PLX

|07D3E6| LDA.w $0366
|07D3E9| AND.b #$01
|07D3EB| BEQ .move_on

|07D3ED| LDA.b $2F
|07D3EF| BNE .move_on

|07D3F1| LDA.w $036A
|07D3F4| BNE .move_on

|07D3F6| LDX.b #$04

.move_on
|07D3F8| BRA .continue

;---------------------------------------------------------------------------------------------------

.outdoors
|07D3FA| LDA.w $0366
|07D3FD| AND.b #$01
|07D3FF| BEQ .continue

|07D401| LDA.b $2F
|07D403| BNE .run_check

|07D405| LDA.w $036A
|07D408| BNE .run_check

|07D40A| LDX.b #$04

|07D40C| BRA .continue

;---------------------------------------------------------------------------------------------------

.run_check
|07D40E| LDA.w $036A
|07D411| LSR A
|07D412| STA.w $0368

|07D415| TAY

.check_lift_level
|07D416| LDA.w LiftableGloveLevels,Y
|07D419| SEC
|07D41A| SBC.l $7EF354
|07D41E| BEQ .no_gloves
|07D420| BPL .continue

.no_gloves
|07D422| LDX.b #$01

;---------------------------------------------------------------------------------------------------

.continue
|07D424| LDA.w $02E5
|07D427| AND.b #$01
|07D429| BEQ .exit

|07D42B| LDX.b #$05

.exit
|07D42D| RTS

;===================================================================================================

pool HandleNudging

.offset_y_top
|07D42E| dw $0008, $0008, $0017, $0017
|07D436| dw $0008, $0017, $0008, $0017

.offset_x_top
|07D43E| dw $0000, $000F, $0000, $000F
|07D446| dw $0000, $0000, $000F, $000F

.offset_y_bottom
|07D44E| dw $0017, $0017, $0008, $0008
|07D456| dw $0008, $0017, $0008, $0017

.offset_x_bottom
|07D45E| dw $0000, $000F, $0000, $000F
|07D466| dw $000F, $000F, $0000, $0000

endpool

;---------------------------------------------------------------------------------------------------

HandleNudging:
|07D46E| LDA.b $00
|07D470| PHA

|07D471| LDA.b $66
|07D473| AND.b #$02
|07D475| BNE .horizontal_last

|07D477| LDX.b #$00

|07D479| LDA.b $66
|07D47B| AND.b #$01
|07D47D| BEQ .not_down_last

|07D47F| LDX.b #$04

.not_down_last
|07D481| LDY.b #$00

|07D483| LDA.b $0E
|07D485| AND.b #$04
|07D487| BNE .not_down

|07D489| LDY.b #$02

.not_down
|07D48B| STY.b $00

|07D48D| BRA .do_detection

;---------------------------------------------------------------------------------------------------

.horizontal_last
|07D48F| LDX.b #$08

|07D491| LDA.b $66
|07D493| AND.b #$01
|07D495| BEQ .was_not_down_last

|07D497| LDX.b #$0C

.was_not_down_last
|07D499| LDY.b #$00

|07D49B| LDA.b $0E
|07D49D| AND.b #$04
|07D49F| BNE .not_right

|07D4A1| LDY.b #$02

.not_right
|07D4A3| STY.b $00

;---------------------------------------------------------------------------------------------------

.do_detection
|07D4A5| TXA
|07D4A6| CLC
|07D4A7| ADC.b $00
|07D4A9| TAY

|07D4AA| STZ.b $59

|07D4AC| REP #$20

|07D4AE| JSR ResetTileDetect

|07D4B1| LDA.b $20
|07D4B3| CLC
|07D4B4| ADC.w .offset_y_top,Y
|07D4B7| AND.b $EC
|07D4B9| STA.b $00

|07D4BB| LDA.b $22
|07D4BD| CLC
|07D4BE| ADC.w .offset_x_top,Y
|07D4C1| AND.b $EC
|07D4C3| LSR A
|07D4C4| LSR A
|07D4C5| LSR A
|07D4C6| STA.b $02

|07D4C8| LDA.b $20
|07D4CA| CLC
|07D4CB| ADC.w .offset_y_bottom,Y
|07D4CE| AND.b $EC
|07D4D0| STA.b $04

|07D4D2| LDA.b $22
|07D4D4| CLC
|07D4D5| ADC.w .offset_x_bottom,Y
|07D4D8| AND.b $EC
|07D4DA| LSR A
|07D4DB| LSR A
|07D4DC| LSR A
|07D4DD| STA.b $08

|07D4DF| LDA.w #$0001
|07D4E2| STA.b $0A

|07D4E4| REP #$10

|07D4E6| JSR ExecuteTileDetection

|07D4E9| LDA.b $04
|07D4EB| STA.b $00

|07D4ED| LDA.b $08
|07D4EF| STA.b $02

|07D4F1| LDA.w #$0002
|07D4F4| STA.b $0A

|07D4F6| JSR ExecuteTileDetection

|07D4F9| SEP #$30

|07D4FB| PLA
|07D4FC| STA.b $00

|07D4FE| LDA.b $0E
|07D500| ORA.w $036E
|07D503| AND.b #$03
|07D505| BNE .horizontal_ledges_detected

|07D507| LDA.w $036D
|07D50A| ORA.w $0370
|07D50D| AND.b #$33
|07D50F| BEQ .exit

.horizontal_ledges_detected
|07D511| LDY.b #$00

|07D513| LDA.b $00
|07D515| EOR.b #$FF
|07D517| INC A
|07D518| STA.b $00

|07D51A| CMP.b #$80
|07D51C| BCC .positive_velocity

|07D51E| LDY.b #$FF

.positive_velocity
|07D520| STY.b $01

|07D522| LDA.b $66
|07D524| AND.b #$02
|07D526| BEQ .add_on_x

|07D528| REP #$20

|07D52A| LDA.b $00
|07D52C| CLC
|07D52D| ADC.b $20
|07D52F| STA.b $20

|07D531| BRA .exit

;---------------------------------------------------------------------------------------------------

.add_on_x
|07D533| REP #$20

|07D535| LDA.b $00
|07D537| CLC
|07D538| ADC.b $22
|07D53A| STA.b $22

.exit
|07D53C| SEP #$20

|07D53E| RTS

;===================================================================================================

pool Hookshot_CheckTileCollision

.offsets_a
|07D53F| dw   0,   0
|07D543| dw   7,   7
|07D547| dw   0,  15
|07D54B| dw   0,  15

.offsets_b
|07D54F| dw   0,  15
|07D553| dw   0,  15
|07D557| dw   0,   0
|07D55B| dw   8,   8

endpool

;---------------------------------------------------------------------------------------------------

Hookshot_CheckTileCollision:
|07D55F| PHB
|07D560| PHK
|07D561| PLB

; save room ID
|07D562| LDA.b $A0
|07D564| PHA

; save layer
|07D565| LDA.b $EE
|07D567| PHA

|07D568| LDA.w $03A4,X
|07D56B| BEQ .dont_swap_layers

|07D56D| LDA.w $044A ; EG0
|07D570| BNE .not_eg0

; Down a room if EG0
|07D572| LDA.b $A0
|07D574| CLC
|07D575| ADC.b #$10
|07D577| STA.b $A0

; Otherwise, swap layers
.not_eg0
|07D579| LDA.b $EE
|07D57B| EOR.b #$01
|07D57D| STA.b $EE

;---------------------------------------------------------------------------------------------------

.dont_swap_layers
; Cache coordinates and direction
|07D57F| LDA.w $0BFA,X
|07D582| STA.b $04

|07D584| LDA.w $0C0E,X
|07D587| STA.b $05

|07D589| LDA.w $0C04,X
|07D58C| STA.b $08

|07D58E| LDA.w $0C18,X
|07D591| STA.b $09

|07D593| LDA.w $0C72,X
|07D596| ASL A
|07D597| ASL A
|07D598| STA.b $73

;---------------------------------------------------------------------------------------------------

|07D59A| PHX

|07D59B| STZ.b $59

|07D59D| REP #$20

|07D59F| JSR ResetTileDetect

|07D5A2| SEP #$20

|07D5A4| LDA.w $046C
|07D5A7| CMP.b #$02
|07D5A9| BNE .only_1_layer

;---------------------------------------------------------------------------------------------------

|07D5AB| LDA.b $04
|07D5AD| PHA

|07D5AE| LDA.b $05
|07D5B0| PHA

|07D5B1| LDA.b $08
|07D5B3| PHA

|07D5B4| LDA.b $09
|07D5B6| PHA

|07D5B7| LDA.b #$01
|07D5B9| STA.b $EE

;---------------------------------------------------------------------------------------------------

|07D5BB| REP #$20

|07D5BD| LDA.b $E6
|07D5BF| SEC
|07D5C0| SBC.b $E8

|07D5C2| CLC
|07D5C3| ADC.b $04
|07D5C5| STA.b $04

|07D5C7| LDA.b $E0
|07D5C9| SEC
|07D5CA| SBC.b $E2

|07D5CC| CLC
|07D5CD| ADC.b $08
|07D5CF| STA.b $08

;---------------------------------------------------------------------------------------------------

|07D5D1| SEP #$20

|07D5D3| JSR Hookshot_CheckSingleLayerTileCollision

|07D5D6| PLA
|07D5D7| STA.b $09

|07D5D9| PLA
|07D5DA| STA.b $08

|07D5DC| PLA
|07D5DD| STA.b $05

|07D5DF| PLA
|07D5E0| STA.b $04

|07D5E2| STZ.b $EE

;---------------------------------------------------------------------------------------------------

.only_1_layer
|07D5E4| JSR Hookshot_CheckSingleLayerTileCollision

|07D5E7| PLX

|07D5E8| PLA
|07D5E9| STA.b $EE

|07D5EB| PLA
|07D5EC| STA.b $A0

|07D5EE| PLB

|07D5EF| RTL

;===================================================================================================

Hookshot_CheckSingleLayerTileCollision:
|07D5F0| REP #$20

; direction in Y
|07D5F2| LDA.b $73
|07D5F4| TAY

;---------------------------------------------------------------------------------------------------

; add offsets for each direction
|07D5F5| LDA.b $04
|07D5F7| CLC
|07D5F8| ADC.w Hookshot_CheckTileCollision.offsets_a+0,Y
|07D5FB| AND.b $EC
|07D5FD| STA.b $00

|07D5FF| LDA.b $04
|07D601| CLC
|07D602| ADC.w Hookshot_CheckTileCollision.offsets_a+2,Y
|07D605| AND.b $EC
|07D607| STA.b $04

;---------------------------------------------------------------------------------------------------

|07D609| LDA.b $08
|07D60B| CLC
|07D60C| ADC.w Hookshot_CheckTileCollision.offsets_b+0,Y
|07D60F| AND.b $EC

|07D611| LSR A
|07D612| LSR A
|07D613| LSR A
|07D614| STA.b $02


|07D616| LDA.b $08
|07D618| CLC
|07D619| ADC.w Hookshot_CheckTileCollision.offsets_b+2,Y
|07D61C| AND.b $EC

|07D61E| LSR A
|07D61F| LSR A
|07D620| LSR A
|07D621| STA.b $08

;---------------------------------------------------------------------------------------------------

|07D623| REP #$10

; Detect to right
|07D625| LDA.w #$0001
|07D628| STA.b $0A

|07D62A| JSR ExecuteTileDetection

|07D62D| LDA.b $04
|07D62F| STA.b $00

|07D631| LDA.b $08
|07D633| STA.b $02

; Detect to left
|07D635| LDA.w #$0002
|07D638| STA.b $0A

|07D63A| JSR ExecuteTileDetection

|07D63D| SEP #$30

|07D63F| RTS

;===================================================================================================

pool HandleNudgingInADoor

.offset_y
|07D640| dw $0008, $0017, $0010, $0010

.offset_x
|07D648| dw $0008, $0008, $0000, $000F

endpool

;---------------------------------------------------------------------------------------------------

HandleNudgingInADoor:
|07D650| LDA.b $00
|07D652| PHA

|07D653| LDA.b $66
|07D655| AND.b #$02
|07D657| BEQ .not_horizontal_last

|07D659| LDY.b #$02

|07D65B| LDA.b $20
|07D65D| CMP.b #$80
|07D65F| BCC .start_detect

|07D661| LDY.b #$00
|07D663| BRA .start_detect

.not_horizontal_last
|07D665| LDY.b #$06

|07D667| LDA.b $22
|07D669| CMP.b #$80
|07D66B| BCC .start_detect

|07D66D| LDY.b #$04

.start_detect
|07D66F| STZ.b $59

|07D671| REP #$20

|07D673| JSR ResetTileDetect

|07D676| LDA.b $20
|07D678| CLC
|07D679| ADC.w .offset_y,Y
|07D67C| AND.b $EC
|07D67E| STA.b $00

|07D680| LDA.b $22
|07D682| CLC
|07D683| ADC.w .offset_x,Y
|07D686| AND.b $EC
|07D688| LSR A
|07D689| LSR A
|07D68A| LSR A
|07D68B| STA.b $02

|07D68D| LDA.w #$0001
|07D690| STA.b $0A

|07D692| REP #$10

|07D694| JSR ExecuteTileDetection

|07D697| SEP #$30

|07D699| PLA
|07D69A| STA.b $00

|07D69C| LDA.b $0E
|07D69E| ORA.w $036E
|07D6A1| AND.b #$03
|07D6A3| BNE .horizontal_ledge_detected

|07D6A5| LDA.w $036D
|07D6A8| ORA.w $0370
|07D6AB| AND.b #$33
|07D6AD| BEQ .exit

.horizontal_ledge_detected
|07D6AF| LDY.b #$00

|07D6B1| LDA.b $00
|07D6B3| EOR.b #$FF
|07D6B5| INC A
|07D6B6| STA.b $00

|07D6B8| CMP.b #$80
|07D6BA| BCC .offset_positive

|07D6BC| LDY.b #$FF

.offset_positive
|07D6BE| STY.b $01

|07D6C0| LDA.b $66
|07D6C2| AND.b #$02
|07D6C4| BEQ .add_on_x

|07D6C6| REP #$20

|07D6C8| LDA.b $00
|07D6CA| CLC
|07D6CB| ADC.b $20
|07D6CD| STA.b $20

|07D6CF| BRA .exit

.add_on_x
|07D6D1| REP #$20

|07D6D3| LDA.b $00
|07D6D5| CLC
|07D6D6| ADC.b $22
|07D6D8| STA.b $22

.exit
|07D6DA| SEP #$20

|07D6DC| RTS

;===================================================================================================

TileCheckForMirrorBonk:
|07D6DD| STZ.b $59

|07D6DF| REP #$20

|07D6E1| JSR ResetTileDetect

|07D6E4| LDA.b $22
|07D6E6| CLC
|07D6E7| ADC.w #$0002
|07D6EA| AND.b $EC
|07D6EC| LSR A
|07D6ED| LSR A
|07D6EE| LSR A
|07D6EF| STA.b $02

|07D6F1| LDA.b $22
|07D6F3| CLC
|07D6F4| ADC.w #$000D
|07D6F7| AND.b $EC
|07D6F9| LSR A
|07D6FA| LSR A
|07D6FB| LSR A
|07D6FC| STA.b $04

|07D6FE| LDA.b $20
|07D700| CLC
|07D701| ADC.w #$000A
|07D704| AND.b $EC
|07D706| STA.b $00
|07D708| STA.b $74

|07D70A| LDA.b $20
|07D70C| CLC
|07D70D| ADC.w #$0015
|07D710| AND.b $EC
|07D712| STA.b $08

|07D714| BRL TileDetect_FromMirrorBonk

;===================================================================================================

pool TileDetect_SwordSwingDeepInDoor

.offset_y
|07D717| dw $FFFF, $0018, $0010, $0010

.offset_x
|07D71F| dw $0008, $0008, $FFFF, $0010

endpool

;---------------------------------------------------------------------------------------------------

TileDetect_SwordSwingDeepInDoor:
|07D727| STZ.b $59

|07D729| REP #$20

|07D72B| JSR ResetTileDetect

|07D72E| TXA
|07D72F| AND.w #$00FF
|07D732| DEC A

|07D733| ASL A
|07D734| ASL A
|07D735| TAY

;---------------------------------------------------------------------------------------------------

|07D736| LDA.b $22
|07D738| CLC
|07D739| ADC.w .offset_x+0,Y
|07D73C| AND.b $EC

|07D73E| LSR A
|07D73F| LSR A
|07D740| LSR A
|07D741| STA.b $02

|07D743| LDA.b $22
|07D745| CLC
|07D746| ADC.w .offset_x+2,Y
|07D749| AND.b $EC

|07D74B| LSR A
|07D74C| LSR A
|07D74D| LSR A
|07D74E| STA.b $04

|07D750| LDA.b $20
|07D752| CLC
|07D753| ADC.w .offset_y+0,Y
|07D756| AND.b $EC
|07D758| STA.b $00

|07D75A| LDA.b $20
|07D75C| CLC
|07D75D| ADC.w .offset_y+2,Y
|07D760| AND.b $EC
|07D762| STA.b $08

;---------------------------------------------------------------------------------------------------

|07D764| REP #$10

; Detect to right
|07D766| LDA.w #$0001
|07D769| STA.b $0A

|07D76B| JSR ExecuteTileDetection

|07D76E| LDA.b $04
|07D770| STA.b $02

|07D772| LDA.b $08
|07D774| STA.b $00

; Detect to left
|07D776| LDA.w #$0002
|07D779| STA.b $0A

|07D77B| JSR ExecuteTileDetection

|07D77E| SEP #$30

|07D780| RTS

;===================================================================================================
; Resets a bunch of properties related to collision detection
;===================================================================================================
ResetTileDetect:
|07D781| STZ.b $0C
|07D783| STZ.b $0E

|07D785| STZ.b $38
|07D787| STZ.b $58

|07D789| STZ.w $02C0

|07D78C| STZ.b $5F
|07D78E| STZ.b $62

|07D790| STZ.w $0320

|07D793| STZ.w $0341
|07D796| STZ.w $0343

|07D799| STZ.w $0348
|07D79C| STZ.w $034C

|07D79F| STZ.w $0357
|07D7A2| STZ.w $0359
|07D7A5| STZ.w $035B

|07D7A8| STZ.w $0366

|07D7AB| STZ.w $036D
|07D7AE| STZ.w $036F

|07D7B1| STZ.w $02E5
|07D7B4| STZ.w $02E7
|07D7B7| STZ.w $02EE

|07D7BA| STZ.w $02F6

|07D7BD| STZ.w $03F1

|07D7C0| RTS

;===================================================================================================

pool ExecuteTileDetection_underworld

.vectors
|07D7C1| dw TileBehavior_Nothing                          ; 0x00 UW
|07D7C3| dw TileBehavior_StandardCollision                ; 0x01 UW
|07D7C5| dw TileBehavior_StandardCollision                ; 0x02 UW
|07D7C7| dw TileBehavior_StandardCollision                ; 0x03 UW
|07D7C9| dw TileBehavior_StandardCollision                ; 0x04 UW
|07D7CB| dw TileBehavior_Nothing                          ; 0x05 UW
|07D7CD| dw TileBehavior_Nothing                          ; 0x06 UW
|07D7CF| dw TileBehavior_Nothing                          ; 0x07 UW
|07D7D1| dw TileBehavior_DeepWater                        ; 0x08 UW
|07D7D3| dw TileBehavior_ShallowWater                     ; 0x09 UW
|07D7D5| dw TileBehavior_ShortWaterLadder                 ; 0x0A UW
|07D7D7| dw TileBehavior_StandardCollision                ; 0x0B UW
|07D7D9| dw TileBehavior_OverlayMask_0C                   ; 0x0C UW
|07D7DB| dw TileBehavior_SpikeFloor                       ; 0x0D UW
|07D7DD| dw TileBehavior_GanonIce                         ; 0x0E UW
|07D7DF| dw TileBehavior_PalaceIce                        ; 0x0F UW
|07D7E1| dw TileBehavior_Slope                            ; 0x10 UW
|07D7E3| dw TileBehavior_Slope                            ; 0x11 UW
|07D7E5| dw TileBehavior_Slope                            ; 0x12 UW
|07D7E7| dw TileBehavior_Slope                            ; 0x13 UW
|07D7E9| dw TileBehavior_Nothing                          ; 0x14 UW
|07D7EB| dw TileBehavior_Nothing                          ; 0x15 UW
|07D7ED| dw TileBehavior_Nothing                          ; 0x16 UW
|07D7EF| dw TileBehavior_Nothing                          ; 0x17 UW
|07D7F1| dw TileBehavior_SlopeOuter                       ; 0x18 UW
|07D7F3| dw TileBehavior_SlopeOuter                       ; 0x19 UW
|07D7F5| dw TileBehavior_SlopeOuter                       ; 0x1A UW
|07D7F7| dw TileBehavior_SlopeOuter                       ; 0x1B UW
|07D7F9| dw TileBehavior_OverlayMask_1C                   ; 0x1C UW
|07D7FB| dw TileBehavior_NorthSingleLayerStairs           ; 0x1D UW
|07D7FD| dw TileBehavior_NorthSwapLayerStairs             ; 0x1E UW
|07D7FF| dw TileBehavior_NorthSwapLayerStairs             ; 0x1F UW
|07D801| dw TileBehavior_Pit                              ; 0x20 UW
|07D803| dw TileBehavior_Nothing                          ; 0x21 UW
|07D805| dw TileBehavior_ManualStairs                     ; 0x22 UW
|07D807| dw TileBehavior_Nothing                          ; 0x23 UW
|07D809| dw TileBehavior_Nothing                          ; 0x24 UW
|07D80B| dw TileBehavior_Nothing                          ; 0x25 UW
|07D80D| dw TileBehavior_StandardCollision                ; 0x26 UW
|07D80F| dw TileBehavior_Hookshottables                   ; 0x27 UW
|07D811| dw TileBehavior_Ledge_North                      ; 0x28 UW
|07D813| dw TileBehavior_Ledge_South                      ; 0x29 UW
|07D815| dw TileBehavior_Ledge_EastWest                   ; 0x2A UW
|07D817| dw TileBehavior_Ledge_EastWest                   ; 0x2B UW
|07D819| dw TileBehavior_Ledge_NorthDiagonal              ; 0x2C UW
|07D81B| dw TileBehavior_Ledge_SouthDiagonal              ; 0x2D UW
|07D81D| dw TileBehavior_Ledge_NorthDiagonal              ; 0x2E UW
|07D81F| dw TileBehavior_Ledge_SouthDiagonal              ; 0x2F UW
|07D821| dw TileBehavior_ManualStairs                     ; 0x30 UW
|07D823| dw TileBehavior_ManualStairs                     ; 0x31 UW
|07D825| dw TileBehavior_ManualStairs                     ; 0x32 UW
|07D827| dw TileBehavior_ManualStairs                     ; 0x33 UW
|07D829| dw TileBehavior_ManualStairs                     ; 0x34 UW
|07D82B| dw TileBehavior_ManualStairs                     ; 0x35 UW
|07D82D| dw TileBehavior_ManualStairs                     ; 0x36 UW
|07D82F| dw TileBehavior_ManualStairs                     ; 0x37 UW
|07D831| dw TileBehavior_Nothing                          ; 0x38 UW
|07D833| dw TileBehavior_Nothing                          ; 0x39 UW
|07D835| dw TileBehavior_Nothing                          ; 0x3A UW
|07D837| dw TileBehavior_Nothing                          ; 0x3B UW
|07D839| dw TileBehavior_Nothing                          ; 0x3C UW
|07D83B| dw TileBehavior_SouthSingleLayerStairs           ; 0x3D UW
|07D83D| dw TileBehavior_SouthSwapLayerStairs             ; 0x3E UW
|07D83F| dw TileBehavior_SouthSwapLayerStairs             ; 0x3F UW
|07D841| dw TileBehavior_ThickGrass                       ; 0x40 UW
|07D843| dw TileBehavior_Nothing                          ; 0x41 UW
|07D845| dw TileBehavior_Nothing                          ; 0x42 UW
|07D847| dw TileBehavior_StandardCollision                ; 0x43 UW
|07D849| dw TileBehavior_Spike                            ; 0x44 UW
|07D84B| dw TileBehavior_Nothing                          ; 0x45 UW
|07D84D| dw TileBehavior_HylianPlaque                     ; 0x46 UW
|07D84F| dw TileBehavior_Nothing                          ; 0x47 UW
|07D851| dw TileBehavior_DiggableGround                   ; 0x48 UW
|07D853| dw TileBehavior_Nothing                          ; 0x49 UW
|07D855| dw TileBehavior_DiggableGround                   ; 0x4A UW
|07D857| dw TileBehavior_Warp                             ; 0x4B UW
|07D859| dw TileBehavior_Nothing                          ; 0x4C UW
|07D85B| dw TileBehavior_Nothing                          ; 0x4D UW
|07D85D| dw TileBehavior_Nothing                          ; 0x4E UW
|07D85F| dw TileBehavior_Nothing                          ; 0x4F UW
|07D861| dw TileBehavior_Liftable                         ; 0x50 UW
|07D863| dw TileBehavior_Liftable                         ; 0x51 UW
|07D865| dw TileBehavior_Liftable                         ; 0x52 UW
|07D867| dw TileBehavior_Liftable                         ; 0x53 UW
|07D869| dw TileBehavior_Liftable                         ; 0x54 UW
|07D86B| dw TileBehavior_Liftable                         ; 0x55 UW
|07D86D| dw TileBehavior_Liftable                         ; 0x56 UW
|07D86F| dw TileBehavior_BonkRocks                        ; 0x57 UW
|07D871| dw TileBehavior_Chest                            ; 0x58 UW
|07D873| dw TileBehavior_Chest                            ; 0x59 UW
|07D875| dw TileBehavior_Chest                            ; 0x5A UW
|07D877| dw TileBehavior_Chest                            ; 0x5B UW
|07D879| dw TileBehavior_Chest                            ; 0x5C UW
|07D87B| dw TileBehavior_Chest                            ; 0x5D UW
|07D87D| dw TileBehavior_Nothing                          ; 0x5E UW
|07D87F| dw TileBehavior_Nothing                          ; 0x5F UW
|07D881| dw TileBehavior_RupeeTile                        ; 0x60 UW
|07D883| dw TileBehavior_Nothing                          ; 0x61 UW
|07D885| dw TileBehavior_Nothing                          ; 0x62 UW
|07D887| dw TileBehavior_MinigameChest                    ; 0x63 UW
|07D889| dw TileBehavior_Nothing                          ; 0x64 UW
|07D88B| dw TileBehavior_Nothing                          ; 0x65 UW
|07D88D| dw TileBehavior_Nothing                          ; 0x66 UW
|07D88F| dw TileBehavior_CrystalPeg_Up                    ; 0x67 UW
|07D891| dw TileBehavior_Conveyor_Upwards                 ; 0x68 UW
|07D893| dw TileBehavior_Conveyor_Downwards               ; 0x69 UW
|07D895| dw TileBehavior_Conveyor_Leftwards               ; 0x6A UW
|07D897| dw TileBehavior_Conveyor_Rightwards              ; 0x6B UW
|07D899| dw TileBehavior_StandardCollision                ; 0x6C UW
|07D89B| dw TileBehavior_StandardCollision                ; 0x6D UW
|07D89D| dw TileBehavior_StandardCollision                ; 0x6E UW
|07D89F| dw TileBehavior_StandardCollision                ; 0x6F UW
|07D8A1| dw TileBehavior_ManipulablyReplaced              ; 0x70 UW
|07D8A3| dw TileBehavior_ManipulablyReplaced              ; 0x71 UW
|07D8A5| dw TileBehavior_ManipulablyReplaced              ; 0x72 UW
|07D8A7| dw TileBehavior_ManipulablyReplaced              ; 0x73 UW
|07D8A9| dw TileBehavior_ManipulablyReplaced              ; 0x74 UW
|07D8AB| dw TileBehavior_ManipulablyReplaced              ; 0x75 UW
|07D8AD| dw TileBehavior_ManipulablyReplaced              ; 0x76 UW
|07D8AF| dw TileBehavior_ManipulablyReplaced              ; 0x77 UW
|07D8B1| dw TileBehavior_ManipulablyReplaced              ; 0x78 UW
|07D8B3| dw TileBehavior_ManipulablyReplaced              ; 0x79 UW
|07D8B5| dw TileBehavior_ManipulablyReplaced              ; 0x7A UW
|07D8B7| dw TileBehavior_ManipulablyReplaced              ; 0x7B UW
|07D8B9| dw TileBehavior_ManipulablyReplaced              ; 0x7C UW
|07D8BB| dw TileBehavior_ManipulablyReplaced              ; 0x7D UW
|07D8BD| dw TileBehavior_ManipulablyReplaced              ; 0x7E UW
|07D8BF| dw TileBehavior_ManipulablyReplaced              ; 0x7F UW
|07D8C1| dw TileBehavior_Door                             ; 0x80 UW
|07D8C3| dw TileBehavior_Door                             ; 0x81 UW
|07D8C5| dw TileBehavior_ShutterDoor                      ; 0x82 UW
|07D8C7| dw TileBehavior_ShutterDoor                      ; 0x83 UW
|07D8C9| dw TileBehavior_Door                             ; 0x84 UW
|07D8CB| dw TileBehavior_Door                             ; 0x85 UW
|07D8CD| dw TileBehavior_Door                             ; 0x86 UW
|07D8CF| dw TileBehavior_Door                             ; 0x87 UW
|07D8D1| dw TileBehavior_Door                             ; 0x88 UW
|07D8D3| dw TileBehavior_Door                             ; 0x89 UW
|07D8D5| dw TileBehavior_Door                             ; 0x8A UW
|07D8D7| dw TileBehavior_Door                             ; 0x8B UW
|07D8D9| dw TileBehavior_Door                             ; 0x8C UW
|07D8DB| dw TileBehavior_Door                             ; 0x8D UW
|07D8DD| dw TileBehavior_Entrance                         ; 0x8E UW
|07D8DF| dw TileBehavior_Entrance                         ; 0x8F UW
|07D8E1| dw TileBehavior_LayerToggleShutterDoor           ; 0x90 UW
|07D8E3| dw TileBehavior_LayerToggleShutterDoor           ; 0x91 UW
|07D8E5| dw TileBehavior_LayerToggleShutterDoor           ; 0x92 UW
|07D8E7| dw TileBehavior_LayerToggleShutterDoor           ; 0x93 UW
|07D8E9| dw TileBehavior_LayerToggleShutterDoor           ; 0x94 UW
|07D8EB| dw TileBehavior_LayerToggleShutterDoor           ; 0x95 UW
|07D8ED| dw TileBehavior_LayerToggleShutterDoor           ; 0x96 UW
|07D8EF| dw TileBehavior_LayerToggleShutterDoor           ; 0x97 UW
|07D8F1| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x98 UW
|07D8F3| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x99 UW
|07D8F5| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9A UW
|07D8F7| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9B UW
|07D8F9| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9C UW
|07D8FB| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9D UW
|07D8FD| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9E UW
|07D8FF| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9F UW
|07D901| dw TileBehavior_DungeonToggleManualDoor          ; 0xA0 UW
|07D903| dw TileBehavior_DungeonToggleManualDoor          ; 0xA1 UW
|07D905| dw TileBehavior_DungeonToggleShutterDoor         ; 0xA2 UW
|07D907| dw TileBehavior_DungeonToggleShutterDoor         ; 0xA3 UW
|07D909| dw TileBehavior_DungeonToggleManualDoor          ; 0xA4 UW
|07D90B| dw TileBehavior_DungeonToggleManualDoor          ; 0xA5 UW
|07D90D| dw TileBehavior_Nothing                          ; 0xA6 UW
|07D90F| dw TileBehavior_Nothing                          ; 0xA7 UW
|07D911| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xA8 UW
|07D913| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xA9 UW
|07D915| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAA UW
|07D917| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAB UW
|07D919| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAC UW
|07D91B| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAD UW
|07D91D| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAE UW
|07D91F| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAF UW
|07D921| dw TileBehavior_Pit                              ; 0xB0 UW
|07D923| dw TileBehavior_Pit                              ; 0xB1 UW
|07D925| dw TileBehavior_Pit                              ; 0xB2 UW
|07D927| dw TileBehavior_Pit                              ; 0xB3 UW
|07D929| dw TileBehavior_Pit                              ; 0xB4 UW
|07D92B| dw TileBehavior_Pit                              ; 0xB5 UW
|07D92D| dw TileBehavior_Pit                              ; 0xB6 UW
|07D92F| dw TileBehavior_Pit                              ; 0xB7 UW
|07D931| dw TileBehavior_Pit                              ; 0xB8 UW
|07D933| dw TileBehavior_Pit                              ; 0xB9 UW
|07D935| dw TileBehavior_Pit                              ; 0xBA UW
|07D937| dw TileBehavior_Pit                              ; 0xBB UW
|07D939| dw TileBehavior_Pit                              ; 0xBC UW
|07D93B| dw TileBehavior_Pit                              ; 0xBD UW
|07D93D| dw TileBehavior_Nothing                          ; 0xBE UW
|07D93F| dw TileBehavior_Nothing                          ; 0xBF UW
|07D941| dw TileBehavior_LightableTorch                   ; 0xC0 UW
|07D943| dw TileBehavior_LightableTorch                   ; 0xC1 UW
|07D945| dw TileBehavior_LightableTorch                   ; 0xC2 UW
|07D947| dw TileBehavior_LightableTorch                   ; 0xC3 UW
|07D949| dw TileBehavior_LightableTorch                   ; 0xC4 UW
|07D94B| dw TileBehavior_LightableTorch                   ; 0xC5 UW
|07D94D| dw TileBehavior_LightableTorch                   ; 0xC6 UW
|07D94F| dw TileBehavior_LightableTorch                   ; 0xC7 UW
|07D951| dw TileBehavior_LightableTorch                   ; 0xC8 UW
|07D953| dw TileBehavior_LightableTorch                   ; 0xC9 UW
|07D955| dw TileBehavior_LightableTorch                   ; 0xCA UW
|07D957| dw TileBehavior_LightableTorch                   ; 0xCB UW
|07D959| dw TileBehavior_LightableTorch                   ; 0xCC UW
|07D95B| dw TileBehavior_LightableTorch                   ; 0xCD UW
|07D95D| dw TileBehavior_LightableTorch                   ; 0xCE UW
|07D95F| dw TileBehavior_LightableTorch                   ; 0xCF UW
|07D961| dw TileBehavior_Nothing                          ; 0xD0 UW
|07D963| dw TileBehavior_Nothing                          ; 0xD1 UW
|07D965| dw TileBehavior_Nothing                          ; 0xD2 UW
|07D967| dw TileBehavior_Nothing                          ; 0xD3 UW
|07D969| dw TileBehavior_Nothing                          ; 0xD4 UW
|07D96B| dw TileBehavior_Nothing                          ; 0xD5 UW
|07D96D| dw TileBehavior_Nothing                          ; 0xD6 UW
|07D96F| dw TileBehavior_Nothing                          ; 0xD7 UW
|07D971| dw TileBehavior_Nothing                          ; 0xD8 UW
|07D973| dw TileBehavior_Nothing                          ; 0xD9 UW
|07D975| dw TileBehavior_Nothing                          ; 0xDA UW
|07D977| dw TileBehavior_Nothing                          ; 0xDB UW
|07D979| dw TileBehavior_Nothing                          ; 0xDC UW
|07D97B| dw TileBehavior_Nothing                          ; 0xDD UW
|07D97D| dw TileBehavior_Nothing                          ; 0xDE UW
|07D97F| dw TileBehavior_Nothing                          ; 0xDF UW
|07D981| dw TileBehavior_Nothing                          ; 0xE0 UW
|07D983| dw TileBehavior_Nothing                          ; 0xE1 UW
|07D985| dw TileBehavior_Nothing                          ; 0xE2 UW
|07D987| dw TileBehavior_Nothing                          ; 0xE3 UW
|07D989| dw TileBehavior_Nothing                          ; 0xE4 UW
|07D98B| dw TileBehavior_Nothing                          ; 0xE5 UW
|07D98D| dw TileBehavior_Nothing                          ; 0xE6 UW
|07D98F| dw TileBehavior_Nothing                          ; 0xE7 UW
|07D991| dw TileBehavior_Nothing                          ; 0xE8 UW
|07D993| dw TileBehavior_Nothing                          ; 0xE9 UW
|07D995| dw TileBehavior_Nothing                          ; 0xEA UW
|07D997| dw TileBehavior_Nothing                          ; 0xEB UW
|07D999| dw TileBehavior_Nothing                          ; 0xEC UW
|07D99B| dw TileBehavior_Nothing                          ; 0xED UW
|07D99D| dw TileBehavior_Nothing                          ; 0xEE UW
|07D99F| dw TileBehavior_Nothing                          ; 0xEF UW
|07D9A1| dw TileBehavior_FlaggableDoor                    ; 0xF0 UW
|07D9A3| dw TileBehavior_FlaggableDoor                    ; 0xF1 UW
|07D9A5| dw TileBehavior_FlaggableDoor                    ; 0xF2 UW
|07D9A7| dw TileBehavior_FlaggableDoor                    ; 0xF3 UW
|07D9A9| dw TileBehavior_FlaggableDoor                    ; 0xF4 UW
|07D9AB| dw TileBehavior_FlaggableDoor                    ; 0xF5 UW
|07D9AD| dw TileBehavior_FlaggableDoor                    ; 0xF6 UW
|07D9AF| dw TileBehavior_FlaggableDoor                    ; 0xF7 UW
|07D9B1| dw TileBehavior_FlaggableDoor                    ; 0xF8 UW
|07D9B3| dw TileBehavior_FlaggableDoor                    ; 0xF9 UW
|07D9B5| dw TileBehavior_FlaggableDoor                    ; 0xFA UW
|07D9B7| dw TileBehavior_FlaggableDoor                    ; 0xFB UW
|07D9B9| dw TileBehavior_FlaggableDoor                    ; 0xFC UW
|07D9BB| dw TileBehavior_FlaggableDoor                    ; 0xFD UW
|07D9BD| dw TileBehavior_FlaggableDoor                    ; 0xFE UW
|07D9BF| dw TileBehavior_FlaggableDoor                    ; 0xFF UW

endpool

;===================================================================================================
; TODO
; Enters with:
;   $0A - bit to set
;
; Uses:
;   $06 - Tile ID
;
; Exits with (often):
;   $0C - bit field
;   $0E - bit field
;===================================================================================================
ExecuteTileDetection:
|07D9C1| SEP #$30

|07D9C3| LDA.b $1B
|07D9C5| BNE ExecuteTileDetection_underworld

|07D9C7| BRL ExecuteTileDetection_overworld

;===================================================================================================

ExecuteTileDetection_underworld:
|07D9CA| REP #$20

|07D9CC| LDA.b $49
|07D9CE| AND.w #$00FF
|07D9D1| STA.b $49

|07D9D3| LDA.b $00
|07D9D5| AND.w #$FFF8
|07D9D8| ASL A
|07D9D9| ASL A
|07D9DA| ASL A
|07D9DB| STA.b $06

|07D9DD| LDA.b $02
|07D9DF| AND.w #$003F
|07D9E2| CLC
|07D9E3| ADC.b $06

; [BUG] kinda; since it means you won't detect tiles on the proper layer with dungeon/layer swaps
|07D9E5| LDX.b $EE
|07D9E7| BEQ .upper_layer

|07D9E9| CLC
|07D9EA| ADC.w #$1000

.upper_layer
|07D9ED| REP #$10

|07D9EF| TAX

|07D9F0| LDA.l $7F2000,X
|07D9F4| PHA

;---------------------------------------------------------------------------------------------------

|07D9F5| LDA.w $037F
|07D9F8| AND.w #$00FF
|07D9FB| BEQ .not_oob

|07D9FD| PLA
|07D9FE| LDA.w #$0000
|07DA01| BRA .oob_mode

.not_oob
|07DA03| PLA

.oob_mode
|07DA04| AND.w #$00FF
|07DA07| STA.b $06
|07DA09| STA.w $0114

|07DA0C| STX.b $BD

|07DA0E| ASL A
|07DA0F| TAX

|07DA10| JMP.w (.vectors,X)

;===================================================================================================

pool ExecuteTileDetection_overworld

.vectors
|07DA13| dw TileBehavior_NothingOW                        ; 0x00 OW
|07DA15| dw TileBehavior_StandardCollision                ; 0x01 OW
|07DA17| dw TileBehavior_StandardCollision                ; 0x02 OW
|07DA19| dw TileBehavior_StandardCollision                ; 0x03 OW
|07DA1B| dw TileBehavior_ThickGrass                       ; 0x04 OW
|07DA1D| dw TileBehavior_NothingOW                        ; 0x05 OW
|07DA1F| dw TileBehavior_NothingOW                        ; 0x06 OW
|07DA21| dw TileBehavior_NothingOW                        ; 0x07 OW
|07DA23| dw TileBehavior_DeepWater                        ; 0x08 OW
|07DA25| dw TileBehavior_ShallowWater                     ; 0x09 OW
|07DA27| dw TileBehavior_ShortWaterLadder                 ; 0x0A OW
|07DA29| dw TileBehavior_UnusedDeepWater                  ; 0x0B OW
|07DA2B| dw TileBehavior_OverlayMask_0C                   ; 0x0C OW
|07DA2D| dw TileBehavior_SpikeFloor                       ; 0x0D OW
|07DA2F| dw TileBehavior_GanonIce                         ; 0x0E OW
|07DA31| dw TileBehavior_PalaceIce                        ; 0x0F OW
|07DA33| dw TileBehavior_Slope                            ; 0x10 OW
|07DA35| dw TileBehavior_Slope                            ; 0x11 OW
|07DA37| dw TileBehavior_Slope                            ; 0x12 OW
|07DA39| dw TileBehavior_Slope                            ; 0x13 OW
|07DA3B| dw TileBehavior_NothingOW                        ; 0x14 OW
|07DA3D| dw TileBehavior_NothingOW                        ; 0x15 OW
|07DA3F| dw TileBehavior_NothingOW                        ; 0x16 OW
|07DA41| dw TileBehavior_NothingOW                        ; 0x17 OW
|07DA43| dw TileBehavior_SlopeOuter                       ; 0x18 OW
|07DA45| dw TileBehavior_SlopeOuter                       ; 0x19 OW
|07DA47| dw TileBehavior_SlopeOuter                       ; 0x1A OW
|07DA49| dw TileBehavior_SlopeOuter                       ; 0x1B OW
|07DA4B| dw TileBehavior_OverlayMask_1C                   ; 0x1C OW
|07DA4D| dw TileBehavior_NorthSingleLayerStairs           ; 0x1D OW
|07DA4F| dw TileBehavior_NorthSwapLayerStairs             ; 0x1E OW
|07DA51| dw TileBehavior_NorthSwapLayerStairs             ; 0x1F OW
|07DA53| dw TileBehavior_Pit                              ; 0x20 OW
|07DA55| dw TileBehavior_NothingOW                        ; 0x21 OW
|07DA57| dw TileBehavior_ManualStairs                     ; 0x22 OW
|07DA59| dw TileBehavior_NothingOW                        ; 0x23 OW
|07DA5B| dw TileBehavior_NothingOW                        ; 0x24 OW
|07DA5D| dw TileBehavior_NothingOW                        ; 0x25 OW
|07DA5F| dw TileBehavior_StandardCollision                ; 0x26 OW
|07DA61| dw TileBehavior_Hookshottables                   ; 0x27 OW
|07DA63| dw TileBehavior_Ledge_North                      ; 0x28 OW
|07DA65| dw TileBehavior_Ledge_South                      ; 0x29 OW
|07DA67| dw TileBehavior_Ledge_EastWest                   ; 0x2A OW
|07DA69| dw TileBehavior_Ledge_EastWest                   ; 0x2B OW
|07DA6B| dw TileBehavior_Ledge_NorthDiagonal              ; 0x2C OW
|07DA6D| dw TileBehavior_Ledge_SouthDiagonal              ; 0x2D OW
|07DA6F| dw TileBehavior_Ledge_NorthDiagonal              ; 0x2E OW
|07DA71| dw TileBehavior_Ledge_SouthDiagonal              ; 0x2F OW
|07DA73| dw TileBehavior_ManualStairs                     ; 0x30 OW
|07DA75| dw TileBehavior_ManualStairs                     ; 0x31 OW
|07DA77| dw TileBehavior_ManualStairs                     ; 0x32 OW
|07DA79| dw TileBehavior_ManualStairs                     ; 0x33 OW
|07DA7B| dw TileBehavior_ManualStairs                     ; 0x34 OW
|07DA7D| dw TileBehavior_ManualStairs                     ; 0x35 OW
|07DA7F| dw TileBehavior_ManualStairs                     ; 0x36 OW
|07DA81| dw TileBehavior_ManualStairs                     ; 0x37 OW
|07DA83| dw TileBehavior_NothingOW                        ; 0x38 OW
|07DA85| dw TileBehavior_NothingOW                        ; 0x39 OW
|07DA87| dw TileBehavior_NothingOW                        ; 0x3A OW
|07DA89| dw TileBehavior_NothingOW                        ; 0x3B OW
|07DA8B| dw TileBehavior_NothingOW                        ; 0x3C OW
|07DA8D| dw TileBehavior_SouthSingleLayerStairs           ; 0x3D OW
|07DA8F| dw TileBehavior_SouthSwapLayerStairs             ; 0x3E OW
|07DA91| dw TileBehavior_SouthSwapLayerStairs             ; 0x3F OW
|07DA93| dw TileBehavior_ThickGrass                       ; 0x40 OW
|07DA95| dw TileBehavior_NothingOW                        ; 0x41 OW
|07DA97| dw TileBehavior_GraveStone                       ; 0x42 OW
|07DA99| dw TileBehavior_StandardCollision                ; 0x43 OW
|07DA9B| dw TileBehavior_Spike                            ; 0x44 OW
|07DA9D| dw TileBehavior_NothingOW                        ; 0x45 OW
|07DA9F| dw TileBehavior_HylianPlaque                     ; 0x46 OW
|07DAA1| dw TileBehavior_NothingOW                        ; 0x47 OW
|07DAA3| dw TileBehavior_DiggableGround                   ; 0x48 OW
|07DAA5| dw TileBehavior_NothingOW                        ; 0x49 OW
|07DAA7| dw TileBehavior_DiggableGround                   ; 0x4A OW
|07DAA9| dw TileBehavior_Warp                             ; 0x4B OW
|07DAAB| dw TileBehavior_UnusedCornerType                 ; 0x4C OW
|07DAAD| dw TileBehavior_UnusedCornerType                 ; 0x4D OW
|07DAAF| dw TileBehavior_EasternRuinsCorner               ; 0x4E OW
|07DAB1| dw TileBehavior_EasternRuinsCorner               ; 0x4F OW
|07DAB3| dw TileBehavior_Liftable                         ; 0x50 OW
|07DAB5| dw TileBehavior_Liftable                         ; 0x51 OW
|07DAB7| dw TileBehavior_Liftable                         ; 0x52 OW
|07DAB9| dw TileBehavior_Liftable                         ; 0x53 OW
|07DABB| dw TileBehavior_Liftable                         ; 0x54 OW
|07DABD| dw TileBehavior_Liftable                         ; 0x55 OW
|07DABF| dw TileBehavior_Liftable                         ; 0x56 OW
|07DAC1| dw TileBehavior_BonkRocks                        ; 0x57 OW
|07DAC3| dw TileBehavior_Chest                            ; 0x58 OW
|07DAC5| dw TileBehavior_Chest                            ; 0x59 OW
|07DAC7| dw TileBehavior_Chest                            ; 0x5A OW
|07DAC9| dw TileBehavior_Chest                            ; 0x5B OW
|07DACB| dw TileBehavior_Chest                            ; 0x5C OW
|07DACD| dw TileBehavior_Chest                            ; 0x5D OW
|07DACF| dw TileBehavior_NothingOW                        ; 0x5E OW
|07DAD1| dw TileBehavior_NothingOW                        ; 0x5F OW
|07DAD3| dw TileBehavior_NothingOW                        ; 0x60 OW
|07DAD5| dw TileBehavior_NothingOW                        ; 0x61 OW
|07DAD7| dw TileBehavior_NothingOW                        ; 0x62 OW
|07DAD9| dw TileBehavior_MinigameChest                    ; 0x63 OW
|07DADB| dw TileBehavior_NothingOW                        ; 0x64 OW
|07DADD| dw TileBehavior_NothingOW                        ; 0x65 OW
|07DADF| dw TileBehavior_NothingOW                        ; 0x66 OW
|07DAE1| dw TileBehavior_CrystalPeg_Up                    ; 0x67 OW
|07DAE3| dw TileBehavior_Conveyor_Upwards                 ; 0x68 OW
|07DAE5| dw TileBehavior_Conveyor_Downwards               ; 0x69 OW
|07DAE7| dw TileBehavior_Conveyor_Leftwards               ; 0x6A OW
|07DAE9| dw TileBehavior_Conveyor_Rightwards              ; 0x6B OW
|07DAEB| dw TileBehavior_NothingOW                        ; 0x6C OW
|07DAED| dw TileBehavior_NothingOW                        ; 0x6D OW
|07DAEF| dw TileBehavior_NothingOW                        ; 0x6E OW
|07DAF1| dw TileBehavior_NothingOW                        ; 0x6F OW
|07DAF3| dw TileBehavior_ManipulablyReplaced              ; 0x70 OW
|07DAF5| dw TileBehavior_ManipulablyReplaced              ; 0x71 OW
|07DAF7| dw TileBehavior_ManipulablyReplaced              ; 0x72 OW
|07DAF9| dw TileBehavior_ManipulablyReplaced              ; 0x73 OW
|07DAFB| dw TileBehavior_ManipulablyReplaced              ; 0x74 OW
|07DAFD| dw TileBehavior_ManipulablyReplaced              ; 0x75 OW
|07DAFF| dw TileBehavior_ManipulablyReplaced              ; 0x76 OW
|07DB01| dw TileBehavior_ManipulablyReplaced              ; 0x77 OW
|07DB03| dw TileBehavior_ManipulablyReplaced              ; 0x78 OW
|07DB05| dw TileBehavior_ManipulablyReplaced              ; 0x79 OW
|07DB07| dw TileBehavior_ManipulablyReplaced              ; 0x7A OW
|07DB09| dw TileBehavior_ManipulablyReplaced              ; 0x7B OW
|07DB0B| dw TileBehavior_ManipulablyReplaced              ; 0x7C OW
|07DB0D| dw TileBehavior_ManipulablyReplaced              ; 0x7D OW
|07DB0F| dw TileBehavior_ManipulablyReplaced              ; 0x7E OW
|07DB11| dw TileBehavior_ManipulablyReplaced              ; 0x7F OW
|07DB13| dw TileBehavior_Door                             ; 0x80 OW
|07DB15| dw TileBehavior_Door                             ; 0x81 OW
|07DB17| dw TileBehavior_ShutterDoor                      ; 0x82 OW
|07DB19| dw TileBehavior_ShutterDoor                      ; 0x83 OW
|07DB1B| dw TileBehavior_Door                             ; 0x84 OW
|07DB1D| dw TileBehavior_Door                             ; 0x85 OW
|07DB1F| dw TileBehavior_Door                             ; 0x86 OW
|07DB21| dw TileBehavior_Door                             ; 0x87 OW
|07DB23| dw TileBehavior_Door                             ; 0x88 OW
|07DB25| dw TileBehavior_Door                             ; 0x89 OW
|07DB27| dw TileBehavior_Door                             ; 0x8A OW
|07DB29| dw TileBehavior_Door                             ; 0x8B OW
|07DB2B| dw TileBehavior_Door                             ; 0x8C OW
|07DB2D| dw TileBehavior_Door                             ; 0x8D OW
|07DB2F| dw TileBehavior_Entrance                         ; 0x8E OW
|07DB31| dw TileBehavior_Entrance                         ; 0x8F OW
|07DB33| dw TileBehavior_LayerToggleShutterDoor           ; 0x90 OW
|07DB35| dw TileBehavior_LayerToggleShutterDoor           ; 0x91 OW
|07DB37| dw TileBehavior_LayerToggleShutterDoor           ; 0x92 OW
|07DB39| dw TileBehavior_LayerToggleShutterDoor           ; 0x93 OW
|07DB3B| dw TileBehavior_LayerToggleShutterDoor           ; 0x94 OW
|07DB3D| dw TileBehavior_LayerToggleShutterDoor           ; 0x95 OW
|07DB3F| dw TileBehavior_LayerToggleShutterDoor           ; 0x96 OW
|07DB41| dw TileBehavior_LayerToggleShutterDoor           ; 0x97 OW
|07DB43| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x98 OW
|07DB45| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x99 OW
|07DB47| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9A OW
|07DB49| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9B OW
|07DB4B| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9C OW
|07DB4D| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9D OW
|07DB4F| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9E OW
|07DB51| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9F OW
|07DB53| dw TileBehavior_DungeonToggleManualDoor          ; 0xA0 OW
|07DB55| dw TileBehavior_DungeonToggleManualDoor          ; 0xA1 OW
|07DB57| dw TileBehavior_DungeonToggleShutterDoor         ; 0xA2 OW
|07DB59| dw TileBehavior_DungeonToggleShutterDoor         ; 0xA3 OW
|07DB5B| dw TileBehavior_DungeonToggleManualDoor          ; 0xA4 OW
|07DB5D| dw TileBehavior_DungeonToggleManualDoor          ; 0xA5 OW
|07DB5F| dw TileBehavior_NothingOW                        ; 0xA6 OW
|07DB61| dw TileBehavior_NothingOW                        ; 0xA7 OW
|07DB63| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xA8 OW
|07DB65| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xA9 OW
|07DB67| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAA OW
|07DB69| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAB OW
|07DB6B| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAC OW
|07DB6D| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAD OW
|07DB6F| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAE OW
|07DB71| dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAF OW
|07DB73| dw TileBehavior_Pit                              ; 0xB0 OW
|07DB75| dw TileBehavior_Pit                              ; 0xB1 OW
|07DB77| dw TileBehavior_Pit                              ; 0xB2 OW
|07DB79| dw TileBehavior_Pit                              ; 0xB3 OW
|07DB7B| dw TileBehavior_Pit                              ; 0xB4 OW
|07DB7D| dw TileBehavior_Pit                              ; 0xB5 OW
|07DB7F| dw TileBehavior_Pit                              ; 0xB6 OW
|07DB81| dw TileBehavior_Pit                              ; 0xB7 OW
|07DB83| dw TileBehavior_Pit                              ; 0xB8 OW
|07DB85| dw TileBehavior_Pit                              ; 0xB9 OW
|07DB87| dw TileBehavior_Pit                              ; 0xBA OW
|07DB89| dw TileBehavior_Pit                              ; 0xBB OW
|07DB8B| dw TileBehavior_Pit                              ; 0xBC OW
|07DB8D| dw TileBehavior_Pit                              ; 0xBD OW
|07DB8F| dw TileBehavior_NothingOW                        ; 0xBE OW
|07DB91| dw TileBehavior_NothingOW                        ; 0xBF OW
|07DB93| dw TileBehavior_LightableTorch                   ; 0xC0 OW
|07DB95| dw TileBehavior_LightableTorch                   ; 0xC1 OW
|07DB97| dw TileBehavior_LightableTorch                   ; 0xC2 OW
|07DB99| dw TileBehavior_LightableTorch                   ; 0xC3 OW
|07DB9B| dw TileBehavior_LightableTorch                   ; 0xC4 OW
|07DB9D| dw TileBehavior_LightableTorch                   ; 0xC5 OW
|07DB9F| dw TileBehavior_LightableTorch                   ; 0xC6 OW
|07DBA1| dw TileBehavior_LightableTorch                   ; 0xC7 OW
|07DBA3| dw TileBehavior_LightableTorch                   ; 0xC8 OW
|07DBA5| dw TileBehavior_LightableTorch                   ; 0xC9 OW
|07DBA7| dw TileBehavior_LightableTorch                   ; 0xCA OW
|07DBA9| dw TileBehavior_LightableTorch                   ; 0xCB OW
|07DBAB| dw TileBehavior_LightableTorch                   ; 0xCC OW
|07DBAD| dw TileBehavior_LightableTorch                   ; 0xCD OW
|07DBAF| dw TileBehavior_LightableTorch                   ; 0xCE OW
|07DBB1| dw TileBehavior_LightableTorch                   ; 0xCF OW
|07DBB3| dw TileBehavior_NothingOW                        ; 0xD0 OW
|07DBB5| dw TileBehavior_NothingOW                        ; 0xD1 OW
|07DBB7| dw TileBehavior_NothingOW                        ; 0xD2 OW
|07DBB9| dw TileBehavior_NothingOW                        ; 0xD3 OW
|07DBBB| dw TileBehavior_NothingOW                        ; 0xD4 OW
|07DBBD| dw TileBehavior_NothingOW                        ; 0xD5 OW
|07DBBF| dw TileBehavior_NothingOW                        ; 0xD6 OW
|07DBC1| dw TileBehavior_NothingOW                        ; 0xD7 OW
|07DBC3| dw TileBehavior_NothingOW                        ; 0xD8 OW
|07DBC5| dw TileBehavior_NothingOW                        ; 0xD9 OW
|07DBC7| dw TileBehavior_NothingOW                        ; 0xDA OW
|07DBC9| dw TileBehavior_NothingOW                        ; 0xDB OW
|07DBCB| dw TileBehavior_NothingOW                        ; 0xDC OW
|07DBCD| dw TileBehavior_NothingOW                        ; 0xDD OW
|07DBCF| dw TileBehavior_NothingOW                        ; 0xDE OW
|07DBD1| dw TileBehavior_NothingOW                        ; 0xDF OW
|07DBD3| dw TileBehavior_NothingOW                        ; 0xE0 OW
|07DBD5| dw TileBehavior_NothingOW                        ; 0xE1 OW
|07DBD7| dw TileBehavior_NothingOW                        ; 0xE2 OW
|07DBD9| dw TileBehavior_NothingOW                        ; 0xE3 OW
|07DBDB| dw TileBehavior_NothingOW                        ; 0xE4 OW
|07DBDD| dw TileBehavior_NothingOW                        ; 0xE5 OW
|07DBDF| dw TileBehavior_NothingOW                        ; 0xE6 OW
|07DBE1| dw TileBehavior_NothingOW                        ; 0xE7 OW
|07DBE3| dw TileBehavior_NothingOW                        ; 0xE8 OW
|07DBE5| dw TileBehavior_NothingOW                        ; 0xE9 OW
|07DBE7| dw TileBehavior_NothingOW                        ; 0xEA OW
|07DBE9| dw TileBehavior_NothingOW                        ; 0xEB OW
|07DBEB| dw TileBehavior_NothingOW                        ; 0xEC OW
|07DBED| dw TileBehavior_NothingOW                        ; 0xED OW
|07DBEF| dw TileBehavior_NothingOW                        ; 0xEE OW
|07DBF1| dw TileBehavior_NothingOW                        ; 0xEF OW
|07DBF3| dw TileBehavior_FlaggableDoor                    ; 0xF0 OW
|07DBF5| dw TileBehavior_FlaggableDoor                    ; 0xF1 OW
|07DBF7| dw TileBehavior_FlaggableDoor                    ; 0xF2 OW
|07DBF9| dw TileBehavior_FlaggableDoor                    ; 0xF3 OW
|07DBFB| dw TileBehavior_FlaggableDoor                    ; 0xF4 OW
|07DBFD| dw TileBehavior_FlaggableDoor                    ; 0xF5 OW
|07DBFF| dw TileBehavior_FlaggableDoor                    ; 0xF6 OW
|07DC01| dw TileBehavior_FlaggableDoor                    ; 0xF7 OW
|07DC03| dw TileBehavior_FlaggableDoor                    ; 0xF8 OW
|07DC05| dw TileBehavior_FlaggableDoor                    ; 0xF9 OW
|07DC07| dw TileBehavior_FlaggableDoor                    ; 0xFA OW
|07DC09| dw TileBehavior_FlaggableDoor                    ; 0xFB OW
|07DC0B| dw TileBehavior_FlaggableDoor                    ; 0xFC OW
|07DC0D| dw TileBehavior_FlaggableDoor                    ; 0xFD OW
|07DC0F| dw TileBehavior_FlaggableDoor                    ; 0xFE OW
|07DC11| dw TileBehavior_FlaggableDoor                    ; 0xFF OW

endpool

;---------------------------------------------------------------------------------------------------

ExecuteTileDetection_overworld:
|07DC13| JSL GetOverworldTileType

.from_item
|07DC17| REP #$30

|07DC19| PHA

|07DC1A| LDA.w $037F
|07DC1D| AND.w #$00FF
|07DC20| BEQ .not_oob

|07DC22| PLA
|07DC23| LDA.w #$0000

|07DC26| BRA .oob_mode

.not_oob
|07DC28| PLA

.oob_mode
|07DC29| AND.w #$00FF
|07DC2C| STA.b $06

|07DC2E| ASL A
|07DC2F| TAX

|07DC30| JMP.w (.vectors,X)

;===================================================================================================

#TileBehavior_HandleItemAndExecute:
|07DC33| JSL HandleItemTileAction

|07DC37| BRA .from_item

;===================================================================================================

TileBehavior_StandardCollision:
|07DC39| LDA.b $0A
|07DC3B| TSB.b $0E

;===================================================================================================
; These do absolutely nothing.
;===================================================================================================
TileBehavior_Nothing:
|07DC3D| RTS

;===================================================================================================

TileBehavior_SlopeMasks:
|07DC3E| dw $0004 ; 00000100
|07DC40| dw $0000 ; 00000000
|07DC42| dw $0006 ; 00000110
|07DC44| dw $0002 ; 00000010

;===================================================================================================

TileBehavior_SlopeOuter:
|07DC46| LDA.b $0A
|07DC48| TSB.b $38

;===================================================================================================

TileBehavior_Slope:
|07DC4A| LDA.b $0A
|07DC4C| TSB.b $0C

|07DC4E| LDA.b $06
|07DC50| AND.w #$0003
|07DC53| ASL A
|07DC54| TAY

|07DC55| LDA.w TileBehavior_SlopeMasks,Y
|07DC58| STA.b $6E

|07DC5A| RTS

;===================================================================================================

TileBehavior_NorthSingleLayerStairs:
|07DC5B| LDA.b $06
|07DC5D| STA.b $76

|07DC5F| LDA.b $0A
|07DC61| TSB.w $02C0

|07DC64| BRA TileBehavior_ManualStairs

;===================================================================================================

TileBehavior_NorthSwapLayerStairs:
|07DC66| LDA.b $06
|07DC68| STA.b $76

|07DC6A| LDA.b $0A
|07DC6C| TSB.w $02C0

;===================================================================================================

TileBehavior_ManualStairs:
|07DC6F| LDA.b $0A
|07DC71| TSB.b $58

|07DC73| RTS

;===================================================================================================

TileBehavior_Pit:
|07DC74| LDA.w $02F5
|07DC77| AND.w #$00FF
|07DC7A| BNE .exit

|07DC7C| LDA.b $0A
|07DC7E| TSB.b $59

.exit
|07DC80| RTS

;===================================================================================================

TileBehavior_OverlayMask_0C:
|07DC81| LDA.b $0A
|07DC83| TSB.w $0320

|07DC86| RTS

;===================================================================================================

TileBehavior_GanonIce:
|07DC87| LDA.b $0A
|07DC89| TSB.w $0348

|07DC8C| RTS

;===================================================================================================

TileBehavior_PalaceIce:
|07DC8D| LDA.b $0A

|07DC8F| ASL A
|07DC90| ASL A
|07DC91| ASL A
|07DC92| ASL A

|07DC93| TSB.w $0348

|07DC96| RTS

;===================================================================================================

TileBehavior_LightableTorch:
|07DC97| LDA.b $0A
|07DC99| TSB.b $0E
|07DC9B| TSB.w $02F6

|07DC9E| RTS

;===================================================================================================

TileBehavior_DeepWater:
|07DC9F| LDA.b $0A
|07DCA1| TSB.w $0341

|07DCA4| RTS

;===================================================================================================

TileBehavior_ShortWaterLadder:
|07DCA5| LDA.b $0A
|07DCA7| TSB.w $0343

|07DCAA| RTS

;===================================================================================================

TileBehavior_OverlayMask_1C:
|07DCAB| LDA.b $0A
|07DCAD| TSB.w $034C

|07DCB0| RTS

;===================================================================================================

TileBehavior_LayerToggleShutterDoor:
|07DCB1| LDA.b $EF
|07DCB3| AND.w #$FF00
|07DCB6| ORA.w #$0001
|07DCB9| STA.b $EF

|07DCBB| BRA TileBehavior_ShutterDoor

;===================================================================================================

TileBehavior_LayerAndDungeonToggleShutterDoor:
|07DCBD| LDA.b $EF
|07DCBF| AND.w #$FF00
|07DCC2| ORA.w #$0003
|07DCC5| STA.b $EF

|07DCC7| BRA TileBehavior_ShutterDoor

;===================================================================================================

TileBehavior_DungeonToggleShutterDoor:
|07DCC9| LDA.b $EF
|07DCCB| AND.w #$FF00
|07DCCE| ORA.w #$0002
|07DCD1| STA.b $EF

;===================================================================================================

TileBehavior_ShutterDoor:
|07DCD3| LDA.b $0A
|07DCD5| ASL A
|07DCD6| ASL A
|07DCD7| ASL A
|07DCD8| ASL A
|07DCD9| TSB.b $0E

|07DCDB| LDA.b $0A
|07DCDD| XBA
|07DCDE| TSB.b $0E

|07DCE0| LDA.b $06
|07DCE2| AND.w #$0001
|07DCE5| ASL A
|07DCE6| STA.b $62

|07DCE8| RTS

;===================================================================================================

TileBehavior_DungeonToggleManualDoor:
|07DCE9| LDA.b $EF
|07DCEB| AND.w #$FF00
|07DCEE| ORA.w #$0002
|07DCF1| STA.b $EF

;===================================================================================================

TileBehavior_Door:
|07DCF3| LDA.b $0A
|07DCF5| ASL A
|07DCF6| ASL A
|07DCF7| ASL A
|07DCF8| ASL A
|07DCF9| TSB.b $0E

|07DCFB| LDA.b $06
|07DCFD| AND.w #$0001
|07DD00| ASL A
|07DD01| STA.b $62

|07DD03| RTS

;===================================================================================================

TileBehavior_ShallowWater:
|07DD04| LDA.b $0A
|07DD06| TSB.w $0359

|07DD09| RTS

;===================================================================================================
; Things like pots, hammer pegs, blocks, bushes, etc
;===================================================================================================
pool TileBehavior_ManipulablyReplaced

.bitmask
|07DD0A| dw $0001 ; 0000000000000001
|07DD0C| dw $0002 ; 0000000000000010
|07DD0E| dw $0004 ; 0000000000000100
|07DD10| dw $0008 ; 0000000000001000
|07DD12| dw $0010 ; 0000000000010000
|07DD14| dw $0020 ; 0000000000100000
|07DD16| dw $0040 ; 0000000001000000
|07DD18| dw $0080 ; 0000000010000000
|07DD1A| dw $0100 ; 0000000100000000
|07DD1C| dw $0200 ; 0000001000000000
|07DD1E| dw $0400 ; 0000010000000000
|07DD20| dw $0800 ; 0000100000000000
|07DD22| dw $1000 ; 0001000000000000
|07DD24| dw $2000 ; 0010000000000000
|07DD26| dw $4000 ; 0100000000000000
|07DD28| dw $8000 ; 1000000000000000

endpool

;---------------------------------------------------------------------------------------------------

TileBehavior_ManipulablyReplaced:
|07DD2A| LDA.b $0A
|07DD2C| AND.w #$0002
|07DD2F| BEQ .no_bitmask

|07DD31| LDA.b $06
|07DD33| AND.w #$000F
|07DD36| ASL A
|07DD37| TAY

|07DD38| LDA.w .bitmask,Y
|07DD3B| TSB.b $5F

.no_bitmask
|07DD3D| LDA.b $0A
|07DD3F| TSB.b $0E

|07DD41| JSR TileBehavior_FlagManipulable

|07DD44| RTS

;===================================================================================================

TileBehavior_UnusedDeepWater:
|07DD45| LDA.b $06
|07DD47| STA.b $76

|07DD49| LDA.b $0A
|07DD4B| ASL A
|07DD4C| ASL A
|07DD4D| ASL A
|07DD4E| ASL A
|07DD4F| TSB.w $0341

|07DD52| RTS

;===================================================================================================

TileBehavior_Chest:
|07DD53| JSR TileBehavior_FlagManipulable

|07DD56| LDA.b $06
|07DD58| STA.b $76

|07DD5A| SEC
|07DD5B| SBC.w #$0058
|07DD5E| ASL A
|07DD5F| TAX

|07DD60| LDA.w $06E0,X
|07DD63| CMP.w #$8000
|07DD66| BCC TileBehavior_FinishChest

; Big chests
|07DD68| LDA.b $0A
|07DD6A| TSB.b $0E
|07DD6C| ASL A
|07DD6D| ASL A
|07DD6E| ASL A
|07DD6F| ASL A
|07DD70| TSB.w $02E7
|07DD73| AND.w #$0020
|07DD76| BEQ .exit

|07DD78| LDA.b $06
|07DD7A| STA.w $02EA

.exit
|07DD7D| RTS

;---------------------------------------------------------------------------------------------------

TileBehavior_FinishChest:
|07DD7E| LDA.b $0A
|07DD80| TSB.w $02E5
|07DD83| TSB.b $0E

|07DD85| RTS

;===================================================================================================

TileBehavior_SouthSingleLayerStairs:
|07DD86| LDA.b $06
|07DD88| BRA TileBehavior_SouthAutoStairs

;===================================================================================================

TileBehavior_SouthSwapLayerStairs:
|07DD8A| LDA.b $06

;---------------------------------------------------------------------------------------------------

TileBehavior_SouthAutoStairs:
|07DD8C| STA.b $76

|07DD8E| LDA.b $0A
|07DD90| TSB.b $58

|07DD92| ASL A
|07DD93| ASL A
|07DD94| ASL A
|07DD95| ASL A
|07DD96| TSB.w $02C0

|07DD99| RTS

;===================================================================================================

TileBehavior_Spike:
; [BUG] technically, this makes spike damage impossible with boulders on death mountain
|07DD9A| LDA.w $0FFC
|07DD9D| BNE .no_damage

|07DD9F| LDA.w $0403
|07DDA2| AND.w #$0080
|07DDA5| BEQ .damage

.no_damage
|07DDA7| LDA.b $0A
|07DDA9| TSB.b $0E

|07DDAB| RTS

;---------------------------------------------------------------------------------------------------

.damage
|07DDAC| LDA.b $0A
|07DDAE| XBA
|07DDAF| TSB.w $02E7

|07DDB2| RTS

;===================================================================================================

TileBehavior_SpikeFloor:
|07DDB3| LDA.w $0FFC
|07DDB6| BNE .no_damage

|07DDB8| LDA.w $0403
|07DDBB| AND.w #$0080
|07DDBE| BNE .no_damage

|07DDC0| LDA.b $0A
|07DDC2| ASL A
|07DDC3| ASL A
|07DDC4| ASL A
|07DDC5| ASL A
|07DDC6| TSB.w $02EE

.no_damage
|07DDC9| RTS

;===================================================================================================

TileBehavior_Hookshottables:
|07DDCA| LDA.b $0A
|07DDCC| TSB.b $0E

;===================================================================================================

TileBehavior_FlagManipulable:
|07DDCE| LDA.b $0A
|07DDD0| TSB.w $02F6

|07DDD3| RTS

;===================================================================================================

TileBehavior_FlaggableDoor:
|07DDD4| LDA.b $0A
|07DDD6| TSB.b $0E

|07DDD8| ASL A
|07DDD9| ASL A
|07DDDA| ASL A
|07DDDB| ASL A
|07DDDC| TSB.w $02F6

|07DDDF| RTS

;===================================================================================================

TileBehavior_RupeeTile:
|07DDE0| LDX.b $BD

; makes sure the tile below it is also a rupee tile
|07DDE2| LDA.l $7F2040,X
|07DDE6| AND.w #$00FF
|07DDE9| CMP.w #$0060 ; TILETYPE 60
|07DDEC| BNE .no_rupees

|07DDEE| LDA.b $0A
|07DDF0| XBA
|07DDF1| TSB.w $02F6

|07DDF4| RTS

;---------------------------------------------------------------------------------------------------

.no_rupees
|07DDF5| LDA.b $0A
|07DDF7| XBA

|07DDF8| ASL A
|07DDF9| ASL A
|07DDFA| ASL A
|07DDFB| ASL A
|07DDFC| TSB.w $02F6

|07DDFF| RTS

;===================================================================================================

TileBehavior_CrystalPeg_Up:
|07DE00| LDA.b $0A
|07DE02| TSB.b $0E
|07DE04| TSB.w $02F6

|07DE07| LDA.b $0A
|07DE09| XBA

|07DE0A| ASL A
|07DE0B| ASL A
|07DE0C| ASL A
|07DE0D| ASL A

|07DE0E| TSB.w $02E7

|07DE11| RTS

;===================================================================================================

TileBehavior_Conveyor_Upwards:
|07DE12| LDA.b $0A

|07DE14| BRA TileBehavior_Conveyor

;===================================================================================================

TileBehavior_Conveyor_Downwards:
|07DE16| LDA.b $0A
|07DE18| ASL A
|07DE19| ASL A
|07DE1A| ASL A
|07DE1B| ASL A

|07DE1C| BRA TileBehavior_Conveyor

;===================================================================================================

TileBehavior_Conveyor_Leftwards:
|07DE1E| LDA.b $0A
|07DE20| XBA

|07DE21| BRA TileBehavior_Conveyor

;===================================================================================================

TileBehavior_Conveyor_Rightwards:
|07DE23| LDA.b $0A
|07DE25| XBA

|07DE26| ASL A
|07DE27| ASL A
|07DE28| ASL A
|07DE29| ASL A

;===================================================================================================

TileBehavior_Conveyor:
|07DE2A| TSB.w $03F1

|07DE2D| RTS

;===================================================================================================

TileBehavior_MinigameChest:
|07DE2E| JSR TileBehavior_FlagManipulable

|07DE31| LDA.b $06
|07DE33| STA.b $76

|07DE35| BRL TileBehavior_FinishChest

;===================================================================================================

TileBehavior_Entrance:
|07DE38| JSR TileBehavior_Door

|07DE3B| LDA.b $0A
|07DE3D| XBA
|07DE3E| TSB.w $02EE

|07DE41| STZ.b $62

|07DE43| RTS

;===================================================================================================

TileBehavior_NothingOW:
|07DE44| LDA.b $0A
|07DE46| TSB.w $0343

|07DE49| RTS

;===================================================================================================

TileBehavior_ThickGrass:
|07DE4A| LDA.b $0A
|07DE4C| TSB.w $0357

|07DE4F| RTS

;===================================================================================================

TileBehavior_DiggableGround:
|07DE50| LDA.b $0A
|07DE52| TSB.w $035B
|07DE55| TSB.w $0343

|07DE58| RTS

;===================================================================================================
; TODO
;===================================================================================================
pool TileBehavior_Liftable

.id_matcher
|07DE59| dw $0054 ; Hint tile/Sign
|07DE5B| dw $0052 ; Gray rock
|07DE5D| dw $0050 ; Green bush
|07DE5F| dw $0051 ; Dark bush
|07DE61| dw $0053 ; Black rock
|07DE63| dw $0055 ; Big gray rock
|07DE65| dw $0056 ; Big black rock

endpool

;---------------------------------------------------------------------------------------------------

TileBehavior_Liftable:
|07DE67| LDX.w #$000C

.check_next
|07DE6A| LDA.b $06
|07DE6C| CMP.w .id_matcher,X
|07DE6F| BNE .not_match

|07DE71| CMP.w #$0050
|07DE74| BEQ .is_bush

|07DE76| CMP.w #$0051
|07DE79| BNE .is_not_bush

.is_bush
|07DE7B| LDA.b $0A
|07DE7D| XBA

|07DE7E| ASL A
|07DE7F| ASL A
|07DE80| ASL A
|07DE81| ASL A
|07DE82| TSB.w $02EE

.is_not_bush
|07DE85| LDA.b $0A
|07DE87| TSB.w $0366

|07DE8A| STX.w $036A

|07DE8D| JSR TileBehavior_Hookshottables

|07DE90| RTS

.not_match
|07DE91| DEX
|07DE92| DEX
|07DE93| BPL .check_next

|07DE95| RTS

;===================================================================================================

TileBehavior_Ledge_South:
|07DE96| LDA.b $06
|07DE98| STA.b $76

|07DE9A| LDA.b $0A
|07DE9C| ASL A
|07DE9D| ASL A
|07DE9E| ASL A
|07DE9F| ASL A
|07DEA0| TSB.w $036D

|07DEA3| RTS

;===================================================================================================

TileBehavior_Ledge_North:
|07DEA4| LDA.b $06
|07DEA6| STA.b $76

|07DEA8| LDA.b $0A
|07DEAA| TSB.w $036D

|07DEAD| RTS

;===================================================================================================

TileBehavior_Ledge_EastWest:
|07DEAE| LDA.b $06
|07DEB0| STA.b $76

|07DEB2| LDA.b $0A
|07DEB4| TSB.w $036E

|07DEB7| RTS

;===================================================================================================

TileBehavior_Ledge_NorthDiagonal:
|07DEB8| LDA.b $06
|07DEBA| STA.b $76

|07DEBC| LDA.b $0A
|07DEBE| ASL A
|07DEBF| ASL A
|07DEC0| ASL A
|07DEC1| ASL A
|07DEC2| TSB.w $036E

|07DEC5| RTS

;===================================================================================================

TileBehavior_Ledge_SouthDiagonal:
|07DEC6| LDA.b $06
|07DEC8| STA.b $76

|07DECA| LDA.b $0A
|07DECC| TSB.w $036F

|07DECF| RTS

;===================================================================================================

TileBehavior_UnusedCornerType:
|07DED0| LDA.b $06
|07DED2| STA.b $76

|07DED4| LDA.b $0A
|07DED6| TSB.w $0370

|07DED9| RTS

;===================================================================================================

TileBehavior_EasternRuinsCorner:
|07DEDA| LDA.b $06
|07DEDC| STA.b $76

|07DEDE| LDA.b $0A
|07DEE0| ASL A
|07DEE1| ASL A
|07DEE2| ASL A
|07DEE3| ASL A
|07DEE4| TSB.w $0370

|07DEE7| RTS

;===================================================================================================

TileBehavior_Warp:
|07DEE8| LDA.b $0A
|07DEEA| ASL A
|07DEEB| ASL A
|07DEEC| ASL A
|07DEED| ASL A
|07DEEE| TSB.w $0357

|07DEF1| RTS

;===================================================================================================

TileBehavior_GraveStone:
|07DEF2| LDA.b $0A
|07DEF4| TSB.w $02E7
|07DEF7| TSB.b $0E

|07DEF9| RTS

;===================================================================================================

TileBehavior_HylianPlaque:
|07DEFA| LDA.b $0A
|07DEFC| TSB.w $02EE
|07DEFF| TSB.b $0E

|07DF01| RTS

;===================================================================================================

TileBehavior_BonkRocks:
|07DF02| LDA.b $0A
|07DF04| TSB.b $0E

|07DF06| XBA
|07DF07| ASL A
|07DF08| ASL A
|07DF09| ASL A
|07DF0A| ASL A
|07DF0B| TSB.w $02EE

|07DF0E| RTS

;===================================================================================================

pool PushBlock_GetGeneralizedTileInteractionOfTarget

.generic_type
|07DF0F| db $00, $01, $02, $03, $02, $00, $00, $00
|07DF17| db $00, $01, $00, $01, $00, $00, $00, $00
|07DF1F| db $01, $01, $01, $01, $01, $01, $01, $01
|07DF27| db $01, $01, $01, $01, $00, $01, $01, $01
|07DF2F| db $00, $01, $01, $00, $00, $00, $01, $01
|07DF37| db $01, $01, $01, $01, $01, $01, $01, $01
|07DF3F| db $01, $01, $01, $01, $01, $01, $01, $01
|07DF47| db $01, $01, $00, $00, $01, $01, $01, $01
|07DF4F| db $00, $01, $01, $01, $01, $01, $01, $01
|07DF57| db $00, $01, $00, $01, $01, $01, $01, $01
|07DF5F| db $01, $01, $01, $01, $01, $01, $01, $01
|07DF67| db $01, $01, $01, $01, $01, $01, $01, $01
|07DF6F| db $00, $00, $00, $01, $00, $01, $01, $01
|07DF77| db $01, $01, $01, $01, $01, $01, $01, $01
|07DF7F| db $01, $01, $01, $01, $01, $01, $01, $01
|07DF87| db $01, $01, $01, $01, $01, $01, $01, $01
|07DF8F| db $01, $01, $01, $01, $01, $01, $01, $01
|07DF97| db $01, $01, $01, $01, $01, $01, $01, $01
|07DF9F| db $01, $01, $01, $01, $01, $01, $01, $01
|07DFA7| db $01, $01, $01, $01, $01, $01, $01, $01
|07DFAF| db $01, $01, $01, $01, $01, $01, $01, $01
|07DFB7| db $01, $01, $01, $01, $01, $01, $01, $01
|07DFBF| db $01, $01, $01, $01, $01, $01, $01, $01
|07DFC7| db $01, $01, $01, $01, $01, $01, $01, $01
|07DFCF| db $01, $01, $01, $01, $01, $01, $01, $01
|07DFD7| db $01, $01, $01, $01, $01, $01, $01, $01
|07DFDF| db $01, $01, $01, $01, $01, $01, $01, $01
|07DFE7| db $01, $01, $01, $01, $01, $01, $01, $01
|07DFEF| db $01, $01, $01, $01, $01, $01, $01, $01
|07DFF7| db $01, $01, $01, $01, $01, $01, $01, $01
|07DFFF| db $01, $01, $01, $01, $01, $01, $01, $01
|07E007| db $01, $01, $01, $01, $01, $01, $01, $01

endpool

;---------------------------------------------------------------------------------------------------

PushBlock_GetGeneralizedTileInteractionOfTarget:
|07E00F| LDA.b $00
|07E011| AND.w #$FFF8

|07E014| ASL A
|07E015| ASL A
|07E016| ASL A

|07E017| STA.b $06

|07E019| LDA.b $02
|07E01B| AND.w #$003F
|07E01E| CLC
|07E01F| ADC.b $06

|07E021| LDX.b $EE
|07E023| BEQ .upper_layer

|07E025| CLC
|07E026| ADC.w #$1000

;---------------------------------------------------------------------------------------------------

.upper_layer
|07E029| REP #$10

|07E02B| TAX

|07E02C| LDA.l $7F2000,X
|07E030| AND.w #$00FF
|07E033| TAX

|07E034| LDA.w .generic_type,X
|07E037| AND.w #$00FF

|07E03A| RTS

;===================================================================================================
; TODO analyze
DifferenceFor6BLowNibble:
|07E03B| db $00, $01, $02, $03, $04, $05, $06, $07 ; ◥
|07E043| db $07, $06, $05, $04, $03, $02, $01, $00 ; ◤
|07E04B| db $07, $06, $05, $04, $03, $02, $01, $00 ; ◢
|07E053| db $00, $01, $02, $03, $04, $05, $06, $07 ; ◣

FlagFor6BLowNibble:
|07E05B| db $08 ; ◥
|07E05C| db $04 ; ◤
|07E05D| db $02 ; ◢
|07E05E| db $01 ; ◣

;===================================================================================================

FlagMovingIntoSlopes_Vertical:
|07E05F| LDA.b $51
|07E061| AND.b #$07
|07E063| STA.b $00

|07E065| LDY.b $22

|07E067| LDA.b $0C
|07E069| AND.b #$04
|07E06B| BEQ .no_detection_on_north_east

|07E06D| DEY

.no_detection_on_north_east
|07E06E| LDA.b $6E
|07E070| ASL A
|07E071| ASL A
|07E072| STA.b $01

|07E074| TYA
|07E075| AND.b #$07
|07E077| CLC
|07E078| ADC.b $01
|07E07A| TAX

|07E07B| LDA.b $38
|07E07D| AND.b #$05
|07E07F| BEQ .no_detection_on_east

|07E081| LDA.b $51
|07E083| AND.b #$07
|07E085| STA.b $02

|07E087| LDA.b $6E
|07E089| AND.b #$02
|07E08B| BNE .detection_on_south_west

|07E08D| LDA.b #$08
|07E08F| SEC
|07E090| SBC.b $02

|07E092| BRA .continue

.detection_on_south_west
|07E094| LDA.b $02
|07E096| CLC
|07E097| ADC.b #$08

.continue
|07E099| STA.b $02

|07E09B| LDA.w DifferenceFor6BLowNibble,X
|07E09E| SEC
|07E09F| SBC.b $02

|07E0A1| LDY.b $30
|07E0A3| BEQ .exit
|07E0A5| BPL .positive_y_velocity_a

|07E0A7| EOR.b #$FF
|07E0A9| INC A

.positive_y_velocity_a
|07E0AA| STA.b $00

|07E0AC| BRA .continue_from_negative_a

;---------------------------------------------------------------------------------------------------

.no_detection_on_east
|07E0AE| LDA.w DifferenceFor6BLowNibble,X
|07E0B1| SEC
|07E0B2| SBC.b $00
|07E0B4| STA.b $00

.continue_from_negative_a
|07E0B6| LDA.b $30
|07E0B8| BEQ .exit
|07E0BA| BPL .positive_y_velocity_b

|07E0BC| LDA.b $00
|07E0BE| BEQ .exit
|07E0C0| BMI .exit

|07E0C2| REP #$20

|07E0C4| AND.w #$00FF
|07E0C7| CLC
|07E0C8| ADC.b $20
|07E0CA| STA.b $20

|07E0CC| SEP #$20

|07E0CE| LDA.b #$08

|07E0D0| BRA .continue_from_negative_b

;---------------------------------------------------------------------------------------------------

.positive_y_velocity_b
|07E0D2| LDA.b $00
|07E0D4| BPL .exit

|07E0D6| REP #$20

|07E0D8| AND.w #$00FF
|07E0DB| ORA.w #$FF00
|07E0DE| CLC
|07E0DF| ADC.b $20
|07E0E1| STA.b $20

|07E0E3| SEP #$20

|07E0E5| LDA.b #$04

.continue_from_negative_b
|07E0E7| STA.b $6B

|07E0E9| LDY.b #$02

|07E0EB| LDA.b $0C
|07E0ED| AND.b #$04
|07E0EF| BNE .detection_on_north_east

|07E0F1| LDY.b #$03

.detection_on_north_east
|07E0F3| LDA.w FlagFor6BLowNibble,Y
|07E0F6| ORA.b #$10
|07E0F8| TSB.b $6B

.exit
|07E0FA| RTS

;===================================================================================================

FlagMovingIntoSlopes_Horizontal:
|07E0FB| LDA.b $22

|07E0FD| LDY.b $6E
|07E0FF| CPY.b #$06
|07E101| BNE .strictly_ne_sw

|07E103| DEC A

.strictly_ne_sw
|07E104| AND.b #$07
|07E106| STA.b $00

|07E108| LDX.b #$00

|07E10A| LDA.b $0C
|07E10C| AND.b #$04
|07E10E| BEQ .no_detection_on_north_east

|07E110| LDX.b #$02

.no_detection_on_north_east
|07E112| LDA.b $6E
|07E114| ASL A
|07E115| ASL A
|07E116| STA.b $01

|07E118| LDA.b $51,X
|07E11A| AND.b #$07
|07E11C| CLC
|07E11D| ADC.b $01
|07E11F| TAX

|07E120| LDA.b $38
|07E122| AND.b #$05
|07E124| BEQ .no_detection_on_east

|07E126| LDA.b $22
|07E128| AND.b #$07

|07E12A| LDY.b $6E
|07E12C| CPY.b #$04
|07E12E| BEQ .dont_adjust_index

|07E130| CPY.b #$06
|07E132| BEQ .dont_adjust_index

|07E134| XBA
|07E135| TXA
|07E136| EOR.b #$07
|07E138| TAX

|07E139| XBA
|07E13A| EOR.b #$FF
|07E13C| INC A

|07E13D| BRA .continue

;---------------------------------------------------------------------------------------------------

.dont_adjust_index
|07E13F| SEC
|07E140| SBC.b #$08
|07E142| EOR.b #$FF
|07E144| INC A
|07E145| STA.b $02

|07E147| LDA.w DifferenceFor6BLowNibble,X
|07E14A| SEC
|07E14B| SBC.b $02

.continue
|07E14D| LDY.b $31
|07E14F| BEQ .exit
|07E151| BPL .positive_x_velocity_a

|07E153| EOR.b #$FF
|07E155| INC A

.positive_x_velocity_a
|07E156| STA.b $00

|07E158| BRA .continue_from_negative_a

;---------------------------------------------------------------------------------------------------

.no_detection_on_east
|07E15A| LDA.w DifferenceFor6BLowNibble,X
|07E15D| SEC
|07E15E| SBC.b $00
|07E160| STA.b $00

.continue_from_negative_a
|07E162| LDA.b $31
|07E164| BEQ .exit
|07E166| BPL .positive_x_velocity_b

|07E168| LDA.b $00
|07E16A| BEQ .exit
|07E16C| BMI .exit

|07E16E| REP #$20

|07E170| AND.w #$00FF
|07E173| CLC
|07E174| ADC.b $22
|07E176| STA.b $22

|07E178| SEP #$20

|07E17A| LDA.b #$02
|07E17C| BRA .continue_from_negative_b

;---------------------------------------------------------------------------------------------------

.positive_x_velocity_b
|07E17E| LDA.b $00
|07E180| BPL .exit

|07E182| REP #$20

|07E184| AND.w #$00FF
|07E187| ORA.w #$FF00
|07E18A| CLC
|07E18B| ADC.b $22
|07E18D| STA.b $22

|07E18F| SEP #$20

|07E191| LDA.b #$01

.continue_from_negative_b
|07E193| STA.b $6B

|07E195| LDY.b #$00

|07E197| LDA.b $6E
|07E199| AND.b #$02
|07E19B| BNE .detection_on_north_east

|07E19D| LDY.b #$01

.detection_on_north_east
|07E19F| LDA.w FlagFor6BLowNibble,Y
|07E1A2| ORA.b #$20
|07E1A4| TSB.b $6B

.exit
|07E1A6| RTS

;===================================================================================================

HandleLinkRecoiling:
|07E1A7| STZ.b $67

|07E1A9| LDY.b #$08

|07E1AB| LDA.b $27
|07E1AD| BEQ .no_vertical_recoil
|07E1AF| BMI .negative_vertical_recoil

|07E1B1| LDY.b #$04

.negative_vertical_recoil
|07E1B3| JSR .handle_axis

;---------------------------------------------------------------------------------------------------

.no_vertical_recoil
|07E1B6| LDY.b #$02

|07E1B8| LDA.b $28
|07E1BA| BEQ .no_horizontal_recoil
|07E1BC| BMI .handle_axis

|07E1BE| LDY.b #$01

.handle_axis
|07E1C0| TYA
|07E1C1| ORA.b $67
|07E1C3| STA.b $67
|07E1C5| STA.b $26

;---------------------------------------------------------------------------------------------------

.no_horizontal_recoil
|07E1C7| LDA.b $6B
|07E1C9| AND.b #$0C
|07E1CB| BEQ .dont_invert

|07E1CD| LDA.b $6B
|07E1CF| AND.b #$03
|07E1D1| BEQ .dont_invert

|07E1D3| LDA.b $5D
|07E1D5| CMP.b #$02 ; LINKSTATE 02
|07E1D7| BNE .dont_invert

|07E1D9| LDA.b $28
|07E1DB| EOR.b #$FF
|07E1DD| INC A
|07E1DE| STA.b $28

|07E1E0| LDA.b $27
|07E1E2| EOR.b #$FF
|07E1E4| INC A
|07E1E5| STA.b $27

;---------------------------------------------------------------------------------------------------

.dont_invert
|07E1E7| LDA.b $6C
|07E1E9| CMP.b #$01
|07E1EB| BNE .not_in_vertical_door

|07E1ED| LDA.b $26
|07E1EF| AND.b #$0C
|07E1F1| STA.b $26

|07E1F3| LDA.b $67
|07E1F5| AND.b #$0C
|07E1F7| STA.b $67

|07E1F9| STZ.b $28

;---------------------------------------------------------------------------------------------------

.not_in_vertical_door
|07E1FB| LDA.b $6C
|07E1FD| CMP.b #$02
|07E1FF| BNE .exit

|07E201| LDA.b $26
|07E203| AND.b #$03
|07E205| STA.b $26

|07E207| LDA.b $67
|07E209| AND.b #$03
|07E20B| STA.b $67

|07E20D| STZ.b $27

.exit
|07E20F| RTS

;===================================================================================================

SubVelocityValues:
|07E210| db $18 ; 0x00 - walking on ground
|07E211| db $10 ; 0x01 - walking diagonally
|07E212| db $0A ; 0x02 - walking on stairs
|07E213| db $18 ; 0x03 - walking on stairs diagonally, but it's impossible to reach
|07E214| db $10 ; 0x04 - soft slipping
|07E215| db $08 ; 0x05 - soft slipping diagonally
|07E216| db $08 ; 0x06 - entering underworld/hard slipping
|07E217| db $04 ; 0x07 - hard slipping diagonally
|07E218| db $0C ; 0x08 - pushing statue
|07E219| db $10 ; 0x09 - pushing statue diagonally
|07E21A| db $09 ; 0x0A - intraroom stairs
|07E21B| db $19 ; 0x0B - 
|07E21C| db $14 ; 0x0C - walking with sword out/carrying/sloshing
|07E21D| db $0D ; 0x0D - walking with sword out/carrying/sloshing diagonally
|07E21E| db $10 ; 0x0E - sword out/carry sloshing
|07E21F| db $08 ; 0x0F - sword out/carry sloshing diagonally
|07E220| db $40 ; 0x10 - dashing
|07E221| db $2A ; 0x11 - dashing diagonally
|07E222| db $10 ; 0x12 - pushing block
|07E223| db $08 ; 0x13 - pushing block diagonally
|07E224| db $04 ; 0x14 - pulling statue/walking to triforce
|07E225| db $02 ; 0x15 - pulling statue diagonally
|07E226| db $30 ; 0x16 - slosh dashing
|07E227| db $18 ; 0x17 - slosh dashing diagonally
|07E228| db $20 ; 0x18 - dashing on ice
|07E229| db $15 ; 0x19 - dashing on ice diagonally
|07E22A| db $F0 ; 0x1A - 
|07E22B| db $00 ; 0x1B - 
|07E22C| db $F0 ; 0x1C - 
|07E22D| db $01 ; 0x1D - 

;===================================================================================================

HandleLinkVelocity:
|07E22E| PHB
|07E22F| PHK
|07E230| PLB

; Seems to be checks only involved with the triforce room
|07E231| LDA.b $11
|07E233| CMP.b #$02
|07E235| BNE .no_textbox

|07E237| LDA.b $10
|07E239| CMP.b #$0E
|07E23B| BEQ .yes_textbox

.no_textbox
; Is Link immobilized by a debirando pit?
|07E23D| LDA.w $0B7B
|07E240| BEQ .can_move

.yes_textbox
; this all appears to prevent Link from moving
; by setting everything to his coordinates
|07E242| LDA.b $20
|07E244| STA.b $00
|07E246| STA.b $3E

|07E248| LDA.b $22
|07E24A| STA.b $01
|07E24C| STA.b $3F

|07E24E| LDA.b $21
|07E250| STA.b $02
|07E252| STA.b $40

|07E254| LDA.b $23
|07E256| STA.b $03
|07E258| STA.b $41

|07E25A| BRL HandleLinkVelocityAndSandDrag

;---------------------------------------------------------------------------------------------------

.can_move
|07E25D| LDA.b $5D
|07E25F| CMP.b #$04 ; LINKSTATE 04
|07E261| BEQ .swimming_or_not_dashing

|07E263| LDA.w $034A
|07E266| BEQ .not_ice

|07E268| LDA.w $0372
|07E26B| BEQ .swimming_or_not_dashing

; dashing on ice
|07E26D| LDA.b #$18
|07E26F| STA.b $00

|07E271| BRA .reset_recoils

;---------------------------------------------------------------------------------------------------

.swimming_or_not_dashing
|07E273| BRL HandleSwimStrokeAndSubpixels

.not_ice
|07E276| LDA.w $0372
|07E279| BEQ .no_dash_stuff

|07E27B| STZ.b $57

; !WEIRD it can never reach below $20, much less $10
|07E27D| LDA.w $02F1
|07E280| CMP.b #$10
|07E282| BCS .no_dash_stuff

|07E284| BRL DashInPlace

;---------------------------------------------------------------------------------------------------

.no_dash_stuff
|07E287| LDA.w $0316
|07E28A| ORA.w $0317
|07E28D| CMP.b #$0F
|07E28F| BNE .continue_check_speed

|07E291| BRL EXIT_07E3EB

.continue_check_speed
|07E294| LDA.b $5E
|07E296| STA.b $00

|07E298| LDA.w $0351
|07E29B| BEQ .reset_recoils

|07E29D| LDA.b $5E
|07E29F| CMP.b #$10
|07E2A1| BNE .not_dash_speed

|07E2A3| LDX.b #$16
|07E2A5| BRA .save_final_speed

.not_dash_speed
|07E2A7| LDX.b #$0C

; Slosh speed?
|07E2A9| LDA.b $5E
|07E2AB| CMP.b #$0C
|07E2AD| BNE .save_final_speed

|07E2AF| LDX.b #$0E

.save_final_speed
|07E2B1| STX.b $00

;---------------------------------------------------------------------------------------------------

.reset_recoils
|07E2B3| STZ.b $27
|07E2B5| STZ.b $28
|07E2B7| STZ.b $68
|07E2B9| STZ.b $69

|07E2BB| LDX.b #$00

; +1 if moving diagonally
|07E2BD| LDA.b $67
|07E2BF| TAY

|07E2C0| AND.b #$0C
|07E2C2| BEQ .add_nothing

|07E2C4| TYA
|07E2C5| AND.b #$03
|07E2C7| BEQ .add_nothing

|07E2C9| LDX.b #$01

.add_nothing
|07E2CB| TXA
|07E2CC| CLC
|07E2CD| ADC.b $00
|07E2CF| TAX

|07E2D0| LDA.b $5B
|07E2D2| BEQ .not_slipping

|07E2D4| CMP.b #$03
|07E2D6| BNE .load_subvel

|07E2D8| LDA.b $57
|07E2DA| CMP.b #$30
|07E2DC| BCS .stair_drag_too_high

|07E2DE| ADC.b #$08
|07E2E0| STA.b $57

|07E2E2| BRA .load_subvel

;---------------------------------------------------------------------------------------------------

.stair_drag_too_high
|07E2E4| LDA.b #$20
|07E2E6| STA.b $57

|07E2E8| BRA .load_subvel

;---------------------------------------------------------------------------------------------------

.not_slipping
|07E2EA| LDA.b $57
|07E2EC| BEQ .load_subvel

|07E2EE| LDX.b #$0A

|07E2F0| LDA.b $11
|07E2F2| CMP.b #$08
|07E2F4| BEQ .overworld

|07E2F6| CMP.b #$10
|07E2F8| BEQ .overworld

|07E2FA| LDX.b #$02

.overworld
|07E2FC| LDA.b $67
|07E2FE| AND.b #$00 ; [USELESS] vestigial probably
|07E300| BEQ .never_fails

|07E302| INX

.never_fails
|07E303| LDA.b $57
|07E305| CMP.b #$01
|07E307| BEQ .load_subvel

|07E309| CMP.b #$10
|07E30B| BCS .reset_speed

|07E30D| ADC.b #$01
|07E30F| STA.b $57

|07E311| LDA.b #$00
|07E313| BRA .zero_subvelocity

.reset_speed
|07E315| STZ.b $57
|07E317| STZ.b $5E

.load_subvel
|07E319| LDA.w SubVelocityValues,X

.zero_subvelocity
|07E31C| CLC
|07E31D| ADC.b $57
|07E31F| STA.b $0A
|07E321| STA.b $0B

;---------------------------------------------------------------------------------------------------

|07E323| LDA.b #$03
|07E325| STA.b $0C

|07E327| LDA.b #$02
|07E329| STA.b $0D

|07E32B| LDX.b #$01

.do_next_axis
|07E32D| LDA.b $67
|07E32F| AND.b $0C
|07E331| BEQ .skip_because_zero

|07E333| AND.b $0D
|07E335| BEQ .dont_invert_it

|07E337| LDA.b $0A,X
|07E339| EOR.b #$FF
|07E33B| INC A
|07E33C| STA.b $0A,X

.dont_invert_it
|07E33E| LDA.b $0A,X
|07E340| STA.b $27,X

.skip_because_zero
|07E342| ASL.b $0C
|07E344| ASL.b $0C

|07E346| ASL.b $0D
|07E348| ASL.b $0D

|07E34A| DEX
|07E34B| BPL .do_next_axis

;---------------------------------------------------------------------------------------------------

|07E34D| LDA.b #$FF
|07E34F| STA.b $29
|07E351| STA.b $24
|07E353| STA.b $25

|07E355| STZ.b $2C

|07E357| BRA .cache_full_coords

;===================================================================================================

#FindArbitraryLandingSpot:
|07E359| PHB
|07E35A| PHK
|07E35B| PLB

;---------------------------------------------------------------------------------------------------

.cache_full_coords
|07E35C| LDA.b $20
|07E35E| STA.b $00
|07E360| STA.b $3E

|07E362| LDA.b $22
|07E364| STA.b $01
|07E366| STA.b $3F

|07E368| LDA.b $21
|07E36A| STA.b $02
|07E36C| STA.b $40

|07E36E| LDA.b $23
|07E370| STA.b $03
|07E372| STA.b $41

|07E374| LDA.b $5D
|07E376| CMP.b #$0A ; LINKSTATE 0A
|07E378| BEQ .quaking

|07E37A| LDA.w $02F5
|07E37D| CMP.b #$02
|07E37F| BEQ HandleLinkVelocityAndSandDrag

.quaking
|07E381| LDY.b #$02
|07E383| LDX.b #$04

|07E385| LDA.b $4D
|07E387| BNE .next_direction

|07E389| LDY.b #$01
|07E38B| LDX.b #$02

;---------------------------------------------------------------------------------------------------

.next_direction
|07E38D| LDA.w $0027,Y
|07E390| ASL A
|07E391| ASL A
|07E392| ASL A
|07E393| ASL A
|07E394| CLC
|07E395| ADC.w $002A,Y
|07E398| STA.w $002A,Y

|07E39B| PHY
|07E39C| PHP

|07E39D| LDA.w $0027,Y
|07E3A0| LSR A
|07E3A1| LSR A
|07E3A2| LSR A
|07E3A3| LSR A
|07E3A4| CMP.b #$08

|07E3A6| LDY.b #$00
|07E3A8| BCC .positive_velocity

|07E3AA| ORA.b #$F0
|07E3AC| LDY.b #$FF

.positive_velocity
|07E3AE| PLP
|07E3AF| ADC.b $20,X
|07E3B1| STA.b $20,X

|07E3B3| TYA
|07E3B4| ADC.b $21,X
|07E3B6| STA.b $21,X

|07E3B8| PLY
|07E3B9| DEY

|07E3BA| DEX
|07E3BB| DEX
|07E3BC| BPL .next_direction

;---------------------------------------------------------------------------------------------------

|07E3BE| JSR HandleLinkMovingFloor
|07E3C1| JSR ApplyConveyorToLink

|07E3C4| BRA HandleLinkVelocityAndSandDrag

;===================================================================================================

HandleLinkVelocityAndSandDrag_long:
|07E3C6| PHB
|07E3C7| PHK
|07E3C8| PLB

;===================================================================================================

HandleLinkVelocityAndSandDrag:
|07E3C9| REP #$20

|07E3CB| LDA.b $20
|07E3CD| CLC
|07E3CE| ADC.w $0B7E
|07E3D1| STA.b $20

|07E3D3| LDA.b $22
|07E3D5| CLC
|07E3D6| ADC.w $0B7C
|07E3D9| STA.b $22

|07E3DB| SEP #$20

|07E3DD| LDA.b $20
|07E3DF| SEC
|07E3E0| SBC.b $00
|07E3E2| STA.b $30

|07E3E4| LDA.b $22
|07E3E6| SEC
|07E3E7| SBC.b $01
|07E3E9| STA.b $31

;---------------------------------------------------------------------------------------------------

#EXIT_07E3EB:
|07E3EB| SEP #$20

|07E3ED| PLB

|07E3EE| RTL

;===================================================================================================

SwimmingAccelAndThrustChange:
|07E3EF| dw   8, -12,  -8, -16
|07E3F7| dw   4,  -6, -12,  -6
|07E3FF| dw  10, -16, -12,  -6

SwimmingThrustDirectionMask:
|07E407| db $F3
|07E408| db $FF
|07E409| db $FC
|07E40A| db $FF

SwimmingThrustDirectionBit:
|07E40B| dw $0008
|07E40D| dw $0004
|07E40F| dw $0002
|07E411| dw $0001

;---------------------------------------------------------------------------------------------------

HandleSwimStrokeAndSubpixels:
|07E413| STZ.b $27
|07E415| STZ.b $28

|07E417| REP #$20

|07E419| LDX.b #$02

.next_direction
|07E41B| STZ.b $08,X

|07E41D| DEC.w $0326,X
|07E420| BPL .positive_momentum

|07E422| LDA.w #$0001
|07E425| STA.w $032B,X

|07E428| STZ.w $0326,X

.positive_momentum
|07E42B| LDA.w $032B,X
|07E42E| ASL A
|07E42F| TAY

|07E430| LDA.w $034A
|07E433| AND.w #$00FF
|07E436| BEQ .not_on_ice

|07E438| ASL A
|07E439| ASL A
|07E43A| ASL A
|07E43B| STA.b $00

|07E43D| TYA
|07E43E| CLC
|07E43F| ADC.b $00
|07E441| TAY

.not_on_ice
|07E442| LDA.w SwimmingAccelAndThrustChange,Y
|07E445| CLC
|07E446| ADC.w $033C,X
|07E449| BEQ .zero_thrust
|07E44B| BPL .positive_thrust

.zero_thrust
|07E44D| LDA.w SwimmingThrustDirectionMask,X
|07E450| AND.b $67
|07E452| STA.b $67
|07E454| STA.b $26

|07E456| LDA.w $032B,X
|07E459| CMP.w #$0002
|07E45C| BNE .not_maxed

|07E45E| STZ.w $032B,X

|07E461| LDA.w MaxSwimAcceleration
|07E464| STA.w $0334,X

|07E467| LDA.w #$0002

|07E46A| BRA .set_accel_and_thrust

;---------------------------------------------------------------------------------------------------

.not_maxed
|07E46C| LDA.w #$0000
|07E46F| STA.w $0334,X
|07E472| STA.w $032B,X

|07E475| BRA .set_accel_and_thrust

;---------------------------------------------------------------------------------------------------

.positive_thrust
|07E477| PHA

|07E478| TXA
|07E479| CLC
|07E47A| ADC.w $0338,X
|07E47D| ASL A
|07E47E| TAY

|07E47F| LDA.w SwimmingThrustDirectionBit,Y
|07E482| ORA.b $67
|07E484| STA.b $67

|07E486| PLA
|07E487| CMP.w $0334,X
|07E48A| BCC .set_accel_and_thrust

|07E48C| LDA.w $0334,X

.set_accel_and_thrust
|07E48F| STA.w $033C,X
|07E492| STA.b $08,X

|07E494| LDA.b $6A
|07E496| BEQ .not_pressing_diagonally

|07E498| LDA.b $08,X
|07E49A| LSR A
|07E49B| LSR A
|07E49C| STA.b $00

|07E49E| LDA.b $08,X
|07E4A0| SEC
|07E4A1| SBC.b $00
|07E4A3| STA.b $08,X

.not_pressing_diagonally
|07E4A5| LDA.w $0338,X
|07E4A8| AND.w #$00FF
|07E4AB| BNE .positive_subpixel_adjuster

|07E4AD| LDA.b $08,X
|07E4AF| EOR.w #$FFFF
|07E4B2| INC A
|07E4B3| STA.b $08,X

.positive_subpixel_adjuster
|07E4B5| DEX
|07E4B6| DEX
|07E4B7| BMI .continue

|07E4B9| BRL .next_direction

;---------------------------------------------------------------------------------------------------

.continue
|07E4BC| SEP #$20

|07E4BE| LDA.b $20
|07E4C0| STA.b $00
|07E4C2| STA.b $3E

|07E4C4| LDA.b $22
|07E4C6| STA.b $01
|07E4C8| STA.b $3F

|07E4CA| LDA.b $21
|07E4CC| STA.b $02
|07E4CE| STA.b $40

|07E4D0| LDA.b $23
|07E4D2| STA.b $03
|07E4D4| STA.b $41

;---------------------------------------------------------------------------------------------------

|07E4D6| LDY.b #$01
|07E4D8| LDX.b #$02

.next_subpixel
|07E4DA| LDA.b $08,X
|07E4DC| CLC
|07E4DD| ADC.w $002A,Y
|07E4E0| STA.w $002A,Y

|07E4E3| PHY
|07E4E4| PHP

|07E4E5| LDA.b $09,X
|07E4E7| CMP.b #$08

|07E4E9| LDY.b #$00
|07E4EB| BCC .positive_y_subpixeling

|07E4ED| ORA.b #$F0
|07E4EF| LDY.b #$FF

.positive_y_subpixeling
|07E4F1| PLP
|07E4F2| ADC.b $20,X
|07E4F4| STA.b $20,X

|07E4F6| TYA
|07E4F7| ADC.b $21,X
|07E4F9| STA.b $21,X

|07E4FB| PLY

|07E4FC| LDA.b $08,X
|07E4FE| LSR A ; /16
|07E4FF| LSR A
|07E500| LSR A
|07E501| LSR A
|07E502| STA.b $08,X

|07E504| LDA.b $09,X
|07E506| BPL .positive_x_subpixeling

|07E508| EOR.b #$FF
|07E50A| INC A

.positive_x_subpixeling
|07E50B| ASL A ; x16
|07E50C| ASL A
|07E50D| ASL A
|07E50E| ASL A
|07E50F| ORA.b $08,X
|07E511| STA.w $0027,Y

|07E514| DEY

|07E515| DEX
|07E516| DEX
|07E517| BPL .next_subpixel

;---------------------------------------------------------------------------------------------------

|07E519| LDA.w $046C
|07E51C| CMP.b #$04
|07E51E| BNE .no_moving_floor

|07E520| JSR ApplyMovingFloorToLink

.no_moving_floor
|07E523| STZ.b $68
|07E525| STZ.b $69

|07E527| BRL HandleLinkVelocityAndSandDrag

;===================================================================================================

UNREACHABLE_07E52A:
|07E52A| dw $0040, $0010

;===================================================================================================
; Unreachable through normal gameplay.
; But interesting...
;===================================================================================================
DashInPlace:
|07E52E| STZ.b $00
|07E530| STZ.b $01

|07E532| LDA.b $F0
|07E534| AND.b #$0F
|07E536| BEQ .not_pressing_dpad

|07E538| LDX.b #$80

|07E53A| LDA.w $0351
|07E53D| BEQ .not_sloshing

|07E53F| LDX.b #$50

.not_sloshing
|07E541| STX.b $00

|07E543| LDA.b #$01
|07E545| STA.b $01

.not_pressing_dpad
|07E547| STZ.b $27
|07E549| STZ.b $28

|07E54B| STZ.b $08
|07E54D| STZ.b $09

|07E54F| STZ.b $0A
|07E551| STZ.b $0B

|07E553| LDX.b #$03

|07E555| LDA.b $67

.shift_more
|07E557| LSR A
|07E558| BCS .bit_found

|07E55A| DEX
|07E55B| BPL .shift_more

|07E55D| PLB

|07E55E| RTL

;---------------------------------------------------------------------------------------------------

.bit_found
|07E55F| TXY

|07E560| REP #$20

|07E562| LDA.b $00
|07E564| CPY.b #$00
|07E566| BEQ .pressing_up

|07E568| CPY.b #$02
|07E56A| BNE .not_pressing_left

.pressing_up
|07E56C| EOR.w #$FFFF
|07E56F| INC A

.not_pressing_left
|07E570| PHA

|07E571| TYA
|07E572| AND.w #$0002
|07E575| TAX

|07E576| PLA
|07E577| STA.b $08,X

|07E579| SEP #$20

|07E57B| BRL HandleSwimStrokeAndSubpixels.continue

;===================================================================================================

HandleLinkMovingFloor:
|07E57E| LDA.w $046C
|07E581| BEQ EXIT_07E5CC

|07E583| LDA.b $24
|07E585| BEQ .grounded

|07E587| CMP.b #$FF
|07E589| BNE EXIT_07E5CC

.grounded
|07E58B| LDA.w $0322
|07E58E| AND.b #$03
|07E590| CMP.b #$03
|07E592| BNE EXIT_07E5CC

|07E594| LDA.b $5D
|07E596| CMP.b #$13 ; LINKSTATE 13
|07E598| BEQ EXIT_07E5CC

|07E59A| LDY.b #$08

|07E59C| LDA.w $0310
|07E59F| BEQ .no_floor_y_velocity
|07E5A1| BMI .negative_floor_y_velocity

|07E5A3| LDY.b #$04

.negative_floor_y_velocity
|07E5A5| TYA
|07E5A6| TSB.b $67

.no_floor_y_velocity
|07E5A8| LDY.b #$02

|07E5AA| LDA.w $0312
|07E5AD| BEQ ApplyMovingFloorToLink
|07E5AF| BMI .negative_floor_x_velocity

|07E5B1| LDY.b #$01

.negative_floor_x_velocity
|07E5B3| TYA
|07E5B4| TSB.b $67

;===================================================================================================

ApplyMovingFloorToLink:
|07E5B6| STZ.b $6A

|07E5B8| REP #$20

|07E5BA| LDA.b $20
|07E5BC| CLC
|07E5BD| ADC.w $0310
|07E5C0| STA.b $20

|07E5C2| LDA.b $22
|07E5C4| CLC
|07E5C5| ADC.w $0312
|07E5C8| STA.b $22

|07E5CA| SEP #$20

;---------------------------------------------------------------------------------------------------

#EXIT_07E5CC:
|07E5CC| RTS

;===================================================================================================
; Conveyor code
;===================================================================================================
pool ApplyConveyorToLink

.direction
|07E5CD| db $08 ; up
|07E5CE| db $04 ; down
|07E5CF| db $02 ; left
|07E5D0| db $01 ; right

.speed_y
|07E5D1| db  -8 ; up
|07E5D2| db   8 ; down
|07E5D3| db   0 ; left
|07E5D4| db   0 ; right

.speed_x
|07E5D5| db   0 ; up
|07E5D6| db   0 ; down
|07E5D7| db  -8 ; left
|07E5D8| db   8 ; right

endpool

;---------------------------------------------------------------------------------------------------

ApplyConveyorToLink:
|07E5D9| LDA.w $03F3
|07E5DC| BEQ EXIT_07E5CC

|07E5DE| LDA.b $24 ; Link's height; only values of 0 and -1 work
|07E5E0| BEQ .grounded

|07E5E2| CMP.b #$FF
|07E5E4| BNE EXIT_07E5CC

;---------------------------------------------------------------------------------------------------

.grounded
|07E5E6| LDA.w $0376
|07E5E9| AND.b #$01
|07E5EB| BNE EXIT_07E5CC

|07E5ED| LDA.b $5D
|07E5EF| CMP.b #$13 ; LINKSTATE 13
|07E5F1| BEQ EXIT_07E5CC

|07E5F3| LDA.b $4D
|07E5F5| BNE EXIT_07E5CC

|07E5F7| LDA.w $0372
|07E5FA| BEQ .run_conveyor

; TODO what does this do???
|07E5FC| LDA.w $02F1
|07E5FF| CMP.b #$20
|07E601| BNE .run_conveyor

|07E603| LDY.w $03F3
|07E606| DEY

|07E607| LDA.w .direction,Y
|07E60A| AND.b $67
|07E60C| BNE EXIT_07E5CC

;---------------------------------------------------------------------------------------------------

.run_conveyor
|07E60E| STZ.b $6A

|07E610| LDY.w $03F3
|07E613| DEY

|07E614| LDA.w .direction,Y
|07E617| TSB.b $67

|07E619| LDA.w .speed_y,Y
|07E61C| STA.b $72

|07E61E| LDA.w .speed_x,Y
|07E621| STA.b $73

;---------------------------------------------------------------------------------------------------

|07E623| LDX.b #$01
|07E625| LDY.b #$02

.next_direction
|07E627| PHX

|07E628| LDA.b $72,X
|07E62A| ASL A
|07E62B| ASL A
|07E62C| ASL A
|07E62D| ASL A
|07E62E| CLC
|07E62F| ADC.w $041C,X
|07E632| STA.w $041C,X

|07E635| LDA.b $72,X
|07E637| PHP

|07E638| LDX.b #$00

|07E63A| LSR A
|07E63B| LSR A
|07E63C| LSR A
|07E63D| LSR A

|07E63E| PLP
|07E63F| BPL .positive_speed

|07E641| ORA.b #$F0
|07E643| DEX

.positive_speed
|07E644| ADC.w $0020,Y
|07E647| STA.w $0020,Y

|07E64A| TXA
|07E64B| ADC.w $0021,Y
|07E64E| STA.w $0021,Y

|07E651| PLX

|07E652| DEY
|07E653| DEY

|07E654| DEX
|07E655| BPL .next_direction

|07E657| SEP #$20

|07E659| RTS

;===================================================================================================

DominantDiagonalDirection:
|07E65A| db $08, $04, $02, $01

;===================================================================================================
; TODO are others reachable?
;===================================================================================================
WalkAnimationTimer_other:
|07E65E| db $04 ; bunny/carry walk up
|07E65F| db $04 ; bunny/carry walk down
|07E660| db $04 ; bunny/carry walk left
|07E661| db $04 ; bunny/carry walk right
|07E662| db $01 ; slipping with sword/carry up
|07E663| db $01 ; slipping with sword/carry down
|07E664| db $01 ; slipping with sword/carry left
|07E665| db $01 ; slipping with sword/carry right
|07E666| db $02
|07E667| db $02
|07E668| db $02
|07E669| db $02
|07E66A| db $08 ; straight stair doors/pushing
|07E66B| db $08
|07E66C| db $08
|07E66D| db $08

;===================================================================================================

WalkAnimationTimer:
|07E66E| db $01, $02, $03, $02, $02, $02, $03, $02 ; walk
|07E676| db $01 ; used both by walk and on ice, but not for entering underworld
|07E677| db $01, $02, $01, $01, $01, $02, $01, $02 ; entering underworld/ice
|07E67F| db $02, $03, $02, $02, $02, $03, $02      ; ice+underworld entrance - impossible?

;===================================================================================================

HandleLinkAnimation_SetFacingDown:
|07E686| PHB
|07E687| PHK
|07E688| PLB

|07E689| LDA.b #$04
|07E68B| STA.b $26

|07E68D| BRA HandleLinkAnimation_MainEntry

;===================================================================================================

HandleLinkAnimation_FullLongEntry:
|07E68F| PHB
|07E690| PHK
|07E691| PLB

;===================================================================================================

HandleLinkAnimation_MainEntry:
|07E692| LDA.b $5D
|07E694| CMP.b #$04 ; LINKSTATE 04
|07E696| BNE .not_swimming

|07E698| BRL HandleLinkAnimation_Swimming

;---------------------------------------------------------------------------------------------------

.not_swimming
|07E69B| LDA.b $26
|07E69D| BNE .not_moving

|07E69F| BRL .exit

;---------------------------------------------------------------------------------------------------

.not_moving
|07E6A2| STA.b $00

|07E6A4| LDA.w $034A
|07E6A7| BEQ .not_on_ice_a

|07E6A9| LDA.w $0340
|07E6AC| STA.b $00

.not_on_ice_a
|07E6AE| LDA.b $50
|07E6B0| BNE .check_dashing

|07E6B2| LDA.b $6A
|07E6B4| BEQ .no_diagonal

|07E6B6| LDA.b $6C
|07E6B8| BEQ .not_in_door

|07E6BA| ASL A
|07E6BB| AND.b #$FC
|07E6BD| TAY

|07E6BE| BRA .door_or_not_pressing_vertical

;---------------------------------------------------------------------------------------------------

.not_in_door
|07E6C0| LDA.b $2F
|07E6C2| LSR A
|07E6C3| TAX

|07E6C4| LDA.b $00
|07E6C6| AND.w DominantDiagonalDirection,X
|07E6C9| BNE .check_dashing

.no_diagonal
|07E6CB| LDY.b #$04

|07E6CD| LDA.b $00
|07E6CF| AND.b #$0C
|07E6D1| BEQ .door_or_not_pressing_vertical

|07E6D3| LDY.b #$00

.door_or_not_pressing_vertical
|07E6D5| CPY.b #$04
|07E6D7| BEQ .was_pressing_a_vertical

|07E6D9| LDA.b $00
|07E6DB| AND.b #$04
|07E6DD| BNE .opposite_on_axis

|07E6DF| BRA .set_direction

;---------------------------------------------------------------------------------------------------

.was_pressing_a_vertical
|07E6E1| LDA.b $00
|07E6E3| AND.b #$01
|07E6E5| BEQ .set_direction

.opposite_on_axis
|07E6E7| INY
|07E6E8| INY

.set_direction
|07E6E9| STY.b $2F

|07E6EB| BRA .check_dashing

;===================================================================================================

#HandleLinkAnimation_StartWithDash:
|07E6ED| PHB
|07E6EE| PHK
|07E6EF| PLB

;---------------------------------------------------------------------------------------------------

.check_dashing
|07E6F0| LDA.w $0372
|07E6F3| BEQ .not_dashing

|07E6F5| BRL HandleLinkAnimation_Dash

;---------------------------------------------------------------------------------------------------

.not_dashing
|07E6F8| LDA.b $2F
|07E6FA| LSR A
|07E6FB| TAX

|07E6FC| LDA.b $5E
|07E6FE| CMP.b #$06
|07E700| BNE .not_transitioning_to_uw_speed

|07E702| TXA
|07E703| CLC
|07E704| ADC.b #$04
|07E706| TAX

|07E707| BRA .continue_b

;---------------------------------------------------------------------------------------------------

.not_transitioning_to_uw_speed
; check if on ice
|07E709| LDA.w $034A
|07E70C| BEQ .continue_b

|07E70E| LDA.b $F0
|07E710| AND.b #$0F
|07E712| BEQ .no_dpad_press

|07E714| TXA
|07E715| CLC
|07E716| ADC.b #$04
|07E718| TAX

.continue_b
|07E719| LDA.b $5D
|07E71B| CMP.b #$17 ; LINKSTATE 17
|07E71D| BNE .not_bunny

|07E71F| BRL HandleLinkAnimation_Bunny

;---------------------------------------------------------------------------------------------------

.not_bunny
|07E722| LDA.b $11

; Spiral stairs?
|07E724| CMP.b #$0E
|07E726| BEQ HandleLinkAnimation_General

|07E728| CMP.b #$12
|07E72A| BEQ .straight_interroom_stairs_door

|07E72C| CMP.b #$13
|07E72E| BNE .not_interroom_stairs_door

.straight_interroom_stairs_door
|07E730| LDX.b #$0C

|07E732| BRA HandleLinkAnimation_General

;---------------------------------------------------------------------------------------------------

.not_interroom_stairs_door
|07E734| LDA.w $0308
|07E737| AND.b #$80
|07E739| BNE HandleLinkAnimation_General

|07E73B| LDA.b $48
|07E73D| AND.b #$8D
|07E73F| BEQ .not_grabbing

|07E741| LDX.b #$0C
|07E743| BRA HandleLinkAnimation_General

;---------------------------------------------------------------------------------------------------

.not_grabbing
|07E745| LDA.w $0351
|07E748| BNE HandleLinkAnimation_General

|07E74A| LDA.b $3C
|07E74C| BEQ HandleLinkAnimation_SwordPrimed

;===================================================================================================

#HandleLinkAnimation_General:
|07E74E| LDA.b $2E
|07E750| CMP.b #$06
|07E752| BCS .no_dpad_press

|07E754| LDA.w $02F5
|07E757| CMP.b #$02
|07E759| BEQ .no_dpad_press

|07E75B| LDA.w WalkAnimationTimer_other,X
|07E75E| STA.b $00

|07E760| LDA.b $2D
|07E762| CLC
|07E763| ADC.b #$01
|07E765| STA.b $2D

|07E767| CMP.b $00
|07E769| BCC .exit

|07E76B| STZ.b $2D

|07E76D| LDA.b $2E
|07E76F| INC A
|07E770| CMP.b #$06
|07E772| BNE .set_anim_step

.no_dpad_press
|07E774| LDA.b #$00

.set_anim_step
|07E776| STA.b $2E

.exit
|07E778| PLB

|07E779| RTL

;===================================================================================================

HandleLinkAnimation_SwordPrimed:
|07E77A| LDX.b $2E

|07E77C| LDA.b $5E
|07E77E| CMP.b #$06
|07E780| BNE .not_walking_into_dungeon

|07E782| TXA
|07E783| CLC
|07E784| ADC.b #$08
|07E786| TAX

.not_walking_into_dungeon
|07E787| LDA.w $034A
|07E78A| BEQ .not_on_ice

|07E78C| TXA
|07E78D| CLC
|07E78E| ADC.b #$08
|07E790| TAX

.not_on_ice
|07E791| LDA.w $02F5
|07E794| CMP.b #$02
|07E796| BEQ EXIT_07E7E1 ; why so far?

|07E798| LDA.w WalkAnimationTimer,X
|07E79B| STA.b $00

|07E79D| LDA.b $2D
|07E79F| CLC
|07E7A0| ADC.b #$01
|07E7A2| STA.b $2D

|07E7A4| CMP.b $00
|07E7A6| BCC .exit

|07E7A8| STZ.b $2D

|07E7AA| LDA.b $2E
|07E7AC| INC A
|07E7AD| CMP.b #$09
|07E7AF| BNE .dont_reset_step

|07E7B1| LDA.b #$01

.dont_reset_step
|07E7B3| STA.b $2E

.exit
|07E7B5| PLB

|07E7B6| RTL

;===================================================================================================

HandleLinkAnimation_Bunny:
|07E7B7| LDA.b $2E
|07E7B9| CMP.b #$04
|07E7BB| BCS .reset_step

|07E7BD| LDA.w $02F5
|07E7C0| CMP.b #$02
|07E7C2| BEQ .reset_step

|07E7C4| LDA.w WalkAnimationTimer_other,X
|07E7C7| STA.b $00

|07E7C9| LDA.b $2D
|07E7CB| CLC
|07E7CC| ADC.b #$01
|07E7CE| STA.b $2D

|07E7D0| CMP.b $00
|07E7D2| BCC EXIT_07E7E1

|07E7D4| STZ.b $2D

|07E7D6| LDA.b $2E
|07E7D8| INC A
|07E7D9| CMP.b #$04
|07E7DB| BNE .dont_reset_step

.reset_step
|07E7DD| LDA.b #$00

.dont_reset_step
|07E7DF| STA.b $2E

;---------------------------------------------------------------------------------------------------

#EXIT_07E7E1:
|07E7E1| PLB

|07E7E2| RTL

;===================================================================================================

HandleLinkAnimation_Swimming:
|07E7E3| LDA.w $0340
|07E7E6| BEQ .exit

|07E7E8| LDA.b $50
|07E7EA| BNE .exit

|07E7EC| LDA.b $6A
|07E7EE| BEQ .not_moving

|07E7F0| LDA.b $6C
|07E7F2| BEQ .not_in_door

|07E7F4| ASL A
|07E7F5| AND.b #$FC
|07E7F7| TAY

|07E7F8| BRA .continue

;---------------------------------------------------------------------------------------------------

.not_in_door
|07E7FA| LDA.b $2F
|07E7FC| LSR A
|07E7FD| TAX

|07E7FE| LDA.w $0340
|07E801| AND.w DominantDiagonalDirection,X
|07E804| BNE .exit

.not_moving
|07E806| LDY.b #$04

|07E808| LDA.w $0340
|07E80B| AND.b #$0C
|07E80D| BEQ .continue

|07E80F| LDY.b #$00

.continue
|07E811| CPY.b #$04
|07E813| BEQ .going_horizontally

|07E815| LDA.w $0340
|07E818| AND.b #$04
|07E81A| BNE .advance_direction

|07E81C| BRA .set_direction

.going_horizontally
|07E81E| LDA.w $0340
|07E821| AND.b #$01
|07E823| BEQ .set_direction

.advance_direction
|07E825| INY
|07E826| INY

.set_direction
|07E827| STY.b $2F

.exit
|07E829| PLB

|07E82A| RTL

;===================================================================================================

pool HandleLinkAnimation_Dash

; TODO how to get most of these values?
.timers_a_idk
|07E82B| db $03, $03, $05, $03, $03, $03, $05, $03
|07E833| db $02, $02, $04, $02, $02, $02, $04, $02
|07E83B| db $02, $02, $03, $02, $02, $02, $03, $02
|07E843| db $01, $01, $02, $01, $01, $01, $02, $01
|07E84B| db $01, $01, $01, $01, $01, $01, $01, $01
|07E853| db $00, $00, $01, $00, $00, $00, $01, $00
|07E85B| db $00, $00, $00, $00, $00, $00, $00, $00

.timers_charge
|07E863| db $01
|07E864| db $02, $02, $02, $02, $02 ; water?
|07E869| db $02                     ; actual dashing

.thresholds
|07E86A| db $30                               ; unused? is this a default?
|07E86B| db $24, $18, $10, $0C, $08, $04
|07E871| db $04, $06, $08, $0A, $0C, $0E, $10 ; unused?

endpool

;---------------------------------------------------------------------------------------------------

HandleLinkAnimation_Dash:
|07E878| LDX.b #$06

|07E87A| LDA.w $0374
|07E87D| BEQ .use_value

.next_timer_value
|07E87F| LDA.w $0374
|07E882| CMP.w .thresholds,X
|07E885| BCC .use_value

|07E887| DEX
|07E888| BPL .next_timer_value

|07E88A| INX

;---------------------------------------------------------------------------------------------------

.use_value
|07E88B| LDA.b $3C
|07E88D| CMP.b #$09
|07E88F| BCS .get_charge_timer

|07E891| LDA.w $0351
|07E894| BNE .get_charge_timer

|07E896| TXA
|07E897| ASL A
|07E898| ASL A
|07E899| ASL A
|07E89A| TAX

|07E89B| LDA.w .timers_a_idk,X
|07E89E| STA.b $00

|07E8A0| LDA.b $2D
|07E8A2| CLC
|07E8A3| ADC.b #$01
|07E8A5| STA.b $2D

|07E8A7| CMP.b $00
|07E8A9| BCC .proceed_to_exit

|07E8AB| STZ.b $2D

|07E8AD| LDA.b $2E
|07E8AF| INC A
|07E8B0| CMP.b #$09
|07E8B2| BNE .dont_reset_step

|07E8B4| LDA.b #$01

.dont_reset_step
|07E8B6| BRA .set_anim_step

.proceed_to_exit
|07E8B8| BRA .exit

;---------------------------------------------------------------------------------------------------

.get_charge_timer
|07E8BA| LDA.w .timers_charge,X
|07E8BD| STA.b $00

|07E8BF| LDA.b $2D
|07E8C1| CLC
|07E8C2| ADC.b #$01
|07E8C4| STA.b $2D

|07E8C6| CMP.b $00
|07E8C8| BCC .exit

|07E8CA| STZ.b $2D

|07E8CC| LDA.b $2E
|07E8CE| INC A
|07E8CF| CMP.b #$06
|07E8D1| BCC .set_anim_step

|07E8D3| LDA.b #$00

.set_anim_step
|07E8D5| STA.b $2E

.exit
|07E8D7| PLB

|07E8D8| RTL

;===================================================================================================

HandleIndoorCameraAndDoors:
|07E8D9| LDA.b $1B
|07E8DB| BEQ .not_indoors

|07E8DD| LDA.b $6C
|07E8DF| BEQ .not_in_a_door

|07E8E1| JML HandleDoorTransitions ; [WTF] it's right there wtf just BRA

.not_in_a_door
|07E8E5| JSL ApplyLinksMovementToCamera

.not_indoors
|07E8E9| RTS

;===================================================================================================

HandleDoorTransitions:
|07E8EA| STZ.b $68
|07E8EC| STZ.b $69

|07E8EE| LDA.b $26
|07E8F0| AND.b #$0C
|07E8F2| BEQ .not_vertical

|07E8F4| LDX.b $6C
|07E8F6| CPX.b #$01
|07E8F8| BNE .not_vertical

|07E8FA| AND.b #$04
|07E8FC| BEQ .going_up

|07E8FE| REP #$20

|07E900| LDA.b $20
|07E902| CLC
|07E903| ADC.w #$001C
|07E906| STA.b $00

|07E908| AND.w #$00FC
|07E90B| BNE .not_vertical

|07E90D| SEP #$20

|07E90F| LDA.b $01
|07E911| SEC
|07E912| SBC.b $40
|07E914| STA.b $68

|07E916| BRA .not_vertical

.going_up
|07E918| REP #$20

|07E91A| LDA.b $20
|07E91C| SEC
|07E91D| SBC.w #$0012
|07E920| STA.b $00

|07E922| SEP #$20

|07E924| LDA.b $01
|07E926| SEC
|07E927| SBC.b $40
|07E929| STA.b $68

;---------------------------------------------------------------------------------------------------

.not_vertical
|07E92B| SEP #$20

|07E92D| LDA.b $26
|07E92F| AND.b #$03
|07E931| BEQ .not_horizontal

|07E933| LDX.b $6C
|07E935| CPX.b #$02
|07E937| BNE .not_horizontal

|07E939| AND.b #$01
|07E93B| BEQ .going_left

|07E93D| REP #$20

|07E93F| LDA.b $22
|07E941| CLC
|07E942| ADC.w #$0015
|07E945| STA.b $00

|07E947| AND.w #$00FC
|07E94A| BNE .not_horizontal

|07E94C| SEP #$20

|07E94E| LDA.b $01
|07E950| SEC
|07E951| SBC.b $41
|07E953| STA.b $69

|07E955| BRA .not_horizontal

.going_left
|07E957| REP #$20

|07E959| LDA.b $22
|07E95B| SEC
|07E95C| SBC.w #$0008
|07E95F| STA.b $00

|07E961| SEP #$20

|07E963| LDA.b $01
|07E965| SEC
|07E966| SBC.b $41
|07E968| STA.b $69

;---------------------------------------------------------------------------------------------------

.not_horizontal
|07E96A| SEP #$20

|07E96C| LDA.b $69
|07E96E| BEQ .transitioning_vertically
|07E970| BMI .transitioning_west

|07E972| STZ.w $030B
|07E975| STZ.w $0308
|07E978| STZ.w $0309
|07E97B| STZ.w $0376

|07E97E| JSL HandleEdgeTransitionMovementEast_Right8

|07E982| RTS

;---------------------------------------------------------------------------------------------------

.transitioning_west
|07E983| STZ.w $030B
|07E986| STZ.w $0308
|07E989| STZ.w $0309
|07E98C| STZ.w $0376

|07E98F| JSL HandleEdgeTransitionMovementWest_Left8

|07E993| RTS

;---------------------------------------------------------------------------------------------------

.transitioning_vertically
|07E994| LDA.b $68
|07E996| BEQ .exit
|07E998| BPL .transitioning_south

|07E99A| STZ.w $030B
|07E99D| STZ.w $0308
|07E9A0| STZ.w $0309
|07E9A3| STZ.w $0376

|07E9A6| JSL HandleEdgeTransitionMovementNorth

|07E9AA| RTS

;---------------------------------------------------------------------------------------------------

.transitioning_south
|07E9AB| STZ.w $030B
|07E9AE| STZ.w $0308
|07E9B1| STZ.w $0309
|07E9B4| STZ.w $0376

|07E9B7| JSL HandleEdgeTransitionMovementSouth_Down16

.exit
|07E9BB| RTS

;===================================================================================================

ApplyLinksMovementToCamera:
|07E9BC| PHB
|07E9BD| PHK
|07E9BE| PLB

|07E9BF| LDA.b $21
|07E9C1| SEC
|07E9C2| SBC.b $40
|07E9C4| STA.b $68

|07E9C6| LDA.b $23
|07E9C8| SEC
|07E9C9| SBC.b $41
|07E9CB| STA.b $69

|07E9CD| LDA.b $69 ; you already have it, doofus
|07E9CF| BEQ .check_y_movement

|07E9D1| BMI .moved_left

.moved_right
|07E9D3| JSL AdjustQuadrantAndCamera_right

|07E9D7| BRA .check_y_movement

.moved_left
|07E9D9| JSL AdjustQuadrantAndCamera_left

;---------------------------------------------------------------------------------------------------

.check_y_movement
|07E9DD| LDA.b $68
|07E9DF| BEQ .done

|07E9E1| BPL .moved_down

.moved_up
|07E9E3| JSL AdjustQuadrantAndCamera_up

|07E9E7| PLB

|07E9E8| RTL

.moved_down
|07E9E9| JSL AdjustQuadrantAndCamera_down

.done
|07E9ED| PLB

|07E9EE| RTL

;===================================================================================================

InitializePrayerIris:
|07E9EF| JSL CleanUpAndPrepDesertPrayerHDMA

|07E9F3| PHB
|07E9F4| PHK
|07E9F5| PLB

|07E9F6| REP #$20

|07E9F8| LDA.w #$0026
|07E9FB| STA.w $067C

|07E9FE| SEP #$20

|07EA00| STZ.w $067E

|07EA03| JSL BuildPrayerHDMATable

|07EA07| INC.b $B0

|07EA09| PLB

|07EA0A| RTL

;===================================================================================================

DesertPrayerAnimationTimer:
|07EA0B| db $16, $16, $16, $40, $01

;---------------------------------------------------------------------------------------------------
; $067C = tightness
; $0676 = location of Link on screen
BuildPrayerHDMATable:
|07EA10| PHB
|07EA11| PHK
|07EA12| PLB

|07EA13| REP #$30

|07EA15| STZ.b $04

|07EA17| LDA.b $20
|07EA19| SEC
|07EA1A| SBC.b $E8
|07EA1C| CLC
|07EA1D| ADC.w #$000C
|07EA20| STA.b $0E

|07EA22| SEC
|07EA23| SBC.w $067C
|07EA26| STA.w $0674

|07EA29| BPL .link_not_too_high

|07EA2B| STA.b $04

.link_not_too_high
|07EA2D| CLC
|07EA2E| ADC.w $067C

|07EA31| CLC
|07EA32| ADC.w $067C
|07EA35| STA.w $0676

|07EA38| LDA.b $22
|07EA3A| SEC
|07EA3B| SBC.b $E2

|07EA3D| CLC
|07EA3E| ADC.w #$0008
|07EA41| STA.w $0670

|07EA44| LDA.w #$0001
|07EA47| STA.w $067A

;===================================================================================================

NextDesertHDMALine:
|07EA4A| LDA.w #$0100
|07EA4D| STA.b $00
|07EA4F| STA.b $02

|07EA51| LDA.w $0674
|07EA54| BMI .link_too_high

|07EA56| LDA.b $04
|07EA58| CMP.w $0674
|07EA5B| BCC .add_empty_table_entry

|07EA5D| CMP.w $0676
|07EA60| BCS .add_empty_table_entry

.link_too_high
|07EA62| LDA.w $067C
|07EA65| CMP.w $067A
|07EA68| BCS .add_iris_table_entry

|07EA6A| LDA.w #$0001
|07EA6D| STA.w $067A

|07EA70| STZ.w $0674

|07EA73| LDA.w $0676
|07EA76| STA.b $04

|07EA78| CMP.w #$00E1
|07EA7B| BCC .add_empty_table_entry

|07EA7D| BRL DesertHDMATableFinished

;---------------------------------------------------------------------------------------------------

.add_iris_table_entry
|07EA80| JSR DesertHDMACalculateIrisShapeLine

|07EA83| LDA.b $06
|07EA85| BNE .dont_turn_into_blank_line

|07EA87| STZ.w $0674

|07EA8A| BRA .calculate_index

.dont_turn_into_blank_line
|07EA8C| LDA.b $08
|07EA8E| CLC
|07EA8F| ADC.w $0670
|07EA92| STA.b $02

|07EA94| LDA.w $0670
|07EA97| SEC
|07EA98| SBC.b $08
|07EA9A| STA.b $00

.calculate_index
|07EA9C| LDA.w $067A
|07EA9F| AND.w #$00FF
|07EAA2| STA.b $0A

|07EAA4| LDA.b $0E
|07EAA6| SEC
|07EAA7| SBC.b $0A
|07EAA9| DEC A
|07EAAA| ASL A
|07EAAB| TAX

|07EAAC| BRA .add_from_iris

;---------------------------------------------------------------------------------------------------

.add_empty_table_entry
|07EAAE| LDA.b $04
|07EAB0| DEC A
|07EAB1| ASL A
|07EAB2| TAX

.add_from_iris
|07EAB3| LDA.b $00
|07EAB5| TAY
|07EAB6| BMI .use_zero_a

|07EAB8| AND.w #$FF00
|07EABB| BEQ .not_zero_a

|07EABD| CMP.w #$0100
|07EAC0| BNE .use_zero_a

|07EAC2| LDY.w #$00FF
|07EAC5| BRA .not_zero_a

.use_zero_a
|07EAC7| LDY.w #$0000

.not_zero_a
|07EACA| TYA
|07EACB| AND.w #$00FF
|07EACE| STA.b $06

|07EAD0| LDA.b $02
|07EAD2| TAY

|07EAD3| AND.w #$FF00
|07EAD6| BEQ .not_zero_b

; Imposible to get this
|07EAD8| AND.w #$FF00
|07EADB| BEQ .use_zero_b

|07EADD| LDY.w #$00FF
|07EAE0| BRA .not_zero_b

.use_zero_b
|07EAE2| LDY.w #$0000

.not_zero_b
|07EAE5| TYA
|07EAE6| AND.w #$00FF
|07EAE9| XBA
|07EAEA| ORA.b $06
|07EAEC| STA.b $06

|07EAEE| CPX.w #$01C0
|07EAF1| BCS .dont_add_line_a

|07EAF3| CMP.w #$FFFF
|07EAF6| BNE .add_as_is_a

|07EAF8| LDA.w #$00FF

.add_as_is_a
|07EAFB| STA.w $1B00,X

.dont_add_line_a
|07EAFE| LDA.w $0674
|07EB01| BMI .fine_to_try_to_draw

|07EB03| LDA.b $04
|07EB05| CMP.w $0674
|07EB08| BCC .to_next

|07EB0A| CMP.w $0676
|07EB0D| BCS .to_next

.fine_to_try_to_draw
|07EB0F| LDA.w $067A
|07EB12| AND.w #$00FF
|07EB15| DEC A
|07EB16| CLC
|07EB17| ADC.b $0E
|07EB19| TAX

|07EB1A| DEC A
|07EB1B| ASL A
|07EB1C| CMP.w #$01C0
|07EB1F| BCS .dont_add_line_b

|07EB21| TAX

|07EB22| LDA.b $06
|07EB24| CMP.w #$FFFF
|07EB27| BNE .add_as_is_b

|07EB29| LDA.w #$00FF

.add_as_is_b
|07EB2C| STA.w $1B00,X

.dont_add_line_b
|07EB2F| INC.w $067A

;---------------------------------------------------------------------------------------------------

.to_next
|07EB32| INC.b $04

|07EB34| LDA.b $04
|07EB36| BMI .more_to_go

|07EB38| CMP.w #$00E1
|07EB3B| BCS DesertHDMATableFinished

.more_to_go
|07EB3D| BRL NextDesertHDMALine

;===================================================================================================

DesertHDMATableFinished:
|07EB40| SEP #$30

|07EB42| LDA.b $B0
|07EB44| CMP.b #$04
|07EB46| BNE .exit

|07EB48| LDA.w $067E
|07EB4B| CMP.b #$01
|07EB4D| BEQ .dont_advance

; check for ABXY
|07EB4F| LDA.b $F4
|07EB51| ORA.b $F6
|07EB53| AND.b #$C0
|07EB55| BEQ .dont_advance

|07EB57| LDA.b #$01
|07EB59| STA.w $067E

|07EB5C| LSR.w $067C

.dont_advance
|07EB5F| LDA.w $067E
|07EB62| BEQ .still_running_iris

|07EB64| LDA.w $067C
|07EB67| CLC
|07EB68| ADC.b #$08
|07EB6A| STA.w $067C

|07EB6D| CMP.b #$C0
|07EB6F| BCC .still_running_iris

|07EB71| LDA.w $02F0
|07EB74| EOR.b #$01
|07EB76| STA.w $02F0

|07EB79| LDA.b #$F3 ; SONG F3 - max volume
|07EB7B| STA.w $012C

|07EB7E| LDA.b #$00
|07EB80| STA.w $012D

|07EB83| STZ.w $0FC1
|07EB86| STZ.w $030A

|07EB89| STZ.b $3A
|07EB8B| STZ.w $0308

|07EB8E| LDA.b $50
|07EB90| AND.b #$FE
|07EB92| STA.b $50

|07EB94| STZ.b $B0
|07EB96| STZ.b $11

|07EB98| LDA.w $010C
|07EB9B| STA.b $10

|07EB9D| STZ.b $1E
|07EB9F| STZ.b $1F

|07EBA1| STZ.b $96
|07EBA3| STZ.b $97
|07EBA5| STZ.b $98

|07EBA7| JSL IrisSpotlight_ResetTable

|07EBAB| BRA .exit

;---------------------------------------------------------------------------------------------------

.still_running_iris
|07EBAD| DEC.b $3D
|07EBAF| BPL .exit

|07EBB1| LDX.w $030A
|07EBB4| INX
|07EBB5| CPX.b #$04
|07EBB7| BEQ .on_final_step

|07EBB9| STX.w $030A

.on_final_step
|07EBBC| LDA.w DesertPrayerAnimationTimer,X
|07EBBF| STA.b $3D

.exit
|07EBC1| PLB

|07EBC2| RTL

;===================================================================================================

pool DesertHDMACalculateIrisShapeLine

.multiplier_opening
|07EBC3| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|07EBCB| db $FF, $FF, $FF, $FF, $FE, $FE, $FE, $FE
|07EBD3| db $FD, $FD, $FD, $FD, $FC, $FC, $FC, $FB
|07EBDB| db $FB, $FB, $FA, $FA, $F9, $F9, $F8, $F8
|07EBE3| db $F7, $F7, $F6, $F6, $F5, $F5, $F4, $F3
|07EBEB| db $F3, $F2, $F1, $F1, $F0, $EF, $EE, $EE
|07EBF3| db $ED, $EC, $EB, $EA, $E9, $E9, $E8, $E7
|07EBFB| db $E6, $E5, $E4, $E3, $E2, $E1, $DF, $DE
|07EC03| db $DD, $DC, $DB, $DA, $D8, $D7, $D6, $D5
|07EC0B| db $D3, $D2, $D0, $CF, $CD, $CC, $CA, $C9
|07EC13| db $C7, $C6, $C4, $C2, $C1, $BF, $BD, $BB
|07EC1B| db $B9, $B7, $B6, $B4, $B1, $AF, $AD, $AB
|07EC23| db $A9, $A7, $A4, $A2, $9F, $9D, $9A, $97
|07EC2B| db $95, $92, $8F, $8C, $89, $86, $82, $7F
|07EC33| db $7B, $78, $74, $70, $6C, $67, $63, $5E
|07EC3B| db $59, $53, $4D, $46, $3F, $37, $2D, $1F
|07EC43| db $00

.multiplier_closed
|07EC44| db $FF, $FF, $FF, $FF, $FF, $FF, $FE, $FE
|07EC4C| db $FD, $FD, $FC, $FC, $FB, $FA, $F9, $F8
|07EC54| db $F7, $F6, $F5, $F4, $F3, $F1, $F0, $EE
|07EC5C| db $ED, $EB, $E9, $E8, $E6, $E4, $E2, $DF
|07EC64| db $DD, $DB, $D8, $D6, $D3, $D0, $CD, $CA
|07EC6C| db $C7, $C4, $C1, $BD, $B9, $B6, $B1, $AD
|07EC74| db $A9, $A4, $9F, $9A, $95, $8F, $89, $82
|07EC7C| db $7B, $74, $6C, $63, $59, $4D, $3F, $2D
|07EC84| db $00, $00, $00, $00, $00, $00, $00, $00
|07EC8C| db $00, $00, $00, $00, $00, $00, $00, $00
|07EC94| db $00, $00, $00, $00, $00, $00, $00, $00
|07EC9C| db $00, $00, $00, $00, $00, $00, $00, $00
|07ECA4| db $00, $00, $00, $00, $00, $00, $00, $00
|07ECAC| db $00, $00, $00, $00, $00, $00, $00, $00
|07ECB4| db $00, $00, $00, $00, $00, $00, $00, $00
|07ECBC| db $00, $00, $00, $00, $00, $00, $00, $00
|07ECC4| db $00

endpool

;---------------------------------------------------------------------------------------------------

DesertHDMACalculateIrisShapeLine:
|07ECC5| SEP #$30

|07ECC7| LDA.w $067A
|07ECCA| STA.w WRDIVH
|07ECCD| STZ.w WRDIVL

|07ECD0| LDA.w $067C
|07ECD3| STA.w WRDIVB

|07ECD6| NOP
|07ECD7| NOP
|07ECD8| NOP
|07ECD9| NOP
|07ECDA| NOP
|07ECDB| NOP

|07ECDC| REP #$20

|07ECDE| LDA.w RDDIV
|07ECE1| LSR A

|07ECE2| SEP #$20

|07ECE4| TAX

|07ECE5| LDY.w .multiplier_closed,X

|07ECE8| LDA.w $067E
|07ECEB| BEQ .not_opening

|07ECED| LDY.w .multiplier_opening,X

.not_opening
|07ECF0| STY.b $06
|07ECF2| STY.w WRMPYA

|07ECF5| LDA.w $067C
|07ECF8| STA.w WRMPYB

|07ECFB| NOP
|07ECFC| NOP
|07ECFD| NOP
|07ECFE| NOP

|07ECFF| LDA.w RDMPYH
|07ED02| STA.b $08

|07ED04| STZ.b $09
|07ED06| STZ.b $07

|07ED08| REP #$30

|07ED0A| LDA.w $067E
|07ED0D| AND.w #$00FF
|07ED10| BEQ .exit

|07ED12| ASL.b $08

.exit
|07ED14| RTS

;===================================================================================================

FindFreeMovingBlockSlot:
|07ED15| LDX.b #$01

.next
|07ED17| LDA.w $05FC,X
|07ED1A| BNE .taken

|07ED1C| TYA
|07ED1D| INC A
|07ED1E| STA.w $05FC,X

|07ED21| CLC

|07ED22| RTS

.taken
|07ED23| DEX
|07ED24| BPL .next

|07ED26| SEC

|07ED27| RTS

;===================================================================================================

InitializePushBlock:
|07ED28| PHX

|07ED29| STX.b $72

|07ED2B| LDA.b $0E
|07ED2D| PHA

|07ED2E| REP #$20

|07ED30| LDA.w $0540,X
|07ED33| AND.w #$007E
|07ED36| ASL A
|07ED37| ASL A
|07ED38| STA.b $00

|07ED3A| LDA.w $0540,X
|07ED3D| AND.w #$1F80
|07ED40| LSR A
|07ED41| LSR A
|07ED42| LSR A
|07ED43| LSR A
|07ED44| STA.b $02

|07ED46| SEP #$20

|07ED48| LDA.b $0E
|07ED4A| ASL A
|07ED4B| TAX

|07ED4C| LDA.b $00
|07ED4E| STA.w $05E4,X

|07ED51| LDA.b $01
|07ED53| CLC
|07ED54| ADC.w $062D
|07ED57| STA.w $05E0,X
|07ED5A| STA.b $01

|07ED5C| LDA.b $02
|07ED5E| STA.w $05F0,X

|07ED61| LDA.b $03
|07ED63| CLC
|07ED64| ADC.w $062F
|07ED67| STA.w $05EC,X
|07ED6A| STA.b $03

|07ED6C| STZ.w $05E8,X
|07ED6F| STZ.w $05F4,X

|07ED72| LDA.b $AE
|07ED74| CMP.b #$26 ; ROOMTAG 26
|07ED76| BEQ .dont_push

|07ED78| LDX.b $72

|07ED7A| LDA.w $0500,X
|07ED7D| BNE .dont_push

|07ED7F| LDY.b #$00
|07ED81| JSR AttemptToPushTheBlock
|07ED84| BCC .do_the_push

.dont_push
|07ED86| PLA
|07ED87| TAX

|07ED88| STZ.w $05FC,X

|07ED8B| PLX

|07ED8C| SEC

|07ED8D| RTS

;---------------------------------------------------------------------------------------------------

.do_the_push
|07ED8E| LDA.b #$22 ; SFX2.22
|07ED90| JSR PlayLinkSFX2Panned

|07ED93| PLA
|07ED94| STA.b $0E

|07ED96| PLX

|07ED97| LDA.b #$01
|07ED99| STA.w $0500,X

|07ED9C| CLC

|07ED9D| RTS

;===================================================================================================

PushBlock_Slide:
|07ED9E| SEP #$30

|07EDA0| PHB
|07EDA1| PHK
|07EDA2| PLB

|07EDA3| LDA.b $11
|07EDA5| BNE .exit

|07EDA7| STY.b $00

; [BUG] they probably meant to use a loop here
|07EDA9| LDX.b #$01

|07EDAB| LDA.w $05FC,X
|07EDAE| DEC A
|07EDAF| ASL A
|07EDB0| CMP.b $00
|07EDB2| BEQ .matched

|07EDB4| LDX.b #$00

.matched
|07EDB6| TXA
|07EDB7| ASL A
|07EDB8| TAY

|07EDB9| LDA.b #$09
|07EDBB| STA.w $02C4
|07EDBE| STZ.w $02C3

|07EDC1| JSR PushBlock_ApplyVelocity

|07EDC4| LDA.w $05F0,Y
|07EDC7| STA.b $72

|07EDC9| LDA.w $05EC,Y
|07EDCC| STA.b $73

|07EDCE| LDA.w $05E4,Y
|07EDD1| STA.b $74

|07EDD3| LDA.w $05E0,Y
|07EDD6| STA.b $75

|07EDD8| JSR PushBlock_HandleCollision

.exit
|07EDDB| PLB

|07EDDC| RTL

;===================================================================================================

pool PushBlock_HandleFalling

.fall_timer
|07EDDD| db $09, $09, $09, $09, $09

endpool

;---------------------------------------------------------------------------------------------------

PushBlock_HandleFalling:
|07EDE2| SEP #$30

|07EDE4| PHB
|07EDE5| PHK
|07EDE6| PLB

|07EDE7| PHY

|07EDE8| STY.b $0E

|07EDEA| DEC.w $02C4
|07EDED| BPL .exit

|07EDEF| INC.w $02C3

|07EDF2| LDX.w $02C3

|07EDF5| LDA.w .fall_timer,X
|07EDF8| STA.w $02C4

|07EDFB| CPX.b #$04
|07EDFD| BNE .exit

|07EDFF| TYX

|07EE00| STZ.w $0500,X

|07EE03| STZ.w $02C3

|07EE06| LDX.b #$01

|07EE08| LDA.w $05FC,X
|07EE0B| DEC A
|07EE0C| ASL A
|07EE0D| CMP.b $0E
|07EE0F| BEQ .matched

|07EE11| LDX.b #$00

.matched
|07EE13| STZ.w $05FC,X

.exit
|07EE16| PLY

|07EE17| PLB

|07EE18| RTL

;===================================================================================================

pool PushBlock_ApplyVelocity

.block_speed
|07EE19| db $0C

.direction_mask
|07EE1A| db $08, $04, $02, $01

endpool

;---------------------------------------------------------------------------------------------------

PushBlock_ApplyVelocity:
|07EE1E| STZ.b $27
|07EE20| STZ.b $28

|07EE22| LDA.w .block_speed
|07EE25| STA.b $0A
|07EE27| STA.b $0B

|07EE29| LDA.b #$03
|07EE2B| STA.b $0C

|07EE2D| LDA.b #$02
|07EE2F| STA.b $0D

|07EE31| LDA.w $05F8,Y
|07EE34| LSR A
|07EE35| TAX

|07EE36| LDA.w .direction_mask,X
|07EE39| STA.b $00

;---------------------------------------------------------------------------------------------------

|07EE3B| LDX.b #$01

.next_direction_check
|07EE3D| LDA.b $00
|07EE3F| AND.b $0C
|07EE41| BEQ .skip_direction

|07EE43| AND.b $0D
|07EE45| BEQ .direction_positive

|07EE47| LDA.b $0A,X
|07EE49| EOR.b #$FF
|07EE4B| INC A
|07EE4C| STA.b $0A,X

.direction_positive
|07EE4E| LDA.b $0A,X
|07EE50| STA.b $27,X

|07EE52| BRA .direction_found

;---------------------------------------------------------------------------------------------------

.skip_direction
|07EE54| ASL.b $0C
|07EE56| ASL.b $0C

|07EE58| ASL.b $0D
|07EE5A| ASL.b $0D

|07EE5C| DEX
|07EE5D| BPL .next_direction_check

;---------------------------------------------------------------------------------------------------

.direction_found
|07EE5F| LDA.b $27,X

|07EE61| ASL A ; x16
|07EE62| ASL A
|07EE63| ASL A
|07EE64| ASL A

|07EE65| CLC
|07EE66| ADC.w $05F4,Y
|07EE69| STA.w $05F4,Y

|07EE6C| PHP

|07EE6D| CPX.b #$01
|07EE6F| BEQ .push_block_horizontally

|07EE71| LDX.b #$00

|07EE73| LDA.b $27

|07EE75| LSR A ; /16
|07EE76| LSR A
|07EE77| LSR A
|07EE78| LSR A

|07EE79| CMP.b #$08
|07EE7B| BCC .pushing_down

|07EE7D| ORA.b #$F0
|07EE7F| LDX.b #$FF

.pushing_down
|07EE81| PLP
|07EE82| ADC.w $05F0,Y
|07EE85| STA.w $05F0,Y

|07EE88| TXA
|07EE89| ADC.w $05EC,Y
|07EE8C| STA.w $05EC,Y

|07EE8F| LDA.w $05F0,Y
|07EE92| AND.b #$0F
|07EE94| BRA .compare_to_target

;---------------------------------------------------------------------------------------------------

.push_block_horizontally
|07EE96| LDX.b #$00

|07EE98| LDA.b $28
|07EE9A| LSR A ; /16
|07EE9B| LSR A
|07EE9C| LSR A
|07EE9D| LSR A
|07EE9E| CMP.b #$08
|07EEA0| BCC .pushing_right

|07EEA2| ORA.b #$F0

|07EEA4| LDX.b #$FF

.pushing_right
|07EEA6| PLP
|07EEA7| ADC.w $05E4,Y
|07EEAA| STA.w $05E4,Y

|07EEAD| TXA
|07EEAE| ADC.w $05E0,Y
|07EEB1| STA.w $05E0,Y

|07EEB4| LDA.w $05E4,Y
|07EEB7| AND.b #$0F

;---------------------------------------------------------------------------------------------------

.compare_to_target
|07EEB9| TYX

|07EEBA| CMP.w $05E8,X
|07EEBD| BNE .not_at_target

|07EEBF| TXA
|07EEC0| LSR A
|07EEC1| TAX

|07EEC2| LDA.w $05FC,X
|07EEC5| DEC A
|07EEC6| ASL A
|07EEC7| TAX

|07EEC8| INC.w $0500,X

|07EECB| LDA.b $50
|07EECD| AND.b #$FB
|07EECF| STA.b $50

|07EED1| LDA.b $48
|07EED3| AND.b #$FB
|07EED5| STA.b $48

;---------------------------------------------------------------------------------------------------

.not_at_target
|07EED7| SEP #$20

|07EED9| LDA.w $05E4,Y
|07EEDC| STA.b $00

|07EEDE| LDA.w $05E0,Y
|07EEE1| STA.b $01

|07EEE3| LDA.w $05F0,Y
|07EEE6| STA.b $02

|07EEE8| LDA.w $05EC,Y
|07EEEB| STA.b $03

;---------------------------------------------------------------------------------------------------

|07EEED| PHX

|07EEEE| LDX.b #$0F

.next_sprite
|07EEF0| LDA.w $0DD0,X
|07EEF3| CMP.b #$09
|07EEF5| BCC .skip_sprite

|07EEF7| LDA.w $0D10,X
|07EEFA| STA.b $04

|07EEFC| LDA.w $0D30,X
|07EEFF| STA.b $05

|07EF01| LDA.w $0D00,X
|07EF04| STA.b $06

|07EF06| LDA.w $0D20,X
|07EF09| STA.b $07

|07EF0B| REP #$20

|07EF0D| LDA.b $00
|07EF0F| SEC
|07EF10| SBC.b $04
|07EF12| CLC
|07EF13| ADC.w #$0010
|07EF16| CMP.w #$0020
|07EF19| BCS .skip_sprite

|07EF1B| LDA.b $02
|07EF1D| SEC
|07EF1E| SBC.b $06
|07EF20| CLC
|07EF21| ADC.w #$0010
|07EF24| CMP.w #$0020
|07EF27| BCS .skip_sprite

|07EF29| SEP #$20

|07EF2B| LDA.b #$08
|07EF2D| STA.w $0EA0,X

|07EF30| PHY

|07EF31| LDA.w $05F8,Y
|07EF34| LSR A
|07EF35| TAY

|07EF36| LDA.w .recoil_x,Y
|07EF39| STA.w $0F40,X

|07EF3C| LDA.w .recoil_y,Y
|07EF3F| STA.w $0F30,X

|07EF42| PLY

.skip_sprite
|07EF43| SEP #$20

|07EF45| DEX
|07EF46| BPL .next_sprite

|07EF48| PLX

|07EF49| RTS

;---------------------------------------------------------------------------------------------------

.recoil_x
|07EF4A| db   0 ; up
|07EF4B| db   0 ; down
|07EF4C| db -32 ; left
|07EF4D| db  32 ; right

.recoil_y
|07EF4E| db -32 ; up
|07EF4F| db  32 ; down
|07EF50| db   0 ; left
|07EF51| db   0 ; right

;===================================================================================================

pool PushBlock_HandleCollision

.link_offset_on_axis
|07EF52| dw $0008 ; up
|07EF54| dw $0018 ; down
|07EF56| dw $0000 ; left
|07EF58| dw $0010 ; right

.link_offset_perpendicular_bottom
|07EF5A| dw $0000 ; up
|07EF5C| dw $0000 ; down
|07EF5E| dw $0008 ; left
|07EF60| dw $0008 ; right

.link_offset_perpendicular_top
|07EF62| dw $000F ; up
|07EF64| dw $000F ; down
|07EF66| dw $0017 ; left
|07EF68| dw $0017 ; right

.block_offset_on_axis
|07EF6A| dw $000F ; up
|07EF6C| dw $0000 ; down
|07EF6E| dw $000F ; left
|07EF70| dw $0000 ; right

.block_offset_perpendicular_bottom
|07EF72| dw $0000 ; up
|07EF74| dw $0000 ; down
|07EF76| dw $0000 ; left
|07EF78| dw $0000 ; right

.block_offset_perpendicular_top
|07EF7A| dw $000F ; up
|07EF7C| dw $000F ; down
|07EF7E| dw $000F ; left
|07EF80| dw $000F ; right

;---------------------------------------------------------------------------------------------------

.link_coord_address_on_axis
|07EF82| dw $0020 ; up
|07EF84| dw $0020 ; down
|07EF86| dw $0022 ; left
|07EF88| dw $0022 ; right

.link_coord_address_perpendicular
|07EF8A| dw $0022 ; up
|07EF8C| dw $0022 ; down
|07EF8E| dw $0020 ; left
|07EF90| dw $0020 ; right

;---------------------------------------------------------------------------------------------------

.block_coords_address_on_axis
|07EF92| dw $0072 ; up
|07EF94| dw $0072 ; down
|07EF96| dw $0074 ; left
|07EF98| dw $0074 ; right

.block_coords_address_perpendicular
|07EF9A| dw $0074 ; up
|07EF9C| dw $0074 ; down
|07EF9E| dw $0072 ; left
|07EFA0| dw $0072 ; right

endpool

;---------------------------------------------------------------------------------------------------

PushBlock_HandleCollision:
|07EFA2| PHY

|07EFA3| STY.b $0E
|07EFA5| STZ.b $0F

|07EFA7| LDA.b $21
|07EFA9| STA.b $40

|07EFAB| LDA.b $23
|07EFAD| STA.b $41

|07EFAF| REP #$20

|07EFB1| LDA.b $67
|07EFB3| AND.w #$000F

|07EFB6| LDY.b #$06

.check_next_bit
|07EFB8| LSR A
|07EFB9| BCS .direction_match

|07EFBB| DEY
|07EFBC| DEY
|07EFBD| BPL .check_next_bit

|07EFBF| BRL .no_pushback

;---------------------------------------------------------------------------------------------------

.direction_match
|07EFC2| LDA.b $0E
|07EFC4| PHA

|07EFC5| LDA.w .link_coord_address_perpendicular,Y
|07EFC8| STA.b $0C

|07EFCA| LDA.w .block_coords_address_perpendicular,Y
|07EFCD| STA.b $0E

|07EFCF| LDA.b ($0C)
|07EFD1| CLC
|07EFD2| ADC.w .link_offset_perpendicular_bottom,Y
|07EFD5| STA.b $00

|07EFD7| LDA.b ($0C)
|07EFD9| CLC
|07EFDA| ADC.w .link_offset_perpendicular_top,Y
|07EFDD| STA.b $02

|07EFDF| LDA.b ($0E)
|07EFE1| CLC
|07EFE2| ADC.w .block_offset_perpendicular_bottom,Y
|07EFE5| STA.b $04

|07EFE7| LDA.b ($0E)
|07EFE9| CLC
|07EFEA| ADC.w .block_offset_perpendicular_top,Y
|07EFED| STA.b $06

;---------------------------------------------------------------------------------------------------

|07EFEF| LDA.w .link_coord_address_on_axis,Y
|07EFF2| STA.b $0C

|07EFF4| LDA.w .block_coords_address_on_axis,Y
|07EFF7| STA.b $0E

|07EFF9| LDA.b ($0C)
|07EFFB| CLC
|07EFFC| ADC.w .link_offset_on_axis,Y
|07EFFF| STA.b $08

|07F001| LDA.b ($0E)
|07F003| CLC
|07F004| ADC.w .block_offset_on_axis,Y
|07F007| STA.b $0A

;---------------------------------------------------------------------------------------------------

|07F009| LDA.b $48
|07F00B| AND.w #$FFFB
|07F00E| STA.b $48

|07F010| PLA
|07F011| STA.b $0E

|07F013| LDA.b $00
|07F015| CMP.b $04
|07F017| BCC .not_in_block_on_axis

|07F019| CMP.b $06
|07F01B| BCC .in_block_on_axis

.not_in_block_on_axis
|07F01D| LDA.b $02
|07F01F| CMP.b $04
|07F021| BCC .no_pushback

|07F023| CMP.b $06
|07F025| BCS .no_pushback

;---------------------------------------------------------------------------------------------------

.in_block_on_axis
|07F027| PHY
|07F028| PHX

|07F029| LDX.b $0E

|07F02B| LDA.b $2F
|07F02D| AND.w #$00FF
|07F030| CMP.w $05F8,X
|07F033| BNE .direction_mismatch

|07F035| LDY.b #$01

|07F037| TXA
|07F038| LSR A
|07F039| TAX

|07F03A| LDA.w $05FC,X
|07F03D| BEQ .dont_flag_pushing_block

|07F03F| LDY.b #$04

.dont_flag_pushing_block
|07F041| TYA
|07F042| AND.w #$00FF
|07F045| TSB.b $48

;---------------------------------------------------------------------------------------------------

.direction_mismatch
|07F047| PLX
|07F048| PLY

|07F049| TYA
|07F04A| AND.w #$0002
|07F04D| BEQ .pushing_up_or_left

|07F04F| LDA.b $08
|07F051| SEC
|07F052| SBC.b $0A
|07F054| BCC .no_pushback

|07F056| CMP.w #$0008
|07F059| BCS .no_pushback

|07F05B| EOR.w #$FFFF
|07F05E| INC A
|07F05F| STA.b $00

|07F061| CLC
|07F062| ADC.b ($0C)
|07F064| STA.b ($0C)

|07F066| BRA .set_axis

;---------------------------------------------------------------------------------------------------

.pushing_up_or_left
|07F068| LDA.b $08
|07F06A| SEC
|07F06B| SBC.b $0A
|07F06D| CMP.w #$FFF8
|07F070| BCC .no_pushback

|07F072| EOR.w #$FFFF
|07F075| INC A
|07F076| STA.b $00

|07F078| CLC
|07F079| ADC.b ($0C)
|07F07B| STA.b ($0C)

;---------------------------------------------------------------------------------------------------

.set_axis
|07F07D| SEP #$20

|07F07F| LDX.b #$00

|07F081| TYA
|07F082| AND.b #$04
|07F084| BEQ .vertical

|07F086| INX

.vertical
|07F087| LDA.b $30,X
|07F089| CLC
|07F08A| ADC.b $00
|07F08C| STA.b $30,X

;---------------------------------------------------------------------------------------------------

.no_pushback
|07F08E| SEP #$20

|07F090| JSR HandleIndoorCameraAndDoors

|07F093| PLY

|07F094| RTS

;===================================================================================================

DrawAllPushBlocks:
|07F095| PHB
|07F096| PHK
|07F097| PLB

|07F098| LDA.w $05FC
|07F09B| ORA.w $05FD
|07F09E| BEQ .exit

|07F0A0| LDX.b #$01

.next
|07F0A2| LDA.w $05FC,X
|07F0A5| BEQ .skip

|07F0A7| TXA
|07F0A8| ASL A
|07F0A9| TAY

|07F0AA| PHX

|07F0AB| JSR DrawSinglePushBlock

|07F0AE| PLX

.skip
|07F0AF| DEX
|07F0B0| BPL .next

.exit
|07F0B2| PLB

|07F0B3| RTL

;===================================================================================================

pool DrawSinglePushBlock

.unreachable
|07F0B4| db $0C

.step
|07F0B5| db  12,  12,  12, $FF

.index
|07F0B9| db   0,   1,   2,   3
|07F0BD| db   4,   0,   0,   0
|07F0C1| db   0

endpool

;---------------------------------------------------------------------------------------------------

DrawSinglePushBlock:
|07F0C2| PHY

|07F0C3| LDA.b #$04
|07F0C5| JSL AllocateOAMInRegionB

|07F0C9| PLY

|07F0CA| LDA.w $05F0,Y
|07F0CD| STA.b $00

|07F0CF| LDA.w $05EC,Y
|07F0D2| STA.b $01

|07F0D4| LDA.w $05E4,Y
|07F0D7| STA.b $02

|07F0D9| LDA.w $05E0,Y
|07F0DC| STA.b $03

|07F0DE| REP #$20

|07F0E0| LDA.b $00
|07F0E2| SEC
|07F0E3| SBC.b $E8
|07F0E5| DEC A
|07F0E6| STA.b $00

|07F0E8| LDA.b $02
|07F0EA| SEC
|07F0EB| SBC.b $E2
|07F0ED| STA.b $02

|07F0EF| SEP #$20

|07F0F1| PHY

|07F0F2| LDY.w $02C3

|07F0F5| LDA.w .index,Y
|07F0F8| TAX

|07F0F9| LDY.b #$00

|07F0FB| LDA.w .step,X
|07F0FE| CMP.b #$FF
|07F100| BNE .draw

|07F102| BRA .exit

;---------------------------------------------------------------------------------------------------

.draw
|07F104| XBA

|07F105| LDA.b $02
|07F107| STA.b ($90),Y

|07F109| INY
|07F10A| LDA.b $00
|07F10C| STA.b ($90),Y

|07F10E| INY
|07F10F| XBA
|07F110| STA.b ($90),Y

|07F112| INY
|07F113| LDA.b #$20
|07F115| STA.b ($90),Y

|07F117| INY

|07F118| TYA

|07F119| SEC
|07F11A| SBC.b #$04

|07F11C| LSR A
|07F11D| LSR A

|07F11E| TAY

|07F11F| LDA.b #$02
|07F121| STA.b ($92),Y

;---------------------------------------------------------------------------------------------------

.exit
|07F123| PLY

|07F124| RTS

;===================================================================================================

InitializeLink:
|07F125| PHB
|07F126| PHK
|07F127| PLB

|07F128| LDA.b #$02
|07F12A| STA.b $2F

|07F12C| STZ.b $26

|07F12E| STZ.w $0301
|07F131| STZ.w $037A

|07F134| STZ.w $020B

|07F137| STZ.w $0350

|07F13A| STZ.w $030D
|07F13D| STZ.w $030E

|07F140| STZ.w $030A
|07F143| STZ.w $02E1

|07F146| STZ.b $3B

|07F148| LDA.b $3A
|07F14A| AND.b #$BF
|07F14C| STA.b $3A

|07F14E| STZ.w $0308
|07F151| STZ.w $0309
|07F154| STZ.w $0376

|07F157| JSL ResetSwimmingState

|07F15B| LDA.b $50
|07F15D| AND.b #$FE
|07F15F| STA.b $50

|07F161| STZ.b $25
|07F163| STZ.b $4D
|07F165| STZ.b $46

|07F167| STZ.w $031F
|07F16A| STZ.w $0360
|07F16D| STZ.w $02DA

|07F170| STZ.b $55

|07F172| JSR ForciblyUnequipCape_quietly
|07F175| JSR ResetSwordAndItemUsage

|07F178| STZ.w $037B
|07F17B| STZ.w $0300

|07F17E| LDA.b $67
|07F180| AND.b #$F0
|07F182| STA.b $67

|07F184| STZ.w $02F5
|07F187| STZ.w $0079

|07F18A| PLB

|07F18B| RTL

;===================================================================================================
; These reset property routines are so broad that I can't give them better names
;===================================================================================================
ResetLinkProperties_A:
|07F18C| STZ.b $26
|07F18E| STZ.b $67

|07F190| STZ.w $031F
|07F193| STZ.w $034A

|07F196| JSL ResetSwimmingState

|07F19A| STZ.w $02E1
|07F19D| STZ.w $031F
|07F1A0| STZ.w $03DB
|07F1A3| STZ.w $02E0

|07F1A6| STZ.b $56

|07F1A8| STZ.w $03F5
|07F1AB| STZ.w $03F7
|07F1AE| STZ.w $03FC
|07F1B1| STZ.w $03F8
|07F1B4| STZ.w $03FA

|07F1B7| STZ.w $03E9
|07F1BA| STZ.w $0373
|07F1BD| STZ.w $031E

|07F1C0| STZ.w $02F2
|07F1C3| STZ.w $02F8

|07F1C6| STZ.w $02EA
|07F1C9| STZ.w $02E9

|07F1CC| STZ.w $02DB

;===================================================================================================

ResetLinkProperties_B:
|07F1CF| STZ.w $02F5

|07F1D2| STZ.w $0079
|07F1D5| STZ.w $0302
|07F1D8| STZ.w $02F4

|07F1DB| STZ.b $48

|07F1DD| STZ.b $5A
|07F1DF| STZ.b $5B
|07F1E1| STZ.b $5B

;===================================================================================================

ResetLinkProperties_C:
|07F1E3| STZ.w $036C

|07F1E6| STZ.w $031C
|07F1E9| STZ.w $031D

|07F1EC| STZ.w $0315
|07F1EF| STZ.w $03EF

|07F1F2| STZ.w $02E3
|07F1F5| STZ.w $02F6

|07F1F8| STZ.w $0301
|07F1FB| STZ.w $037A

|07F1FE| STZ.w $020B

|07F201| STZ.w $0350

|07F204| STZ.w $030D
|07F207| STZ.w $030E
|07F20A| STZ.w $030A

|07F20D| STZ.b $3B
|07F20F| STZ.b $3A
|07F211| STZ.b $3C

|07F213| STZ.w $0308
|07F216| STZ.w $0309

|07F219| STZ.w $0376

|07F21C| STZ.b $50
|07F21E| STZ.b $4D
|07F220| STZ.b $46

|07F222| STZ.w $0360
|07F225| STZ.w $02DA

|07F228| STZ.b $55

|07F22A| JSR ResetSwordAndItemUsage

|07F22D| STZ.w $037B
|07F230| STZ.w $0300
|07F233| STZ.w $037E

|07F236| STZ.w $02EC

|07F239| STZ.w $0314
|07F23C| STZ.w $03F8

|07F23F| STZ.w $02FA

|07F242| RTL

;===================================================================================================

AnimateStairClimbAndSFX:
|07F243| PHB
|07F244| PHK
|07F245| PLB

|07F246| LDA.b $2E
|07F248| CMP.b #$05
|07F24A| BCC .dont_reset_anim_step

|07F24C| STZ.b $2E

.dont_reset_anim_step
|07F24E| STZ.b $2A
|07F250| STZ.b $2B

|07F252| STZ.w $030A

|07F255| LDA.b #$1C
|07F257| STA.w $0371

|07F25A| LDA.b #$20
|07F25C| STA.w $0378

|07F25F| LDA.b #$01
|07F261| STA.w $037B

;---------------------------------------------------------------------------------------------------

|07F264| LDA.w $0462
|07F267| AND.b #$04
|07F269| BEQ .upwards_sfx

|07F26B| LDA.b #$18 ; SFX2.18
|07F26D| JSR PlayLinkSFX2Panned

|07F270| BRA .sfx_set

.upwards_sfx
|07F272| LDA.b #$16 ; SFX2.16
|07F274| JSR PlayLinkSFX2Panned

;---------------------------------------------------------------------------------------------------

.sfx_set
|07F277| STZ.b $01

|07F279| LDX.b #$10

|07F27B| LDA.w $0462
|07F27E| AND.b #$04
|07F280| BEQ .going_up

|07F282| LDX.b #$F1

|07F284| LDA.b #$FF
|07F286| STA.b $01

.going_up
|07F288| STX.b $00

|07F28A| REP #$20

|07F28C| LDA.b $22
|07F28E| CLC
|07F28F| ADC.b $00
|07F291| STA.b $53

|07F293| LDA.b $20
|07F295| STA.b $51

|07F297| SEP #$20

|07F299| PLB

|07F29A| RTL

;===================================================================================================

HandleLinkOnSpiralStairs:
|07F29B| REP #$20

|07F29D| LDA.b $22
|07F29F| STA.w $0FC2

|07F2A2| LDA.b $20
|07F2A4| STA.w $0FC4

|07F2A7| SEP #$20

|07F2A9| LDA.w $030A
|07F2AC| BEQ .please_continue

|07F2AE| RTL

;---------------------------------------------------------------------------------------------------

.please_continue
|07F2AF| STZ.w $0373

|07F2B2| STZ.b $46
|07F2B4| STZ.b $4D

|07F2B6| PHB
|07F2B7| PHK
|07F2B8| PLB

|07F2B9| LDA.w $0462
|07F2BC| AND.b #$04
|07F2BE| BEQ .going_up_a

;---------------------------------------------------------------------------------------------------

.going_down_a
|07F2C0| LDA.b #$FE
|07F2C2| STA.b $27

|07F2C4| DEC.w $0371
|07F2C7| BPL .down_dont_reset

|07F2C9| STZ.w $0371

|07F2CC| LDA.b #$00
|07F2CE| STA.b $27

|07F2D0| LDA.b #$FE
|07F2D2| STA.b $28

.down_dont_reset
|07F2D4| BRA .continue_a

;---------------------------------------------------------------------------------------------------

.going_up_a
|07F2D6| LDA.b #$FE
|07F2D8| STA.b $27

|07F2DA| DEC.w $0371
|07F2DD| BPL .continue_a

|07F2DF| STZ.w $0371

|07F2E2| LDA.b #$FE
|07F2E4| STA.b $27

|07F2E6| LDA.b #$02
|07F2E8| STA.b $28

;---------------------------------------------------------------------------------------------------

.continue_a
|07F2EA| JSL FindArbitraryLandingSpot
|07F2EE| JSL HandleLinkAnimation_StartWithDash

|07F2F2| LDA.w $0371
|07F2F5| BNE .dont_reset_direction

|07F2F7| DEC.w $0378
|07F2FA| BPL .dont_reset_direction

|07F2FC| STZ.w $0378

|07F2FF| LDX.b #$04

|07F301| LDA.w $0462
|07F304| AND.b #$04
|07F306| BNE .not_going_down_a

|07F308| LDX.b #$06

.not_going_down_a
|07F30A| STX.b $2F

;---------------------------------------------------------------------------------------------------

.dont_reset_direction
|07F30C| LDA.b $22
|07F30E| SEC
|07F30F| SBC.b $53
|07F311| BPL .positive_x

|07F313| EOR.b #$FF
|07F315| INC A

.positive_x
|07F316| BNE .exit

|07F318| REP #$20

|07F31A| JSL RepositionAfterSpiralStairs

|07F31E| SEP #$20

|07F320| LDA.l $7EF3CC
|07F324| BEQ .no_follower

|07F326| JSL InitializeFollower

.no_follower
|07F32A| LDA.b #$F8
|07F32C| STA.b $00

|07F32E| LDA.b #$FF
|07F330| STA.b $01

|07F332| LDA.w $0462
|07F335| AND.b #$04
|07F337| BNE .not_going_down_b

|07F339| LDA.b #$0C
|07F33B| STA.b $00
|07F33D| STZ.b $01

.not_going_down_b
|07F33F| REP #$20

|07F341| LDA.b $22
|07F343| CLC
|07F344| ADC.b $00
|07F346| STA.b $53

;---------------------------------------------------------------------------------------------------

|07F348| SEP #$20

|07F34A| LDA.b #$01
|07F34C| STA.w $030A

|07F34F| LDA.b #$06
|07F351| STA.w $0378

|07F354| LDA.w $0462
|07F357| AND.b #$04
|07F359| BNE .different_stair_sound

;---------------------------------------------------------------------------------------------------

|07F35B| LDA.b #$17 ; SFX2.17
|07F35D| JSR PlayLinkSFX2Panned

|07F360| BRA .exit

.different_stair_sound
|07F362| LDA.b #$19 ; SFX2.19
|07F364| JSR PlayLinkSFX2Panned

;---------------------------------------------------------------------------------------------------

.exit
|07F367| SEP #$20

|07F369| PLB

|07F36A| RTL

;===================================================================================================

FindSpiralStairsLandingSpot:
|07F36B| PHB
|07F36C| PHK
|07F36D| PLB

|07F36E| STZ.w $0373

|07F371| STZ.b $46
|07F373| STZ.b $4D

|07F375| STZ.w $037B

|07F378| REP #$20

|07F37A| LDA.b $22
|07F37C| STA.w $0FC2

|07F37F| LDA.b $20
|07F381| STA.w $0FC4

|07F384| SEP #$20

|07F386| DEC.w $0378
|07F389| BPL .dont_change_direction

|07F38B| STZ.w $0378

|07F38E| LDA.b #$02
|07F390| STA.b $2F

.dont_change_direction
|07F392| LDA.b #$00
|07F394| STA.b $27

|07F396| LDA.b #$04
|07F398| STA.b $28

|07F39A| LDA.w $0462
|07F39D| AND.b #$04
|07F39F| BEQ .going_up

|07F3A1| LDA.b #$02
|07F3A3| STA.b $27

|07F3A5| LDA.b #$FC
|07F3A7| STA.b $28

;---------------------------------------------------------------------------------------------------

.going_up
; TODO???
|07F3A9| LDA.w $030A
|07F3AC| CMP.b #$02
|07F3AE| BNE .dont_recoil

|07F3B0| LDA.b #$10
|07F3B2| STA.b $27
|07F3B4| STZ.b $28

.dont_recoil
|07F3B6| JSL FindArbitraryLandingSpot
|07F3BA| JSL HandleLinkAnimation_StartWithDash

|07F3BE| LDA.b $22
|07F3C0| CMP.b $53
|07F3C2| BNE .exit

|07F3C4| LDA.b #$02
|07F3C6| STA.w $030A

.exit
|07F3C9| SEP #$20

|07F3CB| PLB

|07F3CC| RTL

;===================================================================================================
; just why?
;===================================================================================================
ResetPushTimer:
|07F3CD| PHB
|07F3CE| PHK
|07F3CF| PLB

|07F3D0| LDA.b #$07
|07F3D2| STA.w $0371

|07F3D5| PLB

|07F3D6| RTL

;===================================================================================================

UNREACHABLE_07F3D7:
|07F3D7| PHB
|07F3D8| PHK
|07F3D9| PLB

|07F3DA| REP #$20

|07F3DC| LDA.b $22
|07F3DE| STA.w $0FC2

|07F3E1| LDA.b $20
|07F3E3| STA.w $0FC4

|07F3E6| SEP #$20

|07F3E8| STZ.b $28

;---------------------------------------------------------------------------------------------------

|07F3EA| LDY.b #$08

|07F3EC| LDA.b $11
|07F3EE| CMP.b #$12
|07F3F0| BNE .set_recoil

|07F3F2| LDY.b #$FE

|07F3F4| LDA.w $0462
|07F3F7| AND.b #$04
|07F3F9| BEQ .set_recoil

|07F3FB| LDY.b #$FA

;---------------------------------------------------------------------------------------------------

.set_recoil
|07F3FD| STY.b $27

|07F3FF| JSL FindArbitraryLandingSpot
|07F403| JSL HandleLinkAnimation_StartWithDash

|07F407| PLB

|07F408| RTL

;===================================================================================================

HandleIndoorCameraAndDoors_long:
|07F409| PHB
|07F40A| PHK
|07F40B| PLB

|07F40C| PHX
|07F40D| JSR HandleIndoorCameraAndDoors
|07F410| PLX

|07F411| PLB

|07F412| RTL

;===================================================================================================

CheckForEdgeScreenTransition:
|07F413| PHB
|07F414| PHK
|07F415| PLB

|07F416| LDA.b $5D

; check for spin attack
|07F418| CMP.b #$03 ; LINKSTATE 03
|07F41A| BEQ .prevent_transition

; check for medallion use
|07F41C| CMP.b #$08 ; LINKSTATE 08
|07F41E| BEQ .prevent_transition

|07F420| CMP.b #$09 ; LINKSTATE 09
|07F422| BEQ .prevent_transition

|07F424| CMP.b #$0A ; LINKSTATE 0A
|07F426| BEQ .prevent_transition

; check for recoil
|07F428| LDA.b $46
|07F42A| BEQ .allow

;---------------------------------------------------------------------------------------------------

.prevent_transition
|07F42C| STZ.b $27
|07F42E| STZ.b $28

|07F430| LDA.b #$03
|07F432| STA.w $02C6

|07F435| REP #$20

|07F437| LDA.w $0FC2
|07F43A| STA.b $22

|07F43C| LDA.w $0FC4
|07F43F| STA.b $20

|07F441| SEP #$20
|07F443| SEC

|07F444| PLB

|07F445| RTL

;---------------------------------------------------------------------------------------------------

.allow
|07F446| CLC

|07F447| PLB

|07F448| RTL

;===================================================================================================

ValidateAbilityToNag:
|07F449| LDA.b $5D

|07F44B| CMP.b #$00 ; LINKSTATE 00
|07F44D| BEQ .do_check

|07F44F| CMP.b #$04 ; LINKSTATE 04
|07F451| BEQ .do_check

|07F453| CMP.b #$11 ; LINKSTATE 11
|07F455| BNE .fail

.do_check
|07F457| LDA.b $3A
|07F459| AND.b #$80
|07F45B| ORA.w $0377
|07F45E| ORA.w $0301
|07F461| ORA.w $037A
|07F464| ORA.w $02EC

|07F467| ORA.w $0314
|07F46A| ORA.w $0308
|07F46D| ORA.w $0376
|07F470| BNE .fail

.succeed
|07F472| SEC

|07F473| RTL

.fail
|07F474| CLC

|07F475| RTL

;===================================================================================================

ApproachTheTriforce:
|07F476| PHB
|07F477| PHK
|07F478| PLB

|07F479| LDA.b $20
|07F47B| CMP.b #$98
|07F47D| BCC .still_walking

|07F47F| CMP.b #$A9
|07F481| BCS .keep_speed

|07F483| LDA.b #$14
|07F485| STA.b $5E

.keep_speed
|07F487| LDA.b #$08
|07F489| STA.b $67
|07F48B| STA.b $26

|07F48D| STZ.b $2F

|07F48F| LDA.b #$40
|07F491| STA.b $3D

|07F493| BRA .exit

.still_walking
|07F495| STZ.b $2E
|07F497| STZ.b $67
|07F499| STZ.b $26

|07F49B| DEC.b $3D

|07F49D| LDA.b $3D
|07F49F| BNE .exit

|07F4A1| LDA.b #$02
|07F4A3| STA.w $02DA

|07F4A6| INC.b $B0

.exit
|07F4A8| PLB

|07F4A9| RTL

;===================================================================================================

CheckIfLinkIsBusy:
|07F4AA| PHX

|07F4AB| LDA.b $4D
|07F4AD| ORA.w $02DA
|07F4B0| BNE .am_busy

|07F4B2| LDA.w $0308
|07F4B5| AND.b #$80
|07F4B7| BNE .am_busy

;---------------------------------------------------------------------------------------------------

; look for a duck
|07F4B9| LDX.b #$04

.next_ancilla
|07F4BB| LDA.w $0C4A,X
|07F4BE| CMP.b #$27 ; ANCILLA 27
|07F4C0| BEQ .am_busy

|07F4C2| DEX
|07F4C3| BPL .next_ancilla

;---------------------------------------------------------------------------------------------------

.am_free
|07F4C5| PLX

|07F4C6| CLC

|07F4C7| RTL

;---------------------------------------------------------------------------------------------------

.am_busy
|07F4C8| PLX

|07F4C9| SEC

|07F4CA| RTL

;===================================================================================================

ValidatePipeEntry:
|07F4CB| LDX.b #$04

; look for and delete byrna spark
.next_ancilla
|07F4CD| LDA.w $0C4A,X
|07F4D0| CMP.b #$31 ; ANCILLA 31
|07F4D2| BNE .skip_ancilla

|07F4D4| STZ.w $037A
|07F4D7| STZ.b $50

|07F4D9| STZ.w $0C4A,X

|07F4DC| BRA .continue

.skip_ancilla
|07F4DE| DEX
|07F4DF| BPL .next_ancilla

;---------------------------------------------------------------------------------------------------

.continue
|07F4E1| LDA.w $0308
|07F4E4| AND.b #$80
|07F4E6| ORA.b $4D
|07F4E8| BNE .fail

.succeed
|07F4EA| CLC

|07F4EB| RTL

.fail
|07F4EC| SEC

|07F4ED| RTL

;===================================================================================================
; The tin
;===================================================================================================
CacheCameraPropertiesIfOutdoors:
|07F4EE| LDA.b $1B
|07F4F0| BNE .indoors

|07F4F2| JSL CacheCameraProperties

.indoors
|07F4F6| RTS

;===================================================================================================
; Yes
;===================================================================================================
SignTextOverworld:
|07F4F7| dw $00A5, $00A5, $0046, $003E ; 00, 01, 02, 03
|07F4FF| dw $003E, $00A5, $00A5, $00A5 ; 04, 05, 06, 07

|07F507| dw $00A5, $00A5, $003A, $003E ; 08, 09, 0A, 0B
|07F50F| dw $003E, $00A5, $00A5, $003C ; 0C, 0D, 0E, 0F

|07F517| dw $003B, $0047, $0040, $0040 ; 10, 11, 12, 13
|07F51F| dw $00A5, $00A5, $003D, $00AE ; 14, 15, 16, 17

|07F527| dw $0039, $0039, $00A5, $0039 ; 18, 19, 1A, 1B
|07F52F| dw $0039, $0042, $00A5, $00A5 ; 1C, 1D, 1E, 1F

|07F537| dw $0039, $0039, $00A5, $0039 ; 20, 21, 22, 23
|07F53F| dw $0039, $0043, $00A5, $00A5 ; 24, 25, 26, 27

|07F547| dw $00A5, $00A5, $00A5, $00A5 ; 28, 29, 2A, 2B
|07F54F| dw $00A5, $003F, $00A5, $00A5 ; 2C, 2D, 2E, 2F

|07F557| dw $00A5, $00A5, $00A5, $0040 ; 30, 31, 32, 33
|07F55F| dw $00A5, $0044, $0044, $00A5 ; 34, 35, 36, 37

|07F567| dw $00A5, $00A5, $0045, $0041 ; 38, 39, 3A, 3B
|07F56F| dw $00A5, $0044, $0044, $00A5 ; 3C, 3D, 3E, 3F

;---------------------------------------------------------------------------------------------------

|07F577| dw $00A5, $00A5, $00A5, $00A5 ; 40, 41, 42, 43
|07F57F| dw $00A5, $00A5, $00A5, $00A5 ; 44, 45, 46, 47

|07F587| dw $00A5, $00A5, $00A6, $00A5 ; 48, 49, 4A, 4B
|07F58F| dw $00A5, $00A5, $00A5, $00A7 ; 4C, 4D, 4E, 4F

|07F597| dw $00A5, $00A8, $00A9, $00A5 ; 50, 51, 52, 53
|07F59F| dw $00A5, $00A5, $00A5, $00AF ; 54, 55, 56, 57

|07F5A7| dw $00AD, $00AD, $00A5, $00A5 ; 58, 59, 5A, 5B
|07F5AF| dw $00A5, $00A5, $00A5, $00A5 ; 5C, 5D, 5E, 5F

|07F5B7| dw $00AD, $00AD, $00A5, $00A5 ; 60, 61, 62, 63
|07F5BF| dw $00A5, $00AA, $00A5, $00A5 ; 64, 65, 66, 67

|07F5C7| dw $00A5, $00A5, $00A5, $00A5 ; 68, 69, 6A, 6B
|07F5CF| dw $00A5, $00AB, $00A5, $00A5 ; 6C, 6D, 6E, 6F

|07F5D7| dw $00A5, $00A5, $00A5, $00A5 ; 70, 71, 72, 73
|07F5DF| dw $00A5, $00A5, $00A5, $00A5 ; 74, 75, 76, 77

|07F5E7| dw $00A5, $00A5, $00A5, $00AC ; 78, 79, 7A, 7B
|07F5EF| dw $00A5, $00A5, $00A5, $00A5 ; 7C, 7D, 7E, 7F

;---------------------------------------------------------------------------------------------------

SignTextUnderworld:
|07F5F7| dw $00B2, $00B2, $00B2, $00C5 ; 0000, 0001, 0002, 0003
|07F5FF| dw $00B2, $00B2, $00B2, $00B2 ; 0004, 0005, 0006, 0007
|07F607| dw $00B2, $00B2, $00B2, $00B2 ; 0008, 0009, 000A, 000B
|07F60F| dw $00B2, $00B2, $00C2, $00B2 ; 000C, 000D, 000E, 000F

|07F617| dw $00BC, $00B2, $00B2, $00B2 ; 0010, 0011, 0012, 0013
|07F61F| dw $00B2, $00B2, $00B2, $00B2 ; 0014, 0015, 0016, 0017
|07F627| dw $00B2, $00B2, $00B2, $00B2 ; 0018, 0019, 001A, 001B
|07F62F| dw $00B2, $00B2, $00B2, $00B2 ; 001C, 001D, 001E, 001F

|07F637| dw $00B2, $00B2, $00B2, $00B2 ; 0020, 0021, 0022, 0023
|07F63F| dw $00B2, $00B2, $00B2, $00B3 ; 0024, 0025, 0026, 0027
|07F647| dw $00B7, $00B2, $00B2, $00B2 ; 0028, 0029, 002A, 002B
|07F64F| dw $00B2, $00B2, $00B2, $00B2 ; 002C, 002D, 002E, 002F

|07F657| dw $00B2, $00B2, $00B2, $00B2 ; 0030, 0031, 0032, 0033
|07F65F| dw $00B2, $00B2, $00B2, $00B2 ; 0034, 0035, 0036, 0037
|07F667| dw $00B2, $00B2, $00B2, $00B2 ; 0038, 0039, 003A, 003B
|07F66F| dw $00B2, $00B2, $00C3, $00B2 ; 003C, 003D, 003E, 003F

|07F677| dw $00B2, $00B2, $00B2, $00B2 ; 0040, 0041, 0042, 0043
|07F67F| dw $00B2, $00B2, $00B2, $00B2 ; 0044, 0045, 0046, 0047
|07F687| dw $00B2, $00B2, $00B2, $00BD ; 0048, 0049, 004A, 004B
|07F68F| dw $00B2, $00B2, $00B2, $00B2 ; 004C, 004D, 004E, 004F

|07F697| dw $00B2, $00B2, $00B2, $00B2 ; 0050, 0051, 0052, 0053
|07F69F| dw $00B2, $00B2, $00B7, $00B2 ; 0054, 0055, 0056, 0057
|07F6A7| dw $00B2, $00B2, $00B2, $00B2 ; 0058, 0059, 005A, 005B
|07F6AF| dw $00B2, $00B2, $00B2, $00B2 ; 005C, 005D, 005E, 005F

|07F6B7| dw $00B2, $00B2, $00B2, $00B2 ; 0060, 0061, 0062, 0063
|07F6BF| dw $00B8, $00B2, $00B2, $00B2 ; 0064, 0065, 0066, 0067
|07F6C7| dw $00B2, $00B2, $00BD, $00B2 ; 0068, 0069, 006A, 006B
|07F6CF| dw $00B2, $00B2, $00B2, $00B2 ; 006C, 006D, 006E, 006F

|07F6D7| dw $00B2, $00B2, $00B2, $00BE ; 0070, 0071, 0072, 0073
|07F6DF| dw $00B2, $00B2, $00B2, $00C4 ; 0074, 0075, 0076, 0077
|07F6E7| dw $00B2, $00B2, $00B2, $00B2 ; 0078, 0079, 007A, 007B
|07F6EF| dw $00BE, $00B2, $00C0, $00B2 ; 007C, 007D, 007E, 007F

|07F6F7| dw $00B2, $00B2, $00B2, $00B2 ; 0080, 0081, 0082, 0083
|07F6FF| dw $00B2, $00B2, $00B2, $00B2 ; 0084, 0085, 0086, 0087
|07F707| dw $00B2, $00B2, $00B2, $00B2 ; 0088, 0089, 008A, 008B
|07F70F| dw $00B2, $00B2, $00B2, $00B2 ; 008C, 008D, 008E, 008F

|07F717| dw $00B2, $00B2, $00B2, $00B2 ; 0090, 0091, 0092, 0093
|07F71F| dw $00B2, $00B2, $00B2, $00B9 ; 0094, 0095, 0096, 0097
|07F727| dw $00B2, $00B2, $00B2, $00B2 ; 0098, 0099, 009A, 009B
|07F72F| dw $00B2, $00B2, $00B2, $00B2 ; 009C, 009D, 009E, 009F

|07F737| dw $00B2, $00B2, $00B2, $00B2 ; 00A0, 00A1, 00A2, 00A3
|07F73F| dw $00B2, $00B2, $00B2, $00B2 ; 00A4, 00A5, 00A6, 00A7
|07F747| dw $00B2, $00B2, $00B2, $00B2 ; 00A8, 00A9, 00AA, 00AB
|07F74F| dw $00B2, $00B2, $00B2, $00B2 ; 00AC, 00AD, 00AE, 00AF

|07F757| dw $00BF, $00B2, $00B2, $00B2 ; 00B0, 00B1, 00B2, 00B3
|07F75F| dw $00B2, $00B2, $00B2, $00B2 ; 00B4, 00B5, 00B6, 00B7
|07F767| dw $00B2, $00B2, $00B2, $00B2 ; 00B8, 00B9, 00BA, 00BB
|07F76F| dw $00B2, $00B2, $00B2, $00B2 ; 00BC, 00BD, 00BE, 00BF

|07F777| dw $00B2, $00B2, $00B2, $00B2 ; 00C0, 00C1, 00C2, 00C3
|07F77F| dw $00C1, $00B2, $00B2, $00B2 ; 00C4, 00C5, 00C6, 00C7
|07F787| dw $00B2, $00B2, $00B2, $00B2 ; 00C8, 00C9, 00CA, 00CB
|07F78F| dw $00B2, $00B2, $00B2, $00B2 ; 00CC, 00CD, 00CE, 00CF

|07F797| dw $00B2, $00B2, $00B2, $00B2 ; 00D0, 00D1, 00D2, 00D3
|07F79F| dw $00B2, $00B2, $00C1, $00B2 ; 00D4, 00D5, 00D6, 00D7
|07F7A7| dw $00B2, $00B2, $00B2, $00B2 ; 00D8, 00D9, 00DA, 00DB
|07F7AF| dw $00B2, $00B2, $00B2, $00B2 ; 00DC, 00DD, 00DE, 00DF

|07F7B7| dw $00B2, $00B2, $00B2, $00B2 ; 00E0, 00E1, 00E2, 00E3
|07F7BF| dw $00B2, $00B2, $00B2, $00B2 ; 00E4, 00E5, 00E6, 00E7
|07F7C7| dw $00B2, $00B2, $00B6, $00B2 ; 00E8, 00E9, 00EA, 00EB
|07F7CF| dw $00B2, $00B2, $00B2, $00B2 ; 00EC, 00ED, 00EE, 00EF

|07F7D7| dw $00B2, $00B2, $00B2, $00B2 ; 00F0, 00F1, 00F2, 00F3
|07F7DF| dw $00B2, $00B2, $00B2, $00B2 ; 00F4, 00F5, 00F6, 00F7
|07F7E7| dw $00B2, $00B2, $00B2, $00B2 ; 00F8, 00F9, 00FA, 00FB
|07F7EF| dw $00B2, $00B2, $00B2, $00B2 ; 00FC, 00FD, 00FE, 00FF

;---------------------------------------------------------------------------------------------------

|07F7F7| dw $00B2, $00B2, $00B2, $00B2 ; 0100, 0101, 0102, 0103
|07F7FF| dw $00B2, $00B2, $00B2, $00B2 ; 0104, 0105, 0106, 0107
|07F807| dw $00B2, $00B2, $00B2, $00B2 ; 0108, 0109, 010A, 010B
|07F80F| dw $00B2, $00B3, $00B2, $00B2 ; 010C, 010D, 010E, 010F

|07F817| dw $00B2, $00B2, $00B2, $00B2 ; 0110, 0111, 0112, 0113
|07F81F| dw $00B2, $00B2, $00B2, $00B2 ; 0114, 0115, 0116, 0117
|07F827| dw $00B2, $00B2, $00B2, $00B2 ; 0118, 0119, 011A, 011B
|07F82F| dw $00B2, $00B2, $00B2, $00B2 ; 011C, 011D, 011E, 011F

|07F837| dw $00B2, $00B2, $00B2, $00B2 ; 0120, 0121, 0122, 0123
|07F83F| dw $00B2, $0177, $00B2, $00B2 ; 0124, 0125, 0126, 0127
|07F847| dw $00B2, $00B2, $00B2, $00B2 ; 0128, 0129, 012A, 012B
|07F84F| dw $00B2, $00B2, $00B2, $00B2 ; 012C, 012D, 012E, 012F

|07F857| dw $00B2, $00B2, $00B2, $00B2 ; 0130, 0131, 0132, 0133
|07F85F| dw $00B2, $00B2, $00B2, $00B2 ; 0134, 0135, 0136, 0137
|07F867| dw $00B2, $00B2, $00B2, $00B2 ; 0138, 0139, 013A, 013B
|07F86F| dw $00B2, $00B2, $00B2, $00B2 ; 013C, 013D, 013E, 013F

;===================================================================================================
; FREE ROM: 0x19
;===================================================================================================
NULL_07F877:
|07F877| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|07F87F| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|07F887| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|07F88F| db $FF

;===================================================================================================

PaletteBlackAndWhiteSomething_Conditional:
|07F890| LDA.b $B0
|07F892| BNE PaletteBlackSomething

;===================================================================================================

PaletteBlackAndWhiteSomething:
|07F894| REP #$20

|07F896| LDX.b #$00

.next
|07F898| LDA.l $7EC300,X
|07F89C| STA.l $7FDD80,X

|07F8A0| LDA.l $7EC380,X
|07F8A4| STA.l $7FDE00,X

|07F8A8| LDA.l $7EC400,X
|07F8AC| STA.l $7FDE80,X

|07F8B0| LDA.l $7EC480,X
|07F8B4| STA.l $7FDF00,X

|07F8B8| LDA.w #$7FFF ; RGB: #F8F8F8
|07F8BB| STA.l $7EC300,X
|07F8BF| STA.l $7EC380,X
|07F8C3| STA.l $7EC400,X
|07F8C7| STA.l $7EC480,X

|07F8CB| INX
|07F8CC| INX
|07F8CD| CPX.b #$80
|07F8CF| BNE .next

;---------------------------------------------------------------------------------------------------

|07F8D1| LDA.l $7EC500
|07F8D5| STA.l $7EC540

|07F8D9| LDA.w #$0000
|07F8DC| STA.l $7EC007

|07F8E0| LDA.w #$0002
|07F8E3| STA.l $7EC009

|07F8E7| SEP #$20

|07F8E9| INC.b $B0

|07F8EB| RTL

;===================================================================================================

PaletteBlackSomething:
|07F8EC| JSL PaletteFilter_BlindingWhite

|07F8F0| REP #$30

|07F8F2| LDA.l $7EC009
|07F8F6| CMP.w #$00FF
|07F8F9| BNE RestorePalette

;---------------------------------------------------------------------------------------------------

|07F8FB| LDX.w #$000E
|07F8FE| LDA.w #$0000 ; RGB: #000000

.next_color
|07F901| STA.l $7EC3B0,X
|07F905| STA.l $7EC5B0,X

|07F909| DEX
|07F90A| DEX
|07F90B| BPL .next_color

;---------------------------------------------------------------------------------------------------

|07F90D| STA.l $7EC007
|07F911| STA.l $7EC009

|07F915| SEP #$20

|07F917| STZ.b $11

|07F919| SEP #$30 ; redundant really

|07F91B| RTL

;===================================================================================================

RestorePalette:
|07F91C| CMP.w #$0000
|07F91F| BNE .exit

|07F921| LDA.l $7EC007
|07F925| CMP.w #$001F
|07F928| BNE .exit

;---------------------------------------------------------------------------------------------------

|07F92A| LDX.w #$0000

.next
|07F92D| LDA.l $7FDD80,X
|07F931| STA.l $7EC300,X

|07F935| LDA.l $7FDDC0,X
|07F939| STA.l $7EC340,X

|07F93D| LDA.l $7FDE00,X
|07F941| STA.l $7EC380,X

|07F945| LDA.l $7FDE40,X
|07F949| STA.l $7EC3C0,X

|07F94D| LDA.l $7FDE80,X
|07F951| STA.l $7EC400,X

|07F955| LDA.l $7FDEC0,X
|07F959| STA.l $7EC440,X

|07F95D| LDA.l $7FDF00,X
|07F961| STA.l $7EC480,X

|07F965| LDA.l $7FDF40,X
|07F969| STA.l $7EC4C0,X

|07F96D| INX
|07F96E| INX
|07F96F| CPX.w #$0040
|07F972| BNE .next

;---------------------------------------------------------------------------------------------------

|07F974| SEP #$20

|07F976| STZ.b $1D

.exit
|07F978| SEP #$30

|07F97A| RTL

;===================================================================================================

Palettes_BlueThunder1:
; #RRGGBB :  202010, 383018, 504028, 685028, B0F8F8, 2050B0, 88B0F0
|07F97B| dw  $0884,  $0CC7,  $150A,  $154D,  $7FF6,  $5944,  $7AD1

Palettes_BlueThunder2:
; #RRGGBB :  202010, 383018, 504028, 685028, F8F8B0, 88B0F0, 786840
|07F989| dw  $0884,  $0CC7,  $150A,  $154D,  $5BFF,  $7AD1,  $21AF

Palettes_BlueThunder3:
; #RRGGBB :  202020, 003090, 3060C0, 6898F8, 00F8F8, 2050B0, 0088F8
|07F997| dw  $1084,  $48C0,  $6186,  $7E6D,  $7FE0,  $5944,  $7E20

Palettes_BlueThunder4:
; #RRGGBB :  202020, 700000, C81020, F84050, 00F8F8, 2050B0, 0088F8
|07F9A5| dw  $1084,  $000E,  $1059,  $291F,  $7FE0,  $5944,  $7E20

Palettes_BlueThunder5:
; #RRGGBB :  202020, 404028, 605830, 786840, B0F8F8, 605038, 88B0F0
|07F9B3| dw  $1084,  $1508,  $196C,  $21AF,  $7FF6,  $1D4C,  $7AD1

;---------------------------------------------------------------------------------------------------

; Each of these is a different step of the flash cycle.
Palettes_GanonTowerFlash:
; #RRGGBB :  F8F8F8, 202010, 403038, 707038, A0A068, C0C088, 505038, 602830
|07F9C1| dw  $7FFF,  $0884,  $1CC8,  $1DCE,  $3694,  $4718,  $1D4A,  $18AC

; #RRGGBB :  F8F8F8, 404030, 784858, A08068, D0B098, F8C088, 505038, 784070
|07F9D1| dw  $7FFF,  $1908,  $2D2F,  $3614,  $4EDA,  $471F,  $1D4A,  $390F

; #RRGGBB :  F8F8F8, 683068, 8858B0, A888A8, D8C0F8, F8F8F8, 505038, A05078
|07F9E1| dw  $7FFF,  $34CD,  $5971,  $5635,  $7F1B,  $7FFF,  $1D4A,  $3D54

; #RRGGBB :  F8F8F8, 404030, 784858, A08068, D0B098, F8C088, 505038, 784070
|07F9F1| dw  $7FFF,  $1908,  $2D2F,  $3614,  $4EDA,  $471F,  $1D4A,  $390F

; #RRGGBB :  F8F8F8, 202010, 504808, 787840, A8A870, C8C890, 605038, 602830
|07FA01| dw  $7FFF,  $0884,  $052A,  $21EF,  $3AB5,  $4B39,  $1D4C,  $18AC

;===================================================================================================

#EXIT_07FA11:
|07FA11| RTL

;===================================================================================================

FlashGanonTowerPalette:
|07FA12| LDA.w $04C6
|07FA15| BNE EXIT_07FA11

|07FA17| LDA.b $8A
|07FA19| CMP.b #$43 ; OW 43
|07FA1B| BEQ .on_dark_dm

|07FA1D| CMP.b #$45 ; OW 45
|07FA1F| BEQ .on_dark_dm

|07FA21| CMP.b #$47 ; OW 47
|07FA23| BNE EXIT_07FA11

;---------------------------------------------------------------------------------------------------

.on_dark_dm
|07FA25| PHB
|07FA26| PHK
|07FA27| PLB

|07FA28| LDA.b $1A
|07FA2A| CMP.b #$03
|07FA2C| BEQ .normal_color

|07FA2E| CMP.b #$05
|07FA30| BEQ .pink

|07FA32| CMP.b #$24
|07FA34| BEQ .thunder

|07FA36| CMP.b #$2C
|07FA38| BEQ .pink

|07FA3A| CMP.b #$58
|07FA3C| BEQ .normal_color

|07FA3E| CMP.b #$5A
|07FA40| BNE .bright_white

.pink
|07FA42| REP #$20

;---------------------------------------------------------------------------------------------------

|07FA44| LDX.b #$02

.restore_next
|07FA46| LDA.l $7EC360,X
|07FA4A| STA.l $7EC560,X

|07FA4E| LDA.l $7EC370,X
|07FA52| STA.l $7EC570,X

|07FA56| LDA.l $7EC390,X
|07FA5A| STA.l $7EC590,X

|07FA5E| LDA.l $7EC3E0,X
|07FA62| STA.l $7EC5E0,X

|07FA66| LDA.l $7EC3F0,X
|07FA6A| STA.l $7EC5F0,X

|07FA6E| INX
|07FA6F| INX
|07FA70| CPX.b #$10
|07FA72| BNE .restore_next

|07FA74| BRA .bright_white

;---------------------------------------------------------------------------------------------------

.thunder
|07FA76| LDX.b #$36 ; SFX2.36
|07FA78| STX.w $012E

;---------------------------------------------------------------------------------------------------

.normal_color
|07FA7B| REP #$20

|07FA7D| LDX.b #$02
|07FA7F| LDY.b #$00

.next_thunder
|07FA81| LDA.w Palettes_BlueThunder1,Y
|07FA84| STA.l $7EC560,X

|07FA88| LDA.w Palettes_BlueThunder2,Y
|07FA8B| STA.l $7EC570,X

|07FA8F| LDA.w Palettes_BlueThunder3,Y
|07FA92| STA.l $7EC590,X

|07FA96| LDA.w Palettes_BlueThunder4,Y
|07FA99| STA.l $7EC5E0,X

|07FA9D| LDA.w Palettes_BlueThunder5,Y
|07FAA0| STA.l $7EC5F0,X

|07FAA4| INY
|07FAA5| INY

|07FAA6| INX
|07FAA7| INX
|07FAA8| CPX.b #$10
|07FAAA| BNE .next_thunder

;---------------------------------------------------------------------------------------------------

.bright_white
|07FAAC| SEP #$20

|07FAAE| LDX.b #$00
|07FAB0| LDY.b #$40

|07FAB2| LDA.b $8A
|07FAB4| CMP.b #$43 ; OW 43
|07FAB6| BEQ .main_mountain

|07FAB8| CMP.b #$45 ; OW 45
|07FABA| BNE .next_gt

;---------------------------------------------------------------------------------------------------

.main_mountain
|07FABC| LDA.l $7EF2C3
|07FAC0| AND.b #$20
|07FAC2| BNE .gt_opened

|07FAC4| LDA.b $1A
|07FAC6| AND.b #$0C
|07FAC8| ASL A
|07FAC9| ASL A
|07FACA| TAY

;---------------------------------------------------------------------------------------------------

.next_gt
|07FACB| REP #$20

|07FACD| LDA.w Palettes_GanonTowerFlash,Y
|07FAD0| STA.l $7EC5D0,X

|07FAD4| INY
|07FAD5| INY

|07FAD6| INX
|07FAD7| INX
|07FAD8| CPX.b #$10
|07FADA| BNE .next_gt

;---------------------------------------------------------------------------------------------------

.gt_opened
|07FADC| SEP #$20

|07FADE| PLB

|07FADF| INC.b $15

|07FAE1| RTL

;===================================================================================================

ApplyOverworldOverlay:
|07FAE2| PHB

|07FAE3| LDA.b #$7E
|07FAE5| PHA
|07FAE6| PLB

|07FAE7| REP #$30

|07FAE9| LDA.b $8A
|07FAEB| ASL A
|07FAEC| TAX

|07FAED| JSR (.vectors,X)

|07FAF0| SEP #$30

|07FAF2| PLB

|07FAF3| RTL

;---------------------------------------------------------------------------------------------------

.vectors
|07FAF4| dw OverworldOverlay_LumberjackTree        ; 0x00
|07FAF6| dw OverworldOverlay_LumberjackTree        ; 0x01
|07FAF8| dw OverworldOverlay_LumberjackTree        ; 0x02
|07FAFA| dw OverworldOverlay_TurtleRockPortal      ; 0x03
|07FAFC| dw OverworldOverlay_TurtleRockPortal      ; 0x04
|07FAFE| dw OverworldOverlay_TurtleRockPortal      ; 0x05
|07FB00| dw OverworldOverlay_TurtleRockPortal      ; 0x06
|07FB02| dw OverworldOverlay_TurtleRockPortal      ; 0x07
|07FB04| dw OverworldOverlay_BonkRocks             ; 0x08
|07FB06| dw OverworldOverlay_BonkRocks             ; 0x09
|07FB08| dw OverworldOverlay_BonkRocks             ; 0x0A
|07FB0A| dw OverworldOverlay_BonkRocks             ; 0x0B
|07FB0C| dw OverworldOverlay_BonkRocks             ; 0x0C
|07FB0E| dw OverworldOverlay_BonkRocks             ; 0x0D
|07FB10| dw OverworldOverlay_BonkRocks             ; 0x0E
|07FB12| dw OverworldOverlay_BonkRocks             ; 0x0F
|07FB14| dw OverworldOverlay_BonkRocks             ; 0x10
|07FB16| dw OverworldOverlay_BonkRocks             ; 0x11
|07FB18| dw OverworldOverlay_BonkRocks             ; 0x12
|07FB1A| dw OverworldOverlay_BonkRocks             ; 0x13
|07FB1C| dw OverworldOverlay_KingsTomb             ; 0x14
|07FB1E| dw OverworldOverlay_WeatherVane           ; 0x15
|07FB20| dw OverworldOverlay_WeatherVane           ; 0x16
|07FB22| dw OverworldOverlay_WeatherVane           ; 0x17
|07FB24| dw OverworldOverlay_WeatherVane           ; 0x18
|07FB26| dw OverworldOverlay_WeatherVane           ; 0x19
|07FB28| dw OverworldOverlay_CastleGate            ; 0x1A
|07FB2A| dw OverworldOverlay_CastleGate            ; 0x1B
|07FB2C| dw OverworldOverlay_CastleGate            ; 0x1C
|07FB2E| dw OverworldOverlay_LinksHouseBonkRocks   ; 0x1D
|07FB30| dw OverworldOverlay_LinksHouseBonkRocks   ; 0x1E
|07FB32| dw OverworldOverlay_LinksHouseBonkRocks   ; 0x1F
|07FB34| dw OverworldOverlay_WeatherVane           ; 0x20
|07FB36| dw OverworldOverlay_WeatherVane           ; 0x21
|07FB38| dw OverworldOverlay_LinksHouseBonkRocks   ; 0x22
|07FB3A| dw OverworldOverlay_CastleGate            ; 0x23
|07FB3C| dw OverworldOverlay_CastleGate            ; 0x24
|07FB3E| dw OverworldOverlay_LinksHouseBonkRocks   ; 0x25
|07FB40| dw OverworldOverlay_LinksHouseBonkRocks   ; 0x26
|07FB42| dw OverworldOverlay_LinksHouseBonkRocks   ; 0x27
|07FB44| dw OverworldOverlay_LinksHouseBonkRocks   ; 0x28
|07FB46| dw OverworldOverlay_LinksHouseBonkRocks   ; 0x29
|07FB48| dw OverworldOverlay_LinksHouseBonkRocks   ; 0x2A
|07FB4A| dw OverworldOverlay_LinksHouseBonkRocks   ; 0x2B
|07FB4C| dw OverworldOverlay_CheckerBoardCave      ; 0x2C
|07FB4E| dw OverworldOverlay_CheckerBoardCave      ; 0x2D
|07FB50| dw OverworldOverlay_CheckerBoardCave      ; 0x2E
|07FB52| dw OverworldOverlay_CheckerBoardCave      ; 0x2F
|07FB54| dw OverworldOverlay_CheckerBoardCave      ; 0x30
|07FB56| dw OverworldOverlay_CheckerBoardCave      ; 0x31
|07FB58| dw OverworldOverlay_IceRodThief           ; 0x32
|07FB5A| dw OverworldOverlay_IceRodThief           ; 0x33
|07FB5C| dw OverworldOverlay_IceRodThief           ; 0x34
|07FB5E| dw OverworldOverlay_IceRodThief           ; 0x35
|07FB60| dw OverworldOverlay_IceRodThief           ; 0x36
|07FB62| dw OverworldOverlay_IceRodThief           ; 0x37
|07FB64| dw OverworldOverlay_CheckerBoardCave      ; 0x38
|07FB66| dw OverworldOverlay_CheckerBoardCave      ; 0x39
|07FB68| dw OverworldOverlay_DesertThief           ; 0x3A
|07FB6A| dw OverworldOverlay_DrainedDam            ; 0x3B
|07FB6C| dw OverworldOverlay_SkullWoods            ; 0x3C
|07FB6E| dw OverworldOverlay_SkullWoods            ; 0x3D
|07FB70| dw OverworldOverlay_SkullWoods            ; 0x3E
|07FB72| dw OverworldOverlay_SkullWoods            ; 0x3F
|07FB74| dw OverworldOverlay_SkullWoods            ; 0x40
|07FB76| dw OverworldOverlay_SkullWoods            ; 0x41
|07FB78| dw OverworldOverlay_GanonsTower           ; 0x42
|07FB7A| dw OverworldOverlay_GanonsTower           ; 0x43
|07FB7C| dw OverworldOverlay_GanonsTower           ; 0x44
|07FB7E| dw OverworldOverlay_HookshotCave          ; 0x45
|07FB80| dw OverworldOverlay_HookshotCave          ; 0x46
|07FB82| dw OverworldOverlay_TurtleRock            ; 0x47
|07FB84| dw OverworldOverlay_SkullWoods            ; 0x48
|07FB86| dw OverworldOverlay_SkullWoods            ; 0x49
|07FB88| dw OverworldOverlay_GargoylesDomain       ; 0x4A
|07FB8A| dw OverworldOverlay_GanonsTower           ; 0x4B
|07FB8C| dw OverworldOverlay_GanonsTower           ; 0x4C
|07FB8E| dw OverworldOverlay_HookshotCave          ; 0x4D
|07FB90| dw OverworldOverlay_HookshotCave          ; 0x4E
|07FB92| dw OverworldOverlay_GargoylesDomain       ; 0x4F
|07FB94| dw OverworldOverlay_GargoylesDomain       ; 0x50
|07FB96| dw OverworldOverlay_GargoylesDomain       ; 0x51
|07FB98| dw OverworldOverlay_GargoylesDomain       ; 0x52
|07FB9A| dw OverworldOverlay_GargoylesDomain       ; 0x53
|07FB9C| dw OverworldOverlay_GargoylesDomain       ; 0x54
|07FB9E| dw OverworldOverlay_GargoylesDomain       ; 0x55
|07FBA0| dw OverworldOverlay_GargoylesDomain       ; 0x56
|07FBA2| dw OverworldOverlay_GargoylesDomain       ; 0x57
|07FBA4| dw OverworldOverlay_GargoylesDomain       ; 0x58
|07FBA6| dw OverworldOverlay_GargoylesDomain       ; 0x59
|07FBA8| dw OverworldOverlay_PyramidHole           ; 0x5A
|07FBAA| dw OverworldOverlay_PyramidHole           ; 0x5B
|07FBAC| dw OverworldOverlay_PyramidHole           ; 0x5C
|07FBAE| dw OverworldOverlay_POD                   ; 0x5D
|07FBB0| dw OverworldOverlay_POD                   ; 0x5E
|07FBB2| dw OverworldOverlay_POD                   ; 0x5F
|07FBB4| dw OverworldOverlay_GargoylesDomain       ; 0x60
|07FBB6| dw OverworldOverlay_GargoylesDomain       ; 0x61
|07FBB8| dw OverworldOverlay_PegPuzzle             ; 0x62
|07FBBA| dw OverworldOverlay_PyramidHole           ; 0x63
|07FBBC| dw OverworldOverlay_PyramidHole           ; 0x64
|07FBBE| dw OverworldOverlay_MiseryMire            ; 0x65
|07FBC0| dw OverworldOverlay_POD                   ; 0x66
|07FBC2| dw OverworldOverlay_POD                   ; 0x67
|07FBC4| dw OverworldOverlay_MiseryMire            ; 0x68
|07FBC6| dw OverworldOverlay_MiseryMire            ; 0x69
|07FBC8| dw OverworldOverlay_MiseryMire            ; 0x6A
|07FBCA| dw OverworldOverlay_LinksHouseBonkRocks   ; 0x6B
|07FBCC| dw OverworldOverlay_MiseryMire            ; 0x6C
|07FBCE| dw OverworldOverlay_MiseryMire            ; 0x6D
|07FBD0| dw OverworldOverlay_MiseryMire            ; 0x6E
|07FBD2| dw OverworldOverlay_MiseryMire            ; 0x6F
|07FBD4| dw OverworldOverlay_MiseryMire            ; 0x70
|07FBD6| dw OverworldOverlay_MiseryMire            ; 0x71
|07FBD8| dw NULL_07FFF4                            ; 0x72
|07FBDA| dw NULL_07FFF4                            ; 0x73
|07FBDC| dw NULL_07FFF4                            ; 0x74
|07FBDE| dw NULL_07FFF4                            ; 0x75
|07FBE0| dw NULL_07FFF4                            ; 0x76
|07FBE2| dw OverworldOverlay_IceRodThief           ; 0x77
|07FBE4| dw OverworldOverlay_MiseryMire            ; 0x78
|07FBE6| dw OverworldOverlay_MiseryMire            ; 0x79
|07FBE8| dw NULL_07FFF4                            ; 0x7A
|07FBEA| dw OverworldOverlay_DrainedDam            ; 0x7B
|07FBEC| dw NULL_07FFF4                            ; 0x7C
|07FBEE| dw NULL_07FFF4                            ; 0x7D
|07FBF0| dw NULL_07FFF4                            ; 0x7E
|07FBF2| dw NULL_07FFF4                            ; 0x7F

;===================================================================================================

OverworldOverlay_LumberjackTree:
|07FBF4| LDA.w #$0E2C
|07FBF7| STA.w $7E2816
|07FBFA| STA.w $7E2818
|07FBFD| STA.w $7E281A
|07FC00| STA.w $7E281C
|07FC03| STA.w $7E2896
|07FC06| STA.w $7E289C

|07FC09| INC A
|07FC0A| STA.w $7E2898

|07FC0D| INC A
|07FC0E| STA.w $7E289A

|07FC11| INC A
|07FC12| STA.w $7E2916

|07FC15| INC A
|07FC16| STA.w $7E2918

|07FC19| INC A
|07FC1A| STA.w $7E291A

|07FC1D| INC A
|07FC1E| STA.w $7E291C

|07FC21| INC A
|07FC22| STA.w $7E2996

|07FC25| INC A
|07FC26| STA.w $7E2998

|07FC29| INC A
|07FC2A| STA.w $7E299A

|07FC2D| INC A
|07FC2E| STA.w $7E299C

|07FC31| INC A
|07FC32| STA.w $7E2A18

|07FC35| INC A
|07FC36| STA.w $7E2A1A

|07FC39| RTS

;===================================================================================================

OverworldOverlay_TurtleRockPortal:
|07FC3A| LDA.w #$0212 ; Portal
|07FC3D| STA.w $7E2720

|07FC40| RTS

;===================================================================================================

OverworldOverlay_BonkRocks:
|07FC41| LDX.w #$0506

;===================================================================================================

OverworldOverlay_DrawRevealedStairs:
|07FC44| LDA.w #$0912 ; Entrance stairs top left
|07FC47| STA.w $7E2000,X

|07FC4A| INC A
|07FC4B| STA.w $7E2002,X

|07FC4E| INC A
|07FC4F| STA.w $7E2080,X

|07FC52| INC A
|07FC53| STA.w $7E2082,X

|07FC56| RTS

;===================================================================================================

OverworldOverlay_KingsTomb:
|07FC57| LDA.w #$0DCB ; Grave on grass left
|07FC5A| STA.w $7E2532

|07FC5D| INC A
|07FC5E| STA.w $7E2534

|07FC61| LDA.w #$0DD1 ; King's Tomb stairs
|07FC64| STA.w $7E25B2

|07FC67| INC A
|07FC68| STA.w $7E25B4

|07FC6B| INC A
|07FC6C| STA.w $7E2632

|07FC6F| INC A
|07FC70| STA.w $7E2634

|07FC73| RTS

;===================================================================================================

OverworldOverlay_WeatherVane:
|07FC74| LDA.w #$0E1B ; Gray path stones
|07FC77| STA.w $7E2C3E
|07FC7A| STA.w $7E2C42

|07FC7D| INC A
|07FC7E| STA.w $7E2C40

|07FC81| INC A
|07FC82| STA.w $7E2CBE

|07FC85| INC A
|07FC86| STA.w $7E2CC0

|07FC89| INC A
|07FC8A| STA.w $7E2CC2

|07FC8D| RTS

;===================================================================================================

OverworldOverlay_CastleGate:
|07FC8E| LDA.w #$0DBB
|07FC91| STA.w $7E33BC

|07FC94| INC A
|07FC95| STA.w $7E33BE

|07FC98| LDA.w #$0DB8
|07FC9B| STA.w $7E343C

|07FC9E| INC A
|07FC9F| STA.w $7E343E

|07FCA2| LDA.w #$0DBC
|07FCA5| STA.w $7E33C0

|07FCA8| INC A
|07FCA9| STA.w $7E33C2

|07FCAC| LDA.w #$0DB9
|07FCAF| STA.w $7E3440

|07FCB2| INC A
|07FCB3| STA.w $7E3442

|07FCB6| RTS

;===================================================================================================

OverworldOverlay_LinksHouseBonkRocks:
|07FCB7| LDX.w #$0330
|07FCBA| JMP.w OverworldOverlay_DrawRevealedStairs

;===================================================================================================

OverworldOverlay_CheckerBoardCave:
|07FCBD| LDX.w #$0358
|07FCC0| JMP.w OverworldOverlay_DrawRevealedStairs

;===================================================================================================

OverworldOverlay_IceRodThief:
|07FCC3| LDX.w #$040C
|07FCC6| JMP.w OverworldOverlay_DrawRevealedStairs

;===================================================================================================

OverworldOverlay_DesertThief:
|07FCC9| LDX.w #$0A1E
|07FCCC| JMP.w OverworldOverlay_DrawRevealedStairs

;===================================================================================================

OverworldOverlay_DrainedDam:
|07FCCF| LDA.w #$0DD9
|07FCD2| STA.w $7E23AC
|07FCD5| STA.w $7E2424
|07FCD8| STA.w $7E24A0
|07FCDB| STA.w $7E251E
|07FCDE| STA.w $7E261C
|07FCE1| STA.w $7E2734

|07FCE4| INC A
|07FCE5| STA.w $7E23AE
|07FCE8| STA.w $7E24A2

|07FCEB| INC A
|07FCEC| STA.w $7E23B0
|07FCEF| STA.w $7E2438
|07FCF2| STA.w $7E24BA
|07FCF5| STA.w $7E25AA
|07FCF8| STA.w $7E273A

|07FCFB| INC A
|07FCFC| STA.w $7E2426
|07FCFF| STA.w $7E2428
|07FD02| STA.w $7E242A
|07FD05| STA.w $7E2432
|07FD08| STA.w $7E2434
|07FD0B| STA.w $7E2436

|07FD0E| INC A
|07FD0F| STA.w $7E242C
|07FD12| STA.w $7E24A4
|07FD15| STA.w $7E2520
|07FD18| STA.w $7E261E

|07FD1B| INC A
|07FD1C| STA.w $7E242E
|07FD1F| STA.w $7E24A6
|07FD22| STA.w $7E24A8
|07FD25| STA.w $7E24B0
|07FD28| STA.w $7E24B6
|07FD2B| STA.w $7E2522
|07FD2E| STA.w $7E2524
|07FD31| STA.w $7E2526
|07FD34| STA.w $7E2538
|07FD37| STA.w $7E25A0
|07FD3A| STA.w $7E25A2
|07FD3D| STA.w $7E25A4
|07FD40| STA.w $7E25A6
|07FD43| STA.w $7E2620
|07FD46| STA.w $7E2622
|07FD49| STA.w $7E269E
|07FD4C| STA.w $7E26A0
|07FD4F| STA.w $7E271E
|07FD52| STA.w $7E2720
|07FD55| STA.w $7E2826
|07FD58| STA.w $7E28A6
|07FD5B| STA.w $7E28A8
|07FD5E| STA.w $7E2926

|07FD61| INC A
|07FD62| STA.w $7E2430
|07FD65| STA.w $7E24B8
|07FD68| STA.w $7E25A8
|07FD6B| STA.w $7E262A

|07FD6E| INC A
|07FD6F| STA.w $7E24AA
|07FD72| STA.w $7E24B2
|07FD75| STA.w $7E2528
|07FD78| STA.w $7E25B8
|07FD7B| STA.w $7E28AA
|07FD7E| STA.w $7E2928

|07FD81| INC A
|07FD82| STA.w $7E24AC
|07FD85| STA.w $7E2530
|07FD88| STA.w $7E279E
|07FD8B| STA.w $7E27A0
|07FD8E| STA.w $7E29A6
|07FD91| STA.w $7E29B8

|07FD94| INC A
|07FD95| STA.w $7E24AE
|07FD98| STA.w $7E24B4
|07FD9B| STA.w $7E2536
|07FD9E| STA.w $7E27A2
|07FDA1| STA.w $7E2824

|07FDA4| INC A
|07FDA5| STA.w $7E252E
|07FDA8| STA.w $7E2534
|07FDAB| STA.w $7E279C
|07FDAE| STA.w $7E2822
|07FDB1| STA.w $7E2934
|07FDB4| STA.w $7E29B6

|07FDB7| INC A
|07FDB8| STA.w $7E253A
|07FDBB| STA.w $7E2638
|07FDBE| STA.w $7E26B8
|07FDC1| STA.w $7E293A

|07FDC4| INC A
|07FDC5| STA.w $7E259E
|07FDC8| STA.w $7E25B6
|07FDCB| STA.w $7E2636
|07FDCE| STA.w $7E269C
|07FDD1| STA.w $7E26B6
|07FDD4| STA.w $7E271C
|07FDD7| STA.w $7E28A4
|07FDDA| STA.w $7E2924

|07FDDD| INC A
|07FDDE| STA.w $7E2624
|07FDE1| STA.w $7E26A2

|07FDE4| INC A
|07FDE5| STA.w $7E2626

|07FDE8| INC A
|07FDE9| STA.w $7E2628

|07FDEC| INC A
|07FDED| STA.w $7E26A4

|07FDF0| STA.w $7E27B6

|07FDF3| INC A
|07FDF4| STA.w $7E26A6
|07FDF7| STA.w $7E2726
|07FDFA| STA.w $7E2728
|07FDFD| STA.w $7E272A
|07FE00| STA.w $7E27AA
|07FE03| STA.w $7E2836
|07FE06| STA.w $7E2838

|07FE09| INC A
|07FE0A| STA.w $7E26A8
|07FE0D| STA.w $7E27B8

|07FE10| INC A
|07FE11| STA.w $7E26AA

|07FE14| INC A
|07FE15| STA.w $7E2722
|07FE18| STA.w $7E27A4
|07FE1B| STA.w $7E2828

|07FE1E| INC A
|07FE1F| STA.w $7E2724

|07FE22| INC A
|07FE23| STA.w $7E27A6

|07FE26| INC A
|07FE27| STA.w $7E27A8

|07FE2A| STA.w $7E28B6

|07FE2D| INC A
|07FE2E| STA.w $7E27B4

|07FE31| INC A
|07FE32| STA.w $7E27BA

|07FE35| INC A
|07FE36| STA.w $7E282A

|07FE39| INC A
|07FE3A| STA.w $7E2834

|07FE3D| INC A
|07FE3E| STA.w $7E283A

|07FE41| INC A
|07FE42| STA.w $7E28B4

|07FE45| INC A
|07FE46| STA.w $7E28B8

|07FE49| INC A
|07FE4A| STA.w $7E28BA

|07FE4D| INC A
|07FE4E| STA.w $7E2936

|07FE51| INC A
|07FE52| STA.w $7E2938

|07FE55| INC A
|07FE56| STA.w $7E252A
|07FE59| STA.w $7E2532
|07FE5C| STA.w $7E292A

|07FE5F| INC A
|07FE60| STA.w $7E25BA
|07FE63| STA.w $7E29A8
|07FE66| STA.w $7E29BA

|07FE69| INC A
|07FE6A| STA.w $7E29A4

|07FE6D| INC A
|07FE6E| STA.w $7E2736

|07FE71| INC A
|07FE72| STA.w $7E2738

|07FE75| RTS

;===================================================================================================

OverworldOverlay_SkullWoods:
|07FE76| LDA.w #$0E0D
|07FE79| STA.w $7E2590

|07FE7C| INC A
|07FE7D| STA.w $7E2596

|07FE80| INC A
|07FE81| STA.w $7E2610

|07FE84| INC A
|07FE85| STA.w $7E2612

|07FE88| INC A
|07FE89| STA.w $7E2614

|07FE8C| INC A
|07FE8D| STA.w $7E2616

|07FE90| INC A
|07FE91| STA.w $7E2692

|07FE94| INC A
|07FE95| STA.w $7E2694

|07FE98| LDA.w #$0E00
|07FE9B| STA.w $7E2812
|07FE9E| STA.w $7E2814

|07FEA1| INC A
|07FEA2| STA.w $7E2710
|07FEA5| STA.w $7E2790

|07FEA8| INC A
|07FEA9| STA.w $7E2712
|07FEAC| STA.w $7E2792

|07FEAF| INC A
|07FEB0| STA.w $7E2714
|07FEB3| STA.w $7E2794

|07FEB6| INC A
|07FEB7| STA.w $7E2716
|07FEBA| STA.w $7E2796

|07FEBD| RTS

;===================================================================================================

OverworldOverlay_GanonsTower:
|07FEBE| LDA.w #$0E90
|07FEC1| STA.l $7E245E

|07FEC5| INC A
|07FEC6| STA.l $7E2460

|07FECA| LDA.w #$0E96
|07FECD| STA.l $7E24DE

|07FED1| STA.l $7E255E

|07FED5| INC A
|07FED6| STA.l $7E24E0

|07FEDA| STA.l $7E2560

|07FEDE| LDA.w #$0E94
|07FEE1| STA.l $7E25DE

|07FEE5| INC A
|07FEE6| STA.l $7E25E0

|07FEEA| RTS

;===================================================================================================

OverworldOverlay_HookshotCave:
|07FEEB| LDX.w #$0868
|07FEEE| JMP.w OverworldOverlay_DrawRevealedStairs

;===================================================================================================

OverworldOverlay_TurtleRock:
|07FEF1| LDA.w #$0E72
|07FEF4| STA.l $7E299E

|07FEF8| INC A
|07FEF9| STA.l $7E29A0

|07FEFD| INC A
|07FEFE| STA.l $7E29A2

|07FF02| INC A
|07FF03| STA.l $7E29A4

|07FF07| INC A
|07FF08| STA.l $7E2A1E

|07FF0C| INC A
|07FF0D| STA.l $7E2A20

|07FF11| INC A
|07FF12| STA.l $7E2A22

|07FF16| INC A
|07FF17| STA.l $7E2A24

|07FF1B| INC A
|07FF1C| STA.l $7E2A9E

|07FF20| INC A
|07FF21| STA.l $7E2AA0

|07FF25| INC A
|07FF26| STA.l $7E2AA2

|07FF2A| INC A
|07FF2B| STA.l $7E2AA4

|07FF2F| INC A
|07FF30| STA.l $7E2B1E

|07FF34| INC A
|07FF35| STA.l $7E2B20

|07FF39| INC A
|07FF3A| STA.l $7E2B22

|07FF3E| INC A
|07FF3F| STA.l $7E2B24

|07FF43| RTS

;===================================================================================================

OverworldOverlay_GargoylesDomain:
|07FF44| LDA.w #$0E15
|07FF47| STA.w $7E2D3E

|07FF4A| INC A
|07FF4B| STA.w $7E2D40

|07FF4E| INC A
|07FF4F| STA.w $7E2DBE

|07FF52| INC A
|07FF53| STA.w $7E2DC0

|07FF56| INC A
|07FF57| STA.w $7E2E3E

|07FF5A| INC A
|07FF5B| STA.w $7E2E40

|07FF5E| RTS

;===================================================================================================

OverworldOverlay_PyramidHole:
|07FF5F| LDA.w #$0E39
|07FF62| STA.w $7E23BC

|07FF65| INC A
|07FF66| STA.w $7E23BE

|07FF69| INC A
|07FF6A| STA.w $7E23C0

|07FF6D| INC A
|07FF6E| STA.w $7E243C

|07FF71| INC A
|07FF72| STA.w $7E243E

|07FF75| INC A
|07FF76| STA.w $7E2440

|07FF79| INC A
|07FF7A| STA.w $7E24BC

|07FF7D| INC A
|07FF7E| STA.w $7E24BE

|07FF81| INC A
|07FF82| STA.w $7E24C0

|07FF85| RTS

;===================================================================================================

OverworldOverlay_POD:
|07FF86| LDA.w #$0E2B
|07FF89| STA.w $7E21E6

|07FF8C| LDA.w #$0E27
|07FF8F| STA.w $7E226A

|07FF92| INC A
|07FF93| STA.w $7E22EA

|07FF96| INC A
|07FF97| STA.w $7E236A

|07FF9A| RTS

;===================================================================================================

OverworldOverlay_PegPuzzle:
|07FF9B| LDX.w #$0D20
|07FF9E| JMP.w OverworldOverlay_DrawRevealedStairs

;===================================================================================================

OverworldOverlay_MiseryMire:
|07FFA1| LDA.w #$0E5E
|07FFA4| STA.w $7E2522

|07FFA7| INC A
|07FFA8| STA.w $7E2524

|07FFAB| INC A
|07FFAC| STA.w $7E2526

|07FFAF| INC A
|07FFB0| STA.w $7E2528

|07FFB3| INC A
|07FFB4| STA.w $7E25A2

|07FFB7| INC A
|07FFB8| STA.w $7E25A4

|07FFBB| INC A
|07FFBC| STA.w $7E25A6

|07FFBF| INC A
|07FFC0| STA.w $7E25A8

|07FFC3| INC A
|07FFC4| STA.w $7E2622

|07FFC7| INC A
|07FFC8| STA.w $7E2624

|07FFCB| INC A
|07FFCC| STA.w $7E2626

|07FFCF| INC A
|07FFD0| STA.w $7E2628

|07FFD3| INC A
|07FFD4| STA.w $7E26A2

|07FFD7| INC A
|07FFD8| STA.w $7E26A4

|07FFDB| INC A
|07FFDC| STA.w $7E26A6

|07FFDF| INC A
|07FFE0| STA.w $7E26A8

|07FFE3| INC A
|07FFE4| STA.w $7E2722

|07FFE7| INC A
|07FFE8| STA.w $7E2724

|07FFEB| INC A
|07FFEC| STA.w $7E2726

|07FFEF| INC A
|07FFF0| STA.w $7E2728

|07FFF3| RTS

;===================================================================================================
; FREE ROM: 0x0C
;===================================================================================================
NULL_07FFF4:
|07FFF4| db $FF, $FF, $FF, $FF
|07FFF8| db $FF, $FF, $FF, $FF
|07FFFC| db $FF, $FF, $FF, $FF

;===================================================================================================

org $078000

;===================================================================================================
; Link's main handler
;===================================================================================================
Link:
#_078000: PHB
#_078001: PHK
#_078002: PLB

; cache link's coordinates
#_078003: REP #$20

#_078005: LDA.b $22
#_078007: STA.w $0FC2

#_07800A: LDA.b $20
#_07800C: STA.w $0FC4

; Unfreeze sprites
#_07800F: SEP #$20

#_078011: STZ.w $0FC1

#_078014: LDA.w $02E4
#_078017: BNE .no_control

#_078019: JSR LinkControlHandler

.no_control
#_07801C: JSR HandleSomariaAndGraves

#_07801F: PLB

#_078020: RTL

;===================================================================================================
; Link SFX Control
;===================================================================================================
PlayLinkSFX1Panned:
#_078021: JSR GetLinkSFXPan
#_078024: STA.w $012D

#_078027: RTS

;===================================================================================================

PlayLinkSFX2Panned:
#_078028: JSR GetLinkSFXPan
#_07802B: STA.w $012E

#_07802E: RTS

;===================================================================================================

PlayLinkSFX3Panned:
#_07802F: JSR GetLinkSFXPan
#_078032: STA.w $012F

#_078035: RTS

;===================================================================================================

GetLinkSFXPan:
#_078036: STA.w $0CF8

#_078039: JSL CalculateLinkSFXPan
#_07803D: ORA.w $0CF8

#_078040: RTS

;===================================================================================================

pool LinkControlHandler

.vectors
#_078041: dw LinkState_Default                  ; 0x00
#_078043: dw LinkState_Pits                     ; 0x01
#_078045: dw LinkState_Recoil                   ; 0x02
#_078047: dw LinkState_SpinAttack               ; 0x03
#_078049: dw LinkState_Swimming                 ; 0x04
#_07804B: dw LinkState_OnIce                    ; 0x05
#_07804D: dw LinkState_Recoil                   ; 0x06
#_07804F: dw LinkState_Zapped                   ; 0x07
#_078051: dw LinkState_UsingEther               ; 0x08
#_078053: dw LinkState_UsingBombos              ; 0x09
#_078055: dw LinkState_UsingQuake               ; 0x0A
#_078057: dw LinkState_HoppingSouthOW           ; 0x0B
#_078059: dw LinkState_HoppingHorizontallyOW    ; 0x0C
#_07805B: dw LinkState_HoppingDiagonallyUpOW    ; 0x0D
#_07805D: dw LinkState_HoppingDiagonallyDownOW  ; 0x0E
#_07805F: dw LinkState_0F                       ; 0x0F
#_078061: dw LinkState_0F                       ; 0x10
#_078063: dw LinkState_Dashing                  ; 0x11
#_078065: dw LinkState_ExitingDash              ; 0x12
#_078067: dw LinkState_Hookshotting             ; 0x13
#_078069: dw LinkState_CrossingWorlds           ; 0x14
#_07806B: dw LinkState_ShowingOffItem           ; 0x15
#_07806D: dw LinkState_Sleeping                 ; 0x16
#_07806F: dw LinkState_Bunny                    ; 0x17
#_078071: dw LinkState_HoldingBigRock           ; 0x18
#_078073: dw LinkState_ReceivingEther           ; 0x19
#_078075: dw LinkState_ReceivingBombos          ; 0x1A
#_078077: dw LinkState_ReadingDesertTablet      ; 0x1B
#_078079: dw LinkState_TemporaryBunny           ; 0x1C
#_07807B: dw LinkState_TreePull                 ; 0x1D
#_07807D: dw LinkState_SpinAttack               ; 0x1E

pool off

;---------------------------------------------------------------------------------------------------

LinkControlHandler:
#_07807F: LDA.w $0373 ; is damage queued for Link?
#_078082: BEQ .no_damage

#_078084: LDA.b $55 ; is cape active?
#_078086: BEQ .no_cape

#_078088: STZ.w $0373 ; cape is active, so prevent damage

#_07808B: STZ.b $4D
#_07808D: STZ.b $46

#_07808F: BRA .no_damage

.no_cape
#_078091: LDA.w $037B ; is the no damage flag on?
#_078094: BNE .no_damage

#_078096: LDA.w $0373 ; cache and clear damage to be taken
#_078099: STA.b $00

#_07809B: STZ.w $0373

; !WEIRD hardcoded boomerang things
#_07809E: LDA.w $0C4A
#_0780A1: CMP.b #$05 ; ANCILLA 05
#_0780A3: BNE .dont_delete_boom

#_0780A5: LDA.w $0300
#_0780A8: BNE .dont_delete_boom

#_0780AA: LDA.b $3D
#_0780AC: BEQ .dont_delete_boom

#_0780AE: STZ.w $0C4A
#_0780B1: STZ.w $035F

.dont_delete_boom
#_0780B4: LDA.w $031F
#_0780B7: BNE .have_iframes

#_0780B9: LDA.b #$3A
#_0780BB: STA.w $031F

.have_iframes
#_0780BE: LDA.b #$26 ; SFX2.26 ; OOF
#_0780C0: JSR PlayLinkSFX2Panned

#_0780C3: INC.w $0CFC

#_0780C6: LDA.l $7EF36D ; remove HP
#_0780CA: SEC
#_0780CB: SBC.b $00

; kill Link if he has 0 HP or >=21
; probably coulda used BCC after the SBC instead of this weird stuff
#_0780CD: CMP.b #$00
#_0780CF: BEQ .you_died

#_0780D1: CMP.b #$A8
#_0780D3: BCC .do_not_die

;---------------------------------------------------------------------------------------------------

.you_died
#_0780D5: LDA.b $1C ; cache TM and TS queue
#_0780D7: STA.l $7EC211

#_0780DB: LDA.b $1D
#_0780DD: STA.l $7EC212

#_0780E1: LDA.b $10 ; cache main module
#_0780E3: STA.w $010C

#_0780E6: LDA.b #$12 ; death mode
#_0780E8: STA.b $10

#_0780EA: LDA.b #$01
#_0780EC: STA.b $11

#_0780EE: LDA.b #$00
#_0780F0: STA.w $031F ; we can throw boom again!
#_0780F3: STA.l $7EF372 ; prevent healing

;---------------------------------------------------------------------------------------------------

.do_not_die
#_0780F7: STA.l $7EF36D

.no_damage
#_0780FB: LDA.b $5D
#_0780FD: BEQ .base_state

#_0780FF: JSR HandleCapePassive

.base_state
#_078102: LDA.b $5D
#_078104: ASL A
#_078105: TAX

#_078106: JMP.w (.vectors,X)

;===================================================================================================

LinkState_Default:
#_078109: JSR CacheCameraPropertiesIfOutdoors

; check player 2 B for debug cheats
#_07810C: LDA.b $F5
#_07810E: AND.b #$80
#_078110: BEQ .stay_in_bounds_forever

#_078112: LDA.w $037F
#_078115: EOR.b #$01
#_078117: STA.w $037F

.stay_in_bounds_forever
#_07811A: JSR HandleBunnyTransformation
#_07811D: BCC .no_bunny

#_07811F: LDA.b $5D
#_078121: CMP.b #$17 ; LINKSTATE 17
#_078123: BNE .already_bunny

#_078125: BRL LinkState_Bunny

.already_bunny
#_078128: RTS

;---------------------------------------------------------------------------------------------------

.no_bunny
#_078129: STZ.w $02CA ; I have no clue TODO set related to $0302 which is ????

#_07812C: LDA.b $4D
#_07812E: BEQ .not_recoiling

;---------------------------------------------------------------------------------------------------

; state 1D continues from here
#HandleLinkFromState1D:
#_078130: STZ.w $0301
#_078133: STZ.w $037A

#_078136: STZ.w $020B ; debug variables?
#_078139: STZ.w $0350 ; debug variables?

#_07813C: STZ.w $030D
#_07813F: STZ.w $030E ; debug variables?

#_078142: STZ.w $030A

#_078145: STZ.b $3B

#_078147: LDA.b $3A ; clear Y button
#_078149: AND.b #$BF
#_07814B: STA.b $3A

#_07814D: STZ.w $0308
#_078150: STZ.w $0309

#_078153: STZ.w $0376
#_078156: STZ.b $48

#_078158: JSL ResetSwimmingState

#_07815C: LDA.b $50
#_07815E: AND.b #$FE
#_078160: STA.b $50

#_078162: STZ.b $25

#_078164: LDA.w $0360
#_078167: BEQ .no_zapping

#_078169: LDA.b $55
#_07816B: BEQ .cape_is_off

#_07816D: JSR ForciblyUnequipCape_quietly

;---------------------------------------------------------------------------------------------------

.cape_is_off
#_078170: JSR ResetSwordAndItemUsage

#_078173: LDA.b #$01
#_078175: STA.w $037B

#_078178: STZ.w $0300

#_07817B: LDA.b #$02
#_07817D: STA.b $3D

#_07817F: STZ.b $2E

#_078181: LDA.b $67
#_078183: AND.b #$F0
#_078185: STA.b $67

#_078187: LDA.b #$2B ; SFX3.2B
#_078189: JSR PlayLinkSFX3Panned

#_07818C: LDA.b #$07 ; LINKSTATE 07
#_07818E: STA.b $5D

#_078190: BRL LinkState_Zapped

;---------------------------------------------------------------------------------------------------

.no_zapping
#_078193: LDA.b $1B
#_078195: BNE .pointless_branch

.pointless_branch
#_078197: STZ.b $6B

#_078199: LDA.b #$02 ; LINKSTATE 02
#_07819B: STA.b $5D

#_07819D: BRL LinkState_Recoil

;===================================================================================================

.not_recoiling
#_0781A0: LDA.b #$FF ; reset Link's Z-coordinate and velocity
#_0781A2: STA.b $24
#_0781A4: STA.b $25
#_0781A6: STA.b $29

#_0781A8: STZ.w $02C6

#_0781AB: JSR HandleTossing
#_0781AE: BCS .continue_a

#_0781B0: JSR HandleAPress

#_0781B3: LDA.w $0308
#_0781B6: ORA.w $0376
#_0781B9: BNE .continue_a

#_0781BB: LDA.w $0377
#_0781BE: BNE .continue_a

#_0781C0: JSR HandleYItem

#_0781C3: LDA.l $7EF3C5
#_0781C7: BEQ .continue_a

#_0781C9: JSR HandleSwordCooldown

#_0781CC: LDA.b $5D
#_0781CE: CMP.b #$03 ; LINKSTATE 03
#_0781D0: BNE .continue_a

#_0781D2: STZ.b $30
#_0781D4: STZ.b $31

#_0781D6: BRL .dont_halt_link

;---------------------------------------------------------------------------------------------------

.continue_a
#_0781D9: JSR HandleCapePassive_LiftCheck

#_0781DC: LDA.b $46
#_0781DE: BEQ .not_recoil_timering

#_0781E0: LDA.b $6B
#_0781E2: BEQ .dont_reset_slope

#_0781E4: STZ.b $6B

.dont_reset_slope
#_0781E6: STZ.w $030D
#_0781E9: STZ.w $030E
#_0781EC: STZ.w $030A

#_0781EF: STZ.b $3B

#_0781F1: STZ.w $0309
#_0781F4: STZ.w $0308

#_0781F7: STZ.w $0376

#_0781FA: LDA.b $3A
#_0781FC: AND.b #$80
#_0781FE: BNE .dont_allow_turning

#_078200: LDA.b $50
#_078202: AND.b #$FE
#_078204: STA.b $50

.dont_allow_turning
#_078206: BRL HandleRecoilAndTimer

;---------------------------------------------------------------------------------------------------

.not_recoil_timering
#_078209: LDA.w $0377
#_07820C: BEQ .no_forced_pull_anim

#_07820E: STZ.b $67

#_078210: BRA .proceed_to_finish_up

.no_forced_pull_anim
#_078212: LDA.w $02E1
#_078215: BNE .proceed_to_finish_up

#_078217: LDA.w $0376
#_07821A: AND.b #$FD
#_07821C: BNE .proceed_to_finish_up

#_07821E: LDA.w $0308
#_078221: AND.b #$7F
#_078223: BNE .proceed_to_finish_up

#_078225: LDA.w $0308
#_078228: AND.b #$80
#_07822A: BEQ .not_carrying

#_07822C: LDA.w $0309
#_07822F: AND.b #$01
#_078231: BNE .proceed_to_finish_up

.not_carrying
#_078233: LDA.w $0301
#_078236: BNE .proceed_to_finish_up

#_078238: LDA.w $037A
#_07823B: BNE .proceed_to_finish_up

#_07823D: LDA.b $3C
#_07823F: CMP.b #$09
#_078241: BCS .sword_out

#_078243: LDA.b $3A
#_078245: AND.b #$20
#_078247: BNE .sword_out

#_078249: LDA.b $3A
#_07824B: AND.b #$80
#_07824D: BEQ .sword_out

;---------------------------------------------------------------------------------------------------

.proceed_to_finish_up
#_07824F: BRA .finish_up

;---------------------------------------------------------------------------------------------------

.sword_out
#_078251: LDA.w $034A
#_078254: BEQ .not_on_any_ice

#_078256: LDA.b #$01
#_078258: STA.w $0335
#_07825B: STA.w $0337

#_07825E: LDA.b #$80
#_078260: STA.w $0334
#_078263: STA.w $0336

#_078266: BRL HandleSwimMovement

;---------------------------------------------------------------------------------------------------

.not_on_any_ice
#_078269: JSR ResetAllAcceleration

#_07826C: LDA.b $49
#_07826E: AND.b #$0F
#_078270: BNE .am_moving

#_078272: LDA.w $0376
#_078275: AND.b #$02
#_078277: BNE .finish_up

#_078279: LDA.b $F0
#_07827B: AND.b #$0F
#_07827D: BNE .am_moving

#_07827F: STA.b $30
#_078281: STA.b $31

#_078283: STA.b $67
#_078285: STA.b $26

#_078287: STZ.b $2E

#_078289: LDA.b $48
#_07828B: AND.b #$F0
#_07828D: STA.b $48

#_07828F: LDX.b #$20
#_078291: STX.w $0371

#_078294: LDX.b #$13
#_078296: STX.w $0375

#_078299: BRA .finish_up

;---------------------------------------------------------------------------------------------------

.am_moving
#_07829B: STA.b $67

#_07829D: CMP.b $26
#_07829F: BEQ .directions_matching

#_0782A1: STZ.b $2A
#_0782A3: STZ.b $2B
#_0782A5: STZ.b $6B
#_0782A7: STZ.b $48

#_0782A9: LDX.b #$20
#_0782AB: STX.w $0371

#_0782AE: LDX.b #$13
#_0782B0: STX.w $0375

.directions_matching
#_0782B3: STA.b $26

;---------------------------------------------------------------------------------------------------

.finish_up
; TODO analyze and verify these
#_0782B5: JSR HandleLinkDiagonalCollision
#_0782B8: JSL HandleLinkVelocity
#_0782BC: JSR HandleLinkCardinalCollision

#_0782BF: JSL HandleLinkAnimation_FullLongEntry

#_0782C3: LDA.w $0377
#_0782C6: BEQ .dont_halt_link

#_0782C8: STZ.b $30
#_0782CA: STZ.b $31

.dont_halt_link
#_0782CC: STZ.w $0302

#_0782CF: JSR HandleIndoorCameraAndDoors

;---------------------------------------------------------------------------------------------------

#EXIT_0782D2:
#_0782D2: CLC

#_0782D3: RTS

;===================================================================================================

HandleBunnyTransformation:
#_0782D4: LDA.w $03F5 ; temp bunny timer
#_0782D7: ORA.w $03F6
#_0782DA: BEQ EXIT_0782D2

#_0782DC: LDA.w $03F7
#_0782DF: BNE .tick_timer

#_0782E1: LDA.b $5D ; if we're already a bunny, don't do anything
#_0782E3: CMP.b #$17 ; LINKSTATE 17
#_0782E5: BEQ .exit_clear_timer

#_0782E7: CMP.b #$1C ; LINKSTATE 1C
#_0782E9: BEQ .exit_clear_timer

#_0782EB: LDA.w $0309
#_0782EE: AND.b #$02
#_0782F0: BEQ .ignore_carry

#_0782F2: STZ.w $0308

.ignore_carry
#_0782F5: LDA.w $0308
#_0782F8: AND.b #$80
#_0782FA: PHA

#_0782FB: JSL ResetLinkProperties_A

#_0782FF: PLA
#_078300: STA.w $0308

;---------------------------------------------------------------------------------------------------

#_078303: LDX.b #$04

.next_ancilla
#_078305: LDA.w $0C4A,X
#_078308: CMP.b #$30 ; ANCILLA 30
#_07830A: BEQ .kill_ancilla

#_07830C: CMP.b #$31 ; ANCILLA 31
#_07830E: BNE .skip_ancilla

.kill_ancilla
#_078310: STZ.w $0C4A,X

.skip_ancilla
#_078313: DEX
#_078314: BPL .next_ancilla

;---------------------------------------------------------------------------------------------------

#_078316: JSR CancelDash

#_078319: LDY.b #$04
#_07831B: LDA.b #$23 ; ANCILLA 23
#_07831D: JSL AncillaAdd_CapePoof

#_078321: LDA.b #$14 ; SFX2.14
#_078323: JSR PlayLinkSFX2Panned

#_078326: LDA.b #$14
#_078328: STA.w $02E2

#_07832B: LDA.b #$01
#_07832D: STA.w $037B
#_078330: STA.w $03F7

#_078333: LDA.b #$0C
#_078335: STA.b $4B

;---------------------------------------------------------------------------------------------------

.tick_timer
#_078337: DEC.w $02E2
#_07833A: BPL .dont_revert

#_07833C: LDA.b #$1C ; LINKSTATE 1C
#_07833E: STA.b $5D

#_078340: LDA.b #$01
#_078342: STA.w $02E0
#_078345: STA.b $56

#_078347: JSL RefreshEquipmentPalettes_bunny

#_07834B: STZ.b $4B
#_07834D: STZ.w $037B
#_078350: STZ.w $03F7

#_078353: BRA .dont_revert

;---------------------------------------------------------------------------------------------------

.exit_clear_timer
#_078355: STZ.w $03F5
#_078358: STZ.w $03F6

#_07835B: CLC

#_07835C: RTS

;---------------------------------------------------------------------------------------------------

.dont_revert
#_07835D: SEC

#_07835E: RTS

;===================================================================================================

LinkState_TemporaryBunny:
#_07835F: LDA.w $03F5
#_078362: ORA.w $03F6
#_078365: BNE .delay_change_back

#_078367: LDY.b #$04
#_078369: LDA.b #$23 ; ANCILLA 23
#_07836B: JSL AncillaAdd_CapePoof

#_07836F: LDA.b #$15 ; SFX2.15
#_078371: JSR PlayLinkSFX2Panned

#_078374: LDA.b #$20
#_078376: STA.w $02E2

#_078379: LDA.b #$00 ; LINKSTATE 00
#_07837B: STA.b $5D

#_07837D: JSL ResetLinkProperties_C

#_078381: STZ.w $03F7

#_078384: STZ.b $56
#_078386: STZ.w $02E0

#_078389: JSL RefreshEquipmentPalettes_sword_and_mail

#_07838D: STZ.w $03F7

#_078390: BRL LinkState_Default

;---------------------------------------------------------------------------------------------------

#UNREACHABLE_078393:
#_078393: RTS

;---------------------------------------------------------------------------------------------------

.delay_change_back
#_078394: REP #$20

#_078396: DEC.w $03F5

#_078399: SEP #$20

;===================================================================================================

LinkState_Bunny:
#_07839B: JSR CacheCameraPropertiesIfOutdoors

#_07839E: LDA.b $F5
#_0783A0: AND.b #$80
#_0783A2: BEQ .dont_toggle_oob

#_0783A4: LDA.w $037F
#_0783A7: EOR.b #$01
#_0783A9: STA.w $037F

.dont_toggle_oob
#_0783AC: STZ.w $02CA

#_0783AF: LDA.w $0345
#_0783B2: BNE LinkState_Bunny_recache

#_0783B4: LDA.b $4D
#_0783B6: BEQ .recoiling

#_0783B8: LDA.l $7EF357
#_0783BC: BEQ LinkState_Bunny_recache

#_0783BE: STZ.w $02E0

;===================================================================================================

#LinkState_Bunny_recache:
#_0783C1: STZ.w $03F7
#_0783C4: STZ.w $03F5
#_0783C7: STZ.w $03F6

#_0783CA: LDA.l $7EF357
#_0783CE: BEQ .no_pearl_a

#_0783D0: STZ.b $56
#_0783D2: STZ.b $4D

;---------------------------------------------------------------------------------------------------

.no_pearl_a
#_0783D4: STZ.b $2E
#_0783D6: STZ.w $02E1
#_0783D9: STZ.b $50

#_0783DB: JSL ResetSwimmingState

#_0783DF: LDA.b #$02 ; LINKSTATE 02
#_0783E1: STA.b $5D

#_0783E3: LDA.l $7EF357
#_0783E7: BEQ .no_pearl_b

#_0783E9: LDA.b #$00 ; LINKSTATE 00
#_0783EB: STA.b $5D

#_0783ED: JSL RefreshEquipmentPalettes_sword_and_mail

.no_pearl_b
#_0783F1: BRL .exit

;---------------------------------------------------------------------------------------------------

.recoiling
#_0783F4: LDA.b $46
#_0783F6: BEQ .wait_maybe_not_recoiling

#_0783F8: BRL HandleRecoilAndTimer

.wait_maybe_not_recoiling
#_0783FB: LDA.b #$FF
#_0783FD: STA.b $24
#_0783FF: STA.b $25
#_078401: STA.b $29

#_078403: STZ.w $02C6

; check for ice
#_078406: LDA.w $034A
#_078409: BEQ .not_on_any_ice

#_07840B: LDA.b #$01
#_07840D: STA.w $0335
#_078410: STA.w $0337

#_078413: LDA.b #$80
#_078415: STA.w $0334
#_078418: STA.w $0336

#_07841B: BRL HandleSwimMovement

;---------------------------------------------------------------------------------------------------

.not_on_any_ice
#_07841E: JSR ResetAllAcceleration
#_078421: JSR HandleYItem

#_078424: LDA.b $49
#_078426: AND.b #$0F
#_078428: BNE .movement

#_07842A: LDA.b $F0
#_07842C: AND.b #$0F
#_07842E: BNE .movement

#_078430: STA.b $30
#_078432: STA.b $31

#_078434: STA.b $67
#_078436: STA.b $26

#_078438: STZ.b $2E

#_07843A: LDA.b $48
#_07843C: AND.b #$F6
#_07843E: STA.b $48

#_078440: LDX.b #$20
#_078442: STX.w $0371

#_078445: LDX.b #$13
#_078447: STX.w $0375
#_07844A: BRA .finish_up

;---------------------------------------------------------------------------------------------------

.movement
#_07844C: STA.b $67

#_07844E: CMP.b $26
#_078450: BEQ .directions_match

#_078452: STZ.b $2A
#_078454: STZ.b $2B

#_078456: STZ.b $6B
#_078458: STZ.b $48

#_07845A: LDX.b #$20
#_07845C: STX.w $0371

#_07845F: LDX.b #$13
#_078461: STX.w $0375

.directions_match
#_078464: STA.b $26

;---------------------------------------------------------------------------------------------------

.finish_up
#_078466: JSR HandleLinkDiagonalCollision
#_078469: JSL HandleLinkVelocity
#_07846D: JSR HandleLinkCardinalCollision
#_078470: JSL HandleLinkAnimation_FullLongEntry

#_078474: STZ.w $0302

#_078477: JSR HandleIndoorCameraAndDoors

.exit
#_07847A: RTS

;===================================================================================================

LinkState_HoldingBigRock:
#_07847B: LDA.b $4D
#_07847D: BEQ .no_recoil

#_07847F: STZ.w $0301
#_078482: STZ.w $037A

#_078485: STZ.w $020B

#_078488: STZ.w $0350
#_07848B: STZ.w $030D
#_07848E: STZ.w $030E
#_078491: STZ.w $030A

#_078494: STZ.b $3B

#_078496: STZ.w $0308
#_078499: STZ.w $0309
#_07849C: STZ.w $0376

#_07849F: STZ.b $48

#_0784A1: LDA.b $50
#_0784A3: AND.b #$FE
#_0784A5: STA.b $50

#_0784A7: STZ.b $25

#_0784A9: LDA.w $0360
#_0784AC: BEQ .no_zapping

#_0784AE: JSR ResetSwordAndItemUsage

#_0784B1: LDA.b #$01
#_0784B3: STA.w $037B

#_0784B6: STZ.w $0300

#_0784B9: LDA.b #$02
#_0784BB: STA.b $3D

#_0784BD: STZ.b $2E

#_0784BF: LDA.b $67
#_0784C1: AND.b #$F0
#_0784C3: STA.b $67

#_0784C5: LDA.b #$2B ; SFX3.2B
#_0784C7: JSR PlayLinkSFX3Panned

#_0784CA: LDA.b #$07 ; LINKSTATE 07
#_0784CC: STA.b $5D

#_0784CE: BRL LinkState_Zapped

;---------------------------------------------------------------------------------------------------

.no_zapping
#_0784D1: LDA.b #$02 ; LINKSTATE 02
#_0784D3: STA.b $5D

#_0784D5: BRL LinkState_Recoil

;---------------------------------------------------------------------------------------------------

.no_recoil
#_0784D8: LDA.b #$FF
#_0784DA: STA.b $24
#_0784DC: STA.b $25
#_0784DE: STA.b $29

#_0784E0: STZ.w $02C6

#_0784E3: LDA.b $46
#_0784E5: BEQ .definitely_no_recoil

#_0784E7: STZ.w $030D
#_0784EA: STZ.w $030E
#_0784ED: STZ.w $030A

#_0784F0: STZ.b $3B

#_0784F2: STZ.w $0308
#_0784F5: STZ.w $0309

#_0784F8: STZ.w $0376

#_0784FB: LDA.b $3A
#_0784FD: AND.b #$80
#_0784FF: BNE .dont_allow_turn

#_078501: LDA.b $50
#_078503: AND.b #$FE
#_078505: STA.b $50

.dont_allow_turn
#_078507: BRL HandleRecoilAndTimer

;---------------------------------------------------------------------------------------------------

.definitely_no_recoil
#_07850A: JSR HandleAPress

#_07850D: LDA.b $F0
#_07850F: AND.b #$0F
#_078511: BNE .pressing_d_pad

#_078513: STA.b $30
#_078515: STA.b $31

#_078517: STA.b $67

#_078519: STA.b $26
#_07851B: STZ.b $2E

#_07851D: LDA.b $48
#_07851F: AND.b #$F6
#_078521: STA.b $48

#_078523: LDX.b #$20
#_078525: STX.w $0371

#_078528: LDX.b #$13
#_07852A: STX.w $0375

#_07852D: BRA .handle_the_animation

;---------------------------------------------------------------------------------------------------

.pressing_d_pad
#_07852F: STA.b $67

#_078531: CMP.b $26
#_078533: BEQ .directions_do_match

#_078535: STZ.b $2A
#_078537: STZ.b $2B

#_078539: STZ.b $6B
#_07853B: STZ.b $48

#_07853D: LDX.b #$20
#_07853F: STX.w $0371

#_078542: LDX.b #$13
#_078544: STX.w $0375

.directions_do_match
#_078547: STA.b $26

;---------------------------------------------------------------------------------------------------

.handle_the_animation
#_078549: JSL HandleLinkAnimation_FullLongEntry

#_07854D: STZ.w $0302

#_078550: JSR HandleIndoorCameraAndDoors

#_078553: RTS

;===================================================================================================

StartEtherTabletCutscene:
#_078554: REP #$20

#_078556: LDA.w #$00C0
#_078559: STA.b $3C

#_07855B: SEP #$20

#_07855D: LDA.b #$19 ; LINKSTATE 19
#_07855F: STA.b $5D

#_078561: LDA.b #$01
#_078563: STA.w $037B
#_078566: STA.w $0FFC

#_078569: RTL

;===================================================================================================

LinkState_ReceivingEther:
#_07856A: STZ.b $4D
#_07856C: STZ.b $46

#_07856E: STZ.w $0373

#_078571: REP #$20

#_078573: DEC.b $3C

#_078575: LDA.b $3C
#_078577: BMI .spinning
#_078579: BEQ .spawn_medallion

#_07857B: CMP.w #$00A0
#_07857E: BEQ .add_lightning

#_078580: CMP.w #$00BF
#_078583: BEQ .sword_up

#_078585: SEP #$20

#_078587: RTS

;---------------------------------------------------------------------------------------------------

.spinning
#_078588: SEP #$20

#_07858A: STZ.b $3C
#_07858C: STZ.b $3D

#_07858E: RTS

;---------------------------------------------------------------------------------------------------

.sword_up
#_07858F: SEP #$20

#_078591: LDA.b #$01
#_078593: STA.w $03EF

#_078596: RTS

;---------------------------------------------------------------------------------------------------

.spawn_medallion
#_078597: SEP #$20

#_078599: LDX.b #$00

#_07859B: LDY.b #$04
#_07859D: LDA.b #$29 ; ANCILLA 29
#_07859F: JSL AncillaAdd_FallingPrize

#_0785A3: LDA.b #$01
#_0785A5: STA.w $02E4

#_0785A8: STZ.w $0FFC

#_0785AB: RTS

;---------------------------------------------------------------------------------------------------

.add_lightning
#_0785AC: SEP #$20

#_0785AE: LDA.b $20
#_0785B0: PHA

#_0785B1: LDA.b $21
#_0785B3: PHA

#_0785B4: LDA.b $22
#_0785B6: PHA

#_0785B7: LDA.b $23
#_0785B9: PHA

#_0785BA: LDA.b #$37
#_0785BC: STA.b $20

#_0785BE: LDA.b #$00
#_0785C0: STA.b $21

#_0785C2: LDA.b #$B0
#_0785C4: STA.b $22

#_0785C6: LDA.b #$06
#_0785C8: STA.b $23

#_0785CA: LDY.b #$00
#_0785CC: LDA.b #$18 ; ANCILLA 18
#_0785CE: JSL AncillaAdd_EtherSpell

#_0785D2: PLA
#_0785D3: STA.b $23

#_0785D5: PLA
#_0785D6: STA.b $22

#_0785D8: PLA
#_0785D9: STA.b $21

#_0785DB: PLA
#_0785DC: STA.b $20

#_0785DE: RTS

;===================================================================================================

StartBombosTabletCutscene:
#_0785DF: REP #$20

#_0785E1: LDA.w #$00E0
#_0785E4: STA.b $3C

#_0785E6: SEP #$20

#_0785E8: LDA.b #$1A ; LINKSTATE 1A
#_0785EA: STA.b $5D

#_0785EC: LDA.b #$01
#_0785EE: STA.w $037B
#_0785F1: STA.w $0112

#_0785F4: RTL

;===================================================================================================

LinkState_ReceivingBombos:
#_0785F5: STZ.b $4D
#_0785F7: STZ.b $46

#_0785F9: STZ.w $0373

#_0785FC: REP #$20

#_0785FE: DEC.b $3C

#_078600: LDA.b $3C
#_078602: BMI .spinning
#_078604: BEQ .spawn_medallion

#_078606: CMP.w #$00A0
#_078609: BEQ .EXPLOSION

#_07860B: CMP.w #$00DF
#_07860E: BEQ .sword_up

#_078610: SEP #$20

#_078612: RTS

.sword_up
#_078613: SEP #$20

#_078615: LDA.b #$01
#_078617: STA.w $03EF

#_07861A: RTS

;---------------------------------------------------------------------------------------------------

.spinning
#_07861B: SEP #$20

#_07861D: STZ.b $3C
#_07861F: STZ.b $3D

#_078621: RTS

;---------------------------------------------------------------------------------------------------

.spawn_medallion
#_078622: SEP #$20

#_078624: LDY.b #$04
#_078626: LDX.b #$05
#_078628: LDA.b #$29 ; ANCILLA 29
#_07862A: JSL AncillaAdd_FallingPrize

#_07862E: LDA.b #$01
#_078630: STA.w $02E4

#_078633: RTS

;---------------------------------------------------------------------------------------------------
; Best type of magic
.EXPLOSION
#_078634: SEP #$20

#_078636: LDA.b $20
#_078638: PHA

#_078639: LDA.b $21
#_07863B: PHA

#_07863C: LDA.b $22
#_07863E: PHA

#_07863F: LDA.b $23
#_078641: PHA

#_078642: LDA.b #$B0
#_078644: STA.b $20

#_078646: LDA.b #$0E
#_078648: STA.b $21

#_07864A: LDA.b #$78
#_07864C: STA.b $22

#_07864E: LDA.b #$03
#_078650: STA.b $23

#_078652: LDY.b #$00
#_078654: LDA.b #$19 ; ANCILLA 19
#_078656: JSL AncillaAdd_BombosSpell

#_07865A: PLA
#_07865B: STA.b $23

#_07865D: PLA
#_07865E: STA.b $22

#_078660: PLA
#_078661: STA.b $21

#_078663: PLA
#_078664: STA.b $20

#_078666: RTS

;===================================================================================================

InitiateDesertCutscene:
#_078667: REP #$20

#_078669: LDA.w #$0001
#_07866C: STA.b $3C

#_07866E: SEP #$20

#_078670: LDA.b #$1B ; LINKSTATE 1B
#_078672: STA.b $5D

#_078674: RTL

;===================================================================================================

LinkState_ReadingDesertTablet:
#_078675: DEC.b $3C

#_078677: LDA.b $3C
#_078679: BNE .delay

#_07867B: LDA.b #$00 ; LINKSTATE 00
#_07867D: STA.b $5D

#_07867F: JSR PerformDesertPrayer

.delay
#_078682: RTS

;===================================================================================================
; This is dumb and hacky
;===================================================================================================
HandleSomariaAndGraves:
#_078683: LDA.b $1B
#_078685: BNE .ignore_graves

#_078687: LDA.w $03E9
#_07868A: BEQ .ignore_graves

;---------------------------------------------------------------------------------------------------

; check first 5 ancilla slots for a gravestone
#_07868C: LDX.b #$04

.next_slot
#_07868E: LDA.w $0C4A,X
#_078691: CMP.b #$24 ; ANCILLA 24
#_078693: BNE .not_grave

#_078695: JSL Gravestone_Move

.not_grave
#_078699: DEX
#_07869A: BPL .next_slot

;---------------------------------------------------------------------------------------------------

.ignore_graves
; check first 5 ancilla slots for a somaria block, but only one
#_07869C: LDX.b #$04

.next_slot_again
#_07869E: LDA.w $0C4A,X
#_0786A1: CMP.b #$2C ; ANCILLA 2C
#_0786A3: BNE .not_somaria

#_0786A5: JSL SomariaBlock_HandlePlayerInteraction

#_0786A9: BRA .done

.not_somaria
#_0786AB: DEX
#_0786AC: BPL .next_slot_again

.done
#_0786AE: RTS

;===================================================================================================
; State 0x02 and 0x06
; TODO why is jumping here too wtf
;===================================================================================================
LinkState_Recoil:
; cache coordinates
; not sure why this is interleaved?
#_0786AF: LDA.b $20
#_0786B1: STA.b $3E

#_0786B3: LDA.b $21
#_0786B5: STA.b $40

#_0786B7: LDA.b $22
#_0786B9: STA.b $3F

#_0786BB: LDA.b $23
#_0786BD: STA.b $41

#_0786BF: JSR HandleChangeInZVelocity

#_0786C2: STZ.b $50

#_0786C4: STZ.w $0351

#_0786C7: LDA.b $24
#_0786C9: BPL HandleRecoilAndTimer

#_0786CB: LDA.b $29
#_0786CD: BPL HandleRecoilAndTimer

#_0786CF: LDY.b #$05
#_0786D1: JSR TileDetect_MainHandler

#_0786D4: LDA.w $0341
#_0786D7: AND.b #$01
#_0786D9: BEQ .no_deep_water_interaction

#_0786DB: LDA.b #$04 ; LINKSTATE 04
#_0786DD: STA.b $5D

#_0786DF: JSR SetToDeepWater
#_0786E2: JSR ResetSwordAndItemUsage

#_0786E5: LDA.b #$15 ; ANCILLA 15
#_0786E7: LDY.b #$00
#_0786E9: JSL AncillaAdd_Splash

#_0786ED: BRL CheckLayerForChange

;---------------------------------------------------------------------------------------------------

.no_deep_water_interaction
#_0786F0: INC.w $02C6

; TODO??
#_0786F3: LDA.w $02C6
#_0786F6: CMP.b #$04
#_0786F8: BEQ .done_bouncing

#_0786FA: TAX

#_0786FB: LDA.w $02C7

.shift
#_0786FE: LSR A

#_0786FF: DEX
#_078700: BEQ .shift

#_078702: STA.b $29
#_078704: BNE HandleRecoilAndTimer

.done_bouncing
#_078706: LDA.b #$03
#_078708: STA.w $02C6

;===================================================================================================

HandleRecoilAndTimer:
#_07870B: STZ.b $68
#_07870D: STZ.b $69
#_07870F: STZ.b $6A

#_078711: JSR HandleLinkRecoiling

#_078714: DEC.b $46

#_078716: LDA.b $46
#_078718: BEQ .delay

.airborne
#_07871A: BRL HandleLinkRecoilVelocity

;---------------------------------------------------------------------------------------------------

.delay
#_07871D: INC A
#_07871E: STA.b $46

#_078720: LDA.b $24
#_078722: AND.b #$FE
#_078724: BEQ .no_height
#_078726: BPL .airborne

.no_height
#_078728: LDA.b $29
#_07872A: BPL .airborne

#_07872C: LDA.b $4D
#_07872E: BNE .not_special_recoil

#_078730: BRL HandleLinkRecoilVelocity_and_reset

;---------------------------------------------------------------------------------------------------

.not_special_recoil
#_078733: STZ.w $037B

#_078736: LDA.b $5D
#_078738: STA.b $72

#_07873A: LDA.b $5D
#_07873C: CMP.b #$06 ; LINKSTATE 06
#_07873E: BEQ .jumping

#_078740: STZ.b $3C
#_078742: STZ.b $3A
#_078744: STZ.b $3D

#_078746: STZ.b $79

.jumping
#_078748: JSR SplashUponLanding

#_07874B: LDA.w $02E0
#_07874E: BEQ .not_bunny

#_078750: LDA.w $0345
#_078753: BEQ .not_bunny

#_078755: BRL CheckLayerForChange_preserve_layer

;---------------------------------------------------------------------------------------------------

.not_bunny
#_078758: LDA.w $02F8
#_07875B: BEQ .no_guaranteed_thud

#_07875D: STZ.w $02F8

#_078760: BRA .play_thud

;---------------------------------------------------------------------------------------------------

.no_guaranteed_thud
#_078762: LDA.b $72
#_078764: CMP.b #$02 ; LINKSTATE 02
#_078766: BEQ .skip_thud_sfx

#_078768: LDA.b $5D
#_07876A: CMP.b #$04 ; LINKSTATE 04
#_07876C: BEQ .skip_thud_sfx

.play_thud
#_07876E: LDA.b #$21 ; SFX2.21
#_078770: JSR PlayLinkSFX2Panned

.skip_thud_sfx
#_078773: LDY.b $5D
#_078775: CPY.b #$04 ; LINKSTATE 04
#_078777: BNE .not_swimming

#_078779: JSR ForciblyUnequipCape_quietly

#_07877C: LDA.b $1B
#_07877E: BEQ .dont_swap_layers

#_078780: LDA.b $72
#_078782: CMP.b #$02 ; LINKSTATE 02
#_078784: BEQ .dont_swap_layers

#_078786: LDA.l $7EF356
#_07878A: BEQ .dont_swap_layers

#_07878C: LDA.b #$01
#_07878E: STA.b $EE

.dont_swap_layers
#_078790: LDA.b #$15 ; ANCILLA 15
#_078792: LDY.b #$00
#_078794: JSL AncillaAdd_Splash

;---------------------------------------------------------------------------------------------------

.not_swimming
#_078798: LDY.b #$00
#_07879A: JSR TileDetect_MainHandler

#_07879D: LDA.w $0357
#_0787A0: AND.b #$01
#_0787A2: BEQ .not_in_thick_grass

#_0787A4: LDA.b #$1A ; SFX2.1A
#_0787A6: JSR PlayLinkSFX2Panned

.not_in_thick_grass
#_0787A9: LDA.w $0359
#_0787AC: AND.b #$01
#_0787AE: BEQ .skip_sploosh_sfx

#_0787B0: LDA.w $012E
#_0787B3: CMP.b #$24 ; SFX2.24
#_0787B5: BEQ .skip_sploosh_sfx

#_0787B7: LDA.b #$1C ; SFX2.1C
#_0787B9: JSR PlayLinkSFX2Panned

;---------------------------------------------------------------------------------------------------

.skip_sploosh_sfx
#_0787BC: LDA.w $0341
#_0787BF: AND.b #$01
#_0787C1: BEQ CheckLayerForChange

#_0787C3: LDA.b #$04 ; LINKSTATE 04
#_0787C5: STA.b $5D

#_0787C7: JSR SetToDeepWater
#_0787CA: JSR ResetSwordAndItemUsage

#_0787CD: LDA.b #$15 ; ANCILLA 15
#_0787CF: LDY.b #$00
#_0787D1: JSL AncillaAdd_Splash

;===================================================================================================

CheckLayerForChange:
#_0787D5: LDA.b $EE
#_0787D7: CMP.b #$02
#_0787D9: BNE .dont_reset_layer

#_0787DB: STZ.b $EE

.dont_reset_layer
#_0787DD: LDA.w $047A
#_0787E0: BEQ .preserve_layer

#_0787E2: JSL HandleLayerChange

.preserve_layer
#_0787E6: STZ.b $24
#_0787E8: STZ.b $25

#_0787EA: STZ.b $4D

#_0787EC: STZ.b $5E
#_0787EE: STZ.b $50

#_0787F0: STZ.w $0301
#_0787F3: STZ.w $037A

#_0787F6: STZ.w $0300
#_0787F9: STZ.w $037B
#_0787FC: STZ.w $0360

#_0787FF: STZ.b $27
#_078801: STZ.b $28

;===================================================================================================

HandleLinkRecoilVelocity_and_reset:
#_078803: STZ.b $2E
#_078805: STZ.b $46

;===================================================================================================

HandleLinkRecoilVelocity:
#_078807: LDA.b $5D
#_078809: CMP.b #$05 ; LINKSTATE 05
#_07880B: BEQ .icy_or_low_timer

#_07880D: LDA.b $46
#_07880F: CMP.b #$21
#_078811: BCC .icy_or_low_timer

#_078813: DEC.w $02C5
#_078816: BPL .delay_flagging

#_078818: LSR A
#_078819: LSR A
#_07881A: LSR A
#_07881B: LSR A
#_07881C: STA.w $02C5

.icy_or_low_timer
#_07881F: JSR FlagWalkDirections

#_078822: LDA.b $5D
#_078824: CMP.b #$06 ; LINKSTATE 06
#_078826: BEQ .find_spot

#_078828: JSR HandleLinkDiagonalCollision

#_07882B: LDA.b $67
#_07882D: AND.b #$03
#_07882F: BNE .going_horizontally

#_078831: STZ.b $28

.going_horizontally
#_078833: LDA.b $67
#_078835: AND.b #$0C
#_078837: BNE .find_spot

#_078839: STZ.b $27

.find_spot
#_07883B: JSL FindArbitraryLandingSpot

;---------------------------------------------------------------------------------------------------

.delay_flagging
#_07883F: LDA.b $5D
#_078841: CMP.b #$06 ; LINKSTATE 06
#_078843: BEQ .jumping_out_of_water

#_078845: JSR HandleLinkCardinalCollision

#_078848: STZ.w $0302

.jumping_out_of_water
#_07884B: JSR HandleIndoorCameraAndDoors

#_07884E: LDA.b $24
#_078850: BEQ .not_airborne

#_078852: CMP.b #$E0
#_078854: BCC .skip_pit_detect

.not_airborne
#_078856: JSR TileDetect_BigArea

#_078859: LDA.b $59
#_07885B: AND.b #$0F
#_07885D: CMP.b #$0F
#_07885F: BNE .skip_pit_detect

#_078861: LDA.b #$01 ; LINKSTATE 01
#_078863: STA.b $5D

#_078865: LDA.b #$04
#_078867: STA.b $5E

.skip_pit_detect
#_078869: STZ.b $25

#_07886B: RTS

;===================================================================================================
; Appears completely unused
;===================================================================================================
LinkState_OnIce:
#_07886C: LDA.b $1B
#_07886E: BNE .indoors

#_078870: BRL .overworld

;---------------------------------------------------------------------------------------------------

.indoors
#_078873: LDX.b #$00

#_078875: LDA.b $EE
#_078877: BEQ .upper_layer_or_staircase

#_078879: STZ.b $EE

#_07887B: JSR TileDetect_UnusedIce

#_07887E: LDX.b #$00

#_078880: LDA.b #$01
#_078882: STA.b $EE

#_078884: LDA.w $034C
#_078887: AND.b #$03
#_078889: CMP.b #$03
#_07888B: BEQ .upper_layer_or_staircase

#_07888D: LDX.b #$01

.upper_layer_or_staircase
#_07888F: STX.w $034E

;---------------------------------------------------------------------------------------------------

.continue_from_ow_stuff
#_078892: DEC.b $3D
#_078894: BPL .delay

#_078896: LDA.b #$03
#_078898: STA.b $3D

#_07889A: LDA.w $0300
#_07889D: EOR.b #$01
#_07889F: STA.w $0300

.delay
#_0788A2: LDA.b $F0
#_0788A4: AND.b #$0F
#_0788A6: BNE .no_dpad

#_0788A8: STA.b $30
#_0788AA: STA.b $31

#_0788AC: STA.b $67
#_0788AE: STA.b $26

#_0788B0: STZ.b $2E

#_0788B2: BRA .continue_b

;---------------------------------------------------------------------------------------------------

.no_dpad
#_0788B4: STA.b $67

#_0788B6: CMP.b $26
#_0788B8: BEQ .matches

#_0788BA: STZ.b $2A
#_0788BC: STZ.b $2B
#_0788BE: STZ.b $6B

.matches
#_0788C0: STA.b $26

;---------------------------------------------------------------------------------------------------

.continue_b
#_0788C2: LDX.b #$10

#_0788C4: LDA.b $67
#_0788C6: AND.b #$0F
#_0788C8: BEQ .just_animate

#_0788CA: AND.b #$0C
#_0788CC: BEQ .moving_for_sure

#_0788CE: LDA.b $67
#_0788D0: AND.b #$03
#_0788D2: BEQ .moving_for_sure

#_0788D4: LDX.b #$0A

.moving_for_sure
#_0788D6: STX.b $00

#_0788D8: LDA.b $67
#_0788DA: AND.b #$0C
#_0788DC: BEQ .no_vertical_movement

#_0788DE: AND.b #$08
#_0788E0: BEQ .moving_on_down

#_0788E2: TXA
#_0788E3: EOR.b #$FF
#_0788E5: INC A
#_0788E6: TAX

.moving_on_down
#_0788E7: STX.b $27

;---------------------------------------------------------------------------------------------------

.no_vertical_movement
#_0788E9: LDX.b $00

#_0788EB: LDA.b $67
#_0788ED: AND.b #$03
#_0788EF: BEQ .just_animate

#_0788F1: AND.b #$02
#_0788F3: BEQ .moving_on_right

#_0788F5: TXA
#_0788F6: EOR.b #$FF
#_0788F8: INC A
#_0788F9: TAX

.moving_on_right
#_0788FA: STX.b $28

;---------------------------------------------------------------------------------------------------

.just_animate
#_0788FC: JSL HandleLinkAnimation_FullLongEntry

#_078900: BRL LinkState_Recoil

;---------------------------------------------------------------------------------------------------

.overworld
#_078903: LDY.b #$00
#_078905: JSR TileDetect_MainHandler

#_078908: LDA.w $035B
#_07890B: AND.b #$01
#_07890D: BEQ .reset_layer

#_07890F: LDA.b #$02
#_078911: STA.b $EE

#_078913: BRA .layer_is_set

.reset_layer
#_078915: STZ.w $00EE

.layer_is_set
#_078918: LDA.b #$01
#_07891A: STA.w $034E

#_07891D: BRL .continue_from_ow_stuff

;===================================================================================================
; Does what's on the tin.
;===================================================================================================
HandleChangeInZVelocity:
#_078920: LDX.b #$02

#_078922: LDA.b $5D
#_078924: CMP.b #$05 ; LINKSTATE 05
#_078926: BNE .not_weird_ice

#_078928: LDX.b #$01

.not_weird_ice
#_07892A: STX.b $00

.preset
#_07892C: LDA.b $29 ; immediately apply positive velocity changes
#_07892E: BPL .apply_z_speed_change

#_078930: LDA.b $24 ; don't apply change if Z-coord is 0
#_078932: BEQ .exit
#_078934: BPL .apply_z_speed_change ; apply as is if positive Z-coord

#_078936: LDA.b #$FF ; otherwise, reset Z-coord and velocity
#_078938: STA.b $24
#_07893A: STA.b $25
#_07893C: STA.b $29

#_07893E: BRA .exit

;===================================================================================================

#HandleChangeInZVelocity_apply_z_speed_change:
#_078940: LDA.b $29
#_078942: SEC
#_078943: SBC.b $00
#_078945: STA.b $29

.exit
#_078947: RTS

;===================================================================================================

LinkState_HoppingSouthOW:
#_078948: LDA.b #$01
#_07894A: STA.b $66

#_07894C: STZ.b $50

#_07894E: STZ.b $27
#_078950: STZ.b $28

#_078952: STZ.w $0351

#_078955: LDA.b $46
#_078957: BNE .continue

#_078959: LDA.w $0362
#_07895C: BNE .continue

#_07895E: LDA.b #$20 ; SFX2.20
#_078960: JSR PlayLinkSFX2Panned

#_078963: JSR FindTileToLandOnSouth

#_078966: LDA.b $1B
#_078968: BNE .continue

#_07896A: LDA.b #$02
#_07896C: STA.b $EE

;---------------------------------------------------------------------------------------------------

.continue
#_07896E: LDA.w $0362
#_078971: STA.b $29

#_078973: LDA.w $0363
#_078976: STA.w $02C7

#_078979: LDA.w $0364
#_07897C: STA.b $24

#_07897E: LDA.w $0365
#_078981: STA.b $25

#_078983: LDA.b #$02
#_078985: STA.b $00

#_078987: JSR HandleChangeInZVelocity_apply_z_speed_change
#_07898A: JSL FindArbitraryLandingSpot

#_07898E: LDA.b $29
#_078990: BPL .adjust_velocity

#_078992: CMP.b #$A0
#_078994: BCS .not_maxed_out

#_078996: LDA.b #$A0
#_078998: STA.b $29

.not_maxed_out
#_07899A: REP #$20

#_07899C: LDA.b $24
#_07899E: CMP.w #$FFF0
#_0789A1: BCC .adjust_velocity

#_0789A3: STZ.b $24

#_0789A5: SEP #$20

#_0789A7: JSR SplashUponLanding

#_0789AA: LDA.b $5B
#_0789AC: BEQ .not_near_pit

#_0789AE: LDA.b #$01 ; LINKSTATE 01
#_0789B0: STA.b $5D

.not_near_pit
#_0789B2: LDA.b $5D
#_0789B4: CMP.b #$04 ; LINKSTATE 04
#_0789B6: BEQ .skip_sfx

#_0789B8: CMP.b #$01 ; LINKSTATE 01
#_0789BA: BEQ .skip_sfx

#_0789BC: LDA.w $0345
#_0789BF: BNE .skip_sfx

#_0789C1: LDA.b #$21 ; SFX2.21
#_0789C3: JSR PlayLinkSFX2Panned

.skip_sfx
#_0789C6: STZ.w $037B

#_0789C9: STZ.b $78
#_0789CB: STZ.b $4D

#_0789CD: LDA.b #$FF
#_0789CF: STA.b $29
#_0789D1: STA.b $24
#_0789D3: STA.b $25

#_0789D5: STZ.b $46

#_0789D7: LDA.b $1B
#_0789D9: BNE .no_layer_reset

#_0789DB: STZ.b $EE

.no_layer_reset
#_0789DD: BRA .finisher_up

;===================================================================================================

.adjust_velocity
#_0789DF: SEP #$20

#_0789E1: LDA.w $0364
#_0789E4: SEC
#_0789E5: SBC.b $24
#_0789E7: STA.b $30

;---------------------------------------------------------------------------------------------------

.finisher_up
#_0789E9: LDA.b $29
#_0789EB: STA.w $0362

#_0789EE: LDA.w $02C7
#_0789F1: STA.w $0363

#_0789F4: LDA.b $24
#_0789F6: STA.w $0364

#_0789F9: LDA.b $25
#_0789FB: STA.w $0365

#_0789FE: RTS

;===================================================================================================

LinkState_HandlingJump:
#_0789FF: LDA.w $0362
#_078A02: STA.b $29

#_078A04: LDA.w $0363
#_078A07: STA.w $02C7

#_078A0A: LDA.w $0364
#_078A0D: STA.b $24

#_078A0F: LDA.b #$02
#_078A11: STA.b $00

#_078A13: JSR HandleChangeInZVelocity_apply_z_speed_change
#_078A16: JSL FindArbitraryLandingSpot

#_078A1A: LDA.b $29
#_078A1C: BMI .negative_speed

#_078A1E: BRL .not_at_max_z

.negative_speed
#_078A21: CMP.b #$A0
#_078A23: BCS .not_at_max_z_speed

#_078A25: LDA.b #$A0
#_078A27: STA.b $29

.not_at_max_z_speed
#_078A29: LDA.b $24
#_078A2B: CMP.b #$F0
#_078A2D: BCC .not_at_max_z

#_078A2F: STZ.b $24
#_078A31: STZ.b $25

#_078A33: LDA.b $5D
#_078A35: CMP.b #$0C ; LINKSTATE 0C
#_078A37: BEQ .left_or_right

#_078A39: CMP.b #$0E ; LINKSTATE 0E
#_078A3B: BNE .continue_a

;---------------------------------------------------------------------------------------------------

.left_or_right
#_078A3D: LDY.b #$00
#_078A3F: JSR TileDetect_MainHandler

#_078A42: LDA.w $0341
#_078A45: AND.b #$01
#_078A47: BEQ .dont_become_swimming

#_078A49: LDA.b #$04 ; LINKSTATE 04
#_078A4B: STA.b $5D

#_078A4D: JSR SetToDeepWater
#_078A50: JSR ResetSwordAndItemUsage

#_078A53: LDA.b #$15 ; ANCILLA 15
#_078A55: LDY.b #$00
#_078A57: JSL AncillaAdd_Splash

#_078A5B: BRA .continue_a

;---------------------------------------------------------------------------------------------------

.dont_become_swimming
#_078A5D: LDA.b $59
#_078A5F: AND.b #$01
#_078A61: BEQ .continue_a

#_078A63: LDA.b #$09
#_078A65: STA.b $5C

#_078A67: STZ.b $5A

#_078A69: LDA.b #$01
#_078A6B: STA.b $5B

; we won't be swimming
; branch further, dumdum
#_078A6D: LDA.b #$01 ; LINKSTATE 01
#_078A6F: STA.b $5D

#_078A71: BRA .check_if_swimming

;---------------------------------------------------------------------------------------------------

.continue_a
#_078A73: JSR SplashUponLanding

#_078A76: LDA.b $5D
#_078A78: CMP.b #$04 ; LINKSTATE 04
#_078A7A: BEQ .check_if_swimming

#_078A7C: LDA.w $0345
#_078A7F: BNE .check_if_swimming

#_078A81: LDA.b #$21 ; SFX2.21
#_078A83: JSR PlayLinkSFX2Panned

.check_if_swimming
#_078A86: LDA.b $5D
#_078A88: CMP.b #$04 ; LINKSTATE 04
#_078A8A: BNE .not_swimming

#_078A8C: LDA.w $02E0
#_078A8F: BNE .am_bunny

.not_swimming
#_078A91: STZ.w $037B

;---------------------------------------------------------------------------------------------------

.am_bunny
#_078A94: STZ.b $78
#_078A96: STZ.b $4D

#_078A98: LDA.b #$FF
#_078A9A: STA.b $29
#_078A9C: STA.b $24
#_078A9E: STA.b $25

#_078AA0: STZ.b $46

#_078AA2: LDA.b $1B
#_078AA4: BNE .dont_reset_layer

#_078AA6: STZ.b $EE

.dont_reset_layer
#_078AA8: BRA .continue_b

;---------------------------------------------------------------------------------------------------

.not_at_max_z
#_078AAA: LDA.w $0364
#_078AAD: SEC
#_078AAE: SBC.b $24
#_078AB0: STA.b $30

.continue_b
#_078AB2: LDA.b $29
#_078AB4: STA.w $0362

#_078AB7: LDA.w $02C7
#_078ABA: STA.w $0363

#_078ABD: LDA.b $24
#_078ABF: STA.w $0364

#_078AC2: RTS

;===================================================================================================

pool FindTileToLandOnSouth FindVerticalHopTile

.offset_x
#_078AC3: dw  -8
#_078AC5: dw   8

.offset_y
#_078AC7: dw -16
#_078AC9: dw  16

pool off

;---------------------------------------------------------------------------------------------------

FindTileToLandOnSouth:
#_078ACB: LDA.b $21
#_078ACD: STA.b $33

#_078ACF: LDA.b $20
#_078AD1: STA.b $32

#_078AD3: SEC
#_078AD4: SBC.b $3E
#_078AD6: STA.b $30

.next_y
#_078AD8: LDA.b $66
#_078ADA: ASL A
#_078ADB: TAY

#_078ADC: REP #$20

#_078ADE: LDA.w .offset_x,Y
#_078AE1: CLC
#_078AE2: ADC.b $20
#_078AE4: STA.b $20

#_078AE6: SEP #$20

#_078AE8: JSR TileDetectOnMovement_Vertical

#_078AEB: LDA.w $0343
#_078AEE: ORA.b $59
#_078AF0: ORA.w $035B
#_078AF3: ORA.w $0357
#_078AF6: ORA.w $0341
#_078AF9: AND.b #$07
#_078AFB: CMP.b #$07
#_078AFD: BNE .next_y

;---------------------------------------------------------------------------------------------------

#_078AFF: LDA.w $0341
#_078B02: AND.b #$07
#_078B04: BEQ .didnt_find_water

#_078B06: LDA.b #$01
#_078B08: STA.w $0345

#_078B0B: LDA.b $4D
#_078B0D: CMP.b #$04
#_078B0F: BEQ .leave_recoil_state

#_078B11: LDA.b #$02
#_078B13: STA.b $4D

.leave_recoil_state
#_078B15: LDA.w $0026
#_078B18: STA.w $0340

#_078B1B: JSL ResetSwimmingState

#_078B1F: STZ.w $0376
#_078B22: STZ.b $5E

.didnt_find_water
#_078B24: LDA.b $59
#_078B26: AND.b #$07
#_078B28: BEQ .didnt_find_pit

#_078B2A: LDA.b #$09
#_078B2C: STA.b $5C

#_078B2E: STZ.b $5A

#_078B30: LDA.b #$01
#_078B32: STA.b $5B

.didnt_find_pit
#_078B34: LDA.b $66
#_078B36: ASL A
#_078B37: TAY

#_078B38: REP #$20

#_078B3A: LDA.w .offset_y,Y
#_078B3D: CLC
#_078B3E: ADC.b $20
#_078B40: STA.b $20

#_078B42: SEP #$20

#_078B44: LDA.b $20
#_078B46: STA.b $3E

#_078B48: LDA.b $21
#_078B4A: STA.b $40

#_078B4C: LDA.b #$01
#_078B4E: STA.b $46

#_078B50: LDA.b $24
#_078B52: CMP.b #$F0
#_078B54: BCC .z_coord_fine

#_078B56: LDA.b #$00

.z_coord_fine
#_078B58: STA.b $00
#_078B5A: STZ.b $01

#_078B5C: REP #$20

#_078B5E: LDA.b $20
#_078B60: SEC
#_078B61: SBC.b $32
#_078B63: CLC
#_078B64: ADC.b $00
#_078B66: STA.w $0364
#_078B69: STA.b $24

#_078B6B: SEP #$20

#_078B6D: RTS

;===================================================================================================

LinkState_HoppingHorizontallyOW:
#_078B6E: LDX.b #$01

#_078B70: LDA.b $28
#_078B72: BPL .moving_right

#_078B74: LDX.b #$02

.moving_right
#_078B76: TXA
#_078B77: ORA.b #$04
#_078B79: STA.b $67

#_078B7B: STZ.b $50
#_078B7D: STZ.b $27

#_078B7F: STZ.w $0351

#_078B82: BRL LinkState_HandlingJump

;===================================================================================================

pool FindVerticalHopTile
; TODO verify
.speed_z
#_078B85: db $20, $20, $20, $28
#_078B89: db $30, $38, $40, $48

.speed_x
#_078B8D: db $10, $1C, $1C, $1C
#_078B91: db $1C, $1C, $1C, $1C

pool off

;---------------------------------------------------------------------------------------------------

FindVerticalHopTile:
#_078B95: LDA.b $21
#_078B97: STA.b $33

#_078B99: LDA.b $20
#_078B9B: STA.b $32

#_078B9D: SEC
#_078B9E: SBC.b $3E
#_078BA0: STA.b $30

#_078BA2: LDA.b $66
#_078BA4: ASL A
#_078BA5: TAY

#_078BA6: REP #$20

#_078BA8: LDA.w .offset_x,Y
#_078BAB: CLC
#_078BAC: ADC.b $20
#_078BAE: STA.b $20

#_078BB0: SEP #$20

#_078BB2: JSR TileDetectOnMovement_Vertical

#_078BB5: LDA.w $0343
#_078BB8: ORA.w $035B
#_078BBB: ORA.w $0357
#_078BBE: ORA.w $0341
#_078BC1: AND.b #$07
#_078BC3: CMP.b #$07
#_078BC5: BEQ .no_tiles_flagged

#_078BC7: LDA.b $33
#_078BC9: STA.b $21

#_078BCB: LDA.b $32
#_078BCD: STA.b $20

#_078BCF: LDY.b #$00

#_078BD1: LDA.b #$01
#_078BD3: STA.b $46

#_078BD5: LDA.b $28
#_078BD7: BPL .x_speed_positive

#_078BD9: LDY.b #$FF

#_078BDB: EOR.b #$FF
#_078BDD: INC A

.x_speed_positive
#_078BDE: LSR A
#_078BDF: LSR A
#_078BE0: LSR A
#_078BE1: LSR A
#_078BE2: TAX

#_078BE3: LDA.w .speed_z,X
#_078BE6: STA.w $0362
#_078BE9: STA.w $0363

#_078BEC: LDA.w .speed_x,X
#_078BEF: CPY.b #$FF
#_078BF1: BNE .dont_invert_x_speed

#_078BF3: EOR.b #$FF
#_078BF5: INC A

.dont_invert_x_speed
#_078BF6: STA.b $28

#_078BF8: BRA .check_for_water

;---------------------------------------------------------------------------------------------------

.no_tiles_flagged
#_078BFA: LDA.b $66
#_078BFC: ASL A
#_078BFD: TAY

#_078BFE: REP #$20

#_078C00: LDA.w .offset_y,Y
#_078C03: CLC
#_078C04: ADC.b $20
#_078C06: STA.b $20

#_078C08: SEP #$20

#_078C0A: LDA.b $20
#_078C0C: STA.b $3E

#_078C0E: LDA.b $21
#_078C10: STA.b $40

#_078C12: LDA.b #$01
#_078C14: STA.b $46

#_078C16: LDA.b $24
#_078C18: CMP.b #$FF
#_078C1A: BNE .dont_zero_z_coord

#_078C1C: LDA.b #$00

.dont_zero_z_coord
#_078C1E: STA.b $00
#_078C20: STZ.b $01

#_078C22: REP #$20

#_078C24: LDA.b $20
#_078C26: SEC
#_078C27: SBC.b $32
#_078C29: CLC
#_078C2A: ADC.b $00
#_078C2C: STA.w $0364
#_078C2F: STA.b $24

#_078C31: SEP #$20

.check_for_water
#_078C33: LDA.w $0341
#_078C36: AND.b #$07
#_078C38: BEQ .exit

#_078C3A: LDA.b #$02
#_078C3C: STA.b $4D

;===================================================================================================

#SetToDeepWater:
#_078C3E: LDA.b #$01
#_078C40: STA.w $0345

#_078C43: LDA.w $0026
#_078C46: STA.w $0340

#_078C49: JSL ResetSwimmingState

#_078C4D: STZ.w $0376
#_078C50: STZ.b $5E

.exit
#_078C52: RTS

;===================================================================================================

pool LinkState_0F

.offset_x
#_078C53: dw $FFE8
#_078C55: dw $0018
#_078C57: dw $FFE8
#_078C59: dw $0018

.offset_y
#_078C5B: dw $0020
#_078C5D: dw $0050

.speed_x
#_078C5F: db $10
#_078C60: db $18

.offset_z
#_078C61: db $20
#_078C62: db $50

pool off

;---------------------------------------------------------------------------------------------------

LinkState_0F:
#_078C63: LDY.b #$03

#_078C65: LDA.b $28
#_078C67: BPL .x_speed_positive

#_078C69: LDY.b #$02

.x_speed_positive
#_078C6B: STY.b $66

#_078C6D: STZ.b $50
#_078C6F: STZ.b $27

#_078C71: STZ.w $0351

#_078C74: LDA.b $46
#_078C76: BNE .proceed_to_jump

#_078C78: LDA.w $0362
#_078C7B: BNE .proceed_to_jump

#_078C7D: LDA.b $5D
#_078C7F: SEC
#_078C80: SBC.b #$0F ; LINKSTATE 0F
#_078C82: ASL A
#_078C83: ASL A
#_078C84: STA.b $00

#_078C86: TYA
#_078C87: AND.b #$FD
#_078C89: ASL A
#_078C8A: CLC
#_078C8B: ADC.b $00
#_078C8D: TAX

; !DUMB cached, written to, then just restored without anything being done to it
#_078C8E: LDA.b $22
#_078C90: PHA

#_078C91: LDA.b $23
#_078C93: PHA

#_078C94: REP #$20

#_078C96: LDA.b $22
#_078C98: CLC
#_078C99: ADC.w .offset_x,X
#_078C9C: STA.b $22

#_078C9E: SEP #$20

#_078CA0: TXA
#_078CA1: LSR A
#_078CA2: LSR A
#_078CA3: TAX

#_078CA4: LDA.w .speed_x,X

#_078CA7: CPY.b #$02
#_078CA9: BNE .keep_speed_positive

#_078CAB: EOR.b #$FF
#_078CAD: INC A

.keep_speed_positive
#_078CAE: STA.b $28

#_078CB0: LDA.b $24
#_078CB2: CMP.b #$FF
#_078CB4: BNE .dont_zero_z

#_078CB6: LDA.b #$00

.dont_zero_z
#_078CB8: CLC
#_078CB9: ADC.w .offset_z,X
#_078CBC: STA.w $0364
#_078CBF: STA.b $24

#_078CC1: TXA
#_078CC2: ASL A
#_078CC3: TAX

#_078CC4: REP #$20

#_078CC6: LDA.w .offset_y,X
#_078CC9: CLC
#_078CCA: ADC.b $20
#_078CCC: STA.b $20

#_078CCE: SEP #$20

#_078CD0: LDA.b $20
#_078CD2: STA.b $3E

#_078CD4: LDA.b $21
#_078CD6: STA.b $40

#_078CD8: PLA
#_078CD9: STA.b $23

#_078CDB: PLA
#_078CDC: STA.b $22

#_078CDE: LDA.b $1B
#_078CE0: BNE .proceed_to_jump

#_078CE2: LDA.b #$02
#_078CE4: STA.b $EE

.proceed_to_jump
#_078CE6: BRL LinkState_HandlingJump

;===================================================================================================

pool FindHorizontalHopTile

.offset_x_a
#_078CE9: dw  -8
#_078CEB: dw   8

.offset_x_b
#_078CED: dw -32
#_078CEF: dw  32

.offset_x_c
#_078CF1: dw -16
#_078CF3: dw  16

.speed_x
#_078CF5: db $14, $14, $14, $18, $18, $18, $18, $1C
#_078CFD: db $1C, $24, $24, $24, $24, $24, $24, $26
#_078D05: db $26, $26, $26, $26, $26, $26, $28, $28

; TODO verify
.speed_z
#_078D0D: db $14, $14, $14, $14, $14, $14, $14, $18
#_078D15: db $18, $20, $20, $20, $24, $24, $24, $26
#_078D1D: db $26, $26, $26, $26, $26, $26, $28, $28

pool off

;---------------------------------------------------------------------------------------------------

FindHorizontalHopTile:
#_078D25: LDA.b $23
#_078D27: STA.b $33

#_078D29: LDA.b $22
#_078D2B: STA.b $32

#_078D2D: LDX.b #$07

.find_next
#_078D2F: PHX
#_078D30: PHY

#_078D31: REP #$20

#_078D33: LDA.w .offset_x_a,Y
#_078D36: CLC
#_078D37: ADC.b $22
#_078D39: STA.b $22

#_078D3B: SEP #$20

#_078D3D: LDA.b $66
#_078D3F: ASL A
#_078D40: TAY

#_078D41: JSR TileDetectOnMovement_Horizontal

#_078D44: PLY
#_078D45: PLX

#_078D46: LDA.w $0343
#_078D49: ORA.w $035B
#_078D4C: ORA.w $0357
#_078D4F: ORA.w $0341
#_078D52: ORA.b $59
#_078D54: AND.b #$07
#_078D56: CMP.b #$07
#_078D58: BNE .doesnt_work

#_078D5A: LDA.w $0341
#_078D5D: AND.b #$07
#_078D5F: CMP.b #$07
#_078D61: BNE .water_handled

#_078D63: LDA.b #$01
#_078D65: STA.w $0345

#_078D68: INC A
#_078D69: STA.b $4D

#_078D6B: LDA.w $0026
#_078D6E: STA.w $0340

#_078D71: STZ.w $02CB
#_078D74: STZ.b $5E
#_078D76: STZ.w $0376

#_078D79: JSR ResetAllAcceleration
#_078D7C: BRA .water_handled

.doesnt_work
#_078D7E: DEX
#_078D7F: BPL .find_next

;---------------------------------------------------------------------------------------------------

#_078D81: REP #$20

#_078D83: LDA.w .offset_x_b,Y
#_078D86: CLC
#_078D87: ADC.b $32
#_078D89: STA.b $22

#_078D8B: SEP #$20

.water_handled
#_078D8D: PHX

#_078D8E: REP #$20

#_078D90: LDA.w .offset_x_c,Y
#_078D93: CLC
#_078D94: ADC.b $22
#_078D96: STA.b $22

#_078D98: LDA.b $32
#_078D9A: SEC
#_078D9B: SBC.b $22
#_078D9D: BPL .positive

#_078D9F: EOR.w #$FFFF
#_078DA2: INC A

.positive
#_078DA3: LSR A
#_078DA4: LSR A
#_078DA5: LSR A
#_078DA6: TAX

#_078DA7: SEP #$20

#_078DA9: LDA.w .speed_x,X

#_078DAC: CPY.b #$02
#_078DAE: BEQ .dont_invert

#_078DB0: EOR.b #$FF
#_078DB2: INC A

.dont_invert
#_078DB3: STA.b $28

#_078DB5: LDA.w .speed_z,X
#_078DB8: STA.w $0362
#_078DBB: STA.w $0363

#_078DBE: PLX

#_078DBF: RTS

;===================================================================================================

LinkState_HoppingDiagonallyUpOW:
#_078DC0: STZ.w $0351

#_078DC3: LDA.b #$02
#_078DC5: STA.b $00

#_078DC7: JSR HandleChangeInZVelocity_preset
#_078DCA: JSL FindArbitraryLandingSpot

#_078DCE: LDA.b $24
#_078DD0: BPL .exit

;---------------------------------------------------------------------------------------------------

#_078DD2: JSR SplashUponLanding

#_078DD5: LDA.b $5D
#_078DD7: CMP.b #$04 ; LINKSTATE 04
#_078DD9: BEQ .no_sfx

#_078DDB: LDA.w $0345
#_078DDE: BNE .no_sfx

#_078DE0: LDA.b #$21 ; SFX2.21
#_078DE2: JSR PlayLinkSFX2Panned

;---------------------------------------------------------------------------------------------------

.no_sfx
#_078DE5: STZ.w $037B
#_078DE8: STZ.b $4D

#_078DEA: LDA.b #$FF
#_078DEC: STA.b $29
#_078DEE: STA.b $24
#_078DF0: STA.b $25

#_078DF2: STZ.b $46
#_078DF4: STZ.b $50

.exit
#_078DF6: RTS

;===================================================================================================

pool LinkState_HoppingDiagonallyDownOW

.speed_x
#_078DF7: db $04, $04, $04, $0A, $0A, $0A, $0B, $12
#_078DFF: db $12, $12, $14, $14, $14, $14, $16, $16
#_078E07: db $1A, $1A, $1A, $1A, $1C, $1C, $1C, $1C

pool off

;---------------------------------------------------------------------------------------------------

LinkState_HoppingDiagonallyDownOW:
#_078E0F: LDY.b #$03

#_078E11: LDA.b $28
#_078E13: BPL .down_right

#_078E15: LDY.b #$02

.down_right
#_078E17: STY.b $66

#_078E19: STZ.b $50
#_078E1B: STZ.b $27

#_078E1D: STZ.w $0351

#_078E20: LDA.b $46
#_078E22: BNE .underworld

#_078E24: LDA.w $0362
#_078E27: BNE .underworld

#_078E29: LDA.b #$01
#_078E2B: STA.b $66

#_078E2D: PHY

#_078E2E: LDA.b $22
#_078E30: PHA

#_078E31: LDA.b $23
#_078E33: PHA

#_078E34: LDA.b #$20 ; SFX2.20
#_078E36: JSR PlayLinkSFX2Panned

#_078E39: JSR FindLandingSpotDiagonallyDown

#_078E3C: PLA
#_078E3D: STA.b $23

#_078E3F: PLA
#_078E40: STA.b $22

#_078E42: PLX

#_078E43: REP #$20

#_078E45: LDA.b $20
#_078E47: SEC
#_078E48: SBC.b $32
#_078E4A: LSR A
#_078E4B: LSR A
#_078E4C: LSR A
#_078E4D: TAY

#_078E4E: SEP #$20

#_078E50: LDA.w .speed_x,Y

#_078E53: CPX.b #$02
#_078E55: BNE .dont_invert

#_078E57: EOR.b #$FF
#_078E59: INC A

.dont_invert
#_078E5A: STA.b $28

#_078E5C: LDA.b $1B
#_078E5E: BNE .underworld

#_078E60: LDA.b #$02
#_078E62: STA.b $EE

.underworld
#_078E64: BRL LinkState_HandlingJump

;===================================================================================================

pool FindLandingSpotDiagonallyDown

.offset_x
#_078E67: dw $FFF8
#_078E69: dw $0008

.offset_y
#_078E6B: dw $FFF7
#_078E6D: dw $0009

.offset_y_2
#_078E6F: dw $FFE8
#_078E71: dw $0018

.detection_masks
#_078E73: db $06
#_078E74: db $03

pool off

;---------------------------------------------------------------------------------------------------

FindLandingSpotDiagonallyDown:
#_078E75: LDA.b $21
#_078E77: STA.b $33

#_078E79: LDA.b $20
#_078E7B: STA.b $32

#_078E7D: SEC
#_078E7E: SBC.b $3E
#_078E80: STA.b $30

.check_next
#_078E82: LDY.b #$00

#_078E84: LDA.b $28
#_078E86: BMI .positive_x_jump

#_078E88: LDY.b #$02

.positive_x_jump
#_078E8A: PHY

#_078E8B: REP #$20

#_078E8D: LDA.w .offset_x,Y
#_078E90: CLC
#_078E91: ADC.b $22
#_078E93: STA.b $22

#_078E95: LDA.b $66
#_078E97: AND.w #$00FF
#_078E9A: ASL A
#_078E9B: TAY

#_078E9C: LDA.w .offset_y,Y
#_078E9F: CLC
#_078EA0: ADC.b $20
#_078EA2: STA.b $20

#_078EA4: SEP #$20

#_078EA6: JSR TileDetectOnMovement_Vertical

#_078EA9: PLY

#_078EAA: TYA
#_078EAB: LSR A
#_078EAC: TAY

#_078EAD: LDA.w .detection_masks,Y
#_078EB0: STA.b $72

#_078EB2: LDA.w $0343
#_078EB5: ORA.w $035B
#_078EB8: ORA.w $0357
#_078EBB: ORA.w $0341
#_078EBE: AND.b $72
#_078EC0: CMP.b $72
#_078EC2: BNE .check_next

;---------------------------------------------------------------------------------------------------

#_078EC4: LDA.w $0341
#_078EC7: AND.b $72
#_078EC9: BEQ .didnt_find_water

#_078ECB: LDA.b #$01
#_078ECD: STA.w $0345

#_078ED0: LDA.b #$02
#_078ED2: STA.b $4D

#_078ED4: LDA.w $0026
#_078ED7: STA.w $0340

#_078EDA: JSL ResetSwimmingState

#_078EDE: STZ.b $5E
#_078EE0: STZ.w $0376

.didnt_find_water
#_078EE3: LDA.b $66
#_078EE5: ASL A
#_078EE6: TAY

#_078EE7: REP #$20

#_078EE9: LDA.w .offset_y_2,Y
#_078EEC: CLC
#_078EED: ADC.b $20
#_078EEF: STA.b $20

#_078EF1: SEP #$20

#_078EF3: LDA.b $20
#_078EF5: STA.b $3E

#_078EF7: LDA.b $21
#_078EF9: STA.b $40

#_078EFB: LDA.b #$01
#_078EFD: STA.b $46

#_078EFF: LDA.b $24
#_078F01: STA.b $00
#_078F03: STZ.b $01

#_078F05: REP #$20

#_078F07: LDA.b $20
#_078F09: SEC
#_078F0A: SBC.b $32
#_078F0C: CLC
#_078F0D: ADC.b $00
#_078F0F: STA.w $0364
#_078F12: STA.b $24

#_078F14: SEP #$20

#_078F16: RTS

;===================================================================================================

SplashUponLanding:
#_078F17: PHX
#_078F18: PHY

#_078F19: LDA.w $02E0
#_078F1C: BEQ .not_bunny

#_078F1E: LDA.w $0345
#_078F21: BEQ .not_deep_water

#_078F23: LDA.b #$15 ; ANCILLA 15
#_078F25: LDY.b #$00
#_078F27: JSL AncillaAdd_Splash

#_078F2B: PLY
#_078F2C: PLX

#_078F2D: BRL LinkState_Bunny_recache

;---------------------------------------------------------------------------------------------------

.not_deep_water
#_078F30: LDX.b #$17 ; LINKSTATE 17

#_078F32: LDA.l $7EF357
#_078F36: BEQ .set_state

#_078F38: LDX.b #$1C ; LINKSTATE 1C
#_078F3A: BRA .set_state

.not_bunny
#_078F3C: LDX.b #$00 ; LINKSTATE 00

; check for deep water
#_078F3E: LDA.w $0345
#_078F41: BEQ .set_state

; check for some type of recoil
#_078F43: LDA.b $5D
#_078F45: CMP.b #$06 ; LINKSTATE 06
#_078F47: BEQ .not_recoiling

#_078F49: LDA.b #$15 ; ANCILLA 15
#_078F4B: LDY.b #$00
#_078F4D: JSL AncillaAdd_Splash

.not_recoiling
#_078F51: JSR ForciblyUnequipCape_quietly

; set to swim state
#_078F54: LDX.b #$04 ; LINKSTATE 04

.set_state
#_078F56: STX.b $5D

#_078F58: PLY
#_078F59: PLX

#_078F5A: RTS

;===================================================================================================

WalkDirectionFlags:
#_078F5B: db $08
#_078F5C: db $04
#_078F5D: db $02
#_078F5E: db $01

;---------------------------------------------------------------------------------------------------

LinkDashSFXMasks:
#_078F5F: db $07, $0F, $0F

;---------------------------------------------------------------------------------------------------

FollowerReactionToDashing:
#_078F62: db $FF ; 0x00 - No follower
#_078F63: db $00 ; 0x01 - Zelda
#_078F64: db $02 ; 0x02 - Old man that stops following you
#_078F65: db $00 ; 0x03 - Unused old man
#_078F66: db $00 ; 0x04 - Normal old man
#_078F67: db $00 ; 0x05 - Zelda rescue telepathy
#_078F68: db $00 ; 0x06 - Blind maiden
#_078F69: db $00 ; 0x07 - Frogsmith
#_078F6A: db $00 ; 0x08 - Smithy
#_078F6B: db $00 ; 0x09 - Locksmith
#_078F6C: db $00 ; 0x0A - Kiki
#_078F6D: db $00 ; 0x0B - Unused old man
#_078F6E: db $00 ; 0x0C - Purple chest
#_078F6F: db $00 ; 0x0D - Super bomb
#_078F70: db $00 ; 0x0E - Master Sword telepathy

;---------------------------------------------------------------------------------------------------

FollowerDashReplacement:
#_078F71: db $FF ; 0x00 - No follower
#_078F72: db $00 ; 0x01 - Zelda
#_078F73: db $03 ; 0x02 - Old man that stops following you ⇒ FOLLOWER 03
#_078F74: db $00 ; 0x03 - Unused old man
#_078F75: db $00 ; 0x04 - Normal old man
#_078F76: db $00 ; 0x05 - Zelda rescue telepathy
#_078F77: db $00 ; 0x06 - Blind maiden
#_078F78: db $00 ; 0x07 - Frogsmith
#_078F79: db $00 ; 0x08 - Smithy
#_078F7A: db $00 ; 0x09 - Locksmith
#_078F7B: db $00 ; 0x0A - Kiki
#_078F7C: db $00 ; 0x0B - Unused old man
#_078F7D: db $00 ; 0x0C - Purple chest
#_078F7E: db $00 ; 0x0D - Super bomb
#_078F7F: db $00 ; 0x0E - Master Sword telepathy

;===================================================================================================

LinkState_Dashing:
#_078F80: JSR CacheCameraPropertiesIfOutdoors

#_078F83: JSR HandleBunnyTransformation
#_078F86: BCC .not_bunnifying

#_078F88: LDA.b $5D
#_078F8A: CMP.b #$17 ; LINKSTATE 17
#_078F8C: BNE .not_bunny

#_078F8E: BRL LinkState_Bunny

.not_bunny
#_078F91: RTS

;---------------------------------------------------------------------------------------------------

.not_bunnifying
#_078F92: LDA.w $0372
#_078F95: BNE .still_dashing

#_078F97: STZ.w $037B
#_078F9A: STZ.w $0374
#_078F9D: STZ.b $5E

#_078F9F: LDA.b #$00 ; LINKSTATE 00
#_078FA1: STA.b $5D

#_078FA3: STZ.b $50

#_078FA5: BRL .exit

;---------------------------------------------------------------------------------------------------

.still_dashing
#_078FA8: BIT.b $3A
#_078FAA: BPL .no_b_press

#_078FAC: LDA.b $3C
#_078FAE: CMP.b #$09
#_078FB0: BCC .no_b_press

#_078FB2: LDA.b #$09
#_078FB4: STA.b $3C

.no_b_press
#_078FB6: STZ.w $02CA

#_078FB9: LDA.b $4D
#_078FBB: BEQ .not_recoiling

#_078FBD: STZ.w $037B
#_078FC0: STZ.w $0374

#_078FC3: STZ.b $5E
#_078FC5: STZ.b $50

#_078FC7: STZ.w $0372

#_078FCA: STZ.b $48

#_078FCC: LDA.w $0360
#_078FCF: BEQ .bonking

;---------------------------------------------------------------------------------------------------

#_078FD1: LDA.b $55
#_078FD3: BEQ .no_cape

#_078FD5: JSR ForciblyUnequipCape_quietly

.no_cape
#_078FD8: JSR ResetSwordAndItemUsage

#_078FDB: LDA.b #$01
#_078FDD: STA.w $037B

#_078FE0: STZ.w $0300

#_078FE3: LDA.b #$02
#_078FE5: STA.b $3D

#_078FE7: STZ.b $2E

#_078FE9: LDA.b $67
#_078FEB: AND.b #$F0
#_078FED: STA.b $67

#_078FEF: LDA.b #$2B ; SFX3.2B
#_078FF1: JSR PlayLinkSFX3Panned

#_078FF4: LDA.b #$07 ; LINKSTATE 07
#_078FF6: STA.b $5D

#_078FF8: BRL LinkState_Zapped

;---------------------------------------------------------------------------------------------------

.bonking
#_078FFB: LDA.b #$02 ; LINKSTATE 02
#_078FFD: STA.b $5D

#_078FFF: BRL LinkState_Recoil

;---------------------------------------------------------------------------------------------------

.not_recoiling
#_079002: LDA.w $0374
#_079005: LSR A
#_079006: LSR A
#_079007: LSR A
#_079008: LSR A
#_079009: TAX

#_07900A: LDA.w $0374
#_07900D: BNE .dont_tick_dash_timer

#_07900F: LDA.b $4F

#_079011: DEC.b $4F

.dont_tick_dash_timer
#_079013: AND.w LinkDashSFXMasks,X
#_079016: BNE .no_sfx

#_079018: LDA.b #$23 ; SFX2.23
#_07901A: JSR PlayLinkSFX2Panned

.no_sfx
#_07901D: DEC.w $0374
#_079020: BPL .skip_follower_logic

#_079022: STZ.w $0374

#_079025: LDA.l $7EF3CC
#_079029: TAX

#_07902A: CMP.w FollowerReactionToDashing,X
#_07902D: BNE .dont_replace

#_07902F: LDA.w FollowerDashReplacement,X
#_079032: STA.l $7EF3CC

.dont_replace
#_079036: BRL .continue_from_follower

;---------------------------------------------------------------------------------------------------

.skip_follower_logic
#_079039: LDA.b #$00
#_07903B: STA.b $4F

#_07903D: BIT.b $F2
#_07903F: BMI .holding_a

#_079041: STZ.b $2E
#_079043: STZ.w $0374
#_079046: STZ.b $5E

#_079048: LDA.b #$00 ; LINKSTATE 00
#_07904A: STA.b $5D

#_07904C: STZ.w $0372

#_07904F: BIT.b $3A
#_079051: BMI .b_held

#_079053: STZ.b $50

.b_held
#_079055: BRL .exit

.holding_a
#_079058: LDY.b #$00
#_07905A: LDA.b #$1E ; ANCILLA 1E
#_07905C: JSL AncillaAdd_DashDust_charging

#_079060: STZ.b $30
#_079062: STZ.b $31

#_079064: LDA.b #$40
#_079066: STA.w $02F1

#_079069: LDA.b #$10
#_07906B: STA.b $5E

#_07906D: LDA.b $3A
#_07906F: AND.b #$80
#_079071: BNE .cant_turn

#_079073: LDA.b $6C
#_079075: BNE .cant_turn

#_079077: LDA.b $F0
#_079079: AND.b #$0F
#_07907B: BNE .dpad_held

.cant_turn
#_07907D: LDA.b $2F
#_07907F: LSR A
#_079080: TAX

#_079081: LDA.w WalkDirectionFlags,X

.dpad_held
#_079084: STA.b $26
#_079086: STA.b $67
#_079088: STA.w $0340

#_07908B: STZ.b $6B

;---------------------------------------------------------------------------------------------------

#_07908D: JSL HandleLinkAnimation_FullLongEntry

#_079091: LDA.b $20
#_079093: STA.b $00
#_079095: STA.b $3E

#_079097: LDA.b $22
#_079099: STA.b $01
#_07909B: STA.b $3F

#_07909D: LDA.b $21
#_07909F: STA.b $02
#_0790A1: STA.b $40

#_0790A3: LDA.b $23
#_0790A5: STA.b $03
#_0790A7: STA.b $41

#_0790A9: JSR HandleLinkMovingFloor
#_0790AC: JSR ApplyConveyorToLink

#_0790AF: LDA.w $02F5
#_0790B2: BEQ .not_on_somaria_platform

#_0790B4: JSL HandleLinkVelocityAndSandDrag_long

.not_on_somaria_platform
#_0790B8: LDA.b $20
#_0790BA: SEC
#_0790BB: SBC.b $3E
#_0790BD: STA.b $30

#_0790BF: LDA.b $22
#_0790C1: SEC
#_0790C2: SBC.b $3F
#_0790C4: STA.b $31

#_0790C6: JSR HandleLinkCardinalCollision
#_0790C9: JSR HandleIndoorCameraAndDoors

#_0790CC: BRL .exit

;---------------------------------------------------------------------------------------------------

.continue_from_follower
#_0790CF: LDA.b $2E
#_0790D1: CMP.b #$06
#_0790D3: BCC .dont_reset_anim_step

#_0790D5: STZ.b $2E

.dont_reset_anim_step
#_0790D7: DEC.w $02F1

#_0790DA: LDA.w $02F1
#_0790DD: CMP.b #$20
#_0790DF: BCS .dont_reset_anim_timer

#_0790E1: LDA.b #$20
#_0790E3: STA.w $02F1

.dont_reset_anim_timer
#_0790E6: LDY.b #$00
#_0790E8: LDA.b #$1E ; ANCILLA 1E
#_0790EA: JSL AncillaAdd_DashDust

#_0790EE: STZ.b $79

#_0790F0: LDA.l $7EF359
#_0790F4: INC A
#_0790F5: AND.b #$FE
#_0790F7: BEQ .no_sword

#_0790F9: LDY.b #$07
#_0790FB: JSR TileDetect_MainHandler

.no_sword
#_0790FE: LDA.l $7EF3C5
#_079102: BEQ .game_state_0

#_079104: LDA.b #$80
#_079106: TSB.b $3A

#_079108: LDA.b #$09
#_07910A: STA.b $3C

;---------------------------------------------------------------------------------------------------

.game_state_0
#_07910C: STZ.b $46

#_07910E: LDA.b $2F
#_079110: LSR A
#_079111: TAX

#_079112: LDA.w WalkDirectionFlags,X
#_079115: STA.b $00

#_079117: LDA.b $F0
#_079119: AND.b #$0F
#_07911B: BEQ .no_direction_change

#_07911D: CMP.b $00
#_07911F: BEQ .no_direction_change

#_079121: LDA.b #$12 ; LINKSTATE 12
#_079123: STA.b $5D

#_079125: LDA.b $3A
#_079127: AND.b #$7F
#_079129: STA.b $3A

#_07912B: STZ.b $3C
#_07912D: STZ.b $3D

#_07912F: BRL LinkState_ExitingDash

;---------------------------------------------------------------------------------------------------

.no_direction_change
#_079132: LDA.b $49
#_079134: AND.b #$0F
#_079136: BNE .dont_turn

#_079138: LDA.b $2F
#_07913A: LSR A
#_07913B: TAX

#_07913C: LDA.w WalkDirectionFlags,X

.dont_turn
#_07913F: STA.b $67
#_079141: STA.b $26

#_079143: JSR HandleLinkDiagonalCollision
#_079146: JSL HandleLinkVelocity

#_07914A: JSR HandleLinkCardinalCollision
#_07914D: JSL HandleLinkAnimation_FullLongEntry

#_079151: STZ.w $0302

#_079154: JSR HandleIndoorCameraAndDoors

.exit
#_079157: RTS

;===================================================================================================

LinkState_ExitingDash:
#_079158: JSR CacheCameraPropertiesIfOutdoors

#_07915B: LDA.b $F0
#_07915D: AND.b #$0F
#_07915F: BNE .dpad_pressed

#_079161: LDA.w $0374
#_079164: CMP.b #$10
#_079166: BCC .low_dash_timer

.dpad_pressed
#_079168: STZ.w $0374
#_07916B: STZ.b $5E

#_07916D: LDA.b #$00 ; LINKSTATE 00
#_07916F: STA.b $5D

#_079171: STZ.w $0372
#_079174: STZ.w $032B

#_079177: LDA.b $3C
#_079179: CMP.b #$09
#_07917B: BCS .finish_up

#_07917D: STZ.b $50

#_07917F: BRA .finish_up

;---------------------------------------------------------------------------------------------------

.low_dash_timer
#_079181: LDA.w $0374
#_079184: CLC
#_079185: ADC.b #$01
#_079187: STA.w $0374

;---------------------------------------------------------------------------------------------------

.finish_up
#_07918A: JSL HandleLinkAnimation_FullLongEntry

#_07918E: RTS

;===================================================================================================

CancelDash:
#_07918F: LDA.w $0372
#_079192: BEQ .exit

#_079194: PHX

#_079195: LDX.b #$04

.next_ancilla
#_079197: LDA.w $0C4A,X
#_07919A: CMP.b #$1E ; ANCILLA 1E
#_07919C: BNE .dont_delete

#_07919E: STZ.w $0C4A,X

.dont_delete
#_0791A1: DEX
#_0791A2: BPL .next_ancilla

#_0791A4: PLX

#_0791A5: STZ.w $0374
#_0791A8: STZ.b $5E
#_0791AA: STZ.w $0372
#_0791AD: STZ.b $50
#_0791AF: STZ.w $032B

.exit
#_0791B2: RTS

;===================================================================================================

CancelDash_long:
#_0791B3: JSR CancelDash

#_0791B6: RTL

;===================================================================================================

RepelBonkSpeedY:
#_0791B7: db $18, $E8, $00, $00

RepelBonkSpeedX:
#_0791BB: db $00, $00, $18, $E8

TileReboundAFlaggingY:
#_0791BF: db $01, $00, $00, $00

TileReboundAFlaggingX:
#_0791C3: db $00, $00, $01, $00

;===================================================================================================

IceRepelAccelY:
#_0791C7: dw $0180, $0180, $0000, $0000
#_0791CF: dw $0100, $0100, $0000, $0000

IceRepelAccelX:
#_0791D7: dw $0000, $0000, $0180, $0180
#_0791DF: dw $0000, $0000, $0100, $0100

;===================================================================================================

RepelDirectionMasks:
#_0791E7: db $08, $04, $02, $01

;---------------------------------------------------------------------------------------------------

RepelDash:
#_0791EB: LDA.w $0372
#_0791EE: BEQ .not_even_dashing

#_0791F0: LDA.w $02F1
#_0791F3: CMP.b #$40
#_0791F5: BNE .continue

.not_even_dashing
#_0791F7: BRL .exit

;---------------------------------------------------------------------------------------------------

.continue
#_0791FA: JSL ResetSwimmingState

#_0791FE: LDY.b #$01
#_079200: LDA.b #$1D ; ANCILLA 1D
#_079202: JSL AncillaAdd_DashTremor

#_079206: JSL LetsGetReadyToRumble

#_07920A: LDA.w $012F
#_07920D: AND.b #$3F
#_07920F: CMP.b #$1B ; SFX3.1B
#_079211: BEQ LinkApplyTileRebound

#_079213: CMP.b #$32 ; SFX3.32
#_079215: BEQ LinkApplyTileRebound

#_079217: LDA.b #$03 ; SFX3.03
#_079219: JSR PlayLinkSFX3Panned

;---------------------------------------------------------------------------------------------------

#LinkApplyTileRebound:
#_07921C: LDX.b $66

#_07921E: LDA.w RepelBonkSpeedY,X
#_079221: STA.b $27

#_079223: LDA.w RepelBonkSpeedX,X
#_079226: STA.b $28

#_079228: LDA.b #$18
#_07922A: STA.b $46

#_07922C: LDA.b #$24
#_07922E: STA.b $29
#_079230: STA.w $02C7

#_079233: LDA.w $034A
#_079236: BEQ .not_on_any_ice

;---------------------------------------------------------------------------------------------------

#_079238: LDA.w RepelDirectionMasks,X
#_07923B: STA.w $0340
#_07923E: STA.b $67

#_079240: LDA.w TileReboundAFlaggingY,X
#_079243: STA.w $0338

#_079246: LDA.w TileReboundAFlaggingX,X
#_079249: STA.w $033A

#_07924C: PHX

#_07924D: LDA.w $034A
#_079250: DEC A
#_079251: ASL A
#_079252: ASL A
#_079253: ASL A
#_079254: STA.b $08

#_079256: TXA
#_079257: ASL A
#_079258: CLC
#_079259: ADC.b $08
#_07925B: TAX

#_07925C: REP #$20

#_07925E: LDA.w IceRepelAccelY,X
#_079261: STA.w $033C

#_079264: LDA.w IceRepelAccelX,X
#_079267: STA.w $033E

#_07926A: SEP #$20

#_07926C: PLX

;---------------------------------------------------------------------------------------------------

.not_on_any_ice
#_07926D: LDA.b #$01
#_07926F: STA.b $4D
#_079271: STA.w $02F8

#_079274: STZ.b $74
#_079276: STZ.w $0360

#_079279: STZ.b $5E
#_07927B: STZ.b $50
#_07927D: STZ.b $6B

#_07927F: TXA
#_079280: AND.b #$02
#_079282: BNE .dont_reset_x

#_079284: STZ.b $31

#_079286: BRA .exit

.dont_reset_x
#_079288: STZ.b $30

.exit
#_07928A: RTS

;===================================================================================================

RepelDash_long:
#_07928B: PHB
#_07928C: PHK
#_07928D: PLB

#_07928E: PHX

#_07928F: LDA.b $2F
#_079291: LSR A
#_079292: STA.b $66

#_079294: JSR RepelDash

#_079297: PLX

#_079298: PLB

#_079299: RTL

;===================================================================================================

FlagWalkDirections:
#_07929A: STZ.b $67

#_07929C: LDY.b #$00

#_07929E: LDA.b $27
#_0792A0: BEQ .zero_y
#_0792A2: BMI .negative_y

#_0792A4: LDY.b #$01

.negative_y
#_0792A6: JSR .flag_one

;---------------------------------------------------------------------------------------------------

.zero_y
#_0792A9: LDY.b #$02

#_0792AB: LDA.b $28
#_0792AD: BEQ .exit
#_0792AF: BMI .flag_one

#_0792B1: LDY.b #$03

;---------------------------------------------------------------------------------------------------

.flag_one
#_0792B3: LDA.w RepelDirectionMasks,Y
#_0792B6: TSB.b $67

.exit
#_0792B8: RTS

;===================================================================================================

PitFallAnimationFlags:
#_0792B9: db $0A, $09, $06, $05, $08, $04, $02, $01

PitFallDirectionFlags:
#_0792C1: db $05, $06, $09, $0A, $04, $08, $01, $02

PitFallDetectionFlags:
#_0792C9: db $0C, $03, $0A, $05

;===================================================================================================

LinkState_Pits:
#_0792CD: STZ.b $67

#_0792CF: LDA.w $0302
#_0792D2: BEQ .no_wall_touch

; TODO is this possible to reach?
#_0792D4: INC.w $02CA

#_0792D7: LDA.w $02CA
#_0792DA: CMP.b #$20
#_0792DC: BNE .no_wall_touch

#_0792DE: LDA.b #$1F
#_0792E0: STA.w $02CA

#_0792E3: BRA .check_for_pits

.no_wall_touch
#_0792E5: LDA.w $0372
#_0792E8: BEQ .not_dashing_a

#_0792EA: LDA.w $0374
#_0792ED: BEQ .not_charging_dash

#_0792EF: BRL LinkState_Dashing

.not_charging_dash
; check for udlr
#_0792F2: LDA.b $F0
#_0792F4: AND.b #$0F
#_0792F6: BEQ .check_for_pits

#_0792F8: AND.b $67
#_0792FA: BNE .check_for_pits

#_0792FC: JSR CancelDash

.not_dashing_a
#_0792FF: LDA.b $4D
#_079301: CMP.b #$01
#_079303: BEQ .check_for_pits

; cache udlr
#_079305: LDA.b $F0
#_079307: AND.b #$0F
#_079309: STA.b $67

;---------------------------------------------------------------------------------------------------

.check_for_pits
#_07930B: LDY.b #$04
#_07930D: JSR TileDetect_MainHandler

#_079310: LDA.b $59
#_079312: AND.b #$01
#_079314: BNE HandleLinkFallingInPit

#_079316: LDA.w $0372
#_079319: BEQ .not_dashing_b

#_07931B: BRL LinkState_Dashing

.not_dashing_b
#_07931E: STZ.b $5E

#_079320: JSR CancelDash

#_079323: LDA.b $3A
#_079325: AND.b #$80
#_079327: BNE .holding_b

#_079329: LDA.b $50
#_07932B: AND.b #$FE
#_07932D: STA.b $50

.holding_b
#_07932F: STZ.b $5B

#_079331: LDY.b #$00 ; LINKSTATE 00

#_079333: LDA.w $02E0
#_079336: BEQ .set_state_and_continue

#_079338: LDY.b #$17 ; LINKSTATE 17

#_07933A: LDA.l $7EF357
#_07933E: BEQ .set_state_and_continue

#_079340: LDY.b #$1C ; LINKSTATE 1C

.set_state_and_continue
#_079342: STY.b $5D

#_079344: CPY.b #$17 ; LINKSTATE 17
#_079346: BEQ .normal_bunny

#_079348: CPY.b #$1C ; LINKSTATE 1C
#_07934A: BEQ .temp_bunny

#_07934C: BRL LinkState_Default

.normal_bunny
#_07934F: BRL LinkState_Bunny

.temp_bunny
#_079352: BRL LinkState_TemporaryBunny

;===================================================================================================

HandleLinkFallingInPit:
#_079355: JSR TileDetect_BigArea

#_079358: LDA.b #$04
#_07935A: STA.b $5E

#_07935C: LDA.b $59
#_07935E: AND.b #$0F
#_079360: BNE .prepare_to_fall

#_079362: STZ.b $5B
#_079364: STZ.b $5E

#_079366: LDY.b #$00 ; LINKSTATE 00

#_079368: LDA.w $02E0
#_07936B: BEQ .set_state

#_07936D: LDY.b #$17 ; LINKSTATE 17

#_07936F: LDA.l $7EF357
#_079373: BEQ .set_state

#_079375: LDY.b #$1C ; LINKSTATE 1C

.set_state
#_079377: STY.b $5D

#_079379: JSR CancelDash

#_07937C: LDA.b $3A
#_07937E: AND.b #$80
#_079380: BNE .sword_not_out

#_079382: LDA.b $50
#_079384: AND.b #$FE
#_079386: STA.b $50

.sword_not_out
#_079388: BRL EXIT_079420

;---------------------------------------------------------------------------------------------------

.prepare_to_fall
#_07938B: CMP.b #$0F
#_07938D: BNE .dont_fall_just_yet

#_07938F: LDA.b $5B
#_079391: CMP.b #$02
#_079393: BEQ .already_falling

#_079395: LDA.l $7EF357
#_079399: BEQ .no_pearl

#_07939B: STZ.w $03F7

#_07939E: STZ.b $56

#_0793A0: STZ.w $02E0

#_0793A3: STZ.w $03F5
#_0793A6: STZ.w $03F6

.no_pearl
#_0793A9: STZ.b $67
#_0793AB: STZ.b $00

#_0793AD: LDA.b #$02
#_0793AF: STA.b $5B

#_0793B1: LDA.b #$01
#_0793B3: STA.w $037B

#_0793B6: STZ.b $3A
#_0793B8: STZ.b $3C

#_0793BA: STZ.w $0301
#_0793BD: STZ.w $037A

#_0793C0: STZ.b $46
#_0793C2: STZ.b $4D

#_0793C4: LDA.b #$1F ; SFX3.1F
#_0793C6: JSR PlayLinkSFX3Panned

.already_falling
#_0793C9: BRA DetermineConsequencesOfFalling

;---------------------------------------------------------------------------------------------------

.dont_fall_just_yet
#_0793CB: LDX.b #$03

.check_next_flag
#_0793CD: LDA.b $59
#_0793CF: AND.b #$0F
#_0793D1: CMP.w PitFallDetectionFlags,X
#_0793D4: BNE .skip

#_0793D6: TXA
#_0793D7: CLC
#_0793D8: ADC.b #$04
#_0793DA: TAX

#_0793DB: BRA .set_flag_index

.skip
#_0793DD: DEX
#_0793DE: BPL .check_next_flag

;---------------------------------------------------------------------------------------------------

#_0793E0: LDX.b #$03

#_0793E2: LDA.b $59

.shift
#_0793E4: LSR A
#_0793E5: BCS .set_flag_index

#_0793E7: DEX
#_0793E8: BPL .shift

.set_flag_index
#_0793EA: STX.w $02C9

#_0793ED: LDA.b $67
#_0793EF: AND.w PitFallDirectionFlags,X
#_0793F2: BEQ .not_very_slippery

#_0793F4: LDA.b $67
#_0793F6: STA.b $26

#_0793F8: LDA.b #$06
#_0793FA: STA.b $5E

#_0793FC: BRA .continue

.not_very_slippery
#_0793FE: LDA.b $67
#_079400: STA.b $00

#_079402: LDX.w $02C9

#_079405: LDA.w PitFallAnimationFlags,X
#_079408: TSB.b $67

#_07940A: LDA.b $00
#_07940C: BEQ .dont_animate

;---------------------------------------------------------------------------------------------------

.continue
#_07940E: JSL HandleLinkAnimation_FullLongEntry

.dont_animate
#_079412: JSR HandleLinkDiagonalCollision
#_079415: JSL HandleLinkVelocity
#_079419: JSR HandleLinkCardinalCollision
#_07941C: JSL ApplyLinksMovementToCamera

;---------------------------------------------------------------------------------------------------

#EXIT_079420:
#_079420: RTS

;===================================================================================================

DetermineConsequencesOfFalling:
#_079421: STZ.b $50
#_079423: STZ.b $46

#_079425: STZ.b $24
#_079427: STZ.b $25
#_079429: STZ.b $29

#_07942B: STZ.b $4D

#_07942D: STZ.w $0373
#_079430: STZ.w $02E1

#_079433: JSR ForciblyUnequipCape_quietly

#_079436: DEC.b $5C
#_079438: BPL EXIT_079420

#_07943A: INC.b $5A

#_07943C: LDX.b $5A

#_07943E: LDA.b #$09
#_079440: STA.b $5C

#_079442: LDA.l $7EF3CC
#_079446: CMP.b #$0D ; FOLLOWER 0D
#_079448: BEQ .no_hud_numbers

#_07944A: CPX.b #$01
#_07944C: BNE .no_hud_numbers

#_07944E: STX.w $02F9

;---------------------------------------------------------------------------------------------------

.no_hud_numbers
#_079451: CPX.b #$06
#_079453: BNE EXIT_079420

#_079455: JSR CancelDash

#_079458: LDY.b #$07
#_07945A: STY.b $11

#_07945C: LDA.b #$06
#_07945E: STA.b $5A

#_079460: LDA.b #$03
#_079462: STA.b $5B

#_079464: LDA.b #$0C
#_079466: STA.b $4B

#_079468: LDA.b #$10
#_07946A: STA.b $57

#_07946C: LDA.b $20
#_07946E: SEC
#_07946F: SBC.b $E8
#_079471: STA.b $00

#_079473: STZ.b $01

#_079475: STZ.w $0308
#_079478: STZ.w $0309
#_07947B: STZ.w $0376
#_07947E: STZ.w $030B

;---------------------------------------------------------------------------------------------------

#_079481: REP #$30

#_079483: LDA.b $1B
#_079485: AND.w #$00FF
#_079488: BEQ .overworld_pit

#_07948A: LDA.b $00
#_07948C: PHA

#_07948D: SEP #$30

#_07948F: LDA.b $A0
#_079491: STA.b $A2

#_079493: JSL FullyUpdateRoomFlags

#_079497: REP #$30

#_079499: PLA
#_07949A: STA.b $00

#_07949C: LDX.w #$0070

#_07949F: LDA.b $A0

.check_next_room
#_0794A1: CMP.l RoomsWithPitDamage,X
#_0794A5: BEQ UnderworldPitDoDamage

#_0794A7: DEX
#_0794A8: DEX
#_0794A9: BPL .check_next_room

;---------------------------------------------------------------------------------------------------

.overworld_pit
#_0794AB: SEP #$20

#_0794AD: LDA.b $A0
#_0794AF: STA.b $A2

#_0794B1: LDA.l $7EC000
#_0794B5: STA.b $A0

#_0794B7: REP #$20

#_0794B9: LDA.w #$0010
#_0794BC: CLC
#_0794BD: ADC.b $00
#_0794BF: STA.b $00

#_0794C1: LDA.b $20
#_0794C3: STA.b $51

#_0794C5: SEC
#_0794C6: SBC.b $00
#_0794C8: STA.b $20

#_0794CA: SEP #$30

#_0794CC: LDA.b $1B
#_0794CE: BNE HandleLayerOfDestination

#_0794D0: LDA.b $8A
#_0794D2: CMP.b #$05 ; OW 05
#_0794D4: BNE .overworld_pit_transition

#_0794D6: JSL TakeDamageFromPit

#_0794DA: RTS

;---------------------------------------------------------------------------------------------------

.overworld_pit_transition
#_0794DB: JSL GetPitEntranceDestination

#_0794DF: LDA.b #$11
#_0794E1: STA.b $10

#_0794E3: STZ.b $11
#_0794E5: STZ.b $B0

#_0794E7: RTS

;===================================================================================================

HandleLayerOfDestination:
#_0794E8: LDX.w $063C

#_0794EB: LDA.l LayerOfDestination_for_0476,X
#_0794EF: STA.w $0476

#_0794F2: LDA.l LayerOfDestination_for_EE,X
#_0794F6: STA.b $EE

#_0794F8: RTS

;===================================================================================================

UnderworldPitDoDamage:
#_0794F9: SEP #$30

#_0794FB: LDA.b #$14
#_0794FD: STA.b $11

#_0794FF: LDA.l $7EF36D
#_079503: SEC
#_079504: SBC.b #$08
#_079506: STA.l $7EF36D

#_07950A: CMP.b #$A8
#_07950C: BCC .exit

#_07950E: LDA.b #$00
#_079510: STA.l $7EF36D

.exit
#_079514: RTS

;===================================================================================================

UNREACHABLE_079515:
#_079515: db $21, $24

;===================================================================================================

HandleUnderworldLandingFromPit:
#_079517: PHB
#_079518: PHK
#_079519: PLB

#_07951A: JSL DrawLink

#_07951E: REP #$20

#_079520: LDA.b $22
#_079522: STA.w $0FC2

#_079525: LDA.b $20
#_079527: STA.w $0FC4

#_07952A: SEP #$20

#_07952C: LDA.b $11
#_07952E: CMP.b #$07
#_079530: BNE .dont_make_link_visible

#_079532: STZ.b $4B

.dont_make_link_visible
#_079534: LDA.b $1A
#_079536: AND.b #$03
#_079538: BNE .dont_update_pose

#_07953A: INC.b $5A

#_07953C: LDA.b $5A
#_07953E: CMP.b #$0A
#_079540: BNE .dont_update_pose

#_079542: LDA.b #$06
#_079544: STA.b $5A

.dont_update_pose
#_079546: LDA.b #$04
#_079548: STA.b $67

#_07954A: JSL HandleLinkVelocity

#_07954E: REP #$20

#_079550: LDA.b $20
#_079552: BPL .compare_target_coord

#_079554: LDA.b $51
#_079556: BMI .compare_target_coord

#_079558: LDA.b $20
#_07955A: EOR.w #$FFFF
#_07955D: INC A
#_07955E: CLC
#_07955F: ADC.b $51
#_079561: BMI .the_eagle_has_landed

#_079563: BRL .exit

.compare_target_coord
#_079566: LDA.b $51
#_079568: CMP.b $20
#_07956A: BCC .the_eagle_has_landed

#_07956C: BRL .exit

;---------------------------------------------------------------------------------------------------

.the_eagle_has_landed
#_07956F: LDA.b $51
#_079571: STA.b $20

#_079573: SEP #$20

#_079575: STZ.b $2E

#_079577: STZ.b $57

#_079579: STZ.b $5A
#_07957B: STZ.b $5B

#_07957D: STZ.b $5E

#_07957F: STZ.b $B0
#_079581: STZ.b $11

#_079583: STZ.w $037B

#_079586: LDA.l $7EF3CC
#_07958A: BEQ .dont_reinitialize_follower

; Unused old man
#_07958C: CMP.b #$03 ; FOLLOWER 03
#_07958E: BEQ .dont_reinitialize_follower

#_079590: STZ.w $02F9

; Delete super bomb follower
#_079593: CMP.b #$0D ; FOLLOWER 0D
#_079595: BNE .dont_delete_follower

#_079597: LDA.b #$00
#_079599: STA.l $7EF3CC
#_07959D: STA.w $04B4
#_0795A0: STA.w $04B5
#_0795A3: STA.l $7EF3D3

#_0795A7: BRA .dont_reinitialize_follower

.dont_delete_follower
#_0795A9: JSL InitializeFollower

;---------------------------------------------------------------------------------------------------

.dont_reinitialize_follower
#_0795AD: LDY.b #$00

#_0795AF: JSR TileDetect_MainHandler

#_0795B2: LDA.w $0359
#_0795B5: AND.b #$01
#_0795B7: BEQ .not_shallow_water

#_0795B9: LDA.b #$24 ; SFX2.24
#_0795BB: JSR PlayLinkSFX2Panned

.not_shallow_water
#_0795BE: JSR TileDetect_BigArea

#_0795C1: LDA.w $012E
#_0795C4: AND.b #$3F
#_0795C6: CMP.b #$24 ; SFX2.24
#_0795C8: BEQ .already_made_a_sound

#_0795CA: LDA.b #$21 ; SFX2.21
#_0795CC: JSR PlayLinkSFX2Panned

.already_made_a_sound
#_0795CF: LDA.b $AD
#_0795D1: CMP.b #$02
#_0795D3: BNE .dont_flag_masks

#_0795D5: LDA.w $034C
#_0795D8: AND.b #$0F
#_0795DA: BEQ .dont_flag_masks

#_0795DC: LDA.b #$03
#_0795DE: STA.w $0322

.dont_flag_masks
#_0795E1: LDA.w $0341
#_0795E4: AND.b #$0F
#_0795E6: CMP.b #$0F
#_0795E8: BNE .didnt_find_water

; !BUG where's the flippers check?
#_0795EA: LDA.b #$01
#_0795EC: STA.w $0345

#_0795EF: LDA.b $26
#_0795F1: STA.w $0340

#_0795F4: JSL ResetSwimmingState

#_0795F8: LDA.b #$01
#_0795FA: STA.b $EE

#_0795FC: LDA.b #$15 ; ANCILLA 15
#_0795FE: LDY.b #$00
#_079600: JSL AncillaAdd_Splash

#_079604: LDA.b #$04 ; LINKSTATE 04
#_079606: STA.b $5D

#_079608: JSR ForciblyUnequipCape_quietly

#_07960B: STZ.w $0308
#_07960E: STZ.w $0309
#_079611: STZ.w $0376
#_079614: STZ.b $5E

#_079616: BRA .exit

.didnt_find_water
#_079618: LDA.b $59
#_07961A: AND.b #$0F
#_07961C: BNE .pit

#_07961E: LDA.b #$00 ; LINKSTATE 00
#_079620: STA.b $5D

#_079622: BRA .exit

.pit
#_079624: LDA.b #$01 ; LINKSTATE 01
#_079626: STA.b $5D

;---------------------------------------------------------------------------------------------------

.exit
#_079628: SEP #$20

#_07962A: PLB

#_07962B: RTL

;===================================================================================================

LinkSwimming_anim_offset:
#_07962C: db $02, $00, $01, $00

;===================================================================================================

MaxSwimAcceleration:
#_079630: dw $00F0

;===================================================================================================

LinkState_Swimming:
#_079632: LDA.b $4D
#_079634: BEQ .not_diving

#_079636: LDA.b #$02 ; LINKSTATE 02
#_079638: STA.b $5D
#_07963A: STZ.b $25

#_07963C: JSR ResetAllAcceleration

#_07963F: STZ.w $032A ; swim stroke reset
#_079642: STZ.w $034F

#_079645: LDA.b $50 ; allow direction change
#_079647: AND.b #$FE
#_079649: STA.b $50

#_07964B: BRL LinkState_Recoil

;---------------------------------------------------------------------------------------------------

.not_diving
#_07964E: STZ.b $3A
#_079650: STZ.b $3C
#_079652: STZ.b $3D
#_079654: STZ.b $79

#_079656: STZ.w $0308 ; prevent carrying things
#_079659: STZ.w $0309

#_07965C: LDA.w $033C
#_07965F: ORA.w $033D
#_079662: ORA.w $033E
#_079665: ORA.w $033F
#_079668: BNE .no_accel

#_07966A: LDA.w $032B
#_07966D: CMP.b #$02
#_07966F: BEQ .dont_reset_collision

#_079671: LDA.w $032D
#_079674: CMP.b #$02
#_079676: BEQ .dont_reset_collision

#_079678: JSR ResetAllAcceleration

;---------------------------------------------------------------------------------------------------

.dont_reset_collision
#_07967B: LDA.b $2E
#_07967D: AND.b #$01
#_07967F: STA.b $2E

#_079681: INC.b $2D

#_079683: LDA.b $2D
#_079685: CMP.b #$10
#_079687: BCC .continue

;---------------------------------------------------------------------------------------------------

#_079689: STZ.b $2D
#_07968B: STZ.w $02CC

#_07968E: LDA.b $2E
#_079690: AND.b #$01
#_079692: EOR.b #$01
#_079694: STA.b $2E

#_079696: BRA .continue

;---------------------------------------------------------------------------------------------------

.no_accel
#_079698: INC.b $2D

#_07969A: LDA.b $2D
#_07969C: CMP.b #$08
#_07969E: BCC .continue

#_0796A0: STZ.b $2D

#_0796A2: LDA.b $2E
#_0796A4: INC A
#_0796A5: AND.b #$03
#_0796A7: STA.b $2E

#_0796A9: TAX

#_0796AA: LDA.w LinkSwimming_anim_offset,X
#_0796AD: STA.w $02CC

;---------------------------------------------------------------------------------------------------

.continue
#_0796B0: LDA.w $034F
#_0796B3: BNE .not_stroking

#_0796B5: LDA.w $033C
#_0796B8: ORA.w $033D
#_0796BB: ORA.w $033E
#_0796BE: ORA.w $033F
#_0796C1: BEQ HandleSwimMovement

#_0796C3: LDA.b $F6
#_0796C5: AND.b #$80
#_0796C7: STA.b $00

#_0796C9: LDA.b $F4
#_0796CB: ORA.b $00
#_0796CD: AND.b #$C0
#_0796CF: BEQ HandleSwimMovement

#_0796D1: STA.w $034F

#_0796D4: LDA.b #$25 ; SFX2.25
#_0796D6: JSR PlayLinkSFX2Panned

#_0796D9: LDA.b #$01
#_0796DB: STA.w $032A

#_0796DE: LDA.b #$07
#_0796E0: STA.w $02CB

#_0796E3: JSR HandleSwimAccels

;---------------------------------------------------------------------------------------------------

.not_stroking
#_0796E6: DEC.w $02CB
#_0796E9: BPL HandleSwimMovement

#_0796EB: LDA.b #$07
#_0796ED: STA.w $02CB

; Increment the counter
#_0796F0: INC.w $032A

#_0796F3: LDA.w $032A
#_0796F6: CMP.b #$05
#_0796F8: BNE HandleSwimMovement

; reset stroke
#_0796FA: STZ.w $032A

#_0796FD: LDA.w $034F
#_079700: AND.b #$3F
#_079702: STA.w $034F

;===================================================================================================

HandleSwimMovement:
#_079705: LDA.b $49
#_079707: AND.b #$0F
#_079709: BNE .did_movement

#_07970B: LDA.b $F0
#_07970D: AND.b #$0F
#_07970F: BNE .did_movement

#_079711: STZ.b $30
#_079713: STZ.b $31

#_079715: JSR FlagMaxAccels

#_079718: LDA.w $034A
#_07971B: BEQ .check_if_swimming

#_07971D: LDA.w $0372
#_079720: BEQ .not_dashing

#_079722: LDA.w $0340
#_079725: BRA .did_movement

;---------------------------------------------------------------------------------------------------

.not_dashing
#_079727: LDA.w $033C
#_07972A: ORA.w $033D
#_07972D: ORA.w $033E
#_079730: ORA.w $033F
#_079733: BNE .finish_up

#_079735: STZ.b $48

#_079737: JSL ResetSwimmingState

#_07973B: BRA .finish_up

;---------------------------------------------------------------------------------------------------

.check_if_swimming
#_07973D: LDA.b $5D
#_07973F: CMP.b #$04 ; LINKSTATE 04
#_079741: BEQ .finish_up

#_079743: STZ.b $2E

#_079745: BRA .finish_up

;---------------------------------------------------------------------------------------------------

.did_movement
#_079747: CMP.w $0340
#_07974A: BEQ .dont_reset

#_07974C: STZ.b $2A
#_07974E: STZ.b $2B
#_079750: STZ.b $6B
#_079752: STZ.b $48

.dont_reset
#_079754: STA.w $0340

#_079757: JSR SetIceMaxAccel
#_07975A: JSR SetMomentum
#_07975D: JSR SetMaxAccel

;---------------------------------------------------------------------------------------------------

.finish_up
#_079760: JSR HandleLinkDiagonalCollision
#_079763: JSL HandleLinkVelocity
#_079767: JSR HandleLinkCardinalCollision
#_07976A: JSL HandleLinkAnimation_FullLongEntry

#_07976E: STZ.w $0302

#_079771: JSR HandleIndoorCameraAndDoors

#_079774: RTS

;===================================================================================================
; TODO RENAME
FlagMaxAccels:
#_079775: REP #$20

; check for ice
#_079777: LDA.w $034A
#_07977A: AND.w #$00FF
#_07977D: BEQ .exit

#_07977F: LDX.b #$02

.next
#_079781: LDA.w $033C,X
#_079784: BEQ .to_next

#_079786: STA.w $0334,X

#_079789: LDA.w #$0001
#_07978C: STA.w $032B,X

.to_next
#_07978F: DEX
#_079790: DEX
#_079791: BPL .next

.exit
#_079793: SEP #$20

#_079795: RTS

;===================================================================================================

SetIceMaxAccel:
#_079796: REP #$20

#_079798: LDA.w $034A
#_07979B: AND.w #$00FF
#_07979E: BEQ .exit

#_0797A0: LDX.b #$02

.next
#_0797A2: LDA.w #$0180
#_0797A5: STA.w $0334,X

#_0797A8: DEX
#_0797A9: DEX
#_0797AA: BPL .next

.exit
#_0797AC: SEP #$20

#_0797AE: RTS

;===================================================================================================

pool SetMomentum

.direction ; Unused
#_0797AF: db $08, $04, $02, $01

.momentum
#_0797B3: dw $0020
#_0797B5: dw $0008

pool off

;---------------------------------------------------------------------------------------------------

SetMomentum:
#_0797B7: SEP #$20

#_0797B9: LDA.b $F0
#_0797BB: AND.b #$0F
#_0797BD: STA.b $00

#_0797BF: STZ.b $01

#_0797C1: REP #$30

#_0797C3: LDA.w #$0003
#_0797C6: STA.b $02

#_0797C8: LDX.w #$0002
#_0797CB: STX.b $04

;---------------------------------------------------------------------------------------------------

.next
#_0797CD: LDY.w #$0000

#_0797D0: LDA.b $00
#_0797D2: AND.b $02
#_0797D4: BEQ .skip

#_0797D6: AND.b $04
#_0797D8: BNE .pressed_left

#_0797DA: LDY.w #$0001

.pressed_left
#_0797DD: LDA.w #$0020
#_0797E0: STA.w $0326,X

#_0797E3: LDA.w $034A
#_0797E6: AND.w #$00FF
#_0797E9: BEQ .not_on_ice

#_0797EB: PHY

#_0797EC: DEC A
#_0797ED: ASL A
#_0797EE: TAY

#_0797EF: LDA.w .momentum,Y
#_0797F2: STA.w $0326,X

#_0797F5: PLY

.not_on_ice
#_0797F6: LDA.w $0340
#_0797F9: ORA.b $67
#_0797FB: AND.b $02
#_0797FD: CMP.b $02
#_0797FF: BNE .did_a_left_press

#_079801: LDA.w #$0002
#_079804: STA.w $032B,X

#_079807: BRA .continue

.did_a_left_press
#_079809: TYA
#_07980A: STA.w $0338,X

#_07980D: STZ.w $032B,X

.continue
#_079810: LDA.w $0334,X
#_079813: BNE .skip

#_079815: LDA.w MaxSwimAcceleration
#_079818: STA.w $0334,X

.skip
#_07981B: ASL.b $02
#_07981D: ASL.b $02

#_07981F: ASL.b $04
#_079821: ASL.b $04

#_079823: DEX
#_079824: DEX
#_079825: BPL .next

#_079827: SEP #$30

#_079829: RTS

;===================================================================================================

ResetSwimmingState:
#_07982A: PHB
#_07982B: PHK
#_07982C: PLB

#_07982D: STZ.w $02CB
#_079830: STZ.w $034F
#_079833: STZ.w $032A

#_079836: JSR ResetAllAcceleration

#_079839: PLB

#_07983A: RTL

;===================================================================================================

ResetStateAfterDamagingPit:
#_07983B: PHB
#_07983C: PHK
#_07983D: PLB

#_07983E: JSL ResetSwimmingState

#_079842: LDY.b #$00 ; LINKSTATE 00

#_079844: LDA.b $56
#_079846: BEQ .dont_bunny

#_079848: LDA.l $7EF357
#_07984C: BNE .dont_bunny

#_07984E: LDY.b #$17 ; LINKSTATE 17

.dont_bunny
#_079850: STY.b $5D

#_079852: LDA.w $0340
#_079855: STA.b $26

#_079857: STZ.w $0345
#_07985A: STZ.w $037B

#_07985D: STZ.b $5A
#_07985F: STZ.b $5B

#_079861: PLB

#_079862: RTL

;===================================================================================================
; Resets a bunch of swimming properties
;===================================================================================================
ResetAllAcceleration:
#_079863: REP #$20

#_079865: STZ.w $032F
#_079868: STZ.w $0331

#_07986B: STZ.w $0326
#_07986E: STZ.w $0328

#_079871: STZ.w $032B
#_079874: STZ.w $032D

#_079877: STZ.w $033C
#_07987A: STZ.w $033E

#_07987D: STZ.w $0334
#_079880: STZ.w $0336

#_079883: SEP #$20

#_079885: RTS

;===================================================================================================

pool HandleSwimAccels

.max_speeds
#_079886: dw $0080, $00A0, $00C0, $00E0
#_07988E: dw $0100, $0120, $0140, $0160
#_079896: dw $0180

pool off

;---------------------------------------------------------------------------------------------------

HandleSwimAccels:
#_079898: REP #$30

#_07989A: LDX.w #$0002

#_07989D: LDA.w #$0003
#_0798A0: STA.b $02

;---------------------------------------------------------------------------------------------------

.next
#_0798A2: LDA.b $F0
#_0798A4: AND.b $02
#_0798A6: BEQ .next_axis

#_0798A8: LDA.w $033C,X
#_0798AB: BEQ .check_max

#_0798AD: LDA.w $0334,X
#_0798B0: CMP.w #$0180
#_0798B3: BCC .check_max

#_0798B5: LDY.w #$0000

.check_next
#_0798B8: LDA.w .max_speeds,Y
#_0798BB: CMP.w $033C,X
#_0798BE: BCS .set

#_0798C0: INY
#_0798C1: INY
#_0798C2: CPY.w #$0012
#_0798C5: BNE .check_next

#_0798C7: BRA .set

.check_max
#_0798C9: LDA.w $0334,X
#_0798CC: BEQ .no_max

#_0798CE: CLC
#_0798CF: ADC.w #$00A0
#_0798D2: CMP.w #$0180
#_0798D5: BCC .set

#_0798D7: LDA.w #$0180
#_0798DA: BRA .set

.no_max
#_0798DC: LDA.w #$0001
#_0798DF: STA.w $033C,X

#_0798E2: LDA.w MaxSwimAcceleration

.set
#_0798E5: STA.w $0334,X

.next_axis
#_0798E8: ASL.b $02
#_0798EA: ASL.b $02

#_0798EC: DEX
#_0798ED: DEX
#_0798EE: BPL .next

#_0798F0: SEP #$30

#_0798F2: RTS

;===================================================================================================

SetMaxAccel:
#_0798F3: REP #$30

#_0798F5: LDA.w $034A
#_0798F8: AND.w #$00FF
#_0798FB: BNE .exit

#_0798FD: LDA.w $034F
#_079900: AND.w #$00FF
#_079903: BNE .exit

;---------------------------------------------------------------------------------------------------

#_079905: LDX.w #$0002

#_079908: LDA.w #$0003
#_07990B: STA.b $02

.next
#_07990D: LDA.b $F0
#_07990F: AND.b $02
#_079911: BEQ .set

#_079913: LDA.w $032B,X
#_079916: CMP.w #$0002
#_079919: BEQ .set

#_07991B: LDA.w $032F,X
#_07991E: BNE .reset

#_079920: STZ.w $032F,X

#_079923: LDA.w $033C,X
#_079926: CMP.w MaxSwimAcceleration
#_079929: BCC .to_next

#_07992B: CMP.w $0334,X
#_07992E: BEQ .reset
#_079930: BCC .to_next

.reset
#_079932: STZ.w $032B,X

#_079935: LDA.w $033C,X
#_079938: CMP.w MaxSwimAcceleration
#_07993B: BCC .set

#_07993D: LDA.w #$0001
#_079940: STA.w $032B,X
#_079943: STA.w $032F,X

#_079946: BRA .to_next

.set
#_079948: LDA.w MaxSwimAcceleration
#_07994B: STA.w $0334,X
#_07994E: STZ.w $032F,X

.to_next
#_079951: ASL.b $02
#_079953: ASL.b $02

#_079955: DEX
#_079956: DEX
#_079957: BPL .next

.exit
#_079959: SEP #$30

#_07995B: RTS

;===================================================================================================

LinkState_Zapped:
#_07995C: JSR CacheCameraPropertiesIfOutdoors
#_07995F: JSL HandleZapMosaic

#_079963: DEC.b $3D
#_079965: BPL LinkState_ShowingOffItem

#_079967: LDA.b #$02
#_079969: STA.b $3D

#_07996B: LDA.w $0300
#_07996E: INC A
#_07996F: STA.w $0300

#_079972: AND.b #$01
#_079974: BEQ .normal_palette

#_079976: JSL RefreshEquipmentPalettes_zap
#_07997A: BRA .continue

.normal_palette
#_07997C: JSL RefreshEquipmentPalettes_sword_and_mail

.continue
#_079980: LDA.w $0300
#_079983: CMP.b #$08
#_079985: BNE LinkState_ShowingOffItem

#_079987: STZ.w $0300

#_07998A: LDA.b #$00 ; LINKSTATE 00
#_07998C: STA.b $5D

#_07998E: STZ.w $037B
#_079991: STZ.w $0360

#_079994: STZ.b $4D

#_079996: LDA.b #$00
#_079998: JSL ResetZapMosaic

;===================================================================================================

LinkState_ShowingOffItem:
#_07999C: RTS

;===================================================================================================

GrantItemReceipt:
#_07999D: PHB
#_07999E: PHK
#_07999F: PLB

#_0799A0: LDA.b $4D
#_0799A2: BEQ .not_recoiling

#_0799A4: STZ.b $4D
#_0799A6: STZ.b $46

#_0799A8: STZ.w $031F
#_0799AB: STZ.w $0308

.not_recoiling
#_0799AE: STY.w $02D8

#_0799B1: CPY.b #$3E ; ITEMGET 3E
#_0799B3: BNE .not_boss_heart

#_0799B5: LDA.b #$2E ; SFX3.2E
#_0799B7: JSR PlayLinkSFX3Panned

.not_boss_heart
#_0799BA: LDA.b #$60
#_0799BC: STA.w $02D9

#_0799BF: LDA.w $02E9
#_0799C2: BEQ .normal_pose

; I don't actually know
#_0799C4: CMP.b #$03
#_0799C6: BNE .not_cool_pose

;---------------------------------------------------------------------------------------------------

.normal_pose
#_0799C8: STZ.w $0308

#_0799CB: STZ.b $3A
#_0799CD: STZ.b $3B
#_0799CF: STZ.b $3C

#_0799D1: STZ.b $5E
#_0799D3: STZ.b $50

#_0799D5: STZ.w $0301
#_0799D8: STZ.w $037A

#_0799DB: STZ.w $0300

#_0799DE: LDA.b #$15 ; LINKSTATE 15
#_0799E0: STA.b $5D

#_0799E2: LDA.b #$01
#_0799E4: STA.w $02DA
#_0799E7: STA.w $037B

#_0799EA: CPY.b #$20 ; ITEMGET 20
#_0799EC: BNE .not_cool_pose

#_0799EE: INC A
#_0799EF: STA.w $02DA

;---------------------------------------------------------------------------------------------------

.not_cool_pose
#_0799F2: PHX

#_0799F3: LDY.b #$04
#_0799F5: LDA.b #$22 ; ANCILLA 22
#_0799F7: JSL AncillaAdd_ItemReceipt

; Checks for prizes
#_0799FB: LDA.w $02D8

; crystal
#_0799FE: CMP.b #$20 ; ITEMGET 20
#_079A00: BEQ .skip_hud

; pendants
#_079A02: CMP.b #$37 ; ITEMGET 37
#_079A04: BEQ .skip_hud

#_079A06: CMP.b #$38 ; ITEMGET 38
#_079A08: BEQ .skip_hud

#_079A0A: CMP.b #$39 ; ITEMGET 39
#_079A0C: BEQ .skip_hud

#_079A0E: JSL RefreshItemIcon

.skip_hud
#_079A12: JSR CancelDash

#_079A15: PLX

#_079A16: CLC

#_079A17: PLB

#_079A18: RTL

;===================================================================================================

UNREACHABLE_079A19:
#_079A19: SEC

#_079A1A: PLB

#_079A1B: RTL

;===================================================================================================

TuckLinkIntoBed:
#_079A1C: PHB
#_079A1D: PHK
#_079A1E: PLB

#_079A1F: REP #$20

; !HARDCODED coordinates
#_079A21: LDA.w #$215A
#_079A24: STA.b $20

#_079A26: LDA.w #$0940
#_079A29: STA.b $22

#_079A2B: SEP #$20

#_079A2D: LDA.b #$16 ; LINKSTATE 16
#_079A2F: STA.b $5D

#_079A31: STZ.w $037C
#_079A34: STZ.w $037D

#_079A37: LDA.b #$03
#_079A39: STA.w $0374

#_079A3C: LDA.b #$20 ; ANCILLA 20
#_079A3E: JSL AncillaAdd_Blanket

#_079A42: PLB

#_079A43: RTL

;===================================================================================================

pool LinkState_Sleeping

.vectors
#_079A44: dw SnoringInBed
#_079A46: dw SittingUpInBed
#_079A48: dw JumpingOutOfBed

pool off

;---------------------------------------------------------------------------------------------------

LinkState_Sleeping:
#_079A4A: LDA.w $037C
#_079A4D: ASL A
#_079A4E: TAX

#_079A4F: JMP.w (.vectors,X)

;===================================================================================================

SnoringInBed:
#_079A52: LDA.b $1A
#_079A54: AND.b #$1F
#_079A56: BNE .exit

#_079A58: LDY.b #$01
#_079A5A: LDA.b #$21 ; ANCILLA 21
#_079A5C: JSL AncillaAdd_Snoring

.exit
#_079A60: RTS

;===================================================================================================

SittingUpInBed:
#_079A61: LDA.b $11
#_079A63: BNE .exit

#_079A65: DEC.w $0374
#_079A68: BPL .exit

#_079A6A: STZ.w $0374

#_079A6D: LDA.b $F4
#_079A6F: AND.b #$E0
#_079A71: STA.b $00

#_079A73: LDA.b $F4

#_079A75: ASL A
#_079A76: ASL A
#_079A77: ASL A
#_079A78: ASL A

#_079A79: ORA.b $00
#_079A7B: ORA.b $F6

#_079A7D: AND.b #$F0
#_079A7F: BEQ .exit

#_079A81: INC.w $037D

#_079A84: LDA.b #$06
#_079A86: STA.b $2F

#_079A88: INC.w $037C

#_079A8B: LDA.b #$04
#_079A8D: STA.w $0374

.exit
#_079A90: RTS

;===================================================================================================

JumpingOutOfBed:
#_079A91: DEC.w $0374
#_079A94: BPL .exit

#_079A96: LDA.b #$04
#_079A98: STA.b $27

#_079A9A: LDA.b #$15
#_079A9C: STA.b $28

#_079A9E: LDA.b #$18
#_079AA0: STA.b $29
#_079AA2: STA.w $02C7

#_079AA5: LDA.b #$10
#_079AA7: STA.b $46

#_079AA9: LDA.b #$02
#_079AAB: STA.b $4D

#_079AAD: LDA.b #$06 ; LINKSTATE 06
#_079AAF: STA.b $5D

.exit
#_079AB1: RTS

;===================================================================================================

HandleSwordCooldown:
#_079AB2: DEC.w $02E3
#_079AB5: BPL EXIT_079AD5

#_079AB7: STZ.w $02E3

#_079ABA: LDA.w $0301
#_079ABD: ORA.w $037A
#_079AC0: BNE EXIT_079AD5

#_079AC2: LDA.b $3C
#_079AC4: CMP.b #$09
#_079AC6: BCS .spin_attack

#_079AC8: LDA.w $0372
#_079ACB: BNE EXIT_079AD5

#_079ACD: JSR CheckForSwordSwing
#_079AD0: BRA EXIT_079AD5

.spin_attack
#_079AD2: JSR HandleSwordControls

;---------------------------------------------------------------------------------------------------

#EXIT_079AD5:
#_079AD5: RTS

;===================================================================================================

pool HandleYItem

.vectors
#_079AD6: dw LinkItem_Bombs
#_079AD8: dw LinkItem_Boomerang
#_079ADA: dw LinkItem_Bow
#_079ADC: dw LinkItem_Hammer

#_079ADE: dw LinkItem_Rod
#_079AE0: dw LinkItem_Rod
#_079AE2: dw LinkItem_Net
#_079AE4: dw LinkItem_ShovelAndFlute

#_079AE6: dw LinkItem_Lamp
#_079AE8: dw LinkItem_Powder
#_079AEA: dw LinkItem_Bottle
#_079AEC: dw LinkItem_Book

#_079AEE: dw LinkItem_CaneOfByrna
#_079AF0: dw LinkItem_Hookshot
#_079AF2: dw LinkItem_Bombos
#_079AF4: dw LinkItem_Ether

#_079AF6: dw LinkItem_Quake
#_079AF8: dw LinkItem_CaneOfSomaria
#_079AFA: dw LinkItem_Cape
#_079AFC: dw LinkItem_Mirror

pool off

;---------------------------------------------------------------------------------------------------

HandleYItem:
#_079AFE: LDA.b $3C
#_079B00: BEQ .sword_not_out

#_079B02: CMP.b #$09
#_079B04: BCC EXIT_079AD5

.sword_not_out
#_079B06: LDA.w $02E0
#_079B09: BEQ .not_bunny

#_079B0B: LDA.w $0303
#_079B0E: CMP.b #$0B ; can use bottle
#_079B10: BEQ .not_bunny

#_079B12: CMP.b #$14 ; can use mirror
#_079B14: BEQ .not_bunny

#_079B16: RTS

;---------------------------------------------------------------------------------------------------

.not_bunny
#_079B17: LDY.w $03FC ; check for item override
#_079B1A: BEQ .just_use_item_already

#_079B1C: LDA.w $02E0
#_079B1F: BNE .just_use_item_already

#_079B21: CPY.b #$02
#_079B23: BEQ .force_bow

#_079B25: BRL LinkItem_Shovel

.force_bow
#_079B28: BRL LinkItem_Bow

.just_use_item_already
#_079B2B: LDY.w $0304
#_079B2E: CPY.w $0303
#_079B31: BEQ .dont_remove_cape

#_079B33: LDA.w $0304
#_079B36: CMP.b #$08
#_079B38: BNE .cant_flute

#_079B3A: LDA.l $7EF34C
#_079B3E: AND.b #$02
#_079B40: BEQ .cant_flute

#_079B42: LDA.b $3A
#_079B44: AND.b #$BF
#_079B46: STA.b $3A

;---------------------------------------------------------------------------------------------------

.cant_flute
#_079B48: LDA.w $0304
#_079B4B: CMP.b #$13
#_079B4D: BNE .dont_remove_cape

#_079B4F: LDA.b $55
#_079B51: BEQ .dont_remove_cape

#_079B53: JSR ForciblyUnequipCape

.dont_remove_cape
#_079B56: LDA.w $0301
#_079B59: ORA.w $037A
#_079B5C: BNE .dont_copy_item

#_079B5E: LDY.w $0303
#_079B61: STY.w $0304

.dont_copy_item
#_079B64: BEQ .exit

;---------------------------------------------------------------------------------------------------

#_079B66: CPY.b #$05
#_079B68: BEQ .rod

#_079B6A: CPY.b #$06
#_079B6C: BNE .not_rod

.rod
#_079B6E: LDA.w $0304
#_079B71: SEC
#_079B72: SBC.b #$05
#_079B74: INC A
#_079B75: STA.w $0307

;---------------------------------------------------------------------------------------------------

.not_rod
#_079B78: DEY
#_079B79: BMI .exit

#_079B7B: TYA
#_079B7C: ASL A
#_079B7D: TAX

#_079B7E: JMP.w (.vectors,X)

.exit
#_079B81: RTS

;===================================================================================================

HandleDO_vectors:
#_079B82: dw EXIT_07AA8A
#_079B84: dw HandleDO_LiftCarryThrow
#_079B86: dw EXIT_07B2D6
#_079B88: dw HandleDO_PullObject
#_079B8A: dw EXIT_07B510
#_079B8C: dw EXIT_07B5A8
#_079B8E: dw HandleDO_StatueDrag
#_079B90: dw EXIT_07B3F5

;===================================================================================================
; Used to check $7EF379
;===================================================================================================
AbilityChecks:
#_079B92: db $E0 ; 11100000 - Lift, read, talk
#_079B93: db $40 ; 01000000 - Read
#_079B94: db $04 ; 00000100 - Run
#_079B95: db $E0 ; 11100000 - Lift, read, talk
#_079B96: db $E0 ; 11100000 - Lift, read, talk
#_079B97: db $E0 ; 11100000 - Lift, read, talk
#_079B98: db $E0 ; 11100000 - Lift, read, talk | used by statue drag
#_079B99: db $E0 ; 11100000 - Lift, read, talk | used by rupee pull

;===================================================================================================

HandleAPress:
#_079B9A: STZ.w $02F4

#_079B9D: LDA.w $0301
#_079BA0: BNE .exit

#_079BA2: LDA.w $037A
#_079BA5: AND.b #$1F
#_079BA7: BNE .exit

#_079BA9: LDA.w $0379
#_079BAC: BNE .exit

#_079BAE: LDA.b $3C
#_079BB0: CMP.b #$09
#_079BB2: BCS .not_using_sword

#_079BB4: LDA.b $3A
#_079BB6: AND.b #$80
#_079BB8: BEQ .not_using_sword

.exit
#_079BBA: RTS

;---------------------------------------------------------------------------------------------------

.not_using_sword
#_079BBB: LDX.w $036C

#_079BBE: LDA.w $0308
#_079BC1: ORA.w $0376
#_079BC4: BNE .handle_toss_and_grab

;---------------------------------------------------------------------------------------------------

#_079BC6: JSR TestAButton
#_079BC9: BCC .no_a_press

; Rupee pull sprite will set this flag
; Make sure we're facing up
#_079BCB: LDA.w $03F8
#_079BCE: BEQ .no_rupee_pull

#_079BD0: LDA.b $2F
#_079BD2: BNE .no_rupee_pull

#_079BD4: LDX.b #$07
#_079BD6: BRL .use_a_press

.no_rupee_pull
; And statues will set this flag
#_079BD9: LDA.w $02FA
#_079BDC: BEQ .not_statue

#_079BDE: LDX.b #$06
#_079BE0: BRL .use_a_press

;---------------------------------------------------------------------------------------------------

.not_statue
#_079BE3: LDA.w $02EC
#_079BE6: BNE .not_lifting

#_079BE8: LDA.w $0314
#_079BEB: BEQ .cant_lift_sprite

#_079BED: LDA.w $0314
#_079BF0: STA.w $02F4

.not_lifting
#_079BF3: LDA.b $3C
#_079BF5: BEQ .no_sword

#_079BF7: JSR ResetSwordAndItemUsage

.no_sword
#_079BFA: LDA.w $0301
#_079BFD: ORA.w $037A
#_079C00: BEQ .no_boom

#_079C02: STZ.w $0301
#_079C05: STZ.w $037A

; TODO investigate when this activates and what happens
#_079C08: JSR ResetBoomerangYStuff

#_079C0B: STZ.w $035F

; All these hardcoded boomerang checks
#_079C0E: LDA.w $0C4A
#_079C11: CMP.b #$05 ; ANCILLA 05
#_079C13: BNE .no_boom

#_079C15: STZ.w $0C4A

.no_boom
#_079C18: LDX.b #$01
#_079C1A: BRA .use_a_press

.cant_lift_sprite
#_079C1C: JSR HandleLiftables

;---------------------------------------------------------------------------------------------------

.use_a_press
#_079C1F: LDA.w AbilityChecks,X
#_079C22: AND.l $7EF379
#_079C26: BEQ .no_a_press ; We lack the ability

#_079C28: STX.w $036C

#_079C2B: TXA
#_079C2C: ASL A
#_079C2D: TAX

#_079C2E: JSR .run_vector

;---------------------------------------------------------------------------------------------------

.handle_toss_and_grab
#_079C31: LDA.w $036C
#_079C34: STA.w $0306

#_079C37: ASL A
#_079C38: TAX

#_079C39: JMP.w (HandleDO_vectors,X)

.no_a_press
#_079C3C: STZ.b $3B

#_079C3E: RTS

;---------------------------------------------------------------------------------------------------

.vectors
#_079C3F: dw PerformDesertPrayer
#_079C41: dw PerformThrow
#_079C43: dw PerformDash
#_079C45: dw PerformGrab
#_079C47: dw PerformRead
#_079C49: dw PerformOpenChest
#_079C4B: dw PerformStatueDrag
#_079C4D: dw PerformRupeePull

;---------------------------------------------------------------------------------------------------

.run_vector
#_079C4F: JMP.w (.vectors,X)

;===================================================================================================

UNREACHABLE_079C52:
#_079C52: RTS

;===================================================================================================

UNREACHABLE_079C53:
#_079C53: db $00, $01, $01

;===================================================================================================

HandleSwordSFXAndBeam:
#_079C56: LDA.b $67
#_079C58: AND.b #$F0
#_079C5A: STA.b $67

#_079C5C: STZ.b $3C
#_079C5E: STZ.b $79

#_079C60: LDA.l $7EF36C
#_079C64: SEC
#_079C65: SBC.b #$04
#_079C67: CMP.l $7EF36D
#_079C6B: BCS .no_make_beam

#_079C6D: LDA.l $7EF359
#_079C71: INC A
#_079C72: AND.b #$FE
#_079C74: BEQ .no_make_beam

#_079C76: LDA.l $7EF359
#_079C7A: CMP.b #$02
#_079C7C: BCC .no_make_beam

;---------------------------------------------------------------------------------------------------

; Look for a free slot to make beam
#_079C7E: LDX.b #$04

.next_slot
#_079C80: LDA.w $0C4A,X
#_079C83: CMP.b #$31 ; ANCILLA 31
#_079C85: BEQ .no_make_beam

#_079C87: DEX
#_079C88: BPL .next_slot

;---------------------------------------------------------------------------------------------------

#_079C8A: LDY.b #$00
#_079C8C: JSL AncillaAdd_SwordBeam

.no_make_beam
#_079C90: JSL CalculateLinkSFXPan
#_079C94: PHA

#_079C95: LDA.l $7EF359
#_079C99: DEC A

#_079C9A: TAX
#_079C9B: PLA

#_079C9C: CPX.b #$FE
#_079C9E: BEQ .no_make_swing_sfx

#_079CA0: CPX.b #$FF
#_079CA2: BEQ .no_make_swing_sfx

#_079CA4: ORA.w SwordSwingSFX,X
#_079CA7: STA.w $012E

.no_make_swing_sfx
#_079CAA: LDX.b #$01
#_079CAC: STX.b $3D

;---------------------------------------------------------------------------------------------------

#EXIT_079CAE:
#_079CAE: RTS

;===================================================================================================

SwordSwingTimers:
#_079CAF: db $01, $00, $00, $00, $00, $03, $00, $00
#_079CB7: db $01, $00, $03, $03, $03, $03, $04, $04
#_079CBF: db $01, $05

;===================================================================================================

SwordSwingSFX:
#_079CC1: db $01 ; SFX2.01
#_079CC2: db $02 ; SFX2.02
#_079CC3: db $03 ; SFX2.03
#_079CC4: db $04 ; SFX2.04

;===================================================================================================
; Seems to be some unused offsets for the sword
;===================================================================================================
UNREACHABLE_079CC5:
#_079CC5: db $00, $09, $12, $1B

;===================================================================================================

CheckForSwordSwing:
#_079CC9: LDA.b $3B
#_079CCB: AND.b #$10
#_079CCD: BNE EXIT_079CAE

#_079CCF: BIT.b $3A
#_079CD1: BMI .pressing_b

#_079CD3: BIT.b $F4
#_079CD5: BPL EXIT_079CAE

#_079CD7: LDX.b $6C
#_079CD9: BEQ .not_in_door

#_079CDB: JSR TileDetect_SwordSwingDeepInDoor

#_079CDE: LDA.b $0E
#_079CE0: AND.b #$30
#_079CE2: EOR.b #$30
#_079CE4: BEQ EXIT_079CAE

;---------------------------------------------------------------------------------------------------

.not_in_door
#_079CE6: LDA.b #$80
#_079CE8: TSB.b $3A

#_079CEA: JSR HandleSwordSFXAndBeam

#_079CED: LDA.b #$01
#_079CEF: TSB.b $50

#_079CF1: STZ.b $2E

;---------------------------------------------------------------------------------------------------

.pressing_b
#_079CF3: BIT.b $F0
#_079CF5: BMI .holding_b

#_079CF7: LDA.b #$01
#_079CF9: TSB.b $3A

.holding_b
#_079CFB: JSR HaltLinkWhenUsingItems

#_079CFE: LDA.b $67
#_079D00: AND.b #$F0
#_079D02: STA.b $67

#_079D04: DEC.b $3D
#_079D06: BPL .finish_up

;---------------------------------------------------------------------------------------------------

#_079D08: INC.b $3C

#_079D0A: LDA.b $3C
#_079D0C: CMP.b #$09
#_079D0E: BCS HandleSwordControls

#_079D10: TAX

#_079D11: LDA.w SwordSwingTimers,X
#_079D14: STA.b $3D

#_079D16: CPX.b #$05
#_079D18: BNE .no_swing_sparkle

#_079D1A: LDA.l $7EF359
#_079D1E: BEQ .weak_or_no_sword

#_079D20: CMP.b #$01
#_079D22: BEQ .weak_or_no_sword

#_079D24: CMP.b #$FF
#_079D26: BEQ .weak_or_no_sword

#_079D28: LDY.b #$04
#_079D2A: LDA.b #$26 ; ANCILLA 26
#_079D2C: JSL AncillaAdd_SwordSwingSparkle

;---------------------------------------------------------------------------------------------------

.weak_or_no_sword
#_079D30: LDY.b #$01

#_079D32: LDA.l $7EF359
#_079D36: BEQ .finish_up

#_079D38: CMP.b #$FF
#_079D3A: BEQ .finish_up

#_079D3C: CMP.b #$01
#_079D3E: BEQ .fighter_sword

#_079D40: LDY.b #$06

.fighter_sword
#_079D42: JSR TileDetect_MainHandler

#_079D45: BRA .finish_up

;---------------------------------------------------------------------------------------------------

.no_swing_sparkle
#_079D47: CPX.b #$04
#_079D49: BCC .finish_up

#_079D4B: LDA.b $3A
#_079D4D: AND.b #$01
#_079D4F: BEQ .finish_up

#_079D51: BIT.b $F0
#_079D53: BPL .finish_up

#_079D55: LDA.b $3A
#_079D57: AND.b #$FE
#_079D59: STA.b $3A

#_079D5B: BRL HandleSwordSFXAndBeam

;---------------------------------------------------------------------------------------------------

.finish_up
#_079D5E: JSR CalculateSwordHitbox

#_079D61: RTS

;===================================================================================================

HandleSwordControls:
#_079D62: BIT.b $F0
#_079D64: BMI .holding_b

#_079D66: LDA.b $79
#_079D68: CMP.b #$30
#_079D6A: BCC ResetSwordAndItemUsage

#_079D6C: JSR ResetSwordAndItemUsage

#_079D6F: STZ.b $79

#_079D71: BRL ActivateSpinAttack

;===================================================================================================
; Resets speed, spin timers, direction change
;===================================================================================================
#ResetSwordAndItemUsage:
#_079D74: STZ.b $5E

#_079D76: LDA.b $48
#_079D78: AND.b #$F6
#_079D7A: STA.b $48

#_079D7C: STZ.b $3D
#_079D7E: STZ.b $3C

#_079D80: LDA.b $3A
#_079D82: AND.b #$7E
#_079D84: STA.b $3A

#_079D86: LDA.b $50
#_079D88: AND.b #$FE
#_079D8A: STA.b $50

#_079D8C: BRL EXIT_079E52

;---------------------------------------------------------------------------------------------------

.holding_b
#_079D8F: BIT.b $48
#_079D91: BMI .pushing_statue

#_079D93: LDA.b $48
#_079D95: AND.b #$09
#_079D97: BNE .pushing_possibly_against_a_door

.pushing_statue
#_079D99: LDA.b $47
#_079D9B: BEQ .no_tink

#_079D9D: CMP.b #$01
#_079D9F: BEQ ResetSwordAndItemUsage

.pushing_possibly_against_a_door
#_079DA1: LDA.b $3C
#_079DA3: CMP.b #$09
#_079DA5: BNE .not_in_strafe

#_079DA7: LDX.b #$0A
#_079DA9: STX.b $3C

#_079DAB: LDA.w SwordSwingTimers,X
#_079DAE: STA.b $3D

.not_in_strafe
#_079DB0: DEC.b $3D
#_079DB2: BPL .timer_running

#_079DB4: LDA.b $3C
#_079DB6: INC A
#_079DB7: CMP.b #$0D
#_079DB9: BNE .dont_tap_wall

#_079DBB: LDA.l $7EF359
#_079DBF: INC A
#_079DC0: AND.b #$FE
#_079DC2: BEQ .reset_poke_index

#_079DC4: LDA.b $48
#_079DC6: AND.b #$09
#_079DC8: BEQ .reset_poke_index

#_079DCA: LDY.b #$01
#_079DCC: LDA.b #$1B ; ANCILLA 1B
#_079DCE: JSL AncillaAdd_WallTapSpark

#_079DD2: LDA.b $48
#_079DD4: AND.b #$08
#_079DD6: BNE .not_poking_door

#_079DD8: LDA.b #$05 ; SFX2.05
#_079DDA: JSR PlayLinkSFX2Panned

#_079DDD: BRA .detect_poked_tile

.not_poking_door
#_079DDF: LDA.b #$06 ; SFX2.06
#_079DE1: JSR PlayLinkSFX2Panned

.detect_poked_tile
#_079DE4: LDY.b #$01
#_079DE6: JSR TileDetect_MainHandler

.reset_poke_index
#_079DE9: LDA.b #$0A

.dont_tap_wall
#_079DEB: STA.b $3C

#_079DED: TAX

#_079DEE: LDA.w SwordSwingTimers,X
#_079DF1: STA.b $3D

.timer_running
#_079DF3: BRA .do_hitbox

;---------------------------------------------------------------------------------------------------

.no_tink
#_079DF5: LDA.b #$09
#_079DF7: STA.b $3C

#_079DF9: LDA.b #$01
#_079DFB: TSB.b $50

#_079DFD: STZ.b $3D

#_079DFF: LDA.b $5E
#_079E01: CMP.b #$04
#_079E03: BEQ .do_hitbox

#_079E05: CMP.b #$10
#_079E07: BEQ .do_hitbox

#_079E09: LDA.b #$0C
#_079E0B: STA.b $5E

#_079E0D: LDA.l $7EF359
#_079E11: INC A
#_079E12: AND.b #$FE
#_079E14: BEQ EXIT_079E52

;---------------------------------------------------------------------------------------------------

#_079E16: LDX.b #$04

.look_for_byrna_spark
#_079E18: LDA.w $0C4A,X
#_079E1B: CMP.b #$30 ; ANCILLA 30
#_079E1D: BEQ EXIT_079E52

#_079E1F: CMP.b #$31 ; ANCILLA 31
#_079E21: BEQ EXIT_079E52

#_079E23: DEX
#_079E24: BPL .look_for_byrna_spark

;---------------------------------------------------------------------------------------------------

#_079E26: LDA.b $79
#_079E28: CMP.b #$06
#_079E2A: BCC .dont_add_charge_sparkle

#_079E2C: LDA.b $1A
#_079E2E: AND.b #$03
#_079E30: BNE .dont_add_charge_sparkle

#_079E32: JSL AncillaSpawn_SwordChargeSparkle

.dont_add_charge_sparkle
; hard cap timer at 64 frames
#_079E36: LDA.b $79
#_079E38: CMP.b #$40
#_079E3A: BCS EXIT_079E52

#_079E3C: INC.b $79

#_079E3E: LDA.b $79
#_079E40: CMP.b #$30 ; 48 frames for a spin attack
#_079E42: BNE EXIT_079E52

#_079E44: LDA.b #$37 ; SFX2.37
#_079E46: JSR PlayLinkSFX2Panned

#_079E49: JSL AncillaAdd_ChargedSpinAttackSparkle

#_079E4D: BRA EXIT_079E52

.do_hitbox
#_079E4F: JSR CalculateSwordHitbox

;---------------------------------------------------------------------------------------------------

#EXIT_079E52:
#_079E52: RTS

;===================================================================================================

CalculateSwordHitbox:
#_079E53: LDA.l $7EF359
#_079E57: BEQ EXIT_079E52

#_079E59: CMP.b #$FF
#_079E5B: BEQ EXIT_079E52

#_079E5D: CMP.b #$02
#_079E5F: BCS .not_fighter_sword

;===================================================================================================

.set_sword_hitbox_offsets
#_079E61: LDY.b #$27

#_079E63: LDA.b $3C
#_079E65: STA.b $02
#_079E67: STZ.b $03

#_079E69: CMP.b #$09
#_079E6B: BEQ EXIT_079E52
#_079E6D: BCC .slashing

#_079E6F: LDA.b $02
#_079E71: SEC
#_079E72: SBC.b #$0A
#_079E74: STA.b $02

#_079E76: LDY.b #$03

;---------------------------------------------------------------------------------------------------

.slashing
#_079E78: REP #$30

#_079E7A: LDA.b $2F
#_079E7C: AND.w #$00FF
#_079E7F: TAX

#_079E80: LDA.l LinkAnimationDirectionToTableOffset,X
#_079E84: STA.b $04

#_079E86: TYA
#_079E87: AND.w #$00FF
#_079E8A: ASL A
#_079E8B: CLC
#_079E8C: ADC.b $04
#_079E8E: TAX

#_079E8F: LDA.l LinkAnimationDataOffsets,X
#_079E93: CLC
#_079E94: ADC.b $02
#_079E96: TAX

#_079E97: SEP #$20

#_079E99: LDA.l AttackHitboxY,X
#_079E9D: STA.b $44

#_079E9F: LDA.l AttackHitboxX,X
#_079EA3: STA.b $45

#_079EA5: SEP #$10

#_079EA7: RTS

;---------------------------------------------------------------------------------------------------

.not_fighter_sword
#_079EA8: LDA.b $3C
#_079EAA: CMP.b #$09
#_079EAC: BCS .set_sword_hitbox_offsets

#_079EAE: ASL A
#_079EAF: STA.b $04

#_079EB1: LDA.b $2F
#_079EB3: LSR A
#_079EB4: STA.b $0E

#_079EB6: ASL A
#_079EB7: ASL A
#_079EB8: ASL A

#_079EB9: CLC
#_079EBA: ADC.b $0E

#_079EBC: ASL A
#_079EBD: CLC
#_079EBE: ADC.b $04
#_079EC0: TAX

#_079EC1: LDA.l SwordSwingTipTile,X
#_079EC5: CMP.b #$FF
#_079EC7: BEQ .no_hitbox

#_079EC9: TXA
#_079ECA: LSR A
#_079ECB: TAX

#_079ECC: LDA.l SwordSwingTipOffsetY,X
#_079ED0: STA.b $44

#_079ED2: LDA.l SwordSwingTipOffsetX,X
#_079ED6: STA.b $45

;---------------------------------------------------------------------------------------------------

#EXIT_079ED8:
#_079ED8: RTS

;---------------------------------------------------------------------------------------------------

.no_hitbox
#_079ED9: BRL .set_sword_hitbox_offsets

;===================================================================================================

RodAndCaneAnimationTimer:
#_079EDC: db $03, $03, $05

;===================================================================================================

LinkItem_Rod:
#_079EDF: BIT.b $3A
#_079EE1: BVS .in_action

#_079EE3: LDA.b $6C
#_079EE5: BNE EXIT_079ED8

#_079EE7: JSR TestYButton
#_079EEA: BCC EXIT_079ED8

#_079EEC: LDX.b #$00
#_079EEE: JSR CheckMagicCost
#_079EF1: BCC .lacking_magic

#_079EF3: LDA.w $020B
#_079EF6: BNE .lacking_magic

#_079EF8: LDA.b #$01
#_079EFA: STA.w $0350

#_079EFD: JSR CreateRodShot

#_079F00: LDA.w RodAndCaneAnimationTimer
#_079F03: STA.b $3D

#_079F05: STZ.b $2E

#_079F07: STZ.w $0300
#_079F0A: STZ.w $0301

#_079F0D: LDA.b #$01
#_079F0F: TSB.w $0301

;---------------------------------------------------------------------------------------------------

.in_action
#_079F12: JSR HaltLinkWhenUsingItems

#_079F15: LDA.b $67
#_079F17: AND.b #$F0
#_079F19: STA.b $67

#_079F1B: DEC.b $3D
#_079F1D: BPL EXIT_079F48

#_079F1F: LDA.w $0300
#_079F22: INC A
#_079F23: STA.w $0300

#_079F26: TAX

#_079F27: LDA.w RodAndCaneAnimationTimer,X
#_079F2A: STA.b $3D

#_079F2C: CPX.b #$03
#_079F2E: BNE EXIT_079F48

#_079F30: STZ.b $5E
#_079F32: STZ.w $0300
#_079F35: STZ.b $3D
#_079F37: STZ.w $0350

#_079F3A: LDA.w $0301
#_079F3D: AND.b #$FE
#_079F3F: STA.w $0301

;---------------------------------------------------------------------------------------------------

.lacking_magic
#_079F42: LDA.b $3A
#_079F44: AND.b #$BF
#_079F46: STA.b $3A

;---------------------------------------------------------------------------------------------------

#EXIT_079F48:
#_079F48: RTS

;===================================================================================================

pool CreateRodShot

.vectors
#_079F49: dw CreateFireShot
#_079F4B: dw CreateIceShot

pool off

;---------------------------------------------------------------------------------------------------

CreateRodShot:
#_079F4D: LDA.w $0307
#_079F50: DEC A
#_079F51: ASL A
#_079F52: TAX

#_079F53: JMP.w (.vectors,X)

;===================================================================================================

CreateIceShot:
#_079F56: LDA.b #$0B ; ANCILLA 0B
#_079F58: LDY.b #$01
#_079F5A: JSL AncillaAdd_IceRodShot

#_079F5E: RTS

;===================================================================================================

CreateFireShot:
#_079F5F: LDA.b #$02 ; ANCILLA 02
#_079F61: LDY.b #$01
#_079F63: JSL AncillaAdd_FireRodShot

#_079F67: RTS

;===================================================================================================

pool LinkItem_Hammer

.timers
#_079F68: db  3,  3, 16

pool off

;---------------------------------------------------------------------------------------------------

LinkItem_Hammer:
#_079F6B: LDA.w $0301
#_079F6E: AND.b #$10
#_079F70: BNE .bounce_to_exit

#_079F72: BIT.b $3A
#_079F74: BVS .in_action

#_079F76: LDA.b $6C
#_079F78: BNE .bounce_to_exit

#_079F7A: JSR TestYButton_unfiltered
#_079F7D: BCS .pressed_y

.bounce_to_exit
#_079F7F: BRL EXIT_079F48

;---------------------------------------------------------------------------------------------------

.pressed_y
#_079F82: LDA.w LinkItem_Hammer_timers
#_079F85: STA.b $3D

#_079F87: LDA.b #$01
#_079F89: TSB.b $50

#_079F8B: STZ.b $2E

#_079F8D: LDA.w $0301
#_079F90: AND.b #$00
#_079F92: ORA.b #$02
#_079F94: STA.w $0301

#_079F97: STZ.w $0300

.in_action
#_079F9A: JSR HaltLinkWhenUsingItems

#_079F9D: LDA.b $67
#_079F9F: AND.b #$F0
#_079FA1: STA.b $67

#_079FA3: DEC.b $3D
#_079FA5: BPL EXIT_079FF2

#_079FA7: LDA.w $0300
#_079FAA: INC A
#_079FAB: STA.w $0300

#_079FAE: TAX

#_079FAF: LDA.w LinkItem_Hammer_timers,X
#_079FB2: STA.b $3D

#_079FB4: CPX.b #$01
#_079FB6: BNE .no_impact_yet

;---------------------------------------------------------------------------------------------------

#_079FB8: PHX

#_079FB9: LDY.b #$03
#_079FBB: JSR TileDetect_MainHandler

#_079FBE: LDY.b #$00
#_079FC0: LDA.b #$16 ; ANCILLA 16
#_079FC2: JSL Ancilla_AddHitStars

#_079FC6: PLX

#_079FC7: LDA.w $012E
#_079FCA: BNE .no_impact_yet

#_079FCC: LDA.b #$10 ; SFX2.10
#_079FCE: JSR PlayLinkSFX2Panned

#_079FD1: JSL SpawnHammeredSplash

;---------------------------------------------------------------------------------------------------

.no_impact_yet
#_079FD5: CPX.b #$03
#_079FD7: BNE EXIT_079FF2

#_079FD9: STZ.w $0300
#_079FDC: STZ.b $3D

#_079FDE: LDA.b $3A
#_079FE0: AND.b #$BF
#_079FE2: STA.b $3A

#_079FE4: LDA.b $50
#_079FE6: AND.b #$FE
#_079FE8: STA.b $50

#_079FEA: LDA.w $0301
#_079FED: AND.b #$FD
#_079FEF: STA.w $0301

;---------------------------------------------------------------------------------------------------

#EXIT_079FF2:
#_079FF2: RTS

;===================================================================================================

pool LinkItem_Bow

.timer
#_079FF3: db $03, $03, $08

pool off

;---------------------------------------------------------------------------------------------------

LinkItem_Bow:
#_079FF6: BIT.b $3A
#_079FF8: BVS .in_action

#_079FFA: LDA.b $6C
#_079FFC: BNE EXIT_079FF2

#_079FFE: JSR TestYButton
#_07A001: BCC EXIT_079FF2

#_07A003: LDA.b #$01
#_07A005: TSB.b $50

#_07A007: LDA.w LinkItem_Bow_timer
#_07A00A: STA.b $3D

#_07A00C: STZ.b $2E
#_07A00E: STZ.w $0300

#_07A011: LDA.w $0301
#_07A014: AND.b #$00
#_07A016: ORA.b #$10
#_07A018: STA.w $0301

;---------------------------------------------------------------------------------------------------

.in_action
#_07A01B: JSR HaltLinkWhenUsingItems

#_07A01E: LDA.b $67
#_07A020: AND.b #$F0
#_07A022: STA.b $67

#_07A024: DEC.b $3D
#_07A026: BPL EXIT_079FF2

#_07A028: LDA.w $0300
#_07A02B: INC A
#_07A02C: STA.w $0300

#_07A02F: TAX

#_07A030: LDA.w LinkItem_Bow_timer,X
#_07A033: STA.b $3D

#_07A035: CPX.b #$03
#_07A037: BNE EXIT_07A0AA

; !VESTIGIAL ?
; This caches Link's coordinates and direction for use with the arrow add routine
; but nothing else ever adds arrows, so there's no reason to cache these
; over just using Link's properties directly
; This might imply other entities were able to create ancilla arrows at some point
#_07A039: LDA.b $20
#_07A03B: STA.b $72

#_07A03D: LDA.b $21
#_07A03F: STA.b $73

#_07A041: LDA.b $22
#_07A043: STA.b $74

#_07A045: LDA.b $23
#_07A047: STA.b $75

#_07A049: LDX.b $2F

#_07A04B: LDY.b #$02
#_07A04D: LDA.b #$09 ; ANCILLA 09
#_07A04F: JSL AncillaAdd_Arrow
#_07A053: BCC .arrow_handled

;---------------------------------------------------------------------------------------------------

#_07A055: LDA.w $0B99
#_07A058: BEQ .not_using_credits

#_07A05A: DEC.w $0B99

#_07A05D: LDA.l $7EF377
#_07A061: INC A
#_07A062: INC A
#_07A063: STA.l $7EF377

.not_using_credits
#_07A067: LDA.w $0B9A
#_07A06A: BNE .delete_arrow

#_07A06C: LDA.l $7EF377
#_07A070: BEQ .delete_arrow

#_07A072: DEC A
#_07A073: STA.l $7EF377
#_07A077: BNE .arrow_handled

#_07A079: JSL RefreshItemIcon

#_07A07D: BRA .arrow_handled

.delete_arrow
#_07A07F: STZ.w $0C4A,X

#_07A082: LDA.b #$3C ; SFX2.3C
#_07A084: JSR PlayLinkSFX2Panned

;---------------------------------------------------------------------------------------------------

.arrow_handled
#_07A087: STZ.w $0300
#_07A08A: STZ.b $3D

#_07A08C: LDA.b $3A
#_07A08E: AND.b #$BF
#_07A090: STA.b $3A

#_07A092: LDA.b $50
#_07A094: AND.b #$FE
#_07A096: STA.b $50

#_07A098: LDA.w $0301
#_07A09B: AND.b #$EF
#_07A09D: STA.w $0301

#_07A0A0: LDA.b $3C
#_07A0A2: CMP.b #$09
#_07A0A4: BCC EXIT_07A0AA

#_07A0A6: LDA.b #$09
#_07A0A8: STA.b $3C

;---------------------------------------------------------------------------------------------------

#EXIT_07A0AA:
#_07A0AA: RTS

;===================================================================================================

LinkItem_Boomerang:
#_07A0AB: BIT.b $3A
#_07A0AD: BVS .in_action

#_07A0AF: LDA.b $6C
#_07A0B1: BNE EXIT_07A0AA

#_07A0B3: JSR TestYButton
#_07A0B6: BCC .exit

#_07A0B8: LDA.w $035F
#_07A0BB: BNE .exit

#_07A0BD: STZ.b $2E

#_07A0BF: LDA.w $0301
#_07A0C2: AND.b #$00
#_07A0C4: ORA.b #$80
#_07A0C6: STA.w $0301

#_07A0C9: STZ.w $0300

#_07A0CC: LDA.b #$07
#_07A0CE: STA.b $3D

#_07A0D0: LDY.b #$00
#_07A0D2: LDA.b #$05 ; ANCILLA 05
#_07A0D4: JSL AncillaAdd_Boomerang

#_07A0D8: LDA.b $3C
#_07A0DA: CMP.b #$09
#_07A0DC: BCS ResetBoomerangYStuff

#_07A0DE: LDA.b $72
#_07A0E0: BNE .in_action

#_07A0E2: LDA.b $F0
#_07A0E4: AND.b #$0F
#_07A0E6: STA.b $26

#_07A0E8: BRA .continue

;---------------------------------------------------------------------------------------------------

.in_action
#_07A0EA: LDA.b #$01
#_07A0EC: TSB.b $50

.continue
#_07A0EE: LDA.w $0301
#_07A0F1: BEQ ResetBoomerangYStuff

#_07A0F3: JSR HaltLinkWhenUsingItems

#_07A0F6: LDA.b $67
#_07A0F8: AND.b #$F0
#_07A0FA: STA.b $67

#_07A0FC: DEC.b $3D
#_07A0FE: BPL .exit

#_07A100: LDA.b #$05
#_07A102: STA.b $3D

#_07A104: LDA.w $0300
#_07A107: INC A
#_07A108: STA.w $0300

#_07A10B: CMP.b #$02
#_07A10D: BNE .exit

;===================================================================================================

#ResetBoomerangYStuff:
#_07A10F: STZ.w $0301
#_07A112: STZ.w $0300

#_07A115: STZ.b $3D

#_07A117: LDA.b $3A
#_07A119: AND.b #$BF
#_07A11B: STA.b $3A

#_07A11D: AND.b #$80
#_07A11F: BNE .exit

#_07A121: LDA.b $50
#_07A123: AND.b #$FE
#_07A125: STA.b $50

.exit
#_07A127: RTS

;===================================================================================================

LinkItem_Bombs:
#_07A128: LDA.b $6C
#_07A12A: BNE EXIT_07A14A

; can't use with super bombs
#_07A12C: LDA.l $7EF3CC
#_07A130: CMP.b #$0D ; FOLLOWER 0D
#_07A132: BEQ EXIT_07A14A

#_07A134: JSR TestYButton
#_07A137: BCC EXIT_07A14A

#_07A139: LDA.b $3A
#_07A13B: AND.b #$BF
#_07A13D: STA.b $3A

#_07A13F: LDY.b #$01
#_07A141: LDA.b #$07 ; ANCILLA 07
#_07A143: JSL AncillaAdd_Bomb

#_07A147: STZ.w $0301

;---------------------------------------------------------------------------------------------------

#EXIT_07A14A:
#_07A14A: RTS

;===================================================================================================

LinkItem_Bottle:
#_07A14B: JSR TestYButton
#_07A14E: BCC EXIT_07A14A

#_07A150: LDA.b $3A
#_07A152: AND.b #$BF
#_07A154: STA.b $3A

#_07A156: LDA.l $7EF34F
#_07A15A: DEC A
#_07A15B: TAX

#_07A15C: LDA.l $7EF35C,X
#_07A160: BEQ EXIT_07A14A

#_07A162: CMP.b #$03
#_07A164: BCC LinkItem_UselessBottle

#_07A166: CMP.b #$03
#_07A168: BEQ LinkItem_RedPotion

#_07A16A: CMP.b #$04
#_07A16C: BEQ LinkItem_GreenPotion

#_07A16E: CMP.b #$05
#_07A170: BEQ LinkItem_BluePotion

#_07A172: CMP.b #$06
#_07A174: BEQ .fairy

#_07A176: BRL LinkItem_BeeBottle

.fairy
#_07A179: BRL LinkItem_FairyBottle

;===================================================================================================

LinkItem_RedPotion:
#_07A17C: LDA.l $7EF36C
#_07A180: CMP.l $7EF36D
#_07A184: BNE .can_drink

;===================================================================================================

#LinkItem_UselessBottle:
#_07A186: BRL LinkGoBeep

;===================================================================================================

.can_drink
#_07A189: LDA.b #$02
#_07A18B: STA.l $7EF35C,X

#_07A18F: STZ.w $0301

#_07A192: LDA.b #$04
#_07A194: STA.b $11

#_07A196: LDA.b $10
#_07A198: STA.w $010C

#_07A19B: LDA.b #$0E
#_07A19D: STA.b $10

#_07A19F: LDA.b #$07
#_07A1A1: STA.w $0208

#_07A1A4: JSL RebuildHUD_long

#_07A1A8: RTS

;===================================================================================================

LinkItem_GreenPotion:
#_07A1A9: LDA.l $7EF36E
#_07A1AD: CMP.b #$80
#_07A1AF: BNE .can_drink

#_07A1B1: BRL LinkGoBeep

.can_drink
#_07A1B4: LDA.b #$02
#_07A1B6: STA.l $7EF35C,X

#_07A1BA: STZ.w $0301

#_07A1BD: LDA.b #$08
#_07A1BF: STA.b $11

#_07A1C1: LDA.b $10
#_07A1C3: STA.w $010C

#_07A1C6: LDA.b #$0E
#_07A1C8: STA.b $10

#_07A1CA: LDA.b #$07
#_07A1CC: STA.w $0208

#_07A1CF: JSL RebuildHUD_long

#_07A1D3: BRA EXIT_07A239

;===================================================================================================

LinkItem_BluePotion:
#_07A1D5: LDA.l $7EF36C
#_07A1D9: CMP.l $7EF36D
#_07A1DD: BNE .can_drink

#_07A1DF: LDA.l $7EF36E
#_07A1E3: CMP.b #$80
#_07A1E5: BNE .can_drink

#_07A1E7: BRL LinkGoBeep

.can_drink
#_07A1EA: LDA.b #$02
#_07A1EC: STA.l $7EF35C,X

#_07A1F0: STZ.w $0301

#_07A1F3: LDA.b #$09
#_07A1F5: STA.b $11

#_07A1F7: LDA.b $10
#_07A1F9: STA.w $010C

#_07A1FC: LDA.b #$0E
#_07A1FE: STA.b $10

#_07A200: LDA.b #$07
#_07A202: STA.w $0208

#_07A205: JSL RebuildHUD_long

#_07A209: BRA EXIT_07A239

;===================================================================================================

LinkItem_FairyBottle:
#_07A20B: STZ.w $0301

#_07A20E: JSL ReleaseFairy
#_07A212: BPL .released

#_07A214: BRL LinkGoBeep

.released
#_07A217: LDA.b #$02
#_07A219: STA.l $7EF35C,X

#_07A21D: JSL RebuildHUD_long

#_07A221: BRA EXIT_07A239

;===================================================================================================

LinkItem_BeeBottle:
#_07A223: STZ.w $0301

#_07A226: JSL ReleaseBeeFromBottle
#_07A22A: BPL .released

#_07A22C: BRL LinkGoBeep

.released
#_07A22F: LDA.b #$02
#_07A231: STA.l $7EF35C,X

#_07A235: JSL RebuildHUD_long

;---------------------------------------------------------------------------------------------------

#EXIT_07A239:
#_07A239: RTS

;===================================================================================================

UNREACHABLE_07A23A:
#_07A23A: CLC
#_07A23B: BPL LinkItem_Lamp

;===================================================================================================

LinkItem_Lamp:
#_07A23D: LDA.b $6C
#_07A23F: BNE EXIT_07A278

#_07A241: JSR TestYButton
#_07A244: BCC EXIT_07A278

#_07A246: LDA.l $7EF34A
#_07A24A: BEQ .no_magic

#_07A24C: LDX.b #$06
#_07A24E: JSR CheckMagicCost
#_07A251: BCC .no_magic

; !WTF it only does this to get collision
#_07A253: LDY.b #$00
#_07A255: LDA.b #$1A ; ANCILLA 1A
#_07A257: JSL AncillaAdd_MagicPowder

; !BUG doesn't check for ancilla being created
; can cause garbage on screen outside:
;  1 powder a toch
;  2 save and quit mid powder
;  3 fill every slot
;  4 use lamp
#_07A25B: JSL LightTorch

#_07A25F: LDY.b #$02
#_07A261: LDA.b #$2F ; ANCILLA 2F
#_07A263: JSL AncillaAdd_LampFlame

.no_magic
#_07A267: STZ.w $0301
#_07A26A: STZ.b $3A
#_07A26C: STZ.b $3C
#_07A26E: STZ.b $50

; Reset sword, for whatever reason
#_07A270: LDA.b $3C
#_07A272: CMP.b #$09
#_07A274: BNE EXIT_07A278

#_07A276: STZ.b $5E

;---------------------------------------------------------------------------------------------------

#EXIT_07A278:
#_07A278: RTS

;===================================================================================================

pool LinkItem_Powder

.timer
#_07A279: db $02, $01, $01, $03
#_07A27D: db $02, $02, $02, $02
#_07A281: db $06, $00

pool off

;---------------------------------------------------------------------------------------------------

LinkItem_Powder:
#_07A283: BIT.b $3A
#_07A285: BVS .in_use

#_07A287: LDA.b $6C
#_07A289: BNE EXIT_07A278

#_07A28B: JSR TestYButton
#_07A28E: BCC EXIT_07A302

#_07A290: LDA.l $7EF344
#_07A294: CMP.b #$02
#_07A296: BEQ .is_powder

#_07A298: LDA.b #$3C ; SFX2.3C
#_07A29A: JSR PlayLinkSFX2Panned

#_07A29D: BRA .no_tile_detect

;---------------------------------------------------------------------------------------------------

.is_powder
#_07A29F: LDX.b #$02
#_07A2A1: JSR CheckMagicCost
#_07A2A4: BCC .no_tile_detect

#_07A2A6: LDA.w LinkItem_Powder_timer
#_07A2A9: STA.b $3D

#_07A2AB: STZ.w $0300
#_07A2AE: STZ.b $2E

#_07A2B0: LDA.b $67
#_07A2B2: AND.b #$F0
#_07A2B4: STA.b $67

#_07A2B6: STZ.w $0301

#_07A2B9: LDA.b #$40
#_07A2BB: TSB.w $0301

;---------------------------------------------------------------------------------------------------

.in_use
#_07A2BE: STZ.b $30
#_07A2C0: STZ.b $31

#_07A2C2: STZ.b $67

#_07A2C4: STZ.b $2A
#_07A2C6: STZ.b $2B

#_07A2C8: STZ.b $6B

#_07A2CA: DEC.b $3D
#_07A2CC: BPL EXIT_07A302

#_07A2CE: LDA.w $0300
#_07A2D1: INC A
#_07A2D2: STA.w $0300

#_07A2D5: TAX
#_07A2D6: LDA.w LinkItem_Powder_timer,X
#_07A2D9: STA.b $3D

#_07A2DB: CPX.b #$04
#_07A2DD: BNE .dont_make_powder

#_07A2DF: LDY.b #$00
#_07A2E1: LDA.b #$1A ; ANCILLA 1A
#_07A2E3: JSL AncillaAdd_MagicPowder

.dont_make_powder
#_07A2E7: CPX.b #$09
#_07A2E9: BNE EXIT_07A302

#_07A2EB: LDA.b $11
#_07A2ED: BNE .no_tile_detect

; What is this? TODO
#_07A2EF: LDY.b #$01
#_07A2F1: JSR TileDetect_MainHandler
#_07A2F4: BRA .no_tile_detect

.no_tile_detect
#_07A2F6: STZ.w $0301
#_07A2F9: STZ.w $0300

#_07A2FC: LDA.b $3A
#_07A2FE: AND.b #$BF
#_07A300: STA.b $3A

;---------------------------------------------------------------------------------------------------

#EXIT_07A302:
#_07A302: RTS

;===================================================================================================

LinkItem_ShovelAndFlute:
#_07A303: LDA.l $7EF34C
#_07A307: BEQ EXIT_07A302

#_07A309: CMP.b #$01
#_07A30B: BEQ LinkItem_Shovel

#_07A30D: BRL LinkItem_Flute

;===================================================================================================
; Is this indicative of different poses for left and right?
;===================================================================================================
pool LinkItem_Shovel

.timer
#_07A310: db   7,  18,  16
#_07A313: db   7,  18,  16

.pose
#_07A316: db $00, $01, $02
#_07A319: db $00, $01, $02

pool off

;---------------------------------------------------------------------------------------------------

LinkItem_Shovel:
#_07A31C: BIT.b $3A
#_07A31E: BVS .in_use

#_07A320: LDA.b $6C
#_07A322: BNE EXIT_07A302

#_07A324: JSR TestYButton
#_07A327: BCC EXIT_07A302

#_07A329: LDA.w .timer
#_07A32C: STA.b $3D

#_07A32E: STZ.w $030D
#_07A331: STZ.w $0300

#_07A334: LDA.b #$01
#_07A336: STA.w $037A

#_07A339: LDA.b #$01
#_07A33B: TSB.b $50

#_07A33D: STZ.b $2E

;===================================================================================================

.in_use
#_07A33F: JSR HaltLinkWhenUsingItems

#_07A342: LDA.b $67
#_07A344: AND.b #$F0
#_07A346: STA.b $67

#_07A348: DEC.b $3D
#_07A34A: BMI .continue

#_07A34C: RTS

;---------------------------------------------------------------------------------------------------

.continue
#_07A34D: LDX.w $030D
#_07A350: INX
#_07A351: STX.w $030D

#_07A354: LDA.w .timer,X
#_07A357: STA.b $3D

#_07A359: LDA.w .pose,X
#_07A35C: STA.w $0300

#_07A35F: CMP.b #$01
#_07A361: BNE .finish_up

;---------------------------------------------------------------------------------------------------

#_07A363: LDY.b #$02

#_07A365: PHX

#_07A366: JSR TileDetect_MainHandler

#_07A369: PLX

#_07A36A: LDA.w $04B2
#_07A36D: BEQ .not_flute_spot

#_07A36F: LDA.b #$1B ; SFX3.1B
#_07A371: JSR PlayLinkSFX3Panned

#_07A374: PHX

#_07A375: LDY.b #$00
#_07A377: LDA.b #$36 ; ANCILLA 36
#_07A379: JSL AncillaAdd_DugUpFlute

#_07A37D: PLX

;---------------------------------------------------------------------------------------------------

.not_flute_spot
#_07A37E: LDA.w $0357
#_07A381: ORA.w $035B
#_07A384: AND.b #$01
#_07A386: BNE .dont_clink

#_07A388: PHX

#_07A389: LDY.b #$00
#_07A38B: LDA.b #$16 ; ANCILLA 16
#_07A38D: JSL Ancilla_AddHitStars

#_07A391: PLX

#_07A392: LDA.b #$05 ; SFX2.05
#_07A394: JSR PlayLinkSFX2Panned

#_07A397: BRA .finish_up

;---------------------------------------------------------------------------------------------------

.dont_clink
#_07A399: PHX

#_07A39A: LDY.b #$00
#_07A39C: LDA.b #$17 ; ANCILLA 17
#_07A39E: JSL AncillaAdd_ShovelDirt

#_07A3A2: LDA.w $03FC
#_07A3A5: BEQ .not_dig_game

#_07A3A7: JSL SpawnDiggingGamePrize

.not_dig_game
#_07A3AB: PLX

#_07A3AC: LDA.b #$12 ; SFX2.12
#_07A3AE: JSR PlayLinkSFX2Panned

;---------------------------------------------------------------------------------------------------

.finish_up
#_07A3B1: CPX.b #$03
#_07A3B3: BNE EXIT_07A3CA

#_07A3B5: STZ.w $030D
#_07A3B8: STZ.w $0300

#_07A3BB: LDA.b $3A
#_07A3BD: AND.b #$80
#_07A3BF: STA.b $3A

#_07A3C1: STZ.w $037A

#_07A3C4: LDA.b $50
#_07A3C6: AND.b #$FE
#_07A3C8: STA.b $50

;---------------------------------------------------------------------------------------------------

#EXIT_07A3CA:
#_07A3CA: RTS

;===================================================================================================

LinkItem_Flute:
#_07A3CB: BIT.b $3A
#_07A3CD: BVC .can_use

#_07A3CF: DEC.w $03F0

#_07A3D2: LDA.w $03F0
#_07A3D5: BNE EXIT_07A3CA

#_07A3D7: LDA.b $3A
#_07A3D9: AND.b #$BF
#_07A3DB: STA.b $3A

;---------------------------------------------------------------------------------------------------

.can_use
#_07A3DD: JSR TestYButton
#_07A3E0: BCC EXIT_07A3CA

#_07A3E2: LDA.b #$80
#_07A3E4: STA.w $03F0

#_07A3E7: LDA.b #$13 ; SFX2.13
#_07A3E9: JSR PlayLinkSFX2Panned

#_07A3EC: LDA.b $1B
#_07A3EE: BNE EXIT_07A3CA

; are we in dark world?
#_07A3F0: LDA.b $8A
#_07A3F2: AND.b #$40
#_07A3F4: BNE EXIT_07A3CA

; are we in special overworld?
#_07A3F6: LDA.b $10
#_07A3F8: CMP.b #$0B
#_07A3FA: BEQ EXIT_07A3CA

;---------------------------------------------------------------------------------------------------

#_07A3FC: LDX.b #$04

.look_for_duck
#_07A3FE: LDA.w $0C4A,X
#_07A401: CMP.b #$27 ; ANCILLA 27
#_07A403: BEQ EXIT_07A3CA

#_07A405: DEX
#_07A406: BPL .look_for_duck

#_07A408: LDA.l $7EF34C
#_07A40C: CMP.b #$02
#_07A40E: BNE .have_activated_flute

;---------------------------------------------------------------------------------------------------

#_07A410: REP #$20

#_07A412: LDA.b $8A
#_07A414: CMP.w #$0018 ; OW 18
#_07A417: BNE .dont_blow_up_weathervane

#_07A419: LDA.b $20
#_07A41B: CMP.w #$0760
#_07A41E: BCC .dont_blow_up_weathervane

#_07A420: CMP.w #$07E0
#_07A423: BCS .dont_blow_up_weathervane

#_07A425: LDA.b $22
#_07A427: CMP.w #$01CF
#_07A42A: BCC .dont_blow_up_weathervane

#_07A42C: CMP.w #$0230
#_07A42F: BCS .dont_blow_up_weathervane

#_07A431: SEP #$20

#_07A433: LDA.b #$2D
#_07A435: STA.b $11

#_07A437: LDY.b #$00
#_07A439: LDA.b #$37 ; ANCILLA 37
#_07A43B: JSL AncillaAdd_ExplodingWeatherVane

.dont_blow_up_weathervane
#_07A43F: SEP #$20

#_07A441: BRA EXIT_07A44E

;---------------------------------------------------------------------------------------------------

.have_activated_flute
#_07A443: LDY.b #$04
#_07A445: LDA.b #$27 ; ANCILLA 27
#_07A447: JSL AncillaAdd_Duck_take_off

#_07A44B: STZ.w $03F8

;---------------------------------------------------------------------------------------------------

#EXIT_07A44E:
#_07A44E: RTS

;===================================================================================================

CallForDuckIndoors:
#_07A44F: PHB
#_07A450: PHK
#_07A451: PLB

#_07A452: LDA.b #$13 ; SFX2.13
#_07A454: JSR PlayLinkSFX2Panned

#_07A457: LDY.b #$04
#_07A459: LDA.b #$27 ; ANCILLA 27
#_07A45B: JSL AncillaAdd_Duck_take_off

#_07A45F: PLB

#_07A460: RTL

;===================================================================================================

LinkItem_Book:
#_07A461: BIT.b $3A
#_07A463: BVS .exit

; How contrarian
#_07A465: LDA.b $6C
#_07A467: BNE EXIT_07A44E

#_07A469: JSR TestYButton
#_07A46C: BCC .exit

#_07A46E: LDA.b $3A
#_07A470: AND.b #$BF
#_07A472: STA.b $3A

#_07A474: LDA.w $02ED
#_07A477: BNE .do_prayer

#_07A479: LDA.b #$3C ; SFX2.3C
#_07A47B: JSR PlayLinkSFX2Panned

#_07A47E: BRA .exit

;---------------------------------------------------------------------------------------------------

.do_prayer
#_07A480: BRL PerformDesertPrayer

.exit
#_07A483: RTS

;===================================================================================================

LinkItem_Ether:
#_07A484: JSR TestYButton
#_07A487: BCC .exit

#_07A489: LDA.b $3A
#_07A48B: AND.b #$BF
#_07A48D: STA.b $3A

#_07A48F: LDA.b $6C
#_07A491: BNE .cannot_ether

#_07A493: LDA.w $0FFC
#_07A496: BNE .cannot_ether

#_07A498: LDA.w $0403
#_07A49B: AND.b #$80
#_07A49D: BNE .cannot_ether

#_07A49F: LDA.l $7EF359
#_07A4A3: INC A
#_07A4A4: AND.b #$FE
#_07A4A6: BEQ .cannot_ether

#_07A4A8: LDA.l $7EF3D3
#_07A4AC: BEQ .allow_ether

#_07A4AE: LDA.l $7EF3CC
#_07A4B2: CMP.b #$0D ; FOLLOWER 0D
#_07A4B4: BNE .allow_ether

.cannot_ether
#_07A4B6: BRL LinkGoBeep

;---------------------------------------------------------------------------------------------------

.allow_ether
#_07A4B9: LDA.w $0C4A
#_07A4BC: ORA.w $0C4B
#_07A4BF: ORA.w $0C4C
#_07A4C2: BNE .exit

#_07A4C4: LDX.b #$01
#_07A4C6: JSR CheckMagicCost
#_07A4C9: BCC .exit

#_07A4CB: LDA.b #$08 ; LINKSTATE 08
#_07A4CD: STA.b $5D

#_07A4CF: LDA.b #$01
#_07A4D1: TSB.b $50

#_07A4D3: LDA.w .anim_timer
#_07A4D6: STA.b $3D

#_07A4D8: STZ.w $031C
#_07A4DB: STZ.w $031D
#_07A4DE: STZ.w $0324

#_07A4E1: LDA.b #$23 ; SFX3.23
#_07A4E3: JSR PlayLinkSFX3Panned

.exit
#_07A4E6: RTS

;===================================================================================================

pool LinkItem_Ether LinkState_UsingEther

.anim_step
#_07A4E7: db $00, $01, $02, $03
#_07A4EB: db $00, $01, $02, $03
#_07A4EF: db $04, $05, $06, $07

.anim_timer
#_07A4F3: db   5,   5,   5,   5
#_07A4F7: db   5,   5,   5,   5
#_07A4FB: db   7,   7,   3,   3

pool off

;---------------------------------------------------------------------------------------------------

LinkState_UsingEther:
#_07A4FF: INC.w $0FC1

#_07A502: DEC.b $3D
#_07A504: BPL .exit

#_07A506: INC.w $031D

#_07A509: LDX.w $031D

#_07A50C: CPX.b #$0B
#_07A50E: BNE .not_last_step

#_07A510: LDX.b #$0B
#_07A512: BRA .continue

;---------------------------------------------------------------------------------------------------

.not_last_step
#_07A514: CPX.b #$04
#_07A516: BNE .skip_swish_sfx

#_07A518: PHX

#_07A519: LDA.b #$23 ; SFX3.23
#_07A51B: JSR PlayLinkSFX3Panned

#_07A51E: PLX

.skip_swish_sfx
#_07A51F: CPX.b #$09
#_07A521: BNE .skip_ding_sfx

#_07A523: LDA.b #$2C ; SFX2.2C
#_07A525: JSR PlayLinkSFX2Panned

.skip_ding_sfx
#_07A528: CPX.b #$0C
#_07A52A: BNE .continue

#_07A52C: LDA.b #$0A
#_07A52E: STA.w $031D

#_07A531: TAX

;---------------------------------------------------------------------------------------------------

.continue
#_07A532: LDA.w .anim_timer,X
#_07A535: STA.b $3D

#_07A537: LDA.w .anim_step,X
#_07A53A: STA.w $031C

#_07A53D: LDA.w $0324
#_07A540: BNE .exit

#_07A542: CPX.b #$0A
#_07A544: BNE .exit

#_07A546: LDA.b #$01
#_07A548: STA.w $0324

#_07A54B: LDY.b #$00
#_07A54D: LDA.b #$18 ; ANCILLA 18
#_07A54F: JSL AncillaAdd_EtherSpell

#_07A553: STZ.b $4D
#_07A555: STZ.w $0046

.exit
#_07A558: RTS

;===================================================================================================

LinkItem_Bombos:
#_07A559: JSR TestYButton
#_07A55C: BCC .exit

#_07A55E: LDA.b $3A
#_07A560: AND.b #$BF
#_07A562: STA.b $3A

#_07A564: LDA.b $6C
#_07A566: BNE .cannot_bombos

#_07A568: LDA.w $0FFC
#_07A56B: BNE .cannot_bombos

#_07A56D: LDA.w $0403
#_07A570: AND.b #$80
#_07A572: BNE .cannot_bombos

#_07A574: LDA.l $7EF359
#_07A578: INC A
#_07A579: AND.b #$FE
#_07A57B: BEQ .cannot_bombos

#_07A57D: LDA.l $7EF3D3
#_07A581: BEQ .allow_bombos

#_07A583: LDA.l $7EF3CC
#_07A587: CMP.b #$0D ; FOLLOWER 0D
#_07A589: BNE .allow_bombos

.cannot_bombos
#_07A58B: BRL LinkGoBeep

;---------------------------------------------------------------------------------------------------

.allow_bombos
#_07A58E: LDA.w $0C4A
#_07A591: ORA.w $0C4B
#_07A594: ORA.w $0C4C
#_07A597: BNE .exit

#_07A599: LDX.b #$01
#_07A59B: JSR CheckMagicCost
#_07A59E: BCC .exit

#_07A5A0: LDA.b #$09 ; LINKSTATE 09
#_07A5A2: STA.b $5D

#_07A5A4: LDA.b #$01
#_07A5A6: TSB.b $50

#_07A5A8: LDA.w .anim_timer
#_07A5AB: STA.b $3D

#_07A5AD: LDA.w .anim_step
#_07A5B0: STA.w $031C
#_07A5B3: STZ.w $031D

#_07A5B6: STZ.w $0324

#_07A5B9: LDA.b #$23 ; SFX3.23
#_07A5BB: JSR PlayLinkSFX3Panned

.exit
#_07A5BE: RTS

;===================================================================================================

pool LinkItem_Bombos LinkState_UsingBombos

.anim_step
#_07A5BF: db $00, $01, $02, $03
#_07A5C3: db $00, $01, $02, $03
#_07A5C7: db $08, $09, $0A, $0B
#_07A5CB: db $0C, $0A, $08, $0D
#_07A5CF: db $0E, $0F, $10, $11

.anim_timer
#_07A5D3: db   5,   5,   5,   5
#_07A5D7: db   5,   5,   5,   5
#_07A5DB: db   3,   3,   3,   3
#_07A5DF: db   3,   7,   1,   1
#_07A5E3: db   1,   1,   1,  13

pool off

;---------------------------------------------------------------------------------------------------

LinkState_UsingBombos:
#_07A5E7: INC.w $0FC1

#_07A5EA: DEC.b $3D
#_07A5EC: BPL .exit

#_07A5EE: INC.w $031D

#_07A5F1: LDX.w $031D
#_07A5F4: CPX.b #$04
#_07A5F6: BNE .skip_swish_sfx

#_07A5F8: PHX

#_07A5F9: LDA.b #$23 ; SFX3.23
#_07A5FB: JSR PlayLinkSFX3Panned

#_07A5FE: PLX

.skip_swish_sfx
#_07A5FF: CPX.b #$0A
#_07A601: BNE .skip_ping_sfx

#_07A603: PHX

#_07A604: LDA.b #$2C ; SFX2.2C
#_07A606: JSR PlayLinkSFX2Panned

#_07A609: PLX

;---------------------------------------------------------------------------------------------------

.skip_ping_sfx
#_07A60A: CPX.b #$14
#_07A60C: BNE .dont_reset_step

#_07A60E: LDA.b #$13
#_07A610: STA.w $031D

#_07A613: TAX

.dont_reset_step
#_07A614: LDA.w .anim_timer,X
#_07A617: STA.b $3D

#_07A619: LDA.w .anim_step,X
#_07A61C: STA.w $031C

#_07A61F: LDA.w $0324
#_07A622: BNE .exit

#_07A624: CPX.b #$13
#_07A626: BNE .exit

#_07A628: LDA.b #$01
#_07A62A: STA.w $0324

#_07A62D: LDY.b #$00
#_07A62F: LDA.b #$19 ; ANCILLA 19
#_07A631: JSL AncillaAdd_BombosSpell

#_07A635: STZ.b $4D
#_07A637: STZ.w $0046

.exit
#_07A63A: RTS

;===================================================================================================

LinkItem_Quake:
#_07A63B: JSR TestYButton
#_07A63E: BCC .exit

#_07A640: LDA.b $3A
#_07A642: AND.b #$BF
#_07A644: STA.b $3A

#_07A646: LDA.b $6C
#_07A648: BNE .cannot_quake

#_07A64A: LDA.w $0FFC
#_07A64D: BNE .cannot_quake

#_07A64F: LDA.w $0403
#_07A652: AND.b #$80
#_07A654: BNE .cannot_quake

#_07A656: LDA.l $7EF359
#_07A65A: INC A
#_07A65B: AND.b #$FE
#_07A65D: BEQ .cannot_quake

#_07A65F: LDA.l $7EF3D3
#_07A663: BEQ .allow_quake

#_07A665: LDA.l $7EF3CC
#_07A669: CMP.b #$0D ; FOLLOWER 0D
#_07A66B: BNE .allow_quake

.cannot_quake
#_07A66D: BRL LinkGoBeep

;---------------------------------------------------------------------------------------------------

.allow_quake
#_07A670: LDA.w $0C4A
#_07A673: ORA.w $0C4B
#_07A676: ORA.w $0C4C
#_07A679: BNE .exit

#_07A67B: LDX.b #$01
#_07A67D: JSR CheckMagicCost
#_07A680: BCC .exit

#_07A682: LDA.b #$0A ; LINKSTATE 0A
#_07A684: STA.b $5D

#_07A686: LDA.b #$01
#_07A688: TSB.b $50

#_07A68A: LDA.w .anim_timer
#_07A68D: STA.b $3D

#_07A68F: LDA.w .anim_step
#_07A692: STA.w $031C
#_07A695: STZ.w $031D

#_07A698: STZ.w $0324

#_07A69B: STZ.b $46

#_07A69D: LDA.b #$28
#_07A69F: STA.w $0362
#_07A6A2: STA.w $0363
#_07A6A5: STZ.w $0364

#_07A6A8: LDA.b #$23 ; SFX3.23
#_07A6AA: JSR PlayLinkSFX3Panned

.exit
#_07A6AD: RTS

;===================================================================================================

pool LinkItem_Quake LinkState_UsingQuake

.anim_step
#_07A6AE: db $00, $01, $02, $03
#_07A6B2: db $00, $01, $02, $03
#_07A6B6: db $12, $13, $14, $16

.anim_timer
#_07A6BA: db   5,   5,   5,   5
#_07A6BE: db   5,   5,   5,   5
#_07A6C2: db   5,   5,   5,  19

pool off

;---------------------------------------------------------------------------------------------------

LinkState_UsingQuake:
#_07A6C6: INC.w $0FC1

#_07A6C9: STZ.b $27
#_07A6CB: STZ.b $28

#_07A6CD: LDA.w $031D
#_07A6D0: CMP.b #$0A
#_07A6D2: BNE .not_ascending

#_07A6D4: LDA.w $0362
#_07A6D7: STA.b $29

#_07A6D9: LDA.w $0363
#_07A6DC: STA.w $02C7

#_07A6DF: LDA.w $0364
#_07A6E2: STA.b $24

#_07A6E4: LDA.b #$02
#_07A6E6: STA.b $00
#_07A6E8: STA.b $4D

#_07A6EA: JSR HandleChangeInZVelocity_preset
#_07A6ED: JSL FindArbitraryLandingSpot

#_07A6F1: LDA.b $29
#_07A6F3: STA.w $0362

#_07A6F6: LDA.w $02C7
#_07A6F9: STA.w $0363

#_07A6FC: LDA.b $24
#_07A6FE: STA.w $0364
#_07A701: BMI .still_ascending

;---------------------------------------------------------------------------------------------------

#_07A703: LDY.b #$14

#_07A705: LDA.b $29
#_07A707: BPL .done_ascending

#_07A709: LDY.b #$15

.done_ascending
#_07A70B: STY.w $031C

#_07A70E: BRA .exit

.not_ascending
#_07A710: DEC.b $3D
#_07A712: BPL .exit

;---------------------------------------------------------------------------------------------------

.still_ascending
#_07A714: INC.w $031D

#_07A717: LDX.w $031D
#_07A71A: CPX.b #$04
#_07A71C: BNE .skip_swish_sfx

#_07A71E: PHX

#_07A71F: LDA.b #$23 ; SFX3.23
#_07A721: JSR PlayLinkSFX3Panned

#_07A724: PLX

.skip_swish_sfx
#_07A725: CPX.b #$0A
#_07A727: BNE .skip_ping_sfx

#_07A729: PHX

#_07A72A: LDA.b #$2C ; SFX2.2C
#_07A72C: JSR PlayLinkSFX2Panned

#_07A72F: PLX

.skip_ping_sfx
#_07A730: CPX.b #$0B
#_07A732: BNE .skip_boom_sfx

#_07A734: LDA.b #$0C ; SFX2.0C
#_07A736: JSR PlayLinkSFX2Panned

;---------------------------------------------------------------------------------------------------

.skip_boom_sfx
#_07A739: CPX.b #$0C
#_07A73B: BNE .dont_reset_step

#_07A73D: LDA.b #$0B
#_07A73F: STA.w $031D

#_07A742: TAX

.dont_reset_step
#_07A743: LDA.w .anim_timer,X
#_07A746: STA.b $3D

#_07A748: LDA.w .anim_step,X
#_07A74B: STA.w $031C

#_07A74E: LDA.w $0324
#_07A751: BNE .exit

#_07A753: CPX.b #$0B
#_07A755: BNE .exit

#_07A757: LDA.b #$01
#_07A759: STA.w $0324

#_07A75C: LDY.b #$00
#_07A75E: LDA.b #$1C ; ANCILLA 1C
#_07A760: JSL AncillaAdd_QuakeSpell

#_07A764: STZ.b $4D
#_07A766: STZ.w $0046

.exit
#_07A769: RTS

;===================================================================================================

ActivateSpinAttack:
#_07A76A: LDY.b #$00
#_07A76C: TYX

#_07A76D: LDA.b #$2A ; ANCILLA 2A
#_07A76F: JSL AncillaAdd_SpinAttackInitSpark

;===================================================================================================

AnimateVictorySpin:
#_07A773: LDA.b #$03 ; LINKSTATE 03
#_07A775: STA.b $5D

#_07A777: LDA.b $2F
#_07A779: LSR A
#_07A77A: TAX

#_07A77B: LDA.w SpinAttack_data_offset,X
#_07A77E: STA.w $031E
#_07A781: TAX

#_07A782: LDA.w SpinAttack_anim_timer_a
#_07A785: STA.b $3D

#_07A787: LDA.w SpinAttack_anim_step,X
#_07A78A: STA.w $031C
#_07A78D: STZ.w $031D

#_07A790: LDA.b #$90
#_07A792: STA.b $3C

#_07A794: LDA.b #$01
#_07A796: TSB.b $50

#_07A798: LDA.b #$80
#_07A79A: STA.b $3A

#_07A79C: BRL LinkState_SpinAttack

;===================================================================================================

UNREACHABLE_07A79F:
#_07A79F: RTS

;===================================================================================================

AnimateVictorySpin_long:
#_07A7A0: PHB
#_07A7A1: PHK
#_07A7A2: PLB

#_07A7A3: JSR AnimateVictorySpin

#_07A7A6: PLB

#_07A7A7: RTL

;===================================================================================================

pool SpinAttack

.anim_step
#_07A7A8: db $0A, $0B, $0A, $06, $07, $08, $09, $02, $03, $04, $05, $0A ; up
#_07A7B4: db $00, $01, $00, $02, $03, $04, $05, $06, $07, $08, $09, $00 ; down
#_07A7C0: db $0C, $0D, $0C, $04, $05, $06, $07, $08, $09, $02, $03, $0C ; left
#_07A7CC: db $0E, $0F, $0E, $08, $09, $02, $03, $04, $05, $06, $07, $0E ; right

.anim_timer_a
#_07A7D8: db $03, $09, $03 ; up
#_07A7DB: db $01, $01, $01 ; down
#_07A7DE: db $01, $01, $01 ; left
#_07A7E1: db $01, $01, $05 ; right

.anim_timer_b
#_07A7E4: db $01, $05, $01 ; up
#_07A7E7: db $01, $01, $01 ; down
#_07A7EA: db $01, $01, $01 ; left
#_07A7ED: db $01, $01, $05 ; right

.data_offset
#_07A7F0: db $00 ; up
#_07A7F1: db $0C ; down
#_07A7F2: db $18 ; left
#_07A7F3: db $24 ; right

pool off

;===================================================================================================

LinkState_SpinAttack:
#_07A7F4: JSR CacheCameraPropertiesIfOutdoors

#_07A7F7: LDA.b $4D
#_07A7F9: BEQ .not_recoiling

;---------------------------------------------------------------------------------------------------

#_07A7FB: LDX.b #$04

.next_ancilla
#_07A7FD: LDA.w $0C4A,X
#_07A800: CMP.b #$2A ; ANCILLA 2A
#_07A802: BEQ .delete_ancilla

#_07A804: CMP.b #$2B ; ANCILLA 2B
#_07A806: BNE .skip_ancilla

.delete_ancilla
#_07A808: STZ.w $0C4A,X

.skip_ancilla
#_07A80B: DEX
#_07A80C: BPL .next_ancilla

;---------------------------------------------------------------------------------------------------

#_07A80E: STZ.b $25

#_07A810: LDA.b $50
#_07A812: AND.b #$FE
#_07A814: STA.b $50

#_07A816: STZ.b $3D
#_07A818: STZ.b $3C

#_07A81A: STZ.b $3A
#_07A81C: STZ.b $3B

#_07A81E: STZ.w $031C
#_07A821: STZ.w $031D

#_07A824: STZ.b $5E

#_07A826: LDA.b $1B
#_07A828: BNE .useless_branch

.useless_branch
#_07A82A: LDA.w $0360
#_07A82D: BEQ .not_electrocuted

#_07A82F: LDA.b $55
#_07A831: BEQ .no_cape

#_07A833: JSR ForciblyUnequipCape_quietly

;---------------------------------------------------------------------------------------------------

.no_cape
#_07A836: JSR ResetSwordAndItemUsage

#_07A839: LDA.b #$01
#_07A83B: STA.w $037B

#_07A83E: STZ.w $0300

#_07A841: LDA.b #$02
#_07A843: STA.b $3D

#_07A845: STZ.b $2E

#_07A847: LDA.b $67
#_07A849: AND.b #$F0
#_07A84B: STA.b $67

#_07A84D: LDA.b #$2B ; SFX3.2B
#_07A84F: JSR PlayLinkSFX3Panned

#_07A852: LDA.b #$07 ; LINKSTATE 07
#_07A854: STA.b $5D

#_07A856: BRL LinkState_Zapped

;---------------------------------------------------------------------------------------------------

.not_electrocuted
#_07A859: LDA.b #$02 ; LINKSTATE 02
#_07A85B: STA.b $5D

#_07A85D: BRL LinkState_Recoil

;---------------------------------------------------------------------------------------------------

.not_recoiling
#_07A860: LDA.b $46
#_07A862: BEQ .not_rebounding

#_07A864: JSR HandleRecoilAndTimer
#_07A867: BRA .done_rebound

.not_rebounding
#_07A869: STZ.b $67

#_07A86B: JSL HandleLinkVelocity

#_07A86F: JSR HandleLinkCardinalCollision

#_07A872: LDA.b #$03 ; LINKSTATE 03
#_07A874: STA.b $5D

#_07A876: STZ.w $0302

#_07A879: JSR HandleIndoorCameraAndDoors

;---------------------------------------------------------------------------------------------------

.done_rebound
#_07A87C: DEC.b $3D
#_07A87E: BPL EXIT_07A8DB

#_07A880: LDA.w $031D
#_07A883: INC A
#_07A884: STA.w $031D

#_07A887: CMP.b #$02
#_07A889: BNE .skip_swoosh_sfx

#_07A88B: LDA.b #$23 ; SFX3.23
#_07A88D: JSR PlayLinkSFX3Panned

;---------------------------------------------------------------------------------------------------

.skip_swoosh_sfx
#_07A890: LDA.w $031D
#_07A893: CMP.b #$0C
#_07A895: BNE .still_spinning

#_07A897: LDA.b $50
#_07A899: AND.b #$FE
#_07A89B: STA.b $50

#_07A89D: STZ.b $3D
#_07A89F: STZ.b $3C

#_07A8A1: STZ.w $031C
#_07A8A4: STZ.w $031D

#_07A8A7: LDA.b $5D
#_07A8A9: CMP.b #$1E ; LINKSTATE 1E
#_07A8AB: BEQ .victory_spin

#_07A8AD: LDX.b #$00

; This will always be 00.
#_07A8AF: LDA.b $3C
#_07A8B1: BEQ .dont_preserve_b_button

#_07A8B3: LDA.b $F0
#_07A8B5: AND.b #$80
#_07A8B7: TAX

.dont_preserve_b_button
#_07A8B8: STX.b $3A

.victory_spin
#_07A8BA: LDA.b #$00 ; LINKSTATE 00
#_07A8BC: STA.b $5D

#_07A8BE: BRA EXIT_07A8DB

;---------------------------------------------------------------------------------------------------

.still_spinning
#_07A8C0: LDA.w $031D
#_07A8C3: CLC
#_07A8C4: ADC.w $031E
#_07A8C7: TAX

#_07A8C8: LDA.w SpinAttack_anim_step,X
#_07A8CB: STA.w $031C

#_07A8CE: LDX.w $031D

#_07A8D1: LDY.w SpinAttack_anim_timer_b,X
#_07A8D4: STY.b $3D

#_07A8D6: LDY.b #$08
#_07A8D8: JSR TileDetect_MainHandler

;---------------------------------------------------------------------------------------------------

#EXIT_07A8DB:
#_07A8DB: RTS

;===================================================================================================

UNREACHABLE_07A8DC:
#_07A8DC: LDY.b #$00
#_07A8DE: LDX.b #$01
#_07A8E0: LDA.b #$2A ; ANCILLA 2A
#_07A8E2: JSL AncillaAdd_SpinAttackInitSpark

#_07A8E6: LDA.b #$1E ; LINKSTATE 1E
#_07A8E8: STA.b $5D

#_07A8EA: LDA.b $2F
#_07A8EC: LSR A
#_07A8ED: TAX

#_07A8EE: LDA.w SpinAttack_data_offset,X
#_07A8F1: STA.w $031E

#_07A8F4: TAX

#_07A8F5: LDA.w SpinAttack_anim_timer_a
#_07A8F8: STA.b $3D

#_07A8FA: LDA.w SpinAttack_anim_step,X
#_07A8FD: STA.w $031C
#_07A900: STZ.w $031D

#_07A903: LDA.b #$01
#_07A905: TSB.b $50

#_07A907: BRL LinkState_SpinAttack

;===================================================================================================

LinkItem_Mirror:
#_07A90A: BIT.b $3A
#_07A90C: BVS .continue

#_07A90E: JSR TestYButton
#_07A911: BCC EXIT_07A8DB

; check for kiki
#_07A913: LDA.l $7EF3CC
#_07A917: CMP.b #$0A ; FOLLOWER 0A
#_07A919: BNE .continue

;---------------------------------------------------------------------------------------------------

#_07A91B: REP #$20

#_07A91D: LDA.w #$011F ; MESSAGE 011F
#_07A920: STA.w $1CF0

#_07A923: SEP #$20

#_07A925: JSL PrepAndDisplayMessage
#_07A929: BRL .exit

;---------------------------------------------------------------------------------------------------

.continue
#_07A92C: LDA.b $3A
#_07A92E: AND.b #$BF
#_07A930: STA.b $3A

#_07A932: LDA.b $6C
#_07A934: BNE LinkGoBeep

#_07A936: LDA.w $037F
#_07A939: BNE AttemptMirrorWarp

#_07A93B: LDA.b $1B
#_07A93D: BNE AttemptMirrorWarp

#_07A93F: LDA.b $8A
#_07A941: AND.b #$40
#_07A943: BNE AttemptMirrorWarp

;===================================================================================================

#LinkGoBeep:
#_07A945: LDA.b #$3C ; SFX2.3C
#_07A947: JSR PlayLinkSFX2Panned

#_07A94A: BRA .exit

;===================================================================================================

#AttemptMirrorWarp:
#_07A94C: LDA.b $1B
#_07A94E: BEQ .overworld

#_07A950: LDA.w $0FFC
#_07A953: BNE .exit

#_07A955: STZ.w $05FC
#_07A958: STZ.w $05FD

#_07A95B: JSL MirrorAndSaveRoomFlags

#_07A95F: BRA .exit

;---------------------------------------------------------------------------------------------------

.overworld
#_07A961: LDA.b $10
#_07A963: CMP.b #$0B
#_07A965: BEQ .exit

; cache dark worldness
#_07A967: LDA.b $8A
#_07A969: AND.b #$40
#_07A96B: STA.b $7B

#_07A96D: BEQ .no_mirror_portal

#_07A96F: LDA.b $20
#_07A971: STA.w $1ADF

#_07A974: LDA.b $21
#_07A976: STA.w $1AEF

#_07A979: LDA.b $22
#_07A97B: STA.w $1ABF

#_07A97E: LDA.b $23
#_07A980: STA.w $1ACF

.no_mirror_portal
#_07A983: LDA.b #$23

;---------------------------------------------------------------------------------------------------

#SetGameModeLikeMirror:
#_07A985: STA.b $11

#_07A987: STZ.w $03F8

#_07A98A: LDA.b #$01
#_07A98C: STA.w $02DB

#_07A98F: STZ.b $B0

#_07A991: STZ.b $27
#_07A993: STZ.b $28

#_07A995: LDA.b #$14 ; LINKSTATE 14
#_07A997: STA.b $5D

.exit
#_07A999: RTS

;===================================================================================================

LinkState_CrossingWorlds:
#_07A99A: JSL ResetLinkProperties_B

#_07A99E: JSR TileCheckForMirrorBonk

; check for world and original world
#_07A9A1: LDA.b $8A
#_07A9A3: AND.b #$40
#_07A9A5: CMP.b $7B
#_07A9A7: BNE .worlds_dont_match

#_07A9A9: BRL .dont_mirror_bonk

;---------------------------------------------------------------------------------------------------

.worlds_dont_match
#_07A9AC: LDA.b $0C
#_07A9AE: ORA.b $0E
#_07A9B0: STA.b $00

#_07A9B2: AND.b #$0C
#_07A9B4: BEQ .dont_mirror_bonk

#_07A9B6: LDA.b $00
#_07A9B8: AND.b #$03
#_07A9BA: BNE .mirror_bonk

#_07A9BC: LDA.b $00
#_07A9BE: AND.b #$0F
#_07A9C0: BEQ .dont_mirror_bonk

;---------------------------------------------------------------------------------------------------

#_07A9C2: LDX.b #$03
#_07A9C4: LDY.b #$00

.next_shift_a
#_07A9C6: LSR A
#_07A9C7: BCC .no_bit_a

#_07A9C9: INY

.no_bit_a
#_07A9CA: DEX
#_07A9CB: BPL .next_shift_a

#_07A9CD: CPY.b #$02
#_07A9CF: BCC .dont_mirror_bonk

.mirror_bonk
#_07A9D1: LDA.b #$2C
#_07A9D3: BRA SetGameModeLikeMirror

.dont_mirror_bonk
#_07A9D5: LDY.b #$00
#_07A9D7: LDX.b #$03

#_07A9D9: LDA.w $0341

.next_shift_b
#_07A9DC: LSR A
#_07A9DD: BCC .no_bit_b

#_07A9DF: INY

.no_bit_b
#_07A9E0: DEX
#_07A9E1: BPL .next_shift_b

#_07A9E3: CPY.b #$02
#_07A9E5: BCC .dont_reset_swim_or_cape

;---------------------------------------------------------------------------------------------------

#_07A9E7: LDA.l $7EF356
#_07A9EB: BNE .have_flippers

; bonk if worlds didn't match
#_07A9ED: LDA.b $8A
#_07A9EF: AND.b #$40
#_07A9F1: CMP.b $7B
#_07A9F3: BNE .mirror_bonk

#_07A9F5: JSL CheckAbilityToSwim

#_07A9F9: BRA .dont_reset_swim_or_cape

;---------------------------------------------------------------------------------------------------

.have_flippers
#_07A9FB: LDA.b #$01
#_07A9FD: STA.w $0345

#_07AA00: LDA.b $26
#_07AA02: STA.w $0340

#_07AA05: JSL ResetSwimmingState

#_07AA09: LDA.b #$04 ; LINKSTATE 04
#_07AA0B: STA.b $5D

#_07AA0D: JSR ForciblyUnequipCape_quietly

#_07AA10: STZ.b $5E

#_07AA12: BRA .exit

;---------------------------------------------------------------------------------------------------

.dont_reset_swim_or_cape
#_07AA14: LDA.w $0345
#_07AA17: BEQ .not_deep_water

#_07AA19: STZ.w $0345

#_07AA1C: LDA.w $0340
#_07AA1F: STA.b $26

.not_deep_water
#_07AA21: STZ.w $0374
#_07AA24: STZ.w $0372

#_07AA27: STZ.b $5E

#_07AA29: STZ.b $3A
#_07AA2B: STZ.b $3C

#_07AA2D: STZ.b $50

#_07AA2F: STZ.w $032B

#_07AA32: STZ.b $27

;---------------------------------------------------------------------------------------------------

; check for world and original world
#_07AA34: LDA.b $8A
#_07AA36: AND.b #$40
#_07AA38: CMP.b $7B
#_07AA3A: BEQ .worlds_match

#_07AA3C: STZ.w $04AC
#_07AA3F: STZ.w $04AD

.worlds_match
#_07AA42: LDY.b #$00 ; LINKSTATE 00

#_07AA44: LDA.l $7EF357
#_07AA48: BNE .not_pearlless_in_darkworld

#_07AA4A: LDA.b $8A
#_07AA4C: AND.b #$40
#_07AA4E: BEQ .not_pearlless_in_darkworld

; become bunny
#_07AA50: LDY.b #$17 ; LINKSTATE 17

.not_pearlless_in_darkworld
#_07AA52: STY.b $5D

.exit
#_07AA54: RTS

;===================================================================================================

PerformDesertPrayer:
#_07AA55: LDA.b #$05
#_07AA57: STA.b $11

#_07AA59: LDA.b $10
#_07AA5B: STA.w $010C

#_07AA5E: LDA.b #$0E
#_07AA60: STA.b $10

#_07AA62: LDA.b #$01
#_07AA64: STA.w $0FC1

#_07AA67: LDA.b #$16
#_07AA69: STA.w $030B

#_07AA6C: STZ.w $030A

#_07AA6F: LDA.b #$02
#_07AA71: STA.w $0308

#_07AA74: LDA.b #$01
#_07AA76: TSB.b $50

#_07AA78: STZ.b $2E

#_07AA7A: LDA.b $67
#_07AA7C: AND.b #$F0
#_07AA7E: STA.b $67

#_07AA80: LDA.b #$11 ; SFX1.11
#_07AA82: STA.w $012D

#_07AA85: LDA.b #$F2 ; SONG F2 - half volume
#_07AA87: STA.w $012C

;---------------------------------------------------------------------------------------------------

#EXIT_07AA8A:
#_07AA8A: RTS

;===================================================================================================

HandleFollowersAfterMirroring:
#_07AA8B: PHB
#_07AA8C: PHK
#_07AA8D: PLB

#_07AA8E: LDY.b #$00
#_07AA90: JSR TileDetect_MainHandler

#_07AA93: STZ.b $2E

#_07AA95: LDA.l $7EF3CC
#_07AA99: CMP.b #$0C ; FOLLOWER 0C
#_07AA9B: BEQ .have_purple_chest

#_07AA9D: CMP.b #$0D ; FOLLOWER 0D
#_07AA9F: BNE .dont_have_superbomb

#_07AAA1: LDA.b #$FE
#_07AAA3: STA.w $04B4
#_07AAA6: STZ.w $04B5

;---------------------------------------------------------------------------------------------------

.have_purple_chest
#_07AAA9: LDA.l $7EF3D3
#_07AAAD: BEQ .check_for_pearl

#_07AAAF: LDA.b #$00
#_07AAB1: STA.l $7EF3D3

#_07AAB5: BRA .clear_follower

;---------------------------------------------------------------------------------------------------

.dont_have_superbomb
#_07AAB7: LDA.l $7EF3CC

; is it sign guy?
#_07AABB: CMP.b #$09 ; FOLLOWER 09
#_07AABD: BEQ .clear_follower

#_07AABF: CMP.b #$0A ; FOLLOWER 0A
#_07AAC1: BNE .not_kiki

.clear_follower
#_07AAC3: LDA.b #$00
#_07AAC5: STA.l $7EF3CC

#_07AAC9: BRA .check_for_pearl

;---------------------------------------------------------------------------------------------------

.not_kiki
#_07AACB: LDY.b #$07 ; FOLLOWER 07

#_07AACD: LDA.l $7EF3CC
#_07AAD1: CMP.b #$08 ; FOLLOWER 08
#_07AAD3: BEQ .smithy

#_07AAD5: LDY.b #$08 ; FOLLOWER 08

; or is it the frog?
#_07AAD7: CMP.b #$07 ; FOLLOWER 07
#_07AAD9: BNE .check_for_pearl

;---------------------------------------------------------------------------------------------------

.smithy
#_07AADB: TYA
#_07AADC: STA.l $7EF3CC
#_07AAE0: JSL LoadFollowerGraphics

#_07AAE4: LDY.b #$04
#_07AAE6: LDA.b #$40 ; ANCILLA 40
#_07AAE8: JSL AncillaAdd_DwarfPoof

;---------------------------------------------------------------------------------------------------

.check_for_pearl
#_07AAEC: LDA.l $7EF357
#_07AAF0: BNE .have_pearl

#_07AAF2: LDY.b #$04
#_07AAF4: LDA.b #$23 ; ANCILLA 23
#_07AAF6: JSL AncillaAdd_BunnyPoof

#_07AAFA: JSR ForciblyUnequipCape_quietly

#_07AAFD: STZ.w $02E2

#_07AB00: BRA .exit

.have_pearl
#_07AB02: LDA.b $55
#_07AB04: BEQ .exit

#_07AB06: JSR ForciblyUnequipCape

#_07AB09: STZ.w $02E2

.exit
#_07AB0C: PLB

#_07AB0D: RTL

;===================================================================================================

LinkItem_Hookshot:
; y press?
#_07AB0E: LDA.b $3A
#_07AB10: AND.b #$40
#_07AB12: BNE EXIT_07AB54

; in a door?
#_07AB14: LDA.b $6C
#_07AB16: BNE EXIT_07AB54

; grabbing?
#_07AB18: LDA.b $48
#_07AB1A: AND.b #$02
#_07AB1C: BNE EXIT_07AB54

#_07AB1E: JSR TestYButton
#_07AB21: BCC EXIT_07AB54

;---------------------------------------------------------------------------------------------------

#_07AB23: JSR ResetAllAcceleration

#_07AB26: STZ.w $0300

#_07AB29: LDA.b #$01
#_07AB2B: TSB.b $50

#_07AB2D: LDA.b #$07
#_07AB2F: STA.b $3D

#_07AB31: STZ.b $2E

#_07AB33: LDA.b $67
#_07AB35: AND.b #$F0
#_07AB37: STA.b $67

#_07AB39: LDA.w $037A
#_07AB3C: AND.b #$00
#_07AB3E: ORA.b #$04
#_07AB40: STA.w $037A

#_07AB43: LDA.b #$13 ; LINKSTATE 13
#_07AB45: STA.b $5D

#_07AB47: LDA.b #$01
#_07AB49: STA.w $037B

#_07AB4C: LDY.b #$03
#_07AB4E: LDA.b #$1F ; ANCILLA 1F
#_07AB50: JSL AncillaAdd_Hookshot

;---------------------------------------------------------------------------------------------------

#EXIT_07AB54:
#_07AB54: RTS

;===================================================================================================

Hookdrag_OffsetY:
#_07AB55: db $F8 ; up
#_07AB56: db $F0 ; down
#_07AB57: db $00 ; left
#_07AB58: db $00 ; right

Hookdrag_OffsetX:
#_07AB59: db $00 ; up
#_07AB5A: db $00 ; down
#_07AB5B: db $04 ; left
#_07AB5C: db $F4 ; right

;===================================================================================================

HookdragSpeeds_Vertical:
#_07AB5D: db $C0 ; up
#_07AB5E: db $40 ; down
#_07AB5F: db $00 ; left
#_07AB60: db $00 ; right

HookdragSpeeds_Horizontal:
#_07AB61: db $00 ; up
#_07AB62: db $00 ; down
#_07AB63: db $C0 ; left
#_07AB64: db $40 ; right

;===================================================================================================

LinkState_Hookshotting:
#_07AB65: STZ.w $0373
#_07AB68: STZ.b $4D
#_07AB6A: STZ.b $46

#_07AB6C: LDX.b #$04

.next_ancilla_check
#_07AB6E: LDA.w $0C4A,X
#_07AB71: CMP.b #$1F ; ANCILLA 1F
#_07AB73: BEQ .found_hookshot

#_07AB75: DEX
#_07AB76: BPL .next_ancilla_check

; handle hook timer
#_07AB78: DEC.b $3D

#_07AB7A: LDA.b $3D
#_07AB7C: BPL EXIT_07AB54

;---------------------------------------------------------------------------------------------------

; reset link state
#_07AB7E: STZ.w $0300
#_07AB81: STZ.w $037B

#_07AB84: LDA.b $3A
#_07AB86: AND.b #$BF
#_07AB88: STA.b $3A

#_07AB8A: LDA.b $50
#_07AB8C: AND.b #$FE
#_07AB8E: STA.b $50

#_07AB90: LDA.w $037A
#_07AB93: AND.b #$FB
#_07AB95: STA.w $037A

#_07AB98: LDA.b #$00 ; LINKSTATE 00
#_07AB9A: STA.b $5D

#_07AB9C: LDA.b $3C
#_07AB9E: CMP.b #$09
#_07ABA0: BCC .exit

#_07ABA2: LDA.b #$09
#_07ABA4: STA.b $3C

.exit
#_07ABA6: RTS

;---------------------------------------------------------------------------------------------------

.found_hookshot
#_07ABA7: DEC.b $3D
#_07ABA9: BPL .timer_going

#_07ABAB: STZ.b $3D

.timer_going
#_07ABAD: LDA.w $037E
#_07ABB0: BNE .being_dragged

#_07ABB2: LDA.b $20
#_07ABB4: STA.b $3E

#_07ABB6: LDA.b $22
#_07ABB8: STA.b $3F

#_07ABBA: STZ.b $30
#_07ABBC: STZ.b $31

#_07ABBE: BRL HandleLinkCardinalCollision

;---------------------------------------------------------------------------------------------------

.being_dragged
#_07ABC1: STZ.w $02F5

#_07ABC4: LDX.w $039D

#_07ABC7: DEC.w $0C5E,X
#_07ABCA: BPL .keep_hooking

#_07ABCC: STZ.w $0C5E,X

#_07ABCF: BRL DeleteHookshot

;---------------------------------------------------------------------------------------------------

.keep_hooking
#_07ABD2: LDA.w $0BFA,X
#_07ABD5: STA.b $00

#_07ABD7: LDA.w $0C0E,X
#_07ABDA: STA.b $01

#_07ABDC: LDA.w $0C04,X
#_07ABDF: STA.b $02

#_07ABE1: LDA.w $0C18,X
#_07ABE4: STA.b $03

#_07ABE6: LDY.w $0C72,X

#_07ABE9: STZ.b $05

#_07ABEB: LDA.w Hookdrag_OffsetY,Y
#_07ABEE: STA.b $04
#_07ABF0: BPL .positive_a

#_07ABF2: LDA.b #$FF
#_07ABF4: STA.b $05

.positive_a
#_07ABF6: STZ.b $07

#_07ABF8: LDA.w Hookdrag_OffsetX,Y
#_07ABFB: STA.b $06
#_07ABFD: BPL .positive_b

#_07ABFF: LDA.b #$FF
#_07AC01: STA.b $07

.positive_b
#_07AC03: STZ.b $27
#_07AC05: STZ.b $28

#_07AC07: LDA.w HookdragSpeeds_Vertical,Y
#_07AC0A: STA.b $08
#_07AC0C: STZ.b $09

#_07AC0E: LDA.w HookdragSpeeds_Horizontal,Y
#_07AC11: STA.b $0A
#_07AC13: STZ.b $0B

;---------------------------------------------------------------------------------------------------

#_07AC15: REP #$20

#_07AC17: LDA.b $00
#_07AC19: CLC
#_07AC1A: ADC.b $04
#_07AC1C: SEC
#_07AC1D: SBC.b $20
#_07AC1F: BPL .positive_y

#_07AC21: EOR.w #$FFFF
#_07AC24: INC A

; TODO analyze
.positive_y
#_07AC25: CMP.w #$0002
#_07AC28: BCC .not_limited_y

#_07AC2A: LDA.b $27
#_07AC2C: AND.w #$FF00
#_07AC2F: ORA.b $08
#_07AC31: STA.b $27

.not_limited_y
#_07AC33: LDA.b $02
#_07AC35: CLC
#_07AC36: ADC.b $06
#_07AC38: SEC
#_07AC39: SBC.b $22
#_07AC3B: BPL .positive_x

#_07AC3D: EOR.w #$FFFF
#_07AC40: INC A

.positive_x
#_07AC41: CMP.w #$0002
#_07AC44: BCC .not_limited_x

#_07AC46: LDA.b $28
#_07AC48: AND.w #$FF00
#_07AC4B: ORA.b $0A
#_07AC4D: STA.b $28

.not_limited_x
#_07AC4F: SEP #$20

#_07AC51: LDA.b $27
#_07AC53: ORA.b $28
#_07AC55: BEQ DeleteHookshot

#_07AC57: BRL DragLinkWithHookshot

;===================================================================================================

DeleteHookshot:
#_07AC5A: LDX.w $039D

#_07AC5D: STZ.w $0C4A,X

#_07AC60: LDA.w $02D3
#_07AC63: STA.w $02D1

#_07AC66: LDA.b #$00 ; LINKSTATE 00
#_07AC68: STA.b $5D

#_07AC6A: STZ.w $0300
#_07AC6D: STZ.b $3D
#_07AC6F: STZ.w $037E

#_07AC72: LDA.b $3A
#_07AC74: AND.b #$BF
#_07AC76: STA.b $3A

#_07AC78: LDA.b $50
#_07AC7A: AND.b #$FE
#_07AC7C: STA.b $50

#_07AC7E: LDA.w $037A
#_07AC81: AND.b #$FB
#_07AC83: STA.w $037A

#_07AC86: STZ.w $037B

; !WEIRD and !DUMB code
#_07AC89: LDA.w $03A4,X
#_07AC8C: BEQ .no_layer_changing

#_07AC8E: LDA.w $0476
#_07AC91: EOR.b #$01
#_07AC93: STA.w $0476

#_07AC96: DEC.b $A4

#_07AC98: LDA.w $044A
#_07AC9B: BNE .dont_go_down_1_room

#_07AC9D: LDA.b $A0
#_07AC9F: STA.w $048E

#_07ACA2: CLC
#_07ACA3: ADC.b #$10
#_07ACA5: STA.b $A0

.dont_go_down_1_room
#_07ACA7: LDA.w $044A
#_07ACAA: CMP.b #$02
#_07ACAC: BEQ .dont_swap_layer

#_07ACAE: LDA.b $EE
#_07ACB0: EOR.b #$01
#_07ACB2: STA.b $EE

.dont_swap_layer
#_07ACB4: JSL FullyUpdateRoomFlags

;---------------------------------------------------------------------------------------------------

.no_layer_changing
#_07ACB8: JSR TileDetect_BigArea

#_07ACBB: LDA.w $0341
#_07ACBE: AND.b #$0F
#_07ACC0: BEQ .not_on_deep_water

#_07ACC2: LDA.w $0345
#_07ACC5: BNE .not_on_deep_water

;---------------------------------------------------------------------------------------------------

#_07ACC7: LDA.b #$01
#_07ACC9: STA.w $0345

#_07ACCC: LDA.b $26
#_07ACCE: STA.w $0340

#_07ACD1: JSL ResetSwimmingState

#_07ACD5: LDA.b #$15 ; ANCILLA 15
#_07ACD7: LDY.b #$00
#_07ACD9: JSL AncillaAdd_Splash

#_07ACDD: LDA.b #$04 ; LINKSTATE 04
#_07ACDF: STA.b $5D

#_07ACE1: JSR ForciblyUnequipCape_quietly

#_07ACE4: STZ.w $0308
#_07ACE7: STZ.w $0309
#_07ACEA: STZ.w $0376
#_07ACED: STZ.b $5E

#_07ACEF: LDA.b $1B
#_07ACF1: BEQ .dont_set_to_water_layer

#_07ACF3: LDA.b #$01
#_07ACF5: STA.b $EE

.dont_set_to_water_layer
#_07ACF7: BRA .continue_after_tiles

;---------------------------------------------------------------------------------------------------

.not_on_deep_water
; TODO ANALYZE
#_07ACF9: LDA.b $59
#_07ACFB: AND.b #$0F
#_07ACFD: BEQ .not_pit

#_07ACFF: LDA.b #$09
#_07AD01: STA.b $5C

#_07AD03: STZ.b $5A

#_07AD05: LDA.b #$01
#_07AD07: STA.b $5B

#_07AD09: LDA.b #$01 ; LINKSTATE 01
#_07AD0B: STA.b $5D

#_07AD0D: BRA .continue_after_tiles

;---------------------------------------------------------------------------------------------------

.not_pit
#_07AD0F: LDA.b $20
#_07AD11: STA.b $3E

#_07AD13: LDA.b $22
#_07AD15: STA.b $3F

#_07AD17: LDA.b $21
#_07AD19: STA.b $40

#_07AD1B: LDA.b $23
#_07AD1D: STA.b $41

#_07AD1F: JSR HandleLinkCardinalCollision

#_07AD22: BRL DragLinkWithHookshot_go_backwards

;---------------------------------------------------------------------------------------------------

.continue_after_tiles
#_07AD25: LDA.b $3C
#_07AD27: CMP.b #$09
#_07AD29: BCC .no_spin_charge

#_07AD2B: LDA.b #$09
#_07AD2D: STA.b $3C

.no_spin_charge
#_07AD2F: BRL EXIT_07ADA6

;===================================================================================================

DragLinkWithHookshot:
#_07AD32: JSL FindArbitraryLandingSpot

#_07AD36: LDY.b #$05
#_07AD38: JSR TileDetect_MainHandler

#_07AD3B: LDA.b $1B
#_07AD3D: BEQ .dont_flag_layers

;---------------------------------------------------------------------------------------------------

#_07AD3F: LDA.w $036D

#_07AD42: LSR A
#_07AD43: LSR A
#_07AD44: LSR A
#_07AD45: LSR A

#_07AD46: ORA.w $036D
#_07AD49: ORA.w $036E

#_07AD4C: AND.b #$01
#_07AD4E: BEQ .dont_flag_layers

#_07AD50: DEC.w $03F9
#_07AD53: BPL .dont_flag_layers

#_07AD55: LDA.b #$03
#_07AD57: STA.w $03F9

#_07AD5A: LDA.w $037E
#_07AD5D: EOR.b #$02
#_07AD5F: STA.w $037E

;---------------------------------------------------------------------------------------------------

.dont_flag_layers
#_07AD62: STZ.w $0351

#_07AD65: LDA.w $037E
#_07AD68: AND.b #$02
#_07AD6A: BNE .go_backwards

#_07AD6C: LDA.w $0357
#_07AD6F: AND.b #$01
#_07AD71: BEQ .not_thick_grass

#_07AD73: LDA.b #$02
#_07AD75: STA.w $0351

#_07AD78: JSR GetPermissionForSloshSounds
#_07AD7B: BCS .go_backwards

#_07AD7D: LDA.b #$1A ; SFX2.1A
#_07AD7F: JSR PlayLinkSFX2Panned

#_07AD82: BRA .go_backwards

.not_thick_grass
#_07AD84: LDA.w $0359
#_07AD87: ORA.w $0341
#_07AD8A: AND.b #$01
#_07AD8C: BEQ .go_backwards

#_07AD8E: INC.w $0351

; different SFX in mire
#_07AD91: LDA.b $8A
#_07AD93: CMP.b #$70 ; OW 70
#_07AD95: BNE .not_mire

#_07AD97: LDA.b #$1B ; SFX2.1B
#_07AD99: JSR PlayLinkSFX2Panned

#_07AD9C: BRA .go_backwards

.not_mire
#_07AD9E: LDA.b #$1C ; SFX2.1C
#_07ADA0: JSR PlayLinkSFX2Panned

.go_backwards
#_07ADA3: JSR HandleIndoorCameraAndDoors

;---------------------------------------------------------------------------------------------------

#EXIT_07ADA6:
#_07ADA6: RTS

;===================================================================================================
; How long each tick of the tock lasts for cape.
;===================================================================================================
CapeSapTimers:
#_07ADA7: db $04 ; normal
#_07ADA8: db $08 ; 1/2 magic
#_07ADA9: db $08 ; 1/4 magic

;===================================================================================================

LinkItem_Cape:
#_07ADAA: LDA.b $55
#_07ADAC: BNE .cape_active

#_07ADAE: DEC.w $02E2
#_07ADB1: BMI .delay_active

#_07ADB3: LDA.b $67
#_07ADB5: AND.b #$F0
#_07ADB7: STA.b $67

#_07ADB9: BRL HaltLinkWhenUsingItems

.delay_active
#_07ADBC: STZ.w $02E2

#_07ADBF: LDA.b $6C
#_07ADC1: BNE EXIT_07ADA6

#_07ADC3: JSR TestYButton
#_07ADC6: BCC EXIT_07ADA6

;---------------------------------------------------------------------------------------------------

#_07ADC8: LDA.b $3A
#_07ADCA: AND.b #$BF
#_07ADCC: STA.b $3A

#_07ADCE: LDA.l $7EF36E
#_07ADD2: BEQ CannotEquipCape

#_07ADD4: STZ.w $0300

#_07ADD7: LDA.b #$01
#_07ADD9: STA.b $55

#_07ADDB: LDA.l $7EF37B
#_07ADDF: TAY

#_07ADE0: LDA.w CapeSapTimers,Y
#_07ADE3: STA.b $4C

#_07ADE5: LDA.b #$14
#_07ADE7: STA.w $02E2

#_07ADEA: LDY.b #$04
#_07ADEC: LDA.b #$23 ; ANCILLA 23
#_07ADEE: JSL AncillaAdd_CapePoof

#_07ADF2: LDA.b #$14 ; SFX2.14
#_07ADF4: JSR PlayLinkSFX2Panned

#_07ADF7: BRA .exit

;===================================================================================================

.cape_active
#_07ADF9: LDA.b #$01
#_07ADFB: STA.w $037B

#_07ADFE: JSR HaltLinkWhenUsingItems

#_07AE01: LDA.b $67
#_07AE03: AND.b #$F0
#_07AE05: STA.b $67

#_07AE07: DEC.b $4C

#_07AE09: LDA.b $4C
#_07AE0B: BNE .dont_sap

#_07AE0D: LDA.l $7EF37B
#_07AE11: TAY

#_07AE12: LDA.w CapeSapTimers,Y
#_07AE15: STA.b $4C

#_07AE17: LDA.l $7EF36E
#_07AE1B: DEC A
#_07AE1C: STA.l $7EF36E

#_07AE20: BEQ ForciblyUnequipCape

.dont_sap
#_07AE22: DEC.w $02E2
#_07AE25: BPL .exit

#_07AE27: STZ.w $02E2

#_07AE2A: LDA.b $F4
#_07AE2C: AND.b #$40
#_07AE2E: BEQ .exit

;===================================================================================================

#ForciblyUnequipCape:
#_07AE30: LDY.b #$04
#_07AE32: LDA.b #$23 ; ANCILLA 23
#_07AE34: JSL AncillaAdd_CapePoof

#_07AE38: LDA.b #$15 ; SFX2.15
#_07AE3A: JSR PlayLinkSFX2Panned

;===================================================================================================

#ForciblyUnequipCape_quietly:
#_07AE3D: LDA.b #$20
#_07AE3F: STA.w $02E2

#_07AE42: STZ.w $037B
#_07AE45: STZ.b $55
#_07AE47: STZ.w $0360

.exit
#_07AE4A: RTS

;===================================================================================================

CannotEquipCape:
#_07AE4B: BRL DisplayNoMagicMessage

;===================================================================================================
; Seems to just be an extra guard, as deleting the routine doesn't let you move.
;===================================================================================================
HaltLinkWhenUsingItems:
; Allow movement if conveyor room like ice palace.
#_07AE4E: LDA.b $AD
#_07AE50: CMP.b #$02
#_07AE52: BNE .skip

#_07AE54: LDA.w $0322
#_07AE57: AND.b #$03
#_07AE59: CMP.b #$03
#_07AE5B: BNE .skip

#_07AE5D: STZ.b $30
#_07AE5F: STZ.b $31

#_07AE61: STZ.b $67

#_07AE63: STZ.b $2A
#_07AE65: STZ.b $2B

#_07AE67: STZ.b $6B

.skip
#_07AE69: LDA.w $02F5
#_07AE6C: BEQ EXIT_07AE70

#_07AE6E: STZ.b $67

;---------------------------------------------------------------------------------------------------

#EXIT_07AE70:
#_07AE70: RTS

;===================================================================================================
; Handles the cape's passive magic drain effect
;===================================================================================================
HandleCapePassive_LiftCheck:
#_07AE71: LDA.w $0308
#_07AE74: AND.b #$80
#_07AE76: BEQ EXIT_07AE70

;===================================================================================================

HandleCapePassive:
#_07AE78: LDA.b $55
#_07AE7A: BEQ EXIT_07AE70

#_07AE7C: LDA.w $0304
#_07AE7F: CMP.b #$13 ; are we using cape?
#_07AE81: BNE EXIT_07AE70

#_07AE83: CMP.w $0303
#_07AE86: BNE .unequip

#_07AE88: DEC.b $4C

#_07AE8A: LDA.b $4C
#_07AE8C: BNE .exit

#_07AE8E: LDA.l $7EF37B
#_07AE92: TAY

#_07AE93: LDA.w CapeSapTimers,Y
#_07AE96: STA.b $4C

; check if we have no magic, both before and after draining
#_07AE98: LDA.l $7EF36E
#_07AE9C: BEQ .exit

#_07AE9E: DEC A
#_07AE9F: STA.l $7EF36E
#_07AEA3: BNE .exit ; magic left, so don't unequip

.unequip
#_07AEA5: JSR ForciblyUnequipCape

.exit
#_07AEA8: RTS

;===================================================================================================

LinkItem_CaneOfSomaria:
#_07AEA9: BIT.b $3A
#_07AEAB: BVS .in_action

#_07AEAD: LDA.w $02F5
#_07AEB0: BNE EXIT_07AE70

#_07AEB2: LDA.b $6C
#_07AEB4: BNE EXIT_07AE70

#_07AEB6: JSR TestYButton
#_07AEB9: BCC EXIT_07AE70

;---------------------------------------------------------------------------------------------------

#_07AEBB: LDX.b #$04

.next_ancilla
#_07AEBD: LDA.w $0C4A,X
#_07AEC0: CMP.b #$2C ; ANCILLA 2C
#_07AEC2: BEQ .found_block

#_07AEC4: DEX
#_07AEC5: BPL .next_ancilla

#_07AEC7: LDX.b #$04
#_07AEC9: JSR CheckMagicCost
#_07AECC: BCC EXIT_07AE70

;---------------------------------------------------------------------------------------------------

.found_block
#_07AECE: LDA.b #$01
#_07AED0: STA.w $0350

#_07AED3: LDY.b #$01
#_07AED5: LDA.b #$2C ; ANCILLA 2C
#_07AED7: JSL AncillaAdd_SomariaBlock

#_07AEDB: LDA.w RodAndCaneAnimationTimer
#_07AEDE: STA.b $3D

#_07AEE0: STZ.b $2E
#_07AEE2: STZ.w $0300
#_07AEE5: STZ.w $0301

#_07AEE8: LDA.b #$08
#_07AEEA: TSB.w $037A

;---------------------------------------------------------------------------------------------------

.in_action
#_07AEED: JSR HaltLinkWhenUsingItems

#_07AEF0: LDA.b $67
#_07AEF2: AND.b #$F0
#_07AEF4: STA.b $67

#_07AEF6: DEC.b $3D
#_07AEF8: BPL EXIT_07AF23

#_07AEFA: LDA.w $0300
#_07AEFD: INC A
#_07AEFE: STA.w $0300

#_07AF01: TAX

#_07AF02: LDA.w RodAndCaneAnimationTimer,X
#_07AF05: STA.b $3D

#_07AF07: CPX.b #$03
#_07AF09: BNE EXIT_07AF23

;---------------------------------------------------------------------------------------------------

#_07AF0B: STZ.b $5E
#_07AF0D: STZ.w $0300

#_07AF10: STZ.b $3D
#_07AF12: STZ.w $0350

#_07AF15: LDA.b $3A
#_07AF17: AND.b #$BF
#_07AF19: STA.b $3A

#_07AF1B: LDA.w $037A
#_07AF1E: AND.b #$F7
#_07AF20: STA.w $037A

;---------------------------------------------------------------------------------------------------

#EXIT_07AF23:
#_07AF23: RTS

;===================================================================================================

ByrnaAnimationTimers:
#_07AF24: db 19
#_07AF25: db  7
#_07AF26: db 13

;===================================================================================================

LinkItem_CaneOfByrna:
#_07AF27: JSR SearchForByrnaSpark
#_07AF2A: BCS EXIT_07AF23

#_07AF2C: BIT.b $3A
#_07AF2E: BVS .in_action

#_07AF30: LDA.b $6C
#_07AF32: BNE EXIT_07AF23

#_07AF34: JSR TestYButton
#_07AF37: BCC EXIT_07AF23

;---------------------------------------------------------------------------------------------------

#_07AF39: LDX.b #$08
#_07AF3B: JSR CheckMagicCost
#_07AF3E: BCC .lack_magic

#_07AF40: LDY.b #$00
#_07AF42: LDA.b #$30 ; ANCILLA 30
#_07AF44: JSL AncillaAdd_CaneOfByrnaInitSpark

#_07AF48: STZ.b $79

#_07AF4A: LDA.w ByrnaAnimationTimers
#_07AF4D: STA.b $3D

#_07AF4F: STZ.w $030D
#_07AF52: STZ.w $0300

#_07AF55: LDA.b #$08
#_07AF57: STA.w $037A

#_07AF5A: LDA.b #$01
#_07AF5C: TSB.b $50

#_07AF5E: STZ.b $2E

;---------------------------------------------------------------------------------------------------

.in_action
#_07AF60: JSR HaltLinkWhenUsingItems

#_07AF63: LDA.b $67
#_07AF65: AND.b #$F0
#_07AF67: STA.b $67

#_07AF69: DEC.b $3D
#_07AF6B: BPL EXIT_07AF9D

#_07AF6D: LDX.w $0300
#_07AF70: INX
#_07AF71: STX.w $0300

#_07AF74: LDA.w ByrnaAnimationTimers,X
#_07AF77: STA.b $3D

#_07AF79: CPX.b #$01
#_07AF7B: BNE .skip_sfx

#_07AF7D: PHX

#_07AF7E: LDA.b #$2A ; SFX3.2A
#_07AF80: JSR PlayLinkSFX3Panned

#_07AF83: PLX

.skip_sfx
#_07AF84: CPX.b #$03
#_07AF86: BNE EXIT_07AF9D

;---------------------------------------------------------------------------------------------------

.lack_magic
#_07AF88: STZ.w $030D
#_07AF8B: STZ.w $0300

#_07AF8E: LDA.b $3A
#_07AF90: AND.b #$80
#_07AF92: STA.b $3A

#_07AF94: STZ.w $037A

#_07AF97: LDA.b $50
#_07AF99: AND.b #$FE
#_07AF9B: STA.b $50

;---------------------------------------------------------------------------------------------------

#EXIT_07AF9D:
#_07AF9D: RTS

;===================================================================================================

SearchForByrnaSpark:
#_07AF9E: LDA.w $037A
#_07AFA1: AND.b #$08
#_07AFA3: BNE .cane_not_equipped

#_07AFA5: LDX.b #$04

.next
#_07AFA7: LDA.w $0C4A,X
#_07AFAA: CMP.b #$31 ; ANCILLA 31
#_07AFAC: BEQ .found_spark

#_07AFAE: DEX
#_07AFAF: BPL .next

;---------------------------------------------------------------------------------------------------

.cane_not_equipped
#_07AFB1: CLC

#_07AFB2: RTS

.found_spark
#_07AFB3: SEC

#_07AFB4: RTS

;===================================================================================================

pool LinkItem_Net

.pose_id
#_07AFB5: db $0B, $06, $07, $08, $01, $02, $03, $04, $05, $06 ; up
#_07AFBF: db $01, $02, $03, $04, $05, $06, $07, $08, $01, $02 ; down
#_07AFC9: db $09, $04, $05, $06, $07, $08, $01, $02, $03, $04 ; left
#_07AFD3: db $0A, $08, $01, $02, $03, $04, $05, $06, $07, $08 ; right

.pose_offset
#_07AFDD: db $00 ; up
#_07AFDE: db $0A ; down
#_07AFDF: db $14 ; left
#_07AFE0: db $1E ; right

pool off

;===================================================================================================

LinkItem_Net:
#_07AFE1: BIT.b $3A
#_07AFE3: BVS .in_action

; in door
#_07AFE5: LDA.b $6C
#_07AFE7: BNE EXIT_07AF9D

#_07AFE9: JSR TestYButton
#_07AFEC: BCC EXIT_07AF9D

;---------------------------------------------------------------------------------------------------

#_07AFEE: LDA.b $2F
#_07AFF0: LSR A
#_07AFF1: TAY

#_07AFF2: LDX.w .pose_offset,Y
#_07AFF5: LDA.w .pose_id,X
#_07AFF8: STA.w $0300

#_07AFFB: LDA.b #$03
#_07AFFD: STA.b $3D

#_07AFFF: STZ.w $030D

#_07B002: LDA.b #$10
#_07B004: STA.w $037A

#_07B007: LDA.b #$01
#_07B009: TSB.b $50

#_07B00B: STZ.b $2E

#_07B00D: LDA.b #$32 ; SFX2.32
#_07B00F: JSR PlayLinkSFX2Panned

;---------------------------------------------------------------------------------------------------

.in_action
#_07B012: JSR HaltLinkWhenUsingItems

#_07B015: LDA.b $67
#_07B017: AND.b #$F0
#_07B019: STA.b $67

#_07B01B: DEC.b $3D
#_07B01D: BPL .exit

;---------------------------------------------------------------------------------------------------

#_07B01F: LDX.w $030D
#_07B022: INX
#_07B023: STX.w $030D

#_07B026: LDA.b #$03
#_07B028: STA.b $3D

#_07B02A: LDA.b $2F
#_07B02C: LSR A
#_07B02D: TAY

#_07B02E: LDA.w .pose_offset,Y
#_07B031: CLC
#_07B032: ADC.w $030D
#_07B035: TAY

#_07B036: LDA.w .pose_id,Y
#_07B039: STA.w $0300

#_07B03C: CPX.b #$0A
#_07B03E: BNE .exit

;---------------------------------------------------------------------------------------------------

#_07B040: STZ.w $030D
#_07B043: STZ.w $0300

#_07B046: LDA.b $3A
#_07B048: AND.b #$80
#_07B04A: STA.b $3A

#_07B04C: STZ.w $037A

#_07B04F: LDA.b $50
#_07B051: AND.b #$FE
#_07B053: STA.b $50

#_07B055: LDA.b #$80
#_07B057: STA.b $44
#_07B059: STA.b $45

.exit
#_07B05B: RTS

;===================================================================================================

TestYButton:
#_07B05C: BIT.b $3A
#_07B05E: BVS .fail

#_07B060: LDA.b $46
#_07B062: BNE .fail

;===================================================================================================

#TestYButton_unfiltered:
#_07B064: LDA.b $F4
#_07B066: AND.b #$40
#_07B068: BEQ .fail

#_07B06A: TSB.b $3A

#_07B06C: SEC

#_07B06D: RTS

.fail
#_07B06E: CLC

#_07B06F: RTS

;===================================================================================================

ItemMagicCost:

.cost
#_07B070: db $10, $08, $04 ; rod
#_07B073: db $20, $10, $08 ; medallion
#_07B076: db $08, $04, $02 ; powder
#_07B079: db $08, $04, $02
#_07B07C: db $08, $04, $02 ; somaria
#_07B07F: db $10, $08, $04
#_07B082: db $04, $02, $02 ; lamp
#_07B085: db $08, $04, $02
#_07B088: db $10, $08, $04 ; byrna

.cost_offset
#_07B08B: db $00 ; rod
#_07B08C: db $03 ; medallion
#_07B08D: db $06 ; powder
#_07B08E: db $09
#_07B08F: db $0C ; somaria
#_07B090: db $0F
#_07B091: db $12 ; lamp
#_07B092: db $15
#_07B093: db $18 ; byrna

;===================================================================================================

CheckMagicCost:
#_07B094: STX.b $02

#_07B096: LDA.w ItemMagicCost_cost_offset,X
#_07B099: CLC
#_07B09A: ADC.l $7EF37B
#_07B09E: TAX

#_07B09F: LDA.w ItemMagicCost_cost,X
#_07B0A2: STA.b $00

#_07B0A4: LDA.l $7EF36E
#_07B0A8: BEQ .not_enough_magic

#_07B0AA: SEC
#_07B0AB: SBC.b $00
#_07B0AD: CMP.b #$80
#_07B0AF: BCS .not_enough_magic

#_07B0B1: STA.l $7EF36E

#_07B0B5: SEC

#_07B0B6: RTS

;---------------------------------------------------------------------------------------------------

.not_enough_magic
; unused doesn't get a message
#_07B0B7: LDA.b $02
#_07B0B9: CMP.b #$03
#_07B0BB: BEQ .fail

;---------------------------------------------------------------------------------------------------

#DisplayNoMagicMessage:
#_07B0BD: LDA.b #$3C ; SFX2.3C
#_07B0BF: JSR PlayLinkSFX2Panned

#_07B0C2: REP #$20

#_07B0C4: LDA.w #$0079 ; MESSAGE 0079
#_07B0C7: STA.w $1CF0

#_07B0CA: SEP #$20

#_07B0CC: JSL PrepAndDisplayMessage

.fail
#_07B0D0: CLC

#_07B0D1: RTS

;===================================================================================================

RefundMagic:
#_07B0D2: PHB
#_07B0D3: PHK
#_07B0D4: PLB

#_07B0D5: LDA.w ItemMagicCost_cost_offset,X
#_07B0D8: CLC
#_07B0D9: ADC.l $7EF37B
#_07B0DD: TAX

#_07B0DE: LDA.w ItemMagicCost_cost,X
#_07B0E1: STA.b $00

#_07B0E3: LDA.l $7EF36E
#_07B0E7: CLC
#_07B0E8: ADC.b $00
#_07B0EA: STA.l $7EF36E

#_07B0EE: PLB

#_07B0EF: RTL

;===================================================================================================

ResetBasicActions:
#_07B0F0: STZ.w $030A

#_07B0F3: STZ.b $3B

#_07B0F5: STZ.w $0308
#_07B0F8: STZ.w $0309
#_07B0FB: STZ.w $0376

#_07B0FE: LDA.b $50
#_07B100: AND.b #$FE
#_07B102: STA.b $50

#_07B104: RTL

;===================================================================================================

PerformThrow:
#_07B105: LDA.w $0314
#_07B108: ORA.w $02EC
#_07B10B: BNE .actually_lifting

#_07B10D: JSR ResetSwordAndItemUsage

#_07B110: STZ.b $3B

;---------------------------------------------------------------------------------------------------

#_07B112: LDX.b #$0F

.next_sprite
#_07B114: LDA.w $0DD0,X
#_07B117: BEQ .free_spot

#_07B119: DEX
#_07B11A: BPL .next_sprite

#_07B11C: BRA .bounce_to_exit

;---------------------------------------------------------------------------------------------------

.free_spot
#_07B11E: LDA.w $0368
#_07B121: CMP.b #$05
#_07B123: BEQ .big_rock

#_07B125: CMP.b #$06
#_07B127: BNE .not_big_rock

.big_rock
#_07B129: LDA.b #$01
#_07B12B: STA.w $0300

#_07B12E: BRA .continue_a

;---------------------------------------------------------------------------------------------------

.not_big_rock
#_07B130: LDA.b $1B
#_07B132: BEQ .outdoors

#_07B134: JSL HandleUnderworldLiftables

#_07B138: BRA .continue_b

.outdoors
#_07B13A: JSL HandleOverworldLiftables

;---------------------------------------------------------------------------------------------------

.continue_b
#_07B13E: LDX.b #$08

; TODO analyze
.next_a
#_07B140: CMP.w LinkToss_liftable_tiles,X
#_07B143: BEQ .matched

#_07B145: DEX
#_07B146: BPL .next_a

;---------------------------------------------------------------------------------------------------

.bounce_to_exit
#_07B148: BRL EXIT_07B269

;---------------------------------------------------------------------------------------------------

.matched
#_07B14B: LDA.b #$01
#_07B14D: STA.w $0314

#_07B150: TXA
#_07B151: JSL SpawnThrowableTerrain

#_07B155: ASL.b $F6
#_07B157: LSR.b $F6

.actually_lifting
#_07B159: STZ.w $0300

.continue_a
#_07B15C: STZ.b $3A

#_07B15E: LDA.w LinkToss_timer_a
#_07B161: STA.w $030B

#_07B164: LDA.b #$01
#_07B166: STA.w $0309

#_07B169: LDA.b #$80
#_07B16B: STA.w $0308

#_07B16E: STZ.w $030A

#_07B171: LDA.b #$0C
#_07B173: STA.b $5E

#_07B175: STZ.b $2E

#_07B177: LDA.b $67
#_07B179: AND.b #$F0
#_07B17B: STA.b $67

#_07B17D: LDA.b #$01
#_07B17F: TSB.b $50

;---------------------------------------------------------------------------------------------------

#EXIT_07B181:
#_07B181: RTS

;===================================================================================================

pool LinkToss

.timer_a
#_07B182: db $06, $07, $07

.timer_b
#_07B185: db $05, $0A, $00, $17, $00, $12, $00, $12
#_07B18D: db $00, $08, $00, $08, $00, $FE, $FF, $11
#_07B195: db $00

; TODO name each
.liftable_tiles
#_07B196: db $54, $52, $50, $FF
#_07B19A: db $51, $53, $55, $56
#_07B19E: db $57

.heavy_lift_animation_timers
#_07B19F: db   8,  24,   8,  24
#_07B1A3: db   8,  32,   6,   8
#_07B1A7: db  13,  13

.heavy_lift_animation_steps
#_07B1A9: db $00, $01, $00, $01
#_07B1AD: db $00, $01, $00, $01
#_07B1B1: db $02, $03

pool off

;===================================================================================================

HandleDO_LiftCarryThrow:
#_07B1B3: LDA.w $0308
#_07B1B6: BEQ EXIT_07B181

#_07B1B8: LDA.w $0309
#_07B1BB: AND.b #$02
#_07B1BD: BEQ .dont_toss

#_07B1BF: LDA.w $030B
#_07B1C2: CMP.b #$05
#_07B1C4: BCC .dont_toss

#_07B1C6: LDA.w LinkToss_timer_b
#_07B1C9: STA.w $030B

.dont_toss
#_07B1CC: LDA.w $0309
#_07B1CF: BEQ .skip_collision

#_07B1D1: JSR HaltLinkWhenUsingItems

.skip_collision
#_07B1D4: LDA.w $0309
#_07B1D7: AND.b #$01
#_07B1D9: BEQ .dont_reset_anim

#_07B1DB: STZ.b $2E
#_07B1DD: STZ.b $2D

#_07B1DF: LDA.b $67
#_07B1E1: AND.b #$F0
#_07B1E3: STA.b $67

.dont_reset_anim
#_07B1E5: DEC.w $030B

#_07B1E8: LDA.w $030B
#_07B1EB: BNE EXIT_07B181

#_07B1ED: LDA.w $0309
#_07B1F0: AND.b #$02
#_07B1F2: BEQ .dont_try_to_reset_strafe

#_07B1F4: STZ.w $0308
#_07B1F7: STZ.b $48
#_07B1F9: STZ.b $5E

#_07B1FB: LDA.b $5D
#_07B1FD: CMP.b #$18 ; LINKSTATE 18
#_07B1FF: BNE .reset_dirlock

#_07B201: LDA.b #$00 ; LINKSTATE 00
#_07B203: STA.b $5D

#_07B205: BRL .reset_dirlock

.dont_try_to_reset_strafe
#_07B208: LDA.w $0300
#_07B20B: BEQ .not_doing_heavy_lift

#_07B20D: INC A
#_07B20E: CMP.b #$09
#_07B210: BEQ .reset_dirlock

#_07B212: STA.w $0300

#_07B215: TAX

#_07B216: LDA.w LinkToss_heavy_lift_animation_timers,X
#_07B219: STA.w $030B

#_07B21C: LDA.w LinkToss_heavy_lift_animation_steps,X
#_07B21F: STA.w $030A

#_07B222: CPX.b #$06
#_07B224: BNE EXIT_07B269

#_07B226: STZ.w $0B9C

#_07B229: LDA.b $1B
#_07B22B: BEQ .throwing_out_doors

#_07B22D: JSL HandleUnderworldLiftables

#_07B231: BRA .continue_indoors

.throwing_out_doors
#_07B233: JSL HandleOverworldLiftables

;---------------------------------------------------------------------------------------------------

.continue_indoors
#_07B237: AND.b #$0F
#_07B239: INC A
#_07B23A: PHA

#_07B23B: LDA.b #$18 ; LINKSTATE 18
#_07B23D: STA.b $5D

#_07B23F: LDA.b #$01
#_07B241: STA.w $0314

#_07B244: PLA
#_07B245: JSL SpawnThrowableTerrain

#_07B249: ASL.b $F6
#_07B24B: LSR.b $F6

#_07B24D: BRA EXIT_07B269

;---------------------------------------------------------------------------------------------------

.not_doing_heavy_lift
#_07B24F: LDX.w $030A
#_07B252: INX

#_07B253: LDA.w LinkToss_timer_a,X
#_07B256: STA.w $030B

#_07B259: STX.w $030A

#_07B25C: CPX.b #$03
#_07B25E: BNE EXIT_07B269

;---------------------------------------------------------------------------------------------------

.reset_dirlock
#_07B260: STZ.w $0309

#_07B263: LDA.b $50
#_07B265: AND.b #$FE
#_07B267: STA.b $50

;---------------------------------------------------------------------------------------------------

#EXIT_07B269:
#_07B269: RTS

;===================================================================================================

PerformDash:
#_07B26A: LDA.w $02F5
#_07B26D: BNE EXIT_07B269

#_07B26F: LDA.w $0314
#_07B272: ORA.w $02EC
#_07B275: BNE EXIT_07B269

#_07B277: BIT.w $0308
#_07B27A: BMI EXIT_07B269

#_07B27C: LDA.b $1B
#_07B27E: BNE .pointless_branch

.pointless_branch
#_07B280: STZ.b $3B

#_07B282: LDA.b #$1D
#_07B284: STA.w $0374

#_07B287: LDA.b #$40
#_07B289: STA.w $02F1

#_07B28C: LDA.b #$11 ; LINKSTATE 11
#_07B28E: STA.b $5D

#_07B290: LDA.b #$01
#_07B292: STA.w $0372

#_07B295: LDA.b $3A
#_07B297: AND.b #$80
#_07B299: STA.b $3A

#_07B29B: STZ.w $0308
#_07B29E: STZ.w $0301

#_07B2A1: STZ.b $48
#_07B2A3: STZ.b $6B

;---------------------------------------------------------------------------------------------------

#_07B2A5: LDA.l $7EF3CC
#_07B2A9: TAX

#_07B2AA: CMP.w FollowerReactionToDashing,X
#_07B2AD: BNE EXIT_07B2D6

#_07B2AF: STZ.b $5E

#_07B2B1: LDX.w $02CF

; Broken game writes to ROM (verified)
; Listed addresses are probably what was intended
#_07B2B4: LDA.w $1A00,X
#_07B2B7: STA.w $7EF3CD

#_07B2BA: LDA.w $1A14,X
#_07B2BD: STA.w $7EF3CE

#_07B2C0: LDA.w $1A28,X
#_07B2C3: STA.w $7EF3CF

#_07B2C6: LDA.w $1A3C,X
#_07B2C9: STA.w $7EF3D0

#_07B2CC: LDA.b $EE
#_07B2CE: STA.w $7EF3D2

#_07B2D1: LDA.b #$40
#_07B2D3: STA.w $02D2

;---------------------------------------------------------------------------------------------------

#EXIT_07B2D6:
#_07B2D6: RTS

;===================================================================================================

PerformGrab:
#_07B2D7: LDA.b $3A
#_07B2D9: AND.b #$80
#_07B2DB: BEQ .no_press

#_07B2DD: LDA.b $3C
#_07B2DF: CMP.b #$09
#_07B2E1: BCS EXIT_07B2D6

.no_press
#_07B2E3: LDA.b #$01
#_07B2E5: STA.w $0376

#_07B2E8: TSB.b $50

#_07B2EA: STZ.b $2E
#_07B2EC: STZ.w $030A

#_07B2EF: LDA.w LinkStrain_timer

#_07B2F2: STA.w $030B
#_07B2F5: STZ.w $030D

#_07B2F8: RTS

;===================================================================================================

LinkPull_Directions:
#_07B2F9: db $04
#_07B2FA: db $08
#_07B2FB: db $01
#_07B2FC: db $02

;===================================================================================================

LinkStrain:
.timer
#_07B2FD: db   0,   5,   5,  12,   5,   5,  12

.char
#_07B304: db $00, $01, $02, $03, $01, $02, $03

;===================================================================================================

HandleDO_PullObject:
#_07B30B: LDA.b $67
#_07B30D: AND.b #$F0
#_07B30F: STA.b $67

#_07B311: LDA.b $2F
#_07B313: LSR A
#_07B314: TAX

; check for udlr
#_07B315: LDA.b $F0
#_07B317: AND.b #$0F
#_07B319: BEQ .no_dpad

#_07B31B: AND.w LinkPull_Directions,X
#_07B31E: BNE .tick_timer

.no_dpad
#_07B320: LDX.b #$00
#_07B322: BRA .set_strain_index

;---------------------------------------------------------------------------------------------------

.tick_timer
#_07B324: DEC.w $030B
#_07B327: BPL .timer_running

;---------------------------------------------------------------------------------------------------

#_07B329: LDX.w $030D
#_07B32C: INX
#_07B32D: CPX.b #$07
#_07B32F: BNE .set_strain_index

#_07B331: LDX.b #$01

.set_strain_index
#_07B333: STX.w $030D

#_07B336: LDA.w LinkStrain_char,X
#_07B339: STA.w $030A

#_07B33C: LDA.w LinkStrain_timer,X
#_07B33F: STA.w $030B

;---------------------------------------------------------------------------------------------------

.timer_running
; check for A
#_07B342: LDA.b $F2
#_07B344: AND.b #$80
#_07B346: BNE .exit

#_07B348: STZ.w $030D
#_07B34B: STZ.w $030A

#_07B34E: STZ.w $0376

#_07B351: STZ.b $3B

#_07B353: LDA.b $50
#_07B355: AND.b #$FE
#_07B357: STA.b $50

.exit
#_07B359: RTS

;===================================================================================================

PerformStatueDrag:
#_07B35A: LDA.b #$02
#_07B35C: STA.w $0376

#_07B35F: LDA.b #$01
#_07B361: TSB.b $50

#_07B363: STZ.b $2E
#_07B365: STZ.w $030A

#_07B368: LDA.w LinkStrain_timer
#_07B36B: STA.w $030B
#_07B36E: STZ.w $030D

#_07B371: RTS

;===================================================================================================

HandleDO_StatueDrag:
#_07B372: LDA.b #$14
#_07B374: STA.b $5E

#_07B376: LDA.b $2F
#_07B378: LSR A
#_07B379: TAX

; check for udlr
#_07B37A: LDA.b $F0
#_07B37C: AND.b #$0F
#_07B37E: BEQ .halted

#_07B380: AND.w LinkPull_Directions,X
#_07B383: BNE .dragging

;---------------------------------------------------------------------------------------------------

.halted
#_07B385: STZ.b $67

#_07B387: STZ.b $30
#_07B389: STZ.b $31
#_07B38B: STZ.b $2E

#_07B38D: LDX.b #$00
#_07B38F: BRA .set_strain_index

;---------------------------------------------------------------------------------------------------

.dragging
#_07B391: STA.b $67

#_07B393: DEC.w $030B
#_07B396: BPL .delay

#_07B398: LDX.w $030D
#_07B39B: INX
#_07B39C: CPX.b #$07
#_07B39E: BNE .set_strain_index

#_07B3A0: LDX.b #$01

;---------------------------------------------------------------------------------------------------

.set_strain_index
#_07B3A2: STX.w $030D

#_07B3A5: LDA.w LinkStrain_char,X
#_07B3A8: STA.w $030A

#_07B3AB: LDA.w LinkStrain_timer,X
#_07B3AE: STA.w $030B

;---------------------------------------------------------------------------------------------------

.delay
; check for A
#_07B3B1: LDA.b $F2
#_07B3B3: AND.b #$80
#_07B3B5: BNE .exit

#_07B3B7: STZ.b $5E

#_07B3B9: STZ.w $02FA

#_07B3BC: STZ.w $030D
#_07B3BF: STZ.w $030A

#_07B3C2: STZ.w $0376

#_07B3C5: STZ.b $3B

#_07B3C7: LDA.b $50
#_07B3C9: AND.b #$FE
#_07B3CB: STA.b $50

.exit
#_07B3CD: RTS

;===================================================================================================

PerformRupeePull:
#_07B3CE: LDA.b $2F
#_07B3D0: BNE EXIT_07B3F5

#_07B3D2: JSL ResetLinkProperties_A

#_07B3D6: LDA.b #$02
#_07B3D8: STA.w $0376

#_07B3DB: TSB.b $50

#_07B3DD: STZ.b $2E
#_07B3DF: STZ.w $030A

#_07B3E2: LDA.w LinkStrain_timer
#_07B3E5: STA.w $030B

#_07B3E8: STZ.w $030D

#_07B3EB: LDA.b #$1D ; LINKSTATE 1D
#_07B3ED: STA.b $5D

#_07B3EF: STZ.b $27
#_07B3F1: STZ.b $28
#_07B3F3: STZ.b $3A

;---------------------------------------------------------------------------------------------------

#EXIT_07B3F5:
#_07B3F5: RTS

;===================================================================================================

pool LinkState_TreePull

.step
#_07B3F6: db $00, $01, $02, $03
#_07B3FA: db $04, $00, $01, $02
#_07B3FE: db $03

pool off

;---------------------------------------------------------------------------------------------------

; TODO bad branch names
LinkState_TreePull:
#_07B3FF: JSR CacheCameraPropertiesIfOutdoors

#_07B402: LDA.b $4D
#_07B404: BEQ .not_recoiling

#_07B406: BRL HandleLinkFromState1D

;---------------------------------------------------------------------------------------------------

.not_recoiling
#_07B409: LDA.w $0376
#_07B40C: BEQ .strain_adjusted

#_07B40E: LDA.b $3A
#_07B410: BNE .continue

#_07B412: BIT.b $F2
#_07B414: BPL .no_a_press

#_07B416: LDA.b $F0
#_07B418: AND.b #$04
#_07B41A: BEQ .dont_adjust_strain

#_07B41C: STA.b $3A

#_07B41E: LDA.b #$22 ; SFX2.22
#_07B420: JSR PlayLinkSFX2Panned

#_07B423: BRA .continue

;---------------------------------------------------------------------------------------------------

.no_a_press
#_07B425: STZ.w $0376
#_07B428: STZ.w $030D

#_07B42B: LDA.b #$02
#_07B42D: STA.w $030B
#_07B430: STZ.w $030A

#_07B433: STZ.b $50

#_07B435: LDA.b #$00 ; LINKSTATE 00
#_07B437: STA.b $5D

#_07B439: BRA .reset_state

;---------------------------------------------------------------------------------------------------

.continue
#_07B43B: DEC.w $030B
#_07B43E: BPL .dont_adjust_strain

#_07B440: INC.w $030D

#_07B443: LDX.w $030D

#_07B446: LDA.w LinkStrain_char,X
#_07B449: STA.w $030A

#_07B44C: LDA.w LinkStrain_timer,X
#_07B44F: STA.w $030B

#_07B452: CPX.b #$07
#_07B454: BNE .dont_adjust_strain

;---------------------------------------------------------------------------------------------------

#_07B456: STZ.w $0376
#_07B459: STZ.w $030D

#_07B45C: LDA.b #$02
#_07B45E: STA.w $030B
#_07B461: STZ.w $030A

#_07B464: LDA.b #$01
#_07B466: STA.w $0308
#_07B469: STZ.w $0309

#_07B46C: BRA .strain_adjusted

;---------------------------------------------------------------------------------------------------

.dont_adjust_strain
#_07B46E: BRA .finish_up

;---------------------------------------------------------------------------------------------------

.strain_adjusted
#_07B470: LDA.b $48
#_07B472: AND.b #$09
#_07B474: BNE .reset_direction_and_state

#_07B476: LDA.w $030D
#_07B479: CMP.b #$09
#_07B47B: BNE .add_dust

; check for udlr
#_07B47D: LDA.b $F4
#_07B47F: AND.b #$0F
#_07B481: BEQ .no_new_direction_press

;---------------------------------------------------------------------------------------------------

.reset_state
#_07B483: LDA.b #$00 ; LINKSTATE 00
#_07B485: STA.b $5D

#_07B487: BRL LinkState_Default

;---------------------------------------------------------------------------------------------------

.add_dust
#_07B48A: LDY.b #$00
#_07B48C: LDA.b #$1E ; ANCILLA 1E
#_07B48E: JSL AncillaAdd_DashDust_charging

#_07B492: DEC.w $030B
#_07B495: BPL .delay_reset

#_07B497: INC.w $030D

#_07B49A: LDX.w $030D

#_07B49D: LDA.b #$02
#_07B49F: STA.w $030B

#_07B4A2: LDA.w .step,X
#_07B4A5: STA.w $030A

#_07B4A8: LDA.b #$30
#_07B4AA: STA.b $27

#_07B4AC: CPX.b #$09

#_07B4AE: BNE .delay_reset

;---------------------------------------------------------------------------------------------------

.reset_direction_and_state
#_07B4B0: STZ.b $2F
#_07B4B2: STZ.w $0308

#_07B4B5: STZ.b $50

#_07B4B7: LDA.b #$00 ; LINKSTATE 00
#_07B4B9: STA.b $5D

#_07B4BB: BRA .exit

;---------------------------------------------------------------------------------------------------

.delay_reset
#_07B4BD: JSR FlagWalkDirections

#_07B4C0: LDA.b $67
#_07B4C2: AND.b #$03
#_07B4C4: BNE .is_horizontal

#_07B4C6: STZ.b $28

.is_horizontal
#_07B4C8: LDA.b $67
#_07B4CA: AND.b #$0C
#_07B4CC: BNE .finish_up

#_07B4CE: STZ.b $27

;---------------------------------------------------------------------------------------------------

.finish_up
#_07B4D0: JSL FindArbitraryLandingSpot

.no_new_direction_press
#_07B4D4: JSR HandleLinkCardinalCollision
#_07B4D7: JSR HandleIndoorCameraAndDoors

.exit
#_07B4DA: RTS

;===================================================================================================

PerformRead:
#_07B4DB: REP #$30

#_07B4DD: LDA.b $1B
#_07B4DF: AND.w #$00FF
#_07B4E2: BEQ .overworld

.underworld
#_07B4E4: LDA.b $A0
#_07B4E6: ASL A
#_07B4E7: TAY

#_07B4E8: LDA.w SignTextUnderworld,Y
#_07B4EB: BRA .set_message

;---------------------------------------------------------------------------------------------------

.overworld
#_07B4ED: LDA.l $7EF3C5
#_07B4F1: AND.w #$00FF
#_07B4F4: CMP.w #$0002
#_07B4F7: BCS .rain_over

#_07B4F9: LDA.w #$0038 ; MESSAGE 0038
#_07B4FC: BRA .set_message

;---------------------------------------------------------------------------------------------------

.rain_over
#_07B4FE: LDA.b $8A
#_07B500: ASL A
#_07B501: TAY

#_07B502: LDA.w SignTextOverworld,Y

.set_message
#_07B505: STA.w $1CF0

#_07B508: SEP #$30

#_07B50A: JSL PrepAndDisplayMessage

#_07B50E: STZ.b $3B

;---------------------------------------------------------------------------------------------------

#EXIT_07B510:
#_07B510: RTS

;===================================================================================================

pool PerformOpenChest

.overflow_replacement
#_07B511: db $FF ; FIGHTER SWORD
#_07B512: db $FF ; MASTER SWORD
#_07B513: db $FF ; TEMPERED SWORD
#_07B514: db $FF ; BUTTER SWORD
#_07B515: db $FF ; FIGHTER SHIELD
#_07B516: db $FF ; FIRE SHIELD
#_07B517: db $FF ; MIRROR SHIELD
#_07B518: db $FF ; FIRE ROD
#_07B519: db $FF ; ICE ROD
#_07B51A: db $FF ; HAMMER
#_07B51B: db $FF ; HOOKSHOT
#_07B51C: db $FF ; BOW
#_07B51D: db $44 ; BOOMERANG => 10 arrows (ITEMGET 44)
#_07B51E: db $FF ; POWDER
#_07B51F: db $FF ; BOTTLE REFILL (BEE)
#_07B520: db $FF ; BOMBOS
#_07B521: db $FF ; ETHER
#_07B522: db $FF ; QUAKE
#_07B523: db $35 ; LAMP => Blue rupee (ITEMGET 35)
#_07B524: db $FF ; SHOVEL
#_07B525: db $FF ; FLUTE
#_07B526: db $FF ; SOMARIA
#_07B527: db $FF ; BOTTLE
#_07B528: db $FF ; HEART PIECE
#_07B529: db $FF ; BYRNA
#_07B52A: db $FF ; CAPE
#_07B52B: db $FF ; MIRROR
#_07B52C: db $FF ; GLOVE
#_07B52D: db $FF ; MITTS
#_07B52E: db $FF ; BOOK
#_07B52F: db $FF ; FLIPPERS
#_07B530: db $FF ; PEARL
#_07B531: db $FF ; CRYSTAL
#_07B532: db $FF ; NET
#_07B533: db $FF ; BLUE MAIL
#_07B534: db $FF ; RED MAIL
#_07B535: db $FF ; SMALL KEY
#_07B536: db $FF ; COMPASS
#_07B537: db $FF ; HEART CONTAINER FROM 4/4
#_07B538: db $FF ; BOMB
#_07B539: db $FF ; 3 BOMBS
#_07B53A: db $FF ; MUSHROOM
#_07B53B: db $46 ; RED BOOMERANG => 300 rupees (ITEMGET 46)
#_07B53C: db $FF ; FULL BOTTLE (RED)
#_07B53D: db $FF ; FULL BOTTLE (GREEN)
#_07B53E: db $FF ; FULL BOTTLE (BLUE)
#_07B53F: db $FF ; POTION REFILL (RED)
#_07B540: db $FF ; POTION REFILL (GREEN)
#_07B541: db $FF ; POTION REFILL (BLUE)
#_07B542: db $FF ; 10 BOMBS
#_07B543: db $FF ; BIG KEY
#_07B544: db $FF ; MAP
#_07B545: db $FF ; 1 RUPEE
#_07B546: db $FF ; 5 RUPEES
#_07B547: db $FF ; 20 RUPEES
#_07B548: db $FF ; GREEN PENDANT
#_07B549: db $FF ; BLUE PENDANT
#_07B54A: db $FF ; RED PENDANT
#_07B54B: db $FF ; TOSSED BOW
#_07B54C: db $FF ; SILVERS
#_07B54D: db $FF ; FULL BOTTLE (BEE)
#_07B54E: db $FF ; FULL BOTTLE (FAIRY)
#_07B54F: db $FF ; BOSS HC
#_07B550: db $FF ; SANC HC
#_07B551: db $FF ; 100 RUPEES
#_07B552: db $FF ; 50 RUPEES
#_07B553: db $FF ; HEART
#_07B554: db $FF ; ARROW
#_07B555: db $FF ; 10 ARROWS
#_07B556: db $FF ; SMALL MAGIC
#_07B557: db $FF ; 300 RUPEES
#_07B558: db $FF ; 20 RUPEES GREEN
#_07B559: db $FF ; FULL BOTTLE (GOOD BEE)
#_07B55A: db $FF ; TOSSED FIGHTER SWORD
#_07B55B: db $FF ; FLUTE (ACTIVATED)
#_07B55C: db $FF ; BOOTS

pool off

;---------------------------------------------------------------------------------------------------

PerformOpenChest:
#_07B55D: LDA.b $2F
#_07B55F: BNE EXIT_07B5A8

#_07B561: LDA.w $02E9
#_07B564: BNE EXIT_07B5A8

#_07B566: LDA.b $4D
#_07B568: BNE EXIT_07B5A8

#_07B56A: STZ.b $3B

#_07B56C: LDA.b $76
#_07B56E: JSL OpenChestForItem
#_07B572: BCC .failed_to_open

#_07B574: LDA.b #$01
#_07B576: STA.w $02E9

; $0C contains the item receipt ID
#_07B579: LDY.b $0C
#_07B57B: BMI .failed_to_open

#_07B57D: LDA.w .overflow_replacement,Y
#_07B580: STA.b $03

#_07B582: CMP.b #$FF
#_07B584: BEQ .no_replacement

#_07B586: TYA
#_07B587: ASL A
#_07B588: TAX

#_07B589: LDA.l AncillaAdd_ItemReceipt_sram_write+0,X
#_07B58D: STA.b $00

#_07B58F: LDA.l AncillaAdd_ItemReceipt_sram_write+1,X
#_07B593: STA.b $01

#_07B595: LDA.b #$7E
#_07B597: STA.b $02

#_07B599: LDA.b [$00]
#_07B59B: BEQ .no_replacement

#_07B59D: LDY.b $03

.no_replacement
#_07B59F: JSL GrantItemReceipt

#_07B5A3: BRA EXIT_07B5A8

.failed_to_open
#_07B5A5: STZ.w $02E9

;---------------------------------------------------------------------------------------------------

#EXIT_07B5A8:
#_07B5A8: RTS

;===================================================================================================
; Looks for a new A press.
;===================================================================================================
TestAButton:
#_07B5A9: LDA.b $3B ; This flags A already being down
#_07B5AB: AND.b #$80
#_07B5AD: BNE .fail

#_07B5AF: LDA.b $46 ; no presses during recoil
#_07B5B1: BNE .fail

#_07B5B3: LDA.b $F6 ; check controller input
#_07B5B5: AND.b #$80
#_07B5B7: BEQ .fail

#_07B5B9: TSB.b $3B

#_07B5BB: SEC

#_07B5BC: RTS

.fail
#_07B5BD: CLC

#_07B5BE: RTS

;===================================================================================================

HandleTossing:
#_07B5BF: LDA.b $3B
#_07B5C1: AND.b #$80
#_07B5C3: BEQ .unpressed

#_07B5C5: LDA.b $F6
#_07B5C7: AND.b #$80
#_07B5C9: BEQ .unpressed

#_07B5CB: LDA.w $0309
#_07B5CE: AND.b #$01
#_07B5D0: BNE .unpressed

#_07B5D2: STZ.w $030D ; reset grab
#_07B5D5: STZ.w $030E
#_07B5D8: STZ.w $030A

#_07B5DB: STZ.b $3B

#_07B5DD: LDA.b $50
#_07B5DF: AND.b #$FE
#_07B5E1: STA.b $50

#_07B5E3: LDA.w $0305 ; !WTF WHY IS THIS HERE?
#_07B5E6: CMP.b #$01
#_07B5E8: BNE .leave_windows

#_07B5EA: STZ.b $1E
#_07B5EC: STZ.b $1F

.leave_windows
#_07B5EE: SEC

#_07B5EF: RTS

.unpressed
#_07B5F0: CLC

#_07B5F1: RTS

;===================================================================================================

UNREACHABLE_07B5F2:
#_07B5F2: LDA.b $F2
#_07B5F4: AND.b #$10
#_07B5F6: BNE .r_held

#_07B5F8: STZ.b $3B

.r_held
#_07B5FA: BIT.b $F0
#_07B5FC: BMI .a_held

#_07B5FE: LDA.b $3A
#_07B600: AND.b #$DF
#_07B602: STA.b $3A

.a_held
; debug flag only referenced here
#_07B604: LDA.b $3B
#_07B606: AND.b #$10
#_07B608: STA.b $00

#_07B60A: LDA.b $3A
#_07B60C: AND.b #$A0
#_07B60E: ORA.b $00
#_07B610: AND.b #$B0
#_07B612: CMP.b #$30
#_07B614: BEQ .fail

#_07B616: CMP.b #$90
#_07B618: BEQ .fail

#_07B61A: LDA.b $F2
#_07B61C: AND.b #$10
#_07B61E: BEQ .fail

#_07B620: STA.b $00

#_07B622: LDA.b $F0
#_07B624: AND.b #$80
#_07B626: BEQ .fail

#_07B628: LSR A
#_07B629: LSR A
#_07B62A: STA.b $3A

#_07B62C: LDA.b $00
#_07B62E: TSB.b $3B

#_07B630: SEC

#_07B631: RTS

.fail
#_07B632: CLC

#_07B633: RTS

;===================================================================================================

StoppedFlags:
#_07B634: db $07
#_07B635: db $0B
#_07B636: db $0D
#_07B637: db $0E

;---------------------------------------------------------------------------------------------------

HandleLinkDiagonalCollision:
#_07B638: JSR CheckIfRoomNeedsDoubleLayerCheck
#_07B63B: BCC .no_layer_change

#_07B63D: JSR FlagObstructions
#_07B640: JSR CreateVelocityFromMovingBackground

.no_layer_change
#_07B643: LDA.b $67
#_07B645: AND.b #$0F
#_07B647: STA.b $67

;===================================================================================================

FlagObstructions:
#_07B649: LDA.b #$0F
#_07B64B: STA.b $42
#_07B64D: STA.b $43

#_07B64F: STZ.b $6A

#_07B651: LDA.b $67
#_07B653: AND.b #$0C
#_07B655: BNE FlagObstructions_vertical_component

#_07B657: BRL UpdateDiagonalMovementFlags

;===================================================================================================

FlagObstructions_vertical_component:
#_07B65A: INC.b $6A

#_07B65C: LDY.b #$00

#_07B65E: AND.b #$08
#_07B660: BNE .walking_up

#_07B662: LDY.b #$02

.walking_up
#_07B664: TYA
#_07B665: LSR A
#_07B666: STA.b $66

#_07B668: JSR TileDetectOnMovement_VerticalSlopes

#_07B66B: LDA.b $0E
#_07B66D: AND.b #$30
#_07B66F: BEQ .no_obstruction

#_07B671: LDA.b $62
#_07B673: AND.b #$02
#_07B675: BNE .no_obstruction

; checks doors
#_07B677: LDA.b $0E
#_07B679: AND.b #$30
#_07B67B: LSR A ; /16
#_07B67C: LSR A
#_07B67D: LSR A
#_07B67E: LSR A
#_07B67F: AND.b $67
#_07B681: BNE .no_obstruction

#_07B683: LDY.b #$02

#_07B685: LDA.b $67
#_07B687: AND.b #$03
#_07B689: BEQ .no_obstruction

; moving left
#_07B68B: AND.b #$02
#_07B68D: BNE .going_diagonal

; moving right
#_07B68F: LDY.b #$03
#_07B691: BRA .going_diagonal

.no_obstruction
#_07B693: LDA.w $046C
#_07B696: BEQ .no_layer_junk

#_07B698: LDA.b $0E
#_07B69A: AND.b #$03
#_07B69C: BNE .dont_use_last_direction_yet
#_07B69E: BRA FlagObstructions_horizontal_component

.no_layer_junk
#_07B6A0: LDA.b $4D
#_07B6A2: BEQ .dont_use_last_direction_yet

#_07B6A4: LDA.b $0C
#_07B6A6: AND.b #$03
#_07B6A8: BEQ .dont_use_last_direction_yet
#_07B6AA: BRA .flag_based_on_last_direction

.dont_use_last_direction_yet
#_07B6AC: LDA.b $0E
#_07B6AE: AND.b #$03
#_07B6B0: BEQ FlagObstructions_horizontal_component

#_07B6B2: STZ.b $6B

#_07B6B4: LDA.w $034A
#_07B6B7: BEQ .flag_based_on_last_direction

#_07B6B9: LDA.w $02E8
#_07B6BC: AND.b #$03
#_07B6BE: BNE .flag_based_on_last_direction

#_07B6C0: LDA.b $67
#_07B6C2: AND.b #$03
#_07B6C4: BEQ .flag_based_on_last_direction

#_07B6C6: STZ.w $033C
#_07B6C9: STZ.w $033D
#_07B6CC: STZ.w $032F
#_07B6CF: STZ.w $0330
#_07B6D2: STZ.w $032B
#_07B6D5: STZ.w $032C
#_07B6D8: STZ.w $0334
#_07B6DB: STZ.w $0335

.flag_based_on_last_direction
#_07B6DE: LDA.b #$01
#_07B6E0: STA.w $0302

#_07B6E3: LDY.b $66

.going_diagonal
#_07B6E5: LDA.w StoppedFlags,Y
#_07B6E8: STA.b $42

;===================================================================================================

FlagObstructions_horizontal_component:
#_07B6EA: LDA.b $67
#_07B6EC: AND.b #$03
#_07B6EE: BNE .moving_horizontally

#_07B6F0: BRL UpdateDiagonalMovementFlags

.moving_horizontally
#_07B6F3: INC.b $6A

#_07B6F5: LDY.b #$04
#_07B6F7: AND.b #$02
#_07B6F9: BNE .moving_left

#_07B6FB: LDY.b #$06

.moving_left
#_07B6FD: TYA
#_07B6FE: LSR A
#_07B6FF: STA.b $66

#_07B701: JSR TileDetectOnMovement_HorizontalSlopes

#_07B704: LDA.b $0E
#_07B706: AND.b #$30
#_07B708: BEQ .no_obstruction

#_07B70A: LDA.b $62
#_07B70C: AND.b #$02
#_07B70E: BEQ .no_obstruction

; checks doors
#_07B710: LDA.b $0E
#_07B712: AND.b #$30
#_07B714: LSR A
#_07B715: LSR A
#_07B716: AND.b $67
#_07B718: BNE .no_obstruction

#_07B71A: LDY.b #$00

#_07B71C: LDA.b $67
#_07B71E: AND.b #$0C
#_07B720: BEQ .no_obstruction

; moving up
#_07B722: AND.b #$08
#_07B724: BNE .going_diagonal

; moving down
#_07B726: LDY.b #$01
#_07B728: BRA .going_diagonal

.no_obstruction
#_07B72A: LDA.w $046C
#_07B72D: BEQ .no_layer_junk

#_07B72F: LDA.b $0E
#_07B731: AND.b #$03
#_07B733: BNE .dont_use_last_direction_yet
#_07B735: BRA .adjust_move_flags_with_obstruction

.no_layer_junk
#_07B737: LDA.b $4D
#_07B739: BEQ .dont_use_last_direction_yet

#_07B73B: LDA.b $0C
#_07B73D: AND.b #$03
#_07B73F: BEQ .dont_use_last_direction_yet
#_07B741: BRA .flag_based_on_last_direction

.dont_use_last_direction_yet
#_07B743: LDA.b $0E
#_07B745: AND.b #$03
#_07B747: BEQ .adjust_move_flags_with_obstruction

#_07B749: STZ.b $6B

#_07B74B: LDA.w $034A
#_07B74E: BEQ .flag_based_on_last_direction

#_07B750: LDA.w $02E8
#_07B753: AND.b #$03
#_07B755: BNE .flag_based_on_last_direction

#_07B757: LDA.b $67
#_07B759: AND.b #$0C
#_07B75B: BEQ .flag_based_on_last_direction

#_07B75D: STZ.w $033E
#_07B760: STZ.w $033F
#_07B763: STZ.w $0331
#_07B766: STZ.w $0332
#_07B769: STZ.w $032D
#_07B76C: STZ.w $032E
#_07B76F: STZ.w $0336
#_07B772: STZ.w $0337

.flag_based_on_last_direction
#_07B775: LDA.b #$01
#_07B777: STA.w $0302

#_07B77A: LDY.b $66

.going_diagonal
#_07B77C: LDA.w StoppedFlags,Y
#_07B77F: STA.b $43

.adjust_move_flags_with_obstruction
#_07B781: LDA.b $67
#_07B783: AND.b $42
#_07B785: AND.b $43
#_07B787: STA.b $67

;===================================================================================================

UpdateDiagonalMovementFlags:
#_07B789: LDA.b $67
#_07B78B: AND.b #$0F
#_07B78D: BEQ .dont_update_direction

#_07B78F: LDA.b $6B
#_07B791: AND.b #$0F
#_07B793: BEQ .dont_update_direction

#_07B795: STA.b $67

.dont_update_direction
#_07B797: LDA.b $6A

#_07B799: STZ.b $6A

#_07B79B: CMP.b #$02
#_07B79D: BNE .exit

#_07B79F: LDY.b #$01

#_07B7A1: LDA.b $2F
#_07B7A3: AND.b #$04
#_07B7A5: BEQ .not_facing_left

#_07B7A7: LDY.b #$02

.not_facing_left
#_07B7A9: STY.b $6A

.exit
#_07B7AB: RTS

;===================================================================================================

AutoMove49Directions:
#_07B7AC: db $08
#_07B7AD: db $04
#_07B7AE: db $02
#_07B7AF: db $01

;===================================================================================================

HandleLinkCardinalCollision:
#_07B7B0: STZ.b $6E
#_07B7B2: STZ.b $38

#_07B7B4: LDA.b $6B
#_07B7B6: AND.b #$30
#_07B7B8: BNE .no_kickback

#_07B7BA: JSR HandleLinkDiagonalKickback

#_07B7BD: LDA.b $6D
#_07B7BF: BEQ .no_kickback

#_07B7C1: BRL CheckCollisionSingleLayerRun

;---------------------------------------------------------------------------------------------------

.no_kickback
#_07B7C4: JSR CheckIfRoomNeedsDoubleLayerCheck
#_07B7C7: BCC CheckCollisionSingleLayerRun

#_07B7C9: LDA.w $046C
#_07B7CC: CMP.b #$02
#_07B7CE: BCC .run_vertical_first

#_07B7D0: LDA.w $046C
#_07B7D3: CMP.b #$03
#_07B7D5: BEQ .run_vertical_first

#_07B7D7: LDA.b #$02
#_07B7D9: STA.w $0315

#_07B7DC: REP #$20

#_07B7DE: JSR TileDetect_BigArea

#_07B7E1: SEP #$20

#_07B7E3: LDA.b $0E
#_07B7E5: STA.w $0316
#_07B7E8: BEQ .run_vertical_first

#_07B7EA: LDA.b $30
#_07B7EC: STA.b $00

#_07B7EE: CLC
#_07B7EF: ADC.w $0310
#_07B7F2: STA.b $30

#_07B7F4: LDA.b $31
#_07B7F6: STA.b $01

#_07B7F8: CLC
#_07B7F9: ADC.w $0312
#_07B7FC: STA.b $31

#_07B7FE: LDA.b $0E
#_07B800: CMP.b #$0C
#_07B802: BEQ .run_vertical_first

#_07B804: CMP.b #$03
#_07B806: BEQ .run_vertical_first

#_07B808: CMP.b #$0A
#_07B80A: BEQ .run_horizontal_first

#_07B80C: CMP.b #$05
#_07B80E: BEQ .run_horizontal_first

#_07B810: AND.b #$0C
#_07B812: BNE .detected_on_axis

#_07B814: LDA.b $0E
#_07B816: AND.b #$03
#_07B818: BNE .detected_on_axis

#_07B81A: BRA .run_vertical_first

.detected_on_axis
#_07B81C: LDA.b $00
#_07B81E: BNE .run_horizontal_first

#_07B820: LDA.b $01
#_07B822: BEQ .run_vertical_first

#_07B824: LDA.w $0310
#_07B827: BPL .run_horizontal_first

.run_vertical_first
#_07B829: JSR RunSlopeCollisionChecks_VerticalFirst
#_07B82C: BRA .continue

.run_horizontal_first
#_07B82E: JSR RunSlopeCollisionChecks_HorizontalFirst

.continue
#_07B831: JSR CreateVelocityFromMovingBackground

;===================================================================================================

CheckCollisionSingleLayerRun:
#_07B834: LDA.w $046C
#_07B837: CMP.b #$02
#_07B839: BEQ CheckCollisionWithMovingWallLayer

#_07B83B: CMP.b #$03
#_07B83D: BEQ FlagAndRunSlopeChecks_HorizontalFirst

#_07B83F: CMP.b #$04
#_07B841: BEQ FlagAndRunSlopeChecks_VerticalFirst

#_07B843: LDA.b $30
#_07B845: ORA.b $31
#_07B847: BNE FlagAndRunSlopeChecks_VerticalFirst

#_07B849: LDA.b $5D
#_07B84B: CMP.b #$13 ; LINKSTATE 13
#_07B84D: BEQ .skip_pit_stuff

#_07B84F: CMP.b #$08 ; LINKSTATE 08
#_07B851: BEQ .skip_pit_stuff

#_07B853: CMP.b #$09 ; LINKSTATE 09
#_07B855: BEQ .skip_pit_stuff

#_07B857: CMP.b #$0A ; LINKSTATE 0A
#_07B859: BEQ .skip_pit_stuff

#_07B85B: CMP.b #$03 ; LINKSTATE 03
#_07B85D: BEQ .skip_pit_stuff

#_07B85F: JSR TileDetect_BigArea

#_07B862: LDA.b $59
#_07B864: AND.b #$0F
#_07B866: BEQ .skip_pit_stuff

#_07B868: LDA.b #$01 ; LINKSTATE 01
#_07B86A: STA.b $5D

#_07B86C: LDA.w $0372
#_07B86F: BNE .skip_pit_stuff

#_07B871: LDA.b #$04
#_07B873: STA.b $5E

.skip_pit_stuff
#_07B875: BRL CalculateSaveFlagVelocity

;===================================================================================================

CheckCollisionWithMovingWallLayer:
#_07B878: JSR TileDetect_BigArea

#_07B87B: LDA.b $0E
#_07B87D: ORA.w $0316
#_07B880: CMP.b #$0F
#_07B882: BNE FlagAndRunSlopeChecks_VerticalFirst

; !WEIRD Moving walls make you invulnerable for some reason
#_07B884: LDA.w $031F
#_07B887: BNE .actively_blinking

#_07B889: LDA.b #$3A
#_07B88B: STA.w $031F

.actively_blinking
#_07B88E: LDA.b $67
#_07B890: BNE FlagAndRunSlopeChecks_VerticalFirst

#_07B892: LDA.w $0310
#_07B895: BEQ .no_moving_floor_y

#_07B897: LDA.b $30
#_07B899: EOR.b #$FF
#_07B89B: INC A
#_07B89C: STA.b $30

.no_moving_floor_y
#_07B89E: LDA.w $0312
#_07B8A1: BEQ FlagAndRunSlopeChecks_VerticalFirst

#_07B8A3: LDA.b $31
#_07B8A5: EOR.b #$FF
#_07B8A7: INC A
#_07B8A8: STA.b $31

;===================================================================================================

FlagAndRunSlopeChecks_VerticalFirst:
#_07B8AA: LDA.b #$01
#_07B8AC: STA.w $0315

#_07B8AF: JSR RunSlopeCollisionChecks_VerticalFirst

#_07B8B2: BRA CalculateSaveFlagVelocity

;===================================================================================================

FlagAndRunSlopeChecks_HorizontalFirst:
#_07B8B4: LDA.b #$01
#_07B8B6: STA.w $0315

#_07B8B9: JSR RunSlopeCollisionChecks_HorizontalFirst

;===================================================================================================

CalculateSaveFlagVelocity:
#_07B8BC: LDY.b #$00
#_07B8BE: JSR TileDetect_MainHandler

#_07B8C1: LDA.b $6A
#_07B8C3: BEQ .not_moving_diagonal

#_07B8C5: STZ.b $6B

.not_moving_diagonal
#_07B8C7: LDA.b $5D
#_07B8C9: CMP.b #$0B ; LINKSTATE 0B
#_07B8CB: BEQ .no_y_movement

#_07B8CD: LDY.b #$08

#_07B8CF: LDA.b $20
#_07B8D1: SEC
#_07B8D2: SBC.b $3E
#_07B8D4: STA.b $30

#_07B8D6: BEQ .no_y_movement
#_07B8D8: BMI .negative_y_movement

#_07B8DA: LDY.b #$04

.negative_y_movement
#_07B8DC: LDA.b $67
#_07B8DE: AND.b #$03
#_07B8E0: STA.b $67

#_07B8E2: TYA
#_07B8E3: TSB.b $67

.no_y_movement
#_07B8E5: LDY.b #$02

#_07B8E7: LDA.b $22
#_07B8E9: SEC
#_07B8EA: SBC.b $3F
#_07B8EC: STA.b $31

#_07B8EE: BEQ .no_x_movement
#_07B8F0: BMI .negative_x_movement

#_07B8F2: LDY.b #$01

.negative_x_movement
#_07B8F4: LDA.b $67
#_07B8F6: AND.b #$0C
#_07B8F8: STA.b $67

#_07B8FA: TYA
#_07B8FB: TSB.b $67

.no_x_movement
#_07B8FD: LDA.b $1B
#_07B8FF: BEQ .exit

#_07B901: LDA.w $046C
#_07B904: CMP.b #$04
#_07B906: BNE .exit

#_07B908: LDA.b $5D
#_07B90A: CMP.b #$04 ; LINKSTATE 04
#_07B90C: BNE .exit

#_07B90E: LDY.b #$F7

#_07B910: LDA.w $0310
#_07B913: BEQ .no_floor_y_velocity
#_07B915: BMI .negative_floor_y_velocity

#_07B917: LDY.b #$FB

.negative_floor_y_velocity
#_07B919: EOR.b #$FF
#_07B91B: INC A
#_07B91C: CLC
#_07B91D: ADC.b $30
#_07B91F: BNE .no_floor_y_velocity

#_07B921: TYA
#_07B922: AND.b $67
#_07B924: STA.b $67

.no_floor_y_velocity
#_07B926: LDY.b #$FD

#_07B928: LDA.w $0312
#_07B92B: BEQ .exit
#_07B92D: BMI .negative_floor_x_velocity

#_07B92F: LDY.b #$FE

.negative_floor_x_velocity
#_07B931: EOR.b #$FF
#_07B933: INC A
#_07B934: CLC
#_07B935: ADC.b $31
#_07B937: BNE .exit

#_07B939: TYA
#_07B93A: AND.b $67
#_07B93C: STA.b $67

.exit
#_07B93E: RTS

;===================================================================================================

RunSlopeCollisionChecks_VerticalFirst:
#_07B93F: LDA.b $6B
#_07B941: AND.b #$20
#_07B943: BNE .moving_horizontally_into_slope

#_07B945: JSR StartMovementCollisionChecks_Vertical

.moving_horizontally_into_slope
#_07B948: LDA.b $6B
#_07B94A: AND.b #$10
#_07B94C: BNE .exit

#_07B94E: JSR StartMovementCollisionChecks_Horizontal

.exit
#_07B951: RTS

;===================================================================================================

RunSlopeCollisionChecks_HorizontalFirst:
#_07B952: LDA.b $6B
#_07B954: AND.b #$10
#_07B956: BNE .moving_vertically_into_slope

#_07B958: JSR StartMovementCollisionChecks_Horizontal

.moving_vertically_into_slope
#_07B95B: LDA.b $6B
#_07B95D: AND.b #$20
#_07B95F: BNE .exit

#_07B961: JSR StartMovementCollisionChecks_Vertical

.exit
#_07B964: RTS

;===================================================================================================

CheckIfRoomNeedsDoubleLayerCheck:
#_07B965: LDA.w $046C
#_07B968: BEQ .no_layer_change

#_07B96A: CMP.b #$04
#_07B96C: BEQ .no_layer_change

#_07B96E: CMP.b #$02
#_07B970: BCC .change_layer

#_07B972: CMP.b #$03
#_07B974: BNE .useless ; !USELESS 0-length branch

.useless
#_07B976: REP #$20

#_07B978: LDA.b $E6
#_07B97A: SEC
#_07B97B: SBC.b $E8

#_07B97D: CLC
#_07B97E: ADC.b $20
#_07B980: STA.b $20
#_07B982: STA.w $0318

#_07B985: LDA.b $E0
#_07B987: SEC
#_07B988: SBC.b $E2

#_07B98A: CLC
#_07B98B: ADC.b $22
#_07B98D: STA.b $22
#_07B98F: STA.w $031A

#_07B992: SEP #$20

.change_layer
#_07B994: LDA.b #$01
#_07B996: STA.b $EE

#_07B998: SEC

#_07B999: RTS

.no_layer_change
#_07B99A: CLC

#_07B99B: RTS

;===================================================================================================

CreateVelocityFromMovingBackground:
#_07B99C: LDA.w $046C
#_07B99F: CMP.b #$01
#_07B9A1: BEQ .reset_and_exit

#_07B9A3: REP #$20

#_07B9A5: LDA.b $20
#_07B9A7: SEC
#_07B9A8: SBC.w $0318
#_07B9AB: STA.b $00

#_07B9AD: LDA.b $22
#_07B9AF: SEC
#_07B9B0: SBC.w $031A
#_07B9B3: STA.b $02

#_07B9B5: LDA.b $E8
#_07B9B7: SEC
#_07B9B8: SBC.b $E6
#_07B9BA: CLC
#_07B9BB: ADC.b $20
#_07B9BD: STA.b $20

#_07B9BF: LDA.b $E2
#_07B9C1: SEC
#_07B9C2: SBC.b $E0
#_07B9C4: CLC
#_07B9C5: ADC.b $22
#_07B9C7: STA.b $22

#_07B9C9: SEP #$20

#_07B9CB: LDA.b $67
#_07B9CD: BEQ .reset_and_exit

#_07B9CF: LDA.b $30
#_07B9D1: CLC
#_07B9D2: ADC.b $00
#_07B9D4: STA.b $30

#_07B9D6: LDA.b $31
#_07B9D8: CLC
#_07B9D9: ADC.b $02
#_07B9DB: STA.b $31

.reset_and_exit
#_07B9DD: STZ.b $EE

#_07B9DF: RTS

;===================================================================================================
; TODO directionals
RupeeTileOffset_y:
#_07B9E0: dw $0008, $0018, $0010, $0010

RupeeTileOffset_x:
#_07B9E8: dw $0008, $0008, $0000, $000F

;===================================================================================================

SpikeDamageValues:
#_07B9F0: db $08 ; green
#_07B9F1: db $08 ; blue
#_07B9F2: db $08 ; red

;===================================================================================================

StartMovementCollisionChecks_Vertical:
#_07B9F3: LDA.b $30
#_07B9F5: BNE .moving_on_axis

#_07B9F7: RTS

.moving_on_axis
#_07B9F8: LDA.b $6C
#_07B9FA: CMP.b #$01
#_07B9FC: BNE .not_in_vertical_door

#_07B9FE: LDY.b #$00

#_07BA00: LDA.b $20
#_07BA02: CMP.b #$80
#_07BA04: BCC .negative_y
#_07BA06: BRA .continue_y

.not_in_vertical_door
#_07BA08: LDY.b #$00

#_07BA0A: LDA.b $30
#_07BA0C: BMI .negative_y

.continue_y
#_07BA0E: LDY.b #$02

.negative_y
#_07BA10: TYA
#_07BA11: LSR A
#_07BA12: STA.b $66

#_07BA14: JSR TileDetectOnMovement_Vertical

#_07BA17: LDA.b $1B
#_07BA19: BNE StartMovementCollisionChecks_Vertical_HandleIndoors

#_07BA1B: BRL StartMovementCollisionChecks_Vertical_HandleOutdoors

;===================================================================================================

StartMovementCollisionChecks_Vertical_HandleIndoors:
#_07BA1E: LDA.w $0308
#_07BA21: BMI .carrying_something

#_07BA23: LDA.b $46
#_07BA25: BEQ .not_taking_damage

.carrying_something
#_07BA27: LDA.b $0E
#_07BA29: LSR A
#_07BA2A: LSR A
#_07BA2B: LSR A
#_07BA2C: LSR A
#_07BA2D: TSB.b $0E

#_07BA2F: BRL ResetDoorPropsVertical_door_pre

;---------------------------------------------------------------------------------------------------

.not_taking_damage
#_07BA32: LDA.b $6C
#_07BA34: CMP.b #$02
#_07BA36: BNE HandleAutoDoorFlagging_Vertical

#_07BA38: LDA.b $6A
#_07BA3A: BNE .not_moving_diagonally

#_07BA3C: LDA.w $046C
#_07BA3F: CMP.b #$03
#_07BA41: BNE .no_moving_floor

#_07BA43: LDA.b $EE
#_07BA45: BEQ .no_moving_floor

#_07BA47: BRL CheckForMasksRupeesConveyors_Vertical

.no_moving_floor
#_07BA4A: JSR AddInLinksYVelocity
#_07BA4D: BRL ChangeAxisOfPerpendicularDoorMovement_Vertical

.not_moving_diagonally
#_07BA50: LDA.b $62
#_07BA52: BEQ HandleAutoDoorFlagging_Vertical

#_07BA54: JSR AddInLinksYVelocity

#_07BA57: BRA ResetDoorPropsVertical

;===================================================================================================

HandleAutoDoorFlagging_Vertical:
#_07BA59: LDA.b $0E
#_07BA5B: AND.b #$70
#_07BA5D: BEQ ResetDoorPropsVertical_door_pre

#_07BA5F: STZ.b $05

#_07BA61: LDA.b $0F
#_07BA63: AND.b #$07
#_07BA65: BEQ .no_auto_move

#_07BA67: LDY.b #$00

#_07BA69: LDA.b $30
#_07BA6B: BMI .negative_y

#_07BA6D: LDY.b #$01

.negative_y
#_07BA6F: LDA.w AutoMove49Directions,Y
#_07BA72: STA.b $49

;---------------------------------------------------------------------------------------------------

.no_auto_move
#_07BA74: LDA.b #$01
#_07BA76: STA.b $6C

#_07BA78: STZ.w $03F3

#_07BA7B: LDA.b $0E
#_07BA7D: AND.b #$70
#_07BA7F: CMP.b #$70
#_07BA81: BEQ .dont_snap

#_07BA83: LDA.b $0E
#_07BA85: AND.b #$05
#_07BA87: BNE .handle_falling_too

#_07BA89: LDA.b $0E
#_07BA8B: AND.b #$20
#_07BA8D: BNE .dont_snap

#_07BA8F: BRA ResetDoorPropsVertical_door_pre

.handle_falling_too
#_07BA91: STZ.b $6B

#_07BA93: JSR AddInLinksYVelocityFalling
#_07BA96: JSR CalculateSnapScratch_Vertical

#_07BA99: STZ.b $6C

#_07BA9B: LDA.b $0E
#_07BA9D: AND.b #$20
#_07BA9F: BEQ .dont_snap

#_07BAA1: LDA.b $0E
#_07BAA3: AND.b #$01
#_07BAA5: BNE .dont_snap

#_07BAA7: LDA.b $22
#_07BAA9: AND.b #$07
#_07BAAB: CMP.b #$01
#_07BAAD: BNE .dont_snap

#_07BAAF: LDA.b $22
#_07BAB1: AND.b #$F8
#_07BAB3: STA.b $22

.dont_snap
#_07BAB5: LDA.w $0315
#_07BAB8: AND.b #$02
#_07BABA: BNE .exit

#_07BABC: LDA.b $50
#_07BABE: AND.b #$FD
#_07BAC0: STA.b $50

.exit
#_07BAC2: RTS

;===================================================================================================

ResetDoorPropsVertical_door_pre:
#_07BAC3: LDA.w $0315
#_07BAC6: AND.b #$02
#_07BAC8: BNE ResetDoorPropsVertical

#_07BACA: STZ.b $6C

;===================================================================================================

ResetDoorPropsVertical:
#_07BACC: LDA.w $0315
#_07BACF: AND.b #$02
#_07BAD1: BNE CheckForMasksRupeesConveyors_Vertical

#_07BAD3: LDA.b $50
#_07BAD5: AND.b #$FD
#_07BAD7: STA.b $50

#_07BAD9: STZ.b $49
#_07BADB: STZ.b $EF

;===================================================================================================

CheckForMasksRupeesConveyors_Vertical:
#_07BADD: LDA.b $0E
#_07BADF: AND.b #$07
#_07BAE1: BNE HandleMasksRupeesConveyors_Vertical

#_07BAE3: LDA.b $0C
#_07BAE5: AND.b #$05
#_07BAE7: BEQ HandleMasksRupeesConveyors_Vertical

#_07BAE9: STZ.w $03F3

#_07BAEC: JSR FlagMovingIntoSlopes_Vertical

#_07BAEF: LDA.b $6B
#_07BAF1: AND.b #$0F
#_07BAF3: BEQ HandleMasksRupeesConveyors_Vertical

#_07BAF5: RTS

;===================================================================================================

HandleMasksRupeesConveyors_Vertical:
#_07BAF6: STZ.b $6B

#_07BAF8: LDA.w $02E7
#_07BAFB: AND.b #$20
#_07BAFD: BEQ .no_chest_above

#_07BAFF: LDA.b $0E
#_07BB01: PHA

#_07BB02: LDA.b $0F
#_07BB04: PHA

#_07BB05: LDA.w $02EA
#_07BB08: JSL OpenChestForItem

#_07BB0C: STZ.w $02EA

#_07BB0F: PLA
#_07BB10: STA.b $0F

#_07BB12: PLA
#_07BB13: STA.b $0E

;---------------------------------------------------------------------------------------------------

.no_chest_above
#_07BB15: LDA.b $EE
#_07BB17: BNE .lower_layer

#_07BB19: LDA.w $034C
#_07BB1C: AND.b #$07
#_07BB1E: BEQ .no_mask1C

#_07BB20: LDA.b #$01
#_07BB22: TSB.w $0322

#_07BB25: BRA .check_for_rupee_tiles

;---------------------------------------------------------------------------------------------------

.no_mask1C
#_07BB27: LDA.w $02E8
#_07BB2A: AND.b #$07
#_07BB2C: BNE .check_for_rupee_tiles

#_07BB2E: LDA.b $0E
#_07BB30: AND.b #$02
#_07BB32: BNE .check_for_rupee_tiles

#_07BB34: LDA.w $0322
#_07BB37: AND.b #$FE
#_07BB39: STA.w $0322

#_07BB3C: BRA .check_for_rupee_tiles

.lower_layer
#_07BB3E: LDA.w $0320
#_07BB41: AND.b #$07
#_07BB43: BEQ .no_mask0C

#_07BB45: LDA.b #$02
#_07BB47: TSB.w $0322

#_07BB4A: BRA .check_for_rupee_tiles

.no_mask0C
#_07BB4C: LDA.w $0322
#_07BB4F: AND.b #$FD
#_07BB51: STA.w $0322

;---------------------------------------------------------------------------------------------------

.check_for_rupee_tiles
#_07BB54: LDA.w $02F7
#_07BB57: AND.b #$22
#_07BB59: BEQ .no_rupee_tiles

#_07BB5B: LDX.b #$00

#_07BB5D: AND.b #$20
#_07BB5F: BEQ .no_rupee_from_this_side

#_07BB61: LDX.b #$08

.no_rupee_from_this_side
#_07BB63: STX.b $00

#_07BB65: STZ.b $01

#_07BB67: LDA.b $66
#_07BB69: ASL A
#_07BB6A: TAY

#_07BB6B: REP #$20

#_07BB6D: LDA.l $7EF360
#_07BB71: CLC
#_07BB72: ADC.w #$0005
#_07BB75: STA.l $7EF360

#_07BB79: LDA.b $20
#_07BB7B: CLC
#_07BB7C: ADC.w RupeeTileOffset_y,Y
#_07BB7F: SEC
#_07BB80: SBC.b $00
#_07BB82: STA.b $00

#_07BB84: LDA.b $22
#_07BB86: CLC
#_07BB87: ADC.w RupeeTileOffset_x,Y
#_07BB8A: STA.b $02

#_07BB8C: SEP #$20

#_07BB8E: JSL DeleteRupeeTile

#_07BB92: LDA.b #$0A ; SFX3.0A
#_07BB94: JSR PlayLinkSFX3Panned

;---------------------------------------------------------------------------------------------------

.no_rupee_tiles
#_07BB97: LDY.b #$01 ; up

#_07BB99: LDA.w $03F1
#_07BB9C: AND.b #$22
#_07BB9E: BEQ .no_conveyor_ud

#_07BBA0: AND.b #$20
#_07BBA2: BEQ .up_conveyor

#_07BBA4: LDY.b #$02 ; down

.up_conveyor
#_07BBA6: STY.w $03F3

#_07BBA9: BRA CheckForLedgeTile_Vertical

;---------------------------------------------------------------------------------------------------

.no_conveyor_ud
#_07BBAB: LDY.b #$03 ; left

#_07BBAD: LDA.w $03F2
#_07BBB0: AND.b #$22
#_07BBB2: BEQ .no_conveyor_lr

#_07BBB4: AND.b #$20
#_07BBB6: BEQ .left_conveyor

#_07BBB8: LDY.b #$04 ; right

.left_conveyor
#_07BBBA: STY.w $03F3

#_07BBBD: BRA CheckForLedgeTile_Vertical

;---------------------------------------------------------------------------------------------------

.no_conveyor_lr
; check for spikes
#_07BBBF: LDA.w $02E8
#_07BBC2: AND.b #$07
#_07BBC4: BNE CheckForLedgeTile_Vertical

#_07BBC6: LDA.b $0E
#_07BBC8: AND.b #$02
#_07BBCA: BNE CheckForLedgeTile_Vertical

#_07BBCC: STZ.w $03F3

;===================================================================================================

CheckForLedgeTile_Vertical:
#_07BBCF: LDA.w $036D
#_07BBD2: AND.b #$07
#_07BBD4: CMP.b #$07
#_07BBD6: BNE CheckForWaterTiles_Vertical

#_07BBD8: JSR RunLedgeHopTimer
#_07BBDB: BCC CheckForWaterTiles_Vertical

#_07BBDD: JSR CancelDash

#_07BBE0: INC.w $047A

#_07BBE3: LDA.b #$01
#_07BBE5: STA.w $037B

#_07BBE8: LDA.b #$02
#_07BBEA: STA.b $4D

#_07BBEC: LDA.b #$20 ; SFX2.20
#_07BBEE: JSR PlayLinkSFX2Panned

#_07BBF1: BRA HandleUnderworldHopOntoWater_Vertical

;---------------------------------------------------------------------------------------------------

CheckForWaterTiles_Vertical:
#_07BBF3: LDA.w $0341
#_07BBF6: AND.b #$07
#_07BBF8: CMP.b #$07
#_07BBFA: BNE .on_deep_water

#_07BBFC: LDA.w $0345
#_07BBFF: BNE .on_deep_water

#_07BC01: JSR CancelDash

#_07BC04: LDA.b $1D
#_07BC06: BNE .no_layer_change

#_07BC08: JSL HandleLayerChange

#_07BC0C: BRA HandleUnderworldHopOntoWater_Vertical

;---------------------------------------------------------------------------------------------------

.no_layer_change
#_07BC0E: LDA.b #$01
#_07BC10: STA.w $0345

#_07BC13: LDA.b $26
#_07BC15: STA.w $0340

#_07BC18: STZ.w $0308
#_07BC1B: STZ.w $0309
#_07BC1E: STZ.w $0376

#_07BC21: STZ.b $5E

#_07BC23: JSL ResetSwimmingState

#_07BC27: LDA.b #$20 ; SFX2.20
#_07BC29: JSR PlayLinkSFX2Panned

;===================================================================================================

#HandleUnderworldHopOntoWater_Vertical:
#_07BC2C: LDA.b #$01
#_07BC2E: STA.w $037B

#_07BC31: JSR HopInOrOutOfWater_Vertical

#_07BC34: BRA .continue

;---------------------------------------------------------------------------------------------------

.on_deep_water
#_07BC36: LDA.w $0343
#_07BC39: AND.b #$02
#_07BC3B: BEQ .continue

#_07BC3D: LDA.w $0345
#_07BC40: BEQ .continue

#_07BC42: LDA.b $4D
#_07BC44: BEQ .not_in_recoil

#_07BC46: LDA.b #$07
#_07BC48: STA.b $0E

#_07BC4A: BRA .continue

.not_in_recoil
#_07BC4C: JSR CancelDash

#_07BC4F: STZ.w $0345

#_07BC52: LDA.w $0340
#_07BC55: STA.b $26

#_07BC57: LDA.b #$15 ; ANCILLA 15
#_07BC59: LDY.b #$00
#_07BC5B: JSL AncillaAdd_Splash
#_07BC5F: BCC .splash_around

#_07BC61: LDA.b #$01
#_07BC63: STA.w $0345

#_07BC66: LDA.b #$07
#_07BC68: STA.b $0E

#_07BC6A: BRA .continue

.splash_around
#_07BC6C: LDA.b #$01
#_07BC6E: STA.w $037B

#_07BC71: JSR HopInOrOutOfWater_Vertical

;---------------------------------------------------------------------------------------------------

; TODO stairs
.continue
#_07BC74: LDA.b $58
#_07BC76: AND.b #$07
#_07BC78: CMP.b #$07
#_07BC7A: BNE HandleLinkStairDetection

#_07BC7C: LDA.b $46
#_07BC7E: BEQ .not_taking_damage

#_07BC80: LDA.b $58
#_07BC82: AND.b #$07
#_07BC84: STA.b $0E

#_07BC86: BRL HandlePushingBonkingSnaps_Vertical

.not_taking_damage
#_07BC89: LDA.w $02C0
#_07BC8C: AND.b #$77
#_07BC8E: BEQ .no_stairs

; TODO good submodule info
#_07BC90: LDY.b #$08
#_07BC92: AND.b #$70
#_07BC94: BEQ .merged_layer_stairs

#_07BC96: LDY.b #$10

.merged_layer_stairs
#_07BC98: STY.b $11

#_07BC9A: LDA.b #$07
#_07BC9C: STA.b $10

#_07BC9E: JSR CancelDash

.no_stairs
#_07BCA1: LDA.b $66
#_07BCA3: AND.b #$02
#_07BCA5: BNE HandleLinkStairDetection

#_07BCA7: LDA.b #$02
#_07BCA9: STA.b $5E

#_07BCAB: LDA.b #$01
#_07BCAD: STA.b $57

#_07BCAF: RTS

;===================================================================================================

HandleLinkStairDetection:
#_07BCB0: LDA.b $5E
#_07BCB2: CMP.b #$02
#_07BCB4: BNE .not_stair_speed

#_07BCB6: LDX.b #$10

#_07BCB8: LDA.w $0372
#_07BCBB: BNE .dashing_speed

#_07BCBD: LDX.b #$00

.dashing_speed
#_07BCBF: STX.b $5E

.not_stair_speed
#_07BCC1: LDA.b $57
#_07BCC3: CMP.b #$01
#_07BCC5: BNE HandleUnderworldPitSlip_Vertical

#_07BCC7: LDX.b #$02
#_07BCC9: STX.b $57

;===================================================================================================

HandleUnderworldPitSlip_Vertical:
; check for pits
#_07BCCB: LDA.b $59
#_07BCCD: AND.b #$05
#_07BCCF: BEQ HandleUnderworldSpikeBlockCollision_Vertical

#_07BCD1: LDA.b $0E
#_07BCD3: AND.b #$02
#_07BCD5: BNE HandleUnderworldSpikeBlockCollision_Vertical

#_07BCD7: LDA.b $5D
#_07BCD9: CMP.b #$05 ; LINKSTATE 05
#_07BCDB: BEQ .exit

#_07BCDD: CMP.b #$02 ; LINKSTATE 02
#_07BCDF: BEQ .exit

#_07BCE1: LDA.b #$09
#_07BCE3: STA.b $5C

#_07BCE5: STZ.b $5A

#_07BCE7: LDA.b #$01
#_07BCE9: STA.b $5B

#_07BCEB: LDA.b #$01 ; LINKSTATE 01
#_07BCED: STA.b $5D

.exit
#_07BCEF: RTS

;===================================================================================================

HandleUnderworldSpikeBlockCollision_Vertical:
#_07BCF0: STZ.b $5A

#_07BCF2: LDA.w $02E8
#_07BCF5: AND.b #$07
#_07BCF7: BEQ .check_collision_type

#_07BCF9: LDA.b $46
#_07BCFB: ORA.w $031F
#_07BCFE: ORA.b $55
#_07BD00: BNE .no_spike_damage

#_07BD02: LDA.b $20
#_07BD04: LDY.b $66
#_07BD06: BNE .didnt_move

#_07BD08: AND.b #$04
#_07BD0A: BEQ .not_on_4px_edge
#_07BD0C: BRA .check_collision_type

.didnt_move
#_07BD0E: AND.b #$04
#_07BD10: BEQ .check_collision_type

.not_on_4px_edge
#_07BD12: LDA.w $031F
#_07BD15: BNE .check_collision_type

#_07BD17: LDA.l $7EF35B
#_07BD1B: TAY

#_07BD1C: LDA.w SpikeDamageValues,Y
#_07BD1F: STA.w $0373

#_07BD22: JSR CancelDash
#_07BD25: JSR ForciblyUnequipCape_quietly

#_07BD28: BRL LinkApplyTileRebound

;---------------------------------------------------------------------------------------------------

.no_spike_damage
#_07BD2B: LDA.w $02E8
#_07BD2E: AND.b #$07
#_07BD30: STA.b $0E

.check_collision_type
#_07BD32: LDA.w $046C
#_07BD35: BEQ .ignore_layer

#_07BD37: CMP.b #$04
#_07BD39: BEQ .ignore_layer

#_07BD3B: LDA.b $EE
#_07BD3D: BNE HandlePushingBonkingSnaps_Vertical

.ignore_layer
#_07BD3F: LDA.b $5F
#_07BD41: ORA.b $60
#_07BD43: BEQ .not_pushing_block

#_07BD45: LDA.b $6A
#_07BD47: BNE .not_pushing_block

#_07BD49: LDA.b $5F
#_07BD4B: STA.w $02C2

#_07BD4E: DEC.b $61
#_07BD50: BPL HandlePushingBonkingSnaps_Vertical

;---------------------------------------------------------------------------------------------------

#_07BD52: REP #$20

#_07BD54: LDY.b #$0F

#_07BD56: LDA.b $5F

.check_next_block
#_07BD58: ASL A
#_07BD59: BCC .skip_block

#_07BD5B: PHA
#_07BD5C: PHY

#_07BD5D: SEP #$20

#_07BD5F: JSR FindFreeMovingBlockSlot
#_07BD62: BCS .no_free_slot

#_07BD64: STX.b $0E

#_07BD66: TYA
#_07BD67: ASL A
#_07BD68: TAX

#_07BD69: JSR InitializePushBlock
#_07BD6C: BCS .no_free_slot

#_07BD6E: LDA.b $0E
#_07BD70: ASL A
#_07BD71: TAY

#_07BD72: JSR DrawSinglePushBlock

#_07BD75: TYX

#_07BD76: LDY.b $66

#_07BD78: TYA
#_07BD79: ASL A
#_07BD7A: STA.w $05F8,X
#_07BD7D: STA.w $0474

#_07BD80: LDA.w $05F0,X

#_07BD83: CPY.b #$01
#_07BD85: BNE .not_pushing_down

#_07BD87: DEC A

.not_pushing_down
#_07BD88: AND.b #$0F
#_07BD8A: STA.w $05E8,X

.no_free_slot
#_07BD8D: REP #$20

#_07BD8F: PLY
#_07BD90: PLA

.skip_block
#_07BD91: DEY
#_07BD92: BPL .check_next_block

;---------------------------------------------------------------------------------------------------

#_07BD94: SEP #$20

.not_pushing_block
#_07BD96: LDA.b #$15
#_07BD98: STA.b $61

;===================================================================================================

HandlePushingBonkingSnaps_Vertical:
#_07BD9A: LDA.b $0E
#_07BD9C: AND.b #$07
#_07BD9E: BNE .check_for_swimming

#_07BDA0: BRL RestartPushingTimer_UnflagDoors_Vertical

.check_for_swimming
#_07BDA3: LDA.b $5D
#_07BDA5: CMP.b #$04 ; LINKSTATE 04
#_07BDA7: BNE .not_swimming_or_moving

#_07BDA9: LDA.w $0310
#_07BDAC: BNE .moving_floor_active

#_07BDAE: JSR ResetAllAcceleration

.moving_floor_active
#_07BDB1: LDA.b $6A
#_07BDB3: BEQ .not_swimming_or_moving

#_07BDB5: JSR AddInLinksYVelocityFalling
#_07BDB8: BRA .check_for_bonk

.not_swimming_or_moving
#_07BDBA: LDA.b $0E
#_07BDBC: AND.b #$02
#_07BDBE: BNE .do_a_bonk

#_07BDC0: LDA.b $0E
#_07BDC2: AND.b #$05
#_07BDC4: CMP.b #$05
#_07BDC6: BNE .no_bonk

.do_a_bonk
#_07BDC8: LDA.b $0E
#_07BDCA: PHA

#_07BDCB: JSR BonkAndSmash
#_07BDCE: JSR RepelDash

#_07BDD1: PLA
#_07BDD2: STA.b $0E

.no_bonk
#_07BDD4: LDA.b #$01
#_07BDD6: STA.w $0302

#_07BDD9: LDA.b $0E
#_07BDDB: AND.b #$02
#_07BDDD: CMP.b #$02
#_07BDDF: BNE .check_diagonal_direction

#_07BDE1: JSR AddInLinksYVelocityFalling
#_07BDE4: BRA .check_for_bonk

.check_diagonal_direction
#_07BDE6: LDA.b $6A
#_07BDE8: CMP.b #$01
#_07BDEA: BNE .not_diagonal_facing_vetically

.diagonal_facing_horizontally
#_07BDEC: BRL RestartPushingTimer_Vertical

.not_diagonal_facing_vetically
#_07BDEF: JSR AddInLinksYVelocityFalling

#_07BDF2: LDA.b $6A
#_07BDF4: CMP.b #$02
#_07BDF6: BEQ .diagonal_facing_horizontally

;---------------------------------------------------------------------------------------------------

.check_for_bonk
#_07BDF8: LDA.b $0E
#_07BDFA: AND.b #$05
#_07BDFC: CMP.b #$05
#_07BDFE: BEQ .definitely_bonk

#_07BE00: AND.b #$04
#_07BE02: BEQ .no_bonk_this_way

#_07BE04: LDY.b #$01

#_07BE06: LDA.b $30
#_07BE08: BMI .already_negative

#_07BE0A: EOR.b #$FF
#_07BE0C: INC A

.already_negative
; just in case it was 0, make it -1
#_07BE0D: BPL .extra_positive_check

#_07BE0F: LDY.b #$FF

.extra_positive_check
#_07BE11: STY.b $00
#_07BE13: STZ.b $01

#_07BE15: LDA.b $0E
#_07BE17: AND.b #$02
#_07BE19: BNE HandlePushingObstruction_Vertical

#_07BE1B: LDA.b $22
#_07BE1D: AND.b #$07
#_07BE1F: BNE .do_not_bonk

#_07BE21: JSR BonkAndSmash
#_07BE24: JSR RepelDash

#_07BE27: BRA HandlePushingObstruction_Vertical

;---------------------------------------------------------------------------------------------------

.no_bonk_this_way
#_07BE29: LDY.b #$01

#_07BE2B: LDA.b $30
#_07BE2D: BPL .already_positive

#_07BE2F: EOR.b #$FF
#_07BE31: INC A

.already_positive
#_07BE32: BPL .make_sure_not_negative

#_07BE34: LDY.b #$FF

.make_sure_not_negative
#_07BE36: STY.b $00
#_07BE38: STZ.b $01

#_07BE3A: LDA.b $0E
#_07BE3C: AND.b #$02
#_07BE3E: BNE HandlePushingObstruction_Vertical

#_07BE40: LDA.b $22
#_07BE42: AND.b #$07
#_07BE44: BNE .do_not_bonk

.definitely_bonk
#_07BE46: JSR BonkAndSmash
#_07BE49: JSR RepelDash

#_07BE4C: BRA HandlePushingObstruction_Vertical

.do_not_bonk
#_07BE4E: JSR AddAbsoluteScratchToXCoord

#_07BE51: JMP.w HandleNudging

;===================================================================================================

HandlePushingObstruction_Vertical:
#_07BE54: LDA.b $66
#_07BE56: ASL A
#_07BE57: CMP.b $2F
#_07BE59: BNE RestartPushingTimer_Vertical

#_07BE5B: LDA.w $0315
#_07BE5E: AND.b #$01
#_07BE60: ASL A
#_07BE61: TSB.b $48

#_07BE63: LDA.b $3C
#_07BE65: BNE .dont_run_push_timer

#_07BE67: DEC.w $0371
#_07BE6A: BPL EXIT_07BE97

.dont_run_push_timer
#_07BE6C: LDY.w $0315

#_07BE6F: LDA.w $02F6
#_07BE72: AND.b #$20
#_07BE74: BEQ .not_a_flaggable_door

#_07BE76: LDA.w $0315
#_07BE79: ASL A
#_07BE7A: ASL A
#_07BE7B: ASL A
#_07BE7C: TAY

.not_a_flaggable_door
#_07BE7D: TYA
#_07BE7E: TSB.b $48

#_07BE80: BRA RestartPushingTimer_Vertical

;===================================================================================================

RestartPushingTimer_UnflagDoors_Vertical:
#_07BE82: LDA.b $EE
#_07BE84: BNE EXIT_07BE97

#_07BE86: LDA.b $48
#_07BE88: AND.b #$F6
#_07BE8A: STA.b $48

;===================================================================================================

RestartPushingTimer_Vertical:
#_07BE8C: LDA.b #$20
#_07BE8E: STA.w $0371

#_07BE91: LDA.b $48
#_07BE93: AND.b #$FD
#_07BE95: STA.b $48

;---------------------------------------------------------------------------------------------------

#EXIT_07BE97:
#_07BE97: RTS

;===================================================================================================

StartMovementCollisionChecks_Vertical_HandleOutdoors:
#_07BE98: LDA.b $5E
#_07BE9A: CMP.b #$02
#_07BE9C: BNE .not_stair_speed

#_07BE9E: LDX.b #$10

#_07BEA0: LDA.w $0372
#_07BEA3: BNE .dashing

#_07BEA5: LDX.b #$00

.dashing
#_07BEA7: STX.b $5E

.not_stair_speed
#_07BEA9: LDA.b $59
#_07BEAB: AND.b #$05
#_07BEAD: BEQ HandleLiftablesBeforeDeepWater_Vertical

#_07BEAF: LDA.b $0E
#_07BEB1: AND.b #$02
#_07BEB3: BNE HandleLiftablesBeforeDeepWater_Vertical

#_07BEB5: LDA.b $5D
#_07BEB7: CMP.b #$05 ; LINKSTATE 05
#_07BEB9: BEQ .exit

#_07BEBB: CMP.b #$02 ; LINKSTATE 02
#_07BEBD: BEQ .exit

#_07BEBF: LDA.b #$09
#_07BEC1: STA.b $5C

#_07BEC3: STZ.b $5A

#_07BEC5: LDA.b #$01
#_07BEC7: STA.b $5B

#_07BEC9: LDA.b #$01 ; LINKSTATE 01
#_07BECB: STA.b $5D

.exit
#_07BECD: RTS

;===================================================================================================

HandleLiftablesBeforeDeepWater_Vertical:
#_07BECE: LDA.w $0366
#_07BED1: AND.b #$02
#_07BED3: BEQ .not_touching_some_liftable

#_07BED5: LDA.w $036A
#_07BED8: LSR A
#_07BED9: STA.w $0368

#_07BEDC: BRA .index_is_set

.not_touching_some_liftable
#_07BEDE: STZ.w $0368

.index_is_set
#_07BEE1: LDA.w $0341
#_07BEE4: AND.b #$02
#_07BEE6: BEQ HandleLinkEnteringWater_Vertical

#_07BEE8: BRA TestWaterEntryVertical

;===================================================================================================

UNREACHABLE_07BEEA:
#_07BEEA: LDA.w $0341
#_07BEED: AND.b #$07
#_07BEEF: CMP.b #$07
#_07BEF1: BNE HandleLinkEnteringWater_Vertical

;===================================================================================================

TestWaterEntryVertical:
#_07BEF3: LDA.w $0345
#_07BEF6: BNE HandleLinkEnteringWater_Vertical

#_07BEF8: LDA.b $4D
#_07BEFA: BNE HandleLinkEnteringWater_Vertical

#_07BEFC: JSR ResetSwordAndItemUsage
#_07BEFF: JSR CancelDash

#_07BF02: LDA.b #$01
#_07BF04: STA.w $0345

#_07BF07: LDA.b $26
#_07BF09: STA.w $0340

#_07BF0C: STZ.w $0376
#_07BF0F: STZ.b $5E

#_07BF11: JSL ResetSwimmingState

#_07BF15: LDA.w $0351
#_07BF18: CMP.b #$01
#_07BF1A: BNE .jump_into_water

;---------------------------------------------------------------------------------------------------

#_07BF1C: JSR ForciblyUnequipCape_quietly

#_07BF1F: LDA.l $7EF356
#_07BF23: BEQ .jump_into_water

#_07BF25: LDA.w $02E0
#_07BF28: BNE HandleLinkEnteringWater_Vertical

#_07BF2A: LDA.b #$04 ; LINKSTATE 04
#_07BF2C: STA.b $5D

#_07BF2E: BRA HandleLinkEnteringWater_Vertical

.jump_into_water
#_07BF30: LDA.b #$20 ; SFX2.20
#_07BF32: JSR PlayLinkSFX2Panned

#_07BF35: LDA.b $3E
#_07BF37: STA.b $20

#_07BF39: LDA.b $40
#_07BF3B: STA.b $21

#_07BF3D: LDA.b $3F
#_07BF3F: STA.b $22

#_07BF41: LDA.b $41
#_07BF43: STA.b $23

#_07BF45: LDA.b #$01
#_07BF47: STA.w $037B

#_07BF4A: JSR HopInOrOutOfWater_Vertical

;===================================================================================================

HandleLinkEnteringWater_Vertical:
#_07BF4D: LDA.w $0345
#_07BF50: BEQ .not_on_deep_water

#_07BF52: LDA.w $036D
#_07BF55: AND.b #$07
#_07BF57: BEQ .no_ledge

#_07BF59: STA.b $0E

#_07BF5B: BRL HandlePushingBonkingSnaps_Vertical

.no_ledge
#_07BF5E: LDA.b $58
#_07BF60: AND.b #$07
#_07BF62: CMP.b #$07
#_07BF64: BEQ .stairs_detected

#_07BF66: LDA.w $0343
#_07BF69: AND.b #$07
#_07BF6B: CMP.b #$07
#_07BF6D: BNE .not_on_deep_water

.stairs_detected
#_07BF6F: JSR CancelDash

#_07BF72: STZ.w $0345

#_07BF75: LDA.b $4D
#_07BF77: BNE .not_on_deep_water

#_07BF79: LDA.w $0340
#_07BF7C: STA.b $26

#_07BF7E: LDA.b #$01
#_07BF80: STA.w $037B

#_07BF83: LDA.b #$15 ; ANCILLA 15
#_07BF85: LDY.b #$00
#_07BF87: JSL AncillaAdd_Splash

#_07BF8B: BRL HopInOrOutOfWater_Vertical

;---------------------------------------------------------------------------------------------------

.not_on_deep_water
#_07BF8E: LDA.w $036E
#_07BF91: AND.b #$02
#_07BF93: BNE .horizontal_ledge_detected

#_07BF95: LDA.w $0370
#_07BF98: AND.b #$22
#_07BF9A: BEQ .no_weird_ledges

.horizontal_ledge_detected
#_07BF9C: LDA.b #$07
#_07BF9E: STA.b $0E

#_07BFA0: BRL HandlePushingBonkingSnaps_Vertical

.no_weird_ledges
#_07BFA3: LDA.w $036D
#_07BFA6: AND.b #$70
#_07BFA8: BEQ CheckForNorthSouthLedges

#_07BFAA: JSR RunLedgeHopTimer
#_07BFAD: BCC CheckForNorthSouthLedges

#_07BFAF: JSR CancelDash

#_07BFB2: LDA.b #$01
#_07BFB4: STA.w $037B
#_07BFB7: STA.b $78

#_07BFB9: LDA.b #$0B ; LINKSTATE 0B
#_07BFBB: STA.b $5D

#_07BFBD: STZ.b $46

#_07BFBF: LDA.b #$FF
#_07BFC1: STA.w $0364
#_07BFC4: STA.w $0365

#_07BFC7: STZ.b $48
#_07BFC9: STZ.b $5E

#_07BFCB: LDY.b #$02
#_07BFCD: LDX.b #$14

#_07BFCF: LDA.w $0345
#_07BFD2: BEQ .jumping_into_water

#_07BFD4: LDY.b #$04
#_07BFD6: LDX.b #$0E

.jumping_into_water
#_07BFD8: STX.w $0362
#_07BFDB: STX.w $0363

#_07BFDE: STY.b $4D

#_07BFE0: RTS

;===================================================================================================

CheckForNorthSouthLedges:
#_07BFE1: LDA.w $036D
#_07BFE4: AND.b #$07
#_07BFE6: BEQ .dont_hop

#_07BFE8: JSR RunLedgeHopTimer
#_07BFEB: BCC .dont_hop

#_07BFED: LDA.b #$20 ; SFX2.20
#_07BFEF: JSR PlayLinkSFX2Panned

#_07BFF2: LDA.b #$01
#_07BFF4: STA.w $037B

#_07BFF7: JSR CancelDash

#_07BFFA: STZ.b $48
#_07BFFC: STZ.b $5E

#_07BFFE: BRL FindValidLandingTile_North

.dont_hop
#_07C001: LDA.w $0345
#_07C004: BEQ .not_in_water

#_07C006: BRL OverworldRecoverAndDoGraves

.not_in_water
#_07C009: LDA.w $036F
#_07C00C: AND.b #$07
#_07C00E: BEQ CheckOverworldHopTiles_Vertical

#_07C010: LDA.w $036D
#_07C013: AND.b #$77
#_07C015: BNE CheckOverworldHopTiles_Vertical

#_07C017: LDX.b #$04

#_07C019: LDA.b $76
#_07C01B: CMP.b #$2F
#_07C01D: BEQ .check_north_east

#_07C01F: LDX.b #$01

.check_north_east
#_07C021: TXA
#_07C022: AND.w $036F
#_07C025: BEQ CheckOverworldHopTiles_Vertical

#_07C027: JSR RunLedgeHopTimer
#_07C02A: BCC CheckOverworldHopTiles_Vertical

#_07C02C: JSR CancelDash

#_07C02F: LDX.b #$10

#_07C031: LDA.w $036F
#_07C034: AND.b #$04
#_07C036: BNE .dont_invert_recoil

#_07C038: TXA
#_07C039: EOR.b #$FF
#_07C03B: INC A
#_07C03C: TAX

.dont_invert_recoil
#_07C03D: LDA.b #$01
#_07C03F: STA.w $037B

#_07C042: STX.b $28

#_07C044: STZ.b $48
#_07C046: STZ.b $5E

#_07C048: LDA.b #$01
#_07C04A: STA.w $037B
#_07C04D: STA.b $78

#_07C04F: LDA.b #$02
#_07C051: STA.b $4D

#_07C053: LDA.b #$14
#_07C055: STA.w $0362
#_07C058: STA.w $0363

#_07C05B: LDA.b #$FF
#_07C05D: STA.w $0364

#_07C060: STZ.b $46

#_07C062: LDA.b #$0E ; LINKSTATE 0E
#_07C064: STA.b $5D

#_07C066: RTS

;===================================================================================================

CheckOverworldHopTiles_Vertical:
#_07C067: LDA.w $036E
#_07C06A: AND.b #$70
#_07C06C: BEQ OverworldRecoverAndDoGraves

#_07C06E: LDA.w $036D
#_07C071: AND.b #$77
#_07C073: BNE OverworldRecoverAndDoGraves

#_07C075: JSR RunLedgeHopTimer
#_07C078: BCC OverworldRecoverAndDoGraves

#_07C07A: JSR CancelDash

#_07C07D: LDA.b #$20 ; SFX2.20
#_07C07F: JSR PlayLinkSFX2Panned

#_07C082: LDY.b #$03

#_07C084: LDA.w $036E
#_07C087: AND.b #$40
#_07C089: BNE .diagonal_north_ledge

#_07C08B: LDY.b #$02

.diagonal_north_ledge
#_07C08D: STY.b $66

#_07C08F: LDA.b #$01
#_07C091: STA.w $037B

#_07C094: STZ.b $48
#_07C096: STZ.b $5E

#_07C098: BRL FindValidLandingTile_DiagonalNorth

;===================================================================================================

OverworldRecoverAndDoGraves:
#_07C09B: LDA.b $58
#_07C09D: AND.b #$07
#_07C09F: CMP.b #$07
#_07C0A1: BNE OverworldHandleStairsAndPushGraves

#_07C0A3: LDA.b $46
#_07C0A5: BEQ .not_recoiling

#_07C0A7: LDA.b $58
#_07C0A9: AND.b #$07
#_07C0AB: STA.b $0E

#_07C0AD: BRL HandlePushingBonkingSnaps_Vertical

.not_recoiling
#_07C0B0: LDA.b $66
#_07C0B2: AND.b #$02
#_07C0B4: BNE OverworldHandleStairsAndPushGraves

#_07C0B6: LDA.b #$02
#_07C0B8: STA.b $5E

#_07C0BA: LDA.b #$01
#_07C0BC: STA.b $57

#_07C0BE: RTS

;===================================================================================================
; This is where superspeed happens
OverworldHandleStairsAndPushGraves:
#_07C0BF: LDA.b $5E
#_07C0C1: CMP.b #$02
#_07C0C3: BNE .not_stair_speed

#_07C0C5: LDX.b #$10

#_07C0C7: LDA.w $0372
#_07C0CA: BNE .dashing

#_07C0CC: LDX.b #$00

.dashing
#_07C0CE: STX.b $5E

.not_stair_speed
#_07C0D0: LDA.b $57
#_07C0D2: CMP.b #$01
#_07C0D4: BNE .not_slow_speed

#_07C0D6: LDX.b #$02
#_07C0D8: STX.b $57

.not_slow_speed
#_07C0DA: LDA.b $0C
#_07C0DC: AND.b #$05
#_07C0DE: BEQ CheckForGravePush

#_07C0E0: LDA.b $0E
#_07C0E2: AND.b #$07
#_07C0E4: BNE CheckForGravePush

#_07C0E6: JSR FlagMovingIntoSlopes_Vertical

#_07C0E9: LDA.b $6B
#_07C0EB: AND.b #$0F
#_07C0ED: BEQ CheckForGravePush

#_07C0EF: RTS

;===================================================================================================

CheckForGravePush:
#_07C0F0: STZ.b $6B

#_07C0F2: LDA.w $02E7
#_07C0F5: AND.b #$02
#_07C0F7: BEQ .reset_push_timer

#_07C0F9: LDA.b $66
#_07C0FB: BNE .reset_push_timer

#_07C0FD: LDA.w $0372
#_07C100: BNE .dashing

#_07C102: DEC.b $61
#_07C104: BPL CheckForSpikeTouch

.dashing
#_07C106: LDA.b $0E
#_07C108: PHA

#_07C109: LDY.b #$04
#_07C10B: LDA.b #$24 ; ANCILLA 24
#_07C10D: JSL AncillaAdd_GraveStone

#_07C111: PLA
#_07C112: STA.b $0E

.reset_push_timer
#_07C114: LDA.b #$34
#_07C116: STA.b $61

;===================================================================================================

CheckForSpikeTouch:
#_07C118: LDA.w $02E8
#_07C11B: AND.b #$07
#_07C11D: BEQ .not_touching_spike

#_07C11F: LDA.b $55
#_07C121: BNE .invulnerable

#_07C123: LDA.w $031F
#_07C126: BNE .invulnerable

#_07C128: LDA.b $20

#_07C12A: LDY.b $66
#_07C12C: BNE .didnt_move

#_07C12E: AND.b #$04
#_07C130: BEQ .not_on_4px_edge

#_07C132: BRA .not_touching_spike

.didnt_move
#_07C134: AND.b #$04
#_07C136: BEQ .not_touching_spike

.not_on_4px_edge
#_07C138: LDA.l $7EF35B
#_07C13C: TAY

#_07C13D: LDA.w SpikeDamageValues,Y
#_07C140: STA.w $0373

#_07C143: JSR CancelDash
#_07C146: JSR ForciblyUnequipCape_quietly

#_07C149: BRL LinkApplyTileRebound

.invulnerable
#_07C14C: LDA.w $02E8
#_07C14F: AND.b #$07
#_07C151: STA.b $0E

.not_touching_spike
#_07C153: BRL HandlePushingBonkingSnaps_Vertical

;===================================================================================================
; This code is weird, particularly the dashing part.
;===================================================================================================
RunLedgeHopTimer:
#_07C156: LDA.b $4D
#_07C158: CMP.b #$01
#_07C15A: BEQ .restore_coordinates

#_07C15C: LDA.w $0372
#_07C15F: BNE .dashing

#_07C161: DEC.w $0375
#_07C164: BPL .restore_coordinates

#_07C166: LDA.b #$13
#_07C168: STA.w $0375

#_07C16B: BRA .exit_and_set

.dashing
#_07C16D: JSR .restore_coordinates

.exit_and_set
#_07C170: SEC

#_07C171: RTS

;---------------------------------------------------------------------------------------------------

.restore_coordinates
#_07C172: REP #$20

#_07C174: LDA.w $0FC4
#_07C177: STA.b $20

#_07C179: LDA.w $0FC2
#_07C17C: STA.b $22

#_07C17E: SEP #$20

#_07C180: STZ.b $2A
#_07C182: STZ.b $2B

#_07C184: LDA.b $1B
#_07C186: BNE EXIT_AND_CLC ; useless

;---------------------------------------------------------------------------------------------------

#EXIT_AND_CLC:
#_07C188: CLC

#_07C189: RTS

;===================================================================================================

BonkAndSmash:
#_07C18A: LDA.w $0372
#_07C18D: BEQ EXIT_AND_CLC

#_07C18F: LDA.w $02F1
#_07C192: CMP.b #$40
#_07C194: BEQ EXIT_AND_CLC

#_07C196: LDA.w $02EF
#_07C199: AND.b #$70
#_07C19B: BEQ EXIT_AND_CLC

#_07C19D: JSL SmashRockPileFromHere
#_07C1A1: BCC .didnt_break_here

#_07C1A3: JSR .break_pile

.didnt_break_here
#_07C1A6: JSL SmashRockPileFromAbove
#_07C1AA: BCC .exit

;---------------------------------------------------------------------------------------------------

.break_pile
#_07C1AC: LDX.b #$08

.check_next
#_07C1AE: CMP.w LinkToss_liftable_tiles,X
#_07C1B1: BEQ .match

#_07C1B3: DEX
#_07C1B4: BPL .check_next

#_07C1B6: BRA .exit

;---------------------------------------------------------------------------------------------------

.match
#_07C1B8: CPX.b #$02
#_07C1BA: BEQ .play_sfx

#_07C1BC: CPX.b #$04
#_07C1BE: BNE .skip_sfx

.play_sfx
#_07C1C0: PHX

#_07C1C1: LDA.b #$32 ; SFX3.32
#_07C1C3: JSR PlayLinkSFX3Panned

#_07C1C6: PLX

.skip_sfx
#_07C1C7: TXA
#_07C1C8: JSL SpawnImmediatelySmashedTerrain

.exit
#_07C1CC: RTS

;===================================================================================================

AddInLinksYVelocityFalling:
#_07C1CD: REP #$20

#_07C1CF: LDA.b $51
#_07C1D1: AND.w #$0007

#_07C1D4: LDY.b $30
#_07C1D6: BPL .positive

#_07C1D8: SEC
#_07C1D9: SBC.w #$0008

.positive
#_07C1DC: EOR.w #$FFFF
#_07C1DF: INC A

#_07C1E0: CLC
#_07C1E1: ADC.b $20
#_07C1E3: STA.b $20

#_07C1E5: SEP #$20

#_07C1E7: RTS

;===================================================================================================

CalculateSnapScratch_Vertical:
#_07C1E8: LDA.b $0E
#_07C1EA: AND.b #$04
#_07C1EC: BEQ .invert_first

#_07C1EE: LDY.b #$01
#_07C1F0: LDA.b $30
#_07C1F2: BMI .negative_y_a

#_07C1F4: EOR.b #$FF
#_07C1F6: INC A

.negative_y_a
#_07C1F7: BPL .positive_y_a

#_07C1F9: LDY.b #$FF

.positive_y_a
#_07C1FB: STY.b $00
#_07C1FD: STZ.b $01

#_07C1FF: BRA AddAbsoluteScratchToXCoord

.invert_first
#_07C201: LDY.b #$01

#_07C203: LDA.b $30
#_07C205: BPL .positive_y_b

#_07C207: EOR.b #$FF
#_07C209: INC A

.positive_y_b
#_07C20A: BPL .positive_y_c

#_07C20C: LDY.b #$FF

.positive_y_c
#_07C20E: STY.b $00
#_07C210: STZ.b $01

;===================================================================================================

AddAbsoluteScratchToXCoord:
#_07C212: REP #$20

#_07C214: LDA.b $00
#_07C216: CMP.w #$0080
#_07C219: BCC .positive

#_07C21B: ORA.w #$FF00

.positive
#_07C21E: CLC
#_07C21F: ADC.b $22
#_07C221: STA.b $22

#_07C223: SEP #$20

#_07C225: RTS

;===================================================================================================

ChangeAxisOfPerpendicularDoorMovement_Vertical:
#_07C226: LDA.b #$02
#_07C228: TSB.b $50

#_07C22A: LDA.b $0E
#_07C22C: LSR A
#_07C22D: LSR A
#_07C22E: LSR A
#_07C22F: LSR A
#_07C230: ORA.b $0E
#_07C232: AND.b #$0F
#_07C234: STA.b $00

#_07C236: AND.b #$07
#_07C238: BNE .dont_clear_doorway

#_07C23A: STZ.b $6C

#_07C23C: BRA .exit

;---------------------------------------------------------------------------------------------------

.dont_clear_doorway
#_07C23E: LDA.b $22
#_07C240: CMP.b #$80
#_07C242: BCC .x_low_positive

#_07C244: LDY.b #$01

#_07C246: LDA.b $30
#_07C248: BMI .keep_negative_x

#_07C24A: EOR.b #$FF
#_07C24C: INC A

.keep_negative_x
#_07C24D: BPL .keep_y1_positive

#_07C24F: LDY.b #$FF

.keep_y1_positive
#_07C251: STY.b $00
#_07C253: STZ.b $01

#_07C255: LDY.b #$04
#_07C257: BRA .continue

;---------------------------------------------------------------------------------------------------

.x_low_positive
#_07C259: LDY.b #$01

#_07C25B: LDA.b $30
#_07C25D: BPL .keep_positive_x

#_07C25F: EOR.b #$FF
#_07C261: INC A

.keep_positive_x
#_07C262: BPL .keep_y2_positive

#_07C264: LDY.b #$FF

.keep_y2_positive
#_07C266: STY.b $00
#_07C268: STZ.b $01

#_07C26A: LDY.b #$06

.continue
#_07C26C: LDA.b $50
#_07C26E: AND.b #$01
#_07C270: BNE .cannot_turn

#_07C272: STY.b $2F

.cannot_turn
#_07C274: REP #$20

#_07C276: LDA.b $00
#_07C278: CMP.w #$0080
#_07C27B: BCC .positive

#_07C27D: ORA.w #$FF00

.positive
#_07C280: CLC
#_07C281: ADC.b $22
#_07C283: STA.b $22

#_07C285: SEP #$20

.exit
#_07C287: RTS

;===================================================================================================

AddInLinksYVelocity:
#_07C288: REP #$20

#_07C28A: LDA.b $30
#_07C28C: AND.w #$00FF
#_07C28F: CMP.w #$0080
#_07C292: BCC .positive

#_07C294: ORA.w #$FF00

.positive
#_07C297: EOR.w #$FFFF
#_07C29A: INC A
#_07C29B: CLC
#_07C29C: ADC.b $20
#_07C29E: STA.b $20

#_07C2A0: SEP #$20

#_07C2A2: RTS

;===================================================================================================

pool HopInOrOutOfWater_Vertical

.speed_y
#_07C2A3: db 24, 16, 16

.speed_z
#_07C2A6: db 36, 24, 24

.timer
#_07C2A9: db 16, 16, 16

pool off

;---------------------------------------------------------------------------------------------------

HopInOrOutOfWater_Vertical:
#_07C2AC: LDA.b $1B
#_07C2AE: BNE .indoors

#_07C2B0: LDX.b #$02
#_07C2B2: BRA .continue

.indoors
#_07C2B4: LDX.b $1D

#_07C2B6: LDA.w $047A
#_07C2B9: BEQ .continue

#_07C2BB: LDX.b #$00

.continue
#_07C2BD: STX.b $00

#_07C2BF: LDA.w .speed_y,X
#_07C2C2: TAX

#_07C2C3: LDA.b $66
#_07C2C5: BNE .dont_invert

#_07C2C7: TXA
#_07C2C8: EOR.b #$FF
#_07C2CA: INC A
#_07C2CB: TAX

.dont_invert
#_07C2CC: STX.b $27
#_07C2CE: STZ.b $28

#_07C2D0: LDX.b $00

#_07C2D2: LDA.w .speed_z,X
#_07C2D5: STA.b $29
#_07C2D7: STA.w $02C7

#_07C2DA: STZ.b $24
#_07C2DC: STZ.b $25

#_07C2DE: LDA.w .timer,X
#_07C2E1: STA.b $46

#_07C2E3: LDA.b $4D
#_07C2E5: CMP.b #$02
#_07C2E7: BEQ .already_recoiling

#_07C2E9: LDA.b #$01
#_07C2EB: STA.b $4D

#_07C2ED: STZ.w $0360

.already_recoiling
#_07C2F0: LDA.b #$06 ; LINKSTATE 06
#_07C2F2: STA.b $5D

#_07C2F4: RTS

;===================================================================================================

pool FindValidLandingTile_North

.recoil_y
#_07C2F5: db $10, $10, $14, $14, $18, $18, $1C, $1C
#_07C2FD: db $20, $20, $24, $24, $28, $28, $2C, $2C
#_07C305: db $30, $30, $30, $30, $30, $30, $30, $30
#_07C30D: db $30, $30, $30, $30, $30, $30, $30, $30

.recoil_z
#_07C315: db $18, $18, $18, $18, $1C, $1C, $1C, $1C
#_07C31D: db $20, $20, $20, $20, $24, $24, $24, $24
#_07C325: db $28, $28, $28, $28, $2C, $2C, $2C, $2C
#_07C32D: db $30, $30, $30, $30, $34, $34, $34, $34

.timer
#_07C335: db $10, $10, $14, $14, $18, $18, $1C, $1C
#_07C33D: db $20, $20, $24, $24, $28, $28, $2C, $2C
#_07C345: db $30, $30, $30, $30, $30, $30, $30, $30
#_07C34D: db $30, $30, $30, $30, $30, $30, $30, $30

pool off

;---------------------------------------------------------------------------------------------------

FindValidLandingTile_North:
#_07C355: LDA.b $20
#_07C357: STA.b $32

#_07C359: PHA

#_07C35A: LDA.b $21
#_07C35C: STA.b $33

#_07C35E: PHA

;---------------------------------------------------------------------------------------------------

.next
#_07C35F: REP #$20

#_07C361: LDA.b $20
#_07C363: SEC
#_07C364: SBC.w #$0010
#_07C367: STA.b $20

#_07C369: SEP #$20

#_07C36B: LDA.b $66
#_07C36D: ASL A
#_07C36E: TAY

#_07C36F: JSR TileDetectOnMovement_Vertical

#_07C372: LDA.w $0343
#_07C375: ORA.w $035B
#_07C378: ORA.w $0357
#_07C37B: ORA.w $0341

#_07C37E: AND.b #$07
#_07C380: CMP.b #$07
#_07C382: BNE .next

;---------------------------------------------------------------------------------------------------

#_07C384: LDA.w $0341
#_07C387: AND.b #$07
#_07C389: BEQ .didnt_find_water

#_07C38B: LDA.b #$01
#_07C38D: STA.b $4D

#_07C38F: STZ.w $0360

#_07C392: LDA.b #$01
#_07C394: STA.w $0345

#_07C397: LDA.b $26
#_07C399: STA.w $0340

#_07C39C: JSL ResetSwimmingState

#_07C3A0: STZ.w $0376
#_07C3A3: STZ.b $5E

;---------------------------------------------------------------------------------------------------

.didnt_find_water
#_07C3A5: REP #$20

#_07C3A7: LDA.b $20
#_07C3A9: SEC
#_07C3AA: SBC.w #$0010
#_07C3AD: STA.b $20

#_07C3AF: LDA.b $32
#_07C3B1: SEC
#_07C3B2: SBC.b $20
#_07C3B4: STA.b $32

;---------------------------------------------------------------------------------------------------

#_07C3B6: SEP #$20

#_07C3B8: PLA
#_07C3B9: STA.b $21

#_07C3BB: PLA
#_07C3BC: STA.b $20

#_07C3BE: LDA.b $32
#_07C3C0: LSR A
#_07C3C1: LSR A
#_07C3C2: LSR A
#_07C3C3: TAY

#_07C3C4: LDA.w .recoil_y,Y
#_07C3C7: TAX

#_07C3C8: LDA.b $66
#_07C3CA: BNE .dont_flip

#_07C3CC: TXA
#_07C3CD: EOR.b #$FF
#_07C3CF: INC A
#_07C3D0: TAX

.dont_flip
#_07C3D1: STX.b $27
#_07C3D3: STZ.b $28

#_07C3D5: LDA.w .recoil_z,Y
#_07C3D8: STA.b $29
#_07C3DA: STA.w $02C7

#_07C3DD: STZ.b $24
#_07C3DF: STZ.b $25

#_07C3E1: LDA.w .timer,Y
#_07C3E4: STA.b $46

#_07C3E6: LDA.b #$02
#_07C3E8: STA.b $4D

#_07C3EA: STZ.w $0360

#_07C3ED: LDA.b #$06 ; LINKSTATE 06
#_07C3EF: STA.b $5D

#_07C3F1: RTS

;===================================================================================================

pool FindValidLandingTile_DiagonalNorth

.recoil_y
#_07C3F2: db $08, $08, $08, $08, $10, $10, $14, $14
#_07C3FA: db $18, $18, $18, $18, $20, $20, $20, $20
#_07C402: db $08, $14, $14, $14, $18, $18, $18, $18
#_07C40A: db $1C, $1C, $1C, $1C, $20, $20, $20, $20

.recoil_x
#_07C412: db $08, $08, $08, $08, $10, $10, $10, $10
#_07C41A: db $18, $18, $18, $18, $10, $10, $10, $10
#_07C422: db $08, $14, $14, $14, $18, $18, $18, $18
#_07C42A: db $1C, $1C, $1C, $1C, $20, $20, $20, $20

.recoil_z
#_07C432: db $20, $20, $20, $20, $20, $20, $20, $20
#_07C43A: db $24, $24, $24, $24, $28, $28, $28, $28
#_07C442: db $20, $28, $28, $28, $2C, $2C, $2C, $2C
#_07C44A: db $30, $30, $30, $30, $34, $34, $34, $34
#_07C452: db $E0, $FF, $20, $00

pool off

;---------------------------------------------------------------------------------------------------

FindValidLandingTile_DiagonalNorth:
#_07C456: LDA.b $3E
#_07C458: PHA

#_07C459: LDA.b $22
#_07C45B: PHA

#_07C45C: LDA.b $23
#_07C45E: PHA

#_07C45F: LDX.b $66
#_07C461: PHX

#_07C462: LDY.b #$01
#_07C464: CPX.b #$02
#_07C466: BNE .positive

#_07C468: LDY.b #$FF

.positive
#_07C46A: STY.b $28

#_07C46C: LDA.b #$00
#_07C46E: STA.b $66

#_07C470: JSR FindLandingSpotDiagonallyDown

#_07C473: PLX

#_07C474: PLA
#_07C475: STA.b $23

#_07C477: PLA
#_07C478: STA.b $22

#_07C47A: PLA
#_07C47B: STA.b $3E

;---------------------------------------------------------------------------------------------------

#_07C47D: REP #$20

#_07C47F: LDA.b $32
#_07C481: SEC
#_07C482: SBC.b $20
#_07C484: LSR A
#_07C485: LSR A
#_07C486: LSR A
#_07C487: TAY

#_07C488: LDA.b $32
#_07C48A: STA.b $20

#_07C48C: SEP #$20

#_07C48E: LDA.w .recoil_y,Y
#_07C491: EOR.b #$FF
#_07C493: INC A
#_07C494: STA.b $27

#_07C496: LDA.w .recoil_x,Y
#_07C499: CPX.b #$02
#_07C49B: BNE .dont_flip_sign

#_07C49D: EOR.b #$FF
#_07C49F: INC A

.dont_flip_sign
#_07C4A0: STA.b $28

#_07C4A2: LDA.w .recoil_z,Y
#_07C4A5: STA.b $29
#_07C4A7: STA.w $02C7

#_07C4AA: STZ.b $24
#_07C4AC: STZ.b $25
#_07C4AE: STZ.w $0364

#_07C4B1: LDA.b #$02
#_07C4B3: STA.b $4D

#_07C4B5: STZ.w $0360

#_07C4B8: LDA.b #$0D ; LINKSTATE 0D
#_07C4BA: STA.b $5D

#_07C4BC: RTS

;===================================================================================================

StartMovementCollisionChecks_Horizontal:
#_07C4BD: LDA.b $31
#_07C4BF: BNE .moving_on_axis

#_07C4C1: RTS

.moving_on_axis
#_07C4C2: LDA.b $6C
#_07C4C4: CMP.b #$02
#_07C4C6: BNE .not_in_horizontal_door

#_07C4C8: LDY.b #$04

#_07C4CA: LDA.b $22
#_07C4CC: CMP.b #$80
#_07C4CE: BCC .negative_x
#_07C4D0: BRA .continue_x

.not_in_horizontal_door
#_07C4D2: LDY.b #$04
#_07C4D4: LDA.b $31
#_07C4D6: BMI .negative_x

.continue_x
#_07C4D8: LDY.b #$06

.negative_x
#_07C4DA: TYA
#_07C4DB: LSR A
#_07C4DC: STA.b $66

#_07C4DE: JSR TileDetectOnMovement_Horizontal

#_07C4E1: LDA.b $1B
#_07C4E3: BNE StartMovementCollisionChecks_Horizontal_HandleIndoors

#_07C4E5: BRL StartMovementCollisionChecks_Horizontal_HandleOutdoors

;===================================================================================================

StartMovementCollisionChecks_Horizontal_HandleIndoors:
#_07C4E8: LDA.w $0308
#_07C4EB: BMI .carrying_something

#_07C4ED: LDA.b $46
#_07C4EF: BEQ .not_taking_damage

.carrying_something
#_07C4F1: LDA.b $0E
#_07C4F3: LSR A
#_07C4F4: LSR A
#_07C4F5: LSR A
#_07C4F6: LSR A
#_07C4F7: TSB.b $0E

#_07C4F9: BRL ResetDoorPropsHorizontal

;---------------------------------------------------------------------------------------------------

.not_taking_damage
#_07C4FC: LDA.b $6A
#_07C4FE: BNE .not_moving_diagonally

#_07C500: STZ.b $57

.not_moving_diagonally
#_07C502: LDA.b $6C
#_07C504: CMP.b #$01
#_07C506: BNE HandleAutoDoorFlagging_Horizontal

#_07C508: LDA.b $6A
#_07C50A: BNE HandleAutoDoorFlagging_Horizontal

#_07C50C: LDA.w $046C
#_07C50F: CMP.b #$03
#_07C511: BNE .no_moving_floor

#_07C513: LDA.b $EE
#_07C515: BEQ .no_moving_floor

#_07C517: BRL CheckForMasksRupeesConveyors_Horizontal

.no_moving_floor
#_07C51A: JSR SnapOnX
#_07C51D: JSR ChangeAxisOfPerpendicularDoorMovement_Horizontal
#_07C520: BRL HandleNudgingInADoor

;===================================================================================================

HandleAutoDoorFlagging_Horizontal:
#_07C523: LDA.b $0E
#_07C525: AND.b #$70
#_07C527: BEQ ResetDoorPropsHorizontal

#_07C529: STZ.b $05

#_07C52B: LDA.b $0F
#_07C52D: AND.b #$07
#_07C52F: BEQ .no_auto_move

#_07C531: LDY.b #$02

#_07C533: LDA.b $31
#_07C535: BMI .negative_x

#_07C537: LDY.b #$03

.negative_x
#_07C539: LDA.w AutoMove49Directions,Y
#_07C53C: STA.b $49

;---------------------------------------------------------------------------------------------------

.no_auto_move
#_07C53E: LDA.b #$02
#_07C540: STA.b $6C

#_07C542: STZ.w $03F3

#_07C545: LDA.b $0E
#_07C547: AND.b #$70
#_07C549: CMP.b #$70
#_07C54B: BEQ .dont_snap

#_07C54D: LDA.b $0E
#_07C54F: AND.b #$07
#_07C551: BNE .go_snap

#_07C553: LDA.b $0E
#_07C555: AND.b #$70
#_07C557: BNE .dont_snap

#_07C559: BRA ResetDoorPropsHorizontal

.go_snap
#_07C55B: STZ.b $6B
#_07C55D: STZ.b $6C

#_07C55F: JSR SnapOnX

#_07C562: JML CalculateSnapScratch_Horizontal

.dont_snap
#_07C566: LDA.w $0315
#_07C569: AND.b #$02
#_07C56B: BNE .exit

#_07C56D: LDA.b $50
#_07C56F: AND.b #$FD
#_07C571: STA.b $50

.exit
#_07C573: RTS

;===================================================================================================

ResetDoorPropsHorizontal:
#_07C574: LDA.w $0315
#_07C577: AND.b #$02
#_07C579: BNE CheckForMasksRupeesConveyors_Horizontal

#_07C57B: LDA.b $50
#_07C57D: AND.b #$FD
#_07C57F: STA.b $50

#_07C581: STZ.b $6C
#_07C583: STZ.b $EF
#_07C585: STZ.b $49

;===================================================================================================

CheckForMasksRupeesConveyors_Horizontal:
#_07C587: LDA.b $0E
#_07C589: AND.b #$02
#_07C58B: BNE HandleMasksRupeesConveyors_Horizontal

#_07C58D: LDA.b $0C
#_07C58F: AND.b #$05
#_07C591: BEQ HandleMasksRupeesConveyors_Horizontal

#_07C593: STZ.w $03F3

#_07C596: JSR FlagMovingIntoSlopes_Horizontal

#_07C599: LDA.b $6B
#_07C59B: AND.b #$0F
#_07C59D: BEQ HandleMasksRupeesConveyors_Horizontal

#_07C59F: RTS

;===================================================================================================

HandleMasksRupeesConveyors_Horizontal:
#_07C5A0: STZ.b $6B

#_07C5A2: LDA.b $EE
#_07C5A4: BNE .lower_layer

#_07C5A6: LDA.w $034C
#_07C5A9: AND.b #$07
#_07C5AB: BEQ .no_mask_1C

#_07C5AD: LDA.b #$01
#_07C5AF: TSB.w $0322

#_07C5B2: BRA .check_for_rupee_tiles

;---------------------------------------------------------------------------------------------------

.no_mask_1C
#_07C5B4: LDA.w $02E8
#_07C5B7: AND.b #$07
#_07C5B9: BNE .check_for_rupee_tiles

#_07C5BB: LDA.b $0E
#_07C5BD: AND.b #$02
#_07C5BF: BNE .check_for_rupee_tiles

#_07C5C1: LDA.w $0322
#_07C5C4: AND.b #$FE
#_07C5C6: STA.w $0322
#_07C5C9: BRA .check_for_rupee_tiles

.lower_layer
#_07C5CB: LDA.w $0320
#_07C5CE: AND.b #$07
#_07C5D0: BEQ .no_mask0C

#_07C5D2: LDA.b #$02
#_07C5D4: TSB.w $0322

#_07C5D7: BRA .check_for_rupee_tiles

.no_mask0C
#_07C5D9: LDA.w $0322
#_07C5DC: AND.b #$FD
#_07C5DE: STA.w $0322

;---------------------------------------------------------------------------------------------------

.check_for_rupee_tiles
#_07C5E1: LDA.w $02F7
#_07C5E4: AND.b #$22
#_07C5E6: BEQ .no_rupee_tiles

#_07C5E8: LDX.b #$00
#_07C5EA: AND.b #$20
#_07C5EC: BEQ .no_rupee_from_this_side

#_07C5EE: LDX.b #$08

.no_rupee_from_this_side
#_07C5F0: STX.b $00

#_07C5F2: STZ.b $01

#_07C5F4: LDA.b $66
#_07C5F6: ASL A
#_07C5F7: TAY

#_07C5F8: REP #$20

#_07C5FA: LDA.l $7EF360
#_07C5FE: CLC
#_07C5FF: ADC.w #$0005
#_07C602: STA.l $7EF360

#_07C606: LDA.b $20
#_07C608: CLC
#_07C609: ADC.w RupeeTileOffset_y,Y
#_07C60C: SEC
#_07C60D: SBC.b $00
#_07C60F: STA.b $00

#_07C611: LDA.b $22
#_07C613: CLC
#_07C614: ADC.w RupeeTileOffset_x,Y
#_07C617: STA.b $02

#_07C619: SEP #$20

#_07C61B: JSL DeleteRupeeTile

#_07C61F: LDA.b #$0A ; SFX3.0A
#_07C621: JSR PlayLinkSFX3Panned

;---------------------------------------------------------------------------------------------------

.no_rupee_tiles
#_07C624: LDY.b #$01 ; up

#_07C626: LDA.w $03F1
#_07C629: AND.b #$22
#_07C62B: BEQ .no_conveyor_ud

#_07C62D: AND.b #$20
#_07C62F: BEQ .up_conveyor

#_07C631: LDY.b #$02 ; down

.up_conveyor
#_07C633: STY.w $03F3

#_07C636: BRA CheckForLedgeTile_Horizontal

;---------------------------------------------------------------------------------------------------

.no_conveyor_ud
#_07C638: LDY.b #$03 ; left

#_07C63A: LDA.w $03F2
#_07C63D: AND.b #$22
#_07C63F: BEQ .no_conveyor_lr

#_07C641: AND.b #$20
#_07C643: BEQ .left_conveyor

#_07C645: LDY.b #$04 ; right

.left_conveyor
#_07C647: STY.w $03F3

#_07C64A: BRA CheckForLedgeTile_Horizontal

;---------------------------------------------------------------------------------------------------

.no_conveyor_lr
#_07C64C: LDA.w $02E8
#_07C64F: AND.b #$07
#_07C651: BNE CheckForLedgeTile_Horizontal

#_07C653: LDA.b $0E
#_07C655: AND.b #$02
#_07C657: BNE CheckForLedgeTile_Horizontal

#_07C659: STZ.w $03F3

;===================================================================================================

CheckForLedgeTile_Horizontal:
#_07C65C: LDA.w $036E
#_07C65F: AND.b #$07
#_07C661: CMP.b #$07
#_07C663: BNE CheckForWaterTiles_Horizontal

#_07C665: JSR RunLedgeHopTimer
#_07C668: BCC CheckForWaterTiles_Horizontal

#_07C66A: JSR CancelDash

#_07C66D: INC.w $047A

#_07C670: LDA.b #$02
#_07C672: STA.b $4D

#_07C674: BRA HandleUnderworldHopOntoWater_Horizontal

;===================================================================================================

CheckForWaterTiles_Horizontal:
#_07C676: LDA.w $0341
#_07C679: AND.b #$07
#_07C67B: CMP.b #$07
#_07C67D: BNE .not_deep_water

#_07C67F: LDA.w $0345
#_07C682: BNE .not_deep_water

#_07C684: LDA.b $5D
#_07C686: CMP.b #$06 ; LINKSTATE 06
#_07C688: BEQ .not_deep_water

#_07C68A: LDA.b $3E
#_07C68C: STA.b $20

#_07C68E: LDA.b $40
#_07C690: STA.b $21

#_07C692: LDA.b $3F
#_07C694: STA.b $22

#_07C696: LDA.b $41
#_07C698: STA.b $23

#_07C69A: JSR CancelDash

#_07C69D: LDA.b $1D
#_07C69F: BNE .dont_change_layer

#_07C6A1: JSL HandleLayerChange
#_07C6A5: BRA HandleUnderworldHopOntoWater_Horizontal

.dont_change_layer
#_07C6A7: LDA.b #$01
#_07C6A9: STA.w $0345

#_07C6AC: LDA.b $26
#_07C6AE: STA.w $0340

#_07C6B1: STZ.w $0308
#_07C6B4: STZ.w $0309

#_07C6B7: STZ.w $0376

#_07C6BA: STZ.b $5E

#_07C6BC: JSL ResetSwimmingState

;===================================================================================================

#HandleUnderworldHopOntoWater_Horizontal:
#_07C6C0: LDA.b #$01
#_07C6C2: STA.w $037B

#_07C6C5: JSR HopInOrOutOfWater_Horizontal

#_07C6C8: LDA.b #$20 ; SFX2.20
#_07C6CA: JSR PlayLinkSFX2Panned

#_07C6CD: BRA HandleUnderworldPitSlip_Horizontal

.not_deep_water
#_07C6CF: LDA.w $0343
#_07C6D2: AND.b #$07
#_07C6D4: CMP.b #$07
#_07C6D6: BNE HandleUnderworldPitSlip_Horizontal

#_07C6D8: LDA.w $0345
#_07C6DB: BEQ HandleUnderworldPitSlip_Horizontal

#_07C6DD: LDA.b $4D
#_07C6DF: BEQ .not_in_recoil

#_07C6E1: LDA.b #$07
#_07C6E3: STA.b $0E
#_07C6E5: BRA HandleUnderworldPitSlip_Horizontal

.not_in_recoil
#_07C6E7: JSR CancelDash

#_07C6EA: LDA.b $4D
#_07C6EC: BNE HandleUnderworldPitSlip_Horizontal

#_07C6EE: LDA.w $0340
#_07C6F1: STA.b $26

#_07C6F3: STZ.w $0345

#_07C6F6: LDA.b #$15 ; ANCILLA 15
#_07C6F8: LDY.b #$00
#_07C6FA: JSL AncillaAdd_Splash

#_07C6FE: LDA.b #$01
#_07C700: STA.w $037B

#_07C703: JSR HopInOrOutOfWater_Horizontal

;===================================================================================================

HandleUnderworldPitSlip_Horizontal:
#_07C706: LDA.b $59
#_07C708: AND.b #$05
#_07C70A: BEQ HandleUnderworldSpikeBlockCollision_Horizontal

#_07C70C: LDA.b $0E
#_07C70E: AND.b #$02
#_07C710: BNE HandleUnderworldSpikeBlockCollision_Horizontal

#_07C712: LDA.b $5D
#_07C714: CMP.b #$05 ; LINKSTATE 05
#_07C716: BEQ .exit

#_07C718: CMP.b #$02 ; LINKSTATE 02
#_07C71A: BEQ .exit

#_07C71C: LDA.b #$09
#_07C71E: STA.b $5C

#_07C720: STZ.b $5A

#_07C722: LDA.b #$01
#_07C724: STA.b $5B

#_07C726: LDA.b #$01 ; LINKSTATE 01
#_07C728: STA.b $5D

.exit
#_07C72A: RTS

;===================================================================================================

HandleUnderworldSpikeBlockCollision_Horizontal:
#_07C72B: STZ.b $5B

#_07C72D: LDA.w $02E8
#_07C730: AND.b #$07
#_07C732: BEQ .check_collision_type

#_07C734: LDA.b $46
#_07C736: ORA.w $031F
#_07C739: ORA.b $55
#_07C73B: BNE .no_spike_damage

#_07C73D: LDA.b $22

#_07C73F: LDY.b $66
#_07C741: CPY.b #$02
#_07C743: BNE .didnt_move

#_07C745: AND.b #$04
#_07C747: BEQ .not_on_4px_edge
#_07C749: BRA .check_collision_type

.didnt_move
#_07C74B: AND.b #$04
#_07C74D: BEQ .check_collision_type

.not_on_4px_edge
#_07C74F: LDA.w $031F
#_07C752: BNE .check_collision_type

#_07C754: LDA.l $7EF35B
#_07C758: TAY

#_07C759: LDA.w SpikeDamageValues,Y
#_07C75C: STA.w $0373

#_07C75F: JSR CancelDash
#_07C762: JSR ForciblyUnequipCape_quietly

#_07C765: BRL LinkApplyTileRebound

;---------------------------------------------------------------------------------------------------

.no_spike_damage
#_07C768: LDA.w $02E8
#_07C76B: AND.b #$07
#_07C76D: STA.b $0E

.check_collision_type
#_07C76F: LDA.w $046C
#_07C772: BEQ .ignore_layer

#_07C774: CMP.b #$04
#_07C776: BEQ .ignore_layer

#_07C778: LDA.b $EE
#_07C77A: BNE CancelStairDragWithHorizontals

.ignore_layer
#_07C77C: LDA.b $5F
#_07C77E: ORA.b $60
#_07C780: BEQ .not_pushing_block

#_07C782: LDA.b $6A
#_07C784: BNE .not_pushing_block

#_07C786: LDA.b $5F
#_07C788: STA.w $02C2

#_07C78B: DEC.b $61
#_07C78D: BPL CancelStairDragWithHorizontals

;---------------------------------------------------------------------------------------------------

#_07C78F: REP #$20

#_07C791: LDY.b #$0F
#_07C793: LDA.b $5F

.check_next_block
#_07C795: ASL A
#_07C796: BCC .skip_block

#_07C798: PHA
#_07C799: PHY

#_07C79A: SEP #$20

#_07C79C: JSR FindFreeMovingBlockSlot
#_07C79F: BCS .no_free_slot

#_07C7A1: STX.b $0E

#_07C7A3: TYA
#_07C7A4: ASL A
#_07C7A5: TAX

#_07C7A6: JSR InitializePushBlock
#_07C7A9: BCS .no_free_slot

#_07C7AB: LDA.b $0E
#_07C7AD: ASL A
#_07C7AE: TAY

#_07C7AF: JSR DrawSinglePushBlock

#_07C7B2: TYX

#_07C7B3: LDY.b $66

#_07C7B5: TYA
#_07C7B6: ASL A
#_07C7B7: STA.w $05F8,X
#_07C7BA: STA.w $0474

#_07C7BD: LDA.w $05E4,X

#_07C7C0: CPY.b #$02
#_07C7C2: BEQ .not_pushing_left

#_07C7C4: DEC A

.not_pushing_left
#_07C7C5: AND.b #$0F
#_07C7C7: STA.w $05E8,X

.no_free_slot
#_07C7CA: REP #$20

#_07C7CC: PLY
#_07C7CD: PLA

.skip_block
#_07C7CE: DEY
#_07C7CF: BPL .check_next_block

;---------------------------------------------------------------------------------------------------

#_07C7D1: SEP #$20

.not_pushing_block
#_07C7D3: LDA.b #$15
#_07C7D5: STA.b $61

;===================================================================================================

CancelStairDragWithHorizontals:
#_07C7D7: LDA.b $6A
#_07C7D9: BNE HandlePushingBonkingSnaps_Horizontal

#_07C7DB: STZ.b $57

#_07C7DD: LDA.b $5E
#_07C7DF: CMP.b #$02
#_07C7E1: BNE HandlePushingBonkingSnaps_Horizontal

#_07C7E3: STZ.b $5E

;===================================================================================================

HandlePushingBonkingSnaps_Horizontal:
#_07C7E5: LDA.b $0E
#_07C7E7: AND.b #$07
#_07C7E9: BNE .check_swimming

#_07C7EB: BRL RestartPushingTimer_UnflagDoors_Horizontal

.check_swimming
#_07C7EE: LDA.b $5D
#_07C7F0: CMP.b #$04 ; LINKSTATE 04
#_07C7F2: BNE .not_swimming_or_moving

#_07C7F4: LDA.w $0312
#_07C7F7: BNE .not_swimming_or_moving

#_07C7F9: JSR ResetAllAcceleration

.not_swimming_or_moving
#_07C7FC: LDA.b $0E
#_07C7FE: AND.b #$02
#_07C800: BEQ .do_no_bonk

#_07C802: LDA.b $0E
#_07C804: PHA

#_07C805: JSR BonkAndSmash
#_07C808: JSR RepelDash

#_07C80B: PLA
#_07C80C: STA.b $0E

.do_no_bonk
#_07C80E: LDA.b #$01
#_07C810: STA.w $0302

#_07C813: LDA.b $0E
#_07C815: AND.b #$07
#_07C817: CMP.b #$07
#_07C819: BNE .no_x_snap

#_07C81B: JSR SnapOnX
#_07C81E: BRA .check_for_bonk

.no_x_snap
#_07C820: LDA.b $6A
#_07C822: CMP.b #$02
#_07C824: BNE .not_horizontally_facing_diagonal

.diagonal_facing_vertically
#_07C826: BRL RestartPushingTimer_Horizontal

.not_horizontally_facing_diagonal
#_07C829: JSR SnapOnX

#_07C82C: LDA.b $6A
#_07C82E: CMP.b #$01
#_07C830: BEQ .diagonal_facing_vertically

;---------------------------------------------------------------------------------------------------

.check_for_bonk
#_07C832: LDA.b $0E
#_07C834: AND.b #$05
#_07C836: CMP.b #$05
#_07C838: BEQ .definitely_bonk

#_07C83A: AND.b #$04
#_07C83C: BEQ .no_bonk_this_way

#_07C83E: LDY.b #$01
#_07C840: LDA.b $31
#_07C842: BMI .already_negative

#_07C844: EOR.b #$FF
#_07C846: INC A

.already_negative
#_07C847: BPL .extra_positive_check

#_07C849: LDY.b #$FF

.extra_positive_check
#_07C84B: STY.b $00
#_07C84D: STZ.b $01

#_07C84F: LDA.b $0E
#_07C851: AND.b #$02
#_07C853: BNE HandlePushingObstruction_Horizontal

#_07C855: LDA.b $20
#_07C857: AND.b #$07
#_07C859: BNE .do_not_bonk

#_07C85B: JSR BonkAndSmash
#_07C85E: JSR RepelDash

#_07C861: BRA HandlePushingObstruction_Horizontal

;---------------------------------------------------------------------------------------------------

.no_bonk_this_way
#_07C863: LDY.b #$01

#_07C865: LDA.b $31
#_07C867: BPL .already_positive

#_07C869: EOR.b #$FF
#_07C86B: INC A

.already_positive
#_07C86C: BPL .make_sure_not_negative

#_07C86E: LDY.b #$FF

.make_sure_not_negative
#_07C870: STY.b $00
#_07C872: STZ.b $01

#_07C874: LDA.b $0E
#_07C876: AND.b #$02
#_07C878: BNE HandlePushingObstruction_Horizontal

#_07C87A: LDA.b $20
#_07C87C: AND.b #$07
#_07C87E: BNE .do_not_bonk

.definitely_bonk
#_07C880: JSR BonkAndSmash
#_07C883: JSR RepelDash

#_07C886: BRA HandlePushingObstruction_Horizontal

.do_not_bonk
#_07C888: JSR AddAbsoluteScratchToYCoord

#_07C88B: JMP.w HandleNudging

;===================================================================================================

HandlePushingObstruction_Horizontal:
#_07C88E: LDA.b $66
#_07C890: ASL A
#_07C891: CMP.b $2F
#_07C893: BNE RestartPushingTimer_Horizontal

#_07C895: LDA.w $0315
#_07C898: AND.b #$01
#_07C89A: ASL A
#_07C89B: TSB.b $48

#_07C89D: LDA.b $3C
#_07C89F: BNE .dont_run_push_timer

#_07C8A1: DEC.w $0371
#_07C8A4: BPL EXIT_07C8D1

.dont_run_push_timer
#_07C8A6: LDY.w $0315

#_07C8A9: LDA.w $02F6
#_07C8AC: AND.b #$20
#_07C8AE: BEQ .not_a_flaggable_door

#_07C8B0: LDA.w $0315
#_07C8B3: ASL A
#_07C8B4: ASL A
#_07C8B5: ASL A
#_07C8B6: TAY

.not_a_flaggable_door
#_07C8B7: TYA
#_07C8B8: TSB.b $48

#_07C8BA: BRA RestartPushingTimer_Horizontal

;===================================================================================================

RestartPushingTimer_UnflagDoors_Horizontal:
; TODO why does this check for layer???
#_07C8BC: LDA.b $EE
#_07C8BE: BNE EXIT_07C8D1

#_07C8C0: LDA.b $48
#_07C8C2: AND.b #$F6
#_07C8C4: STA.b $48

;===================================================================================================

RestartPushingTimer_Horizontal:
#_07C8C6: LDA.b #$20
#_07C8C8: STA.w $0371

#_07C8CB: LDA.b $48
#_07C8CD: AND.b #$FD
#_07C8CF: STA.b $48

;---------------------------------------------------------------------------------------------------

#EXIT_07C8D1:
#_07C8D1: RTS

;===================================================================================================

StartMovementCollisionChecks_Horizontal_HandleOutdoors:
#_07C8D2: LDA.b $6A
#_07C8D4: BNE .no_speed_reset

#_07C8D6: STZ.b $57

#_07C8D8: LDA.b $5E
#_07C8DA: CMP.b #$02
#_07C8DC: BNE .no_speed_reset

#_07C8DE: STZ.b $5E

.no_speed_reset
#_07C8E0: LDA.b $59
#_07C8E2: AND.b #$05
#_07C8E4: BEQ HandleLiftablesBeforeDeepWater_Horizontal

#_07C8E6: LDA.b $0E
#_07C8E8: AND.b #$02
#_07C8EA: BNE HandleLiftablesBeforeDeepWater_Horizontal

#_07C8EC: LDA.b $5D
#_07C8EE: CMP.b #$05 ; LINKSTATE 05
#_07C8F0: BEQ .exit

#_07C8F2: CMP.b #$02 ; LINKSTATE 02
#_07C8F4: BEQ .exit

#_07C8F6: LDA.b #$09
#_07C8F8: STA.b $5C

#_07C8FA: STZ.b $5A

#_07C8FC: LDA.b #$01
#_07C8FE: STA.b $5B

#_07C900: LDA.b #$01 ; LINKSTATE 01
#_07C902: STA.b $5D

.exit
#_07C904: RTS

;---------------------------------------------------------------------------------------------------

HandleLiftablesBeforeDeepWater_Horizontal:
#_07C905: LDA.w $0366
#_07C908: AND.b #$02
#_07C90A: BEQ .not_touching_some_liftable

#_07C90C: LDA.w $036A
#_07C90F: LSR A
#_07C910: STA.w $0369

#_07C913: BRA .index_is_set

.not_touching_some_liftable
#_07C915: STZ.w $0369

.index_is_set
#_07C918: LDA.w $0341
#_07C91B: AND.b #$04
#_07C91D: BEQ HandleLinkEnteringWater_Horizontal

#_07C91F: BRA TestWaterEntry_Horizontal

;===================================================================================================

UNREACHABLE_07C921:
#_07C921: LDA.w $0341
#_07C924: AND.b #$07
#_07C926: CMP.b #$07
#_07C928: BNE HandleLinkEnteringWater_Horizontal

;===================================================================================================

TestWaterEntry_Horizontal:
#_07C92A: LDA.w $0345
#_07C92D: BNE HandleLinkEnteringWater_Horizontal

#_07C92F: LDA.b $4D
#_07C931: BNE HandleLinkEnteringWater_Horizontal

#_07C933: JSR CancelDash
#_07C936: JSR ResetSwordAndItemUsage

#_07C939: LDA.b #$01
#_07C93B: STA.w $0345

#_07C93E: LDA.b $26
#_07C940: STA.w $0340

#_07C943: JSL ResetSwimmingState

#_07C947: STZ.w $0376
#_07C94A: STZ.b $5E

#_07C94C: LDA.w $0351
#_07C94F: CMP.b #$01
#_07C951: BNE .jump_into_water

#_07C953: JSR ForciblyUnequipCape_quietly

#_07C956: LDA.l $7EF356
#_07C95A: BEQ .jump_into_water

#_07C95C: LDA.w $02E0
#_07C95F: BNE HandleLinkEnteringWater_Horizontal

#_07C961: LDA.b #$04 ; LINKSTATE 04
#_07C963: STA.b $5D

#_07C965: BRA HandleLinkEnteringWater_Horizontal

;---------------------------------------------------------------------------------------------------

.jump_into_water
#_07C967: LDA.b $3E
#_07C969: STA.b $20

#_07C96B: LDA.b $40
#_07C96D: STA.b $21

#_07C96F: LDA.b $3F
#_07C971: STA.b $22

#_07C973: LDA.b $41
#_07C975: STA.b $23

#_07C977: LDA.b #$01
#_07C979: STA.w $037B

#_07C97C: JSR HopInOrOutOfWater_Horizontal

#_07C97F: LDA.b #$20 ; SFX2.20
#_07C981: JSR PlayLinkSFX2Panned

;===================================================================================================

HandleLinkEnteringWater_Horizontal:
#_07C984: LDA.w $0345
#_07C987: BEQ .not_on_deep_water

#_07C989: LDA.w $036E
#_07C98C: AND.b #$07
#_07C98E: CMP.b #$07
#_07C990: BEQ .no_horizontal_ledges
#_07C992: BRA .no_vertical_ledges

.not_on_deep_water
#_07C994: LDA.w $036D
#_07C997: AND.b #$42
#_07C999: BEQ .no_vertical_ledges

.no_horizontal_ledges
#_07C99B: LDA.b #$07
#_07C99D: STA.b $0E

#_07C99F: BRL HandlePushingBonkingSnaps_Horizontal

.no_vertical_ledges
#_07C9A2: LDA.w $0343
#_07C9A5: AND.b #$07
#_07C9A7: CMP.b #$07
#_07C9A9: BNE HandleLinkLedgeTile_Horizontal

#_07C9AB: LDA.w $0345
#_07C9AE: BEQ HandleLinkLedgeTile_Horizontal

#_07C9B0: JSR CancelDash

#_07C9B3: LDA.b $4D
#_07C9B5: BNE HandleLinkLedgeTile_Horizontal

#_07C9B7: LDA.w $0340
#_07C9BA: STA.b $26

#_07C9BC: STZ.w $0345

#_07C9BF: LDA.b #$15 ; ANCILLA 15
#_07C9C1: LDY.b #$00
#_07C9C3: JSL AncillaAdd_Splash

#_07C9C7: LDA.b #$01
#_07C9C9: STA.w $037B

#_07C9CC: BRL HopInOrOutOfWater_Horizontal

;===================================================================================================

HandleLinkLedgeTile_Horizontal:
#_07C9CF: LDA.w $036E
#_07C9D2: AND.b #$07
#_07C9D4: BEQ CheckForWeirdLedges_Horizontal

#_07C9D6: JSR RunLedgeHopTimer
#_07C9D9: BCC CheckForWeirdLedges_Horizontal

#_07C9DB: LDA.b #$20 ; SFX2.20
#_07C9DD: JSR PlayLinkSFX2Panned

#_07C9E0: LDX.b #$10

#_07C9E2: LDA.b $66
#_07C9E4: AND.b #$01
#_07C9E6: BNE .positive

#_07C9E8: TXA
#_07C9E9: EOR.b #$FF
#_07C9EB: INC A
#_07C9EC: TAX

.positive
#_07C9ED: STX.b $28

#_07C9EF: JSR CancelDash

#_07C9F2: LDA.b #$02
#_07C9F4: STA.b $4D

#_07C9F6: LDA.b #$14
#_07C9F8: STA.w $0362
#_07C9FB: STA.w $0363

#_07C9FE: LDA.b #$FF
#_07CA00: STA.w $0364

#_07CA03: LDA.b #$0C ; LINKSTATE 0C
#_07CA05: STA.b $5D

#_07CA07: LDA.b #$01
#_07CA09: STA.w $037B
#_07CA0C: STA.b $78

#_07CA0E: STZ.b $48
#_07CA10: STZ.b $5E

#_07CA12: LDA.b $1B
#_07CA14: BNE .indoors

#_07CA16: LDA.b #$02
#_07CA18: STA.b $EE

.indoors
#_07CA1A: LDA.b $66
#_07CA1C: AND.b #$FD
#_07CA1E: ASL A
#_07CA1F: TAY

#_07CA20: LDA.b $22
#_07CA22: PHA

#_07CA23: LDA.b $23
#_07CA25: PHA

#_07CA26: JSR FindHorizontalHopTile

#_07CA29: LDA.b #$01
#_07CA2B: STA.b $66

#_07CA2D: CPX.b #$FF
#_07CA2F: BEQ .find_south

#_07CA31: JSR FindVerticalHopTile
#_07CA34: BRL .finish

.find_south
#_07CA37: JSR FindTileToLandOnSouth

.finish
#_07CA3A: PLA
#_07CA3B: STA.b $23

#_07CA3D: PLA
#_07CA3E: STA.b $22

#_07CA40: RTS

;===================================================================================================
; TODO these weird EP tiles?
CheckForWeirdLedges_Horizontal:
#_07CA41: LDA.w $0370
#_07CA44: AND.b #$77
#_07CA46: BEQ CheckLedgeTypes_Horizontal

#_07CA48: JSR RunLedgeHopTimer
#_07CA4B: BCC CheckLedgeTypes_Horizontal

#_07CA4D: LDA.b #$20 ; SFX2.20
#_07CA4F: JSR PlayLinkSFX2Panned

#_07CA52: LDX.b #$0F ; LINKSTATE 0F

#_07CA54: AND.b #$07
#_07CA56: BNE .dumb_thing_has_sfx

#_07CA58: LDX.b #$10 ; LINKSTATE 10

.dumb_thing_has_sfx
#_07CA5A: STX.b $5D

#_07CA5C: LDX.b #$10

#_07CA5E: LDA.b $66
#_07CA60: AND.b #$01
#_07CA62: BNE .positive

#_07CA64: LDX.b #$F0

.positive
#_07CA66: STX.b $28

#_07CA68: JSR CancelDash

#_07CA6B: LDA.b #$02
#_07CA6D: STA.b $4D

#_07CA6F: LDA.b #$14
#_07CA71: STA.w $0362
#_07CA74: STA.w $0363

#_07CA77: LDA.b #$FF
#_07CA79: STA.w $0364

#_07CA7C: STZ.b $46

#_07CA7E: LDA.b #$01
#_07CA80: STA.w $037B
#_07CA83: STA.b $78

#_07CA85: STZ.b $48
#_07CA87: STZ.b $5E

#_07CA89: RTS

;===================================================================================================

CheckLedgeTypes_Horizontal:
#_07CA8A: LDA.w $036E
#_07CA8D: AND.b #$70
#_07CA8F: BEQ .dont_hop

#_07CA91: LDA.w $036E
#_07CA94: AND.b #$07
#_07CA96: BNE .dont_hop

#_07CA98: LDA.w $0370
#_07CA9B: AND.b #$77
#_07CA9D: BNE .dont_hop

#_07CA9F: LDA.b $5D
#_07CAA1: CMP.b #$0D ; LINKSTATE 0D
#_07CAA3: BEQ .dont_hop

#_07CAA5: JSR RunLedgeHopTimer
#_07CAA8: BCC .dont_hop

#_07CAAA: LDA.b #$20 ; SFX2.20
#_07CAAC: JSR PlayLinkSFX2Panned

#_07CAAF: JSR CancelDash

#_07CAB2: LDA.b #$01
#_07CAB4: STA.w $037B

#_07CAB7: STZ.b $48
#_07CAB9: STZ.b $5E

#_07CABB: BRL FindValidLandingTile_DiagonalNorth

;---------------------------------------------------------------------------------------------------

.dont_hop
#_07CABE: LDA.w $036F
#_07CAC1: AND.b #$07
#_07CAC3: BEQ .dont_quickhop

#_07CAC5: LDA.w $036E
#_07CAC8: AND.b #$07
#_07CACA: BNE .dont_quickhop

#_07CACC: LDA.w $0370
#_07CACF: AND.b #$77
#_07CAD1: BNE .dont_quickhop

#_07CAD3: JSR RunLedgeHopTimer
#_07CAD6: BCC .dont_quickhop

#_07CAD8: LDX.b #$10

#_07CADA: LDA.b $66
#_07CADC: AND.b #$01
#_07CADE: BNE .dont_invert

#_07CAE0: TXA
#_07CAE1: EOR.b #$FF
#_07CAE3: INC A
#_07CAE4: TAX

.dont_invert
#_07CAE5: STX.b $28

#_07CAE7: JSR CancelDash

#_07CAEA: LDA.b #$02
#_07CAEC: STA.b $4D

#_07CAEE: LDA.b #$14
#_07CAF0: STA.w $0362
#_07CAF3: STA.w $0363

#_07CAF6: LDA.b #$FF
#_07CAF8: STA.w $0364

#_07CAFB: LDA.b #$0E ; LINKSTATE 0E
#_07CAFD: STA.b $5D

#_07CAFF: STZ.b $46

#_07CB01: LDA.b #$01
#_07CB03: STA.w $037B
#_07CB06: STA.b $78

#_07CB08: STZ.b $48
#_07CB0A: STZ.b $5E

#_07CB0C: RTS

;---------------------------------------------------------------------------------------------------

.dont_quickhop
#_07CB0D: LDA.b $0E
#_07CB0F: AND.b #$02
#_07CB11: BNE .slope_reset

#_07CB13: LDA.b $0C
#_07CB15: AND.b #$05
#_07CB17: BEQ .slope_reset

#_07CB19: LDA.w $0372
#_07CB1C: BEQ .not_dashing

#_07CB1E: LDA.b $2F
#_07CB20: AND.b #$04
#_07CB22: BEQ .slope_reset

.not_dashing
#_07CB24: JSR FlagMovingIntoSlopes_Horizontal

#_07CB27: LDA.b $6B
#_07CB29: AND.b #$0F
#_07CB2B: BEQ .slope_reset

#_07CB2D: RTS

;---------------------------------------------------------------------------------------------------

.slope_reset
#_07CB2E: STZ.b $6B

#_07CB30: LDA.w $02E8
#_07CB33: AND.b #$07
#_07CB35: BEQ .didnt_hit_spike

#_07CB37: LDA.b $55
#_07CB39: BNE .invulnerable

#_07CB3B: LDA.w $031F
#_07CB3E: BNE .invulnerable

#_07CB40: LDA.b $22

#_07CB42: LDY.b $66
#_07CB44: CPY.b #$02
#_07CB46: BNE .invert_logic

#_07CB48: AND.b #$04
#_07CB4A: BEQ .take_damage
#_07CB4C: BRA .didnt_hit_spike

.invert_logic
#_07CB4E: AND.b #$04
#_07CB50: BEQ .didnt_hit_spike

.take_damage
#_07CB52: LDA.l $7EF35B
#_07CB56: TAY

#_07CB57: LDA.w SpikeDamageValues,Y
#_07CB5A: STA.w $0373

#_07CB5D: JSR CancelDash

#_07CB60: BRL LinkApplyTileRebound

;---------------------------------------------------------------------------------------------------

.invulnerable
#_07CB63: LDA.w $02E8
#_07CB66: AND.b #$07
#_07CB68: STA.b $0E

.didnt_hit_spike
#_07CB6A: BRL HandlePushingBonkingSnaps_Horizontal

;===================================================================================================

SnapOnX:
#_07CB6D: REP #$20

#_07CB6F: LDA.b $22
#_07CB71: AND.w #$0007

#_07CB74: LDY.b $31
#_07CB76: BPL .positive_x

#_07CB78: SEC
#_07CB79: SBC.w #$0008

.positive_x
#_07CB7C: EOR.w #$FFFF
#_07CB7F: INC A

#_07CB80: CLC
#_07CB81: ADC.b $22
#_07CB83: STA.b $22

#_07CB85: SEP #$20

#_07CB87: RTS

;===================================================================================================

CalculateSnapScratch_Horizontal:
#_07CB88: LDA.b $0E
#_07CB8A: AND.b #$04
#_07CB8C: BEQ .invert_if_negative

.invert_if_positive
#_07CB8E: LDY.b #$01

#_07CB90: LDA.b $31
#_07CB92: BMI .negative_x

#_07CB94: EOR.b #$FF
#_07CB96: INC A

.negative_x
#_07CB97: BPL .was_positive_a

#_07CB99: LDY.b #$FF

.was_positive_a
#_07CB9B: STY.b $00
#_07CB9D: STZ.b $01

#_07CB9F: BRA AddAbsoluteScratchToYCoord

.invert_if_negative
#_07CBA1: LDY.b #$01

#_07CBA3: LDA.b $31
#_07CBA5: BPL .positive_x

#_07CBA7: EOR.b #$FF
#_07CBA9: INC A

.positive_x
#_07CBAA: BPL .was_positive_b

#_07CBAC: LDY.b #$FF

.was_positive_b
#_07CBAE: STY.b $00
#_07CBB0: STZ.b $01

;===================================================================================================

AddAbsoluteScratchToYCoord:
#_07CBB2: REP #$20

#_07CBB4: LDA.b $00
#_07CBB6: CMP.w #$0080
#_07CBB9: BCC .positive

#_07CBBB: ORA.w #$FF00

.positive
#_07CBBE: CLC
#_07CBBF: ADC.b $20
#_07CBC1: STA.b $20

#_07CBC3: SEP #$20

#_07CBC5: RTS

;===================================================================================================

ChangeAxisOfPerpendicularDoorMovement_Horizontal:
#_07CBC6: LDA.b #$02
#_07CBC8: TSB.b $50

#_07CBCA: LDA.b $0E
#_07CBCC: LSR A
#_07CBCD: LSR A
#_07CBCE: LSR A
#_07CBCF: LSR A
#_07CBD0: ORA.b $0E
#_07CBD2: AND.b #$0F
#_07CBD4: STA.b $00

#_07CBD6: AND.b #$07
#_07CBD8: BNE .dont_clear_doorway

#_07CBDA: STZ.b $6C

#_07CBDC: BRA .exit

;---------------------------------------------------------------------------------------------------

.dont_clear_doorway
#_07CBDE: LDA.b $20
#_07CBE0: CMP.b #$80
#_07CBE2: BCC .y_low_positive

#_07CBE4: LDA.b $31
#_07CBE6: BMI .keep_negative_x

#_07CBE8: EOR.b #$FF
#_07CBEA: INC A

.keep_negative_x
#_07CBEB: STA.b $00
#_07CBED: STZ.b $01

#_07CBEF: LDY.b #$00
#_07CBF1: BRA .continue

;---------------------------------------------------------------------------------------------------

.y_low_positive
#_07CBF3: LDA.b $31
#_07CBF5: BPL .keep_positive_x

#_07CBF7: EOR.b #$FF
#_07CBF9: INC A

.keep_positive_x
#_07CBFA: STA.b $00
#_07CBFC: STZ.b $01

#_07CBFE: LDY.b #$02

;---------------------------------------------------------------------------------------------------

.continue
#_07CC00: LDA.b $50
#_07CC02: AND.b #$01
#_07CC04: BNE .cannot_turn

#_07CC06: STY.b $2F

.cannot_turn
#_07CC08: REP #$20

#_07CC0A: LDA.b $00
#_07CC0C: CMP.w #$0080
#_07CC0F: BCC .positive

#_07CC11: ORA.w #$FF00

.positive
#_07CC14: CLC
#_07CC15: ADC.b $20
#_07CC17: STA.b $20

#_07CC19: SEP #$20

.exit
#_07CC1B: RTS

;===================================================================================================

pool HopInOrOutOfWater_Horizontal

.speed_x
#_07CC1C: db 28, 24, 16

.speed_z
#_07CC1F: db 32, 24, 24

.timer
#_07CC22: db 16, 16, 16

pool off

;---------------------------------------------------------------------------------------------------

HopInOrOutOfWater_Horizontal:
#_07CC25: LDA.b $1B
#_07CC27: BNE .indoors

#_07CC29: LDX.b #$02
#_07CC2B: BRA .index_decided

.indoors
#_07CC2D: LDX.b $1D
#_07CC2F: LDA.w $047A
#_07CC32: BEQ .index_decided

#_07CC34: LDX.b #$00

.index_decided
#_07CC36: STX.b $00

#_07CC38: LDA.w .speed_x,X
#_07CC3B: TAX

#_07CC3C: LDA.b $66
#_07CC3E: AND.b #$01
#_07CC40: BNE .dont_invert

#_07CC42: TXA
#_07CC43: EOR.b #$FF
#_07CC45: INC A
#_07CC46: TAX

.dont_invert
#_07CC47: STX.b $28

#_07CC49: STZ.b $27

#_07CC4B: LDX.b $00

#_07CC4D: LDA.w .speed_z,X
#_07CC50: STA.b $29
#_07CC52: STA.w $02C7

#_07CC55: LDA.w .timer,X
#_07CC58: STA.b $46

#_07CC5A: LDA.b $4D
#_07CC5C: CMP.b #$02
#_07CC5E: BEQ .dont_set_recoil

#_07CC60: LDA.b #$01
#_07CC62: STA.b $4D

#_07CC64: STZ.w $0360

.dont_set_recoil
#_07CC67: LDA.b #$06 ; LINKSTATE 06
#_07CC69: STA.b $5D

#_07CC6B: RTS

;===================================================================================================
; TODO teleports happen here
DiagonalKickback:

.right
#_07CC6C: db   0,   1,   1,   1
#_07CC70: db   2,   2,   2,   3
#_07CC74: db   3,   3

.left
#_07CC76: db   0,  -1,  -1,  -1
#_07CC7A: db  -2,  -2,  -2,  -3
#_07CC7E: db  -3,  -3

.down
#_07CC80: db   0,   0,   0,   1
#_07CC84: db   1,   1,   2,   2
#_07CC88: db   2,   3

.up
#_07CC8A: db   0,   1,   1,   2
#_07CC8E: db   2,   2,   3,   3
#_07CC92: db   3,   3

;---------------------------------------------------------------------------------------------------

HandleLinkDiagonalKickback:
#_07CC94: LDA.b $30
#_07CC96: BEQ .no_y_velocity

#_07CC98: LDA.b $31
#_07CC9A: BNE .have_x_velocity

.no_y_velocity
#_07CC9C: BRL ResetSlopeIntoFlagAndFailCache

.have_x_velocity
#_07CC9F: LDA.b $20
#_07CCA1: STA.w $02DE

#_07CCA4: LDA.b $21
#_07CCA6: STA.w $02DF

#_07CCA9: LDA.b $22
#_07CCAB: STA.w $02DC

#_07CCAE: LDA.b $23
#_07CCB0: STA.w $02DD

#_07CCB3: LDY.b #$04

#_07CCB5: LDA.b $31
#_07CCB7: BMI .x_velocity_negative_a

#_07CCB9: LDY.b #$06

.x_velocity_negative_a
#_07CCBB: JSR TileDetectOnMovement_Horizontal

#_07CCBE: LDA.b $0C
#_07CCC0: AND.b #$05
#_07CCC2: BEQ .nothing_flagged_for_x

#_07CCC4: JSR FlagMovingIntoSlopes_Horizontal

#_07CCC7: LDA.b $6B
#_07CCC9: AND.b #$0F
#_07CCCB: BNE .not_flagged_as_into_slope

.nothing_flagged_for_x
#_07CCCD: BRL ResetSlopeIntoFlagAndFailCache

;---------------------------------------------------------------------------------------------------

.not_flagged_as_into_slope
#_07CCD0: REP #$20

#_07CCD2: LDA.b $22
#_07CCD4: SEC
#_07CCD5: SBC.w $02DC
#_07CCD8: STA.b $00

#_07CCDA: LDA.w $02DC
#_07CCDD: STA.b $22

#_07CCDF: SEP #$20

#_07CCE1: LDA.b $00
#_07CCE3: STA.b $31

;---------------------------------------------------------------------------------------------------

#_07CCE5: LDY.b #$00

#_07CCE7: LDA.b $30
#_07CCE9: BMI .y_velocity_negative_a

#_07CCEB: LDY.b #$02

.y_velocity_negative_a
#_07CCED: JSR TileDetectOnMovement_Vertical

#_07CCF0: LDA.b $0C
#_07CCF2: AND.b #$05
#_07CCF4: BEQ ResetSlopeIntoFlagAndFailCache

#_07CCF6: JSR FlagMovingIntoSlopes_Vertical

#_07CCF9: LDA.b $6B
#_07CCFB: AND.b #$0F
#_07CCFD: BEQ ResetSlopeIntoFlagAndFailCache

#_07CCFF: LDA.b $6B
#_07CD01: STA.b $6D

#_07CD03: REP #$20

#_07CD05: LDA.b $20
#_07CD07: SEC
#_07CD08: SBC.w $02DE
#_07CD0B: STA.b $00

#_07CD0D: SEP #$20

#_07CD0F: LDA.b $00
#_07CD11: STA.b $30

;---------------------------------------------------------------------------------------------------

#_07CD13: LDY.b $31
#_07CD15: BMI .x_velocity_negative_b

#_07CD17: LDA.w DiagonalKickback_right,Y

#_07CD1A: BRA .kickback_x_decided

.x_velocity_negative_b
#_07CD1C: TYA
#_07CD1D: EOR.b #$FF
#_07CD1F: INC A
#_07CD20: TAY

#_07CD21: LDA.w DiagonalKickback_left,Y

.kickback_x_decided
#_07CD24: REP #$20

#_07CD26: AND.w #$00FF
#_07CD29: CMP.w #$0080
#_07CD2C: BCC .kickback_x_positive

#_07CD2E: ORA.w #$FF00

.kickback_x_positive
#_07CD31: CLC
#_07CD32: ADC.b $22
#_07CD34: STA.b $22

;---------------------------------------------------------------------------------------------------

#_07CD36: SEP #$20

#_07CD38: LDY.b $30
#_07CD3A: BMI .y_velocity_negative_b

#_07CD3C: LDA.w DiagonalKickback_down,Y

#_07CD3F: BRA .kickback_y_decided

.y_velocity_negative_b
#_07CD41: TYA
#_07CD42: EOR.b #$FF
#_07CD44: INC A
#_07CD45: TAY

#_07CD46: LDA.w DiagonalKickback_up,Y

.kickback_y_decided
#_07CD49: REP #$20

#_07CD4B: AND.w #$00FF
#_07CD4E: CMP.w #$0080
#_07CD51: BCC .kickback_y_positive

#_07CD53: ORA.w #$FF00

.kickback_y_positive
#_07CD56: CLC
#_07CD57: ADC.b $20
#_07CD59: STA.b $20

#_07CD5B: SEP #$20

#_07CD5D: BRA ResetSlopeIntoFlag

;===================================================================================================

ResetSlopeIntoFlagAndFailCache:
#_07CD5F: STZ.b $6D

ResetSlopeIntoFlag:
#_07CD61: STZ.b $6B

#_07CD63: RTS

;===================================================================================================

TileDetectOnMovement:

.offset_same_axis
#_07CD64: dw $0008, $0018, $0000, $000F

.offset_perpendicular_axis_1
#_07CD6C: dw $0000, $0000

.offset_pit_y
#_07CD70: dw $0008

.unused_a
#_07CD72: dw $0008

.offset_perpendicular_axis_2
#_07CD74: dw $0008, $0008, $0010, $0010

.offset_perpendicular_axis_3
#_07CD7C: dw $000F, $000F

.offset_pit_x
#_07CD80: dw $0017

.unused_b
#_07CD82: dw $0017, $0000, $0000, $001F, $001F

.offset_slope_same_axis
#_07CD8C: dw $0007, $0018, $FFFF, $0010

.offset_slope_perpendicular_axis_1
#_07CD94: dw $0000, $0000, $0008, $0008

.offset_slope_perpendicular_axis_2
#_07CD9C: dw $000F, $000F, $0017, $0017
#_07CDA4: dw $0000, $0000, $0000, $000F
#_07CDAC: dw $0000, $0000, $0012, $0012

;===================================================================================================

TileDetectOnMovement_Vertical:
#_07CDB4: REP #$20

#_07CDB6: JSR ResetTileDetect

#_07CDB9: STZ.b $59

#_07CDBB: LDA.b $20
#_07CDBD: CLC
#_07CDBE: ADC.w TileDetectOnMovement_offset_same_axis,Y
#_07CDC1: STA.b $51

#_07CDC3: AND.b $EC
#_07CDC5: STA.b $00

#_07CDC7: LDA.b $22
#_07CDC9: CLC
#_07CDCA: ADC.w TileDetectOnMovement_offset_perpendicular_axis_1,Y
#_07CDCD: AND.b $EC

#_07CDCF: LSR A
#_07CDD0: LSR A
#_07CDD1: LSR A
#_07CDD2: STA.b $02

#_07CDD4: LDA.b $22
#_07CDD6: CLC
#_07CDD7: ADC.w TileDetectOnMovement_offset_perpendicular_axis_2,Y
#_07CDDA: AND.b $EC

#_07CDDC: LSR A
#_07CDDD: LSR A
#_07CDDE: LSR A
#_07CDDF: STA.b $04

#_07CDE1: LDA.b $22
#_07CDE3: CLC
#_07CDE4: ADC.w TileDetectOnMovement_offset_perpendicular_axis_3,Y
#_07CDE7: AND.b $EC

#_07CDE9: LSR A
#_07CDEA: LSR A
#_07CDEB: LSR A
#_07CDEC: STA.b $74

#_07CDEE: REP #$10

#_07CDF0: LDA.w #$0001
#_07CDF3: STA.b $0A

#_07CDF5: JSR ExecuteTileDetection

#_07CDF8: LDA.b $04
#_07CDFA: STA.b $02

#_07CDFC: LDA.w #$0002
#_07CDFF: STA.b $0A

#_07CE01: JSR ExecuteTileDetection

#_07CE04: LDA.b $74
#_07CE06: STA.b $02

#_07CE08: LDA.w #$0004
#_07CE0B: STA.b $0A

#_07CE0D: JSR ExecuteTileDetection

#_07CE10: SEP #$30

#_07CE12: RTS

;===================================================================================================

TileDetectOnMovement_Horizontal:
#_07CE13: REP #$20

#_07CE15: JSR ResetTileDetect

#_07CE18: STZ.b $59

#_07CE1A: LDA.b $22
#_07CE1C: CLC
#_07CE1D: ADC.w TileDetectOnMovement_offset_same_axis,Y
#_07CE20: AND.b $EC

#_07CE22: LSR A
#_07CE23: LSR A
#_07CE24: LSR A
#_07CE25: STA.b $02

#_07CE27: LDA.b $20
#_07CE29: CLC
#_07CE2A: ADC.w TileDetectOnMovement_offset_perpendicular_axis_1,Y
#_07CE2D: AND.b $EC
#_07CE2F: STA.b $00

#_07CE31: LDA.b $20
#_07CE33: CLC
#_07CE34: ADC.w TileDetectOnMovement_offset_perpendicular_axis_2,Y
#_07CE37: STA.b $51

#_07CE39: AND.b $EC
#_07CE3B: STA.b $04

#_07CE3D: LDA.b $20
#_07CE3F: CLC
#_07CE40: ADC.w TileDetectOnMovement_offset_perpendicular_axis_3,Y
#_07CE43: STA.b $53

#_07CE45: AND.b $EC
#_07CE47: STA.b $08

#_07CE49: REP #$10

#_07CE4B: LDA.w #$0001
#_07CE4E: STA.b $0A

#_07CE50: JSR ExecuteTileDetection

#_07CE53: LDA.b $04
#_07CE55: STA.b $00

#_07CE57: LDA.w #$0002
#_07CE5A: STA.b $0A

#_07CE5C: JSR ExecuteTileDetection

#_07CE5F: LDA.b $08
#_07CE61: STA.b $00

#_07CE63: LDA.w #$0004
#_07CE66: STA.b $0A

#_07CE68: JSR ExecuteTileDetection

#_07CE6B: SEP #$30

#_07CE6D: RTS

;===================================================================================================

TileDetectOnMovement_VerticalSlopes:
#_07CE6E: REP #$20

#_07CE70: JSR ResetTileDetect

#_07CE73: STZ.b $59

#_07CE75: LDA.b $20
#_07CE77: CLC
#_07CE78: ADC.w TileDetectOnMovement_offset_slope_same_axis,Y
#_07CE7B: AND.b $EC
#_07CE7D: STA.b $00

#_07CE7F: LDA.b $22
#_07CE81: CLC
#_07CE82: ADC.w TileDetectOnMovement_offset_slope_perpendicular_axis_1,Y
#_07CE85: AND.b $EC

#_07CE87: LSR A
#_07CE88: LSR A
#_07CE89: LSR A
#_07CE8A: STA.b $02

#_07CE8C: LDA.b $22
#_07CE8E: CLC
#_07CE8F: ADC.w TileDetectOnMovement_offset_slope_perpendicular_axis_2,Y
#_07CE92: AND.b $EC

#_07CE94: LSR A
#_07CE95: LSR A
#_07CE96: LSR A
#_07CE97: STA.b $04

#_07CE99: REP #$10

#_07CE9B: LDA.w #$0001
#_07CE9E: STA.b $0A

#_07CEA0: JSR ExecuteTileDetection

#_07CEA3: LDA.b $04
#_07CEA5: STA.b $02

#_07CEA7: LDA.w #$0002
#_07CEAA: STA.b $0A

#_07CEAC: JSR ExecuteTileDetection

#_07CEAF: SEP #$30

#_07CEB1: RTS

;===================================================================================================

TileDetectOnMovement_HorizontalSlopes:
#_07CEB2: REP #$20

#_07CEB4: JSR ResetTileDetect

#_07CEB7: STZ.b $59

#_07CEB9: LDA.b $22
#_07CEBB: CLC
#_07CEBC: ADC.w TileDetectOnMovement_offset_slope_same_axis,Y
#_07CEBF: AND.b $EC

#_07CEC1: LSR A
#_07CEC2: LSR A
#_07CEC3: LSR A
#_07CEC4: STA.b $02

#_07CEC6: LDA.b $20
#_07CEC8: CLC
#_07CEC9: ADC.w TileDetectOnMovement_offset_slope_perpendicular_axis_1,Y
#_07CECC: AND.b $EC
#_07CECE: STA.b $00

#_07CED0: LDA.b $20
#_07CED2: CLC
#_07CED3: ADC.w TileDetectOnMovement_offset_slope_perpendicular_axis_2,Y
#_07CED6: AND.b $EC
#_07CED8: STA.b $04

#_07CEDA: REP #$10

#_07CEDC: LDA.w #$0001
#_07CEDF: STA.b $0A

#_07CEE1: JSR ExecuteTileDetection

#_07CEE4: LDA.b $04
#_07CEE6: STA.b $00

#_07CEE8: LDA.w #$0002
#_07CEEB: STA.b $0A

#_07CEED: JSR ExecuteTileDetection

#_07CEF0: SEP #$30

#_07CEF2: RTS

;===================================================================================================

TileDetect_BigArea_long:
#_07CEF3: PHB
#_07CEF4: PHK
#_07CEF5: PLB

#_07CEF6: JSR TileDetect_BigArea

#_07CEF9: PLB

#_07CEFA: RTL

;===================================================================================================

TileDetect_BigArea:
#_07CEFB: STZ.b $59

#_07CEFD: REP #$20

#_07CEFF: JSR ResetTileDetect

#_07CF02: LDA.b $22
#_07CF04: CLC
#_07CF05: ADC.w TileDetectOnMovement_offset_perpendicular_axis_1
#_07CF08: AND.b $EC
#_07CF0A: LSR A
#_07CF0B: LSR A
#_07CF0C: LSR A
#_07CF0D: STA.b $02

#_07CF0F: LDA.b $22
#_07CF11: CLC
#_07CF12: ADC.w TileDetectOnMovement_offset_perpendicular_axis_3
#_07CF15: AND.b $EC
#_07CF17: LSR A
#_07CF18: LSR A
#_07CF19: LSR A
#_07CF1A: STA.b $04

#_07CF1C: LDA.b $20
#_07CF1E: CLC
#_07CF1F: ADC.w TileDetectOnMovement_offset_pit_y
#_07CF22: AND.b $EC
#_07CF24: STA.b $00
#_07CF26: STA.b $74

#_07CF28: LDA.b $20
#_07CF2A: CLC
#_07CF2B: ADC.w TileDetectOnMovement_offset_pit_x
#_07CF2E: AND.b $EC
#_07CF30: STA.b $08

;===================================================================================================

TileDetect_FromMirrorBonk:
#_07CF32: REP #$10

#_07CF34: LDA.w #$0008
#_07CF37: STA.b $0A

#_07CF39: JSR ExecuteTileDetection

#_07CF3C: LDA.b $08
#_07CF3E: STA.b $00

#_07CF40: LDA.w #$0002
#_07CF43: STA.b $0A

#_07CF45: JSR ExecuteTileDetection

#_07CF48: LDA.b $74
#_07CF4A: STA.b $00

#_07CF4C: LDA.b $04
#_07CF4E: STA.b $02

#_07CF50: LDA.w #$0004
#_07CF53: STA.b $0A

#_07CF55: JSR ExecuteTileDetection

#_07CF58: LDA.b $08
#_07CF5A: STA.b $00

#_07CF5C: LDA.w #$0001
#_07CF5F: STA.b $0A

#_07CF61: JSR ExecuteTileDetection

#_07CF64: SEP #$30

#_07CF66: RTS

;===================================================================================================

TileDetect_UnusedIce:
#_07CF67: STZ.b $59

#_07CF69: REP #$20

#_07CF6B: JSR ResetTileDetect

#_07CF6E: LDA.b $22
#_07CF70: CLC
#_07CF71: ADC.w #$0000

#_07CF74: AND.b $EC
#_07CF76: LSR A
#_07CF77: LSR A
#_07CF78: LSR A
#_07CF79: STA.b $02

#_07CF7B: LDA.b $22
#_07CF7D: CLC
#_07CF7E: ADC.w #$0008

#_07CF81: AND.b $EC
#_07CF83: LSR A
#_07CF84: LSR A
#_07CF85: LSR A
#_07CF86: STA.b $04

;---------------------------------------------------------------------------------------------------

#_07CF88: LDA.b $24
#_07CF8A: AND.w #$00FF
#_07CF8D: CMP.w #$00FF
#_07CF90: BNE .not_grounded

#_07CF92: LDA.w #$0000

.not_grounded
#_07CF95: CLC
#_07CF96: ADC.b $20
#_07CF98: AND.b $EC
#_07CF9A: STA.b $00

;---------------------------------------------------------------------------------------------------

#_07CF9C: REP #$10

#_07CF9E: LDA.w #$0001
#_07CFA1: STA.b $0A

#_07CFA3: JSR ExecuteTileDetection

#_07CFA6: LDA.b $04
#_07CFA8: STA.b $02

#_07CFAA: LDA.w #$0002
#_07CFAD: STA.b $0A

#_07CFAF: JSR ExecuteTileDetection

#_07CFB2: SEP #$30

#_07CFB4: RTS

;===================================================================================================

pool TileDetect_MainHandler

.offset_y
#_07CFB5: dw  20,  20,  20,  20
#_07CFBD: dw   4,  28,  16,  16
#_07CFC5: dw  22,  22,  22,  22
#_07CFCD: dw   4,  24,  16,  16
#_07CFD5: dw  16,  16,  16,  16
#_07CFDD: dw  20,  20,  23,  23
#_07CFE5: dw  -4,  36,  16,  16
#_07CFED: dw   4,  28,  16,  16
#_07CFF5: dw   4,  28,  16,  16
#_07CFFD: dw   4,   4,  28,  28

.offset_x
#_07D005: dw   8,   8,   8,   8
#_07D00D: dw   6,   8,  -1,  22
#_07D015: dw  19,  19,   0,  19
#_07D01D: dw   6,   8,  -1,  22
#_07D025: dw   8,   8,   8,   8
#_07D02D: dw   8,   8,   0,  15
#_07D035: dw   6,   8, -10,  29
#_07D03D: dw   6,   8,  -6,  22
#_07D045: dw   6,   8,  -4,  22
#_07D04D: dw  -4,  22,  -4,  22

;---------------------------------------------------------------------------------------------------

.spike_floor_damage
#_07D055: db $08 ; green
#_07D056: db $08 ; blue
#_07D057: db $08 ; red

;---------------------------------------------------------------------------------------------------

.index_offset
#_07D058: db $0A, $06, $0E, $02
#_07D05C: db $0C, $04, $08, $00

pool off

;---------------------------------------------------------------------------------------------------
; TODO
; uses an input in Y register
;   0x04 - checks for pits
;---------------------------------------------------------------------------------------------------
TileDetect_MainHandler:
#_07D060: STZ.b $59 ; clear pits

#_07D062: REP #$20

#_07D064: JSR ResetTileDetect

#_07D067: STY.b $00

#_07D069: CPY.b #$08
#_07D06B: BNE .direction_based

#_07D06D: LDA.w $031C
#_07D070: AND.w #$00FF
#_07D073: DEC A
#_07D074: DEC A
#_07D075: BMI .dirty_exit

#_07D077: CMP.w #$0008
#_07D07A: BCS .dirty_exit

#_07D07C: PHY
#_07D07D: TAY

#_07D07E: LDA.w .index_offset,Y
#_07D081: AND.w #$00FF
#_07D084: CLC
#_07D085: ADC.w #$0040
#_07D088: TAY

#_07D089: BRA .calculate_offset

.direction_based
#_07D08B: PHY

#_07D08C: LDA.b $00
#_07D08E: AND.w #$00FF
#_07D091: ASL A
#_07D092: ASL A
#_07D093: ASL A
#_07D094: CLC
#_07D095: ADC.b $2F
#_07D097: TAY

;---------------------------------------------------------------------------------------------------

.calculate_offset
#_07D098: LDA.b $22
#_07D09A: CLC
#_07D09B: ADC.w .offset_x,Y

#_07D09E: AND.b $EC
#_07D0A0: LSR A
#_07D0A1: LSR A
#_07D0A2: LSR A
#_07D0A3: STA.b $02

#_07D0A5: LDA.b $20
#_07D0A7: CLC
#_07D0A8: ADC.w .offset_y,Y
#_07D0AB: AND.b $EC
#_07D0AD: STA.b $00

;---------------------------------------------------------------------------------------------------

#_07D0AF: LDA.w #$0001
#_07D0B2: STA.b $0A

#_07D0B4: PLY

#_07D0B5: REP #$10

#_07D0B7: TYA
#_07D0B8: CMP.w #$0001
#_07D0BB: BEQ .detect_from_item

#_07D0BD: CMP.w #$0002
#_07D0C0: BEQ .detect_from_item

#_07D0C2: CMP.w #$0003
#_07D0C5: BEQ .detect_from_item

#_07D0C7: CMP.w #$0006
#_07D0CA: BEQ .detect_from_item

#_07D0CC: CMP.w #$0007
#_07D0CF: BEQ .detect_from_item

#_07D0D1: CMP.w #$0008
#_07D0D4: BEQ .detect_from_item

#_07D0D6: PHY

#_07D0D7: JSR ExecuteTileDetection

#_07D0DA: PLY

#_07D0DB: BRA .continue_from_detection

.detect_from_item
#_07D0DD: SEP #$30

#_07D0DF: JSR TileBehavior_HandleItemAndExecute

;---------------------------------------------------------------------------------------------------

.dirty_exit
#_07D0E2: SEP #$30

.proceed_to_exit
#_07D0E4: BRL .exit

;---------------------------------------------------------------------------------------------------

.continue_from_detection
#_07D0E7: SEP #$30

#_07D0E9: CPY.b #$05
#_07D0EB: BEQ .proceed_to_exit

#_07D0ED: LDA.w $0357
#_07D0F0: AND.b #$10
#_07D0F2: BEQ .no_warp_tile

#_07D0F4: LDA.b $20
#_07D0F6: CLC
#_07D0F7: ADC.b #$08
#_07D0F9: AND.b #$0F
#_07D0FB: CMP.b #$04
#_07D0FD: BCC .check_warp_x

#_07D0FF: CMP.b #$0B
#_07D101: BCC .dont_attempt_to_warp

.check_warp_x
#_07D103: LDA.b $22
#_07D105: AND.b #$0F
#_07D107: CMP.b #$04
#_07D109: BCC .okay_x_position

#_07D10B: CMP.b #$0C
#_07D10D: BCC .dont_attempt_to_warp

.okay_x_position
#_07D10F: LDA.w $031F
#_07D112: BNE .dont_attempt_to_warp

#_07D114: LDA.b $4D
#_07D116: BNE .dont_attempt_to_warp

#_07D118: LDA.b $1B
#_07D11A: BEQ .try_overworld_warp

#_07D11C: JSL FullyUpdateRoomFlags

#_07D120: LDA.b #$33 ; SFX2.33
#_07D122: JSR PlayLinkSFX2Panned

#_07D125: STZ.b $5E

#_07D127: LDA.b #$15
#_07D129: STA.b $11

#_07D12B: LDA.b $A0
#_07D12D: STA.b $A2

#_07D12F: LDA.l $7EC000
#_07D133: STA.b $A0

#_07D135: JSR HandleLayerOfDestination
#_07D138: BRA .dont_attempt_to_warp

;---------------------------------------------------------------------------------------------------

.try_overworld_warp
#_07D13A: LDA.w $02DB
#_07D13D: BNE .dont_attempt_to_warp

#_07D13F: JSR AttemptMirrorWarp

.dont_attempt_to_warp
#_07D142: BRL .clear_tall_grass_flag

;---------------------------------------------------------------------------------------------------

.no_warp_tile
#_07D145: STZ.w $02DB

#_07D148: LDA.w $0357
#_07D14B: AND.b #$01
#_07D14D: BEQ .not_in_tall_grass

#_07D14F: LDA.b #$02
#_07D151: STA.w $0351

#_07D154: JSR GetPermissionForSloshSounds
#_07D157: BCS .jump_to_exit

#_07D159: LDA.b $4D
#_07D15B: BNE .jump_to_exit

#_07D15D: LDA.b #$1A ; SFX2.1A
#_07D15F: JSR PlayLinkSFX2Panned

.jump_to_exit
#_07D162: BRL .exit

;---------------------------------------------------------------------------------------------------

.not_in_tall_grass
#_07D165: LDA.w $0359
#_07D168: AND.b #$01
#_07D16A: BEQ .not_in_shallow_water

#_07D16C: LDA.b #$01
#_07D16E: STA.w $0351

#_07D171: LDA.b $1B
#_07D173: BNE .try_splash_noise

#_07D175: LDA.w $0345
#_07D178: BEQ .try_splash_noise

#_07D17A: LDA.w $02E0
#_07D17D: BNE .try_splash_noise

#_07D17F: LDA.l $7EF356
#_07D183: BEQ .jump_to_exit

#_07D185: STZ.w $0345

#_07D188: LDA.w $0340
#_07D18B: STA.b $26

#_07D18D: LDA.b #$00 ; LINKSTATE 00
#_07D18F: STA.b $5D

#_07D191: BRL .exit

;---------------------------------------------------------------------------------------------------

.try_splash_noise
#_07D194: JSR GetPermissionForSloshSounds
#_07D197: BCS .no_sound_allowed

#_07D199: LDA.b $8A
#_07D19B: CMP.b #$70 ; OW 70
#_07D19D: BNE .not_mire_splash

#_07D19F: LDA.b #$1B ; SFX2.1B
#_07D1A1: JSR PlayLinkSFX2Panned

#_07D1A4: BRA .no_sound_allowed

;---------------------------------------------------------------------------------------------------

.not_mire_splash
#_07D1A6: LDA.b $4D
#_07D1A8: BNE .no_sound_allowed

#_07D1AA: LDA.b #$1C ; SFX2.1C
#_07D1AC: JSR PlayLinkSFX2Panned

.no_sound_allowed
#_07D1AF: BRL .exit

;---------------------------------------------------------------------------------------------------

.not_in_shallow_water
#_07D1B2: LDA.b $1B
#_07D1B4: BNE .clear_tall_grass_flag

#_07D1B6: LDA.w $0345
#_07D1B9: BNE .clear_tall_grass_flag

#_07D1BB: LDA.w $0341
#_07D1BE: AND.b #$01
#_07D1C0: BEQ .clear_tall_grass_flag

#_07D1C2: LDA.b #$01
#_07D1C4: STA.w $0351

#_07D1C7: JSR GetPermissionForSloshSounds
#_07D1CA: BCS .no_sloshing_sounds

#_07D1CC: LDA.b $8A
#_07D1CE: CMP.b #$70 ; OW 70
#_07D1D0: BNE .not_mire_again

#_07D1D2: LDA.b #$1B ; SFX2.1B
#_07D1D4: JSR PlayLinkSFX2Panned

#_07D1D7: BRA .no_sloshing_sounds

;---------------------------------------------------------------------------------------------------

.not_mire_again
#_07D1D9: LDA.b $4D
#_07D1DB: BNE .no_sloshing_sounds

#_07D1DD: LDA.b #$1C ; SFX2.1C
#_07D1DF: JSR PlayLinkSFX2Panned

.no_sloshing_sounds
#_07D1E2: BRL .exit

;---------------------------------------------------------------------------------------------------

.clear_tall_grass_flag
#_07D1E5: STZ.w $0351

#_07D1E8: LDA.w $02EE
#_07D1EB: AND.b #$01
#_07D1ED: BEQ .not_near_desert_trigger

#_07D1EF: LDA.b #$01
#_07D1F1: STA.w $02ED

#_07D1F4: BRL .exit

;---------------------------------------------------------------------------------------------------

.not_near_desert_trigger
#_07D1F7: STZ.w $02ED

#_07D1FA: LDA.w $02EE
#_07D1FD: AND.b #$10
#_07D1FF: BEQ .not_touching_spikes

#_07D201: STZ.w $0373

#_07D204: LDA.b $55
#_07D206: BNE .not_touching_spikes

#_07D208: JSR SearchForByrnaSpark
#_07D20B: BCS .not_touching_spikes

#_07D20D: LDA.w $031F
#_07D210: BNE .not_touching_spikes

#_07D212: STZ.w $03F7
#_07D215: STZ.w $03F5
#_07D218: STZ.w $03F6

#_07D21B: LDA.l $7EF357
#_07D21F: BEQ .no_moon_pearl

#_07D221: STZ.b $56
#_07D223: STZ.w $02E0

.no_moon_pearl
#_07D226: LDA.l $7EF35B
#_07D22A: TAY

#_07D22B: LDA.w .spike_floor_damage,Y
#_07D22E: STA.w $0373

#_07D231: BRL CancelDash

;---------------------------------------------------------------------------------------------------

.not_touching_spikes
#_07D234: LDA.w $0348
#_07D237: AND.b #$11
#_07D239: BEQ .not_on_any_ice

; how would this work out?
#_07D23B: LDA.w $034A
#_07D23E: BEQ .not_gt_or_ip_ice

#_07D240: LDA.b $6A
#_07D242: BEQ .finish_up

#_07D244: LDA.w $0340
#_07D247: STA.b $26

#_07D249: BRL .finish_up

;---------------------------------------------------------------------------------------------------

.not_gt_or_ip_ice
#_07D24C: LDA.b $67
#_07D24E: AND.b #$0C
#_07D250: BEQ .velocity_not_up_or_down

#_07D252: LDA.b #$01
#_07D254: STA.w $033D

#_07D257: LDA.b #$80
#_07D259: STA.w $033C

.velocity_not_up_or_down
#_07D25C: LDA.b $67
#_07D25E: AND.b #$03
#_07D260: BEQ .velocity_not_left_or_right

#_07D262: LDA.b #$01
#_07D264: STA.w $033D

#_07D267: LDA.b #$80
#_07D269: STA.w $033C

.velocity_not_left_or_right
#_07D26C: LDY.b #$01

#_07D26E: LDA.w $0348
#_07D271: AND.b #$01
#_07D273: BNE .set_to_gt_ice

#_07D275: LDY.b #$02

.set_to_gt_ice
#_07D277: STY.w $034A

#_07D27A: LDA.b $26
#_07D27C: STA.w $0340

#_07D27F: JSL ResetSwimmingState
#_07D283: BRL .finish_up

;---------------------------------------------------------------------------------------------------

.not_on_any_ice
#_07D286: LDA.b $5D
#_07D288: CMP.b #$04 ; LINKSTATE 04
#_07D28A: BEQ .swimming

#_07D28C: LDA.w $034A
#_07D28F: BEQ .not_on_ice_yet

#_07D291: LDA.w $0340
#_07D294: STA.b $26

.not_on_ice_yet
#_07D296: JSL ResetSwimmingState

.swimming
#_07D29A: STZ.w $034A

;---------------------------------------------------------------------------------------------------

.finish_up
#_07D29D: LDA.w $02E8
#_07D2A0: AND.b #$10
#_07D2A2: BEQ .exit

#_07D2A4: LDA.w $031F
#_07D2A7: BNE .exit

#_07D2A9: LDA.b #$3A
#_07D2AB: STA.w $031F

.exit
#_07D2AE: RTS

;===================================================================================================

GetPermissionForSloshSounds:
#_07D2AF: LDA.b $67
#_07D2B1: AND.b #$0F
#_07D2B3: BEQ .fail

#_07D2B5: LDA.b $5D
#_07D2B7: CMP.b #$11 ; LINKSTATE 11
#_07D2B9: BEQ .dashing

#_07D2BB: LDA.b $1A
#_07D2BD: AND.b #$0F
#_07D2BF: BEQ .succeed

#_07D2C1: BRA .fail

.dashing
#_07D2C3: LDA.b $1A
#_07D2C5: AND.b #$07
#_07D2C7: BNE .fail

.succeed
#_07D2C9: CLC

#_07D2CA: RTS

.fail
#_07D2CB: SEC

#_07D2CC: RTS

;===================================================================================================

pool AttemptToPushTheBlock

.target_offset_y_a
#_07D2CD: dw $FFFC ; up
#_07D2CF: dw $0014 ; down
#_07D2D1: dw $0004 ; left
#_07D2D3: dw $0004 ; right

.target_offset_y_b
#_07D2D5: dw $FFFC ; up
#_07D2D7: dw $0014 ; down
#_07D2D9: dw $000C ; left
#_07D2DB: dw $000C ; right

.target_offset_x_a
#_07D2DD: dw $0004 ; up
#_07D2DF: dw $0004 ; down
#_07D2E1: dw $FFFC ; left
#_07D2E3: dw $0014 ; right

.target_offset_x_b
#_07D2E5: dw $000C ; up
#_07D2E7: dw $000C ; down
#_07D2E9: dw $FFFC ; left
#_07D2EB: dw $0014 ; right

pool off

;---------------------------------------------------------------------------------------------------

AttemptToPushTheBlock:
#_07D2ED: REP #$20

; !WEIRD
; This always enters with Y=00 though
; If I change it to 1, I can't push blocks to the left
#_07D2EF: TYA
#_07D2F0: ASL A
#_07D2F1: ASL A
#_07D2F2: ASL A
#_07D2F3: STA.b $0A

#_07D2F5: LDA.b $66
#_07D2F7: ASL A
#_07D2F8: CLC
#_07D2F9: ADC.b $0A
#_07D2FB: TAY

#_07D2FC: LDA.b $00
#_07D2FE: STA.b $08

#_07D300: LDA.b $02
#_07D302: STA.b $04

#_07D304: LDA.b $08
#_07D306: CLC
#_07D307: ADC.w .target_offset_x_a,Y
#_07D30A: AND.b $EC

#_07D30C: LSR A
#_07D30D: LSR A
#_07D30E: LSR A
#_07D30F: STA.b $02

#_07D311: LDA.b $04
#_07D313: CLC
#_07D314: ADC.w .target_offset_y_a,Y
#_07D317: AND.b $EC
#_07D319: STA.b $00

#_07D31B: JSR PushBlock_GetGeneralizedTileInteractionOfTarget
#_07D31E: BEQ .no_blockage

; special case for shallow water
#_07D320: CPX.w #$0009 ; TILETYPE 09
#_07D323: BNE .cannot_push

.no_blockage
#_07D325: LDA.b $08
#_07D327: CLC
#_07D328: ADC.w .target_offset_x_b,Y
#_07D32B: AND.b $EC
#_07D32D: LSR A
#_07D32E: LSR A
#_07D32F: LSR A
#_07D330: STA.b $02

#_07D332: LDA.b $04
#_07D334: CLC
#_07D335: ADC.w .target_offset_y_b,Y
#_07D338: AND.b $EC
#_07D33A: STA.b $00

#_07D33C: JSR PushBlock_GetGeneralizedTileInteractionOfTarget
#_07D33F: BEQ .can_push

; special case for shallow water
#_07D341: CPX.w #$0009 ; TILETYPE 09
#_07D344: BNE .cannot_push

;---------------------------------------------------------------------------------------------------

.can_push
#_07D346: SEP #$30
#_07D348: CLC

#_07D349: RTS

.cannot_push
#_07D34A: SEP #$30
#_07D34C: SEC

#_07D34D: RTS

;===================================================================================================
; TODO something with direction
;===================================================================================================
LiftableCheckOffset_Y:
#_07D34E: dw  6
#_07D350: dw 24
#_07D352: dw 12
#_07D354: dw 12

LiftableCheckOffset_X:
#_07D356: dw  7
#_07D358: dw  7
#_07D35A: dw -3
#_07D35C: dw 16

;===================================================================================================

LiftableGloveLevels:
#_07D35E: db $00 ; sign
#_07D35F: db $01 ; small gray rock
#_07D360: db $00 ; bush
#_07D361: db $00 ; dark bush
#_07D362: db $02 ; small black rock
#_07D363: db $01 ; big gray rock
#_07D364: db $02 ; big black rock

Liftable0368ID:
#_07D365: db $02 ; sign
#_07D366: db $03 ; small gray rock
#_07D367: db $01 ; bush
#_07D368: db $04 ; dark bush
#_07D369: db $00 ; small black rock
#_07D36A: db $05 ; big gray rock
#_07D36B: db $06 ; big black rock

;===================================================================================================

HandleLiftables:
#_07D36C: STZ.b $59

#_07D36E: REP #$20

#_07D370: JSR ResetTileDetect

#_07D373: LDA.b $2F
#_07D375: TAY

#_07D376: LDA.b $20
#_07D378: CLC
#_07D379: ADC.w LiftableCheckOffset_Y,Y
#_07D37C: AND.b $EC
#_07D37E: STA.b $00

#_07D380: LDA.b $20
#_07D382: CLC
#_07D383: ADC.w #$0014
#_07D386: AND.b $EC
#_07D388: STA.b $04

#_07D38A: LDA.b $22
#_07D38C: CLC
#_07D38D: ADC.w LiftableCheckOffset_X,Y
#_07D390: AND.b $EC

#_07D392: LSR A
#_07D393: LSR A
#_07D394: LSR A

#_07D395: STA.b $02

#_07D397: LDA.b $22
#_07D399: CLC
#_07D39A: ADC.w #$0008
#_07D39D: AND.b $EC

#_07D39F: LSR A
#_07D3A0: LSR A
#_07D3A1: LSR A

#_07D3A2: STA.b $08

;---------------------------------------------------------------------------------------------------

#_07D3A4: LDA.w #$0001
#_07D3A7: STA.b $0A

#_07D3A9: REP #$10

#_07D3AB: JSR ExecuteTileDetection

#_07D3AE: LDA.b $04
#_07D3B0: STA.b $00

#_07D3B2: LDA.b $08
#_07D3B4: STA.b $02

#_07D3B6: LDA.w #$0002
#_07D3B9: STA.b $0A

#_07D3BB: JSR ExecuteTileDetection

#_07D3BE: SEP #$30

#_07D3C0: LDX.b #$02

#_07D3C2: LDA.b $0E
#_07D3C4: ORA.w $036D
#_07D3C7: AND.b #$01
#_07D3C9: BEQ .no_north_ledge

#_07D3CB: LDX.b #$03

.no_north_ledge
#_07D3CD: LDA.b $1B
#_07D3CF: BEQ .outdoors

#_07D3D1: PHX

#_07D3D2: JSL TestAndIDLiftableObject
#_07D3D6: BCC .not_liftable

#_07D3D8: PLX

#_07D3D9: AND.b #$0F
#_07D3DB: TAY

#_07D3DC: LDA.w Liftable0368ID,Y
#_07D3DF: STA.w $0368

#_07D3E2: TAY

#_07D3E3: BRA .check_lift_level

;---------------------------------------------------------------------------------------------------

.not_liftable
#_07D3E5: PLX

#_07D3E6: LDA.w $0366
#_07D3E9: AND.b #$01
#_07D3EB: BEQ .move_on

#_07D3ED: LDA.b $2F
#_07D3EF: BNE .move_on

#_07D3F1: LDA.w $036A
#_07D3F4: BNE .move_on

#_07D3F6: LDX.b #$04

.move_on
#_07D3F8: BRA .continue

;---------------------------------------------------------------------------------------------------

.outdoors
#_07D3FA: LDA.w $0366
#_07D3FD: AND.b #$01
#_07D3FF: BEQ .continue

#_07D401: LDA.b $2F
#_07D403: BNE .run_check

#_07D405: LDA.w $036A
#_07D408: BNE .run_check

#_07D40A: LDX.b #$04

#_07D40C: BRA .continue

;---------------------------------------------------------------------------------------------------

.run_check
#_07D40E: LDA.w $036A
#_07D411: LSR A
#_07D412: STA.w $0368

#_07D415: TAY

.check_lift_level
#_07D416: LDA.w LiftableGloveLevels,Y
#_07D419: SEC
#_07D41A: SBC.l $7EF354
#_07D41E: BEQ .no_gloves
#_07D420: BPL .continue

.no_gloves
#_07D422: LDX.b #$01

;---------------------------------------------------------------------------------------------------

.continue
#_07D424: LDA.w $02E5
#_07D427: AND.b #$01
#_07D429: BEQ .exit

#_07D42B: LDX.b #$05

.exit
#_07D42D: RTS

;===================================================================================================

pool HandleNudging

.offset_y_top
#_07D42E: dw $0008, $0008, $0017, $0017
#_07D436: dw $0008, $0017, $0008, $0017

.offset_x_top
#_07D43E: dw $0000, $000F, $0000, $000F
#_07D446: dw $0000, $0000, $000F, $000F

.offset_y_bottom
#_07D44E: dw $0017, $0017, $0008, $0008
#_07D456: dw $0008, $0017, $0008, $0017

.offset_x_bottom
#_07D45E: dw $0000, $000F, $0000, $000F
#_07D466: dw $000F, $000F, $0000, $0000

pool off

;---------------------------------------------------------------------------------------------------

HandleNudging:
#_07D46E: LDA.b $00
#_07D470: PHA

#_07D471: LDA.b $66
#_07D473: AND.b #$02
#_07D475: BNE .horizontal_last

#_07D477: LDX.b #$00

#_07D479: LDA.b $66
#_07D47B: AND.b #$01
#_07D47D: BEQ .not_down_last

#_07D47F: LDX.b #$04

.not_down_last
#_07D481: LDY.b #$00

#_07D483: LDA.b $0E
#_07D485: AND.b #$04
#_07D487: BNE .not_down

#_07D489: LDY.b #$02

.not_down
#_07D48B: STY.b $00

#_07D48D: BRA .do_detection

;---------------------------------------------------------------------------------------------------

.horizontal_last
#_07D48F: LDX.b #$08

#_07D491: LDA.b $66
#_07D493: AND.b #$01
#_07D495: BEQ .was_not_down_last

#_07D497: LDX.b #$0C

.was_not_down_last
#_07D499: LDY.b #$00

#_07D49B: LDA.b $0E
#_07D49D: AND.b #$04
#_07D49F: BNE .not_right

#_07D4A1: LDY.b #$02

.not_right
#_07D4A3: STY.b $00

;---------------------------------------------------------------------------------------------------

.do_detection
#_07D4A5: TXA
#_07D4A6: CLC
#_07D4A7: ADC.b $00
#_07D4A9: TAY

#_07D4AA: STZ.b $59

#_07D4AC: REP #$20

#_07D4AE: JSR ResetTileDetect

#_07D4B1: LDA.b $20
#_07D4B3: CLC
#_07D4B4: ADC.w .offset_y_top,Y
#_07D4B7: AND.b $EC
#_07D4B9: STA.b $00

#_07D4BB: LDA.b $22
#_07D4BD: CLC
#_07D4BE: ADC.w .offset_x_top,Y
#_07D4C1: AND.b $EC
#_07D4C3: LSR A
#_07D4C4: LSR A
#_07D4C5: LSR A
#_07D4C6: STA.b $02

#_07D4C8: LDA.b $20
#_07D4CA: CLC
#_07D4CB: ADC.w .offset_y_bottom,Y
#_07D4CE: AND.b $EC
#_07D4D0: STA.b $04

#_07D4D2: LDA.b $22
#_07D4D4: CLC
#_07D4D5: ADC.w .offset_x_bottom,Y
#_07D4D8: AND.b $EC
#_07D4DA: LSR A
#_07D4DB: LSR A
#_07D4DC: LSR A
#_07D4DD: STA.b $08

#_07D4DF: LDA.w #$0001
#_07D4E2: STA.b $0A

#_07D4E4: REP #$10

#_07D4E6: JSR ExecuteTileDetection

#_07D4E9: LDA.b $04
#_07D4EB: STA.b $00

#_07D4ED: LDA.b $08
#_07D4EF: STA.b $02

#_07D4F1: LDA.w #$0002
#_07D4F4: STA.b $0A

#_07D4F6: JSR ExecuteTileDetection

#_07D4F9: SEP #$30

#_07D4FB: PLA
#_07D4FC: STA.b $00

#_07D4FE: LDA.b $0E
#_07D500: ORA.w $036E
#_07D503: AND.b #$03
#_07D505: BNE .horizontal_ledges_detected

#_07D507: LDA.w $036D
#_07D50A: ORA.w $0370
#_07D50D: AND.b #$33
#_07D50F: BEQ .exit

.horizontal_ledges_detected
#_07D511: LDY.b #$00

#_07D513: LDA.b $00
#_07D515: EOR.b #$FF
#_07D517: INC A
#_07D518: STA.b $00

#_07D51A: CMP.b #$80
#_07D51C: BCC .positive_velocity

#_07D51E: LDY.b #$FF

.positive_velocity
#_07D520: STY.b $01

#_07D522: LDA.b $66
#_07D524: AND.b #$02
#_07D526: BEQ .add_on_x

#_07D528: REP #$20

#_07D52A: LDA.b $00
#_07D52C: CLC
#_07D52D: ADC.b $20
#_07D52F: STA.b $20

#_07D531: BRA .exit

;---------------------------------------------------------------------------------------------------

.add_on_x
#_07D533: REP #$20

#_07D535: LDA.b $00
#_07D537: CLC
#_07D538: ADC.b $22
#_07D53A: STA.b $22

.exit
#_07D53C: SEP #$20

#_07D53E: RTS

;===================================================================================================

pool Hookshot_CheckTileCollision

.offsets_a
#_07D53F: dw   0,   0
#_07D543: dw   7,   7
#_07D547: dw   0,  15
#_07D54B: dw   0,  15

.offsets_b
#_07D54F: dw   0,  15
#_07D553: dw   0,  15
#_07D557: dw   0,   0
#_07D55B: dw   8,   8

pool off

;---------------------------------------------------------------------------------------------------

Hookshot_CheckTileCollision:
#_07D55F: PHB
#_07D560: PHK
#_07D561: PLB

; save room ID
#_07D562: LDA.b $A0
#_07D564: PHA

; save layer
#_07D565: LDA.b $EE
#_07D567: PHA

#_07D568: LDA.w $03A4,X
#_07D56B: BEQ .dont_swap_layers

#_07D56D: LDA.w $044A
#_07D570: BNE .not_eg0

; Down a room if EG0
#_07D572: LDA.b $A0
#_07D574: CLC
#_07D575: ADC.b #$10
#_07D577: STA.b $A0

; Otherwise, swap layers
.not_eg0
#_07D579: LDA.b $EE
#_07D57B: EOR.b #$01
#_07D57D: STA.b $EE

;---------------------------------------------------------------------------------------------------

.dont_swap_layers
; Cache coordinates and direction
#_07D57F: LDA.w $0BFA,X
#_07D582: STA.b $04

#_07D584: LDA.w $0C0E,X
#_07D587: STA.b $05

#_07D589: LDA.w $0C04,X
#_07D58C: STA.b $08

#_07D58E: LDA.w $0C18,X
#_07D591: STA.b $09

#_07D593: LDA.w $0C72,X
#_07D596: ASL A
#_07D597: ASL A
#_07D598: STA.b $73

;---------------------------------------------------------------------------------------------------

#_07D59A: PHX

#_07D59B: STZ.b $59

#_07D59D: REP #$20

#_07D59F: JSR ResetTileDetect

#_07D5A2: SEP #$20

#_07D5A4: LDA.w $046C
#_07D5A7: CMP.b #$02
#_07D5A9: BNE .only_1_layer

;---------------------------------------------------------------------------------------------------

#_07D5AB: LDA.b $04
#_07D5AD: PHA

#_07D5AE: LDA.b $05
#_07D5B0: PHA

#_07D5B1: LDA.b $08
#_07D5B3: PHA

#_07D5B4: LDA.b $09
#_07D5B6: PHA

#_07D5B7: LDA.b #$01
#_07D5B9: STA.b $EE

;---------------------------------------------------------------------------------------------------

#_07D5BB: REP #$20

#_07D5BD: LDA.b $E6
#_07D5BF: SEC
#_07D5C0: SBC.b $E8

#_07D5C2: CLC
#_07D5C3: ADC.b $04
#_07D5C5: STA.b $04

#_07D5C7: LDA.b $E0
#_07D5C9: SEC
#_07D5CA: SBC.b $E2

#_07D5CC: CLC
#_07D5CD: ADC.b $08
#_07D5CF: STA.b $08

;---------------------------------------------------------------------------------------------------

#_07D5D1: SEP #$20

#_07D5D3: JSR Hookshot_CheckSingleLayerTileCollision

#_07D5D6: PLA
#_07D5D7: STA.b $09

#_07D5D9: PLA
#_07D5DA: STA.b $08

#_07D5DC: PLA
#_07D5DD: STA.b $05

#_07D5DF: PLA
#_07D5E0: STA.b $04

#_07D5E2: STZ.b $EE

;---------------------------------------------------------------------------------------------------

.only_1_layer
#_07D5E4: JSR Hookshot_CheckSingleLayerTileCollision

#_07D5E7: PLX

#_07D5E8: PLA
#_07D5E9: STA.b $EE

#_07D5EB: PLA
#_07D5EC: STA.b $A0

#_07D5EE: PLB

#_07D5EF: RTL

;===================================================================================================

Hookshot_CheckSingleLayerTileCollision:
#_07D5F0: REP #$20

; direction in Y
#_07D5F2: LDA.b $73
#_07D5F4: TAY

;---------------------------------------------------------------------------------------------------

; add offsets for each direction
#_07D5F5: LDA.b $04
#_07D5F7: CLC
#_07D5F8: ADC.w Hookshot_CheckTileCollision_offsets_a+0,Y
#_07D5FB: AND.b $EC
#_07D5FD: STA.b $00

#_07D5FF: LDA.b $04
#_07D601: CLC
#_07D602: ADC.w Hookshot_CheckTileCollision_offsets_a+2,Y
#_07D605: AND.b $EC
#_07D607: STA.b $04

;---------------------------------------------------------------------------------------------------

#_07D609: LDA.b $08
#_07D60B: CLC
#_07D60C: ADC.w Hookshot_CheckTileCollision_offsets_b+0,Y
#_07D60F: AND.b $EC

#_07D611: LSR A
#_07D612: LSR A
#_07D613: LSR A
#_07D614: STA.b $02


#_07D616: LDA.b $08
#_07D618: CLC
#_07D619: ADC.w Hookshot_CheckTileCollision_offsets_b+2,Y
#_07D61C: AND.b $EC

#_07D61E: LSR A
#_07D61F: LSR A
#_07D620: LSR A
#_07D621: STA.b $08

;---------------------------------------------------------------------------------------------------

#_07D623: REP #$10

; Detect to right
#_07D625: LDA.w #$0001
#_07D628: STA.b $0A

#_07D62A: JSR ExecuteTileDetection

#_07D62D: LDA.b $04
#_07D62F: STA.b $00

#_07D631: LDA.b $08
#_07D633: STA.b $02

; Detect to left
#_07D635: LDA.w #$0002
#_07D638: STA.b $0A

#_07D63A: JSR ExecuteTileDetection

#_07D63D: SEP #$30

#_07D63F: RTS

;===================================================================================================

pool HandleNudgingInADoor

.offset_y
#_07D640: dw $0008, $0017, $0010, $0010

.offset_x
#_07D648: dw $0008, $0008, $0000, $000F

pool off

;---------------------------------------------------------------------------------------------------

HandleNudgingInADoor:
#_07D650: LDA.b $00
#_07D652: PHA

#_07D653: LDA.b $66
#_07D655: AND.b #$02
#_07D657: BEQ .not_horizontal_last

#_07D659: LDY.b #$02

#_07D65B: LDA.b $20
#_07D65D: CMP.b #$80
#_07D65F: BCC .start_detect

#_07D661: LDY.b #$00
#_07D663: BRA .start_detect

.not_horizontal_last
#_07D665: LDY.b #$06

#_07D667: LDA.b $22
#_07D669: CMP.b #$80
#_07D66B: BCC .start_detect

#_07D66D: LDY.b #$04

.start_detect
#_07D66F: STZ.b $59

#_07D671: REP #$20

#_07D673: JSR ResetTileDetect

#_07D676: LDA.b $20
#_07D678: CLC
#_07D679: ADC.w .offset_y,Y
#_07D67C: AND.b $EC
#_07D67E: STA.b $00

#_07D680: LDA.b $22
#_07D682: CLC
#_07D683: ADC.w .offset_x,Y
#_07D686: AND.b $EC
#_07D688: LSR A
#_07D689: LSR A
#_07D68A: LSR A
#_07D68B: STA.b $02

#_07D68D: LDA.w #$0001
#_07D690: STA.b $0A

#_07D692: REP #$10

#_07D694: JSR ExecuteTileDetection

#_07D697: SEP #$30

#_07D699: PLA
#_07D69A: STA.b $00

#_07D69C: LDA.b $0E
#_07D69E: ORA.w $036E
#_07D6A1: AND.b #$03
#_07D6A3: BNE .horizontal_ledge_detected

#_07D6A5: LDA.w $036D
#_07D6A8: ORA.w $0370
#_07D6AB: AND.b #$33
#_07D6AD: BEQ .exit

.horizontal_ledge_detected
#_07D6AF: LDY.b #$00

#_07D6B1: LDA.b $00
#_07D6B3: EOR.b #$FF
#_07D6B5: INC A
#_07D6B6: STA.b $00

#_07D6B8: CMP.b #$80
#_07D6BA: BCC .offset_positive

#_07D6BC: LDY.b #$FF

.offset_positive
#_07D6BE: STY.b $01

#_07D6C0: LDA.b $66
#_07D6C2: AND.b #$02
#_07D6C4: BEQ .add_on_x

#_07D6C6: REP #$20

#_07D6C8: LDA.b $00
#_07D6CA: CLC
#_07D6CB: ADC.b $20
#_07D6CD: STA.b $20

#_07D6CF: BRA .exit

.add_on_x
#_07D6D1: REP #$20

#_07D6D3: LDA.b $00
#_07D6D5: CLC
#_07D6D6: ADC.b $22
#_07D6D8: STA.b $22

.exit
#_07D6DA: SEP #$20

#_07D6DC: RTS

;===================================================================================================

TileCheckForMirrorBonk:
#_07D6DD: STZ.b $59

#_07D6DF: REP #$20

#_07D6E1: JSR ResetTileDetect

#_07D6E4: LDA.b $22
#_07D6E6: CLC
#_07D6E7: ADC.w #$0002
#_07D6EA: AND.b $EC
#_07D6EC: LSR A
#_07D6ED: LSR A
#_07D6EE: LSR A
#_07D6EF: STA.b $02

#_07D6F1: LDA.b $22
#_07D6F3: CLC
#_07D6F4: ADC.w #$000D
#_07D6F7: AND.b $EC
#_07D6F9: LSR A
#_07D6FA: LSR A
#_07D6FB: LSR A
#_07D6FC: STA.b $04

#_07D6FE: LDA.b $20
#_07D700: CLC
#_07D701: ADC.w #$000A
#_07D704: AND.b $EC
#_07D706: STA.b $00
#_07D708: STA.b $74

#_07D70A: LDA.b $20
#_07D70C: CLC
#_07D70D: ADC.w #$0015
#_07D710: AND.b $EC
#_07D712: STA.b $08

#_07D714: BRL TileDetect_FromMirrorBonk

;===================================================================================================

pool TileDetect_SwordSwingDeepInDoor

.offset_y
#_07D717: dw $FFFF, $0018, $0010, $0010

.offset_x
#_07D71F: dw $0008, $0008, $FFFF, $0010

pool off

;---------------------------------------------------------------------------------------------------

TileDetect_SwordSwingDeepInDoor:
#_07D727: STZ.b $59

#_07D729: REP #$20

#_07D72B: JSR ResetTileDetect

#_07D72E: TXA
#_07D72F: AND.w #$00FF
#_07D732: DEC A

#_07D733: ASL A
#_07D734: ASL A
#_07D735: TAY

;---------------------------------------------------------------------------------------------------

#_07D736: LDA.b $22
#_07D738: CLC
#_07D739: ADC.w .offset_x+0,Y
#_07D73C: AND.b $EC

#_07D73E: LSR A
#_07D73F: LSR A
#_07D740: LSR A
#_07D741: STA.b $02

#_07D743: LDA.b $22
#_07D745: CLC
#_07D746: ADC.w .offset_x+2,Y
#_07D749: AND.b $EC

#_07D74B: LSR A
#_07D74C: LSR A
#_07D74D: LSR A
#_07D74E: STA.b $04

#_07D750: LDA.b $20
#_07D752: CLC
#_07D753: ADC.w .offset_y+0,Y
#_07D756: AND.b $EC
#_07D758: STA.b $00

#_07D75A: LDA.b $20
#_07D75C: CLC
#_07D75D: ADC.w .offset_y+2,Y
#_07D760: AND.b $EC
#_07D762: STA.b $08

;---------------------------------------------------------------------------------------------------

#_07D764: REP #$10

; Detect to right
#_07D766: LDA.w #$0001
#_07D769: STA.b $0A

#_07D76B: JSR ExecuteTileDetection

#_07D76E: LDA.b $04
#_07D770: STA.b $02

#_07D772: LDA.b $08
#_07D774: STA.b $00

; Detect to left
#_07D776: LDA.w #$0002
#_07D779: STA.b $0A

#_07D77B: JSR ExecuteTileDetection

#_07D77E: SEP #$30

#_07D780: RTS

;===================================================================================================
; Resets a bunch of properties related to collision detection
;===================================================================================================
ResetTileDetect:
#_07D781: STZ.b $0C
#_07D783: STZ.b $0E

#_07D785: STZ.b $38
#_07D787: STZ.b $58

#_07D789: STZ.w $02C0

#_07D78C: STZ.b $5F
#_07D78E: STZ.b $62

#_07D790: STZ.w $0320

#_07D793: STZ.w $0341
#_07D796: STZ.w $0343

#_07D799: STZ.w $0348
#_07D79C: STZ.w $034C

#_07D79F: STZ.w $0357
#_07D7A2: STZ.w $0359
#_07D7A5: STZ.w $035B

#_07D7A8: STZ.w $0366

#_07D7AB: STZ.w $036D
#_07D7AE: STZ.w $036F

#_07D7B1: STZ.w $02E5
#_07D7B4: STZ.w $02E7
#_07D7B7: STZ.w $02EE

#_07D7BA: STZ.w $02F6

#_07D7BD: STZ.w $03F1

#_07D7C0: RTS

;===================================================================================================

pool ExecuteTileDetection_underworld

.vectors
#_07D7C1: dw TileBehavior_Nothing                          ; 0x00 UW
#_07D7C3: dw TileBehavior_StandardCollision                ; 0x01 UW
#_07D7C5: dw TileBehavior_StandardCollision                ; 0x02 UW
#_07D7C7: dw TileBehavior_StandardCollision                ; 0x03 UW
#_07D7C9: dw TileBehavior_StandardCollision                ; 0x04 UW
#_07D7CB: dw TileBehavior_Nothing                          ; 0x05 UW
#_07D7CD: dw TileBehavior_Nothing                          ; 0x06 UW
#_07D7CF: dw TileBehavior_Nothing                          ; 0x07 UW
#_07D7D1: dw TileBehavior_DeepWater                        ; 0x08 UW
#_07D7D3: dw TileBehavior_ShallowWater                     ; 0x09 UW
#_07D7D5: dw TileBehavior_ShortWaterLadder                 ; 0x0A UW
#_07D7D7: dw TileBehavior_StandardCollision                ; 0x0B UW
#_07D7D9: dw TileBehavior_OverlayMask_0C                   ; 0x0C UW
#_07D7DB: dw TileBehavior_SpikeFloor                       ; 0x0D UW
#_07D7DD: dw TileBehavior_GanonIce                         ; 0x0E UW
#_07D7DF: dw TileBehavior_PalaceIce                        ; 0x0F UW
#_07D7E1: dw TileBehavior_Slope                            ; 0x10 UW
#_07D7E3: dw TileBehavior_Slope                            ; 0x11 UW
#_07D7E5: dw TileBehavior_Slope                            ; 0x12 UW
#_07D7E7: dw TileBehavior_Slope                            ; 0x13 UW
#_07D7E9: dw TileBehavior_Nothing                          ; 0x14 UW
#_07D7EB: dw TileBehavior_Nothing                          ; 0x15 UW
#_07D7ED: dw TileBehavior_Nothing                          ; 0x16 UW
#_07D7EF: dw TileBehavior_Nothing                          ; 0x17 UW
#_07D7F1: dw TileBehavior_SlopeOuter                       ; 0x18 UW
#_07D7F3: dw TileBehavior_SlopeOuter                       ; 0x19 UW
#_07D7F5: dw TileBehavior_SlopeOuter                       ; 0x1A UW
#_07D7F7: dw TileBehavior_SlopeOuter                       ; 0x1B UW
#_07D7F9: dw TileBehavior_OverlayMask_1C                   ; 0x1C UW
#_07D7FB: dw TileBehavior_NorthSingleLayerStairs           ; 0x1D UW
#_07D7FD: dw TileBehavior_NorthSwapLayerStairs             ; 0x1E UW
#_07D7FF: dw TileBehavior_NorthSwapLayerStairs             ; 0x1F UW
#_07D801: dw TileBehavior_Pit                              ; 0x20 UW
#_07D803: dw TileBehavior_Nothing                          ; 0x21 UW
#_07D805: dw TileBehavior_ManualStairs                     ; 0x22 UW
#_07D807: dw TileBehavior_Nothing                          ; 0x23 UW
#_07D809: dw TileBehavior_Nothing                          ; 0x24 UW
#_07D80B: dw TileBehavior_Nothing                          ; 0x25 UW
#_07D80D: dw TileBehavior_StandardCollision                ; 0x26 UW
#_07D80F: dw TileBehavior_Hookshottables                   ; 0x27 UW
#_07D811: dw TileBehavior_Ledge_North                      ; 0x28 UW
#_07D813: dw TileBehavior_Ledge_South                      ; 0x29 UW
#_07D815: dw TileBehavior_Ledge_EastWest                   ; 0x2A UW
#_07D817: dw TileBehavior_Ledge_EastWest                   ; 0x2B UW
#_07D819: dw TileBehavior_Ledge_NorthDiagonal              ; 0x2C UW
#_07D81B: dw TileBehavior_Ledge_SouthDiagonal              ; 0x2D UW
#_07D81D: dw TileBehavior_Ledge_NorthDiagonal              ; 0x2E UW
#_07D81F: dw TileBehavior_Ledge_SouthDiagonal              ; 0x2F UW
#_07D821: dw TileBehavior_ManualStairs                     ; 0x30 UW
#_07D823: dw TileBehavior_ManualStairs                     ; 0x31 UW
#_07D825: dw TileBehavior_ManualStairs                     ; 0x32 UW
#_07D827: dw TileBehavior_ManualStairs                     ; 0x33 UW
#_07D829: dw TileBehavior_ManualStairs                     ; 0x34 UW
#_07D82B: dw TileBehavior_ManualStairs                     ; 0x35 UW
#_07D82D: dw TileBehavior_ManualStairs                     ; 0x36 UW
#_07D82F: dw TileBehavior_ManualStairs                     ; 0x37 UW
#_07D831: dw TileBehavior_Nothing                          ; 0x38 UW
#_07D833: dw TileBehavior_Nothing                          ; 0x39 UW
#_07D835: dw TileBehavior_Nothing                          ; 0x3A UW
#_07D837: dw TileBehavior_Nothing                          ; 0x3B UW
#_07D839: dw TileBehavior_Nothing                          ; 0x3C UW
#_07D83B: dw TileBehavior_SouthSingleLayerStairs           ; 0x3D UW
#_07D83D: dw TileBehavior_SouthSwapLayerStairs             ; 0x3E UW
#_07D83F: dw TileBehavior_SouthSwapLayerStairs             ; 0x3F UW
#_07D841: dw TileBehavior_ThickGrass                       ; 0x40 UW
#_07D843: dw TileBehavior_Nothing                          ; 0x41 UW
#_07D845: dw TileBehavior_Nothing                          ; 0x42 UW
#_07D847: dw TileBehavior_StandardCollision                ; 0x43 UW
#_07D849: dw TileBehavior_Spike                            ; 0x44 UW
#_07D84B: dw TileBehavior_Nothing                          ; 0x45 UW
#_07D84D: dw TileBehavior_HylianPlaque                     ; 0x46 UW
#_07D84F: dw TileBehavior_Nothing                          ; 0x47 UW
#_07D851: dw TileBehavior_DiggableGround                   ; 0x48 UW
#_07D853: dw TileBehavior_Nothing                          ; 0x49 UW
#_07D855: dw TileBehavior_DiggableGround                   ; 0x4A UW
#_07D857: dw TileBehavior_Warp                             ; 0x4B UW
#_07D859: dw TileBehavior_Nothing                          ; 0x4C UW
#_07D85B: dw TileBehavior_Nothing                          ; 0x4D UW
#_07D85D: dw TileBehavior_Nothing                          ; 0x4E UW
#_07D85F: dw TileBehavior_Nothing                          ; 0x4F UW
#_07D861: dw TileBehavior_Liftable                         ; 0x50 UW
#_07D863: dw TileBehavior_Liftable                         ; 0x51 UW
#_07D865: dw TileBehavior_Liftable                         ; 0x52 UW
#_07D867: dw TileBehavior_Liftable                         ; 0x53 UW
#_07D869: dw TileBehavior_Liftable                         ; 0x54 UW
#_07D86B: dw TileBehavior_Liftable                         ; 0x55 UW
#_07D86D: dw TileBehavior_Liftable                         ; 0x56 UW
#_07D86F: dw TileBehavior_BonkRocks                        ; 0x57 UW
#_07D871: dw TileBehavior_Chest                            ; 0x58 UW
#_07D873: dw TileBehavior_Chest                            ; 0x59 UW
#_07D875: dw TileBehavior_Chest                            ; 0x5A UW
#_07D877: dw TileBehavior_Chest                            ; 0x5B UW
#_07D879: dw TileBehavior_Chest                            ; 0x5C UW
#_07D87B: dw TileBehavior_Chest                            ; 0x5D UW
#_07D87D: dw TileBehavior_Nothing                          ; 0x5E UW
#_07D87F: dw TileBehavior_Nothing                          ; 0x5F UW
#_07D881: dw TileBehavior_RupeeTile                        ; 0x60 UW
#_07D883: dw TileBehavior_Nothing                          ; 0x61 UW
#_07D885: dw TileBehavior_Nothing                          ; 0x62 UW
#_07D887: dw TileBehavior_MinigameChest                    ; 0x63 UW
#_07D889: dw TileBehavior_Nothing                          ; 0x64 UW
#_07D88B: dw TileBehavior_Nothing                          ; 0x65 UW
#_07D88D: dw TileBehavior_Nothing                          ; 0x66 UW
#_07D88F: dw TileBehavior_CrystalPeg_Up                    ; 0x67 UW
#_07D891: dw TileBehavior_Conveyor_Upwards                 ; 0x68 UW
#_07D893: dw TileBehavior_Conveyor_Downwards               ; 0x69 UW
#_07D895: dw TileBehavior_Conveyor_Leftwards               ; 0x6A UW
#_07D897: dw TileBehavior_Conveyor_Rightwards              ; 0x6B UW
#_07D899: dw TileBehavior_StandardCollision                ; 0x6C UW
#_07D89B: dw TileBehavior_StandardCollision                ; 0x6D UW
#_07D89D: dw TileBehavior_StandardCollision                ; 0x6E UW
#_07D89F: dw TileBehavior_StandardCollision                ; 0x6F UW
#_07D8A1: dw TileBehavior_ManipulablyReplaced              ; 0x70 UW
#_07D8A3: dw TileBehavior_ManipulablyReplaced              ; 0x71 UW
#_07D8A5: dw TileBehavior_ManipulablyReplaced              ; 0x72 UW
#_07D8A7: dw TileBehavior_ManipulablyReplaced              ; 0x73 UW
#_07D8A9: dw TileBehavior_ManipulablyReplaced              ; 0x74 UW
#_07D8AB: dw TileBehavior_ManipulablyReplaced              ; 0x75 UW
#_07D8AD: dw TileBehavior_ManipulablyReplaced              ; 0x76 UW
#_07D8AF: dw TileBehavior_ManipulablyReplaced              ; 0x77 UW
#_07D8B1: dw TileBehavior_ManipulablyReplaced              ; 0x78 UW
#_07D8B3: dw TileBehavior_ManipulablyReplaced              ; 0x79 UW
#_07D8B5: dw TileBehavior_ManipulablyReplaced              ; 0x7A UW
#_07D8B7: dw TileBehavior_ManipulablyReplaced              ; 0x7B UW
#_07D8B9: dw TileBehavior_ManipulablyReplaced              ; 0x7C UW
#_07D8BB: dw TileBehavior_ManipulablyReplaced              ; 0x7D UW
#_07D8BD: dw TileBehavior_ManipulablyReplaced              ; 0x7E UW
#_07D8BF: dw TileBehavior_ManipulablyReplaced              ; 0x7F UW
#_07D8C1: dw TileBehavior_Door                             ; 0x80 UW
#_07D8C3: dw TileBehavior_Door                             ; 0x81 UW
#_07D8C5: dw TileBehavior_ShutterDoor                      ; 0x82 UW
#_07D8C7: dw TileBehavior_ShutterDoor                      ; 0x83 UW
#_07D8C9: dw TileBehavior_Door                             ; 0x84 UW
#_07D8CB: dw TileBehavior_Door                             ; 0x85 UW
#_07D8CD: dw TileBehavior_Door                             ; 0x86 UW
#_07D8CF: dw TileBehavior_Door                             ; 0x87 UW
#_07D8D1: dw TileBehavior_Door                             ; 0x88 UW
#_07D8D3: dw TileBehavior_Door                             ; 0x89 UW
#_07D8D5: dw TileBehavior_Door                             ; 0x8A UW
#_07D8D7: dw TileBehavior_Door                             ; 0x8B UW
#_07D8D9: dw TileBehavior_Door                             ; 0x8C UW
#_07D8DB: dw TileBehavior_Door                             ; 0x8D UW
#_07D8DD: dw TileBehavior_Entrance                         ; 0x8E UW
#_07D8DF: dw TileBehavior_Entrance                         ; 0x8F UW
#_07D8E1: dw TileBehavior_LayerToggleShutterDoor           ; 0x90 UW
#_07D8E3: dw TileBehavior_LayerToggleShutterDoor           ; 0x91 UW
#_07D8E5: dw TileBehavior_LayerToggleShutterDoor           ; 0x92 UW
#_07D8E7: dw TileBehavior_LayerToggleShutterDoor           ; 0x93 UW
#_07D8E9: dw TileBehavior_LayerToggleShutterDoor           ; 0x94 UW
#_07D8EB: dw TileBehavior_LayerToggleShutterDoor           ; 0x95 UW
#_07D8ED: dw TileBehavior_LayerToggleShutterDoor           ; 0x96 UW
#_07D8EF: dw TileBehavior_LayerToggleShutterDoor           ; 0x97 UW
#_07D8F1: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x98 UW
#_07D8F3: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x99 UW
#_07D8F5: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9A UW
#_07D8F7: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9B UW
#_07D8F9: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9C UW
#_07D8FB: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9D UW
#_07D8FD: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9E UW
#_07D8FF: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9F UW
#_07D901: dw TileBehavior_DungeonToggleManualDoor          ; 0xA0 UW
#_07D903: dw TileBehavior_DungeonToggleManualDoor          ; 0xA1 UW
#_07D905: dw TileBehavior_DungeonToggleShutterDoor         ; 0xA2 UW
#_07D907: dw TileBehavior_DungeonToggleShutterDoor         ; 0xA3 UW
#_07D909: dw TileBehavior_DungeonToggleManualDoor          ; 0xA4 UW
#_07D90B: dw TileBehavior_DungeonToggleManualDoor          ; 0xA5 UW
#_07D90D: dw TileBehavior_Nothing                          ; 0xA6 UW
#_07D90F: dw TileBehavior_Nothing                          ; 0xA7 UW
#_07D911: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xA8 UW
#_07D913: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xA9 UW
#_07D915: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAA UW
#_07D917: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAB UW
#_07D919: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAC UW
#_07D91B: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAD UW
#_07D91D: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAE UW
#_07D91F: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAF UW
#_07D921: dw TileBehavior_Pit                              ; 0xB0 UW
#_07D923: dw TileBehavior_Pit                              ; 0xB1 UW
#_07D925: dw TileBehavior_Pit                              ; 0xB2 UW
#_07D927: dw TileBehavior_Pit                              ; 0xB3 UW
#_07D929: dw TileBehavior_Pit                              ; 0xB4 UW
#_07D92B: dw TileBehavior_Pit                              ; 0xB5 UW
#_07D92D: dw TileBehavior_Pit                              ; 0xB6 UW
#_07D92F: dw TileBehavior_Pit                              ; 0xB7 UW
#_07D931: dw TileBehavior_Pit                              ; 0xB8 UW
#_07D933: dw TileBehavior_Pit                              ; 0xB9 UW
#_07D935: dw TileBehavior_Pit                              ; 0xBA UW
#_07D937: dw TileBehavior_Pit                              ; 0xBB UW
#_07D939: dw TileBehavior_Pit                              ; 0xBC UW
#_07D93B: dw TileBehavior_Pit                              ; 0xBD UW
#_07D93D: dw TileBehavior_Nothing                          ; 0xBE UW
#_07D93F: dw TileBehavior_Nothing                          ; 0xBF UW
#_07D941: dw TileBehavior_LightableTorch                   ; 0xC0 UW
#_07D943: dw TileBehavior_LightableTorch                   ; 0xC1 UW
#_07D945: dw TileBehavior_LightableTorch                   ; 0xC2 UW
#_07D947: dw TileBehavior_LightableTorch                   ; 0xC3 UW
#_07D949: dw TileBehavior_LightableTorch                   ; 0xC4 UW
#_07D94B: dw TileBehavior_LightableTorch                   ; 0xC5 UW
#_07D94D: dw TileBehavior_LightableTorch                   ; 0xC6 UW
#_07D94F: dw TileBehavior_LightableTorch                   ; 0xC7 UW
#_07D951: dw TileBehavior_LightableTorch                   ; 0xC8 UW
#_07D953: dw TileBehavior_LightableTorch                   ; 0xC9 UW
#_07D955: dw TileBehavior_LightableTorch                   ; 0xCA UW
#_07D957: dw TileBehavior_LightableTorch                   ; 0xCB UW
#_07D959: dw TileBehavior_LightableTorch                   ; 0xCC UW
#_07D95B: dw TileBehavior_LightableTorch                   ; 0xCD UW
#_07D95D: dw TileBehavior_LightableTorch                   ; 0xCE UW
#_07D95F: dw TileBehavior_LightableTorch                   ; 0xCF UW
#_07D961: dw TileBehavior_Nothing                          ; 0xD0 UW
#_07D963: dw TileBehavior_Nothing                          ; 0xD1 UW
#_07D965: dw TileBehavior_Nothing                          ; 0xD2 UW
#_07D967: dw TileBehavior_Nothing                          ; 0xD3 UW
#_07D969: dw TileBehavior_Nothing                          ; 0xD4 UW
#_07D96B: dw TileBehavior_Nothing                          ; 0xD5 UW
#_07D96D: dw TileBehavior_Nothing                          ; 0xD6 UW
#_07D96F: dw TileBehavior_Nothing                          ; 0xD7 UW
#_07D971: dw TileBehavior_Nothing                          ; 0xD8 UW
#_07D973: dw TileBehavior_Nothing                          ; 0xD9 UW
#_07D975: dw TileBehavior_Nothing                          ; 0xDA UW
#_07D977: dw TileBehavior_Nothing                          ; 0xDB UW
#_07D979: dw TileBehavior_Nothing                          ; 0xDC UW
#_07D97B: dw TileBehavior_Nothing                          ; 0xDD UW
#_07D97D: dw TileBehavior_Nothing                          ; 0xDE UW
#_07D97F: dw TileBehavior_Nothing                          ; 0xDF UW
#_07D981: dw TileBehavior_Nothing                          ; 0xE0 UW
#_07D983: dw TileBehavior_Nothing                          ; 0xE1 UW
#_07D985: dw TileBehavior_Nothing                          ; 0xE2 UW
#_07D987: dw TileBehavior_Nothing                          ; 0xE3 UW
#_07D989: dw TileBehavior_Nothing                          ; 0xE4 UW
#_07D98B: dw TileBehavior_Nothing                          ; 0xE5 UW
#_07D98D: dw TileBehavior_Nothing                          ; 0xE6 UW
#_07D98F: dw TileBehavior_Nothing                          ; 0xE7 UW
#_07D991: dw TileBehavior_Nothing                          ; 0xE8 UW
#_07D993: dw TileBehavior_Nothing                          ; 0xE9 UW
#_07D995: dw TileBehavior_Nothing                          ; 0xEA UW
#_07D997: dw TileBehavior_Nothing                          ; 0xEB UW
#_07D999: dw TileBehavior_Nothing                          ; 0xEC UW
#_07D99B: dw TileBehavior_Nothing                          ; 0xED UW
#_07D99D: dw TileBehavior_Nothing                          ; 0xEE UW
#_07D99F: dw TileBehavior_Nothing                          ; 0xEF UW
#_07D9A1: dw TileBehavior_FlaggableDoor                    ; 0xF0 UW
#_07D9A3: dw TileBehavior_FlaggableDoor                    ; 0xF1 UW
#_07D9A5: dw TileBehavior_FlaggableDoor                    ; 0xF2 UW
#_07D9A7: dw TileBehavior_FlaggableDoor                    ; 0xF3 UW
#_07D9A9: dw TileBehavior_FlaggableDoor                    ; 0xF4 UW
#_07D9AB: dw TileBehavior_FlaggableDoor                    ; 0xF5 UW
#_07D9AD: dw TileBehavior_FlaggableDoor                    ; 0xF6 UW
#_07D9AF: dw TileBehavior_FlaggableDoor                    ; 0xF7 UW
#_07D9B1: dw TileBehavior_FlaggableDoor                    ; 0xF8 UW
#_07D9B3: dw TileBehavior_FlaggableDoor                    ; 0xF9 UW
#_07D9B5: dw TileBehavior_FlaggableDoor                    ; 0xFA UW
#_07D9B7: dw TileBehavior_FlaggableDoor                    ; 0xFB UW
#_07D9B9: dw TileBehavior_FlaggableDoor                    ; 0xFC UW
#_07D9BB: dw TileBehavior_FlaggableDoor                    ; 0xFD UW
#_07D9BD: dw TileBehavior_FlaggableDoor                    ; 0xFE UW
#_07D9BF: dw TileBehavior_FlaggableDoor                    ; 0xFF UW

pool off

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
#_07D9C1: SEP #$30

#_07D9C3: LDA.b $1B
#_07D9C5: BNE ExecuteTileDetection_underworld

#_07D9C7: BRL ExecuteTileDetection_overworld

;===================================================================================================

ExecuteTileDetection_underworld:
#_07D9CA: REP #$20

#_07D9CC: LDA.b $49
#_07D9CE: AND.w #$00FF
#_07D9D1: STA.b $49

#_07D9D3: LDA.b $00
#_07D9D5: AND.w #$FFF8
#_07D9D8: ASL A
#_07D9D9: ASL A
#_07D9DA: ASL A
#_07D9DB: STA.b $06

#_07D9DD: LDA.b $02
#_07D9DF: AND.w #$003F
#_07D9E2: CLC
#_07D9E3: ADC.b $06

; !BUG kinda; since it means you won't detect tiles on the proper layer with dungeon/layer swaps
#_07D9E5: LDX.b $EE
#_07D9E7: BEQ .upper_layer

#_07D9E9: CLC
#_07D9EA: ADC.w #$1000

.upper_layer
#_07D9ED: REP #$10

#_07D9EF: TAX

#_07D9F0: LDA.l $7F2000,X
#_07D9F4: PHA

;---------------------------------------------------------------------------------------------------

#_07D9F5: LDA.w $037F
#_07D9F8: AND.w #$00FF
#_07D9FB: BEQ .not_oob

#_07D9FD: PLA
#_07D9FE: LDA.w #$0000
#_07DA01: BRA .oob_mode

.not_oob
#_07DA03: PLA

.oob_mode
#_07DA04: AND.w #$00FF
#_07DA07: STA.b $06
#_07DA09: STA.w $0114

#_07DA0C: STX.b $BD

#_07DA0E: ASL A
#_07DA0F: TAX

#_07DA10: JMP.w (.vectors,X)

;===================================================================================================

pool ExecuteTileDetection_overworld

.vectors
#_07DA13: dw TileBehavior_NothingOW                        ; 0x00 OW
#_07DA15: dw TileBehavior_StandardCollision                ; 0x01 OW
#_07DA17: dw TileBehavior_StandardCollision                ; 0x02 OW
#_07DA19: dw TileBehavior_StandardCollision                ; 0x03 OW
#_07DA1B: dw TileBehavior_ThickGrass                       ; 0x04 OW
#_07DA1D: dw TileBehavior_NothingOW                        ; 0x05 OW
#_07DA1F: dw TileBehavior_NothingOW                        ; 0x06 OW
#_07DA21: dw TileBehavior_NothingOW                        ; 0x07 OW
#_07DA23: dw TileBehavior_DeepWater                        ; 0x08 OW
#_07DA25: dw TileBehavior_ShallowWater                     ; 0x09 OW
#_07DA27: dw TileBehavior_ShortWaterLadder                 ; 0x0A OW
#_07DA29: dw TileBehavior_UnusedDeepWater                  ; 0x0B OW
#_07DA2B: dw TileBehavior_OverlayMask_0C                   ; 0x0C OW
#_07DA2D: dw TileBehavior_SpikeFloor                       ; 0x0D OW
#_07DA2F: dw TileBehavior_GanonIce                         ; 0x0E OW
#_07DA31: dw TileBehavior_PalaceIce                        ; 0x0F OW
#_07DA33: dw TileBehavior_Slope                            ; 0x10 OW
#_07DA35: dw TileBehavior_Slope                            ; 0x11 OW
#_07DA37: dw TileBehavior_Slope                            ; 0x12 OW
#_07DA39: dw TileBehavior_Slope                            ; 0x13 OW
#_07DA3B: dw TileBehavior_NothingOW                        ; 0x14 OW
#_07DA3D: dw TileBehavior_NothingOW                        ; 0x15 OW
#_07DA3F: dw TileBehavior_NothingOW                        ; 0x16 OW
#_07DA41: dw TileBehavior_NothingOW                        ; 0x17 OW
#_07DA43: dw TileBehavior_SlopeOuter                       ; 0x18 OW
#_07DA45: dw TileBehavior_SlopeOuter                       ; 0x19 OW
#_07DA47: dw TileBehavior_SlopeOuter                       ; 0x1A OW
#_07DA49: dw TileBehavior_SlopeOuter                       ; 0x1B OW
#_07DA4B: dw TileBehavior_OverlayMask_1C                   ; 0x1C OW
#_07DA4D: dw TileBehavior_NorthSingleLayerStairs           ; 0x1D OW
#_07DA4F: dw TileBehavior_NorthSwapLayerStairs             ; 0x1E OW
#_07DA51: dw TileBehavior_NorthSwapLayerStairs             ; 0x1F OW
#_07DA53: dw TileBehavior_Pit                              ; 0x20 OW
#_07DA55: dw TileBehavior_NothingOW                        ; 0x21 OW
#_07DA57: dw TileBehavior_ManualStairs                     ; 0x22 OW
#_07DA59: dw TileBehavior_NothingOW                        ; 0x23 OW
#_07DA5B: dw TileBehavior_NothingOW                        ; 0x24 OW
#_07DA5D: dw TileBehavior_NothingOW                        ; 0x25 OW
#_07DA5F: dw TileBehavior_StandardCollision                ; 0x26 OW
#_07DA61: dw TileBehavior_Hookshottables                   ; 0x27 OW
#_07DA63: dw TileBehavior_Ledge_North                      ; 0x28 OW
#_07DA65: dw TileBehavior_Ledge_South                      ; 0x29 OW
#_07DA67: dw TileBehavior_Ledge_EastWest                   ; 0x2A OW
#_07DA69: dw TileBehavior_Ledge_EastWest                   ; 0x2B OW
#_07DA6B: dw TileBehavior_Ledge_NorthDiagonal              ; 0x2C OW
#_07DA6D: dw TileBehavior_Ledge_SouthDiagonal              ; 0x2D OW
#_07DA6F: dw TileBehavior_Ledge_NorthDiagonal              ; 0x2E OW
#_07DA71: dw TileBehavior_Ledge_SouthDiagonal              ; 0x2F OW
#_07DA73: dw TileBehavior_ManualStairs                     ; 0x30 OW
#_07DA75: dw TileBehavior_ManualStairs                     ; 0x31 OW
#_07DA77: dw TileBehavior_ManualStairs                     ; 0x32 OW
#_07DA79: dw TileBehavior_ManualStairs                     ; 0x33 OW
#_07DA7B: dw TileBehavior_ManualStairs                     ; 0x34 OW
#_07DA7D: dw TileBehavior_ManualStairs                     ; 0x35 OW
#_07DA7F: dw TileBehavior_ManualStairs                     ; 0x36 OW
#_07DA81: dw TileBehavior_ManualStairs                     ; 0x37 OW
#_07DA83: dw TileBehavior_NothingOW                        ; 0x38 OW
#_07DA85: dw TileBehavior_NothingOW                        ; 0x39 OW
#_07DA87: dw TileBehavior_NothingOW                        ; 0x3A OW
#_07DA89: dw TileBehavior_NothingOW                        ; 0x3B OW
#_07DA8B: dw TileBehavior_NothingOW                        ; 0x3C OW
#_07DA8D: dw TileBehavior_SouthSingleLayerStairs           ; 0x3D OW
#_07DA8F: dw TileBehavior_SouthSwapLayerStairs             ; 0x3E OW
#_07DA91: dw TileBehavior_SouthSwapLayerStairs             ; 0x3F OW
#_07DA93: dw TileBehavior_ThickGrass                       ; 0x40 OW
#_07DA95: dw TileBehavior_NothingOW                        ; 0x41 OW
#_07DA97: dw TileBehavior_GraveStone                       ; 0x42 OW
#_07DA99: dw TileBehavior_StandardCollision                ; 0x43 OW
#_07DA9B: dw TileBehavior_Spike                            ; 0x44 OW
#_07DA9D: dw TileBehavior_NothingOW                        ; 0x45 OW
#_07DA9F: dw TileBehavior_HylianPlaque                     ; 0x46 OW
#_07DAA1: dw TileBehavior_NothingOW                        ; 0x47 OW
#_07DAA3: dw TileBehavior_DiggableGround                   ; 0x48 OW
#_07DAA5: dw TileBehavior_NothingOW                        ; 0x49 OW
#_07DAA7: dw TileBehavior_DiggableGround                   ; 0x4A OW
#_07DAA9: dw TileBehavior_Warp                             ; 0x4B OW
#_07DAAB: dw TileBehavior_UnusedCornerType                 ; 0x4C OW
#_07DAAD: dw TileBehavior_UnusedCornerType                 ; 0x4D OW
#_07DAAF: dw TileBehavior_EasternRuinsCorner               ; 0x4E OW
#_07DAB1: dw TileBehavior_EasternRuinsCorner               ; 0x4F OW
#_07DAB3: dw TileBehavior_Liftable                         ; 0x50 OW
#_07DAB5: dw TileBehavior_Liftable                         ; 0x51 OW
#_07DAB7: dw TileBehavior_Liftable                         ; 0x52 OW
#_07DAB9: dw TileBehavior_Liftable                         ; 0x53 OW
#_07DABB: dw TileBehavior_Liftable                         ; 0x54 OW
#_07DABD: dw TileBehavior_Liftable                         ; 0x55 OW
#_07DABF: dw TileBehavior_Liftable                         ; 0x56 OW
#_07DAC1: dw TileBehavior_BonkRocks                        ; 0x57 OW
#_07DAC3: dw TileBehavior_Chest                            ; 0x58 OW
#_07DAC5: dw TileBehavior_Chest                            ; 0x59 OW
#_07DAC7: dw TileBehavior_Chest                            ; 0x5A OW
#_07DAC9: dw TileBehavior_Chest                            ; 0x5B OW
#_07DACB: dw TileBehavior_Chest                            ; 0x5C OW
#_07DACD: dw TileBehavior_Chest                            ; 0x5D OW
#_07DACF: dw TileBehavior_NothingOW                        ; 0x5E OW
#_07DAD1: dw TileBehavior_NothingOW                        ; 0x5F OW
#_07DAD3: dw TileBehavior_NothingOW                        ; 0x60 OW
#_07DAD5: dw TileBehavior_NothingOW                        ; 0x61 OW
#_07DAD7: dw TileBehavior_NothingOW                        ; 0x62 OW
#_07DAD9: dw TileBehavior_MinigameChest                    ; 0x63 OW
#_07DADB: dw TileBehavior_NothingOW                        ; 0x64 OW
#_07DADD: dw TileBehavior_NothingOW                        ; 0x65 OW
#_07DADF: dw TileBehavior_NothingOW                        ; 0x66 OW
#_07DAE1: dw TileBehavior_CrystalPeg_Up                    ; 0x67 OW
#_07DAE3: dw TileBehavior_Conveyor_Upwards                 ; 0x68 OW
#_07DAE5: dw TileBehavior_Conveyor_Downwards               ; 0x69 OW
#_07DAE7: dw TileBehavior_Conveyor_Leftwards               ; 0x6A OW
#_07DAE9: dw TileBehavior_Conveyor_Rightwards              ; 0x6B OW
#_07DAEB: dw TileBehavior_NothingOW                        ; 0x6C OW
#_07DAED: dw TileBehavior_NothingOW                        ; 0x6D OW
#_07DAEF: dw TileBehavior_NothingOW                        ; 0x6E OW
#_07DAF1: dw TileBehavior_NothingOW                        ; 0x6F OW
#_07DAF3: dw TileBehavior_ManipulablyReplaced              ; 0x70 OW
#_07DAF5: dw TileBehavior_ManipulablyReplaced              ; 0x71 OW
#_07DAF7: dw TileBehavior_ManipulablyReplaced              ; 0x72 OW
#_07DAF9: dw TileBehavior_ManipulablyReplaced              ; 0x73 OW
#_07DAFB: dw TileBehavior_ManipulablyReplaced              ; 0x74 OW
#_07DAFD: dw TileBehavior_ManipulablyReplaced              ; 0x75 OW
#_07DAFF: dw TileBehavior_ManipulablyReplaced              ; 0x76 OW
#_07DB01: dw TileBehavior_ManipulablyReplaced              ; 0x77 OW
#_07DB03: dw TileBehavior_ManipulablyReplaced              ; 0x78 OW
#_07DB05: dw TileBehavior_ManipulablyReplaced              ; 0x79 OW
#_07DB07: dw TileBehavior_ManipulablyReplaced              ; 0x7A OW
#_07DB09: dw TileBehavior_ManipulablyReplaced              ; 0x7B OW
#_07DB0B: dw TileBehavior_ManipulablyReplaced              ; 0x7C OW
#_07DB0D: dw TileBehavior_ManipulablyReplaced              ; 0x7D OW
#_07DB0F: dw TileBehavior_ManipulablyReplaced              ; 0x7E OW
#_07DB11: dw TileBehavior_ManipulablyReplaced              ; 0x7F OW
#_07DB13: dw TileBehavior_Door                             ; 0x80 OW
#_07DB15: dw TileBehavior_Door                             ; 0x81 OW
#_07DB17: dw TileBehavior_ShutterDoor                      ; 0x82 OW
#_07DB19: dw TileBehavior_ShutterDoor                      ; 0x83 OW
#_07DB1B: dw TileBehavior_Door                             ; 0x84 OW
#_07DB1D: dw TileBehavior_Door                             ; 0x85 OW
#_07DB1F: dw TileBehavior_Door                             ; 0x86 OW
#_07DB21: dw TileBehavior_Door                             ; 0x87 OW
#_07DB23: dw TileBehavior_Door                             ; 0x88 OW
#_07DB25: dw TileBehavior_Door                             ; 0x89 OW
#_07DB27: dw TileBehavior_Door                             ; 0x8A OW
#_07DB29: dw TileBehavior_Door                             ; 0x8B OW
#_07DB2B: dw TileBehavior_Door                             ; 0x8C OW
#_07DB2D: dw TileBehavior_Door                             ; 0x8D OW
#_07DB2F: dw TileBehavior_Entrance                         ; 0x8E OW
#_07DB31: dw TileBehavior_Entrance                         ; 0x8F OW
#_07DB33: dw TileBehavior_LayerToggleShutterDoor           ; 0x90 OW
#_07DB35: dw TileBehavior_LayerToggleShutterDoor           ; 0x91 OW
#_07DB37: dw TileBehavior_LayerToggleShutterDoor           ; 0x92 OW
#_07DB39: dw TileBehavior_LayerToggleShutterDoor           ; 0x93 OW
#_07DB3B: dw TileBehavior_LayerToggleShutterDoor           ; 0x94 OW
#_07DB3D: dw TileBehavior_LayerToggleShutterDoor           ; 0x95 OW
#_07DB3F: dw TileBehavior_LayerToggleShutterDoor           ; 0x96 OW
#_07DB41: dw TileBehavior_LayerToggleShutterDoor           ; 0x97 OW
#_07DB43: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x98 OW
#_07DB45: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x99 OW
#_07DB47: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9A OW
#_07DB49: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9B OW
#_07DB4B: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9C OW
#_07DB4D: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9D OW
#_07DB4F: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9E OW
#_07DB51: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0x9F OW
#_07DB53: dw TileBehavior_DungeonToggleManualDoor          ; 0xA0 OW
#_07DB55: dw TileBehavior_DungeonToggleManualDoor          ; 0xA1 OW
#_07DB57: dw TileBehavior_DungeonToggleShutterDoor         ; 0xA2 OW
#_07DB59: dw TileBehavior_DungeonToggleShutterDoor         ; 0xA3 OW
#_07DB5B: dw TileBehavior_DungeonToggleManualDoor          ; 0xA4 OW
#_07DB5D: dw TileBehavior_DungeonToggleManualDoor          ; 0xA5 OW
#_07DB5F: dw TileBehavior_NothingOW                        ; 0xA6 OW
#_07DB61: dw TileBehavior_NothingOW                        ; 0xA7 OW
#_07DB63: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xA8 OW
#_07DB65: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xA9 OW
#_07DB67: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAA OW
#_07DB69: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAB OW
#_07DB6B: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAC OW
#_07DB6D: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAD OW
#_07DB6F: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAE OW
#_07DB71: dw TileBehavior_LayerAndDungeonToggleShutterDoor ; 0xAF OW
#_07DB73: dw TileBehavior_Pit                              ; 0xB0 OW
#_07DB75: dw TileBehavior_Pit                              ; 0xB1 OW
#_07DB77: dw TileBehavior_Pit                              ; 0xB2 OW
#_07DB79: dw TileBehavior_Pit                              ; 0xB3 OW
#_07DB7B: dw TileBehavior_Pit                              ; 0xB4 OW
#_07DB7D: dw TileBehavior_Pit                              ; 0xB5 OW
#_07DB7F: dw TileBehavior_Pit                              ; 0xB6 OW
#_07DB81: dw TileBehavior_Pit                              ; 0xB7 OW
#_07DB83: dw TileBehavior_Pit                              ; 0xB8 OW
#_07DB85: dw TileBehavior_Pit                              ; 0xB9 OW
#_07DB87: dw TileBehavior_Pit                              ; 0xBA OW
#_07DB89: dw TileBehavior_Pit                              ; 0xBB OW
#_07DB8B: dw TileBehavior_Pit                              ; 0xBC OW
#_07DB8D: dw TileBehavior_Pit                              ; 0xBD OW
#_07DB8F: dw TileBehavior_NothingOW                        ; 0xBE OW
#_07DB91: dw TileBehavior_NothingOW                        ; 0xBF OW
#_07DB93: dw TileBehavior_LightableTorch                   ; 0xC0 OW
#_07DB95: dw TileBehavior_LightableTorch                   ; 0xC1 OW
#_07DB97: dw TileBehavior_LightableTorch                   ; 0xC2 OW
#_07DB99: dw TileBehavior_LightableTorch                   ; 0xC3 OW
#_07DB9B: dw TileBehavior_LightableTorch                   ; 0xC4 OW
#_07DB9D: dw TileBehavior_LightableTorch                   ; 0xC5 OW
#_07DB9F: dw TileBehavior_LightableTorch                   ; 0xC6 OW
#_07DBA1: dw TileBehavior_LightableTorch                   ; 0xC7 OW
#_07DBA3: dw TileBehavior_LightableTorch                   ; 0xC8 OW
#_07DBA5: dw TileBehavior_LightableTorch                   ; 0xC9 OW
#_07DBA7: dw TileBehavior_LightableTorch                   ; 0xCA OW
#_07DBA9: dw TileBehavior_LightableTorch                   ; 0xCB OW
#_07DBAB: dw TileBehavior_LightableTorch                   ; 0xCC OW
#_07DBAD: dw TileBehavior_LightableTorch                   ; 0xCD OW
#_07DBAF: dw TileBehavior_LightableTorch                   ; 0xCE OW
#_07DBB1: dw TileBehavior_LightableTorch                   ; 0xCF OW
#_07DBB3: dw TileBehavior_NothingOW                        ; 0xD0 OW
#_07DBB5: dw TileBehavior_NothingOW                        ; 0xD1 OW
#_07DBB7: dw TileBehavior_NothingOW                        ; 0xD2 OW
#_07DBB9: dw TileBehavior_NothingOW                        ; 0xD3 OW
#_07DBBB: dw TileBehavior_NothingOW                        ; 0xD4 OW
#_07DBBD: dw TileBehavior_NothingOW                        ; 0xD5 OW
#_07DBBF: dw TileBehavior_NothingOW                        ; 0xD6 OW
#_07DBC1: dw TileBehavior_NothingOW                        ; 0xD7 OW
#_07DBC3: dw TileBehavior_NothingOW                        ; 0xD8 OW
#_07DBC5: dw TileBehavior_NothingOW                        ; 0xD9 OW
#_07DBC7: dw TileBehavior_NothingOW                        ; 0xDA OW
#_07DBC9: dw TileBehavior_NothingOW                        ; 0xDB OW
#_07DBCB: dw TileBehavior_NothingOW                        ; 0xDC OW
#_07DBCD: dw TileBehavior_NothingOW                        ; 0xDD OW
#_07DBCF: dw TileBehavior_NothingOW                        ; 0xDE OW
#_07DBD1: dw TileBehavior_NothingOW                        ; 0xDF OW
#_07DBD3: dw TileBehavior_NothingOW                        ; 0xE0 OW
#_07DBD5: dw TileBehavior_NothingOW                        ; 0xE1 OW
#_07DBD7: dw TileBehavior_NothingOW                        ; 0xE2 OW
#_07DBD9: dw TileBehavior_NothingOW                        ; 0xE3 OW
#_07DBDB: dw TileBehavior_NothingOW                        ; 0xE4 OW
#_07DBDD: dw TileBehavior_NothingOW                        ; 0xE5 OW
#_07DBDF: dw TileBehavior_NothingOW                        ; 0xE6 OW
#_07DBE1: dw TileBehavior_NothingOW                        ; 0xE7 OW
#_07DBE3: dw TileBehavior_NothingOW                        ; 0xE8 OW
#_07DBE5: dw TileBehavior_NothingOW                        ; 0xE9 OW
#_07DBE7: dw TileBehavior_NothingOW                        ; 0xEA OW
#_07DBE9: dw TileBehavior_NothingOW                        ; 0xEB OW
#_07DBEB: dw TileBehavior_NothingOW                        ; 0xEC OW
#_07DBED: dw TileBehavior_NothingOW                        ; 0xED OW
#_07DBEF: dw TileBehavior_NothingOW                        ; 0xEE OW
#_07DBF1: dw TileBehavior_NothingOW                        ; 0xEF OW
#_07DBF3: dw TileBehavior_FlaggableDoor                    ; 0xF0 OW
#_07DBF5: dw TileBehavior_FlaggableDoor                    ; 0xF1 OW
#_07DBF7: dw TileBehavior_FlaggableDoor                    ; 0xF2 OW
#_07DBF9: dw TileBehavior_FlaggableDoor                    ; 0xF3 OW
#_07DBFB: dw TileBehavior_FlaggableDoor                    ; 0xF4 OW
#_07DBFD: dw TileBehavior_FlaggableDoor                    ; 0xF5 OW
#_07DBFF: dw TileBehavior_FlaggableDoor                    ; 0xF6 OW
#_07DC01: dw TileBehavior_FlaggableDoor                    ; 0xF7 OW
#_07DC03: dw TileBehavior_FlaggableDoor                    ; 0xF8 OW
#_07DC05: dw TileBehavior_FlaggableDoor                    ; 0xF9 OW
#_07DC07: dw TileBehavior_FlaggableDoor                    ; 0xFA OW
#_07DC09: dw TileBehavior_FlaggableDoor                    ; 0xFB OW
#_07DC0B: dw TileBehavior_FlaggableDoor                    ; 0xFC OW
#_07DC0D: dw TileBehavior_FlaggableDoor                    ; 0xFD OW
#_07DC0F: dw TileBehavior_FlaggableDoor                    ; 0xFE OW
#_07DC11: dw TileBehavior_FlaggableDoor                    ; 0xFF OW

pool off

;---------------------------------------------------------------------------------------------------

ExecuteTileDetection_overworld:
#_07DC13: JSL GetOverworldTileType

.from_item
#_07DC17: REP #$30

#_07DC19: PHA

#_07DC1A: LDA.w $037F
#_07DC1D: AND.w #$00FF
#_07DC20: BEQ .not_oob

#_07DC22: PLA
#_07DC23: LDA.w #$0000

#_07DC26: BRA .oob_mode

.not_oob
#_07DC28: PLA

.oob_mode
#_07DC29: AND.w #$00FF
#_07DC2C: STA.b $06

#_07DC2E: ASL A
#_07DC2F: TAX

#_07DC30: JMP.w (.vectors,X)

;===================================================================================================

#TileBehavior_HandleItemAndExecute:
#_07DC33: JSL HandleItemTileAction

#_07DC37: BRA .from_item

;===================================================================================================

TileBehavior_StandardCollision:
#_07DC39: LDA.b $0A
#_07DC3B: TSB.b $0E

;===================================================================================================
; These do absolutely nothing.
;===================================================================================================
TileBehavior_Nothing:
#_07DC3D: RTS

;===================================================================================================

TileBehavior_Slope_masks:
#_07DC3E: dw $0004 ; 00000100
#_07DC40: dw $0000 ; 00000000
#_07DC42: dw $0006 ; 00000110
#_07DC44: dw $0002 ; 00000010

;===================================================================================================

TileBehavior_SlopeOuter:
#_07DC46: LDA.b $0A
#_07DC48: TSB.b $38

;===================================================================================================

TileBehavior_Slope:
#_07DC4A: LDA.b $0A
#_07DC4C: TSB.b $0C

#_07DC4E: LDA.b $06
#_07DC50: AND.w #$0003
#_07DC53: ASL A
#_07DC54: TAY

#_07DC55: LDA.w TileBehavior_Slope_masks,Y
#_07DC58: STA.b $6E

#_07DC5A: RTS

;===================================================================================================

TileBehavior_NorthSingleLayerStairs:
#_07DC5B: LDA.b $06
#_07DC5D: STA.b $76

#_07DC5F: LDA.b $0A
#_07DC61: TSB.w $02C0

#_07DC64: BRA TileBehavior_ManualStairs

;===================================================================================================

TileBehavior_NorthSwapLayerStairs:
#_07DC66: LDA.b $06
#_07DC68: STA.b $76

#_07DC6A: LDA.b $0A
#_07DC6C: TSB.w $02C0

;===================================================================================================

TileBehavior_ManualStairs:
#_07DC6F: LDA.b $0A
#_07DC71: TSB.b $58

#_07DC73: RTS

;===================================================================================================

TileBehavior_Pit:
#_07DC74: LDA.w $02F5
#_07DC77: AND.w #$00FF
#_07DC7A: BNE .exit

#_07DC7C: LDA.b $0A
#_07DC7E: TSB.b $59

.exit
#_07DC80: RTS

;===================================================================================================

TileBehavior_OverlayMask_0C:
#_07DC81: LDA.b $0A
#_07DC83: TSB.w $0320

#_07DC86: RTS

;===================================================================================================

TileBehavior_GanonIce:
#_07DC87: LDA.b $0A
#_07DC89: TSB.w $0348

#_07DC8C: RTS

;===================================================================================================

TileBehavior_PalaceIce:
#_07DC8D: LDA.b $0A

#_07DC8F: ASL A
#_07DC90: ASL A
#_07DC91: ASL A
#_07DC92: ASL A

#_07DC93: TSB.w $0348

#_07DC96: RTS

;===================================================================================================

TileBehavior_LightableTorch:
#_07DC97: LDA.b $0A
#_07DC99: TSB.b $0E
#_07DC9B: TSB.w $02F6

#_07DC9E: RTS

;===================================================================================================

TileBehavior_DeepWater:
#_07DC9F: LDA.b $0A
#_07DCA1: TSB.w $0341

#_07DCA4: RTS

;===================================================================================================

TileBehavior_ShortWaterLadder:
#_07DCA5: LDA.b $0A
#_07DCA7: TSB.w $0343

#_07DCAA: RTS

;===================================================================================================

TileBehavior_OverlayMask_1C:
#_07DCAB: LDA.b $0A
#_07DCAD: TSB.w $034C

#_07DCB0: RTS

;===================================================================================================

TileBehavior_LayerToggleShutterDoor:
#_07DCB1: LDA.b $EF
#_07DCB3: AND.w #$FF00
#_07DCB6: ORA.w #$0001
#_07DCB9: STA.b $EF

#_07DCBB: BRA TileBehavior_ShutterDoor

;===================================================================================================

TileBehavior_LayerAndDungeonToggleShutterDoor:
#_07DCBD: LDA.b $EF
#_07DCBF: AND.w #$FF00
#_07DCC2: ORA.w #$0003
#_07DCC5: STA.b $EF

#_07DCC7: BRA TileBehavior_ShutterDoor

;===================================================================================================

TileBehavior_DungeonToggleShutterDoor:
#_07DCC9: LDA.b $EF
#_07DCCB: AND.w #$FF00
#_07DCCE: ORA.w #$0002
#_07DCD1: STA.b $EF

;===================================================================================================

TileBehavior_ShutterDoor:
#_07DCD3: LDA.b $0A
#_07DCD5: ASL A
#_07DCD6: ASL A
#_07DCD7: ASL A
#_07DCD8: ASL A
#_07DCD9: TSB.b $0E

#_07DCDB: LDA.b $0A
#_07DCDD: XBA
#_07DCDE: TSB.b $0E

#_07DCE0: LDA.b $06
#_07DCE2: AND.w #$0001
#_07DCE5: ASL A
#_07DCE6: STA.b $62

#_07DCE8: RTS

;===================================================================================================

TileBehavior_DungeonToggleManualDoor:
#_07DCE9: LDA.b $EF
#_07DCEB: AND.w #$FF00
#_07DCEE: ORA.w #$0002
#_07DCF1: STA.b $EF

;===================================================================================================

TileBehavior_Door:
#_07DCF3: LDA.b $0A
#_07DCF5: ASL A
#_07DCF6: ASL A
#_07DCF7: ASL A
#_07DCF8: ASL A
#_07DCF9: TSB.b $0E

#_07DCFB: LDA.b $06
#_07DCFD: AND.w #$0001
#_07DD00: ASL A
#_07DD01: STA.b $62

#_07DD03: RTS

;===================================================================================================

TileBehavior_ShallowWater:
#_07DD04: LDA.b $0A
#_07DD06: TSB.w $0359

#_07DD09: RTS

;===================================================================================================
; Things like pots, hammer pegs, blocks, bushes, etc
;===================================================================================================
pool TileBehavior_ManipulablyReplaced

.bitmask
#_07DD0A: dw $0001 ; 0000000000000001
#_07DD0C: dw $0002 ; 0000000000000010
#_07DD0E: dw $0004 ; 0000000000000100
#_07DD10: dw $0008 ; 0000000000001000
#_07DD12: dw $0010 ; 0000000000010000
#_07DD14: dw $0020 ; 0000000000100000
#_07DD16: dw $0040 ; 0000000001000000
#_07DD18: dw $0080 ; 0000000010000000
#_07DD1A: dw $0100 ; 0000000100000000
#_07DD1C: dw $0200 ; 0000001000000000
#_07DD1E: dw $0400 ; 0000010000000000
#_07DD20: dw $0800 ; 0000100000000000
#_07DD22: dw $1000 ; 0001000000000000
#_07DD24: dw $2000 ; 0010000000000000
#_07DD26: dw $4000 ; 0100000000000000
#_07DD28: dw $8000 ; 1000000000000000

pool off

;---------------------------------------------------------------------------------------------------

TileBehavior_ManipulablyReplaced:
#_07DD2A: LDA.b $0A
#_07DD2C: AND.w #$0002
#_07DD2F: BEQ .no_bitmask

#_07DD31: LDA.b $06
#_07DD33: AND.w #$000F
#_07DD36: ASL A
#_07DD37: TAY

#_07DD38: LDA.w .bitmask,Y
#_07DD3B: TSB.b $5F

.no_bitmask
#_07DD3D: LDA.b $0A
#_07DD3F: TSB.b $0E

#_07DD41: JSR TileBehavior_FlagManipulable

#_07DD44: RTS

;===================================================================================================

TileBehavior_UnusedDeepWater:
#_07DD45: LDA.b $06
#_07DD47: STA.b $76

#_07DD49: LDA.b $0A
#_07DD4B: ASL A
#_07DD4C: ASL A
#_07DD4D: ASL A
#_07DD4E: ASL A
#_07DD4F: TSB.w $0341

#_07DD52: RTS

;===================================================================================================

TileBehavior_Chest:
#_07DD53: JSR TileBehavior_FlagManipulable

#_07DD56: LDA.b $06
#_07DD58: STA.b $76

#_07DD5A: SEC
#_07DD5B: SBC.w #$0058
#_07DD5E: ASL A
#_07DD5F: TAX

#_07DD60: LDA.w $06E0,X
#_07DD63: CMP.w #$8000
#_07DD66: BCC TileBehavior_FinishChest

; Big chests
#_07DD68: LDA.b $0A
#_07DD6A: TSB.b $0E
#_07DD6C: ASL A
#_07DD6D: ASL A
#_07DD6E: ASL A
#_07DD6F: ASL A
#_07DD70: TSB.w $02E7
#_07DD73: AND.w #$0020
#_07DD76: BEQ .exit

#_07DD78: LDA.b $06
#_07DD7A: STA.w $02EA

.exit
#_07DD7D: RTS

;---------------------------------------------------------------------------------------------------

TileBehavior_FinishChest:
#_07DD7E: LDA.b $0A
#_07DD80: TSB.w $02E5
#_07DD83: TSB.b $0E

#_07DD85: RTS

;===================================================================================================

TileBehavior_SouthSingleLayerStairs:
#_07DD86: LDA.b $06
#_07DD88: BRA TileBehavior_SouthAutoStairs

;===================================================================================================

TileBehavior_SouthSwapLayerStairs:
#_07DD8A: LDA.b $06

;---------------------------------------------------------------------------------------------------

TileBehavior_SouthAutoStairs:
#_07DD8C: STA.b $76

#_07DD8E: LDA.b $0A
#_07DD90: TSB.b $58

#_07DD92: ASL A
#_07DD93: ASL A
#_07DD94: ASL A
#_07DD95: ASL A
#_07DD96: TSB.w $02C0

#_07DD99: RTS

;===================================================================================================

TileBehavior_Spike:
; !BUG technically, this makes spike damage impossible with boulders on death mountain
#_07DD9A: LDA.w $0FFC
#_07DD9D: BNE .no_damage

#_07DD9F: LDA.w $0403
#_07DDA2: AND.w #$0080
#_07DDA5: BEQ .damage

.no_damage
#_07DDA7: LDA.b $0A
#_07DDA9: TSB.b $0E

#_07DDAB: RTS

;---------------------------------------------------------------------------------------------------

.damage
#_07DDAC: LDA.b $0A
#_07DDAE: XBA
#_07DDAF: TSB.w $02E7

#_07DDB2: RTS

;===================================================================================================

TileBehavior_SpikeFloor:
#_07DDB3: LDA.w $0FFC
#_07DDB6: BNE .no_damage

#_07DDB8: LDA.w $0403
#_07DDBB: AND.w #$0080
#_07DDBE: BNE .no_damage

#_07DDC0: LDA.b $0A
#_07DDC2: ASL A
#_07DDC3: ASL A
#_07DDC4: ASL A
#_07DDC5: ASL A
#_07DDC6: TSB.w $02EE

.no_damage
#_07DDC9: RTS

;===================================================================================================

TileBehavior_Hookshottables:
#_07DDCA: LDA.b $0A
#_07DDCC: TSB.b $0E

;===================================================================================================

TileBehavior_FlagManipulable:
#_07DDCE: LDA.b $0A
#_07DDD0: TSB.w $02F6

#_07DDD3: RTS

;===================================================================================================

TileBehavior_FlaggableDoor:
#_07DDD4: LDA.b $0A
#_07DDD6: TSB.b $0E

#_07DDD8: ASL A
#_07DDD9: ASL A
#_07DDDA: ASL A
#_07DDDB: ASL A
#_07DDDC: TSB.w $02F6

#_07DDDF: RTS

;===================================================================================================

TileBehavior_RupeeTile:
#_07DDE0: LDX.b $BD

; makes sure the tile below it is also a rupee tile
#_07DDE2: LDA.l $7F2040,X
#_07DDE6: AND.w #$00FF
#_07DDE9: CMP.w #$0060 ; TILETYPE 60
#_07DDEC: BNE .no_rupees

#_07DDEE: LDA.b $0A
#_07DDF0: XBA
#_07DDF1: TSB.w $02F6

#_07DDF4: RTS

;---------------------------------------------------------------------------------------------------

.no_rupees
#_07DDF5: LDA.b $0A
#_07DDF7: XBA

#_07DDF8: ASL A
#_07DDF9: ASL A
#_07DDFA: ASL A
#_07DDFB: ASL A
#_07DDFC: TSB.w $02F6

#_07DDFF: RTS

;===================================================================================================

TileBehavior_CrystalPeg_Up:
#_07DE00: LDA.b $0A
#_07DE02: TSB.b $0E
#_07DE04: TSB.w $02F6

#_07DE07: LDA.b $0A
#_07DE09: XBA

#_07DE0A: ASL A
#_07DE0B: ASL A
#_07DE0C: ASL A
#_07DE0D: ASL A

#_07DE0E: TSB.w $02E7

#_07DE11: RTS

;===================================================================================================

TileBehavior_Conveyor_Upwards:
#_07DE12: LDA.b $0A

#_07DE14: BRA TileBehavior_Conveyor

;===================================================================================================

TileBehavior_Conveyor_Downwards:
#_07DE16: LDA.b $0A
#_07DE18: ASL A
#_07DE19: ASL A
#_07DE1A: ASL A
#_07DE1B: ASL A

#_07DE1C: BRA TileBehavior_Conveyor

;===================================================================================================

TileBehavior_Conveyor_Leftwards:
#_07DE1E: LDA.b $0A
#_07DE20: XBA

#_07DE21: BRA TileBehavior_Conveyor

;===================================================================================================

TileBehavior_Conveyor_Rightwards:
#_07DE23: LDA.b $0A
#_07DE25: XBA

#_07DE26: ASL A
#_07DE27: ASL A
#_07DE28: ASL A
#_07DE29: ASL A

;===================================================================================================

TileBehavior_Conveyor:
#_07DE2A: TSB.w $03F1

#_07DE2D: RTS

;===================================================================================================

TileBehavior_MinigameChest:
#_07DE2E: JSR TileBehavior_FlagManipulable

#_07DE31: LDA.b $06
#_07DE33: STA.b $76

#_07DE35: BRL TileBehavior_FinishChest

;===================================================================================================

TileBehavior_Entrance:
#_07DE38: JSR TileBehavior_Door

#_07DE3B: LDA.b $0A
#_07DE3D: XBA
#_07DE3E: TSB.w $02EE

#_07DE41: STZ.b $62

#_07DE43: RTS

;===================================================================================================

TileBehavior_NothingOW:
#_07DE44: LDA.b $0A
#_07DE46: TSB.w $0343

#_07DE49: RTS

;===================================================================================================

TileBehavior_ThickGrass:
#_07DE4A: LDA.b $0A
#_07DE4C: TSB.w $0357

#_07DE4F: RTS

;===================================================================================================

TileBehavior_DiggableGround:
#_07DE50: LDA.b $0A
#_07DE52: TSB.w $035B
#_07DE55: TSB.w $0343

#_07DE58: RTS

;===================================================================================================
; TODO
;===================================================================================================
pool TileBehavior_Liftable

.id_matcher
#_07DE59: dw $0054 ; Hint tile/Sign
#_07DE5B: dw $0052 ; Gray rock
#_07DE5D: dw $0050 ; Green bush
#_07DE5F: dw $0051 ; Dark bush
#_07DE61: dw $0053 ; Black rock
#_07DE63: dw $0055 ; Big gray rock
#_07DE65: dw $0056 ; Big black rock

pool off

;---------------------------------------------------------------------------------------------------

TileBehavior_Liftable:
#_07DE67: LDX.w #$000C

.check_next
#_07DE6A: LDA.b $06
#_07DE6C: CMP.w .id_matcher,X
#_07DE6F: BNE .not_match

#_07DE71: CMP.w #$0050
#_07DE74: BEQ .is_bush

#_07DE76: CMP.w #$0051
#_07DE79: BNE .is_not_bush

.is_bush
#_07DE7B: LDA.b $0A
#_07DE7D: XBA

#_07DE7E: ASL A
#_07DE7F: ASL A
#_07DE80: ASL A
#_07DE81: ASL A
#_07DE82: TSB.w $02EE

.is_not_bush
#_07DE85: LDA.b $0A
#_07DE87: TSB.w $0366

#_07DE8A: STX.w $036A

#_07DE8D: JSR TileBehavior_Hookshottables

#_07DE90: RTS

.not_match
#_07DE91: DEX
#_07DE92: DEX
#_07DE93: BPL .check_next

#_07DE95: RTS

;===================================================================================================

TileBehavior_Ledge_South:
#_07DE96: LDA.b $06
#_07DE98: STA.b $76

#_07DE9A: LDA.b $0A
#_07DE9C: ASL A
#_07DE9D: ASL A
#_07DE9E: ASL A
#_07DE9F: ASL A
#_07DEA0: TSB.w $036D

#_07DEA3: RTS

;===================================================================================================

TileBehavior_Ledge_North:
#_07DEA4: LDA.b $06
#_07DEA6: STA.b $76

#_07DEA8: LDA.b $0A
#_07DEAA: TSB.w $036D

#_07DEAD: RTS

;===================================================================================================

TileBehavior_Ledge_EastWest:
#_07DEAE: LDA.b $06
#_07DEB0: STA.b $76

#_07DEB2: LDA.b $0A
#_07DEB4: TSB.w $036E

#_07DEB7: RTS

;===================================================================================================

TileBehavior_Ledge_NorthDiagonal:
#_07DEB8: LDA.b $06
#_07DEBA: STA.b $76

#_07DEBC: LDA.b $0A
#_07DEBE: ASL A
#_07DEBF: ASL A
#_07DEC0: ASL A
#_07DEC1: ASL A
#_07DEC2: TSB.w $036E

#_07DEC5: RTS

;===================================================================================================

TileBehavior_Ledge_SouthDiagonal:
#_07DEC6: LDA.b $06
#_07DEC8: STA.b $76

#_07DECA: LDA.b $0A
#_07DECC: TSB.w $036F

#_07DECF: RTS

;===================================================================================================

TileBehavior_UnusedCornerType:
#_07DED0: LDA.b $06
#_07DED2: STA.b $76

#_07DED4: LDA.b $0A
#_07DED6: TSB.w $0370

#_07DED9: RTS

;===================================================================================================

TileBehavior_EasternRuinsCorner:
#_07DEDA: LDA.b $06
#_07DEDC: STA.b $76

#_07DEDE: LDA.b $0A
#_07DEE0: ASL A
#_07DEE1: ASL A
#_07DEE2: ASL A
#_07DEE3: ASL A
#_07DEE4: TSB.w $0370

#_07DEE7: RTS

;===================================================================================================

TileBehavior_Warp:
#_07DEE8: LDA.b $0A
#_07DEEA: ASL A
#_07DEEB: ASL A
#_07DEEC: ASL A
#_07DEED: ASL A
#_07DEEE: TSB.w $0357

#_07DEF1: RTS

;===================================================================================================

TileBehavior_GraveStone:
#_07DEF2: LDA.b $0A
#_07DEF4: TSB.w $02E7
#_07DEF7: TSB.b $0E

#_07DEF9: RTS

;===================================================================================================

TileBehavior_HylianPlaque:
#_07DEFA: LDA.b $0A
#_07DEFC: TSB.w $02EE
#_07DEFF: TSB.b $0E

#_07DF01: RTS

;===================================================================================================

TileBehavior_BonkRocks:
#_07DF02: LDA.b $0A
#_07DF04: TSB.b $0E

#_07DF06: XBA
#_07DF07: ASL A
#_07DF08: ASL A
#_07DF09: ASL A
#_07DF0A: ASL A
#_07DF0B: TSB.w $02EE

#_07DF0E: RTS

;===================================================================================================

pool PushBlock_GetGeneralizedTileInteractionOfTarget

.generic_type
#_07DF0F: db $00, $01, $02, $03, $02, $00, $00, $00
#_07DF17: db $00, $01, $00, $01, $00, $00, $00, $00
#_07DF1F: db $01, $01, $01, $01, $01, $01, $01, $01
#_07DF27: db $01, $01, $01, $01, $00, $01, $01, $01
#_07DF2F: db $00, $01, $01, $00, $00, $00, $01, $01
#_07DF37: db $01, $01, $01, $01, $01, $01, $01, $01
#_07DF3F: db $01, $01, $01, $01, $01, $01, $01, $01
#_07DF47: db $01, $01, $00, $00, $01, $01, $01, $01
#_07DF4F: db $00, $01, $01, $01, $01, $01, $01, $01
#_07DF57: db $00, $01, $00, $01, $01, $01, $01, $01
#_07DF5F: db $01, $01, $01, $01, $01, $01, $01, $01
#_07DF67: db $01, $01, $01, $01, $01, $01, $01, $01
#_07DF6F: db $00, $00, $00, $01, $00, $01, $01, $01
#_07DF77: db $01, $01, $01, $01, $01, $01, $01, $01
#_07DF7F: db $01, $01, $01, $01, $01, $01, $01, $01
#_07DF87: db $01, $01, $01, $01, $01, $01, $01, $01
#_07DF8F: db $01, $01, $01, $01, $01, $01, $01, $01
#_07DF97: db $01, $01, $01, $01, $01, $01, $01, $01
#_07DF9F: db $01, $01, $01, $01, $01, $01, $01, $01
#_07DFA7: db $01, $01, $01, $01, $01, $01, $01, $01
#_07DFAF: db $01, $01, $01, $01, $01, $01, $01, $01
#_07DFB7: db $01, $01, $01, $01, $01, $01, $01, $01
#_07DFBF: db $01, $01, $01, $01, $01, $01, $01, $01
#_07DFC7: db $01, $01, $01, $01, $01, $01, $01, $01
#_07DFCF: db $01, $01, $01, $01, $01, $01, $01, $01
#_07DFD7: db $01, $01, $01, $01, $01, $01, $01, $01
#_07DFDF: db $01, $01, $01, $01, $01, $01, $01, $01
#_07DFE7: db $01, $01, $01, $01, $01, $01, $01, $01
#_07DFEF: db $01, $01, $01, $01, $01, $01, $01, $01
#_07DFF7: db $01, $01, $01, $01, $01, $01, $01, $01
#_07DFFF: db $01, $01, $01, $01, $01, $01, $01, $01
#_07E007: db $01, $01, $01, $01, $01, $01, $01, $01

pool off

;---------------------------------------------------------------------------------------------------

PushBlock_GetGeneralizedTileInteractionOfTarget:
#_07E00F: LDA.b $00
#_07E011: AND.w #$FFF8

#_07E014: ASL A
#_07E015: ASL A
#_07E016: ASL A

#_07E017: STA.b $06

#_07E019: LDA.b $02
#_07E01B: AND.w #$003F
#_07E01E: CLC
#_07E01F: ADC.b $06

#_07E021: LDX.b $EE
#_07E023: BEQ .upper_layer

#_07E025: CLC
#_07E026: ADC.w #$1000

;---------------------------------------------------------------------------------------------------

.upper_layer
#_07E029: REP #$10

#_07E02B: TAX

#_07E02C: LDA.l $7F2000,X
#_07E030: AND.w #$00FF
#_07E033: TAX

#_07E034: LDA.w .generic_type,X
#_07E037: AND.w #$00FF

#_07E03A: RTS

;===================================================================================================
; TODO analyze
DifferenceFor6BLowNibble:
#_07E03B: db $00, $01, $02, $03, $04, $05, $06, $07 ; ◥
#_07E043: db $07, $06, $05, $04, $03, $02, $01, $00 ; ◤
#_07E04B: db $07, $06, $05, $04, $03, $02, $01, $00 ; ◢
#_07E053: db $00, $01, $02, $03, $04, $05, $06, $07 ; ◣

FlagFor6BLowNibble:
#_07E05B: db $08 ; ◥
#_07E05C: db $04 ; ◤
#_07E05D: db $02 ; ◢
#_07E05E: db $01 ; ◣

;===================================================================================================

FlagMovingIntoSlopes_Vertical:
#_07E05F: LDA.b $51
#_07E061: AND.b #$07
#_07E063: STA.b $00

#_07E065: LDY.b $22

#_07E067: LDA.b $0C
#_07E069: AND.b #$04
#_07E06B: BEQ .no_detection_on_north_east

#_07E06D: DEY

.no_detection_on_north_east
#_07E06E: LDA.b $6E
#_07E070: ASL A
#_07E071: ASL A
#_07E072: STA.b $01

#_07E074: TYA
#_07E075: AND.b #$07
#_07E077: CLC
#_07E078: ADC.b $01
#_07E07A: TAX

#_07E07B: LDA.b $38
#_07E07D: AND.b #$05
#_07E07F: BEQ .no_detection_on_east

#_07E081: LDA.b $51
#_07E083: AND.b #$07
#_07E085: STA.b $02

#_07E087: LDA.b $6E
#_07E089: AND.b #$02
#_07E08B: BNE .detection_on_south_west

#_07E08D: LDA.b #$08
#_07E08F: SEC
#_07E090: SBC.b $02

#_07E092: BRA .continue

.detection_on_south_west
#_07E094: LDA.b $02
#_07E096: CLC
#_07E097: ADC.b #$08

.continue
#_07E099: STA.b $02

#_07E09B: LDA.w DifferenceFor6BLowNibble,X
#_07E09E: SEC
#_07E09F: SBC.b $02

#_07E0A1: LDY.b $30
#_07E0A3: BEQ .exit
#_07E0A5: BPL .positive_y_velocity_a

#_07E0A7: EOR.b #$FF
#_07E0A9: INC A

.positive_y_velocity_a
#_07E0AA: STA.b $00

#_07E0AC: BRA .continue_from_negative_a

;---------------------------------------------------------------------------------------------------

.no_detection_on_east
#_07E0AE: LDA.w DifferenceFor6BLowNibble,X
#_07E0B1: SEC
#_07E0B2: SBC.b $00
#_07E0B4: STA.b $00

.continue_from_negative_a
#_07E0B6: LDA.b $30
#_07E0B8: BEQ .exit
#_07E0BA: BPL .positive_y_velocity_b

#_07E0BC: LDA.b $00
#_07E0BE: BEQ .exit
#_07E0C0: BMI .exit

#_07E0C2: REP #$20

#_07E0C4: AND.w #$00FF
#_07E0C7: CLC
#_07E0C8: ADC.b $20
#_07E0CA: STA.b $20

#_07E0CC: SEP #$20

#_07E0CE: LDA.b #$08

#_07E0D0: BRA .continue_from_negative_b

;---------------------------------------------------------------------------------------------------

.positive_y_velocity_b
#_07E0D2: LDA.b $00
#_07E0D4: BPL .exit

#_07E0D6: REP #$20

#_07E0D8: AND.w #$00FF
#_07E0DB: ORA.w #$FF00
#_07E0DE: CLC
#_07E0DF: ADC.b $20
#_07E0E1: STA.b $20

#_07E0E3: SEP #$20

#_07E0E5: LDA.b #$04

.continue_from_negative_b
#_07E0E7: STA.b $6B

#_07E0E9: LDY.b #$02

#_07E0EB: LDA.b $0C
#_07E0ED: AND.b #$04
#_07E0EF: BNE .detection_on_north_east

#_07E0F1: LDY.b #$03

.detection_on_north_east
#_07E0F3: LDA.w FlagFor6BLowNibble,Y
#_07E0F6: ORA.b #$10
#_07E0F8: TSB.b $6B

.exit
#_07E0FA: RTS

;===================================================================================================

FlagMovingIntoSlopes_Horizontal:
#_07E0FB: LDA.b $22

#_07E0FD: LDY.b $6E
#_07E0FF: CPY.b #$06
#_07E101: BNE .strictly_ne_sw

#_07E103: DEC A

.strictly_ne_sw
#_07E104: AND.b #$07
#_07E106: STA.b $00

#_07E108: LDX.b #$00

#_07E10A: LDA.b $0C
#_07E10C: AND.b #$04
#_07E10E: BEQ .no_detection_on_north_east

#_07E110: LDX.b #$02

.no_detection_on_north_east
#_07E112: LDA.b $6E
#_07E114: ASL A
#_07E115: ASL A
#_07E116: STA.b $01

#_07E118: LDA.b $51,X
#_07E11A: AND.b #$07
#_07E11C: CLC
#_07E11D: ADC.b $01
#_07E11F: TAX

#_07E120: LDA.b $38
#_07E122: AND.b #$05
#_07E124: BEQ .no_detection_on_east

#_07E126: LDA.b $22
#_07E128: AND.b #$07

#_07E12A: LDY.b $6E
#_07E12C: CPY.b #$04
#_07E12E: BEQ .dont_adjust_index

#_07E130: CPY.b #$06
#_07E132: BEQ .dont_adjust_index

#_07E134: XBA
#_07E135: TXA
#_07E136: EOR.b #$07
#_07E138: TAX

#_07E139: XBA
#_07E13A: EOR.b #$FF
#_07E13C: INC A

#_07E13D: BRA .continue

;---------------------------------------------------------------------------------------------------

.dont_adjust_index
#_07E13F: SEC
#_07E140: SBC.b #$08
#_07E142: EOR.b #$FF
#_07E144: INC A
#_07E145: STA.b $02

#_07E147: LDA.w DifferenceFor6BLowNibble,X
#_07E14A: SEC
#_07E14B: SBC.b $02

.continue
#_07E14D: LDY.b $31
#_07E14F: BEQ .exit
#_07E151: BPL .positive_x_velocity_a

#_07E153: EOR.b #$FF
#_07E155: INC A

.positive_x_velocity_a
#_07E156: STA.b $00

#_07E158: BRA .continue_from_negative_a

;---------------------------------------------------------------------------------------------------

.no_detection_on_east
#_07E15A: LDA.w DifferenceFor6BLowNibble,X
#_07E15D: SEC
#_07E15E: SBC.b $00
#_07E160: STA.b $00

.continue_from_negative_a
#_07E162: LDA.b $31
#_07E164: BEQ .exit
#_07E166: BPL .positive_x_velocity_b

#_07E168: LDA.b $00
#_07E16A: BEQ .exit
#_07E16C: BMI .exit

#_07E16E: REP #$20

#_07E170: AND.w #$00FF
#_07E173: CLC
#_07E174: ADC.b $22
#_07E176: STA.b $22

#_07E178: SEP #$20

#_07E17A: LDA.b #$02
#_07E17C: BRA .continue_from_negative_b

;---------------------------------------------------------------------------------------------------

.positive_x_velocity_b
#_07E17E: LDA.b $00
#_07E180: BPL .exit

#_07E182: REP #$20

#_07E184: AND.w #$00FF
#_07E187: ORA.w #$FF00
#_07E18A: CLC
#_07E18B: ADC.b $22
#_07E18D: STA.b $22

#_07E18F: SEP #$20

#_07E191: LDA.b #$01

.continue_from_negative_b
#_07E193: STA.b $6B

#_07E195: LDY.b #$00

#_07E197: LDA.b $6E
#_07E199: AND.b #$02
#_07E19B: BNE .detection_on_north_east

#_07E19D: LDY.b #$01

.detection_on_north_east
#_07E19F: LDA.w FlagFor6BLowNibble,Y
#_07E1A2: ORA.b #$20
#_07E1A4: TSB.b $6B

.exit
#_07E1A6: RTS

;===================================================================================================

HandleLinkRecoiling:
#_07E1A7: STZ.b $67

#_07E1A9: LDY.b #$08

#_07E1AB: LDA.b $27
#_07E1AD: BEQ .no_vertical_recoil
#_07E1AF: BMI .negative_vertical_recoil

#_07E1B1: LDY.b #$04

.negative_vertical_recoil
#_07E1B3: JSR .handle_axis

;---------------------------------------------------------------------------------------------------

.no_vertical_recoil
#_07E1B6: LDY.b #$02

#_07E1B8: LDA.b $28
#_07E1BA: BEQ .no_horizontal_recoil
#_07E1BC: BMI .handle_axis

#_07E1BE: LDY.b #$01

.handle_axis
#_07E1C0: TYA
#_07E1C1: ORA.b $67
#_07E1C3: STA.b $67
#_07E1C5: STA.b $26

;---------------------------------------------------------------------------------------------------

.no_horizontal_recoil
#_07E1C7: LDA.b $6B
#_07E1C9: AND.b #$0C
#_07E1CB: BEQ .dont_invert

#_07E1CD: LDA.b $6B
#_07E1CF: AND.b #$03
#_07E1D1: BEQ .dont_invert

#_07E1D3: LDA.b $5D
#_07E1D5: CMP.b #$02 ; LINKSTATE 02
#_07E1D7: BNE .dont_invert

#_07E1D9: LDA.b $28
#_07E1DB: EOR.b #$FF
#_07E1DD: INC A
#_07E1DE: STA.b $28

#_07E1E0: LDA.b $27
#_07E1E2: EOR.b #$FF
#_07E1E4: INC A
#_07E1E5: STA.b $27

;---------------------------------------------------------------------------------------------------

.dont_invert
#_07E1E7: LDA.b $6C
#_07E1E9: CMP.b #$01
#_07E1EB: BNE .not_in_vertical_door

#_07E1ED: LDA.b $26
#_07E1EF: AND.b #$0C
#_07E1F1: STA.b $26

#_07E1F3: LDA.b $67
#_07E1F5: AND.b #$0C
#_07E1F7: STA.b $67

#_07E1F9: STZ.b $28

;---------------------------------------------------------------------------------------------------

.not_in_vertical_door
#_07E1FB: LDA.b $6C
#_07E1FD: CMP.b #$02
#_07E1FF: BNE .exit

#_07E201: LDA.b $26
#_07E203: AND.b #$03
#_07E205: STA.b $26

#_07E207: LDA.b $67
#_07E209: AND.b #$03
#_07E20B: STA.b $67

#_07E20D: STZ.b $27

.exit
#_07E20F: RTS

;===================================================================================================

SubVelocityValues:
#_07E210: db $18 ; 0x00 - walking on ground
#_07E211: db $10 ; 0x01 - walking diagonally
#_07E212: db $0A ; 0x02 - walking on stairs
#_07E213: db $18 ; 0x03 - walking on stairs diagonally, but it's impossible to reach
#_07E214: db $10 ; 0x04 - soft slipping
#_07E215: db $08 ; 0x05 - soft slipping diagonally
#_07E216: db $08 ; 0x06 - entering underworld/hard slipping
#_07E217: db $04 ; 0x07 - hard slipping diagonally
#_07E218: db $0C ; 0x08 - pushing statue
#_07E219: db $10 ; 0x09 - pushing statue diagonally
#_07E21A: db $09 ; 0x0A - intraroom stairs
#_07E21B: db $19 ; 0x0B - 
#_07E21C: db $14 ; 0x0C - walking with sword out/carrying/sloshing
#_07E21D: db $0D ; 0x0D - walking with sword out/carrying/sloshing diagonally
#_07E21E: db $10 ; 0x0E - sword out/carry sloshing
#_07E21F: db $08 ; 0x0F - sword out/carry sloshing diagonally
#_07E220: db $40 ; 0x10 - dashing
#_07E221: db $2A ; 0x11 - dashing diagonally
#_07E222: db $10 ; 0x12 - pushing block
#_07E223: db $08 ; 0x13 - pushing block diagonally
#_07E224: db $04 ; 0x14 - pulling statue/walking to triforce
#_07E225: db $02 ; 0x15 - pulling statue diagonally
#_07E226: db $30 ; 0x16 - slosh dashing
#_07E227: db $18 ; 0x17 - slosh dashing diagonally
#_07E228: db $20 ; 0x18 - dashing on ice
#_07E229: db $15 ; 0x19 - dashing on ice diagonally
#_07E22A: db $F0 ; 0x1A - 
#_07E22B: db $00 ; 0x1B - 
#_07E22C: db $F0 ; 0x1C - 
#_07E22D: db $01 ; 0x1D - 

;===================================================================================================

HandleLinkVelocity:
#_07E22E: PHB
#_07E22F: PHK
#_07E230: PLB

; Seems to be checks only involved with the triforce room
#_07E231: LDA.b $11
#_07E233: CMP.b #$02
#_07E235: BNE .no_textbox

#_07E237: LDA.b $10
#_07E239: CMP.b #$0E
#_07E23B: BEQ .yes_textbox

.no_textbox
; Is Link immobilized by a debirando pit?
#_07E23D: LDA.w $0B7B
#_07E240: BEQ .can_move

.yes_textbox
; this all appears to prevent Link from moving
; by setting everything to his coordinates
#_07E242: LDA.b $20
#_07E244: STA.b $00
#_07E246: STA.b $3E

#_07E248: LDA.b $22
#_07E24A: STA.b $01
#_07E24C: STA.b $3F

#_07E24E: LDA.b $21
#_07E250: STA.b $02
#_07E252: STA.b $40

#_07E254: LDA.b $23
#_07E256: STA.b $03
#_07E258: STA.b $41

#_07E25A: BRL HandleLinkVelocityAndSandDrag

;---------------------------------------------------------------------------------------------------

.can_move
#_07E25D: LDA.b $5D
#_07E25F: CMP.b #$04 ; LINKSTATE 04
#_07E261: BEQ .swimming_or_not_dashing

#_07E263: LDA.w $034A
#_07E266: BEQ .not_ice

#_07E268: LDA.w $0372
#_07E26B: BEQ .swimming_or_not_dashing

; dashing on ice
#_07E26D: LDA.b #$18
#_07E26F: STA.b $00

#_07E271: BRA .reset_recoils

;---------------------------------------------------------------------------------------------------

.swimming_or_not_dashing
#_07E273: BRL HandleSwimStrokeAndSubpixels

.not_ice
#_07E276: LDA.w $0372
#_07E279: BEQ .no_dash_stuff

#_07E27B: STZ.b $57

; !WEIRD it can never reach below $20, much less $10
#_07E27D: LDA.w $02F1
#_07E280: CMP.b #$10
#_07E282: BCS .no_dash_stuff

#_07E284: BRL DashInPlace

;---------------------------------------------------------------------------------------------------

.no_dash_stuff
#_07E287: LDA.w $0316
#_07E28A: ORA.w $0317
#_07E28D: CMP.b #$0F
#_07E28F: BNE .continue_check_speed

#_07E291: BRL EXIT_07E3EB

.continue_check_speed
#_07E294: LDA.b $5E
#_07E296: STA.b $00

#_07E298: LDA.w $0351
#_07E29B: BEQ .reset_recoils

#_07E29D: LDA.b $5E
#_07E29F: CMP.b #$10
#_07E2A1: BNE .not_dash_speed

#_07E2A3: LDX.b #$16
#_07E2A5: BRA .save_final_speed

.not_dash_speed
#_07E2A7: LDX.b #$0C

; Slosh speed?
#_07E2A9: LDA.b $5E
#_07E2AB: CMP.b #$0C
#_07E2AD: BNE .save_final_speed

#_07E2AF: LDX.b #$0E

.save_final_speed
#_07E2B1: STX.b $00

;---------------------------------------------------------------------------------------------------

.reset_recoils
#_07E2B3: STZ.b $27
#_07E2B5: STZ.b $28
#_07E2B7: STZ.b $68
#_07E2B9: STZ.b $69

#_07E2BB: LDX.b #$00

; +1 if moving diagonally
#_07E2BD: LDA.b $67
#_07E2BF: TAY

#_07E2C0: AND.b #$0C
#_07E2C2: BEQ .add_nothing

#_07E2C4: TYA
#_07E2C5: AND.b #$03
#_07E2C7: BEQ .add_nothing

#_07E2C9: LDX.b #$01

.add_nothing
#_07E2CB: TXA
#_07E2CC: CLC
#_07E2CD: ADC.b $00
#_07E2CF: TAX

#_07E2D0: LDA.b $5B
#_07E2D2: BEQ .not_slipping

#_07E2D4: CMP.b #$03
#_07E2D6: BNE .load_subvel

#_07E2D8: LDA.b $57
#_07E2DA: CMP.b #$30
#_07E2DC: BCS .stair_drag_too_high

#_07E2DE: ADC.b #$08
#_07E2E0: STA.b $57

#_07E2E2: BRA .load_subvel

;---------------------------------------------------------------------------------------------------

.stair_drag_too_high
#_07E2E4: LDA.b #$20
#_07E2E6: STA.b $57

#_07E2E8: BRA .load_subvel

;---------------------------------------------------------------------------------------------------

.not_slipping
#_07E2EA: LDA.b $57
#_07E2EC: BEQ .load_subvel

#_07E2EE: LDX.b #$0A

#_07E2F0: LDA.b $11
#_07E2F2: CMP.b #$08
#_07E2F4: BEQ .overworld

#_07E2F6: CMP.b #$10
#_07E2F8: BEQ .overworld

#_07E2FA: LDX.b #$02

.overworld
#_07E2FC: LDA.b $67
#_07E2FE: AND.b #$00 ; !USELESS vestigial probably
#_07E300: BEQ .never_fails

#_07E302: INX

.never_fails
#_07E303: LDA.b $57
#_07E305: CMP.b #$01
#_07E307: BEQ .load_subvel

#_07E309: CMP.b #$10
#_07E30B: BCS .reset_speed

#_07E30D: ADC.b #$01
#_07E30F: STA.b $57

#_07E311: LDA.b #$00
#_07E313: BRA .zero_subvelocity

.reset_speed
#_07E315: STZ.b $57
#_07E317: STZ.b $5E

.load_subvel
#_07E319: LDA.w SubVelocityValues,X

.zero_subvelocity
#_07E31C: CLC
#_07E31D: ADC.b $57
#_07E31F: STA.b $0A
#_07E321: STA.b $0B

;---------------------------------------------------------------------------------------------------

#_07E323: LDA.b #$03
#_07E325: STA.b $0C

#_07E327: LDA.b #$02
#_07E329: STA.b $0D

#_07E32B: LDX.b #$01

.do_next_axis
#_07E32D: LDA.b $67
#_07E32F: AND.b $0C
#_07E331: BEQ .skip_because_zero

#_07E333: AND.b $0D
#_07E335: BEQ .dont_invert_it

#_07E337: LDA.b $0A,X
#_07E339: EOR.b #$FF
#_07E33B: INC A
#_07E33C: STA.b $0A,X

.dont_invert_it
#_07E33E: LDA.b $0A,X
#_07E340: STA.b $27,X

.skip_because_zero
#_07E342: ASL.b $0C
#_07E344: ASL.b $0C

#_07E346: ASL.b $0D
#_07E348: ASL.b $0D

#_07E34A: DEX
#_07E34B: BPL .do_next_axis

;---------------------------------------------------------------------------------------------------

#_07E34D: LDA.b #$FF
#_07E34F: STA.b $29
#_07E351: STA.b $24
#_07E353: STA.b $25

#_07E355: STZ.b $2C

#_07E357: BRA .cache_full_coords

;===================================================================================================

#FindArbitraryLandingSpot:
#_07E359: PHB
#_07E35A: PHK
#_07E35B: PLB

;---------------------------------------------------------------------------------------------------

.cache_full_coords
#_07E35C: LDA.b $20
#_07E35E: STA.b $00
#_07E360: STA.b $3E

#_07E362: LDA.b $22
#_07E364: STA.b $01
#_07E366: STA.b $3F

#_07E368: LDA.b $21
#_07E36A: STA.b $02
#_07E36C: STA.b $40

#_07E36E: LDA.b $23
#_07E370: STA.b $03
#_07E372: STA.b $41

#_07E374: LDA.b $5D
#_07E376: CMP.b #$0A ; LINKSTATE 0A
#_07E378: BEQ .quaking

#_07E37A: LDA.w $02F5
#_07E37D: CMP.b #$02
#_07E37F: BEQ HandleLinkVelocityAndSandDrag

.quaking
#_07E381: LDY.b #$02
#_07E383: LDX.b #$04

#_07E385: LDA.b $4D
#_07E387: BNE .next_direction

#_07E389: LDY.b #$01
#_07E38B: LDX.b #$02

;---------------------------------------------------------------------------------------------------

.next_direction
#_07E38D: LDA.w $0027,Y
#_07E390: ASL A
#_07E391: ASL A
#_07E392: ASL A
#_07E393: ASL A
#_07E394: CLC
#_07E395: ADC.w $002A,Y
#_07E398: STA.w $002A,Y

#_07E39B: PHY
#_07E39C: PHP

#_07E39D: LDA.w $0027,Y
#_07E3A0: LSR A
#_07E3A1: LSR A
#_07E3A2: LSR A
#_07E3A3: LSR A
#_07E3A4: CMP.b #$08

#_07E3A6: LDY.b #$00
#_07E3A8: BCC .positive_velocity

#_07E3AA: ORA.b #$F0
#_07E3AC: LDY.b #$FF

.positive_velocity
#_07E3AE: PLP
#_07E3AF: ADC.b $20,X
#_07E3B1: STA.b $20,X

#_07E3B3: TYA
#_07E3B4: ADC.b $21,X
#_07E3B6: STA.b $21,X

#_07E3B8: PLY
#_07E3B9: DEY

#_07E3BA: DEX
#_07E3BB: DEX
#_07E3BC: BPL .next_direction

;---------------------------------------------------------------------------------------------------

#_07E3BE: JSR HandleLinkMovingFloor
#_07E3C1: JSR ApplyConveyorToLink

#_07E3C4: BRA HandleLinkVelocityAndSandDrag

;===================================================================================================

HandleLinkVelocityAndSandDrag_long:
#_07E3C6: PHB
#_07E3C7: PHK
#_07E3C8: PLB

;===================================================================================================

HandleLinkVelocityAndSandDrag:
#_07E3C9: REP #$20

#_07E3CB: LDA.b $20
#_07E3CD: CLC
#_07E3CE: ADC.w $0B7E
#_07E3D1: STA.b $20

#_07E3D3: LDA.b $22
#_07E3D5: CLC
#_07E3D6: ADC.w $0B7C
#_07E3D9: STA.b $22

#_07E3DB: SEP #$20

#_07E3DD: LDA.b $20
#_07E3DF: SEC
#_07E3E0: SBC.b $00
#_07E3E2: STA.b $30

#_07E3E4: LDA.b $22
#_07E3E6: SEC
#_07E3E7: SBC.b $01
#_07E3E9: STA.b $31

;---------------------------------------------------------------------------------------------------

#EXIT_07E3EB:
#_07E3EB: SEP #$20

#_07E3ED: PLB

#_07E3EE: RTL

;===================================================================================================

SwimmingAccelAndThrustChange:
#_07E3EF: dw   8, -12,  -8, -16
#_07E3F7: dw   4,  -6, -12,  -6
#_07E3FF: dw  10, -16, -12,  -6

SwimmingThrustDirectionMask:
#_07E407: db $F3
#_07E408: db $FF
#_07E409: db $FC
#_07E40A: db $FF

SwimmingThrustDirectionBit:
#_07E40B: dw $0008
#_07E40D: dw $0004
#_07E40F: dw $0002
#_07E411: dw $0001

;---------------------------------------------------------------------------------------------------

HandleSwimStrokeAndSubpixels:
#_07E413: STZ.b $27
#_07E415: STZ.b $28

#_07E417: REP #$20

#_07E419: LDX.b #$02

.next_direction
#_07E41B: STZ.b $08,X

#_07E41D: DEC.w $0326,X
#_07E420: BPL .positive_momentum

#_07E422: LDA.w #$0001
#_07E425: STA.w $032B,X

#_07E428: STZ.w $0326,X

.positive_momentum
#_07E42B: LDA.w $032B,X
#_07E42E: ASL A
#_07E42F: TAY

#_07E430: LDA.w $034A
#_07E433: AND.w #$00FF
#_07E436: BEQ .not_on_ice

#_07E438: ASL A
#_07E439: ASL A
#_07E43A: ASL A
#_07E43B: STA.b $00

#_07E43D: TYA
#_07E43E: CLC
#_07E43F: ADC.b $00
#_07E441: TAY

.not_on_ice
#_07E442: LDA.w SwimmingAccelAndThrustChange,Y
#_07E445: CLC
#_07E446: ADC.w $033C,X
#_07E449: BEQ .zero_thrust
#_07E44B: BPL .positive_thrust

.zero_thrust
#_07E44D: LDA.w SwimmingThrustDirectionMask,X
#_07E450: AND.b $67
#_07E452: STA.b $67
#_07E454: STA.b $26

#_07E456: LDA.w $032B,X
#_07E459: CMP.w #$0002
#_07E45C: BNE .not_maxed

#_07E45E: STZ.w $032B,X

#_07E461: LDA.w MaxSwimAcceleration
#_07E464: STA.w $0334,X

#_07E467: LDA.w #$0002

#_07E46A: BRA .set_accel_and_thrust

;---------------------------------------------------------------------------------------------------

.not_maxed
#_07E46C: LDA.w #$0000
#_07E46F: STA.w $0334,X
#_07E472: STA.w $032B,X

#_07E475: BRA .set_accel_and_thrust

;---------------------------------------------------------------------------------------------------

.positive_thrust
#_07E477: PHA

#_07E478: TXA
#_07E479: CLC
#_07E47A: ADC.w $0338,X
#_07E47D: ASL A
#_07E47E: TAY

#_07E47F: LDA.w SwimmingThrustDirectionBit,Y
#_07E482: ORA.b $67
#_07E484: STA.b $67

#_07E486: PLA
#_07E487: CMP.w $0334,X
#_07E48A: BCC .set_accel_and_thrust

#_07E48C: LDA.w $0334,X

.set_accel_and_thrust
#_07E48F: STA.w $033C,X
#_07E492: STA.b $08,X

#_07E494: LDA.b $6A
#_07E496: BEQ .not_pressing_diagonally

#_07E498: LDA.b $08,X
#_07E49A: LSR A
#_07E49B: LSR A
#_07E49C: STA.b $00

#_07E49E: LDA.b $08,X
#_07E4A0: SEC
#_07E4A1: SBC.b $00
#_07E4A3: STA.b $08,X

.not_pressing_diagonally
#_07E4A5: LDA.w $0338,X
#_07E4A8: AND.w #$00FF
#_07E4AB: BNE .positive_subpixel_adjuster

#_07E4AD: LDA.b $08,X
#_07E4AF: EOR.w #$FFFF
#_07E4B2: INC A
#_07E4B3: STA.b $08,X

.positive_subpixel_adjuster
#_07E4B5: DEX
#_07E4B6: DEX
#_07E4B7: BMI .continue

#_07E4B9: BRL .next_direction

;---------------------------------------------------------------------------------------------------

.continue
#_07E4BC: SEP #$20

#_07E4BE: LDA.b $20
#_07E4C0: STA.b $00
#_07E4C2: STA.b $3E

#_07E4C4: LDA.b $22
#_07E4C6: STA.b $01
#_07E4C8: STA.b $3F

#_07E4CA: LDA.b $21
#_07E4CC: STA.b $02
#_07E4CE: STA.b $40

#_07E4D0: LDA.b $23
#_07E4D2: STA.b $03
#_07E4D4: STA.b $41

;---------------------------------------------------------------------------------------------------

#_07E4D6: LDY.b #$01
#_07E4D8: LDX.b #$02

.next_subpixel
#_07E4DA: LDA.b $08,X
#_07E4DC: CLC
#_07E4DD: ADC.w $002A,Y
#_07E4E0: STA.w $002A,Y

#_07E4E3: PHY
#_07E4E4: PHP

#_07E4E5: LDA.b $09,X
#_07E4E7: CMP.b #$08

#_07E4E9: LDY.b #$00
#_07E4EB: BCC .positive_y_subpixeling

#_07E4ED: ORA.b #$F0
#_07E4EF: LDY.b #$FF

.positive_y_subpixeling
#_07E4F1: PLP
#_07E4F2: ADC.b $20,X
#_07E4F4: STA.b $20,X

#_07E4F6: TYA
#_07E4F7: ADC.b $21,X
#_07E4F9: STA.b $21,X

#_07E4FB: PLY

#_07E4FC: LDA.b $08,X
#_07E4FE: LSR A ; /16
#_07E4FF: LSR A
#_07E500: LSR A
#_07E501: LSR A
#_07E502: STA.b $08,X

#_07E504: LDA.b $09,X
#_07E506: BPL .positive_x_subpixeling

#_07E508: EOR.b #$FF
#_07E50A: INC A

.positive_x_subpixeling
#_07E50B: ASL A ; x16
#_07E50C: ASL A
#_07E50D: ASL A
#_07E50E: ASL A
#_07E50F: ORA.b $08,X
#_07E511: STA.w $0027,Y

#_07E514: DEY

#_07E515: DEX
#_07E516: DEX
#_07E517: BPL .next_subpixel

;---------------------------------------------------------------------------------------------------

#_07E519: LDA.w $046C
#_07E51C: CMP.b #$04
#_07E51E: BNE .no_moving_floor

#_07E520: JSR ApplyMovingFloorToLink

.no_moving_floor
#_07E523: STZ.b $68
#_07E525: STZ.b $69

#_07E527: BRL HandleLinkVelocityAndSandDrag

;===================================================================================================

UNREACHABLE_07E52A:
#_07E52A: dw $0040, $0010

;===================================================================================================
; Unreachable through normal gameplay.
; But interesting...
;===================================================================================================
DashInPlace:
#_07E52E: STZ.b $00
#_07E530: STZ.b $01

#_07E532: LDA.b $F0
#_07E534: AND.b #$0F
#_07E536: BEQ .not_pressing_dpad

#_07E538: LDX.b #$80

#_07E53A: LDA.w $0351
#_07E53D: BEQ .not_sloshing

#_07E53F: LDX.b #$50

.not_sloshing
#_07E541: STX.b $00

#_07E543: LDA.b #$01
#_07E545: STA.b $01

.not_pressing_dpad
#_07E547: STZ.b $27
#_07E549: STZ.b $28

#_07E54B: STZ.b $08
#_07E54D: STZ.b $09

#_07E54F: STZ.b $0A
#_07E551: STZ.b $0B

#_07E553: LDX.b #$03

#_07E555: LDA.b $67

.shift_more
#_07E557: LSR A
#_07E558: BCS .bit_found

#_07E55A: DEX
#_07E55B: BPL .shift_more

#_07E55D: PLB

#_07E55E: RTL

;---------------------------------------------------------------------------------------------------

.bit_found
#_07E55F: TXY

#_07E560: REP #$20

#_07E562: LDA.b $00
#_07E564: CPY.b #$00
#_07E566: BEQ .pressing_up

#_07E568: CPY.b #$02
#_07E56A: BNE .not_pressing_left

.pressing_up
#_07E56C: EOR.w #$FFFF
#_07E56F: INC A

.not_pressing_left
#_07E570: PHA

#_07E571: TYA
#_07E572: AND.w #$0002
#_07E575: TAX

#_07E576: PLA
#_07E577: STA.b $08,X

#_07E579: SEP #$20

#_07E57B: BRL HandleSwimStrokeAndSubpixels_continue

;===================================================================================================

HandleLinkMovingFloor:
#_07E57E: LDA.w $046C
#_07E581: BEQ EXIT_07E5CC

#_07E583: LDA.b $24
#_07E585: BEQ .grounded

#_07E587: CMP.b #$FF
#_07E589: BNE EXIT_07E5CC

.grounded
#_07E58B: LDA.w $0322
#_07E58E: AND.b #$03
#_07E590: CMP.b #$03
#_07E592: BNE EXIT_07E5CC

#_07E594: LDA.b $5D
#_07E596: CMP.b #$13 ; LINKSTATE 13
#_07E598: BEQ EXIT_07E5CC

#_07E59A: LDY.b #$08

#_07E59C: LDA.w $0310
#_07E59F: BEQ .no_floor_y_velocity
#_07E5A1: BMI .negative_floor_y_velocity

#_07E5A3: LDY.b #$04

.negative_floor_y_velocity
#_07E5A5: TYA
#_07E5A6: TSB.b $67

.no_floor_y_velocity
#_07E5A8: LDY.b #$02

#_07E5AA: LDA.w $0312
#_07E5AD: BEQ ApplyMovingFloorToLink
#_07E5AF: BMI .negative_floor_x_velocity

#_07E5B1: LDY.b #$01

.negative_floor_x_velocity
#_07E5B3: TYA
#_07E5B4: TSB.b $67

;===================================================================================================

ApplyMovingFloorToLink:
#_07E5B6: STZ.b $6A

#_07E5B8: REP #$20

#_07E5BA: LDA.b $20
#_07E5BC: CLC
#_07E5BD: ADC.w $0310
#_07E5C0: STA.b $20

#_07E5C2: LDA.b $22
#_07E5C4: CLC
#_07E5C5: ADC.w $0312
#_07E5C8: STA.b $22

#_07E5CA: SEP #$20

;---------------------------------------------------------------------------------------------------

#EXIT_07E5CC:
#_07E5CC: RTS

;===================================================================================================
; Conveyor code
;===================================================================================================
pool ApplyConveyorToLink

.direction
#_07E5CD: db $08 ; up
#_07E5CE: db $04 ; down
#_07E5CF: db $02 ; left
#_07E5D0: db $01 ; right

.speed_y
#_07E5D1: db  -8 ; up
#_07E5D2: db   8 ; down
#_07E5D3: db   0 ; left
#_07E5D4: db   0 ; right

.speed_x
#_07E5D5: db   0 ; up
#_07E5D6: db   0 ; down
#_07E5D7: db  -8 ; left
#_07E5D8: db   8 ; right

pool off

;---------------------------------------------------------------------------------------------------

ApplyConveyorToLink:
#_07E5D9: LDA.w $03F3
#_07E5DC: BEQ EXIT_07E5CC

#_07E5DE: LDA.b $24 ; Link's height; only values of 0 and -1 work
#_07E5E0: BEQ .grounded

#_07E5E2: CMP.b #$FF
#_07E5E4: BNE EXIT_07E5CC

;---------------------------------------------------------------------------------------------------

.grounded
#_07E5E6: LDA.w $0376
#_07E5E9: AND.b #$01
#_07E5EB: BNE EXIT_07E5CC

#_07E5ED: LDA.b $5D
#_07E5EF: CMP.b #$13 ; LINKSTATE 13
#_07E5F1: BEQ EXIT_07E5CC

#_07E5F3: LDA.b $4D
#_07E5F5: BNE EXIT_07E5CC

#_07E5F7: LDA.w $0372
#_07E5FA: BEQ .run_conveyor

; TODO what doess this do???
#_07E5FC: LDA.w $02F1
#_07E5FF: CMP.b #$20
#_07E601: BNE .run_conveyor

#_07E603: LDY.w $03F3
#_07E606: DEY
#_07E607: LDA.w .direction,Y

#_07E60A: AND.b $67
#_07E60C: BNE EXIT_07E5CC

;---------------------------------------------------------------------------------------------------

.run_conveyor
#_07E60E: STZ.b $6A

#_07E610: LDY.w $03F3
#_07E613: DEY

#_07E614: LDA.w .direction,Y
#_07E617: TSB.b $67

#_07E619: LDA.w .speed_y,Y
#_07E61C: STA.b $72

#_07E61E: LDA.w .speed_x,Y
#_07E621: STA.b $73

;---------------------------------------------------------------------------------------------------

#_07E623: LDX.b #$01
#_07E625: LDY.b #$02

.next_direction
#_07E627: PHX

#_07E628: LDA.b $72,X
#_07E62A: ASL A
#_07E62B: ASL A
#_07E62C: ASL A
#_07E62D: ASL A
#_07E62E: CLC
#_07E62F: ADC.w $041C,X
#_07E632: STA.w $041C,X

#_07E635: LDA.b $72,X
#_07E637: PHP

#_07E638: LDX.b #$00

#_07E63A: LSR A
#_07E63B: LSR A
#_07E63C: LSR A
#_07E63D: LSR A

#_07E63E: PLP
#_07E63F: BPL .positive_speed

#_07E641: ORA.b #$F0
#_07E643: DEX

.positive_speed
#_07E644: ADC.w $0020,Y
#_07E647: STA.w $0020,Y

#_07E64A: TXA
#_07E64B: ADC.w $0021,Y
#_07E64E: STA.w $0021,Y

#_07E651: PLX

#_07E652: DEY
#_07E653: DEY

#_07E654: DEX
#_07E655: BPL .next_direction

#_07E657: SEP #$20

#_07E659: RTS

;===================================================================================================

DominantDiagonalDirection:
#_07E65A: db $08, $04, $02, $01

;===================================================================================================
; TODO are others reachable?
WalkAnimationTimer_other:
#_07E65E: db $04 ; bunny/carry walk up
#_07E65F: db $04 ; bunny/carry walk down
#_07E660: db $04 ; bunny/carry walk left
#_07E661: db $04 ; bunny/carry walk right
#_07E662: db $01 ; slipping with sword/carry up
#_07E663: db $01 ; slipping with sword/carry down
#_07E664: db $01 ; slipping with sword/carry left
#_07E665: db $01 ; slipping with sword/carry right
#_07E666: db $02
#_07E667: db $02
#_07E668: db $02
#_07E669: db $02
#_07E66A: db $08 ; straight stair doors/pushing
#_07E66B: db $08
#_07E66C: db $08
#_07E66D: db $08

;===================================================================================================

WalkAnimationTimer:
#_07E66E: db $01, $02, $03, $02, $02, $02, $03, $02 ; walk
#_07E676: db $01 ; used both by walk and on ice, but not for entering underworld
#_07E677: db $01, $02, $01, $01, $01, $02, $01, $02 ; entering underworld/ice
#_07E67F: db $02, $03, $02, $02, $02, $03, $02      ; ice+underworld entrance - impossible?

;===================================================================================================

HandleLinkAnimation_SetFacingDown:
#_07E686: PHB
#_07E687: PHK
#_07E688: PLB

#_07E689: LDA.b #$04
#_07E68B: STA.b $26

#_07E68D: BRA HandleLinkAnimation_MainEntry

;===================================================================================================

HandleLinkAnimation_FullLongEntry:
#_07E68F: PHB
#_07E690: PHK
#_07E691: PLB

;===================================================================================================

HandleLinkAnimation_MainEntry:
#_07E692: LDA.b $5D
#_07E694: CMP.b #$04 ; LINKSTATE 04
#_07E696: BNE .not_swimming

#_07E698: BRL HandleLinkAnimation_Swimming

;---------------------------------------------------------------------------------------------------

.not_swimming
#_07E69B: LDA.b $26
#_07E69D: BNE .not_moving

#_07E69F: BRL .exit

;---------------------------------------------------------------------------------------------------

.not_moving
#_07E6A2: STA.b $00

#_07E6A4: LDA.w $034A
#_07E6A7: BEQ .not_on_ice_a

#_07E6A9: LDA.w $0340
#_07E6AC: STA.b $00

.not_on_ice_a
#_07E6AE: LDA.b $50
#_07E6B0: BNE .check_dashing

#_07E6B2: LDA.b $6A
#_07E6B4: BEQ .no_diagonal

#_07E6B6: LDA.b $6C
#_07E6B8: BEQ .not_in_door

#_07E6BA: ASL A
#_07E6BB: AND.b #$FC
#_07E6BD: TAY

#_07E6BE: BRA .door_or_not_pressing_vertical

;---------------------------------------------------------------------------------------------------

.not_in_door
#_07E6C0: LDA.b $2F
#_07E6C2: LSR A
#_07E6C3: TAX

#_07E6C4: LDA.b $00
#_07E6C6: AND.w DominantDiagonalDirection,X
#_07E6C9: BNE .check_dashing

.no_diagonal
#_07E6CB: LDY.b #$04

#_07E6CD: LDA.b $00
#_07E6CF: AND.b #$0C
#_07E6D1: BEQ .door_or_not_pressing_vertical

#_07E6D3: LDY.b #$00

.door_or_not_pressing_vertical
#_07E6D5: CPY.b #$04
#_07E6D7: BEQ .was_pressing_a_vertical

#_07E6D9: LDA.b $00
#_07E6DB: AND.b #$04
#_07E6DD: BNE .opposite_on_axis

#_07E6DF: BRA .set_direction

;---------------------------------------------------------------------------------------------------

.was_pressing_a_vertical
#_07E6E1: LDA.b $00
#_07E6E3: AND.b #$01
#_07E6E5: BEQ .set_direction

.opposite_on_axis
#_07E6E7: INY
#_07E6E8: INY

.set_direction
#_07E6E9: STY.b $2F

#_07E6EB: BRA .check_dashing

;===================================================================================================

#HandleLinkAnimation_StartWithDash:
#_07E6ED: PHB
#_07E6EE: PHK
#_07E6EF: PLB

;---------------------------------------------------------------------------------------------------

.check_dashing
#_07E6F0: LDA.w $0372
#_07E6F3: BEQ .not_dashing

#_07E6F5: BRL HandleLinkAnimation_Dash

;---------------------------------------------------------------------------------------------------

.not_dashing
#_07E6F8: LDA.b $2F
#_07E6FA: LSR A
#_07E6FB: TAX

#_07E6FC: LDA.b $5E
#_07E6FE: CMP.b #$06
#_07E700: BNE .not_transitioning_to_uw_speed

#_07E702: TXA
#_07E703: CLC
#_07E704: ADC.b #$04
#_07E706: TAX

#_07E707: BRA .continue_b

;---------------------------------------------------------------------------------------------------

.not_transitioning_to_uw_speed
; check if on ice
#_07E709: LDA.w $034A
#_07E70C: BEQ .continue_b

#_07E70E: LDA.b $F0
#_07E710: AND.b #$0F
#_07E712: BEQ .no_dpad_press

#_07E714: TXA
#_07E715: CLC
#_07E716: ADC.b #$04
#_07E718: TAX

.continue_b
#_07E719: LDA.b $5D
#_07E71B: CMP.b #$17 ; LINKSTATE 17
#_07E71D: BNE .not_bunny

#_07E71F: BRL HandleLinkAnimation_Bunny

;---------------------------------------------------------------------------------------------------

.not_bunny
#_07E722: LDA.b $11

; Spiral stairs?
#_07E724: CMP.b #$0E
#_07E726: BEQ HandleLinkAnimation_General

#_07E728: CMP.b #$12
#_07E72A: BEQ .straight_interroom_stairs_door

#_07E72C: CMP.b #$13
#_07E72E: BNE .not_interroom_stairs_door

.straight_interroom_stairs_door
#_07E730: LDX.b #$0C

#_07E732: BRA HandleLinkAnimation_General

;---------------------------------------------------------------------------------------------------

.not_interroom_stairs_door
#_07E734: LDA.w $0308
#_07E737: AND.b #$80
#_07E739: BNE HandleLinkAnimation_General

#_07E73B: LDA.b $48
#_07E73D: AND.b #$8D
#_07E73F: BEQ .not_grabbing

#_07E741: LDX.b #$0C
#_07E743: BRA HandleLinkAnimation_General

;---------------------------------------------------------------------------------------------------

.not_grabbing
#_07E745: LDA.w $0351
#_07E748: BNE HandleLinkAnimation_General

#_07E74A: LDA.b $3C
#_07E74C: BEQ HandleLinkAnimation_SwordPrimed

;===================================================================================================

#HandleLinkAnimation_General:
#_07E74E: LDA.b $2E
#_07E750: CMP.b #$06
#_07E752: BCS .no_dpad_press

#_07E754: LDA.w $02F5
#_07E757: CMP.b #$02
#_07E759: BEQ .no_dpad_press

#_07E75B: LDA.w WalkAnimationTimer_other,X
#_07E75E: STA.b $00

#_07E760: LDA.b $2D
#_07E762: CLC
#_07E763: ADC.b #$01
#_07E765: STA.b $2D

#_07E767: CMP.b $00
#_07E769: BCC .exit

#_07E76B: STZ.b $2D

#_07E76D: LDA.b $2E
#_07E76F: INC A
#_07E770: CMP.b #$06
#_07E772: BNE .set_anim_step

.no_dpad_press
#_07E774: LDA.b #$00

.set_anim_step
#_07E776: STA.b $2E

.exit
#_07E778: PLB

#_07E779: RTL

;===================================================================================================

HandleLinkAnimation_SwordPrimed:
#_07E77A: LDX.b $2E

#_07E77C: LDA.b $5E
#_07E77E: CMP.b #$06
#_07E780: BNE .not_walking_into_dungeon

#_07E782: TXA
#_07E783: CLC
#_07E784: ADC.b #$08
#_07E786: TAX

.not_walking_into_dungeon
#_07E787: LDA.w $034A
#_07E78A: BEQ .not_on_ice

#_07E78C: TXA
#_07E78D: CLC
#_07E78E: ADC.b #$08
#_07E790: TAX

.not_on_ice
#_07E791: LDA.w $02F5
#_07E794: CMP.b #$02
#_07E796: BEQ EXIT_07E7E1 ; why so far?

#_07E798: LDA.w WalkAnimationTimer,X
#_07E79B: STA.b $00

#_07E79D: LDA.b $2D
#_07E79F: CLC
#_07E7A0: ADC.b #$01
#_07E7A2: STA.b $2D

#_07E7A4: CMP.b $00
#_07E7A6: BCC .exit

#_07E7A8: STZ.b $2D

#_07E7AA: LDA.b $2E
#_07E7AC: INC A
#_07E7AD: CMP.b #$09
#_07E7AF: BNE .dont_reset_step

#_07E7B1: LDA.b #$01

.dont_reset_step
#_07E7B3: STA.b $2E

.exit
#_07E7B5: PLB

#_07E7B6: RTL

;===================================================================================================

HandleLinkAnimation_Bunny:
#_07E7B7: LDA.b $2E
#_07E7B9: CMP.b #$04
#_07E7BB: BCS .reset_step

#_07E7BD: LDA.w $02F5
#_07E7C0: CMP.b #$02
#_07E7C2: BEQ .reset_step

#_07E7C4: LDA.w WalkAnimationTimer_other,X
#_07E7C7: STA.b $00

#_07E7C9: LDA.b $2D
#_07E7CB: CLC
#_07E7CC: ADC.b #$01
#_07E7CE: STA.b $2D

#_07E7D0: CMP.b $00
#_07E7D2: BCC EXIT_07E7E1

#_07E7D4: STZ.b $2D

#_07E7D6: LDA.b $2E
#_07E7D8: INC A
#_07E7D9: CMP.b #$04
#_07E7DB: BNE .dont_reset_step

.reset_step
#_07E7DD: LDA.b #$00

.dont_reset_step
#_07E7DF: STA.b $2E

;---------------------------------------------------------------------------------------------------

#EXIT_07E7E1:
#_07E7E1: PLB

#_07E7E2: RTL

;===================================================================================================

HandleLinkAnimation_Swimming:
#_07E7E3: LDA.w $0340
#_07E7E6: BEQ .exit

#_07E7E8: LDA.b $50
#_07E7EA: BNE .exit

#_07E7EC: LDA.b $6A
#_07E7EE: BEQ .not_moving

#_07E7F0: LDA.b $6C
#_07E7F2: BEQ .not_in_door

#_07E7F4: ASL A
#_07E7F5: AND.b #$FC
#_07E7F7: TAY

#_07E7F8: BRA .continue

;---------------------------------------------------------------------------------------------------

.not_in_door
#_07E7FA: LDA.b $2F
#_07E7FC: LSR A
#_07E7FD: TAX

#_07E7FE: LDA.w $0340
#_07E801: AND.w DominantDiagonalDirection,X
#_07E804: BNE .exit

.not_moving
#_07E806: LDY.b #$04

#_07E808: LDA.w $0340
#_07E80B: AND.b #$0C
#_07E80D: BEQ .continue

#_07E80F: LDY.b #$00

.continue
#_07E811: CPY.b #$04
#_07E813: BEQ .going_horizontally

#_07E815: LDA.w $0340
#_07E818: AND.b #$04
#_07E81A: BNE .advance_direction

#_07E81C: BRA .set_direction

.going_horizontally
#_07E81E: LDA.w $0340
#_07E821: AND.b #$01
#_07E823: BEQ .set_direction

.advance_direction
#_07E825: INY
#_07E826: INY

.set_direction
#_07E827: STY.b $2F

.exit
#_07E829: PLB

#_07E82A: RTL

;===================================================================================================

pool HandleLinkAnimation_Dash

; TODO how to get most of these values?
.timers_a_idk
#_07E82B: db $03, $03, $05, $03, $03, $03, $05, $03
#_07E833: db $02, $02, $04, $02, $02, $02, $04, $02
#_07E83B: db $02, $02, $03, $02, $02, $02, $03, $02
#_07E843: db $01, $01, $02, $01, $01, $01, $02, $01
#_07E84B: db $01, $01, $01, $01, $01, $01, $01, $01
#_07E853: db $00, $00, $01, $00, $00, $00, $01, $00
#_07E85B: db $00, $00, $00, $00, $00, $00, $00, $00

.timers_charge
#_07E863: db $01
#_07E864: db $02, $02, $02, $02, $02 ; water?
#_07E869: db $02                     ; actual dashing

.thresholds
#_07E86A: db $30                               ; unused? is this a default?
#_07E86B: db $24, $18, $10, $0C, $08, $04
#_07E871: db $04, $06, $08, $0A, $0C, $0E, $10 ; unused?

pool off

;---------------------------------------------------------------------------------------------------

HandleLinkAnimation_Dash:
#_07E878: LDX.b #$06

#_07E87A: LDA.w $0374
#_07E87D: BEQ .use_value

.next_timer_value
#_07E87F: LDA.w $0374
#_07E882: CMP.w .thresholds,X
#_07E885: BCC .use_value

#_07E887: DEX
#_07E888: BPL .next_timer_value

#_07E88A: INX

;---------------------------------------------------------------------------------------------------

.use_value
#_07E88B: LDA.b $3C
#_07E88D: CMP.b #$09
#_07E88F: BCS .get_charge_timer

#_07E891: LDA.w $0351
#_07E894: BNE .get_charge_timer

#_07E896: TXA
#_07E897: ASL A
#_07E898: ASL A
#_07E899: ASL A
#_07E89A: TAX

#_07E89B: LDA.w .timers_a_idk,X
#_07E89E: STA.b $00

#_07E8A0: LDA.b $2D
#_07E8A2: CLC
#_07E8A3: ADC.b #$01
#_07E8A5: STA.b $2D

#_07E8A7: CMP.b $00
#_07E8A9: BCC .proceed_to_exit

#_07E8AB: STZ.b $2D

#_07E8AD: LDA.b $2E
#_07E8AF: INC A
#_07E8B0: CMP.b #$09
#_07E8B2: BNE .dont_reset_step

#_07E8B4: LDA.b #$01

.dont_reset_step
#_07E8B6: BRA .set_anim_step

.proceed_to_exit
#_07E8B8: BRA .exit

;---------------------------------------------------------------------------------------------------

.get_charge_timer
#_07E8BA: LDA.w .timers_charge,X
#_07E8BD: STA.b $00

#_07E8BF: LDA.b $2D
#_07E8C1: CLC
#_07E8C2: ADC.b #$01
#_07E8C4: STA.b $2D

#_07E8C6: CMP.b $00
#_07E8C8: BCC .exit

#_07E8CA: STZ.b $2D

#_07E8CC: LDA.b $2E
#_07E8CE: INC A
#_07E8CF: CMP.b #$06
#_07E8D1: BCC .set_anim_step

#_07E8D3: LDA.b #$00

.set_anim_step
#_07E8D5: STA.b $2E

.exit
#_07E8D7: PLB

#_07E8D8: RTL

;===================================================================================================

HandleIndoorCameraAndDoors:
#_07E8D9: LDA.b $1B
#_07E8DB: BEQ .not_indoors

#_07E8DD: LDA.b $6C
#_07E8DF: BEQ .not_in_a_door

#_07E8E1: JML HandleDoorTransitions ; !WTF it's right there wtf just BRA

.not_in_a_door
#_07E8E5: JSL ApplyLinksMovementToCamera

.not_indoors
#_07E8E9: RTS

;===================================================================================================

HandleDoorTransitions:
#_07E8EA: STZ.b $68
#_07E8EC: STZ.b $69

#_07E8EE: LDA.b $26
#_07E8F0: AND.b #$0C
#_07E8F2: BEQ .not_vertical

#_07E8F4: LDX.b $6C
#_07E8F6: CPX.b #$01
#_07E8F8: BNE .not_vertical

#_07E8FA: AND.b #$04
#_07E8FC: BEQ .going_up

#_07E8FE: REP #$20

#_07E900: LDA.b $20
#_07E902: CLC
#_07E903: ADC.w #$001C
#_07E906: STA.b $00

#_07E908: AND.w #$00FC
#_07E90B: BNE .not_vertical

#_07E90D: SEP #$20

#_07E90F: LDA.b $01
#_07E911: SEC
#_07E912: SBC.b $40
#_07E914: STA.b $68

#_07E916: BRA .not_vertical

.going_up
#_07E918: REP #$20

#_07E91A: LDA.b $20
#_07E91C: SEC
#_07E91D: SBC.w #$0012
#_07E920: STA.b $00

#_07E922: SEP #$20

#_07E924: LDA.b $01
#_07E926: SEC
#_07E927: SBC.b $40
#_07E929: STA.b $68

;---------------------------------------------------------------------------------------------------

.not_vertical
#_07E92B: SEP #$20

#_07E92D: LDA.b $26
#_07E92F: AND.b #$03
#_07E931: BEQ .not_horizontal

#_07E933: LDX.b $6C
#_07E935: CPX.b #$02
#_07E937: BNE .not_horizontal

#_07E939: AND.b #$01
#_07E93B: BEQ .going_left

#_07E93D: REP #$20

#_07E93F: LDA.b $22
#_07E941: CLC
#_07E942: ADC.w #$0015
#_07E945: STA.b $00

#_07E947: AND.w #$00FC
#_07E94A: BNE .not_horizontal

#_07E94C: SEP #$20

#_07E94E: LDA.b $01
#_07E950: SEC
#_07E951: SBC.b $41
#_07E953: STA.b $69

#_07E955: BRA .not_horizontal

.going_left
#_07E957: REP #$20

#_07E959: LDA.b $22
#_07E95B: SEC
#_07E95C: SBC.w #$0008
#_07E95F: STA.b $00

#_07E961: SEP #$20

#_07E963: LDA.b $01
#_07E965: SEC
#_07E966: SBC.b $41
#_07E968: STA.b $69

;---------------------------------------------------------------------------------------------------

.not_horizontal
#_07E96A: SEP #$20

#_07E96C: LDA.b $69
#_07E96E: BEQ .transitioning_vertically
#_07E970: BMI .transitioning_west

#_07E972: STZ.w $030B
#_07E975: STZ.w $0308
#_07E978: STZ.w $0309
#_07E97B: STZ.w $0376

#_07E97E: JSL HandleEdgeTransitionMovementEast_Right8

#_07E982: RTS

;---------------------------------------------------------------------------------------------------

.transitioning_west
#_07E983: STZ.w $030B
#_07E986: STZ.w $0308
#_07E989: STZ.w $0309
#_07E98C: STZ.w $0376

#_07E98F: JSL HandleEdgeTransitionMovementWest_Left8

#_07E993: RTS

;---------------------------------------------------------------------------------------------------

.transitioning_vertically
#_07E994: LDA.b $68
#_07E996: BEQ .exit
#_07E998: BPL .transitioning_south

#_07E99A: STZ.w $030B
#_07E99D: STZ.w $0308
#_07E9A0: STZ.w $0309
#_07E9A3: STZ.w $0376

#_07E9A6: JSL HandleEdgeTransitionMovementNorth

#_07E9AA: RTS

;---------------------------------------------------------------------------------------------------

.transitioning_south
#_07E9AB: STZ.w $030B
#_07E9AE: STZ.w $0308
#_07E9B1: STZ.w $0309
#_07E9B4: STZ.w $0376

#_07E9B7: JSL HandleEdgeTransitionMovementSouth_Down16

.exit
#_07E9BB: RTS

;===================================================================================================

ApplyLinksMovementToCamera:
#_07E9BC: PHB
#_07E9BD: PHK
#_07E9BE: PLB

#_07E9BF: LDA.b $21
#_07E9C1: SEC
#_07E9C2: SBC.b $40
#_07E9C4: STA.b $68

#_07E9C6: LDA.b $23
#_07E9C8: SEC
#_07E9C9: SBC.b $41
#_07E9CB: STA.b $69

#_07E9CD: LDA.b $69 ; you already have it, doofus
#_07E9CF: BEQ .check_y_movement

#_07E9D1: BMI .moved_left

.moved_right
#_07E9D3: JSL AdjustQuadrantAndCamera_right

#_07E9D7: BRA .check_y_movement

.moved_left
#_07E9D9: JSL AdjustQuadrantAndCamera_left

;---------------------------------------------------------------------------------------------------

.check_y_movement
#_07E9DD: LDA.b $68
#_07E9DF: BEQ .done

#_07E9E1: BPL .moved_down

.moved_up
#_07E9E3: JSL AdjustQuadrantAndCamera_up

#_07E9E7: PLB

#_07E9E8: RTL

.moved_down
#_07E9E9: JSL AdjustQuadrantAndCamera_down

.done
#_07E9ED: PLB

#_07E9EE: RTL

;===================================================================================================

InitializePrayerIris:
#_07E9EF: JSL CleanUpAndPrepDesertPrayerHDMA

#_07E9F3: PHB
#_07E9F4: PHK
#_07E9F5: PLB

#_07E9F6: REP #$20

#_07E9F8: LDA.w #$0026
#_07E9FB: STA.w $067C

#_07E9FE: SEP #$20

#_07EA00: STZ.w $067E

#_07EA03: JSL BuildPrayerHDMATable

#_07EA07: INC.b $B0

#_07EA09: PLB

#_07EA0A: RTL

;===================================================================================================

DesertPrayerAnimationTimer:
#_07EA0B: db $16, $16, $16, $40, $01

;---------------------------------------------------------------------------------------------------
; $067C = tightness
; $0676 = location of Link on screen
BuildPrayerHDMATable:
#_07EA10: PHB
#_07EA11: PHK
#_07EA12: PLB

#_07EA13: REP #$30

#_07EA15: STZ.b $04

#_07EA17: LDA.b $20
#_07EA19: SEC
#_07EA1A: SBC.b $E8
#_07EA1C: CLC
#_07EA1D: ADC.w #$000C
#_07EA20: STA.b $0E

#_07EA22: SEC
#_07EA23: SBC.w $067C
#_07EA26: STA.w $0674

#_07EA29: BPL .link_not_too_high

#_07EA2B: STA.b $04

.link_not_too_high
#_07EA2D: CLC
#_07EA2E: ADC.w $067C

#_07EA31: CLC
#_07EA32: ADC.w $067C
#_07EA35: STA.w $0676

#_07EA38: LDA.b $22
#_07EA3A: SEC
#_07EA3B: SBC.b $E2

#_07EA3D: CLC
#_07EA3E: ADC.w #$0008
#_07EA41: STA.w $0670

#_07EA44: LDA.w #$0001
#_07EA47: STA.w $067A

;===================================================================================================

NextDesertHDMALine:
#_07EA4A: LDA.w #$0100
#_07EA4D: STA.b $00
#_07EA4F: STA.b $02

#_07EA51: LDA.w $0674
#_07EA54: BMI .link_too_high

#_07EA56: LDA.b $04
#_07EA58: CMP.w $0674
#_07EA5B: BCC .add_empty_table_entry

#_07EA5D: CMP.w $0676
#_07EA60: BCS .add_empty_table_entry

.link_too_high
#_07EA62: LDA.w $067C
#_07EA65: CMP.w $067A
#_07EA68: BCS .add_iris_table_entry

#_07EA6A: LDA.w #$0001
#_07EA6D: STA.w $067A

#_07EA70: STZ.w $0674

#_07EA73: LDA.w $0676
#_07EA76: STA.b $04

#_07EA78: CMP.w #$00E1
#_07EA7B: BCC .add_empty_table_entry

#_07EA7D: BRL DesertHDMATableFinished

;---------------------------------------------------------------------------------------------------

.add_iris_table_entry
#_07EA80: JSR DesertHDMACalculateIrisShapeLine

#_07EA83: LDA.b $06
#_07EA85: BNE .dont_turn_into_blank_line

#_07EA87: STZ.w $0674

#_07EA8A: BRA .calculate_index

.dont_turn_into_blank_line
#_07EA8C: LDA.b $08
#_07EA8E: CLC
#_07EA8F: ADC.w $0670
#_07EA92: STA.b $02

#_07EA94: LDA.w $0670
#_07EA97: SEC
#_07EA98: SBC.b $08
#_07EA9A: STA.b $00

.calculate_index
#_07EA9C: LDA.w $067A
#_07EA9F: AND.w #$00FF
#_07EAA2: STA.b $0A

#_07EAA4: LDA.b $0E
#_07EAA6: SEC
#_07EAA7: SBC.b $0A
#_07EAA9: DEC A
#_07EAAA: ASL A
#_07EAAB: TAX

#_07EAAC: BRA .add_from_iris

;---------------------------------------------------------------------------------------------------

.add_empty_table_entry
#_07EAAE: LDA.b $04
#_07EAB0: DEC A
#_07EAB1: ASL A
#_07EAB2: TAX

.add_from_iris
#_07EAB3: LDA.b $00
#_07EAB5: TAY
#_07EAB6: BMI .use_zero_a

#_07EAB8: AND.w #$FF00
#_07EABB: BEQ .not_zero_a

#_07EABD: CMP.w #$0100
#_07EAC0: BNE .use_zero_a

#_07EAC2: LDY.w #$00FF
#_07EAC5: BRA .not_zero_a

.use_zero_a
#_07EAC7: LDY.w #$0000

.not_zero_a
#_07EACA: TYA
#_07EACB: AND.w #$00FF
#_07EACE: STA.b $06

#_07EAD0: LDA.b $02
#_07EAD2: TAY

#_07EAD3: AND.w #$FF00
#_07EAD6: BEQ .not_zero_b

; Imposible to get this
#_07EAD8: AND.w #$FF00
#_07EADB: BEQ .use_zero_b

#_07EADD: LDY.w #$00FF
#_07EAE0: BRA .not_zero_b

.use_zero_b
#_07EAE2: LDY.w #$0000

.not_zero_b
#_07EAE5: TYA
#_07EAE6: AND.w #$00FF
#_07EAE9: XBA
#_07EAEA: ORA.b $06
#_07EAEC: STA.b $06

#_07EAEE: CPX.w #$01C0
#_07EAF1: BCS .dont_add_line_a

#_07EAF3: CMP.w #$FFFF
#_07EAF6: BNE .add_as_is_a

#_07EAF8: LDA.w #$00FF

.add_as_is_a
#_07EAFB: STA.w $1B00,X

.dont_add_line_a
#_07EAFE: LDA.w $0674
#_07EB01: BMI .fine_to_try_to_draw

#_07EB03: LDA.b $04
#_07EB05: CMP.w $0674
#_07EB08: BCC .to_next

#_07EB0A: CMP.w $0676
#_07EB0D: BCS .to_next

.fine_to_try_to_draw
#_07EB0F: LDA.w $067A
#_07EB12: AND.w #$00FF
#_07EB15: DEC A
#_07EB16: CLC
#_07EB17: ADC.b $0E
#_07EB19: TAX

#_07EB1A: DEC A
#_07EB1B: ASL A
#_07EB1C: CMP.w #$01C0
#_07EB1F: BCS .dont_add_line_b

#_07EB21: TAX

#_07EB22: LDA.b $06
#_07EB24: CMP.w #$FFFF
#_07EB27: BNE .add_as_is_b

#_07EB29: LDA.w #$00FF

.add_as_is_b
#_07EB2C: STA.w $1B00,X

.dont_add_line_b
#_07EB2F: INC.w $067A

;---------------------------------------------------------------------------------------------------

.to_next
#_07EB32: INC.b $04

#_07EB34: LDA.b $04
#_07EB36: BMI .more_to_go

#_07EB38: CMP.w #$00E1
#_07EB3B: BCS DesertHDMATableFinished

.more_to_go
#_07EB3D: BRL NextDesertHDMALine

;===================================================================================================

DesertHDMATableFinished:
#_07EB40: SEP #$30

#_07EB42: LDA.b $B0
#_07EB44: CMP.b #$04
#_07EB46: BNE .exit

#_07EB48: LDA.w $067E
#_07EB4B: CMP.b #$01
#_07EB4D: BEQ .dont_advance

; check for ABXY
#_07EB4F: LDA.b $F4
#_07EB51: ORA.b $F6
#_07EB53: AND.b #$C0
#_07EB55: BEQ .dont_advance

#_07EB57: LDA.b #$01
#_07EB59: STA.w $067E

#_07EB5C: LSR.w $067C

.dont_advance
#_07EB5F: LDA.w $067E
#_07EB62: BEQ .still_running_iris

#_07EB64: LDA.w $067C
#_07EB67: CLC
#_07EB68: ADC.b #$08
#_07EB6A: STA.w $067C

#_07EB6D: CMP.b #$C0
#_07EB6F: BCC .still_running_iris

#_07EB71: LDA.w $02F0
#_07EB74: EOR.b #$01
#_07EB76: STA.w $02F0

#_07EB79: LDA.b #$F3 ; SONG F3 - max volume
#_07EB7B: STA.w $012C

#_07EB7E: LDA.b #$00
#_07EB80: STA.w $012D

#_07EB83: STZ.w $0FC1
#_07EB86: STZ.w $030A

#_07EB89: STZ.b $3A
#_07EB8B: STZ.w $0308

#_07EB8E: LDA.b $50
#_07EB90: AND.b #$FE
#_07EB92: STA.b $50

#_07EB94: STZ.b $B0
#_07EB96: STZ.b $11

#_07EB98: LDA.w $010C
#_07EB9B: STA.b $10

#_07EB9D: STZ.b $1E
#_07EB9F: STZ.b $1F

#_07EBA1: STZ.b $96
#_07EBA3: STZ.b $97
#_07EBA5: STZ.b $98

#_07EBA7: JSL IrisSpotlight_ResetTable

#_07EBAB: BRA .exit

;---------------------------------------------------------------------------------------------------

.still_running_iris
#_07EBAD: DEC.b $3D
#_07EBAF: BPL .exit

#_07EBB1: LDX.w $030A
#_07EBB4: INX
#_07EBB5: CPX.b #$04
#_07EBB7: BEQ .on_final_step

#_07EBB9: STX.w $030A

.on_final_step
#_07EBBC: LDA.w DesertPrayerAnimationTimer,X
#_07EBBF: STA.b $3D

.exit
#_07EBC1: PLB

#_07EBC2: RTL

;===================================================================================================

pool DesertHDMACalculateIrisShapeLine

.multiplier_opening
#_07EBC3: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_07EBCB: db $FF, $FF, $FF, $FF, $FE, $FE, $FE, $FE
#_07EBD3: db $FD, $FD, $FD, $FD, $FC, $FC, $FC, $FB
#_07EBDB: db $FB, $FB, $FA, $FA, $F9, $F9, $F8, $F8
#_07EBE3: db $F7, $F7, $F6, $F6, $F5, $F5, $F4, $F3
#_07EBEB: db $F3, $F2, $F1, $F1, $F0, $EF, $EE, $EE
#_07EBF3: db $ED, $EC, $EB, $EA, $E9, $E9, $E8, $E7
#_07EBFB: db $E6, $E5, $E4, $E3, $E2, $E1, $DF, $DE
#_07EC03: db $DD, $DC, $DB, $DA, $D8, $D7, $D6, $D5
#_07EC0B: db $D3, $D2, $D0, $CF, $CD, $CC, $CA, $C9
#_07EC13: db $C7, $C6, $C4, $C2, $C1, $BF, $BD, $BB
#_07EC1B: db $B9, $B7, $B6, $B4, $B1, $AF, $AD, $AB
#_07EC23: db $A9, $A7, $A4, $A2, $9F, $9D, $9A, $97
#_07EC2B: db $95, $92, $8F, $8C, $89, $86, $82, $7F
#_07EC33: db $7B, $78, $74, $70, $6C, $67, $63, $5E
#_07EC3B: db $59, $53, $4D, $46, $3F, $37, $2D, $1F
#_07EC43: db $00

.multiplier_closed
#_07EC44: db $FF, $FF, $FF, $FF, $FF, $FF, $FE, $FE
#_07EC4C: db $FD, $FD, $FC, $FC, $FB, $FA, $F9, $F8
#_07EC54: db $F7, $F6, $F5, $F4, $F3, $F1, $F0, $EE
#_07EC5C: db $ED, $EB, $E9, $E8, $E6, $E4, $E2, $DF
#_07EC64: db $DD, $DB, $D8, $D6, $D3, $D0, $CD, $CA
#_07EC6C: db $C7, $C4, $C1, $BD, $B9, $B6, $B1, $AD
#_07EC74: db $A9, $A4, $9F, $9A, $95, $8F, $89, $82
#_07EC7C: db $7B, $74, $6C, $63, $59, $4D, $3F, $2D
#_07EC84: db $00, $00, $00, $00, $00, $00, $00, $00
#_07EC8C: db $00, $00, $00, $00, $00, $00, $00, $00
#_07EC94: db $00, $00, $00, $00, $00, $00, $00, $00
#_07EC9C: db $00, $00, $00, $00, $00, $00, $00, $00
#_07ECA4: db $00, $00, $00, $00, $00, $00, $00, $00
#_07ECAC: db $00, $00, $00, $00, $00, $00, $00, $00
#_07ECB4: db $00, $00, $00, $00, $00, $00, $00, $00
#_07ECBC: db $00, $00, $00, $00, $00, $00, $00, $00
#_07ECC4: db $00

pool off

;---------------------------------------------------------------------------------------------------

DesertHDMACalculateIrisShapeLine:
#_07ECC5: SEP #$30

#_07ECC7: LDA.w $067A
#_07ECCA: STA.w WRDIVH
#_07ECCD: STZ.w WRDIVL

#_07ECD0: LDA.w $067C
#_07ECD3: STA.w WRDIVB

#_07ECD6: NOP
#_07ECD7: NOP
#_07ECD8: NOP
#_07ECD9: NOP
#_07ECDA: NOP
#_07ECDB: NOP

#_07ECDC: REP #$20

#_07ECDE: LDA.w RDDIV
#_07ECE1: LSR A

#_07ECE2: SEP #$20

#_07ECE4: TAX

#_07ECE5: LDY.w .multiplier_closed,X

#_07ECE8: LDA.w $067E
#_07ECEB: BEQ .not_opening

#_07ECED: LDY.w .multiplier_opening,X

.not_opening
#_07ECF0: STY.b $06
#_07ECF2: STY.w WRMPYA

#_07ECF5: LDA.w $067C
#_07ECF8: STA.w WRMPYB

#_07ECFB: NOP
#_07ECFC: NOP
#_07ECFD: NOP
#_07ECFE: NOP

#_07ECFF: LDA.w RDMPYH
#_07ED02: STA.b $08

#_07ED04: STZ.b $09
#_07ED06: STZ.b $07

#_07ED08: REP #$30

#_07ED0A: LDA.w $067E
#_07ED0D: AND.w #$00FF
#_07ED10: BEQ .exit

#_07ED12: ASL.b $08

.exit
#_07ED14: RTS

;===================================================================================================

FindFreeMovingBlockSlot:
#_07ED15: LDX.b #$01

.next
#_07ED17: LDA.w $05FC,X
#_07ED1A: BNE .taken

#_07ED1C: TYA
#_07ED1D: INC A
#_07ED1E: STA.w $05FC,X

#_07ED21: CLC

#_07ED22: RTS

.taken
#_07ED23: DEX
#_07ED24: BPL .next

#_07ED26: SEC

#_07ED27: RTS

;===================================================================================================

InitializePushBlock:
#_07ED28: PHX

#_07ED29: STX.b $72

#_07ED2B: LDA.b $0E
#_07ED2D: PHA

#_07ED2E: REP #$20

#_07ED30: LDA.w $0540,X
#_07ED33: AND.w #$007E
#_07ED36: ASL A
#_07ED37: ASL A
#_07ED38: STA.b $00

#_07ED3A: LDA.w $0540,X
#_07ED3D: AND.w #$1F80
#_07ED40: LSR A
#_07ED41: LSR A
#_07ED42: LSR A
#_07ED43: LSR A
#_07ED44: STA.b $02

#_07ED46: SEP #$20

#_07ED48: LDA.b $0E
#_07ED4A: ASL A
#_07ED4B: TAX

#_07ED4C: LDA.b $00
#_07ED4E: STA.w $05E4,X

#_07ED51: LDA.b $01
#_07ED53: CLC
#_07ED54: ADC.w $062D
#_07ED57: STA.w $05E0,X
#_07ED5A: STA.b $01

#_07ED5C: LDA.b $02
#_07ED5E: STA.w $05F0,X

#_07ED61: LDA.b $03
#_07ED63: CLC
#_07ED64: ADC.w $062F
#_07ED67: STA.w $05EC,X
#_07ED6A: STA.b $03

#_07ED6C: STZ.w $05E8,X
#_07ED6F: STZ.w $05F4,X

#_07ED72: LDA.b $AE
#_07ED74: CMP.b #$26
#_07ED76: BEQ .dont_push

#_07ED78: LDX.b $72

#_07ED7A: LDA.w $0500,X
#_07ED7D: BNE .dont_push

#_07ED7F: LDY.b #$00
#_07ED81: JSR AttemptToPushTheBlock
#_07ED84: BCC .do_the_push

.dont_push
#_07ED86: PLA
#_07ED87: TAX

#_07ED88: STZ.w $05FC,X

#_07ED8B: PLX

#_07ED8C: SEC

#_07ED8D: RTS

;---------------------------------------------------------------------------------------------------

.do_the_push
#_07ED8E: LDA.b #$22 ; SFX2.22
#_07ED90: JSR PlayLinkSFX2Panned

#_07ED93: PLA
#_07ED94: STA.b $0E

#_07ED96: PLX

#_07ED97: LDA.b #$01
#_07ED99: STA.w $0500,X

#_07ED9C: CLC

#_07ED9D: RTS

;===================================================================================================

PushBlock_Slide:
#_07ED9E: SEP #$30

#_07EDA0: PHB
#_07EDA1: PHK
#_07EDA2: PLB

#_07EDA3: LDA.b $11
#_07EDA5: BNE .exit

#_07EDA7: STY.b $00

; !BUG they probably meant to use a loop here
#_07EDA9: LDX.b #$01

#_07EDAB: LDA.w $05FC,X
#_07EDAE: DEC A
#_07EDAF: ASL A
#_07EDB0: CMP.b $00
#_07EDB2: BEQ .matched

#_07EDB4: LDX.b #$00

.matched
#_07EDB6: TXA
#_07EDB7: ASL A
#_07EDB8: TAY

#_07EDB9: LDA.b #$09
#_07EDBB: STA.w $02C4
#_07EDBE: STZ.w $02C3

#_07EDC1: JSR PushBlock_ApplyVelocity

#_07EDC4: LDA.w $05F0,Y
#_07EDC7: STA.b $72

#_07EDC9: LDA.w $05EC,Y
#_07EDCC: STA.b $73

#_07EDCE: LDA.w $05E4,Y
#_07EDD1: STA.b $74

#_07EDD3: LDA.w $05E0,Y
#_07EDD6: STA.b $75

#_07EDD8: JSR PushBlock_HandleCollision

.exit
#_07EDDB: PLB

#_07EDDC: RTL

;===================================================================================================

pool PushBlock_HandleFalling

.fall_timer
#_07EDDD: db $09, $09, $09, $09, $09

pool off

;---------------------------------------------------------------------------------------------------

PushBlock_HandleFalling:
#_07EDE2: SEP #$30

#_07EDE4: PHB
#_07EDE5: PHK
#_07EDE6: PLB

#_07EDE7: PHY

#_07EDE8: STY.b $0E

#_07EDEA: DEC.w $02C4
#_07EDED: BPL .exit

#_07EDEF: INC.w $02C3

#_07EDF2: LDX.w $02C3

#_07EDF5: LDA.w .fall_timer,X
#_07EDF8: STA.w $02C4

#_07EDFB: CPX.b #$04
#_07EDFD: BNE .exit

#_07EDFF: TYX

#_07EE00: STZ.w $0500,X

#_07EE03: STZ.w $02C3

#_07EE06: LDX.b #$01

#_07EE08: LDA.w $05FC,X
#_07EE0B: DEC A
#_07EE0C: ASL A
#_07EE0D: CMP.b $0E
#_07EE0F: BEQ .matched

#_07EE11: LDX.b #$00

.matched
#_07EE13: STZ.w $05FC,X

.exit
#_07EE16: PLY

#_07EE17: PLB

#_07EE18: RTL

;===================================================================================================

pool PushBlock_ApplyVelocity

.block_speed
#_07EE19: db $0C

.direction_mask
#_07EE1A: db $08, $04, $02, $01

pool off

;---------------------------------------------------------------------------------------------------

PushBlock_ApplyVelocity:
#_07EE1E: STZ.b $27
#_07EE20: STZ.b $28

#_07EE22: LDA.w .block_speed
#_07EE25: STA.b $0A
#_07EE27: STA.b $0B

#_07EE29: LDA.b #$03
#_07EE2B: STA.b $0C

#_07EE2D: LDA.b #$02
#_07EE2F: STA.b $0D

#_07EE31: LDA.w $05F8,Y
#_07EE34: LSR A
#_07EE35: TAX

#_07EE36: LDA.w .direction_mask,X
#_07EE39: STA.b $00

;---------------------------------------------------------------------------------------------------

#_07EE3B: LDX.b #$01

.next_direction_check
#_07EE3D: LDA.b $00
#_07EE3F: AND.b $0C
#_07EE41: BEQ .skip_direction

#_07EE43: AND.b $0D
#_07EE45: BEQ .direction_positive

#_07EE47: LDA.b $0A,X
#_07EE49: EOR.b #$FF
#_07EE4B: INC A
#_07EE4C: STA.b $0A,X

.direction_positive
#_07EE4E: LDA.b $0A,X
#_07EE50: STA.b $27,X

#_07EE52: BRA .direction_found

;---------------------------------------------------------------------------------------------------

.skip_direction
#_07EE54: ASL.b $0C
#_07EE56: ASL.b $0C

#_07EE58: ASL.b $0D
#_07EE5A: ASL.b $0D

#_07EE5C: DEX
#_07EE5D: BPL .next_direction_check

;---------------------------------------------------------------------------------------------------

.direction_found
#_07EE5F: LDA.b $27,X

#_07EE61: ASL A ; x16
#_07EE62: ASL A
#_07EE63: ASL A
#_07EE64: ASL A

#_07EE65: CLC
#_07EE66: ADC.w $05F4,Y
#_07EE69: STA.w $05F4,Y

#_07EE6C: PHP

#_07EE6D: CPX.b #$01
#_07EE6F: BEQ .push_block_horizontally

#_07EE71: LDX.b #$00

#_07EE73: LDA.b $27

#_07EE75: LSR A ; /16
#_07EE76: LSR A
#_07EE77: LSR A
#_07EE78: LSR A

#_07EE79: CMP.b #$08
#_07EE7B: BCC .pushing_down

#_07EE7D: ORA.b #$F0
#_07EE7F: LDX.b #$FF

.pushing_down
#_07EE81: PLP
#_07EE82: ADC.w $05F0,Y
#_07EE85: STA.w $05F0,Y

#_07EE88: TXA
#_07EE89: ADC.w $05EC,Y
#_07EE8C: STA.w $05EC,Y

#_07EE8F: LDA.w $05F0,Y
#_07EE92: AND.b #$0F
#_07EE94: BRA .compare_to_target

;---------------------------------------------------------------------------------------------------

.push_block_horizontally
#_07EE96: LDX.b #$00

#_07EE98: LDA.b $28
#_07EE9A: LSR A ; /16
#_07EE9B: LSR A
#_07EE9C: LSR A
#_07EE9D: LSR A
#_07EE9E: CMP.b #$08
#_07EEA0: BCC .pushing_right

#_07EEA2: ORA.b #$F0

#_07EEA4: LDX.b #$FF

.pushing_right
#_07EEA6: PLP
#_07EEA7: ADC.w $05E4,Y
#_07EEAA: STA.w $05E4,Y

#_07EEAD: TXA
#_07EEAE: ADC.w $05E0,Y
#_07EEB1: STA.w $05E0,Y

#_07EEB4: LDA.w $05E4,Y
#_07EEB7: AND.b #$0F

;---------------------------------------------------------------------------------------------------

.compare_to_target
#_07EEB9: TYX

#_07EEBA: CMP.w $05E8,X
#_07EEBD: BNE .not_at_target

#_07EEBF: TXA
#_07EEC0: LSR A
#_07EEC1: TAX

#_07EEC2: LDA.w $05FC,X
#_07EEC5: DEC A
#_07EEC6: ASL A
#_07EEC7: TAX

#_07EEC8: INC.w $0500,X

#_07EECB: LDA.b $50
#_07EECD: AND.b #$FB
#_07EECF: STA.b $50

#_07EED1: LDA.b $48
#_07EED3: AND.b #$FB
#_07EED5: STA.b $48

;---------------------------------------------------------------------------------------------------

.not_at_target
#_07EED7: SEP #$20

#_07EED9: LDA.w $05E4,Y
#_07EEDC: STA.b $00

#_07EEDE: LDA.w $05E0,Y
#_07EEE1: STA.b $01

#_07EEE3: LDA.w $05F0,Y
#_07EEE6: STA.b $02

#_07EEE8: LDA.w $05EC,Y
#_07EEEB: STA.b $03

;---------------------------------------------------------------------------------------------------

#_07EEED: PHX

#_07EEEE: LDX.b #$0F

.next_sprite
#_07EEF0: LDA.w $0DD0,X
#_07EEF3: CMP.b #$09
#_07EEF5: BCC .skip_sprite

#_07EEF7: LDA.w $0D10,X
#_07EEFA: STA.b $04

#_07EEFC: LDA.w $0D30,X
#_07EEFF: STA.b $05

#_07EF01: LDA.w $0D00,X
#_07EF04: STA.b $06

#_07EF06: LDA.w $0D20,X
#_07EF09: STA.b $07

#_07EF0B: REP #$20

#_07EF0D: LDA.b $00
#_07EF0F: SEC
#_07EF10: SBC.b $04
#_07EF12: CLC
#_07EF13: ADC.w #$0010
#_07EF16: CMP.w #$0020
#_07EF19: BCS .skip_sprite

#_07EF1B: LDA.b $02
#_07EF1D: SEC
#_07EF1E: SBC.b $06
#_07EF20: CLC
#_07EF21: ADC.w #$0010
#_07EF24: CMP.w #$0020
#_07EF27: BCS .skip_sprite

#_07EF29: SEP #$20

#_07EF2B: LDA.b #$08
#_07EF2D: STA.w $0EA0,X

#_07EF30: PHY

#_07EF31: LDA.w $05F8,Y
#_07EF34: LSR A
#_07EF35: TAY

#_07EF36: LDA.w .recoil_x,Y
#_07EF39: STA.w $0F40,X

#_07EF3C: LDA.w .recoil_y,Y
#_07EF3F: STA.w $0F30,X

#_07EF42: PLY

.skip_sprite
#_07EF43: SEP #$20

#_07EF45: DEX
#_07EF46: BPL .next_sprite

#_07EF48: PLX

#_07EF49: RTS

;---------------------------------------------------------------------------------------------------

.recoil_x
#_07EF4A: db   0 ; up
#_07EF4B: db   0 ; down
#_07EF4C: db -32 ; left
#_07EF4D: db  32 ; right

.recoil_y
#_07EF4E: db -32 ; up
#_07EF4F: db  32 ; down
#_07EF50: db   0 ; left
#_07EF51: db   0 ; right

;===================================================================================================

pool PushBlock_HandleCollision

.link_offset_on_axis
#_07EF52: dw $0008 ; up
#_07EF54: dw $0018 ; down
#_07EF56: dw $0000 ; left
#_07EF58: dw $0010 ; right

.link_offset_perpendicular_bottom
#_07EF5A: dw $0000 ; up
#_07EF5C: dw $0000 ; down
#_07EF5E: dw $0008 ; left
#_07EF60: dw $0008 ; right

.link_offset_perpendicular_top
#_07EF62: dw $000F ; up
#_07EF64: dw $000F ; down
#_07EF66: dw $0017 ; left
#_07EF68: dw $0017 ; right

.block_offset_on_axis
#_07EF6A: dw $000F ; up
#_07EF6C: dw $0000 ; down
#_07EF6E: dw $000F ; left
#_07EF70: dw $0000 ; right

.block_offset_perpendicular_bottom
#_07EF72: dw $0000 ; up
#_07EF74: dw $0000 ; down
#_07EF76: dw $0000 ; left
#_07EF78: dw $0000 ; right

.block_offset_perpendicular_top
#_07EF7A: dw $000F ; up
#_07EF7C: dw $000F ; down
#_07EF7E: dw $000F ; left
#_07EF80: dw $000F ; right

;---------------------------------------------------------------------------------------------------

.link_coord_address_on_axis
#_07EF82: dw $0020 ; up
#_07EF84: dw $0020 ; down
#_07EF86: dw $0022 ; left
#_07EF88: dw $0022 ; right

.link_coord_address_perpendicular
#_07EF8A: dw $0022 ; up
#_07EF8C: dw $0022 ; down
#_07EF8E: dw $0020 ; left
#_07EF90: dw $0020 ; right

;---------------------------------------------------------------------------------------------------

.block_coords_address_on_axis
#_07EF92: dw $0072 ; up
#_07EF94: dw $0072 ; down
#_07EF96: dw $0074 ; left
#_07EF98: dw $0074 ; right

.block_coords_address_perpendicular
#_07EF9A: dw $0074 ; up
#_07EF9C: dw $0074 ; down
#_07EF9E: dw $0072 ; left
#_07EFA0: dw $0072 ; right

pool off

;---------------------------------------------------------------------------------------------------

PushBlock_HandleCollision:
#_07EFA2: PHY

#_07EFA3: STY.b $0E
#_07EFA5: STZ.b $0F

#_07EFA7: LDA.b $21
#_07EFA9: STA.b $40

#_07EFAB: LDA.b $23
#_07EFAD: STA.b $41

#_07EFAF: REP #$20

#_07EFB1: LDA.b $67
#_07EFB3: AND.w #$000F

#_07EFB6: LDY.b #$06

.check_next_bit
#_07EFB8: LSR A
#_07EFB9: BCS .direction_match

#_07EFBB: DEY
#_07EFBC: DEY
#_07EFBD: BPL .check_next_bit

#_07EFBF: BRL .no_pushback

;---------------------------------------------------------------------------------------------------

.direction_match
#_07EFC2: LDA.b $0E
#_07EFC4: PHA

#_07EFC5: LDA.w .link_coord_address_perpendicular,Y
#_07EFC8: STA.b $0C

#_07EFCA: LDA.w .block_coords_address_perpendicular,Y
#_07EFCD: STA.b $0E

#_07EFCF: LDA.b ($0C)
#_07EFD1: CLC
#_07EFD2: ADC.w .link_offset_perpendicular_bottom,Y
#_07EFD5: STA.b $00

#_07EFD7: LDA.b ($0C)
#_07EFD9: CLC
#_07EFDA: ADC.w .link_offset_perpendicular_top,Y
#_07EFDD: STA.b $02

#_07EFDF: LDA.b ($0E)
#_07EFE1: CLC
#_07EFE2: ADC.w .block_offset_perpendicular_bottom,Y
#_07EFE5: STA.b $04

#_07EFE7: LDA.b ($0E)
#_07EFE9: CLC
#_07EFEA: ADC.w .block_offset_perpendicular_top,Y
#_07EFED: STA.b $06

;---------------------------------------------------------------------------------------------------

#_07EFEF: LDA.w .link_coord_address_on_axis,Y
#_07EFF2: STA.b $0C

#_07EFF4: LDA.w .block_coords_address_on_axis,Y
#_07EFF7: STA.b $0E

#_07EFF9: LDA.b ($0C)
#_07EFFB: CLC
#_07EFFC: ADC.w .link_offset_on_axis,Y
#_07EFFF: STA.b $08

#_07F001: LDA.b ($0E)
#_07F003: CLC
#_07F004: ADC.w .block_offset_on_axis,Y
#_07F007: STA.b $0A

;---------------------------------------------------------------------------------------------------

#_07F009: LDA.b $48
#_07F00B: AND.w #$FFFB
#_07F00E: STA.b $48

#_07F010: PLA
#_07F011: STA.b $0E

#_07F013: LDA.b $00
#_07F015: CMP.b $04
#_07F017: BCC .not_in_block_on_axis

#_07F019: CMP.b $06
#_07F01B: BCC .in_block_on_axis

.not_in_block_on_axis
#_07F01D: LDA.b $02
#_07F01F: CMP.b $04
#_07F021: BCC .no_pushback

#_07F023: CMP.b $06
#_07F025: BCS .no_pushback

;---------------------------------------------------------------------------------------------------

.in_block_on_axis
#_07F027: PHY
#_07F028: PHX

#_07F029: LDX.b $0E

#_07F02B: LDA.b $2F
#_07F02D: AND.w #$00FF
#_07F030: CMP.w $05F8,X
#_07F033: BNE .direction_mismatch

#_07F035: LDY.b #$01

#_07F037: TXA
#_07F038: LSR A
#_07F039: TAX

#_07F03A: LDA.w $05FC,X
#_07F03D: BEQ .dont_flag_pushing_block

#_07F03F: LDY.b #$04

.dont_flag_pushing_block
#_07F041: TYA
#_07F042: AND.w #$00FF
#_07F045: TSB.b $48

;---------------------------------------------------------------------------------------------------

.direction_mismatch
#_07F047: PLX
#_07F048: PLY

#_07F049: TYA
#_07F04A: AND.w #$0002
#_07F04D: BEQ .pushing_up_or_left

#_07F04F: LDA.b $08
#_07F051: SEC
#_07F052: SBC.b $0A
#_07F054: BCC .no_pushback

#_07F056: CMP.w #$0008
#_07F059: BCS .no_pushback

#_07F05B: EOR.w #$FFFF
#_07F05E: INC A
#_07F05F: STA.b $00

#_07F061: CLC
#_07F062: ADC.b ($0C)
#_07F064: STA.b ($0C)

#_07F066: BRA .set_axis

;---------------------------------------------------------------------------------------------------

.pushing_up_or_left
#_07F068: LDA.b $08
#_07F06A: SEC
#_07F06B: SBC.b $0A
#_07F06D: CMP.w #$FFF8
#_07F070: BCC .no_pushback

#_07F072: EOR.w #$FFFF
#_07F075: INC A
#_07F076: STA.b $00

#_07F078: CLC
#_07F079: ADC.b ($0C)
#_07F07B: STA.b ($0C)

;---------------------------------------------------------------------------------------------------

.set_axis
#_07F07D: SEP #$20

#_07F07F: LDX.b #$00

#_07F081: TYA
#_07F082: AND.b #$04
#_07F084: BEQ .vertical

#_07F086: INX

.vertical
#_07F087: LDA.b $30,X
#_07F089: CLC
#_07F08A: ADC.b $00
#_07F08C: STA.b $30,X

;---------------------------------------------------------------------------------------------------

.no_pushback
#_07F08E: SEP #$20

#_07F090: JSR HandleIndoorCameraAndDoors

#_07F093: PLY

#_07F094: RTS

;===================================================================================================

DrawAllPushBlocks:
#_07F095: PHB
#_07F096: PHK
#_07F097: PLB

#_07F098: LDA.w $05FC
#_07F09B: ORA.w $05FD
#_07F09E: BEQ .exit

#_07F0A0: LDX.b #$01

.next
#_07F0A2: LDA.w $05FC,X
#_07F0A5: BEQ .skip

#_07F0A7: TXA
#_07F0A8: ASL A
#_07F0A9: TAY

#_07F0AA: PHX

#_07F0AB: JSR DrawSinglePushBlock

#_07F0AE: PLX

.skip
#_07F0AF: DEX
#_07F0B0: BPL .next

.exit
#_07F0B2: PLB

#_07F0B3: RTL

;===================================================================================================

pool DrawSinglePushBlock

.unreachable
#_07F0B4: db $0C

.step
#_07F0B5: db  12,  12,  12, $FF

.index
#_07F0B9: db   0,   1,   2,   3
#_07F0BD: db   4,   0,   0,   0
#_07F0C1: db   0

pool off

;---------------------------------------------------------------------------------------------------

DrawSinglePushBlock:
#_07F0C2: PHY

#_07F0C3: LDA.b #$04
#_07F0C5: JSL AllocateOAMInRegionB

#_07F0C9: PLY

#_07F0CA: LDA.w $05F0,Y
#_07F0CD: STA.b $00

#_07F0CF: LDA.w $05EC,Y
#_07F0D2: STA.b $01

#_07F0D4: LDA.w $05E4,Y
#_07F0D7: STA.b $02

#_07F0D9: LDA.w $05E0,Y
#_07F0DC: STA.b $03

#_07F0DE: REP #$20

#_07F0E0: LDA.b $00
#_07F0E2: SEC
#_07F0E3: SBC.b $E8
#_07F0E5: DEC A
#_07F0E6: STA.b $00

#_07F0E8: LDA.b $02
#_07F0EA: SEC
#_07F0EB: SBC.b $E2
#_07F0ED: STA.b $02

#_07F0EF: SEP #$20

#_07F0F1: PHY

#_07F0F2: LDY.w $02C3

#_07F0F5: LDA.w .index,Y
#_07F0F8: TAX

#_07F0F9: LDY.b #$00

#_07F0FB: LDA.w .step,X
#_07F0FE: CMP.b #$FF
#_07F100: BNE .draw

#_07F102: BRA .exit

;---------------------------------------------------------------------------------------------------

.draw
#_07F104: XBA

#_07F105: LDA.b $02
#_07F107: STA.b ($90),Y

#_07F109: INY
#_07F10A: LDA.b $00
#_07F10C: STA.b ($90),Y

#_07F10E: INY
#_07F10F: XBA
#_07F110: STA.b ($90),Y

#_07F112: INY
#_07F113: LDA.b #$20
#_07F115: STA.b ($90),Y

#_07F117: INY

#_07F118: TYA

#_07F119: SEC
#_07F11A: SBC.b #$04

#_07F11C: LSR A
#_07F11D: LSR A

#_07F11E: TAY

#_07F11F: LDA.b #$02
#_07F121: STA.b ($92),Y

;---------------------------------------------------------------------------------------------------

.exit
#_07F123: PLY

#_07F124: RTS

;===================================================================================================

InitializeLink:
#_07F125: PHB
#_07F126: PHK
#_07F127: PLB

#_07F128: LDA.b #$02
#_07F12A: STA.b $2F

#_07F12C: STZ.b $26

#_07F12E: STZ.w $0301
#_07F131: STZ.w $037A

#_07F134: STZ.w $020B

#_07F137: STZ.w $0350

#_07F13A: STZ.w $030D
#_07F13D: STZ.w $030E

#_07F140: STZ.w $030A
#_07F143: STZ.w $02E1

#_07F146: STZ.b $3B

#_07F148: LDA.b $3A
#_07F14A: AND.b #$BF
#_07F14C: STA.b $3A

#_07F14E: STZ.w $0308
#_07F151: STZ.w $0309
#_07F154: STZ.w $0376

#_07F157: JSL ResetSwimmingState

#_07F15B: LDA.b $50
#_07F15D: AND.b #$FE
#_07F15F: STA.b $50

#_07F161: STZ.b $25
#_07F163: STZ.b $4D
#_07F165: STZ.b $46

#_07F167: STZ.w $031F
#_07F16A: STZ.w $0360
#_07F16D: STZ.w $02DA

#_07F170: STZ.b $55

#_07F172: JSR ForciblyUnequipCape_quietly
#_07F175: JSR ResetSwordAndItemUsage

#_07F178: STZ.w $037B
#_07F17B: STZ.w $0300

#_07F17E: LDA.b $67
#_07F180: AND.b #$F0
#_07F182: STA.b $67

#_07F184: STZ.w $02F5
#_07F187: STZ.w $0079

#_07F18A: PLB

#_07F18B: RTL

;===================================================================================================
; These reset property routines are so broad that I can't give them better names
;===================================================================================================
ResetLinkProperties_A:
#_07F18C: STZ.b $26
#_07F18E: STZ.b $67

#_07F190: STZ.w $031F
#_07F193: STZ.w $034A

#_07F196: JSL ResetSwimmingState

#_07F19A: STZ.w $02E1
#_07F19D: STZ.w $031F
#_07F1A0: STZ.w $03DB
#_07F1A3: STZ.w $02E0

#_07F1A6: STZ.b $56

#_07F1A8: STZ.w $03F5
#_07F1AB: STZ.w $03F7
#_07F1AE: STZ.w $03FC
#_07F1B1: STZ.w $03F8
#_07F1B4: STZ.w $03FA

#_07F1B7: STZ.w $03E9
#_07F1BA: STZ.w $0373
#_07F1BD: STZ.w $031E

#_07F1C0: STZ.w $02F2
#_07F1C3: STZ.w $02F8

#_07F1C6: STZ.w $02EA
#_07F1C9: STZ.w $02E9

#_07F1CC: STZ.w $02DB

;===================================================================================================

ResetLinkProperties_B:
#_07F1CF: STZ.w $02F5

#_07F1D2: STZ.w $0079
#_07F1D5: STZ.w $0302
#_07F1D8: STZ.w $02F4

#_07F1DB: STZ.b $48

#_07F1DD: STZ.b $5A
#_07F1DF: STZ.b $5B
#_07F1E1: STZ.b $5B

;===================================================================================================

ResetLinkProperties_C:
#_07F1E3: STZ.w $036C

#_07F1E6: STZ.w $031C
#_07F1E9: STZ.w $031D

#_07F1EC: STZ.w $0315
#_07F1EF: STZ.w $03EF

#_07F1F2: STZ.w $02E3
#_07F1F5: STZ.w $02F6

#_07F1F8: STZ.w $0301
#_07F1FB: STZ.w $037A

#_07F1FE: STZ.w $020B

#_07F201: STZ.w $0350

#_07F204: STZ.w $030D
#_07F207: STZ.w $030E
#_07F20A: STZ.w $030A

#_07F20D: STZ.b $3B
#_07F20F: STZ.b $3A
#_07F211: STZ.b $3C

#_07F213: STZ.w $0308
#_07F216: STZ.w $0309

#_07F219: STZ.w $0376

#_07F21C: STZ.b $50
#_07F21E: STZ.b $4D
#_07F220: STZ.b $46

#_07F222: STZ.w $0360
#_07F225: STZ.w $02DA

#_07F228: STZ.b $55

#_07F22A: JSR ResetSwordAndItemUsage

#_07F22D: STZ.w $037B
#_07F230: STZ.w $0300
#_07F233: STZ.w $037E

#_07F236: STZ.w $02EC

#_07F239: STZ.w $0314
#_07F23C: STZ.w $03F8

#_07F23F: STZ.w $02FA

#_07F242: RTL

;===================================================================================================

AnimateStairClimbAndSFX:
#_07F243: PHB
#_07F244: PHK
#_07F245: PLB

#_07F246: LDA.b $2E
#_07F248: CMP.b #$05
#_07F24A: BCC .dont_reset_anim_step

#_07F24C: STZ.b $2E

.dont_reset_anim_step
#_07F24E: STZ.b $2A
#_07F250: STZ.b $2B

#_07F252: STZ.w $030A

#_07F255: LDA.b #$1C
#_07F257: STA.w $0371

#_07F25A: LDA.b #$20
#_07F25C: STA.w $0378

#_07F25F: LDA.b #$01
#_07F261: STA.w $037B

;---------------------------------------------------------------------------------------------------

#_07F264: LDA.w $0462
#_07F267: AND.b #$04
#_07F269: BEQ .upwards_sfx

#_07F26B: LDA.b #$18 ; SFX2.18
#_07F26D: JSR PlayLinkSFX2Panned

#_07F270: BRA .sfx_set

.upwards_sfx
#_07F272: LDA.b #$16 ; SFX2.16
#_07F274: JSR PlayLinkSFX2Panned

;---------------------------------------------------------------------------------------------------

.sfx_set
#_07F277: STZ.b $01

#_07F279: LDX.b #$10

#_07F27B: LDA.w $0462
#_07F27E: AND.b #$04
#_07F280: BEQ .going_up

#_07F282: LDX.b #$F1

#_07F284: LDA.b #$FF
#_07F286: STA.b $01

.going_up
#_07F288: STX.b $00

#_07F28A: REP #$20

#_07F28C: LDA.b $22
#_07F28E: CLC
#_07F28F: ADC.b $00
#_07F291: STA.b $53

#_07F293: LDA.b $20
#_07F295: STA.b $51

#_07F297: SEP #$20

#_07F299: PLB

#_07F29A: RTL

;===================================================================================================

HandleLinkOnSpiralStairs:
#_07F29B: REP #$20

#_07F29D: LDA.b $22
#_07F29F: STA.w $0FC2

#_07F2A2: LDA.b $20
#_07F2A4: STA.w $0FC4

#_07F2A7: SEP #$20

#_07F2A9: LDA.w $030A
#_07F2AC: BEQ .please_continue

#_07F2AE: RTL

;---------------------------------------------------------------------------------------------------

.please_continue
#_07F2AF: STZ.w $0373

#_07F2B2: STZ.b $46
#_07F2B4: STZ.b $4D

#_07F2B6: PHB
#_07F2B7: PHK
#_07F2B8: PLB

#_07F2B9: LDA.w $0462
#_07F2BC: AND.b #$04
#_07F2BE: BEQ .going_up_a

;---------------------------------------------------------------------------------------------------

.going_down_a
#_07F2C0: LDA.b #$FE
#_07F2C2: STA.b $27

#_07F2C4: DEC.w $0371
#_07F2C7: BPL .down_dont_reset

#_07F2C9: STZ.w $0371

#_07F2CC: LDA.b #$00
#_07F2CE: STA.b $27

#_07F2D0: LDA.b #$FE
#_07F2D2: STA.b $28

.down_dont_reset
#_07F2D4: BRA .continue_a

;---------------------------------------------------------------------------------------------------

.going_up_a
#_07F2D6: LDA.b #$FE
#_07F2D8: STA.b $27

#_07F2DA: DEC.w $0371
#_07F2DD: BPL .continue_a

#_07F2DF: STZ.w $0371

#_07F2E2: LDA.b #$FE
#_07F2E4: STA.b $27

#_07F2E6: LDA.b #$02
#_07F2E8: STA.b $28

;---------------------------------------------------------------------------------------------------

.continue_a
#_07F2EA: JSL FindArbitraryLandingSpot
#_07F2EE: JSL HandleLinkAnimation_StartWithDash

#_07F2F2: LDA.w $0371
#_07F2F5: BNE .dont_reset_direction

#_07F2F7: DEC.w $0378
#_07F2FA: BPL .dont_reset_direction

#_07F2FC: STZ.w $0378

#_07F2FF: LDX.b #$04

#_07F301: LDA.w $0462
#_07F304: AND.b #$04
#_07F306: BNE .not_going_down_a

#_07F308: LDX.b #$06

.not_going_down_a
#_07F30A: STX.b $2F

;---------------------------------------------------------------------------------------------------

.dont_reset_direction
#_07F30C: LDA.b $22
#_07F30E: SEC
#_07F30F: SBC.b $53
#_07F311: BPL .positive_x

#_07F313: EOR.b #$FF
#_07F315: INC A

.positive_x
#_07F316: BNE .exit

#_07F318: REP #$20

#_07F31A: JSL RepositionAfterSpiralStairs

#_07F31E: SEP #$20

#_07F320: LDA.l $7EF3CC
#_07F324: BEQ .no_follower

#_07F326: JSL InitializeFollower

.no_follower
#_07F32A: LDA.b #$F8
#_07F32C: STA.b $00

#_07F32E: LDA.b #$FF
#_07F330: STA.b $01

#_07F332: LDA.w $0462
#_07F335: AND.b #$04
#_07F337: BNE .not_going_down_b

#_07F339: LDA.b #$0C
#_07F33B: STA.b $00
#_07F33D: STZ.b $01

.not_going_down_b
#_07F33F: REP #$20

#_07F341: LDA.b $22
#_07F343: CLC
#_07F344: ADC.b $00
#_07F346: STA.b $53

;---------------------------------------------------------------------------------------------------

#_07F348: SEP #$20

#_07F34A: LDA.b #$01
#_07F34C: STA.w $030A

#_07F34F: LDA.b #$06
#_07F351: STA.w $0378

#_07F354: LDA.w $0462
#_07F357: AND.b #$04
#_07F359: BNE .different_stair_sound

;---------------------------------------------------------------------------------------------------

#_07F35B: LDA.b #$17 ; SFX2.17
#_07F35D: JSR PlayLinkSFX2Panned

#_07F360: BRA .exit

.different_stair_sound
#_07F362: LDA.b #$19 ; SFX2.19
#_07F364: JSR PlayLinkSFX2Panned

;---------------------------------------------------------------------------------------------------

.exit
#_07F367: SEP #$20

#_07F369: PLB

#_07F36A: RTL

;===================================================================================================

FindSpiralStairsLandingSpot:
#_07F36B: PHB
#_07F36C: PHK
#_07F36D: PLB

#_07F36E: STZ.w $0373

#_07F371: STZ.b $46
#_07F373: STZ.b $4D

#_07F375: STZ.w $037B

#_07F378: REP #$20

#_07F37A: LDA.b $22
#_07F37C: STA.w $0FC2

#_07F37F: LDA.b $20
#_07F381: STA.w $0FC4

#_07F384: SEP #$20

#_07F386: DEC.w $0378
#_07F389: BPL .dont_change_direction

#_07F38B: STZ.w $0378

#_07F38E: LDA.b #$02
#_07F390: STA.b $2F

.dont_change_direction
#_07F392: LDA.b #$00
#_07F394: STA.b $27

#_07F396: LDA.b #$04
#_07F398: STA.b $28

#_07F39A: LDA.w $0462
#_07F39D: AND.b #$04
#_07F39F: BEQ .going_up

#_07F3A1: LDA.b #$02
#_07F3A3: STA.b $27

#_07F3A5: LDA.b #$FC
#_07F3A7: STA.b $28

;---------------------------------------------------------------------------------------------------

.going_up
; TODO???
#_07F3A9: LDA.w $030A
#_07F3AC: CMP.b #$02
#_07F3AE: BNE .dont_recoil

#_07F3B0: LDA.b #$10
#_07F3B2: STA.b $27
#_07F3B4: STZ.b $28

.dont_recoil
#_07F3B6: JSL FindArbitraryLandingSpot
#_07F3BA: JSL HandleLinkAnimation_StartWithDash

#_07F3BE: LDA.b $22
#_07F3C0: CMP.b $53
#_07F3C2: BNE .exit

#_07F3C4: LDA.b #$02
#_07F3C6: STA.w $030A

.exit
#_07F3C9: SEP #$20

#_07F3CB: PLB

#_07F3CC: RTL

;===================================================================================================
; just why?
;===================================================================================================
ResetPushTimer:
#_07F3CD: PHB
#_07F3CE: PHK
#_07F3CF: PLB

#_07F3D0: LDA.b #$07
#_07F3D2: STA.w $0371

#_07F3D5: PLB

#_07F3D6: RTL

;===================================================================================================

UNREACHABLE_07F3D7:
#_07F3D7: PHB
#_07F3D8: PHK
#_07F3D9: PLB

#_07F3DA: REP #$20

#_07F3DC: LDA.b $22
#_07F3DE: STA.w $0FC2

#_07F3E1: LDA.b $20
#_07F3E3: STA.w $0FC4

#_07F3E6: SEP #$20

#_07F3E8: STZ.b $28

;---------------------------------------------------------------------------------------------------

#_07F3EA: LDY.b #$08

#_07F3EC: LDA.b $11
#_07F3EE: CMP.b #$12
#_07F3F0: BNE .set_recoil

#_07F3F2: LDY.b #$FE

#_07F3F4: LDA.w $0462
#_07F3F7: AND.b #$04
#_07F3F9: BEQ .set_recoil

#_07F3FB: LDY.b #$FA

;---------------------------------------------------------------------------------------------------

.set_recoil
#_07F3FD: STY.b $27

#_07F3FF: JSL FindArbitraryLandingSpot
#_07F403: JSL HandleLinkAnimation_StartWithDash

#_07F407: PLB

#_07F408: RTL

;===================================================================================================

HandleIndoorCameraAndDoors_long:
#_07F409: PHB
#_07F40A: PHK
#_07F40B: PLB

#_07F40C: PHX
#_07F40D: JSR HandleIndoorCameraAndDoors
#_07F410: PLX

#_07F411: PLB

#_07F412: RTL

;===================================================================================================

CheckForEdgeScreenTransition:
#_07F413: PHB
#_07F414: PHK
#_07F415: PLB

#_07F416: LDA.b $5D

; check for spin attack
#_07F418: CMP.b #$03 ; LINKSTATE 03
#_07F41A: BEQ .prevent_transition

; check for medallion use
#_07F41C: CMP.b #$08 ; LINKSTATE 08
#_07F41E: BEQ .prevent_transition

#_07F420: CMP.b #$09 ; LINKSTATE 09
#_07F422: BEQ .prevent_transition

#_07F424: CMP.b #$0A ; LINKSTATE 0A
#_07F426: BEQ .prevent_transition

; check for recoil
#_07F428: LDA.b $46
#_07F42A: BEQ .allow

;---------------------------------------------------------------------------------------------------

.prevent_transition
#_07F42C: STZ.b $27
#_07F42E: STZ.b $28

#_07F430: LDA.b #$03
#_07F432: STA.w $02C6

#_07F435: REP #$20

#_07F437: LDA.w $0FC2
#_07F43A: STA.b $22

#_07F43C: LDA.w $0FC4
#_07F43F: STA.b $20

#_07F441: SEP #$20
#_07F443: SEC

#_07F444: PLB

#_07F445: RTL

;---------------------------------------------------------------------------------------------------

.allow
#_07F446: CLC

#_07F447: PLB

#_07F448: RTL

;===================================================================================================

ValidateAbilityToNag:
#_07F449: LDA.b $5D

#_07F44B: CMP.b #$00 ; LINKSTATE 00
#_07F44D: BEQ .do_check

#_07F44F: CMP.b #$04 ; LINKSTATE 04
#_07F451: BEQ .do_check

#_07F453: CMP.b #$11 ; LINKSTATE 11
#_07F455: BNE .fail

.do_check
#_07F457: LDA.b $3A
#_07F459: AND.b #$80
#_07F45B: ORA.w $0377
#_07F45E: ORA.w $0301
#_07F461: ORA.w $037A
#_07F464: ORA.w $02EC

#_07F467: ORA.w $0314
#_07F46A: ORA.w $0308
#_07F46D: ORA.w $0376
#_07F470: BNE .fail

.succeed
#_07F472: SEC

#_07F473: RTL

.fail
#_07F474: CLC

#_07F475: RTL

;===================================================================================================

ApproachTheTriforce:
#_07F476: PHB
#_07F477: PHK
#_07F478: PLB

#_07F479: LDA.b $20
#_07F47B: CMP.b #$98
#_07F47D: BCC .still_walking

#_07F47F: CMP.b #$A9
#_07F481: BCS .keep_speed

#_07F483: LDA.b #$14
#_07F485: STA.b $5E

.keep_speed
#_07F487: LDA.b #$08
#_07F489: STA.b $67
#_07F48B: STA.b $26

#_07F48D: STZ.b $2F

#_07F48F: LDA.b #$40
#_07F491: STA.b $3D

#_07F493: BRA .exit

.still_walking
#_07F495: STZ.b $2E
#_07F497: STZ.b $67
#_07F499: STZ.b $26

#_07F49B: DEC.b $3D

#_07F49D: LDA.b $3D
#_07F49F: BNE .exit

#_07F4A1: LDA.b #$02
#_07F4A3: STA.w $02DA

#_07F4A6: INC.b $B0

.exit
#_07F4A8: PLB

#_07F4A9: RTL

;===================================================================================================

CheckIfLinkIsBusy:
#_07F4AA: PHX

#_07F4AB: LDA.b $4D
#_07F4AD: ORA.w $02DA
#_07F4B0: BNE .am_busy

#_07F4B2: LDA.w $0308
#_07F4B5: AND.b #$80
#_07F4B7: BNE .am_busy

;---------------------------------------------------------------------------------------------------

; look for a duck
#_07F4B9: LDX.b #$04

.next_ancilla
#_07F4BB: LDA.w $0C4A,X
#_07F4BE: CMP.b #$27 ; ANCILLA 27
#_07F4C0: BEQ .am_busy

#_07F4C2: DEX
#_07F4C3: BPL .next_ancilla

;---------------------------------------------------------------------------------------------------

.am_free
#_07F4C5: PLX

#_07F4C6: CLC

#_07F4C7: RTL

;---------------------------------------------------------------------------------------------------

.am_busy
#_07F4C8: PLX

#_07F4C9: SEC

#_07F4CA: RTL

;===================================================================================================

ValidatePipeEntry:
#_07F4CB: LDX.b #$04

; look for and delete byrna spark
.next_ancilla
#_07F4CD: LDA.w $0C4A,X
#_07F4D0: CMP.b #$31 ; ANCILLA 31
#_07F4D2: BNE .skip_ancilla

#_07F4D4: STZ.w $037A
#_07F4D7: STZ.b $50

#_07F4D9: STZ.w $0C4A,X

#_07F4DC: BRA .continue

.skip_ancilla
#_07F4DE: DEX
#_07F4DF: BPL .next_ancilla

;---------------------------------------------------------------------------------------------------

.continue
#_07F4E1: LDA.w $0308
#_07F4E4: AND.b #$80
#_07F4E6: ORA.b $4D
#_07F4E8: BNE .fail

.succeed
#_07F4EA: CLC

#_07F4EB: RTL

.fail
#_07F4EC: SEC

#_07F4ED: RTL

;===================================================================================================
; The tin
;===================================================================================================
CacheCameraPropertiesIfOutdoors:
#_07F4EE: LDA.b $1B
#_07F4F0: BNE .indoors

#_07F4F2: JSL CacheCameraProperties

.indoors
#_07F4F6: RTS

;===================================================================================================
; Yes
;===================================================================================================
SignTextOverworld:
#_07F4F7: dw $00A5, $00A5, $0046, $003E ; 0x0000, 0x0001, 0x0002, 0x0003
#_07F4FF: dw $003E, $00A5, $00A5, $00A5 ; 0x0004, 0x0005, 0x0006, 0x0007
#_07F507: dw $00A5, $00A5, $003A, $003E ; 0x0008, 0x0009, 0x000A, 0x000B
#_07F50F: dw $003E, $00A5, $00A5, $003C ; 0x000C, 0x000D, 0x000E, 0x000F

#_07F517: dw $003B, $0047, $0040, $0040 ; 0x0010, 0x0011, 0x0012, 0x0013
#_07F51F: dw $00A5, $00A5, $003D, $00AE ; 0x0014, 0x0015, 0x0016, 0x0017
#_07F527: dw $0039, $0039, $00A5, $0039 ; 0x0018, 0x0019, 0x001A, 0x001B
#_07F52F: dw $0039, $0042, $00A5, $00A5 ; 0x001C, 0x001D, 0x001E, 0x001F

#_07F537: dw $0039, $0039, $00A5, $0039 ; 0x0020, 0x0021, 0x0022, 0x0023
#_07F53F: dw $0039, $0043, $00A5, $00A5 ; 0x0024, 0x0025, 0x0026, 0x0027
#_07F547: dw $00A5, $00A5, $00A5, $00A5 ; 0x0028, 0x0029, 0x002A, 0x002B
#_07F54F: dw $00A5, $003F, $00A5, $00A5 ; 0x002C, 0x002D, 0x002E, 0x002F

#_07F557: dw $00A5, $00A5, $00A5, $0040 ; 0x0030, 0x0031, 0x0032, 0x0033
#_07F55F: dw $00A5, $0044, $0044, $00A5 ; 0x0034, 0x0035, 0x0036, 0x0037
#_07F567: dw $00A5, $00A5, $0045, $0041 ; 0x0038, 0x0039, 0x003A, 0x003B
#_07F56F: dw $00A5, $0044, $0044, $00A5 ; 0x003C, 0x003D, 0x003E, 0x003F

;---------------------------------------------------------------------------------------------------

#_07F577: dw $00A5, $00A5, $00A5, $00A5 ; 0x0040, 0x0041, 0x0042, 0x0043
#_07F57F: dw $00A5, $00A5, $00A5, $00A5 ; 0x0044, 0x0045, 0x0046, 0x0047
#_07F587: dw $00A5, $00A5, $00A6, $00A5 ; 0x0048, 0x0049, 0x004A, 0x004B
#_07F58F: dw $00A5, $00A5, $00A5, $00A7 ; 0x004C, 0x004D, 0x004E, 0x004F

#_07F597: dw $00A5, $00A8, $00A9, $00A5 ; 0x0050, 0x0051, 0x0052, 0x0053
#_07F59F: dw $00A5, $00A5, $00A5, $00AF ; 0x0054, 0x0055, 0x0056, 0x0057
#_07F5A7: dw $00AD, $00AD, $00A5, $00A5 ; 0x0058, 0x0059, 0x005A, 0x005B
#_07F5AF: dw $00A5, $00A5, $00A5, $00A5 ; 0x005C, 0x005D, 0x005E, 0x005F

#_07F5B7: dw $00AD, $00AD, $00A5, $00A5 ; 0x0060, 0x0061, 0x0062, 0x0063
#_07F5BF: dw $00A5, $00AA, $00A5, $00A5 ; 0x0064, 0x0065, 0x0066, 0x0067
#_07F5C7: dw $00A5, $00A5, $00A5, $00A5 ; 0x0068, 0x0069, 0x006A, 0x006B
#_07F5CF: dw $00A5, $00AB, $00A5, $00A5 ; 0x006C, 0x006D, 0x006E, 0x006F

#_07F5D7: dw $00A5, $00A5, $00A5, $00A5 ; 0x0070, 0x0071, 0x0072, 0x0073
#_07F5DF: dw $00A5, $00A5, $00A5, $00A5 ; 0x0074, 0x0075, 0x0076, 0x0077
#_07F5E7: dw $00A5, $00A5, $00A5, $00AC ; 0x0078, 0x0079, 0x007A, 0x007B
#_07F5EF: dw $00A5, $00A5, $00A5, $00A5 ; 0x007C, 0x007D, 0x007E, 0x007F

;---------------------------------------------------------------------------------------------------

SignTextUnderworld:
#_07F5F7: dw $00B2, $00B2, $00B2, $00C5 ; 0x0000, 0x0001, 0x0002, 0x0003
#_07F5FF: dw $00B2, $00B2, $00B2, $00B2 ; 0x0004, 0x0005, 0x0006, 0x0007
#_07F607: dw $00B2, $00B2, $00B2, $00B2 ; 0x0008, 0x0009, 0x000A, 0x000B
#_07F60F: dw $00B2, $00B2, $00C2, $00B2 ; 0x000C, 0x000D, 0x000E, 0x000F

#_07F617: dw $00BC, $00B2, $00B2, $00B2 ; 0x0010, 0x0011, 0x0012, 0x0013
#_07F61F: dw $00B2, $00B2, $00B2, $00B2 ; 0x0014, 0x0015, 0x0016, 0x0017
#_07F627: dw $00B2, $00B2, $00B2, $00B2 ; 0x0018, 0x0019, 0x001A, 0x001B
#_07F62F: dw $00B2, $00B2, $00B2, $00B2 ; 0x001C, 0x001D, 0x001E, 0x001F

#_07F637: dw $00B2, $00B2, $00B2, $00B2 ; 0x0020, 0x0021, 0x0022, 0x0023
#_07F63F: dw $00B2, $00B2, $00B2, $00B3 ; 0x0024, 0x0025, 0x0026, 0x0027
#_07F647: dw $00B7, $00B2, $00B2, $00B2 ; 0x0028, 0x0029, 0x002A, 0x002B
#_07F64F: dw $00B2, $00B2, $00B2, $00B2 ; 0x002C, 0x002D, 0x002E, 0x002F

#_07F657: dw $00B2, $00B2, $00B2, $00B2 ; 0x0030, 0x0031, 0x0032, 0x0033
#_07F65F: dw $00B2, $00B2, $00B2, $00B2 ; 0x0034, 0x0035, 0x0036, 0x0037
#_07F667: dw $00B2, $00B2, $00B2, $00B2 ; 0x0038, 0x0039, 0x003A, 0x003B
#_07F66F: dw $00B2, $00B2, $00C3, $00B2 ; 0x003C, 0x003D, 0x003E, 0x003F

#_07F677: dw $00B2, $00B2, $00B2, $00B2 ; 0x0040, 0x0041, 0x0042, 0x0043
#_07F67F: dw $00B2, $00B2, $00B2, $00B2 ; 0x0044, 0x0045, 0x0046, 0x0047
#_07F687: dw $00B2, $00B2, $00B2, $00BD ; 0x0048, 0x0049, 0x004A, 0x004B
#_07F68F: dw $00B2, $00B2, $00B2, $00B2 ; 0x004C, 0x004D, 0x004E, 0x004F

#_07F697: dw $00B2, $00B2, $00B2, $00B2 ; 0x0050, 0x0051, 0x0052, 0x0053
#_07F69F: dw $00B2, $00B2, $00B7, $00B2 ; 0x0054, 0x0055, 0x0056, 0x0057
#_07F6A7: dw $00B2, $00B2, $00B2, $00B2 ; 0x0058, 0x0059, 0x005A, 0x005B
#_07F6AF: dw $00B2, $00B2, $00B2, $00B2 ; 0x005C, 0x005D, 0x005E, 0x005F

#_07F6B7: dw $00B2, $00B2, $00B2, $00B2 ; 0x0060, 0x0061, 0x0062, 0x0063
#_07F6BF: dw $00B8, $00B2, $00B2, $00B2 ; 0x0064, 0x0065, 0x0066, 0x0067
#_07F6C7: dw $00B2, $00B2, $00BD, $00B2 ; 0x0068, 0x0069, 0x006A, 0x006B
#_07F6CF: dw $00B2, $00B2, $00B2, $00B2 ; 0x006C, 0x006D, 0x006E, 0x006F

#_07F6D7: dw $00B2, $00B2, $00B2, $00BE ; 0x0070, 0x0071, 0x0072, 0x0073
#_07F6DF: dw $00B2, $00B2, $00B2, $00C4 ; 0x0074, 0x0075, 0x0076, 0x0077
#_07F6E7: dw $00B2, $00B2, $00B2, $00B2 ; 0x0078, 0x0079, 0x007A, 0x007B
#_07F6EF: dw $00BE, $00B2, $00C0, $00B2 ; 0x007C, 0x007D, 0x007E, 0x007F

#_07F6F7: dw $00B2, $00B2, $00B2, $00B2 ; 0x0080, 0x0081, 0x0082, 0x0083
#_07F6FF: dw $00B2, $00B2, $00B2, $00B2 ; 0x0084, 0x0085, 0x0086, 0x0087
#_07F707: dw $00B2, $00B2, $00B2, $00B2 ; 0x0088, 0x0089, 0x008A, 0x008B
#_07F70F: dw $00B2, $00B2, $00B2, $00B2 ; 0x008C, 0x008D, 0x008E, 0x008F

#_07F717: dw $00B2, $00B2, $00B2, $00B2 ; 0x0090, 0x0091, 0x0092, 0x0093
#_07F71F: dw $00B2, $00B2, $00B2, $00B9 ; 0x0094, 0x0095, 0x0096, 0x0097
#_07F727: dw $00B2, $00B2, $00B2, $00B2 ; 0x0098, 0x0099, 0x009A, 0x009B
#_07F72F: dw $00B2, $00B2, $00B2, $00B2 ; 0x009C, 0x009D, 0x009E, 0x009F

#_07F737: dw $00B2, $00B2, $00B2, $00B2 ; 0x00A0, 0x00A1, 0x00A2, 0x00A3
#_07F73F: dw $00B2, $00B2, $00B2, $00B2 ; 0x00A4, 0x00A5, 0x00A6, 0x00A7
#_07F747: dw $00B2, $00B2, $00B2, $00B2 ; 0x00A8, 0x00A9, 0x00AA, 0x00AB
#_07F74F: dw $00B2, $00B2, $00B2, $00B2 ; 0x00AC, 0x00AD, 0x00AE, 0x00AF

#_07F757: dw $00BF, $00B2, $00B2, $00B2 ; 0x00B0, 0x00B1, 0x00B2, 0x00B3
#_07F75F: dw $00B2, $00B2, $00B2, $00B2 ; 0x00B4, 0x00B5, 0x00B6, 0x00B7
#_07F767: dw $00B2, $00B2, $00B2, $00B2 ; 0x00B8, 0x00B9, 0x00BA, 0x00BB
#_07F76F: dw $00B2, $00B2, $00B2, $00B2 ; 0x00BC, 0x00BD, 0x00BE, 0x00BF

#_07F777: dw $00B2, $00B2, $00B2, $00B2 ; 0x00C0, 0x00C1, 0x00C2, 0x00C3
#_07F77F: dw $00C1, $00B2, $00B2, $00B2 ; 0x00C4, 0x00C5, 0x00C6, 0x00C7
#_07F787: dw $00B2, $00B2, $00B2, $00B2 ; 0x00C8, 0x00C9, 0x00CA, 0x00CB
#_07F78F: dw $00B2, $00B2, $00B2, $00B2 ; 0x00CC, 0x00CD, 0x00CE, 0x00CF

#_07F797: dw $00B2, $00B2, $00B2, $00B2 ; 0x00D0, 0x00D1, 0x00D2, 0x00D3
#_07F79F: dw $00B2, $00B2, $00C1, $00B2 ; 0x00D4, 0x00D5, 0x00D6, 0x00D7
#_07F7A7: dw $00B2, $00B2, $00B2, $00B2 ; 0x00D8, 0x00D9, 0x00DA, 0x00DB
#_07F7AF: dw $00B2, $00B2, $00B2, $00B2 ; 0x00DC, 0x00DD, 0x00DE, 0x00DF

#_07F7B7: dw $00B2, $00B2, $00B2, $00B2 ; 0x00E0, 0x00E1, 0x00E2, 0x00E3
#_07F7BF: dw $00B2, $00B2, $00B2, $00B2 ; 0x00E4, 0x00E5, 0x00E6, 0x00E7
#_07F7C7: dw $00B2, $00B2, $00B6, $00B2 ; 0x00E8, 0x00E9, 0x00EA, 0x00EB
#_07F7CF: dw $00B2, $00B2, $00B2, $00B2 ; 0x00EC, 0x00ED, 0x00EE, 0x00EF

#_07F7D7: dw $00B2, $00B2, $00B2, $00B2 ; 0x00F0, 0x00F1, 0x00F2, 0x00F3
#_07F7DF: dw $00B2, $00B2, $00B2, $00B2 ; 0x00F4, 0x00F5, 0x00F6, 0x00F7
#_07F7E7: dw $00B2, $00B2, $00B2, $00B2 ; 0x00F8, 0x00F9, 0x00FA, 0x00FB
#_07F7EF: dw $00B2, $00B2, $00B2, $00B2 ; 0x00FC, 0x00FD, 0x00FE, 0x00FF

;---------------------------------------------------------------------------------------------------

#_07F7F7: dw $00B2, $00B2, $00B2, $00B2 ; 0x0100, 0x0101, 0x0102, 0x0103
#_07F7FF: dw $00B2, $00B2, $00B2, $00B2 ; 0x0104, 0x0105, 0x0106, 0x0107
#_07F807: dw $00B2, $00B2, $00B2, $00B2 ; 0x0108, 0x0109, 0x010A, 0x010B
#_07F80F: dw $00B2, $00B3, $00B2, $00B2 ; 0x010C, 0x010D, 0x010E, 0x010F

#_07F817: dw $00B2, $00B2, $00B2, $00B2 ; 0x0110, 0x0111, 0x0112, 0x0113
#_07F81F: dw $00B2, $00B2, $00B2, $00B2 ; 0x0114, 0x0115, 0x0116, 0x0117
#_07F827: dw $00B2, $00B2, $00B2, $00B2 ; 0x0118, 0x0119, 0x011A, 0x011B
#_07F82F: dw $00B2, $00B2, $00B2, $00B2 ; 0x011C, 0x011D, 0x011E, 0x011F

#_07F837: dw $00B2, $00B2, $00B2, $00B2 ; 0x0120, 0x0121, 0x0122, 0x0123
#_07F83F: dw $00B2, $0177, $00B2, $00B2 ; 0x0124, 0x0125, 0x0126, 0x0127
#_07F847: dw $00B2, $00B2, $00B2, $00B2 ; 0x0128, 0x0129, 0x012A, 0x012B
#_07F84F: dw $00B2, $00B2, $00B2, $00B2 ; 0x012C, 0x012D, 0x012E, 0x012F

#_07F857: dw $00B2, $00B2, $00B2, $00B2 ; 0x0130, 0x0131, 0x0132, 0x0133
#_07F85F: dw $00B2, $00B2, $00B2, $00B2 ; 0x0134, 0x0135, 0x0136, 0x0137
#_07F867: dw $00B2, $00B2, $00B2, $00B2 ; 0x0138, 0x0139, 0x013A, 0x013B
#_07F86F: dw $00B2, $00B2, $00B2, $00B2 ; 0x013C, 0x013D, 0x013E, 0x013F

;===================================================================================================
; FREE ROM: 0x19
;===================================================================================================
NULL_07F877:
#_07F877: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_07F87F: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_07F887: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_07F88F: db $FF

;===================================================================================================

PaletteBlackAndWhiteSomething_Conditional:
#_07F890: LDA.b $B0
#_07F892: BNE PaletteBlackSomething

;===================================================================================================

PaletteBlackAndWhiteSomething:
#_07F894: REP #$20

#_07F896: LDX.b #$00

.next
#_07F898: LDA.l $7EC300,X
#_07F89C: STA.l $7FDD80,X

#_07F8A0: LDA.l $7EC380,X
#_07F8A4: STA.l $7FDE00,X

#_07F8A8: LDA.l $7EC400,X
#_07F8AC: STA.l $7FDE80,X

#_07F8B0: LDA.l $7EC480,X
#_07F8B4: STA.l $7FDF00,X

#_07F8B8: LDA.w #$7FFF ; RGB: #F8F8F8
#_07F8BB: STA.l $7EC300,X
#_07F8BF: STA.l $7EC380,X
#_07F8C3: STA.l $7EC400,X
#_07F8C7: STA.l $7EC480,X

#_07F8CB: INX
#_07F8CC: INX
#_07F8CD: CPX.b #$80
#_07F8CF: BNE .next

;---------------------------------------------------------------------------------------------------

#_07F8D1: LDA.l $7EC500
#_07F8D5: STA.l $7EC540

#_07F8D9: LDA.w #$0000
#_07F8DC: STA.l $7EC007

#_07F8E0: LDA.w #$0002
#_07F8E3: STA.l $7EC009

#_07F8E7: SEP #$20

#_07F8E9: INC.b $B0

#_07F8EB: RTL

;===================================================================================================

PaletteBlackSomething:
#_07F8EC: JSL PaletteFilter_BlindingWhite

#_07F8F0: REP #$30

#_07F8F2: LDA.l $7EC009
#_07F8F6: CMP.w #$00FF
#_07F8F9: BNE RestorePalette

;---------------------------------------------------------------------------------------------------

#_07F8FB: LDX.w #$000E
#_07F8FE: LDA.w #$0000 ; RGB: #000000

.next_color
#_07F901: STA.l $7EC3B0,X
#_07F905: STA.l $7EC5B0,X

#_07F909: DEX
#_07F90A: DEX
#_07F90B: BPL .next_color

;---------------------------------------------------------------------------------------------------

#_07F90D: STA.l $7EC007
#_07F911: STA.l $7EC009

#_07F915: SEP #$20

#_07F917: STZ.b $11

#_07F919: SEP #$30 ; redundant really

#_07F91B: RTL

;===================================================================================================

RestorePalette:
#_07F91C: CMP.w #$0000
#_07F91F: BNE .exit

#_07F921: LDA.l $7EC007
#_07F925: CMP.w #$001F
#_07F928: BNE .exit

;---------------------------------------------------------------------------------------------------

#_07F92A: LDX.w #$0000

.next
#_07F92D: LDA.l $7FDD80,X
#_07F931: STA.l $7EC300,X

#_07F935: LDA.l $7FDDC0,X
#_07F939: STA.l $7EC340,X

#_07F93D: LDA.l $7FDE00,X
#_07F941: STA.l $7EC380,X

#_07F945: LDA.l $7FDE40,X
#_07F949: STA.l $7EC3C0,X

#_07F94D: LDA.l $7FDE80,X
#_07F951: STA.l $7EC400,X

#_07F955: LDA.l $7FDEC0,X
#_07F959: STA.l $7EC440,X

#_07F95D: LDA.l $7FDF00,X
#_07F961: STA.l $7EC480,X

#_07F965: LDA.l $7FDF40,X
#_07F969: STA.l $7EC4C0,X

#_07F96D: INX
#_07F96E: INX
#_07F96F: CPX.w #$0040
#_07F972: BNE .next

;---------------------------------------------------------------------------------------------------

#_07F974: SEP #$20

#_07F976: STZ.b $1D

.exit
#_07F978: SEP #$30

#_07F97A: RTL

;===================================================================================================

Palettes_BlueThunder1:
; #RRGGBB :  202010, 383018, 504028, 685028, B0F8F8, 2050B0, 88B0F0
#_07F97B: dw  $0884,  $0CC7,  $150A,  $154D,  $7FF6,  $5944,  $7AD1

Palettes_BlueThunder2:
; #RRGGBB :  202010, 383018, 504028, 685028, F8F8B0, 88B0F0, 786840
#_07F989: dw  $0884,  $0CC7,  $150A,  $154D,  $5BFF,  $7AD1,  $21AF

Palettes_BlueThunder3:
; #RRGGBB :  202020, 003090, 3060C0, 6898F8, 00F8F8, 2050B0, 0088F8
#_07F997: dw  $1084,  $48C0,  $6186,  $7E6D,  $7FE0,  $5944,  $7E20

Palettes_BlueThunder4:
; #RRGGBB :  202020, 700000, C81020, F84050, 00F8F8, 2050B0, 0088F8
#_07F9A5: dw  $1084,  $000E,  $1059,  $291F,  $7FE0,  $5944,  $7E20

Palettes_BlueThunder5:
; #RRGGBB :  202020, 404028, 605830, 786840, B0F8F8, 605038, 88B0F0
#_07F9B3: dw  $1084,  $1508,  $196C,  $21AF,  $7FF6,  $1D4C,  $7AD1

;---------------------------------------------------------------------------------------------------

; Each of these is a different step of the flash cycle.
Palettes_GanonTowerFlash:
; #RRGGBB :  F8F8F8, 202010, 403038, 707038, A0A068, C0C088, 505038, 602830
#_07F9C1: dw  $7FFF,  $0884,  $1CC8,  $1DCE,  $3694,  $4718,  $1D4A,  $18AC

; #RRGGBB :  F8F8F8, 404030, 784858, A08068, D0B098, F8C088, 505038, 784070
#_07F9D1: dw  $7FFF,  $1908,  $2D2F,  $3614,  $4EDA,  $471F,  $1D4A,  $390F

; #RRGGBB :  F8F8F8, 683068, 8858B0, A888A8, D8C0F8, F8F8F8, 505038, A05078
#_07F9E1: dw  $7FFF,  $34CD,  $5971,  $5635,  $7F1B,  $7FFF,  $1D4A,  $3D54

; #RRGGBB :  F8F8F8, 404030, 784858, A08068, D0B098, F8C088, 505038, 784070
#_07F9F1: dw  $7FFF,  $1908,  $2D2F,  $3614,  $4EDA,  $471F,  $1D4A,  $390F

; #RRGGBB :  F8F8F8, 202010, 504808, 787840, A8A870, C8C890, 605038, 602830
#_07FA01: dw  $7FFF,  $0884,  $052A,  $21EF,  $3AB5,  $4B39,  $1D4C,  $18AC

;===================================================================================================

#EXIT_07FA11:
#_07FA11: RTL

;===================================================================================================

FlashGanonTowerPalette:
#_07FA12: LDA.w $04C6
#_07FA15: BNE EXIT_07FA11

#_07FA17: LDA.b $8A
#_07FA19: CMP.b #$43 ; OW 43
#_07FA1B: BEQ .on_dark_dm

#_07FA1D: CMP.b #$45 ; OW 45
#_07FA1F: BEQ .on_dark_dm

#_07FA21: CMP.b #$47 ; OW 47
#_07FA23: BNE EXIT_07FA11

;---------------------------------------------------------------------------------------------------

.on_dark_dm
#_07FA25: PHB
#_07FA26: PHK
#_07FA27: PLB

#_07FA28: LDA.b $1A
#_07FA2A: CMP.b #$03
#_07FA2C: BEQ .normal_color

#_07FA2E: CMP.b #$05
#_07FA30: BEQ .pink

#_07FA32: CMP.b #$24
#_07FA34: BEQ .thunder

#_07FA36: CMP.b #$2C
#_07FA38: BEQ .pink

#_07FA3A: CMP.b #$58
#_07FA3C: BEQ .normal_color

#_07FA3E: CMP.b #$5A
#_07FA40: BNE .bright_white

.pink
#_07FA42: REP #$20

;---------------------------------------------------------------------------------------------------

#_07FA44: LDX.b #$02

.restore_next
#_07FA46: LDA.l $7EC360,X
#_07FA4A: STA.l $7EC560,X

#_07FA4E: LDA.l $7EC370,X
#_07FA52: STA.l $7EC570,X

#_07FA56: LDA.l $7EC390,X
#_07FA5A: STA.l $7EC590,X

#_07FA5E: LDA.l $7EC3E0,X
#_07FA62: STA.l $7EC5E0,X

#_07FA66: LDA.l $7EC3F0,X
#_07FA6A: STA.l $7EC5F0,X

#_07FA6E: INX
#_07FA6F: INX
#_07FA70: CPX.b #$10
#_07FA72: BNE .restore_next

#_07FA74: BRA .bright_white

;---------------------------------------------------------------------------------------------------

.thunder
#_07FA76: LDX.b #$36 ; SFX2.36
#_07FA78: STX.w $012E

;---------------------------------------------------------------------------------------------------

.normal_color
#_07FA7B: REP #$20

#_07FA7D: LDX.b #$02
#_07FA7F: LDY.b #$00

.next_thunder
#_07FA81: LDA.w Palettes_BlueThunder1,Y
#_07FA84: STA.l $7EC560,X

#_07FA88: LDA.w Palettes_BlueThunder2,Y
#_07FA8B: STA.l $7EC570,X

#_07FA8F: LDA.w Palettes_BlueThunder3,Y
#_07FA92: STA.l $7EC590,X

#_07FA96: LDA.w Palettes_BlueThunder4,Y
#_07FA99: STA.l $7EC5E0,X

#_07FA9D: LDA.w Palettes_BlueThunder5,Y
#_07FAA0: STA.l $7EC5F0,X

#_07FAA4: INY
#_07FAA5: INY

#_07FAA6: INX
#_07FAA7: INX
#_07FAA8: CPX.b #$10
#_07FAAA: BNE .next_thunder

;---------------------------------------------------------------------------------------------------

.bright_white
#_07FAAC: SEP #$20

#_07FAAE: LDX.b #$00
#_07FAB0: LDY.b #$40

#_07FAB2: LDA.b $8A
#_07FAB4: CMP.b #$43 ; OW 43
#_07FAB6: BEQ .main_mountain

#_07FAB8: CMP.b #$45 ; OW 45
#_07FABA: BNE .next_gt

;---------------------------------------------------------------------------------------------------

.main_mountain
#_07FABC: LDA.l $7EF2C3
#_07FAC0: AND.b #$20
#_07FAC2: BNE .gt_opened

#_07FAC4: LDA.b $1A
#_07FAC6: AND.b #$0C
#_07FAC8: ASL A
#_07FAC9: ASL A
#_07FACA: TAY

;---------------------------------------------------------------------------------------------------

.next_gt
#_07FACB: REP #$20

#_07FACD: LDA.w Palettes_GanonTowerFlash,Y
#_07FAD0: STA.l $7EC5D0,X

#_07FAD4: INY
#_07FAD5: INY

#_07FAD6: INX
#_07FAD7: INX
#_07FAD8: CPX.b #$10
#_07FADA: BNE .next_gt

;---------------------------------------------------------------------------------------------------

.gt_opened
#_07FADC: SEP #$20

#_07FADE: PLB

#_07FADF: INC.b $15

#_07FAE1: RTL

;===================================================================================================

ApplyOverworldOverlay:
#_07FAE2: PHB

#_07FAE3: LDA.b #$7E
#_07FAE5: PHA
#_07FAE6: PLB

#_07FAE7: REP #$30

#_07FAE9: LDA.b $8A
#_07FAEB: ASL A
#_07FAEC: TAX

#_07FAED: JSR (.vectors,X)

#_07FAF0: SEP #$30

#_07FAF2: PLB

#_07FAF3: RTL

;---------------------------------------------------------------------------------------------------

.vectors
#_07FAF4: dw OverworldOverlay_LumberjackTree        ; 0x00
#_07FAF6: dw OverworldOverlay_LumberjackTree        ; 0x01
#_07FAF8: dw OverworldOverlay_LumberjackTree        ; 0x02
#_07FAFA: dw OverworldOverlay_TurtleRockPortal      ; 0x03
#_07FAFC: dw OverworldOverlay_TurtleRockPortal      ; 0x04
#_07FAFE: dw OverworldOverlay_TurtleRockPortal      ; 0x05
#_07FB00: dw OverworldOverlay_TurtleRockPortal      ; 0x06
#_07FB02: dw OverworldOverlay_TurtleRockPortal      ; 0x07
#_07FB04: dw OverworldOverlay_BonkRocks             ; 0x08
#_07FB06: dw OverworldOverlay_BonkRocks             ; 0x09
#_07FB08: dw OverworldOverlay_BonkRocks             ; 0x0A
#_07FB0A: dw OverworldOverlay_BonkRocks             ; 0x0B
#_07FB0C: dw OverworldOverlay_BonkRocks             ; 0x0C
#_07FB0E: dw OverworldOverlay_BonkRocks             ; 0x0D
#_07FB10: dw OverworldOverlay_BonkRocks             ; 0x0E
#_07FB12: dw OverworldOverlay_BonkRocks             ; 0x0F
#_07FB14: dw OverworldOverlay_BonkRocks             ; 0x10
#_07FB16: dw OverworldOverlay_BonkRocks             ; 0x11
#_07FB18: dw OverworldOverlay_BonkRocks             ; 0x12
#_07FB1A: dw OverworldOverlay_BonkRocks             ; 0x13
#_07FB1C: dw OverworldOverlay_KingsTomb             ; 0x14
#_07FB1E: dw OverworldOverlay_WeatherVane           ; 0x15
#_07FB20: dw OverworldOverlay_WeatherVane           ; 0x16
#_07FB22: dw OverworldOverlay_WeatherVane           ; 0x17
#_07FB24: dw OverworldOverlay_WeatherVane           ; 0x18
#_07FB26: dw OverworldOverlay_WeatherVane           ; 0x19
#_07FB28: dw OverworldOverlay_CastleGate            ; 0x1A
#_07FB2A: dw OverworldOverlay_CastleGate            ; 0x1B
#_07FB2C: dw OverworldOverlay_CastleGate            ; 0x1C
#_07FB2E: dw OverworldOverlay_LinksHouseBonkRocks   ; 0x1D
#_07FB30: dw OverworldOverlay_LinksHouseBonkRocks   ; 0x1E
#_07FB32: dw OverworldOverlay_LinksHouseBonkRocks   ; 0x1F
#_07FB34: dw OverworldOverlay_WeatherVane           ; 0x20
#_07FB36: dw OverworldOverlay_WeatherVane           ; 0x21
#_07FB38: dw OverworldOverlay_LinksHouseBonkRocks   ; 0x22
#_07FB3A: dw OverworldOverlay_CastleGate            ; 0x23
#_07FB3C: dw OverworldOverlay_CastleGate            ; 0x24
#_07FB3E: dw OverworldOverlay_LinksHouseBonkRocks   ; 0x25
#_07FB40: dw OverworldOverlay_LinksHouseBonkRocks   ; 0x26
#_07FB42: dw OverworldOverlay_LinksHouseBonkRocks   ; 0x27
#_07FB44: dw OverworldOverlay_LinksHouseBonkRocks   ; 0x28
#_07FB46: dw OverworldOverlay_LinksHouseBonkRocks   ; 0x29
#_07FB48: dw OverworldOverlay_LinksHouseBonkRocks   ; 0x2A
#_07FB4A: dw OverworldOverlay_LinksHouseBonkRocks   ; 0x2B
#_07FB4C: dw OverworldOverlay_CheckerBoardCave      ; 0x2C
#_07FB4E: dw OverworldOverlay_CheckerBoardCave      ; 0x2D
#_07FB50: dw OverworldOverlay_CheckerBoardCave      ; 0x2E
#_07FB52: dw OverworldOverlay_CheckerBoardCave      ; 0x2F
#_07FB54: dw OverworldOverlay_CheckerBoardCave      ; 0x30
#_07FB56: dw OverworldOverlay_CheckerBoardCave      ; 0x31
#_07FB58: dw OverworldOverlay_IceRodThief           ; 0x32
#_07FB5A: dw OverworldOverlay_IceRodThief           ; 0x33
#_07FB5C: dw OverworldOverlay_IceRodThief           ; 0x34
#_07FB5E: dw OverworldOverlay_IceRodThief           ; 0x35
#_07FB60: dw OverworldOverlay_IceRodThief           ; 0x36
#_07FB62: dw OverworldOverlay_IceRodThief           ; 0x37
#_07FB64: dw OverworldOverlay_CheckerBoardCave      ; 0x38
#_07FB66: dw OverworldOverlay_CheckerBoardCave      ; 0x39
#_07FB68: dw OverworldOverlay_DesertThief           ; 0x3A
#_07FB6A: dw OverworldOverlay_DrainedDam            ; 0x3B
#_07FB6C: dw OverworldOverlay_SkullWoods            ; 0x3C
#_07FB6E: dw OverworldOverlay_SkullWoods            ; 0x3D
#_07FB70: dw OverworldOverlay_SkullWoods            ; 0x3E
#_07FB72: dw OverworldOverlay_SkullWoods            ; 0x3F
#_07FB74: dw OverworldOverlay_SkullWoods            ; 0x40
#_07FB76: dw OverworldOverlay_SkullWoods            ; 0x41
#_07FB78: dw OverworldOverlay_GanonsTower           ; 0x42
#_07FB7A: dw OverworldOverlay_GanonsTower           ; 0x43
#_07FB7C: dw OverworldOverlay_GanonsTower           ; 0x44
#_07FB7E: dw OverworldOverlay_HookshotCave          ; 0x45
#_07FB80: dw OverworldOverlay_HookshotCave          ; 0x46
#_07FB82: dw OverworldOverlay_TurtleRock            ; 0x47
#_07FB84: dw OverworldOverlay_SkullWoods            ; 0x48
#_07FB86: dw OverworldOverlay_SkullWoods            ; 0x49
#_07FB88: dw OverworldOverlay_GargoylesDomain       ; 0x4A
#_07FB8A: dw OverworldOverlay_GanonsTower           ; 0x4B
#_07FB8C: dw OverworldOverlay_GanonsTower           ; 0x4C
#_07FB8E: dw OverworldOverlay_HookshotCave          ; 0x4D
#_07FB90: dw OverworldOverlay_HookshotCave          ; 0x4E
#_07FB92: dw OverworldOverlay_GargoylesDomain       ; 0x4F
#_07FB94: dw OverworldOverlay_GargoylesDomain       ; 0x50
#_07FB96: dw OverworldOverlay_GargoylesDomain       ; 0x51
#_07FB98: dw OverworldOverlay_GargoylesDomain       ; 0x52
#_07FB9A: dw OverworldOverlay_GargoylesDomain       ; 0x53
#_07FB9C: dw OverworldOverlay_GargoylesDomain       ; 0x54
#_07FB9E: dw OverworldOverlay_GargoylesDomain       ; 0x55
#_07FBA0: dw OverworldOverlay_GargoylesDomain       ; 0x56
#_07FBA2: dw OverworldOverlay_GargoylesDomain       ; 0x57
#_07FBA4: dw OverworldOverlay_GargoylesDomain       ; 0x58
#_07FBA6: dw OverworldOverlay_GargoylesDomain       ; 0x59
#_07FBA8: dw OverworldOverlay_PyramidHole           ; 0x5A
#_07FBAA: dw OverworldOverlay_PyramidHole           ; 0x5B
#_07FBAC: dw OverworldOverlay_PyramidHole           ; 0x5C
#_07FBAE: dw OverworldOverlay_POD                   ; 0x5D
#_07FBB0: dw OverworldOverlay_POD                   ; 0x5E
#_07FBB2: dw OverworldOverlay_POD                   ; 0x5F
#_07FBB4: dw OverworldOverlay_GargoylesDomain       ; 0x60
#_07FBB6: dw OverworldOverlay_GargoylesDomain       ; 0x61
#_07FBB8: dw OverworldOverlay_PegPuzzle             ; 0x62
#_07FBBA: dw OverworldOverlay_PyramidHole           ; 0x63
#_07FBBC: dw OverworldOverlay_PyramidHole           ; 0x64
#_07FBBE: dw OverworldOverlay_MiseryMire            ; 0x65
#_07FBC0: dw OverworldOverlay_POD                   ; 0x66
#_07FBC2: dw OverworldOverlay_POD                   ; 0x67
#_07FBC4: dw OverworldOverlay_MiseryMire            ; 0x68
#_07FBC6: dw OverworldOverlay_MiseryMire            ; 0x69
#_07FBC8: dw OverworldOverlay_MiseryMire            ; 0x6A
#_07FBCA: dw OverworldOverlay_LinksHouseBonkRocks   ; 0x6B
#_07FBCC: dw OverworldOverlay_MiseryMire            ; 0x6C
#_07FBCE: dw OverworldOverlay_MiseryMire            ; 0x6D
#_07FBD0: dw OverworldOverlay_MiseryMire            ; 0x6E
#_07FBD2: dw OverworldOverlay_MiseryMire            ; 0x6F
#_07FBD4: dw OverworldOverlay_MiseryMire            ; 0x70
#_07FBD6: dw OverworldOverlay_MiseryMire            ; 0x71
#_07FBD8: dw NULL_07FFF4                            ; 0x72
#_07FBDA: dw NULL_07FFF4                            ; 0x73
#_07FBDC: dw NULL_07FFF4                            ; 0x74
#_07FBDE: dw NULL_07FFF4                            ; 0x75
#_07FBE0: dw NULL_07FFF4                            ; 0x76
#_07FBE2: dw OverworldOverlay_IceRodThief           ; 0x77
#_07FBE4: dw OverworldOverlay_MiseryMire            ; 0x78
#_07FBE6: dw OverworldOverlay_MiseryMire            ; 0x79
#_07FBE8: dw NULL_07FFF4                            ; 0x7A
#_07FBEA: dw OverworldOverlay_DrainedDam            ; 0x7B
#_07FBEC: dw NULL_07FFF4                            ; 0x7C
#_07FBEE: dw NULL_07FFF4                            ; 0x7D
#_07FBF0: dw NULL_07FFF4                            ; 0x7E
#_07FBF2: dw NULL_07FFF4                            ; 0x7F

;===================================================================================================

OverworldOverlay_LumberjackTree:
#_07FBF4: LDA.w #$0E2C
#_07FBF7: STA.w $7E2816
#_07FBFA: STA.w $7E2818
#_07FBFD: STA.w $7E281A
#_07FC00: STA.w $7E281C
#_07FC03: STA.w $7E2896
#_07FC06: STA.w $7E289C

#_07FC09: INC A
#_07FC0A: STA.w $7E2898

#_07FC0D: INC A
#_07FC0E: STA.w $7E289A

#_07FC11: INC A
#_07FC12: STA.w $7E2916

#_07FC15: INC A
#_07FC16: STA.w $7E2918

#_07FC19: INC A
#_07FC1A: STA.w $7E291A

#_07FC1D: INC A
#_07FC1E: STA.w $7E291C

#_07FC21: INC A
#_07FC22: STA.w $7E2996

#_07FC25: INC A
#_07FC26: STA.w $7E2998

#_07FC29: INC A
#_07FC2A: STA.w $7E299A

#_07FC2D: INC A
#_07FC2E: STA.w $7E299C

#_07FC31: INC A
#_07FC32: STA.w $7E2A18

#_07FC35: INC A
#_07FC36: STA.w $7E2A1A

#_07FC39: RTS

;===================================================================================================

OverworldOverlay_TurtleRockPortal:
#_07FC3A: LDA.w #$0212
#_07FC3D: STA.w $7E2720

#_07FC40: RTS

;===================================================================================================

OverworldOverlay_BonkRocks:
#_07FC41: LDX.w #$0506

;===================================================================================================

OverworldOverlay_DrawRevealedStairs:
#_07FC44: LDA.w #$0912
#_07FC47: STA.w $7E2000,X

#_07FC4A: INC A
#_07FC4B: STA.w $7E2002,X

#_07FC4E: INC A
#_07FC4F: STA.w $7E2080,X

#_07FC52: INC A
#_07FC53: STA.w $7E2082,X

#_07FC56: RTS

;===================================================================================================

OverworldOverlay_KingsTomb:
#_07FC57: LDA.w #$0DCB
#_07FC5A: STA.w $7E2532

#_07FC5D: INC A
#_07FC5E: STA.w $7E2534

#_07FC61: LDA.w #$0DD1
#_07FC64: STA.w $7E25B2

#_07FC67: INC A
#_07FC68: STA.w $7E25B4

#_07FC6B: INC A
#_07FC6C: STA.w $7E2632

#_07FC6F: INC A
#_07FC70: STA.w $7E2634

#_07FC73: RTS

;===================================================================================================

OverworldOverlay_WeatherVane:
#_07FC74: LDA.w #$0E1B
#_07FC77: STA.w $7E2C3E

#_07FC7A: STA.w $7E2C42

#_07FC7D: INC A
#_07FC7E: STA.w $7E2C40

#_07FC81: INC A
#_07FC82: STA.w $7E2CBE

#_07FC85: INC A
#_07FC86: STA.w $7E2CC0

#_07FC89: INC A
#_07FC8A: STA.w $7E2CC2

#_07FC8D: RTS

;===================================================================================================

OverworldOverlay_CastleGate:
#_07FC8E: LDA.w #$0DBB
#_07FC91: STA.w $7E33BC

#_07FC94: INC A
#_07FC95: STA.w $7E33BE

#_07FC98: LDA.w #$0DB8
#_07FC9B: STA.w $7E343C

#_07FC9E: INC A
#_07FC9F: STA.w $7E343E

#_07FCA2: LDA.w #$0DBC
#_07FCA5: STA.w $7E33C0

#_07FCA8: INC A
#_07FCA9: STA.w $7E33C2

#_07FCAC: LDA.w #$0DB9
#_07FCAF: STA.w $7E3440

#_07FCB2: INC A
#_07FCB3: STA.w $7E3442

#_07FCB6: RTS

;===================================================================================================

OverworldOverlay_LinksHouseBonkRocks:
#_07FCB7: LDX.w #$0330
#_07FCBA: JMP.w OverworldOverlay_DrawRevealedStairs

;===================================================================================================

OverworldOverlay_CheckerBoardCave:
#_07FCBD: LDX.w #$0358
#_07FCC0: JMP.w OverworldOverlay_DrawRevealedStairs

;===================================================================================================

OverworldOverlay_IceRodThief:
#_07FCC3: LDX.w #$040C
#_07FCC6: JMP.w OverworldOverlay_DrawRevealedStairs

;===================================================================================================

OverworldOverlay_DesertThief:
#_07FCC9: LDX.w #$0A1E
#_07FCCC: JMP.w OverworldOverlay_DrawRevealedStairs

;===================================================================================================

OverworldOverlay_DrainedDam:
#_07FCCF: LDA.w #$0DD9
#_07FCD2: STA.w $7E23AC
#_07FCD5: STA.w $7E2424
#_07FCD8: STA.w $7E24A0
#_07FCDB: STA.w $7E251E
#_07FCDE: STA.w $7E261C
#_07FCE1: STA.w $7E2734

#_07FCE4: INC A
#_07FCE5: STA.w $7E23AE
#_07FCE8: STA.w $7E24A2

#_07FCEB: INC A
#_07FCEC: STA.w $7E23B0
#_07FCEF: STA.w $7E2438
#_07FCF2: STA.w $7E24BA
#_07FCF5: STA.w $7E25AA
#_07FCF8: STA.w $7E273A

#_07FCFB: INC A
#_07FCFC: STA.w $7E2426
#_07FCFF: STA.w $7E2428
#_07FD02: STA.w $7E242A
#_07FD05: STA.w $7E2432
#_07FD08: STA.w $7E2434
#_07FD0B: STA.w $7E2436

#_07FD0E: INC A
#_07FD0F: STA.w $7E242C
#_07FD12: STA.w $7E24A4
#_07FD15: STA.w $7E2520
#_07FD18: STA.w $7E261E

#_07FD1B: INC A
#_07FD1C: STA.w $7E242E
#_07FD1F: STA.w $7E24A6
#_07FD22: STA.w $7E24A8
#_07FD25: STA.w $7E24B0
#_07FD28: STA.w $7E24B6
#_07FD2B: STA.w $7E2522
#_07FD2E: STA.w $7E2524
#_07FD31: STA.w $7E2526
#_07FD34: STA.w $7E2538
#_07FD37: STA.w $7E25A0
#_07FD3A: STA.w $7E25A2
#_07FD3D: STA.w $7E25A4
#_07FD40: STA.w $7E25A6
#_07FD43: STA.w $7E2620
#_07FD46: STA.w $7E2622
#_07FD49: STA.w $7E269E
#_07FD4C: STA.w $7E26A0
#_07FD4F: STA.w $7E271E
#_07FD52: STA.w $7E2720
#_07FD55: STA.w $7E2826
#_07FD58: STA.w $7E28A6
#_07FD5B: STA.w $7E28A8
#_07FD5E: STA.w $7E2926

#_07FD61: INC A
#_07FD62: STA.w $7E2430
#_07FD65: STA.w $7E24B8
#_07FD68: STA.w $7E25A8
#_07FD6B: STA.w $7E262A

#_07FD6E: INC A
#_07FD6F: STA.w $7E24AA
#_07FD72: STA.w $7E24B2
#_07FD75: STA.w $7E2528
#_07FD78: STA.w $7E25B8
#_07FD7B: STA.w $7E28AA
#_07FD7E: STA.w $7E2928

#_07FD81: INC A
#_07FD82: STA.w $7E24AC
#_07FD85: STA.w $7E2530
#_07FD88: STA.w $7E279E
#_07FD8B: STA.w $7E27A0
#_07FD8E: STA.w $7E29A6
#_07FD91: STA.w $7E29B8

#_07FD94: INC A
#_07FD95: STA.w $7E24AE
#_07FD98: STA.w $7E24B4
#_07FD9B: STA.w $7E2536
#_07FD9E: STA.w $7E27A2
#_07FDA1: STA.w $7E2824

#_07FDA4: INC A
#_07FDA5: STA.w $7E252E
#_07FDA8: STA.w $7E2534
#_07FDAB: STA.w $7E279C
#_07FDAE: STA.w $7E2822
#_07FDB1: STA.w $7E2934
#_07FDB4: STA.w $7E29B6

#_07FDB7: INC A
#_07FDB8: STA.w $7E253A
#_07FDBB: STA.w $7E2638
#_07FDBE: STA.w $7E26B8
#_07FDC1: STA.w $7E293A

#_07FDC4: INC A
#_07FDC5: STA.w $7E259E
#_07FDC8: STA.w $7E25B6
#_07FDCB: STA.w $7E2636
#_07FDCE: STA.w $7E269C
#_07FDD1: STA.w $7E26B6
#_07FDD4: STA.w $7E271C
#_07FDD7: STA.w $7E28A4
#_07FDDA: STA.w $7E2924

#_07FDDD: INC A
#_07FDDE: STA.w $7E2624
#_07FDE1: STA.w $7E26A2

#_07FDE4: INC A
#_07FDE5: STA.w $7E2626

#_07FDE8: INC A
#_07FDE9: STA.w $7E2628

#_07FDEC: INC A
#_07FDED: STA.w $7E26A4

#_07FDF0: STA.w $7E27B6

#_07FDF3: INC A
#_07FDF4: STA.w $7E26A6
#_07FDF7: STA.w $7E2726
#_07FDFA: STA.w $7E2728
#_07FDFD: STA.w $7E272A
#_07FE00: STA.w $7E27AA
#_07FE03: STA.w $7E2836
#_07FE06: STA.w $7E2838

#_07FE09: INC A
#_07FE0A: STA.w $7E26A8
#_07FE0D: STA.w $7E27B8

#_07FE10: INC A
#_07FE11: STA.w $7E26AA

#_07FE14: INC A
#_07FE15: STA.w $7E2722
#_07FE18: STA.w $7E27A4
#_07FE1B: STA.w $7E2828

#_07FE1E: INC A
#_07FE1F: STA.w $7E2724

#_07FE22: INC A
#_07FE23: STA.w $7E27A6

#_07FE26: INC A
#_07FE27: STA.w $7E27A8

#_07FE2A: STA.w $7E28B6

#_07FE2D: INC A
#_07FE2E: STA.w $7E27B4

#_07FE31: INC A
#_07FE32: STA.w $7E27BA

#_07FE35: INC A
#_07FE36: STA.w $7E282A

#_07FE39: INC A
#_07FE3A: STA.w $7E2834

#_07FE3D: INC A
#_07FE3E: STA.w $7E283A

#_07FE41: INC A
#_07FE42: STA.w $7E28B4

#_07FE45: INC A
#_07FE46: STA.w $7E28B8

#_07FE49: INC A
#_07FE4A: STA.w $7E28BA

#_07FE4D: INC A
#_07FE4E: STA.w $7E2936

#_07FE51: INC A
#_07FE52: STA.w $7E2938

#_07FE55: INC A
#_07FE56: STA.w $7E252A
#_07FE59: STA.w $7E2532
#_07FE5C: STA.w $7E292A

#_07FE5F: INC A
#_07FE60: STA.w $7E25BA
#_07FE63: STA.w $7E29A8
#_07FE66: STA.w $7E29BA

#_07FE69: INC A
#_07FE6A: STA.w $7E29A4

#_07FE6D: INC A
#_07FE6E: STA.w $7E2736

#_07FE71: INC A
#_07FE72: STA.w $7E2738

#_07FE75: RTS

;===================================================================================================

OverworldOverlay_SkullWoods:
#_07FE76: LDA.w #$0E0D
#_07FE79: STA.w $7E2590

#_07FE7C: INC A
#_07FE7D: STA.w $7E2596

#_07FE80: INC A
#_07FE81: STA.w $7E2610

#_07FE84: INC A
#_07FE85: STA.w $7E2612

#_07FE88: INC A
#_07FE89: STA.w $7E2614

#_07FE8C: INC A
#_07FE8D: STA.w $7E2616

#_07FE90: INC A
#_07FE91: STA.w $7E2692

#_07FE94: INC A
#_07FE95: STA.w $7E2694

#_07FE98: LDA.w #$0E00
#_07FE9B: STA.w $7E2812
#_07FE9E: STA.w $7E2814

#_07FEA1: INC A
#_07FEA2: STA.w $7E2710
#_07FEA5: STA.w $7E2790

#_07FEA8: INC A
#_07FEA9: STA.w $7E2712
#_07FEAC: STA.w $7E2792

#_07FEAF: INC A
#_07FEB0: STA.w $7E2714
#_07FEB3: STA.w $7E2794

#_07FEB6: INC A
#_07FEB7: STA.w $7E2716
#_07FEBA: STA.w $7E2796

#_07FEBD: RTS

;===================================================================================================

OverworldOverlay_GanonsTower:
#_07FEBE: LDA.w #$0E90
#_07FEC1: STA.l $7E245E

#_07FEC5: INC A
#_07FEC6: STA.l $7E2460

#_07FECA: LDA.w #$0E96
#_07FECD: STA.l $7E24DE

#_07FED1: STA.l $7E255E

#_07FED5: INC A
#_07FED6: STA.l $7E24E0

#_07FEDA: STA.l $7E2560

#_07FEDE: LDA.w #$0E94
#_07FEE1: STA.l $7E25DE

#_07FEE5: INC A
#_07FEE6: STA.l $7E25E0

#_07FEEA: RTS

;===================================================================================================

OverworldOverlay_HookshotCave:
#_07FEEB: LDX.w #$0868
#_07FEEE: JMP.w OverworldOverlay_DrawRevealedStairs

;===================================================================================================

OverworldOverlay_TurtleRock:
#_07FEF1: LDA.w #$0E72
#_07FEF4: STA.l $7E299E

#_07FEF8: INC A
#_07FEF9: STA.l $7E29A0

#_07FEFD: INC A
#_07FEFE: STA.l $7E29A2

#_07FF02: INC A
#_07FF03: STA.l $7E29A4

#_07FF07: INC A
#_07FF08: STA.l $7E2A1E

#_07FF0C: INC A
#_07FF0D: STA.l $7E2A20

#_07FF11: INC A
#_07FF12: STA.l $7E2A22

#_07FF16: INC A
#_07FF17: STA.l $7E2A24

#_07FF1B: INC A
#_07FF1C: STA.l $7E2A9E

#_07FF20: INC A
#_07FF21: STA.l $7E2AA0

#_07FF25: INC A
#_07FF26: STA.l $7E2AA2

#_07FF2A: INC A
#_07FF2B: STA.l $7E2AA4

#_07FF2F: INC A
#_07FF30: STA.l $7E2B1E

#_07FF34: INC A
#_07FF35: STA.l $7E2B20

#_07FF39: INC A
#_07FF3A: STA.l $7E2B22

#_07FF3E: INC A
#_07FF3F: STA.l $7E2B24

#_07FF43: RTS

;===================================================================================================

OverworldOverlay_GargoylesDomain:
#_07FF44: LDA.w #$0E15
#_07FF47: STA.w $7E2D3E

#_07FF4A: INC A
#_07FF4B: STA.w $7E2D40

#_07FF4E: INC A
#_07FF4F: STA.w $7E2DBE

#_07FF52: INC A
#_07FF53: STA.w $7E2DC0

#_07FF56: INC A
#_07FF57: STA.w $7E2E3E

#_07FF5A: INC A
#_07FF5B: STA.w $7E2E40

#_07FF5E: RTS

;===================================================================================================

OverworldOverlay_PyramidHole:
#_07FF5F: LDA.w #$0E39
#_07FF62: STA.w $7E23BC

#_07FF65: INC A
#_07FF66: STA.w $7E23BE

#_07FF69: INC A
#_07FF6A: STA.w $7E23C0

#_07FF6D: INC A
#_07FF6E: STA.w $7E243C

#_07FF71: INC A
#_07FF72: STA.w $7E243E

#_07FF75: INC A
#_07FF76: STA.w $7E2440

#_07FF79: INC A
#_07FF7A: STA.w $7E24BC

#_07FF7D: INC A
#_07FF7E: STA.w $7E24BE

#_07FF81: INC A
#_07FF82: STA.w $7E24C0

#_07FF85: RTS

;===================================================================================================

OverworldOverlay_POD:
#_07FF86: LDA.w #$0E2B
#_07FF89: STA.w $7E21E6

#_07FF8C: LDA.w #$0E27
#_07FF8F: STA.w $7E226A

#_07FF92: INC A
#_07FF93: STA.w $7E22EA

#_07FF96: INC A
#_07FF97: STA.w $7E236A

#_07FF9A: RTS

;===================================================================================================

OverworldOverlay_PegPuzzle:
#_07FF9B: LDX.w #$0D20
#_07FF9E: JMP.w OverworldOverlay_DrawRevealedStairs

;===================================================================================================

OverworldOverlay_MiseryMire:
#_07FFA1: LDA.w #$0E5E
#_07FFA4: STA.w $7E2522

#_07FFA7: INC A
#_07FFA8: STA.w $7E2524

#_07FFAB: INC A
#_07FFAC: STA.w $7E2526

#_07FFAF: INC A
#_07FFB0: STA.w $7E2528

#_07FFB3: INC A
#_07FFB4: STA.w $7E25A2

#_07FFB7: INC A
#_07FFB8: STA.w $7E25A4

#_07FFBB: INC A
#_07FFBC: STA.w $7E25A6

#_07FFBF: INC A
#_07FFC0: STA.w $7E25A8

#_07FFC3: INC A
#_07FFC4: STA.w $7E2622

#_07FFC7: INC A
#_07FFC8: STA.w $7E2624

#_07FFCB: INC A
#_07FFCC: STA.w $7E2626

#_07FFCF: INC A
#_07FFD0: STA.w $7E2628

#_07FFD3: INC A
#_07FFD4: STA.w $7E26A2

#_07FFD7: INC A
#_07FFD8: STA.w $7E26A4

#_07FFDB: INC A
#_07FFDC: STA.w $7E26A6

#_07FFDF: INC A
#_07FFE0: STA.w $7E26A8

#_07FFE3: INC A
#_07FFE4: STA.w $7E2722

#_07FFE7: INC A
#_07FFE8: STA.w $7E2724

#_07FFEB: INC A
#_07FFEC: STA.w $7E2726

#_07FFEF: INC A
#_07FFF0: STA.w $7E2728

#_07FFF3: RTS

;===================================================================================================
; FREE ROM: 0x0C
;===================================================================================================
NULL_07FFF4:
#_07FFF4: db $FF, $FF, $FF, $FF
#_07FFF8: db $FF, $FF, $FF, $FF
#_07FFFC: db $FF, $FF, $FF, $FF

;===================================================================================================

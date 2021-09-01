org $068000

;===================================================================================================
; Checks every sprite to see if it's a fish
; then checks any fish to see if it's within range
;===================================================================================================
BottleMerchant_DetectFish:
#_068000: PHB
#_068001: PHK
#_068002: PLB

#_068003: LDY.b #$0F

.next
#_068005: LDA.w $0DD0,Y
#_068008: BEQ .inactive

#_06800A: LDA.w $0E20,Y
#_06800D: CMP.b #!SPRITE_D2
#_06800F: BEQ .is_fish

.inactive
#_068011: DEY
#_068012: BPL .next

#_068014: PLB

#_068015: RTL

;---------------------------------------------------------------------------------------------------

.is_fish
#_068016: LDA.w $0D10,X
#_068019: STA.b $00

#_06801B: LDA.w $0D30,X
#_06801E: STA.b $08

#_068020: LDA.b #$10
#_068022: STA.b $02

#_068024: LDA.w $0D00,X
#_068027: STA.b $01

#_068029: LDA.w $0D20,X
#_06802C: STA.b $09

#_06802E: LDA.b #$10
#_068030: STA.b $03

#_068032: PHX

#_068033: TYX
#_068034: JSR Sprite_SetupHitBox

#_068037: PLX

#_068038: JSR CheckIfHitBoxesOverlap
#_06803B: BCC .no_good

#_06803D: TYA
#_06803E: ORA.b #$80
#_068040: STA.w $0E90,X

.no_good
#_068043: PLB

#_068044: RTL

;===================================================================================================
; He throw the fish
;===================================================================================================
pool BottleMerchant_BuyFish

.speed_x
#_068045: db -6
#_068046: db -3
#_068047: db  0
#_068048: db  4
#_068049: db  7

.speed_y
#_06804A: db 11
#_06804B: db 14
#_06804C: db 16
#_06804D: db 14
#_06804E: db 11

.item_id
#_06804F: db !SPRITE_DB ; red rupee
#_068050: db !SPRITE_E0 ; large magic
#_068051: db !SPRITE_DE ; 8 bombs
#_068052: db !SPRITE_E2 ; 10 arrows
#_068053: db !SPRITE_D9 ; green rupee

pool off

;---------------------------------------------------------------------------------------------------

BottleMerchant_BuyFish:
#_068054: PHB
#_068055: PHK
#_068056: PLB

#_068057: LDA.b #!SFX3_13 ; Throw sound effect
#_068059: JSL SpriteSFX_QueueSFX3WithPan

#_06805D: LDA.b #$04 ; this is being used as a counter for which item to throw
#_06805F: STA.w $0FB5

.next_gift
#_068062: LDY.w $0FB5

#_068065: LDA.w .item_id,Y
#_068068: JSL Sprite_SpawnDynamically
#_06806C: BMI .skip

#_06806E: JSL Sprite_SetSpawnedCoordinates

#_068072: LDA.b $00 ; override X coordinate set above
#_068074: CLC
#_068075: ADC.b #$04
#_068077: STA.w $0D10,Y

#_06807A: LDA.b #$FF ; set despawn timer of item
#_06807C: STA.w $0B58,Y

#_06807F: PHX

#_068080: LDX.w $0FB5

#_068083: LDA.w .speed_x,X
#_068086: STA.w $0D50,Y

#_068089: LDA.w .speed_y,X
#_06808C: STA.w $0D40,Y

#_06808F: LDA.b #$20
#_068091: STA.w $0F80,Y ; Z speed
#_068094: STA.w $0F10,Y ; gift can't be grabbed

#_068097: PLX

.skip
#_068098: DEC.w $0FB5
#_06809B: BPL .next_gift

#_06809D: PLB

#_06809E: RTL

;===================================================================================================
; Strange routine that makes the boomerang move a lot faster when offscreen
;===================================================================================================
Boomerang_CheatWhenNoOnesLooking:
; cache coordinates
#_06809F: LDA.w $0C04,X
#_0680A2: STA.b $02

#_0680A4: LDA.w $0C18,X
#_0680A7: STA.b $03

#_0680A9: LDA.w $0BFA,X
#_0680AC: STA.b $04

#_0680AE: LDA.w $0C0E,X
#_0680B1: STA.b $05

#_0680B3: REP #$20

#_0680B5: LDY.b #112

; take Link's X coordinate and subtract the boomerang's
#_0680B7: LDA.b $22
#_0680B9: SEC
#_0680BA: SBC.b $02

; then add 240 for the size of the screen to simplify the math
#_0680BC: CLC
#_0680BD: ADC.w #$00F0

; if the result is >= 240: use 112
; if the result is < 240: use -112
#_0680C0: CMP.w #$01E0
#_0680C3: BPL .positive_speed_x

#_0680C5: LDY.b #-112

.positive_speed_x
; if the difference was < 240 and positive, then the boom is considered
; to be on screen for the X coordinate
; apparently only 1 coordinate matters at a time
#_0680C7: BCC .nowdoY

#_0680C9: STY.b $01 ; save to X speed

#_0680CB: BRA .done

; this does the same thing as X, but withh the Y displacement
.nowdoY
#_0680CD: LDY.b #112

#_0680CF: LDA.b $20
#_0680D1: SEC
#_0680D2: SBC.b $04

#_0680D4: CLC
#_0680D5: ADC.w #$00F0

#_0680D8: CMP.w #$01E0
#_0680DB: BPL .positive_Y_speed

#_0680DD: LDY.b #-112

.positive_Y_speed
#_0680DF: BCC .done ; on screen for Y-axis means done

#_0680E1: STY.b $00

.done
#_0680E3: SEP #$20

#_0680E5: RTL

;===================================================================================================

pool Prepare_ApplyRumbleToSprites

.offset_x_low
#_0680E6: db -32, -32, -32, 16

.offset_y_low
#_0680EA: db -32, 32, -24, -24

.offset_y_high ; bleeds into next
#_0680EE: db -1,  0

.offset_x_high
#_0680F0: db -1, -1, -1, 0

.hitbox_w ; bleeds into next
#_0680F4: db 80, 80

.hitbox_h
#_0680F6: db 32, 32, 80, 80

pool off

;---------------------------------------------------------------------------------------------------

Prepare_ApplyRumbleToSprites:
#_0680FA: PHB
#_0680FB: PHK
#_0680FC: PLB

#_0680FD: LDA.b $2F
#_0680FF: LSR A
#_068100: TAY

#_068101: LDA.b $22
#_068103: CLC
#_068104: ADC.w .offset_x_low,Y
#_068107: STA.b $00

#_068109: LDA.b $23
#_06810B: ADC.w .offset_x_high,Y
#_06810E: STA.b $08

#_068110: LDA.b $20
#_068112: ADC.w .offset_y_low,Y
#_068115: STA.b $01

#_068117: LDA.b $21
#_068119: ADC.w .offset_y_high,Y
#_06811C: STA.b $09

#_06811E: LDA.w .hitbox_w,Y
#_068121: STA.b $02

#_068123: LDA.w .hitbox_h,Y
#_068126: STA.b $03

#_068128: JSR ApplyRumbleToSprites

#_06812B: PLB

#_06812C: RTL

;===================================================================================================

Sprite_SpawnImmediatelySmashedTerrain:
#_06812D: LDY.w $0314
#_068130: PHY

#_068131: LDY.w $0FB2
#_068134: PHY

#_068135: PHB
#_068136: PHK
#_068137: PLB

#_068138: JSL Sprite_SpawnThrowableTerrain_silently
#_06813C: BMI .fail

#_06813E: JSR ThrowableScenery_TransmuteToDebris

.fail
#_068141: PLB

#_068142: PLA
#_068143: STA.w $0FB2

#_068146: PLA
#_068147: STA.w $0314

#_06814A: RTL

;===================================================================================================

Sprite_SpawnThrowableTerrain:
#_06814B: PHA

#_06814C: JSL Link_CalculateSFXPan
#_068150: ORA.b #!SFX2_1D
#_068152: STA.w $012E

#_068155: PLA

;---------------------------------------------------------------------------------------------------

Sprite_SpawnThrowableTerrain_silently:
#_068156: LDX.b #$0F

.next_slot
#_068158: LDY.w $0DD0,X
#_06815B: BEQ .free_slot

#_06815D: DEX
#_06815E: BPL .next_slot

#_068160: RTL

;---------------------------------------------------------------------------------------------------

.free_slot
#_068161: PHA

#_068162: LDA.b #$0A
#_068164: STA.w $0DD0,X

#_068167: LDA.b #!SPRITE_EC
#_068169: STA.w $0E20,X

#_06816C: LDA.b $00
#_06816E: STA.w $0D10,X

#_068171: LDA.b $01
#_068173: STA.w $0D30,X

#_068176: LDA.b $02
#_068178: STA.w $0D00,X

#_06817B: LDA.b $03
#_06817D: STA.w $0D20,X

#_068180: JSL SpritePrep_LoadProperties

#_068184: LDA.b $EE
#_068186: STA.w $0F20,X

#_068189: PLA
#_06818A: STA.w $0DB0,X

#_06818D: CMP.b #$06
#_06818F: BCC .light_object

#_068191: PHA

#_068192: LDA.b #$A6
#_068194: STA.w $0E40,X

#_068197: PLA

;---------------------------------------------------------------------------------------------------

.light_object
#_068198: CMP.b #$02
#_06819A: BNE .not_bush_or_pot

#_06819C: LDA.b $1B
#_06819E: BEQ .not_bush_or_pot

#_0681A0: LDA.b #$80
#_0681A2: STA.w $0F50,X

.not_bush_or_pot
#_0681A5: PHB
#_0681A6: PHK
#_0681A7: PLB

#_0681A8: TAY

#_0681A9: LDA.w SpriteDraw_ThrownItem_palette,Y
#_0681AC: STA.w $0F50,X

#_0681AF: LDA.b #$09
#_0681B1: STA.l $7FFA2C,X

#_0681B5: LDA.b #$02
#_0681B7: STA.w $0314
#_0681BA: STA.w $0FB2

#_0681BD: LDA.b #$10
#_0681BF: STA.w $0DF0,X

#_0681C2: LDA.b $EE
#_0681C4: STA.w $0F20,X

#_0681C7: STZ.w $0DC0,X

#_0681CA: LDA.w $0B9C
#_0681CD: CMP.b #$FF
#_0681CF: BEQ .exit

#_0681D1: ORA.b $1B
#_0681D3: BNE .no_substitution

#_0681D5: LDA.w $0DB0,X
#_0681D8: DEC A
#_0681D9: DEC A
#_0681DA: CMP.b #$02
#_0681DC: BCS .no_substitution

#_0681DE: JSL Overworld_SubstituteAlternateSecret

.no_substitution
#_0681E2: LDA.w $0B9C
#_0681E5: BPL .normal

#_0681E7: AND.b #$7F
#_0681E9: STA.w $0DC0,X

#_0681EC: STZ.w $0B9C

.normal
#_0681EF: JSR Sprite_SpawnSecret

.exit
#_0681F2: PLB

#_0681F3: RTL

;===================================================================================================

pool Sprite_SpawnSecret

.ID
#_0681F4: db !SPRITE_D9 ; 0x01 - green rupee
#_0681F5: db !SPRITE_3E ; 0x02 - hoarder
#_0681F6: db !SPRITE_79 ; 0x03 - bee
#_0681F7: db !SPRITE_D9 ; 0x04 - green rupee
#_0681F8: db !SPRITE_DC ; 0x05 - 1 bomb
#_0681F9: db !SPRITE_D8 ; 0x06 - heart
#_0681FA: db !SPRITE_DA ; 0x07 - blue rupee
#_0681FB: db !SPRITE_E4 ; 0x08 - small key
#_0681FC: db !SPRITE_E1 ; 0x09 - 5 arrows
#_0681FD: db !SPRITE_DC ; 0x0A - 1 bomb
#_0681FE: db !SPRITE_D8 ; 0x0B - heart
#_0681FF: db !SPRITE_DF ; 0x0C - small magic
#_068200: db !SPRITE_E0 ; 0x0D - full magic
#_068201: db !SPRITE_0B ; 0x0E - cucco
#_068202: db !SPRITE_42 ; 0x0F - green guard
#_068203: db !SPRITE_D3 ; 0x10 - stal
#_068204: db !SPRITE_41 ; 0x11 - blue guard
#_068205: db !SPRITE_D4 ; 0x12 - landmine
#_068206: db !SPRITE_D9 ; 0x13 - green rupee
#_068207: db !SPRITE_E3 ; 0x14 - fairy
#_068208: db !SPRITE_D8 ; 0x15 - heart

;---------------------------------------------------------------------------------------------------

.AI2
#_068209: db $00 ; 0x00 - null
#_06820A: db $00 ; 0x01 - green rupee
#_06820B: db $01 ; 0x02 - hoarder
#_06820C: db $01 ; 0x03 - bee
#_06820D: db $00 ; 0x04 - green rupee
#_06820E: db $00 ; 0x05 - 1 bomb
#_06820F: db $00 ; 0x06 - heart
#_068210: db $00 ; 0x07 - blue rupee
#_068211: db $00 ; 0x08 - small key
#_068212: db $00 ; 0x09 - 5 arrows
#_068213: db $00 ; 0x0A - 1 bomb
#_068214: db $03 ; 0x0B - heart
#_068215: db $00 ; 0x0C - small magic
#_068216: db $00 ; 0x0D - full magic
#_068217: db $01 ; 0x0E - cucco
#_068218: db $00 ; 0x0F - green guard
#_068219: db $00 ; 0x10 - stal
#_06821A: db $00 ; 0x11 - blue guard
#_06821B: db $00 ; 0x12 - landmine
#_06821C: db $00 ; 0x13 - green rupee
#_06821D: db $00 ; 0x14 - fairy
#_06821E: db $00 ; 0x15 - heart

;---------------------------------------------------------------------------------------------------

.offset_x
#_06821F: db $00 ; 0x00 - null
#_068220: db $04 ; 0x01 - green rupee
#_068221: db $00 ; 0x02 - hoarder
#_068222: db $04 ; 0x03 - bee
#_068223: db $04 ; 0x04 - green rupee
#_068224: db $00 ; 0x05 - 1 bomb
#_068225: db $04 ; 0x06 - heart
#_068226: db $04 ; 0x07 - blue rupee
#_068227: db $04 ; 0x08 - small key
#_068228: db $04 ; 0x09 - 5 arrows
#_068229: db $00 ; 0x0A - 1 bomb
#_06822A: db $04 ; 0x0B - heart
#_06822B: db $04 ; 0x0C - small magic
#_06822C: db $04 ; 0x0D - full magic
#_06822D: db $00 ; 0x0E - cucco
#_06822E: db $00 ; 0x0F - green guard
#_06822F: db $00 ; 0x10 - stal
#_068230: db $00 ; 0x11 - blue guard
#_068231: db $00 ; 0x12 - landmine
#_068232: db $04 ; 0x13 - green rupee
#_068233: db $00 ; 0x14 - fairy
#_068234: db $04 ; 0x15 - heart

;---------------------------------------------------------------------------------------------------

.ignore_ancillae
#_068235: db $04 ; 0x00 - null
#_068236: db $01 ; 0x01 - green rupee
#_068237: db $00 ; 0x02 - hoarder
#_068238: db $00 ; 0x03 - bee
#_068239: db $01 ; 0x04 - green rupee
#_06823A: db $01 ; 0x05 - 1 bomb
#_06823B: db $01 ; 0x06 - heart
#_06823C: db $01 ; 0x07 - blue rupee
#_06823D: db $01 ; 0x08 - small key
#_06823E: db $01 ; 0x09 - 5 arrows
#_06823F: db $01 ; 0x0A - 1 bomb
#_068240: db $01 ; 0x0B - heart
#_068241: db $01 ; 0x0C - small magic
#_068242: db $01 ; 0x0D - full magic
#_068243: db $00 ; 0x0E - cucco
#_068244: db $00 ; 0x0F - green guard
#_068245: db $00 ; 0x10 - stal
#_068246: db $00 ; 0x11 - blue guard
#_068247: db $00 ; 0x12 - landmine
#_068248: db $01 ; 0x13 - green rupee
#_068249: db $01 ; 0x14 - fairy
#_06824A: db $01 ; 0x15 - heart

;---------------------------------------------------------------------------------------------------

.jump_velocity
#_06824B: db $01 ; 0x00 - null
#_06824C: db $10 ; 0x01 - green rupee
#_06824D: db $00 ; 0x02 - hoarder
#_06824E: db $00 ; 0x03 - bee
#_06824F: db $10 ; 0x04 - green rupee
#_068250: db $00 ; 0x05 - 1 bomb
#_068251: db $00 ; 0x06 - heart
#_068252: db $10 ; 0x07 - blue rupee
#_068253: db $10 ; 0x08 - small key
#_068254: db $10 ; 0x09 - 5 arrows
#_068255: db $10 ; 0x0A - 1 bomb
#_068256: db $00 ; 0x0B - heart
#_068257: db $10 ; 0x0C - small magic
#_068258: db $0A ; 0x0D - full magic
#_068259: db $10 ; 0x0E - cucco
#_06825A: db $00 ; 0x0F - green guard
#_06825B: db $00 ; 0x10 - stal
#_06825C: db $00 ; 0x11 - blue guard
#_06825D: db $00 ; 0x12 - landmine
#_06825E: db $10 ; 0x13 - green rupee
#_06825F: db $00 ; 0x14 - fairy
#_068260: db $00 ; 0x15 - heart
#_068261: db $00 ; 0x16 - null

pool off

;---------------------------------------------------------------------------------------------------

Sprite_SpawnSecret_fastexit:
#_068262: CLC

#_068263: RTS

;---------------------------------------------------------------------------------------------------

Sprite_SpawnSecret:
#_068264: LDA.b $1B ; indoors means pots, so it's always successful
#_068266: BNE .indoors

#_068268: JSL GetRandomNumber ; outdoors only has a 1/8 chance of success
#_06826C: AND.b #$08
#_06826E: BNE .fastexit

.indoors
#_068270: LDY.w $0B9C ; this value will have been set up by now
#_068273: BEQ .fastexit

#_068275: CPY.b #$04
#_068277: BNE .not_random_bush

#_068279: JSL GetRandomNumber ; special secondary random bush prize pack
#_06827D: AND.b #$03
#_06827F: CLC
#_068280: ADC.b #$13
#_068282: TAY

.not_random_bush
#_068283: STY.b $0D

#_068285: LDA.w .ID-1,Y
#_068288: BEQ .fastexit

#_06828A: JSL Sprite_SpawnDynamically
#_06828E: BMI .fastexit

;---------------------------------------------------------------------------------------------------

#_068290: PHX

#_068291: LDX.b $0D

#_068293: LDA.w .AI2,X
#_068296: STA.w $0D80,Y

#_068299: LDA.w .ignore_ancillae,X
#_06829C: STA.w $0BA0,Y

#_06829F: LDA.w .jump_velocity,X
#_0682A2: STA.w $0F80,Y

#_0682A5: LDA.b $00
#_0682A7: CLC
#_0682A8: ADC.w .offset_x,X
#_0682AB: STA.w $0D10,Y

#_0682AE: LDA.b $01
#_0682B0: ADC.b #$00
#_0682B2: STA.w $0D30,Y

#_0682B5: LDA.b $02
#_0682B7: STA.w $0D00,Y

#_0682BA: LDA.b $03
#_0682BC: STA.w $0D20,Y

#_0682BF: LDA.b $04
#_0682C1: STA.w $0F70,Y

#_0682C4: LDA.b #$00
#_0682C6: STA.w $0DC0,Y

#_0682C9: LDA.b #$20
#_0682CB: STA.w $0F10,Y

#_0682CE: LDA.b #$30
#_0682D0: STA.w $0E10,Y

#_0682D3: LDX.w $0E20,Y
#_0682D6: CPX.b #!SPRITE_E4
#_0682D8: BNE .not_key

#_0682DA: PHX

#_0682DB: TYX
#_0682DC: JSR SpritePrep_SmallKey

#_0682DF: PLX

;---------------------------------------------------------------------------------------------------

.not_key
#_0682E0: CPX.b #!SPRITE_0B
#_0682E2: BNE .not_cucco

#_0682E4: LDA.b #!SFX2_30
#_0682E6: STA.w $012E

#_0682E9: LDA.w $048E ; are we in the western snitch house?
#_0682EC: CMP.b #$01 ; make the cucco powderable
#_0682EE: BNE .not_cucco

#_0682F0: STA.w $0E30,Y

.not_cucco
#_0682F3: CPX.b #!SPRITE_42
#_0682F5: BEQ .guard

#_0682F7: CPX.b #!SPRITE_41
#_0682F9: BEQ .guard

#_0682FB: CPX.b #!SPRITE_3E
#_0682FD: BNE .not_hoarder

#_0682FF: LDA.b #$09
#_068301: STA.w $0F50,Y

#_068304: BRA .done

;---------------------------------------------------------------------------------------------------

.guard
#_068306: LDA.b #!SFX3_04
#_068308: STA.w $012F

#_06830B: LDA.b #$00 ; prevent damage
#_06830D: STA.w $0CE2,Y

#_068310: LDA.b #$A0 ; give it iframes
#_068312: STA.w $0EF0,Y

#_068315: BRA .last_check

;---------------------------------------------------------------------------------------------------

.not_hoarder
#_068317: LDA.b #$FF ; stun
#_068319: STA.w $0B58,Y

.last_check
#_06831C: CPX.b #!SPRITE_79 ; is it a bee?
#_06831E: BNE .done

#_068320: LDA.b #$20 ; target west
#_068322: STA.w $0D90,Y

;---------------------------------------------------------------------------------------------------

.done
#_068325: SEC

#_068326: PLX

#_068327: RTS

;===================================================================================================

Sprite_Main:
#_068328: LDA.b $1B
#_06832A: BNE .indoors

#_06832C: STZ.w $0C7C
#_06832F: STZ.w $0C7D
#_068332: STZ.w $0C7E
#_068335: STZ.w $0C7F
#_068338: STZ.w $0C80

#_06833B: JSL Sprite_ProximityActivation

;---------------------------------------------------------------------------------------------------

.indoors
#_06833F: PHB
#_068340: PHK
#_068341: PLB

#_068342: LDY.b #$00

#_068344: LDA.l $7EF3CA
#_068348: BEQ .lightworld

#_06834A: INY

.lightworld
#_06834B: STY.w $0FFF

#_06834E: LDA.b $11
#_068350: BNE .dont_reset_drag

#_068352: STZ.w $0B7C ; reset drag
#_068355: STZ.w $0B7D
#_068358: STZ.w $0B7E
#_06835B: STZ.w $0B7F

;---------------------------------------------------------------------------------------------------

.dont_reset_drag
#_06835E: JSR OAM_ResetRegionBases
#_068361: JSL Garnish_ExecuteUpperSlots_long
#_068365: JSL Follower_Main

#_068369: LDA.w $0314
#_06836C: STA.w $0FB2

#_06836F: STZ.w $0314

#_068372: LDA.b #$80
#_068374: STA.w $0FAB

#_068377: LDA.b $47
#_068379: AND.b #$7F
#_06837B: BEQ .repulse_timer_over

#_06837D: DEC.b $47
#_06837F: BRA .continue

;---------------------------------------------------------------------------------------------------

.repulse_timer_over
#_068381: STZ.b $47

.continue
#_068383: STZ.w $0379
#_068386: STZ.w $0377
#_068389: STZ.w $0B7B

#_06838C: LDA.w $0FDC
#_06838F: BEQ .alert_timer_over

#_068391: DEC.w $0FDC

;---------------------------------------------------------------------------------------------------

.alert_timer_over
#_068394: JSL Ancilla_Main
#_068398: JSL Overlord_Main

#_06839C: STZ.w $0B9A

#_06839F: LDX.b #$0F

.next_sprite
#_0683A1: STX.w $0FA0

#_0683A4: JSR Sprite_ExecuteSingle

#_0683A7: DEX
#_0683A8: BPL .next_sprite

;---------------------------------------------------------------------------------------------------

#_0683AA: JSL Garnish_ExecuteLowerSlots_long

#_0683AE: STZ.w $069F
#_0683B1: STZ.w $069E

#_0683B4: PLB

#_0683B5: JSL ExecuteCachedSprites

#_0683B9: LDA.w $0AAA
#_0683BC: BEQ .exit

#_0683BE: STA.w $0FC6

.exit
#_0683C1: RTL

;===================================================================================================
; Unused debug code
;===================================================================================================
NKUKUKU_bounce:
#_0683C2: JSL NKUKUKU

#_0683C6: RTL

;===================================================================================================

pool OAM_ResetRegionBases

.addresses
#_0683C7: dw $0030
#_0683C9: dw $01D0
#_0683CB: dw $0000
#_0683CD: dw $0030
#_0683CF: dw $0120
#_0683D1: dw $0140

pool off

;---------------------------------------------------------------------------------------------------

OAM_ResetRegionBases:
#_0683D3: LDY.b #$00

#_0683D5: REP #$20

.next
#_0683D7: LDA.w .addresses,Y
#_0683DA: STA.w $0FE0,Y

#_0683DD: INY
#_0683DE: INY
#_0683DF: CPY.b #$0B
#_0683E1: BCC .next

#_0683E3: SEP #$20

#_0683E5: RTS

;===================================================================================================

CheckIfHitBoxesOverlap_long:
#_0683E6: JSR CheckIfHitBoxesOverlap

#_0683E9: RTL

;===================================================================================================

Sprite_SetupHitbox_long:
#_0683EA: PHB
#_0683EB: PHK
#_0683EC: PLB

#_0683ED: JSR Sprite_SetupHitBox

#_0683F0: PLB

#_0683F1: RTL

;===================================================================================================
; Allocates OAM for the sprite to one of regions A, D, or F
; If sprites aren't paused, TODO
;===================================================================================================
Sprite_TimersAndOAM:
#_0683F2: JSR Sprite_Get16BitCoords

#_0683F5: LDA.w $0E40,X ; how many objects is the sprite composed of?
#_0683F8: AND.b #$1F
#_0683FA: INC A

#_0683FB: ASL A
#_0683FC: ASL A

#_0683FD: LDY.w $0FB3
#_068400: BEQ .use_regionA

#_068402: LDY.w $0F20,X ; lower layer uses lower priority region
#_068405: BEQ .use_regionD

#_068407: JSL OAM_AllocateFromRegionF
#_06840B: BRA .oam_done

.use_regionD
#_06840D: JSL OAM_AllocateFromRegionD
#_068411: BRA .oam_done

.use_regionA
#_068413: JSL OAM_AllocateFromRegionA

.oam_done
#_068417: LDA.b $11 ; are sprites paused?
#_068419: ORA.w $0FC1
#_06841C: BEQ .timers_ago

#_06841E: JMP.w .handle_linkhop

;---------------------------------------------------------------------------------------------------

.timers_ago
#_068421: LDA.w $0DF0,X
#_068424: BEQ .skip_timer0

#_068426: DEC.w $0DF0,X

.skip_timer0
#_068429: LDA.w $0E00,X
#_06842C: BEQ .skip_timer1

#_06842E: DEC.w $0E00,X

.skip_timer1
#_068431: LDA.w $0E10,X
#_068434: BEQ .skip_timer2

#_068436: DEC.w $0E10,X

.skip_timer2
#_068439: LDA.w $0EE0,X
#_06843C: BEQ .skip_timer3

#_06843E: DEC.w $0EE0,X

.skip_timer3
#_068441: LDA.w $0EF0,X
#_068444: AND.b #$7F
#_068446: BEQ .skip_hit_timer

#_068448: LDY.w $0DD0,X ; is sprite active?
#_06844B: CPY.b #$09
#_06844D: BCC .no_damage

#_06844F: CMP.b #$1F
#_068451: BNE .delay_damage

;---------------------------------------------------------------------------------------------------

#_068453: PHA

; looks like agahnim 2 has some hardcoded nonsense going on for his message
#_068454: LDA.w $0E20,X
#_068457: CMP.b #!SPRITE_7A
#_068459: BNE .not_agahnim2

#_06845B: LDA.w $0FFF
#_06845E: BNE .not_agahnim2

#_068460: LDA.w $0E50,X
#_068463: SEC
#_068464: SBC.w $0CE2,X

#_068467: BEQ .aga2_message
#_068469: BCS .not_agahnim2

.aga2_message
; Message 013E
#_06846B: LDA.b #$3E
#_06846D: STA.w $1CF0

#_068470: LDA.b #$01
#_068472: STA.w $1CF1

#_068475: JSL Sprite_ShowMessageMinimal

.not_agahnim2
#_068479: PLA

.delay_damage
#_06847A: CMP.b #!SPRITE_18
#_06847C: BNE .no_damage

#_06847E: JSR MiniMoldorm_Recoil

.no_damage
#_068481: LDA.w $0CE2,X
#_068484: CMP.b #$FB
#_068486: BCS .skip_palette_cycling

#_068488: LDA.w $0EF0,X
#_06848B: ASL A
#_06848C: AND.b #$0E
#_06848E: STA.w $0B89,X

.skip_palette_cycling
#_068491: DEC.w $0EF0,X

#_068494: BRA .hit_continue

;---------------------------------------------------------------------------------------------------

.skip_hit_timer
#_068496: STZ.w $0EF0,X
#_068499: STZ.w $0B89,X

.hit_continue
#_06849C: LDA.w $0F10,X
#_06849F: BEQ .handle_linkhop

#_0684A1: DEC.w $0F10,X

.handle_linkhop
#_0684A4: LDY.b $EE ; If Link is hopping, use a different priority.
#_0684A6: CPY.b #$03
#_0684A8: BEQ .link_is_jumping

#_0684AA: LDY.w $0F20,X ; otherwise use set layer

.link_is_jumping
#_0684AD: LDA.w $0B89,X
#_0684B0: AND.b #$CF
#_0684B2: ORA.w .OAM_priority,Y
#_0684B5: STA.w $0B89,X

#_0684B8: RTS

;---------------------------------------------------------------------------------------------------

.OAM_priority
#_0684B9: db $20, $10, $30, $30

;===================================================================================================
; Caches a sprite's segregated coordinate bytes as 16-bit values
;===================================================================================================
Sprite_Get16BitCoords_long:
#_0684BD: JSR Sprite_Get16BitCoords

#_0684C0: RTL

;---------------------------------------------------------------------------------------------------

Sprite_Get16BitCoords:
#_0684C1: LDA.w $0D10,X
#_0684C4: STA.w $0FD8

#_0684C7: LDA.w $0D30,X
#_0684CA: STA.w $0FD9

#_0684CD: LDA.w $0D00,X
#_0684D0: STA.w $0FDA

#_0684D3: LDA.w $0D20,X
#_0684D6: STA.w $0FDB

#_0684D9: RTS

;===================================================================================================
; Does main AI module behavior of a single sprite
;===================================================================================================
Sprite_ExecuteSingle_long:
#_0684DA: PHB
#_0684DB: PHK
#_0684DC: PLB

#_0684DD: JSR Sprite_ExecuteSingle

#_0684E0: PLB

#_0684E1: RTL

;---------------------------------------------------------------------------------------------------

Sprite_ExecuteSingle:
#_0684E2: LDA.w $0DD0,X
#_0684E5: BEQ SpriteModule_Inactive

#_0684E7: PHA
#_0684E8: JSR Sprite_TimersAndOAM
#_0684EB: PLA

#_0684EC: CMP.b #$09
#_0684EE: BEQ .active

#_0684F0: JSL JumpTableLocal
#_0684F4: dw SpriteModule_Inactive       ; 0x00
#_0684F6: dw SpriteModule_Fall1          ; 0x01
#_0684F8: dw SpriteModule_Poof           ; 0x02
#_0684FA: dw SpriteModule_Drown          ; 0x03
#_0684FC: dw SpriteModule_Explode_bounce ; 0x04
#_0684FE: dw SpriteModule_Fall2          ; 0x05
#_068500: dw SpriteModule_Die            ; 0x06
#_068502: dw SpriteModule_Burn_bounce    ; 0x07
#_068504: dw SpriteModule_Initialize     ; 0x08
#_068506: dw SpriteModule_Active         ; 0x09
#_068508: dw SpriteModule_Carried        ; 0x0A
#_06850A: dw SpriteModule_Stunned        ; 0x0B

;---------------------------------------------------------------------------------------------------

.active
#_06850C: JMP.w SpriteModule_Active

;===================================================================================================
; Why is this here?
;===================================================================================================
SpritePrep_DoNothingI:
#_06850F: RTS

;===================================================================================================
; Sprite is dead and doesn't exist
;===================================================================================================
SpriteModule_Inactive:
#_068510: LDA.b $1B
#_068512: BNE .indoors

#_068514: TXA
#_068515: ASL A
#_068516: TAY

; Kill the sprite in a table of who's alive.
#_068517: LDA.b #$FF
#_068519: STA.w $0BC0,Y
#_06851C: STA.w $0BC1,Y

#_06851F: RTS

.indoors
#_068520: LDA.b #$FF
#_068522: STA.w $0BC0,X

#_068525: RTS

;===================================================================================================

SpriteModule_Active_long:
#_068526: PHB
#_068527: PHK
#_068528: PLB

#_068529: JSR SpriteModule_Active

#_06852C: PLB

#_06852D: RTL

;===================================================================================================

SpriteModule_Fall1:
#_06852E: LDA.w $0DF0,X
#_068531: BNE .fall_longer

#_068533: STZ.w $0DD0,X

#_068536: JSL Sprite_ManuallySetDeathFlagUW

#_06853A: RTS

.fall_longer
#_06853B: JSR Sprite_PrepOAMCoord
#_06853E: JSL SpriteDraw_Falling

#_068542: RTS

;===================================================================================================

SpriteModule_Burn_bounce:
#_068543: JSL SpriteModule_Burn

#_068547: RTS

;===================================================================================================

SpriteModule_Explode_bounce:
#_068548: JSL SpriteModule_Explode

#_06854C: RTS

;===================================================================================================

pool SpriteModule_Drown

.oam_groups
; group00
#_06854D: dw  -7,  -7 : db $80, $04, $00, $00
#_068555: dw  14,  -6 : db $83, $04, $00, $00

; group01
#_06855D: dw  -6,  -6 : db $CF, $04, $00, $00
#_068565: dw  13,  -5 : db $DF, $04, $00, $00

; group02
#_06856D: dw  -4,  -4 : db $AE, $04, $00, $00
#_068575: dw  12,  -4 : db $AF, $44, $00, $00

; group03
#_06857D: dw   0,   0 : db $E7, $04, $00, $02
#_068585: dw   0,   0 : db $E7, $04, $00, $02

;---------------------------------------------------------------------------------------------------

.flip
#_06858D: db $00
#_06858E: db $40
#_06858F: db $C0
#_068590: db $80

; TODO grouping?
.char
#_068591: db $C0, $C0
#_068593: db $C0, $C0
#_068595: db $CD, $CD
#_068597: db $CD, $CB
#_068599: db $CB, $CB
#_06859B: db $CB

pool off

;---------------------------------------------------------------------------------------------------

SpriteModule_Drown:
#_06859C: LDA.w $0D80,X
#_06859F: BEQ Drowning_DrawSprite

#_0685A1: LDA.w $0D90,X
#_0685A4: CMP.b #$06
#_0685A6: BNE .use_allotted_region

#_0685A8: LDA.b #$08
#_0685AA: JSL OAM_AllocateFromRegionC

.use_allotted_region
#_0685AE: LDA.w $0E60,X
#_0685B1: EOR.b #$10
#_0685B3: STA.w $0E60,X

#_0685B6: JSR SpriteDraw_SingleLarge

#_0685B9: LDA.w $0E80,X
#_0685BC: LSR A
#_0685BD: LSR A
#_0685BE: AND.b #$03
#_0685C0: TAY

#_0685C1: LDA.w .flip,Y
#_0685C4: STA.b $05

#_0685C6: LDA.w $0DF0,X
#_0685C9: CMP.b #$01
#_0685CB: BNE .stay_alive

#_0685CD: STZ.w $0DD0,X

.stay_alive
#_0685D0: PHX

#_0685D1: LDA.b #$8A
#_0685D3: BCC .delay

#_0685D5: LDA.w $0DF0,X
#_0685D8: LSR A
#_0685D9: TAX

#_0685DA: STZ.b $05

#_0685DC: LDA.w .char,X

.delay
#_0685DF: LDY.b #$02
#_0685E1: STA.b ($90),Y

#_0685E3: INY
#_0685E4: LDA.b #$24
#_0685E6: ORA.b $05
#_0685E8: STA.b ($90),Y

#_0685EA: PLX

#_0685EB: LDA.w $0DF0,X
#_0685EE: BNE EXIT_06861A

;---------------------------------------------------------------------------------------------------

#_0685F0: JSR Sprite_CheckIfActivePermissive_Bank06

#_0685F3: INC.w $0E80,X

#_0685F6: JSR Sprite_Move_XY_Bank06
#_0685F9: JSR Sprite_Move_Z_Bank06

#_0685FC: LDA.w $0F80,X
#_0685FF: SEC
#_068600: SBC.b #$02
#_068602: STA.w $0F80,X

#_068605: LDA.w $0F70,X
#_068608: BPL EXIT_06861A

#_06860A: STZ.w $0F70,X

#_06860D: LDA.b #$12
#_06860F: STA.w $0DF0,X

;===================================================================================================

Sprite_DisableShadowFlag:
#_068612: LDA.w $0E60,X
#_068615: AND.b #$EF
#_068617: STA.w $0E60,X

;---------------------------------------------------------------------------------------------------

#EXIT_06861A:
#_06861A: RTS

;===================================================================================================

Drowning_DrawSprite:
#_06861B: JSR Sprite_CheckIfActivePermissive_Bank06

#_06861E: LDA.b $1A
#_068620: AND.b #$01 ; increment the timer every other frame
#_068622: BNE .timer_parity

#_068624: INC.w $0DF0,X

.timer_parity
#_068627: STZ.w $0F50,X
#_06862A: STZ.w $0EF0,X

#_06862D: LDA.b #$00
#_06862F: XBA

#_068630: LDA.w $0DF0,X
#_068633: BNE .stay_alive

#_068635: STZ.w $0DD0,X

.stay_alive
#_068638: REP #$20

#_06863A: ASL A
#_06863B: AND.w #$00F8
#_06863E: ASL A
#_06863F: ADC.w #SpriteModule_Drown_oam_groups
#_068642: STA.b $08

#_068644: SEP #$20

#_068646: LDA.b #$02
#_068648: JSL Sprite_DrawMultiple

#_06864C: RTS

;===================================================================================================

SpriteModule_Initialize:
#_06864D: JSL SpritePrep_LoadProperties

#_068651: INC.w $0DD0,X

#_068654: LDA.w $0E20,X
#_068657: JSL JumpTableLocal
#_06865B: dw SpritePrep_Raven                         ; 0x00 - RAVEN
#_06865D: dw SpritePrep_Vulture                       ; 0x01 - VULTURE
#_06865F: dw SpritePrep_DoNothingA                    ; 0x02 - STALFOS HEAD
#_068661: dw $0000                                    ; 0x03 - NULL
#_068663: dw SpritePrep_Switch                        ; 0x04 - CORRECT PULL SWITCH
#_068665: dw SpritePrep_DoNothingA                    ; 0x05 - UNUSED CORRECT PULL SWIT
#_068667: dw SpritePrep_Switch                        ; 0x06 - WRONG PULL SWITCH
#_068669: dw SpritePrep_DoNothingB                    ; 0x07 - UNUSED WRONG PULL SWITCH
#_06866B: dw SpritePrep_Octorok                       ; 0x08 - OCTOROK
#_06866D: dw SpritePrep_Moldorm_bounce                ; 0x09 - MOLDORM
#_06866F: dw SpritePrep_Octorok                       ; 0x0A - OCTOROK 4WAY
#_068671: dw SpritePrep_DoNothingA                    ; 0x0B - CUCCO
#_068673: dw SpritePrep_DoNothingA                    ; 0x0C - OCTOROK STONE
#_068675: dw SpritePrep_DoNothingA                    ; 0x0D - BUZZBLOB
#_068677: dw SpritePrep_DoNothingA                    ; 0x0E - SNAPDRAGON
#_068679: dw SpritePrep_Octoballoon                   ; 0x0F - OCTOBALLOON
#_06867B: dw SpritePrep_DoNothingA                    ; 0x10 - OCTOBALLOON BABY
#_06867D: dw SpritePrep_DoNothingA                    ; 0x11 - HINOX
#_06867F: dw SpritePrep_DoNothingA                    ; 0x12 - MOBLIN
#_068681: dw SpritePrep_MiniHelmasaur                 ; 0x13 - MINI HELMASAUR
#_068683: dw SpritePrep_ThievesTownGrate              ; 0x14 - THIEVES TOWN GRATE
#_068685: dw SpritePrep_Antifairy                     ; 0x15 - ANTIFAIRY
#_068687: dw SpritePrep_Sage                          ; 0x16 - SAHASRAHLA / AGINAH
#_068689: dw SpritePrep_DoNothingA                    ; 0x17 - HOARDER
#_06868B: dw SpritePrep_MiniMoldorm_bounce            ; 0x18 - MINI MOLDORM
#_06868D: dw SpritePrep_Poe                           ; 0x19 - POE
#_06868F: dw SpritePrep_Smithy                        ; 0x1A - SMITHY
#_068691: dw SpritePrep_DoNothingA                    ; 0x1B - ARROW
#_068693: dw SpritePrep_Statue                        ; 0x1C - STATUE
#_068695: dw SpritePrep_IgnoreProjectiles             ; 0x1D - FLUTEQUEST
#_068697: dw SpritePrep_CrystalSwitch                 ; 0x1E - CRYSTAL SWITCH
#_068699: dw SpritePrep_SickKid                       ; 0x1F - SICK KID
#_06869B: dw SpritePrep_DoNothingA                    ; 0x20 - SLUGGULA
#_06869D: dw SpritePrep_WaterLever                    ; 0x21 - WATER SWITCH
#_06869F: dw SpritePrep_DoNothingA                    ; 0x22 - ROPA
#_0686A1: dw SpritePrep_Bari                          ; 0x23 - RED BARI
#_0686A3: dw SpritePrep_Bari                          ; 0x24 - BLUE BARI
#_0686A5: dw SpritePrep_TalkingTree                   ; 0x25 - TALKING TREE
#_0686A7: dw SpritePrep_HardhatBeetle                 ; 0x26 - HARDHAT BEETLE
#_0686A9: dw SpritePrep_DoNothingA                    ; 0x27 - DEADROCK
#_0686AB: dw SpritePrep_Storyteller                   ; 0x28 - DARK WORLD HINT NPC
#_0686AD: dw SpritePrep_Adults                        ; 0x29 - ADULT
#_0686AF: dw SpritePrep_IgnoreProjectiles             ; 0x2A - SWEEPING LADY
#_0686B1: dw SpritePrep_Hobo                          ; 0x2B - HOBO
#_0686B3: dw SpritePrep_Lumberjacks                   ; 0x2C - LUMBERJACKS
#_0686B5: dw SpritePrep_IgnoreProjectiles             ; 0x2D - TELEPATHIC TILE
#_0686B7: dw SpritePrep_FluteKid                      ; 0x2E - FLUTE KID
#_0686B9: dw SpritePrep_IgnoreProjectiles             ; 0x2F - RACE GAME LADY
#_0686BB: dw SpritePrep_IgnoreProjectiles             ; 0x30 - RACE GAME GUY
#_0686BD: dw SpritePrep_FortuneTeller                 ; 0x31 - FORTUNE TELLER
#_0686BF: dw SpritePrep_IgnoreProjectiles             ; 0x32 - ARGUE BROS
#_0686C1: dw SpritePrep_RupeePull                     ; 0x33 - RUPEE PULL
#_0686C3: dw SpritePrep_Snitch_bounce_2               ; 0x34 - YOUNG SNITCH
#_0686C5: dw SpritePrep_Snitch_bounce_3               ; 0x35 - INNKEEPER
#_0686C7: dw SpritePrep_IgnoreProjectiles             ; 0x36 - WITCH
#_0686C9: dw SpritePrep_IgnoreProjectiles             ; 0x37 - WATERFALL
#_0686CB: dw SpritePrep_DoNothingA                    ; 0x38 - EYE STATUE
#_0686CD: dw SpritePrep_Locksmith                     ; 0x39 - LOCKSMITH
#_0686CF: dw SpritePrep_MagicBat                      ; 0x3A - MAGIC BAT
#_0686D1: dw SpritePrep_BonkItem                      ; 0x3B - BONK ITEM
#_0686D3: dw SpritePrep_IgnoreProjectiles             ; 0x3C - KID IN KAK
#_0686D5: dw SpritePrep_Snitch_bounce_1               ; 0x3D - OLD SNITCH
#_0686D7: dw SpritePrep_DoNothingA                    ; 0x3E - HOARDER
#_0686D9: dw SpritePrep_DoNothingA                    ; 0x3F - TUTORIAL GUARD
#_0686DB: dw SpritePrep_AgahnimsBarrier               ; 0x40 - LIGHTNING GATE
#_0686DD: dw SpritePrep_StandardGuard                 ; 0x41 - BLUE GUARD
#_0686DF: dw SpritePrep_StandardGuard                 ; 0x42 - GREEN GUARD
#_0686E1: dw SpritePrep_StandardGuard                 ; 0x43 - RED SPEAR GUARD
#_0686E3: dw SpritePrep_CoolerGuard                   ; 0x44 - BLUESAIN BOLT
#_0686E5: dw SpritePrep_CoolerGuard                   ; 0x45 - USAIN BOLT
#_0686E7: dw SpritePrep_CoolerGuard                   ; 0x46 - BLUE ARCHER
#_0686E9: dw SpritePrep_CoolerGuard                   ; 0x47 - GREEN BUSH GUARD
#_0686EB: dw SpritePrep_CoolerGuard                   ; 0x48 - RED JAVELIN GUARD
#_0686ED: dw SpritePrep_CoolerGuard                   ; 0x49 - RED BUSH GUARD
#_0686EF: dw SpritePrep_CoolerGuard                   ; 0x4A - BOMB GUARD
#_0686F1: dw SpritePrep_WeakGuard                     ; 0x4B - GREEN KNIFE GUARD
#_0686F3: dw SpritePrep_Geldman                       ; 0x4C - GELDMAN
#_0686F5: dw SpritePrep_CacheOriginalCoordinates      ; 0x4D - TOPPO
#_0686F7: dw SpritePrep_Popo                          ; 0x4E - POPO
#_0686F9: dw SpritePrep_Popo2                         ; 0x4F - POPO
#_0686FB: dw SpritePrep_DoNothingA                    ; 0x50 - CANNONBALL
#_0686FD: dw SpritePrep_DoNothingD                    ; 0x51 - ARMOS STATUE
#_0686FF: dw SpritePrep_KingZora                      ; 0x52 - KING ZORA
#_068701: dw SpritePrep_ArmosKnight                   ; 0x53 - ARMOS KNIGHT
#_068703: dw SpritePrep_Lanmolas_bounce               ; 0x54 - LANMOLAS
#_068705: dw SpritePrep_SwimmingZora                  ; 0x55 - ZORA / FIREBALL
#_068707: dw SpritePrep_WalkingZora                   ; 0x56 - ZORA
#_068709: dw SpritePrep_DesertStatue                  ; 0x57 - DESERT STATUE
#_06870B: dw SpritePrep_DoNothingA                    ; 0x58 - CRAB
#_06870D: dw SpritePrep_LostWoodsBird                 ; 0x59 - LOST WOODS BIRD
#_06870F: dw SpritePrep_LostWoodsSquirrel             ; 0x5A - LOST WOODS SQUIRREL
#_068711: dw SpritePrep_Spark                         ; 0x5B - SPARK
#_068713: dw SpritePrep_Spark                         ; 0x5C - SPARK
#_068715: dw SpritePrep_Roller_VerticalStartUp        ; 0x5D - ROLLER VERTICAL UP
#_068717: dw SpritePrep_Roller_VerticalStartDown      ; 0x5E - ROLLER VERTICAL DOWN
#_068719: dw SpritePrep_Roller_HorizontalStartLeft    ; 0x5F - ROLLER HORIZONTAL LEFT
#_06871B: dw SpritePrep_Roller_HorizontalStartRight   ; 0x60 - ROLLER HORIZONTAL RIGHT
#_06871D: dw SpritePrep_DoNothingA                    ; 0x61 - BEAMOS
#_06871F: dw SpritePrep_MasterSword                   ; 0x62 - MASTERSWORD
#_068721: dw SpritePrep_DebirandoPit                  ; 0x63 - DEBIRANDO PIT
#_068723: dw SpritePrep_Debirando                     ; 0x64 - DEBIRANDO
#_068725: dw SpritePrep_ArrowGame_bounce              ; 0x65 - ARCHERY GUY
#_068727: dw SpritePrep_WallCannon                    ; 0x66 - WALL CANNON VERTICAL LEFT
#_068729: dw SpritePrep_WallCannon                    ; 0x67 - WALL CANNON VERTICAL RIGHT
#_06872B: dw SpritePrep_WallCannon                    ; 0x68 - WALL CANNON HORIZONTAL TOP
#_06872D: dw SpritePrep_WallCannon                    ; 0x69 - WALL CANNON HORIZONTAL BOTTOM
#_06872F: dw SpritePrep_DoNothingA                    ; 0x6A - BALL N CHAIN
#_068731: dw SpritePrep_DoNothingA                    ; 0x6B - CANNONBALL / CANNON TROOPER
#_068733: dw SpritePrep_DoNothingA                    ; 0x6C - MIRROR PORTAL
#_068735: dw SpritePrep_Rat                           ; 0x6D - RAT / CRICKET
#_068737: dw SpritePrep_Rope                          ; 0x6E - SNAKE
#_068739: dw SpritePrep_Keese                         ; 0x6F - KEESE
#_06873B: dw SpritePrep_DoNothingG                    ; 0x70 - KING HELMASAUR FIREBALL
#_06873D: dw SpritePrep_FairyPond                     ; 0x71 - LEEVER
#_06873F: dw SpritePrep_IgnoreProjectiles             ; 0x72 - FAERIE POND TRIGGER
#_068741: dw SpritePrep_UncleAndPriest_bounce         ; 0x73 - UNCLE / PRIEST / MANTLE
#_068743: dw SpritePrep_RunningBoy_bounce             ; 0x74 - RUNNING MAN
#_068745: dw SpritePrep_IgnoreProjectiles             ; 0x75 - BOTTLE MERCHANT
#_068747: dw SpritePrep_Zelda_bounce                  ; 0x76 - ZELDA
#_068749: dw SpritePrep_Antifairy                     ; 0x77 - ANTIFAIRY
#_06874B: dw SpritePrep_MrsSahasrahla                 ; 0x78 - SAHASRAHLAS WIFE
#_06874D: dw SpritePrep_OverworldBonkItem             ; 0x79 - BEE
#_06874F: dw SpritePrep_Agahnim                       ; 0x7A - AGAHNIM
#_068751: dw SpritePrep_DoNothingG                    ; 0x7B - AGAHNIMS BALLS
#_068753: dw SpritePrep_GreenStalfos                  ; 0x7C - GREEN STALFOS
#_068755: dw SpritePrep_BigSpike                      ; 0x7D - BIG SPIKE
#_068757: dw SpritePrep_FireBar                       ; 0x7E - FIREBAR CLOCKWISE
#_068759: dw SpritePrep_FireBar                       ; 0x7F - FIREBAR COUNTERCLOCKWISE
#_06875B: dw SpritePrep_DoNothingG                    ; 0x80 - FIRESNAKE
#_06875D: dw SpritePrep_DoNothingG                    ; 0x81 - HOVER
#_06875F: dw SpritePrep_AntifairyCircle_bounce        ; 0x82 - ANTIFAIRY CIRCLE
#_068761: dw SpritePrep_Eyegore_bounce                ; 0x83 - GREEN EYEGORE / GREEN MIMIC
#_068763: dw SpritePrep_Eyegore_bounce                ; 0x84 - RED EYEGORE / RED MIMIC
#_068765: dw SpritePrep_DoNothingG                    ; 0x85 - YELLOW STALFOS
#_068767: dw SpritePrep_Kodongo                       ; 0x86 - KODONGO
#_068769: dw SpritePrep_DoNothingG                    ; 0x87 - KONDONGO FIRE
#_06876B: dw SpritePrep_Mothula                       ; 0x88 - MOTHULA
#_06876D: dw SpritePrep_DoNothingG                    ; 0x89 - MOTHULA BEAM
#_06876F: dw SpritePrep_Spike                         ; 0x8A - SPIKE BLOCK
#_068771: dw SpritePrep_DoNothingG                    ; 0x8B - GIBDO
#_068773: dw SpritePrep_Arrghus                       ; 0x8C - ARRGHUS
#_068775: dw SpritePrep_Arrghi                        ; 0x8D - ARRGHI
#_068777: dw SpritePrep_DoNothingG                    ; 0x8E - TERRORPIN
#_068779: dw SpritePrep_Blob                          ; 0x8F - BLOB
#_06877B: dw SpritePrep_DoNothingG                    ; 0x90 - WALLMASTER
#_06877D: dw SpritePrep_DoNothingG                    ; 0x91 - STALFOS KNIGHT
#_06877F: dw SpritePrep_HelmasaurKing                 ; 0x92 - KING HELMASAUR
#_068781: dw SpritePrep_Bumper                        ; 0x93 - BUMPER
#_068783: dw SpritePrep_DoNothingA                    ; 0x94 - PIROGUSU
#_068785: dw SpritePrep_LaserEye_bounce               ; 0x95 - LASER EYE LEFT
#_068787: dw SpritePrep_LaserEye_bounce               ; 0x96 - LASER EYE RIGHT
#_068789: dw SpritePrep_LaserEye_bounce               ; 0x97 - LASER EYE TOP
#_06878B: dw SpritePrep_LaserEye_bounce               ; 0x98 - LASER EYE BOTTOM
#_06878D: dw SpritePrep_DoNothingA                    ; 0x99 - PENGATOR
#_06878F: dw SpritePrep_CacheOriginalCoordinates      ; 0x9A - KYAMERON
#_068791: dw SpritePrep_DoNothingA                    ; 0x9B - WIZZROBE
#_068793: dw SpritePrep_Zoro                          ; 0x9C - ZORO
#_068795: dw SpritePrep_Babasu                        ; 0x9D - BABASU
#_068797: dw SpritePrep_HauntedGroveOstritch          ; 0x9E - HAUNTED GROVE OSTRITCH
#_068799: dw SpritePrep_HauntedGroveAnimal            ; 0x9F - HAUNTED GROVE RABBIT
#_06879B: dw SpritePrep_HauntedGroveAnimal            ; 0xA0 - HAUNTED GROVE BIRD
#_06879D: dw SpritePrep_MoveDown_8px                  ; 0xA1 - FREEZOR
#_06879F: dw SpritePrep_Kholdstare                    ; 0xA2 - KHOLDSTARE
#_0687A1: dw SpritePrep_KholdstareShell               ; 0xA3 - KHOLDSTARE SHELL
#_0687A3: dw SpritePrep_FallingIce                    ; 0xA4 - FALLING ICE
#_0687A5: dw SpritePrep_DoNothingE                    ; 0xA5 - BLUE ZAZAK
#_0687A7: dw SpritePrep_DoNothingE                    ; 0xA6 - RED ZAZAK
#_0687A9: dw SpritePrep_Stalfos                       ; 0xA7 - STALFOS
#_0687AB: dw SpritePrep_Zirro                         ; 0xA8 - GREEN ZIRRO
#_0687AD: dw SpritePrep_Zirro                         ; 0xA9 - BLUE ZIRRO
#_0687AF: dw SpritePrep_DoNothingC                    ; 0xAA - PIKIT
#_0687B1: dw SpritePrep_DoNothingH                    ; 0xAB - CRYSTAL MAIDEN
#_0687B3: dw SpritePrep_OverworldBonkItem             ; 0xAC - APPLE
#_0687B5: dw SpritePrep_OldMan_bounce                 ; 0xAD - OLD MAN
#_0687B7: dw SpritePrep_DoNothingA                    ; 0xAE - PIPE DOWN
#_0687B9: dw SpritePrep_DoNothingA                    ; 0xAF - PIPE UP
#_0687BB: dw SpritePrep_DoNothingA                    ; 0xB0 - PIPE RIGHT
#_0687BD: dw SpritePrep_DoNothingA                    ; 0xB1 - PIPE LEFT
#_0687BF: dw SpritePrep_NiceBee                       ; 0xB2 - GOOD BEE
#_0687C1: dw SpritePrep_PedestalPlaque                ; 0xB3 - PEDESTAL PLAQUE
#_0687C3: dw SpritePrep_PurpleChest                   ; 0xB4 - PURPLE CHEST
#_0687C5: dw SpritePrep_BombShoppe                    ; 0xB5 - BOMB SHOP GUY
#_0687C7: dw SpritePrep_Kiki                          ; 0xB6 - KIKI
#_0687C9: dw SpritePrep_BlindMaiden                   ; 0xB7 - BLIND MAIDEN
#_0687CB: dw SpritePrep_DoNothingA                    ; 0xB8 - DIALOGUE TESTER
#_0687CD: dw SpritePrep_BullyAndVictim                ; 0xB9 - BULLY / PINK BALL
#_0687CF: dw SpritePrep_Whirlpool                     ; 0xBA - WHIRLPOOL
#_0687D1: dw SpritePrep_Shopkeeper                    ; 0xBB - SHOPKEEPER / CHEST GAME GUY
#_0687D3: dw SpritePrep_IgnoreProjectiles             ; 0xBC - DRUNKARD
#_0687D5: dw SpritePrep_Vitreous                      ; 0xBD - VITREOUS
#_0687D7: dw SpritePrep_MiniVitreous                  ; 0xBE - VITREOUS SMALL EYE
#_0687D9: dw SpritePrep_DoNothingA                    ; 0xBF - LIGHTNING
#_0687DB: dw SpritePrep_Catfish                       ; 0xC0 - CATFISH
#_0687DD: dw SpritePrep_CutsceneAgahnim               ; 0xC1 - CUTSCENE AGAHNIM
#_0687DF: dw SpritePrep_DoNothingA                    ; 0xC2 - BOULDER
#_0687E1: dw SpritePrep_Gibo                          ; 0xC3 - GIBO
#_0687E3: dw SpritePrep_DoNothingA                    ; 0xC4 - THIEF
#_0687E5: dw SpritePrep_IgnoreProjectiles             ; 0xC5 - MEDUSA
#_0687E7: dw SpritePrep_IgnoreProjectiles             ; 0xC6 - 4WAY SHOOTER
#_0687E9: dw SpritePrep_Pokey                         ; 0xC7 - POKEY
#_0687EB: dw SpritePrep_BigFairy                      ; 0xC8 - BIG FAERIE
#_0687ED: dw SpritePrep_Tektite                       ; 0xC9 - TEKTITE / FIREBAT
#_0687EF: dw SpritePrep_Chainchomp_bounce             ; 0xCA - CHAIN CHOMP
#_0687F1: dw SpritePrep_Trinexx                       ; 0xCB - TRINEXX ROCK HEAD
#_0687F3: dw SpritePrep_Trinexx                       ; 0xCC - TRINEXX FIRE HEAD
#_0687F5: dw SpritePrep_Trinexx                       ; 0xCD - TRINEXX ICE HEAD
#_0687F7: dw SpritePrep_Blind                         ; 0xCE - BLIND
#_0687F9: dw SpritePrep_Swamola                       ; 0xCF - SWAMOLA
#_0687FB: dw SpritePrep_DoNothingA                    ; 0xD0 - LYNEL
#_0687FD: dw SpritePrep_DoNothingA                    ; 0xD1 - BUNNYBEAM / SMOKE
#_0687FF: dw SpritePrep_IgnoreProjectiles             ; 0xD2 - FLOPPING FISH
#_068801: dw SpritePrep_RockStal                      ; 0xD3 - STAL
#_068803: dw SpritePrep_IgnoreProjectiles             ; 0xD4 - LANDMINE
#_068805: dw SpritePrep_DiggingGameGuy_bounce         ; 0xD5 - DIG GAME GUY
#_068807: dw SpritePrep_Ganon                         ; 0xD6 - GANON
#_068809: dw SpritePrep_Ganon                         ; 0xD7 - GANON
#_06880B: dw SpritePrep_Absorbable                    ; 0xD8 - HEART
#_06880D: dw SpritePrep_Absorbable                    ; 0xD9 - GREEN RUPEE
#_06880F: dw SpritePrep_Absorbable                    ; 0xDA - BLUE RUPEE
#_068811: dw SpritePrep_Absorbable                    ; 0xDB - RED RUPEE
#_068813: dw SpritePrep_Absorbable                    ; 0xDC - BOMB REFILL 1
#_068815: dw SpritePrep_Absorbable                    ; 0xDD - BOMB REFILL 4
#_068817: dw SpritePrep_Absorbable                    ; 0xDE - BOMB REFILL 8
#_068819: dw SpritePrep_Absorbable                    ; 0xDF - SMALL MAGIC DECANTER
#_06881B: dw SpritePrep_Absorbable                    ; 0xE0 - LARGE MAGIC DECANTER
#_06881D: dw SpritePrep_Absorbable                    ; 0xE1 - ARROW REFILL 5
#_06881F: dw SpritePrep_Absorbable                    ; 0xE2 - ARROW REFILL 10
#_068821: dw SpritePrep_Fairy                         ; 0xE3 - FAERIE
#_068823: dw SpritePrep_SmallKey                      ; 0xE4 - SMALL KEY
#_068825: dw SpritePrep_BigKey                        ; 0xE5 - BIG KEY
#_068827: dw SpritePrep_DoNothingF                    ; 0xE6 - STOLEN SHIELD
#_068829: dw SpritePrep_Mushroom_bounce               ; 0xE7 - MUSHROOM
#_06882B: dw SpritePrep_FakeMasterSword_bounce        ; 0xE8 - FAKE MASTER SWORD
#_06882D: dw SpritePrep_MagicShopAssistant_bounce     ; 0xE9 - MAGIC SHOP ASSISTANT
#_06882F: dw SpritePrep_HeartContainer_bounce         ; 0xEA - HEART CONTAINER
#_068831: dw SpritePrep_HeartPiece                    ; 0xEB - HEART PIECE
#_068833: dw SpritePrep_DoNothingI                    ; 0xEC - THROWN ITEM
#_068835: dw SpritePrep_DoNothingA                    ; 0xED - SOMARIA PLATFORM
#_068837: dw SpritePrep_Mantle                        ; 0xEE - CASTLE MANTLE
#_068839: dw SpritePrep_DoNothingA                    ; 0xEF - UNUSED SOMARIA PLATFORM
#_06883B: dw SpritePrep_DoNothingA                    ; 0xF0 - UNUSED SOMARIA PLATFORM
#_06883D: dw SpritePrep_DoNothingA                    ; 0xF1 - UNUSED SOMARIA PLATFORM
#_06883F: dw SpritePrep_MedallionTablet_bounce        ; 0xF2 - MEDALLION TABLET

;===================================================================================================
; Moves 3 pixels down and 8 pixels right
;===================================================================================================
SpritePrep_Mantle:
#_068841: LDA.w $0D00,X
#_068844: CLC
#_068845: ADC.b #$03
#_068847: STA.w $0D00,X

;===================================================================================================
; It does what it says
;===================================================================================================
SpritePrep_MoveRight_8px:
#_06884A: LDA.w $0D10,X
#_06884D: CLC
#_06884E: ADC.b #$08
#_068850: STA.w $0D10,X

#_068853: RTS

;===================================================================================================

SpritePrep_MedallionTablet_bounce:
#_068854: JSL SpritePrep_MedallionTablet

#_068858: RTS

;===================================================================================================
; Checks room ID for rooms that need to be tongue switches
;===================================================================================================
SpritePrep_Switch:
#_068859: LDA.w $048E
#_06885C: CMP.b #$CE ; ice palace pre-kholdstare
#_06885E: BEQ .tongue_room

#_068860: CMP.b #$04 ; turtle rock rupees
#_068862: BEQ .tongue_room

#_068864: CMP.b #$3F ; ice palace HP
#_068866: BNE SpritePrep_DoNothingB

.tongue_room
#_068868: LDA.b #$0D
#_06886A: STA.w $0F50,X

;===================================================================================================
; Appears to do nothing
;===================================================================================================
SpritePrep_DoNothingB:
#_06886D: RTS

;===================================================================================================
; Why are there so many of these? wtf
;===================================================================================================
SpritePrep_Snitch_bounce_1:
#_06886E: JSL SpritePrep_Snitch

#_068872: RTS

;===================================================================================================
; I'll need to investigate this in full later.
;===================================================================================================
SpritePrep_DoNothingA:
#_068873: RTS

;===================================================================================================
; Changes behavior based on world ID
;===================================================================================================
pool SpritePrep_Rat

.damage
#_068874: db $00, $05

.hp
#_068876: db   2,   8

pool off

;---------------------------------------------------------------------------------------------------

SpritePrep_Rat:
#_068878: LDY.w $0FFF

#_06887B: LDA.w .damage,Y
#_06887E: STA.w $0CD2,X

#_068881: LDA.w .hp,Y
#_068884: STA.w $0E50,X

#_068887: RTS

;===================================================================================================
; Changes behavior based on world ID
;===================================================================================================
pool SpritePrep_Keese

.damage
#_068888: db $80, $85

.hp
#_06888A: db   1,   4

.prizepack
#_06888C: db $00, $07

pool off

;---------------------------------------------------------------------------------------------------

SpritePrep_Keese:
#_06888E: LDY.w $0FFF

#_068891: LDA.w .damage,Y
#_068894: STA.w $0CD2,X

#_068897: LDA.w .hp,Y
#_06889A: STA.w $0E50,X

#_06889D: LDA.w .prizepack,Y
#_0688A0: STA.w $0BE0,X

#_0688A3: RTS

;===================================================================================================
; SNAKES
;===================================================================================================
pool SpritePrep_Rope

.damage
#_0688A4: db $01, $05

.hp
#_0688A6: db   4,   8

.prizepack
#_0688A8: db $01, $07

pool off

;---------------------------------------------------------------------------------------------------

SpritePrep_Rope:
#_0688AA: LDY.w $0FFF

#_0688AD: LDA.w .damage,Y
#_0688B0: STA.w $0CD2,X

#_0688B3: LDA.w .hp,Y
#_0688B6: STA.w $0E50,X

#_0688B9: LDA.w .prizepack,Y
#_0688BC: STA.w $0BE0,X

#_0688BF: RTS

;===================================================================================================

SpritePrep_Swamola:
#_0688C0: JSL SpritePrep_Swamola_InitializeSegments

#_0688C4: JMP.w SpritePrep_CacheOriginalCoordinates

;===================================================================================================

SpritePrep_Blind:
#_0688C7: JSR SpritePrep_Boss
#_0688CA: JSL SpritePrep_Blind_PrepareBattle

#_0688CE: RTS

;===================================================================================================

SpritePrep_Ganon:
#_0688CF: JSR SpritePrep_Boss
#_0688D2: JSL SpritePrep_Ganon_PrepareBattle

#_0688D6: RTS

;===================================================================================================

pool SpritePrep_Pokey

.speed_x
#_0688D7: db  16, -16,  16, -16

.speed_y
#_0688DB: db  16,  16, -16, -16

pool off

;---------------------------------------------------------------------------------------------------

SpritePrep_Pokey:
#_0688DF: LDA.b #$03
#_0688E1: STA.w $0D90,X

#_0688E4: LDA.b #$08
#_0688E6: STA.w $0DA0,X

#_0688E9: JSL GetRandomNumber
#_0688ED: AND.b #$03
#_0688EF: TAY

#_0688F0: LDA.w .speed_x,Y
#_0688F3: STA.w $0D50,X

#_0688F6: LDA.w .speed_y,Y
#_0688F9: STA.w $0D40,X

#_0688FC: RTS

;===================================================================================================
; Coulda saved 4 bytes here
; for shame
;===================================================================================================
SpritePrep_MiniVitreous:
#_0688FD: JSR SpritePrep_Boss

#_068900: RTS

;===================================================================================================
; Make it float and initialize its thing
;===================================================================================================
SpritePrep_Gibo:
#_068901: LDA.b #$10
#_068903: STA.w $0F70,X

#_068906: LDA.b #$08
#_068908: STA.w $0ED0,X

#_06890B: RTS

;===================================================================================================
; Has different timers based on sprite slot
; despite the fact that there's only one of these in the entire game
;===================================================================================================
pool SpritePrep_Octoballoon

.timer
#_06890C: db 192,  208,  224,  240

pool off

;---------------------------------------------------------------------------------------------------

SpritePrep_Octoballoon:
#_068910: TXA ; why...?
#_068911: AND.b #$03
#_068913: TAY

#_068914: LDA.w .timer,Y
#_068917: STA.w $0DF0,X

#_06891A: RTS

;===================================================================================================
; Destroys barrier if it's been destroyed
; moves it up 4 pixels and right 8 pixels
; Ignores projectiles
;===================================================================================================
SpritePrep_AgahnimsBarrier:
#_06891B: PHX

#_06891C: LDX.b $8A

#_06891E: LDA.l $7EF280,X

#_068922: PLX

#_068923: AND.b #$40
#_068925: BEQ SpritePrep_Catfish

#_068927: LDA.b #$04
#_068929: STA.w $0DC0,X

;===================================================================================================
; Moves catfish up by 4 pixels and right 8 pixels
;===================================================================================================
SpritePrep_Catfish:
#_06892C: JSR SpritePrep_MoveDown_8px_Right8px

#_06892F: LDA.w $0D00,X
#_068932: SEC
#_068933: SBC.b #$0C
#_068935: STA.w $0D00,X

#_068938: JMP.w SpritePrep_IgnoreProjectiles

;===================================================================================================
; Kills Aga if cutscene has been viewed
; Prepares cutscene if it hasn't
;===================================================================================================
SpritePrep_CutsceneAgahnim:
#_06893B: LDA.w $0403
#_06893E: AND.b #$40
#_068940: BEQ .not_seen_cutscene

#_068942: STZ.w $0DD0,X

#_068945: RTS

.not_seen_cutscene
#_068946: JSL CutsceneAgahnim_SpawnZeldaOnAltar

#_06894A: JMP.w SpritePrep_IgnoreProjectiles

;===================================================================================================
; Also moves vitty left 16 pixels
;===================================================================================================
SpritePrep_Vitreous:
#_06894D: JSR SpritePrep_Boss
#_068950: JSR SpritePrep_MoveDown_8px_Right8px

#_068953: LDA.w $0D00,X
#_068956: SEC
#_068957: SBC.b #$10
#_068959: STA.w $0D00,X

#_06895C: JSL Vitreous_SpawnMinions
#_068960: JMP.w SpritePrep_IgnoreProjectiles

;===================================================================================================
; Swaps stats based on world ID
; Bleeds into vulture prep
;===================================================================================================
pool SpritePrep_Raven

.damage
#_068963: db $81, $88

.hp
#_068965: db $04, $08

.prize_pack
#_068967: db $06, $02

pool off

;---------------------------------------------------------------------------------------------------

SpritePrep_Raven:
#_068969: LDY.w $0FFF

#_06896C: LDA.w .damage,Y
#_06896F: STA.w $0CD2,X

#_068972: LDA.w .hp,Y
#_068975: STA.w $0E50,X

#_068978: LDA.w .prize_pack,Y
#_06897B: STA.w $0BE0,X

;===================================================================================================

SpritePrep_Vulture:
#_06897E: LDA.b #$00
#_068980: STA.w $0F70,X

#_068983: LDA.w $0D10,X
#_068986: AND.b #$10
#_068988: LSR A
#_068989: LSR A
#_06898A: LSR A
#_06898B: LSR A
#_06898C: STA.w $0D90,X

#_06898F: BRA SpritePrep_SetAuxToFE

;===================================================================================================

SpritePrep_Poe:
#_068991: LDA.b #$0C
#_068993: STA.w $0F70,X

;===================================================================================================

SpritePrep_SetAuxToFE:
#_068996: LDA.b #$FE
#_068998: STA.w $0E30,X

;===================================================================================================
; This routine differs greatly from the JP1.0 version of Super Mario World
; on account of that being a completely different game.
;===================================================================================================
SpritePrep_DoNothingC:
#_06899B: RTS

;===================================================================================================

SpritePrep_BlindMaiden:
#_06899C: LDA.l $7EF159 ; Check boss room flag.
#_0689A0: AND.b #$08
#_0689A2: BNE .kill_the_girl

#_0689A4: INC.w $0BA0,X

#_0689A7: LDA.l $7EF3CC
#_0689AB: CMP.b #$00 ; you didn't need this CMP
#_0689AD: BNE .kill_the_girl

#_0689AF: LDA.b #!FOLLOWER_06
#_0689B1: STA.l $7EF3CC

#_0689B5: PHX

#_0689B6: STZ.w $02F9

#_0689B9: JSL LoadFollowerGraphics
#_0689BD: JSL Follower_Initialize

#_0689C1: PLX

#_0689C2: LDA.b #$00
#_0689C4: STA.l $7EF3CC

#_0689C8: RTS

.kill_the_girl
#_0689C9: STZ.w $0DD0,X

#_0689CC: RTS

;===================================================================================================

SpritePrep_MiniMoldorm_bounce:
#_0689CD: JSL SpritePrep_MiniMoldorm

#_0689D1: RTS

;===================================================================================================
; Makes them float
;===================================================================================================
SpritePrep_Zirro:
#_0689D2: LDA.b #$10
#_0689D4: STA.w $0F70,X

#_0689D7: BRA SpritePrep_SetAuxToFE

;===================================================================================================

SpritePrep_BombShoppe:
#_0689D9: INC.w $0BA0,X

#_0689DC: LDA.b #!SPRITE_B5
#_0689DE: JSL Sprite_SpawnDynamically
#_0689E2: BMI .no_room_to_spawn_OHNO

#_0689E4: LDA.b $00
#_0689E6: SEC
#_0689E7: SBC.b #$18
#_0689E9: STA.w $0D10,Y

#_0689EC: LDA.b $01
#_0689EE: SBC.b #$00
#_0689F0: STA.w $0D30,Y

#_0689F3: LDA.b $02
#_0689F5: SEC
#_0689F6: SBC.b #$18
#_0689F8: STA.w $0D00,Y

#_0689FB: LDA.b $03
#_0689FD: SBC.b #$00
#_0689FF: STA.w $0D20,Y

#_068A02: LDA.b #$01
#_068A04: STA.w $0E80,Y
#_068A07: STA.w $0BA0,Y

;---------------------------------------------------------------------------------------------------

.no_room_to_spawn_OHNO
#_068A0A: LDA.l $7EF37A ; check for crystals 5 and 6
#_068A0E: AND.b #$05
#_068A10: CMP.b #$05
#_068A12: BNE .you_dont_deserve_the_big_bomb

#_068A14: LDA.l $7EF3C9 ; check for dwarf rescue
#_068A18: AND.b #$20
#_068A1A: BEQ .you_dont_deserve_the_big_bomb

#_068A1C: LDA.b #!SPRITE_B5
#_068A1E: JSL Sprite_SpawnDynamically
#_068A22: BMI .you_dont_deserve_the_big_bomb

#_068A24: LDA.b $00
#_068A26: SEC
#_068A27: SBC.b #$38
#_068A29: STA.w $0D10,Y

#_068A2C: LDA.b $01
#_068A2E: SBC.b #$00
#_068A30: STA.w $0D30,Y

#_068A33: LDA.b $02
#_068A35: SEC
#_068A36: SBC.b #$18
#_068A38: STA.w $0D00,Y

#_068A3B: LDA.b $03
#_068A3D: SBC.b #$00
#_068A3F: STA.w $0D20,Y

#_068A42: LDA.b #$02
#_068A44: STA.w $0E80,Y
#_068A47: STA.w $0BA0,Y

.you_dont_deserve_the_big_bomb
#_068A4A: RTS

;===================================================================================================

SpritePrep_BullyAndVictim:
#_068A4B: JSL SpawnBully

#_068A4F: INC.w $0BA0,X

#_068A52: RTS

;===================================================================================================

SpritePrep_PurpleChest:
#_068A53: LDA.l $7EF3CC
#_068A57: CMP.b #!FOLLOWER_0C
#_068A59: BEQ No_chest_for_you

#_068A5B: LDA.l $7EF3C9
#_068A5F: AND.b #$10
#_068A61: BNE No_chest_for_you

#_068A63: LDA.l $7EF3C9
#_068A67: AND.b #$20
#_068A69: BEQ No_chest_for_you

#_068A6B: INC.w $0BA0,X

#_068A6E: RTS

;===================================================================================================

No_chest_for_you:
No_frog_for_you:
#_068A6F: STZ.w $0DD0,X

#_068A72: RTS

;===================================================================================================

SpritePrep_Smithy:
#_068A73: INC.w $0BA0,X

#_068A76: LDA.l $7EF3CA
#_068A7A: AND.b #$40
#_068A7C: BEQ .in_light_world

#_068A7E: LDA.l $7EF3C9 ; check for dwarf rescue
#_068A82: AND.b #$20
#_068A84: BNE No_frog_for_you

#_068A86: LDA.l $7EF3CC
#_068A8A: CMP.b #$00 ; 2 bytes down the drain
#_068A8C: BNE No_frog_for_you

#_068A8E: LDA.b #$02
#_068A90: STA.w $0E80,X

#_068A93: RTS

;---------------------------------------------------------------------------------------------------

.in_light_world
#_068A94: JSL Smithy_SpawnDumbBarrierSprite

#_068A98: LDA.l $7EF3C9 ; check for dwarf rescue
#_068A9C: AND.b #$20
#_068A9E: BNE .rescued

#_068AA0: LDA.w $0D10,X
#_068AA3: CLC
#_068AA4: ADC.b #$02
#_068AA6: STA.w $0D10,X

#_068AA9: LDA.w $0D00,X
#_068AAC: SEC
#_068AAD: SBC.b #$03
#_068AAF: STA.w $0D00,X

#_068AB2: RTS

;---------------------------------------------------------------------------------------------------

.rescued
#_068AB3: LDA.w $0D10,X
#_068AB6: CLC
#_068AB7: ADC.b #$02
#_068AB9: STA.w $0D10,X

#_068ABC: LDA.w $0D00,X
#_068ABF: SEC
#_068AC0: SBC.b #$03
#_068AC2: STA.w $0D00,X

#_068AC5: JSR Smithy_SpawnDwarfPal

#_068AC8: PHX
#_068AC9: PHY

#_068ACA: TYX
#_068ACB: JSL Smithy_SpawnDumbBarrierSprite

#_068ACF: PLY
#_068AD0: PLX

#_068AD1: TYA
#_068AD2: STA.w $0E90,X

#_068AD5: TXA
#_068AD6: STA.w $0E90,Y

#_068AD9: LDA.l $7EF3C9
#_068ADD: AND.b #$80
#_068ADF: BEQ .exit

#_068AE1: LDA.b #$05
#_068AE3: STA.w $0D80,X
#_068AE6: STA.w $0D80,Y

.exit
#_068AE9: RTS

;===================================================================================================

SpritePrep_Babasu:
#_068AEA: JSR SpritePrep_MoveDown_8px

;===================================================================================================
; Sprite ID determines subtype.
;===================================================================================================
SpritePrep_Zoro:
#_068AED: LDA.w $0E20,X
#_068AF0: SEC
#_068AF1: SBC.b #$9C
#_068AF3: ASL A
#_068AF4: STA.w $0DE0,X

#_068AF7: DEC.w $0DC0,X

#_068AFA: RTS

;===================================================================================================

UNREACHABLE_068AFB:
#_068AFB: db $F8, $08

;===================================================================================================

SpritePrep_LaserEye_bounce:
#_068AFD: JSL SpritePrep_LaserEye

#_068B01: RTS

;===================================================================================================

SpritePrep_Popo:
#_068B02: LDA.b #$07
#_068B04: BRA .set_movement_mask

;===================================================================================================

#SpritePrep_Popo2:
#_068B06: LDA.b #$0F

;===================================================================================================

.set_movement_mask
#_068B08: STA.w $0DA0,X

#_068B0B: RTS

;===================================================================================================
; Move down 7 pixels
;===================================================================================================
SpritePrep_Statue:
#_068B0C: LDA.w $0D00,X
#_068B0F: CLC
#_068B10: ADC.b #$07
#_068B12: STA.w $0D00,X

#_068B15: RTS

;===================================================================================================
; Float 6 pixels high
; Make the ones before Kholdstare live under a rock
;===================================================================================================
SpritePrep_Bari:
#_068B16: LDA.b #$06
#_068B18: STA.w $0F70,X

#_068B1B: LDA.w $048E
#_068B1E: CMP.b #$CE ; go under a rock in the room before khold
#_068B20: BNE .not_uninformed

#_068B22: DEC.w $0DB0,X

.not_uninformed
#_068B25: JMP.w Bari_RandomlySetTimer2

;===================================================================================================
; Make it float 9 pixels
;===================================================================================================
SpritePrep_GreenStalfos:
#_068B28: LDA.b #$09
#_068B2A: STA.w $0F70,X

#_068B2D: RTS

;===================================================================================================
; Move down 5 pixels
;===================================================================================================
SpritePrep_WaterLever:
#_068B2E: LDA.w $0D00,X
#_068B31: CLC
#_068B32: ADC.b #$05
#_068B34: STA.w $0D00,X

#_068B37: RTS

;===================================================================================================
; Sprite 63 becomes a blue debirando
; Sprite 64 becomes a red debirando
; Both are changed to 63 then spawn sprite 64
;===================================================================================================
SpritePrep_Debirando:
#_068B38: LDA.b #!SPRITE_63
#_068B3A: STA.w $0E20,X

#_068B3D: JSL SpritePrep_LoadProperties
#_068B41: DEC.w $0ED0,X

;===================================================================================================

SpritePrep_DebirandoPit:
#_068B44: INC.w $0ED0,X

#_068B47: LDA.b #$00
#_068B49: STA.w $0DF0,X

#_068B4C: LDA.b #$06
#_068B4E: STA.w $0DC0,X

#_068B51: JSR SpritePrep_IgnoreProjectiles
#_068B54: LDA.b #!SPRITE_64

#_068B56: JSL Sprite_SpawnDynamically
#_068B5A: BMI .no_room

#_068B5C: JSL Sprite_SetSpawnedCoordinates

#_068B60: LDA.b #$60
#_068B62: STA.w $0DF0,Y

; get parent slot
#_068B65: TYA
#_068B66: STA.w $0EB0,X

#_068B69: LDA.w $0ED0,X
#_068B6C: STA.w $0ED0,Y

#_068B6F: PHX

#_068B70: TAX

#_068B71: LDA.w .palette,X
#_068B74: STA.w $0F50,Y

#_068B77: PLX

.no_room
#_068B78: RTS

;---------------------------------------------------------------------------------------------------

.palette
#_068B79: db $06, $08

;===================================================================================================
; Puny dagger man
;===================================================================================================
SpritePrep_WeakGuard:
#_068B7B: JSL GetRandomNumber
#_068B7F: AND.b #$03
#_068B81: STA.w $0DE0,X
#_068B84: STA.w $0EB0,X

#_068B87: LDA.b #$10
#_068B89: STA.w $0DF0,X

#_068B8C: RTS

;===================================================================================================
; Use sprite ID to determine direction and character.
;===================================================================================================
SpritePrep_WallCannon:
#_068B8D: LDA.w $0E20,X
#_068B90: SEC
#_068B91: SBC.b #$66
#_068B93: STA.w $0DE0,X

#_068B96: AND.b #$02
#_068B98: STA.w $0D90,X

#_068B9B: RTS

;===================================================================================================

SpritePrep_ArrowGame_bounce:
#_068B9C: JSL SpritePrep_ArrowGame

#_068BA0: RTS

;===================================================================================================
; Ignore arrows and stuff
;===================================================================================================
SpritePrep_IgnoreProjectiles:
#_068BA1: INC.w $0BA0,X

#_068BA4: RTS

;===================================================================================================
; If you have the flute, then the animals die.
;===================================================================================================
SpritePrep_HauntedGroveAnimal:
#_068BA5: JSR Sprite_IsRightOfLink

#_068BA8: TYA
#_068BA9: STA.w $0DE0,X

;===================================================================================================

SpritePrep_HauntedGroveOstritch:
#_068BAC: LDA.l $7EF34C
#_068BB0: CMP.b #$02
#_068BB2: BCC .has_no_flute

#_068BB4: STZ.w $0DD0,X

.has_no_flute
#_068BB7: BRA SpritePrep_IgnoreProjectiles

;===================================================================================================

SpritePrep_DiggingGameGuy_bounce:
#_068BB9: JSL SpritePrep_DiggingGameGuy

#_068BBD: RTS

;===================================================================================================

SpritePrep_ThievesTownGrate:
; Check VoO screen for this being pulled already
#_068BBE: LDA.l $7EF2D8
#_068BC2: AND.b #$20
#_068BC4: BEQ SpritePrep_RupeePull

#_068BC6: STZ.w $0DD0,X

;===================================================================================================

SpritePrep_RupeePull:
#_068BC9: INC.w $0BA0,X

#_068BCC: LDA.w $0D10,X
#_068BCF: SEC
#_068BD0: SBC.b #$08
#_068BD2: STA.w $0D10,X

#_068BD5: LDA.w $0D30,X
#_068BD8: SBC.b #$00
#_068BDA: STA.w $0D30,X

#_068BDD: RTS

;===================================================================================================

pool SpritePrep_Shopkeeper

.rooms
#_068BDE: db $0F ; Room 010F - Darkworld Lumberjack / Outcasts shield shop
#_068BDF: db $10 ; Room 0110 - East of Outcasts
#_068BE0: db $00 ; Room 0100 - Lost Woods chest game
#_068BE1: db $06 ; Room 0106 - Village of Outcasts chest game
#_068BE2: db $18 ; Room 0118 - South of Kak 3 chest game
#_068BE3: db $12 ; Room 0112 - Common cave shop
#_068BE4: db $1E ; Room 011E - Swamplands thief cave
#_068BE5: db $FF ; Room 00FF - Paradox cave shop
#_068BE6: db $1F ; Room 011F - Kakariko shop
#_068BE7: db $23 ; Room 0121 - Mini moldorm cave
#_068BE8: db $24 ; Room 0124 - Outside Desert thief
#_068BE9: db $25 ; Room 0125 - Ice rod cave thief
#_068BEA: db $27 ; Room 0127 - Hammer pegs cave

pool off

;---------------------------------------------------------------------------------------------------

SpritePrep_Shopkeeper:
#_068BEB: INC.w $0BA0,X

#_068BEE: LDA.w $0E40,X
#_068BF1: ORA.b #$02
#_068BF3: STA.w $0E40,X

#_068BF6: LDA.w $0F50,X
#_068BF9: ORA.b #$0C
#_068BFB: STA.w $0F50,X

#_068BFE: LDA.w $0E60,X
#_068C01: ORA.b #$10
#_068C03: STA.w $0E60,X

#_068C06: LDA.b $A0

#_068C08: LDY.b #$00

.next_room
#_068C0A: CMP.w .rooms,Y
#_068C0D: BEQ .found_room

#_068C0F: INY
#_068C10: BNE .next_room

;---------------------------------------------------------------------------------------------------

.found_room
#_068C12: TYA
#_068C13: JSL JumpTableLocal
#_068C17: dw SpritePrep_Shopkeeper_DarkWorldStock
#_068C19: dw SpritePrep_Shopkeeper_EastOfOutcasts
#_068C1B: dw SpritePrep_LostWoodsChestGame
#_068C1D: dw SpritePrep_ChestGameGuy
#_068C1F: dw SpritePrep_KakChestGame
#_068C21: dw SpritePrep_Shopkeeper_StandardStock
#_068C23: dw SpritePrep_NiceThief_WithGift
#_068C25: dw SpritePrep_Shopkeeper_StandardStock
#_068C27: dw SpritePrep_Shopkeeper_StandardStock
#_068C29: dw SpritePrep_NiceThief_WithGift
#_068C2B: dw SpritePrep_NiceThief_Desert
#_068C2D: dw SpritePrep_NiceThief_Ice
#_068C2F: dw SpritePrep_NiceThief_WithGift

;===================================================================================================

SpritePrep_Shopkeeper_DarkWorldStock:
#_068C31: LDA.b #$00
#_068C33: LDY.b #$07 ; Red potion
#_068C35: JSL ShopKeeper_SpawnShopItem

#_068C39: LDA.b #$01
#_068C3B: LDY.b #$08 ; Fighter shield
#_068C3D: JSL ShopKeeper_SpawnShopItem

#_068C41: LDA.b #$02
#_068C43: LDY.b #$0C ; Bombs
#_068C45: JSL ShopKeeper_SpawnShopItem

#_068C49: RTS

;===================================================================================================

SpritePrep_Shopkeeper_EastOfOutcasts:
#_068C4A: LDA.b #$00
#_068C4C: LDY.b #$09 ; Fire shield
#_068C4E: JSL ShopKeeper_SpawnShopItem

#_068C52: LDA.b #$01
#_068C54: LDY.b #$0D ; Bee
#_068C56: JSL ShopKeeper_SpawnShopItem

#_068C5A: LDA.b #$02
#_068C5C: LDY.b #$0B ; Arrows
#_068C5E: JSL ShopKeeper_SpawnShopItem

#_068C62: RTS

;===================================================================================================

SpritePrep_LostWoodsChestGame:
#_068C63: LDA.b #$04

#_068C65: BRA SpritePrep_Shopkeeper_SetType

;===================================================================================================

SpritePrep_ChestGameGuy:
#_068C67: LDA.b #$01
#_068C69: STA.w $0DC0,X

#_068C6C: BRA SpritePrep_Shopkeeper_SetType

;===================================================================================================

SpritePrep_KakChestGame:
#_068C6E: LDA.b #$03

;---------------------------------------------------------------------------------------------------

SpritePrep_Shopkeeper_SetType:
#_068C70: STA.w $0E80,X

#_068C73: LDA.b #$FF
#_068C75: STA.w $04C4

#_068C78: RTS

;===================================================================================================

SpritePrep_Shopkeeper_StandardStock:
#_068C79: LDA.b #$00
#_068C7B: LDY.b #$07 ; Red potion
#_068C7D: JSL ShopKeeper_SpawnShopItem

#_068C81: LDA.b #$01
#_068C83: LDY.b #$0A ; Heart
#_068C85: JSL ShopKeeper_SpawnShopItem

#_068C89: LDA.b #$02
#_068C8B: LDY.b #$0C ; Bombs
#_068C8D: JSL ShopKeeper_SpawnShopItem

#_068C91: RTS

;===================================================================================================

SpritePrep_NiceThief_WithGift:
#_068C92: LDA.b #$02

;===================================================================================================

SpritePrep_NiceThief_SetType:
#_068C94: STA.w $0E80,X

#_068C97: RTS

;===================================================================================================

SpritePrep_NiceThief_Desert:
#_068C98: LDA.b #$05

#_068C9A: BRA SpritePrep_NiceThief_SetType

;===================================================================================================

SpritePrep_NiceThief_Ice:
#_068C9C: LDA.b #$06

#_068C9E: BRA SpritePrep_NiceThief_SetType

;===================================================================================================

pool SpritePrep_Storyteller

.rooms
#_068CA0: db $0E ; Room 010E - bird
#_068CA1: db $0E ; Room 010E - hamburger helper
#_068CA2: db $12 ; Room 0112 - octorok
#_068CA3: db $1A ; Room 011A - broccoli
#_068CA4: db $14 ; Room 0114 - watto

pool off

;---------------------------------------------------------------------------------------------------

SpritePrep_Storyteller:
#_068CA5: INC.w $0BA0,X

#_068CA8: LDA.b $A0

#_068CAA: LDY.b #$00

.next_room
#_068CAC: CMP.w .rooms,Y
#_068CAF: BEQ .found_room

#_068CB1: INY
#_068CB2: BNE .next_room

;---------------------------------------------------------------------------------------------------

.found_room
#_068CB4: TYA
#_068CB5: STA.w $0E80,X
#_068CB8: BNE .exit

#_068CBA: LDA.w $0D30,X
#_068CBD: AND.b #$01
#_068CBF: BEQ .exit

#_068CC1: INC.w $0E80,X

.exit
#_068CC4: RTS

;===================================================================================================

pool SpritePrep_Adults

.rooms
#_068CC5: db $03 ; Room 0103 - Kakariko Tavern
#_068CC6: db $E1 ; Room 00E1 - Lost Woods hideout
#_068CC7: db $19 ; Room 0119 - Blind's Hideout

pool off

;---------------------------------------------------------------------------------------------------

SpritePrep_Adults:
#_068CC8: INC.w $0BA0,X

#_068CCB: LDA.b $A0

#_068CCD: LDY.b #$00

.next_room
#_068CCF: CMP.w .rooms,Y
#_068CD2: BEQ .found_room

#_068CD4: INY
#_068CD5: BNE .next_room

.found_room
#_068CD7: TYA
#_068CD8: STA.w $0E80,X

#_068CDB: RTS

;===================================================================================================

SpritePrep_Whirlpool:
#_068CDC: INC.w $0BA0,X

#_068CDF: LDA.b #$01
#_068CE1: STA.w $0D90,X

#_068CE4: RTS

;===================================================================================================

SpritePrep_Sage:
#_068CE5: INC.w $0BA0,X

#_068CE8: LDA.b $A0
#_068CEA: CMP.b #$0A
#_068CEC: BNE .not_aginah

#_068CEE: INC.w $0E80,X

#_068CF1: LDA.b #$0B
#_068CF3: STA.w $0F50,X

.not_aginah
#_068CF6: RTS

;===================================================================================================

pool SpritePrep_BonkKey

.room_flags
#_068CF7: db $40, $20

pool off

;---------------------------------------------------------------------------------------------------

SpritePrep_BonkItem:
#_068CF9: LDA.b $1B
#_068CFB: BEQ SpritePrep_LumberjackTree

#_068CFD: LDA.b #$02
#_068CFF: STA.w $0F20,X

; Check if library
#_068D02: LDA.b $A0
#_068D04: CMP.b #$07
#_068D06: BNE SpritePrep_BonkKey

#_068D08: LDA.b $A1
#_068D0A: CMP.b #$01
#_068D0C: BNE SpritePrep_BonkKey

;===================================================================================================

SpritePrep_BonkBook:
#_068D0E: LDA.l $7EF34E
#_068D12: BEQ .book_not_owned

#_068D14: STZ.w $0DD0,X

#_068D17: RTS

.book_not_owned
#_068D18: PHX

#_068D19: LDA.b #$0E
#_068D1B: JSL WriteTo4BPPBuffer_item_gfx

#_068D1F: PLX

#_068D20: RTS

;===================================================================================================

SpritePrep_BonkKey:
#_068D21: LDA.w $0B9B
#_068D24: STA.w $0CBA,X

#_068D27: TAY

#_068D28: INC.w $0B9B

#_068D2B: LDA.w $0403
#_068D2E: AND.w .room_flags,Y
#_068D31: BEQ .not_obtained

#_068D33: STZ.w $0DD0,X

.not_obtained
#_068D36: INC.w $0DC0,X

#_068D39: LDA.b #$08
#_068D3B: STA.w $0F50,X

#_068D3E: LDA.w $0E60,X
#_068D41: ORA.b #$20
#_068D43: STA.w $0E60,X

#_068D46: RTS

;===================================================================================================

SpritePrep_LumberjackTree:
#_068D47: LDA.b #$02
#_068D49: STA.w $0DC0,X

#_068D4C: RTS

;===================================================================================================
; Check screen flags to see if POD is already open
;===================================================================================================
SpritePrep_Kiki:
#_068D4D: INC.w $0BA0,X

#_068D50: PHX

#_068D51: LDX.b $8A
#_068D53: LDA.l $7EF280,X

#_068D57: PLX

#_068D58: AND.b #$20
#_068D5A: BEQ .monkey_lives

#_068D5C: STZ.w $0DD0,X

.monkey_lives
#_068D5F: RTS

;===================================================================================================

SpritePrep_Locksmith:
#_068D60: INC.w $0BA0,X

#_068D63: LDA.l $7EF3CC
#_068D67: CMP.b #!FOLLOWER_09
#_068D69: BNE .not_already_following

#_068D6B: STZ.w $0DD0,X

#_068D6E: RTS

;---------------------------------------------------------------------------------------------------

.not_already_following
#_068D6F: CMP.b #!FOLLOWER_0C
#_068D71: BNE .no_purple_chest

#_068D73: LDA.b #$02
#_068D75: STA.w $0D80,X

.no_purple_chest
#_068D78: LDA.l $7EF3C9
#_068D7C: AND.b #$10
#_068D7E: BEQ .exit

#_068D80: LDA.b #$04
#_068D82: STA.w $0D80,X

.exit
#_068D85: RTS

;===================================================================================================
; Set up AI based on net ownership
;===================================================================================================
SpritePrep_SickKid:
#_068D86: LDA.l $7EF34D
#_068D8A: BEQ .no_net

#_068D8C: LDA.b #$03
#_068D8E: STA.w $0D80,X

.no_net
#_068D91: INC.w $0BA0,X

#_068D94: RTS

;===================================================================================================

pool SpritePrep_Tektite

.palette
#_068D95: db $09, $07

.health
#_068D97: db   8,  12

.damage
#_068D99: db $03, $05

pool off

;---------------------------------------------------------------------------------------------------

SpritePrep_Tektite:
#_068D9B: LDA.w $0D10,X

#_068D9E: LSR A
#_068D9F: LSR A
#_068DA0: LSR A
#_068DA1: LSR A

#_068DA2: AND.b #$01
#_068DA4: STA.w $0D90,X

#_068DA7: TAY

#_068DA8: LDA.w .palette,Y
#_068DAB: STA.w $0F50,X

#_068DAE: LDA.w .health,Y
#_068DB1: STA.w $0E50,X

#_068DB4: LDA.w .damage,Y
#_068DB7: STA.w $0CD2,X

#_068DBA: LDA.b #$10
#_068DBC: JSR Sprite_ApplySpeedTowardsLink

#_068DBF: LDA.b #$20
#_068DC1: STA.w $0F80,X

#_068DC4: INC.w $0D80,X

#_068DC7: RTS

;===================================================================================================

SpritePrep_Chainchomp_bounce:
#_068DC8: JSL SpritePrep_Chainchomp

#_068DCC: RTS

;===================================================================================================
; Make her floaty and move her and make her bulletproof
;===================================================================================================
SpritePrep_BigFairy:
#_068DCD: LDA.b #$18
#_068DCF: STA.w $0F70,X

#_068DD2: JSR SpritePrep_MoveDown_8px_Right8px

#_068DD5: JMP.w SpritePrep_IgnoreProjectiles

;===================================================================================================
; Move her down 8 pixels even though there's already a routine for that
;===================================================================================================
SpritePrep_MrsSahasrahla:
#_068DD8: LDA.w $0D00,X
#_068DDB: CLC
#_068DDC: ADC.b #$08
#_068DDE: STA.w $0D00,X

;===================================================================================================
; Move them okay
;===================================================================================================
SpritePrep_MagicBat:
SpritePrep_Lumberjacks:
#_068DE1: JSR SpritePrep_MoveRight_8px

#_068DE4: JMP.w SpritePrep_IgnoreProjectiles

;===================================================================================================
; JUST MOVE IT
;===================================================================================================
SpritePrep_FortuneTeller:
#_068DE7: JSR SpritePrep_MoveDown_8px_Right8px

#_068DEA: INC.w $0BA0,X

#_068DED: RTS

;===================================================================================================

pool SpritePrep_FairyPond

.palette
#_068DEE: db $0A, $02

pool off

;---------------------------------------------------------------------------------------------------

SpritePrep_FairyPond:
#_068DF0: LDA.w $0D10,X

#_068DF3: LSR A
#_068DF4: LSR A
#_068DF5: LSR A
#_068DF6: LSR A

#_068DF7: AND.b #$01
#_068DF9: STA.w $0D90,X

#_068DFC: TAY

#_068DFD: LDA.w .palette,Y
#_068E00: STA.w $0F50,X

#_068E03: RTS

;===================================================================================================
; WTF is this?
; hobo spawns a bunch of fires
; then makes sure they're all dead
;===================================================================================================
SpritePrep_Hobo:
#_068E04: LDY.b #$0F

.next_spawn
#_068E06: PHY

#_068E07: JSR SpritePrep_Hobo_SpawnSmoke

#_068E0A: PLY

#_068E0B: DEY
#_068E0C: BNE .next_spawn

#_068E0E: LDY.b #$0F

.next_check
#_068E10: LDA.w $0E20,Y
#_068E13: CMP.b #!SPRITE_2B
#_068E15: BNE .kill_the_hobo

#_068E17: LDA.b #$00
#_068E19: STA.w $0DD0,Y

.kill_the_hobo
#_068E1C: DEY
#_068E1D: BNE .next_check

;---------------------------------------------------------------------------------------------------

#_068E1F: JSR SpritePrep_Hobo_SpawnFire

#_068E22: TXY

#_068E23: LDA.l $7EF3C9
#_068E27: AND.b #$01
#_068E29: BEQ .can_give_bottle

#_068E2B: LDA.b #$03
#_068E2D: STA.w $0D80

.can_give_bottle
#_068E30: TYX

#_068E31: LDA.b #$01
#_068E33: STA.w $0BA0

#_068E36: RTS

;===================================================================================================
; Move down and right 6 pixels
;===================================================================================================
SpritePrep_MasterSword:
#_068E37: LDA.w $0D10,X
#_068E3A: CLC
#_068E3B: ADC.b #$06
#_068E3D: STA.w $0D10,X

#_068E40: LDA.w $0D00,X
#_068E43: ADC.b #$06
#_068E45: STA.w $0D00,X

#_068E48: RTS

;===================================================================================================

SpritePrep_Roller_HorizontalStartLeft:
#_068E49: LDY.b #$00
#_068E4B: BRA .get_x_position

;---------------------------------------------------------------------------------------------------

#SpritePrep_Roller_HorizontalStartRight:
#_068E4D: LDY.b #$01

.get_x_position
#_068E4F: LDA.w $0D10,X
#_068E52: EOR.b #$10

#_068E54: BRA SpritePrep_Roller_Main

;===================================================================================================

SpritePrep_Roller_VerticalStartUp:
#_068E56: LDY.b #$02
#_068E58: BRA .get_y_position

;---------------------------------------------------------------------------------------------------

#SpritePrep_Roller_VerticalStartDown:
#_068E5A: LDY.b #$03

.get_y_position
#_068E5C: LDA.w $0D00,X

;===================================================================================================

SpritePrep_Roller_Main:
#_068E5F: AND.b #$10

#_068E61: LSR A
#_068E62: LSR A
#_068E63: LSR A
#_068E64: LSR A

#_068E65: STA.w $0D80,X

#_068E68: BEQ .leave_hitbox

#_068E6A: INC.w $0F60,X

.leave_hitbox
#_068E6D: TYA
#_068E6E: STA.w $0DE0,X

#_068E71: RTS

;===================================================================================================
; Move right 4 pixels
; Move up 5 pixels
;===================================================================================================
SpritePrep_Kodongo:
#_068E72: LDA.w $0D10,X
#_068E75: CLC
#_068E76: ADC.b #$04
#_068E78: STA.w $0D10,X

#_068E7B: LDA.w $0D00,X
#_068E7E: SEC
#_068E7F: SBC.b #$05
#_068E81: STA.w $0D00,X

#_068E84: LDA.w $0D20,X
#_068E87: SBC.b #$00
#_068E89: STA.w $0D20,X

;===================================================================================================

SpritePrep_Spark:
#_068E8C: DEC.w $0E30,X

#_068E8F: RTS

;===================================================================================================

UNREACHABLE_068E90:
#_068E90: db $00, $E0, $F8, $18, $E8, $18, $D0, $30
#_068E98: db $E8, $18, $E0, $F8, $18, $00, $00, $FF
#_068EA0: db $FF, $00, $FF, $00, $FF, $00, $FF, $00
#_068EA8: db $FF, $FF, $00, $00, $C0, $D0, $D8, $D0
#_068EB0: db $F0, $F0, $00, $00, $10, $10, $28, $30
#_068EB8: db $30, $40, $FF, $FF, $FF, $FF, $FF, $FF
#_068EC0: db $00, $00, $00, $00, $00, $00, $00, $00

;===================================================================================================

SpritePrep_LostWoodsBird:
#_068EC8: JSL GetRandomNumber
#_068ECC: AND.b #$1F
#_068ECE: SEC
#_068ECF: SBC.b #$10
#_068ED1: STA.w $0F80,X

#_068ED4: LDA.b #$40
#_068ED6: STA.w $0F70,X

;===================================================================================================

SpritePrep_LostWoodsSquirrel:
#_068ED9: JSR Sprite_IsRightOfLink

#_068EDC: LDA.b #$10

#_068EDE: CPY.b #$00
#_068EE0: BEQ .run_right

#_068EE2: LDA.b #$F0

.run_right
#_068EE4: STA.w $0D50,X

#_068EE7: LDA.b #$FC

#_068EE9: LDY.w $069E
#_068EEC: BPL .run_down

#_068EEE: LDA.b #$04

.run_down
#_068EF0: STA.w $0D40,X
#_068EF3: STA.w $0BA0,X

#_068EF6: RTS

;===================================================================================================

pool SpritePrep_Antifairy

.speed_x
#_068EF7: db 16, -16

pool off

;---------------------------------------------------------------------------------------------------

SpritePrep_Antifairy:
#_068EF9: LDA.w $0D10,X
#_068EFC: LSR A
#_068EFD: LSR A
#_068EFE: LSR A
#_068EFF: LSR A
#_068F00: AND.b #$01
#_068F02: TAY

#_068F03: LDA.w .speed_x,Y
#_068F06: STA.w $0D50,X

#_068F09: LDA.b #$F0
#_068F0B: STA.w $0D40,X

#_068F0E: RTS

;===================================================================================================

SpritePrep_FallingIce:
#_068F0F: JSR SpritePrep_Boss

#_068F12: INC.w $0BA0,X

#_068F15: RTS

;===================================================================================================
; King Zora might file for bankruptcy
;===================================================================================================
SpritePrep_KingZora:
#_068F16: LDA.l $7EF356
#_068F1A: BEQ .flippers_sold_out

#_068F1C: STZ.w $0DD0,X

#_068F1F: RTS

.flippers_sold_out
#_068F20: JMP.w SpritePrep_IgnoreProjectiles

;===================================================================================================
; Make sure bosses don't spawn if the heart container is obtained.
; If it isn't obtained, kill all the inferior sprites.
;===================================================================================================
SpritePrep_Boss:
#_068F23: LDA.w $0403
#_068F26: BPL .boss_alive

#_068F28: PLA
#_068F29: PLA

#_068F2A: STZ.w $0DD0,X

#_068F2D: RTS

;---------------------------------------------------------------------------------------------------

.boss_alive
#_068F2E: LDY.b #$0F

; kill all sprites not flagged to stay alive around bosses
.next_sprite
#_068F30: PHX

#_068F31: LDX.w $0E20,Y
#_068F34: LDA.l SpriteData_Bump,X

#_068F38: PLX

#_068F39: AND.b #$10
#_068F3B: BNE .leave_alive

#_068F3D: LDA.b #$00
#_068F3F: STA.w $0DD0,Y

.leave_alive
#_068F42: DEY
#_068F43: BPL .next_sprite

#_068F45: RTS

;===================================================================================================
; Big timer and tally number of knights
;===================================================================================================
SpritePrep_ArmosKnight:
#_068F46: JSR SpritePrep_Boss

#_068F49: LDA.b #$FF
#_068F4B: STA.w $0DF0,X

#_068F4E: INC.w $0FF8

#_068F51: JMP.w SpritePrep_MoveDown_8px_Right8px

;===================================================================================================

SpritePrep_DesertStatue:
#_068F54: LDA.w $0B6A
#_068F57: STA.w $0D90,X

#_068F5A: INC.w $0B6A

#_068F5D: JSR SpritePrep_MoveDown_8px_Right8px

#_068F60: LDA.w $0D10,X

#_068F63: LDY.b #$01

#_068F65: CMP.b #$30
#_068F67: BCC .ignore_position

#_068F69: INY

#_068F6A: CMP.b #$E0
#_068F6C: BCS .ignore_position

#_068F6E: INY

.ignore_position
#_068F6F: TYA
#_068F70: STA.w $0DE0,X

;===================================================================================================
; It's technically possible for this to end up executing open bus.
;===================================================================================================
SpritePrep_DoNothingD:
#_068F73: RTS

;===================================================================================================
; Also the dark world variant
;===================================================================================================
pool SpritePrep_Octorok

.damage
#_068F74: db $03, $05

.health
#_068F76: db   2,   4

pool off

;---------------------------------------------------------------------------------------------------

SpritePrep_Octorok:
#_068F78: LDY.w $0FFF ; decide stats by light/dark world

#_068F7B: LDA.w .health,Y
#_068F7E: STA.w $0E50,X

#_068F81: LDA.w .damage,Y
#_068F84: STA.w $0CD2,X

#_068F87: JSL GetRandomNumber
#_068F8B: AND.b #$7F
#_068F8D: STA.w $0DF0,X

#_068F90: RTS

;===================================================================================================
; No, not that one.
;===================================================================================================
SpritePrep_Moldorm_bounce:
#_068F91: JSR SpritePrep_Boss

#_068F94: INC.w $0BA0,X

#_068F97: JSL SpritePrep_Moldorm

#_068F9B: RTS

;===================================================================================================

SpritePrep_Lanmolas_bounce:
#_068F9C: JSR SpritePrep_Boss
#_068F9F: JSL SpritePrep_Lanmolas

#_068FA3: RTS

;===================================================================================================
; The big yellow ones
;===================================================================================================
SpritePrep_BigSpike:
#_068FA4: JSR SpritePrep_MoveDown_8px_Right8px

#_068FA7: BRA SpritePrep_CacheOriginalCoordinates

;===================================================================================================
; 64 frame timer
;===================================================================================================
SpritePrep_SwimmingZora:
#_068FA9: LDA.b #$40
#_068FAB: STA.w $0DF0,X

;===================================================================================================
; Move down 8 pixels even though that already has a routine
; This whole trio could have jumped to the move down routine
; and spikes alone could have called the move right routine
;===================================================================================================
SpritePrep_Geldman:
#_068FAE: LDA.b #$08
#_068FB0: CLC
#_068FB1: ADC.w $0D10,X
#_068FB4: STA.w $0D10,X

;===================================================================================================
; Saves the sprite's coordinates that it spawned with for use later
;===================================================================================================
SpritePrep_CacheOriginalCoordinates:
#_068FB7: LDA.w $0D10,X
#_068FBA: STA.w $0D90,X

#_068FBD: LDA.w $0D30,X
#_068FC0: STA.w $0DA0,X

#_068FC3: LDA.w $0D00,X
#_068FC6: STA.w $0DB0,X

#_068FC9: LDA.w $0D20,X
#_068FCC: STA.w $0EB0,X

#_068FCF: RTS

;===================================================================================================
; 96 frame timer
;===================================================================================================
SpritePrep_WalkingZora:
#_068FD0: LDA.b #$60
#_068FD2: STA.w $0DF0,X

#_068FD5: RTS

;===================================================================================================

SpritePrep_StandardGuard_indoors:
#_068FD6: ASL.w $0BE0,X
#_068FD9: LSR.w $0BE0,X

#_068FDC: RTS

;===================================================================================================

SpritePrep_StandardGuard:
#_068FDD: LDA.w $0E30,X
#_068FE0: BEQ .dont_turn

; TODO ???
#_068FE2: LDY.b #$00

#_068FE4: AND.b #$07
#_068FE6: CMP.b #$05
#_068FE8: BCS .special_turn

#_068FEA: DEC A
#_068FEB: EOR.b #$01
#_068FED: STA.w $0DE0,X

.dont_turn
#_068FF0: LDA.b $1B
#_068FF2: BNE .indoors

#_068FF4: LDA.b #$01
#_068FF6: STA.w $0D80,X

#_068FF9: LDA.b #$70
#_068FFB: STA.w $0DF0,X

#_068FFE: JSR Sprite_DirectionToFaceLink

#_069001: TYA
#_069002: STA.w $0DE0,X
#_069005: STA.w $0EB0,X

;===================================================================================================
; Dumb bounce
;===================================================================================================
#SpritePrep_CoolerGuard:
#_069008: BRA SpritePrep_CoolestGuardEver

.special_turn
#_06900A: BEQ .not_five

#_06900C: LDY.b #$04

.not_five
#_06900E: LDA.w $0E30,X

#_069011: LSR A
#_069012: LSR A
#_069013: LSR A

#_069014: AND.b #$03
#_069016: STA.b $00

#_069018: TYA
#_069019: ORA.b $00
#_06901B: TAY

#_06901C: LDA.w .data,Y
#_06901F: STA.w $0DA0,X

#_069022: LDA.w $0B6B,X
#_069025: AND.b #$0F
#_069027: ORA.b #$50
#_069029: STA.w $0B6B,X

;===================================================================================================
; WTF is this doing?
; it's running the sprite's AI twice, but why?
;===================================================================================================
#SpritePrep_CoolestGuardEver:
#_06902C: LDA.b $11
#_06902E: PHA

#_06902F: STZ.b $11

#_069031: SEC
#_069032: ROR.w $0CAA,X

#_069035: JSR SpriteModule_Active
#_069038: JSR SpriteModule_Active

#_06903B: ASL.w $0CAA,X

#_06903E: PLA
#_06903F: STA.b $11

#_069041: RTS

;---------------------------------------------------------------------------------------------------

.data ; TODO wtf is this though
#_069042: db $00, $02, $01, $03, $06, $04, $05, $07

;===================================================================================================
; tree warp
;===================================================================================================
SpritePrep_TalkingTree:
#_06904A: INC.w $0BA0,X

#_06904D: LDA.w $0D10,X ; move left 8 pixels
#_069050: SEC
#_069051: SBC.b #$08
#_069053: STA.w $0D10,X

#_069056: LDA.w $0D30,X ; high byte
#_069059: SBC.b #$00
#_06905B: STA.w $0D30,X

#_06905E: LDA.b #$00
#_069060: JSL SpritePrep_TalkingTree_SpawnEyeball

#_069064: LDA.b #$01
#_069066: JSL SpritePrep_TalkingTree_SpawnEyeball

#_06906A: RTS

;===================================================================================================
; Change color based on peg situation
;===================================================================================================
SpritePrep_CrystalSwitch:
#_06906B: LDA.l $7EC172
#_06906F: AND.b #$01
#_069071: TAY

#_069072: LDA.w CrystalSwitch_Palette,Y
#_069075: ORA.w $0F50,X
#_069078: STA.w $0F50,X

#_06907B: RTS

;===================================================================================================

SpritePrep_FluteKid:
#_06907C: INC.w $0BA0,X

#_06907F: LDA.l $7EF3CA ; check if light or dark world
#_069083: ASL A ; what a weird way of doing it, but okay
#_069084: ROL A
#_069085: ROL A
#_069086: AND.b #$01
#_069088: STA.w $0E80,X
#_06908B: BEQ .light_world

;---------------------------------------------------------------------------------------------------

.stumpy
#_06908D: LDA.l $7EF3C9
#_069091: AND.b #$08
#_069093: BNE .not_stumpified

#_069095: LDA.l $7EF34C
#_069099: CMP.b #$02
#_06909B: BCC .no_flute
#_06909D: BEQ .have_shovel

;---------------------------------------------------------------------------------------------------

.not_stumpified
#_06909F: LDA.b #$03
#_0690A1: STA.w $0DC0,X

#_0690A4: LDA.b #$05
#_0690A6: STA.w $0D80,X

#_0690A9: BRA .no_flute

;---------------------------------------------------------------------------------------------------

.have_shovel
#_0690AB: LDA.b #$01
#_0690AD: STA.w $0DC0,X

.no_flute
#_0690B0: JSR SpritePrep_MoveRight_8px

#_0690B3: LDA.w $0D00,X
#_0690B6: SEC
#_0690B7: SBC.b #$08
#_0690B9: STA.w $0D00,X

#_0690BC: RTS

;---------------------------------------------------------------------------------------------------

.light_world
#_0690BD: LDA.l $7EF34C ; check for flute
#_0690C1: CMP.b #$02
#_0690C3: BCC SpritePrep_MoveRight_7px

#_0690C5: STZ.w $0DD0,X

#_0690C8: RTS

;===================================================================================================

SpritePrep_MoveRight_7px:
#_0690C9: LDA.w $0D10,X
#_0690CC: CLC
#_0690CD: ADC.b #$07
#_0690CF: STA.w $0D10,X

#_0690D2: RTS

;===================================================================================================

SpritePrep_MoveDown_8px:
#_0690D3: LDA.w $0D00,X
#_0690D6: CLC
#_0690D7: ADC.b #$08
#_0690D9: STA.w $0D00,X

;===================================================================================================
; E
;===================================================================================================
SpritePrep_DoNothingE:
#_0690DC: RTS

;===================================================================================================
; Move right, but only in desert
;===================================================================================================
SpritePrep_PedestalPlaque:
#_0690DD: INC.w $0BA0,X

#_0690E0: LDA.b $8A
#_0690E2: CMP.b #$30
#_0690E4: BEQ SpritePrep_MoveRight_7px

#_0690E6: RTS

;===================================================================================================

SpritePrep_Stalfos:
#_0690E7: LDA.w $0D10,X
#_0690EA: AND.b #$10
#_0690EC: STA.w $0E30,X
#_0690EF: BEQ .grounded

#_0690F1: LDA.b #$07
#_0690F3: STA.w $0F50,X

.grounded
#_0690F6: RTS

;===================================================================================================
; 192 frame timer
;===================================================================================================
SpritePrep_KholdstareShell:
#_0690F7: JSR SpritePrep_Boss

#_0690FA: LDA.b #$C0
#_0690FC: STA.w $0E00,X

#_0690FF: BRA SpritePrep_MoveDown_8px_Right8px

;===================================================================================================

SpritePrep_Kholdstare:
#_069101: JSR SpritePrep_Boss

#_069104: LDA.b #$03
#_069106: STA.w $0D80,X

#_069109: JSR SpritePrep_IgnoreProjectiles

#_06910C: BRA SpritePrep_MoveDown_8px_Right8px

;===================================================================================================

SpritePrep_Bumper:
#_06910E: JSR SpritePrep_IgnoreProjectiles

;===================================================================================================

SpritePrep_MoveDown_8px_Right8px:
#_069111: PHX

#_069112: TXA
#_069113: CLC
#_069114: ADC.b #$10
#_069116: TAX ; this is dumb and pointless; there's already a move right thing

#_069117: JSR SpritePrep_MoveDown_8px

#_06911A: PLX

#_06911B: BRA SpritePrep_MoveDown_8px

;===================================================================================================

pool SpritePrep_HardhatBeetle

.palette
#_06911D: db $06, $08

.health
#_06911F: db  32,   6

.speed
#_069121: db $10, $0C

.ai
#_069123: db $01, $03

.prize
#_069125: db $02, $06

.bump
#_069127: db $05, $03

pool off

;---------------------------------------------------------------------------------------------------

SpritePrep_HardhatBeetle:
#_069129: LDY.b #$00

#_06912B: LDA.w $0D10,X
#_06912E: AND.b #$10
#_069130: BEQ .blue

#_069132: INY

.blue
#_069133: LDA.w .palette,Y
#_069136: STA.w $0F50,X

#_069139: LDA.w .health,Y
#_06913C: STA.w $0E50,X

#_06913F: LDA.w .speed,Y
#_069142: STA.w $0D90,X

#_069145: LDA.w .ai,Y
#_069148: STA.w $0D80,X

#_06914B: LDA.w .prize,Y
#_06914E: STA.w $0BE0,X

#_069151: LDA.w .bump,Y
#_069154: STA.w $0CD2,X

#_069157: RTS

;===================================================================================================

SpritePrep_MiniHelmasaur:
#_069158: LDA.b #$10
#_06915A: STA.w $0D90,X

#_06915D: LDA.b #$01
#_06915F: STA.w $0D80,X

#_069162: RTS

;===================================================================================================

SpritePrep_Fairy:
#_069163: JSL GetRandomNumber
#_069167: AND.b #$01
#_069169: STA.w $0D90,X

#_06916C: EOR.b #$01
#_06916E: STA.w $0DE0,X

;===================================================================================================

SpritePrep_Absorbable:
#_069171: LDA.b $1B
#_069173: BNE SpritePrep_DoNothingF

;===================================================================================================

SpritePrep_OverworldBonkItem:
#_069175: INC.w $0E90,X
#_069178: INC.w $0BA0,X

;===================================================================================================
; If you know literally no ASM, this doesn't make any sense.
;===================================================================================================
SpritePrep_DoNothingF:
#_06917B: RTS

;===================================================================================================
; Don't spawn if you have a good bee
;===================================================================================================
SpritePrep_NiceBee:
#_06917C: LDA.l $7EF35C
#_069180: ORA.l $7EF35D
#_069184: ORA.l $7EF35E
#_069188: ORA.l $7EF35F
#_06918C: AND.b #$08
#_06918E: BEQ .bees_for_everyone_like_that_oprah_gif

#_069190: STZ.w $0DD0,X

.bees_for_everyone_like_that_oprah_gif
#_069193: INC.w $0E90,X
#_069196: INC.w $0BA0,X

#_069199: RTS

;===================================================================================================

pool SpritePrep_Agahnim

.palette
#_06919A: db $0B, $07

pool off

;---------------------------------------------------------------------------------------------------

SpritePrep_Agahnim:
#_06919C: JSR SpritePrep_Boss

#_06919F: LDA.b #$00
#_0691A1: STA.w $0DC0,X

#_0691A4: LDA.b #$03
#_0691A6: STA.w $0DE0,X

#_0691A9: JSR SpritePrep_MoveDown_8px_Right8px

#_0691AC: LDY.w $0FFF

#_0691AF: LDA.w .palette,Y
#_0691B2: STA.w $0F50,X

;===================================================================================================
; Not to be confused with SpritePrep_DoNothingC
;===================================================================================================
SpritePrep_DoNothingG:
#_0691B5: RTS

;===================================================================================================

SpritePrep_Eyegore_bounce:
#_0691B6: JSL SpritePrep_Eyegore

#_0691BA: RTS

;===================================================================================================

SpritePrep_FireBar:
#_0691BB: INC.w $0DA0,X

#_0691BE: JMP.w SpritePrep_IgnoreProjectiles

;===================================================================================================

SpritePrep_Trinexx:
#_0691C1: JSR SpritePrep_Boss
#_0691C4: JSL Trinexx_Initialize
#_0691C8: JSR SpritePrep_FreeUpBossSegmentSlots

#_0691CB: RTS

;===================================================================================================

SpritePrep_HelmasaurKing:
#_0691CC: JSR SpritePrep_Boss
#_0691CF: JSL HelmasaurKing_Initialize

;===================================================================================================

SpritePrep_FreeUpBossSegmentSlots:
#_0691D3: LDY.b #$0F
#_0691D5: LDA.b #$00

.next
#_0691D7: STA.w $1D00,Y

#_0691DA: DEY
#_0691DB: BPL .next

#_0691DD: RTS

;===================================================================================================
; Moves up 16
; Initialize X speed to 32
;===================================================================================================
SpritePrep_Spike:
#_0691DE: LDA.b #$20
#_0691E0: STA.w $0D50,X

;===================================================================================================
; Moves up 16
;===================================================================================================
SpritePrep_RockStal:
#_0691E3: LDA.b #$F0
#_0691E5: STA.w $0D40,X

#_0691E8: JSR Sprite_Move_Y_Bank06

#_0691EB: STZ.w $0D40,X

#_0691EE: RTS

;===================================================================================================
; Underground
;===================================================================================================
SpritePrep_Blob:
#_0691EF: LDA.b #$04
#_0691F1: STA.w $0DC0,X

#_0691F4: JSR SpritePrep_IgnoreProjectiles

#_0691F7: RTS

;===================================================================================================
; Best octopus
;===================================================================================================
SpritePrep_Arrghus:
#_0691F8: JSR SpritePrep_Boss

#_0691FB: LDA.b #$18
#_0691FD: STA.w $0F70,X

#_069200: RTS

;===================================================================================================
; Looks like it quickly handles every puff when it's done?
;===================================================================================================
SpritePrep_Arrghi:
#_069201: JSR SpritePrep_Boss

#_069204: JSL GetRandomNumber

#_069208: STA.w $0E80,X

#_06920B: CPX.b #$0D
#_06920D: BNE .not_last_puff

#_06920F: STZ.w $0B0A
#_069212: STZ.w $0B0B

#_069215: PHX

#_069216: LDX.b #$00
#_069218: JSL Arrghus_HandlePuffs_long

#_06921C: PLX

.not_last_puff
#_06921D: LDA.w $0B0F,X
#_069220: STA.w $0D10,X

#_069223: LDA.w $0B1F,X
#_069226: STA.w $0D30,X

#_069229: LDA.w $0B2F,X
#_06922C: STA.w $0D00,X

#_06922F: LDA.w $0B3F,X
#_069232: STA.w $0D20,X

#_069235: RTS

;===================================================================================================
; Watch the tutorial
;===================================================================================================
SpritePrep_Mothula:
#_069236: JSR SpritePrep_Boss

#_069239: LDA.b #$50
#_06923B: STA.w $0DF0,X

#_06923E: INC.w $0BA0,X

#_069241: LDA.b #$02
#_069243: STA.w $0DC0,X

#_069246: INC.w $041A ; conveyor off

#_069249: LDA.b #$70
#_06924B: STA.w $0DB0,X

#_06924E: RTS

;===================================================================================================

SpritePrep_AntifairyCircle_bounce:
#_06924F: JSL SpritePrep_AntifairyCircle

#_069253: RTS

;===================================================================================================
; This routine is found at SNES $06:9254 in ROM.
;===================================================================================================
SpritePrep_DoNothingH:
#_069254: RTS

;===================================================================================================

SpritePrep_BigKey:
#_069255: JSR SpritePrep_MoveRight_8px

#_069258: LDA.b #$FF
#_06925A: STA.w $0E30,X

;---------------------------------------------------------------------------------------------------

SpritePrep_BigKey_load_graphics:
#_06925D: PHX
#_06925E: PHY

#_06925F: LDA.b #$22
#_069261: JSL WriteTo4BPPBuffer_item_gfx

#_069265: PLY
#_069266: PLX

#_069267: BRA SpritePrep_SetKeyIndex

;===================================================================================================

SpritePrep_SmallKey:
#_069269: LDA.b #$FF
#_06926B: STA.w $0E30,X

;===================================================================================================

SpritePrep_SetKeyIndex:
#_06926E: LDA.w $0B9B
#_069271: STA.w $0CBA,X

#_069274: INC.w $0B9B

#_069277: RTS

;===================================================================================================

SpriteModule_Active:
#_069278: LDA.w $0E20,X

#_06927B: REP #$30

#_06927D: AND.w #$00FF
#_069280: ASL A
#_069281: TAY

#_069282: LDA.w .vectors,Y
#_069285: DEC A
#_069286: PHA

#_069287: SEP #$30

#_069289: RTS

;---------------------------------------------------------------------------------------------------

.vectors
#_06928A: dw Sprite_00_Raven_bounce                   ; 0x00 - RAVEN
#_06928C: dw Sprite_01_Vulture_bounce                 ; 0x01 - VULTURE
#_06928E: dw Sprite_02_StalfosHead                    ; 0x02 - STALFOS HEAD
#_069290: dw $0000                                    ; 0x03 - NULL
#_069292: dw Sprite_PullSwitch_bounce                 ; 0x04 - CORRECT PULL SWITCH
#_069294: dw Sprite_PullSwitch_bounce                 ; 0x05 - UNUSED CORRECT PULL SWITCH
#_069296: dw Sprite_PullSwitch_bounce                 ; 0x06 - WRONG PULL SWITCH
#_069298: dw Sprite_PullSwitch_bounce                 ; 0x07 - UNUSED WRONG PULL SWITCH
#_06929A: dw Sprite_08_Octorok                        ; 0x08 - OCTOROK
#_06929C: dw Sprite_09_Moldorm_bounce                 ; 0x09 - MOLDORM
#_06929E: dw Sprite_0A_Octorok4way                    ; 0x0A - OCTOROK 4WAY
#_0692A0: dw Sprite_0B_Cucco                          ; 0x0B - CUCCO
#_0692A2: dw Sprite_0C_OctorokStone                   ; 0x0C - OCTOROK STONE
#_0692A4: dw Sprite_0D_Buzzblob                       ; 0x0D - BUZZBLOB
#_0692A6: dw Sprite_0E_Snapdragon                     ; 0x0E - SNAPDRAGON
#_0692A8: dw Sprite_0F_Octoballoon                    ; 0x0F - OCTOBALLOON
#_0692AA: dw Sprite_10_OctoballoonBaby                ; 0x10 - OCTOBALLOON BABY
#_0692AC: dw Sprite_11_Hinox                          ; 0x11 - HINOX
#_0692AE: dw Sprite_12_Moblin                         ; 0x12 - MOBLIN
#_0692B0: dw Sprite_13_MiniHelmasaur                  ; 0x13 - MINI HELMASAUR
#_0692B2: dw Sprite_14_ThievesTownGrate_bounce        ; 0x14 - THIEVES TOWN GRATE
#_0692B4: dw Sprite_15_Antifairy                      ; 0x15 - ANTIFAIRY
#_0692B6: dw Sprite_16_Elder_bounce                   ; 0x16 - SAHASRAHLA / AGINAH
#_0692B8: dw Sprite_17_Hoarder                        ; 0x17 - HOARDER
#_0692BA: dw Sprite_18_MiniMoldorm                    ; 0x18 - MINI MOLDORM
#_0692BC: dw Sprite_19_Poe                            ; 0x19 - POE
#_0692BE: dw Sprite_1A_Smithy                         ; 0x1A - SMITHY
#_0692C0: dw Sprite_1B_Arrow                          ; 0x1B - ARROW
#_0692C2: dw Sprite_1C_Statue                         ; 0x1C - STATUE
#_0692C4: dw Sprite_1D_FluteQuest                     ; 0x1D - FLUTEQUEST
#_0692C6: dw Sprite_1E_CrystalSwitch                  ; 0x1E - CRYSTAL SWITCH
#_0692C8: dw Sprite_1F_SickKid                        ; 0x1F - SICK KID
#_0692CA: dw Sprite_20_Sluggula                       ; 0x20 - SLUGGULA
#_0692CC: dw Sprite_21_WaterSwitch                    ; 0x21 - WATER SWITCH
#_0692CE: dw Sprite_22_Ropa                           ; 0x22 - ROPA
#_0692D0: dw Sprite_23_RedBari                        ; 0x23 - RED BARI
#_0692D2: dw Sprite_24_BlueBari                       ; 0x24 - BLUE BARI
#_0692D4: dw Sprite_25_TalkingTree_bounce             ; 0x25 - TALKING TREE
#_0692D6: dw Sprite_26_HardhatBeetle                  ; 0x26 - HARDHAT BEETLE
#_0692D8: dw Sprite_27_Deadrock                       ; 0x27 - DEADROCK
#_0692DA: dw Sprite_28_DarkWorldHintNPC               ; 0x28 - DARK WORLD HINT NPC
#_0692DC: dw Sprite_29_Adult_bounce                   ; 0x29 - ADULT
#_0692DE: dw Sprite_2A_SweepingLady_bounce            ; 0x2A - SWEEPING LADY
#_0692E0: dw Sprite_2B_Hobo                           ; 0x2B - HOBO
#_0692E2: dw Sprite_2C_Lumberjacks_bounce             ; 0x2C - LUMBERJACKS
#_0692E4: dw Sprite_2D_TelepathicTile_bounce          ; 0x2D - TELEPATHIC TILE
#_0692E6: dw Sprite_2E_FluteKid                       ; 0x2E - FLUTE KID
#_0692E8: dw Sprite_2F_RaceGameLady_bounce            ; 0x2F - RACE GAME LADY
#_0692EA: dw Sprite_30_RaceGameGuy_bounce             ; 0x30 - RACE GAME GUY
#_0692EC: dw Sprite_31_FortuneTeller_bounce           ; 0x31 - FORTUNE TELLER
#_0692EE: dw Sprite_32_ArguingBros_bounce             ; 0x32 - ARGUE BROS
#_0692F0: dw Sprite_33_RupeePull_bounce               ; 0x33 - RUPEE PULL
#_0692F2: dw Sprite_34_YoungSnitch_bounce             ; 0x34 - YOUNG SNITCH
#_0692F4: dw Sprite_35_Innkeeper_bounce               ; 0x35 - INNKEEPER
#_0692F6: dw Sprite_36_Witch_bounce                   ; 0x36 - WITCH
#_0692F8: dw Sprite_37_Waterfall_bounce               ; 0x37 - WATERFALL
#_0692FA: dw Sprite_38_EyeStatue_bounce               ; 0x38 - EYE STATUE
#_0692FC: dw Sprite_39_Locksmith                      ; 0x39 - LOCKSMITH
#_0692FE: dw Sprite_3A_MagicBat_bounce                ; 0x3A - MAGIC BAT
#_069300: dw Sprite_3B_BonkItem_bounce                ; 0x3B - BONK ITEM
#_069302: dw Sprite_3C_KidInKak_bounce                ; 0x3C - KID IN KAK
#_069304: dw Sprite_3D_OldSnitch_bounce               ; 0x3D - OLD SNITCH
#_069306: dw Sprite_3E_Hoarder                        ; 0x3E - HOARDER
#_069308: dw TutorialGuardOrBarrier_bounce            ; 0x3F - TUTORIAL GUARD
#_06930A: dw TutorialGuardOrBarrier_bounce            ; 0x40 - LIGHTNING GATE
#_06930C: dw SpriteModule_Active_Bank05_bounce        ; 0x41 - BLUE GUARD
#_06930E: dw SpriteModule_Active_Bank05_bounce        ; 0x42 - GREEN GUARD
#_069310: dw SpriteModule_Active_Bank05_bounce        ; 0x43 - RED SPEAR GUARD
#_069312: dw SpriteModule_Active_Bank05_bounce        ; 0x44 - BLUESAIN BOLT
#_069314: dw SpriteModule_Active_Bank05_bounce        ; 0x45 - USAIN BOLT
#_069316: dw SpriteModule_Active_Bank05_bounce        ; 0x46 - BLUE ARCHER
#_069318: dw SpriteModule_Active_Bank05_bounce        ; 0x47 - GREEN BUSH GUARD
#_06931A: dw SpriteModule_Active_Bank05_bounce        ; 0x48 - RED JAVELIN GUARD
#_06931C: dw SpriteModule_Active_Bank05_bounce        ; 0x49 - RED BUSH GUARD
#_06931E: dw SpriteModule_Active_Bank05_bounce        ; 0x4A - BOMB GUARD
#_069320: dw SpriteModule_Active_Bank05_bounce        ; 0x4B - GREEN KNIFE GUARD
#_069322: dw SpriteModule_Active_Bank05_bounce        ; 0x4C - GELDMAN
#_069324: dw SpriteModule_Active_Bank05_bounce        ; 0x4D - TOPPO
#_069326: dw SpriteModule_Active_Bank05_bounce        ; 0x4E - POPO
#_069328: dw SpriteModule_Active_Bank05_bounce        ; 0x4F - POPO
#_06932A: dw SpriteModule_Active_Bank05_bounce        ; 0x50 - CANNONBALL
#_06932C: dw SpriteModule_Active_Bank05_bounce        ; 0x51 - ARMOS STATUE
#_06932E: dw SpriteModule_Active_Bank05_bounce        ; 0x52 - KING ZORA
#_069330: dw SpriteModule_Active_Bank05_bounce        ; 0x53 - ARMOS KNIGHT
#_069332: dw SpriteModule_Active_Bank05_bounce        ; 0x54 - LANMOLAS
#_069334: dw SpriteModule_Active_Bank05_bounce        ; 0x55 - ZORA / FIREBALL
#_069336: dw SpriteModule_Active_Bank05_bounce        ; 0x56 - ZORA
#_069338: dw SpriteModule_Active_Bank05_bounce        ; 0x57 - DESERT STATUE
#_06933A: dw SpriteModule_Active_Bank05_bounce        ; 0x58 - CRAB
#_06933C: dw SpriteModule_Active_Bank05_bounce        ; 0x59 - LOST WOODS BIRD
#_06933E: dw SpriteModule_Active_Bank05_bounce        ; 0x5A - LOST WOODS SQUIRREL
#_069340: dw SpriteModule_Active_Bank05_bounce        ; 0x5B - SPARK
#_069342: dw SpriteModule_Active_Bank05_bounce        ; 0x5C - SPARK
#_069344: dw SpriteModule_Active_Bank05_bounce        ; 0x5D - ROLLER VERTICAL UP
#_069346: dw SpriteModule_Active_Bank05_bounce        ; 0x5E - ROLLER VERTICAL DOWN
#_069348: dw SpriteModule_Active_Bank05_bounce        ; 0x5F - ROLLER HORIZONTAL LEFT
#_06934A: dw SpriteModule_Active_Bank05_bounce        ; 0x60 - ROLLER HORIZONTAL RIGHT
#_06934C: dw SpriteModule_Active_Bank05_bounce        ; 0x61 - BEAMOS
#_06934E: dw SpriteModule_Active_Bank05_bounce        ; 0x62 - MASTERSWORD
#_069350: dw SpriteModule_Active_Bank05_bounce        ; 0x63 - DEBIRANDO PIT
#_069352: dw SpriteModule_Active_Bank05_bounce        ; 0x64 - DEBIRANDO
#_069354: dw SpriteModule_Active_Bank05_bounce        ; 0x65 - ARCHERY GUY
#_069356: dw SpriteModule_Active_Bank05_bounce        ; 0x66 - WALL CANNON VERTICAL LEFT
#_069358: dw SpriteModule_Active_Bank05_bounce        ; 0x67 - WALL CANNON VERTICAL RIGHT
#_06935A: dw SpriteModule_Active_Bank05_bounce        ; 0x68 - WALL CANNON HORIZONTAL TOP
#_06935C: dw SpriteModule_Active_Bank05_bounce        ; 0x69 - WALL CANNON HORIZONTAL BOTTOM
#_06935E: dw SpriteModule_Active_Bank05_bounce        ; 0x6A - BALL N CHAIN
#_069360: dw SpriteModule_Active_Bank05_bounce        ; 0x6B - CANNONBALL / CANNON TROOPER
#_069362: dw SpriteModule_Active_Bank05_bounce        ; 0x6C - MIRROR PORTAL
#_069364: dw SpriteModule_Active_Bank05_bounce        ; 0x6D - RAT / CRICKET
#_069366: dw SpriteModule_Active_Bank05_bounce        ; 0x6E - SNAKE
#_069368: dw SpriteModule_Active_Bank05_bounce        ; 0x6F - KEESE
#_06936A: dw SpriteModule_Active_Bank05_bounce        ; 0x70 - KING HELMASAUR FIREBALL
#_06936C: dw Sprite_71_Leever                         ; 0x71 - LEEVER
#_06936E: dw Sprite_72_FairyPond                      ; 0x72 - FAERIE POND TRIGGER
#_069370: dw Sprite_73_UncleAndPriest_bounce          ; 0x73 - UNCLE / PRIEST / MANTLE
#_069372: dw Sprite_74_RunningBoy_bounce              ; 0x74 - RUNNING MAN
#_069374: dw Sprite_75_BottleMerchant_bounce          ; 0x75 - BOTTLE MERCHANT
#_069376: dw Sprite_76_Zelda_bounce                   ; 0x76 - ZELDA
#_069378: dw Sprite_77_Antifairy                      ; 0x77 - ANTIFAIRY
#_06937A: dw Sprite_78_MrsSahasrahla_bounce           ; 0x78 - SAHASRAHLAS WIFE
#_06937C: dw SpriteModule_Active_Bank1E_bounce        ; 0x79 - BEE
#_06937E: dw SpriteModule_Active_Bank1E_bounce        ; 0x7A - AGAHNIM
#_069380: dw SpriteModule_Active_Bank1E_bounce        ; 0x7B - AGAHNIMS BALLS
#_069382: dw SpriteModule_Active_Bank1E_bounce        ; 0x7C - GREEN STALFOS
#_069384: dw SpriteModule_Active_Bank1E_bounce        ; 0x7D - BIG SPIKE
#_069386: dw SpriteModule_Active_Bank1E_bounce        ; 0x7E - FIREBAR CLOCKWISE
#_069388: dw SpriteModule_Active_Bank1E_bounce        ; 0x7F - FIREBAR COUNTERCLOCKWISE
#_06938A: dw SpriteModule_Active_Bank1E_bounce        ; 0x80 - FIRESNAKE
#_06938C: dw SpriteModule_Active_Bank1E_bounce        ; 0x81 - HOVER
#_06938E: dw SpriteModule_Active_Bank1E_bounce        ; 0x82 - ANTIFAIRY CIRCLE
#_069390: dw SpriteModule_Active_Bank1E_bounce        ; 0x83 - GREEN EYEGORE / GREEN MIMIC
#_069392: dw SpriteModule_Active_Bank1E_bounce        ; 0x84 - RED EYEGORE / RED MIMIC
#_069394: dw SpriteModule_Active_Bank1E_bounce        ; 0x85 - YELLOW STALFOS
#_069396: dw SpriteModule_Active_Bank1E_bounce        ; 0x86 - KODONGO
#_069398: dw SpriteModule_Active_Bank1E_bounce        ; 0x87 - KONDONGO FIRE
#_06939A: dw SpriteModule_Active_Bank1E_bounce        ; 0x88 - MOTHULA
#_06939C: dw SpriteModule_Active_Bank1E_bounce        ; 0x89 - MOTHULA BEAM
#_06939E: dw SpriteModule_Active_Bank1E_bounce        ; 0x8A - SPIKE BLOCK
#_0693A0: dw SpriteModule_Active_Bank1E_bounce        ; 0x8B - GIBDO
#_0693A2: dw SpriteModule_Active_Bank1E_bounce        ; 0x8C - ARRGHUS
#_0693A4: dw SpriteModule_Active_Bank1E_bounce        ; 0x8D - ARRGHI
#_0693A6: dw SpriteModule_Active_Bank1E_bounce        ; 0x8E - TERRORPIN
#_0693A8: dw SpriteModule_Active_Bank1E_bounce        ; 0x8F - BLOB
#_0693AA: dw SpriteModule_Active_Bank1E_bounce        ; 0x90 - WALLMASTER
#_0693AC: dw SpriteModule_Active_Bank1E_bounce        ; 0x91 - STALFOS KNIGHT
#_0693AE: dw SpriteModule_Active_Bank1E_bounce        ; 0x92 - KING HELMASAUR
#_0693B0: dw SpriteModule_Active_Bank1E_bounce        ; 0x93 - BUMPER
#_0693B2: dw SpriteModule_Active_Bank1E_bounce        ; 0x94 - PIROGUSU
#_0693B4: dw SpriteModule_Active_Bank1E_bounce        ; 0x95 - LASER EYE LEFT
#_0693B6: dw SpriteModule_Active_Bank1E_bounce        ; 0x96 - LASER EYE RIGHT
#_0693B8: dw SpriteModule_Active_Bank1E_bounce        ; 0x97 - LASER EYE TOP
#_0693BA: dw SpriteModule_Active_Bank1E_bounce        ; 0x98 - LASER EYE BOTTOM
#_0693BC: dw SpriteModule_Active_Bank1E_bounce        ; 0x99 - PENGATOR
#_0693BE: dw SpriteModule_Active_Bank1E_bounce        ; 0x9A - KYAMERON
#_0693C0: dw SpriteModule_Active_Bank1E_bounce        ; 0x9B - WIZZROBE
#_0693C2: dw SpriteModule_Active_Bank1E_bounce        ; 0x9C - ZORO
#_0693C4: dw SpriteModule_Active_Bank1E_bounce        ; 0x9D - BABASU
#_0693C6: dw SpriteModule_Active_Bank1E_bounce        ; 0x9E - HAUNTED GROVE OSTRITCH
#_0693C8: dw SpriteModule_Active_Bank1E_bounce        ; 0x9F - HAUNTED GROVE RABBIT
#_0693CA: dw SpriteModule_Active_Bank1E_bounce        ; 0xA0 - HAUNTED GROVE BIRD
#_0693CC: dw SpriteModule_Active_Bank1E_bounce        ; 0xA1 - FREEZOR
#_0693CE: dw SpriteModule_Active_Bank1E_bounce        ; 0xA2 - KHOLDSTARE
#_0693D0: dw SpriteModule_Active_Bank1E_bounce        ; 0xA3 - KHOLDSTARE SHELL
#_0693D2: dw SpriteModule_Active_Bank1E_bounce        ; 0xA4 - FALLING ICE
#_0693D4: dw SpriteModule_Active_Bank1E_bounce        ; 0xA5 - BLUE ZAZAK
#_0693D6: dw SpriteModule_Active_Bank1E_bounce        ; 0xA6 - RED ZAZAK
#_0693D8: dw SpriteModule_Active_Bank1E_bounce        ; 0xA7 - STALFOS
#_0693DA: dw SpriteModule_Active_Bank1E_bounce        ; 0xA8 - GREEN ZIRRO
#_0693DC: dw SpriteModule_Active_Bank1E_bounce        ; 0xA9 - BLUE ZIRRO
#_0693DE: dw SpriteModule_Active_Bank1E_bounce        ; 0xAA - PIKIT
#_0693E0: dw SpriteModule_Active_Bank1E_bounce        ; 0xAB - CRYSTAL MAIDEN
#_0693E2: dw SpriteModule_Active_Bank1E_bounce        ; 0xAC - APPLE
#_0693E4: dw SpriteModule_Active_Bank1E_bounce        ; 0xAD - OLD MAN
#_0693E6: dw SpriteModule_Active_Bank1E_bounce        ; 0xAE - PIPE DOWN
#_0693E8: dw SpriteModule_Active_Bank1E_bounce        ; 0xAF - PIPE UP
#_0693EA: dw SpriteModule_Active_Bank1E_bounce        ; 0xB0 - PIPE RIGHT
#_0693EC: dw SpriteModule_Active_Bank1E_bounce        ; 0xB1 - PIPE LEFT
#_0693EE: dw SpriteModule_Active_Bank1E_bounce        ; 0xB2 - GOOD BEE
#_0693F0: dw SpriteModule_Active_Bank1E_bounce        ; 0xB3 - PEDESTAL PLAQUE
#_0693F2: dw SpriteModule_Active_Bank1E_bounce        ; 0xB4 - PURPLE CHEST
#_0693F4: dw SpriteModule_Active_Bank1E_bounce        ; 0xB5 - BOMB SHOP GUY
#_0693F6: dw SpriteModule_Active_Bank1E_bounce        ; 0xB6 - KIKI
#_0693F8: dw SpriteModule_Active_Bank1E_bounce        ; 0xB7 - BLIND MAIDEN
#_0693FA: dw SpriteModule_Active_Bank1E_bounce        ; 0xB8 - DIALOGUE TESTER
#_0693FC: dw SpriteModule_Active_Bank1E_bounce        ; 0xB9 - BULLY / PINK BALL
#_0693FE: dw SpriteModule_Active_Bank1E_bounce        ; 0xBA - WHIRLPOOL
#_069400: dw SpriteModule_Active_Bank1E_bounce        ; 0xBB - SHOPKEEPER / CHEST GAME GUY
#_069402: dw SpriteModule_Active_Bank1E_bounce        ; 0xBC - DRUNKARD
#_069404: dw SpriteModule_Active_Bank1D_bounce        ; 0xBD - VITREOUS
#_069406: dw SpriteModule_Active_Bank1D_bounce        ; 0xBE - VITREOUS SMALL EYE
#_069408: dw SpriteModule_Active_Bank1D_bounce        ; 0xBF - LIGHTNING
#_06940A: dw SpriteModule_Active_Bank1D_bounce        ; 0xC0 - CATFISH
#_06940C: dw SpriteModule_Active_Bank1D_bounce        ; 0xC1 - CUTSCENE AGAHNIM
#_06940E: dw SpriteModule_Active_Bank1D_bounce        ; 0xC2 - BOULDER
#_069410: dw SpriteModule_Active_Bank1D_bounce        ; 0xC3 - GIBO
#_069412: dw SpriteModule_Active_Bank1D_bounce        ; 0xC4 - THIEF
#_069414: dw SpriteModule_Active_Bank1D_bounce        ; 0xC5 - MEDUSA
#_069416: dw SpriteModule_Active_Bank1D_bounce        ; 0xC6 - 4WAY SHOOTER
#_069418: dw SpriteModule_Active_Bank1D_bounce        ; 0xC7 - POKEY
#_06941A: dw SpriteModule_Active_Bank1D_bounce        ; 0xC8 - BIG FAERIE
#_06941C: dw SpriteModule_Active_Bank1D_bounce        ; 0xC9 - TEKTITE / FIREBAT
#_06941E: dw SpriteModule_Active_Bank1D_bounce        ; 0xCA - CHAIN CHOMP
#_069420: dw SpriteModule_Active_Bank1D_bounce        ; 0xCB - TRINEXX ROCK HEAD
#_069422: dw SpriteModule_Active_Bank1D_bounce        ; 0xCC - TRINEXX FIRE HEAD
#_069424: dw SpriteModule_Active_Bank1D_bounce        ; 0xCD - TRINEXX ICE HEAD
#_069426: dw SpriteModule_Active_Bank1D_bounce        ; 0xCE - BLIND
#_069428: dw SpriteModule_Active_Bank1D_bounce        ; 0xCF - SWAMOLA
#_06942A: dw SpriteModule_Active_Bank1D_bounce        ; 0xD0 - LYNEL
#_06942C: dw SpriteModule_Active_Bank1D_bounce        ; 0xD1 - BUNNYBEAM / SMOKE
#_06942E: dw SpriteModule_Active_Bank1D_bounce        ; 0xD2 - FLOPPING FISH
#_069430: dw SpriteModule_Active_Bank1D_bounce        ; 0xD3 - STAL
#_069432: dw SpriteModule_Active_Bank1D_bounce        ; 0xD4 - LANDMINE
#_069434: dw SpriteModule_Active_Bank1D_bounce        ; 0xD5 - DIG GAME GUY
#_069436: dw SpriteModule_Active_Bank1D_bounce        ; 0xD6 - GANON
#_069438: dw SpriteModule_Active_Bank1D_bounce        ; 0xD7 - GANON
#_06943A: dw Sprite_D8_Heart                          ; 0xD8 - HEART
#_06943C: dw Sprite_D9_GreenRupee                     ; 0xD9 - GREEN RUPEE
#_06943E: dw Sprite_DA_BlueRupee                      ; 0xDA - BLUE RUPEE
#_069440: dw Sprite_DB_RedRupee                       ; 0xDB - RED RUPEE
#_069442: dw Sprite_DC_BombRefill1                    ; 0xDC - BOMB REFILL 1
#_069444: dw Sprite_DD_BombRefill4                    ; 0xDD - BOMB REFILL 4
#_069446: dw Sprite_DE_BombRefill8                    ; 0xDE - BOMB REFILL 8
#_069448: dw Sprite_DF_SmallMagicDecanter             ; 0xDF - SMALL MAGIC DECANTER
#_06944A: dw Sprite_E0_LargeMagicDecanter             ; 0xE0 - LARGE MAGIC DECANTER
#_06944C: dw Sprite_E1_ArrowRefill5                   ; 0xE1 - ARROW REFILL 5
#_06944E: dw Sprite_E2_ArrowRefill10                  ; 0xE2 - ARROW REFILL 10
#_069450: dw Sprite_E3_Fairy                          ; 0xE3 - FAERIE
#_069452: dw Sprite_E4_SmallKey                       ; 0xE4 - SMALL KEY
#_069454: dw Sprite_E5_BigKey                         ; 0xE5 - BIG KEY
#_069456: dw Sprite_E6_StolenShield                   ; 0xE6 - STOLEN SHIELD
#_069458: dw Sprite_E7_Mushroom_bounce                ; 0xE7 - MUSHROOM
#_06945A: dw Sprite_E8_FakeMasterSword_bounce         ; 0xE8 - FAKE MASTER SWORD
#_06945C: dw Sprite_E9_MagicShopAssistant_bounce      ; 0xE9 - MAGIC SHOP ASSISTANT
#_06945E: dw Sprite_EA_HeartContainer_bounce          ; 0xEA - HEART CONTAINER
#_069460: dw Sprite_EB_HeartPiece_bounce              ; 0xEB - HEART PIECE
#_069462: dw Sprite_EC_ThrownItem                     ; 0xEC - THROWN ITEM
#_069464: dw SomariaPlatformAndPipe_bounce            ; 0xED - SOMARIA PLATFORM
#_069466: dw Sprite_EE_CastleMantle_bounce            ; 0xEE - CASTLE MANTLE
#_069468: dw SomariaPlatformAndPipe_bounce            ; 0xEF - UNUSED SOMARIA PLATFORM
#_06946A: dw SomariaPlatformAndPipe_bounce            ; 0xF0 - UNUSED SOMARIA PLATFORM
#_06946C: dw SomariaPlatformAndPipe_bounce            ; 0xF1 - UNUSED SOMARIA PLATFORM
#_06946E: dw Sprite_F2_MedallionTablet_bounce         ; 0xF2 - MEDALLION TABLET

;===================================================================================================

Sprite_09_Moldorm_bounce:
#_069470: JSL Sprite_09_Moldorm

#_069474: RTS

;===================================================================================================

Sprite_00_Raven_bounce:
#_069475: JSL Sprite_00_Raven

#_069479: RTS

;===================================================================================================

Sprite_01_Vulture_bounce:
#_06947A: JSL Sprite_01_Vulture

#_06947E: RTS

;===================================================================================================

pool Sprite_27_Deadrock

.anim_step
#_06947F: db $00, $01, $00, $01
#_069483: db $02, $02, $03, $03
#_069487: db $04

.flip
#_069488: db $40, $40, $00, $00
#_06948C: db $00, $40, $00, $40
#_069490: db $00

pool off

;---------------------------------------------------------------------------------------------------

Sprite_27_Deadrock:
#_069491: LDA.w $0E10,X
#_069494: BEQ .not_stunned

#_069496: AND.b #$04
#_069498: BNE .normal

.stunned
#_06949A: LDY.b #$08
#_06949C: BRA .continue

.not_stunned
#_06949E: LDA.w $0D80,X
#_0694A1: CMP.b #$02
#_0694A3: BEQ .stunned

.normal
#_0694A5: LDY.w $0D90,X

;---------------------------------------------------------------------------------------------------

.continue
#_0694A8: LDA.w .anim_step,Y
#_0694AB: STA.w $0DC0,X

#_0694AE: LDA.w $0F50,X
#_0694B1: AND.b #$BF
#_0694B3: ORA.w .flip,Y
#_0694B6: STA.w $0F50,X

#_0694B9: JSR SpriteDraw_SingleLarge
#_0694BC: JSR Sprite_CheckIfActive_Bank06

#_0694BF: LDA.w $0EA0,X
#_0694C2: BNE .no_sfx_or_damage

#_0694C4: JSR Sprite_CheckDamageFromLink
#_0694C7: BCC .no_sfx_or_damage

#_0694C9: LDA.w $012E
#_0694CC: BNE .no_sfx_or_damage

#_0694CE: LDA.b #!SFX2_0B
#_0694D0: JSL SpriteSFX_QueueSFX2WithPan

.no_sfx_or_damage
#_0694D4: JSR Sprite_CheckDamageToLink_same_layer
#_0694D7: BCC .no_contact

#_0694D9: JSL Sprite_CancelHookshot
#_0694DD: JSL Sprite_RepelDash_long

.no_contact
#_0694E1: LDA.w $0EA0,X
#_0694E4: CMP.b #$0E
#_0694E6: BNE .dont_get_stunned

#_0694E8: LDA.b #$02
#_0694EA: STA.w $0D80,X

#_0694ED: LDA.b #$FF
#_0694EF: STA.w $0E00,X

#_0694F2: LDA.b #$40
#_0694F4: STA.w $0E10,X

;---------------------------------------------------------------------------------------------------

.dont_get_stunned
#_0694F7: JSR Sprite_CheckIfRecoiling_Bank06

#_0694FA: LDA.w $0D80,X
#_0694FD: JSL JumpTableLocal
#_069501: dw Deadrock_Halted
#_069503: dw Deadrock_Walk
#_069505: dw Deadrock_Stunned

;===================================================================================================

DeadRockSpeedX:
#_069507: db  32, -32 ; bleeds into next

DeadRockSpeedY:
#_069509: db   0,   0,  32, -32

;===================================================================================================

Deadrock_Halted:
#_06950D: LDA.w $0DF0,X
#_069510: BNE EXIT_06955F

#_069512: ASL.w $0E40,X
#_069515: LSR.w $0E40,X

#_069518: LDA.w $0CAA,X
#_06951B: AND.b #$FB
#_06951D: STA.w $0CAA,X

#_069520: LDA.w $0E60,X
#_069523: AND.b #$BF
#_069525: STA.w $0E60,X

#_069528: INC.w $0D80,X

#_06952B: JSL GetRandomNumber
#_06952F: AND.b #$1F
#_069531: ADC.b #$20
#_069533: STA.w $0DF0,X

#_069536: INC.w $0DA0,X

#_069539: LDA.w $0DA0,X
#_06953C: CMP.b #$04
#_06953E: BNE .use_random_direction

#_069540: STZ.w $0DA0,X

#_069543: JSR Sprite_DirectionToFaceLink
#_069546: TYA

#_069547: BRA DeadRock_SetSpeed

.use_random_direction
#_069549: JSL GetRandomNumber
#_06954D: AND.b #$03

;===================================================================================================

DeadRock_SetSpeed:
#_06954F: STA.w $0DE0,X

#_069552: TAY

#_069553: LDA.w DeadRockSpeedX,Y
#_069556: STA.w $0D50,X

#_069559: LDA.w DeadRockSpeedY,Y
#_06955C: STA.w $0D40,X

;---------------------------------------------------------------------------------------------------

#EXIT_06955F:
#_06955F: RTS

;===================================================================================================

Deadrock_Walk:
#_069560: LDA.w $0DF0,X
#_069563: BNE .delay

#_069565: STZ.w $0D80,X

#_069568: LDA.b #$20
#_06956A: STA.w $0DF0,X

#_06956D: RTS

.delay
#_06956E: JSR Sprite_Move_XY_Bank06
#_069571: JSR Sprite_CheckTileCollision

#_069574: LDA.w $0E70,X
#_069577: BEQ .no_collision

#_069579: LDA.w $0DE0,X
#_06957C: EOR.b #$01

#_06957E: BRA DeadRock_SetSpeed

.no_collision
#_069580: INC.w $0E80,X

#_069583: LDA.w $0E80,X
#_069586: LSR A
#_069587: LSR A
#_069588: AND.b #$01
#_06958A: STA.b $00

#_06958C: LDA.w $0DE0,X
#_06958F: ASL A
#_069590: ORA.b $00
#_069592: STA.w $0D90,X

#_069595: RTS

;===================================================================================================

Deadrock_Stunned:
#_069596: LDA.w $0E40,X
#_069599: ORA.b #$80
#_06959B: STA.w $0E40,X

#_06959E: LDA.w $0CAA,X
#_0695A1: ORA.b #$04
#_0695A3: STA.w $0CAA,X

#_0695A6: LDA.w $0E60,X
#_0695A9: ORA.b #$40
#_0695AB: STA.w $0E60,X

#_0695AE: LDA.b $1A
#_0695B0: AND.b #$01
#_0695B2: BNE .resist_timer

#_0695B4: LDA.w $0E00,X
#_0695B7: BNE .delay

#_0695B9: STZ.w $0D80,X

#_0695BC: LDA.b #$10
#_0695BE: STA.w $0DF0,X

#_0695C1: RTS

.delay
#_0695C2: CMP.b #$20
#_0695C4: BNE .exit

#_0695C6: LDA.b #$40
#_0695C8: STA.w $0E10,X

.exit
#_0695CB: RTS

.resist_timer
#_0695CC: INC.w $0E00,X

#_0695CF: RTS

;===================================================================================================

pool Sprite_20_Sluggula

.anim_step
#_0695D0: db $00, $01, $00, $01
#_0695D4: db $02, $03, $04, $05

.flip
#_0695D8: db $40, $40, $00, $00
#_0695DC: db $00, $00, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

Sprite_20_Sluggula:
#_0695E0: LDA.w $0E80,X
#_0695E3: AND.b #$08
#_0695E5: LSR A
#_0695E6: LSR A
#_0695E7: LSR A
#_0695E8: STA.b $00

#_0695EA: LDA.w $0DE0,X
#_0695ED: ASL A
#_0695EE: ORA.b $00
#_0695F0: TAY

#_0695F1: LDA.w .anim_step,Y
#_0695F4: STA.w $0DC0,X

#_0695F7: LDA.w $0F50,X
#_0695FA: AND.b #$BF
#_0695FC: ORA.w .flip,Y
#_0695FF: STA.w $0F50,X

#_069602: JSR SpriteDraw_SingleLarge
#_069605: JSR Sprite_CheckIfActive_Bank06
#_069608: JSR Sprite_CheckIfRecoiling_Bank06
#_06960B: JSR Sprite_CheckDamageToAndFromLink_Bank06

#_06960E: INC.w $0E80,X

#_069611: LDA.w $0D80,X
#_069614: JSL JumpTableLocal
#_069618: dw Sluggula_Normal
#_06961A: dw Sluggula_BreakFromBombing

;===================================================================================================

SluggulaAndMoblin_SpeedX:
#_06961C: db  16, -16 ; bleeds into next

SluggulaAndMoblin_SpeedY:
#_06961E: db   0,   0,  16, -16

;===================================================================================================

Sluggula_Normal:
#_069622: LDA.w $0DF0,X
#_069625: BNE .delay

#_069627: INC.w $0D80,X

#_06962A: JSL GetRandomNumber
#_06962E: AND.b #$1F
#_069630: ADC.b #$20
#_069632: STA.w $0DF0,X

#_069635: AND.b #$03
#_069637: STA.w $0DE0,X

;===================================================================================================

#Sluggula_SetSpeed:
#_06963A: TAY

#_06963B: LDA.w SluggulaAndMoblin_SpeedX,Y
#_06963E: STA.w $0D50,X

#_069641: LDA.w SluggulaAndMoblin_SpeedY,Y
#_069644: STA.w $0D40,X

#_069647: RTS

;===================================================================================================

.delay
#_069648: CMP.b #$10
#_06964A: BNE EXIT_069679

#_06964C: JSL GetRandomNumber
#_069650: LSR A
#_069651: BCS EXIT_069679

#_069653: JMP.w Sluggula_DropBomb

;===================================================================================================

Sluggula_BreakFromBombing:
#_069656: LDA.w $0DF0,X
#_069659: BNE .delay

#_06965B: STZ.w $0D80,X

#_06965E: LDA.b #$20
#_069660: STA.w $0DF0,X

.delay
#_069663: JSR Sprite_Move_XY_Bank06
#_069666: JSR Sprite_CheckTileCollision

#_069669: LDA.w $0E70,X
#_06966C: BEQ EXIT_069679

#_06966E: LDA.w $0DE0,X
#_069671: EOR.b #$01
#_069673: STA.w $0DE0,X

#_069676: JMP.w Sluggula_SetSpeed

;---------------------------------------------------------------------------------------------------

#EXIT_069679:
#_069679: RTS

;===================================================================================================

Sluggula_DropBomb:
#_06967A: LDA.b #!SPRITE_4A
#_06967C: LDY.b #$0B
#_06967E: JSL Sprite_SpawnDynamically_slot_limited
#_069682: BMI .no_room

#_069684: JSL Sprite_SetSpawnedCoordinates
#_069688: JSL Sprite_TransmuteToBomb

.no_room
#_06968C: RTS

;===================================================================================================

pool Sprite_19_Poe

.hflip
#_06968D: db $40, $00

pool off

;---------------------------------------------------------------------------------------------------

Sprite_19_Poe:
#_06968F: LDA.w $0D50,X
#_069692: ASL A
#_069693: ROL A
#_069694: AND.b #$01
#_069696: STA.w $0DE0,X

#_069699: TAY

#_06969A: LDA.w $0F50,X
#_06969D: AND.b #$BF
#_06969F: ORA.w .hflip,Y
#_0696A2: STA.w $0F50,X

#_0696A5: LDA.w $0E90,X
#_0696A8: BNE .keep_priority

#_0696AA: LDA.w $0B89,X
#_0696AD: ORA.b #$30
#_0696AF: STA.w $0B89,X

;---------------------------------------------------------------------------------------------------

.keep_priority
#_0696B2: JSR SpriteDraw_Poe

#_0696B5: REP #$20 ; is this drawing the lantern?

#_0696B7: LDA.b $90 ; why is this here wtf
#_0696B9: CLC
#_0696BA: ADC.w #$0004
#_0696BD: STA.b $90

#_0696BF: INC.b $92

#_0696C1: SEP #$20

#_0696C3: DEC.w $0E40,X
#_0696C6: JSR SpriteDraw_SingleLarge ; who did this

#_0696C9: INC.w $0E40,X

;---------------------------------------------------------------------------------------------------

#_0696CC: JSR Sprite_CheckIfActive_Bank06
#_0696CF: JSR Sprite_CheckIfRecoiling_Bank06

#_0696D2: LDA.w $0E90,X
#_0696D5: BEQ Poe_Main

#_0696D7: INC.w $0F70,X

#_0696DA: LDA.w $0F70,X
#_0696DD: CMP.b #$0C
#_0696DF: BNE .exit

#_0696E1: STZ.w $0E90,X

.exit
#_0696E4: RTS

;===================================================================================================

Poe_Main:
#_0696E5: JSR Sprite_CheckDamageToAndFromLink_Bank06
#_0696E8: INC.w $0E80,X
#_0696EB: JSR Sprite_Move_XY_Bank06
#_0696EE: LDA.b $1A
#_0696F0: LSR A
#_0696F1: BCS .continue

#_0696F3: LDA.w $0ED0,X
#_0696F6: AND.b #$01
#_0696F8: TAY

#_0696F9: LDA.w $0F80,X
#_0696FC: CLC
#_0696FD: ADC.w Poe_SpeedZ,Y
#_069700: STA.w $0F80,X

#_069703: CMP.w Poe_MaxZ,Y
#_069706: BNE .continue

#_069708: INC.w $0ED0,X

.continue
#_06970B: JSR Sprite_Move_Z_Bank06

#_06970E: STZ.w $0D40,X

#_069711: LDA.w $0D80,X
#_069714: JSL JumpTableLocal
#_069718: dw Poe_Halted
#_06971A: dw Poe_SpookAround

;===================================================================================================

Poe_SpeedZ:
#_06971C: db   1,  -1,   2,  -2

;===================================================================================================

Poe_MaxSpeedX:
#_069720: db  16, -16,  28, -28

;===================================================================================================

Poe_MaxZ:
#_069724: db   8,  -8

;===================================================================================================

Poe_Halted:
#_069726: LDA.w $0DF0,X
#_069729: BNE .exit

#_06972B: INC.w $0D80,X

#_06972E: JSL GetRandomNumber
#_069732: AND.b #$0C
#_069734: BNE .use_random_direction

#_069736: JSR Sprite_IsBelowLink
#_069739: TYA
#_06973A: BRA .continue

.use_random_direction
#_06973C: JSL GetRandomNumber
#_069740: AND.b #$01

.continue
#_069742: STA.w $0EB0,X

.exit
#_069745: RTS

;===================================================================================================

Poe_MaxSpeedY:
#_069746: db   8,  -8

;===================================================================================================

Poe_SpookAround:
#_069748: LDA.w $001A
#_06974B: LSR A
#_06974C: BCS .continue

#_06974E: LDA.w $0EC0,X
#_069751: AND.b #$01

#_069753: CLC
#_069754: ADC.w $0FFF
#_069757: ADC.w $0FFF
#_06975A: TAY

#_06975B: LDA.w $0D50,X
#_06975E: CLC
#_06975F: ADC.w Poe_SpeedZ,Y
#_069762: STA.w $0D50,X

#_069765: CMP.w Poe_MaxSpeedX,Y
#_069768: BNE .continue

#_06976A: INC.w $0EC0,X

#_06976D: STZ.w $0D80,X

#_069770: JSL GetRandomNumber
#_069774: AND.b #$1F
#_069776: ADC.b #$10
#_069778: STA.w $0DF0,X

.continue
#_06977B: LDY.w $0EB0,X

#_06977E: LDA.w Poe_MaxSpeedY,Y
#_069781: STA.w $0D40,X

#_069784: RTS

;===================================================================================================

pool SpriteDraw_Poe

.offset_x
#_069785: db   9,   0,  -1,  -1

.char
#_069789: db $7C, $80, $B7, $80

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Poe:
#_06978D: JSR Sprite_PrepOAMCoord

#_069790: LDA.w $0E80,X

#_069793: LSR A
#_069794: LSR A
#_069795: LSR A

#_069796: AND.b #$03
#_069798: STA.b $06

#_06979A: LDA.w $0DE0,X
#_06979D: ASL A

#_06979E: PHX

#_06979F: TAX

#_0697A0: REP #$20

#_0697A2: LDA.b $00
#_0697A4: CLC
#_0697A5: ADC.w .offset_x,X
#_0697A8: STA.b ($90),Y

#_0697AA: CLC
#_0697AB: AND.w #$0100
#_0697AE: STA.b $0E

#_0697B0: LDA.b $02
#_0697B2: CLC
#_0697B3: ADC.w #$0009

#_0697B6: INY
#_0697B7: STA.b ($90),Y

#_0697B9: CLC
#_0697BA: ADC.w #$0010
#_0697BD: CMP.w #$0100

#_0697C0: SEP #$20
#_0697C2: BCC .on_screen

#_0697C4: LDA.b #$F0
#_0697C6: STA.b ($90),Y

.on_screen
#_0697C8: LDX.b $06

#_0697CA: LDA.w .char,X
#_0697CD: INY
#_0697CE: STA.b ($90),Y

#_0697D0: LDA.b $05
#_0697D2: AND.b #$F0
#_0697D4: ORA.b #$02

#_0697D6: INY
#_0697D7: STA.b ($90),Y

#_0697D9: LDA.b $0F
#_0697DB: STA.b ($92)

#_0697DD: PLX

#_0697DE: RTS

;===================================================================================================

pool Sprite_18_MiniMoldorm

.speed_x
#_0697DF: db  24,  22,  17,   9,   0,  -9, -17, -22
#_0697E7: db -24, -22, -17,  -9,   0,   9,  17,  22

.speed_y
#_0697EF: db   0,   9,  17,  22,  24,  22,  17,   9
#_0697F7: db   0,  -9, -17, -22, -24, -22, -17,  -9

.direction
#_0697FF: db $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
#_069807: db $00, $01, $02, $03, $04, $05, $06, $07

pool off

;---------------------------------------------------------------------------------------------------

Sprite_18_MiniMoldorm:
#_06980F: JSL SpriteDraw_MiniMoldorm
#_069813: JSR Sprite_CheckIfActive_Bank06

#_069816: LDA.w $0EA0,X
#_069819: BEQ .not_recoiling

#_06981B: JSR SpritePrep_MiniMoldorm_bounce

.not_recoiling
#_06981E: JSR Sprite_CheckIfRecoiling_Bank06
#_069821: JSR Sprite_CheckDamageToAndFromLink_Bank06

#_069824: INC.w $0E80,X

#_069827: LDY.w $0DE0,X

#_06982A: LDA.w .speed_x,Y
#_06982D: STA.w $0D50,X

#_069830: LDA.w .speed_y,Y
#_069833: STA.w $0D40,X

#_069836: JSR Sprite_Move_XY_Bank06
#_069839: JSR Sprite_CheckTileCollision

#_06983C: LDA.w $0E70,X
#_06983F: BEQ .no_tile_collision

#_069841: JSL GetRandomNumber
#_069845: LSR A
#_069846: BCC .dont_flip

#_069848: LDA.w $0EB0,X
#_06984B: EOR.b #$FF
#_06984D: INC A
#_06984E: STA.w $0EB0,X

.dont_flip
#_069851: LDY.w $0DE0,X

#_069854: LDA.w .direction,Y
#_069857: STA.w $0DE0,X

.no_tile_collision
#_06985A: LDA.w $0D80,X
#_06985D: JSL JumpTableLocal
#_069861: dw MiniMoldorm_Readjust
#_069863: dw MiniMoldorm_Meander
#_069865: dw MiniMoldorm_TargetLink

;===================================================================================================

MiniMoldorm_Readjust:
#_069867: LDA.w $0DF0,X
#_06986A: BNE .exit

#_06986C: INC A

#_06986D: INC.w $0ED0,X

#_069870: LDY.w $0ED0,X
#_069873: CPY.b #$06
#_069875: BNE .dont_target_link

#_069877: STZ.w $0ED0,X

#_06987A: INC A

.dont_target_link
#_06987B: STA.w $0D80,X

#_06987E: JSL GetRandomNumber
#_069882: AND.b #$02
#_069884: DEC A
#_069885: STA.w $0EB0,X

#_069888: JSL GetRandomNumber
#_06988C: AND.b #$1F
#_06988E: ADC.b #$20
#_069890: STA.w $0DF0,X

.exit
#_069893: RTS

;===================================================================================================

MiniMoldorm_Meander:
#_069894: LDA.w $0DF0,X
#_069897: BNE .delay

#_069899: JSL GetRandomNumber
#_06989D: AND.b #$0F
#_06989F: ADC.b #$08
#_0698A1: STA.w $0DF0,X

#_0698A4: STZ.w $0D80,X

#_0698A7: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_0698A8: AND.b #$03
#_0698AA: BNE .exit

#_0698AC: LDA.w $0DE0,X
#_0698AF: CLC
#_0698B0: ADC.w $0EB0,X
#_0698B3: AND.b #$0F
#_0698B5: STA.w $0DE0,X

.exit
#_0698B8: RTS

;===================================================================================================

MiniMoldorm_TargetLink:
#_0698B9: TXA
#_0698BA: EOR.b $1A
#_0698BC: AND.b #$03
#_0698BE: BNE .exit

#_0698C0: LDA.b #$1F
#_0698C2: JSR Sprite_ApplySpeedTowardsLink
#_0698C5: JSL Sprite_ConvertVelocityToAngle

#_0698C9: CMP.w $0DE0,X
#_0698CC: BNE .not_at_target

#_0698CE: STZ.w $0D80,X

#_0698D1: LDA.b #$30
#_0698D3: STA.w $0DF0,X

#_0698D6: RTS

;---------------------------------------------------------------------------------------------------

.not_at_target
#_0698D7: PHP

#_0698D8: LDA.w $0DE0,X

#_0698DB: PLP
#_0698DC: BMI .decrease_angle

#_0698DE: INC A
#_0698DF: INC A

.decrease_angle
#_0698E0: DEC A
#_0698E1: AND.b #$0F
#_0698E3: STA.w $0DE0,X

.exit
#_0698E6: RTS

;===================================================================================================

Moblin_Directions:
#_0698E7: db $06, $04, $00, $02

;===================================================================================================

Sprite_12_Moblin:
#_0698EB: JSR SpriteDraw_Moblin

#_0698EE: JSR Sprite_CheckIfActive_Bank06
#_0698F1: JSR Sprite_CheckIfRecoiling_Bank06
#_0698F4: JSR Sprite_CheckDamageToAndFromLink_Bank06

#_0698F7: JSR Sprite_Move_XY_Bank06
#_0698FA: JSR Sprite_CheckTileCollision

#_0698FD: LDA.w $0D80,X
#_069900: JSL JumpTableLocal
#_069904: dw Moblin_Halted
#_069906: dw Moblin_Walk
#_069908: dw Moblin_ThrowSpear

;===================================================================================================

pool Moblin_Halted

.timer
#_06990A: db  16,  32,  48,  64

pool off

;---------------------------------------------------------------------------------------------------

Moblin_Halted:
#_06990E: LDA.w $0DF0,X
#_069911: BNE .exit

#_069913: JSL GetRandomNumber
#_069917: AND.b #$03
#_069919: TAY

#_06991A: LDA.w .timer,Y
#_06991D: STA.w $0DF0,X

#_069920: INC.w $0D80,X

#_069923: LDA.w $0EB0,X
#_069926: STA.w $0DE0,X

#_069929: TAY

#_06992A: LDA.w SluggulaAndMoblin_SpeedX,Y
#_06992D: STA.w $0D50,X

#_069930: LDA.w SluggulaAndMoblin_SpeedY,Y
#_069933: STA.w $0D40,X

.exit
#_069936: RTS

;===================================================================================================

pool Moblin_Walk_head

.direction
#_069937: db $02, $03 ; right
#_069939: db $02, $03 ; left
#_06993B: db $00, $01 ; down
#_06993D: db $00, $01 ; up

pool off

;---------------------------------------------------------------------------------------------------

Moblin_Walk:
#_06993F: LDA.w $0E80,X
#_069942: AND.b #$01

#_069944: LDY.w $0DE0,X

#_069947: CLC
#_069948: ADC.w Moblin_Directions,Y
#_06994B: STA.w $0DC0,X

#_06994E: LDA.b #$0C
#_069950: LDY.w $0E70,X
#_069953: BNE .no_tile_collision

#_069955: LDA.w $0DF0,X
#_069958: BNE .delay

#_06995A: JSR Sprite_DirectionToFaceLink

#_06995D: TYA
#_06995E: CMP.w $0DE0,X
#_069961: BNE .dont_stop

#_069963: INC.w $0D80,X

#_069966: LDA.b #$20
#_069968: STA.w $0DF0,X

#_06996B: BRA .stop

.dont_stop
#_06996D: LDA.b #$10

;---------------------------------------------------------------------------------------------------

.no_tile_collision
#_06996F: STA.w $0DF0,X

#_069972: JSL GetRandomNumber
#_069976: AND.b #$01
#_069978: STA.b $00

#_06997A: LDA.w $0DE0,X
#_06997D: ASL A
#_06997E: ORA.b $00
#_069980: TAY

#_069981: LDA.w .head_direction,Y
#_069984: STA.w $0EB0,X

#_069987: STZ.w $0D80,X

#_06998A: INC.w $0DB0,X

#_06998D: LDA.w $0DB0,X
#_069990: CMP.b #$04
#_069992: BNE .stop

#_069994: STZ.w $0DB0,X

#_069997: JSR Sprite_DirectionToFaceLink

#_06999A: TYA
#_06999B: STA.w $0EB0,X

;---------------------------------------------------------------------------------------------------

.stop
#_06999E: JSR Sprite_ZeroVelocity_XYZ_Bank06

#_0699A1: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_0699A2: DEC.w $0E90,X
#_0699A5: BPL .exit

#_0699A7: LDA.b #$0B
#_0699A9: STA.w $0E90,X

#_0699AC: INC.w $0E80,X

.exit
#_0699AF: RTS

;===================================================================================================

pool Moblin_ThrowSpear

.anim_step
#_0699B0: db $0B, $0A, $08, $09
#_0699B4: db $07, $05, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

Moblin_ThrowSpear:
#_0699B8: LDY.w $0DE0,X

#_0699BB: LDA.w $0DF0,X
#_0699BE: BNE .delay

#_0699C0: STZ.w $0D80,X

.delay
#_0699C3: CMP.b #$10
#_0699C5: BCS .animate

#_0699C7: CMP.b #$0F
#_0699C9: BNE .dont_throw

#_0699CB: PHY
#_0699CC: JSR Moblin_MaterializeSpear
#_0699CF: PLY

#_0699D0: LDA.b #$20
#_0699D2: STA.w $0E00,X

.dont_throw
#_0699D5: INY
#_0699D6: INY
#_0699D7: INY
#_0699D8: INY

.animate
#_0699D9: LDA.w .anim_step,Y
#_0699DC: STA.w $0DC0,X

#_0699DF: RTS

;===================================================================================================

pool Moblin_MaterializeSpear

.offset_x_low
#_0699E0: db  11,  -2,  -3,  11

.offset_y_low
#_0699E4: db  -3,  -3,   3, -11

.offset_y_high
#_0699E8: db  -1,  -1,   0,  -1

.speed_x
#_0699EC: db  32, -32 ; bleeds into next

.speed_y
#_0699EE: db   0,   0,  32, -32

pool off

;---------------------------------------------------------------------------------------------------

Moblin_MaterializeSpear:
#_0699F2: LDA.b #!SPRITE_1B
#_0699F4: JSL Sprite_SpawnDynamically
#_0699F8: BMI .no_room

#_0699FA: LDA.b #$03
#_0699FC: STA.w $0D90,Y

#_0699FF: PHX

#_069A00: LDA.w $0DE0,X
#_069A03: STA.w $0DE0,Y

#_069A06: TAX

#_069A07: LDA.b $00
#_069A09: CLC
#_069A0A: ADC.w .offset_x_low,X
#_069A0D: STA.w $0D10,Y

#_069A10: LDA.b $01
#_069A12: ADC.w Hinox_ThrowBomb_offset_x_high,X ; !WTF excuse me?
#_069A15: STA.w $0D30,Y

#_069A18: LDA.b $02
#_069A1A: CLC
#_069A1B: ADC.w .offset_y_low,X
#_069A1E: STA.w $0D00,Y

#_069A21: LDA.b $03
#_069A23: ADC.w .offset_y_high,X
#_069A26: STA.w $0D20,Y

#_069A29: LDA.w .speed_x,X
#_069A2C: STA.w $0D50,Y

#_069A2F: LDA.w .speed_y,X
#_069A32: STA.w $0D40,Y

#_069A35: PLX

.no_room
#_069A36: RTS

;===================================================================================================

pool SpriteDraw_Moblin

.oam_groups
; group00
#_069A37: dw  -2,   3 : db $91, $80, $00, $00
#_069A3F: dw  -2,  11 : db $90, $80, $00, $00
#_069A47: dw   0, -10 : db $86, $00, $00, $02
#_069A4F: dw   0,   0 : db $8A, $00, $00, $02

; group01
#_069A57: dw  -2,   7 : db $91, $80, $00, $00
#_069A5F: dw  -2,  15 : db $90, $80, $00, $00
#_069A67: dw   0, -10 : db $86, $00, $00, $02
#_069A6F: dw   0,   0 : db $8A, $40, $00, $02

; group02
#_069A77: dw   0,  -9 : db $84, $00, $00, $02
#_069A7F: dw   0,   0 : db $A0, $00, $00, $02
#_069A87: dw  11,  -5 : db $90, $00, $00, $00
#_069A8F: dw  11,   3 : db $91, $00, $00, $00

; group03
#_069A97: dw   0,  -9 : db $84, $00, $00, $02
#_069A9F: dw   0,   0 : db $A0, $40, $00, $02
#_069AA7: dw  11,  -8 : db $90, $00, $00, $00
#_069AAF: dw  11,   0 : db $91, $00, $00, $00

; group04
#_069AB7: dw  -4,   8 : db $80, $00, $00, $00
#_069ABF: dw   4,   8 : db $81, $00, $00, $00
#_069AC7: dw   0,  -9 : db $88, $00, $00, $02
#_069ACF: dw   0,   0 : db $A6, $00, $00, $02

; group05
#_069AD7: dw  -9,   6 : db $80, $00, $00, $00
#_069ADF: dw  -1,   6 : db $81, $00, $00, $00
#_069AE7: dw   0,  -8 : db $88, $00, $00, $02
#_069AEF: dw   0,   0 : db $A4, $00, $00, $02

; group06
#_069AF7: dw  12,   8 : db $80, $40, $00, $00
#_069AFF: dw   4,   8 : db $81, $40, $00, $00
#_069B07: dw   0,  -9 : db $88, $40, $00, $02
#_069B0F: dw   0,   0 : db $A6, $40, $00, $02

; group07
#_069B17: dw  17,   6 : db $80, $40, $00, $00
#_069B1F: dw   9,   6 : db $81, $40, $00, $00
#_069B27: dw   0,  -8 : db $88, $40, $00, $02
#_069B2F: dw   0,   0 : db $A4, $40, $00, $02

; group08
#_069B37: dw  -3,  -5 : db $91, $80, $00, $00
#_069B3F: dw  -3,   3 : db $90, $80, $00, $00
#_069B47: dw   0, -10 : db $86, $00, $00, $02
#_069B4F: dw   0,   0 : db $A8, $00, $00, $02

; group09
#_069B57: dw  11, -11 : db $90, $00, $00, $00
#_069B5F: dw  11,  -3 : db $91, $00, $00, $00
#_069B67: dw   0,  -9 : db $84, $00, $00, $02
#_069B6F: dw   0,   0 : db $82, $40, $00, $02

; group0A
#_069B77: dw  -2,  -3 : db $80, $00, $00, $00
#_069B7F: dw   6,  -3 : db $81, $00, $00, $00
#_069B87: dw   0,  -9 : db $88, $00, $00, $02
#_069B8F: dw   0,   0 : db $A2, $00, $00, $02

; group0B
#_069B97: dw  10,  -3 : db $80, $40, $00, $00
#_069B9F: dw   2,  -3 : db $81, $40, $00, $00
#_069BA7: dw   0,  -9 : db $88, $40, $00, $02
#_069BAF: dw   0,   0 : db $A2, $40, $00, $02

;---------------------------------------------------------------------------------------------------

.buffer_offset
#_069BB7: db $08, $08, $00, $00
#_069BBB: db $08, $08, $08, $08
#_069BBF: db $08, $08, $08, $08

.char
#_069BC3: db $88, $88, $86, $84

.hflip
#_069BC7: db $40, $00, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Moblin:
#_069BCB: LDA.b #$00
#_069BCD: XBA
#_069BCE: LDA.w $0DC0,X

#_069BD1: REP #$20

#_069BD3: ASL A ; x32
#_069BD4: ASL A
#_069BD5: ASL A
#_069BD6: ASL A
#_069BD7: ASL A

#_069BD8: ADC.w #.oam_groups
#_069BDB: STA.b $08

#_069BDD: SEP #$20

#_069BDF: LDA.b #$04
#_069BE1: JSL Sprite_DrawMultiple

#_069BE5: LDA.w $0F00,X
#_069BE8: BNE .exit

#_069BEA: LDA.w $0E00,X
#_069BED: BEQ .no_spear

#_069BEF: LDY.b #$03

.next_object
#_069BF1: LDA.b ($92),Y
#_069BF3: AND.b #$02
#_069BF5: BNE .skip_object

#_069BF7: PHY

#_069BF8: TYA
#_069BF9: ASL A
#_069BFA: ASL A
#_069BFB: TAY

#_069BFC: INY
#_069BFD: LDA.b #$F0
#_069BFF: STA.b ($90),Y

#_069C01: PLY

.skip_object
#_069C02: DEY
#_069C03: BPL .next_object

.no_spear
#_069C05: LDY.w $0DC0,X

#_069C08: LDA.w .buffer_offset,Y
#_069C0B: TAY

#_069C0C: PHX

#_069C0D: LDA.w $0EB0,X
#_069C10: TAX

#_069C11: LDA.w .char,X
#_069C14: INY
#_069C15: INY
#_069C16: STA.b ($90),Y

#_069C18: INY
#_069C19: LDA.b ($90),Y

#_069C1B: AND.b #$BF
#_069C1D: ORA.w .hflip,X
#_069C20: STA.b ($90),Y

#_069C22: PLX

#_069C23: JMP.w SpriteDraw_Shadow

.exit
#_069C26: RTS

;===================================================================================================

pool Sprite_0E_Snapdragon

.anim_step
#_069C27: db $04, $00, $06, $02

pool off

;---------------------------------------------------------------------------------------------------

Sprite_0E_Snapdragon:
#_069C2B: LDY.w $0DE0,X

#_069C2E: LDA.w $0DA0,X
#_069C31: CLC
#_069C32: ADC.w .anim_step,Y
#_069C35: STA.w $0DC0,X

#_069C38: JSR SpriteDraw_Snapdragon
#_069C3B: JSR Sprite_CheckIfActive_Bank06
#_069C3E: JSR Sprite_CheckIfRecoiling_Bank06
#_069C41: JSR Sprite_CheckDamageToAndFromLink_Bank06

#_069C44: STZ.w $0DA0,X

#_069C47: LDA.w $0D80,X
#_069C4A: JSL JumpTableLocal
#_069C4E: dw Snapdragon_Halted
#_069C50: dw Snapdragon_MoveAround

;===================================================================================================

SnapdragonSpeedX:
#_069C52: db   8,  -8,   8,  -8
#_069C56: db  16, -16,  16, -16

;===================================================================================================

SnapdragonSpeedY:
#_069C5A: db   8,   8,  -8,  -8
#_069C5E: db  16,  16, -16, -16

;===================================================================================================

pool Snapdragon_Halted

.timer
#_069C62: db  32,  48,  64,  80

pool off

;---------------------------------------------------------------------------------------------------

Snapdragon_Halted:
#_069C66: LDA.w $0DF0,X
#_069C69: BNE .delay

#_069C6B: INC.w $0D80,X

#_069C6E: JSL GetRandomNumber
#_069C72: AND.b #$0C
#_069C74: LSR A
#_069C75: LSR A
#_069C76: TAY

#_069C77: LDA.w .timer,Y
#_069C7A: STA.w $0DF0,X

#_069C7D: DEC.w $0D90,X
#_069C80: BPL .use_random_direction

#_069C82: LDA.b #$03
#_069C84: STA.w $0D90,X

#_069C87: LDA.b #$60
#_069C89: STA.w $0DF0,X

#_069C8C: INC.w $0DB0,X

#_069C8F: JSR Sprite_IsBelowLink

#_069C92: TYA
#_069C93: ASL A
#_069C94: STA.b $00

#_069C96: JSR Sprite_IsRightOfLink
#_069C99: TYA
#_069C9A: ORA.b $00
#_069C9C: BRA .continue

;---------------------------------------------------------------------------------------------------

.use_random_direction
#_069C9E: JSL GetRandomNumber
#_069CA2: AND.b #$03

.continue
#_069CA4: STA.w $0DE0,X

#_069CA7: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_069CA8: AND.b #$18
#_069CAA: BEQ .exit

#_069CAC: INC.w $0DA0,X

.exit
#_069CAF: RTS

;===================================================================================================

Snapdragon_MoveAround:
#_069CB0: INC.w $0DA0,X

#_069CB3: JSR Sprite_Move_XY_Bank06
#_069CB6: JSR Sprite_CheckTileCollision

#_069CB9: LDA.w $0E70,X
#_069CBC: BEQ .no_tile_collision

; TODO interesting... need to analyze the consequences of this
#_069CBE: LDA.w $0DE0,X
#_069CC1: EOR.b #$03
#_069CC3: STA.w $0DE0,X

.no_tile_collision
#_069CC6: LDY.w $0DE0,X
#_069CC9: LDA.w $0DB0,X
#_069CCC: BEQ .use_slow_speed

#_069CCE: INY
#_069CCF: INY
#_069CD0: INY
#_069CD1: INY

.use_slow_speed
#_069CD2: LDA.w SnapdragonSpeedX,Y
#_069CD5: STA.w $0D50,X

#_069CD8: LDA.w SnapdragonSpeedY,Y
#_069CDB: STA.w $0D40,X

#_069CDE: JSR Sprite_Move_Z_Bank06

#_069CE1: LDA.w $0F80,X
#_069CE4: SEC
#_069CE5: SBC.b #$04
#_069CE7: STA.w $0F80,X

#_069CEA: LDA.w $0F70,X
#_069CED: BPL .exit

#_069CEF: STZ.w $0F70,X

#_069CF2: LDA.w $0DF0,X
#_069CF5: BNE .delay

#_069CF7: STZ.w $0D80,X
#_069CFA: STZ.w $0DB0,X

#_069CFD: LDA.b #$3F
#_069CFF: STA.w $0DF0,X

#_069D02: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_069D03: LDA.b #$14
#_069D05: STA.w $0F80,X

.exit
#_069D08: RTS

;===================================================================================================

pool SpriteDraw_Snapdragon

.oam_groups
; group00
#_069D09: dw   4,  -8 : db $8F, $00, $00, $00
#_069D11: dw  12,  -8 : db $9F, $00, $00, $00
#_069D19: dw  -4,   0 : db $8C, $00, $00, $02
#_069D21: dw   4,   0 : db $8D, $00, $00, $02

; group01
#_069D29: dw   4,  -8 : db $2B, $00, $00, $00
#_069D31: dw  12,  -8 : db $3B, $00, $00, $00
#_069D39: dw  -4,   0 : db $28, $00, $00, $02
#_069D41: dw   4,   0 : db $29, $00, $00, $02

; group02
#_069D49: dw  -4,  -8 : db $3C, $00, $00, $00
#_069D51: dw   4,  -8 : db $3D, $00, $00, $00
#_069D59: dw  -4,   0 : db $AA, $00, $00, $02
#_069D61: dw   4,   0 : db $AB, $00, $00, $02

; group03
#_069D69: dw  -4,  -8 : db $3E, $00, $00, $00
#_069D71: dw   4,  -8 : db $3F, $00, $00, $00
#_069D79: dw  -4,   0 : db $AD, $00, $00, $02
#_069D81: dw   4,   0 : db $AE, $00, $00, $02

; group04
#_069D89: dw  -4,  -8 : db $9F, $40, $00, $00
#_069D91: dw   4,  -8 : db $8F, $40, $00, $00
#_069D99: dw  -4,   0 : db $8D, $40, $00, $02
#_069DA1: dw   4,   0 : db $8C, $40, $00, $02

; group05
#_069DA9: dw  -4,  -8 : db $3B, $40, $00, $00
#_069DB1: dw   4,  -8 : db $2B, $40, $00, $00
#_069DB9: dw  -4,   0 : db $29, $40, $00, $02
#_069DC1: dw   4,   0 : db $28, $40, $00, $02

; group06
#_069DC9: dw   4,  -8 : db $3D, $40, $00, $00
#_069DD1: dw  12,  -8 : db $3C, $40, $00, $00
#_069DD9: dw  -4,   0 : db $AB, $40, $00, $02
#_069DE1: dw   4,   0 : db $AA, $40, $00, $02

; group07
#_069DE9: dw   4,  -8 : db $3F, $40, $00, $00
#_069DF1: dw  12,  -8 : db $3E, $40, $00, $00
#_069DF9: dw  -4,   0 : db $AE, $40, $00, $02
#_069E01: dw   4,   0 : db $AD, $40, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Snapdragon:
#_069E09: LDA.b #$00
#_069E0B: XBA
#_069E0C: LDA.w $0DC0,X

#_069E0F: REP #$20

#_069E11: ASL A ; x32
#_069E12: ASL A
#_069E13: ASL A
#_069E14: ASL A
#_069E15: ASL A
#_069E16: ADC.w #.oam_groups
#_069E19: STA.b $08

#_069E1B: SEP #$20

#_069E1D: LDA.b #$04
#_069E1F: JSL Sprite_DrawMultiple

#_069E23: JMP.w SpriteDraw_Shadow

;===================================================================================================

Sprite_22_Ropa:
#_069E26: JSR SpriteDraw_Ropa
#_069E29: JSR Sprite_CheckIfActive_Bank06
#_069E2C: JSR Sprite_CheckIfRecoiling_Bank06
#_069E2F: JSR Sprite_CheckDamageToAndFromLink_Bank06

#_069E32: INC.w $0E80,X

#_069E35: LDA.w $0E80,X
#_069E38: LSR A
#_069E39: LSR A
#_069E3A: LSR A
#_069E3B: AND.b #$03
#_069E3D: STA.w $0DC0,X

#_069E40: LDA.w $0D80,X
#_069E43: JSL JumpTableLocal
#_069E47: dw Ropa_Halted
#_069E49: dw Ropa_Pounce

;===================================================================================================

Ropa_Halted:
#_069E4B: LDA.w $0DF0,X
#_069E4E: BNE .exit

#_069E50: LDA.b #$10
#_069E52: JSR Sprite_ApplySpeedTowardsLink

#_069E55: JSL GetRandomNumber
#_069E59: AND.b #$0F
#_069E5B: ADC.b #$14
#_069E5D: STA.w $0F80,X

#_069E60: INC.w $0D80,X

.exit
#_069E63: RTS

;===================================================================================================

Ropa_Pounce:
#_069E64: JSR Sprite_Move_XY_Bank06
#_069E67: JSR Sprite_CheckTileCollision

#_069E6A: LDA.w $0E70,X
#_069E6D: BEQ .air_borne

#_069E6F: JSR Sprite_ZeroVelocity_XY_Bank06

.air_borne
#_069E72: JSR Sprite_Move_Z_Bank06

#_069E75: DEC.w $0F80,X
#_069E78: DEC.w $0F80,X

#_069E7B: LDA.w $0F70,X
#_069E7E: BPL .exit

#_069E80: STZ.w $0F70,X

#_069E83: LDA.b #$30
#_069E85: STA.w $0DF0,X

#_069E88: STZ.w $0D80,X

.exit
#_069E8B: RTS

;===================================================================================================

pool SpriteDraw_Ropa

.oam_groups
; group00
#_069E8C: dw   0,  -8 : db $26, $00, $00, $00
#_069E94: dw   8,  -8 : db $27, $00, $00, $00
#_069E9C: dw   0,   0 : db $08, $00, $00, $02

; group01
#_069EA4: dw   0,  -8 : db $36, $00, $00, $00
#_069EAC: dw   8,  -8 : db $37, $00, $00, $00
#_069EB4: dw   0,   0 : db $0A, $00, $00, $02

; group02
#_069EBC: dw   0,  -8 : db $27, $40, $00, $00
#_069EC4: dw   8,  -8 : db $26, $40, $00, $00
#_069ECC: dw   0,   0 : db $08, $40, $00, $02

; group03
#_069ED4: dw   0,  -8 : db $37, $40, $00, $00
#_069EDC: dw   8,  -8 : db $36, $40, $00, $00
#_069EE4: dw   0,   0 : db $08, $40, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Ropa:
#_069EEC: LDA.b #$00
#_069EEE: XBA
#_069EEF: LDA.w $0DC0,X

#_069EF2: REP #$20

#_069EF4: ASL A
#_069EF5: ASL A
#_069EF6: ASL A
#_069EF7: STA.b $00

#_069EF9: ASL A
#_069EFA: ADC.b $00
#_069EFC: ADC.w #.oam_groups
#_069EFF: STA.b $08

#_069F01: SEP #$20

#_069F03: LDA.b #$03
#_069F05: JSL Sprite_DrawMultiple

#_069F09: JMP.w SpriteDraw_Shadow

;===================================================================================================

Sprite_11_Hinox:
#_069F0C: JSR SpriteDraw_Hinox
#_069F0F: JSR Sprite_CheckIfActive_Bank06

#_069F12: LDA.w $0EA0,X
#_069F15: BEQ .not_recoiling

#_069F17: JSR Hinox_FaceLink

#_069F1A: LDA.b #$02
#_069F1C: STA.w $0D80,X

#_069F1F: LDA.b #$30
#_069F21: STA.w $0DF0,X

.not_recoiling
#_069F24: JSR Sprite_CheckIfRecoiling_Bank06
#_069F27: JSR Sprite_CheckDamageToAndFromLink_Bank06

#_069F2A: LDA.w $0D80,X
#_069F2D: JSL JumpTableLocal
#_069F31: dw Hinox_Halted
#_069F33: dw Hinox_Walk
#_069F35: dw Hinox_ThrowBomb

;===================================================================================================

pool Hinox_ThrowBomb

.anim_step
#_069F37: db $0B, $0A, $08, $09
#_069F3B: db $07, $05, $01, $03

.offset_x_low
#_069F3F: db   8,  -8, -13,  13

;---------------------------------------------------------------------------------------------------

#CuccoSwarmSpeed:
.offset_x_high
#_069F43: db   0,  -1,  -1,   0

.offset_y_low
#_069F47: db -11, -11, -16, -16

.speed_x
#_069F4B: db  24, -24 ; bleeds into next

.speed_y
#_069F4D: db   0,   0,  24, -24

pool off

;---------------------------------------------------------------------------------------------------

Hinox_ThrowBomb:
#_069F51: LDA.w $0DF0,X
#_069F54: BNE .delay

#_069F56: STZ.w $0D80,X

#_069F59: LDA.b #$02
#_069F5B: STA.w $0DF0,X

#_069F5E: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_069F5F: CMP.b #$20
#_069F61: BNE .dont_throw

#_069F63: LDA.b #!SPRITE_4A
#_069F65: JSL Sprite_SpawnDynamically
#_069F69: BMI .no_room

#_069F6B: JSL Sprite_TransmuteToBomb

#_069F6F: LDA.b #$40
#_069F71: STA.w $0E00,Y

#_069F74: PHX

#_069F75: LDA.w $0DE0,X
#_069F78: TAX

#_069F79: LDA.b $00
#_069F7B: CLC
#_069F7C: ADC.w .offset_x_low,X
#_069F7F: STA.w $0D10,Y

#_069F82: LDA.b $01
#_069F84: ADC.w .offset_x_high,X
#_069F87: STA.w $0D30,Y

#_069F8A: LDA.b $02
#_069F8C: CLC
#_069F8D: ADC.w .offset_y_low,X
#_069F90: STA.w $0D00,Y

#_069F93: LDA.b $03
#_069F95: ADC.b #$FF
#_069F97: STA.w $0D20,Y

#_069F9A: LDA.w .speed_x,X
#_069F9D: STA.w $0D50,Y

#_069FA0: LDA.w .speed_y,X
#_069FA3: STA.w $0D40,Y

#_069FA6: PLX

#_069FA7: LDA.b #$28
#_069FA9: STA.w $0F80,Y

.no_room
#_069FAC: RTS

;---------------------------------------------------------------------------------------------------

.dont_throw
#_069FAD: LDY.w $0DE0,X
#_069FB0: BCS .dont_adjust_arm

#_069FB2: INY
#_069FB3: INY
#_069FB4: INY
#_069FB5: INY

.dont_adjust_arm
#_069FB6: LDA.w .anim_step,Y
#_069FB9: STA.w $0DC0,X

#_069FBC: RTS

;===================================================================================================

HinoxSpeedX:
#_069FBD: db   8,  -8 ; bleeds into next

HinoxSpeedY:
#_069FBF: db   0,   0,   8,  -8

;===================================================================================================

Hinox_Halted:
#_069FC3: LDA.w $0DF0,X
#_069FC6: BNE EXIT_06A02B

#_069FC8: JSL GetRandomNumber
#_069FCC: AND.b #$03
#_069FCE: BNE .change_direction

#_069FD0: LDA.b #$02
#_069FD2: STA.w $0D80,X

#_069FD5: LDA.b #$40
#_069FD7: STA.w $0DF0,X

#_069FDA: RTS

.change_direction
#_069FDB: INC.w $0DB0,X

#_069FDE: LDA.w $0DB0,X
#_069FE1: CMP.b #$04
#_069FE3: BNE Hinox_PickRandomDirection

#_069FE5: STZ.w $0DB0,X

;===================================================================================================

Hinox_FaceLink:
#_069FE8: JSR Sprite_DirectionToFaceLink

#_069FEB: TYA
#_069FEC: JSR Hinox_SetDirection

#_069FEF: ASL.w $0D50,X
#_069FF2: ASL.w $0D40,X

#_069FF5: RTS

;===================================================================================================

pool Hinox_PickRandomDirection

.direction
#_069FF6: db $02, $03, $03, $02
#_069FFA: db $00, $01, $01, $00

pool off

;---------------------------------------------------------------------------------------------------

Hinox_PickRandomDirection:
#_069FFE: JSL GetRandomNumber
#_06A002: LSR A

#_06A003: LDA.w $0DE0,X
#_06A006: ROL A
#_06A007: TAY

#_06A008: LDA.w .direction,Y

;===================================================================================================

Hinox_SetDirection:
#_06A00B: STA.w $0DE0,X

#_06A00E: JSL GetRandomNumber
#_06A012: AND.b #$3F
#_06A014: ADC.b #$60
#_06A016: STA.w $0DF0,X

#_06A019: INC.w $0D80,X

#_06A01C: LDY.w $0DE0,X

#_06A01F: LDA.w HinoxSpeedX,Y
#_06A022: STA.w $0D50,X

#_06A025: LDA.w HinoxSpeedY,Y
#_06A028: STA.w $0D40,X

;---------------------------------------------------------------------------------------------------

#EXIT_06A02B:
#_06A02B: RTS

;===================================================================================================

pool Hinox_Walk

.anim_step
#_06A02C: db $06, $04, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

Hinox_Walk:
#_06A030: LDA.w $0DF0,X
#_06A033: BNE .delay

.reset_ai
#_06A035: LDA.b #$10
#_06A037: STA.w $0DF0,X

#_06A03A: STZ.w $0D80,X

#_06A03D: RTS

.delay
#_06A03E: DEC.w $0D90,X
#_06A041: BPL .delay_tick

#_06A043: LDA.b #$0B
#_06A045: STA.w $0D90,X

#_06A048: INC.w $0E80,X

.delay_tick
#_06A04B: JSR Sprite_Move_XY_Bank06
#_06A04E: JSR Sprite_CheckTileCollision

#_06A051: LDA.w $0E70,X
#_06A054: BEQ .no_tile_collision
#_06A056: BRA .reset_ai

.no_tile_collision
#_06A058: LDA.w $0E80,X
#_06A05B: AND.b #$01
#_06A05D: STA.b $00

#_06A05F: LDY.w $0DE0,X

#_06A062: LDA.w .anim_step,Y
#_06A065: CLC
#_06A066: ADC.b $00
#_06A068: STA.w $0DC0,X

#_06A06B: RTS

;===================================================================================================
; TODO is all of this used?
;===================================================================================================
pool SpriteDraw_Hinox

.oam_groups

.group00
#_06A06C: dw   0, -13 : db $00, $06, $00, $02
#_06A074: dw  -8,  -5 : db $24, $06, $00, $02
#_06A07C: dw   8,  -5 : db $24, $46, $00, $02
#_06A084: dw   0,   1 : db $06, $06, $00, $02

.group01
#_06A08C: dw   0, -13 : db $00, $06, $00, $02
#_06A094: dw  -8,  -5 : db $24, $06, $00, $02
#_06A09C: dw   8,  -5 : db $24, $46, $00, $02
#_06A0A4: dw   0,   1 : db $06, $46, $00, $02

.group02
#_06A0AC: dw  -8,  -6 : db $24, $06, $00, $02
#_06A0B4: dw   8,  -6 : db $24, $46, $00, $02
#_06A0BC: dw   0,   0 : db $06, $06, $00, $02
#_06A0C4: dw   0, -13 : db $04, $06, $00, $02

.group03
#_06A0CC: dw  -8,  -6 : db $24, $06, $00, $02
#_06A0D4: dw   8,  -6 : db $24, $46, $00, $02
#_06A0DC: dw   0,   0 : db $06, $46, $00, $02
#_06A0E4: dw   0, -13 : db $04, $06, $00, $02

.group04
#_06A0EC: dw  -3, -13 : db $02, $06, $00, $02
#_06A0F4: dw   0,  -8 : db $0C, $06, $00, $02
#_06A0FC: dw   0,   0 : db $1C, $06, $00, $02

.group05
#_06A104: dw  -3, -12 : db $02, $06, $00, $02
#_06A10C: dw   0,  -8 : db $0E, $06, $00, $02
#_06A114: dw   0,   0 : db $1E, $06, $00, $02

.group06
#_06A11C: dw   3, -13 : db $02, $46, $00, $02
#_06A124: dw   0,  -8 : db $0C, $46, $00, $02
#_06A12C: dw   0,   0 : db $1C, $46, $00, $02

.group07
#_06A134: dw   3, -12 : db $02, $46, $00, $02
#_06A13C: dw   0,  -8 : db $0E, $46, $00, $02
#_06A144: dw   0,   0 : db $1E, $46, $00, $02

.group08
#_06A14C: dw -13, -16 : db $6E, $05, $00, $02
#_06A154: dw   0, -13 : db $00, $06, $00, $02
#_06A15C: dw  -8,  -5 : db $20, $06, $00, $02
#_06A164: dw   8,  -5 : db $24, $46, $00, $02
#_06A16C: dw   0,   1 : db $06, $06, $00, $02

.group09
#_06A174: dw  -8,  -5 : db $24, $06, $00, $02
#_06A17C: dw   8,  -5 : db $20, $46, $00, $02
#_06A184: dw   0,   1 : db $06, $06, $00, $02
#_06A18C: dw   0, -13 : db $04, $06, $00, $02
#_06A194: dw  13, -16 : db $6E, $05, $00, $02

.group0A
#_06A19C: dw  -8, -11 : db $6E, $05, $00, $02
#_06A1A4: dw  -3, -13 : db $02, $06, $00, $02
#_06A1AC: dw   0,   0 : db $22, $06, $00, $02
#_06A1B4: dw   0,  -8 : db $0C, $06, $00, $02

.group0B
#_06A1BC: dw   8, -11 : db $6E, $05, $00, $02
#_06A1C4: dw   3, -13 : db $02, $46, $00, $02
#_06A1CC: dw   0,   0 : db $22, $46, $00, $02
#_06A1D4: dw   0,  -8 : db $0C, $46, $00, $02

;---------------------------------------------------------------------------------------------------

.oam_group_pointers
#_06A1DC: dw .group00
#_06A1DE: dw .group01
#_06A1E0: dw .group02
#_06A1E2: dw .group03
#_06A1E4: dw .group04
#_06A1E6: dw .group05
#_06A1E8: dw .group06
#_06A1EA: dw .group07
#_06A1EC: dw .group08
#_06A1EE: dw .group09
#_06A1F0: dw .group0A
#_06A1F2: dw .group0B

;---------------------------------------------------------------------------------------------------

.oam_group_size
#_06A1F4: db 4
#_06A1F5: db 4
#_06A1F6: db 4
#_06A1F7: db 4
#_06A1F8: db 3
#_06A1F9: db 3
#_06A1FA: db 3
#_06A1FB: db 3
#_06A1FC: db 5
#_06A1FD: db 5
#_06A1FE: db 4
#_06A1FF: db 4

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Hinox:
#_06A200: LDA.w $0DC0,X
#_06A203: PHA

#_06A204: ASL A
#_06A205: TAY

#_06A206: REP #$20

#_06A208: LDA.w .oam_group_pointers,Y
#_06A20B: STA.b $08

#_06A20D: SEP #$20

#_06A20F: PLY

#_06A210: LDA.w .oam_group_size,Y

#_06A213: JSL Sprite_DrawMultiple

#_06A217: JMP.w SpriteDraw_Shadow

;===================================================================================================

PositiveAndNegativeOne:
#_06A21A: db  1, -1

;===================================================================================================

BariSpeed:
.x
#_06A21C: db   0,   8,  11,  14
#_06A220: db  16,  14,  11,   8
#_06A224: db   0,  -8, -11, -14
#_06A228: db -16, -14, -11,  -8

.y
#_06A22C: db -16, -14, -11,  -8
#_06A230: db   0,   8,  11,  14
#_06A234: db  16,  14,  11,   8
#_06A238: db   0,  -9, -11, -14

;===================================================================================================

BariSplit:
.offset_x
#_06A23C: db   0,   8

.speed_x
#_06A23E: db -32,  32

;===================================================================================================

BariWiggle:
#_06A240: db   8,  -8

;===================================================================================================

Bari_anim_step:
#_06A242: db $00, $03

;===================================================================================================

Sprite_23_RedBari:
Sprite_24_BlueBari:
#_06A244: LDA.w $0DB0,X
#_06A247: BEQ Bari_JustDraw

#_06A249: BPL Sprite_RedBiri

;===================================================================================================

Bari_Main:
#_06A24B: LDA.w $0EB0,X
#_06A24E: CMP.b #$10
#_06A250: BNE .delay_tile_collision

#_06A252: LDA.b #$FF
#_06A254: STA.w $0D50,X
#_06A257: STA.w $0E30,X

#_06A25A: JSR Sprite_CheckTileCollision

#_06A25D: STZ.w $0E30,X

#_06A260: LDA.w $0FA5
#_06A263: BNE .collision

#_06A265: STZ.w $0DB0,X
#_06A268: STZ.w $0BA0,X

#_06A26B: JMP.w Bari_RandomlySetTimer2

.collision
#_06A26E: STA.w $0BA0,X

#_06A271: RTS

.delay_tile_collision
#_06A272: INC.w $0EB0,X

#_06A275: RTS

;===================================================================================================

Sprite_RedBiri:
#_06A276: JSR SpriteDraw_SingleSmall

#_06A279: BRA BariAndBiri_Main

;===================================================================================================

Bari_JustDraw:
#_06A27B: LDA.w $0DC0,X
#_06A27E: CMP.b #$02
#_06A280: BCC .not_electrified

#_06A282: JSR SpriteDraw_SingleLarge

#_06A285: BRA BariAndBiri_Main

.not_electrified
#_06A287: JSR SpriteDraw_Bari

;===================================================================================================

BariAndBiri_Main:
#_06A28A: JSR Sprite_CheckIfActive_Bank06
#_06A28D: JSR Sprite_CheckIfRecoiling_Bank06

#_06A290: LDA.w $0E10,X
#_06A293: BNE Biri_Recoiling

#_06A295: LDA.w $0D80,X
#_06A298: CMP.b #$02
#_06A29A: BNE Bari_NotSplitting

#_06A29C: STA.w $0BA0,X

#_06A29F: LDA.b $1A
#_06A2A1: LSR A
#_06A2A2: AND.b #$01
#_06A2A4: TAY

#_06A2A5: LDA.w BariWiggle,Y
#_06A2A8: STA.w $0D50,X

#_06A2AB: JSR Sprite_Move_X_Bank06

#_06A2AE: LDA.w $0DF0,X
#_06A2B1: BNE .exit

#_06A2B3: JSR RedBari_Split

#_06A2B6: STZ.w $0DD0,X

.exit
#_06A2B9: RTS

;===================================================================================================

Bari_NotSplitting:
#_06A2BA: JSR Sprite_CheckDamageToAndFromLink_Bank06

#_06A2BD: TXA
#_06A2BE: EOR.b $1A
#_06A2C0: AND.b #$0F
#_06A2C2: BNE .delay_rotation_tick

#_06A2C4: LDA.w $0DA0,X
#_06A2C7: AND.b #$01
#_06A2C9: TAY

#_06A2CA: LDA.w $0D90,X
#_06A2CD: CLC
#_06A2CE: ADC.w PositiveAndNegativeOne,Y
#_06A2D1: STA.w $0D90,X

#_06A2D4: JSL GetRandomNumber

#_06A2D8: AND.b #$03
#_06A2DA: BNE .delay_rotation_tick

#_06A2DC: INC.w $0DA0,X

.delay_rotation_tick
#_06A2DF: LDA.w $0D90,X
#_06A2E2: AND.b #$0F
#_06A2E4: TAY

#_06A2E5: LDA.w BariSpeed_x,Y
#_06A2E8: STA.w $0D50,X

#_06A2EB: LDA.w BariSpeed_y,Y
#_06A2EE: STA.w $0D40,X

#_06A2F1: TXA
#_06A2F2: EOR.b $1A
#_06A2F4: AND.b #$03
#_06A2F6: ORA.w $0DF0,X
#_06A2F9: BNE Bari_Animate

;===================================================================================================

Biri_Recoiling:
#_06A2FB: LDA.w $0E70,X
#_06A2FE: BNE .no_tile_collision

#_06A300: JSR Sprite_Move_XY_Bank06

.no_tile_collision
#_06A303: JSR Sprite_CheckTileCollision

;===================================================================================================

Bari_Animate:
#_06A306: LDY.w $0DB0,X

#_06A309: LDA.b $1A
#_06A30B: LSR A
#_06A30C: LSR A
#_06A30D: LSR A
#_06A30E: AND.b #$01
#_06A310: CLC
#_06A311: ADC.w Bari_anim_step,Y
#_06A314: STA.w $0DC0,X

#_06A317: LDA.w $0D80,X
#_06A31A: BEQ .not_electrified

#_06A31C: LDA.w $0DF0,X
#_06A31F: BNE .delay

#_06A321: STZ.w $0D80,X

#_06A324: BRA Bari_RandomlySetTimer2

.delay
#_06A326: LDA.b $1A
#_06A328: LSR A
#_06A329: AND.b #$02

#_06A32B: CLC
#_06A32C: ADC.w Bari_anim_step,Y
#_06A32F: STA.w $0DC0,X

#_06A332: RTS

;---------------------------------------------------------------------------------------------------

.not_electrified
#_06A333: LDA.w $0E00,X
#_06A336: BNE EXIT_06A354

#_06A338: JSL GetRandomNumber
#_06A33C: AND.b #$01
#_06A33E: BNE Bari_RandomlySetTimer2

#_06A340: LDA.b #$80
#_06A342: STA.w $0DF0,X

#_06A345: INC.w $0D80,X

#_06A348: RTS

;===================================================================================================

Bari_RandomlySetTimer2:
#_06A349: JSL GetRandomNumber
#_06A34D: AND.b #$3F ; Between 128 and 192 frames
#_06A34F: ADC.b #$80
#_06A351: STA.w $0E00,X

;---------------------------------------------------------------------------------------------------

#EXIT_06A354:
#_06A354: RTS

;===================================================================================================

RedBari_Split:
#_06A355: LDA.b #$01
#_06A357: STA.w $0FB5

.next_biri
#_06A35A: LDA.b #!SPRITE_23
#_06A35C: JSL Sprite_SpawnDynamically
#_06A360: BMI .no_room

#_06A362: JSL Sprite_SetSpawnedCoordinates

#_06A366: LDA.b #$33
#_06A368: STA.w $0E60,Y

#_06A36B: LDA.b #$03
#_06A36D: STA.w $0F50,Y

#_06A370: LDA.b #$01
#_06A372: STA.w $0F60,Y
#_06A375: STA.w $0DB0,Y

#_06A378: PHX

#_06A379: LDX.w $0FB5

#_06A37C: LDA.b $00
#_06A37E: CLC
#_06A37F: ADC.w BariSplit_offset_x,X
#_06A382: STA.w $0D10,Y

#_06A385: LDA.b $01
#_06A387: ADC.b #$00
#_06A389: STA.w $0D30,Y

#_06A38C: LDA.w BariSplit_speed_x,X
#_06A38F: STA.w $0D50,Y

#_06A392: LDA.b #$08
#_06A394: STA.w $0E10,Y

#_06A397: LDA.b #$40
#_06A399: STA.w $0E00,Y

#_06A39C: PLX

.no_room
#_06A39D: DEC.w $0FB5
#_06A3A0: BPL .next_biri

#_06A3A2: RTS

;===================================================================================================

pool SpriteDraw_Bari

.oam_groups
; group00
#_06A3A3: dw   0,   0 : db $22, $00, $00, $00
#_06A3AB: dw   8,   0 : db $22, $40, $00, $00
#_06A3B3: dw   0,   8 : db $32, $00, $00, $00
#_06A3BB: dw   8,   8 : db $32, $40, $00, $00

; group01
#_06A3C3: dw   0,   0 : db $23, $00, $00, $00
#_06A3CB: dw   8,   0 : db $23, $40, $00, $00
#_06A3D3: dw   0,   8 : db $33, $00, $00, $00
#_06A3DB: dw   8,   8 : db $33, $40, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Bari:
#_06A3E3: LDA.b #$00
#_06A3E5: XBA
#_06A3E6: LDA.w $0DC0,X

#_06A3E9: REP #$20

#_06A3EB: ASL A ; x32
#_06A3EC: ASL A
#_06A3ED: ASL A
#_06A3EE: ASL A
#_06A3EF: ASL A

#_06A3F0: ADC.w #.oam_groups
#_06A3F3: STA.b $08

#_06A3F5: SEP #$20

#_06A3F7: LDA.b #$04
#_06A3F9: JSL Sprite_DrawMultiple

#_06A3FD: JMP.w SpriteDraw_Shadow

;===================================================================================================

pool Sprite_13_MiniHelmasaur

.anim_step
#_06A400: db $03, $04, $03, $04
#_06A404: db $02, $02, $05, $05

.flip
#_06A408: db $40, $40, $00, $00
#_06A40C: db $00, $40, $40, $00

pool off

;---------------------------------------------------------------------------------------------------

Sprite_13_MiniHelmasaur:
#_06A410: LDA.w $0DE0,X
#_06A413: ASL A
#_06A414: STA.b $00

#_06A416: LDA.w $0E80,X
#_06A419: LSR A
#_06A41A: LSR A
#_06A41B: AND.b #$01

#_06A41D: ORA.b $00
#_06A41F: TAY

#_06A420: LDA.w .anim_step,Y
#_06A423: STA.w $0DC0,X

#_06A426: LDA.w $0F50,X
#_06A429: AND.b #$BF
#_06A42B: ORA.w .flip,Y
#_06A42E: STA.w $0F50,X

#_06A431: TXA
#_06A432: EOR.b $1A
#_06A434: AND.b #$0F
#_06A436: BNE .continue

;---------------------------------------------------------------------------------------------------

#_06A438: LDA.w $0D50,X
#_06A43B: BPL .positive_x

#_06A43D: EOR.b #$FF
#_06A43F: INC A

.positive_x
#_06A440: STA.b $00

#_06A442: LDA.w $0D40,X
#_06A445: BPL .positive_y

#_06A447: EOR.b #$FF
#_06A449: INC A

.positive_y
#_06A44A: STA.b $01

#_06A44C: LDA.b $00
#_06A44E: CMP.b $01

#_06A450: LDA.b #$00
#_06A452: LDY.w $0D50,X
#_06A455: BCS .use_x_speed

#_06A457: LDA.b #$02
#_06A459: LDY.w $0D40,X

.use_x_speed
#_06A45C: BPL .positive_choice

#_06A45E: INC A

.positive_choice
#_06A45F: STA.w $0DE0,X

;---------------------------------------------------------------------------------------------------

.continue
#_06A462: JSR SpriteDraw_SingleLarge

#_06A465: BRA MiniHelmaAndBeetleMain

;===================================================================================================
; Pretty much all of their movement code is shared with mini helmas
;===================================================================================================
Sprite_26_HardhatBeetle:
#_06A467: LDA.w $0E80,X
#_06A46A: LSR A
#_06A46B: LSR A
#_06A46C: AND.b #$01
#_06A46E: STA.w $0DC0,X

#_06A471: JSR SpriteDraw_HardhatBeetle

;===================================================================================================

MiniHelmaAndBeetleMain:
#_06A474: JSR Sprite_CheckIfActive_Bank06

#_06A477: INC.w $0E80,X

#_06A47A: JSR Sprite_CheckIfRecoiling_Bank06
#_06A47D: JSR Sprite_CheckDamageToAndFromLink_Bank06

#_06A480: LDA.w $0E70,X
#_06A483: AND.b #$0F
#_06A485: BEQ .no_tile_collision

#_06A487: AND.b #$03
#_06A489: BEQ .no_horizontal_tile_collision

#_06A48B: STZ.w $0D50,X

.no_horizontal_tile_collision
#_06A48E: STZ.w $0D40,X

#_06A491: BRA .continue

.no_tile_collision
#_06A493: JSR Sprite_Move_XY_Bank06

;---------------------------------------------------------------------------------------------------

.continue
#_06A496: JSR Sprite_CheckTileCollision

#_06A499: TXA
#_06A49A: EOR.b $1A
#_06A49C: AND.b #$1F
#_06A49E: BNE .delay_turning

#_06A4A0: LDA.w $0D90,X
#_06A4A3: JSR Sprite_ProjectSpeedTowardsLink

#_06A4A6: LDA.b $00
#_06A4A8: STA.w $0DA0,X

#_06A4AB: LDA.b $01
#_06A4AD: STA.w $0DB0,X

;---------------------------------------------------------------------------------------------------

.delay_turning
#_06A4B0: TXA
#_06A4B1: EOR.b $1A
#_06A4B3: AND.w $0D80,X
#_06A4B6: BNE .exit

#_06A4B8: LDA.w $0D40,X
#_06A4BB: CMP.w $0DA0,X
#_06A4BE: BPL .at_max_y_speed

#_06A4C0: INC.w $0D40,X
#_06A4C3: BRA .check_x_speed

.at_max_y_speed
#_06A4C5: DEC.w $0D40,X

.check_x_speed
#_06A4C8: LDA.w $0D50,X
#_06A4CB: CMP.w $0DB0,X
#_06A4CE: BPL .at_max_x_speed

#_06A4D0: INC.w $0D50,X
#_06A4D3: BRA .exit

.at_max_x_speed
#_06A4D5: DEC.w $0D50,X

.exit
#_06A4D8: RTS

;===================================================================================================

pool SpriteDraw_HardhatBeetle

.oam_groups
; group00
#_06A4D9: dw   0,  -4 : db $40, $01, $00, $02
#_06A4E1: dw   0,   2 : db $42, $01, $00, $02

; group01
#_06A4E9: dw   0,  -5 : db $40, $01, $00, $02
#_06A4F1: dw   0,   2 : db $44, $01, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_HardhatBeetle:
#_06A4F9: LDA.w $0DC0,X
#_06A4FC: ASL A ; x16
#_06A4FD: ASL A
#_06A4FE: ASL A
#_06A4FF: ASL A
#_06A500: ADC.b #.oam_groups>>0
#_06A502: STA.b $08

#_06A504: LDA.b #.oam_groups>>8
#_06A506: ADC.b #$00
#_06A508: STA.b $09

#_06A50A: LDA.b #$02
#_06A50C: JSL Sprite_DrawMultiple

#_06A510: JMP.w SpriteDraw_Shadow_Conditional

;===================================================================================================

Sprite_15_Antifairy:
Sprite_77_Antifairy:
#_06A513: JSL SpriteDraw_Antfairy
#_06A517: JSR Sprite_CheckIfActive_Bank06
#_06A51A: JSR Sprite_CheckDamageToLink
#_06A51D: BCC .dont_drain_magic

#_06A51F: LDA.w $0DF0,X
#_06A522: BNE .dont_drain_magic

#_06A524: LDA.b #$10
#_06A526: STA.w $0DF0,X

#_06A529: LDA.l $7EF36E
#_06A52D: SEC
#_06A52E: SBC.b #$08
#_06A530: BCS .enough_magic_to_drain

#_06A532: LDA.b #$00

#_06A534: BRA .skip_sfx

.enough_magic_to_drain
#_06A536: LDY.b #!SFX3_1D
#_06A538: STY.w $012F

.skip_sfx
#_06A53B: STA.l $7EF36E

.dont_drain_magic
#_06A53F: JSR Sprite_Move_XY_Bank06
#_06A542: JSL Sprite_BounceFromTileCollision_long

#_06A546: RTS

;===================================================================================================

UNREACHABLE_06A547:
#_06A547: db $E8, $FF, $F8, $FF, $08, $00, $18, $00
#_06A54F: db $E8, $FF, $F8, $FF, $08, $00, $18, $00
#_06A557: db $E8, $FF, $F8, $FF, $08, $00, $18, $00
#_06A55F: db $E8, $FF, $F8, $FF, $08, $00, $18, $00
#_06A567: db $EA, $FF, $F9, $FF, $07, $00, $16, $00
#_06A56F: db $EA, $FF, $F9, $FF, $07, $00, $16, $00
#_06A577: db $EA, $FF, $F9, $FF, $07, $00, $16, $00
#_06A57F: db $EA, $FF, $F9, $FF, $07, $00, $16, $00
#_06A587: db $E8, $FF, $E8, $FF, $E8, $FF, $E8, $FF
#_06A58F: db $F8, $FF, $F8, $FF, $F8, $FF, $F8, $FF
#_06A597: db $08, $00, $08, $00, $08, $00, $08, $00
#_06A59F: db $18, $00, $18, $00, $18, $00, $18, $00
#_06A5A7: db $EA, $FF, $EA, $FF, $EA, $FF, $EA, $FF
#_06A5AF: db $F9, $FF, $F9, $FF, $F9, $FF, $F9, $FF
#_06A5B7: db $07, $00, $07, $00, $07, $00, $07, $00
#_06A5BF: db $16, $00, $16, $00, $16, $00, $16, $00

;===================================================================================================

pool Sprite_0B_Cucco

.h_flip
#_06A5C7: db $40, $00

pool off

;---------------------------------------------------------------------------------------------------

Sprite_0B_Cucco:
#_06A5C9: LDA.w $0D50,X
#_06A5CC: BEQ .x_speed_0

#_06A5CE: ASL A
#_06A5CF: ROL A
#_06A5D0: AND.b #$01
#_06A5D2: TAY

#_06A5D3: LDA.w $0F50,X
#_06A5D6: AND.b #$BF
#_06A5D8: ORA.w .h_flip,Y
#_06A5DB: STA.w $0F50,X

.x_speed_0
#_06A5DE: JSR SpriteDraw_SingleLarge

#_06A5E1: LDA.w $0EB0,X
#_06A5E4: BEQ .not_easter_egg

#_06A5E6: LDA.b #!SPRITE_3D
#_06A5E8: STA.w $0E20,X

#_06A5EB: JSL SpritePrep_LoadProperties

#_06A5EF: INC.w $0E30,X

#_06A5F2: LDA.b #$30
#_06A5F4: STA.w $0DF0,X

#_06A5F7: LDA.b #!SFX2_15
#_06A5F9: STA.w $012E
#_06A5FC: STA.w $0BA0,X

#_06A5FF: RTS

;---------------------------------------------------------------------------------------------------

.not_easter_egg
#_06A600: LDA.w $0DD0,X
#_06A603: CMP.b #$0A
#_06A605: BNE .not_panic_clucking

#_06A607: LDA.b #$03
#_06A609: STA.w $0D80,X

#_06A60C: LDA.b $11
#_06A60E: BNE .not_panic_clucking

#_06A610: JSR Cucco_AnimateSlow
#_06A613: JSR Cucco_DrawPANIC

#_06A616: LDA.b $1A
#_06A618: AND.b #$0F
#_06A61A: BNE .not_panic_clucking

#_06A61C: JSR BawkBawk

.not_panic_clucking
#_06A61F: JSR Sprite_CheckIfActive_Bank06

#_06A622: LDA.w $0DB0,X
#_06A625: BEQ Cucco_Main

;===================================================================================================

Cucco_Swarming:
#_06A627: LDA.w $0F50,X
#_06A62A: ORA.b #$10
#_06A62C: STA.w $0F50,X

#_06A62F: JSR Sprite_Move_XY_Bank06

#_06A632: LDA.b #$0C
#_06A634: STA.w $0F70,X
#_06A637: STA.w $0BA0,X

#_06A63A: TXA
#_06A63B: EOR.b $1A
#_06A63D: AND.b #$07
#_06A63F: BNE .dont_damage

#_06A641: JSR Sprite_CheckDamageToLink

.dont_damage
#_06A644: JMP.w Cucco_AnimateFast

;===================================================================================================

Cucco_Main:
#_06A647: LDA.b #$FF
#_06A649: STA.w $0E50,X

#_06A64C: LDA.w $0DA0,X
#_06A64F: CMP.b #$23
#_06A651: BCC .dont_summon

#_06A653: JSR Cucco_SummonAvenger

.dont_summon
#_06A656: LDA.w $0EA0,X
#_06A659: BEQ .no_more_hits

#_06A65B: STZ.w $0EA0,X

#_06A65E: LDA.w $0DA0,X
#_06A661: CMP.b #$23
#_06A663: BCS .too_hurt_to_cluck

#_06A665: INC.w $0DA0,X

#_06A668: JSR BawkBawk

.too_hurt_to_cluck
#_06A66B: LDA.b #$02
#_06A66D: STA.w $0D80,X

.no_more_hits
#_06A670: JSR Sprite_CheckDamageFromLink

#_06A673: LDA.w $0D80,X
#_06A676: BEQ Cucco_Calm

#_06A678: CMP.b #$01
#_06A67A: BEQ Cucco_Bouncing

#_06A67C: CMP.b #$02
#_06A67E: BNE .carried

#_06A680: JMP.w Cucco_Flee

.carried
#_06A683: JMP.w Cucco_Carried

;===================================================================================================

Cucco_Calm:
#_06A686: LDA.w $0DF0,X
#_06A689: BNE .delay

#_06A68B: JSL GetRandomNumber
#_06A68F: AND.b #$0F

#_06A691: PHX

#_06A692: TXY
#_06A693: TAX

#_06A694: LDA.l SomeRandomXSpeeds_Bank05,X
#_06A698: STA.w $0D50,Y

#_06A69B: LDA.l SomeRandomYSpeeds_Bank05,X
#_06A69F: STA.w $0D40,Y

#_06A6A2: PLX

#_06A6A3: JSL GetRandomNumber
#_06A6A7: AND.b #$1F
#_06A6A9: ADC.b #$10
#_06A6AB: STA.w $0DF0,X

#_06A6AE: INC.w $0D80,X

.delay
#_06A6B1: STZ.w $0DC0,X

;===================================================================================================

Cucco_CheckIfLifted:
#_06A6B4: JSR Sprite_CheckIfLifted

#_06A6B7: RTS

;===================================================================================================

Cucco_Bouncing:
#_06A6B8: TXA
#_06A6B9: EOR.b $1A
#_06A6BB: LSR A
#_06A6BC: BCC .continue

#_06A6BE: JSR Cucco_DoMovement_XY
#_06A6C1: BEQ .continue

#_06A6C3: STZ.w $0D80,X

.continue
#_06A6C6: JSR Sprite_Move_Z_Bank06

#_06A6C9: DEC.w $0F80,X
#_06A6CC: DEC.w $0F80,X

#_06A6CF: LDA.w $0F70,X
#_06A6D2: BPL Cucco_AnimateFast

#_06A6D4: STZ.w $0F70,X

#_06A6D7: LDA.w $0DF0,X
#_06A6DA: BNE .delay

#_06A6DC: LDA.b #$20
#_06A6DE: STA.w $0DF0,X

#_06A6E1: STZ.w $0D80,X

#_06A6E4: RTS

.delay
#_06A6E5: LDA.b #$0A
#_06A6E7: STA.w $0F80,X

;===================================================================================================

Cucco_AnimateFast:
#_06A6EA: INC.w $0E80,X

;===================================================================================================

Cucco_AnimateSlow:
#_06A6ED: INC.w $0E80,X
#_06A6F0: INC.w $0E80,X
#_06A6F3: INC.w $0E80,X

#_06A6F6: LDA.w $0E80,X
#_06A6F9: LSR A
#_06A6FA: LSR A
#_06A6FB: LSR A
#_06A6FC: LSR A
#_06A6FD: AND.b #$01
#_06A6FF: STA.w $0DC0,X
#_06A702: BRA Cucco_CheckIfLifted

;===================================================================================================

Cucco_Flee:
#_06A704: JSR Cucco_CheckIfLifted
#_06A707: JSR Cucco_DoMovement_XY

#_06A70A: STZ.w $0F70,X

#_06A70D: TXA
#_06A70E: EOR.b $1A
#_06A710: AND.b #$1F
#_06A712: BNE .dont_update_direction

;===================================================================================================

#Cucco_UpdateFleeSpeed:
#_06A714: LDA.b #$10
#_06A716: JSR Sprite_ProjectSpeedTowardsLink

#_06A719: LDA.b $00
#_06A71B: EOR.b #$FF
#_06A71D: INC A
#_06A71E: STA.w $0D40,X

#_06A721: LDA.b $01
#_06A723: EOR.b #$FF
#_06A725: INC A
#_06A726: STA.w $0D50,X

.dont_update_direction
#_06A729: INC.w $0E80,X

#_06A72C: JSR Cucco_AnimateFast

;===================================================================================================

Cucco_DrawPANIC:
#_06A72F: JSR Sprite_PrepOAMCoord
#_06A732: JSL Sprite_DrawDistressSweat

#_06A736: RTS

;===================================================================================================

Sprite_DrawDistressSweat:
#_06A737: LDA.b $1A
#_06A739: STA.b $06

;===================================================================================================

Sprite_DrawDistress_custom:
#_06A73B: LDA.b #$10
#_06A73D: JSL OAM_AllocateFromRegionA

#_06A741: LDA.b $06
#_06A743: AND.b #$18
#_06A745: BEQ .exit

#_06A747: PHX

#_06A748: LDX.b #$03
#_06A74A: LDY.b #$00

.next_object
#_06A74C: PHX
#_06A74D: PHX

#_06A74E: TXA
#_06A74F: ASL A
#_06A750: TAX

#_06A751: REP #$20

#_06A753: LDA.b $00
#_06A755: CLC
#_06A756: ADC.l CuccoDistress_offset_x,X
#_06A75A: STA.b ($90),Y

#_06A75C: AND.w #$0100
#_06A75F: STA.b $0E

#_06A761: LDA.b $02
#_06A763: CLC
#_06A764: ADC.l CuccoDistress_offset_y,X

#_06A768: INY
#_06A769: STA.b ($90),Y

#_06A76B: CLC
#_06A76C: ADC.w #$0010
#_06A76F: CMP.w #$0100

#_06A772: SEP #$20
#_06A774: BCC .on_screen

#_06A776: LDA.b #$F0
#_06A778: STA.b ($90),Y

.on_screen
#_06A77A: PLX

#_06A77B: LDA.b #$83
#_06A77D: INY
#_06A77E: STA.b ($90),Y

#_06A780: LDA.b #$22
#_06A782: INY
#_06A783: STA.b ($90),Y

#_06A785: PHY

#_06A786: TYA
#_06A787: LSR A
#_06A788: LSR A
#_06A789: TAY

#_06A78A: LDA.b $0F
#_06A78C: STA.b ($92),Y

#_06A78E: PLY
#_06A78F: INY

#_06A790: PLX
#_06A791: DEX
#_06A792: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_06A794: PLX

.exit
#_06A795: RTL

;===================================================================================================

Cucco_Carried:
#_06A796: JSR Cucco_DoMovement_XYZ
#_06A799: BEQ .dont_stop

#_06A79B: JSR Sprite_InvertSpeed_XY
#_06A79E: JSR Sprite_Move_XY_Bank06

#_06A7A1: JSR Sprite_HalveSpeed_XY
#_06A7A4: JSR Sprite_HalveSpeed_XY

#_06A7A7: JSR BawkBawk

.dont_stop
#_06A7AA: DEC.w $0F80,X

#_06A7AD: LDA.w $0F70,X
#_06A7B0: BPL .airborne

#_06A7B2: STZ.w $0F70,X

#_06A7B5: LDA.b #$02
#_06A7B7: STA.w $0D80,X

#_06A7BA: JMP.w Cucco_UpdateFleeSpeed

.airborne
#_06A7BD: JMP.w Cucco_AnimateFast

;===================================================================================================

Cucco_DoMovement_XYZ:
#_06A7C0: JSR Sprite_Move_Z_Bank06

;===================================================================================================

Cucco_DoMovement_XY:
#_06A7C3: JSR Sprite_Move_XY_Bank06
#_06A7C6: JSL Sprite_CheckTileCollision_long

#_06A7CA: RTS

;===================================================================================================

CuccoDistress:
.offset_x
#_06A7CB: db  -3,  -1,   2,   0
#_06A7CF: db   7,   0,  11,   0

.offset_y
#_06A7D3: db  -5,  -1,  -7,  -1
#_06A7D7: db  -7,  -1,  -5,  -1

;===================================================================================================

Cucco_SummonAvenger:
#_06A7DB: TXA
#_06A7DC: EOR.b $1A
#_06A7DE: AND.b #$0F
#_06A7E0: ORA.b $1B
#_06A7E2: BNE EXIT_06A85A

#_06A7E4: LDA.b #!SPRITE_0B
#_06A7E6: LDY.b #$0A
#_06A7E8: JSL Sprite_SpawnDynamically_slot_limited
#_06A7EC: BMI EXIT_06A85A

#_06A7EE: PHX

#_06A7EF: TYX

#_06A7F0: LDA.b #!SFX3_1E
#_06A7F2: JSL SpriteSFX_QueueSFX3WithPan

#_06A7F6: PLX

#_06A7F7: LDA.b #$01
#_06A7F9: STA.w $0DB0,Y

#_06A7FC: PHX

#_06A7FD: JSL GetRandomNumber
#_06A801: STA.b $0F

#_06A803: AND.b #$02
#_06A805: BEQ .enter_vertically

;---------------------------------------------------------------------------------------------------

.enter_horizontally
#_06A807: LDA.b $0F
#_06A809: ADC.b $E2
#_06A80B: STA.w $0D10,Y

#_06A80E: LDA.b $E3
#_06A810: ADC.b #$00
#_06A812: STA.w $0D30,Y

#_06A815: LDA.b $0F
#_06A817: AND.b #$01
#_06A819: TAX

#_06A81A: LDA.w CuccoSwarmSpeed,X
#_06A81D: ADC.b $E8
#_06A81F: STA.w $0D00,Y

#_06A822: LDA.b $E9
#_06A824: ADC.b #$00
#_06A826: STA.w $0D20,Y

#_06A829: BRA .continue

;---------------------------------------------------------------------------------------------------

.enter_vertically
#_06A82B: LDA.b $0F
#_06A82D: ADC.b $E8
#_06A82F: STA.w $0D00,Y

#_06A832: LDA.b $E9
#_06A834: ADC.b #$00
#_06A836: STA.w $0D20,Y

#_06A839: LDA.b $0F
#_06A83B: AND.b #$01
#_06A83D: TAX

#_06A83E: LDA.w CuccoSwarmSpeed,X
#_06A841: ADC.b $E2
#_06A843: STA.w $0D10,Y

#_06A846: LDA.b $E3
#_06A848: ADC.b #$00
#_06A84A: STA.w $0D30,Y

;---------------------------------------------------------------------------------------------------

.continue
#_06A84D: TYX

#_06A84E: LDA.b #$20
#_06A850: JSR Sprite_ApplySpeedTowardsLink

#_06A853: PLX

;===================================================================================================
; BAWK!
;===================================================================================================
BawkBawk:
#_06A854: LDA.b #!SFX2_30
#_06A856: JSL SpriteSFX_QueueSFX2WithPan

;---------------------------------------------------------------------------------------------------

#EXIT_06A85A:
#_06A85A: RTS

;===================================================================================================

Sprite_EE_CastleMantle_bounce:
#_06A85B: JSL Sprite_EE_CastleMantle

#_06A85F: RTS

;===================================================================================================

pool Hoarder_Covered

.anim_step
#_06A860: db $03, $04, $05, $04

.speed_x
#_06A864: db -12,  12,   0,   0

.speed_y
#_06A868: db   0,   0, -12,  12

pool off

;===================================================================================================

pool Hoarder_Frantic

.speed_x
#_06A86C: db -16,  16, -16,  16

.speed_y
#_06A870: db -16, -16,  16,  16

pool off

;===================================================================================================

Sprite_17_Hoarder:
Sprite_3E_Hoarder:
#_06A874: LDA.w $0D80,X
#_06A877: BEQ Hoarder_Covered

#_06A879: JMP.w Hoarder_Frantic

;===================================================================================================

Hoarder_Covered:
#_06A87C: JSR SpriteDraw_Hoarder
#_06A87F: JSR Sprite_CheckIfActive_Bank06

#_06A882: STZ.w $0DC0,X

#_06A885: JSR Sprite_DirectionToFaceLink

#_06A888: LDA.w $0DF0,X
#_06A88B: BNE .flee

#_06A88D: LDA.b $0E
#_06A88F: CLC
#_06A890: ADC.b #$30
#_06A892: CMP.b #$60
#_06A894: BCS .not_close

#_06A896: LDA.b $0F
#_06A898: CLC
#_06A899: ADC.b #$20
#_06A89B: CMP.b #$40
#_06A89D: BCS .not_close

#_06A89F: LDA.b #$20
#_06A8A1: STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

.flee
#_06A8A4: LDA.w .speed_x,Y
#_06A8A7: STA.w $0D50,X

#_06A8AA: LDA.w .speed_y,Y
#_06A8AD: STA.w $0D40,X

#_06A8B0: LDA.w $0E70,X
#_06A8B3: BNE .tile_collision

#_06A8B5: JSR Sprite_Move_XY_Bank06

.tile_collision
#_06A8B8: JSR Sprite_CheckTileCollision
#_06A8BB: JSR Sprite_CheckDamageFromLink

#_06A8BE: INC.w $0E80,X

#_06A8C1: LDA.w $0E80,X
#_06A8C4: LSR A
#_06A8C5: AND.b #$03
#_06A8C7: TAY

#_06A8C8: LDA.w .anim_step,Y
#_06A8CB: STA.w $0DC0,X

.not_close
#_06A8CE: LDA.w $0E20,X
#_06A8D1: CMP.b #!SPRITE_3E
#_06A8D3: BNE .not_rock

#_06A8D5: LDA.l $7EF354
#_06A8D9: CMP.b #$01
#_06A8DB: BCC .weakling

.not_rock
#_06A8DD: JSL Sprite_CheckIfLifted_permissive_long

.weakling
#_06A8E1: LDA.w $0DD0,X
#_06A8E4: CMP.b #$09
#_06A8E6: BEQ .exit

#_06A8E8: LDA.b #$01

#_06A8EA: LDY.w $0E20,X
#_06A8ED: CPY.b #!SPRITE_17
#_06A8EF: BNE .rock_hoarder

#_06A8F1: INC A

.rock_hoarder
#_06A8F2: STA.w $0DB0,X

#_06A8F5: LDA.b #!SPRITE_EC
#_06A8F7: STA.w $0E20,X

#_06A8FA: LSR.w $0F50,X
#_06A8FD: ASL.w $0F50,X

#_06A900: STZ.w $0DC0,X

;---------------------------------------------------------------------------------------------------

#_06A903: LDA.b #!SPRITE_3E
#_06A905: JSL Sprite_SpawnDynamically
#_06A909: BMI .exit

#_06A90B: JSL Sprite_SetSpawnedCoordinates

#_06A90F: LDA.w $0E40,Y
#_06A912: ASL A
#_06A913: LSR A
#_06A914: STA.w $0E40,Y

#_06A917: LDA.b #$80
#_06A919: STA.w $0E10,Y

#_06A91C: LDA.b #$09
#_06A91E: STA.w $0F50,Y
#_06A921: STA.w $0D80,Y

.exit
#_06A924: RTS

;===================================================================================================

Hoarder_Frantic:
#_06A925: JSR SpriteDraw_SingleLarge
#_06A928: JSR Sprite_CheckIfActive_Bank06
#_06A92B: JSR Sprite_CheckIfRecoiling_Bank06
#_06A92E: JSR Sprite_CheckDamageFromLink

#_06A931: LDA.w $0E10,X
#_06A934: BNE .no_damage

#_06A936: JSR Sprite_CheckDamageToLink

.no_damage
#_06A939: INC.w $0E80,X

#_06A93C: LDA.w $0E80,X
#_06A93F: LSR A
#_06A940: AND.b #$03
#_06A942: TAY

#_06A943: LDA.w .anim_step,Y
#_06A946: STA.w $0DC0,X

#_06A949: LDA.w $0F50,X
#_06A94C: AND.b #$BF
#_06A94E: ORA.w .h_flip,Y
#_06A951: STA.w $0F50,X

#_06A954: LDA.w $0E70,X
#_06A957: BEQ .no_tile_collision

#_06A959: LDA.b #$10
#_06A95B: STA.w $0F10,X

#_06A95E: JSL GetRandomNumber
#_06A962: AND.b #$03
#_06A964: TAY

#_06A965: LDA.w Hoarder_Frantic_speed_x,Y
#_06A968: STA.w $0D50,X

#_06A96B: LDA.w Hoarder_Frantic_speed_y,Y
#_06A96E: STA.w $0D40,X

#_06A971: BRA .continue

;---------------------------------------------------------------------------------------------------

.no_tile_collision
#_06A973: JSR Sprite_Move_XY_Bank06

.continue
#_06A976: JSR Sprite_CheckTileCollision

#_06A979: LDA.w $0F10,X
#_06A97C: BNE .dont_turn

#_06A97E: TXA
#_06A97F: EOR.b $1A
#_06A981: AND.b #$1F
#_06A983: BNE .dont_turn

#_06A985: LDA.b #$10
#_06A987: JSR Sprite_ProjectSpeedTowardsLink

#_06A98A: LDA.b $00
#_06A98C: EOR.b #$FF
#_06A98E: INC A
#_06A98F: STA.w $0D40,X

#_06A992: LDA.b $01
#_06A994: EOR.b #$FF
#_06A996: INC A
#_06A997: STA.w $0D50,X

;---------------------------------------------------------------------------------------------------

.dont_turn
#_06A99A: LDA.b $1A
#_06A99C: AND.b #$01
#_06A99E: BNE .exit

#_06A9A0: INC.w $0ED0,X

#_06A9A3: LDA.w $0ED0,X
#_06A9A6: CMP.b #$C0
#_06A9A8: BNE .dont_die

#_06A9AA: LDA.b #$0F
#_06A9AC: JSR Sprite_ScheduleForBreakage_parameterized

#_06A9AF: LDY.b #$01

#_06A9B1: BRA .green_rupee

;---------------------------------------------------------------------------------------------------

.dont_die
#_06A9B3: LDA.w $0ED0,X
#_06A9B6: AND.b #$0F
#_06A9B8: BNE .exit

#_06A9BA: LDY.b #$00

#_06A9BC: LDA.w $0EB0,X
#_06A9BF: CMP.b #$06
#_06A9C1: BNE .green_rupee

#_06A9C3: LDA.b #!SPRITE_DB
#_06A9C5: BRA .spit_rupee

.green_rupee
#_06A9C7: LDA.b #!SPRITE_D9

;---------------------------------------------------------------------------------------------------

.spit_rupee
#_06A9C9: JSL Sprite_SpawnDynamically_slot_limited
#_06A9CD: BMI .exit

#_06A9CF: INC.w $0EB0,X

#_06A9D2: JSL Sprite_SetSpawnedCoordinates

#_06A9D6: LDA.b $00
#_06A9D8: CLC
#_06A9D9: ADC.b #$08
#_06A9DB: STA.w $0D10,Y

#_06A9DE: LDA.b $01
#_06A9E0: ADC.b #$00
#_06A9E2: STA.w $0D30,Y

#_06A9E5: LDA.b #$20
#_06A9E7: STA.w $0F80,Y

#_06A9EA: LDA.b #$10
#_06A9EC: STA.w $0F10,Y

#_06A9EF: PHX

#_06A9F0: TYX

#_06A9F1: LDA.b #$10
#_06A9F3: JSR Sprite_ApplySpeedTowardsLink

#_06A9F6: LDA.b $00
#_06A9F8: EOR.b #$FF
#_06A9FA: STA.w $0D40,X

#_06A9FD: LDA.b $01
#_06A9FF: EOR.b #$FF
#_06AA01: STA.w $0D50,X

#_06AA04: PLX

#_06AA05: LDA.b #!SFX3_30
#_06AA07: JSL SpriteSFX_QueueSFX3WithPan

.exit
#_06AA0B: RTS

;---------------------------------------------------------------------------------------------------

.anim_step
#_06AA0C: db $00, $01, $00, $01

.h_flip
#_06AA10: db $00, $00, $40, $00

;===================================================================================================

Sprite_CheckIfLifted_permissive_long:
#_06AA14: PHB
#_06AA15: PHK
#_06AA16: PLB

#_06AA17: JSR .wrapper

#_06AA1A: PLB

#_06AA1B: RTL

;---------------------------------------------------------------------------------------------------

.wrapper
#_06AA1C: JSR Sprite_CheckIfLifted_permissive

#_06AA1F: RTS

;===================================================================================================

pool SpriteDraw_Hoarder

.offset_y
#_06AA20: dw   0,   0,   0,  -3
#_06AA28: dw   0,  -5,   0,  -6
#_06AA30: dw   0,  -6,   0,  -6

.char
#_06AA38: db $44, $44, $E8, $44
#_06AA3C: db $E8, $44, $E6, $44
#_06AA40: db $E8, $44, $E6, $44

.props
#_06AA44: db $00, $0C, $03, $0C
#_06AA48: db $03, $0C, $03, $0C
#_06AA4C: db $03, $0C, $43, $0C

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Hoarder:
#_06AA50: JSR Sprite_PrepOAMCoord

#_06AA53: LDA.w $0FC6
#_06AA56: CMP.b #$03
#_06AA58: BCS .exit

#_06AA5A: STZ.b $07

#_06AA5C: LDA.w $0E20,X
#_06AA5F: CMP.b #!SPRITE_17
#_06AA61: BNE .rock_hoarder

#_06AA63: LDA.b #$02
#_06AA65: STA.b $07

.rock_hoarder
#_06AA67: LDA.w $0DC0,X
#_06AA6A: ASL A
#_06AA6B: STA.b $06

;---------------------------------------------------------------------------------------------------

#_06AA6D: PHX

#_06AA6E: LDX.b #$01

.next_object
#_06AA70: PHX

#_06AA71: TXA
#_06AA72: CLC
#_06AA73: ADC.b $06
#_06AA75: PHA

#_06AA76: ASL A
#_06AA77: TAX

#_06AA78: REP #$20

#_06AA7A: LDA.b $00
#_06AA7C: STA.b ($90),Y

#_06AA7E: AND.w #$0100
#_06AA81: STA.b $0E

#_06AA83: LDA.b $02
#_06AA85: CLC
#_06AA86: ADC.w .offset_y,X

#_06AA89: INY
#_06AA8A: STA.b ($90),Y

#_06AA8C: CLC
#_06AA8D: ADC.w #$0010
#_06AA90: CMP.w #$0100

#_06AA93: SEP #$20
#_06AA95: BCC .on_screen

#_06AA97: LDA.b #$F0
#_06AA99: STA.b ($90),Y

.on_screen
#_06AA9B: PLX

#_06AA9C: LDA.w .char,X
#_06AA9F: CMP.b #$44
#_06AAA1: BNE .change_char

#_06AAA3: CLC
#_06AAA4: ADC.b $07

.change_char
#_06AAA6: INY
#_06AAA7: STA.b ($90),Y

#_06AAA9: LDA.b $05
#_06AAAB: AND.b #$FE
#_06AAAD: ORA.w .props,X

#_06AAB0: INY
#_06AAB1: STA.b ($90),Y

#_06AAB3: PHY

#_06AAB4: TYA
#_06AAB5: LSR A
#_06AAB6: LSR A
#_06AAB7: TAY

#_06AAB8: LDA.b #$02
#_06AABA: ORA.b $0F
#_06AABC: STA.b ($92),Y

#_06AABE: PLY
#_06AABF: INY

#_06AAC0: PLX
#_06AAC1: DEX
#_06AAC2: BPL .next_object

#_06AAC4: PLX

.exit
#_06AAC5: RTS

;===================================================================================================

pool SpriteDraw_ThrownItem

.char
#_06AAC6: db $42, $44, $46, $00
#_06AACA: db $46, $44, $42, $44
#_06AACE: db $44, $00, $46, $44

.palette
#_06AAD2: db $0C, $0C
#_06AAD4: db $0C, $00
#_06AAD6: db $00, $00

; !HARDCODED oam slots
.oam_main
#_06AAD8: dw $08B0, $08B4, $08B8, $08BC

.oam_small
#_06AAE0: dw $0A4C, $0A4D, $0A4E, $0A4F

pool off

;===================================================================================================

Sprite_EC_ThrownItem:
#_06AAE8: LDA.w $0FC6
#_06AAEB: CMP.b #$03
#_06AAED: BCS .continue

#_06AAEF: LDA.w $0FB3
#_06AAF2: BEQ .dont_use_reserved_slots

#_06AAF4: LDA.w $0F20,X
#_06AAF7: BEQ .dont_use_reserved_slots

#_06AAF9: TXA
#_06AAFA: AND.b #$03
#_06AAFC: ASL A
#_06AAFD: TAY

#_06AAFE: REP #$20

#_06AB00: LDA.w SpriteDraw_ThrownItem_oam_main,Y
#_06AB03: STA.b $90

#_06AB05: LDA.w SpriteDraw_ThrownItem_oam_small,Y
#_06AB08: STA.b $92

#_06AB0A: SEP #$20

.dont_use_reserved_slots
#_06AB0C: LDA.w $0DD0,X
#_06AB0F: STA.w $0BA0,X

#_06AB12: LDA.w $0DB0,X
#_06AB15: CMP.b #$06
#_06AB17: BCC .not_big

#_06AB19: JSR SpriteDraw_ThrownItem_Gigantic
#_06AB1C: BRA .continue

.not_big
#_06AB1E: JSR SpriteDraw_SingleLarge

#_06AB21: PHX

#_06AB22: LDA.b $1B
#_06AB24: CLC
#_06AB25: ADC.w $0FFF
#_06AB28: CMP.b #$02

#_06AB2A: LDA.w $0DB0,X
#_06AB2D: PHA

#_06AB2E: BCC .not_skull_pot

#_06AB30: ADC.b #$05

.not_skull_pot
#_06AB32: TAX

#_06AB33: LDA.w SpriteDraw_ThrownItem_char,X
#_06AB36: LDY.b #$02
#_06AB38: STA.b ($90),Y

#_06AB3A: INY

#_06AB3B: LDA.b ($90),Y
#_06AB3D: AND.b #$F0

#_06AB3F: PLX

#_06AB40: ORA.w SpriteDraw_ThrownItem_palette,X
#_06AB43: STA.b ($90),Y

#_06AB45: PLX

#_06AB46: AND.b #$0F
#_06AB48: STA.b $00

#_06AB4A: LDA.w $0F50,X
#_06AB4D: AND.b #$C0
#_06AB4F: ORA.b $00
#_06AB51: STA.w $0F50,X

;---------------------------------------------------------------------------------------------------

.continue
#_06AB54: LDA.w $0DD0,X
#_06AB57: CMP.b #$09
#_06AB59: BNE .exit

#_06AB5B: JSR Sprite_CheckIfActive_Bank06
#_06AB5E: JSR ThrowableScenery_InteractWithSpritesAndTiles

.exit
#_06AB61: RTS

;===================================================================================================

pool SpriteDraw_ThrownItem_Gigantic

.offset_x
#_06AB62: dw  -8,   8,  -8,   8

.offset_y
#_06AB6A: dw -14, -14,   2,   2

.flip
#_06AB72: db $00, $40, $80, $C0

.offset_shadow
#_06AB76: dw  -6,   0,   6,  12

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_ThrownItem_Gigantic:
#_06AB7E: LDY.w $0DB0,X

#_06AB81: LDA.w .offset_shadow,Y
#_06AB84: STA.w $0F50,X

#_06AB87: JSR Sprite_PrepOAMCoord

#_06AB8A: PHX

#_06AB8B: LDX.b #$03

.next_object
#_06AB8D: PHX

#_06AB8E: TXA
#_06AB8F: ASL A
#_06AB90: TAX

#_06AB91: REP #$20

#_06AB93: LDA.b $00
#_06AB95: CLC
#_06AB96: ADC.w .offset_x,X
#_06AB99: STA.b ($90),Y

#_06AB9B: AND.w #$0100
#_06AB9E: STA.b $0E

#_06ABA0: LDA.b $02
#_06ABA2: CLC
#_06ABA3: ADC.w .offset_y,X

#_06ABA6: INY
#_06ABA7: STA.b ($90),Y

#_06ABA9: CLC
#_06ABAA: ADC.w #$0010
#_06ABAD: CMP.w #$0100

#_06ABB0: SEP #$20
#_06ABB2: BCC .on_screen

#_06ABB4: LDA.b #$F0
#_06ABB6: STA.b ($90),Y

.on_screen
#_06ABB8: PLX

#_06ABB9: LDA.b #$4A
#_06ABBB: INY
#_06ABBC: STA.b ($90),Y

#_06ABBE: LDA.w .flip,X
#_06ABC1: INY
#_06ABC2: ORA.b $05
#_06ABC4: STA.b ($90),Y

#_06ABC6: PHY

#_06ABC7: TYA
#_06ABC8: LSR A
#_06ABC9: LSR A
#_06ABCA: TAY

#_06ABCB: LDA.b #$02
#_06ABCD: ORA.b $0F
#_06ABCF: STA.b ($92),Y

#_06ABD1: PLY
#_06ABD2: INY

#_06ABD3: DEX
#_06ABD4: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_06ABD6: PLX

#_06ABD7: LDA.b #$0C
#_06ABD9: JSL OAM_AllocateFromRegionB

#_06ABDD: LDY.b #$00

#_06ABDF: LDA.w $0D00,X
#_06ABE2: SEC
#_06ABE3: SBC.b $E8
#_06ABE5: STA.b $02

#_06ABE7: LDA.w $0D20,X
#_06ABEA: SBC.b $E9
#_06ABEC: STA.b $03

#_06ABEE: PHX

#_06ABEF: LDX.b #$02

.next_shadow
#_06ABF1: PHX

#_06ABF2: TXA
#_06ABF3: ASL A
#_06ABF4: TAX

#_06ABF5: REP #$20

#_06ABF7: LDA.b $00
#_06ABF9: CLC
#_06ABFA: ADC.w .offset_shadow,X
#_06ABFD: STA.b ($90),Y

#_06ABFF: AND.w #$0100
#_06AC02: STA.b $0E

#_06AC04: LDA.b $02
#_06AC06: CLC
#_06AC07: ADC.w #$000C

#_06AC0A: INY
#_06AC0B: STA.b ($90),Y

#_06AC0D: CLC
#_06AC0E: ADC.w #$0010
#_06AC11: CMP.w #$0100

#_06AC14: SEP #$20
#_06AC16: BCC .shadow_on_screen

#_06AC18: LDA.b #$F0
#_06AC1A: STA.b ($90),Y

.shadow_on_screen
#_06AC1C: PLX

#_06AC1D: LDA.b #$6C
#_06AC1F: INY
#_06AC20: STA.b ($90),Y

#_06AC22: LDA.b #$24
#_06AC24: INY
#_06AC25: STA.b ($90),Y

#_06AC27: PHY

#_06AC28: TYA
#_06AC29: LSR A
#_06AC2A: LSR A
#_06AC2B: TAY

#_06AC2C: LDA.b #$02
#_06AC2E: ORA.b $0F
#_06AC30: STA.b ($92),Y

#_06AC32: PLY
#_06AC33: INY

#_06AC34: DEX
#_06AC35: BPL .next_shadow

;---------------------------------------------------------------------------------------------------

#_06AC37: PLX

#_06AC38: RTS

;===================================================================================================

pool ThrowableScenery_ScatterIntoDebris

.offset_x_low
#_06AC39: db -8,  8, -8,  8

.offset_x_high
#_06AC3D: db -1,  0, -1,  0

.offset_y_low
#_06AC41: db -8, -8,  8,  8

.offset_y_high
#_06AC45: db -1, -1,  0,  0

pool off

;---------------------------------------------------------------------------------------------------

ThrowableScenery_ScatterIntoDebris:
#_06AC49: LDA.w $0DB0,X
#_06AC4C: BMI ThrowableScenery_ScatterIntoSmallerDebris

#_06AC4E: CMP.b #$06
#_06AC50: BCC ThrowableScenery_ScatterIntoSmallerDebris

#_06AC52: LDA.b #$03
#_06AC54: STA.b $0D

.next_particle
#_06AC56: LDA.b #!SPRITE_EC
#_06AC58: JSL Sprite_SpawnDynamically
#_06AC5C: BMI .no_space

#_06AC5E: LDA.w $0F70,X
#_06AC61: STA.w $0F70,Y

#_06AC64: PHX

#_06AC65: LDX.b $0D

#_06AC67: LDA.b $00
#_06AC69: CLC
#_06AC6A: ADC.w .offset_x_low,X
#_06AC6D: STA.w $0D10,Y

#_06AC70: LDA.b $01
#_06AC72: ADC.w .offset_x_high,X
#_06AC75: STA.w $0D30,Y

#_06AC78: LDA.b $02
#_06AC7A: CLC
#_06AC7B: ADC.w .offset_y_low,X
#_06AC7E: STA.w $0D00,Y

#_06AC81: LDA.b $03
#_06AC83: ADC.w .offset_y_high,X
#_06AC86: STA.w $0D20,Y

#_06AC89: LDA.b #$01
#_06AC8B: STA.w $0DB0,Y

#_06AC8E: TYX
#_06AC8F: JSR Sprite_ScheduleForBreakage

#_06AC92: PLX

#_06AC93: LDA.w $0DB0,X
#_06AC96: CMP.b #$07

#_06AC98: LDA.b #$00
#_06AC9A: BCS .default_palette

#_06AC9C: LDA.b #$0C

.default_palette
#_06AC9E: STA.w $0F50,Y

.no_space
#_06ACA1: DEC.b $0D
#_06ACA3: BPL .next_particle

#_06ACA5: STZ.w $0DD0,X

#_06ACA8: RTS

;===================================================================================================

ThrowableScenery_ScatterIntoSmallerDebris:
#_06ACA9: STZ.w $0DD0,X

#_06ACAC: JSR Sprite_PrepOAMCoord

#_06ACAF: PHX

#_06ACB0: TXY
#_06ACB1: LDX.b #$1D

.next_slot
#_06ACB3: LDA.l $7FF800,X
#_06ACB7: BEQ .empty_slot

#_06ACB9: DEX
#_06ACBA: BPL .next_slot

#_06ACBC: INX

.empty_slot
#_06ACBD: LDA.b #!GARNISH_16
#_06ACBF: STA.l $7FF800,X
#_06ACC3: STA.w $0FB4

#_06ACC6: LDA.w $0D10,Y
#_06ACC9: STA.l $7FF83C,X

#_06ACCD: LDA.w $0D30,Y
#_06ACD0: STA.l $7FF878,X

#_06ACD4: LDA.w $0D00,Y
#_06ACD7: SEC
#_06ACD8: SBC.w $0F70,Y

#_06ACDB: PHP

#_06ACDC: CLC
#_06ACDD: ADC.b #$10
#_06ACDF: STA.l $7FF81E,X

#_06ACE3: LDA.w $0D20,Y
#_06ACE6: ADC.b #$00

#_06ACE8: PLP
#_06ACE9: SBC.b #$00
#_06ACEB: STA.l $7FF85A,X

#_06ACEF: LDA.b $05
#_06ACF1: STA.l $7FF9FE,X

#_06ACF5: LDA.w $0F20,Y
#_06ACF8: STA.l $7FF968,X

#_06ACFC: LDA.b #$1F
#_06ACFE: STA.l $7FF90E,X

#_06AD02: LDA.w $0DB0,Y
#_06AD05: STA.l $7FF92C,X

#_06AD09: PLX

#_06AD0A: RTS

;===================================================================================================

ApplyRumbleToSprites:
#_06AD0B: LDY.b #$0F

.next_sprite
#_06AD0D: LDA.w $0CAA,Y
#_06AD10: AND.b #$02
#_06AD12: BEQ .skip

#_06AD14: LDA.w $0E90,Y
#_06AD17: BEQ .skip

#_06AD19: LDA.w $0FC6
#_06AD1C: CMP.b #$0E
#_06AD1E: BEQ .collision_guaranteed

#_06AD20: PHX

#_06AD21: TYX
#_06AD22: JSR Sprite_SetupHitBox

#_06AD25: PLX

#_06AD26: JSR CheckIfHitBoxesOverlap
#_06AD29: BCC .skip

.collision_guaranteed
#_06AD2B: LDA.b #$00
#_06AD2D: STA.w $0E90,Y

#_06AD30: LDA.b #!SFX3_30
#_06AD32: STA.w $012F

#_06AD35: LDA.b #$30
#_06AD37: STA.w $0F80,Y

#_06AD3A: LDA.b #$10
#_06AD3C: STA.w $0D50,Y

#_06AD3F: LDA.b #$30
#_06AD41: STA.w $0EE0,Y

#_06AD44: LDA.b #$FF
#_06AD46: STA.w $0B58,Y

#_06AD49: LDA.w $0E20,Y ; hearts in trees turn into bombs
#_06AD4C: CMP.b #!SPRITE_D8
#_06AD4E: BNE .skip

#_06AD50: JSL Sprite_TransmuteToBomb

.skip
#_06AD54: DEY
#_06AD55: BPL .next_sprite

#_06AD57: RTS

;===================================================================================================

Sprite_TransmuteToBomb:
#_06AD58: LDA.b #!SPRITE_4A
#_06AD5A: STA.w $0E20,Y

#_06AD5D: LDA.b #$01
#_06AD5F: STA.w $0DB0,Y

#_06AD62: LDA.b #$FF
#_06AD64: STA.w $0E00,Y

#_06AD67: LDA.b #$18
#_06AD69: STA.w $0E60,Y

#_06AD6C: LDA.b #$08
#_06AD6E: STA.w $0F50,Y

#_06AD71: LDA.b #$00
#_06AD73: STA.w $0E50,Y

#_06AD76: RTL

;===================================================================================================

Sprite_28_DarkWorldHintNPC:
#_06AD77: JSR SpriteDraw_DarkWorldHintNPC
#_06AD7A: JSR Sprite_CheckIfActive_Bank06
#_06AD7D: JSL Sprite_BehaveAsBarrier

#_06AD81: LDA.w $0DF0,X
#_06AD84: BNE .delay

#_06AD86: LDA.b $1A

#_06AD88: LSR A
#_06AD89: LSR A
#_06AD8A: LSR A
#_06AD8B: LSR A

#_06AD8C: AND.b #$01
#_06AD8E: STA.w $0DC0,X

.delay
#_06AD91: LDA.w $0E80,X
#_06AD94: JSL JumpTableLocal
#_06AD98: dw DarkWorldHintNPC_Bird
#_06AD9A: dw HamburgerHelper
#_06AD9C: dw DarkWorldHintNPC_Octopus
#_06AD9E: dw Broccoli
#_06ADA0: dw Watto

;===================================================================================================

DarkWorldHintNPC_Bird:
#_06ADA2: LDA.w $0D80,X
#_06ADA5: JSL JumpTableLocal
#_06ADA9: dw DarkWorldHintNPC_Idle
#_06ADAB: dw HintBird_TellStory
#_06ADAD: dw DarkWorldHintNPC_RestoreHealth

;===================================================================================================

DarkWorldHintNPC_Idle:
; Message 00FC
#_06ADAF: LDA.b #$FC
#_06ADB1: LDY.b #$00
#_06ADB3: JSL Sprite_ShowSolicitedMessage
#_06ADB7: BCC .exit

#_06ADB9: INC.w $0D80,X

.exit
#_06ADBC: RTS

;===================================================================================================

DarkWorldHintNPC_RestoreHealth:
#_06ADBD: LDA.b #$A0
#_06ADBF: STA.l $7EF372

#_06ADC3: STZ.w $0D80,X

#_06ADC6: RTS

;===================================================================================================

HintBird_TellStory:
#_06ADC7: LDA.w $1CE8
#_06ADCA: BNE .rejected

#_06ADCC: JSR DarkWorldHintNPC_HandlePayment
#_06ADCF: BCC .rejected

; Message 00FD
#_06ADD1: LDA.b #$FD
#_06ADD3: LDY.b #$00

;---------------------------------------------------------------------------------------------------

#DarkWorldHintNPC_TellStory:
#_06ADD5: JSL Sprite_ShowMessageUnconditional

#_06ADD9: INC.w $0D80,X

#_06ADDC: RTS

;---------------------------------------------------------------------------------------------------

.rejected
; Message 00FE
#_06ADDD: LDA.b #$FE
#_06ADDF: LDY.b #$00
#_06ADE1: JSL Sprite_ShowMessageUnconditional

#_06ADE5: STZ.w $0D80,X

#_06ADE8: RTS

;===================================================================================================

HamburgerHelper:
#_06ADE9: LDA.w $0D80,X
#_06ADEC: JSL JumpTableLocal
#_06ADF0: dw DarkWorldHintNPC_Idle
#_06ADF2: dw HamburgerHelper_TellStory
#_06ADF4: dw DarkWorldHintNPC_RestoreHealth

;===================================================================================================

HamburgerHelper_TellStory:
#_06ADF6: LDA.w $1CE8
#_06ADF9: BNE .rejected

#_06ADFB: JSR DarkWorldHintNPC_HandlePayment
#_06ADFE: BCC .rejected

; Message 00FF
#_06AE00: LDA.b #$FF
#_06AE02: LDY.b #$00
#_06AE04: BRA DarkWorldHintNPC_TellStory

.rejected
; Message 00FE
#_06AE06: LDA.b #$FE
#_06AE08: LDY.b #$00
#_06AE0A: JSL Sprite_ShowMessageUnconditional

#_06AE0E: STZ.w $0D80,X

#_06AE11: RTS

;===================================================================================================

DarkWorldHintNPC_Octopus:
#_06AE12: LDA.w $0D80,X
#_06AE15: JSL JumpTableLocal
#_06AE19: dw DarkWorldHintNPC_Idle
#_06AE1B: dw HintOctopus_TellStory
#_06AE1D: dw DarkWorldHintNPC_RestoreHealth

;===================================================================================================

HintOctopus_TellStory:
#_06AE1F: LDA.w $1CE8
#_06AE22: BNE .rejected

#_06AE24: JSR DarkWorldHintNPC_HandlePayment
#_06AE27: BCC .rejected

; Message 0100
#_06AE29: LDA.b #$00
#_06AE2B: LDY.b #$01
#_06AE2D: JMP.w DarkWorldHintNPC_TellStory

;---------------------------------------------------------------------------------------------------

.rejected
; Message 00FE
#_06AE30: LDA.b #$FE
#_06AE32: LDY.b #$00
#_06AE34: JSL Sprite_ShowMessageUnconditional

#_06AE38: STZ.w $0D80,X

#_06AE3B: RTS

;===================================================================================================

Broccoli:
#_06AE3C: LDA.w $0DF0,X
#_06AE3F: BNE .continue

#_06AE41: LDA.b $1A
#_06AE43: AND.b #$3F
#_06AE45: BNE .dont_flip

#_06AE47: LDA.w $0F50,X
#_06AE4A: EOR.b #$40
#_06AE4C: STA.w $0F50,X

.dont_flip
#_06AE4F: JSL GetRandomNumber
#_06AE53: BNE .continue

#_06AE55: LDA.b #$20
#_06AE57: STA.w $0DF0,X

.continue
; Message 0147
#_06AE5A: LDA.b #$47
#_06AE5C: LDY.b #$01
#_06AE5E: JSL Sprite_ShowSolicitedMessage

#_06AE62: RTS

;===================================================================================================

Watto:
#_06AE63: LDA.b $1A
#_06AE65: LSR A
#_06AE66: AND.b #$01
#_06AE68: STA.w $0DC0,X

#_06AE6B: JSR Sprite_Move_Z_Bank06

#_06AE6E: LDA.w $0F70,X
#_06AE71: BPL .air_born

#_06AE73: STZ.w $0F70,X

.air_born
#_06AE76: LDA.w $0F70,X
#_06AE79: CMP.b #$04
#_06AE7B: ROL A
#_06AE7C: AND.b #$01
#_06AE7E: TAY

#_06AE7F: LDA.w $0F80,X
#_06AE82: CLC
#_06AE83: ADC.w PositiveAndNegativeOne,Y
#_06AE86: STA.w $0F80,X

#_06AE89: LDA.w $0D80,X
#_06AE8C: JSL JumpTableLocal
#_06AE90: dw DarkWorldHintNPC_Idle
#_06AE92: dw Watto_TellStory
#_06AE94: dw DarkWorldHintNPC_RestoreHealth

;===================================================================================================

Watto_TellStory:
#_06AE96: LDA.w $1CE8
#_06AE99: BNE .rejected

#_06AE9B: JSR DarkWorldHintNPC_HandlePayment
#_06AE9E: BCC .rejected

; Message 0101
#_06AEA0: LDA.b #$01
#_06AEA2: LDY.b #$01
#_06AEA4: JMP.w DarkWorldHintNPC_TellStory

.rejected
; Message 00FE
#_06AEA7: LDA.b #$FE
#_06AEA9: LDY.b #$00
#_06AEAB: JSL Sprite_ShowMessageUnconditional

#_06AEAF: STZ.w $0D80,X

#_06AEB2: RTS

;===================================================================================================

DarkWorldHintNPC_HandlePayment:
#_06AEB3: REP #$20

; 20 rupees
#_06AEB5: LDA.l $7EF360
#_06AEB9: CMP.w #20
#_06AEBC: BCC .too_poor

; take 20 rupees
#_06AEBE: LDA.l $7EF360
#_06AEC2: SEC
#_06AEC3: SBC.w #20
#_06AEC6: STA.l $7EF360

; SEP #$31 next time
#_06AECA: SEP #$30
#_06AECC: SEC

#_06AECD: RTS

;---------------------------------------------------------------------------------------------------

.too_poor
#_06AECE: SEP #$30
#_06AED0: CLC ; The carry was already clear if we got here.

#_06AED1: RTS

;===================================================================================================

pool SpriteDraw_DarkWorldHintNPC

.oam_groups
; group00
#_06AED2: dw   0,   0 : db $4A, $0A, $00, $02
#_06AEDA: dw   0,   0 : db $6E, $4A, $00, $02

; group01
#_06AEE2: dw   0,   0 : db $24, $0A, $00, $02
#_06AEEA: dw   0,   0 : db $24, $4A, $00, $02

; group02
#_06AEF2: dw   0,   0 : db $04, $08, $00, $02
#_06AEFA: dw   0,   0 : db $04, $48, $00, $02

; group03
#_06AF02: dw   0,   0 : db $6A, $0A, $00, $02
#_06AF0A: dw   0,   0 : db $6C, $0A, $00, $02

; group04
#_06AF12: dw   0,   0 : db $0E, $0A, $00, $02
#_06AF1A: dw   0,   0 : db $2E, $0A, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_DarkWorldHintNPC:
#_06AF22: LDA.w $0E80,X
#_06AF25: ASL A

#_06AF26: ADC.w $0DC0,X

#_06AF29: ASL A
#_06AF2A: ASL A
#_06AF2B: ASL A

#_06AF2C: ADC.b #.oam_groups>>0
#_06AF2E: STA.b $08

#_06AF30: LDA.b #.oam_groups>>8
#_06AF32: ADC.b #$00
#_06AF34: STA.b $09

#_06AF36: LDA.b #$01
#_06AF38: STA.b $06
#_06AF3A: STZ.b $07

#_06AF3C: JSL Sprite_DrawMultiple_player_deferred

#_06AF40: JMP.w SpriteDraw_Shadow

;===================================================================================================

Sprite_2E_FluteKid:
#_06AF43: LDA.w $0EB0,X
#_06AF46: JSL JumpTableLocal
#_06AF4A: dw FluteKid_TheKid
#_06AF4C: dw FluteKid_Quaver

;===================================================================================================

FluteKid_TheKid:
#_06AF4E: LDA.w $0E80,X
#_06AF51: JSL JumpTableLocal
#_06AF55: dw FluteKid_Human
#_06AF57: dw FluteKid_Stumpy

;===================================================================================================

FluteKid_Human:
#_06AF59: LDA.w $0D80,X
#_06AF5C: CMP.b #$03
#_06AF5E: BEQ .invisible

#_06AF60: JSL SpriteDraw_FluteKid

#_06AF64: LDA.b $01
#_06AF66: ORA.b $03
#_06AF68: STA.w $0DB0,X

.invisible
#_06AF6B: JSR Sprite_CheckIfActive_Bank06

#_06AF6E: LDA.w $0DB0,X
#_06AF71: BNE .no_tune

#_06AF73: LDA.w $0DA0,X
#_06AF76: BNE .no_tune

#_06AF78: LDA.b #!SFX1_0B
#_06AF7A: STA.w $012D
#_06AF7D: STA.w $0DA0,X

.no_tune
#_06AF80: LDA.b $1A
#_06AF82: LSR A ; /32
#_06AF83: LSR A
#_06AF84: LSR A
#_06AF85: LSR A
#_06AF86: LSR A
#_06AF87: AND.b #$01
#_06AF89: STA.w $0DC0,X

#_06AF8C: LDA.w $0D80,X
#_06AF8F: JSL JumpTableLocal
#_06AF93: dw FluteKid_Chillin
#_06AF95: dw FluteKid_AboutToDisappear
#_06AF97: dw FluteKid_PhaseOut
#_06AF99: dw FluteKid_HeDisappeared

;===================================================================================================

FluteKid_Chillin:
#_06AF9B: LDA.l $7EF34C
#_06AF9F: CMP.b #$02
#_06AFA1: BCS .flute_owned

#_06AFA3: JSR FluteKid_CheckIfInRange
#_06AFA6: BCS .not_close

.flute_owned
#_06AFA8: INC.w $0D80,X
#_06AFAB: INC.w $0DE0,X

#_06AFAE: INC.w $0FDD

#_06AFB1: LDA.b #$B0
#_06AFB3: STA.w $0DF0,X

#_06AFB6: LDA.b #$01
#_06AFB8: STA.w $02E4

.not_close
#_06AFBB: LDA.w $0DF0,X
#_06AFBE: BNE .exit

#_06AFC0: LDA.b #$19
#_06AFC2: STA.w $0DF0,X

#_06AFC5: JSR FluteKid_SpawnQuaver

.exit
#_06AFC8: RTS

;===================================================================================================

FluteKid_AboutToDisappear:
#_06AFC9: LDA.b #$01
#_06AFCB: STA.w $02E4

#_06AFCE: LDA.w $0DF0,X
#_06AFD1: BNE .exit

#_06AFD3: LDA.b #$02
#_06AFD5: STA.b $1D

#_06AFD7: LDA.b #$30
#_06AFD9: STA.b $9A

#_06AFDB: LDA.b #$00
#_06AFDD: STA.l $7EC007
#_06AFE1: STA.l $7EC009

#_06AFE5: PHX
#_06AFE6: JSL Palette_AssertTranslucencySwap
#_06AFEA: PLX

#_06AFEB: INC.w $0D80,X

#_06AFEE: LDA.b #!SFX1_80_FADE
#_06AFF0: STA.w $012D

#_06AFF3: LDA.b #!SFX2_33
#_06AFF5: JSL SpriteSFX_QueueSFX2WithPan

.exit
#_06AFF9: RTS

;===================================================================================================

FluteKid_PhaseOut:
#_06AFFA: LDA.b $1A
#_06AFFC: AND.b #$0F
#_06AFFE: BNE .exit

#_06B000: PHX
#_06B001: JSL PaletteFilter_SP5F
#_06B005: PLX

#_06B006: LDA.l $7EC007
#_06B00A: BNE .exit

#_06B00C: INC.w $0D80,X

.exit
#_06B00F: RTS

;===================================================================================================

FluteKid_HeDisappeared:
#_06B010: PHX

#_06B011: JSL PaletteFilter_RestoreSP5F
#_06B015: JSL Palette_RevertTranslucencySwap

#_06B019: PLX

#_06B01A: STZ.w $0DD0,X
#_06B01D: STZ.w $02E4

#_06B020: RTS

;===================================================================================================

Stumpify_anim_step:
#_06B021: db $01, $01, $01, $01
#_06B025: db $02, $01, $02, $01
#_06B029: db $02, $01, $02, $03
#_06B02D: db $02, $03, $02, $03
#_06B031: db $02, $03, $02, $FF

;===================================================================================================

StumpifyTimer:
#_06B035: db $FF, $FF, $FF,  16
#_06B039: db   2,  12,   6,   8
#_06B03D: db  10,   4,  14,   2
#_06B041: db  10,   6,   6,  10
#_06B045: db   2,  14,   2

;===================================================================================================

FluteKid_Stumpy:
#_06B048: JSL SpriteDraw_Stumpy
#_06B04C: JSR Sprite_CheckIfActive_Bank06

#_06B04F: LDA.w $0D80,X
#_06B052: JSL JumpTableLocal
#_06B056: dw Stumpy_Initialize
#_06B058: dw Stumpy_WaitForConvo
#_06B05A: dw Stumpy_GiveShovel
#_06B05C: dw Stumpy_WaitForMusic
#_06B05E: dw Stumpy_BecomeTree
#_06B060: dw Stumpy_AmTree

;===================================================================================================

Stumpy_Initialize:
#_06B062: LDA.l $7EF34C
#_06B066: AND.b #$03
#_06B068: JSL JumpTableLocal
#_06B06C: dw Stumpy_Supplicate
#_06B06E: dw Stumpy_GetMeMyDamnFlute
#_06B070: dw Stumpy_ThanksButYouKeepIt
#_06B072: dw Stumpy_SorryButAmTree

;===================================================================================================

Stumpy_Supplicate:
; Message 00E3
#_06B074: LDA.b #$E3
#_06B076: LDY.b #$00
#_06B078: JSL Sprite_ShowSolicitedMessage
#_06B07C: BCC .exit

#_06B07E: INC.w $0D80,X

.exit
#_06B081: RTS

;===================================================================================================

Stumpy_GetMeMyDamnFlute:
; Message 00E6
#_06B082: LDA.b #$E6
#_06B084: LDY.b #$00
#_06B086: JSL Sprite_ShowSolicitedMessage

#_06B08A: RTS

;===================================================================================================

Stumpy_ThanksButYouKeepIt:
#_06B08B: LDA.b #$01
#_06B08D: STA.w $0DC0,X

; Message 00E7
#_06B090: LDA.b #$E7
#_06B092: LDY.b #$00
#_06B094: JSL Sprite_ShowSolicitedMessage
#_06B098: BCC .exit

#_06B09A: LDA.b #$03
#_06B09C: STA.w $0D80,X

.exit
#_06B09F: RTS

;===================================================================================================

Stumpy_SorryButAmTree:
#_06B0A0: LDA.b #$03
#_06B0A2: STA.w $0DC0,X

#_06B0A5: RTS

;===================================================================================================

Stumpy_WaitForConvo:
#_06B0A6: LDA.w $1CE8
#_06B0A9: BNE .rejected

; Message 00E4
#_06B0AB: LDA.b #$E4
#_06B0AD: LDY.b #$00
#_06B0AF: JSL Sprite_ShowMessageUnconditional

#_06B0B3: INC.w $0D80,X

#_06B0B6: RTS

.rejected
; Message 00E5
#_06B0B7: LDA.b #$E5
#_06B0B9: LDY.b #$00
#_06B0BB: JSL Sprite_ShowMessageUnconditional

#_06B0BF: STZ.w $0D80,X

#_06B0C2: RTS

;===================================================================================================

Stumpy_GiveShovel:
#_06B0C3: STZ.w $02E9

#_06B0C6: LDY.b #!ITEMGET_13

#_06B0C8: PHX

#_06B0C9: JSL Link_ReceiveItem

#_06B0CD: PLX

#_06B0CE: STZ.w $0D80,X

#_06B0D1: RTS

;===================================================================================================

Stumpy_WaitForMusic:
#_06B0D2: LDA.w $0202
#_06B0D5: CMP.b #$0D
#_06B0D7: BNE .exit

#_06B0D9: BIT.b $F0
#_06B0DB: BVC .exit

#_06B0DD: INC.w $0D80,X

#_06B0E0: LDA.b #!SONG_F2_HALFVOL
#_06B0E2: STA.w $012C

#_06B0E5: STZ.w $012E

#_06B0E8: LDA.b #!SFX1_17
#_06B0EA: STA.w $012D

#_06B0ED: INC.w $02E4

.exit
#_06B0F0: RTS

;===================================================================================================

Stumpy_BecomeTree:
#_06B0F1: LDA.w $0DF0,X
#_06B0F4: BNE .exit

#_06B0F6: LDA.w $0D90,X
#_06B0F9: CMP.b #$03
#_06B0FB: BCC .skip_sfx

#_06B0FD: LDA.b #!SFX2_33
#_06B0FF: JSL SpriteSFX_QueueSFX2WithPan

.skip_sfx
#_06B103: LDA.w $0D90,X
#_06B106: TAY

#_06B107: INC A
#_06B108: STA.w $0D90,X

#_06B10B: LDA.w Stumpify_anim_step,Y
#_06B10E: BMI .turn_it_up_to_11

#_06B110: STA.w $0DC0,X

#_06B113: LDA.w StumpifyTimer,Y
#_06B116: STA.w $0DF0,X

.exit
#_06B119: RTS

.turn_it_up_to_11
#_06B11A: LDA.b #!SONG_F3_MAXVOL
#_06B11C: STA.w $012C

#_06B11F: INC.w $0D80,X

#_06B122: STZ.w $02E4

#_06B125: RTS

;===================================================================================================

Stumpy_AmTree:
#_06B126: LDA.b #$03
#_06B128: STA.w $0DC0,X

#_06B12B: LDA.l $7EF3C9
#_06B12F: ORA.b #$08
#_06B131: STA.l $7EF3C9

#_06B135: RTS

;===================================================================================================

FluteKid_CheckIfInRange:
#_06B136: LDA.w $0D10,X
#_06B139: STA.b $00

#_06B13B: LDA.w $0D30,X
#_06B13E: STA.b $01

#_06B140: LDA.w $0D00,X
#_06B143: STA.b $02

#_06B145: LDA.w $0D20,X
#_06B148: STA.b $03

#_06B14A: REP #$30

#_06B14C: LDA.b $02
#_06B14E: SEC
#_06B14F: SBC.w #$0010
#_06B152: STA.b $02

#_06B154: LDA.b $22
#_06B156: SBC.b $00
#_06B158: BPL .positive_x

#_06B15A: EOR.w #$FFFF

.positive_x
#_06B15D: STA.b $00

#_06B15F: LDA.b $20
#_06B161: SBC.b $02
#_06B163: BPL .positive_y

#_06B165: EOR.w #$FFFF

.positive_y
#_06B168: STA.b $02

#_06B16A: LDA.b $00
#_06B16C: CMP.w #$0030
#_06B16F: BCS .exit

#_06B171: LDA.b $02
#_06B173: CMP.w #$0030

.exit
#_06B176: SEP #$30

#_06B178: RTS

;===================================================================================================

pool FluteKid_Quaver

.speed_x
#_06B179: db   1,  -1

pool off

;---------------------------------------------------------------------------------------------------

FluteKid_Quaver:
#_06B17B: JSR SpriteDraw_SingleSmall
#_06B17E: JSR Sprite_CheckIfActive_Bank06
#_06B181: JSR Sprite_Move_XY_Bank06
#_06B184: JSR Sprite_Move_Z_Bank06

#_06B187: LDA.w $0DF0,X
#_06B18A: BNE .tenuto

#_06B18C: STZ.w $0DD0,X

.tenuto
#_06B18F: LDA.b $1A
#_06B191: AND.b #$01
#_06B193: BNE .exit

#_06B195: LDA.b $1A

#_06B197: LSR A
#_06B198: LSR A
#_06B199: LSR A
#_06B19A: LSR A
#_06B19B: LSR A

#_06B19C: EOR.w $0FA0
#_06B19F: AND.b #$01
#_06B1A1: TAY

#_06B1A2: LDA.w $0D50,X
#_06B1A5: CLC
#_06B1A6: ADC.w .speed_x,Y
#_06B1A9: STA.w $0D50,X

.exit
#_06B1AC: RTS

;===================================================================================================

FluteKid_SpawnQuaver:
#_06B1AD: LDA.b #!SPRITE_2E
#_06B1AF: JSL Sprite_SpawnDynamically
#_06B1B3: BMI .no_room

#_06B1B5: LDA.b $00
#_06B1B7: CLC
#_06B1B8: ADC.b #$04
#_06B1BA: STA.w $0D10,Y

#_06B1BD: LDA.b $01
#_06B1BF: ADC.b #$00
#_06B1C1: STA.w $0D30,Y

#_06B1C4: LDA.b $02
#_06B1C6: SEC
#_06B1C7: SBC.b #$04
#_06B1C9: STA.w $0D00,Y

#_06B1CC: LDA.b $03
#_06B1CE: SBC.b #$00
#_06B1D0: STA.w $0D20,Y

#_06B1D3: LDA.b #$01
#_06B1D5: STA.w $0EB0,Y

#_06B1D8: LDA.b #$08
#_06B1DA: STA.w $0F80,Y

#_06B1DD: LDA.b #$60
#_06B1DF: STA.w $0DF0,Y
#_06B1E2: STA.w $0BA0,Y

.no_room
#_06B1E5: RTS

;===================================================================================================

Smithy_anim_step:
#_06B1E6: db $00, $01, $02, $03
#_06B1EA: db $03, $02, $01, $00

SmithyAnimTimer:
#_06B1EE: db  24,   4,   1,  16
#_06B1F2: db  16,   5,  10,  16

;===================================================================================================

Sprite_1A_Smithy:
#_06B1F6: LDA.w $0E80,X
#_06B1F9: JSL JumpTableLocal
#_06B1FD: dw Smithy_Main
#_06B1FF: dw Smithy_Spark
#_06B201: dw Smithy_Frog
#_06B203: dw Smithy_Homecoming

;===================================================================================================

Smithy_Homecoming:
#_06B205: JSR SpriteDraw_Smithy_Homecoming
#_06B208: JSR Sprite_CheckIfActive_Bank06

#_06B20B: LDA.w $0D80,X
#_06B20E: JSL JumpTableLocal
#_06B212: dw Smithy_Homecoming_Walk
#_06B214: dw Smithy_Homecoming_TYVM

;===================================================================================================

pool Smithy_Homecoming_Walk

.timer
#_06B216: db 104,  12

.direction
#_06B218: db $00, $02, $FF

.speed_x
#_06B21B: db   0,   0, -13,  13

.speed_y
#_06B21F: db -13,  13,   0,   0

pool off

;---------------------------------------------------------------------------------------------------

Smithy_Homecoming_Walk:
#_06B223: JSR Sprite_Move_XY_Bank06

#_06B226: LDA.b $1A

#_06B228: LSR A
#_06B229: LSR A
#_06B22A: LSR A

#_06B22B: AND.b #$01
#_06B22D: STA.w $0DC0,X

#_06B230: LDA.w $0DF0,X
#_06B233: BNE .exit

#_06B235: LDA.w $0D90,X
#_06B238: TAY

#_06B239: INC A
#_06B23A: STA.w $0D90,X

#_06B23D: LDA.w .timer,Y
#_06B240: STA.w $0DF0,X

#_06B243: LDA.w .direction,Y
#_06B246: BMI .next_state

#_06B248: STA.w $0DE0,X

#_06B24B: TAY

#_06B24C: LDA.w .speed_x,Y
#_06B24F: STA.w $0D50,X

#_06B252: LDA.w .speed_y,Y
#_06B255: STA.w $0D40,X

.exit
#_06B258: RTS

;---------------------------------------------------------------------------------------------------

.next_state
#_06B259: INC.w $0D80,X

#_06B25C: RTS

;===================================================================================================

Smithy_Homecoming_TYVM:
#_06B25D: JSL Sprite_BehaveAsBarrier

; Message 00E1
#_06B261: LDA.b #$E1
#_06B263: LDY.b #$00
#_06B265: JSL Sprite_ShowSolicitedMessage

#_06B269: STZ.w $02E4

#_06B26C: LDA.b #$01
#_06B26E: STA.w $0DE0,X

#_06B271: LDA.l $7EF3C9
#_06B275: ORA.b #$20
#_06B277: STA.l $7EF3C9

#_06B27B: RTS

;===================================================================================================

Smithy_Frog:
#_06B27C: JSR SpriteDraw_Smithy_Frog
#_06B27F: JSR Sprite_CheckIfActive_Bank06
#_06B282: JSL Sprite_BehaveAsBarrier

#_06B286: DEC.w $0F80,X
#_06B289: DEC.w $0F80,X

#_06B28C: JSR Sprite_Move_Z_Bank06

#_06B28F: LDA.w $0F70,X
#_06B292: BPL .him_hop

#_06B294: STZ.w $0F70,X

#_06B297: LDA.b #$10
#_06B299: STA.w $0F80,X

.him_hop
#_06B29C: LDA.w $0D80,X
#_06B29F: BNE .follow_link

#_06B2A1: LDA.b #$01
#_06B2A3: STA.w $0DE0,X

; Message 00DF
#_06B2A6: LDA.b #$DF
#_06B2A8: LDY.b #$00
#_06B2AA: JSL Sprite_ShowSolicitedMessage
#_06B2AE: BCC .ignored_WOW

#_06B2B0: INC.w $0D80,X

.ignored_WOW
#_06B2B3: RTS

;---------------------------------------------------------------------------------------------------

.follow_link
#_06B2B4: LDA.b #!FOLLOWER_07
#_06B2B6: STA.l $7EF3CC

#_06B2BA: PHX

#_06B2BB: JSL LoadFollowerGraphics
#_06B2BF: JSL Sprite_BecomeFollower

#_06B2C3: PLX

#_06B2C4: STZ.w $0DD0,X

#_06B2C7: RTS

;===================================================================================================

pool SpriteDraw_Smithy_Homecoming

.oam_groups
; group00
#_06B2C8: dw   0,   0 : db $22, $41, $00, $02

; group01
#_06B2D0: dw   0,   0 : db $22, $01, $00, $02

; group02
#_06B2D8: dw   0,   0 : db $22, $41, $00, $02

; group03
#_06B2E0: dw   0,   0 : db $22, $01, $00, $02

; group04
#_06B2E8: dw   0,   0 : db $22, $01, $00, $02

; group05
#_06B2F0: dw   0,   0 : db $22, $01, $00, $02

; group06
#_06B2F8: dw   0,   0 : db $22, $41, $00, $02

; group07
#_06B300: dw   0,   0 : db $22, $41, $00, $02

;---------------------------------------------------------------------------------------------------

.char_offset
#_06B308: db $C0
#_06B309: db $C0
#_06B30A: db $A0
#_06B30B: db $A0
#_06B30C: db $80
#_06B30D: db $60
#_06B30E: db $80
#_06B30F: db $60

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Smithy_Homecoming:
#_06B310: LDA.b #$01
#_06B312: STA.b $06
#_06B314: STZ.b $07

#_06B316: LDA.w $0DE0,X
#_06B319: ASL A
#_06B31A: ADC.w $0DC0,X
#_06B31D: TAY

#_06B31E: LDA.w .char_offset,Y
#_06B321: STA.w $0AEA

#_06B324: TYA
#_06B325: ASL A
#_06B326: ASL A
#_06B327: ASL A
#_06B328: ADC.b #.oam_groups>>0
#_06B32A: STA.b $08

#_06B32C: LDA.b #.oam_groups>>8
#_06B32E: ADC.b #$00
#_06B330: STA.b $09

#_06B332: JSL Sprite_DrawMultiple_player_deferred

#_06B336: JMP.w SpriteDraw_Shadow

;===================================================================================================

pool SpriteDraw_Smithy_Frog

.oam_groups
#_06B339: dw   0,   0 : db $C8, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Smithy_Frog:
#_06B341: LDA.b #$01
#_06B343: STA.b $06
#_06B345: STZ.b $07

#_06B347: LDA.b #.oam_groups>>0
#_06B349: STA.b $08

#_06B34B: LDA.b #.oam_groups>>8
#_06B34D: STA.b $09

#_06B34F: JSL Sprite_DrawMultiple_player_deferred

#_06B353: JMP.w SpriteDraw_Shadow

;===================================================================================================

Smithy_Main:
#_06B356: JSR SpriteDraw_Smithy

#_06B359: DEC.w $0F80,X
#_06B35C: DEC.w $0F80,X

#_06B35F: JSR Sprite_Move_Z_Bank06

#_06B362: LDA.w $0F70,X
#_06B365: BPL .hopping

#_06B367: STZ.w $0F70,X
#_06B36A: STZ.w $0F80,X

.hopping
#_06B36D: JSR Sprite_CheckIfActive_Bank06

#_06B370: LDY.w $0E90,X

#_06B373: LDA.w $0D80,Y
#_06B376: CMP.b #$05
#_06B378: BEQ .tick_timer

#_06B37A: CMP.b #$07
#_06B37C: BEQ .tick_timer

#_06B37E: CMP.b #$09
#_06B380: BEQ .tick_timer

#_06B382: ORA.w $0D80,X
#_06B385: BEQ .tick_timer

#_06B387: LDA.w $0D80,X
#_06B38A: CMP.b #$05
#_06B38C: BEQ .tick_timer

#_06B38E: CMP.b #$07
#_06B390: BEQ .tick_timer

#_06B392: CMP.b #$09
#_06B394: BNE .perform_ai

;---------------------------------------------------------------------------------------------------

.tick_timer
#_06B396: LDA.w $0DA0,X

#_06B399: DEC.w $0DA0,X

#_06B39C: CMP.b #$00
#_06B39E: BNE .perform_ai

#_06B3A0: LDA.w $0D90,X
#_06B3A3: TAY

#_06B3A4: INC A
#_06B3A5: AND.b #$07
#_06B3A7: STA.w $0D90,X

#_06B3AA: LDA.w Smithy_anim_step,Y
#_06B3AD: STA.w $0DC0,X

#_06B3B0: LDA.w SmithyAnimTimer,Y
#_06B3B3: STA.w $0DA0,X

#_06B3B6: CPY.b #$01
#_06B3B8: BNE .no_hop_for_him

#_06B3BA: LDA.b #$10
#_06B3BC: STA.w $0F80,X

.no_hop_for_him
#_06B3BF: CPY.b #$03
#_06B3C1: BNE .perform_ai

#_06B3C3: JSR Smithy_SpawnSpark

#_06B3C6: LDA.b #!SFX2_05
#_06B3C8: JSL SpriteSFX_QueueSFX2WithPan

;---------------------------------------------------------------------------------------------------

.perform_ai
#_06B3CC: LDA.w $0D80,X
#_06B3CF: JSL JumpTableLocal
#_06B3D3: dw Smithy_Smithing
#_06B3D5: dw Smithy_WannaTemper
#_06B3D7: dw Smithy_ForRealsies
#_06B3D9: dw Smithy_ItAintFreeKid
#_06B3DB: dw Smithy_TemperInProgress
#_06B3DD: dw Smithy_TemperInProgress
#_06B3DF: dw Smithy_GiveTemperedSword
#_06B3E1: dw Smithy_Nothing
#_06B3E3: dw Smithy_Nothing
#_06B3E5: dw Smithy_Nothing
#_06B3E7: dw Smithy_SpawnFriend
#_06B3E9: dw Smithy_Thanks

;===================================================================================================

Smithy_Smithing:
#_06B3EB: STZ.w $0DB0,X

#_06B3EE: LDA.l $7EF3CC
#_06B3F2: CMP.b #!FOLLOWER_08
#_06B3F4: BEQ .smithy_follower

#_06B3F6: JSR Smithy_ListenForHammer
#_06B3F9: BCC .link_not_helping_out

; Message 00E2
#_06B3FB: LDA.b #$E2
#_06B3FD: LDY.b #$00
#_06B3FF: JSL Sprite_ShowMessageUnconditional

#_06B403: LDA.b #$60
#_06B405: STA.w $0E00,X

#_06B408: INC.w $0DB0,X

#_06B40B: RTS

;---------------------------------------------------------------------------------------------------

.link_not_helping_out
#_06B40C: LDA.l $7EF3C9
#_06B410: AND.b #$20
#_06B412: BEQ .not_rescued

; Message 00D6
#_06B414: LDA.b #$D6
#_06B416: LDY.b #$00
#_06B418: JSL Sprite_ShowSolicitedMessage
#_06B41C: BCC .exit_a

#_06B41E: INC.w $0D80,X
#_06B421: INC.w $0DB0,X

.exit_a
#_06B424: RTS

;---------------------------------------------------------------------------------------------------

.not_rescued
; Message 00DD
#_06B425: LDA.b #$DD
#_06B427: LDY.b #$00
#_06B429: JSL Sprite_ShowSolicitedMessage

#_06B42D: RTS

;---------------------------------------------------------------------------------------------------

.smithy_follower
#_06B42E: LDA.b $20
#_06B430: CMP.b #$C2
#_06B432: BCS .exit_b

; Message 00DE
#_06B434: LDA.b #$DE
#_06B436: LDY.b #$00

#_06B438: JSL Sprite_ShowMessageUnconditional

#_06B43C: LDA.b #$0A
#_06B43E: STA.w $0D80,X

#_06B441: INC.w $02E4

.exit_b
#_06B444: RTS

;===================================================================================================

Smithy_ListenForHammer:
#_06B445: LDA.w $0E00,X
#_06B448: BNE .no_hammer

#_06B44A: LDA.w $0202
#_06B44D: CMP.b #$0C
#_06B44F: BNE .no_hammer

#_06B451: LDA.w $0301
#_06B454: AND.b #$02
#_06B456: BEQ .no_hammer

#_06B458: LDA.w $0300
#_06B45B: CMP.b #$02
#_06B45D: BNE .no_hammer

#_06B45F: JSR Sprite_CheckDamageToLink_same_layer
#_06B462: BCC .no_hammer ; you could have just left, ya know?

#_06B464: RTS

.no_hammer
#_06B465: CLC

#_06B466: RTS

;===================================================================================================

Smithy_WannaTemper:
#_06B467: LDA.w $1CE8
#_06B46A: BNE .didnt_make_the_sale

; Message 00D7
#_06B46C: LDA.b #$D7
#_06B46E: LDY.b #$00
#_06B470: JSL Sprite_ShowMessageUnconditional

#_06B474: INC.w $0D80,X

#_06B477: RTS

.didnt_make_the_sale
; Message 00DA
#_06B478: LDA.b #$DA
#_06B47A: LDY.b #$00
#_06B47C: JSL Sprite_ShowMessageUnconditional

#_06B480: STZ.w $0D80,X

#_06B483: RTS

;===================================================================================================

Smithy_ForRealsies:
#_06B484: LDA.w $1CE8
#_06B487: BNE .didnt_make_the_sale

#_06B489: LDA.l $7EF359
#_06B48D: CMP.b #$03
#_06B48F: BCS .sword_too_good_already

; Message 00D8
#_06B491: LDA.b #$D8
#_06B493: LDY.b #$00
#_06B495: JSL Sprite_ShowMessageUnconditional

#_06B499: INC.w $0D80,X

#_06B49C: RTS

;---------------------------------------------------------------------------------------------------

.sword_too_good_already
; Message 00D9
#_06B49D: LDA.b #$D9
#_06B49F: LDY.b #$00
#_06B4A1: JSL Sprite_ShowMessageUnconditional

#_06B4A5: STZ.w $0D80,X

#_06B4A8: RTS

;---------------------------------------------------------------------------------------------------

.didnt_make_the_sale
; Message 00DA
#_06B4A9: LDA.b #$DA
#_06B4AB: LDY.b #$00
#_06B4AD: JSL Sprite_ShowMessageUnconditional

#_06B4B1: STZ.w $0D80,X

#_06B4B4: RTS

;===================================================================================================

Smithy_ItAintFreeKid:
#_06B4B5: LDA.w $1CE8
#_06B4B8: BEQ .made_the_sale

; Message 00DA
#_06B4BA: LDA.b #$DA
#_06B4BC: LDY.b #$00

#_06B4BE: JSL Sprite_ShowMessageUnconditional
#_06B4C2: STZ.w $0D80,X

#_06B4C5: RTS

;---------------------------------------------------------------------------------------------------

.made_the_sale
#_06B4C6: REP #$20

; 10 rupees
#_06B4C8: LDA.l $7EF360
#_06B4CC: CMP.w #10

#_06B4CF: SEP #$30
#_06B4D1: BCS .paid_in_cash

; Credit not accepted
; Message 00DA
#_06B4D3: LDA.b #$DA
#_06B4D5: LDY.b #$00
#_06B4D7: JSL Sprite_ShowMessageUnconditional

#_06B4DB: STZ.w $0D80,X

#_06B4DE: RTS

;---------------------------------------------------------------------------------------------------

.paid_in_cash
#_06B4DF: REP #$20

; take 10 rupees
#_06B4E1: LDA.l $7EF360
#_06B4E5: SEC
#_06B4E6: SBC.w #10
#_06B4E9: STA.l $7EF360

#_06B4ED: SEP #$30

; Message 00DB
#_06B4EF: LDA.b #$DB
#_06B4F1: LDY.b #$00
#_06B4F3: JSL Sprite_ShowMessageUnconditional

#_06B4F7: LDY.w $0E90,X

#_06B4FA: LDA.b #$05
#_06B4FC: STA.w $0D80,Y
#_06B4FF: STA.w $0D80,X

#_06B502: STZ.w $0ABF

#_06B505: LDA.b #$FF
#_06B507: STA.l $7EF359

#_06B50B: LDA.l $7EF3C9
#_06B50F: ORA.b #$80
#_06B511: STA.l $7EF3C9

#_06B515: RTS

;===================================================================================================

Smithy_TemperInProgress:
#_06B516: STZ.w $0DB0,X

#_06B519: JSR Smithy_ListenForHammer
#_06B51C: BCC .link_isnt_helping

; Message 00E2
#_06B51E: LDA.b #$E2
#_06B520: LDY.b #$00
#_06B522: JSL Sprite_ShowMessageUnconditional

#_06B526: LDA.b #$60
#_06B528: STA.w $0E00,X

#_06B52B: INC.w $0DB0,X

#_06B52E: RTS

;---------------------------------------------------------------------------------------------------

.link_isnt_helping
#_06B52F: LDA.w $0ABF
#_06B532: BEQ .not_finished

; Message 00DC
#_06B534: LDA.b #$DC
#_06B536: LDY.b #$00
#_06B538: JSL Sprite_ShowSolicitedMessage
#_06B53C: BCC .exit

#_06B53E: INC.w $0D80,X

#_06B541: LDA.b #$04
#_06B543: STA.w $0DC0,X

.exit
#_06B546: RTS

;---------------------------------------------------------------------------------------------------

.not_finished
; Message 00E0
#_06B547: LDA.b #$E0
#_06B549: LDY.b #$00
#_06B54B: JSL Sprite_ShowSolicitedMessage

#_06B54F: RTS

;===================================================================================================

Smithy_GiveTemperedSword:
#_06B550: LDY.w $0E90,X

#_06B553: LDA.b #$00
#_06B555: STA.w $0D80,X
#_06B558: STA.w $0D80,Y

#_06B55B: LDY.b #!ITEMGET_02

#_06B55D: STZ.w $02E9

#_06B560: PHX
#_06B561: JSL Link_ReceiveItem
#_06B565: PLX

#_06B566: LDA.l $7EF3C9
#_06B56A: AND.b #$7F
#_06B56C: STA.l $7EF3C9

#_06B570: RTS

;===================================================================================================

Smithy_Nothing:
#_06B571: RTS

;===================================================================================================

Smithy_SpawnFriend:
#_06B572: LDA.b #!SPRITE_1A
#_06B574: JSL Sprite_SpawnDynamically
#_06B578: BMI .no_friend_in_me

#_06B57A: LDA.b $22
#_06B57C: STA.w $0D10,Y

#_06B57F: LDA.b $23
#_06B581: STA.w $0D30,Y

#_06B584: LDA.b $20
#_06B586: STA.w $0D00,Y

#_06B589: LDA.b $21
#_06B58B: STA.w $0D20,Y

#_06B58E: LDA.b #$03
#_06B590: STA.w $0E80,Y
#_06B593: STA.w $0BA0,Y

.no_friend_in_me
#_06B596: INC.w $0D80,X

#_06B599: LDA.b #$00
#_06B59B: STA.l $7EF3CC

#_06B59F: LDA.b #$04
#_06B5A1: STA.w $0DC0,X

#_06B5A4: RTS

;===================================================================================================

Smithy_Thanks:
; Message 00E1
#_06B5A5: LDA.b #$E1
#_06B5A7: LDY.b #$00
#_06B5A9: JSL Sprite_ShowSolicitedMessage

#_06B5AD: RTS

;===================================================================================================
; Used during sprite prep
;===================================================================================================
Smithy_SpawnDwarfPal:
#_06B5AE: LDA.b #!SPRITE_1A
#_06B5B0: JSL Sprite_SpawnDynamically
#_06B5B4: BMI .no_room

#_06B5B6: LDA.b $00
#_06B5B8: CLC
#_06B5B9: ADC.b #$2C
#_06B5BB: STA.w $0D10,Y

#_06B5BE: LDA.b $01
#_06B5C0: STA.w $0D30,Y

#_06B5C3: LDA.b $02
#_06B5C5: STA.w $0D00,Y

#_06B5C8: LDA.b $03
#_06B5CA: STA.w $0D20,Y

#_06B5CD: LDA.b #$01
#_06B5CF: STA.w $0DE0,Y

#_06B5D2: LDA.b #$04
#_06B5D4: STA.w $0D90,Y
#_06B5D7: STA.w $0BA0,Y

.no_room
#_06B5DA: RTS

;===================================================================================================

pool SpriteDraw_Smithy

.oam_groups
; group00
#_06B5DB: dw   1,   0 : db $40, $40, $00, $02
#_06B5E3: dw -11, -10 : db $60, $40, $00, $02

; group01
#_06B5EB: dw  -1,   0 : db $40, $00, $00, $02
#_06B5F3: dw  11, -10 : db $60, $00, $00, $02

; group02
#_06B5FB: dw   1,   0 : db $40, $40, $00, $02
#_06B603: dw  -3, -14 : db $44, $40, $00, $02

; group03
#_06B60B: dw  -1,   0 : db $40, $00, $00, $02
#_06B613: dw   3, -14 : db $44, $00, $00, $02

; group04
#_06B61B: dw   1,   0 : db $42, $40, $00, $02
#_06B623: dw  11, -10 : db $60, $00, $00, $02

; group05
#_06B62B: dw  -1,   0 : db $42, $00, $00, $02
#_06B633: dw -11, -10 : db $60, $40, $00, $02

; group06
#_06B63B: dw   1,   0 : db $42, $40, $00, $02
#_06B643: dw  13,   2 : db $62, $40, $00, $02

; group07
#_06B64B: dw  -1,   0 : db $42, $00, $00, $02
#_06B653: dw -13,   2 : db $62, $00, $00, $02

; group08
#_06B65B: dw   0,   0 : db $64, $40, $00, $02
#_06B663: dw   0,   0 : db $62, $40, $00, $02

; group09
#_06B66B: dw   0,   0 : db $64, $00, $00, $02
#_06B673: dw   0,   0 : db $64, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Smithy:
#_06B67B: LDA.b #$02
#_06B67D: STA.b $06
#_06B67F: STZ.b $07

#_06B681: LDA.w $0DC0,X
#_06B684: ASL A
#_06B685: ADC.w $0DE0,X

#_06B688: ASL A
#_06B689: ASL A
#_06B68A: ASL A
#_06B68B: ASL A

#_06B68C: ADC.b #.oam_groups>>0
#_06B68E: STA.b $08

#_06B690: LDA.b #.oam_groups>>8
#_06B692: ADC.b #$00
#_06B694: STA.b $09

#_06B696: JSL Sprite_DrawMultiple_player_deferred
#_06B69A: JSR SpriteDraw_Shadow

#_06B69D: RTS

;===================================================================================================

pool Smithy_Spark

.anim
#_06B69E: db $00, $01, $02, $01, $02, $01, $FF

.timer
#_06B6A5: db   4,   1,   3,   2,   1,   1

pool off

;---------------------------------------------------------------------------------------------------

Smithy_Spark:
#_06B6AB: JSR SpriteDraw_Smithy_Spark
#_06B6AE: JSR Sprite_CheckIfActive_Bank06

#_06B6B1: LDA.w $0DF0,X
#_06B6B4: BNE .exit

#_06B6B6: LDA.w $0D90,X
#_06B6B9: TAY

#_06B6BA: INC A
#_06B6BB: AND.b #$07
#_06B6BD: STA.w $0D90,X

#_06B6C0: LDA.w .anim,Y
#_06B6C3: BMI .terminate

#_06B6C5: STA.w $0DC0,X

#_06B6C8: LDA.w .timer,Y
#_06B6CB: STA.w $0DF0,X

.exit
#_06B6CE: RTS

;---------------------------------------------------------------------------------------------------

.terminate
#_06B6CF: STZ.w $0DD0,X

#_06B6D2: RTS

;===================================================================================================

pool Smithy_SpawnSpark

.offset_x
#_06B6D3: db  15, -15

pool off

;---------------------------------------------------------------------------------------------------

Smithy_SpawnSpark:
#_06B6D5: LDA.b #!SPRITE_1A

#_06B6D7: JSL Sprite_SpawnDynamically
#_06B6DB: BMI .no_room

#_06B6DD: PHX

#_06B6DE: LDA.w $0DE0,X
#_06B6E1: TAX

#_06B6E2: LDA.b $00
#_06B6E4: CLC
#_06B6E5: ADC.w .offset_x,X
#_06B6E8: STA.w $0D10,Y

#_06B6EB: LDA.b $01
#_06B6ED: STA.w $0D30,Y

#_06B6F0: LDA.b $02
#_06B6F2: CLC
#_06B6F3: ADC.b #$02
#_06B6F5: STA.w $0D00,Y

#_06B6F8: LDA.b $03
#_06B6FA: STA.w $0D20,Y

#_06B6FD: LDA.b #$01
#_06B6FF: STA.w $0E80,Y

#_06B702: PLX

.no_room
#_06B703: RTS

;===================================================================================================

pool SpriteDraw_Smithy_Spark

.oam_groups
; group00
#_06B704: dw   0,   3 : db $AA, $41, $00, $02
#_06B70C: dw   0,  -1 : db $AA, $41, $00, $02

; group01
#_06B714: dw  -4,   0 : db $90, $01, $00, $00
#_06B71C: dw  12,   0 : db $90, $41, $00, $00

; group02
#_06B724: dw  -5,  -2 : db $91, $01, $00, $00
#_06B72C: dw  13,  -2 : db $91, $01, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Smithy_Spark:
#_06B734: LDA.b #$08
#_06B736: JSL OAM_AllocateFromRegionB

#_06B73A: LDA.w $0DC0,X

#_06B73D: ASL A
#_06B73E: ASL A
#_06B73F: ASL A
#_06B740: ASL A

#_06B741: ADC.b #.oam_groups>>0
#_06B743: STA.b $08

#_06B745: LDA.b #.oam_groups>>8
#_06B747: ADC.b #$00
#_06B749: STA.b $09

#_06B74B: LDA.b #$02
#_06B74D: JSL Sprite_DrawMultiple

#_06B751: RTS

;===================================================================================================

pool Sprite_1B_Arrow

.speed_x
#_06B752: db   0,   0 ; bleeds into y speeds

.speed_y
#_06B754: db  16,  16,   0,   0, -16, -16,   0,   0

pool off

;---------------------------------------------------------------------------------------------------

Sprite_1B_Arrow:
#_06B75C: JSR SpriteDraw_Arrow
#_06B75F: JSR Sprite_CheckIfActivePermissive_Bank06

#_06B762: LDA.w $0DD0,X
#_06B765: CMP.b #$09
#_06B767: BNE SpriteArrow_KnockedAway

#_06B769: LDA.w $0DF0,X
#_06B76C: BEQ SpriteArrow_InFlight

#_06B76E: DEC A
#_06B76F: BNE .live

#_06B771: STZ.w $0DD0,X

#_06B774: RTS

;---------------------------------------------------------------------------------------------------

.live
#_06B775: CMP.b #$20
#_06B777: BCC .exit

#_06B779: AND.b #$01
#_06B77B: BNE .exit

#_06B77D: LDA.b $1A
#_06B77F: ASL A
#_06B780: AND.b #$04
#_06B782: ORA.w $0DE0,X
#_06B785: TAY

#_06B786: LDA.w .speed_x,Y
#_06B789: STA.w $0D50,X

#_06B78C: LDA.w .speed_y,Y
#_06B78F: STA.w $0D40,X

#_06B792: JSR Sprite_Move_XY_Bank06

.exit
#_06B795: RTS

;===================================================================================================

SpriteArrow_InFlight:
#_06B796: JSR Sprite_CheckDamageToLink_same_layer
#_06B799: LDA.w $0E90,X
#_06B79C: BNE .continue

#_06B79E: JSR Sprite_CheckTileCollision
#_06B7A1: LDA.w $0E70,X
#_06B7A4: BEQ .continue

#_06B7A6: LDY.w $0D90,X
#_06B7A9: BEQ .dont_break

#_06B7AB: JSL SpriteArrow_Break

#_06B7AF: RTS

.dont_break
#_06B7B0: LDA.b #$30
#_06B7B2: STA.w $0DF0,X

#_06B7B5: LDA.b #$02
#_06B7B7: STA.w $0D90,X

#_06B7BA: LDA.b #!SFX2_08
#_06B7BC: JSL SpriteSFX_QueueSFX2WithPan

#_06B7C0: RTS

;---------------------------------------------------------------------------------------------------

#UNREACHABLE_06B7C1:
#_06B7C1: STZ.w $0DD0,X

#_06B7C4: JSL Sprite_PlaceRepulseSpark

;---------------------------------------------------------------------------------------------------

.continue
#_06B7C8: JMP.w Sprite_Move_XY_Bank06

;===================================================================================================

pool SpriteArrow_KnockedAway

.direction
#_06B7CB: db $00
#_06B7CC: db $02
#_06B7CD: db $01
#_06B7CE: db $03

pool off

;---------------------------------------------------------------------------------------------------

SpriteArrow_KnockedAway:
#_06B7CF: LDA.w $0D80,X
#_06B7D2: BNE .prepped

#_06B7D4: JSR Sprite_ApplyRicochet

#_06B7D7: LDA.b #$18
#_06B7D9: STA.w $0F80,X

#_06B7DC: LDA.b #$FF
#_06B7DE: STA.w $0DF0,X

#_06B7E1: INC.w $0D80,X

#_06B7E4: STZ.w $0EF0,X

;---------------------------------------------------------------------------------------------------

.prepped
#_06B7E7: LDA.w $0DF0,X
#_06B7EA: LSR A
#_06B7EB: LSR A
#_06B7EC: LSR A
#_06B7ED: AND.b #$03
#_06B7EF: TAY

#_06B7F0: LDA.w .direction,Y
#_06B7F3: STA.w $0DE0,X

#_06B7F6: JSR Sprite_Move_Z_Bank06
#_06B7F9: JSR Sprite_Move_XY_Bank06

#_06B7FC: LDA.w $0F80,X
#_06B7FF: SEC
#_06B800: SBC.b #$02
#_06B802: STA.w $0F80,X

#_06B805: LDA.w $0F70,X
#_06B808: BPL .exit

#_06B80A: STZ.w $0DD0,X

.exit
#_06B80D: RTS

;===================================================================================================

UNREACHABLE_06B80E:
#_06B80E: RTS

;===================================================================================================

pool SpriteDraw_Arrow

.offset_x
#_06B80F: dw  -8,   0
#_06B813: dw   0,   8
#_06B817: dw   0,   0
#_06B81B: dw   0,   0

;---------------------------------------------------------------------------------------------------

.offset_y
#_06B81F: dw   0,   0
#_06B823: dw   0,   0
#_06B827: dw  -8,   0
#_06B82B: dw   0,   8

;---------------------------------------------------------------------------------------------------

.char
#_06B82F: db $3A, $3D
#_06B831: db $3D, $3A
#_06B833: db $2A, $2B
#_06B835: db $2B, $2A

#_06B837: db $7C, $6C
#_06B839: db $6C, $7C
#_06B83B: db $7B, $6B
#_06B83D: db $6B, $7B

#_06B83F: db $3A, $3B
#_06B841: db $3B, $3A
#_06B843: db $2A, $3C
#_06B845: db $3C, $2A

#_06B847: db $81, $80
#_06B849: db $80, $81
#_06B84B: db $91, $90
#_06B84D: db $90, $91

;---------------------------------------------------------------------------------------------------

.prop
#_06B84F: db $08, $08
#_06B851: db $48, $48
#_06B853: db $08, $08
#_06B855: db $88, $88

#_06B857: db $09, $49
#_06B859: db $09, $49
#_06B85B: db $09, $89
#_06B85D: db $09, $89

#_06B85F: db $08, $88
#_06B861: db $C8, $48
#_06B863: db $08, $08
#_06B865: db $88, $88

#_06B867: db $49, $49
#_06B869: db $09, $09
#_06B86B: db $89, $89
#_06B86D: db $09, $09

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Arrow:
#_06B86F: JSR Sprite_PrepOAMCoord

#_06B872: LDA.w $0DE0,X
#_06B875: ASL A
#_06B876: STA.b $06

#_06B878: LDA.w $0D90,X
#_06B87B: ASL A
#_06B87C: ASL A
#_06B87D: ASL A
#_06B87E: STA.b $07

#_06B880: PHX

#_06B881: LDX.b #$01

.next_object
#_06B883: PHX

#_06B884: TXA
#_06B885: CLC
#_06B886: ADC.b $06
#_06B888: PHA

#_06B889: ASL A
#_06B88A: TAX

#_06B88B: REP #$20

#_06B88D: LDA.b $00
#_06B88F: CLC
#_06B890: ADC.w .offset_x,X
#_06B893: STA.b ($90),Y

#_06B895: AND.w #$0100
#_06B898: STA.b $0E

#_06B89A: LDA.b $02
#_06B89C: CLC
#_06B89D: ADC.w .offset_y,X

#_06B8A0: INY
#_06B8A1: STA.b ($90),Y

#_06B8A3: CLC
#_06B8A4: ADC.w #$0010
#_06B8A7: CMP.w #$0100

#_06B8AA: SEP #$20
#_06B8AC: BCC .on_screen

#_06B8AE: LDA.b #$F0
#_06B8B0: STA.b ($90),Y

.on_screen
#_06B8B2: PLA
#_06B8B3: CLC
#_06B8B4: ADC.b $07
#_06B8B6: TAX

#_06B8B7: LDA.w .char,X
#_06B8BA: INY
#_06B8BB: STA.b ($90),Y

#_06B8BD: LDA.w .prop,X
#_06B8C0: ORA.b $05
#_06B8C2: INY
#_06B8C3: STA.b ($90),Y

#_06B8C5: PHY

#_06B8C6: TYA
#_06B8C7: LSR A
#_06B8C8: LSR A
#_06B8C9: TAY

#_06B8CA: LDA.b $0F
#_06B8CC: STA.b ($92),Y

#_06B8CE: PLY
#_06B8CF: INY

#_06B8D0: PLX
#_06B8D1: DEX
#_06B8D2: BPL .next_object

#_06B8D4: PLX

#_06B8D5: RTS

;===================================================================================================

CrystalSwitch_Palette:
#_06B8D6: db $02, $04

;===================================================================================================

Sprite_1E_CrystalSwitch:
#_06B8D8: LDA.w $0F50,X
#_06B8DB: AND.b #$F1
#_06B8DD: STA.w $0F50,X

#_06B8E0: LDA.l $7EC172
#_06B8E4: AND.b #$01
#_06B8E6: TAY

#_06B8E7: LDA.w CrystalSwitch_Palette,Y
#_06B8EA: ORA.w $0F50,X
#_06B8ED: STA.w $0F50,X

#_06B8F0: JSR OAM_AllocateDeferToPlayer
#_06B8F3: JSR SpriteDraw_SingleLarge

#_06B8F6: JSR Sprite_CheckIfActive_Bank06
#_06B8F9: JSR Sprite_CheckDamageToLink_same_layer
#_06B8FC: BCC .not_touching

#_06B8FE: JSL Sprite_CancelHookshot

#_06B902: STZ.b $5E

#_06B904: JSL Sprite_RepelDash_long

.not_touching
#_06B908: LDA.w $0DF0,X
#_06B90B: BNE .no_sparkle

#_06B90D: LDA.b $1A
#_06B90F: AND.b #$07
#_06B911: STA.b $00
#_06B913: STZ.b $01

#_06B915: JSL GetRandomNumber
#_06B919: AND.b #$07
#_06B91B: STA.b $02
#_06B91D: STZ.b $03

#_06B91F: JSL GarnishSpawn_Sparkle

#_06B923: LDA.b #$1F
#_06B925: STA.w $0DF0,X

.no_sparkle
#_06B928: LDA.w $0EA0,X
#_06B92B: BNE .transitioning

#_06B92D: LDA.b $3C ; checks for (and ignores) poke damage
#_06B92F: DEC A
#_06B930: CMP.b #$08
#_06B932: BPL .exit

#_06B934: JSR Sprite_CheckDamageFromLink

.exit
#_06B937: RTS

;---------------------------------------------------------------------------------------------------

.transitioning
#_06B938: DEC.w $0EA0,X
#_06B93B: CMP.b #$0B
#_06B93D: BNE .no_color_change

#_06B93F: LDA.l $7EC172
#_06B943: EOR.b #$01
#_06B945: STA.l $7EC172

#_06B949: LDA.b #$16
#_06B94B: STA.b $11

#_06B94D: LDA.b #!SFX3_25
#_06B94F: JSL SpriteSFX_QueueSFX3WithPan

.no_color_change
#_06B953: RTS

;===================================================================================================

Sprite_1F_SickKid:
#_06B954: JSL SpriteDraw_SickKid
#_06B958: JSR Sprite_CheckIfActive_Bank06

#_06B95B: LDA.w $0D80,X
#_06B95E: JSL JumpTableLocal
#_06B962: dw SickKid_ISleep
#_06B964: dw SickKid_RealShit
#_06B966: dw SickKid_NothingButNet
#_06B968: dw SickKid_OutOfShaqMemes

;===================================================================================================

SickKid_ISleep:
#_06B96A: JSL CheckIfLinkIsBusy
#_06B96E: BCS .zzzzzzzz

#_06B970: JSR Sprite_CheckDamageToLink_same_layer
#_06B973: BCC .zzzzzzzz

#_06B975: LDA.l $7EF35C
#_06B979: ORA.l $7EF35D
#_06B97D: ORA.l $7EF35E
#_06B981: ORA.l $7EF35F
#_06B985: CMP.b #$02
#_06B987: BCC .wakeywakey

#_06B989: INC.w $0D80,X
#_06B98C: INC.w $02E4

.zzzzzzzz
#_06B98F: RTS

;---------------------------------------------------------------------------------------------------

.wakeywakey
; Message 0102
#_06B990: LDA.b #$02
#_06B992: LDY.b #$01
#_06B994: JSL Sprite_ShowSolicitedMessage

#_06B998: RTS

;===================================================================================================

pool SickKid_RealShit

.anim_step
#_06B999: db $00, $01, $00, $01, $00, $01, $02, $FF

.timer
#_06B9A1: db   8,  12,   8,  12,   8,  96,  16

pool off

;---------------------------------------------------------------------------------------------------

SickKid_RealShit:
#_06B9A8: LDA.w $0DF0,X
#_06B9AB: BNE .exit

#_06B9AD: LDY.w $0D90,X

#_06B9B0: LDA.w .anim_step,Y
#_06B9B3: BMI .speak

#_06B9B5: STA.w $0DC0,X

#_06B9B8: LDA.w .timer,Y
#_06B9BB: STA.w $0DF0,X

#_06B9BE: INC.w $0D90,X

.exit
#_06B9C1: RTS

;---------------------------------------------------------------------------------------------------

.speak
; Message 0103
#_06B9C2: LDA.b #$03
#_06B9C4: LDY.b #$01
#_06B9C6: JSL Sprite_ShowMessageUnconditional

#_06B9CA: INC.w $0D80,X

#_06B9CD: RTS

;===================================================================================================

SickKid_NothingButNet:
#_06B9CE: LDY.b #!ITEMGET_21
#_06B9D0: STZ.w $02E9

#_06B9D3: PHX

#_06B9D4: JSL Link_ReceiveItem

#_06B9D8: PLX

#_06B9D9: INC.w $0D80,X

#_06B9DC: STZ.w $02E4

#_06B9DF: RTS

;===================================================================================================

SickKid_OutOfShaqMemes:
#_06B9E0: LDA.b #$01
#_06B9E2: STA.w $0DC0,X

; Message 0104
#_06B9E5: LDA.b #$04
#_06B9E7: LDY.b #$01
#_06B9E9: JSL Sprite_ShowSolicitedMessage

#_06B9ED: RTS

;===================================================================================================

WaterSwitch_Timer:
#_06B9EE: db  40,   6,   3,   3
#_06B9F2: db   3,   5,   1,   1
#_06B9F6: db   3,  12

;===================================================================================================

WaterSwitch_Position:
#_06B9F8: db $00, $01, $02, $03
#_06B9FC: db $04, $05, $05, $06
#_06BA00: db $07, $06

;===================================================================================================

Sprite_21_WaterSwitch:
#_06BA02: JSR WaterSwitch_Main
#_06BA05: JSR Sprite_CheckIfActive_Bank06

#_06BA08: LDA.w $0D80,X
#_06BA0B: CMP.b #$02
#_06BA0D: BEQ .exit

#_06BA0F: JSL JumpTableLocal
#_06BA13: dw WaterSwitch_Untoggled
#_06BA15: dw WaterSwitch_ReleaseGate

;---------------------------------------------------------------------------------------------------

.exit
#_06BA17: RTS

;===================================================================================================

WaterSwitch_Untoggled:
#_06BA18: LDA.w $0DB0,X
#_06BA1B: BEQ .reset_timer

#_06BA1D: DEC.w $0DA0,X

#_06BA20: LDA.w $0DA0,X
#_06BA23: BNE .delay

#_06BA25: INC.w $0D80,X

.delay
#_06BA28: LDA.b $1A
#_06BA2A: AND.b #$03
#_06BA2C: BNE .exit

#_06BA2E: LDA.b #!SFX2_22
#_06BA30: JSL SpriteSFX_QueueSFX2WithPan

.exit
#_06BA34: RTS

;---------------------------------------------------------------------------------------------------

.reset_timer
#_06BA35: LDA.b #$30
#_06BA37: STA.w $0DA0,X

#_06BA3A: RTS

;===================================================================================================

WaterSwitch_ReleaseGate:
#_06BA3B: LDA.w $0DF0,X
#_06BA3E: BNE .exit

#_06BA40: INC.w $0D90,X

#_06BA43: LDY.w $0D90,X
#_06BA46: CPY.b #$0A
#_06BA48: BNE .delay_release

#_06BA4A: INC.w $0D80,X
#_06BA4D: INC.w $0642

#_06BA50: LDA.b #!SFX3_25
#_06BA52: JSL SpriteSFX_QueueSFX3WithPan

#_06BA56: RTS

.delay_release
#_06BA57: LDA.w WaterSwitch_Timer,Y
#_06BA5A: STA.w $0DF0,X

#_06BA5D: LDA.w WaterSwitch_Position,Y
#_06BA60: STA.w $0DE0,X

#_06BA63: LDA.b #!SFX2_22
#_06BA65: JSL SpriteSFX_QueueSFX2WithPan

.exit
#_06BA69: RTS

;===================================================================================================

WaterSwitch_OAMData:
.step_0
#_06BA6A: db $04, $14, $DC, $20
#_06BA6E: db $04, $0C, $DD, $20
#_06BA72: db $04, $0C, $DD, $20
#_06BA76: db $04, $0C, $DD, $20
#_06BA7A: db $00, $00, $CA, $20

.step_1
#_06BA7E: db $03, $0C, $DD, $20
#_06BA82: db $03, $14, $DC, $20
#_06BA86: db $03, $14, $DC, $20
#_06BA8A: db $03, $14, $DC, $20
#_06BA8E: db $00, $00, $CA, $20

.step_2
#_06BA92: db $F8, $08, $EA, $20
#_06BA96: db $00, $08, $EB, $20
#_06BA9A: db $F8, $10, $FA, $20
#_06BA9E: db $00, $10, $FB, $20
#_06BAA2: db $00, $00, $CA, $20

.step_3
#_06BAA6: db $F4, $04, $CC, $20
#_06BAAA: db $FC, $04, $CD, $20
#_06BAAE: db $FC, $04, $CD, $20
#_06BAB2: db $FC, $04, $CD, $20
#_06BAB6: db $00, $00, $CA, $20

.step_4
#_06BABA: db $F6, $04, $CC, $20
#_06BABE: db $FC, $04, $CD, $20
#_06BAC2: db $FC, $04, $CD, $20
#_06BAC6: db $FC, $04, $CD, $20
#_06BACA: db $00, $00, $CA, $20

.step_5
#_06BACE: db $F8, $04, $CC, $20
#_06BAD2: db $FC, $04, $CD, $20
#_06BAD6: db $FC, $04, $CD, $20
#_06BADA: db $FC, $04, $CD, $20
#_06BADE: db $00, $00, $CA, $20

.step_6
#_06BAE2: db $04, $03, $E2, $20
#_06BAE6: db $FA, $04, $CC, $20
#_06BAEA: db $FC, $04, $CD, $20
#_06BAEE: db $FC, $04, $CD, $20
#_06BAF2: db $00, $00, $CA, $20

.step_7
#_06BAF6: db $04, $03, $F1, $20
#_06BAFA: db $FA, $04, $CC, $20
#_06BAFE: db $FC, $04, $CD, $20
#_06BB02: db $FC, $04, $CD, $20
#_06BB06: db $00, $00, $CA, $20

;===================================================================================================

WaterSwitch_HitBox:
#_06BB0A: db $08, $06
#_06BB0C: db $10, $10
#_06BB0E: db $10, $08
#_06BB10: db $10, $08
#_06BB12: db $10, $08
#_06BB14: db $10, $08
#_06BB16: db $10, $03
#_06BB18: db $10, $08

;===================================================================================================

WaterSwitch_OAMDataPointer:
#_06BB1A: dw WaterSwitch_OAMData_step_0
#_06BB1C: dw WaterSwitch_OAMData_step_1
#_06BB1E: dw WaterSwitch_OAMData_step_2
#_06BB20: dw WaterSwitch_OAMData_step_3
#_06BB22: dw WaterSwitch_OAMData_step_4
#_06BB24: dw WaterSwitch_OAMData_step_5
#_06BB26: dw WaterSwitch_OAMData_step_6
#_06BB28: dw WaterSwitch_OAMData_step_7

;===================================================================================================

WaterSwitch_Main:
#_06BB2A: JSR OAM_AllocateDeferToPlayer
#_06BB2D: JSR Sprite_PrepOAMCoord

#_06BB30: LDA.w $0F50,X

#_06BB33: LDY.w $0ABD
#_06BB36: BEQ .translucency_enabled

#_06BB38: ORA.b #$0E
#_06BB3A: BRA .continue

.translucency_enabled
#_06BB3C: AND.b #$F1

;---------------------------------------------------------------------------------------------------

.continue
#_06BB3E: STA.w $0F50,X
#_06BB41: STA.b $02

#_06BB43: LDA.w $0DA0,X

#_06BB46: LSR A
#_06BB47: LSR A

#_06BB48: AND.b #$03
#_06BB4A: STA.b $01

#_06BB4C: LDA.b #$00
#_06BB4E: XBA
#_06BB4F: LDA.w $0DE0,X
#_06BB52: ASL A

#_06BB53: PHX

#_06BB54: REP #$31

#_06BB56: PHB

#_06BB57: TAY

#_06BB58: LDX.w WaterSwitch_OAMDataPointer,Y

#_06BB5B: LDA.b $90
#_06BB5D: ADC.w #$0004
#_06BB60: STA.b $90

#_06BB62: TAY

#_06BB63: INC.b $92

#_06BB65: LDA.w #$0013
#_06BB68: %MVN(WaterSwitch_OAMDataPointer>>16, $00) ; MVN $06, $00

#_06BB6B: PLB

;---------------------------------------------------------------------------------------------------

#_06BB6C: SEP #$20

#_06BB6E: LDY.b $90

#_06BB70: LDA.b $01
#_06BB72: EOR.b #$FF
#_06BB74: INC A

#_06BB75: CLC
#_06BB76: ADC.w $0FA8
#_06BB79: TAX

#_06BB7A: CLC
#_06BB7B: ADC.w $0000,Y
#_06BB7E: STA.w $0000,Y

#_06BB81: TXA
#_06BB82: CLC
#_06BB83: ADC.w $0004,Y
#_06BB86: STA.w $0004,Y

#_06BB89: TXA
#_06BB8A: CLC
#_06BB8B: ADC.w $0008,Y
#_06BB8E: STA.w $0008,Y

#_06BB91: TXA
#_06BB92: CLC
#_06BB93: ADC.w $000C,Y
#_06BB96: STA.w $000C,Y

#_06BB99: LDA.w $0FA8
#_06BB9C: CLC
#_06BB9D: ADC.w $0010,Y
#_06BBA0: STA.w $0010,Y

;---------------------------------------------------------------------------------------------------

#_06BBA3: LSR.b $01

#_06BBA5: LDA.w $0FA9
#_06BBA8: SEC
#_06BBA9: SBC.b $01
#_06BBAB: TAX

#_06BBAC: CLC
#_06BBAD: ADC.w $0001,Y
#_06BBB0: STA.w $0001,Y

#_06BBB3: TXA
#_06BBB4: CLC
#_06BBB5: ADC.w $0005,Y
#_06BBB8: STA.w $0005,Y

#_06BBBB: TXA
#_06BBBC: CLC
#_06BBBD: ADC.w $0009,Y
#_06BBC0: STA.w $0009,Y

#_06BBC3: TXA
#_06BBC4: CLC
#_06BBC5: ADC.w $000D,Y
#_06BBC8: STA.w $000D,Y

#_06BBCB: LDA.w $0FA9
#_06BBCE: CLC
#_06BBCF: ADC.w $0011,Y
#_06BBD2: STA.w $0011,Y

;---------------------------------------------------------------------------------------------------

#_06BBD5: LDA.b $02
#_06BBD7: ORA.w $0003,Y
#_06BBDA: STA.w $0003,Y

#_06BBDD: LDA.b $02
#_06BBDF: ORA.w $0007,Y
#_06BBE2: STA.w $0007,Y

#_06BBE5: LDA.b $02
#_06BBE7: ORA.w $000B,Y
#_06BBEA: STA.w $000B,Y

#_06BBED: LDA.b $02
#_06BBEF: ORA.w $000F,Y
#_06BBF2: STA.w $000F,Y

#_06BBF5: LDA.b $02
#_06BBF7: ORA.w $0013,Y
#_06BBFA: STA.w $0013,Y

;---------------------------------------------------------------------------------------------------

#_06BBFD: REP #$31

#_06BBFF: LDA.w #$0000
#_06BC02: TAY
#_06BC03: STA.b ($92),Y

#_06BC05: INY
#_06BC06: INY
#_06BC07: STA.b ($92),Y

#_06BC09: LDA.w #$0200
#_06BC0C: INY
#_06BC0D: STA.b ($92),Y

;---------------------------------------------------------------------------------------------------

#_06BC0F: SEP #$30

#_06BC11: PLX

#_06BC12: LDY.b #$FF
#_06BC14: LDA.b #$04
#_06BC16: JSR Sprite_CorrectOAMEntries

#_06BC19: LDA.w $0F20,X
#_06BC1C: CMP.b $EE
#_06BC1E: BEQ .same_layer

#_06BC20: JMP.w .exit

;---------------------------------------------------------------------------------------------------

.same_layer
#_06BC23: STZ.w $0DB0,X

#_06BC26: LDA.w $0DE0,X
#_06BC29: ASL A
#_06BC2A: ASL A
#_06BC2B: ASL A
#_06BC2C: ASL A
#_06BC2D: TAY

#_06BC2E: LDA.w WaterSwitch_OAMData+0,Y
#_06BC31: CLC
#_06BC32: ADC.w $0D10,X
#_06BC35: STA.b $04

;---------------------------------------------------------------------------------------------------

#_06BC37: STZ.b $0A

#_06BC39: LDA.w WaterSwitch_OAMData+0,Y
#_06BC3C: BPL .positive_x

#_06BC3E: DEC.b $0A

.positive_x
#_06BC40: LDA.b $0A
#_06BC42: ADC.w $0D30,X
#_06BC45: STA.b $0A

#_06BC47: LDA.w WaterSwitch_OAMData+1,Y
#_06BC4A: CLC
#_06BC4B: ADC.w $0D00,X
#_06BC4E: STA.b $05

;---------------------------------------------------------------------------------------------------

#_06BC50: STZ.b $0B

#_06BC52: LDA.w WaterSwitch_OAMData+1,Y
#_06BC55: BPL .positive_y

#_06BC57: DEC.b $0B

.positive_y
#_06BC59: LDA.b $0B
#_06BC5B: ADC.w $0D20,X
#_06BC5E: STA.b $0B

;---------------------------------------------------------------------------------------------------

#_06BC60: LDA.w $0DE0,X
#_06BC63: ASL A
#_06BC64: TAY

#_06BC65: LDA.w WaterSwitch_HitBox+0,Y
#_06BC68: STA.b $06

#_06BC6A: LDA.w WaterSwitch_HitBox+1,Y
#_06BC6D: STA.b $07

#_06BC6F: JSR Link_SetupHitBox
#_06BC72: JSR CheckIfHitBoxesOverlap
#_06BC75: BCC .no_contact

;---------------------------------------------------------------------------------------------------

#_06BC77: LDA.w $0D00,X
#_06BC7A: PHA

#_06BC7B: CLC
#_06BC7C: ADC.b #$13
#_06BC7E: STA.w $0D00,X

#_06BC81: LDA.w $0D20,X
#_06BC84: PHA

#_06BC85: ADC.b #$00
#_06BC87: STA.w $0D20,X

#_06BC8A: JSR Sprite_DirectionToFaceLink

#_06BC8D: PLA
#_06BC8E: STA.w $0D20,X

#_06BC91: PLA
#_06BC92: STA.w $0D00,X

#_06BC95: CPY.b #$00
#_06BC97: BNE .contact

#_06BC99: LDA.b $2F
#_06BC9B: CMP.b #$04
#_06BC9D: BNE .contact

#_06BC9F: INC.w $0DB0,X
#_06BCA2: BRA .contact

;---------------------------------------------------------------------------------------------------

.no_contact
#_06BCA4: JSR Sprite_CheckDamageToLink_same_layer
#_06BCA7: BCC .exit

;---------------------------------------------------------------------------------------------------

.contact
#_06BCA9: JSL Sprite_CancelHookshot

#_06BCAD: STZ.b $5E

#_06BCAF: JSL Sprite_RepelDash_long

.exit
#_06BCB3: RTS

;===================================================================================================

Sprite_39_Locksmith:
#_06BCB4: JSR SpriteDraw_Locksmith
#_06BCB7: JSR Sprite_CheckIfActive_Bank06
#_06BCBA: JSL Sprite_BehaveAsBarrier

#_06BCBE: LDA.w $0D80,X
#_06BCC1: JSL JumpTableLocal
#_06BCC5: dw LockSmith_Chillin
#_06BCC7: dw LockSmith_FollowLink
#_06BCC9: dw LockSmith_OfferService
#_06BCCB: dw LockSmith_RespondToAnswer
#_06BCCD: dw LockSmith_JustPromiseOkay
#_06BCCF: dw LockSmith_SilentDismay

;===================================================================================================

LockSmith_Chillin:
; Message 0105
#_06BCD1: LDA.b #$05
#_06BCD3: LDY.b #$01
#_06BCD5: JSL Sprite_ShowSolicitedMessage

#_06BCD9: LDA.w $0D10,X
#_06BCDC: PHA

#_06BCDD: SEC
#_06BCDE: SBC.b #$10
#_06BCE0: STA.w $0D10,X

#_06BCE3: JSR Sprite_Get16BitCoords

#_06BCE6: LDA.b #$01
#_06BCE8: STA.w $0D50,X
#_06BCEB: STA.w $0D40,X

#_06BCEE: JSL Sprite_CheckTileCollision_long
#_06BCF2: BNE .dont_stalk_link

#_06BCF4: INC.w $0D80,X

#_06BCF7: LDA.l $7EF3CC
#_06BCFB: CMP.b #$00
#_06BCFD: BEQ .dont_stalk_link

#_06BCFF: LDA.b #$05
#_06BD01: STA.w $0D80,X

.dont_stalk_link
#_06BD04: PLA
#_06BD05: STA.w $0D10,X

#_06BD08: RTS

;===================================================================================================

LockSmith_FollowLink:
#_06BD09: LDA.b #!FOLLOWER_09
#_06BD0B: STA.l $7EF3CC

#_06BD0F: PHX

#_06BD10: STZ.w $02F9

#_06BD13: JSL LoadFollowerGraphics
#_06BD17: JSL Follower_Initialize

#_06BD1B: PLX

#_06BD1C: LDA.b #$40
#_06BD1E: STA.w $02CD
#_06BD21: STZ.w $02CE

#_06BD24: STZ.w $0DD0,X

#_06BD27: RTS

;===================================================================================================
; Why does he even have different messages?
;===================================================================================================
LockSmith_OfferService:
#_06BD28: JSL CheckIfLinkIsBusy
#_06BD2C: BCS .exit

#_06BD2E: LDA.l $7EF3D3
#_06BD32: BEQ .dont_have_chest

; Message 0107
#_06BD34: LDA.b #$07
#_06BD36: LDY.b #$01
#_06BD38: JSL Sprite_ShowSolicitedMessage
#_06BD3C: BCC .exit

#_06BD3E: BRA .continue

;---------------------------------------------------------------------------------------------------

.dont_have_chest
; Message 0107
#_06BD40: LDA.b #$07
#_06BD42: LDY.b #$01
#_06BD44: JSL Sprite_ShowMessageOnContact
#_06BD48: BCC .exit

.continue
#_06BD4A: INC.w $0D80,X

.exit
#_06BD4D: RTS

;===================================================================================================

LockSmith_RespondToAnswer:
#_06BD4E: LDA.w $1CE8
#_06BD51: BNE .rejected

#_06BD53: LDA.l $7EF3D3
#_06BD57: BEQ .give_bottle

; Message 010A
#_06BD59: LDA.b #$0A
#_06BD5B: LDY.b #$01
#_06BD5D: JSL Sprite_ShowMessageUnconditional

#_06BD61: LDA.b #$02
#_06BD63: STA.w $0D80,X

#_06BD66: RTS

;---------------------------------------------------------------------------------------------------

.give_bottle
#_06BD67: LDY.b #!ITEMGET_16
#_06BD69: STZ.w $02E9
#_06BD6C: JSL Link_ReceiveItem

#_06BD70: LDA.l $7EF3C9
#_06BD74: ORA.b #$10
#_06BD76: STA.l $7EF3C9

#_06BD7A: INC.w $0D80,X

#_06BD7D: LDA.b #$00
#_06BD7F: STA.l $7EF3CC

#_06BD83: RTS

;---------------------------------------------------------------------------------------------------

.rejected
; Message 0108
#_06BD84: LDA.b #$08
#_06BD86: LDY.b #$01
#_06BD88: JSL Sprite_ShowMessageUnconditional

#_06BD8C: LDA.b #$02
#_06BD8E: STA.w $0D80,X

#_06BD91: RTS

;===================================================================================================

LockSmith_JustPromiseOkay:
; Message 0109
#_06BD92: LDA.b #$09
#_06BD94: LDY.b #$01
#_06BD96: JSL Sprite_ShowSolicitedMessage

#_06BD9A: RTS

;===================================================================================================

LockSmith_SilentDismay:
; Message 0105
#_06BD9B: LDA.b #$05
#_06BD9D: LDY.b #$01
#_06BD9F: JSL Sprite_ShowSolicitedMessage

#_06BDA3: RTS

;===================================================================================================

pool SpriteDraw_Locksmith

.oam_groups
#_06BDA4: dw   0,  -8 : db $EA, $00, $00, $02
#_06BDAC: dw   0,   0 : db $EC, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Locksmith:
#_06BDB4: LDA.b #$02
#_06BDB6: STA.b $06
#_06BDB8: STZ.b $07

#_06BDBA: LDA.b #.oam_groups>>0
#_06BDBC: STA.b $08

#_06BDBE: LDA.b #.oam_groups>>8
#_06BDC0: STA.b $09

#_06BDC2: JSL Sprite_DrawMultiple_player_deferred

#_06BDC6: JMP.w SpriteDraw_Shadow

;===================================================================================================
; Use garnish next time, geez...
;===================================================================================================
Sprite_2B_Hobo:
#_06BDC9: LDA.w $0E80,X
#_06BDCC: JSL JumpTableLocal
#_06BDD0: dw Hobo_Bum
#_06BDD2: dw Hobo_Bubble
#_06BDD4: dw Hobo_Fire
#_06BDD6: dw Hobo_Smoke

;===================================================================================================

Hobo_Bum:
#_06BDD8: JSL SpriteDraw_Hobo
#_06BDDC: JSR Sprite_CheckIfActive_Bank06

#_06BDDF: LDA.b #$03
#_06BDE1: STA.w $0F60,X

#_06BDE4: JSR Sprite_CheckDamageToLink_same_layer
#_06BDE7: BCC .no_contact

#_06BDE9: JSL Sprite_CancelHookshot

#_06BDED: STZ.b $5E

#_06BDEF: JSL Link_CancelDash_long


.no_contact
#_06BDF3: LDA.w $0D80,X
#_06BDF6: JSL JumpTableLocal
#_06BDFA: dw Hobo_Sleep
#_06BDFC: dw Hobo_Awoken
#_06BDFE: dw Hobo_GiveBottle
#_06BE00: dw Hobo_BackToSleep

;===================================================================================================

Hobo_Sleep:
#_06BE02: LDA.b #$07
#_06BE04: STA.w $0F60,X

#_06BE07: JSR Sprite_CheckDamageToLink_same_layer
#_06BE0A: BCC .keep_snoozing

#_06BE0C: LDA.b $F6 ; checks for A press
#_06BE0E: BPL .keep_snoozing

#_06BE10: INC.w $0D80,X

#_06BE13: LDY.w $0E90,X

#_06BE16: LDA.b #$04
#_06BE18: STA.w $0DF0,Y

#_06BE1B: LDA.b #$01
#_06BE1D: STA.w $02E4

;---------------------------------------------------------------------------------------------------

.keep_snoozing
#_06BE20: LDA.w $0E10,X
#_06BE23: BNE .exit

#_06BE25: LDA.b #$A0
#_06BE27: STA.w $0E10,X

#_06BE2A: JSR Hobo_SpawnBubble

#_06BE2D: TYA
#_06BE2E: STA.w $0E90,X

.exit
#_06BE31: RTS

;===================================================================================================

pool Hobo_Awoken

.anim_step
#_06BE32: db $00, $01, $00, $01, $00, $01, $02, $FF

.timer
#_06BE3A: db   6,   2,   6,   6,   2, 100,  30

pool off

;---------------------------------------------------------------------------------------------------

Hobo_Awoken:
#_06BE41: LDA.w $0DF0,X
#_06BE44: BNE .exit

#_06BE46: LDY.w $0D90,X

#_06BE49: LDA.w .anim_step,Y ; wake up when animation is done at $FF
#_06BE4C: BMI .fully_awake

#_06BE4E: STA.w $0DC0,X

#_06BE51: LDA.w .timer,Y
#_06BE54: STA.w $0DF0,X

#_06BE57: INC.w $0D90,X

.exit
#_06BE5A: RTS

;---------------------------------------------------------------------------------------------------

.fully_awake
; Message 00D5
#_06BE5B: LDA.b #$D5
#_06BE5D: LDY.b #$00
#_06BE5F: JSL Sprite_ShowMessageUnconditional

#_06BE63: INC.w $0D80,X

#_06BE66: RTS

;===================================================================================================

Hobo_GiveBottle:
#_06BE67: INC.w $0D80,X

#_06BE6A: LDA.b #$01
#_06BE6C: STA.w $0DC0,X

#_06BE6F: PHX

#_06BE70: LDX.b $8A

#_06BE72: LDA.l $7EF280,X
#_06BE76: ORA.b #$20
#_06BE78: STA.l $7EF280,X

#_06BE7C: LDY.b #!ITEMGET_16
#_06BE7E: STZ.w $02E9
#_06BE81: JSL Link_ReceiveItem

#_06BE85: LDA.l $7EF3C9
#_06BE89: ORA.b #$01
#_06BE8B: STA.l $7EF3C9

#_06BE8F: PLX

#_06BE90: RTS

;===================================================================================================

Hobo_BackToSleep:
#_06BE91: STZ.w $02E4

#_06BE94: STZ.w $0DC0,X

#_06BE97: LDA.w $0DF0,X
#_06BE9A: BNE .exit

#_06BE9C: LDA.b #$A0
#_06BE9E: STA.w $0DF0,X

#_06BEA1: JSR Hobo_SpawnBubble

.exit
#_06BEA4: RTS

;===================================================================================================
; Why is this even separate...?
;===================================================================================================
SpritePrep_Hobo_SpawnSmoke:
#_06BEA5: LDA.b #!SPRITE_2B
#_06BEA7: JSL Sprite_SpawnDynamically
#_06BEAB: BMI .no_room

#_06BEAD: JSL Sprite_SetSpawnedCoordinates

#_06BEB1: LDA.b #$00
#_06BEB3: STA.w $0E80,Y
#_06BEB6: STA.w $0BA0,Y

.no_room
#_06BEB9: RTS

;===================================================================================================

UNREACHABLE_06BEBA:
#_06BEBA: db $01, $FF

;===================================================================================================

Hobo_Bubble:
#_06BEBC: LDA.b #$04
#_06BEBE: JSL OAM_AllocateFromRegionC

#_06BEC2: JSR SpriteDraw_SingleSmall
#_06BEC5: JSR Sprite_CheckIfActive_Bank06

#_06BEC8: LDA.b $1A

#_06BECA: LSR A ; /16
#_06BECB: LSR A
#_06BECC: LSR A
#_06BECD: LSR A

#_06BECE: AND.b #$01

#_06BED0: INC A
#_06BED1: INC A

#_06BED2: STA.w $0DC0,X

#_06BED5: LDA.w $0E00,X
#_06BED8: BNE .delay

#_06BEDA: INC.w $0DC0,X

#_06BEDD: JSR Sprite_Move_Z_Bank06

#_06BEE0: LDA.w $0DF0,X
#_06BEE3: BNE .delay

#_06BEE5: STZ.w $0DD0,X

.delay
#_06BEE8: LDA.w $0DF0,X
#_06BEEB: CMP.b #$04
#_06BEED: BCS .exit

#_06BEEF: LDA.b #$03
#_06BEF1: STA.w $0DC0,X

.exit
#_06BEF4: RTS

;===================================================================================================

Hobo_SpawnBubble:
#_06BEF5: LDA.b #!SPRITE_2B
#_06BEF7: JSL Sprite_SpawnDynamically
#_06BEFB: BMI EXIT_06BF1C

#_06BEFD: JSL Sprite_SetSpawnedCoordinates

#_06BF01: LDA.b #$01
#_06BF03: STA.w $0E80,Y

#_06BF06: LDA.b #$02
#_06BF08: STA.w $0F80,Y

#_06BF0B: LDA.b #$60
#_06BF0D: STA.w $0DF0,Y

#_06BF10: LSR A
#_06BF11: STA.w $0E00,Y
#_06BF14: STA.w $0BA0,Y

;===================================================================================================

Sprite_ZeroOutOAMAllocation:
#_06BF17: LDA.b #$00
#_06BF19: STA.w $0E40,Y

;---------------------------------------------------------------------------------------------------

#EXIT_06BF1C:
#_06BF1C: RTS

;===================================================================================================

Hobo_Fire:
#_06BF1D: JSR SpriteDraw_SingleSmall
#_06BF20: JSR Sprite_CheckIfActive_Bank06

#_06BF23: LDA.b $1A

#_06BF25: LSR A
#_06BF26: LSR A
#_06BF27: LSR A

#_06BF28: AND.b #$03
#_06BF2A: STA.b $00

#_06BF2C: AND.b #$01
#_06BF2E: STA.w $0DC0,X

#_06BF31: LDA.b $00

#_06BF33: ASL A
#_06BF34: ASL A
#_06BF35: ASL A
#_06BF36: ASL A

#_06BF37: AND.b #$40
#_06BF39: STA.b $00

#_06BF3B: LDA.w $0F50,X
#_06BF3E: AND.b #$BF
#_06BF40: ORA.b $00
#_06BF42: STA.w $0F50,X

#_06BF45: LDA.w $0DF0,X
#_06BF48: BNE .exit

#_06BF4A: JSR Hobo_SpawnSmoke

#_06BF4D: LDA.b #$2F
#_06BF4F: STA.w $0DF0,X

.exit
#_06BF52: RTS

;===================================================================================================

SpritePrep_Hobo_SpawnFire:
#_06BF53: LDA.b #!SPRITE_2B
#_06BF55: JSL Sprite_SpawnDynamically
#_06BF59: BMI .no_room

#_06BF5B: LDA.b #$94
#_06BF5D: STA.w $0D10,Y

#_06BF60: LDA.b #$01
#_06BF62: STA.w $0D30,Y

#_06BF65: LDA.b #$3F
#_06BF67: STA.w $0D00,Y

#_06BF6A: LDA.b #$00
#_06BF6C: STA.w $0D20,Y

#_06BF6F: LDA.b #$02
#_06BF71: STA.w $0E80,Y
#_06BF74: STA.w $0BA0,Y

#_06BF77: JSR Sprite_ZeroOutOAMAllocation

#_06BF7A: LDA.w $0F50,Y
#_06BF7D: AND.b #$F1
#_06BF7F: ORA.b #$02
#_06BF81: STA.w $0F50,Y

.no_room
#_06BF84: RTS

;===================================================================================================

pool Hobo_Smoke

.flip
#_06BF85: db $00, $40, $80, $C0

pool off

;---------------------------------------------------------------------------------------------------

Hobo_Smoke:
#_06BF89: LDA.b #$06
#_06BF8B: STA.w $0DC0,X

#_06BF8E: JSR SpriteDraw_SingleSmall
#_06BF91: JSR Sprite_CheckIfActive_Bank06

#_06BF94: JSR Sprite_Move_XY_Bank06
#_06BF97: JSR Sprite_Move_Z_Bank06

#_06BF9A: LDA.b $1A

#_06BF9C: LSR A
#_06BF9D: LSR A
#_06BF9E: LSR A
#_06BF9F: LSR A

#_06BFA0: AND.b #$03
#_06BFA2: TAY

#_06BFA3: LDA.w $0F50,X
#_06BFA6: AND.b #$3F
#_06BFA8: ORA.w .flip,Y
#_06BFAB: STA.w $0F50,X

#_06BFAE: LDA.w $0DF0,X
#_06BFB1: BNE .exit

#_06BFB3: STZ.w $0DD0,X

.exit
#_06BFB6: RTS

;===================================================================================================

Hobo_SpawnSmoke:
#_06BFB7: LDA.b #!SPRITE_2B
#_06BFB9: JSL Sprite_SpawnDynamically
#_06BFBD: BMI .exit

#_06BFBF: JSL Sprite_SetSpawnedCoordinates

#_06BFC3: LDA.b $02
#_06BFC5: SEC
#_06BFC6: SBC.b #$04
#_06BFC8: STA.w $0D00,Y

#_06BFCB: LDA.b $03
#_06BFCD: SBC.b #$00
#_06BFCF: STA.w $0D20,Y

#_06BFD2: LDA.b #$03
#_06BFD4: STA.w $0E80,Y

#_06BFD7: LDA.b #$07
#_06BFD9: STA.w $0F80,Y

#_06BFDC: LDA.b #$60
#_06BFDE: STA.w $0DF0,Y
#_06BFE1: STA.w $0BA0,Y

#_06BFE4: JSR Sprite_ZeroOutOAMAllocation

.exit
#_06BFE7: RTS

;===================================================================================================

Sprite_73_UncleAndPriest_bounce:
#_06BFE8: JSL Sprite_73_UncleAndPriest

#_06BFEC: RTS

;===================================================================================================

SpritePrep_UncleAndPriest_bounce:
#_06BFED: JSL SpritePrep_UncleAndPriest

#_06BFF1: RTS

;===================================================================================================

SpriteModule_Active_Bank05_bounce:
#_06BFF2: JSL SpriteModule_Active_Bank05

#_06BFF6: RTS

;===================================================================================================

SpriteModule_Active_Bank1E_bounce:
#_06BFF7: JSL SpriteModule_Active_Bank1E

#_06BFFB: RTS

;===================================================================================================

SpriteModule_Active_Bank1D_bounce:
#_06BFFC: JSL SpriteModule_Active_Bank1D

#_06C000: RTS

;===================================================================================================

SpritePrep_OldMan_bounce:
#_06C001: JSL SpritePrep_OldMan

#_06C005: RTS

;===================================================================================================

TutorialGuardOrBarrier_bounce:
#_06C006: JSL TutorialGuardOrBarrier

#_06C00A: RTS

;===================================================================================================

Sprite_PullSwitch_bounce:
#_06C00B: JSL Sprite_PullSwitch

#_06C00F: RTS

;===================================================================================================

SomariaPlatformAndPipe_bounce:
#_06C010: JSL SomariaPlatformAndPipe

#_06C014: RTS

;===================================================================================================

Sprite_F2_MedallionTablet_bounce:
#_06C015: JSL Sprite_F2_MedallionTablet

#_06C019: RTS

;===================================================================================================

Sprite_32_ArguingBros_bounce:
#_06C01A: JSL Sprite_32_ArguingBros

#_06C01E: RTS

;===================================================================================================

Sprite_33_RupeePull_bounce:
#_06C01F: JSL Sprite_33_RupeePull

#_06C023: RTS

;===================================================================================================

Sprite_14_ThievesTownGrate_bounce:
#_06C024: JSL Sprite_14_ThievesTownGrate

#_06C028: RTS

;===================================================================================================

Sprite_34_YoungSnitch_bounce:
#_06C029: JSL Sprite_34_YoungSnitch

#_06C02D: RTS

;===================================================================================================

SpritePrep_Snitch_bounce_2:
#_06C02E: JSL SpritePrep_Snitch

#_06C032: RTS

;===================================================================================================

Sprite_35_Innkeeper_bounce:
#_06C033: JSL Sprite_35_Innkeeper

#_06C037: RTS

;===================================================================================================

SpritePrep_Snitch_bounce_3:
#_06C038: JSL SpritePrep_Snitch

#_06C03C: RTS

;===================================================================================================

Sprite_36_Witch_bounce:
#_06C03D: JSL Sprite_36_Witch

#_06C041: RTS

;===================================================================================================

Sprite_37_Waterfall_bounce:
#_06C042: JSL Sprite_37_Waterfall

#_06C046: RTS

;===================================================================================================

Sprite_38_EyeStatue_bounce:
#_06C047: JSL Sprite_38_EyeStatue

#_06C04B: RTS

;===================================================================================================

Sprite_3A_MagicBat_bounce:
#_06C04C: JSL Sprite_3A_MagicBat

#_06C050: RTS

;===================================================================================================

Sprite_3B_BonkItem_bounce:
#_06C051: JSL Sprite_3B_BonkItem

#_06C055: RTS

;===================================================================================================

Sprite_3C_KidInKak_bounce:
#_06C056: JSL Sprite_3C_KidInKak

#_06C05A: RTS

;===================================================================================================

Sprite_3D_OldSnitch_bounce:
#_06C05B: JSL Sprite_3D_OldSnitch

#_06C05F: RTS

;===================================================================================================

Sprite_74_RunningBoy_bounce:
#_06C060: JSL Sprite_74_RunningBoy

#_06C064: RTS

;===================================================================================================

SpritePrep_RunningBoy_bounce:
#_06C065: JSL SpritePrep_RunningBoy

#_06C069: RTS

;===================================================================================================

Sprite_75_BottleMerchant_bounce:
#_06C06A: JSL Sprite_75_BottleMerchant

#_06C06E: RTS

;===================================================================================================

Sprite_76_Zelda_bounce:
#_06C06F: JSL Sprite_76_Zelda

#_06C073: RTS

;===================================================================================================

SpritePrep_Zelda_bounce:
#_06C074: JSL SpritePrep_Zelda

#_06C078: RTS

;===================================================================================================

Sprite_78_MrsSahasrahla_bounce:
#_06C079: JSL Sprite_78_MrsSahasrahla

#_06C07D: RTS

;===================================================================================================

Sprite_E7_Mushroom_bounce:
#_06C07E: JSL Sprite_E7_Mushroom

#_06C082: RTS

;===================================================================================================

SpritePrep_Mushroom_bounce:
#_06C083: JSL SpritePrep_Mushroom

#_06C087: RTS

;===================================================================================================

Sprite_E8_FakeMasterSword_bounce:
#_06C088: JSL Sprite_E8_FakeMasterSword

#_06C08C: RTS

;---------------------------------------------------------------------------------------------------

SpritePrep_FakeMasterSword_bounce:
#_06C08D: JSL SpritePrep_FakeMasterSword

#_06C091: RTS

;===================================================================================================

Sprite_16_Elder_bounce:
#_06C092: JSL Sprite_16_Elder

#_06C096: RTS

;===================================================================================================

Sprite_E9_MagicShopAssistant_bounce:
#_06C097: JSL Sprite_E9_MagicShopAssistant

#_06C09B: RTS

;===================================================================================================

SpritePrep_MagicShopAssistant_bounce:
#_06C09C: JSL SpritePrep_MagicShopAssistant

#_06C0A0: RTS

;===================================================================================================

Sprite_EA_HeartContainer_bounce:
#_06C0A1: JSL Sprite_EA_HeartContainer

#_06C0A5: RTS

;===================================================================================================

SpritePrep_HeartContainer_bounce:
#_06C0A6: JSL SpritePrep_HeartContainer

#_06C0AA: RTS

;===================================================================================================

Sprite_EB_HeartPiece_bounce:
#_06C0AB: JSL Sprite_EB_HeartPiece

#_06C0AF: RTS

;===================================================================================================

SpritePrep_HeartPiece:
#_06C0B0: JSL SpritePrep_HeartContainer

#_06C0B4: RTS

;===================================================================================================
; Seems unused
;===================================================================================================
Sprite_2E_FluteKid_bounce:
#_06C0B5: JSL Sprite_2E_FluteKid

#_06C0B9: RTS

;===================================================================================================

Sprite_2D_TelepathicTile_bounce:
#_06C0BA: JSL Sprite_2D_TelepathicTile

#_06C0BE: RTS

;===================================================================================================

Sprite_29_Adult_bounce:
#_06C0BF: JSL Sprite_29_Adult

#_06C0C3: RTS

;===================================================================================================

Sprite_2A_SweepingLady_bounce:
#_06C0C4: JSL Sprite_2A_SweepingLady

#_06C0C8: RTS

;===================================================================================================

Sprite_2C_Lumberjacks_bounce:
#_06C0C9: JSL Sprite_2C_Lumberjacks

#_06C0CD: RTS

;===================================================================================================

Sprite_31_FortuneTeller_bounce:
#_06C0CE: JSL Sprite_31_FortuneTeller

#_06C0D2: RTS

;===================================================================================================

Sprite_2F_RaceGameLady_bounce:
#_06C0D3: JSL Sprite_2F_RaceGameLady

#_06C0D7: RTS

;===================================================================================================

Sprite_30_RaceGameGuy_bounce:
#_06C0D8: JSL Sprite_30_RaceGameGuy

#_06C0DC: RTS

;===================================================================================================

Sprite_25_TalkingTree_bounce:
#_06C0DD: JSL Sprite_25_TalkingTree

#_06C0E1: RTS

;===================================================================================================

StatueDirection:
#_06C0E2: db $04, $06, $00, $02

;---------------------------------------------------------------------------------------------------

StatuePressMask:
#_06C0E6: db $01, $02, $04, $08

;---------------------------------------------------------------------------------------------------

StatueSpeed:
.x
#_06C0EA: db -16,  16 ; bleeds into next

.y
#_06C0EC: db   0,   0, -16,  16

;===================================================================================================

Sprite_1C_Statue:
#_06C0F0: LDA.w $0DE0,X
#_06C0F3: BEQ .not_being_pushed

#_06C0F5: STZ.w $0DE0,X

#_06C0F8: STZ.b $5E
#_06C0FA: STZ.b $48

.not_being_pushed
#_06C0FC: LDA.w $0DF0,X
#_06C0FF: BEQ .retain_momentum

#_06C101: LDA.b #$01
#_06C103: STA.w $0DE0,X

#_06C106: LDA.b #$81
#_06C108: STA.b $48

#_06C10A: LDA.b #$08
#_06C10C: STA.b $5E

.retain_momentum
#_06C10E: JSR SpriteDraw_Statue
#_06C111: JSR Sprite_CheckIfActive_Bank06
#_06C114: JSR Statue_BlockSprites

#_06C117: STZ.w $0642

#_06C11A: JSR Statue_CheckForSwitch
#_06C11D: BCC .no_switch

#_06C11F: LDA.b #$01
#_06C121: STA.w $0642

.no_switch
#_06C124: JSR Sprite_Move_XY_Bank06

#_06C127: JSR Sprite_Get16BitCoords
#_06C12A: JSR Sprite_CheckTileCollision
#_06C12D: JSR Sprite_ZeroVelocity_XY_Bank06

#_06C130: JSR Sprite_CheckDamageToLink_same_layer
#_06C133: BCC Statue_NotInContact

#_06C135: LDA.b #$07
#_06C137: STA.w $0DF0,X

#_06C13A: JSL Sprite_RepelDash_long

#_06C13E: LDA.w $0E00,X
#_06C141: BNE Statue_CancelHookshot

#_06C143: JSR Sprite_DirectionToFaceLink

#_06C146: LDA.w StatueSpeed_x,Y
#_06C149: STA.w $0D50,X

#_06C14C: LDA.w StatueSpeed_y,Y
#_06C14F: STA.w $0D40,X

;===================================================================================================

Statue_HandleGrab:
#_06C152: LDA.w $0376
#_06C155: AND.b #$02
#_06C157: BNE .not_grabbing

#_06C159: JSL Sprite_CancelHookshot

.not_grabbing
#_06C15D: LDA.w $0E70,X
#_06C160: AND.b #$0F
#_06C162: BNE .exit

#_06C164: LDA.w $0F10,X
#_06C167: BNE .exit

#_06C169: LDA.b #!SFX2_22
#_06C16B: JSL SpriteSFX_QueueSFX2WithPan

#_06C16F: LDA.b #$08
#_06C171: STA.w $0F10,X

.exit
#_06C174: RTS

;===================================================================================================

Statue_CancelHookshot:
#_06C175: JSL Sprite_CancelHookshot

#_06C179: RTS

;===================================================================================================

Statue_NotInContact:
#_06C17A: LDA.w $0DF0,X
#_06C17D: BNE .delay_timer

#_06C17F: LDA.b #$0D
#_06C181: STA.w $0E00,X

.delay_timer
#_06C184: REP #$20

#_06C186: LDA.w $0FD8
#_06C189: SEC
#_06C18A: SBC.b $22
#_06C18C: CLC
#_06C18D: ADC.w #$0010

#_06C190: CMP.w #$0023
#_06C193: BCS .reset_contact

#_06C195: LDA.w $0FDA
#_06C198: SEC
#_06C199: SBC.b $20
#_06C19B: CLC
#_06C19C: ADC.w #$000C

#_06C19F: CMP.w #$0024
#_06C1A2: BCS .reset_contact

;---------------------------------------------------------------------------------------------------

#_06C1A4: SEP #$30

#_06C1A6: JSR Sprite_DirectionToFaceLink

#_06C1A9: LDA.b $2F
#_06C1AB: CMP.w StatueDirection,Y
#_06C1AE: BNE .reset_contact

#_06C1B0: LDA.w $0372
#_06C1B3: BNE .reset_contact

#_06C1B5: LDA.b #$01
#_06C1B7: STA.w $02FA

#_06C1BA: LDA.b #$01
#_06C1BC: STA.w $0D90,X

#_06C1BF: LDA.w $0376
#_06C1C2: AND.b #$02
#_06C1C4: BEQ .exit

#_06C1C6: LDA.b $F0
#_06C1C8: AND.w StatuePressMask,Y
#_06C1CB: BEQ .exit

#_06C1CD: LDA.b $30
#_06C1CF: ORA.b $31
#_06C1D1: BEQ .exit

;---------------------------------------------------------------------------------------------------

#_06C1D3: TYA
#_06C1D4: EOR.b #$01
#_06C1D6: TAY

#_06C1D7: LDA.w StatueSpeed_x,Y
#_06C1DA: STA.w $0D50,X

#_06C1DD: LDA.w StatueSpeed_y,Y
#_06C1E0: STA.w $0D40,X

#_06C1E3: JMP.w Statue_HandleGrab

;---------------------------------------------------------------------------------------------------

.reset_contact
#_06C1E6: SEP #$30

#_06C1E8: LDA.w $0D90,X
#_06C1EB: BEQ .exit

#_06C1ED: STZ.w $0D90,X

#_06C1F0: STZ.b $5E

#_06C1F2: STZ.w $0376
#_06C1F5: STZ.w $02FA

#_06C1F8: LDA.b $50
#_06C1FA: AND.b #$FE
#_06C1FC: STA.b $50

.exit
#_06C1FE: RTS

;===================================================================================================

pool Statue_CheckForSwitch

.offset_x
#_06C1FF: db   3,  12,   3,  12

.offset_y
#_06C203: db   3,   3,  12,  12

.tile_id
#_06C207: db $23, $24, $25, $3B

pool off

;---------------------------------------------------------------------------------------------------

Statue_CheckForSwitch:
#_06C20B: LDY.b #$03

.next_tile
#_06C20D: LDA.w $0D00,X
#_06C210: CLC
#_06C211: ADC.w .offset_y,Y
#_06C214: STA.b $00

#_06C216: LDA.w $0D20,X
#_06C219: ADC.b #$00
#_06C21B: STA.b $01

#_06C21D: LDA.w $0D10,X
#_06C220: CLC
#_06C221: ADC.w .offset_x,Y
#_06C224: STA.b $02

#_06C226: LDA.w $0D30,X
#_06C229: ADC.b #$00
#_06C22B: STA.b $03

#_06C22D: LDA.w $0F20,X

#_06C230: PHY

#_06C231: JSL GetTileAttribute_long

#_06C235: PLY

;---------------------------------------------------------------------------------------------------

#_06C236: LDA.w $0FA5

#_06C239: CMP.w .tile_id+0
#_06C23C: BEQ .switch_tile

#_06C23E: CMP.w .tile_id+1
#_06C241: BEQ .switch_tile

#_06C243: CMP.w .tile_id+2
#_06C246: BEQ .switch_tile

#_06C248: CMP.w .tile_id+3
#_06C24B: BNE .fail

.switch_tile
#_06C24D: DEY
#_06C24E: BPL .next_tile

#_06C250: SEC

#_06C251: RTS

;---------------------------------------------------------------------------------------------------

.fail
#_06C252: CLC

#_06C253: RTS

;===================================================================================================

pool SpriteDraw_Statue

.oam_groups
#_06C254: dw   0,  -8 : db $C2, $00, $00, $00
#_06C25C: dw   8,  -8 : db $C2, $40, $00, $00
#_06C264: dw   0,   0 : db $C0, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Statue:
#_06C26C: REP #$20

#_06C26E: LDA.w #.oam_groups
#_06C271: STA.b $08

#_06C273: LDA.w #$0003
#_06C276: STA.b $06

#_06C278: SEP #$30

#_06C27A: JSL Sprite_DrawMultiple_player_deferred

#_06C27E: RTS

;===================================================================================================

Statue_BlockSprites:
#_06C27F: LDY.b #$0F

.next
#_06C281: LDA.w $0E20,Y
#_06C284: CMP.b #!SPRITE_1C
#_06C286: BEQ .skip

#_06C288: CPY.w $0FA0
#_06C28B: BEQ .skip

#_06C28D: TYA
#_06C28E: EOR.b $1A
#_06C290: AND.b #$01
#_06C292: BNE .skip

#_06C294: LDA.w $0DD0,Y
#_06C297: CMP.b #$09
#_06C299: BCC .skip

#_06C29B: LDA.w $0D10,Y
#_06C29E: STA.b $04

#_06C2A0: LDA.w $0D30,Y
#_06C2A3: STA.b $05

#_06C2A5: LDA.w $0D00,Y
#_06C2A8: STA.b $06

#_06C2AA: LDA.w $0D20,Y
#_06C2AD: STA.b $07

#_06C2AF: REP #$20

#_06C2B1: LDA.w $0FD8
#_06C2B4: SEC
#_06C2B5: SBC.b $04
#_06C2B7: CLC
#_06C2B8: ADC.w #$000C

#_06C2BB: CMP.w #$0018
#_06C2BE: BCS .skip

#_06C2C0: LDA.w $0FDA
#_06C2C3: SEC
#_06C2C4: SBC.b $06
#_06C2C6: CLC
#_06C2C7: ADC.w #$000C

#_06C2CA: CMP.w #$0024
#_06C2CD: BCS .skip

;---------------------------------------------------------------------------------------------------

#_06C2CF: SEP #$20

#_06C2D1: LDA.b #$04
#_06C2D3: STA.w $0EA0,Y

#_06C2D6: PHY

#_06C2D7: LDA.b #$20
#_06C2D9: JSR Sprite_ProjectSpeedTowardsLocation

#_06C2DC: PLY

#_06C2DD: LDA.b $00
#_06C2DF: STA.w $0F30,Y

#_06C2E2: LDA.b $01
#_06C2E4: STA.w $0F40,Y

;---------------------------------------------------------------------------------------------------

.skip
#_06C2E7: SEP #$20

#_06C2E9: DEY
#_06C2EA: BPL .next

#_06C2EC: RTS

;===================================================================================================
; Related to activating the flute, including:
;   the dug up flute
;   the weathervane
;
; Dies if
;   we have active flute in Kak
;   we have inactive flute outside of Kak
;===================================================================================================
Sprite_1D_FluteQuest:
#_06C2ED: JSR Sprite_PrepOAMCoord_wrapper
#_06C2F0: JSR Sprite_CheckIfActive_Bank06

#_06C2F3: LDA.b $8A
#_06C2F5: CMP.b #$18
#_06C2F7: BNE .not_kakariko

#_06C2F9: LDA.l $7EF34C
#_06C2FD: CMP.b #$03
#_06C2FF: BNE .no_active_flute

#_06C301: STZ.w $0DD0,X

.no_active_flute
#_06C304: RTS

;---------------------------------------------------------------------------------------------------

.not_kakariko
#_06C305: LDA.l $7EF34C
#_06C309: AND.b #$02
#_06C30B: BEQ .dont_die

#_06C30D: STZ.w $0DD0,X

.dont_die
#_06C310: RTS

;===================================================================================================

FairyPond_offset_x:
#_06C311: db   0,   4,   8,  12
#_06C315: db  16,  20,  24,   0

FairyPond_offset_y:
#_06C319: db   0,   8,  16,  24
#_06C31D: db  32,  40,   4,  36

;===================================================================================================

Sprite_72_FairyPond:
#_06C321: LDA.w $0D90,X
#_06C324: BNE FairyPond_Dust

#_06C326: LDA.w $0DA0,X
#_06C329: BNE .visible

#_06C32B: JSR Sprite_PrepOAMCoord_wrapper

#_06C32E: JMP.w FairyPond_Main

.visible
#_06C331: JSR SpriteDraw_FairyQueen

#_06C334: LDA.b $1A

#_06C336: LSR A
#_06C337: LSR A
#_06C338: LSR A
#_06C339: LSR A

#_06C33A: AND.b #$01
#_06C33C: STA.w $0DC0,X

#_06C33F: LDA.b $1A
#_06C341: AND.b #$0F
#_06C343: BNE .exit

#_06C345: LDA.b #!SPRITE_72
#_06C347: JSL Sprite_SpawnDynamically
#_06C34B: BMI .exit

#_06C34D: PHX

#_06C34E: JSL GetRandomNumber
#_06C352: AND.b #$07
#_06C354: TAX

#_06C355: LDA.b $00
#_06C357: CLC
#_06C358: ADC.w FairyPond_offset_x,X
#_06C35B: STA.w $0D10,Y

#_06C35E: LDA.b $01
#_06C360: ADC.b #$00
#_06C362: STA.w $0D30,Y

#_06C365: JSL GetRandomNumber
#_06C369: AND.b #$07
#_06C36B: TAX

#_06C36C: LDA.b $02
#_06C36E: CLC
#_06C36F: ADC.w FairyPond_offset_y,X
#_06C372: STA.w $0D00,Y

#_06C375: LDA.b $03
#_06C377: ADC.b #$00
#_06C379: STA.w $0D20,Y

#_06C37C: LDA.b #$1F
#_06C37E: STA.w $0DB0,Y
#_06C381: STA.w $0D90,Y

#_06C384: JSR Sprite_ZeroOutOAMAllocation

#_06C387: LDA.b #$48
#_06C389: STA.w $0E60,Y

#_06C38C: AND.b #$0F
#_06C38E: STA.w $0F50,Y

#_06C391: LDA.b #$01
#_06C393: STA.w $0DA0,Y

#_06C396: PLX

.exit
#_06C397: RTS

;===================================================================================================

FairyPond_Dust:
#_06C398: DEC.w $0DB0,X
#_06C39B: BNE .delay

#_06C39D: STZ.w $0DD0,X

.delay
#_06C3A0: LDA.w $0DB0,X
#_06C3A3: LSR A
#_06C3A4: LSR A
#_06C3A5: LSR A
#_06C3A6: STA.w $0DC0,X

#_06C3A9: LDA.b #$04
#_06C3AB: JSL OAM_AllocateFromRegionC

#_06C3AF: JSR SpriteDraw_SingleSmall

#_06C3B2: RTS

;===================================================================================================

FairyPond_TossGFXID:
.bow
#_06C3B3: db $3A ; empty normal bow
#_06C3B4: db $3A ; normal bow and arrows
#_06C3B5: db $3B ; empty silver bow
#_06C3B6: db $3B ; silver bow and arrows

.boomerang
#_06C3B7: db $0C ; blue
#_06C3B8: db $2A ; red

.hookshot
#_06C3B9: db $0A

.bombs
#_06C3BA: db $27

.mushroom
#_06C3BB: db $29 ; mushroom
#_06C3BC: db $0D ; powder

.fire_rod
#_06C3BD: db $07

.ice_rod
#_06C3BE: db $08

.bombos
#_06C3BF: db $0F

.ether
#_06C3C0: db $10

.quake
#_06C3C1: db $11

.lamp
#_06C3C2: db $12

.hammer
#_06C3C3: db $09

.flute
#_06C3C4: db $13 ; shovel
#_06C3C5: db $14 ; inactive flute
#_06C3C6: db $4A ; active flute

.net
#_06C3C7: db $21

.book
#_06C3C8: db $1D

.somaria
#_06C3C9: db $15

.byrna
#_06C3CA: db $18

.cape
#_06C3CB: db $19

.mirror
#_06C3CC: db $31 ; map
#_06C3CD: db $1A ; mirror
#_06C3CE: db $1A ; mirror - does this hint at an extra mirror upgrade?

.gloves
#_06C3CF: db $1B ; power glove
#_06C3D0: db $1C ; titan's mitt

.boots
#_06C3D1: db $4B

.flippers
#_06C3D2: db $1E

.pearl
#_06C3D3: db $1F

.sword
#_06C3D4: db $49 ; fighter sword
#_06C3D5: db $01 ; master sword
#_06C3D6: db $02 ; tempered sword
#_06C3D7: db $03 ; butter sword

.shield
#_06C3D8: db $04 ; fighter shield
#_06C3D9: db $05 ; fire shield
#_06C3DA: db $06 ; mirror shield

.armor
#_06C3DB: db $22 ; blue mail
#_06C3DC: db $23 ; red mail

.bottles
#_06C3DD: db $29 ; mushroom
#_06C3DE: db $16 ; empty bottle
#_06C3DF: db $2B ; red potion
#_06C3E0: db $2C ; green potion
#_06C3E1: db $2D ; blue potion
#_06C3E2: db $3D ; fairy
#_06C3E3: db $3C ; bee
#_06C3E4: db $48 ; good bee

;---------------------------------------------------------------------------------------------------

.pointer
#_06C3E5: dw .bow-1
#_06C3E7: dw .boomerang-1
#_06C3E9: dw .hookshot-1
#_06C3EB: dw .bombs-1
#_06C3ED: dw .mushroom-1
#_06C3EF: dw .fire_rod-1
#_06C3F1: dw .ice_rod-1
#_06C3F3: dw .bombos-1
#_06C3F5: dw .ether-1
#_06C3F7: dw .quake-1
#_06C3F9: dw .lamp-1
#_06C3FB: dw .hammer-1
#_06C3FD: dw .flute-1
#_06C3FF: dw .net-1
#_06C401: dw .book-1
#_06C403: dw .somaria-1
#_06C405: dw .somaria-1
#_06C407: dw .byrna-1
#_06C409: dw .cape-1
#_06C40B: dw .mirror-1
#_06C40D: dw .gloves-1
#_06C40F: dw .boots-1
#_06C411: dw .flippers-1
#_06C413: dw .pearl-1
#_06C415: dw .sword-1
#_06C417: dw .sword-1
#_06C419: dw .shield-1
#_06C41B: dw .armor-1
#_06C41D: dw .bottles-1
#_06C41F: dw .bottles-1
#_06C421: dw .bottles-1
#_06C423: dw .bottles-1

;===================================================================================================

FairyPond_Main:
#_06C425: JSR SpriteDraw_FairyPondItem
#_06C428: JSR Sprite_CheckIfActive_Bank06

#_06C42B: LDA.b $A0
#_06C42D: CMP.b #$15
#_06C42F: BEQ FairyPond_LakeHylia

;===================================================================================================

FairyPond_Waterfall:
#_06C431: LDA.w $0D80,X
#_06C434: JSL JumpTableLocal
#_06C438: dw UpgradeFairy_WaitForLink
#_06C43A: dw UpgradeFairy_OfferItemToss
#_06C43C: dw UpgradeFairy_HandleItemToss
#_06C43E: dw UpgradeFairy_SpawnFairy
#_06C440: dw UpgradeFairy_AskWhoDidThis
#_06C442: dw UpgradeFairy_HandleAnswer
#_06C444: dw UpgradeFairy_HandleUpgrade
#_06C446: dw UpgradeFairy_Retreat
#_06C448: dw UpgradeFairy_FixPalettes
#_06C44A: dw UpgradeFairy_HandleItemReceipt
#_06C44C: dw UpgradeFairy_FinalGoodBye
#_06C44E: dw UpgradeFairy_YouLiar
#_06C450: dw UpgradeFairy_SecondChance
#_06C452: dw UpgradeFairy_DebaseLink

;===================================================================================================

FairyPond_LakeHylia:
#_06C454: LDA.w $0D80,X
#_06C457: JSL JumpTableLocal
#_06C45B: dw FairyPond_WaitForLink
#_06C45D: dw LakeHyliaFairy_WaitForLink
#_06C45F: dw LakeHyliaFairy_BegForDonation
#_06C461: dw LakeHyliaFairy_AcceptDonation
#_06C463: dw LakeHyliaFairy_WaitForDonation
#_06C465: dw LakeHyliaFairy_SpawnFairy
#_06C467: dw LakeHyliaFairy_Greetings
#_06C469: dw LakeHyliaFairy_OfferUpgrade
#_06C46B: dw LakeHyliaFairy_UpgradeBombs
#_06C46D: dw LakeHyliaFairy_RevertTranslucency
#_06C46F: dw LakeHyliaFairy_DeleteFairy
#_06C471: dw LakeHyliaFairy_RestoreAndReset
#_06C473: dw LakeHyliaFairy_UpgradeArrows
#_06C475: dw LakeHyliaFairy_GiveDonationStatus
#_06C477: dw LakeHyliaFairy_GrantLuck

;===================================================================================================

pool SpriteDraw_FairyPondItem

.oam_groups

.group00
#_06C479: dw  32, -64 : db $24, $00, $00, $00
#_06C481: dw  32, -56 : db $34, $00, $00, $00
#_06C489: dw  32, -64 : db $24, $00, $00, $00
#_06C491: dw  32, -56 : db $34, $00, $00, $00

.group01
#_06C499: dw  32, -64 : db $24, $00, $00, $02
#_06C4A1: dw  32, -64 : db $24, $00, $00, $02
#_06C4A9: dw  32, -64 : db $24, $00, $00, $02
#_06C4B1: dw  32, -64 : db $24, $00, $00, $02

;---------------------------------------------------------------------------------------------------

.oam_group_pointers
#_06C4B9: dw .group00
#_06C4BB: dw .group01

;---------------------------------------------------------------------------------------------------

SpriteDraw_FairyPondItem:
#_06C4BD: LDA.b $A0
#_06C4BF: CMP.b #$15
#_06C4C1: BEQ .exit

#_06C4C3: LDA.w $0D80,X
#_06C4C6: CMP.b #$05
#_06C4C8: BEQ .draw_object

#_06C4CA: CMP.b #$06
#_06C4CC: BEQ .draw_object

#_06C4CE: CMP.b #$0B
#_06C4D0: BEQ .draw_object

#_06C4D2: CMP.b #$0C
#_06C4D4: BEQ .draw_object
#_06C4D6: BRA .exit

.draw_object
#_06C4D8: PHX

#_06C4D9: TXY

#_06C4DA: LDA.w $0DC0,Y
#_06C4DD: TAX

#_06C4DE: LDA.l AncillaAdd_ItemReceipt_prop,X
#_06C4E2: CMP.b #$FF
#_06C4E4: BNE .use_loaded_palette

#_06C4E6: LDA.b #$05

.use_loaded_palette
#_06C4E8: AND.b #$07
#_06C4EA: ASL A
#_06C4EB: STA.w $0F50,Y

#_06C4EE: LDA.l AncillaAdd_ItemReceipt_width,X
#_06C4F2: TAY

#_06C4F3: LDA.w .oam_group_pointers+0,Y
#_06C4F6: STA.b $08

#_06C4F8: LDA.w .oam_group_pointers+1,Y
#_06C4FB: STA.b $09

#_06C4FD: LDA.b #$04

#_06C4FF: PLX

#_06C500: JSL Sprite_DrawMultiple

.exit
#_06C504: RTS

;===================================================================================================

FairyPond_WaitForLink:
#_06C505: STZ.w $02E4

#_06C508: LDA.w $0DF0,X
#_06C50B: BNE .exit

#_06C50D: JSL CheckIfLinkIsBusy
#_06C511: BCS .exit

; Message 0087
#_06C513: LDA.b #$87
#_06C515: LDY.b #$00
#_06C517: JSL Sprite_ShowMessageOnContact
#_06C51B: BCC .exit

#_06C51D: INC.w $0D80,X

#_06C520: JSL Link_ResetProperties_A
#_06C524: JSL Ancilla_TerminateSparkleObjects

#_06C528: STZ.b $2F

.exit
#_06C52A: RTS

;===================================================================================================

FairyPond_Prices:
#_06C52B: db   5,  20,  25,  50

FairyPond_PricesBCD:
#_06C52F: db $05, $20, $25, $50

;===================================================================================================

LakeHyliaFairy_WaitForLink:
#_06C533: LDA.w $1CE8
#_06C536: BNE .negatory

#_06C538: LDA.l $7EF370
#_06C53C: ORA.l $7EF371
#_06C540: BEQ .have_upgraded_before

#_06C542: LDA.b #$02

.have_upgraded_before
#_06C544: STA.w $0DC0,X

#_06C547: TAY

#_06C548: LDA.w FairyPond_PricesBCD+0,Y
#_06C54B: STA.w $1CF2

#_06C54E: LDA.w FairyPond_PricesBCD+1,Y
#_06C551: STA.w $1CF3

; Message 014C
#_06C554: LDA.b #$4C
#_06C556: LDY.b #$01
#_06C558: JSL Sprite_ShowMessageUnconditional

#_06C55C: INC.w $0D80,X

#_06C55F: LDA.b #$01
#_06C561: STA.w $02E4

#_06C564: RTS

;===================================================================================================

#FairyPond_ResetAI:
#_06C565: SEP #$30

.negatory
; Message 014A
#_06C567: LDA.b #$4A
#_06C569: LDY.b #$01
#_06C56B: JSL Sprite_ShowMessageUnconditional

#_06C56F: STZ.w $0D80,X

#_06C572: LDA.b #$FF
#_06C574: STA.w $0DF0,X

#_06C577: RTS

;===================================================================================================

LakeHyliaFairy_BegForDonation:
#_06C578: LDA.w $1CE8
#_06C57B: CLC
#_06C57C: ADC.w $0DC0,X
#_06C57F: TAY

#_06C580: LDA.w FairyPond_PricesBCD,Y
#_06C583: STA.w $1CF3

#_06C586: REP #$20

#_06C588: LDA.w FairyPond_Prices,Y
#_06C58B: AND.w #$00FF
#_06C58E: STA.b $00

#_06C590: LDA.l $7EF360
#_06C594: CMP.b $00
#_06C596: BCC FairyPond_ResetAI

#_06C598: SEP #$30

#_06C59A: LDA.b $00
#_06C59C: STA.w $0DE0,X

#_06C59F: TYA
#_06C5A0: STA.w $0EB0,X

#_06C5A3: INC.w $0D80,X

#_06C5A6: RTS

;===================================================================================================

LakeHyliaFairy_AcceptDonation:
#_06C5A7: LDA.b #$50
#_06C5A9: STA.w $0DF0,X

#_06C5AC: LDA.w $0DE0,X
#_06C5AF: STA.b $00
#_06C5B1: STZ.b $01

#_06C5B3: REP #$20

#_06C5B5: LDA.l $7EF360
#_06C5B9: SEC
#_06C5BA: SBC.b $00
#_06C5BC: STA.l $7EF360

#_06C5C0: SEP #$30

#_06C5C2: LDA.l $7EF36A
#_06C5C6: CLC
#_06C5C7: ADC.b $00
#_06C5C9: STA.l $7EF36A

#_06C5CD: PHX

#_06C5CE: LDA.w $0EB0,X
#_06C5D1: JSL AddHappinessPondRupees

#_06C5D5: PLX

#_06C5D6: LDA.l $7EF36A
#_06C5DA: CMP.b #100
#_06C5DC: BCC .not_enough_for_upgrade

#_06C5DE: SBC.b #100
#_06C5E0: STA.l $7EF36A

#_06C5E4: LDA.b #$05
#_06C5E6: STA.w $0D80,X

#_06C5E9: RTS

;---------------------------------------------------------------------------------------------------

.not_enough_for_upgrade
#_06C5EA: LDA.l $7EF36A

#_06C5EE: STZ.b $02

.remove_rupees
#_06C5F0: CMP.b #10
#_06C5F2: BCC .less_than_10

#_06C5F4: SBC.b #10
#_06C5F6: INC.b $02

#_06C5F8: BRA .remove_rupees

.less_than_10
#_06C5FA: ASL.b $02 ; x16
#_06C5FC: ASL.b $02
#_06C5FE: ASL.b $02
#_06C600: ASL.b $02

#_06C602: ORA.b $02
#_06C604: STA.w $1CF2

#_06C607: INC.w $0D80,X

#_06C60A: RTS

;===================================================================================================

LakeHyliaFairy_WaitForDonation:
#_06C60B: LDA.w $0DF0,X
#_06C60E: BNE .exit

; Message 0092
#_06C610: LDA.b #$92
#_06C612: LDY.b #$00
#_06C614: JSL Sprite_ShowMessageUnconditional

#_06C618: LDA.b #$0D
#_06C61A: STA.w $0D80,X

.exit
#_06C61D: RTS

;===================================================================================================

LakeHyliaFairy_SpawnFairy:
#_06C61E: LDA.w $0DF0,X
#_06C621: BNE .exit

#_06C623: LDA.b #!SPRITE_72
#_06C625: JSL Sprite_SpawnDynamically

#_06C629: LDA.b #!SONG_1B
#_06C62B: STA.w $012C

#_06C62E: STZ.w $0133

#_06C631: LDA.b $00
#_06C633: SEC
#_06C634: SBC.w FairyPondFairy_offset_x
#_06C637: STA.w $0D10,Y

#_06C63A: LDA.b $01
#_06C63C: SBC.b #$00
#_06C63E: STA.w $0D30,Y

#_06C641: LDA.b $02
#_06C643: SEC
#_06C644: SBC.w FairyPondFairy_offset_y
#_06C647: STA.w $0D00,Y

#_06C64A: LDA.b $03
#_06C64C: SBC.b #$00
#_06C64E: STA.w $0D20,Y

#_06C651: LDA.b #$01
#_06C653: STA.w $0DA0,Y

#_06C656: INC.w $0D80,X

#_06C659: LDA.b #$FF
#_06C65B: STA.w $0DF0,X

#_06C65E: PHX

#_06C65F: JSL Palette_AssertTranslucencySwap
#_06C663: JSL PaletteFilter_WishPonds

#_06C667: PLX

#_06C668: TYA
#_06C669: STA.w $0E90,X

.exit
#_06C66C: RTS

;===================================================================================================

LakeHyliaFairy_Greetings:
#_06C66D: LDA.b $1A
#_06C66F: AND.b #$07
#_06C671: BNE .exit

#_06C673: PHX

#_06C674: JSL PaletteFilter_SP5F

#_06C678: PLX

#_06C679: LDA.l $7EC007
#_06C67D: BNE .exit

#_06C67F: INC.w $0D80,X

; Message 0093
#_06C682: LDA.b #$93
#_06C684: LDY.b #$00
#_06C686: JSL Sprite_ShowMessageUnconditional

#_06C68A: PHX

#_06C68B: JSL Palette_RevertTranslucencySwap

#_06C68F: STZ.b $1D

#_06C691: LDA.b #$20
#_06C693: STA.b $9A

#_06C695: INC.b $15

#_06C697: PLX

.exit
#_06C698: RTS

;===================================================================================================

LakeHyliaFairy_OfferUpgrade:
#_06C699: LDA.w $1CE8
#_06C69C: BNE .chose_arrows

#_06C69E: INC.w $0D80,X

#_06C6A1: RTS

.chose_arrows
#_06C6A2: LDA.b #$0C
#_06C6A4: STA.w $0D80,X

#_06C6A7: RTS

;===================================================================================================

LakeHyliaFairy_UpgradeBombs:
#_06C6A8: INC.w $0D80,X

#_06C6AB: LDA.l $7EF370
#_06C6AF: CMP.b #$07
#_06C6B1: BEQ .at_max

#_06C6B3: INC A
#_06C6B4: STA.l $7EF370

#_06C6B8: PHX

#_06C6B9: TAX

#_06C6BA: LDA.l CapacityUpgrades_bombs_bcd,X
#_06C6BE: STA.w $1CF2

; Why are they using the BCD value as a filler...?
#_06C6C1: STA.l $7EF375

#_06C6C5: PLX

; Message 0094
#_06C6C6: LDA.b #$94
#_06C6C8: LDY.b #$00
#_06C6CA: JSL Sprite_ShowMessageUnconditional

#_06C6CE: RTS

;---------------------------------------------------------------------------------------------------

.at_max
; Message 0096
#_06C6CF: LDA.b #$96
#_06C6D1: LDY.b #$00
#_06C6D3: JSL Sprite_ShowMessageUnconditional

#_06C6D7: JMP.w LakeHyliaFairy_RefundRupees

;===================================================================================================

LakeHyliaFairy_RevertTranslucency:
#_06C6DA: INC.w $0D80,X

#_06C6DD: PHX

#_06C6DE: JSL Palette_AssertTranslucencySwap

#_06C6E2: LDA.b #$02
#_06C6E4: STA.b $1D

#_06C6E6: LDA.b #$30
#_06C6E8: STA.b $9A

#_06C6EA: INC.w $0015

#_06C6ED: PLX

#_06C6EE: RTS

;===================================================================================================

LakeHyliaFairy_DeleteFairy:
#_06C6EF: LDA.b $1A
#_06C6F1: AND.b #$07
#_06C6F3: BNE .exit

#_06C6F5: PHX

#_06C6F6: JSL PaletteFilter_SP5F

#_06C6FA: PLX

#_06C6FB: LDA.l $7EC007
#_06C6FF: CMP.b #$1E
#_06C701: BNE .delay

#_06C703: LDA.w $0E90,X
#_06C706: TAY

#_06C707: LDA.b #$00
#_06C709: STA.w $0DD0,Y

#_06C70C: BRA .exit

.delay
#_06C70E: CMP.b #$00
#_06C710: BNE .exit

#_06C712: INC.w $0D80,X

.exit
#_06C715: RTS

;===================================================================================================

LakeHyliaFairy_RestoreAndReset:
#_06C716: PHX

#_06C717: JSL PaletteFilter_RestoreSP5F
#_06C71B: JSL Palette_RevertTranslucencySwap

#_06C71F: PLX

#_06C720: STZ.w $0D80,X

#_06C723: LDA.b #$FF
#_06C725: STA.w $0DF0,X

#_06C728: RTS

;===================================================================================================

LakeHyliaFairy_UpgradeArrows:
#_06C729: LDA.b #$09
#_06C72B: STA.w $0D80,X

#_06C72E: LDA.l $7EF371
#_06C732: CMP.b #$07
#_06C734: BEQ .at_max

#_06C736: INC A
#_06C737: STA.l $7EF371

#_06C73B: PHX

#_06C73C: TAX

#_06C73D: LDA.l CapacityUpgrades_arrows_bcd,X
#_06C741: STA.w $1CF2
#_06C744: STA.l $7EF376

#_06C748: PLX

; Message 0095
#_06C749: LDA.b #$95
#_06C74B: LDY.b #$00
#_06C74D: JSL Sprite_ShowMessageUnconditional

#_06C751: RTS

;---------------------------------------------------------------------------------------------------

.at_max
; Message 0096
#_06C752: LDA.b #$96
#_06C754: LDY.b #$00
#_06C756: JSL Sprite_ShowMessageUnconditional

;===================================================================================================

LakeHyliaFairy_RefundRupees:
#_06C75A: REP #$20

; 100 rupees
#_06C75C: LDA.l $7EF360
#_06C760: CLC
#_06C761: ADC.w #100
#_06C764: STA.l $7EF360

#_06C768: SEP #$30

#_06C76A: RTS

;===================================================================================================

LakeHyliaFairy_GiveDonationStatus:
; Message 0152
#_06C76B: LDA.b #$52
#_06C76D: LDY.b #$01
#_06C76F: JSL Sprite_ShowMessageUnconditional

#_06C773: INC.w $0D80,X

#_06C776: RTS

;===================================================================================================

pool LakeHyliaFairy_GrantLuck

.message_low
#_06C777: db $4E ; Message 014E
#_06C778: db $4F ; Message 014F
#_06C779: db $50 ; Message 0150
#_06C77A: db $51 ; Message 0151

.message_high
#_06C77B: db $01
#_06C77C: db $01
#_06C77D: db $01
#_06C77E: db $01

.luck_level
#_06C77F: db $01
#_06C780: db $00
#_06C781: db $00
#_06C782: db $02

pool off

;---------------------------------------------------------------------------------------------------

LakeHyliaFairy_GrantLuck:
#_06C783: JSL GetRandomNumber
#_06C787: AND.b #$03
#_06C789: TAY

#_06C78A: LDA.w .luck_level,Y
#_06C78D: STA.w $0CF9

#_06C790: STZ.w $0CFA

#_06C793: LDA.w .message_low,Y
#_06C796: XBA

#_06C797: LDA.w .message_high,Y
#_06C79A: TAY

#_06C79B: XBA
#_06C79C: JSL Sprite_ShowMessageUnconditional

#_06C7A0: STZ.w $0D80,X

#_06C7A3: LDA.b #$FF
#_06C7A5: STA.w $0DF0,X

#_06C7A8: RTS

;===================================================================================================

UpgradeFairy_WaitForLink:
#_06C7A9: STZ.w $02E4

#_06C7AC: LDA.w $0DF0,X
#_06C7AF: BNE .exit

#_06C7B1: JSL CheckIfLinkIsBusy
#_06C7B5: BCS .exit

; Message 0148
#_06C7B7: LDA.b #$48
#_06C7B9: LDY.b #$01
#_06C7BB: JSL Sprite_ShowMessageOnContact
#_06C7BF: BCC .exit

#_06C7C1: INC.w $0D80,X

#_06C7C4: JSL Link_ResetProperties_A

#_06C7C8: STZ.b $2F

#_06C7CA: STZ.w $0EB0,X

.exit
#_06C7CD: RTS

;===================================================================================================

UpgradeFairy_OfferItemToss:
#_06C7CE: LDA.w $1CE8
#_06C7D1: BNE .no_toss

; Message 0088
#_06C7D3: LDA.b #$88
#_06C7D5: LDY.b #$00
#_06C7D7: JSL Sprite_ShowMessageUnconditional

#_06C7DB: INC.w $0D80,X

#_06C7DE: LDA.b #$01
#_06C7E0: STA.w $02E4

#_06C7E3: RTS

.no_toss
; Message 0149
#_06C7E4: LDA.b #$49
#_06C7E6: LDY.b #$01
#_06C7E8: JSL Sprite_ShowMessageUnconditional

#_06C7EC: STZ.w $0D80,X

#_06C7EF: LDA.b #$FF
#_06C7F1: STA.w $0DF0,X

#_06C7F4: RTS

;===================================================================================================

UpgradeFairy_HandleItemToss:
#_06C7F5: INC.w $0D80,X

#_06C7F8: PHX

#_06C7F9: LDA.w $1CE8
#_06C7FC: STA.w $0DB0,X

#_06C7FF: TAX

#_06C800: ASL A
#_06C801: TAY

#_06C802: LDA.w FairyPond_TossGFXID_pointer+0,Y
#_06C805: STA.b $00

#_06C807: LDA.w FairyPond_TossGFXID_pointer+1,Y
#_06C80A: STA.b $01

#_06C80C: LDA.l $7EF340,X
#_06C810: PHA

#_06C811: CPX.b #$20
#_06C813: BEQ .bottle

#_06C815: CPX.b #$03
#_06C817: BNE .not_bombs

.bottle
#_06C819: LDA.b #$01

;---------------------------------------------------------------------------------------------------

.not_bombs
#_06C81B: TAY

#_06C81C: LDA.b #$00
#_06C81E: STA.l $7EF340,X

#_06C822: LDA.b ($00),Y
#_06C824: PHA

#_06C825: TAX

#_06C826: LDY.b #$04
#_06C828: LDA.b #!ANCILLA_28
#_06C82A: JSL AncillaAdd_TossedPondItem

#_06C82E: JSL RefreshIcon_long

#_06C832: PLA
#_06C833: PLY
#_06C834: PLX

#_06C835: STA.w $0DC0,X

#_06C838: TYA
#_06C839: STA.w $0DE0,X

#_06C83C: LDA.b #$FF
#_06C83E: STA.w $0DF0,X

#_06C841: RTS

;===================================================================================================

FairyPondFairy_offset_x:
#_06C842: db $00

FairyPondFairy_offset_y:
#_06C843: db $50

;===================================================================================================

UpgradeFairy_SpawnFairy:
#_06C844: LDA.w $0DF0,X
#_06C847: BNE .exit

#_06C849: LDA.b #!SPRITE_72
#_06C84B: JSL Sprite_SpawnDynamically

#_06C84F: LDA.b #!SONG_1B
#_06C851: STA.w $012C

#_06C854: STZ.w $0133

#_06C857: LDA.b $00
#_06C859: SEC
#_06C85A: SBC.w FairyPondFairy_offset_x
#_06C85D: STA.w $0D10,Y

#_06C860: LDA.b $01
#_06C862: SBC.b #$00
#_06C864: STA.w $0D30,Y

#_06C867: LDA.b $02
#_06C869: SEC
#_06C86A: SBC.w FairyPondFairy_offset_y
#_06C86D: STA.w $0D00,Y

#_06C870: LDA.b $03
#_06C872: SBC.b #$00
#_06C874: STA.w $0D20,Y

#_06C877: LDA.b #$01
#_06C879: STA.w $0DA0,Y

#_06C87C: INC.w $0D80,X

#_06C87F: LDA.b #$FF
#_06C881: STA.w $0DF0,X

#_06C884: PHX

#_06C885: JSL Palette_AssertTranslucencySwap
#_06C889: JSL PaletteFilter_WishPonds

#_06C88D: PLX

#_06C88E: TYA
#_06C88F: STA.w $0E90,X

.exit
#_06C892: RTS

;===================================================================================================

UpgradeFairy_AskWhoDidThis:
#_06C893: LDA.b $1A
#_06C895: AND.b #$07
#_06C897: BNE .exit

#_06C899: PHX
#_06C89A: JSL PaletteFilter_SP5F
#_06C89E: PLX

#_06C89F: LDA.l $7EC007
#_06C8A3: BNE .exit

#_06C8A5: INC.w $0D80,X

; Message 0089
#_06C8A8: LDA.b #$89
#_06C8AA: LDY.b #$00
#_06C8AC: JSL Sprite_ShowMessageUnconditional

#_06C8B0: PHX

#_06C8B1: JSL Palette_RevertTranslucencySwap

#_06C8B5: STZ.b $1D

#_06C8B7: LDA.b #$20
#_06C8B9: STA.b $9A

#_06C8BB: INC.b $15

#_06C8BD: PLX

.exit
#_06C8BE: RTS

;===================================================================================================

UpgradeFairy_HandleAnswer:
#_06C8BF: LDA.w $1CE8
#_06C8C2: BNE .liar

#_06C8C4: INC.w $0D80,X

#_06C8C7: RTS

.liar
#_06C8C8: LDA.b #$0B
#_06C8CA: STA.w $0D80,X

#_06C8CD: RTS

;===================================================================================================

UpgradeFairy_HandleUpgrade:
#_06C8CE: INC.w $0D80,X

#_06C8D1: LDA.l $7EF3CA
#_06C8D5: BNE .fat_fairy

;---------------------------------------------------------------------------------------------------

#_06C8D7: LDA.w $0DC0,X
#_06C8DA: CMP.b #$0C
#_06C8DC: BNE .not_blue_boomerang

#_06C8DE: LDA.b #$2A ; red boom gfx
#_06C8E0: STA.w $0DC0,X

#_06C8E3: LDA.b #$01
#_06C8E5: STA.w $0EB0,X

#_06C8E8: BRA .what_a_nice_item

;---------------------------------------------------------------------------------------------------

.not_blue_boomerang
#_06C8EA: CMP.b #$04
#_06C8EC: BNE .not_fighter_shield

#_06C8EE: LDA.b #$05 ; fire shield gfx
#_06C8F0: STA.w $0DC0,X

#_06C8F3: LDA.b #$02
#_06C8F5: STA.w $0EB0,X

#_06C8F8: BRA .what_a_nice_item

;---------------------------------------------------------------------------------------------------

.not_fighter_shield
#_06C8FA: CMP.b #$16
#_06C8FC: BNE .not_empty_bottle_a

#_06C8FE: LDA.b #$2C ; green potion gfx
#_06C900: STA.w $0DC0,X

#_06C903: LDA.b #$03
#_06C905: STA.w $0EB0,X

#_06C908: BRA .what_a_nice_item

;---------------------------------------------------------------------------------------------------

.not_empty_bottle_a
#_06C90A: BRA .what_a_lame_item

;---------------------------------------------------------------------------------------------------

.fat_fairy
#_06C90C: LDA.w $0DC0,X
#_06C90F: CMP.b #$3A
#_06C911: BNE .not_normal_bow

#_06C913: LDA.b #$3B ; silver bow gfx
#_06C915: STA.w $0DC0,X

#_06C918: LDA.b #$04
#_06C91A: STA.w $0EB0,X

; Message 014D
#_06C91D: LDA.b #$4D
#_06C91F: LDY.b #$01
#_06C921: JSL Sprite_ShowMessageUnconditional

#_06C925: RTS

;---------------------------------------------------------------------------------------------------

.not_normal_bow
#_06C926: CMP.b #$02
#_06C928: BNE .not_tempered_sword

#_06C92A: LDA.b #$03 ; butter sword gfx
#_06C92C: STA.w $0DC0,X

#_06C92F: LDA.b #$05
#_06C931: STA.w $0EB0,X

#_06C934: BRA .what_a_nice_item

;---------------------------------------------------------------------------------------------------

.not_tempered_sword
#_06C936: CMP.b #$16
#_06C938: BNE .not_empty_bottle_b

#_06C93A: LDA.b #$2C ; green potion gfx
#_06C93C: STA.w $0DC0,X

#_06C93F: LDA.b #$03
#_06C941: STA.w $0EB0,X

#_06C944: BRA .what_a_nice_item

;---------------------------------------------------------------------------------------------------

.not_empty_bottle_b
#_06C946: BRA .what_a_lame_item

;---------------------------------------------------------------------------------------------------

.what_a_nice_item
; Message 008A
#_06C948: LDA.b #$8A
#_06C94A: LDY.b #$00
#_06C94C: JSL Sprite_ShowMessageUnconditional

#_06C950: RTS

;---------------------------------------------------------------------------------------------------

.what_a_lame_item
; Message 014B
#_06C951: LDA.b #$4B
#_06C953: LDY.b #$01
#_06C955: JSL Sprite_ShowMessageUnconditional

#_06C959: RTS

;===================================================================================================

UpgradeFairy_Retreat:
#_06C95A: LDA.w $0DE0,X
#_06C95D: TAY

#_06C95E: LDA.w $0DB0,X

#_06C961: PHX

#_06C962: TAX

#_06C963: TYA

#_06C964: CPX.b #$03
#_06C966: BNE .not_bombs

#_06C968: STA.l $7EF340,X

.not_bombs
#_06C96C: PLX

#_06C96D: INC.w $0D80,X

#_06C970: PHX

#_06C971: JSL Palette_AssertTranslucencySwap

#_06C975: LDA.b #$02
#_06C977: STA.b $1D

#_06C979: LDA.b #$30
#_06C97B: STA.b $9A

; Why is this an absolute?
#_06C97D: INC.w $0015

#_06C980: PLX

#_06C981: RTS

;===================================================================================================

UpgradeFairy_FixPalettes:
#_06C982: LDA.b $1A
#_06C984: AND.b #$07
#_06C986: BNE .exit

#_06C988: PHX

#_06C989: JSL PaletteFilter_SP5F

#_06C98D: PLX

#_06C98E: LDA.l $7EC007
#_06C992: CMP.b #$1E
#_06C994: BNE .delay

#_06C996: LDA.w $0E90,X
#_06C999: TAY

#_06C99A: LDA.b #$00
#_06C99C: STA.w $0DD0,Y

#_06C99F: BRA .exit

.delay
#_06C9A1: CMP.b #$00
#_06C9A3: BNE .exit

#_06C9A5: INC.w $0D80,X

.exit
#_06C9A8: RTS

;===================================================================================================

UpgradeFairy_HandleItemReceipt:
#_06C9A9: INC.w $0D80,X

#_06C9AC: PHX

#_06C9AD: JSL PaletteFilter_RestoreSP5F
#_06C9B1: JSL Palette_RevertTranslucencySwap

#_06C9B5: PLX
#_06C9B6: PHX

#_06C9B7: LDA.b #$02
#_06C9B9: STA.w $02E9

#_06C9BC: LDA.w $0DC0,X
#_06C9BF: TAY

#_06C9C0: JSL Link_ReceiveItem

#_06C9C4: PLX

#_06C9C5: RTS

;===================================================================================================

pool UpgradeFairy_FinalGoodBye

.message_low
#_06C9C6: db $8D ; Message 008D
#_06C9C7: db $8E ; Message 008E
#_06C9C8: db $90 ; Message 0090
#_06C9C9: db $8F ; Message 008F
#_06C9CA: db $91 ; Message 0091

.message_high
#_06C9CB: db $00
#_06C9CC: db $00
#_06C9CD: db $00
#_06C9CE: db $00
#_06C9CF: db $00

pool off

;---------------------------------------------------------------------------------------------------

UpgradeFairy_FinalGoodBye:
#_06C9D0: LDA.w $0EB0,X
#_06C9D3: BEQ .reset

#_06C9D5: DEC A
#_06C9D6: TAY

#_06C9D7: LDA.w .message_low,Y
#_06C9DA: XBA

#_06C9DB: LDA.w .message_high,Y
#_06C9DE: TAY

#_06C9DF: XBA

#_06C9E0: JSL Sprite_ShowMessageUnconditional

.reset
#_06C9E4: STZ.w $0D80,X

#_06C9E7: LDA.b #$FF
#_06C9E9: STA.w $0DF0,X

#_06C9EC: RTS

;===================================================================================================

UpgradeFairy_YouLiar:
#_06C9ED: INC.w $0D80,X

; Message 008B
#_06C9F0: LDA.b #$8B
#_06C9F2: LDY.b #$00
#_06C9F4: JSL Sprite_ShowMessageUnconditional

#_06C9F8: RTS

;===================================================================================================

UpgradeFairy_SecondChance:
#_06C9F9: LDA.w $1CE8
#_06C9FC: BNE .still_lying

#_06C9FE: INC.w $0D80,X

#_06CA01: RTS

.still_lying
#_06CA02: LDA.b #$06
#_06CA04: STA.w $0D80,X

#_06CA07: RTS

;===================================================================================================

UpgradeFairy_DebaseLink:
; Message 008C
#_06CA08: LDA.b #$8C
#_06CA0A: LDY.b #$00
#_06CA0C: JSL Sprite_ShowMessageUnconditional

#_06CA10: LDA.b #$07
#_06CA12: STA.w $0D80,X

#_06CA15: RTS

;===================================================================================================

pool SpriteDraw_ThinFairy

.offset_x
#_06CA16: db   0,  16,   0,   8,  16,  24,   0,   8
#_06CA1E: db  16,  24,   0,  16,   0,  16,   0,   8
#_06CA26: db  16,  24,   0,   8,  16,  24,   0,  16

.offset_y
#_06CA2E: db   0,   0,  16,  16,  16,  16,  24,  24
#_06CA36: db  24,  24,  32,  32,   0,   0,  16,  16
#_06CA3E: db  16,  16,  24,  24,  24,  24,  32,  32

.char
#_06CA46: db $C7, $C7, $CF, $CA, $CA, $CF, $DF, $DA
#_06CA4E: db $DA, $DF, $CB, $CB, $CD, $CD, $C9, $CA
#_06CA56: db $CA, $C9, $D9, $DA, $DA, $D9, $CB, $CB

.prop
#_06CA5E: db $00, $40, $00, $00, $40, $40, $00, $00
#_06CA66: db $40, $40, $00, $40, $00, $40, $00, $00
#_06CA6E: db $40, $40, $00, $00, $40, $40, $00, $40

.oam_sizes
#_06CA76: db $02, $02, $00, $00, $00, $00, $00, $00
#_06CA7E: db $00, $00, $02, $02, $02, $02, $00, $00
#_06CA86: db $00, $00, $00, $00, $00, $00, $02, $02

pool off

;===================================================================================================

pool SpriteDraw_FatFairy

.oam_groups
; group00
#_06CA8E: dw   0,   0 : db $E9, $00, $00, $02
#_06CA96: dw  16,   0 : db $E9, $40, $00, $02
#_06CA9E: dw   0,   0 : db $E9, $00, $00, $02
#_06CAA6: dw  16,   0 : db $E9, $40, $00, $02
#_06CAAE: dw   0,   0 : db $E9, $00, $00, $02
#_06CAB6: dw  16,   0 : db $E9, $40, $00, $02
#_06CABE: dw   0,  16 : db $EB, $00, $00, $02
#_06CAC6: dw  16,  16 : db $EB, $40, $00, $02
#_06CACE: dw   0,  32 : db $ED, $00, $00, $02
#_06CAD6: dw  16,  32 : db $ED, $40, $00, $02

; group01
#_06CADE: dw   0,   0 : db $EF, $00, $00, $00
#_06CAE6: dw  24,   0 : db $EF, $40, $00, $00
#_06CAEE: dw   0,   8 : db $FF, $00, $00, $00
#_06CAF6: dw  24,   8 : db $FF, $40, $00, $00
#_06CAFE: dw   0,   0 : db $E9, $00, $00, $02
#_06CB06: dw  16,   0 : db $E9, $40, $00, $02
#_06CB0E: dw   0,  16 : db $EB, $00, $00, $02
#_06CB16: dw  16,  16 : db $EB, $40, $00, $02
#_06CB1E: dw   0,  32 : db $ED, $00, $00, $02
#_06CB26: dw  16,  32 : db $ED, $40, $00, $02

pool off

;===================================================================================================

SpriteDraw_FairyQueen:
#_06CB2E: LDA.l $7EF3CA ; check light/dark world
#_06CB32: BNE SpriteDraw_FatFairy

;===================================================================================================

SpriteDraw_ThinFairy:
#_06CB34: JSR Sprite_PrepOAMCoord

#_06CB37: LDA.w $0DC0,X
#_06CB3A: ASL A
#_06CB3B: ASL A
#_06CB3C: STA.b $0D

#_06CB3E: LDA.w $0DC0,X
#_06CB41: ASL A ; x8
#_06CB42: ASL A
#_06CB43: ASL A
#_06CB44: ADC.b $0D
#_06CB46: STA.b $06

#_06CB48: PHX

;---------------------------------------------------------------------------------------------------

#_06CB49: LDX.b #$0B

.next_object
#_06CB4B: PHX

#_06CB4C: TXA
#_06CB4D: CLC
#_06CB4E: ADC.b $06
#_06CB50: TAX

#_06CB51: LDA.b $00
#_06CB53: CLC
#_06CB54: ADC.w .offset_x,X
#_06CB57: STA.b ($90),Y

#_06CB59: LDA.b $02
#_06CB5B: CLC
#_06CB5C: ADC.w .offset_y,X
#_06CB5F: INY
#_06CB60: STA.b ($90),Y

#_06CB62: LDA.w .char,X
#_06CB65: INY
#_06CB66: STA.b ($90),Y

#_06CB68: LDA.w .prop,X
#_06CB6B: ORA.b $05
#_06CB6D: INY
#_06CB6E: STA.b ($90),Y

#_06CB70: PHY

#_06CB71: TYA
#_06CB72: LSR A
#_06CB73: LSR A
#_06CB74: TAY

#_06CB75: LDA.w .oam_sizes,X
#_06CB78: STA.b ($92),Y

#_06CB7A: PLY
#_06CB7B: INY

#_06CB7C: PLX
#_06CB7D: DEX
#_06CB7E: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_06CB80: PLX

#_06CB81: LDY.b #$FF
#_06CB83: LDA.b #$0B
#_06CB85: JSR Sprite_CorrectOAMEntries

#_06CB88: RTS

;===================================================================================================

SpriteDraw_FatFairy:
#_06CB89: LDA.b #$0A
#_06CB8B: STA.b $06
#_06CB8D: STZ.b $07

#_06CB8F: LDA.w $0DC0,X

#_06CB92: ASL A
#_06CB93: ASL A

#_06CB94: ADC.w $0DC0,X

#_06CB97: ASL A
#_06CB98: ASL A
#_06CB99: ASL A
#_06CB9A: ASL A

#_06CB9B: ADC.b #.oam_groups>>0
#_06CB9D: STA.b $08

#_06CB9F: LDA.b #.oam_groups>>8
#_06CBA1: ADC.b #$00
#_06CBA3: STA.b $09

#_06CBA5: JSL Sprite_DrawMultiple_preset_quantity

#_06CBA9: RTS

;===================================================================================================

Sprite_71_Leever:
#_06CBAA: LDA.w $0D80,X
#_06CBAD: BEQ .underground

#_06CBAF: JSR SpriteDraw_Leever
#_06CBB2: BRA .respawn

.underground
#_06CBB4: JSR Sprite_PrepOAMCoord_wrapper

.respawn
#_06CBB7: LDA.w $0F00,X ; TODO can this succeed?
#_06CBBA: BEQ .dont_respawn

#_06CBBC: LDA.b #$08
#_06CBBE: STA.w $0DD0,X

.dont_respawn
#_06CBC1: JSR Sprite_CheckIfActive_Bank06
#_06CBC4: JSR Sprite_CheckIfRecoiling_Bank06

#_06CBC7: LDA.w $0D80,X

#_06CBCA: REP #$30

#_06CBCC: AND.w #$00FF
#_06CBCF: ASL A
#_06CBD0: TAY

#_06CBD1: LDA.w .vectors,Y
#_06CBD4: PHA

#_06CBD5: SEP #$30

#_06CBD7: RTS

;---------------------------------------------------------------------------------------------------

.vectors
#_06CBD8: dw Leever_Underground-1
#_06CBDA: dw Leever_Emerge-1
#_06CBDC: dw Leever_Attack-1
#_06CBDE: dw Leever_Dig-1

;===================================================================================================

Leever_Underground:
#_06CBE0: LDA.w $0DF0,X
#_06CBE3: STA.w $0BA0,X
#_06CBE6: BNE .delay

#_06CBE8: INC.w $0D80,X

#_06CBEB: LDA.b #$7F
#_06CBED: STA.w $0DF0,X

#_06CBF0: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_06CBF1: LDA.b #$10
#_06CBF3: JSR Sprite_ApplySpeedTowardsLink
#_06CBF6: JSR Sprite_Move_XY_Bank06
#_06CBF9: JSR Sprite_CheckTileCollision

#_06CBFC: RTS

;===================================================================================================

UNREACHABLE_06CBFD:
#_06CBFD: LDA.w $0DF0,X
#_06CC00: BNE .exit

#_06CC02: INC.w $0D80,X

#_06CC05: LDA.b #$7F
#_06CC07: STA.w $0DF0,X

.exit
#_06CC0A: RTS

;===================================================================================================

pool Leever_Emerge

.anim_step
#_06CC0B: db $0A, $09, $08, $07
#_06CC0F: db $06, $05, $04, $03
#_06CC13: db $02, $01, $02, $01
#_06CC17: db $02, $01, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

Leever_Emerge:
#_06CC1B: LDA.w $0DF0,X
#_06CC1E: STA.w $0BA0,X
#_06CC21: BNE .delay

#_06CC23: INC.w $0D80,X

#_06CC26: JSL GetRandomNumber
#_06CC2A: AND.b #$3F
#_06CC2C: ADC.b #$A0
#_06CC2E: STA.w $0DF0,X

#_06CC31: JMP.w Sprite_ZeroVelocity_XY_Bank06

;---------------------------------------------------------------------------------------------------

.delay
#_06CC34: LSR A
#_06CC35: LSR A
#_06CC36: LSR A
#_06CC37: TAY

#_06CC38: LDA.w .anim_step,Y
#_06CC3B: STA.w $0DC0,X

#_06CC3E: RTS

;===================================================================================================

pool Leever_Attack

.anim_step
#_06CC3F: db $09, $0A, $0B ; bleeds into next, weird

.speed
#_06CC42: db $0C, $08

pool off

;---------------------------------------------------------------------------------------------------

Leever_Attack:
#_06CC44: JSR Sprite_CheckDamageToAndFromLink_Bank06

#_06CC47: LDA.w $0DF0,X
#_06CC4A: BNE .delay

.tile_collision
#_06CC4C: INC.w $0D80,X

#_06CC4F: LDA.b #$7F
#_06CC51: STA.w $0DF0,X

#_06CC54: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_06CC55: LDA.w $0E80,X
#_06CC58: AND.b #$07
#_06CC5A: BNE .delay_turn

#_06CC5C: LDY.w $0D90,X

#_06CC5F: LDA.w .speed,Y
#_06CC62: JSR Sprite_ApplySpeedTowardsLink

.delay_turn
#_06CC65: JSR Sprite_Move_XY_Bank06
#_06CC68: JSR Sprite_CheckTileCollision

#_06CC6B: LDA.w $0E70,X
#_06CC6E: BNE .tile_collision

#_06CC70: INC.w $0E80,X

#_06CC73: LDA.w $0E80,X
#_06CC76: LSR A
#_06CC77: LSR A
#_06CC78: AND.b #$03
#_06CC7A: TAY

#_06CC7B: LDA.w .anim_step,Y
#_06CC7E: STA.w $0DC0,X

#_06CC81: RTS

;===================================================================================================

pool Leever_Dig

.anim_step
#_06CC82: db $0A, $09, $08, $07
#_06CC86: db $06, $05, $04, $03
#_06CC8A: db $02, $01, $02, $01
#_06CC8E: db $02, $01, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

Leever_Dig:
#_06CC92: LDA.w $0DF0,X
#_06CC95: STA.w $0BA0,X
#_06CC98: BNE .delay

#_06CC9A: STZ.w $0D80,X

#_06CC9D: JSL GetRandomNumber
#_06CCA1: AND.b #$1F
#_06CCA3: ADC.b #$40
#_06CCA5: STA.w $0DF0,X

#_06CCA8: RTS

.delay
#_06CCA9: LSR A
#_06CCAA: LSR A
#_06CCAB: LSR A
#_06CCAC: EOR.b #$0F
#_06CCAE: TAY

#_06CCAF: LDA.w .anim_step,Y
#_06CCB2: STA.w $0DC0,X

#_06CCB5: RTS

;===================================================================================================

UNREACHABLE_06CCB6:
#_06CCB6: RTS

;===================================================================================================
; TODO FORMAT INTO GROUPS
;===================================================================================================
pool SpriteDraw_Leever

.offset_x
#_06CCB7: dw   2,   6,   6,   6
#_06CCBF: dw   0,   8,   8,   8
#_06CCC7: dw   0,   8,   8,   8
#_06CCCF: dw   0,   8,   0,   8
#_06CCD7: dw   0,   8,   0,   8
#_06CCDF: dw   0,   0,   0,   8
#_06CCE7: dw   0,   0,   0,   8
#_06CCEF: dw   0,   0,   0,   8
#_06CCF7: dw   0,   0,   0,   8
#_06CCFF: dw   0,   0,   0,   0
#_06CD07: dw   0,   0,   0,   0
#_06CD0F: dw   0,   0,   0,   0
#_06CD17: dw   0,   0,   0,   0
#_06CD1F: dw   0,   0,   0,   0

;---------------------------------------------------------------------------------------------------

.offset_y
#_06CD27: dw   8,   8,   8,   8
#_06CD2F: dw   8,   8,   8,   8
#_06CD37: dw   8,   8,   8,   8
#_06CD3F: dw   5,   5,   8,   8
#_06CD47: dw   5,   5,   8,   8
#_06CD4F: dw   2,   2,   8,   8
#_06CD57: dw   1,   1,   8,   8
#_06CD5F: dw   0,   0,   8,   8
#_06CD67: dw  -1,  -1,   8,   8
#_06CD6F: dw   8,  -2,  -2,   0
#_06CD77: dw   8,  -2,  -2,   0
#_06CD7F: dw   8,  -2,  -2,   0
#_06CD87: dw   8,  -2,  -2,   0
#_06CD8F: dw   8,  -2,  -2,   0

;---------------------------------------------------------------------------------------------------

.char
#_06CD97: db $28, $28, $28, $28, $28, $28, $28, $28
#_06CD9F: db $38, $38, $38, $38, $08, $09, $28, $28
#_06CDA7: db $08, $09, $D9, $D9, $08, $08, $D8, $D8
#_06CDAF: db $08, $08, $DA, $DA, $06, $06, $D9, $D9
#_06CDB7: db $26, $26, $D8, $D8, $6C, $06, $06, $00
#_06CDBF: db $6C, $26, $26, $00, $6C, $06, $06, $00
#_06CDC7: db $6C, $26, $26, $00, $6C, $08, $08, $00

;---------------------------------------------------------------------------------------------------

.prop
#_06CDCF: db $01, $41, $41, $41, $01, $41, $41, $41
#_06CDD7: db $01, $41, $41, $41, $01, $01, $01, $41
#_06CDDF: db $01, $01, $00, $40, $01, $01, $00, $40
#_06CDE7: db $01, $01, $00, $40, $01, $01, $00, $40
#_06CDEF: db $00, $01, $00, $40, $06, $41, $41, $00
#_06CDF7: db $06, $41, $41, $00, $06, $01, $01, $00
#_06CDFF: db $06, $01, $01, $00, $06, $01, $01, $00

;---------------------------------------------------------------------------------------------------

.size
#_06CE07: db $00, $00, $00, $00, $00, $00, $00, $00
#_06CE0F: db $00, $00, $00, $00, $00, $00, $00, $00
#_06CE17: db $00, $00, $00, $00, $02, $02, $00, $00
#_06CE1F: db $02, $02, $00, $00, $02, $02, $00, $00
#_06CE27: db $02, $02, $00, $00, $02, $02, $02, $00
#_06CE2F: db $02, $02, $02, $00, $02, $02, $02, $00
#_06CE37: db $02, $02, $02, $00, $02, $02, $02, $00

;---------------------------------------------------------------------------------------------------

.object_count
#_06CE3F: db $01
#_06CE40: db $01
#_06CE41: db $01
#_06CE42: db $03
#_06CE43: db $03
#_06CE44: db $03
#_06CE45: db $03
#_06CE46: db $03
#_06CE47: db $03
#_06CE48: db $01
#_06CE49: db $01
#_06CE4A: db $01
#_06CE4B: db $01
#_06CE4C: db $01

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Leever:
#_06CE4D: JSR Sprite_PrepOAMCoord

#_06CE50: LDA.w $0DC0,X
#_06CE53: TAY

#_06CE54: ASL A
#_06CE55: ASL A
#_06CE56: STA.b $06

#_06CE58: PHX

#_06CE59: LDX.w .object_count,Y
#_06CE5C: LDY.b #$00

;---------------------------------------------------------------------------------------------------

.next_object
#_06CE5E: PHX

#_06CE5F: TXA
#_06CE60: CLC
#_06CE61: ADC.b $06
#_06CE63: PHA

#_06CE64: ASL A
#_06CE65: TAX

#_06CE66: REP #$20

#_06CE68: LDA.b $00
#_06CE6A: CLC
#_06CE6B: ADC.w .offset_x,X
#_06CE6E: STA.b ($90),Y

#_06CE70: AND.w #$0100
#_06CE73: STA.b $0E

#_06CE75: LDA.b $02
#_06CE77: CLC
#_06CE78: ADC.w .offset_y,X

#_06CE7B: INY
#_06CE7C: STA.b ($90),Y

#_06CE7E: CLC
#_06CE7F: ADC.w #$0010
#_06CE82: CMP.w #$0100

#_06CE85: SEP #$20
#_06CE87: BCC .on_screen

#_06CE89: LDA.b #$F0
#_06CE8B: STA.b ($90),Y

.on_screen
#_06CE8D: PLX

#_06CE8E: LDA.b $05
#_06CE90: PHA

#_06CE91: LDA.w .char,X
#_06CE94: INY
#_06CE95: STA.b ($90),Y

#_06CE97: CMP.b #$60
#_06CE99: BCS .change_props

#_06CE9B: CMP.b #$28
#_06CE9D: BEQ .change_props

#_06CE9F: CMP.b #$38
#_06CEA1: BNE .dont_change_props

.change_props
#_06CEA3: LDA.b $05
#_06CEA5: AND.b #$F0
#_06CEA7: STA.b $05

.dont_change_props
#_06CEA9: LDA.w .prop,X
#_06CEAC: ORA.b $05
#_06CEAE: INY
#_06CEAF: STA.b ($90),Y

#_06CEB1: PLA
#_06CEB2: STA.b $05

#_06CEB4: PHY

#_06CEB5: TYA
#_06CEB6: LSR A
#_06CEB7: LSR A
#_06CEB8: TAY

#_06CEB9: LDA.w .size,X
#_06CEBC: ORA.b $0F
#_06CEBE: STA.b ($92),Y

#_06CEC0: PLY
#_06CEC1: INY

#_06CEC2: PLX
#_06CEC3: DEX
#_06CEC4: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_06CEC6: PLX

#_06CEC7: RTS

;===================================================================================================

Sprite_D8_Heart:
#_06CEC8: JSR SpriteDraw_AbsorbableTransient
#_06CECB: JSR Sprite_CheckIfActive_Bank06

#_06CECE: JSR Sprite_CheckAbsorptionByPlayer
#_06CED1: JSR Sprite_HandleDraggingByAncilla

#_06CED4: JSR Sprite_Move_XY_Bank06
#_06CED7: JSR Sprite_Move_Z_Bank06

#_06CEDA: LDA.w $0F70,X
#_06CEDD: BPL .airborne

#_06CEDF: STZ.w $0F70,X

#_06CEE2: INC.w $0D80,X

#_06CEE5: STZ.w $0DC0,X

.airborne
#_06CEE8: LDA.w $0F50,X
#_06CEEB: AND.b #$BF
#_06CEED: STA.w $0F50,X

#_06CEF0: LDA.w $0D50,X
#_06CEF3: BMI .moving_left

.moving_right
#_06CEF5: LDA.w $0F50,X
#_06CEF8: EOR.b #$40
#_06CEFA: STA.w $0F50,X

.moving_left
#_06CEFD: LDA.w $0D80,X
#_06CF00: CMP.b #$03
#_06CF02: BCC .not_maxed

#_06CF04: LDA.b #$03

.not_maxed
#_06CF06: JSL JumpTableLocal
#_06CF0A: dw HeartRefill_InitializeAscent
#_06CF0C: dw HeartRefill_BeginDescending
#_06CF0E: dw HeartRefill_GlideGroundward
#_06CF10: dw Sprite_ZeroVelocity_XYZ_Bank06

;===================================================================================================

HeartRefill_InitializeAscent:
#_06CF12: INC.w $0D80,X

#_06CF15: LDA.b #$12
#_06CF17: STA.w $0DF0,X

#_06CF1A: LDA.b #$14
#_06CF1C: STA.w $0F80,X

#_06CF1F: LDA.b #$01
#_06CF21: STA.w $0DC0,X

#_06CF24: STZ.w $0DE0,X

#_06CF27: RTS

;===================================================================================================

HeartRefill_BeginDescending:
#_06CF28: LDA.w $0DF0,X
#_06CF2B: BNE .decelerate

#_06CF2D: INC.w $0D80,X

#_06CF30: LDA.b #$FD
#_06CF32: STA.w $0F80,X

#_06CF35: STZ.w $0D50,X

#_06CF38: RTS

.decelerate
#_06CF39: DEC.w $0F80,X

#_06CF3C: RTS

;===================================================================================================

pool HeartRefill_GlideGroundward

.speed
#_06CF3D: db  10, -10

pool off

;---------------------------------------------------------------------------------------------------

HeartRefill_GlideGroundward:
#_06CF3F: LDA.w $0DF0,X
#_06CF42: BNE .exit

#_06CF44: LDA.w $0DE0,X
#_06CF47: AND.b #$01
#_06CF49: TAY

#_06CF4A: LDA.w $0D50,X
#_06CF4D: CLC
#_06CF4E: ADC.w PositiveAndNegativeOne,Y
#_06CF51: STA.w $0D50,X

#_06CF54: CMP.w .speed,Y
#_06CF57: BNE .exit

#_06CF59: INC.w $0DE0,X

#_06CF5C: LDA.b #$08
#_06CF5E: STA.w $0DF0,X

.exit
#_06CF61: RTS

;===================================================================================================

Sprite_ZeroVelocity_XYZ_Bank06:
#_06CF62: STZ.w $0F80,X

;===================================================================================================

Sprite_ZeroVelocity_XY_Bank06:
#_06CF65: STZ.w $0D50,X
#_06CF68: STZ.w $0D40,X

#_06CF6B: RTS

;===================================================================================================
; Assuming an ancilla has latched on (via Ancilla_CheckSpriteCollision_Single)
; This will update the sprite's coordinates to match the ancilla
; Until the ancilla has despawned
;===================================================================================================
Sprite_HandleDraggingByAncilla:
#_06CF6C: LDA.w $0DA0,X
#_06CF6F: BEQ .exit ; No ancilla associated with this

#_06CF71: TAY ; get the ancilla's ID
#_06CF72: DEY

; Interestingly, this isn't concerned with what ancilla it is following
; If you nab an absorbable with an ancilla before it's actually active
; you can spawn a new ancilla in the old one's place and have it latched on
#_06CF73: LDA.w $0C4A,Y
#_06CF76: BEQ .handler_gone ; the ancilla is gone, so absorb

#_06CF78: LDA.w $0C04,Y
#_06CF7B: STA.w $0D10,X

#_06CF7E: LDA.w $0C18,Y
#_06CF81: STA.w $0D30,X

#_06CF84: LDA.w $0BFA,Y
#_06CF87: STA.w $0D00,X

#_06CF8A: LDA.w $0C0E,Y
#_06CF8D: STA.w $0D20,X

#_06CF90: STZ.w $0F70,X

.hard_exit
#_06CF93: PLA
#_06CF94: PLA

.exit
#_06CF95: RTS

;---------------------------------------------------------------------------------------------------

.handler_gone
#_06CF96: JSL Sprite_HandleAbsorptionByPlayer_long

#_06CF9A: BRA .hard_exit

;===================================================================================================

Sprite_E3_Fairy:
#_06CF9C: LDA.b #$01
#_06CF9E: STA.w $0BA0,X

#_06CFA1: LDA.w $0D80,X
#_06CFA4: BNE .continue

#_06CFA6: LDA.b $1B
#_06CFA8: BNE .indoors

#_06CFAA: LDA.b #$30
#_06CFAC: STA.w $0B89,X

.indoors
#_06CFAF: JSR SpriteDraw_AbsorbableTransient

.continue
#_06CFB2: JSR Fairy_CheckIfTouchable
#_06CFB5: JSR Sprite_CheckIfActive_Bank06

#_06CFB8: LDA.w $0D80,X
#_06CFBB: JSL JumpTableLocal
#_06CFBF: dw Fairy_Prancing
#_06CFC1: dw Fairy_HandleCapture

;===================================================================================================

Fairy_Prancing:
#_06CFC3: LDA.w $0F10,X
#_06CFC6: BNE .not_nabbed_directly

#_06CFC8: JSR Sprite_CheckDamageToLink
#_06CFCB: BCC .no_contact

#_06CFCD: JSL Sprite_HandleAbsorptionByPlayer_long
#_06CFD1: BRA .not_nabbed_directly

.no_contact
#_06CFD3: JSR Sprite_CheckDamageFromLink
#_06CFD6: BEQ .not_nabbed_directly

#_06CFD8: INC.w $0D80,X

; Message 00C7
#_06CFDB: LDA.b #$C7
#_06CFDD: LDY.b #$00
#_06CFDF: JSL Sprite_ShowMessageUnconditional

#_06CFE3: RTS

.not_nabbed_directly
#_06CFE4: JSR Sprite_HandleDraggingByAncilla
#_06CFE7: JSL Fairy_HandleMovement

#_06CFEB: RTS

;===================================================================================================

Fairy_HandleCapture:
#_06CFEC: LDA.w $1CE8
#_06CFEF: BNE .release

#_06CFF1: JSL Find_EmptyBottle
#_06CFF5: BMI .no_room

#_06CFF7: PHX

#_06CFF8: TAX

#_06CFF9: LDA.b #$06
#_06CFFB: STA.l $7EF35C,X

#_06CFFF: JSL RefreshIcon_long

#_06D003: PLX

#_06D004: STZ.w $0DD0,X

#_06D007: RTS

;---------------------------------------------------------------------------------------------------

.no_room
; Message 00C8
#_06D008: LDA.b #$C8
#_06D00A: LDY.b #$00
#_06D00C: JSL Sprite_ShowMessageUnconditional

.release
#_06D010: LDA.b #$30
#_06D012: STA.w $0F10,X

#_06D015: STZ.w $0D80,X

#_06D018: RTS

;===================================================================================================

Fairy_CheckIfTouchable:
#_06D019: LDA.b $11
#_06D01B: CMP.b #$02
#_06D01D: BNE .touchable

#_06D01F: REP #$20

#_06D021: LDA.w $1CF0

; Message 00C7
#_06D024: CMP.w #$00C7
#_06D027: BEQ .untouchable

; Message 00C8
#_06D029: CMP.w #$00C8
#_06D02C: BNE .touchable

.untouchable
#_06D02E: SEP #$30

#_06D030: LDA.b #$28
#_06D032: STA.w $0F10,X

.touchable
#_06D035: SEP #$30

#_06D037: RTS

;===================================================================================================

KeyRoomFlagMasks:
#_06D038: db $40, $20

;===================================================================================================

Sprite_E4_SmallKey:
Sprite_E5_BigKey:
#_06D03A: LDY.w $0CBA,X

#_06D03D: LDA.w $0403
#_06D040: AND.w KeyRoomFlagMasks,Y
#_06D043: BEQ .not_obtained

#_06D045: STZ.w $0DD0,X

#_06D048: RTS

.not_obtained
#_06D049: JSL Sprite_DrawRippleIfInWater
#_06D04D: JSR SpriteDraw_Absorbable

#_06D050: BRA Absorbable_Main

;===================================================================================================

Sprite_D9_GreenRupee:
Sprite_DA_BlueRupee:
Sprite_DB_RedRupee:
Sprite_DC_BombRefill1:
Sprite_DD_BombRefill4:
Sprite_DE_BombRefill8:
Sprite_DF_SmallMagicDecanter:
Sprite_E0_LargeMagicDecanter:
Sprite_E1_ArrowRefill5:
Sprite_E2_ArrowRefill10:
Sprite_E6_StolenShield:
#_06D052: JSL Sprite_DrawRippleIfInWater
#_06D056: JSR SpriteDraw_AbsorbableTransient

;===================================================================================================

Absorbable_Main:
#_06D059: JSR Sprite_CheckIfActive_Bank06
#_06D05C: JSR Sprite_Move_Z_Bank06
#_06D05F: JSR Sprite_Move_XY_Bank06

#_06D062: LDA.w $0EE0,X
#_06D065: BNE .skip_tile_collision

#_06D067: JSR Sprite_CheckTileCollision
#_06D06A: JSR Sprite_BounceOffWall

.skip_tile_collision
#_06D06D: LDA.w $0F80,X
#_06D070: SEC
#_06D071: SBC.b #$02
#_06D073: STA.w $0F80,X

#_06D076: LDA.w $0F70,X
#_06D079: BPL .aloft

#_06D07B: STZ.w $0F70,X

#_06D07E: LDA.w $0D50,X
#_06D081: ASL A
#_06D082: ROR.w $0D50,X

#_06D085: LDA.w $0D40,X
#_06D088: ASL A
#_06D089: ROR.w $0D40,X

#_06D08C: LDA.w $0F80,X
#_06D08F: EOR.b #$FF
#_06D091: INC A

#_06D092: LSR A
#_06D093: CMP.b #$09
#_06D095: BCS .no_bounce

#_06D097: JSR Sprite_ZeroVelocity_XYZ_Bank06
#_06D09A: BRA .aloft

;---------------------------------------------------------------------------------------------------

.no_bounce
#_06D09C: STA.w $0F80,X

#_06D09F: LDA.l $7FF9C2,X
#_06D0A3: CMP.b #$08
#_06D0A5: BEQ .water_tile

#_06D0A7: CMP.b #$09
#_06D0A9: BNE .not_water_tile

.water_tile
#_06D0AB: STZ.w $0F80,X

#_06D0AE: JSL Sprite_SpawnSmallSplash
#_06D0B2: BMI .aloft

#_06D0B4: LDA.w $0E60,X
#_06D0B7: AND.b #$20
#_06D0B9: BEQ .aloft

#_06D0BB: LDA.w $0D10,Y
#_06D0BE: SBC.b #$04
#_06D0C0: STA.w $0D10,Y

#_06D0C3: LDA.w $0D30,Y
#_06D0C6: SBC.b #$00
#_06D0C8: STA.w $0D30,Y

#_06D0CB: LDA.w $0D00,Y
#_06D0CE: SBC.b #$04
#_06D0D0: STA.w $0D00,Y

#_06D0D3: LDA.w $0D20,Y
#_06D0D6: SBC.b #$00
#_06D0D8: STA.w $0D20,Y

#_06D0DB: BRA .aloft

;---------------------------------------------------------------------------------------------------

.not_water_tile
#_06D0DD: LDA.w $0E20,X
#_06D0E0: CMP.b #!SPRITE_E4
#_06D0E2: BCC .aloft

#_06D0E4: LDA.b $1B
#_06D0E6: BEQ .aloft

#_06D0E8: LDA.b #!SFX2_05
#_06D0EA: JSL SpriteSFX_QueueSFX2WithPan

.aloft
#_06D0EE: JSR Sprite_HandleDraggingByAncilla
#_06D0F1: JSR Sprite_CheckAbsorptionByPlayer

#_06D0F4: RTS

;===================================================================================================

Absorbable_HandleBlink:
#_06D0F5: LDA.w $0B58,X
#_06D0F8: BEQ .exit

#_06D0FA: LDA.b $11
#_06D0FC: ORA.w $0FC1
#_06D0FF: BNE .exit

#_06D101: LDA.b $1A
#_06D103: LSR A
#_06D104: BCS .delay_tick

#_06D106: DEC.w $0B58,X

.delay_tick
#_06D109: LDA.w $0B58,X
#_06D10C: BNE .dont_disappear

#_06D10E: STZ.w $0DD0,X

.dont_disappear
#_06D111: CMP.b #$28
#_06D113: BCS .exit

#_06D115: LSR A
#_06D116: BCS .exit

#_06D118: JSR Sprite_PrepOAMCoord_wrapper

#_06D11B: PLA
#_06D11C: PLA

.exit
#_06D11D: RTS

;===================================================================================================

Sprite_CheckAbsorptionByPlayer:
#_06D11E: LDA.w $0F10,X
#_06D121: BNE .exit

#_06D123: JSR Sprite_CheckDamageToLink_staggered
#_06D126: BCC .exit

#_06D128: JSL Sprite_HandleAbsorptionByPlayer_long

.exit
#_06D12C: RTS

;===================================================================================================
; This should not be a long routine. Everything that calls it is in bank06.
;===================================================================================================
Sprite_HandleAbsorptionByPlayer_long:
#_06D12D: PHB
#_06D12E: PHK
#_06D12F: PLB

#_06D130: JSR Sprite_HandleAbsorptionByPlayer

#_06D133: PLB

#_06D134: RTL

;===================================================================================================

Absorbable_SFX3:
#_06D135: db !SFX3_0B ; heart
#_06D136: db !SFX3_0A ; green rupee
#_06D137: db !SFX3_0A ; blue rupee
#_06D138: db !SFX3_0A ; red rupee
#_06D139: db !SFX3_0B ; bomb refill 1
#_06D13A: db !SFX3_0B ; bomb refill 4
#_06D13B: db !SFX3_0B ; bomb refill 8
#_06D13C: db !SFX3_0B ; small magic
#_06D13D: db !SFX3_0B ; full magic
#_06D13E: db !SFX3_0B ; arrow refill 5
#_06D13F: db !SFX3_0B ; arrow refill 10
#_06D140: db !SFX3_0B ; faerie
#_06D141: db !SFX3_2F ; small key
#_06D142: db !SFX3_2F ; big key
#_06D143: db !SFX3_0B ; stolen shield

;---------------------------------------------------------------------------------------------------

Sprite_HandleAbsorptionByPlayer:
#_06D144: STZ.w $0DD0,X

#_06D147: LDA.w $0E20,X
#_06D14A: SEC
#_06D14B: SBC.b #$D8
#_06D14D: TAY

#_06D14E: LDA.w Absorbable_SFX3,Y
#_06D151: JSL SpriteSFX_QueueSFX3WithPan

#_06D155: TYA
#_06D156: JSL JumpTableLocal
#_06D15A: dw Absorb_Heart
#_06D15C: dw Absorb_Rupee
#_06D15E: dw Absorb_Rupee
#_06D160: dw Absorb_Rupee
#_06D162: dw Absorb_Bomb
#_06D164: dw Absorb_Bomb
#_06D166: dw Absorb_Bomb
#_06D168: dw Absorb_SmallMagic
#_06D16A: dw Absorb_FullMagic
#_06D16C: dw Absorb_Arrows_5
#_06D16E: dw Absorb_Arrows_10
#_06D170: dw Absorb_Fairy
#_06D172: dw Absorb_SmallKey
#_06D174: dw Absorb_BigKey
#_06D176: dw Absorb_Shield

;===================================================================================================
; The value here is saved when the pikit nabs the shield.
;===================================================================================================
Absorb_Shield:
#_06D178: LDA.w $0E30,X
#_06D17B: STA.l $7EF35A

#_06D17F: RTS

;===================================================================================================

Absorb_BigKey:
#_06D180: STZ.w $02E9
#_06D183: LDY.b #!ITEMGET_32

#_06D185: PHX

#_06D186: JSL Link_ReceiveItem

#_06D18A: PLX

#_06D18B: BRA Absorb_FlagKey

;===================================================================================================

Absorb_SmallKey:
#_06D18D: LDA.l $7EF36F
#_06D191: INC A
#_06D192: STA.l $7EF36F

;===================================================================================================

Absorb_FlagKey:
#_06D196: LDA.w $0E30,X
#_06D199: STA.w $0BC0,X

#_06D19C: LDY.w $0CBA,X

#_06D19F: LDA.w $0403
#_06D1A2: ORA.w KeyRoomFlagMasks,Y
#_06D1A5: STA.w $0403

#_06D1A8: JSL Sprite_ManuallySetDeathFlagUW

#_06D1AC: RTS

;===================================================================================================

Absorb_Fairy:
#_06D1AD: LDA.b #!SFX2_31
#_06D1AF: JSL SpriteSFX_QueueSFX2WithPan

#_06D1B3: LDA.b #$38 ; 7*$08
#_06D1B5: BRA Absorb_AddHealth

;===================================================================================================

Absorb_Heart:
#_06D1B7: LDA.b #$08

;===================================================================================================

Absorb_AddHealth:
#_06D1B9: CLC
#_06D1BA: ADC.l $7EF372
#_06D1BE: STA.l $7EF372

#_06D1C2: RTS

;===================================================================================================

pool Absorb_Rupee

.denomination
#_06D1C3: db  1
#_06D1C4: db  5
#_06D1C5: db  20

pool off

;---------------------------------------------------------------------------------------------------

Absorb_Rupee:
#_06D1C6: LDY.w $0E20,X

#_06D1C9: LDA.b #$00
#_06D1CB: XBA

#_06D1CC: LDA.w .denomination-$D9,Y ; D9 being the sprite ID of a green

#_06D1CF: REP #$20

#_06D1D1: CLC
#_06D1D2: ADC.l $7EF360
#_06D1D6: STA.l $7EF360

#_06D1DA: SEP #$20

#_06D1DC: RTS

;===================================================================================================

pool Absorb_Bomb

.megatonnage
#_06D1DD: db 1
#_06D1DE: db 4
#_06D1DF: db 8

pool off

;---------------------------------------------------------------------------------------------------

Absorb_Bomb:
#_06D1E0: LDY.w $0E20,X

#_06D1E3: LDA.w .megatonnage-$DC,Y ; DC being the sprite ID of a single bomb
#_06D1E6: CLC
#_06D1E7: ADC.l $7EF375
#_06D1EB: STA.l $7EF375

#_06D1EF: RTS

;===================================================================================================

Absorb_SmallMagic:
#_06D1F0: LDA.l $7EF373
#_06D1F4: CLC
#_06D1F5: ADC.b #$10
#_06D1F7: BRA Absorb_AddMagic

;===================================================================================================

Absorb_FullMagic:
#_06D1F9: LDA.b #$80

;===================================================================================================

Absorb_AddMagic:
#_06D1FB: STA.l $7EF373

#_06D1FF: RTS

;===================================================================================================
; Reads the quantity of arrows as a value in $0EB0,X
; defaults to 5
;===================================================================================================
Absorb_Arrows_5:
#_06D200: LDA.w $0EB0,X
#_06D203: BNE Absorb_AddArrows

#_06D205: LDA.b #5
#_06D207: BRA Absorb_AddArrows

;===================================================================================================

Absorb_Arrows_10:
#_06D209: LDA.b #10

;===================================================================================================

Absorb_AddArrows:
#_06D20B: CLC
#_06D20C: ADC.l $7EF376
#_06D210: STA.l $7EF376

#_06D214: RTS

;===================================================================================================

pool SpriteDraw_Absorbable

.gfx_shape
#_06D215: db $00 ; heart
#_06D216: db $01 ; green rupee
#_06D217: db $01 ; blue rupee
#_06D218: db $01 ; red rupee
#_06D219: db $02 ; bomb refill 1
#_06D21A: db $02 ; bomb refill 4
#_06D21B: db $02 ; bomb refill 8
#_06D21C: db $00 ; small magic
#_06D21D: db $01 ; full magic
#_06D21E: db $01 ; arrow refill 5
#_06D21F: db $02 ; arrow refill 10
#_06D220: db $02 ; faerie
#_06D221: db $01 ; small key
#_06D222: db $02 ; big key
#_06D223: db $02 ; stolen shield

.numeral
#_06D224: db $00 ; heart
#_06D225: db $00 ; green rupee
#_06D226: db $00 ; blue rupee
#_06D227: db $00 ; red rupee
#_06D228: db $01 ; bomb refill 1
#_06D229: db $02 ; bomb refill 4
#_06D22A: db $03 ; bomb refill 8
#_06D22B: db $00 ; small magic
#_06D22C: db $00 ; full magic
#_06D22D: db $04 ; arrow refill 5
#_06D22E: db $05 ; arrow refill 10
#_06D22F: db $00 ; faerie
#_06D230: db $00 ; small key
#_06D231: db $00 ; big key
#_06D232: db $00 ; stolen shield

pool off

;===================================================================================================

UNREACHABLE_06D233:
#_06D233: db $02, $04, $06, $02

;===================================================================================================

SpriteDraw_AbsorbableTransient:
#_06D237: JSR Absorbable_HandleBlink

;===================================================================================================

SpriteDraw_Absorbable:
#_06D23A: LDA.w $0FB3
#_06D23D: BNE .continue

#_06D23F: LDA.b $1B
#_06D241: BEQ .continue

#_06D243: LDA.b #$30
#_06D245: STA.w $0B89,X

.continue
#_06D248: LDA.w $0FC6
#_06D24B: CMP.b #$03
#_06D24D: BCS .exit

#_06D24F: LDA.w $0E10,X
#_06D252: BEQ .use_selected_region

#_06D254: LDA.b #$0C
#_06D256: JSL OAM_AllocateFromRegionC

.use_selected_region
#_06D25A: LDA.w $0E90,X
#_06D25D: BNE .abort

#_06D25F: LDY.w $0E20,X

#_06D262: LDA.w .numeral-$D8,Y
#_06D265: BEQ .not_special

#_06D267: JMP.w .draw_special_char

;---------------------------------------------------------------------------------------------------

.not_special
#_06D26A: LDA.w .gfx_shape-$D8,Y
#_06D26D: BNE .not_8x8

#_06D26F: JMP.w SpriteDraw_SingleSmall

;---------------------------------------------------------------------------------------------------

.not_8x8
#_06D272: CMP.b #$02
#_06D274: BNE .is_8x16

;---------------------------------------------------------------------------------------------------

#_06D276: LDA.w $0E20,X
#_06D279: CMP.b #!SPRITE_E6
#_06D27B: BNE .not_shield

#_06D27D: LDA.w $0E30,X
#_06D280: CMP.b #$01
#_06D282: BEQ .is_8x16

#_06D284: LDA.b #$01
#_06D286: STA.w $0DC0,X

.not_shield
#_06D289: JMP.w SpriteDraw_SingleLarge

;---------------------------------------------------------------------------------------------------

.is_8x16
#_06D28C: JMP.w Sprite_DrawThinAndTall

;---------------------------------------------------------------------------------------------------

.abort
#_06D28F: PLA
#_06D290: PLA

.exit
#_06D291: RTS

;===================================================================================================
; TODO arrange into groups
.numbered_offset_x
#_06D292: dw   0,   0,   8,   0
#_06D29A: dw   0,   8,   0,   0
#_06D2A2: dw   8,   0,   0,   2
#_06D2AA: dw   0,   0,   2,   0
#_06D2B2: dw   0,   0

;===================================================================================================

#Octorok_hflip:
#_06D2B6: db $40, $00, $00, $00

;===================================================================================================

.numbered_offset_y
#_06D2BA: dw   0,   0,   8,   0
#_06D2C2: dw   0,   8,   0,   0
#_06D2CA: dw   8,   0,   8,   8
#_06D2D2: dw   0,   8,   8,   0
#_06D2DA: dw   8,   8

;---------------------------------------------------------------------------------------------------

.number_char
#_06D2DE: db $6E, $6E, $68, $6E, $6E, $78, $6E, $6E
#_06D2E6: db $79, $63, $73, $69, $63, $73, $6A, $63
#_06D2EE: db $73, $73

;---------------------------------------------------------------------------------------------------

.number_prop
#_06D2F0: db $02, $02, $00, $02, $02, $00, $02, $02
#_06D2F8: db $00, $00, $00, $00, $00, $00, $00, $00
#_06D300: db $00, $00

;---------------------------------------------------------------------------------------------------

.draw_special_char
#_06D302: DEC A
#_06D303: STA.b $06

#_06D305: JSR Sprite_PrepOAMCoord

#_06D308: LDA.b $06
#_06D30A: ASL A
#_06D30B: ADC.b $06
#_06D30D: STA.b $06

#_06D30F: PHX

#_06D310: LDA.w $0EB0,X
#_06D313: CMP.b #$01

#_06D315: LDX.b #$02
#_06D317: BCC .next_object

#_06D319: DEX

;---------------------------------------------------------------------------------------------------

.next_object
#_06D31A: PHX

#_06D31B: TXA
#_06D31C: CLC
#_06D31D: ADC.b $06
#_06D31F: PHA

#_06D320: ASL A
#_06D321: TAX

#_06D322: REP #$20

#_06D324: LDA.b $00
#_06D326: CLC
#_06D327: ADC.w .numbered_offset_x,X
#_06D32A: STA.b ($90),Y

#_06D32C: AND.w #$0100
#_06D32F: STA.b $0E

#_06D331: LDA.b $02
#_06D333: CLC
#_06D334: ADC.w .numbered_offset_y,X

#_06D337: INY
#_06D338: STA.b ($90),Y

#_06D33A: CLC
#_06D33B: ADC.w #$0010
#_06D33E: CMP.w #$0100

#_06D341: SEP #$20
#_06D343: BCC .on_screen

#_06D345: LDA.b #$F0
#_06D347: STA.b ($90),Y

.on_screen
#_06D349: PLX

#_06D34A: LDA.w .number_char,X
#_06D34D: INY
#_06D34E: STA.b ($90),Y

#_06D350: INY

#_06D351: LDA.b $05
#_06D353: STA.b ($90),Y

#_06D355: PHY

#_06D356: TYA
#_06D357: LSR A
#_06D358: LSR A
#_06D359: TAY

#_06D35A: LDA.w .number_prop,X
#_06D35D: ORA.b $0F
#_06D35F: STA.b ($92),Y

#_06D361: PLY
#_06D362: INY

#_06D363: PLX
#_06D364: DEX
#_06D365: BPL .next_object

#_06D367: PLX

#_06D368: JMP.w SpriteDraw_Shadow

;===================================================================================================

pool Sprite_08_Octorok

.direction
#_06D36B: db   3,   2,   0,   1

.speed_x
#_06D36F: db  24, -24,   0,   0

.speed_y
#_06D373: db   0,   0,  24, -24

.unused
#_06D377: db $01, $02, $04, $08

.timer
#_06D37B: db  60, 128, 160, 128

pool off

;===================================================================================================

Sprite_08_Octorok:
#Sprite_0A_Octorok4way:
#_06D37F: LDY.w $0DE0,X ; save direction
#_06D382: PHY

#_06D383: LDA.w $0E00,X ; this timer only appears used by the 4 way shooters
#_06D386: BEQ .not_spinning

#_06D388: LDA.w .direction,Y
#_06D38B: STA.w $0DE0,X

.not_spinning
#_06D38E: STZ.b $00

; What a weird and dumb way to handle the horizontal flip for these
#_06D390: LDA.w $0DC0,X
#_06D393: CMP.b #$07
#_06D395: BNE .no_flip

#_06D397: LDA.b #$40 ; set hflip if animation step 7
#_06D399: STA.b $00

.no_flip
#_06D39B: LDA.w $0F50,X ; clear out hflip bit
#_06D39E: AND.b #$BF
#_06D3A0: ORA.w Octorok_hflip,Y ; also set hflip if direction 0
#_06D3A3: ORA.b $00
#_06D3A5: STA.w $0F50,X

#_06D3A8: JSR SpriteDraw_Octorok

#_06D3AB: PLA ; recover direction from before for movement
#_06D3AC: STA.w $0DE0,X

#_06D3AF: JSR Sprite_CheckIfActive_Bank06
#_06D3B2: JSR Sprite_CheckIfRecoiling_Bank06
#_06D3B5: JSR Sprite_Move_XY_Bank06
#_06D3B8: JSR Sprite_CheckDamageToAndFromLink_Bank06

#_06D3BB: LDA.w $0D80,X
#_06D3BE: AND.b #$01
#_06D3C0: BNE .octorok_used_barrage

#_06D3C2: LDA.w $0DE0,X
#_06D3C5: AND.b #$02
#_06D3C7: ASL A
#_06D3C8: STA.b $00

#_06D3CA: INC.w $0E80,X

#_06D3CD: LDA.w $0E80,X
#_06D3D0: LSR A
#_06D3D1: LSR A
#_06D3D2: LSR A
#_06D3D3: AND.b #$03
#_06D3D5: ORA.b $00
#_06D3D7: STA.w $0DC0,X

#_06D3DA: LDA.w $0DF0,X
#_06D3DD: BNE .wait

#_06D3DF: INC.w $0D80,X

#_06D3E2: LDY.w $0E20,X

#_06D3E5: LDA.w .timer-8,Y
#_06D3E8: STA.w $0DF0,X

#_06D3EB: RTS

;---------------------------------------------------------------------------------------------------

.wait
#_06D3EC: LDY.w $0DE0,X

#_06D3EF: LDA.w .speed_x,Y
#_06D3F2: STA.w $0D50,X

#_06D3F5: LDA.w .speed_y,Y
#_06D3F8: STA.w $0D40,X

#_06D3FB: JSR Sprite_CheckTileCollision
#_06D3FE: LDA.w $0E70,X ; turn around on collision
#_06D401: BEQ .no_collision

#_06D403: LDA.w $0DE0,X
#_06D406: EOR.b #$01
#_06D408: STA.w $0DE0,X

#_06D40B: BRA .exit

.no_collision
#_06D40D: RTS

;---------------------------------------------------------------------------------------------------

.octorok_used_barrage
#_06D40E: JSR Sprite_ZeroVelocity_XY_Bank06

#_06D411: LDA.w $0DF0,X
#_06D414: BNE Octorock_ShootEmUp

#_06D416: INC.w $0D80,X

#_06D419: LDA.w $0DE0,X
#_06D41C: PHA

#_06D41D: JSL GetRandomNumber
#_06D421: AND.b #$3F
#_06D423: ADC.b #$30
#_06D425: STA.w $0DF0,X

#_06D428: AND.b #$03
#_06D42A: STA.w $0DE0,X

#_06D42D: PLA
#_06D42E: CMP.w $0DE0,X
#_06D431: BEQ .exit

#_06D433: EOR.w $0DE0,X
#_06D436: BNE .exit

#_06D438: LDA.b #$08
#_06D43A: STA.w $0E00,X

.exit
#_06D43D: RTS

;===================================================================================================

Octorock_ShootEmUp:
#_06D43E: LDA.w $0E20,X ; get the octorok type
#_06D441: SEC
#_06D442: SBC.b #$08

#_06D444: REP #$30 ; if they left Y as 8 bit

#_06D446: AND.w #$00FF ; they wouldn't need this
#_06D449: ASL A
#_06D44A: TAY

#_06D44B: LDA.w .vectors,Y
#_06D44E: DEC A
#_06D44F: PHA

#_06D450: SEP #$30

#_06D452: RTS

.vectors
#_06D453: dw Octorok_ShootSingle ; Sprite 08
#_06D455: dw $0000
#_06D457: dw Octorok_Shoot4Ways ; Sprite 0A

;===================================================================================================

pool Octorok_ShootSingle

.mouth_anim_step
#_06D459: db $00, $02, $02, $02
#_06D45D: db $01, $01, $01, $00
#_06D461: db $00, $00, $00, $00
#_06D465: db $02, $02, $02, $02
#_06D469: db $02, $01, $01, $00

pool off

;===================================================================================================

pool Octorok_Shoot4Ways

.mouth_anim_step
#_06D46D: db $02, $02, $02, $02
#_06D471: db $02, $02, $02, $02
#_06D475: db $01, $00

pool off

;===================================================================================================

Octorok_ShootSingle:
#_06D477: LDA.w $0DF0,X
#_06D47A: CMP.b #$1C
#_06D47C: BNE .bide_time

#_06D47E: PHA

#_06D47F: JSR Octorok_FireLoogie

#_06D482: PLA

.bide_time
#_06D483: LSR A
#_06D484: LSR A
#_06D485: LSR A
#_06D486: TAY

#_06D487: LDA.w .mouth_anim_step,Y
#_06D48A: STA.w $0DB0,X

#_06D48D: RTS

;===================================================================================================

pool Octorok_Shoot4Ways

.next_direction
#_06D48E: db $02, $03, $01, $00

pool off

;---------------------------------------------------------------------------------------------------

Octorok_Shoot4Ways:
#_06D492: LDA.w $0DF0,X
#_06D495: PHA

#_06D496: CMP.b #$80
#_06D498: BCS .animate

#_06D49A: AND.b #$0F
#_06D49C: BNE .delay_turn

#_06D49E: PHA

#_06D49F: LDY.w $0DE0,X

#_06D4A2: LDA.w .next_direction,Y
#_06D4A5: STA.w $0DE0,X

#_06D4A8: PLA

.delay_turn
#_06D4A9: CMP.b #$08
#_06D4AB: BNE .animate

#_06D4AD: JSR Octorok_FireLoogie

.animate
#_06D4B0: PLA
#_06D4B1: LSR A; /16
#_06D4B2: LSR A
#_06D4B3: LSR A
#_06D4B4: LSR A
#_06D4B5: TAY

#_06D4B6: LDA.w .mouth_anim_step,Y
#_06D4B9: STA.w $0DB0,X

#_06D4BC: RTS

;===================================================================================================

pool Octorok_FireLoogie

.offset_x_low
#_06D4BD: db  12, -12,   0,   0

.offset_x_high
#_06D4C1: db   0,  -1,   0,   0

.offset_y_low
#_06D4C5: db   4,   4,  12, -12

.offset_y_high
#_06D4C9: db   0,   0,   0,  -1

.rock_speed_x
#_06D4CD: db  44, -44,   0,   0

.rock_speed_y
#_06D4D1: db   0,   0,  44, -44

pool off

;---------------------------------------------------------------------------------------------------

Octorok_FireLoogie:
#_06D4D5: LDA.b #!SFX2_07
#_06D4D7: JSL SpriteSFX_QueueSFX2WithPan

#_06D4DB: LDA.b #!SPRITE_0C
#_06D4DD: JSL Sprite_SpawnDynamically
#_06D4E1: BMI .fired_a_blank ; we had no room :(

#_06D4E3: PHX ; save sprite slot of octorok

#_06D4E4: LDA.w $0DE0,X ; offset the rock's position based on its direction
#_06D4E7: TAX

#_06D4E8: LDA.b $00
#_06D4EA: CLC
#_06D4EB: ADC.w .offset_x_low,X
#_06D4EE: STA.w $0D10,Y

#_06D4F1: LDA.b $01
#_06D4F3: ADC.w .offset_x_high,X
#_06D4F6: STA.w $0D30,Y

#_06D4F9: LDA.b $02
#_06D4FB: CLC
#_06D4FC: ADC.w .offset_y_low,X
#_06D4FF: STA.w $0D00,Y

#_06D502: LDA.b $03
#_06D504: ADC.w .offset_y_high,X
#_06D507: STA.w $0D20,Y

#_06D50A: LDA.w $0DE0,Y ; set speed based on direction
#_06D50D: TAX

#_06D50E: LDA.w .rock_speed_x,X
#_06D511: STA.w $0D50,Y

#_06D514: LDA.w .rock_speed_y,X
#_06D517: STA.w $0D40,Y

#_06D51A: PLX

.fired_a_blank
#_06D51B: RTS

;===================================================================================================

pool SpriteDraw_Octorok

.mouth_offset_x
#_06D51C: dw   8,   0,   4,   8,   0,   4,   9,  -1,   4

.mouth_offset_y
#_06D52E: dw   6,   6,   9,   6,   6,   9,   6,   6,   9

.mouth_char
#_06D540: db $BB, $BB, $BA, $AB, $AB, $AA, $A9, $A9, $B9

.mouth_props
#_06D549: db $65, $25, $25, $65, $25, $25, $65, $25, $25

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Octorok:
#_06D552: JSR Sprite_PrepOAMCoord

#_06D555: LDA.w $0DE0,X
#_06D558: CMP.b #$03
#_06D55A: BEQ .no_mouth

;---------------------------------------------------------------------------------------------------

#_06D55C: LDA.w $0DB0,X
#_06D55F: ASL A
#_06D560: ADC.w $0DB0,X
#_06D563: ADC.w $0DE0,X
#_06D566: STA.b $07

#_06D568: PHX
#_06D569: PHA

#_06D56A: ASL A
#_06D56B: TAX

#_06D56C: REP #$20

#_06D56E: LDA.b $00
#_06D570: CLC
#_06D571: ADC.w .mouth_offset_x,X
#_06D574: STA.b ($90),Y

#_06D576: AND.w #$0100
#_06D579: STA.b $0E

#_06D57B: LDA.b $02
#_06D57D: CLC
#_06D57E: ADC.w .mouth_offset_y,X

#_06D581: INY
#_06D582: STA.b ($90),Y

#_06D584: CLC
#_06D585: ADC.w #$0010
#_06D588: CMP.w #$0100

#_06D58B: SEP #$20
#_06D58D: BCC .on_screen

#_06D58F: LDA.b #$F0
#_06D591: STA.b ($90),Y

.on_screen
#_06D593: PLX

#_06D594: LDA.w .mouth_char,X
#_06D597: INY
#_06D598: STA.b ($90),Y

#_06D59A: LDA.w .mouth_props,X
#_06D59D: INY
#_06D59E: ORA.b $05
#_06D5A0: STA.b ($90),Y

#_06D5A2: LDA.b $0F
#_06D5A4: STA.b ($92)

#_06D5A6: PLX

;---------------------------------------------------------------------------------------------------

.no_mouth
#_06D5A7: REP #$20

#_06D5A9: LDA.b $90 ; advance the OAM table by 1 entry for the body
#_06D5AB: CLC
#_06D5AC: ADC.w #$0004
#_06D5AF: STA.b $90

#_06D5B1: INC.b $92

#_06D5B3: SEP #$20

#_06D5B5: DEC.w $0E40,X ; less OAM allotment

#_06D5B8: LDY.b #$00
#_06D5BA: JSR SpriteDraw_SingleLarge_skipcoords

#_06D5BD: INC.w $0E40,X

#_06D5C0: RTS

;===================================================================================================

Sprite_0C_OctorokStone:
#_06D5C1: LDA.w $0DD0,X
#_06D5C4: CMP.b #$06
#_06D5C6: BNE OctorokStone_Active

;===================================================================================================

OctorokStone_Crumbling:
#_06D5C8: JSR SpriteDraw_OctorokStoneCrumbling
#_06D5CB: JSR Sprite_CheckIfActivePermissive_Bank06

#_06D5CE: LDA.w $0DF0,X
#_06D5D1: CMP.b #$1E
#_06D5D3: BNE .exit

#_06D5D5: LDA.b #!SFX2_1F
#_06D5D7: JSL SpriteSFX_QueueSFX2WithPan

.exit
#_06D5DB: RTS

;===================================================================================================

OctorokStone_Active:
#_06D5DC: JSR SpriteDraw_SingleLarge
#_06D5DF: JSR Sprite_CheckIfActive_Bank06
#_06D5E2: JSR Sprite_CheckDamageToLink
#_06D5E5: JSR Sprite_Move_XY_Bank06

#_06D5E8: TXA
#_06D5E9: EOR.b $1A
#_06D5EB: AND.b #$03
#_06D5ED: BNE .exit

#_06D5EF: JSR Sprite_CheckTileCollision

#_06D5F2: LDA.w $0E70,X
#_06D5F5: BEQ .exit

#_06D5F7: JSR Sprite_PrepareToDie

.exit
#_06D5FA: RTS

;===================================================================================================

pool SpriteDraw_OctorokStoneCrumbling

.offset_x
#_06D5FB: dw   0,   8,   0,   8,  -8,  16,  -8,  16
#_06D60B: dw -12,  20, -12,  20, -14,  22, -14,  22

.offset_y
#_06D61B: dw   0,   0,   8,   8,  -8,  -8,  16,  16
#_06D62B: dw -12, -12,  20,  20, -14, -14,  22,  22

.flip
#_06D63B: db $00, $40, $80, $C0, $00, $40, $80, $C0
#_06D643: db $00, $40, $80, $C0, $00, $40, $80, $C0

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_OctorokStoneCrumbling:
#_06D64B: JSR Sprite_PrepOAMCoord

#_06D64E: PHX

#_06D64F: LDA.b #$03
#_06D651: STA.b $06

#_06D653: LDA.w $0DF0,X
#_06D656: LSR A
#_06D657: AND.b #$0C
#_06D659: EOR.b #$0C

#_06D65B: CLC
#_06D65C: ADC.b $06
#_06D65E: TAX

;---------------------------------------------------------------------------------------------------

.next_object
#_06D65F: PHX

#_06D660: TXA
#_06D661: ASL A
#_06D662: TAX

#_06D663: REP #$20

#_06D665: LDA.b $00
#_06D667: CLC
#_06D668: ADC.w .offset_x,X
#_06D66B: STA.b ($90),Y

#_06D66D: AND.w #$0100
#_06D670: STA.b $0E

#_06D672: LDA.b $02
#_06D674: CLC
#_06D675: ADC.w .offset_y,X

#_06D678: INY
#_06D679: STA.b ($90),Y

#_06D67B: CLC
#_06D67C: ADC.w #$0010
#_06D67F: CMP.w #$0100

#_06D682: SEP #$20
#_06D684: BCC .on_screen

#_06D686: LDA.b #$F0
#_06D688: STA.b ($90),Y

.on_screen
#_06D68A: PLX

#_06D68B: LDA.b #$BC
#_06D68D: INY
#_06D68E: STA.b ($90),Y

#_06D690: LDA.w .flip,X
#_06D693: ORA.b #$2D
#_06D695: INY
#_06D696: STA.b ($90),Y

#_06D698: PHY

#_06D699: TYA
#_06D69A: LSR A
#_06D69B: LSR A
#_06D69C: TAY

#_06D69D: LDA.b $0F
#_06D69F: STA.b ($92),Y

#_06D6A1: PLY
#_06D6A2: INY

#_06D6A3: DEX
#_06D6A4: DEC.b $06
#_06D6A6: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_06D6A8: PLX

#_06D6A9: RTS

;===================================================================================================

pool Sprite_0F_Octoballoon

.altitude

#_06D6AA: db  16,  17,  18,  19
#_06D6AE: db  20,  19,  18,  17

pool off

;---------------------------------------------------------------------------------------------------

Sprite_0F_Octoballoon:
#_06D6B2: LDA.w $0E80,X

#_06D6B5: LSR A
#_06D6B6: LSR A
#_06D6B7: LSR A

#_06D6B8: AND.b #$07
#_06D6BA: TAY

#_06D6BB: LDA.w .altitude,Y
#_06D6BE: STA.w $0F70,X

#_06D6C1: JSR Octoballoon_DrawAndBabies
#_06D6C4: JSR Sprite_CheckIfActive_Bank06

#_06D6C7: LDA.w $0DF0,X
#_06D6CA: BNE .dont_explode

#_06D6CC: LDA.b #$03
#_06D6CE: STA.w $0DF0,X

#_06D6D1: LDY.b #$0F

.next_sprite
#_06D6D3: LDA.w $0DD0,Y
#_06D6D6: BEQ .am_dead

#_06D6D8: LDA.w $0E20,Y
#_06D6DB: CMP.b #!SPRITE_10
#_06D6DD: BEQ .dont_explode

.am_dead
#_06D6DF: DEY
#_06D6E0: BPL .next_sprite

#_06D6E2: LDA.b #$06
#_06D6E4: STA.w $0DD0,X

#_06D6E7: JMP.w Octoballoon_TimeToDie

;---------------------------------------------------------------------------------------------------

.dont_explode
#_06D6EA: JSR Sprite_CheckIfRecoiling_Bank06

#_06D6ED: INC.w $0E80,X

#_06D6F0: TXA
#_06D6F1: EOR.b $1A
#_06D6F3: AND.b #$0F
#_06D6F5: BNE .continue

#_06D6F7: LDA.b #$04
#_06D6F9: JSR Sprite_ProjectSpeedTowardsLink

#_06D6FC: LDA.w $0D40,X
#_06D6FF: CMP.b $00
#_06D701: BEQ .at_target_y_speed
#_06D703: BPL .slowdown_y

#_06D705: INC.w $0D40,X

#_06D708: BRA .at_target_y_speed

.slowdown_y
#_06D70A: DEC.w $0D40,X

;---------------------------------------------------------------------------------------------------

.at_target_y_speed
#_06D70D: LDA.w $0D50,X
#_06D710: CMP.b $01
#_06D712: BEQ .continue
#_06D714: BPL .slowdown_x

#_06D716: INC.w $0D50,X

#_06D719: BRA .continue

.slowdown_x
#_06D71B: DEC.w $0D50,X

;---------------------------------------------------------------------------------------------------

.continue
#_06D71E: JSR Sprite_Move_XY_Bank06
#_06D721: JSR Sprite_CheckDamageToLink
#_06D724: BCC .no_contact

#_06D726: JSR Octoballoon_RecoilLink

.no_contact
#_06D729: JSR Sprite_CheckDamageFromLink
#_06D72C: JSR Sprite_CheckTileCollision
#_06D72F: JSR Sprite_BounceOffWall

#_06D732: RTS

;===================================================================================================

Octoballoon_RecoilLink:
#_06D733: LDA.b $46
#_06D735: BNE .exit

#_06D737: LDA.b #$04
#_06D739: STA.b $46

#_06D73B: LDA.b #$10
#_06D73D: JSR Sprite_ApplyRecoilToLink

#_06D740: JSR Sprite_InvertSpeed_XY

.exit
#_06D743: RTS

;===================================================================================================

pool Octoballoon_DrawAndBabies

.offset_x
#_06D744: dw  -4,   4,  -4,   4
#_06D74C: dw  -8,   8,  -8,   8
#_06D754: dw  -4,   4,  -4,   4

.offset_y
#_06D75C: dw  -4,  -4,   4,   4
#_06D764: dw  -8,  -8,   8,   8
#_06D76C: dw  -4,  -4,   4,   4

.char
#_06D774: db $8C, $8C, $9C, $9C
#_06D778: db $86, $86, $86, $86
#_06D77C: db $86, $86, $86, $86

.flip
#_06D780: db $00, $40, $00, $40
#_06D784: db $00, $40, $80, $C0
#_06D788: db $00, $40, $80, $C0

pool off

;---------------------------------------------------------------------------------------------------

Octoballoon_DrawAndBabies:
#_06D78C: STZ.b $0A

#_06D78E: LDA.w $0DD0,X
#_06D791: CMP.b #$06
#_06D793: BNE .not_dying

#_06D795: LDA.w $0DF0,X
#_06D798: CMP.b #$06
#_06D79A: BNE .no_baby

#_06D79C: LDA.b $11
#_06D79E: BNE .no_baby

#_06D7A0: JSR Octoballoon_FormBabby

.no_baby
#_06D7A3: LDA.w $0DF0,X
#_06D7A6: LSR A
#_06D7A7: AND.b #$04
#_06D7A9: CLC
#_06D7AA: ADC.b #$04
#_06D7AC: STA.b $0A

.not_dying
#_06D7AE: JSR Sprite_PrepOAMCoord

#_06D7B1: PHX

#_06D7B2: LDA.b #$03
#_06D7B4: STA.b $0B

#_06D7B6: CLC
#_06D7B7: ADC.b $0A

#_06D7B9: TAX

.next_object
#_06D7BA: PHX

#_06D7BB: TXA
#_06D7BC: ASL A
#_06D7BD: TAX

#_06D7BE: REP #$20

#_06D7C0: LDA.b $00
#_06D7C2: CLC
#_06D7C3: ADC.w .offset_x,X
#_06D7C6: STA.b ($90),Y

#_06D7C8: AND.w #$0100
#_06D7CB: STA.b $0E

#_06D7CD: LDA.b $02
#_06D7CF: CLC
#_06D7D0: ADC.w .offset_y,X

#_06D7D3: INY
#_06D7D4: STA.b ($90),Y

#_06D7D6: CLC
#_06D7D7: ADC.w #$0010
#_06D7DA: CMP.w #$0100

#_06D7DD: SEP #$20
#_06D7DF: BCC .on_screen

#_06D7E1: LDA.b #$F0
#_06D7E3: STA.b ($90),Y

.on_screen
#_06D7E5: PLX

#_06D7E6: LDA.w .char,X
#_06D7E9: INY
#_06D7EA: STA.b ($90),Y

#_06D7EC: LDA.w .flip,X
#_06D7EF: ORA.b $05
#_06D7F1: INY
#_06D7F2: STA.b ($90),Y

#_06D7F4: PHY

#_06D7F5: TYA
#_06D7F6: LSR A
#_06D7F7: LSR A
#_06D7F8: TAY

#_06D7F9: LDA.b #$02
#_06D7FB: ORA.b $0F
#_06D7FD: STA.b ($92),Y

#_06D7FF: PLY
#_06D800: INY

#_06D801: DEX

#_06D802: DEC.b $0B
#_06D804: BPL .next_object

#_06D806: PLX

#_06D807: JMP.w SpriteDraw_Shadow

;===================================================================================================

pool Octoballoon_FormBabby

.speed_x
#_06D80A: db  16,  11, -11, -16, -11,  11

.speed_y
#_06D810: db   0,  11,  11,   0, -11, -11

pool off

;---------------------------------------------------------------------------------------------------

Octoballoon_FormBabby:
#_06D816: LDA.b #!SFX2_0C
#_06D818: JSL SpriteSFX_QueueSFX2WithPan

#_06D81C: LDA.b #$05
#_06D81E: STA.b $0D

.nth_child
#_06D820: LDA.b #!SPRITE_10
#_06D822: JSL Sprite_SpawnDynamically
#_06D826: BMI .no_room

#_06D828: JSL Sprite_SetSpawnedCoordinates

#_06D82C: PHX

#_06D82D: LDX.b $0D

#_06D82F: LDA.w .speed_x,X
#_06D832: STA.w $0D50,Y

#_06D835: LDA.w .speed_y,X
#_06D838: STA.w $0D40,Y

#_06D83B: LDA.b #$30
#_06D83D: STA.w $0F80,Y

#_06D840: LDA.b #$FF
#_06D842: STA.w $0E80,Y

#_06D845: PLX

.no_room
#_06D846: DEC.b $0D
#_06D848: BPL .nth_child

#_06D84A: RTS

;===================================================================================================

UNREACHABLE_06D84B:
#_06D84B: db $00, $03, $05, $08, $0A, $0C, $0D, $0E
#_06D853: db $0F, $0E, $0D, $0C, $0A, $08, $05, $03

;===================================================================================================

Sprite_10_OctoballoonBaby:
#_06D85B: LDA.w $0E80,X
#_06D85E: BNE .alive

#_06D860: STZ.w $0DD0,X

.alive
#_06D863: CMP.b #$40
#_06D865: BCS .not_blinking

#_06D867: AND.b #$01
#_06D869: BNE .dont_draw

.not_blinking
#_06D86B: JSR SpriteDraw_SingleSmall

.dont_draw
#_06D86E: JSR Sprite_CheckIfActive_Bank06

#_06D871: DEC.w $0E80,X

#_06D874: JSR Sprite_CheckIfRecoiling_Bank06

#_06D877: DEC.w $0F80,X

#_06D87A: JSR Sprite_Move_Z_Bank06

#_06D87D: LDA.w $0F70,X
#_06D880: BPL .airborne

#_06D882: STZ.w $0F70,X

#_06D885: LDA.b #$10
#_06D887: STA.w $0F80,X

.airborne
#_06D88A: JSR Sprite_Move_XY_Bank06
#_06D88D: JSR Sprite_CheckTileCollision
#_06D890: JSR Sprite_BounceOffWall

;===================================================================================================

Sprite_CheckDamageToAndFromLink_Bank06:
#_06D893: JSR Sprite_CheckDamageFromLink
#_06D896: JSR Sprite_CheckDamageToLink

#_06D899: RTS

;===================================================================================================

pool Sprite_0D_Buzzblob

.anim_step
#_06D89A: db $00, $01, $00, $02

.palette
#_06D89E: db $0A, $02, $08, $02

pool off

;---------------------------------------------------------------------------------------------------

Sprite_0D_Buzzblob:
#_06D8A2: LDA.w $0E00,X
#_06D8A5: BEQ .not_electrified

#_06D8A7: LSR A
#_06D8A8: AND.b #$03
#_06D8AA: TAY

#_06D8AB: LDA.w $0B89,X
#_06D8AE: AND.b #$F1
#_06D8B0: ORA.w .palette,Y
#_06D8B3: STA.w $0B89,X

.not_electrified
#_06D8B6: JSL Sprite_Cukeman
#_06D8BA: JSR SpriteDraw_Buzzblob

#_06D8BD: LDA.w $0E80,X

#_06D8C0: LSR A
#_06D8C1: LSR A
#_06D8C2: LSR A

#_06D8C3: AND.b #$03
#_06D8C5: TAY

#_06D8C6: LDA.w .anim_step,Y

#_06D8C9: LDY.w $0E00,X
#_06D8CC: BEQ .normal_anim_step

#_06D8CE: INC A
#_06D8CF: INC A
#_06D8D0: INC A

.normal_anim_step
#_06D8D1: STA.w $0DC0,X

#_06D8D4: JSR Sprite_CheckIfActive_Bank06
#_06D8D7: JSR Sprite_CheckIfRecoiling_Bank06

#_06D8DA: INC.w $0E80,X

#_06D8DD: LDA.w $0DF0,X
#_06D8E0: BNE .delay

#_06D8E2: JSR Buzzblob_SelectNewDirection

.delay
#_06D8E5: LDA.w $0E00,X
#_06D8E8: BNE .immobile

#_06D8EA: JSR Sprite_Move_XY_Bank06

.immobile
#_06D8ED: JSR Sprite_CheckTileCollision
#_06D8F0: JSR Sprite_BounceOffWall

#_06D8F3: JMP.w Sprite_CheckDamageToAndFromLink_Bank06

;===================================================================================================

pool Buzzblob_SelectNewDirection

.speed_x
#_06D8F6: db  3,  2, -2, -3, -2,  2,  0,  0

.speed_y
#_06D8FE: db  0,  2,  2,  0, -2, -2,  0,  0

.timers
#_06D906: db 48, 48, 48, 48, 48, 48, 64, 64

pool off

;---------------------------------------------------------------------------------------------------

Buzzblob_SelectNewDirection:
#_06D90E: JSL GetRandomNumber
#_06D912: AND.b #$07
#_06D914: TAY

#_06D915: LDA.w .speed_x,Y
#_06D918: STA.w $0D50,X

#_06D91B: LDA.w .speed_y,Y
#_06D91E: STA.w $0D40,X

#_06D921: LDA.w .timers,Y
#_06D924: STA.w $0DF0,X

#_06D927: RTS

;===================================================================================================

pool SpriteDraw_Buzzblob

.offset_x
#_06D928: dw   0,   8,   0

.offset_y
#_06D92E: dw  -8,  -8,   0

.char
#_06D934: db $F0, $F0, $E1
#_06D937: db $00, $00, $CE
#_06D93A: db $00, $00, $CE
#_06D93D: db $E3, $E3, $CA
#_06D940: db $E4, $E5, $CC
#_06D943: db $E5, $E4, $CC

.flip
#_06D946: db $00, $40, $00
#_06D949: db $00, $00, $00
#_06D94C: db $00, $00, $40
#_06D94F: db $00, $40, $00
#_06D952: db $00, $00, $00
#_06D955: db $40, $40, $40

.size
#_06D958: db $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Buzzblob:
#_06D95B: JSR Sprite_PrepOAMCoord

#_06D95E: PHX

#_06D95F: LDA.w $0DC0,X
#_06D962: ASL A
#_06D963: ADC.w $0DC0,X
#_06D966: STA.b $06

#_06D968: LDX.b #$02

.next_object
#_06D96A: PHX

#_06D96B: TXA
#_06D96C: ASL A
#_06D96D: TAX

#_06D96E: REP #$20

#_06D970: LDA.b $00
#_06D972: CLC
#_06D973: ADC.w .offset_x,X
#_06D976: STA.b ($90),Y

#_06D978: AND.w #$0100
#_06D97B: STA.b $0E

#_06D97D: LDA.b $02
#_06D97F: CLC
#_06D980: ADC.w .offset_y,X

#_06D983: INY
#_06D984: STA.b ($90),Y

#_06D986: CLC
#_06D987: ADC.w #$0010
#_06D98A: CMP.w #$0100

#_06D98D: SEP #$20
#_06D98F: BCC .on_screen

#_06D991: LDA.b #$F0
#_06D993: STA.b ($90),Y

.on_screen
#_06D995: PLX
#_06D996: PHX

#_06D997: TXA
#_06D998: CLC
#_06D999: ADC.b $06
#_06D99B: TAX

#_06D99C: INY

#_06D99D: LDA.w .char,X
#_06D9A0: STA.b ($90),Y
#_06D9A2: BNE .dont_skip

#_06D9A4: DEY

#_06D9A5: LDA.b #$F0
#_06D9A7: STA.b ($90),Y

#_06D9A9: INY

.dont_skip
#_06D9AA: LDA.w .flip,X
#_06D9AD: ORA.b $05
#_06D9AF: INY
#_06D9B0: STA.b ($90),Y

#_06D9B2: PLX

#_06D9B3: PHY

#_06D9B4: TYA
#_06D9B5: LSR A
#_06D9B6: LSR A
#_06D9B7: TAY

#_06D9B8: LDA.w .size,X
#_06D9BB: ORA.b $0F
#_06D9BD: STA.b ($92),Y

#_06D9BF: PLY
#_06D9C0: INY

#_06D9C1: DEX
#_06D9C2: BPL .next_object

#_06D9C4: PLX

#_06D9C5: JMP.w SpriteDraw_Shadow

;===================================================================================================

Sprite_BounceOffWall:
#_06D9C8: LDA.w $0E70,X
#_06D9CB: AND.b #$03
#_06D9CD: BEQ .no_horizontal_collision

#_06D9CF: JSR Sprite_InvertSpeed_X

.no_horizontal_collision
#_06D9D2: LDA.w $0E70,X
#_06D9D5: AND.b #$0C
#_06D9D7: BEQ .no_vertical_collision

#_06D9D9: JSR Sprite_InvertSpeed_Y

.no_vertical_collision
#_06D9DC: RTS

;===================================================================================================
; These do what's on the tin
;===================================================================================================
Sprite_InvertSpeed_XY:
#_06D9DD: JSR Sprite_InvertSpeed_Y

;===================================================================================================

Sprite_InvertSpeed_X:
#_06D9E0: LDA.w $0D50,X
#_06D9E3: EOR.b #$FF
#_06D9E5: INC A
#_06D9E6: STA.w $0D50,X

#_06D9E9: RTS

;===================================================================================================

Sprite_InvertSpeed_Y:
#_06D9EA: LDA.w $0D40,X
#_06D9ED: EOR.b #$FF
#_06D9EF: INC A
#_06D9F0: STA.w $0D40,X

#_06D9F3: RTS

;===================================================================================================

Sprite_CheckIfActive_Bank06:
#_06D9F4: LDA.w $0DD0,X
#_06D9F7: CMP.b #$09
#_06D9F9: BNE .inactive

;---------------------------------------------------------------------------------------------------

#Sprite_CheckIfActivePermissive_Bank06:
#_06D9FB: LDA.w $0FC1
#_06D9FE: BNE .inactive

#_06DA00: LDA.b $11
#_06DA02: BNE .inactive

#_06DA04: LDA.w $0CAA,X
#_06DA07: BMI .active

#_06DA09: LDA.w $0F00,X
#_06DA0C: BEQ .active

.inactive
#_06DA0E: PLA
#_06DA0F: PLA

.active
#_06DA10: RTS

;===================================================================================================
; This table converts a sprite's ID to a class
; Add the values in $0E20,X and $0DC0,X to get a class
; use that class to index SpriteDraw_ClassToChar ($06:DB0C)
; TODO verify all
;===================================================================================================
SpriteDraw_IDtoClass:

; 0x00 - TODO
#_06DA11: db $A0, $A2, $A0, $A2
#_06DA15: db $80, $82, $80, $82

; 0x08 - Cucco
#_06DA19: db $EA, $EC

; 0x0A - Octorok stone
#_06DA1B: db $84

; 0x0B - Buzz blob
#_06DA1C: db $4E, $61

; 0x0D - Octoballoon baby
#_06DA1E: db $BD

; 0x0E - Kodongo fire
#_06DA1F: db $8C

; 0x0F - Red guard/Elder
#_06DA20: db $20, $22

; 0x11 - Hoarder
#_06DA22: db $C0, $C2

; 0x13 - Poe
#_06DA24: db $E6

; 0x14 - Crystal switch
#_06DA25: db $E4

; 0x15 - Sluggula
#_06DA26: db $82, $AA, $84, $AC
#_06DA2A: db $80, $A0

; 0x1B - Water switch
#_06DA2C: db $CA

; 0x1C - Flute kid
#_06DA2D: db $AF

; 0x1D - Heart
#_06DA2E: db $29, $39

; 0x1F - Rupees
#_06DA30: db $0B

; 0x20 - Bombs
#_06DA31: db $6E

; 0x21 - Small magic
#_06DA32: db $60

; 0x22 - Full magic
#_06DA33: db $62

; 0x23 - Arrows
#_06DA34: db $63

; 0x24 - Mirror portal
#_06DA35: db $4C

; 0x25 - Fairy
#_06DA36: db $EA, $EC

; 0x27 - Bonk item
#_06DA38: db $24

; 0x28 - Small key
#_06DA39: db $6B

; 0x29 - Mushroom
#_06DA3A: db $24

; 0x2A - Bari
#_06DA3B: db $22, $24, $26, $20
#_06DA3F: db $30, $21

; 0x30 - Cannonball
#_06DA41: db $2A, $24

; 0x32 - Rat
#_06DA43: db $86, $88, $8A, $8C
#_06DA47: db $8E, $A2

; 0x38 - Rope
#_06DA49: db $A4, $A6, $A8

; 0x3B - Mothula beam
#_06DA4C: db $AA

; 0x3C - Keese
#_06DA4D: db $84, $80, $82

; 0x3F - Bomb
#_06DA50: db $6E

; 0x40 - Popo
#_06DA51: db $40, $42

; 0x42 - Hoarder/Spike block
#_06DA53: db $E6, $E8

; 0x44 - Cannonball
#_06DA55: db $80, $82

; 0x46 - Zora
#_06DA57: db $C8

; 0x47 - Zora/fireball
#_06DA58: db $8D

; 0x48 - Lost woods bird
#_06DA59: db $E3, $E5

; 0x4A - Lost woods squirrel
#_06DA5B: db $C5, $E1

; 0x4C - Archery game guy
#_06DA5D: db $04, $24

; 0x4E - Wall cannon
#_06DA5F: db $0E, $2E, $0C, $0A

; 0x52 - Big fairy
#_06DA63: db $9C, $C7, $B6, $B7

; 0x56 - Mini helmasaur
#_06DA67: db $60, $62, $64, $66
#_06DA6B: db $68, $6A

; 0x5C - Bee
#_06DA6D: db $E4, $F4

; 0x5E - Green stalfos
#_06DA6F: db $02, $02, $00, $04

; 0x62 - Aga balls
#_06DA73: db $C6, $CC, $CE

; 0x65 - Fire snake
#_06DA76: db $28

; 0x66 - Spark
#_06DA77: db $84, $82, $80

; 0x69 - Apple
#_06DA7A: db $E5

; 0x6A - Big key
#_06DA7B: db $24

; 0x6B - Stalfos head
#_06DA7C: db $00, $02, $04

; 0x6E - Kodongo
#_06DA7F: db $A0, $AA, $A4, $A6
#_06DA83: db $AC, $A2, $A8

; 0x75 - Arrghi/Wizzrobe
#_06DA86: db $A6, $88, $86

; 0x78 - Terror pin
#_06DA89: db $8E, $AE, $8A

; 0x7B - Blob
#_06DA8C: db $42, $44, $42, $44
#_06DA90: db $64, $66

; 0x81 - King Helmasaur fireball
#_06DA92: db $CC, $CC, $CA

; 0x84 - Pirogusu
#_06DA95: db $87, $97, $8E, $AE
#_06DA99: db $AC, $8C, $8E, $AA
#_06DA9D: db $AC

; 0x8D - Laser eye
#_06DA9E: db $D2, $F3

; 0x8F - Master sword
#_06DAA0: db $84, $A2, $84, $A4
#_06DAA4: db $E7

; 0x94 - Kyameron
#_06DAA5: db $8A, $A8, $8A, $A8
#_06DAA9: db $88, $A0, $A4, $A2
#_06DAAD: db $A6, $A6, $A6, $A6

; 0xA0 - Zoro
#_06DAB1: db $7E, $7F

; 0xA2 - Haunted grove rabbit
#_06DAB3: db $8A, $88, $8C, $A6

; 0xA6 - Haunted grove bird
#_06DAB7: db $86, $8E, $AC, $86

; 0xAA - Hobo
#_06DABB: db $BB, $AC, $A9, $B9
#_06DABF: db $AA, $BA, $BC

; 0xB1 - Falling ice
#_06DAC2: db $8A, $8E, $8A, $86

; 0xB5 - Zazak fire ball
#_06DAC6: db $0A

; 0xB6 - Deadrock
#_06DAC7: db $C2, $C4, $E2, $E4
#_06DACB: db $C6

; 0xBB - Magic bat
#_06DACC: db $EA, $EC

; 0xBD - Zirro bomb
#_06DACE: db $FF

; 0xBE - Vitreous small eye
#_06DACF: db $E6, $C6

; 0xC0 - Lightning
#_06DAD1: db $CC, $EC, $CE, $EE
#_06DAD5: db $4C, $6C, $4E, $6E

; 0xC8 - Raven
#_06DAD9: db $C8, $C4, $C6

; 0xCB - Mini moldorm
#_06DADC: db $88, $8C

; 0xCD - Heart container
#_06DADE: db $24

; 0xCE - Heart piece
#_06DADF: db $E0

; 0xCF - King Helmasaur
#_06DAE0: db $AE, $C0, $C8, $C4
#_06DAE4: db $C6, $E2, $E0

; 0xD6 - Purple chest
#_06DAE7: db $EE

; 0xD7 - Gibo
#_06DAE8: db $AE

; 0xD8 - Pokey
#_06DAE9: db $A0, $80

; 0xDA - Whirlpool
#_06DAEB: db $EE

; 0xDB - Bully/Victim
#_06DAEC: db $C0, $C2, $BF

; 0xDE - Chain chomp
#_06DAEF: db $8C, $AA, $86, $A8
#_06DAF3: db $A6

; 0xE3 - Trinexx
#_06DAF4: db $2C, $28, $06

; 0xE6 - Bomb shop guy
#_06DAF7: db $DF, $CF, $A9

; 0xE9 - Shopkeeper
#_06DAFA: db $46, $46

; 0xEB - Swamola
#_06DAFC: db $EA, $C0, $C2, $E0
#_06DB00: db $E8, $E2, $E6, $E4

; 0xF3 - Waterfall
#_06DB04: db $0B

; 0xF4 - Ganon
#_06DB05: db $8E, $A0

; 0xF6 - Stolen shield
#_06DB07: db $EC, $EA

; 0xF8 - Talking tree
#_06DB09: db $E9

; 0xF9 - Boulder
#_06DB0A: db $48, $58

;===================================================================================================

SpriteDraw_ClassToChar:
#_06DB0C: db $C8 ; RAVEN
#_06DB0D: db $00 ; VULTURE
#_06DB0E: db $6B ; STALFOS HEAD
#_06DB0F: db $00 ; NULL
#_06DB10: db $00 ; CORRECT PULL SWITCH
#_06DB11: db $00 ; UNUSED CORRECT PULL SWITCH
#_06DB12: db $00 ; WRONG PULL SWITCH
#_06DB13: db $00 ; UNUSED WRONG PULL SWITCH
#_06DB14: db $00 ; OCTOROK
#_06DB15: db $CB ; MOLDORM
#_06DB16: db $00 ; OCTOROK 4WAY
#_06DB17: db $08 ; CUCCO
#_06DB18: db $0A ; OCTOROK STONE
#_06DB19: db $0B ; BUZZBLOB
#_06DB1A: db $00 ; SNAPDRAGON
#_06DB1B: db $00 ; OCTOBALLOON
#_06DB1C: db $0D ; OCTOBALLOON BABY
#_06DB1D: db $00 ; HINOX
#_06DB1E: db $00 ; MOBLIN
#_06DB1F: db $56 ; MINI HELMASAUR
#_06DB20: db $00 ; THIEVES TOWN GRATE
#_06DB21: db $00 ; ANTIFAIRY
#_06DB22: db $0F ; SAHASRAHLA / AGINAH
#_06DB23: db $11 ; HOARDER
#_06DB24: db $00 ; MINI MOLDORM
#_06DB25: db $13 ; POE
#_06DB26: db $00 ; SMITHY
#_06DB27: db $00 ; ARROW
#_06DB28: db $00 ; STATUE
#_06DB29: db $00 ; FLUTEQUEST
#_06DB2A: db $14 ; CRYSTAL SWITCH
#_06DB2B: db $00 ; SICK KID
#_06DB2C: db $15 ; SLUGGULA
#_06DB2D: db $1B ; WATER SWITCH
#_06DB2E: db $00 ; ROPA
#_06DB2F: db $2A ; RED BARI
#_06DB30: db $2A ; BLUE BARI
#_06DB31: db $F8 ; TALKING TREE
#_06DB32: db $00 ; HARDHAT BEETLE
#_06DB33: db $B6 ; DEADROCK
#_06DB34: db $00 ; DARK WORLD HINT NPC
#_06DB35: db $00 ; ADULT
#_06DB36: db $00 ; SWEEPING LADY
#_06DB37: db $AA ; HOBO
#_06DB38: db $00 ; LUMBERJACKS
#_06DB39: db $00 ; TELEPATHIC TILE
#_06DB3A: db $1C ; FLUTE KID
#_06DB3B: db $00 ; RACE GAME LADY
#_06DB3C: db $00 ; RACE GAME GUY
#_06DB3D: db $00 ; FORTUNE TELLER
#_06DB3E: db $00 ; ARGUE BROS
#_06DB3F: db $00 ; RUPEE PULL
#_06DB40: db $00 ; YOUNG SNITCH
#_06DB41: db $00 ; INNKEEPER
#_06DB42: db $00 ; WITCH
#_06DB43: db $F3 ; WATERFALL
#_06DB44: db $F3 ; EYE STATUE
#_06DB45: db $00 ; LOCKSMITH
#_06DB46: db $BB ; MAGIC BAT
#_06DB47: db $27 ; BONK ITEM
#_06DB48: db $00 ; KID IN KAK
#_06DB49: db $00 ; OLD SNITCH
#_06DB4A: db $42 ; HOARDER
#_06DB4B: db $00 ; TUTORIAL GUARD
#_06DB4C: db $00 ; LIGHTNING GATE
#_06DB4D: db $00 ; BLUE GUARD
#_06DB4E: db $00 ; GREEN GUARD
#_06DB4F: db $00 ; RED SPEAR GUARD
#_06DB50: db $00 ; BLUESAIN BOLT
#_06DB51: db $00 ; USAIN BOLT
#_06DB52: db $00 ; BLUE ARCHER
#_06DB53: db $00 ; GREEN BUSH GUARD
#_06DB54: db $00 ; RED JAVELIN GUARD
#_06DB55: db $0F ; RED BUSH GUARD
#_06DB56: db $3F ; BOMB GUARD
#_06DB57: db $00 ; GREEN KNIFE GUARD
#_06DB58: db $00 ; GELDMAN
#_06DB59: db $00 ; TOPPO
#_06DB5A: db $40 ; POPO
#_06DB5B: db $40 ; POPO
#_06DB5C: db $44 ; CANNONBALL
#_06DB5D: db $00 ; ARMOS STATUE
#_06DB5E: db $00 ; KING ZORA
#_06DB5F: db $00 ; ARMOS KNIGHT
#_06DB60: db $00 ; LANMOLAS
#_06DB61: db $47 ; ZORA / FIREBALL
#_06DB62: db $46 ; ZORA
#_06DB63: db $00 ; DESERT STATUE
#_06DB64: db $00 ; CRAB
#_06DB65: db $48 ; LOST WOODS BIRD
#_06DB66: db $4A ; LOST WOODS SQUIRREL
#_06DB67: db $65 ; SPARK
#_06DB68: db $65 ; SPARK
#_06DB69: db $00 ; ROLLER VERTICAL UP
#_06DB6A: db $00 ; ROLLER VERTICAL DOWN
#_06DB6B: db $00 ; ROLLER HORIZONTAL LEFT
#_06DB6C: db $00 ; ROLLER HORIZONTAL RIGHT
#_06DB6D: db $00 ; BEAMOS
#_06DB6E: db $8F ; MASTERSWORD
#_06DB6F: db $00 ; DEBIRANDO PIT
#_06DB70: db $00 ; DEBIRANDO
#_06DB71: db $4C ; ARCHERY GUY
#_06DB72: db $4E ; WALL CANNON VERTICAL LEFT
#_06DB73: db $4E ; WALL CANNON VERTICAL RIGHT
#_06DB74: db $4E ; WALL CANNON HORIZONTAL TOP
#_06DB75: db $4E ; WALL CANNON HORIZONTAL BOTTOM
#_06DB76: db $00 ; BALL N CHAIN
#_06DB77: db $30 ; CANNONBALL / CANNON TROOPER
#_06DB78: db $24 ; MIRROR PORTAL
#_06DB79: db $32 ; RAT / CRICKET
#_06DB7A: db $38 ; SNAKE
#_06DB7B: db $3C ; KEESE
#_06DB7C: db $81 ; KING HELMASAUR FIREBALL
#_06DB7D: db $00 ; LEEVER
#_06DB7E: db $52 ; FAERIE POND TRIGGER
#_06DB7F: db $00 ; UNCLE / PRIEST / MANTLE
#_06DB80: db $00 ; RUNNING MAN
#_06DB81: db $00 ; BOTTLE MERCHANT
#_06DB82: db $00 ; ZELDA
#_06DB83: db $00 ; ANTIFAIRY
#_06DB84: db $00 ; SAHASRAHLAS WIFE
#_06DB85: db $5C ; BEE
#_06DB86: db $00 ; AGAHNIM
#_06DB87: db $62 ; AGAHNIMS BALLS
#_06DB88: db $5E ; GREEN STALFOS
#_06DB89: db $00 ; BIG SPIKE
#_06DB8A: db $00 ; FIREBAR CLOCKWISE
#_06DB8B: db $00 ; FIREBAR COUNTERCLOCKWISE
#_06DB8C: db $65 ; FIRESNAKE
#_06DB8D: db $66 ; HOVER
#_06DB8E: db $00 ; ANTIFAIRY CIRCLE
#_06DB8F: db $00 ; GREEN EYEGORE / GREEN MIMIC
#_06DB90: db $00 ; RED EYEGORE / RED MIMIC
#_06DB91: db $00 ; YELLOW STALFOS
#_06DB92: db $6E ; KODONGO
#_06DB93: db $0E ; KONDONGO FIRE
#_06DB94: db $00 ; MOTHULA
#_06DB95: db $3B ; MOTHULA BEAM
#_06DB96: db $42 ; SPIKE BLOCK
#_06DB97: db $00 ; GIBDO
#_06DB98: db $00 ; ARRGHUS
#_06DB99: db $75 ; ARRGHI
#_06DB9A: db $78 ; TERRORPIN
#_06DB9B: db $7B ; BLOB
#_06DB9C: db $00 ; WALLMASTER
#_06DB9D: db $00 ; STALFOS KNIGHT
#_06DB9E: db $CF ; KING HELMASAUR
#_06DB9F: db $00 ; BUMPER
#_06DBA0: db $84 ; PIROGUSU
#_06DBA1: db $8D ; LASER EYE LEFT
#_06DBA2: db $8D ; LASER EYE RIGHT
#_06DBA3: db $8D ; LASER EYE TOP
#_06DBA4: db $8D ; LASER EYE BOTTOM
#_06DBA5: db $00 ; PENGATOR
#_06DBA6: db $94 ; KYAMERON
#_06DBA7: db $75 ; WIZZROBE
#_06DBA8: db $A0 ; ZORO
#_06DBA9: db $00 ; BABASU
#_06DBAA: db $00 ; HAUNTED GROVE OSTRITCH
#_06DBAB: db $A2 ; HAUNTED GROVE RABBIT
#_06DBAC: db $A6 ; HAUNTED GROVE BIRD
#_06DBAD: db $00 ; FREEZOR
#_06DBAE: db $00 ; KHOLDSTARE
#_06DBAF: db $00 ; KHOLDSTARE SHELL
#_06DBB0: db $B1 ; FALLING ICE
#_06DBB1: db $00 ; BLUE ZAZAK
#_06DBB2: db $B5 ; RED ZAZAK
#_06DBB3: db $00 ; STALFOS
#_06DBB4: db $BD ; GREEN ZIRRO
#_06DBB5: db $00 ; BLUE ZIRRO
#_06DBB6: db $00 ; PIKIT
#_06DBB7: db $00 ; CRYSTAL MAIDEN
#_06DBB8: db $69 ; APPLE
#_06DBB9: db $00 ; OLD MAN
#_06DBBA: db $00 ; PIPE DOWN
#_06DBBB: db $00 ; PIPE UP
#_06DBBC: db $00 ; PIPE RIGHT
#_06DBBD: db $00 ; PIPE LEFT
#_06DBBE: db $5C ; GOOD BEE
#_06DBBF: db $00 ; PEDESTAL PLAQUE
#_06DBC0: db $D6 ; PURPLE CHEST
#_06DBC1: db $E6 ; BOMB SHOP GUY
#_06DBC2: db $00 ; KIKI
#_06DBC3: db $00 ; BLIND MAIDEN
#_06DBC4: db $00 ; DIALOGUE TESTER
#_06DBC5: db $DB ; BULLY / PINK BALL
#_06DBC6: db $DA ; WHIRLPOOL
#_06DBC7: db $E9 ; SHOPKEEPER / CHEST GAME GUY
#_06DBC8: db $00 ; DRUNKARD
#_06DBC9: db $00 ; VITREOUS
#_06DBCA: db $BE ; VITREOUS SMALL EYE
#_06DBCB: db $C0 ; LIGHTNING
#_06DBCC: db $6A ; CATFISH
#_06DBCD: db $00 ; CUTSCENE AGAHNIM
#_06DBCE: db $F9 ; BOULDER
#_06DBCF: db $D7 ; GIBO
#_06DBD0: db $00 ; THIEF
#_06DBD1: db $00 ; MEDUSA
#_06DBD2: db $00 ; 4WAY SHOOTER
#_06DBD3: db $D8 ; POKEY
#_06DBD4: db $00 ; BIG FAERIE
#_06DBD5: db $00 ; TEKTITE / FIREBAT
#_06DBD6: db $DE ; CHAIN CHOMP
#_06DBD7: db $E3 ; TRINEXX ROCK HEAD
#_06DBD8: db $00 ; TRINEXX FIRE HEAD
#_06DBD9: db $00 ; TRINEXX ICE HEAD
#_06DBDA: db $00 ; BLIND
#_06DBDB: db $EB ; SWAMOLA
#_06DBDC: db $00 ; LYNEL
#_06DBDD: db $00 ; BUNNYBEAM / SMOKE
#_06DBDE: db $00 ; FLOPPING FISH
#_06DBDF: db $00 ; STAL
#_06DBE0: db $00 ; LANDMINE
#_06DBE1: db $00 ; DIG GAME GUY
#_06DBE2: db $F4 ; GANON
#_06DBE3: db $F4 ; GANON
#_06DBE4: db $1D ; HEART
#_06DBE5: db $1F ; GREEN RUPEE
#_06DBE6: db $1F ; BLUE RUPEE
#_06DBE7: db $1F ; RED RUPEE
#_06DBE8: db $20 ; BOMB REFILL 1
#_06DBE9: db $20 ; BOMB REFILL 4
#_06DBEA: db $20 ; BOMB REFILL 8
#_06DBEB: db $21 ; SMALL MAGIC DECANTER
#_06DBEC: db $22 ; LARGE MAGIC DECANTER
#_06DBED: db $23 ; ARROW REFILL 5
#_06DBEE: db $23 ; ARROW REFILL 10
#_06DBEF: db $25 ; FAERIE
#_06DBF0: db $28 ; SMALL KEY
#_06DBF1: db $6A ; BIG KEY
#_06DBF2: db $F6 ; STOLEN SHIELD
#_06DBF3: db $29 ; MUSHROOM
#_06DBF4: db $00 ; FAKE MASTER SWORD
#_06DBF5: db $00 ; MAGIC SHOP ASSISTANT
#_06DBF6: db $CD ; HEART CONTAINER
#_06DBF7: db $CE ; HEART PIECE

;===================================================================================================
; TODO
; These routines draw sprites generically using two separate tables:
; SpriteDraw_IDtoClass   ($06:DA11)
; SpriteDraw_ClassToChar ($06:DB0C)
;===================================================================================================
SpriteDraw_SingleLarge_long:
#_06DBF8: PHB
#_06DBF9: PHK
#_06DBFA: PLB

#_06DBFB: JSR SpriteDraw_SingleLarge

#_06DBFE: PLB

#_06DBFF: RTL

;---------------------------------------------------------------------------------------------------

SpriteDraw_SingleSmall_long:
#_06DC00: PHB
#_06DC01: PHK
#_06DC02: PLB

#_06DC03: JSR SpriteDraw_SingleSmall

#_06DC06: PLB

#_06DC07: RTL

;===================================================================================================

UNREACHABLE_06DC08:
#_06DC08: db $00, $00, $01, $01, $01, $02, $02, $02
#_06DC10: db $02, $03, $03, $03, $03, $03, $03, $03

;===================================================================================================
; Draws a 16x16 sprite
;===================================================================================================
SpriteDraw_SingleLarge:
#_06DC18: JSR Sprite_PrepOAMCoord

;===================================================================================================

SpriteDraw_SingleLarge_skipcoords:
#_06DC1B: LDA.b $00 ; save X coordinate
#_06DC1D: STA.b ($90),Y

#_06DC1F: LDA.b $01 ; get bit 8 of X for the other table
#_06DC21: CMP.b #$01

#_06DC23: LDA.b #$01
#_06DC25: ROL A
#_06DC26: STA.b ($92)

#_06DC28: REP #$20

#_06DC2A: LDA.b $02 ; get Y coordinate
#_06DC2C: INY
#_06DC2D: CLC
#_06DC2E: ADC.w #$0010 ; adjust it to see where it will end up
#_06DC31: CMP.w #$0100

#_06DC34: SEP #$20
#_06DC36: BCS .off_screen

; holy cow, the devs did something clever for once!
; since the carry is guaranteed to be cleared here
; this subtracts 16, rather than 15
; too bad they failed to do a REP #$21 just 8 instructions earlier
#_06DC38: SBC.b #$0F
#_06DC3A: STA.b ($90),Y

#_06DC3C: PHY

#_06DC3D: LDY.w $0E20,X

#_06DC40: LDA.w SpriteDraw_ClassToChar,Y
#_06DC43: CLC
#_06DC44: ADC.w $0DC0,X
#_06DC47: TAY

#_06DC48: LDA.w SpriteDraw_IDtoClass,Y

#_06DC4B: PLY
#_06DC4C: INY
#_06DC4D: STA.b ($90),Y

#_06DC4F: LDA.b $05
#_06DC51: INY
#_06DC52: STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

#SpriteDraw_Shadow_Conditional: ; !WTF why
.off_screen
#_06DC54: LDA.w $0E60,X
#_06DC57: AND.b #$10
#_06DC59: BNE SpriteDraw_Shadow

#_06DC5B: RTS

;===================================================================================================

SpriteDraw_Shadow_long:
#_06DC5C: PHB
#_06DC5D: PHK
#_06DC5E: PLB

#_06DC5F: JSR SpriteDraw_Shadow

#_06DC62: PLB

#_06DC63: RTL

;===================================================================================================

SpriteDraw_Shadow_custom_long:
#_06DC64: PHB
#_06DC65: PHK
#_06DC66: PLB

#_06DC67: JSR SpriteDraw_Shadow_custom

#_06DC6A: PLB

#_06DC6B: RTL

;===================================================================================================

SpriteDraw_Shadow:
#_06DC6C: LDA.b #$0A

;===================================================================================================

SpriteDraw_Shadow_custom:
#_06DC6E: CLC
#_06DC6F: ADC.w $0D00,X
#_06DC72: STA.b $02

#_06DC74: LDA.w $0D20,X
#_06DC77: ADC.b #$00
#_06DC79: STA.b $03

#_06DC7B: LDA.w $0F00,X
#_06DC7E: BNE .no_shadow

#_06DC80: LDA.w $0DD0,X
#_06DC83: CMP.b #$0A
#_06DC85: BNE .not_being_carried

#_06DC87: LDA.l $7FFA1C,X
#_06DC8B: CMP.b #$03
#_06DC8D: BEQ .no_shadow

.not_being_carried
#_06DC8F: REP #$20

#_06DC91: LDA.b $02
#_06DC93: SEC
#_06DC94: SBC.b $E8
#_06DC96: STA.b $02

#_06DC98: CLC
#_06DC99: ADC.w #$0010
#_06DC9C: CMP.w #$0100

#_06DC9F: SEP #$20
#_06DCA1: BCS .offscreen

#_06DCA3: LDA.w $0E40,X
#_06DCA6: AND.b #$1F
#_06DCA8: ASL A
#_06DCA9: ASL A
#_06DCAA: TAY

#_06DCAB: LDA.b $00
#_06DCAD: STA.b ($90),Y

#_06DCAF: LDA.w $0E60,X
#_06DCB2: AND.b #$20
#_06DCB4: BEQ .no_offset

#_06DCB6: INY

#_06DCB7: LDA.b ($90),Y ; useless

#_06DCB9: LDA.b $02
#_06DCBB: INC A
#_06DCBC: STA.b ($90),Y

#_06DCBE: INY

#_06DCBF: LDA.b #$38
#_06DCC1: STA.b ($90),Y

#_06DCC3: LDA.b $05
#_06DCC5: AND.b #$30
#_06DCC7: ORA.b #$08

#_06DCC9: INY
#_06DCCA: STA.b ($90),Y

#_06DCCC: TYA
#_06DCCD: LSR A
#_06DCCE: LSR A
#_06DCCF: TAY

#_06DCD0: LDA.b $01
#_06DCD2: AND.b #$01
#_06DCD4: STA.b ($92),Y

.no_shadow
#_06DCD6: RTS

;---------------------------------------------------------------------------------------------------

.no_offset
#_06DCD7: LDA.b $02
#_06DCD9: INY
#_06DCDA: STA.b ($90),Y

#_06DCDC: LDA.b #$6C
#_06DCDE: INY
#_06DCDF: STA.b ($90),Y

#_06DCE1: LDA.b $05
#_06DCE3: AND.b #$30
#_06DCE5: ORA.b #$08

#_06DCE7: INY
#_06DCE8: STA.b ($90),Y

#_06DCEA: TYA
#_06DCEB: LSR A
#_06DCEC: LSR A
#_06DCED: TAY

#_06DCEE: LDA.b $01
#_06DCF0: AND.b #$01
#_06DCF2: ORA.b #$02
#_06DCF4: STA.b ($92),Y

.offscreen
#_06DCF6: RTS

;===================================================================================================

SpriteDraw_SingleSmall:
#_06DCF7: JSR Sprite_PrepOAMCoord

#_06DCFA: LDA.b $00
#_06DCFC: STA.b ($90),Y

#_06DCFE: LDA.b $01
#_06DD00: CMP.b #$01

#_06DD02: LDA.b #$00
#_06DD04: ROL A
#_06DD05: STA.b ($92)

#_06DD07: REP #$20

#_06DD09: LDA.b $02
#_06DD0B: INY
#_06DD0C: CLC
#_06DD0D: ADC.w #$0010
#_06DD10: CMP.w #$0100

#_06DD13: SEP #$20
#_06DD15: BCS SpriteDraw_SingleSmall_DoShadow

#_06DD17: SBC.b #$0F
#_06DD19: STA.b ($90),Y

#_06DD1B: PHY

#_06DD1C: LDY.w $0E20,X

#_06DD1F: LDA.w SpriteDraw_ClassToChar,Y
#_06DD22: CLC
#_06DD23: ADC.w $0DC0,X
#_06DD26: TAY

#_06DD27: LDA.w SpriteDraw_IDtoClass,Y

#_06DD2A: PLY
#_06DD2B: INY

#_06DD2C: STA.b ($90),Y

#_06DD2E: LDA.b $05
#_06DD30: INY
#_06DD31: STA.b ($90),Y

;===================================================================================================

SpriteDraw_SingleSmall_DoShadow:
#_06DD33: LDA.w $0E60,X
#_06DD36: AND.b #$10
#_06DD38: BEQ .no_shadow

#_06DD3A: LDA.b #$02
#_06DD3C: JMP.w SpriteDraw_Shadow_custom

.no_shadow
#_06DD3F: RTS

;===================================================================================================

Sprite_DrawThinAndTall_long:
#_06DD40: PHB
#_06DD41: PHK
#_06DD42: PLB

#_06DD43: JSR Sprite_DrawThinAndTall

#_06DD46: PLB

#_06DD47: RTL

;---------------------------------------------------------------------------------------------------

Sprite_DrawThinAndTall:
#_06DD48: JSR Sprite_PrepOAMCoord

#_06DD4B: LDA.b $00
#_06DD4D: STA.b ($90),Y

#_06DD4F: LDY.b #$04
#_06DD51: STA.b ($90),Y

#_06DD53: LDA.b $01
#_06DD55: CMP.b #$01

#_06DD57: LDA.b #$00
#_06DD59: ROL A

#_06DD5A: LDY.b #$00
#_06DD5C: STA.b ($92),Y

#_06DD5E: INY
#_06DD5F: STA.b ($92),Y

#_06DD61: REP #$20

#_06DD63: LDA.b $02
#_06DD65: LDY.b #$01
#_06DD67: STA.b ($90),Y

#_06DD69: CLC
#_06DD6A: ADC.w #$0010
#_06DD6D: CMP.w #$0100
#_06DD70: BCC .on_screen

#_06DD72: LDA.w #$00F0
#_06DD75: STA.b ($90),Y

.on_screen
#_06DD77: LDA.b $02
#_06DD79: CLC
#_06DD7A: ADC.w #$0008

#_06DD7D: LDY.b #$05
#_06DD7F: STA.b ($90),Y

#_06DD81: CLC
#_06DD82: ADC.w #$0010
#_06DD85: CMP.w #$0100
#_06DD88: BCC .not_off_screen

#_06DD8A: LDA.w #$00F0
#_06DD8D: STA.b ($90),Y

.not_off_screen
#_06DD8F: SEP #$20

#_06DD91: LDY.w $0E20,X

#_06DD94: LDA.w SpriteDraw_ClassToChar,Y
#_06DD97: CLC
#_06DD98: ADC.w $0DC0,X
#_06DD9B: TAY

#_06DD9C: LDA.w SpriteDraw_IDtoClass,Y
#_06DD9F: LDY.b #$02
#_06DDA1: STA.b ($90),Y

#_06DDA3: CLC
#_06DDA4: ADC.b #$10
#_06DDA6: LDY.b #$06
#_06DDA8: STA.b ($90),Y

#_06DDAA: LDA.b $05
#_06DDAC: LDY.b #$03
#_06DDAE: STA.b ($90),Y

#_06DDB0: LDY.b #$07
#_06DDB2: STA.b ($90),Y

#_06DDB4: JMP.w SpriteDraw_Shadow_Conditional

;===================================================================================================

pool Sprite_02_StalfosHead

.flip
#_06DDB7: db $00, $00, $00, $40

.anim_step
#_06DDBB: db $00, $01, $02, $01

pool off

;---------------------------------------------------------------------------------------------------

Sprite_02_StalfosHead:
; interesting syncing of layers
#_06DDBF: LDA.b $EE
#_06DDC1: STA.w $0F20,X

#_06DDC4: LDA.w $0E00,X
#_06DDC7: BEQ .keep_region

#_06DDC9: LDA.b #$08
#_06DDCB: JSL OAM_AllocateFromRegionC

.keep_region
#_06DDCF: LDA.w $0E80,X
#_06DDD2: LSR A
#_06DDD3: LSR A
#_06DDD4: LSR A
#_06DDD5: AND.b #$03
#_06DDD7: TAY

#_06DDD8: LDA.w $0F50,X
#_06DDDB: AND.b #$BF
#_06DDDD: ORA.w .flip,Y
#_06DDE0: STA.w $0F50,X

#_06DDE3: LDA.w .anim_step,Y
#_06DDE6: STA.w $0DC0,X

#_06DDE9: LDA.b #$30
#_06DDEB: STA.w $0B89,X

#_06DDEE: JSR SpriteDraw_SingleLarge
#_06DDF1: JSR Sprite_CheckIfActive_Bank06
#_06DDF4: JSR Sprite_CheckIfRecoiling_Bank06
#_06DDF7: JSR Sprite_CheckDamageToAndFromLink_Bank06

#_06DDFA: LDA.w $0EA0,X
#_06DDFD: BEQ .not_recoiling

#_06DDFF: JSR Sprite_ZeroVelocity_XY_Bank06

.not_recoiling
#_06DE02: JSR Sprite_Move_XY_Bank06

#_06DE05: INC.w $0E80,X

#_06DE08: LDA.w $0DF0,X
#_06DE0B: BEQ .delay_turn

#_06DE0D: AND.b #$01
#_06DE0F: BNE .exit

#_06DE11: LDA.b #$10
#_06DE13: JSR Sprite_ProjectSpeedTowardsLink

;---------------------------------------------------------------------------------------------------

.handle_movement
#_06DE16: LDA.w $0D40,X
#_06DE19: CMP.b $00
#_06DE1B: BEQ .check_x
#_06DE1D: BPL .too_far_down

.too_far_up
#_06DE1F: INC.w $0D40,X
#_06DE22: BRA .check_x

.too_far_down
#_06DE24: DEC.w $0D40,X

.check_x
#_06DE27: LDA.w $0D50,X
#_06DE2A: CMP.b $01
#_06DE2C: BEQ .exit
#_06DE2E: BPL .too_far_right

.too_far_left
#_06DE30: INC.w $0D50,X
#_06DE33: BRA .exit

.too_far_right
#_06DE35: DEC.w $0D50,X

.exit
#_06DE38: RTS

;---------------------------------------------------------------------------------------------------

.delay_turn
#_06DE39: TXA
#_06DE3A: EOR.b $1A
#_06DE3C: AND.b #$03
#_06DE3E: BNE .exit

#_06DE40: LDA.b #$10
#_06DE42: JSR Sprite_ProjectSpeedTowardsLink

#_06DE45: LDA.b $00
#_06DE47: EOR.b #$FF
#_06DE49: INC A
#_06DE4A: STA.b $00

#_06DE4C: LDA.b $01
#_06DE4E: EOR.b #$FF
#_06DE50: INC A
#_06DE51: STA.b $01

#_06DE53: BRA .handle_movement

;===================================================================================================

pool SpriteModule_Carried

.offset_x_low
#_06DE55: db   0,   0,   0,   0,   0,   0,   0,   0
#_06DE5D: db -13, -10,  -5,   0,  13,  10,   5,   0

.offset_x_high
#_06DE65: db   0,   0,   0,   0,   0,   0,   0,   0
#_06DE6D: db  -1,  -1,  -1,   0,   0,   0,   0,   0

.offset_z
#_06DE75: db  13,  14,  15,  16,   0,  10,  22,  16
#_06DE7D: db   8,  11,  14,  16,   8,  11,  14,  16

.offset_y_low
#_06DE85: db   3,   2,   1,   3,   2,   1

pool off

;---------------------------------------------------------------------------------------------------

SpriteModule_Carried:
#_06DE8B: LDA.w $040A
#_06DE8E: STA.w $0C9A,X

#_06DE91: LDA.l $7FFA1C,X
#_06DE95: CMP.b #$03
#_06DE97: BEQ .lifted

#_06DE99: LDA.w $0DF0,X
#_06DE9C: BNE .wait_for_timer

#_06DE9E: LDA.b #$04

#_06DEA0: LDY.w $0DB0,X
#_06DEA3: CPY.b #$06
#_06DEA5: BNE .not_large

#_06DEA7: LDA.b #$08

.not_large
#_06DEA9: STA.w $0DF0,X

#_06DEAC: LDA.l $7FFA1C,X
#_06DEB0: INC A
#_06DEB1: STA.l $7FFA1C,X

.wait_for_timer
#_06DEB5: BRA .continue

.lifted
#_06DEB7: LDA.w $0E60,X
#_06DEBA: AND.b #$EF
#_06DEBC: STA.w $0E60,X

;---------------------------------------------------------------------------------------------------

.continue
#_06DEBF: STZ.b $00

#_06DEC1: LDA.w $0F10,X
#_06DEC4: DEC A

#_06DEC5: CMP.b #$3F
#_06DEC7: BCS .no_x_shake

#_06DEC9: AND.b #$02
#_06DECB: BEQ .no_x_shake

#_06DECD: INC.b $00

;---------------------------------------------------------------------------------------------------

.no_x_shake
#_06DECF: LDA.b $2F
#_06DED1: ASL A
#_06DED2: CLC
#_06DED3: ADC.l $7FFA1C,X
#_06DED7: TAY

#_06DED8: LDA.b $22
#_06DEDA: CLC
#_06DEDB: ADC.w .offset_x_low,Y
#_06DEDE: PHP

#_06DEDF: ADC.b $00
#_06DEE1: STA.w $0D10,X

#_06DEE4: LDA.b $23
#_06DEE6: ADC.b #$00

#_06DEE8: PLP
#_06DEE9: ADC.w .offset_x_high,Y
#_06DEEC: STA.w $0D30,X

#_06DEEF: LDA.w .offset_z,Y
#_06DEF2: STA.w $0F70,X

#_06DEF5: LDY.b $2E
#_06DEF7: CPY.b #$06
#_06DEF9: BCC .valid_animation_step

#_06DEFB: LDY.b #$00

;---------------------------------------------------------------------------------------------------

.valid_animation_step
#_06DEFD: LDA.b $24
#_06DEFF: CLC
#_06DF00: ADC.b #$01
#_06DF02: PHP

#_06DF03: CLC
#_06DF04: ADC.w .offset_y_low,Y
#_06DF07: STA.b $00

#_06DF09: LDA.b $25
#_06DF0B: ADC.b #$00

#_06DF0D: PLP
#_06DF0E: ADC.b #$00
#_06DF10: STA.b $0E

#_06DF12: LDA.b $20
#_06DF14: SEC
#_06DF15: SBC.b $00
#_06DF17: PHP

#_06DF18: CLC
#_06DF19: ADC.b #$08
#_06DF1B: STA.w $0D00,X

#_06DF1E: LDA.b $21
#_06DF20: ADC.b #$00

#_06DF22: PLP
#_06DF23: SBC.b $0E
#_06DF25: STA.w $0D20,X

#_06DF28: LDA.b $EE
#_06DF2A: STA.w $0F20,X

#_06DF2D: JSR CarriedSprite_CheckForThrow
#_06DF30: JSR Sprite_Get16BitCoords

#_06DF33: LDA.l $7FFA2C,X
#_06DF37: CMP.b #$0B
#_06DF39: BEQ .am_freezed

;---------------------------------------------------------------------------------------------------

#_06DF3B: JSR SpriteModule_Active

#_06DF3E: LDA.w $0F10,X
#_06DF41: DEC A
#_06DF42: BNE EXIT_06DF63

#_06DF44: LDA.b #$09
#_06DF46: STA.w $0DD0,X

#_06DF49: STZ.w $0DA0,X

#_06DF4C: LDA.b #$60
#_06DF4E: STA.w $0F10,X

#_06DF51: LDA.b #$20
#_06DF53: STA.w $0F80,X

#_06DF56: LDA.w $0E60,X
#_06DF59: ORA.b #$10
#_06DF5B: STA.w $0E60,X

#_06DF5E: LDA.b #$02
#_06DF60: STA.w $0309

;---------------------------------------------------------------------------------------------------

#EXIT_06DF63:
#_06DF63: RTS

;---------------------------------------------------------------------------------------------------

.am_freezed
#_06DF64: JMP.w SpriteModule_Frozen

;===================================================================================================

pool CarriedSprite_CheckForThrow

.throw_speed_x
#_06DF67: db   0,   0, -62,  63

.throw_speed_y
#_06DF6B: db -62,  63,   0,   0

.throw_speed_z
#_06DF6F: db   4,   4,   4,   4

pool off

;---------------------------------------------------------------------------------------------------

CarriedSprite_CheckForThrow:
#_06DF73: LDA.w $0010
#_06DF76: CMP.b #$0E
#_06DF78: BEQ EXIT_06DF63

#_06DF7A: LDA.b $5B
#_06DF7C: CMP.b #$02
#_06DF7E: BEQ .forced_throw

#_06DF80: LDA.b $4D
#_06DF82: AND.b #$01

#_06DF84: LDY.w $037B
#_06DF87: BNE .link_not_hittable

#_06DF89: ORA.w $0046

.link_not_hittable
#_06DF8C: ORA.w $0345
#_06DF8F: ORA.w $02E0
#_06DF92: ORA.w $02DA
#_06DF95: BNE .forced_throw

#_06DF97: LDA.l $7FFA1C,X
#_06DF9B: CMP.b #$03
#_06DF9D: BNE .no_throw

#_06DF9F: LDA.b $F4
#_06DFA1: ORA.b $F6
#_06DFA3: BPL .no_throw

#_06DFA5: ASL.b $F6
#_06DFA7: LSR.b $F6

;---------------------------------------------------------------------------------------------------

.forced_throw
#_06DFA9: LDA.b #!SFX3_13
#_06DFAB: JSL SpriteSFX_QueueSFX3WithPan

#_06DFAF: LDA.b #$02
#_06DFB1: STA.w $0309

#_06DFB4: LDA.l $7FFA2C,X
#_06DFB8: STA.w $0DD0,X

#_06DFBB: STZ.w $0F80,X

#_06DFBE: LDA.b #$00
#_06DFC0: STA.l $7FFA1C,X

;---------------------------------------------------------------------------------------------------

#_06DFC4: PHX

#_06DFC5: LDA.w $0E20,X
#_06DFC8: TAX

; check for shadow
#_06DFC9: LDA.l SpriteData_OAMProp,X

#_06DFCD: PLX

#_06DFCE: AND.b #$10
#_06DFD0: STA.b $00

#_06DFD2: LDA.w $0E60,X
#_06DFD5: AND.b #$EF
#_06DFD7: ORA.b $00
#_06DFD9: STA.w $0E60,X

#_06DFDC: LDA.b $2F
#_06DFDE: LSR A
#_06DFDF: TAY

#_06DFE0: LDA.w .throw_speed_x,Y
#_06DFE3: STA.w $0D50,X

#_06DFE6: LDA.w .throw_speed_y,Y
#_06DFE9: STA.w $0D40,X

#_06DFEC: LDA.w .throw_speed_z,Y
#_06DFEF: STA.w $0F80,X

#_06DFF2: LDA.b #$00
#_06DFF4: STA.w $0F10,X

.no_throw
#_06DFF7: RTS

;===================================================================================================

ThrownSprite_TileAndSpriteInteraction_long:
#_06DFF8: PHB
#_06DFF9: PHK
#_06DFFA: PLB

#_06DFFB: JSR ThrownSprite_TileAndSpriteInteraction

#_06DFFE: PLB

#_06DFFF: RTL

;===================================================================================================

SpriteModule_Stunned:
#_06E000: JSR HandleFreezeAndStunTimer
#_06E003: JSR Sprite_CheckIfActivePermissive_Bank06

#_06E006: LDA.w $0EA0,X
#_06E009: BEQ .not_recoiling
#_06E00B: BPL .recoil_timer_ticking

#_06E00D: STZ.w $0EA0,X

.recoil_timer_ticking
#_06E010: JSR Sprite_ZeroVelocity_XY_Bank06

.not_recoiling
#_06E013: LDA.w $0DF0,X
#_06E016: CMP.b #$20
#_06E018: BCS .delay_damage

#_06E01A: JSR Sprite_CheckDamageFromLink

.delay_damage
#_06E01D: JSR Sprite_CheckIfRecoiling_Bank06
#_06E020: JSR Sprite_Move_XY_Bank06

#_06E023: LDA.w $0E90,X
#_06E026: BNE .skip_tile_collision

#_06E028: JSR Sprite_CheckTileCollision

#_06E02B: LDA.w $0DD0,X ; TODO can this even succeed?
#_06E02E: BEQ .not_even_here_exit

;===================================================================================================

#ThrownSprite_TileAndSpriteInteraction:
#_06E030: LDA.w $0E70,X
#_06E033: AND.b #$0F
#_06E035: BEQ .skip_tile_collision

#_06E037: JSR Sprite_ApplyRicochet

#_06E03A: LDA.w $0DD0,X ; check if frozen
#_06E03D: CMP.b #$0B
#_06E03F: BNE .skip_tile_collision

#_06E041: LDA.b #!SFX2_05
#_06E043: JSL SpriteSFX_QueueSFX2WithPan

.skip_tile_collision
#_06E047: LDY.b #$68 ; more collision checks
#_06E049: JSR Sprite_CheckTileProperty

#_06E04C: PHX ; check if the sprite should have a shadow by default

#_06E04D: LDA.w $0E20,X
#_06E050: TAX

#_06E051: LDA.l SpriteData_OAMProp,X

#_06E055: PLX

#_06E056: AND.b #$10 ; check bit 4 for shadow flag
#_06E058: BEQ .not_over_pit

#_06E05A: LDA.w $0E60,X ; add in shadow
#_06E05D: ORA.b #$10
#_06E05F: STA.w $0E60,X

#_06E062: LDA.w $0FA5 ; why is it even done this way?
#_06E065: CMP.b #!TILETYPE_20 ; check for pit tiles
#_06E067: BNE .not_over_pit

#_06E069: JSR Sprite_DisableShadowFlag ; PHP instead of this next time

.not_over_pit
#_06E06C: JSR Sprite_Move_Z_Bank06

#_06E06F: DEC.w $0F80,X
#_06E072: DEC.w $0F80,X

#_06E075: LDA.w $0F70,X
#_06E078: DEC A
#_06E079: CMP.b #$F0
#_06E07B: BCS .not_too_high

#_06E07D: JMP.w .check_for_freeze

.not_too_high
#_06E080: STZ.w $0F70,X

#_06E083: LDA.w $0E20,X
#_06E086: CMP.b #!SPRITE_E8
#_06E088: BNE .dont_set_death_state

#_06E08A: LDA.w $0F80,X
#_06E08D: CMP.b #$E8
#_06E08F: BPL .dont_set_death_state

#_06E091: LDA.b #$06
#_06E093: STA.w $0DD0,X

#_06E096: LDA.b #$08
#_06E098: STA.w $0DF0,X

;===================================================================================================

#Sprite_ChangeOAMAllotmentTo4:
#_06E09B: LDA.b #$03
#_06E09D: STA.w $0E40,X

.not_even_here_exit
#_06E0A0: RTS

;---------------------------------------------------------------------------------------------------

.dont_set_death_state
#_06E0A1: JSR ThrowableScenery_TransmuteIfValid

#_06E0A4: LDA.w $0FA5
#_06E0A7: CMP.b #!TILETYPE_20
#_06E0A9: BNE .not_pit_or_too_high

#_06E0AB: LDA.w $0B6B,X
#_06E0AE: LSR A
#_06E0AF: BCS .not_pit_or_too_high

;===================================================================================================

#Sprite_SetToFalling:
#_06E0B1: LDA.b #$01
#_06E0B3: STA.w $0DD0,X

#_06E0B6: LDA.b #$1F
#_06E0B8: STA.w $0DF0,X

#_06E0BB: STZ.w $012E

#_06E0BE: LDA.b #!SFX2_20
#_06E0C0: JSL SpriteSFX_QueueSFX2WithPan

#_06E0C4: RTS

;---------------------------------------------------------------------------------------------------

.not_pit_or_too_high
#_06E0C5: CMP.b #$09
#_06E0C7: BNE .not_shallow_water

#_06E0C9: LDA.w $0F80,X

#_06E0CC: STZ.w $0F80,X

#_06E0CF: CMP.b #$F0
#_06E0D1: BPL .continue

#_06E0D3: LDA.b #!SPRITE_EC
#_06E0D5: JSL Sprite_SpawnDynamically
#_06E0D9: BMI .continue

;---------------------------------------------------------------------------------------------------

#_06E0DB: JSL Sprite_SetSpawnedCoordinates

#_06E0DF: PHX

#_06E0E0: TYX
#_06E0E1: JSR .plop_in_water

#_06E0E4: PLX

#_06E0E5: BRA .continue

;---------------------------------------------------------------------------------------------------

.not_shallow_water
#_06E0E7: CMP.b #$08
#_06E0E9: BNE .continue

#_06E0EB: LDA.w $0E20,X
#_06E0EE: CMP.b #!SPRITE_D2
#_06E0F0: BEQ .spawn_a_fish

#_06E0F2: JSL GetRandomNumber
#_06E0F6: LSR A
#_06E0F7: BCC .plop_in_water

.spawn_a_fish
#_06E0F9: JSR Sprite_SpawnLeapingFish

;===================================================================================================

.plop_in_water
#_06E0FC: JSL Sprite_CalculateSFXPan
#_06E100: ORA.b #!SFX2_28
#_06E102: STA.w $012E

#_06E105: LDA.b #$03
#_06E107: STA.w $0DD0,X

#_06E10A: LDA.b #$0F
#_06E10C: STA.w $0DF0,X

#_06E10F: STZ.w $0D80,X

#_06E112: JSL GetRandomNumber
#_06E116: AND.b #$01

#_06E118: JMP.w Sprite_ChangeOAMAllotmentTo4

;---------------------------------------------------------------------------------------------------

.continue
#_06E11B: LDA.w $0F80,X
#_06E11E: BPL .positive_z_speed

#_06E120: EOR.b #$FF
#_06E122: INC A
#_06E123: LSR A
#_06E124: CMP.b #$09
#_06E126: BCS .active_or_quasi_active

#_06E128: LDA.b #$00

.active_or_quasi_active
#_06E12A: STA.w $0F80,X

.positive_z_speed
#_06E12D: LDA.w $0D50,X
#_06E130: ASL A
#_06E131: ROR.w $0D50,X

#_06E134: LDA.w $0D50,X
#_06E137: CMP.b #$FF
#_06E139: BNE .dont_reset_x_speed

#_06E13B: STZ.w $0D50,X

.dont_reset_x_speed
#_06E13E: LDA.w $0D40,X
#_06E141: ASL A
#_06E142: ROR.w $0D40,X

#_06E145: LDA.w $0D40,X
#_06E148: CMP.b #$FF
#_06E14A: BNE .check_for_freeze

#_06E14C: STZ.w $0D40,X

;---------------------------------------------------------------------------------------------------

.check_for_freeze
#_06E14F: LDA.w $0DD0,X
#_06E152: CMP.b #$0B
#_06E154: BNE .not_even_stunned

#_06E156: LDA.l $7FFA3C,X
#_06E15A: BEQ .exit

.not_even_stunned
#_06E15C: JSR Sprite_CheckIfLifted

#_06E15F: LDA.w $0E20,X
#_06E162: CMP.b #!SPRITE_4A
#_06E164: BEQ .exit

#_06E166: JSR ThrownSprite_CheckDamageToSprites

.exit
#_06E169: RTS

;===================================================================================================

ThrowableScenery_InteractWithSpritesAndTiles:
#_06E16A: JSR Sprite_Move_XY_Bank06
#_06E16D: LDA.w $0E90,X
#_06E170: BNE .skip_tile_collision

#_06E172: JSR Sprite_CheckTileCollision

.skip_tile_collision
#_06E175: JMP.w ThrownSprite_TileAndSpriteInteraction

;===================================================================================================

ThrownSprite_CheckDamageToSprites:
#_06E178: LDA.w $0F10,X
#_06E17B: BNE EXIT_06E1B7

#_06E17D: LDA.w $0D50,X
#_06E180: ORA.w $0D40,X
#_06E183: BEQ EXIT_06E1B7

#_06E185: LDY.b #$0F

.next
#_06E187: PHY
#_06E188: CPY.w $0FA0
#_06E18B: BEQ .skip

#_06E18D: LDA.w $0E20,X
#_06E190: CMP.b #!SPRITE_D2
#_06E192: BEQ .skip

#_06E194: LDA.w $0DD0,Y
#_06E197: CMP.b #$09
#_06E199: BCC .skip

#_06E19B: TYA
#_06E19C: EOR.b $1A
#_06E19E: AND.b #$03
#_06E1A0: ORA.w $0BA0,Y
#_06E1A3: ORA.w $0EF0,Y
#_06E1A6: BNE .skip

#_06E1A8: LDA.w $0F20,X
#_06E1AB: CMP.w $0F20,Y
#_06E1AE: BNE .skip

#_06E1B0: JSR ThrownSprite_CheckDamageToSingleSprite

.skip
#_06E1B3: PLY
#_06E1B4: DEY
#_06E1B5: BPL .next

;---------------------------------------------------------------------------------------------------

#EXIT_06E1B7:
#_06E1B7: RTS

;===================================================================================================

ThrownSprite_CheckDamageToSingleSprite:
#_06E1B8: LDA.w $0D10,X
#_06E1BB: STA.b $00

#_06E1BD: LDA.w $0D30,X
#_06E1C0: STA.b $08

#_06E1C2: LDA.b #$0F
#_06E1C4: STA.b $02

#_06E1C6: LDA.w $0D00,X
#_06E1C9: SEC
#_06E1CA: SBC.w $0F70,X

#_06E1CD: PHP

#_06E1CE: CLC
#_06E1CF: ADC.b #$08
#_06E1D1: STA.b $01

#_06E1D3: LDA.w $0D20,X
#_06E1D6: ADC.b #$00

#_06E1D8: PLP
#_06E1D9: SBC.b #$00
#_06E1DB: STA.b $09

#_06E1DD: LDA.b #$08
#_06E1DF: STA.b $03

;---------------------------------------------------------------------------------------------------

#_06E1E1: PHX

#_06E1E2: TYX

#_06E1E3: JSR Sprite_SetupHitBox
#_06E1E6: PLX

#_06E1E7: JSR CheckIfHitBoxesOverlap
#_06E1EA: BCC EXIT_06E1B7

#_06E1EC: LDA.w $0E20,Y
#_06E1EF: CMP.b #!SPRITE_3F ; wtf why
#_06E1F1: BNE .not_tutorial_guard

#_06E1F3: JSL Sprite_PlaceRepulseSpark

#_06E1F7: BRA Sprite_ApplyRicochet

;---------------------------------------------------------------------------------------------------

.not_tutorial_guard
#_06E1F9: LDA.b #$03
#_06E1FB: PHA

#_06E1FC: LDA.w $0E20,X
#_06E1FF: CMP.b #!SPRITE_EC
#_06E201: BNE .not_pot

#_06E203: LDA.w $0DB0,X
#_06E206: CMP.b #$02
#_06E208: BNE .not_pot

#_06E20A: LDA.b $1B
#_06E20C: BNE .not_pot

#_06E20E: PLA

#_06E20F: LDA.b #$01
#_06E211: PHA

;---------------------------------------------------------------------------------------------------

.not_pot
#_06E212: PLA
#_06E213: PHX

#_06E214: TYX
#_06E215: PHY

#_06E216: JSL Ancilla_CheckDamageToSprite_preset

#_06E21A: PLY
#_06E21B: PLX

#_06E21C: LDA.w $0D50,X
#_06E21F: ASL A
#_06E220: STA.w $0F40,Y

#_06E223: LDA.w $0D40,X
#_06E226: ASL A
#_06E227: STA.w $0F30,Y

#_06E22A: LDA.b #$10
#_06E22C: STA.w $0F10,X

;===================================================================================================

Sprite_ApplyRicochet:
#_06E22F: JSR Sprite_InvertSpeed_XY
#_06E232: JSR Sprite_HalveSpeed_XY

;===================================================================================================

ThrowableScenery_TransmuteIfValid:
#_06E235: LDA.w $0E20,X
#_06E238: CMP.b #!SPRITE_EC
#_06E23A: BNE EXIT_06E273

#_06E23C: STZ.w $0FAC

;===================================================================================================

ThrowableScenery_TransmuteToDebris:
#_06E23F: LDA.w $0DC0,X
#_06E242: BEQ .no_secret

#_06E244: STA.w $0B9C

#_06E247: JSR Sprite_SpawnSecret

#_06E24A: STZ.w $0B9C

.no_secret
#_06E24D: LDY.w $0DB0,X

#_06E250: LDA.b $1B
#_06E252: BEQ .overworld

#_06E254: LDY.b #$00

.overworld
#_06E256: STZ.w $012E

#_06E259: LDA.w ThrownItemSFX,Y
#_06E25C: JSL SpriteSFX_QueueSFX2WithPan

;===================================================================================================

Sprite_ScheduleForBreakage:
#_06E260: LDA.b #$1F

;===================================================================================================

Sprite_ScheduleForBreakage_parameterized:
#_06E262: STA.w $0DF0,X

#_06E265: LDA.b #$06
#_06E267: STA.w $0DD0,X

#_06E26A: LDA.w $0E40,X
#_06E26D: CLC
#_06E26E: ADC.b #$04
#_06E270: STA.w $0E40,X

;---------------------------------------------------------------------------------------------------

#EXIT_06E273:
#_06E273: RTS

;===================================================================================================

Sprite_HalveSpeed_XY:
#_06E274: LDA.w $0D50,X
#_06E277: ASL A
#_06E278: ROR.w $0D50,X

#_06E27B: LDA.w $0D40,X
#_06E27E: ASL A
#_06E27F: ROR.w $0D40,X

#_06E282: RTS

;===================================================================================================

ThrownItemSFX:
#_06E283: db !SFX2_1F
#_06E284: db !SFX2_1F
#_06E285: db !SFX2_1E
#_06E286: db !SFX2_1E
#_06E287: db !SFX2_1E
#_06E288: db !SFX2_1F
#_06E289: db !SFX2_1F
#_06E28A: db !SFX2_1F
#_06E28B: db !SFX2_1F

;===================================================================================================

Sprite_SpawnLeapingFish:
#_06E28C: LDA.b #!SPRITE_D2
#_06E28E: JSL Sprite_SpawnDynamically
#_06E292: BMI .exit

#_06E294: JSL Sprite_SetSpawnedCoordinates

#_06E298: LDA.b #$02
#_06E29A: STA.w $0D80,Y

#_06E29D: LDA.b #$30
#_06E29F: STA.w $0DF0,Y

#_06E2A2: LDA.w $0E20,X
#_06E2A5: CMP.b #!SPRITE_D2
#_06E2A7: BNE .exit

#_06E2A9: STA.w $0D90,Y

.exit
#_06E2AC: RTS

;===================================================================================================

pool SpriteModule_Frozen

.sparkle_offset_low
#_06E2AD: db  -4,  12,   3,   8

.sparkle_offset_high
#_06E2B1: db  -1,   0,   0,   0

.sparkle_mask
#_06E2B5: db $7F, $0F, $03, $01, $00, $00, $00

pool off

;===================================================================================================

HandleFreezeAndStunTimer:
#_06E2BC: JSL Sprite_DrawRippleIfInWater

;===================================================================================================

SpriteModule_Frozen:
#_06E2C0: JSR SpriteModule_Active

#_06E2C3: LDA.l $7FFA3C,X
#_06E2C7: BEQ .not_frozen

#_06E2C9: LDA.w $0DF0,X
#_06E2CC: CMP.b #$20
#_06E2CE: BCS .skip_palette

#_06E2D0: LDA.w $0F50,X
#_06E2D3: AND.b #$F1
#_06E2D5: ORA.b #$04
#_06E2D7: STA.w $0F50,X

.skip_palette
#_06E2DA: LDA.w $0DF0,X
#_06E2DD: LSR A ; /16
#_06E2DE: LSR A
#_06E2DF: LSR A
#_06E2E0: LSR A
#_06E2E1: TAY

#_06E2E2: TXA
#_06E2E3: ASL A ; x16
#_06E2E4: ASL A
#_06E2E5: ASL A
#_06E2E6: ASL A
#_06E2E7: EOR.b $1A
#_06E2E9: ORA.b $11
#_06E2EB: AND.w .sparkle_mask,Y

#_06E2EE: BNE .exit

#_06E2F0: JSL GetRandomNumber
#_06E2F4: AND.b #$03
#_06E2F6: TAY

#_06E2F7: LDA.w .sparkle_offset_low,Y
#_06E2FA: STA.b $00

#_06E2FC: LDA.w .sparkle_offset_high,Y
#_06E2FF: STA.b $01

#_06E301: JSL GetRandomNumber
#_06E305: AND.b #$03
#_06E307: TAY

#_06E308: LDA.w .sparkle_offset_low,Y
#_06E30B: STA.b $02

#_06E30D: LDA.w .sparkle_offset_high,Y
#_06E310: STA.b $03

#_06E312: JSL GarnishSpawn_Sparkle

.exit
#_06E316: RTS

;---------------------------------------------------------------------------------------------------

.not_frozen
#_06E317: LDA.b $1A
#_06E319: AND.b #$01
#_06E31B: ORA.b $11
#_06E31D: ORA.w $0FC1
#_06E320: BNE .exit_b

#_06E322: LDA.w $0B58,X
#_06E325: BEQ .unstun

#_06E327: DEC.w $0B58,X

#_06E32A: CMP.b #$38
#_06E32C: BCS .exit_b

#_06E32E: AND.b #$01
#_06E330: TAY

#_06E331: LDA.w .shake_x,Y
#_06E334: STA.w $0D50,X

#_06E337: JSR Sprite_Move_X_Bank06

.exit_b
#_06E33A: RTS

;---------------------------------------------------------------------------------------------------

.unstun
#_06E33B: LDA.b #$09
#_06E33D: STA.w $0DD0,X

#_06E340: STZ.w $0F40,X
#_06E343: STZ.w $0F30,X

#_06E346: RTS

;---------------------------------------------------------------------------------------------------

.shake_x
#_06E347: db   8,  -8

;===================================================================================================

pool SpriteModule_Poof

.offset_x
#_06E349: db  -6,  10,   1,  13
#_06E34D: db  -6,  10,   1,  13
#_06E351: db  -7,   4,  -5,   6
#_06E355: db  -1,   1,  -2,   0

.offset_y
#_06E359: db  -6,  -4,  10,   9
#_06E35D: db  -6,  -4,  10,   9
#_06E361: db  -8, -10,   4,   3
#_06E365: db  -1,  -2,   0,   1

.char
#_06E369: db $9B, $9B, $9B, $9B
#_06E36D: db $B3, $B3, $B3, $B3
#_06E371: db $8A, $8A, $8A, $8A
#_06E375: db $8A, $8A, $8A, $8A

.prop
#_06E379: db $24, $A4, $24, $A4
#_06E37D: db $E4, $64, $A4, $24
#_06E381: db $24, $E4, $E4, $E4
#_06E385: db $24, $E4, $E4, $E4

.size
#_06E389: db $00, $00, $00, $00
#_06E38D: db $00, $00, $00, $00
#_06E391: db $02, $02, $02, $02
#_06E395: db $02, $02, $02, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteModule_Poof:
#_06E399: LDA.w $0DF0,X
#_06E39C: BNE .delay

#_06E39E: LDA.w $0E20,X
#_06E3A1: CMP.b #!SPRITE_0D
#_06E3A3: BNE .not_cukeman

#_06E3A5: LDY.w $0EB0,X
#_06E3A8: BEQ .not_cukeman

#_06E3AA: LDY.w $0D10,X
#_06E3AD: PHY

#_06E3AE: LDY.w $0D30,X
#_06E3B1: PHY

#_06E3B2: JSR PrepareEnemyDrop

#_06E3B5: PLA
#_06E3B6: STA.w $0D30,X

#_06E3B9: PLA
#_06E3BA: STA.w $0D10,X

#_06E3BD: STZ.w $0F80,X
#_06E3C0: STZ.w $0BA0,X

#_06E3C3: RTS

;---------------------------------------------------------------------------------------------------

.not_cukeman
#_06E3C4: LDA.w $0CBA,X
#_06E3C7: BNE .no_forced_drop

#_06E3C9: LDY.b #$02
#_06E3CB: JMP.w ForcePrizeDrop

;---------------------------------------------------------------------------------------------------

.no_forced_drop
#_06E3CE: JMP.w Sprite_DoTheDeath

;---------------------------------------------------------------------------------------------------

.delay
#_06E3D1: JSR Sprite_PrepOAMCoord

#_06E3D4: LDA.w $0DF0,X
#_06E3D7: LSR A
#_06E3D8: AND.b #$FC
#_06E3DA: STA.b $00

#_06E3DC: PHX
#_06E3DD: LDX.b #$03

.next_object
#_06E3DF: PHX

#_06E3E0: TXA
#_06E3E1: CLC
#_06E3E2: ADC.b $00
#_06E3E4: TAX

#_06E3E5: LDA.w $0FA8
#_06E3E8: CLC
#_06E3E9: ADC.w .offset_x,X
#_06E3EC: STA.b ($90),Y

#_06E3EE: LDA.w $0FA9
#_06E3F1: CLC
#_06E3F2: ADC.w .offset_y,X
#_06E3F5: INY
#_06E3F6: STA.b ($90),Y

#_06E3F8: LDA.w .char,X
#_06E3FB: INY
#_06E3FC: STA.b ($90),Y

#_06E3FE: LDA.w .prop,X
#_06E401: INY
#_06E402: STA.b ($90),Y

#_06E404: PHY

#_06E405: TYA
#_06E406: LSR A
#_06E407: LSR A
#_06E408: TAY

#_06E409: LDA.w .size,X
#_06E40C: STA.b ($92),Y

#_06E40E: PLY
#_06E40F: INY

#_06E410: PLX
#_06E411: DEX
#_06E412: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_06E414: PLX

#_06E415: LDY.b #$FF
#_06E417: LDA.b #$03
#_06E419: JMP.w Sprite_CorrectOAMEntries

;===================================================================================================

Sprite_PrepOAMCoord_long:
#_06E41C: JSR Sprite_PrepOAMCoord_wrapper

#_06E41F: RTL

;---------------------------------------------------------------------------------------------------

Sprite_PrepOAMCoord_wrapper:
#_06E420: JSR Sprite_PrepOAMCoord

#_06E423: RTS

;---------------------------------------------------------------------------------------------------

Sprite_PrepOAMCoord:
#_06E424: STZ.w $0F00,X

#_06E427: REP #$20

#_06E429: LDA.w $0FD8
#_06E42C: SEC
#_06E42D: SBC.b $E2
#_06E42F: STA.b $00

#_06E431: CLC
#_06E432: ADC.w #$0040
#_06E435: CMP.w #$0170

#_06E438: SEP #$20
#_06E43A: BCS .offscreen

;---------------------------------------------------------------------------------------------------

#_06E43C: LDA.w $0F70,X
#_06E43F: STA.b $04
#_06E441: STZ.b $05

#_06E443: REP #$20

#_06E445: LDA.w $0FDA
#_06E448: SEC
#_06E449: SBC.b $E8
#_06E44B: PHA

#_06E44C: SEC
#_06E44D: SBC.b $04
#_06E44F: STA.b $02

#_06E451: PLA
#_06E452: CLC
#_06E453: ADC.w #$0040
#_06E456: CMP.w #$0170

#_06E459: SEP #$20
#_06E45B: BCC .on_screen

#_06E45D: LDA.w $0F60,X
#_06E460: AND.b #$20
#_06E462: BEQ .disable

;---------------------------------------------------------------------------------------------------

.on_screen
#_06E464: CLC

.prep_exit
#_06E465: LDA.w $0F50,X
#_06E468: EOR.w $0B89,X
#_06E46B: STA.b $05
#_06E46D: STZ.b $04

#_06E46F: LDA.b $00
#_06E471: STA.w $0FA8

#_06E474: LDA.b $02
#_06E476: STA.w $0FA9

#_06E479: LDY.b #$00

#_06E47B: RTS

;---------------------------------------------------------------------------------------------------

.offscreen
#_06E47C: REP #$20

#_06E47E: LDA.w $0FDA
#_06E481: SEC
#_06E482: SBC.b $E8

#_06E484: SEC
#_06E485: SBC.b $04
#_06E487: STA.b $02

#_06E489: SEP #$20

;---------------------------------------------------------------------------------------------------

.disable
#_06E48B: INC.w $0F00,X

#_06E48E: LDA.w $0CAA,X
#_06E491: BMI .die

#_06E493: JSL Sprite_KillSelf

;---------------------------------------------------------------------------------------------------

.die
#_06E497: PLA
#_06E498: PLA

#_06E499: SEC

#_06E49A: BRA .prep_exit

;===================================================================================================

Sprite_CheckTileCollision_long:
#_06E49C: PHB
#_06E49D: PHK
#_06E49E: PLB

#_06E49F: JSR Sprite_CheckTileCollision

#_06E4A2: PLB

#_06E4A3: LDA.w $0E70,X

#_06E4A6: RTL

;===================================================================================================

Sprite_CheckTileCollision_set_layer:
#_06E4A7: LDA.w $0FB6
#_06E4AA: STA.w $0F20,X

#_06E4AD: RTS

;---------------------------------------------------------------------------------------------------

Sprite_CheckTileCollision_check_just_one:
#_06E4AE: JMP.w Sprite_CheckTileCollisionSingleLayer

;---------------------------------------------------------------------------------------------------

Sprite_CheckTileCollision:
#_06E4B1: STZ.w $0E70,X

#_06E4B4: LDA.w $0F60,X
#_06E4B7: BMI Sprite_CheckTileCollision_check_just_one

#_06E4B9: LDA.w $046C
#_06E4BC: BEQ Sprite_CheckTileCollision_check_just_one

#_06E4BE: LDA.w $0F20,X
#_06E4C1: STA.w $0FB6

#_06E4C4: LDA.b #$01
#_06E4C6: STA.w $0F20,X

#_06E4C9: JSR Sprite_CheckTileCollisionSingleLayer

#_06E4CC: LDA.w $046C
#_06E4CF: CMP.b #$04
#_06E4D1: BEQ Sprite_CheckTileCollision_set_layer

#_06E4D3: STZ.w $0F20,X

#_06E4D6: JSR Sprite_CheckTileCollisionSingleLayer

#_06E4D9: LDA.w $0FA5
#_06E4DC: STA.l $7FFABC,X

#_06E4E0: RTS

;===================================================================================================

Sprite_CheckTileCollisionSingleLayer:
#_06E4E1: LDA.w $0E40,X
#_06E4E4: AND.b #$20
#_06E4E6: BEQ .normal_check

#_06E4E8: LDY.b #$6A
#_06E4EA: JSR Sprite_CheckTileProperty
#_06E4ED: BCC .exit_a

#_06E4EF: INC.w $0E70,X

.exit_a
#_06E4F2: RTS

;---------------------------------------------------------------------------------------------------

.normal_check
#_06E4F3: LDA.w $0F60,X
#_06E4F6: BMI .force_check

#_06E4F8: LDA.w $046C
#_06E4FB: BNE .unorthodox_collision_settings

.force_check
#_06E4FD: LDY.b #$00

#_06E4FF: LDA.w $0D40,X
#_06E502: BEQ .no_y_velocity
#_06E504: BMI .negative_y_velocity

#_06E506: INY

.negative_y_velocity
#_06E507: JSR Sprite_CheckForTileInDirection_vertical

.no_y_velocity
#_06E50A: LDY.b #$02

#_06E50C: LDA.w $0D50,X
#_06E50F: BEQ .no_x_velocity
#_06E511: BMI .negative_x_velocity

#_06E513: INY

.negative_x_velocity
#_06E514: JSR Sprite_CheckForTileInDirection_horizontal

.no_x_velocity
#_06E517: BRA .continue

;---------------------------------------------------------------------------------------------------

.unorthodox_collision_settings
#_06E519: LDY.b #$01

.check_next_vertical
#_06E51B: JSR Sprite_CheckForTileInDirection_vertical

#_06E51E: DEY
#_06E51F: BPL .check_next_vertical

;---------------------------------------------------------------------------------------------------

#_06E521: LDY.b #$03

.check_next_horizontal
#_06E523: JSR Sprite_CheckForTileInDirection_horizontal

#_06E526: DEY
#_06E527: CPY.b #$01
#_06E529: BNE .check_next_horizontal

;---------------------------------------------------------------------------------------------------

.continue
#_06E52B: LDA.w $0BE0,X
#_06E52E: BMI .exit_b

#_06E530: LDA.w $0F70,X
#_06E533: BEQ .grounded

.exit_b
#_06E535: RTS

;---------------------------------------------------------------------------------------------------

.grounded
#_06E536: LDY.b #$68
#_06E538: JSR Sprite_CheckTileProperty

#_06E53B: LDA.w $0FA5
#_06E53E: STA.l $7FF9C2,X

#_06E542: CMP.b #!TILETYPE_1C
#_06E544: BNE .dont_fall_to_lower_layer

#_06E546: LDY.w $0FB3
#_06E549: BEQ .dont_fall_to_lower_layer

#_06E54B: LDY.w $0DD0,X
#_06E54E: CPY.b #$0B
#_06E550: BNE .dont_fall_to_lower_layer

#_06E552: LDA.b #$01
#_06E554: STA.w $0F20,X

#_06E557: RTS

;---------------------------------------------------------------------------------------------------

.dont_fall_to_lower_layer
#_06E558: CMP.b #!TILETYPE_20
#_06E55A: BNE .not_pit

#_06E55C: LDA.w $0B6B,X
#_06E55F: AND.b #$01
#_06E561: BEQ .sprite_cant_fall

#_06E563: LDA.b $1B
#_06E565: BNE .indoors_pit

#_06E567: JMP.w Sprite_SetToFalling

.indoors_pit
#_06E56A: LDA.b #$05
#_06E56C: STA.w $0DD0,X

#_06E56F: LDA.b #$5F

#_06E571: LDY.w $0E20,X
#_06E574: CPY.b #!SPRITE_13
#_06E576: BEQ .not_mini_helma_falling

#_06E578: CPY.b #!SPRITE_26
#_06E57A: BNE .not_beetle_falling

.not_mini_helma_falling
#_06E57C: LSR.w $0F50,X
#_06E57F: ASL.w $0F50,X

#_06E582: LDA.b #$3F

.not_beetle_falling
#_06E584: STA.w $0DF0,X

#_06E587: RTS

;---------------------------------------------------------------------------------------------------

.not_pit
#_06E588: CMP.b #$0C
#_06E58A: BNE .sprite_cant_fall

#_06E58C: LDA.l $7FFABC,X
#_06E590: CMP.b #$1C
#_06E592: BNE .exit_c

#_06E594: JSR SpriteFall_AdjustPosition

#_06E597: LDA.w $0E70,X
#_06E59A: ORA.b #$20
#_06E59C: STA.w $0E70,X

#_06E59F: RTS

;---------------------------------------------------------------------------------------------------

.sprite_cant_fall
#_06E5A0: CMP.b #!TILETYPE_68
#_06E5A2: BCC .not_a_conveyor

#_06E5A4: CMP.b #!TILETYPE_6C
#_06E5A6: BCS .exit_c

.apply_conveyor_motion
#_06E5A8: TAY
#_06E5A9: JSL Sprite_ApplyConveyor

#_06E5AD: RTS

;---------------------------------------------------------------------------------------------------

.not_a_conveyor
#_06E5AE: CMP.b #!TILETYPE_08
#_06E5B0: BNE .exit_c

#_06E5B2: LDA.w $046C
#_06E5B5: CMP.b #$04
#_06E5B7: BNE .exit_c

#_06E5B9: LDA.b #!TILETYPE_6A
#_06E5BB: BRA .apply_conveyor_motion

.exit_c
#_06E5BD: RTS

;===================================================================================================

Sprite_CheckForTileInDirection_horizontal:
#_06E5BE: JSR Sprite_CheckTileInDirection
#_06E5C1: BCC .exit

#_06E5C3: LDA.w Sprite_CheckForTileInDirection_direction_flag,Y
#_06E5C6: ORA.w $0E70,X
#_06E5C9: STA.w $0E70,X

#_06E5CC: LDA.w $0E30,X
#_06E5CF: AND.b #$07
#_06E5D1: CMP.b #$05
#_06E5D3: BCS .exit

#_06E5D5: LDA.w $0EA0,X
#_06E5D8: BEQ .check_once

#_06E5DA: JSR .check_once
#_06E5DD: JSR .check_once

;---------------------------------------------------------------------------------------------------

.check_once
#_06E5E0: LDA.w $0D10,X
#_06E5E3: CLC
#_06E5E4: ADC.w Sprite_CheckForTileInDirection_pushback_low,Y
#_06E5E7: STA.w $0D10,X

#_06E5EA: LDA.w $0D30,X
#_06E5ED: ADC.w Sprite_CheckForTileInDirection_pushback_high,Y
#_06E5F0: STA.w $0D30,X

.exit
#_06E5F3: RTS

;===================================================================================================

Sprite_CheckForTileInDirection_vertical:
#_06E5F4: JSR Sprite_CheckTileInDirection
#_06E5F7: BCC .exit

#_06E5F9: LDA.w Sprite_CheckForTileInDirection_direction_flag,Y
#_06E5FC: ORA.w $0E70,X
#_06E5FF: STA.w $0E70,X

#_06E602: LDA.w $0E30,X
#_06E605: AND.b #$07
#_06E607: CMP.b #$05
#_06E609: BCS .exit

#_06E60B: LDA.w $0EA0,X
#_06E60E: BEQ .check_once

#_06E610: JSR .check_once
#_06E613: JSR .check_once

;---------------------------------------------------------------------------------------------------

.check_once
#_06E616: LDA.w $0D00,X
#_06E619: CLC
#_06E61A: ADC.w Sprite_CheckForTileInDirection_pushback_low,Y
#_06E61D: STA.w $0D00,X

#_06E620: LDA.w $0D20,X
#_06E623: ADC.w Sprite_CheckForTileInDirection_pushback_high,Y
#_06E626: STA.w $0D20,X

.exit
#_06E629: RTS

;===================================================================================================

SpriteFall_AdjustPosition:
#_06E62A: LDA.w $0310
#_06E62D: CLC
#_06E62E: ADC.w $0D00,X
#_06E631: STA.w $0D00,X

#_06E634: LDA.w $0311
#_06E637: ADC.w $0D20,X
#_06E63A: STA.w $0D20,X

#_06E63D: LDA.w $0312
#_06E640: CLC
#_06E641: ADC.w $0D10,X
#_06E644: STA.w $0D10,X

#_06E647: LDA.w $0313
#_06E64A: ADC.w $0D30,X
#_06E64D: STA.w $0D30,X

#_06E650: RTS

;===================================================================================================

pool Sprite_CheckTileProperty

.offset_x
#_06E651: db $08, $00, $08, $00, $02, $00, $0E, $00
#_06E659: db $08, $00, $08, $00, $FE, $FF, $0A, $00
#_06E661: db $08, $00, $08, $00, $01, $00, $0E, $00
#_06E669: db $04, $00, $04, $00, $04, $00, $04, $00
#_06E671: db $04, $00, $04, $00, $FE, $FF, $0A, $00
#_06E679: db $08, $00, $08, $00, $E7, $FF, $28, $00
#_06E681: db $08, $00, $08, $00, $02, $00, $0E, $00
#_06E689: db $08, $00, $08, $00, $F8, $FF, $17, $00
#_06E691: db $08, $00, $08, $00, $EC, $FF, $24, $00
#_06E699: db $08, $00, $08, $00, $FF, $FF, $10, $00
#_06E6A1: db $08, $00, $08, $00, $FF, $FF, $10, $00
#_06E6A9: db $08, $00, $08, $00, $F8, $FF, $18, $00
#_06E6B1: db $08, $00, $08, $00, $F8, $FF, $18, $00
#_06E6B9: db $08, $00, $03, $00

.offset_y
#_06E6BD: db $06, $00, $14, $00, $0D, $00, $0D, $00
#_06E6C5: db $00, $00, $08, $00, $04, $00, $04, $00
#_06E6CD: db $01, $00, $0E, $00, $08, $00, $08, $00
#_06E6D5: db $04, $00, $04, $00, $04, $00, $04, $00
#_06E6DD: db $FE, $FF, $0A, $00, $04, $00, $04, $00
#_06E6E5: db $E7, $FF, $28, $00, $08, $00, $08, $00
#_06E6ED: db $03, $00, $10, $00, $0A, $00, $0A, $00
#_06E6F5: db $F8, $FF, $19, $00, $08, $00, $08, $00
#_06E6FD: db $EC, $FF, $24, $00, $08, $00, $08, $00
#_06E705: db $FF, $FF, $10, $00, $08, $00, $08, $00
#_06E70D: db $0E, $00, $03, $00, $08, $00, $08, $00
#_06E715: db $F8, $FF, $18, $00, $08, $00, $08, $00
#_06E71D: db $F8, $FF, $20, $00, $08, $00, $08, $00
#_06E725: db $0C, $00, $04, $00

pool off

;===================================================================================================

pool Sprite_CheckForTileInDirection

.direction_flag
#_06E729: db $08 ; up
#_06E72A: db $04 ; down
#_06E72B: db $02 ; left
#_06E72C: db $01 ; right

.pushback_low
#_06E72D: db   1 ; up
#_06E72E: db  -1 ; down
#_06E72F: db   1 ; left
#_06E730: db  -1 ; right

.pushback_high
#_06E731: db   0 ; up
#_06E732: db  -1 ; down
#_06E733: db   0 ; left
#_06E734: db  -1 ; right

pool off

;===================================================================================================

Sprite_CheckTileInDirection:
#_06E735: STY.b $08

#_06E737: LDA.w $0B6B,X
#_06E73A: AND.b #$F0
#_06E73C: LSR A
#_06E73D: LSR A
#_06E73E: ADC.b $08
#_06E740: ASL A
#_06E741: TAY

;===================================================================================================

Sprite_CheckTileProperty:
#_06E742: LDA.b $1B
#_06E744: BEQ .overworld

;---------------------------------------------------------------------------------------------------

#_06E746: REP #$20

#_06E748: LDA.w $0FDA
#_06E74B: CLC
#_06E74C: ADC.w #$0008
#_06E74F: AND.w #$01FF

#_06E752: CLC
#_06E753: ADC.w .offset_y,Y

#_06E756: SEC
#_06E757: SBC.w #$0008
#_06E75A: STA.b $00

#_06E75C: CMP.w #$0200
#_06E75F: BCS .continue_check

#_06E761: LDA.w $0FD8
#_06E764: ADC.w #$0008
#_06E767: AND.w #$01FF

#_06E76A: CLC
#_06E76B: ADC.w .offset_x,Y

#_06E76E: SEC
#_06E76F: SBC.w #$0008
#_06E772: STA.b $02

#_06E774: CMP.w #$0200
#_06E777: BRA .continue_check

;---------------------------------------------------------------------------------------------------

.overworld
#_06E779: REP #$20

#_06E77B: LDA.w $0FDA
#_06E77E: CLC
#_06E77F: ADC.w .offset_y,Y
#_06E782: STA.b $00

#_06E784: SEC
#_06E785: SBC.w $0FBE
#_06E788: CMP.w $0FBA
#_06E78B: BCS .continue_check

#_06E78D: LDA.w $0FD8
#_06E790: CLC
#_06E791: ADC.w .offset_x,Y
#_06E794: STA.b $02

#_06E796: SEC
#_06E797: SBC.w $0FBC
#_06E79A: CMP.w $0FB8

;---------------------------------------------------------------------------------------------------

.continue_check
#_06E79D: SEP #$20
#_06E79F: BCC .check_attributes

#_06E7A1: JMP.w .check_harmlessness

.check_attributes
#_06E7A4: JSR Sprite_GetTileAttribute
#_06E7A7: TAY

#_06E7A8: LDA.w $0CAA,X
#_06E7AB: AND.b #$08
#_06E7AD: BEQ .dont_use_simplified_attributes

#_06E7AF: PHX
#_06E7B0: TYX

#_06E7B1: LDY.b $08

#_06E7B3: LDA.l SimplifiedTileAttributes,X

#_06E7B7: PLX

#_06E7B8: CMP.b #$04
#_06E7BA: BEQ .check_worldiness

#_06E7BC: CMP.b #$01
#_06E7BE: BCC .proceed_to_failure

#_06E7C0: LDA.w $0FA5
#_06E7C3: CMP.b #!TILETYPE_10
#_06E7C5: BCC .proceed_to_success

#_06E7C7: CMP.b #!TILETYPE_14
#_06E7C9: BCS .proceed_to_success

#_06E7CB: JSR Sprite_CheckSlopedTileCollision

#_06E7CE: JMP.w .load_tile_prop_exit

;---------------------------------------------------------------------------------------------------

.proceed_to_success
#_06E7D1: JMP.w .succeed_and_exit

;---------------------------------------------------------------------------------------------------

.check_worldiness
#_06E7D4: LDY.b $1B
#_06E7D6: BNE .proceed_to_failure

#_06E7D8: STA.w $0E90,X

.proceed_to_failure
#_06E7DB: JMP.w .fail

;---------------------------------------------------------------------------------------------------

.dont_use_simplified_attributes
#_06E7DE: LDA.w $0BE0,X
#_06E7E1: ASL A
#_06E7E2: BPL .disable_some_checks

#_06E7E4: LDA.w $0E20,X
#_06E7E7: CMP.b #!SPRITE_D2
#_06E7E9: BEQ .is_fish

#_06E7EB: CMP.b #!SPRITE_8A
#_06E7ED: BNE .not_spiky_ouchers

.is_fish
#_06E7EF: CPY.b #!TILETYPE_09
#_06E7F1: BEQ .fish_in_deep_water

.not_spiky_ouchers
#_06E7F3: CMP.b #!SPRITE_94
#_06E7F5: BNE .not_pirogusu

#_06E7F7: LDA.w $0E90,X
#_06E7FA: BEQ .check_for_water

#_06E7FC: BRA .disable_some_checks

;---------------------------------------------------------------------------------------------------

.not_pirogusu
; Fairy
#_06E7FE: CMP.b #!SPRITE_E3
#_06E800: BEQ .check_for_water

; Arrghus
#_06E802: CMP.b #!SPRITE_8C
#_06E804: BEQ .check_for_water

; Kyameron
#_06E806: CMP.b #!SPRITE_9A
#_06E808: BEQ .check_for_water

; Hover
#_06E80A: CMP.b #!SPRITE_81
#_06E80C: BNE .disable_some_checks

.check_for_water
#_06E80E: CPY.b #!TILETYPE_08
#_06E810: BEQ .fail

#_06E812: CPY.b #!TILETYPE_09

.fish_in_deep_water
#_06E814: BEQ .fail

#_06E816: BRA .succeed_and_exit

;---------------------------------------------------------------------------------------------------

.disable_some_checks
#_06E818: PHX
#_06E819: TYX

#_06E81A: LDA.l Sprite_ReducedTileInteractionTable,X

#_06E81E: PLX

#_06E81F: LDY.b $08
#_06E821: CMP.b #$00
#_06E823: BEQ .fail

#_06E825: LDA.w $0FA5

#_06E828: CMP.b #!TILETYPE_10
#_06E82A: BCC .not_slope

#_06E82C: CMP.b #!TILETYPE_14
#_06E82E: BCS .not_slope

#_06E830: JSR Sprite_CheckSlopedTileCollision
#_06E833: BRA .load_tile_prop_exit

;---------------------------------------------------------------------------------------------------

.not_slope
#_06E835: CMP.b #!TILETYPE_44
#_06E837: BNE .not_spike

#_06E839: LDA.w $0EA0,X
#_06E83C: BEQ .succeed_and_exit

#_06E83E: LDA.w $0CE2,X
#_06E841: BMI .skip_damage_or_recoil

#_06E843: LDA.b #$04
#_06E845: JSL Ancilla_CheckDamageToSprite_preset

#_06E849: LDA.w $0EF0,X
#_06E84C: BEQ .skip_damage_or_recoil

#_06E84E: LDA.b #$99
#_06E850: STA.w $0EF0,X

#_06E853: STZ.w $0EA0,X

.skip_damage_or_recoil
#_06E856: BRA .succeed_and_exit

;---------------------------------------------------------------------------------------------------

.check_harmlessness
; !WTF this JSR is totally pointless and just sets the carry and loads Y.
; It doesn't even save a byte really, because that SEC : SEP #$21 is stupid
#_06E858: JSR .succeed_and_exit

#_06E85B: LDA.w $0E40,X
#_06E85E: ASL A
#_06E85F: BPL .dont_die

#_06E861: STZ.w $0DD0,X

#_06E864: CLC

#_06E865: RTS

.dont_die
#_06E866: SEC

#_06E867: RTS

;---------------------------------------------------------------------------------------------------

.not_spike
; Is pit?
#_06E868: CMP.b #!TILETYPE_20
#_06E86A: BNE .succeed_and_exit

#_06E86C: LDA.w $0B6B,X
#_06E86F: AND.b #$01
#_06E871: BEQ .succeed_and_exit

#_06E873: LDA.w $0EA0,X
#_06E876: BNE .fail

;---------------------------------------------------------------------------------------------------

.succeed_and_exit
#_06E878: SEC ; useless wtf
#_06E879: SEP #$21

#_06E87B: BRA .load_tile_prop_exit

.fail
#_06E87D: CLC

.load_tile_prop_exit
#_06E87E: LDY.b $08

#_06E880: RTS

;===================================================================================================

GetTileAttribute_long:
#_06E881: PHB
#_06E882: PHK
#_06E883: PLB

#_06E884: JSR GetTileAttribute

#_06E887: PLB

#_06E888: RTL

;===================================================================================================

Sprite_GetTileAttribute:
#_06E889: LDA.w $0F20,X

;===================================================================================================

GetTileAttribute:
#_06E88C: CMP.b #$01

#_06E88E: REP #$30

#_06E890: STZ.b $05
#_06E892: BCC .other_layer

#_06E894: LDA.w #$1000
#_06E897: STA.b $05

.other_layer
#_06E899: LDA.b $1B
#_06E89B: AND.w #$00FF
#_06E89E: BEQ .overworld

;---------------------------------------------------------------------------------------------------

.underworld
#_06E8A0: LDA.b $02
#_06E8A2: AND.w #$01FF

#_06E8A5: LSR A
#_06E8A6: LSR A
#_06E8A7: LSR A

#_06E8A8: STA.b $04

#_06E8AA: LDA.b $00
#_06E8AC: AND.w #$01F8

#_06E8AF: ASL A
#_06E8B0: ASL A
#_06E8B1: ASL A

#_06E8B2: CLC ; !USELESS, guaranteed to be clear here
#_06E8B3: ADC.b $04

#_06E8B5: CLC
#_06E8B6: ADC.b $05

#_06E8B8: PHX

#_06E8B9: TAX

#_06E8BA: LDA.l $7F2000,X

#_06E8BE: PLX

#_06E8BF: SEP #$30

#_06E8C1: STA.w $0FA5

#_06E8C4: RTS

;---------------------------------------------------------------------------------------------------

.overworld
#_06E8C5: LDA.b $02
#_06E8C7: LSR A ; /8
#_06E8C8: LSR A
#_06E8C9: LSR A
#_06E8CA: STA.b $02

#_06E8CC: SEP #$10

#_06E8CE: PHX
#_06E8CF: PHY

#_06E8D0: JSL Overworld_GetTileAttributeAtLocation

#_06E8D4: SEP #$30

#_06E8D6: STA.w $0FA5

#_06E8D9: PLY
#_06E8DA: PLX

#_06E8DB: RTS

;===================================================================================================

pool Sprite_CheckSlopedTileCollision
; TODO analyze and better name
.angle
#_06E8DC: db $07, $06, $05, $04, $03, $02, $01, $00
#_06E8E4: db $00, $01, $02, $03, $04, $05, $06, $07

#_06E8EC: db $00, $01, $02, $03, $04, $05, $06, $07
#_06E8F4: db $07, $06, $05, $04, $03, $02, $01, $00

pool off

;---------------------------------------------------------------------------------------------------

Sprite_CheckSlopedTileCollision_long:
#_06E8FC: PHB
#_06E8FD: PHK
#_06E8FE: PLB

#_06E8FF: JSR Sprite_CheckSlopedTileCollision

#_06E902: PLB

#_06E903: RTL

;===================================================================================================

Sprite_CheckSlopedTileCollision:
#_06E904: LDA.b $00
#_06E906: AND.b #$07
#_06E908: STA.b $04

#_06E90A: LDA.b $02
#_06E90C: AND.b #$07
#_06E90E: STA.b $05

#_06E910: LDA.w $0FA5
#_06E913: SEC
#_06E914: SBC.b #$10
#_06E916: STA.b $06

#_06E918: ASL A ; x8
#_06E919: ASL A
#_06E91A: ASL A

#_06E91B: CLC
#_06E91C: ADC.b $05
#_06E91E: TAY

#_06E91F: LDA.b $06
#_06E921: CMP.b #$02
#_06E923: BCC .flip_comparison ; TODO elaborate

#_06E925: LDA.b $04
#_06E927: CMP.w .angle,Y
#_06E92A: BRA .exit

;---------------------------------------------------------------------------------------------------

.flip_comparison
#_06E92C: LDA.w .angle,Y
#_06E92F: CMP.b $04

.exit
#_06E931: RTS

;===================================================================================================

Sprite_Move_XY_Bank06:
#_06E932: JSR Sprite_Move_X_Bank06

#_06E935: JMP.w Sprite_Move_Y_Bank06

;---------------------------------------------------------------------------------------------------

Sprite_Move_X_Bank06:
#_06E938: TXA
#_06E939: CLC
#_06E93A: ADC.b #$10
#_06E93C: TAX

#_06E93D: JSR Sprite_Move_Y_Bank06

#_06E940: LDX.w $0FA0

#_06E943: RTS

;===================================================================================================

Sprite_Move_Y_Bank06:
#_06E944: LDA.w $0D40,X
#_06E947: BEQ .exit

#_06E949: ASL A ; x16
#_06E94A: ASL A
#_06E94B: ASL A
#_06E94C: ASL A

#_06E94D: CLC
#_06E94E: ADC.w $0D60,X
#_06E951: STA.w $0D60,X

#_06E954: LDA.w $0D40,X
#_06E957: PHP

#_06E958: LSR A ; /16
#_06E959: LSR A
#_06E95A: LSR A
#_06E95B: LSR A

#_06E95C: LDY.b #$00

#_06E95E: PLP
#_06E95F: BPL .positive_velocity

#_06E961: ORA.b #$F0
#_06E963: DEY

.positive_velocity
#_06E964: ADC.w $0D00,X
#_06E967: STA.w $0D00,X

#_06E96A: TYA
#_06E96B: ADC.w $0D20,X
#_06E96E: STA.w $0D20,X

.exit
#_06E971: RTS

;===================================================================================================

Sprite_Move_Z_Bank06:
#_06E972: LDA.w $0F80,X

#_06E975: ASL A ; x16
#_06E976: ASL A
#_06E977: ASL A
#_06E978: ASL A

#_06E979: CLC
#_06E97A: ADC.w $0F90,X
#_06E97D: STA.w $0F90,X

#_06E980: LDA.w $0F80,X
#_06E983: PHP

#_06E984: LSR A ; /16
#_06E985: LSR A
#_06E986: LSR A
#_06E987: LSR A

#_06E988: PLP
#_06E989: BPL .positive_velocity

#_06E98B: ORA.b #$F0

.positive_velocity
#_06E98D: ADC.w $0F70,X
#_06E990: STA.w $0F70,X

#_06E993: RTS

;===================================================================================================

Sprite_ProjectSpeedTowardsLink_instantexit:
#_06E994: STZ.b $00

#_06E996: RTS

;---------------------------------------------------------------------------------------------------

Sprite_ProjectSpeedTowardsLink:
#_06E997: STA.b $01

#_06E999: CMP.b #$00
#_06E99B: BEQ .instantexit

#_06E99D: PHX
#_06E99E: PHY

#_06E99F: JSR Sprite_IsBelowLink
#_06E9A2: STY.b $02

#_06E9A4: LDA.b $0E
#_06E9A6: BPL .positive_y

#_06E9A8: EOR.b #$FF
#_06E9AA: INC A

.positive_y
#_06E9AB: STA.b $0C

;---------------------------------------------------------------------------------------------------

#_06E9AD: JSR Sprite_IsRightOfLink
#_06E9B0: STY.b $03

#_06E9B2: LDA.b $0F
#_06E9B4: BPL .positive_x

#_06E9B6: EOR.b #$FF
#_06E9B8: INC A

.positive_x
#_06E9B9: STA.b $0D

;---------------------------------------------------------------------------------------------------

#_06E9BB: LDY.b #$00

#_06E9BD: LDA.b $0D
#_06E9BF: CMP.b $0C
#_06E9C1: BCS .x_is_bigger

#_06E9C3: INY

#_06E9C4: PHA

#_06E9C5: LDA.b $0C
#_06E9C7: STA.b $0D

#_06E9C9: PLA
#_06E9CA: STA.b $0C

.x_is_bigger
#_06E9CC: STZ.b $0B
#_06E9CE: STZ.b $00

#_06E9D0: LDX.b $01

;---------------------------------------------------------------------------------------------------

.next
#_06E9D2: LDA.b $0B
#_06E9D4: CLC
#_06E9D5: ADC.b $0C
#_06E9D7: CMP.b $0D
#_06E9D9: BCC .dont_accumulate

#_06E9DB: SBC.b $0D
#_06E9DD: INC.b $00

.dont_accumulate
#_06E9DF: STA.b $0B

#_06E9E1: DEX
#_06E9E2: BNE .next

;---------------------------------------------------------------------------------------------------

#_06E9E4: TYA
#_06E9E5: BEQ .dont_flip_axes

#_06E9E7: LDA.b $00
#_06E9E9: PHA

#_06E9EA: LDA.b $01
#_06E9EC: STA.b $00

#_06E9EE: PLA
#_06E9EF: STA.b $01

.dont_flip_axes
#_06E9F1: LDA.b $00
#_06E9F3: LDY.b $02
#_06E9F5: BEQ .sign_correct_a

#_06E9F7: EOR.b #$FF
#_06E9F9: INC A
#_06E9FA: STA.b $00

.sign_correct_a
#_06E9FC: LDA.b $01
#_06E9FE: LDY.b $03
#_06EA00: BEQ .sign_correct_b

#_06EA02: EOR.b #$FF
#_06EA04: INC A
#_06EA05: STA.b $01

;---------------------------------------------------------------------------------------------------

.sign_correct_b
#_06EA07: PLY
#_06EA08: PLX

#_06EA09: RTS

;===================================================================================================

Sprite_ApplySpeedTowardsLink:
#_06EA0A: JSR Sprite_ProjectSpeedTowardsLink

#_06EA0D: LDA.b $00
#_06EA0F: STA.w $0D40,X

#_06EA12: LDA.b $01
#_06EA14: STA.w $0D50,X

#_06EA17: RTS

;===================================================================================================

Sprite_ApplySpeedTowardsLink_long:
#_06EA18: PHB
#_06EA19: PHK
#_06EA1A: PLB

#_06EA1B: JSR Sprite_ApplySpeedTowardsLink

#_06EA1E: PLB

#_06EA1F: RTL

;===================================================================================================

Sprite_ProjectSpeedTowardsLink_long:
#_06EA20: PHB
#_06EA21: PHK
#_06EA22: PLB

#_06EA23: JSR Sprite_ProjectSpeedTowardsLink

#_06EA26: PLB

#_06EA27: RTL

;===================================================================================================

Sprite_ProjectSpeedTowardsLocation_long:
#_06EA28: PHB
#_06EA29: PHK
#_06EA2A: PLB

#_06EA2B: JSR Sprite_ProjectSpeedTowardsLocation

#_06EA2E: PLB

#_06EA2F: RTL

;===================================================================================================

Sprite_ProjectSpeedTowardsLocation_fastexit:
#_06EA30: STZ.b $00

#_06EA32: RTS

;---------------------------------------------------------------------------------------------------

Sprite_ProjectSpeedTowardsLocation:
#_06EA33: STA.b $01

#_06EA35: CMP.b #$00
#_06EA37: BEQ .fastexit

#_06EA39: PHX
#_06EA3A: PHY

#_06EA3B: JSR Sprite_IsBelowLocation
#_06EA3E: STY.b $02

#_06EA40: LDA.b $0E
#_06EA42: BPL .positive_y

#_06EA44: EOR.b #$FF
#_06EA46: INC A

.positive_y
#_06EA47: STA.b $0C

;---------------------------------------------------------------------------------------------------

#_06EA49: JSR Sprite_IsRightOfLocation
#_06EA4C: STY.b $03

#_06EA4E: LDA.b $0F
#_06EA50: BPL .positive_x

#_06EA52: EOR.b #$FF
#_06EA54: INC A

.positive_x
#_06EA55: STA.b $0D

;---------------------------------------------------------------------------------------------------

#_06EA57: LDY.b #$00

#_06EA59: LDA.b $0D
#_06EA5B: CMP.b $0C
#_06EA5D: BCS .x_is_bigger

#_06EA5F: INY

#_06EA60: PHA

#_06EA61: LDA.b $0C
#_06EA63: STA.b $0D

#_06EA65: PLA
#_06EA66: STA.b $0C

.x_is_bigger
#_06EA68: STZ.b $0B
#_06EA6A: STZ.b $00

#_06EA6C: LDX.b $01

;---------------------------------------------------------------------------------------------------

.next
#_06EA6E: LDA.b $0B
#_06EA70: CLC
#_06EA71: ADC.b $0C

#_06EA73: CMP.b $0D
#_06EA75: BCC .dont_accumulate

#_06EA77: SBC.b $0D
#_06EA79: INC.b $00

.dont_accumulate
#_06EA7B: STA.b $0B

#_06EA7D: DEX
#_06EA7E: BNE .next

;---------------------------------------------------------------------------------------------------

#_06EA80: TYA
#_06EA81: BEQ .x_was_bigger

#_06EA83: LDA.b $00
#_06EA85: PHA

#_06EA86: LDA.b $01
#_06EA88: STA.b $00

#_06EA8A: PLA
#_06EA8B: STA.b $01

;---------------------------------------------------------------------------------------------------

.x_was_bigger
#_06EA8D: LDA.b $00
#_06EA8F: LDY.b $02
#_06EA91: BEQ .sign_correct_a

#_06EA93: EOR.b #$FF
#_06EA95: INC A
#_06EA96: STA.b $00

.sign_correct_a
#_06EA98: LDA.b $01
#_06EA9A: LDY.b $03
#_06EA9C: BEQ .sign_correct_b

#_06EA9E: EOR.b #$FF
#_06EAA0: INC A
#_06EAA1: STA.b $01

.sign_correct_b
#_06EAA3: PLY
#_06EAA4: PLX

#_06EAA5: RTS

;===================================================================================================
; Returns with Y:
;   0 - left
;   1 - right
;   2 - down
;   3 - up
;===================================================================================================
Sprite_DirectionToFaceLink_long:
#_06EAA6: JSR Sprite_DirectionToFaceLink

#_06EAA9: RTL

;===================================================================================================

Sprite_DirectionToFaceLink:
#_06EAAA: JSR Sprite_IsRightOfLink
#_06EAAD: STY.b $00

#_06EAAF: JSR Sprite_IsBelowLink
#_06EAB2: STY.b $01

#_06EAB4: LDA.b $0E
#_06EAB6: BPL .positive_y

#_06EAB8: EOR.b #$FF
#_06EABA: INC A

.positive_y
#_06EABB: STA.w $0FB5

#_06EABE: LDA.b $0F
#_06EAC0: BPL .positive_x

#_06EAC2: EOR.b #$FF
#_06EAC4: INC A

.positive_x
#_06EAC5: CMP.w $0FB5
#_06EAC8: BCC .use_x_axis

.use_y_axis
#_06EACA: LDY.b $00

#_06EACC: RTS

;---------------------------------------------------------------------------------------------------

.use_x_axis
#_06EACD: LDA.b $01
#_06EACF: INC A
#_06EAD0: INC A
#_06EAD1: TAY

#_06EAD2: RTS

;===================================================================================================

Sprite_IsRightOfLink_long:
#_06EAD3: JSR Sprite_IsRightOfLink

#_06EAD6: RTL

;===================================================================================================

Sprite_IsRightOfLink:
#_06EAD7: LDY.b #$00

#_06EAD9: LDA.b $22
#_06EADB: SEC
#_06EADC: SBC.w $0D10,X
#_06EADF: STA.b $0F

#_06EAE1: LDA.b $23
#_06EAE3: SBC.w $0D30,X
#_06EAE6: BPL .exit

#_06EAE8: INY

.exit
#_06EAE9: RTS

;===================================================================================================

Sprite_IsBelowLink_long:
#_06EAEA: JSR Sprite_IsBelowLink

#_06EAED: RTL

;===================================================================================================

Sprite_IsBelowLink:
#_06EAEE: LDY.b #$00

#_06EAF0: LDA.b $20
#_06EAF2: CLC
#_06EAF3: ADC.b #$08
#_06EAF5: PHP

#_06EAF6: CLC
#_06EAF7: ADC.w $0F70,X

#_06EAFA: PHP

#_06EAFB: SEC
#_06EAFC: SBC.w $0D00,X
#_06EAFF: STA.b $0E

#_06EB01: LDA.b $21
#_06EB03: SBC.w $0D20,X

#_06EB06: PLP
#_06EB07: ADC.b #$00

#_06EB09: PLP
#_06EB0A: ADC.b #$00
#_06EB0C: BPL .exit

#_06EB0E: INY

.exit
#_06EB0F: RTS

;===================================================================================================

Sprite_IsRightOfLocation:
#_06EB10: LDY.b #$00

#_06EB12: LDA.b $04
#_06EB14: SEC
#_06EB15: SBC.w $0D10,X
#_06EB18: STA.b $0F

#_06EB1A: LDA.b $05
#_06EB1C: SBC.w $0D30,X
#_06EB1F: BPL .exit

#_06EB21: INY

.exit
#_06EB22: RTS

;===================================================================================================

Sprite_IsBelowLocation:
#_06EB23: LDY.b #$00

#_06EB25: LDA.b $06
#_06EB27: SEC
#_06EB28: SBC.w $0D00,X
#_06EB2B: STA.b $0E

#_06EB2D: LDA.b $07
#_06EB2F: SBC.w $0D20,X
#_06EB32: BPL .exit

#_06EB34: INY

.exit
#_06EB35: RTS

;===================================================================================================

Sprite_DirectionToFaceLocation:
#_06EB36: PHB
#_06EB37: PHK
#_06EB38: PLB

#_06EB39: JSR Sprite_IsRightOfLocation
#_06EB3C: STY.b $00

#_06EB3E: JSR Sprite_IsBelowLocation
#_06EB41: STY.b $01

#_06EB43: LDA.b $0E
#_06EB45: BPL .positive_y

#_06EB47: EOR.b #$FF
#_06EB49: INC A

.positive_y
#_06EB4A: STA.w $0FB5

#_06EB4D: LDA.b $0F
#_06EB4F: BPL .positive_x

#_06EB51: EOR.b #$FF
#_06EB53: INC A

.positive_x
#_06EB54: CMP.w $0FB5
#_06EB57: BCC .use_x_axis

.use_y_axis
#_06EB59: LDY.b $00

#_06EB5B: PLB

#_06EB5C: RTL

;---------------------------------------------------------------------------------------------------

.use_x_axis
#_06EB5D: LDA.b $01
#_06EB5F: INC A
#_06EB60: INC A
#_06EB61: TAY

#_06EB62: PLB

#_06EB63: RTL

;===================================================================================================
; TODO rename I think?
;===================================================================================================
Guard_ParrySwordAttacks:
#_06EB64: PHB
#_06EB65: PHK
#_06EB66: PLB

#_06EB67: JSR .main

#_06EB6A: PLB

#_06EB6B: RTL

;---------------------------------------------------------------------------------------------------

.recoil_timer_guard
#_06EB6C: db  15,  15,  24,  15
#_06EB70: db  15,  19,  15,  15

.recoil_timer_link
#_06EB74: db   6,   6,   6,  12
#_06EB78: db   6,   6,   6,  15

;---------------------------------------------------------------------------------------------------

.main
#_06EB7C: LDA.b $EE
#_06EB7E: CMP.w $0F20,X
#_06EB81: BNE .different_layer

#_06EB83: LDA.b $46
#_06EB85: ORA.b $4D

.different_layer
#_06EB87: BNE .exit_a

#_06EB89: LDA.w $0EF0,X
#_06EB8C: BMI .exit_a

;---------------------------------------------------------------------------------------------------

#_06EB8E: JSR Sprite_DoHitboxesFast

#_06EB91: LDA.w $037A
#_06EB94: AND.b #$10
#_06EB96: BNE .fail_now

#_06EB98: LDA.b $44
#_06EB9A: CMP.b #$80
#_06EB9C: BEQ .fail_now

#_06EB9E: JSR SetupActionHitbox

#_06EBA1: LDA.b $3C
#_06EBA3: BMI .continue

#_06EBA5: JSR CheckIfHitBoxesOverlap
#_06EBA8: BCC .continue

#_06EBAA: LDA.w $0E20,X
#_06EBAD: CMP.b #!SPRITE_6A
#_06EBAF: BEQ .is_bnc

#_06EBB1: JSL GetRandomNumber
#_06EBB5: AND.b #$07
#_06EBB7: TAY

#_06EBB8: LDA.w .recoil_timer_guard,Y
#_06EBBB: STA.w $0EA0,X

;---------------------------------------------------------------------------------------------------

.is_bnc
#_06EBBE: JSL GetRandomNumber
#_06EBC2: AND.b #$07
#_06EBC4: TAY

#_06EBC5: LDA.w .recoil_timer_link,Y
#_06EBC8: STA.b $46

#_06EBCA: LDA.b #$18

#_06EBCC: LDY.b $3C
#_06EBCE: CPY.b #$09
#_06EBD0: BPL .not_a_poke_a

#_06EBD2: LDA.b #$20

.not_a_poke_a
#_06EBD4: JSR Sprite_ProjectSpeedTowardsLink

#_06EBD7: LDA.b $00
#_06EBD9: EOR.b #$FF
#_06EBDB: INC A
#_06EBDC: STA.w $0F30,X

#_06EBDF: LDA.b $01
#_06EBE1: EOR.b #$FF
#_06EBE3: INC A
#_06EBE4: STA.w $0F40,X

#_06EBE7: LDA.b #$10

#_06EBE9: LDY.b $3C
#_06EBEB: CPY.b #$09
#_06EBED: BPL .not_a_poke_b

#_06EBEF: LDA.b #$08

.not_a_poke_b
#_06EBF1: JSR Sprite_ApplyRecoilToLink
#_06EBF4: JSR Link_PlaceRepulseSpark

#_06EBF7: LDA.b #$90
#_06EBF9: STA.b $47

.exit_a
#_06EBFB: RTS

;===================================================================================================

.continue
#_06EBFC: JSR Sprite_SetupHitBox
#_06EBFF: JSR CheckIfHitBoxesOverlap
#_06EC02: BCS Sprite_AttemptZapDamage

.fail_now
#_06EC04: JML Sprite_AttemptDamageToLinkWithCollisionCheck

;===================================================================================================

Sprite_AttemptZapDamage:
#_06EC08: LDA.w $0E20,X

; Aga always zaps
#_06EC0B: CMP.b #!SPRITE_7A
#_06EC0D: BEQ .get_zapped

#_06EC0F: CMP.b #!SPRITE_0D
#_06EC11: BNE .not_buzzblob

; sword 4+ means no zap
#_06EC13: LDA.l $7EF359
#_06EC17: CMP.b #$04
#_06EC19: BCC .get_zapped

.not_buzzblob
#_06EC1B: CMP.b #!SPRITE_24
#_06EC1D: BEQ .blue_baritone_saxamaphone

; red tenor saxophone
#_06EC1F: CMP.b #!SPRITE_23
#_06EC21: BNE .no_damage

.blue_baritone_saxamaphone
#_06EC23: LDA.w $0DF0,X
#_06EC26: BEQ .no_damage

;---------------------------------------------------------------------------------------------------

.get_zapped
#_06EC28: LDA.w $0DD0,X
#_06EC2B: CMP.b #$09
#_06EC2D: BNE .no_damage

#_06EC2F: LDA.w $031F
#_06EC32: BNE .exit

#_06EC34: LDA.b #$40
#_06EC36: STA.w $0E00,X

#_06EC39: STA.w $0360

#_06EC3C: JSR Sprite_AttemptDamageToLinkPlusRecoil

.exit
#_06EC3F: RTS

;---------------------------------------------------------------------------------------------------

.no_damage
; TODO??? Slower recoil for charged sword?
#_06EC40: LDA.b #$50

#_06EC42: LDY.b $3C
#_06EC44: CPY.b #$09
#_06EC46: BMI .not_charged

#_06EC48: LDA.b #$40

.not_charged
#_06EC4A: JSR Sprite_ProjectSpeedTowardsLink

#_06EC4D: LDA.b $00
#_06EC4F: EOR.b #$FF
#_06EC51: INC A
#_06EC52: STA.w $0F30,X

#_06EC55: LDA.b $01
#_06EC57: EOR.b #$FF
#_06EC59: INC A
#_06EC5A: STA.w $0F40,X

#_06EC5D: JSL Sprite_CalculateSwordDamage

#_06EC61: RTS

;===================================================================================================

Medallion_CheckSpriteDamage:
#_06EC62: LDA.w $0C4A,X
#_06EC65: STA.w $0FB5

#_06EC68: LDX.b #$0F

.next
#_06EC6A: LDA.w $0DD0,X
#_06EC6D: CMP.b #$09
#_06EC6F: BCC .skip

#_06EC71: LDA.w $0BA0,X
#_06EC74: ORA.w $0F00,X
#_06EC77: BNE .skip

#_06EC79: LDA.w $0FB5
#_06EC7C: JSL Ancilla_CheckDamageToSprite_aggressive

.skip
#_06EC80: DEX
#_06EC81: BPL .next

#_06EC83: RTL

;===================================================================================================

AncillaDamageClasses:
#_06EC84: db $06 ; NOTHING
#_06EC85: db $01 ; SOMARIA BULLET
#_06EC86: db $0B ; FIRE ROD SHOT
#_06EC87: db $00 ; UNUSED
#_06EC88: db $00 ; BEAM HIT
#_06EC89: db $00 ; BOOMERANG
#_06EC8A: db $00 ; WALL HIT
#_06EC8B: db $08 ; BOMB
#_06EC8C: db $00 ; DOOR DEBRIS
#_06EC8D: db $06 ; ARROW
#_06EC8E: db $00 ; ARROW IN THE WALL
#_06EC8F: db $0C ; ICE ROD SHOT
#_06EC90: db $01 ; SWORD BEAM_BOUNCE
#_06EC91: db $00 ; SPIN ATTACK FULL CHARGE SP
#_06EC92: db $00 ; BLAST WALL EXPLOSION
#_06EC93: db $00 ; BLAST WALL EXPLOSION
#_06EC94: db $00 ; BLAST WALL EXPLOSION
#_06EC95: db $01 ; ICE ROD WALL HIT
#_06EC96: db $00 ; BLAST WALL EXPLOSION
#_06EC97: db $00 ; ICE ROD SPARKLE
#_06EC98: db $00 ; BAD POINTER
#_06EC99: db $00 ; SPLASH
#_06EC9A: db $00 ; HIT STARS
#_06EC9B: db $00 ; SHOVEL DIRT
#_06EC9C: db $0E ; ETHER SPELL
#_06EC9D: db $0D ; BOMBOS SPELL
#_06EC9E: db $00 ; POWDER DUST
#_06EC9F: db $00 ; SWORD WALL HIT
#_06ECA0: db $0F ; QUAKE SPELL
#_06ECA1: db $00 ; SCREEN SHAKE
#_06ECA2: db $00 ; DASH DUST
#_06ECA3: db $07 ; HOOKSHOT
#_06ECA4: db $01 ; BLANKET
#_06ECA5: db $01 ; SNORE
#_06ECA6: db $01 ; ITEM GET
#_06ECA7: db $01 ; LINK POOF
#_06ECA8: db $01 ; GRAVESTONE
#_06ECA9: db $01 ; BAD POINTER
#_06ECAA: db $01 ; SWORD SWING SPARKLE
#_06ECAB: db $01 ; DUCK
#_06ECAC: db $01 ; WISH POND ITEM
#_06ECAD: db $01 ; MILESTONE ITEM GET
#_06ECAE: db $01 ; SPIN ATTACK SPARKLE A
#_06ECAF: db $01 ; SPIN ATTACK SPARKLE B
#_06ECB0: db $01 ; SOMARIA BLOCK
#_06ECB1: db $01 ; SOMARIA BLOCK FIZZ
#_06ECB2: db $01 ; SOMARIA BLOCK FISSION
#_06ECB3: db $0B ; LAMP FLAME
#_06ECB4: db $00 ; BYRNA WINDUP SPARK
#_06ECB5: db $01 ; BYRNA SPARK
#_06ECB6: db $01 ; BLAST WALL FIREBALL
#_06ECB7: db $01 ; BLAST WALL EXPLOSION
#_06ECB8: db $01 ; SKULL WOODS FIRE
#_06ECB9: db $01 ; MASTER SWORD GET
#_06ECBA: db $01 ; FLUTE
#_06ECBB: db $01 ; WEATHERVANE EXPLOSION
#_06ECBC: db $01 ; CUTSCENE DUCK

;===================================================================================================

Ancilla_CheckDamageToSprite:
#_06ECBD: LDY.w $0EF0,X
#_06ECC0: BPL Ancilla_CheckDamageToSprite_aggressive

#_06ECC2: RTL

;===================================================================================================

Ancilla_CheckDamageToSprite_aggressive:
#_06ECC3: PHX

#_06ECC4: TAX
#_06ECC5: LDA.l AncillaDamageClasses,X

#_06ECC9: PLX

#_06ECCA: CMP.b #$06
#_06ECCC: BNE Ancilla_CheckDamageToSprite_preset

#_06ECCE: PHA

#_06ECCF: LDA.l $7EF340
#_06ECD3: CMP.b #$03

#_06ECD5: PLA
#_06ECD6: BCC Ancilla_CheckDamageToSprite_preset

#_06ECD8: LDA.w $0E20,X
#_06ECDB: CMP.b #!SPRITE_D7
#_06ECDD: BNE .not_ganon

#_06ECDF: LDA.b #$20
#_06ECE1: STA.w $0F10,X

.not_ganon
#_06ECE4: LDA.b #$09

;===================================================================================================

#Ancilla_CheckDamageToSprite_preset:
#_06ECE6: CMP.b #$0F
#_06ECE8: BNE .not_quake_against_airborne

#_06ECEA: LDY.w $0F70,X
#_06ECED: BEQ .not_quake_against_airborne

#_06ECEF: RTL

;---------------------------------------------------------------------------------------------------

.not_quake_against_airborne
#_06ECF0: CMP.b #$00
#_06ECF2: BEQ .not_airborne

#_06ECF4: CMP.b #$07
#_06ECF6: BNE .apply

;---------------------------------------------------------------------------------------------------

.not_airborne
#_06ECF8: JSL .apply

#_06ECFC: LDA.w $0CE2,X
#_06ECFF: BNE .exit

#_06ED01: LDA.w $0FAC
#_06ED04: BNE .exit

#_06ED06: LDA.b #$05
#_06ED08: STA.w $0FAC

#_06ED0B: LDY.w $0FB6

#_06ED0E: LDA.w $0C04,Y
#_06ED11: ADC.b #$04
#_06ED13: STA.w $0FAD

#_06ED16: LDA.w $0BFA,Y
#_06ED19: STA.w $0FAE

#_06ED1C: LDA.b $EE
#_06ED1E: STA.w $0B68

#_06ED21: STZ.w $012E

#_06ED24: LDA.b #!SFX2_05
#_06ED26: JSL SpriteSFX_QueueSFX2WithPan

.exit
#_06ED2A: RTL

;---------------------------------------------------------------------------------------------------

.apply
#_06ED2B: STA.w $0CF2

#_06ED2E: TAY

#_06ED2F: LDA.b #$20

#_06ED31: CPY.b #$08
#_06ED33: BNE .not_bomb_damage

#_06ED35: LDA.b #$35

.not_bomb_damage
#_06ED37: BRA Sprite_ApplyCalculatedDamage

;===================================================================================================

pool Sprite_CalculateSwordDamage

.damage_class
;             fs   ms   ts   gs
#_06ED39: db $01, $02, $03, $04 ; slash/dash
#_06ED3D: db $02, $03, $04, $05 ; spin
#_06ED41: db $01, $01, $02, $03 ; poke

pool off

;---------------------------------------------------------------------------------------------------

Sprite_CalculateSwordDamage:
#_06ED45: LDA.w $0E60,X
#_06ED48: AND.b #$40
#_06ED4A: BEQ .vulnerable_to_sword

#_06ED4C: RTL

;---------------------------------------------------------------------------------------------------

.vulnerable_to_sword
#_06ED4D: LDA.w $0372
#_06ED50: STA.l $7FFA4C,X

#_06ED54: PHX

#_06ED55: LDA.l $7EF359
#_06ED59: DEC A

; if dashing, use same as slash
#_06ED5A: LDX.w $0372
#_06ED5D: BNE .set_damage_class

#_06ED5F: BRA .check_if_spinning

.spinning
#_06ED61: ORA.b #$04
#_06ED63: BRA .set_damage_class

.check_if_spinning
#_06ED65: LDX.b $3C
#_06ED67: BMI .spinning

; 9+ = poke
#_06ED69: CPX.b #$09
#_06ED6B: BMI .set_damage_class

#_06ED6D: ORA.b #$08

.set_damage_class
#_06ED6F: TAX

#_06ED70: LDA.l .damage_class,X
#_06ED74: STA.w $0CF2

#_06ED77: LDA.w $0301
#_06ED7A: AND.b #$0A
#_06ED7C: BEQ .not_hammer

; force class 3 damage for hammer
#_06ED7E: LDA.b #$03
#_06ED80: STA.w $0CF2

.not_hammer
#_06ED83: LDA.b #$04
#_06ED85: STA.w $02E3

#_06ED88: PLX

#_06ED89: LDA.b #$10
#_06ED8B: STA.b $47

#_06ED8D: LDA.b #$9D

;===================================================================================================

Sprite_ApplyCalculatedDamage:
#_06ED8F: STA.b $00

#_06ED91: STZ.w $0CF3

#_06ED94: LDA.w $0E60,X
#_06ED97: AND.b #$40
#_06ED99: BNE .exit_a

#_06ED9B: LDA.b #$00
#_06ED9D: XBA

; These high ID sprites just take no damage
#_06ED9E: LDA.w $0E20,X
#_06EDA1: CMP.b #!SPRITE_D8
#_06EDA3: BCC .not_absorbable

.exit_a
#_06EDA5: RTL

;---------------------------------------------------------------------------------------------------

.not_absorbable
#_06EDA6: REP #$20

#_06EDA8: ASL A ; x16
#_06EDA9: ASL A
#_06EDAA: ASL A
#_06EDAB: ASL A

#_06EDAC: ORA.w $0CF2

#_06EDAF: PHX

#_06EDB0: REP #$10

#_06EDB2: TAX

#_06EDB3: SEP #$20

#_06EDB5: LDA.l $7F6000,X
#_06EDB9: STA.b $02

#_06EDBB: SEP #$10

#_06EDBD: LDA.w $0CF2
#_06EDC0: ASL A ; x8
#_06EDC1: ASL A
#_06EDC2: ASL A
#_06EDC3: ORA.b $02
#_06EDC5: TAX

#_06EDC6: LDA.l DamageSubclassValue,X

#_06EDCA: PLX

;===================================================================================================

#AgahnimBalls_DamageAgahnim:
#_06EDCB: CMP.b #$F9
#_06EDCD: BNE .dont_fairyize

#_06EDCF: LDA.b #!SPRITE_E3

;---------------------------------------------------------------------------------------------------

.transmute_to_sprite
#_06EDD1: STA.w $0E20,X

#_06EDD4: JSL SpritePrep_LoadProperties
#_06EDD8: JSL Sprite_SpawnPoofGarnish

#_06EDDC: STZ.w $012F

#_06EDDF: LDA.b #!SFX3_32
#_06EDE1: JSL SpriteSFX_QueueSFX3WithPan

#_06EDE5: JMP.w .clear_queued_damage

;---------------------------------------------------------------------------------------------------

.dont_fairyize
#_06EDE8: CMP.b #$FA
#_06EDEA: BNE .dont_blobbify

#_06EDEC: LDA.b #!SPRITE_8F
#_06EDEE: JSL .transmute_to_sprite

#_06EDF2: LDA.b #$02
#_06EDF4: STA.w $0D80,X

#_06EDF7: LDA.b #$20
#_06EDF9: STA.w $0F80,X

#_06EDFC: LDA.b #$08
#_06EDFE: STA.w $0F50,X

#_06EE01: STZ.w $0EA0,X
#_06EE04: STZ.w $0EF0,X
#_06EE07: STZ.w $0E50,X

#_06EE0A: LDA.b #$01
#_06EE0C: STA.w $0CD2,X

#_06EE0F: STA.w $0BE0,X

#_06EE12: RTL

;---------------------------------------------------------------------------------------------------

.dont_blobbify
#_06EE13: CMP.w $0CE2,X
#_06EE16: BCC .new_damage_less

#_06EE18: STA.w $0CE2,X

.new_damage_less
#_06EE1B: CMP.b #$00
#_06EE1D: BNE .non_zero_damage

#_06EE1F: LDA.w $0CF2
#_06EE22: CMP.b #$0A
#_06EE24: BEQ .powder_damage

#_06EE26: LDA.w $0B6B,X
#_06EE29: AND.b #$04
#_06EE2B: BNE .early_phase_helma

#_06EE2D: STZ.w $02E3

; !WEIRD powder can reset damage, and it's intentional
.powder_damage
#_06EE30: JMP.w .clear_queued_damage

.non_zero_damage
#_06EE33: CMP.b #$FE
#_06EE35: BCC .sub_frozen

#_06EE37: LDA.w $0DD0,X
#_06EE3A: CMP.b #$0B
#_06EE3C: BEQ .powder_damage

.sub_frozen
#_06EE3E: LDA.w $0E20,X
#_06EE41: CMP.b #!SPRITE_9A
#_06EE43: BNE .dont_reset_kyameron

#_06EE45: LDY.w $0CE2,X
#_06EE48: CPY.b #$F0
#_06EE4A: BCS .dont_reset_kyameron

#_06EE4C: LDA.b #$09
#_06EE4E: STA.w $0DD0,X

#_06EE51: LDA.b #$04
#_06EE53: STA.w $0D80,X

#_06EE56: LDA.b #$0F
#_06EE58: STA.w $0DF0,X

#_06EE5B: LDA.b #!SFX2_28
#_06EE5D: JSL SpriteSFX_QueueSFX2WithPan

#_06EE61: RTL

;---------------------------------------------------------------------------------------------------

.dont_reset_kyameron
#_06EE62: CMP.b #!SPRITE_1B
#_06EE64: BNE .not_arrow

;===================================================================================================

#SpriteArrow_Break:
#_06EE66: LDA.b #!SFX2_05
#_06EE68: JSL SpriteSFX_QueueSFX2WithPan

#_06EE6C: JSR Sprite_ScheduleForBreakage
#_06EE6F: JSL Sprite_PlaceRepulseSpark

#_06EE73: RTL

;===================================================================================================

.not_arrow
#_06EE74: PHA

#_06EE75: LDA.b $00
#_06EE77: STA.w $0EF0,X

#_06EE7A: PLA
#_06EE7B: CMP.b #!SPRITE_92
#_06EE7D: BNE .not_king_helma

#_06EE7F: LDA.w $0DB0,X
#_06EE82: CMP.b #$03
#_06EE84: BCC .early_phase_helma

;---------------------------------------------------------------------------------------------------

.not_king_helma
#_06EE86: LDY.b #!SFX3_21

#_06EE88: LDA.w $0B6B,X
#_06EE8B: AND.b #$02
#_06EE8D: BNE .set_damage_sfx

#_06EE8F: LDY.b #!SFX3_08

#_06EE91: LDA.w $0BE0,X
#_06EE94: AND.b #$10
#_06EE96: BEQ .set_damage_sfx

#_06EE98: LDY.b #!SFX3_1C

.set_damage_sfx
#_06EE9A: STY.b $01

#_06EE9C: JSL Sprite_CalculateSFXPan
#_06EEA0: ORA.b $01
#_06EEA2: STA.w $012F

;---------------------------------------------------------------------------------------------------

.early_phase_helma
#_06EEA5: LDA.b #$00

#_06EEA7: LDY.w $0CF2
#_06EEAA: CPY.b #$0D
#_06EEAC: BCS .set_iframe_timer

#_06EEAE: LDY.w $0E20,X

#_06EEB1: LDA.b #$14

#_06EEB3: CPY.b #!SPRITE_09
#_06EEB5: BEQ .set_iframe_timer

#_06EEB7: LDA.b #$0F
#_06EEB9: CPY.b #!SPRITE_53
#_06EEBB: BEQ .eleven_frames_of_armos

#_06EEBD: CPY.b #!SPRITE_18
#_06EEBF: BNE .set_iframe_timer

.eleven_frames_of_armos
#_06EEC1: LDA.b #$0B

.set_iframe_timer
#_06EEC3: STA.w $0EA0,X

#_06EEC6: RTL

;---------------------------------------------------------------------------------------------------

.clear_queued_damage
#_06EEC7: STZ.w $0EF0,X
#_06EECA: STZ.w $0CE2,X

#_06EECD: RTL

;===================================================================================================

#MiniMoldorm_Recoil:
#_06EECE: LDA.w $0DD0,X
#_06EED1: CMP.b #$09
#_06EED3: BCC .exit_b

#_06EED5: STA.w $0FB5

#_06EED8: LDA.w $0CE2,X
#_06EEDB: CMP.b #$FD
#_06EEDD: BNE .not_burning

#_06EEDF: STZ.w $0CE2,X

#_06EEE2: LDA.b #!SFX3_09
#_06EEE4: JSL SpriteSFX_QueueSFX3WithPan

#_06EEE8: LDA.b #$07
#_06EEEA: STA.w $0DD0,X

#_06EEED: LDA.b #$70
#_06EEEF: STA.w $0DF0,X

#_06EEF2: LDA.w $0E40,X
#_06EEF5: INC A
#_06EEF6: INC A
#_06EEF7: STA.w $0E40,X

#_06EEFA: STZ.w $0CE2,X

.exit_b
#_06EEFD: RTS

;---------------------------------------------------------------------------------------------------

.not_burning
#_06EEFE: CMP.b #$FB
#_06EF00: BCC .transmutation

#_06EF02: STZ.w $0CE2,X

#_06EF05: STA.b $00

#_06EF07: LDY.w $0DD0,X
#_06EF0A: CPY.b #$0B
#_06EF0C: BEQ .exit_b

#_06EF0E: LDY.b #$00

#_06EF10: CMP.b #$FE
#_06EF12: BNE .not_freeze

#_06EF14: INY

.not_freeze
#_06EF15: TYA
#_06EF16: STA.l $7FFA3C,X
#_06EF1A: BEQ .sprite_not_frozen

#_06EF1C: LDA.w $0CAA,X
#_06EF1F: ORA.b #$08
#_06EF21: STA.w $0CAA,X

#_06EF24: ASL.w $0BE0,X
#_06EF27: LSR.w $0BE0,X

#_06EF2A: LDA.b #!SFX2_0F
#_06EF2C: JSL SpriteSFX_QueueSFX2WithPan

#_06EF30: LDA.b #$18
#_06EF32: STA.w $0F80,X

#_06EF35: ASL.w $0CD2,X
#_06EF38: LSR.w $0CD2,X

#_06EF3B: JSR Sprite_ZeroVelocity_XY_Bank06

;---------------------------------------------------------------------------------------------------

.sprite_not_frozen
#_06EF3E: LDA.b #$0B
#_06EF40: STA.w $0DD0,X

#_06EF43: LDA.b #$40
#_06EF45: STA.w $0DF0,X

#_06EF48: LDA.b $00
#_06EF4A: CLC
#_06EF4B: ADC.b #$05
#_06EF4D: TAY

#_06EF4E: LDA.w .stun_timers,Y
#_06EF51: STA.w $0B58,X

#_06EF54: LDA.w $0E20,X
#_06EF57: CMP.b #!SPRITE_23
#_06EF59: BNE .not_a_red_bari

#_06EF5B: INC A
#_06EF5C: STA.w $0E20,X

.not_a_red_bari
#_06EF5F: JMP.w .exit_c

;---------------------------------------------------------------------------------------------------

.stun_timers
#_06EF62: db  32 ; 0xFB
#_06EF63: db 128 ; 0xFC
#_06EF64: db   0 ; 0xFD
#_06EF65: db   0 ; 0xFE
#_06EF66: db 255 ; 0xFF

;---------------------------------------------------------------------------------------------------

.transmutation
#_06EF67: LDA.w $0E50,X
#_06EF6A: STA.b $00

#_06EF6C: SEC
#_06EF6D: SBC.w $0CE2,X
#_06EF70: STA.w $0E50,X

#_06EF73: STZ.w $0CE2,X

#_06EF76: BEQ .zero_hp_now
#_06EF78: BCS .exit_c

.zero_hp_now
#_06EF7A: LDA.w $0CBA,X
#_06EF7D: BNE .no_forced_drop

#_06EF7F: LDA.w $0DD0,X
#_06EF82: CMP.b #$0B
#_06EF84: BNE .not_currently_stunned

#_06EF86: LDA.b #$03
#_06EF88: STA.w $0CBA,X

;---------------------------------------------------------------------------------------------------

.not_currently_stunned
#_06EF8B: LDA.l $7FFA4C,X
#_06EF8F: BEQ .no_forced_drop

#_06EF91: LDA.b #$00
#_06EF93: STA.l $7FFA4C,X

#_06EF97: STZ.w $0BE0,X

.no_forced_drop
#_06EF9A: LDY.w $0E20,X
#_06EF9D: CPY.b #!SPRITE_1B
#_06EF9F: BEQ .no_arrow_sfx

#_06EFA1: LDA.b #!SFX3_09
#_06EFA3: JSL SpriteSFX_QueueSFX3WithPan

.no_arrow_sfx
#_06EFA7: CPY.b #!SPRITE_40
#_06EFA9: BNE .not_aga_barrier

#_06EFAB: PHX

#_06EFAC: LDX.b $8A

#_06EFAE: LDA.l $7EF280,X
#_06EFB2: ORA.b #$40
#_06EFB4: STA.l $7EF280,X

#_06EFB8: PLX

;---------------------------------------------------------------------------------------------------

.not_aga_barrier
#_06EFB9: TYA
#_06EFBA: CMP.b #!SPRITE_EC
#_06EFBC: BNE .not_a_thrown_item

#_06EFBE: LDY.w $0DB0,X
#_06EFC1: CPY.b #$02
#_06EFC3: BNE .exit_c

#_06EFC5: JMP.w ThrowableScenery_TransmuteToDebris

.not_a_thrown_item
#_06EFC8: PHA

#_06EFC9: LDA.w $0DD0,X
#_06EFCC: CMP.b #$0A
#_06EFCE: BNE .not_being_carried

#_06EFD0: STZ.w $0308
#_06EFD3: STZ.w $0309

.not_being_carried
#_06EFD6: LDA.b #$06
#_06EFD8: STA.w $0DD0,X

#_06EFDB: PLA
#_06EFDC: CMP.b #!SPRITE_0C
#_06EFDE: BNE Sprite_AttemptKillingOfKin

;===================================================================================================

#Sprite_PrepareToDie:
#_06EFE0: LDA.b #$06
#_06EFE2: STA.w $0DD0,X

#_06EFE5: LDA.b #$1F
#_06EFE7: STA.w $0DF0,X

#_06EFEA: JSR Sprite_ChangeOAMAllotmentTo4

;---------------------------------------------------------------------------------------------------

.exit_c
#_06EFED: RTS

;===================================================================================================

Sprite_AttemptKillingOfKin:
#_06EFEE: CMP.b #!SPRITE_92
#_06EFF0: BNE .not_helmasaur_king

#_06EFF2: JSL Sprite_KillFriends

#_06EFF6: LDA.b #$FF
#_06EFF8: STA.w $0DF0,X

#_06EFFB: JMP.w Sprite_BossScreamAndDisableMenu

;---------------------------------------------------------------------------------------------------

.not_helmasaur_king
#_06EFFE: CMP.b #!SPRITE_CB
#_06F000: BNE .not_trinexx_rock

#_06F002: JMP.w TrinexxRock_ScreamAndDie

.not_trinexx_rock
#_06F005: CMP.b #!SPRITE_CC
#_06F007: BEQ .is_trinexx_fire

#_06F009: CMP.b #!SPRITE_CD
#_06F00B: BNE .not_trinexx_ice

.is_trinexx_fire
#_06F00D: JMP.w Sidenexx_ScreamAndDie

;---------------------------------------------------------------------------------------------------

.not_trinexx_ice
#_06F010: CMP.b #!SPRITE_53
#_06F012: BEQ ArmosKnight_ScreamAndDie

#_06F014: CMP.b #!SPRITE_54
#_06F016: BEQ Lanmolas_ScreamAndDie

#_06F018: CMP.b #!SPRITE_09
#_06F01A: BEQ Moldorm_ScreamAndDie

#_06F01C: CMP.b #!SPRITE_7A
#_06F01E: BNE .not_agahnim

#_06F020: JMP.w Agahnim_ScreamAndDie

;---------------------------------------------------------------------------------------------------

.not_agahnim
#_06F023: CMP.b #!SPRITE_23
#_06F025: BEQ RedBari_TimeToDie

#_06F027: CMP.b #!SPRITE_0F
#_06F029: BNE SpriteDeath_not_octoballoon

;===================================================================================================

#Octoballoon_TimeToDie:
#_06F02B: STZ.w $0EF0,X

#_06F02E: LDA.b #$0F
#_06F030: STA.w $0DF0,X

#_06F033: RTS

;---------------------------------------------------------------------------------------------------

#SpriteDeath_not_octoballoon:
#_06F034: LDA.w $0B6B,X
#_06F037: AND.b #$02
#_06F039: BNE .not_a_boss

#_06F03B: LDA.w $0EF0,X
#_06F03E: ASL A

#_06F03F: LDA.b #$0F
#_06F041: BCC .delay

#_06F043: LDA.b #$1F

.delay
#_06F045: STA.w $0DF0,X

#_06F048: JMP.w NormalMob_TimeToDie

;===================================================================================================

#UNREACHABLE_06F04B:
#_06F04B: RTS

;===================================================================================================

#Moldorm_ScreamAndDie:
#_06F04C: LDA.b #$03
#_06F04E: STA.w $0D80,X

#_06F051: LDA.b #$A0
#_06F053: STA.w $0F10,X

#_06F056: LDA.b #$09
#_06F058: STA.w $0DD0,X

#_06F05B: BRA Sprite_BossScreamAndDisableMenu

;---------------------------------------------------------------------------------------------------

.not_a_boss
#_06F05D: LDA.w $0E20,X
#_06F060: CMP.b #!SPRITE_A2
#_06F062: BEQ .kholdstare

#_06F064: JSL Sprite_KillFriends

.kholdstare
#_06F068: LDA.b #$04
#_06F06A: STA.w $0DD0,X

#_06F06D: STZ.w $0D90,X

#_06F070: LDA.b #$FF

;---------------------------------------------------------------------------------------------------

.set_death_timer
#_06F072: STA.w $0DF0,X
#_06F075: STA.w $0EF0,X

#_06F078: BRA Sprite_BossScreamAndDisableMenu

;---------------------------------------------------------------------------------------------------

#Lanmolas_ScreamAndDie:
#_06F07A: LDA.b #$05
#_06F07C: STA.w $0D80,X

#_06F07F: LDA.b #$C0
#_06F081: BRA .set_death_timer

;===================================================================================================

ArmosKnight_ScreamAndDie:
#_06F083: LDA.b #$23
#_06F085: STA.w $0DF0,X

#_06F088: STZ.w $0EF0,X

#_06F08B: BRA .queue_scream

;===================================================================================================

#Sprite_BossScreamAndDisableMenu:
#_06F08D: INC.w $0FFC

.queue_scream
#_06F090: STZ.w $012F

#_06F093: LDA.b #!SFX3_22
#_06F095: JSL SpriteSFX_QueueSFX3WithPan

#_06F099: RTS

;===================================================================================================

RedBari_TimeToDie:
#_06F09A: LDA.w $0DB0,X
#_06F09D: BNE SpriteDeath_not_octoballoon

#_06F09F: LDA.b #$02
#_06F0A1: STA.w $0D80,X

#_06F0A4: LDA.b #$20
#_06F0A6: STA.w $0DF0,X

#_06F0A9: LDA.b #$09
#_06F0AB: STA.w $0DD0,X

#_06F0AE: STZ.w $0EF0,X

#_06F0B1: RTS

;===================================================================================================

Sidenexx_ScreamAndDie:
#_06F0B2: LDA.b #$80
#_06F0B4: STA.w $0D80,X

#_06F0B7: LDA.b #$60
#_06F0B9: STA.w $0DF0,X

#_06F0BC: LDA.b #$09
#_06F0BE: STA.w $0DD0,X

#_06F0C1: BRA Sprite_BossScreamAndDisableMenu

;===================================================================================================

TrinexxRock_ScreamAndDie:
#_06F0C3: LDA.b #$80
#_06F0C5: STA.w $0D80,X

#_06F0C8: LDA.b #$80
#_06F0CA: STA.w $0DF0,X

#_06F0CD: LDA.b #$09
#_06F0CF: STA.w $0DD0,X

#_06F0D2: BRA Sprite_BossScreamAndDisableMenu

;===================================================================================================

Agahnim_ScreamAndDie:
#_06F0D4: JSL Sprite_KillFriends

#_06F0D8: LDA.b #$09
#_06F0DA: STA.w $0DD0,X
#_06F0DD: STA.w $0BA0,X

#_06F0E0: LDA.w $0FFF
#_06F0E3: BNE .aga_2

#_06F0E5: LDA.b #$0A
#_06F0E7: STA.w $0D80,X

#_06F0EA: LDA.b #$FF
#_06F0EC: STA.w $0DF0,X

#_06F0EF: LDA.b #$20
#_06F0F1: STA.w $0F80,X

#_06F0F4: JMP.w Sprite_BossScreamAndDisableMenu

;---------------------------------------------------------------------------------------------------

.aga_2
#_06F0F7: LDA.b #$FF
#_06F0F9: STA.w $0DF0,X

#_06F0FC: LDA.b #$08
#_06F0FE: STA.w $0D80,X

#_06F101: INC A
#_06F102: STA.w $0D81
#_06F105: STA.w $0D82

#_06F108: STZ.w $0DC1
#_06F10B: STZ.w $0DC2

#_06F10E: JMP.w Sprite_BossScreamAndDisableMenu

;===================================================================================================

NormalMob_TimeToDie:
#_06F111: LDA.w $0E40,X
#_06F114: CLC
#_06F115: ADC.b #$04
#_06F117: STA.w $0E40,X

#_06F11A: LDA.w $0FB5
#_06F11D: CMP.b #$0B
#_06F11F: BNE .exit

#_06F121: LDA.b #$01
#_06F123: STA.w $0BE0,X

.exit
#_06F126: RTS

;===================================================================================================
; Tests if the sprite in slot X overlaps with Link's hitbox
; TODO explain more
;===================================================================================================
Sprite_CheckDamageToLink_long:
#_06F127: PHB
#_06F128: PHK
#_06F129: PLB

#_06F12A: JSR Sprite_CheckDamageToLink

#_06F12D: PLB

#_06F12E: RTL

;---------------------------------------------------------------------------------------------------

Sprite_CheckDamageToLink_same_layer_long:
#_06F12F: PHB
#_06F130: PHK
#_06F131: PLB

#_06F132: JSR Sprite_CheckDamageToLink_same_layer

#_06F135: PLB

#_06F136: RTL

;---------------------------------------------------------------------------------------------------

Sprite_CheckDamageToLink_ignore_layer_long:
#_06F137: PHB
#_06F138: PHK
#_06F139: PLB

#_06F13A: JSR Sprite_CheckDamageToLink_ignore_layer

#_06F13D: PLB

#_06F13E: RTL

;---------------------------------------------------------------------------------------------------

Sprite_ToLink_Directions:
.opposing
#_06F13F: db $04, $06, $00, $02

.standing
#_06F143: db $06, $04, $00, $00

.opposing2
#_06F147: db $04, $06, $00, $02

;===================================================================================================

Sprite_CheckDamageToLink:
#_06F14B: LDA.w $037B ; invulnerability flag
#_06F14E: BNE .no_damage

;===================================================================================================

#Sprite_CheckDamageToLink_staggered:
#_06F150: TXA ; get the sprite's frame rule to limit damage
#_06F151: EOR.b $1A ; to every 4 frames
#_06F153: AND.b #$03

#_06F155: ORA.w $0EF0,X ; skip if enemy is dying or taking damage
#_06F158: BNE .no_damage

;===================================================================================================

#Sprite_CheckDamageToLink_same_layer:
#_06F15A: LDA.w $00EE ; are Link and enemy on the same layer?
#_06F15D: CMP.w $0F20,X
#_06F160: BNE .no_damage2

; !WEIRD
; this right here is a really weird check that probably never comes up...
; apparently, sprites with hitbox 0 have a completely unique method for hitbox?
; unless they have one of the other bits in this variable set...
#Sprite_CheckDamageToLink_ignore_layer:
#_06F162: LDA.w $0F60,X
#_06F165: BEQ .use_fast_hitbox_0

#_06F167: JSR Link_SetupHitBox
#_06F16A: JSR Sprite_SetupHitBox
#_06F16D: JSR CheckIfHitBoxesOverlap

#_06F170: BRA .collision_checked

.use_fast_hitbox_0
#_06F172: JSR Sprite_SetupHitBox00

;---------------------------------------------------------------------------------------------------

.collision_checked
#_06F175: LDA.w $0E40,X ; bit7 = sprite is harmless
#_06F178: BMI .exit_preserve_check
#_06F17A: BCC .no_damage2 ; hitboxes didn't overlap

#_06F17C: LDA.b $4D ; Link only takes damage in default state
#_06F17E: BNE .no_damage2

#_06F180: LDA.w $02E0 ; bunny graphics flag
#_06F183: BNE .definitely_getting_hit

#_06F185: LDA.w $0308 ; is Link carrying something?
#_06F188: BMI .definitely_getting_hit

#_06F18A: LDA.w $0BE0,X ; does this sprite die when it hits Link?
#_06F18D: AND.b #$20
#_06F18F: BEQ .definitely_getting_hit

#_06F191: LDA.l $7EF35A ; does Link have a shield?
#_06F195: BEQ .definitely_getting_hit

#_06F197: STZ.w $0DD0,X ; kill the sprite

#_06F19A: LDA.b $2F ; get Link's direction

#_06F19C: LDY.b $3C ; is sword out?
#_06F19E: BEQ .sword_in

#_06F1A0: LSR A
#_06F1A1: TAY

#_06F1A2: LDA.w Sprite_ToLink_Directions_standing,Y

.sword_in
#_06F1A5: LDY.w $0DE0,X ; sprite's direction

#_06F1A8: CMP.w Sprite_ToLink_Directions_opposing2,Y
#_06F1AB: BNE .definitely_getting_hit

#_06F1AD: LDA.b #!SFX2_06 ; clink sound
#_06F1AF: JSL SpriteSFX_QueueSFX2WithPan

#_06F1B3: JSL Sprite_PlaceRepulseSpark_forced

#_06F1B7: LDA.w $0E20,X
#_06F1BA: CMP.b #!SPRITE_95 ; lasers dies with an extra sound
#_06F1BC: BNE .not_laser

#_06F1BE: LDA.b #!SFX3_26
#_06F1C0: JSL SpriteSFX_QueueSFX3WithPan

.no_damage
#_06F1C4: CLC

; don't set the carry
.exit_preserve_check
#_06F1C5: RTS

;---------------------------------------------------------------------------------------------------

.not_laser
#_06F1C6: CMP.b #!SPRITE_9B ; wizzrobe shots reflect back
#_06F1C8: BNE .not_wizzrobe_beam

#_06F1CA: JSR Sprite_InvertSpeed_XY
#_06F1CD: LDA.w $0DE0,X

#_06F1D0: EOR.b #$01
#_06F1D2: STA.w $0DE0,X

#_06F1D5: INC.w $0D80,X

#_06F1D8: LDA.b #$09 ; undie
#_06F1DA: STA.w $0DD0,X

.no_damage2
#_06F1DD: CLC

#_06F1DE: RTS

;---------------------------------------------------------------------------------------------------

.not_wizzrobe_beam
#_06F1DF: CMP.b #!SPRITE_1B ; special bounce back for arrows
#_06F1E1: BEQ .is_arrow

#_06F1E3: CMP.b #!SPRITE_0C ; octorok rocks explode
#_06F1E5: BEQ .is_rock

#_06F1E7: RTS

;---------------------------------------------------------------------------------------------------

.definitely_getting_hit
#_06F1E8: JSR Sprite_AttemptDamageToLinkPlusRecoil

#_06F1EB: LDA.w $0E20,X
#_06F1EE: CMP.b #!SPRITE_0C ; rocks again
#_06F1F0: BNE .is_not_rock

.is_rock
#_06F1F2: JSR Sprite_PrepareToDie

.is_not_rock
#_06F1F5: SEC

#_06F1F6: RTS

;---------------------------------------------------------------------------------------------------

#UNREACHABLE_06F1F7:
#_06F1F7: CLC

#_06F1F8: RTS

;---------------------------------------------------------------------------------------------------

.is_arrow
#_06F1F9: JMP.w Sprite_ScheduleForBreakage

;===================================================================================================
; Why is this different? Was hitbox 00 meant to be faster?
; this only even runs when other bits (e.g. statis) are unset as well.
;===================================================================================================
Sprite_SetupHitBox00:
#_06F1FC: LDA.w $0F70,X
#_06F1FF: STA.b $0C
#_06F201: STZ.b $0D

#_06F203: REP #$20

#_06F205: LDA.b $22
#_06F207: SEC
#_06F208: SBC.w $0FD8
#_06F20B: CLC
#_06F20C: ADC.w #$000B

#_06F20F: CMP.w #$0017
#_06F212: BCS .no_overlap

#_06F214: LDA.b $20
#_06F216: SEC
#_06F217: SBC.w $0FDA
#_06F21A: CLC
#_06F21B: ADC.b $0C
#_06F21D: CLC
#_06F21E: ADC.w #$0010

#_06F221: CMP.w #$0018
#_06F224: BCS .no_overlap

.overlap
#_06F226: SEP #$20
#_06F228: SEC

#_06F229: RTS

.no_overlap
#_06F22A: SEP #$20
#_06F22C: CLC

#_06F22D: RTS

;===================================================================================================

Sprite_CheckIfLifted:
#_06F22E: LDA.b $11
#_06F230: ORA.b $3C
#_06F232: ORA.w $0FC1
#_06F235: BNE EXIT_06F2AF

#_06F237: LDA.b $EE
#_06F239: CMP.w $0F20,X
#_06F23C: BNE EXIT_06F2AF

;---------------------------------------------------------------------------------------------------

#_06F23E: LDY.b #$0F

.next_sprite
#_06F240: LDA.w $0DD0,Y
#_06F243: CMP.b #$0A
#_06F245: BEQ EXIT_06F2AF

#_06F247: DEY
#_06F248: BPL .next_sprite

;---------------------------------------------------------------------------------------------------

#_06F24A: LDA.w $0E20,X
#_06F24D: CMP.b #!SPRITE_0B
#_06F24F: BEQ Sprite_CheckIfLifted_permissive

#_06F251: CMP.b #!SPRITE_4A
#_06F253: BEQ Sprite_CheckIfLifted_permissive

#_06F255: LDA.w $0D50,X
#_06F258: ORA.w $0D40,X
#_06F25B: BNE EXIT_06F2AF

;===================================================================================================

#Sprite_CheckIfLifted_permissive:
#_06F25D: LDA.w $0372
#_06F260: BNE EXIT_06F2AF

#_06F262: LDA.w $02F4
#_06F265: DEC A
#_06F266: CMP.w $0FA0
#_06F269: BEQ .get_lifted

#_06F26B: JSR Link_SetupHitBox_conditional
#_06F26E: JSR Sprite_SetupHitBox
#_06F271: JSR CheckIfHitBoxesOverlap

#_06F274: BCC EXIT_06F2AF

#_06F276: TXA
#_06F277: INC A
#_06F278: STA.w $0314
#_06F27B: STA.w $0FB2

#_06F27E: RTS

;---------------------------------------------------------------------------------------------------

.get_lifted
#_06F27F: STZ.b $F6

#_06F281: STZ.w $0E90,X

#_06F284: LDA.b #!SFX2_1D
#_06F286: JSL SpriteSFX_QueueSFX2WithPan

#_06F28A: LDA.w $0DD0,X
#_06F28D: STA.l $7FFA2C,X

#_06F291: LDA.b #$0A
#_06F293: STA.w $0DD0,X

#_06F296: LDA.b #$10
#_06F298: STA.w $0DF0,X

#_06F29B: LDA.b #$00
#_06F29D: STA.l $7FFA1C,X
#_06F2A1: STA.l $7FF9C2,X

#_06F2A5: JSR Sprite_DirectionToFaceLink

#_06F2A8: LDA.w Sprite_ToLink_Directions_opposing,Y
#_06F2AB: STA.b $2F

#_06F2AD: PLA
#_06F2AE: PLA

;---------------------------------------------------------------------------------------------------

#EXIT_06F2AF:
#_06F2AF: RTS

;===================================================================================================

Sprite_CheckDamageFromLink_long:
#_06F2B0: PHB
#_06F2B1: PHK
#_06F2B2: PLB

#_06F2B3: JSR Sprite_CheckDamageFromLink

#_06F2B6: TAY

#_06F2B7: PLB

#_06F2B8: TYA

#_06F2B9: RTL

;===================================================================================================

Sprite_CheckDamageFromLink:
#_06F2BA: LDA.w $0EF0,X
#_06F2BD: AND.b #$80
#_06F2BF: BNE .dying

#_06F2C1: LDA.b $EE
#_06F2C3: CMP.w $0F20,X

.dying
#_06F2C6: BNE .no_collision

#_06F2C8: LDA.b $44
#_06F2CA: CMP.b #$80
#_06F2CC: BEQ .no_collision

#_06F2CE: JSR SetupActionHitbox
#_06F2D1: JSR Sprite_SetupHitBox
#_06F2D4: JSR CheckIfHitBoxesOverlap
#_06F2D7: BCC .no_collision

#_06F2D9: STZ.w $0047

#_06F2DC: LDA.w $037A
#_06F2DF: AND.b #$10
#_06F2E1: BNE EXIT_06F2AF

#_06F2E3: LDA.w $0301
#_06F2E6: AND.b #$0A
#_06F2E8: BEQ .not_frozen_kill

; Skip Ganon
#_06F2EA: LDA.w $0E20,X
#_06F2ED: CMP.b #!SPRITE_D6
#_06F2EF: BCS .no_collision

#_06F2F1: LDA.w $0DD0,X
#_06F2F4: CMP.b #!SPRITE_0B
#_06F2F6: BNE .not_frozen_kill

#_06F2F8: LDA.l $7FFA3C,X
#_06F2FC: BEQ .not_frozen_kill

#_06F2FE: LDA.b #$02
#_06F300: STA.w $0DD0,X

#_06F303: LDA.b #$20
#_06F305: STA.w $0DF0,X

#_06F308: LDA.w $0E40,X
#_06F30B: AND.b #$E0
#_06F30D: ORA.b #$03
#_06F30F: STA.w $0E40,X

#_06F312: LDA.b #!SFX2_1F
#_06F314: JSL SpriteSFX_QueueSFX2WithPan

#_06F318: SEC

#_06F319: RTS

;---------------------------------------------------------------------------------------------------

.not_frozen_kill
#_06F31A: LDA.w $0E20,X
#_06F31D: CMP.b #!SPRITE_7B
#_06F31F: BNE .not_aga_ball

#_06F321: LDA.b $3C
#_06F323: CMP.b #$09
#_06F325: BMI .am_slashing

.no_collision
#_06F327: JMP.w .fail_and_exit

.am_slashing
#_06F32A: JMP.w .check_sword_swing

;---------------------------------------------------------------------------------------------------

.mini_helma
#_06F32D: LDY.w $0DE0,X

#_06F330: LDA.b $2F
#_06F332: CMP.w Sprite_ToLink_Directions_opposing2,Y
#_06F335: BNE Sprite_CheckDamageFromLink_with_recoil

.stalfos_head
#_06F337: JSR Sprite_CheckDamageFromLink_with_recoil

#_06F33A: STZ.w $0EF0,X

#_06F33D: JSR Link_PlaceRepulseSpark

#_06F340: JMP.w SpriteDamage_ExitWith00

;===================================================================================================

#Sprite_CheckDamageFromLink_with_recoil:
#_06F343: JSR Sprite_AttemptZapDamage

#_06F346: LDA.b #$20
#_06F348: JSR Sprite_ApplyRecoilToLink

#_06F34B: LDA.b #$10
#_06F34D: STA.b $47
#_06F34F: STA.b $46

#_06F351: JMP.w SpriteDamage_ExitWith00

;---------------------------------------------------------------------------------------------------

.not_aga_ball
#_06F354: CMP.b #!SPRITE_09
#_06F356: BNE .not_moldorm

#_06F358: LDA.w $0D90,X
#_06F35B: BNE .check_sword_swing

#_06F35D: JSR Sprite_RecoilLinkAndTHUMP

#_06F360: LDA.b #!SFX3_32
#_06F362: JSL Sprite_CalculateSFXPan
#_06F366: STA.w $012F

#_06F369: JMP.w .place_repulse_spark

;---------------------------------------------------------------------------------------------------

.not_moldorm
#_06F36C: CMP.b #!SPRITE_92
#_06F36E: BNE .not_helma_king

#_06F370: JMP.w KingHelmasaur_ApplyRecoilIfEarlyPhase

;---------------------------------------------------------------------------------------------------

.not_helma_king
; Hardhat beetle
#_06F373: CMP.b #!SPRITE_26
#_06F375: BEQ Sprite_CheckDamageFromLink_with_recoil

; Mini helmasaur
#_06F377: CMP.b #!SPRITE_13
#_06F379: BEQ .mini_helma

; Stalfos head
#_06F37B: CMP.b #!SPRITE_02
#_06F37D: BEQ .stalfos_head

; Trinexx rock head
#_06F37F: CMP.b #!SPRITE_CB
#_06F381: BEQ Sprite_CheckDamageFromLink_apply_normal_recoil

; Trinexx ice head
#_06F383: CMP.b #!SPRITE_CD
#_06F385: BEQ Sprite_CheckDamageFromLink_apply_normal_recoil

; Trinexx fire head
#_06F387: CMP.b #!SPRITE_CC
#_06F389: BEQ Sprite_CheckDamageFromLink_apply_normal_recoil

; Ganon
#_06F38B: CMP.b #!SPRITE_D6
#_06F38D: BEQ Sprite_CheckDamageFromLink_apply_normal_recoil

; Ganon
#_06F38F: CMP.b #!SPRITE_D7
#_06F391: BEQ Sprite_CheckDamageFromLink_apply_normal_recoil

; Blind
#_06F393: CMP.b #!SPRITE_CE
#_06F395: BEQ Sprite_CheckDamageFromLink_apply_normal_recoil

; Lanmolas
#_06F397: CMP.b #!SPRITE_54
#_06F399: BNE .check_sword_swing

;===================================================================================================

#Sprite_CheckDamageFromLink_apply_normal_recoil:
#_06F39B: LDA.b #$20
#_06F39D: JSR Sprite_ApplyRecoilToLink

#_06F3A0: LDA.b #$90
#_06F3A2: STA.b $47

#_06F3A4: LDA.b #$10
#_06F3A6: STA.b $46

;---------------------------------------------------------------------------------------------------

.check_sword_swing
#_06F3A8: LDA.w $0CAA,X
#_06F3AB: AND.b #$04
#_06F3AD: BNE Sprite_CheckDamageFromLink_attempt_small_recoil

#_06F3AF: JSR Sprite_AttemptZapDamage

#_06F3B2: SEC

#_06F3B3: BRA SpriteDamage_ExitWith00

;---------------------------------------------------------------------------------------------------

.fail_and_exit
#_06F3B5: CLC

#_06F3B6: BRA SpriteDamage_ExitWith00

;===================================================================================================

#Sprite_CheckDamageFromLink_attempt_small_recoil:
#_06F3B8: LDA.b $47
#_06F3BA: BNE .place_repulse_spark

#_06F3BC: LDA.b #$04
#_06F3BE: JSR Sprite_ApplyRecoilToLink

#_06F3C1: LDA.b #$10
#_06F3C3: STA.b $46

#_06F3C5: LDA.b #$10
#_06F3C7: STA.b $47

.place_repulse_spark
#_06F3C9: JSR Link_PlaceRepulseSpark

#_06F3CC: SEC

;===================================================================================================

SpriteDamage_ExitWith00:
#_06F3CD: LDA.b #$00

#_06F3CF: RTS

;===================================================================================================

Sprite_AttemptDamageToLinkWithCollisionCheck:
#_06F3D0: TXA
#_06F3D1: EOR.b $1A
#_06F3D3: LSR A
#_06F3D4: BCS .no_damage

#_06F3D6: JSR Sprite_DoHitboxesFast

#_06F3D9: JSR Link_SetupHitBox_conditional
#_06F3DC: JSR CheckIfHitBoxesOverlap

#_06F3DF: BCC .no_damage

;===================================================================================================

#Sprite_AttemptDamageToLinkPlusRecoil:
#_06F3E1: LDA.w $031F ; make sure Link has no iframes
#_06F3E4: ORA.w $037B ; and isn't invulnerable
#_06F3E7: BNE .no_damage

#_06F3E9: LDA.b #$13
#_06F3EB: STA.b $46

#_06F3ED: LDA.b #$18
#_06F3EF: JSR Sprite_ApplyRecoilToLink

#_06F3F2: LDA.b #$01
#_06F3F4: STA.b $4D

#_06F3F6: LDA.w $0CD2,X ; get enemy bump damage
#_06F3F9: AND.b #$0F
#_06F3FB: STA.b $00 ; multiply by 3 for indexing

#_06F3FD: ASL A
#_06F3FE: ADC.b $00
#_06F400: CLC ; add in mail level
#_06F401: ADC.l $7EF35B
#_06F405: TAY

#_06F406: LDA.w Sprite_BumpDamageGroups,Y
#_06F409: STA.w $0373

#_06F40C: LDA.w $0E20,X
#_06F40F: CMP.b #!SPRITE_61 ; special beamos logic
#_06F411: BNE .no_damage

#_06F413: LDA.w $0DB0,X
#_06F416: BEQ .no_damage

#_06F418: LDA.w $0D50,X ; beamos beams recoil you at 2x their speed
#_06F41B: ASL A
#_06F41C: STA.b $28

#_06F41E: LDA.w $0D40,X
#_06F421: ASL A
#_06F422: STA.b $27

.no_damage
#_06F424: RTS

;===================================================================================================

Sprite_AttemptDamageToLinkPlusRecoil_long:
#_06F425: PHB
#_06F426: PHK
#_06F427: PLB

#_06F428: JSR Sprite_AttemptDamageToLinkPlusRecoil

#_06F42B: PLB

#_06F42C: RTL

;===================================================================================================

Sprite_BumpDamageGroups:
;   mail:     G    B    R
#_06F42D: db $02, $01, $01 ; 0x00
#_06F430: db $04, $04, $04 ; 0x01
#_06F433: db $00, $00, $00 ; 0x02
#_06F436: db $08, $04, $02 ; 0x03
#_06F439: db $08, $08, $08 ; 0x04
#_06F43C: db $10, $08, $04 ; 0x05
#_06F43F: db $20, $10, $08 ; 0x06
#_06F442: db $20, $18, $10 ; 0x07
#_06F445: db $18, $10, $08 ; 0x08
#_06F448: db $40, $30, $18 ; 0x09

;===================================================================================================

Sprite_RecoilLinkAndTHUMP:
#_06F44B: LDA.b #$30
#_06F44D: JSR Sprite_ApplyRecoilToLink

#_06F450: LDA.b #$90
#_06F452: STA.b $47

#_06F454: LDA.b #$10
#_06F456: STA.b $46

#_06F458: LDA.b #!SFX2_21
#_06F45A: JSL SpriteSFX_QueueSFX2WithPan

#_06F45E: LDA.b #$30
#_06F460: STA.w $0E00,X

#_06F463: JMP.w SpriteDamage_ExitWith00

;===================================================================================================

KingHelmasaur_ApplyRecoilIfEarlyPhase:
#_06F466: LDA.w $0DB0,X
#_06F469: CMP.b #$03
#_06F46B: BCS .do_recoil

#_06F46D: JMP.w Sprite_CheckDamageFromLink_attempt_small_recoil

.do_recoil
#_06F470: JMP.w Sprite_CheckDamageFromLink_apply_normal_recoil

;===================================================================================================

pool ActionHitbox

.offset_x
#_06F473: db   0 ; net/hammer

#_06F474: db   2 ; up
#_06F475: db   0 ; up
#_06F476: db   0 ; up
#_06F477: db  -8 ; up
#_06F478: db   0 ; up
#_06F479: db   2 ; up
#_06F47A: db   0 ; up
#_06F47B: db   2 ; up
#_06F47C: db   2 ; up
#_06F47D: db   1 ; up
#_06F47E: db   1 ; up
#_06F47F: db   0 ; up
#_06F480: db   0 ; up
#_06F481: db   0 ; up
#_06F482: db   0 ; up
#_06F483: db   0 ; up

#_06F484: db   2 ; down
#_06F485: db   4 ; down
#_06F486: db   4 ; down
#_06F487: db   0 ; down
#_06F488: db   0 ; down
#_06F489: db  -4 ; down
#_06F48A: db  -4 ; down
#_06F48B: db  -6 ; down
#_06F48C: db   2 ; down
#_06F48D: db   1 ; down
#_06F48E: db   1 ; down
#_06F48F: db   0 ; down
#_06F490: db   0 ; down
#_06F491: db   0 ; down
#_06F492: db   0 ; down
#_06F493: db   0 ; down

#_06F494: db   0 ; left
#_06F495: db   0 ; left
#_06F496: db   0 ; left
#_06F497: db   2 ; left
#_06F498: db   2 ; left
#_06F499: db   4 ; left
#_06F49A: db   4 ; left
#_06F49B: db   2 ; left
#_06F49C: db   2 ; left
#_06F49D: db   2 ; left
#_06F49E: db   2 ; left
#_06F49F: db   0 ; left
#_06F4A0: db   0 ; left
#_06F4A1: db   0 ; left
#_06F4A2: db   0 ; left
#_06F4A3: db   0 ; left

#_06F4A4: db   0 ; right
#_06F4A5: db   0 ; right
#_06F4A6: db   0 ; right
#_06F4A7: db  -4 ; right
#_06F4A8: db  -4 ; right
#_06F4A9: db -10 ; right
#_06F4AA: db   0 ; right
#_06F4AB: db   2 ; right
#_06F4AC: db   2 ; right
#_06F4AD: db   0 ; right
#_06F4AE: db   0 ; right
#_06F4AF: db   0 ; right
#_06F4B0: db   0 ; right
#_06F4B1: db   0 ; right
#_06F4B2: db   0 ; right
#_06F4B3: db   0 ; right

;---------------------------------------------------------------------------------------------------

.size_x
#_06F4B4: db  15 ; net/hammer

#_06F4B5: db   4 ; up
#_06F4B6: db   8 ; up
#_06F4B7: db   8 ; up
#_06F4B8: db   8 ; up
#_06F4B9: db   8 ; up
#_06F4BA: db  12 ; up
#_06F4BB: db   8 ; up
#_06F4BC: db   4 ; up
#_06F4BD: db   4 ; up
#_06F4BE: db   6 ; up
#_06F4BF: db   6 ; up
#_06F4C0: db   0 ; up
#_06F4C1: db   0 ; up
#_06F4C2: db   0 ; up
#_06F4C3: db   0 ; up
#_06F4C4: db   0 ; up

#_06F4C5: db   4 ; down
#_06F4C6: db  16 ; down
#_06F4C7: db  12 ; down
#_06F4C8: db   8 ; down
#_06F4C9: db   8 ; down
#_06F4CA: db  12 ; down
#_06F4CB: db  11 ; down
#_06F4CC: db  12 ; down
#_06F4CD: db   4 ; down
#_06F4CE: db   6 ; down
#_06F4CF: db   6 ; down
#_06F4D0: db   0 ; down
#_06F4D1: db   0 ; down
#_06F4D2: db   0 ; down
#_06F4D3: db   0 ; down
#_06F4D4: db   0 ; down

#_06F4D5: db   8 ; left
#_06F4D6: db   8 ; left
#_06F4D7: db   8 ; left
#_06F4D8: db  10 ; left
#_06F4D9: db  14 ; left
#_06F4DA: db  15 ; left
#_06F4DB: db   4 ; left
#_06F4DC: db   4 ; left
#_06F4DD: db   4 ; left
#_06F4DE: db   6 ; left
#_06F4DF: db   6 ; left
#_06F4E0: db   0 ; left
#_06F4E1: db   0 ; left
#_06F4E2: db   0 ; left
#_06F4E3: db   0 ; left
#_06F4E4: db   0 ; left

#_06F4E5: db   8 ; right
#_06F4E6: db   8 ; right
#_06F4E7: db   8 ; right
#_06F4E8: db  10 ; right
#_06F4E9: db  14 ; right
#_06F4EA: db  15 ; right
#_06F4EB: db   4 ; right
#_06F4EC: db   4 ; right
#_06F4ED: db   4 ; right
#_06F4EE: db   6 ; right
#_06F4EF: db   6 ; right
#_06F4F0: db   0 ; right
#_06F4F1: db   0 ; right
#_06F4F2: db   0 ; right
#_06F4F3: db   0 ; right
#_06F4F4: db   0 ; right

;---------------------------------------------------------------------------------------------------

.offset_y
#_06F4F5: db   0 ; net/hammer

#_06F4F6: db   2 ; up
#_06F4F7: db   0 ; up
#_06F4F8: db   2 ; up
#_06F4F9: db   4 ; up
#_06F4FA: db   4 ; up
#_06F4FB: db   4 ; up
#_06F4FC: db   7 ; up
#_06F4FD: db   2 ; up
#_06F4FE: db   2 ; up
#_06F4FF: db   1 ; up
#_06F500: db   1 ; up
#_06F501: db   0 ; up
#_06F502: db   0 ; up
#_06F503: db   0 ; up
#_06F504: db   0 ; up
#_06F505: db   0 ; up

#_06F506: db   2 ; down
#_06F507: db   0 ; down
#_06F508: db   2 ; down
#_06F509: db  -4 ; down
#_06F50A: db  -3 ; down
#_06F50B: db  -8 ; down
#_06F50C: db   0 ; down
#_06F50D: db   0 ; down
#_06F50E: db   2 ; down
#_06F50F: db   1 ; down
#_06F510: db   1 ; down
#_06F511: db   0 ; down
#_06F512: db   0 ; down
#_06F513: db   0 ; down
#_06F514: db   0 ; down
#_06F515: db   0 ; down

#_06F516: db   0 ; left
#_06F517: db   0 ; left
#_06F518: db   0 ; left
#_06F519: db  -2 ; left
#_06F51A: db   0 ; left
#_06F51B: db  -4 ; left
#_06F51C: db   1 ; left
#_06F51D: db   2 ; left
#_06F51E: db   2 ; left
#_06F51F: db   1 ; left
#_06F520: db   1 ; left
#_06F521: db   0 ; left
#_06F522: db   0 ; left
#_06F523: db   0 ; left
#_06F524: db   0 ; left
#_06F525: db   0 ; left

#_06F526: db   0 ; right
#_06F527: db   0 ; right
#_06F528: db   0 ; right
#_06F529: db  -2 ; right
#_06F52A: db   0 ; right
#_06F52B: db  -4 ; right
#_06F52C: db   1 ; right
#_06F52D: db   2 ; right
#_06F52E: db   2 ; right
#_06F52F: db   1 ; right
#_06F530: db   1 ; right
#_06F531: db   0 ; right
#_06F532: db   0 ; right
#_06F533: db   0 ; right
#_06F534: db   0 ; right
#_06F535: db   0 ; right

;---------------------------------------------------------------------------------------------------

.size_y
#_06F536: db  15 ; net/hammer

#_06F537: db   4 ; up
#_06F538: db   8 ; up
#_06F539: db   2 ; up
#_06F53A: db  12 ; up
#_06F53B: db   8 ; up
#_06F53C: db  12 ; up
#_06F53D: db   8 ; up
#_06F53E: db   4 ; up
#_06F53F: db   4 ; up
#_06F540: db   6 ; up
#_06F541: db   6 ; up
#_06F542: db   0 ; up
#_06F543: db   0 ; up
#_06F544: db   0 ; up
#_06F545: db   0 ; up
#_06F546: db   0 ; up

#_06F547: db   4 ; down
#_06F548: db   8 ; down
#_06F549: db   4 ; down
#_06F54A: db  12 ; down
#_06F54B: db  12 ; down
#_06F54C: db  12 ; down
#_06F54D: db   4 ; down
#_06F54E: db   8 ; down
#_06F54F: db   4 ; down
#_06F550: db   6 ; down
#_06F551: db   4 ; down
#_06F552: db   0 ; down
#_06F553: db   0 ; down
#_06F554: db   0 ; down
#_06F555: db   0 ; down
#_06F556: db   0 ; down

#_06F557: db   8 ; left
#_06F558: db   8 ; left
#_06F559: db   8 ; left
#_06F55A: db   8 ; left
#_06F55B: db   8 ; left
#_06F55C: db  12 ; left
#_06F55D: db   4 ; left
#_06F55E: db   4 ; left
#_06F55F: db   4 ; left
#_06F560: db   6 ; left
#_06F561: db   6 ; left
#_06F562: db   0 ; left
#_06F563: db   0 ; left
#_06F564: db   0 ; left
#_06F565: db   0 ; left
#_06F566: db   0 ; left

#_06F567: db   8 ; right
#_06F568: db   8 ; right
#_06F569: db   8 ; right
#_06F56A: db   8 ; right
#_06F56B: db   8 ; right
#_06F56C: db  12 ; right
#_06F56D: db   4 ; right
#_06F56E: db   4 ; right
#_06F56F: db   4 ; right
#_06F570: db   6 ; right
#_06F571: db   6 ; right
#_06F572: db   0 ; right
#_06F573: db   0 ; right
#_06F574: db   0 ; right
#_06F575: db   0 ; right
#_06F576: db   0 ; right

;---------------------------------------------------------------------------------------------------

; Validity of hitbox based on value of $3C
;  00 - valid
;  01 - invalid
.sword_validity
#_06F577: db $01
#_06F578: db $01
#_06F579: db $01
#_06F57A: db $00
#_06F57B: db $00
#_06F57C: db $00
#_06F57D: db $00
#_06F57E: db $01
#_06F57F: db $01
#_06F580: db $00
#_06F581: db $00
#_06F582: db $01
#_06F583: db $01

pool off

;===================================================================================================

SetupActionHitbox_long:
#_06F584: PHB
#_06F585: PHK
#_06F586: PLB

#_06F587: JSR SetupActionHitbox

#_06F58A: PLB

#_06F58B: RTL

;===================================================================================================

pool SetupActionHitbox_dashing

.offset_y_high ; bleeds into next
#_06F58C: db  -1,   0

.offset_x_low
#_06F58E: db   0,   0,  -8,   8

.offset_x_high
#_06F592: db   0,   0,  -1,   0

.offset_y_low
#_06F596: db  -8,  16,   8,   8

pool off

;===================================================================================================

SetupActionHitbox_spinning:
#_06F59A: LDA.b $22
#_06F59C: SEC
#_06F59D: SBC.b #$0E
#_06F59F: STA.b $00

#_06F5A1: LDA.b $23
#_06F5A3: SBC.b #$00
#_06F5A5: STA.b $08

#_06F5A7: LDA.b $20
#_06F5A9: SEC
#_06F5AA: SBC.b #$0A
#_06F5AC: STA.b $01

#_06F5AE: LDA.b $21
#_06F5B0: SBC.b #$00
#_06F5B2: STA.b $09

#_06F5B4: LDA.b #$2C
#_06F5B6: STA.b $02

#_06F5B8: INC A
#_06F5B9: STA.b $03

#_06F5BB: PLX

#_06F5BC: RTS

;===================================================================================================

SetupActionHitbox_dashing:
#_06F5BD: LDA.b $2F
#_06F5BF: LSR A
#_06F5C0: TAY

#_06F5C1: LDA.b $22
#_06F5C3: CLC
#_06F5C4: ADC.w .offset_x_low,Y
#_06F5C7: STA.b $00

#_06F5C9: LDA.b $23
#_06F5CB: ADC.w .offset_x_high,Y
#_06F5CE: STA.b $08

#_06F5D0: LDA.b $20
#_06F5D2: CLC
#_06F5D3: ADC.w .offset_y_low,Y
#_06F5D6: STA.b $01

#_06F5D8: LDA.b $21
#_06F5DA: ADC.w .offset_y_high,Y
#_06F5DD: STA.b $09

; 16 pixels big
#_06F5DF: LDA.b #$10
#_06F5E1: STA.b $02
#_06F5E3: STA.b $03

#_06F5E5: RTS

;===================================================================================================

SetupActionHitbox:
#_06F5E6: LDA.w $0372
#_06F5E9: BNE SetupActionHitbox_dashing

#_06F5EB: PHX

#_06F5EC: LDX.b #$00

#_06F5EE: LDA.w $0301
#_06F5F1: AND.b #$0A
#_06F5F3: BNE .hammer_or_net

#_06F5F5: LDA.w $037A
#_06F5F8: AND.b #$10
#_06F5FA: BNE .hammer_or_net

#_06F5FC: LDY.b $3C
#_06F5FE: BMI SetupActionHitbox_spinning

#_06F600: LDA.w ActionHitbox_sword_validity,Y
#_06F603: BNE .no_hitbox

#_06F605: LDA.b $2F
#_06F607: ASL A ; x8
#_06F608: ASL A
#_06F609: ASL A
#_06F60A: CLC
#_06F60B: ADC.b $3C
#_06F60D: TAX

#_06F60E: INX

;---------------------------------------------------------------------------------------------------

.hammer_or_net
#_06F60F: LDY.b #$00

#_06F611: LDA.b $45
#_06F613: CLC
#_06F614: ADC.w ActionHitbox_offset_x,X
#_06F617: BPL .positive_x

#_06F619: DEY

.positive_x
#_06F61A: CLC
#_06F61B: ADC.b $22
#_06F61D: STA.b $00

#_06F61F: TYA
#_06F620: ADC.b $23
#_06F622: STA.b $08

;---------------------------------------------------------------------------------------------------

#_06F624: LDY.b #$00

#_06F626: LDA.b $44
#_06F628: CLC
#_06F629: ADC.w ActionHitbox_offset_y,X
#_06F62C: BPL .positive_y

#_06F62E: DEY

.positive_y
#_06F62F: CLC
#_06F630: ADC.b $20
#_06F632: STA.b $01

#_06F634: TYA
#_06F635: ADC.b $21
#_06F637: STA.b $09

;---------------------------------------------------------------------------------------------------

#_06F639: LDA.w ActionHitbox_size_x,X
#_06F63C: STA.b $02

#_06F63E: LDA.w ActionHitbox_size_y,X
#_06F641: STA.b $03

#_06F643: PLX

#_06F644: RTS

;---------------------------------------------------------------------------------------------------
; Fake though
; Technically it just exists off screen
.no_hitbox
#_06F645: LDA.b #$80
#_06F647: STA.b $08

#_06F649: PLX

#_06F64A: RTS

;===================================================================================================
; Is this some sort of fast hitbox calculation?
;===================================================================================================
Sprite_DoHitboxesFast:
#_06F64B: LDY.b #$00

#_06F64D: LDA.w $0FAB
#_06F650: CMP.b #$80
#_06F652: BEQ .exit

#_06F654: CMP.b #$00
#_06F656: BPL .positive_x

#_06F658: DEY

.positive_x
#_06F659: CLC
#_06F65A: ADC.w $0D10,X
#_06F65D: STA.b $04

#_06F65F: TYA
#_06F660: ADC.w $0D30,X
#_06F663: STA.b $0A

#_06F665: LDY.b #$00

#_06F667: LDA.w $0FAA
#_06F66A: BPL .positive_y

#_06F66C: DEY

.positive_y
#_06F66D: CLC
#_06F66E: ADC.w $0D00,X
#_06F671: STA.b $05

#_06F673: TYA
#_06F674: ADC.w $0D20,X
#_06F677: STA.b $0B

;---------------------------------------------------------------------------------------------------

#_06F679: LDA.b #$03

#_06F67B: LDY.w $0E20,X
#_06F67E: CPY.b #!SPRITE_6A
#_06F680: BNE .not_bnc

#_06F682: LDA.b #$10

.not_bnc
#_06F684: STA.b $06
#_06F686: STA.b $07

#_06F688: RTS

.exit
#_06F689: LDA.b #$80
#_06F68B: STA.b $0A

#_06F68D: RTS

;===================================================================================================

Sprite_ApplyRecoilToLink:
#_06F68E: PHA

#_06F68F: JSR Sprite_ProjectSpeedTowardsLink

#_06F692: LDA.b $00
#_06F694: STA.b $27

#_06F696: LDA.b $01
#_06F698: STA.b $28

#_06F69A: PLA
#_06F69B: LSR A
#_06F69C: STA.b $29
#_06F69E: STA.b $C7

#_06F6A0: STZ.b $24
#_06F6A2: STZ.b $25

#_06F6A4: RTS

;===================================================================================================

Link_PlaceRepulseSpark:
#_06F6A5: LDA.w $0FAC
#_06F6A8: BNE .exit

#_06F6AA: LDA.b #$05
#_06F6AC: STA.w $0FAC

#_06F6AF: LDA.w $0022
#_06F6B2: ADC.w $0045
#_06F6B5: STA.w $0FAD

#_06F6B8: LDA.w $0020
#_06F6BB: ADC.w $0044
#_06F6BE: STA.w $0FAE

#_06F6C1: LDA.b $EE
#_06F6C3: STA.w $0B68

#_06F6C6: JSL Link_CalculateSFXPan
#_06F6CA: ORA.b #!SFX2_05
#_06F6CC: STA.w $012E

.exit
#_06F6CF: RTS

;===================================================================================================
; Places a repulse spark at the sprite's coordinates
; the repulse spark fails to be created if it would be off screen
; the main entry point only allows 1 repulse spark at a time
; the secondary entry point forces a new repulse spark
; it also skips the sound effect
;===================================================================================================
Sprite_PlaceRepulseSpark:
#_06F6D0: LDA.w $0FAC
#_06F6D3: BNE .no_spark

#_06F6D5: LDA.b #!SFX2_05
#_06F6D7: JSL SpriteSFX_QueueSFX2WithPan

;===================================================================================================

#Sprite_PlaceRepulseSpark_forced:
#_06F6DB: LDA.w $0D10,X
#_06F6DE: CMP.b $E2

#_06F6E0: LDA.w $0D30,X
#_06F6E3: SBC.b $E3
#_06F6E5: BNE .no_spark

#_06F6E7: LDA.w $0D00,X
#_06F6EA: CMP.b $E8

#_06F6EC: LDA.w $0D20,X
#_06F6EF: SBC.b $E9

#_06F6F1: BNE .no_spark

#_06F6F3: LDA.w $0D10,X
#_06F6F6: STA.w $0FAD

#_06F6F9: LDA.w $0D00,X
#_06F6FC: STA.w $0FAE

#_06F6FF: LDA.b #$05
#_06F701: STA.w $0FAC

#_06F704: LDA.w $0F20,X
#_06F707: STA.w $0B68

.no_spark
#_06F70A: RTL

;===================================================================================================
; Seems to prevent Link from taking damage if he's invulnerable
; by moving his hitbox impossibly far off-screen.
; In most cases, this functionality is elsewhere...
;===================================================================================================
Link_SetupHitBox_conditional:
#_06F70B: LDA.w $037B
#_06F70E: BNE .no_hitbox

;===================================================================================================
; Creates a hitbox for Link in scratch space
;   x-offset: 4px
;   y-offset: 8px
;   width   : 8px
;   height  : 8px
;===================================================================================================
#Link_SetupHitBox:
#_06F710: LDA.b #$08
#_06F712: STA.b $02
#_06F714: STA.b $03

#_06F716: LDA.b $22
#_06F718: CLC
#_06F719: ADC.b #$04
#_06F71B: STA.b $00

#_06F71D: LDA.b $23
#_06F71F: ADC.b #$00
#_06F721: STA.b $08

#_06F723: LDA.b $20
#_06F725: ADC.b #$08
#_06F727: STA.b $01

#_06F729: LDA.b $21
#_06F72B: ADC.b #$00
#_06F72D: STA.b $09

#_06F72F: RTS

;---------------------------------------------------------------------------------------------------

.no_hitbox
#_06F730: LDA.b #$80
#_06F732: STA.b $09

#_06F734: RTS

;===================================================================================================

pool Sprite_SetupHitBox

.offset_x_low
#_06F735: db   2 ; 0x00
#_06F736: db   3 ; 0x01
#_06F737: db   0 ; 0x02
#_06F738: db  -3 ; 0x03
#_06F739: db  -6 ; 0x04
#_06F73A: db   0 ; 0x05
#_06F73B: db   2 ; 0x06
#_06F73C: db  -8 ; 0x07
#_06F73D: db   0 ; 0x08
#_06F73E: db  -4 ; 0x09
#_06F73F: db  -8 ; 0x0A
#_06F740: db   0 ; 0x0B
#_06F741: db  -8 ; 0x0C
#_06F742: db -16 ; 0x0D
#_06F743: db   2 ; 0x0E
#_06F744: db   2 ; 0x0F

#_06F745: db   2 ; 0x10
#_06F746: db   2 ; 0x11
#_06F747: db   2 ; 0x12
#_06F748: db  -8 ; 0x13
#_06F749: db   2 ; 0x14
#_06F74A: db   2 ; 0x15
#_06F74B: db -16 ; 0x16
#_06F74C: db  -8 ; 0x17
#_06F74D: db -12 ; 0x18
#_06F74E: db   4 ; 0x19
#_06F74F: db  -4 ; 0x1A
#_06F750: db -12 ; 0x1B
#_06F751: db   5 ; 0x1C
#_06F752: db -32 ; 0x1D
#_06F753: db  -2 ; 0x1E
#_06F754: db   4 ; 0x1F

;---------------------------------------------------------------------------------------------------

.offset_x_high
#_06F755: db   0 ; 0x00
#_06F756: db   0 ; 0x01
#_06F757: db   0 ; 0x02
#_06F758: db  -1 ; 0x03
#_06F759: db  -1 ; 0x04
#_06F75A: db   0 ; 0x05
#_06F75B: db   0 ; 0x06
#_06F75C: db  -1 ; 0x07
#_06F75D: db   0 ; 0x08
#_06F75E: db  -1 ; 0x09
#_06F75F: db  -1 ; 0x0A
#_06F760: db   0 ; 0x0B
#_06F761: db  -1 ; 0x0C
#_06F762: db  -1 ; 0x0D
#_06F763: db   0 ; 0x0E
#_06F764: db   0 ; 0x0F

#_06F765: db   0 ; 0x10
#_06F766: db   0 ; 0x11
#_06F767: db   0 ; 0x12
#_06F768: db  -1 ; 0x13
#_06F769: db   0 ; 0x14
#_06F76A: db   0 ; 0x15
#_06F76B: db  -1 ; 0x16
#_06F76C: db  -1 ; 0x17
#_06F76D: db  -1 ; 0x18
#_06F76E: db   0 ; 0x19
#_06F76F: db  -1 ; 0x1A
#_06F770: db  -1 ; 0x1B
#_06F771: db   0 ; 0x1C
#_06F772: db  -1 ; 0x1D
#_06F773: db  -1 ; 0x1E
#_06F774: db   0 ; 0x1F

;---------------------------------------------------------------------------------------------------

.width
#_06F775: db  12 ; 0x00
#_06F776: db   1 ; 0x01
#_06F777: db  16 ; 0x02
#_06F778: db  20 ; 0x03
#_06F779: db  20 ; 0x04
#_06F77A: db   8 ; 0x05
#_06F77B: db   4 ; 0x06
#_06F77C: db  32 ; 0x07
#_06F77D: db  48 ; 0x08
#_06F77E: db  24 ; 0x09
#_06F77F: db  32 ; 0x0A
#_06F780: db  32 ; 0x0B
#_06F781: db  32 ; 0x0C
#_06F782: db  48 ; 0x0D
#_06F783: db  12 ; 0x0E
#_06F784: db  12 ; 0x0F

#_06F785: db  60 ; 0x10
#_06F786: db 124 ; 0x11
#_06F787: db  12 ; 0x12
#_06F788: db  32 ; 0x13
#_06F789: db   4 ; 0x14
#_06F78A: db  12 ; 0x15
#_06F78B: db  48 ; 0x16
#_06F78C: db  32 ; 0x17
#_06F78D: db  40 ; 0x18
#_06F78E: db   8 ; 0x19
#_06F78F: db  24 ; 0x1A
#_06F790: db  24 ; 0x1B
#_06F791: db   5 ; 0x1C
#_06F792: db  80 ; 0x1D
#_06F793: db   4 ; 0x1E
#_06F794: db   8 ; 0x1F

;---------------------------------------------------------------------------------------------------

.offset_y_low
#_06F795: db   0 ; 0x00
#_06F796: db   3 ; 0x01
#_06F797: db   4 ; 0x02
#_06F798: db  -4 ; 0x03
#_06F799: db  -8 ; 0x04
#_06F79A: db   2 ; 0x05
#_06F79B: db   0 ; 0x06
#_06F79C: db -16 ; 0x07
#_06F79D: db  12 ; 0x08
#_06F79E: db  -4 ; 0x09
#_06F79F: db  -8 ; 0x0A
#_06F7A0: db   0 ; 0x0B
#_06F7A1: db -10 ; 0x0C
#_06F7A2: db -16 ; 0x0D
#_06F7A3: db   2 ; 0x0E
#_06F7A4: db   2 ; 0x0F

#_06F7A5: db   2 ; 0x10
#_06F7A6: db   2 ; 0x11
#_06F7A7: db  -3 ; 0x12
#_06F7A8: db -12 ; 0x13
#_06F7A9: db   2 ; 0x14
#_06F7AA: db  10 ; 0x15
#_06F7AB: db   0 ; 0x16
#_06F7AC: db -12 ; 0x17
#_06F7AD: db  16 ; 0x18
#_06F7AE: db   4 ; 0x19
#_06F7AF: db  -4 ; 0x1A
#_06F7B0: db -12 ; 0x1B
#_06F7B1: db   3 ; 0x1C
#_06F7B2: db -16 ; 0x1D
#_06F7B3: db  -8 ; 0x1E
#_06F7B4: db  10 ; 0x1F

;---------------------------------------------------------------------------------------------------

.offset_y_high
#_06F7B5: db   0 ; 0x00
#_06F7B6: db   0 ; 0x01
#_06F7B7: db   0 ; 0x02
#_06F7B8: db  -1 ; 0x03
#_06F7B9: db  -1 ; 0x04
#_06F7BA: db   0 ; 0x05
#_06F7BB: db   0 ; 0x06
#_06F7BC: db  -1 ; 0x07
#_06F7BD: db   0 ; 0x08
#_06F7BE: db  -1 ; 0x09
#_06F7BF: db  -1 ; 0x0A
#_06F7C0: db   0 ; 0x0B
#_06F7C1: db  -1 ; 0x0C
#_06F7C2: db  -1 ; 0x0D
#_06F7C3: db   0 ; 0x0E
#_06F7C4: db   0 ; 0x0F

#_06F7C5: db   0 ; 0x10
#_06F7C6: db   0 ; 0x11
#_06F7C7: db  -1 ; 0x12
#_06F7C8: db  -1 ; 0x13
#_06F7C9: db   0 ; 0x14
#_06F7CA: db   0 ; 0x15
#_06F7CB: db   0 ; 0x16
#_06F7CC: db  -1 ; 0x17
#_06F7CD: db   0 ; 0x18
#_06F7CE: db   0 ; 0x19
#_06F7CF: db  -1 ; 0x1A
#_06F7D0: db  -1 ; 0x1B
#_06F7D1: db   0 ; 0x1C
#_06F7D2: db  -1 ; 0x1D
#_06F7D3: db  -1 ; 0x1E
#_06F7D4: db   0 ; 0x1F

;---------------------------------------------------------------------------------------------------

.height
#_06F7D5: db  14 ; 0x00
#_06F7D6: db   1 ; 0x01
#_06F7D7: db  16 ; 0x02
#_06F7D8: db  21 ; 0x03
#_06F7D9: db  24 ; 0x04
#_06F7DA: db   4 ; 0x05
#_06F7DB: db   8 ; 0x06
#_06F7DC: db  40 ; 0x07
#_06F7DD: db  20 ; 0x08
#_06F7DE: db  24 ; 0x09
#_06F7DF: db  40 ; 0x0A
#_06F7E0: db  29 ; 0x0B
#_06F7E1: db  36 ; 0x0C
#_06F7E2: db  48 ; 0x0D
#_06F7E3: db  60 ; 0x0E
#_06F7E4: db 124 ; 0x0F

#_06F7E5: db  12 ; 0x10
#_06F7E6: db  12 ; 0x11
#_06F7E7: db  17 ; 0x12
#_06F7E8: db  28 ; 0x13
#_06F7E9: db   4 ; 0x14
#_06F7EA: db   2 ; 0x15
#_06F7EB: db  28 ; 0x16
#_06F7EC: db  20 ; 0x17
#_06F7ED: db  10 ; 0x18
#_06F7EE: db   4 ; 0x19
#_06F7EF: db  24 ; 0x1A
#_06F7F0: db  16 ; 0x1B
#_06F7F1: db   5 ; 0x1C
#_06F7F2: db  48 ; 0x1D
#_06F7F3: db   8 ; 0x1E
#_06F7F4: db  12 ; 0x1F

pool off

;---------------------------------------------------------------------------------------------------

Sprite_SetupHitBox:
#_06F7F5: LDA.w $0F70,X
#_06F7F8: BMI .too_high

#_06F7FA: PHY

#_06F7FB: LDA.w $0F60,X
#_06F7FE: AND.b #$1F
#_06F800: TAY

#_06F801: LDA.w $0D10,X
#_06F804: CLC
#_06F805: ADC.w .offset_x_low,Y
#_06F808: STA.b $04

#_06F80A: LDA.w $0D30,X
#_06F80D: ADC.w .offset_x_high,Y
#_06F810: STA.b $0A

#_06F812: LDA.w $0D00,X
#_06F815: CLC
#_06F816: ADC.w .offset_y_low,Y

#_06F819: PHP
#_06F81A: SEC
#_06F81B: SBC.w $0F70,X
#_06F81E: STA.b $05

#_06F820: LDA.w $0D20,X
#_06F823: SBC.b #$00

#_06F825: PLP
#_06F826: ADC.w .offset_y_high,Y
#_06F829: STA.b $0B

#_06F82B: LDA.w .width,Y
#_06F82E: STA.b $06

#_06F830: LDA.w .height,Y
#_06F833: STA.b $07

#_06F835: PLY

#_06F836: RTS

;---------------------------------------------------------------------------------------------------

.too_high
#_06F837: LDA.b #$80
#_06F839: STA.b $0A

#_06F83B: RTS

;===================================================================================================

CheckIfHitBoxesOverlap:
#_06F83C: PHX

#_06F83D: LDX.b #$01

.check_other_side
#_06F83F: LDA.b $04,X
#_06F841: SEC
#_06F842: SBC.b $00,X

#_06F844: PHA
#_06F845: PHP

#_06F846: CLC
#_06F847: ADC.b $06,X
#_06F849: STA.b $0F

#_06F84B: PLP

#_06F84C: LDA.b $0A,X
#_06F84E: SBC.b $08,X
#_06F850: STA.b $0C

#_06F852: PLA
#_06F853: CLC
#_06F854: ADC.b #$80

#_06F856: LDA.b $0C
#_06F858: ADC.b #$00
#_06F85A: BNE .no_overlap

#_06F85C: LDA.b $02,X
#_06F85E: CLC
#_06F85F: ADC.b $06,X

#_06F861: CMP.b $0F
#_06F863: BCC .no_overlap

#_06F865: DEX
#_06F866: BPL .check_other_side

;---------------------------------------------------------------------------------------------------

.no_overlap
#_06F868: PLX

#_06F869: RTS

;===================================================================================================

OAM_AllocateDeferToPlayer_long:
#_06F86A: PHB
#_06F86B: PHK
#_06F86C: PLB

#_06F86D: JSR OAM_AllocateDeferToPlayer

#_06F870: PLB

#_06F871: RTL

;===================================================================================================
; TODO analyze
;===================================================================================================
OAM_AllocateDeferToPlayer:
#_06F872: LDA.w $0F20,X
#_06F875: CMP.b $EE
#_06F877: BNE .exit

#_06F879: JSR Sprite_IsRightOfLink

#_06F87C: LDA.b $0F
#_06F87E: CLC
#_06F87F: ADC.b #$10

#_06F881: CMP.b #$20
#_06F883: BCS .exit

#_06F885: JSR Sprite_IsBelowLink

#_06F888: LDA.b $0E
#_06F88A: CLC
#_06F88B: ADC.b #$20

#_06F88D: CMP.b #$48
#_06F88F: BCS .exit

#_06F891: LDA.w $0E40,X
#_06F894: AND.b #$1F
#_06F896: INC A
#_06F897: ASL A
#_06F898: ASL A

#_06F899: CPY.b #$00
#_06F89B: BEQ .use_region_b

.use_region_c
#_06F89D: JSL OAM_AllocateFromRegionC

#_06F8A1: BRA .exit

.use_region_b
#_06F8A3: JSL OAM_AllocateFromRegionB

.exit
#_06F8A7: RTS

;===================================================================================================
; Die
;===================================================================================================
SpriteModule_Die:
#_06F8A8: LDA.w $0E20,X
#_06F8AB: CMP.b #!SPRITE_EC
#_06F8AD: BNE .not_foliage

#_06F8AF: JSR ThrowableScenery_ScatterIntoDebris

#_06F8B2: RTS

;---------------------------------------------------------------------------------------------------

.not_foliage
#_06F8B3: CMP.b #!SPRITE_53
#_06F8B5: BEQ .just_draw

#_06F8B7: CMP.b #!SPRITE_54
#_06F8B9: BEQ .just_draw

#_06F8BB: CMP.b #!SPRITE_92
#_06F8BD: BEQ .just_draw

#_06F8BF: CMP.b #!SPRITE_4A
#_06F8C1: BNE .not_enemy_bomb

#_06F8C3: LDA.w $0DB0,X
#_06F8C6: CMP.b #$02
#_06F8C8: BCS .just_draw ; enemy bomb

.not_enemy_bomb
#_06F8CA: LDA.w $0DF0,X
#_06F8CD: BEQ Sprite_DoTheDeath

.kyameron_respawn
#_06F8CF: LDA.w $0E60,X
#_06F8D2: BMI .just_draw

#_06F8D4: LDA.b $1A
#_06F8D6: AND.b #$03
#_06F8D8: ORA.b $11
#_06F8DA: ORA.w $0FC1
#_06F8DD: BNE .delay_the_inevitable

#_06F8DF: INC.w $0DF0,X

.delay_the_inevitable
#_06F8E2: JSR SpriteDeath_DrawPoof

;---------------------------------------------------------------------------------------------------

#_06F8E5: LDA.w $0E20,X
#_06F8E8: CMP.b #!SPRITE_40
#_06F8EA: BEQ .aga_barrier

#_06F8EC: LDA.w $0DF0,X
#_06F8EF: CMP.b #$0A
#_06F8F1: BCC .dont_draw_barrier

.aga_barrier
#_06F8F3: REP #$20

#_06F8F5: LDA.b $90
#_06F8F7: CLC
#_06F8F8: ADC.w #$0010
#_06F8FB: STA.b $90

#_06F8FD: LDA.b $92
#_06F8FF: CLC
#_06F900: ADC.w #$0004
#_06F903: STA.b $92

#_06F905: SEP #$20

#_06F907: LDA.w $0E40,X
#_06F90A: PHA

#_06F90B: SEC
#_06F90C: SBC.b #$04
#_06F90E: STA.w $0E40,X

#_06F911: JSR SpriteModule_Active

#_06F914: PLA
#_06F915: STA.w $0E40,X

.dont_draw_barrier
#_06F918: RTS

;---------------------------------------------------------------------------------------------------

.just_draw
#_06F919: JSR SpriteModule_Active

#_06F91C: RTS

;===================================================================================================
; Sprite dying
; go poof
;===================================================================================================
Sprite_DoTheDeath_long:
#_06F91D: PHB
#_06F91E: PHK
#_06F91F: PLB

#_06F920: JSR Sprite_DoTheDeath

#_06F923: PLB

#_06F924: RTL

;===================================================================================================

pool Sprite_DoTheDeath

.pikit_loot
#_06F925: db !SPRITE_DC ; 1 bomb
#_06F926: db !SPRITE_E1 ; 1 arrow
#_06F927: db !SPRITE_D9 ; 1 rupee
#_06F928: db !SPRITE_E6 ; 1 shield

pool off

;---------------------------------------------------------------------------------------------------

Sprite_DoTheDeath:
#_06F929: LDA.w $0E20,X
#_06F92C: CMP.b #!SPRITE_BE
#_06F92E: BNE .not_mini_vitty

; !HARDCODED counter decrement for vitreous eyeballs
; kinda dumb
#_06F930: DEC.w $0ED0

.not_mini_vitty
#_06F933: CMP.b #!SPRITE_AA
#_06F935: BNE .pikit_no

; override item drop with pikit loot
#_06F937: LDY.w $0E90,X
#_06F93A: BEQ .pikit_no ; nvm he didn't steal shit

#_06F93C: LDA.w .pikit_loot-1,Y

#_06F93F: LDY.w $0E30,X
#_06F942: PHY

#_06F943: JSR PrepareEnemyDrop

; saves shield level
#_06F946: PLA
#_06F947: STA.w $0E30,X

;---------------------------------------------------------------------------------------------------

#_06F94A: DEC A
#_06F94B: BNE .skip_pikit_item_props

#_06F94D: LDA.b #$09
#_06F94F: STA.w $0F50,X

#_06F952: LDA.b #$F0
#_06F954: STA.w $0E60,X

.skip_pikit_item_props
#_06F957: INC.w $0EB0,X

#_06F95A: RTS

;---------------------------------------------------------------------------------------------------

.pikit_no
#_06F95B: LDA.w $0E20,X
#_06F95E: CMP.b #!SPRITE_45
#_06F960: BNE .not_snitch_guard

#_06F962: LDA.l $7EF3C5 ; game state 2 (zelda rescued)
#_06F966: CMP.b #$02
#_06F968: BNE .not_snitch_guard

#_06F96A: LDA.w $040A ; are we in kak?
#_06F96D: CMP.b #$18
#_06F96F: BNE .not_snitch_guard

#_06F971: LDA.b #!SONG_07
#_06F973: STA.w $012C

.not_snitch_guard
#_06F976: LDY.w $0CBA,X ; drop item overrides
#_06F979: BEQ .no_forced_drop

; TODO explain these props
#_06F97B: LDA.w $0BC0,X
#_06F97E: STA.w $0E30,X

#_06F981: LDA.b #$FF
#_06F983: STA.w $0BC0,X

; 1 = small key
#_06F986: LDA.b #!SPRITE_E4
#_06F988: CPY.b #$01
#_06F98A: BEQ PrepareEnemyDrop

; 2 = big key
#_06F98C: LDA.b #!SPRITE_E5
#_06F98E: CPY.b #$03
#_06F990: BNE PrepareEnemyDrop

; 3 = green rupee
#_06F992: LDA.b #!SPRITE_D9
#_06F994: BRA PrepareEnemyDrop

;---------------------------------------------------------------------------------------------------

.no_forced_drop
#_06F996: LDA.w $0BE0,X ; prize pack
#_06F999: AND.b #$0F
#_06F99B: BEQ .no_drop

#_06F99D: DEC A
#_06F99E: PHA

#_06F99F: LDY.w $0CF9
#_06F9A2: BEQ .no_luck_override

#_06F9A4: INC.w $0CFA ; handle kill counter

#_06F9A7: LDA.w $0CFA
#_06F9AA: CMP.b #10
#_06F9AC: BCC .no_luck_reset

#_06F9AE: STZ.w $0CF9

.no_luck_reset
#_06F9B1: PLA

#_06F9B2: CPY.b #$01
#_06F9B4: BEQ .good_drop_luck

.no_drop
#_06F9B6: BRA .you_dont_get_a_drop

.no_luck_override
#_06F9B8: JSL GetRandomNumber ; do a coin flip, essentially

#_06F9BC: PLY

#_06F9BD: AND.w PrizePackRarities,Y
#_06F9C0: BNE .you_dont_get_a_drop

;===================================================================================================

#ForcePrizeDrop:
#_06F9C2: TYA

; Handle the prize pack
.good_drop_luck
#_06F9C3: ASL A ; get prize index
#_06F9C4: ASL A
#_06F9C5: ASL A
#_06F9C6: ORA.w $0FC7,Y
#_06F9C9: PHA

#_06F9CA: LDA.w $0FC7,Y ; advance prize pack
#_06F9CD: INC A
#_06F9CE: AND.b #$07
#_06F9D0: STA.w $0FC7,Y

#_06F9D3: PLY

#_06F9D4: LDA.w PrizePackPrizes,Y

;===================================================================================================

#PrepareEnemyDrop:
#_06F9D7: STA.w $0E20,X

#_06F9DA: CMP.b #!SPRITE_E5
#_06F9DC: BNE .not_big_key_drop

#_06F9DE: JSR SpritePrep_BigKey_load_graphics
#_06F9E1: BRA .spawn_drop

.not_big_key_drop
#_06F9E3: CMP.b #!SPRITE_E4
#_06F9E5: BNE .spawn_drop

#_06F9E7: JSR SpritePrep_SetKeyIndex

;---------------------------------------------------------------------------------------------------

.spawn_drop
#_06F9EA: LDA.b #$09 ; set sprite alive
#_06F9EC: STA.w $0DD0,X

#_06F9EF: LDA.w $0F70,X ; looks like height is cached
#_06F9F2: PHA

#_06F9F3: JSL SpritePrep_LoadProperties

#_06F9F7: INC.w $0BA0,X

#_06F9FA: LDY.w $0E20,X

#_06F9FD: LDA.w ItemDropBounceProps-$D9,Y
#_06FA00: PHA

#_06FA01: AND.b #$F0
#_06FA03: STA.w $0F80,X ; z speed

#_06FA06: PLA ; x offset
#_06FA07: AND.b #$0F

#_06FA09: CLC
#_06FA0A: ADC.w $0D10,X
#_06FA0D: STA.w $0D10,X

#_06FA10: LDA.w $0D30,X
#_06FA13: ADC.b #$00
#_06FA15: STA.w $0D30,X

#_06FA18: PLA ; recover old height
#_06FA19: STA.w $0F70,X

#_06FA1C: LDA.b #$15
#_06FA1E: STA.w $0F10,X

#_06FA21: LDA.b #$FF ; TODO why stun timer?
#_06FA23: STA.w $0B58,X

#_06FA26: BRA .post_death_stuff

;---------------------------------------------------------------------------------------------------

.you_dont_get_a_drop
#_06FA28: STZ.w $0DD0,X

.post_death_stuff
#_06FA2B: LDA.w $0E20,X
#_06FA2E: CMP.b #!SPRITE_A2
#_06FA30: BNE .not_dead_kholdstares

#_06FA32: JSL CheckIfRoomIsClear
#_06FA36: BCC .not_dead_kholdstares ; they alive

#_06FA38: LDA.b #$04
#_06FA3A: JSL Ancilla_SpawnFallingPrize

.not_dead_kholdstares
#_06FA3E: JSL Sprite_ManuallySetDeathFlagUW

#_06FA42: INC.w $0CFB

#_06FA45: LDA.w $0E20,X
#_06FA48: CMP.b #!SPRITE_40
#_06FA4A: BNE .not_kyameron

#_06FA4C: LDA.b #$09 ; keep it alive
#_06FA4E: STA.w $0DD0,X

#_06FA51: LDA.b #$04
#_06FA53: STA.w $0DC0,X

#_06FA56: JMP.w SpriteModule_Die_kyameron_respawn

.not_kyameron
#_06FA59: RTS

;===================================================================================================

ForcePrizeDrop_long:
#_06FA5A: PHB
#_06FA5B: PHK
#_06FA5C: PLB

#_06FA5D: JSR ForcePrizeDrop

#_06FA60: PLB

#_06FA61: RTL

;===================================================================================================
; 0 = 100%
; 1 = 50%
;===================================================================================================
PrizePackRarities:
#_06FA62: db 1 ; pack 1 :  50%
#_06FA63: db 1 ; pack 2 :  50%
#_06FA64: db 1 ; pack 3 :  50%
#_06FA65: db 0 ; pack 4 : 100%
#_06FA66: db 1 ; pack 5 :  50%
#_06FA67: db 1 ; pack 6 :  50%
#_06FA68: db 1 ; pack 7 :  50%
#_06FA69: db 0 ; pack 8 : 100% - doesn't exist

;===================================================================================================
; Upper nibble is used for z-speed
; Lower nibble is X-coordinate offset
;===================================================================================================
ItemDropBounceProps:
#_06FA6A: db $24 ; GREEN RUPEE
#_06FA6B: db $24 ; BLUE RUPEE
#_06FA6C: db $24 ; RED RUPEE
#_06FA6D: db $20 ; BOMB REFILL 1
#_06FA6E: db $20 ; BOMB REFILL 4
#_06FA6F: db $20 ; BOMB REFILL 8
#_06FA70: db $24 ; SMALL MAGIC DECANTER
#_06FA71: db $24 ; LARGE MAGIC DECANTER
#_06FA72: db $24 ; ARROW REFILL 5
#_06FA73: db $24 ; ARROW REFILL 10
#_06FA74: db $00 ; FAERIE
#_06FA75: db $24 ; SMALL KEY
#_06FA76: db $20 ; BIG KEY
#_06FA77: db $20 ; STOLEN SHIELD

;===================================================================================================

PrizePackPrizes:

.pack_1
#_06FA78: db !SPRITE_D8 ; heart
#_06FA79: db !SPRITE_D8 ; heart
#_06FA7A: db !SPRITE_D8 ; heart
#_06FA7B: db !SPRITE_D8 ; heart
#_06FA7C: db !SPRITE_D9 ; green rupee
#_06FA7D: db !SPRITE_D8 ; heart
#_06FA7E: db !SPRITE_D8 ; heart
#_06FA7F: db !SPRITE_D9 ; green rupee

;---------------------------------------------------------------------------------------------------

.pack_2
#_06FA80: db !SPRITE_DA ; blue rupee
#_06FA81: db !SPRITE_D9 ; green rupee
#_06FA82: db !SPRITE_DA ; blue rupee
#_06FA83: db !SPRITE_DB ; red rupee
#_06FA84: db !SPRITE_DA ; blue rupee
#_06FA85: db !SPRITE_D9 ; green rupee
#_06FA86: db !SPRITE_DA ; blue rupee
#_06FA87: db !SPRITE_DA ; blue rupee

;---------------------------------------------------------------------------------------------------

.pack_3
#_06FA88: db !SPRITE_E0 ; full magic
#_06FA89: db !SPRITE_DF ; small magic
#_06FA8A: db !SPRITE_DF ; small magic
#_06FA8B: db !SPRITE_DA ; blue rupee
#_06FA8C: db !SPRITE_E0 ; full magic
#_06FA8D: db !SPRITE_DF ; small magic
#_06FA8E: db !SPRITE_D8 ; heart
#_06FA8F: db !SPRITE_DF ; small magic

;---------------------------------------------------------------------------------------------------

.pack_4
#_06FA90: db !SPRITE_DC ; 1 bomb
#_06FA91: db !SPRITE_DC ; 1 bomb
#_06FA92: db !SPRITE_DC ; 1 bomb
#_06FA93: db !SPRITE_DD ; 4 bombs
#_06FA94: db !SPRITE_DC ; 1 bomb
#_06FA95: db !SPRITE_DC ; 1 bomb
#_06FA96: db !SPRITE_DE ; 8 bombs
#_06FA97: db !SPRITE_DC ; 1 bomb

;---------------------------------------------------------------------------------------------------

.pack_5
#_06FA98: db !SPRITE_E1 ; 5 arrows
#_06FA99: db !SPRITE_D8 ; heart
#_06FA9A: db !SPRITE_E1 ; 5 arrows
#_06FA9B: db !SPRITE_E2 ; 10 arrows
#_06FA9C: db !SPRITE_E1 ; 5 arrows
#_06FA9D: db !SPRITE_D8 ; heart
#_06FA9E: db !SPRITE_E1 ; 5 arrows
#_06FA9F: db !SPRITE_E2 ; 10 arrows

;---------------------------------------------------------------------------------------------------

.pack_6
#_06FAA0: db !SPRITE_DF ; small magic
#_06FAA1: db !SPRITE_D9 ; green rupee
#_06FAA2: db !SPRITE_D8 ; heart
#_06FAA3: db !SPRITE_E1 ; 5 arrows
#_06FAA4: db !SPRITE_DF ; small magic
#_06FAA5: db !SPRITE_DC ; 1 bomb
#_06FAA6: db !SPRITE_D9 ; green rupee
#_06FAA7: db !SPRITE_D8 ; heart

;---------------------------------------------------------------------------------------------------

.pack_7
#_06FAA8: db !SPRITE_D8 ; heart
#_06FAA9: db !SPRITE_E3 ; fairy
#_06FAAA: db !SPRITE_E0 ; full magic
#_06FAAB: db !SPRITE_DB ; red rupee
#_06FAAC: db !SPRITE_DE ; 8 bombs
#_06FAAD: db !SPRITE_D8 ; heart
#_06FAAE: db !SPRITE_DB ; red rupee
#_06FAAF: db !SPRITE_E2 ; 10 arrows

;===================================================================================================

pool SpriteDeath_DrawPoof

.offset_x
#_06FAB0: db   0,   0,   0,   8
#_06FAB4: db   0,   8,   0,   8
#_06FAB8: db   8,   8,   0,   8
#_06FABC: db   0,   8,   0,   8
#_06FAC0: db   0,   8,   0,   8
#_06FAC4: db   0,   8,   0,   8
#_06FAC8: db  -3,  11,  -3,  11
#_06FACC: db  -6,  14,  -6,  14

.offset_y
#_06FAD0: db   0,   0,   8,   8
#_06FAD4: db   0,   0,   8,   8
#_06FAD8: db   0,   0,   8,   8
#_06FADC: db   0,   0,   8,   8
#_06FAE0: db   0,   0,   8,   8
#_06FAE4: db   0,   0,   8,   8
#_06FAE8: db  -3,  -3,  11,  11
#_06FAEC: db  -6,  -6,  14,  14

.char
#_06FAF0: db $00, $B9, $00, $00
#_06FAF4: db $B4, $B5, $B5, $B4
#_06FAF8: db $B9, $00, $00, $00
#_06FAFC: db $B5, $B4, $B4, $B5
#_06FB00: db $A8, $A8, $B8, $B8
#_06FB04: db $A8, $A8, $B8, $B8
#_06FB08: db $A9, $A9, $A9, $A9
#_06FB0C: db $9B, $9B, $9B, $9B

.prop
#_06FB10: db $04, $04, $04, $04
#_06FB14: db $04, $04, $C4, $C4
#_06FB18: db $44, $04, $04, $04
#_06FB1C: db $44, $44, $84, $84
#_06FB20: db $04, $44, $04, $44
#_06FB24: db $04, $44, $04, $44
#_06FB28: db $44, $04, $C4, $84
#_06FB2C: db $04, $44, $84, $C4

pool off

;---------------------------------------------------------------------------------------------------

SpriteDeath_DrawPoof:
#_06FB30: LDA.w $046C
#_06FB33: CMP.b #$04
#_06FB35: BNE .keep_priority_as_is

#_06FB37: LDA.b #$30
#_06FB39: STA.w $0B89,X

.keep_priority_as_is
#_06FB3C: JSR Sprite_PrepOAMCoord

#_06FB3F: LDA.w $0E60,X
#_06FB42: AND.b #$20
#_06FB44: LSR A
#_06FB45: LSR A
#_06FB46: LSR A
#_06FB47: STA.b $0C

#_06FB49: PHX

#_06FB4A: LDA.b #$03
#_06FB4C: STA.b $00

#_06FB4E: LDA.w $0DF0,X
#_06FB51: AND.b #$1C
#_06FB53: EOR.b #$1C

#_06FB55: CLC
#_06FB56: ADC.b $00
#_06FB58: TAX

;---------------------------------------------------------------------------------------------------

.next_object
#_06FB59: PHY

#_06FB5A: LDA.w .char,X
#_06FB5D: BEQ .skip

#_06FB5F: INY
#_06FB60: INY

#_06FB61: STA.b ($90),Y

#_06FB63: LDA.w $0FA9
#_06FB66: SEC
#_06FB67: SBC.b $0C

#_06FB69: CLC
#_06FB6A: ADC.w .offset_y,X

#_06FB6D: DEY

#_06FB6E: STA.b ($90),Y

#_06FB70: LDA.w $0FA8
#_06FB73: SEC
#_06FB74: SBC.b $0C

#_06FB76: CLC
#_06FB77: ADC.w .offset_x,X

#_06FB7A: DEY

#_06FB7B: STA.b ($90),Y

#_06FB7D: LDA.b $05
#_06FB7F: AND.b #$30
#_06FB81: ORA.w .prop,X

#_06FB84: INY
#_06FB85: INY
#_06FB86: INY

#_06FB87: STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

.skip
#_06FB89: PLY

#_06FB8A: INY
#_06FB8B: INY
#_06FB8C: INY
#_06FB8D: INY

#_06FB8E: DEX

#_06FB8F: DEC.b $00
#_06FB91: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_06FB93: PLX

#_06FB94: LDY.b #$00

#_06FB96: LDA.b #$03
#_06FB98: JSR Sprite_CorrectOAMEntries

#_06FB9B: RTS

;===================================================================================================

pool SpriteModule_Fall2

.anim_step_a
#_06FB9C: db $0D, $0D, $0D, $0D, $0D, $0D, $0D, $0C
#_06FBA4: db $0C, $0C, $0C, $0C, $03, $03, $03, $03
#_06FBAC: db $03, $02, $02, $02, $02, $01, $01, $01
#_06FBB4: db $01, $00, $00, $00, $00, $00, $00, $00

.anim_step_b
#_06FBBC: db $05, $05, $05, $05, $05, $05, $05, $04
#_06FBC4: db $04, $04, $04, $04, $03, $03, $03, $03
#_06FBCC: db $03, $02, $02, $02, $02, $01, $01, $01
#_06FBD4: db $01, $00, $00, $00, $00, $00, $00, $00

.frame_mask
#_06FBDC: db $FF, $3F, $1F, $0F, $0F, $07, $03, $01
#_06FBE4: db $FF, $3F, $1F, $0F, $07, $03, $01, $00

; TODO verify
.head_data_offset
#_06FBEC: db $00, $04, $08, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteModule_Fall2:
#_06FBF0: LDA.w $0DF0,X
#_06FBF3: BNE .falling

#_06FBF5: STZ.w $0DD0,X

#_06FBF8: JSL Sprite_ManuallySetDeathFlagUW

#_06FBFC: RTS

;---------------------------------------------------------------------------------------------------

.falling
#_06FBFD: CMP.b #$40
#_06FBFF: BCC .continue_a

; TODO wtf does this imply?
#_06FC01: LDA.w $0F50,X
#_06FC04: CMP.b #$05
#_06FC06: BNE .not_pal3_ns1

#_06FC08: LDA.b #$3F
#_06FC0A: STA.w $0DF0,X

#_06FC0D: BRA .continue_a

;---------------------------------------------------------------------------------------------------

.not_pal3_ns1
#_06FC0F: LDA.w $0DF0,X
#_06FC12: AND.b #$07
#_06FC14: ORA.b $11
#_06FC16: ORA.w $0FC1
#_06FC19: BNE .skip_sfx31

#_06FC1B: LDA.b #!SFX3_31
#_06FC1D: JSL SpriteSFX_QueueSFX3WithPan

.skip_sfx31
#_06FC21: JSR SpriteModule_Active
#_06FC24: JSR Sprite_PrepOAMCoord

#_06FC27: LDA.b $02
#_06FC29: SEC
#_06FC2A: SBC.b #$08
#_06FC2C: STA.b $02

#_06FC2E: LDA.b $03
#_06FC30: SBC.b #$00
#_06FC32: STA.b $03

#_06FC34: LDA.w $0DF0,X
#_06FC37: CLC
#_06FC38: ADC.b #$14
#_06FC3A: STA.b $06

#_06FC3C: JSL Sprite_DrawDistress_custom

#_06FC40: RTS

;---------------------------------------------------------------------------------------------------

.continue_a
#_06FC41: CMP.b #$3D
#_06FC43: BNE .skip_sfx20

#_06FC45: PHA

#_06FC46: LDA.b #!SFX2_20
#_06FC48: JSL SpriteSFX_QueueSFX2WithPan

#_06FC4C: PLA

;---------------------------------------------------------------------------------------------------

.skip_sfx20
#_06FC4D: LSR A
#_06FC4E: TAY

#_06FC4F: LDA.w $0E20,X
#_06FC52: CMP.b #!SPRITE_26
#_06FC54: BEQ .is_beetle

#_06FC56: CMP.b #!SPRITE_13
#_06FC58: BNE .not_minihelma

.is_beetle
#_06FC5A: LDA.w .anim_step_b,Y
#_06FC5D: STA.w $0DC0,X

#_06FC60: JSR SpriteDraw_FallingHelmaBeetle

#_06FC63: BRA .continue_b

;---------------------------------------------------------------------------------------------------

.not_minihelma
#_06FC65: LDA.w .anim_step_a,Y
#_06FC68: CMP.b #$0C
#_06FC6A: BCS .ignore_head

#_06FC6C: LDY.w $0DE0,X

#_06FC6F: CLC
#_06FC70: ADC.w .head_data_offset,Y

.ignore_head
#_06FC73: STA.w $0DC0,X

#_06FC76: JSR SpriteDraw_FallingHumanoid

.continue_b
#_06FC79: LDA.w $0DF0,X
#_06FC7C: LSR A
#_06FC7D: LSR A
#_06FC7E: LSR A
#_06FC7F: TAY

#_06FC80: LDA.b $1A
#_06FC82: AND.w .frame_mask,Y
#_06FC85: ORA.b $11
#_06FC87: BNE .exit

;---------------------------------------------------------------------------------------------------

#_06FC89: LDY.b #$68
#_06FC8B: JSR Sprite_CheckTileProperty

#_06FC8E: LDA.w $0FA5
#_06FC91: CMP.b #!TILETYPE_20
#_06FC93: BEQ .dont_reset_recoil

#_06FC95: STZ.w $0F30,X
#_06FC98: STZ.w $0F40,X

.dont_reset_recoil
#_06FC9B: LDA.w $0F30,X
#_06FC9E: STA.w $0D40,X

#_06FCA1: ASL A
#_06FCA2: PHP
#_06FCA3: ROR.w $0D40,X
#_06FCA6: PLP
#_06FCA7: ROR.w $0D40,X

#_06FCAA: LDA.w $0F40,X
#_06FCAD: STA.w $0D50,X

#_06FCB0: ASL A
#_06FCB1: PHP
#_06FCB2: ROR.w $0D50,X
#_06FCB5: PLP
#_06FCB6: ROR.w $0D50,X

#_06FCB9: JSR Sprite_Move_XY_Bank06

;---------------------------------------------------------------------------------------------------

.exit
#_06FCBC: RTS

;===================================================================================================

pool SpriteDraw_FallingHelmaBeetle

.oam_groups_beetle
; group00
#_06FCBD: dw   0,   0 : db $46, $01, $00, $02

; group01
#_06FCC5: dw   0,   0 : db $48, $01, $00, $02

; group02
#_06FCCD: dw   0,   0 : db $4A, $01, $00, $02

; group03
#_06FCD5: dw   4,   4 : db $4C, $01, $00, $00

; group04
#_06FCDD: dw   4,   4 : db $B7, $00, $00, $00

; group05
#_06FCE5: dw   4,   4 : db $80, $00, $00, $00

;---------------------------------------------------------------------------------------------------

.oam_groups_mini_helma
; group00
#_06FCED: dw   0,   0 : db $6C, $01, $00, $02

; group01
#_06FCF5: dw   0,   0 : db $6E, $01, $00, $02

; group02
#_06FCFD: dw   0,   0 : db $4E, $01, $00, $02

; group03
#_06FD05: dw   4,   4 : db $5C, $01, $00, $00

; group04
#_06FD0D: dw   4,   4 : db $B7, $00, $00, $00

; group05
#_06FD15: dw   4,   4 : db $80, $00, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_FallingHelmaBeetle:
#_06FD1D: LDA.w $0E20,X
#_06FD20: CMP.b #!SPRITE_13
#_06FD22: BEQ .mini_helma

;---------------------------------------------------------------------------------------------------

#_06FD24: LDA.w $0DC0,X

#_06FD27: ASL A
#_06FD28: ASL A
#_06FD29: ASL A

#_06FD2A: ADC.b #.oam_groups_beetle>>0
#_06FD2C: STA.b $08

#_06FD2E: LDA.b #.oam_groups_beetle>>8

;---------------------------------------------------------------------------------------------------

.save_high_byte
#_06FD30: ADC.b #$00
#_06FD32: STA.b $09

#_06FD34: LDA.b #$01
#_06FD36: JSL Sprite_DrawMultiple

#_06FD3A: RTS

;---------------------------------------------------------------------------------------------------

.mini_helma
#_06FD3B: LDA.w $0DC0,X

#_06FD3E: ASL A ; x8
#_06FD3F: ASL A
#_06FD40: ASL A

#_06FD41: ADC.b #.oam_groups_mini_helma>>0
#_06FD43: STA.b $08

#_06FD45: LDA.b #.oam_groups_mini_helma>>8

#_06FD47: BRA .save_high_byte

;===================================================================================================

pool SpriteDraw_FallingHumanoid

.offset_x
#_06FD49: db  -4,   4,  -4,  12
#_06FD4D: db   0,   0,   0,   0
#_06FD51: db   0,   0,   0,   0
#_06FD55: db   4,   0,   0,   0
#_06FD59: db  -4,  12,  -4,   4
#_06FD5D: db   0,   0,   0,   0
#_06FD61: db   0,   0,   0,   0
#_06FD65: db   4,   0,   0,   0
#_06FD69: db  -4,  12,  -4,   4
#_06FD6D: db   0,   0,   0,   0
#_06FD71: db   0,   0,   0,   0
#_06FD75: db   4,   0,   0,   0
#_06FD79: db   4,   0,   0,   0
#_06FD7D: db   4,   0,   0,   0

.offset_y
#_06FD81: db  -4,  -4,   4,  12
#_06FD85: db   0,   0,   0,   0
#_06FD89: db   0,   0,   0,   0
#_06FD8D: db   4,   0,   0,   0
#_06FD91: db  -4,  -4,  12,   4
#_06FD95: db   0,   0,   0,   0
#_06FD99: db   0,   0,   0,   0
#_06FD9D: db   4,   0,   0,   0
#_06FDA1: db  -4,  -4,  12,   4
#_06FDA5: db   0,   0,   0,   0
#_06FDA9: db   0,   0,   0,   0
#_06FDAD: db   4,   0,   0,   0
#_06FDB1: db   4,   0,   0,   0
#_06FDB5: db   4,   0,   0,   0

.char
#_06FDB9: db $AE, $A8, $A6, $AF
#_06FDBD: db $AA, $00, $00, $00
#_06FDC1: db $AC, $00, $00, $00
#_06FDC5: db $BE, $00, $00, $00
#_06FDC9: db $A8, $AE, $AF, $A6
#_06FDCD: db $AA, $00, $00, $00
#_06FDD1: db $AC, $00, $00, $00
#_06FDD5: db $BE, $00, $00, $00
#_06FDD9: db $A6, $AF, $AE, $A8
#_06FDDD: db $AA, $00, $00, $00
#_06FDE1: db $AC, $00, $00, $00
#_06FDE5: db $BE, $00, $00, $00
#_06FDE9: db $B6, $00, $00, $00
#_06FDED: db $80, $00, $00, $00

.prop
#_06FDF1: db $00, $00, $00, $00
#_06FDF5: db $00, $00, $00, $00
#_06FDF9: db $00, $00, $00, $00
#_06FDFD: db $00, $00, $00, $00
#_06FE01: db $40, $40, $40, $40
#_06FE05: db $40, $00, $00, $00
#_06FE09: db $40, $00, $00, $00
#_06FE0D: db $40, $00, $00, $00
#_06FE11: db $80, $80, $80, $80
#_06FE15: db $80, $00, $00, $00
#_06FE19: db $80, $00, $00, $00
#_06FE1D: db $80, $00, $00, $00
#_06FE21: db $01, $00, $00, $00
#_06FE25: db $01, $00, $00, $00

.size
#_06FE29: db $00, $02, $02, $00
#_06FE2D: db $02, $00, $00, $00
#_06FE31: db $02, $00, $00, $00
#_06FE35: db $00, $00, $00, $00
#_06FE39: db $02, $00, $00, $02
#_06FE3D: db $02, $00, $00, $00
#_06FE41: db $02, $00, $00, $00
#_06FE45: db $00, $00, $00, $00
#_06FE49: db $02, $00, $00, $02
#_06FE4D: db $02, $00, $00, $00
#_06FE51: db $02, $00, $00, $00
#_06FE55: db $00, $00, $00, $00
#_06FE59: db $00, $00, $00, $00
#_06FE5D: db $00, $00, $00, $00

pool off

;---------------------------------------------------------------------------------------------------
; TODO verify name
SpriteDraw_FallingHumanoid:
#_06FE61: JSR Sprite_PrepOAMCoord

#_06FE64: LDA.w $0DC0,X
#_06FE67: PHA

#_06FE68: ASL A
#_06FE69: ASL A
#_06FE6A: STA.b $06

#_06FE6C: PLA
#_06FE6D: PHX

#_06FE6E: LDX.b #$00

#_06FE70: CMP.b #$0C
#_06FE72: BCS .set_correction_quota

#_06FE74: AND.b #$03
#_06FE76: BNE .set_correction_quota

#_06FE78: LDX.b #$03

.set_correction_quota
#_06FE7A: STX.b $07

;---------------------------------------------------------------------------------------------------

.next_object
#_06FE7C: PHX

#_06FE7D: TXA
#_06FE7E: CLC
#_06FE7F: ADC.b $06
#_06FE81: TAX

#_06FE82: LDA.b $00
#_06FE84: CLC
#_06FE85: ADC.w .offset_x,X
#_06FE88: STA.b ($90),Y

#_06FE8A: LDA.b $02
#_06FE8C: CLC
#_06FE8D: ADC.w .offset_y,X

#_06FE90: INY

#_06FE91: STA.b ($90),Y

#_06FE93: LDA.w .char,X
#_06FE96: INY

#_06FE97: STA.b ($90),Y

#_06FE99: LDA.w .prop,X
#_06FE9C: EOR.b $05
#_06FE9E: INY

#_06FE9F: STA.b ($90),Y

#_06FEA1: PHY

#_06FEA2: TYA
#_06FEA3: LSR A
#_06FEA4: LSR A
#_06FEA5: TAY

#_06FEA6: LDA.w .size,X
#_06FEA9: STA.b ($92),Y

#_06FEAB: PLY
#_06FEAC: INY

#_06FEAD: PLX
#_06FEAE: DEX
#_06FEAF: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_06FEB1: PLX

#_06FEB2: LDY.b #$FF
#_06FEB4: LDA.b $07
#_06FEB6: JSR Sprite_CorrectOAMEntries

#_06FEB9: RTS

;===================================================================================================

Sprite_CorrectOAMEntries_long:
#_06FEBA: PHB
#_06FEBB: PHK
#_06FEBC: PLB

#_06FEBD: JSR Sprite_CorrectOAMEntries

#_06FEC0: PLB

#_06FEC1: RTL

;===================================================================================================
; TODO verify
; Y = object size?
;  00 = small
;  FF = leave big
;===================================================================================================
Sprite_CorrectOAMEntries:
#_06FEC2: JSR Sprite_GetScreenRelativeCoords

#_06FEC5: PHX

#_06FEC6: REP #$10

#_06FEC8: LDX.b $90
#_06FECA: STX.b $0C

#_06FECC: LDX.b $92
#_06FECE: STX.b $0E

;---------------------------------------------------------------------------------------------------

.next_object
#_06FED0: LDX.b $0E

#_06FED2: LDA.b $0B
#_06FED4: BPL .make_small

#_06FED6: LDA.b $00,X
#_06FED8: AND.b #$02

.make_small
#_06FEDA: STA.b $00,X

;---------------------------------------------------------------------------------------------------

#_06FEDC: LDY.w #$0000

#_06FEDF: LDX.b $0C

#_06FEE1: LDA.b $00,X
#_06FEE3: SEC
#_06FEE4: SBC.b $07
#_06FEE6: BPL .positive_x

#_06FEE8: DEY

.positive_x
#_06FEE9: CLC
#_06FEEA: ADC.b $02
#_06FEEC: STA.b $04

#_06FEEE: TYA
#_06FEEF: ADC.b $03
#_06FEF1: STA.b $05

#_06FEF3: JSR Sprite_CheckIfXOnScreen
#_06FEF6: BCC .not_offscreen_x

#_06FEF8: LDX.b $0E
#_06FEFA: INC.b $00,X

;---------------------------------------------------------------------------------------------------

.not_offscreen_x
#_06FEFC: LDY.w #$0000

#_06FEFF: LDX.b $0C
#_06FF01: INX

#_06FF02: LDA.b $00,X
#_06FF04: SEC
#_06FF05: SBC.b $06
#_06FF07: BPL .positive_y

#_06FF09: DEY

.positive_y
#_06FF0A: CLC
#_06FF0B: ADC.b $00
#_06FF0D: STA.b $09

#_06FF0F: TYA
#_06FF10: ADC.b $01
#_06FF12: STA.b $0A

#_06FF14: JSR Sprite_CheckIfYOnScreen
#_06FF17: BCC .not_offscreen_y

#_06FF19: LDA.b #$F0
#_06FF1B: STA.b $00,X

;---------------------------------------------------------------------------------------------------

.not_offscreen_y
#_06FF1D: INX
#_06FF1E: INX
#_06FF1F: INX
#_06FF20: STX.b $0C

#_06FF22: INC.b $0E

#_06FF24: DEC.b $08
#_06FF26: BPL .next_object

#_06FF28: SEP #$10

#_06FF2A: PLX

#_06FF2B: RTS

;===================================================================================================

Sprite_GetScreenRelativeCoords:
#_06FF2C: STY.b $0B

#_06FF2E: STA.b $08

#_06FF30: LDA.w $0D00,X
#_06FF33: STA.b $00

#_06FF35: SEC
#_06FF36: SBC.b $E8
#_06FF38: STA.b $06

#_06FF3A: LDA.w $0D20,X
#_06FF3D: STA.b $01

#_06FF3F: LDA.w $0D10,X
#_06FF42: STA.b $02

#_06FF44: SEC
#_06FF45: SBC.b $E2
#_06FF47: STA.b $07

#_06FF49: LDA.w $0D30,X
#_06FF4C: STA.b $03

#_06FF4E: RTS

;===================================================================================================

Sprite_CheckIfXOnScreen:
#_06FF4F: REP #$20

#_06FF51: LDA.b $04
#_06FF53: SEC
#_06FF54: SBC.b $E2
#_06FF56: CMP.w #$0100

#_06FF59: SEP #$20

#_06FF5B: RTS

;===================================================================================================

Sprite_CheckIfYOnScreen:
#_06FF5C: REP #$20

#_06FF5E: LDA.b $09
#_06FF60: PHA

#_06FF61: CLC
#_06FF62: ADC.w #$0010
#_06FF65: STA.b $09

#_06FF67: SEC
#_06FF68: SBC.b $E8
#_06FF6A: CMP.w #$0100

#_06FF6D: PLA
#_06FF6E: STA.b $09

#_06FF70: SEP #$20

#_06FF72: RTS

;===================================================================================================

UNREACHABLE_06FF73:
#_06FF73: JSL Sprite_KillSelf

#_06FF77: RTS

;===================================================================================================

pool Sprite_CheckIfRecoiling_Bank06

.masks
#_06FF78: db $03, $01, $00, $00, $0C, $03

pool off

;---------------------------------------------------------------------------------------------------

Sprite_CheckIfRecoiling_Bank06:
#_06FF7E: LDA.w $0EA0,X
#_06FF81: BEQ .exit

#_06FF83: AND.b #$7F
#_06FF85: BEQ .recoil_over

#_06FF87: LDA.w $0D40,X
#_06FF8A: PHA

#_06FF8B: LDA.w $0D50,X
#_06FF8E: PHA

#_06FF8F: DEC.w $0EA0,X
#_06FF92: BNE .still_recoiling

#_06FF94: LDA.w $0F40,X
#_06FF97: CLC
#_06FF98: ADC.b #$20
#_06FF9A: CMP.b #$40
#_06FF9C: BCS .no_adjust

#_06FF9E: LDA.w $0F30,X
#_06FFA1: CLC
#_06FFA2: ADC.b #$20
#_06FFA4: CMP.b #$40
#_06FFA6: BCC .still_recoiling

.no_adjust
#_06FFA8: LDA.b #$90
#_06FFAA: STA.w $0EA0,X

.still_recoiling
#_06FFAD: LDA.w $0EA0,X
#_06FFB0: BMI .no_movement

#_06FFB2: LSR A
#_06FFB3: LSR A
#_06FFB4: TAY

#_06FFB5: LDA.b $1A
#_06FFB7: AND.w .masks,Y
#_06FFBA: BNE .no_movement

#_06FFBC: LDA.w $0F30,X
#_06FFBF: STA.w $0D40,X

#_06FFC2: LDA.w $0F40,X
#_06FFC5: STA.w $0D50,X

#_06FFC8: LDA.w $0CD2,X
#_06FFCB: BMI .handle_movement

#_06FFCD: JSL Sprite_CheckTileCollision_long

#_06FFD1: LDA.w $0E70,X
#_06FFD4: AND.b #$0F
#_06FFD6: BEQ .handle_movement

.stop_horizontal_movement
#_06FFD8: CMP.b #$04
#_06FFDA: BCS .stop_vertical_movement

#_06FFDC: STZ.w $0F40,X
#_06FFDF: STZ.w $0D50,X

#_06FFE2: BRA .movement_stopped

.stop_vertical_movement
#_06FFE4: STZ.w $0F30,X
#_06FFE7: STZ.w $0D40,X

.movement_stopped
#_06FFEA: BRA .no_movement

.handle_movement
#_06FFEC: JSR Sprite_Move_XY_Bank06

.no_movement
#_06FFEF: PLA
#_06FFF0: STA.w $0D50,X

#_06FFF3: PLA
#_06FFF4: STA.w $0D40,X

#_06FFF7: PLA
#_06FFF8: PLA

.exit
#_06FFF9: RTS

.recoil_over
#_06FFFA: STZ.w $0EA0,X

#_06FFFD: RTS

;===================================================================================================
; FREE ROM: 0x02
;===================================================================================================
NULL_06FFFE:
#_06FFFE: db $FF, $FF

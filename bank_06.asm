org $068000

;===================================================================================================
; Checks every sprite to see if it's a fish
; then checks any fish to see if it's within range
;===================================================================================================
SearchForFishToBuy:
|068000| PHB
|068001| PHK
|068002| PLB

|068003| LDY.b #$0F

.next
|068005| LDA.w $0DD0,Y
|068008| BEQ .inactive

|06800A| LDA.w $0E20,Y
|06800D| CMP.b #$D2 ; SPRITE D2
|06800F| BEQ .is_fish

.inactive
|068011| DEY
|068012| BPL .next

|068014| PLB

|068015| RTL

;---------------------------------------------------------------------------------------------------

.is_fish
|068016| LDA.w $0D10,X
|068019| STA.b $00

|06801B| LDA.w $0D30,X
|06801E| STA.b $08

|068020| LDA.b #$10
|068022| STA.b $02

|068024| LDA.w $0D00,X
|068027| STA.b $01

|068029| LDA.w $0D20,X
|06802C| STA.b $09

|06802E| LDA.b #$10
|068030| STA.b $03

|068032| PHX

|068033| TYX
|068034| JSR SetupSpriteHitbox

|068037| PLX

|068038| JSR CheckIfHitboxesOverlap
|06803B| BCC .no_good

|06803D| TYA
|06803E| ORA.b #$80
|068040| STA.w $0E90,X

.no_good
|068043| PLB

|068044| RTL

;===================================================================================================
; He throw the fish
;===================================================================================================
pool PurchaseFloppingFish

.speed_x
|068045| db -6
|068046| db -3
|068047| db  0
|068048| db  4
|068049| db  7

.speed_y
|06804A| db 11
|06804B| db 14
|06804C| db 16
|06804D| db 14
|06804E| db 11

.item_id
|06804F| db $DB ; SPRITE DB - red rupee
|068050| db $E0 ; SPRITE E0 - large magic
|068051| db $DE ; SPRITE DE - 8 bombs
|068052| db $E2 ; SPRITE E2 - 10 arrows
|068053| db $D9 ; SPRITE D9 - green rupee

endpool

;---------------------------------------------------------------------------------------------------

PurchaseFloppingFish:
|068054| PHB
|068055| PHK
|068056| PLB

|068057| LDA.b #$13 ; SFX3.13
|068059| JSL QueueSpriteSFX3WithPan

|06805D| LDA.b #$04 ; this is being used as a counter for which item to throw
|06805F| STA.w $0FB5

.next_gift
|068062| LDY.w $0FB5

|068065| LDA.w .item_id,Y
|068068| JSL SpawnSpriteDynamically
|06806C| BMI .skip

|06806E| JSL SetSpawnedSpriteCoordinates

|068072| LDA.b $00 ; override X coordinate set above
|068074| CLC
|068075| ADC.b #$04
|068077| STA.w $0D10,Y

|06807A| LDA.b #$FF ; set despawn timer of item
|06807C| STA.w $0B58,Y

|06807F| PHX

|068080| LDX.w $0FB5

|068083| LDA.w .speed_x,X
|068086| STA.w $0D50,Y

|068089| LDA.w .speed_y,X
|06808C| STA.w $0D40,Y

|06808F| LDA.b #$20
|068091| STA.w $0F80,Y ; Z speed
|068094| STA.w $0F10,Y ; gift can't be grabbed

|068097| PLX

.skip
|068098| DEC.w $0FB5
|06809B| BPL .next_gift

|06809D| PLB

|06809E| RTL

;===================================================================================================
; Strange routine that makes the boomerang move a lot faster when offscreen
;===================================================================================================
CheatWhenNoOnesLooking:
; cache coordinates
|06809F| LDA.w $0C04,X
|0680A2| STA.b $02

|0680A4| LDA.w $0C18,X
|0680A7| STA.b $03

|0680A9| LDA.w $0BFA,X
|0680AC| STA.b $04

|0680AE| LDA.w $0C0E,X
|0680B1| STA.b $05

|0680B3| REP #$20

|0680B5| LDY.b #$70

; take Link's X coordinate and subtract the boomerang's
|0680B7| LDA.b $22
|0680B9| SEC
|0680BA| SBC.b $02

; then add 240 for the size of the screen to simplify the math
|0680BC| CLC
|0680BD| ADC.w #$00F0

; if the result is >= 240: use 112
; if the result is < 240: use -112
|0680C0| CMP.w #$01E0
|0680C3| BPL .positive_speed_x

|0680C5| LDY.b #$90

.positive_speed_x
; if the difference was < 240 and positive, then the boom is considered
; to be on screen for the X coordinate
; apparently only 1 coordinate matters at a time
|0680C7| BCC .nowdoY

|0680C9| STY.b $01 ; save to X speed

|0680CB| BRA .done

; this does the same thing as X, but with the Y displacement
.nowdoY
|0680CD| LDY.b #$70 ; 112

|0680CF| LDA.b $20
|0680D1| SEC
|0680D2| SBC.b $04

|0680D4| CLC
|0680D5| ADC.w #$00F0

|0680D8| CMP.w #$01E0
|0680DB| BPL .positive_Y_speed

|0680DD| LDY.b #$90 ; -112

.positive_Y_speed
|0680DF| BCC .done ; on screen for Y-axis means done

|0680E1| STY.b $00

.done
|0680E3| SEP #$20

|0680E5| RTL

;===================================================================================================

pool LetsGetReadyToRumble

.offset_x_low
|0680E6| db -32, -32, -32, 16

.offset_y_low
|0680EA| db -32, 32, -24, -24

.offset_y_high ; bleeds into next
|0680EE| db -1,  0

.offset_x_high
|0680F0| db -1, -1, -1, 0

.hitbox_w ; bleeds into next
|0680F4| db 80, 80

.hitbox_h
|0680F6| db 32, 32, 80, 80

endpool

;---------------------------------------------------------------------------------------------------

LetsGetReadyToRumble:
|0680FA| PHB
|0680FB| PHK
|0680FC| PLB

|0680FD| LDA.b $2F
|0680FF| LSR A
|068100| TAY

|068101| LDA.b $22
|068103| CLC
|068104| ADC.w .offset_x_low,Y
|068107| STA.b $00

|068109| LDA.b $23
|06810B| ADC.w .offset_x_high,Y
|06810E| STA.b $08

|068110| LDA.b $20
|068112| ADC.w .offset_y_low,Y
|068115| STA.b $01

|068117| LDA.b $21
|068119| ADC.w .offset_y_high,Y
|06811C| STA.b $09

|06811E| LDA.w .hitbox_w,Y
|068121| STA.b $02

|068123| LDA.w .hitbox_h,Y
|068126| STA.b $03

|068128| JSR ApplyRumbleToSprites

|06812B| PLB

|06812C| RTL

;===================================================================================================

SpawnImmediatelySmashedTerrain:
|06812D| LDY.w $0314
|068130| PHY

|068131| LDY.w $0FB2
|068134| PHY

|068135| PHB
|068136| PHK
|068137| PLB

|068138| JSL SpawnThrowableTerrain.silently
|06813C| BMI .fail

|06813E| JSR TransmuteThrowableToDebris

.fail
|068141| PLB

|068142| PLA
|068143| STA.w $0FB2

|068146| PLA
|068147| STA.w $0314

|06814A| RTL

;===================================================================================================

SpawnThrowableTerrain:
|06814B| PHA

|06814C| JSL CalculateLinkSFXPan
|068150| ORA.b #$1D ; SFX2.1D
|068152| STA.w $012E

|068155| PLA

;---------------------------------------------------------------------------------------------------

.silently
|068156| LDX.b #$0F

.next_slot
|068158| LDY.w $0DD0,X
|06815B| BEQ .free_slot

|06815D| DEX
|06815E| BPL .next_slot

|068160| RTL

;---------------------------------------------------------------------------------------------------

.free_slot
|068161| PHA

|068162| LDA.b #$0A
|068164| STA.w $0DD0,X

|068167| LDA.b #$EC ; SPRITE EC
|068169| STA.w $0E20,X

|06816C| LDA.b $00
|06816E| STA.w $0D10,X

|068171| LDA.b $01
|068173| STA.w $0D30,X

|068176| LDA.b $02
|068178| STA.w $0D00,X

|06817B| LDA.b $03
|06817D| STA.w $0D20,X

|068180| JSL LoadSpriteProperties

|068184| LDA.b $EE
|068186| STA.w $0F20,X

|068189| PLA
|06818A| STA.w $0DB0,X

|06818D| CMP.b #$06
|06818F| BCC .light_object

|068191| PHA

|068192| LDA.b #$A6
|068194| STA.w $0E40,X

|068197| PLA

;---------------------------------------------------------------------------------------------------

.light_object
|068198| CMP.b #$02
|06819A| BNE .not_bush_or_pot

|06819C| LDA.b $1B
|06819E| BEQ .not_bush_or_pot

; [BUG] not sure if this is reachable, but it causes problems witht that TAY
|0681A0| LDA.b #$80
|0681A2| STA.w $0F50,X

.not_bush_or_pot
|0681A5| PHB
|0681A6| PHK
|0681A7| PLB

|0681A8| TAY

|0681A9| LDA.w SpriteDraw_ThrownItem.palette,Y
|0681AC| STA.w $0F50,X

|0681AF| LDA.b #$09
|0681B1| STA.l $7FFA2C,X

|0681B5| LDA.b #$02
|0681B7| STA.w $0314
|0681BA| STA.w $0FB2

|0681BD| LDA.b #$10
|0681BF| STA.w $0DF0,X

|0681C2| LDA.b $EE
|0681C4| STA.w $0F20,X

|0681C7| STZ.w $0DC0,X

|0681CA| LDA.w $0B9C
|0681CD| CMP.b #$FF
|0681CF| BEQ .exit

|0681D1| ORA.b $1B
|0681D3| BNE .no_substitution

|0681D5| LDA.w $0DB0,X
|0681D8| DEC A
|0681D9| DEC A
|0681DA| CMP.b #$02
|0681DC| BCS .no_substitution

|0681DE| JSL SubstituteAlternateSecret

.no_substitution
|0681E2| LDA.w $0B9C
|0681E5| BPL .normal

|0681E7| AND.b #$7F
|0681E9| STA.w $0DC0,X

|0681EC| STZ.w $0B9C

.normal
|0681EF| JSR SpawnSecret

.exit
|0681F2| PLB

|0681F3| RTL

;===================================================================================================

pool SpawnSecret

.ID
|0681F4| db $D9 ; SPRITE D9 - 0x01 - green rupee
|0681F5| db $3E ; SPRITE 3E - 0x02 - hoarder
|0681F6| db $79 ; SPRITE 79 - 0x03 - bee
|0681F7| db $D9 ; SPRITE D9 - 0x04 - green rupee
|0681F8| db $DC ; SPRITE DC - 0x05 - 1 bomb
|0681F9| db $D8 ; SPRITE D8 - 0x06 - heart
|0681FA| db $DA ; SPRITE DA - 0x07 - blue rupee
|0681FB| db $E4 ; SPRITE E4 - 0x08 - small key
|0681FC| db $E1 ; SPRITE E1 - 0x09 - 5 arrows
|0681FD| db $DC ; SPRITE DC - 0x0A - 1 bomb
|0681FE| db $D8 ; SPRITE D8 - 0x0B - heart
|0681FF| db $DF ; SPRITE DF - 0x0C - small magic
|068200| db $E0 ; SPRITE E0 - 0x0D - full magic
|068201| db $0B ; SPRITE 0B - 0x0E - cucco
|068202| db $42 ; SPRITE 42 - 0x0F - green guard
|068203| db $D3 ; SPRITE D3 - 0x10 - stal
|068204| db $41 ; SPRITE 41 - 0x11 - blue guard
|068205| db $D4 ; SPRITE D4 - 0x12 - landmine
|068206| db $D9 ; SPRITE D9 - 0x13 - green rupee
|068207| db $E3 ; SPRITE E3 - 0x14 - fairy
|068208| db $D8 ; SPRITE D8 - 0x15 - heart
|068209| db $00 ;             0x16 - null

;---------------------------------------------------------------------------------------------------

.mode
|06820A| db $00 ; 0x01 - green rupee
|06820B| db $01 ; 0x02 - hoarder
|06820C| db $01 ; 0x03 - bee
|06820D| db $00 ; 0x04 - green rupee
|06820E| db $00 ; 0x05 - 1 bomb
|06820F| db $00 ; 0x06 - heart
|068210| db $00 ; 0x07 - blue rupee
|068211| db $00 ; 0x08 - small key
|068212| db $00 ; 0x09 - 5 arrows
|068213| db $00 ; 0x0A - 1 bomb
|068214| db $03 ; 0x0B - heart
|068215| db $00 ; 0x0C - small magic
|068216| db $00 ; 0x0D - full magic
|068217| db $01 ; 0x0E - cucco
|068218| db $00 ; 0x0F - green guard
|068219| db $00 ; 0x10 - stal
|06821A| db $00 ; 0x11 - blue guard
|06821B| db $00 ; 0x12 - landmine
|06821C| db $00 ; 0x13 - green rupee
|06821D| db $00 ; 0x14 - fairy
|06821E| db $00 ; 0x15 - heart
|06821F| db $00 ; 0x16 - null

;---------------------------------------------------------------------------------------------------

.offset_x
|068220| db $04 ; 0x01 - green rupee
|068221| db $00 ; 0x02 - hoarder
|068222| db $04 ; 0x03 - bee
|068223| db $04 ; 0x04 - green rupee
|068224| db $00 ; 0x05 - 1 bomb
|068225| db $04 ; 0x06 - heart
|068226| db $04 ; 0x07 - blue rupee
|068227| db $04 ; 0x08 - small key
|068228| db $04 ; 0x09 - 5 arrows
|068229| db $00 ; 0x0A - 1 bomb
|06822A| db $04 ; 0x0B - heart
|06822B| db $04 ; 0x0C - small magic
|06822C| db $04 ; 0x0D - full magic
|06822D| db $00 ; 0x0E - cucco
|06822E| db $00 ; 0x0F - green guard
|06822F| db $00 ; 0x10 - stal
|068230| db $00 ; 0x11 - blue guard
|068231| db $00 ; 0x12 - landmine
|068232| db $04 ; 0x13 - green rupee
|068233| db $00 ; 0x14 - fairy
|068234| db $04 ; 0x15 - heart
|068235| db $04 ; 0x16 - null

;---------------------------------------------------------------------------------------------------

.ignore_ancillae
|068236| db $01 ; 0x01 - green rupee
|068237| db $00 ; 0x02 - hoarder
|068238| db $00 ; 0x03 - bee
|068239| db $01 ; 0x04 - green rupee
|06823A| db $01 ; 0x05 - 1 bomb
|06823B| db $01 ; 0x06 - heart
|06823C| db $01 ; 0x07 - blue rupee
|06823D| db $01 ; 0x08 - small key
|06823E| db $01 ; 0x09 - 5 arrows
|06823F| db $01 ; 0x0A - 1 bomb
|068240| db $01 ; 0x0B - heart
|068241| db $01 ; 0x0C - small magic
|068242| db $01 ; 0x0D - full magic
|068243| db $00 ; 0x0E - cucco
|068244| db $00 ; 0x0F - green guard
|068245| db $00 ; 0x10 - stal
|068246| db $00 ; 0x11 - blue guard
|068247| db $00 ; 0x12 - landmine
|068248| db $01 ; 0x13 - green rupee
|068249| db $01 ; 0x14 - fairy
|06824A| db $01 ; 0x15 - heart
|06824B| db $01 ; 0x16 - null

;---------------------------------------------------------------------------------------------------

.jump_velocity
|06824C| db $10 ; 0x01 - green rupee
|06824D| db $00 ; 0x02 - hoarder
|06824E| db $00 ; 0x03 - bee
|06824F| db $10 ; 0x04 - green rupee
|068250| db $00 ; 0x05 - 1 bomb
|068251| db $00 ; 0x06 - heart
|068252| db $10 ; 0x07 - blue rupee
|068253| db $10 ; 0x08 - small key
|068254| db $10 ; 0x09 - 5 arrows
|068255| db $10 ; 0x0A - 1 bomb
|068256| db $00 ; 0x0B - heart
|068257| db $10 ; 0x0C - small magic
|068258| db $0A ; 0x0D - full magic
|068259| db $10 ; 0x0E - cucco
|06825A| db $00 ; 0x0F - green guard
|06825B| db $00 ; 0x10 - stal
|06825C| db $00 ; 0x11 - blue guard
|06825D| db $00 ; 0x12 - landmine
|06825E| db $10 ; 0x13 - green rupee
|06825F| db $00 ; 0x14 - fairy
|068260| db $00 ; 0x15 - heart
|068261| db $00 ; 0x16 - null

endpool

;---------------------------------------------------------------------------------------------------

SpawnSecretFail:
|068262| CLC

|068263| RTS

;---------------------------------------------------------------------------------------------------

SpawnSecret:
|068264| LDA.b $1B ; indoors means pots, so it's always successful
|068266| BNE .indoors

|068268| JSL GetRandomNumber ; outdoors only has a 1/2 chance of success
|06826C| AND.b #$08
|06826E| BNE SpawnSecretFail

.indoors
|068270| LDY.w $0B9C ; this value will have been set up by now
|068273| BEQ SpawnSecretFail

|068275| CPY.b #$04
|068277| BNE .not_random_bush

|068279| JSL GetRandomNumber ; special secondary random bush prize pack
|06827D| AND.b #$03
|06827F| CLC
|068280| ADC.b #$13
|068282| TAY

.not_random_bush
|068283| STY.b $0D

|068285| LDA.w .ID-1,Y
|068288| BEQ SpawnSecretFail

|06828A| JSL SpawnSpriteDynamically
|06828E| BMI SpawnSecretFail

;---------------------------------------------------------------------------------------------------

|068290| PHX

|068291| LDX.b $0D

|068293| LDA.w .mode-1,X
|068296| STA.w $0D80,Y

|068299| LDA.w .ignore_ancillae-1,X
|06829C| STA.w $0BA0,Y

|06829F| LDA.w .jump_velocity-1,X
|0682A2| STA.w $0F80,Y

|0682A5| LDA.b $00
|0682A7| CLC
|0682A8| ADC.w .offset_x-1,X
|0682AB| STA.w $0D10,Y

|0682AE| LDA.b $01
|0682B0| ADC.b #$00
|0682B2| STA.w $0D30,Y

|0682B5| LDA.b $02
|0682B7| STA.w $0D00,Y

|0682BA| LDA.b $03
|0682BC| STA.w $0D20,Y

|0682BF| LDA.b $04
|0682C1| STA.w $0F70,Y

|0682C4| LDA.b #$00
|0682C6| STA.w $0DC0,Y

|0682C9| LDA.b #$20
|0682CB| STA.w $0F10,Y

|0682CE| LDA.b #$30
|0682D0| STA.w $0E10,Y

|0682D3| LDX.w $0E20,Y
|0682D6| CPX.b #$E4 ; SPRITE E4
|0682D8| BNE .not_key

|0682DA| PHX

|0682DB| TYX

|0682DC| JSR SpritePrep_SmallKey

|0682DF| PLX

;---------------------------------------------------------------------------------------------------

.not_key
|0682E0| CPX.b #$0B ; SPRITE 0B
|0682E2| BNE .not_cucco

|0682E4| LDA.b #$30 ; SFX2.30
|0682E6| STA.w $012E

; are we in the western snitch house?
|0682E9| LDA.w $048E ; make the cucco powderable
|0682EC| CMP.b #$01 ; ROOM 0101
|0682EE| BNE .not_cucco

|0682F0| STA.w $0E30,Y

.not_cucco
|0682F3| CPX.b #$42 ; SPRITE 42
|0682F5| BEQ .guard

|0682F7| CPX.b #$41 ; SPRITE 41
|0682F9| BEQ .guard

|0682FB| CPX.b #$3E ; SPRITE 3E
|0682FD| BNE .not_hoarder

|0682FF| LDA.b #$09
|068301| STA.w $0F50,Y

|068304| BRA .done

;---------------------------------------------------------------------------------------------------

.guard
|068306| LDA.b #$04 ; SFX3.04
|068308| STA.w $012F

|06830B| LDA.b #$00 ; prevent damage
|06830D| STA.w $0CE2,Y

|068310| LDA.b #$A0 ; give it iframes
|068312| STA.w $0EF0,Y

|068315| BRA .last_check

;---------------------------------------------------------------------------------------------------

.not_hoarder
|068317| LDA.b #$FF ; stun
|068319| STA.w $0B58,Y

.last_check
|06831C| CPX.b #$79 ; SPRITE 79 - is it a bee?
|06831E| BNE .done

|068320| LDA.b #$20 ; target west
|068322| STA.w $0D90,Y

;---------------------------------------------------------------------------------------------------

.done
|068325| SEC

|068326| PLX

|068327| RTS

;===================================================================================================

HandleAllSprites:
|068328| LDA.b $1B
|06832A| BNE .indoors

|06832C| STZ.w $0C7C
|06832F| STZ.w $0C7D
|068332| STZ.w $0C7E
|068335| STZ.w $0C7F
|068338| STZ.w $0C80

|06833B| JSL ProximalSpriteActivation

;---------------------------------------------------------------------------------------------------

.indoors
|06833F| PHB
|068340| PHK
|068341| PLB

|068342| LDY.b #$00

|068344| LDA.l $7EF3CA
|068348| BEQ .lightworld

|06834A| INY

.lightworld
|06834B| STY.w $0FFF

|06834E| LDA.b $11
|068350| BNE .dont_reset_drag

|068352| STZ.w $0B7C ; reset drag
|068355| STZ.w $0B7D
|068358| STZ.w $0B7E
|06835B| STZ.w $0B7F

;---------------------------------------------------------------------------------------------------

.dont_reset_drag
|06835E| JSR ResetOAMRegionBases
|068361| JSL HandleUpperGarnishSlots_long
|068365| JSL HandleFollower

|068369| LDA.w $0314
|06836C| STA.w $0FB2

|06836F| STZ.w $0314

|068372| LDA.b #$80
|068374| STA.w $0FAB

|068377| LDA.b $47
|068379| AND.b #$7F
|06837B| BEQ .repulse_timer_over

|06837D| DEC.b $47
|06837F| BRA .continue

;---------------------------------------------------------------------------------------------------

.repulse_timer_over
|068381| STZ.b $47

.continue
|068383| STZ.w $0379
|068386| STZ.w $0377
|068389| STZ.w $0B7B

|06838C| LDA.w $0FDC
|06838F| BEQ .alert_timer_over

|068391| DEC.w $0FDC

;---------------------------------------------------------------------------------------------------

.alert_timer_over
|068394| JSL Ancilla_Main
|068398| JSL HandleAllOverlords

|06839C| STZ.w $0B9A

|06839F| LDX.b #$0F

.next_sprite
|0683A1| STX.w $0FA0

|0683A4| JSR HandleSingleSprite

|0683A7| DEX
|0683A8| BPL .next_sprite

;---------------------------------------------------------------------------------------------------

|0683AA| JSL HandleLowerGarnishSlots_long

|0683AE| STZ.w $069F
|0683B1| STZ.w $069E

|0683B4| PLB

|0683B5| JSL ExecuteCachedSprites

|0683B9| LDA.w $0AAA
|0683BC| BEQ .exit

|0683BE| STA.w $0FC6

.exit
|0683C1| RTL

;===================================================================================================
; Unused debug code
;===================================================================================================
NRURURU_bounce:
|0683C2| JSL NRURURU

|0683C6| RTL

;===================================================================================================

pool ResetOAMRegionBases

.addresses
|0683C7| dw $0030
|0683C9| dw $01D0
|0683CB| dw $0000
|0683CD| dw $0030
|0683CF| dw $0120
|0683D1| dw $0140

endpool

;---------------------------------------------------------------------------------------------------

ResetOAMRegionBases:
|0683D3| LDY.b #$00

|0683D5| REP #$20

.next
|0683D7| LDA.w .addresses,Y
|0683DA| STA.w $0FE0,Y

|0683DD| INY
|0683DE| INY
|0683DF| CPY.b #$0B
|0683E1| BCC .next

|0683E3| SEP #$20

|0683E5| RTS

;===================================================================================================

CheckIfHitboxesOverlap_long:
|0683E6| JSR CheckIfHitboxesOverlap

|0683E9| RTL

;===================================================================================================

SetupSpriteHitbox_long:
|0683EA| PHB
|0683EB| PHK
|0683EC| PLB

|0683ED| JSR SetupSpriteHitbox

|0683F0| PLB

|0683F1| RTL

;===================================================================================================
; Allocates OAM for the sprite to one of regions A, D, or F
; If sprites aren't paused, decrement timers and handle taking damage
;===================================================================================================
DoSpriteOAMandTimers:
|0683F2| JSR Get16BitSpriteCoords

|0683F5| LDA.w $0E40,X ; how many objects is the sprite composed of?
|0683F8| AND.b #$1F
|0683FA| INC A

|0683FB| ASL A
|0683FC| ASL A

|0683FD| LDY.w $0FB3
|068400| BEQ .use_regionA

|068402| LDY.w $0F20,X ; lower layer uses lower priority region
|068405| BEQ .use_regionD

|068407| JSL AllocateOAMInRegionF
|06840B| BRA .oam_done

.use_regionD
|06840D| JSL AllocateOAMInRegionD
|068411| BRA .oam_done

.use_regionA
|068413| JSL AllocateOAMInRegionA

.oam_done
|068417| LDA.b $11 ; are sprites paused?
|068419| ORA.w $0FC1
|06841C| BEQ .timers_ago

|06841E| JMP.w .handle_linkhop

;---------------------------------------------------------------------------------------------------

.timers_ago
|068421| LDA.w $0DF0,X
|068424| BEQ .skip_timer0

|068426| DEC.w $0DF0,X

.skip_timer0
|068429| LDA.w $0E00,X
|06842C| BEQ .skip_timer1

|06842E| DEC.w $0E00,X

.skip_timer1
|068431| LDA.w $0E10,X
|068434| BEQ .skip_timer2

|068436| DEC.w $0E10,X

.skip_timer2
|068439| LDA.w $0EE0,X
|06843C| BEQ .skip_timer3

|06843E| DEC.w $0EE0,X

.skip_timer3
|068441| LDA.w $0EF0,X
|068444| AND.b #$7F
|068446| BEQ .skip_hit_timer

|068448| LDY.w $0DD0,X ; is sprite active?
|06844B| CPY.b #$09
|06844D| BCC .no_damage

|06844F| CMP.b #$1F
|068451| BNE .delay_damage

;---------------------------------------------------------------------------------------------------

|068453| PHA

; looks like agahnim 1 has some hardcoded nonsense going on for his message
|068454| LDA.w $0E20,X
|068457| CMP.b #$7A ; SPRITE 7A
|068459| BNE .not_agahnim1

|06845B| LDA.w $0FFF
|06845E| BNE .not_agahnim1

|068460| LDA.w $0E50,X
|068463| SEC
|068464| SBC.w $0CE2,X

|068467| BEQ .aga1_message
|068469| BCS .not_agahnim1

.aga1_message
|06846B| LDA.b #$3E ; MESSAGE 013E
|06846D| STA.w $1CF0

|068470| LDA.b #$01
|068472| STA.w $1CF1

|068475| JSL ShowMessageMinimal

;---------------------------------------------------------------------------------------------------

.not_agahnim1
|068479| PLA

.delay_damage
|06847A| CMP.b #$18
|06847C| BNE .no_damage

|06847E| JSR HandleSpriteDamageApplication

.no_damage
|068481| LDA.w $0CE2,X
|068484| CMP.b #$FB
|068486| BCS .skip_palette_cycling

|068488| LDA.w $0EF0,X
|06848B| ASL A
|06848C| AND.b #$0E
|06848E| STA.w $0B89,X

.skip_palette_cycling
|068491| DEC.w $0EF0,X

|068494| BRA .hit_continue

.skip_hit_timer
|068496| STZ.w $0EF0,X
|068499| STZ.w $0B89,X

.hit_continue
|06849C| LDA.w $0F10,X
|06849F| BEQ .handle_linkhop

|0684A1| DEC.w $0F10,X

.handle_linkhop
|0684A4| LDY.b $EE ; If Link is hopping, use a different priority.
|0684A6| CPY.b #$03
|0684A8| BEQ .link_is_jumping

|0684AA| LDY.w $0F20,X ; otherwise use set layer

.link_is_jumping
|0684AD| LDA.w $0B89,X
|0684B0| AND.b #$CF
|0684B2| ORA.w .OAM_priority,Y
|0684B5| STA.w $0B89,X

|0684B8| RTS

;---------------------------------------------------------------------------------------------------

.OAM_priority
|0684B9| db $20, $10, $30, $30

;===================================================================================================
; Caches a sprite's segregated coordinate bytes as 16-bit values
;===================================================================================================
Get16BitSpriteCoords_long:
|0684BD| JSR Get16BitSpriteCoords

|0684C0| RTL

;---------------------------------------------------------------------------------------------------

Get16BitSpriteCoords:
|0684C1| LDA.w $0D10,X
|0684C4| STA.w $0FD8

|0684C7| LDA.w $0D30,X
|0684CA| STA.w $0FD9

|0684CD| LDA.w $0D00,X
|0684D0| STA.w $0FDA

|0684D3| LDA.w $0D20,X
|0684D6| STA.w $0FDB

|0684D9| RTS

;===================================================================================================
; Does main AI module behavior of a single sprite
;===================================================================================================
HandleSingleSprite_long:
|0684DA| PHB
|0684DB| PHK
|0684DC| PLB

|0684DD| JSR HandleSingleSprite

|0684E0| PLB

|0684E1| RTL

;---------------------------------------------------------------------------------------------------

HandleSingleSprite:
|0684E2| LDA.w $0DD0,X
|0684E5| BEQ SpriteModule_Inactive

|0684E7| PHA

|0684E8| JSR DoSpriteOAMandTimers

|0684EB| PLA
|0684EC| CMP.b #$09
|0684EE| BEQ .active

|0684F0| JSL JumpTableLocal
|0684F4| dw SpriteModule_Inactive       ; 0x00
|0684F6| dw SpriteModule_Fall1          ; 0x01
|0684F8| dw SpriteModule_Poof           ; 0x02
|0684FA| dw SpriteModule_Drown          ; 0x03
|0684FC| dw SpriteModule_Explode_bounce ; 0x04
|0684FE| dw SpriteModule_Fall2          ; 0x05
|068500| dw SpriteModule_Die            ; 0x06
|068502| dw SpriteModule_Burn_bounce    ; 0x07
|068504| dw SpriteModule_Initialize     ; 0x08
|068506| dw SpriteModule_Active         ; 0x09
|068508| dw SpriteModule_Carried        ; 0x0A
|06850A| dw SpriteModule_Stunned        ; 0x0B

;---------------------------------------------------------------------------------------------------

.active
|06850C| JMP.w SpriteModule_Active

;===================================================================================================
; Why is this here?
;===================================================================================================
SpritePrep_DoNothingI:
|06850F| RTS

;===================================================================================================
; Sprite is dead and doesn't exist
;===================================================================================================
SpriteModule_Inactive:
|068510| LDA.b $1B
|068512| BNE .indoors

|068514| TXA
|068515| ASL A
|068516| TAY

; Kill the sprite in a table of who's alive.
|068517| LDA.b #$FF
|068519| STA.w $0BC0,Y
|06851C| STA.w $0BC1,Y

|06851F| RTS

.indoors
|068520| LDA.b #$FF
|068522| STA.w $0BC0,X

|068525| RTS

;===================================================================================================

SpriteModule_Active_long:
|068526| PHB
|068527| PHK
|068528| PLB

|068529| JSR SpriteModule_Active

|06852C| PLB

|06852D| RTL

;===================================================================================================

SpriteModule_Fall1:
|06852E| LDA.w $0DF0,X
|068531| BNE .fall_longer

|068533| STZ.w $0DD0,X

|068536| JSL ManuallySetDeathFlagUW

|06853A| RTS

.fall_longer
|06853B| JSR GetScreenCoordinates
|06853E| JSL SpriteDraw_Falling

|068542| RTS

;===================================================================================================

SpriteModule_Burn_bounce:
|068543| JSL SpriteModule_Burn

|068547| RTS

;===================================================================================================

SpriteModule_Explode_bounce:
|068548| JSL SpriteModule_Explode

|06854C| RTS

;===================================================================================================

pool SpriteModule_Drown

.oam_groups
; group00
|06854D| dw  -7,  -7 : db $80, $04, $00, $00
|068555| dw  14,  -6 : db $83, $04, $00, $00

; group01
|06855D| dw  -6,  -6 : db $CF, $04, $00, $00
|068565| dw  13,  -5 : db $DF, $04, $00, $00

; group02
|06856D| dw  -4,  -4 : db $AE, $04, $00, $00
|068575| dw  12,  -4 : db $AF, $44, $00, $00

; group03
|06857D| dw   0,   0 : db $E7, $04, $00, $02
|068585| dw   0,   0 : db $E7, $04, $00, $02

;---------------------------------------------------------------------------------------------------

.flip
|06858D| db $00
|06858E| db $40
|06858F| db $C0
|068590| db $80

.char
|068591| db $C0, $C0, $C0, $C0
|068595| db $CD, $CD, $CD
|068598| db $CB, $CB, $CB, $CB

endpool

;---------------------------------------------------------------------------------------------------

SpriteModule_Drown:
|06859C| LDA.w $0D80,X
|06859F| BEQ DrawDrowningSprite

|0685A1| LDA.w $0D90,X
|0685A4| CMP.b #$06
|0685A6| BNE .use_allotted_region

|0685A8| LDA.b #$08
|0685AA| JSL AllocateOAMInRegionC

.use_allotted_region
|0685AE| LDA.w $0E60,X
|0685B1| EOR.b #$10
|0685B3| STA.w $0E60,X

|0685B6| JSR SpriteDraw_SingleLarge

|0685B9| LDA.w $0E80,X
|0685BC| LSR A
|0685BD| LSR A
|0685BE| AND.b #$03
|0685C0| TAY

|0685C1| LDA.w .flip,Y
|0685C4| STA.b $05

|0685C6| LDA.w $0DF0,X
|0685C9| CMP.b #$01
|0685CB| BNE .stay_alive

|0685CD| STZ.w $0DD0,X

.stay_alive
|0685D0| PHX

|0685D1| LDA.b #$8A
|0685D3| BCC .delay

|0685D5| LDA.w $0DF0,X
|0685D8| LSR A
|0685D9| TAX

|0685DA| STZ.b $05

|0685DC| LDA.w .char,X

.delay
|0685DF| LDY.b #$02
|0685E1| STA.b ($90),Y

|0685E3| INY
|0685E4| LDA.b #$24
|0685E6| ORA.b $05
|0685E8| STA.b ($90),Y

|0685EA| PLX

|0685EB| LDA.w $0DF0,X
|0685EE| BNE EXIT_06861A

;---------------------------------------------------------------------------------------------------

|0685F0| JSR CheckIfActivePermissive_bank06

|0685F3| INC.w $0E80,X

|0685F6| JSR MoveSpriteXY_bank06
|0685F9| JSR MoveSpriteZ_bank06

|0685FC| LDA.w $0F80,X
|0685FF| SEC
|068600| SBC.b #$02
|068602| STA.w $0F80,X

|068605| LDA.w $0F70,X
|068608| BPL EXIT_06861A

|06860A| STZ.w $0F70,X

|06860D| LDA.b #$12
|06860F| STA.w $0DF0,X

;===================================================================================================

DisableShadowFlag:
|068612| LDA.w $0E60,X
|068615| AND.b #$EF
|068617| STA.w $0E60,X

;---------------------------------------------------------------------------------------------------

#EXIT_06861A:
|06861A| RTS

;===================================================================================================

DrawDrowningSprite:
|06861B| JSR CheckIfActivePermissive_bank06

|06861E| LDA.b $1A
|068620| AND.b #$01 ; increment the timer every other frame
|068622| BNE .timer_parity

|068624| INC.w $0DF0,X

.timer_parity
|068627| STZ.w $0F50,X
|06862A| STZ.w $0EF0,X

|06862D| LDA.b #$00 ; [USELESS] YOU'RE DOING AN AND ANYWAYS
|06862F| XBA

|068630| LDA.w $0DF0,X
|068633| BNE .stay_alive

|068635| STZ.w $0DD0,X

.stay_alive
|068638| REP #$20

|06863A| ASL A
|06863B| AND.w #$00F8
|06863E| ASL A
|06863F| ADC.w #SpriteModule_Drown.oam_groups
|068642| STA.b $08

|068644| SEP #$20

|068646| LDA.b #$02
|068648| JSL TabulatedSpriteDraw

|06864C| RTS

;===================================================================================================

SpriteModule_Initialize:
|06864D| JSL LoadSpriteProperties

|068651| INC.w $0DD0,X

|068654| LDA.w $0E20,X
|068657| JSL JumpTableLocal
|06865B| dw SpritePrep_Raven                         ; 0x00 - RAVEN
|06865D| dw SpritePrep_Vulture                       ; 0x01 - VULTURE
|06865F| dw SpritePrep_DoNothingA                    ; 0x02 - STALFOS HEAD
|068661| dw $0000                                    ; 0x03 - NULL
|068663| dw SpritePrep_Switch                        ; 0x04 - CORRECT PULL SWITCH
|068665| dw SpritePrep_DoNothingA                    ; 0x05 - UNUSED CORRECT PULL SWITCH
|068667| dw SpritePrep_Switch                        ; 0x06 - WRONG PULL SWITCH
|068669| dw SpritePrep_DoNothingB                    ; 0x07 - UNUSED WRONG PULL SWITCH
|06866B| dw SpritePrep_Octorok                       ; 0x08 - OCTOROK
|06866D| dw SpritePrep_Moldorm_bounce                ; 0x09 - MOLDORM
|06866F| dw SpritePrep_Octorok                       ; 0x0A - OCTOROK 4WAY
|068671| dw SpritePrep_DoNothingA                    ; 0x0B - CUCCO
|068673| dw SpritePrep_DoNothingA                    ; 0x0C - OCTOROK STONE
|068675| dw SpritePrep_DoNothingA                    ; 0x0D - BUZZBLOB
|068677| dw SpritePrep_DoNothingA                    ; 0x0E - SNAPDRAGON
|068679| dw SpritePrep_Octoballoon                   ; 0x0F - OCTOBALLOON
|06867B| dw SpritePrep_DoNothingA                    ; 0x10 - OCTOBALLOON BABY
|06867D| dw SpritePrep_DoNothingA                    ; 0x11 - HINOX
|06867F| dw SpritePrep_DoNothingA                    ; 0x12 - MOBLIN
|068681| dw SpritePrep_MiniHelmasaur                 ; 0x13 - MINI HELMASAUR
|068683| dw SpritePrep_ThievesTownGrate              ; 0x14 - THIEVES TOWN GRATE
|068685| dw SpritePrep_Antifairy                     ; 0x15 - ANTIFAIRY
|068687| dw SpritePrep_Sage                          ; 0x16 - SAHASRAHLA / AGINAH
|068689| dw SpritePrep_DoNothingA                    ; 0x17 - BUSH HOARDER
|06868B| dw SpritePrep_MiniMoldorm_bounce            ; 0x18 - MINI MOLDORM
|06868D| dw SpritePrep_Poe                           ; 0x19 - POE
|06868F| dw SpritePrep_Smithy                        ; 0x1A - SMITHY
|068691| dw SpritePrep_DoNothingA                    ; 0x1B - ARROW
|068693| dw SpritePrep_Statue                        ; 0x1C - STATUE
|068695| dw SpritePrep_IgnoreProjectiles             ; 0x1D - FLUTE QUEST
|068697| dw SpritePrep_CrystalSwitch                 ; 0x1E - CRYSTAL SWITCH
|068699| dw SpritePrep_SickKid                       ; 0x1F - SICK KID
|06869B| dw SpritePrep_DoNothingA                    ; 0x20 - SLUGGULA
|06869D| dw SpritePrep_WaterLever                    ; 0x21 - WATER SWITCH
|06869F| dw SpritePrep_DoNothingA                    ; 0x22 - ROPA
|0686A1| dw SpritePrep_Bari                          ; 0x23 - RED BARI
|0686A3| dw SpritePrep_Bari                          ; 0x24 - BLUE BARI
|0686A5| dw SpritePrep_TalkingTree                   ; 0x25 - TALKING TREE
|0686A7| dw SpritePrep_HardhatBeetle                 ; 0x26 - HARDHAT BEETLE
|0686A9| dw SpritePrep_DoNothingA                    ; 0x27 - DEADROCK
|0686AB| dw SpritePrep_DarkWorldHintNPC              ; 0x28 - DARK WORLD HINT NPC
|0686AD| dw SpritePrep_Adult                         ; 0x29 - ADULT
|0686AF| dw SpritePrep_IgnoreProjectiles             ; 0x2A - SWEEPING LADY
|0686B1| dw SpritePrep_Hobo                          ; 0x2B - HOBO
|0686B3| dw SpritePrep_Lumberjacks                   ; 0x2C - LUMBERJACKS
|0686B5| dw SpritePrep_IgnoreProjectiles             ; 0x2D - NECKLESS MAN
|0686B7| dw SpritePrep_FluteKid                      ; 0x2E - FLUTE KID
|0686B9| dw SpritePrep_IgnoreProjectiles             ; 0x2F - RACE GAME LADY
|0686BB| dw SpritePrep_IgnoreProjectiles             ; 0x30 - RACE GAME GUY
|0686BD| dw SpritePrep_FortuneTeller                 ; 0x31 - FORTUNE TELLER
|0686BF| dw SpritePrep_IgnoreProjectiles             ; 0x32 - ARGUE BROS
|0686C1| dw SpritePrep_RupeePull                     ; 0x33 - RUPEE PULL
|0686C3| dw SpritePrep_Snitch_bounce_2               ; 0x34 - YOUNG SNITCH
|0686C5| dw SpritePrep_Snitch_bounce_3               ; 0x35 - INNKEEPER
|0686C7| dw SpritePrep_IgnoreProjectiles             ; 0x36 - WITCH
|0686C9| dw SpritePrep_IgnoreProjectiles             ; 0x37 - WATERFALL
|0686CB| dw SpritePrep_DoNothingA                    ; 0x38 - EYE STATUE
|0686CD| dw SpritePrep_Locksmith                     ; 0x39 - LOCKSMITH
|0686CF| dw SpritePrep_MagicBat                      ; 0x3A - MAGIC BAT
|0686D1| dw SpritePrep_BonkItem                      ; 0x3B - BONK ITEM
|0686D3| dw SpritePrep_IgnoreProjectiles             ; 0x3C - KID IN KAK
|0686D5| dw SpritePrep_Snitch_bounce_1               ; 0x3D - OLD SNITCH
|0686D7| dw SpritePrep_DoNothingA                    ; 0x3E - ROCK HOARDER
|0686D9| dw SpritePrep_DoNothingA                    ; 0x3F - TUTORIAL GUARD
|0686DB| dw SpritePrep_LightningGate                 ; 0x40 - LIGHTNING GATE
|0686DD| dw SpritePrep_StandardGuard                 ; 0x41 - BLUE GUARD
|0686DF| dw SpritePrep_StandardGuard                 ; 0x42 - GREEN GUARD
|0686E1| dw SpritePrep_StandardGuard                 ; 0x43 - RED SPEAR GUARD
|0686E3| dw SpritePrep_CoolerGuard                   ; 0x44 - BLUESAIN BOLT
|0686E5| dw SpritePrep_CoolerGuard                   ; 0x45 - USAIN BOLT
|0686E7| dw SpritePrep_CoolerGuard                   ; 0x46 - BLUE ARCHER
|0686E9| dw SpritePrep_CoolerGuard                   ; 0x47 - GREEN BUSH GUARD
|0686EB| dw SpritePrep_CoolerGuard                   ; 0x48 - RED JAVELIN GUARD
|0686ED| dw SpritePrep_CoolerGuard                   ; 0x49 - RED BUSH GUARD
|0686EF| dw SpritePrep_CoolerGuard                   ; 0x4A - BOMB GUARD
|0686F1| dw SpritePrep_WeakGuard                     ; 0x4B - GREEN KNIFE GUARD
|0686F3| dw SpritePrep_Geldman                       ; 0x4C - GELDMAN
|0686F5| dw SpritePrep_CacheOriginalCoordinates      ; 0x4D - TOPPO
|0686F7| dw SpritePrep_Popo                          ; 0x4E - POPO
|0686F9| dw SpritePrep_Popo2                         ; 0x4F - POPO
|0686FB| dw SpritePrep_DoNothingA                    ; 0x50 - CANNONBALL
|0686FD| dw SpritePrep_DoNothingD                    ; 0x51 - ARMOS STATUE
|0686FF| dw SpritePrep_KingZora                      ; 0x52 - KING ZORA
|068701| dw SpritePrep_ArmosKnight                   ; 0x53 - ARMOS KNIGHT
|068703| dw SpritePrep_Lanmolas_bounce               ; 0x54 - LANMOLAS
|068705| dw SpritePrep_SwimmingZora                  ; 0x55 - ZORA / FIREBALL
|068707| dw SpritePrep_WalkingZora                   ; 0x56 - WALKING ZORA
|068709| dw SpritePrep_DesertStatue                  ; 0x57 - DESERT STATUE
|06870B| dw SpritePrep_DoNothingA                    ; 0x58 - CRAB
|06870D| dw SpritePrep_LostWoodsBird                 ; 0x59 - LOST WOODS BIRD
|06870F| dw SpritePrep_LostWoodsSquirrel             ; 0x5A - LOST WOODS SQUIRREL
|068711| dw SpritePrep_Spark                         ; 0x5B - SPARK
|068713| dw SpritePrep_Spark                         ; 0x5C - SPARK
|068715| dw SpritePrep_Roller_VerticalDownFirst      ; 0x5D - ROLLER VERTICAL DOWN FIRST
|068717| dw SpritePrep_Roller_VerticalUpFirst        ; 0x5E - ROLLER VERTICAL UP FIRST
|068719| dw SpritePrep_Roller_HorizontalRightFirst   ; 0x5F - ROLLER HORIZONTAL RIGHT FIRST
|06871B| dw SpritePrep_Roller_HorizontalLeftFirst    ; 0x60 - ROLLER HORIZONTAL LEFT FIRST
|06871D| dw SpritePrep_DoNothingA                    ; 0x61 - BEAMOS
|06871F| dw SpritePrep_MasterSword                   ; 0x62 - MASTERSWORD
|068721| dw SpritePrep_DebirandoPit                  ; 0x63 - DEBIRANDO PIT
|068723| dw SpritePrep_Debirando                     ; 0x64 - DEBIRANDO
|068725| dw SpritePrep_ArcheryGame_bounce            ; 0x65 - ARCHERY GUY
|068727| dw SpritePrep_WallCannon                    ; 0x66 - WALL CANNON VERTICAL LEFT
|068729| dw SpritePrep_WallCannon                    ; 0x67 - WALL CANNON VERTICAL RIGHT
|06872B| dw SpritePrep_WallCannon                    ; 0x68 - WALL CANNON HORIZONTAL TOP
|06872D| dw SpritePrep_WallCannon                    ; 0x69 - WALL CANNON HORIZONTAL BOTTOM
|06872F| dw SpritePrep_DoNothingA                    ; 0x6A - BALL N CHAIN
|068731| dw SpritePrep_DoNothingA                    ; 0x6B - CANNONBALL / CANNON TROOPER
|068733| dw SpritePrep_DoNothingA                    ; 0x6C - MIRROR PORTAL
|068735| dw SpritePrep_Rat                           ; 0x6D - RAT / CRICKET
|068737| dw SpritePrep_Rope                          ; 0x6E - ROPE
|068739| dw SpritePrep_Keese                         ; 0x6F - KEESE
|06873B| dw SpritePrep_DoNothingG                    ; 0x70 - KING HELMASAUR FIREBALL
|06873D| dw SpritePrep_Leever                        ; 0x71 - LEEVER
|06873F| dw SpritePrep_IgnoreProjectiles             ; 0x72 - FAIRY POND TRIGGER
|068741| dw SpritePrep_UncleAndPriest_bounce         ; 0x73 - UNCLE / PRIEST / MANTLE
|068743| dw SpritePrep_RunningBoy_bounce             ; 0x74 - RUNNING BOY
|068745| dw SpritePrep_IgnoreProjectiles             ; 0x75 - BOTTLE MERCHANT
|068747| dw SpritePrep_Zelda_bounce                  ; 0x76 - ZELDA
|068749| dw SpritePrep_Antifairy                     ; 0x77 - ANTIFAIRY
|06874B| dw SpritePrep_MrsSahasrahla                 ; 0x78 - SAHASRAHLAS WIFE
|06874D| dw SpritePrep_OverworldBonkItem             ; 0x79 - BEE
|06874F| dw SpritePrep_Agahnim                       ; 0x7A - AGAHNIM
|068751| dw SpritePrep_DoNothingG                    ; 0x7B - AGAHNIMS BALLS
|068753| dw SpritePrep_GreenStalfos                  ; 0x7C - GREEN STALFOS
|068755| dw SpritePrep_BigSpike                      ; 0x7D - BIG SPIKE
|068757| dw SpritePrep_FireBar                       ; 0x7E - FIREBAR CLOCKWISE
|068759| dw SpritePrep_FireBar                       ; 0x7F - FIREBAR COUNTERCLOCKWISE
|06875B| dw SpritePrep_DoNothingG                    ; 0x80 - FIRESNAKE
|06875D| dw SpritePrep_DoNothingG                    ; 0x81 - HOVER
|06875F| dw SpritePrep_AntifairyCircle_bounce        ; 0x82 - ANTIFAIRY CIRCLE
|068761| dw SpritePrep_Eyegore_bounce                ; 0x83 - GREEN EYEGORE / GREEN MIMIC
|068763| dw SpritePrep_Eyegore_bounce                ; 0x84 - RED EYEGORE / RED MIMIC
|068765| dw SpritePrep_DoNothingG                    ; 0x85 - YELLOW STALFOS
|068767| dw SpritePrep_Kodongo                       ; 0x86 - KODONGO
|068769| dw SpritePrep_DoNothingG                    ; 0x87 - KODONGO FIRE
|06876B| dw SpritePrep_Mothula                       ; 0x88 - MOTHULA
|06876D| dw SpritePrep_DoNothingG                    ; 0x89 - MOTHULA BEAM
|06876F| dw SpritePrep_Spike                         ; 0x8A - SPIKE BLOCK
|068771| dw SpritePrep_DoNothingG                    ; 0x8B - GIBDO
|068773| dw SpritePrep_Arrghus                       ; 0x8C - ARRGHUS
|068775| dw SpritePrep_Arrghi                        ; 0x8D - ARRGHI
|068777| dw SpritePrep_DoNothingG                    ; 0x8E - TERRORPIN
|068779| dw SpritePrep_Blob                          ; 0x8F - BLOB
|06877B| dw SpritePrep_DoNothingG                    ; 0x90 - WALLMASTER
|06877D| dw SpritePrep_DoNothingG                    ; 0x91 - STALFOS KNIGHT
|06877F| dw SpritePrep_HelmasaurKing                 ; 0x92 - KING HELMASAUR
|068781| dw SpritePrep_Bumper                        ; 0x93 - BUMPER
|068783| dw SpritePrep_DoNothingA                    ; 0x94 - PIROGUSU
|068785| dw SpritePrep_LaserEye_bounce               ; 0x95 - LASER EYE LEFT
|068787| dw SpritePrep_LaserEye_bounce               ; 0x96 - LASER EYE RIGHT
|068789| dw SpritePrep_LaserEye_bounce               ; 0x97 - LASER EYE TOP
|06878B| dw SpritePrep_LaserEye_bounce               ; 0x98 - LASER EYE BOTTOM
|06878D| dw SpritePrep_DoNothingA                    ; 0x99 - PENGATOR
|06878F| dw SpritePrep_CacheOriginalCoordinates      ; 0x9A - KYAMERON
|068791| dw SpritePrep_DoNothingA                    ; 0x9B - WIZZROBE
|068793| dw SpritePrep_Zoro                          ; 0x9C - ZORO
|068795| dw SpritePrep_Babasu                        ; 0x9D - BABASU
|068797| dw SpritePrep_HauntedGroveOstrich           ; 0x9E - HAUNTED GROVE OSTRICH
|068799| dw SpritePrep_HauntedGroveAnimal            ; 0x9F - HAUNTED GROVE RABBIT
|06879B| dw SpritePrep_HauntedGroveAnimal            ; 0xA0 - HAUNTED GROVE BIRD
|06879D| dw SpritePrep_MoveDown8px                   ; 0xA1 - FREEZOR
|06879F| dw SpritePrep_Kholdstare                    ; 0xA2 - KHOLDSTARE
|0687A1| dw SpritePrep_KholdstareShell               ; 0xA3 - KHOLDSTARE SHELL
|0687A3| dw SpritePrep_FallingIce                    ; 0xA4 - FALLING ICE
|0687A5| dw SpritePrep_DoNothingE                    ; 0xA5 - BLUE ZAZAK
|0687A7| dw SpritePrep_DoNothingE                    ; 0xA6 - RED ZAZAK
|0687A9| dw SpritePrep_Stalfos                       ; 0xA7 - STALFOS
|0687AB| dw SpritePrep_Zirro                         ; 0xA8 - GREEN ZIRRO
|0687AD| dw SpritePrep_Zirro                         ; 0xA9 - BLUE ZIRRO
|0687AF| dw SpritePrep_DoNothingC                    ; 0xAA - PIKIT
|0687B1| dw SpritePrep_DoNothingH                    ; 0xAB - CRYSTAL MAIDEN
|0687B3| dw SpritePrep_OverworldBonkItem             ; 0xAC - APPLE
|0687B5| dw SpritePrep_OldMan_bounce                 ; 0xAD - OLD MAN
|0687B7| dw SpritePrep_DoNothingA                    ; 0xAE - PIPE DOWN
|0687B9| dw SpritePrep_DoNothingA                    ; 0xAF - PIPE UP
|0687BB| dw SpritePrep_DoNothingA                    ; 0xB0 - PIPE RIGHT
|0687BD| dw SpritePrep_DoNothingA                    ; 0xB1 - PIPE LEFT
|0687BF| dw SpritePrep_GoodBee                       ; 0xB2 - GOOD BEE
|0687C1| dw SpritePrep_PedestalPlaque                ; 0xB3 - PEDESTAL PLAQUE
|0687C3| dw SpritePrep_PurpleChest                   ; 0xB4 - PURPLE CHEST
|0687C5| dw SpritePrep_BombShop                      ; 0xB5 - BOMB SHOP GUY
|0687C7| dw SpritePrep_Kiki                          ; 0xB6 - KIKI
|0687C9| dw SpritePrep_BlindMaiden                   ; 0xB7 - BLIND MAIDEN
|0687CB| dw SpritePrep_DoNothingA                    ; 0xB8 - DIALOGUE TESTER
|0687CD| dw SpritePrep_BullyAndVictim                ; 0xB9 - BULLY / PINK BALL
|0687CF| dw SpritePrep_Whirlpool                     ; 0xBA - WHIRLPOOL
|0687D1| dw SpritePrep_Shopkeeper                    ; 0xBB - SHOPKEEPER / CHEST GAME GUY
|0687D3| dw SpritePrep_IgnoreProjectiles             ; 0xBC - DRUNKARD
|0687D5| dw SpritePrep_Vitreous                      ; 0xBD - VITREOUS
|0687D7| dw SpritePrep_MiniVitreous                  ; 0xBE - VITREOUS SMALL EYE
|0687D9| dw SpritePrep_DoNothingA                    ; 0xBF - LIGHTNING
|0687DB| dw SpritePrep_Catfish                       ; 0xC0 - CATFISH
|0687DD| dw SpritePrep_CutsceneAgahnim               ; 0xC1 - CUTSCENE AGAHNIM
|0687DF| dw SpritePrep_DoNothingA                    ; 0xC2 - BOULDER
|0687E1| dw SpritePrep_Gibo                          ; 0xC3 - GIBO
|0687E3| dw SpritePrep_DoNothingA                    ; 0xC4 - THIEF
|0687E5| dw SpritePrep_IgnoreProjectiles             ; 0xC5 - MEDUSA
|0687E7| dw SpritePrep_IgnoreProjectiles             ; 0xC6 - YOMO MEDUSA
|0687E9| dw SpritePrep_Pokey                         ; 0xC7 - POKEY
|0687EB| dw SpritePrep_BigFairy                      ; 0xC8 - BIG FAIRY
|0687ED| dw SpritePrep_Tektite                       ; 0xC9 - TEKTITE / FIREBAT
|0687EF| dw SpritePrep_Chainchomp_bounce             ; 0xCA - CHAIN CHOMP
|0687F1| dw SpritePrep_Trinexx                       ; 0xCB - TRINEXX ROCK HEAD
|0687F3| dw SpritePrep_Trinexx                       ; 0xCC - TRINEXX FIRE HEAD
|0687F5| dw SpritePrep_Trinexx                       ; 0xCD - TRINEXX ICE HEAD
|0687F7| dw SpritePrep_Blind                         ; 0xCE - BLIND
|0687F9| dw SpritePrep_Swamola                       ; 0xCF - SWAMOLA
|0687FB| dw SpritePrep_DoNothingA                    ; 0xD0 - LYNEL
|0687FD| dw SpritePrep_DoNothingA                    ; 0xD1 - BUNNYBEAM / SMOKE
|0687FF| dw SpritePrep_IgnoreProjectiles             ; 0xD2 - FLOPPING FISH
|068801| dw SpritePrep_RockStal                      ; 0xD3 - STAL
|068803| dw SpritePrep_IgnoreProjectiles             ; 0xD4 - LANDMINE
|068805| dw SpritePrep_DiggingGameGuy_bounce         ; 0xD5 - DIGGING GAME GUY
|068807| dw SpritePrep_Ganon                         ; 0xD6 - GANON
|068809| dw SpritePrep_Ganon                         ; 0xD7 - GANON
|06880B| dw SpritePrep_Absorbable                    ; 0xD8 - HEART
|06880D| dw SpritePrep_Absorbable                    ; 0xD9 - GREEN RUPEE
|06880F| dw SpritePrep_Absorbable                    ; 0xDA - BLUE RUPEE
|068811| dw SpritePrep_Absorbable                    ; 0xDB - RED RUPEE
|068813| dw SpritePrep_Absorbable                    ; 0xDC - BOMB REFILL 1
|068815| dw SpritePrep_Absorbable                    ; 0xDD - BOMB REFILL 4
|068817| dw SpritePrep_Absorbable                    ; 0xDE - BOMB REFILL 8
|068819| dw SpritePrep_Absorbable                    ; 0xDF - SMALL MAGIC DECANTER
|06881B| dw SpritePrep_Absorbable                    ; 0xE0 - LARGE MAGIC DECANTER
|06881D| dw SpritePrep_Absorbable                    ; 0xE1 - ARROW REFILL 5
|06881F| dw SpritePrep_Absorbable                    ; 0xE2 - ARROW REFILL 10
|068821| dw SpritePrep_Fairy                         ; 0xE3 - FAIRY
|068823| dw SpritePrep_SmallKey                      ; 0xE4 - SMALL KEY
|068825| dw SpritePrep_BigKey                        ; 0xE5 - BIG KEY
|068827| dw SpritePrep_DoNothingF                    ; 0xE6 - STOLEN SHIELD
|068829| dw SpritePrep_Mushroom_bounce               ; 0xE7 - MUSHROOM
|06882B| dw SpritePrep_FakeMasterSword_bounce        ; 0xE8 - FAKE MASTER SWORD
|06882D| dw SpritePrep_MagicShopAssistant_bounce     ; 0xE9 - MAGIC SHOP ASSISTANT
|06882F| dw SpritePrep_HeartContainer_bounce         ; 0xEA - HEART CONTAINER
|068831| dw SpritePrep_HeartPiece                    ; 0xEB - HEART PIECE
|068833| dw SpritePrep_DoNothingI                    ; 0xEC - THROWN ITEM
|068835| dw SpritePrep_DoNothingA                    ; 0xED - SOMARIA PLATFORM
|068837| dw SpritePrep_Mantle                        ; 0xEE - CASTLE MANTLE
|068839| dw SpritePrep_DoNothingA                    ; 0xEF - UNUSED SOMARIA PLATFORM
|06883B| dw SpritePrep_DoNothingA                    ; 0xF0 - UNUSED SOMARIA PLATFORM
|06883D| dw SpritePrep_DoNothingA                    ; 0xF1 - UNUSED SOMARIA PLATFORM
|06883F| dw SpritePrep_MedallionTablet_bounce        ; 0xF2 - MEDALLION TABLET

;===================================================================================================
; Moves 3 pixels down and 8 pixels right
;===================================================================================================
SpritePrep_Mantle:
|068841| LDA.w $0D00,X
|068844| CLC
|068845| ADC.b #$03
|068847| STA.w $0D00,X

;===================================================================================================
; It does what it says
;===================================================================================================
SpritePrep_MoveRight8px:
|06884A| LDA.w $0D10,X
|06884D| CLC
|06884E| ADC.b #$08
|068850| STA.w $0D10,X

|068853| RTS

;===================================================================================================

SpritePrep_MedallionTablet_bounce:
|068854| JSL SpritePrep_MedallionTablet

|068858| RTS

;===================================================================================================
; Checks room ID for rooms that need to be tongue switches
;===================================================================================================
SpritePrep_Switch:
|068859| LDA.w $048E

; ice palace pre-kholdstare
|06885C| CMP.b #$CE ; ROOM 00CE
|06885E| BEQ .tongue_room

; turtle rock rupees
|068860| CMP.b #$04 ; ROOM 0004
|068862| BEQ .tongue_room

; ice palace HP
|068864| CMP.b #$3F ; ROOM 003F
|068866| BNE SpritePrep_DoNothingB

.tongue_room
|068868| LDA.b #$0D
|06886A| STA.w $0F50,X

;===================================================================================================
; Appears to do nothing
;===================================================================================================
SpritePrep_DoNothingB:
|06886D| RTS

;===================================================================================================
; Why are there so many of these? wtf
;===================================================================================================
SpritePrep_Snitch_bounce_1:
|06886E| JSL SpritePrep_Snitch

|068872| RTS

;===================================================================================================
; I'll need to investigate this in full later.
;===================================================================================================
SpritePrep_DoNothingA:
|068873| RTS

;===================================================================================================
; Changes behavior based on world ID
;===================================================================================================
pool SpritePrep_Rat

.damage
|068874| db $00, $05

.hp
|068876| db   2,   8

endpool

;---------------------------------------------------------------------------------------------------

SpritePrep_Rat:
|068878| LDY.w $0FFF

|06887B| LDA.w .damage,Y
|06887E| STA.w $0CD2,X

|068881| LDA.w .hp,Y
|068884| STA.w $0E50,X

|068887| RTS

;===================================================================================================
; Changes behavior based on world ID
;===================================================================================================
pool SpritePrep_Keese

.damage
|068888| db $80, $85

.hp
|06888A| db   1,   4

.prizepack
|06888C| db $00, $07

endpool

;---------------------------------------------------------------------------------------------------

SpritePrep_Keese:
|06888E| LDY.w $0FFF

|068891| LDA.w .damage,Y
|068894| STA.w $0CD2,X

|068897| LDA.w .hp,Y
|06889A| STA.w $0E50,X

|06889D| LDA.w .prizepack,Y
|0688A0| STA.w $0BE0,X

|0688A3| RTS

;===================================================================================================
; SNAKES
;===================================================================================================
pool SpritePrep_Rope

.damage
|0688A4| db $01, $05

.hp
|0688A6| db   4,   8

.prizepack
|0688A8| db $01, $07

endpool

;---------------------------------------------------------------------------------------------------

SpritePrep_Rope:
|0688AA| LDY.w $0FFF

|0688AD| LDA.w .damage,Y
|0688B0| STA.w $0CD2,X

|0688B3| LDA.w .hp,Y
|0688B6| STA.w $0E50,X

|0688B9| LDA.w .prizepack,Y
|0688BC| STA.w $0BE0,X

|0688BF| RTS

;===================================================================================================

SpritePrep_Swamola:
|0688C0| JSL InitializeSwamolaSegments

|0688C4| JMP.w SpritePrep_CacheOriginalCoordinates

;===================================================================================================

SpritePrep_Blind:
|0688C7| JSR SpritePrep_Boss
|0688CA| JSL SpritePrep_Blind_PrepareBattle

|0688CE| RTS

;===================================================================================================

SpritePrep_Ganon:
|0688CF| JSR SpritePrep_Boss
|0688D2| JSL SpritePrep_Ganon_PrepareBattle

|0688D6| RTS

;===================================================================================================

pool SpritePrep_Pokey

.speed_x
|0688D7| db  16, -16,  16, -16

.speed_y
|0688DB| db  16,  16, -16, -16

endpool

;---------------------------------------------------------------------------------------------------

SpritePrep_Pokey:
|0688DF| LDA.b #$03
|0688E1| STA.w $0D90,X

|0688E4| LDA.b #$08
|0688E6| STA.w $0DA0,X

|0688E9| JSL GetRandomNumber
|0688ED| AND.b #$03
|0688EF| TAY

|0688F0| LDA.w .speed_x,Y
|0688F3| STA.w $0D50,X

|0688F6| LDA.w .speed_y,Y
|0688F9| STA.w $0D40,X

|0688FC| RTS

;===================================================================================================
; Coulda saved 4 bytes here
; for shame
;===================================================================================================
SpritePrep_MiniVitreous:
|0688FD| JSR SpritePrep_Boss

|068900| RTS

;===================================================================================================
; Make it float and initialize its thing
;===================================================================================================
SpritePrep_Gibo:
|068901| LDA.b #$10
|068903| STA.w $0F70,X

|068906| LDA.b #$08
|068908| STA.w $0ED0,X

|06890B| RTS

;===================================================================================================
; Has different timers based on sprite slot
; despite the fact that there's only one of these in the entire game
;===================================================================================================
pool SpritePrep_Octoballoon

.timer
|06890C| db 192,  208,  224,  240

endpool

;---------------------------------------------------------------------------------------------------

SpritePrep_Octoballoon:
|068910| TXA ; why...?
|068911| AND.b #$03
|068913| TAY

|068914| LDA.w .timer,Y
|068917| STA.w $0DF0,X

|06891A| RTS

;===================================================================================================
; Destroys barrier if it's been destroyed
; moves it up 4 pixels and right 8 pixels
; Ignores projectiles
;===================================================================================================
SpritePrep_LightningGate:
|06891B| PHX

|06891C| LDX.b $8A

|06891E| LDA.l $7EF280,X

|068922| PLX

|068923| AND.b #$40
|068925| BEQ SpritePrep_Catfish

|068927| LDA.b #$04
|068929| STA.w $0DC0,X

;===================================================================================================
; Moves catfish up by 4 pixels and right 8 pixels
;===================================================================================================
SpritePrep_Catfish:
|06892C| JSR SpritePrep_MoveDown8pxRight8px

|06892F| LDA.w $0D00,X
|068932| SEC
|068933| SBC.b #$0C
|068935| STA.w $0D00,X

|068938| JMP.w SpritePrep_IgnoreProjectiles

;===================================================================================================
; Kills Aga if cutscene has been viewed
; Prepares cutscene if it hasn't
;===================================================================================================
SpritePrep_CutsceneAgahnim:
|06893B| LDA.w $0403
|06893E| AND.b #$40
|068940| BEQ .not_seen_cutscene

|068942| STZ.w $0DD0,X

|068945| RTS

.not_seen_cutscene
|068946| JSL CutsceneAgahnim_SpawnZeldaOnAltar

|06894A| JMP.w SpritePrep_IgnoreProjectiles

;===================================================================================================
; Movies up a net of 8 pixels. Just use the MoveRight_8px next time.
;===================================================================================================
SpritePrep_Vitreous:
|06894D| JSR SpritePrep_Boss
|068950| JSR SpritePrep_MoveDown8pxRight8px

|068953| LDA.w $0D00,X
|068956| SEC
|068957| SBC.b #$10
|068959| STA.w $0D00,X

|06895C| JSL Vitreous_SpawnMinions

|068960| JMP.w SpritePrep_IgnoreProjectiles

;===================================================================================================
; Swaps stats based on world ID
; Bleeds into vulture prep
;===================================================================================================
pool SpritePrep_Raven

.damage
|068963| db $81, $88

.hp
|068965| db $04, $08

.prize_pack
|068967| db $06, $02

endpool

;---------------------------------------------------------------------------------------------------

SpritePrep_Raven:
|068969| LDY.w $0FFF

|06896C| LDA.w .damage,Y
|06896F| STA.w $0CD2,X

|068972| LDA.w .hp,Y
|068975| STA.w $0E50,X

|068978| LDA.w .prize_pack,Y
|06897B| STA.w $0BE0,X

;===================================================================================================

SpritePrep_Vulture:
|06897E| LDA.b #$00
|068980| STA.w $0F70,X

|068983| LDA.w $0D10,X
|068986| AND.b #$10
|068988| LSR A
|068989| LSR A
|06898A| LSR A
|06898B| LSR A
|06898C| STA.w $0D90,X

|06898F| BRA SpritePrep_SetAuxToFE

;===================================================================================================

SpritePrep_Poe:
|068991| LDA.b #$0C
|068993| STA.w $0F70,X

;===================================================================================================

SpritePrep_SetAuxToFE:
|068996| LDA.b #$FE
|068998| STA.w $0E30,X

;===================================================================================================
; This routine differs greatly from the JP1.0 version of Super Mario World
; on account of that being a completely different game.
;===================================================================================================
SpritePrep_DoNothingC:
|06899B| RTS

;===================================================================================================

SpritePrep_BlindMaiden:
|06899C| LDA.l $7EF159 ; Check boss room flag
|0689A0| AND.b #$08
|0689A2| BNE .kill_the_girl

|0689A4| INC.w $0BA0,X

|0689A7| LDA.l $7EF3CC
|0689AB| CMP.b #$00
|0689AD| BNE .kill_the_girl

|0689AF| LDA.b #$06 ; FOLLOWER 06
|0689B1| STA.l $7EF3CC

|0689B5| PHX

|0689B6| STZ.w $02F9

|0689B9| JSL LoadFollowerGraphics
|0689BD| JSL InitializeFollower

|0689C1| PLX

|0689C2| LDA.b #$00
|0689C4| STA.l $7EF3CC

|0689C8| RTS

.kill_the_girl
|0689C9| STZ.w $0DD0,X

|0689CC| RTS

;===================================================================================================

SpritePrep_MiniMoldorm_bounce:
|0689CD| JSL SpritePrep_MiniMoldorm

|0689D1| RTS

;===================================================================================================
; Makes them float
;===================================================================================================
SpritePrep_Zirro:
|0689D2| LDA.b #$10
|0689D4| STA.w $0F70,X

|0689D7| BRA SpritePrep_SetAuxToFE

;===================================================================================================

SpritePrep_BombShop:
|0689D9| INC.w $0BA0,X

|0689DC| LDA.b #$B5 ; SPRITE B5
|0689DE| JSL SpawnSpriteDynamically
|0689E2| BMI .no_space_to_spawn_OHNO

|0689E4| LDA.b $00
|0689E6| SEC
|0689E7| SBC.b #$18
|0689E9| STA.w $0D10,Y

|0689EC| LDA.b $01
|0689EE| SBC.b #$00
|0689F0| STA.w $0D30,Y

|0689F3| LDA.b $02
|0689F5| SEC
|0689F6| SBC.b #$18
|0689F8| STA.w $0D00,Y

|0689FB| LDA.b $03
|0689FD| SBC.b #$00
|0689FF| STA.w $0D20,Y

|068A02| LDA.b #$01
|068A04| STA.w $0E80,Y
|068A07| STA.w $0BA0,Y

;---------------------------------------------------------------------------------------------------

.no_space_to_spawn_OHNO
|068A0A| LDA.l $7EF37A ; check for crystals 5 and 6
|068A0E| AND.b #$05
|068A10| CMP.b #$05
|068A12| BNE .you_dont_deserve_the_big_bomb

|068A14| LDA.l $7EF3C9 ; check for dwarf rescue
|068A18| AND.b #$20
|068A1A| BEQ .you_dont_deserve_the_big_bomb

|068A1C| LDA.b #$B5 ; SPRITE B5
|068A1E| JSL SpawnSpriteDynamically
|068A22| BMI .you_dont_deserve_the_big_bomb

|068A24| LDA.b $00
|068A26| SEC
|068A27| SBC.b #$38
|068A29| STA.w $0D10,Y

|068A2C| LDA.b $01
|068A2E| SBC.b #$00
|068A30| STA.w $0D30,Y

|068A33| LDA.b $02
|068A35| SEC
|068A36| SBC.b #$18
|068A38| STA.w $0D00,Y

|068A3B| LDA.b $03
|068A3D| SBC.b #$00
|068A3F| STA.w $0D20,Y

|068A42| LDA.b #$02
|068A44| STA.w $0E80,Y
|068A47| STA.w $0BA0,Y

.you_dont_deserve_the_big_bomb
|068A4A| RTS

;===================================================================================================

SpritePrep_BullyAndVictim:
|068A4B| JSL SpawnBully

|068A4F| INC.w $0BA0,X

|068A52| RTS

;===================================================================================================

SpritePrep_PurpleChest:
|068A53| LDA.l $7EF3CC
|068A57| CMP.b #$0C ; FOLLOWER 0C
|068A59| BEQ NoFriendForYou

|068A5B| LDA.l $7EF3C9
|068A5F| AND.b #$10
|068A61| BNE NoFriendForYou

|068A63| LDA.l $7EF3C9
|068A67| AND.b #$20
|068A69| BEQ NoFriendForYou

|068A6B| INC.w $0BA0,X

|068A6E| RTS

;===================================================================================================

NoFriendForYou:
|068A6F| STZ.w $0DD0,X

|068A72| RTS

;===================================================================================================

SpritePrep_Smithy:
|068A73| INC.w $0BA0,X

|068A76| LDA.l $7EF3CA
|068A7A| AND.b #$40
|068A7C| BEQ .in_light_world

|068A7E| LDA.l $7EF3C9 ; check for dwarf rescue
|068A82| AND.b #$20
|068A84| BNE NoFriendForYou

|068A86| LDA.l $7EF3CC
|068A8A| CMP.b #$00 ; 2 bytes down the drain
|068A8C| BNE NoFriendForYou

|068A8E| LDA.b #$02
|068A90| STA.w $0E80,X

|068A93| RTS

;---------------------------------------------------------------------------------------------------

.in_light_world
|068A94| JSL SpawnDumbBarrierSprite

|068A98| LDA.l $7EF3C9 ; check for dwarf rescue
|068A9C| AND.b #$20
|068A9E| BNE .rescued

|068AA0| LDA.w $0D10,X
|068AA3| CLC
|068AA4| ADC.b #$02
|068AA6| STA.w $0D10,X

|068AA9| LDA.w $0D00,X
|068AAC| SEC
|068AAD| SBC.b #$03
|068AAF| STA.w $0D00,X

|068AB2| RTS

;---------------------------------------------------------------------------------------------------

.rescued
|068AB3| LDA.w $0D10,X
|068AB6| CLC
|068AB7| ADC.b #$02
|068AB9| STA.w $0D10,X

|068ABC| LDA.w $0D00,X
|068ABF| SEC
|068AC0| SBC.b #$03
|068AC2| STA.w $0D00,X

|068AC5| JSR Smithy_SpawnDwarfPal

|068AC8| PHX
|068AC9| PHY

|068ACA| TYX
|068ACB| JSL SpawnDumbBarrierSprite

|068ACF| PLY
|068AD0| PLX

|068AD1| TYA
|068AD2| STA.w $0E90,X

|068AD5| TXA
|068AD6| STA.w $0E90,Y

|068AD9| LDA.l $7EF3C9
|068ADD| AND.b #$80
|068ADF| BEQ .exit

|068AE1| LDA.b #$05
|068AE3| STA.w $0D80,X
|068AE6| STA.w $0D80,Y

.exit
|068AE9| RTS

;===================================================================================================

SpritePrep_Babasu:
|068AEA| JSR SpritePrep_MoveDown8px

;===================================================================================================
; Sprite ID determines subtype.
;===================================================================================================
SpritePrep_Zoro:
|068AED| LDA.w $0E20,X
|068AF0| SEC
|068AF1| SBC.b #$9C ; SPRITE 9C
|068AF3| ASL A
|068AF4| STA.w $0DE0,X

|068AF7| DEC.w $0DC0,X

|068AFA| RTS

;===================================================================================================

UNREACHABLE_068AFB:
|068AFB| db $F8, $08

;===================================================================================================

SpritePrep_LaserEye_bounce:
|068AFD| JSL SpritePrep_LaserEye

|068B01| RTS

;===================================================================================================

SpritePrep_Popo:
|068B02| LDA.b #$07
|068B04| BRA .set_movement_mask

;===================================================================================================

#SpritePrep_Popo2:
|068B06| LDA.b #$0F

;===================================================================================================

.set_movement_mask
|068B08| STA.w $0DA0,X

|068B0B| RTS

;===================================================================================================
; Move down 7 pixels
;===================================================================================================
SpritePrep_Statue:
|068B0C| LDA.w $0D00,X
|068B0F| CLC
|068B10| ADC.b #$07
|068B12| STA.w $0D00,X

|068B15| RTS

;===================================================================================================
; Float 6 pixels high
; Make the ones before Kholdstare live under a rock
;===================================================================================================
SpritePrep_Bari:
|068B16| LDA.b #$06
|068B18| STA.w $0F70,X

; go under a rock in the room before khold
|068B1B| LDA.w $048E
|068B1E| CMP.b #$CE ; ROOM 00CE
|068B20| BNE .not_uninformed

|068B22| DEC.w $0DB0,X

.not_uninformed
|068B25| JMP.w Bari_RandomlySetTimer2

;===================================================================================================
; Make it float 9 pixels
;===================================================================================================
SpritePrep_GreenStalfos:
|068B28| LDA.b #$09
|068B2A| STA.w $0F70,X

|068B2D| RTS

;===================================================================================================
; Move down 5 pixels
;===================================================================================================
SpritePrep_WaterLever:
|068B2E| LDA.w $0D00,X
|068B31| CLC
|068B32| ADC.b #$05
|068B34| STA.w $0D00,X

|068B37| RTS

;===================================================================================================
; Sprite 63 becomes a blue debirando
; Sprite 64 becomes a red debirando
; Both are changed to 63 then spawn sprite 64
;===================================================================================================
SpritePrep_Debirando:
|068B38| LDA.b #$63 ; SPRITE 63
|068B3A| STA.w $0E20,X

|068B3D| JSL LoadSpriteProperties
|068B41| DEC.w $0ED0,X

;===================================================================================================

SpritePrep_DebirandoPit:
|068B44| INC.w $0ED0,X

|068B47| LDA.b #$00
|068B49| STA.w $0DF0,X

|068B4C| LDA.b #$06
|068B4E| STA.w $0DC0,X

|068B51| JSR SpritePrep_IgnoreProjectiles

|068B54| LDA.b #$64 ; SPRITE 64
|068B56| JSL SpawnSpriteDynamically
|068B5A| BMI .no_space

|068B5C| JSL SetSpawnedSpriteCoordinates

|068B60| LDA.b #$60
|068B62| STA.w $0DF0,Y

; get parent slot
|068B65| TYA
|068B66| STA.w $0EB0,X

|068B69| LDA.w $0ED0,X
|068B6C| STA.w $0ED0,Y

|068B6F| PHX

|068B70| TAX

|068B71| LDA.w .palette,X
|068B74| STA.w $0F50,Y

|068B77| PLX

.no_space
|068B78| RTS

;---------------------------------------------------------------------------------------------------

.palette
|068B79| db $06, $08

;===================================================================================================
; Puny dagger man
;===================================================================================================
SpritePrep_WeakGuard:
|068B7B| JSL GetRandomNumber
|068B7F| AND.b #$03
|068B81| STA.w $0DE0,X
|068B84| STA.w $0EB0,X

|068B87| LDA.b #$10
|068B89| STA.w $0DF0,X

|068B8C| RTS

;===================================================================================================
; Use sprite ID to determine direction and character.
;===================================================================================================
SpritePrep_WallCannon:
|068B8D| LDA.w $0E20,X
|068B90| SEC
|068B91| SBC.b #$66 ; SPRITE 66 - base wall cannon ID
|068B93| STA.w $0DE0,X

|068B96| AND.b #$02
|068B98| STA.w $0D90,X

|068B9B| RTS

;===================================================================================================

SpritePrep_ArcheryGame_bounce:
|068B9C| JSL SpritePrep_ArcheryGame

|068BA0| RTS

;===================================================================================================
; Ignore arrows and stuff
;===================================================================================================
SpritePrep_IgnoreProjectiles:
|068BA1| INC.w $0BA0,X

|068BA4| RTS

;===================================================================================================
; If you have the flute, then the animals die.
;===================================================================================================
SpritePrep_HauntedGroveAnimal:
|068BA5| JSR GetXDisplacementFromLink

|068BA8| TYA
|068BA9| STA.w $0DE0,X

;===================================================================================================

SpritePrep_HauntedGroveOstrich:
|068BAC| LDA.l $7EF34C
|068BB0| CMP.b #$02
|068BB2| BCC .has_no_flute

|068BB4| STZ.w $0DD0,X

.has_no_flute
|068BB7| BRA SpritePrep_IgnoreProjectiles

;===================================================================================================

SpritePrep_DiggingGameGuy_bounce:
|068BB9| JSL SpritePrep_DiggingGameGuy

|068BBD| RTS

;===================================================================================================

SpritePrep_ThievesTownGrate:
; Check VoO screen for this being pulled already
|068BBE| LDA.l $7EF2D8
|068BC2| AND.b #$20
|068BC4| BEQ SpritePrep_RupeePull

|068BC6| STZ.w $0DD0,X

;===================================================================================================

SpritePrep_RupeePull:
|068BC9| INC.w $0BA0,X

|068BCC| LDA.w $0D10,X
|068BCF| SEC
|068BD0| SBC.b #$08
|068BD2| STA.w $0D10,X

|068BD5| LDA.w $0D30,X
|068BD8| SBC.b #$00
|068BDA| STA.w $0D30,X

|068BDD| RTS

;===================================================================================================

pool SpritePrep_Shopkeeper

.rooms
|068BDE| db $0F ; ROOM 010F - Darkworld Lumberjack / Outcasts shield shop
|068BDF| db $10 ; ROOM 0110 - East of Outcasts
|068BE0| db $00 ; ROOM 0100 - Lost Woods chest game
|068BE1| db $06 ; ROOM 0106 - Village of Outcasts chest game
|068BE2| db $18 ; ROOM 0118 - South of Kak 3 chest game
|068BE3| db $12 ; ROOM 0112 - Common cave shop
|068BE4| db $1E ; ROOM 011E - Swamplands thief cave
|068BE5| db $FF ; ROOM 00FF - Paradox cave shop
|068BE6| db $1F ; ROOM 011F - Kakariko shop
|068BE7| db $23 ; ROOM 0123 - Mini moldorm cave
|068BE8| db $24 ; ROOM 0124 - Outside Desert thief
|068BE9| db $25 ; ROOM 0125 - Ice rod cave thief
|068BEA| db $27 ; ROOM 0127 - Hammer pegs cave (nothing actually here)

endpool

;---------------------------------------------------------------------------------------------------

SpritePrep_Shopkeeper:
|068BEB| INC.w $0BA0,X

|068BEE| LDA.w $0E40,X
|068BF1| ORA.b #$02
|068BF3| STA.w $0E40,X

|068BF6| LDA.w $0F50,X
|068BF9| ORA.b #$0C
|068BFB| STA.w $0F50,X

|068BFE| LDA.w $0E60,X
|068C01| ORA.b #$10
|068C03| STA.w $0E60,X

|068C06| LDA.b $A0

|068C08| LDY.b #$00

.next_room
|068C0A| CMP.w .rooms,Y
|068C0D| BEQ .found_room

|068C0F| INY
|068C10| BNE .next_room

;---------------------------------------------------------------------------------------------------

.found_room
|068C12| TYA
|068C13| JSL JumpTableLocal
|068C17| dw SpritePrep_Shopkeeper_DarkWorldStock
|068C19| dw SpritePrep_Shopkeeper_EastOfOutcasts
|068C1B| dw SpritePrep_LostWoodsChestGame
|068C1D| dw SpritePrep_ChestGameGuy
|068C1F| dw SpritePrep_KakChestGame
|068C21| dw SpritePrep_Shopkeeper_StandardStock
|068C23| dw SpritePrep_NiceThief_WithGift
|068C25| dw SpritePrep_Shopkeeper_StandardStock
|068C27| dw SpritePrep_Shopkeeper_StandardStock
|068C29| dw SpritePrep_NiceThief_WithGift
|068C2B| dw SpritePrep_NiceThief_Desert
|068C2D| dw SpritePrep_NiceThief_Ice
|068C2F| dw SpritePrep_NiceThief_WithGift

;===================================================================================================

SpritePrep_Shopkeeper_DarkWorldStock:
|068C31| LDA.b #$00
|068C33| LDY.b #$07 ; Red potion
|068C35| JSL Shopkeeper_SpawnShopItem

|068C39| LDA.b #$01
|068C3B| LDY.b #$08 ; Fighter shield
|068C3D| JSL Shopkeeper_SpawnShopItem

|068C41| LDA.b #$02
|068C43| LDY.b #$0C ; Bombs
|068C45| JSL Shopkeeper_SpawnShopItem

|068C49| RTS

;===================================================================================================

SpritePrep_Shopkeeper_EastOfOutcasts:
|068C4A| LDA.b #$00
|068C4C| LDY.b #$09 ; Fire shield
|068C4E| JSL Shopkeeper_SpawnShopItem

|068C52| LDA.b #$01
|068C54| LDY.b #$0D ; Bee
|068C56| JSL Shopkeeper_SpawnShopItem

|068C5A| LDA.b #$02
|068C5C| LDY.b #$0B ; Arrows
|068C5E| JSL Shopkeeper_SpawnShopItem

|068C62| RTS

;===================================================================================================

SpritePrep_LostWoodsChestGame:
|068C63| LDA.b #$04

|068C65| BRA SpritePrep_Shopkeeper_SetType

;===================================================================================================

SpritePrep_ChestGameGuy:
|068C67| LDA.b #$01
|068C69| STA.w $0DC0,X

|068C6C| BRA SpritePrep_Shopkeeper_SetType

;===================================================================================================

SpritePrep_KakChestGame:
|068C6E| LDA.b #$03

;---------------------------------------------------------------------------------------------------

SpritePrep_Shopkeeper_SetType:
|068C70| STA.w $0E80,X

|068C73| LDA.b #$FF
|068C75| STA.w $04C4

|068C78| RTS

;===================================================================================================

SpritePrep_Shopkeeper_StandardStock:
|068C79| LDA.b #$00
|068C7B| LDY.b #$07 ; Red potion
|068C7D| JSL Shopkeeper_SpawnShopItem

|068C81| LDA.b #$01
|068C83| LDY.b #$0A ; Heart
|068C85| JSL Shopkeeper_SpawnShopItem

|068C89| LDA.b #$02
|068C8B| LDY.b #$0C ; Bombs
|068C8D| JSL Shopkeeper_SpawnShopItem

|068C91| RTS

;===================================================================================================

SpritePrep_NiceThief_WithGift:
|068C92| LDA.b #$02

;===================================================================================================

SpritePrep_NiceThief_SetType:
|068C94| STA.w $0E80,X

|068C97| RTS

;===================================================================================================

SpritePrep_NiceThief_Desert:
|068C98| LDA.b #$05

|068C9A| BRA SpritePrep_NiceThief_SetType

;===================================================================================================

SpritePrep_NiceThief_Ice:
|068C9C| LDA.b #$06

|068C9E| BRA SpritePrep_NiceThief_SetType

;===================================================================================================

pool SpritePrep_DarkWorldHintNPC

.rooms
|068CA0| db $0E ; ROOM 010E - bird
|068CA1| db $0E ; ROOM 010E - glover
|068CA2| db $12 ; ROOM 0112 - octorok
|068CA3| db $1A ; ROOM 011A - broccoli
|068CA4| db $14 ; ROOM 0114 - watto

endpool

;---------------------------------------------------------------------------------------------------

SpritePrep_DarkWorldHintNPC:
|068CA5| INC.w $0BA0,X

|068CA8| LDA.b $A0

|068CAA| LDY.b #$00

.next_room
|068CAC| CMP.w .rooms,Y
|068CAF| BEQ .found_room

|068CB1| INY
|068CB2| BNE .next_room

;---------------------------------------------------------------------------------------------------

.found_room
|068CB4| TYA
|068CB5| STA.w $0E80,X
|068CB8| BNE .exit

|068CBA| LDA.w $0D30,X
|068CBD| AND.b #$01
|068CBF| BEQ .exit

|068CC1| INC.w $0E80,X

.exit
|068CC4| RTS

;===================================================================================================

pool SpritePrep_Adult

.rooms
|068CC5| db $03 ; ROOM 0103 - Kakariko Tavern
|068CC6| db $E1 ; ROOM 00E1 - Lost Woods hideout
|068CC7| db $19 ; ROOM 0119 - Blind's Hideout

endpool

;---------------------------------------------------------------------------------------------------

SpritePrep_Adult:
|068CC8| INC.w $0BA0,X

|068CCB| LDA.b $A0

|068CCD| LDY.b #$00

.next_room
|068CCF| CMP.w .rooms,Y
|068CD2| BEQ .found_room

|068CD4| INY
|068CD5| BNE .next_room

.found_room
|068CD7| TYA
|068CD8| STA.w $0E80,X

|068CDB| RTS

;===================================================================================================

SpritePrep_Whirlpool:
|068CDC| INC.w $0BA0,X

|068CDF| LDA.b #$01
|068CE1| STA.w $0D90,X

|068CE4| RTS

;===================================================================================================

SpritePrep_Sage:
|068CE5| INC.w $0BA0,X

|068CE8| LDA.b $A0
|068CEA| CMP.b #$0A ; ROOM 010A
|068CEC| BNE .not_aginah

|068CEE| INC.w $0E80,X

|068CF1| LDA.b #$0B
|068CF3| STA.w $0F50,X

.not_aginah
|068CF6| RTS

;===================================================================================================

pool SpritePrep_BonkKey

.room_flags
|068CF7| db $40, $20

endpool

;---------------------------------------------------------------------------------------------------

SpritePrep_BonkItem:
|068CF9| LDA.b $1B
|068CFB| BEQ SpritePrep_LumberjackTree

|068CFD| LDA.b #$02
|068CFF| STA.w $0F20,X

; Check if library
|068D02| LDA.b $A0
|068D04| CMP.b #$07 ; ROOM 0107
|068D06| BNE SpritePrep_BonkKey

|068D08| LDA.b $A1
|068D0A| CMP.b #$01
|068D0C| BNE SpritePrep_BonkKey

;===================================================================================================

SpritePrep_BonkBook:
|068D0E| LDA.l $7EF34E
|068D12| BEQ .book_not_owned

|068D14| STZ.w $0DD0,X

|068D17| RTS

.book_not_owned
|068D18| PHX

|068D19| LDA.b #$0E
|068D1B| JSL WriteTo4BPPBuffer_item_gfx

|068D1F| PLX

|068D20| RTS

;===================================================================================================

SpritePrep_BonkKey:
|068D21| LDA.w $0B9B
|068D24| STA.w $0CBA,X

|068D27| TAY

|068D28| INC.w $0B9B

|068D2B| LDA.w $0403
|068D2E| AND.w .room_flags,Y
|068D31| BEQ .not_obtained

|068D33| STZ.w $0DD0,X

.not_obtained
|068D36| INC.w $0DC0,X

|068D39| LDA.b #$08
|068D3B| STA.w $0F50,X

|068D3E| LDA.w $0E60,X
|068D41| ORA.b #$20
|068D43| STA.w $0E60,X

|068D46| RTS

;===================================================================================================

SpritePrep_LumberjackTree:
|068D47| LDA.b #$02
|068D49| STA.w $0DC0,X

|068D4C| RTS

;===================================================================================================
; Check screen flags to see if POD is already open
;===================================================================================================
SpritePrep_Kiki:
|068D4D| INC.w $0BA0,X

|068D50| PHX

|068D51| LDX.b $8A
|068D53| LDA.l $7EF280,X

|068D57| PLX

|068D58| AND.b #$20
|068D5A| BEQ .monkey_lives

|068D5C| STZ.w $0DD0,X

.monkey_lives
|068D5F| RTS

;===================================================================================================

SpritePrep_Locksmith:
|068D60| INC.w $0BA0,X

|068D63| LDA.l $7EF3CC
|068D67| CMP.b #$09 ; FOLLOWER 09
|068D69| BNE .not_already_following

|068D6B| STZ.w $0DD0,X

|068D6E| RTS

;---------------------------------------------------------------------------------------------------

.not_already_following
|068D6F| CMP.b #$0C ; FOLLOWER 0C
|068D71| BNE .no_purple_chest

|068D73| LDA.b #$02
|068D75| STA.w $0D80,X

.no_purple_chest
|068D78| LDA.l $7EF3C9
|068D7C| AND.b #$10
|068D7E| BEQ .exit

|068D80| LDA.b #$04
|068D82| STA.w $0D80,X

.exit
|068D85| RTS

;===================================================================================================
; Set up AI based on net ownership
;===================================================================================================
SpritePrep_SickKid:
|068D86| LDA.l $7EF34D
|068D8A| BEQ .no_net

|068D8C| LDA.b #$03
|068D8E| STA.w $0D80,X

.no_net
|068D91| INC.w $0BA0,X

|068D94| RTS

;===================================================================================================

pool SpritePrep_Tektite

.palette
|068D95| db $09, $07

.health
|068D97| db   8,  12

.damage
|068D99| db $03, $05

endpool

;---------------------------------------------------------------------------------------------------

SpritePrep_Tektite:
|068D9B| LDA.w $0D10,X

|068D9E| LSR A
|068D9F| LSR A
|068DA0| LSR A
|068DA1| LSR A

|068DA2| AND.b #$01
|068DA4| STA.w $0D90,X

|068DA7| TAY

|068DA8| LDA.w .palette,Y
|068DAB| STA.w $0F50,X

|068DAE| LDA.w .health,Y
|068DB1| STA.w $0E50,X

|068DB4| LDA.w .damage,Y
|068DB7| STA.w $0CD2,X

|068DBA| LDA.b #$10
|068DBC| JSR ApplySpeedTowardsLink

|068DBF| LDA.b #$20
|068DC1| STA.w $0F80,X

|068DC4| INC.w $0D80,X

|068DC7| RTS

;===================================================================================================

SpritePrep_Chainchomp_bounce:
|068DC8| JSL SpritePrep_Chainchomp

|068DCC| RTS

;===================================================================================================
; Make her floaty and move her and make her bulletproof
;===================================================================================================
SpritePrep_BigFairy:
|068DCD| LDA.b #$18
|068DCF| STA.w $0F70,X

|068DD2| JSR SpritePrep_MoveDown8pxRight8px

|068DD5| JMP.w SpritePrep_IgnoreProjectiles

;===================================================================================================
; Move her down and right 8 pixels even though there's already a routine for that
;===================================================================================================
SpritePrep_MrsSahasrahla:
|068DD8| LDA.w $0D00,X
|068DDB| CLC
|068DDC| ADC.b #$08
|068DDE| STA.w $0D00,X

;===================================================================================================
; Move them okay
;===================================================================================================
SpritePrep_MagicBat:
SpritePrep_Lumberjacks:
|068DE1| JSR SpritePrep_MoveRight8px

|068DE4| JMP.w SpritePrep_IgnoreProjectiles

;===================================================================================================
; JUST MOVE IT
;===================================================================================================
SpritePrep_FortuneTeller:
|068DE7| JSR SpritePrep_MoveDown8pxRight8px

|068DEA| INC.w $0BA0,X

|068DED| RTS

;===================================================================================================

pool SpritePrep_Leever

.palette
|068DEE| db $0A, $02

endpool

;---------------------------------------------------------------------------------------------------

SpritePrep_Leever:
|068DF0| LDA.w $0D10,X

|068DF3| LSR A
|068DF4| LSR A
|068DF5| LSR A
|068DF6| LSR A

|068DF7| AND.b #$01
|068DF9| STA.w $0D90,X

|068DFC| TAY

|068DFD| LDA.w .palette,Y
|068E00| STA.w $0F50,X

|068E03| RTS

;===================================================================================================
; WTF is this?
; hobo spawns a bunch of fires
; then makes sure they're all dead
; I think this was to force the hobo himself into slot 0...?
;===================================================================================================
SpritePrep_Hobo:
|068E04| LDY.b #$0F

.next_spawn
|068E06| PHY

|068E07| JSR SpawnBonusHobo

|068E0A| PLY

|068E0B| DEY
|068E0C| BNE .next_spawn

|068E0E| LDY.b #$0F

.next_check
|068E10| LDA.w $0E20,Y
|068E13| CMP.b #$2B ; SPRITE 2B
|068E15| BNE .kill_the_hobo

|068E17| LDA.b #$00
|068E19| STA.w $0DD0,Y

.kill_the_hobo
|068E1C| DEY
|068E1D| BNE .next_check

;---------------------------------------------------------------------------------------------------

|068E1F| JSR SpawnCampfire

; This pointless TXY seems to imply they would check all your bottles or something
|068E22| TXY

|068E23| LDA.l $7EF3C9
|068E27| AND.b #$01
|068E29| BEQ .can_give_bottle

|068E2B| LDA.b #$03
|068E2D| STA.w $0D80

.can_give_bottle
|068E30| TYX

|068E31| LDA.b #$01
|068E33| STA.w $0BA0

|068E36| RTS

;===================================================================================================
; Move down and right 6 pixels
;===================================================================================================
SpritePrep_MasterSword:
|068E37| LDA.w $0D10,X
|068E3A| CLC
|068E3B| ADC.b #$06
|068E3D| STA.w $0D10,X

|068E40| LDA.w $0D00,X
|068E43| ADC.b #$06
|068E45| STA.w $0D00,X

|068E48| RTS

;===================================================================================================

SpritePrep_Roller_HorizontalRightFirst:
|068E49| LDY.b #$00
|068E4B| BRA .get_x_position

;---------------------------------------------------------------------------------------------------

#SpritePrep_Roller_HorizontalLeftFirst:
|068E4D| LDY.b #$01

.get_x_position
|068E4F| LDA.w $0D10,X
|068E52| EOR.b #$10

|068E54| BRA SpritePrep_Roller

;===================================================================================================

SpritePrep_Roller_VerticalDownFirst:
|068E56| LDY.b #$02
|068E58| BRA .get_y_position

;---------------------------------------------------------------------------------------------------

#SpritePrep_Roller_VerticalUpFirst:
|068E5A| LDY.b #$03

.get_y_position
|068E5C| LDA.w $0D00,X

;===================================================================================================

SpritePrep_Roller:
|068E5F| AND.b #$10

|068E61| LSR A
|068E62| LSR A
|068E63| LSR A
|068E64| LSR A

|068E65| STA.w $0D80,X

|068E68| BEQ .leave_hitbox

|068E6A| INC.w $0F60,X

.leave_hitbox
|068E6D| TYA
|068E6E| STA.w $0DE0,X

|068E71| RTS

;===================================================================================================
; Move right 4 pixels
; Move up 5 pixels
;===================================================================================================
SpritePrep_Kodongo:
|068E72| LDA.w $0D10,X
|068E75| CLC
|068E76| ADC.b #$04
|068E78| STA.w $0D10,X

|068E7B| LDA.w $0D00,X
|068E7E| SEC
|068E7F| SBC.b #$05
|068E81| STA.w $0D00,X

|068E84| LDA.w $0D20,X
|068E87| SBC.b #$00
|068E89| STA.w $0D20,X

;===================================================================================================

SpritePrep_Spark:
|068E8C| DEC.w $0E30,X

|068E8F| RTS

;===================================================================================================

UNREACHABLE_068E90:
|068E90| db $00, $E0, $F8, $18, $E8, $18, $D0, $30
|068E98| db $E8, $18, $E0, $F8, $18, $00, $00, $FF
|068EA0| db $FF, $00, $FF, $00, $FF, $00, $FF, $00
|068EA8| db $FF, $FF, $00, $00, $C0, $D0, $D8, $D0
|068EB0| db $F0, $F0, $00, $00, $10, $10, $28, $30
|068EB8| db $30, $40, $FF, $FF, $FF, $FF, $FF, $FF
|068EC0| db $00, $00, $00, $00, $00, $00, $00, $00

;===================================================================================================

SpritePrep_LostWoodsBird:
|068EC8| JSL GetRandomNumber
|068ECC| AND.b #$1F
|068ECE| SEC
|068ECF| SBC.b #$10
|068ED1| STA.w $0F80,X

|068ED4| LDA.b #$40
|068ED6| STA.w $0F70,X

;===================================================================================================

SpritePrep_LostWoodsSquirrel:
|068ED9| JSR GetXDisplacementFromLink

|068EDC| LDA.b #$10

|068EDE| CPY.b #$00
|068EE0| BEQ .run_right

|068EE2| LDA.b #$F0

.run_right
|068EE4| STA.w $0D50,X

|068EE7| LDA.b #$FC

|068EE9| LDY.w $069E
|068EEC| BPL .run_down

|068EEE| LDA.b #$04

.run_down
|068EF0| STA.w $0D40,X
|068EF3| STA.w $0BA0,X

|068EF6| RTS

;===================================================================================================

pool SpritePrep_Antifairy

.speed_x
|068EF7| db 16, -16

endpool

;---------------------------------------------------------------------------------------------------

SpritePrep_Antifairy:
|068EF9| LDA.w $0D10,X
|068EFC| LSR A
|068EFD| LSR A
|068EFE| LSR A
|068EFF| LSR A
|068F00| AND.b #$01
|068F02| TAY

|068F03| LDA.w .speed_x,Y
|068F06| STA.w $0D50,X

|068F09| LDA.b #$F0
|068F0B| STA.w $0D40,X

|068F0E| RTS

;===================================================================================================

SpritePrep_FallingIce:
|068F0F| JSR SpritePrep_Boss

|068F12| INC.w $0BA0,X

|068F15| RTS

;===================================================================================================
; King Zora might file for bankruptcy
;===================================================================================================
SpritePrep_KingZora:
|068F16| LDA.l $7EF356
|068F1A| BEQ .finger_webs_for_sale

|068F1C| STZ.w $0DD0,X

|068F1F| RTS

.finger_webs_for_sale
|068F20| JMP.w SpritePrep_IgnoreProjectiles

;===================================================================================================
; Make sure bosses don't spawn if the heart container is obtained.
; If it isn't obtained, kill all the inferior sprites.
;===================================================================================================
SpritePrep_Boss:
|068F23| LDA.w $0403
|068F26| BPL .boss_alive

|068F28| PLA
|068F29| PLA

|068F2A| STZ.w $0DD0,X

|068F2D| RTS

;---------------------------------------------------------------------------------------------------

.boss_alive
|068F2E| LDY.b #$0F

; kill all sprites not flagged to stay alive around bosses
.next_sprite
|068F30| PHX

|068F31| LDX.w $0E20,Y
|068F34| LDA.l SpriteData_Bump,X

|068F38| PLX

|068F39| AND.b #$10
|068F3B| BNE .leave_alive

|068F3D| LDA.b #$00
|068F3F| STA.w $0DD0,Y

.leave_alive
|068F42| DEY
|068F43| BPL .next_sprite

|068F45| RTS

;===================================================================================================
; Big timer and tally number of knights
;===================================================================================================
SpritePrep_ArmosKnight:
|068F46| JSR SpritePrep_Boss

|068F49| LDA.b #$FF
|068F4B| STA.w $0DF0,X

|068F4E| INC.w $0FF8

|068F51| JMP.w SpritePrep_MoveDown8pxRight8px

;===================================================================================================

SpritePrep_DesertStatue:
|068F54| LDA.w $0B6A
|068F57| STA.w $0D90,X

|068F5A| INC.w $0B6A

|068F5D| JSR SpritePrep_MoveDown8pxRight8px

|068F60| LDA.w $0D10,X

|068F63| LDY.b #$01

|068F65| CMP.b #$30
|068F67| BCC .ignore_position

|068F69| INY

|068F6A| CMP.b #$E0
|068F6C| BCS .ignore_position

|068F6E| INY

.ignore_position
|068F6F| TYA
|068F70| STA.w $0DE0,X

;===================================================================================================
; It's technically possible for this to end up executing open bus.
;===================================================================================================
SpritePrep_DoNothingD:
|068F73| RTS

;===================================================================================================
; Also the dark world variant
;===================================================================================================
pool SpritePrep_Octorok

.damage
|068F74| db $03, $05

.health
|068F76| db   2,   4

endpool

;---------------------------------------------------------------------------------------------------

SpritePrep_Octorok:
|068F78| LDY.w $0FFF ; decide stats by light/dark world

|068F7B| LDA.w .health,Y
|068F7E| STA.w $0E50,X

|068F81| LDA.w .damage,Y
|068F84| STA.w $0CD2,X

|068F87| JSL GetRandomNumber
|068F8B| AND.b #$7F
|068F8D| STA.w $0DF0,X

|068F90| RTS

;===================================================================================================
; No, not that one.
;===================================================================================================
SpritePrep_Moldorm_bounce:
|068F91| JSR SpritePrep_Boss

|068F94| INC.w $0BA0,X

|068F97| JSL SpritePrep_Moldorm

|068F9B| RTS

;===================================================================================================

SpritePrep_Lanmolas_bounce:
|068F9C| JSR SpritePrep_Boss
|068F9F| JSL SpritePrep_Lanmolas

|068FA3| RTS

;===================================================================================================
; The big yellow ones
;===================================================================================================
SpritePrep_BigSpike:
|068FA4| JSR SpritePrep_MoveDown8pxRight8px

|068FA7| BRA SpritePrep_CacheOriginalCoordinates

;===================================================================================================
; 64 frame timer
;===================================================================================================
SpritePrep_SwimmingZora:
|068FA9| LDA.b #$40
|068FAB| STA.w $0DF0,X

;===================================================================================================
; Move down 8 pixels even though that already has a routine
; This whole trio could have jumped to the move down routine
; and spikes alone could have called the move right routine
;===================================================================================================
SpritePrep_Geldman:
|068FAE| LDA.b #$08
|068FB0| CLC
|068FB1| ADC.w $0D10,X
|068FB4| STA.w $0D10,X

;===================================================================================================
; Saves the sprite's coordinates that it spawned with for use later
;===================================================================================================
SpritePrep_CacheOriginalCoordinates:
|068FB7| LDA.w $0D10,X
|068FBA| STA.w $0D90,X

|068FBD| LDA.w $0D30,X
|068FC0| STA.w $0DA0,X

|068FC3| LDA.w $0D00,X
|068FC6| STA.w $0DB0,X

|068FC9| LDA.w $0D20,X
|068FCC| STA.w $0EB0,X

|068FCF| RTS

;===================================================================================================
; 96 frame timer
;===================================================================================================
SpritePrep_WalkingZora:
|068FD0| LDA.b #$60
|068FD2| STA.w $0DF0,X

|068FD5| RTS

;===================================================================================================

SpritePrep_StandardGuard_Indoors:
|068FD6| ASL.w $0BE0,X
|068FD9| LSR.w $0BE0,X

|068FDC| RTS

;===================================================================================================

SpritePrep_StandardGuard:
|068FDD| LDA.w $0E30,X
|068FE0| BEQ .dont_turn

; TODO ???
|068FE2| LDY.b #$00

|068FE4| AND.b #$07
|068FE6| CMP.b #$05
|068FE8| BCS .special_turn

|068FEA| DEC A
|068FEB| EOR.b #$01
|068FED| STA.w $0DE0,X

.dont_turn
|068FF0| LDA.b $1B
|068FF2| BNE SpritePrep_StandardGuard_Indoors

|068FF4| LDA.b #$01
|068FF6| STA.w $0D80,X

|068FF9| LDA.b #$70
|068FFB| STA.w $0DF0,X

|068FFE| JSR GetDirectionTowardsLink

|069001| TYA
|069002| STA.w $0DE0,X
|069005| STA.w $0EB0,X

;===================================================================================================
; Dumb bounce
;===================================================================================================
#SpritePrep_CoolerGuard:
|069008| BRA SpritePrep_CoolestGuardEver

.special_turn
|06900A| BEQ .not_five

|06900C| LDY.b #$04

.not_five
|06900E| LDA.w $0E30,X

|069011| LSR A
|069012| LSR A
|069013| LSR A

|069014| AND.b #$03
|069016| STA.b $00

|069018| TYA
|069019| ORA.b $00
|06901B| TAY

|06901C| LDA.w .data,Y
|06901F| STA.w $0DA0,X

|069022| LDA.w $0B6B,X
|069025| AND.b #$0F
|069027| ORA.b #$50
|069029| STA.w $0B6B,X

;===================================================================================================
; WTF is this doing?
; it's running the sprite's AI twice, but why?
;===================================================================================================
#SpritePrep_CoolestGuardEver:
|06902C| LDA.b $11
|06902E| PHA

|06902F| STZ.b $11

|069031| SEC
|069032| ROR.w $0CAA,X

|069035| JSR SpriteModule_Active
|069038| JSR SpriteModule_Active

|06903B| ASL.w $0CAA,X

|06903E| PLA
|06903F| STA.b $11

|069041| RTS

;---------------------------------------------------------------------------------------------------

.data ; TODO wtf is this though
|069042| db $00, $02, $01, $03, $06, $04, $05, $07

;===================================================================================================
; tree warp
;===================================================================================================
SpritePrep_TalkingTree:
|06904A| INC.w $0BA0,X

|06904D| LDA.w $0D10,X ; move left 8 pixels
|069050| SEC
|069051| SBC.b #$08
|069053| STA.w $0D10,X

|069056| LDA.w $0D30,X ; high byte
|069059| SBC.b #$00
|06905B| STA.w $0D30,X

|06905E| LDA.b #$00
|069060| JSL SpritePrep_TalkingTree_SpawnEyeball

|069064| LDA.b #$01
|069066| JSL SpritePrep_TalkingTree_SpawnEyeball

|06906A| RTS

;===================================================================================================
; Change color based on peg situation
;===================================================================================================
SpritePrep_CrystalSwitch:
|06906B| LDA.l $7EC172
|06906F| AND.b #$01
|069071| TAY

|069072| LDA.w CrystalSwitch_Palette,Y
|069075| ORA.w $0F50,X
|069078| STA.w $0F50,X

|06907B| RTS

;===================================================================================================

SpritePrep_FluteKid:
|06907C| INC.w $0BA0,X

|06907F| LDA.l $7EF3CA ; check if light or dark world
|069083| ASL A ; what a weird way of doing it, but okay
|069084| ROL A
|069085| ROL A
|069086| AND.b #$01
|069088| STA.w $0E80,X
|06908B| BEQ .light_world

;---------------------------------------------------------------------------------------------------

.stumpy
|06908D| LDA.l $7EF3C9
|069091| AND.b #$08
|069093| BNE .not_stumpified

|069095| LDA.l $7EF34C
|069099| CMP.b #$02
|06909B| BCC .no_flute
|06909D| BEQ .have_shovel

;---------------------------------------------------------------------------------------------------

.not_stumpified
|06909F| LDA.b #$03
|0690A1| STA.w $0DC0,X

|0690A4| LDA.b #$05
|0690A6| STA.w $0D80,X

|0690A9| BRA .no_flute

;---------------------------------------------------------------------------------------------------

.have_shovel
|0690AB| LDA.b #$01
|0690AD| STA.w $0DC0,X

.no_flute
|0690B0| JSR SpritePrep_MoveRight8px

|0690B3| LDA.w $0D00,X
|0690B6| SEC
|0690B7| SBC.b #$08
|0690B9| STA.w $0D00,X

|0690BC| RTS

;---------------------------------------------------------------------------------------------------

.light_world
|0690BD| LDA.l $7EF34C ; check for flute
|0690C1| CMP.b #$02
|0690C3| BCC SpritePrep_MoveRight7px

|0690C5| STZ.w $0DD0,X

|0690C8| RTS

;===================================================================================================

SpritePrep_MoveRight7px:
|0690C9| LDA.w $0D10,X
|0690CC| CLC
|0690CD| ADC.b #$07
|0690CF| STA.w $0D10,X

|0690D2| RTS

;===================================================================================================

SpritePrep_MoveDown8px:
|0690D3| LDA.w $0D00,X
|0690D6| CLC
|0690D7| ADC.b #$08
|0690D9| STA.w $0D00,X

;===================================================================================================
; E
;===================================================================================================
SpritePrep_DoNothingE:
|0690DC| RTS

;===================================================================================================
; Move right, but only in desert
;===================================================================================================
SpritePrep_PedestalPlaque:
|0690DD| INC.w $0BA0,X

|0690E0| LDA.b $8A
|0690E2| CMP.b #$30 ; OW 30
|0690E4| BEQ SpritePrep_MoveRight7px

|0690E6| RTS

;===================================================================================================

SpritePrep_Stalfos:
|0690E7| LDA.w $0D10,X
|0690EA| AND.b #$10
|0690EC| STA.w $0E30,X
|0690EF| BEQ .blue_stalfos

|0690F1| LDA.b #$07
|0690F3| STA.w $0F50,X

.blue_stalfos
|0690F6| RTS

;===================================================================================================
; 192 frame timer
;===================================================================================================
SpritePrep_KholdstareShell:
|0690F7| JSR SpritePrep_Boss

|0690FA| LDA.b #$C0
|0690FC| STA.w $0E00,X

|0690FF| BRA SpritePrep_MoveDown8pxRight8px

;===================================================================================================

SpritePrep_Kholdstare:
|069101| JSR SpritePrep_Boss

|069104| LDA.b #$03
|069106| STA.w $0D80,X

|069109| JSR SpritePrep_IgnoreProjectiles

|06910C| BRA SpritePrep_MoveDown8pxRight8px

;===================================================================================================

SpritePrep_Bumper:
|06910E| JSR SpritePrep_IgnoreProjectiles

;===================================================================================================

SpritePrep_MoveDown8pxRight8px:
|069111| PHX

|069112| TXA
|069113| CLC
|069114| ADC.b #$10
|069116| TAX ; this is dumb and pointless; there's already a move right thing

|069117| JSR SpritePrep_MoveDown8px

|06911A| PLX

|06911B| BRA SpritePrep_MoveDown8px

;===================================================================================================

pool SpritePrep_HardhatBeetle

.palette
|06911D| db $06, $08

.health
|06911F| db  32,   6

.speed
|069121| db $10, $0C

.ai
|069123| db $01, $03

.prize
|069125| db $02, $06

.bump
|069127| db $05, $03

endpool

;---------------------------------------------------------------------------------------------------

SpritePrep_HardhatBeetle:
|069129| LDY.b #$00

|06912B| LDA.w $0D10,X
|06912E| AND.b #$10
|069130| BEQ .red

|069132| INY

.red
|069133| LDA.w .palette,Y
|069136| STA.w $0F50,X

|069139| LDA.w .health,Y
|06913C| STA.w $0E50,X

|06913F| LDA.w .speed,Y
|069142| STA.w $0D90,X

|069145| LDA.w .ai,Y
|069148| STA.w $0D80,X

|06914B| LDA.w .prize,Y
|06914E| STA.w $0BE0,X

|069151| LDA.w .bump,Y
|069154| STA.w $0CD2,X

|069157| RTS

;===================================================================================================

SpritePrep_MiniHelmasaur:
|069158| LDA.b #$10
|06915A| STA.w $0D90,X

|06915D| LDA.b #$01
|06915F| STA.w $0D80,X

|069162| RTS

;===================================================================================================

SpritePrep_Fairy:
|069163| JSL GetRandomNumber
|069167| AND.b #$01
|069169| STA.w $0D90,X

|06916C| EOR.b #$01
|06916E| STA.w $0DE0,X

;===================================================================================================

SpritePrep_Absorbable:
|069171| LDA.b $1B
|069173| BNE SpritePrep_DoNothingF

;===================================================================================================

SpritePrep_OverworldBonkItem:
|069175| INC.w $0E90,X
|069178| INC.w $0BA0,X

;===================================================================================================
; If you know literally no ASM, this doesn't make any sense.
;===================================================================================================
SpritePrep_DoNothingF:
|06917B| RTS

;===================================================================================================
; Don't spawn if you have a good bee
;===================================================================================================
SpritePrep_GoodBee:
|06917C| LDA.l $7EF35C
|069180| ORA.l $7EF35D
|069184| ORA.l $7EF35E
|069188| ORA.l $7EF35F
|06918C| AND.b #$08
|06918E| BEQ .bees_for_everyone_like_that_oprah_gif

|069190| STZ.w $0DD0,X

.bees_for_everyone_like_that_oprah_gif
|069193| INC.w $0E90,X
|069196| INC.w $0BA0,X

|069199| RTS

;===================================================================================================

pool SpritePrep_Agahnim

.palette
|06919A| db $0B, $07

endpool

;---------------------------------------------------------------------------------------------------

SpritePrep_Agahnim:
|06919C| JSR SpritePrep_Boss

|06919F| LDA.b #$00
|0691A1| STA.w $0DC0,X

|0691A4| LDA.b #$03
|0691A6| STA.w $0DE0,X

|0691A9| JSR SpritePrep_MoveDown8pxRight8px

|0691AC| LDY.w $0FFF

|0691AF| LDA.w .palette,Y
|0691B2| STA.w $0F50,X

;===================================================================================================
; Not to be confused with SpritePrep_DoNothingC
;===================================================================================================
SpritePrep_DoNothingG:
|0691B5| RTS

;===================================================================================================

SpritePrep_Eyegore_bounce:
|0691B6| JSL SpritePrep_Eyegore

|0691BA| RTS

;===================================================================================================

SpritePrep_FireBar:
|0691BB| INC.w $0DA0,X

|0691BE| JMP.w SpritePrep_IgnoreProjectiles

;===================================================================================================

SpritePrep_Trinexx:
|0691C1| JSR SpritePrep_Boss
|0691C4| JSL Trinexx_Initialize
|0691C8| JSR RemoveCachedSprites

|0691CB| RTS

;===================================================================================================

SpritePrep_HelmasaurKing:
|0691CC| JSR SpritePrep_Boss
|0691CF| JSL HelmasaurKing_Initialize

;===================================================================================================

RemoveCachedSprites:
|0691D3| LDY.b #$0F
|0691D5| LDA.b #$00

.next
|0691D7| STA.w $1D00,Y

|0691DA| DEY
|0691DB| BPL .next

|0691DD| RTS

;===================================================================================================
; Moves up 1
; Initialize X speed to 32
;===================================================================================================
SpritePrep_Spike:
|0691DE| LDA.b #$20
|0691E0| STA.w $0D50,X

;===================================================================================================
; Moves up 1
;===================================================================================================
SpritePrep_RockStal:
|0691E3| LDA.b #$F0
|0691E5| STA.w $0D40,X

|0691E8| JSR MoveSpriteY_bank06

|0691EB| STZ.w $0D40,X

|0691EE| RTS

;===================================================================================================
; Underground
;===================================================================================================
SpritePrep_Blob:
|0691EF| LDA.b #$04
|0691F1| STA.w $0DC0,X

|0691F4| JSR SpritePrep_IgnoreProjectiles

|0691F7| RTS

;===================================================================================================
; Best octopus
;===================================================================================================
SpritePrep_Arrghus:
|0691F8| JSR SpritePrep_Boss

|0691FB| LDA.b #$18
|0691FD| STA.w $0F70,X

|069200| RTS

;===================================================================================================
; Looks like it quickly handles every puff when it's done?
;===================================================================================================
SpritePrep_Arrghi:
|069201| JSR SpritePrep_Boss

|069204| JSL GetRandomNumber

|069208| STA.w $0E80,X

|06920B| CPX.b #$0D
|06920D| BNE .not_last_puff

|06920F| STZ.w $0B0A
|069212| STZ.w $0B0B

|069215| PHX

|069216| LDX.b #$00
|069218| JSL ControlArrghi_long

|06921C| PLX

.not_last_puff
|06921D| LDA.w $0B0F,X
|069220| STA.w $0D10,X

|069223| LDA.w $0B1F,X
|069226| STA.w $0D30,X

|069229| LDA.w $0B2F,X
|06922C| STA.w $0D00,X

|06922F| LDA.w $0B3F,X
|069232| STA.w $0D20,X

|069235| RTS

;===================================================================================================
; Watch the tutorial
;===================================================================================================
SpritePrep_Mothula:
|069236| JSR SpritePrep_Boss

|069239| LDA.b #$50
|06923B| STA.w $0DF0,X

|06923E| INC.w $0BA0,X

|069241| LDA.b #$02
|069243| STA.w $0DC0,X

|069246| INC.w $041A ; conveyor off

|069249| LDA.b #$70
|06924B| STA.w $0DB0,X

|06924E| RTS

;===================================================================================================

SpritePrep_AntifairyCircle_bounce:
|06924F| JSL SpritePrep_AntifairyCircle

|069253| RTS

;===================================================================================================
; This routine is found at SNES $06:9254.
;===================================================================================================
SpritePrep_DoNothingH:
|069254| RTS

;===================================================================================================

SpritePrep_BigKey:
|069255| JSR SpritePrep_MoveRight8px

|069258| LDA.b #$FF
|06925A| STA.w $0E30,X

;---------------------------------------------------------------------------------------------------

LoadBigKeyGraphics:
|06925D| PHX
|06925E| PHY

|06925F| LDA.b #$22
|069261| JSL WriteTo4BPPBuffer_item_gfx

|069265| PLY
|069266| PLX

|069267| BRA SetKeyIndex

;===================================================================================================

SpritePrep_SmallKey:
|069269| LDA.b #$FF
|06926B| STA.w $0E30,X

;===================================================================================================

SetKeyIndex:
|06926E| LDA.w $0B9B
|069271| STA.w $0CBA,X

|069274| INC.w $0B9B

|069277| RTS

;===================================================================================================

SpriteModule_Active:
|069278| LDA.w $0E20,X

|06927B| REP #$30

|06927D| AND.w #$00FF
|069280| ASL A
|069281| TAY

|069282| LDA.w .vectors,Y
|069285| DEC A
|069286| PHA

|069287| SEP #$30

|069289| RTS

;---------------------------------------------------------------------------------------------------

.vectors
|06928A| dw Sprite_00_Raven_bounce                   ; 0x00 - RAVEN
|06928C| dw Sprite_01_Vulture_bounce                 ; 0x01 - VULTURE
|06928E| dw Sprite_02_StalfosHead                    ; 0x02 - STALFOS HEAD
|069290| dw $0000                                    ; 0x03 - NULL
|069292| dw PullSwitch_bounce                        ; 0x04 - CORRECT PULL SWITCH
|069294| dw PullSwitch_bounce                        ; 0x05 - UNUSED CORRECT PULL SWITCH
|069296| dw PullSwitch_bounce                        ; 0x06 - WRONG PULL SWITCH
|069298| dw PullSwitch_bounce                        ; 0x07 - UNUSED WRONG PULL SWITCH
|06929A| dw Sprite_08_Octorok                        ; 0x08 - OCTOROK
|06929C| dw Sprite_09_Moldorm_bounce                 ; 0x09 - MOLDORM
|06929E| dw Sprite_0A_Octorok4way                    ; 0x0A - OCTOROK 4WAY
|0692A0| dw Sprite_0B_Cucco                          ; 0x0B - CUCCO
|0692A2| dw Sprite_0C_OctorokStone                   ; 0x0C - OCTOROK STONE
|0692A4| dw Sprite_0D_Buzzblob                       ; 0x0D - BUZZBLOB
|0692A6| dw Sprite_0E_Snapdragon                     ; 0x0E - SNAPDRAGON
|0692A8| dw Sprite_0F_Octoballoon                    ; 0x0F - OCTOBALLOON
|0692AA| dw Sprite_10_OctoballoonBaby                ; 0x10 - OCTOBALLOON BABY
|0692AC| dw Sprite_11_Hinox                          ; 0x11 - HINOX
|0692AE| dw Sprite_12_Moblin                         ; 0x12 - MOBLIN
|0692B0| dw Sprite_13_MiniHelmasaur                  ; 0x13 - MINI HELMASAUR
|0692B2| dw Sprite_14_ThievesTownGrate_bounce        ; 0x14 - THIEVES TOWN GRATE
|0692B4| dw Sprite_15_Antifairy                      ; 0x15 - ANTIFAIRY
|0692B6| dw Sprite_16_Elder_bounce                   ; 0x16 - SAHASRAHLA / AGINAH
|0692B8| dw Sprite_17_Hoarder                        ; 0x17 - BUSH HOARDER
|0692BA| dw Sprite_18_MiniMoldorm                    ; 0x18 - MINI MOLDORM
|0692BC| dw Sprite_19_Poe                            ; 0x19 - POE
|0692BE| dw Sprite_1A_Smithy                         ; 0x1A - SMITHY
|0692C0| dw Sprite_1B_Arrow                          ; 0x1B - ARROW
|0692C2| dw Sprite_1C_Statue                         ; 0x1C - STATUE
|0692C4| dw Sprite_1D_FluteQuest                     ; 0x1D - FLUTE QUEST
|0692C6| dw Sprite_1E_CrystalSwitch                  ; 0x1E - CRYSTAL SWITCH
|0692C8| dw Sprite_1F_SickKid                        ; 0x1F - SICK KID
|0692CA| dw Sprite_20_Sluggula                       ; 0x20 - SLUGGULA
|0692CC| dw Sprite_21_WaterSwitch                    ; 0x21 - WATER SWITCH
|0692CE| dw Sprite_22_Ropa                           ; 0x22 - ROPA
|0692D0| dw Sprite_23_RedBari                        ; 0x23 - RED BARI
|0692D2| dw Sprite_24_BlueBari                       ; 0x24 - BLUE BARI
|0692D4| dw Sprite_25_TalkingTree_bounce             ; 0x25 - TALKING TREE
|0692D6| dw Sprite_26_HardhatBeetle                  ; 0x26 - HARDHAT BEETLE
|0692D8| dw Sprite_27_Deadrock                       ; 0x27 - DEADROCK
|0692DA| dw Sprite_28_DarkWorldHintNPC               ; 0x28 - DARK WORLD HINT NPC
|0692DC| dw Sprite_29_Adult_bounce                   ; 0x29 - ADULT
|0692DE| dw Sprite_2A_SweepingLady_bounce            ; 0x2A - SWEEPING LADY
|0692E0| dw Sprite_2B_Hobo                           ; 0x2B - HOBO
|0692E2| dw Sprite_2C_Lumberjacks_bounce             ; 0x2C - LUMBERJACKS
|0692E4| dw Sprite_2D_NecklessMan_bounce             ; 0x2D - NECKLESS MAN
|0692E6| dw Sprite_2E_FluteKid                       ; 0x2E - FLUTE KID
|0692E8| dw Sprite_2F_RaceGameLady_bounce            ; 0x2F - RACE GAME LADY
|0692EA| dw Sprite_30_RaceGameGuy_bounce             ; 0x30 - RACE GAME GUY
|0692EC| dw Sprite_31_FortuneTeller_bounce           ; 0x31 - FORTUNE TELLER
|0692EE| dw Sprite_32_ArguingBros_bounce             ; 0x32 - ARGUE BROS
|0692F0| dw Sprite_33_RupeePull_bounce               ; 0x33 - RUPEE PULL
|0692F2| dw Sprite_34_YoungSnitch_bounce             ; 0x34 - YOUNG SNITCH
|0692F4| dw Sprite_35_Innkeeper_bounce               ; 0x35 - INNKEEPER
|0692F6| dw Sprite_36_Witch_bounce                   ; 0x36 - WITCH
|0692F8| dw Sprite_37_Waterfall_bounce               ; 0x37 - WATERFALL
|0692FA| dw Sprite_38_EyeStatue_bounce               ; 0x38 - EYE STATUE
|0692FC| dw Sprite_39_Locksmith                      ; 0x39 - LOCKSMITH
|0692FE| dw Sprite_3A_MagicBat_bounce                ; 0x3A - MAGIC BAT
|069300| dw Sprite_3B_BonkItem_bounce                ; 0x3B - BONK ITEM
|069302| dw Sprite_3C_KidInKak_bounce                ; 0x3C - KID IN KAK
|069304| dw Sprite_3D_OldSnitch_bounce               ; 0x3D - OLD SNITCH
|069306| dw Sprite_3E_Hoarder                        ; 0x3E - ROCK HOARDER
|069308| dw TutorialGuardOrBarrier_bounce            ; 0x3F - TUTORIAL GUARD
|06930A| dw TutorialGuardOrBarrier_bounce            ; 0x40 - LIGHTNING GATE
|06930C| dw SpriteModule_Active_bank05_bounce        ; 0x41 - BLUE GUARD
|06930E| dw SpriteModule_Active_bank05_bounce        ; 0x42 - GREEN GUARD
|069310| dw SpriteModule_Active_bank05_bounce        ; 0x43 - RED SPEAR GUARD
|069312| dw SpriteModule_Active_bank05_bounce        ; 0x44 - BLUESAIN BOLT
|069314| dw SpriteModule_Active_bank05_bounce        ; 0x45 - USAIN BOLT
|069316| dw SpriteModule_Active_bank05_bounce        ; 0x46 - BLUE ARCHER
|069318| dw SpriteModule_Active_bank05_bounce        ; 0x47 - GREEN BUSH GUARD
|06931A| dw SpriteModule_Active_bank05_bounce        ; 0x48 - RED JAVELIN GUARD
|06931C| dw SpriteModule_Active_bank05_bounce        ; 0x49 - RED BUSH GUARD
|06931E| dw SpriteModule_Active_bank05_bounce        ; 0x4A - BOMB GUARD
|069320| dw SpriteModule_Active_bank05_bounce        ; 0x4B - GREEN KNIFE GUARD
|069322| dw SpriteModule_Active_bank05_bounce        ; 0x4C - GELDMAN
|069324| dw SpriteModule_Active_bank05_bounce        ; 0x4D - TOPPO
|069326| dw SpriteModule_Active_bank05_bounce        ; 0x4E - POPO
|069328| dw SpriteModule_Active_bank05_bounce        ; 0x4F - POPO
|06932A| dw SpriteModule_Active_bank05_bounce        ; 0x50 - CANNONBALL
|06932C| dw SpriteModule_Active_bank05_bounce        ; 0x51 - ARMOS STATUE
|06932E| dw SpriteModule_Active_bank05_bounce        ; 0x52 - KING ZORA
|069330| dw SpriteModule_Active_bank05_bounce        ; 0x53 - ARMOS KNIGHT
|069332| dw SpriteModule_Active_bank05_bounce        ; 0x54 - LANMOLAS
|069334| dw SpriteModule_Active_bank05_bounce        ; 0x55 - ZORA / FIREBALL
|069336| dw SpriteModule_Active_bank05_bounce        ; 0x56 - WALKING ZORA
|069338| dw SpriteModule_Active_bank05_bounce        ; 0x57 - DESERT STATUE
|06933A| dw SpriteModule_Active_bank05_bounce        ; 0x58 - CRAB
|06933C| dw SpriteModule_Active_bank05_bounce        ; 0x59 - LOST WOODS BIRD
|06933E| dw SpriteModule_Active_bank05_bounce        ; 0x5A - LOST WOODS SQUIRREL
|069340| dw SpriteModule_Active_bank05_bounce        ; 0x5B - SPARK
|069342| dw SpriteModule_Active_bank05_bounce        ; 0x5C - SPARK
|069344| dw SpriteModule_Active_bank05_bounce        ; 0x5D - ROLLER VERTICAL DOWN FIRST
|069346| dw SpriteModule_Active_bank05_bounce        ; 0x5E - ROLLER VERTICAL UP FIRST
|069348| dw SpriteModule_Active_bank05_bounce        ; 0x5F - ROLLER HORIZONTAL RIGHT FIRST
|06934A| dw SpriteModule_Active_bank05_bounce        ; 0x60 - ROLLER HORIZONTAL LEFT FIRST
|06934C| dw SpriteModule_Active_bank05_bounce        ; 0x61 - BEAMOS
|06934E| dw SpriteModule_Active_bank05_bounce        ; 0x62 - MASTERSWORD
|069350| dw SpriteModule_Active_bank05_bounce        ; 0x63 - DEBIRANDO PIT
|069352| dw SpriteModule_Active_bank05_bounce        ; 0x64 - DEBIRANDO
|069354| dw SpriteModule_Active_bank05_bounce        ; 0x65 - ARCHERY GUY
|069356| dw SpriteModule_Active_bank05_bounce        ; 0x66 - WALL CANNON VERTICAL LEFT
|069358| dw SpriteModule_Active_bank05_bounce        ; 0x67 - WALL CANNON VERTICAL RIGHT
|06935A| dw SpriteModule_Active_bank05_bounce        ; 0x68 - WALL CANNON HORIZONTAL TOP
|06935C| dw SpriteModule_Active_bank05_bounce        ; 0x69 - WALL CANNON HORIZONTAL BOTTOM
|06935E| dw SpriteModule_Active_bank05_bounce        ; 0x6A - BALL N CHAIN
|069360| dw SpriteModule_Active_bank05_bounce        ; 0x6B - CANNONBALL / CANNON TROOPER
|069362| dw SpriteModule_Active_bank05_bounce        ; 0x6C - MIRROR PORTAL
|069364| dw SpriteModule_Active_bank05_bounce        ; 0x6D - RAT / CRICKET
|069366| dw SpriteModule_Active_bank05_bounce        ; 0x6E - ROPE
|069368| dw SpriteModule_Active_bank05_bounce        ; 0x6F - KEESE
|06936A| dw SpriteModule_Active_bank05_bounce        ; 0x70 - KING HELMASAUR FIREBALL
|06936C| dw Sprite_71_Leever                         ; 0x71 - LEEVER
|06936E| dw Sprite_72_FairyPond                      ; 0x72 - FAIRY POND TRIGGER
|069370| dw Sprite_73_UncleAndPriest_bounce          ; 0x73 - UNCLE / PRIEST / MANTLE
|069372| dw Sprite_74_RunningBoy_bounce              ; 0x74 - RUNNING BOY
|069374| dw Sprite_75_BottleMerchant_bounce          ; 0x75 - BOTTLE MERCHANT
|069376| dw Sprite_76_Zelda_bounce                   ; 0x76 - ZELDA
|069378| dw Sprite_77_Antifairy                      ; 0x77 - ANTIFAIRY
|06937A| dw Sprite_78_MrsSahasrahla_bounce           ; 0x78 - SAHASRAHLAS WIFE
|06937C| dw SpriteModule_Active_bank1E_bounce        ; 0x79 - BEE
|06937E| dw SpriteModule_Active_bank1E_bounce        ; 0x7A - AGAHNIM
|069380| dw SpriteModule_Active_bank1E_bounce        ; 0x7B - AGAHNIMS BALLS
|069382| dw SpriteModule_Active_bank1E_bounce        ; 0x7C - GREEN STALFOS
|069384| dw SpriteModule_Active_bank1E_bounce        ; 0x7D - BIG SPIKE
|069386| dw SpriteModule_Active_bank1E_bounce        ; 0x7E - FIREBAR CLOCKWISE
|069388| dw SpriteModule_Active_bank1E_bounce        ; 0x7F - FIREBAR COUNTERCLOCKWISE
|06938A| dw SpriteModule_Active_bank1E_bounce        ; 0x80 - FIRESNAKE
|06938C| dw SpriteModule_Active_bank1E_bounce        ; 0x81 - HOVER
|06938E| dw SpriteModule_Active_bank1E_bounce        ; 0x82 - ANTIFAIRY CIRCLE
|069390| dw SpriteModule_Active_bank1E_bounce        ; 0x83 - GREEN EYEGORE / GREEN MIMIC
|069392| dw SpriteModule_Active_bank1E_bounce        ; 0x84 - RED EYEGORE / RED MIMIC
|069394| dw SpriteModule_Active_bank1E_bounce        ; 0x85 - YELLOW STALFOS
|069396| dw SpriteModule_Active_bank1E_bounce        ; 0x86 - KODONGO
|069398| dw SpriteModule_Active_bank1E_bounce        ; 0x87 - KODONGO FIRE
|06939A| dw SpriteModule_Active_bank1E_bounce        ; 0x88 - MOTHULA
|06939C| dw SpriteModule_Active_bank1E_bounce        ; 0x89 - MOTHULA BEAM
|06939E| dw SpriteModule_Active_bank1E_bounce        ; 0x8A - SPIKE BLOCK
|0693A0| dw SpriteModule_Active_bank1E_bounce        ; 0x8B - GIBDO
|0693A2| dw SpriteModule_Active_bank1E_bounce        ; 0x8C - ARRGHUS
|0693A4| dw SpriteModule_Active_bank1E_bounce        ; 0x8D - ARRGHI
|0693A6| dw SpriteModule_Active_bank1E_bounce        ; 0x8E - TERRORPIN
|0693A8| dw SpriteModule_Active_bank1E_bounce        ; 0x8F - BLOB
|0693AA| dw SpriteModule_Active_bank1E_bounce        ; 0x90 - WALLMASTER
|0693AC| dw SpriteModule_Active_bank1E_bounce        ; 0x91 - STALFOS KNIGHT
|0693AE| dw SpriteModule_Active_bank1E_bounce        ; 0x92 - KING HELMASAUR
|0693B0| dw SpriteModule_Active_bank1E_bounce        ; 0x93 - BUMPER
|0693B2| dw SpriteModule_Active_bank1E_bounce        ; 0x94 - PIROGUSU
|0693B4| dw SpriteModule_Active_bank1E_bounce        ; 0x95 - LASER EYE LEFT
|0693B6| dw SpriteModule_Active_bank1E_bounce        ; 0x96 - LASER EYE RIGHT
|0693B8| dw SpriteModule_Active_bank1E_bounce        ; 0x97 - LASER EYE TOP
|0693BA| dw SpriteModule_Active_bank1E_bounce        ; 0x98 - LASER EYE BOTTOM
|0693BC| dw SpriteModule_Active_bank1E_bounce        ; 0x99 - PENGATOR
|0693BE| dw SpriteModule_Active_bank1E_bounce        ; 0x9A - KYAMERON
|0693C0| dw SpriteModule_Active_bank1E_bounce        ; 0x9B - WIZZROBE
|0693C2| dw SpriteModule_Active_bank1E_bounce        ; 0x9C - ZORO
|0693C4| dw SpriteModule_Active_bank1E_bounce        ; 0x9D - BABASU
|0693C6| dw SpriteModule_Active_bank1E_bounce        ; 0x9E - HAUNTED GROVE OSTRICH
|0693C8| dw SpriteModule_Active_bank1E_bounce        ; 0x9F - HAUNTED GROVE RABBIT
|0693CA| dw SpriteModule_Active_bank1E_bounce        ; 0xA0 - HAUNTED GROVE BIRD
|0693CC| dw SpriteModule_Active_bank1E_bounce        ; 0xA1 - FREEZOR
|0693CE| dw SpriteModule_Active_bank1E_bounce        ; 0xA2 - KHOLDSTARE
|0693D0| dw SpriteModule_Active_bank1E_bounce        ; 0xA3 - KHOLDSTARE SHELL
|0693D2| dw SpriteModule_Active_bank1E_bounce        ; 0xA4 - FALLING ICE
|0693D4| dw SpriteModule_Active_bank1E_bounce        ; 0xA5 - BLUE ZAZAK
|0693D6| dw SpriteModule_Active_bank1E_bounce        ; 0xA6 - RED ZAZAK
|0693D8| dw SpriteModule_Active_bank1E_bounce        ; 0xA7 - STALFOS
|0693DA| dw SpriteModule_Active_bank1E_bounce        ; 0xA8 - GREEN ZIRRO
|0693DC| dw SpriteModule_Active_bank1E_bounce        ; 0xA9 - BLUE ZIRRO
|0693DE| dw SpriteModule_Active_bank1E_bounce        ; 0xAA - PIKIT
|0693E0| dw SpriteModule_Active_bank1E_bounce        ; 0xAB - CRYSTAL MAIDEN
|0693E2| dw SpriteModule_Active_bank1E_bounce        ; 0xAC - APPLE
|0693E4| dw SpriteModule_Active_bank1E_bounce        ; 0xAD - OLD MAN
|0693E6| dw SpriteModule_Active_bank1E_bounce        ; 0xAE - PIPE DOWN
|0693E8| dw SpriteModule_Active_bank1E_bounce        ; 0xAF - PIPE UP
|0693EA| dw SpriteModule_Active_bank1E_bounce        ; 0xB0 - PIPE RIGHT
|0693EC| dw SpriteModule_Active_bank1E_bounce        ; 0xB1 - PIPE LEFT
|0693EE| dw SpriteModule_Active_bank1E_bounce        ; 0xB2 - GOOD BEE
|0693F0| dw SpriteModule_Active_bank1E_bounce        ; 0xB3 - PEDESTAL PLAQUE
|0693F2| dw SpriteModule_Active_bank1E_bounce        ; 0xB4 - PURPLE CHEST
|0693F4| dw SpriteModule_Active_bank1E_bounce        ; 0xB5 - BOMB SHOP GUY
|0693F6| dw SpriteModule_Active_bank1E_bounce        ; 0xB6 - KIKI
|0693F8| dw SpriteModule_Active_bank1E_bounce        ; 0xB7 - BLIND MAIDEN
|0693FA| dw SpriteModule_Active_bank1E_bounce        ; 0xB8 - DIALOGUE TESTER
|0693FC| dw SpriteModule_Active_bank1E_bounce        ; 0xB9 - BULLY / PINK BALL
|0693FE| dw SpriteModule_Active_bank1E_bounce        ; 0xBA - WHIRLPOOL
|069400| dw SpriteModule_Active_bank1E_bounce        ; 0xBB - SHOPKEEPER / CHEST GAME GUY
|069402| dw SpriteModule_Active_bank1E_bounce        ; 0xBC - DRUNKARD
|069404| dw SpriteModule_Active_bank1D_bounce        ; 0xBD - VITREOUS
|069406| dw SpriteModule_Active_bank1D_bounce        ; 0xBE - VITREOUS SMALL EYE
|069408| dw SpriteModule_Active_bank1D_bounce        ; 0xBF - LIGHTNING
|06940A| dw SpriteModule_Active_bank1D_bounce        ; 0xC0 - CATFISH
|06940C| dw SpriteModule_Active_bank1D_bounce        ; 0xC1 - CUTSCENE AGAHNIM
|06940E| dw SpriteModule_Active_bank1D_bounce        ; 0xC2 - BOULDER
|069410| dw SpriteModule_Active_bank1D_bounce        ; 0xC3 - GIBO
|069412| dw SpriteModule_Active_bank1D_bounce        ; 0xC4 - THIEF
|069414| dw SpriteModule_Active_bank1D_bounce        ; 0xC5 - MEDUSA
|069416| dw SpriteModule_Active_bank1D_bounce        ; 0xC6 - YOMO MEDUSA
|069418| dw SpriteModule_Active_bank1D_bounce        ; 0xC7 - POKEY
|06941A| dw SpriteModule_Active_bank1D_bounce        ; 0xC8 - BIG FAIRY
|06941C| dw SpriteModule_Active_bank1D_bounce        ; 0xC9 - TEKTITE / FIREBAT
|06941E| dw SpriteModule_Active_bank1D_bounce        ; 0xCA - CHAIN CHOMP
|069420| dw SpriteModule_Active_bank1D_bounce        ; 0xCB - TRINEXX ROCK HEAD
|069422| dw SpriteModule_Active_bank1D_bounce        ; 0xCC - TRINEXX FIRE HEAD
|069424| dw SpriteModule_Active_bank1D_bounce        ; 0xCD - TRINEXX ICE HEAD
|069426| dw SpriteModule_Active_bank1D_bounce        ; 0xCE - BLIND
|069428| dw SpriteModule_Active_bank1D_bounce        ; 0xCF - SWAMOLA
|06942A| dw SpriteModule_Active_bank1D_bounce        ; 0xD0 - LYNEL
|06942C| dw SpriteModule_Active_bank1D_bounce        ; 0xD1 - BUNNYBEAM / SMOKE
|06942E| dw SpriteModule_Active_bank1D_bounce        ; 0xD2 - FLOPPING FISH
|069430| dw SpriteModule_Active_bank1D_bounce        ; 0xD3 - STAL
|069432| dw SpriteModule_Active_bank1D_bounce        ; 0xD4 - LANDMINE
|069434| dw SpriteModule_Active_bank1D_bounce        ; 0xD5 - DIGGING GAME GUY
|069436| dw SpriteModule_Active_bank1D_bounce        ; 0xD6 - GANON
|069438| dw SpriteModule_Active_bank1D_bounce        ; 0xD7 - GANON
|06943A| dw Sprite_D8_Heart                          ; 0xD8 - HEART
|06943C| dw Sprite_D9_GreenRupee                     ; 0xD9 - GREEN RUPEE
|06943E| dw Sprite_DA_BlueRupee                      ; 0xDA - BLUE RUPEE
|069440| dw Sprite_DB_RedRupee                       ; 0xDB - RED RUPEE
|069442| dw Sprite_DC_BombRefill1                    ; 0xDC - BOMB REFILL 1
|069444| dw Sprite_DD_BombRefill4                    ; 0xDD - BOMB REFILL 4
|069446| dw Sprite_DE_BombRefill8                    ; 0xDE - BOMB REFILL 8
|069448| dw Sprite_DF_SmallMagicDecanter             ; 0xDF - SMALL MAGIC DECANTER
|06944A| dw Sprite_E0_LargeMagicDecanter             ; 0xE0 - LARGE MAGIC DECANTER
|06944C| dw Sprite_E1_ArrowRefill5                   ; 0xE1 - ARROW REFILL 5
|06944E| dw Sprite_E2_ArrowRefill10                  ; 0xE2 - ARROW REFILL 10
|069450| dw Sprite_E3_Fairy                          ; 0xE3 - FAIRY
|069452| dw Sprite_E4_SmallKey                       ; 0xE4 - SMALL KEY
|069454| dw Sprite_E5_BigKey                         ; 0xE5 - BIG KEY
|069456| dw Sprite_E6_StolenShield                   ; 0xE6 - STOLEN SHIELD
|069458| dw Sprite_E7_Mushroom_bounce                ; 0xE7 - MUSHROOM
|06945A| dw Sprite_E8_FakeMasterSword_bounce         ; 0xE8 - FAKE MASTER SWORD
|06945C| dw Sprite_E9_MagicShopAssistant_bounce      ; 0xE9 - MAGIC SHOP ASSISTANT
|06945E| dw Sprite_EA_HeartContainer_bounce          ; 0xEA - HEART CONTAINER
|069460| dw Sprite_EB_HeartPiece_bounce              ; 0xEB - HEART PIECE
|069462| dw Sprite_EC_ThrownItem                     ; 0xEC - THROWN ITEM
|069464| dw SomariaPlatformAndPipe_bounce            ; 0xED - SOMARIA PLATFORM
|069466| dw Sprite_EE_CastleMantle_bounce            ; 0xEE - CASTLE MANTLE
|069468| dw SomariaPlatformAndPipe_bounce            ; 0xEF - UNUSED SOMARIA PLATFORM
|06946A| dw SomariaPlatformAndPipe_bounce            ; 0xF0 - UNUSED SOMARIA PLATFORM
|06946C| dw SomariaPlatformAndPipe_bounce            ; 0xF1 - UNUSED SOMARIA PLATFORM
|06946E| dw Sprite_F2_MedallionTablet_bounce         ; 0xF2 - MEDALLION TABLET

;===================================================================================================

Sprite_09_Moldorm_bounce:
|069470| JSL Sprite_09_Moldorm

|069474| RTS

;===================================================================================================

Sprite_00_Raven_bounce:
|069475| JSL Sprite_00_Raven

|069479| RTS

;===================================================================================================

Sprite_01_Vulture_bounce:
|06947A| JSL Sprite_01_Vulture

|06947E| RTS

;===================================================================================================

pool Sprite_27_Deadrock

.anim_step
|06947F| db $00, $01, $00, $01
|069483| db $02, $02, $03, $03
|069487| db $04

.flip
|069488| db $40, $40, $00, $00
|06948C| db $00, $40, $00, $40
|069490| db $00

endpool

;---------------------------------------------------------------------------------------------------

Sprite_27_Deadrock:
|069491| LDA.w $0E10,X
|069494| BEQ .not_stunned

|069496| AND.b #$04
|069498| BNE .normal

.stunned
|06949A| LDY.b #$08
|06949C| BRA .continue

.not_stunned
|06949E| LDA.w $0D80,X
|0694A1| CMP.b #$02
|0694A3| BEQ .stunned

.normal
|0694A5| LDY.w $0D90,X

;---------------------------------------------------------------------------------------------------

.continue
|0694A8| LDA.w .anim_step,Y
|0694AB| STA.w $0DC0,X

|0694AE| LDA.w $0F50,X
|0694B1| AND.b #$BF
|0694B3| ORA.w .flip,Y
|0694B6| STA.w $0F50,X

|0694B9| JSR SpriteDraw_SingleLarge
|0694BC| JSR CheckIfActive_bank06

|0694BF| LDA.w $0EA0,X
|0694C2| BNE .no_sfx_or_damage

|0694C4| JSR CheckDamageFromLink
|0694C7| BCC .no_sfx_or_damage

|0694C9| LDA.w $012E
|0694CC| BNE .no_sfx_or_damage

|0694CE| LDA.b #$0B ; SFX2.0B
|0694D0| JSL QueueSpriteSFX2WithPan

.no_sfx_or_damage
|0694D4| JSR CheckDamageToLink_same_layer
|0694D7| BCC .no_contact

|0694D9| JSL AbortMovement
|0694DD| JSL RepelDash_long

.no_contact
|0694E1| LDA.w $0EA0,X
|0694E4| CMP.b #$0E
|0694E6| BNE .dont_get_stunned

|0694E8| LDA.b #$02
|0694EA| STA.w $0D80,X

|0694ED| LDA.b #$FF
|0694EF| STA.w $0E00,X

|0694F2| LDA.b #$40
|0694F4| STA.w $0E10,X

;---------------------------------------------------------------------------------------------------

.dont_get_stunned
|0694F7| JSR HandleSpriteRecoil_bank06

|0694FA| LDA.w $0D80,X
|0694FD| JSL JumpTableLocal
|069501| dw Deadrock_Halted
|069503| dw Deadrock_Walk
|069505| dw Deadrock_Stunned

;===================================================================================================

DeadRockSpeed_X:
; bleeds into next
|069507| db  32, -32

DeadRockSpeed_Y:
|069509| db   0,   0,  32, -32

;===================================================================================================

Deadrock_Halted:
|06950D| LDA.w $0DF0,X
|069510| BNE EXIT_06955F

|069512| ASL.w $0E40,X
|069515| LSR.w $0E40,X

|069518| LDA.w $0CAA,X
|06951B| AND.b #$FB
|06951D| STA.w $0CAA,X

|069520| LDA.w $0E60,X
|069523| AND.b #$BF
|069525| STA.w $0E60,X

|069528| INC.w $0D80,X

|06952B| JSL GetRandomNumber
|06952F| AND.b #$1F
|069531| ADC.b #$20
|069533| STA.w $0DF0,X

|069536| INC.w $0DA0,X

|069539| LDA.w $0DA0,X
|06953C| CMP.b #$04
|06953E| BNE .use_random_direction

|069540| STZ.w $0DA0,X

|069543| JSR GetDirectionTowardsLink
|069546| TYA

|069547| BRA DeadRock_SetSpeed

.use_random_direction
|069549| JSL GetRandomNumber
|06954D| AND.b #$03

;===================================================================================================

DeadRock_SetSpeed:
|06954F| STA.w $0DE0,X

|069552| TAY

|069553| LDA.w DeadRockSpeed_X,Y
|069556| STA.w $0D50,X

|069559| LDA.w DeadRockSpeed_Y,Y
|06955C| STA.w $0D40,X

;---------------------------------------------------------------------------------------------------

#EXIT_06955F:
|06955F| RTS

;===================================================================================================

Deadrock_Walk:
|069560| LDA.w $0DF0,X
|069563| BNE .delay

|069565| STZ.w $0D80,X

|069568| LDA.b #$20
|06956A| STA.w $0DF0,X

|06956D| RTS

.delay
|06956E| JSR MoveSpriteXY_bank06
|069571| JSR CheckSpriteTileCollision

|069574| LDA.w $0E70,X
|069577| BEQ .no_collision

|069579| LDA.w $0DE0,X
|06957C| EOR.b #$01

|06957E| BRA DeadRock_SetSpeed

.no_collision
|069580| INC.w $0E80,X

|069583| LDA.w $0E80,X
|069586| LSR A
|069587| LSR A
|069588| AND.b #$01
|06958A| STA.b $00

|06958C| LDA.w $0DE0,X
|06958F| ASL A
|069590| ORA.b $00
|069592| STA.w $0D90,X

|069595| RTS

;===================================================================================================

Deadrock_Stunned:
|069596| LDA.w $0E40,X
|069599| ORA.b #$80
|06959B| STA.w $0E40,X

|06959E| LDA.w $0CAA,X
|0695A1| ORA.b #$04
|0695A3| STA.w $0CAA,X

|0695A6| LDA.w $0E60,X
|0695A9| ORA.b #$40
|0695AB| STA.w $0E60,X

|0695AE| LDA.b $1A
|0695B0| AND.b #$01
|0695B2| BNE .resist_timer

|0695B4| LDA.w $0E00,X
|0695B7| BNE .delay

|0695B9| STZ.w $0D80,X

|0695BC| LDA.b #$10
|0695BE| STA.w $0DF0,X

|0695C1| RTS

.delay
|0695C2| CMP.b #$20
|0695C4| BNE .exit

|0695C6| LDA.b #$40
|0695C8| STA.w $0E10,X

.exit
|0695CB| RTS

.resist_timer
|0695CC| INC.w $0E00,X

|0695CF| RTS

;===================================================================================================

pool Sprite_20_Sluggula

.anim_step
|0695D0| db $00, $01, $00, $01
|0695D4| db $02, $03, $04, $05

.flip
|0695D8| db $40, $40, $00, $00
|0695DC| db $00, $00, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

Sprite_20_Sluggula:
|0695E0| LDA.w $0E80,X
|0695E3| AND.b #$08
|0695E5| LSR A
|0695E6| LSR A
|0695E7| LSR A
|0695E8| STA.b $00

|0695EA| LDA.w $0DE0,X
|0695ED| ASL A
|0695EE| ORA.b $00
|0695F0| TAY

|0695F1| LDA.w .anim_step,Y
|0695F4| STA.w $0DC0,X

|0695F7| LDA.w $0F50,X
|0695FA| AND.b #$BF
|0695FC| ORA.w .flip,Y
|0695FF| STA.w $0F50,X

|069602| JSR SpriteDraw_SingleLarge
|069605| JSR CheckIfActive_bank06
|069608| JSR HandleSpriteRecoil_bank06
|06960B| JSR CheckDamageToAndFromLink_bank06

|06960E| INC.w $0E80,X

|069611| LDA.w $0D80,X
|069614| JSL JumpTableLocal
|069618| dw Sluggula_Normal
|06961A| dw Sluggula_BreakFromBombing

;===================================================================================================

SluggulaMoblinSpeed_X:
; bleeds into next
|06961C| db  16, -16

SluggulaMoblinSpeed_Y:
|06961E| db   0,   0,  16, -16

;===================================================================================================

Sluggula_Normal:
|069622| LDA.w $0DF0,X
|069625| BNE .delay

|069627| INC.w $0D80,X

|06962A| JSL GetRandomNumber
|06962E| AND.b #$1F
|069630| ADC.b #$20
|069632| STA.w $0DF0,X

|069635| AND.b #$03
|069637| STA.w $0DE0,X

;===================================================================================================

#Sluggula_SetSpeed:
|06963A| TAY

|06963B| LDA.w SluggulaMoblinSpeed_X,Y
|06963E| STA.w $0D50,X

|069641| LDA.w SluggulaMoblinSpeed_Y,Y
|069644| STA.w $0D40,X

|069647| RTS

;===================================================================================================

.delay
|069648| CMP.b #$10
|06964A| BNE EXIT_069679

|06964C| JSL GetRandomNumber
|069650| LSR A
|069651| BCS EXIT_069679

|069653| JMP.w Sluggula_DropBomb

;===================================================================================================

Sluggula_BreakFromBombing:
|069656| LDA.w $0DF0,X
|069659| BNE .delay

|06965B| STZ.w $0D80,X

|06965E| LDA.b #$20
|069660| STA.w $0DF0,X

.delay
|069663| JSR MoveSpriteXY_bank06
|069666| JSR CheckSpriteTileCollision

|069669| LDA.w $0E70,X
|06966C| BEQ EXIT_069679

|06966E| LDA.w $0DE0,X
|069671| EOR.b #$01
|069673| STA.w $0DE0,X

|069676| JMP.w Sluggula_SetSpeed

;---------------------------------------------------------------------------------------------------

#EXIT_069679:
|069679| RTS

;===================================================================================================

Sluggula_DropBomb:
|06967A| LDA.b #$4A ; SPRITE 4A
|06967C| LDY.b #$0B
|06967E| JSL SpawnSpriteDynamically.slot_limited
|069682| BMI .no_space

|069684| JSL SetSpawnedSpriteCoordinates
|069688| JSL TransmuteSpriteToBomb

.no_space
|06968C| RTS

;===================================================================================================

pool Sprite_19_Poe

.hflip
|06968D| db $40, $00

endpool

;---------------------------------------------------------------------------------------------------

Sprite_19_Poe:
|06968F| LDA.w $0D50,X
|069692| ASL A
|069693| ROL A
|069694| AND.b #$01
|069696| STA.w $0DE0,X

|069699| TAY

|06969A| LDA.w $0F50,X
|06969D| AND.b #$BF
|06969F| ORA.w .hflip,Y
|0696A2| STA.w $0F50,X

|0696A5| LDA.w $0E90,X
|0696A8| BNE .keep_priority

|0696AA| LDA.w $0B89,X
|0696AD| ORA.b #$30
|0696AF| STA.w $0B89,X

;---------------------------------------------------------------------------------------------------

.keep_priority
|0696B2| JSR SpriteDraw_Poe

|0696B5| REP #$20 ; is this drawing the lantern?

|0696B7| LDA.b $90 ; c'mon wtf
|0696B9| CLC
|0696BA| ADC.w #$0004
|0696BD| STA.b $90

|0696BF| INC.b $92

|0696C1| SEP #$20

|0696C3| DEC.w $0E40,X

|0696C6| JSR SpriteDraw_SingleLarge ; who did this

|0696C9| INC.w $0E40,X

;---------------------------------------------------------------------------------------------------

|0696CC| JSR CheckIfActive_bank06
|0696CF| JSR HandleSpriteRecoil_bank06

|0696D2| LDA.w $0E90,X
|0696D5| BEQ Poe_Main

|0696D7| INC.w $0F70,X

|0696DA| LDA.w $0F70,X
|0696DD| CMP.b #$0C
|0696DF| BNE .exit

|0696E1| STZ.w $0E90,X

.exit
|0696E4| RTS

;===================================================================================================

Poe_Main:
|0696E5| JSR CheckDamageToAndFromLink_bank06

|0696E8| INC.w $0E80,X

|0696EB| JSR MoveSpriteXY_bank06

|0696EE| LDA.b $1A
|0696F0| LSR A
|0696F1| BCS .continue

|0696F3| LDA.w $0ED0,X
|0696F6| AND.b #$01
|0696F8| TAY

|0696F9| LDA.w $0F80,X
|0696FC| CLC
|0696FD| ADC.w Poe_SpeedZ,Y
|069700| STA.w $0F80,X

|069703| CMP.w Poe_MaxZ,Y
|069706| BNE .continue

|069708| INC.w $0ED0,X

.continue
|06970B| JSR MoveSpriteZ_bank06

|06970E| STZ.w $0D40,X

|069711| LDA.w $0D80,X
|069714| JSL JumpTableLocal
|069718| dw Poe_Pondering
|06971A| dw Poe_SpookAround

;===================================================================================================

Poe_SpeedZ:
|06971C| db   1,  -1
|06971E| db   2,  -2

;===================================================================================================

Poe_MaxSpeedX:
|069720| db  16, -16
|069722| db  28, -28

;===================================================================================================

Poe_MaxZ:
|069724| db   8,  -8

;===================================================================================================

Poe_Pondering:
|069726| LDA.w $0DF0,X
|069729| BNE .exit

|06972B| INC.w $0D80,X

|06972E| JSL GetRandomNumber
|069732| AND.b #$0C
|069734| BNE .use_random_direction

|069736| JSR GetYDisplacementFromLink

|069739| TYA
|06973A| BRA .continue

.use_random_direction
|06973C| JSL GetRandomNumber
|069740| AND.b #$01

.continue
|069742| STA.w $0EB0,X

.exit
|069745| RTS

;===================================================================================================

Poe_MaxSpeedY:
|069746| db   8,  -8

;===================================================================================================

Poe_SpookAround:
|069748| LDA.w $001A
|06974B| LSR A
|06974C| BCS .continue

|06974E| LDA.w $0EC0,X
|069751| AND.b #$01

|069753| CLC
|069754| ADC.w $0FFF
|069757| ADC.w $0FFF
|06975A| TAY

|06975B| LDA.w $0D50,X
|06975E| CLC
|06975F| ADC.w Poe_SpeedZ,Y
|069762| STA.w $0D50,X

|069765| CMP.w Poe_MaxSpeedX,Y
|069768| BNE .continue

|06976A| INC.w $0EC0,X

|06976D| STZ.w $0D80,X

|069770| JSL GetRandomNumber
|069774| AND.b #$1F
|069776| ADC.b #$10
|069778| STA.w $0DF0,X

.continue
|06977B| LDY.w $0EB0,X

|06977E| LDA.w Poe_MaxSpeedY,Y
|069781| STA.w $0D40,X

|069784| RTS

;===================================================================================================

pool SpriteDraw_Poe

.offset_x
|069785| db   9,   0,  -1,  -1

.char
|069789| db $7C, $80, $B7, $80

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Poe:
|06978D| JSR GetScreenCoordinates

|069790| LDA.w $0E80,X

|069793| LSR A
|069794| LSR A
|069795| LSR A

|069796| AND.b #$03
|069798| STA.b $06

|06979A| LDA.w $0DE0,X
|06979D| ASL A

|06979E| PHX

|06979F| TAX

|0697A0| REP #$20

|0697A2| LDA.b $00
|0697A4| CLC
|0697A5| ADC.w .offset_x,X
|0697A8| STA.b ($90),Y

|0697AA| CLC
|0697AB| AND.w #$0100
|0697AE| STA.b $0E

|0697B0| LDA.b $02
|0697B2| CLC
|0697B3| ADC.w #$0009

|0697B6| INY
|0697B7| STA.b ($90),Y

|0697B9| CLC
|0697BA| ADC.w #$0010
|0697BD| CMP.w #$0100

|0697C0| SEP #$20
|0697C2| BCC .on_screen

|0697C4| LDA.b #$F0
|0697C6| STA.b ($90),Y

.on_screen
|0697C8| LDX.b $06

|0697CA| LDA.w .char,X
|0697CD| INY
|0697CE| STA.b ($90),Y

|0697D0| LDA.b $05
|0697D2| AND.b #$F0
|0697D4| ORA.b #$02

|0697D6| INY
|0697D7| STA.b ($90),Y

|0697D9| LDA.b $0F
|0697DB| STA.b ($92)

|0697DD| PLX

|0697DE| RTS

;===================================================================================================

pool Sprite_18_MiniMoldorm

.speed_x
|0697DF| db  24,  22,  17,   9,   0,  -9, -17, -22
|0697E7| db -24, -22, -17,  -9,   0,   9,  17,  22

.speed_y
|0697EF| db   0,   9,  17,  22,  24,  22,  17,   9
|0697F7| db   0,  -9, -17, -22, -24, -22, -17,  -9

.direction
|0697FF| db $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
|069807| db $00, $01, $02, $03, $04, $05, $06, $07

endpool

;---------------------------------------------------------------------------------------------------

Sprite_18_MiniMoldorm:
|06980F| JSL SpriteDraw_MiniMoldorm
|069813| JSR CheckIfActive_bank06

|069816| LDA.w $0EA0,X
|069819| BEQ .not_recoiling

|06981B| JSR SpritePrep_MiniMoldorm_bounce

.not_recoiling
|06981E| JSR HandleSpriteRecoil_bank06
|069821| JSR CheckDamageToAndFromLink_bank06

|069824| INC.w $0E80,X

|069827| LDY.w $0DE0,X

|06982A| LDA.w .speed_x,Y
|06982D| STA.w $0D50,X

|069830| LDA.w .speed_y,Y
|069833| STA.w $0D40,X

|069836| JSR MoveSpriteXY_bank06
|069839| JSR CheckSpriteTileCollision

|06983C| LDA.w $0E70,X
|06983F| BEQ .no_tile_collision

|069841| JSL GetRandomNumber
|069845| LSR A
|069846| BCC .dont_flip

|069848| LDA.w $0EB0,X
|06984B| EOR.b #$FF
|06984D| INC A
|06984E| STA.w $0EB0,X

.dont_flip
|069851| LDY.w $0DE0,X

|069854| LDA.w .direction,Y
|069857| STA.w $0DE0,X

.no_tile_collision
|06985A| LDA.w $0D80,X
|06985D| JSL JumpTableLocal
|069861| dw MiniMoldorm_Readjust
|069863| dw MiniMoldorm_Meander
|069865| dw MiniMoldorm_TargetLink

;===================================================================================================

MiniMoldorm_Readjust:
|069867| LDA.w $0DF0,X
|06986A| BNE .exit

|06986C| INC A

|06986D| INC.w $0ED0,X

|069870| LDY.w $0ED0,X
|069873| CPY.b #$06
|069875| BNE .dont_target_link

|069877| STZ.w $0ED0,X

|06987A| INC A

.dont_target_link
|06987B| STA.w $0D80,X

|06987E| JSL GetRandomNumber
|069882| AND.b #$02
|069884| DEC A
|069885| STA.w $0EB0,X

|069888| JSL GetRandomNumber
|06988C| AND.b #$1F
|06988E| ADC.b #$20
|069890| STA.w $0DF0,X

.exit
|069893| RTS

;===================================================================================================

MiniMoldorm_Meander:
|069894| LDA.w $0DF0,X
|069897| BNE .delay

|069899| JSL GetRandomNumber
|06989D| AND.b #$0F
|06989F| ADC.b #$08
|0698A1| STA.w $0DF0,X

|0698A4| STZ.w $0D80,X

|0698A7| RTS

;---------------------------------------------------------------------------------------------------

.delay
|0698A8| AND.b #$03
|0698AA| BNE .exit

|0698AC| LDA.w $0DE0,X
|0698AF| CLC
|0698B0| ADC.w $0EB0,X
|0698B3| AND.b #$0F
|0698B5| STA.w $0DE0,X

.exit
|0698B8| RTS

;===================================================================================================

MiniMoldorm_TargetLink:
|0698B9| TXA
|0698BA| EOR.b $1A
|0698BC| AND.b #$03
|0698BE| BNE .exit

|0698C0| LDA.b #$1F
|0698C2| JSR ApplySpeedTowardsLink
|0698C5| JSL ConvertVelocityToAngle

|0698C9| CMP.w $0DE0,X
|0698CC| BNE .not_at_target

|0698CE| STZ.w $0D80,X

|0698D1| LDA.b #$30
|0698D3| STA.w $0DF0,X

|0698D6| RTS

;---------------------------------------------------------------------------------------------------

.not_at_target
|0698D7| PHP

|0698D8| LDA.w $0DE0,X

|0698DB| PLP
|0698DC| BMI .decrease_angle

|0698DE| INC A
|0698DF| INC A

.decrease_angle
|0698E0| DEC A
|0698E1| AND.b #$0F
|0698E3| STA.w $0DE0,X

.exit
|0698E6| RTS

;===================================================================================================

Moblin_Directions:
|0698E7| db $06, $04, $00, $02

;===================================================================================================

Sprite_12_Moblin:
|0698EB| JSR SpriteDraw_Moblin

|0698EE| JSR CheckIfActive_bank06
|0698F1| JSR HandleSpriteRecoil_bank06
|0698F4| JSR CheckDamageToAndFromLink_bank06

|0698F7| JSR MoveSpriteXY_bank06
|0698FA| JSR CheckSpriteTileCollision

|0698FD| LDA.w $0D80,X
|069900| JSL JumpTableLocal
|069904| dw Moblin_Halted
|069906| dw Moblin_Walk
|069908| dw Moblin_ThrowSpear

;===================================================================================================

pool Moblin_Halted

.timer
|06990A| db  16,  32,  48,  64

endpool

;---------------------------------------------------------------------------------------------------

Moblin_Halted:
|06990E| LDA.w $0DF0,X
|069911| BNE .exit

|069913| JSL GetRandomNumber
|069917| AND.b #$03
|069919| TAY

|06991A| LDA.w .timer,Y
|06991D| STA.w $0DF0,X

|069920| INC.w $0D80,X

|069923| LDA.w $0EB0,X
|069926| STA.w $0DE0,X

|069929| TAY

|06992A| LDA.w SluggulaMoblinSpeed_X,Y
|06992D| STA.w $0D50,X

|069930| LDA.w SluggulaMoblinSpeed_Y,Y
|069933| STA.w $0D40,X

.exit
|069936| RTS

;===================================================================================================

pool Moblin_Walk

.head_direction
|069937| db $02, $03 ; right
|069939| db $02, $03 ; left
|06993B| db $00, $01 ; down
|06993D| db $00, $01 ; up

endpool

;---------------------------------------------------------------------------------------------------

Moblin_Walk:
|06993F| LDA.w $0E80,X
|069942| AND.b #$01

|069944| LDY.w $0DE0,X

|069947| CLC
|069948| ADC.w Moblin_Directions,Y
|06994B| STA.w $0DC0,X

|06994E| LDA.b #$0C
|069950| LDY.w $0E70,X
|069953| BNE .no_tile_collision

|069955| LDA.w $0DF0,X
|069958| BNE .delay

|06995A| JSR GetDirectionTowardsLink

|06995D| TYA
|06995E| CMP.w $0DE0,X
|069961| BNE .dont_stop

|069963| INC.w $0D80,X

|069966| LDA.b #$20
|069968| STA.w $0DF0,X

|06996B| BRA .stop

.dont_stop
|06996D| LDA.b #$10

;---------------------------------------------------------------------------------------------------

.no_tile_collision
|06996F| STA.w $0DF0,X

|069972| JSL GetRandomNumber
|069976| AND.b #$01
|069978| STA.b $00

|06997A| LDA.w $0DE0,X
|06997D| ASL A
|06997E| ORA.b $00
|069980| TAY

|069981| LDA.w .head_direction,Y
|069984| STA.w $0EB0,X

|069987| STZ.w $0D80,X

|06998A| INC.w $0DB0,X

|06998D| LDA.w $0DB0,X
|069990| CMP.b #$04
|069992| BNE .stop

|069994| STZ.w $0DB0,X

|069997| JSR GetDirectionTowardsLink

|06999A| TYA
|06999B| STA.w $0EB0,X

;---------------------------------------------------------------------------------------------------

.stop
|06999E| JSR ZeroVelocityXYZ_bank06

|0699A1| RTS

;---------------------------------------------------------------------------------------------------

.delay
|0699A2| DEC.w $0E90,X
|0699A5| BPL .exit

|0699A7| LDA.b #$0B
|0699A9| STA.w $0E90,X

|0699AC| INC.w $0E80,X

.exit
|0699AF| RTS

;===================================================================================================

pool Moblin_ThrowSpear

.anim_step
|0699B0| db $0B, $0A, $08, $09
|0699B4| db $07, $05, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

Moblin_ThrowSpear:
|0699B8| LDY.w $0DE0,X

|0699BB| LDA.w $0DF0,X
|0699BE| BNE .delay

|0699C0| STZ.w $0D80,X

.delay
|0699C3| CMP.b #$10
|0699C5| BCS .animate

|0699C7| CMP.b #$0F
|0699C9| BNE .dont_throw

|0699CB| PHY
|0699CC| JSR Moblin_MaterializeSpear
|0699CF| PLY

|0699D0| LDA.b #$20
|0699D2| STA.w $0E00,X

.dont_throw
|0699D5| INY
|0699D6| INY
|0699D7| INY
|0699D8| INY

.animate
|0699D9| LDA.w .anim_step,Y
|0699DC| STA.w $0DC0,X

|0699DF| RTS

;===================================================================================================

pool Moblin_MaterializeSpear

.offset_x_low
|0699E0| db  11,  -2,  -3,  11

.offset_y_low
|0699E4| db  -3,  -3,   3, -11

.offset_y_high
|0699E8| db  -1,  -1,   0,  -1

.speed_x ; bleeds into next
|0699EC| db  32, -32

.speed_y
|0699EE| db   0,   0,  32, -32

endpool

;---------------------------------------------------------------------------------------------------

Moblin_MaterializeSpear:
|0699F2| LDA.b #$1B ; SPRITE 1B
|0699F4| JSL SpawnSpriteDynamically
|0699F8| BMI .no_space

|0699FA| LDA.b #$03
|0699FC| STA.w $0D90,Y

|0699FF| PHX

|069A00| LDA.w $0DE0,X
|069A03| STA.w $0DE0,Y

|069A06| TAX

|069A07| LDA.b $00
|069A09| CLC
|069A0A| ADC.w .offset_x_low,X
|069A0D| STA.w $0D10,Y

|069A10| LDA.b $01
|069A12| ADC.w Hinox_ThrowBomb.offset_x_high,X ; [WTF] excuse me?
|069A15| STA.w $0D30,Y

|069A18| LDA.b $02
|069A1A| CLC
|069A1B| ADC.w .offset_y_low,X
|069A1E| STA.w $0D00,Y

|069A21| LDA.b $03
|069A23| ADC.w .offset_y_high,X
|069A26| STA.w $0D20,Y

|069A29| LDA.w .speed_x,X
|069A2C| STA.w $0D50,Y

|069A2F| LDA.w .speed_y,X
|069A32| STA.w $0D40,Y

|069A35| PLX

.no_space
|069A36| RTS

;===================================================================================================

pool SpriteDraw_Moblin

.oam_groups
; group00
|069A37| dw  -2,   3 : db $91, $80, $00, $00
|069A3F| dw  -2,  11 : db $90, $80, $00, $00
|069A47| dw   0, -10 : db $86, $00, $00, $02
|069A4F| dw   0,   0 : db $8A, $00, $00, $02

; group01
|069A57| dw  -2,   7 : db $91, $80, $00, $00
|069A5F| dw  -2,  15 : db $90, $80, $00, $00
|069A67| dw   0, -10 : db $86, $00, $00, $02
|069A6F| dw   0,   0 : db $8A, $40, $00, $02

; group02
|069A77| dw   0,  -9 : db $84, $00, $00, $02
|069A7F| dw   0,   0 : db $A0, $00, $00, $02
|069A87| dw  11,  -5 : db $90, $00, $00, $00
|069A8F| dw  11,   3 : db $91, $00, $00, $00

; group03
|069A97| dw   0,  -9 : db $84, $00, $00, $02
|069A9F| dw   0,   0 : db $A0, $40, $00, $02
|069AA7| dw  11,  -8 : db $90, $00, $00, $00
|069AAF| dw  11,   0 : db $91, $00, $00, $00

; group04
|069AB7| dw  -4,   8 : db $80, $00, $00, $00
|069ABF| dw   4,   8 : db $81, $00, $00, $00
|069AC7| dw   0,  -9 : db $88, $00, $00, $02
|069ACF| dw   0,   0 : db $A6, $00, $00, $02

; group05
|069AD7| dw  -9,   6 : db $80, $00, $00, $00
|069ADF| dw  -1,   6 : db $81, $00, $00, $00
|069AE7| dw   0,  -8 : db $88, $00, $00, $02
|069AEF| dw   0,   0 : db $A4, $00, $00, $02

; group06
|069AF7| dw  12,   8 : db $80, $40, $00, $00
|069AFF| dw   4,   8 : db $81, $40, $00, $00
|069B07| dw   0,  -9 : db $88, $40, $00, $02
|069B0F| dw   0,   0 : db $A6, $40, $00, $02

; group07
|069B17| dw  17,   6 : db $80, $40, $00, $00
|069B1F| dw   9,   6 : db $81, $40, $00, $00
|069B27| dw   0,  -8 : db $88, $40, $00, $02
|069B2F| dw   0,   0 : db $A4, $40, $00, $02

; group08
|069B37| dw  -3,  -5 : db $91, $80, $00, $00
|069B3F| dw  -3,   3 : db $90, $80, $00, $00
|069B47| dw   0, -10 : db $86, $00, $00, $02
|069B4F| dw   0,   0 : db $A8, $00, $00, $02

; group09
|069B57| dw  11, -11 : db $90, $00, $00, $00
|069B5F| dw  11,  -3 : db $91, $00, $00, $00
|069B67| dw   0,  -9 : db $84, $00, $00, $02
|069B6F| dw   0,   0 : db $82, $40, $00, $02

; group0A
|069B77| dw  -2,  -3 : db $80, $00, $00, $00
|069B7F| dw   6,  -3 : db $81, $00, $00, $00
|069B87| dw   0,  -9 : db $88, $00, $00, $02
|069B8F| dw   0,   0 : db $A2, $00, $00, $02

; group0B
|069B97| dw  10,  -3 : db $80, $40, $00, $00
|069B9F| dw   2,  -3 : db $81, $40, $00, $00
|069BA7| dw   0,  -9 : db $88, $40, $00, $02
|069BAF| dw   0,   0 : db $A2, $40, $00, $02

;---------------------------------------------------------------------------------------------------

.buffer_offset
|069BB7| db $08, $08, $00, $00
|069BBB| db $08, $08, $08, $08
|069BBF| db $08, $08, $08, $08

.char
|069BC3| db $88, $88, $86, $84

.hflip
|069BC7| db $40, $00, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Moblin:
|069BCB| LDA.b #$00
|069BCD| XBA
|069BCE| LDA.w $0DC0,X

|069BD1| REP #$20

|069BD3| ASL A ; x32
|069BD4| ASL A
|069BD5| ASL A
|069BD6| ASL A
|069BD7| ASL A

|069BD8| ADC.w #.oam_groups
|069BDB| STA.b $08

|069BDD| SEP #$20

|069BDF| LDA.b #$04
|069BE1| JSL TabulatedSpriteDraw

;---------------------------------------------------------------------------------------------------

|069BE5| LDA.w $0F00,X
|069BE8| BNE .exit

|069BEA| LDA.w $0E00,X
|069BED| BEQ .no_spear

; Dumb code to delete the spear
|069BEF| LDY.b #$03

.next_object
|069BF1| LDA.b ($92),Y
|069BF3| AND.b #$02
|069BF5| BNE .skip_object

|069BF7| PHY

|069BF8| TYA
|069BF9| ASL A
|069BFA| ASL A
|069BFB| TAY

|069BFC| INY
|069BFD| LDA.b #$F0
|069BFF| STA.b ($90),Y

|069C01| PLY

.skip_object
|069C02| DEY
|069C03| BPL .next_object

;---------------------------------------------------------------------------------------------------

; dumb code to turn the head
.no_spear
|069C05| LDY.w $0DC0,X

|069C08| LDA.w .buffer_offset,Y
|069C0B| TAY

|069C0C| PHX

|069C0D| LDA.w $0EB0,X
|069C10| TAX

|069C11| LDA.w .char,X
|069C14| INY
|069C15| INY
|069C16| STA.b ($90),Y

|069C18| INY
|069C19| LDA.b ($90),Y

|069C1B| AND.b #$BF
|069C1D| ORA.w .hflip,X
|069C20| STA.b ($90),Y

|069C22| PLX

|069C23| JMP.w DrawSpriteShadow

.exit
|069C26| RTS

;===================================================================================================

pool Sprite_0E_Snapdragon

.anim_step
|069C27| db $04, $00, $06, $02

endpool

;---------------------------------------------------------------------------------------------------

Sprite_0E_Snapdragon:
|069C2B| LDY.w $0DE0,X

|069C2E| LDA.w $0DA0,X
|069C31| CLC
|069C32| ADC.w .anim_step,Y
|069C35| STA.w $0DC0,X

|069C38| JSR SpriteDraw_Snapdragon
|069C3B| JSR CheckIfActive_bank06
|069C3E| JSR HandleSpriteRecoil_bank06
|069C41| JSR CheckDamageToAndFromLink_bank06

|069C44| STZ.w $0DA0,X

|069C47| LDA.w $0D80,X
|069C4A| JSL JumpTableLocal
|069C4E| dw Snapdragon_Halted
|069C50| dw Snapdragon_MoveAround

;===================================================================================================

SnapdragonSpeedX:
|069C52| db   8,  -8,   8,  -8
|069C56| db  16, -16,  16, -16

;===================================================================================================

SnapdragonSpeedY:
|069C5A| db   8,   8,  -8,  -8
|069C5E| db  16,  16, -16, -16

;===================================================================================================

pool Snapdragon_Halted

.timer
|069C62| db  32,  48,  64,  80

endpool

;---------------------------------------------------------------------------------------------------

Snapdragon_Halted:
|069C66| LDA.w $0DF0,X
|069C69| BNE .delay

|069C6B| INC.w $0D80,X

|069C6E| JSL GetRandomNumber
|069C72| AND.b #$0C
|069C74| LSR A
|069C75| LSR A
|069C76| TAY

|069C77| LDA.w .timer,Y
|069C7A| STA.w $0DF0,X

|069C7D| DEC.w $0D90,X
|069C80| BPL .use_random_direction

|069C82| LDA.b #$03
|069C84| STA.w $0D90,X

|069C87| LDA.b #$60
|069C89| STA.w $0DF0,X

|069C8C| INC.w $0DB0,X

|069C8F| JSR GetYDisplacementFromLink

|069C92| TYA
|069C93| ASL A
|069C94| STA.b $00

|069C96| JSR GetXDisplacementFromLink
|069C99| TYA
|069C9A| ORA.b $00
|069C9C| BRA .continue

;---------------------------------------------------------------------------------------------------

.use_random_direction
|069C9E| JSL GetRandomNumber
|069CA2| AND.b #$03

.continue
|069CA4| STA.w $0DE0,X

|069CA7| RTS

;---------------------------------------------------------------------------------------------------

.delay
|069CA8| AND.b #$18
|069CAA| BEQ .exit

|069CAC| INC.w $0DA0,X

.exit
|069CAF| RTS

;===================================================================================================

Snapdragon_MoveAround:
|069CB0| INC.w $0DA0,X

|069CB3| JSR MoveSpriteXY_bank06
|069CB6| JSR CheckSpriteTileCollision

|069CB9| LDA.w $0E70,X
|069CBC| BEQ .no_tile_collision

; turn around
|069CBE| LDA.w $0DE0,X
|069CC1| EOR.b #$03
|069CC3| STA.w $0DE0,X

.no_tile_collision
|069CC6| LDY.w $0DE0,X
|069CC9| LDA.w $0DB0,X
|069CCC| BEQ .use_slow_speed

|069CCE| INY
|069CCF| INY
|069CD0| INY
|069CD1| INY

.use_slow_speed
|069CD2| LDA.w SnapdragonSpeedX,Y
|069CD5| STA.w $0D50,X

|069CD8| LDA.w SnapdragonSpeedY,Y
|069CDB| STA.w $0D40,X

|069CDE| JSR MoveSpriteZ_bank06

|069CE1| LDA.w $0F80,X
|069CE4| SEC
|069CE5| SBC.b #$04
|069CE7| STA.w $0F80,X

|069CEA| LDA.w $0F70,X
|069CED| BPL .exit

|069CEF| STZ.w $0F70,X

|069CF2| LDA.w $0DF0,X
|069CF5| BNE .delay

|069CF7| STZ.w $0D80,X
|069CFA| STZ.w $0DB0,X

|069CFD| LDA.b #$3F
|069CFF| STA.w $0DF0,X

|069D02| RTS

;---------------------------------------------------------------------------------------------------

.delay
|069D03| LDA.b #$14
|069D05| STA.w $0F80,X

.exit
|069D08| RTS

;===================================================================================================

pool SpriteDraw_Snapdragon

.oam_groups
; group00
|069D09| dw   4,  -8 : db $8F, $00, $00, $00
|069D11| dw  12,  -8 : db $9F, $00, $00, $00
|069D19| dw  -4,   0 : db $8C, $00, $00, $02
|069D21| dw   4,   0 : db $8D, $00, $00, $02

; group01
|069D29| dw   4,  -8 : db $2B, $00, $00, $00
|069D31| dw  12,  -8 : db $3B, $00, $00, $00
|069D39| dw  -4,   0 : db $28, $00, $00, $02
|069D41| dw   4,   0 : db $29, $00, $00, $02

; group02
|069D49| dw  -4,  -8 : db $3C, $00, $00, $00
|069D51| dw   4,  -8 : db $3D, $00, $00, $00
|069D59| dw  -4,   0 : db $AA, $00, $00, $02
|069D61| dw   4,   0 : db $AB, $00, $00, $02

; group03
|069D69| dw  -4,  -8 : db $3E, $00, $00, $00
|069D71| dw   4,  -8 : db $3F, $00, $00, $00
|069D79| dw  -4,   0 : db $AD, $00, $00, $02
|069D81| dw   4,   0 : db $AE, $00, $00, $02

; group04
|069D89| dw  -4,  -8 : db $9F, $40, $00, $00
|069D91| dw   4,  -8 : db $8F, $40, $00, $00
|069D99| dw  -4,   0 : db $8D, $40, $00, $02
|069DA1| dw   4,   0 : db $8C, $40, $00, $02

; group05
|069DA9| dw  -4,  -8 : db $3B, $40, $00, $00
|069DB1| dw   4,  -8 : db $2B, $40, $00, $00
|069DB9| dw  -4,   0 : db $29, $40, $00, $02
|069DC1| dw   4,   0 : db $28, $40, $00, $02

; group06
|069DC9| dw   4,  -8 : db $3D, $40, $00, $00
|069DD1| dw  12,  -8 : db $3C, $40, $00, $00
|069DD9| dw  -4,   0 : db $AB, $40, $00, $02
|069DE1| dw   4,   0 : db $AA, $40, $00, $02

; group07
|069DE9| dw   4,  -8 : db $3F, $40, $00, $00
|069DF1| dw  12,  -8 : db $3E, $40, $00, $00
|069DF9| dw  -4,   0 : db $AE, $40, $00, $02
|069E01| dw   4,   0 : db $AD, $40, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Snapdragon:
|069E09| LDA.b #$00
|069E0B| XBA
|069E0C| LDA.w $0DC0,X

|069E0F| REP #$20

|069E11| ASL A ; x32
|069E12| ASL A
|069E13| ASL A
|069E14| ASL A
|069E15| ASL A
|069E16| ADC.w #.oam_groups
|069E19| STA.b $08

|069E1B| SEP #$20

|069E1D| LDA.b #$04
|069E1F| JSL TabulatedSpriteDraw

|069E23| JMP.w DrawSpriteShadow

;===================================================================================================

Sprite_22_Ropa:
|069E26| JSR SpriteDraw_Ropa
|069E29| JSR CheckIfActive_bank06
|069E2C| JSR HandleSpriteRecoil_bank06
|069E2F| JSR CheckDamageToAndFromLink_bank06

|069E32| INC.w $0E80,X

|069E35| LDA.w $0E80,X
|069E38| LSR A
|069E39| LSR A
|069E3A| LSR A
|069E3B| AND.b #$03
|069E3D| STA.w $0DC0,X

|069E40| LDA.w $0D80,X
|069E43| JSL JumpTableLocal
|069E47| dw Ropa_Halted
|069E49| dw Ropa_Pounce

;===================================================================================================

Ropa_Halted:
|069E4B| LDA.w $0DF0,X
|069E4E| BNE .exit

|069E50| LDA.b #$10
|069E52| JSR ApplySpeedTowardsLink

|069E55| JSL GetRandomNumber
|069E59| AND.b #$0F
|069E5B| ADC.b #$14
|069E5D| STA.w $0F80,X

|069E60| INC.w $0D80,X

.exit
|069E63| RTS

;===================================================================================================

Ropa_Pounce:
|069E64| JSR MoveSpriteXY_bank06
|069E67| JSR CheckSpriteTileCollision

|069E6A| LDA.w $0E70,X
|069E6D| BEQ .air_borne

|069E6F| JSR ZeroVelocityXY_bank06

.air_borne
|069E72| JSR MoveSpriteZ_bank06

|069E75| DEC.w $0F80,X
|069E78| DEC.w $0F80,X

|069E7B| LDA.w $0F70,X
|069E7E| BPL .exit

|069E80| STZ.w $0F70,X

|069E83| LDA.b #$30
|069E85| STA.w $0DF0,X

|069E88| STZ.w $0D80,X

.exit
|069E8B| RTS

;===================================================================================================

pool SpriteDraw_Ropa

.oam_groups
; group00
|069E8C| dw   0,  -8 : db $26, $00, $00, $00
|069E94| dw   8,  -8 : db $27, $00, $00, $00
|069E9C| dw   0,   0 : db $08, $00, $00, $02

; group01
|069EA4| dw   0,  -8 : db $36, $00, $00, $00
|069EAC| dw   8,  -8 : db $37, $00, $00, $00
|069EB4| dw   0,   0 : db $0A, $00, $00, $02

; group02
|069EBC| dw   0,  -8 : db $27, $40, $00, $00
|069EC4| dw   8,  -8 : db $26, $40, $00, $00
|069ECC| dw   0,   0 : db $08, $40, $00, $02

; group03
|069ED4| dw   0,  -8 : db $37, $40, $00, $00
|069EDC| dw   8,  -8 : db $36, $40, $00, $00
|069EE4| dw   0,   0 : db $08, $40, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Ropa:
|069EEC| LDA.b #$00
|069EEE| XBA
|069EEF| LDA.w $0DC0,X

|069EF2| REP #$20

|069EF4| ASL A
|069EF5| ASL A
|069EF6| ASL A
|069EF7| STA.b $00

|069EF9| ASL A
|069EFA| ADC.b $00
|069EFC| ADC.w #.oam_groups
|069EFF| STA.b $08

|069F01| SEP #$20

|069F03| LDA.b #$03
|069F05| JSL TabulatedSpriteDraw

|069F09| JMP.w DrawSpriteShadow

;===================================================================================================

Sprite_11_Hinox:
|069F0C| JSR SpriteDraw_Hinox
|069F0F| JSR CheckIfActive_bank06

|069F12| LDA.w $0EA0,X
|069F15| BEQ .not_recoiling

|069F17| JSR Hinox_FaceLink

|069F1A| LDA.b #$02
|069F1C| STA.w $0D80,X

|069F1F| LDA.b #$30
|069F21| STA.w $0DF0,X

.not_recoiling
|069F24| JSR HandleSpriteRecoil_bank06
|069F27| JSR CheckDamageToAndFromLink_bank06

|069F2A| LDA.w $0D80,X
|069F2D| JSL JumpTableLocal
|069F31| dw Hinox_Halted
|069F33| dw Hinox_Walk
|069F35| dw Hinox_ThrowBomb

;===================================================================================================

pool Hinox_ThrowBomb

.anim_step
|069F37| db $0B, $0A, $08, $09
|069F3B| db $07, $05, $01, $03

.offset_x_low
|069F3F| db   8,  -8, -13,  13

;---------------------------------------------------------------------------------------------------

#CuccoSwarmSpeed:
.offset_x_high
|069F43| db   0,  -1,  -1,   0

.offset_y_low
|069F47| db -11, -11, -16, -16

.speed_x ; bleeds into next
|069F4B| db  24, -24

.speed_y
|069F4D| db   0,   0,  24, -24

endpool

;---------------------------------------------------------------------------------------------------

Hinox_ThrowBomb:
|069F51| LDA.w $0DF0,X
|069F54| BNE .delay

|069F56| STZ.w $0D80,X

|069F59| LDA.b #$02
|069F5B| STA.w $0DF0,X

|069F5E| RTS

;---------------------------------------------------------------------------------------------------

.delay
|069F5F| CMP.b #$20
|069F61| BNE .dont_throw

|069F63| LDA.b #$4A ; SPRITE 4A
|069F65| JSL SpawnSpriteDynamically
|069F69| BMI .no_space

|069F6B| JSL TransmuteSpriteToBomb

|069F6F| LDA.b #$40
|069F71| STA.w $0E00,Y

|069F74| PHX

|069F75| LDA.w $0DE0,X
|069F78| TAX

|069F79| LDA.b $00
|069F7B| CLC
|069F7C| ADC.w .offset_x_low,X
|069F7F| STA.w $0D10,Y

|069F82| LDA.b $01
|069F84| ADC.w .offset_x_high,X
|069F87| STA.w $0D30,Y

|069F8A| LDA.b $02
|069F8C| CLC
|069F8D| ADC.w .offset_y_low,X
|069F90| STA.w $0D00,Y

|069F93| LDA.b $03
|069F95| ADC.b #$FF
|069F97| STA.w $0D20,Y

|069F9A| LDA.w .speed_x,X
|069F9D| STA.w $0D50,Y

|069FA0| LDA.w .speed_y,X
|069FA3| STA.w $0D40,Y

|069FA6| PLX

|069FA7| LDA.b #$28
|069FA9| STA.w $0F80,Y

.no_space
|069FAC| RTS

;---------------------------------------------------------------------------------------------------

.dont_throw
|069FAD| LDY.w $0DE0,X
|069FB0| BCS .dont_adjust_arm

|069FB2| INY
|069FB3| INY
|069FB4| INY
|069FB5| INY

.dont_adjust_arm
|069FB6| LDA.w .anim_step,Y
|069FB9| STA.w $0DC0,X

|069FBC| RTS

;===================================================================================================

HinoxSpeedX:
; bleeds into next
|069FBD| db   8,  -8

HinoxSpeedY:
|069FBF| db   0,   0,   8,  -8

;===================================================================================================

Hinox_Halted:
|069FC3| LDA.w $0DF0,X
|069FC6| BNE EXIT_06A02B

|069FC8| JSL GetRandomNumber
|069FCC| AND.b #$03
|069FCE| BNE .change_direction

|069FD0| LDA.b #$02
|069FD2| STA.w $0D80,X

|069FD5| LDA.b #$40
|069FD7| STA.w $0DF0,X

|069FDA| RTS

.change_direction
|069FDB| INC.w $0DB0,X

|069FDE| LDA.w $0DB0,X
|069FE1| CMP.b #$04
|069FE3| BNE Hinox_PickRandomDirection

|069FE5| STZ.w $0DB0,X

;===================================================================================================

Hinox_FaceLink:
|069FE8| JSR GetDirectionTowardsLink

|069FEB| TYA
|069FEC| JSR Hinox_SetDirection

|069FEF| ASL.w $0D50,X
|069FF2| ASL.w $0D40,X

|069FF5| RTS

;===================================================================================================

pool Hinox_PickRandomDirection

.direction
|069FF6| db $02, $03, $03, $02
|069FFA| db $00, $01, $01, $00

endpool

;---------------------------------------------------------------------------------------------------

Hinox_PickRandomDirection:
|069FFE| JSL GetRandomNumber
|06A002| LSR A

|06A003| LDA.w $0DE0,X
|06A006| ROL A
|06A007| TAY

|06A008| LDA.w .direction,Y

;===================================================================================================

Hinox_SetDirection:
|06A00B| STA.w $0DE0,X

|06A00E| JSL GetRandomNumber
|06A012| AND.b #$3F
|06A014| ADC.b #$60
|06A016| STA.w $0DF0,X

|06A019| INC.w $0D80,X

|06A01C| LDY.w $0DE0,X

|06A01F| LDA.w HinoxSpeedX,Y
|06A022| STA.w $0D50,X

|06A025| LDA.w HinoxSpeedY,Y
|06A028| STA.w $0D40,X

;---------------------------------------------------------------------------------------------------

#EXIT_06A02B:
|06A02B| RTS

;===================================================================================================

pool Hinox_Walk

.anim_step
|06A02C| db $06, $04, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

Hinox_Walk:
|06A030| LDA.w $0DF0,X
|06A033| BNE .delay

.reset_ai
|06A035| LDA.b #$10
|06A037| STA.w $0DF0,X

|06A03A| STZ.w $0D80,X

|06A03D| RTS

.delay
|06A03E| DEC.w $0D90,X
|06A041| BPL .delay_tick

|06A043| LDA.b #$0B
|06A045| STA.w $0D90,X

|06A048| INC.w $0E80,X

.delay_tick
|06A04B| JSR MoveSpriteXY_bank06
|06A04E| JSR CheckSpriteTileCollision

|06A051| LDA.w $0E70,X
|06A054| BEQ .no_tile_collision
|06A056| BRA .reset_ai

.no_tile_collision
|06A058| LDA.w $0E80,X
|06A05B| AND.b #$01
|06A05D| STA.b $00

|06A05F| LDY.w $0DE0,X

|06A062| LDA.w .anim_step,Y
|06A065| CLC
|06A066| ADC.b $00
|06A068| STA.w $0DC0,X

|06A06B| RTS

;===================================================================================================
; TODO is all of this used?
;===================================================================================================
pool SpriteDraw_Hinox

.oam_groups

.group00
|06A06C| dw   0, -13 : db $00, $06, $00, $02
|06A074| dw  -8,  -5 : db $24, $06, $00, $02
|06A07C| dw   8,  -5 : db $24, $46, $00, $02
|06A084| dw   0,   1 : db $06, $06, $00, $02

.group01
|06A08C| dw   0, -13 : db $00, $06, $00, $02
|06A094| dw  -8,  -5 : db $24, $06, $00, $02
|06A09C| dw   8,  -5 : db $24, $46, $00, $02
|06A0A4| dw   0,   1 : db $06, $46, $00, $02

.group02
|06A0AC| dw  -8,  -6 : db $24, $06, $00, $02
|06A0B4| dw   8,  -6 : db $24, $46, $00, $02
|06A0BC| dw   0,   0 : db $06, $06, $00, $02
|06A0C4| dw   0, -13 : db $04, $06, $00, $02

.group03
|06A0CC| dw  -8,  -6 : db $24, $06, $00, $02
|06A0D4| dw   8,  -6 : db $24, $46, $00, $02
|06A0DC| dw   0,   0 : db $06, $46, $00, $02
|06A0E4| dw   0, -13 : db $04, $06, $00, $02

.group04
|06A0EC| dw  -3, -13 : db $02, $06, $00, $02
|06A0F4| dw   0,  -8 : db $0C, $06, $00, $02
|06A0FC| dw   0,   0 : db $1C, $06, $00, $02

.group05
|06A104| dw  -3, -12 : db $02, $06, $00, $02
|06A10C| dw   0,  -8 : db $0E, $06, $00, $02
|06A114| dw   0,   0 : db $1E, $06, $00, $02

.group06
|06A11C| dw   3, -13 : db $02, $46, $00, $02
|06A124| dw   0,  -8 : db $0C, $46, $00, $02
|06A12C| dw   0,   0 : db $1C, $46, $00, $02

.group07
|06A134| dw   3, -12 : db $02, $46, $00, $02
|06A13C| dw   0,  -8 : db $0E, $46, $00, $02
|06A144| dw   0,   0 : db $1E, $46, $00, $02

.group08
|06A14C| dw -13, -16 : db $6E, $05, $00, $02
|06A154| dw   0, -13 : db $00, $06, $00, $02
|06A15C| dw  -8,  -5 : db $20, $06, $00, $02
|06A164| dw   8,  -5 : db $24, $46, $00, $02
|06A16C| dw   0,   1 : db $06, $06, $00, $02

.group09
|06A174| dw  -8,  -5 : db $24, $06, $00, $02
|06A17C| dw   8,  -5 : db $20, $46, $00, $02
|06A184| dw   0,   1 : db $06, $06, $00, $02
|06A18C| dw   0, -13 : db $04, $06, $00, $02
|06A194| dw  13, -16 : db $6E, $05, $00, $02

.group0A
|06A19C| dw  -8, -11 : db $6E, $05, $00, $02
|06A1A4| dw  -3, -13 : db $02, $06, $00, $02
|06A1AC| dw   0,   0 : db $22, $06, $00, $02
|06A1B4| dw   0,  -8 : db $0C, $06, $00, $02

.group0B
|06A1BC| dw   8, -11 : db $6E, $05, $00, $02
|06A1C4| dw   3, -13 : db $02, $46, $00, $02
|06A1CC| dw   0,   0 : db $22, $46, $00, $02
|06A1D4| dw   0,  -8 : db $0C, $46, $00, $02

;---------------------------------------------------------------------------------------------------

.oam_group_pointers
|06A1DC| dw .group00
|06A1DE| dw .group01
|06A1E0| dw .group02
|06A1E2| dw .group03
|06A1E4| dw .group04
|06A1E6| dw .group05
|06A1E8| dw .group06
|06A1EA| dw .group07
|06A1EC| dw .group08
|06A1EE| dw .group09
|06A1F0| dw .group0A
|06A1F2| dw .group0B

;---------------------------------------------------------------------------------------------------

.oam_group_size
|06A1F4| db 4
|06A1F5| db 4
|06A1F6| db 4
|06A1F7| db 4
|06A1F8| db 3
|06A1F9| db 3
|06A1FA| db 3
|06A1FB| db 3
|06A1FC| db 5
|06A1FD| db 5
|06A1FE| db 4
|06A1FF| db 4

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Hinox:
|06A200| LDA.w $0DC0,X
|06A203| PHA

|06A204| ASL A
|06A205| TAY

|06A206| REP #$20

|06A208| LDA.w .oam_group_pointers,Y
|06A20B| STA.b $08

|06A20D| SEP #$20

|06A20F| PLY

|06A210| LDA.w .oam_group_size,Y

|06A213| JSL TabulatedSpriteDraw

|06A217| JMP.w DrawSpriteShadow

;===================================================================================================

PositiveAndNegativeOne:
|06A21A| db  1, -1

;===================================================================================================

BariSpeed:

.x
|06A21C| db   0,   8,  11,  14
|06A220| db  16,  14,  11,   8
|06A224| db   0,  -8, -11, -14
|06A228| db -16, -14, -11,  -8

.y
|06A22C| db -16, -14, -11,  -8
|06A230| db   0,   8,  11,  14
|06A234| db  16,  14,  11,   8
|06A238| db   0,  -9, -11, -14

;===================================================================================================

BariSplit:
.offset_x
|06A23C| db   0,   8

.speed_x
|06A23E| db -32,  32

;===================================================================================================

BariWiggle:
|06A240| db   8,  -8

;===================================================================================================

BariAnimStep:
|06A242| db $00, $03

;===================================================================================================

Sprite_23_RedBari:
Sprite_24_BlueBari:
|06A244| LDA.w $0DB0,X
|06A247| BEQ Bari_JustDraw

|06A249| BPL RedBiri

;===================================================================================================

Bari_Main:
|06A24B| LDA.w $0EB0,X
|06A24E| CMP.b #$10
|06A250| BNE .delay_tile_collision

|06A252| LDA.b #$FF
|06A254| STA.w $0D50,X
|06A257| STA.w $0E30,X

|06A25A| JSR CheckSpriteTileCollision

|06A25D| STZ.w $0E30,X

|06A260| LDA.w $0FA5 ; TILETYPE 00
|06A263| BNE .collision

|06A265| STZ.w $0DB0,X
|06A268| STZ.w $0BA0,X

|06A26B| JMP.w Bari_RandomlySetTimer2

.collision
|06A26E| STA.w $0BA0,X

|06A271| RTS

.delay_tile_collision
|06A272| INC.w $0EB0,X

|06A275| RTS

;===================================================================================================

RedBiri:
|06A276| JSR SpriteDraw_SingleSmall

|06A279| BRA BariAndBiri_Main

;===================================================================================================

Bari_JustDraw:
|06A27B| LDA.w $0DC0,X
|06A27E| CMP.b #$02
|06A280| BCC .not_electrified

|06A282| JSR SpriteDraw_SingleLarge

|06A285| BRA BariAndBiri_Main

.not_electrified
|06A287| JSR SpriteDraw_Bari

;===================================================================================================

BariAndBiri_Main:
|06A28A| JSR CheckIfActive_bank06
|06A28D| JSR HandleSpriteRecoil_bank06

|06A290| LDA.w $0E10,X
|06A293| BNE Biri_Recoiling

|06A295| LDA.w $0D80,X
|06A298| CMP.b #$02
|06A29A| BNE Bari_NotSplitting

|06A29C| STA.w $0BA0,X

|06A29F| LDA.b $1A
|06A2A1| LSR A
|06A2A2| AND.b #$01
|06A2A4| TAY

|06A2A5| LDA.w BariWiggle,Y
|06A2A8| STA.w $0D50,X

|06A2AB| JSR MoveSpriteX_bank06

|06A2AE| LDA.w $0DF0,X
|06A2B1| BNE .exit

|06A2B3| JSR RedBari_Split

|06A2B6| STZ.w $0DD0,X

.exit
|06A2B9| RTS

;===================================================================================================

Bari_NotSplitting:
|06A2BA| JSR CheckDamageToAndFromLink_bank06

|06A2BD| TXA
|06A2BE| EOR.b $1A
|06A2C0| AND.b #$0F
|06A2C2| BNE .delay_rotation_tick

|06A2C4| LDA.w $0DA0,X
|06A2C7| AND.b #$01
|06A2C9| TAY

|06A2CA| LDA.w $0D90,X
|06A2CD| CLC
|06A2CE| ADC.w PositiveAndNegativeOne,Y
|06A2D1| STA.w $0D90,X

|06A2D4| JSL GetRandomNumber

|06A2D8| AND.b #$03
|06A2DA| BNE .delay_rotation_tick

|06A2DC| INC.w $0DA0,X

.delay_rotation_tick
|06A2DF| LDA.w $0D90,X
|06A2E2| AND.b #$0F
|06A2E4| TAY

|06A2E5| LDA.w BariSpeed.x,Y
|06A2E8| STA.w $0D50,X

|06A2EB| LDA.w BariSpeed.y,Y
|06A2EE| STA.w $0D40,X

|06A2F1| TXA
|06A2F2| EOR.b $1A
|06A2F4| AND.b #$03
|06A2F6| ORA.w $0DF0,X
|06A2F9| BNE Bari_Animate

;===================================================================================================

Biri_Recoiling:
|06A2FB| LDA.w $0E70,X
|06A2FE| BNE .no_tile_collision

|06A300| JSR MoveSpriteXY_bank06

.no_tile_collision
|06A303| JSR CheckSpriteTileCollision

;===================================================================================================

Bari_Animate:
|06A306| LDY.w $0DB0,X

|06A309| LDA.b $1A
|06A30B| LSR A
|06A30C| LSR A
|06A30D| LSR A
|06A30E| AND.b #$01
|06A310| CLC
|06A311| ADC.w BariAnimStep,Y
|06A314| STA.w $0DC0,X

|06A317| LDA.w $0D80,X
|06A31A| BEQ .not_electrified

|06A31C| LDA.w $0DF0,X
|06A31F| BNE .delay

|06A321| STZ.w $0D80,X

|06A324| BRA Bari_RandomlySetTimer2

.delay
|06A326| LDA.b $1A
|06A328| LSR A
|06A329| AND.b #$02

|06A32B| CLC
|06A32C| ADC.w BariAnimStep,Y
|06A32F| STA.w $0DC0,X

|06A332| RTS

;---------------------------------------------------------------------------------------------------

.not_electrified
|06A333| LDA.w $0E00,X
|06A336| BNE EXIT_06A354

|06A338| JSL GetRandomNumber
|06A33C| AND.b #$01
|06A33E| BNE Bari_RandomlySetTimer2

|06A340| LDA.b #$80
|06A342| STA.w $0DF0,X

|06A345| INC.w $0D80,X

|06A348| RTS

;===================================================================================================

Bari_RandomlySetTimer2:
|06A349| JSL GetRandomNumber
|06A34D| AND.b #$3F ; Between 128 and 192 frames
|06A34F| ADC.b #$80
|06A351| STA.w $0E00,X

;---------------------------------------------------------------------------------------------------

#EXIT_06A354:
|06A354| RTS

;===================================================================================================

RedBari_Split:
|06A355| LDA.b #$01
|06A357| STA.w $0FB5

.next_biri
|06A35A| LDA.b #$23 ; SPRITE 23
|06A35C| JSL SpawnSpriteDynamically
|06A360| BMI .no_space

|06A362| JSL SetSpawnedSpriteCoordinates

|06A366| LDA.b #$33
|06A368| STA.w $0E60,Y

|06A36B| LDA.b #$03
|06A36D| STA.w $0F50,Y

|06A370| LDA.b #$01
|06A372| STA.w $0F60,Y
|06A375| STA.w $0DB0,Y

|06A378| PHX

|06A379| LDX.w $0FB5

|06A37C| LDA.b $00
|06A37E| CLC
|06A37F| ADC.w BariSplit.offset_x,X
|06A382| STA.w $0D10,Y

|06A385| LDA.b $01
|06A387| ADC.b #$00
|06A389| STA.w $0D30,Y

|06A38C| LDA.w BariSplit.speed_x,X
|06A38F| STA.w $0D50,Y

|06A392| LDA.b #$08
|06A394| STA.w $0E10,Y

|06A397| LDA.b #$40
|06A399| STA.w $0E00,Y

|06A39C| PLX

.no_space
|06A39D| DEC.w $0FB5
|06A3A0| BPL .next_biri

|06A3A2| RTS

;===================================================================================================

pool SpriteDraw_Bari

.oam_groups
; group00
|06A3A3| dw   0,   0 : db $22, $00, $00, $00
|06A3AB| dw   8,   0 : db $22, $40, $00, $00
|06A3B3| dw   0,   8 : db $32, $00, $00, $00
|06A3BB| dw   8,   8 : db $32, $40, $00, $00

; group01
|06A3C3| dw   0,   0 : db $23, $00, $00, $00
|06A3CB| dw   8,   0 : db $23, $40, $00, $00
|06A3D3| dw   0,   8 : db $33, $00, $00, $00
|06A3DB| dw   8,   8 : db $33, $40, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Bari:
|06A3E3| LDA.b #$00
|06A3E5| XBA
|06A3E6| LDA.w $0DC0,X

|06A3E9| REP #$20

|06A3EB| ASL A ; x32
|06A3EC| ASL A
|06A3ED| ASL A
|06A3EE| ASL A
|06A3EF| ASL A

|06A3F0| ADC.w #.oam_groups
|06A3F3| STA.b $08

|06A3F5| SEP #$20

|06A3F7| LDA.b #$04
|06A3F9| JSL TabulatedSpriteDraw

|06A3FD| JMP.w DrawSpriteShadow

;===================================================================================================

pool Sprite_13_MiniHelmasaur

.anim_step
|06A400| db $03, $04, $03, $04
|06A404| db $02, $02, $05, $05

.flip
|06A408| db $40, $40, $00, $00
|06A40C| db $00, $40, $40, $00

endpool

;---------------------------------------------------------------------------------------------------

Sprite_13_MiniHelmasaur:
|06A410| LDA.w $0DE0,X
|06A413| ASL A
|06A414| STA.b $00

|06A416| LDA.w $0E80,X
|06A419| LSR A
|06A41A| LSR A
|06A41B| AND.b #$01

|06A41D| ORA.b $00
|06A41F| TAY

|06A420| LDA.w .anim_step,Y
|06A423| STA.w $0DC0,X

|06A426| LDA.w $0F50,X
|06A429| AND.b #$BF
|06A42B| ORA.w .flip,Y
|06A42E| STA.w $0F50,X

|06A431| TXA
|06A432| EOR.b $1A
|06A434| AND.b #$0F
|06A436| BNE .continue

;---------------------------------------------------------------------------------------------------

|06A438| LDA.w $0D50,X
|06A43B| BPL .positive_x

|06A43D| EOR.b #$FF
|06A43F| INC A

.positive_x
|06A440| STA.b $00

|06A442| LDA.w $0D40,X
|06A445| BPL .positive_y

|06A447| EOR.b #$FF
|06A449| INC A

.positive_y
|06A44A| STA.b $01

|06A44C| LDA.b $00
|06A44E| CMP.b $01

|06A450| LDA.b #$00
|06A452| LDY.w $0D50,X
|06A455| BCS .use_x_speed

|06A457| LDA.b #$02
|06A459| LDY.w $0D40,X

.use_x_speed
|06A45C| BPL .positive_choice

|06A45E| INC A

.positive_choice
|06A45F| STA.w $0DE0,X

;---------------------------------------------------------------------------------------------------

.continue
|06A462| JSR SpriteDraw_SingleLarge

|06A465| BRA MiniHelmaAndBeetleMain

;===================================================================================================
; Pretty much all of their movement code is shared with mini helmas
;===================================================================================================
Sprite_26_HardhatBeetle:
|06A467| LDA.w $0E80,X
|06A46A| LSR A
|06A46B| LSR A
|06A46C| AND.b #$01
|06A46E| STA.w $0DC0,X

|06A471| JSR SpriteDraw_HardhatBeetle

;===================================================================================================

MiniHelmaAndBeetleMain:
|06A474| JSR CheckIfActive_bank06

|06A477| INC.w $0E80,X

|06A47A| JSR HandleSpriteRecoil_bank06
|06A47D| JSR CheckDamageToAndFromLink_bank06

|06A480| LDA.w $0E70,X
|06A483| AND.b #$0F
|06A485| BEQ .no_tile_collision

|06A487| AND.b #$03
|06A489| BEQ .no_horizontal_tile_collision

|06A48B| STZ.w $0D50,X

.no_horizontal_tile_collision
|06A48E| STZ.w $0D40,X

|06A491| BRA .continue

.no_tile_collision
|06A493| JSR MoveSpriteXY_bank06

;---------------------------------------------------------------------------------------------------

.continue
|06A496| JSR CheckSpriteTileCollision

|06A499| TXA
|06A49A| EOR.b $1A
|06A49C| AND.b #$1F
|06A49E| BNE .delay_turning

|06A4A0| LDA.w $0D90,X
|06A4A3| JSR ProjectSpriteSpeedTowardsLink

|06A4A6| LDA.b $00
|06A4A8| STA.w $0DA0,X

|06A4AB| LDA.b $01
|06A4AD| STA.w $0DB0,X

;---------------------------------------------------------------------------------------------------

.delay_turning
|06A4B0| TXA
|06A4B1| EOR.b $1A
|06A4B3| AND.w $0D80,X
|06A4B6| BNE .exit

|06A4B8| LDA.w $0D40,X
|06A4BB| CMP.w $0DA0,X
|06A4BE| BPL .at_max_y_speed

|06A4C0| INC.w $0D40,X
|06A4C3| BRA .check_x_speed

.at_max_y_speed
|06A4C5| DEC.w $0D40,X

.check_x_speed
|06A4C8| LDA.w $0D50,X
|06A4CB| CMP.w $0DB0,X
|06A4CE| BPL .at_max_x_speed

|06A4D0| INC.w $0D50,X
|06A4D3| BRA .exit

.at_max_x_speed
|06A4D5| DEC.w $0D50,X

.exit
|06A4D8| RTS

;===================================================================================================

pool SpriteDraw_HardhatBeetle

.oam_groups
; group00
|06A4D9| dw   0,  -4 : db $40, $01, $00, $02
|06A4E1| dw   0,   2 : db $42, $01, $00, $02

; group01
|06A4E9| dw   0,  -5 : db $40, $01, $00, $02
|06A4F1| dw   0,   2 : db $44, $01, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_HardhatBeetle:
|06A4F9| LDA.w $0DC0,X
|06A4FC| ASL A ; x16
|06A4FD| ASL A
|06A4FE| ASL A
|06A4FF| ASL A
|06A500| ADC.b #<.oam_groups
|06A502| STA.b $08

|06A504| LDA.b #>.oam_groups
|06A506| ADC.b #$00
|06A508| STA.b $09

|06A50A| LDA.b #$02
|06A50C| JSL TabulatedSpriteDraw

|06A510| JMP.w DrawSpriteShadow_Conditional

;===================================================================================================

Sprite_15_Antifairy:
Sprite_77_Antifairy:
|06A513| JSL SpriteDraw_Antifairy
|06A517| JSR CheckIfActive_bank06
|06A51A| JSR CheckDamageToLink
|06A51D| BCC .dont_drain_magic

|06A51F| LDA.w $0DF0,X
|06A522| BNE .dont_drain_magic

|06A524| LDA.b #$10
|06A526| STA.w $0DF0,X

|06A529| LDA.l $7EF36E
|06A52D| SEC
|06A52E| SBC.b #$08
|06A530| BCS .enough_magic_to_drain

|06A532| LDA.b #$00

|06A534| BRA .skip_sfx

.enough_magic_to_drain
|06A536| LDY.b #$1D ; SFX3.1D
|06A538| STY.w $012F

.skip_sfx
|06A53B| STA.l $7EF36E

.dont_drain_magic
|06A53F| JSR MoveSpriteXY_bank06
|06A542| JSL Sprite_BounceFromTileCollision_long

|06A546| RTS

;===================================================================================================

UNREACHABLE_06A547:
|06A547| dw $FFE8, $FFF8, $0008, $0018
|06A54F| dw $FFE8, $FFF8, $0008, $0018
|06A557| dw $FFE8, $FFF8, $0008, $0018
|06A55F| dw $FFE8, $FFF8, $0008, $0018
|06A567| dw $FFEA, $FFF9, $0007, $0016
|06A56F| dw $FFEA, $FFF9, $0007, $0016
|06A577| dw $FFEA, $FFF9, $0007, $0016
|06A57F| dw $FFEA, $FFF9, $0007, $0016
|06A587| dw $FFE8, $FFE8, $FFE8, $FFE8
|06A58F| dw $FFF8, $FFF8, $FFF8, $FFF8
|06A597| dw $0008, $0008, $0008, $0008
|06A59F| dw $0018, $0018, $0018, $0018
|06A5A7| dw $FFEA, $FFEA, $FFEA, $FFEA
|06A5AF| dw $FFF9, $FFF9, $FFF9, $FFF9
|06A5B7| dw $0007, $0007, $0007, $0007
|06A5BF| dw $0016, $0016, $0016, $0016

;===================================================================================================

pool Sprite_0B_Cucco

.h_flip
|06A5C7| db $40, $00

endpool

;---------------------------------------------------------------------------------------------------

Sprite_0B_Cucco:
|06A5C9| LDA.w $0D50,X
|06A5CC| BEQ .x_speed_0

|06A5CE| ASL A
|06A5CF| ROL A
|06A5D0| AND.b #$01
|06A5D2| TAY

|06A5D3| LDA.w $0F50,X
|06A5D6| AND.b #$BF
|06A5D8| ORA.w .h_flip,Y
|06A5DB| STA.w $0F50,X

.x_speed_0
|06A5DE| JSR SpriteDraw_SingleLarge

|06A5E1| LDA.w $0EB0,X
|06A5E4| BEQ .not_easter_egg

|06A5E6| LDA.b #$3D ; SPRITE 3D
|06A5E8| STA.w $0E20,X

|06A5EB| JSL LoadSpriteProperties

|06A5EF| INC.w $0E30,X

|06A5F2| LDA.b #$30
|06A5F4| STA.w $0DF0,X

|06A5F7| LDA.b #$15 ; SFX2.15
|06A5F9| STA.w $012E
|06A5FC| STA.w $0BA0,X

|06A5FF| RTS

;---------------------------------------------------------------------------------------------------

.not_easter_egg
|06A600| LDA.w $0DD0,X
|06A603| CMP.b #$0A
|06A605| BNE .not_panic_clucking

|06A607| LDA.b #$03
|06A609| STA.w $0D80,X

|06A60C| LDA.b $11
|06A60E| BNE .not_panic_clucking

|06A610| JSR Cucco_AnimateSlow
|06A613| JSR Cucco_DrawPANIC

|06A616| LDA.b $1A
|06A618| AND.b #$0F
|06A61A| BNE .not_panic_clucking

|06A61C| JSR BawkBawk

.not_panic_clucking
|06A61F| JSR CheckIfActive_bank06

|06A622| LDA.w $0DB0,X
|06A625| BEQ Cucco_Main

;===================================================================================================

Cucco_Swarming:
|06A627| LDA.w $0F50,X
|06A62A| ORA.b #$10
|06A62C| STA.w $0F50,X

|06A62F| JSR MoveSpriteXY_bank06

|06A632| LDA.b #$0C
|06A634| STA.w $0F70,X
|06A637| STA.w $0BA0,X

|06A63A| TXA
|06A63B| EOR.b $1A
|06A63D| AND.b #$07
|06A63F| BNE .dont_damage

|06A641| JSR CheckDamageToLink

.dont_damage
|06A644| JMP.w Cucco_AnimateFast

;===================================================================================================

Cucco_Main:
|06A647| LDA.b #$FF
|06A649| STA.w $0E50,X

|06A64C| LDA.w $0DA0,X
|06A64F| CMP.b #$23
|06A651| BCC .dont_summon

|06A653| JSR SummonAvengerChicken

.dont_summon
|06A656| LDA.w $0EA0,X
|06A659| BEQ .no_more_hits

|06A65B| STZ.w $0EA0,X

|06A65E| LDA.w $0DA0,X
|06A661| CMP.b #$23
|06A663| BCS .too_hurt_to_cluck

|06A665| INC.w $0DA0,X

|06A668| JSR BawkBawk

.too_hurt_to_cluck
|06A66B| LDA.b #$02
|06A66D| STA.w $0D80,X

.no_more_hits
|06A670| JSR CheckDamageFromLink

|06A673| LDA.w $0D80,X
|06A676| BEQ Cucco_Calm

|06A678| CMP.b #$01
|06A67A| BEQ Cucco_Bouncing

|06A67C| CMP.b #$02
|06A67E| BNE .carried

|06A680| JMP.w Cucco_Flee

.carried
|06A683| JMP.w Cucco_Carried

;===================================================================================================

Cucco_Calm:
|06A686| LDA.w $0DF0,X
|06A689| BNE .delay

|06A68B| JSL GetRandomNumber
|06A68F| AND.b #$0F

|06A691| PHX

|06A692| TXY
|06A693| TAX

|06A694| LDA.l SomeRandomXSpeeds_bank05,X
|06A698| STA.w $0D50,Y

|06A69B| LDA.l SomeRandomYSpeeds_bank05,X
|06A69F| STA.w $0D40,Y

|06A6A2| PLX

|06A6A3| JSL GetRandomNumber
|06A6A7| AND.b #$1F
|06A6A9| ADC.b #$10
|06A6AB| STA.w $0DF0,X

|06A6AE| INC.w $0D80,X

.delay
|06A6B1| STZ.w $0DC0,X

;===================================================================================================

Cucco_CheckIfLifted:
|06A6B4| JSR Sprite_CheckIfLifted

|06A6B7| RTS

;===================================================================================================

Cucco_Bouncing:
|06A6B8| TXA
|06A6B9| EOR.b $1A
|06A6BB| LSR A
|06A6BC| BCC .continue

|06A6BE| JSR Cucco_DoMovement_XY
|06A6C1| BEQ .continue

|06A6C3| STZ.w $0D80,X

.continue
|06A6C6| JSR MoveSpriteZ_bank06

|06A6C9| DEC.w $0F80,X
|06A6CC| DEC.w $0F80,X

|06A6CF| LDA.w $0F70,X
|06A6D2| BPL Cucco_AnimateFast

|06A6D4| STZ.w $0F70,X

|06A6D7| LDA.w $0DF0,X
|06A6DA| BNE .delay

|06A6DC| LDA.b #$20
|06A6DE| STA.w $0DF0,X

|06A6E1| STZ.w $0D80,X

|06A6E4| RTS

.delay
|06A6E5| LDA.b #$0A
|06A6E7| STA.w $0F80,X

;===================================================================================================

Cucco_AnimateFast:
|06A6EA| INC.w $0E80,X

;===================================================================================================

Cucco_AnimateSlow:
|06A6ED| INC.w $0E80,X
|06A6F0| INC.w $0E80,X
|06A6F3| INC.w $0E80,X

|06A6F6| LDA.w $0E80,X
|06A6F9| LSR A
|06A6FA| LSR A
|06A6FB| LSR A
|06A6FC| LSR A
|06A6FD| AND.b #$01
|06A6FF| STA.w $0DC0,X
|06A702| BRA Cucco_CheckIfLifted

;===================================================================================================

Cucco_Flee:
|06A704| JSR Cucco_CheckIfLifted
|06A707| JSR Cucco_DoMovement_XY

|06A70A| STZ.w $0F70,X

|06A70D| TXA
|06A70E| EOR.b $1A
|06A710| AND.b #$1F
|06A712| BNE .dont_update_direction

;===================================================================================================

#Cucco_UpdateFleeSpeed:
|06A714| LDA.b #$10
|06A716| JSR ProjectSpriteSpeedTowardsLink

|06A719| LDA.b $00
|06A71B| EOR.b #$FF
|06A71D| INC A
|06A71E| STA.w $0D40,X

|06A721| LDA.b $01
|06A723| EOR.b #$FF
|06A725| INC A
|06A726| STA.w $0D50,X

.dont_update_direction
|06A729| INC.w $0E80,X

|06A72C| JSR Cucco_AnimateFast

;===================================================================================================

Cucco_DrawPANIC:
|06A72F| JSR GetScreenCoordinates
|06A732| JSL DrawSpriteDistress

|06A736| RTS

;===================================================================================================

DrawSpriteDistress:
|06A737| LDA.b $1A
|06A739| STA.b $06

;---------------------------------------------------------------------------------------------------

.custom
|06A73B| LDA.b #$10
|06A73D| JSL AllocateOAMInRegionA

|06A741| LDA.b $06
|06A743| AND.b #$18
|06A745| BEQ .exit

|06A747| PHX

|06A748| LDX.b #$03
|06A74A| LDY.b #$00

.next_object
|06A74C| PHX
|06A74D| PHX

|06A74E| TXA
|06A74F| ASL A
|06A750| TAX

|06A751| REP #$20

|06A753| LDA.b $00
|06A755| CLC
|06A756| ADC.l CuccoDistress.offset_x,X
|06A75A| STA.b ($90),Y

|06A75C| AND.w #$0100
|06A75F| STA.b $0E

|06A761| LDA.b $02
|06A763| CLC
|06A764| ADC.l CuccoDistress.offset_y,X

|06A768| INY
|06A769| STA.b ($90),Y

|06A76B| CLC
|06A76C| ADC.w #$0010
|06A76F| CMP.w #$0100

|06A772| SEP #$20
|06A774| BCC .on_screen

|06A776| LDA.b #$F0
|06A778| STA.b ($90),Y

.on_screen
|06A77A| PLX

|06A77B| LDA.b #$83
|06A77D| INY
|06A77E| STA.b ($90),Y

|06A780| LDA.b #$22
|06A782| INY
|06A783| STA.b ($90),Y

|06A785| PHY

|06A786| TYA
|06A787| LSR A
|06A788| LSR A
|06A789| TAY

|06A78A| LDA.b $0F
|06A78C| STA.b ($92),Y

|06A78E| PLY
|06A78F| INY

|06A790| PLX
|06A791| DEX
|06A792| BPL .next_object

;---------------------------------------------------------------------------------------------------

|06A794| PLX

.exit
|06A795| RTL

;===================================================================================================

Cucco_Carried:
|06A796| JSR Cucco_DoMovement_XYZ
|06A799| BEQ .dont_stop

|06A79B| JSR InvertSpeedXY
|06A79E| JSR MoveSpriteXY_bank06

|06A7A1| JSR HalveSpeedXY
|06A7A4| JSR HalveSpeedXY

|06A7A7| JSR BawkBawk

.dont_stop
|06A7AA| DEC.w $0F80,X

|06A7AD| LDA.w $0F70,X
|06A7B0| BPL .airborne

|06A7B2| STZ.w $0F70,X

|06A7B5| LDA.b #$02
|06A7B7| STA.w $0D80,X

|06A7BA| JMP.w Cucco_UpdateFleeSpeed

.airborne
|06A7BD| JMP.w Cucco_AnimateFast

;===================================================================================================

Cucco_DoMovement_XYZ:
|06A7C0| JSR MoveSpriteZ_bank06

;===================================================================================================

Cucco_DoMovement_XY:
|06A7C3| JSR MoveSpriteXY_bank06
|06A7C6| JSL CheckSpriteTileCollision_long

|06A7CA| RTS

;===================================================================================================

CuccoDistress:
.offset_x
|06A7CB| db  -3,  -1,   2,   0
|06A7CF| db   7,   0,  11,   0

.offset_y
|06A7D3| db  -5,  -1,  -7,  -1
|06A7D7| db  -7,  -1,  -5,  -1

;===================================================================================================

SummonAvengerChicken:
|06A7DB| TXA
|06A7DC| EOR.b $1A
|06A7DE| AND.b #$0F
|06A7E0| ORA.b $1B
|06A7E2| BNE EXIT_06A85A

|06A7E4| LDA.b #$0B ; SPRITE 0B
|06A7E6| LDY.b #$0A
|06A7E8| JSL SpawnSpriteDynamically.slot_limited
|06A7EC| BMI EXIT_06A85A

|06A7EE| PHX

|06A7EF| TYX

|06A7F0| LDA.b #$1E ; SFX3.1E
|06A7F2| JSL QueueSpriteSFX3WithPan

|06A7F6| PLX

|06A7F7| LDA.b #$01
|06A7F9| STA.w $0DB0,Y

|06A7FC| PHX

|06A7FD| JSL GetRandomNumber
|06A801| STA.b $0F

|06A803| AND.b #$02
|06A805| BEQ .enter_vertically

;---------------------------------------------------------------------------------------------------

.enter_horizontally
|06A807| LDA.b $0F
|06A809| ADC.b $E2
|06A80B| STA.w $0D10,Y

|06A80E| LDA.b $E3
|06A810| ADC.b #$00
|06A812| STA.w $0D30,Y

|06A815| LDA.b $0F
|06A817| AND.b #$01
|06A819| TAX

|06A81A| LDA.w CuccoSwarmSpeed,X
|06A81D| ADC.b $E8
|06A81F| STA.w $0D00,Y

|06A822| LDA.b $E9
|06A824| ADC.b #$00
|06A826| STA.w $0D20,Y

|06A829| BRA .continue

;---------------------------------------------------------------------------------------------------

.enter_vertically
|06A82B| LDA.b $0F
|06A82D| ADC.b $E8
|06A82F| STA.w $0D00,Y

|06A832| LDA.b $E9
|06A834| ADC.b #$00
|06A836| STA.w $0D20,Y

|06A839| LDA.b $0F
|06A83B| AND.b #$01
|06A83D| TAX

|06A83E| LDA.w CuccoSwarmSpeed,X
|06A841| ADC.b $E2
|06A843| STA.w $0D10,Y

|06A846| LDA.b $E3
|06A848| ADC.b #$00
|06A84A| STA.w $0D30,Y

;---------------------------------------------------------------------------------------------------

.continue
|06A84D| TYX

|06A84E| LDA.b #$20
|06A850| JSR ApplySpeedTowardsLink

|06A853| PLX

;===================================================================================================
; BAWK!
;===================================================================================================
BawkBawk:
|06A854| LDA.b #$30 ; SFX2.30
|06A856| JSL QueueSpriteSFX2WithPan

;---------------------------------------------------------------------------------------------------

#EXIT_06A85A:
|06A85A| RTS

;===================================================================================================

Sprite_EE_CastleMantle_bounce:
|06A85B| JSL Sprite_EE_CastleMantle

|06A85F| RTS

;===================================================================================================

pool Hoarder_Covered

.anim_step
|06A860| db $03, $04, $05, $04

.speed_x
|06A864| db -12,  12,   0,   0

.speed_y
|06A868| db   0,   0, -12,  12

endpool

;===================================================================================================

pool Hoarder_Frantic

.speed_x
|06A86C| db -16,  16, -16,  16

.speed_y
|06A870| db -16, -16,  16,  16

endpool

;===================================================================================================

Sprite_17_Hoarder:
Sprite_3E_Hoarder:
|06A874| LDA.w $0D80,X
|06A877| BEQ Hoarder_Covered

|06A879| JMP.w Hoarder_Frantic

;===================================================================================================

Hoarder_Covered:
|06A87C| JSR SpriteDraw_Hoarder
|06A87F| JSR CheckIfActive_bank06

|06A882| STZ.w $0DC0,X

|06A885| JSR GetDirectionTowardsLink

|06A888| LDA.w $0DF0,X
|06A88B| BNE .flee

|06A88D| LDA.b $0E
|06A88F| CLC
|06A890| ADC.b #$30
|06A892| CMP.b #$60
|06A894| BCS .not_close

|06A896| LDA.b $0F
|06A898| CLC
|06A899| ADC.b #$20
|06A89B| CMP.b #$40
|06A89D| BCS .not_close

|06A89F| LDA.b #$20
|06A8A1| STA.w $0DF0,X

;---------------------------------------------------------------------------------------------------

.flee
|06A8A4| LDA.w .speed_x,Y
|06A8A7| STA.w $0D50,X

|06A8AA| LDA.w .speed_y,Y
|06A8AD| STA.w $0D40,X

|06A8B0| LDA.w $0E70,X
|06A8B3| BNE .tile_collision

|06A8B5| JSR MoveSpriteXY_bank06

.tile_collision
|06A8B8| JSR CheckSpriteTileCollision
|06A8BB| JSR CheckDamageFromLink

|06A8BE| INC.w $0E80,X

|06A8C1| LDA.w $0E80,X
|06A8C4| LSR A
|06A8C5| AND.b #$03
|06A8C7| TAY

|06A8C8| LDA.w .anim_step,Y
|06A8CB| STA.w $0DC0,X

.not_close
|06A8CE| LDA.w $0E20,X
|06A8D1| CMP.b #$3E ; SPRITE 3E
|06A8D3| BNE .not_rock

|06A8D5| LDA.l $7EF354
|06A8D9| CMP.b #$01
|06A8DB| BCC .weakling

.not_rock
|06A8DD| JSL Sprite_CheckIfLifted_permissive_long

.weakling
|06A8E1| LDA.w $0DD0,X
|06A8E4| CMP.b #$09
|06A8E6| BEQ .exit

|06A8E8| LDA.b #$01

|06A8EA| LDY.w $0E20,X
|06A8ED| CPY.b #$17 ; SPRITE 17
|06A8EF| BNE .rock_hoarder

|06A8F1| INC A

.rock_hoarder
|06A8F2| STA.w $0DB0,X

|06A8F5| LDA.b #$EC ; SPRITE EC
|06A8F7| STA.w $0E20,X

|06A8FA| LSR.w $0F50,X
|06A8FD| ASL.w $0F50,X

|06A900| STZ.w $0DC0,X

;---------------------------------------------------------------------------------------------------

|06A903| LDA.b #$3E ; SPRITE 3E
|06A905| JSL SpawnSpriteDynamically
|06A909| BMI .exit

|06A90B| JSL SetSpawnedSpriteCoordinates

|06A90F| LDA.w $0E40,Y
|06A912| ASL A
|06A913| LSR A
|06A914| STA.w $0E40,Y

|06A917| LDA.b #$80
|06A919| STA.w $0E10,Y

|06A91C| LDA.b #$09
|06A91E| STA.w $0F50,Y
|06A921| STA.w $0D80,Y

.exit
|06A924| RTS

;===================================================================================================

Hoarder_Frantic:
|06A925| JSR SpriteDraw_SingleLarge
|06A928| JSR CheckIfActive_bank06
|06A92B| JSR HandleSpriteRecoil_bank06
|06A92E| JSR CheckDamageFromLink

|06A931| LDA.w $0E10,X
|06A934| BNE .no_damage

|06A936| JSR CheckDamageToLink

.no_damage
|06A939| INC.w $0E80,X

|06A93C| LDA.w $0E80,X
|06A93F| LSR A
|06A940| AND.b #$03
|06A942| TAY

|06A943| LDA.w .anim_step,Y
|06A946| STA.w $0DC0,X

|06A949| LDA.w $0F50,X
|06A94C| AND.b #$BF
|06A94E| ORA.w .h_flip,Y
|06A951| STA.w $0F50,X

|06A954| LDA.w $0E70,X
|06A957| BEQ .no_tile_collision

|06A959| LDA.b #$10
|06A95B| STA.w $0F10,X

|06A95E| JSL GetRandomNumber
|06A962| AND.b #$03
|06A964| TAY

|06A965| LDA.w Hoarder_Frantic.speed_x,Y
|06A968| STA.w $0D50,X

|06A96B| LDA.w Hoarder_Frantic.speed_y,Y
|06A96E| STA.w $0D40,X

|06A971| BRA .continue

;---------------------------------------------------------------------------------------------------

.no_tile_collision
|06A973| JSR MoveSpriteXY_bank06

.continue
|06A976| JSR CheckSpriteTileCollision

|06A979| LDA.w $0F10,X
|06A97C| BNE .dont_turn

|06A97E| TXA
|06A97F| EOR.b $1A
|06A981| AND.b #$1F
|06A983| BNE .dont_turn

|06A985| LDA.b #$10
|06A987| JSR ProjectSpriteSpeedTowardsLink

|06A98A| LDA.b $00
|06A98C| EOR.b #$FF
|06A98E| INC A
|06A98F| STA.w $0D40,X

|06A992| LDA.b $01
|06A994| EOR.b #$FF
|06A996| INC A
|06A997| STA.w $0D50,X

;---------------------------------------------------------------------------------------------------

.dont_turn
|06A99A| LDA.b $1A
|06A99C| AND.b #$01
|06A99E| BNE .exit

|06A9A0| INC.w $0ED0,X

|06A9A3| LDA.w $0ED0,X
|06A9A6| CMP.b #$C0
|06A9A8| BNE .dont_die

|06A9AA| LDA.b #$0F
|06A9AC| JSR ScheduleForBreakage.parameterized

|06A9AF| LDY.b #$01

|06A9B1| BRA .green_rupee

;---------------------------------------------------------------------------------------------------

.dont_die
|06A9B3| LDA.w $0ED0,X
|06A9B6| AND.b #$0F
|06A9B8| BNE .exit

|06A9BA| LDY.b #$00

|06A9BC| LDA.w $0EB0,X
|06A9BF| CMP.b #$06
|06A9C1| BNE .green_rupee

|06A9C3| LDA.b #$DB ; SPRITE DB
|06A9C5| BRA .spit_rupee

.green_rupee
|06A9C7| LDA.b #$D9 ; SPRITE D9

;---------------------------------------------------------------------------------------------------

.spit_rupee
|06A9C9| JSL SpawnSpriteDynamically.slot_limited
|06A9CD| BMI .exit

|06A9CF| INC.w $0EB0,X

|06A9D2| JSL SetSpawnedSpriteCoordinates

|06A9D6| LDA.b $00
|06A9D8| CLC
|06A9D9| ADC.b #$08
|06A9DB| STA.w $0D10,Y

|06A9DE| LDA.b $01
|06A9E0| ADC.b #$00
|06A9E2| STA.w $0D30,Y

|06A9E5| LDA.b #$20
|06A9E7| STA.w $0F80,Y

|06A9EA| LDA.b #$10
|06A9EC| STA.w $0F10,Y

|06A9EF| PHX

|06A9F0| TYX

|06A9F1| LDA.b #$10
|06A9F3| JSR ApplySpeedTowardsLink

|06A9F6| LDA.b $00
|06A9F8| EOR.b #$FF
|06A9FA| STA.w $0D40,X

|06A9FD| LDA.b $01
|06A9FF| EOR.b #$FF
|06AA01| STA.w $0D50,X

|06AA04| PLX

|06AA05| LDA.b #$30 ; SFX3.30
|06AA07| JSL QueueSpriteSFX3WithPan

.exit
|06AA0B| RTS

;---------------------------------------------------------------------------------------------------

.anim_step
|06AA0C| db $00, $01, $00, $01

.h_flip
|06AA10| db $00, $00, $40, $00

;===================================================================================================

Sprite_CheckIfLifted_permissive_long:
|06AA14| PHB
|06AA15| PHK
|06AA16| PLB

|06AA17| JSR .wrapper

|06AA1A| PLB

|06AA1B| RTL

;---------------------------------------------------------------------------------------------------

.wrapper
|06AA1C| JSR Sprite_CheckIfLifted_permissive

|06AA1F| RTS

;===================================================================================================

pool SpriteDraw_Hoarder

.offset_y
|06AA20| dw   0,   0,   0,  -3
|06AA28| dw   0,  -5,   0,  -6
|06AA30| dw   0,  -6,   0,  -6

.char
|06AA38| db $44, $44, $E8, $44
|06AA3C| db $E8, $44, $E6, $44
|06AA40| db $E8, $44, $E6, $44

.props
|06AA44| db $00, $0C, $03, $0C
|06AA48| db $03, $0C, $03, $0C
|06AA4C| db $03, $0C, $43, $0C

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Hoarder:
|06AA50| JSR GetScreenCoordinates

|06AA53| LDA.w $0FC6
|06AA56| CMP.b #$03
|06AA58| BCS .exit

|06AA5A| STZ.b $07

|06AA5C| LDA.w $0E20,X
|06AA5F| CMP.b #$17 ; SPRITE 17
|06AA61| BNE .rock_hoarder

|06AA63| LDA.b #$02
|06AA65| STA.b $07

.rock_hoarder
|06AA67| LDA.w $0DC0,X
|06AA6A| ASL A
|06AA6B| STA.b $06

;---------------------------------------------------------------------------------------------------

|06AA6D| PHX

|06AA6E| LDX.b #$01

.next_object
|06AA70| PHX

|06AA71| TXA
|06AA72| CLC
|06AA73| ADC.b $06
|06AA75| PHA

|06AA76| ASL A
|06AA77| TAX

|06AA78| REP #$20

|06AA7A| LDA.b $00
|06AA7C| STA.b ($90),Y

|06AA7E| AND.w #$0100
|06AA81| STA.b $0E

|06AA83| LDA.b $02
|06AA85| CLC
|06AA86| ADC.w .offset_y,X

|06AA89| INY
|06AA8A| STA.b ($90),Y

|06AA8C| CLC
|06AA8D| ADC.w #$0010
|06AA90| CMP.w #$0100

|06AA93| SEP #$20
|06AA95| BCC .on_screen

|06AA97| LDA.b #$F0
|06AA99| STA.b ($90),Y

.on_screen
|06AA9B| PLX

|06AA9C| LDA.w .char,X
|06AA9F| CMP.b #$44
|06AAA1| BNE .change_char

|06AAA3| CLC
|06AAA4| ADC.b $07

.change_char
|06AAA6| INY
|06AAA7| STA.b ($90),Y

|06AAA9| LDA.b $05
|06AAAB| AND.b #$FE
|06AAAD| ORA.w .props,X

|06AAB0| INY
|06AAB1| STA.b ($90),Y

|06AAB3| PHY

|06AAB4| TYA
|06AAB5| LSR A
|06AAB6| LSR A
|06AAB7| TAY

|06AAB8| LDA.b #$02
|06AABA| ORA.b $0F
|06AABC| STA.b ($92),Y

|06AABE| PLY
|06AABF| INY

|06AAC0| PLX
|06AAC1| DEX
|06AAC2| BPL .next_object

|06AAC4| PLX

.exit
|06AAC5| RTS

;===================================================================================================

pool SpriteDraw_ThrownItem

.char
|06AAC6| db $42, $44, $46, $00
|06AACA| db $46, $44, $42, $44
|06AACE| db $44, $00, $46, $44

.palette
|06AAD2| db $0C, $0C
|06AAD4| db $0C, $00
|06AAD6| db $00, $00

; [HARDCODED] oam slots
.oam_main
|06AAD8| dw $08B0, $08B4, $08B8, $08BC

.oam_small
|06AAE0| dw $0A4C, $0A4D, $0A4E, $0A4F

endpool

;===================================================================================================

Sprite_EC_ThrownItem:
|06AAE8| LDA.w $0FC6
|06AAEB| CMP.b #$03
|06AAED| BCS .continue

|06AAEF| LDA.w $0FB3
|06AAF2| BEQ .dont_use_reserved_slots

|06AAF4| LDA.w $0F20,X
|06AAF7| BEQ .dont_use_reserved_slots

|06AAF9| TXA
|06AAFA| AND.b #$03
|06AAFC| ASL A
|06AAFD| TAY

|06AAFE| REP #$20

|06AB00| LDA.w SpriteDraw_ThrownItem.oam_main,Y
|06AB03| STA.b $90

|06AB05| LDA.w SpriteDraw_ThrownItem.oam_small,Y
|06AB08| STA.b $92

|06AB0A| SEP #$20

.dont_use_reserved_slots
|06AB0C| LDA.w $0DD0,X
|06AB0F| STA.w $0BA0,X

|06AB12| LDA.w $0DB0,X
|06AB15| CMP.b #$06
|06AB17| BCC .not_big

|06AB19| JSR SpriteDraw_GiganticThrownItem
|06AB1C| BRA .continue

.not_big
|06AB1E| JSR SpriteDraw_SingleLarge

|06AB21| PHX

|06AB22| LDA.b $1B
|06AB24| CLC
|06AB25| ADC.w $0FFF
|06AB28| CMP.b #$02

|06AB2A| LDA.w $0DB0,X
|06AB2D| PHA

|06AB2E| BCC .not_skull_pot

|06AB30| ADC.b #$05

.not_skull_pot
|06AB32| TAX

|06AB33| LDA.w SpriteDraw_ThrownItem.char,X
|06AB36| LDY.b #$02
|06AB38| STA.b ($90),Y

|06AB3A| INY

|06AB3B| LDA.b ($90),Y
|06AB3D| AND.b #$F0

|06AB3F| PLX

|06AB40| ORA.w SpriteDraw_ThrownItem.palette,X
|06AB43| STA.b ($90),Y

|06AB45| PLX

|06AB46| AND.b #$0F
|06AB48| STA.b $00

|06AB4A| LDA.w $0F50,X
|06AB4D| AND.b #$C0
|06AB4F| ORA.b $00
|06AB51| STA.w $0F50,X

;---------------------------------------------------------------------------------------------------

.continue
|06AB54| LDA.w $0DD0,X
|06AB57| CMP.b #$09
|06AB59| BNE .exit

|06AB5B| JSR CheckIfActive_bank06
|06AB5E| JSR ThrowableScenery_InteractWithSpritesAndTiles

.exit
|06AB61| RTS

;===================================================================================================

pool SpriteDraw_GiganticThrownItem

.offset_x
|06AB62| dw  -8,   8,  -8,   8

.offset_y
|06AB6A| dw -14, -14,   2,   2

.flip
|06AB72| db $00, $40, $80, $C0

.offset_shadow
|06AB76| dw  -6,   0,   6,  12

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_GiganticThrownItem:
|06AB7E| LDY.w $0DB0,X

|06AB81| LDA.w .offset_shadow,Y
|06AB84| STA.w $0F50,X

|06AB87| JSR GetScreenCoordinates

|06AB8A| PHX

|06AB8B| LDX.b #$03

.next_object
|06AB8D| PHX

|06AB8E| TXA
|06AB8F| ASL A
|06AB90| TAX

|06AB91| REP #$20

|06AB93| LDA.b $00
|06AB95| CLC
|06AB96| ADC.w .offset_x,X
|06AB99| STA.b ($90),Y

|06AB9B| AND.w #$0100
|06AB9E| STA.b $0E

|06ABA0| LDA.b $02
|06ABA2| CLC
|06ABA3| ADC.w .offset_y,X

|06ABA6| INY
|06ABA7| STA.b ($90),Y

|06ABA9| CLC
|06ABAA| ADC.w #$0010
|06ABAD| CMP.w #$0100

|06ABB0| SEP #$20
|06ABB2| BCC .on_screen

|06ABB4| LDA.b #$F0
|06ABB6| STA.b ($90),Y

.on_screen
|06ABB8| PLX

|06ABB9| LDA.b #$4A
|06ABBB| INY
|06ABBC| STA.b ($90),Y

|06ABBE| LDA.w .flip,X
|06ABC1| INY
|06ABC2| ORA.b $05
|06ABC4| STA.b ($90),Y

|06ABC6| PHY

|06ABC7| TYA
|06ABC8| LSR A
|06ABC9| LSR A
|06ABCA| TAY

|06ABCB| LDA.b #$02
|06ABCD| ORA.b $0F
|06ABCF| STA.b ($92),Y

|06ABD1| PLY
|06ABD2| INY

|06ABD3| DEX
|06ABD4| BPL .next_object

;---------------------------------------------------------------------------------------------------

|06ABD6| PLX

|06ABD7| LDA.b #$0C
|06ABD9| JSL AllocateOAMInRegionB

|06ABDD| LDY.b #$00

|06ABDF| LDA.w $0D00,X
|06ABE2| SEC
|06ABE3| SBC.b $E8
|06ABE5| STA.b $02

|06ABE7| LDA.w $0D20,X
|06ABEA| SBC.b $E9
|06ABEC| STA.b $03

|06ABEE| PHX

|06ABEF| LDX.b #$02

.next_shadow
|06ABF1| PHX

|06ABF2| TXA
|06ABF3| ASL A
|06ABF4| TAX

|06ABF5| REP #$20

|06ABF7| LDA.b $00
|06ABF9| CLC
|06ABFA| ADC.w .offset_shadow,X
|06ABFD| STA.b ($90),Y

|06ABFF| AND.w #$0100
|06AC02| STA.b $0E

|06AC04| LDA.b $02
|06AC06| CLC
|06AC07| ADC.w #$000C

|06AC0A| INY
|06AC0B| STA.b ($90),Y

|06AC0D| CLC
|06AC0E| ADC.w #$0010
|06AC11| CMP.w #$0100

|06AC14| SEP #$20
|06AC16| BCC .shadow_on_screen

|06AC18| LDA.b #$F0
|06AC1A| STA.b ($90),Y

.shadow_on_screen
|06AC1C| PLX

|06AC1D| LDA.b #$6C
|06AC1F| INY
|06AC20| STA.b ($90),Y

|06AC22| LDA.b #$24
|06AC24| INY
|06AC25| STA.b ($90),Y

|06AC27| PHY

|06AC28| TYA
|06AC29| LSR A
|06AC2A| LSR A
|06AC2B| TAY

|06AC2C| LDA.b #$02
|06AC2E| ORA.b $0F
|06AC30| STA.b ($92),Y

|06AC32| PLY
|06AC33| INY

|06AC34| DEX
|06AC35| BPL .next_shadow

;---------------------------------------------------------------------------------------------------

|06AC37| PLX

|06AC38| RTS

;===================================================================================================

pool ThrowableScenery_ScatterIntoDebris

.offset_x_low
|06AC39| db -8,  8, -8,  8

.offset_x_high
|06AC3D| db -1,  0, -1,  0

.offset_y_low
|06AC41| db -8, -8,  8,  8

.offset_y_high
|06AC45| db -1, -1,  0,  0

endpool

;---------------------------------------------------------------------------------------------------

ThrowableScenery_ScatterIntoDebris:
|06AC49| LDA.w $0DB0,X
|06AC4C| BMI ThrowableScenery_ScatterIntoSmallerDebris

|06AC4E| CMP.b #$06
|06AC50| BCC ThrowableScenery_ScatterIntoSmallerDebris

|06AC52| LDA.b #$03
|06AC54| STA.b $0D

.next_particle
|06AC56| LDA.b #$EC ; SPRITE EC
|06AC58| JSL SpawnSpriteDynamically
|06AC5C| BMI .no_space

|06AC5E| LDA.w $0F70,X
|06AC61| STA.w $0F70,Y

|06AC64| PHX

|06AC65| LDX.b $0D

|06AC67| LDA.b $00
|06AC69| CLC
|06AC6A| ADC.w .offset_x_low,X
|06AC6D| STA.w $0D10,Y

|06AC70| LDA.b $01
|06AC72| ADC.w .offset_x_high,X
|06AC75| STA.w $0D30,Y

|06AC78| LDA.b $02
|06AC7A| CLC
|06AC7B| ADC.w .offset_y_low,X
|06AC7E| STA.w $0D00,Y

|06AC81| LDA.b $03
|06AC83| ADC.w .offset_y_high,X
|06AC86| STA.w $0D20,Y

|06AC89| LDA.b #$01
|06AC8B| STA.w $0DB0,Y

|06AC8E| TYX
|06AC8F| JSR ScheduleForBreakage

|06AC92| PLX

|06AC93| LDA.w $0DB0,X
|06AC96| CMP.b #$07

|06AC98| LDA.b #$00
|06AC9A| BCS .default_palette

|06AC9C| LDA.b #$0C

.default_palette
|06AC9E| STA.w $0F50,Y

.no_space
|06ACA1| DEC.b $0D
|06ACA3| BPL .next_particle

|06ACA5| STZ.w $0DD0,X

|06ACA8| RTS

;===================================================================================================

ThrowableScenery_ScatterIntoSmallerDebris:
|06ACA9| STZ.w $0DD0,X

|06ACAC| JSR GetScreenCoordinates

|06ACAF| PHX

|06ACB0| TXY
|06ACB1| LDX.b #$1D

.next_slot
|06ACB3| LDA.l $7FF800,X
|06ACB7| BEQ .empty_slot

|06ACB9| DEX
|06ACBA| BPL .next_slot

|06ACBC| INX

.empty_slot
|06ACBD| LDA.b #$16 ; GARNISH 16
|06ACBF| STA.l $7FF800,X
|06ACC3| STA.w $0FB4

|06ACC6| LDA.w $0D10,Y
|06ACC9| STA.l $7FF83C,X

|06ACCD| LDA.w $0D30,Y
|06ACD0| STA.l $7FF878,X

|06ACD4| LDA.w $0D00,Y
|06ACD7| SEC
|06ACD8| SBC.w $0F70,Y

|06ACDB| PHP

|06ACDC| CLC
|06ACDD| ADC.b #$10
|06ACDF| STA.l $7FF81E,X

|06ACE3| LDA.w $0D20,Y
|06ACE6| ADC.b #$00

|06ACE8| PLP
|06ACE9| SBC.b #$00
|06ACEB| STA.l $7FF85A,X

|06ACEF| LDA.b $05
|06ACF1| STA.l $7FF9FE,X

|06ACF5| LDA.w $0F20,Y
|06ACF8| STA.l $7FF968,X

|06ACFC| LDA.b #$1F
|06ACFE| STA.l $7FF90E,X

|06AD02| LDA.w $0DB0,Y
|06AD05| STA.l $7FF92C,X

|06AD09| PLX

|06AD0A| RTS

;===================================================================================================

ApplyRumbleToSprites:
|06AD0B| LDY.b #$0F

.next_sprite
|06AD0D| LDA.w $0CAA,Y
|06AD10| AND.b #$02
|06AD12| BEQ .skip

|06AD14| LDA.w $0E90,Y
|06AD17| BEQ .skip

|06AD19| LDA.w $0FC6
|06AD1C| CMP.b #$0E
|06AD1E| BEQ .collision_guaranteed

|06AD20| PHX

|06AD21| TYX
|06AD22| JSR SetupSpriteHitbox

|06AD25| PLX

|06AD26| JSR CheckIfHitboxesOverlap
|06AD29| BCC .skip

.collision_guaranteed
|06AD2B| LDA.b #$00
|06AD2D| STA.w $0E90,Y

|06AD30| LDA.b #$30 ; SFX3.30
|06AD32| STA.w $012F

|06AD35| LDA.b #$30
|06AD37| STA.w $0F80,Y

|06AD3A| LDA.b #$10
|06AD3C| STA.w $0D50,Y

|06AD3F| LDA.b #$30
|06AD41| STA.w $0EE0,Y

|06AD44| LDA.b #$FF
|06AD46| STA.w $0B58,Y

|06AD49| LDA.w $0E20,Y ; hearts in trees turn into bombs
|06AD4C| CMP.b #$D8 ; SPRITE D8
|06AD4E| BNE .skip

|06AD50| JSL TransmuteSpriteToBomb

.skip
|06AD54| DEY
|06AD55| BPL .next_sprite

|06AD57| RTS

;===================================================================================================

TransmuteSpriteToBomb:
|06AD58| LDA.b #$4A ; SPRITE 4A
|06AD5A| STA.w $0E20,Y

|06AD5D| LDA.b #$01
|06AD5F| STA.w $0DB0,Y

|06AD62| LDA.b #$FF
|06AD64| STA.w $0E00,Y

|06AD67| LDA.b #$18
|06AD69| STA.w $0E60,Y

|06AD6C| LDA.b #$08
|06AD6E| STA.w $0F50,Y

|06AD71| LDA.b #$00
|06AD73| STA.w $0E50,Y

|06AD76| RTL

;===================================================================================================

Sprite_28_DarkWorldHintNPC:
|06AD77| JSR SpriteDraw_DarkWorldHintNPC
|06AD7A| JSR CheckIfActive_bank06
|06AD7D| JSL BehaveAsBarrier

|06AD81| LDA.w $0DF0,X
|06AD84| BNE .delay

|06AD86| LDA.b $1A

|06AD88| LSR A
|06AD89| LSR A
|06AD8A| LSR A
|06AD8B| LSR A

|06AD8C| AND.b #$01
|06AD8E| STA.w $0DC0,X

.delay
|06AD91| LDA.w $0E80,X
|06AD94| JSL JumpTableLocal
|06AD98| dw DarkWorldHintNPC_Bird
|06AD9A| dw HamburgerHelper
|06AD9C| dw Octopus
|06AD9E| dw Broccoli
|06ADA0| dw Watto

;===================================================================================================

DarkWorldHintNPC_Bird:
|06ADA2| LDA.w $0D80,X
|06ADA5| JSL JumpTableLocal
|06ADA9| dw DarkWorldHintNPC_Idle
|06ADAB| dw HintBird_TellStory
|06ADAD| dw DarkWorldHintNPC_RestoreHealth

;===================================================================================================

DarkWorldHintNPC_Idle:
|06ADAF| LDA.b #$FC ; MESSAGE 00FC
|06ADB1| LDY.b #$00
|06ADB3| JSL ShowSolicitedMessage
|06ADB7| BCC .exit

|06ADB9| INC.w $0D80,X

.exit
|06ADBC| RTS

;===================================================================================================

DarkWorldHintNPC_RestoreHealth:
|06ADBD| LDA.b #$A0
|06ADBF| STA.l $7EF372

|06ADC3| STZ.w $0D80,X

|06ADC6| RTS

;===================================================================================================

HintBird_TellStory:
|06ADC7| LDA.w $1CE8
|06ADCA| BNE .rejected

|06ADCC| JSR DarkWorldHintNPC_HandlePayment
|06ADCF| BCC .rejected

|06ADD1| LDA.b #$FD ; MESSAGE 00FD
|06ADD3| LDY.b #$00

;---------------------------------------------------------------------------------------------------

#DarkWorldHintNPC_TellStory:
|06ADD5| JSL ShowMessageUnconditional

|06ADD9| INC.w $0D80,X

|06ADDC| RTS

;---------------------------------------------------------------------------------------------------

.rejected
|06ADDD| LDA.b #$FE ; MESSAGE 00FE
|06ADDF| LDY.b #$00
|06ADE1| JSL ShowMessageUnconditional

|06ADE5| STZ.w $0D80,X

|06ADE8| RTS

;===================================================================================================

HamburgerHelper:
|06ADE9| LDA.w $0D80,X
|06ADEC| JSL JumpTableLocal
|06ADF0| dw DarkWorldHintNPC_Idle
|06ADF2| dw HamburgerHelper_TellStory
|06ADF4| dw DarkWorldHintNPC_RestoreHealth

;===================================================================================================

HamburgerHelper_TellStory:
|06ADF6| LDA.w $1CE8
|06ADF9| BNE .rejected

|06ADFB| JSR DarkWorldHintNPC_HandlePayment
|06ADFE| BCC .rejected

|06AE00| LDA.b #$FF ; MESSAGE 00FF
|06AE02| LDY.b #$00
|06AE04| BRA DarkWorldHintNPC_TellStory

.rejected
|06AE06| LDA.b #$FE ; MESSAGE 00FE
|06AE08| LDY.b #$00
|06AE0A| JSL ShowMessageUnconditional

|06AE0E| STZ.w $0D80,X

|06AE11| RTS

;===================================================================================================

Octopus:
|06AE12| LDA.w $0D80,X
|06AE15| JSL JumpTableLocal
|06AE19| dw DarkWorldHintNPC_Idle
|06AE1B| dw Octopus_TellStory
|06AE1D| dw DarkWorldHintNPC_RestoreHealth

;===================================================================================================

Octopus_TellStory:
|06AE1F| LDA.w $1CE8
|06AE22| BNE .rejected

|06AE24| JSR DarkWorldHintNPC_HandlePayment
|06AE27| BCC .rejected

|06AE29| LDA.b #$00 ; MESSAGE 0100
|06AE2B| LDY.b #$01
|06AE2D| JMP.w DarkWorldHintNPC_TellStory

;---------------------------------------------------------------------------------------------------

.rejected
|06AE30| LDA.b #$FE ; MESSAGE 00FE
|06AE32| LDY.b #$00
|06AE34| JSL ShowMessageUnconditional

|06AE38| STZ.w $0D80,X

|06AE3B| RTS

;===================================================================================================

Broccoli:
|06AE3C| LDA.w $0DF0,X
|06AE3F| BNE .continue

|06AE41| LDA.b $1A
|06AE43| AND.b #$3F
|06AE45| BNE .dont_flip

|06AE47| LDA.w $0F50,X
|06AE4A| EOR.b #$40
|06AE4C| STA.w $0F50,X

.dont_flip
|06AE4F| JSL GetRandomNumber
|06AE53| BNE .continue

|06AE55| LDA.b #$20
|06AE57| STA.w $0DF0,X

.continue
|06AE5A| LDA.b #$47 ; MESSAGE 0147
|06AE5C| LDY.b #$01
|06AE5E| JSL ShowSolicitedMessage

|06AE62| RTS

;===================================================================================================

Watto:
|06AE63| LDA.b $1A
|06AE65| LSR A
|06AE66| AND.b #$01
|06AE68| STA.w $0DC0,X

|06AE6B| JSR MoveSpriteZ_bank06

|06AE6E| LDA.w $0F70,X
|06AE71| BPL .air_born

|06AE73| STZ.w $0F70,X

.air_born
|06AE76| LDA.w $0F70,X
|06AE79| CMP.b #$04
|06AE7B| ROL A
|06AE7C| AND.b #$01
|06AE7E| TAY

|06AE7F| LDA.w $0F80,X
|06AE82| CLC
|06AE83| ADC.w PositiveAndNegativeOne,Y
|06AE86| STA.w $0F80,X

|06AE89| LDA.w $0D80,X
|06AE8C| JSL JumpTableLocal
|06AE90| dw DarkWorldHintNPC_Idle
|06AE92| dw Watto_TellStory
|06AE94| dw DarkWorldHintNPC_RestoreHealth

;===================================================================================================

Watto_TellStory:
|06AE96| LDA.w $1CE8
|06AE99| BNE .rejected

|06AE9B| JSR DarkWorldHintNPC_HandlePayment
|06AE9E| BCC .rejected

|06AEA0| LDA.b #$01 ; MESSAGE 0101
|06AEA2| LDY.b #$01
|06AEA4| JMP.w DarkWorldHintNPC_TellStory

.rejected
|06AEA7| LDA.b #$FE ; MESSAGE 00FE
|06AEA9| LDY.b #$00
|06AEAB| JSL ShowMessageUnconditional

|06AEAF| STZ.w $0D80,X

|06AEB2| RTS

;===================================================================================================

DarkWorldHintNPC_HandlePayment:
|06AEB3| REP #$20

|06AEB5| LDA.l $7EF360
|06AEB9| CMP.w #$0014 ; 20 rupees
|06AEBC| BCC .too_poor

|06AEBE| LDA.l $7EF360
|06AEC2| SEC
|06AEC3| SBC.w #$0014 ; take 20 rupees
|06AEC6| STA.l $7EF360

; SEP #$31 next time
|06AECA| SEP #$30
|06AECC| SEC

|06AECD| RTS

;---------------------------------------------------------------------------------------------------

.too_poor
|06AECE| SEP #$30
|06AED0| CLC ; The carry was already clear if we got here.

|06AED1| RTS

;===================================================================================================

pool SpriteDraw_DarkWorldHintNPC

.oam_groups
; group00
|06AED2| dw   0,   0 : db $4A, $0A, $00, $02
|06AEDA| dw   0,   0 : db $6E, $4A, $00, $02

; group01
|06AEE2| dw   0,   0 : db $24, $0A, $00, $02
|06AEEA| dw   0,   0 : db $24, $4A, $00, $02

; group02
|06AEF2| dw   0,   0 : db $04, $08, $00, $02
|06AEFA| dw   0,   0 : db $04, $48, $00, $02

; group03
|06AF02| dw   0,   0 : db $6A, $0A, $00, $02
|06AF0A| dw   0,   0 : db $6C, $0A, $00, $02

; group04
|06AF12| dw   0,   0 : db $0E, $0A, $00, $02
|06AF1A| dw   0,   0 : db $2E, $0A, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_DarkWorldHintNPC:
|06AF22| LDA.w $0E80,X
|06AF25| ASL A

|06AF26| ADC.w $0DC0,X

|06AF29| ASL A
|06AF2A| ASL A
|06AF2B| ASL A

|06AF2C| ADC.b #<.oam_groups
|06AF2E| STA.b $08

|06AF30| LDA.b #>.oam_groups
|06AF32| ADC.b #$00
|06AF34| STA.b $09

|06AF36| LDA.b #$01
|06AF38| STA.b $06
|06AF3A| STZ.b $07

|06AF3C| JSL TabulatedSpriteDraw.player_deferred

|06AF40| JMP.w DrawSpriteShadow

;===================================================================================================

Sprite_2E_FluteKid:
|06AF43| LDA.w $0EB0,X
|06AF46| JSL JumpTableLocal
|06AF4A| dw FluteKid
|06AF4C| dw Quaver

;===================================================================================================

FluteKid:
|06AF4E| LDA.w $0E80,X
|06AF51| JSL JumpTableLocal
|06AF55| dw FluteKid_Human
|06AF57| dw Stumpy

;===================================================================================================

FluteKid_Human:
|06AF59| LDA.w $0D80,X
|06AF5C| CMP.b #$03
|06AF5E| BEQ .invisible

|06AF60| JSL SpriteDraw_FluteKid

|06AF64| LDA.b $01
|06AF66| ORA.b $03
|06AF68| STA.w $0DB0,X

.invisible
|06AF6B| JSR CheckIfActive_bank06

|06AF6E| LDA.w $0DB0,X
|06AF71| BNE .no_tune

|06AF73| LDA.w $0DA0,X
|06AF76| BNE .no_tune

|06AF78| LDA.b #$0B ; SFX1.0B
|06AF7A| STA.w $012D
|06AF7D| STA.w $0DA0,X

.no_tune
|06AF80| LDA.b $1A
|06AF82| LSR A ; /32
|06AF83| LSR A
|06AF84| LSR A
|06AF85| LSR A
|06AF86| LSR A
|06AF87| AND.b #$01
|06AF89| STA.w $0DC0,X

|06AF8C| LDA.w $0D80,X
|06AF8F| JSL JumpTableLocal
|06AF93| dw FluteKid_Chillin
|06AF95| dw FluteKid_AboutToDisappear
|06AF97| dw FluteKid_PhaseOut
|06AF99| dw FluteKid_HeDisappeared

;===================================================================================================

FluteKid_Chillin:
|06AF9B| LDA.l $7EF34C
|06AF9F| CMP.b #$02
|06AFA1| BCS .flute_owned

|06AFA3| JSR FluteKid_CheckIfInRange
|06AFA6| BCS .not_close

.flute_owned
|06AFA8| INC.w $0D80,X
|06AFAB| INC.w $0DE0,X

|06AFAE| INC.w $0FDD

|06AFB1| LDA.b #$B0
|06AFB3| STA.w $0DF0,X

|06AFB6| LDA.b #$01
|06AFB8| STA.w $02E4

.not_close
|06AFBB| LDA.w $0DF0,X
|06AFBE| BNE .exit

|06AFC0| LDA.b #$19
|06AFC2| STA.w $0DF0,X

|06AFC5| JSR SpawnQuaver

.exit
|06AFC8| RTS

;===================================================================================================

FluteKid_AboutToDisappear:
|06AFC9| LDA.b #$01
|06AFCB| STA.w $02E4

|06AFCE| LDA.w $0DF0,X
|06AFD1| BNE .exit

|06AFD3| LDA.b #$02
|06AFD5| STA.b $1D

|06AFD7| LDA.b #$30
|06AFD9| STA.b $9A

|06AFDB| LDA.b #$00
|06AFDD| STA.l $7EC007
|06AFE1| STA.l $7EC009

|06AFE5| PHX
|06AFE6| JSL AssertTranslucencySwap
|06AFEA| PLX

|06AFEB| INC.w $0D80,X

|06AFEE| LDA.b #$80 ; SFX1.80 - fade
|06AFF0| STA.w $012D

|06AFF3| LDA.b #$33 ; SFX2.33
|06AFF5| JSL QueueSpriteSFX2WithPan

.exit
|06AFF9| RTS

;===================================================================================================

FluteKid_PhaseOut:
|06AFFA| LDA.b $1A
|06AFFC| AND.b #$0F
|06AFFE| BNE .exit

|06B000| PHX
|06B001| JSL PaletteFilter_Sprite5Left
|06B005| PLX

|06B006| LDA.l $7EC007
|06B00A| BNE .exit

|06B00C| INC.w $0D80,X

.exit
|06B00F| RTS

;===================================================================================================

FluteKid_HeDisappeared:
|06B010| PHX

|06B011| JSL PaletteFilter_RestoreSprite5Left
|06B015| JSL RevertTranslucencySwap

|06B019| PLX

|06B01A| STZ.w $0DD0,X
|06B01D| STZ.w $02E4

|06B020| RTS

;===================================================================================================

Stumpify:

.anim_step
|06B021| db $01, $01, $01, $01
|06B025| db $02, $01, $02, $01
|06B029| db $02, $01, $02, $03
|06B02D| db $02, $03, $02, $03
|06B031| db $02, $03, $02, $FF

;---------------------------------------------------------------------------------------------------

.timer
|06B035| db $FF, $FF, $FF,  16
|06B039| db   2,  12,   6,   8
|06B03D| db  10,   4,  14,   2
|06B041| db  10,   6,   6,  10
|06B045| db   2,  14,   2

;===================================================================================================

Stumpy:
|06B048| JSL SpriteDraw_Stumpy
|06B04C| JSR CheckIfActive_bank06

|06B04F| LDA.w $0D80,X
|06B052| JSL JumpTableLocal
|06B056| dw Stumpy_Initialize
|06B058| dw Stumpy_WaitForConvo
|06B05A| dw Stumpy_GiveShovel
|06B05C| dw Stumpy_WaitForMusic
|06B05E| dw Stumpy_BecomeTree
|06B060| dw Stumpy_AmTree

;===================================================================================================

Stumpy_Initialize:
|06B062| LDA.l $7EF34C
|06B066| AND.b #$03
|06B068| JSL JumpTableLocal
|06B06C| dw Stumpy_Supplicate
|06B06E| dw Stumpy_GetMeMyDamnFlute
|06B070| dw Stumpy_ThanksButYouKeepIt
|06B072| dw Stumpy_SorryButAmTree

;===================================================================================================

Stumpy_Supplicate:
|06B074| LDA.b #$E3 ; MESSAGE 00E3
|06B076| LDY.b #$00
|06B078| JSL ShowSolicitedMessage
|06B07C| BCC .exit

|06B07E| INC.w $0D80,X

.exit
|06B081| RTS

;===================================================================================================

Stumpy_GetMeMyDamnFlute:
|06B082| LDA.b #$E6 ; MESSAGE 00E6
|06B084| LDY.b #$00
|06B086| JSL ShowSolicitedMessage

|06B08A| RTS

;===================================================================================================

Stumpy_ThanksButYouKeepIt:
|06B08B| LDA.b #$01
|06B08D| STA.w $0DC0,X

|06B090| LDA.b #$E7 ; MESSAGE 00E7
|06B092| LDY.b #$00
|06B094| JSL ShowSolicitedMessage
|06B098| BCC .exit

|06B09A| LDA.b #$03
|06B09C| STA.w $0D80,X

.exit
|06B09F| RTS

;===================================================================================================

Stumpy_SorryButAmTree:
|06B0A0| LDA.b #$03
|06B0A2| STA.w $0DC0,X

|06B0A5| RTS

;===================================================================================================

Stumpy_WaitForConvo:
|06B0A6| LDA.w $1CE8
|06B0A9| BNE .rejected

|06B0AB| LDA.b #$E4 ; MESSAGE 00E4
|06B0AD| LDY.b #$00
|06B0AF| JSL ShowMessageUnconditional

|06B0B3| INC.w $0D80,X

|06B0B6| RTS

.rejected
|06B0B7| LDA.b #$E5 ; MESSAGE 00E5
|06B0B9| LDY.b #$00
|06B0BB| JSL ShowMessageUnconditional

|06B0BF| STZ.w $0D80,X

|06B0C2| RTS

;===================================================================================================

Stumpy_GiveShovel:
|06B0C3| STZ.w $02E9

|06B0C6| LDY.b #$13 ; ITEMGET 13

|06B0C8| PHX

|06B0C9| JSL GrantItemReceipt

|06B0CD| PLX

|06B0CE| STZ.w $0D80,X

|06B0D1| RTS

;===================================================================================================

Stumpy_WaitForMusic:
|06B0D2| LDA.w $0202
|06B0D5| CMP.b #$0D
|06B0D7| BNE .exit

|06B0D9| BIT.b $F0
|06B0DB| BVC .exit

|06B0DD| INC.w $0D80,X

|06B0E0| LDA.b #$F2 ; SONG F2 - half volume
|06B0E2| STA.w $012C

|06B0E5| STZ.w $012E

|06B0E8| LDA.b #$17 ; SFX1.17
|06B0EA| STA.w $012D

|06B0ED| INC.w $02E4

.exit
|06B0F0| RTS

;===================================================================================================

Stumpy_BecomeTree:
|06B0F1| LDA.w $0DF0,X
|06B0F4| BNE .exit

|06B0F6| LDA.w $0D90,X
|06B0F9| CMP.b #$03
|06B0FB| BCC .skip_sfx

|06B0FD| LDA.b #$33 ; SFX2.33
|06B0FF| JSL QueueSpriteSFX2WithPan

.skip_sfx
|06B103| LDA.w $0D90,X
|06B106| TAY

|06B107| INC A
|06B108| STA.w $0D90,X

|06B10B| LDA.w Stumpify.anim_step,Y
|06B10E| BMI .turn_it_up_to_11

|06B110| STA.w $0DC0,X

|06B113| LDA.w Stumpify.timer,Y
|06B116| STA.w $0DF0,X

.exit
|06B119| RTS

.turn_it_up_to_11
|06B11A| LDA.b #$F3 ; SONG F3 - max volume
|06B11C| STA.w $012C

|06B11F| INC.w $0D80,X

|06B122| STZ.w $02E4

|06B125| RTS

;===================================================================================================

Stumpy_AmTree:
|06B126| LDA.b #$03
|06B128| STA.w $0DC0,X

|06B12B| LDA.l $7EF3C9
|06B12F| ORA.b #$08
|06B131| STA.l $7EF3C9

|06B135| RTS

;===================================================================================================

FluteKid_CheckIfInRange:
|06B136| LDA.w $0D10,X
|06B139| STA.b $00

|06B13B| LDA.w $0D30,X
|06B13E| STA.b $01

|06B140| LDA.w $0D00,X
|06B143| STA.b $02

|06B145| LDA.w $0D20,X
|06B148| STA.b $03

|06B14A| REP #$30

|06B14C| LDA.b $02
|06B14E| SEC
|06B14F| SBC.w #$0010
|06B152| STA.b $02

|06B154| LDA.b $22
|06B156| SBC.b $00
|06B158| BPL .positive_x

|06B15A| EOR.w #$FFFF

.positive_x
|06B15D| STA.b $00

|06B15F| LDA.b $20
|06B161| SBC.b $02
|06B163| BPL .positive_y

|06B165| EOR.w #$FFFF

.positive_y
|06B168| STA.b $02

|06B16A| LDA.b $00
|06B16C| CMP.w #$0030
|06B16F| BCS .exit

|06B171| LDA.b $02
|06B173| CMP.w #$0030

.exit
|06B176| SEP #$30

|06B178| RTS

;===================================================================================================

pool Quaver

.speed_x
|06B179| db   1,  -1

endpool

;---------------------------------------------------------------------------------------------------

Quaver:
|06B17B| JSR SpriteDraw_SingleSmall
|06B17E| JSR CheckIfActive_bank06
|06B181| JSR MoveSpriteXY_bank06
|06B184| JSR MoveSpriteZ_bank06

|06B187| LDA.w $0DF0,X
|06B18A| BNE .tenuto

|06B18C| STZ.w $0DD0,X

.tenuto
|06B18F| LDA.b $1A
|06B191| AND.b #$01
|06B193| BNE .exit

|06B195| LDA.b $1A

|06B197| LSR A
|06B198| LSR A
|06B199| LSR A
|06B19A| LSR A
|06B19B| LSR A

|06B19C| EOR.w $0FA0
|06B19F| AND.b #$01
|06B1A1| TAY

|06B1A2| LDA.w $0D50,X
|06B1A5| CLC
|06B1A6| ADC.w .speed_x,Y
|06B1A9| STA.w $0D50,X

.exit
|06B1AC| RTS

;===================================================================================================

SpawnQuaver:
|06B1AD| LDA.b #$2E ; SPRITE 2E
|06B1AF| JSL SpawnSpriteDynamically
|06B1B3| BMI .no_space

|06B1B5| LDA.b $00
|06B1B7| CLC
|06B1B8| ADC.b #$04
|06B1BA| STA.w $0D10,Y

|06B1BD| LDA.b $01
|06B1BF| ADC.b #$00
|06B1C1| STA.w $0D30,Y

|06B1C4| LDA.b $02
|06B1C6| SEC
|06B1C7| SBC.b #$04
|06B1C9| STA.w $0D00,Y

|06B1CC| LDA.b $03
|06B1CE| SBC.b #$00
|06B1D0| STA.w $0D20,Y

|06B1D3| LDA.b #$01
|06B1D5| STA.w $0EB0,Y

|06B1D8| LDA.b #$08
|06B1DA| STA.w $0F80,Y

|06B1DD| LDA.b #$60
|06B1DF| STA.w $0DF0,Y
|06B1E2| STA.w $0BA0,Y

.no_space
|06B1E5| RTS

;===================================================================================================

Smithy_anim_step:
|06B1E6| db $00, $01, $02, $03
|06B1EA| db $03, $02, $01, $00

SmithyAnimTimer:
|06B1EE| db  24,   4,   1,  16
|06B1F2| db  16,   5,  10,  16

;===================================================================================================

Sprite_1A_Smithy:
|06B1F6| LDA.w $0E80,X
|06B1F9| JSL JumpTableLocal
|06B1FD| dw Smithy
|06B1FF| dw AnvilSpawk
|06B201| dw Froggy
|06B203| dw Smithy_Homecoming

;===================================================================================================

Smithy_Homecoming:
|06B205| JSR SpriteDraw_SmithyHomecoming
|06B208| JSR CheckIfActive_bank06

|06B20B| LDA.w $0D80,X
|06B20E| JSL JumpTableLocal
|06B212| dw Smithy_Walk
|06B214| dw Smithy_TYVM

;===================================================================================================

pool Smithy_Walk

.timer
|06B216| db 104,  12

.direction
|06B218| db $00, $02, $FF

.speed_x
|06B21B| db   0,   0, -13,  13

.speed_y
|06B21F| db -13,  13,   0,   0

endpool

;---------------------------------------------------------------------------------------------------

Smithy_Walk:
|06B223| JSR MoveSpriteXY_bank06

|06B226| LDA.b $1A

|06B228| LSR A
|06B229| LSR A
|06B22A| LSR A

|06B22B| AND.b #$01
|06B22D| STA.w $0DC0,X

|06B230| LDA.w $0DF0,X
|06B233| BNE .exit

|06B235| LDA.w $0D90,X
|06B238| TAY

|06B239| INC A
|06B23A| STA.w $0D90,X

|06B23D| LDA.w .timer,Y
|06B240| STA.w $0DF0,X

|06B243| LDA.w .direction,Y
|06B246| BMI .next_state

|06B248| STA.w $0DE0,X

|06B24B| TAY

|06B24C| LDA.w .speed_x,Y
|06B24F| STA.w $0D50,X

|06B252| LDA.w .speed_y,Y
|06B255| STA.w $0D40,X

.exit
|06B258| RTS

;---------------------------------------------------------------------------------------------------

.next_state
|06B259| INC.w $0D80,X

|06B25C| RTS

;===================================================================================================

Smithy_TYVM:
|06B25D| JSL BehaveAsBarrier

|06B261| LDA.b #$E1 ; MESSAGE 00E1
|06B263| LDY.b #$00
|06B265| JSL ShowSolicitedMessage

|06B269| STZ.w $02E4

|06B26C| LDA.b #$01
|06B26E| STA.w $0DE0,X

|06B271| LDA.l $7EF3C9
|06B275| ORA.b #$20
|06B277| STA.l $7EF3C9

|06B27B| RTS

;===================================================================================================

Froggy:
|06B27C| JSR SpriteDraw_Froggy
|06B27F| JSR CheckIfActive_bank06
|06B282| JSL BehaveAsBarrier

|06B286| DEC.w $0F80,X
|06B289| DEC.w $0F80,X

|06B28C| JSR MoveSpriteZ_bank06

|06B28F| LDA.w $0F70,X
|06B292| BPL .him_hop

|06B294| STZ.w $0F70,X

|06B297| LDA.b #$10
|06B299| STA.w $0F80,X

.him_hop
|06B29C| LDA.w $0D80,X
|06B29F| BNE .follow_link

|06B2A1| LDA.b #$01
|06B2A3| STA.w $0DE0,X

|06B2A6| LDA.b #$DF ; MESSAGE 00DF
|06B2A8| LDY.b #$00
|06B2AA| JSL ShowSolicitedMessage
|06B2AE| BCC .ignored_WOW

|06B2B0| INC.w $0D80,X

.ignored_WOW
|06B2B3| RTS

;---------------------------------------------------------------------------------------------------

.follow_link
|06B2B4| LDA.b #$07 ; FOLLOWER 07
|06B2B6| STA.l $7EF3CC

|06B2BA| PHX

|06B2BB| JSL LoadFollowerGraphics
|06B2BF| JSL BecomeFollower

|06B2C3| PLX

|06B2C4| STZ.w $0DD0,X

|06B2C7| RTS

;===================================================================================================

pool SpriteDraw_SmithyHomecoming

.oam_groups
; group00
|06B2C8| dw   0,   0 : db $22, $41, $00, $02

; group01
|06B2D0| dw   0,   0 : db $22, $01, $00, $02

; group02
|06B2D8| dw   0,   0 : db $22, $41, $00, $02

; group03
|06B2E0| dw   0,   0 : db $22, $01, $00, $02

; group04
|06B2E8| dw   0,   0 : db $22, $01, $00, $02

; group05
|06B2F0| dw   0,   0 : db $22, $01, $00, $02

; group06
|06B2F8| dw   0,   0 : db $22, $41, $00, $02

; group07
|06B300| dw   0,   0 : db $22, $41, $00, $02

;---------------------------------------------------------------------------------------------------

.char_offset
|06B308| db $C0
|06B309| db $C0
|06B30A| db $A0
|06B30B| db $A0
|06B30C| db $80
|06B30D| db $60
|06B30E| db $80
|06B30F| db $60

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_SmithyHomecoming:
|06B310| LDA.b #$01
|06B312| STA.b $06
|06B314| STZ.b $07

|06B316| LDA.w $0DE0,X
|06B319| ASL A
|06B31A| ADC.w $0DC0,X
|06B31D| TAY

|06B31E| LDA.w .char_offset,Y
|06B321| STA.w $0AEA

|06B324| TYA
|06B325| ASL A
|06B326| ASL A
|06B327| ASL A
|06B328| ADC.b #<.oam_groups
|06B32A| STA.b $08

|06B32C| LDA.b #>.oam_groups
|06B32E| ADC.b #$00
|06B330| STA.b $09

|06B332| JSL TabulatedSpriteDraw.player_deferred

|06B336| JMP.w DrawSpriteShadow

;===================================================================================================

pool SpriteDraw_Froggy

.oam_groups
|06B339| dw   0,   0 : db $C8, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Froggy:
|06B341| LDA.b #$01
|06B343| STA.b $06
|06B345| STZ.b $07

|06B347| LDA.b #<.oam_groups
|06B349| STA.b $08

|06B34B| LDA.b #>.oam_groups
|06B34D| STA.b $09

|06B34F| JSL TabulatedSpriteDraw.player_deferred

|06B353| JMP.w DrawSpriteShadow

;===================================================================================================

Smithy:
|06B356| JSR SpriteDraw_Smithy

|06B359| DEC.w $0F80,X
|06B35C| DEC.w $0F80,X

|06B35F| JSR MoveSpriteZ_bank06

|06B362| LDA.w $0F70,X
|06B365| BPL .hopping

|06B367| STZ.w $0F70,X
|06B36A| STZ.w $0F80,X

.hopping
|06B36D| JSR CheckIfActive_bank06

|06B370| LDY.w $0E90,X

|06B373| LDA.w $0D80,Y
|06B376| CMP.b #$05
|06B378| BEQ .tick_timer

|06B37A| CMP.b #$07
|06B37C| BEQ .tick_timer

|06B37E| CMP.b #$09
|06B380| BEQ .tick_timer

|06B382| ORA.w $0D80,X
|06B385| BEQ .tick_timer

|06B387| LDA.w $0D80,X
|06B38A| CMP.b #$05
|06B38C| BEQ .tick_timer

|06B38E| CMP.b #$07
|06B390| BEQ .tick_timer

|06B392| CMP.b #$09
|06B394| BNE .perform_ai

;---------------------------------------------------------------------------------------------------

.tick_timer
|06B396| LDA.w $0DA0,X

|06B399| DEC.w $0DA0,X

|06B39C| CMP.b #$00
|06B39E| BNE .perform_ai

|06B3A0| LDA.w $0D90,X
|06B3A3| TAY

|06B3A4| INC A
|06B3A5| AND.b #$07
|06B3A7| STA.w $0D90,X

|06B3AA| LDA.w Smithy_anim_step,Y
|06B3AD| STA.w $0DC0,X

|06B3B0| LDA.w SmithyAnimTimer,Y
|06B3B3| STA.w $0DA0,X

|06B3B6| CPY.b #$01
|06B3B8| BNE .no_hop_for_him

|06B3BA| LDA.b #$10
|06B3BC| STA.w $0F80,X

.no_hop_for_him
|06B3BF| CPY.b #$03
|06B3C1| BNE .perform_ai

|06B3C3| JSR SpawnAnvilSpawk

|06B3C6| LDA.b #$05 ; SFX2.05
|06B3C8| JSL QueueSpriteSFX2WithPan

;---------------------------------------------------------------------------------------------------

.perform_ai
|06B3CC| LDA.w $0D80,X
|06B3CF| JSL JumpTableLocal
|06B3D3| dw Smithy_Smithing
|06B3D5| dw Smithy_WannaTemper
|06B3D7| dw Smithy_ForRealsies
|06B3D9| dw Smithy_ItAintFreeKid
|06B3DB| dw Smithy_TemperInProgress
|06B3DD| dw Smithy_TemperInProgress
|06B3DF| dw Smithy_GiveTemperedSword
|06B3E1| dw Smithy_Nothing
|06B3E3| dw Smithy_Nothing
|06B3E5| dw Smithy_Nothing
|06B3E7| dw Smithy_SpawnFriend
|06B3E9| dw Smithy_Thanks

;===================================================================================================

Smithy_Smithing:
|06B3EB| STZ.w $0DB0,X

|06B3EE| LDA.l $7EF3CC
|06B3F2| CMP.b #$08 ; FOLLOWER 08
|06B3F4| BEQ .smithy_follower

|06B3F6| JSR Smithy_ListenForHammer
|06B3F9| BCC .link_not_helping_out

|06B3FB| LDA.b #$E2 ; MESSAGE 00E2
|06B3FD| LDY.b #$00
|06B3FF| JSL ShowMessageUnconditional

|06B403| LDA.b #$60
|06B405| STA.w $0E00,X

|06B408| INC.w $0DB0,X

|06B40B| RTS

;---------------------------------------------------------------------------------------------------

.link_not_helping_out
|06B40C| LDA.l $7EF3C9
|06B410| AND.b #$20
|06B412| BEQ .not_rescued

|06B414| LDA.b #$D6 ; MESSAGE 00D6
|06B416| LDY.b #$00
|06B418| JSL ShowSolicitedMessage
|06B41C| BCC .exit_a

|06B41E| INC.w $0D80,X
|06B421| INC.w $0DB0,X

.exit_a
|06B424| RTS

;---------------------------------------------------------------------------------------------------

.not_rescued
|06B425| LDA.b #$DD ; MESSAGE 00DD
|06B427| LDY.b #$00
|06B429| JSL ShowSolicitedMessage

|06B42D| RTS

;---------------------------------------------------------------------------------------------------

.smithy_follower
|06B42E| LDA.b $20
|06B430| CMP.b #$C2
|06B432| BCS .exit_b

|06B434| LDA.b #$DE ; MESSAGE 00DE
|06B436| LDY.b #$00

|06B438| JSL ShowMessageUnconditional

|06B43C| LDA.b #$0A
|06B43E| STA.w $0D80,X

|06B441| INC.w $02E4

.exit_b
|06B444| RTS

;===================================================================================================

Smithy_ListenForHammer:
|06B445| LDA.w $0E00,X
|06B448| BNE .no_hammer

|06B44A| LDA.w $0202
|06B44D| CMP.b #$0C
|06B44F| BNE .no_hammer

|06B451| LDA.w $0301
|06B454| AND.b #$02
|06B456| BEQ .no_hammer

|06B458| LDA.w $0300
|06B45B| CMP.b #$02
|06B45D| BNE .no_hammer

|06B45F| JSR CheckDamageToLink_same_layer
|06B462| BCC .no_hammer ; you could have just left, ya know?

|06B464| RTS

.no_hammer
|06B465| CLC

|06B466| RTS

;===================================================================================================

Smithy_WannaTemper:
|06B467| LDA.w $1CE8
|06B46A| BNE .didnt_make_the_sale

|06B46C| LDA.b #$D7 ; MESSAGE 00D7
|06B46E| LDY.b #$00
|06B470| JSL ShowMessageUnconditional

|06B474| INC.w $0D80,X

|06B477| RTS

.didnt_make_the_sale
|06B478| LDA.b #$DA ; MESSAGE 00DA
|06B47A| LDY.b #$00
|06B47C| JSL ShowMessageUnconditional

|06B480| STZ.w $0D80,X

|06B483| RTS

;===================================================================================================

Smithy_ForRealsies:
|06B484| LDA.w $1CE8
|06B487| BNE .didnt_make_the_sale

|06B489| LDA.l $7EF359
|06B48D| CMP.b #$03
|06B48F| BCS .sword_too_good_already

|06B491| LDA.b #$D8 ; MESSAGE 00D8
|06B493| LDY.b #$00
|06B495| JSL ShowMessageUnconditional

|06B499| INC.w $0D80,X

|06B49C| RTS

;---------------------------------------------------------------------------------------------------

.sword_too_good_already
|06B49D| LDA.b #$D9 ; MESSAGE 00D9
|06B49F| LDY.b #$00
|06B4A1| JSL ShowMessageUnconditional

|06B4A5| STZ.w $0D80,X

|06B4A8| RTS

;---------------------------------------------------------------------------------------------------

.didnt_make_the_sale
|06B4A9| LDA.b #$DA ; MESSAGE 00DA
|06B4AB| LDY.b #$00
|06B4AD| JSL ShowMessageUnconditional

|06B4B1| STZ.w $0D80,X

|06B4B4| RTS

;===================================================================================================

Smithy_ItAintFreeKid:
|06B4B5| LDA.w $1CE8
|06B4B8| BEQ .made_the_sale

|06B4BA| LDA.b #$DA ; MESSAGE 00DA
|06B4BC| LDY.b #$00

|06B4BE| JSL ShowMessageUnconditional
|06B4C2| STZ.w $0D80,X

|06B4C5| RTS

;---------------------------------------------------------------------------------------------------

.made_the_sale
|06B4C6| REP #$20

; 10 rupees
|06B4C8| LDA.l $7EF360
|06B4CC| CMP.w #$000A

|06B4CF| SEP #$30
|06B4D1| BCS .paid_in_cash

; Credit not accepted
|06B4D3| LDA.b #$DA ; MESSAGE 00DA
|06B4D5| LDY.b #$00
|06B4D7| JSL ShowMessageUnconditional

|06B4DB| STZ.w $0D80,X

|06B4DE| RTS

;---------------------------------------------------------------------------------------------------

.paid_in_cash
|06B4DF| REP #$20

; take 10 rupees
|06B4E1| LDA.l $7EF360
|06B4E5| SEC
|06B4E6| SBC.w #$000A
|06B4E9| STA.l $7EF360

|06B4ED| SEP #$30

|06B4EF| LDA.b #$DB ; MESSAGE 00DB
|06B4F1| LDY.b #$00
|06B4F3| JSL ShowMessageUnconditional

|06B4F7| LDY.w $0E90,X

|06B4FA| LDA.b #$05
|06B4FC| STA.w $0D80,Y
|06B4FF| STA.w $0D80,X

|06B502| STZ.w $0ABF

|06B505| LDA.b #$FF
|06B507| STA.l $7EF359

|06B50B| LDA.l $7EF3C9
|06B50F| ORA.b #$80
|06B511| STA.l $7EF3C9

|06B515| RTS

;===================================================================================================

Smithy_TemperInProgress:
|06B516| STZ.w $0DB0,X

|06B519| JSR Smithy_ListenForHammer
|06B51C| BCC .link_isnt_helping

|06B51E| LDA.b #$E2 ; MESSAGE 00E2
|06B520| LDY.b #$00
|06B522| JSL ShowMessageUnconditional

|06B526| LDA.b #$60
|06B528| STA.w $0E00,X

|06B52B| INC.w $0DB0,X

|06B52E| RTS

;---------------------------------------------------------------------------------------------------

.link_isnt_helping
|06B52F| LDA.w $0ABF
|06B532| BEQ .not_finished

|06B534| LDA.b #$DC ; MESSAGE 00DC
|06B536| LDY.b #$00
|06B538| JSL ShowSolicitedMessage
|06B53C| BCC .exit

|06B53E| INC.w $0D80,X

|06B541| LDA.b #$04
|06B543| STA.w $0DC0,X

.exit
|06B546| RTS

;---------------------------------------------------------------------------------------------------

.not_finished
|06B547| LDA.b #$E0 ; MESSAGE 00E0
|06B549| LDY.b #$00
|06B54B| JSL ShowSolicitedMessage

|06B54F| RTS

;===================================================================================================

Smithy_GiveTemperedSword:
|06B550| LDY.w $0E90,X

|06B553| LDA.b #$00
|06B555| STA.w $0D80,X
|06B558| STA.w $0D80,Y

|06B55B| LDY.b #$02 ; ITEMGET 02

|06B55D| STZ.w $02E9

|06B560| PHX
|06B561| JSL GrantItemReceipt
|06B565| PLX

|06B566| LDA.l $7EF3C9
|06B56A| AND.b #$7F
|06B56C| STA.l $7EF3C9

|06B570| RTS

;===================================================================================================

Smithy_Nothing:
|06B571| RTS

;===================================================================================================

Smithy_SpawnFriend:
|06B572| LDA.b #$1A ; SPRITE 1A
|06B574| JSL SpawnSpriteDynamically
|06B578| BMI .no_friend_in_me

|06B57A| LDA.b $22
|06B57C| STA.w $0D10,Y

|06B57F| LDA.b $23
|06B581| STA.w $0D30,Y

|06B584| LDA.b $20
|06B586| STA.w $0D00,Y

|06B589| LDA.b $21
|06B58B| STA.w $0D20,Y

|06B58E| LDA.b #$03
|06B590| STA.w $0E80,Y
|06B593| STA.w $0BA0,Y

.no_friend_in_me
|06B596| INC.w $0D80,X

|06B599| LDA.b #$00
|06B59B| STA.l $7EF3CC

|06B59F| LDA.b #$04
|06B5A1| STA.w $0DC0,X

|06B5A4| RTS

;===================================================================================================

Smithy_Thanks:
|06B5A5| LDA.b #$E1 ; MESSAGE 00E1
|06B5A7| LDY.b #$00
|06B5A9| JSL ShowSolicitedMessage

|06B5AD| RTS

;===================================================================================================
; Used during sprite prep
;===================================================================================================
Smithy_SpawnDwarfPal:
|06B5AE| LDA.b #$1A ; SPRITE 1A
|06B5B0| JSL SpawnSpriteDynamically
|06B5B4| BMI .no_space

|06B5B6| LDA.b $00
|06B5B8| CLC
|06B5B9| ADC.b #$2C
|06B5BB| STA.w $0D10,Y

|06B5BE| LDA.b $01
|06B5C0| STA.w $0D30,Y

|06B5C3| LDA.b $02
|06B5C5| STA.w $0D00,Y

|06B5C8| LDA.b $03
|06B5CA| STA.w $0D20,Y

|06B5CD| LDA.b #$01
|06B5CF| STA.w $0DE0,Y

|06B5D2| LDA.b #$04
|06B5D4| STA.w $0D90,Y
|06B5D7| STA.w $0BA0,Y

.no_space
|06B5DA| RTS

;===================================================================================================

pool SpriteDraw_Smithy

.oam_groups
; group00
|06B5DB| dw   1,   0 : db $40, $40, $00, $02
|06B5E3| dw -11, -10 : db $60, $40, $00, $02

; group01
|06B5EB| dw  -1,   0 : db $40, $00, $00, $02
|06B5F3| dw  11, -10 : db $60, $00, $00, $02

; group02
|06B5FB| dw   1,   0 : db $40, $40, $00, $02
|06B603| dw  -3, -14 : db $44, $40, $00, $02

; group03
|06B60B| dw  -1,   0 : db $40, $00, $00, $02
|06B613| dw   3, -14 : db $44, $00, $00, $02

; group04
|06B61B| dw   1,   0 : db $42, $40, $00, $02
|06B623| dw  11, -10 : db $60, $00, $00, $02

; group05
|06B62B| dw  -1,   0 : db $42, $00, $00, $02
|06B633| dw -11, -10 : db $60, $40, $00, $02

; group06
|06B63B| dw   1,   0 : db $42, $40, $00, $02
|06B643| dw  13,   2 : db $62, $40, $00, $02

; group07
|06B64B| dw  -1,   0 : db $42, $00, $00, $02
|06B653| dw -13,   2 : db $62, $00, $00, $02

; group08
|06B65B| dw   0,   0 : db $64, $40, $00, $02
|06B663| dw   0,   0 : db $62, $40, $00, $02

; group09
|06B66B| dw   0,   0 : db $64, $00, $00, $02
|06B673| dw   0,   0 : db $64, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Smithy:
|06B67B| LDA.b #$02
|06B67D| STA.b $06
|06B67F| STZ.b $07

|06B681| LDA.w $0DC0,X
|06B684| ASL A
|06B685| ADC.w $0DE0,X

|06B688| ASL A
|06B689| ASL A
|06B68A| ASL A
|06B68B| ASL A

|06B68C| ADC.b #<.oam_groups
|06B68E| STA.b $08

|06B690| LDA.b #>.oam_groups
|06B692| ADC.b #$00
|06B694| STA.b $09

|06B696| JSL TabulatedSpriteDraw.player_deferred
|06B69A| JSR DrawSpriteShadow

|06B69D| RTS

;===================================================================================================

pool AnvilSpawk

.anim
|06B69E| db $00, $01, $02, $01, $02, $01, $FF

.timer
|06B6A5| db   4,   1,   3,   2,   1,   1

endpool

;---------------------------------------------------------------------------------------------------

AnvilSpawk:
|06B6AB| JSR SpriteDraw_AnvilSpawk
|06B6AE| JSR CheckIfActive_bank06

|06B6B1| LDA.w $0DF0,X
|06B6B4| BNE .exit

|06B6B6| LDA.w $0D90,X
|06B6B9| TAY

|06B6BA| INC A
|06B6BB| AND.b #$07
|06B6BD| STA.w $0D90,X

|06B6C0| LDA.w .anim,Y
|06B6C3| BMI .terminate

|06B6C5| STA.w $0DC0,X

|06B6C8| LDA.w .timer,Y
|06B6CB| STA.w $0DF0,X

.exit
|06B6CE| RTS

;---------------------------------------------------------------------------------------------------

.terminate
|06B6CF| STZ.w $0DD0,X

|06B6D2| RTS

;===================================================================================================

pool SpawnAnvilSpawk

.offset_x
|06B6D3| db  15, -15

endpool

;---------------------------------------------------------------------------------------------------

SpawnAnvilSpawk:
|06B6D5| LDA.b #$1A ; SPRITE 1A

|06B6D7| JSL SpawnSpriteDynamically
|06B6DB| BMI .no_space

|06B6DD| PHX

|06B6DE| LDA.w $0DE0,X
|06B6E1| TAX

|06B6E2| LDA.b $00
|06B6E4| CLC
|06B6E5| ADC.w .offset_x,X
|06B6E8| STA.w $0D10,Y

|06B6EB| LDA.b $01
|06B6ED| STA.w $0D30,Y

|06B6F0| LDA.b $02
|06B6F2| CLC
|06B6F3| ADC.b #$02
|06B6F5| STA.w $0D00,Y

|06B6F8| LDA.b $03
|06B6FA| STA.w $0D20,Y

|06B6FD| LDA.b #$01
|06B6FF| STA.w $0E80,Y

|06B702| PLX

.no_space
|06B703| RTS

;===================================================================================================

pool SpriteDraw_AnvilSpawk

.oam_groups
; group00
|06B704| dw   0,   3 : db $AA, $41, $00, $02
|06B70C| dw   0,  -1 : db $AA, $41, $00, $02

; group01
|06B714| dw  -4,   0 : db $90, $01, $00, $00
|06B71C| dw  12,   0 : db $90, $41, $00, $00

; group02
|06B724| dw  -5,  -2 : db $91, $01, $00, $00
|06B72C| dw  13,  -2 : db $91, $01, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_AnvilSpawk:
|06B734| LDA.b #$08
|06B736| JSL AllocateOAMInRegionB

|06B73A| LDA.w $0DC0,X

|06B73D| ASL A
|06B73E| ASL A
|06B73F| ASL A
|06B740| ASL A

|06B741| ADC.b #<.oam_groups
|06B743| STA.b $08

|06B745| LDA.b #>.oam_groups
|06B747| ADC.b #$00
|06B749| STA.b $09

|06B74B| LDA.b #$02
|06B74D| JSL TabulatedSpriteDraw

|06B751| RTS

;===================================================================================================

pool Sprite_1B_Arrow

.speed_x ; bleeds into next
|06B752| db   0,   0

.speed_y
|06B754| db  16,  16,   0,   0, -16, -16,   0,   0

endpool

;---------------------------------------------------------------------------------------------------

Sprite_1B_Arrow:
|06B75C| JSR SpriteDraw_Arrow
|06B75F| JSR CheckIfActivePermissive_bank06

|06B762| LDA.w $0DD0,X
|06B765| CMP.b #$09
|06B767| BNE SpriteArrow_KnockedAway

|06B769| LDA.w $0DF0,X
|06B76C| BEQ SpriteArrow_InFlight

|06B76E| DEC A
|06B76F| BNE .live

|06B771| STZ.w $0DD0,X

|06B774| RTS

;---------------------------------------------------------------------------------------------------

.live
|06B775| CMP.b #$20
|06B777| BCC .exit

|06B779| AND.b #$01
|06B77B| BNE .exit

|06B77D| LDA.b $1A
|06B77F| ASL A
|06B780| AND.b #$04
|06B782| ORA.w $0DE0,X
|06B785| TAY

|06B786| LDA.w .speed_x,Y
|06B789| STA.w $0D50,X

|06B78C| LDA.w .speed_y,Y
|06B78F| STA.w $0D40,X

|06B792| JSR MoveSpriteXY_bank06

.exit
|06B795| RTS

;===================================================================================================

SpriteArrow_InFlight:
|06B796| JSR CheckDamageToLink_same_layer
|06B799| LDA.w $0E90,X
|06B79C| BNE .continue

|06B79E| JSR CheckSpriteTileCollision
|06B7A1| LDA.w $0E70,X
|06B7A4| BEQ .continue

|06B7A6| LDY.w $0D90,X
|06B7A9| BEQ .dont_break

|06B7AB| JSL SpriteArrow_Break

|06B7AF| RTS

.dont_break
|06B7B0| LDA.b #$30
|06B7B2| STA.w $0DF0,X

|06B7B5| LDA.b #$02
|06B7B7| STA.w $0D90,X

|06B7BA| LDA.b #$08 ; SFX2.08
|06B7BC| JSL QueueSpriteSFX2WithPan

|06B7C0| RTS

;---------------------------------------------------------------------------------------------------

#UNREACHABLE_06B7C1:
|06B7C1| STZ.w $0DD0,X

|06B7C4| JSL PlaceWeaponTinkAtSprite

;---------------------------------------------------------------------------------------------------

.continue
|06B7C8| JMP.w MoveSpriteXY_bank06

;===================================================================================================

pool SpriteArrow_KnockedAway

.direction
|06B7CB| db $00
|06B7CC| db $02
|06B7CD| db $01
|06B7CE| db $03

endpool

;---------------------------------------------------------------------------------------------------

SpriteArrow_KnockedAway:
|06B7CF| LDA.w $0D80,X
|06B7D2| BNE .prepped

|06B7D4| JSR ApplyRicochet

|06B7D7| LDA.b #$18
|06B7D9| STA.w $0F80,X

|06B7DC| LDA.b #$FF
|06B7DE| STA.w $0DF0,X

|06B7E1| INC.w $0D80,X

|06B7E4| STZ.w $0EF0,X

;---------------------------------------------------------------------------------------------------

.prepped
|06B7E7| LDA.w $0DF0,X
|06B7EA| LSR A
|06B7EB| LSR A
|06B7EC| LSR A
|06B7ED| AND.b #$03
|06B7EF| TAY

|06B7F0| LDA.w .direction,Y
|06B7F3| STA.w $0DE0,X

|06B7F6| JSR MoveSpriteZ_bank06
|06B7F9| JSR MoveSpriteXY_bank06

|06B7FC| LDA.w $0F80,X
|06B7FF| SEC
|06B800| SBC.b #$02
|06B802| STA.w $0F80,X

|06B805| LDA.w $0F70,X
|06B808| BPL .exit

|06B80A| STZ.w $0DD0,X

.exit
|06B80D| RTS

;===================================================================================================

UNREACHABLE_06B80E:
|06B80E| RTS

;===================================================================================================

pool SpriteDraw_Arrow

.offset_x
|06B80F| dw  -8,   0
|06B813| dw   0,   8
|06B817| dw   0,   0
|06B81B| dw   0,   0

;---------------------------------------------------------------------------------------------------

.offset_y
|06B81F| dw   0,   0
|06B823| dw   0,   0
|06B827| dw  -8,   0
|06B82B| dw   0,   8

;---------------------------------------------------------------------------------------------------

.char
|06B82F| db $3A, $3D
|06B831| db $3D, $3A
|06B833| db $2A, $2B
|06B835| db $2B, $2A

|06B837| db $7C, $6C
|06B839| db $6C, $7C
|06B83B| db $7B, $6B
|06B83D| db $6B, $7B

|06B83F| db $3A, $3B
|06B841| db $3B, $3A
|06B843| db $2A, $3C
|06B845| db $3C, $2A

|06B847| db $81, $80
|06B849| db $80, $81
|06B84B| db $91, $90
|06B84D| db $90, $91

;---------------------------------------------------------------------------------------------------

.prop
|06B84F| db $08, $08
|06B851| db $48, $48
|06B853| db $08, $08
|06B855| db $88, $88

|06B857| db $09, $49
|06B859| db $09, $49
|06B85B| db $09, $89
|06B85D| db $09, $89

|06B85F| db $08, $88
|06B861| db $C8, $48
|06B863| db $08, $08
|06B865| db $88, $88

|06B867| db $49, $49
|06B869| db $09, $09
|06B86B| db $89, $89
|06B86D| db $09, $09

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Arrow:
|06B86F| JSR GetScreenCoordinates

|06B872| LDA.w $0DE0,X
|06B875| ASL A
|06B876| STA.b $06

|06B878| LDA.w $0D90,X
|06B87B| ASL A
|06B87C| ASL A
|06B87D| ASL A
|06B87E| STA.b $07

|06B880| PHX

|06B881| LDX.b #$01

.next_object
|06B883| PHX

|06B884| TXA
|06B885| CLC
|06B886| ADC.b $06
|06B888| PHA

|06B889| ASL A
|06B88A| TAX

|06B88B| REP #$20

|06B88D| LDA.b $00
|06B88F| CLC
|06B890| ADC.w .offset_x,X
|06B893| STA.b ($90),Y

|06B895| AND.w #$0100
|06B898| STA.b $0E

|06B89A| LDA.b $02
|06B89C| CLC
|06B89D| ADC.w .offset_y,X

|06B8A0| INY
|06B8A1| STA.b ($90),Y

|06B8A3| CLC
|06B8A4| ADC.w #$0010
|06B8A7| CMP.w #$0100

|06B8AA| SEP #$20
|06B8AC| BCC .on_screen

|06B8AE| LDA.b #$F0
|06B8B0| STA.b ($90),Y

.on_screen
|06B8B2| PLA
|06B8B3| CLC
|06B8B4| ADC.b $07
|06B8B6| TAX

|06B8B7| LDA.w .char,X
|06B8BA| INY
|06B8BB| STA.b ($90),Y

|06B8BD| LDA.w .prop,X
|06B8C0| ORA.b $05
|06B8C2| INY
|06B8C3| STA.b ($90),Y

|06B8C5| PHY

|06B8C6| TYA
|06B8C7| LSR A
|06B8C8| LSR A
|06B8C9| TAY

|06B8CA| LDA.b $0F
|06B8CC| STA.b ($92),Y

|06B8CE| PLY
|06B8CF| INY

|06B8D0| PLX
|06B8D1| DEX
|06B8D2| BPL .next_object

|06B8D4| PLX

|06B8D5| RTS

;===================================================================================================

CrystalSwitch_Palette:
|06B8D6| db $02, $04

;===================================================================================================

Sprite_1E_CrystalSwitch:
|06B8D8| LDA.w $0F50,X
|06B8DB| AND.b #$F1
|06B8DD| STA.w $0F50,X

|06B8E0| LDA.l $7EC172
|06B8E4| AND.b #$01
|06B8E6| TAY

|06B8E7| LDA.w CrystalSwitch_Palette,Y
|06B8EA| ORA.w $0F50,X
|06B8ED| STA.w $0F50,X

|06B8F0| JSR AllocateOAMDeferToPlayer
|06B8F3| JSR SpriteDraw_SingleLarge

|06B8F6| JSR CheckIfActive_bank06
|06B8F9| JSR CheckDamageToLink_same_layer
|06B8FC| BCC .not_touching

|06B8FE| JSL AbortMovement

|06B902| STZ.b $5E

|06B904| JSL RepelDash_long

.not_touching
|06B908| LDA.w $0DF0,X
|06B90B| BNE .no_sparkle

|06B90D| LDA.b $1A
|06B90F| AND.b #$07
|06B911| STA.b $00
|06B913| STZ.b $01

|06B915| JSL GetRandomNumber
|06B919| AND.b #$07
|06B91B| STA.b $02
|06B91D| STZ.b $03

|06B91F| JSL GarnishSpawn_Sparkle

|06B923| LDA.b #$1F
|06B925| STA.w $0DF0,X

.no_sparkle
|06B928| LDA.w $0EA0,X
|06B92B| BNE .transitioning

|06B92D| LDA.b $3C ; checks for (and ignores) poke damage
|06B92F| DEC A
|06B930| CMP.b #$08
|06B932| BPL .exit

|06B934| JSR CheckDamageFromLink

.exit
|06B937| RTS

;---------------------------------------------------------------------------------------------------

.transitioning
|06B938| DEC.w $0EA0,X
|06B93B| CMP.b #$0B
|06B93D| BNE .no_color_change

|06B93F| LDA.l $7EC172
|06B943| EOR.b #$01
|06B945| STA.l $7EC172

|06B949| LDA.b #$16
|06B94B| STA.b $11

|06B94D| LDA.b #$25 ; SFX3.25
|06B94F| JSL QueueSpriteSFX3WithPan

.no_color_change
|06B953| RTS

;===================================================================================================

Sprite_1F_SickKid:
|06B954| JSL SpriteDraw_SickKid
|06B958| JSR CheckIfActive_bank06

|06B95B| LDA.w $0D80,X
|06B95E| JSL JumpTableLocal
|06B962| dw SickKid_ISleep
|06B964| dw SickKid_RealShit
|06B966| dw SickKid_NothingButNet
|06B968| dw SickKid_OutOfShaqMemes

;===================================================================================================

SickKid_ISleep:
|06B96A| JSL CheckIfLinkIsBusy
|06B96E| BCS .zzzzzzzz

|06B970| JSR CheckDamageToLink_same_layer
|06B973| BCC .zzzzzzzz

|06B975| LDA.l $7EF35C
|06B979| ORA.l $7EF35D
|06B97D| ORA.l $7EF35E
|06B981| ORA.l $7EF35F
|06B985| CMP.b #$02
|06B987| BCC .wakeywakey

|06B989| INC.w $0D80,X
|06B98C| INC.w $02E4

.zzzzzzzz
|06B98F| RTS

;---------------------------------------------------------------------------------------------------

.wakeywakey
|06B990| LDA.b #$02 ; MESSAGE 0102
|06B992| LDY.b #$01
|06B994| JSL ShowSolicitedMessage

|06B998| RTS

;===================================================================================================

pool SickKid_RealShit

.anim_step
|06B999| db $00, $01, $00, $01, $00, $01, $02, $FF

.timer
|06B9A1| db   8,  12,   8,  12,   8,  96,  16

endpool

;---------------------------------------------------------------------------------------------------

SickKid_RealShit:
|06B9A8| LDA.w $0DF0,X
|06B9AB| BNE .exit

|06B9AD| LDY.w $0D90,X

|06B9B0| LDA.w .anim_step,Y
|06B9B3| BMI .speak

|06B9B5| STA.w $0DC0,X

|06B9B8| LDA.w .timer,Y
|06B9BB| STA.w $0DF0,X

|06B9BE| INC.w $0D90,X

.exit
|06B9C1| RTS

;---------------------------------------------------------------------------------------------------

.speak
|06B9C2| LDA.b #$03 ; MESSAGE 0103
|06B9C4| LDY.b #$01
|06B9C6| JSL ShowMessageUnconditional

|06B9CA| INC.w $0D80,X

|06B9CD| RTS

;===================================================================================================

SickKid_NothingButNet:
|06B9CE| LDY.b #$21 ; ITEMGET 21
|06B9D0| STZ.w $02E9

|06B9D3| PHX

|06B9D4| JSL GrantItemReceipt

|06B9D8| PLX

|06B9D9| INC.w $0D80,X

|06B9DC| STZ.w $02E4

|06B9DF| RTS

;===================================================================================================

SickKid_OutOfShaqMemes:
|06B9E0| LDA.b #$01
|06B9E2| STA.w $0DC0,X

|06B9E5| LDA.b #$04 ; MESSAGE 0104
|06B9E7| LDY.b #$01
|06B9E9| JSL ShowSolicitedMessage

|06B9ED| RTS

;===================================================================================================

WaterSwitch_Timer:
|06B9EE| db  40,   6,   3,   3
|06B9F2| db   3,   5,   1,   1
|06B9F6| db   3,  12

;===================================================================================================

WaterSwitch_Position:
|06B9F8| db $00, $01, $02, $03
|06B9FC| db $04, $05, $05, $06
|06BA00| db $07, $06

;===================================================================================================

Sprite_21_WaterSwitch:
|06BA02| JSR WaterSwitch_Main
|06BA05| JSR CheckIfActive_bank06

|06BA08| LDA.w $0D80,X
|06BA0B| CMP.b #$02
|06BA0D| BEQ .exit

|06BA0F| JSL JumpTableLocal
|06BA13| dw WaterSwitch_Untoggled
|06BA15| dw WaterSwitch_ReleaseGate

;---------------------------------------------------------------------------------------------------

.exit
|06BA17| RTS

;===================================================================================================

WaterSwitch_Untoggled:
|06BA18| LDA.w $0DB0,X
|06BA1B| BEQ .reset_timer

|06BA1D| DEC.w $0DA0,X

|06BA20| LDA.w $0DA0,X
|06BA23| BNE .delay

|06BA25| INC.w $0D80,X

.delay
|06BA28| LDA.b $1A
|06BA2A| AND.b #$03
|06BA2C| BNE .exit

|06BA2E| LDA.b #$22 ; SFX2.22
|06BA30| JSL QueueSpriteSFX2WithPan

.exit
|06BA34| RTS

;---------------------------------------------------------------------------------------------------

.reset_timer
|06BA35| LDA.b #$30
|06BA37| STA.w $0DA0,X

|06BA3A| RTS

;===================================================================================================

WaterSwitch_ReleaseGate:
|06BA3B| LDA.w $0DF0,X
|06BA3E| BNE .exit

|06BA40| INC.w $0D90,X

|06BA43| LDY.w $0D90,X
|06BA46| CPY.b #$0A
|06BA48| BNE .delay_release

|06BA4A| INC.w $0D80,X
|06BA4D| INC.w $0642

|06BA50| LDA.b #$25 ; SFX3.25
|06BA52| JSL QueueSpriteSFX3WithPan

|06BA56| RTS

.delay_release
|06BA57| LDA.w WaterSwitch_Timer,Y
|06BA5A| STA.w $0DF0,X

|06BA5D| LDA.w WaterSwitch_Position,Y
|06BA60| STA.w $0DE0,X

|06BA63| LDA.b #$22 ; SFX2.22
|06BA65| JSL QueueSpriteSFX2WithPan

.exit
|06BA69| RTS

;===================================================================================================

WaterSwitch_OAMData:
.step_0
|06BA6A| db $04, $14, $DC, $20
|06BA6E| db $04, $0C, $DD, $20
|06BA72| db $04, $0C, $DD, $20
|06BA76| db $04, $0C, $DD, $20
|06BA7A| db $00, $00, $CA, $20

.step_1
|06BA7E| db $03, $0C, $DD, $20
|06BA82| db $03, $14, $DC, $20
|06BA86| db $03, $14, $DC, $20
|06BA8A| db $03, $14, $DC, $20
|06BA8E| db $00, $00, $CA, $20

.step_2
|06BA92| db $F8, $08, $EA, $20
|06BA96| db $00, $08, $EB, $20
|06BA9A| db $F8, $10, $FA, $20
|06BA9E| db $00, $10, $FB, $20
|06BAA2| db $00, $00, $CA, $20

.step_3
|06BAA6| db $F4, $04, $CC, $20
|06BAAA| db $FC, $04, $CD, $20
|06BAAE| db $FC, $04, $CD, $20
|06BAB2| db $FC, $04, $CD, $20
|06BAB6| db $00, $00, $CA, $20

.step_4
|06BABA| db $F6, $04, $CC, $20
|06BABE| db $FC, $04, $CD, $20
|06BAC2| db $FC, $04, $CD, $20
|06BAC6| db $FC, $04, $CD, $20
|06BACA| db $00, $00, $CA, $20

.step_5
|06BACE| db $F8, $04, $CC, $20
|06BAD2| db $FC, $04, $CD, $20
|06BAD6| db $FC, $04, $CD, $20
|06BADA| db $FC, $04, $CD, $20
|06BADE| db $00, $00, $CA, $20

.step_6
|06BAE2| db $04, $03, $E2, $20
|06BAE6| db $FA, $04, $CC, $20
|06BAEA| db $FC, $04, $CD, $20
|06BAEE| db $FC, $04, $CD, $20
|06BAF2| db $00, $00, $CA, $20

.step_7
|06BAF6| db $04, $03, $F1, $20
|06BAFA| db $FA, $04, $CC, $20
|06BAFE| db $FC, $04, $CD, $20
|06BB02| db $FC, $04, $CD, $20
|06BB06| db $00, $00, $CA, $20

;===================================================================================================

WaterSwitch_Hitbox:
|06BB0A| db $08, $06
|06BB0C| db $10, $10
|06BB0E| db $10, $08
|06BB10| db $10, $08
|06BB12| db $10, $08
|06BB14| db $10, $08
|06BB16| db $10, $03
|06BB18| db $10, $08

;===================================================================================================

WaterSwitch_OAMDataPointer:
|06BB1A| dw WaterSwitch_OAMData.step_0
|06BB1C| dw WaterSwitch_OAMData.step_1
|06BB1E| dw WaterSwitch_OAMData.step_2
|06BB20| dw WaterSwitch_OAMData.step_3
|06BB22| dw WaterSwitch_OAMData.step_4
|06BB24| dw WaterSwitch_OAMData.step_5
|06BB26| dw WaterSwitch_OAMData.step_6
|06BB28| dw WaterSwitch_OAMData.step_7

;===================================================================================================

WaterSwitch_Main:
|06BB2A| JSR AllocateOAMDeferToPlayer
|06BB2D| JSR GetScreenCoordinates

|06BB30| LDA.w $0F50,X

|06BB33| LDY.w $0ABD
|06BB36| BEQ .translucency_enabled

|06BB38| ORA.b #$0E
|06BB3A| BRA .continue

.translucency_enabled
|06BB3C| AND.b #$F1

;---------------------------------------------------------------------------------------------------

.continue
|06BB3E| STA.w $0F50,X
|06BB41| STA.b $02

|06BB43| LDA.w $0DA0,X

|06BB46| LSR A
|06BB47| LSR A

|06BB48| AND.b #$03
|06BB4A| STA.b $01

|06BB4C| LDA.b #$00
|06BB4E| XBA
|06BB4F| LDA.w $0DE0,X
|06BB52| ASL A

|06BB53| PHX

|06BB54| REP #$31

|06BB56| PHB

|06BB57| TAY

|06BB58| LDX.w WaterSwitch_OAMDataPointer,Y

|06BB5B| LDA.b $90
|06BB5D| ADC.w #$0004
|06BB60| STA.b $90

|06BB62| TAY

|06BB63| INC.b $92

|06BB65| LDA.w #$0013
|06BB68| MVN ^WaterSwitch_OAMDataPointer, $00

|06BB6B| PLB

;---------------------------------------------------------------------------------------------------

|06BB6C| SEP #$20

|06BB6E| LDY.b $90

|06BB70| LDA.b $01
|06BB72| EOR.b #$FF
|06BB74| INC A

|06BB75| CLC
|06BB76| ADC.w $0FA8
|06BB79| TAX

|06BB7A| CLC
|06BB7B| ADC.w $0000,Y
|06BB7E| STA.w $0000,Y

|06BB81| TXA
|06BB82| CLC
|06BB83| ADC.w $0004,Y
|06BB86| STA.w $0004,Y

|06BB89| TXA
|06BB8A| CLC
|06BB8B| ADC.w $0008,Y
|06BB8E| STA.w $0008,Y

|06BB91| TXA
|06BB92| CLC
|06BB93| ADC.w $000C,Y
|06BB96| STA.w $000C,Y

|06BB99| LDA.w $0FA8
|06BB9C| CLC
|06BB9D| ADC.w $0010,Y
|06BBA0| STA.w $0010,Y

;---------------------------------------------------------------------------------------------------

|06BBA3| LSR.b $01

|06BBA5| LDA.w $0FA9
|06BBA8| SEC
|06BBA9| SBC.b $01
|06BBAB| TAX

|06BBAC| CLC
|06BBAD| ADC.w $0001,Y
|06BBB0| STA.w $0001,Y

|06BBB3| TXA
|06BBB4| CLC
|06BBB5| ADC.w $0005,Y
|06BBB8| STA.w $0005,Y

|06BBBB| TXA
|06BBBC| CLC
|06BBBD| ADC.w $0009,Y
|06BBC0| STA.w $0009,Y

|06BBC3| TXA
|06BBC4| CLC
|06BBC5| ADC.w $000D,Y
|06BBC8| STA.w $000D,Y

|06BBCB| LDA.w $0FA9
|06BBCE| CLC
|06BBCF| ADC.w $0011,Y
|06BBD2| STA.w $0011,Y

;---------------------------------------------------------------------------------------------------

|06BBD5| LDA.b $02
|06BBD7| ORA.w $0003,Y
|06BBDA| STA.w $0003,Y

|06BBDD| LDA.b $02
|06BBDF| ORA.w $0007,Y
|06BBE2| STA.w $0007,Y

|06BBE5| LDA.b $02
|06BBE7| ORA.w $000B,Y
|06BBEA| STA.w $000B,Y

|06BBED| LDA.b $02
|06BBEF| ORA.w $000F,Y
|06BBF2| STA.w $000F,Y

|06BBF5| LDA.b $02
|06BBF7| ORA.w $0013,Y
|06BBFA| STA.w $0013,Y

;---------------------------------------------------------------------------------------------------

|06BBFD| REP #$31

|06BBFF| LDA.w #$0000
|06BC02| TAY
|06BC03| STA.b ($92),Y

|06BC05| INY
|06BC06| INY
|06BC07| STA.b ($92),Y

|06BC09| LDA.w #$0200
|06BC0C| INY
|06BC0D| STA.b ($92),Y

;---------------------------------------------------------------------------------------------------

|06BC0F| SEP #$30

|06BC11| PLX

|06BC12| LDY.b #$FF
|06BC14| LDA.b #$04
|06BC16| JSR CorrectOAMEntries

|06BC19| LDA.w $0F20,X
|06BC1C| CMP.b $EE
|06BC1E| BEQ .same_layer

|06BC20| JMP.w .exit

;---------------------------------------------------------------------------------------------------

.same_layer
|06BC23| STZ.w $0DB0,X

|06BC26| LDA.w $0DE0,X
|06BC29| ASL A
|06BC2A| ASL A
|06BC2B| ASL A
|06BC2C| ASL A
|06BC2D| TAY

|06BC2E| LDA.w WaterSwitch_OAMData+0,Y
|06BC31| CLC
|06BC32| ADC.w $0D10,X
|06BC35| STA.b $04

;---------------------------------------------------------------------------------------------------

|06BC37| STZ.b $0A

|06BC39| LDA.w WaterSwitch_OAMData+0,Y
|06BC3C| BPL .positive_x

|06BC3E| DEC.b $0A

.positive_x
|06BC40| LDA.b $0A
|06BC42| ADC.w $0D30,X
|06BC45| STA.b $0A

|06BC47| LDA.w WaterSwitch_OAMData+1,Y
|06BC4A| CLC
|06BC4B| ADC.w $0D00,X
|06BC4E| STA.b $05

;---------------------------------------------------------------------------------------------------

|06BC50| STZ.b $0B

|06BC52| LDA.w WaterSwitch_OAMData+1,Y
|06BC55| BPL .positive_y

|06BC57| DEC.b $0B

.positive_y
|06BC59| LDA.b $0B
|06BC5B| ADC.w $0D20,X
|06BC5E| STA.b $0B

;---------------------------------------------------------------------------------------------------

|06BC60| LDA.w $0DE0,X
|06BC63| ASL A
|06BC64| TAY

|06BC65| LDA.w WaterSwitch_Hitbox+0,Y
|06BC68| STA.b $06

|06BC6A| LDA.w WaterSwitch_Hitbox+1,Y
|06BC6D| STA.b $07

|06BC6F| JSR SetupLinkHitbox
|06BC72| JSR CheckIfHitboxesOverlap
|06BC75| BCC .no_contact

;---------------------------------------------------------------------------------------------------

|06BC77| LDA.w $0D00,X
|06BC7A| PHA

|06BC7B| CLC
|06BC7C| ADC.b #$13
|06BC7E| STA.w $0D00,X

|06BC81| LDA.w $0D20,X
|06BC84| PHA

|06BC85| ADC.b #$00
|06BC87| STA.w $0D20,X

|06BC8A| JSR GetDirectionTowardsLink

|06BC8D| PLA
|06BC8E| STA.w $0D20,X

|06BC91| PLA
|06BC92| STA.w $0D00,X

|06BC95| CPY.b #$00
|06BC97| BNE .contact

|06BC99| LDA.b $2F
|06BC9B| CMP.b #$04
|06BC9D| BNE .contact

|06BC9F| INC.w $0DB0,X
|06BCA2| BRA .contact

;---------------------------------------------------------------------------------------------------

.no_contact
|06BCA4| JSR CheckDamageToLink_same_layer
|06BCA7| BCC .exit

;---------------------------------------------------------------------------------------------------

.contact
|06BCA9| JSL AbortMovement

|06BCAD| STZ.b $5E

|06BCAF| JSL RepelDash_long

.exit
|06BCB3| RTS

;===================================================================================================

Sprite_39_Locksmith:
|06BCB4| JSR SpriteDraw_Locksmith
|06BCB7| JSR CheckIfActive_bank06
|06BCBA| JSL BehaveAsBarrier

|06BCBE| LDA.w $0D80,X
|06BCC1| JSL JumpTableLocal
|06BCC5| dw Locksmith_Chillin
|06BCC7| dw Locksmith_FollowLink
|06BCC9| dw Locksmith_OfferService
|06BCCB| dw Locksmith_RespondToAnswer
|06BCCD| dw Locksmith_JustPromiseOkay
|06BCCF| dw Locksmith_SilentDismay

;===================================================================================================

Locksmith_Chillin:
|06BCD1| LDA.b #$05 ; MESSAGE 0105
|06BCD3| LDY.b #$01
|06BCD5| JSL ShowSolicitedMessage

|06BCD9| LDA.w $0D10,X
|06BCDC| PHA

|06BCDD| SEC
|06BCDE| SBC.b #$10
|06BCE0| STA.w $0D10,X

|06BCE3| JSR Get16BitSpriteCoords

|06BCE6| LDA.b #$01
|06BCE8| STA.w $0D50,X
|06BCEB| STA.w $0D40,X

|06BCEE| JSL CheckSpriteTileCollision_long
|06BCF2| BNE .dont_stalk_link

|06BCF4| INC.w $0D80,X

|06BCF7| LDA.l $7EF3CC
|06BCFB| CMP.b #$00
|06BCFD| BEQ .dont_stalk_link

|06BCFF| LDA.b #$05
|06BD01| STA.w $0D80,X

.dont_stalk_link
|06BD04| PLA
|06BD05| STA.w $0D10,X

|06BD08| RTS

;===================================================================================================

Locksmith_FollowLink:
|06BD09| LDA.b #$09 ; FOLLOWER 09
|06BD0B| STA.l $7EF3CC

|06BD0F| PHX

|06BD10| STZ.w $02F9

|06BD13| JSL LoadFollowerGraphics
|06BD17| JSL InitializeFollower

|06BD1B| PLX

|06BD1C| LDA.b #$40
|06BD1E| STA.w $02CD
|06BD21| STZ.w $02CE

|06BD24| STZ.w $0DD0,X

|06BD27| RTS

;===================================================================================================
; Why does he even have different messages?
;===================================================================================================
Locksmith_OfferService:
|06BD28| JSL CheckIfLinkIsBusy
|06BD2C| BCS .exit

|06BD2E| LDA.l $7EF3D3
|06BD32| BEQ .dont_have_chest

|06BD34| LDA.b #$07 ; MESSAGE 0107
|06BD36| LDY.b #$01
|06BD38| JSL ShowSolicitedMessage
|06BD3C| BCC .exit

|06BD3E| BRA .continue

;---------------------------------------------------------------------------------------------------

.dont_have_chest
|06BD40| LDA.b #$07 ; MESSAGE 0107
|06BD42| LDY.b #$01
|06BD44| JSL ShowMessageOnContact
|06BD48| BCC .exit

.continue
|06BD4A| INC.w $0D80,X

.exit
|06BD4D| RTS

;===================================================================================================

Locksmith_RespondToAnswer:
|06BD4E| LDA.w $1CE8
|06BD51| BNE .rejected

|06BD53| LDA.l $7EF3D3
|06BD57| BEQ .give_bottle

|06BD59| LDA.b #$0A ; MESSAGE 010A
|06BD5B| LDY.b #$01
|06BD5D| JSL ShowMessageUnconditional

|06BD61| LDA.b #$02
|06BD63| STA.w $0D80,X

|06BD66| RTS

;---------------------------------------------------------------------------------------------------

.give_bottle
|06BD67| LDY.b #$16 ; ITEMGET 16
|06BD69| STZ.w $02E9
|06BD6C| JSL GrantItemReceipt

|06BD70| LDA.l $7EF3C9
|06BD74| ORA.b #$10
|06BD76| STA.l $7EF3C9

|06BD7A| INC.w $0D80,X

|06BD7D| LDA.b #$00
|06BD7F| STA.l $7EF3CC

|06BD83| RTS

;---------------------------------------------------------------------------------------------------

.rejected
|06BD84| LDA.b #$08 ; MESSAGE 0108
|06BD86| LDY.b #$01
|06BD88| JSL ShowMessageUnconditional

|06BD8C| LDA.b #$02
|06BD8E| STA.w $0D80,X

|06BD91| RTS

;===================================================================================================

Locksmith_JustPromiseOkay:
|06BD92| LDA.b #$09 ; MESSAGE 0109
|06BD94| LDY.b #$01
|06BD96| JSL ShowSolicitedMessage

|06BD9A| RTS

;===================================================================================================

Locksmith_SilentDismay:
|06BD9B| LDA.b #$05 ; MESSAGE 0105
|06BD9D| LDY.b #$01
|06BD9F| JSL ShowSolicitedMessage

|06BDA3| RTS

;===================================================================================================

pool SpriteDraw_Locksmith

.oam_groups
|06BDA4| dw   0,  -8 : db $EA, $00, $00, $02
|06BDAC| dw   0,   0 : db $EC, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Locksmith:
|06BDB4| LDA.b #$02
|06BDB6| STA.b $06
|06BDB8| STZ.b $07

|06BDBA| LDA.b #<.oam_groups
|06BDBC| STA.b $08

|06BDBE| LDA.b #>.oam_groups
|06BDC0| STA.b $09

|06BDC2| JSL TabulatedSpriteDraw.player_deferred

|06BDC6| JMP.w DrawSpriteShadow

;===================================================================================================
; Use garnish next time, geez...
;===================================================================================================
Sprite_2B_Hobo:
|06BDC9| LDA.w $0E80,X
|06BDCC| JSL JumpTableLocal
|06BDD0| dw Hobo
|06BDD2| dw SnotBubble
|06BDD4| dw Campfire
|06BDD6| dw AirPollution

;===================================================================================================

Hobo:
|06BDD8| JSL SpriteDraw_Hobo
|06BDDC| JSR CheckIfActive_bank06

|06BDDF| LDA.b #$03
|06BDE1| STA.w $0F60,X

|06BDE4| JSR CheckDamageToLink_same_layer
|06BDE7| BCC .no_contact

|06BDE9| JSL AbortMovement

|06BDED| STZ.b $5E

|06BDEF| JSL CancelDash_long

.no_contact
|06BDF3| LDA.w $0D80,X
|06BDF6| JSL JumpTableLocal
|06BDFA| dw Hobo_Sleep
|06BDFC| dw Hobo_Awoken
|06BDFE| dw Hobo_GiveBottle
|06BE00| dw Hobo_BackToSleep

;===================================================================================================

Hobo_Sleep:
|06BE02| LDA.b #$07
|06BE04| STA.w $0F60,X

|06BE07| JSR CheckDamageToLink_same_layer
|06BE0A| BCC .keep_snoozing

|06BE0C| LDA.b $F6 ; checks for A press
|06BE0E| BPL .keep_snoozing

|06BE10| INC.w $0D80,X

|06BE13| LDY.w $0E90,X

|06BE16| LDA.b #$04
|06BE18| STA.w $0DF0,Y

|06BE1B| LDA.b #$01
|06BE1D| STA.w $02E4

;---------------------------------------------------------------------------------------------------

.keep_snoozing
|06BE20| LDA.w $0E10,X
|06BE23| BNE .exit

|06BE25| LDA.b #$A0
|06BE27| STA.w $0E10,X

|06BE2A| JSR ExpelSnotBubble

|06BE2D| TYA
|06BE2E| STA.w $0E90,X

.exit
|06BE31| RTS

;===================================================================================================

pool Hobo_Awoken

.anim_step
|06BE32| db $00, $01, $00, $01, $00, $01, $02, $FF

.timer
|06BE3A| db   6,   2,   6,   6,   2, 100,  30

endpool

;---------------------------------------------------------------------------------------------------

Hobo_Awoken:
|06BE41| LDA.w $0DF0,X
|06BE44| BNE .exit

|06BE46| LDY.w $0D90,X

|06BE49| LDA.w .anim_step,Y ; wake up when animation is done at $FF
|06BE4C| BMI .fully_awake

|06BE4E| STA.w $0DC0,X

|06BE51| LDA.w .timer,Y
|06BE54| STA.w $0DF0,X

|06BE57| INC.w $0D90,X

.exit
|06BE5A| RTS

;---------------------------------------------------------------------------------------------------

.fully_awake
|06BE5B| LDA.b #$D5 ; MESSAGE 00D5
|06BE5D| LDY.b #$00
|06BE5F| JSL ShowMessageUnconditional

|06BE63| INC.w $0D80,X

|06BE66| RTS

;===================================================================================================

Hobo_GiveBottle:
|06BE67| INC.w $0D80,X

|06BE6A| LDA.b #$01
|06BE6C| STA.w $0DC0,X

|06BE6F| PHX

|06BE70| LDX.b $8A

|06BE72| LDA.l $7EF280,X
|06BE76| ORA.b #$20
|06BE78| STA.l $7EF280,X

|06BE7C| LDY.b #$16 ; ITEMGET 16
|06BE7E| STZ.w $02E9
|06BE81| JSL GrantItemReceipt

|06BE85| LDA.l $7EF3C9
|06BE89| ORA.b #$01
|06BE8B| STA.l $7EF3C9

|06BE8F| PLX

|06BE90| RTS

;===================================================================================================

Hobo_BackToSleep:
|06BE91| STZ.w $02E4

|06BE94| STZ.w $0DC0,X

|06BE97| LDA.w $0DF0,X
|06BE9A| BNE .exit

|06BE9C| LDA.b #$A0
|06BE9E| STA.w $0DF0,X

|06BEA1| JSR ExpelSnotBubble

.exit
|06BEA4| RTS

;===================================================================================================
; Why is this even separate...?
;===================================================================================================
SpawnBonusHobo:
|06BEA5| LDA.b #$2B ; SPRITE 2B
|06BEA7| JSL SpawnSpriteDynamically
|06BEAB| BMI .no_space

|06BEAD| JSL SetSpawnedSpriteCoordinates

|06BEB1| LDA.b #$00
|06BEB3| STA.w $0E80,Y
|06BEB6| STA.w $0BA0,Y

.no_space
|06BEB9| RTS

;===================================================================================================

UNREACHABLE_06BEBA:
|06BEBA| db $01, $FF

;===================================================================================================

SnotBubble:
|06BEBC| LDA.b #$04
|06BEBE| JSL AllocateOAMInRegionC

|06BEC2| JSR SpriteDraw_SingleSmall
|06BEC5| JSR CheckIfActive_bank06

|06BEC8| LDA.b $1A

|06BECA| LSR A ; /16
|06BECB| LSR A
|06BECC| LSR A
|06BECD| LSR A

|06BECE| AND.b #$01

|06BED0| INC A
|06BED1| INC A

|06BED2| STA.w $0DC0,X

|06BED5| LDA.w $0E00,X
|06BED8| BNE .delay

|06BEDA| INC.w $0DC0,X

|06BEDD| JSR MoveSpriteZ_bank06

|06BEE0| LDA.w $0DF0,X
|06BEE3| BNE .delay

|06BEE5| STZ.w $0DD0,X

.delay
|06BEE8| LDA.w $0DF0,X
|06BEEB| CMP.b #$04
|06BEED| BCS .exit

|06BEEF| LDA.b #$03
|06BEF1| STA.w $0DC0,X

.exit
|06BEF4| RTS

;===================================================================================================

ExpelSnotBubble:
|06BEF5| LDA.b #$2B ; SPRITE 2B
|06BEF7| JSL SpawnSpriteDynamically
|06BEFB| BMI EXIT_06BF1C

|06BEFD| JSL SetSpawnedSpriteCoordinates

|06BF01| LDA.b #$01
|06BF03| STA.w $0E80,Y

|06BF06| LDA.b #$02
|06BF08| STA.w $0F80,Y

|06BF0B| LDA.b #$60
|06BF0D| STA.w $0DF0,Y

|06BF10| LSR A
|06BF11| STA.w $0E00,Y
|06BF14| STA.w $0BA0,Y

;===================================================================================================

ZeroOutOAMAllocation:
|06BF17| LDA.b #$00
|06BF19| STA.w $0E40,Y

;---------------------------------------------------------------------------------------------------

#EXIT_06BF1C:
|06BF1C| RTS

;===================================================================================================

Campfire:
|06BF1D| JSR SpriteDraw_SingleSmall
|06BF20| JSR CheckIfActive_bank06

|06BF23| LDA.b $1A

|06BF25| LSR A
|06BF26| LSR A
|06BF27| LSR A

|06BF28| AND.b #$03
|06BF2A| STA.b $00

|06BF2C| AND.b #$01
|06BF2E| STA.w $0DC0,X

|06BF31| LDA.b $00

|06BF33| ASL A
|06BF34| ASL A
|06BF35| ASL A
|06BF36| ASL A

|06BF37| AND.b #$40
|06BF39| STA.b $00

|06BF3B| LDA.w $0F50,X
|06BF3E| AND.b #$BF
|06BF40| ORA.b $00
|06BF42| STA.w $0F50,X

|06BF45| LDA.w $0DF0,X
|06BF48| BNE .exit

|06BF4A| JSR PolluteTheAirWithSmoke

|06BF4D| LDA.b #$2F
|06BF4F| STA.w $0DF0,X

.exit
|06BF52| RTS

;===================================================================================================

SpawnCampfire:
|06BF53| LDA.b #$2B ; SPRITE 2B
|06BF55| JSL SpawnSpriteDynamically
|06BF59| BMI .no_space

|06BF5B| LDA.b #$94
|06BF5D| STA.w $0D10,Y

|06BF60| LDA.b #$01
|06BF62| STA.w $0D30,Y

|06BF65| LDA.b #$3F
|06BF67| STA.w $0D00,Y

|06BF6A| LDA.b #$00
|06BF6C| STA.w $0D20,Y

|06BF6F| LDA.b #$02
|06BF71| STA.w $0E80,Y
|06BF74| STA.w $0BA0,Y

|06BF77| JSR ZeroOutOAMAllocation

|06BF7A| LDA.w $0F50,Y
|06BF7D| AND.b #$F1
|06BF7F| ORA.b #$02
|06BF81| STA.w $0F50,Y

.no_space
|06BF84| RTS

;===================================================================================================

pool AirPollution

.flip
|06BF85| db $00, $40, $80, $C0

endpool

;---------------------------------------------------------------------------------------------------

AirPollution:
|06BF89| LDA.b #$06
|06BF8B| STA.w $0DC0,X

|06BF8E| JSR SpriteDraw_SingleSmall
|06BF91| JSR CheckIfActive_bank06

|06BF94| JSR MoveSpriteXY_bank06
|06BF97| JSR MoveSpriteZ_bank06

|06BF9A| LDA.b $1A

|06BF9C| LSR A
|06BF9D| LSR A
|06BF9E| LSR A
|06BF9F| LSR A

|06BFA0| AND.b #$03
|06BFA2| TAY

|06BFA3| LDA.w $0F50,X
|06BFA6| AND.b #$3F
|06BFA8| ORA.w .flip,Y
|06BFAB| STA.w $0F50,X

|06BFAE| LDA.w $0DF0,X
|06BFB1| BNE .exit

|06BFB3| STZ.w $0DD0,X

.exit
|06BFB6| RTS

;===================================================================================================

PolluteTheAirWithSmoke:
|06BFB7| LDA.b #$2B ; SPRITE 2B
|06BFB9| JSL SpawnSpriteDynamically
|06BFBD| BMI .exit

|06BFBF| JSL SetSpawnedSpriteCoordinates

|06BFC3| LDA.b $02
|06BFC5| SEC
|06BFC6| SBC.b #$04
|06BFC8| STA.w $0D00,Y

|06BFCB| LDA.b $03
|06BFCD| SBC.b #$00
|06BFCF| STA.w $0D20,Y

|06BFD2| LDA.b #$03
|06BFD4| STA.w $0E80,Y

|06BFD7| LDA.b #$07
|06BFD9| STA.w $0F80,Y

|06BFDC| LDA.b #$60
|06BFDE| STA.w $0DF0,Y
|06BFE1| STA.w $0BA0,Y

|06BFE4| JSR ZeroOutOAMAllocation

.exit
|06BFE7| RTS

;===================================================================================================

Sprite_73_UncleAndPriest_bounce:
|06BFE8| JSL Sprite_73_UncleAndPriest

|06BFEC| RTS

;===================================================================================================

SpritePrep_UncleAndPriest_bounce:
|06BFED| JSL SpritePrep_UncleAndPriest

|06BFF1| RTS

;===================================================================================================

SpriteModule_Active_bank05_bounce:
|06BFF2| JSL SpriteModule_Active_bank05

|06BFF6| RTS

;===================================================================================================

SpriteModule_Active_bank1E_bounce:
|06BFF7| JSL SpriteModule_Active_bank1E

|06BFFB| RTS

;===================================================================================================

SpriteModule_Active_bank1D_bounce:
|06BFFC| JSL SpriteModule_Active_bank1D

|06C000| RTS

;===================================================================================================

SpritePrep_OldMan_bounce:
|06C001| JSL SpritePrep_OldMan

|06C005| RTS

;===================================================================================================

TutorialGuardOrBarrier_bounce:
|06C006| JSL TutorialGuardOrBarrier

|06C00A| RTS

;===================================================================================================

PullSwitch_bounce:
|06C00B| JSL PullSwitch

|06C00F| RTS

;===================================================================================================

SomariaPlatformAndPipe_bounce:
|06C010| JSL SomariaPlatformAndPipe

|06C014| RTS

;===================================================================================================

Sprite_F2_MedallionTablet_bounce:
|06C015| JSL Sprite_F2_MedallionTablet

|06C019| RTS

;===================================================================================================

Sprite_32_ArguingBros_bounce:
|06C01A| JSL Sprite_32_ArguingBros

|06C01E| RTS

;===================================================================================================

Sprite_33_RupeePull_bounce:
|06C01F| JSL Sprite_33_RupeePull

|06C023| RTS

;===================================================================================================

Sprite_14_ThievesTownGrate_bounce:
|06C024| JSL Sprite_14_ThievesTownGrate

|06C028| RTS

;===================================================================================================

Sprite_34_YoungSnitch_bounce:
|06C029| JSL Sprite_34_YoungSnitch

|06C02D| RTS

;===================================================================================================

SpritePrep_Snitch_bounce_2:
|06C02E| JSL SpritePrep_Snitch

|06C032| RTS

;===================================================================================================

Sprite_35_Innkeeper_bounce:
|06C033| JSL Sprite_35_Innkeeper

|06C037| RTS

;===================================================================================================

SpritePrep_Snitch_bounce_3:
|06C038| JSL SpritePrep_Snitch

|06C03C| RTS

;===================================================================================================

Sprite_36_Witch_bounce:
|06C03D| JSL Sprite_36_Witch

|06C041| RTS

;===================================================================================================

Sprite_37_Waterfall_bounce:
|06C042| JSL Sprite_37_Waterfall

|06C046| RTS

;===================================================================================================

Sprite_38_EyeStatue_bounce:
|06C047| JSL Sprite_38_EyeStatue

|06C04B| RTS

;===================================================================================================

Sprite_3A_MagicBat_bounce:
|06C04C| JSL Sprite_3A_MagicBat

|06C050| RTS

;===================================================================================================

Sprite_3B_BonkItem_bounce:
|06C051| JSL Sprite_3B_BonkItem

|06C055| RTS

;===================================================================================================

Sprite_3C_KidInKak_bounce:
|06C056| JSL Sprite_3C_KidInKak

|06C05A| RTS

;===================================================================================================

Sprite_3D_OldSnitch_bounce:
|06C05B| JSL Sprite_3D_OldSnitch

|06C05F| RTS

;===================================================================================================

Sprite_74_RunningBoy_bounce:
|06C060| JSL Sprite_74_RunningBoy

|06C064| RTS

;===================================================================================================

SpritePrep_RunningBoy_bounce:
|06C065| JSL SpritePrep_RunningBoy

|06C069| RTS

;===================================================================================================

Sprite_75_BottleMerchant_bounce:
|06C06A| JSL Sprite_75_BottleMerchant

|06C06E| RTS

;===================================================================================================

Sprite_76_Zelda_bounce:
|06C06F| JSL Sprite_76_Zelda

|06C073| RTS

;===================================================================================================

SpritePrep_Zelda_bounce:
|06C074| JSL SpritePrep_Zelda

|06C078| RTS

;===================================================================================================

Sprite_78_MrsSahasrahla_bounce:
|06C079| JSL Sprite_78_MrsSahasrahla

|06C07D| RTS

;===================================================================================================

Sprite_E7_Mushroom_bounce:
|06C07E| JSL Sprite_E7_Mushroom

|06C082| RTS

;===================================================================================================

SpritePrep_Mushroom_bounce:
|06C083| JSL SpritePrep_Mushroom

|06C087| RTS

;===================================================================================================

Sprite_E8_FakeMasterSword_bounce:
|06C088| JSL Sprite_E8_FakeMasterSword

|06C08C| RTS

;---------------------------------------------------------------------------------------------------

SpritePrep_FakeMasterSword_bounce:
|06C08D| JSL SpritePrep_FakeMasterSword

|06C091| RTS

;===================================================================================================

Sprite_16_Elder_bounce:
|06C092| JSL Sprite_16_Elder

|06C096| RTS

;===================================================================================================

Sprite_E9_MagicShopAssistant_bounce:
|06C097| JSL Sprite_E9_MagicShopAssistant

|06C09B| RTS

;===================================================================================================

SpritePrep_MagicShopAssistant_bounce:
|06C09C| JSL SpritePrep_MagicShopAssistant

|06C0A0| RTS

;===================================================================================================

Sprite_EA_HeartContainer_bounce:
|06C0A1| JSL Sprite_EA_HeartContainer

|06C0A5| RTS

;===================================================================================================

SpritePrep_HeartContainer_bounce:
|06C0A6| JSL SpritePrep_HeartContainer

|06C0AA| RTS

;===================================================================================================

Sprite_EB_HeartPiece_bounce:
|06C0AB| JSL Sprite_EB_HeartPiece

|06C0AF| RTS

;===================================================================================================

SpritePrep_HeartPiece:
|06C0B0| JSL SpritePrep_HeartContainer

|06C0B4| RTS

;===================================================================================================
; Seems unused
;===================================================================================================
Sprite_2E_FluteKid_bounce:
|06C0B5| JSL Sprite_2E_FluteKid

|06C0B9| RTS

;===================================================================================================

Sprite_2D_NecklessMan_bounce:
|06C0BA| JSL Sprite_2D_NecklessMan

|06C0BE| RTS

;===================================================================================================

Sprite_29_Adult_bounce:
|06C0BF| JSL Sprite_29_Adult

|06C0C3| RTS

;===================================================================================================

Sprite_2A_SweepingLady_bounce:
|06C0C4| JSL Sprite_2A_SweepingLady

|06C0C8| RTS

;===================================================================================================

Sprite_2C_Lumberjacks_bounce:
|06C0C9| JSL Sprite_2C_Lumberjacks

|06C0CD| RTS

;===================================================================================================

Sprite_31_FortuneTeller_bounce:
|06C0CE| JSL Sprite_31_FortuneTeller

|06C0D2| RTS

;===================================================================================================

Sprite_2F_RaceGameLady_bounce:
|06C0D3| JSL Sprite_2F_RaceGameLady

|06C0D7| RTS

;===================================================================================================

Sprite_30_RaceGameGuy_bounce:
|06C0D8| JSL Sprite_30_RaceGameGuy

|06C0DC| RTS

;===================================================================================================

Sprite_25_TalkingTree_bounce:
|06C0DD| JSL Sprite_25_TalkingTree

|06C0E1| RTS

;===================================================================================================

StatueDirection:
|06C0E2| db $04, $06, $00, $02

;---------------------------------------------------------------------------------------------------

StatuePressMask:
|06C0E6| db $01, $02, $04, $08

;---------------------------------------------------------------------------------------------------

StatueSpeed:
.x ; bleeds into next
|06C0EA| db -16,  16

.y
|06C0EC| db   0,   0, -16,  16

;===================================================================================================

Sprite_1C_Statue:
|06C0F0| LDA.w $0DE0,X
|06C0F3| BEQ .not_being_pushed

|06C0F5| STZ.w $0DE0,X

|06C0F8| STZ.b $5E
|06C0FA| STZ.b $48

.not_being_pushed
|06C0FC| LDA.w $0DF0,X
|06C0FF| BEQ .retain_momentum

|06C101| LDA.b #$01
|06C103| STA.w $0DE0,X

|06C106| LDA.b #$81
|06C108| STA.b $48

|06C10A| LDA.b #$08
|06C10C| STA.b $5E

.retain_momentum
|06C10E| JSR SpriteDraw_Statue
|06C111| JSR CheckIfActive_bank06
|06C114| JSR Statue_BlockSprites

|06C117| STZ.w $0642

|06C11A| JSR Statue_CheckForSwitch
|06C11D| BCC .no_switch

|06C11F| LDA.b #$01
|06C121| STA.w $0642

.no_switch
|06C124| JSR MoveSpriteXY_bank06

|06C127| JSR Get16BitSpriteCoords
|06C12A| JSR CheckSpriteTileCollision
|06C12D| JSR ZeroVelocityXY_bank06

|06C130| JSR CheckDamageToLink_same_layer
|06C133| BCC Statue_NotInContact

|06C135| LDA.b #$07
|06C137| STA.w $0DF0,X

|06C13A| JSL RepelDash_long

|06C13E| LDA.w $0E00,X
|06C141| BNE Statue_AbortMovement

|06C143| JSR GetDirectionTowardsLink

|06C146| LDA.w StatueSpeed.x,Y
|06C149| STA.w $0D50,X

|06C14C| LDA.w StatueSpeed.y,Y
|06C14F| STA.w $0D40,X

;===================================================================================================

Statue_HandleGrab:
|06C152| LDA.w $0376
|06C155| AND.b #$02
|06C157| BNE .not_grabbing

|06C159| JSL AbortMovement

.not_grabbing
|06C15D| LDA.w $0E70,X
|06C160| AND.b #$0F
|06C162| BNE .exit

|06C164| LDA.w $0F10,X
|06C167| BNE .exit

|06C169| LDA.b #$22 ; SFX2.22
|06C16B| JSL QueueSpriteSFX2WithPan

|06C16F| LDA.b #$08
|06C171| STA.w $0F10,X

.exit
|06C174| RTS

;===================================================================================================

Statue_AbortMovement:
|06C175| JSL AbortMovement

|06C179| RTS

;===================================================================================================

Statue_NotInContact:
|06C17A| LDA.w $0DF0,X
|06C17D| BNE .delay_timer

|06C17F| LDA.b #$0D
|06C181| STA.w $0E00,X

.delay_timer
|06C184| REP #$20

|06C186| LDA.w $0FD8
|06C189| SEC
|06C18A| SBC.b $22
|06C18C| CLC
|06C18D| ADC.w #$0010

|06C190| CMP.w #$0023
|06C193| BCS .reset_contact

|06C195| LDA.w $0FDA
|06C198| SEC
|06C199| SBC.b $20
|06C19B| CLC
|06C19C| ADC.w #$000C

|06C19F| CMP.w #$0024
|06C1A2| BCS .reset_contact

;---------------------------------------------------------------------------------------------------

|06C1A4| SEP #$30

|06C1A6| JSR GetDirectionTowardsLink

|06C1A9| LDA.b $2F
|06C1AB| CMP.w StatueDirection,Y
|06C1AE| BNE .reset_contact

|06C1B0| LDA.w $0372
|06C1B3| BNE .reset_contact

|06C1B5| LDA.b #$01
|06C1B7| STA.w $02FA

|06C1BA| LDA.b #$01
|06C1BC| STA.w $0D90,X

|06C1BF| LDA.w $0376
|06C1C2| AND.b #$02
|06C1C4| BEQ .exit

|06C1C6| LDA.b $F0
|06C1C8| AND.w StatuePressMask,Y
|06C1CB| BEQ .exit

|06C1CD| LDA.b $30
|06C1CF| ORA.b $31
|06C1D1| BEQ .exit

;---------------------------------------------------------------------------------------------------

|06C1D3| TYA
|06C1D4| EOR.b #$01
|06C1D6| TAY

|06C1D7| LDA.w StatueSpeed.x,Y
|06C1DA| STA.w $0D50,X

|06C1DD| LDA.w StatueSpeed.y,Y
|06C1E0| STA.w $0D40,X

|06C1E3| JMP.w Statue_HandleGrab

;---------------------------------------------------------------------------------------------------

.reset_contact
|06C1E6| SEP #$30

|06C1E8| LDA.w $0D90,X
|06C1EB| BEQ .exit

|06C1ED| STZ.w $0D90,X

|06C1F0| STZ.b $5E

|06C1F2| STZ.w $0376
|06C1F5| STZ.w $02FA

|06C1F8| LDA.b $50
|06C1FA| AND.b #$FE
|06C1FC| STA.b $50

.exit
|06C1FE| RTS

;===================================================================================================

pool Statue_CheckForSwitch

.offset_x
|06C1FF| db   3,  12,   3,  12

.offset_y
|06C203| db   3,   3,  12,  12

; TILETYPE 23
; TILETYPE 24
; TILETYPE 25
; TILETYPE 3B
.tile_id
|06C207| db $23, $24, $25, $3B

endpool

;---------------------------------------------------------------------------------------------------

Statue_CheckForSwitch:
|06C20B| LDY.b #$03

.next_tile
|06C20D| LDA.w $0D00,X
|06C210| CLC
|06C211| ADC.w .offset_y,Y
|06C214| STA.b $00

|06C216| LDA.w $0D20,X
|06C219| ADC.b #$00
|06C21B| STA.b $01

|06C21D| LDA.w $0D10,X
|06C220| CLC
|06C221| ADC.w .offset_x,Y
|06C224| STA.b $02

|06C226| LDA.w $0D30,X
|06C229| ADC.b #$00
|06C22B| STA.b $03

|06C22D| LDA.w $0F20,X

|06C230| PHY

|06C231| JSL GetTileType_long

|06C235| PLY

;---------------------------------------------------------------------------------------------------

|06C236| LDA.w $0FA5

|06C239| CMP.w .tile_id+0
|06C23C| BEQ .switch_tile

|06C23E| CMP.w .tile_id+1
|06C241| BEQ .switch_tile

|06C243| CMP.w .tile_id+2
|06C246| BEQ .switch_tile

|06C248| CMP.w .tile_id+3
|06C24B| BNE .fail

.switch_tile
|06C24D| DEY
|06C24E| BPL .next_tile

|06C250| SEC

|06C251| RTS

;---------------------------------------------------------------------------------------------------

.fail
|06C252| CLC

|06C253| RTS

;===================================================================================================

pool SpriteDraw_Statue

.oam_groups
|06C254| dw   0,  -8 : db $C2, $00, $00, $00
|06C25C| dw   8,  -8 : db $C2, $40, $00, $00
|06C264| dw   0,   0 : db $C0, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Statue:
|06C26C| REP #$20

|06C26E| LDA.w #.oam_groups
|06C271| STA.b $08

|06C273| LDA.w #$0003
|06C276| STA.b $06

|06C278| SEP #$30

|06C27A| JSL TabulatedSpriteDraw.player_deferred

|06C27E| RTS

;===================================================================================================

Statue_BlockSprites:
|06C27F| LDY.b #$0F

.next
|06C281| LDA.w $0E20,Y
|06C284| CMP.b #$1C ; SPRITE 1C
|06C286| BEQ .skip

|06C288| CPY.w $0FA0
|06C28B| BEQ .skip

|06C28D| TYA
|06C28E| EOR.b $1A
|06C290| AND.b #$01
|06C292| BNE .skip

|06C294| LDA.w $0DD0,Y
|06C297| CMP.b #$09
|06C299| BCC .skip

|06C29B| LDA.w $0D10,Y
|06C29E| STA.b $04

|06C2A0| LDA.w $0D30,Y
|06C2A3| STA.b $05

|06C2A5| LDA.w $0D00,Y
|06C2A8| STA.b $06

|06C2AA| LDA.w $0D20,Y
|06C2AD| STA.b $07

|06C2AF| REP #$20

|06C2B1| LDA.w $0FD8
|06C2B4| SEC
|06C2B5| SBC.b $04
|06C2B7| CLC
|06C2B8| ADC.w #$000C

|06C2BB| CMP.w #$0018
|06C2BE| BCS .skip

|06C2C0| LDA.w $0FDA
|06C2C3| SEC
|06C2C4| SBC.b $06
|06C2C6| CLC
|06C2C7| ADC.w #$000C

|06C2CA| CMP.w #$0024
|06C2CD| BCS .skip

;---------------------------------------------------------------------------------------------------

|06C2CF| SEP #$20

|06C2D1| LDA.b #$04
|06C2D3| STA.w $0EA0,Y

|06C2D6| PHY

|06C2D7| LDA.b #$20
|06C2D9| JSR ProjectSpriteSpeedTowardsLocation

|06C2DC| PLY

|06C2DD| LDA.b $00
|06C2DF| STA.w $0F30,Y

|06C2E2| LDA.b $01
|06C2E4| STA.w $0F40,Y

;---------------------------------------------------------------------------------------------------

.skip
|06C2E7| SEP #$20

|06C2E9| DEY
|06C2EA| BPL .next

|06C2EC| RTS

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
|06C2ED| JSR GetScreenCoordinates_wrapper
|06C2F0| JSR CheckIfActive_bank06

|06C2F3| LDA.b $8A
|06C2F5| CMP.b #$18 ; OW 18
|06C2F7| BNE .not_kakariko

|06C2F9| LDA.l $7EF34C
|06C2FD| CMP.b #$03
|06C2FF| BNE .no_active_flute

|06C301| STZ.w $0DD0,X

.no_active_flute
|06C304| RTS

;---------------------------------------------------------------------------------------------------

.not_kakariko
|06C305| LDA.l $7EF34C
|06C309| AND.b #$02
|06C30B| BEQ .dont_die

|06C30D| STZ.w $0DD0,X

.dont_die
|06C310| RTS

;===================================================================================================

FairyPond_offset_x:
|06C311| db   0,   4,   8,  12
|06C315| db  16,  20,  24,   0

FairyPond_offset_y:
|06C319| db   0,   8,  16,  24
|06C31D| db  32,  40,   4,  36

;===================================================================================================

Sprite_72_FairyPond:
|06C321| LDA.w $0D90,X
|06C324| BNE FairyPond_Dust

|06C326| LDA.w $0DA0,X
|06C329| BNE .visible

|06C32B| JSR GetScreenCoordinates_wrapper

|06C32E| JMP.w FairyPond_Main

.visible
|06C331| JSR SpriteDraw_FairyQueen

|06C334| LDA.b $1A

|06C336| LSR A
|06C337| LSR A
|06C338| LSR A
|06C339| LSR A

|06C33A| AND.b #$01
|06C33C| STA.w $0DC0,X

|06C33F| LDA.b $1A
|06C341| AND.b #$0F
|06C343| BNE .exit

|06C345| LDA.b #$72 ; SPRITE 72
|06C347| JSL SpawnSpriteDynamically
|06C34B| BMI .exit

|06C34D| PHX

|06C34E| JSL GetRandomNumber
|06C352| AND.b #$07
|06C354| TAX

|06C355| LDA.b $00
|06C357| CLC
|06C358| ADC.w FairyPond_offset_x,X
|06C35B| STA.w $0D10,Y

|06C35E| LDA.b $01
|06C360| ADC.b #$00
|06C362| STA.w $0D30,Y

|06C365| JSL GetRandomNumber
|06C369| AND.b #$07
|06C36B| TAX

|06C36C| LDA.b $02
|06C36E| CLC
|06C36F| ADC.w FairyPond_offset_y,X
|06C372| STA.w $0D00,Y

|06C375| LDA.b $03
|06C377| ADC.b #$00
|06C379| STA.w $0D20,Y

|06C37C| LDA.b #$1F
|06C37E| STA.w $0DB0,Y
|06C381| STA.w $0D90,Y

|06C384| JSR ZeroOutOAMAllocation

|06C387| LDA.b #$48
|06C389| STA.w $0E60,Y

|06C38C| AND.b #$0F
|06C38E| STA.w $0F50,Y

|06C391| LDA.b #$01
|06C393| STA.w $0DA0,Y

|06C396| PLX

.exit
|06C397| RTS

;===================================================================================================

FairyPond_Dust:
|06C398| DEC.w $0DB0,X
|06C39B| BNE .delay

|06C39D| STZ.w $0DD0,X

.delay
|06C3A0| LDA.w $0DB0,X
|06C3A3| LSR A
|06C3A4| LSR A
|06C3A5| LSR A
|06C3A6| STA.w $0DC0,X

|06C3A9| LDA.b #$04
|06C3AB| JSL AllocateOAMInRegionC

|06C3AF| JSR SpriteDraw_SingleSmall

|06C3B2| RTS

;===================================================================================================

FairyPond_TossGFXID:
.bow
|06C3B3| db $3A ; empty normal bow
|06C3B4| db $3A ; normal bow and arrows
|06C3B5| db $3B ; empty silver bow
|06C3B6| db $3B ; silver bow and arrows

.boomerang
|06C3B7| db $0C ; blue
|06C3B8| db $2A ; red

.hookshot
|06C3B9| db $0A

.bombs
|06C3BA| db $27

.mushroom
|06C3BB| db $29 ; mushroom
|06C3BC| db $0D ; powder

.fire_rod
|06C3BD| db $07

.ice_rod
|06C3BE| db $08

.bombos
|06C3BF| db $0F

.ether
|06C3C0| db $10

.quake
|06C3C1| db $11

.lamp
|06C3C2| db $12

.hammer
|06C3C3| db $09

.flute
|06C3C4| db $13 ; shovel
|06C3C5| db $14 ; inactive flute
|06C3C6| db $4A ; active flute

.net
|06C3C7| db $21

.book
|06C3C8| db $1D

.somaria
|06C3C9| db $15

.byrna
|06C3CA| db $18

.cape
|06C3CB| db $19

.mirror
|06C3CC| db $31 ; map
|06C3CD| db $1A ; mirror
|06C3CE| db $1A ; mirror - does this hint at an extra mirror upgrade?

.gloves
|06C3CF| db $1B ; power glove
|06C3D0| db $1C ; titan's mitt

.boots
|06C3D1| db $4B

.flippers
|06C3D2| db $1E

.pearl
|06C3D3| db $1F

.sword
|06C3D4| db $49 ; fighter sword
|06C3D5| db $01 ; master sword
|06C3D6| db $02 ; tempered sword
|06C3D7| db $03 ; butter sword

.shield
|06C3D8| db $04 ; fighter shield
|06C3D9| db $05 ; fire shield
|06C3DA| db $06 ; mirror shield

.armor
|06C3DB| db $22 ; blue mail
|06C3DC| db $23 ; red mail

.bottles
|06C3DD| db $29 ; mushroom
|06C3DE| db $16 ; empty bottle
|06C3DF| db $2B ; red potion
|06C3E0| db $2C ; green potion
|06C3E1| db $2D ; blue potion
|06C3E2| db $3D ; fairy
|06C3E3| db $3C ; bee
|06C3E4| db $48 ; good bee

;---------------------------------------------------------------------------------------------------

.pointer
|06C3E5| dw .bow-1
|06C3E7| dw .boomerang-1
|06C3E9| dw .hookshot-1
|06C3EB| dw .bombs-1
|06C3ED| dw .mushroom-1
|06C3EF| dw .fire_rod-1
|06C3F1| dw .ice_rod-1
|06C3F3| dw .bombos-1
|06C3F5| dw .ether-1
|06C3F7| dw .quake-1
|06C3F9| dw .lamp-1
|06C3FB| dw .hammer-1
|06C3FD| dw .flute-1
|06C3FF| dw .net-1
|06C401| dw .book-1
|06C403| dw .somaria-1
|06C405| dw .somaria-1
|06C407| dw .byrna-1
|06C409| dw .cape-1
|06C40B| dw .mirror-1
|06C40D| dw .gloves-1
|06C40F| dw .boots-1
|06C411| dw .flippers-1
|06C413| dw .pearl-1
|06C415| dw .sword-1
|06C417| dw .sword-1
|06C419| dw .shield-1
|06C41B| dw .armor-1
|06C41D| dw .bottles-1
|06C41F| dw .bottles-1
|06C421| dw .bottles-1
|06C423| dw .bottles-1

;===================================================================================================

FairyPond_Main:
|06C425| JSR SpriteDraw_FairyPondItem
|06C428| JSR CheckIfActive_bank06

|06C42B| LDA.b $A0
|06C42D| CMP.b #$15 ; ROOM 0115
|06C42F| BEQ FairyPond_LakeHylia

;===================================================================================================

FairyPond_Waterfall:
|06C431| LDA.w $0D80,X
|06C434| JSL JumpTableLocal
|06C438| dw UpgradeFairy_WaitForLink
|06C43A| dw UpgradeFairy_OfferItemToss
|06C43C| dw UpgradeFairy_HandleItemToss
|06C43E| dw UpgradeFairy_SpawnFairy
|06C440| dw UpgradeFairy_AskWhoDidThis
|06C442| dw UpgradeFairy_HandleAnswer
|06C444| dw UpgradeFairy_HandleUpgrade
|06C446| dw UpgradeFairy_Retreat
|06C448| dw UpgradeFairy_FixPalettes
|06C44A| dw UpgradeFairy_HandleItemReceipt
|06C44C| dw UpgradeFairy_FinalGoodBye
|06C44E| dw UpgradeFairy_YouLiar
|06C450| dw UpgradeFairy_SecondChance
|06C452| dw UpgradeFairy_DebaseLink

;===================================================================================================

FairyPond_LakeHylia:
|06C454| LDA.w $0D80,X
|06C457| JSL JumpTableLocal
|06C45B| dw FairyPond_WaitForLink
|06C45D| dw LakeHyliaFairy_WaitForLink
|06C45F| dw LakeHyliaFairy_BegForDonation
|06C461| dw LakeHyliaFairy_AcceptDonation
|06C463| dw LakeHyliaFairy_WaitForDonation
|06C465| dw LakeHyliaFairy_SpawnFairy
|06C467| dw LakeHyliaFairy_Greetings
|06C469| dw LakeHyliaFairy_OfferUpgrade
|06C46B| dw LakeHyliaFairy_UpgradeBombs
|06C46D| dw LakeHyliaFairy_RevertTranslucency
|06C46F| dw LakeHyliaFairy_DeleteFairy
|06C471| dw LakeHyliaFairy_RestoreAndReset
|06C473| dw LakeHyliaFairy_UpgradeArrows
|06C475| dw LakeHyliaFairy_GiveDonationStatus
|06C477| dw LakeHyliaFairy_GrantLuck

;===================================================================================================

pool SpriteDraw_FairyPondItem

.oam_groups

; Extreme waste of space... Why are there 4 entries each?
.group00
|06C479| dw  32, -64 : db $24, $00, $00, $00
|06C481| dw  32, -56 : db $34, $00, $00, $00
|06C489| dw  32, -64 : db $24, $00, $00, $00
|06C491| dw  32, -56 : db $34, $00, $00, $00

.group01
|06C499| dw  32, -64 : db $24, $00, $00, $02
|06C4A1| dw  32, -64 : db $24, $00, $00, $02
|06C4A9| dw  32, -64 : db $24, $00, $00, $02
|06C4B1| dw  32, -64 : db $24, $00, $00, $02

;---------------------------------------------------------------------------------------------------

.oam_group_pointers
|06C4B9| dw .group00
|06C4BB| dw .group01

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_FairyPondItem:
|06C4BD| LDA.b $A0
|06C4BF| CMP.b #$15 ; ROOM 0115
|06C4C1| BEQ .exit

|06C4C3| LDA.w $0D80,X
|06C4C6| CMP.b #$05
|06C4C8| BEQ .draw_object

|06C4CA| CMP.b #$06
|06C4CC| BEQ .draw_object

|06C4CE| CMP.b #$0B
|06C4D0| BEQ .draw_object

|06C4D2| CMP.b #$0C
|06C4D4| BEQ .draw_object
|06C4D6| BRA .exit

.draw_object
|06C4D8| PHX

|06C4D9| TXY

|06C4DA| LDA.w $0DC0,Y
|06C4DD| TAX

|06C4DE| LDA.l AncillaAdd_ItemReceipt.prop,X
|06C4E2| CMP.b #$FF
|06C4E4| BNE .use_loaded_palette

|06C4E6| LDA.b #$05

.use_loaded_palette
|06C4E8| AND.b #$07
|06C4EA| ASL A
|06C4EB| STA.w $0F50,Y

|06C4EE| LDA.l AncillaAdd_ItemReceipt.width,X
|06C4F2| TAY

|06C4F3| LDA.w .oam_group_pointers+0,Y
|06C4F6| STA.b $08

|06C4F8| LDA.w .oam_group_pointers+1,Y
|06C4FB| STA.b $09

|06C4FD| LDA.b #$04

|06C4FF| PLX

|06C500| JSL TabulatedSpriteDraw

.exit
|06C504| RTS

;===================================================================================================

FairyPond_WaitForLink:
|06C505| STZ.w $02E4

|06C508| LDA.w $0DF0,X
|06C50B| BNE .exit

|06C50D| JSL CheckIfLinkIsBusy
|06C511| BCS .exit

|06C513| LDA.b #$87 ; MESSAGE 0087
|06C515| LDY.b #$00
|06C517| JSL ShowMessageOnContact
|06C51B| BCC .exit

|06C51D| INC.w $0D80,X

|06C520| JSL ResetLinkProperties_A
|06C524| JSL TerminateSparkles

|06C528| STZ.b $2F

.exit
|06C52A| RTS

;===================================================================================================

FairyPond_Prices:
|06C52B| db   5,  20,  25,  50

FairyPond_PricesBCD:
|06C52F| db $05, $20, $25, $50

;===================================================================================================

LakeHyliaFairy_WaitForLink:
|06C533| LDA.w $1CE8
|06C536| BNE .negatory

|06C538| LDA.l $7EF370
|06C53C| ORA.l $7EF371
|06C540| BEQ .have_upgraded_before

|06C542| LDA.b #$02

.have_upgraded_before
|06C544| STA.w $0DC0,X

|06C547| TAY

|06C548| LDA.w FairyPond_PricesBCD+0,Y
|06C54B| STA.w $1CF2

|06C54E| LDA.w FairyPond_PricesBCD+1,Y
|06C551| STA.w $1CF3

|06C554| LDA.b #$4C ; MESSAGE 014C
|06C556| LDY.b #$01
|06C558| JSL ShowMessageUnconditional

|06C55C| INC.w $0D80,X

|06C55F| LDA.b #$01
|06C561| STA.w $02E4

|06C564| RTS

;===================================================================================================

#FairyPond_ResetAI:
|06C565| SEP #$30

.negatory
|06C567| LDA.b #$4A ; MESSAGE 014A
|06C569| LDY.b #$01
|06C56B| JSL ShowMessageUnconditional

|06C56F| STZ.w $0D80,X

|06C572| LDA.b #$FF
|06C574| STA.w $0DF0,X

|06C577| RTS

;===================================================================================================

LakeHyliaFairy_BegForDonation:
|06C578| LDA.w $1CE8
|06C57B| CLC
|06C57C| ADC.w $0DC0,X
|06C57F| TAY

|06C580| LDA.w FairyPond_PricesBCD,Y
|06C583| STA.w $1CF3

|06C586| REP #$20

|06C588| LDA.w FairyPond_Prices,Y
|06C58B| AND.w #$00FF
|06C58E| STA.b $00

|06C590| LDA.l $7EF360
|06C594| CMP.b $00
|06C596| BCC FairyPond_ResetAI

|06C598| SEP #$30

|06C59A| LDA.b $00
|06C59C| STA.w $0DE0,X

|06C59F| TYA
|06C5A0| STA.w $0EB0,X

|06C5A3| INC.w $0D80,X

|06C5A6| RTS

;===================================================================================================

LakeHyliaFairy_AcceptDonation:
|06C5A7| LDA.b #$50
|06C5A9| STA.w $0DF0,X

|06C5AC| LDA.w $0DE0,X
|06C5AF| STA.b $00
|06C5B1| STZ.b $01

|06C5B3| REP #$20

|06C5B5| LDA.l $7EF360
|06C5B9| SEC
|06C5BA| SBC.b $00
|06C5BC| STA.l $7EF360

|06C5C0| SEP #$30

|06C5C2| LDA.l $7EF36A
|06C5C6| CLC
|06C5C7| ADC.b $00
|06C5C9| STA.l $7EF36A

|06C5CD| PHX

|06C5CE| LDA.w $0EB0,X
|06C5D1| JSL AddHappinessPondRupees

|06C5D5| PLX

; check for 100 donated
|06C5D6| LDA.l $7EF36A
|06C5DA| CMP.b #$64
|06C5DC| BCC .not_enough_for_upgrade

|06C5DE| SBC.b #$64
|06C5E0| STA.l $7EF36A

|06C5E4| LDA.b #$05
|06C5E6| STA.w $0D80,X

|06C5E9| RTS

;---------------------------------------------------------------------------------------------------

.not_enough_for_upgrade
|06C5EA| LDA.l $7EF36A

|06C5EE| STZ.b $02

; BCD tens for high nibble
.remove_rupees
|06C5F0| CMP.b #$0A
|06C5F2| BCC .less_than_10

|06C5F4| SBC.b #$0A
|06C5F6| INC.b $02

|06C5F8| BRA .remove_rupees

.less_than_10
|06C5FA| ASL.b $02 ; x16
|06C5FC| ASL.b $02
|06C5FE| ASL.b $02
|06C600| ASL.b $02

|06C602| ORA.b $02
|06C604| STA.w $1CF2

|06C607| INC.w $0D80,X

|06C60A| RTS

;===================================================================================================

LakeHyliaFairy_WaitForDonation:
|06C60B| LDA.w $0DF0,X
|06C60E| BNE .exit

|06C610| LDA.b #$92 ; MESSAGE 0092
|06C612| LDY.b #$00
|06C614| JSL ShowMessageUnconditional

|06C618| LDA.b #$0D
|06C61A| STA.w $0D80,X

.exit
|06C61D| RTS

;===================================================================================================

LakeHyliaFairy_SpawnFairy:
|06C61E| LDA.w $0DF0,X
|06C621| BNE .exit

|06C623| LDA.b #$72 ; SPRITE 72
|06C625| JSL SpawnSpriteDynamically

|06C629| LDA.b #$1B ; SONG 1B
|06C62B| STA.w $012C

|06C62E| STZ.w $0133

|06C631| LDA.b $00
|06C633| SEC
|06C634| SBC.w FairyPondFairy_offset_x
|06C637| STA.w $0D10,Y

|06C63A| LDA.b $01
|06C63C| SBC.b #$00
|06C63E| STA.w $0D30,Y

|06C641| LDA.b $02
|06C643| SEC
|06C644| SBC.w FairyPondFairy_offset_y
|06C647| STA.w $0D00,Y

|06C64A| LDA.b $03
|06C64C| SBC.b #$00
|06C64E| STA.w $0D20,Y

|06C651| LDA.b #$01
|06C653| STA.w $0DA0,Y

|06C656| INC.w $0D80,X

|06C659| LDA.b #$FF
|06C65B| STA.w $0DF0,X

|06C65E| PHX

|06C65F| JSL AssertTranslucencySwap
|06C663| JSL PaletteFilter_WishPonds

|06C667| PLX

|06C668| TYA
|06C669| STA.w $0E90,X

.exit
|06C66C| RTS

;===================================================================================================

LakeHyliaFairy_Greetings:
|06C66D| LDA.b $1A
|06C66F| AND.b #$07
|06C671| BNE .exit

|06C673| PHX

|06C674| JSL PaletteFilter_Sprite5Left

|06C678| PLX

|06C679| LDA.l $7EC007
|06C67D| BNE .exit

|06C67F| INC.w $0D80,X

|06C682| LDA.b #$93 ; MESSAGE 0093
|06C684| LDY.b #$00
|06C686| JSL ShowMessageUnconditional

|06C68A| PHX

|06C68B| JSL RevertTranslucencySwap

|06C68F| STZ.b $1D

|06C691| LDA.b #$20
|06C693| STA.b $9A

|06C695| INC.b $15

|06C697| PLX

.exit
|06C698| RTS

;===================================================================================================

LakeHyliaFairy_OfferUpgrade:
|06C699| LDA.w $1CE8
|06C69C| BNE .chose_arrows

|06C69E| INC.w $0D80,X

|06C6A1| RTS

.chose_arrows
|06C6A2| LDA.b #$0C
|06C6A4| STA.w $0D80,X

|06C6A7| RTS

;===================================================================================================

LakeHyliaFairy_UpgradeBombs:
|06C6A8| INC.w $0D80,X

|06C6AB| LDA.l $7EF370
|06C6AF| CMP.b #$07
|06C6B1| BEQ .at_max

|06C6B3| INC A
|06C6B4| STA.l $7EF370

|06C6B8| PHX

|06C6B9| TAX

|06C6BA| LDA.l CapacityUpgrades.bombs_bcd,X
|06C6BE| STA.w $1CF2

; Why are they using the BCD value as a filler...?
|06C6C1| STA.l $7EF375

|06C6C5| PLX

|06C6C6| LDA.b #$94 ; MESSAGE 0094
|06C6C8| LDY.b #$00
|06C6CA| JSL ShowMessageUnconditional

|06C6CE| RTS

;---------------------------------------------------------------------------------------------------

.at_max
|06C6CF| LDA.b #$96 ; MESSAGE 0096
|06C6D1| LDY.b #$00
|06C6D3| JSL ShowMessageUnconditional

|06C6D7| JMP.w LakeHyliaFairy_RefundRupees

;===================================================================================================

LakeHyliaFairy_RevertTranslucency:
|06C6DA| INC.w $0D80,X

|06C6DD| PHX

|06C6DE| JSL AssertTranslucencySwap

|06C6E2| LDA.b #$02
|06C6E4| STA.b $1D

|06C6E6| LDA.b #$30
|06C6E8| STA.b $9A

|06C6EA| INC.w $0015

|06C6ED| PLX

|06C6EE| RTS

;===================================================================================================

LakeHyliaFairy_DeleteFairy:
|06C6EF| LDA.b $1A
|06C6F1| AND.b #$07
|06C6F3| BNE .exit

|06C6F5| PHX

|06C6F6| JSL PaletteFilter_Sprite5Left

|06C6FA| PLX

|06C6FB| LDA.l $7EC007
|06C6FF| CMP.b #$1E
|06C701| BNE .delay

|06C703| LDA.w $0E90,X
|06C706| TAY

|06C707| LDA.b #$00
|06C709| STA.w $0DD0,Y

|06C70C| BRA .exit

.delay
|06C70E| CMP.b #$00
|06C710| BNE .exit

|06C712| INC.w $0D80,X

.exit
|06C715| RTS

;===================================================================================================

LakeHyliaFairy_RestoreAndReset:
|06C716| PHX

|06C717| JSL PaletteFilter_RestoreSprite5Left
|06C71B| JSL RevertTranslucencySwap

|06C71F| PLX

|06C720| STZ.w $0D80,X

|06C723| LDA.b #$FF
|06C725| STA.w $0DF0,X

|06C728| RTS

;===================================================================================================

LakeHyliaFairy_UpgradeArrows:
|06C729| LDA.b #$09
|06C72B| STA.w $0D80,X

|06C72E| LDA.l $7EF371
|06C732| CMP.b #$07
|06C734| BEQ .at_max

|06C736| INC A
|06C737| STA.l $7EF371

|06C73B| PHX

|06C73C| TAX

|06C73D| LDA.l CapacityUpgrades.arrows_bcd,X
|06C741| STA.w $1CF2
|06C744| STA.l $7EF376

|06C748| PLX

|06C749| LDA.b #$95 ; MESSAGE 0095
|06C74B| LDY.b #$00
|06C74D| JSL ShowMessageUnconditional

|06C751| RTS

;---------------------------------------------------------------------------------------------------

.at_max
|06C752| LDA.b #$96 ; MESSAGE 0096
|06C754| LDY.b #$00
|06C756| JSL ShowMessageUnconditional

;===================================================================================================

LakeHyliaFairy_RefundRupees:
|06C75A| REP #$20

|06C75C| LDA.l $7EF360
|06C760| CLC
|06C761| ADC.w #$0064 ; 100 rupees
|06C764| STA.l $7EF360

|06C768| SEP #$30

|06C76A| RTS

;===================================================================================================

LakeHyliaFairy_GiveDonationStatus:
|06C76B| LDA.b #$52 ; MESSAGE 0152
|06C76D| LDY.b #$01
|06C76F| JSL ShowMessageUnconditional

|06C773| INC.w $0D80,X

|06C776| RTS

;===================================================================================================

pool LakeHyliaFairy_GrantLuck

.message_low
|06C777| db $4E ; MESSAGE 014E
|06C778| db $4F ; MESSAGE 014F
|06C779| db $50 ; MESSAGE 0150
|06C77A| db $51 ; MESSAGE 0151

.message_high
|06C77B| db $01
|06C77C| db $01
|06C77D| db $01
|06C77E| db $01

.luck_level
|06C77F| db $01
|06C780| db $00
|06C781| db $00
|06C782| db $02

endpool

;---------------------------------------------------------------------------------------------------

LakeHyliaFairy_GrantLuck:
|06C783| JSL GetRandomNumber
|06C787| AND.b #$03
|06C789| TAY

|06C78A| LDA.w .luck_level,Y
|06C78D| STA.w $0CF9

|06C790| STZ.w $0CFA

|06C793| LDA.w .message_low,Y
|06C796| XBA

|06C797| LDA.w .message_high,Y
|06C79A| TAY

|06C79B| XBA
|06C79C| JSL ShowMessageUnconditional

|06C7A0| STZ.w $0D80,X

|06C7A3| LDA.b #$FF
|06C7A5| STA.w $0DF0,X

|06C7A8| RTS

;===================================================================================================

UpgradeFairy_WaitForLink:
|06C7A9| STZ.w $02E4

|06C7AC| LDA.w $0DF0,X
|06C7AF| BNE .exit

|06C7B1| JSL CheckIfLinkIsBusy
|06C7B5| BCS .exit

|06C7B7| LDA.b #$48 ; MESSAGE 0148
|06C7B9| LDY.b #$01
|06C7BB| JSL ShowMessageOnContact
|06C7BF| BCC .exit

|06C7C1| INC.w $0D80,X

|06C7C4| JSL ResetLinkProperties_A

|06C7C8| STZ.b $2F

|06C7CA| STZ.w $0EB0,X

.exit
|06C7CD| RTS

;===================================================================================================

UpgradeFairy_OfferItemToss:
|06C7CE| LDA.w $1CE8
|06C7D1| BNE .no_toss

|06C7D3| LDA.b #$88 ; MESSAGE 0088
|06C7D5| LDY.b #$00
|06C7D7| JSL ShowMessageUnconditional

|06C7DB| INC.w $0D80,X

|06C7DE| LDA.b #$01
|06C7E0| STA.w $02E4

|06C7E3| RTS

.no_toss
|06C7E4| LDA.b #$49 ; MESSAGE 0149
|06C7E6| LDY.b #$01
|06C7E8| JSL ShowMessageUnconditional

|06C7EC| STZ.w $0D80,X

|06C7EF| LDA.b #$FF
|06C7F1| STA.w $0DF0,X

|06C7F4| RTS

;===================================================================================================

UpgradeFairy_HandleItemToss:
|06C7F5| INC.w $0D80,X

|06C7F8| PHX

|06C7F9| LDA.w $1CE8
|06C7FC| STA.w $0DB0,X

|06C7FF| TAX

|06C800| ASL A
|06C801| TAY

|06C802| LDA.w FairyPond_TossGFXID.pointer+0,Y
|06C805| STA.b $00

|06C807| LDA.w FairyPond_TossGFXID.pointer+1,Y
|06C80A| STA.b $01

|06C80C| LDA.l $7EF340,X
|06C810| PHA

|06C811| CPX.b #$20
|06C813| BEQ .bottle

|06C815| CPX.b #$03
|06C817| BNE .not_bombs

.bottle
|06C819| LDA.b #$01

;---------------------------------------------------------------------------------------------------

.not_bombs
|06C81B| TAY

|06C81C| LDA.b #$00
|06C81E| STA.l $7EF340,X

|06C822| LDA.b ($00),Y
|06C824| PHA

|06C825| TAX

|06C826| LDY.b #$04
|06C828| LDA.b #$28 ; ANCILLA 28
|06C82A| JSL AncillaAdd_TossedPondItem

|06C82E| JSL RefreshItemIcon

|06C832| PLA
|06C833| PLY
|06C834| PLX

|06C835| STA.w $0DC0,X

|06C838| TYA
|06C839| STA.w $0DE0,X

|06C83C| LDA.b #$FF
|06C83E| STA.w $0DF0,X

|06C841| RTS

;===================================================================================================

FairyPondFairy_offset_x:
|06C842| db $00

FairyPondFairy_offset_y:
|06C843| db $50

;===================================================================================================

UpgradeFairy_SpawnFairy:
|06C844| LDA.w $0DF0,X
|06C847| BNE .exit

|06C849| LDA.b #$72 ; SPRITE 72
|06C84B| JSL SpawnSpriteDynamically

|06C84F| LDA.b #$1B ; SONG 1B
|06C851| STA.w $012C

|06C854| STZ.w $0133

|06C857| LDA.b $00
|06C859| SEC
|06C85A| SBC.w FairyPondFairy_offset_x
|06C85D| STA.w $0D10,Y

|06C860| LDA.b $01
|06C862| SBC.b #$00
|06C864| STA.w $0D30,Y

|06C867| LDA.b $02
|06C869| SEC
|06C86A| SBC.w FairyPondFairy_offset_y
|06C86D| STA.w $0D00,Y

|06C870| LDA.b $03
|06C872| SBC.b #$00
|06C874| STA.w $0D20,Y

|06C877| LDA.b #$01
|06C879| STA.w $0DA0,Y

|06C87C| INC.w $0D80,X

|06C87F| LDA.b #$FF
|06C881| STA.w $0DF0,X

|06C884| PHX

|06C885| JSL AssertTranslucencySwap
|06C889| JSL PaletteFilter_WishPonds

|06C88D| PLX

|06C88E| TYA
|06C88F| STA.w $0E90,X

.exit
|06C892| RTS

;===================================================================================================

UpgradeFairy_AskWhoDidThis:
|06C893| LDA.b $1A
|06C895| AND.b #$07
|06C897| BNE .exit

|06C899| PHX
|06C89A| JSL PaletteFilter_Sprite5Left
|06C89E| PLX

|06C89F| LDA.l $7EC007
|06C8A3| BNE .exit

|06C8A5| INC.w $0D80,X

|06C8A8| LDA.b #$89 ; MESSAGE 0089
|06C8AA| LDY.b #$00
|06C8AC| JSL ShowMessageUnconditional

|06C8B0| PHX

|06C8B1| JSL RevertTranslucencySwap

|06C8B5| STZ.b $1D

|06C8B7| LDA.b #$20
|06C8B9| STA.b $9A

|06C8BB| INC.b $15

|06C8BD| PLX

.exit
|06C8BE| RTS

;===================================================================================================

UpgradeFairy_HandleAnswer:
|06C8BF| LDA.w $1CE8
|06C8C2| BNE .liar

|06C8C4| INC.w $0D80,X

|06C8C7| RTS

.liar
|06C8C8| LDA.b #$0B
|06C8CA| STA.w $0D80,X

|06C8CD| RTS

;===================================================================================================

UpgradeFairy_HandleUpgrade:
|06C8CE| INC.w $0D80,X

|06C8D1| LDA.l $7EF3CA
|06C8D5| BNE .fat_fairy

;---------------------------------------------------------------------------------------------------

|06C8D7| LDA.w $0DC0,X
|06C8DA| CMP.b #$0C
|06C8DC| BNE .not_blue_boomerang

|06C8DE| LDA.b #$2A ; red boom gfx
|06C8E0| STA.w $0DC0,X

|06C8E3| LDA.b #$01
|06C8E5| STA.w $0EB0,X

|06C8E8| BRA .what_a_nice_item

;---------------------------------------------------------------------------------------------------

.not_blue_boomerang
|06C8EA| CMP.b #$04
|06C8EC| BNE .not_fighter_shield

|06C8EE| LDA.b #$05 ; fire shield gfx
|06C8F0| STA.w $0DC0,X

|06C8F3| LDA.b #$02
|06C8F5| STA.w $0EB0,X

|06C8F8| BRA .what_a_nice_item

;---------------------------------------------------------------------------------------------------

.not_fighter_shield
|06C8FA| CMP.b #$16
|06C8FC| BNE .not_empty_bottle_a

|06C8FE| LDA.b #$2C ; green potion gfx
|06C900| STA.w $0DC0,X

|06C903| LDA.b #$03
|06C905| STA.w $0EB0,X

|06C908| BRA .what_a_nice_item

;---------------------------------------------------------------------------------------------------

.not_empty_bottle_a
|06C90A| BRA .what_a_lame_item

;---------------------------------------------------------------------------------------------------

.fat_fairy
|06C90C| LDA.w $0DC0,X
|06C90F| CMP.b #$3A
|06C911| BNE .not_normal_bow

|06C913| LDA.b #$3B ; silver bow gfx
|06C915| STA.w $0DC0,X

|06C918| LDA.b #$04
|06C91A| STA.w $0EB0,X

|06C91D| LDA.b #$4D ; MESSAGE 014D
|06C91F| LDY.b #$01
|06C921| JSL ShowMessageUnconditional

|06C925| RTS

;---------------------------------------------------------------------------------------------------

.not_normal_bow
|06C926| CMP.b #$02
|06C928| BNE .not_tempered_sword

|06C92A| LDA.b #$03 ; butter sword gfx
|06C92C| STA.w $0DC0,X

|06C92F| LDA.b #$05
|06C931| STA.w $0EB0,X

|06C934| BRA .what_a_nice_item

;---------------------------------------------------------------------------------------------------

.not_tempered_sword
|06C936| CMP.b #$16
|06C938| BNE .not_empty_bottle_b

|06C93A| LDA.b #$2C ; green potion gfx
|06C93C| STA.w $0DC0,X

|06C93F| LDA.b #$03
|06C941| STA.w $0EB0,X

|06C944| BRA .what_a_nice_item

;---------------------------------------------------------------------------------------------------

.not_empty_bottle_b
|06C946| BRA .what_a_lame_item

;---------------------------------------------------------------------------------------------------

.what_a_nice_item
|06C948| LDA.b #$8A ; MESSAGE 008A
|06C94A| LDY.b #$00
|06C94C| JSL ShowMessageUnconditional

|06C950| RTS

;---------------------------------------------------------------------------------------------------

.what_a_lame_item
|06C951| LDA.b #$4B ; MESSAGE 014B
|06C953| LDY.b #$01
|06C955| JSL ShowMessageUnconditional

|06C959| RTS

;===================================================================================================

UpgradeFairy_Retreat:
|06C95A| LDA.w $0DE0,X
|06C95D| TAY

|06C95E| LDA.w $0DB0,X

|06C961| PHX

|06C962| TAX

|06C963| TYA

|06C964| CPX.b #$03
|06C966| BNE .not_bombs

|06C968| STA.l $7EF340,X

.not_bombs
|06C96C| PLX

|06C96D| INC.w $0D80,X

|06C970| PHX

|06C971| JSL AssertTranslucencySwap

|06C975| LDA.b #$02
|06C977| STA.b $1D

|06C979| LDA.b #$30
|06C97B| STA.b $9A

; Why is this an absolute?
|06C97D| INC.w $0015

|06C980| PLX

|06C981| RTS

;===================================================================================================

UpgradeFairy_FixPalettes:
|06C982| LDA.b $1A
|06C984| AND.b #$07
|06C986| BNE .exit

|06C988| PHX

|06C989| JSL PaletteFilter_Sprite5Left

|06C98D| PLX

|06C98E| LDA.l $7EC007
|06C992| CMP.b #$1E
|06C994| BNE .delay

|06C996| LDA.w $0E90,X
|06C999| TAY

|06C99A| LDA.b #$00
|06C99C| STA.w $0DD0,Y

|06C99F| BRA .exit

.delay
|06C9A1| CMP.b #$00
|06C9A3| BNE .exit

|06C9A5| INC.w $0D80,X

.exit
|06C9A8| RTS

;===================================================================================================

UpgradeFairy_HandleItemReceipt:
|06C9A9| INC.w $0D80,X

|06C9AC| PHX

|06C9AD| JSL PaletteFilter_RestoreSprite5Left
|06C9B1| JSL RevertTranslucencySwap

|06C9B5| PLX
|06C9B6| PHX

|06C9B7| LDA.b #$02
|06C9B9| STA.w $02E9

|06C9BC| LDA.w $0DC0,X
|06C9BF| TAY

|06C9C0| JSL GrantItemReceipt

|06C9C4| PLX

|06C9C5| RTS

;===================================================================================================

pool UpgradeFairy_FinalGoodBye

.message_low
|06C9C6| db $8D ; MESSAGE 008D
|06C9C7| db $8E ; MESSAGE 008E
|06C9C8| db $90 ; MESSAGE 0090
|06C9C9| db $8F ; MESSAGE 008F
|06C9CA| db $91 ; MESSAGE 0091

.message_high
|06C9CB| db $00
|06C9CC| db $00
|06C9CD| db $00
|06C9CE| db $00
|06C9CF| db $00

endpool

;---------------------------------------------------------------------------------------------------

UpgradeFairy_FinalGoodBye:
|06C9D0| LDA.w $0EB0,X
|06C9D3| BEQ .reset

|06C9D5| DEC A
|06C9D6| TAY

|06C9D7| LDA.w .message_low,Y
|06C9DA| XBA

|06C9DB| LDA.w .message_high,Y
|06C9DE| TAY

|06C9DF| XBA

|06C9E0| JSL ShowMessageUnconditional

.reset
|06C9E4| STZ.w $0D80,X

|06C9E7| LDA.b #$FF
|06C9E9| STA.w $0DF0,X

|06C9EC| RTS

;===================================================================================================

UpgradeFairy_YouLiar:
|06C9ED| INC.w $0D80,X

|06C9F0| LDA.b #$8B ; MESSAGE 008B
|06C9F2| LDY.b #$00
|06C9F4| JSL ShowMessageUnconditional

|06C9F8| RTS

;===================================================================================================

UpgradeFairy_SecondChance:
|06C9F9| LDA.w $1CE8
|06C9FC| BNE .still_lying

|06C9FE| INC.w $0D80,X

|06CA01| RTS

.still_lying
|06CA02| LDA.b #$06
|06CA04| STA.w $0D80,X

|06CA07| RTS

;===================================================================================================

UpgradeFairy_DebaseLink:
|06CA08| LDA.b #$8C ; MESSAGE 008C
|06CA0A| LDY.b #$00
|06CA0C| JSL ShowMessageUnconditional

|06CA10| LDA.b #$07
|06CA12| STA.w $0D80,X

|06CA15| RTS

;===================================================================================================

pool SpriteDraw_ThinFairy

.offset_x
|06CA16| db   0,  16,   0,   8,  16,  24,   0,   8
|06CA1E| db  16,  24,   0,  16,   0,  16,   0,   8
|06CA26| db  16,  24,   0,   8,  16,  24,   0,  16

.offset_y
|06CA2E| db   0,   0,  16,  16,  16,  16,  24,  24
|06CA36| db  24,  24,  32,  32,   0,   0,  16,  16
|06CA3E| db  16,  16,  24,  24,  24,  24,  32,  32

.char
|06CA46| db $C7, $C7, $CF, $CA, $CA, $CF, $DF, $DA
|06CA4E| db $DA, $DF, $CB, $CB, $CD, $CD, $C9, $CA
|06CA56| db $CA, $C9, $D9, $DA, $DA, $D9, $CB, $CB

.prop
|06CA5E| db $00, $40, $00, $00, $40, $40, $00, $00
|06CA66| db $40, $40, $00, $40, $00, $40, $00, $00
|06CA6E| db $40, $40, $00, $00, $40, $40, $00, $40

.oam_sizes
|06CA76| db $02, $02, $00, $00, $00, $00, $00, $00
|06CA7E| db $00, $00, $02, $02, $02, $02, $00, $00
|06CA86| db $00, $00, $00, $00, $00, $00, $02, $02

endpool

;===================================================================================================

pool SpriteDraw_FatFairy

.oam_groups
; group00
|06CA8E| dw   0,   0 : db $E9, $00, $00, $02
|06CA96| dw  16,   0 : db $E9, $40, $00, $02
|06CA9E| dw   0,   0 : db $E9, $00, $00, $02
|06CAA6| dw  16,   0 : db $E9, $40, $00, $02
|06CAAE| dw   0,   0 : db $E9, $00, $00, $02
|06CAB6| dw  16,   0 : db $E9, $40, $00, $02
|06CABE| dw   0,  16 : db $EB, $00, $00, $02
|06CAC6| dw  16,  16 : db $EB, $40, $00, $02
|06CACE| dw   0,  32 : db $ED, $00, $00, $02
|06CAD6| dw  16,  32 : db $ED, $40, $00, $02

; group01
|06CADE| dw   0,   0 : db $EF, $00, $00, $00
|06CAE6| dw  24,   0 : db $EF, $40, $00, $00
|06CAEE| dw   0,   8 : db $FF, $00, $00, $00
|06CAF6| dw  24,   8 : db $FF, $40, $00, $00
|06CAFE| dw   0,   0 : db $E9, $00, $00, $02
|06CB06| dw  16,   0 : db $E9, $40, $00, $02
|06CB0E| dw   0,  16 : db $EB, $00, $00, $02
|06CB16| dw  16,  16 : db $EB, $40, $00, $02
|06CB1E| dw   0,  32 : db $ED, $00, $00, $02
|06CB26| dw  16,  32 : db $ED, $40, $00, $02

endpool

;===================================================================================================

SpriteDraw_FairyQueen:
|06CB2E| LDA.l $7EF3CA ; check light/dark world
|06CB32| BNE SpriteDraw_FatFairy

;===================================================================================================

SpriteDraw_ThinFairy:
|06CB34| JSR GetScreenCoordinates

|06CB37| LDA.w $0DC0,X
|06CB3A| ASL A
|06CB3B| ASL A
|06CB3C| STA.b $0D

|06CB3E| LDA.w $0DC0,X
|06CB41| ASL A ; x8
|06CB42| ASL A
|06CB43| ASL A
|06CB44| ADC.b $0D
|06CB46| STA.b $06

|06CB48| PHX

;---------------------------------------------------------------------------------------------------

|06CB49| LDX.b #$0B

.next_object
|06CB4B| PHX

|06CB4C| TXA
|06CB4D| CLC
|06CB4E| ADC.b $06
|06CB50| TAX

|06CB51| LDA.b $00
|06CB53| CLC
|06CB54| ADC.w .offset_x,X
|06CB57| STA.b ($90),Y

|06CB59| LDA.b $02
|06CB5B| CLC
|06CB5C| ADC.w .offset_y,X
|06CB5F| INY
|06CB60| STA.b ($90),Y

|06CB62| LDA.w .char,X
|06CB65| INY
|06CB66| STA.b ($90),Y

|06CB68| LDA.w .prop,X
|06CB6B| ORA.b $05
|06CB6D| INY
|06CB6E| STA.b ($90),Y

|06CB70| PHY

|06CB71| TYA
|06CB72| LSR A
|06CB73| LSR A
|06CB74| TAY

|06CB75| LDA.w .oam_sizes,X
|06CB78| STA.b ($92),Y

|06CB7A| PLY
|06CB7B| INY

|06CB7C| PLX
|06CB7D| DEX
|06CB7E| BPL .next_object

;---------------------------------------------------------------------------------------------------

|06CB80| PLX

|06CB81| LDY.b #$FF
|06CB83| LDA.b #$0B
|06CB85| JSR CorrectOAMEntries

|06CB88| RTS

;===================================================================================================

SpriteDraw_FatFairy:
|06CB89| LDA.b #$0A
|06CB8B| STA.b $06
|06CB8D| STZ.b $07

|06CB8F| LDA.w $0DC0,X

|06CB92| ASL A
|06CB93| ASL A

|06CB94| ADC.w $0DC0,X

|06CB97| ASL A
|06CB98| ASL A
|06CB99| ASL A
|06CB9A| ASL A

|06CB9B| ADC.b #<.oam_groups
|06CB9D| STA.b $08

|06CB9F| LDA.b #>.oam_groups
|06CBA1| ADC.b #$00
|06CBA3| STA.b $09

|06CBA5| JSL TabulatedSpriteDraw.preset_quantity

|06CBA9| RTS

;===================================================================================================

Sprite_71_Leever:
|06CBAA| LDA.w $0D80,X
|06CBAD| BEQ .underground

|06CBAF| JSR SpriteDraw_Leever
|06CBB2| BRA .respawn

.underground
|06CBB4| JSR GetScreenCoordinates_wrapper

.respawn
|06CBB7| LDA.w $0F00,X ; reprep if off screen
|06CBBA| BEQ .dont_respawn

|06CBBC| LDA.b #$08
|06CBBE| STA.w $0DD0,X

.dont_respawn
|06CBC1| JSR CheckIfActive_bank06
|06CBC4| JSR HandleSpriteRecoil_bank06

|06CBC7| LDA.w $0D80,X

|06CBCA| REP #$30

|06CBCC| AND.w #$00FF
|06CBCF| ASL A
|06CBD0| TAY

|06CBD1| LDA.w .vectors,Y
|06CBD4| PHA

|06CBD5| SEP #$30

|06CBD7| RTS

;---------------------------------------------------------------------------------------------------

.vectors
|06CBD8| dw Leever_Underground-1
|06CBDA| dw Leever_Emerge-1
|06CBDC| dw Leever_Attack-1
|06CBDE| dw Leever_Dig-1

;===================================================================================================

Leever_Underground:
|06CBE0| LDA.w $0DF0,X
|06CBE3| STA.w $0BA0,X
|06CBE6| BNE .delay

|06CBE8| INC.w $0D80,X

|06CBEB| LDA.b #$7F
|06CBED| STA.w $0DF0,X

|06CBF0| RTS

;---------------------------------------------------------------------------------------------------

.delay
|06CBF1| LDA.b #$10
|06CBF3| JSR ApplySpeedTowardsLink
|06CBF6| JSR MoveSpriteXY_bank06
|06CBF9| JSR CheckSpriteTileCollision

|06CBFC| RTS

;===================================================================================================

UNREACHABLE_06CBFD:
|06CBFD| LDA.w $0DF0,X
|06CC00| BNE .exit

|06CC02| INC.w $0D80,X

|06CC05| LDA.b #$7F
|06CC07| STA.w $0DF0,X

.exit
|06CC0A| RTS

;===================================================================================================

pool Leever_Emerge

.anim_step
|06CC0B| db $0A, $09, $08, $07
|06CC0F| db $06, $05, $04, $03
|06CC13| db $02, $01, $02, $01
|06CC17| db $02, $01, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

Leever_Emerge:
|06CC1B| LDA.w $0DF0,X
|06CC1E| STA.w $0BA0,X
|06CC21| BNE .delay

|06CC23| INC.w $0D80,X

|06CC26| JSL GetRandomNumber
|06CC2A| AND.b #$3F
|06CC2C| ADC.b #$A0
|06CC2E| STA.w $0DF0,X

|06CC31| JMP.w ZeroVelocityXY_bank06

;---------------------------------------------------------------------------------------------------

.delay
|06CC34| LSR A
|06CC35| LSR A
|06CC36| LSR A
|06CC37| TAY

|06CC38| LDA.w .anim_step,Y
|06CC3B| STA.w $0DC0,X

|06CC3E| RTS

;===================================================================================================

pool Leever_Attack

.anim_step ; bleeds into next, weird
|06CC3F| db $09, $0A, $0B

.speed
|06CC42| db $0C, $08

endpool

;---------------------------------------------------------------------------------------------------

Leever_Attack:
|06CC44| JSR CheckDamageToAndFromLink_bank06

|06CC47| LDA.w $0DF0,X
|06CC4A| BNE .delay

.tile_collision
|06CC4C| INC.w $0D80,X

|06CC4F| LDA.b #$7F
|06CC51| STA.w $0DF0,X

|06CC54| RTS

;---------------------------------------------------------------------------------------------------

.delay
|06CC55| LDA.w $0E80,X
|06CC58| AND.b #$07
|06CC5A| BNE .delay_turn

|06CC5C| LDY.w $0D90,X

|06CC5F| LDA.w .speed,Y
|06CC62| JSR ApplySpeedTowardsLink

.delay_turn
|06CC65| JSR MoveSpriteXY_bank06
|06CC68| JSR CheckSpriteTileCollision

|06CC6B| LDA.w $0E70,X
|06CC6E| BNE .tile_collision

|06CC70| INC.w $0E80,X

|06CC73| LDA.w $0E80,X
|06CC76| LSR A
|06CC77| LSR A
|06CC78| AND.b #$03
|06CC7A| TAY

|06CC7B| LDA.w .anim_step,Y
|06CC7E| STA.w $0DC0,X

|06CC81| RTS

;===================================================================================================

pool Leever_Dig

.anim_step
|06CC82| db $0A, $09, $08, $07
|06CC86| db $06, $05, $04, $03
|06CC8A| db $02, $01, $02, $01
|06CC8E| db $02, $01, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

Leever_Dig:
|06CC92| LDA.w $0DF0,X
|06CC95| STA.w $0BA0,X
|06CC98| BNE .delay

|06CC9A| STZ.w $0D80,X

|06CC9D| JSL GetRandomNumber
|06CCA1| AND.b #$1F
|06CCA3| ADC.b #$40
|06CCA5| STA.w $0DF0,X

|06CCA8| RTS

.delay
|06CCA9| LSR A
|06CCAA| LSR A
|06CCAB| LSR A
|06CCAC| EOR.b #$0F
|06CCAE| TAY

|06CCAF| LDA.w .anim_step,Y
|06CCB2| STA.w $0DC0,X

|06CCB5| RTS

;===================================================================================================

UNREACHABLE_06CCB6:
|06CCB6| RTS

;===================================================================================================

pool SpriteDraw_Leever

.offset_x
|06CCB7| dw   2,   6,   6,   6
|06CCBF| dw   0,   8,   8,   8
|06CCC7| dw   0,   8,   8,   8
|06CCCF| dw   0,   8,   0,   8
|06CCD7| dw   0,   8,   0,   8
|06CCDF| dw   0,   0,   0,   8
|06CCE7| dw   0,   0,   0,   8
|06CCEF| dw   0,   0,   0,   8
|06CCF7| dw   0,   0,   0,   8
|06CCFF| dw   0,   0,   0,   0
|06CD07| dw   0,   0,   0,   0
|06CD0F| dw   0,   0,   0,   0
|06CD17| dw   0,   0,   0,   0
|06CD1F| dw   0,   0,   0,   0

;---------------------------------------------------------------------------------------------------

.offset_y
|06CD27| dw   8,   8,   8,   8
|06CD2F| dw   8,   8,   8,   8
|06CD37| dw   8,   8,   8,   8
|06CD3F| dw   5,   5,   8,   8
|06CD47| dw   5,   5,   8,   8
|06CD4F| dw   2,   2,   8,   8
|06CD57| dw   1,   1,   8,   8
|06CD5F| dw   0,   0,   8,   8
|06CD67| dw  -1,  -1,   8,   8
|06CD6F| dw   8,  -2,  -2,   0
|06CD77| dw   8,  -2,  -2,   0
|06CD7F| dw   8,  -2,  -2,   0
|06CD87| dw   8,  -2,  -2,   0
|06CD8F| dw   8,  -2,  -2,   0

;---------------------------------------------------------------------------------------------------

.char
|06CD97| db $28, $28, $28, $28
|06CD9B| db $28, $28, $28, $28
|06CD9F| db $38, $38, $38, $38
|06CDA3| db $08, $09, $28, $28
|06CDA7| db $08, $09, $D9, $D9
|06CDAB| db $08, $08, $D8, $D8
|06CDAF| db $08, $08, $DA, $DA
|06CDB3| db $06, $06, $D9, $D9
|06CDB7| db $26, $26, $D8, $D8
|06CDBB| db $6C, $06, $06, $00
|06CDBF| db $6C, $26, $26, $00
|06CDC3| db $6C, $06, $06, $00
|06CDC7| db $6C, $26, $26, $00
|06CDCB| db $6C, $08, $08, $00

;---------------------------------------------------------------------------------------------------

.prop
|06CDCF| db $01, $41, $41, $41
|06CDD3| db $01, $41, $41, $41
|06CDD7| db $01, $41, $41, $41
|06CDDB| db $01, $01, $01, $41
|06CDDF| db $01, $01, $00, $40
|06CDE3| db $01, $01, $00, $40
|06CDE7| db $01, $01, $00, $40
|06CDEB| db $01, $01, $00, $40
|06CDEF| db $00, $01, $00, $40
|06CDF3| db $06, $41, $41, $00
|06CDF7| db $06, $41, $41, $00
|06CDFB| db $06, $01, $01, $00
|06CDFF| db $06, $01, $01, $00
|06CE03| db $06, $01, $01, $00

;---------------------------------------------------------------------------------------------------

.size
|06CE07| db $00, $00, $00, $00
|06CE0B| db $00, $00, $00, $00
|06CE0F| db $00, $00, $00, $00
|06CE13| db $00, $00, $00, $00
|06CE17| db $00, $00, $00, $00
|06CE1B| db $02, $02, $00, $00
|06CE1F| db $02, $02, $00, $00
|06CE23| db $02, $02, $00, $00
|06CE27| db $02, $02, $00, $00
|06CE2B| db $02, $02, $02, $00
|06CE2F| db $02, $02, $02, $00
|06CE33| db $02, $02, $02, $00
|06CE37| db $02, $02, $02, $00
|06CE3B| db $02, $02, $02, $00

;---------------------------------------------------------------------------------------------------

.object_count
|06CE3F| db $01
|06CE40| db $01
|06CE41| db $01
|06CE42| db $03
|06CE43| db $03
|06CE44| db $03
|06CE45| db $03
|06CE46| db $03
|06CE47| db $03
|06CE48| db $01
|06CE49| db $01
|06CE4A| db $01
|06CE4B| db $01
|06CE4C| db $01

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Leever:
|06CE4D| JSR GetScreenCoordinates

|06CE50| LDA.w $0DC0,X
|06CE53| TAY

|06CE54| ASL A
|06CE55| ASL A
|06CE56| STA.b $06

|06CE58| PHX

|06CE59| LDX.w .object_count,Y
|06CE5C| LDY.b #$00

;---------------------------------------------------------------------------------------------------

.next_object
|06CE5E| PHX

|06CE5F| TXA
|06CE60| CLC
|06CE61| ADC.b $06
|06CE63| PHA

|06CE64| ASL A
|06CE65| TAX

|06CE66| REP #$20

|06CE68| LDA.b $00
|06CE6A| CLC
|06CE6B| ADC.w .offset_x,X
|06CE6E| STA.b ($90),Y

|06CE70| AND.w #$0100
|06CE73| STA.b $0E

|06CE75| LDA.b $02
|06CE77| CLC
|06CE78| ADC.w .offset_y,X

|06CE7B| INY
|06CE7C| STA.b ($90),Y

|06CE7E| CLC
|06CE7F| ADC.w #$0010
|06CE82| CMP.w #$0100

|06CE85| SEP #$20
|06CE87| BCC .on_screen

|06CE89| LDA.b #$F0
|06CE8B| STA.b ($90),Y

.on_screen
|06CE8D| PLX

|06CE8E| LDA.b $05
|06CE90| PHA

|06CE91| LDA.w .char,X
|06CE94| INY
|06CE95| STA.b ($90),Y

|06CE97| CMP.b #$60
|06CE99| BCS .change_props

|06CE9B| CMP.b #$28
|06CE9D| BEQ .change_props

|06CE9F| CMP.b #$38
|06CEA1| BNE .dont_change_props

.change_props
|06CEA3| LDA.b $05
|06CEA5| AND.b #$F0
|06CEA7| STA.b $05

.dont_change_props
|06CEA9| LDA.w .prop,X
|06CEAC| ORA.b $05
|06CEAE| INY
|06CEAF| STA.b ($90),Y

|06CEB1| PLA
|06CEB2| STA.b $05

|06CEB4| PHY

|06CEB5| TYA
|06CEB6| LSR A
|06CEB7| LSR A
|06CEB8| TAY

|06CEB9| LDA.w .size,X
|06CEBC| ORA.b $0F
|06CEBE| STA.b ($92),Y

|06CEC0| PLY
|06CEC1| INY

|06CEC2| PLX
|06CEC3| DEX
|06CEC4| BPL .next_object

;---------------------------------------------------------------------------------------------------

|06CEC6| PLX

|06CEC7| RTS

;===================================================================================================

Sprite_D8_Heart:
|06CEC8| JSR SpriteDraw_AbsorbableTransient
|06CECB| JSR CheckIfActive_bank06

|06CECE| JSR TestAbsorption
|06CED1| JSR HandleDraggingByAncilla

|06CED4| JSR MoveSpriteXY_bank06
|06CED7| JSR MoveSpriteZ_bank06

|06CEDA| LDA.w $0F70,X
|06CEDD| BPL .airborne

|06CEDF| STZ.w $0F70,X

|06CEE2| INC.w $0D80,X

|06CEE5| STZ.w $0DC0,X

.airborne
|06CEE8| LDA.w $0F50,X
|06CEEB| AND.b #$BF
|06CEED| STA.w $0F50,X

|06CEF0| LDA.w $0D50,X
|06CEF3| BMI .moving_left

.moving_right
|06CEF5| LDA.w $0F50,X
|06CEF8| EOR.b #$40
|06CEFA| STA.w $0F50,X

.moving_left
|06CEFD| LDA.w $0D80,X
|06CF00| CMP.b #$03
|06CF02| BCC .not_maxed

|06CF04| LDA.b #$03

.not_maxed
|06CF06| JSL JumpTableLocal
|06CF0A| dw HeartRefill_InitializeAscent
|06CF0C| dw HeartRefill_BeginDescending
|06CF0E| dw HeartRefill_GlideGroundward
|06CF10| dw ZeroVelocityXYZ_bank06

;===================================================================================================

HeartRefill_InitializeAscent:
|06CF12| INC.w $0D80,X

|06CF15| LDA.b #$12
|06CF17| STA.w $0DF0,X

|06CF1A| LDA.b #$14
|06CF1C| STA.w $0F80,X

|06CF1F| LDA.b #$01
|06CF21| STA.w $0DC0,X

|06CF24| STZ.w $0DE0,X

|06CF27| RTS

;===================================================================================================

HeartRefill_BeginDescending:
|06CF28| LDA.w $0DF0,X
|06CF2B| BNE .decelerate

|06CF2D| INC.w $0D80,X

|06CF30| LDA.b #$FD
|06CF32| STA.w $0F80,X

|06CF35| STZ.w $0D50,X

|06CF38| RTS

.decelerate
|06CF39| DEC.w $0F80,X

|06CF3C| RTS

;===================================================================================================

pool HeartRefill_GlideGroundward

.speed
|06CF3D| db  10, -10

endpool

;---------------------------------------------------------------------------------------------------

HeartRefill_GlideGroundward:
|06CF3F| LDA.w $0DF0,X
|06CF42| BNE .exit

|06CF44| LDA.w $0DE0,X
|06CF47| AND.b #$01
|06CF49| TAY

|06CF4A| LDA.w $0D50,X
|06CF4D| CLC
|06CF4E| ADC.w PositiveAndNegativeOne,Y
|06CF51| STA.w $0D50,X

|06CF54| CMP.w .speed,Y
|06CF57| BNE .exit

|06CF59| INC.w $0DE0,X

|06CF5C| LDA.b #$08
|06CF5E| STA.w $0DF0,X

.exit
|06CF61| RTS

;===================================================================================================

ZeroVelocityXYZ_bank06:
|06CF62| STZ.w $0F80,X

;===================================================================================================

ZeroVelocityXY_bank06:
|06CF65| STZ.w $0D50,X
|06CF68| STZ.w $0D40,X

|06CF6B| RTS

;===================================================================================================
; Assuming an ancilla has latched on (via Ancilla_CheckSpriteCollision_Single)
; This will update the sprite's coordinates to match the ancilla
; Until the ancilla has despawned
;===================================================================================================
HandleDraggingByAncilla:
|06CF6C| LDA.w $0DA0,X
|06CF6F| BEQ .exit ; No ancilla associated with this

|06CF71| TAY ; get the ancilla's ID
|06CF72| DEY

; Interestingly, this isn't concerned with what ancilla it is following
; If you nab an absorbable with an ancilla before it's actually active
; you can spawn a new ancilla in the old one's place and have it latched on
|06CF73| LDA.w $0C4A,Y
|06CF76| BEQ .handler_gone ; the ancilla is gone, so absorb

|06CF78| LDA.w $0C04,Y
|06CF7B| STA.w $0D10,X

|06CF7E| LDA.w $0C18,Y
|06CF81| STA.w $0D30,X

|06CF84| LDA.w $0BFA,Y
|06CF87| STA.w $0D00,X

|06CF8A| LDA.w $0C0E,Y
|06CF8D| STA.w $0D20,X

|06CF90| STZ.w $0F70,X

.hard_exit
|06CF93| PLA
|06CF94| PLA

.exit
|06CF95| RTS

;---------------------------------------------------------------------------------------------------

.handler_gone
|06CF96| JSL GetAbsorbedAsItem_long

|06CF9A| BRA .hard_exit

;===================================================================================================

Sprite_E3_Fairy:
|06CF9C| LDA.b #$01
|06CF9E| STA.w $0BA0,X

|06CFA1| LDA.w $0D80,X
|06CFA4| BNE .continue

|06CFA6| LDA.b $1B
|06CFA8| BNE .indoors

|06CFAA| LDA.b #$30
|06CFAC| STA.w $0B89,X

.indoors
|06CFAF| JSR SpriteDraw_AbsorbableTransient

.continue
|06CFB2| JSR Fairy_CheckIfTouchable

|06CFB5| JSR CheckIfActive_bank06

|06CFB8| LDA.w $0D80,X
|06CFBB| JSL JumpTableLocal
|06CFBF| dw Fairy_Prancing
|06CFC1| dw Fairy_HandleCapture

;===================================================================================================

Fairy_Prancing:
|06CFC3| LDA.w $0F10,X
|06CFC6| BNE .not_nabbed_directly

|06CFC8| JSR CheckDamageToLink
|06CFCB| BCC .no_contact

|06CFCD| JSL GetAbsorbedAsItem_long
|06CFD1| BRA .not_nabbed_directly

.no_contact
|06CFD3| JSR CheckDamageFromLink
|06CFD6| BEQ .not_nabbed_directly

|06CFD8| INC.w $0D80,X

|06CFDB| LDA.b #$C7 ; MESSAGE 00C7
|06CFDD| LDY.b #$00
|06CFDF| JSL ShowMessageUnconditional

|06CFE3| RTS

.not_nabbed_directly
|06CFE4| JSR HandleDraggingByAncilla
|06CFE7| JSL HandleFairyMovement

|06CFEB| RTS

;===================================================================================================

Fairy_HandleCapture:
|06CFEC| LDA.w $1CE8
|06CFEF| BNE .release

|06CFF1| JSL FindEmptyBottle
|06CFF5| BMI .no_space

|06CFF7| PHX

|06CFF8| TAX

|06CFF9| LDA.b #$06
|06CFFB| STA.l $7EF35C,X

|06CFFF| JSL RefreshItemIcon

|06D003| PLX

|06D004| STZ.w $0DD0,X

|06D007| RTS

;---------------------------------------------------------------------------------------------------

.no_space
|06D008| LDA.b #$C8 ; MESSAGE 00C8
|06D00A| LDY.b #$00
|06D00C| JSL ShowMessageUnconditional

.release
|06D010| LDA.b #$30
|06D012| STA.w $0F10,X

|06D015| STZ.w $0D80,X

|06D018| RTS

;===================================================================================================

Fairy_CheckIfTouchable:
|06D019| LDA.b $11
|06D01B| CMP.b #$02
|06D01D| BNE .touchable

|06D01F| REP #$20

|06D021| LDA.w $1CF0

|06D024| CMP.w #$00C7 ; MESSAGE 00C7
|06D027| BEQ .untouchable

|06D029| CMP.w #$00C8 ; MESSAGE 00C8
|06D02C| BNE .touchable

.untouchable
|06D02E| SEP #$30

|06D030| LDA.b #$28
|06D032| STA.w $0F10,X

.touchable
|06D035| SEP #$30

|06D037| RTS

;===================================================================================================

KeyRoomFlagMasks:
|06D038| db $40, $20

;===================================================================================================

Sprite_E4_SmallKey:
Sprite_E5_BigKey:
|06D03A| LDY.w $0CBA,X

|06D03D| LDA.w $0403
|06D040| AND.w KeyRoomFlagMasks,Y
|06D043| BEQ .not_obtained

|06D045| STZ.w $0DD0,X

|06D048| RTS

.not_obtained
|06D049| JSL DrawRippleIfInWater
|06D04D| JSR SpriteDraw_Absorbable

|06D050| BRA Absorbable

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
|06D052| JSL DrawRippleIfInWater
|06D056| JSR SpriteDraw_AbsorbableTransient

;===================================================================================================

Absorbable:
|06D059| JSR CheckIfActive_bank06
|06D05C| JSR MoveSpriteZ_bank06
|06D05F| JSR MoveSpriteXY_bank06

|06D062| LDA.w $0EE0,X
|06D065| BNE .skip_tile_collision

|06D067| JSR CheckSpriteTileCollision
|06D06A| JSR BounceOffWall

.skip_tile_collision
|06D06D| LDA.w $0F80,X
|06D070| SEC
|06D071| SBC.b #$02
|06D073| STA.w $0F80,X

|06D076| LDA.w $0F70,X
|06D079| BPL .aloft

|06D07B| STZ.w $0F70,X

|06D07E| LDA.w $0D50,X
|06D081| ASL A
|06D082| ROR.w $0D50,X

|06D085| LDA.w $0D40,X
|06D088| ASL A
|06D089| ROR.w $0D40,X

|06D08C| LDA.w $0F80,X
|06D08F| EOR.b #$FF
|06D091| INC A

|06D092| LSR A
|06D093| CMP.b #$09
|06D095| BCS .no_bounce

|06D097| JSR ZeroVelocityXYZ_bank06
|06D09A| BRA .aloft

;---------------------------------------------------------------------------------------------------

.no_bounce
|06D09C| STA.w $0F80,X

|06D09F| LDA.l $7FF9C2,X
|06D0A3| CMP.b #$08 ; TILETYPE 08
|06D0A5| BEQ .water_tile

|06D0A7| CMP.b #$09 ; TILETYPE 09
|06D0A9| BNE .not_water_tile

.water_tile
|06D0AB| STZ.w $0F80,X

|06D0AE| JSL Sprite_SpawnSmallSplash
|06D0B2| BMI .aloft

|06D0B4| LDA.w $0E60,X
|06D0B7| AND.b #$20
|06D0B9| BEQ .aloft

|06D0BB| LDA.w $0D10,Y
|06D0BE| SBC.b #$04
|06D0C0| STA.w $0D10,Y

|06D0C3| LDA.w $0D30,Y
|06D0C6| SBC.b #$00
|06D0C8| STA.w $0D30,Y

|06D0CB| LDA.w $0D00,Y
|06D0CE| SBC.b #$04
|06D0D0| STA.w $0D00,Y

|06D0D3| LDA.w $0D20,Y
|06D0D6| SBC.b #$00
|06D0D8| STA.w $0D20,Y

|06D0DB| BRA .aloft

;---------------------------------------------------------------------------------------------------

.not_water_tile
|06D0DD| LDA.w $0E20,X
|06D0E0| CMP.b #$E4 ; SPRITE E4
|06D0E2| BCC .aloft

|06D0E4| LDA.b $1B
|06D0E6| BEQ .aloft

|06D0E8| LDA.b #$05 ; SFX2.05
|06D0EA| JSL QueueSpriteSFX2WithPan

.aloft
|06D0EE| JSR HandleDraggingByAncilla
|06D0F1| JSR TestAbsorption

|06D0F4| RTS

;===================================================================================================

Absorbable_HandleBlink:
|06D0F5| LDA.w $0B58,X
|06D0F8| BEQ .exit

|06D0FA| LDA.b $11
|06D0FC| ORA.w $0FC1
|06D0FF| BNE .exit

|06D101| LDA.b $1A
|06D103| LSR A
|06D104| BCS .delay_tick

|06D106| DEC.w $0B58,X

.delay_tick
|06D109| LDA.w $0B58,X
|06D10C| BNE .dont_disappear

|06D10E| STZ.w $0DD0,X

.dont_disappear
|06D111| CMP.b #$28
|06D113| BCS .exit

|06D115| LSR A
|06D116| BCS .exit

|06D118| JSR GetScreenCoordinates_wrapper

|06D11B| PLA
|06D11C| PLA

.exit
|06D11D| RTS

;===================================================================================================

TestAbsorption:
|06D11E| LDA.w $0F10,X
|06D121| BNE .exit

|06D123| JSR CheckDamageToLink_staggered
|06D126| BCC .exit

|06D128| JSL GetAbsorbedAsItem_long

.exit
|06D12C| RTS

;===================================================================================================
; This should not be a long routine. Everything that calls it is in bank06.
;===================================================================================================
GetAbsorbedAsItem_long:
|06D12D| PHB
|06D12E| PHK
|06D12F| PLB

|06D130| JSR GetAbsorbedAsItem

|06D133| PLB

|06D134| RTL

;===================================================================================================

Absorbable_SFX3:
|06D135| db $0B ; SFX3.0B - heart
|06D136| db $0A ; SFX3.0A - green rupee
|06D137| db $0A ; SFX3.0A - blue rupee
|06D138| db $0A ; SFX3.0A - red rupee
|06D139| db $0B ; SFX3.0B - bomb refill 1
|06D13A| db $0B ; SFX3.0B - bomb refill 4
|06D13B| db $0B ; SFX3.0B - bomb refill 8
|06D13C| db $0B ; SFX3.0B - small magic
|06D13D| db $0B ; SFX3.0B - full magic
|06D13E| db $0B ; SFX3.0B - arrow refill 5
|06D13F| db $0B ; SFX3.0B - arrow refill 10
|06D140| db $0B ; SFX3.0B - fairy
|06D141| db $2F ; SFX3.2F - small key
|06D142| db $2F ; SFX3.2F - big key
|06D143| db $0B ; SFX3.0B - stolen shield

;---------------------------------------------------------------------------------------------------

GetAbsorbedAsItem:
|06D144| STZ.w $0DD0,X

|06D147| LDA.w $0E20,X
|06D14A| SEC
|06D14B| SBC.b #$D8
|06D14D| TAY

|06D14E| LDA.w Absorbable_SFX3,Y
|06D151| JSL QueueSpriteSFX3WithPan

|06D155| TYA
|06D156| JSL JumpTableLocal
|06D15A| dw Absorb_Heart
|06D15C| dw Absorb_Rupee
|06D15E| dw Absorb_Rupee
|06D160| dw Absorb_Rupee
|06D162| dw Absorb_Bomb
|06D164| dw Absorb_Bomb
|06D166| dw Absorb_Bomb
|06D168| dw Absorb_SmallMagic
|06D16A| dw Absorb_FullMagic
|06D16C| dw Absorb_Arrows_5
|06D16E| dw Absorb_Arrows_10
|06D170| dw Absorb_Fairy
|06D172| dw Absorb_SmallKey
|06D174| dw Absorb_BigKey
|06D176| dw Absorb_Shield

;===================================================================================================
; The value here is saved when the pikit nabs the shield.
;===================================================================================================
Absorb_Shield:
|06D178| LDA.w $0E30,X
|06D17B| STA.l $7EF35A

|06D17F| RTS

;===================================================================================================

Absorb_BigKey:
|06D180| STZ.w $02E9
|06D183| LDY.b #$32 ; ITEMGET 32

|06D185| PHX

|06D186| JSL GrantItemReceipt

|06D18A| PLX

|06D18B| BRA Absorb_FlagKey

;===================================================================================================

Absorb_SmallKey:
|06D18D| LDA.l $7EF36F
|06D191| INC A
|06D192| STA.l $7EF36F

;===================================================================================================

Absorb_FlagKey:
|06D196| LDA.w $0E30,X
|06D199| STA.w $0BC0,X

|06D19C| LDY.w $0CBA,X

|06D19F| LDA.w $0403
|06D1A2| ORA.w KeyRoomFlagMasks,Y
|06D1A5| STA.w $0403

|06D1A8| JSL ManuallySetDeathFlagUW

|06D1AC| RTS

;===================================================================================================

Absorb_Fairy:
|06D1AD| LDA.b #$31 ; SFX2.31
|06D1AF| JSL QueueSpriteSFX2WithPan

|06D1B3| LDA.b #$38 ; 7*8
|06D1B5| BRA Absorb_AddHealth

;===================================================================================================

Absorb_Heart:
|06D1B7| LDA.b #$08

;===================================================================================================

Absorb_AddHealth:
|06D1B9| CLC
|06D1BA| ADC.l $7EF372
|06D1BE| STA.l $7EF372

|06D1C2| RTS

;===================================================================================================

pool Absorb_Rupee

.denomination
|06D1C3| db  1
|06D1C4| db  5
|06D1C5| db  20

endpool

;---------------------------------------------------------------------------------------------------

Absorb_Rupee:
|06D1C6| LDY.w $0E20,X

|06D1C9| LDA.b #$00
|06D1CB| XBA

|06D1CC| LDA.w .denomination-$D9,Y ; D9 being the sprite ID of a green rupee

|06D1CF| REP #$20

|06D1D1| CLC
|06D1D2| ADC.l $7EF360
|06D1D6| STA.l $7EF360

|06D1DA| SEP #$20

|06D1DC| RTS

;===================================================================================================

pool Absorb_Bomb

.megatonnage
|06D1DD| db 1
|06D1DE| db 4
|06D1DF| db 8

endpool

;---------------------------------------------------------------------------------------------------

Absorb_Bomb:
|06D1E0| LDY.w $0E20,X

|06D1E3| LDA.w .megatonnage-$DC,Y ; DC being the sprite ID of a single bomb
|06D1E6| CLC
|06D1E7| ADC.l $7EF375
|06D1EB| STA.l $7EF375

|06D1EF| RTS

;===================================================================================================

Absorb_SmallMagic:
|06D1F0| LDA.l $7EF373
|06D1F4| CLC
|06D1F5| ADC.b #$10
|06D1F7| BRA Absorb_AddMagic

;===================================================================================================

Absorb_FullMagic:
|06D1F9| LDA.b #$80

;===================================================================================================

Absorb_AddMagic:
|06D1FB| STA.l $7EF373

|06D1FF| RTS

;===================================================================================================
; Reads the quantity of arrows as a value in $0EB0,X
; defaults to 5
;===================================================================================================
Absorb_Arrows_5:
|06D200| LDA.w $0EB0,X
|06D203| BNE Absorb_AddArrows

|06D205| LDA.b #$05
|06D207| BRA Absorb_AddArrows

;===================================================================================================

Absorb_Arrows_10:
|06D209| LDA.b #$0A

;===================================================================================================

Absorb_AddArrows:
|06D20B| CLC
|06D20C| ADC.l $7EF376
|06D210| STA.l $7EF376

|06D214| RTS

;===================================================================================================

pool SpriteDraw_Absorbable

.gfx_shape
|06D215| db $00 ; heart
|06D216| db $01 ; green rupee
|06D217| db $01 ; blue rupee
|06D218| db $01 ; red rupee
|06D219| db $02 ; bomb refill 1
|06D21A| db $02 ; bomb refill 4
|06D21B| db $02 ; bomb refill 8
|06D21C| db $00 ; small magic
|06D21D| db $01 ; full magic
|06D21E| db $01 ; arrow refill 5
|06D21F| db $02 ; arrow refill 10
|06D220| db $02 ; fairy
|06D221| db $01 ; small key
|06D222| db $02 ; big key
|06D223| db $02 ; stolen shield

.numeral
|06D224| db $00 ; heart
|06D225| db $00 ; green rupee
|06D226| db $00 ; blue rupee
|06D227| db $00 ; red rupee
|06D228| db $01 ; bomb refill 1
|06D229| db $02 ; bomb refill 4
|06D22A| db $03 ; bomb refill 8
|06D22B| db $00 ; small magic
|06D22C| db $00 ; full magic
|06D22D| db $04 ; arrow refill 5
|06D22E| db $05 ; arrow refill 10
|06D22F| db $00 ; fairy
|06D230| db $00 ; small key
|06D231| db $00 ; big key
|06D232| db $00 ; stolen shield

endpool

;===================================================================================================

UNREACHABLE_06D233:
|06D233| db $02, $04, $06, $02

;===================================================================================================

SpriteDraw_AbsorbableTransient:
|06D237| JSR Absorbable_HandleBlink

;===================================================================================================

SpriteDraw_Absorbable:
|06D23A| LDA.w $0FB3
|06D23D| BNE .continue

|06D23F| LDA.b $1B
|06D241| BEQ .continue

|06D243| LDA.b #$30
|06D245| STA.w $0B89,X

.continue
|06D248| LDA.w $0FC6
|06D24B| CMP.b #$03
|06D24D| BCS .exit

|06D24F| LDA.w $0E10,X
|06D252| BEQ .use_selected_region

|06D254| LDA.b #$0C
|06D256| JSL AllocateOAMInRegionC

.use_selected_region
|06D25A| LDA.w $0E90,X
|06D25D| BNE .abort

|06D25F| LDY.w $0E20,X

|06D262| LDA.w .numeral-$D8,Y
|06D265| BEQ .not_special

|06D267| JMP.w .draw_special_char

;---------------------------------------------------------------------------------------------------

.not_special
|06D26A| LDA.w .gfx_shape-$D8,Y
|06D26D| BNE .not_8x8

|06D26F| JMP.w SpriteDraw_SingleSmall

;---------------------------------------------------------------------------------------------------

.not_8x8
|06D272| CMP.b #$02
|06D274| BNE .is_8x16

;---------------------------------------------------------------------------------------------------

|06D276| LDA.w $0E20,X
|06D279| CMP.b #$E6 ; SPRITE E6
|06D27B| BNE .not_shield

|06D27D| LDA.w $0E30,X
|06D280| CMP.b #$01
|06D282| BEQ .is_8x16

|06D284| LDA.b #$01
|06D286| STA.w $0DC0,X

.not_shield
|06D289| JMP.w SpriteDraw_SingleLarge

;---------------------------------------------------------------------------------------------------

.is_8x16
|06D28C| JMP.w SpriteDraw_ThinAndTall

;---------------------------------------------------------------------------------------------------

.abort
|06D28F| PLA
|06D290| PLA

.exit
|06D291| RTS

;---------------------------------------------------------------------------------------------------
; TODO arrange into groups
.numbered_offset_x
|06D292| dw   0,   0,   8,   0
|06D29A| dw   0,   8,   0,   0
|06D2A2| dw   8,   0,   0,   2
|06D2AA| dw   0,   0,   2,   0
|06D2B2| dw   0,   0

;===================================================================================================

#Octorok_hflip:
|06D2B6| db $40, $00, $00, $00

;===================================================================================================

.numbered_offset_y
|06D2BA| dw   0,   0,   8,   0
|06D2C2| dw   0,   8,   0,   0
|06D2CA| dw   8,   0,   8,   8
|06D2D2| dw   0,   8,   8,   0
|06D2DA| dw   8,   8

;---------------------------------------------------------------------------------------------------

.number_char
|06D2DE| db $6E, $6E, $68, $6E, $6E, $78, $6E, $6E
|06D2E6| db $79, $63, $73, $69, $63, $73, $6A, $63
|06D2EE| db $73, $73

;---------------------------------------------------------------------------------------------------

.number_prop
|06D2F0| db $02, $02, $00, $02, $02, $00, $02, $02
|06D2F8| db $00, $00, $00, $00, $00, $00, $00, $00
|06D300| db $00, $00

;---------------------------------------------------------------------------------------------------

.draw_special_char
|06D302| DEC A
|06D303| STA.b $06

|06D305| JSR GetScreenCoordinates

|06D308| LDA.b $06
|06D30A| ASL A
|06D30B| ADC.b $06
|06D30D| STA.b $06

|06D30F| PHX

|06D310| LDA.w $0EB0,X
|06D313| CMP.b #$01

|06D315| LDX.b #$02
|06D317| BCC .next_object

|06D319| DEX

;---------------------------------------------------------------------------------------------------

.next_object
|06D31A| PHX

|06D31B| TXA
|06D31C| CLC
|06D31D| ADC.b $06
|06D31F| PHA

|06D320| ASL A
|06D321| TAX

|06D322| REP #$20

|06D324| LDA.b $00
|06D326| CLC
|06D327| ADC.w .numbered_offset_x,X
|06D32A| STA.b ($90),Y

|06D32C| AND.w #$0100
|06D32F| STA.b $0E

|06D331| LDA.b $02
|06D333| CLC
|06D334| ADC.w .numbered_offset_y,X

|06D337| INY
|06D338| STA.b ($90),Y

|06D33A| CLC
|06D33B| ADC.w #$0010
|06D33E| CMP.w #$0100

|06D341| SEP #$20
|06D343| BCC .on_screen

|06D345| LDA.b #$F0
|06D347| STA.b ($90),Y

.on_screen
|06D349| PLX

|06D34A| LDA.w .number_char,X
|06D34D| INY
|06D34E| STA.b ($90),Y

|06D350| INY

|06D351| LDA.b $05
|06D353| STA.b ($90),Y

|06D355| PHY

|06D356| TYA
|06D357| LSR A
|06D358| LSR A
|06D359| TAY

|06D35A| LDA.w .number_prop,X
|06D35D| ORA.b $0F
|06D35F| STA.b ($92),Y

|06D361| PLY
|06D362| INY

|06D363| PLX
|06D364| DEX
|06D365| BPL .next_object

|06D367| PLX

|06D368| JMP.w DrawSpriteShadow

;===================================================================================================

pool Sprite_08_Octorok

.direction
|06D36B| db   3,   2,   0,   1

.speed_x
|06D36F| db  24, -24,   0,   0

.speed_y
|06D373| db   0,   0,  24, -24

.unused
|06D377| db $01, $02, $04, $08

.timer
|06D37B| db  60, 128, 160, 128

endpool

;===================================================================================================

Sprite_08_Octorok:
#Sprite_0A_Octorok4way:
|06D37F| LDY.w $0DE0,X ; save direction
|06D382| PHY

|06D383| LDA.w $0E00,X ; this timer only appears used by the 4 way shooters
|06D386| BEQ .not_spinning

|06D388| LDA.w .direction,Y
|06D38B| STA.w $0DE0,X

.not_spinning
|06D38E| STZ.b $00

; What a weird and dumb way to handle the horizontal flip for these
|06D390| LDA.w $0DC0,X
|06D393| CMP.b #$07
|06D395| BNE .no_flip

|06D397| LDA.b #$40 ; set hflip if animation step 7
|06D399| STA.b $00

.no_flip
|06D39B| LDA.w $0F50,X ; clear out hflip bit
|06D39E| AND.b #$BF
|06D3A0| ORA.w Octorok_hflip,Y ; also set hflip if direction 0
|06D3A3| ORA.b $00
|06D3A5| STA.w $0F50,X

|06D3A8| JSR SpriteDraw_Octorok

|06D3AB| PLA ; recover direction from before for movement
|06D3AC| STA.w $0DE0,X

|06D3AF| JSR CheckIfActive_bank06
|06D3B2| JSR HandleSpriteRecoil_bank06
|06D3B5| JSR MoveSpriteXY_bank06
|06D3B8| JSR CheckDamageToAndFromLink_bank06

|06D3BB| LDA.w $0D80,X
|06D3BE| AND.b #$01
|06D3C0| BNE .octorok_used_barrage

|06D3C2| LDA.w $0DE0,X
|06D3C5| AND.b #$02
|06D3C7| ASL A
|06D3C8| STA.b $00

|06D3CA| INC.w $0E80,X

|06D3CD| LDA.w $0E80,X
|06D3D0| LSR A
|06D3D1| LSR A
|06D3D2| LSR A
|06D3D3| AND.b #$03
|06D3D5| ORA.b $00
|06D3D7| STA.w $0DC0,X

|06D3DA| LDA.w $0DF0,X
|06D3DD| BNE .wait

|06D3DF| INC.w $0D80,X

|06D3E2| LDY.w $0E20,X

|06D3E5| LDA.w .timer-8,Y
|06D3E8| STA.w $0DF0,X

|06D3EB| RTS

;---------------------------------------------------------------------------------------------------

.wait
|06D3EC| LDY.w $0DE0,X

|06D3EF| LDA.w .speed_x,Y
|06D3F2| STA.w $0D50,X

|06D3F5| LDA.w .speed_y,Y
|06D3F8| STA.w $0D40,X

|06D3FB| JSR CheckSpriteTileCollision
|06D3FE| LDA.w $0E70,X ; turn around on collision
|06D401| BEQ .no_collision

|06D403| LDA.w $0DE0,X
|06D406| EOR.b #$01
|06D408| STA.w $0DE0,X

|06D40B| BRA .exit

.no_collision
|06D40D| RTS

;---------------------------------------------------------------------------------------------------

.octorok_used_barrage
|06D40E| JSR ZeroVelocityXY_bank06

|06D411| LDA.w $0DF0,X
|06D414| BNE Octorock_ShootEmUp

|06D416| INC.w $0D80,X

|06D419| LDA.w $0DE0,X
|06D41C| PHA

|06D41D| JSL GetRandomNumber
|06D421| AND.b #$3F
|06D423| ADC.b #$30
|06D425| STA.w $0DF0,X

|06D428| AND.b #$03
|06D42A| STA.w $0DE0,X

|06D42D| PLA
|06D42E| CMP.w $0DE0,X
|06D431| BEQ .exit

|06D433| EOR.w $0DE0,X
|06D436| BNE .exit

|06D438| LDA.b #$08
|06D43A| STA.w $0E00,X

.exit
|06D43D| RTS

;===================================================================================================

Octorock_ShootEmUp:
|06D43E| LDA.w $0E20,X ; get the octorok type
|06D441| SEC
|06D442| SBC.b #$08

|06D444| REP #$30 ; if they left Y as 8 bit

|06D446| AND.w #$00FF ; they wouldn't need this
|06D449| ASL A
|06D44A| TAY

|06D44B| LDA.w .vectors,Y
|06D44E| DEC A
|06D44F| PHA

|06D450| SEP #$30

|06D452| RTS

.vectors
|06D453| dw Octorok_ShootSingle ; Sprite 08
|06D455| dw $0000
|06D457| dw Octorok_Shoot4Ways ; Sprite 0A

;===================================================================================================

pool Octorok_ShootSingle

.mouth_anim_step
|06D459| db $00, $02, $02, $02
|06D45D| db $01, $01, $01, $00
|06D461| db $00, $00, $00, $00
|06D465| db $02, $02, $02, $02
|06D469| db $02, $01, $01, $00

endpool

;===================================================================================================

pool Octorok_Shoot4Ways

.mouth_anim_step
|06D46D| db $02, $02, $02, $02
|06D471| db $02, $02, $02, $02
|06D475| db $01, $00

endpool

;===================================================================================================

Octorok_ShootSingle:
|06D477| LDA.w $0DF0,X
|06D47A| CMP.b #$1C
|06D47C| BNE .bide_time

|06D47E| PHA

|06D47F| JSR Octorok_FireLoogie

|06D482| PLA

.bide_time
|06D483| LSR A
|06D484| LSR A
|06D485| LSR A
|06D486| TAY

|06D487| LDA.w .mouth_anim_step,Y
|06D48A| STA.w $0DB0,X

|06D48D| RTS

;===================================================================================================

pool Octorok_Shoot4Ways

.next_direction
|06D48E| db $02, $03, $01, $00

endpool

;---------------------------------------------------------------------------------------------------

Octorok_Shoot4Ways:
|06D492| LDA.w $0DF0,X
|06D495| PHA

|06D496| CMP.b #$80
|06D498| BCS .animate

|06D49A| AND.b #$0F
|06D49C| BNE .delay_turn

|06D49E| PHA

|06D49F| LDY.w $0DE0,X

|06D4A2| LDA.w .next_direction,Y
|06D4A5| STA.w $0DE0,X

|06D4A8| PLA

.delay_turn
|06D4A9| CMP.b #$08
|06D4AB| BNE .animate

|06D4AD| JSR Octorok_FireLoogie

.animate
|06D4B0| PLA
|06D4B1| LSR A ; /16
|06D4B2| LSR A
|06D4B3| LSR A
|06D4B4| LSR A
|06D4B5| TAY

|06D4B6| LDA.w .mouth_anim_step,Y
|06D4B9| STA.w $0DB0,X

|06D4BC| RTS

;===================================================================================================

pool Octorok_FireLoogie

.offset_x_low
|06D4BD| db  12, -12,   0,   0

.offset_x_high
|06D4C1| db   0,  -1,   0,   0

.offset_y_low
|06D4C5| db   4,   4,  12, -12

.offset_y_high
|06D4C9| db   0,   0,   0,  -1

.rock_speed_x
|06D4CD| db  44, -44,   0,   0

.rock_speed_y
|06D4D1| db   0,   0,  44, -44

endpool

;---------------------------------------------------------------------------------------------------

Octorok_FireLoogie:
|06D4D5| LDA.b #$07 ; SFX2.07
|06D4D7| JSL QueueSpriteSFX2WithPan

|06D4DB| LDA.b #$0C ; SPRITE 0C
|06D4DD| JSL SpawnSpriteDynamically
|06D4E1| BMI .fired_a_blank ; we had no room :(

|06D4E3| PHX ; save sprite slot of octorok

|06D4E4| LDA.w $0DE0,X ; offset the rock's position based on its direction
|06D4E7| TAX

|06D4E8| LDA.b $00
|06D4EA| CLC
|06D4EB| ADC.w .offset_x_low,X
|06D4EE| STA.w $0D10,Y

|06D4F1| LDA.b $01
|06D4F3| ADC.w .offset_x_high,X
|06D4F6| STA.w $0D30,Y

|06D4F9| LDA.b $02
|06D4FB| CLC
|06D4FC| ADC.w .offset_y_low,X
|06D4FF| STA.w $0D00,Y

|06D502| LDA.b $03
|06D504| ADC.w .offset_y_high,X
|06D507| STA.w $0D20,Y

|06D50A| LDA.w $0DE0,Y ; set speed based on direction
|06D50D| TAX

|06D50E| LDA.w .rock_speed_x,X
|06D511| STA.w $0D50,Y

|06D514| LDA.w .rock_speed_y,X
|06D517| STA.w $0D40,Y

|06D51A| PLX

.fired_a_blank
|06D51B| RTS

;===================================================================================================

pool SpriteDraw_Octorok

.mouth_offset_x
|06D51C| dw   8,   0,   4,   8,   0,   4,   9,  -1,   4

.mouth_offset_y
|06D52E| dw   6,   6,   9,   6,   6,   9,   6,   6,   9

.mouth_char
|06D540| db $BB, $BB, $BA, $AB, $AB, $AA, $A9, $A9, $B9

.mouth_props
|06D549| db $65, $25, $25, $65, $25, $25, $65, $25, $25

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Octorok:
|06D552| JSR GetScreenCoordinates

|06D555| LDA.w $0DE0,X
|06D558| CMP.b #$03
|06D55A| BEQ .no_mouth

;---------------------------------------------------------------------------------------------------

|06D55C| LDA.w $0DB0,X
|06D55F| ASL A
|06D560| ADC.w $0DB0,X
|06D563| ADC.w $0DE0,X
|06D566| STA.b $07

|06D568| PHX
|06D569| PHA

|06D56A| ASL A
|06D56B| TAX

|06D56C| REP #$20

|06D56E| LDA.b $00
|06D570| CLC
|06D571| ADC.w .mouth_offset_x,X
|06D574| STA.b ($90),Y

|06D576| AND.w #$0100
|06D579| STA.b $0E

|06D57B| LDA.b $02
|06D57D| CLC
|06D57E| ADC.w .mouth_offset_y,X

|06D581| INY
|06D582| STA.b ($90),Y

|06D584| CLC
|06D585| ADC.w #$0010
|06D588| CMP.w #$0100

|06D58B| SEP #$20
|06D58D| BCC .on_screen

|06D58F| LDA.b #$F0
|06D591| STA.b ($90),Y

.on_screen
|06D593| PLX

|06D594| LDA.w .mouth_char,X
|06D597| INY
|06D598| STA.b ($90),Y

|06D59A| LDA.w .mouth_props,X
|06D59D| INY
|06D59E| ORA.b $05
|06D5A0| STA.b ($90),Y

|06D5A2| LDA.b $0F
|06D5A4| STA.b ($92)

|06D5A6| PLX

;---------------------------------------------------------------------------------------------------

.no_mouth
|06D5A7| REP #$20

|06D5A9| LDA.b $90 ; advance the OAM table by 1 entry for the body
|06D5AB| CLC
|06D5AC| ADC.w #$0004
|06D5AF| STA.b $90

|06D5B1| INC.b $92

|06D5B3| SEP #$20

|06D5B5| DEC.w $0E40,X ; less OAM allotment

|06D5B8| LDY.b #$00
|06D5BA| JSR SpriteDraw_SingleLarge_skipcoords

|06D5BD| INC.w $0E40,X

|06D5C0| RTS

;===================================================================================================

Sprite_0C_OctorokStone:
|06D5C1| LDA.w $0DD0,X
|06D5C4| CMP.b #$06
|06D5C6| BNE OctorokStone_Active

;===================================================================================================

OctorokStone_Crumbling:
|06D5C8| JSR SpriteDraw_OctorokStoneCrumbling
|06D5CB| JSR CheckIfActivePermissive_bank06

|06D5CE| LDA.w $0DF0,X
|06D5D1| CMP.b #$1E
|06D5D3| BNE .exit

|06D5D5| LDA.b #$1F ; SFX2.1F
|06D5D7| JSL QueueSpriteSFX2WithPan

.exit
|06D5DB| RTS

;===================================================================================================

OctorokStone_Active:
|06D5DC| JSR SpriteDraw_SingleLarge
|06D5DF| JSR CheckIfActive_bank06
|06D5E2| JSR CheckDamageToLink
|06D5E5| JSR MoveSpriteXY_bank06

|06D5E8| TXA
|06D5E9| EOR.b $1A
|06D5EB| AND.b #$03
|06D5ED| BNE .exit

|06D5EF| JSR CheckSpriteTileCollision

|06D5F2| LDA.w $0E70,X
|06D5F5| BEQ .exit

|06D5F7| JSR PrepareSpriteToDie

.exit
|06D5FA| RTS

;===================================================================================================

pool SpriteDraw_OctorokStoneCrumbling

.offset_x
|06D5FB| dw   0,   8,   0,   8,  -8,  16,  -8,  16
|06D60B| dw -12,  20, -12,  20, -14,  22, -14,  22

.offset_y
|06D61B| dw   0,   0,   8,   8,  -8,  -8,  16,  16
|06D62B| dw -12, -12,  20,  20, -14, -14,  22,  22

.flip
|06D63B| db $00, $40, $80, $C0, $00, $40, $80, $C0
|06D643| db $00, $40, $80, $C0, $00, $40, $80, $C0

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_OctorokStoneCrumbling:
|06D64B| JSR GetScreenCoordinates

|06D64E| PHX

|06D64F| LDA.b #$03
|06D651| STA.b $06

|06D653| LDA.w $0DF0,X
|06D656| LSR A
|06D657| AND.b #$0C
|06D659| EOR.b #$0C

|06D65B| CLC
|06D65C| ADC.b $06
|06D65E| TAX

;---------------------------------------------------------------------------------------------------

.next_object
|06D65F| PHX

|06D660| TXA
|06D661| ASL A
|06D662| TAX

|06D663| REP #$20

|06D665| LDA.b $00
|06D667| CLC
|06D668| ADC.w .offset_x,X
|06D66B| STA.b ($90),Y

|06D66D| AND.w #$0100
|06D670| STA.b $0E

|06D672| LDA.b $02
|06D674| CLC
|06D675| ADC.w .offset_y,X

|06D678| INY
|06D679| STA.b ($90),Y

|06D67B| CLC
|06D67C| ADC.w #$0010
|06D67F| CMP.w #$0100

|06D682| SEP #$20
|06D684| BCC .on_screen

|06D686| LDA.b #$F0
|06D688| STA.b ($90),Y

.on_screen
|06D68A| PLX

|06D68B| LDA.b #$BC
|06D68D| INY
|06D68E| STA.b ($90),Y

|06D690| LDA.w .flip,X
|06D693| ORA.b #$2D
|06D695| INY
|06D696| STA.b ($90),Y

|06D698| PHY

|06D699| TYA
|06D69A| LSR A
|06D69B| LSR A
|06D69C| TAY

|06D69D| LDA.b $0F
|06D69F| STA.b ($92),Y

|06D6A1| PLY
|06D6A2| INY

|06D6A3| DEX
|06D6A4| DEC.b $06
|06D6A6| BPL .next_object

;---------------------------------------------------------------------------------------------------

|06D6A8| PLX

|06D6A9| RTS

;===================================================================================================

pool Sprite_0F_Octoballoon

.altitude
|06D6AA| db  16,  17,  18,  19
|06D6AE| db  20,  19,  18,  17

endpool

;---------------------------------------------------------------------------------------------------

Sprite_0F_Octoballoon:
|06D6B2| LDA.w $0E80,X

|06D6B5| LSR A
|06D6B6| LSR A
|06D6B7| LSR A

|06D6B8| AND.b #$07
|06D6BA| TAY

|06D6BB| LDA.w .altitude,Y
|06D6BE| STA.w $0F70,X

|06D6C1| JSR Octoballoon_DrawAndBabies
|06D6C4| JSR CheckIfActive_bank06

|06D6C7| LDA.w $0DF0,X
|06D6CA| BNE .dont_explode

|06D6CC| LDA.b #$03
|06D6CE| STA.w $0DF0,X

|06D6D1| LDY.b #$0F

.next_sprite
|06D6D3| LDA.w $0DD0,Y
|06D6D6| BEQ .am_dead

|06D6D8| LDA.w $0E20,Y
|06D6DB| CMP.b #$10 ; SPRITE 10
|06D6DD| BEQ .dont_explode

.am_dead
|06D6DF| DEY
|06D6E0| BPL .next_sprite

|06D6E2| LDA.b #$06
|06D6E4| STA.w $0DD0,X

|06D6E7| JMP.w OctoballoonEXPLOSIONTIME

;---------------------------------------------------------------------------------------------------

.dont_explode
|06D6EA| JSR HandleSpriteRecoil_bank06

|06D6ED| INC.w $0E80,X

|06D6F0| TXA
|06D6F1| EOR.b $1A
|06D6F3| AND.b #$0F
|06D6F5| BNE .continue

|06D6F7| LDA.b #$04
|06D6F9| JSR ProjectSpriteSpeedTowardsLink

|06D6FC| LDA.w $0D40,X
|06D6FF| CMP.b $00
|06D701| BEQ .at_target_y_speed
|06D703| BPL .slowdown_y

|06D705| INC.w $0D40,X

|06D708| BRA .at_target_y_speed

.slowdown_y
|06D70A| DEC.w $0D40,X

;---------------------------------------------------------------------------------------------------

.at_target_y_speed
|06D70D| LDA.w $0D50,X
|06D710| CMP.b $01
|06D712| BEQ .continue
|06D714| BPL .slowdown_x

|06D716| INC.w $0D50,X

|06D719| BRA .continue

.slowdown_x
|06D71B| DEC.w $0D50,X

;---------------------------------------------------------------------------------------------------

.continue
|06D71E| JSR MoveSpriteXY_bank06
|06D721| JSR CheckDamageToLink
|06D724| BCC .no_contact

|06D726| JSR Octoballoon_RecoilLink

.no_contact
|06D729| JSR CheckDamageFromLink
|06D72C| JSR CheckSpriteTileCollision
|06D72F| JSR BounceOffWall

|06D732| RTS

;===================================================================================================

Octoballoon_RecoilLink:
|06D733| LDA.b $46
|06D735| BNE .exit

|06D737| LDA.b #$04
|06D739| STA.b $46

|06D73B| LDA.b #$10
|06D73D| JSR ApplyRecoilToLink

|06D740| JSR InvertSpeedXY

.exit
|06D743| RTS

;===================================================================================================

pool Octoballoon_DrawAndBabies

.offset_x
|06D744| dw  -4,   4,  -4,   4
|06D74C| dw  -8,   8,  -8,   8
|06D754| dw  -4,   4,  -4,   4

.offset_y
|06D75C| dw  -4,  -4,   4,   4
|06D764| dw  -8,  -8,   8,   8
|06D76C| dw  -4,  -4,   4,   4

.char
|06D774| db $8C, $8C, $9C, $9C
|06D778| db $86, $86, $86, $86
|06D77C| db $86, $86, $86, $86

.flip
|06D780| db $00, $40, $00, $40
|06D784| db $00, $40, $80, $C0
|06D788| db $00, $40, $80, $C0

endpool

;---------------------------------------------------------------------------------------------------

Octoballoon_DrawAndBabies:
|06D78C| STZ.b $0A

|06D78E| LDA.w $0DD0,X
|06D791| CMP.b #$06
|06D793| BNE .not_dying

|06D795| LDA.w $0DF0,X
|06D798| CMP.b #$06
|06D79A| BNE .no_baby

|06D79C| LDA.b $11
|06D79E| BNE .no_baby

|06D7A0| JSR FormBabby

.no_baby
|06D7A3| LDA.w $0DF0,X
|06D7A6| LSR A
|06D7A7| AND.b #$04
|06D7A9| CLC
|06D7AA| ADC.b #$04
|06D7AC| STA.b $0A

;---------------------------------------------------------------------------------------------------

.not_dying
|06D7AE| JSR GetScreenCoordinates

|06D7B1| PHX

|06D7B2| LDA.b #$03
|06D7B4| STA.b $0B

|06D7B6| CLC
|06D7B7| ADC.b $0A

|06D7B9| TAX

.next_object
|06D7BA| PHX

|06D7BB| TXA
|06D7BC| ASL A
|06D7BD| TAX

|06D7BE| REP #$20

|06D7C0| LDA.b $00
|06D7C2| CLC
|06D7C3| ADC.w .offset_x,X
|06D7C6| STA.b ($90),Y

|06D7C8| AND.w #$0100
|06D7CB| STA.b $0E

|06D7CD| LDA.b $02
|06D7CF| CLC
|06D7D0| ADC.w .offset_y,X

|06D7D3| INY
|06D7D4| STA.b ($90),Y

|06D7D6| CLC
|06D7D7| ADC.w #$0010
|06D7DA| CMP.w #$0100

|06D7DD| SEP #$20
|06D7DF| BCC .on_screen

|06D7E1| LDA.b #$F0
|06D7E3| STA.b ($90),Y

.on_screen
|06D7E5| PLX

|06D7E6| LDA.w .char,X
|06D7E9| INY
|06D7EA| STA.b ($90),Y

|06D7EC| LDA.w .flip,X
|06D7EF| ORA.b $05
|06D7F1| INY
|06D7F2| STA.b ($90),Y

|06D7F4| PHY

|06D7F5| TYA
|06D7F6| LSR A
|06D7F7| LSR A
|06D7F8| TAY

|06D7F9| LDA.b #$02
|06D7FB| ORA.b $0F
|06D7FD| STA.b ($92),Y

|06D7FF| PLY
|06D800| INY

|06D801| DEX

|06D802| DEC.b $0B
|06D804| BPL .next_object

|06D806| PLX

|06D807| JMP.w DrawSpriteShadow

;===================================================================================================

pool FormBabby

.speed_x
|06D80A| db  16,  11, -11, -16, -11,  11

.speed_y
|06D810| db   0,  11,  11,   0, -11, -11

endpool

;---------------------------------------------------------------------------------------------------

FormBabby:
|06D816| LDA.b #$0C ; SFX2.0C
|06D818| JSL QueueSpriteSFX2WithPan

|06D81C| LDA.b #$05
|06D81E| STA.b $0D

.nth_child
|06D820| LDA.b #$10 ; SPRITE 10
|06D822| JSL SpawnSpriteDynamically
|06D826| BMI .no_space

|06D828| JSL SetSpawnedSpriteCoordinates

|06D82C| PHX

|06D82D| LDX.b $0D

|06D82F| LDA.w .speed_x,X
|06D832| STA.w $0D50,Y

|06D835| LDA.w .speed_y,X
|06D838| STA.w $0D40,Y

|06D83B| LDA.b #$30
|06D83D| STA.w $0F80,Y

|06D840| LDA.b #$FF
|06D842| STA.w $0E80,Y

|06D845| PLX

.no_space
|06D846| DEC.b $0D
|06D848| BPL .nth_child

|06D84A| RTS

;===================================================================================================

UNREACHABLE_06D84B:
|06D84B| db $00, $03, $05, $08, $0A, $0C, $0D, $0E
|06D853| db $0F, $0E, $0D, $0C, $0A, $08, $05, $03

;===================================================================================================

Sprite_10_OctoballoonBaby:
|06D85B| LDA.w $0E80,X
|06D85E| BNE .alive

|06D860| STZ.w $0DD0,X

.alive
|06D863| CMP.b #$40
|06D865| BCS .not_blinking

|06D867| AND.b #$01
|06D869| BNE .dont_draw

.not_blinking
|06D86B| JSR SpriteDraw_SingleSmall

.dont_draw
|06D86E| JSR CheckIfActive_bank06

|06D871| DEC.w $0E80,X

|06D874| JSR HandleSpriteRecoil_bank06

|06D877| DEC.w $0F80,X

|06D87A| JSR MoveSpriteZ_bank06

|06D87D| LDA.w $0F70,X
|06D880| BPL .airborne

|06D882| STZ.w $0F70,X

|06D885| LDA.b #$10
|06D887| STA.w $0F80,X

.airborne
|06D88A| JSR MoveSpriteXY_bank06
|06D88D| JSR CheckSpriteTileCollision
|06D890| JSR BounceOffWall

;===================================================================================================

CheckDamageToAndFromLink_bank06:
|06D893| JSR CheckDamageFromLink
|06D896| JSR CheckDamageToLink

|06D899| RTS

;===================================================================================================

pool Sprite_0D_Buzzblob

.anim_step
|06D89A| db $00, $01, $00, $02

.palette
|06D89E| db $0A, $02, $08, $02

endpool

;---------------------------------------------------------------------------------------------------

Sprite_0D_Buzzblob:
|06D8A2| LDA.w $0E00,X
|06D8A5| BEQ .not_electrified

|06D8A7| LSR A
|06D8A8| AND.b #$03
|06D8AA| TAY

|06D8AB| LDA.w $0B89,X
|06D8AE| AND.b #$F1
|06D8B0| ORA.w .palette,Y
|06D8B3| STA.w $0B89,X

.not_electrified
|06D8B6| JSL Cukeman
|06D8BA| JSR SpriteDraw_Buzzblob

|06D8BD| LDA.w $0E80,X

|06D8C0| LSR A
|06D8C1| LSR A
|06D8C2| LSR A

|06D8C3| AND.b #$03
|06D8C5| TAY

|06D8C6| LDA.w .anim_step,Y

|06D8C9| LDY.w $0E00,X
|06D8CC| BEQ .normal_anim_step

|06D8CE| INC A
|06D8CF| INC A
|06D8D0| INC A

.normal_anim_step
|06D8D1| STA.w $0DC0,X

|06D8D4| JSR CheckIfActive_bank06
|06D8D7| JSR HandleSpriteRecoil_bank06

|06D8DA| INC.w $0E80,X

|06D8DD| LDA.w $0DF0,X
|06D8E0| BNE .delay

|06D8E2| JSR Buzzblob_SelectNewDirection

.delay
|06D8E5| LDA.w $0E00,X
|06D8E8| BNE .immobile

|06D8EA| JSR MoveSpriteXY_bank06

.immobile
|06D8ED| JSR CheckSpriteTileCollision
|06D8F0| JSR BounceOffWall

|06D8F3| JMP.w CheckDamageToAndFromLink_bank06

;===================================================================================================

pool Buzzblob_SelectNewDirection

.speed_x
|06D8F6| db  3,  2, -2, -3, -2,  2,  0,  0

.speed_y
|06D8FE| db  0,  2,  2,  0, -2, -2,  0,  0

.timers
|06D906| db 48, 48, 48, 48, 48, 48, 64, 64

endpool

;---------------------------------------------------------------------------------------------------

Buzzblob_SelectNewDirection:
|06D90E| JSL GetRandomNumber
|06D912| AND.b #$07
|06D914| TAY

|06D915| LDA.w .speed_x,Y
|06D918| STA.w $0D50,X

|06D91B| LDA.w .speed_y,Y
|06D91E| STA.w $0D40,X

|06D921| LDA.w .timers,Y
|06D924| STA.w $0DF0,X

|06D927| RTS

;===================================================================================================

pool SpriteDraw_Buzzblob

.offset_x
|06D928| dw   0,   8,   0

.offset_y
|06D92E| dw  -8,  -8,   0

.char
|06D934| db $F0, $F0, $E1
|06D937| db $00, $00, $CE
|06D93A| db $00, $00, $CE
|06D93D| db $E3, $E3, $CA
|06D940| db $E4, $E5, $CC
|06D943| db $E5, $E4, $CC

.flip
|06D946| db $00, $40, $00
|06D949| db $00, $00, $00
|06D94C| db $00, $00, $40
|06D94F| db $00, $40, $00
|06D952| db $00, $00, $00
|06D955| db $40, $40, $40

.size
|06D958| db $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Buzzblob:
|06D95B| JSR GetScreenCoordinates

|06D95E| PHX

|06D95F| LDA.w $0DC0,X
|06D962| ASL A
|06D963| ADC.w $0DC0,X
|06D966| STA.b $06

|06D968| LDX.b #$02

.next_object
|06D96A| PHX

|06D96B| TXA
|06D96C| ASL A
|06D96D| TAX

|06D96E| REP #$20

|06D970| LDA.b $00
|06D972| CLC
|06D973| ADC.w .offset_x,X
|06D976| STA.b ($90),Y

|06D978| AND.w #$0100
|06D97B| STA.b $0E

|06D97D| LDA.b $02
|06D97F| CLC
|06D980| ADC.w .offset_y,X

|06D983| INY
|06D984| STA.b ($90),Y

|06D986| CLC
|06D987| ADC.w #$0010
|06D98A| CMP.w #$0100

|06D98D| SEP #$20
|06D98F| BCC .on_screen

|06D991| LDA.b #$F0
|06D993| STA.b ($90),Y

.on_screen
|06D995| PLX
|06D996| PHX

|06D997| TXA
|06D998| CLC
|06D999| ADC.b $06
|06D99B| TAX

|06D99C| INY

|06D99D| LDA.w .char,X
|06D9A0| STA.b ($90),Y
|06D9A2| BNE .dont_skip

|06D9A4| DEY

|06D9A5| LDA.b #$F0
|06D9A7| STA.b ($90),Y

|06D9A9| INY

.dont_skip
|06D9AA| LDA.w .flip,X
|06D9AD| ORA.b $05
|06D9AF| INY
|06D9B0| STA.b ($90),Y

|06D9B2| PLX

|06D9B3| PHY

|06D9B4| TYA
|06D9B5| LSR A
|06D9B6| LSR A
|06D9B7| TAY

|06D9B8| LDA.w .size,X
|06D9BB| ORA.b $0F
|06D9BD| STA.b ($92),Y

|06D9BF| PLY
|06D9C0| INY

|06D9C1| DEX
|06D9C2| BPL .next_object

|06D9C4| PLX

|06D9C5| JMP.w DrawSpriteShadow

;===================================================================================================

BounceOffWall:
|06D9C8| LDA.w $0E70,X
|06D9CB| AND.b #$03
|06D9CD| BEQ .no_horizontal_collision

|06D9CF| JSR InvertSpeedX

.no_horizontal_collision
|06D9D2| LDA.w $0E70,X
|06D9D5| AND.b #$0C
|06D9D7| BEQ .no_vertical_collision

|06D9D9| JSR InvertSpeedY

.no_vertical_collision
|06D9DC| RTS

;===================================================================================================
; These do what's on the tin
;===================================================================================================
InvertSpeedXY:
|06D9DD| JSR InvertSpeedY

;===================================================================================================

InvertSpeedX:
|06D9E0| LDA.w $0D50,X
|06D9E3| EOR.b #$FF
|06D9E5| INC A
|06D9E6| STA.w $0D50,X

|06D9E9| RTS

;===================================================================================================

InvertSpeedY:
|06D9EA| LDA.w $0D40,X
|06D9ED| EOR.b #$FF
|06D9EF| INC A
|06D9F0| STA.w $0D40,X

|06D9F3| RTS

;===================================================================================================

CheckIfActive_bank06:
|06D9F4| LDA.w $0DD0,X
|06D9F7| CMP.b #$09
|06D9F9| BNE .inactive

;---------------------------------------------------------------------------------------------------

#CheckIfActivePermissive_bank06:
|06D9FB| LDA.w $0FC1
|06D9FE| BNE .inactive

|06DA00| LDA.b $11
|06DA02| BNE .inactive

|06DA04| LDA.w $0CAA,X
|06DA07| BMI .active

|06DA09| LDA.w $0F00,X
|06DA0C| BEQ .active

.inactive
|06DA0E| PLA
|06DA0F| PLA

.active
|06DA10| RTS

;===================================================================================================
; This table converts a sprite's ID to a class
; Add the values in $0E20,X and $0DC0,X to get a class
; use that class to index SpriteDraw_ClassToChar ($06:DB0C)
; TODO verify all
;===================================================================================================
SpriteDraw_IDtoClass:

; 0x00 - TODO octorok?
|06DA11| db $A0, $A2, $A0, $A2
|06DA15| db $80, $82, $80, $82

; 0x08 - Cucco
|06DA19| db $EA, $EC

; 0x0A - Octorok stone
|06DA1B| db $84

; 0x0B - Buzz blob
|06DA1C| db $4E, $61

; 0x0D - Octoballoon baby
|06DA1E| db $BD

; 0x0E - Kodongo fire
|06DA1F| db $8C

; 0x0F - Red guard/Elder
|06DA20| db $20, $22

; 0x11 - Hoarder
|06DA22| db $C0, $C2

; 0x13 - Poe
|06DA24| db $E6

; 0x14 - Crystal switch
|06DA25| db $E4

; 0x15 - Sluggula
|06DA26| db $82, $AA, $84, $AC
|06DA2A| db $80, $A0

; 0x1B - Water switch
|06DA2C| db $CA

; 0x1C - Flute kid
|06DA2D| db $AF

; 0x1D - Heart
|06DA2E| db $29, $39

; 0x1F - Rupees
|06DA30| db $0B

; 0x20 - Bombs
|06DA31| db $6E

; 0x21 - Small magic
|06DA32| db $60

; 0x22 - Full magic
|06DA33| db $62

; 0x23 - Arrows
|06DA34| db $63

; 0x24 - Mirror portal
|06DA35| db $4C

; 0x25 - Fairy
|06DA36| db $EA, $EC

; 0x27 - Bonk item
|06DA38| db $24

; 0x28 - Small key
|06DA39| db $6B

; 0x29 - Mushroom
|06DA3A| db $24

; 0x2A - Bari
|06DA3B| db $22, $24, $26, $20
|06DA3F| db $30, $21

; 0x30 - Cannonball
|06DA41| db $2A, $24

; 0x32 - Rat
|06DA43| db $86, $88, $8A, $8C
|06DA47| db $8E, $A2

; 0x38 - Rope
|06DA49| db $A4, $A6, $A8

; 0x3B - Mothula beam
|06DA4C| db $AA

; 0x3C - Keese
|06DA4D| db $84, $80, $82

; 0x3F - Bomb
|06DA50| db $6E

; 0x40 - Popo
|06DA51| db $40, $42

; 0x42 - Hoarder/Spike block
|06DA53| db $E6, $E8

; 0x44 - Cannonball
|06DA55| db $80, $82

; 0x46 - Walking Zora
|06DA57| db $C8

; 0x47 - Zora/fireball
|06DA58| db $8D

; 0x48 - Lost woods bird
|06DA59| db $E3, $E5

; 0x4A - Lost woods squirrel
|06DA5B| db $C5, $E1

; 0x4C - Archery game guy
|06DA5D| db $04, $24

; 0x4E - Wall cannon
|06DA5F| db $0E, $2E, $0C, $0A

; 0x52 - Big fairy
|06DA63| db $9C, $C7, $B6, $B7

; 0x56 - Mini helmasaur
|06DA67| db $60, $62, $64, $66
|06DA6B| db $68, $6A

; 0x5C - Bee
|06DA6D| db $E4, $F4

; 0x5E - Green stalfos
|06DA6F| db $02, $02, $00, $04

; 0x62 - Aga balls
|06DA73| db $C6, $CC, $CE

; 0x65 - Fire snake, sparks
|06DA76| db $28

; 0x66 - Hover
|06DA77| db $84, $82, $80

; 0x69 - Apple
|06DA7A| db $E5

; 0x6A - Big key / Catfish (quake)
|06DA7B| db $24

; 0x6B - Stalfos head
|06DA7C| db $00, $02, $04

; 0x6E - Kodongo
|06DA7F| db $A0, $AA, $A4, $A6
|06DA83| db $AC, $A2, $A8

; 0x75 - Arrghi/Wizzrobe
|06DA86| db $A6, $88, $86

; 0x78 - Terror pin
|06DA89| db $8E, $AE, $8A

; 0x7B - Blob
|06DA8C| db $42, $44, $42, $44
|06DA90| db $64, $66

; 0x81 - King Helmasaur fireball
|06DA92| db $CC, $CC, $CA

; 0x84 - Pirogusu
|06DA95| db $87, $97, $8E, $AE
|06DA99| db $AC, $8C, $8E, $AA
|06DA9D| db $AC

; 0x8D - Laser eye
|06DA9E| db $D2, $F3

; 0x8F - Master sword
|06DAA0| db $84, $A2, $84, $A4
|06DAA4| db $E7

; 0x94 - Kyameron
|06DAA5| db $8A, $A8, $8A, $A8
|06DAA9| db $88, $A0, $A4, $A2
|06DAAD| db $A6, $A6, $A6, $A6

; 0xA0 - Zoro
|06DAB1| db $7E, $7F

; 0xA2 - Haunted grove rabbit
|06DAB3| db $8A, $88, $8C, $A6

; 0xA6 - Haunted grove bird
|06DAB7| db $86, $8E, $AC, $86

; 0xAA - Hobo
|06DABB| db $BB, $AC, $A9, $B9
|06DABF| db $AA, $BA, $BC

; 0xB1 - Falling ice
|06DAC2| db $8A, $8E, $8A, $86

; 0xB5 - Zazak fire ball
|06DAC6| db $0A

; 0xB6 - Deadrock
|06DAC7| db $C2, $C4, $E2, $E4
|06DACB| db $C6

; 0xBB - Magic bat
|06DACC| db $EA, $EC

; 0xBD - Zirro bomb
|06DACE| db $FF

; 0xBE - Vitreous small eye
|06DACF| db $E6, $C6

; 0xC0 - Lightning
|06DAD1| db $CC, $EC, $CE, $EE
|06DAD5| db $4C, $6C, $4E, $6E

; 0xC8 - Raven
|06DAD9| db $C8, $C4, $C6

; 0xCB - Moldorm
|06DADC| db $88, $8C

; 0xCD - Heart container
|06DADE| db $24

; 0xCE - Heart piece
|06DADF| db $E0

; 0xCF - King Helmasaur
|06DAE0| db $AE, $C0, $C8, $C4
|06DAE4| db $C6, $E2, $E0

; 0xD6 - Purple chest
|06DAE7| db $EE

; 0xD7 - Gibo
|06DAE8| db $AE

; 0xD8 - Pokey
|06DAE9| db $A0, $80

; 0xDA - Whirlpool
|06DAEB| db $EE

; 0xDB - Bully/Victim
|06DAEC| db $C0, $C2, $BF

; 0xDE - Chain chomp
|06DAEF| db $8C, $AA, $86, $A8
|06DAF3| db $A6

; 0xE3 - Trinexx
|06DAF4| db $2C, $28, $06

; 0xE6 - Bomb shop guy
|06DAF7| db $DF, $CF, $A9

; 0xE9 - Shopkeeper
|06DAFA| db $46, $46

; 0xEB - Swamola
|06DAFC| db $EA, $C0, $C2, $E0
|06DB00| db $E8, $E2, $E6, $E4

; 0xF3 - Waterfall
|06DB04| db $0B

; 0xF4 - Ganon
|06DB05| db $8E, $A0

; 0xF6 - Stolen shield
|06DB07| db $EC, $EA

; 0xF8 - Talking tree
|06DB09| db $E9

; 0xF9 - Boulder
|06DB0A| db $48, $58

;===================================================================================================

SpriteDraw_ClassToChar:
|06DB0C| db $C8 ; RAVEN
|06DB0D| db $00 ; VULTURE
|06DB0E| db $6B ; STALFOS HEAD
|06DB0F| db $00 ; NULL
|06DB10| db $00 ; CORRECT PULL SWITCH
|06DB11| db $00 ; UNUSED CORRECT PULL SWITCH
|06DB12| db $00 ; WRONG PULL SWITCH
|06DB13| db $00 ; UNUSED WRONG PULL SWITCH
|06DB14| db $00 ; OCTOROK
|06DB15| db $CB ; MOLDORM
|06DB16| db $00 ; OCTOROK 4WAY
|06DB17| db $08 ; CUCCO
|06DB18| db $0A ; OCTOROK STONE
|06DB19| db $0B ; BUZZBLOB
|06DB1A| db $00 ; SNAPDRAGON
|06DB1B| db $00 ; OCTOBALLOON
|06DB1C| db $0D ; OCTOBALLOON BABY
|06DB1D| db $00 ; HINOX
|06DB1E| db $00 ; MOBLIN
|06DB1F| db $56 ; MINI HELMASAUR
|06DB20| db $00 ; THIEVES TOWN GRATE
|06DB21| db $00 ; ANTIFAIRY
|06DB22| db $0F ; SAHASRAHLA / AGINAH
|06DB23| db $11 ; HOARDER
|06DB24| db $00 ; MINI MOLDORM
|06DB25| db $13 ; POE
|06DB26| db $00 ; SMITHY
|06DB27| db $00 ; ARROW
|06DB28| db $00 ; STATUE
|06DB29| db $00 ; FLUTE QUEST
|06DB2A| db $14 ; CRYSTAL SWITCH
|06DB2B| db $00 ; SICK KID
|06DB2C| db $15 ; SLUGGULA
|06DB2D| db $1B ; WATER SWITCH
|06DB2E| db $00 ; ROPA
|06DB2F| db $2A ; RED BARI
|06DB30| db $2A ; BLUE BARI
|06DB31| db $F8 ; TALKING TREE
|06DB32| db $00 ; HARDHAT BEETLE
|06DB33| db $B6 ; DEADROCK
|06DB34| db $00 ; DARK WORLD HINT NPC
|06DB35| db $00 ; ADULT
|06DB36| db $00 ; SWEEPING LADY
|06DB37| db $AA ; HOBO
|06DB38| db $00 ; LUMBERJACKS
|06DB39| db $00 ; TELEPATHIC TILE
|06DB3A| db $1C ; FLUTE KID
|06DB3B| db $00 ; RACE GAME LADY
|06DB3C| db $00 ; RACE GAME GUY
|06DB3D| db $00 ; FORTUNE TELLER
|06DB3E| db $00 ; ARGUE BROS
|06DB3F| db $00 ; RUPEE PULL
|06DB40| db $00 ; YOUNG SNITCH
|06DB41| db $00 ; INNKEEPER
|06DB42| db $00 ; WITCH
|06DB43| db $F3 ; WATERFALL
|06DB44| db $F3 ; EYE STATUE
|06DB45| db $00 ; LOCKSMITH
|06DB46| db $BB ; MAGIC BAT
|06DB47| db $27 ; BONK ITEM
|06DB48| db $00 ; KID IN KAK
|06DB49| db $00 ; OLD SNITCH
|06DB4A| db $42 ; HOARDER
|06DB4B| db $00 ; TUTORIAL GUARD
|06DB4C| db $00 ; LIGHTNING GATE
|06DB4D| db $00 ; BLUE GUARD
|06DB4E| db $00 ; GREEN GUARD
|06DB4F| db $00 ; RED SPEAR GUARD
|06DB50| db $00 ; BLUESAIN BOLT
|06DB51| db $00 ; USAIN BOLT
|06DB52| db $00 ; BLUE ARCHER
|06DB53| db $00 ; GREEN BUSH GUARD
|06DB54| db $00 ; RED JAVELIN GUARD
|06DB55| db $0F ; RED BUSH GUARD
|06DB56| db $3F ; BOMB GUARD
|06DB57| db $00 ; GREEN KNIFE GUARD
|06DB58| db $00 ; GELDMAN
|06DB59| db $00 ; TOPPO
|06DB5A| db $40 ; POPO
|06DB5B| db $40 ; POPO
|06DB5C| db $44 ; CANNONBALL
|06DB5D| db $00 ; ARMOS STATUE
|06DB5E| db $00 ; KING ZORA
|06DB5F| db $00 ; ARMOS KNIGHT
|06DB60| db $00 ; LANMOLAS
|06DB61| db $47 ; ZORA / FIREBALL
|06DB62| db $46 ; WALKING ZORA
|06DB63| db $00 ; DESERT STATUE
|06DB64| db $00 ; CRAB
|06DB65| db $48 ; LOST WOODS BIRD
|06DB66| db $4A ; LOST WOODS SQUIRREL
|06DB67| db $65 ; SPARK
|06DB68| db $65 ; SPARK
|06DB69| db $00 ; ROLLER VERTICAL DOWN FIRST
|06DB6A| db $00 ; ROLLER VERTICAL UP FIRST
|06DB6B| db $00 ; ROLLER HORIZONTAL RIGHT FIRST
|06DB6C| db $00 ; ROLLER HORIZONTAL LEFT FIRST
|06DB6D| db $00 ; BEAMOS
|06DB6E| db $8F ; MASTERSWORD
|06DB6F| db $00 ; DEBIRANDO PIT
|06DB70| db $00 ; DEBIRANDO
|06DB71| db $4C ; ARCHERY GUY
|06DB72| db $4E ; WALL CANNON VERTICAL LEFT
|06DB73| db $4E ; WALL CANNON VERTICAL RIGHT
|06DB74| db $4E ; WALL CANNON HORIZONTAL TOP
|06DB75| db $4E ; WALL CANNON HORIZONTAL BOTTOM
|06DB76| db $00 ; BALL N CHAIN
|06DB77| db $30 ; CANNONBALL / CANNON TROOPER
|06DB78| db $24 ; MIRROR PORTAL
|06DB79| db $32 ; RAT / CRICKET
|06DB7A| db $38 ; SNAKE
|06DB7B| db $3C ; KEESE
|06DB7C| db $81 ; KING HELMASAUR FIREBALL
|06DB7D| db $00 ; LEEVER
|06DB7E| db $52 ; FAIRY POND TRIGGER
|06DB7F| db $00 ; UNCLE / PRIEST / MANTLE
|06DB80| db $00 ; RUNNING BOY
|06DB81| db $00 ; BOTTLE MERCHANT
|06DB82| db $00 ; ZELDA
|06DB83| db $00 ; ANTIFAIRY
|06DB84| db $00 ; SAHASRAHLAS WIFE
|06DB85| db $5C ; BEE
|06DB86| db $00 ; AGAHNIM
|06DB87| db $62 ; AGAHNIMS BALLS
|06DB88| db $5E ; GREEN STALFOS
|06DB89| db $00 ; BIG SPIKE
|06DB8A| db $00 ; FIREBAR CLOCKWISE
|06DB8B| db $00 ; FIREBAR COUNTERCLOCKWISE
|06DB8C| db $65 ; FIRESNAKE
|06DB8D| db $66 ; HOVER
|06DB8E| db $00 ; ANTIFAIRY CIRCLE
|06DB8F| db $00 ; GREEN EYEGORE / GREEN MIMIC
|06DB90| db $00 ; RED EYEGORE / RED MIMIC
|06DB91| db $00 ; YELLOW STALFOS
|06DB92| db $6E ; KODONGO
|06DB93| db $0E ; KODONGO FIRE
|06DB94| db $00 ; MOTHULA
|06DB95| db $3B ; MOTHULA BEAM
|06DB96| db $42 ; SPIKE BLOCK
|06DB97| db $00 ; GIBDO
|06DB98| db $00 ; ARRGHUS
|06DB99| db $75 ; ARRGHI
|06DB9A| db $78 ; TERRORPIN
|06DB9B| db $7B ; BLOB
|06DB9C| db $00 ; WALLMASTER
|06DB9D| db $00 ; STALFOS KNIGHT
|06DB9E| db $CF ; KING HELMASAUR
|06DB9F| db $00 ; BUMPER
|06DBA0| db $84 ; PIROGUSU
|06DBA1| db $8D ; LASER EYE LEFT
|06DBA2| db $8D ; LASER EYE RIGHT
|06DBA3| db $8D ; LASER EYE TOP
|06DBA4| db $8D ; LASER EYE BOTTOM
|06DBA5| db $00 ; PENGATOR
|06DBA6| db $94 ; KYAMERON
|06DBA7| db $75 ; WIZZROBE
|06DBA8| db $A0 ; ZORO
|06DBA9| db $00 ; BABASU
|06DBAA| db $00 ; HAUNTED GROVE OSTRICH
|06DBAB| db $A2 ; HAUNTED GROVE RABBIT
|06DBAC| db $A6 ; HAUNTED GROVE BIRD
|06DBAD| db $00 ; FREEZOR
|06DBAE| db $00 ; KHOLDSTARE
|06DBAF| db $00 ; KHOLDSTARE SHELL
|06DBB0| db $B1 ; FALLING ICE
|06DBB1| db $00 ; BLUE ZAZAK
|06DBB2| db $B5 ; RED ZAZAK
|06DBB3| db $00 ; STALFOS
|06DBB4| db $BD ; GREEN ZIRRO
|06DBB5| db $00 ; BLUE ZIRRO
|06DBB6| db $00 ; PIKIT
|06DBB7| db $00 ; CRYSTAL MAIDEN
|06DBB8| db $69 ; APPLE
|06DBB9| db $00 ; OLD MAN
|06DBBA| db $00 ; PIPE DOWN
|06DBBB| db $00 ; PIPE UP
|06DBBC| db $00 ; PIPE RIGHT
|06DBBD| db $00 ; PIPE LEFT
|06DBBE| db $5C ; GOOD BEE
|06DBBF| db $00 ; PEDESTAL PLAQUE
|06DBC0| db $D6 ; PURPLE CHEST
|06DBC1| db $E6 ; BOMB SHOP GUY
|06DBC2| db $00 ; KIKI
|06DBC3| db $00 ; BLIND MAIDEN
|06DBC4| db $00 ; DIALOGUE TESTER
|06DBC5| db $DB ; BULLY / PINK BALL
|06DBC6| db $DA ; WHIRLPOOL
|06DBC7| db $E9 ; SHOPKEEPER / CHEST GAME GUY
|06DBC8| db $00 ; DRUNKARD
|06DBC9| db $00 ; VITREOUS
|06DBCA| db $BE ; VITREOUS SMALL EYE
|06DBCB| db $C0 ; LIGHTNING
|06DBCC| db $6A ; CATFISH
|06DBCD| db $00 ; CUTSCENE AGAHNIM
|06DBCE| db $F9 ; BOULDER
|06DBCF| db $D7 ; GIBO
|06DBD0| db $00 ; THIEF
|06DBD1| db $00 ; MEDUSA
|06DBD2| db $00 ; YOMO MEDUSA
|06DBD3| db $D8 ; POKEY
|06DBD4| db $00 ; BIG FAIRY
|06DBD5| db $00 ; TEKTITE / FIREBAT
|06DBD6| db $DE ; CHAIN CHOMP
|06DBD7| db $E3 ; TRINEXX ROCK HEAD
|06DBD8| db $00 ; TRINEXX FIRE HEAD
|06DBD9| db $00 ; TRINEXX ICE HEAD
|06DBDA| db $00 ; BLIND
|06DBDB| db $EB ; SWAMOLA
|06DBDC| db $00 ; LYNEL
|06DBDD| db $00 ; BUNNYBEAM / SMOKE
|06DBDE| db $00 ; FLOPPING FISH
|06DBDF| db $00 ; STAL
|06DBE0| db $00 ; LANDMINE
|06DBE1| db $00 ; DIGGING GAME GUY
|06DBE2| db $F4 ; GANON
|06DBE3| db $F4 ; GANON
|06DBE4| db $1D ; HEART
|06DBE5| db $1F ; GREEN RUPEE
|06DBE6| db $1F ; BLUE RUPEE
|06DBE7| db $1F ; RED RUPEE
|06DBE8| db $20 ; BOMB REFILL 1
|06DBE9| db $20 ; BOMB REFILL 4
|06DBEA| db $20 ; BOMB REFILL 8
|06DBEB| db $21 ; SMALL MAGIC DECANTER
|06DBEC| db $22 ; LARGE MAGIC DECANTER
|06DBED| db $23 ; ARROW REFILL 5
|06DBEE| db $23 ; ARROW REFILL 10
|06DBEF| db $25 ; FAIRY
|06DBF0| db $28 ; SMALL KEY
|06DBF1| db $6A ; BIG KEY
|06DBF2| db $F6 ; STOLEN SHIELD
|06DBF3| db $29 ; MUSHROOM
|06DBF4| db $00 ; FAKE MASTER SWORD
|06DBF5| db $00 ; MAGIC SHOP ASSISTANT
|06DBF6| db $CD ; HEART CONTAINER
|06DBF7| db $CE ; HEART PIECE

; Thrown items (SPRITE EC) bleed into this PHB and read that
; But they end up overriding the character anyways, so it doesn't matter

;===================================================================================================
; These routines draw sprites generically using two separate tables:
; SpriteDraw_IDtoClass   ($06:DA11)
; SpriteDraw_ClassToChar ($06:DB0C)
;===================================================================================================
SpriteDraw_SingleLarge_long:
|06DBF8| PHB
|06DBF9| PHK
|06DBFA| PLB

|06DBFB| JSR SpriteDraw_SingleLarge

|06DBFE| PLB

|06DBFF| RTL

;---------------------------------------------------------------------------------------------------

SpriteDraw_SingleSmall_long:
|06DC00| PHB
|06DC01| PHK
|06DC02| PLB

|06DC03| JSR SpriteDraw_SingleSmall

|06DC06| PLB

|06DC07| RTL

;===================================================================================================

UNREACHABLE_06DC08:
|06DC08| db $00, $00, $01, $01, $01, $02, $02, $02
|06DC10| db $02, $03, $03, $03, $03, $03, $03, $03

;===================================================================================================
; Draws a 16x16 sprite
;===================================================================================================
SpriteDraw_SingleLarge:
|06DC18| JSR GetScreenCoordinates

;===================================================================================================

SpriteDraw_SingleLarge_skipcoords:
|06DC1B| LDA.b $00 ; save X coordinate
|06DC1D| STA.b ($90),Y

|06DC1F| LDA.b $01 ; get bit 8 of X for the other table
|06DC21| CMP.b #$01

|06DC23| LDA.b #$01
|06DC25| ROL A
|06DC26| STA.b ($92)

|06DC28| REP #$20

|06DC2A| LDA.b $02 ; get Y coordinate
|06DC2C| INY
|06DC2D| CLC
|06DC2E| ADC.w #$0010 ; adjust it to see where it will end up
|06DC31| CMP.w #$0100

|06DC34| SEP #$20
|06DC36| BCS DrawSpriteShadow_Conditional

; holy cow, the devs did something clever for once!
; since the carry is guaranteed to be cleared here
; this subtracts 16, rather than 15
; too bad they failed to do a REP #$21 just 8 instructions earlier
|06DC38| SBC.b #$0F
|06DC3A| STA.b ($90),Y

|06DC3C| PHY

|06DC3D| LDY.w $0E20,X

|06DC40| LDA.w SpriteDraw_ClassToChar,Y
|06DC43| CLC
|06DC44| ADC.w $0DC0,X
|06DC47| TAY

|06DC48| LDA.w SpriteDraw_IDtoClass,Y

|06DC4B| PLY
|06DC4C| INY
|06DC4D| STA.b ($90),Y

|06DC4F| LDA.b $05
|06DC51| INY
|06DC52| STA.b ($90),Y

;===================================================================================================

DrawSpriteShadow_Conditional:
|06DC54| LDA.w $0E60,X
|06DC57| AND.b #$10
|06DC59| BNE DrawSpriteShadow

|06DC5B| RTS

;===================================================================================================

DrawSpriteShadow_long:
|06DC5C| PHB
|06DC5D| PHK
|06DC5E| PLB

|06DC5F| JSR DrawSpriteShadow

|06DC62| PLB

|06DC63| RTL

;===================================================================================================

DrawSpriteShadow_custom_long:
|06DC64| PHB
|06DC65| PHK
|06DC66| PLB

|06DC67| JSR DrawSpriteShadow_custom

|06DC6A| PLB

|06DC6B| RTL

;===================================================================================================

DrawSpriteShadow:
|06DC6C| LDA.b #$0A

;===================================================================================================

DrawSpriteShadow_custom:
|06DC6E| CLC
|06DC6F| ADC.w $0D00,X
|06DC72| STA.b $02

|06DC74| LDA.w $0D20,X
|06DC77| ADC.b #$00
|06DC79| STA.b $03

|06DC7B| LDA.w $0F00,X
|06DC7E| BNE .no_shadow

|06DC80| LDA.w $0DD0,X
|06DC83| CMP.b #$0A
|06DC85| BNE .not_being_carried

|06DC87| LDA.l $7FFA1C,X
|06DC8B| CMP.b #$03
|06DC8D| BEQ .no_shadow

.not_being_carried
|06DC8F| REP #$20

|06DC91| LDA.b $02
|06DC93| SEC
|06DC94| SBC.b $E8
|06DC96| STA.b $02

|06DC98| CLC
|06DC99| ADC.w #$0010
|06DC9C| CMP.w #$0100

|06DC9F| SEP #$20
|06DCA1| BCS .offscreen

|06DCA3| LDA.w $0E40,X
|06DCA6| AND.b #$1F
|06DCA8| ASL A
|06DCA9| ASL A
|06DCAA| TAY

|06DCAB| LDA.b $00
|06DCAD| STA.b ($90),Y

|06DCAF| LDA.w $0E60,X
|06DCB2| AND.b #$20
|06DCB4| BEQ .not_small

|06DCB6| INY

|06DCB7| LDA.b ($90),Y ; useless

|06DCB9| LDA.b $02
|06DCBB| INC A
|06DCBC| STA.b ($90),Y

|06DCBE| INY

|06DCBF| LDA.b #$38
|06DCC1| STA.b ($90),Y

|06DCC3| LDA.b $05
|06DCC5| AND.b #$30
|06DCC7| ORA.b #$08

|06DCC9| INY
|06DCCA| STA.b ($90),Y

|06DCCC| TYA
|06DCCD| LSR A
|06DCCE| LSR A
|06DCCF| TAY

|06DCD0| LDA.b $01
|06DCD2| AND.b #$01
|06DCD4| STA.b ($92),Y

.no_shadow
|06DCD6| RTS

;---------------------------------------------------------------------------------------------------

.not_small
|06DCD7| LDA.b $02
|06DCD9| INY
|06DCDA| STA.b ($90),Y

|06DCDC| LDA.b #$6C
|06DCDE| INY
|06DCDF| STA.b ($90),Y

|06DCE1| LDA.b $05
|06DCE3| AND.b #$30
|06DCE5| ORA.b #$08

|06DCE7| INY
|06DCE8| STA.b ($90),Y

|06DCEA| TYA
|06DCEB| LSR A
|06DCEC| LSR A
|06DCED| TAY

|06DCEE| LDA.b $01
|06DCF0| AND.b #$01
|06DCF2| ORA.b #$02
|06DCF4| STA.b ($92),Y

.offscreen
|06DCF6| RTS

;===================================================================================================

SpriteDraw_SingleSmall:
|06DCF7| JSR GetScreenCoordinates

|06DCFA| LDA.b $00
|06DCFC| STA.b ($90),Y

|06DCFE| LDA.b $01
|06DD00| CMP.b #$01

|06DD02| LDA.b #$00
|06DD04| ROL A
|06DD05| STA.b ($92)

|06DD07| REP #$20

|06DD09| LDA.b $02
|06DD0B| INY
|06DD0C| CLC
|06DD0D| ADC.w #$0010
|06DD10| CMP.w #$0100

|06DD13| SEP #$20
|06DD15| BCS SpriteDraw_SingleSmall_DoShadow

|06DD17| SBC.b #$0F
|06DD19| STA.b ($90),Y

|06DD1B| PHY

|06DD1C| LDY.w $0E20,X

|06DD1F| LDA.w SpriteDraw_ClassToChar,Y
|06DD22| CLC
|06DD23| ADC.w $0DC0,X
|06DD26| TAY

|06DD27| LDA.w SpriteDraw_IDtoClass,Y

|06DD2A| PLY
|06DD2B| INY

|06DD2C| STA.b ($90),Y

|06DD2E| LDA.b $05
|06DD30| INY
|06DD31| STA.b ($90),Y

;===================================================================================================

SpriteDraw_SingleSmall_DoShadow:
|06DD33| LDA.w $0E60,X
|06DD36| AND.b #$10
|06DD38| BEQ .no_shadow

|06DD3A| LDA.b #$02
|06DD3C| JMP.w DrawSpriteShadow_custom

.no_shadow
|06DD3F| RTS

;===================================================================================================

SpriteDraw_ThinAndTall_long:
|06DD40| PHB
|06DD41| PHK
|06DD42| PLB

|06DD43| JSR SpriteDraw_ThinAndTall

|06DD46| PLB

|06DD47| RTL

;---------------------------------------------------------------------------------------------------

SpriteDraw_ThinAndTall:
|06DD48| JSR GetScreenCoordinates

|06DD4B| LDA.b $00
|06DD4D| STA.b ($90),Y

|06DD4F| LDY.b #$04
|06DD51| STA.b ($90),Y

|06DD53| LDA.b $01
|06DD55| CMP.b #$01

|06DD57| LDA.b #$00
|06DD59| ROL A

|06DD5A| LDY.b #$00
|06DD5C| STA.b ($92),Y

|06DD5E| INY
|06DD5F| STA.b ($92),Y

|06DD61| REP #$20

|06DD63| LDA.b $02
|06DD65| LDY.b #$01
|06DD67| STA.b ($90),Y

|06DD69| CLC
|06DD6A| ADC.w #$0010
|06DD6D| CMP.w #$0100
|06DD70| BCC .on_screen

|06DD72| LDA.w #$00F0
|06DD75| STA.b ($90),Y

.on_screen
|06DD77| LDA.b $02
|06DD79| CLC
|06DD7A| ADC.w #$0008

|06DD7D| LDY.b #$05
|06DD7F| STA.b ($90),Y

|06DD81| CLC
|06DD82| ADC.w #$0010
|06DD85| CMP.w #$0100
|06DD88| BCC .not_off_screen

|06DD8A| LDA.w #$00F0
|06DD8D| STA.b ($90),Y

.not_off_screen
|06DD8F| SEP #$20

|06DD91| LDY.w $0E20,X

|06DD94| LDA.w SpriteDraw_ClassToChar,Y
|06DD97| CLC
|06DD98| ADC.w $0DC0,X
|06DD9B| TAY

|06DD9C| LDA.w SpriteDraw_IDtoClass,Y
|06DD9F| LDY.b #$02
|06DDA1| STA.b ($90),Y

|06DDA3| CLC
|06DDA4| ADC.b #$10
|06DDA6| LDY.b #$06
|06DDA8| STA.b ($90),Y

|06DDAA| LDA.b $05
|06DDAC| LDY.b #$03
|06DDAE| STA.b ($90),Y

|06DDB0| LDY.b #$07
|06DDB2| STA.b ($90),Y

|06DDB4| JMP.w DrawSpriteShadow_Conditional

;===================================================================================================

pool Sprite_02_StalfosHead

.flip
|06DDB7| db $00, $00, $00, $40

.anim_step
|06DDBB| db $00, $01, $02, $01

endpool

;---------------------------------------------------------------------------------------------------

Sprite_02_StalfosHead:
; interesting syncing of layers
|06DDBF| LDA.b $EE
|06DDC1| STA.w $0F20,X

|06DDC4| LDA.w $0E00,X
|06DDC7| BEQ .keep_region

|06DDC9| LDA.b #$08
|06DDCB| JSL AllocateOAMInRegionC

.keep_region
|06DDCF| LDA.w $0E80,X
|06DDD2| LSR A
|06DDD3| LSR A
|06DDD4| LSR A
|06DDD5| AND.b #$03
|06DDD7| TAY

|06DDD8| LDA.w $0F50,X
|06DDDB| AND.b #$BF
|06DDDD| ORA.w .flip,Y
|06DDE0| STA.w $0F50,X

|06DDE3| LDA.w .anim_step,Y
|06DDE6| STA.w $0DC0,X

|06DDE9| LDA.b #$30
|06DDEB| STA.w $0B89,X

|06DDEE| JSR SpriteDraw_SingleLarge
|06DDF1| JSR CheckIfActive_bank06
|06DDF4| JSR HandleSpriteRecoil_bank06
|06DDF7| JSR CheckDamageToAndFromLink_bank06

|06DDFA| LDA.w $0EA0,X
|06DDFD| BEQ .not_recoiling

|06DDFF| JSR ZeroVelocityXY_bank06

.not_recoiling
|06DE02| JSR MoveSpriteXY_bank06

|06DE05| INC.w $0E80,X

|06DE08| LDA.w $0DF0,X
|06DE0B| BEQ .delay_turn

|06DE0D| AND.b #$01
|06DE0F| BNE .exit

|06DE11| LDA.b #$10
|06DE13| JSR ProjectSpriteSpeedTowardsLink

;---------------------------------------------------------------------------------------------------

.handle_movement
|06DE16| LDA.w $0D40,X
|06DE19| CMP.b $00
|06DE1B| BEQ .check_x
|06DE1D| BPL .too_far_down

.too_far_up
|06DE1F| INC.w $0D40,X
|06DE22| BRA .check_x

.too_far_down
|06DE24| DEC.w $0D40,X

.check_x
|06DE27| LDA.w $0D50,X
|06DE2A| CMP.b $01
|06DE2C| BEQ .exit
|06DE2E| BPL .too_far_right

.too_far_left
|06DE30| INC.w $0D50,X
|06DE33| BRA .exit

.too_far_right
|06DE35| DEC.w $0D50,X

.exit
|06DE38| RTS

;---------------------------------------------------------------------------------------------------

.delay_turn
|06DE39| TXA
|06DE3A| EOR.b $1A
|06DE3C| AND.b #$03
|06DE3E| BNE .exit

|06DE40| LDA.b #$10
|06DE42| JSR ProjectSpriteSpeedTowardsLink

|06DE45| LDA.b $00
|06DE47| EOR.b #$FF
|06DE49| INC A
|06DE4A| STA.b $00

|06DE4C| LDA.b $01
|06DE4E| EOR.b #$FF
|06DE50| INC A
|06DE51| STA.b $01

|06DE53| BRA .handle_movement

;===================================================================================================

pool SpriteModule_Carried

.offset_x_low
|06DE55| db   0,   0,   0,   0 ; up
|06DE59| db   0,   0,   0,   0 ; down
|06DE5D| db -13, -10,  -5,   0 ; left
|06DE61| db  13,  10,   5,   0 ; right

.offset_x_high
|06DE65| db   0,   0,   0,   0 ; up
|06DE69| db   0,   0,   0,   0 ; down
|06DE6D| db  -1,  -1,  -1,   0 ; left
|06DE71| db   0,   0,   0,   0 ; right

.offset_z
|06DE75| db  13,  14,  15,  16 ; up
|06DE79| db   0,  10,  22,  16 ; down
|06DE7D| db   8,  11,  14,  16 ; left
|06DE81| db   8,  11,  14,  16 ; right

.offset_y_low
|06DE85| db   3,   2,   1,   3,   2,   1

endpool

;---------------------------------------------------------------------------------------------------

SpriteModule_Carried:
|06DE8B| LDA.w $040A
|06DE8E| STA.w $0C9A,X

|06DE91| LDA.l $7FFA1C,X
|06DE95| CMP.b #$03
|06DE97| BEQ .lifted

|06DE99| LDA.w $0DF0,X
|06DE9C| BNE .wait_for_timer

|06DE9E| LDA.b #$04

|06DEA0| LDY.w $0DB0,X
|06DEA3| CPY.b #$06
|06DEA5| BNE .not_large

|06DEA7| LDA.b #$08

.not_large
|06DEA9| STA.w $0DF0,X

|06DEAC| LDA.l $7FFA1C,X
|06DEB0| INC A
|06DEB1| STA.l $7FFA1C,X

.wait_for_timer
|06DEB5| BRA .continue

.lifted
|06DEB7| LDA.w $0E60,X
|06DEBA| AND.b #$EF
|06DEBC| STA.w $0E60,X

;---------------------------------------------------------------------------------------------------

.continue
|06DEBF| STZ.b $00

|06DEC1| LDA.w $0F10,X
|06DEC4| DEC A

|06DEC5| CMP.b #$3F
|06DEC7| BCS .no_x_shake

|06DEC9| AND.b #$02
|06DECB| BEQ .no_x_shake

|06DECD| INC.b $00

;---------------------------------------------------------------------------------------------------

.no_x_shake
|06DECF| LDA.b $2F
|06DED1| ASL A
|06DED2| CLC
|06DED3| ADC.l $7FFA1C,X
|06DED7| TAY

|06DED8| LDA.b $22
|06DEDA| CLC
|06DEDB| ADC.w .offset_x_low,Y
|06DEDE| PHP

|06DEDF| ADC.b $00
|06DEE1| STA.w $0D10,X

|06DEE4| LDA.b $23
|06DEE6| ADC.b #$00

|06DEE8| PLP
|06DEE9| ADC.w .offset_x_high,Y
|06DEEC| STA.w $0D30,X

|06DEEF| LDA.w .offset_z,Y
|06DEF2| STA.w $0F70,X

;---------------------------------------------------------------------------------------------------

|06DEF5| LDY.b $2E
|06DEF7| CPY.b #$06
|06DEF9| BCC .valid_animation_step

|06DEFB| LDY.b #$00

.valid_animation_step
|06DEFD| LDA.b $24
|06DEFF| CLC
|06DF00| ADC.b #$01
|06DF02| PHP

|06DF03| CLC
|06DF04| ADC.w .offset_y_low,Y
|06DF07| STA.b $00

|06DF09| LDA.b $25
|06DF0B| ADC.b #$00

|06DF0D| PLP
|06DF0E| ADC.b #$00
|06DF10| STA.b $0E

|06DF12| LDA.b $20
|06DF14| SEC
|06DF15| SBC.b $00
|06DF17| PHP

|06DF18| CLC
|06DF19| ADC.b #$08
|06DF1B| STA.w $0D00,X

|06DF1E| LDA.b $21
|06DF20| ADC.b #$00

|06DF22| PLP
|06DF23| SBC.b $0E
|06DF25| STA.w $0D20,X

|06DF28| LDA.b $EE
|06DF2A| STA.w $0F20,X

|06DF2D| JSR CarriedSprite_CheckForThrow
|06DF30| JSR Get16BitSpriteCoords

|06DF33| LDA.l $7FFA2C,X
|06DF37| CMP.b #$0B
|06DF39| BEQ .am_freezed

;---------------------------------------------------------------------------------------------------

|06DF3B| JSR SpriteModule_Active

|06DF3E| LDA.w $0F10,X
|06DF41| DEC A
|06DF42| BNE EXIT_06DF63

|06DF44| LDA.b #$09
|06DF46| STA.w $0DD0,X

|06DF49| STZ.w $0DA0,X

|06DF4C| LDA.b #$60
|06DF4E| STA.w $0F10,X

|06DF51| LDA.b #$20
|06DF53| STA.w $0F80,X

|06DF56| LDA.w $0E60,X
|06DF59| ORA.b #$10
|06DF5B| STA.w $0E60,X

|06DF5E| LDA.b #$02
|06DF60| STA.w $0309

;---------------------------------------------------------------------------------------------------

#EXIT_06DF63:
|06DF63| RTS

;---------------------------------------------------------------------------------------------------

.am_freezed
|06DF64| JMP.w SpriteModule_Frozen

;===================================================================================================

pool CarriedSprite_CheckForThrow

.throw_speed_x
|06DF67| db   0,   0, -62,  63

.throw_speed_y
|06DF6B| db -62,  63,   0,   0

.throw_speed_z
|06DF6F| db   4,   4,   4,   4

endpool

;---------------------------------------------------------------------------------------------------

CarriedSprite_CheckForThrow:
|06DF73| LDA.w $0010
|06DF76| CMP.b #$0E
|06DF78| BEQ EXIT_06DF63

|06DF7A| LDA.b $5B
|06DF7C| CMP.b #$02
|06DF7E| BEQ .forced_throw

|06DF80| LDA.b $4D
|06DF82| AND.b #$01

|06DF84| LDY.w $037B
|06DF87| BNE .link_not_hittable

|06DF89| ORA.w $0046

.link_not_hittable
|06DF8C| ORA.w $0345
|06DF8F| ORA.w $02E0
|06DF92| ORA.w $02DA
|06DF95| BNE .forced_throw

|06DF97| LDA.l $7FFA1C,X
|06DF9B| CMP.b #$03
|06DF9D| BNE .no_throw

|06DF9F| LDA.b $F4
|06DFA1| ORA.b $F6
|06DFA3| BPL .no_throw

|06DFA5| ASL.b $F6
|06DFA7| LSR.b $F6

;---------------------------------------------------------------------------------------------------

.forced_throw
|06DFA9| LDA.b #$13 ; SFX3.13
|06DFAB| JSL QueueSpriteSFX3WithPan

|06DFAF| LDA.b #$02
|06DFB1| STA.w $0309

|06DFB4| LDA.l $7FFA2C,X
|06DFB8| STA.w $0DD0,X

|06DFBB| STZ.w $0F80,X

|06DFBE| LDA.b #$00
|06DFC0| STA.l $7FFA1C,X

;---------------------------------------------------------------------------------------------------

|06DFC4| PHX

|06DFC5| LDA.w $0E20,X
|06DFC8| TAX

; check for shadow
|06DFC9| LDA.l SpriteData_OAMProp,X

|06DFCD| PLX

|06DFCE| AND.b #$10
|06DFD0| STA.b $00

|06DFD2| LDA.w $0E60,X
|06DFD5| AND.b #$EF
|06DFD7| ORA.b $00
|06DFD9| STA.w $0E60,X

|06DFDC| LDA.b $2F
|06DFDE| LSR A
|06DFDF| TAY

|06DFE0| LDA.w .throw_speed_x,Y
|06DFE3| STA.w $0D50,X

|06DFE6| LDA.w .throw_speed_y,Y
|06DFE9| STA.w $0D40,X

|06DFEC| LDA.w .throw_speed_z,Y
|06DFEF| STA.w $0F80,X

|06DFF2| LDA.b #$00
|06DFF4| STA.w $0F10,X

.no_throw
|06DFF7| RTS

;===================================================================================================

ThrownSprite_TileAndSpriteInteraction_long:
|06DFF8| PHB
|06DFF9| PHK
|06DFFA| PLB

|06DFFB| JSR ThrownSprite_TileAndSpriteInteraction

|06DFFE| PLB

|06DFFF| RTL

;===================================================================================================

SpriteModule_Stunned:
|06E000| JSR HandleFreezeAndStunTimer
|06E003| JSR CheckIfActivePermissive_bank06

|06E006| LDA.w $0EA0,X
|06E009| BEQ .not_recoiling
|06E00B| BPL .recoil_timer_ticking

|06E00D| STZ.w $0EA0,X

.recoil_timer_ticking
|06E010| JSR ZeroVelocityXY_bank06

.not_recoiling
|06E013| LDA.w $0DF0,X
|06E016| CMP.b #$20
|06E018| BCS .delay_damage

|06E01A| JSR CheckDamageFromLink

.delay_damage
|06E01D| JSR HandleSpriteRecoil_bank06
|06E020| JSR MoveSpriteXY_bank06

|06E023| LDA.w $0E90,X
|06E026| BNE .skip_tile_collision

|06E028| JSR CheckSpriteTileCollision

|06E02B| LDA.w $0DD0,X ; Can this even succeed?
|06E02E| BEQ .not_even_here_exit

;===================================================================================================

#ThrownSprite_TileAndSpriteInteraction:
|06E030| LDA.w $0E70,X
|06E033| AND.b #$0F
|06E035| BEQ .skip_tile_collision

|06E037| JSR ApplyRicochet

|06E03A| LDA.w $0DD0,X ; check if frozen
|06E03D| CMP.b #$0B
|06E03F| BNE .skip_tile_collision

|06E041| LDA.b #$05 ; SFX2.05
|06E043| JSL QueueSpriteSFX2WithPan

.skip_tile_collision
|06E047| LDY.b #$68 ; more collision checks
|06E049| JSR CheckSpriteTileProperty

|06E04C| PHX ; check if the sprite should have a shadow by default

|06E04D| LDA.w $0E20,X
|06E050| TAX

|06E051| LDA.l SpriteData_OAMProp,X

|06E055| PLX

|06E056| AND.b #$10 ; check bit 4 for shadow flag
|06E058| BEQ .not_over_pit

|06E05A| LDA.w $0E60,X ; add in shadow
|06E05D| ORA.b #$10
|06E05F| STA.w $0E60,X

|06E062| LDA.w $0FA5 ; why is it even done this way?
|06E065| CMP.b #$20 ; TILETYPE 20 - check for pit tiles
|06E067| BNE .not_over_pit

|06E069| JSR DisableShadowFlag ; PHP instead of this next time

.not_over_pit
|06E06C| JSR MoveSpriteZ_bank06

|06E06F| DEC.w $0F80,X
|06E072| DEC.w $0F80,X

|06E075| LDA.w $0F70,X
|06E078| DEC A
|06E079| CMP.b #$F0
|06E07B| BCS .not_too_high

|06E07D| JMP.w .check_for_freeze

.not_too_high
|06E080| STZ.w $0F70,X

|06E083| LDA.w $0E20,X
|06E086| CMP.b #$E8 ; SPRITE E8
|06E088| BNE .dont_set_death_state

|06E08A| LDA.w $0F80,X
|06E08D| CMP.b #$E8
|06E08F| BPL .dont_set_death_state

|06E091| LDA.b #$06
|06E093| STA.w $0DD0,X

|06E096| LDA.b #$08
|06E098| STA.w $0DF0,X

;===================================================================================================

#SetOAMAllotmentTo4:
|06E09B| LDA.b #$03
|06E09D| STA.w $0E40,X

.not_even_here_exit
|06E0A0| RTS

;---------------------------------------------------------------------------------------------------

.dont_set_death_state
|06E0A1| JSR ThrowableScenery_TransmuteIfValid

|06E0A4| LDA.w $0FA5
|06E0A7| CMP.b #$20 ; TILETYPE 20
|06E0A9| BNE .not_pit_or_too_high

|06E0AB| LDA.w $0B6B,X
|06E0AE| LSR A
|06E0AF| BCS .not_pit_or_too_high

;===================================================================================================

#Sprite_SetToFalling:
|06E0B1| LDA.b #$01
|06E0B3| STA.w $0DD0,X

|06E0B6| LDA.b #$1F
|06E0B8| STA.w $0DF0,X

|06E0BB| STZ.w $012E

|06E0BE| LDA.b #$20 ; SFX2.20
|06E0C0| JSL QueueSpriteSFX2WithPan

|06E0C4| RTS

;---------------------------------------------------------------------------------------------------

.not_pit_or_too_high
|06E0C5| CMP.b #$09
|06E0C7| BNE .not_shallow_water

|06E0C9| LDA.w $0F80,X

|06E0CC| STZ.w $0F80,X

|06E0CF| CMP.b #$F0
|06E0D1| BPL .continue

|06E0D3| LDA.b #$EC ; SPRITE EC
|06E0D5| JSL SpawnSpriteDynamically
|06E0D9| BMI .continue

;---------------------------------------------------------------------------------------------------

|06E0DB| JSL SetSpawnedSpriteCoordinates

|06E0DF| PHX

|06E0E0| TYX
|06E0E1| JSR .plop_in_water

|06E0E4| PLX

|06E0E5| BRA .continue

;---------------------------------------------------------------------------------------------------

.not_shallow_water
|06E0E7| CMP.b #$08
|06E0E9| BNE .continue

|06E0EB| LDA.w $0E20,X
|06E0EE| CMP.b #$D2 ; SPRITE D2
|06E0F0| BEQ .spawn_a_fish

|06E0F2| JSL GetRandomNumber
|06E0F6| LSR A
|06E0F7| BCC .plop_in_water

.spawn_a_fish
|06E0F9| JSR SpawnLeapingFish

;---------------------------------------------------------------------------------------------------

.plop_in_water
|06E0FC| JSL CalculateSpriteSFXPan
|06E100| ORA.b #$28 ; SFX2.28
|06E102| STA.w $012E

|06E105| LDA.b #$03
|06E107| STA.w $0DD0,X

|06E10A| LDA.b #$0F
|06E10C| STA.w $0DF0,X

|06E10F| STZ.w $0D80,X

|06E112| JSL GetRandomNumber
|06E116| AND.b #$01

|06E118| JMP.w SetOAMAllotmentTo4

;---------------------------------------------------------------------------------------------------

.continue
|06E11B| LDA.w $0F80,X
|06E11E| BPL .positive_z_speed

|06E120| EOR.b #$FF
|06E122| INC A
|06E123| LSR A
|06E124| CMP.b #$09
|06E126| BCS .not_too_slow

|06E128| LDA.b #$00

.not_too_slow
|06E12A| STA.w $0F80,X

.positive_z_speed
|06E12D| LDA.w $0D50,X
|06E130| ASL A
|06E131| ROR.w $0D50,X

|06E134| LDA.w $0D50,X
|06E137| CMP.b #$FF
|06E139| BNE .dont_reset_x_speed

|06E13B| STZ.w $0D50,X

.dont_reset_x_speed
|06E13E| LDA.w $0D40,X
|06E141| ASL A
|06E142| ROR.w $0D40,X

|06E145| LDA.w $0D40,X
|06E148| CMP.b #$FF
|06E14A| BNE .check_for_freeze

|06E14C| STZ.w $0D40,X

;---------------------------------------------------------------------------------------------------

.check_for_freeze
|06E14F| LDA.w $0DD0,X
|06E152| CMP.b #$0B
|06E154| BNE .not_even_stunned

|06E156| LDA.l $7FFA3C,X
|06E15A| BEQ .exit

.not_even_stunned
|06E15C| JSR Sprite_CheckIfLifted

|06E15F| LDA.w $0E20,X
|06E162| CMP.b #$4A ; SPRITE 4A
|06E164| BEQ .exit

|06E166| JSR ThrownSprite_CheckDamageToSprites

.exit
|06E169| RTS

;===================================================================================================

ThrowableScenery_InteractWithSpritesAndTiles:
|06E16A| JSR MoveSpriteXY_bank06
|06E16D| LDA.w $0E90,X
|06E170| BNE .skip_tile_collision

|06E172| JSR CheckSpriteTileCollision

.skip_tile_collision
|06E175| JMP.w ThrownSprite_TileAndSpriteInteraction

;===================================================================================================

ThrownSprite_CheckDamageToSprites:
|06E178| LDA.w $0F10,X
|06E17B| BNE EXIT_06E1B7

|06E17D| LDA.w $0D50,X
|06E180| ORA.w $0D40,X
|06E183| BEQ EXIT_06E1B7

|06E185| LDY.b #$0F

.next
|06E187| PHY
|06E188| CPY.w $0FA0
|06E18B| BEQ .skip

|06E18D| LDA.w $0E20,X ; Why is this checked every iteration!?
|06E190| CMP.b #$D2 ; SPRITE D2
|06E192| BEQ .skip

|06E194| LDA.w $0DD0,Y
|06E197| CMP.b #$09
|06E199| BCC .skip

|06E19B| TYA
|06E19C| EOR.b $1A
|06E19E| AND.b #$03
|06E1A0| ORA.w $0BA0,Y
|06E1A3| ORA.w $0EF0,Y
|06E1A6| BNE .skip

|06E1A8| LDA.w $0F20,X
|06E1AB| CMP.w $0F20,Y
|06E1AE| BNE .skip

|06E1B0| JSR ThrownSprite_CheckDamageToSingleSprite

.skip
|06E1B3| PLY
|06E1B4| DEY
|06E1B5| BPL .next

;---------------------------------------------------------------------------------------------------

#EXIT_06E1B7:
|06E1B7| RTS

;===================================================================================================

ThrownSprite_CheckDamageToSingleSprite:
|06E1B8| LDA.w $0D10,X
|06E1BB| STA.b $00

|06E1BD| LDA.w $0D30,X
|06E1C0| STA.b $08

|06E1C2| LDA.b #$0F
|06E1C4| STA.b $02

|06E1C6| LDA.w $0D00,X
|06E1C9| SEC
|06E1CA| SBC.w $0F70,X

|06E1CD| PHP

|06E1CE| CLC
|06E1CF| ADC.b #$08
|06E1D1| STA.b $01

|06E1D3| LDA.w $0D20,X
|06E1D6| ADC.b #$00

|06E1D8| PLP
|06E1D9| SBC.b #$00
|06E1DB| STA.b $09

|06E1DD| LDA.b #$08
|06E1DF| STA.b $03

;---------------------------------------------------------------------------------------------------

|06E1E1| PHX

|06E1E2| TYX

|06E1E3| JSR SetupSpriteHitbox

|06E1E6| PLX

|06E1E7| JSR CheckIfHitboxesOverlap
|06E1EA| BCC EXIT_06E1B7

|06E1EC| LDA.w $0E20,Y
|06E1EF| CMP.b #$3F ; SPRITE 3F - wtf why
|06E1F1| BNE .not_tutorial_guard

|06E1F3| JSL PlaceWeaponTinkAtSprite

|06E1F7| BRA ApplyRicochet

;---------------------------------------------------------------------------------------------------

.not_tutorial_guard
|06E1F9| LDA.b #$03
|06E1FB| PHA

|06E1FC| LDA.w $0E20,X
|06E1FF| CMP.b #$EC ; SPRITE EC
|06E201| BNE .not_pot

|06E203| LDA.w $0DB0,X
|06E206| CMP.b #$02
|06E208| BNE .not_pot

|06E20A| LDA.b $1B
|06E20C| BNE .not_pot

|06E20E| PLA

|06E20F| LDA.b #$01
|06E211| PHA

;---------------------------------------------------------------------------------------------------

.not_pot
|06E212| PLA
|06E213| PHX

|06E214| TYX
|06E215| PHY

|06E216| JSL CheckAncillaDamageToSprite_preset

|06E21A| PLY
|06E21B| PLX

|06E21C| LDA.w $0D50,X
|06E21F| ASL A
|06E220| STA.w $0F40,Y

|06E223| LDA.w $0D40,X
|06E226| ASL A
|06E227| STA.w $0F30,Y

|06E22A| LDA.b #$10
|06E22C| STA.w $0F10,X

;===================================================================================================

ApplyRicochet:
|06E22F| JSR InvertSpeedXY
|06E232| JSR HalveSpeedXY

;===================================================================================================

ThrowableScenery_TransmuteIfValid:
|06E235| LDA.w $0E20,X
|06E238| CMP.b #$EC ; SPRITE EC
|06E23A| BNE EXIT_06E273

|06E23C| STZ.w $0FAC

;===================================================================================================

TransmuteThrowableToDebris:
|06E23F| LDA.w $0DC0,X
|06E242| BEQ .no_secret

|06E244| STA.w $0B9C

|06E247| JSR SpawnSecret

|06E24A| STZ.w $0B9C

.no_secret
|06E24D| LDY.w $0DB0,X

|06E250| LDA.b $1B
|06E252| BEQ .overworld

|06E254| LDY.b #$00

.overworld
|06E256| STZ.w $012E

|06E259| LDA.w ThrownItemSFX,Y
|06E25C| JSL QueueSpriteSFX2WithPan

;===================================================================================================

ScheduleForBreakage:
|06E260| LDA.b #$1F

.parameterized
|06E262| STA.w $0DF0,X

|06E265| LDA.b #$06
|06E267| STA.w $0DD0,X

|06E26A| LDA.w $0E40,X
|06E26D| CLC
|06E26E| ADC.b #$04
|06E270| STA.w $0E40,X

;---------------------------------------------------------------------------------------------------

#EXIT_06E273:
|06E273| RTS

;===================================================================================================

HalveSpeedXY:
|06E274| LDA.w $0D50,X
|06E277| ASL A
|06E278| ROR.w $0D50,X

|06E27B| LDA.w $0D40,X
|06E27E| ASL A
|06E27F| ROR.w $0D40,X

|06E282| RTS

;===================================================================================================

ThrownItemSFX:
|06E283| db $1F ; SFX2.1F
|06E284| db $1F ; SFX2.1F
|06E285| db $1E ; SFX2.1E
|06E286| db $1E ; SFX2.1E
|06E287| db $1E ; SFX2.1E
|06E288| db $1F ; SFX2.1F
|06E289| db $1F ; SFX2.1F
|06E28A| db $1F ; SFX2.1F
|06E28B| db $1F ; SFX2.1F

;===================================================================================================

SpawnLeapingFish:
|06E28C| LDA.b #$D2 ; SPRITE D2
|06E28E| JSL SpawnSpriteDynamically
|06E292| BMI .exit

|06E294| JSL SetSpawnedSpriteCoordinates

|06E298| LDA.b #$02
|06E29A| STA.w $0D80,Y

|06E29D| LDA.b #$30
|06E29F| STA.w $0DF0,Y

|06E2A2| LDA.w $0E20,X
|06E2A5| CMP.b #$D2 ; SPRITE D2
|06E2A7| BNE .exit

|06E2A9| STA.w $0D90,Y

.exit
|06E2AC| RTS

;===================================================================================================

pool SpriteModule_Frozen

.sparkle_offset_low
|06E2AD| db  -4,  12,   3,   8

.sparkle_offset_high
|06E2B1| db  -1,   0,   0,   0

.sparkle_mask
|06E2B5| db $7F, $0F, $03, $01, $00, $00, $00

endpool

;===================================================================================================

HandleFreezeAndStunTimer:
|06E2BC| JSL DrawRippleIfInWater

;===================================================================================================

SpriteModule_Frozen:
|06E2C0| JSR SpriteModule_Active

|06E2C3| LDA.l $7FFA3C,X
|06E2C7| BEQ .not_frozen

|06E2C9| LDA.w $0DF0,X
|06E2CC| CMP.b #$20
|06E2CE| BCS .skip_palette

|06E2D0| LDA.w $0F50,X
|06E2D3| AND.b #$F1
|06E2D5| ORA.b #$04
|06E2D7| STA.w $0F50,X

.skip_palette
|06E2DA| LDA.w $0DF0,X
|06E2DD| LSR A ; /16
|06E2DE| LSR A
|06E2DF| LSR A
|06E2E0| LSR A
|06E2E1| TAY

|06E2E2| TXA
|06E2E3| ASL A ; x16
|06E2E4| ASL A
|06E2E5| ASL A
|06E2E6| ASL A
|06E2E7| EOR.b $1A
|06E2E9| ORA.b $11
|06E2EB| AND.w .sparkle_mask,Y

|06E2EE| BNE .exit

|06E2F0| JSL GetRandomNumber
|06E2F4| AND.b #$03
|06E2F6| TAY

|06E2F7| LDA.w .sparkle_offset_low,Y
|06E2FA| STA.b $00

|06E2FC| LDA.w .sparkle_offset_high,Y
|06E2FF| STA.b $01

|06E301| JSL GetRandomNumber
|06E305| AND.b #$03
|06E307| TAY

|06E308| LDA.w .sparkle_offset_low,Y
|06E30B| STA.b $02

|06E30D| LDA.w .sparkle_offset_high,Y
|06E310| STA.b $03

|06E312| JSL GarnishSpawn_Sparkle

.exit
|06E316| RTS

;---------------------------------------------------------------------------------------------------

.not_frozen
|06E317| LDA.b $1A
|06E319| AND.b #$01
|06E31B| ORA.b $11
|06E31D| ORA.w $0FC1
|06E320| BNE .exit_b

|06E322| LDA.w $0B58,X
|06E325| BEQ .unstun

|06E327| DEC.w $0B58,X

|06E32A| CMP.b #$38
|06E32C| BCS .exit_b

|06E32E| AND.b #$01
|06E330| TAY

|06E331| LDA.w .shake_x,Y
|06E334| STA.w $0D50,X

|06E337| JSR MoveSpriteX_bank06

.exit_b
|06E33A| RTS

;---------------------------------------------------------------------------------------------------

.unstun
|06E33B| LDA.b #$09
|06E33D| STA.w $0DD0,X

|06E340| STZ.w $0F40,X
|06E343| STZ.w $0F30,X

|06E346| RTS

;---------------------------------------------------------------------------------------------------

.shake_x
|06E347| db   8,  -8

;===================================================================================================

pool SpriteModule_Poof

.offset_x
|06E349| db  -6,  10,   1,  13
|06E34D| db  -6,  10,   1,  13
|06E351| db  -7,   4,  -5,   6
|06E355| db  -1,   1,  -2,   0

.offset_y
|06E359| db  -6,  -4,  10,   9
|06E35D| db  -6,  -4,  10,   9
|06E361| db  -8, -10,   4,   3
|06E365| db  -1,  -2,   0,   1

.char
|06E369| db $9B, $9B, $9B, $9B
|06E36D| db $B3, $B3, $B3, $B3
|06E371| db $8A, $8A, $8A, $8A
|06E375| db $8A, $8A, $8A, $8A

.prop
|06E379| db $24, $A4, $24, $A4
|06E37D| db $E4, $64, $A4, $24
|06E381| db $24, $E4, $E4, $E4
|06E385| db $24, $E4, $E4, $E4

.size
|06E389| db $00, $00, $00, $00
|06E38D| db $00, $00, $00, $00
|06E391| db $02, $02, $02, $02
|06E395| db $02, $02, $02, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteModule_Poof:
|06E399| LDA.w $0DF0,X
|06E39C| BNE .delay

|06E39E| LDA.w $0E20,X
|06E3A1| CMP.b #$0D ; SPRITE 0D
|06E3A3| BNE .not_cukeman

|06E3A5| LDY.w $0EB0,X
|06E3A8| BEQ .not_cukeman

|06E3AA| LDY.w $0D10,X
|06E3AD| PHY

|06E3AE| LDY.w $0D30,X
|06E3B1| PHY

|06E3B2| JSR PrepareEnemyDrop

|06E3B5| PLA
|06E3B6| STA.w $0D30,X

|06E3B9| PLA
|06E3BA| STA.w $0D10,X

|06E3BD| STZ.w $0F80,X
|06E3C0| STZ.w $0BA0,X

|06E3C3| RTS

;---------------------------------------------------------------------------------------------------

.not_cukeman
|06E3C4| LDA.w $0CBA,X
|06E3C7| BNE .no_forced_drop

; force magic pack
|06E3C9| LDY.b #$02
|06E3CB| JMP.w ForcePrizeDrop

;---------------------------------------------------------------------------------------------------

.no_forced_drop
|06E3CE| JMP.w MeetYourDemise

;---------------------------------------------------------------------------------------------------

.delay
|06E3D1| JSR GetScreenCoordinates

|06E3D4| LDA.w $0DF0,X
|06E3D7| LSR A
|06E3D8| AND.b #$FC
|06E3DA| STA.b $00

|06E3DC| PHX
|06E3DD| LDX.b #$03

.next_object
|06E3DF| PHX

|06E3E0| TXA
|06E3E1| CLC
|06E3E2| ADC.b $00
|06E3E4| TAX

|06E3E5| LDA.w $0FA8
|06E3E8| CLC
|06E3E9| ADC.w .offset_x,X
|06E3EC| STA.b ($90),Y

|06E3EE| LDA.w $0FA9
|06E3F1| CLC
|06E3F2| ADC.w .offset_y,X
|06E3F5| INY
|06E3F6| STA.b ($90),Y

|06E3F8| LDA.w .char,X
|06E3FB| INY
|06E3FC| STA.b ($90),Y

|06E3FE| LDA.w .prop,X
|06E401| INY
|06E402| STA.b ($90),Y

|06E404| PHY

|06E405| TYA
|06E406| LSR A
|06E407| LSR A
|06E408| TAY

|06E409| LDA.w .size,X
|06E40C| STA.b ($92),Y

|06E40E| PLY
|06E40F| INY

|06E410| PLX
|06E411| DEX
|06E412| BPL .next_object

;---------------------------------------------------------------------------------------------------

|06E414| PLX

|06E415| LDY.b #$FF
|06E417| LDA.b #$03
|06E419| JMP.w CorrectOAMEntries

;===================================================================================================

GetScreenCoordinates_long:
|06E41C| JSR GetScreenCoordinates_wrapper

|06E41F| RTL

;---------------------------------------------------------------------------------------------------

GetScreenCoordinates_wrapper:
|06E420| JSR GetScreenCoordinates

|06E423| RTS

;---------------------------------------------------------------------------------------------------

GetScreenCoordinates:
|06E424| STZ.w $0F00,X

|06E427| REP #$20

|06E429| LDA.w $0FD8
|06E42C| SEC
|06E42D| SBC.b $E2
|06E42F| STA.b $00

|06E431| CLC
|06E432| ADC.w #$0040
|06E435| CMP.w #$0170

|06E438| SEP #$20
|06E43A| BCS .offscreen

;---------------------------------------------------------------------------------------------------

|06E43C| LDA.w $0F70,X
|06E43F| STA.b $04
|06E441| STZ.b $05

|06E443| REP #$20

|06E445| LDA.w $0FDA
|06E448| SEC
|06E449| SBC.b $E8
|06E44B| PHA

|06E44C| SEC
|06E44D| SBC.b $04
|06E44F| STA.b $02

|06E451| PLA
|06E452| CLC
|06E453| ADC.w #$0040
|06E456| CMP.w #$0170

|06E459| SEP #$20
|06E45B| BCC .on_screen

|06E45D| LDA.w $0F60,X
|06E460| AND.b #$20
|06E462| BEQ .disable

;---------------------------------------------------------------------------------------------------

.on_screen
|06E464| CLC

.prep_exit
|06E465| LDA.w $0F50,X
|06E468| EOR.w $0B89,X
|06E46B| STA.b $05
|06E46D| STZ.b $04

|06E46F| LDA.b $00
|06E471| STA.w $0FA8

|06E474| LDA.b $02
|06E476| STA.w $0FA9

|06E479| LDY.b #$00

|06E47B| RTS

;---------------------------------------------------------------------------------------------------

.offscreen
|06E47C| REP #$20

|06E47E| LDA.w $0FDA
|06E481| SEC
|06E482| SBC.b $E8

|06E484| SEC
|06E485| SBC.b $04
|06E487| STA.b $02

|06E489| SEP #$20

;---------------------------------------------------------------------------------------------------

.disable
|06E48B| INC.w $0F00,X

|06E48E| LDA.w $0CAA,X
|06E491| BMI .pull_out

|06E493| JSL KillThisSprite

.pull_out
|06E497| PLA
|06E498| PLA

|06E499| SEC

|06E49A| BRA .prep_exit

;===================================================================================================

CheckSpriteTileCollision_long:
|06E49C| PHB
|06E49D| PHK
|06E49E| PLB

|06E49F| JSR CheckSpriteTileCollision

|06E4A2| PLB

|06E4A3| LDA.w $0E70,X

|06E4A6| RTL

;===================================================================================================

CheckSpriteTileCollision_set_layer:
|06E4A7| LDA.w $0FB6
|06E4AA| STA.w $0F20,X

|06E4AD| RTS

;---------------------------------------------------------------------------------------------------

CheckSpriteTileCollision_check_just_one:
|06E4AE| JMP.w CheckSpriteTileCollisionSingleLayer

;---------------------------------------------------------------------------------------------------

CheckSpriteTileCollision:
|06E4B1| STZ.w $0E70,X

|06E4B4| LDA.w $0F60,X
|06E4B7| BMI CheckSpriteTileCollision_check_just_one

|06E4B9| LDA.w $046C
|06E4BC| BEQ CheckSpriteTileCollision_check_just_one

|06E4BE| LDA.w $0F20,X
|06E4C1| STA.w $0FB6

|06E4C4| LDA.b #$01
|06E4C6| STA.w $0F20,X

|06E4C9| JSR CheckSpriteTileCollisionSingleLayer

|06E4CC| LDA.w $046C
|06E4CF| CMP.b #$04
|06E4D1| BEQ CheckSpriteTileCollision_set_layer

|06E4D3| STZ.w $0F20,X

|06E4D6| JSR CheckSpriteTileCollisionSingleLayer

|06E4D9| LDA.w $0FA5
|06E4DC| STA.l $7FFABC,X

|06E4E0| RTS

;===================================================================================================

CheckSpriteTileCollisionSingleLayer:
|06E4E1| LDA.w $0E40,X
|06E4E4| AND.b #$20
|06E4E6| BEQ .normal_check

|06E4E8| LDY.b #$6A
|06E4EA| JSR CheckSpriteTileProperty
|06E4ED| BCC .exit_a

|06E4EF| INC.w $0E70,X

.exit_a
|06E4F2| RTS

;---------------------------------------------------------------------------------------------------

.normal_check
|06E4F3| LDA.w $0F60,X
|06E4F6| BMI .force_check

|06E4F8| LDA.w $046C
|06E4FB| BNE .unorthodox_collision_settings

.force_check
|06E4FD| LDY.b #$00

|06E4FF| LDA.w $0D40,X
|06E502| BEQ .no_y_velocity
|06E504| BMI .negative_y_velocity

|06E506| INY

.negative_y_velocity
|06E507| JSR CheckTileInDirection_vertical

.no_y_velocity
|06E50A| LDY.b #$02

|06E50C| LDA.w $0D50,X
|06E50F| BEQ .no_x_velocity
|06E511| BMI .negative_x_velocity

|06E513| INY

.negative_x_velocity
|06E514| JSR CheckTileInDirection_horizontal

.no_x_velocity
|06E517| BRA .continue

;---------------------------------------------------------------------------------------------------

.unorthodox_collision_settings
|06E519| LDY.b #$01

.check_next_vertical
|06E51B| JSR CheckTileInDirection_vertical

|06E51E| DEY
|06E51F| BPL .check_next_vertical

;---------------------------------------------------------------------------------------------------

|06E521| LDY.b #$03

.check_next_horizontal
|06E523| JSR CheckTileInDirection_horizontal

|06E526| DEY
|06E527| CPY.b #$01
|06E529| BNE .check_next_horizontal

;---------------------------------------------------------------------------------------------------

.continue
|06E52B| LDA.w $0BE0,X
|06E52E| BMI .exit_b

|06E530| LDA.w $0F70,X
|06E533| BEQ .grounded

.exit_b
|06E535| RTS

;---------------------------------------------------------------------------------------------------

.grounded
|06E536| LDY.b #$68
|06E538| JSR CheckSpriteTileProperty

|06E53B| LDA.w $0FA5
|06E53E| STA.l $7FF9C2,X

|06E542| CMP.b #$1C ; TILETYPE 1C
|06E544| BNE .dont_fall_to_lower_layer

|06E546| LDY.w $0FB3
|06E549| BEQ .dont_fall_to_lower_layer

|06E54B| LDY.w $0DD0,X
|06E54E| CPY.b #$0B
|06E550| BNE .dont_fall_to_lower_layer

|06E552| LDA.b #$01
|06E554| STA.w $0F20,X

|06E557| RTS

;---------------------------------------------------------------------------------------------------

.dont_fall_to_lower_layer
|06E558| CMP.b #$20 ; TILETYPE 20
|06E55A| BNE .not_pit

|06E55C| LDA.w $0B6B,X
|06E55F| AND.b #$01
|06E561| BEQ .sprite_cant_fall

|06E563| LDA.b $1B
|06E565| BNE .indoors_pit

|06E567| JMP.w Sprite_SetToFalling

.indoors_pit
|06E56A| LDA.b #$05
|06E56C| STA.w $0DD0,X

|06E56F| LDA.b #$5F

|06E571| LDY.w $0E20,X
|06E574| CPY.b #$13 ; SPRITE 13
|06E576| BEQ .mini_helma_falling

|06E578| CPY.b #$26 ; SPRITE 26
|06E57A| BNE .not_beetle_falling

.mini_helma_falling
|06E57C| LSR.w $0F50,X
|06E57F| ASL.w $0F50,X

|06E582| LDA.b #$3F

.not_beetle_falling
|06E584| STA.w $0DF0,X

|06E587| RTS

;---------------------------------------------------------------------------------------------------

.not_pit
|06E588| CMP.b #$0C ; TILETYPE 0C
|06E58A| BNE .sprite_cant_fall

|06E58C| LDA.l $7FFABC,X
|06E590| CMP.b #$1C ; TILETYPE 1C
|06E592| BNE .exit_c

|06E594| JSR SpriteFall_AdjustPosition

|06E597| LDA.w $0E70,X
|06E59A| ORA.b #$20
|06E59C| STA.w $0E70,X

|06E59F| RTS

;---------------------------------------------------------------------------------------------------

.sprite_cant_fall
|06E5A0| CMP.b #$68 ; TILETYPE 68
|06E5A2| BCC .not_a_conveyor

|06E5A4| CMP.b #$6C ; TILETYPE 6C
|06E5A6| BCS .exit_c

.apply_conveyor_motion
|06E5A8| TAY
|06E5A9| JSL ApplyConveyorToSprites

|06E5AD| RTS

;---------------------------------------------------------------------------------------------------

.not_a_conveyor
|06E5AE| CMP.b #$08 ; TILETYPE 08
|06E5B0| BNE .exit_c

|06E5B2| LDA.w $046C
|06E5B5| CMP.b #$04
|06E5B7| BNE .exit_c

|06E5B9| LDA.b #$6A ; TILETYPE 6A
|06E5BB| BRA .apply_conveyor_motion

.exit_c
|06E5BD| RTS

;===================================================================================================

CheckTileInDirection_horizontal:
|06E5BE| JSR CheckTileInDirection
|06E5C1| BCC .exit

|06E5C3| LDA.w CheckTileInDirection.direction_flag,Y
|06E5C6| ORA.w $0E70,X
|06E5C9| STA.w $0E70,X

|06E5CC| LDA.w $0E30,X
|06E5CF| AND.b #$07
|06E5D1| CMP.b #$05
|06E5D3| BCS .exit

|06E5D5| LDA.w $0EA0,X
|06E5D8| BEQ .check_once

|06E5DA| JSR .check_once
|06E5DD| JSR .check_once

;---------------------------------------------------------------------------------------------------

.check_once
|06E5E0| LDA.w $0D10,X
|06E5E3| CLC
|06E5E4| ADC.w CheckTileInDirection.pushback_low,Y
|06E5E7| STA.w $0D10,X

|06E5EA| LDA.w $0D30,X
|06E5ED| ADC.w CheckTileInDirection.pushback_high,Y
|06E5F0| STA.w $0D30,X

.exit
|06E5F3| RTS

;===================================================================================================

CheckTileInDirection_vertical:
|06E5F4| JSR CheckTileInDirection
|06E5F7| BCC .exit

|06E5F9| LDA.w CheckTileInDirection.direction_flag,Y
|06E5FC| ORA.w $0E70,X
|06E5FF| STA.w $0E70,X

|06E602| LDA.w $0E30,X
|06E605| AND.b #$07
|06E607| CMP.b #$05
|06E609| BCS .exit

|06E60B| LDA.w $0EA0,X
|06E60E| BEQ .check_once

|06E610| JSR .check_once
|06E613| JSR .check_once

;---------------------------------------------------------------------------------------------------

.check_once
|06E616| LDA.w $0D00,X
|06E619| CLC
|06E61A| ADC.w CheckTileInDirection.pushback_low,Y
|06E61D| STA.w $0D00,X

|06E620| LDA.w $0D20,X
|06E623| ADC.w CheckTileInDirection.pushback_high,Y
|06E626| STA.w $0D20,X

.exit
|06E629| RTS

;===================================================================================================

SpriteFall_AdjustPosition:
|06E62A| LDA.w $0310
|06E62D| CLC
|06E62E| ADC.w $0D00,X
|06E631| STA.w $0D00,X

|06E634| LDA.w $0311
|06E637| ADC.w $0D20,X
|06E63A| STA.w $0D20,X

|06E63D| LDA.w $0312
|06E640| CLC
|06E641| ADC.w $0D10,X
|06E644| STA.w $0D10,X

|06E647| LDA.w $0313
|06E64A| ADC.w $0D30,X
|06E64D| STA.w $0D30,X

|06E650| RTS

;===================================================================================================

pool CheckSpriteTileProperty

.offset_x
|06E651| dw $0008, $0008, $0002, $000E
|06E659| dw $0008, $0008, $FFFE, $000A
|06E661| dw $0008, $0008, $0001, $000E
|06E669| dw $0004, $0004, $0004, $0004
|06E671| dw $0004, $0004, $FFFE, $000A
|06E679| dw $0008, $0008, $FFE7, $0028
|06E681| dw $0008, $0008, $0002, $000E
|06E689| dw $0008, $0008, $FFF8, $0017
|06E691| dw $0008, $0008, $FFEC, $0024
|06E699| dw $0008, $0008, $FFFF, $0010
|06E6A1| dw $0008, $0008, $FFFF, $0010
|06E6A9| dw $0008, $0008, $FFF8, $0018
|06E6B1| dw $0008, $0008, $FFF8, $0018
|06E6B9| dw $0008, $0003

.offset_y
|06E6BD| dw $0006, $0014, $000D, $000D
|06E6C5| dw $0000, $0008, $0004, $0004
|06E6CD| dw $0001, $000E, $0008, $0008
|06E6D5| dw $0004, $0004, $0004, $0004
|06E6DD| dw $FFFE, $000A, $0004, $0004
|06E6E5| dw $FFE7, $0028, $0008, $0008
|06E6ED| dw $0003, $0010, $000A, $000A
|06E6F5| dw $FFF8, $0019, $0008, $0008
|06E6FD| dw $FFEC, $0024, $0008, $0008
|06E705| dw $FFFF, $0010, $0008, $0008
|06E70D| dw $000E, $0003, $0008, $0008
|06E715| dw $FFF8, $0018, $0008, $0008
|06E71D| dw $FFF8, $0020, $0008, $0008
|06E725| dw $000C, $0004

endpool

;===================================================================================================

pool CheckTileInDirection

.direction_flag
|06E729| db $08 ; up
|06E72A| db $04 ; down
|06E72B| db $02 ; left
|06E72C| db $01 ; right

.pushback_low
|06E72D| db   1 ; up
|06E72E| db  -1 ; down
|06E72F| db   1 ; left
|06E730| db  -1 ; right

.pushback_high
|06E731| db   0 ; up
|06E732| db  -1 ; down
|06E733| db   0 ; left
|06E734| db  -1 ; right

endpool

;===================================================================================================

CheckTileInDirection:
|06E735| STY.b $08

|06E737| LDA.w $0B6B,X
|06E73A| AND.b #$F0
|06E73C| LSR A
|06E73D| LSR A
|06E73E| ADC.b $08
|06E740| ASL A
|06E741| TAY

;===================================================================================================

CheckSpriteTileProperty:
|06E742| LDA.b $1B
|06E744| BEQ .overworld

;---------------------------------------------------------------------------------------------------

|06E746| REP #$20

|06E748| LDA.w $0FDA
|06E74B| CLC
|06E74C| ADC.w #$0008
|06E74F| AND.w #$01FF

|06E752| CLC
|06E753| ADC.w .offset_y,Y

|06E756| SEC
|06E757| SBC.w #$0008
|06E75A| STA.b $00

|06E75C| CMP.w #$0200
|06E75F| BCS .continue_check

|06E761| LDA.w $0FD8
|06E764| ADC.w #$0008
|06E767| AND.w #$01FF

|06E76A| CLC
|06E76B| ADC.w .offset_x,Y

|06E76E| SEC
|06E76F| SBC.w #$0008
|06E772| STA.b $02

|06E774| CMP.w #$0200
|06E777| BRA .continue_check

;---------------------------------------------------------------------------------------------------

.overworld
|06E779| REP #$20

|06E77B| LDA.w $0FDA
|06E77E| CLC
|06E77F| ADC.w .offset_y,Y
|06E782| STA.b $00

|06E784| SEC
|06E785| SBC.w $0FBE
|06E788| CMP.w $0FBA
|06E78B| BCS .continue_check

|06E78D| LDA.w $0FD8
|06E790| CLC
|06E791| ADC.w .offset_x,Y
|06E794| STA.b $02

|06E796| SEC
|06E797| SBC.w $0FBC
|06E79A| CMP.w $0FB8

;---------------------------------------------------------------------------------------------------

.continue_check
|06E79D| SEP #$20
|06E79F| BCC .check_attributes

|06E7A1| JMP.w .off_screen

.check_attributes
|06E7A4| JSR GetTileTypeForSprite
|06E7A7| TAY

|06E7A8| LDA.w $0CAA,X
|06E7AB| AND.b #$08
|06E7AD| BEQ .dont_use_projectile_table

|06E7AF| PHX
|06E7B0| TYX

|06E7B1| LDY.b $08

|06E7B3| LDA.l GeneralizedProjectileTileInteraction,X

|06E7B7| PLX

|06E7B8| CMP.b #$04
|06E7BA| BEQ .check_worldiness

|06E7BC| CMP.b #$01
|06E7BE| BCC .proceed_to_failure

|06E7C0| LDA.w $0FA5
|06E7C3| CMP.b #$10 ; TILETYPE 10
|06E7C5| BCC .proceed_to_success

|06E7C7| CMP.b #$14 ; TILETYPE 14
|06E7C9| BCS .proceed_to_success

|06E7CB| JSR CheckSlopedTileCollision

|06E7CE| JMP.w .load_tile_prop_exit

;---------------------------------------------------------------------------------------------------

.proceed_to_success
|06E7D1| JMP.w .succeed_and_exit

;---------------------------------------------------------------------------------------------------

.check_worldiness
|06E7D4| LDY.b $1B
|06E7D6| BNE .proceed_to_failure

|06E7D8| STA.w $0E90,X

.proceed_to_failure
|06E7DB| JMP.w .fail

;---------------------------------------------------------------------------------------------------

.dont_use_projectile_table
|06E7DE| LDA.w $0BE0,X
|06E7E1| ASL A
|06E7E2| BPL .disable_some_checks

|06E7E4| LDA.w $0E20,X
|06E7E7| CMP.b #$D2 ; SPRITE D2
|06E7E9| BEQ .is_fish

|06E7EB| CMP.b #$8A ; SPRITE 8A
|06E7ED| BNE .not_spiky_ouchers

.is_fish
|06E7EF| CPY.b #$09 ; TILETYPE 09
|06E7F1| BEQ .fish_in_deep_water

.not_spiky_ouchers
|06E7F3| CMP.b #$94 ; SPRITE 94
|06E7F5| BNE .not_pirogusu

|06E7F7| LDA.w $0E90,X
|06E7FA| BEQ .check_for_water

|06E7FC| BRA .disable_some_checks

;---------------------------------------------------------------------------------------------------

.not_pirogusu
; Fairy
|06E7FE| CMP.b #$E3 ; SPRITE E3
|06E800| BEQ .check_for_water

; Arrghus
|06E802| CMP.b #$8C ; SPRITE 8C
|06E804| BEQ .check_for_water

; Kyameron
|06E806| CMP.b #$9A ; SPRITE 9A
|06E808| BEQ .check_for_water

; Hover
|06E80A| CMP.b #$81 ; SPRITE 81
|06E80C| BNE .disable_some_checks

.check_for_water
|06E80E| CPY.b #$08 ; TILETYPE 08
|06E810| BEQ .fail

|06E812| CPY.b #$09 ; TILETYPE 09

.fish_in_deep_water
|06E814| BEQ .fail

|06E816| BRA .succeed_and_exit

;---------------------------------------------------------------------------------------------------

.disable_some_checks
|06E818| PHX
|06E819| TYX

|06E81A| LDA.l GeneralizedSpriteTileInteraction,X

|06E81E| PLX

|06E81F| LDY.b $08
|06E821| CMP.b #$00
|06E823| BEQ .fail

|06E825| LDA.w $0FA5
|06E828| CMP.b #$10 ; TILETYPE 10
|06E82A| BCC .not_slope

|06E82C| CMP.b #$14 ; TILETYPE 14
|06E82E| BCS .not_slope

|06E830| JSR CheckSlopedTileCollision
|06E833| BRA .load_tile_prop_exit

;---------------------------------------------------------------------------------------------------

.not_slope
|06E835| CMP.b #$44 ; TILETYPE 44
|06E837| BNE .not_spike

|06E839| LDA.w $0EA0,X
|06E83C| BEQ .succeed_and_exit

|06E83E| LDA.w $0CE2,X
|06E841| BMI .skip_damage_or_recoil

|06E843| LDA.b #$04
|06E845| JSL CheckAncillaDamageToSprite_preset

|06E849| LDA.w $0EF0,X
|06E84C| BEQ .skip_damage_or_recoil

|06E84E| LDA.b #$99
|06E850| STA.w $0EF0,X

|06E853| STZ.w $0EA0,X

.skip_damage_or_recoil
|06E856| BRA .succeed_and_exit

;---------------------------------------------------------------------------------------------------

.off_screen
; [WTF] this JSR is totally pointless and just sets the carry and loads Y.
; It doesn't even save a byte really, because that SEC : SEP #$21 is stupid
|06E858| JSR .succeed_and_exit

|06E85B| LDA.w $0E40,X
|06E85E| ASL A
|06E85F| BPL .dont_die

|06E861| STZ.w $0DD0,X

|06E864| CLC

|06E865| RTS

.dont_die
|06E866| SEC

|06E867| RTS

;---------------------------------------------------------------------------------------------------

.not_spike
; Is pit?
|06E868| CMP.b #$20 ; TILETYPE 20
|06E86A| BNE .succeed_and_exit

|06E86C| LDA.w $0B6B,X
|06E86F| AND.b #$01
|06E871| BEQ .succeed_and_exit

|06E873| LDA.w $0EA0,X
|06E876| BNE .fail

;---------------------------------------------------------------------------------------------------

.succeed_and_exit
|06E878| SEC ; useless wtf
|06E879| SEP #$21

|06E87B| BRA .load_tile_prop_exit

.fail
|06E87D| CLC

.load_tile_prop_exit
|06E87E| LDY.b $08

|06E880| RTS

;===================================================================================================

GetTileType_long:
|06E881| PHB
|06E882| PHK
|06E883| PLB

|06E884| JSR GetTileType

|06E887| PLB

|06E888| RTL

;===================================================================================================

GetTileTypeForSprite:
|06E889| LDA.w $0F20,X

;===================================================================================================

GetTileType:
|06E88C| CMP.b #$01

|06E88E| REP #$30

|06E890| STZ.b $05
|06E892| BCC .other_layer

|06E894| LDA.w #$1000
|06E897| STA.b $05

.other_layer
|06E899| LDA.b $1B
|06E89B| AND.w #$00FF
|06E89E| BEQ .overworld

;---------------------------------------------------------------------------------------------------

.underworld
|06E8A0| LDA.b $02
|06E8A2| AND.w #$01FF

|06E8A5| LSR A
|06E8A6| LSR A
|06E8A7| LSR A

|06E8A8| STA.b $04

|06E8AA| LDA.b $00
|06E8AC| AND.w #$01F8

|06E8AF| ASL A
|06E8B0| ASL A
|06E8B1| ASL A

|06E8B2| CLC ; [USELESS] guaranteed to be clear here
|06E8B3| ADC.b $04

|06E8B5| CLC
|06E8B6| ADC.b $05

|06E8B8| PHX

|06E8B9| TAX

|06E8BA| LDA.l $7F2000,X

|06E8BE| PLX

|06E8BF| SEP #$30

|06E8C1| STA.w $0FA5

|06E8C4| RTS

;---------------------------------------------------------------------------------------------------

.overworld
|06E8C5| LDA.b $02
|06E8C7| LSR A ; /8
|06E8C8| LSR A
|06E8C9| LSR A
|06E8CA| STA.b $02

|06E8CC| SEP #$10

|06E8CE| PHX
|06E8CF| PHY

|06E8D0| JSL GetOverworldTileType

|06E8D4| SEP #$30

|06E8D6| STA.w $0FA5

|06E8D9| PLY
|06E8DA| PLX

|06E8DB| RTS

;===================================================================================================

pool CheckSlopedTileCollision
; TODO analyze and better name
.angle
|06E8DC| db $07, $06, $05, $04, $03, $02, $01, $00
|06E8E4| db $00, $01, $02, $03, $04, $05, $06, $07

|06E8EC| db $00, $01, $02, $03, $04, $05, $06, $07
|06E8F4| db $07, $06, $05, $04, $03, $02, $01, $00

endpool

;---------------------------------------------------------------------------------------------------

CheckSlopedTileCollision_long:
|06E8FC| PHB
|06E8FD| PHK
|06E8FE| PLB

|06E8FF| JSR CheckSlopedTileCollision

|06E902| PLB

|06E903| RTL

;===================================================================================================

CheckSlopedTileCollision:
|06E904| LDA.b $00
|06E906| AND.b #$07
|06E908| STA.b $04

|06E90A| LDA.b $02
|06E90C| AND.b #$07
|06E90E| STA.b $05

|06E910| LDA.w $0FA5
|06E913| SEC
|06E914| SBC.b #$10
|06E916| STA.b $06

|06E918| ASL A ; x8
|06E919| ASL A
|06E91A| ASL A

|06E91B| CLC
|06E91C| ADC.b $05
|06E91E| TAY

|06E91F| LDA.b $06
|06E921| CMP.b #$02
|06E923| BCC .flip_comparison ; TODO elaborate

|06E925| LDA.b $04
|06E927| CMP.w .angle,Y
|06E92A| BRA .exit

;---------------------------------------------------------------------------------------------------

.flip_comparison
|06E92C| LDA.w .angle,Y
|06E92F| CMP.b $04

.exit
|06E931| RTS

;===================================================================================================

MoveSpriteXY_bank06:
|06E932| JSR MoveSpriteX_bank06

|06E935| JMP.w MoveSpriteY_bank06

;---------------------------------------------------------------------------------------------------

MoveSpriteX_bank06:
|06E938| TXA
|06E939| CLC
|06E93A| ADC.b #$10
|06E93C| TAX

|06E93D| JSR MoveSpriteY_bank06

|06E940| LDX.w $0FA0

|06E943| RTS

;===================================================================================================

MoveSpriteY_bank06:
|06E944| LDA.w $0D40,X
|06E947| BEQ .exit

|06E949| ASL A ; x16
|06E94A| ASL A
|06E94B| ASL A
|06E94C| ASL A

|06E94D| CLC
|06E94E| ADC.w $0D60,X
|06E951| STA.w $0D60,X

|06E954| LDA.w $0D40,X
|06E957| PHP

|06E958| LSR A ; /16
|06E959| LSR A
|06E95A| LSR A
|06E95B| LSR A

|06E95C| LDY.b #$00

|06E95E| PLP
|06E95F| BPL .positive_velocity

|06E961| ORA.b #$F0
|06E963| DEY

.positive_velocity
|06E964| ADC.w $0D00,X
|06E967| STA.w $0D00,X

|06E96A| TYA
|06E96B| ADC.w $0D20,X
|06E96E| STA.w $0D20,X

.exit
|06E971| RTS

;===================================================================================================

MoveSpriteZ_bank06:
|06E972| LDA.w $0F80,X

|06E975| ASL A ; x16
|06E976| ASL A
|06E977| ASL A
|06E978| ASL A

|06E979| CLC
|06E97A| ADC.w $0F90,X
|06E97D| STA.w $0F90,X

|06E980| LDA.w $0F80,X
|06E983| PHP

|06E984| LSR A ; /16
|06E985| LSR A
|06E986| LSR A
|06E987| LSR A

|06E988| PLP
|06E989| BPL .positive_velocity

|06E98B| ORA.b #$F0

.positive_velocity
|06E98D| ADC.w $0F70,X
|06E990| STA.w $0F70,X

|06E993| RTS

;===================================================================================================

ProjectSpriteSpeedTowardsLink_InstantExit:
|06E994| STZ.b $00

|06E996| RTS

;---------------------------------------------------------------------------------------------------

ProjectSpriteSpeedTowardsLink:
|06E997| STA.b $01

|06E999| CMP.b #$00
|06E99B| BEQ ProjectSpriteSpeedTowardsLink_InstantExit

|06E99D| PHX
|06E99E| PHY

|06E99F| JSR GetYDisplacementFromLink
|06E9A2| STY.b $02

|06E9A4| LDA.b $0E
|06E9A6| BPL .positive_y

|06E9A8| EOR.b #$FF
|06E9AA| INC A

.positive_y
|06E9AB| STA.b $0C

;---------------------------------------------------------------------------------------------------

|06E9AD| JSR GetXDisplacementFromLink
|06E9B0| STY.b $03

|06E9B2| LDA.b $0F
|06E9B4| BPL .positive_x

|06E9B6| EOR.b #$FF
|06E9B8| INC A

.positive_x
|06E9B9| STA.b $0D

;---------------------------------------------------------------------------------------------------

|06E9BB| LDY.b #$00

|06E9BD| LDA.b $0D
|06E9BF| CMP.b $0C
|06E9C1| BCS .x_is_bigger

|06E9C3| INY

|06E9C4| PHA

|06E9C5| LDA.b $0C
|06E9C7| STA.b $0D

|06E9C9| PLA
|06E9CA| STA.b $0C

.x_is_bigger
|06E9CC| STZ.b $0B
|06E9CE| STZ.b $00

|06E9D0| LDX.b $01

;---------------------------------------------------------------------------------------------------

.next
|06E9D2| LDA.b $0B
|06E9D4| CLC
|06E9D5| ADC.b $0C
|06E9D7| CMP.b $0D
|06E9D9| BCC .dont_accumulate

|06E9DB| SBC.b $0D
|06E9DD| INC.b $00

.dont_accumulate
|06E9DF| STA.b $0B

|06E9E1| DEX
|06E9E2| BNE .next

;---------------------------------------------------------------------------------------------------

|06E9E4| TYA
|06E9E5| BEQ .dont_flip_axes

|06E9E7| LDA.b $00
|06E9E9| PHA

|06E9EA| LDA.b $01
|06E9EC| STA.b $00

|06E9EE| PLA
|06E9EF| STA.b $01

.dont_flip_axes
|06E9F1| LDA.b $00
|06E9F3| LDY.b $02
|06E9F5| BEQ .sign_correct_y

|06E9F7| EOR.b #$FF
|06E9F9| INC A
|06E9FA| STA.b $00

.sign_correct_y
|06E9FC| LDA.b $01
|06E9FE| LDY.b $03
|06EA00| BEQ .sign_correct_x

|06EA02| EOR.b #$FF
|06EA04| INC A
|06EA05| STA.b $01

.sign_correct_x
|06EA07| PLY
|06EA08| PLX

|06EA09| RTS

;===================================================================================================

ApplySpeedTowardsLink:
|06EA0A| JSR ProjectSpriteSpeedTowardsLink

|06EA0D| LDA.b $00
|06EA0F| STA.w $0D40,X

|06EA12| LDA.b $01
|06EA14| STA.w $0D50,X

|06EA17| RTS

;===================================================================================================

ApplySpeedTowardsLink_long:
|06EA18| PHB
|06EA19| PHK
|06EA1A| PLB

|06EA1B| JSR ApplySpeedTowardsLink

|06EA1E| PLB

|06EA1F| RTL

;===================================================================================================

ProjectSpriteSpeedTowardsLink_long:
|06EA20| PHB
|06EA21| PHK
|06EA22| PLB

|06EA23| JSR ProjectSpriteSpeedTowardsLink

|06EA26| PLB

|06EA27| RTL

;===================================================================================================

ProjectSpriteSpeedTowardsLocation_long:
|06EA28| PHB
|06EA29| PHK
|06EA2A| PLB

|06EA2B| JSR ProjectSpriteSpeedTowardsLocation

|06EA2E| PLB

|06EA2F| RTL

;===================================================================================================

ProjectSpriteSpeedTowardsLocation_InstantExit:
|06EA30| STZ.b $00

|06EA32| RTS

;---------------------------------------------------------------------------------------------------

ProjectSpriteSpeedTowardsLocation:
|06EA33| STA.b $01

|06EA35| CMP.b #$00
|06EA37| BEQ ProjectSpriteSpeedTowardsLocation_InstantExit

|06EA39| PHX
|06EA3A| PHY

|06EA3B| JSR GetYDisplacement
|06EA3E| STY.b $02

|06EA40| LDA.b $0E
|06EA42| BPL .positive_y

|06EA44| EOR.b #$FF
|06EA46| INC A

.positive_y
|06EA47| STA.b $0C

;---------------------------------------------------------------------------------------------------

|06EA49| JSR GetXDisplacement
|06EA4C| STY.b $03

|06EA4E| LDA.b $0F
|06EA50| BPL .positive_x

|06EA52| EOR.b #$FF
|06EA54| INC A

.positive_x
|06EA55| STA.b $0D

;---------------------------------------------------------------------------------------------------

|06EA57| LDY.b #$00

|06EA59| LDA.b $0D
|06EA5B| CMP.b $0C
|06EA5D| BCS .x_is_bigger

|06EA5F| INY

|06EA60| PHA

|06EA61| LDA.b $0C
|06EA63| STA.b $0D

|06EA65| PLA
|06EA66| STA.b $0C

.x_is_bigger
|06EA68| STZ.b $0B
|06EA6A| STZ.b $00

|06EA6C| LDX.b $01

;---------------------------------------------------------------------------------------------------

.next
|06EA6E| LDA.b $0B
|06EA70| CLC
|06EA71| ADC.b $0C

|06EA73| CMP.b $0D
|06EA75| BCC .dont_accumulate

|06EA77| SBC.b $0D
|06EA79| INC.b $00

.dont_accumulate
|06EA7B| STA.b $0B

|06EA7D| DEX
|06EA7E| BNE .next

;---------------------------------------------------------------------------------------------------

|06EA80| TYA
|06EA81| BEQ .x_was_bigger

|06EA83| LDA.b $00
|06EA85| PHA

|06EA86| LDA.b $01
|06EA88| STA.b $00

|06EA8A| PLA
|06EA8B| STA.b $01

;---------------------------------------------------------------------------------------------------

.x_was_bigger
|06EA8D| LDA.b $00
|06EA8F| LDY.b $02
|06EA91| BEQ .sign_correct_y

|06EA93| EOR.b #$FF
|06EA95| INC A
|06EA96| STA.b $00

.sign_correct_y
|06EA98| LDA.b $01
|06EA9A| LDY.b $03
|06EA9C| BEQ .sign_correct_x

|06EA9E| EOR.b #$FF
|06EAA0| INC A
|06EAA1| STA.b $01

.sign_correct_x
|06EAA3| PLY
|06EAA4| PLX

|06EAA5| RTS

;===================================================================================================
; Returns with Y:
;   0 - right
;   1 - left
;   2 - down
;   3 - up
;===================================================================================================
GetDirectionTowardsLink_long:
|06EAA6| JSR GetDirectionTowardsLink

|06EAA9| RTL

;===================================================================================================

GetDirectionTowardsLink:
|06EAAA| JSR GetXDisplacementFromLink
|06EAAD| STY.b $00

|06EAAF| JSR GetYDisplacementFromLink
|06EAB2| STY.b $01

|06EAB4| LDA.b $0E
|06EAB6| BPL .positive_y

|06EAB8| EOR.b #$FF
|06EABA| INC A

.positive_y
|06EABB| STA.w $0FB5

|06EABE| LDA.b $0F
|06EAC0| BPL .positive_x

|06EAC2| EOR.b #$FF
|06EAC4| INC A

.positive_x
|06EAC5| CMP.w $0FB5
|06EAC8| BCC .use_y_axis

.use_x_axis
|06EACA| LDY.b $00

|06EACC| RTS

;---------------------------------------------------------------------------------------------------

.use_y_axis
|06EACD| LDA.b $01
|06EACF| INC A
|06EAD0| INC A
|06EAD1| TAY

|06EAD2| RTS

;===================================================================================================

GetXDisplacementFromLink_long:
|06EAD3| JSR GetXDisplacementFromLink

|06EAD6| RTL

;===================================================================================================

GetXDisplacementFromLink:
|06EAD7| LDY.b #$00

|06EAD9| LDA.b $22
|06EADB| SEC
|06EADC| SBC.w $0D10,X
|06EADF| STA.b $0F

|06EAE1| LDA.b $23
|06EAE3| SBC.w $0D30,X
|06EAE6| BPL .exit

|06EAE8| INY

.exit
|06EAE9| RTS

;===================================================================================================

GetYDisplacementFromLink_long:
|06EAEA| JSR GetYDisplacementFromLink

|06EAED| RTL

;===================================================================================================

GetYDisplacementFromLink: 
|06EAEE| LDY.b #$00

|06EAF0| LDA.b $20
|06EAF2| CLC
|06EAF3| ADC.b #$08
|06EAF5| PHP

|06EAF6| CLC
|06EAF7| ADC.w $0F70,X

|06EAFA| PHP

|06EAFB| SEC
|06EAFC| SBC.w $0D00,X
|06EAFF| STA.b $0E

|06EB01| LDA.b $21
|06EB03| SBC.w $0D20,X

|06EB06| PLP
|06EB07| ADC.b #$00

|06EB09| PLP
|06EB0A| ADC.b #$00
|06EB0C| BPL .exit

|06EB0E| INY

.exit
|06EB0F| RTS

;===================================================================================================

GetXDisplacement:
|06EB10| LDY.b #$00

|06EB12| LDA.b $04
|06EB14| SEC
|06EB15| SBC.w $0D10,X
|06EB18| STA.b $0F

|06EB1A| LDA.b $05
|06EB1C| SBC.w $0D30,X
|06EB1F| BPL .exit

|06EB21| INY

.exit
|06EB22| RTS

;===================================================================================================

GetYDisplacement:
|06EB23| LDY.b #$00

|06EB25| LDA.b $06
|06EB27| SEC
|06EB28| SBC.w $0D00,X
|06EB2B| STA.b $0E

|06EB2D| LDA.b $07
|06EB2F| SBC.w $0D20,X
|06EB32| BPL .exit

|06EB34| INY

.exit
|06EB35| RTS

;===================================================================================================

GetDirectionTowardsPoint:
|06EB36| PHB
|06EB37| PHK
|06EB38| PLB

|06EB39| JSR GetXDisplacement
|06EB3C| STY.b $00

|06EB3E| JSR GetYDisplacement
|06EB41| STY.b $01

|06EB43| LDA.b $0E
|06EB45| BPL .positive_y

|06EB47| EOR.b #$FF
|06EB49| INC A

.positive_y
|06EB4A| STA.w $0FB5

|06EB4D| LDA.b $0F
|06EB4F| BPL .positive_x

|06EB51| EOR.b #$FF
|06EB53| INC A

.positive_x
|06EB54| CMP.w $0FB5
|06EB57| BCC .use_y_axis

.use_x_axis
|06EB59| LDY.b $00

|06EB5B| PLB

|06EB5C| RTL

;---------------------------------------------------------------------------------------------------

.use_y_axis
|06EB5D| LDA.b $01
|06EB5F| INC A
|06EB60| INC A
|06EB61| TAY

|06EB62| PLB

|06EB63| RTL

;===================================================================================================
; TODO rename I think?
;===================================================================================================
ParrySwordAttacks:
|06EB64| PHB
|06EB65| PHK
|06EB66| PLB

|06EB67| JSR .main

|06EB6A| PLB

|06EB6B| RTL

;---------------------------------------------------------------------------------------------------

.recoil_timer_guard
|06EB6C| db 15, 15, 24, 15
|06EB70| db 15, 19, 15, 15

.recoil_timer_link
|06EB74| db  6,  6,  6, 12
|06EB78| db  6,  6,  6, 15

;---------------------------------------------------------------------------------------------------

.main
|06EB7C| LDA.b $EE
|06EB7E| CMP.w $0F20,X
|06EB81| BNE .different_layer

|06EB83| LDA.b $46
|06EB85| ORA.b $4D

.different_layer
|06EB87| BNE .exit

|06EB89| LDA.w $0EF0,X
|06EB8C| BMI .exit

;---------------------------------------------------------------------------------------------------

|06EB8E| JSR DoSpriteHitboxesFast

|06EB91| LDA.w $037A
|06EB94| AND.b #$10
|06EB96| BNE .fail_now

|06EB98| LDA.b $44
|06EB9A| CMP.b #$80
|06EB9C| BEQ .fail_now

|06EB9E| JSR SetupActionHitbox

|06EBA1| LDA.b $3C
|06EBA3| BMI .continue

|06EBA5| JSR CheckIfHitboxesOverlap
|06EBA8| BCC .continue

|06EBAA| LDA.w $0E20,X
|06EBAD| CMP.b #$6A ; SPRITE 6A
|06EBAF| BEQ .is_bnc

|06EBB1| JSL GetRandomNumber
|06EBB5| AND.b #$07
|06EBB7| TAY

|06EBB8| LDA.w .recoil_timer_guard,Y
|06EBBB| STA.w $0EA0,X

;---------------------------------------------------------------------------------------------------

.is_bnc
|06EBBE| JSL GetRandomNumber
|06EBC2| AND.b #$07
|06EBC4| TAY

|06EBC5| LDA.w .recoil_timer_link,Y
|06EBC8| STA.b $46

|06EBCA| LDA.b #$18

|06EBCC| LDY.b $3C
|06EBCE| CPY.b #$09
|06EBD0| BPL .not_a_poke_a

|06EBD2| LDA.b #$20

.not_a_poke_a
|06EBD4| JSR ProjectSpriteSpeedTowardsLink

|06EBD7| LDA.b $00
|06EBD9| EOR.b #$FF
|06EBDB| INC A
|06EBDC| STA.w $0F30,X

|06EBDF| LDA.b $01
|06EBE1| EOR.b #$FF
|06EBE3| INC A
|06EBE4| STA.w $0F40,X

|06EBE7| LDA.b #$10

|06EBE9| LDY.b $3C
|06EBEB| CPY.b #$09
|06EBED| BPL .not_a_poke_b

|06EBEF| LDA.b #$08

.not_a_poke_b
|06EBF1| JSR ApplyRecoilToLink
|06EBF4| JSR PlaceWeaponTinkAtLink

|06EBF7| LDA.b #$90
|06EBF9| STA.b $47

.exit
|06EBFB| RTS

;===================================================================================================

.continue
|06EBFC| JSR SetupSpriteHitbox
|06EBFF| JSR CheckIfHitboxesOverlap
|06EC02| BCS TestSwordDamage

.fail_now
|06EC04| JML AttemptDamageToLinkWithCollisionCheck

;===================================================================================================

TestSwordDamage:
|06EC08| LDA.w $0E20,X

; Aga always zaps
|06EC0B| CMP.b #$7A ; SPRITE 7A
|06EC0D| BEQ .get_zapped

|06EC0F| CMP.b #$0D ; SPRITE 0D
|06EC11| BNE .not_buzzblob

; sword 4+ means no zap
|06EC13| LDA.l $7EF359
|06EC17| CMP.b #$04
|06EC19| BCC .get_zapped

.not_buzzblob
|06EC1B| CMP.b #$24 ; SPRITE 24
|06EC1D| BEQ .blue_baritone_saxamaphone

; red tenor saxophone
|06EC1F| CMP.b #$23 ; SPRITE 23
|06EC21| BNE .no_zap_damage

.blue_baritone_saxamaphone
|06EC23| LDA.w $0DF0,X
|06EC26| BEQ .no_zap_damage

;---------------------------------------------------------------------------------------------------

.get_zapped
|06EC28| LDA.w $0DD0,X
|06EC2B| CMP.b #$09
|06EC2D| BNE .no_zap_damage

|06EC2F| LDA.w $031F
|06EC32| BNE .exit

|06EC34| LDA.b #$40
|06EC36| STA.w $0E00,X

|06EC39| STA.w $0360

|06EC3C| JSR AttemptDamageToLinkPlusRecoil

.exit
|06EC3F| RTS

;---------------------------------------------------------------------------------------------------

.no_zap_damage
; Slower recoil for charged sword?
|06EC40| LDA.b #$50

|06EC42| LDY.b $3C
|06EC44| CPY.b #$09
|06EC46| BMI .not_charged

|06EC48| LDA.b #$40

.not_charged
|06EC4A| JSR ProjectSpriteSpeedTowardsLink

|06EC4D| LDA.b $00
|06EC4F| EOR.b #$FF
|06EC51| INC A
|06EC52| STA.w $0F30,X

|06EC55| LDA.b $01
|06EC57| EOR.b #$FF
|06EC59| INC A
|06EC5A| STA.w $0F40,X

|06EC5D| JSL CheckSwordDamageToSprite

|06EC61| RTS

;===================================================================================================

CheckMedallionDamageToSprite:
|06EC62| LDA.w $0C4A,X
|06EC65| STA.w $0FB5

|06EC68| LDX.b #$0F

.next
|06EC6A| LDA.w $0DD0,X
|06EC6D| CMP.b #$09
|06EC6F| BCC .skip

|06EC71| LDA.w $0BA0,X
|06EC74| ORA.w $0F00,X
|06EC77| BNE .skip

|06EC79| LDA.w $0FB5
|06EC7C| JSL CheckAncillaDamageToSprite_aggressive

.skip
|06EC80| DEX
|06EC81| BPL .next

|06EC83| RTL

;===================================================================================================

AncillaDamageClasses:
|06EC84| db $06 ; NOTHING
|06EC85| db $01 ; SOMARIA BULLET
|06EC86| db $0B ; FIRE ROD SHOT
|06EC87| db $00 ; UNUSED
|06EC88| db $00 ; BEAM HIT
|06EC89| db $00 ; BOOMERANG
|06EC8A| db $00 ; WALL HIT
|06EC8B| db $08 ; BOMB
|06EC8C| db $00 ; DOOR DEBRIS
|06EC8D| db $06 ; ARROW
|06EC8E| db $00 ; LODGED ARROW
|06EC8F| db $0C ; ICE ROD SHOT
|06EC90| db $01 ; SWORD BEAM
|06EC91| db $00 ; SPIN ATTACK FULL CHARGE SPARK
|06EC92| db $00 ; BLAST WALL EXPLOSION
|06EC93| db $00 ; BLAST WALL EXPLOSION
|06EC94| db $00 ; BLAST WALL EXPLOSION
|06EC95| db $01 ; ICE ROD WALL HIT
|06EC96| db $00 ; BLAST WALL EXPLOSION
|06EC97| db $00 ; ICE ROD SPARKLE
|06EC98| db $00 ; BAD POINTER
|06EC99| db $00 ; SPLASH
|06EC9A| db $00 ; HIT STARS
|06EC9B| db $00 ; SHOVEL DIRT
|06EC9C| db $0E ; ETHER SPELL
|06EC9D| db $0D ; BOMBOS SPELL
|06EC9E| db $00 ; POWDER DUST
|06EC9F| db $00 ; SWORD WALL HIT
|06ECA0| db $0F ; QUAKE SPELL
|06ECA1| db $00 ; SCREEN SHAKE
|06ECA2| db $00 ; DASH DUST
|06ECA3| db $07 ; HOOKSHOT
|06ECA4| db $01 ; BLANKET
|06ECA5| db $01 ; SNORE
|06ECA6| db $01 ; ITEM GET
|06ECA7| db $01 ; LINK POOF
|06ECA8| db $01 ; GRAVESTONE
|06ECA9| db $01 ; BAD POINTER
|06ECAA| db $01 ; SWORD SWING SPARKLE
|06ECAB| db $01 ; DUCK
|06ECAC| db $01 ; WISH POND ITEM
|06ECAD| db $01 ; MILESTONE ITEM GET
|06ECAE| db $01 ; SPIN ATTACK SPARKLE A
|06ECAF| db $01 ; SPIN ATTACK SPARKLE B
|06ECB0| db $01 ; SOMARIA BLOCK
|06ECB1| db $01 ; SOMARIA BLOCK FIZZ
|06ECB2| db $01 ; SOMARIA BLOCK FISSION
|06ECB3| db $0B ; LAMP FLAME
|06ECB4| db $00 ; BYRNA WINDUP SPARK
|06ECB5| db $01 ; BYRNA SPARK
|06ECB6| db $01 ; BLAST WALL FIREBALL
|06ECB7| db $01 ; BLAST WALL EXPLOSION
|06ECB8| db $01 ; SKULL WOODS FIRE
|06ECB9| db $01 ; MASTER SWORD GET
|06ECBA| db $01 ; FLUTE
|06ECBB| db $01 ; WEATHERVANE EXPLOSION
|06ECBC| db $01 ; CUTSCENE DUCK

;===================================================================================================

CheckAncillaDamageToSprite:
|06ECBD| LDY.w $0EF0,X
|06ECC0| BPL CheckAncillaDamageToSprite_aggressive

|06ECC2| RTL

;===================================================================================================

CheckAncillaDamageToSprite_aggressive:
|06ECC3| PHX

|06ECC4| TAX
|06ECC5| LDA.l AncillaDamageClasses,X

|06ECC9| PLX

|06ECCA| CMP.b #$06
|06ECCC| BNE CheckAncillaDamageToSprite_preset

|06ECCE| PHA

|06ECCF| LDA.l $7EF340
|06ECD3| CMP.b #$03

|06ECD5| PLA
|06ECD6| BCC CheckAncillaDamageToSprite_preset

|06ECD8| LDA.w $0E20,X
|06ECDB| CMP.b #$D7 ; SPRITE D7
|06ECDD| BNE .not_ganon

|06ECDF| LDA.b #$20
|06ECE1| STA.w $0F10,X

.not_ganon
|06ECE4| LDA.b #$09

;===================================================================================================

#CheckAncillaDamageToSprite_preset:
|06ECE6| CMP.b #$0F
|06ECE8| BNE .not_quake_against_airborne

|06ECEA| LDY.w $0F70,X
|06ECED| BEQ .not_quake_against_airborne

|06ECEF| RTL

;---------------------------------------------------------------------------------------------------

.not_quake_against_airborne
|06ECF0| CMP.b #$00
|06ECF2| BEQ .not_airborne

|06ECF4| CMP.b #$07
|06ECF6| BNE .apply

;---------------------------------------------------------------------------------------------------

.not_airborne
|06ECF8| JSL .apply

|06ECFC| LDA.w $0CE2,X
|06ECFF| BNE .exit

|06ED01| LDA.w $0FAC
|06ED04| BNE .exit

|06ED06| LDA.b #$05
|06ED08| STA.w $0FAC

|06ED0B| LDY.w $0FB6

|06ED0E| LDA.w $0C04,Y
|06ED11| ADC.b #$04
|06ED13| STA.w $0FAD

|06ED16| LDA.w $0BFA,Y
|06ED19| STA.w $0FAE

|06ED1C| LDA.b $EE
|06ED1E| STA.w $0B68

|06ED21| STZ.w $012E

|06ED24| LDA.b #$05 ; SFX2.05
|06ED26| JSL QueueSpriteSFX2WithPan

.exit
|06ED2A| RTL

;---------------------------------------------------------------------------------------------------

.apply
|06ED2B| STA.w $0CF2

|06ED2E| TAY

|06ED2F| LDA.b #$20

|06ED31| CPY.b #$08
|06ED33| BNE .not_bomb_damage

|06ED35| LDA.b #$35

.not_bomb_damage
|06ED37| BRA ApplyDamageToSprite

;===================================================================================================

pool CheckSwordDamageToSprite

.damage_class
;             fs   ms   ts   gs
|06ED39| db $01, $02, $03, $04 ; slash/dash
|06ED3D| db $02, $03, $04, $05 ; spin
|06ED41| db $01, $01, $02, $03 ; poke

endpool

;---------------------------------------------------------------------------------------------------

CheckSwordDamageToSprite:
|06ED45| LDA.w $0E60,X
|06ED48| AND.b #$40
|06ED4A| BEQ .vulnerable_to_sword

|06ED4C| RTL

;---------------------------------------------------------------------------------------------------

.vulnerable_to_sword
|06ED4D| LDA.w $0372
|06ED50| STA.l $7FFA4C,X

|06ED54| PHX

|06ED55| LDA.l $7EF359
|06ED59| DEC A

; if dashing, use same as slash
|06ED5A| LDX.w $0372
|06ED5D| BNE .set_damage_class

|06ED5F| BRA .check_if_spinning

.spinning
|06ED61| ORA.b #$04
|06ED63| BRA .set_damage_class

.check_if_spinning
|06ED65| LDX.b $3C
|06ED67| BMI .spinning

; 9+ = poke
|06ED69| CPX.b #$09
|06ED6B| BMI .set_damage_class

|06ED6D| ORA.b #$08

.set_damage_class
|06ED6F| TAX

|06ED70| LDA.l .damage_class,X
|06ED74| STA.w $0CF2

|06ED77| LDA.w $0301
|06ED7A| AND.b #$0A
|06ED7C| BEQ .not_hammer

; force class 3 damage for hammer
|06ED7E| LDA.b #$03
|06ED80| STA.w $0CF2

.not_hammer
|06ED83| LDA.b #$04
|06ED85| STA.w $02E3

|06ED88| PLX

|06ED89| LDA.b #$10
|06ED8B| STA.b $47

|06ED8D| LDA.b #$9D

;===================================================================================================

ApplyDamageToSprite:
|06ED8F| STA.b $00

|06ED91| STZ.w $0CF3

|06ED94| LDA.w $0E60,X
|06ED97| AND.b #$40
|06ED99| BNE .exit_a

|06ED9B| LDA.b #$00
|06ED9D| XBA

; These high ID sprites just take no damage
|06ED9E| LDA.w $0E20,X
|06EDA1| CMP.b #$D8 ; SPRITE D8
|06EDA3| BCC .not_absorbable

.exit_a
|06EDA5| RTL

;---------------------------------------------------------------------------------------------------

.not_absorbable
|06EDA6| REP #$20

|06EDA8| ASL A ; x16
|06EDA9| ASL A
|06EDAA| ASL A
|06EDAB| ASL A

|06EDAC| ORA.w $0CF2

|06EDAF| PHX

|06EDB0| REP #$10

|06EDB2| TAX

|06EDB3| SEP #$20

|06EDB5| LDA.l $7F6000,X
|06EDB9| STA.b $02

|06EDBB| SEP #$10

|06EDBD| LDA.w $0CF2
|06EDC0| ASL A ; x8
|06EDC1| ASL A
|06EDC2| ASL A
|06EDC3| ORA.b $02
|06EDC5| TAX

|06EDC6| LDA.l DamageSubclassValue,X

|06EDCA| PLX

;===================================================================================================

#DamageAgahnimWithBalls:
|06EDCB| CMP.b #$F9
|06EDCD| BNE .dont_fairyize

|06EDCF| LDA.b #$E3 ; SPRITE E3

;---------------------------------------------------------------------------------------------------

.transmute_to_sprite
|06EDD1| STA.w $0E20,X

|06EDD4| JSL LoadSpriteProperties
|06EDD8| JSL SpawnPoofGarnish

|06EDDC| STZ.w $012F

|06EDDF| LDA.b #$32 ; SFX3.32
|06EDE1| JSL QueueSpriteSFX3WithPan

|06EDE5| JMP.w .clear_queued_damage

;---------------------------------------------------------------------------------------------------

.dont_fairyize
|06EDE8| CMP.b #$FA
|06EDEA| BNE .dont_blobbify

|06EDEC| LDA.b #$8F ; SPRITE 8F
|06EDEE| JSL .transmute_to_sprite

|06EDF2| LDA.b #$02
|06EDF4| STA.w $0D80,X

|06EDF7| LDA.b #$20
|06EDF9| STA.w $0F80,X

|06EDFC| LDA.b #$08
|06EDFE| STA.w $0F50,X

|06EE01| STZ.w $0EA0,X
|06EE04| STZ.w $0EF0,X
|06EE07| STZ.w $0E50,X

|06EE0A| LDA.b #$01
|06EE0C| STA.w $0CD2,X

|06EE0F| STA.w $0BE0,X

|06EE12| RTL

;---------------------------------------------------------------------------------------------------

.dont_blobbify
|06EE13| CMP.w $0CE2,X
|06EE16| BCC .new_damage_less

|06EE18| STA.w $0CE2,X

.new_damage_less
|06EE1B| CMP.b #$00
|06EE1D| BNE .non_zero_damage

|06EE1F| LDA.w $0CF2
|06EE22| CMP.b #$0A
|06EE24| BEQ .powder_damage

|06EE26| LDA.w $0B6B,X
|06EE29| AND.b #$04
|06EE2B| BNE .early_phase_helma

|06EE2D| STZ.w $02E3

; !WEIRD powder can reset damage, and it's intentional
.powder_damage
|06EE30| JMP.w .clear_queued_damage

.non_zero_damage
|06EE33| CMP.b #$FE
|06EE35| BCC .sub_frozen

|06EE37| LDA.w $0DD0,X
|06EE3A| CMP.b #$0B
|06EE3C| BEQ .powder_damage

.sub_frozen
|06EE3E| LDA.w $0E20,X
|06EE41| CMP.b #$9A ; SPRITE 9A
|06EE43| BNE .dont_reset_kyameron

|06EE45| LDY.w $0CE2,X
|06EE48| CPY.b #$F0
|06EE4A| BCS .dont_reset_kyameron

|06EE4C| LDA.b #$09
|06EE4E| STA.w $0DD0,X

|06EE51| LDA.b #$04
|06EE53| STA.w $0D80,X

|06EE56| LDA.b #$0F
|06EE58| STA.w $0DF0,X

|06EE5B| LDA.b #$28 ; SFX2.28
|06EE5D| JSL QueueSpriteSFX2WithPan

|06EE61| RTL

;---------------------------------------------------------------------------------------------------

.dont_reset_kyameron
|06EE62| CMP.b #$1B ; SPRITE 1B
|06EE64| BNE .not_arrow

;===================================================================================================

#SpriteArrow_Break:
|06EE66| LDA.b #$05 ; SFX2.05
|06EE68| JSL QueueSpriteSFX2WithPan

|06EE6C| JSR ScheduleForBreakage
|06EE6F| JSL PlaceWeaponTinkAtSprite

|06EE73| RTL

;===================================================================================================

.not_arrow
|06EE74| PHA

|06EE75| LDA.b $00
|06EE77| STA.w $0EF0,X

|06EE7A| PLA
|06EE7B| CMP.b #$92 ; SPRITE 92
|06EE7D| BNE .not_king_helma

|06EE7F| LDA.w $0DB0,X
|06EE82| CMP.b #$03
|06EE84| BCC .early_phase_helma

;---------------------------------------------------------------------------------------------------

.not_king_helma
|06EE86| LDY.b #$21 ; SFX3.21

|06EE88| LDA.w $0B6B,X
|06EE8B| AND.b #$02
|06EE8D| BNE .set_damage_sfx

|06EE8F| LDY.b #$08 ; SFX3.08

|06EE91| LDA.w $0BE0,X
|06EE94| AND.b #$10
|06EE96| BEQ .set_damage_sfx

|06EE98| LDY.b #$1C ; SFX3.1C

.set_damage_sfx
|06EE9A| STY.b $01

|06EE9C| JSL CalculateSpriteSFXPan
|06EEA0| ORA.b $01
|06EEA2| STA.w $012F

;---------------------------------------------------------------------------------------------------

.early_phase_helma
|06EEA5| LDA.b #$00

|06EEA7| LDY.w $0CF2
|06EEAA| CPY.b #$0D
|06EEAC| BCS .set_iframe_timer

|06EEAE| LDY.w $0E20,X

|06EEB1| LDA.b #$14

|06EEB3| CPY.b #$09 ; SPRITE 09
|06EEB5| BEQ .set_iframe_timer

|06EEB7| LDA.b #$0F
|06EEB9| CPY.b #$53 ; SPRITE 53
|06EEBB| BEQ .eleven_frames_of_armos

|06EEBD| CPY.b #$18 ; SPRITE 18
|06EEBF| BNE .set_iframe_timer

.eleven_frames_of_armos
|06EEC1| LDA.b #$0B

.set_iframe_timer
|06EEC3| STA.w $0EA0,X

|06EEC6| RTL

;---------------------------------------------------------------------------------------------------

.clear_queued_damage
|06EEC7| STZ.w $0EF0,X
|06EECA| STZ.w $0CE2,X

|06EECD| RTL

;===================================================================================================

HandleSpriteDamageApplication:
|06EECE| LDA.w $0DD0,X
|06EED1| CMP.b #$09
|06EED3| BCC .exit_b

|06EED5| STA.w $0FB5

|06EED8| LDA.w $0CE2,X
|06EEDB| CMP.b #$FD
|06EEDD| BNE .not_burning

|06EEDF| STZ.w $0CE2,X

|06EEE2| LDA.b #$09 ; SFX3.09
|06EEE4| JSL QueueSpriteSFX3WithPan

|06EEE8| LDA.b #$07
|06EEEA| STA.w $0DD0,X

|06EEED| LDA.b #$70
|06EEEF| STA.w $0DF0,X

|06EEF2| LDA.w $0E40,X
|06EEF5| INC A
|06EEF6| INC A
|06EEF7| STA.w $0E40,X

|06EEFA| STZ.w $0CE2,X

.exit_b
|06EEFD| RTS

;---------------------------------------------------------------------------------------------------

.not_burning
|06EEFE| CMP.b #$FB
|06EF00| BCC .transmutation

|06EF02| STZ.w $0CE2,X

|06EF05| STA.b $00

|06EF07| LDY.w $0DD0,X
|06EF0A| CPY.b #$0B
|06EF0C| BEQ .exit_b

|06EF0E| LDY.b #$00

|06EF10| CMP.b #$FE
|06EF12| BNE .not_freeze

|06EF14| INY

.not_freeze
|06EF15| TYA
|06EF16| STA.l $7FFA3C,X
|06EF1A| BEQ .sprite_not_frozen

|06EF1C| LDA.w $0CAA,X
|06EF1F| ORA.b #$08
|06EF21| STA.w $0CAA,X

|06EF24| ASL.w $0BE0,X
|06EF27| LSR.w $0BE0,X

|06EF2A| LDA.b #$0F ; SFX2.0F
|06EF2C| JSL QueueSpriteSFX2WithPan

|06EF30| LDA.b #$18
|06EF32| STA.w $0F80,X

|06EF35| ASL.w $0CD2,X
|06EF38| LSR.w $0CD2,X

|06EF3B| JSR ZeroVelocityXY_bank06

;---------------------------------------------------------------------------------------------------

.sprite_not_frozen
|06EF3E| LDA.b #$0B
|06EF40| STA.w $0DD0,X

|06EF43| LDA.b #$40
|06EF45| STA.w $0DF0,X

|06EF48| LDA.b $00
|06EF4A| CLC
|06EF4B| ADC.b #$05
|06EF4D| TAY

|06EF4E| LDA.w .stun_timers,Y
|06EF51| STA.w $0B58,X

; [WTF] Red bari become blue when stunned
; but they can only be stunned by quake
; which doesn't work on floating enemies
|06EF54| LDA.w $0E20,X
|06EF57| CMP.b #$23 ; SPRITE 23
|06EF59| BNE .not_a_red_bari

|06EF5B| INC A
|06EF5C| STA.w $0E20,X

.not_a_red_bari
|06EF5F| JMP.w .exit_c

;---------------------------------------------------------------------------------------------------

.stun_timers
|06EF62| db  32 ; 0xFB
|06EF63| db 128 ; 0xFC
|06EF64| db   0 ; 0xFD
|06EF65| db   0 ; 0xFE
|06EF66| db 255 ; 0xFF

;---------------------------------------------------------------------------------------------------

.transmutation
|06EF67| LDA.w $0E50,X
|06EF6A| STA.b $00

|06EF6C| SEC
|06EF6D| SBC.w $0CE2,X
|06EF70| STA.w $0E50,X

|06EF73| STZ.w $0CE2,X

|06EF76| BEQ .zero_hp_now
|06EF78| BCS .exit_c

.zero_hp_now
|06EF7A| LDA.w $0CBA,X
|06EF7D| BNE .no_forced_drop

|06EF7F| LDA.w $0DD0,X
|06EF82| CMP.b #$0B
|06EF84| BNE .not_currently_stunned

|06EF86| LDA.b #$03
|06EF88| STA.w $0CBA,X

;---------------------------------------------------------------------------------------------------

.not_currently_stunned
|06EF8B| LDA.l $7FFA4C,X
|06EF8F| BEQ .no_forced_drop

|06EF91| LDA.b #$00
|06EF93| STA.l $7FFA4C,X

|06EF97| STZ.w $0BE0,X

.no_forced_drop
|06EF9A| LDY.w $0E20,X
|06EF9D| CPY.b #$1B ; SPRITE 1B
|06EF9F| BEQ .no_arrow_sfx

|06EFA1| LDA.b #$09 ; SFX3.09
|06EFA3| JSL QueueSpriteSFX3WithPan

.no_arrow_sfx
|06EFA7| CPY.b #$40 ; SPRITE 40
|06EFA9| BNE .not_aga_barrier

|06EFAB| PHX

|06EFAC| LDX.b $8A

|06EFAE| LDA.l $7EF280,X
|06EFB2| ORA.b #$40
|06EFB4| STA.l $7EF280,X

|06EFB8| PLX

;---------------------------------------------------------------------------------------------------

.not_aga_barrier
|06EFB9| TYA
|06EFBA| CMP.b #$EC ; SPRITE EC
|06EFBC| BNE .not_a_thrown_item

|06EFBE| LDY.w $0DB0,X
|06EFC1| CPY.b #$02
|06EFC3| BNE .exit_c

|06EFC5| JMP.w TransmuteThrowableToDebris

.not_a_thrown_item
|06EFC8| PHA

|06EFC9| LDA.w $0DD0,X
|06EFCC| CMP.b #$0A
|06EFCE| BNE .not_being_carried

|06EFD0| STZ.w $0308
|06EFD3| STZ.w $0309

.not_being_carried
|06EFD6| LDA.b #$06
|06EFD8| STA.w $0DD0,X

|06EFDB| PLA
|06EFDC| CMP.b #$0C ; SPRITE 0C
|06EFDE| BNE AttemptKillingOfKin

;===================================================================================================

#PrepareSpriteToDie:
|06EFE0| LDA.b #$06
|06EFE2| STA.w $0DD0,X

|06EFE5| LDA.b #$1F
|06EFE7| STA.w $0DF0,X

|06EFEA| JSR SetOAMAllotmentTo4

;---------------------------------------------------------------------------------------------------

.exit_c
|06EFED| RTS

;===================================================================================================

AttemptKillingOfKin:
|06EFEE| CMP.b #$92 ; SPRITE 92
|06EFF0| BNE .not_helmasaur_king

|06EFF2| JSL KillFellowSprites

|06EFF6| LDA.b #$FF
|06EFF8| STA.w $0DF0,X

|06EFFB| JMP.w RoarAndDisableMenu

;---------------------------------------------------------------------------------------------------

.not_helmasaur_king
|06EFFE| CMP.b #$CB ; SPRITE CB
|06F000| BNE .not_trinexx_rock

|06F002| JMP.w TrinexxRockScreamAndDie

.not_trinexx_rock
|06F005| CMP.b #$CC ; SPRITE CC
|06F007| BEQ .is_trinexx_fire

|06F009| CMP.b #$CD ; SPRITE CD
|06F00B| BNE .not_trinexx_ice

.is_trinexx_fire
|06F00D| JMP.w SidenexxScreamAndDie

;---------------------------------------------------------------------------------------------------

.not_trinexx_ice
|06F010| CMP.b #$53 ; SPRITE 53
|06F012| BEQ ArmosKnightScreamAndDie

|06F014| CMP.b #$54 ; SPRITE 54
|06F016| BEQ LanmolasScreamAndDie

|06F018| CMP.b #$09 ; SPRITE 09
|06F01A| BEQ MoldormScreamAndDie

|06F01C| CMP.b #$7A ; SPRITE 7A
|06F01E| BNE .not_agahnim

|06F020| JMP.w AgahnimScreamAndDie

;---------------------------------------------------------------------------------------------------

.not_agahnim
|06F023| CMP.b #$23 ; SPRITE 23
|06F025| BEQ RedBariDeathSplit

|06F027| CMP.b #$0F ; SPRITE 0F
|06F029| BNE AttemptKillingOfKin.not_octoballoon

;===================================================================================================

#OctoballoonEXPLOSIONTIME:
|06F02B| STZ.w $0EF0,X

|06F02E| LDA.b #$0F
|06F030| STA.w $0DF0,X

|06F033| RTS

;---------------------------------------------------------------------------------------------------

.not_octoballoon
|06F034| LDA.w $0B6B,X
|06F037| AND.b #$02
|06F039| BNE .am_explode

|06F03B| LDA.w $0EF0,X
|06F03E| ASL A

|06F03F| LDA.b #$0F
|06F041| BCC .delay

|06F043| LDA.b #$1F

.delay
|06F045| STA.w $0DF0,X

|06F048| JMP.w StandardTimeToDie

;===================================================================================================

#UNREACHABLE_06F04B:
|06F04B| RTS

;===================================================================================================

#MoldormScreamAndDie:
|06F04C| LDA.b #$03
|06F04E| STA.w $0D80,X

|06F051| LDA.b #$A0
|06F053| STA.w $0F10,X

|06F056| LDA.b #$09
|06F058| STA.w $0DD0,X

|06F05B| BRA RoarAndDisableMenu

;---------------------------------------------------------------------------------------------------

.am_explode
|06F05D| LDA.w $0E20,X
|06F060| CMP.b #$A2 ; SPRITE A2
|06F062| BEQ .kholdstare

|06F064| JSL KillFellowSprites

.kholdstare
|06F068| LDA.b #$04
|06F06A| STA.w $0DD0,X

|06F06D| STZ.w $0D90,X

|06F070| LDA.b #$FF

;---------------------------------------------------------------------------------------------------

.set_death_timer
|06F072| STA.w $0DF0,X
|06F075| STA.w $0EF0,X

|06F078| BRA RoarAndDisableMenu

;---------------------------------------------------------------------------------------------------

#LanmolasScreamAndDie:
|06F07A| LDA.b #$05
|06F07C| STA.w $0D80,X

|06F07F| LDA.b #$C0
|06F081| BRA .set_death_timer

;===================================================================================================

ArmosKnightScreamAndDie:
|06F083| LDA.b #$23
|06F085| STA.w $0DF0,X

|06F088| STZ.w $0EF0,X

|06F08B| BRA .queue_scream

;===================================================================================================

#RoarAndDisableMenu:
|06F08D| INC.w $0FFC

.queue_scream
|06F090| STZ.w $012F

|06F093| LDA.b #$22 ; SFX3.22
|06F095| JSL QueueSpriteSFX3WithPan

|06F099| RTS

;===================================================================================================

RedBariDeathSplit:
|06F09A| LDA.w $0DB0,X
|06F09D| BNE AttemptKillingOfKin.not_octoballoon

|06F09F| LDA.b #$02
|06F0A1| STA.w $0D80,X

|06F0A4| LDA.b #$20
|06F0A6| STA.w $0DF0,X

|06F0A9| LDA.b #$09
|06F0AB| STA.w $0DD0,X

|06F0AE| STZ.w $0EF0,X

|06F0B1| RTS

;===================================================================================================

SidenexxScreamAndDie:
|06F0B2| LDA.b #$80
|06F0B4| STA.w $0D80,X

|06F0B7| LDA.b #$60
|06F0B9| STA.w $0DF0,X

|06F0BC| LDA.b #$09
|06F0BE| STA.w $0DD0,X

|06F0C1| BRA RoarAndDisableMenu

;===================================================================================================

TrinexxRockScreamAndDie:
|06F0C3| LDA.b #$80
|06F0C5| STA.w $0D80,X

|06F0C8| LDA.b #$80
|06F0CA| STA.w $0DF0,X

|06F0CD| LDA.b #$09
|06F0CF| STA.w $0DD0,X

|06F0D2| BRA RoarAndDisableMenu

;===================================================================================================

AgahnimScreamAndDie:
|06F0D4| JSL KillFellowSprites

|06F0D8| LDA.b #$09
|06F0DA| STA.w $0DD0,X
|06F0DD| STA.w $0BA0,X

|06F0E0| LDA.w $0FFF
|06F0E3| BNE .aga_2

|06F0E5| LDA.b #$0A
|06F0E7| STA.w $0D80,X

|06F0EA| LDA.b #$FF
|06F0EC| STA.w $0DF0,X

|06F0EF| LDA.b #$20
|06F0F1| STA.w $0F80,X

|06F0F4| JMP.w RoarAndDisableMenu

;---------------------------------------------------------------------------------------------------

.aga_2
|06F0F7| LDA.b #$FF
|06F0F9| STA.w $0DF0,X

|06F0FC| LDA.b #$08
|06F0FE| STA.w $0D80,X

|06F101| INC A
|06F102| STA.w $0D81
|06F105| STA.w $0D82

|06F108| STZ.w $0DC1
|06F10B| STZ.w $0DC2

|06F10E| JMP.w RoarAndDisableMenu

;===================================================================================================

StandardTimeToDie:
|06F111| LDA.w $0E40,X
|06F114| CLC
|06F115| ADC.b #$04
|06F117| STA.w $0E40,X

|06F11A| LDA.w $0FB5
|06F11D| CMP.b #$0B
|06F11F| BNE .exit

|06F121| LDA.b #$01
|06F123| STA.w $0BE0,X

.exit
|06F126| RTS

;===================================================================================================
; Tests if the sprite in slot X overlaps with Link's hitbox
;===================================================================================================
CheckDamageToLink_long:
|06F127| PHB
|06F128| PHK
|06F129| PLB

|06F12A| JSR CheckDamageToLink

|06F12D| PLB

|06F12E| RTL

;---------------------------------------------------------------------------------------------------

CheckDamageToLink_same_layer_long:
|06F12F| PHB
|06F130| PHK
|06F131| PLB

|06F132| JSR CheckDamageToLink_same_layer

|06F135| PLB

|06F136| RTL

;---------------------------------------------------------------------------------------------------

CheckDamageToLink_ignore_layer_long:
|06F137| PHB
|06F138| PHK
|06F139| PLB

|06F13A| JSR CheckDamageToLink_ignore_layer

|06F13D| PLB

|06F13E| RTL

;---------------------------------------------------------------------------------------------------

SpriteToLinkDirections:
.opposing
|06F13F| db $04, $06, $00, $02

.standing
|06F143| db $06, $04, $00, $00

.opposing2
|06F147| db $04, $06, $00, $02

;===================================================================================================

CheckDamageToLink:
|06F14B| LDA.w $037B ; invulnerability flag
|06F14E| BNE .no_damage

;===================================================================================================

#CheckDamageToLink_staggered:
|06F150| TXA ; get the sprite's frame rule to limit damage
|06F151| EOR.b $1A ; to every 4 frames
|06F153| AND.b #$03

|06F155| ORA.w $0EF0,X ; skip if enemy is dying or taking damage
|06F158| BNE .no_damage

;===================================================================================================

#CheckDamageToLink_same_layer:
|06F15A| LDA.w $00EE ; are Link and enemy on the same layer?
|06F15D| CMP.w $0F20,X
|06F160| BNE .no_damage2

; !WEIRD
; this right here is a really weird check that probably never comes up...
; apparently, sprites with hitbox 0 have a completely unique method for hitbox?
; unless they have one of the other bits in this variable set...
#CheckDamageToLink_ignore_layer:
|06F162| LDA.w $0F60,X
|06F165| BEQ .use_fast_hitbox_0

|06F167| JSR SetupLinkHitbox
|06F16A| JSR SetupSpriteHitbox
|06F16D| JSR CheckIfHitboxesOverlap

|06F170| BRA .collision_checked

.use_fast_hitbox_0
|06F172| JSR SetupSpriteHitbox00

;---------------------------------------------------------------------------------------------------

.collision_checked
|06F175| LDA.w $0E40,X ; bit7 = sprite is harmless
|06F178| BMI .exit_preserve_check
|06F17A| BCC .no_damage2 ; hitboxes didn't overlap

|06F17C| LDA.b $4D ; Link only takes damage in default state
|06F17E| BNE .no_damage2

|06F180| LDA.w $02E0 ; bunny graphics flag
|06F183| BNE .definitely_getting_hit

|06F185| LDA.w $0308 ; is Link carrying something?
|06F188| BMI .definitely_getting_hit

|06F18A| LDA.w $0BE0,X ; does this sprite die when it hits Link?
|06F18D| AND.b #$20
|06F18F| BEQ .definitely_getting_hit

|06F191| LDA.l $7EF35A ; does Link have a shield?
|06F195| BEQ .definitely_getting_hit

|06F197| STZ.w $0DD0,X ; kill the sprite

|06F19A| LDA.b $2F ; get Link's direction

|06F19C| LDY.b $3C ; is sword out?
|06F19E| BEQ .sword_in

|06F1A0| LSR A
|06F1A1| TAY

|06F1A2| LDA.w SpriteToLinkDirections.standing,Y

.sword_in
|06F1A5| LDY.w $0DE0,X ; sprite's direction

|06F1A8| CMP.w SpriteToLinkDirections.opposing2,Y
|06F1AB| BNE .definitely_getting_hit

|06F1AD| LDA.b #$06 ; SFX2.06
|06F1AF| JSL QueueSpriteSFX2WithPan

|06F1B3| JSL PlaceWeaponTinkAtSprite_forced

|06F1B7| LDA.w $0E20,X
|06F1BA| CMP.b #$95 ; SPRITE 95 - lasers dies with an extra sound
|06F1BC| BNE .not_laser

|06F1BE| LDA.b #$26 ; SFX3.26
|06F1C0| JSL QueueSpriteSFX3WithPan

.no_damage
|06F1C4| CLC

; don't set the carry
.exit_preserve_check
|06F1C5| RTS

;---------------------------------------------------------------------------------------------------

.not_laser
|06F1C6| CMP.b #$9B ; SPRITE 9B - wizzrobe shots reflect back
|06F1C8| BNE .not_wizzrobe_beam

|06F1CA| JSR InvertSpeedXY

|06F1CD| LDA.w $0DE0,X
|06F1D0| EOR.b #$01
|06F1D2| STA.w $0DE0,X

|06F1D5| INC.w $0D80,X

|06F1D8| LDA.b #$09 ; undie
|06F1DA| STA.w $0DD0,X

.no_damage2
|06F1DD| CLC

|06F1DE| RTS

;---------------------------------------------------------------------------------------------------

.not_wizzrobe_beam
|06F1DF| CMP.b #$1B ; SPRITE 1B - special bounce back for arrows
|06F1E1| BEQ .is_arrow

|06F1E3| CMP.b #$0C ; SPRITE 0C - octorok rocks explode
|06F1E5| BEQ .is_rock

|06F1E7| RTS

;---------------------------------------------------------------------------------------------------

.definitely_getting_hit
|06F1E8| JSR AttemptDamageToLinkPlusRecoil

|06F1EB| LDA.w $0E20,X
|06F1EE| CMP.b #$0C ; SPRITE 0C - rocks again
|06F1F0| BNE .is_not_rock

.is_rock
|06F1F2| JSR PrepareSpriteToDie

.is_not_rock
|06F1F5| SEC

|06F1F6| RTS

;---------------------------------------------------------------------------------------------------

#UNREACHABLE_06F1F7:
|06F1F7| CLC

|06F1F8| RTS

;---------------------------------------------------------------------------------------------------

.is_arrow
|06F1F9| JMP.w ScheduleForBreakage

;===================================================================================================
; Why is this different? Was hitbox 00 meant to be faster?
; this only even runs when other bits (e.g. statis) are unset as well.
;===================================================================================================
SetupSpriteHitbox00:
|06F1FC| LDA.w $0F70,X
|06F1FF| STA.b $0C
|06F201| STZ.b $0D

|06F203| REP #$20

|06F205| LDA.b $22
|06F207| SEC
|06F208| SBC.w $0FD8
|06F20B| CLC
|06F20C| ADC.w #$000B

|06F20F| CMP.w #$0017
|06F212| BCS .no_overlap

|06F214| LDA.b $20
|06F216| SEC
|06F217| SBC.w $0FDA
|06F21A| CLC
|06F21B| ADC.b $0C
|06F21D| CLC
|06F21E| ADC.w #$0010

|06F221| CMP.w #$0018
|06F224| BCS .no_overlap

.overlap
|06F226| SEP #$20
|06F228| SEC

|06F229| RTS

.no_overlap
|06F22A| SEP #$20
|06F22C| CLC

|06F22D| RTS

;===================================================================================================

Sprite_CheckIfLifted:
|06F22E| LDA.b $11
|06F230| ORA.b $3C
|06F232| ORA.w $0FC1
|06F235| BNE EXIT_06F2AF

|06F237| LDA.b $EE
|06F239| CMP.w $0F20,X
|06F23C| BNE EXIT_06F2AF

;---------------------------------------------------------------------------------------------------

|06F23E| LDY.b #$0F

.next_sprite
|06F240| LDA.w $0DD0,Y
|06F243| CMP.b #$0A
|06F245| BEQ EXIT_06F2AF

|06F247| DEY
|06F248| BPL .next_sprite

;---------------------------------------------------------------------------------------------------

|06F24A| LDA.w $0E20,X
|06F24D| CMP.b #$0B ; SPRITE 0B
|06F24F| BEQ Sprite_CheckIfLifted_permissive

|06F251| CMP.b #$4A ; SPRITE 4A
|06F253| BEQ Sprite_CheckIfLifted_permissive

|06F255| LDA.w $0D50,X
|06F258| ORA.w $0D40,X
|06F25B| BNE EXIT_06F2AF

;===================================================================================================

#Sprite_CheckIfLifted_permissive:
|06F25D| LDA.w $0372
|06F260| BNE EXIT_06F2AF

|06F262| LDA.w $02F4
|06F265| DEC A
|06F266| CMP.w $0FA0
|06F269| BEQ .get_lifted

|06F26B| JSR SetupLinkHitbox_conditional
|06F26E| JSR SetupSpriteHitbox
|06F271| JSR CheckIfHitboxesOverlap

|06F274| BCC EXIT_06F2AF

|06F276| TXA
|06F277| INC A
|06F278| STA.w $0314
|06F27B| STA.w $0FB2

|06F27E| RTS

;---------------------------------------------------------------------------------------------------

.get_lifted
|06F27F| STZ.b $F6

|06F281| STZ.w $0E90,X

|06F284| LDA.b #$1D ; SFX2.1D
|06F286| JSL QueueSpriteSFX2WithPan

|06F28A| LDA.w $0DD0,X
|06F28D| STA.l $7FFA2C,X

|06F291| LDA.b #$0A
|06F293| STA.w $0DD0,X

|06F296| LDA.b #$10
|06F298| STA.w $0DF0,X

|06F29B| LDA.b #$00 ; TILETYPE 00
|06F29D| STA.l $7FFA1C,X
|06F2A1| STA.l $7FF9C2,X

|06F2A5| JSR GetDirectionTowardsLink

|06F2A8| LDA.w SpriteToLinkDirections.opposing,Y
|06F2AB| STA.b $2F

|06F2AD| PLA
|06F2AE| PLA

;---------------------------------------------------------------------------------------------------

#EXIT_06F2AF:
|06F2AF| RTS

;===================================================================================================

CheckDamageFromLink_long:
|06F2B0| PHB
|06F2B1| PHK
|06F2B2| PLB

|06F2B3| JSR CheckDamageFromLink

|06F2B6| TAY

|06F2B7| PLB

|06F2B8| TYA

|06F2B9| RTL

;===================================================================================================

CheckDamageFromLink:
|06F2BA| LDA.w $0EF0,X
|06F2BD| AND.b #$80
|06F2BF| BNE .dying

|06F2C1| LDA.b $EE
|06F2C3| CMP.w $0F20,X

.dying
|06F2C6| BNE .no_collision

|06F2C8| LDA.b $44
|06F2CA| CMP.b #$80
|06F2CC| BEQ .no_collision

|06F2CE| JSR SetupActionHitbox
|06F2D1| JSR SetupSpriteHitbox
|06F2D4| JSR CheckIfHitboxesOverlap
|06F2D7| BCC .no_collision

|06F2D9| STZ.w $0047

|06F2DC| LDA.w $037A
|06F2DF| AND.b #$10
|06F2E1| BNE EXIT_06F2AF

|06F2E3| LDA.w $0301
|06F2E6| AND.b #$0A
|06F2E8| BEQ .not_frozen_kill

; skip Ganon or higher
|06F2EA| LDA.w $0E20,X
|06F2ED| CMP.b #$D6 ; SPRITE D6
|06F2EF| BCS .no_collision

|06F2F1| LDA.w $0DD0,X
|06F2F4| CMP.b #$0B
|06F2F6| BNE .not_frozen_kill

|06F2F8| LDA.l $7FFA3C,X
|06F2FC| BEQ .not_frozen_kill

|06F2FE| LDA.b #$02
|06F300| STA.w $0DD0,X

|06F303| LDA.b #$20
|06F305| STA.w $0DF0,X

|06F308| LDA.w $0E40,X
|06F30B| AND.b #$E0
|06F30D| ORA.b #$03
|06F30F| STA.w $0E40,X

|06F312| LDA.b #$1F ; SFX2.1F
|06F314| JSL QueueSpriteSFX2WithPan

|06F318| SEC

|06F319| RTS

;---------------------------------------------------------------------------------------------------

.not_frozen_kill
|06F31A| LDA.w $0E20,X
|06F31D| CMP.b #$7B ; SPRITE 7B
|06F31F| BNE .not_aga_ball

|06F321| LDA.b $3C
|06F323| CMP.b #$09
|06F325| BMI .am_slashing

.no_collision
|06F327| JMP.w .fail_and_exit

.am_slashing
|06F32A| JMP.w .check_sword_swing

;---------------------------------------------------------------------------------------------------

.mini_helma
|06F32D| LDY.w $0DE0,X

|06F330| LDA.b $2F
|06F332| CMP.w SpriteToLinkDirections.opposing2,Y
|06F335| BNE CheckDamageFromLink_with_recoil

.stalfos_head
|06F337| JSR CheckDamageFromLink_with_recoil

|06F33A| STZ.w $0EF0,X

|06F33D| JSR PlaceWeaponTinkAtLink

|06F340| JMP.w SpriteDamage_ExitWith00

;===================================================================================================

#CheckDamageFromLink_with_recoil:
|06F343| JSR TestSwordDamage

|06F346| LDA.b #$20
|06F348| JSR ApplyRecoilToLink

|06F34B| LDA.b #$10
|06F34D| STA.b $47
|06F34F| STA.b $46

|06F351| JMP.w SpriteDamage_ExitWith00

;---------------------------------------------------------------------------------------------------

.not_aga_ball
|06F354| CMP.b #$09 ; SPRITE 09
|06F356| BNE .not_moldorm

|06F358| LDA.w $0D90,X
|06F35B| BNE .check_sword_swing

|06F35D| JSR RecoilLinkAndTHUMP

; [BUG] improper function call
|06F360| LDA.b #$32 ; SFX3.32
|06F362| JSL CalculateSpriteSFXPan
|06F366| STA.w $012F

|06F369| JMP.w .place_tink

;---------------------------------------------------------------------------------------------------

.not_moldorm
|06F36C| CMP.b #$92 ; SPRITE 92
|06F36E| BNE .not_helma_king

|06F370| JMP.w KingHelmasaur_ApplyRecoilIfEarlyPhase

;---------------------------------------------------------------------------------------------------

.not_helma_king
; Hardhat beetle
|06F373| CMP.b #$26 ; SPRITE 26
|06F375| BEQ CheckDamageFromLink_with_recoil

; Mini helmasaur
|06F377| CMP.b #$13 ; SPRITE 13
|06F379| BEQ .mini_helma

; Stalfos head
|06F37B| CMP.b #$02 ; SPRITE 02
|06F37D| BEQ .stalfos_head

; Trinexx rock head
|06F37F| CMP.b #$CB ; SPRITE CB
|06F381| BEQ CheckDamageFromLink_apply_normal_recoil

; Trinexx ice head
|06F383| CMP.b #$CD ; SPRITE CD
|06F385| BEQ CheckDamageFromLink_apply_normal_recoil

; Trinexx fire head
|06F387| CMP.b #$CC ; SPRITE CC
|06F389| BEQ CheckDamageFromLink_apply_normal_recoil

; Ganon
|06F38B| CMP.b #$D6 ; SPRITE D6
|06F38D| BEQ CheckDamageFromLink_apply_normal_recoil

; Ganon
|06F38F| CMP.b #$D7 ; SPRITE D7
|06F391| BEQ CheckDamageFromLink_apply_normal_recoil

; Blind
|06F393| CMP.b #$CE ; SPRITE CE
|06F395| BEQ CheckDamageFromLink_apply_normal_recoil

; Lanmolas
|06F397| CMP.b #$54 ; SPRITE 54
|06F399| BNE .check_sword_swing

;===================================================================================================

#CheckDamageFromLink_apply_normal_recoil:
|06F39B| LDA.b #$20
|06F39D| JSR ApplyRecoilToLink

|06F3A0| LDA.b #$90
|06F3A2| STA.b $47

|06F3A4| LDA.b #$10
|06F3A6| STA.b $46

;---------------------------------------------------------------------------------------------------

.check_sword_swing
|06F3A8| LDA.w $0CAA,X
|06F3AB| AND.b #$04
|06F3AD| BNE CheckDamageFromLink_attempt_small_recoil

|06F3AF| JSR TestSwordDamage

|06F3B2| SEC

|06F3B3| BRA SpriteDamage_ExitWith00

;---------------------------------------------------------------------------------------------------

.fail_and_exit
|06F3B5| CLC

|06F3B6| BRA SpriteDamage_ExitWith00

;===================================================================================================

#CheckDamageFromLink_attempt_small_recoil:
|06F3B8| LDA.b $47
|06F3BA| BNE .place_tink

|06F3BC| LDA.b #$04
|06F3BE| JSR ApplyRecoilToLink

|06F3C1| LDA.b #$10
|06F3C3| STA.b $46

|06F3C5| LDA.b #$10
|06F3C7| STA.b $47

.place_tink
|06F3C9| JSR PlaceWeaponTinkAtLink

|06F3CC| SEC

;===================================================================================================

SpriteDamage_ExitWith00:
|06F3CD| LDA.b #$00

|06F3CF| RTS

;===================================================================================================

AttemptDamageToLinkWithCollisionCheck:
|06F3D0| TXA
|06F3D1| EOR.b $1A
|06F3D3| LSR A
|06F3D4| BCS .no_damage

|06F3D6| JSR DoSpriteHitboxesFast

|06F3D9| JSR SetupLinkHitbox_conditional
|06F3DC| JSR CheckIfHitboxesOverlap

|06F3DF| BCC .no_damage

;===================================================================================================

#AttemptDamageToLinkPlusRecoil:
|06F3E1| LDA.w $031F ; make sure Link has no iframes
|06F3E4| ORA.w $037B ; and isn't invulnerable
|06F3E7| BNE .no_damage

|06F3E9| LDA.b #$13
|06F3EB| STA.b $46

|06F3ED| LDA.b #$18
|06F3EF| JSR ApplyRecoilToLink

|06F3F2| LDA.b #$01
|06F3F4| STA.b $4D

|06F3F6| LDA.w $0CD2,X ; get enemy bump damage
|06F3F9| AND.b #$0F
|06F3FB| STA.b $00 ; multiply by 3 for indexing

|06F3FD| ASL A
|06F3FE| ADC.b $00
|06F400| CLC ; add in mail level
|06F401| ADC.l $7EF35B
|06F405| TAY

|06F406| LDA.w BumpDamageGroups,Y
|06F409| STA.w $0373

|06F40C| LDA.w $0E20,X
|06F40F| CMP.b #$61 ; SPRITE 61 - special beamos logic
|06F411| BNE .no_damage

|06F413| LDA.w $0DB0,X
|06F416| BEQ .no_damage

|06F418| LDA.w $0D50,X ; beamos beams recoil you at 2x their speed
|06F41B| ASL A
|06F41C| STA.b $28

|06F41E| LDA.w $0D40,X
|06F421| ASL A
|06F422| STA.b $27

.no_damage
|06F424| RTS

;===================================================================================================

AttemptDamageToLinkPlusRecoil_long:
|06F425| PHB
|06F426| PHK
|06F427| PLB

|06F428| JSR AttemptDamageToLinkPlusRecoil

|06F42B| PLB

|06F42C| RTL

;===================================================================================================

BumpDamageGroups:
;   mail:     G    B    R
|06F42D| db $02, $01, $01 ; 0x00
|06F430| db $04, $04, $04 ; 0x01
|06F433| db $00, $00, $00 ; 0x02
|06F436| db $08, $04, $02 ; 0x03
|06F439| db $08, $08, $08 ; 0x04
|06F43C| db $10, $08, $04 ; 0x05
|06F43F| db $20, $10, $08 ; 0x06
|06F442| db $20, $18, $10 ; 0x07
|06F445| db $18, $10, $08 ; 0x08
|06F448| db $40, $30, $18 ; 0x09

;===================================================================================================

RecoilLinkAndTHUMP:
|06F44B| LDA.b #$30
|06F44D| JSR ApplyRecoilToLink

|06F450| LDA.b #$90
|06F452| STA.b $47

|06F454| LDA.b #$10
|06F456| STA.b $46

|06F458| LDA.b #$21 ; SFX2.21
|06F45A| JSL QueueSpriteSFX2WithPan

|06F45E| LDA.b #$30
|06F460| STA.w $0E00,X

|06F463| JMP.w SpriteDamage_ExitWith00

;===================================================================================================

KingHelmasaur_ApplyRecoilIfEarlyPhase:
|06F466| LDA.w $0DB0,X
|06F469| CMP.b #$03
|06F46B| BCS .do_recoil

|06F46D| JMP.w CheckDamageFromLink_attempt_small_recoil

.do_recoil
|06F470| JMP.w CheckDamageFromLink_apply_normal_recoil

;===================================================================================================

pool ActionHitbox

.offset_x
|06F473| db   0 ; net/hammer

|06F474| db   2 ; up
|06F475| db   0 ; up
|06F476| db   0 ; up
|06F477| db  -8 ; up
|06F478| db   0 ; up
|06F479| db   2 ; up
|06F47A| db   0 ; up
|06F47B| db   2 ; up
|06F47C| db   2 ; up
|06F47D| db   1 ; up
|06F47E| db   1 ; up
|06F47F| db   0 ; up
|06F480| db   0 ; up
|06F481| db   0 ; up
|06F482| db   0 ; up
|06F483| db   0 ; up

|06F484| db   2 ; down
|06F485| db   4 ; down
|06F486| db   4 ; down
|06F487| db   0 ; down
|06F488| db   0 ; down
|06F489| db  -4 ; down
|06F48A| db  -4 ; down
|06F48B| db  -6 ; down
|06F48C| db   2 ; down
|06F48D| db   1 ; down
|06F48E| db   1 ; down
|06F48F| db   0 ; down
|06F490| db   0 ; down
|06F491| db   0 ; down
|06F492| db   0 ; down
|06F493| db   0 ; down

|06F494| db   0 ; left
|06F495| db   0 ; left
|06F496| db   0 ; left
|06F497| db   2 ; left
|06F498| db   2 ; left
|06F499| db   4 ; left
|06F49A| db   4 ; left
|06F49B| db   2 ; left
|06F49C| db   2 ; left
|06F49D| db   2 ; left
|06F49E| db   2 ; left
|06F49F| db   0 ; left
|06F4A0| db   0 ; left
|06F4A1| db   0 ; left
|06F4A2| db   0 ; left
|06F4A3| db   0 ; left

|06F4A4| db   0 ; right
|06F4A5| db   0 ; right
|06F4A6| db   0 ; right
|06F4A7| db  -4 ; right
|06F4A8| db  -4 ; right
|06F4A9| db -10 ; right
|06F4AA| db   0 ; right
|06F4AB| db   2 ; right
|06F4AC| db   2 ; right
|06F4AD| db   0 ; right
|06F4AE| db   0 ; right
|06F4AF| db   0 ; right
|06F4B0| db   0 ; right
|06F4B1| db   0 ; right
|06F4B2| db   0 ; right
|06F4B3| db   0 ; right

;---------------------------------------------------------------------------------------------------

.size_x
|06F4B4| db  15 ; net/hammer

|06F4B5| db   4 ; up
|06F4B6| db   8 ; up
|06F4B7| db   8 ; up
|06F4B8| db   8 ; up
|06F4B9| db   8 ; up
|06F4BA| db  12 ; up
|06F4BB| db   8 ; up
|06F4BC| db   4 ; up
|06F4BD| db   4 ; up
|06F4BE| db   6 ; up
|06F4BF| db   6 ; up
|06F4C0| db   0 ; up
|06F4C1| db   0 ; up
|06F4C2| db   0 ; up
|06F4C3| db   0 ; up
|06F4C4| db   0 ; up

|06F4C5| db   4 ; down
|06F4C6| db  16 ; down
|06F4C7| db  12 ; down
|06F4C8| db   8 ; down
|06F4C9| db   8 ; down
|06F4CA| db  12 ; down
|06F4CB| db  11 ; down
|06F4CC| db  12 ; down
|06F4CD| db   4 ; down
|06F4CE| db   6 ; down
|06F4CF| db   6 ; down
|06F4D0| db   0 ; down
|06F4D1| db   0 ; down
|06F4D2| db   0 ; down
|06F4D3| db   0 ; down
|06F4D4| db   0 ; down

|06F4D5| db   8 ; left
|06F4D6| db   8 ; left
|06F4D7| db   8 ; left
|06F4D8| db  10 ; left
|06F4D9| db  14 ; left
|06F4DA| db  15 ; left
|06F4DB| db   4 ; left
|06F4DC| db   4 ; left
|06F4DD| db   4 ; left
|06F4DE| db   6 ; left
|06F4DF| db   6 ; left
|06F4E0| db   0 ; left
|06F4E1| db   0 ; left
|06F4E2| db   0 ; left
|06F4E3| db   0 ; left
|06F4E4| db   0 ; left

|06F4E5| db   8 ; right
|06F4E6| db   8 ; right
|06F4E7| db   8 ; right
|06F4E8| db  10 ; right
|06F4E9| db  14 ; right
|06F4EA| db  15 ; right
|06F4EB| db   4 ; right
|06F4EC| db   4 ; right
|06F4ED| db   4 ; right
|06F4EE| db   6 ; right
|06F4EF| db   6 ; right
|06F4F0| db   0 ; right
|06F4F1| db   0 ; right
|06F4F2| db   0 ; right
|06F4F3| db   0 ; right
|06F4F4| db   0 ; right

;---------------------------------------------------------------------------------------------------

.offset_y
|06F4F5| db   0 ; net/hammer

|06F4F6| db   2 ; up
|06F4F7| db   0 ; up
|06F4F8| db   2 ; up
|06F4F9| db   4 ; up
|06F4FA| db   4 ; up
|06F4FB| db   4 ; up
|06F4FC| db   7 ; up
|06F4FD| db   2 ; up
|06F4FE| db   2 ; up
|06F4FF| db   1 ; up
|06F500| db   1 ; up
|06F501| db   0 ; up
|06F502| db   0 ; up
|06F503| db   0 ; up
|06F504| db   0 ; up
|06F505| db   0 ; up

|06F506| db   2 ; down
|06F507| db   0 ; down
|06F508| db   2 ; down
|06F509| db  -4 ; down
|06F50A| db  -3 ; down
|06F50B| db  -8 ; down
|06F50C| db   0 ; down
|06F50D| db   0 ; down
|06F50E| db   2 ; down
|06F50F| db   1 ; down
|06F510| db   1 ; down
|06F511| db   0 ; down
|06F512| db   0 ; down
|06F513| db   0 ; down
|06F514| db   0 ; down
|06F515| db   0 ; down

|06F516| db   0 ; left
|06F517| db   0 ; left
|06F518| db   0 ; left
|06F519| db  -2 ; left
|06F51A| db   0 ; left
|06F51B| db  -4 ; left
|06F51C| db   1 ; left
|06F51D| db   2 ; left
|06F51E| db   2 ; left
|06F51F| db   1 ; left
|06F520| db   1 ; left
|06F521| db   0 ; left
|06F522| db   0 ; left
|06F523| db   0 ; left
|06F524| db   0 ; left
|06F525| db   0 ; left

|06F526| db   0 ; right
|06F527| db   0 ; right
|06F528| db   0 ; right
|06F529| db  -2 ; right
|06F52A| db   0 ; right
|06F52B| db  -4 ; right
|06F52C| db   1 ; right
|06F52D| db   2 ; right
|06F52E| db   2 ; right
|06F52F| db   1 ; right
|06F530| db   1 ; right
|06F531| db   0 ; right
|06F532| db   0 ; right
|06F533| db   0 ; right
|06F534| db   0 ; right
|06F535| db   0 ; right

;---------------------------------------------------------------------------------------------------

.size_y
|06F536| db  15 ; net/hammer

|06F537| db   4 ; up
|06F538| db   8 ; up
|06F539| db   2 ; up
|06F53A| db  12 ; up
|06F53B| db   8 ; up
|06F53C| db  12 ; up
|06F53D| db   8 ; up
|06F53E| db   4 ; up
|06F53F| db   4 ; up
|06F540| db   6 ; up
|06F541| db   6 ; up
|06F542| db   0 ; up
|06F543| db   0 ; up
|06F544| db   0 ; up
|06F545| db   0 ; up
|06F546| db   0 ; up

|06F547| db   4 ; down
|06F548| db   8 ; down
|06F549| db   4 ; down
|06F54A| db  12 ; down
|06F54B| db  12 ; down
|06F54C| db  12 ; down
|06F54D| db   4 ; down
|06F54E| db   8 ; down
|06F54F| db   4 ; down
|06F550| db   6 ; down
|06F551| db   4 ; down
|06F552| db   0 ; down
|06F553| db   0 ; down
|06F554| db   0 ; down
|06F555| db   0 ; down
|06F556| db   0 ; down

|06F557| db   8 ; left
|06F558| db   8 ; left
|06F559| db   8 ; left
|06F55A| db   8 ; left
|06F55B| db   8 ; left
|06F55C| db  12 ; left
|06F55D| db   4 ; left
|06F55E| db   4 ; left
|06F55F| db   4 ; left
|06F560| db   6 ; left
|06F561| db   6 ; left
|06F562| db   0 ; left
|06F563| db   0 ; left
|06F564| db   0 ; left
|06F565| db   0 ; left
|06F566| db   0 ; left

|06F567| db   8 ; right
|06F568| db   8 ; right
|06F569| db   8 ; right
|06F56A| db   8 ; right
|06F56B| db   8 ; right
|06F56C| db  12 ; right
|06F56D| db   4 ; right
|06F56E| db   4 ; right
|06F56F| db   4 ; right
|06F570| db   6 ; right
|06F571| db   6 ; right
|06F572| db   0 ; right
|06F573| db   0 ; right
|06F574| db   0 ; right
|06F575| db   0 ; right
|06F576| db   0 ; right

;---------------------------------------------------------------------------------------------------

; Validity of hitbox based on value of $3C
;  00 - valid
;  01 - invalid
.sword_validity
|06F577| db $01
|06F578| db $01
|06F579| db $01
|06F57A| db $00
|06F57B| db $00
|06F57C| db $00
|06F57D| db $00
|06F57E| db $01
|06F57F| db $01
|06F580| db $00
|06F581| db $00
|06F582| db $01
|06F583| db $01

endpool

;===================================================================================================

SetupActionHitbox_long:
|06F584| PHB
|06F585| PHK
|06F586| PLB

|06F587| JSR SetupActionHitbox

|06F58A| PLB

|06F58B| RTL

;===================================================================================================

pool SetupActionHitbox_dashing

.offset_y_high ; bleeds into next
|06F58C| db  -1,   0

.offset_x_low
|06F58E| db   0,   0,  -8,   8

.offset_x_high
|06F592| db   0,   0,  -1,   0

.offset_y_low
|06F596| db  -8,  16,   8,   8

endpool

;===================================================================================================

SetupActionHitbox_spinning:
|06F59A| LDA.b $22
|06F59C| SEC
|06F59D| SBC.b #$0E
|06F59F| STA.b $00

|06F5A1| LDA.b $23
|06F5A3| SBC.b #$00
|06F5A5| STA.b $08

|06F5A7| LDA.b $20
|06F5A9| SEC
|06F5AA| SBC.b #$0A
|06F5AC| STA.b $01

|06F5AE| LDA.b $21
|06F5B0| SBC.b #$00
|06F5B2| STA.b $09

|06F5B4| LDA.b #$2C
|06F5B6| STA.b $02

|06F5B8| INC A
|06F5B9| STA.b $03

|06F5BB| PLX

|06F5BC| RTS

;===================================================================================================

SetupActionHitbox_dashing:
|06F5BD| LDA.b $2F
|06F5BF| LSR A
|06F5C0| TAY

|06F5C1| LDA.b $22
|06F5C3| CLC
|06F5C4| ADC.w .offset_x_low,Y
|06F5C7| STA.b $00

|06F5C9| LDA.b $23
|06F5CB| ADC.w .offset_x_high,Y
|06F5CE| STA.b $08

|06F5D0| LDA.b $20
|06F5D2| CLC
|06F5D3| ADC.w .offset_y_low,Y
|06F5D6| STA.b $01

|06F5D8| LDA.b $21
|06F5DA| ADC.w .offset_y_high,Y
|06F5DD| STA.b $09

; 16 pixels big
|06F5DF| LDA.b #$10
|06F5E1| STA.b $02
|06F5E3| STA.b $03

|06F5E5| RTS

;===================================================================================================

SetupActionHitbox:
|06F5E6| LDA.w $0372
|06F5E9| BNE SetupActionHitbox_dashing

|06F5EB| PHX

|06F5EC| LDX.b #$00

|06F5EE| LDA.w $0301
|06F5F1| AND.b #$0A
|06F5F3| BNE .hammer_or_net

|06F5F5| LDA.w $037A
|06F5F8| AND.b #$10
|06F5FA| BNE .hammer_or_net

|06F5FC| LDY.b $3C
|06F5FE| BMI SetupActionHitbox_spinning

|06F600| LDA.w ActionHitbox.sword_validity,Y
|06F603| BNE .no_hitbox

|06F605| LDA.b $2F
|06F607| ASL A ; x8
|06F608| ASL A
|06F609| ASL A
|06F60A| CLC
|06F60B| ADC.b $3C
|06F60D| TAX

|06F60E| INX

;---------------------------------------------------------------------------------------------------

.hammer_or_net
|06F60F| LDY.b #$00

|06F611| LDA.b $45
|06F613| CLC
|06F614| ADC.w ActionHitbox.offset_x,X
|06F617| BPL .positive_x

|06F619| DEY

.positive_x
|06F61A| CLC
|06F61B| ADC.b $22
|06F61D| STA.b $00

|06F61F| TYA
|06F620| ADC.b $23
|06F622| STA.b $08

;---------------------------------------------------------------------------------------------------

|06F624| LDY.b #$00

|06F626| LDA.b $44
|06F628| CLC
|06F629| ADC.w ActionHitbox.offset_y,X
|06F62C| BPL .positive_y

|06F62E| DEY

.positive_y
|06F62F| CLC
|06F630| ADC.b $20
|06F632| STA.b $01

|06F634| TYA
|06F635| ADC.b $21
|06F637| STA.b $09

;---------------------------------------------------------------------------------------------------

|06F639| LDA.w ActionHitbox.size_x,X
|06F63C| STA.b $02

|06F63E| LDA.w ActionHitbox.size_y,X
|06F641| STA.b $03

|06F643| PLX

|06F644| RTS

;---------------------------------------------------------------------------------------------------
; Fake though
; Technically it just exists off screen
;---------------------------------------------------------------------------------------------------
.no_hitbox
|06F645| LDA.b #$80
|06F647| STA.b $08

|06F649| PLX

|06F64A| RTS

;===================================================================================================
; Is this some sort of fast hitbox calculation?
;===================================================================================================
DoSpriteHitboxesFast:
|06F64B| LDY.b #$00

|06F64D| LDA.w $0FAB
|06F650| CMP.b #$80
|06F652| BEQ .exit

|06F654| CMP.b #$00
|06F656| BPL .positive_x

|06F658| DEY

.positive_x
|06F659| CLC
|06F65A| ADC.w $0D10,X
|06F65D| STA.b $04

|06F65F| TYA
|06F660| ADC.w $0D30,X
|06F663| STA.b $0A

|06F665| LDY.b #$00

|06F667| LDA.w $0FAA
|06F66A| BPL .positive_y

|06F66C| DEY

.positive_y
|06F66D| CLC
|06F66E| ADC.w $0D00,X
|06F671| STA.b $05

|06F673| TYA
|06F674| ADC.w $0D20,X
|06F677| STA.b $0B

;---------------------------------------------------------------------------------------------------

|06F679| LDA.b #$03

|06F67B| LDY.w $0E20,X
|06F67E| CPY.b #$6A ; SPRITE 6A
|06F680| BNE .not_bnc

|06F682| LDA.b #$10

.not_bnc
|06F684| STA.b $06
|06F686| STA.b $07

|06F688| RTS

.exit
|06F689| LDA.b #$80
|06F68B| STA.b $0A

|06F68D| RTS

;===================================================================================================

ApplyRecoilToLink:
|06F68E| PHA

|06F68F| JSR ProjectSpriteSpeedTowardsLink

|06F692| LDA.b $00
|06F694| STA.b $27

|06F696| LDA.b $01
|06F698| STA.b $28

|06F69A| PLA
|06F69B| LSR A
|06F69C| STA.b $29
|06F69E| STA.b $C7

|06F6A0| STZ.b $24
|06F6A2| STZ.b $25

|06F6A4| RTS

;===================================================================================================

PlaceWeaponTinkAtLink:
|06F6A5| LDA.w $0FAC
|06F6A8| BNE .exit

|06F6AA| LDA.b #$05
|06F6AC| STA.w $0FAC

|06F6AF| LDA.w $0022
|06F6B2| ADC.w $0045
|06F6B5| STA.w $0FAD

|06F6B8| LDA.w $0020
|06F6BB| ADC.w $0044
|06F6BE| STA.w $0FAE

|06F6C1| LDA.b $EE
|06F6C3| STA.w $0B68

|06F6C6| JSL CalculateLinkSFXPan
|06F6CA| ORA.b #$05 ; SFX2.05
|06F6CC| STA.w $012E

.exit
|06F6CF| RTS

;===================================================================================================
; Places a weapon tink spark at the sprite's coordinates
; the weapon tink spark fails to be created if it would be off screen
; the main entry point only allows 1 weapon tink spark at a time
; the secondary entry point forces a new weapon tink spark
; it also skips the sound effect
;===================================================================================================
PlaceWeaponTinkAtSprite:
|06F6D0| LDA.w $0FAC
|06F6D3| BNE .no_spark

|06F6D5| LDA.b #$05 ; SFX2.05
|06F6D7| JSL QueueSpriteSFX2WithPan

;===================================================================================================

#PlaceWeaponTinkAtSprite_forced:
|06F6DB| LDA.w $0D10,X
|06F6DE| CMP.b $E2

|06F6E0| LDA.w $0D30,X
|06F6E3| SBC.b $E3
|06F6E5| BNE .no_spark

|06F6E7| LDA.w $0D00,X
|06F6EA| CMP.b $E8

|06F6EC| LDA.w $0D20,X
|06F6EF| SBC.b $E9
|06F6F1| BNE .no_spark

|06F6F3| LDA.w $0D10,X
|06F6F6| STA.w $0FAD

|06F6F9| LDA.w $0D00,X
|06F6FC| STA.w $0FAE

|06F6FF| LDA.b #$05
|06F701| STA.w $0FAC

|06F704| LDA.w $0F20,X
|06F707| STA.w $0B68

.no_spark
|06F70A| RTL

;===================================================================================================
; Seems to prevent Link from taking damage if he's invulnerable
; by moving his hitbox impossibly far off-screen.
; In most cases, this functionality is elsewhere...
;===================================================================================================
SetupLinkHitbox_conditional:
|06F70B| LDA.w $037B
|06F70E| BNE .no_hitbox

;===================================================================================================
; Creates a hitbox for Link in scratch space
;   x-offset: 4px
;   y-offset: 8px
;   width   : 8px
;   height  : 8px
;===================================================================================================
#SetupLinkHitbox:
|06F710| LDA.b #$08
|06F712| STA.b $02
|06F714| STA.b $03

|06F716| LDA.b $22
|06F718| CLC
|06F719| ADC.b #$04
|06F71B| STA.b $00

|06F71D| LDA.b $23
|06F71F| ADC.b #$00
|06F721| STA.b $08

|06F723| LDA.b $20
|06F725| ADC.b #$08
|06F727| STA.b $01

|06F729| LDA.b $21
|06F72B| ADC.b #$00
|06F72D| STA.b $09

|06F72F| RTS

;---------------------------------------------------------------------------------------------------

.no_hitbox
|06F730| LDA.b #$80
|06F732| STA.b $09

|06F734| RTS

;===================================================================================================
; Unused hitboxes:
;   $16
;   $17
;===================================================================================================
pool SetupSpriteHitbox

.offset_x_low
|06F735| db   2 ; 0x00
|06F736| db   3 ; 0x01
|06F737| db   0 ; 0x02
|06F738| db  -3 ; 0x03
|06F739| db  -6 ; 0x04
|06F73A| db   0 ; 0x05
|06F73B| db   2 ; 0x06
|06F73C| db  -8 ; 0x07
|06F73D| db   0 ; 0x08
|06F73E| db  -4 ; 0x09
|06F73F| db  -8 ; 0x0A
|06F740| db   0 ; 0x0B
|06F741| db  -8 ; 0x0C
|06F742| db -16 ; 0x0D
|06F743| db   2 ; 0x0E
|06F744| db   2 ; 0x0F

|06F745| db   2 ; 0x10
|06F746| db   2 ; 0x11
|06F747| db   2 ; 0x12
|06F748| db  -8 ; 0x13
|06F749| db   2 ; 0x14
|06F74A| db   2 ; 0x15
|06F74B| db -16 ; 0x16
|06F74C| db  -8 ; 0x17
|06F74D| db -12 ; 0x18
|06F74E| db   4 ; 0x19
|06F74F| db  -4 ; 0x1A
|06F750| db -12 ; 0x1B
|06F751| db   5 ; 0x1C
|06F752| db -32 ; 0x1D
|06F753| db  -2 ; 0x1E
|06F754| db   4 ; 0x1F

;---------------------------------------------------------------------------------------------------

.offset_x_high
|06F755| db   0 ; 0x00
|06F756| db   0 ; 0x01
|06F757| db   0 ; 0x02
|06F758| db  -1 ; 0x03
|06F759| db  -1 ; 0x04
|06F75A| db   0 ; 0x05
|06F75B| db   0 ; 0x06
|06F75C| db  -1 ; 0x07
|06F75D| db   0 ; 0x08
|06F75E| db  -1 ; 0x09
|06F75F| db  -1 ; 0x0A
|06F760| db   0 ; 0x0B
|06F761| db  -1 ; 0x0C
|06F762| db  -1 ; 0x0D
|06F763| db   0 ; 0x0E
|06F764| db   0 ; 0x0F

|06F765| db   0 ; 0x10
|06F766| db   0 ; 0x11
|06F767| db   0 ; 0x12
|06F768| db  -1 ; 0x13
|06F769| db   0 ; 0x14
|06F76A| db   0 ; 0x15
|06F76B| db  -1 ; 0x16
|06F76C| db  -1 ; 0x17
|06F76D| db  -1 ; 0x18
|06F76E| db   0 ; 0x19
|06F76F| db  -1 ; 0x1A
|06F770| db  -1 ; 0x1B
|06F771| db   0 ; 0x1C
|06F772| db  -1 ; 0x1D
|06F773| db  -1 ; 0x1E
|06F774| db   0 ; 0x1F

;---------------------------------------------------------------------------------------------------

.width
|06F775| db  12 ; 0x00
|06F776| db   1 ; 0x01
|06F777| db  16 ; 0x02
|06F778| db  20 ; 0x03
|06F779| db  20 ; 0x04
|06F77A| db   8 ; 0x05
|06F77B| db   4 ; 0x06
|06F77C| db  32 ; 0x07
|06F77D| db  48 ; 0x08
|06F77E| db  24 ; 0x09
|06F77F| db  32 ; 0x0A
|06F780| db  32 ; 0x0B
|06F781| db  32 ; 0x0C
|06F782| db  48 ; 0x0D
|06F783| db  12 ; 0x0E
|06F784| db  12 ; 0x0F

|06F785| db  60 ; 0x10
|06F786| db 124 ; 0x11
|06F787| db  12 ; 0x12
|06F788| db  32 ; 0x13
|06F789| db   4 ; 0x14
|06F78A| db  12 ; 0x15
|06F78B| db  48 ; 0x16
|06F78C| db  32 ; 0x17
|06F78D| db  40 ; 0x18
|06F78E| db   8 ; 0x19
|06F78F| db  24 ; 0x1A
|06F790| db  24 ; 0x1B
|06F791| db   5 ; 0x1C
|06F792| db  80 ; 0x1D
|06F793| db   4 ; 0x1E
|06F794| db   8 ; 0x1F

;---------------------------------------------------------------------------------------------------

.offset_y_low
|06F795| db   0 ; 0x00
|06F796| db   3 ; 0x01
|06F797| db   4 ; 0x02
|06F798| db  -4 ; 0x03
|06F799| db  -8 ; 0x04
|06F79A| db   2 ; 0x05
|06F79B| db   0 ; 0x06
|06F79C| db -16 ; 0x07
|06F79D| db  12 ; 0x08
|06F79E| db  -4 ; 0x09
|06F79F| db  -8 ; 0x0A
|06F7A0| db   0 ; 0x0B
|06F7A1| db -10 ; 0x0C
|06F7A2| db -16 ; 0x0D
|06F7A3| db   2 ; 0x0E
|06F7A4| db   2 ; 0x0F

|06F7A5| db   2 ; 0x10
|06F7A6| db   2 ; 0x11
|06F7A7| db  -3 ; 0x12
|06F7A8| db -12 ; 0x13
|06F7A9| db   2 ; 0x14
|06F7AA| db  10 ; 0x15
|06F7AB| db   0 ; 0x16
|06F7AC| db -12 ; 0x17
|06F7AD| db  16 ; 0x18
|06F7AE| db   4 ; 0x19
|06F7AF| db  -4 ; 0x1A
|06F7B0| db -12 ; 0x1B
|06F7B1| db   3 ; 0x1C
|06F7B2| db -16 ; 0x1D
|06F7B3| db  -8 ; 0x1E
|06F7B4| db  10 ; 0x1F

;---------------------------------------------------------------------------------------------------

.offset_y_high
|06F7B5| db   0 ; 0x00
|06F7B6| db   0 ; 0x01
|06F7B7| db   0 ; 0x02
|06F7B8| db  -1 ; 0x03
|06F7B9| db  -1 ; 0x04
|06F7BA| db   0 ; 0x05
|06F7BB| db   0 ; 0x06
|06F7BC| db  -1 ; 0x07
|06F7BD| db   0 ; 0x08
|06F7BE| db  -1 ; 0x09
|06F7BF| db  -1 ; 0x0A
|06F7C0| db   0 ; 0x0B
|06F7C1| db  -1 ; 0x0C
|06F7C2| db  -1 ; 0x0D
|06F7C3| db   0 ; 0x0E
|06F7C4| db   0 ; 0x0F

|06F7C5| db   0 ; 0x10
|06F7C6| db   0 ; 0x11
|06F7C7| db  -1 ; 0x12
|06F7C8| db  -1 ; 0x13
|06F7C9| db   0 ; 0x14
|06F7CA| db   0 ; 0x15
|06F7CB| db   0 ; 0x16
|06F7CC| db  -1 ; 0x17
|06F7CD| db   0 ; 0x18
|06F7CE| db   0 ; 0x19
|06F7CF| db  -1 ; 0x1A
|06F7D0| db  -1 ; 0x1B
|06F7D1| db   0 ; 0x1C
|06F7D2| db  -1 ; 0x1D
|06F7D3| db  -1 ; 0x1E
|06F7D4| db   0 ; 0x1F

;---------------------------------------------------------------------------------------------------

.height
|06F7D5| db  14 ; 0x00
|06F7D6| db   1 ; 0x01
|06F7D7| db  16 ; 0x02
|06F7D8| db  21 ; 0x03
|06F7D9| db  24 ; 0x04
|06F7DA| db   4 ; 0x05
|06F7DB| db   8 ; 0x06
|06F7DC| db  40 ; 0x07
|06F7DD| db  20 ; 0x08
|06F7DE| db  24 ; 0x09
|06F7DF| db  40 ; 0x0A
|06F7E0| db  29 ; 0x0B
|06F7E1| db  36 ; 0x0C
|06F7E2| db  48 ; 0x0D
|06F7E3| db  60 ; 0x0E
|06F7E4| db 124 ; 0x0F

|06F7E5| db  12 ; 0x10
|06F7E6| db  12 ; 0x11
|06F7E7| db  17 ; 0x12
|06F7E8| db  28 ; 0x13
|06F7E9| db   4 ; 0x14
|06F7EA| db   2 ; 0x15
|06F7EB| db  28 ; 0x16
|06F7EC| db  20 ; 0x17
|06F7ED| db  10 ; 0x18
|06F7EE| db   4 ; 0x19
|06F7EF| db  24 ; 0x1A
|06F7F0| db  16 ; 0x1B
|06F7F1| db   5 ; 0x1C
|06F7F2| db  48 ; 0x1D
|06F7F3| db   8 ; 0x1E
|06F7F4| db  12 ; 0x1F

endpool

;---------------------------------------------------------------------------------------------------

SetupSpriteHitbox:
|06F7F5| LDA.w $0F70,X
|06F7F8| BMI .too_high

|06F7FA| PHY

|06F7FB| LDA.w $0F60,X
|06F7FE| AND.b #$1F
|06F800| TAY

|06F801| LDA.w $0D10,X
|06F804| CLC
|06F805| ADC.w .offset_x_low,Y
|06F808| STA.b $04

|06F80A| LDA.w $0D30,X
|06F80D| ADC.w .offset_x_high,Y
|06F810| STA.b $0A

|06F812| LDA.w $0D00,X
|06F815| CLC
|06F816| ADC.w .offset_y_low,Y

|06F819| PHP
|06F81A| SEC
|06F81B| SBC.w $0F70,X
|06F81E| STA.b $05

|06F820| LDA.w $0D20,X
|06F823| SBC.b #$00

|06F825| PLP
|06F826| ADC.w .offset_y_high,Y
|06F829| STA.b $0B

|06F82B| LDA.w .width,Y
|06F82E| STA.b $06

|06F830| LDA.w .height,Y
|06F833| STA.b $07

|06F835| PLY

|06F836| RTS

;---------------------------------------------------------------------------------------------------

.too_high
|06F837| LDA.b #$80
|06F839| STA.b $0A

|06F83B| RTS

;===================================================================================================

CheckIfHitboxesOverlap:
|06F83C| PHX

|06F83D| LDX.b #$01

.check_other_side
|06F83F| LDA.b $04,X
|06F841| SEC
|06F842| SBC.b $00,X

|06F844| PHA
|06F845| PHP

|06F846| CLC
|06F847| ADC.b $06,X
|06F849| STA.b $0F

|06F84B| PLP

|06F84C| LDA.b $0A,X
|06F84E| SBC.b $08,X
|06F850| STA.b $0C

|06F852| PLA
|06F853| CLC
|06F854| ADC.b #$80

|06F856| LDA.b $0C
|06F858| ADC.b #$00
|06F85A| BNE .no_overlap

|06F85C| LDA.b $02,X
|06F85E| CLC
|06F85F| ADC.b $06,X

|06F861| CMP.b $0F
|06F863| BCC .no_overlap

|06F865| DEX
|06F866| BPL .check_other_side

;---------------------------------------------------------------------------------------------------

.no_overlap
|06F868| PLX

|06F869| RTS

;===================================================================================================

AllocateOAMDeferToPlayer_long:
|06F86A| PHB
|06F86B| PHK
|06F86C| PLB

|06F86D| JSR AllocateOAMDeferToPlayer

|06F870| PLB

|06F871| RTL

;===================================================================================================

AllocateOAMDeferToPlayer:
|06F872| LDA.w $0F20,X
|06F875| CMP.b $EE
|06F877| BNE .exit

|06F879| JSR GetXDisplacementFromLink

|06F87C| LDA.b $0F
|06F87E| CLC
|06F87F| ADC.b #$10

|06F881| CMP.b #$20
|06F883| BCS .exit

|06F885| JSR GetYDisplacementFromLink

|06F888| LDA.b $0E
|06F88A| CLC
|06F88B| ADC.b #$20

|06F88D| CMP.b #$48
|06F88F| BCS .exit

|06F891| LDA.w $0E40,X
|06F894| AND.b #$1F
|06F896| INC A
|06F897| ASL A
|06F898| ASL A

|06F899| CPY.b #$00
|06F89B| BEQ .use_region_b

.use_region_c
|06F89D| JSL AllocateOAMInRegionC

|06F8A1| BRA .exit

.use_region_b
|06F8A3| JSL AllocateOAMInRegionB

.exit
|06F8A7| RTS

;===================================================================================================
; Die
;===================================================================================================
SpriteModule_Die:
|06F8A8| LDA.w $0E20,X
|06F8AB| CMP.b #$EC ; SPRITE EC
|06F8AD| BNE .not_foliage

|06F8AF| JSR ThrowableScenery_ScatterIntoDebris

|06F8B2| RTS

;---------------------------------------------------------------------------------------------------

.not_foliage
|06F8B3| CMP.b #$53 ; SPRITE 53
|06F8B5| BEQ .just_draw

|06F8B7| CMP.b #$54 ; SPRITE 54
|06F8B9| BEQ .just_draw

|06F8BB| CMP.b #$92 ; SPRITE 92
|06F8BD| BEQ .just_draw

|06F8BF| CMP.b #$4A ; SPRITE 4A
|06F8C1| BNE .not_enemy_bomb

|06F8C3| LDA.w $0DB0,X
|06F8C6| CMP.b #$02
|06F8C8| BCS .just_draw ; enemy bomb

.not_enemy_bomb
|06F8CA| LDA.w $0DF0,X
|06F8CD| BEQ MeetYourDemise

.kyameron_respawn
|06F8CF| LDA.w $0E60,X
|06F8D2| BMI .just_draw

|06F8D4| LDA.b $1A
|06F8D6| AND.b #$03
|06F8D8| ORA.b $11
|06F8DA| ORA.w $0FC1
|06F8DD| BNE .delay_the_inevitable

|06F8DF| INC.w $0DF0,X

.delay_the_inevitable
|06F8E2| JSR SpriteDraw_DeathPoof

;---------------------------------------------------------------------------------------------------

|06F8E5| LDA.w $0E20,X
|06F8E8| CMP.b #$40 ; SPRITE 40
|06F8EA| BEQ .aga_barrier

|06F8EC| LDA.w $0DF0,X
|06F8EF| CMP.b #$0A
|06F8F1| BCC .dont_draw_barrier

.aga_barrier
|06F8F3| REP #$20

|06F8F5| LDA.b $90
|06F8F7| CLC
|06F8F8| ADC.w #$0010
|06F8FB| STA.b $90

|06F8FD| LDA.b $92
|06F8FF| CLC
|06F900| ADC.w #$0004
|06F903| STA.b $92

|06F905| SEP #$20

|06F907| LDA.w $0E40,X
|06F90A| PHA

|06F90B| SEC
|06F90C| SBC.b #$04
|06F90E| STA.w $0E40,X

|06F911| JSR SpriteModule_Active

|06F914| PLA
|06F915| STA.w $0E40,X

.dont_draw_barrier
|06F918| RTS

;---------------------------------------------------------------------------------------------------

.just_draw
|06F919| JSR SpriteModule_Active

|06F91C| RTS

;===================================================================================================
; Sprite dying
; go poof
;===================================================================================================
MeetYourDemise_long:
|06F91D| PHB
|06F91E| PHK
|06F91F| PLB

|06F920| JSR MeetYourDemise

|06F923| PLB

|06F924| RTL

;===================================================================================================

pool MeetYourDemise

.pikit_loot
|06F925| db $DC ; SPRITE DC - 1 bomb
|06F926| db $E1 ; SPRITE E1 - 1 arrow
|06F927| db $D9 ; SPRITE D9 - 1 rupee
|06F928| db $E6 ; SPRITE E6 - 1 shield

endpool

;---------------------------------------------------------------------------------------------------

MeetYourDemise:
|06F929| LDA.w $0E20,X
|06F92C| CMP.b #$BE ; SPRITE BE
|06F92E| BNE .not_mini_vitty

; [HARDCODED] counter decrement for vitreous eyeballs
; kinda dumb
|06F930| DEC.w $0ED0

.not_mini_vitty
|06F933| CMP.b #$AA ; SPRITE AA
|06F935| BNE .pikit_no

; override item drop with pikit loot
|06F937| LDY.w $0E90,X
|06F93A| BEQ .pikit_no ; nvm he didn't steal shit

|06F93C| LDA.w .pikit_loot-1,Y

|06F93F| LDY.w $0E30,X
|06F942| PHY

|06F943| JSR PrepareEnemyDrop

; saves shield level
|06F946| PLA
|06F947| STA.w $0E30,X

|06F94A| DEC A
|06F94B| BNE .skip_pikit_item_props

|06F94D| LDA.b #$09
|06F94F| STA.w $0F50,X

|06F952| LDA.b #$F0
|06F954| STA.w $0E60,X

.skip_pikit_item_props
|06F957| INC.w $0EB0,X

|06F95A| RTS

;---------------------------------------------------------------------------------------------------

.pikit_no
|06F95B| LDA.w $0E20,X
|06F95E| CMP.b #$45 ; SPRITE 45
|06F960| BNE .not_snitch_guard

|06F962| LDA.l $7EF3C5 ; game state 2 (zelda rescued)
|06F966| CMP.b #$02
|06F968| BNE .not_snitch_guard

|06F96A| LDA.w $040A ; are we in kak?
|06F96D| CMP.b #$18 ; OW 18
|06F96F| BNE .not_snitch_guard

|06F971| LDA.b #$07 ; SONG 07
|06F973| STA.w $012C

.not_snitch_guard
|06F976| LDY.w $0CBA,X ; drop item overrides
|06F979| BEQ .no_forced_drop

; TODO explain these props
|06F97B| LDA.w $0BC0,X
|06F97E| STA.w $0E30,X

|06F981| LDA.b #$FF
|06F983| STA.w $0BC0,X

; 1 = small key
|06F986| LDA.b #$E4 ; SPRITE E4
|06F988| CPY.b #$01
|06F98A| BEQ PrepareEnemyDrop

; 2 = big key
|06F98C| LDA.b #$E5 ; SPRITE E5
|06F98E| CPY.b #$03
|06F990| BNE PrepareEnemyDrop

; 3 = green rupee
|06F992| LDA.b #$D9 ; SPRITE D9
|06F994| BRA PrepareEnemyDrop

;---------------------------------------------------------------------------------------------------

.no_forced_drop
|06F996| LDA.w $0BE0,X ; prize pack
|06F999| AND.b #$0F
|06F99B| BEQ .no_drop

|06F99D| DEC A
|06F99E| PHA

|06F99F| LDY.w $0CF9
|06F9A2| BEQ .no_luck_override

|06F9A4| INC.w $0CFA ; handle kill counter

|06F9A7| LDA.w $0CFA
|06F9AA| CMP.b #$0A
|06F9AC| BCC .no_luck_reset

|06F9AE| STZ.w $0CF9

.no_luck_reset
|06F9B1| PLA

|06F9B2| CPY.b #$01
|06F9B4| BEQ .good_drop_luck

.no_drop
|06F9B6| BRA .you_dont_get_a_drop

.no_luck_override
|06F9B8| JSL GetRandomNumber ; do a coin flip, essentially

|06F9BC| PLY

|06F9BD| AND.w PrizePackRarities,Y
|06F9C0| BNE .you_dont_get_a_drop

;===================================================================================================

#ForcePrizeDrop:
|06F9C2| TYA

; Handle the prize pack
.good_drop_luck
|06F9C3| ASL A ; get prize index
|06F9C4| ASL A
|06F9C5| ASL A
|06F9C6| ORA.w $0FC7,Y
|06F9C9| PHA

|06F9CA| LDA.w $0FC7,Y ; advance prize pack
|06F9CD| INC A
|06F9CE| AND.b #$07
|06F9D0| STA.w $0FC7,Y

|06F9D3| PLY

|06F9D4| LDA.w PrizePackPrizes,Y

;===================================================================================================

#PrepareEnemyDrop:
|06F9D7| STA.w $0E20,X

|06F9DA| CMP.b #$E5 ; SPRITE E5
|06F9DC| BNE .not_big_key_drop

|06F9DE| JSR LoadBigKeyGraphics
|06F9E1| BRA .spawn_drop

.not_big_key_drop
|06F9E3| CMP.b #$E4 ; SPRITE E4
|06F9E5| BNE .spawn_drop

|06F9E7| JSR SetKeyIndex

;---------------------------------------------------------------------------------------------------

.spawn_drop
|06F9EA| LDA.b #$09 ; set sprite alive
|06F9EC| STA.w $0DD0,X

|06F9EF| LDA.w $0F70,X ; looks like height is cached
|06F9F2| PHA

|06F9F3| JSL LoadSpriteProperties

|06F9F7| INC.w $0BA0,X

|06F9FA| LDY.w $0E20,X

|06F9FD| LDA.w ItemDropBounceProps-$D9,Y
|06FA00| PHA

|06FA01| AND.b #$F0
|06FA03| STA.w $0F80,X ; z speed

|06FA06| PLA ; x offset
|06FA07| AND.b #$0F

|06FA09| CLC
|06FA0A| ADC.w $0D10,X
|06FA0D| STA.w $0D10,X

|06FA10| LDA.w $0D30,X
|06FA13| ADC.b #$00
|06FA15| STA.w $0D30,X

|06FA18| PLA ; recover old height
|06FA19| STA.w $0F70,X

|06FA1C| LDA.b #$15
|06FA1E| STA.w $0F10,X

|06FA21| LDA.b #$FF ; TODO why stun timer?
|06FA23| STA.w $0B58,X

|06FA26| BRA .post_death_stuff

;---------------------------------------------------------------------------------------------------

.you_dont_get_a_drop
|06FA28| STZ.w $0DD0,X

.post_death_stuff
|06FA2B| LDA.w $0E20,X
|06FA2E| CMP.b #$A2 ; SPRITE A2
|06FA30| BNE .not_dead_kholdstares

|06FA32| JSL CheckIfScreenIsClear
|06FA36| BCC .not_dead_kholdstares

|06FA38| LDA.b #$04
|06FA3A| JSL SpawnFallingDungeonPrize

.not_dead_kholdstares
|06FA3E| JSL ManuallySetDeathFlagUW

|06FA42| INC.w $0CFB

|06FA45| LDA.w $0E20,X
|06FA48| CMP.b #$40 ; SPRITE 40
|06FA4A| BNE .not_barrier

|06FA4C| LDA.b #$09 ; keep it alive
|06FA4E| STA.w $0DD0,X

|06FA51| LDA.b #$04
|06FA53| STA.w $0DC0,X

|06FA56| JMP.w SpriteModule_Die.kyameron_respawn

.not_barrier
|06FA59| RTS

;===================================================================================================

ForcePrizeDrop_long:
|06FA5A| PHB
|06FA5B| PHK
|06FA5C| PLB

|06FA5D| JSR ForcePrizeDrop

|06FA60| PLB

|06FA61| RTL

;===================================================================================================
; 0 = 100%
; 1 = 50%
;===================================================================================================
PrizePackRarities:
|06FA62| db $01 ; pack 1 :  50%
|06FA63| db $01 ; pack 2 :  50%
|06FA64| db $01 ; pack 3 :  50%
|06FA65| db $00 ; pack 4 : 100%
|06FA66| db $01 ; pack 5 :  50%
|06FA67| db $01 ; pack 6 :  50%
|06FA68| db $01 ; pack 7 :  50%
|06FA69| db $00 ; pack 8 : 100% - doesn't exist

;===================================================================================================
; Upper nibble is used for z-speed
; Lower nibble is X-coordinate offset
;===================================================================================================
ItemDropBounceProps:
|06FA6A| db $24 ; GREEN RUPEE
|06FA6B| db $24 ; BLUE RUPEE
|06FA6C| db $24 ; RED RUPEE
|06FA6D| db $20 ; BOMB REFILL 1
|06FA6E| db $20 ; BOMB REFILL 4
|06FA6F| db $20 ; BOMB REFILL 8
|06FA70| db $24 ; SMALL MAGIC DECANTER
|06FA71| db $24 ; LARGE MAGIC DECANTER
|06FA72| db $24 ; ARROW REFILL 5
|06FA73| db $24 ; ARROW REFILL 10
|06FA74| db $00 ; FAIRY
|06FA75| db $24 ; SMALL KEY
|06FA76| db $20 ; BIG KEY
|06FA77| db $20 ; STOLEN SHIELD

;===================================================================================================

PrizePackPrizes:

.pack_1
|06FA78| db $D8 ; SPRITE D8 - heart
|06FA79| db $D8 ; SPRITE D8 - heart
|06FA7A| db $D8 ; SPRITE D8 - heart
|06FA7B| db $D8 ; SPRITE D8 - heart
|06FA7C| db $D9 ; SPRITE D9 - green rupee
|06FA7D| db $D8 ; SPRITE D8 - heart
|06FA7E| db $D8 ; SPRITE D8 - heart
|06FA7F| db $D9 ; SPRITE D9 - green rupee

;---------------------------------------------------------------------------------------------------

.pack_2
|06FA80| db $DA ; SPRITE DA - blue rupee
|06FA81| db $D9 ; SPRITE D9 - green rupee
|06FA82| db $DA ; SPRITE DA - blue rupee
|06FA83| db $DB ; SPRITE DB - red rupee
|06FA84| db $DA ; SPRITE DA - blue rupee
|06FA85| db $D9 ; SPRITE D9 - green rupee
|06FA86| db $DA ; SPRITE DA - blue rupee
|06FA87| db $DA ; SPRITE DA - blue rupee

;---------------------------------------------------------------------------------------------------

.pack_3
|06FA88| db $E0 ; SPRITE E0 - full magic
|06FA89| db $DF ; SPRITE DF - small magic
|06FA8A| db $DF ; SPRITE DF - small magic
|06FA8B| db $DA ; SPRITE DA - blue rupee
|06FA8C| db $E0 ; SPRITE E0 - full magic
|06FA8D| db $DF ; SPRITE DF - small magic
|06FA8E| db $D8 ; SPRITE D8 - heart
|06FA8F| db $DF ; SPRITE DF - small magic

;---------------------------------------------------------------------------------------------------

.pack_4
|06FA90| db $DC ; SPRITE DC - 1 bomb
|06FA91| db $DC ; SPRITE DC - 1 bomb
|06FA92| db $DC ; SPRITE DC - 1 bomb
|06FA93| db $DD ; SPRITE DD - 4 bombs
|06FA94| db $DC ; SPRITE DC - 1 bomb
|06FA95| db $DC ; SPRITE DC - 1 bomb
|06FA96| db $DE ; SPRITE DE - 8 bombs
|06FA97| db $DC ; SPRITE DC - 1 bomb

;---------------------------------------------------------------------------------------------------

.pack_5
|06FA98| db $E1 ; SPRITE E1 - 5 arrows
|06FA99| db $D8 ; SPRITE D8 - heart
|06FA9A| db $E1 ; SPRITE E1 - 5 arrows
|06FA9B| db $E2 ; SPRITE E2 - 10 arrows
|06FA9C| db $E1 ; SPRITE E1 - 5 arrows
|06FA9D| db $D8 ; SPRITE D8 - heart
|06FA9E| db $E1 ; SPRITE E1 - 5 arrows
|06FA9F| db $E2 ; SPRITE E2 - 10 arrows

;---------------------------------------------------------------------------------------------------

.pack_6
|06FAA0| db $DF ; SPRITE DF - small magic
|06FAA1| db $D9 ; SPRITE D9 - green rupee
|06FAA2| db $D8 ; SPRITE D8 - heart
|06FAA3| db $E1 ; SPRITE E1 - 5 arrows
|06FAA4| db $DF ; SPRITE DF - small magic
|06FAA5| db $DC ; SPRITE DC - 1 bomb
|06FAA6| db $D9 ; SPRITE D9 - green rupee
|06FAA7| db $D8 ; SPRITE D8 - heart

;---------------------------------------------------------------------------------------------------

.pack_7
|06FAA8| db $D8 ; SPRITE D8 - heart
|06FAA9| db $E3 ; SPRITE E3 - fairy
|06FAAA| db $E0 ; SPRITE E0 - full magic
|06FAAB| db $DB ; SPRITE DB - red rupee
|06FAAC| db $DE ; SPRITE DE - 8 bombs
|06FAAD| db $D8 ; SPRITE D8 - heart
|06FAAE| db $DB ; SPRITE DB - red rupee
|06FAAF| db $E2 ; SPRITE E2 - 10 arrows

;===================================================================================================

pool SpriteDraw_DeathPoof

.offset_x
|06FAB0| db   0,   0,   0,   8
|06FAB4| db   0,   8,   0,   8
|06FAB8| db   8,   8,   0,   8
|06FABC| db   0,   8,   0,   8
|06FAC0| db   0,   8,   0,   8
|06FAC4| db   0,   8,   0,   8
|06FAC8| db  -3,  11,  -3,  11
|06FACC| db  -6,  14,  -6,  14

.offset_y
|06FAD0| db   0,   0,   8,   8
|06FAD4| db   0,   0,   8,   8
|06FAD8| db   0,   0,   8,   8
|06FADC| db   0,   0,   8,   8
|06FAE0| db   0,   0,   8,   8
|06FAE4| db   0,   0,   8,   8
|06FAE8| db  -3,  -3,  11,  11
|06FAEC| db  -6,  -6,  14,  14

.char
|06FAF0| db $00, $B9, $00, $00
|06FAF4| db $B4, $B5, $B5, $B4
|06FAF8| db $B9, $00, $00, $00
|06FAFC| db $B5, $B4, $B4, $B5
|06FB00| db $A8, $A8, $B8, $B8
|06FB04| db $A8, $A8, $B8, $B8
|06FB08| db $A9, $A9, $A9, $A9
|06FB0C| db $9B, $9B, $9B, $9B

.prop
|06FB10| db $04, $04, $04, $04
|06FB14| db $04, $04, $C4, $C4
|06FB18| db $44, $04, $04, $04
|06FB1C| db $44, $44, $84, $84
|06FB20| db $04, $44, $04, $44
|06FB24| db $04, $44, $04, $44
|06FB28| db $44, $04, $C4, $84
|06FB2C| db $04, $44, $84, $C4

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_DeathPoof:
|06FB30| LDA.w $046C
|06FB33| CMP.b #$04
|06FB35| BNE .keep_priority_as_is

|06FB37| LDA.b #$30
|06FB39| STA.w $0B89,X

.keep_priority_as_is
|06FB3C| JSR GetScreenCoordinates

|06FB3F| LDA.w $0E60,X
|06FB42| AND.b #$20
|06FB44| LSR A
|06FB45| LSR A
|06FB46| LSR A
|06FB47| STA.b $0C

|06FB49| PHX

|06FB4A| LDA.b #$03
|06FB4C| STA.b $00

|06FB4E| LDA.w $0DF0,X
|06FB51| AND.b #$1C
|06FB53| EOR.b #$1C

|06FB55| CLC
|06FB56| ADC.b $00
|06FB58| TAX

;---------------------------------------------------------------------------------------------------

.next_object
|06FB59| PHY

|06FB5A| LDA.w .char,X
|06FB5D| BEQ .skip

|06FB5F| INY
|06FB60| INY

|06FB61| STA.b ($90),Y

|06FB63| LDA.w $0FA9
|06FB66| SEC
|06FB67| SBC.b $0C

|06FB69| CLC
|06FB6A| ADC.w .offset_y,X

|06FB6D| DEY

|06FB6E| STA.b ($90),Y

|06FB70| LDA.w $0FA8
|06FB73| SEC
|06FB74| SBC.b $0C

|06FB76| CLC
|06FB77| ADC.w .offset_x,X

|06FB7A| DEY

|06FB7B| STA.b ($90),Y

|06FB7D| LDA.b $05
|06FB7F| AND.b #$30
|06FB81| ORA.w .prop,X

|06FB84| INY
|06FB85| INY
|06FB86| INY

|06FB87| STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

.skip
|06FB89| PLY

|06FB8A| INY
|06FB8B| INY
|06FB8C| INY
|06FB8D| INY

|06FB8E| DEX

|06FB8F| DEC.b $00
|06FB91| BPL .next_object

;---------------------------------------------------------------------------------------------------

|06FB93| PLX

|06FB94| LDY.b #$00
|06FB96| LDA.b #$03
|06FB98| JSR CorrectOAMEntries

|06FB9B| RTS

;===================================================================================================

pool SpriteModule_Fall2

.anim_step_a
|06FB9C| db $0D, $0D, $0D, $0D, $0D, $0D, $0D, $0C
|06FBA4| db $0C, $0C, $0C, $0C, $03, $03, $03, $03
|06FBAC| db $03, $02, $02, $02, $02, $01, $01, $01
|06FBB4| db $01, $00, $00, $00, $00, $00, $00, $00

.anim_step_b
|06FBBC| db $05, $05, $05, $05, $05, $05, $05, $04
|06FBC4| db $04, $04, $04, $04, $03, $03, $03, $03
|06FBCC| db $03, $02, $02, $02, $02, $01, $01, $01
|06FBD4| db $01, $00, $00, $00, $00, $00, $00, $00

.frame_mask
|06FBDC| db $FF, $3F, $1F, $0F, $0F, $07, $03, $01
|06FBE4| db $FF, $3F, $1F, $0F, $07, $03, $01, $00

; TODO verify
.head_data_offset
|06FBEC| db $00, $04, $08, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteModule_Fall2:
|06FBF0| LDA.w $0DF0,X
|06FBF3| BNE .falling

|06FBF5| STZ.w $0DD0,X

|06FBF8| JSL ManuallySetDeathFlagUW

|06FBFC| RTS

;---------------------------------------------------------------------------------------------------

.falling
|06FBFD| CMP.b #$40
|06FBFF| BCC .continue_a

; TODO wtf does this imply?
|06FC01| LDA.w $0F50,X
|06FC04| CMP.b #$05
|06FC06| BNE .not_frozen

|06FC08| LDA.b #$3F
|06FC0A| STA.w $0DF0,X

|06FC0D| BRA .continue_a

;---------------------------------------------------------------------------------------------------

.not_frozen
|06FC0F| LDA.w $0DF0,X
|06FC12| AND.b #$07
|06FC14| ORA.b $11
|06FC16| ORA.w $0FC1
|06FC19| BNE .skip_sfx31

|06FC1B| LDA.b #$31 ; SFX3.31
|06FC1D| JSL QueueSpriteSFX3WithPan

.skip_sfx31
|06FC21| JSR SpriteModule_Active
|06FC24| JSR GetScreenCoordinates

|06FC27| LDA.b $02
|06FC29| SEC
|06FC2A| SBC.b #$08
|06FC2C| STA.b $02

|06FC2E| LDA.b $03
|06FC30| SBC.b #$00
|06FC32| STA.b $03

|06FC34| LDA.w $0DF0,X
|06FC37| CLC
|06FC38| ADC.b #$14
|06FC3A| STA.b $06

|06FC3C| JSL DrawSpriteDistress.custom

|06FC40| RTS

;---------------------------------------------------------------------------------------------------

.continue_a
|06FC41| CMP.b #$3D
|06FC43| BNE .skip_sfx20

|06FC45| PHA

|06FC46| LDA.b #$20 ; SFX2.20
|06FC48| JSL QueueSpriteSFX2WithPan

|06FC4C| PLA

;---------------------------------------------------------------------------------------------------

.skip_sfx20
|06FC4D| LSR A
|06FC4E| TAY

|06FC4F| LDA.w $0E20,X
|06FC52| CMP.b #$26 ; SPRITE 26
|06FC54| BEQ .is_beetle

|06FC56| CMP.b #$13 ; SPRITE 13
|06FC58| BNE .not_minihelma

.is_beetle
|06FC5A| LDA.w .anim_step_b,Y
|06FC5D| STA.w $0DC0,X

|06FC60| JSR SpriteDraw_FallingHelmaBeetle

|06FC63| BRA .continue_b

;---------------------------------------------------------------------------------------------------

.not_minihelma
|06FC65| LDA.w .anim_step_a,Y
|06FC68| CMP.b #$0C
|06FC6A| BCS .ignore_head

|06FC6C| LDY.w $0DE0,X

|06FC6F| CLC
|06FC70| ADC.w .head_data_offset,Y

.ignore_head
|06FC73| STA.w $0DC0,X

|06FC76| JSR SpriteDraw_FallingHumanoid

.continue_b
|06FC79| LDA.w $0DF0,X
|06FC7C| LSR A
|06FC7D| LSR A
|06FC7E| LSR A
|06FC7F| TAY

|06FC80| LDA.b $1A
|06FC82| AND.w .frame_mask,Y
|06FC85| ORA.b $11
|06FC87| BNE .exit

;---------------------------------------------------------------------------------------------------

|06FC89| LDY.b #$68
|06FC8B| JSR CheckSpriteTileProperty

|06FC8E| LDA.w $0FA5
|06FC91| CMP.b #$20 ; TILETYPE 20
|06FC93| BEQ .dont_reset_recoil

|06FC95| STZ.w $0F30,X
|06FC98| STZ.w $0F40,X

.dont_reset_recoil
|06FC9B| LDA.w $0F30,X
|06FC9E| STA.w $0D40,X

|06FCA1| ASL A
|06FCA2| PHP
|06FCA3| ROR.w $0D40,X
|06FCA6| PLP
|06FCA7| ROR.w $0D40,X

|06FCAA| LDA.w $0F40,X
|06FCAD| STA.w $0D50,X

|06FCB0| ASL A
|06FCB1| PHP
|06FCB2| ROR.w $0D50,X
|06FCB5| PLP
|06FCB6| ROR.w $0D50,X

|06FCB9| JSR MoveSpriteXY_bank06

;---------------------------------------------------------------------------------------------------

.exit
|06FCBC| RTS

;===================================================================================================

pool SpriteDraw_FallingHelmaBeetle

.oam_groups_beetle
; group00
|06FCBD| dw   0,   0 : db $46, $01, $00, $02

; group01
|06FCC5| dw   0,   0 : db $48, $01, $00, $02

; group02
|06FCCD| dw   0,   0 : db $4A, $01, $00, $02

; group03
|06FCD5| dw   4,   4 : db $4C, $01, $00, $00

; group04
|06FCDD| dw   4,   4 : db $B7, $00, $00, $00

; group05
|06FCE5| dw   4,   4 : db $80, $00, $00, $00

;---------------------------------------------------------------------------------------------------

.oam_groups_mini_helma
; group00
|06FCED| dw   0,   0 : db $6C, $01, $00, $02

; group01
|06FCF5| dw   0,   0 : db $6E, $01, $00, $02

; group02
|06FCFD| dw   0,   0 : db $4E, $01, $00, $02

; group03
|06FD05| dw   4,   4 : db $5C, $01, $00, $00

; group04
|06FD0D| dw   4,   4 : db $B7, $00, $00, $00

; group05
|06FD15| dw   4,   4 : db $80, $00, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_FallingHelmaBeetle:
|06FD1D| LDA.w $0E20,X
|06FD20| CMP.b #$13 ; SPRITE 13
|06FD22| BEQ .mini_helma

;---------------------------------------------------------------------------------------------------

|06FD24| LDA.w $0DC0,X

|06FD27| ASL A
|06FD28| ASL A
|06FD29| ASL A

|06FD2A| ADC.b #<.oam_groups_beetle
|06FD2C| STA.b $08

|06FD2E| LDA.b #>.oam_groups_beetle

;---------------------------------------------------------------------------------------------------

.save_high_byte
|06FD30| ADC.b #$00
|06FD32| STA.b $09

|06FD34| LDA.b #$01
|06FD36| JSL TabulatedSpriteDraw

|06FD3A| RTS

;---------------------------------------------------------------------------------------------------

.mini_helma
|06FD3B| LDA.w $0DC0,X

|06FD3E| ASL A ; x8
|06FD3F| ASL A
|06FD40| ASL A

|06FD41| ADC.b #<.oam_groups_mini_helma
|06FD43| STA.b $08

|06FD45| LDA.b #>.oam_groups_mini_helma

|06FD47| BRA .save_high_byte

;===================================================================================================

pool SpriteDraw_FallingHumanoid

.offset_x
|06FD49| db  -4,   4,  -4,  12
|06FD4D| db   0,   0,   0,   0
|06FD51| db   0,   0,   0,   0
|06FD55| db   4,   0,   0,   0
|06FD59| db  -4,  12,  -4,   4
|06FD5D| db   0,   0,   0,   0
|06FD61| db   0,   0,   0,   0
|06FD65| db   4,   0,   0,   0
|06FD69| db  -4,  12,  -4,   4
|06FD6D| db   0,   0,   0,   0
|06FD71| db   0,   0,   0,   0
|06FD75| db   4,   0,   0,   0
|06FD79| db   4,   0,   0,   0
|06FD7D| db   4,   0,   0,   0

.offset_y
|06FD81| db  -4,  -4,   4,  12
|06FD85| db   0,   0,   0,   0
|06FD89| db   0,   0,   0,   0
|06FD8D| db   4,   0,   0,   0
|06FD91| db  -4,  -4,  12,   4
|06FD95| db   0,   0,   0,   0
|06FD99| db   0,   0,   0,   0
|06FD9D| db   4,   0,   0,   0
|06FDA1| db  -4,  -4,  12,   4
|06FDA5| db   0,   0,   0,   0
|06FDA9| db   0,   0,   0,   0
|06FDAD| db   4,   0,   0,   0
|06FDB1| db   4,   0,   0,   0
|06FDB5| db   4,   0,   0,   0

.char
|06FDB9| db $AE, $A8, $A6, $AF
|06FDBD| db $AA, $00, $00, $00
|06FDC1| db $AC, $00, $00, $00
|06FDC5| db $BE, $00, $00, $00
|06FDC9| db $A8, $AE, $AF, $A6
|06FDCD| db $AA, $00, $00, $00
|06FDD1| db $AC, $00, $00, $00
|06FDD5| db $BE, $00, $00, $00
|06FDD9| db $A6, $AF, $AE, $A8
|06FDDD| db $AA, $00, $00, $00
|06FDE1| db $AC, $00, $00, $00
|06FDE5| db $BE, $00, $00, $00
|06FDE9| db $B6, $00, $00, $00
|06FDED| db $80, $00, $00, $00

.prop
|06FDF1| db $00, $00, $00, $00
|06FDF5| db $00, $00, $00, $00
|06FDF9| db $00, $00, $00, $00
|06FDFD| db $00, $00, $00, $00
|06FE01| db $40, $40, $40, $40
|06FE05| db $40, $00, $00, $00
|06FE09| db $40, $00, $00, $00
|06FE0D| db $40, $00, $00, $00
|06FE11| db $80, $80, $80, $80
|06FE15| db $80, $00, $00, $00
|06FE19| db $80, $00, $00, $00
|06FE1D| db $80, $00, $00, $00
|06FE21| db $01, $00, $00, $00
|06FE25| db $01, $00, $00, $00

.size
|06FE29| db $00, $02, $02, $00
|06FE2D| db $02, $00, $00, $00
|06FE31| db $02, $00, $00, $00
|06FE35| db $00, $00, $00, $00
|06FE39| db $02, $00, $00, $02
|06FE3D| db $02, $00, $00, $00
|06FE41| db $02, $00, $00, $00
|06FE45| db $00, $00, $00, $00
|06FE49| db $02, $00, $00, $02
|06FE4D| db $02, $00, $00, $00
|06FE51| db $02, $00, $00, $00
|06FE55| db $00, $00, $00, $00
|06FE59| db $00, $00, $00, $00
|06FE5D| db $00, $00, $00, $00

endpool

;---------------------------------------------------------------------------------------------------
; TODO verify name
SpriteDraw_FallingHumanoid:
|06FE61| JSR GetScreenCoordinates

|06FE64| LDA.w $0DC0,X
|06FE67| PHA

|06FE68| ASL A
|06FE69| ASL A
|06FE6A| STA.b $06

|06FE6C| PLA
|06FE6D| PHX

|06FE6E| LDX.b #$00

|06FE70| CMP.b #$0C
|06FE72| BCS .set_correction_quota

|06FE74| AND.b #$03
|06FE76| BNE .set_correction_quota

|06FE78| LDX.b #$03

.set_correction_quota
|06FE7A| STX.b $07

;---------------------------------------------------------------------------------------------------

.next_object
|06FE7C| PHX

|06FE7D| TXA
|06FE7E| CLC
|06FE7F| ADC.b $06
|06FE81| TAX

|06FE82| LDA.b $00
|06FE84| CLC
|06FE85| ADC.w .offset_x,X
|06FE88| STA.b ($90),Y

|06FE8A| LDA.b $02
|06FE8C| CLC
|06FE8D| ADC.w .offset_y,X

|06FE90| INY

|06FE91| STA.b ($90),Y

|06FE93| LDA.w .char,X
|06FE96| INY

|06FE97| STA.b ($90),Y

|06FE99| LDA.w .prop,X
|06FE9C| EOR.b $05
|06FE9E| INY

|06FE9F| STA.b ($90),Y

|06FEA1| PHY

|06FEA2| TYA
|06FEA3| LSR A
|06FEA4| LSR A
|06FEA5| TAY

|06FEA6| LDA.w .size,X
|06FEA9| STA.b ($92),Y

|06FEAB| PLY
|06FEAC| INY

|06FEAD| PLX
|06FEAE| DEX
|06FEAF| BPL .next_object

;---------------------------------------------------------------------------------------------------

|06FEB1| PLX

|06FEB2| LDY.b #$FF
|06FEB4| LDA.b $07
|06FEB6| JSR CorrectOAMEntries

|06FEB9| RTS

;===================================================================================================

CorrectOAMEntries_long:
|06FEBA| PHB
|06FEBB| PHK
|06FEBC| PLB

|06FEBD| JSR CorrectOAMEntries

|06FEC0| PLB

|06FEC1| RTL

;===================================================================================================
; Y = object size
;  00 = small
;  FF = leave big
; A = number of objects
;===================================================================================================
CorrectOAMEntries:
|06FEC2| JSR GetSpriteCoordinatesRelativeScreen

|06FEC5| PHX

|06FEC6| REP #$10

|06FEC8| LDX.b $90
|06FECA| STX.b $0C

|06FECC| LDX.b $92
|06FECE| STX.b $0E

;---------------------------------------------------------------------------------------------------

.next_object
|06FED0| LDX.b $0E

|06FED2| LDA.b $0B
|06FED4| BPL .make_small

|06FED6| LDA.b $00,X
|06FED8| AND.b #$02

.make_small
|06FEDA| STA.b $00,X

|06FEDC| LDY.w #$0000

|06FEDF| LDX.b $0C

|06FEE1| LDA.b $00,X
|06FEE3| SEC
|06FEE4| SBC.b $07
|06FEE6| BPL .positive_x

|06FEE8| DEY

.positive_x
|06FEE9| CLC
|06FEEA| ADC.b $02
|06FEEC| STA.b $04

|06FEEE| TYA
|06FEEF| ADC.b $03
|06FEF1| STA.b $05

|06FEF3| JSR CheckIfXOnScreen
|06FEF6| BCC .not_offscreen_x

|06FEF8| LDX.b $0E
|06FEFA| INC.b $00,X

.not_offscreen_x
|06FEFC| LDY.w #$0000

|06FEFF| LDX.b $0C
|06FF01| INX

|06FF02| LDA.b $00,X
|06FF04| SEC
|06FF05| SBC.b $06
|06FF07| BPL .positive_y

|06FF09| DEY

.positive_y
|06FF0A| CLC
|06FF0B| ADC.b $00
|06FF0D| STA.b $09

|06FF0F| TYA
|06FF10| ADC.b $01
|06FF12| STA.b $0A

|06FF14| JSR CheckIfYOnScreen
|06FF17| BCC .not_offscreen_y

|06FF19| LDA.b #$F0
|06FF1B| STA.b $00,X

.not_offscreen_y
|06FF1D| INX
|06FF1E| INX
|06FF1F| INX
|06FF20| STX.b $0C

|06FF22| INC.b $0E

|06FF24| DEC.b $08
|06FF26| BPL .next_object

;---------------------------------------------------------------------------------------------------

|06FF28| SEP #$10

|06FF2A| PLX

|06FF2B| RTS

;===================================================================================================

GetSpriteCoordinatesRelativeScreen:
|06FF2C| STY.b $0B

|06FF2E| STA.b $08

|06FF30| LDA.w $0D00,X
|06FF33| STA.b $00

|06FF35| SEC
|06FF36| SBC.b $E8
|06FF38| STA.b $06

|06FF3A| LDA.w $0D20,X
|06FF3D| STA.b $01

|06FF3F| LDA.w $0D10,X
|06FF42| STA.b $02

|06FF44| SEC
|06FF45| SBC.b $E2
|06FF47| STA.b $07

|06FF49| LDA.w $0D30,X
|06FF4C| STA.b $03

|06FF4E| RTS

;===================================================================================================

CheckIfXOnScreen:
|06FF4F| REP #$20

|06FF51| LDA.b $04
|06FF53| SEC
|06FF54| SBC.b $E2
|06FF56| CMP.w #$0100

|06FF59| SEP #$20

|06FF5B| RTS

;===================================================================================================

CheckIfYOnScreen:
|06FF5C| REP #$20

|06FF5E| LDA.b $09
|06FF60| PHA

|06FF61| CLC
|06FF62| ADC.w #$0010
|06FF65| STA.b $09

|06FF67| SEC
|06FF68| SBC.b $E8
|06FF6A| CMP.w #$0100

|06FF6D| PLA
|06FF6E| STA.b $09

|06FF70| SEP #$20

|06FF72| RTS

;===================================================================================================

UNREACHABLE_06FF73:
|06FF73| JSL KillThisSprite

|06FF77| RTS

;===================================================================================================

pool HandleSpriteRecoil_bank06

.masks
|06FF78| db $03, $01, $00, $00, $0C, $03

endpool

;---------------------------------------------------------------------------------------------------

HandleSpriteRecoil_bank06:
|06FF7E| LDA.w $0EA0,X
|06FF81| BEQ .exit

|06FF83| AND.b #$7F
|06FF85| BEQ .recoil_over

|06FF87| LDA.w $0D40,X
|06FF8A| PHA

|06FF8B| LDA.w $0D50,X
|06FF8E| PHA

|06FF8F| DEC.w $0EA0,X
|06FF92| BNE .still_recoiling

|06FF94| LDA.w $0F40,X
|06FF97| CLC
|06FF98| ADC.b #$20
|06FF9A| CMP.b #$40
|06FF9C| BCS .no_adjust

|06FF9E| LDA.w $0F30,X
|06FFA1| CLC
|06FFA2| ADC.b #$20
|06FFA4| CMP.b #$40
|06FFA6| BCC .still_recoiling

.no_adjust
|06FFA8| LDA.b #$90
|06FFAA| STA.w $0EA0,X

.still_recoiling
|06FFAD| LDA.w $0EA0,X
|06FFB0| BMI .no_movement

|06FFB2| LSR A
|06FFB3| LSR A
|06FFB4| TAY

|06FFB5| LDA.b $1A
|06FFB7| AND.w .masks,Y
|06FFBA| BNE .no_movement

|06FFBC| LDA.w $0F30,X
|06FFBF| STA.w $0D40,X

|06FFC2| LDA.w $0F40,X
|06FFC5| STA.w $0D50,X

|06FFC8| LDA.w $0CD2,X
|06FFCB| BMI .handle_movement

|06FFCD| JSL CheckSpriteTileCollision_long

|06FFD1| LDA.w $0E70,X
|06FFD4| AND.b #$0F
|06FFD6| BEQ .handle_movement

.stop_horizontal_movement
|06FFD8| CMP.b #$04
|06FFDA| BCS .stop_vertical_movement

|06FFDC| STZ.w $0F40,X
|06FFDF| STZ.w $0D50,X

|06FFE2| BRA .movement_stopped

.stop_vertical_movement
|06FFE4| STZ.w $0F30,X
|06FFE7| STZ.w $0D40,X

.movement_stopped
|06FFEA| BRA .no_movement

.handle_movement
|06FFEC| JSR MoveSpriteXY_bank06

.no_movement
|06FFEF| PLA
|06FFF0| STA.w $0D50,X

|06FFF3| PLA
|06FFF4| STA.w $0D40,X

|06FFF7| PLA
|06FFF8| PLA

.exit
|06FFF9| RTS

.recoil_over
|06FFFA| STZ.w $0EA0,X

|06FFFD| RTS

;===================================================================================================
; FREE ROM: 0x02
;===================================================================================================
NULL_06FFFE:
|06FFFE| db $FF, $FF

;===================================================================================================

org $088000

;===================================================================================================

Ancilla_SFX1_Near:
|088000| JSR SetAncillaSFXPanNearLink
|088003| STA.w $012D

|088006| RTS

;===================================================================================================

Ancilla_SFX2_Near:
|088007| JSR SetAncillaSFXPanNearLink
|08800A| STA.w $012E

|08800D| RTS

;===================================================================================================

Ancilla_SFX3_Near:
|08800E| JSR SetAncillaSFXPanNearLink
|088011| STA.w $012F

|088014| RTS

;===================================================================================================

SetAncillaSFXPanNearLink:
|088015| STA.w $0CF8

|088018| JSL CalculateLinkSFXPan
|08801C| ORA.w $0CF8

|08801F| RTS

;===================================================================================================

Ancilla_SFX1_Pan:
|088020| JSR SetAncillaSFXPan
|088023| STA.w $012D

|088026| RTS

;===================================================================================================

Ancilla_SFX2_Pan:
|088027| JSR SetAncillaSFXPan
|08802A| STA.w $012E

|08802D| RTS

;===================================================================================================

Ancilla_SFX3_Pan:
|08802E| JSR SetAncillaSFXPan
|088031| STA.w $012F

|088034| RTS

;===================================================================================================

SetAncillaSFXPan:
|088035| STA.w $0CF8

|088038| JSL CalculateAncillaSFXPan
|08803C| ORA.w $0CF8

|08803F| RTS


;===================================================================================================

pool AncillaAdd_FireRodShot

.init_check_offset_x_low
|088040| db   0,   0,  -8,  16

.init_check_offset_x_high
|088044| db   0,   0,  -1,   0

.init_check_offset_y_low
|088048| db  -8,  16,   3,   3

.init_check_offset_y_high
|08804C| db  -1,   0,   0,   0

;---------------------------------------------------------------------------------------------------
; Why do these have to be here?
;---------------------------------------------------------------------------------------------------
#SomariaBulletSpeedX:
|088050| db   0,   0, -40,  40
|088054| db   0,   0, -48,  48
|088058| db   0,   0, -64,  64

#SomariaBulletSpeedY:
|08805C| db -40,  40,   0,   0
|088060| db -48,  48,   0,   0
|088064| db -64,  64,   0,   0

;---------------------------------------------------------------------------------------------------

.flame_speed_x
|088068| db   0,   0, -64,  64

.flame_speed_y ; bleeds into next
|08806C| db -64,  64,   0

endpool

;===================================================================================================

AncillaObjectAllocation:
|08806F| db $00 ; 0x00 - NOTHING
|088070| db $08 ; 0x01 - SOMARIA BULLET
|088071| db $0C ; 0x02 - FIRE ROD SHOT
|088072| db $10 ; 0x03 - UNUSED
|088073| db $10 ; 0x04 - BEAM HIT
|088074| db $04 ; 0x05 - BOOMERANG
|088075| db $10 ; 0x06 - WALL HIT
|088076| db $18 ; 0x07 - BOMB
|088077| db $08 ; 0x08 - DOOR DEBRIS
|088078| db $08 ; 0x09 - ARROW
|088079| db $08 ; 0x0A - LODGED ARROW
|08807A| db $00 ; 0x0B - ICE ROD SHOT
|08807B| db $14 ; 0x0C - SWORD BEAM
|08807C| db $00 ; 0x0D - SPIN ATTACK FULL CHARGE SPARK
|08807D| db $10 ; 0x0E - BLAST WALL EXPLOSION
|08807E| db $28 ; 0x0F - BLAST WALL EXPLOSION
|08807F| db $18 ; 0x10 - BLAST WALL EXPLOSION
|088080| db $10 ; 0x11 - ICE ROD WALL HIT
|088081| db $10 ; 0x12 - BLAST WALL EXPLOSION
|088082| db $10 ; 0x13 - ICE ROD SPARKLE
|088083| db $10 ; 0x14 - BAD POINTER
|088084| db $0C ; 0x15 - SPLASH
|088085| db $08 ; 0x16 - HIT STARS
|088086| db $08 ; 0x17 - SHOVEL DIRT
|088087| db $50 ; 0x18 - ETHER SPELL
|088088| db $00 ; 0x19 - BOMBOS SPELL
|088089| db $10 ; 0x1A - POWDER DUST
|08808A| db $08 ; 0x1B - SWORD WALL HIT
|08808B| db $40 ; 0x1C - QUAKE SPELL
|08808C| db $00 ; 0x1D - SCREEN SHAKE
|08808D| db $0C ; 0x1E - DASH DUST
|08808E| db $24 ; 0x1F - HOOKSHOT
|08808F| db $10 ; 0x20 - BLANKET
|088090| db $0C ; 0x21 - SNORE
|088091| db $08 ; 0x22 - ITEM GET
|088092| db $10 ; 0x23 - LINK POOF
|088093| db $10 ; 0x24 - GRAVESTONE
|088094| db $04 ; 0x25 - BAD POINTER
|088095| db $0C ; 0x26 - SWORD SWING SPARKLE
|088096| db $1C ; 0x27 - DUCK
|088097| db $00 ; 0x28 - WISH POND ITEM
|088098| db $10 ; 0x29 - MILESTONE ITEM GET
|088099| db $14 ; 0x2A - SPIN ATTACK SPARKLE A
|08809A| db $14 ; 0x2B - SPIN ATTACK SPARKLE B
|08809B| db $10 ; 0x2C - SOMARIA BLOCK
|08809C| db $08 ; 0x2D - SOMARIA BLOCK FIZZ
|08809D| db $20 ; 0x2E - SOMARIA BLOCK FISSION
|08809E| db $10 ; 0x2F - LAMP FLAME
|08809F| db $10 ; 0x30 - BYRNA WINDUP SPARK
|0880A0| db $10 ; 0x31 - BYRNA SPARK
|0880A1| db $04 ; 0x32 - BLAST WALL FIREBALL
|0880A2| db $00 ; 0x33 - BLAST WALL EXPLOSION
|0880A3| db $80 ; 0x34 - SKULL WOODS FIRE
|0880A4| db $10 ; 0x35 - MASTER SWORD GET
|0880A5| db $04 ; 0x36 - FLUTE
|0880A6| db $30 ; 0x37 - WEATHERVANE EXPLOSION
|0880A7| db $14 ; 0x38 - CUTSCENE DUCK
|0880A8| db $10 ; 0x39 - SOMARIA PLATFORM POOF
|0880A9| db $00 ; 0x3A - BIG BOMB EXPLOSION
|0880AA| db $10 ; 0x3B - SWORD UP SPARKLE
|0880AB| db $00 ; 0x3C - SPIN ATTACK CHARGE SPARKLE
|0880AC| db $00 ; 0x3D - ITEM SPLASH
|0880AD| db $08 ; 0x3E - RISING CRYSTAL
|0880AE| db $00 ; 0x3F - BUSH POOF
|0880AF| db $10 ; 0x40 - DWARF POOF
|0880B0| db $08 ; 0x41 - WATERFALL SPLASH
|0880B1| db $78 ; 0x42 - HAPPINESS POND RUPEES
|0880B2| db $80 ; 0x43 - GANONS TOWER CUTSCENE

;===================================================================================================

AncillaAdd_FireRodShot:
|0880B3| LDY.b #$01

|0880B5| STA.b $00

|0880B7| JSL FindAncillaSlot
|0880BB| BPL .free_slot

|0880BD| LDA.b $00
|0880BF| CMP.b #$01
|0880C1| BEQ .no_RefundMagic

|0880C3| LDX.b #$00
|0880C5| JSL RefundMagic

.no_RefundMagic
|0880C9| BRL .exit_a

;---------------------------------------------------------------------------------------------------

.free_slot
|0880CC| PHB
|0880CD| PHK
|0880CE| PLB

|0880CF| PHX

|0880D0| LDA.b $00
|0880D2| CMP.b #$01
|0880D4| BEQ .no_sfx

|0880D6| PHY

|0880D7| LDA.b #$0E ; SFX2.0E
|0880D9| JSR Ancilla_SFX2_Near

|0880DC| PLY

;---------------------------------------------------------------------------------------------------

.no_sfx
|0880DD| LDA.b $00
|0880DF| STA.w $0C4A,Y

|0880E2| TAX

|0880E3| LDA.w AncillaObjectAllocation,X
|0880E6| STA.w $0C90,Y

|0880E9| LDA.b #$03
|0880EB| STA.w $0C68,Y

|0880EE| LDA.b #$00
|0880F0| STA.w $0C54,Y
|0880F3| STA.w $0C5E,Y

|0880F6| STA.w $0280,Y
|0880F9| STA.w $028A,Y

|0880FC| LDA.b $2F
|0880FE| LSR A
|0880FF| STA.w $0C72,Y

|088102| TAX

|088103| PHY
|088104| PHX

|088105| TYX
|088106| JSL Ancilla_CheckInitialTile_A

|08810A| PLX
|08810B| PLY

|08810C| BCS .disperse_on_spawn

;---------------------------------------------------------------------------------------------------

|08810E| LDA.w $0022
|088111| CLC
|088112| ADC.w .init_check_offset_x_low,X
|088115| STA.w $0C04,Y

|088118| LDA.w $0023
|08811B| ADC.w .init_check_offset_x_high,X
|08811E| STA.w $0C18,Y

|088121| LDA.w $0020
|088124| CLC
|088125| ADC.w .init_check_offset_y_low,X
|088128| STA.w $0BFA,Y

|08812B| LDA.w $0021
|08812E| ADC.w .init_check_offset_y_high,X
|088131| STA.w $0C0E,Y

;---------------------------------------------------------------------------------------------------
; [WTF]
|088134| LDA.w $0C4A,Y
|088137| CMP.b #$01 ; ANCILLA 01
|088139| BEQ .is_somaria_bullet

|08813B| LDA.w .flame_speed_x,X
|08813E| STA.w $0C2C,Y

|088141| LDA.w .flame_speed_y,X

|088144| BRA .speed_set

;---------------------------------------------------------------------------------------------------
; [WTF]  somaria bullet speed depends on your sword, but only if it was created by the fire rod
.is_somaria_bullet
|088146| LDA.l $7EF359
|08814A| DEC A
|08814B| DEC A

|08814C| ASL A
|08814D| ASL A

|08814E| STA.b $0F

|088150| TXA
|088151| CLC
|088152| ADC.b $0F
|088154| TAX

|088155| LDA.w SomariaBulletSpeedX,X
|088158| STA.w $0C2C,Y

|08815B| LDA.w SomariaBulletSpeedY,X

;---------------------------------------------------------------------------------------------------

.speed_set
|08815E| STA.w $0C22,Y

|088161| LDA.w $00EE
|088164| STA.w $0C7C,Y

|088167| LDA.w $0476
|08816A| STA.w $03CA,Y

|08816D| PLX
|08816E| PLB

.exit_a
|08816F| RTL

;---------------------------------------------------------------------------------------------------

.disperse_on_spawn
|088170| LDA.w $0C4A,Y
|088173| CMP.b #$01 ; ANCILLA 01
|088175| BNE .not_bullet

|088177| LDA.b #$04 ; ANCILLA 04
|088179| STA.w $0C4A,Y

|08817C| LDA.b #$07
|08817E| STA.w $0C68,Y

|088181| LDA.b #$10
|088183| STA.w $0C90,Y

|088186| BRA .exit_b

;---------------------------------------------------------------------------------------------------

.not_bullet
|088188| LDA.b #$01
|08818A| STA.w $0C54,Y

|08818D| LDA.b #$1F
|08818F| STA.w $0C68,Y

|088192| LDA.b #$08
|088194| STA.w $0C90,Y

|088197| LDA.b #$2A ; SFX2.2A
|088199| JSR Ancilla_SFX2_Pan

.exit_b
|08819C| PLX
|08819D| PLB

|08819E| RTL

;===================================================================================================

pool SpawnSomariaBullets

.offset_x
|08819F| db  -8,  -8,  -9,  -4

.offset_y
|0881A3| db -15,  -4,  -8,  -8

endpool

;---------------------------------------------------------------------------------------------------

SpawnSomariaBullets:
|0881A7| LDA.b #$03
|0881A9| STA.w $0FB5

|0881AC| LDA.w $029E,X
|0881AF| CMP.b #$FF
|0881B1| BNE .altitiude_fine

|0881B3| LDA.b #$00

.altitiude_fine
|0881B5| STA.b $05

|0881B7| LDA.w $0C04,X
|0881BA| STA.b $00

|0881BC| LDA.w $0C18,X
|0881BF| STA.b $01

|0881C1| LDA.w $0BFA,X
|0881C4| SEC
|0881C5| SBC.b $05
|0881C7| STA.b $02

|0881C9| LDA.w $0C0E,X
|0881CC| SBC.b #$00
|0881CE| STA.b $03

|0881D0| LDA.w $0C7C,X
|0881D3| STA.b $04

;---------------------------------------------------------------------------------------------------

.next_spawn
|0881D5| LDY.b #$04
|0881D7| LDA.b #$01 ; ANCILLA 01
|0881D9| JSL FindAncillaSlot
|0881DD| BMI .spawn_failed

|0881DF| PHX

|0881E0| LDA.b #$01 ; ANCILLA 01
|0881E2| STA.w $0C4A,Y

|0881E5| TAX

|0881E6| LDA.w AncillaObjectAllocation,X
|0881E9| STA.w $0C90,Y

|0881EC| LDA.b #$04
|0881EE| STA.w $0C54,Y

|0881F1| LDA.b #$00
|0881F3| STA.w $0C5E,Y
|0881F6| STA.w $0280,Y

|0881F9| LDX.w $0FB5
|0881FC| TXA
|0881FD| STA.w $0C72,Y

|088200| LDA.b $00
|088202| CLC
|088203| ADC.w .offset_x,X
|088206| STA.w $0C04,Y

|088209| LDA.b $01
|08820B| ADC.b #$FF
|08820D| STA.w $0C18,Y

|088210| LDA.b $02
|088212| CLC
|088213| ADC.w .offset_y,X
|088216| STA.w $0BFA,Y

|088219| LDA.b $03
|08821B| ADC.b #$FF
|08821D| STA.w $0C0E,Y

|088220| JSL Ancilla_TerminateOffScreen

|088224| LDA.w SomariaBulletSpeedX,X
|088227| STA.w $0C2C,Y

|08822A| LDA.w SomariaBulletSpeedY,X
|08822D| STA.w $0C22,Y

|088230| LDA.b $04
|088232| STA.w $0C7C,Y

|088235| LDA.w $0476
|088238| STA.w $03CA,Y

|08823B| PLX

.spawn_failed
|08823C| DEC.w $0FB5
|08823F| BPL .next_spawn

|088241| RTS

;===================================================================================================

Ancilla_Main:
|088242| PHB
|088243| PHK
|088244| PLB

|088245| JSR WeaponTink
|088248| JSR HandleAllAncilla

|08824B| PLB

|08824C| RTL

;===================================================================================================

Ancilla_ProjectReflexiveSpeedOntoSprite:
|08824D| LDA.w $0022 ; cache Link's coordinates
|088250| PHA

|088251| LDA.w $0023
|088254| PHA

|088255| LDA.w $0020
|088258| PHA

|088259| LDA.w $0021
|08825C| PHA

|08825D| LDA.b $04
|08825F| STA.w $0022

|088262| LDA.b $05
|088264| STA.w $0023

|088267| LDA.b $06
|088269| STA.w $0020

|08826C| LDA.b $07
|08826E| STA.w $0021

|088271| TYA
|088272| JSL ProjectReflexiveSpeedOntoSprite_UsingLinkCoordinates

|088276| PLA ; recover Link's coordinates
|088277| STA.w $0021

|08827A| PLA
|08827B| STA.w $0020

|08827E| PLA
|08827F| STA.w $0023

|088282| PLA
|088283| STA.w $0022

|088286| RTS

;===================================================================================================

Bomb_CheckSpriteDamage:
|088287| LDY.b #$0F

.next_sprite
|088289| TYA
|08828A| EOR.b $1A
|08828C| AND.b #$03
|08828E| ORA.w $0EF0,Y
|088291| ORA.w $0BA0,Y
|088294| BEQ .continue

.different_layer
|088296| JMP.w .skip

.continue
|088299| LDA.w $0F20,Y
|08829C| CMP.w $0C7C,X
|08829F| BNE .different_layer

|0882A1| LDA.w $0DD0,Y
|0882A4| CMP.b #$09
|0882A6| BCC .skip

|0882A8| LDA.w $0C04,X
|0882AB| SEC
|0882AC| SBC.b #$18
|0882AE| STA.b $00

|0882B0| LDA.w $0C18,X
|0882B3| SBC.b #$00
|0882B5| STA.b $08

|0882B7| LDA.w $0BFA,X
|0882BA| SEC
|0882BB| SBC.b #$18
|0882BD| PHP

|0882BE| SEC
|0882BF| SBC.w $029E,X
|0882C2| STA.b $01

|0882C4| LDA.w $0C0E,X
|0882C7| SBC.b #$00

|0882C9| PLP
|0882CA| SBC.b #$00
|0882CC| STA.b $09

|0882CE| LDA.b #$30
|0882D0| STA.b $02
|0882D2| STA.b $03

|0882D4| PHX

|0882D5| TYX
|0882D6| JSL SetupSpriteHitbox_long

|0882DA| PLX

|0882DB| JSL CheckIfHitboxesOverlap_long
|0882DF| BCC .skip

;---------------------------------------------------------------------------------------------------

|0882E1| LDA.w $0E20,Y
|0882E4| CMP.b #$92 ; SPRITE 92
|0882E6| BNE .not_king_helma

|0882E8| LDA.w $0DB0,Y
|0882EB| CMP.b #$03
|0882ED| BCS .skip

.not_king_helma
|0882EF| LDA.w $0C04,X
|0882F2| STA.b $04

|0882F4| LDA.w $0C18,X
|0882F7| STA.b $05

|0882F9| LDA.w $0BFA,X
|0882FC| STA.b $06

|0882FE| LDA.w $0C0E,X
|088301| STA.b $07

|088303| PHX
|088304| PHY

|088305| LDA.w $0C4A,X
|088308| TYX

|088309| JSL CheckAncillaDamageToSprite

|08830D| LDY.b #$40
|08830F| JSR Ancilla_ProjectReflexiveSpeedOntoSprite

|088312| PLY
|088313| PLX

|088314| LDA.b $00
|088316| EOR.b #$FF
|088318| INC A
|088319| STA.w $0F30,Y

|08831C| LDA.b $01
|08831E| EOR.b #$FF
|088320| INC A
|088321| STA.w $0F40,Y

.skip
|088324| DEY
|088325| BMI .done

|088327| JMP.w .next_sprite

;---------------------------------------------------------------------------------------------------

.done
|08832A| RTS

;===================================================================================================

HandleAllAncilla:
|08832B| LDX.b #$09

.next
|08832D| STX.w $0FA0

|088330| LDA.w $0C4A,X
|088333| BEQ .skip

|088335| JSR HandleSingleAncilla

.skip
|088338| DEX
|088339| BPL .next

|08833B| RTS

;===================================================================================================

HandleSingleAncilla:
|08833C| PHA

|08833D| CPX.b #$06
|08833F| BCS .skip_oam

|088341| LDA.w $0C90,X

|088344| LDY.w $0FB3
|088347| BEQ .ignore_layer

|088349| LDY.w $0C7C,X
|08834C| BNE .bg1

|08834E| JSL AllocateOAMInRegionD
|088352| BRA .save_oam

.bg1
|088354| JSL AllocateOAMInRegionF
|088358| BRA .save_oam

.ignore_layer
|08835A| JSL AllocateOAMInRegionA

.save_oam
|08835E| TYA
|08835F| STA.w $0C86,X

;---------------------------------------------------------------------------------------------------

.skip_oam
|088362| LDY.b $11
|088364| BNE .skip_timer

|088366| LDY.w $0C68,X
|088369| BEQ .skip_timer

|08836B| DEC.w $0C68,X

.skip_timer
|08836E| PLA
|08836F| DEC A
|088370| ASL A
|088371| TAY

|088372| LDA.w .vectors+0,Y
|088375| STA.b $00

|088377| LDA.w .vectors+1,Y
|08837A| STA.b $01

|08837C| JMP.w ($0000)

;---------------------------------------------------------------------------------------------------

.vectors
|08837F| dw Ancilla01_SomariaBullet
|088381| dw Ancilla02_FireRodShot
|088383| dw Ancilla03
|088385| dw Ancilla04_BeamHit
|088387| dw Ancilla05_Boomerang
|088389| dw Ancilla06_WallHit
|08838B| dw Ancilla07_Bomb
|08838D| dw Ancilla08_DoorDebris
|08838F| dw Ancilla09_Arrow
|088391| dw Ancilla0A_LodgedArrow
|088393| dw Ancilla0B_IceRodShot
|088395| dw Ancilla0C_SwordBeam_bounce
|088397| dw Ancilla0D_SpinAttackFullChargeSpark
|088399| dw Ancilla33_BlastWallExplosion ; Unused
|08839B| dw Ancilla33_BlastWallExplosion ; Unused
|08839D| dw Ancilla33_BlastWallExplosion ; Unused
|08839F| dw Ancilla11_IceRodWallHit
|0883A1| dw Ancilla33_BlastWallExplosion ; Unused
|0883A3| dw Ancilla13_IceRodSparkle
|0883A5| dw JumpSplash_char ; bad pointer but correct
|0883A7| dw Ancilla15_JumpSplash
|0883A9| dw Ancilla16_HitStars
|0883AB| dw Ancilla17_ShovelDirt
|0883AD| dw Ancilla18_EtherSpell
|0883AF| dw Ancilla19_BombosSpell
|0883B1| dw Ancilla1A_PowderDust
|0883B3| dw Ancilla1B_SwordWallHit
|0883B5| dw Ancilla1C_QuakeSpell
|0883B7| dw Ancilla1D_ScreenShake
|0883B9| dw Ancilla1E_DashDust
|0883BB| dw Ancilla1F_Hookshot
|0883BD| dw Ancilla20_Blanket
|0883BF| dw Ancilla21_Snore
|0883C1| dw Ancilla22_ItemReceipt
|0883C3| dw Ancilla23_LinkPoof
|0883C5| dw Ancilla24_Gravestone
|0883C7| dw HitStar_char ; bad pointer but correct
|0883C9| dw Ancilla26_SwordSwingSparkle
|0883CB| dw Ancilla27_Duck
|0883CD| dw Ancilla28_WishPondItem
|0883CF| dw Ancilla29_MilestoneItemReceipt
|0883D1| dw Ancilla2A_SpinAttackSparkleA
|0883D3| dw Ancilla2B_SpinAttackSparkleB
|0883D5| dw Ancilla2C_SomariaBlock
|0883D7| dw Ancilla2D_SomariaBlockFizz
|0883D9| dw Ancilla2E_SomariaBlockFission
|0883DB| dw Ancilla2F_LampFlame
|0883DD| dw Ancilla30_ByrnaWindupSpark
|0883DF| dw Ancilla31_ByrnaSpark
|0883E1| dw Ancilla32_BlastWallFireball
|0883E3| dw Ancilla33_BlastWallExplosion
|0883E5| dw Ancilla34_SkullWoodsFire
|0883E7| dw Ancilla35_MasterSwordCutscene
|0883E9| dw Ancilla36_Flute
|0883EB| dw Ancilla37_WeathervaneExplosion
|0883ED| dw Ancilla38_CutsceneDuck
|0883EF| dw Ancilla39_SomariaPlatformPoof
|0883F1| dw Ancilla3A_BigBombExplosion
|0883F3| dw Ancilla3B_SwordUpSparkle
|0883F5| dw Ancilla3C_SpinAttackChargeSparkle
|0883F7| dw Ancilla3D_ItemSplash
|0883F9| dw Ancilla3E_RisingCrystal
|0883FB| dw Ancilla3F_BushPoof
|0883FD| dw Ancilla40_DwarfPoof
|0883FF| dw Ancilla41_WaterfallSplash
|088401| dw Ancilla42_HappinessPondRupees
|088403| dw Ancilla43_GanonsTowerCutscene

;===================================================================================================
; The little sparkle thingies that come off the ice rod shot
;===================================================================================================
pool Ancilla13_IceRodSparkle

.offset_x
|088405| db  2,  7,  6,  1
|088409| db  1,  7,  7,  1
|08840D| db  0,  7,  8,  1
|088411| db  4,  9,  4, -1

.offset_y
|088415| db  2,  3,  8,  7
|088419| db  1,  1,  7,  7
|08841D| db  1,  0,  7,  8
|088421| db -1,  4,  9,  4

.char
|088425| db $83, $83, $83, $83
|088429| db $B6, $80, $B6, $80
|08842D| db $B7, $B6, $B7, $B6
|088431| db $B7, $B6, $B7, $B6

endpool

;---------------------------------------------------------------------------------------------------

Ancilla13_IceRodSparkle:
|088435| LDA.w $0C68,X ; timer for being alive
|088438| BNE .active

|08843A| STZ.w $0C4A,X ; destroy self

.active
|08843D| LDA.b $11
|08843F| BNE .no_move

|088441| JSR AncillaMoveX
|088444| JSR AncillaMoveY

.no_move
|088447| JSR Ancilla_KillOffscreen

; We're looking for an ice rod shot to steal OAM properties from
|08844A| LDY.b #$04
|08844C| LDA.b #$0B ; ANCILLA 0B

.next_slot
|08844E| CMP.w $0C4A,Y ; look for the main shot
|088451| BEQ .found_him

|088453| DEY
|088454| BPL .next_slot

; uses slot 255 if nothing is found, but that doesn't matter much
.found_him
|088456| LDA.w $0280,Y
|088459| BEQ .normal_priority

|08845B| LDA.b #$30
|08845D| STA.b $04

.normal_priority
|08845F| LDA.b #$10

|088461| LDY.w $0FB3
|088464| BEQ .ignore_layer

|088466| LDY.w $0C7C,X ; check layer for OAM region
|088469| BNE .lower_layer

|08846B| JSL AllocateOAMInRegionD
|08846F| BRA .draw

.lower_layer
|088471| JSL AllocateOAMInRegionE
|088475| BRA .draw

.ignore_layer
|088477| JSL AllocateOAMInRegionA

.draw
|08847B| LDY.b #$00

|08847D| LDA.b #$03
|08847F| STA.b $05

|088481| LDA.w $0C68,X
|088484| AND.b #$1C
|088486| STA.b $06

|088488| PHX

;---------------------------------------------------------------------------------------------------

.next_object
|088489| LDA.b $05
|08848B| ORA.b $06

|08848D| TAX

|08848E| LDA.b $00
|088490| CLC
|088491| ADC.w .offset_x,X
|088494| STA.b ($90),Y

|088496| INY
|088497| LDA.b $01
|088499| CLC
|08849A| ADC.w .offset_y,X
|08849D| STA.b ($90),Y

|08849F| INY
|0884A0| LDA.w .char,X
|0884A3| STA.b ($90),Y

|0884A5| INY
|0884A6| LDA.b $04
|0884A8| ORA.b #$04
|0884AA| STA.b ($90),Y

|0884AC| INY
|0884AD| PHY

|0884AE| TYA
|0884AF| SEC
|0884B0| SBC.b #$04
|0884B2| LSR A
|0884B3| LSR A
|0884B4| TAY

|0884B5| LDA.b #$00
|0884B7| STA.b ($92),Y

|0884B9| PLY

|0884BA| DEC.b $05
|0884BC| BPL .next_object

;---------------------------------------------------------------------------------------------------

|0884BE| PLX

|0884BF| RTS

;===================================================================================================

pool AncillaAdd_IceRodSparkle

.speed_y
|0884C0| db -4,  4,  0,  0

.speed_x
|0884C4| db  0,  0, -4,  4

endpool

;---------------------------------------------------------------------------------------------------

AncillaAdd_IceRodSparkle:
|0884C8| LDA.b $11
|0884CA| BNE .return

|0884CC| DEC.w $0BF0,X
|0884CF| BPL .return

|0884D1| LDA.b #$05 ; timer for spawning
|0884D3| STA.w $0BF0,X

;---------------------------------------------------------------------------------------------------

|0884D6| LDY.b #$09 ; look for a free slot anywhere

.next_slot
|0884D8| LDA.w $0C4A,Y
|0884DB| BEQ .free_slot

|0884DD| DEY
|0884DE| BPL .next_slot

.return ; don't exist
|0884E0| RTS

;---------------------------------------------------------------------------------------------------

.free_slot
|0884E1| LDA.b #$13 ; ANCILLA 13
|0884E3| STA.w $0C4A,Y

|0884E6| LDA.b #$0F
|0884E8| STA.w $0C68,Y

|0884EB| LDA.w $0C72,X

|0884EE| PHX
|0884EF| TAX

|0884F0| LDA.w .speed_x,X
|0884F3| STA.w $0C2C,Y

|0884F6| LDA.w .speed_y,X
|0884F9| STA.w $0C22,Y

|0884FC| PLX

; copy some properties from parent
|0884FD| LDA.w $0C04,X
|088500| STA.w $0C04,Y

|088503| LDA.w $0BFA,X
|088506| STA.w $0BFA,Y

|088509| LDA.w $0C7C,X
|08850C| STA.w $0C7C,Y

|08850F| LDA.b #$00
|088511| STA.w $0C90,Y

|088514| RTS

;===================================================================================================

pool Ancilla01_SomariaBullet

.frame_masks
|088515| db $07, $03, $01, $00, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

Ancilla01_SomariaBullet:
|08851B| LDA.b $11
|08851D| BNE .draw

|08851F| LDY.w $0C54,X

|088522| LDA.b $1A
|088524| AND.w .frame_masks,Y
|088527| BNE .delay_movement

|088529| JSR AncillaMoveX
|08852C| JSR AncillaMoveY

.delay_movement
|08852F| LDA.w $0C68,X
|088532| BNE .timer_delay

|088534| LDA.b #$03
|088536| STA.w $0C68,X

|088539| LDA.w $0C54,X
|08853C| INC A
|08853D| CMP.b #$06
|08853F| BCC .dont_reset_state

|088541| LDA.b #$04

.dont_reset_state
|088543| STA.w $0C54,X

.timer_delay
|088546| JSR Ancilla_CheckSpriteCollision
|088549| BCS .collision

|08854B| JSR Ancilla_CheckTileCollision_staggered
|08854E| BCC .draw

.collision
|088550| LDA.b #$04 ; ANCILLA 04
|088552| STA.w $0C4A,X

|088555| LDA.b #$07
|088557| STA.w $0C68,X

|08855A| LDA.b #$10
|08855C| STA.w $0C90,X

.draw
|08855F| BRL SomariaBlast_Draw

;===================================================================================================

pool SomariaBlast_Draw

.char_a
|088562| db  $50,  $50
|088564| db  $44,  $44
|088566| db  $52,  $52
|088568| db  $50,  $50
|08856A| db  $44,  $44
|08856C| db  $51,  $51
|08856E| db  $43,  $43
|088570| db  $42,  $42
|088572| db  $41,  $41
|088574| db  $43,  $43
|088576| db  $42,  $42
|088578| db  $40,  $40

.char_b
|08857A| db  $50,  $50
|08857C| db  $44,  $44
|08857E| db  $51,  $51
|088580| db  $50,  $50
|088582| db  $44,  $44
|088584| db  $52,  $52
|088586| db  $43,  $43
|088588| db  $42,  $42
|08858A| db  $40,  $40
|08858C| db  $43,  $43
|08858E| db  $42,  $42
|088590| db  $41,  $41

;---------------------------------------------------------------------------------------------------

.prop_a
|088592| db  $C0,  $C0
|088594| db  $C0,  $C0
|088596| db  $80,  $C0
|088598| db  $40,  $40
|08859A| db  $40,  $40
|08859C| db  $00,  $40
|08859E| db  $40,  $40
|0885A0| db  $40,  $40
|0885A2| db  $40,  $C0
|0885A4| db  $00,  $00
|0885A6| db  $00,  $00
|0885A8| db  $00,  $80

.prop_b
|0885AA| db  $80,  $80
|0885AC| db  $80,  $80
|0885AE| db  $80,  $C0
|0885B0| db  $00,  $00
|0885B2| db  $00,  $00
|0885B4| db  $00,  $40
|0885B6| db  $C0,  $C0
|0885B8| db  $C0,  $C0
|0885BA| db  $40,  $C0
|0885BC| db  $80,  $80
|0885BE| db  $80,  $80
|0885C0| db  $00,  $80

;---------------------------------------------------------------------------------------------------

.offset_x_a
|0885C2| db    0,    0
|0885C4| db    0,    0
|0885C6| db    4,    4
|0885C8| db    0,    0
|0885CA| db    0,    0
|0885CC| db    4,    4
|0885CE| db    0,    0
|0885D0| db    0,    0
|0885D2| db    0,    0
|0885D4| db    0,    0
|0885D6| db    0,    0
|0885D8| db    0,    0

.offset_x_b
|0885DA| db    8,    8
|0885DC| db    8,    8
|0885DE| db    4,    4
|0885E0| db    8,    8
|0885E2| db    8,    8
|0885E4| db    4,    4
|0885E6| db    0,    0
|0885E8| db    0,    0
|0885EA| db    8,    8
|0885EC| db    0,    0
|0885EE| db    0,    0
|0885F0| db    8,    8

;---------------------------------------------------------------------------------------------------

.offset_y_a
|0885F2| db -128,    0
|0885F4| db    0,    0
|0885F6| db    0,    0
|0885F8| db    0,    0
|0885FA| db    0,    0
|0885FC| db    0,    0
|0885FE| db    0,    0
|088600| db    0,    0
|088602| db    4,    4
|088604| db    0,    0
|088606| db    0,    0
|088608| db    4,    4

.offset_y_b
|08860A| db    0,    0
|08860C| db    0,    0
|08860E| db    8,    8
|088610| db -128,    0
|088612| db    0,    0
|088614| db    8,    8
|088616| db -128,    8
|088618| db    8,    8
|08861A| db    4,    4
|08861C| db -128,    8
|08861E| db    8,    8
|088620| db    4,    4

endpool

;===================================================================================================

Ancilla_Killa:
|088622| PLA
|088623| PLA

|088624| STZ.w $0C4A,X

|088627| RTS

;===================================================================================================

pool Ancilla_KillOffscreen

.data
|088628| db $20, $10

endpool

;---------------------------------------------------------------------------------------------------

Ancilla_KillOffscreen:
|08862A| LDY.w $0C7C,X

|08862D| LDA.w .data,Y
|088630| STA.b $04

|088632| LDY.w $0C86,X

|088635| LDA.w $0C04,X
|088638| SEC
|088639| SBC.b $E2
|08863B| CMP.b #$F4
|08863D| BCS Ancilla_Killa

|08863F| STA.b $00

|088641| LDA.w $0BFA,X
|088644| SEC
|088645| SBC.b $E8
|088647| CMP.b #$F0
|088649| BCS Ancilla_Killa

|08864B| STA.b $01

|08864D| RTS

;===================================================================================================

pool SomariaBlast_Draw

.palette
|08864E| db $02, $06

endpool

;---------------------------------------------------------------------------------------------------

SomariaBlast_Draw:
|088650| JSR Ancilla_KillOffscreen

|088653| LDY.w $0C5E,X

|088656| LDA.b $04
|088658| ORA.w .palette,Y
|08865B| STA.b $04

|08865D| LDA.w $0280,X
|088660| BEQ .normal_priority

|088662| LDA.b #$30
|088664| TSB.b $04

.normal_priority
|088666| LDY.b #$00

|088668| LDA.w $0C72,X
|08866B| ASL A
|08866C| ASL A

|08866D| ADC.w $0C72,X
|088670| ADC.w $0C72,X
|088673| ADC.w $0C54,X

|088676| TAX

|088677| LDA.w .offset_x_a,X
|08867A| CLC
|08867B| ADC.b $00
|08867D| STA.b ($90),Y

|08867F| LDA.w .offset_x_b,X
|088682| CLC
|088683| ADC.b $00
|088685| LDY.b #$04
|088687| STA.b ($90),Y

|088689| LDA.w .offset_y_a,X
|08868C| BMI .hide_a

|08868E| CLC
|08868F| ADC.b $01
|088691| LDY.b #$01
|088693| STA.b ($90),Y

.hide_a
|088695| LDA.w .offset_y_b,X
|088698| BMI .hide_b

|08869A| CLC
|08869B| ADC.b $01
|08869D| LDY.b #$05
|08869F| STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

.hide_b
|0886A1| LDA.w .char_a,X
|0886A4| CLC
|0886A5| ADC.b #$82
|0886A7| LDY.b #$02

|0886A9| STA.b ($90),Y

|0886AB| LDA.w .char_b,X
|0886AE| CLC
|0886AF| ADC.b #$82
|0886B1| LDY.b #$06

|0886B3| STA.b ($90),Y

|0886B5| LDA.w .prop_a,X
|0886B8| ORA.b $04

|0886BA| LDY.b #$03
|0886BC| STA.b ($90),Y

|0886BE| LDA.w .prop_b,X
|0886C1| ORA.b $04

|0886C3| LDY.b #$07
|0886C5| STA.b ($90),Y

|0886C7| LDY.b #$00
|0886C9| TYA
|0886CA| STA.b ($92),Y

|0886CC| INY
|0886CD| STA.b ($92),Y

|0886CF| BRL Ancilla_RestoreIndex

;===================================================================================================

Ancilla02_FireRodShot:
|0886D2| LDA.w $0C54,X
|0886D5| BEQ FireRodShot_Moving

|0886D7| JMP.w FireRodShot_Halted

;===================================================================================================

FireRodShot_Moving:
|0886DA| LDA.b $11
|0886DC| BNE .draw

|0886DE| STZ.w $0385,X

|0886E1| JSR AncillaMoveX
|0886E4| JSR AncillaMoveY

|0886E7| JSR Ancilla_CheckSpriteCollision
|0886EA| BCS .collision

;---------------------------------------------------------------------------------------------------

|0886EC| LDA.w $0C72,X
|0886EF| ORA.b #$08
|0886F1| STA.w $0C72,X

|0886F4| JSR Ancilla_CheckTileCollision
|0886F7| PHP

|0886F8| LDA.w $03E4,X
|0886FB| STA.w $0385,X

|0886FE| PLP
|0886FF| BCS .collision

|088701| LDA.w $0C72,X
|088704| ORA.b #$0C
|088706| STA.w $0C72,X

|088709| LDA.w $028A,X
|08870C| STA.b $74

|08870E| JSR Ancilla_CheckTileCollision
|088711| PHP

|088712| LDA.b $74
|088714| STA.w $028A,X

|088717| PLP
|088718| BCC .no_collision

.collision
|08871A| INC.w $0C54,X

|08871D| LDA.b #$1F
|08871F| STA.w $0C68,X

|088722| LDA.b #$08
|088724| STA.w $0C90,X

|088727| LDA.b #$2A ; SFX2.2A
|088729| JSR Ancilla_SFX2_Pan

;---------------------------------------------------------------------------------------------------

.no_collision
|08872C| INC.w $0C5E,X

|08872F| LDA.w $0C72,X
|088732| AND.b #$F3
|088734| STA.w $0C72,X

|088737| LDA.w $0385,X
|08873A| STA.w $0333

|08873D| AND.b #$F0
|08873F| CMP.b #$C0
|088741| BEQ .torch

|088743| LDA.w $03E4,X
|088746| STA.w $0333

|088749| AND.b #$F0
|08874B| CMP.b #$C0
|08874D| BNE .draw

.torch
|08874F| PHX
|088750| JSL LightTorch
|088754| PLX

;---------------------------------------------------------------------------------------------------

.draw
|088755| JSR AncillaDraw_FireRodShot

|088758| RTS

;===================================================================================================

pool AncillaDraw_FireRodShot

.offset_x
|088759| db   7,   0,   8,   0
|08875D| db   8,   4,   0,   0
|088761| db   2,   8,   0,   0
|088765| db   1,   4,   9,   0

.offset_y
|088769| db   1,   4,   9,   0
|08876D| db   7,   0,   8,   0
|088771| db   8,   4,   0,   0
|088775| db   2,   8,   0,   0

.char
|088779| db $8D, $9D, $9C

endpool

;---------------------------------------------------------------------------------------------------

AncillaDraw_FireRodShot:
|08877C| JSR Ancilla_KillOffscreen

|08877F| LDA.w $0280,X
|088782| BEQ .default_priority

|088784| LDA.b #$30
|088786| TSB.b $04

.default_priority
|088788| LDA.w $0C5E,X
|08878B| AND.b #$0C
|08878D| STA.b $02

|08878F| PHX

;---------------------------------------------------------------------------------------------------

|088790| LDX.b #$02
|088792| LDY.b #$00

.next_object
|088794| STX.b $03

|088796| TXA
|088797| ORA.b $02
|088799| TAX

|08879A| LDA.b $00
|08879C| CLC
|08879D| ADC.w .offset_x,X
|0887A0| STA.b ($90),Y

|0887A2| LDA.b $01
|0887A4| CLC
|0887A5| ADC.w .offset_y,X
|0887A8| INY
|0887A9| STA.b ($90),Y

|0887AB| LDX.b $03

|0887AD| LDA.w .char,X
|0887B0| INY
|0887B1| STA.b ($90),Y

|0887B3| LDA.b $04
|0887B5| ORA.b #$02
|0887B7| INY
|0887B8| STA.b ($90),Y

|0887BA| PHY

|0887BB| TYA
|0887BC| LSR A
|0887BD| LSR A
|0887BE| TAY

|0887BF| LDA.b #$00
|0887C1| STA.b ($92),Y

|0887C3| PLY
|0887C4| INY

|0887C5| DEX
|0887C6| BPL .next_object

|0887C8| PLX

|0887C9| RTS

;===================================================================================================

UNREACHABLE_0887CA:
|0887CA| RTS

;===================================================================================================

FireRodShot_Dissipate:
|0887CB| LDA.w $0C4A,X

|0887CE| STZ.w $0C4A,X

|0887D1| CMP.b #$2F ; ANCILLA 2F
|0887D3| BEQ .no_burn

|0887D5| LDA.b $8A
|0887D7| CMP.b #$40 ; OW 40
|0887D9| BNE .no_burn

|0887DB| LDA.w $03E4,X
|0887DE| CMP.b #$43 ; TILETYPE 43
|0887E0| BNE .no_burn

|0887E2| PHX

|0887E3| JSL BecomeSkullWoodsFire

|0887E7| PLX

.no_burn
|0887E8| RTS

;===================================================================================================

pool FireRodShot_Halted

.char
|0887E9| db $A2, $A0, $8E

endpool

;---------------------------------------------------------------------------------------------------

FireRodShot_Halted:
|0887EC| JSR Ancilla_CheckBasicSpriteCollision
|0887EF| JSR Ancilla_KillOffscreen

|0887F2| LDY.b #$00
|0887F4| LDA.w $0C68,X
|0887F7| BEQ FireRodShot_Dissipate

|0887F9| LSR A
|0887FA| LSR A
|0887FB| LSR A
|0887FC| BEQ .dying

|0887FE| TAX

|0887FF| LDA.b $00
|088801| STA.b ($90),Y

|088803| LDA.b $01
|088805| INY
|088806| STA.b ($90),Y

|088808| LDA.w .char-1,X
|08880B| INY
|08880C| STA.b ($90),Y

|08880E| LDA.b #$02
|088810| ORA.b $04
|088812| INY
|088813| STA.b ($90),Y

|088815| LDA.b #$02
|088817| STA.b ($92)

|088819| BRL Ancilla_RestoreIndex

;---------------------------------------------------------------------------------------------------

.dying
|08881C| TYA
|08881D| STA.b ($92),Y

|08881F| INY
|088820| STA.b ($92),Y

|088822| DEY

|088823| LDA.b $00
|088825| STA.b ($90),Y

|088827| CLC
|088828| ADC.b #$08
|08882A| LDY.b #$04
|08882C| STA.b ($90),Y

|08882E| LDA.b $01
|088830| CLC
|088831| ADC.b #$FD
|088833| LDY.b #$01
|088835| STA.b ($90),Y

|088837| LDY.b #$05
|088839| STA.b ($90),Y

|08883B| LDA.b #$A4
|08883D| LDY.b #$02
|08883F| STA.b ($90),Y

|088841| INC A
|088842| LDY.b #$06
|088844| STA.b ($90),Y

|088846| LDA.b #$02
|088848| ORA.b $04
|08884A| LDY.b #$03
|08884C| STA.b ($90),Y

|08884E| LDY.b #$07
|088850| STA.b ($90),Y

;===================================================================================================

Ancilla03:
|088852| RTS

;===================================================================================================
; TODO
; Tile type ID -> 0, 1, 2, 3, 4 
;===================================================================================================
Ancilla_TileCollisionBehaviorClass1:

.interaction
|088853| db $00 ; 00
|088854| db $01 ; 01
|088855| db $00 ; 02
|088856| db $03 ; 03
|088857| db $00 ; 04
|088858| db $00 ; 05
|088859| db $00 ; 06
|08885A| db $00 ; 07
|08885B| db $00 ; 08
|08885C| db $00 ; 09
|08885D| db $03 ; 0A
|08885E| db $00 ; 0B
|08885F| db $00 ; 0C
|088860| db $00 ; 0D
|088861| db $00 ; 0E
|088862| db $00 ; 0F
|088863| db $01 ; 10
|088864| db $01 ; 11
|088865| db $01 ; 12
|088866| db $01 ; 13
|088867| db $00 ; 14
|088868| db $00 ; 15
|088869| db $00 ; 16
|08886A| db $00 ; 17
|08886B| db $02 ; 18
|08886C| db $02 ; 19
|08886D| db $02 ; 1A
|08886E| db $02 ; 1B
|08886F| db $00 ; 1C
|088870| db $03 ; 1D
|088871| db $03 ; 1E
|088872| db $03 ; 1F
|088873| db $00 ; 20
|088874| db $00 ; 21
|088875| db $00 ; 22
|088876| db $00 ; 23
|088877| db $00 ; 24
|088878| db $00 ; 25
|088879| db $01 ; 26
|08887A| db $01 ; 27
|08887B| db $04 ; 28
|08887C| db $04 ; 29
|08887D| db $04 ; 2A
|08887E| db $04 ; 2B
|08887F| db $04 ; 2C
|088880| db $04 ; 2D
|088881| db $04 ; 2E
|088882| db $04 ; 2F
|088883| db $01 ; 30
|088884| db $01 ; 31
|088885| db $01 ; 32
|088886| db $01 ; 33
|088887| db $01 ; 34
|088888| db $01 ; 35
|088889| db $01 ; 36
|08888A| db $01 ; 37
|08888B| db $00 ; 38
|08888C| db $00 ; 39
|08888D| db $00 ; 3A
|08888E| db $00 ; 3B
|08888F| db $00 ; 3C
|088890| db $03 ; 3D
|088891| db $03 ; 3E
|088892| db $03 ; 3F
|088893| db $00 ; 40
|088894| db $00 ; 41
|088895| db $00 ; 42
|088896| db $01 ; 43
|088897| db $00 ; 44
|088898| db $00 ; 45
|088899| db $00 ; 46
|08889A| db $00 ; 47
|08889B| db $00 ; 48
|08889C| db $00 ; 49
|08889D| db $00 ; 4A
|08889E| db $00 ; 4B
|08889F| db $04 ; 4C
|0888A0| db $04 ; 4D
|0888A1| db $04 ; 4E
|0888A2| db $04 ; 4F
|0888A3| db $00 ; 50
|0888A4| db $00 ; 51
|0888A5| db $00 ; 52
|0888A6| db $00 ; 53
|0888A7| db $00 ; 54
|0888A8| db $00 ; 55
|0888A9| db $00 ; 56
|0888AA| db $00 ; 57
|0888AB| db $01 ; 58
|0888AC| db $01 ; 59
|0888AD| db $01 ; 5A
|0888AE| db $01 ; 5B
|0888AF| db $01 ; 5C
|0888B0| db $01 ; 5D
|0888B1| db $00 ; 5E
|0888B2| db $00 ; 5F
|0888B3| db $00 ; 60
|0888B4| db $00 ; 61
|0888B5| db $00 ; 62
|0888B6| db $01 ; 63
|0888B7| db $00 ; 64
|0888B8| db $00 ; 65
|0888B9| db $00 ; 66
|0888BA| db $00 ; 67
|0888BB| db $00 ; 68
|0888BC| db $00 ; 69
|0888BD| db $00 ; 6A
|0888BE| db $00 ; 6B
|0888BF| db $01 ; 6C
|0888C0| db $01 ; 6D
|0888C1| db $01 ; 6E
|0888C2| db $01 ; 6F
|0888C3| db $01 ; 70
|0888C4| db $01 ; 71
|0888C5| db $01 ; 72
|0888C6| db $01 ; 73
|0888C7| db $01 ; 74
|0888C8| db $01 ; 75
|0888C9| db $01 ; 76
|0888CA| db $01 ; 77
|0888CB| db $01 ; 78
|0888CC| db $01 ; 79
|0888CD| db $01 ; 7A
|0888CE| db $01 ; 7B
|0888CF| db $01 ; 7C
|0888D0| db $01 ; 7D
|0888D1| db $01 ; 7E
|0888D2| db $01 ; 7F
|0888D3| db $00 ; 80
|0888D4| db $00 ; 81
|0888D5| db $00 ; 82
|0888D6| db $00 ; 83
|0888D7| db $00 ; 84
|0888D8| db $00 ; 85
|0888D9| db $00 ; 86
|0888DA| db $00 ; 87
|0888DB| db $01 ; 88
|0888DC| db $01 ; 89
|0888DD| db $01 ; 8A
|0888DE| db $01 ; 8B
|0888DF| db $01 ; 8C
|0888E0| db $01 ; 8D
|0888E1| db $00 ; 8E
|0888E2| db $01 ; 8F
|0888E3| db $00 ; 90
|0888E4| db $00 ; 91
|0888E5| db $00 ; 92
|0888E6| db $00 ; 93
|0888E7| db $00 ; 94
|0888E8| db $00 ; 95
|0888E9| db $00 ; 96
|0888EA| db $00 ; 97
|0888EB| db $00 ; 98
|0888EC| db $00 ; 99
|0888ED| db $00 ; 9A
|0888EE| db $00 ; 9B
|0888EF| db $00 ; 9C
|0888F0| db $00 ; 9D
|0888F1| db $00 ; 9E
|0888F2| db $00 ; 9F
|0888F3| db $00 ; A0
|0888F4| db $00 ; A1
|0888F5| db $00 ; A2
|0888F6| db $00 ; A3
|0888F7| db $00 ; A4
|0888F8| db $00 ; A5
|0888F9| db $00 ; A6
|0888FA| db $00 ; A7
|0888FB| db $00 ; A8
|0888FC| db $00 ; A9
|0888FD| db $00 ; AA
|0888FE| db $00 ; AB
|0888FF| db $00 ; AC
|088900| db $00 ; AD
|088901| db $00 ; AE
|088902| db $00 ; AF
|088903| db $00 ; B0
|088904| db $00 ; B1
|088905| db $00 ; B2
|088906| db $00 ; B3
|088907| db $00 ; B4
|088908| db $00 ; B5
|088909| db $00 ; B6
|08890A| db $00 ; B7
|08890B| db $00 ; B8
|08890C| db $00 ; B9
|08890D| db $00 ; BA
|08890E| db $00 ; BB
|08890F| db $00 ; BC
|088910| db $00 ; BD
|088911| db $00 ; BE
|088912| db $00 ; BF
|088913| db $01 ; C0
|088914| db $01 ; C1
|088915| db $01 ; C2
|088916| db $01 ; C3
|088917| db $01 ; C4
|088918| db $01 ; C5
|088919| db $01 ; C6
|08891A| db $01 ; C7
|08891B| db $01 ; C8
|08891C| db $01 ; C9
|08891D| db $01 ; CA
|08891E| db $01 ; CB
|08891F| db $01 ; CC
|088920| db $01 ; CD
|088921| db $01 ; CE
|088922| db $01 ; CF
|088923| db $00 ; D0
|088924| db $00 ; D1
|088925| db $00 ; D2
|088926| db $00 ; D3
|088927| db $00 ; D4
|088928| db $00 ; D5
|088929| db $00 ; D6
|08892A| db $00 ; D7
|08892B| db $00 ; D8
|08892C| db $00 ; D9
|08892D| db $00 ; DA
|08892E| db $00 ; DB
|08892F| db $00 ; DC
|088930| db $00 ; DD
|088931| db $00 ; DE
|088932| db $00 ; DF
|088933| db $00 ; E0
|088934| db $00 ; E1
|088935| db $00 ; E2
|088936| db $00 ; E3
|088937| db $00 ; E4
|088938| db $00 ; E5
|088939| db $00 ; E6
|08893A| db $00 ; E7
|08893B| db $00 ; E8
|08893C| db $00 ; E9
|08893D| db $00 ; EA
|08893E| db $00 ; EB
|08893F| db $00 ; EC
|088940| db $00 ; ED
|088941| db $00 ; EE
|088942| db $00 ; EF
|088943| db $01 ; F0
|088944| db $01 ; F1
|088945| db $01 ; F2
|088946| db $01 ; F3
|088947| db $01 ; F4
|088948| db $01 ; F5
|088949| db $01 ; F6
|08894A| db $01 ; F7
|08894B| db $01 ; F8
|08894C| db $01 ; F9
|08894D| db $01 ; FA
|08894E| db $01 ; FB
|08894F| db $01 ; FC
|088950| db $01 ; FD
|088951| db $01 ; FE
|088952| db $01 ; FF

;---------------------------------------------------------------------------------------------------

.offset_y
|088953| db   0,  16,   5,   5
|088957| db   0,  16,   4,   4
|08895B| db   4,  12,   5,   5
|08895F| db   4,  12,  12,  12
|088963| db   0,   0,   0,   0

.offset_x
|088967| db   8,   8,   0,  16
|08896B| db   4,   4,   0,  16
|08896F| db   4,   4,   4,  12
|088973| db  12,  12,   4,  12
|088977| db   0,   0,   0,   0

;===================================================================================================

Ancilla_CheckTileCollision_staggered:
|08897B| TXA
|08897C| EOR.b $1A
|08897E| LSR A
|08897F| BCC .skip_frame

;---------------------------------------------------------------------------------------------------

#Ancilla_CheckTileCollision:
|088981| LDA.b $1B
|088983| BNE .indoors

|088985| LDA.w $0280,X
|088988| BEQ .indoors

|08898A| STZ.w $03E4,X

;---------------------------------------------------------------------------------------------------

.skip_frame
|08898D| CLC

|08898E| RTS

;---------------------------------------------------------------------------------------------------

.indoors
|08898F| LDA.w $046C
|088992| BEQ .check_basic

|088994| CMP.b #$03

|088996| REP #$20
|088998| BCC .get_bg_diff

|08899A| STZ.b $00
|08899C| STZ.b $02

|08899E| BRA .both_bg

;---------------------------------------------------------------------------------------------------

.get_bg_diff
|0889A0| LDA.b $E0
|0889A2| SEC
|0889A3| SBC.b $E2
|0889A5| STA.b $00

|0889A7| LDA.b $E6
|0889A9| SEC
|0889AA| SBC.b $E8
|0889AC| STA.b $02

;---------------------------------------------------------------------------------------------------

.both_bg
|0889AE| SEP #$20

|0889B0| LDA.w $0C04,X
|0889B3| PHA

|0889B4| CLC
|0889B5| ADC.b $00
|0889B7| STA.w $0C04,X

|0889BA| LDA.w $0C18,X
|0889BD| PHA

|0889BE| ADC.b $01
|0889C0| STA.w $0C18,X

|0889C3| LDA.w $0BFA,X
|0889C6| PHA

|0889C7| CLC
|0889C8| ADC.b $02
|0889CA| STA.w $0BFA,X

|0889CD| LDA.w $0C0E,X
|0889D0| PHA

|0889D1| ADC.b $03
|0889D3| STA.w $0C0E,X

|0889D6| LDA.b #$01
|0889D8| STA.w $0C7C,X

;---------------------------------------------------------------------------------------------------

|0889DB| JSR .check_basic

|0889DE| STZ.w $0C7C,X

|0889E1| PLA
|0889E2| STA.w $0C0E,X

|0889E5| PLA
|0889E6| STA.w $0BFA,X

|0889E9| PLA
|0889EA| STA.w $0C18,X

|0889ED| PLA
|0889EE| STA.w $0C04,X

|0889F1| LDY.b #$00
|0889F3| BCC .skip_layer1

|0889F5| INY

;---------------------------------------------------------------------------------------------------

.skip_layer1
|0889F6| PHY
|0889F7| PHP

|0889F8| JSR .check_basic

|0889FB| PLA
|0889FC| AND.b #$01
|0889FE| ROL A
|0889FF| CMP.b #$01

|088A01| PLY

|088A02| RTS

;---------------------------------------------------------------------------------------------------

.check_basic
|088A03| LDY.w $0C72,X

|088A06| LDA.w $0BFA,X
|088A09| CLC
|088A0A| ADC.w Ancilla_TileCollisionBehaviorClass1.offset_y,Y
|088A0D| STA.b $00

|088A0F| LDA.w $0C0E,X
|088A12| ADC.b #$00
|088A14| STA.b $01

|088A16| LDA.w $0C04,X
|088A19| CLC
|088A1A| ADC.w Ancilla_TileCollisionBehaviorClass1.offset_x,Y
|088A1D| STA.b $02

|088A1F| LDA.w $0C18,X
|088A22| ADC.b #$00
|088A24| STA.b $03

;===================================================================================================

Ancilla_CheckTileCollision_targeted:
|088A26| REP #$20

|088A28| LDA.b $00
|088A2A| SEC
|088A2B| SBC.b $E8
|088A2D| CMP.w #$00E0

|088A30| SEP #$20
|088A32| BCS .off_screen_y

;---------------------------------------------------------------------------------------------------

|088A34| REP #$20

|088A36| LDA.b $02
|088A38| SEC
|088A39| SBC.b $E2
|088A3B| CMP.w #$0100

|088A3E| SEP #$20
|088A40| BCS .no_collision

|088A42| LDA.b $1B
|088A44| BNE .indoors

;---------------------------------------------------------------------------------------------------

|088A46| REP #$20

|088A48| LSR.b $02
|088A4A| LSR.b $02
|088A4C| LSR.b $02

|088A4E| PHX
|088A4F| JSL GetOverworldTileType
|088A53| PLX

|088A54| BRA .continue

;---------------------------------------------------------------------------------------------------

.indoors
|088A56| LDA.w $0C7C,X
|088A59| JSL GetTileType_long

;---------------------------------------------------------------------------------------------------

.continue
|088A5D| STA.w $03E4,X

|088A60| TAY

|088A61| LDA.w Ancilla_TileCollisionBehaviorClass1.interaction,Y
|088A64| STA.b $0F

|088A66| LDA.w $0C4A,X
|088A69| CMP.b #$02 ; ANCILLA 02
|088A6B| BNE .no_firetorch

|088A6D| TYA
|088A6E| AND.b #$F0
|088A70| CMP.b #$C0
|088A72| BNE .no_firetorch

|088A74| STZ.b $0F

;---------------------------------------------------------------------------------------------------

.no_firetorch
|088A76| LDA.w $0280,X
|088A79| BNE .high_pri

|088A7B| LDA.b $0F
|088A7D| BEQ .no_collision

|088A7F| CMP.b #$01
|088A81| BEQ .collision

|088A83| CMP.b #$02
|088A85| BNE .not_slope

|088A87| JSL CheckSlopedTileCollision_long

|088A8B| RTS

;---------------------------------------------------------------------------------------------------

.not_slope
|088A8C| CMP.b #$03
|088A8E| BNE .high_pri

|088A90| LDY.w $03CA,X
|088A93| BNE .collision

.off_screen_y
|088A95| BRA .no_collision

;---------------------------------------------------------------------------------------------------

.high_pri
|088A97| DEC.w $028A,X
|088A9A| BPL .no_collision

|088A9C| STZ.w $028A,X

|088A9F| LDA.b $0F
|088AA1| CMP.b #$04
|088AA3| BNE .no_collision

|088AA5| LDA.b #$06
|088AA7| STA.w $028A,X

|088AAA| LDA.w $0280,X
|088AAD| EOR.b #$01
|088AAF| STA.w $0280,X

|088AB2| BRA .no_collision ; useless

;---------------------------------------------------------------------------------------------------

.no_collision
|088AB4| CLC

|088AB5| RTS

;---------------------------------------------------------------------------------------------------

.collision
|088AB6| LDY.b #$00

|088AB8| SEC

;===================================================================================================

AlertSprites:
|088AB9| LDA.b #$03
|088ABB| STA.w $0FDC

|088ABE| RTS

;===================================================================================================
; TODO
;===================================================================================================
Ancilla_TileCollisionBehaviorClass2:

.interaction
|088ABF| db $00 ; 00
|088AC0| db $01 ; 01
|088AC1| db $00 ; 02
|088AC2| db $00 ; 03
|088AC3| db $01 ; 04
|088AC4| db $00 ; 05
|088AC5| db $00 ; 06
|088AC6| db $00 ; 07
|088AC7| db $00 ; 08
|088AC8| db $00 ; 09
|088AC9| db $03 ; 0A
|088ACA| db $00 ; 0B
|088ACB| db $00 ; 0C
|088ACC| db $00 ; 0D
|088ACD| db $00 ; 0E
|088ACE| db $00 ; 0F
|088ACF| db $01 ; 10
|088AD0| db $01 ; 11
|088AD1| db $01 ; 12
|088AD2| db $01 ; 13
|088AD3| db $00 ; 14
|088AD4| db $00 ; 15
|088AD5| db $00 ; 16
|088AD6| db $00 ; 17
|088AD7| db $02 ; 18
|088AD8| db $02 ; 19
|088AD9| db $02 ; 1A
|088ADA| db $02 ; 1B
|088ADB| db $00 ; 1C
|088ADC| db $03 ; 1D
|088ADD| db $03 ; 1E
|088ADE| db $03 ; 1F
|088ADF| db $00 ; 20
|088AE0| db $00 ; 21
|088AE1| db $00 ; 22
|088AE2| db $00 ; 23
|088AE3| db $00 ; 24
|088AE4| db $00 ; 25
|088AE5| db $01 ; 26
|088AE6| db $01 ; 27
|088AE7| db $04 ; 28
|088AE8| db $04 ; 29
|088AE9| db $04 ; 2A
|088AEA| db $04 ; 2B
|088AEB| db $04 ; 2C
|088AEC| db $04 ; 2D
|088AED| db $04 ; 2E
|088AEE| db $04 ; 2F
|088AEF| db $01 ; 30
|088AF0| db $01 ; 31
|088AF1| db $01 ; 32
|088AF2| db $01 ; 33
|088AF3| db $01 ; 34
|088AF4| db $01 ; 35
|088AF5| db $01 ; 36
|088AF6| db $01 ; 37
|088AF7| db $00 ; 38
|088AF8| db $00 ; 39
|088AF9| db $00 ; 3A
|088AFA| db $00 ; 3B
|088AFB| db $00 ; 3C
|088AFC| db $03 ; 3D
|088AFD| db $03 ; 3E
|088AFE| db $03 ; 3F
|088AFF| db $00 ; 40
|088B00| db $00 ; 41
|088B01| db $00 ; 42
|088B02| db $01 ; 43
|088B03| db $00 ; 44
|088B04| db $00 ; 45
|088B05| db $00 ; 46
|088B06| db $00 ; 47
|088B07| db $00 ; 48
|088B08| db $00 ; 49
|088B09| db $00 ; 4A
|088B0A| db $00 ; 4B
|088B0B| db $04 ; 4C
|088B0C| db $04 ; 4D
|088B0D| db $04 ; 4E
|088B0E| db $04 ; 4F
|088B0F| db $00 ; 50
|088B10| db $00 ; 51
|088B11| db $00 ; 52
|088B12| db $00 ; 53
|088B13| db $00 ; 54
|088B14| db $00 ; 55
|088B15| db $00 ; 56
|088B16| db $00 ; 57
|088B17| db $00 ; 58
|088B18| db $00 ; 59
|088B19| db $00 ; 5A
|088B1A| db $00 ; 5B
|088B1B| db $00 ; 5C
|088B1C| db $00 ; 5D
|088B1D| db $00 ; 5E
|088B1E| db $00 ; 5F
|088B1F| db $00 ; 60
|088B20| db $00 ; 61
|088B21| db $00 ; 62
|088B22| db $00 ; 63
|088B23| db $00 ; 64
|088B24| db $00 ; 65
|088B25| db $00 ; 66
|088B26| db $00 ; 67
|088B27| db $00 ; 68
|088B28| db $00 ; 69
|088B29| db $00 ; 6A
|088B2A| db $00 ; 6B
|088B2B| db $01 ; 6C
|088B2C| db $01 ; 6D
|088B2D| db $01 ; 6E
|088B2E| db $01 ; 6F
|088B2F| db $00 ; 70
|088B30| db $00 ; 71
|088B31| db $00 ; 72
|088B32| db $00 ; 73
|088B33| db $00 ; 74
|088B34| db $00 ; 75
|088B35| db $00 ; 76
|088B36| db $00 ; 77
|088B37| db $00 ; 78
|088B38| db $00 ; 79
|088B39| db $00 ; 7A
|088B3A| db $00 ; 7B
|088B3B| db $00 ; 7C
|088B3C| db $00 ; 7D
|088B3D| db $00 ; 7E
|088B3E| db $00 ; 7F
|088B3F| db $01 ; 80
|088B40| db $01 ; 81
|088B41| db $01 ; 82
|088B42| db $01 ; 83
|088B43| db $01 ; 84
|088B44| db $01 ; 85
|088B45| db $01 ; 86
|088B46| db $01 ; 87
|088B47| db $01 ; 88
|088B48| db $01 ; 89
|088B49| db $01 ; 8A
|088B4A| db $01 ; 8B
|088B4B| db $01 ; 8C
|088B4C| db $01 ; 8D
|088B4D| db $00 ; 8E
|088B4E| db $01 ; 8F
|088B4F| db $01 ; 90
|088B50| db $01 ; 91
|088B51| db $01 ; 92
|088B52| db $01 ; 93
|088B53| db $01 ; 94
|088B54| db $01 ; 95
|088B55| db $01 ; 96
|088B56| db $01 ; 97
|088B57| db $01 ; 98
|088B58| db $01 ; 99
|088B59| db $01 ; 9A
|088B5A| db $01 ; 9B
|088B5B| db $01 ; 9C
|088B5C| db $01 ; 9D
|088B5D| db $01 ; 9E
|088B5E| db $01 ; 9F
|088B5F| db $01 ; A0
|088B60| db $01 ; A1
|088B61| db $01 ; A2
|088B62| db $01 ; A3
|088B63| db $01 ; A4
|088B64| db $01 ; A5
|088B65| db $01 ; A6
|088B66| db $01 ; A7
|088B67| db $01 ; A8
|088B68| db $01 ; A9
|088B69| db $01 ; AA
|088B6A| db $01 ; AB
|088B6B| db $01 ; AC
|088B6C| db $01 ; AD
|088B6D| db $01 ; AE
|088B6E| db $01 ; AF
|088B6F| db $00 ; B0
|088B70| db $00 ; B1
|088B71| db $00 ; B2
|088B72| db $00 ; B3
|088B73| db $00 ; B4
|088B74| db $00 ; B5
|088B75| db $00 ; B6
|088B76| db $00 ; B7
|088B77| db $00 ; B8
|088B78| db $00 ; B9
|088B79| db $00 ; BA
|088B7A| db $00 ; BB
|088B7B| db $00 ; BC
|088B7C| db $00 ; BD
|088B7D| db $00 ; BE
|088B7E| db $00 ; BF
|088B7F| db $00 ; C0
|088B80| db $00 ; C1
|088B81| db $00 ; C2
|088B82| db $00 ; C3
|088B83| db $00 ; C4
|088B84| db $00 ; C5
|088B85| db $00 ; C6
|088B86| db $00 ; C7
|088B87| db $00 ; C8
|088B88| db $00 ; C9
|088B89| db $00 ; CA
|088B8A| db $00 ; CB
|088B8B| db $00 ; CC
|088B8C| db $00 ; CD
|088B8D| db $00 ; CE
|088B8E| db $00 ; CF
|088B8F| db $00 ; D0
|088B90| db $00 ; D1
|088B91| db $00 ; D2
|088B92| db $00 ; D3
|088B93| db $00 ; D4
|088B94| db $00 ; D5
|088B95| db $00 ; D6
|088B96| db $00 ; D7
|088B97| db $00 ; D8
|088B98| db $00 ; D9
|088B99| db $00 ; DA
|088B9A| db $00 ; DB
|088B9B| db $00 ; DC
|088B9C| db $00 ; DD
|088B9D| db $00 ; DE
|088B9E| db $00 ; DF
|088B9F| db $00 ; E0
|088BA0| db $00 ; E1
|088BA1| db $00 ; E2
|088BA2| db $00 ; E3
|088BA3| db $00 ; E4
|088BA4| db $00 ; E5
|088BA5| db $00 ; E6
|088BA6| db $00 ; E7
|088BA7| db $00 ; E8
|088BA8| db $00 ; E9
|088BA9| db $00 ; EA
|088BAA| db $00 ; EB
|088BAB| db $00 ; EC
|088BAC| db $00 ; ED
|088BAD| db $00 ; EE
|088BAE| db $00 ; EF
|088BAF| db $01 ; F0
|088BB0| db $01 ; F1
|088BB1| db $01 ; F2
|088BB2| db $01 ; F3
|088BB3| db $01 ; F4
|088BB4| db $01 ; F5
|088BB5| db $01 ; F6
|088BB6| db $01 ; F7
|088BB7| db $01 ; F8
|088BB8| db $01 ; F9
|088BB9| db $01 ; FA
|088BBA| db $01 ; FB
|088BBB| db $01 ; FC
|088BBC| db $01 ; FD
|088BBD| db $01 ; FE
|088BBE| db $01 ; FF

;---------------------------------------------------------------------------------------------------

.offset_y_low
|088BBF| db  -8,   8,   0,   0

.offset_y_high
|088BC3| db  -1,   0,   0,   0

.offset_x_low
|088BC7| db   0,   0,  -8,   8

.offset_x_high
|088BCB| db   0,   0,  -1,   0

;===================================================================================================

Ancilla_CheckTileCollision_Class2:
|088BCF| LDA.w $046C
|088BD2| BEQ .check_basic

|088BD4| CMP.b #$03

|088BD6| REP #$20
|088BD8| BCC .get_bg_diff

|088BDA| STZ.b $00
|088BDC| STZ.b $02

|088BDE| BRA .both_bg

;---------------------------------------------------------------------------------------------------

.get_bg_diff
|088BE0| LDA.b $E0
|088BE2| SEC
|088BE3| SBC.b $E2
|088BE5| STA.b $00

|088BE7| LDA.b $E6
|088BE9| SEC
|088BEA| SBC.b $E8
|088BEC| STA.b $02

;---------------------------------------------------------------------------------------------------

.both_bg
|088BEE| SEP #$20

|088BF0| LDA.w $0C04,X
|088BF3| PHA

|088BF4| CLC
|088BF5| ADC.b $00
|088BF7| STA.w $0C04,X

|088BFA| LDA.w $0C18,X
|088BFD| PHA

|088BFE| ADC.b $01
|088C00| STA.w $0C18,X

|088C03| LDA.w $0BFA,X
|088C06| PHA

|088C07| CLC
|088C08| ADC.b $02
|088C0A| STA.w $0BFA,X

|088C0D| LDA.w $0C0E,X
|088C10| PHA

|088C11| ADC.b $03
|088C13| STA.w $0C0E,X

|088C16| LDA.b #$01
|088C18| STA.w $0C7C,X

|088C1B| JSR .check_basic

;---------------------------------------------------------------------------------------------------

|088C1E| STZ.w $0C7C,X

|088C21| PLA
|088C22| STA.w $0C0E,X

|088C25| PLA
|088C26| STA.w $0BFA,X

|088C29| PLA
|088C2A| STA.w $0C18,X

|088C2D| PLA
|088C2E| STA.w $0C04,X

;---------------------------------------------------------------------------------------------------

|088C31| LDY.b #$00
|088C33| BCC .skip_layer1

|088C35| INY

.skip_layer1
|088C36| PHY
|088C37| PHP

|088C38| JSR .check_basic

|088C3B| PLA
|088C3C| AND.b #$01
|088C3E| ROL A
|088C3F| CMP.b #$01

|088C41| PLY

|088C42| RTS

;---------------------------------------------------------------------------------------------------

.check_basic
|088C43| LDY.w $0C72,X

|088C46| LDA.w $0BFA,X
|088C49| CLC
|088C4A| ADC.w Ancilla_TileCollisionBehaviorClass2.offset_y_low,Y
|088C4D| STA.b $00

|088C4F| LDA.w $0C0E,X
|088C52| ADC.w Ancilla_TileCollisionBehaviorClass2.offset_y_high,Y
|088C55| STA.b $01

|088C57| LDA.w $0C04,X
|088C5A| CLC
|088C5B| ADC.w Ancilla_TileCollisionBehaviorClass2.offset_x_low,Y
|088C5E| STA.b $02

|088C60| LDA.w $0C18,X
|088C63| ADC.w Ancilla_TileCollisionBehaviorClass2.offset_x_high,Y
|088C66| STA.b $03

|088C68| REP #$20

|088C6A| LDA.b $00
|088C6C| SEC
|088C6D| SBC.b $E8
|088C6F| CMP.w #$00E0

|088C72| SEP #$20
|088C74| BCS .no_collision

;---------------------------------------------------------------------------------------------------

|088C76| REP #$20

|088C78| LDA.b $02
|088C7A| SEC
|088C7B| SBC.b $E2
|088C7D| CMP.w #$0100

|088C80| SEP #$20
|088C82| BCS .no_collision

|088C84| LDA.b $1B
|088C86| BNE .check_indoors

;---------------------------------------------------------------------------------------------------

|088C88| REP #$20

|088C8A| LSR.b $02
|088C8C| LSR.b $02
|088C8E| LSR.b $02

|088C90| PHX
|088C91| JSL GetOverworldTileType
|088C95| PLX

|088C96| BRA .save_tile

;---------------------------------------------------------------------------------------------------

.check_indoors
|088C98| LDA.w $0C7C,X
|088C9B| JSL GetTileType_long

;---------------------------------------------------------------------------------------------------

.save_tile
|088C9F| STA.w $03E4,X

|088CA2| CMP.b #$03 ; TILETYPE 03
|088CA4| BNE .not_slope3

|088CA6| LDY.w $03CA,X
|088CA9| BNE .no_collision

.not_slope3
|088CAB| TAY

|088CAC| LDA.w Ancilla_TileCollisionBehaviorClass2.interaction,Y
|088CAF| BEQ .no_collision

|088CB1| CMP.b #$02
|088CB3| BNE .not_a_slope

|088CB5| JSL CheckSlopedTileCollision_long

|088CB9| RTS

;---------------------------------------------------------------------------------------------------

.not_a_slope
|088CBA| CMP.b #$04
|088CBC| BNE .not_a_ledge

|088CBE| LDA.w $03CA,X
|088CC1| BNE .collision

|088CC3| LDA.b #$01
|088CC5| STA.w $0280,X

|088CC8| BRA .no_collision

;---------------------------------------------------------------------------------------------------

.not_a_ledge
|088CCA| CMP.b #$03
|088CCC| BNE .collision

|088CCE| LDY.w $03CA,X
|088CD1| BNE .collision

;---------------------------------------------------------------------------------------------------

.no_collision
|088CD3| CLC

|088CD4| RTS

;---------------------------------------------------------------------------------------------------

.collision
|088CD5| LDY.b #$00

|088CD7| SEC

|088CD8| RTS

;===================================================================================================

pool Ancilla04_BeamHit

.offset_x
|088CD9| db -12,  20, -12,  20
|088CDD| db  -8,  16,  -8,  16
|088CE1| db  -4,  12,  -4,  12
|088CE5| db   0,   8,   0,   8

.offset_y
|088CE9| db -12, -12,  20,  20
|088CED| db  -8,  -8,  16,  16
|088CF1| db  -4,  -4,  12,  12
|088CF5| db   0,   0,   8,   8

.char
|088CF9| db $53, $53, $53, $53
|088CFD| db $53, $53, $53, $53
|088D01| db $53, $53, $53, $53
|088D05| db $54, $54, $54, $54

.props
|088D09| db $40, $00, $C0, $80
|088D0D| db $40, $00, $C0, $80
|088D11| db $40, $00, $C0, $80
|088D15| db $00, $40, $80, $C0

endpool

;---------------------------------------------------------------------------------------------------

Ancilla04_BeamHit:
|088D19| JSR Ancilla_KillOffscreen

|088D1C| LDA.w $0C68,X
|088D1F| BNE .active

|088D21| BRL Ancilla_DeleteSelf

;---------------------------------------------------------------------------------------------------

.active
|088D24| LSR A
|088D25| STA.b $02

|088D27| LDX.b #$03
|088D29| LDY.b #$00

.next_object
|088D2B| STX.b $03

|088D2D| LDA.b $02
|088D2F| ASL A
|088D30| ASL A
|088D31| ADC.b $03
|088D33| TAX

|088D34| LDA.b $00
|088D36| CLC
|088D37| ADC.w .offset_x,X
|088D3A| STA.b ($90),Y

|088D3C| LDA.b $01
|088D3E| CLC
|088D3F| ADC.w .offset_y,X
|088D42| INY
|088D43| STA.b ($90),Y

|088D45| LDA.w .char,X
|088D48| CLC
|088D49| ADC.b #$82
|088D4B| INY
|088D4C| STA.b ($90),Y

|088D4E| LDA.w .props,X
|088D51| ORA.b #$02
|088D53| ORA.b $04
|088D55| INY
|088D56| STA.b ($90),Y

|088D58| INY

|088D59| LDX.b $03
|088D5B| DEX
|088D5C| BPL .next_object

;---------------------------------------------------------------------------------------------------

|088D5E| LDX.w $0FA0
|088D61| LDY.b #$00
|088D63| LDA.b #$03
|088D65| BRL BeamHit_OAMAdjustments

;===================================================================================================

Ancilla_CheckSpriteCollision:
|088D68| LDY.b #$0F

.next_sprite
|088D6A| LDA.w $0C4A,X
|088D6D| CMP.b #$09 ; ANCILLA 09
|088D6F| BEQ .arrow_or_hook

|088D71| CMP.b #$1F ; ANCILLA 1F
|088D73| BEQ .arrow_or_hook

|088D75| TYA
|088D76| EOR.b $1A
|088D78| AND.b #$03
|088D7A| ORA.w $0F00,Y
|088D7D| BNE .skip

.arrow_or_hook
|088D7F| LDA.w $0DD0,Y
|088D82| CMP.b #$09
|088D84| BCC .skip

|088D86| LDA.w $0CAA,Y
|088D89| AND.b #$02
|088D8B| BNE .ignore_priority

|088D8D| LDA.w $0280,X
|088D90| BNE .skip

.ignore_priority
|088D92| LDA.w $0C7C,X
|088D95| CMP.w $0F20,Y
|088D98| BNE .skip

|088D9A| JSR Ancilla_CheckSpriteCollision_Single

.skip
|088D9D| DEY
|088D9E| BPL .next_sprite

|088DA0| CLC

|088DA1| RTS

;===================================================================================================

Ancilla_CheckSpriteCollision_long:
|088DA2| PHB
|088DA3| PHK
|088DA4| PLB

|088DA5| JSR Ancilla_CheckSpriteCollision

|088DA8| PLB

|088DA9| RTL

;---------------------------------------------------------------------------------------------------

pool Ancilla_CheckSpriteCollision_Single

.direction
|088DAA| db $02, $03, $00, $01

endpool

;---------------------------------------------------------------------------------------------------

Ancilla_CheckSpriteCollision_Single:
|088DAE| JSR Ancilla_SetupHitbox

|088DB1| PHY
|088DB2| PHX

|088DB3| TYX
|088DB4| JSL SetupSpriteHitbox_long

|088DB8| PLX
|088DB9| PLY

|088DBA| JSL CheckIfHitboxesOverlap_long
|088DBE| BCS .hitbox_overlap

|088DC0| JMP.w .no_collision

;---------------------------------------------------------------------------------------------------

.hitbox_overlap
|088DC3| LDA.w $0B6B,Y
|088DC6| AND.b #$08
|088DC8| BEQ .arrow_continue

|088DCA| LDA.w $0C4A,X
|088DCD| CMP.b #$09 ; ANCILLA 09
|088DCF| BNE .arrow_continue

|088DD1| LDA.w $0E20,Y
|088DD4| CMP.b #$1B ; SPRITE 1B
|088DD6| BEQ .arrow_v_arrow

.deflected_arrow
|088DD8| JSL CreateDeflectedArrow

|088DDC| CLC

|088DDD| RTS

;---------------------------------------------------------------------------------------------------

.arrow_v_arrow
|088DDE| LDA.l $7EF340
|088DE2| CMP.b #$03
|088DE4| BCC .not_silvers

|088DE6| JSR .arrow_continue

|088DE9| CLC

|088DEA| RTS

;---------------------------------------------------------------------------------------------------

.not_silvers
|088DEB| JSR .deflected_arrow

;---------------------------------------------------------------------------------------------------

.arrow_continue
|088DEE| LDA.w $0CAA,Y
|088DF1| AND.b #$10
|088DF3| BEQ .no_succ

|088DF5| LDA.w $0C72,X
|088DF8| AND.b #$03
|088DFA| STA.w $0C72,X

|088DFD| PHY

|088DFE| LDA.w $0DE0,Y
|088E01| TAY

|088E02| LDA.w .direction,Y

|088E05| PLY

|088E06| CMP.w $0C72,X
|088E09| BEQ .immunity

;---------------------------------------------------------------------------------------------------

.no_succ
|088E0B| LDA.w $0C4A,X
|088E0E| CMP.b #$05 ; ANCILLA 05
|088E10| BEQ .boom

|088E12| CMP.b #$1F ; ANCILLA 1F
|088E14| BNE .continue_b

|088E16| LDA.w $0E20,Y
|088E19| CMP.b #$8D ; SPRITE 8D
|088E1B| BEQ .arrghus_puff

.boom
|088E1D| LDA.w $0EF0,Y
|088E20| BNE .immunity

|088E22| LDA.w $0CAA,Y
|088E25| AND.b #$02
|088E27| BEQ .continue_b

.arrghus_puff
|088E29| TXA ; give ancilla's ID to sprite to latch on
|088E2A| INC A
|088E2B| STA.w $0DA0,Y

|088E2E| BRA .set_drag

;---------------------------------------------------------------------------------------------------

.continue_b
|088E30| LDA.w $0BA0,Y
|088E33| BNE .no_collision

|088E35| LDA.w $0E20,Y
|088E38| CMP.b #$92 ; SPRITE 92
|088E3A| BNE .not_helma_mask

|088E3C| LDA.w $0DB0,Y
|088E3F| CMP.b #$03
|088E41| BCC .immunity

.not_helma_mask
|088E43| PHX

|088E44| LDA.w $0C72,X
|088E47| AND.b #$03
|088E49| TAX

|088E4A| LDA.w .recoil_x,X
|088E4D| STA.w $0F40,Y

|088E50| LDA.w .recoil_y,X
|088E53| STA.w $0F30,Y

|088E56| PLX
|088E57| PHX

|088E58| LDA.w $0C4A,X

|088E5B| STX.w $0FB6

|088E5E| TYX

|088E5F| PHY

|088E60| JSL CheckAncillaDamageToSprite

|088E64| PLY
|088E65| PLX

.set_drag
|088E66| LDA.w $0C4A,X
|088E69| STA.w $0BB0,Y

.immunity
|088E6C| PLA
|088E6D| PLA

|088E6E| JSR AlertSprites

|088E71| SEC

|088E72| RTS

;---------------------------------------------------------------------------------------------------

.no_collision
|088E73| CLC

|088E74| RTS

;---------------------------------------------------------------------------------------------------

.recoil_x
|088E75| db   0,   0, -64,  64

.recoil_y
|088E79| db -64,  64,   0,   0

;===================================================================================================

AncillaHitbox:

.offset_x
|088E7D| db   4
|088E7E| db   4
|088E7F| db   4
|088E80| db   4
|088E81| db   3
|088E82| db   3
|088E83| db   2
|088E84| db  11
|088E85| db -16
|088E86| db -16
|088E87| db  -1
|088E88| db  -8

;---------------------------------------------------------------------------------------------------

.width
|088E89| db   8
|088E8A| db   8
|088E8B| db   8
|088E8C| db   8
|088E8D| db   1
|088E8E| db   1
|088E8F| db   1
|088E90| db   1
|088E91| db  32
|088E92| db  32
|088E93| db   8
|088E94| db   8

;---------------------------------------------------------------------------------------------------

.offset_y
|088E95| db   4
|088E96| db   4
|088E97| db   4
|088E98| db   4
|088E99| db   2
|088E9A| db  11
|088E9B| db   3
|088E9C| db   3
|088E9D| db  -1
|088E9E| db  -8
|088E9F| db -16
|088EA0| db -16

;---------------------------------------------------------------------------------------------------

.height
|088EA1| db   8
|088EA2| db   8
|088EA3| db   8
|088EA4| db   8
|088EA5| db   1
|088EA6| db   1
|088EA7| db   1
|088EA8| db   1
|088EA9| db   8
|088EAA| db   8
|088EAB| db  32
|088EAC| db  32

;===================================================================================================

Ancilla_SetupHitbox:
|088EAD| STZ.b $09

|088EAF| PHY

|088EB0| LDY.w $0C72,X

|088EB3| LDA.w $0C4A,X
|088EB6| CMP.b #$0C ; ANCILLA 0C
|088EB8| BNE .not_beam

|088EBA| DEC.b $09

|088EBC| TYA
|088EBD| ORA.b #$08
|088EBF| TAY

.not_beam
|088EC0| LDA.w $0C04,X
|088EC3| CLC
|088EC4| ADC.w AncillaHitbox.offset_x,Y
|088EC7| STA.b $00

|088EC9| LDA.w $0C18,X
|088ECC| ADC.b $09
|088ECE| STA.b $08

|088ED0| LDA.w $0BFA,X
|088ED3| CLC
|088ED4| ADC.w AncillaHitbox.offset_y,Y
|088ED7| STA.b $01

|088ED9| LDA.w $0C0E,X
|088EDC| ADC.b $09
|088EDE| STA.b $09

|088EE0| LDA.w AncillaHitbox.width,Y
|088EE3| STA.b $02

|088EE5| LDA.w AncillaHitbox.height,Y
|088EE8| STA.b $03

|088EEA| PLY

|088EEB| RTS

;===================================================================================================

UNREACHABLE_088EEC:
|088EEC| RTS

;===================================================================================================

ProjectAncillaSpeedTowardsLink:
|088EED| STA.b $01

|088EEF| PHX
|088EF0| PHY

|088EF1| JSR GetAncillaYDisplacement
|088EF4| STY.b $02

|088EF6| LDA.b $0E
|088EF8| BPL .positive_y

|088EFA| EOR.b #$FF
|088EFC| INC A

.positive_y
|088EFD| STA.b $0C

|088EFF| JSR GetAncillaXDisplacement
|088F02| STY.b $03

|088F04| LDA.b $0F
|088F06| BPL .positive_x

|088F08| EOR.b #$FF
|088F0A| INC A

.positive_x
|088F0B| STA.b $0D

;---------------------------------------------------------------------------------------------------

|088F0D| LDY.b #$00

|088F0F| LDA.b $0D
|088F11| CMP.b $0C
|088F13| BCS .x_bigger

|088F15| INY
|088F16| PHA

|088F17| LDA.b $0C
|088F19| STA.b $0D

|088F1B| PLA
|088F1C| STA.b $0C

.x_bigger
|088F1E| STZ.b $0B
|088F20| STZ.b $00

;---------------------------------------------------------------------------------------------------

|088F22| LDX.b $01

.stupid_algo
|088F24| LDA.b $0B
|088F26| CLC
|088F27| ADC.b $0C

|088F29| CMP.b $0D
|088F2B| BCC .keep_dumbing

|088F2D| SBC.b $0D
|088F2F| INC.b $00

.keep_dumbing
|088F31| STA.b $0B

|088F33| DEX
|088F34| BNE .stupid_algo

;---------------------------------------------------------------------------------------------------

|088F36| TYA
|088F37| BEQ .x_bigger_again

|088F39| LDA.b $00
|088F3B| PHA

|088F3C| LDA.b $01
|088F3E| STA.b $00

|088F40| PLA
|088F41| STA.b $01

.x_bigger_again
|088F43| LDA.b $00

|088F45| LDY.b $02
|088F47| BEQ .y_fine

|088F49| EOR.b #$FF
|088F4B| INC A
|088F4C| STA.b $00

.y_fine
|088F4E| LDA.b $01
|088F50| LDY.b $03
|088F52| BEQ .x_fine

|088F54| EOR.b #$FF
|088F56| INC A
|088F57| STA.b $01

.x_fine
|088F59| PLY
|088F5A| PLX

|088F5B| RTS

;===================================================================================================

GetAncillaXDisplacement:
|088F5C| LDY.b #$00

|088F5E| LDA.b $22
|088F60| SEC
|088F61| SBC.w $0C04,X
|088F64| STA.b $0F

|088F66| LDA.b $23
|088F68| SBC.w $0C18,X
|088F6B| BPL .no_left

|088F6D| INY

.no_left
|088F6E| RTS

;===================================================================================================

GetAncillaYDisplacement:
|088F6F| LDY.b #$00

|088F71| LDA.b $20
|088F73| SEC
|088F74| SBC.w $0BFA,X
|088F77| STA.b $0E

|088F79| LDA.b $21
|088F7B| SBC.w $0C0E,X
|088F7E| BPL EXIT_088F81

|088F80| INY

;---------------------------------------------------------------------------------------------------

#EXIT_088F81:
|088F81| RTS

;===================================================================================================

pool WeaponTink

.char
|088F82| db $93, $82, $81

.props
|088F85| db $22, $12, $22, $22

endpool

;---------------------------------------------------------------------------------------------------

WeaponTink:
|088F89| LDA.w $0FAC
|088F8C| BEQ EXIT_088F81

|088F8E| LDA.b #$02
|088F90| STA.w $0FDC

|088F93| DEC.w $0FAF
|088F96| BPL .keep_state

|088F98| DEC.w $0FAC

|088F9B| LDA.b #$01
|088F9D| STA.w $0FAF

.keep_state
|088FA0| LDA.b #$10

|088FA2| LDY.w $0FB3
|088FA5| BEQ .ignore_layer

|088FA7| LDY.w $0B68
|088FAA| BNE .bg1

|088FAC| JSL AllocateOAMInRegionD
|088FB0| BRA .screen_check

.bg1
|088FB2| JSL AllocateOAMInRegionF
|088FB6| BRA .screen_check

.ignore_layer
|088FB8| JSL AllocateOAMInRegionA

;---------------------------------------------------------------------------------------------------

.screen_check
|088FBC| LDA.w $0FAD
|088FBF| SEC
|088FC0| SBC.w $00E2

|088FC3| CMP.b #$F8
|088FC5| BCS .offscreen

|088FC7| STA.b $00

|088FC9| LDA.w $0FAE
|088FCC| SEC
|088FCD| SBC.w $00E8

|088FD0| CMP.b #$F0
|088FD2| BCS .offscreen

|088FD4| STA.b $01

|088FD6| LDA.w $0FAC
|088FD9| CMP.b #$03
|088FDB| BCC .late_stage

|088FDD| LDY.b #$00

|088FDF| LDA.b $00
|088FE1| STA.b ($90),Y

|088FE3| LDA.b $01
|088FE5| INY
|088FE6| STA.b ($90),Y

|088FE8| LDA.b #$80

|088FEA| LDX.w $0FAC
|088FED| CPX.b #$09
|088FEF| BCS .diff_chr

|088FF1| LDA.b #$92

.diff_chr
|088FF3| INY
|088FF4| STA.b ($90),Y

|088FF6| LDX.w $0B68

|088FF9| LDA.l .props,X
|088FFD| INY
|088FFE| STA.b ($90),Y

|089000| TYA
|089001| LSR A
|089002| LSR A
|089003| TAY

|089004| LDA.b #$00
|089006| STA.b ($92),Y

|089008| RTS

.offscreen
|089009| STZ.w $0FAC

|08900C| RTS

;---------------------------------------------------------------------------------------------------

.late_stage
|08900D| LDA.b $00
|08900F| SEC
|089010| SBC.b #$04

|089012| LDY.b #$00
|089014| STA.b ($90),Y

|089016| LDY.b #$08
|089018| STA.b ($90),Y

|08901A| CLC
|08901B| ADC.b #$08

|08901D| LDY.b #$04
|08901F| STA.b ($90),Y

|089021| LDY.b #$0C
|089023| STA.b ($90),Y

|089025| LDA.b $01
|089027| SEC
|089028| SBC.b #$04

|08902A| LDY.b #$01
|08902C| STA.b ($90),Y

|08902E| LDY.b #$05
|089030| STA.b ($90),Y

|089032| CLC
|089033| ADC.b #$08

|089035| LDY.b #$09
|089037| STA.b ($90),Y

|089039| LDY.b #$0D
|08903B| STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

|08903D| LDX.w $0B68

|089040| LDA.l .props,X
|089044| LDY.b #$03
|089046| STA.b ($90),Y

|089048| ORA.b #$40
|08904A| LDY.b #$07
|08904C| STA.b ($90),Y

|08904E| ORA.b #$80
|089050| LDY.b #$0F
|089052| STA.b ($90),Y

|089054| EOR.b #$40
|089056| LDY.b #$0B
|089058| STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

|08905A| LDX.w $0FAC

|08905D| LDA.w .char,X
|089060| LDY.b #$02
|089062| STA.b ($90),Y

|089064| LDY.b #$06
|089066| STA.b ($90),Y

|089068| LDY.b #$0A
|08906A| STA.b ($90),Y

|08906C| LDY.b #$0E
|08906E| STA.b ($90),Y

|089070| LDY.b #$00
|089072| LDA.b #$00
|089074| STA.b ($92),Y

|089076| INY
|089077| STA.b ($92),Y

|089079| INY
|08907A| STA.b ($92),Y

|08907C| INY
|08907D| STA.b ($92),Y

|08907F| RTS

;===================================================================================================

AncillaMoveX:
|089080| TXA
|089081| CLC
|089082| ADC.b #$0A
|089084| TAX

|089085| JSR AncillaMoveY

|089088| BRL Ancilla_RestoreIndex

;---------------------------------------------------------------------------------------------------

AncillaMoveY:
|08908B| LDA.w $0C22,X

|08908E| ASL A ; x16
|08908F| ASL A
|089090| ASL A
|089091| ASL A

|089092| CLC
|089093| ADC.w $0C36,X
|089096| STA.w $0C36,X

|089099| LDY.b #$00

|08909B| LDA.w $0C22,X
|08909E| PHP

|08909F| LSR A ; /16
|0890A0| LSR A
|0890A1| LSR A
|0890A2| LSR A

|0890A3| PLP
|0890A4| BPL .other_way

|0890A6| ORA.b #$F0
|0890A8| DEY

.other_way
|0890A9| ADC.w $0BFA,X
|0890AC| STA.w $0BFA,X

|0890AF| TYA
|0890B0| ADC.w $0C0E,X
|0890B3| STA.w $0C0E,X

|0890B6| RTS

;===================================================================================================

AncillaMoveZ:
|0890B7| LDA.w $0294,X

|0890BA| ASL A ; x16
|0890BB| ASL A
|0890BC| ASL A
|0890BD| ASL A

|0890BE| CLC
|0890BF| ADC.w $02A8,X
|0890C2| STA.w $02A8,X

|0890C5| LDY.b #$00

|0890C7| LDA.w $0294,X
|0890CA| PHP

|0890CB| LSR A ; /16
|0890CC| LSR A
|0890CD| LSR A
|0890CE| LSR A

|0890CF| PLP
|0890D0| BPL .other_way

|0890D2| ORA.b #$F0
|0890D4| DEY

.other_way
|0890D5| ADC.w $029E,X
|0890D8| STA.w $029E,X

|0890DB| RTS

;===================================================================================================

pool Ancilla05_Boomerang

.offset_y
|0890DC| dw -16,   6,   0,   0
|0890E4| dw  -8,   8,  -8,   8

.offset_x
|0890EC| dw   0,   0,  -8,   8
|0890F4| dw   8,   8,  -8,  -8

endpool

;---------------------------------------------------------------------------------------------------

Ancilla05_Boomerang:
|0890FC| LDY.b #$04

.next_slot
|0890FE| LDA.w $0C4A,Y
|089101| CMP.b #$22 ; ANCILLA 22
|089103| BEQ .draw

|089105| DEY
|089106| BPL .next_slot

;---------------------------------------------------------------------------------------------------

|089108| LDA.b $11
|08910A| BNE .draw

|08910C| LDA.b $1A
|08910E| AND.b #$07
|089110| BNE .no_whoosh

|089112| LDA.b #$09 ; SFX2.09
|089114| JSR Ancilla_SFX2_Pan

.no_whoosh
|089117| LDA.w $03B1,X
|08911A| BNE .pos_set

|08911C| LDA.b $3C
|08911E| CMP.b #$09
|089120| BCS .init_pos

|089122| LDA.w $0300
|089125| BNE .init_pos

|089127| LDA.w $02E0
|08912A| BNE .bunny

|08912C| LDA.b $4D
|08912E| BEQ .draw

.bunny
|089130| BRL Boom_Die

.draw
|089133| BRL .proceed_to_draw

;---------------------------------------------------------------------------------------------------

.init_pos
|089136| LDA.w $03CF,X
|089139| TAY

|08913A| REP #$20

|08913C| LDA.b $20
|08913E| CLC
|08913F| ADC.w #$0008
|089142| CLC
|089143| ADC.w .offset_y,Y
|089146| STA.b $00

|089148| LDA.b $22
|08914A| CLC
|08914B| ADC.w .offset_x,Y
|08914E| STA.b $02

|089150| SEP #$20

|089152| LDA.b $00
|089154| STA.w $0BFA,X

|089157| LDA.b $01
|089159| STA.w $0C0E,X

|08915C| LDA.b $02
|08915E| STA.w $0C04,X

|089161| LDA.b $03
|089163| STA.w $0C18,X

|089166| INC.w $03B1,X

;---------------------------------------------------------------------------------------------------

.pos_set
|089169| LDA.w $0394,X
|08916C| BEQ .no_sparkle

|08916E| LDA.b $1A
|089170| AND.b #$01
|089172| BNE .no_sparkle

|089174| PHX
|089175| JSL AncillaAdd_SwordChargeSparkle
|089179| PLX

.no_sparkle
|08917A| LDA.w $0C5E,X
|08917D| BEQ .move_away

|08917F| LDA.w $0380,X
|089182| BEQ .not_decelerating

|089184| INC A

.decelerating
|089185| STA.w $0380,X

.not_decelerating
|089188| REP #$20

|08918A| LDA.b $20 ; [BUG] bad big write for boom
|08918C| STA.w $038A,X

|08918F| CLC
|089190| ADC.w #$0008
|089193| STA.b $20

|089195| SEP #$20

|089197| LDA.w $03C5,X
|08919A| JSR ProjectAncillaSpeedTowardsLink

|08919D| JSL CheatWhenNoOnesLooking

|0891A1| LDA.b $00
|0891A3| STA.w $0C22,X

|0891A6| LDA.b $01
|0891A8| STA.w $0C2C,X

|0891AB| REP #$20

|0891AD| LDA.w $038A,X
|0891B0| STA.b $20

|0891B2| SEP #$20

;---------------------------------------------------------------------------------------------------

.move_away
|0891B4| LDA.w $0C22,X
|0891B7| BEQ .y_speed_0

|0891B9| CLC
|0891BA| ADC.w $0380,X
|0891BD| STA.w $0C22,X

.y_speed_0
|0891C0| JSR AncillaMoveY

|0891C3| LDA.w $0C2C,X
|0891C6| BEQ .x_speed_0

|0891C8| CLC
|0891C9| ADC.w $0380,X
|0891CC| STA.w $0C2C,X

.x_speed_0
|0891CF| JSR AncillaMoveX
|0891D2| JSR Ancilla_CheckSpriteCollision

|0891D5| LDY.b #$00
|0891D7| BCC .no_sprite_collision

|0891D9| INY

;---------------------------------------------------------------------------------------------------

.no_sprite_collision
|0891DA| LDA.w $0C5E,X
|0891DD| BNE .dont_turn_around

|0891DF| CPY.b #$01
|0891E1| BEQ .turn_around

|0891E3| JSR Ancilla_CheckTileCollision
|0891E6| BCC .no_tile_collision

|0891E8| PHX

|0891E9| JSL AncillaAdd_BoomerangWallClink

|0891ED| PLX

|0891EE| LDY.b #$06 ; SFX2.06

|0891F0| LDA.w $03E4,X
|0891F3| CMP.b #$F0 ; TILETYPE F0
|0891F5| BEQ .not_key_door

|0891F7| LDY.b #$05 ; SFX2.05

.not_key_door
|0891F9| TYA
|0891FA| JSR Ancilla_SFX2_Pan

|0891FD| BRA .turn_around

;---------------------------------------------------------------------------------------------------

.no_tile_collision
|0891FF| JSR Boomerang_ScreenEdge
|089202| BCS .turn_around

|089204| DEC.w $0C54,X

|089207| LDA.w $0C54,X
|08920A| BEQ .turn_around

|08920C| CMP.b #$05
|08920E| BCS .proceed_to_draw

|089210| DEC.w $0380,X
|089213| BRA .proceed_to_draw

;---------------------------------------------------------------------------------------------------

.turn_around
|089215| LDA.w $0C5E,X
|089218| EOR.b #$01
|08921A| STA.w $0C5E,X

|08921D| BRA .proceed_to_draw

;---------------------------------------------------------------------------------------------------

.dont_turn_around
|08921F| LDA.w $0280,X
|089222| PHA

|089223| LDA.w $0C7C,X
|089226| PHA

|089227| STZ.w $0C7C,X

|08922A| JSR Ancilla_CheckTileCollision

|08922D| PLA
|08922E| STA.w $0C7C,X

|089231| PLA
|089232| STA.w $0280,X

|089235| JSR Boomerang_StopOffScreen

;---------------------------------------------------------------------------------------------------

.proceed_to_draw
|089238| BRL AncillaDraw_Boomerang

;===================================================================================================

Ancilla_CheckTileCollision_long:
|08923B| PHB
|08923C| PHK
|08923D| PLB

|08923E| JSR Ancilla_CheckTileCollision

|089241| PLB

|089242| RTL

;===================================================================================================

Ancilla_CheckTileCollision_Class2_long:
|089243| PHB
|089244| PHK
|089245| PLB

|089246| JSR Ancilla_CheckTileCollision_Class2

|089249| PLB

|08924A| RTL

;===================================================================================================

Boomerang_ScreenEdge:
|08924B| LDA.w $0BFA,X
|08924E| STA.b $00

|089250| LDA.w $0C0E,X
|089253| STA.b $01

|089255| LDA.w $0C04,X
|089258| STA.b $02

|08925A| LDA.w $0C18,X
|08925D| STA.b $03

;---------------------------------------------------------------------------------------------------

|08925F| REP #$30

|089261| LDY.w #$0000

|089264| LDA.w $039D
|089267| AND.w #$0003
|08926A| BEQ .no_horizontal

|08926C| AND.w #$0001
|08926F| BEQ .leftwards

|089271| LDY.w #$0010

.leftwards
|089274| TYA
|089275| CLC
|089276| ADC.b $02

|089278| SEC
|089279| SBC.b $E2
|08927B| STA.b $02

|08927D| CMP.w #$0100
|089280| BCS .do_reverse

;---------------------------------------------------------------------------------------------------

.no_horizontal
|089282| LDY.w #$0000

|089285| LDA.w $039D
|089288| AND.w #$000C
|08928B| BEQ .dont_reverse

|08928D| AND.w #$0004
|089290| BEQ .upward

|089292| LDY.w #$0010

.upward
|089295| TYA
|089296| CLC
|089297| ADC.b $00

|089299| SEC
|08929A| SBC.b $E8
|08929C| STA.b $00

|08929E| CMP.w #$00E2
|0892A1| BCC .dont_reverse

;---------------------------------------------------------------------------------------------------

.do_reverse
|0892A3| SEP #$30
|0892A5| SEC

|0892A6| RTS

;---------------------------------------------------------------------------------------------------

.dont_reverse
|0892A7| SEP #$30
|0892A9| CLC

|0892AA| RTS

;===================================================================================================

Boomerang_StopOffScreen:
|0892AB| LDA.w $0BFA,X
|0892AE| STA.b $04

|0892B0| LDA.w $0C0E,X
|0892B3| STA.b $05

|0892B5| LDA.w $0C04,X
|0892B8| STA.b $06

|0892BA| LDA.w $0C18,X
|0892BD| STA.b $07

;---------------------------------------------------------------------------------------------------

|0892BF| REP #$20

|0892C1| LDA.b $20
|0892C3| CLC
|0892C4| ADC.w #$0018
|0892C7| STA.b $00

|0892C9| LDA.b $22
|0892CB| CLC
|0892CC| ADC.w #$0010
|0892CF| STA.b $02

|0892D1| LDA.b $04
|0892D3| CLC
|0892D4| ADC.w #$0008
|0892D7| STA.b $04

|0892D9| LDA.b $06
|0892DB| CLC
|0892DC| ADC.w #$0008
|0892DF| STA.b $06

|0892E1| LDA.b $04
|0892E3| CMP.b $20
|0892E5| BCC Boom_NoDie

|0892E7| CMP.b $00
|0892E9| BCS Boom_NoDie

|0892EB| LDA.b $06
|0892ED| CMP.b $22
|0892EF| BCC Boom_NoDie

|0892F1| CMP.b $02
|0892F3| BCS Boom_NoDie

;---------------------------------------------------------------------------------------------------

Boom_Die:
|0892F5| SEP #$20

|0892F7| STZ.w $0C4A,X

|0892FA| STZ.w $035F

|0892FD| LDA.w $0301
|089300| AND.b #$80
|089302| BEQ Boom_NoDie

|089304| STZ.w $0301

|089307| LDA.b $3A
|089309| AND.b #$BF
|08930B| STA.b $3A

|08930D| AND.b #$80
|08930F| BNE Boom_NoDie

|089311| LDA.b $50
|089313| AND.b #$FE
|089315| STA.b $50

;===================================================================================================

Boom_NoDie:
|089317| SEP #$20

|089319| RTS

;===================================================================================================

pool AncillaDraw_Boomerang

.prop
|08931A| db $A4, $E4
|08931C| db $64, $24
|08931E| db $A2, $E2
|089320| db $62, $22

.offset
|089322| dw   2,  -2
|089326| dw   2,   2
|08932A| dw  -2,   2
|08932E| dw  -2,  -2

.oam_offset
|089332| dw $0180
|089334| dw $00D0

.rotation
|089336| db $03, $02

endpool

;---------------------------------------------------------------------------------------------------

AncillaDraw_Boomerang:
|089338| JSR Ancilla_PrepOAMCoord

|08933B| LDA.w $0C5E,X
|08933E| BEQ .move_away

|089340| LDA.b $EE
|089342| STA.w $0C7C,X

|089345| TAY

|089346| LDA.w AncillaPriorities,Y
|089349| STA.b $65

.move_away
|08934B| LDA.w $0280,X
|08934E| BEQ .normal_priority

|089350| LDA.b #$30
|089352| STA.b $65

.normal_priority
|089354| LDA.b $11
|089356| BNE .leave_rotation

|089358| LDA.w $03B1,X
|08935B| BEQ .leave_rotation

|08935D| DEC.w $039F,X
|089360| BPL .leave_rotation

|089362| LDY.w $0394,X

|089365| LDA.w .rotation,Y
|089368| STA.w $039F,X

|08936B| LDY.w $03A4,X

|08936E| LDA.w $03A9,X
|089371| BEQ .left_throw

|089373| DEY

|089374| BRA .set_rotation

.left_throw
|089376| INY

.set_rotation
|089377| TYA
|089378| AND.b #$03
|08937A| STA.w $03A4,X

;---------------------------------------------------------------------------------------------------

.leave_rotation
|08937D| PHX

|08937E| LDA.w $0394,X
|089381| ASL A
|089382| ASL A
|089383| STA.b $72

|089385| LDA.w $03A4,X
|089388| ASL A
|089389| ASL A
|08938A| TAY

|08938B| REP #$20

|08938D| STZ.b $74

|08938F| LDA.w .offset+0,Y
|089392| CLC
|089393| ADC.b $00
|089395| STA.b $00

|089397| LDA.w .offset+2,Y
|08939A| CLC
|08939B| ADC.b $02
|08939D| STA.b $02
|08939F| STA.b $04

|0893A1| LDA.w $03B1,X
|0893A4| AND.w #$00FF
|0893A7| BNE .general_oam

|0893A9| LDA.w $0FB3
|0893AC| AND.w #$00FF
|0893AF| ASL A
|0893B0| TAX

|0893B1| LDA.w .oam_offset,X
|0893B4| PHA

|0893B5| LSR A
|0893B6| LSR A
|0893B7| CLC

|0893B8| ADC.w #$0A20
|0893BB| STA.b $92

|0893BD| PLA
|0893BE| CLC
|0893BF| ADC.w #$0800
|0893C2| STA.b $90

;---------------------------------------------------------------------------------------------------

.general_oam
|0893C4| SEP #$20

|0893C6| TYA
|0893C7| LSR A
|0893C8| LSR A
|0893C9| CLC
|0893CA| ADC.b $72
|0893CC| TAX

|0893CD| LDY.b #$00
|0893CF| JSR Ancilla_SetOAM_XY_safe

|0893D2| LDA.b #$26
|0893D4| STA.b ($90),Y

|0893D6| INY

|0893D7| LDA.w .prop,X
|0893DA| AND.b #$CF
|0893DC| ORA.b $65
|0893DE| STA.b ($90),Y

|0893E0| LDA.b #$02
|0893E2| ORA.b $75
|0893E4| STA.b ($92)

|0893E6| PLX

|0893E7| RTS

;===================================================================================================

Ancilla06_WallHit:
|0893E8| DEC.w $039F,X
|0893EB| BPL WallHit_JustDraw

|0893ED| LDA.w $0C5E,X
|0893F0| INC A
|0893F1| CMP.b #$05
|0893F3| BEQ WallHit_JustDie

|0893F5| STA.w $0C5E,X

|0893F8| LDA.b #$01
|0893FA| STA.w $039F,X

|0893FD| BRA WallHit_JustDraw

;===================================================================================================

Ancilla1B_SwordWallHit:
|0893FF| JSR AlertSprites

|089402| DEC.w $03B1,X
|089405| BPL WallHit_JustDraw

|089407| LDA.w $0C5E,X
|08940A| INC A
|08940B| CMP.b #$08
|08940D| BEQ WallHit_JustDie

|08940F| STA.w $0C5E,X

|089412| LDA.b #$01
|089414| STA.w $03B1,X

|089417| BRA WallHit_JustDraw

;---------------------------------------------------------------------------------------------------

WallHit_JustDie:
|089419| BRL Ancilla_DeleteSelf

;---------------------------------------------------------------------------------------------------

WallHit_JustDraw:
|08941C| BRL AncillaDraw_WallHit

;===================================================================================================

pool AncillaDraw_WallHit

.char
|08941F| db $80, $00, $00, $00
|089423| db $92, $00, $00, $00
|089427| db $81, $81, $81, $81
|08942B| db $82, $82, $82, $82
|08942F| db $93, $93, $93, $93
|089433| db $92, $00, $00, $00
|089437| db $B9, $00, $00, $00
|08943B| db $90, $90, $00, $00

.prop
|08943F| db $32, $00, $00, $00
|089443| db $32, $00, $00, $00
|089447| db $32, $72, $B2, $F2
|08944B| db $32, $72, $B2, $F2
|08944F| db $32, $72, $B2, $F2
|089453| db $32, $00, $00, $00
|089457| db $72, $00, $00, $00
|08945B| db $32, $F2, $00, $00

.offset_y
|08945F| dw  -4,   0,   0,   0
|089467| dw  -4,   0,   0,   0
|08946F| dw  -8,  -8,   0,   0
|089477| dw  -8,  -8,   0,   0
|08947F| dw  -8,  -8,   0,   0
|089487| dw  -4,   0,   0,   0
|08948F| dw  -4,   0,   0,   0
|089497| dw  -8,   0,   0,   0

.offset_x
|08949F| dw  -4,   0,   0,   0
|0894A7| dw  -4,   0,   0,   0
|0894AF| dw  -8,   0,  -8,   0
|0894B7| dw  -8,   0,  -8,   0
|0894BF| dw  -8,   0,  -8,   0
|0894C7| dw  -4,   0,   0,   0
|0894CF| dw  -4,   0,   0,   0
|0894D7| dw  -8,   0,   0,   0

endpool

;---------------------------------------------------------------------------------------------------

AncillaDraw_WallHit:
|0894DF| JSR Ancilla_PrepOAMCoord

|0894E2| REP #$20

|0894E4| LDA.b $00
|0894E6| STA.b $04

|0894E8| LDA.b $02
|0894EA| STA.b $06

|0894EC| SEP #$20

|0894EE| LDA.b #$03
|0894F0| STA.b $08

|0894F2| PHX

|0894F3| LDA.w $0C5E,X
|0894F6| ASL A
|0894F7| ASL A
|0894F8| TAX

;---------------------------------------------------------------------------------------------------

|0894F9| LDY.b #$00

.next_object
|0894FB| LDA.w .char,X
|0894FE| BEQ .skip

|089500| PHX

|089501| TXA
|089502| ASL A
|089503| TAX

|089504| REP #$20

|089506| LDA.w .offset_y,X
|089509| CLC
|08950A| ADC.b $04
|08950C| STA.b $00

|08950E| LDA.w .offset_x,X
|089511| CLC
|089512| ADC.b $06
|089514| STA.b $02

|089516| SEP #$20

|089518| PLX

|089519| JSR Ancilla_SetOAM_XY

|08951C| LDA.w .char,X
|08951F| STA.b ($90),Y

|089521| INY

|089522| LDA.w .prop,X
|089525| AND.b #$CF
|089527| ORA.b $65
|089529| STA.b ($90),Y

|08952B| INY

|08952C| PHY

|08952D| TYA
|08952E| SEC
|08952F| SBC.b #$04
|089531| LSR A
|089532| LSR A
|089533| TAY

|089534| LDA.b #$00
|089536| STA.b ($92),Y

|089538| PLY

.skip
|089539| JSR AllocateOAMInCustomRegion

|08953C| INX
|08953D| DEC.b $08

|08953F| BPL .next_object

;---------------------------------------------------------------------------------------------------

|089541| PLX

|089542| RTS

;===================================================================================================

BombTimers:
|089543| db 160,   6,   4,   4
|089547| db   4,   4,   4,   6
|08954B| db   6,   6,   6

BombAnimationSteps:
|08954E| db $00, $01, $02, $03
|089552| db $02, $03, $04, $05
|089556| db $06, $07, $08, $09

;===================================================================================================

Ancilla07_Bomb:
|08955A| LDA.b $11
|08955C| BEQ .main

|08955E| CMP.b #$08
|089560| BEQ .staircase

|089562| CMP.b #$10
|089564| BNE .not_staircase

.staircase
|089566| JSR Ancilla_HandleLiftLogic

|089569| BRA .proceed_to_draw

;---------------------------------------------------------------------------------------------------

.not_staircase
|08956B| TXA
|08956C| INC A
|08956D| CMP.w $02EC
|089570| BNE .proceed_to_draw

|089572| LDA.w $0380,X
|089575| BEQ .proceed_to_draw

|089577| CMP.b #$03
|089579| BEQ .fully_held

|08957B| LDY.b #$03
|08957D| JSR Ancilla_LatchLinkCoordinates
|089580| JSR Ancilla_LatchAltitudeAboveLink

|089583| LDA.b #$03
|089585| STA.w $0380,X

.fully_held
|089588| JSR Ancilla_LatchCarriedPosition

.proceed_to_draw
|08958B| BRL Bomb_DoDraw

;---------------------------------------------------------------------------------------------------

.main
|08958E| JSR Ancilla_HandleLiftLogic
|089591| JSR Ancilla_LatchYCoordToZ

|089594| LDA.w $0C72,X
|089597| STA.b $74

|089599| LDA.w $0280,X
|08959C| STA.b $75

|08959E| STZ.w $0280,X

|0895A1| JSR Ancilla_CheckTileCollision_Class2
|0895A4| PHP

|0895A5| LDA.b $1B
|0895A7| BEQ .leave_layer

|0895A9| LDA.w $0385,X
|0895AC| BEQ .leave_layer

|0895AE| LDA.w $03E4,X
|0895B1| CMP.b #$1C ; TILETYPE 1C
|0895B3| BNE .leave_layer

|0895B5| LDA.b #$01
|0895B7| STA.w $03D5,X

.leave_layer
|0895BA| PLP
|0895BB| BCC .no_tile_collision

;---------------------------------------------------------------------------------------------------

.check_for_lift
|0895BD| BIT.w $0308
|0895C0| BPL .link_not_holding

|0895C2| LDA.w $0309
|0895C5| BEQ .no_tile_collision

.link_not_holding
|0895C7| LDA.b $75
|0895C9| BNE .ignore_tile_collision

|0895CB| LDA.w $0BF0,X
|0895CE| BNE .ignore_tile_collision

|0895D0| LDA.b #$01
|0895D2| STA.w $0BF0,X

|0895D5| LDA.b #$04
|0895D7| STA.b $0E

|0895D9| LDY.b #$FC

|0895DB| LDA.w $0C72,X
|0895DE| CMP.b #$01
|0895E0| BNE .not_downwards

|0895E2| LDA.b #$10
|0895E4| STA.b $0E

|0895E6| LDY.b #$F0

;---------------------------------------------------------------------------------------------------

.not_downwards
|0895E8| LDA.w $0C22,X
|0895EB| BEQ .not_moving_y
|0895ED| BPL .positive_y

|0895EF| LDY.b $0E

.positive_y
|0895F1| TYA
|0895F2| STA.w $0C22,X

;---------------------------------------------------------------------------------------------------

.not_moving_y
|0895F5| LDY.b #$FC

|0895F7| LDA.w $0C2C,X
|0895FA| BEQ .not_moving_x
|0895FC| BPL .positive_x

|0895FE| LDY.b #$04

.positive_x
|089600| TYA
|089601| STA.w $0C2C,X

.not_moving_x
|089604| LDA.w $0C72,X
|089607| CMP.b #$01
|089609| BNE .ignore_tile_collision

|08960B| LDA.w $029E,X
|08960E| BEQ .ignore_tile_collision

|089610| LDA.b #$FC
|089612| STA.w $0C22,X

|089615| LDA.b #$02
|089617| STA.w $0385,X

.ignore_tile_collision
|08961A| BRL Bomb_HandleState

;---------------------------------------------------------------------------------------------------

.no_tile_collision
|08961D| BIT.w $0308
|089620| BMI .ignore_tile_collision

|089622| LDA.w $029E,X
|089625| BEQ .on_ground

|089627| CMP.b #$FF
|089629| BNE .ignore_tile_collision

.on_ground
|08962B| LDA.b #$10
|08962D| STA.w $0C72,X

|089630| LDA.w $0280,X
|089633| PHA

|089634| JSR Ancilla_CheckTileCollision

|089637| PLA
|089638| STA.w $0280,X

;---------------------------------------------------------------------------------------------------

|08963B| LDA.w $03E4,X
|08963E| CMP.b #$26 ; TILETYPE 26
|089640| BEQ .tile_staircase

|089642| CMP.b #$0C ; TILETYPE 0C
|089644| BEQ .tile_0C_1C

|089646| CMP.b #$1C ; TILETYPE 1C
|089648| BEQ .tile_0C_1C

|08964A| CMP.b #$20 ; TILETYPE 20
|08964C| BEQ .tile_pit

|08964E| CMP.b #$08 ; TILETYPE 08
|089650| BEQ .tile_deep_water

|089652| CMP.b #$68 ; TILETYPE 68
|089654| BEQ .tile_conveyor

|089656| CMP.b #$69 ; TILETYPE 69
|089658| BEQ .tile_conveyor

|08965A| CMP.b #$6A ; TILETYPE 6A
|08965C| BEQ .tile_conveyor

|08965E| CMP.b #$6B ; TILETYPE 6B
|089660| BEQ .tile_conveyor

|089662| CMP.b #$B6 ; TILETYPE B6
|089664| BEQ .tile_transit

|089666| CMP.b #$BC ; TILETYPE BC
|089668| BEQ .tile_transit

|08966A| AND.b #$F0
|08966C| CMP.b #$B0
|08966E| BEQ .tile_pit

;---------------------------------------------------------------------------------------------------

.tile_transit
|089670| STZ.w $0C68,X

|089673| LDA.w $0385,X
|089676| BNE .ignore_tile_collision

|089678| LDA.b #$02
|08967A| STA.w $0C68,X

.bounce_to_state_handler
|08967D| BRL Bomb_HandleState

;---------------------------------------------------------------------------------------------------

.tile_conveyor
|089680| BRL Bomb_HandleConveyor

;---------------------------------------------------------------------------------------------------

.tile_staircase
|089683| BRL .check_for_lift

;---------------------------------------------------------------------------------------------------

.tile_0C_1C
|089686| BRL Bomb_HandleTiles_0C_1C

;---------------------------------------------------------------------------------------------------

.tile_deep_water
|089689| TXA
|08968A| INC A
|08968B| CMP.w $02EC
|08968E| BNE .water_reset_a

|089690| STZ.w $02EC

.water_reset_a
|089693| LDA.w $0C68,X
|089696| BNE .bounce_to_state_handler

|089698| LDA.w $0BFA,X
|08969B| CLC
|08969C| ADC.b #$E8
|08969E| STA.w $0BFA,X

|0896A1| LDA.b #$FF
|0896A3| ADC.w $0C0E,X
|0896A6| STA.w $0C0E,X

|0896A9| BRL Ancilla_TransmuteToSplash

;---------------------------------------------------------------------------------------------------

.tile_pit
|0896AC| LDA.w $0308
|0896AF| BMI Bomb_HandleState

|0896B1| STX.b $04

|0896B3| LDA.w $02EC
|0896B6| DEC A
|0896B7| CMP.b $04
|0896B9| BNE .water_reset_b

|0896BB| STZ.w $02EC

.water_reset_b
|0896BE| LDA.w $0C68,X
|0896C1| BNE .bounce_to_state_handler

|0896C3| BRL Ancilla_DeleteSelf

;---------------------------------------------------------------------------------------------------

Bomb_HandleTiles_0C_1C:
|0896C6| LDA.w $046C
|0896C9| CMP.b #$03
|0896CB| BEQ .moving_floor

|0896CD| LDA.w $0C7C,X
|0896D0| BNE Bomb_HandleState

|0896D2| LDA.w $029E,X
|0896D5| BEQ Bomb_HandleState

|0896D7| CMP.b #$FF
|0896D9| BEQ Bomb_HandleState

|0896DB| LDA.b #$01
|0896DD| STA.w $0C7C,X

|0896E0| BRA Bomb_HandleState

;---------------------------------------------------------------------------------------------------

.moving_floor
|0896E2| LDA.w $0310
|0896E5| CLC
|0896E6| ADC.w $0BFA,X
|0896E9| STA.b $72

|0896EB| LDA.w $0311
|0896EE| ADC.w $0C0E,X
|0896F1| STA.b $73

|0896F3| LDA.w $0312
|0896F6| CLC
|0896F7| ADC.w $0C04,X
|0896FA| STA.w $0C04,X

|0896FD| LDA.w $0313
|089700| ADC.w $0C18,X
|089703| STA.w $0C18,X

|089706| BRA Bomb_HandleState

;===================================================================================================

Bomb_HandleConveyor:
|089708| JSR Ancilla_ApplyConveyor

;===================================================================================================

Bomb_HandleState:
|08970B| JSR Ancilla_SetYFrom_DP72

|08970E| LDA.b $74
|089710| STA.w $0C72,X

|089713| LDA.b $75
|089715| ORA.w $0280,X
|089718| STA.w $0280,X

|08971B| JSR Bomb_CheckSpriteAndPlayerDamage

|08971E| DEC.w $039F,X

|089721| LDA.w $039F,X
|089724| BNE .delay

|089726| INC.w $0C5E,X

|089729| LDA.w $0C5E,X
|08972C| CMP.b #$01
|08972E| BNE .not_just_exploded

|089730| LDA.b #$0C ; SFX2.0C
|089732| JSR Ancilla_SFX2_Pan

|089735| TXA
|089736| INC A
|089737| CMP.w $02EC
|08973A| BNE .not_just_exploded

|08973C| STZ.w $02EC

|08973F| BIT.w $0308
|089742| BPL .not_just_exploded

|089744| STZ.w $0308
|089747| STZ.b $50

;---------------------------------------------------------------------------------------------------

.not_just_exploded
|089749| LDA.w $0C5E,X
|08974C| CMP.b #$0B
|08974E| BNE .not_fully_exploded

|089750| LDY.b #$00 ; no ancilla

|089752| LDA.w $0C54,X
|089755| BEQ .dont_become_debris ; except A already is 0, you could have gone to 975A

|089757| LDY.b #$08 ; ANCILLA 08

.dont_become_debris
|089759| TYA
|08975A| STA.w $0C4A,X

|08975D| RTS

;---------------------------------------------------------------------------------------------------

.not_fully_exploded
|08975E| TAY

|08975F| LDA.w BombTimers,Y
|089762| STA.w $039F,X

;---------------------------------------------------------------------------------------------------

.delay
|089765| LDA.w $0C5E,X

|089768| CMP.b #$07
|08976A| BNE Bomb_DoDraw

|08976C| LDA.w $039F,X
|08976F| CMP.b #$02
|089771| BNE Bomb_DoDraw

|089773| PHX

|089774| LDA.w $0BFA,X
|089777| STA.b $00

|089779| LDA.w $0C0E,X
|08977C| STA.b $01

|08977E| LDA.w $0C04,X
|089781| STA.b $02

|089783| LDA.w $0C18,X
|089786| STA.b $03

|089788| STX.b $0E

|08978A| TXA
|08978B| ASL A
|08978C| TAX

|08978D| STZ.w $03B6,X
|089790| STZ.w $03B7,X

|089793| JSL FindBombableThings

|089797| PLX

|089798| TXY
|089799| TXA

|08979A| ASL A
|08979B| TAX

|08979C| LDA.w $03B6,X
|08979F| ORA.w $03B7,X
|0897A2| BEQ .didnt_break_wall

|0897A4| TYX

|0897A5| LDA.b #$01
|0897A7| STA.w $0C54,X

.didnt_break_wall
|0897AA| TYX

;===================================================================================================

Bomb_DoDraw:
|0897AB| JSR AncillaDraw_Bomb

;---------------------------------------------------------------------------------------------------

#EXIT_0897AE:
|0897AE| RTS

;===================================================================================================

pool Ancilla_ApplyConveyor

.speed_y
|0897AF| db  -8,   8,   0,   0

.speed_x
|0897B3| db   0,   0,  -8,   8

endpool

;---------------------------------------------------------------------------------------------------

Ancilla_ApplyConveyor:
|0897B7| LDA.w $03E4,X
|0897BA| SEC
|0897BB| SBC.b #$68 ; TILETYPE 68
|0897BD| TAY

|0897BE| LDA.w .speed_y,Y
|0897C1| STA.w $0C22,X

|0897C4| LDA.w .speed_x,Y
|0897C7| STA.w $0C2C,X

|0897CA| JSR AncillaMoveY
|0897CD| JSR AncillaMoveX

|0897D0| LDA.w $0BFA,X
|0897D3| STA.b $72

|0897D5| LDA.w $0C0E,X
|0897D8| STA.b $73

|0897DA| RTS

;===================================================================================================

pool Bomb_CheckSpriteAndPlayerDamage

.recoil
|0897DB| db $20, $20, $20, $20
|0897DF| db $20, $20, $1C, $1C
|0897E3| db $1C, $1C, $1C, $1C
|0897E7| db $18, $18, $18, $18

.recoil_z
|0897EB| db $10, $10, $10, $10
|0897EF| db $10, $10, $0C, $0C
|0897F3| db $0C, $0C, $08, $08
|0897F7| db $08, $08, $08, $08

.recoil_timer
|0897FB| db  32,  32,  32,  32
|0897FF| db  32,  32,  24,  24
|089803| db  24,  24,  24,  24
|089807| db  16,  16,  16,  16

.link_damage
|08980B| db $08 ; green mail
|08980C| db $04 ; blue mail
|08980D| db $02 ; red mail

endpool

;===================================================================================================

Bomb_CheckSpriteAndPlayerDamage:
|08980E| LDA.w $0C5E,X
|089811| BEQ .no_damage

|089813| CMP.b #$09
|089815| BCS .no_damage

|089817| JSR Bomb_CheckSpriteDamage

|08981A| LDA.w $037B
|08981D| BEQ .link_vulnerable

|08981F| TXA
|089820| INC A
|089821| CMP.w $02EC
|089824| BNE EXIT_0897AE

|089826| LDA.w $0308
|089829| AND.b #$80
|08982B| BEQ EXIT_0897AE

|08982D| LDA.w $0308
|089830| AND.b #$7F
|089832| STA.w $0308

|089835| STZ.b $50

.no_damage
|089837| BRL EXIT_0897AE

.link_vulnerable
|08983A| LDA.b $4D
|08983C| BNE .no_damage

|08983E| LDA.b $46
|089840| BNE .no_damage

|089842| LDA.w $0C7C,X
|089845| CMP.b $EE
|089847| BNE .no_damage

;---------------------------------------------------------------------------------------------------

|089849| LDA.b $22
|08984B| STA.b $00

|08984D| LDA.b $23
|08984F| STA.b $08

|089851| LDA.b $20
|089853| STA.b $01

|089855| LDA.b $21
|089857| STA.b $09

|089859| LDA.b #$10
|08985B| STA.b $02

|08985D| LDA.b #$18
|08985F| STA.b $03

|089861| LDA.w $0C04,X
|089864| STA.b $04

|089866| LDA.w $0C18,X
|089869| STA.b $05

|08986B| LDA.w $0BFA,X
|08986E| STA.b $06

|089870| LDA.w $0C0E,X
|089873| STA.b $07

;---------------------------------------------------------------------------------------------------

|089875| REP #$20

|089877| LDA.b $04
|089879| CLC
|08987A| ADC.w #$FFF0
|08987D| STA.b $04

|08987F| LDA.b $06
|089881| CLC
|089882| ADC.w #$FFF0
|089885| STA.b $06

|089887| SEP #$20

|089889| LDA.b $05
|08988B| STA.b $0A

|08988D| LDA.b $06
|08988F| STA.b $05

|089891| LDA.b $07
|089893| STA.b $0B

|089895| LDA.b #$20
|089897| STA.b $06
|089899| STA.b $07

|08989B| JSL CheckIfHitboxesOverlap_long
|08989F| BCC .exit

;---------------------------------------------------------------------------------------------------

|0898A1| LDA.w $0C04,X
|0898A4| CLC
|0898A5| ADC.b #$F8
|0898A7| STA.b $00

|0898A9| LDA.w $0C18,X
|0898AC| ADC.b #$FF
|0898AE| STA.b $01

|0898B0| LDA.w $0BFA,X
|0898B3| CLC
|0898B4| ADC.b #$F4
|0898B6| STA.b $02

|0898B8| LDA.w $0C0E,X
|0898BB| ADC.b #$FF
|0898BD| STA.b $03

|0898BF| PHX

|0898C0| JSR Bomb_GetDisplacementFromLink

|0898C3| LDA.w .recoil,Y
|0898C6| TAY

|0898C7| JSL HijackSlot0ForBombRecoil
|0898CB| PLX

;---------------------------------------------------------------------------------------------------

|0898CC| LDA.w $031F
|0898CF| BNE .exit

|0898D1| LDA.w $0FFC
|0898D4| CMP.b #$02
|0898D6| BEQ .exit

|0898D8| LDA.b $00
|0898DA| STA.b $27

|0898DC| LDA.b $01
|0898DE| STA.b $28

|0898E0| JSR Bomb_GetDisplacementFromLink

|0898E3| LDA.w .recoil_z,Y
|0898E6| STA.b $29
|0898E8| STA.w $02C7

|0898EB| LDA.w .recoil_timer,Y
|0898EE| STA.b $46

|0898F0| LDA.b #$01
|0898F2| STA.b $4D

|0898F4| LDA.b #$3A
|0898F6| STA.w $031F

; No damage if boss heart is collecteed
|0898F9| LDA.w $0403
|0898FC| AND.b #$80
|0898FE| BNE .exit

; use mail to get damage
|089900| LDA.l $7EF35B
|089904| TAY

|089905| LDA.w .link_damage,Y
|089908| STA.w $0373

.exit
|08990B| RTS

;===================================================================================================

pool AncillaCarry

.offset_y
|08990C| dw  16,   8,   4,   4
|089914| dw   8,   2,  -1,  -1
|08991C| dw   2,   2,  -1,  -1

.offset_x
|089924| dw   8,   8,  -4,  20
|08992C| dw   8,   8,   8,   8
|089934| dw   8,   8,   8,   8

.timer
|08993C| db  16,   8,   9

.offset_z
|08993F| dw  -2,  -1
|089943| dw   0,  -2
|089947| dw  -1,   0

.throw_speed_y
|08994B| db -32,  32,   0,   0

.throw_speed_x
|08994F| db   0,   0, -32,  32

.unused_a
|089953| db $08, $08, $00, $00
|089957| db $04, $04, $00, $00

.unused_b
|08995B| db $00, $00, $08, $08
|08995F| db $00, $00, $04, $04

.bounce_z
|089963| db  16,  16

.unused_c
|089965| db $10, $10, $08, $08, $08, $08

.direction
|08996B| db $00, $02, $04, $06

endpool

;===================================================================================================

Ancilla_HandleLiftLogic:
|08996F| LDA.w $03EA,X
|089972| BNE .not_liftable

|089974| LDA.w $0385,X
|089977| BEQ .not_airborne

|089979| BRL AncillaCarry_Airborne

.not_airborne
|08997C| STX.b $00

|08997E| LDA.w $02EC
|089981| BEQ .link_not_close

|089983| DEC A
|089984| CMP.b $00
|089986| BEQ .is_closest_for_lift

|089988| RTS

;---------------------------------------------------------------------------------------------------

.is_closest_for_lift
|089989| LDY.w $037B
|08998C| BNE .link_invulnerable

|08998E| LDA.b $46
|089990| BNE .link_cant_handle_it

.link_invulnerable
|089992| LDA.w $03FD
|089995| BNE .link_cant_handle_it

|089997| LDA.b $4D
|089999| CMP.b #$01
|08999B| BNE .link_not_recoiling

;---------------------------------------------------------------------------------------------------

.link_cant_handle_it
|08999D| LDA.b #$01
|08999F| STA.w $03EA,X

|0899A2| STZ.w $0294,X
|0899A5| STZ.w $02EC
|0899A8| STZ.w $0BF0,X

|0899AB| BRA .not_liftable

;---------------------------------------------------------------------------------------------------

.link_not_recoiling
|0899AD| LDA.w $0308
|0899B0| BPL .link_not_close

|0899B2| BRL .link_hands_are_full

;---------------------------------------------------------------------------------------------------

.not_liftable
|0899B5| BRL Ancilla_LatchCarriedPosition.handle_altitude

;---------------------------------------------------------------------------------------------------

.link_not_close
|0899B8| STZ.w $02EC

|0899BB| LDA.w $0C5E,X
|0899BE| BNE .exit

|0899C0| LDA.w $0308
|0899C3| BNE .exit

|0899C5| LDY.b #$00
|0899C7| JSR Ancilla_CheckLinkCollision
|0899CA| BCC .exit

|0899CC| LDA.w $0C7C,X
|0899CF| CMP.b $EE
|0899D1| BNE .exit

|0899D3| LDA.b $08
|0899D5| CMP.b #$10
|0899D7| BCS .y_difference_big

|0899D9| LDA.b $0A
|0899DB| CMP.b #$0C
|0899DD| BCC .continue_lift

;---------------------------------------------------------------------------------------------------

.y_difference_big
|0899DF| LDA.b $08
|0899E1| CMP.b $0A
|0899E3| BCC .y_difference_smaller

|0899E5| LDY.b #$00

|0899E7| LDA.b $04
|0899E9| BPL .check_direction

|0899EB| INY
|0899EC| BRA .check_direction

;---------------------------------------------------------------------------------------------------

.y_difference_smaller
|0899EE| LDY.b #$02

|0899F0| LDA.b $06
|0899F2| BPL .check_direction

|0899F4| INY

.check_direction
|0899F5| LDA.w AncillaCarry.direction,Y
|0899F8| CMP.b $2F
|0899FA| BNE .exit

;---------------------------------------------------------------------------------------------------

.continue_lift
|0899FC| TXA
|0899FD| INC A
|0899FE| STA.w $02EC

|089A01| STZ.w $0380,X

|089A04| LDA.w AncillaCarry.timer
|089A07| STA.w $03B1,X

|089A0A| STZ.w $0385,X
|089A0D| STZ.w $029E,X

.exit
|089A10| RTS

;---------------------------------------------------------------------------------------------------

.link_hands_are_full
|089A11| LDA.w $0309
|089A14| CMP.b #$02
|089A16| BEQ Ancilla_HandleThrowLogic

|089A18| LDA.w $02EC
|089A1B| BEQ Ancilla_HandleThrowLogic

|089A1D| LDY.w $0380,X
|089A20| CPY.b #$03
|089A22| BEQ Ancilla_HandleThrowLogic

|089A24| CPY.b #$00
|089A26| BNE .skip_lift_sfx

|089A28| LDA.w $03B1,X
|089A2B| CMP.b #$10
|089A2D| BNE .skip_lift_sfx

|089A2F| LDA.b #$1D ; SFX2.1D
|089A31| JSR Ancilla_SFX2_Pan

;---------------------------------------------------------------------------------------------------

.skip_lift_sfx
|089A34| DEC.w $03B1,X
|089A37| BPL Ancilla_LatchLinkCoordinates

|089A39| INY
|089A3A| TYA
|089A3B| STA.w $0380,X

|089A3E| LDA.w AncillaCarry.timer,Y
|089A41| STA.w $03B1,X

|089A44| CPY.b #$03
|089A46| BNE Ancilla_LatchLinkCoordinates

;---------------------------------------------------------------------------------------------------

Ancilla_LatchAltitudeAboveLink:
|089A48| LDA.b #$11
|089A4A| STA.w $029E,X

|089A4D| LDA.w $0BFA,X
|089A50| CLC
|089A51| ADC.b #$11
|089A53| STA.w $0BFA,X

|089A56| LDA.w $0C0E,X
|089A59| ADC.b #$00
|089A5B| STA.w $0C0E,X

|089A5E| STZ.w $0280,X

|089A61| BRA EXIT_089A8D

;===================================================================================================

Ancilla_LatchLinkCoordinates:
|089A63| TYA
|089A64| ASL A ; x8
|089A65| ASL A
|089A66| ASL A
|089A67| CLC
|089A68| ADC.b $2F
|089A6A| TAY

|089A6B| LDA.b $20
|089A6D| CLC
|089A6E| ADC.w AncillaCarry.offset_y+0,Y
|089A71| STA.w $0BFA,X

|089A74| LDA.b $21
|089A76| ADC.w AncillaCarry.offset_y+1,Y
|089A79| STA.w $0C0E,X

|089A7C| LDA.b $22
|089A7E| CLC
|089A7F| ADC.w AncillaCarry.offset_x+0,Y
|089A82| STA.w $0C04,X

|089A85| LDA.b $23
|089A87| ADC.w AncillaCarry.offset_x+1,Y
|089A8A| STA.w $0C18,X

;---------------------------------------------------------------------------------------------------

#EXIT_089A8D:
|089A8D| RTS

;===================================================================================================

Ancilla_HandleThrowLogic:
|089A8E| LDA.w $0380,X
|089A91| CMP.b #$03
|089A93| BNE EXIT_089A8D

|089A95| LDA.w $0309
|089A98| CMP.b #$02
|089A9A| BEQ AncillaCarry_HandleThrow

|089A9C| LDA.b $11
|089A9E| BNE .cant_throw

|089AA0| LDA.b $F6
|089AA2| ORA.b $F4
|089AA4| AND.b #$80
|089AA6| BNE AncillaCarry_HandleThrow

.cant_throw
|089AA8| BRL AncillaCarry_HandleFalling

;===================================================================================================

AncillaCarry_HandleThrow:
|089AAB| LDA.b $2F
|089AAD| LSR A
|089AAE| STA.w $0C72,X

|089AB1| TAY

|089AB2| LDA.b #$18
|089AB4| STA.w $0294,X

|089AB7| LDA.w AncillaCarry.throw_speed_y,Y
|089ABA| STA.w $0C22,X

|089ABD| LDA.w AncillaCarry.throw_speed_x,Y
|089AC0| STA.w $0C2C,X

|089AC3| LDA.b #$02
|089AC5| STA.w $0309

|089AC8| DEC A
|089AC9| STA.w $0385,X

|089ACC| STZ.w $02EC

|089ACF| STZ.w $0BF0,X
|089AD2| STZ.w $0380,X
|089AD5| STZ.w $0280,X

|089AD8| LDA.b #$13 ; SFX3.13
|089ADA| JSR Ancilla_SFX3_Pan

;===================================================================================================

AncillaCarry_Airborne:
|089ADD| LDA.w $0C5E,X
|089AE0| BEQ .continue

|089AE2| RTS

.continue
|089AE3| LDA.w $0294,X
|089AE6| SEC
|089AE7| SBC.b #$02
|089AE9| STA.w $0294,X

|089AEC| JSR AncillaMoveY
|089AEF| JSR AncillaMoveX

|089AF2| LDA.w $029E,X
|089AF5| STA.b $00

|089AF7| JSR AncillaMoveZ

|089AFA| LDA.w $0BF0,X
|089AFD| BEQ .dont_adjust_altitude

|089AFF| LDA.w $0C72,X
|089B02| CMP.b #$01
|089B04| BNE .dont_adjust_altitude

|089B06| LDA.w $0BFA,X
|089B09| STA.b $0C

|089B0B| LDA.w $0C0E,X
|089B0E| STA.b $0D

|089B10| LDA.w $029E,X
|089B13| BMI .dont_adjust_altitude

|089B15| SEC
|089B16| SBC.b $00
|089B18| STA.b $0E

|089B1A| REP #$20

|089B1C| LDA.b $0E
|089B1E| AND.w #$00FF
|089B21| CMP.w #$0080
|089B24| BCC .y_is_positive

|089B26| ORA.w #$FF00

.y_is_positive
|089B29| CLC
|089B2A| ADC.b $0C
|089B2C| STA.b $0C

|089B2E| SEP #$20

|089B30| LDA.b $0C
|089B32| STA.w $0BFA,X

|089B35| LDA.b $0D
|089B37| STA.w $0C0E,X

.dont_adjust_altitude
|089B3A| LDA.w $029E,X
|089B3D| CMP.b #$80
|089B3F| BCS .negative_z

.exit_a
|089B41| RTS

;---------------------------------------------------------------------------------------------------

.negative_z
|089B42| CMP.b #$FF
|089B44| BCS .exit_a

|089B46| STZ.w $029E,X

|089B49| LDA.b #$21 ; SFX2.21
|089B4B| JSR Ancilla_SFX2_Pan

|089B4E| INC.w $0385,X

|089B51| LDA.w $0385,X
|089B54| CMP.b #$03
|089B56| BEQ .bounces_maxed

|089B58| SEC
|089B59| SBC.b #$02

|089B5B| ASL A
|089B5C| ASL A

|089B5D| CLC
|089B5E| ADC.w $0C72,X
|089B61| TAY ; useless

;---------------------------------------------------------------------------------------------------

|089B62| LDY.b #$00

|089B64| LDA.w $0C22,X
|089B67| BPL .positive_y

|089B69| LDY.b #$01

|089B6B| EOR.b #$FF
|089B6D| INC A

.positive_y
|089B6E| LSR A

|089B6F| CPY.b #$01
|089B71| BNE .dont_invert_y

|089B73| EOR.b #$FF
|089B75| INC A

.dont_invert_y
|089B76| STA.w $0C22,X

;---------------------------------------------------------------------------------------------------

|089B79| LDY.b #$00

|089B7B| LDA.w $0C2C,X
|089B7E| BPL .positive_x

|089B80| LDY.b #$01

|089B82| EOR.b #$FF
|089B84| INC A

.positive_x
|089B85| LSR A
|089B86| CPY.b #$01
|089B88| BNE .dont_invert_x

|089B8A| EOR.b #$FF
|089B8C| INC A

.dont_invert_x
|089B8D| STA.w $0C2C,X

|089B90| LDA.w AncillaCarry.bounce_z,Y
|089B93| STA.w $0294,X

|089B96| LDA.w $0BF0,X
|089B99| BEQ .exit_b

|089B9B| STZ.w $0BF0,X

|089B9E| RTS

;---------------------------------------------------------------------------------------------------

.bounces_maxed
|089B9F| STZ.w $029E,X
|089BA2| STZ.w $0385,X
|089BA5| STZ.w $0BF0,X

|089BA8| STZ.b $5E

|089BAA| STZ.w $0C22,X
|089BAD| STZ.w $0C2C,X
|089BB0| STZ.w $0294,X

|089BB3| LDA.w $03D5,X
|089BB6| BEQ .exit_b

|089BB8| STA.w $0C7C,X

|089BBB| STZ.w $03D5,X

.exit_b
|089BBE| RTS

;===================================================================================================

AncillaCarry_HandleFalling:
|089BBF| LDA.w $0C5E,X
|089BC2| BNE EXIT_089C36

|089BC4| LDA.b $5B
|089BC6| CMP.b #$02
|089BC8| BCC .continue

|089BCA| STZ.b $5E

|089BCC| TXA
|089BCD| INC A

|089BCE| CMP.w $02EC
|089BD1| BNE .exit

|089BD3| STZ.w $02EC

|089BD6| STZ.w $0C4A,X

.exit
|089BD9| RTS

.continue
|089BDA| LDA.w $0345
|089BDD| ORA.w $02E0
|089BE0| BEQ Ancilla_LatchCarriedPosition

|089BE2| STZ.w $0308

|089BE5| BRL AncillaCarry_HandleThrow

;===================================================================================================

Ancilla_LatchCarriedPosition:
|089BE8| LDA.b $2E
|089BEA| ASL A
|089BEB| TAY

|089BEC| LDA.b #$0C
|089BEE| STA.b $5E

|089BF0| LDA.b $EE
|089BF2| STA.w $0C7C,X

|089BF5| LDA.w $0476
|089BF8| STA.w $03CA,X

|089BFB| REP #$20

|089BFD| LDA.b $24
|089BFF| CMP.w #$FFFF
|089C02| BNE .positive

|089C04| LDA.w #$0000

.positive
|089C07| EOR.w #$FFFF
|089C0A| INC A

|089C0B| CLC
|089C0C| ADC.b $20

|089C0E| CLC
|089C0F| ADC.w AncillaCarry.offset_z,Y

|089C12| CLC
|089C13| ADC.w #$0012
|089C16| STA.b $00

;---------------------------------------------------------------------------------------------------

|089C18| LDA.b $22
|089C1A| CLC
|089C1B| ADC.w #$0008
|089C1E| STA.b $02

|089C20| SEP #$20

|089C22| LDA.b $00
|089C24| STA.w $0BFA,X

|089C27| LDA.b $01
|089C29| STA.w $0C0E,X

|089C2C| LDA.b $02
|089C2E| STA.w $0C04,X

|089C31| LDA.b $03
|089C33| STA.w $0C18,X

;---------------------------------------------------------------------------------------------------

#EXIT_089C36:
|089C36| RTS

;---------------------------------------------------------------------------------------------------

.handle_altitude
|089C37| LDA.w $0C5E,X
|089C3A| BNE EXIT_089C36

|089C3C| LDA.w $0380,X
|089C3F| CMP.b #$03
|089C41| BNE .restore_lift

|089C43| LDA.w $0294,X
|089C46| SEC
|089C47| SBC.b #$02
|089C49| STA.w $0294,X

|089C4C| JSR AncillaMoveZ

|089C4F| LDA.w $029E,X
|089C52| BEQ .zero_zee

|089C54| CMP.b #$FC
|089C56| BCC .exit

;---------------------------------------------------------------------------------------------------

.zero_zee
|089C58| STZ.w $029E,X

|089C5B| INC.w $03EA,X

|089C5E| LDA.w $03EA,X
|089C61| CMP.b #$03
|089C63| BEQ .bounces_maxed

|089C65| LDA.b #$18
|089C67| STA.w $0294,X

|089C6A| BRA .exit

.bounces_maxed
|089C6C| STZ.w $029E,X
|089C6F| STZ.w $0380,X

.restore_lift
|089C72| STZ.w $03EA,X
|089C75| STZ.b $5E

.exit
|089C77| RTS

;===================================================================================================

Ancilla_LatchYCoordToZ:
|089C78| LDA.w $0BFA,X
|089C7B| STA.b $72

|089C7D| LDA.w $0C0E,X
|089C80| STA.b $73

|089C82| STZ.b $0D
|089C84| STZ.b $0C

|089C86| LDA.w $0C72,X
|089C89| ASL A
|089C8A| TAY

|089C8B| CMP.b #$02
|089C8D| BNE .continue

|089C8F| LDA.w $029E,X
|089C92| STA.b $0C
|089C94| BPL .continue

|089C96| LDA.b #$FF
|089C98| STA.b $0D

;---------------------------------------------------------------------------------------------------

.continue
|089C9A| REP #$20

|089C9C| LDA.b $0C
|089C9E| CMP.w #$FFFF
|089CA1| BNE .not_ground_impact

|089CA3| LDA.w #$0000

.not_ground_impact
|089CA6| EOR.w #$FFFF
|089CA9| INC A
|089CAA| CLC
|089CAB| ADC.b $72
|089CAD| STA.b $0E

|089CAF| SEP #$20

|089CB1| LDA.b $0E
|089CB3| STA.w $0BFA,X

|089CB6| LDA.b $0F
|089CB8| STA.w $0C0E,X

|089CBB| RTS

;===================================================================================================

Ancilla_SetYFrom_DP72:
|089CBC| LDA.b $73
|089CBE| STA.w $0C0E,X

|089CC1| LDA.b $72
|089CC3| STA.w $0BFA,X

|089CC6| RTS

;===================================================================================================

Bomb_GetDisplacementFromLink:
|089CC7| LDA.w $0C04,X
|089CCA| STA.b $06

|089CCC| LDA.w $0C18,X
|089CCF| STA.b $07

|089CD1| LDA.w $0BFA,X
|089CD4| STA.b $04

|089CD6| LDA.w $0C0E,X
|089CD9| STA.b $05

|089CDB| REP #$20

|089CDD| LDA.b $22
|089CDF| CLC
|089CE0| ADC.w #$0008
|089CE3| SEC
|089CE4| SBC.b $06
|089CE6| BPL .positive_x

|089CE8| EOR.w #$FFFF
|089CEB| INC A

.positive_x
|089CEC| STA.b $0A

|089CEE| LDA.b $20
|089CF0| CLC
|089CF1| ADC.w #$000C
|089CF4| SEC
|089CF5| SBC.b $04
|089CF7| BPL .positive_y

|089CF9| EOR.w #$FFFF
|089CFC| INC A

.positive_y
|089CFD| CLC
|089CFE| ADC.b $0A
|089D00| AND.w #$00FC
|089D03| LSR A
|089D04| LSR A
|089D05| TAY

|089D06| SEP #$20

|089D08| RTS

;===================================================================================================

BombDraw:

.char_and_prop
; group00
|089D09| db $6E, $26
|089D0B| db $FF, $FF
|089D0D| db $FF, $FF
|089D0F| db $FF, $FF
|089D11| db $FF, $FF
|089D13| db $FF, $FF

; group01
|089D15| db $8C, $22
|089D17| db $8C, $62
|089D19| db $8C, $A2
|089D1B| db $8C, $E2
|089D1D| db $FF, $FF
|089D1F| db $FF, $FF

; group02
|089D21| db $84, $22
|089D23| db $84, $62
|089D25| db $84, $A2
|089D27| db $84, $E2
|089D29| db $FF, $FF
|089D2B| db $FF, $FF

; group03
|089D2D| db $88, $22
|089D2F| db $88, $62
|089D31| db $88, $A2
|089D33| db $88, $E2
|089D35| db $FF, $FF
|089D37| db $FF, $FF

; group04
|089D39| db $86, $22
|089D3B| db $88, $22
|089D3D| db $88, $62
|089D3F| db $88, $A2
|089D41| db $88, $E2
|089D43| db $FF, $FF

; group05
|089D45| db $86, $22
|089D47| db $86, $62
|089D49| db $86, $E2
|089D4B| db $86, $E2
|089D4D| db $FF, $FF
|089D4F| db $FF, $FF

; group06
|089D51| db $86, $E2
|089D53| db $86, $22
|089D55| db $86, $22
|089D57| db $86, $62
|089D59| db $86, $A2
|089D5B| db $86, $A2

; group07
|089D5D| db $8A, $A2
|089D5F| db $8A, $62
|089D61| db $8A, $22
|089D63| db $8A, $62
|089D65| db $8A, $62
|089D67| db $8A, $E2

; group08
|089D69| db $9B, $22
|089D6B| db $9B, $A2
|089D6D| db $9B, $62
|089D6F| db $9B, $E2
|089D71| db $9B, $A2
|089D73| db $9B, $22

;---------------------------------------------------------------------------------------------------

.offset
; group00
|089D75| dw  -8,  -8
|089D79| dw   0,   0
|089D7D| dw   0,   0
|089D81| dw   0,   0
|089D85| dw   0,   0
|089D89| dw   0,   0

; group01
|089D8D| dw  -8,  -8
|089D91| dw  -8,   0
|089D95| dw   0,  -8
|089D99| dw   0,   0
|089D9D| dw   0,   0
|089DA1| dw   0,   0

; group02
|089DA5| dw -16, -16
|089DA9| dw -16,   0
|089DAD| dw   0, -16
|089DB1| dw   0,   0
|089DB5| dw   0,   0
|089DB9| dw   0,   0

; group03
|089DBD| dw -16, -16
|089DC1| dw -16,   0
|089DC5| dw   0, -16
|089DC9| dw   0,   0
|089DCD| dw   0,   0
|089DD1| dw   0,   0

; group04
|089DD5| dw  -8,  -8
|089DD9| dw -21, -22
|089DDD| dw -21,   8
|089DE1| dw   9, -22
|089DE5| dw   9,   8
|089DE9| dw   0,   0

; group05
|089DED| dw  -6, -15
|089DF1| dw   0,  -1
|089DF5| dw -16,  -2
|089DF9| dw  -8,  -7
|089DFD| dw   0,   0
|089E01| dw   0,   0

; group06
|089E05| dw  -9,  -4
|089E09| dw -21,  -5
|089E0D| dw -12, -18
|089E11| dw -11,   7
|089E15| dw   0, -15
|089E19| dw   4,  -2

; group07
|089E1D| dw  -9,  -4
|089E21| dw -22,  -5
|089E25| dw -13, -20
|089E29| dw -11,   8
|089E2D| dw   1, -16
|089E31| dw   5,  -2

; group08
|089E35| dw -20,   4
|089E39| dw -12, -19
|089E3D| dw  -9,  16
|089E41| dw  -5,  -2
|089E45| dw   2,  -9
|089E49| dw  10,   6

;---------------------------------------------------------------------------------------------------

; 1 = offscreen X
.oam_size
; group00
|089E4D| db $02
|089E4E| db $01
|089E4F| db $01
|089E50| db $01
|089E51| db $01
|089E52| db $01

; group01
|089E53| db $00
|089E54| db $00
|089E55| db $00
|089E56| db $00
|089E57| db $01
|089E58| db $01

; group02
|089E59| db $02
|089E5A| db $02
|089E5B| db $02
|089E5C| db $02
|089E5D| db $01
|089E5E| db $01

; group03
|089E5F| db $02
|089E60| db $02
|089E61| db $02
|089E62| db $02
|089E63| db $01
|089E64| db $01

; group04
|089E65| db $02
|089E66| db $02
|089E67| db $02
|089E68| db $02
|089E69| db $02
|089E6A| db $01

; group05
|089E6B| db $02
|089E6C| db $02
|089E6D| db $02
|089E6E| db $02
|089E6F| db $01
|089E70| db $01

; group06
|089E71| db $02
|089E72| db $02
|089E73| db $02
|089E74| db $02
|089E75| db $02
|089E76| db $02

; group07
|089E77| db $02
|089E78| db $02
|089E79| db $02
|089E7A| db $02
|089E7B| db $02
|089E7C| db $02

; group08
|089E7D| db $00
|089E7E| db $00
|089E7F| db $00
|089E80| db $00
|089E81| db $00
|089E82| db $00

;---------------------------------------------------------------------------------------------------

.data_offset
|089E83| db $00
|089E84| db $06
|089E85| db $0C
|089E86| db $12
|089E87| db $18
|089E88| db $1E
|089E89| db $24
|089E8A| db $2A
|089E8B| db $30

;---------------------------------------------------------------------------------------------------

.object_count
|089E8C| db $01
|089E8D| db $04
|089E8E| db $04
|089E8F| db $04
|089E90| db $04
|089E91| db $04
|089E92| db $05
|089E93| db $04
|089E94| db $06
|089E95| db $06
|089E96| db $06

;===================================================================================================

AncillaDraw_Bomb:
|089E97| JSR Ancilla_PrepOAMCoord.adjusted

|089E9A| REP #$20

|089E9C| LDA.w $029E,X
|089E9F| AND.w #$00FF
|089EA2| CMP.w #$0080
|089EA5| BCC .positive_z

|089EA7| ORA.w #$FF00

;---------------------------------------------------------------------------------------------------

.positive_z
|089EAA| STA.b $04
|089EAC| BEQ .not_max_priority

|089EAE| CMP.w #$FFFF
|089EB1| BEQ .not_max_priority

|089EB3| LDA.w $0380,X
|089EB6| AND.w #$00FF
|089EB9| CMP.w #$0003
|089EBC| BEQ .not_max_priority

|089EBE| LDA.w $0280,X
|089EC1| AND.w #$00FF
|089EC4| BEQ .not_max_priority

|089EC6| LDA.w #$3000
|089EC9| STA.b $64

;---------------------------------------------------------------------------------------------------

.not_max_priority
|089ECB| LDA.w #$0000
|089ECE| CLC
|089ECF| ADC.b $04

|089ED1| EOR.w #$FFFF
|089ED4| INC A
|089ED5| CLC
|089ED6| ADC.b $00
|089ED8| STA.b $00

|089EDA| SEP #$20

|089EDC| LDY.w $0C5E,X

|089EDF| LDA.w BombAnimationSteps,Y
|089EE2| TAY

|089EE3| LDA.w BombDraw.data_offset,Y
|089EE6| ASL A
|089EE7| TAY

|089EE8| ASL A
|089EE9| STA.b $04

|089EEB| STZ.b $05
|089EED| STZ.b $0A

|089EEF| LDA.b #$02
|089EF1| STA.b $0B

|089EF3| LDA.w $0C5E,X
|089EF6| BNE .dont_flash

|089EF8| LDA.b #$04
|089EFA| STA.b $0B

|089EFC| LDA.w $039F,X
|089EFF| CMP.b #$20
|089F01| BCS .dont_flash

|089F03| AND.b #$0E
|089F05| STA.b $0B

;---------------------------------------------------------------------------------------------------

.dont_flash
|089F07| PHX
|089F08| PHY

|089F09| LDA.w $0C5E,X
|089F0C| STA.b $08
|089F0E| BNE .continue

|089F10| LDA.w $0385,X
|089F13| BNE .not_deferred

|089F15| LDA.w $0E20
|089F18| CMP.b #$92 ; SPRITE 92
|089F1A| BEQ .outmaneuver_this

|089F1C| TXY
|089F1D| INY
|089F1E| CPY.w $02EC
|089F21| BNE .not_deferred

;---------------------------------------------------------------------------------------------------

.outmaneuver_this
|089F23| LDA.w $0308
|089F26| AND.b #$80
|089F28| BEQ .not_carried

|089F2A| LDA.w $0380,X
|089F2D| CMP.b #$03
|089F2F| BEQ .not_deferred

|089F31| LDA.b $2F
|089F33| BNE .not_deferred

.not_carried
|089F35| LDA.b #$0C
|089F37| JSR AllocateOAMInRegionsBE

|089F3A| BRA .continue

;---------------------------------------------------------------------------------------------------

.not_deferred
|089F3C| LDA.w $0FB3
|089F3F| BEQ .continue

|089F41| LDA.w $0C7C,X
|089F44| BEQ .continue

|089F46| LDA.w $0385,X
|089F49| BNE .hardcode_slot

|089F4B| TXY
|089F4C| INY
|089F4D| CPY.w $02EC
|089F50| BNE .continue

|089F52| LDA.w $0308
|089F55| BPL .continue

;---------------------------------------------------------------------------------------------------

.hardcode_slot
|089F57| REP #$20

; [HARDCODED] oam slots
|089F59| LDA.w #$00D0
|089F5C| CLC
|089F5D| ADC.w #$0800
|089F60| STA.b $90

|089F62| LDA.w #$0034
|089F65| CLC
|089F66| ADC.w #$0A20
|089F69| STA.b $92

|089F6B| SEP #$20

;---------------------------------------------------------------------------------------------------

.continue
|089F6D| LDA.b $00
|089F6F| STA.b $0C

|089F71| LDA.b $01
|089F73| STA.b $0D

|089F75| LDA.b $02
|089F77| STA.b $0E

|089F79| LDA.b $03
|089F7B| STA.b $0F

|089F7D| STZ.b $06

|089F7F| LDX.b $08

|089F81| LDA.w BombDraw.object_count,X
|089F84| STA.b $08

|089F86| PLX

;---------------------------------------------------------------------------------------------------

|089F87| LDY.b #$00
|089F89| JSR AncillaDraw_Explosion

|089F8C| PLX
|089F8D| LDA.w $0C5E,X
|089F90| BNE .exit

|089F92| STZ.b $0A

|089F94| LDA.w $029E,X
|089F97| CMP.b #$02
|089F99| BCC .big_shadow

|089F9B| CMP.b #$FC
|089F9D| BCS .big_shadow

|089F9F| LDA.b #$02
|089FA1| STA.b $0A

;---------------------------------------------------------------------------------------------------

.big_shadow
|089FA3| LDA.w $0380,X
|089FA6| AND.b #$02
|089FA8| BNE .exit

|089FAA| REP #$20

|089FAC| LDA.w $029E,X
|089FAF| AND.w #$00FF
|089FB2| CMP.w #$0080
|089FB5| BCC .dont_invert

|089FB7| ORA.w #$FF00

.dont_invert
|089FBA| CLC
|089FBB| ADC.b $0C

|089FBD| CLC
|089FBE| ADC.w #$0002
|089FC1| STA.b $00

|089FC3| LDA.b $0E
|089FC5| CLC
|089FC6| ADC.w #$FFF8
|089FC9| STA.b $02

|089FCB| SEP #$20

|089FCD| LDA.b $65
|089FCF| STA.b $04

|089FD1| LDX.b $0A
|089FD3| JSR AncillaDraw_Shadow

|089FD6| LDX.w $0FA0

.exit
|089FD9| RTS

;===================================================================================================

Ancilla08_DoorDebris:
|089FDA| JSR AncillaDraw_DoorDebris

|089FDD| DEC.w $03C0,X
|089FE0| BPL .exit

|089FE2| LDA.b #$07
|089FE4| STA.w $03C0,X

|089FE7| INC.w $03C2,X

|089FEA| LDA.w $03C2,X
|089FED| CMP.b #$04
|089FEF| BNE .exit

|089FF1| STZ.w $0C4A,X

.exit
|089FF4| RTS

;===================================================================================================

pool AncillaDraw_DoorDebris

.offset
; group00
|089FF5| dw   4,   7
|089FF9| dw   3,  17

; group01
|089FFD| dw   8,   8
|08A001| dw   7,  17

; group02
|08A005| dw  11,   7
|08A009| dw  10,  16

; group03
|08A00D| dw  16,   7
|08A011| dw  17,  17

; group04
|08A015| dw  20,   7
|08A019| dw  21,  17

; group05
|08A01D| dw  16,   8
|08A021| dw  17,  17

; group06
|08A025| dw  13,   7
|08A029| dw  14,  16

; group07
|08A02D| dw   8,   7
|08A031| dw   7,  17

; group08
|08A035| dw   7,   4
|08A039| dw  17,   3

; group09
|08A03D| dw   8,   8
|08A041| dw  17,   7

; group0A
|08A045| dw   7,  11
|08A049| dw  16,  10

; group0B
|08A04D| dw   7,  16
|08A051| dw  17,  17

; group0C
|08A055| dw   7,  20
|08A059| dw  17,  21

; group0D
|08A05D| dw   8,  16
|08A061| dw  17,  17

; group0E
|08A065| dw   7,  13
|08A069| dw  16,  14

; group0F
|08A06D| dw   7,   8
|08A071| dw  17,   7

;---------------------------------------------------------------------------------------------------

.char_and_prop
; group00
|08A075| db $5E, $20
|08A077| db $5E, $E0

; group01
|08A079| db $5E, $A0
|08A07B| db $5E, $60

; group02
|08A07D| db $4F, $20
|08A07F| db $4F, $20

; group03
|08A081| db $4F, $20
|08A083| db $4F, $20

; group04
|08A085| db $5E, $60
|08A087| db $5E, $60

; group05
|08A089| db $5E, $20
|08A08B| db $5E, $E0

; group06
|08A08D| db $4F, $60
|08A08F| db $4F, $60

; group07
|08A091| db $4F, $60
|08A093| db $4F, $60

; group08
|08A095| db $5E, $20
|08A097| db $5E, $E0

; group09
|08A099| db $5E, $A0
|08A09B| db $5E, $60

; group0A
|08A09D| db $4F, $20
|08A09F| db $4F, $E0

; group0B
|08A0A1| db $4F, $20
|08A0A3| db $4F, $20

; group0C
|08A0A5| db $5E, $60
|08A0A7| db $5E, $60

; group0D
|08A0A9| db $5E, $20
|08A0AB| db $5E, $E0

; group0E
|08A0AD| db $4F, $60
|08A0AF| db $4F, $60

; group0F
|08A0B1| db $4F, $60
|08A0B3| db $4F, $60

endpool

;---------------------------------------------------------------------------------------------------

AncillaDraw_DoorDebris:
|08A0B5| JSR Ancilla_PrepOAMCoord.adjusted

|08A0B8| TXA
|08A0B9| ASL A
|08A0BA| TAY

|08A0BB| REP #$20

|08A0BD| LDA.w $03BA,Y
|08A0C0| SEC
|08A0C1| SBC.b $E8
|08A0C3| STA.b $0C

|08A0C5| LDA.w $03B6,Y
|08A0C8| SEC
|08A0C9| SBC.b $E2
|08A0CB| STA.b $0E

|08A0CD| SEP #$20

|08A0CF| PHX

|08A0D0| STZ.b $06

|08A0D2| LDA.w $03C2,X
|08A0D5| ASL A
|08A0D6| ASL A
|08A0D7| STA.b $04
|08A0D9| STA.b $08

|08A0DB| LDA.w $03BE,X
|08A0DE| ASL A ; x16
|08A0DF| ASL A
|08A0E0| ASL A
|08A0E1| ASL A
|08A0E2| STA.b $0A

|08A0E4| CLC
|08A0E5| ADC.b $04
|08A0E7| TAX

;---------------------------------------------------------------------------------------------------

|08A0E8| LDY.b #$00

.next_object
|08A0EA| PHX

|08A0EB| LDA.b $0A
|08A0ED| ASL A
|08A0EE| STA.b $04

|08A0F0| LDA.b $08
|08A0F2| ASL A
|08A0F3| CLC
|08A0F4| ADC.b $04
|08A0F6| STA.b $04

|08A0F8| LDA.b $06
|08A0FA| ASL A
|08A0FB| ASL A
|08A0FC| CLC
|08A0FD| ADC.b $04
|08A0FF| TAX

|08A100| REP #$20

|08A102| LDA.w .offset+0,X
|08A105| CLC
|08A106| ADC.b $0C
|08A108| STA.b $00

|08A10A| LDA.w .offset+2,X
|08A10D| CLC
|08A10E| ADC.b $0E
|08A110| STA.b $02

|08A112| SEP #$20

|08A114| PLX

|08A115| JSR Ancilla_SetOAM_XY

|08A118| LDA.w .char_and_prop+0,X
|08A11B| STA.b ($90),Y

|08A11D| INY

|08A11E| LDA.w .char_and_prop+1,X
|08A121| AND.b #$C0
|08A123| ORA.b $65
|08A125| STA.b ($90),Y

|08A127| INY

|08A128| PHY
|08A129| TYA

|08A12A| SEC
|08A12B| SBC.b #$04

|08A12D| LSR A
|08A12E| LSR A
|08A12F| TAY

|08A130| LDA.b #$00
|08A132| STA.b ($92),Y

|08A134| PLY
|08A135| JSR AllocateOAMInCustomRegion

|08A138| INX
|08A139| INX

|08A13A| LDA.b $06
|08A13C| INC A
|08A13D| STA.b $06

|08A13F| CMP.b #$02
|08A141| BNE .next_object

;---------------------------------------------------------------------------------------------------

|08A143| PLX

|08A144| RTS

;===================================================================================================

pool Ancilla09_Arrow

.offset_y
|08A145| dw  -4,   2,   0,   0

.offset_x
|08A14D| dw   0,   0,  -4,   4

endpool

;---------------------------------------------------------------------------------------------------

Ancilla09_Arrow:
|08A155| LDA.b $11
|08A157| BEQ .good_submode

|08A159| BRL .proceed_to_draw

.good_submode
|08A15C| DEC.w $0C5E,X

|08A15F| LDA.w $0C5E,X
|08A162| BMI .timer_done

|08A164| CMP.b #$04
|08A166| BCC .start_moving

|08A168| BRL .exit

;---------------------------------------------------------------------------------------------------

.timer_done
|08A16B| LDA.b #$FF
|08A16D| STA.w $0C5E,X

.start_moving
|08A170| JSR AncillaMoveY
|08A173| JSR AncillaMoveX

|08A176| LDA.l $7EF340
|08A17A| AND.b #$04
|08A17C| BEQ .no_sparkle

|08A17E| LDA.b $1A
|08A180| AND.b #$01
|08A182| BNE .no_sparkle

|08A184| PHX

|08A185| JSL AncillaAdd_SilverArrowSparkle

|08A189| PLX

.no_sparkle
|08A18A| LDA.b #$FF
|08A18C| STA.w $03A9,X

|08A18F| JSR Ancilla_CheckSpriteCollision
|08A192| BCS .sprite_collision

|08A194| JSR Ancilla_CheckTileCollision
|08A197| BCS .tile_collision

|08A199| BRL .proceed_to_draw

;---------------------------------------------------------------------------------------------------

.tile_collision
|08A19C| TYA
|08A19D| STA.w $03C5,X

|08A1A0| LDA.w $0C72,X
|08A1A3| AND.b #$03
|08A1A5| ASL A
|08A1A6| TAY

|08A1A7| LDA.w .offset_y+0,Y
|08A1AA| CLC
|08A1AB| ADC.w $0BFA,X
|08A1AE| STA.w $0BFA,X

|08A1B1| LDA.w .offset_y+1,Y
|08A1B4| ADC.w $0C0E,X
|08A1B7| STA.w $0C0E,X

|08A1BA| LDA.w .offset_x+0,Y
|08A1BD| CLC
|08A1BE| ADC.w $0C04,X
|08A1C1| STA.w $0C04,X

|08A1C4| LDA.w .offset_x+1,Y
|08A1C7| ADC.w $0C18,X
|08A1CA| STA.w $0C18,X

|08A1CD| STZ.w $0B88

|08A1D0| BRA .become_stopped

;---------------------------------------------------------------------------------------------------

.sprite_collision
|08A1D2| LDA.w $0C04,X
|08A1D5| SEC
|08A1D6| SBC.w $0D10,Y
|08A1D9| STA.w $0C2C,X

|08A1DC| LDA.w $0BFA,X
|08A1DF| SEC
|08A1E0| SBC.w $0D00,Y
|08A1E3| CLC
|08A1E4| ADC.w $0F70,Y
|08A1E7| STA.w $0C22,X

|08A1EA| TYA
|08A1EB| STA.w $03A9,X

|08A1EE| LDA.w $0E20,Y
|08A1F1| CMP.b #$65 ; SPRITE 65
|08A1F3| BNE .not_arrow_game

|08A1F5| LDA.w $0D90,Y
|08A1F8| CMP.b #$01
|08A1FA| BNE .not_arrow_game_target

|08A1FC| LDA.b #$2D ; SFX3.2D
|08A1FE| STA.w $012F

|08A201| LDA.b #$80
|08A203| STA.w $0E10,Y
|08A206| STA.w $0F10 ; [HARDCODED] sprite slot

|08A209| LDA.w $0B88
|08A20C| CMP.b #$09
|08A20E| BCS .the_99_dream

|08A210| INC.w $0B88

.the_99_dream
|08A213| LDA.w $0B88
|08A216| STA.w $0DA0,Y

|08A219| LDA.w $0ED0,Y
|08A21C| INC A
|08A21D| STA.w $0ED0,Y

|08A220| BRA .become_stopped

;---------------------------------------------------------------------------------------------------

.not_arrow_game_target
|08A222| LDA.b #$04
|08A224| STA.w $0EE0,Y

.not_arrow_game
|08A227| STZ.w $0B88

;---------------------------------------------------------------------------------------------------

.become_stopped
|08A22A| LDA.w $0E20,Y
|08A22D| CMP.b #$1B ; SPRITE 1B
|08A22F| BEQ .not_enemy_arrow

|08A231| LDA.b #$08 ; SFX2.08
|08A233| JSR Ancilla_SFX2_Pan

.not_enemy_arrow
|08A236| STZ.w $0C5E,X

|08A239| LDA.b #$0A ; ANCILLA 0A
|08A23B| STA.w $0C4A,X

|08A23E| LDA.b #$01
|08A240| STA.w $03B1,X

|08A243| LDA.w $03C5,X
|08A246| BEQ .proceed_to_draw

|08A248| REP #$20

|08A24A| LDA.b $E0
|08A24C| SEC
|08A24D| SBC.b $E2
|08A24F| CLC
|08A250| ADC.w $0C04,X
|08A253| STA.b $00

|08A255| LDA.b $E6
|08A257| SEC
|08A258| SBC.b $E8
|08A25A| CLC
|08A25B| ADC.w $0BFA,X
|08A25E| STA.b $02

|08A260| SEP #$20

|08A262| LDA.b $00
|08A264| STA.w $0C04,X

|08A267| LDA.b $02
|08A269| STA.w $0BFA,X

|08A26C| BRA .proceed_to_draw

;---------------------------------------------------------------------------------------------------

.exit
|08A26E| RTS

.proceed_to_draw
|08A26F| BRL AncillaDraw_Arrow

;===================================================================================================

pool AncillaDraw_Arrow

.char_and_prop
; group00
|08A272| db $2B, $A4
|08A274| db $2A, $A4

; group01
|08A276| db $2A, $24
|08A278| db $2B, $24

; group02
|08A27A| db $3D, $64
|08A27C| db $3A, $64

; group03
|08A27E| db $3A, $24
|08A280| db $3D, $24

; group04
|08A282| db $2B, $A4
|08A284| db $FF, $FF

; group05
|08A286| db $2B, $24
|08A288| db $FF, $FF

; group06
|08A28A| db $3D, $64
|08A28C| db $FF, $FF

; group07
|08A28E| db $3D, $24
|08A290| db $FF, $FF

; group08
|08A292| db $3C, $A4
|08A294| db $2C, $A4

; group09
|08A296| db $3C, $A4
|08A298| db $2A, $A4

; group0A
|08A29A| db $3C, $A4
|08A29C| db $2C, $E4

; group0B
|08A29E| db $3C, $A4
|08A2A0| db $2A, $A4

; group0C
|08A2A2| db $2C, $24
|08A2A4| db $3C, $24

; group0D
|08A2A6| db $2A, $24
|08A2A8| db $3C, $24

; group0E
|08A2AA| db $2C, $64
|08A2AC| db $3C, $24

; group0F
|08A2AE| db $2A, $24
|08A2B0| db $3C, $24

; group10
|08A2B2| db $3B, $64
|08A2B4| db $2D, $64

; group11
|08A2B6| db $3B, $64
|08A2B8| db $3A, $E4

; group12
|08A2BA| db $3B, $64
|08A2BC| db $2D, $E4

; group13
|08A2BE| db $3B, $64
|08A2C0| db $3A, $E4

; group14
|08A2C2| db $2D, $24
|08A2C4| db $3B, $24

; group15
|08A2C6| db $3A, $24
|08A2C8| db $3B, $A4

; group16
|08A2CA| db $2D, $A4
|08A2CC| db $3B, $24

; group17
|08A2CE| db $3A, $24
|08A2D0| db $3B, $A4

;---------------------------------------------------------------------------------------------------

.offset
; group00
|08A2D2| dw   0,   0
|08A2D6| dw   8,   0

; group01
|08A2DA| dw   0,   0
|08A2DE| dw   8,   0

; group02
|08A2E2| dw   0,   0
|08A2E6| dw   0,   8

; group03
|08A2EA| dw   0,   0
|08A2EE| dw   0,   8

; group04
|08A2F2| dw   0,   0
|08A2F6| dw   0,   0

; group05
|08A2FA| dw   0,   0
|08A2FE| dw   0,   0

; group06
|08A302| dw   0,   0
|08A306| dw   0,   0

; group07
|08A30A| dw   0,   0
|08A30E| dw   0,   0

; group08
|08A312| dw   0,   1
|08A316| dw   8,   1

; group09
|08A31A| dw   0,   0
|08A31E| dw   8,   0

; group0A
|08A322| dw   0,  -1
|08A326| dw   8,  -2

; group0B
|08A32A| dw   0,   0
|08A32E| dw   8,   0

; group0C
|08A332| dw   0,   1
|08A336| dw   8,   1

; group0D
|08A33A| dw   0,   0
|08A33E| dw   8,   0

; group0E
|08A342| dw   0,  -2
|08A346| dw   8,  -1

; group0F
|08A34A| dw   0,   0
|08A34E| dw   8,   0

; group10
|08A352| dw  -1,   0
|08A356| dw  -1,   8

; group11
|08A35A| dw   0,   0
|08A35E| dw   0,   8

; group12
|08A362| dw   0,   0
|08A366| dw   1,   8

; group13
|08A36A| dw   0,   0
|08A36E| dw   0,   8

; group14
|08A372| dw  -1,   0
|08A376| dw  -1,   8

; group15
|08A37A| dw   0,   0
|08A37E| dw   0,   8

; group16
|08A382| dw   1,   0
|08A386| dw   0,   8

; group17
|08A38A| dw   0,   0
|08A38E| dw   0,   8

endpool

;---------------------------------------------------------------------------------------------------

AncillaDraw_Arrow:
|08A392| JSR Ancilla_PrepOAMCoord.adjusted

|08A395| LDA.w $0280,X
|08A398| BEQ .normal_priority

|08A39A| LDA.b #$30
|08A39C| STA.b $65

.normal_priority
|08A39E| REP #$20

|08A3A0| LDA.b $00
|08A3A2| STA.b $0C

|08A3A4| LDA.b $02
|08A3A6| STA.b $0E
|08A3A8| STA.b $04

|08A3AA| LDA.w $03C5,X
|08A3AD| AND.w #$00FF
|08A3B0| BEQ .regular_collision

;---------------------------------------------------------------------------------------------------

|08A3B2| LDA.b $E8
|08A3B4| SEC
|08A3B5| SBC.b $E6
|08A3B7| CLC
|08A3B8| ADC.b $0C
|08A3BA| STA.b $0C

|08A3BC| LDA.b $E2
|08A3BE| SEC
|08A3BF| SBC.b $E0
|08A3C1| CLC
|08A3C2| ADC.b $0E
|08A3C4| STA.b $0E
|08A3C6| STA.b $04

;---------------------------------------------------------------------------------------------------

.regular_collision
|08A3C8| SEP #$20

|08A3CA| LDA.w $0C5E,X
|08A3CD| STA.b $07

|08A3CF| LDA.w $0C72,X
|08A3D2| AND.b #$FB
|08A3D4| TAY

|08A3D5| LDA.w $0C4A,X
|08A3D8| CMP.b #$0A ; ANCILLA 0A
|08A3DA| BNE .not_halted

|08A3DC| LDA.w $0C5E,X
|08A3DF| AND.b #$08
|08A3E1| BEQ .wiggle

|08A3E3| LDA.b #$01
|08A3E5| BRA .continue

.wiggle
|08A3E7| LDA.w $0C5E,X
|08A3EA| AND.b #$03

;---------------------------------------------------------------------------------------------------

.continue
|08A3EC| STA.b $0A

|08A3EE| TYA
|08A3EF| ASL A
|08A3F0| ASL A
|08A3F1| CLC
|08A3F2| ADC.b #$08
|08A3F4| CLC
|08A3F5| ADC.b $0A
|08A3F7| TAY

|08A3F8| BRA .get_palette

;---------------------------------------------------------------------------------------------------

.not_halted
|08A3FA| LDA.w $0C5E,X
|08A3FD| BMI .get_palette

|08A3FF| TYA
|08A400| ORA.b #$04
|08A402| TAY

;---------------------------------------------------------------------------------------------------

.get_palette
|08A403| PHX

|08A404| TYA
|08A405| ASL A
|08A406| ASL A
|08A407| TAX

|08A408| LDY.b #$02
|08A40A| LDA.l $7EF340

|08A40E| AND.b #$04
|08A410| BNE .silvers

|08A412| LDY.b #$04

.silvers
|08A414| STY.b $74

|08A416| LDY.b #$00
|08A418| STZ.b $06

;---------------------------------------------------------------------------------------------------

.next_object
|08A41A| LDA.w .char_and_prop+0,X
|08A41D| CMP.b #$FF
|08A41F| BEQ .skip

|08A421| STA.b $72

|08A423| PHX

|08A424| TXA
|08A425| ASL A
|08A426| TAX

|08A427| REP #$20

|08A429| LDA.w .offset+0,X
|08A42C| CLC
|08A42D| ADC.b $0C
|08A42F| STA.b $00

|08A431| LDA.w .offset+2,X
|08A434| CLC
|08A435| ADC.b $0E
|08A437| STA.b $02

|08A439| SEP #$20

|08A43B| JSR Ancilla_SetOAM_XY

|08A43E| PLX

|08A43F| LDA.b $72
|08A441| STA.b ($90),Y

|08A443| INY

|08A444| LDA.w .char_and_prop+1,X
|08A447| AND.b #$C1
|08A449| ORA.b $74
|08A44B| ORA.b $65
|08A44D| STA.b ($90),Y

|08A44F| INY

|08A450| PHY

|08A451| TYA
|08A452| SEC
|08A453| SBC.b #$04
|08A455| LSR A
|08A456| LSR A
|08A457| TAY

|08A458| LDA.b #$00
|08A45A| STA.b ($92),Y

|08A45C| PLY

;---------------------------------------------------------------------------------------------------

.skip
|08A45D| INX
|08A45E| INX

|08A45F| INC.b $06

|08A461| LDA.b $06
|08A463| CMP.b #$02
|08A465| BEQ .done

;---------------------------------------------------------------------------------------------------

|08A467| BRL .next_object

.done
|08A46A| PLX

|08A46B| LDY.b #$01

|08A46D| LDA.b ($90),Y
|08A46F| CMP.b #$F0
|08A471| BNE .exit

|08A473| LDY.b #$05

|08A475| LDA.b ($90),Y
|08A477| CMP.b #$F0
|08A479| BNE .exit

|08A47B| BRL Arrow_DeleteSelf

.exit
|08A47E| RTS

;===================================================================================================

Ancilla0A_LodgedArrow:
|08A47F| LDY.w $03A9,X
|08A482| BMI .not_sprite_collided

|08A484| LDA.w $0DD0,Y
|08A487| CMP.b #$09
|08A489| BCC Arrow_DeleteSelf

|08A48B| LDA.w $0F70,Y
|08A48E| BMI Arrow_DeleteSelf

|08A490| LDA.w $0BA0,Y
|08A493| BNE Arrow_DeleteSelf

|08A495| LDA.w $0CAA,Y
|08A498| AND.b #$02
|08A49A| BNE Arrow_DeleteSelf

;---------------------------------------------------------------------------------------------------

|08A49C| STZ.b $00

|08A49E| LDA.w $0C2C,X
|08A4A1| BPL .positive_x

|08A4A3| DEC.b $00

.positive_x
|08A4A5| CLC
|08A4A6| ADC.w $0D10,Y
|08A4A9| STA.w $0C04,X

|08A4AC| LDA.w $0D30,Y
|08A4AF| ADC.b $00
|08A4B1| STA.w $0C18,X

;---------------------------------------------------------------------------------------------------

|08A4B4| STZ.b $00

|08A4B6| LDA.w $0C22,X
|08A4B9| BPL .positive_y

|08A4BB| DEC.b $00

.positive_y
|08A4BD| CLC
|08A4BE| ADC.w $0D00,Y
|08A4C1| PHP

|08A4C2| SEC
|08A4C3| SBC.w $0F70,Y
|08A4C6| STA.w $0BFA,X

|08A4C9| LDA.w $0D20,Y
|08A4CC| SBC.b #$00

|08A4CE| PLP
|08A4CF| ADC.b $00
|08A4D1| STA.w $0C0E,X

;---------------------------------------------------------------------------------------------------

.not_sprite_collided
|08A4D4| LDA.b $11
|08A4D6| BEQ .continue

|08A4D8| BRA .proceed_to_draw

.continue
|08A4DA| DEC.w $03B1,X
|08A4DD| LDA.w $03B1,X
|08A4E0| BNE .proceed_to_draw

|08A4E2| LDA.b #$02
|08A4E4| STA.w $03B1,X

|08A4E7| INC.w $0C5E,X

|08A4EA| LDA.w $0C5E,X
|08A4ED| CMP.b #$09
|08A4EF| BEQ Arrow_DeleteSelf

|08A4F1| AND.b #$08
|08A4F3| BEQ .proceed_to_draw

|08A4F5| LDA.b #$A0
|08A4F7| STA.w $03B1,X

;---------------------------------------------------------------------------------------------------

.proceed_to_draw
|08A4FA| JML AncillaDraw_Arrow

;===================================================================================================

Arrow_DeleteSelf:
|08A4FE| BRL Ancilla_DeleteSelf

;===================================================================================================

Ancilla0B_IceRodShot:
|08A501| LDA.b $11
|08A503| BEQ .continue

|08A505| BRA .generate_sparkle

.continue
|08A507| DEC.w $03B1,X
|08A50A| BPL .delay_a

|08A50C| LDA.w $0C5E,X
|08A50F| INC A
|08A510| STA.w $0C5E,X

|08A513| AND.b #$FE
|08A515| BEQ .delay_b

|08A517| LDA.b #$01
|08A519| STA.w $0C54,X

|08A51C| LDA.w $0C5E,X
|08A51F| AND.b #$07
|08A521| ORA.b #$04
|08A523| STA.w $0C5E,X

;---------------------------------------------------------------------------------------------------

.delay_b
|08A526| LDA.b #$03
|08A528| STA.w $03B1,X

;---------------------------------------------------------------------------------------------------

.delay_a
|08A52B| LDA.w $0C54,X
|08A52E| BEQ .generate_sparkle

|08A530| JSR Ancilla_KillOffscreen

|08A533| JSR AncillaMoveY
|08A536| JSR AncillaMoveX

|08A539| JSR Ancilla_CheckSpriteCollision
|08A53C| BCS .sprite_collision

|08A53E| JSR Ancilla_CheckTileCollision
|08A541| BCC .generate_sparkle

.sprite_collision
|08A543| LDA.b #$11 ; ANCILLA 11
|08A545| STA.w $0C4A,X

|08A548| TAY

|08A549| LDA.w AncillaObjectAllocation,Y
|08A54C| STA.w $0C90,X

|08A54F| STZ.w $0C5E,X

|08A552| LDA.b #$04
|08A554| STA.w $03B1,X

.generate_sparkle
|08A557| BRL AncillaAdd_IceRodSparkle

;===================================================================================================

Ancilla11_IceRodWallHit:
|08A55A| DEC.w $03B1,X
|08A55D| BPL .delay

|08A55F| LDA.b #$07
|08A561| STA.w $03B1,X

|08A564| INC.w $0C5E,X

|08A567| LDA.w $0C5E,X
|08A56A| CMP.b #$02
|08A56C| BNE .delay

|08A56E| STZ.w $0C4A,X

|08A571| RTS

.delay
|08A572| BRL AncillaDraw_IceRodWallHit

;===================================================================================================

pool AncillaDraw_IceRodWallHit

.char_and_prop
; group00
|08A575| db $CF, $24
|08A577| db $CF, $24
|08A579| db $CF, $24
|08A57B| db $CF, $24

; group01
|08A57D| db $DF, $24
|08A57F| db $DF, $24
|08A581| db $DF, $24
|08A583| db $DF, $24

.offset
; group00
|08A585| db   0,   0
|08A587| db   0,   8
|08A589| db   8,   0
|08A58B| db   8,   8

; group01
|08A58D| db  -8,  -8
|08A58F| db  -8,  16
|08A591| db  16,  -8
|08A593| db  16,  16

endpool

;---------------------------------------------------------------------------------------------------

AncillaDraw_IceRodWallHit:
|08A595| JSR Ancilla_PrepOAMCoord

|08A598| PHX

|08A599| LDA.w $0C90,X
|08A59C| JSR AllocateOAMInRegionsADF

|08A59F| LDA.w $0C5E,X
|08A5A2| ASL A
|08A5A3| ASL A
|08A5A4| ASL A
|08A5A5| TAX

;---------------------------------------------------------------------------------------------------

|08A5A6| LDY.b #$00

|08A5A8| STZ.b $04

.next_object
|08A5AA| REP #$20

|08A5AC| LDA.w .offset+0,X
|08A5AF| AND.w #$00FF
|08A5B2| CMP.w #$0080
|08A5B5| BCC .x_positive

|08A5B7| ORA.w #$FF00

.x_positive
|08A5BA| CLC
|08A5BB| ADC.b $00
|08A5BD| STA.b $08

|08A5BF| LDA.w .offset+1,X
|08A5C2| AND.w #$00FF
|08A5C5| CMP.w #$0080
|08A5C8| BCC .y_positive

|08A5CA| ORA.w #$FF00

.y_positive
|08A5CD| CLC
|08A5CE| ADC.b $02
|08A5D0| STA.b $0A

;---------------------------------------------------------------------------------------------------

|08A5D2| SEP #$20

|08A5D4| PHX
|08A5D5| LDX.b #$F0

|08A5D7| LDA.b $09
|08A5D9| BNE .off_screen

|08A5DB| LDA.b $0B
|08A5DD| BNE .off_screen

|08A5DF| LDA.b $0A
|08A5E1| STA.b ($90),Y

|08A5E3| LDA.b $08
|08A5E5| CMP.b #$F0
|08A5E7| BCS .off_screen

|08A5E9| TAX

.off_screen
|08A5EA| INY

|08A5EB| TXA
|08A5EC| STA.b ($90),Y

|08A5EE| INY

|08A5EF| PLX
|08A5F0| LDA.w .char_and_prop+0,X
|08A5F3| STA.b ($90),Y

|08A5F5| INY

|08A5F6| LDA.w .char_and_prop+1,X
|08A5F9| AND.b #$CF
|08A5FB| ORA.b $65
|08A5FD| STA.b ($90),Y

|08A5FF| INY
|08A600| PHY

|08A601| TYA
|08A602| SEC
|08A603| SBC.b #$04
|08A605| LSR A
|08A606| LSR A
|08A607| TAY

|08A608| LDA.b #$00
|08A60A| STA.b ($92),Y

|08A60C| PLY

|08A60D| JSR AllocateOAMInCustomRegion

|08A610| INX
|08A611| INX

|08A612| INC.b $04

|08A614| LDA.b $04
|08A616| CMP.b #$04
|08A618| BEQ .done

|08A61A| BRL .next_object

;---------------------------------------------------------------------------------------------------

.done
|08A61D| PLX

|08A61E| LDY.b #$01
|08A620| LDA.b ($90),Y

|08A622| CMP.b #$F0
|08A624| BNE .exit

|08A626| LDY.b #$05

|08A628| LDA.b ($90),Y
|08A62A| CMP.b #$F0
|08A62C| BNE .exit

|08A62E| STZ.w $0C4A,X

.exit
|08A631| RTS

;===================================================================================================

Ancilla33_BlastWallExplosion:
|08A632| LDA.b $11
|08A634| BNE .proceed_to_draw

|08A636| LDA.l $7F0000,X
|08A63A| BEQ .inactive_component

|08A63C| LDA.l $7F0008,X
|08A640| DEC A
|08A641| STA.l $7F0008,X
|08A645| BNE .proceed_to_draw

|08A647| LDA.l $7F0000,X
|08A64B| INC A
|08A64C| STA.l $7F0000,X
|08A650| BEQ .no_fireball

|08A652| CMP.b #$09
|08A654| BCS .no_fireball

;---------------------------------------------------------------------------------------------------

|08A656| PHX
|08A657| TXA

|08A658| ASL A
|08A659| ASL A
|08A65A| STA.b $04

|08A65C| LDY.b #$0A
|08A65E| LDA.b #$32 ; ANCILLA 32
|08A660| JSL AncillaAdd_BlastWallFireball

|08A664| PLX

;---------------------------------------------------------------------------------------------------

.no_fireball
|08A665| LDA.l $7F0000,X
|08A669| CMP.b #$0B
|08A66B| BNE .dont_reset_state

|08A66D| LDA.b #$00
|08A66F| STA.l $7F0000,X
|08A673| STA.l $7F0008,X

|08A677| BRA .proceed_to_draw

.dont_reset_state
|08A679| TAY

|08A67A| LDA.b #$03
|08A67C| STA.l $7F0008,X

.proceed_to_draw
|08A680| BRL AncillaDraw_BlastWallExplosion

;---------------------------------------------------------------------------------------------------

.inactive_component
|08A683| TXA
|08A684| EOR.b #$01
|08A686| TAX

|08A687| LDA.l $7F0000,X
|08A68B| CMP.b #$06
|08A68D| BNE .proceed_to_draw

|08A68F| LDA.l $7F0008,X
|08A693| CMP.b #$02
|08A695| BNE .proceed_to_draw

|08A697| LDX.w $0380

|08A69A| LDA.w $0C5E
|08A69D| INC A
|08A69E| CMP.b #$07
|08A6A0| BCC .reset_inactive_component

|08A6A2| BRL AncillaDraw_BlastWallExplosion

;---------------------------------------------------------------------------------------------------

.reset_inactive_component
|08A6A5| STA.w $0C5E

|08A6A8| LDA.b #$01
|08A6AA| STA.l $7F0000,X

|08A6AE| LDA.b #$03
|08A6B0| STA.l $7F0008,X

|08A6B4| PHX

;---------------------------------------------------------------------------------------------------

|08A6B5| LDA.b #$03
|08A6B7| STA.b $06

.next_position
|08A6B9| STZ.b $00
|08A6BB| STZ.b $01
|08A6BD| STZ.b $02
|08A6BF| STZ.b $03

|08A6C1| STX.b $04

|08A6C3| LDX.b #$00

|08A6C5| LDA.l $7F001C
|08A6C9| CMP.b #$04
|08A6CB| BCS .diverge_v

|08A6CD| LDX.b #$02

.diverge_v
|08A6CF| LDA.b #$0D
|08A6D1| STA.b $00,X

|08A6D3| LDA.b $06
|08A6D5| AND.b #$02
|08A6D7| BEQ .dont_invert

|08A6D9| LDA.b $00,X
|08A6DB| EOR.b #$FF
|08A6DD| INC A
|08A6DE| STA.b $00,X

|08A6E0| LDA.b #$FF
|08A6E2| STA.b $01,X

.dont_invert
|08A6E4| LDA.b $04
|08A6E6| ASL A
|08A6E7| ASL A
|08A6E8| ASL A
|08A6E9| STA.b $08

|08A6EB| LDA.b $06
|08A6ED| ASL A
|08A6EE| CLC
|08A6EF| ADC.b $08
|08A6F1| TAX

|08A6F2| REP #$20

|08A6F4| LDA.l $7F0020,X
|08A6F8| CLC
|08A6F9| ADC.b $00
|08A6FB| STA.l $7F0020,X

|08A6FF| LDA.l $7F0030,X
|08A703| CLC
|08A704| ADC.b $02
|08A706| STA.l $7F0030,X

|08A70A| SEC
|08A70B| SBC.b $E2
|08A70D| STA.b $72

|08A70F| SEP #$20

|08A711| LDA.b $73
|08A713| BNE .no_sfx

|08A715| LDA.b $72
|08A717| JSR Ancilla_SetPanRelativeCoordinates
|08A71A| ORA.b #$0C ; SFX2.0C
|08A71C| STA.w $012E

.no_sfx
|08A71F| LDX.b $04

|08A721| DEC.b $06
|08A723| BPL .next_position

|08A725| PLX

;===================================================================================================

AncillaDraw_BlastWallExplosion:
|08A726| LDX.w $0380

|08A729| LDA.l $7F0000,X
|08A72D| BEQ .dont_draw

|08A72F| LDY.b #$07

|08A731| CPX.b #$01
|08A733| BEQ .next_object

|08A735| LDY.b #$03

.next_object
|08A737| PHY
|08A738| PHX

|08A739| TYA
|08A73A| ASL A
|08A73B| TAX

|08A73C| REP #$20

|08A73E| LDA.l $7F0020,X
|08A742| STA.b $00

|08A744| LDA.l $7F0030,X
|08A748| STA.b $02

|08A74A| SEP #$20

|08A74C| PLX
|08A74D| PLY

|08A74E| JSR AncillaDraw_BlastWallBlast

|08A751| SEP #$20

|08A753| DEY
|08A754| TYA
|08A755| AND.b #$03
|08A757| CMP.b #$03
|08A759| BNE .next_object

;---------------------------------------------------------------------------------------------------

.dont_draw
|08A75B| LDA.w $0C5E
|08A75E| CMP.b #$06
|08A760| BNE Ancilla_RestoreIndex

|08A762| LDX.b #$01

; Look for an active component
.next_check
|08A764| LDA.l $7F0000,X
|08A768| BNE Ancilla_RestoreIndex

|08A76A| DEX
|08A76B| BPL .next_check

; Die if there are none
|08A76D| STZ.w $0C4A
|08A770| STZ.w $0C4B

|08A773| STZ.w $0112

;===================================================================================================
; Just gets the index back...
; This is 100% unnecessary and a waste of cycles and memory
;===================================================================================================
Ancilla_RestoreIndex:
|08A776| LDX.w $0FA0

|08A779| RTS

;===================================================================================================

AncillaDraw_BlastWallBlast:
|08A77A| PHX
|08A77B| PHY

|08A77C| LDA.b #$30
|08A77E| STA.b $65
|08A780| STZ.b $64

|08A782| LDA.l $7F0000,X
|08A786| TAY

|08A787| LDA.w BombDraw.object_count,Y
|08A78A| STA.b $08

|08A78C| LDA.w BombAnimationSteps,Y
|08A78F| TAY

|08A790| LDA.w BombDraw.data_offset,Y
|08A793| ASL A
|08A794| TAX

|08A795| ASL A
|08A796| STA.b $04
|08A798| STZ.b $05

|08A79A| STZ.b $0A

|08A79C| LDA.b #$32
|08A79E| STA.b $0B

|08A7A0| STZ.b $06
|08A7A2| STZ.b $07

|08A7A4| LDA.b #$18

|08A7A6| LDY.w $0FB3
|08A7A9| BEQ .use_region_a

|08A7AB| JSL AllocateOAMInRegionD

|08A7AF| BRA .continue

.use_region_a
|08A7B1| JSL AllocateOAMInRegionA

;---------------------------------------------------------------------------------------------------

.continue
|08A7B5| REP #$20

|08A7B7| LDA.b $00
|08A7B9| SEC
|08A7BA| SBC.b $E8
|08A7BC| STA.b $0C

|08A7BE| LDA.b $02
|08A7C0| SEC
|08A7C1| SBC.b $E2
|08A7C3| STA.b $0E

|08A7C5| SEP #$20

|08A7C7| LDY.b #$00
|08A7C9| JSR AncillaDraw_Explosion

|08A7CC| PLY
|08A7CD| PLX

|08A7CE| RTS

;===================================================================================================

AncillaDraw_Explosion:
.next_object
|08A7CF| LDA.w BombDraw.char_and_prop,X
|08A7D2| CMP.b #$FF
|08A7D4| BEQ .skip

|08A7D6| STX.b $72

|08A7D8| REP #$20

|08A7DA| STZ.b $74

|08A7DC| LDA.b $06
|08A7DE| ASL A
|08A7DF| ASL A
|08A7E0| CLC
|08A7E1| ADC.b $04
|08A7E3| TAX

|08A7E4| LDA.w BombDraw.offset+0,X
|08A7E7| CLC
|08A7E8| ADC.b $0C
|08A7EA| STA.b $00

|08A7EC| LDA.w BombDraw.offset+2,X
|08A7EF| CLC
|08A7F0| ADC.b $0E
|08A7F2| STA.b $02

|08A7F4| SEP #$20

|08A7F6| LDX.b $72

|08A7F8| JSR Ancilla_SetOAM_XY_safe

|08A7FB| LDA.w BombDraw.char_and_prop+0,X
|08A7FE| STA.b ($90),Y

|08A800| INY

|08A801| LDA.w BombDraw.char_and_prop+1,X
|08A804| AND.b #$C1
|08A806| ORA.b $65
|08A808| ORA.b $0B
|08A80A| STA.b ($90),Y

|08A80C| INY
|08A80D| STY.b $72
|08A80F| STX.b $73

|08A811| TYA
|08A812| SEC
|08A813| SBC.b #$04
|08A815| LSR A
|08A816| LSR A
|08A817| TAY

|08A818| TXA
|08A819| LSR A
|08A81A| TAX

|08A81B| LDA.w BombDraw.oam_size,X
|08A81E| ORA.b $75

|08A820| STA.b ($92),Y

|08A822| LDX.b $73
|08A824| LDY.b $72

;---------------------------------------------------------------------------------------------------

.skip
|08A826| INX
|08A827| INX

|08A828| INC.b $06

|08A82A| LDA.b $06
|08A82C| CMP.b $08
|08A82E| BNE .next_object

|08A830| RTS

;===================================================================================================
; Ancilla 14 points here, but it is clearly unused.
; If disassembled as code, 4 erroneous instructions are executed before converging at $08:A83A.
;---------------------------------------------------------------------------------------------------
; 08A831: LDY.w $08A5AE ; Y=0xA5
; 08A834: ORA.b ($D0),Y
; 08A836: WDM #$DE
; 08A838: LDA.b ($03),Y
;===================================================================================================
JumpSplash_char:
|08A831| db $AC, $AE

;---------------------------------------------------------------------------------------------------

Ancilla15_JumpSplash:
|08A833| LDA.b $11
|08A835| BNE AncillaDraw_JumpSplash

|08A837| DEC.w $03B1,X
|08A83A| BPL .delay

|08A83C| STZ.w $03B1,X

|08A83F| LDA.b #$01
|08A841| STA.w $0C5E,X

.delay
|08A844| LDA.w $0C5E,X
|08A847| BEQ AncillaDraw_JumpSplash

|08A849| LDA.w $0C22,X
|08A84C| CLC
|08A84D| ADC.b #$FC
|08A84F| STA.w $0C22,X
|08A852| STA.w $0C2C,X

|08A855| CMP.b #$E8
|08A857| BCS .speed_not_maxed

|08A859| STZ.w $0C4A,X

|08A85C| LDA.w $02E0
|08A85F| BNE .am_bunny

|08A861| LDA.b $5D
|08A863| CMP.b #$04 ; LINKSTATE 04
|08A865| BNE .exit

.am_bunny
|08A867| LDA.w $0345
|08A86A| BEQ .exit

|08A86C| PHX
|08A86D| JSL CheckAbilityToSwim
|08A871| PLX

.exit
|08A872| RTS

;---------------------------------------------------------------------------------------------------

.speed_not_maxed
|08A873| JSR AncillaMoveY
|08A876| JSR AncillaMoveX

;===================================================================================================

AncillaDraw_JumpSplash:
|08A879| JSR Ancilla_PrepOAMCoord

|08A87C| LDA.w $0C04,X
|08A87F| STA.b $06

|08A881| LDA.w $0C18,X
|08A884| STA.b $07

|08A886| REP #$20

|08A888| LDA.b $22
|08A88A| SEC
|08A88B| SBC.b $06
|08A88D| STA.b $08

|08A88F| LDA.b $22
|08A891| CLC
|08A892| ADC.b $08
|08A894| SEC
|08A895| SBC.b $E2
|08A897| STA.b $08

|08A899| LDA.b $06
|08A89B| CLC
|08A89C| ADC.w #$000C
|08A89F| SEC
|08A8A0| SBC.b $E2
|08A8A2| STA.b $06

|08A8A4| SEP #$20

|08A8A6| PHX

|08A8A7| LDA.w $0C5E,X
|08A8AA| STA.b $0A

|08A8AC| TAX

|08A8AD| LDA.b #$01
|08A8AF| STA.b $72

|08A8B1| LDY.b #$00
|08A8B3| STY.b $0C

;---------------------------------------------------------------------------------------------------

.next_object
|08A8B5| JSR Ancilla_SetOAM_XY

|08A8B8| LDA.w JumpSplash_char,X
|08A8BB| STA.b ($90),Y

|08A8BD| INY

|08A8BE| LDA.b #$24
|08A8C0| ORA.b $0C
|08A8C2| STA.b ($90),Y

|08A8C4| INY
|08A8C5| PHY

|08A8C6| TYA
|08A8C7| SEC
|08A8C8| SBC.b #$04
|08A8CA| LSR A
|08A8CB| LSR A
|08A8CC| TAY

|08A8CD| LDA.b #$02
|08A8CF| STA.b ($92),Y

|08A8D1| PLY

|08A8D2| JSR AllocateOAMInCustomRegion

|08A8D5| LDA.b $08
|08A8D7| STA.b $02

|08A8D9| LDA.b #$40
|08A8DB| STA.b $0C

|08A8DD| DEC.b $72
|08A8DF| BPL .next_object

;---------------------------------------------------------------------------------------------------

|08A8E1| LDA.b $06
|08A8E3| STA.b $02

|08A8E5| JSR Ancilla_SetOAM_XY

|08A8E8| LDA.b #$C0
|08A8EA| STA.b ($90),Y

|08A8EC| INY
|08A8ED| LDA.b #$24
|08A8EF| STA.b ($90),Y

|08A8F1| INY
|08A8F2| TYA

|08A8F3| SEC
|08A8F4| SBC.b #$04

|08A8F6| LSR A
|08A8F7| LSR A
|08A8F8| TAY

|08A8F9| LDA.b #$02
|08A8FB| STA.b ($92),Y

|08A8FD| LDA.b $0A
|08A8FF| CMP.b #$01
|08A901| BNE .exit

|08A903| STA.b ($92),Y

.exit
|08A905| PLX

|08A906| RTS

;===================================================================================================
; Ancilla 25 points here, but it is clearly unused.
; If disassembled as code, either 1 erroneous instruction is executed
; before converging at $08:A909, or the game crashes.
;---------------------------------------------------------------------------------------------------
; 08A907: BCC $08A89A
;---------------------------------------------------------------------------------------------------
; carry set:
; fine
;---------------------------------------------------------------------------------------------------
; carry clear:
; 08A89A: ASL.b $18
; 08A89C: ADC.b #$0C
; 08A89E: BRK #$38
;---------------------------------------------------------------------------------------------------
HitStar_char:
|08A907| db $90, $91

;---------------------------------------------------------------------------------------------------

Ancilla16_HitStars:
|08A909| DEC.w $039F,X
|08A90C| BMI .continue

|08A90E| RTS

.continue
|08A90F| STZ.w $039F,X

|08A912| LDA.b $11
|08A914| BNE AncillaDraw_HitStars

|08A916| DEC.w $03B1,X
|08A919| BPL .delay

|08A91B| STZ.w $03B1,X

|08A91E| LDA.b #$01
|08A920| STA.w $0C5E,X

.delay
|08A923| LDA.w $0C5E,X
|08A926| BEQ AncillaDraw_HitStars

|08A928| LDA.w $0C22,X
|08A92B| CLC
|08A92C| ADC.b #$FC
|08A92E| STA.w $0C22,X
|08A931| STA.w $0C2C,X

|08A934| CMP.b #$E8
|08A936| BCS .dont_die

|08A938| STZ.w $0C4A,X

|08A93B| RTS

.dont_die
|08A93C| JSR AncillaMoveY
|08A93F| JSR AncillaMoveX

;===================================================================================================

AncillaDraw_HitStars:
|08A942| JSR Ancilla_PrepOAMCoord

|08A945| LDA.w $0C04,X
|08A948| STA.b $06

|08A94A| LDA.w $0C18,X
|08A94D| STA.b $07

|08A94F| LDA.w $038A,X
|08A952| STA.b $72

|08A954| LDA.w $038F,X
|08A957| STA.b $73

|08A959| REP #$20

|08A95B| LDA.b $72
|08A95D| SEC
|08A95E| SBC.b $06
|08A960| STA.b $08

|08A962| LDA.b $72
|08A964| CLC
|08A965| ADC.b $08
|08A967| SEC
|08A968| SBC.w #$0008
|08A96B| SEC
|08A96C| SBC.b $E2
|08A96E| STA.b $08

;---------------------------------------------------------------------------------------------------

|08A970| SEP #$20

|08A972| LDA.w $0C54,X
|08A975| CMP.b #$02
|08A977| BNE .leave_allocation_alone

|08A979| LDA.b #$08
|08A97B| JSR AllocateOAMInRegionsBE

.leave_allocation_alone
|08A97E| PHX

|08A97F| LDA.b #$01
|08A981| STA.b $72

|08A983| LDA.w $0C5E,X
|08A986| TAX

|08A987| LDY.b #$00
|08A989| STY.b $73

.next_object
|08A98B| JSR Ancilla_SetOAM_XY

|08A98E| LDA.w HitStar_char,X
|08A991| STA.b ($90),Y

|08A993| INY

|08A994| LDA.b #$04
|08A996| ORA.b $65
|08A998| ORA.b $73
|08A99A| STA.b ($90),Y

|08A99C| INY

|08A99D| PHY
|08A99E| TYA

|08A99F| SEC
|08A9A0| SBC.b #$04

|08A9A2| LSR A
|08A9A3| LSR A
|08A9A4| TAY

|08A9A5| LDA.b #$00
|08A9A7| STA.b ($92),Y

|08A9A9| PLY

|08A9AA| JSR HitStars_UpdateOAMBufferPosition

|08A9AD| LDA.b #$40
|08A9AF| STA.b $73

|08A9B1| LDA.b $08
|08A9B3| STA.b $02

|08A9B5| DEC.b $72
|08A9B7| BPL .next_object

;---------------------------------------------------------------------------------------------------

|08A9B9| PLX

|08A9BA| RTS

;===================================================================================================

pool Ancilla17_ShovelDirt

.offset
; group00
|08A9BB| dw  18, -13
|08A9BF| dw  -9,   4

; group01
|08A9C3| dw  18,  13
|08A9C7| dw  -9, -11

.char
|08A9CB| db $40
|08A9CC| db $50

endpool

;---------------------------------------------------------------------------------------------------

Ancilla17_ShovelDirt:
|08A9CD| JSR Ancilla_PrepOAMCoord

|08A9D0| LDA.w $0C68,X
|08A9D3| BNE .dont_terminate

|08A9D5| LDA.b #$08
|08A9D7| STA.w $0C68,X

|08A9DA| INC.w $0C5E,X

|08A9DD| LDA.w $0C5E,X
|08A9E0| CMP.b #$02
|08A9E2| BNE .dont_terminate

|08A9E4| STZ.w $0C4A,X

|08A9E7| RTS

;---------------------------------------------------------------------------------------------------

.dont_terminate
|08A9E8| LDA.w $0C5E,X
|08A9EB| STA.b $0A

|08A9ED| ASL A
|08A9EE| ASL A
|08A9EF| STA.b $08

|08A9F1| LDY.b #$00

|08A9F3| LDA.b $2F
|08A9F5| CMP.b #$04
|08A9F7| BEQ .facing_left

|08A9F9| LDY.b #$08

.facing_left
|08A9FB| TYA
|08A9FC| CLC
|08A9FD| ADC.b $08
|08A9FF| TAY

;---------------------------------------------------------------------------------------------------

|08AA00| REP #$20

|08AA02| LDA.w .offset+0,Y
|08AA05| CLC
|08AA06| ADC.b $00
|08AA08| STA.b $00

|08AA0A| LDA.w .offset+2,Y
|08AA0D| CLC
|08AA0E| ADC.b $02
|08AA10| STA.b $02

|08AA12| CLC
|08AA13| ADC.w #$0008
|08AA16| STA.b $04

|08AA18| SEP #$20

|08AA1A| PHX

;---------------------------------------------------------------------------------------------------

|08AA1B| LDY.b #$00
|08AA1D| STY.b $72

.next_object
|08AA1F| JSR Ancilla_SetOAM_XY

|08AA22| LDX.b $0A

|08AA24| LDA.w .char,X
|08AA27| CLC
|08AA28| ADC.b $72
|08AA2A| STA.b ($90),Y

|08AA2C| INY

|08AA2D| LDA.b #$04
|08AA2F| ORA.b $65
|08AA31| STA.b ($90),Y

|08AA33| INY
|08AA34| PHY

|08AA35| TYA
|08AA36| SEC
|08AA37| SBC.b #$04
|08AA39| LSR A
|08AA3A| LSR A
|08AA3B| TAY

|08AA3C| LDA.b #$00
|08AA3E| STA.b ($92),Y

|08AA40| PLY

|08AA41| JSR AllocateOAMInCustomRegion

|08AA44| LDA.b $04
|08AA46| STA.b $02

|08AA48| LDA.b $05
|08AA4A| STA.b $03

|08AA4C| INC.b $72

|08AA4E| LDA.b $72
|08AA50| CMP.b #$02
|08AA52| BNE .next_object

;---------------------------------------------------------------------------------------------------

|08AA54| PLX

|08AA55| RTS

;===================================================================================================

pool AncillaDraw_BlastWallFireball

.char
|08AA56| db $9D, $9C, $8D

endpool

;===================================================================================================

Ancilla32_BlastWallFireball:
|08AA59| LDA.b $11
|08AA5B| BNE AncillaDraw_BlastWallFireball

|08AA5D| LDA.w $0C5E,X
|08AA60| CLC
|08AA61| ADC.b #$02
|08AA63| STA.w $0C5E,X

|08AA66| CLC
|08AA67| ADC.w $0C22,X
|08AA6A| STA.w $0C22,X

|08AA6D| JSR AncillaMoveY
|08AA70| JSR AncillaMoveX

|08AA73| LDA.l $7F0040,X
|08AA77| DEC A
|08AA78| STA.l $7F0040,X

|08AA7C| BPL AncillaDraw_BlastWallFireball

|08AA7E| STZ.w $0C4A,X

|08AA81| RTS

;===================================================================================================

AncillaDraw_BlastWallFireball:
|08AA82| LDA.b #$04

|08AA84| LDY.w $0FB3
|08AA87| BEQ .use_region_a

|08AA89| JSL AllocateOAMInRegionD
|08AA8D| BRA .continue

.use_region_a
|08AA8F| JSL AllocateOAMInRegionA

;---------------------------------------------------------------------------------------------------

.continue
|08AA93| LDY.b #$00

|08AA95| LDA.l $7F0040,X
|08AA99| STA.b $06

|08AA9B| AND.b #$08
|08AA9D| BNE .proceed_with_character

|08AA9F| LDY.b #$01

|08AAA1| LDA.b $06
|08AAA3| AND.b #$04
|08AAA5| BNE .proceed_with_character

|08AAA7| LDY.b #$02

.proceed_with_character
|08AAA9| LDA.w .char,Y
|08AAAC| STA.b $06

|08AAAE| JSR Ancilla_PrepOAMCoord

|08AAB1| LDY.b #$00
|08AAB3| JSR Ancilla_SetOAM_XY

|08AAB6| LDA.b $06
|08AAB8| STA.b ($90),Y

|08AABA| INY
|08AABB| LDA.b #$22
|08AABD| STA.b ($90),Y

|08AABF| LDA.b #$00
|08AAC1| STA.b ($92)

|08AAC3| RTS

;===================================================================================================

Ancilla18_EtherSpell:
|08AAC4| LDA.b $11
|08AAC6| BEQ .submode_fine

|08AAC8| BRL .exit

;---------------------------------------------------------------------------------------------------

.submode_fine
|08AACB| LDA.w $0C54,X
|08AACE| BEQ .done_palette_flash

|08AAD0| LDA.w $031D
|08AAD3| BNE .lightning_descended

|08AAD5| INC.w $0BF0,X

|08AAD8| LDA.w $0BF0,X
|08AADB| AND.b #$04
|08AADD| BEQ .oversaturate

|08AADF| BRA .restore

;---------------------------------------------------------------------------------------------------

.lightning_descended
|08AAE1| LDA.w $031D
|08AAE4| CMP.b #$0B
|08AAE6| BNE .restore

;---------------------------------------------------------------------------------------------------

.oversaturate
|08AAE8| PHX

|08AAE9| JSL RefreshEquipmentPalettes_zap
|08AAED| JSL PaletteFilter_Oversaturation

|08AAF1| PLX

|08AAF2| BRA .done_palette_flash

;---------------------------------------------------------------------------------------------------

.restore
|08AAF4| PHX

|08AAF5| JSL RefreshEquipmentPalettes_sword_and_mail
|08AAF9| JSL RestorePalettesAfterFlash

|08AAFD| PLX

;---------------------------------------------------------------------------------------------------

.done_palette_flash
|08AAFE| LDA.w $0C54,X
|08AB01| CMP.b #$02
|08AB03| BNE .check_ball_timer

|08AB05| DEC.w $03B1,X
|08AB08| BPL .delay

|08AB0A| LDA.b #$02
|08AB0C| STA.w $03B1,X

|08AB0F| LDA.w $0C5E,X
|08AB12| INC A
|08AB13| STA.w $0C5E,X

|08AB16| CMP.b #$02
|08AB18| BNE .delay

|08AB1A| DEC.w $0C5E,X

|08AB1D| LDA.b #$10
|08AB1F| STA.w $0C2C,X

|08AB22| LDA.b #$03
|08AB24| STA.w $0C54,X

;---------------------------------------------------------------------------------------------------

.delay
|08AB27| LDA.w $0C2C,X
|08AB2A| CLC
|08AB2B| ADC.b #$01
|08AB2D| STA.w $0C2C,X

|08AB30| BRL EtherSpell_HandleRadialSpin

;---------------------------------------------------------------------------------------------------

.check_ball_timer
|08AB33| DEC.w $03B1,X
|08AB36| BPL .dont_swap_char

|08AB38| LDA.b #$02
|08AB3A| STA.w $03B1,X

|08AB3D| LDA.w $0C5E,X
|08AB40| EOR.b #$01
|08AB42| STA.w $0C5E,X

;---------------------------------------------------------------------------------------------------

.dont_swap_char
|08AB45| LDA.w $0C54,X
|08AB48| BEQ .lightning

|08AB4A| CMP.b #$01
|08AB4C| BEQ .pulsing_orb

|08AB4E| CMP.b #$03
|08AB50| BEQ .do_spin

|08AB52| CMP.b #$04
|08AB54| BEQ .dissipate

;---------------------------------------------------------------------------------------------------

|08AB56| LDA.w $0C2C,X
|08AB59| CLC
|08AB5A| ADC.b #$10
|08AB5C| BPL .radial_speed_not_maxed

|08AB5E| LDA.b #$7F

.radial_speed_not_maxed
|08AB60| STA.w $0C2C,X
|08AB63| BRL .do_spin

;---------------------------------------------------------------------------------------------------

.lightning
|08AB66| BRA EtherSpell_HandleLightningStroke

;---------------------------------------------------------------------------------------------------

.pulsing_orb
|08AB68| BRL EtherSpell_HandleOrbPulse

;---------------------------------------------------------------------------------------------------

.dissipate
|08AB6B| LDA.l $7F5812
|08AB6F| DEC A
|08AB70| STA.l $7F5812

|08AB74| BNE .do_spin

|08AB76| LDA.b #$05
|08AB78| STA.w $0C54,X

;---------------------------------------------------------------------------------------------------

.do_spin
|08AB7B| BRL EtherSpell_HandleRadialSpin

.exit
|08AB7E| RTS

;===================================================================================================

UNREACHABLE_08AB7F:
|08AB7F| db $E0, $00, $E8, $E8
|08AB83| db $00, $20, $18, $18

;===================================================================================================

EtherSpell_HandleLightningStroke:
|08AB87| JSR AncillaMoveY

|08AB8A| LDA.w $0C0E,X
|08AB8D| STA.b $01

|08AB8F| LDA.w $0BFA,X
|08AB92| STA.b $00

|08AB94| AND.b #$F0
|08AB96| CMP.l $7F580C
|08AB9A| BEQ .dont_lengthen

|08AB9C| STA.l $7F580C

|08ABA0| INC.w $03C2,X

.dont_lengthen
|08ABA3| REP #$20

|08ABA5| LDA.b $00
|08ABA7| CMP.w #$E000
|08ABAA| BCS .delay

|08ABAC| LDA.l $7F580A
|08ABB0| CMP.w #$E000
|08ABB3| BCS .at_target

|08ABB5| LDA.l $7F580A
|08ABB9| CMP.b $00
|08ABBB| BEQ .at_target
|08ABBD| BCS .delay

.at_target
|08ABBF| SEP #$20

|08ABC1| LDA.b #$01
|08ABC3| STA.w $0C54,X

.delay
|08ABC6| SEP #$20

|08ABC8| BRL AncillaDraw_EtherBlitz

;===================================================================================================

EtherSpell_HandleOrbPulse:
|08ABCB| LDA.w $03C2,X
|08ABCE| BMI .continue

|08ABD0| DEC.w $039F,X
|08ABD3| BPL .proceed_to_draw

|08ABD5| LDA.b #$03
|08ABD7| STA.w $039F,X

|08ABDA| DEC.w $03C2,X
|08ABDD| BPL .proceed_to_draw

|08ABDF| LDA.b #$09
|08ABE1| STA.w $039F,X

|08ABE4| BRA .continue

.proceed_to_draw
|08ABE6| BRL AncillaDraw_EtherBlitz

;---------------------------------------------------------------------------------------------------

.continue
|08ABE9| DEC.w $039F,X
|08ABEC| BPL .dont_damage

|08ABEE| LDA.b #$02
|08ABF0| STA.w $0C54,X

|08ABF3| STZ.w $0C22,X

|08ABF6| LDA.b #$10
|08ABF8| STA.w $0C2C,X

|08ABFB| STZ.w $0C5E,X

|08ABFE| LDA.b #$02
|08AC00| STA.w $03B1,X

|08AC03| LDA.w $031D
|08AC06| BEQ .dont_damage

|08AC08| PHX
|08AC09| JSL CheckMedallionDamageToSprite
|08AC0D| PLX

.dont_damage
|08AC0E| LDY.b #$00
|08AC10| BRL AncillaDraw_EtherOrb

;===================================================================================================

EtherSpell_HandleRadialSpin:
|08AC13| LDA.w $0C54,X
|08AC16| CMP.b #$04
|08AC18| BNE .skip_sfx

|08AC1A| LDY.b #$2A ; SFX3.2A

|08AC1C| LDA.b $1A
|08AC1E| AND.b #$07
|08AC20| BEQ .set_sfx


|08AC22| LDY.b #$AA ; SFX3.2A with [HARDCODED] pan value of $80

|08AC24| CMP.b #$04
|08AC26| BEQ .set_sfx

|08AC28| CMP.b #$07
|08AC2A| BNE .skip_sfx

|08AC2C| LDY.b #$6A ; SFX3.2A with [HARDCODED] pan value of $40

.set_sfx
|08AC2E| STY.w $012F

;---------------------------------------------------------------------------------------------------

.skip_sfx
|08AC31| LDA.w $0C54,X
|08AC34| CMP.b #$04
|08AC36| BEQ .dont_expand

|08AC38| LDA.l $7F5808
|08AC3C| STA.w $0C04,X

|08AC3F| STZ.w $0C18,X

|08AC42| JSR AncillaMoveX

|08AC45| LDA.w $0C04,X
|08AC48| STA.l $7F5808

|08AC4C| CMP.b #$40
|08AC4E| BNE .dont_expand

|08AC50| LDA.b #$04
|08AC52| STA.w $0C54,X

.dont_expand
|08AC55| PHX

|08AC56| LDA.w $0C54,X
|08AC59| STA.b $72

|08AC5B| LDA.w $0C5E,X
|08AC5E| STA.b $73

;---------------------------------------------------------------------------------------------------

|08AC60| LDY.b #$00
|08AC62| LDX.b #$07

.next_orb
|08AC64| LDA.b $72
|08AC66| CMP.b #$02
|08AC68| BEQ .dont_rotate

|08AC6A| CMP.b #$05
|08AC6C| BEQ .dont_rotate

|08AC6E| LDA.l $7F5800,X
|08AC72| INC A
|08AC73| AND.b #$3F
|08AC75| STA.l $7F5800,X

.dont_rotate
|08AC79| LDA.l $7F5808
|08AC7D| STA.b $08

|08AC7F| LDA.l $7F5800,X

|08AC83| JSR Ancilla_GetRadialProjection

|08AC86| PHX

|08AC87| LDA.b $72
|08AC89| CMP.b #$02
|08AC8B| BEQ .draw_as_segment

|08AC8D| JSR AncillaDraw_EtherBlitzBall

|08AC90| BRA .to_next

.draw_as_segment
|08AC92| JSR AncillaDraw_EtherBlitzSegment

.to_next
|08AC95| PLX
|08AC96| DEX
|08AC97| BPL .next_orb

;---------------------------------------------------------------------------------------------------

|08AC99| PLX

|08AC9A| LDA.l $7F5808
|08AC9E| CMP.b #$F0
|08ACA0| BCS .terminate

|08ACA2| LDY.b #$01

.next_check
|08ACA4| LDA.b ($90),Y
|08ACA6| CMP.b #$F0
|08ACA8| BNE .exit

|08ACAA| INY ; +4
|08ACAB| INY
|08ACAC| INY
|08ACAD| INY

|08ACAE| CPY.b #$21
|08ACB0| BNE .next_check

;---------------------------------------------------------------------------------------------------

.terminate
|08ACB2| STZ.w $0C4A,X

|08ACB5| LDA.b #$01
|08ACB7| STA.w $0AAA

|08ACBA| STZ.w $0324
|08ACBD| STZ.w $031C
|08ACC0| STZ.w $031D

|08ACC3| STZ.b $50

|08ACC5| STZ.w $0FC1

|08ACC8| LDA.b $8A
|08ACCA| CMP.b #$70 ; OW 70
|08ACCC| BNE .dont_open_mire

|08ACCE| LDA.l $7EF2F0
|08ACD2| AND.b #$20
|08ACD4| BNE .dont_open_mire

|08ACD6| LDY.b #$02
|08ACD8| JSR Ancilla_CheckForEntranceTrigger
|08ACDB| BCC .dont_open_mire

|08ACDD| LDA.b #$03
|08ACDF| STA.w $04C6

|08ACE2| STZ.b $B0
|08ACE4| STZ.b $C8

;---------------------------------------------------------------------------------------------------

.dont_open_mire
|08ACE6| LDA.b $5D
|08ACE8| CMP.b #$19 ; LINKSTATE 19
|08ACEA| BEQ .spin_attack

|08ACEC| LDA.b #$00 ; LINKSTATE 00
|08ACEE| STA.b $5D

|08ACF0| STZ.b $3D

|08ACF2| LDY.b #$00

|08ACF4| LDA.b $3C
|08ACF6| BEQ .dont_flag_b

|08ACF8| LDA.b $F0
|08ACFA| AND.b #$80
|08ACFC| TAY

.dont_flag_b
|08ACFD| STY.b $3A

;---------------------------------------------------------------------------------------------------

.spin_attack
|08ACFF| STZ.b $5E
|08AD01| STZ.w $0325

|08AD04| PHX

|08AD05| JSL RefreshEquipmentPalettes_sword_and_mail
|08AD09| JSL RestoreBackgroundPalettes

|08AD0D| PLX

.exit
|08AD0E| RTS

;===================================================================================================

pool AncillaDraw_EtherBlitzBall

.char
|08AD0F| db $68, $6A

endpool

;---------------------------------------------------------------------------------------------------

AncillaDraw_EtherBlitzBall:
|08AD11| REP #$20

|08AD13| PHY

|08AD14| LDA.b $00

|08AD16| LDY.b $02
|08AD18| BEQ .positive_y

|08AD1A| EOR.w #$FFFF
|08AD1D| INC A

.positive_y
|08AD1E| STA.b $08

|08AD20| CLC
|08AD21| ADC.l $7F5810
|08AD25| CLC
|08AD26| ADC.w #$FFF8
|08AD29| SEC
|08AD2A| SBC.b $E8
|08AD2C| STA.b $00

;---------------------------------------------------------------------------------------------------

|08AD2E| LDA.b $04

|08AD30| LDY.b $06
|08AD32| BEQ .positive_x

|08AD34| EOR.w #$FFFF
|08AD37| INC A

.positive_x
|08AD38| STA.b $0A

|08AD3A| CLC
|08AD3B| ADC.l $7F580E
|08AD3F| CLC
|08AD40| ADC.w #$FFF8
|08AD43| SEC
|08AD44| SBC.b $E2
|08AD46| STA.b $02

;---------------------------------------------------------------------------------------------------

|08AD48| PLY

|08AD49| SEP #$20

|08AD4B| JSR Ancilla_SetOAM_XY

|08AD4E| LDA.b $73
|08AD50| TAX

|08AD51| LDA.w .char,X
|08AD54| STA.b ($90),Y

|08AD56| INY

|08AD57| LDA.b #$3C
|08AD59| STA.b ($90),Y

|08AD5B| INY
|08AD5C| PHY
|08AD5D| TYA

|08AD5E| SEC
|08AD5F| SBC.b #$04
|08AD61| LSR A
|08AD62| LSR A
|08AD63| TAY

|08AD64| LDA.b #$02
|08AD66| STA.b ($92),Y

|08AD68| JSR AllocateOAMInCustomRegion

|08AD6B| PLY

|08AD6C| RTS

;===================================================================================================

pool AncillaDraw_EtherBlitzSegment

.char
|08AD6D| db $40, $42
|08AD6F| db $66, $64
|08AD71| db $62, $60
|08AD73| db $64, $66
|08AD75| db $42, $40
|08AD77| db $66, $64
|08AD79| db $60, $62
|08AD7B| db $64, $66
|08AD7D| db $68, $42
|08AD7F| db $68, $64
|08AD81| db $68, $60
|08AD83| db $68, $64
|08AD85| db $68, $40
|08AD87| db $68, $66
|08AD89| db $68, $62
|08AD8B| db $68, $64

;---------------------------------------------------------------------------------------------------

.prop
|08AD8D| db $3C, $3C
|08AD8F| db $FC, $FC
|08AD91| db $3C, $3C
|08AD93| db $BC, $BC
|08AD95| db $3C, $3C
|08AD97| db $3C, $3C
|08AD99| db $3C, $3C
|08AD9B| db $7C, $7C
|08AD9D| db $3C, $7C
|08AD9F| db $3C, $3C
|08ADA1| db $3C, $BC
|08ADA3| db $3C, $7C
|08ADA5| db $3C, $7C
|08ADA7| db $3C, $FC
|08ADA9| db $3C, $BC
|08ADAB| db $3C, $BC

;---------------------------------------------------------------------------------------------------

.offset_y
|08ADAD| dw   8
|08ADAF| dw   0
|08ADB1| dw  -8
|08ADB3| dw -16
|08ADB5| dw -24
|08ADB7| dw -16
|08ADB9| dw  -8
|08ADBB| dw -16
|08ADBD| dw   8
|08ADBF| dw   0
|08ADC1| dw  -8
|08ADC3| dw -16
|08ADC5| dw -24
|08ADC7| dw -16
|08ADC9| dw  -8
|08ADCB| dw   0

;---------------------------------------------------------------------------------------------------

.offset_x
|08ADCD| dw  -8
|08ADCF| dw -16
|08ADD1| dw -24
|08ADD3| dw -16
|08ADD5| dw  -8
|08ADD7| dw   0
|08ADD9| dw   8
|08ADDB| dw -16
|08ADDD| dw  -8
|08ADDF| dw -16
|08ADE1| dw -24
|08ADE3| dw -16
|08ADE5| dw  -8
|08ADE7| dw   0
|08ADE9| dw   8
|08ADEB| dw   0

endpool

;---------------------------------------------------------------------------------------------------

AncillaDraw_EtherBlitzSegment:
|08ADED| REP #$20

|08ADEF| PHY

|08ADF0| LDA.b $00

|08ADF2| LDY.b $02
|08ADF4| BEQ .positive_y

|08ADF6| EOR.w #$FFFF
|08ADF9| INC A

.positive_y
|08ADFA| STA.b $08

|08ADFC| CLC
|08ADFD| ADC.l $7F5810

|08AE01| CLC
|08AE02| ADC.w #$FFF8

|08AE05| SEC
|08AE06| SBC.b $E8
|08AE08| STA.b $00

;---------------------------------------------------------------------------------------------------

|08AE0A| LDA.b $04

|08AE0C| LDY.b $06
|08AE0E| BEQ .positive_x

|08AE10| EOR.w #$FFFF
|08AE13| INC A

.positive_x
|08AE14| STA.b $0A

|08AE16| CLC
|08AE17| ADC.l $7F580E

|08AE1B| CLC
|08AE1C| ADC.w #$FFF8

|08AE1F| SEC
|08AE20| SBC.b $E2
|08AE22| STA.b $02

;---------------------------------------------------------------------------------------------------

|08AE24| PLY

|08AE25| SEP #$20

|08AE27| JSR Ancilla_SetOAM_XY

|08AE2A| LDA.b $73
|08AE2C| ASL A ; x16
|08AE2D| ASL A
|08AE2E| ASL A
|08AE2F| ASL A
|08AE30| STA.b $0E

|08AE32| TXA
|08AE33| ASL A
|08AE34| CLC
|08AE35| ADC.b $0E
|08AE37| TAX

|08AE38| LDA.w .char+0,X
|08AE3B| STA.b ($90),Y

|08AE3D| INY

|08AE3E| LDA.w .prop+0,X
|08AE41| STA.b ($90),Y

|08AE43| INY
|08AE44| PHY

|08AE45| TYA
|08AE46| SEC
|08AE47| SBC.b #$04
|08AE49| LSR A
|08AE4A| LSR A
|08AE4B| TAY

|08AE4C| LDA.b #$02
|08AE4E| STA.b ($92),Y

|08AE50| PLY

;---------------------------------------------------------------------------------------------------

|08AE51| REP #$20

|08AE53| LDA.b $08
|08AE55| CLC
|08AE56| ADC.l $7F5810

|08AE5A| CLC
|08AE5B| ADC.w .offset_y,X

|08AE5E| SEC
|08AE5F| SBC.b $E8
|08AE61| STA.b $00

;---------------------------------------------------------------------------------------------------

|08AE63| LDA.b $0A
|08AE65| CLC
|08AE66| ADC.l $7F580E

|08AE6A| CLC
|08AE6B| ADC.w .offset_x,X

|08AE6E| SEC
|08AE6F| SBC.b $E2
|08AE71| STA.b $02

;---------------------------------------------------------------------------------------------------

|08AE73| SEP #$20

|08AE75| PHX
|08AE76| JSR Ancilla_SetOAM_XY
|08AE79| PLX

|08AE7A| LDA.w .char+1,X
|08AE7D| STA.b ($90),Y

|08AE7F| INY

|08AE80| LDA.w .prop+1,X
|08AE83| STA.b ($90),Y

|08AE85| INY
|08AE86| PHY

|08AE87| TYA
|08AE88| SEC
|08AE89| SBC.b #$04
|08AE8B| LSR A
|08AE8C| LSR A
|08AE8D| TAY

|08AE8E| LDA.b #$02
|08AE90| STA.b ($92),Y

|08AE92| PLY

|08AE93| JSR AllocateOAMInCustomRegion

|08AE96| RTS

;===================================================================================================

EtherBlitzDraw:
.char
|08AE97| db $40, $42, $44, $46

.orb_char
|08AE9B| db $48, $48, $4A, $4A
|08AE9F| db $4C, $4C, $4E, $4E

.prop
|08AEA3| db $3C, $7C, $3C, $7C
|08AEA7| db $3C, $7C, $3C, $7C

;---------------------------------------------------------------------------------------------------

AncillaDraw_EtherBlitz:
|08AEAB| JSR Ancilla_PrepOAMCoord

|08AEAE| LDA.w $0C5E,X
|08AEB1| STA.b $06

|08AEB3| STZ.b $08

|08AEB5| PHX

|08AEB6| LDA.w $03C2,X
|08AEB9| TAX

|08AEBA| LDY.b #$00

;---------------------------------------------------------------------------------------------------

.next_object
|08AEBC| JSR Ancilla_SetOAM_XY

|08AEBF| PHX

|08AEC0| LDA.b $06
|08AEC2| ASL A
|08AEC3| CLC
|08AEC4| ADC.b $08
|08AEC6| TAX

|08AEC7| LDA.w EtherBlitzDraw.char,X
|08AECA| STA.b ($90),Y

|08AECC| PLX

|08AECD| INY

|08AECE| LDA.w EtherBlitzDraw.prop
|08AED1| ORA.b $65
|08AED3| STA.b ($90),Y

|08AED5| INY
|08AED6| PHY

|08AED7| TYA
|08AED8| SEC
|08AED9| SBC.b #$04
|08AEDB| LSR A
|08AEDC| LSR A
|08AEDD| TAY

|08AEDE| LDA.b #$02
|08AEE0| STA.b ($92),Y

|08AEE2| PLY

|08AEE3| REP #$20

|08AEE5| LDA.b $00
|08AEE7| SEC
|08AEE8| SBC.w #$0010
|08AEEB| STA.b $00

|08AEED| SEP #$20

|08AEEF| LDA.b $08
|08AEF1| EOR.b #$01
|08AEF3| STA.b $08

|08AEF5| DEX
|08AEF6| BPL .next_object

;---------------------------------------------------------------------------------------------------

|08AEF8| PLX

|08AEF9| LDA.w $0C54,X
|08AEFC| CMP.b #$01
|08AEFE| BEQ AncillaDraw_EtherOrb

|08AF00| RTS

;===================================================================================================

AncillaDraw_EtherOrb:
|08AF01| REP #$20

|08AF03| LDA.l $7F5813
|08AF07| CLC
|08AF08| ADC.w #$FFFF
|08AF0B| SEC
|08AF0C| SBC.b $E8
|08AF0E| STA.b $00

|08AF10| LDA.l $7F5815
|08AF14| CLC
|08AF15| ADC.w #$FFF8
|08AF18| SEC
|08AF19| SBC.b $E2
|08AF1B| STA.b $02
|08AF1D| STA.b $04

|08AF1F| STZ.b $08

|08AF21| SEP #$20

|08AF23| PHX

|08AF24| LDA.w $0C5E,X
|08AF27| ASL A
|08AF28| ASL A
|08AF29| STA.b $06

.next_object
|08AF2B| JSR Ancilla_SetOAM_XY

|08AF2E| LDX.b $06

|08AF30| LDA.w EtherBlitzDraw.orb_char,X
|08AF33| STA.b ($90),Y

|08AF35| INY

|08AF36| LDA.w EtherBlitzDraw.prop,X
|08AF39| STA.b ($90),Y

|08AF3B| INY
|08AF3C| PHY

|08AF3D| TYA
|08AF3E| SEC
|08AF3F| SBC.b #$04
|08AF41| LSR A
|08AF42| LSR A
|08AF43| TAY

|08AF44| LDA.b #$02
|08AF46| STA.b ($92),Y

|08AF48| PLY

|08AF49| JSR AllocateOAMInCustomRegion

|08AF4C| REP #$20

|08AF4E| LDA.b $02
|08AF50| CLC
|08AF51| ADC.w #$0010
|08AF54| STA.b $02

|08AF56| INC.b $06

|08AF58| INC.b $08

|08AF5A| LDA.b $08
|08AF5C| CMP.w #$0004
|08AF5F| BEQ .exit

|08AF61| CMP.w #$0002
|08AF64| BNE .continue

|08AF66| LDA.b $00
|08AF68| CLC
|08AF69| ADC.w #$0010
|08AF6C| STA.b $00

|08AF6E| LDA.b $04
|08AF70| STA.b $02

.continue
|08AF72| SEP #$20

|08AF74| BRA .next_object

;---------------------------------------------------------------------------------------------------

.exit
|08AF76| SEP #$20

|08AF78| PLX

|08AF79| RTS

;===================================================================================================

pool AncillaAdd_BombosSpell

.offset_y
|08AF7A| dw  16,  24, -128, -16

.offset_x
|08AF82| dw -16, -128,   0, 128

endpool

;---------------------------------------------------------------------------------------------------

AncillaAdd_BombosSpell:
|08AF8A| PHB
|08AF8B| PHK
|08AF8C| PLB

|08AF8D| JSR AddAncilla_bank08
|08AF90| BCC .found_slot

|08AF92| BRL .exit

;---------------------------------------------------------------------------------------------------

.found_slot
|08AF95| LDA.b #$03
|08AF97| STA.l $7F5800
|08AF9B| STA.l $7F5801
|08AF9F| STA.l $7F5802
|08AFA3| STA.l $7F5803
|08AFA7| STA.l $7F5804

|08AFAB| STA.l $7F5805
|08AFAF| STA.l $7F5806
|08AFB3| STA.l $7F5807
|08AFB7| STA.l $7F5808
|08AFBB| STA.l $7F5809

|08AFBF| STA.l $7F5945
|08AFC3| STA.l $7F5946
|08AFC7| STA.l $7F5947
|08AFCB| STA.l $7F5948

|08AFCF| STA.l $7F5949
|08AFD3| STA.l $7F594A
|08AFD7| STA.l $7F594B
|08AFDB| STA.l $7F594C

|08AFDF| LDA.b #$00
|08AFE1| STA.l $7F5810
|08AFE5| STA.l $7F5811
|08AFE9| STA.l $7F5812
|08AFED| STA.l $7F5813
|08AFF1| STA.l $7F5814

|08AFF5| STA.l $7F5815
|08AFF9| STA.l $7F5816
|08AFFD| STA.l $7F5817
|08B001| STA.l $7F5818
|08B005| STA.l $7F5819

|08B009| STA.l $7F5935
|08B00D| STA.l $7F5936
|08B011| STA.l $7F5937
|08B015| STA.l $7F5938

|08B019| STA.l $7F5939
|08B01D| STA.l $7F593A
|08B021| STA.l $7F593B
|08B025| STA.l $7F593C

|08B029| STA.l $7F5934
|08B02D| STA.l $7F5A56

;---------------------------------------------------------------------------------------------------

|08B031| LDA.b #$80
|08B033| STA.l $7F5A55

|08B037| LDA.b #$10
|08B039| STA.l $7F5820

|08B03D| LDA.b #$0B
|08B03F| STA.w $0AAA

|08B042| LDA.b #$01
|08B044| STA.w $0112

|08B047| STZ.w $0C54,X
|08B04A| STZ.w $0C5E,X

;---------------------------------------------------------------------------------------------------

|08B04D| LDA.b #$2A ; SFX2.2A
|08B04F| JSR Ancilla_SFX2_Near

|08B052| PHX

|08B053| LDY.b $1A

|08B055| LDA.b $21
|08B057| STA.l $7F5956

|08B05B| LDA.b $23
|08B05D| STA.l $7F59D6

; [WTF] why?
|08B061| LDA.w Ancilla05_Boomerang,Y
|08B064| CMP.b #$E0
|08B066| BCC .excuse_me

|08B068| AND.b #$7F

.excuse_me
|08B06A| STA.l $7F5955
|08B06E| STA.l $7F59D5

;---------------------------------------------------------------------------------------------------

|08B072| LDX.b #$00
|08B074| STX.b $72

.next
|08B076| REP #$20

|08B078| LDA.b $20
|08B07A| CLC
|08B07B| ADC.w .offset_y,X
|08B07E| STA.l $7F5924,X

|08B082| LDA.b $22
|08B084| CLC
|08B085| ADC.w .offset_x,X
|08B088| STA.l $7F592C,X

|08B08C| SEP #$20

|08B08E| PHX

|08B08F| TXA
|08B090| LSR A
|08B091| TAX

|08B092| LDA.b #$10
|08B094| STA.b $08
|08B096| STA.l $7F5A57

|08B09A| LDA.l $7F5820,X

|08B09E| PLX

|08B09F| JSR Ancilla_GetRadialProjection

;---------------------------------------------------------------------------------------------------

|08B0A2| REP #$20

|08B0A4| LDA.b $00
|08B0A6| LDY.b $02
|08B0A8| BEQ .positive_x

|08B0AA| EOR.w #$FFFF
|08B0AD| INC A

.positive_x
|08B0AE| CLC
|08B0AF| ADC.l $7F5924,X
|08B0B3| STA.b $00

;---------------------------------------------------------------------------------------------------

|08B0B5| LDA.b $04

|08B0B7| LDY.b $06
|08B0B9| BEQ .positive_y

|08B0BB| EOR.w #$FFFF
|08B0BE| INC A

.positive_y
|08B0BF| CLC
|08B0C0| ADC.l $7F592C,X
|08B0C4| STA.b $04

;---------------------------------------------------------------------------------------------------

|08B0C6| SEP #$20

|08B0C8| PHX

|08B0C9| LDX.b $72

|08B0CB| LDA.b $00
|08B0CD| STA.l $7F5824,X

|08B0D1| LDA.b $01
|08B0D3| STA.l $7F5864,X

|08B0D7| LDA.b $04
|08B0D9| STA.l $7F58A4,X

|08B0DD| LDA.b $05
|08B0DF| STA.l $7F58E4,X

|08B0E3| PLX

|08B0E4| LDA.b $72
|08B0E6| SEC
|08B0E7| SBC.b #$10
|08B0E9| STA.b $72

|08B0EB| DEX
|08B0EC| DEX
|08B0ED| BPL .next

;---------------------------------------------------------------------------------------------------

|08B0EF| PLX

.exit
|08B0F0| PLB

|08B0F1| RTL

;===================================================================================================

Ancilla19_BombosSpell:
|08B0F2| LDA.l $7F5934
|08B0F6| BNE .no_new_columns

|08B0F8| LDA.b $11
|08B0FA| BNE .draw_columns

|08B0FC| JMP.w BombosSpell_ControlFireColumns

;---------------------------------------------------------------------------------------------------

.draw_columns
|08B0FF| LDY.b #$00
|08B101| LDX.b #$09

.next_column_draw
|08B103| JSR AncillaDraw_BombosFireColumn

|08B106| DEX
|08B107| BPL .next_column_draw

|08B109| RTS

;---------------------------------------------------------------------------------------------------

.no_new_columns
|08B10A| LDA.l $7F5934
|08B10E| CMP.b #$02
|08B110| BEQ .blasting

|08B112| LDA.b $11
|08B114| BNE .draw_columns

|08B116| JSR BombosSpell_FinishFireColumns

|08B119| RTS

;---------------------------------------------------------------------------------------------------

.blasting
|08B11A| LDA.b $11
|08B11C| BEQ .dont_draw_blast

|08B11E| PHX

|08B11F| LDA.w $0C54,X
|08B122| TAX

.next_blast_draw
|08B123| JSR AncillaDraw_BombosBlast

|08B126| DEX
|08B127| BPL .next_blast_draw

|08B129| PLX

|08B12A| RTS

;---------------------------------------------------------------------------------------------------

.dont_draw_blast
|08B12B| JMP.w BombosSpell_ControlBlasting

;===================================================================================================

BombosSpell_ControlFireColumns:
|08B12E| PHX

|08B12F| LDA.w $0C5E,X
|08B132| STA.b $73

|08B134| LDA.w $0C54,X
|08B137| STA.b $72

|08B139| TAX
|08B13A| LDY.b #$00

;---------------------------------------------------------------------------------------------------

.next_column
|08B13C| LDA.l $7F5810,X
|08B140| CMP.b #$0D
|08B142| BNE .continue

.skip_me
|08B144| BRL .skip_this_column

.continue
|08B147| LDA.l $7F5800,X
|08B14B| DEC A
|08B14C| STA.l $7F5800,X
|08B150| BMI .time_up

.dont_spawn_new_column
|08B152| BRL .just_draw

;---------------------------------------------------------------------------------------------------

.time_up
|08B155| LDA.b #$03
|08B157| STA.l $7F5800,X

|08B15B| LDA.l $7F5810,X
|08B15F| INC A
|08B160| STA.l $7F5810,X

|08B164| CMP.b #$0D
|08B166| BEQ .skip_me

;---------------------------------------------------------------------------------------------------

|08B168| CMP.b #$02
|08B16A| BNE .dont_spawn_new_column

|08B16C| LDA.b $73
|08B16E| BNE .skip_me

|08B170| PHX

|08B171| LDA.b $72
|08B173| CMP.b #$09
|08B175| BNE .to_next_find

;---------------------------------------------------------------------------------------------------

|08B177| LDX.b #$09

.next_check
|08B179| LDA.l $7F5810,X
|08B17D| CMP.b #$0D
|08B17F| BNE .dont_reset

|08B181| LDA.b #$00
|08B183| STA.l $7F5810,X
|08B187| BRA .set_radial

.dont_reset
|08B189| DEX
|08B18A| BPL .next_check

.to_next_find
|08B18C| LDX.b $72
|08B18E| INX
|08B18F| CPX.b #$0A
|08B191| BNE .not_maxed

|08B193| LDX.b #$09

.not_maxed
|08B195| STX.b $72

.set_radial
|08B197| TXA
|08B198| CLC
|08B199| ADC.b #$00
|08B19B| STA.b $74

;---------------------------------------------------------------------------------------------------

.never
|08B19D| LDA.b $74
|08B19F| LSR A ; /16
|08B1A0| LSR A
|08B1A1| LSR A
|08B1A2| LSR A
|08B1A3| TAX

|08B1A4| LDA.l $7F5A57
|08B1A8| CLC
|08B1A9| ADC.b #$03
|08B1AB| CMP.b #$D0
|08B1AD| BCC .not_maxed_distance

|08B1AF| LDA.b #$CF

;---------------------------------------------------------------------------------------------------

.not_maxed_distance
|08B1B1| STA.l $7F5A57
|08B1B5| STA.b $08

|08B1B7| LDA.l $7F5820,X
|08B1BB| CLC
|08B1BC| ADC.b #$06
|08B1BE| STA.l $7F5820,X

|08B1C2| AND.b #$3F
|08B1C4| JSR Ancilla_GetRadialProjection

|08B1C7| TXA
|08B1C8| ASL A
|08B1C9| TAX

|08B1CA| REP #$20

|08B1CC| PHY

;---------------------------------------------------------------------------------------------------

|08B1CD| LDA.b $00

|08B1CF| LDY.b $02
|08B1D1| BEQ .positive_y

|08B1D3| EOR.w #$FFFF
|08B1D6| INC A

.positive_y
|08B1D7| CLC
|08B1D8| ADC.l $7F5924,X
|08B1DC| STA.b $00

;---------------------------------------------------------------------------------------------------

|08B1DE| LDA.b $04

|08B1E0| LDY.b $06
|08B1E2| BEQ .positive_x

|08B1E4| EOR.w #$FFFF
|08B1E7| INC A

.positive_x
|08B1E8| CLC
|08B1E9| ADC.l $7F592C,X
|08B1ED| STA.b $04

;---------------------------------------------------------------------------------------------------

|08B1EF| PLY

|08B1F0| SEP #$20

|08B1F2| LDX.b $74

|08B1F4| LDA.b $00
|08B1F6| STA.l $7F5824,X

|08B1FA| LDA.b $01
|08B1FC| STA.l $7F5864,X

|08B200| LDA.b $04
|08B202| STA.l $7F58A4,X

|08B206| LDA.b $05
|08B208| STA.l $7F58E4,X

;---------------------------------------------------------------------------------------------------

; supposedly impossible, according to MoN disassembly
|08B20C| LDA.b $74
|08B20E| SEC
|08B20F| SBC.b #$10
|08B211| STA.b $74
|08B213| BPL .never

|08B215| REP #$20

|08B217| LDA.b $04
|08B219| SEC
|08B21A| SBC.b $E2
|08B21C| CLC
|08B21D| ADC.w #$0008
|08B220| STA.b $04

;---------------------------------------------------------------------------------------------------

|08B222| SEP #$20

|08B224| LDA.b $05
|08B226| BNE .no_sfx

|08B228| LDA.b $04
|08B22A| LSR A ; /32
|08B22B| LSR A
|08B22C| LSR A
|08B22D| LSR A
|08B22E| LSR A
|08B22F| TAX

|08B230| LDA.l AncillaPanValues,X
|08B234| ORA.b #$2A ; SFX2.2A
|08B236| STA.w $012E

;---------------------------------------------------------------------------------------------------

.no_sfx
|08B239| PLX

.just_draw
|08B23A| JSR AncillaDraw_BombosFireColumn

.skip_this_column
|08B23D| DEX
|08B23E| BMI .done_columns

|08B240| BRL .next_column

;---------------------------------------------------------------------------------------------------

.done_columns
|08B243| PLX

|08B244| LDA.l $7F5820
|08B248| CMP.b #$80
|08B24A| BCS .trigger_wrap_up

|08B24C| BRA .finish_up

.trigger_wrap_up
|08B24E| LDA.b #$01
|08B250| STA.l $7F5934

.finish_up
|08B254| LDA.b $72
|08B256| STA.w $0C54,X

|08B259| RTS

;---------------------------------------------------------------------------------------------------

BombosSpell_FinishFireColumns:
|08B25A| PHX

|08B25B| LDA.w $0C54,X
|08B25E| TAX
|08B25F| LDY.b #$00

.next_column
|08B261| LDA.l $7F5800,X
|08B265| DEC A
|08B266| STA.l $7F5800,X
|08B26A| BPL .delay

|08B26C| LDA.b #$03
|08B26E| STA.l $7F5800,X

|08B272| LDA.l $7F5810,X
|08B276| INC A
|08B277| STA.l $7F5810,X

|08B27B| CMP.b #$0D
|08B27D| BCC .delay

|08B27F| LDA.b #$0D
|08B281| STA.l $7F5810,X

.delay
|08B285| JSR AncillaDraw_BombosFireColumn

|08B288| DEX
|08B289| BPL .next_column

;---------------------------------------------------------------------------------------------------

|08B28B| LDX.b #$09

.next_check
|08B28D| LDA.l $7F5810,X
|08B291| CMP.b #$0D
|08B293| BNE .found_active_column

|08B295| DEX
|08B296| BPL .next_check

;---------------------------------------------------------------------------------------------------

|08B298| STZ.b $72

|08B29A| LDA.b #$02
|08B29C| STA.l $7F5934

|08B2A0| PLX

|08B2A1| PHX
|08B2A2| JSL CheckMedallionDamageToSprite
|08B2A6| PLX

|08B2A7| STZ.w $0C54,X

|08B2AA| RTS

;---------------------------------------------------------------------------------------------------

.found_active_column
|08B2AB| PLX

|08B2AC| RTS

;===================================================================================================
; $FF = don't draw
;===================================================================================================
pool AncillaDraw_BombosFireColumn

.char
|08B2AD| db $40, $FF, $FF
|08B2B0| db $42, $44, $FF
|08B2B3| db $42, $44, $FF
|08B2B6| db $42, $44, $FF
|08B2B9| db $42, $44, $FF
|08B2BC| db $40, $46, $44
|08B2BF| db $4A, $4A, $48
|08B2C2| db $4C, $4C, $4A
|08B2C5| db $4E, $4C, $4A
|08B2C8| db $4E, $6A, $4C
|08B2CB| db $4E, $68, $FF
|08B2CE| db $6A, $FF, $FF
|08B2D1| db $4E, $FF, $FF

;---------------------------------------------------------------------------------------------------

.prop
|08B2D4| db $3C, $FF, $FF
|08B2D7| db $3C, $3C, $FF
|08B2DA| db $3C, $3C, $FF
|08B2DD| db $7C, $7C, $FF
|08B2E0| db $3C, $7C, $FF
|08B2E3| db $3C, $3C, $3C
|08B2E6| db $BC, $3C, $3C
|08B2E9| db $7C, $3C, $3C
|08B2EC| db $3C, $3C, $7C
|08B2EF| db $3C, $3C, $3C
|08B2F2| db $3C, $3C, $FF
|08B2F5| db $3C, $FF, $FF
|08B2F8| db $3C, $FF, $FF

;---------------------------------------------------------------------------------------------------
; These -1s are actually for the "don't draw"s
;---------------------------------------------------------------------------------------------------
.offset_y
|08B2FB| dw   0,  -1,  -1
|08B301| dw   0,  -4,  -1
|08B307| dw   0,  -8,  -1
|08B30D| dw   0, -12,  -1
|08B313| dw   0, -16,  -1
|08B319| dw   0,  -4, -20
|08B31F| dw   0,  -8, -24
|08B325| dw   0, -12, -28
|08B32B| dw   0, -16, -32
|08B331| dw   0, -16, -32
|08B337| dw -18, -34,  -1
|08B33D| dw -35,  -1,  -1
|08B343| dw -36,  -1,  -1

;---------------------------------------------------------------------------------------------------

.offset_x
|08B349| dw   0,  -1,  -1
|08B34F| dw   0,   0,  -1
|08B355| dw   0,   0,  -1
|08B35B| dw   0,   0,  -1
|08B361| dw   0,   0,  -1
|08B367| dw   0,   0,   0
|08B36D| dw   0,   0,   0
|08B373| dw   0,   0,   0
|08B379| dw   0,   0,   0
|08B37F| dw   0,   0,   0
|08B385| dw   0,   0,  -1
|08B38B| dw   1,  -1,  -1
|08B391| dw   2,  -1,  -1

endpool

;---------------------------------------------------------------------------------------------------

AncillaDraw_BombosFireColumn:
|08B397| TXA
|08B398| CLC
|08B399| ADC.b #$00
|08B39B| STA.b $75

|08B39D| LDA.b #$10
|08B39F| JSR AllocateOAMInRegionsADF

|08B3A2| LDY.b #$00

.next_never
|08B3A4| PHX

|08B3A5| LDA.l $7F5810,X
|08B3A9| CMP.b #$0D
|08B3AB| BEQ .inactive

|08B3AD| ASL A
|08B3AE| CLC
|08B3AF| ADC.l $7F5810,X

|08B3B3| CLC
|08B3B4| ADC.b #$02
|08B3B6| TAX

|08B3B7| STZ.b $08

;---------------------------------------------------------------------------------------------------

.next_object
|08B3B9| LDA.w .char,X
|08B3BC| CMP.b #$FF
|08B3BE| BEQ .skip

|08B3C0| PHX

|08B3C1| LDX.b $75

|08B3C3| LDA.l $7F5824,X
|08B3C7| STA.b $00

|08B3C9| LDA.l $7F5864,X
|08B3CD| STA.b $01

|08B3CF| LDA.l $7F58A4,X
|08B3D3| STA.b $02

|08B3D5| LDA.l $7F58E4,X
|08B3D9| STA.b $03

|08B3DB| PLX
|08B3DC| PHX

|08B3DD| TXA
|08B3DE| ASL A
|08B3DF| TAX

|08B3E0| REP #$20

|08B3E2| LDA.b $00
|08B3E4| CLC
|08B3E5| ADC.w .offset_y,X
|08B3E8| SEC
|08B3E9| SBC.b $E8
|08B3EB| STA.b $00

|08B3ED| LDA.b $02
|08B3EF| CLC
|08B3F0| ADC.w .offset_x,X
|08B3F3| SEC
|08B3F4| SBC.b $E2
|08B3F6| STA.b $02

;---------------------------------------------------------------------------------------------------

|08B3F8| SEP #$20

|08B3FA| JSR Ancilla_SetOAM_XY

|08B3FD| PLX

|08B3FE| LDA.w .char,X
|08B401| STA.b ($90),Y

|08B403| INY

|08B404| LDA.w .prop,X
|08B407| STA.b ($90),Y

|08B409| INY
|08B40A| PHY

|08B40B| TYA
|08B40C| SEC
|08B40D| SBC.b #$04
|08B40F| LSR A
|08B410| LSR A
|08B411| TAY

|08B412| LDA.b #$02
|08B414| STA.b ($92),Y

|08B416| PLY

;---------------------------------------------------------------------------------------------------

.skip
|08B417| JSR AllocateOAMInCustomRegion

|08B41A| DEX

|08B41B| INC.b $08

|08B41D| LDA.b $08
|08B41F| CMP.b #$03
|08B421| BNE .next_object

;---------------------------------------------------------------------------------------------------

.inactive
|08B423| PLX

|08B424| LDA.b $75
|08B426| SEC
|08B427| SBC.b #$10
|08B429| STA.b $75
|08B42B| BMI .exit

; supposedly impossible to reach
|08B42D| BRL .next_never

.exit
|08B430| RTS

;===================================================================================================

BombosSpell_ControlBlasting:
|08B431| PHX

|08B432| LDY.b #$00

|08B434| LDA.w $0C54,X
|08B437| STA.b $72

|08B439| TAX

.next_blast
|08B43A| LDA.l $7F5935,X
|08B43E| CMP.b #$08
|08B440| BEQ .inactive

|08B442| LDA.l $7F5945,X
|08B446| DEC A
|08B447| STA.l $7F5945,X
|08B44B| BMI .time_up

.inactive
|08B44D| BRL .just_draw

;---------------------------------------------------------------------------------------------------

.time_up
|08B450| LDA.b #$03
|08B452| STA.l $7F5945,X

|08B456| LDA.l $7F5935,X
|08B45A| INC A
|08B45B| STA.l $7F5935,X

|08B45F| CMP.b #$01
|08B461| BNE .inactive

|08B463| LDA.l $7F5A56
|08B467| BNE .inactive

;---------------------------------------------------------------------------------------------------

|08B469| PHX

|08B46A| LDA.b $72
|08B46C| CMP.b #$0F
|08B46E| BEQ .maxed_blast

|08B470| LDA.b $72
|08B472| INC A
|08B473| CMP.b #$10
|08B475| BNE .not_maxed

|08B477| LDA.b #$0F

.not_maxed
|08B479| STA.b $72

|08B47B| TAX

|08B47C| BRA .activate_next

;---------------------------------------------------------------------------------------------------

.maxed_blast
|08B47E| LDX.b #$0F

.next_check
|08B480| LDA.l $7F5935,X
|08B484| CMP.b #$08
|08B486| BEQ .activate_next

|08B488| DEX
|08B489| BPL .next_check

;---------------------------------------------------------------------------------------------------

.activate_next
|08B48B| LDA.b #$00
|08B48D| STA.l $7F5935,X

|08B491| LDA.b #$03
|08B493| STA.l $7F5945,X

|08B497| PHY

|08B498| TXA
|08B499| ASL A
|08B49A| TAY

|08B49B| LDA.b $1A
|08B49D| AND.b #$3F
|08B49F| TAX

|08B4A0| LDA.l BombosBlastRandomPosition+0,X
|08B4A4| STA.b $00
|08B4A6| STZ.b $01

|08B4A8| LDA.l BombosBlastRandomPosition+3,X
|08B4AC| STA.b $02
|08B4AE| STZ.b $03

;---------------------------------------------------------------------------------------------------

|08B4B0| TYX

|08B4B1| REP #$20

|08B4B3| LDA.b $00
|08B4B5| CLC
|08B4B6| ADC.b $E8
|08B4B8| STA.l $7F5955,X

|08B4BC| LDA.b $02
|08B4BE| CLC
|08B4BF| ADC.b $E2
|08B4C1| STA.l $7F59D5,X

|08B4C5| SEP #$20

|08B4C7| LDA.l $7F59D5,X
|08B4CB| LSR A ; /32
|08B4CC| LSR A
|08B4CD| LSR A
|08B4CE| LSR A
|08B4CF| LSR A
|08B4D0| TAX

|08B4D1| LDA.l AncillaPanValues,X
|08B4D5| ORA.b #$0C ; SFX2.0C
|08B4D7| STA.w $012E

|08B4DA| PLY
|08B4DB| PLX

;---------------------------------------------------------------------------------------------------

.just_draw
|08B4DC| JSR AncillaDraw_BombosBlast

|08B4DF| DEX
|08B4E0| BMI .done_blasting

|08B4E2| BRL .next_blast

;---------------------------------------------------------------------------------------------------

.done_blasting
|08B4E5| LDX.b #$0F

.next_active_check
|08B4E7| LDA.l $7F5935,X
|08B4EB| CMP.b #$08
|08B4ED| BNE .found_one

|08B4EF| DEX
|08B4F0| BPL .next_active_check

;---------------------------------------------------------------------------------------------------

|08B4F2| PLX

|08B4F3| STZ.w $0C4A,X

|08B4F6| LDA.b #$01
|08B4F8| STA.w $0AAA

|08B4FB| STZ.w $0324
|08B4FE| STZ.w $031C
|08B501| STZ.w $031D

|08B504| STZ.b $50

|08B506| STZ.w $0FC1

|08B509| LDA.b $5D
|08B50B| CMP.b #$1A ; LINKSTATE 1A
|08B50D| BEQ .link_bombosing

|08B50F| LDA.b #$00 ; LINKSTATE 00
|08B511| STA.b $5D

|08B513| STZ.b $3D

|08B515| LDY.b #$00

|08B517| LDA.b $3C
|08B519| BEQ .sword_not_drawn

|08B51B| LDA.b $F0
|08B51D| AND.b #$80
|08B51F| TAY

.sword_not_drawn
|08B520| STY.b $3A

.link_bombosing
|08B522| STZ.b $5E
|08B524| STZ.w $0325

|08B527| BRA .finish_up

;---------------------------------------------------------------------------------------------------

.found_one
|08B529| PLX

|08B52A| LDA.b $72
|08B52C| STA.w $0C54,X

.finish_up
|08B52F| LDA.l $7F5A55
|08B533| DEC A
|08B534| STA.l $7F5A55
|08B538| BNE .exit

|08B53A| LDA.b #$01
|08B53C| STA.l $7F5A56
|08B540| STA.l $7F5A55

.exit
|08B544| RTS

;===================================================================================================

pool AncillaDraw_BombosBlast

.char
|08B545| db $60, $FF, $FF, $FF
|08B549| db $62, $62, $62, $62
|08B54D| db $64, $64, $64, $64
|08B551| db $66, $66, $66, $66
|08B555| db $68, $68, $68, $68
|08B559| db $68, $68, $68, $68
|08B55D| db $6A, $6A, $6A, $6A
|08B561| db $4E, $4E, $4E, $4E

;---------------------------------------------------------------------------------------------------

.prop
|08B565| db $3C, $FF, $FF, $FF
|08B569| db $3C, $7C, $BC, $FC
|08B56D| db $3C, $7C, $BC, $FC
|08B571| db $3C, $7C, $BC, $FC
|08B575| db $3C, $7C, $BC, $FC
|08B579| db $3C, $7C, $BC, $FC
|08B57D| db $3C, $7C, $BC, $FC
|08B581| db $3C, $7C, $BC, $FC

;---------------------------------------------------------------------------------------------------

.offset_y
|08B585| dw  -8,  -1,  -1,  -1
|08B58D| dw -12, -12,  -4,  -4
|08B595| dw -16, -16,   0,   0
|08B59D| dw -16, -16,   0,   0
|08B5A5| dw -17, -17,   1,   1
|08B5AD| dw -19, -19,   3,   3
|08B5B5| dw -19, -19,   3,   3
|08B5BD| dw -19, -19,   3,   3

;---------------------------------------------------------------------------------------------------

.offset_x
|08B5C5| dw  -8,  -1,  -1,  -1
|08B5CD| dw -12,  -4, -12,  -4
|08B5D5| dw -16,   0, -16,   0
|08B5DD| dw -16,   0, -16,   0
|08B5E5| dw -17,   1, -17,   1
|08B5ED| dw -19,   3, -19,   3
|08B5F5| dw -19,   3, -19,   3
|08B5FD| dw -19,   3, -19,   3

endpool

;---------------------------------------------------------------------------------------------------

AncillaDraw_BombosBlast:
|08B605| PHX

|08B606| LDA.b #$03
|08B608| STA.b $0C

|08B60A| PHX

|08B60B| TXA
|08B60C| ASL A
|08B60D| TAX

|08B60E| LDA.l $7F5955,X
|08B612| STA.b $08

|08B614| LDA.l $7F5956,X
|08B618| STA.b $09

|08B61A| LDA.l $7F59D5,X
|08B61E| STA.b $0A

|08B620| LDA.l $7F59D6,X
|08B624| STA.b $0B

|08B626| PLX

;---------------------------------------------------------------------------------------------------

|08B627| LDA.l $7F5935,X

|08B62B| CMP.b #$08
|08B62D| BEQ .inactive

|08B62F| LDA.b #$10
|08B631| JSR AllocateOAMInRegionsADF

|08B634| LDY.b #$00

|08B636| LDA.l $7F5935,X
|08B63A| ASL A
|08B63B| ASL A
|08B63C| CLC
|08B63D| ADC.b #$03
|08B63F| STA.b $73

|08B641| TAX

;---------------------------------------------------------------------------------------------------

.next_object
|08B642| LDA.w .char,X
|08B645| CMP.b #$FF
|08B647| BEQ .skip_object

;---------------------------------------------------------------------------------------------------

|08B649| PHX

|08B64A| TXA
|08B64B| ASL A
|08B64C| TAX

|08B64D| REP #$20

|08B64F| LDA.w .offset_y,X
|08B652| CLC
|08B653| ADC.b $08
|08B655| SEC
|08B656| SBC.b $E8
|08B658| STA.b $00

|08B65A| LDA.w .offset_x,X
|08B65D| CLC
|08B65E| ADC.b $0A
|08B660| SEC
|08B661| SBC.b $E2
|08B663| STA.b $02

|08B665| SEP #$20

|08B667| PLX

;---------------------------------------------------------------------------------------------------

|08B668| JSR Ancilla_SetOAM_XY

|08B66B| LDA.w .char,X
|08B66E| STA.b ($90),Y

|08B670| INY

|08B671| LDA.w .prop,X
|08B674| STA.b ($90),Y

|08B676| INY
|08B677| PHY

|08B678| TYA
|08B679| SEC
|08B67A| SBC.b #$04

|08B67C| LSR A
|08B67D| LSR A
|08B67E| TAY

|08B67F| LDA.b #$02
|08B681| STA.b ($92),Y

|08B683| PLY

;---------------------------------------------------------------------------------------------------

.skip_object
|08B684| JSR AllocateOAMInCustomRegion

|08B687| DEX

|08B688| DEC.b $0C
|08B68A| BPL .next_object

;---------------------------------------------------------------------------------------------------

.inactive
|08B68C| PLX

|08B68D| RTS

;===================================================================================================

Ancilla1C_QuakeSpell:
|08B68E| LDA.b $11
|08B690| BNE .only_draw

|08B692| LDA.w $0C54,X
|08B695| CMP.b #$02
|08B697| BEQ .finish_up

|08B699| JSR QuakeSpell_ShakeScreen
|08B69C| JSR QuakeSpell_ControlBolts

|08B69F| BRL QuakeSpell_SpreadBolts

.finish_up
|08B6A2| BRA QuakeSpell_FinishingTouches

;---------------------------------------------------------------------------------------------------

.only_draw
|08B6A4| PHX

|08B6A5| LDX.b #$04

|08B6A7| LDA.l $7F5805,X
|08B6AB| CMP.w QuakeSpellStates,X
|08B6AE| BEQ .bad_branch

|08B6B0| JSR AncillaDraw_QuakeInitialBolts

; [BUG] oops!
.bad_branch
|08B6B3| DEX
|08B6B4| BPL .bad_branch

|08B6B6| PLX

|08B6B7| RTS

;---------------------------------------------------------------------------------------------------

QuakeSpell_FinishingTouches:
|08B6B8| PHX

|08B6B9| JSL CheckMedallionDamageToSprite
|08B6BD| JSL LetsGetReadyToRumble

|08B6C1| PLX

|08B6C2| STZ.w $0C4A,X

|08B6C5| LDA.b #$00 ; LINKSTATE 00
|08B6C7| STA.b $5D

|08B6C9| LDA.b #$01
|08B6CB| STA.w $0AAA

|08B6CE| STZ.w $0324
|08B6D1| STZ.w $031C
|08B6D4| STZ.w $031D

|08B6D7| STZ.b $50
|08B6D9| STZ.b $3D

|08B6DB| STZ.w $0FC1

|08B6DE| STZ.w $011A
|08B6E1| STZ.w $011B
|08B6E4| STZ.w $011C
|08B6E7| STZ.w $011D

;---------------------------------------------------------------------------------------------------

|08B6EA| LDA.b $8A
|08B6EC| CMP.b #$47 ; OW 47
|08B6EE| BNE .no_turtle_rock_trigger

|08B6F0| LDA.l $7EF2C7
|08B6F4| AND.b #$20
|08B6F6| BNE .no_turtle_rock_trigger

|08B6F8| LDY.b #$03
|08B6FA| JSR Ancilla_CheckForEntranceTrigger
|08B6FD| BCC .no_turtle_rock_trigger

|08B6FF| LDA.b #$04
|08B701| STA.w $04C6

|08B704| STZ.b $B0
|08B706| STZ.b $C8

;---------------------------------------------------------------------------------------------------

.no_turtle_rock_trigger
|08B708| LDY.b #$00

|08B70A| LDA.b $3C
|08B70C| BEQ .no_sword_charge

|08B70E| LDA.b $F0
|08B710| AND.b #$80
|08B712| TAY

.no_sword_charge
|08B713| STY.b $3A

|08B715| STZ.b $5E
|08B717| STZ.w $0325

|08B71A| RTS

;===================================================================================================
; TODO analyze RAM
;===================================================================================================
QuakeSpell_ShakeScreen:
|08B71B| REP #$20

|08B71D| LDA.l $7F581E
|08B721| STA.w $011C

|08B724| EOR.w #$FFFF
|08B727| INC A
|08B728| STA.l $7F581E

|08B72C| SEP #$20

|08B72E| LDA.b $30
|08B730| CLC
|08B731| ADC.w $011C
|08B734| STA.b $30

|08B736| RTS

;===================================================================================================

QuakeSpellStates:
|08B737| db $17, $16, $17, $16, $10

;===================================================================================================

QuakeSpell_ControlBolts:
|08B73C| PHX

|08B73D| LDA.w $0C54,X
|08B740| STA.l $7F580F

|08B744| LDA.l $7F580A
|08B748| TAX

;---------------------------------------------------------------------------------------------------

.next_bolt
|08B749| LDA.l $7F5805,X
|08B74D| CMP.w QuakeSpellStates,X
|08B750| BEQ .skip

|08B752| LDA.l $7F5800,X
|08B756| DEC A
|08B757| STA.l $7F5800,X
|08B75B| BPL .just_draw

|08B75D| LDA.b #$01
|08B75F| STA.l $7F5800,X
|08B763| LDA.l $7F5805,X

|08B767| INC A
|08B768| STA.l $7F5805,X

|08B76C| CMP.w QuakeSpellStates,X
|08B76F| BEQ .skip

;---------------------------------------------------------------------------------------------------

|08B771| TXY
|08B772| BNE .dont_go_to_2

|08B774| CMP.b #$02
|08B776| BNE .dont_go_to_2

|08B778| LDA.b #$0C ; SFX2.0C
|08B77A| JSR Ancilla_SFX2_Near

|08B77D| LDA.b #$01
|08B77F| STA.l $7F580A

|08B783| BRA .just_draw

;---------------------------------------------------------------------------------------------------

.dont_go_to_2
|08B785| CPX.b #$01
|08B787| BNE .dont_go_to_3

|08B789| CMP.b #$02
|08B78B| BNE .dont_go_to_3

|08B78D| LDA.b #$04
|08B78F| STA.l $7F580A

|08B793| BRA .just_draw

;---------------------------------------------------------------------------------------------------

.dont_go_to_3
|08B795| CPX.b #$04
|08B797| BNE .just_draw

|08B799| CMP.b #$07
|08B79B| BNE .just_draw

|08B79D| LDA.b #$01
|08B79F| STA.l $7F580F

;---------------------------------------------------------------------------------------------------

.just_draw
|08B7A3| JSR AncillaDraw_QuakeInitialBolts

;---------------------------------------------------------------------------------------------------

.skip
|08B7A6| DEX
|08B7A7| BPL .next_bolt

|08B7A9| PLX

|08B7AA| LDA.l $7F580F
|08B7AE| STA.w $0C54,X

|08B7B1| RTS

;===================================================================================================

pool AncillaDraw_QuakeInitialBolts

.offset
|08B7B2| db $00
|08B7B3| db $18
|08B7B4| db $00
|08B7B5| db $18
|08B7B6| db $2F

endpool

;---------------------------------------------------------------------------------------------------

AncillaDraw_QuakeInitialBolts:
|08B7B7| PHX

|08B7B8| LDA.l $7F5805,X
|08B7BC| CLC
|08B7BD| ADC.w .offset,X
|08B7C0| ASL A
|08B7C1| TAY

|08B7C2| LDA.w InitialQuakeBoltPointers+0,Y
|08B7C5| STA.b $72

|08B7C7| LDA.w InitialQuakeBoltPointers+1,Y
|08B7CA| STA.b $73

|08B7CC| LDA.w InitialQuakeBoltPointers+2,Y
|08B7CF| STA.b $74

|08B7D1| LDA.w InitialQuakeBoltPointers+3,Y
|08B7D4| STA.b $75

;---------------------------------------------------------------------------------------------------

|08B7D6| REP #$20

|08B7D8| LDA.b $74
|08B7DA| SEC
|08B7DB| SBC.b $72
|08B7DD| STA.b $74

|08B7DF| SEP #$20

|08B7E1| LDX.b #$00

;---------------------------------------------------------------------------------------------------

.next_bolt
|08B7E3| TXY

|08B7E4| REP #$20

|08B7E6| LDA.b ($72),Y
|08B7E8| AND.w #$00FF
|08B7EB| CMP.w #$0080
|08B7EE| BCC .positive_x

|08B7F0| ORA.w #$FF00

.positive_x
|08B7F3| STA.b $02

|08B7F5| LDA.l $7F580D
|08B7F9| CLC
|08B7FA| ADC.b $02
|08B7FC| SEC
|08B7FD| SBC.b $E2
|08B7FF| STA.b $02

|08B801| INX
|08B802| TXY

|08B803| LDA.b ($72),Y
|08B805| AND.w #$00FF
|08B808| CMP.w #$0080
|08B80B| BCC .positive_y

|08B80D| ORA.w #$FF00

.positive_y
|08B810| STA.b $00

|08B812| LDA.l $7F580B
|08B816| CLC
|08B817| ADC.b $00
|08B819| SEC
|08B81A| SBC.b $E8
|08B81C| STA.b $00

|08B81E| INX

|08B81F| SEP #$20

|08B821| PHX

|08B822| LDX.b #$F0

|08B824| LDA.b $01
|08B826| BNE .off_screen

|08B828| LDA.b $03
|08B82A| BNE .off_screen

|08B82C| LDY.b #$00

|08B82E| LDA.b $02
|08B830| STA.b ($90),Y

|08B832| LDA.b $00
|08B834| CMP.b #$F0
|08B836| BCS .off_screen

|08B838| TAX

.off_screen
|08B839| INC.b $90

|08B83B| LDY.b #$00

|08B83D| TXA
|08B83E| STA.b ($90),Y

|08B840| INC.b $90

|08B842| PLX
|08B843| PHX

|08B844| TXY

|08B845| LDA.b ($72),Y
|08B847| AND.b #$0F
|08B849| TAX

|08B84A| LDA.w QuakeBoltChar,X
|08B84D| LDY.b #$00
|08B84F| STA.b ($90),Y

|08B851| INC.b $90

;---------------------------------------------------------------------------------------------------

|08B853| PLX
|08B854| TXY

|08B855| LDA.b ($72),Y
|08B857| AND.b #$C0
|08B859| ORA.b #$3C

|08B85B| LDY.b #$00
|08B85D| STA.b ($90),Y

|08B85F| INC.b $90

|08B861| LDY.b #$00
|08B863| LDA.b #$02
|08B865| STA.b ($92),Y

|08B867| INC.b $92

|08B869| INX
|08B86A| CPX.b $74
|08B86C| BEQ .done

|08B86E| BRL .next_bolt

;---------------------------------------------------------------------------------------------------

.done
|08B871| PLX

|08B872| RTS

;===================================================================================================

QuakeSpell_SpreadBolts:
|08B873| LDA.w $0C54,X
|08B876| CMP.b #$01
|08B878| BNE .exit

|08B87A| LDA.w $0C68,X
|08B87D| BNE .proceed_to_bolts

|08B87F| LDA.b #$02
|08B881| STA.w $0C68,X

|08B884| LDA.w $0C5E,X
|08B887| INC A
|08B888| STA.w $0C5E,X

|08B88B| CMP.b #$37
|08B88D| BNE .proceed_to_bolts

|08B88F| LDA.b #$02
|08B891| STA.w $0C54,X

.exit
|08B894| RTS

;---------------------------------------------------------------------------------------------------

.proceed_to_bolts
|08B895| BRA AncillaDraw_QuakeSpreadBolts

;===================================================================================================

QuakeBoltChar:
|08B897| db $40, $42, $44, $46
|08B89B| db $48, $4A, $4C, $4E
|08B89F| db $60, $62, $64, $66
|08B8A3| db $68, $6A, $63

;===================================================================================================

AncillaDraw_QuakeSpreadBolts:
|08B8A6| PHX

|08B8A7| LDA.w $0C5E,X
|08B8AA| ASL A
|08B8AB| TAY

|08B8AC| LDA.w SpreadQuakeBoltPointers+0,Y
|08B8AF| STA.b $72

|08B8B1| LDA.w SpreadQuakeBoltPointers+1,Y
|08B8B4| STA.b $73

|08B8B6| LDA.w SpreadQuakeBoltPointers+2,Y
|08B8B9| STA.b $74

|08B8BB| LDA.w SpreadQuakeBoltPointers+3,Y
|08B8BE| STA.b $75

|08B8C0| REP #$20

|08B8C2| LDA.b $74
|08B8C4| SEC
|08B8C5| SBC.b $72
|08B8C7| STA.b $74

|08B8C9| SEP #$20

|08B8CB| LDX.b #$00

;---------------------------------------------------------------------------------------------------

.next_bolt
|08B8CD| TXY

|08B8CE| LDA.b ($72),Y
|08B8D0| LDY.b #$00
|08B8D2| STA.b ($90),Y

|08B8D4| INC.b $90

;---------------------------------------------------------------------------------------------------

|08B8D6| INX
|08B8D7| TXY

|08B8D8| LDA.b ($72),Y
|08B8DA| LDY.b #$00
|08B8DC| STA.b ($90),Y

|08B8DE| INC.b $90

;---------------------------------------------------------------------------------------------------

|08B8E0| INX
|08B8E1| PHX
|08B8E2| TXY

|08B8E3| LDA.b ($72),Y
|08B8E5| AND.b #$0F
|08B8E7| TAX

|08B8E8| LDA.w QuakeBoltChar,X
|08B8EB| LDY.b #$00
|08B8ED| STA.b ($90),Y

|08B8EF| INC.b $90

;---------------------------------------------------------------------------------------------------

|08B8F1| PLX
|08B8F2| TXY

|08B8F3| LDA.b ($72),Y
|08B8F5| AND.b #$C0
|08B8F7| ORA.b #$3C

|08B8F9| LDY.b #$00

|08B8FB| STA.b ($90),Y

|08B8FD| INC.b $90

;---------------------------------------------------------------------------------------------------

|08B8FF| TXY
|08B900| LDA.b ($72),Y
|08B902| AND.b #$30

|08B904| LSR A ; /16
|08B905| LSR A
|08B906| LSR A
|08B907| LSR A

|08B908| LDY.b #$00

|08B90A| STA.b ($92),Y

|08B90C| INC.b $92

|08B90E| JSR AllocateOAMInCustomRegion

|08B911| INX
|08B912| CPX.b $74
|08B914| BNE .next_bolt

;---------------------------------------------------------------------------------------------------

|08B916| PLX

|08B917| RTS

;===================================================================================================

PowderDraw:

.anim_step
|08B918| db $0D, $0E, $0F, $00, $01
|08B91D| db $02, $03, $04, $05, $06

|08B922| db $0A, $0B, $0C, $00, $01
|08B927| db $02, $03, $04, $05, $06

|08B92C| db $10, $11, $12, $00, $01
|08B931| db $02, $03, $04, $05, $06

|08B936| db $07, $08, $09, $00, $01
|08B93B| db $02, $03, $04, $05, $06

;---------------------------------------------------------------------------------------------------

.group_offset
|08B940| db $00
|08B941| db $0A
|08B942| db $14
|08B943| db $1E

;---------------------------------------------------------------------------------------------------

.offset_y
|08B944| dw -20, -15, -13,  -7, -18
|08B94E| dw -13, -13, -13, -20, -13
|08B958| dw -13,  -8, -20, -13, -13
|08B962| dw  -8, -19, -12, -12

|08B96A| dw  -7, -18, -11, -11,  -6
|08B974| dw -17, -10, -10,  -5, -16
|08B97E| dw -14, -12,  -9, -17, -14
|08B988| dw -12,  -8, -18, -14

|08B990| dw -13,  -6, -33, -31, -29
|08B99A| dw -26, -28, -25, -23, -19
|08B9A4| dw -22, -18, -17, -10,  -2
|08B9AE| dw   0,   2,   5,  -9

|08B9B6| dw  -6,  -4,   0, -16, -12
|08B9C0| dw -11,  -4, -16, -14, -12
|08B9CA| dw  -9, -17, -14, -12,  -8
|08B9D4| dw -18, -14, -13,  -6

;---------------------------------------------------------------------------------------------------

.offset_x
|08B9DC| dw  -5, -12,   2,  -9,  -7
|08B9E6| dw -10,  -6,  -2,  -6, -12
|08B9F0| dw   1,  -6,  -6, -12,   1
|08B9FA| dw  -6,  -6, -12,   1

|08BA02| dw  -6,  -6, -12,   1,  -6
|08BA0C| dw  -6, -12,   1,  -6, -17
|08BA16| dw -23, -14, -19, -11, -18
|08BA20| dw  -9, -13,  -4, -13

|08BA28| dw  -1,  -8,  -3,  -9,   0
|08BA32| dw  -5,  -3, -10,  -1,  -5
|08BA3C| dw  -4, -13,  -1,  -8,  -3
|08BA46| dw  -9,   0,  -5,  -3

|08BA4E| dw -10,  -1,  -5,  -3, -13
|08BA58| dw  -1,  -8,   9,  15,   6
|08BA62| dw  11,   3,  10,   1,   5
|08BA6C| dw  -4,   5,  -7,   0

;---------------------------------------------------------------------------------------------------

.char
|08BA74| db $09, $0A, $0A, $09, $09

|08BA79| db $09, $09, $09, $09, $09

|08BA7E| db $09, $09, $09, $09, $09

|08BA83| db $09, $09, $09, $09, $09

;---------------------------------------------------------------------------------------------------

.prop
|08BA88| db $68, $24, $A2, $28, $68
|08BA8D| db $E2, $28, $A4, $68, $E2
|08BA92| db $A4, $28, $22, $A4, $E8
|08BA97| db $62, $24, $A8, $E2

|08BA9B| db $64, $28, $A2, $E4, $68
|08BAA0| db $22, $A4, $E8, $62, $E2
|08BAA5| db $A4, $E8, $64, $E8, $A8
|08BAAA| db $E4, $62, $E4, $A8

|08BAAE| db $E2, $68, $E2, $A4, $E8
|08BAB3| db $64, $E8, $A8, $E4, $62
|08BAB8| db $E4, $A8, $E2, $68, $E2
|08BABD| db $A4, $E8, $64, $E8

|08BAC1| db $A8, $E4, $62, $E4, $A8
|08BAC6| db $E2, $68, $E2, $A4, $E8
|08BACB| db $64, $E8, $A8, $E4, $62
|08BAD0| db $E4, $A8, $E2, $68

;===================================================================================================

Ancilla1A_PowderDust:
|08BAD4| LDA.b $11
|08BAD6| BNE .just_draw

|08BAD8| JSR Powder_CheckDamageToSprites

|08BADB| DEC.w $03B1,X
|08BADE| BPL .just_draw

;---------------------------------------------------------------------------------------------------

|08BAE0| LDA.b #$01
|08BAE2| STA.w $03B1,X

|08BAE5| LDY.w $0C72,X

|08BAE8| LDA.w PowderDraw.group_offset,Y
|08BAEB| STA.b $00

|08BAED| LDA.w $0C5E,X
|08BAF0| INC A
|08BAF1| CMP.b #$0A
|08BAF3| BNE .dont_terminate

|08BAF5| STZ.w $0C4A,X
|08BAF8| STZ.w $0333

|08BAFB| RTS

;---------------------------------------------------------------------------------------------------

.dont_terminate
|08BAFC| STA.w $0C5E,X

|08BAFF| CLC
|08BB00| ADC.b $00
|08BB02| TAY

|08BB03| LDA.w PowderDraw.anim_step,Y
|08BB06| STA.w $03C2,X

.just_draw
|08BB09| LDA.w $0C90,X
|08BB0C| JSR AllocateOAMInRegionsBE

;===================================================================================================

AncillaDraw_Powder:
|08BB0F| JSR Ancilla_PrepOAMCoord

|08BB12| PHX

|08BB13| LDA.b $00
|08BB15| STA.b $06

|08BB17| LDA.b $01
|08BB19| STA.b $07

|08BB1B| LDA.b $02
|08BB1D| STA.b $08

|08BB1F| LDA.b $03
|08BB21| STA.b $09

|08BB23| LDA.w $03C2,X
|08BB26| STA.b $0C

|08BB28| ASL A
|08BB29| ASL A
|08BB2A| STA.b $0A

|08BB2C| ASL A
|08BB2D| STA.b $04

;---------------------------------------------------------------------------------------------------

|08BB2F| LDA.b #$03
|08BB31| STA.w $0072

|08BB34| LDY.b #$00

.next_object
|08BB36| LDX.b $04

|08BB38| REP #$20

|08BB3A| LDA.b $06
|08BB3C| CLC
|08BB3D| ADC.w PowderDraw.offset_y,X
|08BB40| STA.b $00

|08BB42| LDA.b $08
|08BB44| CLC
|08BB45| ADC.w PowderDraw.offset_x,X
|08BB48| STA.b $02

|08BB4A| SEP #$20

|08BB4C| JSR Ancilla_SetOAM_XY

|08BB4F| LDX.b $0C

|08BB51| LDA.w PowderDraw.char,X
|08BB54| STA.b ($90),Y

|08BB56| INY

|08BB57| LDX.b $0A

|08BB59| LDA.w PowderDraw.prop,X
|08BB5C| AND.b #$CF
|08BB5E| ORA.b $65
|08BB60| STA.b ($90),Y

|08BB62| INY
|08BB63| PHY

|08BB64| TYA
|08BB65| SEC
|08BB66| SBC.b #$04
|08BB68| LSR A
|08BB69| LSR A
|08BB6A| TAY

|08BB6B| LDA.b #$00
|08BB6D| STA.b ($92),Y

|08BB6F| PLY

|08BB70| INC.b $04
|08BB72| INC.b $04

|08BB74| INC.b $0A

|08BB76| DEC.b $72
|08BB78| BPL .next_object

;---------------------------------------------------------------------------------------------------

|08BB7A| PLX

|08BB7B| RTS

;===================================================================================================

Powder_CheckDamageToSprites:
|08BB7C| LDY.b #$0F

.next_sprite
|08BB7E| TYA
|08BB7F| EOR.b $1A
|08BB81| AND.b #$03
|08BB83| BNE .skip_sprite

|08BB85| LDA.w $0DD0,Y
|08BB88| CMP.b #$09
|08BB8A| BNE .skip_sprite

|08BB8C| LDA.w $0CD2,Y
|08BB8F| AND.b #$20
|08BB91| BNE .skip_sprite

;---------------------------------------------------------------------------------------------------

|08BB93| JSR Ancilla_SetupBasicHitbox

|08BB96| PHY
|08BB97| PHX

|08BB98| TYX
|08BB99| JSL SetupSpriteHitbox_long

|08BB9D| PLX
|08BB9E| PLY

|08BB9F| JSL CheckIfHitboxesOverlap_long
|08BBA3| BCC .skip_sprite

|08BBA5| LDA.w $0E20,Y
|08BBA8| CMP.b #$0B ; SPRITE 0B
|08BBAA| BNE .not_cucco_easter_egg

|08BBAC| LDA.b $1B ; this gets compared to #$0D weirdly...
|08BBAE| BEQ .not_cucco_easter_egg

|08BBB0| LDA.w $048E ; ROOM 0101
|08BBB3| DEC A
|08BBB4| BNE .not_cucco_easter_egg

|08BBB6| BRA .special_transform

;---------------------------------------------------------------------------------------------------

.not_cucco_easter_egg
|08BBB8| CMP.b #$0D ; SPRITE 0D
|08BBBA| BNE .not_buzz_blob

|08BBBC| LDA.w $0EB0,Y
|08BBBF| BNE .skip_sprite

.special_transform
|08BBC1| LDA.b #$01
|08BBC3| STA.w $0EB0,Y

|08BBC6| PHX
|08BBC7| PHY

|08BBC8| TYX
|08BBC9| JSL SpawnPoofGarnish

|08BBCD| PLY
|08BBCE| PLX

|08BBCF| BRA .skip_sprite

;---------------------------------------------------------------------------------------------------

.not_buzz_blob
|08BBD1| PHX
|08BBD2| PHY

|08BBD3| TYX

|08BBD4| LDA.b #$0A
|08BBD6| JSL CheckAncillaDamageToSprite_preset

|08BBDA| PLY
|08BBDB| PLX

.skip_sprite
|08BBDC| DEY
|08BBDD| BPL .next_sprite

|08BBDF| RTS

;===================================================================================================

Ancilla1D_ScreenShake:
|08BBE0| LDA.b $11
|08BBE2| BNE .alert

|08BBE4| DEC.w $0C5E,X
|08BBE7| BPL .delay

|08BBE9| STZ.w $011A
|08BBEC| STZ.w $011B
|08BBEF| STZ.w $011C
|08BBF2| STZ.w $011D

|08BBF5| STZ.w $0C4A,X

|08BBF8| RTS

;---------------------------------------------------------------------------------------------------

.delay
|08BBF9| JSL DashTremor_Twiddle

|08BBFD| LDA.b $00
|08BBFF| STA.w $011A,Y

|08BC02| LDA.b $01
|08BC04| STA.w $011B,Y

|08BC07| TYA
|08BC08| LSR A
|08BC09| EOR.b #$01
|08BC0B| TAY

|08BC0C| LDA.w $0030,Y
|08BC0F| CLC
|08BC10| ADC.b $00
|08BC12| STA.w $0030,Y

.alert
|08BC15| BRL AlertSprites

;===================================================================================================

pool Ancilla1E_DashDust

.offset_y
|08BC18| dw  -2,   0,  -1
|08BC1E| dw  -3,  -2,   0
|08BC24| dw  -3,   0,  -1
|08BC2A| dw  -3,  -1,  -1
|08BC30| dw  -2,  -1,  -1
|08BC36| dw  -2,   0,  -1
|08BC3C| dw  -3,  -2,   0
|08BC42| dw  -3,   0,  -1
|08BC48| dw  -3,  -1,  -1
|08BC4E| dw  -2,  -1,  -1

.offset_x
|08BC54| dw  10,   5,  -1
|08BC5A| dw   0,  10,   5
|08BC60| dw   0,   5,  -1
|08BC66| dw   0,  -1,  -1
|08BC6C| dw   9,  -1,  -1
|08BC72| dw  10,   5,  -1
|08BC78| dw   0,  10,   5
|08BC7E| dw   0,   5,  -1
|08BC84| dw   0,  -1,  -1
|08BC8A| dw   9,  -1,  -1

.char
|08BC90| db $CF, $A9, $FF
|08BC93| db $A9, $DF, $CF
|08BC96| db $CF, $DF, $FF
|08BC99| db $DF, $FF, $FF
|08BC9C| db $A9, $FF, $FF
|08BC9F| db $CF, $CF, $FF
|08BCA2| db $CF, $DF, $CF
|08BCA5| db $CF, $DF, $FF
|08BCA8| db $DF, $FF, $FF
|08BCAB| db $CF, $FF, $FF

.offset_from_link
|08BCAE| dw   0
|08BCB0| dw   0
|08BCB2| dw   4
|08BCB4| dw  -4

endpool

;---------------------------------------------------------------------------------------------------

Ancilla1E_DashDust:
|08BCB6| LDA.w $0C54,X
|08BCB9| BEQ .stationary

|08BCBB| JSL DashDust_Motive

|08BCBF| BRA .exit

;---------------------------------------------------------------------------------------------------

.stationary
|08BCC1| LDA.w $0C68,X
|08BCC4| BNE .delay

|08BCC6| LDA.b #$03
|08BCC8| STA.w $0C68,X

|08BCCB| LDA.w $0C5E,X
|08BCCE| INC A
|08BCCF| STA.w $0C5E,X

|08BCD2| CMP.b #$05
|08BCD4| BEQ .exit

|08BCD6| CMP.b #$06
|08BCD8| BNE .delay

|08BCDA| STZ.w $0C4A,X

.exit
|08BCDD| RTS

;---------------------------------------------------------------------------------------------------

.delay
|08BCDE| LDA.w $0C5E,X
|08BCE1| CMP.b #$05
|08BCE3| BEQ .exit

;---------------------------------------------------------------------------------------------------

|08BCE5| JSR Ancilla_PrepOAMCoord

|08BCE8| PHX

|08BCE9| LDA.b $00
|08BCEB| STA.b $06

|08BCED| LDA.b $01
|08BCEF| STA.b $07

|08BCF1| LDA.b $02
|08BCF3| STA.b $08

|08BCF5| LDA.b $03
|08BCF7| STA.b $09

|08BCF9| LDY.b $2F

|08BCFB| LDA.w .offset_from_link+0,Y
|08BCFE| STA.b $0C

|08BD00| LDA.w .offset_from_link+1,Y
|08BD03| STA.b $0D

|08BD05| LDY.b #$00

|08BD07| LDA.w $0351
|08BD0A| CMP.b #$01
|08BD0C| BNE .not_in_water

|08BD0E| LDY.b #$05

.not_in_water
|08BD10| STY.b $04

|08BD12| LDA.w $0C5E,X
|08BD15| CLC
|08BD16| ADC.b $04
|08BD18| STA.b $04

|08BD1A| ASL A
|08BD1B| CLC
|08BD1C| ADC.b $04
|08BD1E| STA.b $04

;---------------------------------------------------------------------------------------------------

|08BD20| LDA.b #$02
|08BD22| STA.b $72

|08BD24| LDY.b #$00

.next_object
|08BD26| LDX.b $04

|08BD28| LDA.w .char,X
|08BD2B| CMP.b #$FF
|08BD2D| BEQ .skip_object

|08BD2F| TXA
|08BD30| ASL A
|08BD31| TAX

|08BD32| REP #$20

|08BD34| LDA.b $06
|08BD36| CLC
|08BD37| ADC.w .offset_y,X
|08BD3A| STA.b $00

|08BD3C| LDA.b $08
|08BD3E| CLC
|08BD3F| ADC.w .offset_x,X

|08BD42| CLC
|08BD43| ADC.b $0C
|08BD45| STA.b $02

;---------------------------------------------------------------------------------------------------

|08BD47| SEP #$20

|08BD49| JSR Ancilla_SetOAM_XY

|08BD4C| LDX.b $04

|08BD4E| LDA.w .char,X
|08BD51| STA.b ($90),Y

|08BD53| INY

|08BD54| LDA.b #$04
|08BD56| ORA.b $65
|08BD58| STA.b ($90),Y

|08BD5A| INY
|08BD5B| PHY

|08BD5C| TYA
|08BD5D| SEC
|08BD5E| SBC.b #$04
|08BD60| LSR A
|08BD61| LSR A
|08BD62| TAY

|08BD63| LDA.b #$00
|08BD65| STA.b ($92),Y

|08BD67| PLY

;---------------------------------------------------------------------------------------------------

.skip_object
|08BD68| INC.b $04

|08BD6A| DEC.b $72
|08BD6C| BPL .next_object

;---------------------------------------------------------------------------------------------------

|08BD6E| PLX

|08BD6F| RTS

;===================================================================================================

pool Hookshot

.char
|08BD70| db $09, $0A, $FF ; up
|08BD73| db $09, $0A, $FF ; down
|08BD76| db $09, $FF, $0A ; left
|08BD79| db $09, $FF, $0A ; right

.prop
|08BD7C| db $00, $00, $FF ; up
|08BD7F| db $80, $80, $FF ; down
|08BD82| db $40, $FF, $40 ; left
|08BD85| db $00, $FF, $00 ; right

.box_size_y
|08BD88| dw   8 ; up
|08BD8A| dw  -9 ; down - This is larger, but does it matter?
|08BD8C| dw   0 ; left
|08BD8E| dw   0 ; right

.box_size_x
|08BD90| dw   0 ; up
|08BD92| dw   0 ; down
|08BD94| dw   8 ; left
|08BD96| dw  -8 ; right

endpool

;===================================================================================================

Ancilla1F_Hookshot:
|08BD98| LDA.b $11
|08BD9A| BNE .just_draw

; Play the chain SFX every 8 frames
|08BD9C| LDA.w $0C68,X
|08BD9F| BNE .no_chain_sfx

|08BDA1| LDA.b #$07
|08BDA3| STA.w $0C68,X

|08BDA6| LDA.b #$0A ; SFX2.0A
|08BDA8| JSR Ancilla_SFX2_Pan

;---------------------------------------------------------------------------------------------------

.no_chain_sfx
; Is the hookshot currently dragging link?
; If it is, just draw.
|08BDAB| LDA.w $037E
|08BDAE| BNE .just_draw

|08BDB0| JSR AncillaMoveY
|08BDB3| JSR AncillaMoveX

; This flags whether the hook is extending or retracting
|08BDB6| LDA.w $0C54,X
|08BDB9| BEQ Hookshot_Extending

; Tick the growth level
; Delete self when fully retracted
; Effectively acts as a timer
|08BDBB| DEC.w $0C5E,X
|08BDBE| BMI Hookshot_DeleteSelf

.just_draw
|08BDC0| BRL AncillaDraw_Hookshot

;===================================================================================================

Hookshot_DeleteSelf:
|08BDC3| STZ.w $0C4A,X

|08BDC6| RTS

;===================================================================================================

Hookshot_Extending:
; Extend self
|08BDC7| LDA.w $0C5E,X
|08BDCA| INC A
|08BDCB| STA.w $0C5E,X

; Max of 32 ticks
; Note that this is BNE, not BCC
; So it doesn't retract until it is exactly 32
|08BDCE| CMP.b #$20
|08BDD0| BNE .not_fully_extended

; Set growth to retraction
|08BDD2| LDA.b #$01
|08BDD4| STA.w $0C54,X

; set Y velocity
|08BDD7| LDA.w $0C22,X
|08BDDA| EOR.b #$FF
|08BDDC| INC A
|08BDDD| STA.w $0C22,X

; set X velocity
|08BDE0| LDA.w $0C2C,X
|08BDE3| EOR.b #$FF
|08BDE5| INC A
|08BDE6| STA.w $0C2C,X

;---------------------------------------------------------------------------------------------------

.not_fully_extended
|08BDE9| JSR Hookshot_ShouldIEvenBotherWithTiles
|08BDEC| BCC .do_bother

|08BDEE| BRL AncillaDraw_Hookshot

;---------------------------------------------------------------------------------------------------

.do_bother
|08BDF1| LDA.w $0385,X
|08BDF4| BNE .ignore_collision

|08BDF6| LDA.w $0C54,X
|08BDF9| BNE .ignore_collision

|08BDFB| JSR Ancilla_CheckSpriteCollision
|08BDFE| BCC .ignore_collision

|08BE00| LDA.w $0C54,X
|08BE03| BNE .ignore_collision

;---------------------------------------------------------------------------------------------------
; Change parity of hook and invert speed
;---------------------------------------------------------------------------------------------------
|08BE05| LDA.b #$01
|08BE07| STA.w $0C54,X

|08BE0A| LDA.w $0C22,X
|08BE0D| EOR.b #$FF
|08BE0F| INC A
|08BE10| STA.w $0C22,X

|08BE13| LDA.w $0C2C,X
|08BE16| EOR.b #$FF
|08BE18| INC A
|08BE19| STA.w $0C2C,X

|08BE1C| BRA .ignore_collision

;---------------------------------------------------------------------------------------------------

#UNREACHABLE_08BE1E:
|08BE1E| BRL Hookshot_ExtraCollisionLogic.branching_here_unreachable

;---------------------------------------------------------------------------------------------------

.ignore_collision
|08BE21| JSL Hookshot_CheckTileCollision

|08BE25| STZ.b $00

|08BE27| LDA.b $1B
|08BE29| BEQ .outdoors_ledge

|08BE2B| LDY.b #$01

|08BE2D| LDA.w $0C72,X
|08BE30| AND.b #$02
|08BE32| BNE .indoor_horizontal_ledge

|08BE34| LDA.w $036D
|08BE37| LSR A
|08BE38| LSR A
|08BE39| LSR A
|08BE3A| LSR A
|08BE3B| STA.b $00

|08BE3D| LDY.b #$00

;---------------------------------------------------------------------------------------------------

.indoor_horizontal_ledge
|08BE3F| LDA.w $036D,Y
|08BE42| ORA.b $00
|08BE44| AND.b #$03
|08BE46| STA.b $00

|08BE48| BEQ .not_ledge

|08BE4A| BRA .ledge_collision

;---------------------------------------------------------------------------------------------------

.outdoors_ledge
|08BE4C| LDA.w $036E
|08BE4F| AND.b #$03
|08BE51| ORA.w $036D
|08BE54| ORA.w $0370
|08BE57| AND.b #$33
|08BE59| BEQ .not_ledge

;---------------------------------------------------------------------------------------------------

.ledge_collision
|08BE5B| DEC.w $0394,X
|08BE5E| BPL .not_ledge

|08BE60| LDY.w $0380,X
|08BE63| BEQ .last_tile_passable

|08BE65| LDA.b $00
|08BE67| AND.b #$03
|08BE69| BNE .hit_indoor_ledge

|08BE6B| CPY.b $76
|08BE6D| BEQ .last_tile_passable

;---------------------------------------------------------------------------------------------------

.hit_indoor_ledge
|08BE6F| LDA.b #$02
|08BE71| STA.w $0394,X

|08BE74| DEC.w $0385,X
|08BE77| BPL .not_ledge

|08BE79| STZ.w $0385,X

|08BE7C| BRA .not_ledge

.last_tile_passable
|08BE7E| INC.w $0385,X

|08BE81| LDA.b $76
|08BE83| STA.w $0380,X

|08BE86| LDA.b #$01
|08BE88| STA.w $0394,X

;---------------------------------------------------------------------------------------------------

.not_ledge
|08BE8B| LDA.w $0385,X
|08BE8E| BNE .just_draw_already

|08BE90| LDA.w $0394,X
|08BE93| BMI Hookshot_ExtraCollisionLogic

|08BE95| DEC.w $0394,X

.just_draw_already
|08BE98| BRL AncillaDraw_Hookshot

;===================================================================================================

Hookshot_ExtraCollisionLogic:
|08BE9B| LDA.b $0E

|08BE9D| LSR A ; /16
|08BE9E| LSR A
|08BE9F| LSR A
|08BEA0| LSR A

|08BEA1| ORA.b $0E
|08BEA3| ORA.b $58
|08BEA5| ORA.b $0C
|08BEA7| AND.b #$03

|08BEA9| BEQ .no_collision

|08BEAB| LDA.w $0C54,X
|08BEAE| BNE .no_collision

|08BEB0| LDA.b #$01
|08BEB2| STA.w $0C54,X

|08BEB5| LDA.w $0C22,X
|08BEB8| EOR.b #$FF
|08BEBA| INC A
|08BEBB| STA.w $0C22,X

|08BEBE| LDA.w $0C2C,X
|08BEC1| EOR.b #$FF
|08BEC3| INC A
|08BEC4| STA.w $0C2C,X

|08BEC7| LDA.w $02F6
|08BECA| AND.b #$03
|08BECC| BNE .no_collision

;---------------------------------------------------------------------------------------------------

|08BECE| PHX

|08BECF| LDY.b #$01
|08BED1| LDA.b #$06 ; ANCILLA 06
|08BED3| JSL AncillaAdd_HookshotWallClink

|08BED7| PLX

|08BED8| LDY.b #$06 ; SFX2.06

|08BEDA| LDA.w $02F6
|08BEDD| AND.b #$30
|08BEDF| BNE .key_door

|08BEE1| LDY.b #$05 ; SFX2.05

.key_door
|08BEE3| TYA
|08BEE4| JSR Ancilla_SFX2_Pan

.no_collision
|08BEE7| LDA.w $02F6
|08BEEA| AND.b #$03
|08BEEC| BEQ AncillaDraw_Hookshot

;---------------------------------------------------------------------------------------------------

.branching_here_unreachable
|08BEEE| LDA.w $0C5E,X
|08BEF1| CMP.b #$04
|08BEF3| BCS .dont_delete_self

|08BEF5| BRL Hookshot_DeleteSelf

.dont_delete_self
|08BEF8| LDA.b #$01
|08BEFA| STA.w $037E

|08BEFD| STX.w $039D

;===================================================================================================

AncillaDraw_Hookshot:
|08BF00| JSR Ancilla_PrepOAMCoord

|08BF03| LDA.w $0385,X
|08BF06| BEQ .not_max_priority

|08BF08| LDA.b #$30
|08BF0A| STA.b $65

.not_max_priority
|08BF0C| REP #$20

|08BF0E| LDA.b $00
|08BF10| STA.b $04

|08BF12| LDA.b $02
|08BF14| STA.b $06

|08BF16| SEP #$20

|08BF18| PHX

|08BF19| LDA.w $0C72,X
|08BF1C| STA.b $08

|08BF1E| ASL A
|08BF1F| CLC
|08BF20| ADC.b $08
|08BF22| STA.b $0A

|08BF24| TAX

;---------------------------------------------------------------------------------------------------

|08BF25| LDA.b #$02
|08BF27| STA.b $08

|08BF29| LDY.b #$00

.next_object
|08BF2B| LDX.b $0A

|08BF2D| LDA.w Hookshot.char,X
|08BF30| CMP.b #$FF
|08BF32| BEQ .skip

|08BF34| JSR Ancilla_SetOAM_XY

|08BF37| LDX.b $0A

|08BF39| LDA.w Hookshot.char,X
|08BF3C| STA.b ($90),Y

|08BF3E| INY

|08BF3F| LDA.w Hookshot.prop,X
|08BF42| ORA.b #$02
|08BF44| ORA.b $65
|08BF46| STA.b ($90),Y

|08BF48| INY
|08BF49| PHY

|08BF4A| TYA
|08BF4B| SEC
|08BF4C| SBC.b #$04
|08BF4E| LSR A
|08BF4F| LSR A
|08BF50| TAY

|08BF51| LDA.b #$00
|08BF53| STA.b ($92),Y

|08BF55| PLY

.skip
|08BF56| INC.b $0A

|08BF58| LDA.b $02
|08BF5A| CLC
|08BF5B| ADC.b #$08
|08BF5D| STA.b $02

|08BF5F| DEC.b $08
|08BF61| BMI AncillaDraw_HookshotChain

;---------------------------------------------------------------------------------------------------

|08BF63| LDA.b $08
|08BF65| BNE .next_object

|08BF67| LDA.b $00
|08BF69| CLC
|08BF6A| ADC.b #$08
|08BF6C| STA.b $00

|08BF6E| LDA.b $06
|08BF70| STA.b $02

|08BF72| BRA .next_object

;===================================================================================================

AncillaDraw_HookshotChain:
|08BF74| PLX
|08BF75| PHX

|08BF76| STZ.b $0A
|08BF78| STZ.b $0B
|08BF7A| STZ.b $0C
|08BF7C| STZ.b $0D

|08BF7E| LDA.w $0C5E,X
|08BF81| LSR A
|08BF82| CMP.b #$07
|08BF84| BCC .no_scaling

|08BF86| SEC
|08BF87| SBC.b #$07
|08BF89| STA.b $0A
|08BF8B| STA.b $0C

|08BF8D| LDA.b #$06

.no_scaling
|08BF8F| STA.b $08
|08BF91| BNE .at_least_one_link

|08BF93| BRL .exit

;---------------------------------------------------------------------------------------------------

.at_least_one_link
|08BF96| LDA.w $0C72,X
|08BF99| AND.b #$01
|08BF9B| BEQ .up_or_left

|08BF9D| LDA.b $0A
|08BF9F| EOR.b #$FF
|08BFA1| INC A
|08BFA2| STA.b $0A
|08BFA4| STA.b $0C
|08BFA6| BEQ .up_or_left

|08BFA8| LDA.b #$FF
|08BFAA| STA.b $0B
|08BFAC| STA.b $0D

.up_or_left
|08BFAE| REP #$20

|08BFB0| LDA.w $0C72,X
|08BFB3| ASL A
|08BFB4| AND.w #$00FF
|08BFB7| TAX

;---------------------------------------------------------------------------------------------------

|08BFB8| LDA.w Hookshot.box_size_y,X
|08BFBB| BNE .use_actual_y

|08BFBD| LDA.b $04
|08BFBF| CLC
|08BFC0| ADC.w #$0004
|08BFC3| STA.b $04

;---------------------------------------------------------------------------------------------------

.use_actual_y
|08BFC5| LDA.w Hookshot.box_size_x,X
|08BFC8| BNE .next_object

|08BFCA| LDA.b $06
|08BFCC| CLC
|08BFCD| ADC.w #$0004
|08BFD0| STA.b $06

|08BFD2| SEP #$20

;---------------------------------------------------------------------------------------------------

.next_object
|08BFD4| REP #$20

|08BFD6| LDA.w Hookshot.box_size_y,X
|08BFD9| BEQ .dont_add_y

|08BFDB| CLC
|08BFDC| ADC.b $0A

.dont_add_y
|08BFDE| CLC
|08BFDF| ADC.b $04
|08BFE1| STA.b $04
|08BFE3| STA.b $00

|08BFE5| LDA.w Hookshot.box_size_x,X
|08BFE8| BEQ .dont_add_x

|08BFEA| CLC
|08BFEB| ADC.b $0C

.dont_add_x
|08BFED| CLC
|08BFEE| ADC.b $06
|08BFF0| STA.b $06
|08BFF2| STA.b $02

;---------------------------------------------------------------------------------------------------

|08BFF4| SEP #$20

|08BFF6| JSR Hookshot_CheckProximityToLink
|08BFF9| BCS .skip

|08BFFB| JSR Ancilla_SetOAM_XY

|08BFFE| LDA.b #$19
|08C000| STA.b ($90),Y

|08C002| INY

|08C003| LDA.b $1A
|08C005| AND.b #$02

|08C007| ASL A ; x64
|08C008| ASL A
|08C009| ASL A
|08C00A| ASL A
|08C00B| ASL A
|08C00C| ASL A

|08C00D| ORA.b #$02
|08C00F| ORA.b $65
|08C011| STA.b ($90),Y

|08C013| INY
|08C014| PHY

|08C015| TYA
|08C016| SEC
|08C017| SBC.b #$04
|08C019| LSR A
|08C01A| LSR A
|08C01B| TAY

|08C01C| LDA.b #$00
|08C01E| STA.b ($92),Y

|08C020| PLY

.skip
|08C021| DEC.b $08
|08C023| BPL .next_object

;---------------------------------------------------------------------------------------------------

.exit
|08C025| PLX

|08C026| RTS

;===================================================================================================

pool Ancilla20_Blanket

.char
|08C027| db $0A, $0A, $0A, $0A
|08C02B| db $0C, $0C, $0A, $0A

.prop
|08C02F| db $00, $60, $A0, $E0
|08C033| db $00, $60, $A0, $E0

endpool

;---------------------------------------------------------------------------------------------------

Ancilla20_Blanket:
|08C037| JSR Ancilla_PrepOAMCoord

|08C03A| REP #$20

|08C03C| LDA.b $00
|08C03E| STA.b $04

|08C040| LDA.b $02
|08C042| STA.b $06
|08C044| STA.b $08

|08C046| SEP #$20

|08C048| PHX

|08C049| LDA.w $037D
|08C04C| BNE .im_awake

|08C04E| LDA.b #$10
|08C050| JSL AllocateOAMInRegionB

|08C054| BRA .continue

.im_awake
|08C056| LDA.b #$10
|08C058| JSL AllocateOAMInRegionA

;---------------------------------------------------------------------------------------------------

.continue
|08C05C| LDA.w $037D
|08C05F| BEQ .i_sleep

|08C061| LDA.b #$04

.i_sleep
|08C063| TAX

|08C064| LDA.b #$03
|08C066| STA.b $0A

|08C068| LDY.b #$00

;---------------------------------------------------------------------------------------------------

.next_object
|08C06A| JSR Ancilla_SetOAM_XY

|08C06D| LDA.w .char,X
|08C070| STA.b ($90),Y

|08C072| INY

|08C073| LDA.w .prop,X
|08C076| ORA.b #$0D
|08C078| ORA.b $65
|08C07A| STA.b ($90),Y

|08C07C| INY
|08C07D| PHY

|08C07E| TYA
|08C07F| SEC
|08C080| SBC.b #$04
|08C082| LSR A
|08C083| LSR A
|08C084| TAY

|08C085| LDA.b #$02
|08C087| STA.b ($92),Y

|08C089| PLY

|08C08A| INX

|08C08B| REP #$20

|08C08D| LDA.b $06
|08C08F| CLC
|08C090| ADC.w #$0010
|08C093| STA.b $02

|08C095| SEP #$20

|08C097| DEC.b $0A
|08C099| BMI .exit

|08C09B| LDA.b $0A
|08C09D| CMP.b #$01
|08C09F| BNE .next_object

;---------------------------------------------------------------------------------------------------

|08C0A1| REP #$20

|08C0A3| LDA.b $06
|08C0A5| STA.b $02

|08C0A7| LDA.b $04
|08C0A9| CLC
|08C0AA| ADC.w #$0008
|08C0AD| STA.b $00

|08C0AF| SEP #$20

|08C0B1| BRA .next_object

;---------------------------------------------------------------------------------------------------

.exit
|08C0B3| PLX

|08C0B4| RTS

;===================================================================================================

pool Ancilla21_Snore

.char
|08C0B5| db $44, $43, $42

endpool

;---------------------------------------------------------------------------------------------------

Ancilla21_Snore:
|08C0B8| DEC.w $03B1,X
|08C0BB| BPL .delay

|08C0BD| LDA.w $0C5E,X
|08C0C0| INC A
|08C0C1| CMP.b #$03
|08C0C3| BEQ .fully_zeed

|08C0C5| STA.w $0C5E,X

.fully_zeed
|08C0C8| LDA.b #$07
|08C0CA| STA.w $03B1,X

;---------------------------------------------------------------------------------------------------

.delay
|08C0CD| LDA.w $0C2C,X
|08C0D0| CLC
|08C0D1| ADC.w $0C54,X
|08C0D4| STA.w $0C2C,X
|08C0D7| BPL .positive_x

|08C0D9| EOR.b #$FF
|08C0DB| INC A

.positive_x
|08C0DC| CMP.b #$08
|08C0DE| BCC .dont_invert

|08C0E0| LDA.w $0C54,X
|08C0E3| EOR.b #$FF
|08C0E5| INC A
|08C0E6| STA.w $0C54,X

.dont_invert
|08C0E9| JSR AncillaMoveY
|08C0EC| JSR AncillaMoveX

|08C0EF| LDA.w $0BFA,X
|08C0F2| STA.b $00

|08C0F4| LDA.w $0C0E,X
|08C0F7| STA.b $01

;---------------------------------------------------------------------------------------------------

|08C0F9| REP #$20

|08C0FB| LDA.b $20
|08C0FD| SEC
|08C0FE| SBC.w #$0018
|08C101| CMP.b $00
|08C103| BCC .dont_delete_me

|08C105| SEP #$20

|08C107| STZ.w $0C4A,X

;---------------------------------------------------------------------------------------------------

.dont_delete_me
|08C10A| SEP #$20

|08C10C| LDY.w $0C5E,X

|08C10F| LDA.w .char,Y
|08C112| STA.w $0109

|08C115| JSR Ancilla_PrepOAMCoord

|08C118| LDY.b #$00
|08C11A| JSR Ancilla_SetOAM_XY

|08C11D| LDA.b #$09
|08C11F| STA.b ($90),Y

|08C121| INY

|08C122| LDA.b #$24
|08C124| STA.b ($90),Y

|08C126| LDA.b #$00
|08C128| STA.b ($92)

|08C12A| RTS

;===================================================================================================

pool Ancilla3B_SwordUpSparkle

.offset_y
|08C12B| dw  -7,   0,   0,   0
|08C133| dw -11, -11,  -3,  -3
|08C13B| dw  -7,  -7,   0,   0
|08C143| dw  -7,   0,   0,   0

.offset_x
|08C14B| dw  16,   0,   0,   0
|08C153| dw   8,  16,   8,  16
|08C15B| dw   9,  15,   0,   0
|08C163| dw  12,   0,   0,   0

.char
|08C16B| db $92, $FF, $FF, $FF
|08C16F| db $93, $93, $93, $93
|08C173| db $F9, $F9, $FF, $FF
|08C177| db $80, $FF, $FF, $FF

.prop
|08C17B| db $00, $FF, $FF, $FF
|08C17F| db $00, $40, $80, $C0
|08C183| db $00, $40, $FF, $FF
|08C187| db $00, $FF, $FF, $FF

endpool

;---------------------------------------------------------------------------------------------------

Ancilla3B_SwordUpSparkle:
|08C18B| LDA.w $03B1,X
|08C18E| BNE .delay

|08C190| DEC.w $039F,X
|08C193| BPL .active

|08C195| LDA.b #$01
|08C197| STA.w $039F,X

|08C19A| INC.w $0C5E,X

|08C19D| LDA.w $0C5E,X
|08C1A0| CMP.b #$04
|08C1A2| BNE .active

|08C1A4| STZ.w $0C4A,X

.delay
|08C1A7| DEC.w $03B1,X

|08C1AA| RTS

;---------------------------------------------------------------------------------------------------

.active
|08C1AB| PHX

|08C1AC| JSR Ancilla_PrepOAMCoord

|08C1AF| LDA.b #$03
|08C1B1| STA.b $06

|08C1B3| LDA.w $0C5E,X
|08C1B6| ASL A
|08C1B7| ASL A
|08C1B8| TAX

;---------------------------------------------------------------------------------------------------

|08C1B9| LDY.b #$00

.next_object
|08C1BB| LDA.w .char,X
|08C1BE| CMP.b #$FF
|08C1C0| BEQ .skip

|08C1C2| REP #$20

|08C1C4| PHX

|08C1C5| TXA
|08C1C6| ASL A
|08C1C7| TAX

|08C1C8| LDA.b $20
|08C1CA| CLC
|08C1CB| ADC.w .offset_y,X
|08C1CE| SEC
|08C1CF| SBC.b $E8
|08C1D1| STA.b $00

|08C1D3| LDA.b $22
|08C1D5| CLC
|08C1D6| ADC.w .offset_x,X
|08C1D9| SEC
|08C1DA| SBC.b $E2
|08C1DC| STA.b $02

|08C1DE| PLX

;---------------------------------------------------------------------------------------------------

|08C1DF| SEP #$20

|08C1E1| JSR Ancilla_SetOAM_XY

|08C1E4| LDA.w .char,X
|08C1E7| STA.b ($90),Y

|08C1E9| INY

|08C1EA| LDA.w .prop,X
|08C1ED| ORA.b #$04
|08C1EF| ORA.b $65
|08C1F1| STA.b ($90),Y

|08C1F3| INY
|08C1F4| PHY

|08C1F5| TYA
|08C1F6| SEC
|08C1F7| SBC.b #$04
|08C1F9| LSR A
|08C1FA| LSR A
|08C1FB| TAY

|08C1FC| LDA.b #$00
|08C1FE| STA.b ($92),Y

|08C200| PLY

;---------------------------------------------------------------------------------------------------

.skip
|08C201| INX

|08C202| DEC.b $06
|08C204| BPL .next_object

;---------------------------------------------------------------------------------------------------

|08C206| PLX

|08C207| RTS

;===================================================================================================

pool Ancilla3C_SpinAttackChargeSparkle

.char
|08C208| db $B7, $80, $83

.prop
|08C20B| db $04, $04, $84

endpool

;---------------------------------------------------------------------------------------------------

Ancilla3C_SpinAttackChargeSparkle:
|08C20E| LDA.b $11
|08C210| BNE .continue

|08C212| LDA.w $0C68,X
|08C215| BNE .continue

|08C217| LDA.b #$04
|08C219| STA.w $0C68,X

|08C21C| INC.w $0C5E,X

|08C21F| LDA.w $0C5E,X
|08C222| CMP.b #$03
|08C224| BNE .continue

|08C226| STZ.w $0C4A,X

|08C229| RTS

;---------------------------------------------------------------------------------------------------

.continue
|08C22A| PHX

|08C22B| LDA.b #$04
|08C22D| JSR AllocateOAMInRegionsADF

|08C230| TYA
|08C231| STA.w $0C86,X

|08C234| JSR Ancilla_PrepOAMCoord

|08C237| LDA.w $0C5E,X
|08C23A| TAX

|08C23B| LDY.b #$00
|08C23D| JSR Ancilla_SetOAM_XY

|08C240| LDA.w .char,X

|08C243| STA.b ($90),Y

|08C245| INY

|08C246| LDA.w .prop,X
|08C249| ORA.b $65
|08C24B| STA.b ($90),Y

|08C24D| LDA.b #$00
|08C24F| STA.b ($92)

|08C251| PLX

|08C252| RTS

;===================================================================================================

pool Ancilla35_MasterSwordCutscene

.offset_y
|08C253| dw   1,   1,   9,   9
|08C25B| dw   1,   1,   9,   9

.offset_x
|08C263| dw  -1,   8,  -1,   8
|08C26B| dw   0,   7,   0,   7

.char
|08C273| db $86, $86, $96, $96
|08C277| db $87, $87, $97, $97

.prop
|08C27B| db $01, $41, $01, $41
|08C27F| db $01, $41, $01, $41

endpool

;---------------------------------------------------------------------------------------------------

Ancilla35_MasterSwordCutscene:
|08C283| LDA.w $0C68,X
|08C286| BNE .stay_around

|08C288| STZ.w $0C4A,X

|08C28B| RTS

.stay_around
|08C28C| DEC.w $03B1,X
|08C28F| BPL .delay

|08C291| LDA.w $0C5E,X
|08C294| INC A
|08C295| CMP.b #$03
|08C297| BNE .no_wrap

|08C299| LDA.b #$00

.no_wrap
|08C29B| STA.w $0C5E,X

;---------------------------------------------------------------------------------------------------

.delay
|08C29E| JSR Ancilla_PrepOAMCoord

|08C2A1| REP #$20

|08C2A3| LDA.b $00
|08C2A5| STA.b $04

|08C2A7| LDA.b $02
|08C2A9| STA.b $06

|08C2AB| SEP #$20

|08C2AD| PHX

|08C2AE| STZ.b $08

|08C2B0| LDA.w $0C5E,X
|08C2B3| BEQ .no_draw

|08C2B5| DEC A
|08C2B6| ASL A
|08C2B7| ASL A
|08C2B8| TAX

;---------------------------------------------------------------------------------------------------

|08C2B9| LDY.b #$00

.next_object
|08C2BB| PHX

|08C2BC| TXA
|08C2BD| ASL A
|08C2BE| TAX

|08C2BF| REP #$20

|08C2C1| LDA.b $04
|08C2C3| CLC
|08C2C4| ADC.w .offset_y,X
|08C2C7| STA.b $00

|08C2C9| LDA.b $06
|08C2CB| CLC
|08C2CC| ADC.w .offset_x,X
|08C2CF| STA.b $02

|08C2D1| SEP #$20

|08C2D3| PLX

|08C2D4| JSR Ancilla_SetOAM_XY

|08C2D7| LDA.w .char,X
|08C2DA| STA.b ($90),Y

|08C2DC| INY

|08C2DD| LDA.w .prop,X
|08C2E0| AND.b #$CF
|08C2E2| ORA.b #$04
|08C2E4| ORA.b $65
|08C2E6| STA.b ($90),Y

|08C2E8| INY
|08C2E9| PHY

|08C2EA| TYA
|08C2EB| SEC
|08C2EC| SBC.b #$04
|08C2EE| LSR A
|08C2EF| LSR A
|08C2F0| TAY

|08C2F1| LDA.b #$00
|08C2F3| STA.b ($92),Y

|08C2F5| PLY

|08C2F6| INX

|08C2F7| INC.b $08

|08C2F9| LDA.b $08
|08C2FB| CMP.b #$04
|08C2FD| BNE .next_object

;---------------------------------------------------------------------------------------------------

.no_draw
|08C2FF| PLX

|08C300| RTS

;===================================================================================================
; For messages, $FFFF means no message
;===================================================================================================
pool Ancilla22_ItemReceipt ItemReceipt

.message
|08C301| dw $FFFF ; FIGHTER SWORD
|08C303| dw $006E ; MASTER SWORD              - MESSAGE 006E
|08C305| dw $0075 ; TEMPERED SWORD            - MESSAGE 0075
|08C307| dw $0050 ; BUTTER SWORD              - MESSAGE 0050 - [WTF] ??
|08C309| dw $FFFF ; FIGHTER SHIELD
|08C30B| dw $0076 ; FIRE SHIELD               - MESSAGE 0076 - [BUG] WRONG MESSAGE
|08C30D| dw $0076 ; MIRROR SHIELD             - MESSAGE 0076
|08C30F| dw $0060 ; FIRE ROD                  - MESSAGE 0060
|08C311| dw $005F ; ICE ROD                   - MESSAGE 005F
|08C313| dw $0064 ; HAMMER                    - MESSAGE 0064
|08C315| dw $0067 ; HOOKSHOT                  - MESSAGE 0067
|08C317| dw $0051 ; BOW                       - MESSAGE 0051
|08C319| dw $0050 ; BOOMERANG                 - MESSAGE 0050
|08C31B| dw $0054 ; POWDER                    - MESSAGE 0054
|08C31D| dw $FFFF ; BOTTLE REFILL (BEE)
|08C31F| dw $0062 ; BOMBOS                    - MESSAGE 0062
|08C321| dw $0061 ; ETHER                     - MESSAGE 0061
|08C323| dw $0063 ; QUAKE                     - MESSAGE 0063
|08C325| dw $004F ; LAMP                      - MESSAGE 004F
|08C327| dw $0052 ; SHOVEL                    - MESSAGE 0052
|08C329| dw $0065 ; FLUTE                     - MESSAGE 0065
|08C32B| dw $0066 ; SOMARIA                   - MESSAGE 0066
|08C32D| dw $0069 ; BOTTLE                    - MESSAGE 0069
|08C32F| dw $0075 ; HEART PIECE               - MESSAGE 0075 - [WTF] NO
|08C331| dw $0077 ; BYRNA                     - MESSAGE 0077
|08C333| dw $0053 ; CAPE                      - MESSAGE 0053
|08C335| dw $006C ; MIRROR                    - MESSAGE 006C
|08C337| dw $0056 ; GLOVE                     - MESSAGE 0056
|08C339| dw $006B ; MITTS                     - MESSAGE 006B
|08C33B| dw $005B ; BOOK                      - MESSAGE 005B
|08C33D| dw $0055 ; FLIPPERS                  - MESSAGE 0055
|08C33F| dw $005C ; PEARL                     - MESSAGE 005C
|08C341| dw $FFFF ; CRYSTAL
|08C343| dw $0072 ; NET                       - MESSAGE 0072
|08C345| dw $0073 ; BLUE MAIL                 - MESSAGE 0073
|08C347| dw $0074 ; RED MAIL                  - MESSAGE 0074
|08C349| dw $FFFF ; SMALL KEY
|08C34B| dw $005D ; COMPASS                   - MESSAGE 005D
|08C34D| dw $0156 ; HEART CONTAINER FROM 4/4  - MESSAGE 0156
|08C34F| dw $FFFF ; BOMB
|08C351| dw $0068 ; 3 BOMBS                   - MESSAGE 0068
|08C353| dw $005A ; MUSHROOM                  - MESSAGE 005A
|08C355| dw $008D ; RED BOOMERANG             - MESSAGE 008D
|08C357| dw $006F ; FULL BOTTLE (RED)         - MESSAGE 006F
|08C359| dw $0070 ; FULL BOTTLE (GREEN)       - MESSAGE 0070
|08C35B| dw $0071 ; FULL BOTTLE (BLUE)        - MESSAGE 0071
|08C35D| dw $006F ; POTION REFILL (RED)       - MESSAGE 006F
|08C35F| dw $0070 ; POTION REFILL (GREEN)     - MESSAGE 0070
|08C361| dw $0071 ; POTION REFILL (BLUE)      - MESSAGE 0071
|08C363| dw $0068 ; 10 BOMBS                  - MESSAGE 0068
|08C365| dw $006A ; BIG KEY                   - MESSAGE 006A
|08C367| dw $005E ; MAP                       - MESSAGE 005E
|08C369| dw $FFFF ; 1 RUPEE
|08C36B| dw $FFFF ; 5 RUPEES
|08C36D| dw $FFFF ; 20 RUPEES
|08C36F| dw $0057 ; GREEN PENDANT             - MESSAGE 0057
|08C371| dw $0082 ; BLUE PENDANT              - MESSAGE 0082
|08C373| dw $0058 ; RED PENDANT               - MESSAGE 0058
|08C375| dw $FFFF ; TOSSED BOW
|08C377| dw $FFFF ; SILVERS
|08C379| dw $FFFF ; FULL BOTTLE (BEE)
|08C37B| dw $FFFF ; FULL BOTTLE (FAIRY)
|08C37D| dw $FFFF ; BOSS HC
|08C37F| dw $0157 ; SANC HC                   - MESSAGE 0157
|08C381| dw $FFFF ; 100 RUPEES
|08C383| dw $FFFF ; 50 RUPEES
|08C385| dw $FFFF ; HEART
|08C387| dw $FFFF ; ARROW
|08C389| dw $FFFF ; 10 ARROWS
|08C38B| dw $FFFF ; SMALL MAGIC
|08C38D| dw $FFFF ; 300 RUPEES
|08C38F| dw $FFFF ; 20 RUPEES GREEN
|08C391| dw $FFFF ; FULL BOTTLE (GOOD BEE)
|08C393| dw $00D9 ; TOSSED FIGHTER SWORD      - MESSAGE 00D9
|08C395| dw $0065 ; FLUTE (ACTIVATED)         - MESSAGE 0065
|08C397| dw $007A ; BOOTS                     - MESSAGE 007A

;---------------------------------------------------------------------------------------------------

.animated_rupee_tiles
|08C399| db $24, $25, $26

.animated_rupee_timers
|08C39C| db $09, $05, $05

.default_oam_props
|08C39F| db $05, $01, $04

.heart_piece_message
|08C3A2| dw $FFFF
|08C3A4| dw $0153 ; MESSAGE 0153
|08C3A6| dw $0154 ; MESSAGE 0154
|08C3A8| dw $0155 ; MESSAGE 0155

.pendant_message
|08C3AA| dw $0059 ; MESSAGE 0059
|08C3AC| dw $0081 ; MESSAGE 0081

endpool

;---------------------------------------------------------------------------------------------------

Ancilla22_ItemReceipt:
|08C3AE| LDA.w $02E4
|08C3B1| CMP.b #$02
|08C3B3| BEQ .just_draw_a

|08C3B5| LDA.b $11
|08C3B7| BEQ .operable_submode

|08C3B9| CMP.b #$2B
|08C3BB| BEQ .operable_submode

|08C3BD| CMP.b #$09
|08C3BF| BEQ .operable_submode

|08C3C1| CMP.b #$02
|08C3C3| BNE .just_draw_a

|08C3C5| LDA.b #$10
|08C3C7| STA.w $0C68,X

.just_draw_a
|08C3CA| BRL ItemReceipt_Animate

;---------------------------------------------------------------------------------------------------

.operable_submode
|08C3CD| INC.w $0FC1

|08C3D0| LDA.w $0C54,X
|08C3D3| BEQ .from_text_or_object

|08C3D5| CMP.b #$03
|08C3D7| BEQ .from_text_or_object

|08C3D9| BRL .from_chest_or_sprite

;---------------------------------------------------------------------------------------------------

.from_text_or_object
|08C3DC| LDA.w $0C5E,X
|08C3DF| CMP.b #$01 ; ITEMGET 01
|08C3E1| BNE .not_ms_pull

; [DUMB] impossible for this to succeed
|08C3E3| LDA.w $0C54,X
|08C3E6| CMP.b #$02
|08C3E8| BEQ .not_ms_pull

|08C3EA| LDA.w $0C68,X
|08C3ED| BEQ .delay_a

|08C3EF| CMP.b #$11
|08C3F1| BNE .just_draw_b

|08C3F3| REP #$20

|08C3F5| LDA.w #$0DF3
|08C3F8| STA.w $02CD

|08C3FB| SEP #$20

|08C3FD| LDA.b #$0E ; FOLLOWER 0E
|08C3FF| STA.l $7EF3CC

.time_up_a
|08C403| BRL .time_up_b

;---------------------------------------------------------------------------------------------------

.not_ms_pull
|08C406| DEC.w $03B1,X
|08C409| LDA.w $03B1,X
|08C40C| BEQ .delay_a

|08C40E| CMP.b #$01
|08C410| BNE .just_draw_b

|08C412| LDA.w $0C5E,X
|08C415| CMP.b #$37 ; ITEMGET 37
|08C417| BEQ .is_pendant

|08C419| CMP.b #$38 ; ITEMGET 38
|08C41B| BEQ .is_pendant

|08C41D| CMP.b #$39 ; ITEMGET 39
|08C41F| BNE .dont_wait_for_music

.is_pendant
|08C421| LDA.w APUIO0
|08C424| BEQ .dont_wait_for_music

|08C426| INC.w $03B1,X
|08C429| BRA .just_draw_b

.dont_wait_for_music
|08C42B| BRL .time_up_a

;---------------------------------------------------------------------------------------------------

.just_draw_b
|08C42E| BRL ItemReceipt_Animate

;---------------------------------------------------------------------------------------------------

.delay_a
|08C431| LDA.w $0C5E,X
|08C434| CMP.b #$01 ; ITEMGET 01
|08C436| BNE .not_ms_from_text

|08C438| LDA.w $0C54,X
|08C43B| BNE .not_ms_from_text

|08C43D| LDA.b #$05 ; SFX1.05
|08C43F| STA.w $012D

|08C442| LDA.b #$02 ; SONG 02
|08C444| STA.w $012C

.not_ms_from_text
|08C447| LDY.b #$00 ; LINKSTATE 00

|08C449| LDA.w $0345
|08C44C| BEQ .not_in_water

|08C44E| LDY.b #$04 ; LINKSTATE 04

.not_in_water
|08C450| STY.b $5D

|08C452| STZ.w $02D8
|08C455| STZ.w $02DA
|08C458| STZ.w $037B

|08C45B| JSL Ancilla_AddRupees

;---------------------------------------------------------------------------------------------------

.check_if_hp
|08C45F| STZ.w $02E9

|08C462| LDA.w $0C5E,X
|08C465| CMP.b #$17 ; ITEMGET 17
|08C467| BNE .not_heart_piece

|08C469| LDA.l $7EF36B
|08C46D| BNE .not_heart_piece

|08C46F| PHX

|08C470| LDY.b #$26 ; ITEMGET 26
|08C472| JSL GrantItemReceipt

|08C476| PLX

|08C477| STZ.w $0C4A,X

|08C47A| STZ.w $0FC1

|08C47D| RTS

.not_heart_piece
|08C47E| CMP.b #$26 ; ITEMGET 26
|08C480| BEQ .refill_hp

|08C482| CMP.b #$3F ; ITEMGET 3F
|08C484| BEQ .refill_hp

|08C486| CMP.b #$3E ; ITEMGET 3E
|08C488| BNE .not_heart

|08C48A| STZ.w $02E4

|08C48D| LDA.l $7EF36C
|08C491| CMP.b #$A0
|08C493| BEQ .not_heart

|08C495| CLC
|08C496| ADC.b #$08
|08C498| STA.l $7EF36C

|08C49C| LDA.l $7EF372
|08C4A0| CLC
|08C4A1| ADC.b #$08
|08C4A3| STA.l $7EF372

|08C4A7| BRA .continue_a

;---------------------------------------------------------------------------------------------------

.refill_hp
|08C4A9| LDA.l $7EF36D
|08C4AD| STA.b $00

|08C4AF| LDA.l $7EF36C
|08C4B3| CMP.b #$A0
|08C4B5| BEQ .not_heart

|08C4B7| CLC
|08C4B8| ADC.b #$08
|08C4BA| STA.l $7EF36C

|08C4BE| SEC
|08C4BF| SBC.b $00
|08C4C1| STA.b $00

|08C4C3| LDA.l $7EF372
|08C4C7| CLC
|08C4C8| ADC.b $00
|08C4CA| STA.l $7EF372

.continue_a
|08C4CE| LDA.b #$0D ; SFX3.0D
|08C4D0| JSR Ancilla_SFX3_Near

|08C4D3| BRA .continue_b

;---------------------------------------------------------------------------------------------------

.not_heart
|08C4D5| CMP.b #$42 ; ITEMGET 42
|08C4D7| BNE .not_single_heart

|08C4D9| LDA.l $7EF372
|08C4DD| CLC
|08C4DE| ADC.b #$08
|08C4E0| STA.l $7EF372

|08C4E4| BRA .continue_b

;---------------------------------------------------------------------------------------------------

.not_single_heart
|08C4E6| CMP.b #$45 ; ITEMGET 45
|08C4E8| BNE .not_small_magic

|08C4EA| LDA.l $7EF373
|08C4EE| CLC
|08C4EF| ADC.b #$10
|08C4F1| STA.l $7EF373

|08C4F5| BRA .continue_b

;---------------------------------------------------------------------------------------------------

.not_small_magic
|08C4F7| CMP.b #$22 ; ITEMGET 22
|08C4F9| BEQ .blue_mail

; Red mail?
|08C4FB| CMP.b #$23 ; ITEMGET 23
|08C4FD| BNE .continue_b

.blue_mail
|08C4FF| PHX

|08C500| JSL PaletteLoad_LinkArmorAndGloves

|08C504| PLX

;---------------------------------------------------------------------------------------------------

.continue_b
|08C505| STZ.w $0C4A,X

|08C508| STZ.w $0FC1

|08C50B| LDA.w $0C54,X
|08C50E| CMP.b #$03
|08C510| BNE .no_victory_sequence

|08C512| LDY.w $0C5E,X

|08C515| CPY.w MilestoneItemReceiptIDs.ether
|08C518| BEQ .no_victory_sequence

|08C51A| CPY.w MilestoneItemReceiptIDs.bombos
|08C51D| BEQ .no_victory_sequence

|08C51F| CPY.w MilestoneItemReceiptIDs.heart_container
|08C522| BEQ .no_victory_sequence

|08C524| CPY.w MilestoneItemReceiptIDs.crystal
|08C527| BEQ .no_victory_sequence

|08C529| PHA
|08C52A| PHX

|08C52B| JSL PrepareDungeonExitFromBossFight

|08C52F| PLX
|08C530| PLA

.no_victory_sequence
|08C531| CMP.b #$02 ; ITEMGET 02
|08C533| BEQ .exit

|08C535| STZ.w $02E4

.exit
|08C538| RTS

;---------------------------------------------------------------------------------------------------

.from_chest_or_sprite
|08C539| DEC.w $03B1,X

|08C53C| LDA.w $03B1,X
|08C53F| BPL .delay_b

|08C541| BRL .check_if_hp

.delay_b
|08C544| CMP.b #$00
|08C546| BEQ .time_up_b

|08C548| CMP.b #$28
|08C54A| BNE .dont_give

|08C54C| LDA.w $0C54,X
|08C54F| CMP.b #$02
|08C551| BEQ .dont_give

|08C553| JSL Ancilla_AddRupees
|08C557| BCS .play_rupee_sfx

|08C559| LDA.w $0C5E,X
|08C55C| CMP.b #$17
|08C55E| BNE .play_rupee_sfx

.dont_give
|08C560| BRL .skip_messaging

.play_rupee_sfx
|08C563| LDA.b #$0F ; SFX3.0F
|08C565| JSR Ancilla_SFX3_Near

|08C568| BRA .dont_give

;---------------------------------------------------------------------------------------------------

.time_up_b
|08C56A| LDA.b $1B
|08C56C| BEQ .not_a_shop

|08C56E| REP #$20

|08C570| LDA.b $A0
|08C572| CMP.w #$00FF ; ROOM 00FF
|08C575| BEQ .is_a_shop

|08C577| CMP.w #$010F ; ROOM 010F
|08C57A| BEQ .is_a_shop

|08C57C| CMP.w #$0110 ; ROOM 0110
|08C57F| BEQ .is_a_shop

|08C581| CMP.w #$0112 ; ROOM 0112
|08C584| BEQ .is_a_shop

|08C586| CMP.w #$011F ; ROOM 011F
|08C589| BNE .not_a_shop

.is_a_shop
|08C58B| SEP #$20

|08C58D| BRA .skip_messaging

;---------------------------------------------------------------------------------------------------

.not_a_shop
|08C58F| SEP #$20

|08C591| LDA.w $0C5E,X
|08C594| CMP.b #$38 ; ITEMGET 38
|08C596| BEQ .use_pendant_message

|08C598| CMP.b #$39 ; ITEMGET 39
|08C59A| BNE .not_possibly_a_pendant

.use_pendant_message
|08C59C| TAY

|08C59D| LDA.l $7EF374
|08C5A1| AND.b #$07
|08C5A3| CMP.b #$07
|08C5A5| BNE .fetch_message_id

|08C5A7| TYA
|08C5A8| SEC
|08C5A9| SBC.b #$38
|08C5AB| ASL A
|08C5AC| TAY

|08C5AD| REP #$20

|08C5AF| LDA.w .pendant_message,Y
|08C5B2| STA.w $1CF0

|08C5B5| SEP #$20

|08C5B7| BRA .trigger_message

;---------------------------------------------------------------------------------------------------

.not_possibly_a_pendant
|08C5B9| LDA.w $0C54,X
|08C5BC| CMP.b #$02
|08C5BE| BEQ ItemReceipt_Animate

|08C5C0| LDA.w $0C5E,X
|08C5C3| CMP.b #$17 ; ITEMGET 17
|08C5C5| BNE .fetch_message_id

|08C5C7| LDA.l $7EF36B
|08C5CB| ASL A
|08C5CC| TAY

|08C5CD| REP #$20

|08C5CF| LDA.w .heart_piece_message,Y
|08C5D2| CMP.w #$FFFF
|08C5D5| BEQ ItemReceipt_Animate

|08C5D7| STA.w $1CF0

|08C5DA| SEP #$20

|08C5DC| BRA .trigger_message

;---------------------------------------------------------------------------------------------------

.fetch_message_id
|08C5DE| LDA.w $0C5E,X
|08C5E1| ASL A
|08C5E2| TAY

|08C5E3| REP #$20

|08C5E5| LDA.w .message,Y
|08C5E8| CMP.w #$FFFF
|08C5EB| BEQ ItemReceipt_Animate

|08C5ED| STA.w $1CF0

|08C5F0| CMP.w #$006E ; MESSAGE 006E
|08C5F3| BNE .no_sfx_just_text

|08C5F5| SEP #$20

|08C5F7| LDA.b #$09 ; SFX1.09
|08C5F9| STA.w $012D

.no_sfx_just_text
|08C5FC| SEP #$20

;---------------------------------------------------------------------------------------------------

.trigger_message
|08C5FE| JSL PrepAndDisplayMessage
|08C602| BRA ItemReceipt_Animate

.skip_messaging
|08C604| LDA.w $03B1,X
|08C607| CMP.b #$18
|08C609| BCC ItemReceipt_Animate

|08C60B| LDA.w $0C22,X
|08C60E| CLC
|08C60F| ADC.b #$FF
|08C611| CMP.b #$F8
|08C613| BCC .halt_acceleration

|08C615| STA.w $0C22,X

.halt_acceleration
|08C618| JSR AncillaMoveY

;===================================================================================================

ItemReceipt_Animate:
|08C61B| SEP #$20

|08C61D| LDA.w $0C5E,X
|08C620| CMP.b #$20
|08C622| BNE .continue

|08C624| STZ.w $029E,X

|08C627| JSR AncillaAdd_OccasionalSparkle

|08C62A| LDA.w APUIO0
|08C62D| BNE .continue

|08C62F| LDA.b #$1A ; SONG 1A
|08C631| STA.w $012C

|08C634| BRL ItemReceipt_TransmuteToRisingCrystal

;---------------------------------------------------------------------------------------------------

.continue
|08C637| SEP #$20

|08C639| LDA.w $0C5E,X
|08C63C| CMP.b #$01 ; ITEMGET 01
|08C63E| BNE .not_a_flashy_sword

|08C640| LDA.w ItemReceipt.default_oam_props
|08C643| STA.w $0BF0,X

|08C646| LDA.w $0C54,X
|08C649| CMP.b #$02
|08C64B| BEQ .not_a_flashy_sword

|08C64D| LDA.w $0C68,X
|08C650| CMP.b #$10
|08C652| BCC .wait_for_flashy_sword

|08C654| DEC.w $039F,X
|08C657| BPL .not_a_flashy_sword

|08C659| LDA.b #$02
|08C65B| STA.w $039F,X

|08C65E| LDA.w $03A4,X
|08C661| INC A
|08C662| CMP.b #$03
|08C664| BNE .no_wrap_flashy_sword

.wait_for_flashy_sword
|08C666| LDA.b #$00

.no_wrap_flashy_sword
|08C668| STA.w $03A4,X

|08C66B| TAY

|08C66C| LDA.w ItemReceipt.default_oam_props,Y
|08C66F| STA.w $0BF0,X

;---------------------------------------------------------------------------------------------------

.not_a_flashy_sword
|08C672| LDA.w $0C5E,X
|08C675| CMP.b #$34 ; ITEMGET 34
|08C677| BEQ .animated_rupee

|08C679| CMP.b #$35 ; ITEMGET 35
|08C67B| BEQ .animated_rupee

|08C67D| CMP.b #$36 ; ITEMGET 36
|08C67F| BNE .not_animating_rupee

.animated_rupee
|08C681| DEC.w $039F,X
|08C684| BPL .not_animating_rupee

|08C686| INC.w $03A4,X

|08C689| LDA.w $03A4,X
|08C68C| CMP.b #$03
|08C68E| BNE .no_wrap_rupee

|08C690| LDA.b #$00
|08C692| STA.w $03A4,X

; no wrapee
.no_wrap_rupee
|08C695| TAY

|08C696| LDA.w ItemReceipt.animated_rupee_timers,Y
|08C699| STA.w $039F,X

|08C69C| PHX

|08C69D| LDA.w ItemReceipt.animated_rupee_tiles,Y
|08C6A0| JSL WriteTo4BPPBuffer_at_7F4000

|08C6A4| PLX

;---------------------------------------------------------------------------------------------------

.not_animating_rupee
|08C6A5| JSR Ancilla_PrepOAMCoord.adjusted

|08C6A8| REP #$20

|08C6AA| LDA.b $00
|08C6AC| CLC
|08C6AD| ADC.w #$0008
|08C6B0| STA.b $08

|08C6B2| SEP #$20

;===================================================================================================

AncillaDraw_ItemReceipt:
|08C6B4| PHX

|08C6B5| LDA.w $0BF0,X
|08C6B8| STA.b $74

|08C6BA| LDA.w $0C5E,X
|08C6BD| TAX

|08C6BE| LDY.b #$00
|08C6C0| JSR Ancilla_SetOAM_XY

|08C6C3| LDA.b #$24
|08C6C5| STA.b ($90),Y

|08C6C7| INY

|08C6C8| LDA.l AncillaAdd_ItemReceipt.prop,X
|08C6CC| BPL .keep_prop_a

|08C6CE| LDA.b $74

;---------------------------------------------------------------------------------------------------

.keep_prop_a
|08C6D0| ASL A
|08C6D1| ORA.b #$30
|08C6D3| STA.b ($90),Y

|08C6D5| INY
|08C6D6| PHY

|08C6D7| TYA
|08C6D8| SEC
|08C6D9| SBC.b #$04
|08C6DB| LSR A
|08C6DC| LSR A
|08C6DD| TAY

|08C6DE| LDA.l AncillaAdd_ItemReceipt.width,X
|08C6E2| STA.b ($92),Y

|08C6E4| PLY

|08C6E5| CMP.b #$02
|08C6E7| BEQ .big_sprite

;---------------------------------------------------------------------------------------------------

|08C6E9| REP #$20

|08C6EB| LDA.b $08
|08C6ED| STA.b $00

|08C6EF| SEP #$20

|08C6F1| JSR Ancilla_SetOAM_XY

|08C6F4| LDA.b #$34
|08C6F6| STA.b ($90),Y

|08C6F8| INY

|08C6F9| LDA.l AncillaAdd_ItemReceipt.prop,X
|08C6FD| BPL .keep_prop_b

|08C6FF| LDA.b $74

;---------------------------------------------------------------------------------------------------

.keep_prop_b
|08C701| ASL A
|08C702| ORA.b #$30
|08C704| STA.b ($90),Y

|08C706| INY
|08C707| PHY

|08C708| TYA
|08C709| SEC
|08C70A| SBC.b #$04
|08C70C| LSR A
|08C70D| LSR A
|08C70E| TAY

|08C70F| LDA.b #$00
|08C711| STA.b ($92),Y

|08C713| PLY

;---------------------------------------------------------------------------------------------------

.big_sprite
|08C714| PLX

|08C715| RTS

;===================================================================================================

Ancilla28_WishPondItem:
|08C716| LDA.b #$10
|08C718| JSR AllocateOAMInRegionsADF

|08C71B| LDA.b $11
|08C71D| BEQ .continue

|08C71F| BRL AncillaDraw_WishPondItem

;---------------------------------------------------------------------------------------------------

.continue
|08C722| LDA.w $0C68,X
|08C725| BNE AncillaDraw_WishPondItem

|08C727| LDA.b #$02
|08C729| STA.w $0309
|08C72C| STZ.w $0308

|08C72F| LDA.w $0294,X
|08C732| SEC
|08C733| SBC.b #$02
|08C735| STA.w $0294,X

|08C738| JSR AncillaMoveZ
|08C73B| JSR AncillaMoveY
|08C73E| JSR AncillaMoveX

|08C741| LDA.w $029E,X
|08C744| BPL AncillaDraw_WishPondItem

|08C746| CMP.b #$E4
|08C748| BCS AncillaDraw_WishPondItem

|08C74A| LDA.b #$E4
|08C74C| STA.w $029E,X

|08C74F| LDY.w $0C5E,X

|08C752| LDA.w $0BFA,X
|08C755| CLC
|08C756| ADC.b #$12
|08C758| STA.w $0BFA,X

|08C75B| LDA.w $0C0E,X
|08C75E| ADC.b #$00
|08C760| STA.w $0C0E,X

|08C763| LDA.b #$08
|08C765| STA.b $00

; [BUG] doesn't read from the correct location which is AncillaAdd_ItemReceipt.width
|08C767| LDA.w $08844A,Y
|08C76A| BNE .absolute_nonsense

|08C76C| LDA.b #$04
|08C76E| STA.b $00

.absolute_nonsense
|08C770| LDA.w $0C04,X
|08C773| CLC
|08C774| ADC.b $00
|08C776| STA.w $0C04,X

|08C779| LDA.w $0C18,X
|08C77C| ADC.b #$00
|08C77E| STA.w $0C18,X

|08C781| BRL Ancilla_TransmuteToSplash

;---------------------------------------------------------------------------------------------------

AncillaDraw_WishPondItem:
|08C784| JSR Ancilla_PrepOAMCoord.adjusted

|08C787| LDA.w $0C5E,X
|08C78A| CMP.b #$01 ; ITEMGET 01
|08C78C| BNE .not_master_sword

|08C78E| LDA.w ItemReceipt.default_oam_props
|08C791| STA.w $0BF0,X

.not_master_sword
|08C794| REP #$20

|08C796| LDA.w $029E,X
|08C799| AND.w #$00FF
|08C79C| CMP.w #$0080
|08C79F| BCC .positive

|08C7A1| ORA.w #$FF00

.positive
|08C7A4| STA.b $04

|08C7A6| EOR.w #$FFFF
|08C7A9| INC A

|08C7AA| CLC
|08C7AB| ADC.b $00
|08C7AD| STA.b $00
|08C7AF| STA.b $06

|08C7B1| CLC
|08C7B2| ADC.w #$0008
|08C7B5| STA.b $08

|08C7B7| SEP #$20

|08C7B9| JSR AncillaDraw_ItemReceipt

|08C7BC| LDA.w $0309
|08C7BF| CMP.b #$02
|08C7C1| BNE .exit

;---------------------------------------------------------------------------------------------------

|08C7C3| LDA.w $0294,X
|08C7C6| BMI .draw_shadow

|08C7C8| CMP.b #$02
|08C7CA| BCS .exit

.draw_shadow
|08C7CC| PHX

|08C7CD| LDA.w $0C5E,X
|08C7D0| TAX

; [BUG] doesn't read from the correct location which is AncillaAdd_ItemReceipt.width
|08C7D1| LDA.w $08844A,X
|08C7D4| TAX

|08C7D5| REP #$20

|08C7D7| LDA.b $06
|08C7D9| CLC
|08C7DA| ADC.b $04
|08C7DC| CLC
|08C7DD| ADC.w #$0028
|08C7E0| STA.b $00

|08C7E2| CPX.b #$02
|08C7E4| BEQ .wide

|08C7E6| LDA.b $02
|08C7E8| CLC
|08C7E9| ADC.w #$FFFC
|08C7EC| STA.b $02

.wide
|08C7EE| SEP #$20

|08C7F0| LDA.b #$01

|08C7F2| CPX.b #$02
|08C7F4| BEQ .wide_shadow

|08C7F6| LDA.b #$02

.wide_shadow
|08C7F8| TAX

|08C7F9| LDA.b $65
|08C7FB| STA.b $04

|08C7FD| JSR AncillaDraw_Shadow

|08C800| PLX

;---------------------------------------------------------------------------------------------------

.exit
|08C801| RTS

;===================================================================================================

Ancilla42_HappinessPondRupees:
|08C802| LDA.b #$02
|08C804| STA.w $0309
|08C807| STZ.w $0308

|08C80A| LDX.b #$09

.next
|08C80C| LDA.l $7F586C,X
|08C810| BEQ .skip

|08C812| PHX
|08C813| JSR HapinessPondRupees_ExecuteRupee
|08C816| PLX

|08C817| LDA.l $7F58AA,X
|08C81B| CMP.b #$02
|08C81D| BNE .skip

|08C81F| LDA.b #$00
|08C821| STA.l $7F586C,X

.skip
|08C825| DEX

|08C826| BPL .next

;---------------------------------------------------------------------------------------------------

|08C828| LDX.b #$09

.next_check
|08C82A| LDA.l $7F586C,X
|08C82E| BNE .found_one

|08C830| DEX
|08C831| BPL .next_check

|08C833| LDX.w $0FA0

|08C836| STZ.w $0C4A,X

|08C839| RTS

.found_one
|08C83A| BRL Ancilla_RestoreIndex

;===================================================================================================

HapinessPondRupees_ExecuteRupee:
|08C83D| LDA.b #$10

|08C83F| JSR AllocateOAMInRegionsADF
|08C842| PHX

|08C843| LDY.w $0FA0

|08C846| JSR HapinessPondRupees_GetState
|08C849| TYX

|08C84A| LDA.w $0C54,X
|08C84D| BEQ .not_splashing

|08C84F| LDA.b $11
|08C851| BNE .only_splash

|08C853| LDA.w $0C68,X
|08C856| BNE .only_splash

|08C858| LDA.b #$06
|08C85A| STA.w $0C68,X

|08C85D| INC.w $0C5E,X

|08C860| LDA.w $0C5E,X
|08C863| CMP.b #$05
|08C865| BNE .only_splash

|08C867| INC.w $0C54,X
|08C86A| BRL .finish_up

;---------------------------------------------------------------------------------------------------

.only_splash
|08C86D| JSR AncillaDraw_ObjectSplash

|08C870| BRA .finish_up

;---------------------------------------------------------------------------------------------------

.not_splashing
|08C872| LDA.b $11
|08C874| BNE .just_draw

|08C876| LDA.w $0C68,X
|08C879| BNE .just_draw

|08C87B| LDA.w $0294,X
|08C87E| SEC
|08C87F| SBC.b #$02
|08C881| STA.w $0294,X

|08C884| JSR AncillaMoveY
|08C887| JSR AncillaMoveX
|08C88A| JSR AncillaMoveZ

|08C88D| LDA.w $029E,X
|08C890| BPL .just_draw

|08C892| CMP.b #$E4
|08C894| BCS .just_draw

;---------------------------------------------------------------------------------------------------

|08C896| LDA.b #$E4
|08C898| STA.w $029E,X

|08C89B| LDA.w $0BFA,X
|08C89E| CLC
|08C89F| ADC.b #$1E
|08C8A1| STA.w $0BFA,X

|08C8A4| LDA.w $0C0E,X
|08C8A7| ADC.b #$00
|08C8A9| STA.w $0C0E,X

|08C8AC| LDA.w $0C04,X
|08C8AF| CLC
|08C8B0| ADC.b #$FC
|08C8B2| STA.w $0C04,X

|08C8B5| LDA.w $0C18,X
|08C8B8| ADC.b #$FF
|08C8BA| STA.w $0C18,X

|08C8BD| STZ.w $0C5E,X

|08C8C0| LDA.b #$06
|08C8C2| STA.w $0C68,X

|08C8C5| LDA.b #$28 ; SFX2.28
|08C8C7| JSR Ancilla_SFX2_Pan

|08C8CA| INC.w $0C54,X

|08C8CD| BRA .only_splash

;---------------------------------------------------------------------------------------------------

.just_draw
|08C8CF| LDA.b #$02
|08C8D1| STA.w $0BF0,X

|08C8D4| LDA.b #$00
|08C8D6| STA.w $0C7C,X

|08C8D9| JSR AncillaDraw_WishPondItem

;---------------------------------------------------------------------------------------------------

.finish_up
|08C8DC| TXY

|08C8DD| PLX

|08C8DE| JSR HapinessPondRupees_SaveState

|08C8E1| RTS

;===================================================================================================

HapinessPondRupees_GetState:
|08C8E2| LDA.l $7F5824,X
|08C8E6| STA.w $0BFA,Y

|08C8E9| LDA.l $7F5830,X
|08C8ED| STA.w $0C0E,Y

|08C8F0| LDA.l $7F583C,X
|08C8F4| STA.w $0C04,Y

|08C8F7| LDA.l $7F5848,X
|08C8FB| STA.w $0C18,Y

|08C8FE| LDA.l $7F5854,X
|08C902| STA.w $029E,Y

|08C905| LDA.l $7F5800,X
|08C909| STA.w $0C22,Y

|08C90C| LDA.l $7F580C,X
|08C910| STA.w $0C2C,Y

|08C913| LDA.l $7F5818,X
|08C917| STA.w $0294,Y

|08C91A| LDA.l $7F5886,X
|08C91E| STA.w $0C36,Y

|08C921| LDA.l $7F5892,X
|08C925| STA.w $0C40,Y

|08C928| LDA.l $7F589E,X
|08C92C| STA.w $02A8,Y

|08C92F| LDA.l $7F587A,X
|08C933| STA.w $0C5E,Y

|08C936| LDA.l $7F58AA,X
|08C93A| STA.w $0C54,Y

|08C93D| LDA.l $7F5860,X
|08C941| BEQ .dont_dec

|08C943| DEC A

.dont_dec
|08C944| STA.w $0C68,Y

|08C947| RTS

;===================================================================================================

HapinessPondRupees_SaveState:
|08C948| LDA.w $0BFA,Y
|08C94B| STA.l $7F5824,X

|08C94F| LDA.w $0C0E,Y
|08C952| STA.l $7F5830,X

|08C956| LDA.w $0C04,Y
|08C959| STA.l $7F583C,X

|08C95D| LDA.w $0C18,Y
|08C960| STA.l $7F5848,X

|08C964| LDA.w $029E,Y
|08C967| STA.l $7F5854,X

|08C96B| LDA.w $0C22,Y
|08C96E| STA.l $7F5800,X

|08C972| LDA.w $0C2C,Y
|08C975| STA.l $7F580C,X

|08C979| LDA.w $0294,Y
|08C97C| STA.l $7F5818,X

|08C980| LDA.w $0C36,Y
|08C983| STA.l $7F5886,X

|08C987| LDA.w $0C40,Y
|08C98A| STA.l $7F5892,X

|08C98E| LDA.w $02A8,Y
|08C991| STA.l $7F589E,X

|08C995| LDA.w $0C5E,Y
|08C998| STA.l $7F587A,X

|08C99C| LDA.w $0C68,Y
|08C99F| STA.l $7F5860,X

|08C9A3| LDA.w $0C54,Y
|08C9A6| STA.l $7F58AA,X

|08C9AA| RTS

;===================================================================================================

pool AncillaDraw_ObjectSplash

.char
|08C9AB| db $C0, $FF
|08C9AD| db $E7, $FF
|08C9AF| db $AF, $BF
|08C9B1| db $80, $80
|08C9B3| db $83, $83

.prop
|08C9B5| db $00, $FF
|08C9B7| db $00, $FF
|08C9B9| db $40, $00
|08C9BB| db $40, $00
|08C9BD| db $C0, $80

.offset_x
|08C9BF| dw   0,   0
|08C9C3| dw  -6,   0
|08C9C7| dw -13,  -8
|08C9CB| dw -17,  -4
|08C9CF| dw -17,  -4

.offset_y
|08C9D3| dw   0,   0
|08C9D7| dw   0,   0
|08C9DB| dw  11,  -3
|08C9DF| dw  15,  -7
|08C9E3| dw  15,  -7

.size
|08C9E7| db $02, $FF
|08C9E9| db $02, $FF
|08C9EB| db $00, $00
|08C9ED| db $00, $00
|08C9EF| db $00, $00

endpool

;===================================================================================================

Ancilla_TransmuteToSplash:
|08C9F1| LDA.b #$3D ; ANCILLA 3D
|08C9F3| STA.w $0C4A,X

|08C9F6| STZ.w $0C5E,X

|08C9F9| LDA.b #$06
|08C9FB| STA.w $0C68,X

|08C9FE| LDA.w $0BFA,X
|08CA01| CLC
|08CA02| ADC.b #$0C
|08CA04| STA.w $0BFA,X

|08CA07| LDA.w $0C0E,X
|08CA0A| ADC.b #$00
|08CA0C| STA.w $0C0E,X

|08CA0F| LDA.w $0C04,X
|08CA12| CLC
|08CA13| ADC.b #$F8
|08CA15| STA.w $0C04,X

|08CA18| LDA.w $0C18,X
|08CA1B| ADC.b #$FF
|08CA1D| STA.w $0C18,X

|08CA20| LDA.b #$28 ; SFX2.28
|08CA22| JSR Ancilla_SFX2_Pan

;===================================================================================================

Ancilla3D_ItemSplash:
|08CA25| LDA.b #$08
|08CA27| JSR AllocateOAMInRegionsADF

|08CA2A| LDA.b $11
|08CA2C| BNE AncillaDraw_ObjectSplash

|08CA2E| LDA.w $0C68,X
|08CA31| BNE AncillaDraw_ObjectSplash

|08CA33| LDA.b #$06
|08CA35| STA.w $0C68,X

|08CA38| INC.w $0C5E,X

|08CA3B| LDA.w $0C5E,X
|08CA3E| CMP.b #$05
|08CA40| BNE AncillaDraw_ObjectSplash

|08CA42| STZ.w $0C4A,X

|08CA45| RTS

;===================================================================================================

AncillaDraw_ObjectSplash:
|08CA46| JSR Ancilla_PrepOAMCoord

|08CA49| REP #$20

|08CA4B| LDA.b $00
|08CA4D| STA.b $04

|08CA4F| LDA.b $02
|08CA51| STA.b $06

|08CA53| SEP #$20

|08CA55| PHX

|08CA56| LDY.b #$00

|08CA58| STZ.b $0C

|08CA5A| LDA.w $0C5E,X
|08CA5D| ASL A
|08CA5E| TAX

;---------------------------------------------------------------------------------------------------

.next
|08CA5F| LDA.w .char,X
|08CA62| CMP.b #$FF
|08CA64| BEQ .skip

|08CA66| PHX

|08CA67| TXA
|08CA68| ASL A
|08CA69| TAX

|08CA6A| REP #$20

|08CA6C| LDA.w .offset_x,X
|08CA6F| CLC
|08CA70| ADC.b $04
|08CA72| STA.b $00

|08CA74| LDA.w .offset_y,X
|08CA77| CLC
|08CA78| ADC.b $06
|08CA7A| STA.b $02

|08CA7C| SEP #$20

|08CA7E| PLX

|08CA7F| JSR Ancilla_SetOAM_XY

|08CA82| LDA.w .char,X
|08CA85| STA.b ($90),Y

|08CA87| INY

|08CA88| LDA.w .prop,X
|08CA8B| ORA.b #$24
|08CA8D| STA.b ($90),Y

|08CA8F| INY
|08CA90| PHY

|08CA91| TYA
|08CA92| SEC
|08CA93| SBC.b #$04
|08CA95| LSR A
|08CA96| LSR A
|08CA97| TAY

|08CA98| LDA.w .size,X
|08CA9B| STA.b ($92),Y

|08CA9D| PLY

;---------------------------------------------------------------------------------------------------

.skip
|08CA9E| INX

|08CA9F| INC.b $0C

|08CAA1| LDA.b $0C
|08CAA3| CMP.b #$02
|08CAA5| BNE .next

|08CAA7| PLX

|08CAA8| RTS

;===================================================================================================

MilestoneItemReceiptIDs:
.ether
|08CAA9| db $10 ; ITEMGET 10

.green_pendant
|08CAAA| db $37 ; ITEMGET 37

.blue_pendant
|08CAAB| db $39 ; ITEMGET 39

.red_pendant
|08CAAC| db $38 ; ITEMGET 38

.heart_container
|08CAAD| db $26 ; ITEMGET 26

.bombos
|08CAAE| db $0F ; ITEMGET 0F

.crystal
|08CAAF| db $20 ; ITEMGET 20

;---------------------------------------------------------------------------------------------------

Ancilla29_MilestoneItemReceipt:
|08CAB0| LDA.w $0C5E,X
|08CAB3| CMP.w MilestoneItemReceiptIDs.ether
|08CAB6| BEQ .medallion

|08CAB8| CMP.w MilestoneItemReceiptIDs.bombos
|08CABB| BEQ .medallion

|08CABD| LDA.w $0403
|08CAC0| AND.b #$40
|08CAC2| BNE .terminate

|08CAC4| LDA.w $0403
|08CAC7| AND.b #$80
|08CAC9| BEQ .exit

|08CACB| LDA.w $04C2
|08CACE| BEQ .time_up

|08CAD0| CMP.b #$01
|08CAD2| BNE .tick_timer

|08CAD4| LDY.b #$23

|08CAD6| LDA.w $0C5E,X
|08CAD9| CMP.w MilestoneItemReceiptIDs.crystal
|08CADC| BNE .not_crystal

|08CADE| LDA.b #$0F ; SFX1.0F
|08CAE0| STA.w $012D

|08CAE3| LDY.b #$28

.not_crystal
|08CAE5| TYA
|08CAE6| STA.b $72

|08CAE8| PHX

|08CAE9| JSL WriteTo4BPPBuffer_item_gfx

|08CAED| PLX

.tick_timer
|08CAEE| DEC.w $04C2

.exit
|08CAF1| RTS

;---------------------------------------------------------------------------------------------------

.terminate
|08CAF2| STZ.w $0C4A,X

|08CAF5| RTS

.medallion
|08CAF6| LDA.w $0394,X
|08CAF9| BEQ .no_misc_palette

|08CAFB| DEC.w $0394,X

|08CAFE| RTS

;---------------------------------------------------------------------------------------------------

.time_up
|08CAFF| LDA.w $039F,X
|08CB02| BNE .no_misc_palette

|08CB04| LDA.w $0C5E,X
|08CB07| CMP.w MilestoneItemReceiptIDs.crystal
|08CB0A| BNE .no_misc_palette

|08CB0C| LDA.b #$01
|08CB0E| STA.w $039F,X

|08CB11| PHX

|08CB12| LDA.b #$04
|08CB14| STA.w $0AB1

|08CB17| LDA.b #$02
|08CB19| STA.w $0AA9

|08CB1C| JSL PaletteLoad_SpriteEnvironment_Underworld

|08CB20| INC.b $15

|08CB22| PLX

;---------------------------------------------------------------------------------------------------

.no_misc_palette
|08CB23| LDA.w $0C5E,X
|08CB26| CMP.w MilestoneItemReceiptIDs.crystal
|08CB29| BNE .no_sparkle

|08CB2B| JSR AncillaAdd_OccasionalSparkle

.no_sparkle
|08CB2E| LDA.b $11
|08CB30| BNE .just_draw

|08CB32| LDA.w $029E,X
|08CB35| CMP.b #$18
|08CB37| BCS .no_collision

|08CB39| LDY.b #$02
|08CB3B| JSR Ancilla_CheckLinkCollision
|08CB3E| BCC .no_collision

|08CB40| LDA.w $037E
|08CB43| BNE .no_collision

|08CB45| LDA.b $4D
|08CB47| BNE .no_collision

|08CB49| STZ.w $0C4A,X

|08CB4C| LDA.b $5D
|08CB4E| CMP.b #$19 ; LINKSTATE 19
|08CB50| BEQ .using_medallion

|08CB52| CMP.b #$1A ; LINKSTATE 1A
|08CB54| BNE .not_medallion

.using_medallion
|08CB56| STZ.w $0112
|08CB59| STZ.w $03EF

|08CB5C| LDA.b #$00 ; LINKSTATE 00
|08CB5E| STA.b $5D

;---------------------------------------------------------------------------------------------------

.not_medallion
|08CB60| LDA.b #$03
|08CB62| STA.w $02E9

|08CB65| PHX

|08CB66| LDA.w $0C5E,X
|08CB69| TAY

|08CB6A| JSL GrantItemReceipt

|08CB6E| PLX

|08CB6F| RTS

;---------------------------------------------------------------------------------------------------

.no_collision
|08CB70| LDA.w $0C54,X
|08CB73| BEQ .not_grounded

|08CB75| CMP.b #$02
|08CB77| BEQ .just_draw

|08CB79| LDA.w $0294,X
|08CB7C| SEC
|08CB7D| SBC.b #$01
|08CB7F| STA.w $0294,X

.not_grounded
|08CB82| JSR AncillaMoveZ

|08CB85| LDA.w $029E,X
|08CB88| CMP.b #$F8
|08CB8A| BCC .just_draw

|08CB8C| INC.w $0C54,X

|08CB8F| LDA.b #$18
|08CB91| STA.w $0294,X

|08CB94| STZ.w $029E,X

;---------------------------------------------------------------------------------------------------

.just_draw
|08CB97| JSR Ancilla_PrepOAMCoord.adjusted

|08CB9A| REP #$20

|08CB9C| LDA.w $029E,X
|08CB9F| AND.w #$00FF
|08CBA2| STA.b $72

|08CBA4| LDA.b $00
|08CBA6| STA.b $06

|08CBA8| SEC
|08CBA9| SBC.b $72
|08CBAB| STA.b $00

|08CBAD| SEP #$20

|08CBAF| JSR AncillaDraw_ItemReceipt

|08CBB2| PHX

|08CBB3| DEC.w $03B1,X
|08CBB6| BPL .delay_ripple

|08CBB8| LDA.b #$09
|08CBBA| STA.w $03B1,X

|08CBBD| INC.w $0385,X

|08CBC0| LDA.w $0385,X
|08CBC3| CMP.b #$03
|08CBC5| BNE .delay_ripple

|08CBC7| STZ.w $0385,X

;---------------------------------------------------------------------------------------------------

.delay_ripple
|08CBCA| LDA.w $0385,X
|08CBCD| STA.b $72

|08CBCF| LDA.w $029E,X
|08CBD2| CMP.b #$00
|08CBD4| BNE .airborne

|08CBD6| LDX.b #$00

|08CBD8| LDA.b $A0
|08CBDA| CMP.b #$06 ; ROOM 0006
|08CBDC| BNE .no_water_draw

|08CBDE| LDA.b $A1
|08CBE0| CMP.b #$00
|08CBE2| BNE .no_water_draw

|08CBE4| LDA.b $72
|08CBE6| CLC
|08CBE7| ADC.b #$04
|08CBE9| TAX

|08CBEA| BRA .no_water_draw

.airborne
|08CBEC| LDX.b #$01

|08CBEE| CMP.b #$20
|08CBF0| BCC .no_water_draw

|08CBF2| INX

;---------------------------------------------------------------------------------------------------

.no_water_draw
|08CBF3| REP #$20

|08CBF5| LDA.b $06
|08CBF7| CLC
|08CBF8| ADC.w #$000C
|08CBFB| STA.b $00

|08CBFD| SEP #$20

|08CBFF| LDA.b #$20
|08CC01| STA.b $04

|08CC03| JSR AncillaDraw_Shadow

|08CC06| PLX

|08CC07| RTS

;===================================================================================================

ItemReceipt_TransmuteToRisingCrystal:
|08CC08| LDA.b #$3E ; ANCILLA 3E
|08CC0A| STA.w $0C4A,X

|08CC0D| STZ.w $0C22,X
|08CC10| STZ.w $0C2C,X
|08CC13| STZ.w $0C36,X

;===================================================================================================

Ancilla3E_RisingCrystal:
|08CC16| STZ.w $029E,X

|08CC19| JSR AncillaAdd_OccasionalSparkle

|08CC1C| LDA.w $0C22,X
|08CC1F| CLC
|08CC20| ADC.b #$FF
|08CC22| CMP.b #$F0
|08CC24| BCS .positive

|08CC26| LDA.b #$F0

.positive
|08CC28| STA.w $0C22,X

|08CC2B| JSR AncillaMoveY

|08CC2E| LDA.w $0BFA,X
|08CC31| STA.b $00

|08CC33| LDA.w $0C0E,X
|08CC36| STA.b $01

|08CC38| REP #$20

|08CC3A| LDA.b $00
|08CC3C| SEC
|08CC3D| SBC.w $0122
|08CC40| CMP.w #$0049
|08CC43| BCS .not_in_position

|08CC45| LDA.w #$0049
|08CC48| CLC
|08CC49| ADC.w $0122
|08CC4C| STA.b $00

;---------------------------------------------------------------------------------------------------

|08CC4E| SEP #$20

|08CC50| LDA.b $00
|08CC52| STA.w $0BFA,X

|08CC55| LDA.b $01
|08CC57| STA.w $0C0E,X

|08CC5A| LDA.b $11
|08CC5C| BNE .not_in_position

|08CC5E| PHX

|08CC5F| LDA.w $040C
|08CC62| LSR A
|08CC63| TAX

|08CC64| LDA.l $7EF37A
|08CC68| ORA.l RoomTagPrizeChecks,X
|08CC6C| STA.l $7EF37A

|08CC70| LDA.b #$18
|08CC72| STA.b $11
|08CC74| STZ.b $B0

;---------------------------------------------------------------------------------------------------

|08CC76| REP #$20

|08CC78| LDX.b #$00

|08CC7A| LDA.w #$0000 ; RGB: #000000

.next_color
|08CC7D| STA.l $7EC340,X
|08CC81| STA.l $7EC360,X
|08CC85| STA.l $7EC380,X
|08CC89| STA.l $7EC3A0,X
|08CC8D| STA.l $7EC3C0,X
|08CC91| STA.l $7EC3E0,X

|08CC95| INX
|08CC96| INX
|08CC97| CPX.b #$20
|08CC99| BNE .next_color

|08CC9B| STA.l $7EC007
|08CC9F| STA.l $7EC009

;---------------------------------------------------------------------------------------------------

|08CCA3| SEP #$20

|08CCA5| PLX

.not_in_position
|08CCA6| SEP #$20

|08CCA8| JSR Ancilla_PrepOAMCoord.adjusted

|08CCAB| REP #$20

|08CCAD| LDA.b $00
|08CCAF| STA.b $06

|08CCB1| SEP #$20

|08CCB3| JSR AncillaDraw_ItemReceipt

|08CCB6| RTS

;===================================================================================================

AncillaAdd_OccasionalSparkle:
|08CCB7| LDA.b $1A
|08CCB9| AND.b #$07
|08CCBB| BNE .exit

|08CCBD| PHX

|08CCBE| JSL AncillaAdd_SwordChargeSparkle

|08CCC2| PLX

.exit
|08CCC3| RTS

;===================================================================================================

Ancilla43_GanonsTowerCutscene:
|08CCC4| LDA.w $0C54,X
|08CCC7| BNE .not_first_state

|08CCC9| LDA.w $0C22,X
|08CCCC| CLC
|08CCCD| ADC.b #$FF
|08CCCF| CMP.b #$F0
|08CCD1| BCS .not_max_crystal_speed

|08CCD3| LDA.b #$F0

.not_max_crystal_speed
|08CCD5| STA.w $0C22,X

|08CCD8| JSR AncillaMoveY

|08CCDB| LDA.w $0BFA,X
|08CCDE| STA.b $00

|08CCE0| LDA.w $0C0E,X
|08CCE3| STA.b $01

|08CCE5| LDA.w $0C04,X
|08CCE8| STA.b $02

|08CCEA| LDA.w $0C18,X
|08CCED| STA.b $03

;---------------------------------------------------------------------------------------------------

|08CCEF| REP #$20

|08CCF1| LDA.b $00
|08CCF3| SEC
|08CCF4| SBC.w $0122

|08CCF7| CMP.w #$0038
|08CCFA| BCS .crystals_not_together

|08CCFC| LDA.w #$0038
|08CCFF| CLC
|08CD00| ADC.w $0122
|08CD03| STA.b $00

|08CD05| CLC
|08CD06| ADC.w #$0008
|08CD09| STA.l $7F5810

|08CD0D| LDA.b $02
|08CD0F| CLC
|08CD10| ADC.w #$0008
|08CD13| STA.l $7F580E

|08CD17| SEP #$20

|08CD19| LDA.b $00
|08CD1B| STA.w $0BFA,X

|08CD1E| LDA.b $01
|08CD20| STA.w $0C0E,X

|08CD23| INC.w $0C54,X

|08CD26| LDA.b #$05 ; SFX1.05
|08CD28| STA.w $012D

|08CD2B| LDA.b #$F1 ; SONG F1 - fade
|08CD2D| STA.w $012C

|08CD30| REP #$20

|08CD32| LDA.w #$0139 ; MESSAGE 0139
|08CD35| STA.w $1CF0

|08CD38| SEP #$20

|08CD3A| JSL PrepAndDisplayMessage

|08CD3E| BRA .draw_single_crystal_prep

;---------------------------------------------------------------------------------------------------

.crystals_not_together
|08CD40| SEP #$20

.not_first_state
|08CD42| LDA.w $0C54,X
|08CD45| CMP.b #$01
|08CD47| BNE .not_expansive

|08CD49| LDA.b $11
|08CD4B| BNE .not_expansive

|08CD4D| LDA.b #$10
|08CD4F| STA.w $0C2C,X

|08CD52| LDA.w $0C04,X
|08CD55| STA.b $72

|08CD57| LDA.w $0C18,X
|08CD5A| STA.b $73

|08CD5C| LDA.l $7F5808
|08CD60| STA.w $0C04,X

|08CD63| STZ.w $0C18,X

|08CD66| JSR AncillaMoveX

|08CD69| LDA.w $0C04,X
|08CD6C| STA.l $7F5808

|08CD70| LDA.b $72
|08CD72| STA.w $0C04,X

|08CD75| LDA.b $73
|08CD77| STA.w $0C18,X

|08CD7A| LDA.l $7F5808
|08CD7E| CMP.b #$30
|08CD80| BCC .not_expansive

|08CD82| LDA.b #$30
|08CD84| STA.l $7F5808

|08CD88| INC.w $0C54,X

;---------------------------------------------------------------------------------------------------

.not_expansive
|08CD8B| LDA.b $11
|08CD8D| BNE GTCutscene_AnimateCrystals

|08CD8F| LDA.w $0C54,X
|08CD92| BNE .draw_multiple

;---------------------------------------------------------------------------------------------------

.draw_single_crystal_prep
|08CD94| LDY.b #$00

|08CD96| BRL GTCutscene_DrawSingleCrystal

;---------------------------------------------------------------------------------------------------

.draw_multiple
|08CD99| CMP.b #$01
|08CD9B| BEQ GTCutscene_AnimateCrystals

|08CD9D| CMP.b #$03
|08CD9F| BEQ .final_rotation

;---------------------------------------------------------------------------------------------------

|08CDA1| LDA.l $7F5812
|08CDA5| DEC A
|08CDA6| STA.l $7F5812

|08CDAA| BNE GTCutscene_AnimateCrystals

|08CDAC| LDA.b #$05
|08CDAE| STA.w $04C6

|08CDB1| STZ.b $B0
|08CDB3| STZ.b $C8

|08CDB5| INC.w $0C54,X

|08CDB8| BRA GTCutscene_AnimateCrystals

;---------------------------------------------------------------------------------------------------

.final_rotation
|08CDBA| LDA.b #$30
|08CDBC| STA.w $0C2C,X

|08CDBF| LDA.w $0C04,X
|08CDC2| STA.b $72

|08CDC4| LDA.w $0C18,X
|08CDC7| STA.b $73

|08CDC9| LDA.l $7F5808
|08CDCD| STA.w $0C04,X

|08CDD0| STZ.w $0C18,X

|08CDD3| JSR AncillaMoveX

|08CDD6| LDA.w $0C04,X
|08CDD9| STA.l $7F5808

|08CDDD| LDA.b $72
|08CDDF| STA.w $0C04,X

|08CDE2| LDA.b $73
|08CDE4| STA.w $0C18,X

|08CDE7| LDA.l $7F5808
|08CDEB| CMP.b #$F0
|08CDED| BCC GTCutscene_AnimateCrystals

;---------------------------------------------------------------------------------------------------

|08CDEF| PHX

|08CDF0| LDA.b #$00
|08CDF2| STA.w $0AB1

|08CDF5| LDA.b #$02
|08CDF7| STA.w $0AA9

|08CDFA| JSL PaletteLoad_SpriteEnvironment_Underworld

|08CDFE| INC.b $15

|08CE00| PLX

|08CE01| STZ.w $0C4A,X

|08CE04| RTS

;===================================================================================================

GTCutscene_AnimateCrystals:
|08CE05| LDY.b #$00

|08CE07| LDA.w $0C54,X
|08CE0A| STA.b $72

|08CE0C| BEQ .sparkle_a_not

|08CE0E| JSR GTCutscene_SparkleALot

.sparkle_a_not
|08CE11| LDX.b #$06

.next_crystal
|08CE13| LDA.b $11
|08CE15| BNE .no_rotate

|08CE17| LDA.b $72
|08CE19| CMP.b #$01
|08CE1B| BEQ .no_rotate

|08CE1D| LDA.b $1A
|08CE1F| AND.b #$01
|08CE21| BNE .no_rotate

|08CE23| LDA.l $7F5800,X
|08CE27| INC A
|08CE28| AND.b #$3F
|08CE2A| STA.l $7F5800,X

.no_rotate
|08CE2E| LDA.l $7F5808
|08CE32| STA.b $08

|08CE34| LDA.l $7F5800,X

|08CE38| JSR Ancilla_GetRadialProjection

|08CE3B| REP #$20

|08CE3D| PHY

|08CE3E| LDA.b $00
|08CE40| LDY.b $02
|08CE42| BEQ .positive_y

|08CE44| EOR.w #$FFFF
|08CE47| INC A

.positive_y
|08CE48| CLC
|08CE49| ADC.l $7F5810
|08CE4D| CLC
|08CE4E| ADC.w #$FFF8
|08CE51| SEC
|08CE52| SBC.w $0122
|08CE55| STA.b $00

|08CE57| LDA.b $04

|08CE59| LDY.b $06
|08CE5B| BEQ .positive_x

|08CE5D| EOR.w #$FFFF
|08CE60| INC A

.positive_x
|08CE61| CLC
|08CE62| ADC.l $7F580E
|08CE66| CLC
|08CE67| ADC.w #$FFF8
|08CE6A| SEC
|08CE6B| SBC.w $011E
|08CE6E| STA.b $02

|08CE70| PLY

|08CE71| SEP #$20

|08CE73| LDA.b $00
|08CE75| STA.l $7F5817,X

|08CE79| LDA.b $01
|08CE7B| STA.l $7F581F,X

|08CE7F| LDA.b $02
|08CE81| STA.l $7F5827,X

|08CE85| LDA.b $03
|08CE87| STA.l $7F582F,X

|08CE8B| PHX

|08CE8C| JSR AncillaDraw_GTCutsceneCrystal

|08CE8F| PLX
|08CE90| DEX

|08CE91| BPL .next_crystal

;===================================================================================================

GTCutscene_DrawSingleCrystal:
|08CE93| LDX.w $0FA0

|08CE96| PHY
|08CE97| JSR Ancilla_PrepOAMCoord.adjusted
|08CE9A| PLY

|08CE9B| LDA.b $00
|08CE9D| STA.l $7F581E

|08CEA1| LDA.b $01
|08CEA3| STA.l $7F5826

|08CEA7| LDA.b $02
|08CEA9| STA.l $7F582E

|08CEAD| LDA.b $03
|08CEAF| STA.l $7F5836

|08CEB3| JSR AncillaDraw_GTCutsceneCrystal

;---------------------------------------------------------------------------------------------------

|08CEB6| LDX.w $0FA0

|08CEB9| LDA.w $0C54,X
|08CEBC| BNE .skip_sparkle

|08CEBE| JSR AncillaAdd_OccasionalSparkle

|08CEC1| BRA .exit

.skip_sparkle
|08CEC3| LDA.b $11
|08CEC5| BNE .exit

|08CEC7| JSR GTCutscene_ActivateSparkle

|08CECA| LDX.w $0FA0

.exit
|08CECD| RTS

;===================================================================================================

AncillaDraw_GTCutsceneCrystal:
|08CECE| JSR Ancilla_SetOAM_XY_safe

|08CED1| LDA.b #$24
|08CED3| STA.b ($90),Y

|08CED5| INY

|08CED6| LDA.b #$3C
|08CED8| STA.b ($90),Y

|08CEDA| INY
|08CEDB| PHY

|08CEDC| TYA
|08CEDD| SEC
|08CEDE| SBC.b #$04
|08CEE0| LSR A
|08CEE1| LSR A
|08CEE2| TAY

|08CEE3| LDA.b #$02
|08CEE5| ORA.b $75
|08CEE7| STA.b ($92),Y

|08CEE9| PLY

|08CEEA| RTS

;===================================================================================================

GTCutscene_ActivateSparkle:
|08CEEB| LDX.b #$17

.next_check
|08CEED| LDA.l $7F5837,X
|08CEF1| CMP.b #$FF
|08CEF3| BEQ .activate_it

|08CEF5| DEX
|08CEF6| BPL .next_check

|08CEF8| BRA .exit

;---------------------------------------------------------------------------------------------------

.activate_it
|08CEFA| PHX

|08CEFB| LDA.b #$00
|08CEFD| STA.l $7F5837,X

|08CF01| LDA.b #$04
|08CF03| STA.l $7F58AF,X

|08CF07| JSL GetRandomNumber
|08CF0B| STA.b $08

|08CF0D| LSR A
|08CF0E| LSR A
|08CF0F| LSR A
|08CF10| LSR A
|08CF11| STA.b $09

|08CF13| LDA.b $08
|08CF15| AND.b #$0F
|08CF17| STA.b $08

|08CF19| TXA
|08CF1A| AND.b #$07
|08CF1C| TAX

|08CF1D| LDA.l $7F5817,X
|08CF21| CLC
|08CF22| ADC.b $08
|08CF24| STA.b $00

|08CF26| LDA.l $7F581F,X
|08CF2A| ADC.b #$00
|08CF2C| STA.b $01

|08CF2E| LDA.l $7F5827,X
|08CF32| CLC
|08CF33| ADC.b $09
|08CF35| STA.b $02

|08CF37| LDA.l $7F582F,X
|08CF3B| ADC.b #$00
|08CF3D| STA.b $03

|08CF3F| PLX

|08CF40| LDA.b $00
|08CF42| STA.l $7F584F,X

|08CF46| LDA.b $01
|08CF48| STA.l $7F5867,X

|08CF4C| LDA.b $02
|08CF4E| STA.l $7F587F,X

|08CF52| LDA.b $03
|08CF54| STA.l $7F5897,X

.exit
|08CF58| RTS

;===================================================================================================

GTCutscene_SparkleALot:
|08CF59| LDX.b #$17

.next
|08CF5B| LDA.l $7F5837,X
|08CF5F| CMP.b #$FF
|08CF61| BEQ .skip

|08CF63| LDA.l $7F58AF,X
|08CF67| DEC A
|08CF68| STA.l $7F58AF,X
|08CF6C| BPL .active

|08CF6E| LDA.b #$04
|08CF70| STA.l $7F58AF,X

|08CF74| LDA.l $7F5837,X
|08CF78| INC A
|08CF79| STA.l $7F5837,X

|08CF7D| CMP.b #$03
|08CF7F| BNE .active

|08CF81| LDA.b #$FF
|08CF83| STA.l $7F5837,X
|08CF87| BRA .skip

;---------------------------------------------------------------------------------------------------

.active
|08CF89| PHX

|08CF8A| LDA.l $7F584F,X
|08CF8E| STA.b $00

|08CF90| LDA.l $7F5867,X
|08CF94| STA.b $01

|08CF96| LDA.l $7F587F,X
|08CF9A| STA.b $02

|08CF9C| LDA.l $7F5897,X
|08CFA0| STA.b $03

|08CFA2| LDA.l $7F5837,X
|08CFA6| TAX

|08CFA7| JSR Ancilla_SetOAM_XY

|08CFAA| LDA.w Ancilla3C_SpinAttackChargeSparkle.char,X
|08CFAD| STA.b ($90),Y

|08CFAF| INY

|08CFB0| LDA.w Ancilla3C_SpinAttackChargeSparkle.prop,X
|08CFB3| ORA.b #$30
|08CFB5| STA.b ($90),Y

|08CFB7| INY
|08CFB8| PHY

|08CFB9| TYA
|08CFBA| SEC
|08CFBB| SBC.b #$04
|08CFBD| LSR A
|08CFBE| LSR A
|08CFBF| TAY

|08CFC0| LDA.b #$00
|08CFC2| STA.b ($92),Y

|08CFC4| PLY
|08CFC5| PLX

.skip
|08CFC6| DEX
|08CFC7| BPL .next

;---------------------------------------------------------------------------------------------------

|08CFC9| RTS

;===================================================================================================

FluteBounce:
|08CFCA| db  24
|08CFCB| db  16
|08CFCC| db  10
|08CFCD| db   0

;===================================================================================================

Ancilla36_Flute:
|08CFCE| LDA.b $11
|08CFD0| BNE .no_collision_check

|08CFD2| LDA.w $0C54,X
|08CFD5| CMP.b #$03
|08CFD7| BEQ .check_collision

|08CFD9| LDA.w $0294,X
|08CFDC| SEC
|08CFDD| SBC.b #$02
|08CFDF| STA.w $0294,X

|08CFE2| JSR AncillaMoveX
|08CFE5| JSR AncillaMoveZ

;---------------------------------------------------------------------------------------------------

|08CFE8| LDA.w $029E,X
|08CFEB| BPL .no_collision_check

|08CFED| CMP.b #$F0
|08CFEF| BCC .no_collision_check

|08CFF1| INC.w $0C54,X

|08CFF4| LDY.w $0C54,X

|08CFF7| LDA.w FluteBounce,Y
|08CFFA| STA.w $0294,X

|08CFFD| STZ.w $029E,X

.no_collision_check
|08D000| BRA AncillaDraw_Flute

;---------------------------------------------------------------------------------------------------

.check_collision
|08D002| LDY.b #$02
|08D004| JSR Ancilla_CheckLinkCollision
|08D007| BCC AncillaDraw_Flute

|08D009| LDA.w $037E
|08D00C| BNE AncillaDraw_Flute

|08D00E| LDA.b $4D
|08D010| BNE AncillaDraw_Flute

|08D012| PHX

|08D013| STZ.w $0C4A,X

|08D016| STZ.w $02E9

|08D019| LDY.b #$14 ; ITEMGET 14
|08D01B| JSL GrantItemReceipt

|08D01F| PLX

|08D020| RTS

;===================================================================================================

AncillaDraw_Flute:
|08D021| JSR Ancilla_PrepOAMCoord.adjusted

|08D024| REP #$20

|08D026| LDA.w $029E,X
|08D029| AND.w #$00FF
|08D02C| CMP.w #$0080
|08D02F| BCC .positive_z

|08D031| ORA.w #$FF00

.positive_z
|08D034| EOR.w #$FFFF
|08D037| INC A

|08D038| CLC
|08D039| ADC.b $00
|08D03B| STA.b $00

;---------------------------------------------------------------------------------------------------

|08D03D| SEP #$20

|08D03F| PHX

|08D040| LDY.b #$00
|08D042| JSR Ancilla_SetOAM_XY

|08D045| LDA.b #$24
|08D047| STA.b ($90),Y

|08D049| INY

|08D04A| LDA.b #$04
|08D04C| ORA.b $65
|08D04E| STA.b ($90),Y

|08D050| LDA.b #$02
|08D052| STA.b ($92)

|08D054| PLX

|08D055| LDY.b #$01

|08D057| LDA.b ($90),Y
|08D059| CMP.b #$F0
|08D05B| BNE EXIT_08D060

|08D05D| STZ.w $0C4A,X

;---------------------------------------------------------------------------------------------------

#EXIT_08D060:
|08D060| RTS

;===================================================================================================

Ancilla37_WeathervaneExplosion:
|08D061| REP #$20

|08D063| LDA.l $7F58B6
|08D067| DEC A
|08D068| STA.l $7F58B6

|08D06C| BNE .proceed_to_exit

|08D06E| SEP #$20

|08D070| INC A
|08D071| STA.l $7F58B6

|08D075| LDA.l $7F58B8
|08D079| BNE .continue

|08D07B| INC A
|08D07C| STA.l $7F58B8

|08D080| LDA.b #$F3 ; SONG F3 - max volume
|08D082| STA.w $012C

|08D085| BRA .continue

.proceed_to_exit
|08D087| SEP #$20

|08D089| BRA EXIT_08D060

;---------------------------------------------------------------------------------------------------

.continue
|08D08B| DEC.w $0394,X

|08D08E| LDA.w $0394,X
|08D091| BNE .proceed_to_exit

|08D093| INC A
|08D094| STA.w $0394,X

|08D097| LDA.w $039F,X
|08D09A| BNE .already_BOOMed

|08D09C| INC A
|08D09D| STA.w $039F,X

|08D0A0| LDA.b #$0C ; SFX2.0C
|08D0A2| JSR Ancilla_SFX2_Near

;---------------------------------------------------------------------------------------------------

.already_BOOMed
|08D0A5| LDA.w $0C54,X
|08D0A8| BNE .not_first_step

|08D0AA| DEC.w $03B1,X
|08D0AD| BPL .not_first_step

|08D0AF| LDA.b #$01
|08D0B1| STA.w $0C54,X

|08D0B4| PHX

|08D0B5| JSL AlterWeathervane

|08D0B9| LDY.b #$00
|08D0BB| LDA.b #$38 ; ANCILLA 38
|08D0BD| JSL AncillaAdd_CutsceneDuck

|08D0C1| PLX

.not_first_step
|08D0C2| TXA
|08D0C3| STA.l $7F5878

|08D0C7| LDA.b #$00
|08D0C9| STA.l $7F5879

;---------------------------------------------------------------------------------------------------

|08D0CD| LDX.b #$0B

.next
|08D0CF| LDA.l $7F586C,X
|08D0D3| CMP.b #$FF
|08D0D5| BNE .dont_skip

|08D0D7| BRL .skip

.dont_skip
|08D0DA| LDA.l $7F5860,X
|08D0DE| DEC A
|08D0DF| STA.l $7F5860,X

|08D0E3| BPL .delay_char_toggle

|08D0E5| LDA.b #$01
|08D0E7| STA.l $7F5860,X

|08D0EB| LDA.l $7F586C,X
|08D0EF| EOR.b #$01
|08D0F1| STA.l $7F586C,X

;---------------------------------------------------------------------------------------------------

.delay_char_toggle
|08D0F5| PHX

|08D0F6| LDA.l $7F5878
|08D0FA| TAY

|08D0FB| LDA.l $7F586C,X
|08D0FF| STA.w $0C5E,Y

|08D102| LDA.l $7F5824,X
|08D106| STA.w $0BFA,Y

|08D109| LDA.l $7F5830,X
|08D10D| STA.w $0C0E,Y

|08D110| LDA.l $7F583C,X
|08D114| STA.w $0C04,Y

|08D117| LDA.l $7F5848,X
|08D11B| STA.w $0C18,Y

|08D11E| LDA.l $7F5854,X
|08D122| STA.w $029E,Y

|08D125| LDA.l $7F5800,X
|08D129| STA.w $0C22,Y

|08D12C| LDA.l $7F580C,X
|08D130| STA.w $0C2C,Y

|08D133| LDA.l $7F5818,X
|08D137| SEC
|08D138| SBC.b #$01
|08D13A| STA.l $7F5818,X
|08D13E| STA.w $0294,Y

;---------------------------------------------------------------------------------------------------

|08D141| TYX

|08D142| JSR AncillaMoveY
|08D145| JSR AncillaMoveX
|08D148| JSR AncillaMoveZ

|08D14B| STZ.b $74

|08D14D| LDA.w $029E,X
|08D150| CMP.b #$F0
|08D152| BCC .not_buried

|08D154| LDA.b #$FF
|08D156| STA.b $74

.not_buried
|08D158| JSR AncillaDraw_WeathervaneExplosionWoodDebris
|08D15B| PLX

|08D15C| LDA.b $74
|08D15E| BPL .dont_deactivate

|08D160| STA.l $7F586C,X

.dont_deactivate
|08D164| LDA.l $7F5878
|08D168| TAY

|08D169| LDA.w $0BFA,Y
|08D16C| STA.l $7F5824,X

|08D170| LDA.w $0C0E,Y
|08D173| STA.l $7F5830,X

|08D177| LDA.w $0C04,Y
|08D17A| STA.l $7F583C,X

|08D17E| LDA.w $0C18,Y
|08D181| STA.l $7F5848,X

|08D185| LDA.w $029E,Y
|08D188| STA.l $7F5854,X

;---------------------------------------------------------------------------------------------------

.skip
|08D18C| DEX
|08D18D| BMI .done_loop

|08D18F| BRL .next

;---------------------------------------------------------------------------------------------------

.done_loop
|08D192| LDA.l $7F5878
|08D196| TAY

|08D197| LDX.b #$0B

.next_active_check
|08D199| LDA.l $7F586C,X
|08D19D| CMP.b #$FF
|08D19F| BNE .exit

|08D1A1| DEX
|08D1A2| BPL .next_active_check

|08D1A4| TYX
|08D1A5| STZ.w $0C4A,X

.exit
|08D1A8| TYX

|08D1A9| RTS

;===================================================================================================

pool AncillaDraw_WeathervaneExplosionWoodDebris

.char
|08D1AA| db $4E, $4F

endpool

;---------------------------------------------------------------------------------------------------

AncillaDraw_WeathervaneExplosionWoodDebris:
|08D1AC| JSR Ancilla_PrepOAMCoord

|08D1AF| REP #$20

|08D1B1| LDA.w $029E,X
|08D1B4| AND.w #$00FF
|08D1B7| CMP.w #$0080
|08D1BA| BCC .positive_z

|08D1BC| ORA.w #$FF00

.positive_z
|08D1BF| EOR.w #$FFFF
|08D1C2| INC A

|08D1C3| CLC
|08D1C4| ADC.b $00
|08D1C6| STA.b $00

|08D1C8| SEP #$20

|08D1CA| LDA.w $0C5E,X
|08D1CD| STA.b $72

|08D1CF| BMI .exit

|08D1D1| PHX

|08D1D2| LDA.l $7F5879
|08D1D6| TAY

|08D1D7| JSR Ancilla_SetOAM_XY

|08D1DA| LDX.b $72

|08D1DC| LDA.w .char,X
|08D1DF| STA.b ($90),Y

|08D1E1| INY

|08D1E2| LDA.b #$3C
|08D1E4| STA.b ($90),Y

|08D1E6| INY
|08D1E7| TYA
|08D1E8| STA.l $7F5879

|08D1EC| SEC
|08D1ED| SBC.b #$04

|08D1EF| LSR A
|08D1F0| LSR A
|08D1F1| TAY

|08D1F2| LDA.b #$00
|08D1F4| STA.b ($92),Y

|08D1F6| PLX

.exit
|08D1F7| RTS

;===================================================================================================

pool Ancilla38_CutsceneDuck CutsceneDuck_Draw

.hflip
|08D1F8| db $40, $00

.swirl
|08D1FA| db $1C, $3C

endpool

;---------------------------------------------------------------------------------------------------

Ancilla38_CutsceneDuck:
|08D1FC| LDA.b $1A
|08D1FE| AND.b #$1F
|08D200| BNE .skip_sfx

|08D202| LDA.b #$1E ; SFX3.1E
|08D204| JSR Ancilla_SFX3_Pan

.skip_sfx
|08D207| DEC.w $039F,X
|08D20A| BPL .delay

|08D20C| LDA.b #$03
|08D20E| STA.w $039F,X

|08D211| LDA.w $0380,X
|08D214| EOR.b #$01
|08D216| STA.w $0380,X

.delay
|08D219| DEC.w $03B1,X

|08D21C| LDA.w $03B1,X
|08D21F| BEQ .movement

|08D221| BRL CutsceneDuck_Draw

;---------------------------------------------------------------------------------------------------

.movement
|08D224| LDA.b #$01
|08D226| STA.w $03B1,X

|08D229| LDA.w $0385,X
|08D22C| BNE .swirl_around

|08D22E| DEC.w $0C5E,X
|08D231| BMI .init_swirling

|08D233| LDY.b #$FF
|08D235| LDA.w $0C54,X
|08D238| BEQ .accelerate_descent

|08D23A| LDY.b #$01

.accelerate_descent
|08D23C| TYA
|08D23D| CLC
|08D23E| ADC.w $0294,X
|08D241| STA.w $0294,X

|08D244| BPL .positive_z

|08D246| EOR.b #$FF
|08D248| INC A

.positive_z
|08D249| CMP.b #$0C
|08D24B| BCC .dont_flip_swirl

|08D24D| LDA.w $0C54,X
|08D250| EOR.b #$01
|08D252| STA.w $0C54,X

.dont_flip_swirl
|08D255| BRL CutsceneDuck_Draw

;---------------------------------------------------------------------------------------------------

.init_swirling
|08D258| STZ.w $0C5E,X
|08D25B| STZ.w $0C54,X

|08D25E| LDA.w .swirl
|08D261| STA.w $0C2C,X

|08D264| LDA.b #$F0
|08D266| STA.w $0294,X

|08D269| INC.w $0385,X

|08D26C| LDA.b #$03
|08D26E| STA.w $0C54,X

.swirl_around
|08D271| LDY.b #$FF

|08D273| LDA.w $0C54,X
|08D276| AND.b #$01
|08D278| BNE .accelerate_left

|08D27A| LDY.b #$01

.accelerate_left
|08D27C| TYA
|08D27D| CLC
|08D27E| ADC.w $0C2C,X
|08D281| STA.w $0C2C,X

|08D284| BPL .positive_x_a

|08D286| EOR.b #$FF
|08D288| INC A

.positive_x_a
|08D289| CMP.b #$00
|08D28B| BNE .not_maxed_swirl

|08D28D| INC.w $0385,X

|08D290| LDY.w $0385,X
|08D293| CPY.b #$07
|08D295| BNE .not_maxed_swirl

|08D297| PHA

|08D298| LDA.b #$01
|08D29A| STA.w $03A9,X

|08D29D| PLA

;---------------------------------------------------------------------------------------------------

.not_maxed_swirl
|08D29E| LDY.w $03A9,X
|08D2A1| CMP.w .swirl,Y
|08D2A4| BCC .not_max_x

|08D2A6| LDA.w $0C54,X
|08D2A9| AND.b #$03
|08D2AB| EOR.b #$03
|08D2AD| STA.b $00

|08D2AF| LDA.w $0C54,X
|08D2B2| AND.b #$FC
|08D2B4| ORA.b $00
|08D2B6| STA.w $0C54,X

;---------------------------------------------------------------------------------------------------

.not_max_x
|08D2B9| LDY.b #$03

|08D2BB| LDA.w $0C2C,X
|08D2BE| BPL .positive_x_b

|08D2C0| EOR.b #$FF
|08D2C2| INC A

|08D2C3| LDY.b #$02

.positive_x_b
|08D2C5| STA.b $00

|08D2C7| TYA
|08D2C8| STA.w $0C72,X

|08D2CB| LDY.w $03A9,X

|08D2CE| LDA.w .swirl,Y
|08D2D1| SEC
|08D2D2| SBC.b $00
|08D2D4| LSR A
|08D2D5| STA.b $00

|08D2D7| LDA.w $0C54,X
|08D2DA| AND.b #$02
|08D2DC| BEQ .descending

|08D2DE| LDA.b $00
|08D2E0| EOR.b #$FF
|08D2E2| INC A
|08D2E3| STA.b $00

.descending
|08D2E5| LDA.b $00
|08D2E7| STA.w $0294,X

;===================================================================================================

CutsceneDuck_Draw:
|08D2EA| JSR AncillaMoveX
|08D2ED| JSR AncillaMoveZ

|08D2F0| LDY.w $0380,X

|08D2F3| LDA.w .vram_offset+1,Y
|08D2F6| STA.w $0AF4

|08D2F9| JSR Ancilla_PrepOAMCoord

|08D2FC| LDA.w $0C72,X
|08D2FF| AND.b #$01
|08D301| TAY

|08D302| LDA.w .hflip,Y
|08D305| STA.b $08

;===================================================================================================

|08D307| REP #$20

|08D309| LDA.w $029E,X
|08D30C| AND.w #$00FF
|08D30F| CMP.w #$0080
|08D312| BCC .z_is_positive

|08D314| ORA.w #$FF00

.z_is_positive
|08D317| EOR.w #$FFFF
|08D31A| INC A
|08D31B| STA.b $04

|08D31D| LDA.b $00
|08D31F| STA.b $0A

|08D321| SEC
|08D322| SBC.b $04
|08D324| STA.b $04

|08D326| LDA.b $02
|08D328| STA.b $06

|08D32A| SEP #$20 ; okay

|08D32C| PHX

|08D32D| LDY.b #$00

|08D32F| REP #$20

|08D331| LDA.w .offset_y
|08D334| AND.w #$00FF
|08D337| CLC
|08D338| ADC.b $04
|08D33A| STA.b $00

|08D33C| LDA.w .offset_x
|08D33F| AND.w #$00FF
|08D342| CLC
|08D343| ADC.b $06
|08D345| STA.b $02

;---------------------------------------------------------------------------------------------------

|08D347| SEP #$20

|08D349| JSR Ancilla_SetOAM_XY

|08D34C| LDA.w .char
|08D34F| STA.b ($90),Y

|08D351| INY

|08D352| LDA.w .prop
|08D355| ORA.b #$30
|08D357| ORA.b $08
|08D359| STA.b ($90),Y

|08D35B| INY
|08D35C| PHY

|08D35D| TYA
|08D35E| SEC
|08D35F| SBC.b #$04
|08D361| LSR A
|08D362| LSR A
|08D363| TAY

|08D364| LDA.b #$02
|08D366| STA.b ($92),Y

|08D368| PLY

|08D369| REP #$20

|08D36B| LDA.b $0A
|08D36D| CLC
|08D36E| ADC.w #$0030
|08D371| STA.b $00

|08D373| LDA.b $06
|08D375| STA.b $02

;---------------------------------------------------------------------------------------------------

|08D377| SEP #$20

|08D379| LDA.b #$30
|08D37B| STA.b $04

|08D37D| LDX.b #$01
|08D37F| JSR AncillaDraw_Shadow

|08D382| PLX

|08D383| REP #$20

|08D385| LDA.b $06
|08D387| BMI .exit

|08D389| CMP.w #$00F8
|08D38C| BCC .exit

;---------------------------------------------------------------------------------------------------

|08D38E| SEP #$20

|08D390| STZ.w $0C4A,X

|08D393| STZ.b $11

|08D395| LDA.b #$03
|08D397| STA.l $7EF34C

;---------------------------------------------------------------------------------------------------

.exit
|08D39B| SEP #$20

|08D39D| RTS

;===================================================================================================

pool AncillaDraw_LinkPoof

.char
|08D39E| db $86
|08D39F| db $A9
|08D3A0| db $9B

.size
|08D3A1| db $02
|08D3A2| db $00
|08D3A3| db $00

.prop
|08D3A4| db $00, $FF, $FF, $FF
|08D3A8| db $40, $00, $C0, $80
|08D3AC| db $00, $40, $80, $C0

.offset_y
|08D3B0| dw   0,   0,   0,   0
|08D3B8| dw   0,   0,   8,   8
|08D3C0| dw  -4,  -4,  12,  12

.offset_x
|08D3C8| dw   0,   0,   0,   0
|08D3D0| dw   0,   8,   0,   8
|08D3D8| dw  -4,  12,  -4,  12

endpool

;---------------------------------------------------------------------------------------------------

Ancilla23_LinkPoof:
|08D3E0| DEC.w $03B1,X
|08D3E3| BPL AncillaDraw_LinkPoof

|08D3E5| LDA.b #$07
|08D3E7| STA.w $03B1,X

|08D3EA| LDA.w $0C5E,X
|08D3ED| INC A
|08D3EE| STA.w $0C5E,X

|08D3F1| CMP.b #$03
|08D3F3| BNE AncillaDraw_LinkPoof

|08D3F5| STZ.w $0C4A,X

|08D3F8| STZ.w $02E1
|08D3FB| STZ.b $50

|08D3FD| LDA.w $0C54,X
|08D400| BNE .exit

|08D402| STZ.b $2E
|08D404| STZ.b $4B

;---------------------------------------------------------------------------------------------------

|08D406| LDY.b #$00

|08D408| LDA.b $8A
|08D40A| AND.b #$40
|08D40C| BEQ .light_world

|08D40E| INY

.light_world
|08D40F| STY.w $02E0
|08D412| STY.b $56
|08D414| BEQ .link_colors

.bunny_colors
|08D416| JSL RefreshEquipmentPalettes_bunny

|08D41A| BRA .exit

.link_colors
|08D41C| JSL RefreshEquipmentPalettes_sword_and_mail

.exit
|08D420| RTS

;===================================================================================================

AncillaDraw_LinkPoof:
|08D421| LDA.w $0FB3
|08D424| BEQ .use_default_oam_slots

|08D426| LDA.w $0C7C,X
|08D429| BEQ .use_default_oam_slots

|08D42B| LDA.w $035F
|08D42E| BEQ .use_hardcoded_oam_slots

|08D430| LDA.b $1A
|08D432| AND.b #$01
|08D434| BNE .use_default_oam_slots

;---------------------------------------------------------------------------------------------------

.use_hardcoded_oam_slots
|08D436| REP #$20

; [HARDCODED] oam allocation
|08D438| LDA.w #$00D0
|08D43B| PHA

|08D43C| CLC
|08D43D| ADC.w #$0800
|08D440| STA.b $90

|08D442| PLA
|08D443| LSR A
|08D444| LSR A
|08D445| CLC
|08D446| ADC.w #$0A20
|08D449| STA.b $92

|08D44B| SEP #$20

;---------------------------------------------------------------------------------------------------

.use_default_oam_slots
|08D44D| JSR Ancilla_PrepOAMCoord

|08D450| REP #$20

|08D452| LDA.b $00
|08D454| STA.b $04

|08D456| LDA.b $02
|08D458| STA.b $06

|08D45A| SEP #$20

|08D45C| PHX

|08D45D| LDY.w $0C5E,X

|08D460| LDA.w .size,Y
|08D463| STA.b $08

|08D465| LDA.w .char,Y
|08D468| STA.b $0C

|08D46A| TYA
|08D46B| ASL A
|08D46C| ASL A
|08D46D| STA.b $0E

;---------------------------------------------------------------------------------------------------

|08D46F| LDY.b #$00
|08D471| STY.b $0A

.next
|08D473| LDA.b $0E
|08D475| CLC
|08D476| ADC.b $0A
|08D478| ASL A
|08D479| TAX

|08D47A| REP #$20

|08D47C| LDA.b $04
|08D47E| CLC
|08D47F| ADC.w .offset_y,X
|08D482| STA.b $00

|08D484| LDA.b $06
|08D486| CLC
|08D487| ADC.w .offset_x,X
|08D48A| STA.b $02

;---------------------------------------------------------------------------------------------------

|08D48C| SEP #$20

|08D48E| JSR Ancilla_SetOAM_XY

|08D491| LDA.b $0C
|08D493| STA.b ($90),Y

|08D495| INY

|08D496| TXA
|08D497| LSR A
|08D498| TAX

|08D499| LDA.w .prop,X
|08D49C| ORA.b #$04
|08D49E| ORA.b $65
|08D4A0| STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

|08D4A2| INY
|08D4A3| PHY

|08D4A4| TYA
|08D4A5| SEC
|08D4A6| SBC.b #$04
|08D4A8| LSR A
|08D4A9| LSR A
|08D4AA| TAY

|08D4AB| LDA.b $08
|08D4AD| STA.b ($92),Y

|08D4AF| PLY

;---------------------------------------------------------------------------------------------------

|08D4B0| CMP.b #$02
|08D4B2| BEQ .exit

|08D4B4| INC.b $0A

|08D4B6| LDA.b $0A
|08D4B8| CMP.b #$04
|08D4BA| BNE .next

.exit
|08D4BC| PLX

|08D4BD| RTS

;===================================================================================================

Ancilla40_DwarfPoof:
|08D4BE| DEC.w $03B1,X
|08D4C1| BPL .draw

|08D4C3| LDA.b #$07
|08D4C5| STA.w $03B1,X

|08D4C8| LDA.w $0C5E,X
|08D4CB| INC A
|08D4CC| STA.w $0C5E,X

|08D4CF| CMP.b #$03
|08D4D1| BNE .draw

|08D4D3| STZ.w $0C4A,X
|08D4D6| STZ.w $02F9

|08D4D9| RTS

.draw
|08D4DA| BRL AncillaDraw_LinkPoof

;===================================================================================================

pool Ancilla3F_BushPoof

.char
|08D4DD| db $86, $87, $96, $97
|08D4E1| db $A9, $A9, $A9, $A9
|08D4E5| db $8A, $8B, $9A, $9B
|08D4E9| db $9B, $9B, $9B, $9B

.prop
|08D4ED| db $00, $00, $00, $00
|08D4F1| db $00, $40, $80, $C0
|08D4F5| db $00, $00, $00, $00
|08D4F9| db $C0, $80, $40, $00

.offset_y_low
|08D4FD| db   0,   0,   8,   8
|08D501| db   0,   0,   8,   8
|08D505| db   0,   0,   8,   8
|08D509| db  -2,  -2,  10,  10

.offset_y_high
|08D50D| db   0,   0,   0,   0
|08D511| db   0,   0,   0,   0
|08D515| db   0,   0,   0,   0
|08D519| db  -1,  -1,   0,   0

.offset_x_low
|08D51D| db   0,   8,   0,   8
|08D521| db   0,   8,   0,   8
|08D525| db   0,   8,   0,   8
|08D529| db  -2,  10,  -2,  10

.offset_x_high
|08D52D| db   0,   0,   0,   0
|08D531| db   0,   0,   0,   0
|08D535| db   0,   0,   0,   0
|08D539| db  -1,   0,  -1,   0

endpool

;---------------------------------------------------------------------------------------------------

Ancilla3F_BushPoof:
|08D53D| LDA.w $0C68,X
|08D540| BNE .draw

|08D542| LDA.b #$07
|08D544| STA.w $0C68,X

|08D547| INC.w $0C5E,X

|08D54A| LDA.w $0C5E,X
|08D54D| CMP.b #$04
|08D54F| BNE .draw

|08D551| STZ.w $0C4A,X

|08D554| RTS

;---------------------------------------------------------------------------------------------------

.draw
|08D555| LDA.b #$10
|08D557| JSL AllocateOAMInRegionC

|08D55B| JSR Ancilla_PrepOAMCoord

|08D55E| LDA.b $00
|08D560| STA.b $06

|08D562| LDA.b $01
|08D564| STA.b $07
|08D566| STZ.b $08

;---------------------------------------------------------------------------------------------------

|08D568| LDY.b #$00

|08D56A| LDA.w $0C5E,X
|08D56D| ASL A
|08D56E| ASL A
|08D56F| TAX

.next
|08D570| LDA.b $06
|08D572| CLC
|08D573| ADC.w .offset_y_low,X
|08D576| STA.b $00

|08D578| LDA.b $07
|08D57A| ADC.w .offset_y_high,X
|08D57D| STA.b $01

|08D57F| LDA.b $04
|08D581| CLC
|08D582| ADC.w .offset_x_low,X
|08D585| STA.b $02

|08D587| LDA.b $05
|08D589| ADC.w .offset_x_high,X
|08D58C| STA.b $03

|08D58E| JSR Ancilla_SetOAM_XY

|08D591| LDA.w .char,X
|08D594| STA.b ($90),Y

|08D596| INY

|08D597| LDA.w .prop,X
|08D59A| ORA.b #$04
|08D59C| ORA.b $65
|08D59E| STA.b ($90),Y

|08D5A0| INY
|08D5A1| PHY

|08D5A2| TYA
|08D5A3| SEC
|08D5A4| SBC.b #$04
|08D5A6| LSR A
|08D5A7| LSR A
|08D5A8| TAY

|08D5A9| LDA.b #$00
|08D5AB| STA.b ($92),Y

|08D5AD| PLY

|08D5AE| INX

|08D5AF| INC.b $08

|08D5B1| LDA.b $08
|08D5B3| CMP.b #$04
|08D5B5| BNE .next

;---------------------------------------------------------------------------------------------------

|08D5B7| BRL Ancilla_RestoreIndex

;===================================================================================================

pool Ancilla26_SwordSwingSparkle

.char
|08D5BA| db $B7, $B7, $FF
|08D5BD| db $80, $80, $B7
|08D5C0| db $83, $83, $80
|08D5C3| db $83, $FF, $FF

|08D5C6| db $B7, $B7, $FF
|08D5C9| db $80, $80, $B7
|08D5CC| db $83, $83, $80
|08D5CF| db $83, $FF, $FF

|08D5D2| db $B7, $B7, $FF
|08D5D5| db $80, $80, $B7
|08D5D8| db $83, $83, $80
|08D5DB| db $83, $FF, $FF

|08D5DE| db $B7, $B7, $FF
|08D5E1| db $80, $80, $B7
|08D5E4| db $83, $83, $80
|08D5E7| db $83, $FF, $FF

;---------------------------------------------------------------------------------------------------

.prop
|08D5EA| db $00, $00, $FF
|08D5ED| db $00, $00, $00
|08D5F0| db $80, $80, $00
|08D5F3| db $80, $FF, $FF

|08D5F6| db $00, $00, $FF
|08D5F9| db $00, $00, $00
|08D5FC| db $80, $80, $00
|08D5FF| db $80, $FF, $FF

|08D602| db $00, $00, $FF
|08D605| db $00, $00, $00
|08D608| db $80, $80, $00
|08D60B| db $80, $FF, $FF

|08D60E| db $00, $00, $FF
|08D611| db $00, $00, $00
|08D614| db $80, $80, $00
|08D617| db $80, $FF, $FF

;---------------------------------------------------------------------------------------------------

.offset_y
|08D61A| db -22, -18,  -1
|08D61D| db -22, -18, -17
|08D620| db -22, -18, -17
|08D623| db -17,  -1,  -1

|08D626| db  35,  40,  -1
|08D629| db  35,  40,  37
|08D62C| db  35,  40,  37
|08D62F| db  37,  -1,  -1

|08D632| db   2,   7,  -1
|08D635| db   2,   7,  19
|08D638| db   2,   7,  19
|08D63B| db  19,  -1,  -1

|08D63E| db   2,   7,  -1
|08D641| db   2,   7,  19
|08D644| db   2,   7,  19
|08D647| db  19,  -1,  -1

;---------------------------------------------------------------------------------------------------

.offset_x
|08D64A| db   5,  10,  -1
|08D64D| db   5,  10,  -4
|08D650| db   5,  10,  -4
|08D653| db  -4,  -1,  -1

|08D656| db   0,   5,  -1
|08D659| db   0,   5,  14
|08D65C| db   0,   5,  14
|08D65F| db  14,  -1,  -1

|08D662| db -23, -27,  -1
|08D665| db -23, -27, -22
|08D668| db -23, -27, -22
|08D66B| db -22,  -1,  -1

|08D66E| db  32,  35,  -1
|08D671| db  32,  35,  30
|08D674| db  32,  35,  30
|08D677| db  30,  -1,  -1

;---------------------------------------------------------------------------------------------------

.group_offset
|08D67A| db $00
|08D67B| db $0C
|08D67C| db $18
|08D67D| db $24

endpool

;---------------------------------------------------------------------------------------------------

Ancilla26_SwordSwingSparkle:
|08D67E| DEC.w $03B1,X
|08D681| BPL .draw

|08D683| LDA.b #$00
|08D685| STA.w $03B1,X

|08D688| INC.w $0C5E,X

|08D68B| LDA.w $0C5E,X
|08D68E| CMP.b #$04
|08D690| BNE .draw

|08D692| STZ.w $0C4A,X

|08D695| RTS

;---------------------------------------------------------------------------------------------------

.draw
|08D696| PHX

|08D697| LDA.b $20
|08D699| STA.w $0BFA,X

|08D69C| LDA.b $21
|08D69E| STA.w $0C0E,X

|08D6A1| LDA.b $22
|08D6A3| STA.w $0C04,X

|08D6A6| LDA.b $23
|08D6A8| STA.w $0C18,X

|08D6AB| JSR Ancilla_PrepOAMCoord

;---------------------------------------------------------------------------------------------------

|08D6AE| REP #$20

|08D6B0| LDA.b $00
|08D6B2| STA.b $04

|08D6B4| LDA.b $02
|08D6B6| STA.b $06

|08D6B8| SEP #$20

|08D6BA| LDA.b #$02
|08D6BC| STA.b $08

|08D6BE| LDY.w $0C72,X

|08D6C1| LDA.w $0C5E,X
|08D6C4| ASL A
|08D6C5| CLC
|08D6C6| ADC.w $0C5E,X
|08D6C9| CLC
|08D6CA| ADC.w .group_offset,Y
|08D6CD| TAX

;---------------------------------------------------------------------------------------------------

|08D6CE| LDY.b #$00

.next
|08D6D0| LDA.w .char,X
|08D6D3| CMP.b #$FF
|08D6D5| BEQ .skip

|08D6D7| REP #$20

|08D6D9| LDA.w .offset_y,X
|08D6DC| AND.w #$00FF
|08D6DF| CMP.w #$0080
|08D6E2| BCC .positive_y

|08D6E4| ORA.w #$FF00

.positive_y
|08D6E7| CLC
|08D6E8| ADC.b $04
|08D6EA| STA.b $00

|08D6EC| LDA.w .offset_x,X
|08D6EF| AND.w #$00FF
|08D6F2| CMP.w #$0080
|08D6F5| BCC .positive_x

|08D6F7| ORA.w #$FF00

.positive_x
|08D6FA| CLC
|08D6FB| ADC.b $06
|08D6FD| STA.b $02

;---------------------------------------------------------------------------------------------------

|08D6FF| SEP #$20

|08D701| JSR Ancilla_SetOAM_XY

|08D704| LDA.w .char,X
|08D707| STA.b ($90),Y

|08D709| INY

|08D70A| LDA.w .prop,X
|08D70D| ORA.b #$04
|08D70F| ORA.b $65
|08D711| STA.b ($90),Y

|08D713| INY
|08D714| PHY

|08D715| TYA
|08D716| SEC
|08D717| SBC.b #$04
|08D719| LSR A
|08D71A| LSR A
|08D71B| TAY

|08D71C| LDA.b #$00
|08D71E| STA.b ($92),Y

|08D720| PLY

;---------------------------------------------------------------------------------------------------

.skip
|08D721| INX

|08D722| DEC.b $08
|08D724| BPL .next

;---------------------------------------------------------------------------------------------------

|08D726| PLX

|08D727| RTS

;===================================================================================================

pool Ancilla2A_SpinAttackSparkleA

.timer
|08D728| db   4
|08D729| db   2
|08D72A| db   3
|08D72B| db   3
|08D72C| db   2
|08D72D| db   1

.char
|08D72E| db $92, $FF, $FF, $FF
|08D732| db $8C, $8C, $8C, $8C
|08D736| db $D6, $D6, $D6, $D6
|08D73A| db $93, $93, $93, $93
|08D73E| db $D6, $D6, $D6, $D6
|08D742| db $D7, $FF, $FF, $FF
|08D746| db $80, $FF, $FF, $FF

.prop
|08D74A| db $22, $FF, $FF, $FF
|08D74E| db $22, $62, $A2, $E2
|08D752| db $24, $64, $A4, $E4
|08D756| db $22, $62, $A2, $E2
|08D75A| db $22, $62, $A2, $E2
|08D75E| db $22, $FF, $FF, $FF
|08D762| db $22, $FF, $FF, $FF

.offset_y
|08D766| dw  -4,   0,   0,   0
|08D76E| dw  -8,  -8,   0,   0
|08D776| dw  -8,  -8,   0,   0
|08D77E| dw  -8,  -8,   0,   0
|08D786| dw  -8,  -8,   0,   0
|08D78E| dw  -4,   0,   0,   0
|08D796| dw  -4,   0,   0,   0

.offset_x
|08D79E| dw  -4,   0,   0,   0
|08D7A6| dw  -8,   0,  -8,   0
|08D7AE| dw  -8,   0,  -8,   0
|08D7B6| dw  -8,   0,  -8,   0
|08D7BE| dw  -8,   0,  -8,   0
|08D7C6| dw  -4,   0,   0,   0
|08D7CE| dw  -4,   0,   0,   0

endpool

;---------------------------------------------------------------------------------------------------

Ancilla2A_SpinAttackSparkleA:
|08D7D6| LDA.b $11
|08D7D8| BNE .just_draw

|08D7DA| DEC.w $03B1,X
|08D7DD| BPL .just_draw

|08D7DF| STZ.w $03B1,X

|08D7E2| LDA.w $0C68,X
|08D7E5| BNE .just_draw

|08D7E7| LDA.w $0C5E,X
|08D7EA| INC A
|08D7EB| STA.w $0C5E,X

|08D7EE| TAY

|08D7EF| LDA.w .timer,Y
|08D7F2| STA.w $0C68,X

|08D7F5| CPY.b #$05
|08D7F7| BNE .just_draw

|08D7F9| LDA.w $0C54,X
|08D7FC| BNE .add_beam

|08D7FE| BRL SpinAttackSparkleA_TransmuteToNextSpark

.add_beam
|08D801| JSL AncillaAdd_SwordBeam

|08D805| RTS

;---------------------------------------------------------------------------------------------------

.just_draw
|08D806| LDA.w $0C5E,X
|08D809| BEQ .exit

|08D80B| JSR Ancilla_PrepOAMCoord

|08D80E| REP #$20

|08D810| LDA.b $00
|08D812| STA.b $06

|08D814| LDA.b $02
|08D816| STA.b $08

|08D818| SEP #$20

|08D81A| PHX

|08D81B| LDY.b #$00
|08D81D| STY.b $04

|08D81F| LDA.w $0C5E,X
|08D822| DEC A
|08D823| ASL A
|08D824| ASL A
|08D825| TAX

;===================================================================================================

#AncillaDraw_SpinningSpark:
.next
|08D826| LDA.w .char,X
|08D829| CMP.b #$FF
|08D82B| BEQ .skip

|08D82D| REP #$20

|08D82F| PHX

|08D830| TXA
|08D831| ASL A
|08D832| TAX

|08D833| LDA.b $06
|08D835| CLC
|08D836| ADC.w .offset_y,X
|08D839| STA.b $00

|08D83B| LDA.b $08
|08D83D| CLC
|08D83E| ADC.w .offset_x,X
|08D841| STA.b $02

|08D843| PLX

;---------------------------------------------------------------------------------------------------

|08D844| SEP #$20

|08D846| JSR Ancilla_SetOAM_XY

|08D849| LDA.w .char,X
|08D84C| STA.b ($90),Y

|08D84E| INY

|08D84F| LDA.w .prop,X
|08D852| AND.b #$CF
|08D854| ORA.b $65
|08D856| STA.b ($90),Y

|08D858| INY
|08D859| PHY

|08D85A| TYA
|08D85B| SEC
|08D85C| SBC.b #$04
|08D85E| LSR A
|08D85F| LSR A
|08D860| TAY

|08D861| LDA.b #$00
|08D863| STA.b ($92),Y

|08D865| PLY

;---------------------------------------------------------------------------------------------------

.skip
|08D866| INX

|08D867| INC.b $04

|08D869| LDA.b $04
|08D86B| AND.b #$03
|08D86D| BNE .next

;---------------------------------------------------------------------------------------------------

|08D86F| PLX

.exit
|08D870| RTS

;===================================================================================================

pool SpinAttackSparkleA_TransmuteToNextSpark

.rotation
|08D871| db $21, $20, $1F, $1E ; up
|08D875| db $03, $02, $01, $00 ; down
|08D879| db $12, $11, $10, $0F ; left
|08D87D| db $31, $30, $2F, $2E ; right

.offset_y
|08D881| dw  28 ; up
|08D883| dw  -2 ; down
|08D885| dw  24 ; left
|08D887| dw   6 ; right

.offset_x
|08D889| dw  -3 ; up
|08D88B| dw  21 ; down
|08D88D| dw  25 ; left
|08D88F| dw  -8 ; right

endpool

;---------------------------------------------------------------------------------------------------

SpinAttackSparkleA_TransmuteToNextSpark:
|08D891| LDA.b #$2B ; ANCILLA 2B
|08D893| STA.w $0C4A,X

|08D896| LDA.b $2F
|08D898| ASL A
|08D899| TAY

|08D89A| LDA.w .rotation+0,Y
|08D89D| STA.l $7F5800

|08D8A1| LDA.w .rotation+1,Y
|08D8A4| STA.l $7F5801

|08D8A8| LDA.w .rotation+2,Y
|08D8AB| STA.l $7F5802

|08D8AF| LDA.w .rotation+3,Y
|08D8B2| STA.l $7F5803
|08D8B6| STA.l $7F5804

;---------------------------------------------------------------------------------------------------

|08D8BA| LDA.b #$02
|08D8BC| STA.w $03B1,X

|08D8BF| LDA.b #$4C
|08D8C1| STA.w $0C5E,X

|08D8C4| LDA.b #$08
|08D8C6| STA.w $039F,X

|08D8C9| STZ.w $0C54,X
|08D8CC| STZ.w $0385,X

|08D8CF| LDA.b #$FF
|08D8D1| STA.w $03A4,X

|08D8D4| LDA.b #$14
|08D8D6| STA.l $7F5808

;---------------------------------------------------------------------------------------------------

|08D8DA| LDY.b $2F

|08D8DC| REP #$20

|08D8DE| LDA.b $20
|08D8E0| CLC
|08D8E1| ADC.w #$000C
|08D8E4| STA.l $7F5810

|08D8E8| LDA.b $22
|08D8EA| CLC
|08D8EB| ADC.w #$0008
|08D8EE| STA.l $7F580E

|08D8F2| LDA.b $20
|08D8F4| CLC
|08D8F5| ADC.w .offset_y,Y
|08D8F8| STA.b $00

|08D8FA| LDA.b $22
|08D8FC| CLC
|08D8FD| ADC.w .offset_x,Y
|08D900| STA.b $02

;---------------------------------------------------------------------------------------------------

|08D902| SEP #$20

|08D904| LDA.b $00
|08D906| STA.w $0BFA,X

|08D909| LDA.b $01
|08D90B| STA.w $0C0E,X

|08D90E| LDA.b $02
|08D910| STA.w $0C04,X

|08D913| LDA.b $03
|08D915| STA.w $0C18,X

|08D918| BRA Ancilla2B_SpinAttackSparkleB

;===================================================================================================

pool Ancilla2B_SpinAttackSparkleB

.char
|08D91A| db $D7, $B7, $80, $83

.extra_char
|08D91E| db $B7, $80, $83

endpool

;---------------------------------------------------------------------------------------------------

Ancilla2B_SpinAttackSparkleB:
|08D921| LDA.w $0385,X
|08D924| BEQ .continue

|08D926| BRL SpinAttackSparkleB_Closer

.continue
|08D929| PHX

|08D92A| LDA.b #$02
|08D92C| STA.b $73

|08D92E| LDA.b $11
|08D930| BNE .no_ai

|08D932| LDY.b #$00

|08D934| LDA.w $0C5E,X
|08D937| SEC
|08D938| SBC.b #$03
|08D93A| STA.w $0C5E,X

|08D93D| CMP.b #$0D
|08D93F| BCS .dont_run_closer

|08D941| PLX

|08D942| LDA.b #$01
|08D944| STA.w $03B1,X
|08D947| STA.w $0385,X

|08D94A| STZ.w $0C5E,X

|08D94D| BRL SpinAttackSparkleB_Closer

;---------------------------------------------------------------------------------------------------

.dont_run_closer
|08D950| CMP.b #$42
|08D952| BCS .not_four

|08D954| LDY.b #$03
|08D956| BRA .set_count

.not_four
|08D958| CMP.b #$46
|08D95A| BNE .not_two

|08D95C| LDY.b #$01

.not_two
|08D95E| CMP.b #$43
|08D960| BNE .set_count

|08D962| LDY.b #$02

.set_count
|08D964| TYA
|08D965| STA.w $0C54,X

|08D968| DEC.w $03B1,X
|08D96B| BPL .no_ai

|08D96D| LDA.b #$04
|08D96F| STA.b $73

|08D971| LDA.b #$02
|08D973| STA.w $03B1,X

;---------------------------------------------------------------------------------------------------

.no_ai
|08D976| LDY.b #$00

|08D978| LDA.w $0C54,X
|08D97B| TAX

.next_spark
|08D97C| STX.b $72

|08D97E| LDA.b $11
|08D980| BNE .no_rotate

|08D982| LDA.l $7F5800,X
|08D986| CLC
|08D987| ADC.b #$04
|08D989| AND.b #$3F
|08D98B| STA.l $7F5800,X

.no_rotate
|08D98F| PHX
|08D990| PHY

|08D991| LDA.l $7F5808
|08D995| STA.b $08

|08D997| LDA.l $7F5800,X
|08D99B| JSR Ancilla_GetRadialProjection
|08D99E| JSL Sparkle_PrepOAMFromRadial

|08D9A2| PLY

|08D9A3| JSR Ancilla_SetOAM_XY

|08D9A6| LDX.b $72

|08D9A8| LDA.w .char,X
|08D9AB| STA.b ($90),Y

|08D9AD| INY

|08D9AE| LDA.b $73
|08D9B0| ORA.b $65
|08D9B2| STA.b ($90),Y

|08D9B4| INY
|08D9B5| PHY

|08D9B6| TYA
|08D9B7| SEC
|08D9B8| SBC.b #$04
|08D9BA| LSR A
|08D9BB| LSR A
|08D9BC| TAY

|08D9BD| LDA.b #$00
|08D9BF| STA.b ($92),Y

|08D9C1| PLY
|08D9C2| PLX
|08D9C3| DEX
|08D9C4| BPL .next_spark

;---------------------------------------------------------------------------------------------------

|08D9C6| PLX
|08D9C7| PHX

|08D9C8| LDA.b $11
|08D9CA| BNE .skip_extra_logic

|08D9CC| DEC.w $039F,X
|08D9CF| BPL .delay_extra

|08D9D1| LDA.b #$00
|08D9D3| STA.w $039F,X

|08D9D6| LDA.w $03A4,X
|08D9D9| INC A
|08D9DA| AND.b #$03
|08D9DC| STA.w $03A4,X

|08D9DF| CMP.b #$03
|08D9E1| BNE .skip_extra_logic

|08D9E3| LDA.l $7F5804
|08D9E7| CLC
|08D9E8| ADC.b #$09
|08D9EA| AND.b #$3F
|08D9EC| STA.l $7F5804

;---------------------------------------------------------------------------------------------------

.skip_extra_logic
|08D9F0| LDA.w $03A4,X
|08D9F3| STA.b $72

|08D9F5| CMP.b #$03
|08D9F7| BEQ .delay_extra

|08D9F9| PHY

|08D9FA| LDA.l $7F5808
|08D9FE| STA.b $08

|08DA00| LDA.l $7F5804
|08DA04| JSR Ancilla_GetRadialProjection
|08DA07| JSL Sparkle_PrepOAMFromRadial

|08DA0B| PLY

|08DA0C| JSR Ancilla_SetOAM_XY

|08DA0F| LDX.b $72

|08DA11| LDA.w .extra_char,X
|08DA14| STA.b ($90),Y

|08DA16| INY

|08DA17| LDA.b #$04
|08DA19| ORA.b $65
|08DA1B| STA.b ($90),Y

|08DA1D| INY
|08DA1E| TYA
|08DA1F| SEC
|08DA20| SBC.b #$04

|08DA22| LSR A
|08DA23| LSR A
|08DA24| TAY

|08DA25| LDA.b #$00
|08DA27| STA.b ($92),Y

;---------------------------------------------------------------------------------------------------

.delay_extra
|08DA29| PLX
|08DA2A| PHX

|08DA2B| LDA.w $0C5E,X
|08DA2E| TAX

|08DA2F| CPX.b #$07
|08DA31| BNE .exit

|08DA33| LDY.b #$03

|08DA35| LDA.b #$01
|08DA37| STA.b ($92),Y

.exit
|08DA39| PLX

|08DA3A| RTS

;===================================================================================================

Sparkle_PrepOAMFromRadial:
|08DA3B| REP #$20

|08DA3D| LDA.b $00

|08DA3F| LDY.b $02
|08DA41| BEQ .positive_y

|08DA43| EOR.w #$FFFF
|08DA46| INC A

.positive_y
|08DA47| CLC
|08DA48| ADC.l $7F5810
|08DA4C| CLC
|08DA4D| ADC.w #$FFFC
|08DA50| SEC
|08DA51| SBC.b $E8
|08DA53| STA.b $00

|08DA55| LDA.b $04

|08DA57| LDY.b $06
|08DA59| BEQ .positive_x

|08DA5B| EOR.w #$FFFF
|08DA5E| INC A

.positive_x
|08DA5F| CLC
|08DA60| ADC.l $7F580E
|08DA64| CLC
|08DA65| ADC.w #$FFFC
|08DA68| SEC
|08DA69| SBC.b $E2
|08DA6B| STA.b $02

|08DA6D| SEP #$20

|08DA6F| RTL

;===================================================================================================

SpinAttackSparkleB_Closer:
|08DA70| DEC.w $03B1,X
|08DA73| BPL .delay

|08DA75| LDA.b #$01
|08DA77| STA.w $03B1,X

|08DA7A| LDA.w $0C5E,X
|08DA7D| INC A
|08DA7E| STA.w $0C5E,X

|08DA81| CMP.b #$03
|08DA83| BNE .delay

|08DA85| STZ.w $0C4A,X

;---------------------------------------------------------------------------------------------------

.delay
|08DA88| JSR Ancilla_PrepOAMCoord

|08DA8B| REP #$20

|08DA8D| LDA.b $00
|08DA8F| STA.b $06

|08DA91| LDA.b $02
|08DA93| STA.b $08

|08DA95| SEP #$20

|08DA97| PHX

|08DA98| LDY.b #$00
|08DA9A| STY.b $04

|08DA9C| LDA.w $0C5E,X
|08DA9F| CLC
|08DAA0| ADC.b #$04

|08DAA2| ASL A
|08DAA3| ASL A
|08DAA4| TAX

|08DAA5| BRL AncillaDraw_SpinningSpark

;===================================================================================================

pool Ancilla30_ByrnaWindupSpark

.char
|08DAA8| db $92, $FF, $FF, $FF
|08DAAC| db $8C, $8C, $8C, $8C
|08DAB0| db $D6, $D6, $D6, $D6
|08DAB4| db $93, $93, $93, $93

.prop
|08DAB8| db $22, $FF, $FF, $FF
|08DABC| db $22, $62, $A2, $E2
|08DAC0| db $24, $64, $A4, $E4
|08DAC4| db $22, $62, $A2, $E2

.offset_y
|08DAC8| dw  -4,   0,   0,   0
|08DAD0| dw  -8,  -8,   0,   0
|08DAD8| dw  -8,  -8,   0,   0
|08DAE0| dw  -8,  -8,   0,   0

.offset_x
|08DAE8| dw  -4,   0,   0,   0
|08DAF0| dw  -8,   0,  -8,   0
|08DAF8| dw  -8,   0,  -8,   0
|08DB00| dw  -8,   0,  -8,   0

.offset_link_y
|08DB08| dw   5,   0,  -3,  -6
|08DB10| dw  -8,  -3,  12,  28
|08DB18| dw   5,   0,   8,  16
|08DB20| dw   5,   0,   8,  16

.offset_link_x
|08DB28| dw   3,   1,   0,   0
|08DB30| dw  13,  16,  12,  12
|08DB38| dw  24,   7,  -4, -10
|08DB40| dw  -8,   9,  22,  26

endpool

;---------------------------------------------------------------------------------------------------

Ancilla30_ByrnaWindupSpark:
|08DB48| LDA.b $11
|08DB4A| BNE .delay

|08DB4C| DEC.w $03B1,X
|08DB4F| BPL .delay

|08DB51| LDA.b #$01
|08DB53| STA.w $03B1,X

|08DB56| LDA.w $0C5E,X
|08DB59| INC A
|08DB5A| STA.w $0C5E,X

|08DB5D| CMP.b #$11
|08DB5F| BNE .delay

|08DB61| BRL ByrnaWindupSpark_TransmuteToNormal

.delay
|08DB64| LDA.w $0C5E,X
|08DB67| BNE .active

|08DB69| BRL .exit

;---------------------------------------------------------------------------------------------------

.active
|08DB6C| LDA.b $2F
|08DB6E| ASL A
|08DB6F| ASL A
|08DB70| STA.b $00

|08DB72| LDA.w $0300
|08DB75| CMP.b #$02
|08DB77| BNE .not_final_pose

|08DB79| TAY

|08DB7A| LDA.w $039F,X
|08DB7D| DEC A
|08DB7E| BPL .not_final_chars

|08DB80| LDA.b #$00
|08DB82| LDY.b #$03

.not_final_chars
|08DB84| STA.w $039F,X

|08DB87| TYA

.not_final_pose
|08DB88| ASL A
|08DB89| CLC
|08DB8A| ADC.b $00
|08DB8C| TAY

;---------------------------------------------------------------------------------------------------

|08DB8D| REP #$20

|08DB8F| LDA.w .offset_link_y,Y
|08DB92| CLC
|08DB93| ADC.b $20
|08DB95| STA.b $00

|08DB97| LDA.w .offset_link_x,Y
|08DB9A| CLC
|08DB9B| ADC.b $22
|08DB9D| STA.b $02

|08DB9F| SEP #$20

|08DBA1| LDA.b $00
|08DBA3| STA.w $0BFA,X

|08DBA6| LDA.b $01
|08DBA8| STA.w $0C0E,X

|08DBAB| LDA.b $02
|08DBAD| STA.w $0C04,X

|08DBB0| LDA.b $03
|08DBB2| STA.w $0C18,X

|08DBB5| JSR Ancilla_PrepOAMCoord

|08DBB8| REP #$20

|08DBBA| LDA.b $00
|08DBBC| STA.b $06

|08DBBE| LDA.b $02
|08DBC0| STA.b $08

|08DBC2| SEP #$20

|08DBC4| PHX

|08DBC5| STZ.b $0A

|08DBC7| LDA.w $0C5E,X
|08DBCA| DEC A
|08DBCB| AND.b #$0F
|08DBCD| BEQ .start_oam

|08DBCF| CMP.b #$0F
|08DBD1| BEQ .use_last_group

|08DBD3| AND.b #$01
|08DBD5| INC A
|08DBD6| STA.b $0A

|08DBD8| BRA .start_oam

.use_last_group
|08DBDA| LDA.b #$03
|08DBDC| STA.b $0A

.start_oam
|08DBDE| LDA.b $0A
|08DBE0| ASL A
|08DBE1| ASL A
|08DBE2| TAX

;---------------------------------------------------------------------------------------------------

|08DBE3| LDY.b #$00
|08DBE5| STY.b $04

.next_object
|08DBE7| LDA.w .char,X
|08DBEA| CMP.b #$FF
|08DBEC| BEQ .skip

|08DBEE| REP #$20

|08DBF0| PHX

|08DBF1| TXA
|08DBF2| ASL A
|08DBF3| TAX

|08DBF4| LDA.b $06
|08DBF6| CLC
|08DBF7| ADC.w .offset_y,X
|08DBFA| STA.b $00

|08DBFC| LDA.b $08
|08DBFE| CLC
|08DBFF| ADC.w .offset_x,X
|08DC02| STA.b $02

|08DC04| PLX

|08DC05| SEP #$20

|08DC07| JSR Ancilla_SetOAM_XY

|08DC0A| LDA.w .char,X
|08DC0D| STA.b ($90),Y

|08DC0F| INY

|08DC10| LDA.w .prop,X
|08DC13| AND.b #$CF
|08DC15| ORA.b $65
|08DC17| STA.b ($90),Y

|08DC19| INY
|08DC1A| PHY

|08DC1B| TYA
|08DC1C| SEC
|08DC1D| SBC.b #$04
|08DC1F| LSR A
|08DC20| LSR A
|08DC21| TAY

|08DC22| LDA.b #$00
|08DC24| STA.b ($92),Y

|08DC26| PLY

.skip
|08DC27| INX

|08DC28| INC.b $04

|08DC2A| LDA.b $04
|08DC2C| AND.b #$03
|08DC2E| BNE .next_object

|08DC30| PLX

;---------------------------------------------------------------------------------------------------

.exit
|08DC31| RTS

;===================================================================================================

pool ByrnaWindupSpark_TransmuteToNormal

.rotation
|08DC32| db $34, $33, $32, $31 ; up
|08DC36| db $16, $15, $14, $13 ; down
|08DC3A| db $2A, $29, $28, $27 ; left
|08DC3E| db $10, $0F, $0E, $0D ; right

endpool

;===================================================================================================

ByrnaMagicCost:
|08DC42| db $04, $02, $01

;===================================================================================================

ByrnaWindupSpark_TransmuteToNormal:
|08DC45| LDA.b #$31 ; ANCILLA 31
|08DC47| STA.w $0C4A,X

|08DC4A| LDA.b $2F
|08DC4C| ASL A
|08DC4D| TAY

|08DC4E| LDA.w .rotation+0,Y
|08DC51| STA.l $7F5800

|08DC55| LDA.w .rotation+1,Y
|08DC58| STA.l $7F5801

|08DC5C| LDA.w .rotation+2,Y
|08DC5F| STA.l $7F5802

|08DC63| LDA.w .rotation+3,Y
|08DC66| STA.l $7F5803

|08DC6A| LDA.b #$17
|08DC6C| STA.w $03B1,X

|08DC6F| STZ.w $0394,X
|08DC72| STZ.w $0C5E,X

|08DC75| LDA.b #$08
|08DC77| STA.w $039F,X

|08DC7A| STZ.w $0C54,X
|08DC7D| STZ.w $0385,X

|08DC80| LDA.b #$02
|08DC82| STA.w $03A4,X

|08DC85| LDA.b #$15
|08DC87| STA.w $0C68,X

|08DC8A| DEC A
|08DC8B| STA.l $7F5808

|08DC8F| LDA.b #$30 ; SFX3.30
|08DC91| JSR Ancilla_SFX3_Near

;===================================================================================================

Ancilla31_ByrnaSpark:
|08DC94| PHX

|08DC95| LDA.b #$02
|08DC97| STA.b $73

|08DC99| LDA.b $11
|08DC9B| BEQ .continue

|08DC9D| BRL ByrnaSpark_Animate

.continue
|08DCA0| LDA.w $0303
|08DCA3| CMP.b #$0D
|08DCA5| BNE .terminate

|08DCA7| LDA.b #$01
|08DCA9| STA.w $037B

|08DCAC| DEC.w $03B1,X

|08DCAF| LDA.w $03B1,X
|08DCB2| BNE .keep_sparkling

|08DCB4| LDA.b #$01
|08DCB6| STA.w $03B1,X

|08DCB9| LDA.l $7EF37B
|08DCBD| TAY

|08DCBE| LDA.w ByrnaMagicCost,Y
|08DCC1| STA.b $00

|08DCC3| LDA.l $7EF36E
|08DCC7| BEQ .terminate

|08DCC9| SEC
|08DCCA| SBC.b $00
|08DCCC| CMP.b #$80
|08DCCE| BCS .terminate

|08DCD0| STA.b $00

|08DCD2| DEC.w $0394,X
|08DCD5| BPL .delay_sap

|08DCD7| LDA.b #$17
|08DCD9| STA.w $0394,X

|08DCDC| LDA.b $00
|08DCDE| STA.l $7EF36E

.delay_sap
|08DCE2| BIT.b $F4
|08DCE4| BVC .keep_sparkling

;---------------------------------------------------------------------------------------------------

.terminate
|08DCE6| PLX

|08DCE7| STZ.w $037B

|08DCEA| STZ.w $0C4A,X

|08DCED| STZ.w $0373

|08DCF0| RTS

;---------------------------------------------------------------------------------------------------

.keep_sparkling
|08DCF1| LDA.w $0C54,X
|08DCF4| CMP.b #$03
|08DCF6| BEQ .all_sparks

|08DCF8| LDY.b #$00

|08DCFA| INC.w $0C5E,X

|08DCFD| LDA.w $0C5E,X
|08DD00| CMP.b #$04
|08DD02| BCC .not_all_sparks

|08DD04| LDY.b #$03
|08DD06| BRA .set_spark_count

.not_all_sparks
|08DD08| CMP.b #$02
|08DD0A| BNE .not_two

|08DD0C| LDY.b #$01

.not_two
|08DD0E| CMP.b #$03
|08DD10| BNE .set_spark_count

|08DD12| LDY.b #$02

.set_spark_count
|08DD14| TYA
|08DD15| STA.w $0C54,X

.all_sparks
|08DD18| DEC.w $03A4,X
|08DD1B| BPL ByrnaSpark_Animate

|08DD1D| LDA.b #$02
|08DD1F| STA.w $03A4,X

|08DD22| LDA.b #$04
|08DD24| STA.b $73

;===================================================================================================

ByrnaSpark_Animate:
|08DD26| REP #$20

|08DD28| LDA.b $24
|08DD2A| AND.w #$00FF
|08DD2D| CMP.w #$0080
|08DD30| BCC .positive_z

|08DD32| ORA.w #$FF00

.positive_z
|08DD35| CMP.w #$FFFF
|08DD38| BNE .nonzero_z

|08DD3A| LDA.w #$0000

.nonzero_z
|08DD3D| EOR.w #$FFFF
|08DD40| INC A
|08DD41| CLC
|08DD42| ADC.b $20
|08DD44| CLC
|08DD45| ADC.w #$000C
|08DD48| STA.l $7F5810

|08DD4C| LDA.b $22
|08DD4E| CLC
|08DD4F| ADC.w #$0008
|08DD52| STA.l $7F580E

;---------------------------------------------------------------------------------------------------

|08DD56| SEP #$20

|08DD58| LDA.w $0C68,X
|08DD5B| BNE .skip_sfx

|08DD5D| LDA.b #$15
|08DD5F| STA.w $0C68,X

|08DD62| LDA.b #$30 ; SFX3.30
|08DD64| JSR Ancilla_SFX3_Near

.skip_sfx
|08DD67| STX.b $74

|08DD69| LDY.b #$00

|08DD6B| LDA.w $0C54,X
|08DD6E| TAX

;---------------------------------------------------------------------------------------------------

.next_object
|08DD6F| STX.b $72

|08DD71| LDA.b $11
|08DD73| BNE .dont_inc_sparkle

|08DD75| LDA.l $7F5800,X
|08DD79| CLC
|08DD7A| ADC.b #$03
|08DD7C| AND.b #$3F
|08DD7E| STA.l $7F5800,X

.dont_inc_sparkle
|08DD82| PHX
|08DD83| PHY

|08DD84| LDA.l $7F5808
|08DD88| STA.b $08

|08DD8A| LDA.l $7F5800,X
|08DD8E| JSR Ancilla_GetRadialProjection
|08DD91| JSL Sparkle_PrepOAMFromRadial

|08DD95| PLY

|08DD96| JSR Ancilla_SetOAM_XY

|08DD99| LDX.b $72

|08DD9B| LDA.w Ancilla2B_SpinAttackSparkleB.char,X
|08DD9E| STA.b ($90),Y

|08DDA0| INY

|08DDA1| LDA.b $73
|08DDA3| ORA.b $65
|08DDA5| STA.b ($90),Y

|08DDA7| INY
|08DDA8| PHY

|08DDA9| TYA
|08DDAA| SEC
|08DDAB| SBC.b #$04
|08DDAD| LSR A
|08DDAE| LSR A
|08DDAF| TAY

|08DDB0| LDA.b #$00
|08DDB2| STA.b ($92),Y

;---------------------------------------------------------------------------------------------------

|08DDB4| REP #$20

|08DDB6| LDA.b $00
|08DDB8| CLC
|08DDB9| ADC.b $E8
|08DDBB| STA.b $04

|08DDBD| LDA.b $02
|08DDBF| CLC
|08DDC0| ADC.b $E2
|08DDC2| STA.b $06

|08DDC4| SEP #$20

|08DDC6| LDX.b $74

|08DDC8| LDA.b $04
|08DDCA| STA.w $0BFA,X

|08DDCD| LDA.b $05
|08DDCF| STA.w $0C0E,X

|08DDD2| LDA.b $06
|08DDD4| STA.w $0C04,X

|08DDD7| LDA.b $07
|08DDD9| STA.w $0C18,X

|08DDDC| STZ.w $0C72,X

|08DDDF| JSR Ancilla_CheckSpriteCollision

|08DDE2| PLY

|08DDE3| PLX
|08DDE4| DEX
|08DDE5| BPL .next_object

;---------------------------------------------------------------------------------------------------

|08DDE7| PLX

|08DDE8| RTS

;===================================================================================================

Ancilla0C_SwordBeam_bounce:
|08DDE9| JSL Ancilla0C_SwordBeam

|08DDED| RTS

;===================================================================================================

Ancilla0D_SpinAttackFullChargeSpark:
|08DDEE| LDA.b #$04
|08DDF0| JSR AllocateOAMInRegionsADF

|08DDF3| TYA
|08DDF4| STA.w $0C86,X

|08DDF7| JSL Ancilla0D_SpinAttackFullChargeSpark_long

|08DDFB| RTS

;===================================================================================================

pool Ancilla27_Duck CutsceneDuck_Draw

.char
|08DDFC| db $0E, $00, $02

.prop
|08DDFF| db $22, $2E, $2E

.offset_y
|08DE02| db   0,  12,  20

.offset_x
|08DE05| db   0,  -9,  -9

.vram_offset
|08DE08| db $00, $20, $40, $E0

endpool

;---------------------------------------------------------------------------------------------------

Ancilla27_Duck:
|08DE0C| LDA.b $11
|08DE0E| BEQ .continue

|08DE10| BRL .animate

.continue
|08DE13| LDA.w $0C68,X
|08DE16| BEQ .seek_link

|08DE18| REP #$20

|08DE1A| LDA.b $20
|08DE1C| SEC
|08DE1D| SBC.w #$0008
|08DE20| STA.b $00

|08DE22| LDA.w #$FFF0
|08DE25| CLC
|08DE26| ADC.b $E2
|08DE28| STA.b $02

|08DE2A| SEP #$20

|08DE2C| LDA.b $00
|08DE2E| STA.w $0BFA,X

|08DE31| LDA.b $01
|08DE33| STA.w $0C0E,X

|08DE36| LDA.b $02
|08DE38| STA.w $0C04,X

|08DE3B| LDA.b $03
|08DE3D| STA.w $0C18,X

|08DE40| RTS

;---------------------------------------------------------------------------------------------------

.seek_link
|08DE41| DEC.w $0394,X
|08DE44| BPL .delay_flap_sfx

|08DE46| LDA.b #$28
|08DE48| STA.w $0394,X

|08DE4B| LDA.b #$1E ; SFX3.1E
|08DE4D| JSR Ancilla_SFX3_Pan

;---------------------------------------------------------------------------------------------------

.delay_flap_sfx
|08DE50| LDY.w $0385,X
|08DE53| BNE .swoop_down

|08DE55| LDA.w $0C54,X
|08DE58| BEQ .maintain_altitude

|08DE5A| INC.w $0FC1

.swoop_down
|08DE5D| LDA.w $0294,X
|08DE60| CLC
|08DE61| ADC.b #$FF
|08DE63| STA.w $0294,X

|08DE66| JSR AncillaMoveZ

.maintain_altitude
|08DE69| JSR AncillaMoveX

|08DE6C| LDA.w $0385,X
|08DE6F| BEQ .picking_up

|08DE71| BRL .dropping_off

;---------------------------------------------------------------------------------------------------

.dont_pick_up
|08DE74| BRL .continue_from_pickup

.picking_up
|08DE77| LDY.b #$01
|08DE79| JSR Ancilla_CheckLinkCollision
|08DE7C| BCC .dont_pick_up

|08DE7E| LDA.b $10
|08DE80| CMP.b #$0F
|08DE82| BEQ .dont_pick_up

|08DE84| LDA.b $1B
|08DE86| BNE .continue_the_pick

|08DE88| LDA.b $5D
|08DE8A| CMP.b #$0A ; LINKSTATE 0A
|08DE8C| BEQ .dont_pick_up

|08DE8E| CMP.b #$09 ; LINKSTATE 09
|08DE90| BEQ .dont_pick_up

|08DE92| CMP.b #$08 ; LINKSTATE 08
|08DE94| BEQ .dont_pick_up

|08DE96| LDA.b $5B
|08DE98| CMP.b #$02
|08DE9A| BEQ .dont_pick_up

|08DE9C| LDA.w $02DA
|08DE9F| ORA.w $037E
|08DEA2| ORA.w $03EF
|08DEA5| ORA.w $037B
|08DEA8| BNE .dont_pick_up

|08DEAA| BIT.w $0308
|08DEAD| BMI .dont_pick_up

;---------------------------------------------------------------------------------------------------

|08DEAF| PHX

|08DEB0| LDX.b #$04

.next_ancilla_delete
|08DEB2| LDA.w $0C4A,X
|08DEB5| CMP.b #$2A ; ANCILLA 2A
|08DEB7| BEQ .delete_ancilla

|08DEB9| CMP.b #$1F ; ANCILLA 1F
|08DEBB| BEQ .delete_ancilla

|08DEBD| CMP.b #$30 ; ANCILLA 30
|08DEBF| BEQ .delete_ancilla

|08DEC1| CMP.b #$31 ; ANCILLA 31
|08DEC3| BEQ .delete_ancilla

|08DEC5| CMP.b #$41 ; ANCILLA 41
|08DEC7| BNE .dont_delete_ancilla

.delete_ancilla
|08DEC9| STZ.w $0C4A,X

.dont_delete_ancilla
|08DECC| DEX
|08DECD| BPL .next_ancilla_delete

|08DECF| PLX

;---------------------------------------------------------------------------------------------------

|08DED0| LDA.l $7EF3CC
|08DED4| CMP.b #$09 ; FOLLOWER 09
|08DED6| BNE .continue_the_pick

|08DED8| LDA.b #$00
|08DEDA| STA.l $7EF3CC
|08DEDE| STA.w $02F9

.continue_the_pick
|08DEE1| REP #$20

|08DEE3| STZ.w $0308
|08DEE6| STZ.w $011A
|08DEE9| STZ.w $011C

|08DEEC| SEP #$20

|08DEEE| JSL ResetLinkProperties_A

|08DEF2| STZ.w $0345
|08DEF5| STZ.w $03F8

|08DEF8| LDA.b #$0C
|08DEFA| STA.b $4B

|08DEFC| LDA.b #$00 ; LINKSTATE 00
|08DEFE| STA.b $5D

|08DF00| INC A
|08DF01| STA.w $02DA
|08DF04| STA.w $02E4
|08DF07| STA.w $037B
|08DF0A| STA.w $02F9

|08DF0D| INC A
|08DF0E| STA.w $0C54,X

|08DF11| INC.w $0FC1

|08DF14| STZ.w $0373

|08DF17| LDA.b $1B
|08DF19| BEQ .continue_from_pickup

|08DF1B| STA.w $03FD

.continue_from_pickup
|08DF1E| BRA .animate

;---------------------------------------------------------------------------------------------------

.dropping_off
|08DF20| LDA.w $0C04,X
|08DF23| STA.b $00

|08DF25| LDA.w $0C18,X
|08DF28| STA.b $01

|08DF2A| LDA.w $0C54,X
|08DF2D| BEQ .dont_freeze_npcs

|08DF2F| INC.w $0FC1

.dont_freeze_npcs
|08DF32| REP #$20

|08DF34| LDA.b $00
|08DF36| BMI .delay_dropoff

|08DF38| CMP.b $22
|08DF3A| BCC .delay_dropoff

;---------------------------------------------------------------------------------------------------

|08DF3C| SEP #$20

|08DF3E| LDA.w $0C54,X
|08DF41| BEQ .animate

|08DF43| STZ.w $0C54,X

|08DF46| STZ.b $4B

|08DF48| STZ.w $02F9
|08DF4B| STZ.w $02DA

|08DF4E| STZ.w $0C22,X

|08DF51| STZ.w $02E4
|08DF54| STZ.w $037B
|08DF57| STZ.w $03FD

|08DF5A| LDA.b #$90
|08DF5C| STA.w $031F

|08DF5F| JSL InitializeFollower

|08DF63| BRA .animate

;---------------------------------------------------------------------------------------------------

.delay_dropoff
|08DF65| LDA.b $22
|08DF67| SEC
|08DF68| SBC.b $00
|08DF6A| CMP.w #$0030
|08DF6D| BCS .animate

|08DF6F| LDY.b #$03

|08DF71| SEP #$20

|08DF73| BRA .set_vram_offset

;---------------------------------------------------------------------------------------------------

.animate
|08DF75| SEP #$20

|08DF77| DEC.w $039F,X
|08DF7A| BPL .delay_step

|08DF7C| LDA.b #$03
|08DF7E| STA.w $039F,X

|08DF81| INC.w $0380,X

|08DF84| LDA.w $0380,X
|08DF87| CMP.b #$03
|08DF89| BNE .delay_step

|08DF8B| STZ.w $0380,X

.delay_step
|08DF8E| LDY.w $0380,X

;---------------------------------------------------------------------------------------------------

.set_vram_offset
|08DF91| LDA.w .vram_offset+0,Y
|08DF94| STA.w $0AF4

|08DF97| JSR Ancilla_PrepOAMCoord

|08DF9A| REP #$20

|08DF9C| LDA.w $029E,X
|08DF9F| AND.w #$00FF
|08DFA2| BEQ .positive_altitiude

|08DFA4| ORA.w #$FF00

.positive_altitiude
|08DFA7| STA.b $04
|08DFA9| STA.b $72

|08DFAB| LDA.b $00
|08DFAD| STA.b $0A

|08DFAF| CLC
|08DFB0| ADC.b $04
|08DFB2| STA.b $04

|08DFB4| LDA.b $02
|08DFB6| STA.b $06

;---------------------------------------------------------------------------------------------------

|08DFB8| SEP #$20

|08DFBA| PHX

|08DFBB| LDA.w $0C54,X

|08DFBE| INC A
|08DFBF| STA.b $08

|08DFC1| LDY.b #$00
|08DFC3| TYX

.next_object
|08DFC4| REP #$20

|08DFC6| LDA.w .offset_y,X
|08DFC9| AND.w #$00FF
|08DFCC| CMP.w #$0080
|08DFCF| BCC .positive_y

|08DFD1| ORA.w #$FF00

.positive_y
|08DFD4| CLC
|08DFD5| ADC.b $04
|08DFD7| STA.b $00

|08DFD9| LDA.w .offset_x,X
|08DFDC| AND.w #$00FF
|08DFDF| CMP.w #$0080
|08DFE2| BCC .positive_x

|08DFE4| ORA.w #$FF00

.positive_x
|08DFE7| CLC
|08DFE8| ADC.b $06
|08DFEA| STA.b $02

|08DFEC| SEP #$20

|08DFEE| JSR Ancilla_SetOAM_XY

|08DFF1| LDA.w .char,X
|08DFF4| STA.b ($90),Y

|08DFF6| INY

|08DFF7| LDA.w .prop,X
|08DFFA| ORA.b #$30
|08DFFC| STA.b ($90),Y

|08DFFE| INY
|08DFFF| PHY

|08E000| TYA
|08E001| SEC
|08E002| SBC.b #$04
|08E004| LSR A
|08E005| LSR A
|08E006| TAY

|08E007| LDA.b #$02
|08E009| STA.b ($92),Y

|08E00B| PLY

|08E00C| INX
|08E00D| CPX.b $08
|08E00F| BNE .next_object

;---------------------------------------------------------------------------------------------------

|08E011| REP #$20

|08E013| LDA.b $0A
|08E015| CLC
|08E016| ADC.w #$001C
|08E019| STA.b $00

|08E01B| LDA.b $06
|08E01D| STA.b $02

|08E01F| SEP #$20

|08E021| LDA.b #$30
|08E023| STA.b $04

|08E025| LDX.b #$01
|08E027| JSR AncillaDraw_Shadow

|08E02A| LDX.w $0FA0

|08E02D| LDA.w $0C54,X
|08E030| BEQ .no_link_shadow

|08E032| REP #$20

|08E034| LDA.b $0A
|08E036| CLC
|08E037| ADC.w #$001C
|08E03A| STA.b $00

|08E03C| LDA.b $06
|08E03E| CLC
|08E03F| ADC.w #$FFF9
|08E042| STA.b $02

|08E044| SEP #$20

|08E046| LDA.b #$30
|08E048| STA.b $04

|08E04A| LDX.b #$01
|08E04C| JSR AncillaDraw_Shadow

.no_link_shadow
|08E04F| PLX

;---------------------------------------------------------------------------------------------------

|08E050| REP #$20

|08E052| LDA.b $06
|08E054| BMI .exit

|08E056| CMP.w #$0130
|08E059| BCC .exit

|08E05B| SEP #$20

|08E05D| STZ.w $0C4A,X

|08E060| LDA.w $0385,X
|08E063| BNE .exit

|08E065| LDA.w $0C54,X
|08E068| BEQ .exit

|08E06A| LDA.b #$0A
|08E06C| STA.b $11

|08E06E| LDA.b $10
|08E070| STA.w $010C

|08E073| LDA.b #$0E
|08E075| STA.b $10

;---------------------------------------------------------------------------------------------------

.exit
|08E077| SEP #$20

|08E079| RTS

;===================================================================================================

pool AncillaAdd_SomariaBlock

.offset_y
|08E07A| dw  -8 ; up
|08E07C| dw  31 ; down
|08E07E| dw  17 ; left
|08E080| dw  17 ; right

.offset_x
|08E082| dw   8 ; up
|08E084| dw   8 ; down
|08E086| dw  -8 ; left
|08E088| dw  23 ; right

endpool

;---------------------------------------------------------------------------------------------------

AncillaAdd_SomariaBlock:
|08E08A| PHB
|08E08B| PHK
|08E08C| PLB

|08E08D| JSR AddAncilla_bank08
|08E090| BCC .spawn_the_block

|08E092| BRL .refund

;---------------------------------------------------------------------------------------------------

.spawn_the_block
|08E095| PHX

|08E096| STX.b $00

|08E098| LDX.b #$04

; Look for a somaria block
.next_block_check
|08E09A| CPX.b $00
|08E09C| BEQ .skip

|08E09E| LDA.w $0C4A,X
|08E0A1| CMP.b #$2C ; ANCILLA 2C
|08E0A3| BNE .skip

;---------------------------------------------------------------------------------------------------

|08E0A5| STX.b $02

|08E0A7| LDA.w $02EC
|08E0AA| DEC A
|08E0AB| CMP.b $02
|08E0AD| BNE .not_closest_carryable

|08E0AF| STZ.w $02EC

.not_closest_carryable
|08E0B2| JSL AncillaAdd_ExplodingSomariaBlock

|08E0B6| PLX

|08E0B7| STZ.w $0C4A,X

|08E0BA| STZ.w $0646

|08E0BD| LDA.b $5E
|08E0BF| CMP.b #$12
|08E0C1| BNE .dont_reset_speed

|08E0C3| STZ.b $48
|08E0C5| STZ.b $5E

.dont_reset_speed
|08E0C7| BRL .exit

;---------------------------------------------------------------------------------------------------

.skip
|08E0CA| DEX
|08E0CB| BPL .next_block_check

;---------------------------------------------------------------------------------------------------

|08E0CD| PLX

|08E0CE| LDA.b #$2A ; SFX3.2A
|08E0D0| JSR Ancilla_SFX3_Near

|08E0D3| STZ.w $0C54,X

|08E0D6| STZ.w $0C22,X
|08E0D9| STZ.w $0C2C,X

|08E0DC| STZ.w $0C5E,X

|08E0DF| STZ.w $03B1,X
|08E0E2| STZ.w $039F,X
|08E0E5| STZ.w $03A4,X
|08E0E8| STZ.w $03C5,X

|08E0EB| LDA.b #$0C
|08E0ED| STA.w $0394,X

|08E0F0| LDA.b #$12
|08E0F2| STA.w $0C68,X

|08E0F5| STZ.w $0385,X
|08E0F8| STZ.w $029E,X

|08E0FB| STZ.w $0380,X
|08E0FE| STZ.w $03EA,X

|08E101| STZ.w $0BF0,X

|08E104| LDA.b #$09
|08E106| STA.w $03A9,X

|08E109| STZ.w $03D5,X

;---------------------------------------------------------------------------------------------------

|08E10C| LDA.b $2F
|08E10E| LSR A
|08E10F| STA.w $0C72,X

|08E112| JSL Ancilla_CheckInitialTileCollision_Class2
|08E116| BCC .space_to_spawn

|08E118| REP #$20

|08E11A| LDA.b $20
|08E11C| CLC
|08E11D| ADC.w #$0010
|08E120| STA.b $00

|08E122| LDA.b $22
|08E124| CLC
|08E125| ADC.w #$0008
|08E128| STA.b $02

|08E12A| SEP #$20

|08E12C| LDA.b $00
|08E12E| STA.w $0BFA,X

|08E131| LDA.b $01
|08E133| STA.w $0C0E,X

|08E136| LDA.b $02
|08E138| STA.w $0C04,X

|08E13B| LDA.b $03
|08E13D| STA.w $0C18,X

|08E140| BRA .exit

;---------------------------------------------------------------------------------------------------

.space_to_spawn
|08E142| LDY.b $2F

|08E144| LDA.b $20
|08E146| CLC
|08E147| ADC.w .offset_y+0,Y
|08E14A| STA.w $0BFA,X

|08E14D| LDA.b $21
|08E14F| ADC.w .offset_y+1,Y
|08E152| STA.w $0C0E,X

|08E155| LDA.b $22
|08E157| CLC
|08E158| ADC.w .offset_x+0,Y
|08E15B| STA.w $0C04,X

|08E15E| LDA.b $23
|08E160| ADC.w .offset_x+1,Y
|08E163| STA.w $0C18,X

|08E166| JSR SomariaBlock_CheckForTransitTile

|08E169| BRA .exit

;---------------------------------------------------------------------------------------------------

.refund
|08E16B| LDX.b #$04
|08E16D| JSL RefundMagic

.exit
|08E171| PLB

|08E172| RTL

;===================================================================================================

pool SomariaBlock_CheckForTransitTile

.offset_y
|08E173| dw -16, -16, -16,  16,  16,  16
|08E17F| dw  -8,   0,   8,  -8,   0,   8

.offset_x
|08E18B| dw  -8,   0,   8,  -8,   0,   8
|08E197| dw -16, -16, -16,  16,  16,  16

endpool

;---------------------------------------------------------------------------------------------------

SomariaBlock_CheckForTransitTile:
|08E1A3| LDA.w $03F4
|08E1A6| BEQ .exit

|08E1A8| LDY.b #$16

.next
|08E1AA| LDA.w $0BFA,X
|08E1AD| CLC
|08E1AE| ADC.w .offset_y+0,Y
|08E1B1| STA.b $00
|08E1B3| STA.b $72

|08E1B5| LDA.w $0C0E,X
|08E1B8| ADC.w .offset_y+1,Y
|08E1BB| STA.b $01
|08E1BD| STA.b $73

|08E1BF| LDA.w $0C04,X
|08E1C2| CLC
|08E1C3| ADC.w .offset_x+0,Y
|08E1C6| STA.b $02
|08E1C8| STA.b $74

|08E1CA| LDA.w $0C18,X
|08E1CD| ADC.w .offset_x+1,Y
|08E1D0| STA.b $03
|08E1D2| STA.b $75

|08E1D4| PHY

|08E1D5| LDA.w $0280,X
|08E1D8| PHA

|08E1D9| JSR Ancilla_CheckTileCollision_targeted

|08E1DC| PLA
|08E1DD| STA.w $0280,X

|08E1E0| PLY

|08E1E1| LDA.w $03E4,X
|08E1E4| CMP.b #$B6 ; TILETYPE B6
|08E1E6| BEQ .node

|08E1E8| CMP.b #$BC ; TILETYPE BC
|08E1EA| BEQ .node

|08E1EC| DEY
|08E1ED| DEY
|08E1EE| BPL .next

|08E1F0| BRA .exit

;---------------------------------------------------------------------------------------------------

.node
|08E1F2| LDA.b $72
|08E1F4| STA.w $0BFA,X

|08E1F7| LDA.b $73
|08E1F9| STA.w $0C0E,X

|08E1FC| LDA.b $74
|08E1FE| STA.w $0C04,X

|08E201| LDA.b $75
|08E203| STA.w $0C18,X

|08E206| JSL AncillaAdd_SomariaPlatformPoof

.exit
|08E20A| RTS

;===================================================================================================

Ancilla_CheckBasicSpriteCollision:
|08E20B| LDY.b #$0F

.next_sprite
|08E20D| TYA
|08E20E| EOR.b $1A
|08E210| AND.b #$03

|08E212| ORA.w $0F00,Y
|08E215| ORA.w $0EF0,Y
|08E218| BNE .skip

|08E21A| LDA.w $0DD0,Y
|08E21D| CMP.b #$09
|08E21F| BCC .skip

|08E221| LDA.w $0CAA,Y
|08E224| AND.b #$02
|08E226| BNE .sprite_ignores_priority

|08E228| LDA.w $0280,X
|08E22B| BNE .skip

.sprite_ignores_priority
|08E22D| LDA.w $0C7C,X
|08E230| CMP.w $0F20,Y
|08E233| BNE .skip

; Crystal switch v Somaria block
|08E235| LDA.w $0C4A,X
|08E238| CMP.b #$2C ; ANCILLA 2C
|08E23A| BNE .not_somaria_block

|08E23C| LDA.w $0E20,Y
|08E23F| CMP.b #$1E ; SPRITE 1E
|08E241| BEQ .skip

|08E243| CMP.b #$90 ; SPRITE 90
|08E245| BEQ .skip

.not_somaria_block
|08E247| JSR Ancilla_CheckBasicSpriteCollision_Single

.skip
|08E24A| DEY
|08E24B| BPL .next_sprite

|08E24D| CLC

|08E24E| RTS

;===================================================================================================

Ancilla_CheckBasicSpriteCollision_Single:
|08E24F| JSR Ancilla_SetupBasicHitbox

|08E252| PHY
|08E253| PHX

|08E254| TYX
|08E255| JSL SetupSpriteHitbox_long

|08E259| PLX
|08E25A| PLY

|08E25B| JSL CheckIfHitboxesOverlap_long
|08E25F| BCC .fail

|08E261| LDA.w $0E20,Y
|08E264| CMP.b #$92 ; SPRITE 92
|08E266| BNE .not_king_helma

|08E268| LDA.w $0DB0,Y
|08E26B| CMP.b #$03
|08E26D| BCC .success

.not_king_helma
|08E26F| LDA.w $0E20,Y
|08E272| CMP.b #$80 ; SPRITE 80
|08E274| BNE .dont_reverse_fire_snake

|08E276| LDA.w $0F10,Y
|08E279| BNE .dont_reverse_fire_snake

|08E27B| LDA.b #$18
|08E27D| STA.w $0F10,Y

|08E280| LDA.w $0DE0,Y
|08E283| EOR.b #$01
|08E285| STA.w $0DE0,Y

.dont_reverse_fire_snake
|08E288| LDA.w $0BA0,Y
|08E28B| BNE .fail

|08E28D| LDA.w $0C04,X
|08E290| SEC
|08E291| SBC.b #$08
|08E293| STA.b $04

|08E295| LDA.w $0C18,X
|08E298| SBC.b #$00
|08E29A| STA.b $05

|08E29C| LDA.w $0BFA,X
|08E29F| SEC
|08E2A0| SBC.b #$08
|08E2A2| PHP

|08E2A3| SEC
|08E2A4| SBC.w $029E,X
|08E2A7| STA.b $06

|08E2A9| LDA.w $0C0E,X
|08E2AC| SBC.b #$00

|08E2AE| PLP
|08E2AF| SBC.b #$00
|08E2B1| STA.b $07

|08E2B3| LDA.b #$50

|08E2B5| PHY
|08E2B6| PHX

|08E2B7| TYX
|08E2B8| JSL ProjectSpriteSpeedTowardsLocation_long

|08E2BC| PLX
|08E2BD| PLY

|08E2BE| LDA.b $00
|08E2C0| EOR.b #$FF
|08E2C2| STA.w $0F30,Y

|08E2C5| LDA.b $01
|08E2C7| EOR.b #$FF
|08E2C9| STA.w $0F40,Y

|08E2CC| PHX

|08E2CD| LDA.w $0C4A,X

|08E2D0| TYX
|08E2D1| JSL CheckAncillaDamageToSprite

|08E2D5| PLX

;---------------------------------------------------------------------------------------------------

.success
|08E2D6| PLA
|08E2D7| PLA

|08E2D8| SEC

|08E2D9| RTS

.fail
|08E2DA| CLC

|08E2DB| RTS

;===================================================================================================

Ancilla_SetupBasicHitbox:
|08E2DC| LDA.w $0C04,X
|08E2DF| SEC
|08E2E0| SBC.b #$08
|08E2E2| STA.b $00

|08E2E4| LDA.w $0C18,X
|08E2E7| SBC.b #$00
|08E2E9| STA.b $08

|08E2EB| LDA.w $0BFA,X
|08E2EE| SEC
|08E2EF| SBC.b #$08
|08E2F1| PHP

|08E2F2| SEC
|08E2F3| SBC.w $029E,X
|08E2F6| STA.b $01

|08E2F8| LDA.w $0C0E,X
|08E2FB| SBC.b #$00

|08E2FD| PLP
|08E2FE| SBC.b #$00
|08E300| STA.b $09

|08E302| LDA.b #$0F
|08E304| STA.b $02

|08E306| LDA.b #$0F
|08E308| STA.b $03

;---------------------------------------------------------------------------------------------------

#EXIT_08E30A:
|08E30A| RTS

;===================================================================================================
; TODO verify table size
pool AncillaDraw_SomariaBlock

.prop
|08E30B| db $00, $40, $80, $C0
|08E30F| db $00, $40, $80, $C0
|08E313| db $00, $40, $80, $C0

.offset_y
|08E317| dw  -8,  -8,   0,   0
|08E31F| dw   0,   0,   0,   0
|08E327| dw   0,   0,   0,   0

.offset_x
|08E32F| dw  -8,   0,  -8,   0
|08E337| dw   0,   0,   0,   0
|08E33F| dw   0,   0,   0,   0

endpool

;===================================================================================================

pool Ancilla2C_SomariaBlock

.node_offset_y
|08E347| dw  -8,   8,   0,   0
|08E34F| dw   0,   0,   0,   0
|08E357| dw  -8,   8,  -8,   8

.node_offset_x
|08E35F| dw   0,   0,  -8,   8
|08E367| dw   0,   0,   0,   0
|08E36F| dw   8,  -8,  -8,   8

endpool

;---------------------------------------------------------------------------------------------------

Ancilla2C_SomariaBlock:
|08E377| DEC.w $0394,X
|08E37A| BPL EXIT_08E30A

|08E37C| STZ.w $0394,X

|08E37F| LDA.w $03C5,X
|08E382| BNE .bouncing

|08E384| LDA.b $11
|08E386| BEQ .continue

|08E388| CMP.b #$08
|08E38A| BEQ .continue

|08E38C| CMP.b #$10
|08E38E| BNE .skip_lift

.continue
|08E390| JSR Ancilla_HandleLiftLogic
|08E393| BRA .handle_lift_logic

;---------------------------------------------------------------------------------------------------

.skip_lift
|08E395| TXA
|08E396| INC A
|08E397| CMP.w $02EC
|08E39A| BNE .handle_lift_logic

|08E39C| LDA.w $0380,X
|08E39F| BEQ .handle_lift_logic

|08E3A1| CMP.b #$03
|08E3A3| BEQ .assert_holditude

|08E3A5| LDY.b #$03
|08E3A7| JSR Ancilla_LatchLinkCoordinates
|08E3AA| JSR Ancilla_LatchAltitudeAboveLink

|08E3AD| LDA.b #$03
|08E3AF| STA.w $0380,X

.assert_holditude
|08E3B2| JSR Ancilla_LatchCarriedPosition

;---------------------------------------------------------------------------------------------------

.handle_lift_logic
|08E3B5| LDA.b $1B
|08E3B7| BEQ .no_trigger

|08E3B9| LDA.w $0380,X
|08E3BC| BNE .bouncing

|08E3BE| BIT.w $0308
|08E3C1| BMI .bouncing

|08E3C3| LDA.w $029E,X
|08E3C6| BEQ .run_trigger

|08E3C8| CMP.b #$FF
|08E3CA| BEQ .run_trigger

;---------------------------------------------------------------------------------------------------

.bouncing
|08E3CC| TXA
|08E3CD| INC A
|08E3CE| CMP.w $02EC
|08E3D1| BNE .no_trigger

|08E3D3| STZ.w $0646

.no_trigger
|08E3D6| BRL .tile_collision_logic

;---------------------------------------------------------------------------------------------------

.run_trigger
|08E3D9| LDA.w $03F4
|08E3DC| BEQ .no_transit_tiles

|08E3DE| LDA.b $1A
|08E3E0| AND.b #$03
|08E3E2| ASL A
|08E3E3| TAY

.next_node_check
|08E3E4| LDA.w $0BFA,X
|08E3E7| CLC
|08E3E8| ADC.w .node_offset_y+0,Y
|08E3EB| STA.b $00
|08E3ED| STA.b $72

|08E3EF| LDA.w $0C0E,X
|08E3F2| ADC.w .node_offset_y+1,Y
|08E3F5| STA.b $01
|08E3F7| STA.b $73

|08E3F9| LDA.w $0C04,X
|08E3FC| CLC
|08E3FD| ADC.w .node_offset_x+0,Y
|08E400| STA.b $02
|08E402| STA.b $74

|08E404| LDA.w $0C18,X
|08E407| ADC.w .node_offset_x+1,Y
|08E40A| STA.b $03
|08E40C| STA.b $75

|08E40E| PHY

|08E40F| LDA.w $0280,X
|08E412| PHA

|08E413| JSR Ancilla_CheckTileCollision_targeted

|08E416| PLA
|08E417| STA.w $0280,X

|08E41A| PLY

|08E41B| LDA.w $03E4,X
|08E41E| CMP.b #$B6 ; TILETYPE B6
|08E420| BEQ .valid_node

|08E422| CMP.b #$BC ; TILETYPE BC
|08E424| BEQ .valid_node

|08E426| TYA
|08E427| CLC
|08E428| ADC.b #$08
|08E42A| TAY

|08E42B| CPY.b #$18
|08E42D| BCS .tile_collision_logic

|08E42F| BRA .next_node_check

;---------------------------------------------------------------------------------------------------

.valid_node
|08E431| LDA.b $72
|08E433| STA.w $0BFA,X

|08E436| LDA.b $73
|08E438| STA.w $0C0E,X

|08E43B| LDA.b $74
|08E43D| STA.w $0C04,X

|08E440| LDA.b $75
|08E442| STA.w $0C18,X

|08E445| JSL AncillaAdd_SomariaPlatformPoof

|08E449| TXA
|08E44A| INC A
|08E44B| CMP.w $02EC
|08E44E| BNE .exit

|08E450| STZ.w $02EC

.exit
|08E453| RTS

;---------------------------------------------------------------------------------------------------

.no_transit_tiles
|08E454| JSR SomariaBlock_CheckForSwitch
|08E457| BCS .tile_collision_logic

|08E459| LDA.w $029E,X
|08E45C| BEQ .set_trigger

|08E45E| CMP.b #$FF
|08E460| BNE .tile_collision_logic

.set_trigger
|08E462| INC.w $0646

;---------------------------------------------------------------------------------------------------

.tile_collision_logic
|08E465| JSR Ancilla_LatchYCoordToZ

|08E468| LDA.w $0C72,X
|08E46B| STA.b $74

|08E46D| LDA.w $0280,X
|08E470| STA.b $75

|08E472| STZ.w $0280,X

|08E475| JSR Ancilla_CheckTileCollision_Class2

|08E478| PHP

|08E479| LDA.b $1B
|08E47B| BEQ .dont_layer_swap

|08E47D| LDA.w $0385,X
|08E480| BEQ .dont_layer_swap

|08E482| LDA.w $03E4,X
|08E485| CMP.b #$1C ; TILETYPE 1C
|08E487| BNE .dont_layer_swap

|08E489| LDA.b #$01
|08E48B| STA.w $03D5,X

.dont_layer_swap
|08E48E| PLP
|08E48F| BCC .no_tile_collision

;---------------------------------------------------------------------------------------------------

.run_wall_bounce_logic
|08E491| BIT.w $0308
|08E494| BPL .not_held

|08E496| LDA.w $0309
|08E499| BEQ .no_tile_collision

.not_held
|08E49B| LDA.b $75
|08E49D| BNE .end_tile_collision_logic

|08E49F| LDA.w $0BF0,X
|08E4A2| BNE .end_tile_collision_logic

|08E4A4| LDA.w $029E,X
|08E4A7| BEQ .end_tile_collision_logic

|08E4A9| LDA.b #$01
|08E4AB| STA.w $0BF0,X

|08E4AE| LDA.b #$04
|08E4B0| STA.b $0E

|08E4B2| LDA.w $0C72,X
|08E4B5| CMP.b #$01
|08E4B7| BNE .small_bounce

|08E4B9| LDA.b #$10
|08E4BB| STA.b $0E

|08E4BD| LDY.b #$F0
|08E4BF| BRA .bounce_continue

.small_bounce
|08E4C1| LDY.b #$FC

;---------------------------------------------------------------------------------------------------

.bounce_continue
|08E4C3| LDA.w $0C22,X
|08E4C6| BEQ .zero_y_speed
|08E4C8| BPL .bounce_up

|08E4CA| LDY.b $0E

.bounce_up
|08E4CC| TYA
|08E4CD| STA.w $0C22,X

.zero_y_speed
|08E4D0| LDY.b #$FC

|08E4D2| LDA.w $0C2C,X
|08E4D5| BEQ .zero_x_speed
|08E4D7| BPL .bounce_left

|08E4D9| LDY.b #$04

.bounce_left
|08E4DB| TYA
|08E4DC| STA.w $0C2C,X

.zero_x_speed
|08E4DF| LDA.w $0C72,X
|08E4E2| CMP.b #$01
|08E4E4| BNE .end_tile_collision_logic

|08E4E6| INC A
|08E4E7| STA.w $0385,X

|08E4EA| LDA.b #$FC
|08E4EC| STA.w $0C22,X

;---------------------------------------------------------------------------------------------------

.end_tile_collision_logic
|08E4EF| BRL SomariaBlock_HandleDamage

.no_tile_collision
|08E4F2| BIT.w $0308
|08E4F5| BMI .end_tile_collision_logic

|08E4F7| LDA.w $029E,X
|08E4FA| BEQ .not_airborne

|08E4FC| CMP.b #$FF
|08E4FE| BNE .end_tile_collision_logic

.not_airborne
|08E500| LDA.b #$10
|08E502| STA.w $0C72,X

;---------------------------------------------------------------------------------------------------

|08E505| LDA.w $0280,X
|08E508| PHA

|08E509| JSR Ancilla_CheckTileCollision

|08E50C| PLA
|08E50D| STA.w $0280,X

;---------------------------------------------------------------------------------------------------

|08E510| LDA.w $03E4,X

|08E513| CMP.b #$26 ; TILETYPE 26
|08E515| BEQ .staircase_boundary

|08E517| CMP.b #$0C ; TILETYPE 0C
|08E519| BEQ .overlay_mask

|08E51B| CMP.b #$1C ; TILETYPE 1C
|08E51D| BEQ .overlay_mask

|08E51F| CMP.b #$20 ; TILETYPE 20
|08E521| BEQ .pit

|08E523| CMP.b #$08 ; TILETYPE 08
|08E525| BEQ .deep_water

|08E527| CMP.b #$68 ; TILETYPE 68
|08E529| BEQ .conveyor

|08E52B| CMP.b #$69 ; TILETYPE 69
|08E52D| BEQ .conveyor

|08E52F| CMP.b #$6A ; TILETYPE 6A
|08E531| BEQ .conveyor

|08E533| CMP.b #$6B ; TILETYPE 6B
|08E535| BEQ .conveyor

|08E537| CMP.b #$B6 ; TILETYPE B6
|08E539| BEQ .somaria_node_or_path

|08E53B| CMP.b #$BC ; TILETYPE BC
|08E53D| BEQ .somaria_node_or_path

|08E53F| AND.b #$F0
|08E541| CMP.b #$B0
|08E543| BNE .somaria_node_or_path

;---------------------------------------------------------------------------------------------------

.pit
|08E545| BRL SomariaBlock_HandlePitLogic

;---------------------------------------------------------------------------------------------------

.staircase_boundary
|08E548| BRL .run_wall_bounce_logic

;---------------------------------------------------------------------------------------------------

.conveyor
|08E54B| BRL SomariaBlock_HandleConveyor

;---------------------------------------------------------------------------------------------------

.somaria_node_or_path
|08E54E| STZ.w $0C68,X

|08E551| LDA.w $0385,X
|08E554| ORA.w $03C5,X
|08E557| BNE .am_airborne

|08E559| LDA.b #$02
|08E55B| STA.w $0C68,X

.am_airborne
|08E55E| BRL SomariaBlock_HandleDamage

;===================================================================================================

.deep_water
|08E561| TXA
|08E562| INC A
|08E563| CMP.w $02EC
|08E566| BNE .dont_reset_water

|08E568| STZ.w $02EC

.dont_reset_water
|08E56B| LDA.w $0C68,X
|08E56E| BNE .am_airborne

|08E570| LDA.w $0BFA,X
|08E573| CLC
|08E574| ADC.b #$E8
|08E576| STA.w $0BFA,X

|08E579| LDA.w $0C0E,X
|08E57C| ADC.b #$FF
|08E57E| STA.w $0C0E,X

|08E581| BRL Ancilla_TransmuteToSplash

;===================================================================================================

.overlay_mask
|08E584| LDA.w $046C
|08E587| CMP.b #$03
|08E589| BEQ .layer_2_moving_floor

|08E58B| LDA.w $0C7C,X
|08E58E| BNE SomariaBlock_HandleDamage

|08E590| LDA.w $029E,X
|08E593| BEQ SomariaBlock_HandleDamage

|08E595| CMP.b #$FF
|08E597| BEQ SomariaBlock_HandleDamage

|08E599| LDA.b #$01
|08E59B| STA.w $0C7C,X

|08E59E| BRL SomariaBlock_HandleDamage

;---------------------------------------------------------------------------------------------------

.layer_2_moving_floor
|08E5A1| LDA.w $0BFA,X
|08E5A4| CLC
|08E5A5| ADC.w $0310
|08E5A8| STA.b $72

|08E5AA| LDA.w $0C0E,X
|08E5AD| ADC.w $0311
|08E5B0| STA.b $73

|08E5B2| LDA.w $0C04,X
|08E5B5| CLC
|08E5B6| ADC.w $0312
|08E5B9| STA.w $0C04,X

|08E5BC| LDA.w $0C18,X
|08E5BF| ADC.w $0313
|08E5C2| STA.w $0C18,X

|08E5C5| BRA SomariaBlock_HandleDamage

;===================================================================================================

SomariaBlock_HandleConveyor:
|08E5C7| JSR Ancilla_ApplyConveyor

|08E5CA| BRA SomariaBlock_HandleDamage

;===================================================================================================

SomariaBlock_HandlePitLogic:
|08E5CC| LDA.w $0308
|08E5CF| BMI SomariaBlock_HandleDamage

|08E5D1| TXA
|08E5D2| INC A
|08E5D3| CMP.w $02EC
|08E5D6| BNE .dont_reset

|08E5D8| STZ.w $02EC

.dont_reset
|08E5DB| LDA.w $0C68,X
|08E5DE| BNE SomariaBlock_HandleDamage

|08E5E0| LDA.b $5E
|08E5E2| CMP.b #$12
|08E5E4| BNE Ancilla_DeleteSelf

|08E5E6| STZ.b $5E
|08E5E8| STZ.b $48

;===================================================================================================

Ancilla_DeleteSelf:
|08E5EA| STZ.w $0C4A,X

|08E5ED| RTS

;===================================================================================================

SomariaBlock_HandleDamage:
|08E5EE| LDA.b $75
|08E5F0| ORA.w $0280,X
|08E5F3| STA.b $75

|08E5F5| LDA.w $0308
|08E5F8| BMI .dont_fizzle

|08E5FA| DEC.w $03A9,X

|08E5FD| LDA.w $03A9,X
|08E600| BNE .dont_fizzle

|08E602| INC.w $03A9,X

|08E605| STZ.w $0280,X

|08E608| JSR Ancilla_CheckBasicSpriteCollision
|08E60B| BCC .dont_fizzle

|08E60D| LDA.b #$07
|08E60F| STA.w $03A9,X

|08E612| LDA.w $0C54,X
|08E615| INC A
|08E616| STA.w $0C54,X

|08E619| CMP.b #$05
|08E61B| BNE .dont_fizzle

|08E61D| BRL SomariaBlock_FizzleAway

.dont_fizzle
|08E620| LDA.b $74
|08E622| STA.w $0C72,X

|08E625| LDA.b $75
|08E627| STA.w $0280,X

|08E62A| JSR Ancilla_SetYFrom_DP72

;===================================================================================================

AncillaDraw_SomariaBlock:
|08E62D| TXY
|08E62E| INY
|08E62F| CPY.w $02EC
|08E632| BNE .not_special_oam_slots

|08E634| LDA.w $0308
|08E637| BPL .not_special_oam_slots

|08E639| LDA.w $0380,X
|08E63C| CMP.b #$03
|08E63E| BEQ .not_special_oam_slots

|08E640| LDA.b $2F
|08E642| BNE .not_special_oam_slots

|08E644| LDA.w $0C90,X
|08E647| JSR AllocateOAMInRegionsBE

|08E64A| BRA .prep_coord

.not_special_oam_slots
|08E64C| LDA.w $0FB3
|08E64F| BEQ .prep_coord

|08E651| LDA.w $0C7C,X
|08E654| BEQ .prep_coord

|08E656| LDA.w $0385,X
|08E659| BNE .airborne_slots

|08E65B| TXY
|08E65C| INY
|08E65D| CPY.w $02EC
|08E660| BNE .prep_coord

|08E662| LDA.w $0308
|08E665| BPL .prep_coord

;---------------------------------------------------------------------------------------------------

.airborne_slots
|08E667| REP #$20

; [HARDCODED] and shoulda been a single LDA
|08E669| LDA.w #$00D0
|08E66C| CLC
|08E66D| ADC.w #$0800
|08E670| STA.b $90

|08E672| LDA.w #$0034
|08E675| CLC
|08E676| ADC.w #$0A20
|08E679| STA.b $92

|08E67B| SEP #$20

;---------------------------------------------------------------------------------------------------

.prep_coord
|08E67D| JSR Ancilla_PrepOAMCoord.adjusted

|08E680| REP #$20

|08E682| LDA.w $029E,X
|08E685| AND.w #$00FF
|08E688| CMP.w #$0080
|08E68B| BCC .positive_z

|08E68D| ORA.w #$FF00

.positive_z
|08E690| STA.b $04
|08E692| BEQ .not_max_priority

|08E694| CMP.w #$FFFF
|08E697| BEQ .not_max_priority

|08E699| LDA.w $0380,X
|08E69C| AND.w #$00FF
|08E69F| CMP.w #$0003
|08E6A2| BEQ .not_max_priority

|08E6A4| LDA.w $0280,X
|08E6A7| AND.w #$00FF
|08E6AA| BEQ .not_max_priority

|08E6AC| LDA.w #$3000
|08E6AF| STA.b $64

.not_max_priority
|08E6B1| LDA.w #$0000
|08E6B4| CLC
|08E6B5| ADC.b $04

|08E6B7| EOR.w #$FFFF
|08E6BA| INC A

|08E6BB| CLC
|08E6BC| ADC.b $00
|08E6BE| STA.b $04

;---------------------------------------------------------------------------------------------------

|08E6C0| LDA.b $02
|08E6C2| STA.b $06

|08E6C4| SEP #$20

|08E6C6| STZ.b $08

|08E6C8| PHX

|08E6C9| LDA.b #$02
|08E6CB| STA.b $72

|08E6CD| LDA.w $03A4,X
|08E6D0| ASL A
|08E6D1| ASL A
|08E6D2| TAX

;---------------------------------------------------------------------------------------------------

|08E6D3| LDY.b #$00

.next_object
|08E6D5| REP #$20

|08E6D7| STZ.b $74

|08E6D9| PHX

|08E6DA| TXA
|08E6DB| ASL A
|08E6DC| TAX

|08E6DD| LDA.b $04
|08E6DF| CLC
|08E6E0| ADC.w .offset_y,X
|08E6E3| STA.b $00

|08E6E5| LDA.b $06
|08E6E7| CLC
|08E6E8| ADC.w .offset_x,X
|08E6EB| STA.b $02

|08E6ED| PLX

|08E6EE| SEP #$20

|08E6F0| JSR Ancilla_SetOAM_XY_safe

|08E6F3| LDA.b #$E9
|08E6F5| STA.b ($90),Y

|08E6F7| INY

|08E6F8| LDA.w .prop,X
|08E6FB| AND.b #$CF
|08E6FD| ORA.b $72
|08E6FF| ORA.b $65
|08E701| STA.b ($90),Y

|08E703| INY
|08E704| PHY

|08E705| TYA
|08E706| SEC
|08E707| SBC.b #$04
|08E709| LSR A
|08E70A| LSR A
|08E70B| TAY

|08E70C| LDA.b #$00
|08E70E| ORA.b $75
|08E710| STA.b ($92),Y

|08E712| PLY

|08E713| INX

|08E714| INC.b $08

|08E716| LDA.b $08
|08E718| AND.b #$03
|08E71A| BNE .next_object

;---------------------------------------------------------------------------------------------------

|08E71C| PLX

|08E71D| LDA.w $0380,X
|08E720| CMP.b #$03
|08E722| BEQ .exit

|08E724| LDY.b #$01

.next_object_check
|08E726| LDA.b ($90),Y
|08E728| CMP.b #$F0
|08E72A| BNE .not_off_screen

|08E72C| INY ; +4
|08E72D| INY
|08E72E| INY
|08E72F| INY
|08E730| CPY.b #$11
|08E732| BNE .next_object_check

|08E734| BRA .terminate

.not_off_screen
|08E736| LDY.b #$00

.next_oam_check
|08E738| LDA.b ($92),Y
|08E73A| AND.b #$01
|08E73C| BEQ .exit

|08E73E| INY
|08E73F| CPY.b #$04
|08E741| BNE .next_oam_check

.terminate
|08E743| STZ.w $0646

|08E746| STZ.w $0C4A,X

|08E749| TXA
|08E74A| INC A
|08E74B| CMP.w $02EC
|08E74E| BNE .exit

|08E750| STZ.w $02EC

|08E753| LDA.w $0308
|08E756| AND.b #$80
|08E758| BEQ .exit

|08E75A| STZ.w $0308

.exit
|08E75D| RTS

;===================================================================================================

pool SomariaBlock_CheckForSwitch

.offset_y
|08E75E| dw  -4 ; up
|08E760| dw   4 ; down
|08E762| dw   0 ; left
|08E764| dw   0 ; right

.offset_x
|08E766| dw   0 ; up
|08E768| dw   0 ; down
|08E76A| dw  -4 ; left
|08E76C| dw   4 ; right

endpool

;---------------------------------------------------------------------------------------------------

SomariaBlock_CheckForSwitch:
|08E76E| STZ.w $0646

|08E771| STZ.w $03DB,X

|08E774| LDY.b #$06

.next_check
|08E776| LDA.w $0BFA,X
|08E779| CLC
|08E77A| ADC.w .offset_y+0,Y
|08E77D| STA.b $00
|08E77F| STA.b $72

|08E781| LDA.w $0C0E,X
|08E784| ADC.w .offset_y+1,Y
|08E787| STA.b $01
|08E789| STA.b $73

|08E78B| LDA.w $0C04,X
|08E78E| CLC
|08E78F| ADC.w .offset_x+0,Y
|08E792| STA.b $02
|08E794| STA.b $74

|08E796| LDA.w $0C18,X
|08E799| ADC.w .offset_x+1,Y
|08E79C| STA.b $03
|08E79E| STA.b $75

|08E7A0| PHY

|08E7A1| LDA.w $0280,X
|08E7A4| PHA

|08E7A5| JSR Ancilla_CheckTileCollision_targeted

|08E7A8| PLA
|08E7A9| STA.w $0280,X

|08E7AC| PLY

|08E7AD| LDA.w $03E4,X
|08E7B0| CMP.b #$23 ; TILETYPE 23
|08E7B2| BEQ .valid_switch

|08E7B4| CMP.b #$24 ; TILETYPE 24
|08E7B6| BEQ .valid_switch

|08E7B8| CMP.b #$25 ; TILETYPE 25
|08E7BA| BEQ .valid_switch

; [WTF] star tiles that are active on load count too
|08E7BC| CMP.b #$3B ; TILETYPE 3B
|08E7BE| BNE .not_star_tile

.valid_switch
|08E7C0| INC.w $03DB,X

.not_star_tile
|08E7C3| DEY
|08E7C4| DEY
|08E7C5| BPL .next_check

;---------------------------------------------------------------------------------------------------

|08E7C7| LDA.w $03DB,X
|08E7CA| CMP.b #$04
|08E7CC| BNE .fail

.succeed
|08E7CE| CLC

|08E7CF| RTS

.fail
|08E7D0| SEC

|08E7D1| RTS

;===================================================================================================

pool SomariaBlock_HandlePlayerInteraction

.push_speed_positive
|08E7D2| db  16

.push_speed_negative
|08E7D3| db -16

;---------------------------------------------------------------------------------------------------

.launch_speed_y
|08E7D4| db -40
|08E7D5| db  40
|08E7D6| db   0
|08E7D7| db   0

; TODO verify
.unused_a
|08E7D8| db -32
|08E7D9| db  32
|08E7DA| db   0
|08E7DB| db   0

|08E7DC| db -16
|08E7DD| db  16
|08E7DE| db   0
|08E7DF| db   0

|08E7E0| db  -8
|08E7E1| db   8
|08E7E2| db   0
|08E7E3| db   0

;---------------------------------------------------------------------------------------------------

.launch_speed_x
|08E7E4| db   0
|08E7E5| db   0
|08E7E6| db -40
|08E7E7| db  40

.unused_b
|08E7E8| db   0
|08E7E9| db   0
|08E7EA| db -32
|08E7EB| db  32

|08E7EC| db   0
|08E7ED| db   0
|08E7EE| db -16
|08E7EF| db  16

|08E7F0| db   0
|08E7F1| db   0
|08E7F2| db  -8
|08E7F3| db   8

;---------------------------------------------------------------------------------------------------

.rebound_speed_z
|08E7F4| db  48
|08E7F5| db  24
|08E7F6| db  16
|08E7F7| db   8

endpool

;---------------------------------------------------------------------------------------------------

SomariaBlock_HandlePlayerInteraction:
|08E7F8| PHB
|08E7F9| PHK
|08E7FA| PLB

|08E7FB| STX.w $0FA0

|08E7FE| LDA.w $0394,X
|08E801| BNE .no_do_somaria

|08E803| LDA.w $03C5,X
|08E806| BEQ .not_dash_airborne

|08E808| BRL .punt_continue

;---------------------------------------------------------------------------------------------------

.not_dash_airborne
|08E80B| LDA.b $4D
|08E80D| BNE .no_do_somaria

|08E80F| LDA.w $0308
|08E812| AND.b #$01
|08E814| BNE .no_do_somaria

|08E816| LDA.w $029E,X
|08E819| BEQ .grounded

|08E81B| CMP.b #$FF
|08E81D| BNE .no_do_somaria

.grounded
|08E81F| LDA.w $0380,X
|08E822| BNE .no_do_somaria

|08E824| LDA.w $0385,X
|08E827| BNE .no_do_somaria

|08E829| LDA.b $F0
|08E82B| AND.b #$0F
|08E82D| BNE .pressing_dpad

|08E82F| STA.w $039F,X

|08E832| STA.b $48

|08E834| LDA.b #$FF
|08E836| STA.w $038A,X

|08E839| LDA.w $0372
|08E83C| BNE .check_link_collision

|08E83E| STZ.b $5E

.no_do_somaria
|08E840| BRL .exit_a

;---------------------------------------------------------------------------------------------------

.pressing_dpad
|08E843| CMP.w $039F,X
|08E846| BNE .input_mismatch

|08E848| LDA.b $5E
|08E84A| CMP.b #$12
|08E84C| BNE .check_link_collision

|08E84E| LDA.b #$81
|08E850| TSB.b $48
|08E852| BRA .check_link_collision

.input_mismatch
|08E854| STA.w $039F,X

|08E857| STZ.b $5E

;---------------------------------------------------------------------------------------------------

.check_link_collision
|08E859| LDY.b #$04
|08E85B| JSR Ancilla_CheckLinkCollision
|08E85E| BCC .no_do_somaria

|08E860| LDA.w $0C7C,X
|08E863| CMP.b $EE
|08E865| BNE .no_do_somaria

|08E867| LDA.w $0372
|08E86A| BEQ .no_punt

|08E86C| LDA.w $02F1
|08E86F| CMP.b #$40
|08E871| BEQ .no_punt

|08E873| TXA
|08E874| INC A
|08E875| CMP.w $02EC
|08E878| BNE .disable_nearitude

|08E87A| STZ.w $02EC

;---------------------------------------------------------------------------------------------------

.disable_nearitude
|08E87D| JSL CancelDash_long

|08E881| LDA.b #$32 ; SFX3.32
|08E883| JSR Ancilla_SFX3_Pan

|08E886| BRL .init_dash_bouncing

;---------------------------------------------------------------------------------------------------

.no_punt
|08E889| STZ.w $0C2C,X
|08E88C| STZ.w $0C22,X

|08E88F| LDA.b $F0
|08E891| AND.b #$0F
|08E893| STA.w $039F,X

|08E896| AND.b #$03
|08E898| BEQ .pushing_left_or_right

|08E89A| LDY.w .push_speed_positive

|08E89D| AND.b #$01
|08E89F| BNE .pushing_right

|08E8A1| LDY.w .push_speed_negative

.pushing_right
|08E8A4| TYA
|08E8A5| STA.w $0C2C,X

|08E8A8| LDY.b #$02
|08E8AA| CMP.w .push_speed_positive
|08E8AD| BNE .set_direction

|08E8AF| INY
|08E8B0| BRA .set_direction

.pushing_left_or_right
|08E8B2| LDY.w .push_speed_positive

|08E8B5| LDA.b $F0
|08E8B7| AND.b #$08
|08E8B9| BEQ .upward_push

|08E8BB| LDY.w .push_speed_negative

.upward_push
|08E8BE| TYA
|08E8BF| STA.w $0C22,X

|08E8C2| LDY.b #$00
|08E8C4| CMP.w .push_speed_positive
|08E8C7| BNE .set_direction

|08E8C9| INY

;---------------------------------------------------------------------------------------------------

.set_direction
|08E8CA| TYA
|08E8CB| STA.w $0C72,X

|08E8CE| LDA.b $27
|08E8D0| BEQ .no_recoil

|08E8D2| LDA.b $28
|08E8D4| BNE .yes_recoil

.no_recoil
|08E8D6| JSR Ancilla_CheckTileCollision_Class2
|08E8D9| BCS .no_tile_collision_here

|08E8DB| JSR AncillaMoveY
|08E8DE| JSR AncillaMoveX

|08E8E1| LDA.w $0308
|08E8E4| AND.b #$80
|08E8E6| BNE .no_tile_collision_here

|08E8E8| INC.w $038A,X

|08E8EB| LDA.w $038A,X
|08E8EE| AND.b #$07
|08E8F0| BNE .no_tile_collision_here

|08E8F2| LDA.b #$22 ; SFX2.22
|08E8F4| JSR Ancilla_SFX2_Pan

.no_tile_collision_here
|08E8F7| LDA.b #$81
|08E8F9| STA.b $48

|08E8FB| LDA.b #$12
|08E8FD| STA.b $5E

.yes_recoil
|08E8FF| JSL AbortMovement

.exit_a
|08E903| PLB

|08E904| RTL

;---------------------------------------------------------------------------------------------------

.init_dash_bouncing
|08E905| LDA.b $2F
|08E907| LSR A
|08E908| STA.w $0C72,X

|08E90B| TAY

|08E90C| LDA.w .launch_speed_y,Y
|08E90F| STA.w $0C22,X

|08E912| LDA.w .launch_speed_x,Y
|08E915| STA.w $0C2C,X

|08E918| LDA.w .rebound_speed_z
|08E91B| STA.w $0294,X

|08E91E| LDA.b #$01
|08E920| STA.w $03C5,X

|08E923| STZ.w $029E,X

;---------------------------------------------------------------------------------------------------

.punt_continue
|08E926| LDA.w $0294,X
|08E929| SEC
|08E92A| SBC.b #$02
|08E92C| STA.w $0294,X

|08E92F| JSR AncillaMoveY
|08E932| JSR AncillaMoveX
|08E935| JSR AncillaMoveZ

|08E938| LDA.w $029E,X
|08E93B| BEQ .hit_ground_running

|08E93D| CMP.b #$FC
|08E93F| BCC .exit_b

.hit_ground_running
|08E941| LDA.b #$21 ; SFX2.21
|08E943| JSR Ancilla_SFX2_Pan

|08E946| STZ.w $029E,X

|08E949| LDA.w $03C5,X
|08E94C| INC A
|08E94D| STA.w $03C5,X

|08E950| CMP.b #$04
|08E952| BNE .max_bounces

|08E954| STZ.w $0BF0,X
|08E957| STZ.w $03C5,X
|08E95A| BRA .exit_b

;---------------------------------------------------------------------------------------------------

.max_bounces
|08E95C| TAY
|08E95D| DEY

|08E95E| LDA.w .rebound_speed_z,Y
|08E961| STA.w $0294,X

|08E964| LDA.b $2F
|08E966| LSR A
|08E967| STA.b $00

|08E969| TYA
|08E96A| ASL A
|08E96B| ASL A
|08E96C| CLC
|08E96D| ADC.b $00
|08E96F| TAY ; [USELESS]

;---------------------------------------------------------------------------------------------------

|08E970| LDY.b #$00

|08E972| LDA.w $0C22,X
|08E975| BPL .y_is_positive

|08E977| LDY.b #$01

|08E979| EOR.b #$FF
|08E97B| INC A

.y_is_positive
|08E97C| LSR A

|08E97D| CPY.b #$01
|08E97F| BNE .restore_y_sign

|08E981| EOR.b #$FF
|08E983| INC A

.restore_y_sign
|08E984| STA.w $0C22,X

;---------------------------------------------------------------------------------------------------

|08E987| LDY.b #$00

|08E989| LDA.w $0C2C,X
|08E98C| BPL .x_is_positive

|08E98E| LDY.b #$01

|08E990| EOR.b #$FF
|08E992| INC A

.x_is_positive
|08E993| LSR A

|08E994| CPY.b #$01
|08E996| BNE .restore_x_sign

|08E998| EOR.b #$FF
|08E99A| INC A

.restore_x_sign
|08E99B| STA.w $0C2C,X

;---------------------------------------------------------------------------------------------------

.exit_b
|08E99E| PLB

|08E99F| RTL

;===================================================================================================

pool Ancilla2D_SomariaBlockFizz

.offset_y
|08E9A0| dw  -4,  -1,  -4
|08E9A6| dw  -4,  -4,  -4

.offset_x
|08E9AC| dw  -4,  -1,  -8
|08E9B2| dw   0,  -6,  -2

.char
|08E9B8| db $92, $FF, $F9
|08E9BB| db $F9, $F9, $F9

.prop
|08E9BE| db $06, $FF, $86
|08E9C1| db $C6, $86, $C6

endpool

;===================================================================================================

SomariaBlock_FizzleAway:
|08E9C4| LDA.b $5E
|08E9C6| CMP.b #$12
|08E9C8| BNE .dont_reset_speed

|08E9CA| STZ.b $48
|08E9CC| STZ.b $5E

.dont_reset_speed
|08E9CE| STZ.w $0646

|08E9D1| LDA.b #$2D ; ANCILLA 2D
|08E9D3| STA.w $0C4A,X

|08E9D6| STZ.w $03B1,X

|08E9D9| STZ.w $0C54,X
|08E9DC| STZ.w $0C5E,X

|08E9DF| STZ.w $039F,X
|08E9E2| STZ.w $03A4,X

|08E9E5| STZ.w $03EA,X

|08E9E8| TXA
|08E9E9| INC A
|08E9EA| CMP.w $02EC
|08E9ED| BNE Ancilla2D_SomariaBlockFizz

|08E9EF| STZ.w $02EC

|08E9F2| LDA.w $0308
|08E9F5| AND.b #$80
|08E9F7| STA.w $0308

;===================================================================================================

Ancilla2D_SomariaBlockFizz:
|08E9FA| DEC.w $03B1,X
|08E9FD| BPL .continue

|08E9FF| LDA.b #$03
|08EA01| STA.w $03B1,X

|08EA04| LDA.w $0C5E,X
|08EA07| INC A
|08EA08| STA.w $0C5E,X

|08EA0B| CMP.b #$03
|08EA0D| BNE .continue

|08EA0F| STZ.w $0C4A,X

|08EA12| RTS

;---------------------------------------------------------------------------------------------------

.continue
|08EA13| JSR Ancilla_PrepOAMCoord.adjusted

|08EA16| LDY.b #$00

|08EA18| LDA.w $029E,X
|08EA1B| CMP.b #$FF
|08EA1D| BNE .not_underground

|08EA1F| LDA.b #$00

.not_underground
|08EA21| STA.b $04
|08EA23| BPL .positive_z

|08EA25| LDY.b #$FF

.positive_z
|08EA27| STY.b $05

|08EA29| REP #$20

|08EA2B| LDA.b $04
|08EA2D| EOR.w #$FFFF
|08EA30| INC A
|08EA31| CLC
|08EA32| ADC.b $00
|08EA34| STA.b $04

|08EA36| LDA.b $02
|08EA38| STA.b $06

;---------------------------------------------------------------------------------------------------

|08EA3A| SEP #$20

|08EA3C| PHX

|08EA3D| LDA.w $0C5E,X
|08EA40| ASL A
|08EA41| TAX

|08EA42| LDY.b #$00
|08EA44| STY.b $08

.next_object
|08EA46| LDA.w .char,X
|08EA49| CMP.b #$FF
|08EA4B| BEQ .skip

|08EA4D| REP #$20

|08EA4F| PHX

|08EA50| TXA
|08EA51| ASL A
|08EA52| TAX

|08EA53| LDA.b $04
|08EA55| CLC
|08EA56| ADC.w .offset_y,X
|08EA59| STA.b $00

|08EA5B| LDA.b $06
|08EA5D| CLC
|08EA5E| ADC.w .offset_x,X
|08EA61| STA.b $02

|08EA63| PLX

|08EA64| SEP #$20

|08EA66| JSR Ancilla_SetOAM_XY

|08EA69| LDA.w .char,X
|08EA6C| STA.b ($90),Y

|08EA6E| INY

|08EA6F| LDA.w .prop,X
|08EA72| AND.b #$CF
|08EA74| ORA.b $65
|08EA76| STA.b ($90),Y

|08EA78| INY
|08EA79| PHY

|08EA7A| TYA
|08EA7B| SEC
|08EA7C| SBC.b #$04
|08EA7E| LSR A
|08EA7F| LSR A
|08EA80| TAY

|08EA81| LDA.b #$00
|08EA83| STA.b ($92),Y

|08EA85| PLY

.skip
|08EA86| INX

|08EA87| INC.b $08

|08EA89| LDA.b $08
|08EA8B| CMP.b #$02
|08EA8D| BNE .next_object

;---------------------------------------------------------------------------------------------------

|08EA8F| PLX

|08EA90| RTS

;===================================================================================================

pool Ancilla39_SomariaPlatformPoof

.direction
|08EA91| db $01 ; up
|08EA92| db $00 ; down
|08EA93| db $03 ; left
|08EA94| db $02 ; right

endpool

;---------------------------------------------------------------------------------------------------

Ancilla39_SomariaPlatformPoof:
|08EA95| DEC.w $03B1,X
|08EA98| BMI .continue

|08EA9A| RTS

;---------------------------------------------------------------------------------------------------

.continue
|08EA9B| STZ.w $0C4A,X

|08EA9E| LDA.w $0BFA,X
|08EAA1| STA.b $72

|08EAA3| LDA.w $0C0E,X
|08EAA6| STA.b $73

|08EAA8| LDA.w $0C04,X
|08EAAB| STA.b $74

|08EAAD| LDA.w $0C18,X
|08EAB0| STA.b $75

|08EAB2| LDA.w $0C7C,X
|08EAB5| STA.b $BD

|08EAB7| PHX

|08EAB8| LDA.b #$ED ; SPRITE ED
|08EABA| JSL SpawnSpriteDynamically
|08EABE| BPL .free_slot

|08EAC0| BRL .just_draw

;---------------------------------------------------------------------------------------------------

.free_slot
|08EAC3| STZ.w $02F5

|08EAC6| LDA.b $72
|08EAC8| AND.b #$F8
|08EACA| ORA.b #$04
|08EACC| STA.w $0D00,Y
|08EACF| STA.b $72

|08EAD1| LDA.b $73
|08EAD3| STA.w $0D20,Y

|08EAD6| LDA.b $74
|08EAD8| AND.b #$F8
|08EADA| ORA.b #$04
|08EADC| STA.w $0D10,Y
|08EADF| STA.b $74

|08EAE1| LDA.b $75
|08EAE3| STA.w $0D30,Y

|08EAE6| LDA.b $BD
|08EAE8| CMP.b #$01

|08EAEA| REP #$30

|08EAEC| STZ.b $06

|08EAEE| BCC .lower_layer

|08EAF0| LDA.w #$1000
|08EAF3| STA.b $06

;---------------------------------------------------------------------------------------------------

.lower_layer
|08EAF5| LDA.b $74
|08EAF7| AND.w #$01FF
|08EAFA| LSR A
|08EAFB| LSR A
|08EAFC| LSR A
|08EAFD| STA.b $04

|08EAFF| LDA.b $72
|08EB01| AND.w #$01F8
|08EB04| ASL A
|08EB05| ASL A
|08EB06| ASL A
|08EB07| CLC
|08EB08| ADC.b $04
|08EB0A| CLC
|08EB0B| ADC.b $06
|08EB0D| TAX

;---------------------------------------------------------------------------------------------------

|08EB0E| STZ.b $06

|08EB10| LDA.l $7F1FC0,X
|08EB14| AND.w #$00F0
|08EB17| CMP.w #$00B0
|08EB1A| BEQ .match

|08EB1C| INC.b $06

|08EB1E| LDA.l $7F2040,X
|08EB22| AND.w #$00F0
|08EB25| CMP.w #$00B0
|08EB28| BEQ .match

|08EB2A| INC.b $06

|08EB2C| LDA.l $7F1FFF,X
|08EB30| AND.w #$00F0
|08EB33| CMP.w #$00B0
|08EB36| BEQ .match

|08EB38| INC.b $06

.match
|08EB3A| SEP #$30

|08EB3C| LDX.b $06

|08EB3E| LDA.w .direction,X
|08EB41| STA.w $0DE0,Y

|08EB44| LDA.b #$00
|08EB46| STA.w $0F20,Y

|08EB49| BRA .exit

;---------------------------------------------------------------------------------------------------

.just_draw
|08EB4B| JSR AncillaDraw_SomariaBlock

.exit
|08EB4E| PLX

|08EB4F| RTS

;===================================================================================================

Ancilla2E_SomariaBlockFission:
|08EB50| DEC.w $03B1,X
|08EB53| BPL .delay_explosion

|08EB55| LDA.b #$03
|08EB57| STA.w $03B1,X

|08EB5A| LDA.w $0C5E,X
|08EB5D| INC A
|08EB5E| STA.w $0C5E,X

|08EB61| CMP.b #$02
|08EB63| BNE .delay_explosion

|08EB65| STZ.w $0C4A,X

|08EB68| PHX

|08EB69| JSR SpawnSomariaBullets

|08EB6C| PLX

|08EB6D| RTS

;---------------------------------------------------------------------------------------------------

.delay_explosion
|08EB6E| JSR Ancilla_PrepOAMCoord.adjusted

|08EB71| LDY.b #$00

|08EB73| LDA.w $0380,X
|08EB76| CMP.b #$03
|08EB78| BNE .ignore_link_z

|08EB7A| LDA.b $24
|08EB7C| CMP.b #$FF
|08EB7E| BNE .positive_link_z

.ignore_link_z
|08EB80| LDA.b #$00

.positive_link_z
|08EB82| CLC
|08EB83| ADC.w $029E,X
|08EB86| STA.b $04

|08EB88| BPL .positive_som_z

|08EB8A| LDY.b #$FF

.positive_som_z
|08EB8C| STY.b $05

;---------------------------------------------------------------------------------------------------

|08EB8E| REP #$20

|08EB90| LDA.b $04
|08EB92| EOR.w #$FFFF
|08EB95| INC A

|08EB96| CLC
|08EB97| ADC.b $00
|08EB99| STA.b $04

|08EB9B| LDA.b $02
|08EB9D| STA.b $06


|08EB9F| SEP #$20

|08EBA1| PHX

|08EBA2| LDA.w $0C5E,X
|08EBA5| ASL A
|08EBA6| ASL A
|08EBA7| ASL A
|08EBA8| TAX

;---------------------------------------------------------------------------------------------------

|08EBA9| LDY.b #$00
|08EBAB| STY.b $08

.next_object
|08EBAD| REP #$20

|08EBAF| PHX

|08EBB0| TXA
|08EBB1| ASL A
|08EBB2| TAX

|08EBB3| LDA.b $04
|08EBB5| CLC
|08EBB6| ADC.l SomariaBlockFission.offset_y,X
|08EBBA| STA.b $00

|08EBBC| LDA.b $06
|08EBBE| CLC
|08EBBF| ADC.l SomariaBlockFission.offset_x,X
|08EBC3| STA.b $02

|08EBC5| PLX

|08EBC6| SEP #$20

|08EBC8| JSR Ancilla_SetOAM_XY

|08EBCB| LDA.l SomariaBlockFission.char,X
|08EBCF| STA.b ($90),Y

|08EBD1| INY

|08EBD2| LDA.l SomariaBlockFission.prop,X
|08EBD6| AND.b #$CF
|08EBD8| ORA.b $65
|08EBDA| STA.b ($90),Y

|08EBDC| INY
|08EBDD| PHY

|08EBDE| TYA
|08EBDF| SEC
|08EBE0| SBC.b #$04
|08EBE2| LSR A
|08EBE3| LSR A
|08EBE4| TAY

|08EBE5| LDA.b #$00
|08EBE7| STA.b ($92),Y

|08EBE9| PLY

|08EBEA| INX

|08EBEB| INC.b $08

|08EBED| LDA.b $08
|08EBEF| CMP.b #$08
|08EBF1| BNE .next_object

;---------------------------------------------------------------------------------------------------

|08EBF3| PLX

|08EBF4| RTS

;===================================================================================================

pool Ancilla2F_LampFlame

.char
|08EBF5| db $9C, $9C, $FF, $FF
|08EBF9| db $A4, $A5, $B2, $B3
|08EBFD| db $E3, $F3, $FF, $FF

.offset_y_low
|08EC01| db  -3,   0,   0,   0
|08EC05| db   0,   0,   8,   8
|08EC09| db   0,   8,   0,   0

.offset_y_high
|08EC0D| db  -1,   0,   0,   0
|08EC11| db   0,   0,   0,   0
|08EC15| db   0,   0,   0,   0

.offset_x
|08EC19| db   4,  10,   0,   0
|08EC1D| db   1,   9,   2,   7
|08EC21| db   4,   4,   0,   0

endpool

;---------------------------------------------------------------------------------------------------

Ancilla2F_LampFlame:
|08EC25| JSR Ancilla_PrepOAMCoord.adjusted

|08EC28| LDA.b $00
|08EC2A| STA.b $06

|08EC2C| LDA.b $01
|08EC2E| STA.b $07

|08EC30| LDY.b #$00

|08EC32| LDA.w $0C68,X
|08EC35| BNE .continue

|08EC37| STZ.w $0C4A,X

|08EC3A| RTS

;---------------------------------------------------------------------------------------------------

.continue
|08EC3B| AND.b #$F8
|08EC3D| LSR A
|08EC3E| TAX

.next_object
|08EC3F| LDA.w .char,X
|08EC42| CMP.b #$FF
|08EC44| BEQ .skip

|08EC46| LDA.w .offset_y_low,X
|08EC49| CLC
|08EC4A| ADC.b $06
|08EC4C| STA.b $00

|08EC4E| LDA.b $07
|08EC50| ADC.w .offset_y_high,X
|08EC53| STA.b $01

|08EC55| LDA.w .offset_x,X
|08EC58| CLC
|08EC59| ADC.b $04
|08EC5B| STA.b $02

|08EC5D| LDA.b $05
|08EC5F| ADC.b #$00
|08EC61| STA.b $03

|08EC63| JSR Ancilla_SetOAM_XY

|08EC66| LDA.w .char,X
|08EC69| STA.b ($90),Y

|08EC6B| INY

|08EC6C| LDA.b #$02
|08EC6E| ORA.b $65
|08EC70| STA.b ($90),Y

|08EC72| INY
|08EC73| PHY

|08EC74| TYA
|08EC75| SEC
|08EC76| SBC.b #$04
|08EC78| LSR A
|08EC79| LSR A
|08EC7A| TAY

|08EC7B| LDA.b #$00
|08EC7D| STA.b ($92),Y

|08EC7F| PLY

.skip
|08EC80| INX
|08EC81| TXA
|08EC82| AND.b #$03
|08EC84| BNE .next_object

;---------------------------------------------------------------------------------------------------

|08EC86| BRL Ancilla_RestoreIndex

;===================================================================================================


pool Ancilla41_WaterfallSplash

.char
|08EC89| db $C0, $FF
|08EC8B| db $AC, $AC
|08EC8D| db $AE, $AE
|08EC8F| db $BF, $BF

.prop
|08EC91| db $84, $FF
|08EC93| db $84, $C4
|08EC95| db $84, $C4
|08EC97| db $84, $C4

.size
|08EC99| db $02, $FF
|08EC9B| db $02, $02
|08EC9D| db $02, $02
|08EC9F| db $00, $00

;---------------------------------------------------------------------------------------------------

.offset_y_low
|08ECA1| db  -4,   0
|08ECA3| db  -5,  -5
|08ECA5| db  -3,  -3
|08ECA7| db  12,  12

.offset_y_high
|08ECA9| db  -1,   0
|08ECAB| db  -1,  -1
|08ECAD| db  -1,  -1
|08ECAF| db   0,   0

.offset_x_low
|08ECB1| db   0,   0
|08ECB3| db  -4,   4
|08ECB5| db  -7,   7
|08ECB7| db  -9,  17

.offset_x_high
|08ECB9| db   0,   0
|08ECBB| db  -1,   0
|08ECBD| db  -1,   0
|08ECBF| db  -1,   0

endpool

;---------------------------------------------------------------------------------------------------

Ancilla41_WaterfallSplash:
|08ECC1| LDY.b #$00

|08ECC3| LDA.b $1B
|08ECC5| BNE .indoors

|08ECC7| LDY.b #$01

.indoors
|08ECC9| JSR Ancilla_CheckForEntranceTrigger
|08ECCC| BCS .splish_splash

|08ECCE| STZ.w $0C4A,X

|08ECD1| RTS

;---------------------------------------------------------------------------------------------------

.splish_splash
|08ECD2| LDA.b $11
|08ECD4| BNE .skip_sfx

|08ECD6| LDA.b $1A
|08ECD8| AND.b #$07
|08ECDA| BNE .skip_sfx

|08ECDC| LDA.b #$1C ; SFX2.1C
|08ECDE| JSR Ancilla_SFX2_Near

.skip_sfx
|08ECE1| LDA.b #$01
|08ECE3| STA.w $0351

; [WTF]
|08ECE6| LDA.b $2E
|08ECE8| SEC
|08ECE9| SBC.b #$06
|08ECEB| BMI .dont_reset_anim

|08ECED| STA.b $2E

.dont_reset_anim
|08ECEF| LDA.w $0C68,X
|08ECF2| BNE .anim_delay

|08ECF4| LDA.b #$02
|08ECF6| STA.w $0C68,X

|08ECF9| LDA.w $0C5E,X
|08ECFC| INC A
|08ECFD| AND.b #$03
|08ECFF| STA.w $0C5E,X

;---------------------------------------------------------------------------------------------------

.anim_delay
|08ED02| LDA.b $1B
|08ED04| BEQ .set_y_coord

|08ED06| LDA.b $20
|08ED08| CMP.b #$38
|08ED0A| BCS .set_y_coord

|08ED0C| LDA.b #$38
|08ED0E| STA.w $0BFA,X

|08ED11| LDA.b #$0D
|08ED13| STA.w $0C0E,X
|08ED16| BRA .set_x_coord

.set_y_coord
|08ED18| LDA.b $20
|08ED1A| STA.w $0BFA,X

|08ED1D| LDA.b $21
|08ED1F| STA.w $0C0E,X

.set_x_coord
|08ED22| LDA.b $22
|08ED24| STA.w $0C04,X

|08ED27| LDA.b $23
|08ED29| STA.w $0C18,X

;---------------------------------------------------------------------------------------------------

|08ED2C| JSR Ancilla_PrepOAMCoord.adjusted

|08ED2F| LDA.b $24
|08ED31| BPL .positive_link_z

|08ED33| LDA.b #$00

.positive_link_z
|08ED35| REP #$20

|08ED37| AND.w #$00FF
|08ED3A| EOR.w #$FFFF
|08ED3D| INC A

|08ED3E| CLC
|08ED3F| ADC.b $00
|08ED41| STA.b $00
|08ED43| STA.b $06

;---------------------------------------------------------------------------------------------------

|08ED45| SEP #$20

|08ED47| LDA.w $0C5E,X
|08ED4A| ASL A
|08ED4B| TAX

|08ED4C| LDY.b #$00

.next_object
|08ED4E| LDA.w .char,X
|08ED51| CMP.b #$FF
|08ED53| BEQ .skip

|08ED55| LDA.w .offset_y_low,X
|08ED58| CLC
|08ED59| ADC.b $06
|08ED5B| STA.b $00

|08ED5D| LDA.w .offset_y_high,X
|08ED60| ADC.b $07
|08ED62| STA.b $01

|08ED64| LDA.w .offset_x_low,X
|08ED67| CLC
|08ED68| ADC.b $04
|08ED6A| STA.b $02

|08ED6C| LDA.w .offset_x_high,X
|08ED6F| ADC.b $05
|08ED71| STA.b $03

|08ED73| JSR Ancilla_SetOAM_XY

|08ED76| LDA.w .char,X
|08ED79| STA.b ($90),Y

|08ED7B| INY

|08ED7C| LDA.w .prop,X
|08ED7F| ORA.b #$30
|08ED81| STA.b ($90),Y

|08ED83| INY
|08ED84| PHY

|08ED85| TYA
|08ED86| SEC
|08ED87| SBC.b #$04
|08ED89| LSR A
|08ED8A| LSR A
|08ED8B| TAY

|08ED8C| LDA.w .size,X
|08ED8F| STA.b ($92),Y

|08ED91| PLY

.skip
|08ED92| INX

|08ED93| TXA
|08ED94| AND.b #$01
|08ED96| BNE .next_object

;---------------------------------------------------------------------------------------------------

|08ED98| BRL Ancilla_RestoreIndex

;===================================================================================================

Gravestone_Move:
|08ED9B| PHB
|08ED9C| PHK
|08ED9D| PLB

|08ED9E| LDA.b $11
|08EDA0| BNE .exit

|08EDA2| LDA.b #$F8
|08EDA4| STA.w $0C22,X

|08EDA7| JSR AncillaMoveY
|08EDAA| JSR Gravestone_ActAsBarrier

|08EDAD| LDA.w $038A,X
|08EDB0| STA.b $00

|08EDB2| LDA.w $038F,X
|08EDB5| STA.b $01

|08EDB7| LDA.w $0BFA,X
|08EDBA| STA.b $02

|08EDBC| LDA.w $0C0E,X
|08EDBF| STA.b $03

;---------------------------------------------------------------------------------------------------

|08EDC1| REP #$20

|08EDC3| LDA.b $02
|08EDC5| CMP.b $00

|08EDC7| SEP #$20
|08EDC9| BCS .exit

|08EDCB| STZ.w $0C4A,X

|08EDCE| STZ.w $03E9

|08EDD1| LDA.b $48
|08EDD3| AND.b #$FB
|08EDD5| STA.b $48

|08EDD7| LDA.w $03BA,X
|08EDDA| STA.b $72

|08EDDC| LDA.w $03B6,X
|08EDDF| STA.b $73

|08EDE1| REP #$20

|08EDE3| LDA.b $72
|08EDE5| STA.w $0698

;---------------------------------------------------------------------------------------------------
; TODO analyze
|08EDE8| LDY.b #$48

|08EDEA| CMP.w #$0532
|08EDED| BEQ .no_update_change

|08EDEF| LDY.b #$60
|08EDF1| CMP.w #$0488
|08EDF4| BEQ .no_update_change

|08EDF6| LDY.b #$40

.no_update_change
|08EDF8| TYA
|08EDF9| AND.w #$00FF
|08EDFC| STA.w $0692

|08EDFF| SEP #$20

|08EE01| PHX
|08EE02| JSL BigMap16Update_long
|08EE06| PLX

|08EE07| BRA .exit ; useless

;---------------------------------------------------------------------------------------------------

.exit
|08EE09| PLB

|08EE0A| RTL

;===================================================================================================

pool Ancilla24_Gravestone

.char
|08EE0B| db $C8, $C8, $D8, $D8

.prop
|08EE0F| db $00, $40, $00, $40

endpool

;---------------------------------------------------------------------------------------------------

Ancilla24_Gravestone:
|08EE13| PHX

|08EE14| JSR Ancilla_PrepOAMCoord.adjusted

|08EE17| REP #$20

|08EE19| LDA.b $02
|08EE1B| STA.b $06

|08EE1D| SEP #$20

|08EE1F| LDA.b #$10
|08EE21| JSL AllocateOAMInRegionB

;---------------------------------------------------------------------------------------------------

|08EE25| LDY.b #$00
|08EE27| TYX

.next_object
|08EE28| JSR Ancilla_SetOAM_XY

|08EE2B| LDA.w .char,X
|08EE2E| STA.b ($90),Y

|08EE30| INY

|08EE31| LDA.w .prop,X
|08EE34| ORA.b #$3D
|08EE36| STA.b ($90),Y

|08EE38| INY
|08EE39| PHY

|08EE3A| TYA
|08EE3B| SEC
|08EE3C| SBC.b #$04
|08EE3E| LSR A
|08EE3F| LSR A
|08EE40| TAY

|08EE41| LDA.b #$02
|08EE43| STA.b ($92),Y

|08EE45| PLY

|08EE46| INX

|08EE47| REP #$20

|08EE49| LDA.b $02
|08EE4B| CLC
|08EE4C| ADC.w #$0010
|08EE4F| STA.b $02

|08EE51| CPX.b #$02
|08EE53| BNE .left_side

|08EE55| LDA.b $00
|08EE57| CLC
|08EE58| ADC.w #$0008
|08EE5B| STA.b $00

|08EE5D| LDA.b $06
|08EE5F| STA.b $02

.left_side
|08EE61| SEP #$20

|08EE63| CPX.b #$04
|08EE65| BNE .next_object

;---------------------------------------------------------------------------------------------------

|08EE67| PLX

|08EE68| RTS

;===================================================================================================

Gravestone_ActAsBarrier:
|08EE69| LDA.w $0BFA,X
|08EE6C| STA.b $00

|08EE6E| LDA.w $0C0E,X
|08EE71| STA.b $01

|08EE73| LDA.w $0C04,X
|08EE76| STA.b $02

|08EE78| LDA.w $0C18,X
|08EE7B| STA.b $03

;---------------------------------------------------------------------------------------------------

|08EE7D| REP #$20

|08EE7F| LDA.b $00
|08EE81| CLC
|08EE82| ADC.w #$0018
|08EE85| STA.b $04

|08EE87| LDA.b $02
|08EE89| CLC
|08EE8A| ADC.w #$0020
|08EE8D| STA.b $06

|08EE8F| LDA.b $20
|08EE91| CLC
|08EE92| ADC.w #$0008
|08EE95| STA.b $08

;---------------------------------------------------------------------------------------------------

|08EE97| CMP.b $00
|08EE99| BCC .not_close

|08EE9B| CMP.b $04
|08EE9D| BCS .not_close

|08EE9F| LDA.b $22
|08EEA1| CLC
|08EEA2| ADC.w #$0008
|08EEA5| CMP.b $02
|08EEA7| BCC .not_close

|08EEA9| CMP.b $06
|08EEAB| BCS .not_close

;---------------------------------------------------------------------------------------------------

|08EEAD| LDA.b $08
|08EEAF| SEC
|08EEB0| SBC.b $04
|08EEB2| BPL .link_below

|08EEB4| EOR.w #$FFFF
|08EEB7| INC A

.link_below
|08EEB8| STA.b $0A

|08EEBA| CLC
|08EEBB| ADC.b $20
|08EEBD| STA.b $20

; [BUG] technically u think, since it doesn't AND.w #$00FF
; though it probably never matters
|08EEBF| LDA.b $30
|08EEC1| CMP.w #$0080
|08EEC4| BCC .sign_correct

|08EEC6| ORA.w #$FF00

.sign_correct
|08EEC9| STA.b $08

;---------------------------------------------------------------------------------------------------

|08EECB| LDA.b $0A
|08EECD| CLC
|08EECE| ADC.b $08
|08EED0| AND.w #$00FF
|08EED3| STA.b $08

|08EED5| LDA.b $30
|08EED7| AND.w #$FF00
|08EEDA| ORA.b $08
|08EEDC| STA.b $30

|08EEDE| LDA.w #$0004
|08EEE1| TSB.b $48

;---------------------------------------------------------------------------------------------------

.not_close
|08EEE3| SEP #$20

|08EEE5| LDA.b $2F
|08EEE7| BEQ .exit

|08EEE9| LDA.b $48
|08EEEB| AND.b #$FB
|08EEED| STA.b $48

.exit
|08EEEF| RTS

;===================================================================================================

pool AncillaDraw_SkullWoodsFlame

.flame_offset_y_low
|08EEF0| db   0
|08EEF1| db   0
|08EEF2| db   0
|08EEF3| db  -3

.flame_offset_y_high
|08EEF4| db   0
|08EEF5| db   0
|08EEF6| db   0
|08EEF7| db  -1

.flame_char
|08EEF8| db $8E
|08EEF9| db $A0
|08EEFA| db $A2
|08EEFB| db $A4

.flame_prop
|08EEFC| db $02
|08EEFD| db $02
|08EEFE| db $02
|08EEFF| db $00

endpool

;===================================================================================================

pool AncillaDraw_SkullWoodsBlast

.blast_char
|08EF00| db $86, $86, $86, $FF, $FF, $FF
|08EF06| db $86, $86, $86, $86, $86, $86
|08EF0C| db $8A, $8A, $8A, $8A, $8A, $8A
|08EF12| db $9B, $9B, $9B, $9B, $9B, $9B

.blast_prop
|08EF18| db $00, $00, $00, $00, $00, $00
|08EF1E| db $00, $00, $00, $00, $00, $00
|08EF24| db $00, $00, $00, $00, $00, $00
|08EF2A| db $80, $40, $40, $80, $40, $00

.blast_size
|08EF30| db $02, $02, $02, $02, $01, $01
|08EF36| db $02, $02, $02, $02, $02, $02
|08EF3C| db $02, $02, $02, $02, $02, $02
|08EF42| db $00, $00, $00, $00, $00, $00

.blast_offset_y
|08EF48| dw -31, -24, -22,  -1,  -1,  -1
|08EF54| dw -37, -32, -32, -23, -16, -14
|08EF60| dw -37, -32, -32, -23, -16, -14
|08EF6C| dw -35, -29, -28, -20, -13, -11

.blast_offset_x
|08EF78| dw -13, -21, -10,  -1,  -1,  -1
|08EF84| dw -16, -27,  -4, -16,  -6, -25
|08EF90| dw -16, -27,  -4, -16,  -6, -25
|08EF9C| dw -13,  -5, -27, -11, -22,  -3

;---------------------------------------------------------------------------------------------------

.blast_data_index
|08EFA8| db $00
|08EFA9| db $06
|08EFAA| db $0C
|08EFAB| db $12

endpool

;===================================================================================================

Ancilla34_SkullWoodsFire:
|08EFAC| LDA.l $7F0010
|08EFB0| BEQ .inactive

|08EFB2| LDA.w $0C5E,X
|08EFB5| CMP.b #$04
|08EFB7| BEQ .inactive

|08EFB9| DEC.w $03B1,X
|08EFBC| BPL .inactive

|08EFBE| LDA.b #$05
|08EFC0| STA.w $03B1,X

|08EFC3| INC.w $0C5E,X

.inactive
|08EFC6| LDX.b #$03
|08EFC8| LDY.b #$00

;===================================================================================================

SkullWoodsFlame_DoNext:
|08EFCA| LDA.l $7F0008,X
|08EFCE| DEC A
|08EFCF| STA.l $7F0008,X
|08EFD3| BMI .reset_flame_index

.only_flame_draw
|08EFD5| BRL AncillaDraw_SkullWoodsFlame

;---------------------------------------------------------------------------------------------------

.reset_flame_index
|08EFD8| LDA.b #$05
|08EFDA| STA.l $7F0008,X

|08EFDE| LDA.l $7F0000,X
|08EFE2| CMP.b #$80
|08EFE4| BEQ .only_flame_draw

|08EFE6| INC A
|08EFE7| STA.l $7F0000,X
|08EFEB| BEQ .reset_control

|08EFED| CMP.b #$04
|08EFEF| BNE .only_flame_draw

|08EFF1| LDA.b #$00
|08EFF3| STA.l $7F0000,X

;---------------------------------------------------------------------------------------------------

.reset_control
|08EFF7| REP #$20

|08EFF9| LDA.l $7F0018
|08EFFD| SEC
|08EFFE| SBC.w #$0008
|08F001| STA.l $7F0018

|08F005| CMP.w #$00C8
|08F008| BCS .skip_sfx

|08F00A| LDA.w #$0098
|08F00D| SEC
|08F00E| SBC.b $E2
|08F010| STA.b $00

|08F012| SEP #$20

|08F014| LDA.l $7F0010
|08F018| CMP.b #$01
|08F01A| BEQ .skip_sfx

|08F01C| LDA.b #$01
|08F01E| STA.l $7F0010

|08F022| LDA.b $00
|08F024| JSR Ancilla_SetPanRelativeCoordinates
|08F027| ORA.b #$0C ; SFX2.0C
|08F029| STA.w $012E

;---------------------------------------------------------------------------------------------------

.skip_sfx
|08F02C| REP #$20

|08F02E| LDA.l $7F0018
|08F032| CMP.w #$00A8
|08F035| BCS .dont_terminate

|08F037| LDA.l $7F0000,X
|08F03B| AND.w #$FF00
|08F03E| ORA.w #$0080
|08F041| STA.l $7F0000,X

.dont_terminate
|08F045| PHX

|08F046| TXA
|08F047| ASL A
|08F048| TAX

|08F049| LDA.l $7F001A
|08F04D| STA.l $7F0030,X

|08F051| LDA.l $7F0018
|08F055| STA.l $7F0020,X

|08F059| PLX

|08F05A| SEP #$20

|08F05C| LDA.w $012E
|08F05F| BNE AncillaDraw_SkullWoodsFlame

|08F061| LDA.l $7F001A
|08F065| SEC
|08F066| SBC.b $E2

|08F068| JSR Ancilla_SetPanRelativeCoordinates
|08F06B| ORA.b #$2A ; SFX2.2A
|08F06D| STA.w $012E

;===================================================================================================

AncillaDraw_SkullWoodsFlame:
|08F070| SEP #$20

|08F072| PHX

|08F073| LDA.l $7F0000,X
|08F077| BPL .continue_with_flame

|08F079| BRL .skip_flame

;---------------------------------------------------------------------------------------------------

.continue_with_flame
|08F07C| PHY

|08F07D| TAY

|08F07E| LDA.w .flame_offset_y_low,Y
|08F081| STA.b $04

|08F083| LDA.w .flame_offset_y_high,Y
|08F086| STA.b $05

|08F088| LDA.w .flame_char,Y
|08F08B| STA.b $06

|08F08D| LDA.w .flame_prop,Y
|08F090| STA.b $07

|08F092| TXA
|08F093| ASL A
|08F094| TAX

;---------------------------------------------------------------------------------------------------

|08F095| REP #$20

|08F097| LDA.l $7F0020,X
|08F09B| SEC
|08F09C| SBC.b $E8
|08F09E| CLC
|08F09F| ADC.b $04
|08F0A1| STA.b $00

|08F0A3| LDA.l $7F0030,X
|08F0A7| SEC
|08F0A8| SBC.b $E2
|08F0AA| STA.b $02
|08F0AC| CLC
|08F0AD| ADC.w #$0008
|08F0B0| STA.b $08

|08F0B2| SEP #$20

|08F0B4| PLY

|08F0B5| JSR Ancilla_SetOAM_XY

|08F0B8| LDA.b $06
|08F0BA| STA.b ($90),Y

|08F0BC| INY

|08F0BD| LDA.b #$32
|08F0BF| STA.b ($90),Y

|08F0C1| INY
|08F0C2| PHY

|08F0C3| TYA
|08F0C4| SEC
|08F0C5| SBC.b #$04
|08F0C7| LSR A
|08F0C8| LSR A
|08F0C9| TAY

|08F0CA| LDA.b $07
|08F0CC| STA.b ($92),Y

|08F0CE| PLY

|08F0CF| CMP.b #$02
|08F0D1| BEQ .skip_flame

;---------------------------------------------------------------------------------------------------

|08F0D3| REP #$20

|08F0D5| LDA.b $08
|08F0D7| STA.b $02

|08F0D9| SEP #$20

|08F0DB| JSR Ancilla_SetOAM_XY

|08F0DE| LDA.b $06
|08F0E0| INC A
|08F0E1| STA.b ($90),Y

|08F0E3| INY

|08F0E4| LDA.b #$32
|08F0E6| STA.b ($90),Y

|08F0E8| INY
|08F0E9| PHY

|08F0EA| TYA
|08F0EB| SEC
|08F0EC| SBC.b #$04
|08F0EE| LSR A
|08F0EF| LSR A
|08F0F0| TAY

|08F0F1| LDA.b $07
|08F0F3| STA.b ($92),Y

|08F0F5| PLY

;---------------------------------------------------------------------------------------------------

.skip_flame
|08F0F6| PLX
|08F0F7| DEX
|08F0F8| BMI AncillaDraw_SkullWoodsBlast

|08F0FA| BRL SkullWoodsFlame_DoNext

;===================================================================================================

AncillaDraw_SkullWoodsBlast:
|08F0FD| LDX.b #$03

.find_blast
|08F0FF| LDA.l $7F0000,X
|08F103| BPL .one_active

|08F105| DEX
|08F106| BPL .find_blast

|08F108| LDX.w $0FA0
|08F10B| STZ.w $0C4A,X

|08F10E| RTS

.one_active
|08F10F| LDX.w $0FA0

|08F112| LDA.l $7F0010
|08F116| BEQ .exit

|08F118| LDA.w $0C5E,X
|08F11B| CMP.b #$04
|08F11D| BEQ .exit

|08F11F| TAX

|08F120| LDA.w .blast_data_index,X
|08F123| TAX

|08F124| STZ.b $08

;---------------------------------------------------------------------------------------------------

.next_object
|08F126| LDA.w .blast_char,X
|08F129| CMP.b #$FF
|08F12B| BEQ .skip

|08F12D| PHX

|08F12E| TXA
|08F12F| ASL A
|08F130| TAX

|08F131| REP #$20

|08F133| LDA.w #$00C8
|08F136| SEC
|08F137| SBC.b $E8
|08F139| CLC
|08F13A| ADC.w .blast_offset_y,X
|08F13D| STA.b $00

|08F13F| LDA.w #$00A8
|08F142| SEC
|08F143| SBC.b $E2
|08F145| CLC
|08F146| ADC.w .blast_offset_x,X
|08F149| STA.b $02

|08F14B| SEP #$20

|08F14D| PLX

|08F14E| JSR Ancilla_SetOAM_XY

|08F151| LDA.w .blast_char,X
|08F154| STA.b ($90),Y

|08F156| INY

|08F157| LDA.w .blast_prop,X
|08F15A| ORA.b #$30
|08F15C| ORA.b #$02
|08F15E| STA.b ($90),Y

|08F160| INY
|08F161| PHY

|08F162| TYA
|08F163| SEC
|08F164| SBC.b #$04
|08F166| LSR A
|08F167| LSR A
|08F168| TAY

|08F169| LDA.w .blast_size,X
|08F16C| STA.b ($92),Y

|08F16E| PLY

.skip
|08F16F| INX

|08F170| INC.b $08

|08F172| LDA.b $08
|08F174| CMP.b #$06
|08F176| BNE .next_object

;---------------------------------------------------------------------------------------------------

.exit
|08F178| BRL Ancilla_RestoreIndex

;===================================================================================================

pool Ancilla3A_BigBombExplosion

.offset_y
|08F17B| dw   0, -16, -24, -16
|08F183| dw   0,   0,  16,  24
|08F18B| dw  16

.offset_x
|08F18D| dw   0, -16,   0,  16
|08F195| dw -24,  24, -16,   0
|08F19D| dw  16

endpool

;---------------------------------------------------------------------------------------------------

Ancilla3A_BigBombExplosion:
|08F19F| LDA.b $11
|08F1A1| BNE .just_draw

|08F1A3| DEC.w $039F,X

|08F1A6| LDA.w $039F,X
|08F1A9| BNE .just_draw

|08F1AB| INC.w $0C5E,X

|08F1AE| LDA.w $0C5E,X
|08F1B1| CMP.b #$02
|08F1B3| BNE .skip_sfx

|08F1B5| LDA.b #$0C ; SFX2.0C
|08F1B7| JSR Ancilla_SFX2_Pan

.skip_sfx
|08F1BA| LDA.w $0C5E,X
|08F1BD| CMP.b #$0B
|08F1BF| BNE .dont_terminate

|08F1C1| STZ.w $0C4A,X

|08F1C4| RTS

;---------------------------------------------------------------------------------------------------

.dont_terminate
|08F1C5| TAY
|08F1C6| LDA.w BombTimers,Y
|08F1C9| STA.w $039F,X

.just_draw
|08F1CC| LDA.b #$08
|08F1CE| STA.b $09

|08F1D0| LDA.b #$30
|08F1D2| STA.b $65
|08F1D4| STZ.b $64

|08F1D6| STZ.b $0A

|08F1D8| LDA.b #$32
|08F1DA| STA.b $0B

|08F1DC| LDA.w $0C5E,X
|08F1DF| TAY

|08F1E0| LDA.w BombDraw.object_count,Y
|08F1E3| STA.b $08

|08F1E5| LDA.w BombAnimationSteps,Y
|08F1E8| TAY

|08F1E9| LDA.w BombDraw.data_offset,Y
|08F1EC| ASL A
|08F1ED| TAY

|08F1EE| ASL A
|08F1EF| STA.b $04
|08F1F1| STZ.b $05

|08F1F3| TYA
|08F1F4| STA.w $0C54,X

;---------------------------------------------------------------------------------------------------

|08F1F7| LDY.b #$00

.next_object
|08F1F9| PHX
|08F1FA| PHY

|08F1FB| LDA.w $0BFA,X
|08F1FE| STA.b $00

|08F200| LDA.w $0C0E,X
|08F203| STA.b $01

|08F205| LDA.w $0C04,X
|08F208| STA.b $02

|08F20A| LDA.w $0C18,X
|08F20D| STA.b $03

|08F20F| LDA.b $09
|08F211| ASL A
|08F212| TAY

|08F213| REP #$20

|08F215| LDA.b $00
|08F217| CLC
|08F218| ADC.w .offset_y,Y
|08F21B| SEC
|08F21C| SBC.b $E8
|08F21E| STA.b $00

|08F220| LDA.b $02
|08F222| CLC
|08F223| ADC.w .offset_x,Y
|08F226| SEC
|08F227| SBC.b $E2
|08F229| STA.b $02

|08F22B| SEP #$20

|08F22D| PLY

|08F22E| LDA.w $0C54,X
|08F231| TAX

|08F232| LDA.b $01
|08F234| BNE .skip

|08F236| LDA.b $03
|08F238| BNE .skip

;---------------------------------------------------------------------------------------------------

|08F23A| PHX
|08F23B| PHY

|08F23C| LDA.b #$18
|08F23E| JSR AllocateOAMInRegionsADF

|08F241| PLY
|08F242| PLX

|08F243| LDA.b $00
|08F245| STA.b $0C

|08F247| LDA.b $01
|08F249| STA.b $0D

|08F24B| LDA.b $02
|08F24D| STA.b $0E

|08F24F| LDA.b $03
|08F251| STA.b $0F

|08F253| STZ.b $06
|08F255| STZ.b $07

|08F257| JSR AncillaDraw_Explosion

;---------------------------------------------------------------------------------------------------

.skip
|08F25A| PLX

|08F25B| DEC.b $09
|08F25D| BPL .next_object

;---------------------------------------------------------------------------------------------------

|08F25F| LDA.w $0C5E,X
|08F262| CMP.b #$03
|08F264| BNE .exit

|08F266| LDA.w $039F,X
|08F269| CMP.b #$01
|08F26B| BNE .exit

|08F26D| LDA.w $0BFA,X
|08F270| STA.b $00

|08F272| LDA.w $0C0E,X
|08F275| STA.b $01

|08F277| LDA.w $0C04,X
|08F27A| STA.b $02

|08F27C| LDA.w $0C18,X
|08F27F| STA.b $03

|08F281| PHX

|08F282| JSL FindBombableThings

|08F286| PLX

|08F287| LDA.b #$00
|08F289| STA.l $7EF3CC

.exit
|08F28D| RTS

;===================================================================================================

pool RevivalFairy

.timer
|08F28E| db   0, 144

.char
|08F290| db $4B, $4D, $49, $47, $49

endpool

;---------------------------------------------------------------------------------------------------

RevivalFairy:
|08F295| PHB
|08F296| PHK
|08F297| PLB

|08F298| LDX.b #$00

|08F29A| LDA.w $0C54,X
|08F29D| BEQ .emerging

|08F29F| CMP.b #$03
|08F2A1| BNE .emerged

|08F2A3| BRL .finish_up

;---------------------------------------------------------------------------------------------------

.emerging
|08F2A6| DEC.w $039F,X

|08F2A9| LDA.w $039F,X
|08F2AC| BNE .sprinkling

|08F2AE| INC.w $0C54,X

|08F2B1| LDY.w $0C54,X

|08F2B4| LDA.w .timer,Y
|08F2B7| STA.w $039F,X

|08F2BA| STZ.w $0380,X
|08F2BD| STZ.w $0294,X

|08F2C0| BRL .draw

;---------------------------------------------------------------------------------------------------

.sprinkling
|08F2C3| JSR AncillaMoveZ

|08F2C6| BRL .draw

;---------------------------------------------------------------------------------------------------

.emerged
|08F2C9| CMP.b #$01
|08F2CB| BNE .fly_away_now

|08F2CD| DEC.w $039F,X
|08F2D0| LDA.w $039F,X
|08F2D3| BNE .busy_sprinkling

|08F2D5| INC.w $0C54,X

|08F2D8| STZ.w $0294,X
|08F2DB| STZ.w $0C2C,X

|08F2DE| BRL .draw

;---------------------------------------------------------------------------------------------------

.busy_sprinkling
|08F2E1| CMP.b #$4F
|08F2E3| BEQ .do_sprinkle

|08F2E5| CMP.b #$8F
|08F2E7| BNE .dont_sprinkle

.do_sprinkle
|08F2E9| INC.w $0385,X

|08F2EC| LDA.b #$31 ; SFX2.31
|08F2EE| JSR Ancilla_SFX2_Pan

.dont_sprinkle
|08F2F1| LDA.w $0385,X
|08F2F4| BEQ .not_sprinkling

|08F2F6| DEC.w $0394,X
|08F2F9| BPL .not_sprinkling

|08F2FB| LDA.b #$05
|08F2FD| STA.w $0394,X

|08F300| INC.w $0C5E,X

|08F303| LDA.w $0C5E,X
|08F306| CMP.b #$03
|08F308| BNE .not_sprinkling

|08F30A| STZ.w $0C5E,X
|08F30D| STZ.w $0385,X

;---------------------------------------------------------------------------------------------------

.not_sprinkling
|08F310| LDY.b #$FF

|08F312| LDA.w $0380,X
|08F315| BEQ .descending

|08F317| LDY.b #$01

.descending
|08F319| STY.b $00

|08F31B| LDA.w $0294,X
|08F31E| CLC
|08F31F| ADC.b $00
|08F321| STA.w $0294,X
|08F324| BPL .positive_z

|08F326| EOR.b #$FF
|08F328| INC A

.positive_z
|08F329| CMP.b #$08
|08F32B| BNE .dont_toggle_z

|08F32D| LDA.w $0380,X
|08F330| EOR.b #$01
|08F332| STA.w $0380,X

.dont_toggle_z
|08F335| JSR AncillaMoveZ

|08F338| BRA .draw

;---------------------------------------------------------------------------------------------------

.fly_away_now
|08F33A| CMP.b #$02
|08F33C| BNE .draw

|08F33E| LDA.w $0294,X
|08F341| CMP.b #$18
|08F343| BCS .at_max_z

|08F345| CLC
|08F346| ADC.b #$01
|08F348| STA.w $0294,X

.at_max_z
|08F34B| LDA.w $0C2C,X
|08F34E| CMP.b #$10
|08F350| BCS .at_max_x

|08F352| CLC
|08F353| ADC.b #$01
|08F355| STA.w $0C2C,X

.at_max_x
|08F358| JSR AncillaMoveX
|08F35B| JSR AncillaMoveZ

;---------------------------------------------------------------------------------------------------

.draw
|08F35E| LDA.b #$0C
|08F360| JSL AllocateOAMInRegionC

|08F364| JSR Ancilla_PrepOAMCoord

|08F367| PHX

|08F368| STZ.b $0A

|08F36A| LDA.w $0C54,X
|08F36D| CMP.b #$01
|08F36F| BNE .am_not_sprinkling

|08F371| LDA.w $0385,X
|08F374| BEQ .am_not_sprinkling

|08F376| LDA.w $0C5E,X
|08F379| INC A
|08F37A| STA.b $0A

.am_not_sprinkling
|08F37C| LDY.b #$00

|08F37E| REP #$20

|08F380| LDA.w $029E,X
|08F383| AND.w #$00FF
|08F386| CMP.w #$0080
|08F389| BCC .positive_altitude

|08F38B| ORA.w #$FF00

.positive_altitude
|08F38E| EOR.w #$FFFF
|08F391| INC A
|08F392| CLC
|08F393| ADC.b $00
|08F395| STA.b $00

;---------------------------------------------------------------------------------------------------

|08F397| SEP #$20

|08F399| JSR Ancilla_SetOAM_XY

|08F39C| LDA.b $0A
|08F39E| BEQ .flapping

|08F3A0| DEC A
|08F3A1| CLC
|08F3A2| ADC.b #$02
|08F3A4| TAX

|08F3A5| BRA .set_char

.flapping
|08F3A7| LDA.b $1A
|08F3A9| AND.b #$04
|08F3AB| LSR A
|08F3AC| LSR A
|08F3AD| TAX

.set_char
|08F3AE| LDA.w .char,X
|08F3B1| STA.b ($90),Y

|08F3B3| INY

|08F3B4| LDA.b #$74
|08F3B6| STA.b ($90),Y

|08F3B8| TYA
|08F3B9| SEC
|08F3BA| SBC.b #$03
|08F3BC| LSR A
|08F3BD| LSR A
|08F3BE| TAY

|08F3BF| LDA.b #$02
|08F3C1| STA.b ($92),Y

|08F3C3| PLX

|08F3C4| LDY.b #$01

|08F3C6| LDA.b ($90),Y
|08F3C8| CMP.b #$F0
|08F3CA| BNE .finish_up

|08F3CC| LDA.b #$03
|08F3CE| STA.w $0C54,X

|08F3D1| INC.b $11

|08F3D3| LDA.l $7EC211
|08F3D7| STA.b $1C

;---------------------------------------------------------------------------------------------------

.finish_up
|08F3D9| JSR RevivalFairy_Dust
|08F3DC| JSR RevivalFairy_MonitorHP

|08F3DF| PLB

|08F3E0| RTL

;===================================================================================================

RevivalFairy_Dust:
|08F3E1| LDA.w $0C54,X
|08F3E4| BNE .continue

|08F3E6| RTS

;---------------------------------------------------------------------------------------------------

.continue
|08F3E7| LDX.b #$02

|08F3E9| LDA.w $0C54,X
|08F3EC| CMP.b #$02
|08F3EE| BEQ .exit

|08F3F0| DEC.w $039F,X
|08F3F3| BPL .exit

|08F3F5| STZ.w $039F,X

|08F3F8| LDA.b #$10

|08F3FA| LDY.w $0FB3
|08F3FD| BNE .use_region_d

|08F3FF| JSL AllocateOAMInRegionA
|08F403| BRA .oam_allocated

.use_region_d
|08F405| JSL AllocateOAMInRegionD

;---------------------------------------------------------------------------------------------------

.oam_allocated
|08F409| DEC.w $03B1,X
|08F40C| BPL .just_draw

|08F40E| LDA.b #$03
|08F410| STA.w $03B1,X

|08F413| LDY.b #$03

|08F415| LDA.w PowderDraw.group_offset,Y
|08F418| STA.b $00

;---------------------------------------------------------------------------------------------------

|08F41A| LDA.w $0C5E,X
|08F41D| INC A
|08F41E| CMP.b #$0A
|08F420| BNE .not_fully_sprinkled

|08F422| LDA.b #$20
|08F424| STA.w $039F,X

|08F427| INC.w $0C54,X

|08F42A| LDA.b #$02
|08F42C| STA.w $0C5E,X

|08F42F| BRA .exit

;---------------------------------------------------------------------------------------------------

.not_fully_sprinkled
|08F431| STA.w $0C5E,X

|08F434| CLC
|08F435| ADC.b $00
|08F437| TAY

|08F438| LDA.w PowderDraw.anim_step,Y
|08F43B| STA.w $03C2,X

.just_draw
|08F43E| JSR AncillaDraw_Powder

.exit
|08F441| RTS

;===================================================================================================

RevivalFairy_MonitorHP:
|08F442| LDA.l $7EF36C
|08F446| STA.b $00

|08F448| LDA.l $7EF36D
|08F44C| CMP.b $00

|08F44E| BEQ .at_max

|08F450| CMP.b #$38
|08F452| BNE .healing

.at_max
|08F454| LDA.w $020A
|08F457| BNE .healing

;---------------------------------------------------------------------------------------------------

|08F459| LDY.b #$00 ; LINKSTATE 00

; fake flippers
|08F45B| LDA.w $0345
|08F45E| BEQ .not_swimming

|08F460| LDY.b #$04 ; LINKSTATE 04

|08F462| LDA.b #$04
|08F464| STA.w $0340

|08F467| BRA .set_state

.not_swimming
|08F469| LDA.b $56
|08F46B| BEQ .set_state

|08F46D| LDY.b #$17 ; LINKSTATE 17

|08F46F| LDA.b #$01
|08F471| STA.w $02E0

.set_state
|08F474| STY.b $5D

|08F476| STZ.b $4D
|08F478| STZ.w $036B

|08F47B| STZ.w $030D
|08F47E| STZ.w $030A

|08F481| STZ.b $24
|08F483| STZ.b $46

|08F485| STZ.w $0C4A
|08F488| STZ.w $0C4B
|08F48B| STZ.w $0C4C
|08F48E| STZ.w $0C4D
|08F491| STZ.w $0C4E

|08F494| RTS

;---------------------------------------------------------------------------------------------------

.healing
|08F495| LDX.b #$01

|08F497| LDA.w $0C54,X
|08F49A| BNE .link_floating

|08F49C| DEC.w $039F,X

|08F49F| LDA.w $039F,X
|08F4A2| BNE .delay_ascent

|08F4A4| INC.w $039F,X

|08F4A7| LDA.b #$04
|08F4A9| STA.w $0294,X

|08F4AC| JSR AncillaMoveZ

|08F4AF| LDA.w $029E,X
|08F4B2| CMP.b #$10
|08F4B4| BCC .delay_ascent

|08F4B6| INC.w $0C54,X

|08F4B9| LDA.b #$02
|08F4BB| STA.w $0294,X

.delay_ascent
|08F4BE| BRA .float_link

;---------------------------------------------------------------------------------------------------

.link_floating
|08F4C0| DEC.w $0380,X
|08F4C3| BPL .delay_bobbing

|08F4C5| LDA.b #$20
|08F4C7| STA.w $0380,X

|08F4CA| LDA.w $0294,X
|08F4CD| EOR.b #$FF
|08F4CF| INC A

|08F4D0| STA.w $0294,X

;---------------------------------------------------------------------------------------------------

.delay_bobbing
|08F4D3| JSR AncillaMoveZ

.float_link
|08F4D6| LDA.w $029E,X
|08F4D9| STA.b $24

|08F4DB| RTS

;===================================================================================================

Animate_GAMEOVER_Letters:
|08F4DC| PHB
|08F4DD| PHK
|08F4DE| PLB

|08F4DF| JSR .main

|08F4E2| PLB

|08F4E3| RTL

;---------------------------------------------------------------------------------------------------

.vector_low
|08F4E4| db GAMEOVER_Sweep
|08F4E5| db GAMEOVER_Unfurl
|08F4E6| db GAMEOVER_Stay

.vector_high
|08F4E7| db >GAMEOVER_Sweep
|08F4E8| db >GAMEOVER_Unfurl
|08F4E9| db >GAMEOVER_Stay

;---------------------------------------------------------------------------------------------------

.main
|08F4EA| LDX.w $0C4A
|08F4ED| BEQ .none_active

|08F4EF| DEX

|08F4F0| LDA.w .vector_low,X
|08F4F3| STA.b $00

|08F4F5| LDA.w .vector_high,X
|08F4F8| STA.b $01

|08F4FA| JMP.w ($0000)

.none_active
|08F4FD| INC.b $11

|08F4FF| RTS

;===================================================================================================

pool GAMEOVER_Sweep

.target_x
|08F500| db $40 ; G
|08F501| db $50 ; A
|08F502| db $60 ; M
|08F503| db $70 ; E

|08F504| db $88 ; O
|08F505| db $98 ; V
|08F506| db $A8 ; E
|08F507| db $40 ; R

endpool

;---------------------------------------------------------------------------------------------------

GAMEOVER_Sweep:
|08F508| LDX.w $035F
|08F50B| STX.w $0FA0

|08F50E| LDY.b #$80
|08F510| CPX.b #$07

|08F512| BNE .pointless

|08F514| LDY.b #$80

;---------------------------------------------------------------------------------------------------

.pointless
|08F516| TYA
|08F517| STA.w $0C2C,X

|08F51A| JSR AncillaMoveX

|08F51D| LDA.w $0C18,X
|08F520| BNE .leftwards_ho

|08F522| LDA.w $0C04,X
|08F525| CMP.w .target_x,X
|08F528| BCS .leftwards_ho

|08F52A| LDA.w .target_x,X
|08F52D| STA.w $0C04,X

|08F530| INX
|08F531| STX.w $035F

|08F534| CPX.b #$08
|08F536| BNE .leftwards_ho

|08F538| LDA.b #$07
|08F53A| STA.w $035F

|08F53D| INC.w $0C4A

|08F540| STZ.w $039D

|08F543| LDA.b #$26 ; SFX3.26
|08F545| STA.w $012F

|08F548| BRA .proceed_to_draw

;---------------------------------------------------------------------------------------------------

.leftwards_ho
|08F54A| CPX.b #$07
|08F54C| BNE .proceed_to_draw

|08F54E| LDY.b #$06
|08F550| CPY.w $039D
|08F553| BEQ .not_moving_together

;---------------------------------------------------------------------------------------------------

.next_follow
|08F555| LDA.w $0C04,X
|08F558| STA.w $0C04,Y

|08F55B| DEY
|08F55C| CPY.w $039D
|08F55F| BNE .next_follow

;---------------------------------------------------------------------------------------------------

.not_moving_together
|08F561| LDA.w $0C18,X
|08F564| BNE .proceed_to_draw

|08F566| LDA.w $0C04,X

|08F569| LDX.w $039D

|08F56C| CMP.w .target_x,X
|08F56F| BCS .proceed_to_draw

|08F571| DEC.w $039D

.proceed_to_draw
|08F574| BRL GAMEOVER_Stay

;===================================================================================================

pool GAMEOVER_Unfurl

.target_x
|08F577| db $58 ; G
|08F578| db $60 ; A
|08F579| db $68 ; M
|08F57A| db $70 ; E

|08F57B| db $88 ; O
|08F57C| db $90 ; V
|08F57D| db $98 ; E
|08F57E| db $A0 ; R

endpool

;---------------------------------------------------------------------------------------------------

GAMEOVER_Unfurl:
|08F57F| LDX.w $035F
|08F582| STX.w $0FA0

|08F585| LDA.b #$60
|08F587| STA.w $0C2C,X

|08F58A| JSR AncillaMoveX

|08F58D| LDY.w $039D

|08F590| LDA.w $0C04,X
|08F593| CMP.w .target_x,Y
|08F596| BCC .rightwards_ho

|08F598| LDA.w .target_x,Y
|08F59B| STA.w $0C04,Y

|08F59E| INC.w $039D

|08F5A1| LDA.w $039D
|08F5A4| CMP.b #$08
|08F5A6| BNE .rightwards_ho

|08F5A8| INC.b $11
|08F5AA| INC.w $0C4A

|08F5AD| BRA .proceed_to_draw

.rightwards_ho
|08F5AF| LDA.w $039D
|08F5B2| DEC A
|08F5B3| STA.b $00

|08F5B5| LDX.w $035F
|08F5B8| TXY

.next_follow
|08F5B9| LDA.w $0C04,X
|08F5BC| STA.w $0C04,Y

|08F5BF| DEY
|08F5C0| CPY.b $00
|08F5C2| BNE .next_follow

;---------------------------------------------------------------------------------------------------

.proceed_to_draw
|08F5C4| BRA GAMEOVER_Stay

;===================================================================================================

pool GAMEOVER_Stay

.char
|08F5C6| db $40, $50 ; G
|08F5C8| db $41, $51 ; A
|08F5CA| db $42, $52 ; M
|08F5CC| db $43, $53 ; E

|08F5CE| db $44, $54 ; O
|08F5D0| db $45, $55 ; V
|08F5D2| db $43, $53 ; E
|08F5D4| db $46, $56 ; R

endpool

;---------------------------------------------------------------------------------------------------

GAMEOVER_Stay:
|08F5D6| LDA.b #$00
|08F5D8| STA.b $90

|08F5DA| LDA.b #$08
|08F5DC| STA.b $91

|08F5DE| LDA.b #$20
|08F5E0| STA.b $92

|08F5E2| LDA.b #$0A
|08F5E4| STA.b $93

|08F5E6| LDX.w $035F
|08F5E9| LDY.b #$00

;---------------------------------------------------------------------------------------------------

.next_letter
|08F5EB| PHX

|08F5EC| LDA.b #$57
|08F5EE| STA.b $00
|08F5F0| STZ.b $01

|08F5F2| LDA.w $0C04,X
|08F5F5| STA.b $02

|08F5F7| LDA.w $0C18,X
|08F5FA| STA.b $03

|08F5FC| JSR Ancilla_SetOAM_XY

|08F5FF| TXA
|08F600| ASL A
|08F601| TAX

|08F602| LDA.w .char+0,X
|08F605| STA.b ($90),Y

|08F607| INY

|08F608| LDA.b #$3C
|08F60A| STA.b ($90),Y

|08F60C| INY

|08F60D| LDA.b #$5F
|08F60F| STA.b $00
|08F611| STZ.b $01

|08F613| JSR Ancilla_SetOAM_XY

|08F616| LDA.w .char+1,X
|08F619| STA.b ($90),Y

|08F61B| INY

|08F61C| LDA.b #$3C
|08F61E| STA.b ($90),Y

|08F620| INY
|08F621| PHY

|08F622| TYA
|08F623| SEC
|08F624| SBC.b #$08
|08F626| LSR A
|08F627| LSR A
|08F628| TAY

|08F629| LDA.b #$00
|08F62B| STA.b ($92),Y

|08F62D| INY

|08F62E| STA.b ($92),Y

|08F630| PLY
|08F631| PLX

|08F632| DEX
|08F633| BPL .next_letter

;---------------------------------------------------------------------------------------------------

|08F635| RTS

;===================================================================================================

Ancilla_SetPanRelativeCoordinates:
|08F636| PHX

|08F637| LSR A ; /32
|08F638| LSR A
|08F639| LSR A
|08F63A| LSR A
|08F63B| LSR A

|08F63C| TAX

|08F63D| LDA.l AncillaPanValues,X

|08F641| PLX

|08F642| RTS

;===================================================================================================

AddAncilla_bank08:
|08F643| PHA

|08F644| JSL FindAncillaSlot

|08F648| PLA

|08F649| TYX
|08F64A| BMI .fail

|08F64C| STA.w $0C4A,X

|08F64F| TAY

|08F650| LDA.w AncillaObjectAllocation,Y
|08F653| STA.w $0C90,X

|08F656| LDA.b $EE
|08F658| STA.w $0C7C,X

|08F65B| LDA.w $0476
|08F65E| STA.w $03CA,X

|08F661| STZ.w $0C22,X
|08F664| STZ.w $0C2C,X

|08F667| STZ.w $0280,X
|08F66A| STZ.w $028A,X

|08F66D| CLC

|08F66E| RTS

.fail
|08F66F| SEC

|08F670| RTS

;===================================================================================================
; Seems like it looks for a matching ancilla
;===================================================================================================
UNREACHABLE_08F671:
|08F671| LDX.b #$05

.next_slot
|08F673| CMP.w $0C4A,X
|08F676| BEQ .found_match

|08F678| DEX
|08F679| BPL .next_slot

|08F67B| CLC

|08F67C| RTS

.found_match
|08F67D| SEC

|08F67E| RTS

;===================================================================================================

AncillaPriorities:
|08F67F| db $20, $10, $30, $20

;===================================================================================================

Ancilla_PrepOAMCoord:
|08F683| LDY.w $0C7C,X

|08F686| LDA.w AncillaPriorities,Y
|08F689| STA.b $65
|08F68B| STZ.b $64

|08F68D| LDA.w $0BFA,X
|08F690| STA.b $00

|08F692| LDA.w $0C0E,X
|08F695| STA.b $01

|08F697| LDA.w $0C04,X
|08F69A| STA.b $02

|08F69C| LDA.w $0C18,X
|08F69F| STA.b $03

|08F6A1| REP #$20

|08F6A3| LDA.b $00
|08F6A5| SEC
|08F6A6| SBC.b $E8
|08F6A8| STA.b $00

|08F6AA| LDA.b $02
|08F6AC| SEC
|08F6AD| SBC.b $E2
|08F6AF| STA.b $02
|08F6B1| STA.b $04

|08F6B3| SEP #$20

|08F6B5| RTS

;---------------------------------------------------------------------------------------------------

.adjusted
|08F6B6| LDY.w $0C7C,X

|08F6B9| LDA.w AncillaPriorities,Y
|08F6BC| STA.b $65
|08F6BE| STZ.b $64

|08F6C0| LDA.w $0BFA,X
|08F6C3| STA.b $00

|08F6C5| LDA.w $0C0E,X
|08F6C8| STA.b $01

|08F6CA| LDA.w $0C04,X
|08F6CD| STA.b $02

|08F6CF| LDA.w $0C18,X
|08F6D2| STA.b $03

|08F6D4| REP #$20

|08F6D6| LDA.b $00
|08F6D8| SEC
|08F6D9| SBC.w $0122
|08F6DC| STA.b $00

|08F6DE| LDA.b $02
|08F6E0| SEC
|08F6E1| SBC.w $011E
|08F6E4| STA.b $02
|08F6E6| STA.b $04

|08F6E8| SEP #$20

|08F6EA| RTS

;===================================================================================================

Ancilla_PrepOAMCoord_long:
|08F6EB| PHB
|08F6EC| PHK
|08F6ED| PLB

|08F6EE| JSR Ancilla_PrepOAMCoord

|08F6F1| PLB

|08F6F2| RTL

;===================================================================================================

Ancilla_SetOAM_XY:
|08F6F3| PHX

|08F6F4| LDX.b #$F0

|08F6F6| LDA.b $01
|08F6F8| BNE .off_screen

|08F6FA| LDA.b $03
|08F6FC| BNE .off_screen

|08F6FE| LDA.b $02
|08F700| STA.b ($90),Y

|08F702| LDA.b $00
|08F704| CMP.b #$F0
|08F706| BCS .off_screen

|08F708| TAX

.off_screen
|08F709| INY

|08F70A| TXA
|08F70B| STA.b ($90),Y

|08F70D| INY

|08F70E| PLX

|08F70F| RTS

;===================================================================================================

Ancilla_SetOAM_XY_long:
|08F710| JSR Ancilla_SetOAM_XY

|08F713| RTL

;===================================================================================================

Ancilla_SetOAM_XY_safe:
|08F714| REP #$20

|08F716| LDA.b $02
|08F718| STA.b ($90),Y

|08F71A| INY

|08F71B| CLC
|08F71C| ADC.w #$0080
|08F71F| CMP.w #$0180
|08F722| BCS .off_screen

|08F724| LDA.b $02
|08F726| AND.w #$0100
|08F729| STA.b $74

|08F72B| LDA.b $00
|08F72D| STA.b ($90),Y

|08F72F| CLC
|08F730| ADC.w #$0010
|08F733| CMP.w #$0100
|08F736| BCC .on_screen

.off_screen
|08F738| LDA.w #$00F0
|08F73B| STA.b ($90),Y

.on_screen
|08F73D| SEP #$20

|08F73F| INY

|08F740| RTS

;===================================================================================================

pool Ancilla_CheckLinkCollision

.offset_y
|08F741| dw  0
|08F743| dw  8
|08F745| dw  8
|08F747| dw  8
|08F749| dw  0

.offset_x
|08F74B| dw  0
|08F74D| dw  8
|08F74F| dw  8
|08F751| dw  8
|08F753| dw  0

.height
|08F755| dw 20
|08F757| dw 20
|08F759| dw  8
|08F75B| dw 28
|08F75D| dw 14

.width
|08F75F| dw 20
|08F761| dw  3
|08F763| dw  8
|08F765| dw 24
|08F767| dw 14

.offset_link_y
|08F769| dw 12
|08F76B| dw 12
|08F76D| dw 12
|08F76F| dw 12
|08F771| dw 12

.offset_link_x
|08F773| dw  8
|08F775| dw  8
|08F777| dw  8
|08F779| dw 12
|08F77B| dw  8

endpool

;---------------------------------------------------------------------------------------------------

Ancilla_CheckLinkCollision:
|08F77D| TYA
|08F77E| ASL A
|08F77F| TAY

|08F780| LDA.w $0BFA,X
|08F783| STA.b $00

|08F785| LDA.w $0C0E,X
|08F788| STA.b $01

|08F78A| LDA.w $0C04,X
|08F78D| STA.b $02

|08F78F| LDA.w $0C18,X
|08F792| STA.b $03

|08F794| STZ.b $0B

|08F796| LDA.w $029E,X
|08F799| STA.b $0A

|08F79B| BPL .positive_z

|08F79D| LDA.b #$FF
|08F79F| STA.b $0B

;---------------------------------------------------------------------------------------------------

.positive_z
|08F7A1| REP #$20

|08F7A3| LDA.b $00
|08F7A5| CLC
|08F7A6| ADC.b $0A
|08F7A8| CLC
|08F7A9| ADC.w .offset_y,Y
|08F7AC| STA.b $00

|08F7AE| LDA.b $02
|08F7B0| CLC
|08F7B1| ADC.w .offset_x,Y
|08F7B4| STA.b $02

|08F7B6| LDA.b $20
|08F7B8| CLC
|08F7B9| ADC.w .offset_link_y,Y

|08F7BC| SEC
|08F7BD| SBC.b $00
|08F7BF| STA.b $04

|08F7C1| BPL .positive_y

|08F7C3| EOR.w #$FFFF
|08F7C6| INC A

.positive_y
|08F7C7| STA.b $08

|08F7C9| CMP.w .height,Y
|08F7CC| BCS .no_collision

;---------------------------------------------------------------------------------------------------

|08F7CE| LDA.b $22
|08F7D0| CLC
|08F7D1| ADC.w .offset_link_x,Y
|08F7D4| SEC
|08F7D5| SBC.b $02
|08F7D7| STA.b $06

|08F7D9| BPL .positive_x

|08F7DB| EOR.w #$FFFF
|08F7DE| INC A

.positive_x
|08F7DF| STA.b $0A

|08F7E1| CMP.w .width,Y
|08F7E4| BCS .no_collision

;---------------------------------------------------------------------------------------------------

.collision
|08F7E6| SEP #$20
|08F7E8| SEC

|08F7E9| RTS

.no_collision
|08F7EA| SEP #$20
|08F7EC| CLC

|08F7ED| RTS

;===================================================================================================

Hookshot_CheckProximityToLink:
|08F7EE| REP #$20

|08F7F0| LDA.b $00
|08F7F2| CLC
|08F7F3| ADC.w #$0004
|08F7F6| STA.b $72

|08F7F8| LDA.b $02
|08F7FA| CLC
|08F7FB| ADC.w #$0004
|08F7FE| STA.b $74

|08F800| LDA.b $20
|08F802| SEC
|08F803| SBC.b $E8
|08F805| CLC
|08F806| ADC.w #$000C

|08F809| SEC
|08F80A| SBC.b $72

|08F80C| BPL .positive_y

|08F80E| EOR.w #$FFFF
|08F811| INC A

.positive_y
|08F812| CMP.w #$000C
|08F815| BCS .too_far

|08F817| LDA.b $22
|08F819| SEC
|08F81A| SBC.b $E2
|08F81C| CLC
|08F81D| ADC.w #$0008
|08F820| SEC
|08F821| SBC.b $74

|08F823| BPL .positive_x

|08F825| EOR.w #$FFFF
|08F828| INC A

.positive_x
|08F829| CMP.w #$000C
|08F82C| BCS .too_far

.close
|08F82E| SEP #$20
|08F830| SEC

|08F831| RTS

.too_far
|08F832| SEP #$20
|08F834| CLC

|08F835| RTS

;===================================================================================================

pool Ancilla_CheckForEntranceTrigger

.position_y
|08F836| dw $0D40, $0210, $0CFC, $0100

.position_x
|08F83E| dw $0D80, $0E68, $0130, $0F10

.height
|08F846| dw $000B, $0020, $0010, $000C

.width
|08F84E| dw $0010, $0010, $0010, $0010

endpool

;---------------------------------------------------------------------------------------------------

Ancilla_CheckForEntranceTrigger:
|08F856| TYA
|08F857| ASL A
|08F858| TAY

|08F859| REP #$20

|08F85B| LDA.b $20
|08F85D| CLC
|08F85E| ADC.w #$000C
|08F861| SEC
|08F862| SBC.w .position_y,Y

|08F865| BPL .positive_y

|08F867| EOR.w #$FFFF
|08F86A| INC A

.positive_y
|08F86B| CMP.w .height,Y
|08F86E| BCS .out_of_range

|08F870| LDA.b $22
|08F872| CLC
|08F873| ADC.w #$0008
|08F876| SEC
|08F877| SBC.w .position_x,Y

|08F87A| BPL .positive_x

|08F87C| EOR.w #$FFFF
|08F87F| INC A

.positive_x
|08F880| CMP.w .width,Y
|08F883| BCS .out_of_range

.success
|08F885| SEP #$20
|08F887| SEC

|08F888| RTS

.out_of_range
|08F889| SEP #$20
|08F88B| CLC

|08F88C| RTS

;===================================================================================================

pool AncillaDraw_Shadow

.char
|08F88D| db $6C, $6C
|08F88F| db $28, $28
|08F891| db $38, $FF
|08F893| db $C8, $C8
|08F895| db $D8, $D8
|08F897| db $D9, $D9
|08F899| db $DA, $DA

.prop
|08F89B| db $28, $68
|08F89D| db $28, $68
|08F89F| db $28, $FF
|08F8A1| db $22, $22
|08F8A3| db $24, $64
|08F8A5| db $24, $64
|08F8A7| db $24, $64

endpool

;---------------------------------------------------------------------------------------------------

AncillaDraw_Shadow:
|08F8A9| CPX.b #$02
|08F8AB| BNE .big_shadow

|08F8AD| REP #$20

|08F8AF| LDA.b $02
|08F8B1| CLC
|08F8B2| ADC.w #$0004
|08F8B5| STA.b $02

|08F8B7| SEP #$20

;---------------------------------------------------------------------------------------------------

.big_shadow
|08F8B9| TXA
|08F8BA| ASL A
|08F8BB| TAX

|08F8BC| STZ.b $74
|08F8BE| STZ.b $75

|08F8C0| JSR Ancilla_SetOAM_XY_safe

|08F8C3| LDA.w .char+0,X
|08F8C6| STA.b ($90),Y

|08F8C8| INY

|08F8C9| LDA.w .prop+0,X
|08F8CC| AND.b #$CF
|08F8CE| ORA.b $04
|08F8D0| STA.b ($90),Y

|08F8D2| INY
|08F8D3| PHY

|08F8D4| TYA
|08F8D5| SEC
|08F8D6| SBC.b #$04
|08F8D8| LSR A
|08F8D9| LSR A
|08F8DA| TAY

|08F8DB| LDA.b #$00
|08F8DD| ORA.b $75
|08F8DF| STA.b ($92),Y

|08F8E1| PLY

|08F8E2| REP #$20

|08F8E4| LDA.b $02
|08F8E6| CLC
|08F8E7| ADC.w #$0008
|08F8EA| STA.b $02

|08F8EC| SEP #$20

|08F8EE| LDA.w .char+1,X
|08F8F1| CMP.b #$FF
|08F8F3| BEQ .exit

|08F8F5| STZ.b $74
|08F8F7| STZ.b $75

|08F8F9| JSR Ancilla_SetOAM_XY_safe

|08F8FC| LDA.w .char+1,X
|08F8FF| STA.b ($90),Y

|08F901| INY

|08F902| LDA.w .prop+1,X
|08F905| AND.b #$CF
|08F907| ORA.b $04
|08F909| STA.b ($90),Y

|08F90B| INY
|08F90C| PHY

|08F90D| TYA
|08F90E| SEC
|08F90F| SBC.b #$03
|08F911| LSR A
|08F912| LSR A
|08F913| TAY

|08F914| LDA.b #$00
|08F916| ORA.b $75
|08F918| STA.b ($92),Y

|08F91A| PLY

.exit
|08F91B| RTS

;===================================================================================================

AllocateOAMInRegionsBE:
|08F91C| LDY.w $0FB3
|08F91F| BNE .use_region_E

.use_region_B
|08F921| JSL AllocateOAMInRegionB
|08F925| BRA .exit

.use_region_E
|08F927| JSL AllocateOAMInRegionE

.exit
|08F92B| RTS

;===================================================================================================

StepTowardsLink:
|08F92C| PHB
|08F92D| PHK
|08F92E| PLB

.get_closer
|08F92F| LDX.w $02D3

|08F932| LDA.w $1A00,X
|08F935| STA.w $0C03

|08F938| LDA.w $1A14,X
|08F93B| STA.w $0C17

|08F93E| LDA.w $1A28,X
|08F941| STA.w $0C0D

|08F944| LDA.w $1A3C,X
|08F947| STA.w $0C21

|08F94A| LDX.b #$09
|08F94C| LDA.b #$18
|08F94E| JSR ProjectAncillaSpeedTowardsLink

|08F951| LDA.b $00
|08F953| STA.w $0C22,X

|08F956| LDA.b $01
|08F958| STA.w $0C2C,X

|08F95B| JSR AncillaMoveY

|08F95E| PHX
|08F95F| JSR AncillaMoveX
|08F962| PLX

|08F963| LDA.w $0BFA,X
|08F966| STA.b $00

|08F968| LDA.w $0C0E,X
|08F96B| STA.b $01

|08F96D| LDA.w $0C04,X
|08F970| STA.b $02

|08F972| LDA.w $0C18,X
|08F975| STA.b $03

;---------------------------------------------------------------------------------------------------

|08F977| REP #$20

|08F979| LDA.b $00
|08F97B| SEC
|08F97C| SBC.b $20
|08F97E| BPL .positive_y

|08F980| EOR.w #$FFFF
|08F983| INC A

.positive_y
|08F984| CMP.w #$0002
|08F987| BCS .not_close_enough

|08F989| LDA.b $02
|08F98B| SEC
|08F98C| SBC.b $22
|08F98E| BPL .positive_x

|08F990| EOR.w #$FFFF
|08F993| INC A

.positive_x
|08F994| CMP.w #$0002
|08F997| BCC .exit

;---------------------------------------------------------------------------------------------------

.not_close_enough
|08F999| SEP #$20

|08F99B| INC.w $02D3

|08F99E| LDX.w $02D3
|08F9A1| CPX.b #$12
|08F9A3| BEQ .exit

|08F9A5| LDA.b $00
|08F9A7| STA.w $1A00,X

|08F9AA| LDA.b $01
|08F9AC| STA.w $1A14,X

|08F9AF| LDA.b $02
|08F9B1| STA.w $1A28,X

|08F9B4| LDA.b $03
|08F9B6| STA.w $1A3C,X

|08F9B9| LDY.b $EE

|08F9BB| LDA.w AncillaPriorities,Y
|08F9BE| LSR A
|08F9BF| LSR A
|08F9C0| ORA.b #$01
|08F9C2| STA.w $1A64,X

|08F9C5| BRL .get_closer

;---------------------------------------------------------------------------------------------------

.exit
|08F9C8| SEP #$20

|08F9CA| PLB

|08F9CB| RTL

;===================================================================================================

AllocateOAMInCustomRegion:
|08F9CC| PHA
|08F9CD| PHX

|08F9CE| REP #$20

|08F9D0| TYA
|08F9D1| AND.w #$00FF
|08F9D4| CLC
|08F9D5| ADC.b $90

|08F9D7| LDX.w $0FB3
|08F9DA| BEQ .ignore_layer

|08F9DC| CMP.w #$0900
|08F9DF| BCS .upper_region

|08F9E1| CMP.w #$08E0
|08F9E4| BCC .continue

|08F9E6| LDA.w #$0820
|08F9E9| BRA .set_region

.upper_region
|08F9EB| CMP.w #$09D0
|08F9EE| BCC .continue

|08F9F0| LDA.w #$0940
|08F9F3| BRA .set_region

;---------------------------------------------------------------------------------------------------

.ignore_layer
|08F9F5| CMP.w #$0990
|08F9F8| BCC .continue

|08F9FA| LDA.w #$0820

;---------------------------------------------------------------------------------------------------

.set_region
|08F9FD| STA.b $90

|08F9FF| SEC
|08FA00| SBC.w #$0800
|08FA03| LSR A
|08FA04| LSR A
|08FA05| CLC
|08FA06| ADC.w #$0A20
|08FA09| STA.b $92

|08FA0B| LDY.b #$00

;---------------------------------------------------------------------------------------------------

.continue
|08FA0D| SEP #$20

|08FA0F| PLX
|08FA10| PLA

|08FA11| RTS

;===================================================================================================

HitStars_UpdateOAMBufferPosition:
|08FA12| PHA
|08FA13| PHX

|08FA14| REP #$20

|08FA16| TYA
|08FA17| AND.w #$00FF
|08FA1A| CLC
|08FA1B| ADC.b $90

|08FA1D| LDX.w $0FB3
|08FA20| BNE .exit

|08FA22| CMP.w #$09D0
|08FA25| BCC .exit

|08FA27| LDA.w #$0820
|08FA2A| STA.b $90

|08FA2C| SEC
|08FA2D| SBC.w #$0800

|08FA30| LSR A
|08FA31| LSR A

|08FA32| CLC
|08FA33| ADC.w #$0A20
|08FA36| STA.b $92

|08FA38| LDY.b #$00

.exit
|08FA3A| SEP #$20

|08FA3C| PLX
|08FA3D| PLA

|08FA3E| RTS

;===================================================================================================
; Returns with carry clear if the hookshot should bother checking tile
; collision in later routines.
; Carry set when all should be ignored.
;===================================================================================================
Hookshot_ShouldIEvenBotherWithTiles:
|08FA3F| PHX
|08FA40| PHY

; Cache coordinates
|08FA41| LDA.w $0BFA,X
|08FA44| STA.b $00

|08FA46| LDA.w $0C0E,X
|08FA49| STA.b $01

|08FA4B| LDA.w $0C04,X
|08FA4E| STA.b $02

|08FA50| LDA.w $0C18,X
|08FA53| STA.b $03

|08FA55| LDA.b $1B
|08FA57| BNE Hookshot_CheckForTileAllowanceUnderworld

;===================================================================================================

Hookshot_CheckForTileAllowanceOverworld:
|08FA59| REP #$20

; What direction is the hookshot moving?
|08FA5B| LDA.w $0C72,X
|08FA5E| AND.w #$0002
|08FA61| BNE .horizontal_direction

;---------------------------------------------------------------------------------------------------

.vertical_direction
|08FA63| LDX.w $0700

|08FA66| LDA.b $00
|08FA68| SEC
|08FA69| SBC.l OverworldTransitionPositionY,X
|08FA6D| CMP.w #$0004
|08FA70| BCC Hookshot_DisallowTileCollision

|08FA72| CMP.w $0716
|08FA75| BCS Hookshot_DisallowTileCollision

|08FA77| BRA Hookshot_AllowTileCollision

;---------------------------------------------------------------------------------------------------

.horizontal_direction
|08FA79| LDX.w $0700

|08FA7C| LDA.b $02
|08FA7E| SEC
|08FA7F| SBC.l OverworldTransitionPositionX,X
|08FA83| CMP.w #$0006
|08FA86| BCC Hookshot_DisallowTileCollision

|08FA88| CMP.w $0716
|08FA8B| BCC Hookshot_AllowTileCollision

;===================================================================================================

Hookshot_DisallowTileCollision:
|08FA8D| SEP #$20

|08FA8F| PLY
|08FA90| PLX

|08FA91| SEC

|08FA92| RTS

;===================================================================================================

Hookshot_AllowTileCollision:
|08FA93| SEP #$20

|08FA95| PLY
|08FA96| PLX

|08FA97| CLC

|08FA98| RTS

;===================================================================================================

Hookshot_CheckForTileAllowanceUnderworld:
|08FA99| REP #$20

; Check direction
|08FA9B| LDA.w $0C72,X
|08FA9E| AND.w #$0002
|08FAA1| BNE .horizontal_direction

;---------------------------------------------------------------------------------------------------
; This just checks if the hookshot is within the bounds of the super tile.
;---------------------------------------------------------------------------------------------------
.vertical_direction
|08FAA3| LDA.b $00
|08FAA5| AND.w #$01FF
|08FAA8| CMP.w #$0004
|08FAAB| BCC Hookshot_DisallowTileCollision

|08FAAD| CMP.w #$01E8
|08FAB0| BCS Hookshot_DisallowTileCollision

|08FAB2| BRA .continue_vertically

;---------------------------------------------------------------------------------------------------
; This also checks if the hookshot is within the bounds of the super tile.
;---------------------------------------------------------------------------------------------------
.horizontal_direction
|08FAB4| LDA.b $02
|08FAB6| AND.w #$01FF
|08FAB9| CMP.w #$0004
|08FABC| BCC Hookshot_DisallowTileCollision

|08FABE| CMP.w #$01F0
|08FAC1| BCS Hookshot_DisallowTileCollision

; These BRAs are pretty pointless.
; There's no shared code.
; Should have just written the code directly after the above checks.
|08FAC3| BRA .continue_horizontally

;---------------------------------------------------------------------------------------------------

.continue_vertically
|08FAC5| SEP #$20

|08FAC7| PLY
|08FAC8| PLX

; This calculation and the corresponding one below are weird.
; They make sure the hookshot's 9th bit matches Link's.
; This appears to be an extra sanity check for if the hookshot goes
; offscreen at the edge of the room, since the above bitmasks only
; check for 8 bits of precision.
; But, it appears to have implications for when Link's position is out
; of sync with the rest of the game. Though, I can't produce any examples
; or scenarios of how this might occur.
|08FAC9| LDA.b $01
|08FACB| AND.b #$02
|08FACD| STA.b $01

|08FACF| LDA.b $21
|08FAD1| AND.b #$02
|08FAD3| CMP.b $01
|08FAD5| BEQ .allow

;---------------------------------------------------------------------------------------------------

.disallow_vertical
|08FAD7| SEC

|08FAD8| RTS

;---------------------------------------------------------------------------------------------------

.continue_horizontally
|08FAD9| SEP #$20

|08FADB| PLY
|08FADC| PLX

; See explanation above.
|08FADD| LDA.b $03
|08FADF| AND.b #$02
|08FAE1| STA.b $03

|08FAE3| LDA.b $23
|08FAE5| AND.b #$02
|08FAE7| CMP.b $03
|08FAE9| BEQ .allow

;---------------------------------------------------------------------------------------------------

.disallow_horizontal
|08FAEB| SEC

|08FAEC| RTS

;---------------------------------------------------------------------------------------------------

.allow
|08FAED| CLC

|08FAEE| RTS

;===================================================================================================
; TODO analyze
;===================================================================================================
Ancilla_GetRadialProjection:
|08FAEF| PHX

|08FAF0| TAX

|08FAF1| LDA.l .multiplier_y,X
|08FAF5| STA.w WRMPYA

|08FAF8| LDA.b $08
|08FAFA| STA.w WRMPYB

|08FAFD| LDA.l .meta_sign_y,X
|08FB01| STA.b $02
|08FB03| STZ.b $03

|08FB05| LDA.w RDMPYL
|08FB08| ASL A
|08FB09| LDA.w RDMPYH

|08FB0C| ADC.b #$00
|08FB0E| STA.b $00
|08FB10| STZ.b $01

;---------------------------------------------------------------------------------------------------

|08FB12| LDA.l .multiplier_x,X
|08FB16| STA.w WRMPYA

|08FB19| LDA.b $08
|08FB1B| STA.w WRMPYB

|08FB1E| LDA.l .meta_sign_x,X
|08FB22| STA.b $06
|08FB24| STZ.b $07

|08FB26| LDA.w RDMPYL
|08FB29| ASL A
|08FB2A| LDA.w RDMPYH

|08FB2D| ADC.b #$00
|08FB2F| STA.b $04
|08FB31| STZ.b $05

|08FB33| PLX

|08FB34| RTS

;===================================================================================================

Ancilla_GetRadialProjection_long:
|08FB35| PHB
|08FB36| PHK
|08FB37| PLB

|08FB38| JSR Ancilla_GetRadialProjection

|08FB3B| PLB

|08FB3C| RTL

;===================================================================================================

AllocateOAMInRegionsADF:
|08FB3D| LDY.w $0FB3
|08FB40| BNE .consider_layer

|08FB42| JSL AllocateOAMInRegionA

|08FB46| RTS

.consider_layer
|08FB47| LDY.w $0C7C,X
|08FB4A| BNE .lower_layer

|08FB4C| JSL AllocateOAMInRegionD

|08FB50| RTS

.lower_layer
|08FB51| JSL AllocateOAMInRegionF

|08FB55| RTS

;===================================================================================================

BeamHit_OAMAdjustments:
|08FB56| JSR BeamHit_GetCoords

|08FB59| LDY.b #$00

.next
|08FB5B| PHY

|08FB5C| TYA
|08FB5D| LSR A
|08FB5E| LSR A
|08FB5F| TAY

|08FB60| LDA.b $0B
|08FB62| BPL .skip_x_bit

|08FB64| LDA.b ($92),Y
|08FB66| AND.b #$02

;---------------------------------------------------------------------------------------------------

.skip_x_bit
|08FB68| STA.b ($92),Y

|08FB6A| PLY

|08FB6B| LDX.b #$00

|08FB6D| LDA.b ($90),Y
|08FB6F| SEC
|08FB70| SBC.b $07
|08FB72| BPL .positive_x

|08FB74| DEX

.positive_x
|08FB75| CLC
|08FB76| ADC.b $02
|08FB78| STA.b $04

;---------------------------------------------------------------------------------------------------

|08FB7A| TXA
|08FB7B| ADC.b $03
|08FB7D| STA.b $05

|08FB7F| JSR BeamHit_GetTopXBit
|08FB82| BCC .x_on_screen

|08FB84| PHY

|08FB85| TYA
|08FB86| LSR A
|08FB87| LSR A
|08FB88| TAY

|08FB89| LDA.b ($92),Y
|08FB8B| ORA.b #$01
|08FB8D| STA.b ($92),Y

|08FB8F| PLY

;---------------------------------------------------------------------------------------------------

.x_on_screen
|08FB90| LDX.b #$00

|08FB92| INY

|08FB93| LDA.b ($90),Y
|08FB95| SEC
|08FB96| SBC.b $06
|08FB98| BPL .positive_y

|08FB9A| DEX

.positive_y
|08FB9B| CLC
|08FB9C| ADC.b $00
|08FB9E| STA.b $09

|08FBA0| TXA
|08FBA1| ADC.b $01
|08FBA3| STA.b $0A

|08FBA5| JSR BeamHit_CheckOffscreen_Y
|08FBA8| BCC .y_on_screen

|08FBAA| LDA.b #$F0
|08FBAC| STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

.y_on_screen
|08FBAE| INY
|08FBAF| INY
|08FBB0| INY

|08FBB1| DEC.b $08
|08FBB3| BPL .next

|08FBB5| BRL Ancilla_RestoreIndex

;===================================================================================================

BeamHit_GetCoords:
|08FBB8| STY.b $0B

|08FBBA| STA.b $08

|08FBBC| LDA.w $0BFA,X
|08FBBF| STA.b $00

|08FBC1| SEC
|08FBC2| SBC.b $E8
|08FBC4| STA.b $06

|08FBC6| LDA.w $0C0E,X
|08FBC9| STA.b $01

|08FBCB| LDA.w $0C04,X
|08FBCE| STA.b $02

|08FBD0| SEC
|08FBD1| SBC.b $E2
|08FBD3| STA.b $07

|08FBD5| LDA.w $0C18,X
|08FBD8| STA.b $03

|08FBDA| RTS

;===================================================================================================

BeamHit_GetTopXBit:
|08FBDB| REP #$20

|08FBDD| LDA.b $04
|08FBDF| SEC
|08FBE0| SBC.b $E2
|08FBE2| CMP.w #$0100

|08FBE5| SEP #$20

|08FBE7| RTS

;===================================================================================================

BeamHit_CheckOffscreen_Y:
|08FBE8| REP #$20

|08FBEA| LDA.b $09
|08FBEC| PHA

|08FBED| CLC
|08FBEE| ADC.w #$0010

|08FBF1| STA.b $09
|08FBF3| SEC
|08FBF4| SBC.b $E8
|08FBF6| CMP.w #$0100

|08FBF9| PLA
|08FBFA| STA.b $09

|08FBFC| SEP #$20

|08FBFE| RTS

;===================================================================================================

QuakeChars:

.group00_a
|08FBFF| db $00, $F0, $00

.group00_b
|08FC02| db $00, $F0, $01

;---------------------------------------------------------------------------------------------------

.group01_a
|08FC05| db $00, $F0, $02

.group01_b
|08FC08| db $00, $F0, $03

;---------------------------------------------------------------------------------------------------

.group02_a
|08FC0B| db $00, $F0, $43

.group02_b
|08FC0E| db $00, $F0, $42

;---------------------------------------------------------------------------------------------------

.group03_a
|08FC11| db $00, $F0, $41

.group03_b
|08FC14| db $00, $F0, $40

;---------------------------------------------------------------------------------------------------

.group04_a
|08FC17| db $00, $F0, $40, $0E, $F8, $84

.group04_b
|08FC1D| db $1D, $F8, $44, $0D, $F9, $84

;---------------------------------------------------------------------------------------------------

.group05_a
|08FC23| db $1F, $F9, $44, $2F, $FC, $84

.group05_b
|08FC29| db $31, $F5, $06, $3F, $FB, $44, $2F, $FC
|08FC31| db $84

;---------------------------------------------------------------------------------------------------

.group06_a
|08FC32| db $24, $EF, $08, $31, $F5, $06, $3F, $FB
|08FC3A| db $44, $4E, $04, $08

.group06_b
|08FC3E| db $16, $E1, $08, $24, $EF, $08, $4E, $04
|08FC46| db $08, $5D, $14, $08

;---------------------------------------------------------------------------------------------------

.group07_a
|08FC4A| db $07, $D2, $08, $17, $D3, $48, $16, $E1
|08FC52| db $08, $5D, $14, $08, $5D, $24, $48

.group07_b
|08FC59| db $F9, $C3, $08, $25, $C5, $48, $07, $D2
|08FC61| db $08, $17, $D3, $48, $5D, $24, $48, $5D
|08FC69| db $34, $08

;---------------------------------------------------------------------------------------------------

.group08_a
|08FC6B| db $EA, $B5, $08, $2F, $B6, $01, $F8, $C3
|08FC73| db $08, $24, $C4, $48, $5D, $34, $08, $6C
|08FC7B| db $43, $08

.group08_b
|08FC7D| db $DB, $A6, $08, $EA, $B5, $08, $2F, $B6
|08FC85| db $01, $3B, $C2, $81, $6C, $43, $08, $79
|08FC8D| db $50, $08

;---------------------------------------------------------------------------------------------------

.group09_a
|08FC8F| db $D4, $98, $C9, $DB, $A6, $08, $49, $B6
|08FC97| db $48, $3B, $C2, $81, $79, $50, $08

.group09_b
|08FC9E| db $D4, $88, $09, $D4, $98, $C9, $57, $A7
|08FCA6| db $48, $49, $B6, $48

;---------------------------------------------------------------------------------------------------

.group0A_a
|08FCAA| db $D4, $88, $09, $66, $98, $48, $57, $A7
|08FCB2| db $48

.group0A_b
|08FCB3| db $66, $98, $48, $57, $A7, $48

;---------------------------------------------------------------------------------------------------

.group0B_a
|08FCB9| db $70, $8C, $48, $66, $98, $48

.group0B_b
|08FCBF| db $70, $8C, $48

;---------------------------------------------------------------------------------------------------

.group0C_a
|08FCC2| db $F3, $F0, $00

.group0C_b
|08FCC5| db $F3, $F0, $01

;---------------------------------------------------------------------------------------------------

.group0D_a
|08FCC8| db $F3, $F0, $02

.group0D_b
|08FCCB| db $F3, $F0, $03

;---------------------------------------------------------------------------------------------------

.group0E_a
|08FCCE| db $F5, $F0, $43

.group0E_b
|08FCD1| db $F5, $F0, $42

;---------------------------------------------------------------------------------------------------

.group0F_a
|08FCD4| db $F5, $F0, $41

.group0F_b
|08FCD7| db $F5, $F0, $40, $E8, $F6, $04

;---------------------------------------------------------------------------------------------------

.group10_a
|08FCDD| db $DA, $EE, $08, $E8, $F6, $04, $D8, $F9
|08FCE5| db $C4

.group10_b
|08FCE6| db $D3, $DF, $C9, $DA, $EE, $08, $C7, $F9
|08FCEE| db $04, $D8, $F9, $C4

;---------------------------------------------------------------------------------------------------

.group11_a
|08FCF2| db $D0, $D3, $07, $D3, $DF, $C9, $C7, $F9
|08FCFA| db $04, $B9, $02, $48

.group11_b
|08FCFE| db $D0, $D3, $06, $B9, $02, $48, $BA, $12
|08FD06| db $08

;---------------------------------------------------------------------------------------------------

.group12_a
|08FD07| db $D0, $D3, $05, $BA, $12, $08, $C8, $21
|08FD0F| db $08

.group12_b
|08FD10| db $D0, $D3, $07, $CA, $22, $08, $CA, $31
|08FD18| db $88

;---------------------------------------------------------------------------------------------------

.group13_a
|08FD19| db $D0, $D3, $06, $CA, $31, $88, $BB, $40
|08FD21| db $88

.group13_b
|08FD22| db $D0, $D3, $07, $BB, $40, $88, $AB, $49
|08FD2A| db $C4

;---------------------------------------------------------------------------------------------------

.group14_a
|08FD2B| db $D0, $D3, $05, $9B, $49, $04, $AB, $49
|08FD33| db $C4

.group14_b
|08FD34| db $C4, $CB, $08, $D0, $D3, $06, $9B, $49
|08FD3C| db $04, $8C, $4D, $C4

;---------------------------------------------------------------------------------------------------

.group15_a
|08FD40| db $B5, $BD, $08, $C4, $CB, $08, $80, $4C
|08FD48| db $04, $8C, $4D, $C4

.group15_b
|08FD4C| db $A6, $AE, $08, $B5, $BD, $08, $80, $4C
|08FD54| db $04

;---------------------------------------------------------------------------------------------------

.group16_a
|08FD55| db $97, $9F, $08, $A6, $AE, $08

.group16_b
|08FD5B| db $88, $91, $08, $97, $9F, $08

;---------------------------------------------------------------------------------------------------

.group17_a
|08FD61| db $88, $91, $08

.group17_b
|08FD64| db $00, $FB, $0A

;---------------------------------------------------------------------------------------------------

.group18_a
|08FD67| db $00, $FB, $0B

.group18_b
|08FD6A| db $02, $FD, $0C

;---------------------------------------------------------------------------------------------------

.group19_a
|08FD6D| db $01, $FD, $0D

.group19_b
|08FD70| db $00, $FD, $8D

;---------------------------------------------------------------------------------------------------

.group1A_a
|08FD73| db $01, $FD, $8C

.group1A_b
|08FD76| db $01, $FD, $8B

;---------------------------------------------------------------------------------------------------

.group1B_a
|08FD79| db $01, $FD, $8A, $FA, $0C, $89

.group1B_b
|08FD7F| db $FA, $0C, $89, $F6, $1C, $C9

;---------------------------------------------------------------------------------------------------

.group1C_a
|08FD85| db $F6, $1C, $49, $F8, $2C, $89

.group1C_b
|08FD8B| db $F8, $2C, $89, $F6, $38, $02

;---------------------------------------------------------------------------------------------------

.group1D_a
|08FD91| db $F6, $38, $02, $E9, $46, $48, $05, $46
|08FD99| db $08

.group1D_b
|08FD9A| db $E9, $46, $48, $05, $46, $08, $DA, $55
|08FDA2| db $48, $13, $55, $08

;---------------------------------------------------------------------------------------------------

.group1E_a
|08FDA6| db $DA, $55, $48, $13, $55, $08, $CC, $63
|08FDAE| db $48, $21, $65, $08

.group1E_b
|08FDB2| db $CC, $63, $48, $21, $65, $08, $BE, $71
|08FDBA| db $48, $2F, $73, $08

;---------------------------------------------------------------------------------------------------

.group1F_a
|08FDBE| db $BE, $71, $48, $2F, $73, $08

.group20_a
|08FDC4| db $A0, $70, $20

.group20_b
|08FDC7| db $A0, $70, $21

;---------------------------------------------------------------------------------------------------

.group21_a
|08FDCA| db $A0, $70, $66

.group21_b
|08FDCD| db $A0, $70, $22

;---------------------------------------------------------------------------------------------------

.group22_a
|08FDD0| db $A0, $70, $23

.group22_b
|08FDD3| db $A0, $70, $63

;---------------------------------------------------------------------------------------------------

.group23_a
|08FDD6| db $A0, $70, $62

.group23_b
|08FDD9| db $A0, $70, $26

;---------------------------------------------------------------------------------------------------

.group24_a
|08FDDC| db $A0, $70, $27, $AA, $7C, $28

.group24_b
|08FDE2| db $AA, $7C, $28, $B8, $8B, $28

;---------------------------------------------------------------------------------------------------

.group25_a
|08FDE8| db $B8, $8B, $28, $C5, $9A, $A1

.group25_b
|08FDEE| db $C5, $9A, $A1, $D4, $8C, $68

;---------------------------------------------------------------------------------------------------

.group26_a
|08FDF4| db $D4, $8C, $68, $E3, $7E, $68

.group26_b
|08FDFA| db $E3, $7E, $68

;---------------------------------------------------------------------------------------------------

.group27_a
|08FDFD| db $ED, $7D, $C5

.group27_b
|08FE00| db $90, $60, $2A

;---------------------------------------------------------------------------------------------------

.group28_a
|08FE03| db $90, $60, $2B

.group28_b
|08FE06| db $90, $60, $2C

;---------------------------------------------------------------------------------------------------

.group29_a
|08FE09| db $90, $60, $2D

.group29_b
|08FE0C| db $89, $52, $29, $90, $60, $2A

;---------------------------------------------------------------------------------------------------

.group2A_a
|08FE12| db $85, $42, $E9, $89, $52, $29

.group2A_b
|08FE18| db $87, $32, $29, $85, $42, $E9

;---------------------------------------------------------------------------------------------------

.group2B_a
|08FE1E| db $7E, $22, $28, $8D, $22, $68, $87, $32
|08FE26| db $29

.group2B_b
|08FE27| db $96, $12, $A9, $6F, $13, $28, $7E, $22
|08FE2F| db $28, $8D, $22, $68

;---------------------------------------------------------------------------------------------------

.group2C_a
|08FE33| db $9C, $02, $68, $66, $04, $E9, $96, $12
|08FE3B| db $A9, $6F, $13, $28

.group2C_b
|08FE3F| db $A5, $F2, $A9, $5F, $F5, $28, $9C, $02
|08FE47| db $68, $66, $04, $E9

;---------------------------------------------------------------------------------------------------

.group2D_a
|08FE4B| db $60, $70, $60

.group2D_b
|08FE4E| db $60, $70, $61

;---------------------------------------------------------------------------------------------------

.group2E_a
|08FE51| db $60, $70, $26

.group2E_b
|08FE54| db $60, $70, $62

;---------------------------------------------------------------------------------------------------

.group2F_a
|08FE57| db $60, $70, $63

.group2F_b
|08FE5A| db $60, $70, $23

;---------------------------------------------------------------------------------------------------

.group30_a
|08FE5D| db $60, $70, $22

.group30_b
|08FE60| db $60, $70, $66

;---------------------------------------------------------------------------------------------------

.group31_a
|08FE63| db $55, $6F, $E8, $60, $70, $67

.group31_b
|08FE69| db $46, $68, $24, $55, $6F, $E8

;---------------------------------------------------------------------------------------------------

.group32_a
|08FE6F| db $46, $68, $24, $36, $6C, $E4

.group32_b
|08FE75| db $28, $64, $28, $26, $6B, $24, $36, $6C
|08FE7D| db $E4

;---------------------------------------------------------------------------------------------------

.group33_a
|08FE7E| db $19, $55, $28, $28, $64, $28, $26, $6B
|08FE86| db $24, $16, $6E, $E4

.group33_b
|08FE8A| db $0B, $46, $28, $19, $55, $28, $07, $6C
|08FE92| db $24, $16, $6E, $E4

;---------------------------------------------------------------------------------------------------

.group34_a
|08FE96| db $0B, $46, $28, $07, $6C, $24

.group34_b
|08FE9C| db $70, $70, $2A

;---------------------------------------------------------------------------------------------------

.group35_a
|08FE9F| db $70, $70, $2B

.group35_b
|08FEA2| db $70, $70, $2C

;---------------------------------------------------------------------------------------------------

.group36_a
|08FEA5| db $70, $70, $2D

.group36_b
|08FEA8| db $70, $70, $2A, $6C, $7D, $29

;---------------------------------------------------------------------------------------------------

.group37_a
|08FEAE| db $6C, $7D, $29, $72, $8C, $28

.group37_b
|08FEB4| db $72, $8C, $28, $7C, $9C, $29

;---------------------------------------------------------------------------------------------------

.group38_a
|08FEBA| db $7C, $9C, $29, $7B, $AC, $E9

.group38_b
|08FEC0| db $7B, $AC, $E9, $75, $B6, $E4, $84, $BB
|08FEC8| db $28

;---------------------------------------------------------------------------------------------------

.group39_a
|08FEC9| db $75, $B6, $E4, $84, $BB, $28, $67, $BD
|08FED1| db $68, $92, $CA, $28

.group39_b
|08FED5| db $67, $BD, $68, $92, $CA, $28, $5F, $CC
|08FEDD| db $69, $9A, $D9, $29

;---------------------------------------------------------------------------------------------------

.group3A_a
|08FEE1| db $5F, $CC, $69, $9A, $D9, $29, $60, $DC
|08FEE9| db $E9, $9A, $E8, $E9

.group3A_b
|08FEED| db $60, $DC, $E9, $9A, $E8, $E9

;---------------------------------------------------------------------------------------------------

.group3B_a
|08FEF3| db $85, $F2, $29, $8D, $F2, $2E, $31, $F4
|08FEFB| db $28

.group3B_b

;===================================================================================================

InitialQuakeBoltPointers:
|08FEFC| dw QuakeChars.group00_a, QuakeChars.group00_b
|08FF00| dw QuakeChars.group01_a, QuakeChars.group01_b
|08FF04| dw QuakeChars.group02_a, QuakeChars.group02_b
|08FF08| dw QuakeChars.group03_a, QuakeChars.group03_b
|08FF0C| dw QuakeChars.group04_a, QuakeChars.group04_b
|08FF10| dw QuakeChars.group05_a, QuakeChars.group05_b
|08FF14| dw QuakeChars.group06_a, QuakeChars.group06_b
|08FF18| dw QuakeChars.group07_a, QuakeChars.group07_b
|08FF1C| dw QuakeChars.group08_a, QuakeChars.group08_b
|08FF20| dw QuakeChars.group09_a, QuakeChars.group09_b
|08FF24| dw QuakeChars.group0A_a, QuakeChars.group0A_b
|08FF28| dw QuakeChars.group0B_a, QuakeChars.group0B_b
|08FF2C| dw QuakeChars.group0C_a, QuakeChars.group0C_b
|08FF30| dw QuakeChars.group0D_a, QuakeChars.group0D_b
|08FF34| dw QuakeChars.group0E_a, QuakeChars.group0E_b
|08FF38| dw QuakeChars.group0F_a, QuakeChars.group0F_b
|08FF3C| dw QuakeChars.group10_a, QuakeChars.group10_b
|08FF40| dw QuakeChars.group11_a, QuakeChars.group11_b
|08FF44| dw QuakeChars.group12_a, QuakeChars.group12_b
|08FF48| dw QuakeChars.group13_a, QuakeChars.group13_b
|08FF4C| dw QuakeChars.group14_a, QuakeChars.group14_b
|08FF50| dw QuakeChars.group15_a, QuakeChars.group15_b
|08FF54| dw QuakeChars.group16_a, QuakeChars.group16_b
|08FF58| dw QuakeChars.group17_a, QuakeChars.group17_b
|08FF5C| dw QuakeChars.group18_a, QuakeChars.group18_b
|08FF60| dw QuakeChars.group19_a, QuakeChars.group19_b
|08FF64| dw QuakeChars.group1A_a, QuakeChars.group1A_b
|08FF68| dw QuakeChars.group1B_a, QuakeChars.group1B_b
|08FF6C| dw QuakeChars.group1C_a, QuakeChars.group1C_b
|08FF70| dw QuakeChars.group1D_a, QuakeChars.group1D_b
|08FF74| dw QuakeChars.group1E_a, QuakeChars.group1E_b
|08FF78| dw QuakeChars.group1F_a, QuakeChars.group20_a

;---------------------------------------------------------------------------------------------------

SpreadQuakeBoltPointers:
|08FF7C| dw QuakeChars.group20_a, QuakeChars.group20_b
|08FF80| dw QuakeChars.group21_a, QuakeChars.group21_b
|08FF84| dw QuakeChars.group22_a, QuakeChars.group22_b
|08FF88| dw QuakeChars.group23_a, QuakeChars.group23_b
|08FF8C| dw QuakeChars.group24_a, QuakeChars.group24_b
|08FF90| dw QuakeChars.group25_a, QuakeChars.group25_b
|08FF94| dw QuakeChars.group26_a, QuakeChars.group26_b
|08FF98| dw QuakeChars.group27_a, QuakeChars.group27_b
|08FF9C| dw QuakeChars.group28_a, QuakeChars.group28_b
|08FFA0| dw QuakeChars.group29_a, QuakeChars.group29_b
|08FFA4| dw QuakeChars.group2A_a, QuakeChars.group2A_b
|08FFA8| dw QuakeChars.group2B_a, QuakeChars.group2B_b
|08FFAC| dw QuakeChars.group2C_a, QuakeChars.group2C_b
|08FFB0| dw QuakeChars.group2D_a, QuakeChars.group2D_b
|08FFB4| dw QuakeChars.group2E_a, QuakeChars.group2E_b
|08FFB8| dw QuakeChars.group2F_a, QuakeChars.group2F_b
|08FFBC| dw QuakeChars.group30_a, QuakeChars.group30_b
|08FFC0| dw QuakeChars.group31_a, QuakeChars.group31_b
|08FFC4| dw QuakeChars.group32_a, QuakeChars.group32_b
|08FFC8| dw QuakeChars.group33_a, QuakeChars.group33_b
|08FFCC| dw QuakeChars.group34_a, QuakeChars.group34_b
|08FFD0| dw QuakeChars.group35_a, QuakeChars.group35_b
|08FFD4| dw QuakeChars.group36_a, QuakeChars.group36_b
|08FFD8| dw QuakeChars.group37_a, QuakeChars.group37_b
|08FFDC| dw QuakeChars.group38_a, QuakeChars.group38_b
|08FFE0| dw QuakeChars.group39_a, QuakeChars.group39_b
|08FFE4| dw QuakeChars.group3A_a, QuakeChars.group3A_b
|08FFE8| dw QuakeChars.group3B_a, QuakeChars.group3B_b

;===================================================================================================
; FREE ROM: 0x14
;===================================================================================================
NULL_08FFEC:
|08FFEC| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|08FFF4| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|08FFFC| db $FF, $FF, $FF, $FF

;===================================================================================================

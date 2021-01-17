org $088000

;===================================================================================================

Ancilla_SFX1_Near:
#_088000: JSR Ancilla_SFX_Near
#_088003: STA.w $012D

#_088006: RTS

;===================================================================================================

Ancilla_SFX2_Near:
#_088007: JSR Ancilla_SFX_Near
#_08800A: STA.w $012E

#_08800D: RTS

;===================================================================================================

Ancilla_SFX3_Near:
#_08800E: JSR Ancilla_SFX_Near
#_088011: STA.w $012F

#_088014: RTS

;===================================================================================================

Ancilla_SFX_Near:
#_088015: STA.w $0CF8

#_088018: JSL Link_CalculateSFXPan
#_08801C: ORA.w $0CF8

#_08801F: RTS

;===================================================================================================

Ancilla_SFX1_Pan:
#_088020: JSR Ancilla_SFX_SetPan
#_088023: STA.w $012D

#_088026: RTS

;===================================================================================================

Ancilla_SFX2_Pan:
#_088027: JSR Ancilla_SFX_SetPan
#_08802A: STA.w $012E

#_08802D: RTS

;===================================================================================================

Ancilla_SFX3_Pan:
#_08802E: JSR Ancilla_SFX_SetPan
#_088031: STA.w $012F

#_088034: RTS

;===================================================================================================

Ancilla_SFX_SetPan:
#_088035: STA.w $0CF8

#_088038: JSL Ancilla_CalculateSFXPan
#_08803C: ORA.w $0CF8

#_08803F: RTS


;===================================================================================================

pool AncillaAdd_FireRodShot

.init_check_offset_x_low
#_088040: db   0,   0,  -8,  16

.init_check_offset_x_high
#_088044: db   0,   0,  -1,   0

.init_check_offset_y_low
#_088048: db  -8,  16,   3,   3

.init_check_offset_y_high
#_08804C: db  -1,   0,   0,   0

;---------------------------------------------------------------------------------------------------
; Why do these have to be here?
;---------------------------------------------------------------------------------------------------
#SomariaBulletSpeedX:
#_088050: db   0,   0, -40,  40
#_088054: db   0,   0, -48,  48
#_088058: db   0,   0, -64,  64

#SomariaBulletSpeedY:
#_08805C: db -40,  40,   0,   0
#_088060: db -48,  48,   0,   0
#_088064: db -64,  64,   0,   0

;---------------------------------------------------------------------------------------------------

.flame_speed_x
#_088068: db   0,   0, -64,  64

.flame_speed_y
#_08806C: db -64,  64,   0

pool off

;===================================================================================================

AncillaObjectAllocation:
#_08806F: db $00 ; 0x00 - NOTHING
#_088070: db $08 ; 0x01 - SOMARIA BULLET
#_088071: db $0C ; 0x02 - FIRE ROD SHOT
#_088072: db $10 ; 0x03 - UNUSED
#_088073: db $10 ; 0x04 - BEAM HIT
#_088074: db $04 ; 0x05 - BOOMERANG
#_088075: db $10 ; 0x06 - WALL HIT
#_088076: db $18 ; 0x07 - BOMB
#_088077: db $08 ; 0x08 - DOOR DEBRIS
#_088078: db $08 ; 0x09 - ARROW
#_088079: db $08 ; 0x0A - ARROW IN THE WALL
#_08807A: db $00 ; 0x0B - ICE ROD SHOT
#_08807B: db $14 ; 0x0C - SWORD BEAM_BOUNCE
#_08807C: db $00 ; 0x0D - SPIN ATTACK FULL CHARGE SPARK
#_08807D: db $10 ; 0x0E - BLAST WALL EXPLOSION
#_08807E: db $28 ; 0x0F - BLAST WALL EXPLOSION
#_08807F: db $18 ; 0x10 - BLAST WALL EXPLOSION
#_088080: db $10 ; 0x11 - ICE ROD WALL HIT
#_088081: db $10 ; 0x12 - BLAST WALL EXPLOSION
#_088082: db $10 ; 0x13 - ICE ROD SPARKLE
#_088083: db $10 ; 0x14 - BAD POINTER
#_088084: db $0C ; 0x15 - SPLASH
#_088085: db $08 ; 0x16 - HIT STARS
#_088086: db $08 ; 0x17 - SHOVEL DIRT
#_088087: db $50 ; 0x18 - ETHER SPELL
#_088088: db $00 ; 0x19 - BOMBOS SPELL
#_088089: db $10 ; 0x1A - POWDER DUST
#_08808A: db $08 ; 0x1B - SWORD WALL HIT
#_08808B: db $40 ; 0x1C - QUAKE SPELL
#_08808C: db $00 ; 0x1D - SCREEN SHAKE
#_08808D: db $0C ; 0x1E - DASH DUST
#_08808E: db $24 ; 0x1F - HOOKSHOT
#_08808F: db $10 ; 0x20 - BLANKET
#_088090: db $0C ; 0x21 - SNORE
#_088091: db $08 ; 0x22 - ITEM GET
#_088092: db $10 ; 0x23 - LINK POOF
#_088093: db $10 ; 0x24 - GRAVESTONE
#_088094: db $04 ; 0x25 - BAD POINTER
#_088095: db $0C ; 0x26 - SWORD SWING SPARKLE
#_088096: db $1C ; 0x27 - DUCK
#_088097: db $00 ; 0x28 - WISH POND ITEM
#_088098: db $10 ; 0x29 - MILESTONE ITEM GET
#_088099: db $14 ; 0x2A - SPIN ATTACK SPARKLE A
#_08809A: db $14 ; 0x2B - SPIN ATTACK SPARKLE B
#_08809B: db $10 ; 0x2C - SOMARIA BLOCK
#_08809C: db $08 ; 0x2D - SOMARIA BLOCK FIZZ
#_08809D: db $20 ; 0x2E - SOMARIA BLOCK FISSION
#_08809E: db $10 ; 0x2F - LAMP FLAME
#_08809F: db $10 ; 0x30 - BYRNA WINDUP SPARK
#_0880A0: db $10 ; 0x31 - BYRNA SPARK
#_0880A1: db $04 ; 0x32 - BLAST WALL FIREBALL
#_0880A2: db $00 ; 0x33 - BLAST WALL EXPLOSION
#_0880A3: db $80 ; 0x34 - SKULL WOODS FIRE
#_0880A4: db $10 ; 0x35 - MASTER SWORD GET
#_0880A5: db $04 ; 0x36 - FLUTE
#_0880A6: db $30 ; 0x37 - WEATHERVANE EXPLOSION
#_0880A7: db $14 ; 0x38 - CUTSCENE DUCK
#_0880A8: db $10 ; 0x39 - SOMARIA PLATFORM POOF
#_0880A9: db $00 ; 0x3A - BIG BOMB EXPLOSION
#_0880AA: db $10 ; 0x3B - SWORD UP SPARKLE
#_0880AB: db $00 ; 0x3C - SPIN ATTACK CHARGE SPARKLE
#_0880AC: db $00 ; 0x3D - ITEM SPLASH
#_0880AD: db $08 ; 0x3E - RISING CRYSTAL
#_0880AE: db $00 ; 0x3F - BUSH POOF
#_0880AF: db $10 ; 0x40 - DWARF POOF
#_0880B0: db $08 ; 0x41 - WATERFALL SPLASH
#_0880B1: db $78 ; 0x42 - HAPPINESS POND RUPEES
#_0880B2: db $80 ; 0x43 - GANONS TOWER CUTSCENE

;===================================================================================================

AncillaAdd_FireRodShot:
#_0880B3: LDY.b #$01

#_0880B5: STA.b $00

#_0880B7: JSL Ancilla_CheckForAvailableSlot
#_0880BB: BPL .free_slot

#_0880BD: LDA.b $00
#_0880BF: CMP.b #$01
#_0880C1: BEQ .no_refund_magic

#_0880C3: LDX.b #$00
#_0880C5: JSL Refund_Magic

.no_refund_magic
#_0880C9: BRL .exit_a

;---------------------------------------------------------------------------------------------------

.free_slot
#_0880CC: PHB
#_0880CD: PHK
#_0880CE: PLB

#_0880CF: PHX

#_0880D0: LDA.b $00
#_0880D2: CMP.b #$01
#_0880D4: BEQ .no_sfx

#_0880D6: PHY

#_0880D7: LDA.b #!SFX2_0E
#_0880D9: JSR Ancilla_SFX2_Near

#_0880DC: PLY

;---------------------------------------------------------------------------------------------------

.no_sfx
#_0880DD: LDA.b $00
#_0880DF: STA.w $0C4A,Y

#_0880E2: TAX

#_0880E3: LDA.w AncillaObjectAllocation,X
#_0880E6: STA.w $0C90,Y

#_0880E9: LDA.b #$03
#_0880EB: STA.w $0C68,Y

#_0880EE: LDA.b #$00
#_0880F0: STA.w $0C54,Y
#_0880F3: STA.w $0C5E,Y

#_0880F6: STA.w $0280,Y
#_0880F9: STA.w $028A,Y

#_0880FC: LDA.b $2F
#_0880FE: LSR A
#_0880FF: STA.w $0C72,Y

;---------------------------------------------------------------------------------------------------

#_088102: TAX

#_088103: PHY
#_088104: PHX

#_088105: TYX
#_088106: JSL Ancilla_CheckInitialTile_A

#_08810A: PLX
#_08810B: PLY

#_08810C: BCS .disperse_on_spawn

;---------------------------------------------------------------------------------------------------

#_08810E: LDA.w $0022
#_088111: CLC
#_088112: ADC.w .init_check_offset_x_low,X
#_088115: STA.w $0C04,Y

#_088118: LDA.w $0023
#_08811B: ADC.w .init_check_offset_x_high,X
#_08811E: STA.w $0C18,Y

#_088121: LDA.w $0020
#_088124: CLC
#_088125: ADC.w .init_check_offset_y_low,X
#_088128: STA.w $0BFA,Y

#_08812B: LDA.w $0021
#_08812E: ADC.w .init_check_offset_y_high,X
#_088131: STA.w $0C0E,Y

;---------------------------------------------------------------------------------------------------
; !WTF
#_088134: LDA.w $0C4A,Y
#_088137: CMP.b #!ANCILLA_01
#_088139: BEQ .is_somaria_bullet

#_08813B: LDA.w .flame_speed_x,X
#_08813E: STA.w $0C2C,Y

#_088141: LDA.w .flame_speed_y,X

#_088144: BRA .speed_set

;---------------------------------------------------------------------------------------------------

.is_somaria_bullet
#_088146: LDA.l $7EF359
#_08814A: DEC A
#_08814B: DEC A

#_08814C: ASL A
#_08814D: ASL A

#_08814E: STA.b $0F

#_088150: TXA
#_088151: CLC
#_088152: ADC.b $0F
#_088154: TAX

#_088155: LDA.w SomariaBulletSpeedX,X
#_088158: STA.w $0C2C,Y

#_08815B: LDA.w SomariaBulletSpeedY,X

;---------------------------------------------------------------------------------------------------

.speed_set
#_08815E: STA.w $0C22,Y

#_088161: LDA.w $00EE
#_088164: STA.w $0C7C,Y

#_088167: LDA.w $0476
#_08816A: STA.w $03CA,Y

#_08816D: PLX
#_08816E: PLB

.exit_a
#_08816F: RTL

;---------------------------------------------------------------------------------------------------

.disperse_on_spawn
#_088170: LDA.w $0C4A,Y
#_088173: CMP.b #!ANCILLA_01
#_088175: BNE .not_bullet

#_088177: LDA.b #!ANCILLA_04
#_088179: STA.w $0C4A,Y

#_08817C: LDA.b #$07
#_08817E: STA.w $0C68,Y

#_088181: LDA.b #$10
#_088183: STA.w $0C90,Y

#_088186: BRA .exit_b

;---------------------------------------------------------------------------------------------------

.not_bullet
#_088188: LDA.b #$01
#_08818A: STA.w $0C54,Y

#_08818D: LDA.b #$1F
#_08818F: STA.w $0C68,Y

#_088192: LDA.b #$08
#_088194: STA.w $0C90,Y

#_088197: LDA.b #!SFX2_2A
#_088199: JSR Ancilla_SFX2_Pan

.exit_b
#_08819C: PLX
#_08819D: PLB

#_08819E: RTL

;===================================================================================================

pool SomariaBlock_SpawnBullets

.offset_x
#_08819F: db  -8,  -8,  -9,  -4

.offset_y
#_0881A3: db -15,  -4,  -8,  -8

pool off

;---------------------------------------------------------------------------------------------------

SomariaBlock_SpawnBullets:
#_0881A7: LDA.b #$03
#_0881A9: STA.w $0FB5

#_0881AC: LDA.w $029E,X
#_0881AF: CMP.b #$FF
#_0881B1: BNE .altitiude_fine

#_0881B3: LDA.b #$00

.altitiude_fine
#_0881B5: STA.b $05

#_0881B7: LDA.w $0C04,X
#_0881BA: STA.b $00

#_0881BC: LDA.w $0C18,X
#_0881BF: STA.b $01

#_0881C1: LDA.w $0BFA,X
#_0881C4: SEC
#_0881C5: SBC.b $05
#_0881C7: STA.b $02

#_0881C9: LDA.w $0C0E,X
#_0881CC: SBC.b #$00
#_0881CE: STA.b $03

#_0881D0: LDA.w $0C7C,X
#_0881D3: STA.b $04

;---------------------------------------------------------------------------------------------------

.next_spawn
#_0881D5: LDY.b #$04
#_0881D7: LDA.b #!ANCILLA_01
#_0881D9: JSL Ancilla_CheckForAvailableSlot
#_0881DD: BMI .spawn_failed

#_0881DF: PHX

#_0881E0: LDA.b #!ANCILLA_01
#_0881E2: STA.w $0C4A,Y

#_0881E5: TAX

#_0881E6: LDA.w AncillaObjectAllocation,X
#_0881E9: STA.w $0C90,Y

#_0881EC: LDA.b #$04
#_0881EE: STA.w $0C54,Y

#_0881F1: LDA.b #$00
#_0881F3: STA.w $0C5E,Y
#_0881F6: STA.w $0280,Y

#_0881F9: LDX.w $0FB5
#_0881FC: TXA
#_0881FD: STA.w $0C72,Y

#_088200: LDA.b $00
#_088202: CLC
#_088203: ADC.w .offset_x,X
#_088206: STA.w $0C04,Y

#_088209: LDA.b $01
#_08820B: ADC.b #$FF
#_08820D: STA.w $0C18,Y

#_088210: LDA.b $02
#_088212: CLC
#_088213: ADC.w .offset_y,X
#_088216: STA.w $0BFA,Y

#_088219: LDA.b $03
#_08821B: ADC.b #$FF
#_08821D: STA.w $0C0E,Y

#_088220: JSL Ancilla_TerminateOffScreen

#_088224: LDA.w SomariaBulletSpeedX,X
#_088227: STA.w $0C2C,Y

#_08822A: LDA.w SomariaBulletSpeedY,X
#_08822D: STA.w $0C22,Y

#_088230: LDA.b $04
#_088232: STA.w $0C7C,Y

#_088235: LDA.w $0476
#_088238: STA.w $03CA,Y

#_08823B: PLX

.spawn_failed
#_08823C: DEC.w $0FB5
#_08823F: BPL .next_spawn

#_088241: RTS

;===================================================================================================

Ancilla_Main:
#_088242: PHB
#_088243: PHK
#_088244: PLB

#_088245: JSR Ancilla_RepulseSpark
#_088248: JSR Ancilla_ExecuteAll

#_08824B: PLB

#_08824C: RTL

;===================================================================================================

Ancilla_ProjectReflexiveSpeedOntoSprite:
#_08824D: LDA.w $0022 ; cache Link's coordinates
#_088250: PHA

#_088251: LDA.w $0023
#_088254: PHA

#_088255: LDA.w $0020
#_088258: PHA

#_088259: LDA.w $0021
#_08825C: PHA

#_08825D: LDA.b $04
#_08825F: STA.w $0022

#_088262: LDA.b $05
#_088264: STA.w $0023

#_088267: LDA.b $06
#_088269: STA.w $0020

#_08826C: LDA.b $07
#_08826E: STA.w $0021

#_088271: TYA
#_088272: JSL ProjectReflexiveSpeedOntoSprite_UsingLinkCoordinates

#_088276: PLA ; recover Link's coordinates
#_088277: STA.w $0021

#_08827A: PLA
#_08827B: STA.w $0020

#_08827E: PLA
#_08827F: STA.w $0023

#_088282: PLA
#_088283: STA.w $0022

#_088286: RTS

;===================================================================================================

Bomb_CheckSpriteDamage:
#_088287: LDY.b #$0F

.next_sprite
#_088289: TYA
#_08828A: EOR.b $1A
#_08828C: AND.b #$03
#_08828E: ORA.w $0EF0,Y
#_088291: ORA.w $0BA0,Y
#_088294: BEQ .continue

.different_layer
#_088296: JMP.w .skip

.continue
#_088299: LDA.w $0F20,Y
#_08829C: CMP.w $0C7C,X
#_08829F: BNE .different_layer

#_0882A1: LDA.w $0DD0,Y
#_0882A4: CMP.b #$09
#_0882A6: BCC .skip

#_0882A8: LDA.w $0C04,X
#_0882AB: SEC
#_0882AC: SBC.b #$18
#_0882AE: STA.b $00

#_0882B0: LDA.w $0C18,X
#_0882B3: SBC.b #$00
#_0882B5: STA.b $08

#_0882B7: LDA.w $0BFA,X
#_0882BA: SEC
#_0882BB: SBC.b #$18
#_0882BD: PHP

#_0882BE: SEC
#_0882BF: SBC.w $029E,X
#_0882C2: STA.b $01

#_0882C4: LDA.w $0C0E,X
#_0882C7: SBC.b #$00

#_0882C9: PLP
#_0882CA: SBC.b #$00
#_0882CC: STA.b $09

#_0882CE: LDA.b #$30
#_0882D0: STA.b $02
#_0882D2: STA.b $03

#_0882D4: PHX

#_0882D5: TYX
#_0882D6: JSL Sprite_SetupHitbox_long

#_0882DA: PLX

#_0882DB: JSL CheckIfHitBoxesOverlap_long
#_0882DF: BCC .skip

;---------------------------------------------------------------------------------------------------

#_0882E1: LDA.w $0E20,Y
#_0882E4: CMP.b #!SPRITE_92
#_0882E6: BNE .not_king_helma

#_0882E8: LDA.w $0DB0,Y
#_0882EB: CMP.b #$03
#_0882ED: BCS .skip

.not_king_helma
#_0882EF: LDA.w $0C04,X
#_0882F2: STA.b $04

#_0882F4: LDA.w $0C18,X
#_0882F7: STA.b $05

#_0882F9: LDA.w $0BFA,X
#_0882FC: STA.b $06

#_0882FE: LDA.w $0C0E,X
#_088301: STA.b $07

#_088303: PHX
#_088304: PHY

#_088305: LDA.w $0C4A,X
#_088308: TYX

#_088309: JSL Ancilla_CheckDamageToSprite

#_08830D: LDY.b #$40
#_08830F: JSR Ancilla_ProjectReflexiveSpeedOntoSprite

#_088312: PLY
#_088313: PLX

#_088314: LDA.b $00
#_088316: EOR.b #$FF
#_088318: INC A
#_088319: STA.w $0F30,Y

#_08831C: LDA.b $01
#_08831E: EOR.b #$FF
#_088320: INC A
#_088321: STA.w $0F40,Y

.skip
#_088324: DEY
#_088325: BMI .done

#_088327: JMP.w .next_sprite

;---------------------------------------------------------------------------------------------------

.done
#_08832A: RTS

;===================================================================================================

Ancilla_ExecuteAll:
#_08832B: LDX.b #$09

.next
#_08832D: STX.w $0FA0

#_088330: LDA.w $0C4A,X
#_088333: BEQ .skip

#_088335: JSR Ancilla_ExecuteOne

.skip
#_088338: DEX
#_088339: BPL .next

#_08833B: RTS

;===================================================================================================

Ancilla_ExecuteOne:
#_08833C: PHA

#_08833D: CPX.b #$06
#_08833F: BCS .skip_oam

#_088341: LDA.w $0C90,X
#_088344: LDY.w $0FB3
#_088347: BEQ .sorted

#_088349: LDY.w $0C7C,X
#_08834C: BNE .bg1

#_08834E: JSL OAM_AllocateFromRegionD
#_088352: BRA .save_oam

.bg1
#_088354: JSL OAM_AllocateFromRegionF
#_088358: BRA .save_oam

.sorted
#_08835A: JSL OAM_AllocateFromRegionA

.save_oam
#_08835E: TYA
#_08835F: STA.w $0C86,X

;---------------------------------------------------------------------------------------------------

.skip_oam
#_088362: LDY.b $11
#_088364: BNE .skip_timer

#_088366: LDY.w $0C68,X
#_088369: BEQ .skip_timer

#_08836B: DEC.w $0C68,X

.skip_timer
#_08836E: PLA
#_08836F: DEC A
#_088370: ASL A
#_088371: TAY

#_088372: LDA.w .vectors+0,Y
#_088375: STA.b $00

#_088377: LDA.w .vectors+1,Y
#_08837A: STA.b $01

#_08837C: JMP.w ($0000)

;---------------------------------------------------------------------------------------------------

.vectors
#_08837F: dw Ancilla01_SomariaBullet
#_088381: dw Ancilla02_FireRodShot
#_088383: dw Ancilla03
#_088385: dw Ancilla04_BeamHit
#_088387: dw Ancilla05_Boomerang
#_088389: dw Ancilla06_WallHit
#_08838B: dw Ancilla07_Bomb
#_08838D: dw Ancilla08_DoorDebris
#_08838F: dw Ancilla09_Arrow
#_088391: dw Ancilla0A_ArrowInTheWall
#_088393: dw Ancilla0B_IceRodShot
#_088395: dw Ancilla0C_SwordBeam_bounce
#_088397: dw Ancilla0D_SpinAttackFullChargeSpark
#_088399: dw Ancilla33_BlastWallExplosion ; Unused
#_08839B: dw Ancilla33_BlastWallExplosion ; Unused
#_08839D: dw Ancilla33_BlastWallExplosion ; Unused
#_08839F: dw Ancilla11_IceRodWallHit
#_0883A1: dw Ancilla33_BlastWallExplosion ; Unused
#_0883A3: dw Ancilla13_IceRodSparkle
#_0883A5: dw JumpSplash_char ; bad pointer but correct
#_0883A7: dw Ancilla15_JumpSplash
#_0883A9: dw Ancilla16_HitStars
#_0883AB: dw Ancilla17_ShovelDirt
#_0883AD: dw Ancilla18_EtherSpell
#_0883AF: dw Ancilla19_BombosSpell
#_0883B1: dw Ancilla1A_PowderDust
#_0883B3: dw Ancilla1B_SwordWallHit
#_0883B5: dw Ancilla1C_QuakeSpell
#_0883B7: dw Ancilla1D_ScreenShake
#_0883B9: dw Ancilla1E_DashDust
#_0883BB: dw Ancilla1F_Hookshot
#_0883BD: dw Ancilla20_Blanket
#_0883BF: dw Ancilla21_Snore
#_0883C1: dw Ancilla22_ItemGet
#_0883C3: dw Ancilla23_LinkPoof
#_0883C5: dw Ancilla24_Gravestone
#_0883C7: dw HitStar_char ; bad pointer but correct
#_0883C9: dw Ancilla26_SwordSwingSparkle
#_0883CB: dw Ancilla27_Duck
#_0883CD: dw Ancilla28_WishPondItem
#_0883CF: dw Ancilla29_MilestoneItemGet
#_0883D1: dw Ancilla2A_SpinAttackSparkleA
#_0883D3: dw Ancilla2B_SpinAttackSparkleB
#_0883D5: dw Ancilla2C_SomariaBlock
#_0883D7: dw Ancilla2D_SomariaBlockFizz
#_0883D9: dw Ancilla2E_SomariaBlockFission
#_0883DB: dw Ancilla2F_LampFlame
#_0883DD: dw Ancilla30_ByrnaWindupSpark
#_0883DF: dw Ancilla31_ByrnaSpark
#_0883E1: dw Ancilla32_BlastWallFireball
#_0883E3: dw Ancilla33_BlastWallExplosion
#_0883E5: dw Ancilla34_SkullWoodsFire
#_0883E7: dw Ancilla35_MasterSwordGet
#_0883E9: dw Ancilla36_Flute
#_0883EB: dw Ancilla37_WeathervaneExplosion
#_0883ED: dw Ancilla38_CutsceneDuck
#_0883EF: dw Ancilla39_SomariaPlatformPoof
#_0883F1: dw Ancilla3A_BigBombExplosion
#_0883F3: dw Ancilla3B_SwordUpSparkle
#_0883F5: dw Ancilla3C_SpinAttackChargeSparkle
#_0883F7: dw Ancilla3D_ItemSplash
#_0883F9: dw Ancilla3E_RisingCrystal
#_0883FB: dw Ancilla3F_BushPoof
#_0883FD: dw Ancilla40_DwarfPoof
#_0883FF: dw Ancilla41_WaterfallSplash
#_088401: dw Ancilla42_HappinessPondRupees
#_088403: dw Ancilla43_GanonsTowerCutscene
;===================================================================================================
; The little sparkle thingies that come off the ice rod shot
;===================================================================================================
pool Ancilla13_IceRodSparkle

.offset_x
#_088405: db  2,  7,  6,  1
#_088409: db  1,  7,  7,  1
#_08840D: db  0,  7,  8,  1
#_088411: db  4,  9,  4, -1

.offset_y
#_088415: db  2,  3,  8,  7
#_088419: db  1,  1,  7,  7
#_08841D: db  1,  0,  7,  8
#_088421: db -1,  4,  9,  4

.char
#_088425: db $83, $83, $83, $83
#_088429: db $B6, $80, $B6, $80
#_08842D: db $B7, $B6, $B7, $B6
#_088431: db $B7, $B6, $B7, $B6

pool off

;---------------------------------------------------------------------------------------------------

Ancilla13_IceRodSparkle:
#_088435: LDA.w $0C68,X ; timer for being alive
#_088438: BNE .active

#_08843A: STZ.w $0C4A,X ; destroy self

.active
#_08843D: LDA.b $11
#_08843F: BNE .no_move

#_088441: JSR Ancilla_Move_X
#_088444: JSR Ancilla_Move_Y

.no_move
#_088447: JSR Ancilla_BoundsCheck

; We're looking for an ice rod shot to steal OAM properties from
#_08844A: LDY.b #$04
#_08844C: LDA.b #!ANCILLA_0B

.next_slot
#_08844E: CMP.w $0C4A,Y ; look for the main shot
#_088451: BEQ .found_him

#_088453: DEY
#_088454: BPL .next_slot

; use slot 255 if nothing is found, but that doesn't matter much
.found_him
#_088456: LDA.w $0280,Y
#_088459: BEQ .normal_priority

#_08845B: LDA.b #$30
#_08845D: STA.b $04

.normal_priority
#_08845F: LDA.b #$10

#_088461: LDY.w $0FB3
#_088464: BEQ .sorted

#_088466: LDY.w $0C7C,X ; check layer for OAM region
#_088469: BNE .lower_layer

#_08846B: JSL OAM_AllocateFromRegionD
#_08846F: BRA .draw

.lower_layer
#_088471: JSL OAM_AllocateFromRegionE
#_088475: BRA .draw

.sorted
#_088477: JSL OAM_AllocateFromRegionA

;---------------------------------------------------------------------------------------------------

.draw
#_08847B: LDY.b #$00

#_08847D: LDA.b #$03
#_08847F: STA.b $05

#_088481: LDA.w $0C68,X
#_088484: AND.b #$1C
#_088486: STA.b $06

#_088488: PHX

;---------------------------------------------------------------------------------------------------

.next_object
#_088489: LDA.b $05
#_08848B: ORA.b $06

#_08848D: TAX

#_08848E: LDA.b $00
#_088490: CLC
#_088491: ADC.w .offset_x,X
#_088494: STA.b ($90),Y

#_088496: INY
#_088497: LDA.b $01
#_088499: CLC
#_08849A: ADC.w .offset_y,X
#_08849D: STA.b ($90),Y

#_08849F: INY
#_0884A0: LDA.w .char,X
#_0884A3: STA.b ($90),Y

#_0884A5: INY
#_0884A6: LDA.b $04
#_0884A8: ORA.b #$04
#_0884AA: STA.b ($90),Y

#_0884AC: INY
#_0884AD: PHY

#_0884AE: TYA
#_0884AF: SEC
#_0884B0: SBC.b #$04
#_0884B2: LSR A
#_0884B3: LSR A
#_0884B4: TAY

#_0884B5: LDA.b #$00
#_0884B7: STA.b ($92),Y

#_0884B9: PLY

#_0884BA: DEC.b $05
#_0884BC: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_0884BE: PLX

#_0884BF: RTS

;===================================================================================================

pool AncillaAdd_IceRodSparkle

.speed_y
#_0884C0: db -4,  4,  0,  0

.speed_x
#_0884C4: db  0,  0, -4,  4

pool off

;---------------------------------------------------------------------------------------------------

AncillaAdd_IceRodSparkle:
#_0884C8: LDA.b $11
#_0884CA: BNE .return

#_0884CC: DEC.w $0BF0,X
#_0884CF: BPL .return

#_0884D1: LDA.b #$05 ; timer for spawning
#_0884D3: STA.w $0BF0,X

;---------------------------------------------------------------------------------------------------

#_0884D6: LDY.b #$09 ; look for a free slot anywhere

.next_slot
#_0884D8: LDA.w $0C4A,Y
#_0884DB: BEQ .free_slot

#_0884DD: DEY
#_0884DE: BPL .next_slot

.return ; don't exist
#_0884E0: RTS

;---------------------------------------------------------------------------------------------------

.free_slot
#_0884E1: LDA.b #!ANCILLA_13
#_0884E3: STA.w $0C4A,Y

#_0884E6: LDA.b #$0F
#_0884E8: STA.w $0C68,Y

#_0884EB: LDA.w $0C72,X

#_0884EE: PHX
#_0884EF: TAX

#_0884F0: LDA.w .speed_x,X
#_0884F3: STA.w $0C2C,Y

#_0884F6: LDA.w .speed_y,X
#_0884F9: STA.w $0C22,Y

#_0884FC: PLX

;---------------------------------------------------------------------------------------------------

; copy some properties from parent
#_0884FD: LDA.w $0C04,X
#_088500: STA.w $0C04,Y

#_088503: LDA.w $0BFA,X
#_088506: STA.w $0BFA,Y

#_088509: LDA.w $0C7C,X
#_08850C: STA.w $0C7C,Y

#_08850F: LDA.b #$00
#_088511: STA.w $0C90,Y

#_088514: RTS

;===================================================================================================

pool Ancilla01_SomariaBullet

.frame_masks
#_088515: db $07, $03, $01, $00, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

Ancilla01_SomariaBullet:
#_08851B: LDA.b $11
#_08851D: BNE .draw

#_08851F: LDY.w $0C54,X

#_088522: LDA.b $1A
#_088524: AND.w .frame_masks,Y
#_088527: BNE .delay_movement

#_088529: JSR Ancilla_Move_X
#_08852C: JSR Ancilla_Move_Y

.delay_movement
#_08852F: LDA.w $0C68,X
#_088532: BNE .timer_delay

#_088534: LDA.b #$03
#_088536: STA.w $0C68,X

#_088539: LDA.w $0C54,X
#_08853C: INC A
#_08853D: CMP.b #$06
#_08853F: BCC .dont_reset_state

#_088541: LDA.b #$04

.dont_reset_state
#_088543: STA.w $0C54,X

.timer_delay
#_088546: JSR Ancilla_CheckSpriteCollision
#_088549: BCS .collision

#_08854B: JSR Ancilla_CheckTileCollision_staggered
#_08854E: BCC .draw

.collision
#_088550: LDA.b #!ANCILLA_04
#_088552: STA.w $0C4A,X

#_088555: LDA.b #$07
#_088557: STA.w $0C68,X

#_08855A: LDA.b #$10
#_08855C: STA.w $0C90,X

.draw
#_08855F: BRL SomariaBlast_Draw

;===================================================================================================

pool SomariaBlast_Draw

.char_a
#_088562: db  $50,  $50
#_088564: db  $44,  $44
#_088566: db  $52,  $52
#_088568: db  $50,  $50
#_08856A: db  $44,  $44
#_08856C: db  $51,  $51
#_08856E: db  $43,  $43
#_088570: db  $42,  $42
#_088572: db  $41,  $41
#_088574: db  $43,  $43
#_088576: db  $42,  $42
#_088578: db  $40,  $40

.char_b
#_08857A: db  $50,  $50
#_08857C: db  $44,  $44
#_08857E: db  $51,  $51
#_088580: db  $50,  $50
#_088582: db  $44,  $44
#_088584: db  $52,  $52
#_088586: db  $43,  $43
#_088588: db  $42,  $42
#_08858A: db  $40,  $40
#_08858C: db  $43,  $43
#_08858E: db  $42,  $42
#_088590: db  $41,  $41

;---------------------------------------------------------------------------------------------------

.prop_a
#_088592: db  $C0,  $C0
#_088594: db  $C0,  $C0
#_088596: db  $80,  $C0
#_088598: db  $40,  $40
#_08859A: db  $40,  $40
#_08859C: db  $00,  $40
#_08859E: db  $40,  $40
#_0885A0: db  $40,  $40
#_0885A2: db  $40,  $C0
#_0885A4: db  $00,  $00
#_0885A6: db  $00,  $00
#_0885A8: db  $00,  $80

.prop_b
#_0885AA: db  $80,  $80
#_0885AC: db  $80,  $80
#_0885AE: db  $80,  $C0
#_0885B0: db  $00,  $00
#_0885B2: db  $00,  $00
#_0885B4: db  $00,  $40
#_0885B6: db  $C0,  $C0
#_0885B8: db  $C0,  $C0
#_0885BA: db  $40,  $C0
#_0885BC: db  $80,  $80
#_0885BE: db  $80,  $80
#_0885C0: db  $00,  $80

;---------------------------------------------------------------------------------------------------

.offset_x_a
#_0885C2: db    0,    0
#_0885C4: db    0,    0
#_0885C6: db    4,    4
#_0885C8: db    0,    0
#_0885CA: db    0,    0
#_0885CC: db    4,    4
#_0885CE: db    0,    0
#_0885D0: db    0,    0
#_0885D2: db    0,    0
#_0885D4: db    0,    0
#_0885D6: db    0,    0
#_0885D8: db    0,    0

.offset_x_b
#_0885DA: db    8,    8
#_0885DC: db    8,    8
#_0885DE: db    4,    4
#_0885E0: db    8,    8
#_0885E2: db    8,    8
#_0885E4: db    4,    4
#_0885E6: db    0,    0
#_0885E8: db    0,    0
#_0885EA: db    8,    8
#_0885EC: db    0,    0
#_0885EE: db    0,    0
#_0885F0: db    8,    8

;---------------------------------------------------------------------------------------------------

.offset_y_a
#_0885F2: db -128,    0
#_0885F4: db    0,    0
#_0885F6: db    0,    0
#_0885F8: db    0,    0
#_0885FA: db    0,    0
#_0885FC: db    0,    0
#_0885FE: db    0,    0
#_088600: db    0,    0
#_088602: db    4,    4
#_088604: db    0,    0
#_088606: db    0,    0
#_088608: db    4,    4

.offset_y_b
#_08860A: db    0,    0
#_08860C: db    0,    0
#_08860E: db    8,    8
#_088610: db -128,    0
#_088612: db    0,    0
#_088614: db    8,    8
#_088616: db -128,    8
#_088618: db    8,    8
#_08861A: db    4,    4
#_08861C: db -128,    8
#_08861E: db    8,    8
#_088620: db    4,    4

pool off

;===================================================================================================

Ancilla_Killa:
#_088622: PLA
#_088623: PLA

#_088624: STZ.w $0C4A,X

#_088627: RTS

;===================================================================================================

pool Ancilla_BoundsCheck ; TODO wtf is this and why is it different in US? and better name

.data
#_088628: db $20, $10

pool off

;---------------------------------------------------------------------------------------------------

Ancilla_BoundsCheck:
#_08862A: LDY.w $0C7C,X

#_08862D: LDA.w .data,Y
#_088630: STA.b $04

#_088632: LDY.w $0C86,X

#_088635: LDA.w $0C04,X
#_088638: SEC
#_088639: SBC.b $E2
#_08863B: CMP.b #$F4
#_08863D: BCS Ancilla_Killa

#_08863F: STA.b $00

#_088641: LDA.w $0BFA,X
#_088644: SEC
#_088645: SBC.b $E8
#_088647: CMP.b #$F0
#_088649: BCS Ancilla_Killa

#_08864B: STA.b $01

#_08864D: RTS

;===================================================================================================

pool SomariaBlast_Draw

.palette
#_08864E: db $02, $06

pool off

;---------------------------------------------------------------------------------------------------

SomariaBlast_Draw:
#_088650: JSR Ancilla_BoundsCheck

#_088653: LDY.w $0C5E,X

#_088656: LDA.b $04
#_088658: ORA.w .palette,Y
#_08865B: STA.b $04

#_08865D: LDA.w $0280,X
#_088660: BEQ .normal_priority

#_088662: LDA.b #$30
#_088664: TSB.b $04

.normal_priority
#_088666: LDY.b #$00

#_088668: LDA.w $0C72,X
#_08866B: ASL A
#_08866C: ASL A

#_08866D: ADC.w $0C72,X
#_088670: ADC.w $0C72,X
#_088673: ADC.w $0C54,X

#_088676: TAX

#_088677: LDA.w .offset_x_a,X
#_08867A: CLC
#_08867B: ADC.b $00
#_08867D: STA.b ($90),Y

#_08867F: LDA.w .offset_x_b,X
#_088682: CLC
#_088683: ADC.b $00
#_088685: LDY.b #$04
#_088687: STA.b ($90),Y

#_088689: LDA.w .offset_y_a,X
#_08868C: BMI .hide_a

;---------------------------------------------------------------------------------------------------

#_08868E: CLC
#_08868F: ADC.b $01
#_088691: LDY.b #$01
#_088693: STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

.hide_a
#_088695: LDA.w .offset_y_b,X
#_088698: BMI .hide_b

#_08869A: CLC
#_08869B: ADC.b $01
#_08869D: LDY.b #$05
#_08869F: STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

.hide_b
#_0886A1: LDA.w .char_a,X
#_0886A4: CLC
#_0886A5: ADC.b #$82
#_0886A7: LDY.b #$02

#_0886A9: STA.b ($90),Y

#_0886AB: LDA.w .char_b,X
#_0886AE: CLC
#_0886AF: ADC.b #$82
#_0886B1: LDY.b #$06

#_0886B3: STA.b ($90),Y

#_0886B5: LDA.w .prop_a,X
#_0886B8: ORA.b $04

#_0886BA: LDY.b #$03
#_0886BC: STA.b ($90),Y

#_0886BE: LDA.w .prop_b,X
#_0886C1: ORA.b $04

#_0886C3: LDY.b #$07
#_0886C5: STA.b ($90),Y

#_0886C7: LDY.b #$00
#_0886C9: TYA
#_0886CA: STA.b ($92),Y

#_0886CC: INY
#_0886CD: STA.b ($92),Y

#_0886CF: BRL Ancilla_RestoreIndex

;===================================================================================================

Ancilla02_FireRodShot:
#_0886D2: LDA.w $0C54,X
#_0886D5: BEQ FireRodShot_Moving

#_0886D7: JMP.w FireRodShot_Halted

;===================================================================================================

FireRodShot_Moving:
#_0886DA: LDA.b $11
#_0886DC: BNE .draw

#_0886DE: STZ.w $0385,X

#_0886E1: JSR Ancilla_Move_X
#_0886E4: JSR Ancilla_Move_Y

#_0886E7: JSR Ancilla_CheckSpriteCollision
#_0886EA: BCS .collision

;---------------------------------------------------------------------------------------------------

#_0886EC: LDA.w $0C72,X
#_0886EF: ORA.b #$08
#_0886F1: STA.w $0C72,X

#_0886F4: JSR Ancilla_CheckTileCollision
#_0886F7: PHP

#_0886F8: LDA.w $03E4,X
#_0886FB: STA.w $0385,X

#_0886FE: PLP
#_0886FF: BCS .collision

#_088701: LDA.w $0C72,X
#_088704: ORA.b #$0C
#_088706: STA.w $0C72,X

#_088709: LDA.w $028A,X
#_08870C: STA.b $74

#_08870E: JSR Ancilla_CheckTileCollision
#_088711: PHP

#_088712: LDA.b $74
#_088714: STA.w $028A,X

#_088717: PLP
#_088718: BCC .no_collision

.collision
#_08871A: INC.w $0C54,X

#_08871D: LDA.b #$1F
#_08871F: STA.w $0C68,X

#_088722: LDA.b #$08
#_088724: STA.w $0C90,X

#_088727: LDA.b #!SFX2_2A
#_088729: JSR Ancilla_SFX2_Pan

;---------------------------------------------------------------------------------------------------

.no_collision
#_08872C: INC.w $0C5E,X

#_08872F: LDA.w $0C72,X
#_088732: AND.b #$F3
#_088734: STA.w $0C72,X

#_088737: LDA.w $0385,X
#_08873A: STA.w $0333

#_08873D: AND.b #$F0
#_08873F: CMP.b #$C0
#_088741: BEQ .torch

#_088743: LDA.w $03E4,X
#_088746: STA.w $0333

#_088749: AND.b #$F0
#_08874B: CMP.b #$C0
#_08874D: BNE .draw

.torch
#_08874F: PHX
#_088750: JSL Underworld_LightTorch
#_088754: PLX

;---------------------------------------------------------------------------------------------------

.draw
#_088755: JSR AncillaDraw_FireRodShot

#_088758: RTS

;===================================================================================================

pool AncillaDraw_FireRodShot

.offset_x
#_088759: db   7,   0,   8,   0
#_08875D: db   8,   4,   0,   0
#_088761: db   2,   8,   0,   0
#_088765: db   1,   4,   9,   0

.offset_y
#_088769: db   1,   4,   9,   0
#_08876D: db   7,   0,   8,   0
#_088771: db   8,   4,   0,   0
#_088775: db   2,   8,   0,   0

.char
#_088779: db $8D, $9D, $9C

pool off

;---------------------------------------------------------------------------------------------------

AncillaDraw_FireRodShot:
#_08877C: JSR Ancilla_BoundsCheck

#_08877F: LDA.w $0280,X
#_088782: BEQ .default_priority

#_088784: LDA.b #$30
#_088786: TSB.b $04

.default_priority
#_088788: LDA.w $0C5E,X
#_08878B: AND.b #$0C
#_08878D: STA.b $02

#_08878F: PHX

;---------------------------------------------------------------------------------------------------

#_088790: LDX.b #$02
#_088792: LDY.b #$00

.next_object
#_088794: STX.b $03

#_088796: TXA
#_088797: ORA.b $02
#_088799: TAX

#_08879A: LDA.b $00
#_08879C: CLC
#_08879D: ADC.w .offset_x,X
#_0887A0: STA.b ($90),Y

#_0887A2: LDA.b $01
#_0887A4: CLC
#_0887A5: ADC.w .offset_y,X
#_0887A8: INY
#_0887A9: STA.b ($90),Y

#_0887AB: LDX.b $03

#_0887AD: LDA.w .char,X
#_0887B0: INY
#_0887B1: STA.b ($90),Y

#_0887B3: LDA.b $04
#_0887B5: ORA.b #$02
#_0887B7: INY
#_0887B8: STA.b ($90),Y

#_0887BA: PHY

#_0887BB: TYA
#_0887BC: LSR A
#_0887BD: LSR A
#_0887BE: TAY

#_0887BF: LDA.b #$00
#_0887C1: STA.b ($92),Y

#_0887C3: PLY
#_0887C4: INY

#_0887C5: DEX
#_0887C6: BPL .next_object

#_0887C8: PLX

#_0887C9: RTS

;===================================================================================================

UNREACHABLE_0887CA:
#_0887CA: RTS

;===================================================================================================

FireRodShot_Dissipate:
#_0887CB: LDA.w $0C4A,X

#_0887CE: STZ.w $0C4A,X

#_0887D1: CMP.b #!ANCILLA_2F
#_0887D3: BEQ .no_burn

#_0887D5: LDA.b $8A
#_0887D7: CMP.b #$40
#_0887D9: BNE .no_burn

#_0887DB: LDA.w $03E4,X
#_0887DE: CMP.b #!TILETYPE_43
#_0887E0: BNE .no_burn

#_0887E2: PHX
#_0887E3: JSL FireRodShot_BecomeSkullWoodsFire
#_0887E7: PLX

.no_burn
#_0887E8: RTS

;===================================================================================================

pool FireRodShot_Halted

.char
#_0887E9: db $A2, $A0, $8E

pool off

;---------------------------------------------------------------------------------------------------

FireRodShot_Halted:
#_0887EC: JSR Ancilla_CheckBasicSpriteCollision
#_0887EF: JSR Ancilla_BoundsCheck

#_0887F2: LDY.b #$00
#_0887F4: LDA.w $0C68,X
#_0887F7: BEQ FireRodShot_Dissipate

#_0887F9: LSR A
#_0887FA: LSR A
#_0887FB: LSR A
#_0887FC: BEQ .dying

#_0887FE: TAX

#_0887FF: LDA.b $00
#_088801: STA.b ($90),Y

#_088803: LDA.b $01
#_088805: INY
#_088806: STA.b ($90),Y

#_088808: LDA.w .char-1,X
#_08880B: INY
#_08880C: STA.b ($90),Y

#_08880E: LDA.b #$02
#_088810: ORA.b $04
#_088812: INY
#_088813: STA.b ($90),Y

#_088815: LDA.b #$02
#_088817: STA.b ($92)

#_088819: BRL Ancilla_RestoreIndex

;---------------------------------------------------------------------------------------------------

.dying
#_08881C: TYA
#_08881D: STA.b ($92),Y

#_08881F: INY
#_088820: STA.b ($92),Y

#_088822: DEY

#_088823: LDA.b $00
#_088825: STA.b ($90),Y

#_088827: CLC
#_088828: ADC.b #$08
#_08882A: LDY.b #$04
#_08882C: STA.b ($90),Y

#_08882E: LDA.b $01
#_088830: CLC
#_088831: ADC.b #$FD
#_088833: LDY.b #$01
#_088835: STA.b ($90),Y

#_088837: LDY.b #$05
#_088839: STA.b ($90),Y

#_08883B: LDA.b #$A4
#_08883D: LDY.b #$02
#_08883F: STA.b ($90),Y

#_088841: INC A
#_088842: LDY.b #$06
#_088844: STA.b ($90),Y

#_088846: LDA.b #$02
#_088848: ORA.b $04
#_08884A: LDY.b #$03
#_08884C: STA.b ($90),Y

#_08884E: LDY.b #$07
#_088850: STA.b ($90),Y

;===================================================================================================

Ancilla03:
#_088852: RTS

;===================================================================================================
; TODO
;===================================================================================================
Ancilla_TileCollisionBehaviorClass1:

.interaction
#_088853: db 0, 1, 0, 3, 0, 0, 0, 0
#_08885B: db 0, 0, 3, 0, 0, 0, 0, 0
#_088863: db 1, 1, 1, 1, 0, 0, 0, 0
#_08886B: db 2, 2, 2, 2, 0, 3, 3, 3
#_088873: db 0, 0, 0, 0, 0, 0, 1, 1
#_08887B: db 4, 4, 4, 4, 4, 4, 4, 4
#_088883: db 1, 1, 1, 1, 1, 1, 1, 1
#_08888B: db 0, 0, 0, 0, 0, 3, 3, 3
#_088893: db 0, 0, 0, 1, 0, 0, 0, 0
#_08889B: db 0, 0, 0, 0, 4, 4, 4, 4
#_0888A3: db 0, 0, 0, 0, 0, 0, 0, 0
#_0888AB: db 1, 1, 1, 1, 1, 1, 0, 0
#_0888B3: db 0, 0, 0, 1, 0, 0, 0, 0
#_0888BB: db 0, 0, 0, 0, 1, 1, 1, 1
#_0888C3: db 1, 1, 1, 1, 1, 1, 1, 1
#_0888CB: db 1, 1, 1, 1, 1, 1, 1, 1
#_0888D3: db 0, 0, 0, 0, 0, 0, 0, 0
#_0888DB: db 1, 1, 1, 1, 1, 1, 0, 1
#_0888E3: db 0, 0, 0, 0, 0, 0, 0, 0
#_0888EB: db 0, 0, 0, 0, 0, 0, 0, 0
#_0888F3: db 0, 0, 0, 0, 0, 0, 0, 0
#_0888FB: db 0, 0, 0, 0, 0, 0, 0, 0
#_088903: db 0, 0, 0, 0, 0, 0, 0, 0
#_08890B: db 0, 0, 0, 0, 0, 0, 0, 0
#_088913: db 1, 1, 1, 1, 1, 1, 1, 1
#_08891B: db 1, 1, 1, 1, 1, 1, 1, 1
#_088923: db 0, 0, 0, 0, 0, 0, 0, 0
#_08892B: db 0, 0, 0, 0, 0, 0, 0, 0
#_088933: db 0, 0, 0, 0, 0, 0, 0, 0
#_08893B: db 0, 0, 0, 0, 0, 0, 0, 0
#_088943: db 1, 1, 1, 1, 1, 1, 1, 1
#_08894B: db 1, 1, 1, 1, 1, 1, 1, 1

;---------------------------------------------------------------------------------------------------

.offset_y
#_088953: db   0,  16,   5,   5
#_088957: db   0,  16,   4,   4
#_08895B: db   4,  12,   5,   5
#_08895F: db   4,  12,  12,  12
#_088963: db   0,   0,   0,   0

.offset_x
#_088967: db   8,   8,   0,  16
#_08896B: db   4,   4,   0,  16
#_08896F: db   4,   4,   4,  12
#_088973: db  12,  12,   4,  12
#_088977: db   0,   0,   0,   0

;===================================================================================================

Ancilla_CheckTileCollision_staggered:
#_08897B: TXA
#_08897C: EOR.b $1A
#_08897E: LSR A
#_08897F: BCC .skip_frame

;---------------------------------------------------------------------------------------------------

#Ancilla_CheckTileCollision:
#_088981: LDA.b $1B
#_088983: BNE .indoors

#_088985: LDA.w $0280,X
#_088988: BEQ .indoors

#_08898A: STZ.w $03E4,X

;---------------------------------------------------------------------------------------------------

.skip_frame
#_08898D: CLC

#_08898E: RTS

;---------------------------------------------------------------------------------------------------

.indoors
#_08898F: LDA.w $046C
#_088992: BEQ .check_basic

#_088994: CMP.b #$03

#_088996: REP #$20
#_088998: BCC .get_bg_diff

#_08899A: STZ.b $00
#_08899C: STZ.b $02

#_08899E: BRA .both_bg

;---------------------------------------------------------------------------------------------------

.get_bg_diff
#_0889A0: LDA.b $E0
#_0889A2: SEC
#_0889A3: SBC.b $E2
#_0889A5: STA.b $00

#_0889A7: LDA.b $E6
#_0889A9: SEC
#_0889AA: SBC.b $E8
#_0889AC: STA.b $02

;---------------------------------------------------------------------------------------------------

.both_bg
#_0889AE: SEP #$20

#_0889B0: LDA.w $0C04,X
#_0889B3: PHA

#_0889B4: CLC
#_0889B5: ADC.b $00
#_0889B7: STA.w $0C04,X

#_0889BA: LDA.w $0C18,X
#_0889BD: PHA

#_0889BE: ADC.b $01
#_0889C0: STA.w $0C18,X

#_0889C3: LDA.w $0BFA,X
#_0889C6: PHA

#_0889C7: CLC
#_0889C8: ADC.b $02
#_0889CA: STA.w $0BFA,X

#_0889CD: LDA.w $0C0E,X
#_0889D0: PHA

#_0889D1: ADC.b $03
#_0889D3: STA.w $0C0E,X

#_0889D6: LDA.b #$01
#_0889D8: STA.w $0C7C,X

;---------------------------------------------------------------------------------------------------

#_0889DB: JSR .check_basic

#_0889DE: STZ.w $0C7C,X

#_0889E1: PLA
#_0889E2: STA.w $0C0E,X

#_0889E5: PLA
#_0889E6: STA.w $0BFA,X

#_0889E9: PLA
#_0889EA: STA.w $0C18,X

#_0889ED: PLA
#_0889EE: STA.w $0C04,X

#_0889F1: LDY.b #$00
#_0889F3: BCC .skip_layer1

#_0889F5: INY

;---------------------------------------------------------------------------------------------------

.skip_layer1
#_0889F6: PHY
#_0889F7: PHP

#_0889F8: JSR .check_basic

#_0889FB: PLA
#_0889FC: AND.b #$01
#_0889FE: ROL A
#_0889FF: CMP.b #$01

#_088A01: PLY

#_088A02: RTS

;---------------------------------------------------------------------------------------------------

.check_basic
#_088A03: LDY.w $0C72,X

#_088A06: LDA.w $0BFA,X
#_088A09: CLC
#_088A0A: ADC.w Ancilla_TileCollisionBehaviorClass1_offset_y,Y
#_088A0D: STA.b $00

#_088A0F: LDA.w $0C0E,X
#_088A12: ADC.b #$00
#_088A14: STA.b $01

#_088A16: LDA.w $0C04,X
#_088A19: CLC
#_088A1A: ADC.w Ancilla_TileCollisionBehaviorClass1_offset_x,Y
#_088A1D: STA.b $02

#_088A1F: LDA.w $0C18,X
#_088A22: ADC.b #$00
#_088A24: STA.b $03

;===================================================================================================

Ancilla_CheckTileCollision_targeted:
#_088A26: REP #$20

#_088A28: LDA.b $00
#_088A2A: SEC
#_088A2B: SBC.b $E8
#_088A2D: CMP.w #$00E0

#_088A30: SEP #$20
#_088A32: BCS .off_screen_y

;---------------------------------------------------------------------------------------------------

#_088A34: REP #$20

#_088A36: LDA.b $02
#_088A38: SEC
#_088A39: SBC.b $E2
#_088A3B: CMP.w #$0100

#_088A3E: SEP #$20
#_088A40: BCS .no_collision

#_088A42: LDA.b $1B
#_088A44: BNE .indoors

;---------------------------------------------------------------------------------------------------

#_088A46: REP #$20

#_088A48: LSR.b $02
#_088A4A: LSR.b $02
#_088A4C: LSR.b $02

#_088A4E: PHX
#_088A4F: JSL Overworld_GetTileAttributeAtLocation
#_088A53: PLX

#_088A54: BRA .continue

;---------------------------------------------------------------------------------------------------

.indoors
#_088A56: LDA.w $0C7C,X
#_088A59: JSL GetTileAttribute_long

;---------------------------------------------------------------------------------------------------

.continue
#_088A5D: STA.w $03E4,X

#_088A60: TAY

#_088A61: LDA.w Ancilla_TileCollisionBehaviorClass1_interaction,Y
#_088A64: STA.b $0F

#_088A66: LDA.w $0C4A,X
#_088A69: CMP.b #!ANCILLA_02
#_088A6B: BNE .no_firetorch

#_088A6D: TYA
#_088A6E: AND.b #$F0
#_088A70: CMP.b #$C0
#_088A72: BNE .no_firetorch

#_088A74: STZ.b $0F

;---------------------------------------------------------------------------------------------------

.no_firetorch
#_088A76: LDA.w $0280,X
#_088A79: BNE .high_pri

#_088A7B: LDA.b $0F
#_088A7D: BEQ .no_collision

#_088A7F: CMP.b #$01
#_088A81: BEQ .collision

#_088A83: CMP.b #$02
#_088A85: BNE .not_slope

#_088A87: JSL Sprite_CheckSlopedTileCollision_long

#_088A8B: RTS

;---------------------------------------------------------------------------------------------------

.not_slope
#_088A8C: CMP.b #$03
#_088A8E: BNE .high_pri

#_088A90: LDY.w $03CA,X
#_088A93: BNE .collision

.off_screen_y
#_088A95: BRA .no_collision

;---------------------------------------------------------------------------------------------------

.high_pri
#_088A97: DEC.w $028A,X
#_088A9A: BPL .no_collision

#_088A9C: STZ.w $028A,X

#_088A9F: LDA.b $0F
#_088AA1: CMP.b #$04
#_088AA3: BNE .no_collision

#_088AA5: LDA.b #$06
#_088AA7: STA.w $028A,X

#_088AAA: LDA.w $0280,X
#_088AAD: EOR.b #$01
#_088AAF: STA.w $0280,X

#_088AB2: BRA .no_collision ; useless

;---------------------------------------------------------------------------------------------------

.no_collision
#_088AB4: CLC

#_088AB5: RTS

;---------------------------------------------------------------------------------------------------

.collision
#_088AB6: LDY.b #$00
#_088AB8: SEC

;===================================================================================================

Ancilla_SpriteAlert:
#_088AB9: LDA.b #$03
#_088ABB: STA.w $0FDC

#_088ABE: RTS

;===================================================================================================
; TODO
;===================================================================================================
Ancilla_TileCollisionBehaviorClass2:

.interaction
#_088ABF: db 0, 1, 0, 0, 1, 0, 0, 0
#_088AC7: db 0, 0, 3, 0, 0, 0, 0, 0
#_088ACF: db 1, 1, 1, 1, 0, 0, 0, 0
#_088AD7: db 2, 2, 2, 2, 0, 3, 3, 3
#_088ADF: db 0, 0, 0, 0, 0, 0, 1, 1
#_088AE7: db 4, 4, 4, 4, 4, 4, 4, 4
#_088AEF: db 1, 1, 1, 1, 1, 1, 1, 1
#_088AF7: db 0, 0, 0, 0, 0, 3, 3, 3
#_088AFF: db 0, 0, 0, 1, 0, 0, 0, 0
#_088B07: db 0, 0, 0, 0, 4, 4, 4, 4
#_088B0F: db 0, 0, 0, 0, 0, 0, 0, 0
#_088B17: db 0, 0, 0, 0, 0, 0, 0, 0
#_088B1F: db 0, 0, 0, 0, 0, 0, 0, 0
#_088B27: db 0, 0, 0, 0, 1, 1, 1, 1
#_088B2F: db 0, 0, 0, 0, 0, 0, 0, 0
#_088B37: db 0, 0, 0, 0, 0, 0, 0, 0
#_088B3F: db 1, 1, 1, 1, 1, 1, 1, 1
#_088B47: db 1, 1, 1, 1, 1, 1, 0, 1
#_088B4F: db 1, 1, 1, 1, 1, 1, 1, 1
#_088B57: db 1, 1, 1, 1, 1, 1, 1, 1
#_088B5F: db 1, 1, 1, 1, 1, 1, 1, 1
#_088B67: db 1, 1, 1, 1, 1, 1, 1, 1
#_088B6F: db 0, 0, 0, 0, 0, 0, 0, 0
#_088B77: db 0, 0, 0, 0, 0, 0, 0, 0
#_088B7F: db 0, 0, 0, 0, 0, 0, 0, 0
#_088B87: db 0, 0, 0, 0, 0, 0, 0, 0
#_088B8F: db 0, 0, 0, 0, 0, 0, 0, 0
#_088B97: db 0, 0, 0, 0, 0, 0, 0, 0
#_088B9F: db 0, 0, 0, 0, 0, 0, 0, 0
#_088BA7: db 0, 0, 0, 0, 0, 0, 0, 0
#_088BAF: db 1, 1, 1, 1, 1, 1, 1, 1
#_088BB7: db 1, 1, 1, 1, 1, 1, 1, 1

;---------------------------------------------------------------------------------------------------

.offset_y_low
#_088BBF: db  -8,   8,   0,   0

.offset_y_high
#_088BC3: db  -1,   0,   0,   0

.offset_x_low
#_088BC7: db   0,   0,  -8,   8

.offset_x_high
#_088BCB: db   0,   0,  -1,   0

;===================================================================================================

Ancilla_CheckTileCollision_Class2:
#_088BCF: LDA.w $046C
#_088BD2: BEQ .check_basic

#_088BD4: CMP.b #$03

#_088BD6: REP #$20
#_088BD8: BCC .get_bg_diff

#_088BDA: STZ.b $00
#_088BDC: STZ.b $02

#_088BDE: BRA .both_bg

;---------------------------------------------------------------------------------------------------

.get_bg_diff
#_088BE0: LDA.b $E0
#_088BE2: SEC
#_088BE3: SBC.b $E2
#_088BE5: STA.b $00

#_088BE7: LDA.b $E6
#_088BE9: SEC
#_088BEA: SBC.b $E8
#_088BEC: STA.b $02

;---------------------------------------------------------------------------------------------------

.both_bg
#_088BEE: SEP #$20

#_088BF0: LDA.w $0C04,X
#_088BF3: PHA

#_088BF4: CLC
#_088BF5: ADC.b $00
#_088BF7: STA.w $0C04,X

#_088BFA: LDA.w $0C18,X
#_088BFD: PHA

#_088BFE: ADC.b $01
#_088C00: STA.w $0C18,X

#_088C03: LDA.w $0BFA,X
#_088C06: PHA

#_088C07: CLC
#_088C08: ADC.b $02
#_088C0A: STA.w $0BFA,X

#_088C0D: LDA.w $0C0E,X
#_088C10: PHA

#_088C11: ADC.b $03
#_088C13: STA.w $0C0E,X

#_088C16: LDA.b #$01
#_088C18: STA.w $0C7C,X

#_088C1B: JSR .check_basic

;---------------------------------------------------------------------------------------------------

#_088C1E: STZ.w $0C7C,X

#_088C21: PLA
#_088C22: STA.w $0C0E,X

#_088C25: PLA
#_088C26: STA.w $0BFA,X

#_088C29: PLA
#_088C2A: STA.w $0C18,X

#_088C2D: PLA
#_088C2E: STA.w $0C04,X

;---------------------------------------------------------------------------------------------------

#_088C31: LDY.b #$00
#_088C33: BCC .skip_layer1

#_088C35: INY

.skip_layer1
#_088C36: PHY
#_088C37: PHP

#_088C38: JSR .check_basic

#_088C3B: PLA
#_088C3C: AND.b #$01
#_088C3E: ROL A
#_088C3F: CMP.b #$01

#_088C41: PLY

#_088C42: RTS

;---------------------------------------------------------------------------------------------------

.check_basic
#_088C43: LDY.w $0C72,X

#_088C46: LDA.w $0BFA,X
#_088C49: CLC
#_088C4A: ADC.w Ancilla_TileCollisionBehaviorClass2_offset_y_low,Y
#_088C4D: STA.b $00

#_088C4F: LDA.w $0C0E,X
#_088C52: ADC.w Ancilla_TileCollisionBehaviorClass2_offset_y_high,Y
#_088C55: STA.b $01

#_088C57: LDA.w $0C04,X
#_088C5A: CLC
#_088C5B: ADC.w Ancilla_TileCollisionBehaviorClass2_offset_x_low,Y
#_088C5E: STA.b $02

#_088C60: LDA.w $0C18,X
#_088C63: ADC.w Ancilla_TileCollisionBehaviorClass2_offset_x_high,Y
#_088C66: STA.b $03

#_088C68: REP #$20

#_088C6A: LDA.b $00
#_088C6C: SEC
#_088C6D: SBC.b $E8
#_088C6F: CMP.w #$00E0

#_088C72: SEP #$20
#_088C74: BCS .no_collision

;---------------------------------------------------------------------------------------------------

#_088C76: REP #$20

#_088C78: LDA.b $02
#_088C7A: SEC
#_088C7B: SBC.b $E2
#_088C7D: CMP.w #$0100

#_088C80: SEP #$20
#_088C82: BCS .no_collision

#_088C84: LDA.b $1B
#_088C86: BNE .check_indoors

;---------------------------------------------------------------------------------------------------

#_088C88: REP #$20

#_088C8A: LSR.b $02
#_088C8C: LSR.b $02
#_088C8E: LSR.b $02

#_088C90: PHX
#_088C91: JSL Overworld_GetTileAttributeAtLocation
#_088C95: PLX

#_088C96: BRA .save_tile

;---------------------------------------------------------------------------------------------------

.check_indoors
#_088C98: LDA.w $0C7C,X
#_088C9B: JSL GetTileAttribute_long

;---------------------------------------------------------------------------------------------------

.save_tile
#_088C9F: STA.w $03E4,X

#_088CA2: CMP.b #!TILETYPE_03
#_088CA4: BNE .not_slope3

#_088CA6: LDY.w $03CA,X
#_088CA9: BNE .no_collision

.not_slope3
#_088CAB: TAY

#_088CAC: LDA.w Ancilla_TileCollisionBehaviorClass2_interaction,Y
#_088CAF: BEQ .no_collision

#_088CB1: CMP.b #$02
#_088CB3: BNE .not_a_slope

#_088CB5: JSL Sprite_CheckSlopedTileCollision_long

#_088CB9: RTS

;---------------------------------------------------------------------------------------------------

.not_a_slope
#_088CBA: CMP.b #$04
#_088CBC: BNE .not_a_ledge

#_088CBE: LDA.w $03CA,X
#_088CC1: BNE .collision

#_088CC3: LDA.b #$01
#_088CC5: STA.w $0280,X

#_088CC8: BRA .no_collision

;---------------------------------------------------------------------------------------------------

.not_a_ledge
#_088CCA: CMP.b #$03
#_088CCC: BNE .collision

#_088CCE: LDY.w $03CA,X
#_088CD1: BNE .collision

;---------------------------------------------------------------------------------------------------

.no_collision
#_088CD3: CLC

#_088CD4: RTS

;---------------------------------------------------------------------------------------------------

.collision
#_088CD5: LDY.b #$00

#_088CD7: SEC

#_088CD8: RTS

;===================================================================================================

pool Ancilla04_BeamHit

.offset_x
#_088CD9: db -12,  20, -12,  20
#_088CDD: db  -8,  16,  -8,  16
#_088CE1: db  -4,  12,  -4,  12
#_088CE5: db   0,   8,   0,   8

.offset_y
#_088CE9: db -12, -12,  20,  20
#_088CED: db  -8,  -8,  16,  16
#_088CF1: db  -4,  -4,  12,  12
#_088CF5: db   0,   0,   8,   8

.char
#_088CF9: db $53, $53, $53, $53
#_088CFD: db $53, $53, $53, $53
#_088D01: db $53, $53, $53, $53
#_088D05: db $54, $54, $54, $54

.props
#_088D09: db $40, $00, $C0, $80
#_088D0D: db $40, $00, $C0, $80
#_088D11: db $40, $00, $C0, $80
#_088D15: db $00, $40, $80, $C0

pool off

;---------------------------------------------------------------------------------------------------

Ancilla04_BeamHit:
#_088D19: JSR Ancilla_BoundsCheck

#_088D1C: LDA.w $0C68,X
#_088D1F: BNE .active

#_088D21: BRL Ancilla_DeleteSelf

;---------------------------------------------------------------------------------------------------

.active
#_088D24: LSR A
#_088D25: STA.b $02

#_088D27: LDX.b #$03
#_088D29: LDY.b #$00

.next_object
#_088D2B: STX.b $03

#_088D2D: LDA.b $02
#_088D2F: ASL A
#_088D30: ASL A
#_088D31: ADC.b $03
#_088D33: TAX

#_088D34: LDA.b $00
#_088D36: CLC
#_088D37: ADC.w .offset_x,X
#_088D3A: STA.b ($90),Y

#_088D3C: LDA.b $01
#_088D3E: CLC
#_088D3F: ADC.w .offset_y,X
#_088D42: INY
#_088D43: STA.b ($90),Y

#_088D45: LDA.w .char,X
#_088D48: CLC
#_088D49: ADC.b #$82
#_088D4B: INY
#_088D4C: STA.b ($90),Y

#_088D4E: LDA.w .props,X
#_088D51: ORA.b #$02
#_088D53: ORA.b $04
#_088D55: INY
#_088D56: STA.b ($90),Y

#_088D58: INY

#_088D59: LDX.b $03
#_088D5B: DEX
#_088D5C: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_088D5E: LDX.w $0FA0
#_088D61: LDY.b #$00
#_088D63: LDA.b #$03
#_088D65: BRL BeamHit_OAMAdjustments

;===================================================================================================

Ancilla_CheckSpriteCollision:
#_088D68: LDY.b #$0F

.next_sprite
#_088D6A: LDA.w $0C4A,X
#_088D6D: CMP.b #!ANCILLA_09
#_088D6F: BEQ .arrow_or_hook

#_088D71: CMP.b #!ANCILLA_1F
#_088D73: BEQ .arrow_or_hook

#_088D75: TYA
#_088D76: EOR.b $1A
#_088D78: AND.b #$03
#_088D7A: ORA.w $0F00,Y
#_088D7D: BNE .skip

.arrow_or_hook
#_088D7F: LDA.w $0DD0,Y
#_088D82: CMP.b #$09
#_088D84: BCC .skip

#_088D86: LDA.w $0CAA,Y
#_088D89: AND.b #$02
#_088D8B: BNE .ignore_layer

#_088D8D: LDA.w $0280,X
#_088D90: BNE .skip

.ignore_layer
#_088D92: LDA.w $0C7C,X
#_088D95: CMP.w $0F20,Y
#_088D98: BNE .skip

#_088D9A: JSR Ancilla_CheckSpriteCollision_Single

.skip
#_088D9D: DEY
#_088D9E: BPL .next_sprite

#_088DA0: CLC

#_088DA1: RTS

;===================================================================================================

Ancilla_CheckSpriteCollision_long:
#_088DA2: PHB
#_088DA3: PHK
#_088DA4: PLB

#_088DA5: JSR Ancilla_CheckSpriteCollision

#_088DA8: PLB

#_088DA9: RTL

;---------------------------------------------------------------------------------------------------

pool Ancilla_CheckSpriteCollision_Single

.direction
#_088DAA: db $02, $03, $00, $01

pool off

;---------------------------------------------------------------------------------------------------

Ancilla_CheckSpriteCollision_Single:
#_088DAE: JSR Ancilla_SetupHitbox

#_088DB1: PHY
#_088DB2: PHX

#_088DB3: TYX
#_088DB4: JSL Sprite_SetupHitbox_long

#_088DB8: PLX
#_088DB9: PLY

#_088DBA: JSL CheckIfHitBoxesOverlap_long
#_088DBE: BCS .hitbox_overlap

#_088DC0: JMP.w .no_collision

;---------------------------------------------------------------------------------------------------

.hitbox_overlap
#_088DC3: LDA.w $0B6B,Y
#_088DC6: AND.b #$08
#_088DC8: BEQ .arrow_continue

#_088DCA: LDA.w $0C4A,X
#_088DCD: CMP.b #!ANCILLA_09
#_088DCF: BNE .arrow_continue

#_088DD1: LDA.w $0E20,Y
#_088DD4: CMP.b #!SPRITE_1B
#_088DD6: BEQ .arrow_v_arrow

.deflected_arrow
#_088DD8: JSL Sprite_CreateDeflectedArrow

#_088DDC: CLC

#_088DDD: RTS

;---------------------------------------------------------------------------------------------------

.arrow_v_arrow
#_088DDE: LDA.l $7EF340
#_088DE2: CMP.b #$03
#_088DE4: BCC .not_silvers

#_088DE6: JSR .arrow_continue

#_088DE9: CLC

#_088DEA: RTS

;---------------------------------------------------------------------------------------------------

.not_silvers
#_088DEB: JSR .deflected_arrow

;---------------------------------------------------------------------------------------------------

.arrow_continue
#_088DEE: LDA.w $0CAA,Y
#_088DF1: AND.b #$10
#_088DF3: BEQ .no_succ

#_088DF5: LDA.w $0C72,X
#_088DF8: AND.b #$03
#_088DFA: STA.w $0C72,X

#_088DFD: PHY

#_088DFE: LDA.w $0DE0,Y
#_088E01: TAY

#_088E02: LDA.w .direction,Y

#_088E05: PLY

#_088E06: CMP.w $0C72,X
#_088E09: BEQ .immunity

;---------------------------------------------------------------------------------------------------

.no_succ
#_088E0B: LDA.w $0C4A,X
#_088E0E: CMP.b #!ANCILLA_05
#_088E10: BEQ .boom

#_088E12: CMP.b #!ANCILLA_1F
#_088E14: BNE .continue_b

#_088E16: LDA.w $0E20,Y
#_088E19: CMP.b #!SPRITE_8D
#_088E1B: BEQ .arrghus_puff

.boom
#_088E1D: LDA.w $0EF0,Y
#_088E20: BNE .immunity

#_088E22: LDA.w $0CAA,Y
#_088E25: AND.b #$02
#_088E27: BEQ .continue_b

.arrghus_puff
#_088E29: TXA ; give ancilla's ID to sprite to latch on
#_088E2A: INC A
#_088E2B: STA.w $0DA0,Y

#_088E2E: BRA .set_drag

;---------------------------------------------------------------------------------------------------

.continue_b
#_088E30: LDA.w $0BA0,Y
#_088E33: BNE .no_collision

#_088E35: LDA.w $0E20,Y
#_088E38: CMP.b #!SPRITE_92
#_088E3A: BNE .not_helma_mask

#_088E3C: LDA.w $0DB0,Y
#_088E3F: CMP.b #$03
#_088E41: BCC .immunity

.not_helma_mask
#_088E43: PHX

#_088E44: LDA.w $0C72,X
#_088E47: AND.b #$03
#_088E49: TAX

#_088E4A: LDA.w .recoil_x,X
#_088E4D: STA.w $0F40,Y

#_088E50: LDA.w .recoil_y,X
#_088E53: STA.w $0F30,Y

#_088E56: PLX
#_088E57: PHX

#_088E58: LDA.w $0C4A,X

#_088E5B: STX.w $0FB6

#_088E5E: TYX

#_088E5F: PHY

#_088E60: JSL Ancilla_CheckDamageToSprite

#_088E64: PLY
#_088E65: PLX

.set_drag
#_088E66: LDA.w $0C4A,X
#_088E69: STA.w $0BB0,Y

.immunity
#_088E6C: PLA
#_088E6D: PLA

#_088E6E: JSR Ancilla_SpriteAlert

#_088E71: SEC

#_088E72: RTS

;---------------------------------------------------------------------------------------------------

.no_collision
#_088E73: CLC

#_088E74: RTS

;---------------------------------------------------------------------------------------------------

.recoil_x
#_088E75: db   0,   0, -64,  64

.recoil_y
#_088E79: db -64,  64,   0,   0

;===================================================================================================

AncillaHitbox:

.offset_x
#_088E7D: db   4
#_088E7E: db   4
#_088E7F: db   4
#_088E80: db   4
#_088E81: db   3
#_088E82: db   3
#_088E83: db   2
#_088E84: db  11
#_088E85: db -16
#_088E86: db -16
#_088E87: db  -1
#_088E88: db  -8

;---------------------------------------------------------------------------------------------------

.width
#_088E89: db   8
#_088E8A: db   8
#_088E8B: db   8
#_088E8C: db   8
#_088E8D: db   1
#_088E8E: db   1
#_088E8F: db   1
#_088E90: db   1
#_088E91: db  32
#_088E92: db  32
#_088E93: db   8
#_088E94: db   8

;---------------------------------------------------------------------------------------------------

.offset_y
#_088E95: db   4
#_088E96: db   4
#_088E97: db   4
#_088E98: db   4
#_088E99: db   2
#_088E9A: db  11
#_088E9B: db   3
#_088E9C: db   3
#_088E9D: db  -1
#_088E9E: db  -8
#_088E9F: db -16
#_088EA0: db -16

;---------------------------------------------------------------------------------------------------

.height
#_088EA1: db   8
#_088EA2: db   8
#_088EA3: db   8
#_088EA4: db   8
#_088EA5: db   1
#_088EA6: db   1
#_088EA7: db   1
#_088EA8: db   1
#_088EA9: db   8
#_088EAA: db   8
#_088EAB: db  32
#_088EAC: db  32

;===================================================================================================

Ancilla_SetupHitbox:
#_088EAD: STZ.b $09

#_088EAF: PHY

#_088EB0: LDY.w $0C72,X

#_088EB3: LDA.w $0C4A,X
#_088EB6: CMP.b #!ANCILLA_0C
#_088EB8: BNE .not_beam

#_088EBA: DEC.b $09

#_088EBC: TYA
#_088EBD: ORA.b #$08
#_088EBF: TAY

.not_beam
#_088EC0: LDA.w $0C04,X
#_088EC3: CLC
#_088EC4: ADC.w AncillaHitbox_offset_x,Y
#_088EC7: STA.b $00

#_088EC9: LDA.w $0C18,X
#_088ECC: ADC.b $09
#_088ECE: STA.b $08

#_088ED0: LDA.w $0BFA,X
#_088ED3: CLC
#_088ED4: ADC.w AncillaHitbox_offset_y,Y
#_088ED7: STA.b $01

#_088ED9: LDA.w $0C0E,X
#_088EDC: ADC.b $09
#_088EDE: STA.b $09

#_088EE0: LDA.w AncillaHitbox_width,Y
#_088EE3: STA.b $02

#_088EE5: LDA.w AncillaHitbox_height,Y
#_088EE8: STA.b $03

#_088EEA: PLY

#_088EEB: RTS

;===================================================================================================

UNREACHABLE_088EEC:
#_088EEC: RTS

;===================================================================================================

Ancilla_ProjectSpeedTowardsPlayer:
#_088EED: STA.b $01

#_088EEF: PHX
#_088EF0: PHY

#_088EF1: JSR Ancilla_IsBelowLink
#_088EF4: STY.b $02

#_088EF6: LDA.b $0E
#_088EF8: BPL .positive_y

#_088EFA: EOR.b #$FF
#_088EFC: INC A

.positive_y
#_088EFD: STA.b $0C

#_088EFF: JSR Ancilla_IsRightOfLink
#_088F02: STY.b $03

#_088F04: LDA.b $0F
#_088F06: BPL .positive_x

#_088F08: EOR.b #$FF
#_088F0A: INC A

.positive_x
#_088F0B: STA.b $0D

;---------------------------------------------------------------------------------------------------

#_088F0D: LDY.b #$00

#_088F0F: LDA.b $0D
#_088F11: CMP.b $0C
#_088F13: BCS .x_bigger

#_088F15: INY
#_088F16: PHA

#_088F17: LDA.b $0C
#_088F19: STA.b $0D

#_088F1B: PLA
#_088F1C: STA.b $0C

.x_bigger
#_088F1E: STZ.b $0B
#_088F20: STZ.b $00

;---------------------------------------------------------------------------------------------------

#_088F22: LDX.b $01

.stupid_algo
#_088F24: LDA.b $0B
#_088F26: CLC
#_088F27: ADC.b $0C

#_088F29: CMP.b $0D
#_088F2B: BCC .keep_dumbing

#_088F2D: SBC.b $0D
#_088F2F: INC.b $00

.keep_dumbing
#_088F31: STA.b $0B

#_088F33: DEX
#_088F34: BNE .stupid_algo

;---------------------------------------------------------------------------------------------------

#_088F36: TYA
#_088F37: BEQ .x_bigger_again

#_088F39: LDA.b $00
#_088F3B: PHA

#_088F3C: LDA.b $01
#_088F3E: STA.b $00

#_088F40: PLA
#_088F41: STA.b $01

.x_bigger_again
#_088F43: LDA.b $00

#_088F45: LDY.b $02
#_088F47: BEQ .y_fine

#_088F49: EOR.b #$FF
#_088F4B: INC A
#_088F4C: STA.b $00

.y_fine
#_088F4E: LDA.b $01
#_088F50: LDY.b $03
#_088F52: BEQ .x_fine

#_088F54: EOR.b #$FF
#_088F56: INC A
#_088F57: STA.b $01

.x_fine
#_088F59: PLY
#_088F5A: PLX

#_088F5B: RTS

;===================================================================================================

Ancilla_IsRightOfLink:
#_088F5C: LDY.b #$00

#_088F5E: LDA.b $22
#_088F60: SEC
#_088F61: SBC.w $0C04,X
#_088F64: STA.b $0F

#_088F66: LDA.b $23
#_088F68: SBC.w $0C18,X
#_088F6B: BPL .no_left

#_088F6D: INY

.no_left
#_088F6E: RTS

;===================================================================================================

Ancilla_IsBelowLink:
#_088F6F: LDY.b #$00

#_088F71: LDA.b $20
#_088F73: SEC
#_088F74: SBC.w $0BFA,X
#_088F77: STA.b $0E

#_088F79: LDA.b $21
#_088F7B: SBC.w $0C0E,X
#_088F7E: BPL EXIT_088F81

#_088F80: INY

;---------------------------------------------------------------------------------------------------

#EXIT_088F81:
#_088F81: RTS

;===================================================================================================

pool Ancilla_RepulseSpark

.char
#_088F82: db $93, $82, $81

.props
#_088F85: db $22, $12, $22, $22

pool off

;---------------------------------------------------------------------------------------------------

Ancilla_RepulseSpark:
#_088F89: LDA.w $0FAC
#_088F8C: BEQ EXIT_088F81

#_088F8E: LDA.b #$02
#_088F90: STA.w $0FDC

#_088F93: DEC.w $0FAF
#_088F96: BPL .keep_state

#_088F98: DEC.w $0FAC

#_088F9B: LDA.b #$01
#_088F9D: STA.w $0FAF

.keep_state
#_088FA0: LDA.b #$10

#_088FA2: LDY.w $0FB3
#_088FA5: BEQ .no_sort

#_088FA7: LDY.w $0B68
#_088FAA: BNE .bg1

#_088FAC: JSL OAM_AllocateFromRegionD
#_088FB0: BRA .screen_check

.bg1
#_088FB2: JSL OAM_AllocateFromRegionF
#_088FB6: BRA .screen_check

.no_sort
#_088FB8: JSL OAM_AllocateFromRegionA

;---------------------------------------------------------------------------------------------------

.screen_check
#_088FBC: LDA.w $0FAD
#_088FBF: SEC
#_088FC0: SBC.w $00E2

#_088FC3: CMP.b #$F8
#_088FC5: BCS .offscreen

#_088FC7: STA.b $00

#_088FC9: LDA.w $0FAE
#_088FCC: SEC
#_088FCD: SBC.w $00E8

#_088FD0: CMP.b #$F0
#_088FD2: BCS .offscreen

#_088FD4: STA.b $01

#_088FD6: LDA.w $0FAC
#_088FD9: CMP.b #$03
#_088FDB: BCC .late_stage

#_088FDD: LDY.b #$00

#_088FDF: LDA.b $00
#_088FE1: STA.b ($90),Y

#_088FE3: LDA.b $01
#_088FE5: INY
#_088FE6: STA.b ($90),Y

#_088FE8: LDA.b #$80

#_088FEA: LDX.w $0FAC
#_088FED: CPX.b #$09
#_088FEF: BCS .diff_chr

#_088FF1: LDA.b #$92

.diff_chr
#_088FF3: INY
#_088FF4: STA.b ($90),Y

#_088FF6: LDX.w $0B68

#_088FF9: LDA.l .props,X
#_088FFD: INY
#_088FFE: STA.b ($90),Y

#_089000: TYA
#_089001: LSR A
#_089002: LSR A
#_089003: TAY

#_089004: LDA.b #$00
#_089006: STA.b ($92),Y

#_089008: RTS

.offscreen
#_089009: STZ.w $0FAC

#_08900C: RTS

;---------------------------------------------------------------------------------------------------

.late_stage
#_08900D: LDA.b $00
#_08900F: SEC
#_089010: SBC.b #$04

#_089012: LDY.b #$00
#_089014: STA.b ($90),Y

#_089016: LDY.b #$08
#_089018: STA.b ($90),Y

#_08901A: CLC
#_08901B: ADC.b #$08

#_08901D: LDY.b #$04
#_08901F: STA.b ($90),Y

#_089021: LDY.b #$0C
#_089023: STA.b ($90),Y

#_089025: LDA.b $01
#_089027: SEC
#_089028: SBC.b #$04

#_08902A: LDY.b #$01
#_08902C: STA.b ($90),Y

#_08902E: LDY.b #$05
#_089030: STA.b ($90),Y

#_089032: CLC
#_089033: ADC.b #$08

#_089035: LDY.b #$09
#_089037: STA.b ($90),Y

#_089039: LDY.b #$0D
#_08903B: STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

#_08903D: LDX.w $0B68

#_089040: LDA.l .props,X
#_089044: LDY.b #$03
#_089046: STA.b ($90),Y

#_089048: ORA.b #$40
#_08904A: LDY.b #$07
#_08904C: STA.b ($90),Y

#_08904E: ORA.b #$80
#_089050: LDY.b #$0F
#_089052: STA.b ($90),Y

#_089054: EOR.b #$40
#_089056: LDY.b #$0B
#_089058: STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

#_08905A: LDX.w $0FAC

#_08905D: LDA.w .char,X
#_089060: LDY.b #$02
#_089062: STA.b ($90),Y

#_089064: LDY.b #$06
#_089066: STA.b ($90),Y

#_089068: LDY.b #$0A
#_08906A: STA.b ($90),Y

#_08906C: LDY.b #$0E
#_08906E: STA.b ($90),Y

#_089070: LDY.b #$00
#_089072: LDA.b #$00
#_089074: STA.b ($92),Y

#_089076: INY
#_089077: STA.b ($92),Y

#_089079: INY
#_08907A: STA.b ($92),Y

#_08907C: INY
#_08907D: STA.b ($92),Y

#_08907F: RTS

;===================================================================================================

Ancilla_Move_X:
#_089080: TXA
#_089081: CLC
#_089082: ADC.b #10
#_089084: TAX

#_089085: JSR Ancilla_Move_Y

#_089088: BRL Ancilla_RestoreIndex

;---------------------------------------------------------------------------------------------------

Ancilla_Move_Y:
#_08908B: LDA.w $0C22,X

#_08908E: ASL A ; x16
#_08908F: ASL A
#_089090: ASL A
#_089091: ASL A

#_089092: CLC
#_089093: ADC.w $0C36,X
#_089096: STA.w $0C36,X

#_089099: LDY.b #$00

#_08909B: LDA.w $0C22,X
#_08909E: PHP

#_08909F: LSR A ; /16
#_0890A0: LSR A
#_0890A1: LSR A
#_0890A2: LSR A

#_0890A3: PLP
#_0890A4: BPL .other_way

#_0890A6: ORA.b #$F0
#_0890A8: DEY

.other_way
#_0890A9: ADC.w $0BFA,X
#_0890AC: STA.w $0BFA,X

#_0890AF: TYA
#_0890B0: ADC.w $0C0E,X
#_0890B3: STA.w $0C0E,X

#_0890B6: RTS

;===================================================================================================

Ancilla_Move_Z:
#_0890B7: LDA.w $0294,X

#_0890BA: ASL A ; x16
#_0890BB: ASL A
#_0890BC: ASL A
#_0890BD: ASL A

#_0890BE: CLC
#_0890BF: ADC.w $02A8,X
#_0890C2: STA.w $02A8,X

#_0890C5: LDY.b #$00

#_0890C7: LDA.w $0294,X
#_0890CA: PHP

#_0890CB: LSR A ; /16
#_0890CC: LSR A
#_0890CD: LSR A
#_0890CE: LSR A

#_0890CF: PLP
#_0890D0: BPL .other_way

#_0890D2: ORA.b #$F0
#_0890D4: DEY

.other_way
#_0890D5: ADC.w $029E,X
#_0890D8: STA.w $029E,X

#_0890DB: RTS

;===================================================================================================

pool Ancilla05_Boomerang

.offset_y
#_0890DC: dw -16,   6,   0,   0
#_0890E4: dw  -8,   8,  -8,   8

.offset_x
#_0890EC: dw   0,   0,  -8,   8
#_0890F4: dw   8,   8,  -8,  -8

pool off

;---------------------------------------------------------------------------------------------------

Ancilla05_Boomerang:
#_0890FC: LDY.b #$04

.next_slot
#_0890FE: LDA.w $0C4A,Y
#_089101: CMP.b #!ANCILLA_22
#_089103: BEQ .draw

#_089105: DEY
#_089106: BPL .next_slot

;---------------------------------------------------------------------------------------------------

#_089108: LDA.b $11
#_08910A: BNE .draw

#_08910C: LDA.b $1A
#_08910E: AND.b #$07
#_089110: BNE .no_whoosh

#_089112: LDA.b #!SFX2_09
#_089114: JSR Ancilla_SFX2_Pan

.no_whoosh
#_089117: LDA.w $03B1,X
#_08911A: BNE .pos_set

#_08911C: LDA.b $3C
#_08911E: CMP.b #$09
#_089120: BCS .init_pos

#_089122: LDA.w $0300
#_089125: BNE .init_pos

#_089127: LDA.w $02E0
#_08912A: BNE .bunny

#_08912C: LDA.b $4D
#_08912E: BEQ .draw

.bunny
#_089130: BRL Boom_Die

.draw
#_089133: BRL .proceed_to_draw

;---------------------------------------------------------------------------------------------------

.init_pos
#_089136: LDA.w $03CF,X
#_089139: TAY

#_08913A: REP #$20

#_08913C: LDA.b $20
#_08913E: CLC
#_08913F: ADC.w #$0008
#_089142: CLC
#_089143: ADC.w .offset_y,Y
#_089146: STA.b $00

#_089148: LDA.b $22
#_08914A: CLC
#_08914B: ADC.w .offset_x,Y
#_08914E: STA.b $02

#_089150: SEP #$20

#_089152: LDA.b $00
#_089154: STA.w $0BFA,X

#_089157: LDA.b $01
#_089159: STA.w $0C0E,X

#_08915C: LDA.b $02
#_08915E: STA.w $0C04,X

#_089161: LDA.b $03
#_089163: STA.w $0C18,X

#_089166: INC.w $03B1,X

;---------------------------------------------------------------------------------------------------

.pos_set
#_089169: LDA.w $0394,X
#_08916C: BEQ .no_sparkle

#_08916E: LDA.b $1A
#_089170: AND.b #$01
#_089172: BNE .no_sparkle

#_089174: PHX
#_089175: JSL AncillaAdd_SwordChargeSparkle
#_089179: PLX

.no_sparkle
#_08917A: LDA.w $0C5E,X
#_08917D: BEQ .move_away

#_08917F: LDA.w $0380,X
#_089182: BEQ .not_decelerating

#_089184: INC A

.decelerating
#_089185: STA.w $0380,X

.not_decelerating
#_089188: REP #$20

#_08918A: LDA.b $20
#_08918C: STA.w $038A,X

#_08918F: CLC
#_089190: ADC.w #$0008
#_089193: STA.b $20

#_089195: SEP #$20

#_089197: LDA.w $03C5,X
#_08919A: JSR Ancilla_ProjectSpeedTowardsPlayer

#_08919D: JSL Boomerang_CheatWhenNoOnesLooking

#_0891A1: LDA.b $00
#_0891A3: STA.w $0C22,X

#_0891A6: LDA.b $01
#_0891A8: STA.w $0C2C,X

#_0891AB: REP #$20

#_0891AD: LDA.w $038A,X ; bad big write for boom
#_0891B0: STA.b $20

#_0891B2: SEP #$20

;---------------------------------------------------------------------------------------------------

.move_away
#_0891B4: LDA.w $0C22,X
#_0891B7: BEQ .y_speed_0

#_0891B9: CLC
#_0891BA: ADC.w $0380,X
#_0891BD: STA.w $0C22,X

.y_speed_0
#_0891C0: JSR Ancilla_Move_Y

#_0891C3: LDA.w $0C2C,X
#_0891C6: BEQ .x_speed_0

#_0891C8: CLC
#_0891C9: ADC.w $0380,X
#_0891CC: STA.w $0C2C,X

.x_speed_0
#_0891CF: JSR Ancilla_Move_X
#_0891D2: JSR Ancilla_CheckSpriteCollision

#_0891D5: LDY.b #$00
#_0891D7: BCC .no_sprite_collision

#_0891D9: INY

;---------------------------------------------------------------------------------------------------

.no_sprite_collision
#_0891DA: LDA.w $0C5E,X
#_0891DD: BNE .dont_turn_around

#_0891DF: CPY.b #$01
#_0891E1: BEQ .turn_around

#_0891E3: JSR Ancilla_CheckTileCollision
#_0891E6: BCC .no_tile_collision

#_0891E8: PHX
#_0891E9: JSL AncillaAdd_BoomerangWallClink
#_0891ED: PLX

#_0891EE: LDY.b #!SFX2_06

#_0891F0: LDA.w $03E4,X
#_0891F3: CMP.b #!TILETYPE_F0
#_0891F5: BEQ .not_key_door

#_0891F7: LDY.b #!SFX2_05

.not_key_door
#_0891F9: TYA
#_0891FA: JSR Ancilla_SFX2_Pan

#_0891FD: BRA .turn_around

;---------------------------------------------------------------------------------------------------

.no_tile_collision
#_0891FF: JSR Boomerang_ScreenEdge
#_089202: BCS .turn_around

#_089204: DEC.w $0C54,X

#_089207: LDA.w $0C54,X
#_08920A: BEQ .turn_around

#_08920C: CMP.b #$05
#_08920E: BCS .proceed_to_draw

#_089210: DEC.w $0380,X
#_089213: BRA .proceed_to_draw

;---------------------------------------------------------------------------------------------------

.turn_around
#_089215: LDA.w $0C5E,X
#_089218: EOR.b #$01
#_08921A: STA.w $0C5E,X

#_08921D: BRA .proceed_to_draw

;---------------------------------------------------------------------------------------------------

.dont_turn_around
#_08921F: LDA.w $0280,X
#_089222: PHA

#_089223: LDA.w $0C7C,X
#_089226: PHA

#_089227: STZ.w $0C7C,X

#_08922A: JSR Ancilla_CheckTileCollision

#_08922D: PLA
#_08922E: STA.w $0C7C,X

#_089231: PLA
#_089232: STA.w $0280,X

#_089235: JSR Boomerang_StopOffScreen

;---------------------------------------------------------------------------------------------------

.proceed_to_draw
#_089238: BRL AncillaDraw_Boomerang

;===================================================================================================

Ancilla_CheckTileCollision_long:
#_08923B: PHB
#_08923C: PHK
#_08923D: PLB

#_08923E: JSR Ancilla_CheckTileCollision

#_089241: PLB

#_089242: RTL

;===================================================================================================

Ancilla_CheckTileCollision_Class2_long:
#_089243: PHB
#_089244: PHK
#_089245: PLB

#_089246: JSR Ancilla_CheckTileCollision_Class2

#_089249: PLB

#_08924A: RTL

;===================================================================================================

Boomerang_ScreenEdge:
#_08924B: LDA.w $0BFA,X
#_08924E: STA.b $00

#_089250: LDA.w $0C0E,X
#_089253: STA.b $01

#_089255: LDA.w $0C04,X
#_089258: STA.b $02

#_08925A: LDA.w $0C18,X
#_08925D: STA.b $03

;---------------------------------------------------------------------------------------------------

#_08925F: REP #$30

#_089261: LDY.w #$0000

#_089264: LDA.w $039D
#_089267: AND.w #$0003
#_08926A: BEQ .no_horizontal

#_08926C: AND.w #$0001
#_08926F: BEQ .leftwards

#_089271: LDY.w #$0010

.leftwards
#_089274: TYA
#_089275: CLC
#_089276: ADC.b $02

#_089278: SEC
#_089279: SBC.b $E2
#_08927B: STA.b $02

#_08927D: CMP.w #$0100
#_089280: BCS .do_reverse

;---------------------------------------------------------------------------------------------------

.no_horizontal
#_089282: LDY.w #$0000

#_089285: LDA.w $039D
#_089288: AND.w #$000C
#_08928B: BEQ .dont_reverse

#_08928D: AND.w #$0004
#_089290: BEQ .upward

#_089292: LDY.w #$0010

.upward
#_089295: TYA
#_089296: CLC
#_089297: ADC.b $00

#_089299: SEC
#_08929A: SBC.b $E8
#_08929C: STA.b $00

#_08929E: CMP.w #$00E2
#_0892A1: BCC .dont_reverse

;---------------------------------------------------------------------------------------------------

.do_reverse
#_0892A3: SEP #$30
#_0892A5: SEC

#_0892A6: RTS

;---------------------------------------------------------------------------------------------------

.dont_reverse
#_0892A7: SEP #$30
#_0892A9: CLC

#_0892AA: RTS

;===================================================================================================

Boomerang_StopOffScreen:
#_0892AB: LDA.w $0BFA,X
#_0892AE: STA.b $04

#_0892B0: LDA.w $0C0E,X
#_0892B3: STA.b $05

#_0892B5: LDA.w $0C04,X
#_0892B8: STA.b $06

#_0892BA: LDA.w $0C18,X
#_0892BD: STA.b $07

;---------------------------------------------------------------------------------------------------

#_0892BF: REP #$20

#_0892C1: LDA.b $20
#_0892C3: CLC
#_0892C4: ADC.w #$0018
#_0892C7: STA.b $00

#_0892C9: LDA.b $22
#_0892CB: CLC
#_0892CC: ADC.w #$0010
#_0892CF: STA.b $02

#_0892D1: LDA.b $04
#_0892D3: CLC
#_0892D4: ADC.w #$0008
#_0892D7: STA.b $04

#_0892D9: LDA.b $06
#_0892DB: CLC
#_0892DC: ADC.w #$0008
#_0892DF: STA.b $06

#_0892E1: LDA.b $04
#_0892E3: CMP.b $20
#_0892E5: BCC Boom_NoDie

#_0892E7: CMP.b $00
#_0892E9: BCS Boom_NoDie

#_0892EB: LDA.b $06
#_0892ED: CMP.b $22
#_0892EF: BCC Boom_NoDie

#_0892F1: CMP.b $02
#_0892F3: BCS Boom_NoDie

;---------------------------------------------------------------------------------------------------

Boom_Die:
#_0892F5: SEP #$20

#_0892F7: STZ.w $0C4A,X

#_0892FA: STZ.w $035F

#_0892FD: LDA.w $0301
#_089300: AND.b #$80
#_089302: BEQ Boom_NoDie

#_089304: STZ.w $0301

#_089307: LDA.b $3A
#_089309: AND.b #$BF
#_08930B: STA.b $3A

#_08930D: AND.b #$80
#_08930F: BNE Boom_NoDie

#_089311: LDA.b $50
#_089313: AND.b #$FE
#_089315: STA.b $50

;===================================================================================================

Boom_NoDie:
#_089317: SEP #$20

#_089319: RTS

;===================================================================================================

pool AncillaDraw_Boomerang

.prop
#_08931A: db $A4, $E4
#_08931C: db $64, $24
#_08931E: db $A2, $E2
#_089320: db $62, $22

.offset
#_089322: dw   2,  -2
#_089326: dw   2,   2
#_08932A: dw  -2,   2
#_08932E: dw  -2,  -2

.oam_offset
#_089332: dw $0180
#_089334: dw $00D0

.rotation
#_089336: db $03, $02

pool off

;---------------------------------------------------------------------------------------------------

AncillaDraw_Boomerang:
#_089338: JSR Ancilla_PrepOAMCoord

#_08933B: LDA.w $0C5E,X
#_08933E: BEQ .move_away

#_089340: LDA.b $EE
#_089342: STA.w $0C7C,X

#_089345: TAY

#_089346: LDA.w AncillaPriorities,Y
#_089349: STA.b $65

.move_away
#_08934B: LDA.w $0280,X
#_08934E: BEQ .normal_priority

#_089350: LDA.b #$30
#_089352: STA.b $65

.normal_priority
#_089354: LDA.b $11
#_089356: BNE .leave_rotation

#_089358: LDA.w $03B1,X
#_08935B: BEQ .leave_rotation

#_08935D: DEC.w $039F,X
#_089360: BPL .leave_rotation

#_089362: LDY.w $0394,X

#_089365: LDA.w .rotation,Y
#_089368: STA.w $039F,X

#_08936B: LDY.w $03A4,X

#_08936E: LDA.w $03A9,X
#_089371: BEQ .left_throw

#_089373: DEY

#_089374: BRA .set_rotation

.left_throw
#_089376: INY

.set_rotation
#_089377: TYA
#_089378: AND.b #$03
#_08937A: STA.w $03A4,X

;---------------------------------------------------------------------------------------------------

.leave_rotation
#_08937D: PHX

#_08937E: LDA.w $0394,X
#_089381: ASL A
#_089382: ASL A
#_089383: STA.b $72

#_089385: LDA.w $03A4,X
#_089388: ASL A
#_089389: ASL A
#_08938A: TAY

#_08938B: REP #$20

#_08938D: STZ.b $74

#_08938F: LDA.w .offset+0,Y
#_089392: CLC
#_089393: ADC.b $00
#_089395: STA.b $00

#_089397: LDA.w .offset+2,Y
#_08939A: CLC
#_08939B: ADC.b $02
#_08939D: STA.b $02
#_08939F: STA.b $04

#_0893A1: LDA.w $03B1,X
#_0893A4: AND.w #$00FF
#_0893A7: BNE .general_oam

#_0893A9: LDA.w $0FB3
#_0893AC: AND.w #$00FF
#_0893AF: ASL A
#_0893B0: TAX

#_0893B1: LDA.w .oam_offset,X
#_0893B4: PHA

#_0893B5: LSR A
#_0893B6: LSR A
#_0893B7: CLC

#_0893B8: ADC.w #$0A20
#_0893BB: STA.b $92

#_0893BD: PLA
#_0893BE: CLC
#_0893BF: ADC.w #$0800
#_0893C2: STA.b $90

;---------------------------------------------------------------------------------------------------

.general_oam
#_0893C4: SEP #$20

#_0893C6: TYA
#_0893C7: LSR A
#_0893C8: LSR A
#_0893C9: CLC
#_0893CA: ADC.b $72
#_0893CC: TAX

#_0893CD: LDY.b #$00
#_0893CF: JSR Ancilla_SetOAM_XY_safe

#_0893D2: LDA.b #$26
#_0893D4: STA.b ($90),Y

#_0893D6: INY

#_0893D7: LDA.w .prop,X
#_0893DA: AND.b #$CF
#_0893DC: ORA.b $65
#_0893DE: STA.b ($90),Y

#_0893E0: LDA.b #$02
#_0893E2: ORA.b $75
#_0893E4: STA.b ($92)

#_0893E6: PLX

#_0893E7: RTS

;===================================================================================================

Ancilla06_WallHit:
#_0893E8: DEC.w $039F,X
#_0893EB: BPL WallHit_JustDraw

#_0893ED: LDA.w $0C5E,X
#_0893F0: INC A
#_0893F1: CMP.b #$05
#_0893F3: BEQ WallHit_JustDie

#_0893F5: STA.w $0C5E,X

#_0893F8: LDA.b #$01
#_0893FA: STA.w $039F,X

#_0893FD: BRA WallHit_JustDraw

;===================================================================================================

Ancilla1B_SwordWallHit:
#_0893FF: JSR Ancilla_SpriteAlert

#_089402: DEC.w $03B1,X
#_089405: BPL WallHit_JustDraw

#_089407: LDA.w $0C5E,X
#_08940A: INC A
#_08940B: CMP.b #$08
#_08940D: BEQ WallHit_JustDie

#_08940F: STA.w $0C5E,X

#_089412: LDA.b #$01
#_089414: STA.w $03B1,X

#_089417: BRA WallHit_JustDraw

;---------------------------------------------------------------------------------------------------

WallHit_JustDie:
#_089419: BRL Ancilla_DeleteSelf

;---------------------------------------------------------------------------------------------------

WallHit_JustDraw:
#_08941C: BRL AncillaDraw_WallHit

;===================================================================================================

pool AncillaDraw_WallHit

.char
#_08941F: db $80, $00, $00, $00
#_089423: db $92, $00, $00, $00
#_089427: db $81, $81, $81, $81
#_08942B: db $82, $82, $82, $82
#_08942F: db $93, $93, $93, $93
#_089433: db $92, $00, $00, $00
#_089437: db $B9, $00, $00, $00
#_08943B: db $90, $90, $00, $00

.prop
#_08943F: db $32, $00, $00, $00
#_089443: db $32, $00, $00, $00
#_089447: db $32, $72, $B2, $F2
#_08944B: db $32, $72, $B2, $F2
#_08944F: db $32, $72, $B2, $F2
#_089453: db $32, $00, $00, $00
#_089457: db $72, $00, $00, $00
#_08945B: db $32, $F2, $00, $00

.offset_y
#_08945F: dw  -4,   0,   0,   0
#_089467: dw  -4,   0,   0,   0
#_08946F: dw  -8,  -8,   0,   0
#_089477: dw  -8,  -8,   0,   0
#_08947F: dw  -8,  -8,   0,   0
#_089487: dw  -4,   0,   0,   0
#_08948F: dw  -4,   0,   0,   0
#_089497: dw  -8,   0,   0,   0

.offset_x
#_08949F: dw  -4,   0,   0,   0
#_0894A7: dw  -4,   0,   0,   0
#_0894AF: dw  -8,   0,  -8,   0
#_0894B7: dw  -8,   0,  -8,   0
#_0894BF: dw  -8,   0,  -8,   0
#_0894C7: dw  -4,   0,   0,   0
#_0894CF: dw  -4,   0,   0,   0
#_0894D7: dw  -8,   0,   0,   0

pool off

;---------------------------------------------------------------------------------------------------

AncillaDraw_WallHit:
#_0894DF: JSR Ancilla_PrepOAMCoord

#_0894E2: REP #$20

#_0894E4: LDA.b $00
#_0894E6: STA.b $04

#_0894E8: LDA.b $02
#_0894EA: STA.b $06

#_0894EC: SEP #$20

#_0894EE: LDA.b #$03
#_0894F0: STA.b $08

#_0894F2: PHX

#_0894F3: LDA.w $0C5E,X
#_0894F6: ASL A
#_0894F7: ASL A
#_0894F8: TAX

;---------------------------------------------------------------------------------------------------

#_0894F9: LDY.b #$00

.next_object
#_0894FB: LDA.w .char,X
#_0894FE: BEQ .skip

#_089500: PHX

#_089501: TXA
#_089502: ASL A
#_089503: TAX

#_089504: REP #$20

#_089506: LDA.w .offset_y,X
#_089509: CLC
#_08950A: ADC.b $04
#_08950C: STA.b $00

#_08950E: LDA.w .offset_x,X
#_089511: CLC
#_089512: ADC.b $06
#_089514: STA.b $02

#_089516: SEP #$20

#_089518: PLX

#_089519: JSR Ancilla_SetOAM_XY

#_08951C: LDA.w .char,X
#_08951F: STA.b ($90),Y

#_089521: INY

#_089522: LDA.w .prop,X
#_089525: AND.b #$CF
#_089527: ORA.b $65
#_089529: STA.b ($90),Y

#_08952B: INY

#_08952C: PHY

#_08952D: TYA
#_08952E: SEC
#_08952F: SBC.b #$04
#_089531: LSR A
#_089532: LSR A
#_089533: TAY

#_089534: LDA.b #$00
#_089536: STA.b ($92),Y

#_089538: PLY

.skip
#_089539: JSR Ancilla_AllocateOAMFromCustomRegion

#_08953C: INX
#_08953D: DEC.b $08

#_08953F: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_089541: PLX

#_089542: RTS

;===================================================================================================

Bomb_timer:
#_089543: db 160,   6,   4,   4
#_089547: db   4,   4,   4,   6
#_08954B: db   6,   6,   6

Bomb_anim_step:
#_08954E: db $00, $01, $02, $03
#_089552: db $02, $03, $04, $05
#_089556: db $06, $07, $08, $09

;===================================================================================================

Ancilla07_Bomb:
#_08955A: LDA.b $11
#_08955C: BEQ .main

#_08955E: CMP.b #$08
#_089560: BEQ .staircase

#_089562: CMP.b #$10
#_089564: BNE .not_staircase

.staircase
#_089566: JSR Ancilla_HandleLiftLogic

#_089569: BRA .proceed_to_draw

;---------------------------------------------------------------------------------------------------

.not_staircase
#_08956B: TXA
#_08956C: INC A
#_08956D: CMP.w $02EC
#_089570: BNE .proceed_to_draw

#_089572: LDA.w $0380,X
#_089575: BEQ .proceed_to_draw

#_089577: CMP.b #$03
#_089579: BEQ .fully_held

#_08957B: LDY.b #$03
#_08957D: JSR Ancilla_LatchLinkCoordinates
#_089580: JSR Ancilla_LatchAltitudeAboveLink

#_089583: LDA.b #$03
#_089585: STA.w $0380,X

.fully_held
#_089588: JSR Ancilla_LatchCarriedPosition

.proceed_to_draw
#_08958B: BRL Bomb_DoDraw

;---------------------------------------------------------------------------------------------------

.main
#_08958E: JSR Ancilla_HandleLiftLogic
#_089591: JSR Ancilla_LatchYCoordToZ

#_089594: LDA.w $0C72,X
#_089597: STA.b $74

#_089599: LDA.w $0280,X
#_08959C: STA.b $75

#_08959E: STZ.w $0280,X

#_0895A1: JSR Ancilla_CheckTileCollision_Class2
#_0895A4: PHP

#_0895A5: LDA.b $1B
#_0895A7: BEQ .leave_layer

#_0895A9: LDA.w $0385,X
#_0895AC: BEQ .leave_layer

#_0895AE: LDA.w $03E4,X
#_0895B1: CMP.b #!TILETYPE_1C
#_0895B3: BNE .leave_layer

#_0895B5: LDA.b #$01
#_0895B7: STA.w $03D5,X

.leave_layer
#_0895BA: PLP
#_0895BB: BCC .no_tile_collision

;---------------------------------------------------------------------------------------------------

.check_for_lift
#_0895BD: BIT.w $0308
#_0895C0: BPL .link_not_holding

#_0895C2: LDA.w $0309
#_0895C5: BEQ .no_tile_collision

.link_not_holding
#_0895C7: LDA.b $75
#_0895C9: BNE .ignore_tile_collision

#_0895CB: LDA.w $0BF0,X
#_0895CE: BNE .ignore_tile_collision

#_0895D0: LDA.b #$01
#_0895D2: STA.w $0BF0,X

#_0895D5: LDA.b #$04
#_0895D7: STA.b $0E

#_0895D9: LDY.b #$FC

#_0895DB: LDA.w $0C72,X
#_0895DE: CMP.b #$01
#_0895E0: BNE .not_downwards

#_0895E2: LDA.b #$10
#_0895E4: STA.b $0E

#_0895E6: LDY.b #$F0

;---------------------------------------------------------------------------------------------------

.not_downwards
#_0895E8: LDA.w $0C22,X
#_0895EB: BEQ .not_moving_y
#_0895ED: BPL .positive_y

#_0895EF: LDY.b $0E

.positive_y
#_0895F1: TYA
#_0895F2: STA.w $0C22,X

;---------------------------------------------------------------------------------------------------

.not_moving_y
#_0895F5: LDY.b #$FC

#_0895F7: LDA.w $0C2C,X
#_0895FA: BEQ .not_moving_x
#_0895FC: BPL .positive_x

#_0895FE: LDY.b #$04

.positive_x
#_089600: TYA
#_089601: STA.w $0C2C,X

.not_moving_x
#_089604: LDA.w $0C72,X
#_089607: CMP.b #$01
#_089609: BNE .ignore_tile_collision

#_08960B: LDA.w $029E,X
#_08960E: BEQ .ignore_tile_collision

#_089610: LDA.b #$FC
#_089612: STA.w $0C22,X

#_089615: LDA.b #$02
#_089617: STA.w $0385,X

.ignore_tile_collision
#_08961A: BRL Bomb_HandleState

;---------------------------------------------------------------------------------------------------

.no_tile_collision
#_08961D: BIT.w $0308
#_089620: BMI .ignore_tile_collision

#_089622: LDA.w $029E,X
#_089625: BEQ .on_ground

#_089627: CMP.b #$FF
#_089629: BNE .ignore_tile_collision

.on_ground
#_08962B: LDA.b #$10
#_08962D: STA.w $0C72,X

#_089630: LDA.w $0280,X
#_089633: PHA

#_089634: JSR Ancilla_CheckTileCollision

#_089637: PLA
#_089638: STA.w $0280,X

;---------------------------------------------------------------------------------------------------
; TODO ANALYZE
#_08963B: LDA.w $03E4,X
#_08963E: CMP.b #!TILETYPE_26
#_089640: BEQ .tile_staircase

#_089642: CMP.b #!TILETYPE_0C
#_089644: BEQ .tile_0C_1C

#_089646: CMP.b #!TILETYPE_1C
#_089648: BEQ .tile_0C_1C

#_08964A: CMP.b #!TILETYPE_20
#_08964C: BEQ .tile_pit

#_08964E: CMP.b #!TILETYPE_08
#_089650: BEQ .tile_deep_water

#_089652: CMP.b #!TILETYPE_68
#_089654: BEQ .tile_conveyor

#_089656: CMP.b #!TILETYPE_69
#_089658: BEQ .tile_conveyor

#_08965A: CMP.b #!TILETYPE_6A
#_08965C: BEQ .tile_conveyor

#_08965E: CMP.b #!TILETYPE_6B
#_089660: BEQ .tile_conveyor

#_089662: CMP.b #!TILETYPE_B6
#_089664: BEQ .tile_transit

#_089666: CMP.b #!TILETYPE_BC
#_089668: BEQ .tile_transit

#_08966A: AND.b #$F0
#_08966C: CMP.b #$B0
#_08966E: BEQ .tile_pit

;---------------------------------------------------------------------------------------------------

.tile_transit
#_089670: STZ.w $0C68,X

#_089673: LDA.w $0385,X
#_089676: BNE .ignore_tile_collision

#_089678: LDA.b #$02
#_08967A: STA.w $0C68,X

.bounce_to_state_handler
#_08967D: BRL Bomb_HandleState

;---------------------------------------------------------------------------------------------------

.tile_conveyor
#_089680: BRL Bomb_HandleConveyor

;---------------------------------------------------------------------------------------------------

.tile_staircase
#_089683: BRL .check_for_lift

;---------------------------------------------------------------------------------------------------

.tile_0C_1C
#_089686: BRL Bomb_HandleTiles_0C_1C

;---------------------------------------------------------------------------------------------------

.tile_deep_water
#_089689: TXA
#_08968A: INC A
#_08968B: CMP.w $02EC
#_08968E: BNE .water_reset_a

#_089690: STZ.w $02EC

.water_reset_a
#_089693: LDA.w $0C68,X
#_089696: BNE .bounce_to_state_handler

#_089698: LDA.w $0BFA,X
#_08969B: CLC
#_08969C: ADC.b #$E8
#_08969E: STA.w $0BFA,X

#_0896A1: LDA.b #$FF
#_0896A3: ADC.w $0C0E,X
#_0896A6: STA.w $0C0E,X

#_0896A9: BRL Ancilla_TransmuteToSplash

;---------------------------------------------------------------------------------------------------

.tile_pit
#_0896AC: LDA.w $0308
#_0896AF: BMI Bomb_HandleState

#_0896B1: STX.b $04

#_0896B3: LDA.w $02EC
#_0896B6: DEC A
#_0896B7: CMP.b $04
#_0896B9: BNE .water_reset_b

#_0896BB: STZ.w $02EC

.water_reset_b
#_0896BE: LDA.w $0C68,X
#_0896C1: BNE .bounce_to_state_handler

#_0896C3: BRL Ancilla_DeleteSelf

;---------------------------------------------------------------------------------------------------

Bomb_HandleTiles_0C_1C:
#_0896C6: LDA.w $046C
#_0896C9: CMP.b #$03
#_0896CB: BEQ .moving_floor

#_0896CD: LDA.w $0C7C,X
#_0896D0: BNE Bomb_HandleState

#_0896D2: LDA.w $029E,X
#_0896D5: BEQ Bomb_HandleState

#_0896D7: CMP.b #$FF
#_0896D9: BEQ Bomb_HandleState

#_0896DB: LDA.b #$01
#_0896DD: STA.w $0C7C,X

#_0896E0: BRA Bomb_HandleState

;---------------------------------------------------------------------------------------------------

.moving_floor
#_0896E2: LDA.w $0310
#_0896E5: CLC
#_0896E6: ADC.w $0BFA,X
#_0896E9: STA.b $72

#_0896EB: LDA.w $0311
#_0896EE: ADC.w $0C0E,X
#_0896F1: STA.b $73

#_0896F3: LDA.w $0312
#_0896F6: CLC
#_0896F7: ADC.w $0C04,X
#_0896FA: STA.w $0C04,X

#_0896FD: LDA.w $0313
#_089700: ADC.w $0C18,X
#_089703: STA.w $0C18,X

#_089706: BRA Bomb_HandleState

;===================================================================================================

Bomb_HandleConveyor:
#_089708: JSR Ancilla_ApplyConveyor

;===================================================================================================

Bomb_HandleState:
#_08970B: JSR Ancilla_SetYFrom_DP72

#_08970E: LDA.b $74
#_089710: STA.w $0C72,X

#_089713: LDA.b $75
#_089715: ORA.w $0280,X
#_089718: STA.w $0280,X

#_08971B: JSR Bomb_CheckSpriteAndPlayerDamage

#_08971E: DEC.w $039F,X

#_089721: LDA.w $039F,X
#_089724: BNE .delay

#_089726: INC.w $0C5E,X

#_089729: LDA.w $0C5E,X
#_08972C: CMP.b #$01
#_08972E: BNE .not_just_exploded

#_089730: LDA.b #!SFX2_0C
#_089732: JSR Ancilla_SFX2_Pan

#_089735: TXA
#_089736: INC A
#_089737: CMP.w $02EC
#_08973A: BNE .not_just_exploded

#_08973C: STZ.w $02EC

#_08973F: BIT.w $0308
#_089742: BPL .not_just_exploded

#_089744: STZ.w $0308
#_089747: STZ.b $50

;---------------------------------------------------------------------------------------------------

.not_just_exploded
#_089749: LDA.w $0C5E,X
#_08974C: CMP.b #$0B
#_08974E: BNE .not_fully_exploded

#_089750: LDY.b #$00 ; no ancilla

#_089752: LDA.w $0C54,X
#_089755: BEQ .dont_become_debris ; except b/c is 0, you could have gone to 975A

#_089757: LDY.b #!ANCILLA_08

.dont_become_debris
#_089759: TYA
#_08975A: STA.w $0C4A,X

#_08975D: RTS

;---------------------------------------------------------------------------------------------------

.not_fully_exploded
#_08975E: TAY

#_08975F: LDA.w Bomb_timer,Y
#_089762: STA.w $039F,X

;---------------------------------------------------------------------------------------------------

.delay
#_089765: LDA.w $0C5E,X

#_089768: CMP.b #$07
#_08976A: BNE Bomb_DoDraw

#_08976C: LDA.w $039F,X
#_08976F: CMP.b #$02
#_089771: BNE Bomb_DoDraw

#_089773: PHX

#_089774: LDA.w $0BFA,X
#_089777: STA.b $00

#_089779: LDA.w $0C0E,X
#_08977C: STA.b $01

#_08977E: LDA.w $0C04,X
#_089781: STA.b $02

#_089783: LDA.w $0C18,X
#_089786: STA.b $03

#_089788: STX.b $0E

#_08978A: TXA
#_08978B: ASL A
#_08978C: TAX

#_08978D: STZ.w $03B6,X
#_089790: STZ.w $03B7,X

#_089793: JSL Bomb_CheckForDestructibles

#_089797: PLX

#_089798: TXY
#_089799: TXA

#_08979A: ASL A
#_08979B: TAX

#_08979C: LDA.w $03B6,X
#_08979F: ORA.w $03B7,X
#_0897A2: BEQ .didnt_break_wall

#_0897A4: TYX

#_0897A5: LDA.b #$01
#_0897A7: STA.w $0C54,X

.didnt_break_wall
#_0897AA: TYX

;===================================================================================================

Bomb_DoDraw:
#_0897AB: JSR AncillaDraw_Bomb

;---------------------------------------------------------------------------------------------------

#EXIT_0897AE:
#_0897AE: RTS

;===================================================================================================

pool Ancilla_ApplyConveyor

.speed_y
#_0897AF: db  -8,   8,   0,   0

.speed_x
#_0897B3: db   0,   0,  -8,   8

pool off

;---------------------------------------------------------------------------------------------------

Ancilla_ApplyConveyor:
#_0897B7: LDA.w $03E4,X
#_0897BA: SEC
#_0897BB: SBC.b #!TILETYPE_68
#_0897BD: TAY

#_0897BE: LDA.w .speed_y,Y
#_0897C1: STA.w $0C22,X

#_0897C4: LDA.w .speed_x,Y
#_0897C7: STA.w $0C2C,X

#_0897CA: JSR Ancilla_Move_Y
#_0897CD: JSR Ancilla_Move_X

#_0897D0: LDA.w $0BFA,X
#_0897D3: STA.b $72

#_0897D5: LDA.w $0C0E,X
#_0897D8: STA.b $73

#_0897DA: RTS

;===================================================================================================

pool Bomb_CheckSpriteAndPlayerDamage

.recoil
#_0897DB: db $20, $20, $20, $20
#_0897DF: db $20, $20, $1C, $1C
#_0897E3: db $1C, $1C, $1C, $1C
#_0897E7: db $18, $18, $18, $18

.recoil_z
#_0897EB: db $10, $10, $10, $10
#_0897EF: db $10, $10, $0C, $0C
#_0897F3: db $0C, $0C, $08, $08
#_0897F7: db $08, $08, $08, $08

.recoil_timer
#_0897FB: db  32,  32,  32,  32
#_0897FF: db  32,  32,  24,  24
#_089803: db  24,  24,  24,  24
#_089807: db  16,  16,  16,  16

.link_damage
#_08980B: db $08 ; green mail
#_08980C: db $04 ; blue mail
#_08980D: db $02 ; red mail

pool off

;===================================================================================================

Bomb_CheckSpriteAndPlayerDamage:
#_08980E: LDA.w $0C5E,X
#_089811: BEQ .no_damage

#_089813: CMP.b #$09
#_089815: BCS .no_damage

#_089817: JSR Bomb_CheckSpriteDamage

#_08981A: LDA.w $037B
#_08981D: BEQ .link_vulnerable

#_08981F: TXA
#_089820: INC A
#_089821: CMP.w $02EC
#_089824: BNE EXIT_0897AE

#_089826: LDA.w $0308
#_089829: AND.b #$80
#_08982B: BEQ EXIT_0897AE

#_08982D: LDA.w $0308
#_089830: AND.b #$7F
#_089832: STA.w $0308

#_089835: STZ.b $50

.no_damage
#_089837: BRL EXIT_0897AE

;---------------------------------------------------------------------------------------------------

.link_vulnerable
#_08983A: LDA.b $4D
#_08983C: BNE .no_damage

#_08983E: LDA.b $46
#_089840: BNE .no_damage

#_089842: LDA.w $0C7C,X
#_089845: CMP.b $EE
#_089847: BNE .no_damage

;---------------------------------------------------------------------------------------------------

#_089849: LDA.b $22
#_08984B: STA.b $00

#_08984D: LDA.b $23
#_08984F: STA.b $08

#_089851: LDA.b $20
#_089853: STA.b $01

#_089855: LDA.b $21
#_089857: STA.b $09

#_089859: LDA.b #$10
#_08985B: STA.b $02

#_08985D: LDA.b #$18
#_08985F: STA.b $03

#_089861: LDA.w $0C04,X
#_089864: STA.b $04

#_089866: LDA.w $0C18,X
#_089869: STA.b $05

#_08986B: LDA.w $0BFA,X
#_08986E: STA.b $06

#_089870: LDA.w $0C0E,X
#_089873: STA.b $07

;---------------------------------------------------------------------------------------------------

#_089875: REP #$20

#_089877: LDA.b $04
#_089879: CLC
#_08987A: ADC.w #$FFF0
#_08987D: STA.b $04

#_08987F: LDA.b $06
#_089881: CLC
#_089882: ADC.w #$FFF0
#_089885: STA.b $06

#_089887: SEP #$20

#_089889: LDA.b $05
#_08988B: STA.b $0A

#_08988D: LDA.b $06
#_08988F: STA.b $05

#_089891: LDA.b $07
#_089893: STA.b $0B

#_089895: LDA.b #$20
#_089897: STA.b $06
#_089899: STA.b $07

#_08989B: JSL CheckIfHitBoxesOverlap_long
#_08989F: BCC .exit

;---------------------------------------------------------------------------------------------------

#_0898A1: LDA.w $0C04,X
#_0898A4: CLC
#_0898A5: ADC.b #$F8
#_0898A7: STA.b $00

#_0898A9: LDA.w $0C18,X
#_0898AC: ADC.b #$FF
#_0898AE: STA.b $01

#_0898B0: LDA.w $0BFA,X
#_0898B3: CLC
#_0898B4: ADC.b #$F4
#_0898B6: STA.b $02

#_0898B8: LDA.w $0C0E,X
#_0898BB: ADC.b #$FF
#_0898BD: STA.b $03

#_0898BF: PHX

#_0898C0: JSR Bomb_GetDisplacementFromLink

#_0898C3: LDA.w .recoil,Y
#_0898C6: TAY

#_0898C7: JSL Bomb_HijackSlot0ForRecoil
#_0898CB: PLX

;---------------------------------------------------------------------------------------------------

#_0898CC: LDA.w $031F
#_0898CF: BNE .exit

#_0898D1: LDA.w $0FFC
#_0898D4: CMP.b #$02
#_0898D6: BEQ .exit

#_0898D8: LDA.b $00
#_0898DA: STA.b $27

#_0898DC: LDA.b $01
#_0898DE: STA.b $28

#_0898E0: JSR Bomb_GetDisplacementFromLink

#_0898E3: LDA.w .recoil_z,Y
#_0898E6: STA.b $29
#_0898E8: STA.w $02C7

#_0898EB: LDA.w .recoil_timer,Y
#_0898EE: STA.b $46

#_0898F0: LDA.b #$01
#_0898F2: STA.b $4D

#_0898F4: LDA.b #$3A
#_0898F6: STA.w $031F

; No damage if boss heart is collecteed
#_0898F9: LDA.w $0403
#_0898FC: AND.b #$80
#_0898FE: BNE .exit

; use mail to get damage
#_089900: LDA.l $7EF35B
#_089904: TAY

#_089905: LDA.w .link_damage,Y
#_089908: STA.w $0373

.exit
#_08990B: RTS

;===================================================================================================

pool AncillaCarry

.offset_y
#_08990C: dw  16,   8,   4,   4
#_089914: dw   8,   2,  -1,  -1
#_08991C: dw   2,   2,  -1,  -1

.offset_x
#_089924: dw   8,   8,  -4,  20
#_08992C: dw   8,   8,   8,   8
#_089934: dw   8,   8,   8,   8

.timer
#_08993C: db  16,   8,   9

.offset_z
#_08993F: dw  -2,  -1
#_089943: dw   0,  -2
#_089947: dw  -1,   0

.throw_speed_y
#_08994B: db -32,  32,   0,   0

.throw_speed_x
#_08994F: db   0,   0, -32,  32

.unused_a
#_089953: db $08, $08, $00, $00
#_089957: db $04, $04, $00, $00

.unused_b
#_08995B: db $00, $00, $08, $08
#_08995F: db $00, $00, $04, $04

.bounce_z
#_089963: db  16,  16

.unused_c
#_089965: db $10, $10, $08, $08, $08, $08

.direction
#_08996B: db $00, $02, $04, $06

pool off

;===================================================================================================

Ancilla_HandleLiftLogic:
#_08996F: LDA.w $03EA,X
#_089972: BNE .not_liftable

#_089974: LDA.w $0385,X
#_089977: BEQ .not_airborne

#_089979: BRL AncillaCarry_Airborne

.not_airborne
#_08997C: STX.b $00

#_08997E: LDA.w $02EC
#_089981: BEQ .link_not_close

#_089983: DEC A
#_089984: CMP.b $00
#_089986: BEQ .is_closest_for_lift

#_089988: RTS

;---------------------------------------------------------------------------------------------------

.is_closest_for_lift
#_089989: LDY.w $037B
#_08998C: BNE .link_invulnerable

#_08998E: LDA.b $46
#_089990: BNE .link_cant_handle_it

.link_invulnerable
#_089992: LDA.w $03FD
#_089995: BNE .link_cant_handle_it

#_089997: LDA.b $4D
#_089999: CMP.b #$01
#_08999B: BNE .link_not_recoiling

;---------------------------------------------------------------------------------------------------

.link_cant_handle_it
#_08999D: LDA.b #$01
#_08999F: STA.w $03EA,X

#_0899A2: STZ.w $0294,X
#_0899A5: STZ.w $02EC
#_0899A8: STZ.w $0BF0,X

#_0899AB: BRA .not_liftable

;---------------------------------------------------------------------------------------------------

.link_not_recoiling
#_0899AD: LDA.w $0308
#_0899B0: BPL .link_not_close

#_0899B2: BRL .link_hands_are_full

;---------------------------------------------------------------------------------------------------

.not_liftable
#_0899B5: BRL Ancilla_LatchCarriedPosition_handle_altitude

;---------------------------------------------------------------------------------------------------

.link_not_close
#_0899B8: STZ.w $02EC

#_0899BB: LDA.w $0C5E,X
#_0899BE: BNE .exit

#_0899C0: LDA.w $0308
#_0899C3: BNE .exit

#_0899C5: LDY.b #$00
#_0899C7: JSR Ancilla_CheckLinkCollision
#_0899CA: BCC .exit

#_0899CC: LDA.w $0C7C,X
#_0899CF: CMP.b $EE
#_0899D1: BNE .exit

#_0899D3: LDA.b $08
#_0899D5: CMP.b #$10
#_0899D7: BCS .y_difference_big

#_0899D9: LDA.b $0A
#_0899DB: CMP.b #$0C
#_0899DD: BCC .continue_lift

;---------------------------------------------------------------------------------------------------

.y_difference_big
#_0899DF: LDA.b $08
#_0899E1: CMP.b $0A
#_0899E3: BCC .y_difference_smaller

#_0899E5: LDY.b #$00

#_0899E7: LDA.b $04
#_0899E9: BPL .check_direction

#_0899EB: INY
#_0899EC: BRA .check_direction

;---------------------------------------------------------------------------------------------------

.y_difference_smaller
#_0899EE: LDY.b #$02

#_0899F0: LDA.b $06
#_0899F2: BPL .check_direction

#_0899F4: INY

.check_direction
#_0899F5: LDA.w AncillaCarry_direction,Y
#_0899F8: CMP.b $2F
#_0899FA: BNE .exit

;---------------------------------------------------------------------------------------------------

.continue_lift
#_0899FC: TXA
#_0899FD: INC A
#_0899FE: STA.w $02EC

#_089A01: STZ.w $0380,X

#_089A04: LDA.w AncillaCarry_timer
#_089A07: STA.w $03B1,X

#_089A0A: STZ.w $0385,X
#_089A0D: STZ.w $029E,X

.exit
#_089A10: RTS

;---------------------------------------------------------------------------------------------------

.link_hands_are_full
#_089A11: LDA.w $0309
#_089A14: CMP.b #$02
#_089A16: BEQ Ancilla_HandleThrowLogic

#_089A18: LDA.w $02EC
#_089A1B: BEQ Ancilla_HandleThrowLogic

#_089A1D: LDY.w $0380,X
#_089A20: CPY.b #$03
#_089A22: BEQ Ancilla_HandleThrowLogic

#_089A24: CPY.b #$00
#_089A26: BNE .skip_lift_sfx

#_089A28: LDA.w $03B1,X
#_089A2B: CMP.b #$10
#_089A2D: BNE .skip_lift_sfx

#_089A2F: LDA.b #!SFX2_1D
#_089A31: JSR Ancilla_SFX2_Pan

;---------------------------------------------------------------------------------------------------

.skip_lift_sfx
#_089A34: DEC.w $03B1,X
#_089A37: BPL Ancilla_LatchLinkCoordinates

#_089A39: INY
#_089A3A: TYA
#_089A3B: STA.w $0380,X

#_089A3E: LDA.w AncillaCarry_timer,Y
#_089A41: STA.w $03B1,X

#_089A44: CPY.b #$03
#_089A46: BNE Ancilla_LatchLinkCoordinates

;---------------------------------------------------------------------------------------------------

Ancilla_LatchAltitudeAboveLink:
#_089A48: LDA.b #$11
#_089A4A: STA.w $029E,X

#_089A4D: LDA.w $0BFA,X
#_089A50: CLC
#_089A51: ADC.b #$11
#_089A53: STA.w $0BFA,X

#_089A56: LDA.w $0C0E,X
#_089A59: ADC.b #$00
#_089A5B: STA.w $0C0E,X

#_089A5E: STZ.w $0280,X

#_089A61: BRA EXIT_089A8D

;===================================================================================================

Ancilla_LatchLinkCoordinates:
#_089A63: TYA
#_089A64: ASL A ; x8
#_089A65: ASL A
#_089A66: ASL A
#_089A67: CLC
#_089A68: ADC.b $2F
#_089A6A: TAY

#_089A6B: LDA.b $20
#_089A6D: CLC
#_089A6E: ADC.w AncillaCarry_offset_y+0,Y
#_089A71: STA.w $0BFA,X

#_089A74: LDA.b $21
#_089A76: ADC.w AncillaCarry_offset_y+1,Y
#_089A79: STA.w $0C0E,X

#_089A7C: LDA.b $22
#_089A7E: CLC
#_089A7F: ADC.w AncillaCarry_offset_x+0,Y
#_089A82: STA.w $0C04,X

#_089A85: LDA.b $23
#_089A87: ADC.w AncillaCarry_offset_x+1,Y
#_089A8A: STA.w $0C18,X

;---------------------------------------------------------------------------------------------------

#EXIT_089A8D:
#_089A8D: RTS

;===================================================================================================

Ancilla_HandleThrowLogic:
#_089A8E: LDA.w $0380,X
#_089A91: CMP.b #$03
#_089A93: BNE EXIT_089A8D

#_089A95: LDA.w $0309
#_089A98: CMP.b #$02
#_089A9A: BEQ AncillaCarry_HandleThrow

#_089A9C: LDA.b $11
#_089A9E: BNE .cant_throw

#_089AA0: LDA.b $F6
#_089AA2: ORA.b $F4
#_089AA4: AND.b #$80
#_089AA6: BNE AncillaCarry_HandleThrow

.cant_throw
#_089AA8: BRL AncillaCarry_HandleFalling

;===================================================================================================

AncillaCarry_HandleThrow:
#_089AAB: LDA.b $2F
#_089AAD: LSR A
#_089AAE: STA.w $0C72,X

#_089AB1: TAY

#_089AB2: LDA.b #$18
#_089AB4: STA.w $0294,X

#_089AB7: LDA.w AncillaCarry_throw_speed_y,Y
#_089ABA: STA.w $0C22,X

#_089ABD: LDA.w AncillaCarry_throw_speed_x,Y
#_089AC0: STA.w $0C2C,X

#_089AC3: LDA.b #$02
#_089AC5: STA.w $0309

#_089AC8: DEC A
#_089AC9: STA.w $0385,X

#_089ACC: STZ.w $02EC

#_089ACF: STZ.w $0BF0,X
#_089AD2: STZ.w $0380,X
#_089AD5: STZ.w $0280,X

#_089AD8: LDA.b #!SFX3_13
#_089ADA: JSR Ancilla_SFX3_Pan

;===================================================================================================

AncillaCarry_Airborne:
#_089ADD: LDA.w $0C5E,X
#_089AE0: BEQ .continue

#_089AE2: RTS

.continue
#_089AE3: LDA.w $0294,X
#_089AE6: SEC
#_089AE7: SBC.b #$02
#_089AE9: STA.w $0294,X

#_089AEC: JSR Ancilla_Move_Y
#_089AEF: JSR Ancilla_Move_X

#_089AF2: LDA.w $029E,X
#_089AF5: STA.b $00

#_089AF7: JSR Ancilla_Move_Z

#_089AFA: LDA.w $0BF0,X
#_089AFD: BEQ .dont_adjust_altitude

#_089AFF: LDA.w $0C72,X
#_089B02: CMP.b #$01
#_089B04: BNE .dont_adjust_altitude

#_089B06: LDA.w $0BFA,X
#_089B09: STA.b $0C

#_089B0B: LDA.w $0C0E,X
#_089B0E: STA.b $0D

#_089B10: LDA.w $029E,X
#_089B13: BMI .dont_adjust_altitude

#_089B15: SEC
#_089B16: SBC.b $00
#_089B18: STA.b $0E

#_089B1A: REP #$20

#_089B1C: LDA.b $0E
#_089B1E: AND.w #$00FF
#_089B21: CMP.w #$0080
#_089B24: BCC .y_is_positive

#_089B26: ORA.w #$FF00

.y_is_positive
#_089B29: CLC
#_089B2A: ADC.b $0C
#_089B2C: STA.b $0C

#_089B2E: SEP #$20

#_089B30: LDA.b $0C
#_089B32: STA.w $0BFA,X

#_089B35: LDA.b $0D
#_089B37: STA.w $0C0E,X

;---------------------------------------------------------------------------------------------------

.dont_adjust_altitude
#_089B3A: LDA.w $029E,X
#_089B3D: CMP.b #$80
#_089B3F: BCS .negative_z

.exit_a
#_089B41: RTS

.negative_z
#_089B42: CMP.b #$FF
#_089B44: BCS .exit_a

#_089B46: STZ.w $029E,X

#_089B49: LDA.b #!SFX2_21
#_089B4B: JSR Ancilla_SFX2_Pan

#_089B4E: INC.w $0385,X

#_089B51: LDA.w $0385,X
#_089B54: CMP.b #$03
#_089B56: BEQ .bounces_maxed

#_089B58: SEC
#_089B59: SBC.b #$02

#_089B5B: ASL A
#_089B5C: ASL A

#_089B5D: CLC
#_089B5E: ADC.w $0C72,X
#_089B61: TAY ; useless

;---------------------------------------------------------------------------------------------------

#_089B62: LDY.b #$00

#_089B64: LDA.w $0C22,X
#_089B67: BPL .positive_y

#_089B69: LDY.b #$01

#_089B6B: EOR.b #$FF
#_089B6D: INC A

.positive_y
#_089B6E: LSR A

#_089B6F: CPY.b #$01
#_089B71: BNE .dont_invert_y

#_089B73: EOR.b #$FF
#_089B75: INC A

.dont_invert_y
#_089B76: STA.w $0C22,X

;---------------------------------------------------------------------------------------------------

#_089B79: LDY.b #$00

#_089B7B: LDA.w $0C2C,X
#_089B7E: BPL .positive_x

#_089B80: LDY.b #$01

#_089B82: EOR.b #$FF
#_089B84: INC A

.positive_x
#_089B85: LSR A
#_089B86: CPY.b #$01
#_089B88: BNE .dont_invert_x

#_089B8A: EOR.b #$FF
#_089B8C: INC A

;---------------------------------------------------------------------------------------------------

.dont_invert_x
#_089B8D: STA.w $0C2C,X

#_089B90: LDA.w AncillaCarry_bounce_z,Y
#_089B93: STA.w $0294,X

#_089B96: LDA.w $0BF0,X
#_089B99: BEQ .exit_b

#_089B9B: STZ.w $0BF0,X

#_089B9E: RTS

;---------------------------------------------------------------------------------------------------

.bounces_maxed
#_089B9F: STZ.w $029E,X
#_089BA2: STZ.w $0385,X
#_089BA5: STZ.w $0BF0,X

#_089BA8: STZ.b $5E

#_089BAA: STZ.w $0C22,X
#_089BAD: STZ.w $0C2C,X
#_089BB0: STZ.w $0294,X

#_089BB3: LDA.w $03D5,X
#_089BB6: BEQ .exit_b

#_089BB8: STA.w $0C7C,X

#_089BBB: STZ.w $03D5,X

.exit_b
#_089BBE: RTS

;===================================================================================================

AncillaCarry_HandleFalling:
#_089BBF: LDA.w $0C5E,X
#_089BC2: BNE EXIT_089C36

#_089BC4: LDA.b $5B
#_089BC6: CMP.b #$02
#_089BC8: BCC .continue

#_089BCA: STZ.b $5E

#_089BCC: TXA
#_089BCD: INC A

#_089BCE: CMP.w $02EC
#_089BD1: BNE .exit

#_089BD3: STZ.w $02EC

#_089BD6: STZ.w $0C4A,X

.exit
#_089BD9: RTS

.continue
#_089BDA: LDA.w $0345
#_089BDD: ORA.w $02E0
#_089BE0: BEQ Ancilla_LatchCarriedPosition

#_089BE2: STZ.w $0308

#_089BE5: BRL AncillaCarry_HandleThrow

;===================================================================================================

Ancilla_LatchCarriedPosition:
#_089BE8: LDA.b $2E
#_089BEA: ASL A
#_089BEB: TAY

#_089BEC: LDA.b #$0C
#_089BEE: STA.b $5E

#_089BF0: LDA.b $EE
#_089BF2: STA.w $0C7C,X

#_089BF5: LDA.w $0476
#_089BF8: STA.w $03CA,X

#_089BFB: REP #$20

#_089BFD: LDA.b $24
#_089BFF: CMP.w #$FFFF
#_089C02: BNE .positive

#_089C04: LDA.w #$0000

.positive
#_089C07: EOR.w #$FFFF
#_089C0A: INC A

#_089C0B: CLC
#_089C0C: ADC.b $20

#_089C0E: CLC
#_089C0F: ADC.w AncillaCarry_offset_z,Y

#_089C12: CLC
#_089C13: ADC.w #$0012
#_089C16: STA.b $00

;---------------------------------------------------------------------------------------------------

#_089C18: LDA.b $22
#_089C1A: CLC
#_089C1B: ADC.w #$0008
#_089C1E: STA.b $02

#_089C20: SEP #$20

#_089C22: LDA.b $00
#_089C24: STA.w $0BFA,X

#_089C27: LDA.b $01
#_089C29: STA.w $0C0E,X

#_089C2C: LDA.b $02
#_089C2E: STA.w $0C04,X

#_089C31: LDA.b $03
#_089C33: STA.w $0C18,X

;---------------------------------------------------------------------------------------------------

#EXIT_089C36:
#_089C36: RTS

;---------------------------------------------------------------------------------------------------

.handle_altitude
#_089C37: LDA.w $0C5E,X
#_089C3A: BNE EXIT_089C36

#_089C3C: LDA.w $0380,X
#_089C3F: CMP.b #$03
#_089C41: BNE .restore_lift

#_089C43: LDA.w $0294,X
#_089C46: SEC
#_089C47: SBC.b #$02
#_089C49: STA.w $0294,X

#_089C4C: JSR Ancilla_Move_Z

#_089C4F: LDA.w $029E,X
#_089C52: BEQ .zero_zee

#_089C54: CMP.b #$FC
#_089C56: BCC .exit

;---------------------------------------------------------------------------------------------------

.zero_zee
#_089C58: STZ.w $029E,X

#_089C5B: INC.w $03EA,X

#_089C5E: LDA.w $03EA,X
#_089C61: CMP.b #$03
#_089C63: BEQ .bounces_maxed

#_089C65: LDA.b #$18
#_089C67: STA.w $0294,X

#_089C6A: BRA .exit

.bounces_maxed
#_089C6C: STZ.w $029E,X
#_089C6F: STZ.w $0380,X

.restore_lift
#_089C72: STZ.w $03EA,X
#_089C75: STZ.b $5E

.exit
#_089C77: RTS

;===================================================================================================

Ancilla_LatchYCoordToZ:
#_089C78: LDA.w $0BFA,X
#_089C7B: STA.b $72

#_089C7D: LDA.w $0C0E,X
#_089C80: STA.b $73

#_089C82: STZ.b $0D
#_089C84: STZ.b $0C

#_089C86: LDA.w $0C72,X
#_089C89: ASL A
#_089C8A: TAY

#_089C8B: CMP.b #$02
#_089C8D: BNE .continue

#_089C8F: LDA.w $029E,X
#_089C92: STA.b $0C
#_089C94: BPL .continue

#_089C96: LDA.b #$FF
#_089C98: STA.b $0D

;---------------------------------------------------------------------------------------------------

.continue
#_089C9A: REP #$20

#_089C9C: LDA.b $0C
#_089C9E: CMP.w #$FFFF
#_089CA1: BNE .not_ground_impact

#_089CA3: LDA.w #$0000

.not_ground_impact
#_089CA6: EOR.w #$FFFF
#_089CA9: INC A
#_089CAA: CLC
#_089CAB: ADC.b $72
#_089CAD: STA.b $0E

#_089CAF: SEP #$20

#_089CB1: LDA.b $0E
#_089CB3: STA.w $0BFA,X

#_089CB6: LDA.b $0F
#_089CB8: STA.w $0C0E,X

#_089CBB: RTS

;===================================================================================================

Ancilla_SetYFrom_DP72:
#_089CBC: LDA.b $73
#_089CBE: STA.w $0C0E,X

#_089CC1: LDA.b $72
#_089CC3: STA.w $0BFA,X

#_089CC6: RTS

;===================================================================================================

Bomb_GetDisplacementFromLink:
#_089CC7: LDA.w $0C04,X
#_089CCA: STA.b $06

#_089CCC: LDA.w $0C18,X
#_089CCF: STA.b $07

#_089CD1: LDA.w $0BFA,X
#_089CD4: STA.b $04

#_089CD6: LDA.w $0C0E,X
#_089CD9: STA.b $05

;---------------------------------------------------------------------------------------------------

#_089CDB: REP #$20

#_089CDD: LDA.b $22
#_089CDF: CLC
#_089CE0: ADC.w #$0008

#_089CE3: SEC
#_089CE4: SBC.b $06
#_089CE6: BPL .positive_x

#_089CE8: EOR.w #$FFFF
#_089CEB: INC A

.positive_x
#_089CEC: STA.b $0A

#_089CEE: LDA.b $20

;---------------------------------------------------------------------------------------------------

#_089CF0: CLC
#_089CF1: ADC.w #$000C

#_089CF4: SEC
#_089CF5: SBC.b $04
#_089CF7: BPL .positive_y

#_089CF9: EOR.w #$FFFF
#_089CFC: INC A

.positive_y
#_089CFD: CLC
#_089CFE: ADC.b $0A
#_089D00: AND.w #$00FC
#_089D03: LSR A
#_089D04: LSR A
#_089D05: TAY

#_089D06: SEP #$20

#_089D08: RTS

;===================================================================================================

BombDraw:

.char_and_prop
; group00
#_089D09: db $6E, $26
#_089D0B: db $FF, $FF
#_089D0D: db $FF, $FF
#_089D0F: db $FF, $FF
#_089D11: db $FF, $FF
#_089D13: db $FF, $FF

; group01
#_089D15: db $8C, $22
#_089D17: db $8C, $62
#_089D19: db $8C, $A2
#_089D1B: db $8C, $E2
#_089D1D: db $FF, $FF
#_089D1F: db $FF, $FF

; group02
#_089D21: db $84, $22
#_089D23: db $84, $62
#_089D25: db $84, $A2
#_089D27: db $84, $E2
#_089D29: db $FF, $FF
#_089D2B: db $FF, $FF

; group03
#_089D2D: db $88, $22
#_089D2F: db $88, $62
#_089D31: db $88, $A2
#_089D33: db $88, $E2
#_089D35: db $FF, $FF
#_089D37: db $FF, $FF

; group04
#_089D39: db $86, $22
#_089D3B: db $88, $22
#_089D3D: db $88, $62
#_089D3F: db $88, $A2
#_089D41: db $88, $E2
#_089D43: db $FF, $FF

; group05
#_089D45: db $86, $22
#_089D47: db $86, $62
#_089D49: db $86, $E2
#_089D4B: db $86, $E2
#_089D4D: db $FF, $FF
#_089D4F: db $FF, $FF

; group06
#_089D51: db $86, $E2
#_089D53: db $86, $22
#_089D55: db $86, $22
#_089D57: db $86, $62
#_089D59: db $86, $A2
#_089D5B: db $86, $A2

; group07
#_089D5D: db $8A, $A2
#_089D5F: db $8A, $62
#_089D61: db $8A, $22
#_089D63: db $8A, $62
#_089D65: db $8A, $62
#_089D67: db $8A, $E2

; group08
#_089D69: db $9B, $22
#_089D6B: db $9B, $A2
#_089D6D: db $9B, $62
#_089D6F: db $9B, $E2
#_089D71: db $9B, $A2
#_089D73: db $9B, $22

;---------------------------------------------------------------------------------------------------

.offset
; group00
#_089D75: dw  -8,  -8
#_089D79: dw   0,   0
#_089D7D: dw   0,   0
#_089D81: dw   0,   0
#_089D85: dw   0,   0
#_089D89: dw   0,   0

; group01
#_089D8D: dw  -8,  -8
#_089D91: dw  -8,   0
#_089D95: dw   0,  -8
#_089D99: dw   0,   0
#_089D9D: dw   0,   0
#_089DA1: dw   0,   0

; group02
#_089DA5: dw -16, -16
#_089DA9: dw -16,   0
#_089DAD: dw   0, -16
#_089DB1: dw   0,   0
#_089DB5: dw   0,   0
#_089DB9: dw   0,   0

; group03
#_089DBD: dw -16, -16
#_089DC1: dw -16,   0
#_089DC5: dw   0, -16
#_089DC9: dw   0,   0
#_089DCD: dw   0,   0
#_089DD1: dw   0,   0

; group04
#_089DD5: dw  -8,  -8
#_089DD9: dw -21, -22
#_089DDD: dw -21,   8
#_089DE1: dw   9, -22
#_089DE5: dw   9,   8
#_089DE9: dw   0,   0

; group05
#_089DED: dw  -6, -15
#_089DF1: dw   0,  -1
#_089DF5: dw -16,  -2
#_089DF9: dw  -8,  -7
#_089DFD: dw   0,   0
#_089E01: dw   0,   0

; group06
#_089E05: dw  -9,  -4
#_089E09: dw -21,  -5
#_089E0D: dw -12, -18
#_089E11: dw -11,   7
#_089E15: dw   0, -15
#_089E19: dw   4,  -2

; group07
#_089E1D: dw  -9,  -4
#_089E21: dw -22,  -5
#_089E25: dw -13, -20
#_089E29: dw -11,   8
#_089E2D: dw   1, -16
#_089E31: dw   5,  -2

; group08
#_089E35: dw -20,   4
#_089E39: dw -12, -19
#_089E3D: dw  -9,  16
#_089E41: dw  -5,  -2
#_089E45: dw   2,  -9
#_089E49: dw  10,   6

;---------------------------------------------------------------------------------------------------

; 1 = offscreen X
.oam_size
; group00
#_089E4D: db $02
#_089E4E: db $01
#_089E4F: db $01
#_089E50: db $01
#_089E51: db $01
#_089E52: db $01

; group01
#_089E53: db $00
#_089E54: db $00
#_089E55: db $00
#_089E56: db $00
#_089E57: db $01
#_089E58: db $01

; group02
#_089E59: db $02
#_089E5A: db $02
#_089E5B: db $02
#_089E5C: db $02
#_089E5D: db $01
#_089E5E: db $01

; group03
#_089E5F: db $02
#_089E60: db $02
#_089E61: db $02
#_089E62: db $02
#_089E63: db $01
#_089E64: db $01

; group04
#_089E65: db $02
#_089E66: db $02
#_089E67: db $02
#_089E68: db $02
#_089E69: db $02
#_089E6A: db $01

; group05
#_089E6B: db $02
#_089E6C: db $02
#_089E6D: db $02
#_089E6E: db $02
#_089E6F: db $01
#_089E70: db $01

; group06
#_089E71: db $02
#_089E72: db $02
#_089E73: db $02
#_089E74: db $02
#_089E75: db $02
#_089E76: db $02

; group07
#_089E77: db $02
#_089E78: db $02
#_089E79: db $02
#_089E7A: db $02
#_089E7B: db $02
#_089E7C: db $02

; group08
#_089E7D: db $00
#_089E7E: db $00
#_089E7F: db $00
#_089E80: db $00
#_089E81: db $00
#_089E82: db $00

;---------------------------------------------------------------------------------------------------

.data_offset
#_089E83: db $00
#_089E84: db $06
#_089E85: db $0C
#_089E86: db $12
#_089E87: db $18
#_089E88: db $1E
#_089E89: db $24
#_089E8A: db $2A
#_089E8B: db $30

;---------------------------------------------------------------------------------------------------

.object_count
#_089E8C: db $01
#_089E8D: db $04
#_089E8E: db $04
#_089E8F: db $04
#_089E90: db $04
#_089E91: db $04
#_089E92: db $05
#_089E93: db $04
#_089E94: db $06
#_089E95: db $06
#_089E96: db $06

;===================================================================================================

AncillaDraw_Bomb:
#_089E97: JSR Ancilla_PrepOAMCoord_adjusted

#_089E9A: REP #$20

#_089E9C: LDA.w $029E,X
#_089E9F: AND.w #$00FF
#_089EA2: CMP.w #$0080
#_089EA5: BCC .positive_z

#_089EA7: ORA.w #$FF00

;---------------------------------------------------------------------------------------------------

.positive_z
#_089EAA: STA.b $04
#_089EAC: BEQ .not_max_priority

#_089EAE: CMP.w #$FFFF
#_089EB1: BEQ .not_max_priority

#_089EB3: LDA.w $0380,X
#_089EB6: AND.w #$00FF
#_089EB9: CMP.w #$0003
#_089EBC: BEQ .not_max_priority

#_089EBE: LDA.w $0280,X
#_089EC1: AND.w #$00FF
#_089EC4: BEQ .not_max_priority

#_089EC6: LDA.w #$3000
#_089EC9: STA.b $64

;---------------------------------------------------------------------------------------------------

.not_max_priority
#_089ECB: LDA.w #$0000
#_089ECE: CLC
#_089ECF: ADC.b $04

#_089ED1: EOR.w #$FFFF
#_089ED4: INC A
#_089ED5: CLC
#_089ED6: ADC.b $00
#_089ED8: STA.b $00

#_089EDA: SEP #$20

#_089EDC: LDY.w $0C5E,X

#_089EDF: LDA.w Bomb_anim_step,Y
#_089EE2: TAY

#_089EE3: LDA.w BombDraw_data_offset,Y
#_089EE6: ASL A
#_089EE7: TAY

#_089EE8: ASL A
#_089EE9: STA.b $04

#_089EEB: STZ.b $05
#_089EED: STZ.b $0A

#_089EEF: LDA.b #$02
#_089EF1: STA.b $0B

;---------------------------------------------------------------------------------------------------

#_089EF3: LDA.w $0C5E,X
#_089EF6: BNE .dont_flash

#_089EF8: LDA.b #$04
#_089EFA: STA.b $0B

#_089EFC: LDA.w $039F,X
#_089EFF: CMP.b #$20
#_089F01: BCS .dont_flash

#_089F03: AND.b #$0E
#_089F05: STA.b $0B

;---------------------------------------------------------------------------------------------------

.dont_flash
#_089F07: PHX
#_089F08: PHY

#_089F09: LDA.w $0C5E,X
#_089F0C: STA.b $08
#_089F0E: BNE .continue

#_089F10: LDA.w $0385,X
#_089F13: BNE .not_deferred

#_089F15: LDA.w $0E20
#_089F18: CMP.b #!SPRITE_92
#_089F1A: BEQ .outmaneuver_this

#_089F1C: TXY
#_089F1D: INY
#_089F1E: CPY.w $02EC
#_089F21: BNE .not_deferred

;---------------------------------------------------------------------------------------------------

.outmaneuver_this
#_089F23: LDA.w $0308
#_089F26: AND.b #$80
#_089F28: BEQ .not_carried

#_089F2A: LDA.w $0380,X
#_089F2D: CMP.b #$03
#_089F2F: BEQ .not_deferred

#_089F31: LDA.b $2F
#_089F33: BNE .not_deferred

.not_carried
#_089F35: LDA.b #$0C
#_089F37: JSR Ancilla_AllocateOAMFromRegion_B_or_E

#_089F3A: BRA .continue

;---------------------------------------------------------------------------------------------------

.not_deferred
#_089F3C: LDA.w $0FB3
#_089F3F: BEQ .continue

#_089F41: LDA.w $0C7C,X
#_089F44: BEQ .continue

#_089F46: LDA.w $0385,X
#_089F49: BNE .hardcode_slot

#_089F4B: TXY
#_089F4C: INY
#_089F4D: CPY.w $02EC
#_089F50: BNE .continue

#_089F52: LDA.w $0308
#_089F55: BPL .continue

;---------------------------------------------------------------------------------------------------

.hardcode_slot
#_089F57: REP #$20

; !HARDCODED oam slots
#_089F59: LDA.w #$00D0
#_089F5C: CLC
#_089F5D: ADC.w #$0800
#_089F60: STA.b $90

#_089F62: LDA.w #$0034
#_089F65: CLC
#_089F66: ADC.w #$0A20
#_089F69: STA.b $92

#_089F6B: SEP #$20

;---------------------------------------------------------------------------------------------------

.continue
#_089F6D: LDA.b $00
#_089F6F: STA.b $0C

#_089F71: LDA.b $01
#_089F73: STA.b $0D

#_089F75: LDA.b $02
#_089F77: STA.b $0E

#_089F79: LDA.b $03
#_089F7B: STA.b $0F

#_089F7D: STZ.b $06

#_089F7F: LDX.b $08

#_089F81: LDA.w BombDraw_object_count,X
#_089F84: STA.b $08

#_089F86: PLX

;---------------------------------------------------------------------------------------------------

#_089F87: LDY.b #$00
#_089F89: JSR AncillaDraw_Explosion

#_089F8C: PLX
#_089F8D: LDA.w $0C5E,X
#_089F90: BNE .exit

#_089F92: STZ.b $0A

#_089F94: LDA.w $029E,X
#_089F97: CMP.b #$02
#_089F99: BCC .no_water_ripples

#_089F9B: CMP.b #$FC
#_089F9D: BCS .no_water_ripples

#_089F9F: LDA.b #$02
#_089FA1: STA.b $0A

;---------------------------------------------------------------------------------------------------

.no_water_ripples
#_089FA3: LDA.w $0380,X
#_089FA6: AND.b #$02
#_089FA8: BNE .exit

#_089FAA: REP #$20

#_089FAC: LDA.w $029E,X
#_089FAF: AND.w #$00FF
#_089FB2: CMP.w #$0080
#_089FB5: BCC .dont_invert

#_089FB7: ORA.w #$FF00

.dont_invert
#_089FBA: CLC
#_089FBB: ADC.b $0C

#_089FBD: CLC
#_089FBE: ADC.w #$0002
#_089FC1: STA.b $00

#_089FC3: LDA.b $0E
#_089FC5: CLC
#_089FC6: ADC.w #$FFF8
#_089FC9: STA.b $02

#_089FCB: SEP #$20

#_089FCD: LDA.b $65
#_089FCF: STA.b $04

#_089FD1: LDX.b $0A
#_089FD3: JSR AncillaDraw_Shadow

#_089FD6: LDX.w $0FA0

.exit
#_089FD9: RTS

;===================================================================================================

Ancilla08_DoorDebris:
#_089FDA: JSR AncillaDraw_DoorDebris

#_089FDD: DEC.w $03C0,X
#_089FE0: BPL .exit

#_089FE2: LDA.b #$07
#_089FE4: STA.w $03C0,X

#_089FE7: INC.w $03C2,X

#_089FEA: LDA.w $03C2,X
#_089FED: CMP.b #$04
#_089FEF: BNE .exit

#_089FF1: STZ.w $0C4A,X

.exit
#_089FF4: RTS

;===================================================================================================

pool AncillaDraw_DoorDebris

.offset
; group00
#_089FF5: dw   4,   7
#_089FF9: dw   3,  17

; group01
#_089FFD: dw   8,   8
#_08A001: dw   7,  17

; group02
#_08A005: dw  11,   7
#_08A009: dw  10,  16

; group03
#_08A00D: dw  16,   7
#_08A011: dw  17,  17

; group04
#_08A015: dw  20,   7
#_08A019: dw  21,  17

; group05
#_08A01D: dw  16,   8
#_08A021: dw  17,  17

; group06
#_08A025: dw  13,   7
#_08A029: dw  14,  16

; group07
#_08A02D: dw   8,   7
#_08A031: dw   7,  17

; group08
#_08A035: dw   7,   4
#_08A039: dw  17,   3

; group09
#_08A03D: dw   8,   8
#_08A041: dw  17,   7

; group0A
#_08A045: dw   7,  11
#_08A049: dw  16,  10

; group0B
#_08A04D: dw   7,  16
#_08A051: dw  17,  17

; group0C
#_08A055: dw   7,  20
#_08A059: dw  17,  21

; group0D
#_08A05D: dw   8,  16
#_08A061: dw  17,  17

; group0E
#_08A065: dw   7,  13
#_08A069: dw  16,  14

; group0F
#_08A06D: dw   7,   8
#_08A071: dw  17,   7

;---------------------------------------------------------------------------------------------------

.char_and_prop
; group00
#_08A075: db $5E, $20
#_08A077: db $5E, $E0

; group01
#_08A079: db $5E, $A0
#_08A07B: db $5E, $60

; group02
#_08A07D: db $4F, $20
#_08A07F: db $4F, $20

; group03
#_08A081: db $4F, $20
#_08A083: db $4F, $20

; group04
#_08A085: db $5E, $60
#_08A087: db $5E, $60

; group05
#_08A089: db $5E, $20
#_08A08B: db $5E, $E0

; group06
#_08A08D: db $4F, $60
#_08A08F: db $4F, $60

; group07
#_08A091: db $4F, $60
#_08A093: db $4F, $60

; group08
#_08A095: db $5E, $20
#_08A097: db $5E, $E0

; group09
#_08A099: db $5E, $A0
#_08A09B: db $5E, $60

; group0A
#_08A09D: db $4F, $20
#_08A09F: db $4F, $E0

; group0B
#_08A0A1: db $4F, $20
#_08A0A3: db $4F, $20

; group0C
#_08A0A5: db $5E, $60
#_08A0A7: db $5E, $60

; group0D
#_08A0A9: db $5E, $20
#_08A0AB: db $5E, $E0

; group0E
#_08A0AD: db $4F, $60
#_08A0AF: db $4F, $60

; group0F
#_08A0B1: db $4F, $60
#_08A0B3: db $4F, $60

pool off

;---------------------------------------------------------------------------------------------------

AncillaDraw_DoorDebris:
#_08A0B5: JSR Ancilla_PrepOAMCoord_adjusted

#_08A0B8: TXA
#_08A0B9: ASL A
#_08A0BA: TAY

#_08A0BB: REP #$20

#_08A0BD: LDA.w $03BA,Y
#_08A0C0: SEC
#_08A0C1: SBC.b $E8
#_08A0C3: STA.b $0C

#_08A0C5: LDA.w $03B6,Y
#_08A0C8: SEC
#_08A0C9: SBC.b $E2
#_08A0CB: STA.b $0E

#_08A0CD: SEP #$20

#_08A0CF: PHX

#_08A0D0: STZ.b $06

#_08A0D2: LDA.w $03C2,X
#_08A0D5: ASL A
#_08A0D6: ASL A
#_08A0D7: STA.b $04
#_08A0D9: STA.b $08

#_08A0DB: LDA.w $03BE,X
#_08A0DE: ASL A ; x16
#_08A0DF: ASL A
#_08A0E0: ASL A
#_08A0E1: ASL A
#_08A0E2: STA.b $0A

#_08A0E4: CLC
#_08A0E5: ADC.b $04
#_08A0E7: TAX

;---------------------------------------------------------------------------------------------------

#_08A0E8: LDY.b #$00

.next_object
#_08A0EA: PHX

#_08A0EB: LDA.b $0A
#_08A0ED: ASL A
#_08A0EE: STA.b $04

#_08A0F0: LDA.b $08
#_08A0F2: ASL A
#_08A0F3: CLC
#_08A0F4: ADC.b $04
#_08A0F6: STA.b $04

#_08A0F8: LDA.b $06
#_08A0FA: ASL A
#_08A0FB: ASL A
#_08A0FC: CLC
#_08A0FD: ADC.b $04
#_08A0FF: TAX

#_08A100: REP #$20

#_08A102: LDA.w .offset+0,X
#_08A105: CLC
#_08A106: ADC.b $0C
#_08A108: STA.b $00

#_08A10A: LDA.w .offset+2,X
#_08A10D: CLC
#_08A10E: ADC.b $0E
#_08A110: STA.b $02

#_08A112: SEP #$20

#_08A114: PLX

#_08A115: JSR Ancilla_SetOAM_XY

#_08A118: LDA.w .char_and_prop+0,X
#_08A11B: STA.b ($90),Y

#_08A11D: INY

#_08A11E: LDA.w .char_and_prop+1,X
#_08A121: AND.b #$C0
#_08A123: ORA.b $65
#_08A125: STA.b ($90),Y

#_08A127: INY

#_08A128: PHY
#_08A129: TYA

#_08A12A: SEC
#_08A12B: SBC.b #$04

#_08A12D: LSR A
#_08A12E: LSR A
#_08A12F: TAY

#_08A130: LDA.b #$00
#_08A132: STA.b ($92),Y

#_08A134: PLY
#_08A135: JSR Ancilla_AllocateOAMFromCustomRegion

#_08A138: INX
#_08A139: INX

#_08A13A: LDA.b $06
#_08A13C: INC A
#_08A13D: STA.b $06

#_08A13F: CMP.b #$02
#_08A141: BNE .next_object

;---------------------------------------------------------------------------------------------------

#_08A143: PLX

#_08A144: RTS

;===================================================================================================

pool Ancilla09_Arrow

.offset_y
#_08A145: dw  -4,   2,   0,   0

.offset_x
#_08A14D: dw   0,   0,  -4,   4

pool off

;---------------------------------------------------------------------------------------------------

Ancilla09_Arrow:
#_08A155: LDA.b $11
#_08A157: BEQ .good_submode

#_08A159: BRL .proceed_to_draw

.good_submode
#_08A15C: DEC.w $0C5E,X

#_08A15F: LDA.w $0C5E,X
#_08A162: BMI .timer_done

#_08A164: CMP.b #$04
#_08A166: BCC .start_moving

#_08A168: BRL .exit

;---------------------------------------------------------------------------------------------------

.timer_done
#_08A16B: LDA.b #$FF
#_08A16D: STA.w $0C5E,X

.start_moving
#_08A170: JSR Ancilla_Move_Y
#_08A173: JSR Ancilla_Move_X

#_08A176: LDA.l $7EF340
#_08A17A: AND.b #$04
#_08A17C: BEQ .no_sparkle

#_08A17E: LDA.b $1A
#_08A180: AND.b #$01
#_08A182: BNE .no_sparkle

#_08A184: PHX

#_08A185: JSL AncillaAdd_SilverArrowSparkle

#_08A189: PLX

.no_sparkle
#_08A18A: LDA.b #$FF
#_08A18C: STA.w $03A9,X

#_08A18F: JSR Ancilla_CheckSpriteCollision
#_08A192: BCS .sprite_collision

#_08A194: JSR Ancilla_CheckTileCollision
#_08A197: BCS .tile_collision

#_08A199: BRL .proceed_to_draw

;---------------------------------------------------------------------------------------------------

.tile_collision
#_08A19C: TYA
#_08A19D: STA.w $03C5,X

#_08A1A0: LDA.w $0C72,X
#_08A1A3: AND.b #$03
#_08A1A5: ASL A
#_08A1A6: TAY

#_08A1A7: LDA.w .offset_y+0,Y
#_08A1AA: CLC
#_08A1AB: ADC.w $0BFA,X
#_08A1AE: STA.w $0BFA,X

#_08A1B1: LDA.w .offset_y+1,Y
#_08A1B4: ADC.w $0C0E,X
#_08A1B7: STA.w $0C0E,X

#_08A1BA: LDA.w .offset_x+0,Y
#_08A1BD: CLC
#_08A1BE: ADC.w $0C04,X
#_08A1C1: STA.w $0C04,X

#_08A1C4: LDA.w .offset_x+1,Y
#_08A1C7: ADC.w $0C18,X
#_08A1CA: STA.w $0C18,X

#_08A1CD: STZ.w $0B88

#_08A1D0: BRA .become_stopped

;---------------------------------------------------------------------------------------------------

.sprite_collision
#_08A1D2: LDA.w $0C04,X
#_08A1D5: SEC
#_08A1D6: SBC.w $0D10,Y
#_08A1D9: STA.w $0C2C,X

#_08A1DC: LDA.w $0BFA,X
#_08A1DF: SEC
#_08A1E0: SBC.w $0D00,Y
#_08A1E3: CLC
#_08A1E4: ADC.w $0F70,Y
#_08A1E7: STA.w $0C22,X

#_08A1EA: TYA
#_08A1EB: STA.w $03A9,X

#_08A1EE: LDA.w $0E20,Y
#_08A1F1: CMP.b #!SPRITE_65
#_08A1F3: BNE .not_arrow_game

#_08A1F5: LDA.w $0D90,Y
#_08A1F8: CMP.b #$01
#_08A1FA: BNE .not_arrow_game_target

#_08A1FC: LDA.b #!SFX3_2D
#_08A1FE: STA.w $012F

#_08A201: LDA.b #$80
#_08A203: STA.w $0E10,Y
#_08A206: STA.w $0F10 ; !HARDCODED sprite slot

#_08A209: LDA.w $0B88
#_08A20C: CMP.b #$09
#_08A20E: BCS .the_99_dream

#_08A210: INC.w $0B88

.the_99_dream
#_08A213: LDA.w $0B88
#_08A216: STA.w $0DA0,Y

#_08A219: LDA.w $0ED0,Y
#_08A21C: INC A
#_08A21D: STA.w $0ED0,Y

#_08A220: BRA .become_stopped

;---------------------------------------------------------------------------------------------------

.not_arrow_game_target
#_08A222: LDA.b #$04
#_08A224: STA.w $0EE0,Y

.not_arrow_game
#_08A227: STZ.w $0B88

;---------------------------------------------------------------------------------------------------

.become_stopped
#_08A22A: LDA.w $0E20,Y
#_08A22D: CMP.b #!SPRITE_1B
#_08A22F: BEQ .not_enemy_arrow

#_08A231: LDA.b #!SFX2_08
#_08A233: JSR Ancilla_SFX2_Pan

.not_enemy_arrow
#_08A236: STZ.w $0C5E,X

#_08A239: LDA.b #!ANCILLA_0A
#_08A23B: STA.w $0C4A,X

#_08A23E: LDA.b #$01
#_08A240: STA.w $03B1,X

#_08A243: LDA.w $03C5,X
#_08A246: BEQ .proceed_to_draw

#_08A248: REP #$20

#_08A24A: LDA.b $E0
#_08A24C: SEC
#_08A24D: SBC.b $E2
#_08A24F: CLC
#_08A250: ADC.w $0C04,X
#_08A253: STA.b $00

#_08A255: LDA.b $E6
#_08A257: SEC
#_08A258: SBC.b $E8
#_08A25A: CLC
#_08A25B: ADC.w $0BFA,X
#_08A25E: STA.b $02

#_08A260: SEP #$20

#_08A262: LDA.b $00
#_08A264: STA.w $0C04,X

#_08A267: LDA.b $02
#_08A269: STA.w $0BFA,X

#_08A26C: BRA .proceed_to_draw

;---------------------------------------------------------------------------------------------------

.exit
#_08A26E: RTS

.proceed_to_draw
#_08A26F: BRL AncillaDraw_Arrow

;===================================================================================================

pool AncillaDraw_Arrow

.char_and_prop
; group00
#_08A272: db $2B, $A4
#_08A274: db $2A, $A4

; group01
#_08A276: db $2A, $24
#_08A278: db $2B, $24

; group02
#_08A27A: db $3D, $64
#_08A27C: db $3A, $64

; group03
#_08A27E: db $3A, $24
#_08A280: db $3D, $24

; group04
#_08A282: db $2B, $A4
#_08A284: db $FF, $FF

; group05
#_08A286: db $2B, $24
#_08A288: db $FF, $FF

; group06
#_08A28A: db $3D, $64
#_08A28C: db $FF, $FF

; group07
#_08A28E: db $3D, $24
#_08A290: db $FF, $FF

; group08
#_08A292: db $3C, $A4
#_08A294: db $2C, $A4

; group09
#_08A296: db $3C, $A4
#_08A298: db $2A, $A4

; group0A
#_08A29A: db $3C, $A4
#_08A29C: db $2C, $E4

; group0B
#_08A29E: db $3C, $A4
#_08A2A0: db $2A, $A4

; group0C
#_08A2A2: db $2C, $24
#_08A2A4: db $3C, $24

; group0D
#_08A2A6: db $2A, $24
#_08A2A8: db $3C, $24

; group0E
#_08A2AA: db $2C, $64
#_08A2AC: db $3C, $24

; group0F
#_08A2AE: db $2A, $24
#_08A2B0: db $3C, $24

; group10
#_08A2B2: db $3B, $64
#_08A2B4: db $2D, $64

; group11
#_08A2B6: db $3B, $64
#_08A2B8: db $3A, $E4

; group12
#_08A2BA: db $3B, $64
#_08A2BC: db $2D, $E4

; group13
#_08A2BE: db $3B, $64
#_08A2C0: db $3A, $E4

; group14
#_08A2C2: db $2D, $24
#_08A2C4: db $3B, $24

; group15
#_08A2C6: db $3A, $24
#_08A2C8: db $3B, $A4

; group16
#_08A2CA: db $2D, $A4
#_08A2CC: db $3B, $24

; group17
#_08A2CE: db $3A, $24
#_08A2D0: db $3B, $A4

;---------------------------------------------------------------------------------------------------

.offset
; group00
#_08A2D2: dw   0,   0
#_08A2D6: dw   8,   0

; group01
#_08A2DA: dw   0,   0
#_08A2DE: dw   8,   0

; group02
#_08A2E2: dw   0,   0
#_08A2E6: dw   0,   8

; group03
#_08A2EA: dw   0,   0
#_08A2EE: dw   0,   8

; group04
#_08A2F2: dw   0,   0
#_08A2F6: dw   0,   0

; group05
#_08A2FA: dw   0,   0
#_08A2FE: dw   0,   0

; group06
#_08A302: dw   0,   0
#_08A306: dw   0,   0

; group07
#_08A30A: dw   0,   0
#_08A30E: dw   0,   0

; group08
#_08A312: dw   0,   1
#_08A316: dw   8,   1

; group09
#_08A31A: dw   0,   0
#_08A31E: dw   8,   0

; group0A
#_08A322: dw   0,  -1
#_08A326: dw   8,  -2

; group0B
#_08A32A: dw   0,   0
#_08A32E: dw   8,   0

; group0C
#_08A332: dw   0,   1
#_08A336: dw   8,   1

; group0D
#_08A33A: dw   0,   0
#_08A33E: dw   8,   0

; group0E
#_08A342: dw   0,  -2
#_08A346: dw   8,  -1

; group0F
#_08A34A: dw   0,   0
#_08A34E: dw   8,   0

; group10
#_08A352: dw  -1,   0
#_08A356: dw  -1,   8

; group11
#_08A35A: dw   0,   0
#_08A35E: dw   0,   8

; group12
#_08A362: dw   0,   0
#_08A366: dw   1,   8

; group13
#_08A36A: dw   0,   0
#_08A36E: dw   0,   8

; group14
#_08A372: dw  -1,   0
#_08A376: dw  -1,   8

; group15
#_08A37A: dw   0,   0
#_08A37E: dw   0,   8

; group16
#_08A382: dw   1,   0
#_08A386: dw   0,   8

; group17
#_08A38A: dw   0,   0
#_08A38E: dw   0,   8

pool off

;---------------------------------------------------------------------------------------------------

AncillaDraw_Arrow:
#_08A392: JSR Ancilla_PrepOAMCoord_adjusted

#_08A395: LDA.w $0280,X
#_08A398: BEQ .normal_priority

#_08A39A: LDA.b #$30
#_08A39C: STA.b $65

.normal_priority
#_08A39E: REP #$20

#_08A3A0: LDA.b $00
#_08A3A2: STA.b $0C

#_08A3A4: LDA.b $02
#_08A3A6: STA.b $0E
#_08A3A8: STA.b $04

#_08A3AA: LDA.w $03C5,X
#_08A3AD: AND.w #$00FF
#_08A3B0: BEQ .regular_collision

;---------------------------------------------------------------------------------------------------

#_08A3B2: LDA.b $E8
#_08A3B4: SEC
#_08A3B5: SBC.b $E6
#_08A3B7: CLC
#_08A3B8: ADC.b $0C
#_08A3BA: STA.b $0C

#_08A3BC: LDA.b $E2
#_08A3BE: SEC
#_08A3BF: SBC.b $E0
#_08A3C1: CLC
#_08A3C2: ADC.b $0E
#_08A3C4: STA.b $0E
#_08A3C6: STA.b $04

;---------------------------------------------------------------------------------------------------

.regular_collision
#_08A3C8: SEP #$20

#_08A3CA: LDA.w $0C5E,X
#_08A3CD: STA.b $07

#_08A3CF: LDA.w $0C72,X
#_08A3D2: AND.b #$FB
#_08A3D4: TAY

#_08A3D5: LDA.w $0C4A,X
#_08A3D8: CMP.b #!ANCILLA_0A
#_08A3DA: BNE .not_halted

#_08A3DC: LDA.w $0C5E,X
#_08A3DF: AND.b #$08
#_08A3E1: BEQ .wiggle

#_08A3E3: LDA.b #$01
#_08A3E5: BRA .continue

.wiggle
#_08A3E7: LDA.w $0C5E,X
#_08A3EA: AND.b #$03

;---------------------------------------------------------------------------------------------------

.continue
#_08A3EC: STA.b $0A

#_08A3EE: TYA
#_08A3EF: ASL A
#_08A3F0: ASL A
#_08A3F1: CLC
#_08A3F2: ADC.b #$08
#_08A3F4: CLC
#_08A3F5: ADC.b $0A
#_08A3F7: TAY

#_08A3F8: BRA .get_palette

;---------------------------------------------------------------------------------------------------

.not_halted
#_08A3FA: LDA.w $0C5E,X
#_08A3FD: BMI .get_palette

#_08A3FF: TYA
#_08A400: ORA.b #$04
#_08A402: TAY

;---------------------------------------------------------------------------------------------------

.get_palette
#_08A403: PHX

#_08A404: TYA
#_08A405: ASL A
#_08A406: ASL A
#_08A407: TAX

#_08A408: LDY.b #$02
#_08A40A: LDA.l $7EF340

#_08A40E: AND.b #$04
#_08A410: BNE .silvers

#_08A412: LDY.b #$04

.silvers
#_08A414: STY.b $74

#_08A416: LDY.b #$00
#_08A418: STZ.b $06

;---------------------------------------------------------------------------------------------------

.next_object
#_08A41A: LDA.w .char_and_prop+0,X
#_08A41D: CMP.b #$FF
#_08A41F: BEQ .skip

#_08A421: STA.b $72

#_08A423: PHX

#_08A424: TXA
#_08A425: ASL A
#_08A426: TAX

#_08A427: REP #$20

#_08A429: LDA.w .offset+0,X
#_08A42C: CLC
#_08A42D: ADC.b $0C
#_08A42F: STA.b $00

#_08A431: LDA.w .offset+2,X
#_08A434: CLC
#_08A435: ADC.b $0E
#_08A437: STA.b $02

#_08A439: SEP #$20

#_08A43B: JSR Ancilla_SetOAM_XY

#_08A43E: PLX

#_08A43F: LDA.b $72
#_08A441: STA.b ($90),Y

#_08A443: INY

#_08A444: LDA.w .char_and_prop+1,X
#_08A447: AND.b #$C1
#_08A449: ORA.b $74
#_08A44B: ORA.b $65
#_08A44D: STA.b ($90),Y

#_08A44F: INY

#_08A450: PHY

#_08A451: TYA
#_08A452: SEC
#_08A453: SBC.b #$04
#_08A455: LSR A
#_08A456: LSR A
#_08A457: TAY

#_08A458: LDA.b #$00
#_08A45A: STA.b ($92),Y

#_08A45C: PLY

;---------------------------------------------------------------------------------------------------

.skip
#_08A45D: INX
#_08A45E: INX

#_08A45F: INC.b $06

#_08A461: LDA.b $06
#_08A463: CMP.b #$02
#_08A465: BEQ .done

;---------------------------------------------------------------------------------------------------

#_08A467: BRL .next_object

.done
#_08A46A: PLX

#_08A46B: LDY.b #$01

#_08A46D: LDA.b ($90),Y
#_08A46F: CMP.b #$F0
#_08A471: BNE .exit

#_08A473: LDY.b #$05

#_08A475: LDA.b ($90),Y
#_08A477: CMP.b #$F0
#_08A479: BNE .exit

#_08A47B: BRL Arrow_DeleteSelf

.exit
#_08A47E: RTS

;===================================================================================================

Ancilla0A_ArrowInTheWall:
#_08A47F: LDY.w $03A9,X
#_08A482: BMI .not_sprite_collided

#_08A484: LDA.w $0DD0,Y
#_08A487: CMP.b #$09
#_08A489: BCC Arrow_DeleteSelf

#_08A48B: LDA.w $0F70,Y
#_08A48E: BMI Arrow_DeleteSelf

#_08A490: LDA.w $0BA0,Y
#_08A493: BNE Arrow_DeleteSelf

#_08A495: LDA.w $0CAA,Y
#_08A498: AND.b #$02
#_08A49A: BNE Arrow_DeleteSelf

;---------------------------------------------------------------------------------------------------

#_08A49C: STZ.b $00

#_08A49E: LDA.w $0C2C,X
#_08A4A1: BPL .positive_x

#_08A4A3: DEC.b $00

.positive_x
#_08A4A5: CLC
#_08A4A6: ADC.w $0D10,Y
#_08A4A9: STA.w $0C04,X

#_08A4AC: LDA.w $0D30,Y
#_08A4AF: ADC.b $00
#_08A4B1: STA.w $0C18,X

;---------------------------------------------------------------------------------------------------

#_08A4B4: STZ.b $00

#_08A4B6: LDA.w $0C22,X
#_08A4B9: BPL .positive_y

#_08A4BB: DEC.b $00

.positive_y
#_08A4BD: CLC
#_08A4BE: ADC.w $0D00,Y
#_08A4C1: PHP

#_08A4C2: SEC
#_08A4C3: SBC.w $0F70,Y
#_08A4C6: STA.w $0BFA,X

#_08A4C9: LDA.w $0D20,Y
#_08A4CC: SBC.b #$00

#_08A4CE: PLP
#_08A4CF: ADC.b $00
#_08A4D1: STA.w $0C0E,X

;---------------------------------------------------------------------------------------------------

.not_sprite_collided
#_08A4D4: LDA.b $11
#_08A4D6: BEQ .continue

#_08A4D8: BRA .proceed_to_draw

.continue
#_08A4DA: DEC.w $03B1,X
#_08A4DD: LDA.w $03B1,X
#_08A4E0: BNE .proceed_to_draw

#_08A4E2: LDA.b #$02
#_08A4E4: STA.w $03B1,X

#_08A4E7: INC.w $0C5E,X

#_08A4EA: LDA.w $0C5E,X
#_08A4ED: CMP.b #$09
#_08A4EF: BEQ Arrow_DeleteSelf

#_08A4F1: AND.b #$08
#_08A4F3: BEQ .proceed_to_draw

#_08A4F5: LDA.b #$A0
#_08A4F7: STA.w $03B1,X

;---------------------------------------------------------------------------------------------------

.proceed_to_draw
#_08A4FA: JML AncillaDraw_Arrow

;===================================================================================================

Arrow_DeleteSelf:
#_08A4FE: BRL Ancilla_DeleteSelf

;===================================================================================================

Ancilla0B_IceRodShot:
#_08A501: LDA.b $11
#_08A503: BEQ .continue

#_08A505: BRA .generate_sparkle

.continue
#_08A507: DEC.w $03B1,X
#_08A50A: BPL .delay_a

#_08A50C: LDA.w $0C5E,X
#_08A50F: INC A
#_08A510: STA.w $0C5E,X

#_08A513: AND.b #$FE
#_08A515: BEQ .delay_b

#_08A517: LDA.b #$01
#_08A519: STA.w $0C54,X

#_08A51C: LDA.w $0C5E,X
#_08A51F: AND.b #$07
#_08A521: ORA.b #$04
#_08A523: STA.w $0C5E,X

;---------------------------------------------------------------------------------------------------

.delay_b
#_08A526: LDA.b #$03
#_08A528: STA.w $03B1,X

;---------------------------------------------------------------------------------------------------

.delay_a
#_08A52B: LDA.w $0C54,X
#_08A52E: BEQ .generate_sparkle

#_08A530: JSR Ancilla_BoundsCheck

#_08A533: JSR Ancilla_Move_Y
#_08A536: JSR Ancilla_Move_X

#_08A539: JSR Ancilla_CheckSpriteCollision
#_08A53C: BCS .sprite_collision

#_08A53E: JSR Ancilla_CheckTileCollision
#_08A541: BCC .generate_sparkle

.sprite_collision
#_08A543: LDA.b #!ANCILLA_11
#_08A545: STA.w $0C4A,X

#_08A548: TAY

#_08A549: LDA.w AncillaObjectAllocation,Y
#_08A54C: STA.w $0C90,X

#_08A54F: STZ.w $0C5E,X

#_08A552: LDA.b #$04
#_08A554: STA.w $03B1,X

.generate_sparkle
#_08A557: BRL AncillaAdd_IceRodSparkle

;===================================================================================================

Ancilla11_IceRodWallHit:
#_08A55A: DEC.w $03B1,X
#_08A55D: BPL .delay

#_08A55F: LDA.b #$07
#_08A561: STA.w $03B1,X

#_08A564: INC.w $0C5E,X

#_08A567: LDA.w $0C5E,X
#_08A56A: CMP.b #$02
#_08A56C: BNE .delay

#_08A56E: STZ.w $0C4A,X

#_08A571: RTS

.delay
#_08A572: BRL AncillaDraw_IceRodWallHit

;===================================================================================================

pool AncillaDraw_IceRodWallHit

.char_and_prop
; group00
#_08A575: db $CF, $24
#_08A577: db $CF, $24
#_08A579: db $CF, $24
#_08A57B: db $CF, $24

; group01
#_08A57D: db $DF, $24
#_08A57F: db $DF, $24
#_08A581: db $DF, $24
#_08A583: db $DF, $24

.offset
; group00
#_08A585: db   0,   0
#_08A587: db   0,   8
#_08A589: db   8,   0
#_08A58B: db   8,   8

; group01
#_08A58D: db  -8,  -8
#_08A58F: db  -8,  16
#_08A591: db  16,  -8
#_08A593: db  16,  16

pool off

;---------------------------------------------------------------------------------------------------

AncillaDraw_IceRodWallHit:
#_08A595: JSR Ancilla_PrepOAMCoord

#_08A598: PHX

#_08A599: LDA.w $0C90,X
#_08A59C: JSR Ancilla_AllocateOAMFromRegion_A_or_D_or_F

#_08A59F: LDA.w $0C5E,X
#_08A5A2: ASL A
#_08A5A3: ASL A
#_08A5A4: ASL A
#_08A5A5: TAX

;---------------------------------------------------------------------------------------------------

#_08A5A6: LDY.b #$00

#_08A5A8: STZ.b $04

.next_object
#_08A5AA: REP #$20

#_08A5AC: LDA.w .offset+0,X
#_08A5AF: AND.w #$00FF
#_08A5B2: CMP.w #$0080
#_08A5B5: BCC .x_positive

#_08A5B7: ORA.w #$FF00

.x_positive
#_08A5BA: CLC
#_08A5BB: ADC.b $00
#_08A5BD: STA.b $08

#_08A5BF: LDA.w .offset+1,X
#_08A5C2: AND.w #$00FF
#_08A5C5: CMP.w #$0080
#_08A5C8: BCC .y_positive

#_08A5CA: ORA.w #$FF00

.y_positive
#_08A5CD: CLC
#_08A5CE: ADC.b $02
#_08A5D0: STA.b $0A

;---------------------------------------------------------------------------------------------------

#_08A5D2: SEP #$20

#_08A5D4: PHX
#_08A5D5: LDX.b #$F0

#_08A5D7: LDA.b $09
#_08A5D9: BNE .off_screen

#_08A5DB: LDA.b $0B
#_08A5DD: BNE .off_screen

#_08A5DF: LDA.b $0A
#_08A5E1: STA.b ($90),Y

#_08A5E3: LDA.b $08
#_08A5E5: CMP.b #$F0
#_08A5E7: BCS .off_screen

#_08A5E9: TAX

.off_screen
#_08A5EA: INY

#_08A5EB: TXA
#_08A5EC: STA.b ($90),Y

#_08A5EE: INY

#_08A5EF: PLX
#_08A5F0: LDA.w .char_and_prop+0,X
#_08A5F3: STA.b ($90),Y

#_08A5F5: INY

#_08A5F6: LDA.w .char_and_prop+1,X
#_08A5F9: AND.b #$CF
#_08A5FB: ORA.b $65
#_08A5FD: STA.b ($90),Y

#_08A5FF: INY
#_08A600: PHY

#_08A601: TYA
#_08A602: SEC
#_08A603: SBC.b #$04
#_08A605: LSR A
#_08A606: LSR A
#_08A607: TAY

#_08A608: LDA.b #$00
#_08A60A: STA.b ($92),Y

#_08A60C: PLY

#_08A60D: JSR Ancilla_AllocateOAMFromCustomRegion

#_08A610: INX
#_08A611: INX

#_08A612: INC.b $04

#_08A614: LDA.b $04
#_08A616: CMP.b #$04
#_08A618: BEQ .done

#_08A61A: BRL .next_object

;---------------------------------------------------------------------------------------------------

.done
#_08A61D: PLX

#_08A61E: LDY.b #$01
#_08A620: LDA.b ($90),Y

#_08A622: CMP.b #$F0
#_08A624: BNE .exit

#_08A626: LDY.b #$05

#_08A628: LDA.b ($90),Y
#_08A62A: CMP.b #$F0
#_08A62C: BNE .exit

#_08A62E: STZ.w $0C4A,X

.exit
#_08A631: RTS

;===================================================================================================

Ancilla33_BlastWallExplosion:
#_08A632: LDA.b $11
#_08A634: BNE .proceed_to_draw

#_08A636: LDA.l $7F0000,X
#_08A63A: BEQ .inactive_component

#_08A63C: LDA.l $7F0008,X
#_08A640: DEC A
#_08A641: STA.l $7F0008,X
#_08A645: BNE .proceed_to_draw

#_08A647: LDA.l $7F0000,X
#_08A64B: INC A
#_08A64C: STA.l $7F0000,X
#_08A650: BEQ .no_fireball

#_08A652: CMP.b #$09
#_08A654: BCS .no_fireball

;---------------------------------------------------------------------------------------------------

#_08A656: PHX
#_08A657: TXA

#_08A658: ASL A
#_08A659: ASL A
#_08A65A: STA.b $04

#_08A65C: LDY.b #$0A
#_08A65E: LDA.b #!ANCILLA_32
#_08A660: JSL AncillaAdd_BlastWallFireball

#_08A664: PLX

;---------------------------------------------------------------------------------------------------

.no_fireball
#_08A665: LDA.l $7F0000,X
#_08A669: CMP.b #$0B
#_08A66B: BNE .dont_reset_state

#_08A66D: LDA.b #$00
#_08A66F: STA.l $7F0000,X
#_08A673: STA.l $7F0008,X

#_08A677: BRA .proceed_to_draw

.dont_reset_state
#_08A679: TAY

#_08A67A: LDA.b #$03
#_08A67C: STA.l $7F0008,X

.proceed_to_draw
#_08A680: BRL AncillaDraw_BlastWallExplosion

;---------------------------------------------------------------------------------------------------

.inactive_component
#_08A683: TXA
#_08A684: EOR.b #$01
#_08A686: TAX

#_08A687: LDA.l $7F0000,X
#_08A68B: CMP.b #$06
#_08A68D: BNE .proceed_to_draw

#_08A68F: LDA.l $7F0008,X
#_08A693: CMP.b #$02
#_08A695: BNE .proceed_to_draw

#_08A697: LDX.w $0380

#_08A69A: LDA.w $0C5E
#_08A69D: INC A
#_08A69E: CMP.b #$07
#_08A6A0: BCC .reset_inactive_component

#_08A6A2: BRL AncillaDraw_BlastWallExplosion

;---------------------------------------------------------------------------------------------------

.reset_inactive_component
#_08A6A5: STA.w $0C5E

#_08A6A8: LDA.b #$01
#_08A6AA: STA.l $7F0000,X

#_08A6AE: LDA.b #$03
#_08A6B0: STA.l $7F0008,X

#_08A6B4: PHX

;---------------------------------------------------------------------------------------------------

#_08A6B5: LDA.b #$03
#_08A6B7: STA.b $06

.next_position
#_08A6B9: STZ.b $00
#_08A6BB: STZ.b $01
#_08A6BD: STZ.b $02
#_08A6BF: STZ.b $03

#_08A6C1: STX.b $04

#_08A6C3: LDX.b #$00

#_08A6C5: LDA.l $7F001C
#_08A6C9: CMP.b #$04
#_08A6CB: BCS .diverge_v

#_08A6CD: LDX.b #$02

.diverge_v
#_08A6CF: LDA.b #$0D
#_08A6D1: STA.b $00,X

#_08A6D3: LDA.b $06
#_08A6D5: AND.b #$02
#_08A6D7: BEQ .dont_invert

#_08A6D9: LDA.b $00,X
#_08A6DB: EOR.b #$FF
#_08A6DD: INC A
#_08A6DE: STA.b $00,X

#_08A6E0: LDA.b #$FF
#_08A6E2: STA.b $01,X

.dont_invert
#_08A6E4: LDA.b $04
#_08A6E6: ASL A
#_08A6E7: ASL A
#_08A6E8: ASL A
#_08A6E9: STA.b $08

#_08A6EB: LDA.b $06
#_08A6ED: ASL A
#_08A6EE: CLC
#_08A6EF: ADC.b $08
#_08A6F1: TAX

#_08A6F2: REP #$20

#_08A6F4: LDA.l $7F0020,X
#_08A6F8: CLC
#_08A6F9: ADC.b $00
#_08A6FB: STA.l $7F0020,X

#_08A6FF: LDA.l $7F0030,X
#_08A703: CLC
#_08A704: ADC.b $02
#_08A706: STA.l $7F0030,X

#_08A70A: SEC
#_08A70B: SBC.b $E2
#_08A70D: STA.b $72

#_08A70F: SEP #$20

#_08A711: LDA.b $73
#_08A713: BNE .no_sfx

#_08A715: LDA.b $72
#_08A717: JSR Ancilla_SetPanRelativeCoordinates
#_08A71A: ORA.b #!SFX2_0C
#_08A71C: STA.w $012E

.no_sfx
#_08A71F: LDX.b $04

#_08A721: DEC.b $06
#_08A723: BPL .next_position

#_08A725: PLX

;===================================================================================================

AncillaDraw_BlastWallExplosion:
#_08A726: LDX.w $0380

#_08A729: LDA.l $7F0000,X
#_08A72D: BEQ .dont_draw

#_08A72F: LDY.b #$07

#_08A731: CPX.b #$01
#_08A733: BEQ .next_object

#_08A735: LDY.b #$03

.next_object
#_08A737: PHY
#_08A738: PHX

#_08A739: TYA
#_08A73A: ASL A
#_08A73B: TAX

#_08A73C: REP #$20

#_08A73E: LDA.l $7F0020,X
#_08A742: STA.b $00

#_08A744: LDA.l $7F0030,X
#_08A748: STA.b $02

#_08A74A: SEP #$20

#_08A74C: PLX
#_08A74D: PLY

#_08A74E: JSR AncillaDraw_BlastWallBlast

#_08A751: SEP #$20

#_08A753: DEY
#_08A754: TYA
#_08A755: AND.b #$03
#_08A757: CMP.b #$03
#_08A759: BNE .next_object

;---------------------------------------------------------------------------------------------------

.dont_draw
#_08A75B: LDA.w $0C5E
#_08A75E: CMP.b #$06
#_08A760: BNE Ancilla_RestoreIndex

#_08A762: LDX.b #$01

; Look for an active component
.next_check
#_08A764: LDA.l $7F0000,X
#_08A768: BNE Ancilla_RestoreIndex

#_08A76A: DEX
#_08A76B: BPL .next_check

; Die if there are none
#_08A76D: STZ.w $0C4A
#_08A770: STZ.w $0C4B

#_08A773: STZ.w $0112

;===================================================================================================
; Just gets the index back...
; This is 100% unnecessary and a waste of cycles and memory
;===================================================================================================
Ancilla_RestoreIndex:
#_08A776: LDX.w $0FA0

#_08A779: RTS

;===================================================================================================

AncillaDraw_BlastWallBlast:
#_08A77A: PHX
#_08A77B: PHY

#_08A77C: LDA.b #$30
#_08A77E: STA.b $65
#_08A780: STZ.b $64

#_08A782: LDA.l $7F0000,X
#_08A786: TAY

#_08A787: LDA.w BombDraw_object_count,Y
#_08A78A: STA.b $08

#_08A78C: LDA.w Bomb_anim_step,Y
#_08A78F: TAY

#_08A790: LDA.w BombDraw_data_offset,Y
#_08A793: ASL A
#_08A794: TAX

#_08A795: ASL A
#_08A796: STA.b $04
#_08A798: STZ.b $05

#_08A79A: STZ.b $0A

#_08A79C: LDA.b #$32
#_08A79E: STA.b $0B

#_08A7A0: STZ.b $06
#_08A7A2: STZ.b $07

#_08A7A4: LDA.b #$18

#_08A7A6: LDY.w $0FB3
#_08A7A9: BEQ .use_region_a

#_08A7AB: JSL OAM_AllocateFromRegionD

#_08A7AF: BRA .continue

.use_region_a
#_08A7B1: JSL OAM_AllocateFromRegionA

;---------------------------------------------------------------------------------------------------

.continue
#_08A7B5: REP #$20

#_08A7B7: LDA.b $00
#_08A7B9: SEC
#_08A7BA: SBC.b $E8
#_08A7BC: STA.b $0C

#_08A7BE: LDA.b $02
#_08A7C0: SEC
#_08A7C1: SBC.b $E2
#_08A7C3: STA.b $0E

#_08A7C5: SEP #$20

#_08A7C7: LDY.b #$00
#_08A7C9: JSR AncillaDraw_Explosion

#_08A7CC: PLY
#_08A7CD: PLX

#_08A7CE: RTS

;===================================================================================================

AncillaDraw_Explosion:
.next_object
#_08A7CF: LDA.w BombDraw_char_and_prop,X
#_08A7D2: CMP.b #$FF
#_08A7D4: BEQ .skip

#_08A7D6: STX.b $72

#_08A7D8: REP #$20

#_08A7DA: STZ.b $74

#_08A7DC: LDA.b $06
#_08A7DE: ASL A
#_08A7DF: ASL A
#_08A7E0: CLC
#_08A7E1: ADC.b $04
#_08A7E3: TAX

#_08A7E4: LDA.w BombDraw_offset+0,X
#_08A7E7: CLC
#_08A7E8: ADC.b $0C
#_08A7EA: STA.b $00

#_08A7EC: LDA.w BombDraw_offset+2,X
#_08A7EF: CLC
#_08A7F0: ADC.b $0E
#_08A7F2: STA.b $02

#_08A7F4: SEP #$20

#_08A7F6: LDX.b $72

#_08A7F8: JSR Ancilla_SetOAM_XY_safe

#_08A7FB: LDA.w BombDraw_char_and_prop+0,X
#_08A7FE: STA.b ($90),Y

#_08A800: INY

#_08A801: LDA.w BombDraw_char_and_prop+1,X
#_08A804: AND.b #$C1
#_08A806: ORA.b $65
#_08A808: ORA.b $0B
#_08A80A: STA.b ($90),Y

#_08A80C: INY
#_08A80D: STY.b $72
#_08A80F: STX.b $73

#_08A811: TYA
#_08A812: SEC
#_08A813: SBC.b #$04
#_08A815: LSR A
#_08A816: LSR A
#_08A817: TAY

#_08A818: TXA
#_08A819: LSR A
#_08A81A: TAX

#_08A81B: LDA.w BombDraw_oam_size,X
#_08A81E: ORA.b $75

#_08A820: STA.b ($92),Y

#_08A822: LDX.b $73
#_08A824: LDY.b $72

;---------------------------------------------------------------------------------------------------

.skip
#_08A826: INX
#_08A827: INX

#_08A828: INC.b $06

#_08A82A: LDA.b $06
#_08A82C: CMP.b $08
#_08A82E: BNE .next_object

#_08A830: RTS

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
#_08A831: db $AC, $AE

;---------------------------------------------------------------------------------------------------

Ancilla15_JumpSplash:
#_08A833: LDA.b $11
#_08A835: BNE AncillaDraw_JumpSplash

#_08A837: DEC.w $03B1,X
#_08A83A: BPL .delay

#_08A83C: STZ.w $03B1,X

#_08A83F: LDA.b #$01
#_08A841: STA.w $0C5E,X

.delay
#_08A844: LDA.w $0C5E,X
#_08A847: BEQ AncillaDraw_JumpSplash

#_08A849: LDA.w $0C22,X
#_08A84C: CLC
#_08A84D: ADC.b #$FC
#_08A84F: STA.w $0C22,X
#_08A852: STA.w $0C2C,X

#_08A855: CMP.b #$E8
#_08A857: BCS .speed_not_maxed

#_08A859: STZ.w $0C4A,X

#_08A85C: LDA.w $02E0
#_08A85F: BNE .am_bunny

#_08A861: LDA.b $5D
#_08A863: CMP.b #!LINKSTATE_04
#_08A865: BNE .exit

.am_bunny
#_08A867: LDA.w $0345
#_08A86A: BEQ .exit

#_08A86C: PHX
#_08A86D: JSL CheckAbilityToSwim
#_08A871: PLX

.exit
#_08A872: RTS

;---------------------------------------------------------------------------------------------------

.speed_not_maxed
#_08A873: JSR Ancilla_Move_Y
#_08A876: JSR Ancilla_Move_X

;===================================================================================================

AncillaDraw_JumpSplash:
#_08A879: JSR Ancilla_PrepOAMCoord

#_08A87C: LDA.w $0C04,X
#_08A87F: STA.b $06

#_08A881: LDA.w $0C18,X
#_08A884: STA.b $07

#_08A886: REP #$20

#_08A888: LDA.b $22
#_08A88A: SEC
#_08A88B: SBC.b $06
#_08A88D: STA.b $08

#_08A88F: LDA.b $22
#_08A891: CLC
#_08A892: ADC.b $08
#_08A894: SEC
#_08A895: SBC.b $E2
#_08A897: STA.b $08

#_08A899: LDA.b $06
#_08A89B: CLC
#_08A89C: ADC.w #$000C
#_08A89F: SEC
#_08A8A0: SBC.b $E2
#_08A8A2: STA.b $06

;---------------------------------------------------------------------------------------------------

#_08A8A4: SEP #$20

#_08A8A6: PHX

#_08A8A7: LDA.w $0C5E,X
#_08A8AA: STA.b $0A

#_08A8AC: TAX

#_08A8AD: LDA.b #$01
#_08A8AF: STA.b $72

#_08A8B1: LDY.b #$00
#_08A8B3: STY.b $0C

;---------------------------------------------------------------------------------------------------

.next_object
#_08A8B5: JSR Ancilla_SetOAM_XY

#_08A8B8: LDA.w JumpSplash_char,X
#_08A8BB: STA.b ($90),Y

#_08A8BD: INY

#_08A8BE: LDA.b #$24
#_08A8C0: ORA.b $0C
#_08A8C2: STA.b ($90),Y

#_08A8C4: INY
#_08A8C5: PHY

#_08A8C6: TYA
#_08A8C7: SEC
#_08A8C8: SBC.b #$04
#_08A8CA: LSR A
#_08A8CB: LSR A
#_08A8CC: TAY

#_08A8CD: LDA.b #$02
#_08A8CF: STA.b ($92),Y

#_08A8D1: PLY

;---------------------------------------------------------------------------------------------------

#_08A8D2: JSR Ancilla_AllocateOAMFromCustomRegion

#_08A8D5: LDA.b $08
#_08A8D7: STA.b $02

#_08A8D9: LDA.b #$40
#_08A8DB: STA.b $0C

#_08A8DD: DEC.b $72
#_08A8DF: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_08A8E1: LDA.b $06
#_08A8E3: STA.b $02

#_08A8E5: JSR Ancilla_SetOAM_XY

#_08A8E8: LDA.b #$C0
#_08A8EA: STA.b ($90),Y

#_08A8EC: INY
#_08A8ED: LDA.b #$24
#_08A8EF: STA.b ($90),Y

#_08A8F1: INY
#_08A8F2: TYA

#_08A8F3: SEC
#_08A8F4: SBC.b #$04

#_08A8F6: LSR A
#_08A8F7: LSR A
#_08A8F8: TAY

#_08A8F9: LDA.b #$02
#_08A8FB: STA.b ($92),Y

#_08A8FD: LDA.b $0A
#_08A8FF: CMP.b #$01
#_08A901: BNE .exit

#_08A903: STA.b ($92),Y

.exit
#_08A905: PLX

#_08A906: RTS

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
#_08A907: db $90, $91

;---------------------------------------------------------------------------------------------------

Ancilla16_HitStars:
#_08A909: DEC.w $039F,X
#_08A90C: BMI .continue

#_08A90E: RTS

.continue
#_08A90F: STZ.w $039F,X

#_08A912: LDA.b $11
#_08A914: BNE AncillaDraw_HitStars

#_08A916: DEC.w $03B1,X
#_08A919: BPL .delay

#_08A91B: STZ.w $03B1,X

#_08A91E: LDA.b #$01
#_08A920: STA.w $0C5E,X

.delay
#_08A923: LDA.w $0C5E,X
#_08A926: BEQ AncillaDraw_HitStars

#_08A928: LDA.w $0C22,X
#_08A92B: CLC
#_08A92C: ADC.b #$FC
#_08A92E: STA.w $0C22,X
#_08A931: STA.w $0C2C,X

#_08A934: CMP.b #$E8
#_08A936: BCS .dont_die

#_08A938: STZ.w $0C4A,X

#_08A93B: RTS

.dont_die
#_08A93C: JSR Ancilla_Move_Y
#_08A93F: JSR Ancilla_Move_X

;===================================================================================================

AncillaDraw_HitStars:
#_08A942: JSR Ancilla_PrepOAMCoord

#_08A945: LDA.w $0C04,X
#_08A948: STA.b $06

#_08A94A: LDA.w $0C18,X
#_08A94D: STA.b $07

#_08A94F: LDA.w $038A,X
#_08A952: STA.b $72

#_08A954: LDA.w $038F,X
#_08A957: STA.b $73

#_08A959: REP #$20

#_08A95B: LDA.b $72
#_08A95D: SEC
#_08A95E: SBC.b $06
#_08A960: STA.b $08

#_08A962: LDA.b $72
#_08A964: CLC
#_08A965: ADC.b $08

#_08A967: SEC
#_08A968: SBC.w #$0008

#_08A96B: SEC
#_08A96C: SBC.b $E2
#_08A96E: STA.b $08

;---------------------------------------------------------------------------------------------------

#_08A970: SEP #$20

#_08A972: LDA.w $0C54,X
#_08A975: CMP.b #$02
#_08A977: BNE .leave_allocation_alone

#_08A979: LDA.b #$08
#_08A97B: JSR Ancilla_AllocateOAMFromRegion_B_or_E

.leave_allocation_alone
#_08A97E: PHX

#_08A97F: LDA.b #$01
#_08A981: STA.b $72

#_08A983: LDA.w $0C5E,X
#_08A986: TAX

#_08A987: LDY.b #$00
#_08A989: STY.b $73

.next_object
#_08A98B: JSR Ancilla_SetOAM_XY

#_08A98E: LDA.w HitStar_char,X
#_08A991: STA.b ($90),Y

#_08A993: INY

#_08A994: LDA.b #$04
#_08A996: ORA.b $65
#_08A998: ORA.b $73
#_08A99A: STA.b ($90),Y

#_08A99C: INY

#_08A99D: PHY
#_08A99E: TYA

#_08A99F: SEC
#_08A9A0: SBC.b #$04

#_08A9A2: LSR A
#_08A9A3: LSR A
#_08A9A4: TAY

#_08A9A5: LDA.b #$00
#_08A9A7: STA.b ($92),Y

#_08A9A9: PLY

#_08A9AA: JSR HitStars_UpdateOAMBufferPosition

#_08A9AD: LDA.b #$40
#_08A9AF: STA.b $73

#_08A9B1: LDA.b $08
#_08A9B3: STA.b $02

#_08A9B5: DEC.b $72
#_08A9B7: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_08A9B9: PLX

#_08A9BA: RTS

;===================================================================================================

pool Ancilla17_ShovelDirt

.offset
; group00
#_08A9BB: dw  18, -13
#_08A9BF: dw  -9,   4

; group01
#_08A9C3: dw  18,  13
#_08A9C7: dw  -9, -11

.char
#_08A9CB: db $40
#_08A9CC: db $50

pool off

;---------------------------------------------------------------------------------------------------

Ancilla17_ShovelDirt:
#_08A9CD: JSR Ancilla_PrepOAMCoord

#_08A9D0: LDA.w $0C68,X
#_08A9D3: BNE .dont_terminate

#_08A9D5: LDA.b #$08
#_08A9D7: STA.w $0C68,X

#_08A9DA: INC.w $0C5E,X

#_08A9DD: LDA.w $0C5E,X
#_08A9E0: CMP.b #$02
#_08A9E2: BNE .dont_terminate

#_08A9E4: STZ.w $0C4A,X

#_08A9E7: RTS

;---------------------------------------------------------------------------------------------------

.dont_terminate
#_08A9E8: LDA.w $0C5E,X
#_08A9EB: STA.b $0A

#_08A9ED: ASL A
#_08A9EE: ASL A
#_08A9EF: STA.b $08

#_08A9F1: LDY.b #$00

#_08A9F3: LDA.b $2F
#_08A9F5: CMP.b #$04
#_08A9F7: BEQ .facing_left

#_08A9F9: LDY.b #$08

.facing_left
#_08A9FB: TYA
#_08A9FC: CLC
#_08A9FD: ADC.b $08
#_08A9FF: TAY

;---------------------------------------------------------------------------------------------------

#_08AA00: REP #$20

#_08AA02: LDA.w .offset+0,Y
#_08AA05: CLC
#_08AA06: ADC.b $00
#_08AA08: STA.b $00

#_08AA0A: LDA.w .offset+2,Y
#_08AA0D: CLC
#_08AA0E: ADC.b $02
#_08AA10: STA.b $02

#_08AA12: CLC
#_08AA13: ADC.w #$0008
#_08AA16: STA.b $04

#_08AA18: SEP #$20

#_08AA1A: PHX

;---------------------------------------------------------------------------------------------------

#_08AA1B: LDY.b #$00
#_08AA1D: STY.b $72

.next_object
#_08AA1F: JSR Ancilla_SetOAM_XY

#_08AA22: LDX.b $0A

#_08AA24: LDA.w .char,X
#_08AA27: CLC
#_08AA28: ADC.b $72
#_08AA2A: STA.b ($90),Y

#_08AA2C: INY

#_08AA2D: LDA.b #$04
#_08AA2F: ORA.b $65
#_08AA31: STA.b ($90),Y

#_08AA33: INY
#_08AA34: PHY

#_08AA35: TYA
#_08AA36: SEC
#_08AA37: SBC.b #$04
#_08AA39: LSR A
#_08AA3A: LSR A
#_08AA3B: TAY

#_08AA3C: LDA.b #$00
#_08AA3E: STA.b ($92),Y

#_08AA40: PLY

#_08AA41: JSR Ancilla_AllocateOAMFromCustomRegion

#_08AA44: LDA.b $04
#_08AA46: STA.b $02

#_08AA48: LDA.b $05
#_08AA4A: STA.b $03

#_08AA4C: INC.b $72

#_08AA4E: LDA.b $72
#_08AA50: CMP.b #$02
#_08AA52: BNE .next_object

;---------------------------------------------------------------------------------------------------

#_08AA54: PLX

#_08AA55: RTS

;===================================================================================================

pool AncillaDraw_BlastWallFireball

.char
#_08AA56: db $9D, $9C, $8D

pool off

;===================================================================================================

Ancilla32_BlastWallFireball:
#_08AA59: LDA.b $11
#_08AA5B: BNE AncillaDraw_BlastWallFireball

#_08AA5D: LDA.w $0C5E,X
#_08AA60: CLC
#_08AA61: ADC.b #$02
#_08AA63: STA.w $0C5E,X

#_08AA66: CLC
#_08AA67: ADC.w $0C22,X
#_08AA6A: STA.w $0C22,X

#_08AA6D: JSR Ancilla_Move_Y
#_08AA70: JSR Ancilla_Move_X

#_08AA73: LDA.l $7F0040,X
#_08AA77: DEC A
#_08AA78: STA.l $7F0040,X

#_08AA7C: BPL AncillaDraw_BlastWallFireball

#_08AA7E: STZ.w $0C4A,X

#_08AA81: RTS

;===================================================================================================

AncillaDraw_BlastWallFireball:
#_08AA82: LDA.b #$04

#_08AA84: LDY.w $0FB3
#_08AA87: BEQ .use_region_a

#_08AA89: JSL OAM_AllocateFromRegionD
#_08AA8D: BRA .continue

.use_region_a
#_08AA8F: JSL OAM_AllocateFromRegionA

;---------------------------------------------------------------------------------------------------

.continue
#_08AA93: LDY.b #$00

#_08AA95: LDA.l $7F0040,X
#_08AA99: STA.b $06

#_08AA9B: AND.b #$08
#_08AA9D: BNE .proceed_with_character

#_08AA9F: LDY.b #$01

#_08AAA1: LDA.b $06
#_08AAA3: AND.b #$04
#_08AAA5: BNE .proceed_with_character

#_08AAA7: LDY.b #$02

.proceed_with_character
#_08AAA9: LDA.w .char,Y
#_08AAAC: STA.b $06

#_08AAAE: JSR Ancilla_PrepOAMCoord

#_08AAB1: LDY.b #$00
#_08AAB3: JSR Ancilla_SetOAM_XY

#_08AAB6: LDA.b $06
#_08AAB8: STA.b ($90),Y

#_08AABA: INY
#_08AABB: LDA.b #$22
#_08AABD: STA.b ($90),Y

#_08AABF: LDA.b #$00
#_08AAC1: STA.b ($92)

#_08AAC3: RTS

;===================================================================================================

Ancilla18_EtherSpell:
#_08AAC4: LDA.b $11
#_08AAC6: BEQ .submode_fine

#_08AAC8: BRL .exit

;---------------------------------------------------------------------------------------------------

.submode_fine
#_08AACB: LDA.w $0C54,X
#_08AACE: BEQ .done_palette_flash

#_08AAD0: LDA.w $031D
#_08AAD3: BNE .lightning_descended

#_08AAD5: INC.w $0BF0,X

#_08AAD8: LDA.w $0BF0,X
#_08AADB: AND.b #$04
#_08AADD: BEQ .oversaturate

#_08AADF: BRA .restore

;---------------------------------------------------------------------------------------------------

.lightning_descended
#_08AAE1: LDA.w $031D
#_08AAE4: CMP.b #$0B
#_08AAE6: BNE .restore

;---------------------------------------------------------------------------------------------------

.oversaturate
#_08AAE8: PHX

#_08AAE9: JSL RefreshLinkEquipmentPalettes_zap
#_08AAED: JSL PaletteFilter_Oversaturation

#_08AAF1: PLX

#_08AAF2: BRA .done_palette_flash

;---------------------------------------------------------------------------------------------------

.restore
#_08AAF4: PHX

#_08AAF5: JSL RefreshLinkEquipmentPalettes_sword_and_mail
#_08AAF9: JSL Palette_RestoreBGFromFlash

#_08AAFD: PLX

;---------------------------------------------------------------------------------------------------

.done_palette_flash
#_08AAFE: LDA.w $0C54,X
#_08AB01: CMP.b #$02
#_08AB03: BNE .check_ball_timer

#_08AB05: DEC.w $03B1,X
#_08AB08: BPL .delay

#_08AB0A: LDA.b #$02
#_08AB0C: STA.w $03B1,X

#_08AB0F: LDA.w $0C5E,X
#_08AB12: INC A
#_08AB13: STA.w $0C5E,X

#_08AB16: CMP.b #$02
#_08AB18: BNE .delay

#_08AB1A: DEC.w $0C5E,X

#_08AB1D: LDA.b #$10
#_08AB1F: STA.w $0C2C,X

#_08AB22: LDA.b #$03
#_08AB24: STA.w $0C54,X

;---------------------------------------------------------------------------------------------------

.delay
#_08AB27: LDA.w $0C2C,X
#_08AB2A: CLC
#_08AB2B: ADC.b #$01
#_08AB2D: STA.w $0C2C,X

#_08AB30: BRL EtherSpell_HandleRadialSpin

;---------------------------------------------------------------------------------------------------

.check_ball_timer
#_08AB33: DEC.w $03B1,X
#_08AB36: BPL .dont_swap_char

#_08AB38: LDA.b #$02
#_08AB3A: STA.w $03B1,X

#_08AB3D: LDA.w $0C5E,X
#_08AB40: EOR.b #$01
#_08AB42: STA.w $0C5E,X

;---------------------------------------------------------------------------------------------------

.dont_swap_char
#_08AB45: LDA.w $0C54,X
#_08AB48: BEQ .lightning

#_08AB4A: CMP.b #$01
#_08AB4C: BEQ .pulsing_orb

#_08AB4E: CMP.b #$03
#_08AB50: BEQ .do_spin

#_08AB52: CMP.b #$04
#_08AB54: BEQ .dissipate

;---------------------------------------------------------------------------------------------------

#_08AB56: LDA.w $0C2C,X
#_08AB59: CLC
#_08AB5A: ADC.b #$10
#_08AB5C: BPL .radial_speed_not_maxed

#_08AB5E: LDA.b #$7F

.radial_speed_not_maxed
#_08AB60: STA.w $0C2C,X
#_08AB63: BRL .do_spin

;---------------------------------------------------------------------------------------------------

.lightning
#_08AB66: BRA EtherSpell_HandleLightningStroke

;---------------------------------------------------------------------------------------------------

.pulsing_orb
#_08AB68: BRL EtherSpell_HandleOrbPulse

;---------------------------------------------------------------------------------------------------

.dissipate
#_08AB6B: LDA.l $7F5812
#_08AB6F: DEC A
#_08AB70: STA.l $7F5812

#_08AB74: BNE .do_spin

#_08AB76: LDA.b #$05
#_08AB78: STA.w $0C54,X

;---------------------------------------------------------------------------------------------------

.do_spin
#_08AB7B: BRL EtherSpell_HandleRadialSpin

.exit
#_08AB7E: RTS

;===================================================================================================

UNREACHABLE_08AB7F:
#_08AB7F: db $E0, $00, $E8, $E8
#_08AB83: db $00, $20, $18, $18

;===================================================================================================

EtherSpell_HandleLightningStroke:
#_08AB87: JSR Ancilla_Move_Y

#_08AB8A: LDA.w $0C0E,X
#_08AB8D: STA.b $01

#_08AB8F: LDA.w $0BFA,X
#_08AB92: STA.b $00

#_08AB94: AND.b #$F0
#_08AB96: CMP.l $7F580C
#_08AB9A: BEQ .dont_lengthen

#_08AB9C: STA.l $7F580C

#_08ABA0: INC.w $03C2,X

.dont_lengthen
#_08ABA3: REP #$20

#_08ABA5: LDA.b $00
#_08ABA7: CMP.w #$E000
#_08ABAA: BCS .delay

#_08ABAC: LDA.l $7F580A
#_08ABB0: CMP.w #$E000
#_08ABB3: BCS .at_target

#_08ABB5: LDA.l $7F580A
#_08ABB9: CMP.b $00
#_08ABBB: BEQ .at_target
#_08ABBD: BCS .delay

.at_target
#_08ABBF: SEP #$20

#_08ABC1: LDA.b #$01
#_08ABC3: STA.w $0C54,X

.delay
#_08ABC6: SEP #$20

#_08ABC8: BRL AncillaDraw_EtherBlitz

;===================================================================================================

EtherSpell_HandleOrbPulse:
#_08ABCB: LDA.w $03C2,X
#_08ABCE: BMI .continue

#_08ABD0: DEC.w $039F,X
#_08ABD3: BPL .proceed_to_draw

#_08ABD5: LDA.b #$03
#_08ABD7: STA.w $039F,X

#_08ABDA: DEC.w $03C2,X
#_08ABDD: BPL .proceed_to_draw

#_08ABDF: LDA.b #$09
#_08ABE1: STA.w $039F,X

#_08ABE4: BRA .continue

.proceed_to_draw
#_08ABE6: BRL AncillaDraw_EtherBlitz

;---------------------------------------------------------------------------------------------------

.continue
#_08ABE9: DEC.w $039F,X
#_08ABEC: BPL .dont_damage

#_08ABEE: LDA.b #$02
#_08ABF0: STA.w $0C54,X

#_08ABF3: STZ.w $0C22,X

#_08ABF6: LDA.b #$10
#_08ABF8: STA.w $0C2C,X

#_08ABFB: STZ.w $0C5E,X

#_08ABFE: LDA.b #$02
#_08AC00: STA.w $03B1,X

#_08AC03: LDA.w $031D
#_08AC06: BEQ .dont_damage

#_08AC08: PHX
#_08AC09: JSL Medallion_CheckSpriteDamage
#_08AC0D: PLX

.dont_damage
#_08AC0E: LDY.b #$00
#_08AC10: BRL AncillaDraw_EtherOrb

;===================================================================================================

EtherSpell_HandleRadialSpin:
#_08AC13: LDA.w $0C54,X
#_08AC16: CMP.b #$04
#_08AC18: BNE .skip_sfx

#_08AC1A: LDY.b #!SFX3_2A

#_08AC1C: LDA.b $1A
#_08AC1E: AND.b #$07
#_08AC20: BEQ .set_sfx

; !HARDCODED pan values
#_08AC22: LDY.b #!SFX3_2A|$80

#_08AC24: CMP.b #$04
#_08AC26: BEQ .set_sfx

#_08AC28: CMP.b #$07
#_08AC2A: BNE .skip_sfx

#_08AC2C: LDY.b #!SFX3_2A|$40

.set_sfx
#_08AC2E: STY.w $012F

;---------------------------------------------------------------------------------------------------

.skip_sfx
#_08AC31: LDA.w $0C54,X
#_08AC34: CMP.b #$04
#_08AC36: BEQ .dont_expand

#_08AC38: LDA.l $7F5808
#_08AC3C: STA.w $0C04,X

#_08AC3F: STZ.w $0C18,X

#_08AC42: JSR Ancilla_Move_X

#_08AC45: LDA.w $0C04,X
#_08AC48: STA.l $7F5808

#_08AC4C: CMP.b #$40
#_08AC4E: BNE .dont_expand

#_08AC50: LDA.b #$04
#_08AC52: STA.w $0C54,X

.dont_expand
#_08AC55: PHX

#_08AC56: LDA.w $0C54,X
#_08AC59: STA.b $72

#_08AC5B: LDA.w $0C5E,X
#_08AC5E: STA.b $73

;---------------------------------------------------------------------------------------------------

#_08AC60: LDY.b #$00
#_08AC62: LDX.b #$07

.next_orb
#_08AC64: LDA.b $72
#_08AC66: CMP.b #$02
#_08AC68: BEQ .dont_rotate

#_08AC6A: CMP.b #$05
#_08AC6C: BEQ .dont_rotate

#_08AC6E: LDA.l $7F5800,X
#_08AC72: INC A
#_08AC73: AND.b #$3F
#_08AC75: STA.l $7F5800,X

.dont_rotate
#_08AC79: LDA.l $7F5808
#_08AC7D: STA.b $08

#_08AC7F: LDA.l $7F5800,X

#_08AC83: JSR Ancilla_GetRadialProjection

#_08AC86: PHX

#_08AC87: LDA.b $72
#_08AC89: CMP.b #$02
#_08AC8B: BEQ .draw_as_segment

#_08AC8D: JSR AncillaDraw_EtherBlitzBall

#_08AC90: BRA .to_next

.draw_as_segment
#_08AC92: JSR AncillaDraw_EtherBlitzSegment

.to_next
#_08AC95: PLX
#_08AC96: DEX
#_08AC97: BPL .next_orb

;---------------------------------------------------------------------------------------------------

#_08AC99: PLX

#_08AC9A: LDA.l $7F5808
#_08AC9E: CMP.b #$F0
#_08ACA0: BCS .terminate

#_08ACA2: LDY.b #$01

.next_check
#_08ACA4: LDA.b ($90),Y
#_08ACA6: CMP.b #$F0
#_08ACA8: BNE .exit

#_08ACAA: INY ; +4
#_08ACAB: INY
#_08ACAC: INY
#_08ACAD: INY

#_08ACAE: CPY.b #$21
#_08ACB0: BNE .next_check

;---------------------------------------------------------------------------------------------------

.terminate
#_08ACB2: STZ.w $0C4A,X

#_08ACB5: LDA.b #$01
#_08ACB7: STA.w $0AAA

#_08ACBA: STZ.w $0324
#_08ACBD: STZ.w $031C
#_08ACC0: STZ.w $031D

#_08ACC3: STZ.b $50

#_08ACC5: STZ.w $0FC1

#_08ACC8: LDA.b $8A
#_08ACCA: CMP.b #$70
#_08ACCC: BNE .dont_open_mire

#_08ACCE: LDA.l $7EF2F0
#_08ACD2: AND.b #$20
#_08ACD4: BNE .dont_open_mire

#_08ACD6: LDY.b #$02
#_08ACD8: JSR Ancilla_CheckForEntranceTrigger
#_08ACDB: BCC .dont_open_mire

#_08ACDD: LDA.b #$03
#_08ACDF: STA.w $04C6

#_08ACE2: STZ.b $B0
#_08ACE4: STZ.b $C8

;---------------------------------------------------------------------------------------------------

.dont_open_mire
#_08ACE6: LDA.b $5D
#_08ACE8: CMP.b #!LINKSTATE_19
#_08ACEA: BEQ .spin_attack

#_08ACEC: LDA.b #!LINKSTATE_00
#_08ACEE: STA.b $5D

#_08ACF0: STZ.b $3D

#_08ACF2: LDY.b #$00

#_08ACF4: LDA.b $3C
#_08ACF6: BEQ .dont_flag_b

#_08ACF8: LDA.b $F0
#_08ACFA: AND.b #$80
#_08ACFC: TAY

.dont_flag_b
#_08ACFD: STY.b $3A

;---------------------------------------------------------------------------------------------------

.spin_attack
#_08ACFF: STZ.b $5E
#_08AD01: STZ.w $0325

#_08AD04: PHX

#_08AD05: JSL RefreshLinkEquipmentPalettes_sword_and_mail
#_08AD09: JSL Palette_RestoreBGAndHUD

#_08AD0D: PLX

.exit
#_08AD0E: RTS

;===================================================================================================

pool AncillaDraw_EtherBlitzBall

.char
#_08AD0F: db $68, $6A

pool off

;---------------------------------------------------------------------------------------------------

AncillaDraw_EtherBlitzBall:
#_08AD11: REP #$20

#_08AD13: PHY

#_08AD14: LDA.b $00

#_08AD16: LDY.b $02
#_08AD18: BEQ .positive_y

#_08AD1A: EOR.w #$FFFF
#_08AD1D: INC A

.positive_y
#_08AD1E: STA.b $08

#_08AD20: CLC
#_08AD21: ADC.l $7F5810

#_08AD25: CLC
#_08AD26: ADC.w #$FFF8

#_08AD29: SEC
#_08AD2A: SBC.b $E8
#_08AD2C: STA.b $00

;---------------------------------------------------------------------------------------------------

#_08AD2E: LDA.b $04

#_08AD30: LDY.b $06
#_08AD32: BEQ .positive_x

#_08AD34: EOR.w #$FFFF
#_08AD37: INC A

.positive_x
#_08AD38: STA.b $0A

#_08AD3A: CLC
#_08AD3B: ADC.l $7F580E

#_08AD3F: CLC
#_08AD40: ADC.w #$FFF8

#_08AD43: SEC
#_08AD44: SBC.b $E2
#_08AD46: STA.b $02

;---------------------------------------------------------------------------------------------------

#_08AD48: PLY

#_08AD49: SEP #$20

#_08AD4B: JSR Ancilla_SetOAM_XY

#_08AD4E: LDA.b $73
#_08AD50: TAX

#_08AD51: LDA.w .char,X
#_08AD54: STA.b ($90),Y

#_08AD56: INY

#_08AD57: LDA.b #$3C
#_08AD59: STA.b ($90),Y

#_08AD5B: INY
#_08AD5C: PHY
#_08AD5D: TYA

#_08AD5E: SEC
#_08AD5F: SBC.b #$04
#_08AD61: LSR A
#_08AD62: LSR A
#_08AD63: TAY

#_08AD64: LDA.b #$02
#_08AD66: STA.b ($92),Y

#_08AD68: JSR Ancilla_AllocateOAMFromCustomRegion

#_08AD6B: PLY

#_08AD6C: RTS

;===================================================================================================

pool AncillaDraw_EtherBlitzSegment

.char
#_08AD6D: db $40, $42
#_08AD6F: db $66, $64
#_08AD71: db $62, $60
#_08AD73: db $64, $66
#_08AD75: db $42, $40
#_08AD77: db $66, $64
#_08AD79: db $60, $62
#_08AD7B: db $64, $66
#_08AD7D: db $68, $42
#_08AD7F: db $68, $64
#_08AD81: db $68, $60
#_08AD83: db $68, $64
#_08AD85: db $68, $40
#_08AD87: db $68, $66
#_08AD89: db $68, $62
#_08AD8B: db $68, $64

;---------------------------------------------------------------------------------------------------

.prop
#_08AD8D: db $3C, $3C
#_08AD8F: db $FC, $FC
#_08AD91: db $3C, $3C
#_08AD93: db $BC, $BC
#_08AD95: db $3C, $3C
#_08AD97: db $3C, $3C
#_08AD99: db $3C, $3C
#_08AD9B: db $7C, $7C
#_08AD9D: db $3C, $7C
#_08AD9F: db $3C, $3C
#_08ADA1: db $3C, $BC
#_08ADA3: db $3C, $7C
#_08ADA5: db $3C, $7C
#_08ADA7: db $3C, $FC
#_08ADA9: db $3C, $BC
#_08ADAB: db $3C, $BC

;---------------------------------------------------------------------------------------------------

.offset_y
#_08ADAD: dw   8
#_08ADAF: dw   0
#_08ADB1: dw  -8
#_08ADB3: dw -16
#_08ADB5: dw -24
#_08ADB7: dw -16
#_08ADB9: dw  -8
#_08ADBB: dw -16
#_08ADBD: dw   8
#_08ADBF: dw   0
#_08ADC1: dw  -8
#_08ADC3: dw -16
#_08ADC5: dw -24
#_08ADC7: dw -16
#_08ADC9: dw  -8
#_08ADCB: dw   0

;---------------------------------------------------------------------------------------------------

.offset_x
#_08ADCD: dw  -8
#_08ADCF: dw -16
#_08ADD1: dw -24
#_08ADD3: dw -16
#_08ADD5: dw  -8
#_08ADD7: dw   0
#_08ADD9: dw   8
#_08ADDB: dw -16
#_08ADDD: dw  -8
#_08ADDF: dw -16
#_08ADE1: dw -24
#_08ADE3: dw -16
#_08ADE5: dw  -8
#_08ADE7: dw   0
#_08ADE9: dw   8
#_08ADEB: dw   0

pool off

;---------------------------------------------------------------------------------------------------

AncillaDraw_EtherBlitzSegment:
#_08ADED: REP #$20

#_08ADEF: PHY

#_08ADF0: LDA.b $00

#_08ADF2: LDY.b $02
#_08ADF4: BEQ .positive_y

#_08ADF6: EOR.w #$FFFF
#_08ADF9: INC A

.positive_y
#_08ADFA: STA.b $08

#_08ADFC: CLC
#_08ADFD: ADC.l $7F5810

#_08AE01: CLC
#_08AE02: ADC.w #$FFF8

#_08AE05: SEC
#_08AE06: SBC.b $E8
#_08AE08: STA.b $00

;---------------------------------------------------------------------------------------------------

#_08AE0A: LDA.b $04

#_08AE0C: LDY.b $06
#_08AE0E: BEQ .positive_x

#_08AE10: EOR.w #$FFFF
#_08AE13: INC A

.positive_x
#_08AE14: STA.b $0A

#_08AE16: CLC
#_08AE17: ADC.l $7F580E

#_08AE1B: CLC
#_08AE1C: ADC.w #$FFF8

#_08AE1F: SEC
#_08AE20: SBC.b $E2
#_08AE22: STA.b $02

;---------------------------------------------------------------------------------------------------

#_08AE24: PLY

#_08AE25: SEP #$20

#_08AE27: JSR Ancilla_SetOAM_XY

#_08AE2A: LDA.b $73
#_08AE2C: ASL A ; x16
#_08AE2D: ASL A
#_08AE2E: ASL A
#_08AE2F: ASL A
#_08AE30: STA.b $0E

#_08AE32: TXA
#_08AE33: ASL A
#_08AE34: CLC
#_08AE35: ADC.b $0E
#_08AE37: TAX

#_08AE38: LDA.w .char+0,X
#_08AE3B: STA.b ($90),Y

#_08AE3D: INY

#_08AE3E: LDA.w .prop+0,X
#_08AE41: STA.b ($90),Y

#_08AE43: INY
#_08AE44: PHY

#_08AE45: TYA
#_08AE46: SEC
#_08AE47: SBC.b #$04
#_08AE49: LSR A
#_08AE4A: LSR A
#_08AE4B: TAY

#_08AE4C: LDA.b #$02
#_08AE4E: STA.b ($92),Y

#_08AE50: PLY

;---------------------------------------------------------------------------------------------------

#_08AE51: REP #$20

#_08AE53: LDA.b $08
#_08AE55: CLC
#_08AE56: ADC.l $7F5810

#_08AE5A: CLC
#_08AE5B: ADC.w .offset_y,X

#_08AE5E: SEC
#_08AE5F: SBC.b $E8
#_08AE61: STA.b $00

;---------------------------------------------------------------------------------------------------

#_08AE63: LDA.b $0A
#_08AE65: CLC
#_08AE66: ADC.l $7F580E

#_08AE6A: CLC
#_08AE6B: ADC.w .offset_x,X

#_08AE6E: SEC
#_08AE6F: SBC.b $E2
#_08AE71: STA.b $02

;---------------------------------------------------------------------------------------------------

#_08AE73: SEP #$20

#_08AE75: PHX
#_08AE76: JSR Ancilla_SetOAM_XY
#_08AE79: PLX

#_08AE7A: LDA.w .char+1,X
#_08AE7D: STA.b ($90),Y

#_08AE7F: INY

#_08AE80: LDA.w .prop+1,X
#_08AE83: STA.b ($90),Y

#_08AE85: INY
#_08AE86: PHY

#_08AE87: TYA
#_08AE88: SEC
#_08AE89: SBC.b #$04
#_08AE8B: LSR A
#_08AE8C: LSR A
#_08AE8D: TAY

#_08AE8E: LDA.b #$02
#_08AE90: STA.b ($92),Y

#_08AE92: PLY

#_08AE93: JSR Ancilla_AllocateOAMFromCustomRegion

#_08AE96: RTS

;===================================================================================================

EtherBlitzDraw:
.char
#_08AE97: db $40, $42, $44, $46

.orb_char
#_08AE9B: db $48, $48, $4A, $4A
#_08AE9F: db $4C, $4C, $4E, $4E

.prop
#_08AEA3: db $3C, $7C, $3C, $7C
#_08AEA7: db $3C, $7C, $3C, $7C

;---------------------------------------------------------------------------------------------------

AncillaDraw_EtherBlitz:
#_08AEAB: JSR Ancilla_PrepOAMCoord

#_08AEAE: LDA.w $0C5E,X
#_08AEB1: STA.b $06

#_08AEB3: STZ.b $08

#_08AEB5: PHX

#_08AEB6: LDA.w $03C2,X
#_08AEB9: TAX

#_08AEBA: LDY.b #$00

;---------------------------------------------------------------------------------------------------

.next_object
#_08AEBC: JSR Ancilla_SetOAM_XY

#_08AEBF: PHX

#_08AEC0: LDA.b $06
#_08AEC2: ASL A
#_08AEC3: CLC
#_08AEC4: ADC.b $08
#_08AEC6: TAX

#_08AEC7: LDA.w EtherBlitzDraw_char,X
#_08AECA: STA.b ($90),Y

#_08AECC: PLX

#_08AECD: INY

#_08AECE: LDA.w EtherBlitzDraw_prop
#_08AED1: ORA.b $65
#_08AED3: STA.b ($90),Y

#_08AED5: INY
#_08AED6: PHY

#_08AED7: TYA
#_08AED8: SEC
#_08AED9: SBC.b #$04
#_08AEDB: LSR A
#_08AEDC: LSR A
#_08AEDD: TAY

#_08AEDE: LDA.b #$02
#_08AEE0: STA.b ($92),Y

#_08AEE2: PLY

#_08AEE3: REP #$20

#_08AEE5: LDA.b $00
#_08AEE7: SEC
#_08AEE8: SBC.w #$0010
#_08AEEB: STA.b $00

#_08AEED: SEP #$20

#_08AEEF: LDA.b $08
#_08AEF1: EOR.b #$01
#_08AEF3: STA.b $08

#_08AEF5: DEX
#_08AEF6: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_08AEF8: PLX

#_08AEF9: LDA.w $0C54,X
#_08AEFC: CMP.b #$01
#_08AEFE: BEQ AncillaDraw_EtherOrb

#_08AF00: RTS

;===================================================================================================

AncillaDraw_EtherOrb:
#_08AF01: REP #$20

#_08AF03: LDA.l $7F5813
#_08AF07: CLC
#_08AF08: ADC.w #$FFFF
#_08AF0B: SEC
#_08AF0C: SBC.b $E8
#_08AF0E: STA.b $00

#_08AF10: LDA.l $7F5815
#_08AF14: CLC
#_08AF15: ADC.w #$FFF8
#_08AF18: SEC
#_08AF19: SBC.b $E2
#_08AF1B: STA.b $02
#_08AF1D: STA.b $04

#_08AF1F: STZ.b $08

#_08AF21: SEP #$20

#_08AF23: PHX

#_08AF24: LDA.w $0C5E,X
#_08AF27: ASL A
#_08AF28: ASL A
#_08AF29: STA.b $06

.next_object
#_08AF2B: JSR Ancilla_SetOAM_XY

#_08AF2E: LDX.b $06

#_08AF30: LDA.w EtherBlitzDraw_orb_char,X
#_08AF33: STA.b ($90),Y

#_08AF35: INY

#_08AF36: LDA.w EtherBlitzDraw_prop,X
#_08AF39: STA.b ($90),Y

#_08AF3B: INY
#_08AF3C: PHY

#_08AF3D: TYA
#_08AF3E: SEC
#_08AF3F: SBC.b #$04
#_08AF41: LSR A
#_08AF42: LSR A
#_08AF43: TAY

#_08AF44: LDA.b #$02
#_08AF46: STA.b ($92),Y

#_08AF48: PLY

#_08AF49: JSR Ancilla_AllocateOAMFromCustomRegion

#_08AF4C: REP #$20

#_08AF4E: LDA.b $02
#_08AF50: CLC
#_08AF51: ADC.w #$0010
#_08AF54: STA.b $02

#_08AF56: INC.b $06

#_08AF58: INC.b $08

#_08AF5A: LDA.b $08
#_08AF5C: CMP.w #$0004
#_08AF5F: BEQ .exit

#_08AF61: CMP.w #$0002
#_08AF64: BNE .continue

#_08AF66: LDA.b $00
#_08AF68: CLC
#_08AF69: ADC.w #$0010
#_08AF6C: STA.b $00

#_08AF6E: LDA.b $04
#_08AF70: STA.b $02

.continue
#_08AF72: SEP #$20

#_08AF74: BRA .next_object

;---------------------------------------------------------------------------------------------------

.exit
#_08AF76: SEP #$20

#_08AF78: PLX

#_08AF79: RTS

;===================================================================================================

pool AncillaAdd_BombosSpell

.offset_y
#_08AF7A: dw  16,  24, -128, -16

.offset_x
#_08AF82: dw -16, -128,   0, 128

pool off

;---------------------------------------------------------------------------------------------------

AncillaAdd_BombosSpell:
#_08AF8A: PHB
#_08AF8B: PHK
#_08AF8C: PLB

#_08AF8D: JSR AncillaAdd_AddAncilla_Bank08
#_08AF90: BCC .found_slot

#_08AF92: BRL .exit

;---------------------------------------------------------------------------------------------------

.found_slot
#_08AF95: LDA.b #$03
#_08AF97: STA.l $7F5800
#_08AF9B: STA.l $7F5801
#_08AF9F: STA.l $7F5802
#_08AFA3: STA.l $7F5803
#_08AFA7: STA.l $7F5804

#_08AFAB: STA.l $7F5805
#_08AFAF: STA.l $7F5806
#_08AFB3: STA.l $7F5807
#_08AFB7: STA.l $7F5808
#_08AFBB: STA.l $7F5809

#_08AFBF: STA.l $7F5945
#_08AFC3: STA.l $7F5946
#_08AFC7: STA.l $7F5947
#_08AFCB: STA.l $7F5948

#_08AFCF: STA.l $7F5949
#_08AFD3: STA.l $7F594A
#_08AFD7: STA.l $7F594B
#_08AFDB: STA.l $7F594C

#_08AFDF: LDA.b #$00
#_08AFE1: STA.l $7F5810
#_08AFE5: STA.l $7F5811
#_08AFE9: STA.l $7F5812
#_08AFED: STA.l $7F5813
#_08AFF1: STA.l $7F5814

#_08AFF5: STA.l $7F5815
#_08AFF9: STA.l $7F5816
#_08AFFD: STA.l $7F5817
#_08B001: STA.l $7F5818
#_08B005: STA.l $7F5819

#_08B009: STA.l $7F5935
#_08B00D: STA.l $7F5936
#_08B011: STA.l $7F5937
#_08B015: STA.l $7F5938

#_08B019: STA.l $7F5939
#_08B01D: STA.l $7F593A
#_08B021: STA.l $7F593B
#_08B025: STA.l $7F593C

#_08B029: STA.l $7F5934
#_08B02D: STA.l $7F5A56

;---------------------------------------------------------------------------------------------------

#_08B031: LDA.b #$80
#_08B033: STA.l $7F5A55

#_08B037: LDA.b #$10
#_08B039: STA.l $7F5820

#_08B03D: LDA.b #$0B
#_08B03F: STA.w $0AAA

#_08B042: LDA.b #$01
#_08B044: STA.w $0112

#_08B047: STZ.w $0C54,X
#_08B04A: STZ.w $0C5E,X

;---------------------------------------------------------------------------------------------------

#_08B04D: LDA.b #!SFX2_2A
#_08B04F: JSR Ancilla_SFX2_Near

#_08B052: PHX

#_08B053: LDY.b $1A

#_08B055: LDA.b $21
#_08B057: STA.l $7F5956

#_08B05B: LDA.b $23
#_08B05D: STA.l $7F59D6

; !WTF why?
#_08B061: LDA.w Ancilla05_Boomerang,Y
#_08B064: CMP.b #$E0
#_08B066: BCC .excuse_me

#_08B068: AND.b #$7F

.excuse_me
#_08B06A: STA.l $7F5955
#_08B06E: STA.l $7F59D5

;---------------------------------------------------------------------------------------------------

#_08B072: LDX.b #$00
#_08B074: STX.b $72

.next
#_08B076: REP #$20

#_08B078: LDA.b $20
#_08B07A: CLC
#_08B07B: ADC.w .offset_y,X
#_08B07E: STA.l $7F5924,X

#_08B082: LDA.b $22
#_08B084: CLC
#_08B085: ADC.w .offset_x,X
#_08B088: STA.l $7F592C,X

#_08B08C: SEP #$20

#_08B08E: PHX

#_08B08F: TXA
#_08B090: LSR A
#_08B091: TAX

#_08B092: LDA.b #$10
#_08B094: STA.b $08
#_08B096: STA.l $7F5A57

#_08B09A: LDA.l $7F5820,X

#_08B09E: PLX

#_08B09F: JSR Ancilla_GetRadialProjection

;---------------------------------------------------------------------------------------------------

#_08B0A2: REP #$20

#_08B0A4: LDA.b $00
#_08B0A6: LDY.b $02
#_08B0A8: BEQ .positive_x

#_08B0AA: EOR.w #$FFFF
#_08B0AD: INC A

.positive_x
#_08B0AE: CLC
#_08B0AF: ADC.l $7F5924,X
#_08B0B3: STA.b $00

;---------------------------------------------------------------------------------------------------

#_08B0B5: LDA.b $04

#_08B0B7: LDY.b $06
#_08B0B9: BEQ .positive_y

#_08B0BB: EOR.w #$FFFF
#_08B0BE: INC A

.positive_y
#_08B0BF: CLC
#_08B0C0: ADC.l $7F592C,X
#_08B0C4: STA.b $04

;---------------------------------------------------------------------------------------------------

#_08B0C6: SEP #$20

#_08B0C8: PHX

#_08B0C9: LDX.b $72

#_08B0CB: LDA.b $00
#_08B0CD: STA.l $7F5824,X

#_08B0D1: LDA.b $01
#_08B0D3: STA.l $7F5864,X

#_08B0D7: LDA.b $04
#_08B0D9: STA.l $7F58A4,X

#_08B0DD: LDA.b $05
#_08B0DF: STA.l $7F58E4,X

#_08B0E3: PLX

#_08B0E4: LDA.b $72
#_08B0E6: SEC
#_08B0E7: SBC.b #$10
#_08B0E9: STA.b $72

#_08B0EB: DEX
#_08B0EC: DEX
#_08B0ED: BPL .next

;---------------------------------------------------------------------------------------------------

#_08B0EF: PLX

.exit
#_08B0F0: PLB

#_08B0F1: RTL

;===================================================================================================

Ancilla19_BombosSpell:
#_08B0F2: LDA.l $7F5934
#_08B0F6: BNE .no_new_columns

#_08B0F8: LDA.b $11
#_08B0FA: BNE .draw_columns

#_08B0FC: JMP.w BombosSpell_ControlFireColumns

;---------------------------------------------------------------------------------------------------

.draw_columns
#_08B0FF: LDY.b #$00
#_08B101: LDX.b #$09

.next_column_draw
#_08B103: JSR AncillaDraw_BombosFireColumn

#_08B106: DEX
#_08B107: BPL .next_column_draw

#_08B109: RTS

;---------------------------------------------------------------------------------------------------

.no_new_columns
#_08B10A: LDA.l $7F5934
#_08B10E: CMP.b #$02
#_08B110: BEQ .blasting

#_08B112: LDA.b $11
#_08B114: BNE .draw_columns

#_08B116: JSR BombosSpell_FinishFireColumns

#_08B119: RTS

;---------------------------------------------------------------------------------------------------

.blasting
#_08B11A: LDA.b $11
#_08B11C: BEQ .dont_draw_blast

#_08B11E: PHX

#_08B11F: LDA.w $0C54,X
#_08B122: TAX

.next_blast_draw
#_08B123: JSR AncillaDraw_BombosBlast

#_08B126: DEX
#_08B127: BPL .next_blast_draw

#_08B129: PLX

#_08B12A: RTS

;---------------------------------------------------------------------------------------------------

.dont_draw_blast
#_08B12B: JMP.w BombosSpell_ControlBlasting

;===================================================================================================

BombosSpell_ControlFireColumns:
#_08B12E: PHX

#_08B12F: LDA.w $0C5E,X
#_08B132: STA.b $73

#_08B134: LDA.w $0C54,X
#_08B137: STA.b $72

#_08B139: TAX
#_08B13A: LDY.b #$00

;---------------------------------------------------------------------------------------------------

.next_column
#_08B13C: LDA.l $7F5810,X
#_08B140: CMP.b #$0D
#_08B142: BNE .continue

.skip_me
#_08B144: BRL .skip_this_column

.continue
#_08B147: LDA.l $7F5800,X
#_08B14B: DEC A
#_08B14C: STA.l $7F5800,X
#_08B150: BMI .time_up

.dont_spawn_new_column
#_08B152: BRL .just_draw

;---------------------------------------------------------------------------------------------------

.time_up
#_08B155: LDA.b #$03
#_08B157: STA.l $7F5800,X

#_08B15B: LDA.l $7F5810,X
#_08B15F: INC A
#_08B160: STA.l $7F5810,X

#_08B164: CMP.b #$0D
#_08B166: BEQ .skip_me

;---------------------------------------------------------------------------------------------------

#_08B168: CMP.b #$02
#_08B16A: BNE .dont_spawn_new_column

#_08B16C: LDA.b $73
#_08B16E: BNE .skip_me

#_08B170: PHX

#_08B171: LDA.b $72
#_08B173: CMP.b #$09
#_08B175: BNE .to_next_find

;---------------------------------------------------------------------------------------------------

#_08B177: LDX.b #$09

.next_check
#_08B179: LDA.l $7F5810,X
#_08B17D: CMP.b #$0D
#_08B17F: BNE .dont_reset

#_08B181: LDA.b #$00
#_08B183: STA.l $7F5810,X
#_08B187: BRA .set_radial

.dont_reset
#_08B189: DEX
#_08B18A: BPL .next_check

.to_next_find
#_08B18C: LDX.b $72
#_08B18E: INX
#_08B18F: CPX.b #$0A
#_08B191: BNE .not_maxed

#_08B193: LDX.b #$09

.not_maxed
#_08B195: STX.b $72

.set_radial
#_08B197: TXA
#_08B198: CLC
#_08B199: ADC.b #$00
#_08B19B: STA.b $74

;---------------------------------------------------------------------------------------------------

.never
#_08B19D: LDA.b $74
#_08B19F: LSR A ; /16
#_08B1A0: LSR A
#_08B1A1: LSR A
#_08B1A2: LSR A
#_08B1A3: TAX

#_08B1A4: LDA.l $7F5A57
#_08B1A8: CLC
#_08B1A9: ADC.b #$03
#_08B1AB: CMP.b #$D0
#_08B1AD: BCC .not_maxed_distance

#_08B1AF: LDA.b #$CF

;---------------------------------------------------------------------------------------------------

.not_maxed_distance
#_08B1B1: STA.l $7F5A57
#_08B1B5: STA.b $08

#_08B1B7: LDA.l $7F5820,X
#_08B1BB: CLC
#_08B1BC: ADC.b #$06
#_08B1BE: STA.l $7F5820,X

#_08B1C2: AND.b #$3F
#_08B1C4: JSR Ancilla_GetRadialProjection

#_08B1C7: TXA
#_08B1C8: ASL A
#_08B1C9: TAX

#_08B1CA: REP #$20

#_08B1CC: PHY

;---------------------------------------------------------------------------------------------------

#_08B1CD: LDA.b $00

#_08B1CF: LDY.b $02
#_08B1D1: BEQ .positive_y

#_08B1D3: EOR.w #$FFFF
#_08B1D6: INC A

.positive_y
#_08B1D7: CLC
#_08B1D8: ADC.l $7F5924,X
#_08B1DC: STA.b $00

;---------------------------------------------------------------------------------------------------

#_08B1DE: LDA.b $04

#_08B1E0: LDY.b $06
#_08B1E2: BEQ .positive_x

#_08B1E4: EOR.w #$FFFF
#_08B1E7: INC A

.positive_x
#_08B1E8: CLC
#_08B1E9: ADC.l $7F592C,X
#_08B1ED: STA.b $04

;---------------------------------------------------------------------------------------------------

#_08B1EF: PLY

#_08B1F0: SEP #$20

#_08B1F2: LDX.b $74

#_08B1F4: LDA.b $00
#_08B1F6: STA.l $7F5824,X

#_08B1FA: LDA.b $01
#_08B1FC: STA.l $7F5864,X

#_08B200: LDA.b $04
#_08B202: STA.l $7F58A4,X

#_08B206: LDA.b $05
#_08B208: STA.l $7F58E4,X

;---------------------------------------------------------------------------------------------------

; supposedly impossible, according to MoN disassembly
#_08B20C: LDA.b $74
#_08B20E: SEC
#_08B20F: SBC.b #$10
#_08B211: STA.b $74
#_08B213: BPL .never

#_08B215: REP #$20

#_08B217: LDA.b $04
#_08B219: SEC
#_08B21A: SBC.b $E2

#_08B21C: CLC
#_08B21D: ADC.w #$0008
#_08B220: STA.b $04

;---------------------------------------------------------------------------------------------------

#_08B222: SEP #$20

#_08B224: LDA.b $05
#_08B226: BNE .no_sfx

#_08B228: LDA.b $04
#_08B22A: LSR A ; /32
#_08B22B: LSR A
#_08B22C: LSR A
#_08B22D: LSR A
#_08B22E: LSR A
#_08B22F: TAX

#_08B230: LDA.l AncillaPanValues,X
#_08B234: ORA.b #!SFX2_2A
#_08B236: STA.w $012E

;---------------------------------------------------------------------------------------------------

.no_sfx
#_08B239: PLX

.just_draw
#_08B23A: JSR AncillaDraw_BombosFireColumn

.skip_this_column
#_08B23D: DEX
#_08B23E: BMI .done_columns

#_08B240: BRL .next_column

;---------------------------------------------------------------------------------------------------

.done_columns
#_08B243: PLX

#_08B244: LDA.l $7F5820
#_08B248: CMP.b #$80
#_08B24A: BCS .trigger_wrap_up

#_08B24C: BRA .finish_up

.trigger_wrap_up
#_08B24E: LDA.b #$01
#_08B250: STA.l $7F5934

.finish_up
#_08B254: LDA.b $72
#_08B256: STA.w $0C54,X

#_08B259: RTS

;---------------------------------------------------------------------------------------------------

BombosSpell_FinishFireColumns:
#_08B25A: PHX

#_08B25B: LDA.w $0C54,X
#_08B25E: TAX
#_08B25F: LDY.b #$00

.next_column
#_08B261: LDA.l $7F5800,X
#_08B265: DEC A
#_08B266: STA.l $7F5800,X
#_08B26A: BPL .delay

#_08B26C: LDA.b #$03
#_08B26E: STA.l $7F5800,X

#_08B272: LDA.l $7F5810,X
#_08B276: INC A
#_08B277: STA.l $7F5810,X

#_08B27B: CMP.b #$0D
#_08B27D: BCC .delay

#_08B27F: LDA.b #$0D
#_08B281: STA.l $7F5810,X

.delay
#_08B285: JSR AncillaDraw_BombosFireColumn

#_08B288: DEX
#_08B289: BPL .next_column

;---------------------------------------------------------------------------------------------------

#_08B28B: LDX.b #$09

.next_check
#_08B28D: LDA.l $7F5810,X
#_08B291: CMP.b #$0D
#_08B293: BNE .found_active_column

#_08B295: DEX
#_08B296: BPL .next_check

;---------------------------------------------------------------------------------------------------

#_08B298: STZ.b $72

#_08B29A: LDA.b #$02
#_08B29C: STA.l $7F5934

#_08B2A0: PLX

#_08B2A1: PHX
#_08B2A2: JSL Medallion_CheckSpriteDamage
#_08B2A6: PLX

#_08B2A7: STZ.w $0C54,X

#_08B2AA: RTS

;---------------------------------------------------------------------------------------------------

.found_active_column
#_08B2AB: PLX

#_08B2AC: RTS

;===================================================================================================
; $FF = don't draw
;===================================================================================================
pool AncillaDraw_BombosFireColumn

.char
#_08B2AD: db $40, $FF, $FF
#_08B2B0: db $42, $44, $FF
#_08B2B3: db $42, $44, $FF
#_08B2B6: db $42, $44, $FF
#_08B2B9: db $42, $44, $FF
#_08B2BC: db $40, $46, $44
#_08B2BF: db $4A, $4A, $48
#_08B2C2: db $4C, $4C, $4A
#_08B2C5: db $4E, $4C, $4A
#_08B2C8: db $4E, $6A, $4C
#_08B2CB: db $4E, $68, $FF
#_08B2CE: db $6A, $FF, $FF
#_08B2D1: db $4E, $FF, $FF

;---------------------------------------------------------------------------------------------------

.prop
#_08B2D4: db $3C, $FF, $FF
#_08B2D7: db $3C, $3C, $FF
#_08B2DA: db $3C, $3C, $FF
#_08B2DD: db $7C, $7C, $FF
#_08B2E0: db $3C, $7C, $FF
#_08B2E3: db $3C, $3C, $3C
#_08B2E6: db $BC, $3C, $3C
#_08B2E9: db $7C, $3C, $3C
#_08B2EC: db $3C, $3C, $7C
#_08B2EF: db $3C, $3C, $3C
#_08B2F2: db $3C, $3C, $FF
#_08B2F5: db $3C, $FF, $FF
#_08B2F8: db $3C, $FF, $FF

;---------------------------------------------------------------------------------------------------
; These -1s are actually for the "don't draw"s
;---------------------------------------------------------------------------------------------------
.offset_y
#_08B2FB: dw   0,  -1,  -1
#_08B301: dw   0,  -4,  -1
#_08B307: dw   0,  -8,  -1
#_08B30D: dw   0, -12,  -1
#_08B313: dw   0, -16,  -1
#_08B319: dw   0,  -4, -20
#_08B31F: dw   0,  -8, -24
#_08B325: dw   0, -12, -28
#_08B32B: dw   0, -16, -32
#_08B331: dw   0, -16, -32
#_08B337: dw -18, -34,  -1
#_08B33D: dw -35,  -1,  -1
#_08B343: dw -36,  -1,  -1

;---------------------------------------------------------------------------------------------------

.offset_x
#_08B349: dw   0,  -1,  -1
#_08B34F: dw   0,   0,  -1
#_08B355: dw   0,   0,  -1
#_08B35B: dw   0,   0,  -1
#_08B361: dw   0,   0,  -1
#_08B367: dw   0,   0,   0
#_08B36D: dw   0,   0,   0
#_08B373: dw   0,   0,   0
#_08B379: dw   0,   0,   0
#_08B37F: dw   0,   0,   0
#_08B385: dw   0,   0,  -1
#_08B38B: dw   1,  -1,  -1
#_08B391: dw   2,  -1,  -1

pool off

;---------------------------------------------------------------------------------------------------

AncillaDraw_BombosFireColumn:
#_08B397: TXA
#_08B398: CLC
#_08B399: ADC.b #$00
#_08B39B: STA.b $75

#_08B39D: LDA.b #$10
#_08B39F: JSR Ancilla_AllocateOAMFromRegion_A_or_D_or_F

#_08B3A2: LDY.b #$00

.next_never
#_08B3A4: PHX

#_08B3A5: LDA.l $7F5810,X
#_08B3A9: CMP.b #$0D
#_08B3AB: BEQ .inactive

#_08B3AD: ASL A
#_08B3AE: CLC
#_08B3AF: ADC.l $7F5810,X

#_08B3B3: CLC
#_08B3B4: ADC.b #$02
#_08B3B6: TAX

#_08B3B7: STZ.b $08

;---------------------------------------------------------------------------------------------------

.next_object
#_08B3B9: LDA.w .char,X
#_08B3BC: CMP.b #$FF
#_08B3BE: BEQ .skip

#_08B3C0: PHX

#_08B3C1: LDX.b $75

#_08B3C3: LDA.l $7F5824,X
#_08B3C7: STA.b $00

#_08B3C9: LDA.l $7F5864,X
#_08B3CD: STA.b $01

#_08B3CF: LDA.l $7F58A4,X
#_08B3D3: STA.b $02

#_08B3D5: LDA.l $7F58E4,X
#_08B3D9: STA.b $03

#_08B3DB: PLX
#_08B3DC: PHX

#_08B3DD: TXA
#_08B3DE: ASL A
#_08B3DF: TAX

#_08B3E0: REP #$20

#_08B3E2: LDA.b $00
#_08B3E4: CLC
#_08B3E5: ADC.w .offset_y,X

#_08B3E8: SEC
#_08B3E9: SBC.b $E8
#_08B3EB: STA.b $00

#_08B3ED: LDA.b $02
#_08B3EF: CLC
#_08B3F0: ADC.w .offset_x,X

#_08B3F3: SEC
#_08B3F4: SBC.b $E2
#_08B3F6: STA.b $02

;---------------------------------------------------------------------------------------------------

#_08B3F8: SEP #$20

#_08B3FA: JSR Ancilla_SetOAM_XY

#_08B3FD: PLX

#_08B3FE: LDA.w .char,X
#_08B401: STA.b ($90),Y

#_08B403: INY

#_08B404: LDA.w .prop,X
#_08B407: STA.b ($90),Y

#_08B409: INY
#_08B40A: PHY

#_08B40B: TYA
#_08B40C: SEC
#_08B40D: SBC.b #$04
#_08B40F: LSR A
#_08B410: LSR A
#_08B411: TAY

#_08B412: LDA.b #$02
#_08B414: STA.b ($92),Y

#_08B416: PLY

;---------------------------------------------------------------------------------------------------

.skip
#_08B417: JSR Ancilla_AllocateOAMFromCustomRegion

#_08B41A: DEX

#_08B41B: INC.b $08

#_08B41D: LDA.b $08
#_08B41F: CMP.b #$03
#_08B421: BNE .next_object

;---------------------------------------------------------------------------------------------------

.inactive
#_08B423: PLX

#_08B424: LDA.b $75
#_08B426: SEC
#_08B427: SBC.b #$10
#_08B429: STA.b $75
#_08B42B: BMI .exit

; supposedly impossible to reach
#_08B42D: BRL .next_never

.exit
#_08B430: RTS

;===================================================================================================

BombosSpell_ControlBlasting:
#_08B431: PHX

#_08B432: LDY.b #$00

#_08B434: LDA.w $0C54,X
#_08B437: STA.b $72

#_08B439: TAX

.next_blast
#_08B43A: LDA.l $7F5935,X
#_08B43E: CMP.b #$08
#_08B440: BEQ .inactive

#_08B442: LDA.l $7F5945,X
#_08B446: DEC A
#_08B447: STA.l $7F5945,X
#_08B44B: BMI .time_up

.inactive
#_08B44D: BRL .just_draw

;---------------------------------------------------------------------------------------------------

.time_up
#_08B450: LDA.b #$03
#_08B452: STA.l $7F5945,X

#_08B456: LDA.l $7F5935,X
#_08B45A: INC A
#_08B45B: STA.l $7F5935,X

#_08B45F: CMP.b #$01
#_08B461: BNE .inactive

#_08B463: LDA.l $7F5A56
#_08B467: BNE .inactive

;---------------------------------------------------------------------------------------------------

#_08B469: PHX

#_08B46A: LDA.b $72
#_08B46C: CMP.b #$0F
#_08B46E: BEQ .maxed_blast

#_08B470: LDA.b $72
#_08B472: INC A
#_08B473: CMP.b #$10
#_08B475: BNE .not_maxed

#_08B477: LDA.b #$0F

.not_maxed
#_08B479: STA.b $72

#_08B47B: TAX

#_08B47C: BRA .activate_next

;---------------------------------------------------------------------------------------------------

.maxed_blast
#_08B47E: LDX.b #$0F

.next_check
#_08B480: LDA.l $7F5935,X
#_08B484: CMP.b #$08
#_08B486: BEQ .activate_next

#_08B488: DEX
#_08B489: BPL .next_check

;---------------------------------------------------------------------------------------------------

.activate_next
#_08B48B: LDA.b #$00
#_08B48D: STA.l $7F5935,X

#_08B491: LDA.b #$03
#_08B493: STA.l $7F5945,X

#_08B497: PHY

#_08B498: TXA
#_08B499: ASL A
#_08B49A: TAY

#_08B49B: LDA.b $1A
#_08B49D: AND.b #$3F
#_08B49F: TAX

#_08B4A0: LDA.l BombosBlastRandomPosition+0,X
#_08B4A4: STA.b $00
#_08B4A6: STZ.b $01

#_08B4A8: LDA.l BombosBlastRandomPosition+3,X
#_08B4AC: STA.b $02
#_08B4AE: STZ.b $03

;---------------------------------------------------------------------------------------------------

#_08B4B0: TYX

#_08B4B1: REP #$20

#_08B4B3: LDA.b $00
#_08B4B5: CLC
#_08B4B6: ADC.b $E8
#_08B4B8: STA.l $7F5955,X

#_08B4BC: LDA.b $02
#_08B4BE: CLC
#_08B4BF: ADC.b $E2
#_08B4C1: STA.l $7F59D5,X

#_08B4C5: SEP #$20

#_08B4C7: LDA.l $7F59D5,X
#_08B4CB: LSR A ; /32
#_08B4CC: LSR A
#_08B4CD: LSR A
#_08B4CE: LSR A
#_08B4CF: LSR A
#_08B4D0: TAX

#_08B4D1: LDA.l AncillaPanValues,X
#_08B4D5: ORA.b #!SFX2_0C
#_08B4D7: STA.w $012E

#_08B4DA: PLY
#_08B4DB: PLX

;---------------------------------------------------------------------------------------------------

.just_draw
#_08B4DC: JSR AncillaDraw_BombosBlast

#_08B4DF: DEX
#_08B4E0: BMI .done_blasting

#_08B4E2: BRL .next_blast

;---------------------------------------------------------------------------------------------------

.done_blasting
#_08B4E5: LDX.b #$0F

.next_active_check
#_08B4E7: LDA.l $7F5935,X
#_08B4EB: CMP.b #$08
#_08B4ED: BNE .found_one

#_08B4EF: DEX
#_08B4F0: BPL .next_active_check

;---------------------------------------------------------------------------------------------------

#_08B4F2: PLX

#_08B4F3: STZ.w $0C4A,X

#_08B4F6: LDA.b #$01
#_08B4F8: STA.w $0AAA

#_08B4FB: STZ.w $0324
#_08B4FE: STZ.w $031C
#_08B501: STZ.w $031D

#_08B504: STZ.b $50

#_08B506: STZ.w $0FC1

#_08B509: LDA.b $5D
#_08B50B: CMP.b #!LINKSTATE_1A
#_08B50D: BEQ .link_bombosing

#_08B50F: LDA.b #!LINKSTATE_00
#_08B511: STA.b $5D

#_08B513: STZ.b $3D

#_08B515: LDY.b #$00

#_08B517: LDA.b $3C
#_08B519: BEQ .sword_not_drawn

#_08B51B: LDA.b $F0
#_08B51D: AND.b #$80
#_08B51F: TAY

.sword_not_drawn
#_08B520: STY.b $3A

.link_bombosing
#_08B522: STZ.b $5E
#_08B524: STZ.w $0325

#_08B527: BRA .finish_up

;---------------------------------------------------------------------------------------------------

.found_one
#_08B529: PLX

#_08B52A: LDA.b $72
#_08B52C: STA.w $0C54,X

.finish_up
#_08B52F: LDA.l $7F5A55
#_08B533: DEC A
#_08B534: STA.l $7F5A55
#_08B538: BNE .exit

#_08B53A: LDA.b #$01
#_08B53C: STA.l $7F5A56
#_08B540: STA.l $7F5A55

.exit
#_08B544: RTS

;===================================================================================================

pool AncillaDraw_BombosBlast

.char
#_08B545: db $60, $FF, $FF, $FF
#_08B549: db $62, $62, $62, $62
#_08B54D: db $64, $64, $64, $64
#_08B551: db $66, $66, $66, $66
#_08B555: db $68, $68, $68, $68
#_08B559: db $68, $68, $68, $68
#_08B55D: db $6A, $6A, $6A, $6A
#_08B561: db $4E, $4E, $4E, $4E

;---------------------------------------------------------------------------------------------------

.prop
#_08B565: db $3C, $FF, $FF, $FF
#_08B569: db $3C, $7C, $BC, $FC
#_08B56D: db $3C, $7C, $BC, $FC
#_08B571: db $3C, $7C, $BC, $FC
#_08B575: db $3C, $7C, $BC, $FC
#_08B579: db $3C, $7C, $BC, $FC
#_08B57D: db $3C, $7C, $BC, $FC
#_08B581: db $3C, $7C, $BC, $FC

;---------------------------------------------------------------------------------------------------

.offset_y
#_08B585: dw  -8,  -1,  -1,  -1
#_08B58D: dw -12, -12,  -4,  -4
#_08B595: dw -16, -16,   0,   0
#_08B59D: dw -16, -16,   0,   0
#_08B5A5: dw -17, -17,   1,   1
#_08B5AD: dw -19, -19,   3,   3
#_08B5B5: dw -19, -19,   3,   3
#_08B5BD: dw -19, -19,   3,   3

;---------------------------------------------------------------------------------------------------

.offset_x
#_08B5C5: dw  -8,  -1,  -1,  -1
#_08B5CD: dw -12,  -4, -12,  -4
#_08B5D5: dw -16,   0, -16,   0
#_08B5DD: dw -16,   0, -16,   0
#_08B5E5: dw -17,   1, -17,   1
#_08B5ED: dw -19,   3, -19,   3
#_08B5F5: dw -19,   3, -19,   3
#_08B5FD: dw -19,   3, -19,   3

pool off

;---------------------------------------------------------------------------------------------------

AncillaDraw_BombosBlast:
#_08B605: PHX

#_08B606: LDA.b #$03
#_08B608: STA.b $0C

#_08B60A: PHX

#_08B60B: TXA
#_08B60C: ASL A
#_08B60D: TAX

#_08B60E: LDA.l $7F5955,X
#_08B612: STA.b $08

#_08B614: LDA.l $7F5956,X
#_08B618: STA.b $09

#_08B61A: LDA.l $7F59D5,X
#_08B61E: STA.b $0A

#_08B620: LDA.l $7F59D6,X
#_08B624: STA.b $0B

#_08B626: PLX

;---------------------------------------------------------------------------------------------------

#_08B627: LDA.l $7F5935,X

#_08B62B: CMP.b #$08
#_08B62D: BEQ .inactive

#_08B62F: LDA.b #$10
#_08B631: JSR Ancilla_AllocateOAMFromRegion_A_or_D_or_F

#_08B634: LDY.b #$00

#_08B636: LDA.l $7F5935,X
#_08B63A: ASL A
#_08B63B: ASL A

#_08B63C: CLC
#_08B63D: ADC.b #$03
#_08B63F: STA.b $73

#_08B641: TAX

;---------------------------------------------------------------------------------------------------

.next_object
#_08B642: LDA.w .char,X
#_08B645: CMP.b #$FF
#_08B647: BEQ .skip_object

;---------------------------------------------------------------------------------------------------

#_08B649: PHX

#_08B64A: TXA
#_08B64B: ASL A
#_08B64C: TAX

#_08B64D: REP #$20

#_08B64F: LDA.w .offset_y,X
#_08B652: CLC
#_08B653: ADC.b $08

#_08B655: SEC
#_08B656: SBC.b $E8
#_08B658: STA.b $00

#_08B65A: LDA.w .offset_x,X
#_08B65D: CLC
#_08B65E: ADC.b $0A

#_08B660: SEC
#_08B661: SBC.b $E2
#_08B663: STA.b $02

#_08B665: SEP #$20

#_08B667: PLX

;---------------------------------------------------------------------------------------------------

#_08B668: JSR Ancilla_SetOAM_XY

#_08B66B: LDA.w .char,X
#_08B66E: STA.b ($90),Y

#_08B670: INY

#_08B671: LDA.w .prop,X
#_08B674: STA.b ($90),Y

#_08B676: INY
#_08B677: PHY

#_08B678: TYA
#_08B679: SEC
#_08B67A: SBC.b #$04

#_08B67C: LSR A
#_08B67D: LSR A
#_08B67E: TAY

#_08B67F: LDA.b #$02
#_08B681: STA.b ($92),Y

#_08B683: PLY

;---------------------------------------------------------------------------------------------------

.skip_object
#_08B684: JSR Ancilla_AllocateOAMFromCustomRegion

#_08B687: DEX

#_08B688: DEC.b $0C
#_08B68A: BPL .next_object

;---------------------------------------------------------------------------------------------------

.inactive
#_08B68C: PLX

#_08B68D: RTS

;===================================================================================================

Ancilla1C_QuakeSpell:
#_08B68E: LDA.b $11
#_08B690: BNE .only_draw

#_08B692: LDA.w $0C54,X
#_08B695: CMP.b #$02
#_08B697: BEQ .finish_up

#_08B699: JSR QuakeSpell_ShakeScreen
#_08B69C: JSR QuakeSpell_ControlBolts

#_08B69F: BRL QuakeSpell_SpreadBolts

.finish_up
#_08B6A2: BRA QuakeSpell_FinishingTouches

;---------------------------------------------------------------------------------------------------

.only_draw
#_08B6A4: PHX

#_08B6A5: LDX.b #$04

#_08B6A7: LDA.l $7F5805,X
#_08B6AB: CMP.w QuakeSpellStates,X
#_08B6AE: BEQ .bad_branch

#_08B6B0: JSR AncillaDraw_QuakeInitialBolts

; This BPL is an oops!
.bad_branch
#_08B6B3: DEX
#_08B6B4: BPL .bad_branch

#_08B6B6: PLX

#_08B6B7: RTS

;---------------------------------------------------------------------------------------------------

QuakeSpell_FinishingTouches:
#_08B6B8: PHX

#_08B6B9: JSL Medallion_CheckSpriteDamage
#_08B6BD: JSL Prepare_ApplyRumbleToSprites

#_08B6C1: PLX

#_08B6C2: STZ.w $0C4A,X

#_08B6C5: LDA.b #!LINKSTATE_00
#_08B6C7: STA.b $5D

#_08B6C9: LDA.b #$01
#_08B6CB: STA.w $0AAA

#_08B6CE: STZ.w $0324
#_08B6D1: STZ.w $031C
#_08B6D4: STZ.w $031D

#_08B6D7: STZ.b $50
#_08B6D9: STZ.b $3D

#_08B6DB: STZ.w $0FC1

#_08B6DE: STZ.w $011A
#_08B6E1: STZ.w $011B
#_08B6E4: STZ.w $011C
#_08B6E7: STZ.w $011D

;---------------------------------------------------------------------------------------------------

#_08B6EA: LDA.b $8A
#_08B6EC: CMP.b #$47
#_08B6EE: BNE .no_turtle_rock_trigger

#_08B6F0: LDA.l $7EF2C7
#_08B6F4: AND.b #$20
#_08B6F6: BNE .no_turtle_rock_trigger

#_08B6F8: LDY.b #$03
#_08B6FA: JSR Ancilla_CheckForEntranceTrigger
#_08B6FD: BCC .no_turtle_rock_trigger

#_08B6FF: LDA.b #$04
#_08B701: STA.w $04C6

#_08B704: STZ.b $B0
#_08B706: STZ.b $C8

;---------------------------------------------------------------------------------------------------

.no_turtle_rock_trigger
#_08B708: LDY.b #$00

#_08B70A: LDA.b $3C
#_08B70C: BEQ .no_sword_charge

#_08B70E: LDA.b $F0
#_08B710: AND.b #$80
#_08B712: TAY

.no_sword_charge
#_08B713: STY.b $3A

#_08B715: STZ.b $5E
#_08B717: STZ.w $0325

#_08B71A: RTS

;===================================================================================================
; TODO analyze RAM
;===================================================================================================
QuakeSpell_ShakeScreen:
#_08B71B: REP #$20

#_08B71D: LDA.l $7F581E
#_08B721: STA.w $011C

#_08B724: EOR.w #$FFFF
#_08B727: INC A
#_08B728: STA.l $7F581E

#_08B72C: SEP #$20

#_08B72E: LDA.b $30
#_08B730: CLC
#_08B731: ADC.w $011C
#_08B734: STA.b $30

#_08B736: RTS

;===================================================================================================

QuakeSpellStates:
#_08B737: db $17, $16, $17, $16, $10

;===================================================================================================

QuakeSpell_ControlBolts:
#_08B73C: PHX

#_08B73D: LDA.w $0C54,X
#_08B740: STA.l $7F580F

#_08B744: LDA.l $7F580A
#_08B748: TAX

;---------------------------------------------------------------------------------------------------

.next_bolt
#_08B749: LDA.l $7F5805,X
#_08B74D: CMP.w QuakeSpellStates,X
#_08B750: BEQ .skip

#_08B752: LDA.l $7F5800,X
#_08B756: DEC A
#_08B757: STA.l $7F5800,X
#_08B75B: BPL .just_draw

#_08B75D: LDA.b #$01
#_08B75F: STA.l $7F5800,X
#_08B763: LDA.l $7F5805,X

#_08B767: INC A
#_08B768: STA.l $7F5805,X

#_08B76C: CMP.w QuakeSpellStates,X
#_08B76F: BEQ .skip

;---------------------------------------------------------------------------------------------------

#_08B771: TXY
#_08B772: BNE .dont_go_to_2

#_08B774: CMP.b #$02
#_08B776: BNE .dont_go_to_2

#_08B778: LDA.b #!SFX2_0C
#_08B77A: JSR Ancilla_SFX2_Near

#_08B77D: LDA.b #$01
#_08B77F: STA.l $7F580A

#_08B783: BRA .just_draw

;---------------------------------------------------------------------------------------------------

.dont_go_to_2
#_08B785: CPX.b #$01
#_08B787: BNE .dont_go_to_3

#_08B789: CMP.b #$02
#_08B78B: BNE .dont_go_to_3

#_08B78D: LDA.b #$04
#_08B78F: STA.l $7F580A

#_08B793: BRA .just_draw

;---------------------------------------------------------------------------------------------------

.dont_go_to_3
#_08B795: CPX.b #$04
#_08B797: BNE .just_draw

#_08B799: CMP.b #$07
#_08B79B: BNE .just_draw

#_08B79D: LDA.b #$01
#_08B79F: STA.l $7F580F

;---------------------------------------------------------------------------------------------------

.just_draw
#_08B7A3: JSR AncillaDraw_QuakeInitialBolts

;---------------------------------------------------------------------------------------------------

.skip
#_08B7A6: DEX
#_08B7A7: BPL .next_bolt

#_08B7A9: PLX

#_08B7AA: LDA.l $7F580F
#_08B7AE: STA.w $0C54,X

#_08B7B1: RTS

;===================================================================================================

pool AncillaDraw_QuakeInitialBolts

.offset
#_08B7B2: db $00
#_08B7B3: db $18
#_08B7B4: db $00
#_08B7B5: db $18
#_08B7B6: db $2F

pool off

;---------------------------------------------------------------------------------------------------

AncillaDraw_QuakeInitialBolts:
#_08B7B7: PHX

#_08B7B8: LDA.l $7F5805,X
#_08B7BC: CLC
#_08B7BD: ADC.w .offset,X
#_08B7C0: ASL A
#_08B7C1: TAY

#_08B7C2: LDA.w QuakeSpell_InitialBoltPointers+0,Y
#_08B7C5: STA.b $72

#_08B7C7: LDA.w QuakeSpell_InitialBoltPointers+1,Y
#_08B7CA: STA.b $73

#_08B7CC: LDA.w QuakeSpell_InitialBoltPointers+2,Y
#_08B7CF: STA.b $74

#_08B7D1: LDA.w QuakeSpell_InitialBoltPointers+3,Y
#_08B7D4: STA.b $75

;---------------------------------------------------------------------------------------------------

#_08B7D6: REP #$20

#_08B7D8: LDA.b $74
#_08B7DA: SEC
#_08B7DB: SBC.b $72
#_08B7DD: STA.b $74

#_08B7DF: SEP #$20

#_08B7E1: LDX.b #$00

;---------------------------------------------------------------------------------------------------

.next_bolt
#_08B7E3: TXY

#_08B7E4: REP #$20

#_08B7E6: LDA.b ($72),Y
#_08B7E8: AND.w #$00FF
#_08B7EB: CMP.w #$0080
#_08B7EE: BCC .positive_x

#_08B7F0: ORA.w #$FF00

.positive_x
#_08B7F3: STA.b $02

#_08B7F5: LDA.l $7F580D
#_08B7F9: CLC
#_08B7FA: ADC.b $02

#_08B7FC: SEC
#_08B7FD: SBC.b $E2
#_08B7FF: STA.b $02

;---------------------------------------------------------------------------------------------------

#_08B801: INX
#_08B802: TXY

#_08B803: LDA.b ($72),Y
#_08B805: AND.w #$00FF
#_08B808: CMP.w #$0080
#_08B80B: BCC .positive_y

#_08B80D: ORA.w #$FF00

.positive_y
#_08B810: STA.b $00

#_08B812: LDA.l $7F580B
#_08B816: CLC
#_08B817: ADC.b $00

#_08B819: SEC
#_08B81A: SBC.b $E8
#_08B81C: STA.b $00

#_08B81E: INX

#_08B81F: SEP #$20

#_08B821: PHX

#_08B822: LDX.b #$F0

#_08B824: LDA.b $01
#_08B826: BNE .off_screen

#_08B828: LDA.b $03
#_08B82A: BNE .off_screen

#_08B82C: LDY.b #$00

#_08B82E: LDA.b $02
#_08B830: STA.b ($90),Y

#_08B832: LDA.b $00
#_08B834: CMP.b #$F0
#_08B836: BCS .off_screen

#_08B838: TAX

;---------------------------------------------------------------------------------------------------

.off_screen
#_08B839: INC.b $90

#_08B83B: LDY.b #$00

#_08B83D: TXA
#_08B83E: STA.b ($90),Y

#_08B840: INC.b $90

#_08B842: PLX
#_08B843: PHX

#_08B844: TXY

#_08B845: LDA.b ($72),Y
#_08B847: AND.b #$0F
#_08B849: TAX

#_08B84A: LDA.w QuakeBoltChar,X
#_08B84D: LDY.b #$00
#_08B84F: STA.b ($90),Y

#_08B851: INC.b $90

;---------------------------------------------------------------------------------------------------

#_08B853: PLX
#_08B854: TXY

#_08B855: LDA.b ($72),Y
#_08B857: AND.b #$C0
#_08B859: ORA.b #$3C

#_08B85B: LDY.b #$00
#_08B85D: STA.b ($90),Y

#_08B85F: INC.b $90

#_08B861: LDY.b #$00
#_08B863: LDA.b #$02
#_08B865: STA.b ($92),Y

#_08B867: INC.b $92

#_08B869: INX
#_08B86A: CPX.b $74
#_08B86C: BEQ .done

#_08B86E: BRL .next_bolt

;---------------------------------------------------------------------------------------------------

.done
#_08B871: PLX

#_08B872: RTS

;===================================================================================================

QuakeSpell_SpreadBolts:
#_08B873: LDA.w $0C54,X
#_08B876: CMP.b #$01
#_08B878: BNE .exit

#_08B87A: LDA.w $0C68,X
#_08B87D: BNE .proceed_to_bolts

#_08B87F: LDA.b #$02
#_08B881: STA.w $0C68,X

#_08B884: LDA.w $0C5E,X
#_08B887: INC A
#_08B888: STA.w $0C5E,X

#_08B88B: CMP.b #$37
#_08B88D: BNE .proceed_to_bolts

#_08B88F: LDA.b #$02
#_08B891: STA.w $0C54,X

.exit
#_08B894: RTS

;---------------------------------------------------------------------------------------------------

.proceed_to_bolts
#_08B895: BRA AncillaDraw_QuakeSpreadBolts

;===================================================================================================

QuakeBoltChar:
#_08B897: db $40, $42, $44, $46
#_08B89B: db $48, $4A, $4C, $4E
#_08B89F: db $60, $62, $64, $66
#_08B8A3: db $68, $6A, $63

;===================================================================================================

AncillaDraw_QuakeSpreadBolts:
#_08B8A6: PHX

#_08B8A7: LDA.w $0C5E,X
#_08B8AA: ASL A
#_08B8AB: TAY

#_08B8AC: LDA.w QuakeSpell_SpreadBoltPointers+0,Y
#_08B8AF: STA.b $72

#_08B8B1: LDA.w QuakeSpell_SpreadBoltPointers+1,Y
#_08B8B4: STA.b $73

#_08B8B6: LDA.w QuakeSpell_SpreadBoltPointers+2,Y
#_08B8B9: STA.b $74

#_08B8BB: LDA.w QuakeSpell_SpreadBoltPointers+3,Y
#_08B8BE: STA.b $75

#_08B8C0: REP #$20

#_08B8C2: LDA.b $74
#_08B8C4: SEC
#_08B8C5: SBC.b $72
#_08B8C7: STA.b $74

#_08B8C9: SEP #$20

#_08B8CB: LDX.b #$00

;---------------------------------------------------------------------------------------------------

.next_bolt
#_08B8CD: TXY

#_08B8CE: LDA.b ($72),Y
#_08B8D0: LDY.b #$00
#_08B8D2: STA.b ($90),Y

#_08B8D4: INC.b $90

;---------------------------------------------------------------------------------------------------

#_08B8D6: INX
#_08B8D7: TXY

#_08B8D8: LDA.b ($72),Y
#_08B8DA: LDY.b #$00
#_08B8DC: STA.b ($90),Y

#_08B8DE: INC.b $90

;---------------------------------------------------------------------------------------------------

#_08B8E0: INX
#_08B8E1: PHX
#_08B8E2: TXY

#_08B8E3: LDA.b ($72),Y
#_08B8E5: AND.b #$0F
#_08B8E7: TAX

#_08B8E8: LDA.w QuakeBoltChar,X
#_08B8EB: LDY.b #$00
#_08B8ED: STA.b ($90),Y

#_08B8EF: INC.b $90

;---------------------------------------------------------------------------------------------------

#_08B8F1: PLX
#_08B8F2: TXY

#_08B8F3: LDA.b ($72),Y
#_08B8F5: AND.b #$C0
#_08B8F7: ORA.b #$3C

#_08B8F9: LDY.b #$00

#_08B8FB: STA.b ($90),Y

#_08B8FD: INC.b $90

;---------------------------------------------------------------------------------------------------

#_08B8FF: TXY
#_08B900: LDA.b ($72),Y
#_08B902: AND.b #$30

#_08B904: LSR A ; /16
#_08B905: LSR A
#_08B906: LSR A
#_08B907: LSR A

#_08B908: LDY.b #$00

#_08B90A: STA.b ($92),Y

#_08B90C: INC.b $92

#_08B90E: JSR Ancilla_AllocateOAMFromCustomRegion

#_08B911: INX
#_08B912: CPX.b $74
#_08B914: BNE .next_bolt

;---------------------------------------------------------------------------------------------------

#_08B916: PLX

#_08B917: RTS

;===================================================================================================

PowderDraw:

.anim_step
#_08B918: db $0D, $0E, $0F, $00, $01
#_08B91D: db $02, $03, $04, $05, $06

#_08B922: db $0A, $0B, $0C, $00, $01
#_08B927: db $02, $03, $04, $05, $06

#_08B92C: db $10, $11, $12, $00, $01
#_08B931: db $02, $03, $04, $05, $06

#_08B936: db $07, $08, $09, $00, $01
#_08B93B: db $02, $03, $04, $05, $06

;---------------------------------------------------------------------------------------------------

.group_offset
#_08B940: db $00
#_08B941: db $0A
#_08B942: db $14
#_08B943: db $1E

;---------------------------------------------------------------------------------------------------

.offset_y
#_08B944: dw -20, -15, -13,  -7, -18
#_08B94E: dw -13, -13, -13, -20, -13
#_08B958: dw -13,  -8, -20, -13, -13
#_08B962: dw  -8, -19, -12, -12

#_08B96A: dw  -7, -18, -11, -11,  -6
#_08B974: dw -17, -10, -10,  -5, -16
#_08B97E: dw -14, -12,  -9, -17, -14
#_08B988: dw -12,  -8, -18, -14

#_08B990: dw -13,  -6, -33, -31, -29
#_08B99A: dw -26, -28, -25, -23, -19
#_08B9A4: dw -22, -18, -17, -10,  -2
#_08B9AE: dw   0,   2,   5,  -9

#_08B9B6: dw  -6,  -4,   0, -16, -12
#_08B9C0: dw -11,  -4, -16, -14, -12
#_08B9CA: dw  -9, -17, -14, -12,  -8
#_08B9D4: dw -18, -14, -13,  -6

;---------------------------------------------------------------------------------------------------

.offset_x
#_08B9DC: dw  -5, -12,   2,  -9,  -7
#_08B9E6: dw -10,  -6,  -2,  -6, -12
#_08B9F0: dw   1,  -6,  -6, -12,   1
#_08B9FA: dw  -6,  -6, -12,   1

#_08BA02: dw  -6,  -6, -12,   1,  -6
#_08BA0C: dw  -6, -12,   1,  -6, -17
#_08BA16: dw -23, -14, -19, -11, -18
#_08BA20: dw  -9, -13,  -4, -13

#_08BA28: dw  -1,  -8,  -3,  -9,   0
#_08BA32: dw  -5,  -3, -10,  -1,  -5
#_08BA3C: dw  -4, -13,  -1,  -8,  -3
#_08BA46: dw  -9,   0,  -5,  -3

#_08BA4E: dw -10,  -1,  -5,  -3, -13
#_08BA58: dw  -1,  -8,   9,  15,   6
#_08BA62: dw  11,   3,  10,   1,   5
#_08BA6C: dw  -4,   5,  -7,   0

;---------------------------------------------------------------------------------------------------

.char
#_08BA74: db $09, $0A, $0A, $09, $09

#_08BA79: db $09, $09, $09, $09, $09

#_08BA7E: db $09, $09, $09, $09, $09

#_08BA83: db $09, $09, $09, $09, $09

;---------------------------------------------------------------------------------------------------

.prop
#_08BA88: db $68, $24, $A2, $28, $68
#_08BA8D: db $E2, $28, $A4, $68, $E2
#_08BA92: db $A4, $28, $22, $A4, $E8
#_08BA97: db $62, $24, $A8, $E2

#_08BA9B: db $64, $28, $A2, $E4, $68
#_08BAA0: db $22, $A4, $E8, $62, $E2
#_08BAA5: db $A4, $E8, $64, $E8, $A8
#_08BAAA: db $E4, $62, $E4, $A8

#_08BAAE: db $E2, $68, $E2, $A4, $E8
#_08BAB3: db $64, $E8, $A8, $E4, $62
#_08BAB8: db $E4, $A8, $E2, $68, $E2
#_08BABD: db $A4, $E8, $64, $E8

#_08BAC1: db $A8, $E4, $62, $E4, $A8
#_08BAC6: db $E2, $68, $E2, $A4, $E8
#_08BACB: db $64, $E8, $A8, $E4, $62
#_08BAD0: db $E4, $A8, $E2, $68

;===================================================================================================

Ancilla1A_PowderDust:
#_08BAD4: LDA.b $11
#_08BAD6: BNE .just_draw

#_08BAD8: JSR Powder_ApplyDamageToSprites

#_08BADB: DEC.w $03B1,X
#_08BADE: BPL .just_draw

;---------------------------------------------------------------------------------------------------

#_08BAE0: LDA.b #$01
#_08BAE2: STA.w $03B1,X

#_08BAE5: LDY.w $0C72,X

#_08BAE8: LDA.w PowderDraw_group_offset,Y
#_08BAEB: STA.b $00

#_08BAED: LDA.w $0C5E,X
#_08BAF0: INC A
#_08BAF1: CMP.b #$0A
#_08BAF3: BNE .dont_terminate

#_08BAF5: STZ.w $0C4A,X
#_08BAF8: STZ.w $0333

#_08BAFB: RTS

;---------------------------------------------------------------------------------------------------

.dont_terminate
#_08BAFC: STA.w $0C5E,X

#_08BAFF: CLC
#_08BB00: ADC.b $00
#_08BB02: TAY

#_08BB03: LDA.w PowderDraw_anim_step,Y
#_08BB06: STA.w $03C2,X

;---------------------------------------------------------------------------------------------------

.just_draw
#_08BB09: LDA.w $0C90,X
#_08BB0C: JSR Ancilla_AllocateOAMFromRegion_B_or_E

;===================================================================================================

AncillaDraw_Powder:
#_08BB0F: JSR Ancilla_PrepOAMCoord

#_08BB12: PHX

#_08BB13: LDA.b $00
#_08BB15: STA.b $06

#_08BB17: LDA.b $01
#_08BB19: STA.b $07

#_08BB1B: LDA.b $02
#_08BB1D: STA.b $08

#_08BB1F: LDA.b $03
#_08BB21: STA.b $09

#_08BB23: LDA.w $03C2,X
#_08BB26: STA.b $0C

#_08BB28: ASL A
#_08BB29: ASL A
#_08BB2A: STA.b $0A

#_08BB2C: ASL A
#_08BB2D: STA.b $04

;---------------------------------------------------------------------------------------------------

#_08BB2F: LDA.b #$03
#_08BB31: STA.w $0072

#_08BB34: LDY.b #$00

.next_object
#_08BB36: LDX.b $04

#_08BB38: REP #$20

#_08BB3A: LDA.b $06
#_08BB3C: CLC
#_08BB3D: ADC.w PowderDraw_offset_y,X
#_08BB40: STA.b $00

#_08BB42: LDA.b $08
#_08BB44: CLC
#_08BB45: ADC.w PowderDraw_offset_x,X
#_08BB48: STA.b $02

#_08BB4A: SEP #$20

#_08BB4C: JSR Ancilla_SetOAM_XY

#_08BB4F: LDX.b $0C

#_08BB51: LDA.w PowderDraw_char,X
#_08BB54: STA.b ($90),Y

#_08BB56: INY

#_08BB57: LDX.b $0A

#_08BB59: LDA.w PowderDraw_prop,X
#_08BB5C: AND.b #$CF
#_08BB5E: ORA.b $65
#_08BB60: STA.b ($90),Y

#_08BB62: INY
#_08BB63: PHY

#_08BB64: TYA
#_08BB65: SEC
#_08BB66: SBC.b #$04
#_08BB68: LSR A
#_08BB69: LSR A
#_08BB6A: TAY

#_08BB6B: LDA.b #$00
#_08BB6D: STA.b ($92),Y

#_08BB6F: PLY

#_08BB70: INC.b $04
#_08BB72: INC.b $04

#_08BB74: INC.b $0A

#_08BB76: DEC.b $72
#_08BB78: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_08BB7A: PLX

#_08BB7B: RTS

;===================================================================================================

Powder_ApplyDamageToSprites:
#_08BB7C: LDY.b #$0F

.next_sprite
#_08BB7E: TYA
#_08BB7F: EOR.b $1A
#_08BB81: AND.b #$03
#_08BB83: BNE .skip_sprite

#_08BB85: LDA.w $0DD0,Y
#_08BB88: CMP.b #$09
#_08BB8A: BNE .skip_sprite

#_08BB8C: LDA.w $0CD2,Y
#_08BB8F: AND.b #$20
#_08BB91: BNE .skip_sprite

;---------------------------------------------------------------------------------------------------

#_08BB93: JSR Ancilla_SetupBasicHitBox

#_08BB96: PHY
#_08BB97: PHX

#_08BB98: TYX
#_08BB99: JSL Sprite_SetupHitbox_long

#_08BB9D: PLX
#_08BB9E: PLY

#_08BB9F: JSL CheckIfHitBoxesOverlap_long
#_08BBA3: BCC .skip_sprite

#_08BBA5: LDA.w $0E20,Y
#_08BBA8: CMP.b #!SPRITE_0B
#_08BBAA: BNE .not_cucco_easter_egg

#_08BBAC: LDA.b $1B ; this gets compared to #$0D weirdly...
#_08BBAE: BEQ .not_cucco_easter_egg

#_08BBB0: LDA.w $048E
#_08BBB3: DEC A
#_08BBB4: BNE .not_cucco_easter_egg

#_08BBB6: BRA .special_transform

;---------------------------------------------------------------------------------------------------

.not_cucco_easter_egg
#_08BBB8: CMP.b #!SPRITE_0D
#_08BBBA: BNE .not_buzz_blob

#_08BBBC: LDA.w $0EB0,Y
#_08BBBF: BNE .skip_sprite

.special_transform
#_08BBC1: LDA.b #$01
#_08BBC3: STA.w $0EB0,Y

#_08BBC6: PHX
#_08BBC7: PHY

#_08BBC8: TYX
#_08BBC9: JSL Sprite_SpawnPoofGarnish

#_08BBCD: PLY
#_08BBCE: PLX

#_08BBCF: BRA .skip_sprite

;---------------------------------------------------------------------------------------------------

.not_buzz_blob
#_08BBD1: PHX
#_08BBD2: PHY

#_08BBD3: TYX

#_08BBD4: LDA.b #$0A
#_08BBD6: JSL Ancilla_CheckDamageToSprite_preset

#_08BBDA: PLY
#_08BBDB: PLX

.skip_sprite
#_08BBDC: DEY
#_08BBDD: BPL .next_sprite

#_08BBDF: RTS

;===================================================================================================

Ancilla1D_ScreenShake:
#_08BBE0: LDA.b $11
#_08BBE2: BNE .alert

#_08BBE4: DEC.w $0C5E,X
#_08BBE7: BPL .delay

#_08BBE9: STZ.w $011A
#_08BBEC: STZ.w $011B
#_08BBEF: STZ.w $011C
#_08BBF2: STZ.w $011D

#_08BBF5: STZ.w $0C4A,X

#_08BBF8: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_08BBF9: JSL DashTremor_Twiddle

#_08BBFD: LDA.b $00
#_08BBFF: STA.w $011A,Y

#_08BC02: LDA.b $01
#_08BC04: STA.w $011B,Y

#_08BC07: TYA
#_08BC08: LSR A
#_08BC09: EOR.b #$01
#_08BC0B: TAY

#_08BC0C: LDA.w $0030,Y
#_08BC0F: CLC
#_08BC10: ADC.b $00
#_08BC12: STA.w $0030,Y

.alert
#_08BC15: BRL Ancilla_SpriteAlert

;===================================================================================================

pool Ancilla1E_DashDust

.offset_y
#_08BC18: dw  -2,   0,  -1
#_08BC1E: dw  -3,  -2,   0
#_08BC24: dw  -3,   0,  -1
#_08BC2A: dw  -3,  -1,  -1
#_08BC30: dw  -2,  -1,  -1
#_08BC36: dw  -2,   0,  -1
#_08BC3C: dw  -3,  -2,   0
#_08BC42: dw  -3,   0,  -1
#_08BC48: dw  -3,  -1,  -1
#_08BC4E: dw  -2,  -1,  -1

.offset_x
#_08BC54: dw  10,   5,  -1
#_08BC5A: dw   0,  10,   5
#_08BC60: dw   0,   5,  -1
#_08BC66: dw   0,  -1,  -1
#_08BC6C: dw   9,  -1,  -1
#_08BC72: dw  10,   5,  -1
#_08BC78: dw   0,  10,   5
#_08BC7E: dw   0,   5,  -1
#_08BC84: dw   0,  -1,  -1
#_08BC8A: dw   9,  -1,  -1

.char
#_08BC90: db $CF, $A9, $FF
#_08BC93: db $A9, $DF, $CF
#_08BC96: db $CF, $DF, $FF
#_08BC99: db $DF, $FF, $FF
#_08BC9C: db $A9, $FF, $FF
#_08BC9F: db $CF, $CF, $FF
#_08BCA2: db $CF, $DF, $CF
#_08BCA5: db $CF, $DF, $FF
#_08BCA8: db $DF, $FF, $FF
#_08BCAB: db $CF, $FF, $FF

.offset_from_link
#_08BCAE: dw   0
#_08BCB0: dw   0
#_08BCB2: dw   4
#_08BCB4: dw  -4

pool off

;---------------------------------------------------------------------------------------------------

Ancilla1E_DashDust:
#_08BCB6: LDA.w $0C54,X
#_08BCB9: BEQ .stationary

#_08BCBB: JSL DashDust_Motive

#_08BCBF: BRA .exit

;---------------------------------------------------------------------------------------------------

.stationary
#_08BCC1: LDA.w $0C68,X
#_08BCC4: BNE .delay

#_08BCC6: LDA.b #$03
#_08BCC8: STA.w $0C68,X

#_08BCCB: LDA.w $0C5E,X
#_08BCCE: INC A
#_08BCCF: STA.w $0C5E,X

#_08BCD2: CMP.b #$05
#_08BCD4: BEQ .exit

#_08BCD6: CMP.b #$06
#_08BCD8: BNE .delay

#_08BCDA: STZ.w $0C4A,X

.exit
#_08BCDD: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_08BCDE: LDA.w $0C5E,X
#_08BCE1: CMP.b #$05
#_08BCE3: BEQ .exit

;---------------------------------------------------------------------------------------------------

#_08BCE5: JSR Ancilla_PrepOAMCoord

#_08BCE8: PHX

#_08BCE9: LDA.b $00
#_08BCEB: STA.b $06

#_08BCED: LDA.b $01
#_08BCEF: STA.b $07

#_08BCF1: LDA.b $02
#_08BCF3: STA.b $08

#_08BCF5: LDA.b $03
#_08BCF7: STA.b $09

#_08BCF9: LDY.b $2F

#_08BCFB: LDA.w .offset_from_link+0,Y
#_08BCFE: STA.b $0C

#_08BD00: LDA.w .offset_from_link+1,Y
#_08BD03: STA.b $0D

#_08BD05: LDY.b #$00

#_08BD07: LDA.w $0351
#_08BD0A: CMP.b #$01
#_08BD0C: BNE .not_in_water

#_08BD0E: LDY.b #$05

.not_in_water
#_08BD10: STY.b $04

#_08BD12: LDA.w $0C5E,X
#_08BD15: CLC
#_08BD16: ADC.b $04
#_08BD18: STA.b $04

#_08BD1A: ASL A
#_08BD1B: CLC
#_08BD1C: ADC.b $04
#_08BD1E: STA.b $04

;---------------------------------------------------------------------------------------------------

#_08BD20: LDA.b #$02
#_08BD22: STA.b $72

#_08BD24: LDY.b #$00

.next_object
#_08BD26: LDX.b $04

#_08BD28: LDA.w .char,X
#_08BD2B: CMP.b #$FF
#_08BD2D: BEQ .skip_object

#_08BD2F: TXA
#_08BD30: ASL A
#_08BD31: TAX

#_08BD32: REP #$20

#_08BD34: LDA.b $06
#_08BD36: CLC
#_08BD37: ADC.w .offset_y,X
#_08BD3A: STA.b $00

#_08BD3C: LDA.b $08
#_08BD3E: CLC
#_08BD3F: ADC.w .offset_x,X

#_08BD42: CLC
#_08BD43: ADC.b $0C
#_08BD45: STA.b $02

;---------------------------------------------------------------------------------------------------

#_08BD47: SEP #$20

#_08BD49: JSR Ancilla_SetOAM_XY

#_08BD4C: LDX.b $04

#_08BD4E: LDA.w .char,X
#_08BD51: STA.b ($90),Y

#_08BD53: INY

#_08BD54: LDA.b #$04
#_08BD56: ORA.b $65
#_08BD58: STA.b ($90),Y

#_08BD5A: INY
#_08BD5B: PHY

#_08BD5C: TYA
#_08BD5D: SEC
#_08BD5E: SBC.b #$04
#_08BD60: LSR A
#_08BD61: LSR A
#_08BD62: TAY

#_08BD63: LDA.b #$00
#_08BD65: STA.b ($92),Y

#_08BD67: PLY

;---------------------------------------------------------------------------------------------------

.skip_object
#_08BD68: INC.b $04

#_08BD6A: DEC.b $72
#_08BD6C: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_08BD6E: PLX

#_08BD6F: RTS

;===================================================================================================

pool Hookshot

.char
#_08BD70: db $09, $0A, $FF ; up
#_08BD73: db $09, $0A, $FF ; down
#_08BD76: db $09, $FF, $0A ; left
#_08BD79: db $09, $FF, $0A ; right

.prop
#_08BD7C: db $00, $00, $FF ; up
#_08BD7F: db $80, $80, $FF ; down
#_08BD82: db $40, $FF, $40 ; left
#_08BD85: db $00, $FF, $00 ; right

.chain_speed_y
#_08BD88: dw   8 ; up
#_08BD8A: dw  -9 ; down - This is faster, but does it matter?
#_08BD8C: dw   0 ; left
#_08BD8E: dw   0 ; right

.chain_speed_x
#_08BD90: dw   0 ; up
#_08BD92: dw   0 ; down
#_08BD94: dw   8 ; left
#_08BD96: dw  -8 ; right

pool off

;===================================================================================================

Ancilla1F_Hookshot:
#_08BD98: LDA.b $11
#_08BD9A: BNE .just_draw

; Play the chain SFX every 8 frames
#_08BD9C: LDA.w $0C68,X
#_08BD9F: BNE .no_chain_sfx

#_08BDA1: LDA.b #$07
#_08BDA3: STA.w $0C68,X

#_08BDA6: LDA.b #!SFX2_0A
#_08BDA8: JSR Ancilla_SFX2_Pan

;---------------------------------------------------------------------------------------------------

.no_chain_sfx
; Is the hookshot currently dragging link?
; If it is, just draw.
#_08BDAB: LDA.w $037E
#_08BDAE: BNE .just_draw

#_08BDB0: JSR Ancilla_Move_Y
#_08BDB3: JSR Ancilla_Move_X

; This flags whether the hook is extending or retracting
#_08BDB6: LDA.w $0C54,X
#_08BDB9: BEQ Hookshot_Extending

; Tick the growth level
; Delete self when fully retracted
; Effectively acts as a timer
#_08BDBB: DEC.w $0C5E,X
#_08BDBE: BMI Hookshot_DeleteSelf

.just_draw
#_08BDC0: BRL AncillaDraw_Hookshot

;===================================================================================================

Hookshot_DeleteSelf:
#_08BDC3: STZ.w $0C4A,X

#_08BDC6: RTS

;===================================================================================================

Hookshot_Extending:
; Extend self
#_08BDC7: LDA.w $0C5E,X
#_08BDCA: INC A
#_08BDCB: STA.w $0C5E,X

; Max of 32 ticks
; Note that this is BNE, not BCC
; So it doesn't retract until it is exactly 32
#_08BDCE: CMP.b #$20
#_08BDD0: BNE .not_fully_extended

; Set growth to retraction
#_08BDD2: LDA.b #$01
#_08BDD4: STA.w $0C54,X

; Common technique to get the additive inverse
; set Y velocity
#_08BDD7: LDA.w $0C22,X
#_08BDDA: EOR.b #$FF
#_08BDDC: INC A
#_08BDDD: STA.w $0C22,X

; set X velocity
#_08BDE0: LDA.w $0C2C,X
#_08BDE3: EOR.b #$FF
#_08BDE5: INC A
#_08BDE6: STA.w $0C2C,X

;---------------------------------------------------------------------------------------------------

.not_fully_extended
#_08BDE9: JSR Hookshot_ShouldIEvenBotherWithTiles
#_08BDEC: BCC .do_bother

#_08BDEE: BRL AncillaDraw_Hookshot

;---------------------------------------------------------------------------------------------------

.do_bother
#_08BDF1: LDA.w $0385,X
#_08BDF4: BNE .ignore_collision

#_08BDF6: LDA.w $0C54,X
#_08BDF9: BNE .ignore_collision

#_08BDFB: JSR Ancilla_CheckSpriteCollision
#_08BDFE: BCC .ignore_collision

#_08BE00: LDA.w $0C54,X
#_08BE03: BNE .ignore_collision

;---------------------------------------------------------------------------------------------------
; Change parity of hook and invert speed
;---------------------------------------------------------------------------------------------------
#_08BE05: LDA.b #$01
#_08BE07: STA.w $0C54,X

#_08BE0A: LDA.w $0C22,X
#_08BE0D: EOR.b #$FF
#_08BE0F: INC A
#_08BE10: STA.w $0C22,X

#_08BE13: LDA.w $0C2C,X
#_08BE16: EOR.b #$FF
#_08BE18: INC A
#_08BE19: STA.w $0C2C,X

#_08BE1C: BRA .ignore_collision

;---------------------------------------------------------------------------------------------------

#UNREACHABLE_08BE1E:
#_08BE1E: BRL Hookshot_ExtraCollisionLogic_branching_here_unreachable

;---------------------------------------------------------------------------------------------------

.ignore_collision
#_08BE21: JSL Hookshot_CheckTileCollision

#_08BE25: STZ.b $00

#_08BE27: LDA.b $1B
#_08BE29: BEQ .outdoors_ledge

#_08BE2B: LDY.b #$01

#_08BE2D: LDA.w $0C72,X
#_08BE30: AND.b #$02
#_08BE32: BNE .indoor_horizontal_ledge

#_08BE34: LDA.w $036D
#_08BE37: LSR A
#_08BE38: LSR A
#_08BE39: LSR A
#_08BE3A: LSR A
#_08BE3B: STA.b $00

#_08BE3D: LDY.b #$00

;---------------------------------------------------------------------------------------------------

.indoor_horizontal_ledge
#_08BE3F: LDA.w $036D,Y
#_08BE42: ORA.b $00
#_08BE44: AND.b #$03
#_08BE46: STA.b $00

#_08BE48: BEQ .not_ledge

#_08BE4A: BRA .ledge_collision

;---------------------------------------------------------------------------------------------------

.outdoors_ledge
#_08BE4C: LDA.w $036E
#_08BE4F: AND.b #$03
#_08BE51: ORA.w $036D
#_08BE54: ORA.w $0370
#_08BE57: AND.b #$33
#_08BE59: BEQ .not_ledge

;---------------------------------------------------------------------------------------------------

.ledge_collision
#_08BE5B: DEC.w $0394,X
#_08BE5E: BPL .not_ledge

#_08BE60: LDY.w $0380,X
#_08BE63: BEQ .last_tile_passable

#_08BE65: LDA.b $00
#_08BE67: AND.b #$03
#_08BE69: BNE .hit_indoor_ledge

#_08BE6B: CPY.b $76
#_08BE6D: BEQ .last_tile_passable

;---------------------------------------------------------------------------------------------------

.hit_indoor_ledge
#_08BE6F: LDA.b #$02
#_08BE71: STA.w $0394,X

#_08BE74: DEC.w $0385,X
#_08BE77: BPL .not_ledge

#_08BE79: STZ.w $0385,X

#_08BE7C: BRA .not_ledge

.last_tile_passable
#_08BE7E: INC.w $0385,X

#_08BE81: LDA.b $76
#_08BE83: STA.w $0380,X

#_08BE86: LDA.b #$01
#_08BE88: STA.w $0394,X

;---------------------------------------------------------------------------------------------------

.not_ledge
#_08BE8B: LDA.w $0385,X
#_08BE8E: BNE .just_draw_already

#_08BE90: LDA.w $0394,X
#_08BE93: BMI Hookshot_ExtraCollisionLogic

#_08BE95: DEC.w $0394,X

.just_draw_already
#_08BE98: BRL AncillaDraw_Hookshot

;===================================================================================================

Hookshot_ExtraCollisionLogic:
#_08BE9B: LDA.b $0E

#_08BE9D: LSR A ; /16
#_08BE9E: LSR A
#_08BE9F: LSR A
#_08BEA0: LSR A

#_08BEA1: ORA.b $0E
#_08BEA3: ORA.b $58
#_08BEA5: ORA.b $0C
#_08BEA7: AND.b #$03

#_08BEA9: BEQ .no_collision

#_08BEAB: LDA.w $0C54,X
#_08BEAE: BNE .no_collision

#_08BEB0: LDA.b #$01
#_08BEB2: STA.w $0C54,X

#_08BEB5: LDA.w $0C22,X
#_08BEB8: EOR.b #$FF
#_08BEBA: INC A
#_08BEBB: STA.w $0C22,X

#_08BEBE: LDA.w $0C2C,X
#_08BEC1: EOR.b #$FF
#_08BEC3: INC A
#_08BEC4: STA.w $0C2C,X

#_08BEC7: LDA.w $02F6
#_08BECA: AND.b #$03
#_08BECC: BNE .no_collision

;---------------------------------------------------------------------------------------------------

#_08BECE: PHX

#_08BECF: LDY.b #$01
#_08BED1: LDA.b #!ANCILLA_06
#_08BED3: JSL AncillaAdd_HookshotWallClink

#_08BED7: PLX

#_08BED8: LDY.b #!SFX2_06

#_08BEDA: LDA.w $02F6
#_08BEDD: AND.b #$30
#_08BEDF: BNE .key_door

#_08BEE1: LDY.b #!SFX2_05

.key_door
#_08BEE3: TYA
#_08BEE4: JSR Ancilla_SFX2_Pan

.no_collision
#_08BEE7: LDA.w $02F6
#_08BEEA: AND.b #$03
#_08BEEC: BEQ AncillaDraw_Hookshot

;---------------------------------------------------------------------------------------------------

.branching_here_unreachable
#_08BEEE: LDA.w $0C5E,X
#_08BEF1: CMP.b #$04
#_08BEF3: BCS .dont_delete_self

#_08BEF5: BRL Hookshot_DeleteSelf

.dont_delete_self
#_08BEF8: LDA.b #$01
#_08BEFA: STA.w $037E

#_08BEFD: STX.w $039D

;===================================================================================================

AncillaDraw_Hookshot:
#_08BF00: JSR Ancilla_PrepOAMCoord

#_08BF03: LDA.w $0385,X
#_08BF06: BEQ .not_max_priority

#_08BF08: LDA.b #$30
#_08BF0A: STA.b $65

.not_max_priority
#_08BF0C: REP #$20

#_08BF0E: LDA.b $00
#_08BF10: STA.b $04

#_08BF12: LDA.b $02
#_08BF14: STA.b $06

#_08BF16: SEP #$20

#_08BF18: PHX

#_08BF19: LDA.w $0C72,X
#_08BF1C: STA.b $08

#_08BF1E: ASL A
#_08BF1F: CLC
#_08BF20: ADC.b $08
#_08BF22: STA.b $0A

#_08BF24: TAX

;---------------------------------------------------------------------------------------------------

#_08BF25: LDA.b #$02
#_08BF27: STA.b $08

#_08BF29: LDY.b #$00

.next_object
#_08BF2B: LDX.b $0A

#_08BF2D: LDA.w Hookshot_char,X
#_08BF30: CMP.b #$FF
#_08BF32: BEQ .skip

#_08BF34: JSR Ancilla_SetOAM_XY

#_08BF37: LDX.b $0A

#_08BF39: LDA.w Hookshot_char,X
#_08BF3C: STA.b ($90),Y

#_08BF3E: INY

#_08BF3F: LDA.w Hookshot_prop,X
#_08BF42: ORA.b #$02
#_08BF44: ORA.b $65
#_08BF46: STA.b ($90),Y

#_08BF48: INY
#_08BF49: PHY

#_08BF4A: TYA
#_08BF4B: SEC
#_08BF4C: SBC.b #$04
#_08BF4E: LSR A
#_08BF4F: LSR A
#_08BF50: TAY

#_08BF51: LDA.b #$00
#_08BF53: STA.b ($92),Y

#_08BF55: PLY

.skip
#_08BF56: INC.b $0A

#_08BF58: LDA.b $02
#_08BF5A: CLC
#_08BF5B: ADC.b #$08
#_08BF5D: STA.b $02

#_08BF5F: DEC.b $08
#_08BF61: BMI AncillaDraw_HookshotChain

;---------------------------------------------------------------------------------------------------

#_08BF63: LDA.b $08
#_08BF65: BNE .next_object

#_08BF67: LDA.b $00
#_08BF69: CLC
#_08BF6A: ADC.b #$08
#_08BF6C: STA.b $00

#_08BF6E: LDA.b $06
#_08BF70: STA.b $02

#_08BF72: BRA .next_object

;===================================================================================================

AncillaDraw_HookshotChain:
#_08BF74: PLX
#_08BF75: PHX

#_08BF76: STZ.b $0A
#_08BF78: STZ.b $0B
#_08BF7A: STZ.b $0C
#_08BF7C: STZ.b $0D

#_08BF7E: LDA.w $0C5E,X
#_08BF81: LSR A
#_08BF82: CMP.b #$07
#_08BF84: BCC .no_scaling

#_08BF86: SEC
#_08BF87: SBC.b #$07
#_08BF89: STA.b $0A
#_08BF8B: STA.b $0C

#_08BF8D: LDA.b #$06

.no_scaling
#_08BF8F: STA.b $08
#_08BF91: BNE .at_least_one_link

#_08BF93: BRL .exit

;---------------------------------------------------------------------------------------------------

.at_least_one_link
#_08BF96: LDA.w $0C72,X
#_08BF99: AND.b #$01
#_08BF9B: BEQ .up_or_left

#_08BF9D: LDA.b $0A
#_08BF9F: EOR.b #$FF
#_08BFA1: INC A
#_08BFA2: STA.b $0A
#_08BFA4: STA.b $0C
#_08BFA6: BEQ .up_or_left

#_08BFA8: LDA.b #$FF
#_08BFAA: STA.b $0B
#_08BFAC: STA.b $0D

.up_or_left
#_08BFAE: REP #$20

#_08BFB0: LDA.w $0C72,X
#_08BFB3: ASL A
#_08BFB4: AND.w #$00FF
#_08BFB7: TAX

;---------------------------------------------------------------------------------------------------

#_08BFB8: LDA.w Hookshot_chain_speed_y,X
#_08BFBB: BNE .use_actual_y

#_08BFBD: LDA.b $04
#_08BFBF: CLC
#_08BFC0: ADC.w #$0004
#_08BFC3: STA.b $04

;---------------------------------------------------------------------------------------------------

.use_actual_y
#_08BFC5: LDA.w Hookshot_chain_speed_x,X
#_08BFC8: BNE .next_object

#_08BFCA: LDA.b $06
#_08BFCC: CLC
#_08BFCD: ADC.w #$0004
#_08BFD0: STA.b $06

#_08BFD2: SEP #$20

;---------------------------------------------------------------------------------------------------

.next_object
#_08BFD4: REP #$20

#_08BFD6: LDA.w Hookshot_chain_speed_y,X
#_08BFD9: BEQ .dont_add_y

#_08BFDB: CLC
#_08BFDC: ADC.b $0A

.dont_add_y
#_08BFDE: CLC
#_08BFDF: ADC.b $04
#_08BFE1: STA.b $04
#_08BFE3: STA.b $00

#_08BFE5: LDA.w Hookshot_chain_speed_x,X
#_08BFE8: BEQ .dont_add_x

#_08BFEA: CLC
#_08BFEB: ADC.b $0C

.dont_add_x
#_08BFED: CLC
#_08BFEE: ADC.b $06
#_08BFF0: STA.b $06
#_08BFF2: STA.b $02

;---------------------------------------------------------------------------------------------------

#_08BFF4: SEP #$20

#_08BFF6: JSR Hookshot_CheckProximityToLink
#_08BFF9: BCS .skip

#_08BFFB: JSR Ancilla_SetOAM_XY

#_08BFFE: LDA.b #$19
#_08C000: STA.b ($90),Y

#_08C002: INY

#_08C003: LDA.b $1A
#_08C005: AND.b #$02

#_08C007: ASL A ; x64
#_08C008: ASL A
#_08C009: ASL A
#_08C00A: ASL A
#_08C00B: ASL A
#_08C00C: ASL A

#_08C00D: ORA.b #$02
#_08C00F: ORA.b $65
#_08C011: STA.b ($90),Y

#_08C013: INY
#_08C014: PHY

#_08C015: TYA
#_08C016: SEC
#_08C017: SBC.b #$04
#_08C019: LSR A
#_08C01A: LSR A
#_08C01B: TAY

#_08C01C: LDA.b #$00
#_08C01E: STA.b ($92),Y

#_08C020: PLY

.skip
#_08C021: DEC.b $08
#_08C023: BPL .next_object

;---------------------------------------------------------------------------------------------------

.exit
#_08C025: PLX

#_08C026: RTS

;===================================================================================================

pool Ancilla20_Blanket

.char
#_08C027: db $0A, $0A, $0A, $0A
#_08C02B: db $0C, $0C, $0A, $0A

.prop
#_08C02F: db $00, $60, $A0, $E0
#_08C033: db $00, $60, $A0, $E0

pool off

;---------------------------------------------------------------------------------------------------

Ancilla20_Blanket:
#_08C037: JSR Ancilla_PrepOAMCoord

#_08C03A: REP #$20

#_08C03C: LDA.b $00
#_08C03E: STA.b $04

#_08C040: LDA.b $02
#_08C042: STA.b $06
#_08C044: STA.b $08

#_08C046: SEP #$20

#_08C048: PHX

#_08C049: LDA.w $037D
#_08C04C: BNE .im_awake

#_08C04E: LDA.b #$10
#_08C050: JSL OAM_AllocateFromRegionB

#_08C054: BRA .continue

.im_awake
#_08C056: LDA.b #$10
#_08C058: JSL OAM_AllocateFromRegionA

;---------------------------------------------------------------------------------------------------

.continue
#_08C05C: LDA.w $037D
#_08C05F: BEQ .i_sleep

#_08C061: LDA.b #$04

.i_sleep
#_08C063: TAX

#_08C064: LDA.b #$03
#_08C066: STA.b $0A

#_08C068: LDY.b #$00

;---------------------------------------------------------------------------------------------------

.next_object
#_08C06A: JSR Ancilla_SetOAM_XY

#_08C06D: LDA.w .char,X
#_08C070: STA.b ($90),Y

#_08C072: INY

#_08C073: LDA.w .prop,X
#_08C076: ORA.b #$0D
#_08C078: ORA.b $65
#_08C07A: STA.b ($90),Y

#_08C07C: INY
#_08C07D: PHY

#_08C07E: TYA
#_08C07F: SEC
#_08C080: SBC.b #$04
#_08C082: LSR A
#_08C083: LSR A
#_08C084: TAY

#_08C085: LDA.b #$02
#_08C087: STA.b ($92),Y

#_08C089: PLY

#_08C08A: INX

#_08C08B: REP #$20

#_08C08D: LDA.b $06
#_08C08F: CLC
#_08C090: ADC.w #$0010
#_08C093: STA.b $02

#_08C095: SEP #$20

#_08C097: DEC.b $0A
#_08C099: BMI .exit

#_08C09B: LDA.b $0A
#_08C09D: CMP.b #$01
#_08C09F: BNE .next_object

;---------------------------------------------------------------------------------------------------

#_08C0A1: REP #$20

#_08C0A3: LDA.b $06
#_08C0A5: STA.b $02

#_08C0A7: LDA.b $04
#_08C0A9: CLC
#_08C0AA: ADC.w #$0008
#_08C0AD: STA.b $00

#_08C0AF: SEP #$20

#_08C0B1: BRA .next_object

;---------------------------------------------------------------------------------------------------

.exit
#_08C0B3: PLX

#_08C0B4: RTS

;===================================================================================================

pool Ancilla21_Snore

.char
#_08C0B5: db $44, $43, $42

pool off

;---------------------------------------------------------------------------------------------------

Ancilla21_Snore:
#_08C0B8: DEC.w $03B1,X
#_08C0BB: BPL .delay

#_08C0BD: LDA.w $0C5E,X
#_08C0C0: INC A
#_08C0C1: CMP.b #$03
#_08C0C3: BEQ .fully_zeed

#_08C0C5: STA.w $0C5E,X

.fully_zeed
#_08C0C8: LDA.b #$07
#_08C0CA: STA.w $03B1,X

;---------------------------------------------------------------------------------------------------

.delay
#_08C0CD: LDA.w $0C2C,X
#_08C0D0: CLC
#_08C0D1: ADC.w $0C54,X
#_08C0D4: STA.w $0C2C,X
#_08C0D7: BPL .positive_x

#_08C0D9: EOR.b #$FF
#_08C0DB: INC A

.positive_x
#_08C0DC: CMP.b #$08
#_08C0DE: BCC .dont_invert

#_08C0E0: LDA.w $0C54,X
#_08C0E3: EOR.b #$FF
#_08C0E5: INC A
#_08C0E6: STA.w $0C54,X

.dont_invert
#_08C0E9: JSR Ancilla_Move_Y
#_08C0EC: JSR Ancilla_Move_X

#_08C0EF: LDA.w $0BFA,X
#_08C0F2: STA.b $00

#_08C0F4: LDA.w $0C0E,X
#_08C0F7: STA.b $01

;---------------------------------------------------------------------------------------------------

#_08C0F9: REP #$20

#_08C0FB: LDA.b $20
#_08C0FD: SEC
#_08C0FE: SBC.w #$0018
#_08C101: CMP.b $00
#_08C103: BCC .dont_delete_me

#_08C105: SEP #$20

#_08C107: STZ.w $0C4A,X

;---------------------------------------------------------------------------------------------------

.dont_delete_me
#_08C10A: SEP #$20

#_08C10C: LDY.w $0C5E,X

#_08C10F: LDA.w .char,Y
#_08C112: STA.w $0109

#_08C115: JSR Ancilla_PrepOAMCoord

#_08C118: LDY.b #$00
#_08C11A: JSR Ancilla_SetOAM_XY

#_08C11D: LDA.b #$09
#_08C11F: STA.b ($90),Y

#_08C121: INY

#_08C122: LDA.b #$24
#_08C124: STA.b ($90),Y

#_08C126: LDA.b #$00
#_08C128: STA.b ($92)

#_08C12A: RTS

;===================================================================================================

pool Ancilla3B_SwordUpSparkle

.offset_y
#_08C12B: dw  -7,   0,   0,   0
#_08C133: dw -11, -11,  -3,  -3
#_08C13B: dw  -7,  -7,   0,   0
#_08C143: dw  -7,   0,   0,   0

.offset_x
#_08C14B: dw  16,   0,   0,   0
#_08C153: dw   8,  16,   8,  16
#_08C15B: dw   9,  15,   0,   0
#_08C163: dw  12,   0,   0,   0

.char
#_08C16B: db $92, $FF, $FF, $FF
#_08C16F: db $93, $93, $93, $93
#_08C173: db $F9, $F9, $FF, $FF
#_08C177: db $80, $FF, $FF, $FF

.prop
#_08C17B: db $00, $FF, $FF, $FF
#_08C17F: db $00, $40, $80, $C0
#_08C183: db $00, $40, $FF, $FF
#_08C187: db $00, $FF, $FF, $FF

pool off

;---------------------------------------------------------------------------------------------------

Ancilla3B_SwordUpSparkle:
#_08C18B: LDA.w $03B1,X
#_08C18E: BNE .delay

#_08C190: DEC.w $039F,X
#_08C193: BPL .active

#_08C195: LDA.b #$01
#_08C197: STA.w $039F,X

#_08C19A: INC.w $0C5E,X

#_08C19D: LDA.w $0C5E,X
#_08C1A0: CMP.b #$04
#_08C1A2: BNE .active

#_08C1A4: STZ.w $0C4A,X

.delay
#_08C1A7: DEC.w $03B1,X

#_08C1AA: RTS

;---------------------------------------------------------------------------------------------------

.active
#_08C1AB: PHX

#_08C1AC: JSR Ancilla_PrepOAMCoord

#_08C1AF: LDA.b #$03
#_08C1B1: STA.b $06

#_08C1B3: LDA.w $0C5E,X
#_08C1B6: ASL A
#_08C1B7: ASL A
#_08C1B8: TAX

;---------------------------------------------------------------------------------------------------

#_08C1B9: LDY.b #$00

.next_object
#_08C1BB: LDA.w .char,X
#_08C1BE: CMP.b #$FF
#_08C1C0: BEQ .skip

#_08C1C2: REP #$20

#_08C1C4: PHX

#_08C1C5: TXA
#_08C1C6: ASL A
#_08C1C7: TAX

#_08C1C8: LDA.b $20
#_08C1CA: CLC
#_08C1CB: ADC.w .offset_y,X
#_08C1CE: SEC
#_08C1CF: SBC.b $E8
#_08C1D1: STA.b $00

#_08C1D3: LDA.b $22
#_08C1D5: CLC
#_08C1D6: ADC.w .offset_x,X
#_08C1D9: SEC
#_08C1DA: SBC.b $E2
#_08C1DC: STA.b $02

#_08C1DE: PLX

;---------------------------------------------------------------------------------------------------

#_08C1DF: SEP #$20

#_08C1E1: JSR Ancilla_SetOAM_XY

#_08C1E4: LDA.w .char,X
#_08C1E7: STA.b ($90),Y

#_08C1E9: INY

#_08C1EA: LDA.w .prop,X
#_08C1ED: ORA.b #$04
#_08C1EF: ORA.b $65
#_08C1F1: STA.b ($90),Y

#_08C1F3: INY
#_08C1F4: PHY

#_08C1F5: TYA
#_08C1F6: SEC
#_08C1F7: SBC.b #$04
#_08C1F9: LSR A
#_08C1FA: LSR A
#_08C1FB: TAY

#_08C1FC: LDA.b #$00
#_08C1FE: STA.b ($92),Y

#_08C200: PLY

;---------------------------------------------------------------------------------------------------

.skip
#_08C201: INX

#_08C202: DEC.b $06
#_08C204: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_08C206: PLX

#_08C207: RTS

;===================================================================================================

pool Ancilla3C_SpinAttackChargeSparkle

.char
#_08C208: db $B7, $80, $83

.prop
#_08C20B: db $04, $04, $84

pool off

;---------------------------------------------------------------------------------------------------

Ancilla3C_SpinAttackChargeSparkle:
#_08C20E: LDA.b $11
#_08C210: BNE .continue

#_08C212: LDA.w $0C68,X
#_08C215: BNE .continue

#_08C217: LDA.b #$04
#_08C219: STA.w $0C68,X

#_08C21C: INC.w $0C5E,X

#_08C21F: LDA.w $0C5E,X
#_08C222: CMP.b #$03
#_08C224: BNE .continue

#_08C226: STZ.w $0C4A,X

#_08C229: RTS

;---------------------------------------------------------------------------------------------------

.continue
#_08C22A: PHX

#_08C22B: LDA.b #$04
#_08C22D: JSR Ancilla_AllocateOAMFromRegion_A_or_D_or_F

#_08C230: TYA
#_08C231: STA.w $0C86,X

#_08C234: JSR Ancilla_PrepOAMCoord

#_08C237: LDA.w $0C5E,X
#_08C23A: TAX

#_08C23B: LDY.b #$00
#_08C23D: JSR Ancilla_SetOAM_XY

#_08C240: LDA.w .char,X

#_08C243: STA.b ($90),Y

#_08C245: INY

#_08C246: LDA.w .prop,X
#_08C249: ORA.b $65
#_08C24B: STA.b ($90),Y

#_08C24D: LDA.b #$00
#_08C24F: STA.b ($92)

#_08C251: PLX

#_08C252: RTS

;===================================================================================================

pool Ancilla35_MasterSwordGet

.offset_y
#_08C253: dw   1,   1,   9,   9
#_08C25B: dw   1,   1,   9,   9

.offset_x
#_08C263: dw  -1,   8,  -1,   8
#_08C26B: dw   0,   7,   0,   7

.char
#_08C273: db $86, $86, $96, $96
#_08C277: db $87, $87, $97, $97

.prop
#_08C27B: db $01, $41, $01, $41
#_08C27F: db $01, $41, $01, $41

pool off

;---------------------------------------------------------------------------------------------------

Ancilla35_MasterSwordGet:
#_08C283: LDA.w $0C68,X
#_08C286: BNE .stay_around

#_08C288: STZ.w $0C4A,X

#_08C28B: RTS

.stay_around
#_08C28C: DEC.w $03B1,X
#_08C28F: BPL .delay

#_08C291: LDA.w $0C5E,X
#_08C294: INC A
#_08C295: CMP.b #$03
#_08C297: BNE .no_wrap

#_08C299: LDA.b #$00

.no_wrap
#_08C29B: STA.w $0C5E,X

;---------------------------------------------------------------------------------------------------

.delay
#_08C29E: JSR Ancilla_PrepOAMCoord

#_08C2A1: REP #$20

#_08C2A3: LDA.b $00
#_08C2A5: STA.b $04

#_08C2A7: LDA.b $02
#_08C2A9: STA.b $06

#_08C2AB: SEP #$20

#_08C2AD: PHX

#_08C2AE: STZ.b $08

#_08C2B0: LDA.w $0C5E,X
#_08C2B3: BEQ .no_draw

#_08C2B5: DEC A
#_08C2B6: ASL A
#_08C2B7: ASL A
#_08C2B8: TAX

;---------------------------------------------------------------------------------------------------

#_08C2B9: LDY.b #$00

.next_object
#_08C2BB: PHX

#_08C2BC: TXA
#_08C2BD: ASL A
#_08C2BE: TAX

#_08C2BF: REP #$20

#_08C2C1: LDA.b $04
#_08C2C3: CLC
#_08C2C4: ADC.w .offset_y,X
#_08C2C7: STA.b $00

#_08C2C9: LDA.b $06
#_08C2CB: CLC
#_08C2CC: ADC.w .offset_x,X
#_08C2CF: STA.b $02

#_08C2D1: SEP #$20

#_08C2D3: PLX

#_08C2D4: JSR Ancilla_SetOAM_XY

#_08C2D7: LDA.w .char,X
#_08C2DA: STA.b ($90),Y

#_08C2DC: INY

#_08C2DD: LDA.w .prop,X
#_08C2E0: AND.b #$CF
#_08C2E2: ORA.b #$04
#_08C2E4: ORA.b $65
#_08C2E6: STA.b ($90),Y

#_08C2E8: INY
#_08C2E9: PHY

#_08C2EA: TYA
#_08C2EB: SEC
#_08C2EC: SBC.b #$04
#_08C2EE: LSR A
#_08C2EF: LSR A
#_08C2F0: TAY

#_08C2F1: LDA.b #$00
#_08C2F3: STA.b ($92),Y

#_08C2F5: PLY

#_08C2F6: INX

#_08C2F7: INC.b $08

#_08C2F9: LDA.b $08
#_08C2FB: CMP.b #$04
#_08C2FD: BNE .next_object

;---------------------------------------------------------------------------------------------------

.no_draw
#_08C2FF: PLX

#_08C300: RTS

;===================================================================================================
; For messages, $FFFF means no message
;===================================================================================================
pool Ancilla22_ItemGet ItemGet

.message
#_08C301: dw $FFFF ; FIGHTER SWORD
#_08C303: dw $006E ; MASTER SWORD              - Message 006E
#_08C305: dw $0075 ; TEMPERED SWORD            - Message 0075
#_08C307: dw $0050 ; BUTTER SWORD              - Message 0050 TODO WTF??
#_08C309: dw $FFFF ; FIGHTER SHIELD
#_08C30B: dw $0076 ; FIRE SHIELD               - Message 0076 TODO ???
#_08C30D: dw $0076 ; MIRROR SHIELD             - Message 0076
#_08C30F: dw $0060 ; FIRE ROD                  - Message 0060
#_08C311: dw $005F ; ICE ROD                   - Message 005F
#_08C313: dw $0064 ; HAMMER                    - Message 0064
#_08C315: dw $0067 ; HOOKSHOT                  - Message 0067
#_08C317: dw $0051 ; BOW                       - Message 0051
#_08C319: dw $0050 ; BOOMERANG                 - Message 0050
#_08C31B: dw $0054 ; POWDER                    - Message 0054
#_08C31D: dw $FFFF ; BOTTLE REFILL (BEE)
#_08C31F: dw $0062 ; BOMBOS                    - Message 0062
#_08C321: dw $0061 ; ETHER                     - Message 0061
#_08C323: dw $0063 ; QUAKE                     - Message 0063
#_08C325: dw $004F ; LAMP                      - Message 004F
#_08C327: dw $0052 ; SHOVEL                    - Message 0052
#_08C329: dw $0065 ; FLUTE                     - Message 0065
#_08C32B: dw $0066 ; SOMARIA                   - Message 0066
#_08C32D: dw $0069 ; BOTTLE                    - Message 0069
#_08C32F: dw $0075 ; HEART PIECE               - Message 0075 TODO WTF NO
#_08C331: dw $0077 ; BYRNA                     - Message 0077
#_08C333: dw $0053 ; CAPE                      - Message 0053
#_08C335: dw $006C ; MIRROR                    - Message 006C
#_08C337: dw $0056 ; GLOVE                     - Message 0056
#_08C339: dw $006B ; MITTS                     - Message 006B
#_08C33B: dw $005B ; BOOK                      - Message 005B
#_08C33D: dw $0055 ; FLIPPERS                  - Message 0055
#_08C33F: dw $005C ; PEARL                     - Message 005C
#_08C341: dw $FFFF ; CRYSTAL
#_08C343: dw $0072 ; NET                       - Message 0072
#_08C345: dw $0073 ; BLUE MAIL                 - Message 0073
#_08C347: dw $0074 ; RED MAIL                  - Message 0074
#_08C349: dw $FFFF ; SMALL KEY
#_08C34B: dw $005D ; COMPASS                   - Message 005D
#_08C34D: dw $0156 ; HEART CONTAINER FROM 4/4  - Message 0156
#_08C34F: dw $FFFF ; BOMB
#_08C351: dw $0068 ; 3 BOMBS                   - Message 0068
#_08C353: dw $005A ; MUSHROOM                  - Message 005A
#_08C355: dw $008D ; RED BOOMERANG             - Message 008D
#_08C357: dw $006F ; FULL BOTTLE (RED)         - Message 006F
#_08C359: dw $0070 ; FULL BOTTLE (GREEN)       - Message 0070
#_08C35B: dw $0071 ; FULL BOTTLE (BLUE)        - Message 0071
#_08C35D: dw $006F ; POTION REFILL (RED)       - Message 006F
#_08C35F: dw $0070 ; POTION REFILL (GREEN)     - Message 0070
#_08C361: dw $0071 ; POTION REFILL (BLUE)      - Message 0071
#_08C363: dw $0068 ; 10 BOMBS                  - Message 0068
#_08C365: dw $006A ; BIG KEY                   - Message 006A
#_08C367: dw $005E ; MAP                       - Message 005E
#_08C369: dw $FFFF ; 1 RUPEE
#_08C36B: dw $FFFF ; 5 RUPEES
#_08C36D: dw $FFFF ; 20 RUPEES
#_08C36F: dw $0057 ; GREEN PENDANT             - Message 0057
#_08C371: dw $0082 ; BLUE PENDANT              - Message 0082
#_08C373: dw $0058 ; RED PENDANT               - Message 0058
#_08C375: dw $FFFF ; TOSSED BOW
#_08C377: dw $FFFF ; SILVERS
#_08C379: dw $FFFF ; FULL BOTTLE (BEE)
#_08C37B: dw $FFFF ; FULL BOTTLE (FAIRY)
#_08C37D: dw $FFFF ; BOSS HC
#_08C37F: dw $0157 ; SANC HC                   - Message 0157
#_08C381: dw $FFFF ; 100 RUPEES
#_08C383: dw $FFFF ; 50 RUPEES
#_08C385: dw $FFFF ; HEART
#_08C387: dw $FFFF ; ARROW
#_08C389: dw $FFFF ; 10 ARROWS
#_08C38B: dw $FFFF ; SMALL MAGIC
#_08C38D: dw $FFFF ; 300 RUPEES
#_08C38F: dw $FFFF ; 20 RUPEES GREEN
#_08C391: dw $FFFF ; FULL BOTTLE (GOOD BEE)
#_08C393: dw $00D9 ; TOSSED FIGHTER SWORD      - Message 00D9
#_08C395: dw $0065 ; BOTTLE REFILL (GOOD BEE)  - Message 0065
#_08C397: dw $007A ; BOOTS                     - Message 007A

;---------------------------------------------------------------------------------------------------

.animated_rupee_tiles
#_08C399: db $24, $25, $26

.animated_rupee_timers
#_08C39C: db $09, $05, $05

.default_oam_props
#_08C39F: db $05, $01, $04

.heart_piece_message
#_08C3A2: dw $FFFF
#_08C3A4: dw $0153 ; Message 0153
#_08C3A6: dw $0154 ; Message 0154
#_08C3A8: dw $0155 ; Message 0155

.pendant_message
#_08C3AA: dw $0059 ; Message 0059
#_08C3AC: dw $0081 ; Message 0081

pool off

;---------------------------------------------------------------------------------------------------

Ancilla22_ItemGet:
#_08C3AE: LDA.w $02E4
#_08C3B1: CMP.b #$02
#_08C3B3: BEQ .just_draw_a

#_08C3B5: LDA.b $11
#_08C3B7: BEQ .operable_submode

#_08C3B9: CMP.b #$2B
#_08C3BB: BEQ .operable_submode

#_08C3BD: CMP.b #$09
#_08C3BF: BEQ .operable_submode

#_08C3C1: CMP.b #$02
#_08C3C3: BNE .just_draw_a

#_08C3C5: LDA.b #$10
#_08C3C7: STA.w $0C68,X

.just_draw_a
#_08C3CA: BRL ItemGet_Animate

;---------------------------------------------------------------------------------------------------

.operable_submode
#_08C3CD: INC.w $0FC1

#_08C3D0: LDA.w $0C54,X
#_08C3D3: BEQ .from_text_or_object

#_08C3D5: CMP.b #$03
#_08C3D7: BEQ .from_text_or_object

#_08C3D9: BRL .from_chest_or_sprite

;---------------------------------------------------------------------------------------------------

.from_text_or_object
#_08C3DC: LDA.w $0C5E,X

#_08C3DF: CMP.b #!ITEMGET_01
#_08C3E1: BNE .not_ms_pull

#_08C3E3: LDA.w $0C54,X
#_08C3E6: CMP.b #$02
#_08C3E8: BEQ .not_ms_pull

#_08C3EA: LDA.w $0C68,X
#_08C3ED: BEQ .delay_a

#_08C3EF: CMP.b #$11
#_08C3F1: BNE .just_draw_b

#_08C3F3: REP #$20

#_08C3F5: LDA.w #$0DF3
#_08C3F8: STA.w $02CD

#_08C3FB: SEP #$20

#_08C3FD: LDA.b #!FOLLOWER_0E
#_08C3FF: STA.l $7EF3CC

.time_up_a
#_08C403: BRL .time_up_b

;---------------------------------------------------------------------------------------------------

.not_ms_pull
#_08C406: DEC.w $03B1,X
#_08C409: LDA.w $03B1,X
#_08C40C: BEQ .delay_a

#_08C40E: CMP.b #!ITEMGET_01
#_08C410: BNE .just_draw_b

#_08C412: LDA.w $0C5E,X
#_08C415: CMP.b #!ITEMGET_37
#_08C417: BEQ .is_pendant

#_08C419: CMP.b #!ITEMGET_38
#_08C41B: BEQ .is_pendant

#_08C41D: CMP.b #!ITEMGET_39
#_08C41F: BNE .wait_for_music

.is_pendant
#_08C421: LDA.w APUIO0
#_08C424: BEQ .wait_for_music

#_08C426: INC.w $03B1,X
#_08C429: BRA .just_draw_b

.wait_for_music
#_08C42B: BRL .time_up_a

;---------------------------------------------------------------------------------------------------

.just_draw_b
#_08C42E: BRL ItemGet_Animate

;---------------------------------------------------------------------------------------------------

.delay_a
#_08C431: LDA.w $0C5E,X
#_08C434: CMP.b #!ITEMGET_01
#_08C436: BNE .not_ms_from_text

#_08C438: LDA.w $0C54,X
#_08C43B: BNE .not_ms_from_text

#_08C43D: LDA.b #!SFX1_05
#_08C43F: STA.w $012D

#_08C442: LDA.b #!SONG_02
#_08C444: STA.w $012C

.not_ms_from_text
#_08C447: LDY.b #!LINKSTATE_00

#_08C449: LDA.w $0345
#_08C44C: BEQ .not_in_water

#_08C44E: LDY.b #!LINKSTATE_04

.not_in_water
#_08C450: STY.b $5D

#_08C452: STZ.w $02D8
#_08C455: STZ.w $02DA
#_08C458: STZ.w $037B

#_08C45B: JSL Ancilla_AddRupees

;---------------------------------------------------------------------------------------------------

.check_if_hp
#_08C45F: STZ.w $02E9

#_08C462: LDA.w $0C5E,X
#_08C465: CMP.b #!ITEMGET_17
#_08C467: BNE .not_heart_piece

#_08C469: LDA.l $7EF36B
#_08C46D: BNE .not_heart_piece

#_08C46F: PHX

#_08C470: LDY.b #!ITEMGET_26
#_08C472: JSL Link_ReceiveItem

#_08C476: PLX

#_08C477: STZ.w $0C4A,X

#_08C47A: STZ.w $0FC1

#_08C47D: RTS

.not_heart_piece
#_08C47E: CMP.b #!ITEMGET_26
#_08C480: BEQ .refill_hp

#_08C482: CMP.b #!ITEMGET_3F
#_08C484: BEQ .refill_hp

#_08C486: CMP.b #!ITEMGET_3E
#_08C488: BNE .not_heart

#_08C48A: STZ.w $02E4

#_08C48D: LDA.l $7EF36C
#_08C491: CMP.b #$A0
#_08C493: BEQ .not_heart

#_08C495: CLC
#_08C496: ADC.b #$08
#_08C498: STA.l $7EF36C

#_08C49C: LDA.l $7EF372
#_08C4A0: CLC
#_08C4A1: ADC.b #$08
#_08C4A3: STA.l $7EF372

#_08C4A7: BRA .continue_a

;---------------------------------------------------------------------------------------------------

.refill_hp
#_08C4A9: LDA.l $7EF36D
#_08C4AD: STA.b $00

#_08C4AF: LDA.l $7EF36C
#_08C4B3: CMP.b #$A0
#_08C4B5: BEQ .not_heart

#_08C4B7: CLC
#_08C4B8: ADC.b #$08
#_08C4BA: STA.l $7EF36C

#_08C4BE: SEC
#_08C4BF: SBC.b $00
#_08C4C1: STA.b $00

#_08C4C3: LDA.l $7EF372
#_08C4C7: CLC
#_08C4C8: ADC.b $00
#_08C4CA: STA.l $7EF372

.continue_a
#_08C4CE: LDA.b #!SFX3_0D
#_08C4D0: JSR Ancilla_SFX3_Near

#_08C4D3: BRA .continue_b

;---------------------------------------------------------------------------------------------------

.not_heart
#_08C4D5: CMP.b #!ITEMGET_42
#_08C4D7: BNE .not_single_heart

#_08C4D9: LDA.l $7EF372
#_08C4DD: CLC
#_08C4DE: ADC.b #$08
#_08C4E0: STA.l $7EF372

#_08C4E4: BRA .continue_b

;---------------------------------------------------------------------------------------------------

.not_single_heart
#_08C4E6: CMP.b #!ITEMGET_45
#_08C4E8: BNE .not_small_magic

#_08C4EA: LDA.l $7EF373
#_08C4EE: CLC
#_08C4EF: ADC.b #$10
#_08C4F1: STA.l $7EF373

#_08C4F5: BRA .continue_b

;---------------------------------------------------------------------------------------------------

.not_small_magic
#_08C4F7: CMP.b #!ITEMGET_22
#_08C4F9: BEQ .blue_mail

; Red mail?
#_08C4FB: CMP.b #!ITEMGET_23
#_08C4FD: BNE .continue_b

.blue_mail
#_08C4FF: PHX

#_08C500: JSL Palettes_Load_LinkArmorAndGloves

#_08C504: PLX

;---------------------------------------------------------------------------------------------------

.continue_b
#_08C505: STZ.w $0C4A,X

#_08C508: STZ.w $0FC1

#_08C50B: LDA.w $0C54,X
#_08C50E: CMP.b #$03
#_08C510: BNE .no_victory_sequence

#_08C512: LDY.w $0C5E,X

#_08C515: CPY.w MilestoneItemGetIDs_ether
#_08C518: BEQ .no_victory_sequence

#_08C51A: CPY.w MilestoneItemGetIDs_bombos
#_08C51D: BEQ .no_victory_sequence

#_08C51F: CPY.w MilestoneItemGetIDs_heart_container
#_08C522: BEQ .no_victory_sequence

#_08C524: CPY.w MilestoneItemGetIDs_crystal
#_08C527: BEQ .no_victory_sequence

#_08C529: PHA
#_08C52A: PHX

#_08C52B: JSL PrepareDungeonExitFromBossFight

#_08C52F: PLX
#_08C530: PLA

.no_victory_sequence
#_08C531: CMP.b #!ITEMGET_02
#_08C533: BEQ .exit

#_08C535: STZ.w $02E4

.exit
#_08C538: RTS

;---------------------------------------------------------------------------------------------------

.from_chest_or_sprite
#_08C539: DEC.w $03B1,X

#_08C53C: LDA.w $03B1,X
#_08C53F: BPL .delay_b

#_08C541: BRL .check_if_hp

.delay_b
#_08C544: CMP.b #$00
#_08C546: BEQ .time_up_b

#_08C548: CMP.b #$28
#_08C54A: BNE .dont_give

#_08C54C: LDA.w $0C54,X
#_08C54F: CMP.b #$02
#_08C551: BEQ .dont_give

#_08C553: JSL Ancilla_AddRupees
#_08C557: BCS .play_rupee_sfx

#_08C559: LDA.w $0C5E,X
#_08C55C: CMP.b #$17
#_08C55E: BNE .play_rupee_sfx

.dont_give
#_08C560: BRL .skip_messaging

.play_rupee_sfx
#_08C563: LDA.b #!SFX3_0F
#_08C565: JSR Ancilla_SFX3_Near

#_08C568: BRA .dont_give

;---------------------------------------------------------------------------------------------------

.time_up_b
#_08C56A: LDA.b $1B
#_08C56C: BEQ .not_a_shop

#_08C56E: REP #$20

#_08C570: LDA.b $A0
#_08C572: CMP.w #$00FF
#_08C575: BEQ .is_a_shop

#_08C577: CMP.w #$010F
#_08C57A: BEQ .is_a_shop

#_08C57C: CMP.w #$0110
#_08C57F: BEQ .is_a_shop

#_08C581: CMP.w #$0112
#_08C584: BEQ .is_a_shop

#_08C586: CMP.w #$011F
#_08C589: BNE .not_a_shop

.is_a_shop
#_08C58B: SEP #$20

#_08C58D: BRA .skip_messaging

;---------------------------------------------------------------------------------------------------

.not_a_shop
#_08C58F: SEP #$20

#_08C591: LDA.w $0C5E,X
#_08C594: CMP.b #!ITEMGET_38
#_08C596: BEQ .use_pendant_message

#_08C598: CMP.b #!ITEMGET_39
#_08C59A: BNE .not_possibly_a_pendant

.use_pendant_message
#_08C59C: TAY

#_08C59D: LDA.l $7EF374
#_08C5A1: AND.b #$07
#_08C5A3: CMP.b #$07
#_08C5A5: BNE .fetch_message_id

#_08C5A7: TYA
#_08C5A8: SEC
#_08C5A9: SBC.b #$38
#_08C5AB: ASL A
#_08C5AC: TAY

#_08C5AD: REP #$20

#_08C5AF: LDA.w .pendant_message,Y
#_08C5B2: STA.w $1CF0

#_08C5B5: SEP #$20

#_08C5B7: BRA .trigger_message

;---------------------------------------------------------------------------------------------------

.not_possibly_a_pendant
#_08C5B9: LDA.w $0C54,X
#_08C5BC: CMP.b #$02
#_08C5BE: BEQ ItemGet_Animate

#_08C5C0: LDA.w $0C5E,X
#_08C5C3: CMP.b #!ITEMGET_17
#_08C5C5: BNE .fetch_message_id

#_08C5C7: LDA.l $7EF36B
#_08C5CB: ASL A
#_08C5CC: TAY

#_08C5CD: REP #$20

#_08C5CF: LDA.w .heart_piece_message,Y
#_08C5D2: CMP.w #$FFFF
#_08C5D5: BEQ ItemGet_Animate

#_08C5D7: STA.w $1CF0

#_08C5DA: SEP #$20

#_08C5DC: BRA .trigger_message

;---------------------------------------------------------------------------------------------------

.fetch_message_id
#_08C5DE: LDA.w $0C5E,X
#_08C5E1: ASL A
#_08C5E2: TAY

#_08C5E3: REP #$20

#_08C5E5: LDA.w .message,Y
#_08C5E8: CMP.w #$FFFF
#_08C5EB: BEQ ItemGet_Animate

#_08C5ED: STA.w $1CF0

; Message 006E
#_08C5F0: CMP.w #$006E
#_08C5F3: BNE .no_sfx_just_text

#_08C5F5: SEP #$20

#_08C5F7: LDA.b #!SFX1_09
#_08C5F9: STA.w $012D

.no_sfx_just_text
#_08C5FC: SEP #$20

;---------------------------------------------------------------------------------------------------

.trigger_message
#_08C5FE: JSL Interface_PrepAndDisplayMessage
#_08C602: BRA ItemGet_Animate

.skip_messaging
#_08C604: LDA.w $03B1,X
#_08C607: CMP.b #$18
#_08C609: BCC ItemGet_Animate

#_08C60B: LDA.w $0C22,X
#_08C60E: CLC
#_08C60F: ADC.b #$FF
#_08C611: CMP.b #$F8
#_08C613: BCC .halt_acceleration

#_08C615: STA.w $0C22,X

.halt_acceleration
#_08C618: JSR Ancilla_Move_Y

;===================================================================================================

ItemGet_Animate:
#_08C61B: SEP #$20

#_08C61D: LDA.w $0C5E,X
#_08C620: CMP.b #$20
#_08C622: BNE .continue

#_08C624: STZ.w $029E,X

#_08C627: JSR AncillaAdd_OccasionalSparkle

#_08C62A: LDA.w APUIO0
#_08C62D: BNE .continue

#_08C62F: LDA.b #!SONG_1A
#_08C631: STA.w $012C

#_08C634: BRL ItemGet_TransmuteToRisingCrystal

;---------------------------------------------------------------------------------------------------

.continue
#_08C637: SEP #$20

#_08C639: LDA.w $0C5E,X
#_08C63C: CMP.b #!ITEMGET_01
#_08C63E: BNE .not_a_flashy_sword

#_08C640: LDA.w ItemGet_default_oam_props
#_08C643: STA.w $0BF0,X

#_08C646: LDA.w $0C54,X
#_08C649: CMP.b #$02
#_08C64B: BEQ .not_a_flashy_sword

#_08C64D: LDA.w $0C68,X
#_08C650: CMP.b #$10
#_08C652: BCC .wait_for_flashy_sword

#_08C654: DEC.w $039F,X
#_08C657: BPL .not_a_flashy_sword

#_08C659: LDA.b #$02
#_08C65B: STA.w $039F,X

#_08C65E: LDA.w $03A4,X
#_08C661: INC A
#_08C662: CMP.b #$03
#_08C664: BNE .no_wrap_flashy_sword

.wait_for_flashy_sword
#_08C666: LDA.b #$00

;---------------------------------------------------------------------------------------------------

.no_wrap_flashy_sword
#_08C668: STA.w $03A4,X

#_08C66B: TAY

#_08C66C: LDA.w ItemGet_default_oam_props,Y
#_08C66F: STA.w $0BF0,X

.not_a_flashy_sword
#_08C672: LDA.w $0C5E,X
#_08C675: CMP.b #!ITEMGET_34
#_08C677: BEQ .animated_rupee

#_08C679: CMP.b #!ITEMGET_35
#_08C67B: BEQ .animated_rupee

#_08C67D: CMP.b #!ITEMGET_36
#_08C67F: BNE .not_animating_rupee

.animated_rupee
#_08C681: DEC.w $039F,X
#_08C684: BPL .not_animating_rupee

#_08C686: INC.w $03A4,X

#_08C689: LDA.w $03A4,X
#_08C68C: CMP.b #$03
#_08C68E: BNE .no_wrap_rupee

#_08C690: LDA.b #$00
#_08C692: STA.w $03A4,X

; no wrapee
.no_wrap_rupee
#_08C695: TAY

#_08C696: LDA.w ItemGet_animated_rupee_timers,Y
#_08C699: STA.w $039F,X

#_08C69C: PHX

#_08C69D: LDA.w ItemGet_animated_rupee_tiles,Y
#_08C6A0: JSL WriteTo4BPPBuffer_at_7F4000

#_08C6A4: PLX

;---------------------------------------------------------------------------------------------------

.not_animating_rupee
#_08C6A5: JSR Ancilla_PrepOAMCoord_adjusted

#_08C6A8: REP #$20

#_08C6AA: LDA.b $00
#_08C6AC: CLC
#_08C6AD: ADC.w #$0008
#_08C6B0: STA.b $08

#_08C6B2: SEP #$20

;---------------------------------------------------------------------------------------------------

AncillaDraw_ItemGet:
#_08C6B4: PHX

#_08C6B5: LDA.w $0BF0,X
#_08C6B8: STA.b $74

#_08C6BA: LDA.w $0C5E,X
#_08C6BD: TAX

#_08C6BE: LDY.b #$00
#_08C6C0: JSR Ancilla_SetOAM_XY

#_08C6C3: LDA.b #$24
#_08C6C5: STA.b ($90),Y

#_08C6C7: INY

#_08C6C8: LDA.l AncillaAdd_ItemReceipt_prop,X
#_08C6CC: BPL .keep_prop_a

#_08C6CE: LDA.b $74

;---------------------------------------------------------------------------------------------------

.keep_prop_a
#_08C6D0: ASL A
#_08C6D1: ORA.b #$30
#_08C6D3: STA.b ($90),Y

#_08C6D5: INY
#_08C6D6: PHY

#_08C6D7: TYA
#_08C6D8: SEC
#_08C6D9: SBC.b #$04
#_08C6DB: LSR A
#_08C6DC: LSR A
#_08C6DD: TAY

#_08C6DE: LDA.l AncillaAdd_ItemReceipt_width,X
#_08C6E2: STA.b ($92),Y

#_08C6E4: PLY

#_08C6E5: CMP.b #$02
#_08C6E7: BEQ .big_sprite

;---------------------------------------------------------------------------------------------------

#_08C6E9: REP #$20

#_08C6EB: LDA.b $08
#_08C6ED: STA.b $00

#_08C6EF: SEP #$20

#_08C6F1: JSR Ancilla_SetOAM_XY

#_08C6F4: LDA.b #$34
#_08C6F6: STA.b ($90),Y

#_08C6F8: INY

#_08C6F9: LDA.l AncillaAdd_ItemReceipt_prop,X
#_08C6FD: BPL .keep_prop_b

#_08C6FF: LDA.b $74

;---------------------------------------------------------------------------------------------------

.keep_prop_b
#_08C701: ASL A
#_08C702: ORA.b #$30
#_08C704: STA.b ($90),Y

#_08C706: INY
#_08C707: PHY

#_08C708: TYA
#_08C709: SEC
#_08C70A: SBC.b #$04
#_08C70C: LSR A
#_08C70D: LSR A
#_08C70E: TAY

#_08C70F: LDA.b #$00
#_08C711: STA.b ($92),Y

#_08C713: PLY

;---------------------------------------------------------------------------------------------------

.big_sprite
#_08C714: PLX

#_08C715: RTS

;===================================================================================================

Ancilla28_WishPondItem:
#_08C716: LDA.b #$10
#_08C718: JSR Ancilla_AllocateOAMFromRegion_A_or_D_or_F

#_08C71B: LDA.b $11
#_08C71D: BEQ .continue

#_08C71F: BRL AncillaDraw_WishPondItem

;---------------------------------------------------------------------------------------------------

.continue
#_08C722: LDA.w $0C68,X
#_08C725: BNE AncillaDraw_WishPondItem

#_08C727: LDA.b #$02
#_08C729: STA.w $0309
#_08C72C: STZ.w $0308

#_08C72F: LDA.w $0294,X
#_08C732: SEC
#_08C733: SBC.b #$02
#_08C735: STA.w $0294,X

#_08C738: JSR Ancilla_Move_Z
#_08C73B: JSR Ancilla_Move_Y
#_08C73E: JSR Ancilla_Move_X

#_08C741: LDA.w $029E,X
#_08C744: BPL AncillaDraw_WishPondItem

#_08C746: CMP.b #$E4
#_08C748: BCS AncillaDraw_WishPondItem

#_08C74A: LDA.b #$E4
#_08C74C: STA.w $029E,X

#_08C74F: LDY.w $0C5E,X

#_08C752: LDA.w $0BFA,X
#_08C755: CLC
#_08C756: ADC.b #$12
#_08C758: STA.w $0BFA,X

#_08C75B: LDA.w $0C0E,X
#_08C75E: ADC.b #$00
#_08C760: STA.w $0C0E,X

#_08C763: LDA.b #$08
#_08C765: STA.b $00

; !BUG ?
; I don't even know...
; This isn't some weird offset.
; It's indexing by your receipt ID, so it reads garbage.
#_08C767: LDA.w $08844A,Y ; Verified nonsense
#_08C76A: BNE .absolute_nonsense

#_08C76C: LDA.b #$04
#_08C76E: STA.b $00

.absolute_nonsense
#_08C770: LDA.w $0C04,X
#_08C773: CLC
#_08C774: ADC.b $00
#_08C776: STA.w $0C04,X

#_08C779: LDA.w $0C18,X
#_08C77C: ADC.b #$00
#_08C77E: STA.w $0C18,X

#_08C781: BRL Ancilla_TransmuteToSplash

;---------------------------------------------------------------------------------------------------

AncillaDraw_WishPondItem:
#_08C784: JSR Ancilla_PrepOAMCoord_adjusted

#_08C787: LDA.w $0C5E,X
#_08C78A: CMP.b #!ITEMGET_01
#_08C78C: BNE .not_master_sword

#_08C78E: LDA.w ItemGet_default_oam_props
#_08C791: STA.w $0BF0,X

.not_master_sword
#_08C794: REP #$20

#_08C796: LDA.w $029E,X
#_08C799: AND.w #$00FF
#_08C79C: CMP.w #$0080
#_08C79F: BCC .positive

#_08C7A1: ORA.w #$FF00

.positive
#_08C7A4: STA.b $04

#_08C7A6: EOR.w #$FFFF
#_08C7A9: INC A

#_08C7AA: CLC
#_08C7AB: ADC.b $00
#_08C7AD: STA.b $00
#_08C7AF: STA.b $06

#_08C7B1: CLC
#_08C7B2: ADC.w #$0008
#_08C7B5: STA.b $08

;---------------------------------------------------------------------------------------------------

#_08C7B7: SEP #$20

#_08C7B9: JSR AncillaDraw_ItemGet

#_08C7BC: LDA.w $0309
#_08C7BF: CMP.b #$02
#_08C7C1: BNE .exit

;---------------------------------------------------------------------------------------------------

#_08C7C3: LDA.w $0294,X
#_08C7C6: BMI .draw_shadow

#_08C7C8: CMP.b #$02
#_08C7CA: BCS .exit

.draw_shadow
#_08C7CC: PHX

#_08C7CD: LDA.w $0C5E,X
#_08C7D0: TAX

#_08C7D1: LDA.w $08844A,X  ; Verified nonsense
#_08C7D4: TAX

#_08C7D5: REP #$20

#_08C7D7: LDA.b $06
#_08C7D9: CLC
#_08C7DA: ADC.b $04

#_08C7DC: CLC
#_08C7DD: ADC.w #$0028
#_08C7E0: STA.b $00

;---------------------------------------------------------------------------------------------------

#_08C7E2: CPX.b #$02
#_08C7E4: BEQ .wide

#_08C7E6: LDA.b $02
#_08C7E8: CLC
#_08C7E9: ADC.w #$FFFC
#_08C7EC: STA.b $02

.wide
#_08C7EE: SEP #$20

#_08C7F0: LDA.b #$01

#_08C7F2: CPX.b #$02
#_08C7F4: BEQ .wide_shadow

#_08C7F6: LDA.b #$02

.wide_shadow
#_08C7F8: TAX

#_08C7F9: LDA.b $65
#_08C7FB: STA.b $04

#_08C7FD: JSR AncillaDraw_Shadow

#_08C800: PLX

;---------------------------------------------------------------------------------------------------

.exit
#_08C801: RTS

;===================================================================================================

Ancilla42_HappinessPondRupees:
#_08C802: LDA.b #$02
#_08C804: STA.w $0309
#_08C807: STZ.w $0308

#_08C80A: LDX.b #$09

.next
#_08C80C: LDA.l $7F586C,X
#_08C810: BEQ .skip

#_08C812: PHX
#_08C813: JSR HapinessPondRupees_ExecuteRupee
#_08C816: PLX

#_08C817: LDA.l $7F58AA,X
#_08C81B: CMP.b #$02
#_08C81D: BNE .skip

#_08C81F: LDA.b #$00
#_08C821: STA.l $7F586C,X

.skip
#_08C825: DEX

#_08C826: BPL .next

;---------------------------------------------------------------------------------------------------

#_08C828: LDX.b #$09

.next_check
#_08C82A: LDA.l $7F586C,X
#_08C82E: BNE .found_one

#_08C830: DEX
#_08C831: BPL .next_check

#_08C833: LDX.w $0FA0

#_08C836: STZ.w $0C4A,X

#_08C839: RTS

.found_one
#_08C83A: BRL Ancilla_RestoreIndex

;===================================================================================================

HapinessPondRupees_ExecuteRupee:
#_08C83D: LDA.b #$10

#_08C83F: JSR Ancilla_AllocateOAMFromRegion_A_or_D_or_F
#_08C842: PHX

#_08C843: LDY.w $0FA0

#_08C846: JSR HapinessPondRupees_GetState
#_08C849: TYX

#_08C84A: LDA.w $0C54,X
#_08C84D: BEQ .not_splashing

#_08C84F: LDA.b $11
#_08C851: BNE .only_splash

#_08C853: LDA.w $0C68,X
#_08C856: BNE .only_splash

#_08C858: LDA.b #$06
#_08C85A: STA.w $0C68,X

#_08C85D: INC.w $0C5E,X

#_08C860: LDA.w $0C5E,X
#_08C863: CMP.b #$05
#_08C865: BNE .only_splash

#_08C867: INC.w $0C54,X
#_08C86A: BRL .finish_up

;---------------------------------------------------------------------------------------------------

.only_splash
#_08C86D: JSR AncillaDraw_ObjectSplash

#_08C870: BRA .finish_up

;---------------------------------------------------------------------------------------------------

.not_splashing
#_08C872: LDA.b $11
#_08C874: BNE .just_draw

#_08C876: LDA.w $0C68,X
#_08C879: BNE .just_draw

#_08C87B: LDA.w $0294,X
#_08C87E: SEC
#_08C87F: SBC.b #$02
#_08C881: STA.w $0294,X

#_08C884: JSR Ancilla_Move_Y
#_08C887: JSR Ancilla_Move_X
#_08C88A: JSR Ancilla_Move_Z

#_08C88D: LDA.w $029E,X
#_08C890: BPL .just_draw

#_08C892: CMP.b #$E4
#_08C894: BCS .just_draw

;---------------------------------------------------------------------------------------------------

#_08C896: LDA.b #$E4
#_08C898: STA.w $029E,X

#_08C89B: LDA.w $0BFA,X
#_08C89E: CLC
#_08C89F: ADC.b #$1E
#_08C8A1: STA.w $0BFA,X

#_08C8A4: LDA.w $0C0E,X
#_08C8A7: ADC.b #$00
#_08C8A9: STA.w $0C0E,X

#_08C8AC: LDA.w $0C04,X
#_08C8AF: CLC
#_08C8B0: ADC.b #$FC
#_08C8B2: STA.w $0C04,X

#_08C8B5: LDA.w $0C18,X
#_08C8B8: ADC.b #$FF
#_08C8BA: STA.w $0C18,X

#_08C8BD: STZ.w $0C5E,X

#_08C8C0: LDA.b #$06
#_08C8C2: STA.w $0C68,X

#_08C8C5: LDA.b #!SFX2_28
#_08C8C7: JSR Ancilla_SFX2_Pan

#_08C8CA: INC.w $0C54,X

#_08C8CD: BRA .only_splash

;---------------------------------------------------------------------------------------------------

.just_draw
#_08C8CF: LDA.b #$02
#_08C8D1: STA.w $0BF0,X

#_08C8D4: LDA.b #$00
#_08C8D6: STA.w $0C7C,X

#_08C8D9: JSR AncillaDraw_WishPondItem

;---------------------------------------------------------------------------------------------------

.finish_up
#_08C8DC: TXY

#_08C8DD: PLX

#_08C8DE: JSR HapinessPondRupees_SaveState

#_08C8E1: RTS

;===================================================================================================

HapinessPondRupees_GetState:
#_08C8E2: LDA.l $7F5824,X
#_08C8E6: STA.w $0BFA,Y

#_08C8E9: LDA.l $7F5830,X
#_08C8ED: STA.w $0C0E,Y

#_08C8F0: LDA.l $7F583C,X
#_08C8F4: STA.w $0C04,Y

#_08C8F7: LDA.l $7F5848,X
#_08C8FB: STA.w $0C18,Y

#_08C8FE: LDA.l $7F5854,X
#_08C902: STA.w $029E,Y

#_08C905: LDA.l $7F5800,X
#_08C909: STA.w $0C22,Y

#_08C90C: LDA.l $7F580C,X
#_08C910: STA.w $0C2C,Y

#_08C913: LDA.l $7F5818,X
#_08C917: STA.w $0294,Y

#_08C91A: LDA.l $7F5886,X
#_08C91E: STA.w $0C36,Y

#_08C921: LDA.l $7F5892,X
#_08C925: STA.w $0C40,Y

#_08C928: LDA.l $7F589E,X
#_08C92C: STA.w $02A8,Y

#_08C92F: LDA.l $7F587A,X
#_08C933: STA.w $0C5E,Y

#_08C936: LDA.l $7F58AA,X
#_08C93A: STA.w $0C54,Y

#_08C93D: LDA.l $7F5860,X
#_08C941: BEQ .dont_dec

#_08C943: DEC A

.dont_dec
#_08C944: STA.w $0C68,Y

#_08C947: RTS

;===================================================================================================

HapinessPondRupees_SaveState:
#_08C948: LDA.w $0BFA,Y
#_08C94B: STA.l $7F5824,X

#_08C94F: LDA.w $0C0E,Y
#_08C952: STA.l $7F5830,X

#_08C956: LDA.w $0C04,Y
#_08C959: STA.l $7F583C,X

#_08C95D: LDA.w $0C18,Y
#_08C960: STA.l $7F5848,X

#_08C964: LDA.w $029E,Y
#_08C967: STA.l $7F5854,X

#_08C96B: LDA.w $0C22,Y
#_08C96E: STA.l $7F5800,X

#_08C972: LDA.w $0C2C,Y
#_08C975: STA.l $7F580C,X

#_08C979: LDA.w $0294,Y
#_08C97C: STA.l $7F5818,X

#_08C980: LDA.w $0C36,Y
#_08C983: STA.l $7F5886,X

#_08C987: LDA.w $0C40,Y
#_08C98A: STA.l $7F5892,X

#_08C98E: LDA.w $02A8,Y
#_08C991: STA.l $7F589E,X

#_08C995: LDA.w $0C5E,Y
#_08C998: STA.l $7F587A,X

#_08C99C: LDA.w $0C68,Y
#_08C99F: STA.l $7F5860,X

#_08C9A3: LDA.w $0C54,Y
#_08C9A6: STA.l $7F58AA,X

#_08C9AA: RTS

;===================================================================================================

pool AncillaDraw_ObjectSplash

.char
#_08C9AB: db $C0, $FF
#_08C9AD: db $E7, $FF
#_08C9AF: db $AF, $BF
#_08C9B1: db $80, $80
#_08C9B3: db $83, $83

.prop
#_08C9B5: db $00, $FF
#_08C9B7: db $00, $FF
#_08C9B9: db $40, $00
#_08C9BB: db $40, $00
#_08C9BD: db $C0, $80

.offset_x
#_08C9BF: dw   0,   0
#_08C9C3: dw  -6,   0
#_08C9C7: dw -13,  -8
#_08C9CB: dw -17,  -4
#_08C9CF: dw -17,  -4

.offset_y
#_08C9D3: dw   0,   0
#_08C9D7: dw   0,   0
#_08C9DB: dw  11,  -3
#_08C9DF: dw  15,  -7
#_08C9E3: dw  15,  -7

.size
#_08C9E7: db $02, $FF
#_08C9E9: db $02, $FF
#_08C9EB: db $00, $00
#_08C9ED: db $00, $00
#_08C9EF: db $00, $00

pool off

;===================================================================================================

Ancilla_TransmuteToSplash:
#_08C9F1: LDA.b #!ANCILLA_3D
#_08C9F3: STA.w $0C4A,X

#_08C9F6: STZ.w $0C5E,X

#_08C9F9: LDA.b #$06
#_08C9FB: STA.w $0C68,X

#_08C9FE: LDA.w $0BFA,X
#_08CA01: CLC
#_08CA02: ADC.b #$0C
#_08CA04: STA.w $0BFA,X

#_08CA07: LDA.w $0C0E,X
#_08CA0A: ADC.b #$00
#_08CA0C: STA.w $0C0E,X

#_08CA0F: LDA.w $0C04,X
#_08CA12: CLC
#_08CA13: ADC.b #$F8
#_08CA15: STA.w $0C04,X

#_08CA18: LDA.w $0C18,X
#_08CA1B: ADC.b #$FF
#_08CA1D: STA.w $0C18,X

#_08CA20: LDA.b #!SFX2_28
#_08CA22: JSR Ancilla_SFX2_Pan

;===================================================================================================

Ancilla3D_ItemSplash:
#_08CA25: LDA.b #$08
#_08CA27: JSR Ancilla_AllocateOAMFromRegion_A_or_D_or_F

#_08CA2A: LDA.b $11
#_08CA2C: BNE AncillaDraw_ObjectSplash

#_08CA2E: LDA.w $0C68,X
#_08CA31: BNE AncillaDraw_ObjectSplash

#_08CA33: LDA.b #$06
#_08CA35: STA.w $0C68,X

#_08CA38: INC.w $0C5E,X

#_08CA3B: LDA.w $0C5E,X
#_08CA3E: CMP.b #$05
#_08CA40: BNE AncillaDraw_ObjectSplash

#_08CA42: STZ.w $0C4A,X

#_08CA45: RTS

;===================================================================================================

AncillaDraw_ObjectSplash:
#_08CA46: JSR Ancilla_PrepOAMCoord

#_08CA49: REP #$20

#_08CA4B: LDA.b $00
#_08CA4D: STA.b $04

#_08CA4F: LDA.b $02
#_08CA51: STA.b $06

#_08CA53: SEP #$20

#_08CA55: PHX

#_08CA56: LDY.b #$00

#_08CA58: STZ.b $0C

#_08CA5A: LDA.w $0C5E,X
#_08CA5D: ASL A
#_08CA5E: TAX

;---------------------------------------------------------------------------------------------------

.next
#_08CA5F: LDA.w .char,X
#_08CA62: CMP.b #$FF
#_08CA64: BEQ .skip

#_08CA66: PHX

#_08CA67: TXA
#_08CA68: ASL A
#_08CA69: TAX

#_08CA6A: REP #$20

#_08CA6C: LDA.w .offset_x,X
#_08CA6F: CLC
#_08CA70: ADC.b $04
#_08CA72: STA.b $00

#_08CA74: LDA.w .offset_y,X
#_08CA77: CLC
#_08CA78: ADC.b $06
#_08CA7A: STA.b $02

#_08CA7C: SEP #$20

#_08CA7E: PLX

#_08CA7F: JSR Ancilla_SetOAM_XY

#_08CA82: LDA.w .char,X
#_08CA85: STA.b ($90),Y

#_08CA87: INY

#_08CA88: LDA.w .prop,X
#_08CA8B: ORA.b #$24
#_08CA8D: STA.b ($90),Y

#_08CA8F: INY
#_08CA90: PHY

#_08CA91: TYA
#_08CA92: SEC
#_08CA93: SBC.b #$04
#_08CA95: LSR A
#_08CA96: LSR A
#_08CA97: TAY

#_08CA98: LDA.w .size,X
#_08CA9B: STA.b ($92),Y

#_08CA9D: PLY

;---------------------------------------------------------------------------------------------------

.skip
#_08CA9E: INX

#_08CA9F: INC.b $0C

#_08CAA1: LDA.b $0C
#_08CAA3: CMP.b #$02
#_08CAA5: BNE .next

#_08CAA7: PLX

#_08CAA8: RTS

;===================================================================================================

MilestoneItemGetIDs:
.ether
#_08CAA9: db !ITEMGET_10

.pendants
.green_pendant
#_08CAAA: db !ITEMGET_37

.blue_pendant
#_08CAAB: db !ITEMGET_39

.red_pendant
#_08CAAC: db !ITEMGET_38

.heart_container
#_08CAAD: db !ITEMGET_26

.bombos
#_08CAAE: db !ITEMGET_0F

.crystal
#_08CAAF: db !ITEMGET_20

;---------------------------------------------------------------------------------------------------

Ancilla29_MilestoneItemGet:
#_08CAB0: LDA.w $0C5E,X
#_08CAB3: CMP.w MilestoneItemGetIDs_ether
#_08CAB6: BEQ .medallion

#_08CAB8: CMP.w MilestoneItemGetIDs_bombos
#_08CABB: BEQ .medallion

#_08CABD: LDA.w $0403
#_08CAC0: AND.b #$40
#_08CAC2: BNE .terminate

#_08CAC4: LDA.w $0403
#_08CAC7: AND.b #$80
#_08CAC9: BEQ .exit

#_08CACB: LDA.w $04C2
#_08CACE: BEQ .time_up

#_08CAD0: CMP.b #$01
#_08CAD2: BNE .tick_timer

#_08CAD4: LDY.b #$23

#_08CAD6: LDA.w $0C5E,X
#_08CAD9: CMP.w MilestoneItemGetIDs_crystal
#_08CADC: BNE .not_crystal

#_08CADE: LDA.b #!SFX1_0F
#_08CAE0: STA.w $012D

#_08CAE3: LDY.b #$28

.not_crystal
#_08CAE5: TYA
#_08CAE6: STA.b $72

#_08CAE8: PHX
#_08CAE9: JSL WriteTo4BPPBuffer_item_gfx
#_08CAED: PLX

.tick_timer
#_08CAEE: DEC.w $04C2

.exit
#_08CAF1: RTS

;---------------------------------------------------------------------------------------------------

.terminate
#_08CAF2: STZ.w $0C4A,X

#_08CAF5: RTS

.medallion
#_08CAF6: LDA.w $0394,X
#_08CAF9: BEQ .no_misc_palette

#_08CAFB: DEC.w $0394,X

#_08CAFE: RTS

;---------------------------------------------------------------------------------------------------

.time_up
#_08CAFF: LDA.w $039F,X
#_08CB02: BNE .no_misc_palette

#_08CB04: LDA.w $0C5E,X
#_08CB07: CMP.w MilestoneItemGetIDs_crystal
#_08CB0A: BNE .no_misc_palette

#_08CB0C: LDA.b #$01
#_08CB0E: STA.w $039F,X

#_08CB11: PHX

#_08CB12: LDA.b #$04
#_08CB14: STA.w $0AB1

#_08CB17: LDA.b #$02
#_08CB19: STA.w $0AA9

#_08CB1C: JSL Palettes_Load_SpriteMiscSP6

#_08CB20: INC.b $15

#_08CB22: PLX

;---------------------------------------------------------------------------------------------------

.no_misc_palette
#_08CB23: LDA.w $0C5E,X
#_08CB26: CMP.w MilestoneItemGetIDs_crystal
#_08CB29: BNE .no_sparkle

#_08CB2B: JSR AncillaAdd_OccasionalSparkle

.no_sparkle
#_08CB2E: LDA.b $11
#_08CB30: BNE .just_draw

#_08CB32: LDA.w $029E,X
#_08CB35: CMP.b #$18
#_08CB37: BCS .no_collision

#_08CB39: LDY.b #$02
#_08CB3B: JSR Ancilla_CheckLinkCollision
#_08CB3E: BCC .no_collision

#_08CB40: LDA.w $037E
#_08CB43: BNE .no_collision

#_08CB45: LDA.b $4D
#_08CB47: BNE .no_collision

#_08CB49: STZ.w $0C4A,X

#_08CB4C: LDA.b $5D
#_08CB4E: CMP.b #!LINKSTATE_19
#_08CB50: BEQ .using_medallion

#_08CB52: CMP.b #!LINKSTATE_1A
#_08CB54: BNE .not_medallion

.using_medallion
#_08CB56: STZ.w $0112
#_08CB59: STZ.w $03EF

#_08CB5C: LDA.b #!LINKSTATE_00
#_08CB5E: STA.b $5D

;---------------------------------------------------------------------------------------------------

.not_medallion
#_08CB60: LDA.b #$03
#_08CB62: STA.w $02E9

#_08CB65: PHX

#_08CB66: LDA.w $0C5E,X
#_08CB69: TAY

#_08CB6A: JSL Link_ReceiveItem

#_08CB6E: PLX

#_08CB6F: RTS

;---------------------------------------------------------------------------------------------------

.no_collision
#_08CB70: LDA.w $0C54,X
#_08CB73: BEQ .not_grounded

#_08CB75: CMP.b #$02
#_08CB77: BEQ .just_draw

#_08CB79: LDA.w $0294,X
#_08CB7C: SEC
#_08CB7D: SBC.b #$01
#_08CB7F: STA.w $0294,X

.not_grounded
#_08CB82: JSR Ancilla_Move_Z

#_08CB85: LDA.w $029E,X
#_08CB88: CMP.b #$F8
#_08CB8A: BCC .just_draw

#_08CB8C: INC.w $0C54,X

#_08CB8F: LDA.b #$18
#_08CB91: STA.w $0294,X

#_08CB94: STZ.w $029E,X

;---------------------------------------------------------------------------------------------------

.just_draw
#_08CB97: JSR Ancilla_PrepOAMCoord_adjusted

#_08CB9A: REP #$20

#_08CB9C: LDA.w $029E,X
#_08CB9F: AND.w #$00FF
#_08CBA2: STA.b $72

#_08CBA4: LDA.b $00
#_08CBA6: STA.b $06

#_08CBA8: SEC
#_08CBA9: SBC.b $72
#_08CBAB: STA.b $00

#_08CBAD: SEP #$20

#_08CBAF: JSR AncillaDraw_ItemGet

#_08CBB2: PHX

#_08CBB3: DEC.w $03B1,X
#_08CBB6: BPL .delay_ripple

#_08CBB8: LDA.b #$09
#_08CBBA: STA.w $03B1,X

#_08CBBD: INC.w $0385,X

#_08CBC0: LDA.w $0385,X
#_08CBC3: CMP.b #$03
#_08CBC5: BNE .delay_ripple

#_08CBC7: STZ.w $0385,X

;---------------------------------------------------------------------------------------------------

.delay_ripple
#_08CBCA: LDA.w $0385,X
#_08CBCD: STA.b $72

#_08CBCF: LDA.w $029E,X
#_08CBD2: CMP.b #$00
#_08CBD4: BNE .airborne

#_08CBD6: LDX.b #$00

#_08CBD8: LDA.b $A0
#_08CBDA: CMP.b #$06
#_08CBDC: BNE .no_water_draw

#_08CBDE: LDA.b $A1
#_08CBE0: CMP.b #$00
#_08CBE2: BNE .no_water_draw

#_08CBE4: LDA.b $72
#_08CBE6: CLC
#_08CBE7: ADC.b #$04
#_08CBE9: TAX

#_08CBEA: BRA .no_water_draw

.airborne
#_08CBEC: LDX.b #$01

#_08CBEE: CMP.b #$20
#_08CBF0: BCC .no_water_draw

#_08CBF2: INX

;---------------------------------------------------------------------------------------------------

.no_water_draw
#_08CBF3: REP #$20

#_08CBF5: LDA.b $06
#_08CBF7: CLC
#_08CBF8: ADC.w #$000C
#_08CBFB: STA.b $00

#_08CBFD: SEP #$20

#_08CBFF: LDA.b #$20
#_08CC01: STA.b $04

#_08CC03: JSR AncillaDraw_Shadow

#_08CC06: PLX

#_08CC07: RTS

;===================================================================================================

ItemGet_TransmuteToRisingCrystal:
#_08CC08: LDA.b #!ANCILLA_3E
#_08CC0A: STA.w $0C4A,X

#_08CC0D: STZ.w $0C22,X
#_08CC10: STZ.w $0C2C,X
#_08CC13: STZ.w $0C36,X

;===================================================================================================

Ancilla3E_RisingCrystal:
#_08CC16: STZ.w $029E,X

#_08CC19: JSR AncillaAdd_OccasionalSparkle

#_08CC1C: LDA.w $0C22,X
#_08CC1F: CLC
#_08CC20: ADC.b #$FF
#_08CC22: CMP.b #$F0
#_08CC24: BCS .positive

#_08CC26: LDA.b #$F0

.positive
#_08CC28: STA.w $0C22,X

#_08CC2B: JSR Ancilla_Move_Y

#_08CC2E: LDA.w $0BFA,X
#_08CC31: STA.b $00

#_08CC33: LDA.w $0C0E,X
#_08CC36: STA.b $01

#_08CC38: REP #$20

#_08CC3A: LDA.b $00
#_08CC3C: SEC
#_08CC3D: SBC.w $0122
#_08CC40: CMP.w #$0049
#_08CC43: BCS .not_in_position

#_08CC45: LDA.w #$0049
#_08CC48: CLC
#_08CC49: ADC.w $0122
#_08CC4C: STA.b $00

;---------------------------------------------------------------------------------------------------

#_08CC4E: SEP #$20

#_08CC50: LDA.b $00
#_08CC52: STA.w $0BFA,X

#_08CC55: LDA.b $01
#_08CC57: STA.w $0C0E,X

#_08CC5A: LDA.b $11
#_08CC5C: BNE .not_in_position

#_08CC5E: PHX

#_08CC5F: LDA.w $040C
#_08CC62: LSR A
#_08CC63: TAX

#_08CC64: LDA.l $7EF37A
#_08CC68: ORA.l RoomTagPrizeChecks,X
#_08CC6C: STA.l $7EF37A

#_08CC70: LDA.b #$18
#_08CC72: STA.b $11
#_08CC74: STZ.b $B0

;---------------------------------------------------------------------------------------------------

#_08CC76: REP #$20

#_08CC78: LDX.b #$00

#_08CC7A: LDA.w #$0000 ; RGB: #000000

.next_color
#_08CC7D: STA.l $7EC340,X
#_08CC81: STA.l $7EC360,X
#_08CC85: STA.l $7EC380,X
#_08CC89: STA.l $7EC3A0,X
#_08CC8D: STA.l $7EC3C0,X
#_08CC91: STA.l $7EC3E0,X

#_08CC95: INX
#_08CC96: INX
#_08CC97: CPX.b #$20
#_08CC99: BNE .next_color

#_08CC9B: STA.l $7EC007
#_08CC9F: STA.l $7EC009

;---------------------------------------------------------------------------------------------------

#_08CCA3: SEP #$20

#_08CCA5: PLX

.not_in_position
#_08CCA6: SEP #$20

#_08CCA8: JSR Ancilla_PrepOAMCoord_adjusted

#_08CCAB: REP #$20

#_08CCAD: LDA.b $00
#_08CCAF: STA.b $06

#_08CCB1: SEP #$20

#_08CCB3: JSR AncillaDraw_ItemGet

#_08CCB6: RTS

;===================================================================================================

AncillaAdd_OccasionalSparkle:
#_08CCB7: LDA.b $1A
#_08CCB9: AND.b #$07
#_08CCBB: BNE .exit

#_08CCBD: PHX

#_08CCBE: JSL AncillaAdd_SwordChargeSparkle

#_08CCC2: PLX

.exit
#_08CCC3: RTS

;===================================================================================================

Ancilla43_GanonsTowerCutscene:
#_08CCC4: LDA.w $0C54,X
#_08CCC7: BNE .not_first_state

#_08CCC9: LDA.w $0C22,X
#_08CCCC: CLC
#_08CCCD: ADC.b #$FF
#_08CCCF: CMP.b #$F0
#_08CCD1: BCS .not_max_crystal_speed

#_08CCD3: LDA.b #$F0

.not_max_crystal_speed
#_08CCD5: STA.w $0C22,X

#_08CCD8: JSR Ancilla_Move_Y

#_08CCDB: LDA.w $0BFA,X
#_08CCDE: STA.b $00

#_08CCE0: LDA.w $0C0E,X
#_08CCE3: STA.b $01

#_08CCE5: LDA.w $0C04,X
#_08CCE8: STA.b $02

#_08CCEA: LDA.w $0C18,X
#_08CCED: STA.b $03

;---------------------------------------------------------------------------------------------------

#_08CCEF: REP #$20

#_08CCF1: LDA.b $00
#_08CCF3: SEC
#_08CCF4: SBC.w $0122

#_08CCF7: CMP.w #$0038
#_08CCFA: BCS .crystals_not_together

#_08CCFC: LDA.w #$0038
#_08CCFF: CLC
#_08CD00: ADC.w $0122
#_08CD03: STA.b $00

#_08CD05: CLC
#_08CD06: ADC.w #$0008
#_08CD09: STA.l $7F5810

#_08CD0D: LDA.b $02
#_08CD0F: CLC
#_08CD10: ADC.w #$0008
#_08CD13: STA.l $7F580E

;---------------------------------------------------------------------------------------------------

#_08CD17: SEP #$20

#_08CD19: LDA.b $00
#_08CD1B: STA.w $0BFA,X

#_08CD1E: LDA.b $01
#_08CD20: STA.w $0C0E,X

#_08CD23: INC.w $0C54,X

#_08CD26: LDA.b #!SFX1_05
#_08CD28: STA.w $012D

#_08CD2B: LDA.b #!SONG_F1_FADE
#_08CD2D: STA.w $012C

#_08CD30: REP #$20

; Message 0139
#_08CD32: LDA.w #$0139
#_08CD35: STA.w $1CF0

#_08CD38: SEP #$20

#_08CD3A: JSL Interface_PrepAndDisplayMessage

#_08CD3E: BRA .draw_single_crystal_prep

;---------------------------------------------------------------------------------------------------

.crystals_not_together
#_08CD40: SEP #$20

.not_first_state
#_08CD42: LDA.w $0C54,X
#_08CD45: CMP.b #$01
#_08CD47: BNE .not_expansive

#_08CD49: LDA.b $11
#_08CD4B: BNE .not_expansive

#_08CD4D: LDA.b #$10
#_08CD4F: STA.w $0C2C,X

#_08CD52: LDA.w $0C04,X
#_08CD55: STA.b $72

#_08CD57: LDA.w $0C18,X
#_08CD5A: STA.b $73

#_08CD5C: LDA.l $7F5808
#_08CD60: STA.w $0C04,X

#_08CD63: STZ.w $0C18,X

#_08CD66: JSR Ancilla_Move_X

#_08CD69: LDA.w $0C04,X
#_08CD6C: STA.l $7F5808

#_08CD70: LDA.b $72
#_08CD72: STA.w $0C04,X

#_08CD75: LDA.b $73
#_08CD77: STA.w $0C18,X

#_08CD7A: LDA.l $7F5808
#_08CD7E: CMP.b #$30
#_08CD80: BCC .not_expansive

#_08CD82: LDA.b #$30
#_08CD84: STA.l $7F5808

#_08CD88: INC.w $0C54,X

;---------------------------------------------------------------------------------------------------

.not_expansive
#_08CD8B: LDA.b $11
#_08CD8D: BNE GTCutscene_AnimateCrystals

#_08CD8F: LDA.w $0C54,X
#_08CD92: BNE .draw_multiple

;---------------------------------------------------------------------------------------------------

.draw_single_crystal_prep
#_08CD94: LDY.b #$00

#_08CD96: BRL GTCutscene_DrawSingleCrystal

;---------------------------------------------------------------------------------------------------

.draw_multiple
#_08CD99: CMP.b #$01
#_08CD9B: BEQ GTCutscene_AnimateCrystals

#_08CD9D: CMP.b #$03
#_08CD9F: BEQ .final_rotation

;---------------------------------------------------------------------------------------------------

#_08CDA1: LDA.l $7F5812
#_08CDA5: DEC A
#_08CDA6: STA.l $7F5812

#_08CDAA: BNE GTCutscene_AnimateCrystals

#_08CDAC: LDA.b #$05
#_08CDAE: STA.w $04C6

#_08CDB1: STZ.b $B0
#_08CDB3: STZ.b $C8

#_08CDB5: INC.w $0C54,X

#_08CDB8: BRA GTCutscene_AnimateCrystals

;---------------------------------------------------------------------------------------------------

.final_rotation
#_08CDBA: LDA.b #$30
#_08CDBC: STA.w $0C2C,X

#_08CDBF: LDA.w $0C04,X
#_08CDC2: STA.b $72

#_08CDC4: LDA.w $0C18,X
#_08CDC7: STA.b $73

#_08CDC9: LDA.l $7F5808
#_08CDCD: STA.w $0C04,X

#_08CDD0: STZ.w $0C18,X

#_08CDD3: JSR Ancilla_Move_X

#_08CDD6: LDA.w $0C04,X
#_08CDD9: STA.l $7F5808

#_08CDDD: LDA.b $72
#_08CDDF: STA.w $0C04,X

#_08CDE2: LDA.b $73
#_08CDE4: STA.w $0C18,X

#_08CDE7: LDA.l $7F5808
#_08CDEB: CMP.b #$F0
#_08CDED: BCC GTCutscene_AnimateCrystals

;---------------------------------------------------------------------------------------------------

#_08CDEF: PHX

#_08CDF0: LDA.b #$00
#_08CDF2: STA.w $0AB1

#_08CDF5: LDA.b #$02
#_08CDF7: STA.w $0AA9

#_08CDFA: JSL Palettes_Load_SpriteMiscSP6

#_08CDFE: INC.b $15

#_08CE00: PLX

#_08CE01: STZ.w $0C4A,X

#_08CE04: RTS

;===================================================================================================

GTCutscene_AnimateCrystals:
#_08CE05: LDY.b #$00

#_08CE07: LDA.w $0C54,X
#_08CE0A: STA.b $72

#_08CE0C: BEQ .sparkle_a_not

#_08CE0E: JSR GTCutscene_SparkleALot

.sparkle_a_not
#_08CE11: LDX.b #$06

.next_crystal
#_08CE13: LDA.b $11
#_08CE15: BNE .no_rotate

#_08CE17: LDA.b $72
#_08CE19: CMP.b #$01
#_08CE1B: BEQ .no_rotate

#_08CE1D: LDA.b $1A
#_08CE1F: AND.b #$01
#_08CE21: BNE .no_rotate

#_08CE23: LDA.l $7F5800,X
#_08CE27: INC A
#_08CE28: AND.b #$3F
#_08CE2A: STA.l $7F5800,X

.no_rotate
#_08CE2E: LDA.l $7F5808
#_08CE32: STA.b $08

#_08CE34: LDA.l $7F5800,X

#_08CE38: JSR Ancilla_GetRadialProjection

#_08CE3B: REP #$20

#_08CE3D: PHY

#_08CE3E: LDA.b $00
#_08CE40: LDY.b $02
#_08CE42: BEQ .positive_y

#_08CE44: EOR.w #$FFFF
#_08CE47: INC A

.positive_y
#_08CE48: CLC
#_08CE49: ADC.l $7F5810

#_08CE4D: CLC
#_08CE4E: ADC.w #$FFF8

#_08CE51: SEC
#_08CE52: SBC.w $0122
#_08CE55: STA.b $00

#_08CE57: LDA.b $04

#_08CE59: LDY.b $06
#_08CE5B: BEQ .positive_x

#_08CE5D: EOR.w #$FFFF
#_08CE60: INC A

.positive_x
#_08CE61: CLC
#_08CE62: ADC.l $7F580E

#_08CE66: CLC
#_08CE67: ADC.w #$FFF8

#_08CE6A: SEC
#_08CE6B: SBC.w $011E
#_08CE6E: STA.b $02

#_08CE70: PLY

#_08CE71: SEP #$20

#_08CE73: LDA.b $00
#_08CE75: STA.l $7F5817,X

#_08CE79: LDA.b $01
#_08CE7B: STA.l $7F581F,X

#_08CE7F: LDA.b $02
#_08CE81: STA.l $7F5827,X

#_08CE85: LDA.b $03
#_08CE87: STA.l $7F582F,X

#_08CE8B: PHX

#_08CE8C: JSR AncillaDraw_GTCutsceneCrystal

#_08CE8F: PLX
#_08CE90: DEX

#_08CE91: BPL .next_crystal

;===================================================================================================

GTCutscene_DrawSingleCrystal:
#_08CE93: LDX.w $0FA0

#_08CE96: PHY
#_08CE97: JSR Ancilla_PrepOAMCoord_adjusted
#_08CE9A: PLY

#_08CE9B: LDA.b $00
#_08CE9D: STA.l $7F581E

#_08CEA1: LDA.b $01
#_08CEA3: STA.l $7F5826

#_08CEA7: LDA.b $02
#_08CEA9: STA.l $7F582E

#_08CEAD: LDA.b $03
#_08CEAF: STA.l $7F5836

#_08CEB3: JSR AncillaDraw_GTCutsceneCrystal

;---------------------------------------------------------------------------------------------------

#_08CEB6: LDX.w $0FA0

#_08CEB9: LDA.w $0C54,X
#_08CEBC: BNE .skip_sparkle

#_08CEBE: JSR AncillaAdd_OccasionalSparkle

#_08CEC1: BRA .exit

.skip_sparkle
#_08CEC3: LDA.b $11
#_08CEC5: BNE .exit

#_08CEC7: JSR GTCutscene_ActivateSparkle

#_08CECA: LDX.w $0FA0

.exit
#_08CECD: RTS

;===================================================================================================

AncillaDraw_GTCutsceneCrystal:
#_08CECE: JSR Ancilla_SetOAM_XY_safe

#_08CED1: LDA.b #$24
#_08CED3: STA.b ($90),Y

#_08CED5: INY

#_08CED6: LDA.b #$3C
#_08CED8: STA.b ($90),Y

#_08CEDA: INY
#_08CEDB: PHY

#_08CEDC: TYA
#_08CEDD: SEC
#_08CEDE: SBC.b #$04
#_08CEE0: LSR A
#_08CEE1: LSR A
#_08CEE2: TAY

#_08CEE3: LDA.b #$02
#_08CEE5: ORA.b $75
#_08CEE7: STA.b ($92),Y

#_08CEE9: PLY

#_08CEEA: RTS

;===================================================================================================

GTCutscene_ActivateSparkle:
#_08CEEB: LDX.b #$17

.next_check
#_08CEED: LDA.l $7F5837,X
#_08CEF1: CMP.b #$FF
#_08CEF3: BEQ .activate_it

#_08CEF5: DEX
#_08CEF6: BPL .next_check

#_08CEF8: BRA .exit

;---------------------------------------------------------------------------------------------------

.activate_it
#_08CEFA: PHX

#_08CEFB: LDA.b #$00
#_08CEFD: STA.l $7F5837,X

#_08CF01: LDA.b #$04
#_08CF03: STA.l $7F58AF,X

#_08CF07: JSL GetRandomNumber
#_08CF0B: STA.b $08

#_08CF0D: LSR A
#_08CF0E: LSR A
#_08CF0F: LSR A
#_08CF10: LSR A
#_08CF11: STA.b $09

#_08CF13: LDA.b $08
#_08CF15: AND.b #$0F
#_08CF17: STA.b $08

#_08CF19: TXA
#_08CF1A: AND.b #$07
#_08CF1C: TAX

#_08CF1D: LDA.l $7F5817,X
#_08CF21: CLC
#_08CF22: ADC.b $08
#_08CF24: STA.b $00

#_08CF26: LDA.l $7F581F,X
#_08CF2A: ADC.b #$00
#_08CF2C: STA.b $01

#_08CF2E: LDA.l $7F5827,X
#_08CF32: CLC
#_08CF33: ADC.b $09
#_08CF35: STA.b $02

#_08CF37: LDA.l $7F582F,X
#_08CF3B: ADC.b #$00
#_08CF3D: STA.b $03

#_08CF3F: PLX

#_08CF40: LDA.b $00
#_08CF42: STA.l $7F584F,X

#_08CF46: LDA.b $01
#_08CF48: STA.l $7F5867,X

#_08CF4C: LDA.b $02
#_08CF4E: STA.l $7F587F,X

#_08CF52: LDA.b $03
#_08CF54: STA.l $7F5897,X

.exit
#_08CF58: RTS

;===================================================================================================

GTCutscene_SparkleALot:
#_08CF59: LDX.b #$17

.next
#_08CF5B: LDA.l $7F5837,X
#_08CF5F: CMP.b #$FF
#_08CF61: BEQ .skip

#_08CF63: LDA.l $7F58AF,X
#_08CF67: DEC A
#_08CF68: STA.l $7F58AF,X
#_08CF6C: BPL .active

#_08CF6E: LDA.b #$04
#_08CF70: STA.l $7F58AF,X

#_08CF74: LDA.l $7F5837,X
#_08CF78: INC A
#_08CF79: STA.l $7F5837,X

#_08CF7D: CMP.b #$03
#_08CF7F: BNE .active

#_08CF81: LDA.b #$FF
#_08CF83: STA.l $7F5837,X
#_08CF87: BRA .skip

;---------------------------------------------------------------------------------------------------

.active
#_08CF89: PHX

#_08CF8A: LDA.l $7F584F,X
#_08CF8E: STA.b $00

#_08CF90: LDA.l $7F5867,X
#_08CF94: STA.b $01

#_08CF96: LDA.l $7F587F,X
#_08CF9A: STA.b $02

#_08CF9C: LDA.l $7F5897,X
#_08CFA0: STA.b $03

#_08CFA2: LDA.l $7F5837,X
#_08CFA6: TAX

#_08CFA7: JSR Ancilla_SetOAM_XY

#_08CFAA: LDA.w Ancilla3C_SpinAttackChargeSparkle_char,X
#_08CFAD: STA.b ($90),Y

#_08CFAF: INY

#_08CFB0: LDA.w Ancilla3C_SpinAttackChargeSparkle_prop,X
#_08CFB3: ORA.b #$30
#_08CFB5: STA.b ($90),Y

#_08CFB7: INY
#_08CFB8: PHY

#_08CFB9: TYA
#_08CFBA: SEC
#_08CFBB: SBC.b #$04
#_08CFBD: LSR A
#_08CFBE: LSR A
#_08CFBF: TAY

#_08CFC0: LDA.b #$00
#_08CFC2: STA.b ($92),Y

#_08CFC4: PLY
#_08CFC5: PLX

.skip
#_08CFC6: DEX
#_08CFC7: BPL .next

;---------------------------------------------------------------------------------------------------

#_08CFC9: RTS

;===================================================================================================

FluteBounce:
#_08CFCA: db  24
#_08CFCB: db  16
#_08CFCC: db  10
#_08CFCD: db   0

;===================================================================================================

Ancilla36_Flute:
#_08CFCE: LDA.b $11
#_08CFD0: BNE .no_collision_check

#_08CFD2: LDA.w $0C54,X
#_08CFD5: CMP.b #$03
#_08CFD7: BEQ .check_collision

#_08CFD9: LDA.w $0294,X
#_08CFDC: SEC
#_08CFDD: SBC.b #$02
#_08CFDF: STA.w $0294,X

#_08CFE2: JSR Ancilla_Move_X
#_08CFE5: JSR Ancilla_Move_Z

;---------------------------------------------------------------------------------------------------

#_08CFE8: LDA.w $029E,X
#_08CFEB: BPL .no_collision_check

#_08CFED: CMP.b #$F0
#_08CFEF: BCC .no_collision_check

#_08CFF1: INC.w $0C54,X

#_08CFF4: LDY.w $0C54,X

#_08CFF7: LDA.w FluteBounce,Y
#_08CFFA: STA.w $0294,X

#_08CFFD: STZ.w $029E,X

.no_collision_check
#_08D000: BRA AncillaDraw_Flute

;---------------------------------------------------------------------------------------------------

.check_collision
#_08D002: LDY.b #$02
#_08D004: JSR Ancilla_CheckLinkCollision
#_08D007: BCC AncillaDraw_Flute

#_08D009: LDA.w $037E
#_08D00C: BNE AncillaDraw_Flute

#_08D00E: LDA.b $4D
#_08D010: BNE AncillaDraw_Flute

#_08D012: PHX

#_08D013: STZ.w $0C4A,X

#_08D016: STZ.w $02E9

#_08D019: LDY.b #!ITEMGET_14
#_08D01B: JSL Link_ReceiveItem

#_08D01F: PLX

#_08D020: RTS

;===================================================================================================

AncillaDraw_Flute:
#_08D021: JSR Ancilla_PrepOAMCoord_adjusted

#_08D024: REP #$20

#_08D026: LDA.w $029E,X
#_08D029: AND.w #$00FF
#_08D02C: CMP.w #$0080
#_08D02F: BCC .positive_z

#_08D031: ORA.w #$FF00

.positive_z
#_08D034: EOR.w #$FFFF
#_08D037: INC A

#_08D038: CLC
#_08D039: ADC.b $00
#_08D03B: STA.b $00

;---------------------------------------------------------------------------------------------------

#_08D03D: SEP #$20

#_08D03F: PHX

#_08D040: LDY.b #$00
#_08D042: JSR Ancilla_SetOAM_XY

#_08D045: LDA.b #$24
#_08D047: STA.b ($90),Y

#_08D049: INY

#_08D04A: LDA.b #$04
#_08D04C: ORA.b $65
#_08D04E: STA.b ($90),Y

#_08D050: LDA.b #$02
#_08D052: STA.b ($92)

#_08D054: PLX

#_08D055: LDY.b #$01

#_08D057: LDA.b ($90),Y
#_08D059: CMP.b #$F0
#_08D05B: BNE EXIT_08D060

#_08D05D: STZ.w $0C4A,X

;---------------------------------------------------------------------------------------------------

#EXIT_08D060:
#_08D060: RTS

;===================================================================================================

Ancilla37_WeathervaneExplosion:
#_08D061: REP #$20

#_08D063: LDA.l $7F58B6
#_08D067: DEC A
#_08D068: STA.l $7F58B6

#_08D06C: BNE .proceed_to_exit

#_08D06E: SEP #$20

#_08D070: INC A
#_08D071: STA.l $7F58B6

#_08D075: LDA.l $7F58B8
#_08D079: BNE .continue

#_08D07B: INC A
#_08D07C: STA.l $7F58B8

#_08D080: LDA.b #!SONG_F3_MAXVOL
#_08D082: STA.w $012C

#_08D085: BRA .continue

.proceed_to_exit
#_08D087: SEP #$20

#_08D089: BRA EXIT_08D060

;---------------------------------------------------------------------------------------------------

.continue
#_08D08B: DEC.w $0394,X

#_08D08E: LDA.w $0394,X
#_08D091: BNE .proceed_to_exit

#_08D093: INC A
#_08D094: STA.w $0394,X

#_08D097: LDA.w $039F,X
#_08D09A: BNE .already_BOOMed

#_08D09C: INC A
#_08D09D: STA.w $039F,X

#_08D0A0: LDA.b #!SFX2_0C
#_08D0A2: JSR Ancilla_SFX2_Near

;---------------------------------------------------------------------------------------------------

.already_BOOMed
#_08D0A5: LDA.w $0C54,X
#_08D0A8: BNE .not_first_step

#_08D0AA: DEC.w $03B1,X
#_08D0AD: BPL .not_first_step

#_08D0AF: LDA.b #$01
#_08D0B1: STA.w $0C54,X

#_08D0B4: PHX

#_08D0B5: JSL Overworld_AlterWeathervane

#_08D0B9: LDY.b #$00
#_08D0BB: LDA.b #!ANCILLA_38
#_08D0BD: JSL AncillaAdd_CutsceneDuck

#_08D0C1: PLX

.not_first_step
#_08D0C2: TXA
#_08D0C3: STA.l $7F5878

#_08D0C7: LDA.b #$00
#_08D0C9: STA.l $7F5879

;---------------------------------------------------------------------------------------------------

#_08D0CD: LDX.b #$0B

.next
#_08D0CF: LDA.l $7F586C,X
#_08D0D3: CMP.b #$FF
#_08D0D5: BNE .dont_skip

#_08D0D7: BRL .skip

.dont_skip
#_08D0DA: LDA.l $7F5860,X
#_08D0DE: DEC A
#_08D0DF: STA.l $7F5860,X

#_08D0E3: BPL .delay_char_toggle

#_08D0E5: LDA.b #$01
#_08D0E7: STA.l $7F5860,X

#_08D0EB: LDA.l $7F586C,X
#_08D0EF: EOR.b #$01
#_08D0F1: STA.l $7F586C,X

;---------------------------------------------------------------------------------------------------

.delay_char_toggle
#_08D0F5: PHX

#_08D0F6: LDA.l $7F5878
#_08D0FA: TAY

#_08D0FB: LDA.l $7F586C,X
#_08D0FF: STA.w $0C5E,Y

#_08D102: LDA.l $7F5824,X
#_08D106: STA.w $0BFA,Y

#_08D109: LDA.l $7F5830,X
#_08D10D: STA.w $0C0E,Y

#_08D110: LDA.l $7F583C,X
#_08D114: STA.w $0C04,Y

#_08D117: LDA.l $7F5848,X
#_08D11B: STA.w $0C18,Y

#_08D11E: LDA.l $7F5854,X
#_08D122: STA.w $029E,Y

#_08D125: LDA.l $7F5800,X
#_08D129: STA.w $0C22,Y

#_08D12C: LDA.l $7F580C,X
#_08D130: STA.w $0C2C,Y

#_08D133: LDA.l $7F5818,X
#_08D137: SEC
#_08D138: SBC.b #$01
#_08D13A: STA.l $7F5818,X
#_08D13E: STA.w $0294,Y

;---------------------------------------------------------------------------------------------------

#_08D141: TYX

#_08D142: JSR Ancilla_Move_Y
#_08D145: JSR Ancilla_Move_X
#_08D148: JSR Ancilla_Move_Z

#_08D14B: STZ.b $74

#_08D14D: LDA.w $029E,X
#_08D150: CMP.b #$F0
#_08D152: BCC .not_buried

#_08D154: LDA.b #$FF
#_08D156: STA.b $74

.not_buried
#_08D158: JSR AncillaDraw_WeathervaneExplosionWoodDebris
#_08D15B: PLX

#_08D15C: LDA.b $74
#_08D15E: BPL .dont_deactivate

#_08D160: STA.l $7F586C,X

.dont_deactivate
#_08D164: LDA.l $7F5878
#_08D168: TAY

#_08D169: LDA.w $0BFA,Y
#_08D16C: STA.l $7F5824,X

#_08D170: LDA.w $0C0E,Y
#_08D173: STA.l $7F5830,X

#_08D177: LDA.w $0C04,Y
#_08D17A: STA.l $7F583C,X

#_08D17E: LDA.w $0C18,Y
#_08D181: STA.l $7F5848,X

#_08D185: LDA.w $029E,Y
#_08D188: STA.l $7F5854,X

;---------------------------------------------------------------------------------------------------

.skip
#_08D18C: DEX
#_08D18D: BMI .done_loop

#_08D18F: BRL .next

;---------------------------------------------------------------------------------------------------

.done_loop
#_08D192: LDA.l $7F5878
#_08D196: TAY

#_08D197: LDX.b #$0B

.next_active_check
#_08D199: LDA.l $7F586C,X
#_08D19D: CMP.b #$FF
#_08D19F: BNE .exit

#_08D1A1: DEX
#_08D1A2: BPL .next_active_check

#_08D1A4: TYX
#_08D1A5: STZ.w $0C4A,X

.exit
#_08D1A8: TYX

#_08D1A9: RTS

;===================================================================================================

pool AncillaDraw_WeathervaneExplosionWoodDebris

.char
#_08D1AA: db $4E, $4F

pool off

;---------------------------------------------------------------------------------------------------

AncillaDraw_WeathervaneExplosionWoodDebris:
#_08D1AC: JSR Ancilla_PrepOAMCoord

#_08D1AF: REP #$20

#_08D1B1: LDA.w $029E,X
#_08D1B4: AND.w #$00FF
#_08D1B7: CMP.w #$0080
#_08D1BA: BCC .positive_z

#_08D1BC: ORA.w #$FF00

.positive_z
#_08D1BF: EOR.w #$FFFF
#_08D1C2: INC A

#_08D1C3: CLC
#_08D1C4: ADC.b $00
#_08D1C6: STA.b $00

#_08D1C8: SEP #$20

#_08D1CA: LDA.w $0C5E,X
#_08D1CD: STA.b $72

#_08D1CF: BMI .exit

;---------------------------------------------------------------------------------------------------

#_08D1D1: PHX

#_08D1D2: LDA.l $7F5879
#_08D1D6: TAY

#_08D1D7: JSR Ancilla_SetOAM_XY

#_08D1DA: LDX.b $72

#_08D1DC: LDA.w .char,X
#_08D1DF: STA.b ($90),Y

#_08D1E1: INY

#_08D1E2: LDA.b #$3C
#_08D1E4: STA.b ($90),Y

#_08D1E6: INY
#_08D1E7: TYA
#_08D1E8: STA.l $7F5879

#_08D1EC: SEC
#_08D1ED: SBC.b #$04

#_08D1EF: LSR A
#_08D1F0: LSR A
#_08D1F1: TAY

#_08D1F2: LDA.b #$00
#_08D1F4: STA.b ($92),Y

#_08D1F6: PLX

;---------------------------------------------------------------------------------------------------

.exit
#_08D1F7: RTS

;===================================================================================================

pool Ancilla38_CutsceneDuck CutsceneDuck_Draw

.hflip
#_08D1F8: db $40, $00

.swirl
#_08D1FA: db $1C, $3C

pool off

;---------------------------------------------------------------------------------------------------

Ancilla38_CutsceneDuck:
#_08D1FC: LDA.b $1A
#_08D1FE: AND.b #$1F
#_08D200: BNE .skip_sfx

#_08D202: LDA.b #!SFX3_1E
#_08D204: JSR Ancilla_SFX3_Pan

.skip_sfx
#_08D207: DEC.w $039F,X
#_08D20A: BPL .delay

#_08D20C: LDA.b #$03
#_08D20E: STA.w $039F,X

#_08D211: LDA.w $0380,X
#_08D214: EOR.b #$01
#_08D216: STA.w $0380,X

.delay
#_08D219: DEC.w $03B1,X

#_08D21C: LDA.w $03B1,X
#_08D21F: BEQ .movement

#_08D221: BRL CutsceneDuck_Draw

;---------------------------------------------------------------------------------------------------

.movement
#_08D224: LDA.b #$01
#_08D226: STA.w $03B1,X

#_08D229: LDA.w $0385,X
#_08D22C: BNE .swirl_around

#_08D22E: DEC.w $0C5E,X
#_08D231: BMI .init_swirling

#_08D233: LDY.b #$FF
#_08D235: LDA.w $0C54,X
#_08D238: BEQ .accelerate_descent

#_08D23A: LDY.b #$01

.accelerate_descent
#_08D23C: TYA
#_08D23D: CLC
#_08D23E: ADC.w $0294,X
#_08D241: STA.w $0294,X

#_08D244: BPL .positive_z

#_08D246: EOR.b #$FF
#_08D248: INC A

.positive_z
#_08D249: CMP.b #$0C
#_08D24B: BCC .dont_flip_swirl

#_08D24D: LDA.w $0C54,X
#_08D250: EOR.b #$01
#_08D252: STA.w $0C54,X

.dont_flip_swirl
#_08D255: BRL CutsceneDuck_Draw

;---------------------------------------------------------------------------------------------------

.init_swirling
#_08D258: STZ.w $0C5E,X
#_08D25B: STZ.w $0C54,X

#_08D25E: LDA.w .swirl
#_08D261: STA.w $0C2C,X

#_08D264: LDA.b #$F0
#_08D266: STA.w $0294,X

#_08D269: INC.w $0385,X

#_08D26C: LDA.b #$03
#_08D26E: STA.w $0C54,X

.swirl_around
#_08D271: LDY.b #$FF

#_08D273: LDA.w $0C54,X
#_08D276: AND.b #$01
#_08D278: BNE .accelerate_left

#_08D27A: LDY.b #$01

.accelerate_left
#_08D27C: TYA
#_08D27D: CLC
#_08D27E: ADC.w $0C2C,X
#_08D281: STA.w $0C2C,X

#_08D284: BPL .positive_x_a

#_08D286: EOR.b #$FF
#_08D288: INC A

.positive_x_a
#_08D289: CMP.b #$00
#_08D28B: BNE .not_maxed_swirl

#_08D28D: INC.w $0385,X

#_08D290: LDY.w $0385,X
#_08D293: CPY.b #$07
#_08D295: BNE .not_maxed_swirl

#_08D297: PHA

#_08D298: LDA.b #$01
#_08D29A: STA.w $03A9,X

#_08D29D: PLA

;---------------------------------------------------------------------------------------------------

.not_maxed_swirl
#_08D29E: LDY.w $03A9,X
#_08D2A1: CMP.w .swirl,Y
#_08D2A4: BCC .not_max_x

#_08D2A6: LDA.w $0C54,X
#_08D2A9: AND.b #$03
#_08D2AB: EOR.b #$03
#_08D2AD: STA.b $00

#_08D2AF: LDA.w $0C54,X
#_08D2B2: AND.b #$FC
#_08D2B4: ORA.b $00
#_08D2B6: STA.w $0C54,X

;---------------------------------------------------------------------------------------------------

.not_max_x
#_08D2B9: LDY.b #$03
#_08D2BB: LDA.w $0C2C,X
#_08D2BE: BPL .positive_x_b

#_08D2C0: EOR.b #$FF
#_08D2C2: INC A

#_08D2C3: LDY.b #$02

.positive_x_b
#_08D2C5: STA.b $00

#_08D2C7: TYA
#_08D2C8: STA.w $0C72,X

#_08D2CB: LDY.w $03A9,X

#_08D2CE: LDA.w .swirl,Y
#_08D2D1: SEC
#_08D2D2: SBC.b $00
#_08D2D4: LSR A
#_08D2D5: STA.b $00

#_08D2D7: LDA.w $0C54,X
#_08D2DA: AND.b #$02
#_08D2DC: BEQ .descending

#_08D2DE: LDA.b $00
#_08D2E0: EOR.b #$FF
#_08D2E2: INC A
#_08D2E3: STA.b $00

.descending
#_08D2E5: LDA.b $00
#_08D2E7: STA.w $0294,X

;===================================================================================================

CutsceneDuck_Draw:
#_08D2EA: JSR Ancilla_Move_X
#_08D2ED: JSR Ancilla_Move_Z

#_08D2F0: LDY.w $0380,X

#_08D2F3: LDA.w .vram_offset+1,Y
#_08D2F6: STA.w $0AF4

#_08D2F9: JSR Ancilla_PrepOAMCoord

#_08D2FC: LDA.w $0C72,X
#_08D2FF: AND.b #$01
#_08D301: TAY

#_08D302: LDA.w .hflip,Y
#_08D305: STA.b $08

;===================================================================================================

#_08D307: REP #$20

#_08D309: LDA.w $029E,X
#_08D30C: AND.w #$00FF
#_08D30F: CMP.w #$0080
#_08D312: BCC .z_is_positive

#_08D314: ORA.w #$FF00

.z_is_positive
#_08D317: EOR.w #$FFFF
#_08D31A: INC A
#_08D31B: STA.b $04

#_08D31D: LDA.b $00
#_08D31F: STA.b $0A

#_08D321: SEC
#_08D322: SBC.b $04
#_08D324: STA.b $04

#_08D326: LDA.b $02
#_08D328: STA.b $06

;---------------------------------------------------------------------------------------------------

#_08D32A: SEP #$20

#_08D32C: PHX

#_08D32D: LDY.b #$00

#_08D32F: REP #$20

#_08D331: LDA.w .offset_y
#_08D334: AND.w #$00FF
#_08D337: CLC
#_08D338: ADC.b $04
#_08D33A: STA.b $00

#_08D33C: LDA.w .offset_x
#_08D33F: AND.w #$00FF
#_08D342: CLC
#_08D343: ADC.b $06
#_08D345: STA.b $02

;---------------------------------------------------------------------------------------------------

#_08D347: SEP #$20

#_08D349: JSR Ancilla_SetOAM_XY

#_08D34C: LDA.w .char
#_08D34F: STA.b ($90),Y

#_08D351: INY

#_08D352: LDA.w .prop
#_08D355: ORA.b #$30
#_08D357: ORA.b $08
#_08D359: STA.b ($90),Y

#_08D35B: INY
#_08D35C: PHY

#_08D35D: TYA
#_08D35E: SEC
#_08D35F: SBC.b #$04
#_08D361: LSR A
#_08D362: LSR A
#_08D363: TAY

#_08D364: LDA.b #$02
#_08D366: STA.b ($92),Y

#_08D368: PLY

#_08D369: REP #$20

#_08D36B: LDA.b $0A
#_08D36D: CLC
#_08D36E: ADC.w #$0030
#_08D371: STA.b $00

#_08D373: LDA.b $06
#_08D375: STA.b $02

;---------------------------------------------------------------------------------------------------

#_08D377: SEP #$20

#_08D379: LDA.b #$30
#_08D37B: STA.b $04

#_08D37D: LDX.b #$01
#_08D37F: JSR AncillaDraw_Shadow

#_08D382: PLX

#_08D383: REP #$20

#_08D385: LDA.b $06
#_08D387: BMI .exit

#_08D389: CMP.w #$00F8
#_08D38C: BCC .exit

;---------------------------------------------------------------------------------------------------

#_08D38E: SEP #$20

#_08D390: STZ.w $0C4A,X

#_08D393: STZ.b $11

#_08D395: LDA.b #$03
#_08D397: STA.l $7EF34C

;---------------------------------------------------------------------------------------------------

.exit
#_08D39B: SEP #$20

#_08D39D: RTS

;===================================================================================================

pool AncillaDraw_LinkPoof

.char
#_08D39E: db $86
#_08D39F: db $A9
#_08D3A0: db $9B

.size
#_08D3A1: db $02
#_08D3A2: db $00
#_08D3A3: db $00

.prop
#_08D3A4: db $00, $FF, $FF, $FF
#_08D3A8: db $40, $00, $C0, $80
#_08D3AC: db $00, $40, $80, $C0

.offset_y
#_08D3B0: dw   0,   0,   0,   0
#_08D3B8: dw   0,   0,   8,   8
#_08D3C0: dw  -4,  -4,  12,  12

.offset_x
#_08D3C8: dw   0,   0,   0,   0
#_08D3D0: dw   0,   8,   0,   8
#_08D3D8: dw  -4,  12,  -4,  12

pool off

;---------------------------------------------------------------------------------------------------

Ancilla23_LinkPoof:
#_08D3E0: DEC.w $03B1,X
#_08D3E3: BPL AncillaDraw_LinkPoof

#_08D3E5: LDA.b #$07
#_08D3E7: STA.w $03B1,X

#_08D3EA: LDA.w $0C5E,X
#_08D3ED: INC A
#_08D3EE: STA.w $0C5E,X

#_08D3F1: CMP.b #$03
#_08D3F3: BNE AncillaDraw_LinkPoof

#_08D3F5: STZ.w $0C4A,X

#_08D3F8: STZ.w $02E1
#_08D3FB: STZ.b $50

#_08D3FD: LDA.w $0C54,X
#_08D400: BNE .exit

#_08D402: STZ.b $2E
#_08D404: STZ.b $4B

;---------------------------------------------------------------------------------------------------

#_08D406: LDY.b #$00

#_08D408: LDA.b $8A
#_08D40A: AND.b #$40
#_08D40C: BEQ .light_world

#_08D40E: INY

.light_world
#_08D40F: STY.w $02E0
#_08D412: STY.b $56
#_08D414: BEQ .link_colors

.bunny_colors
#_08D416: JSL RefreshLinkEquipmentPalettes_bunny

#_08D41A: BRA .exit

.link_colors
#_08D41C: JSL RefreshLinkEquipmentPalettes_sword_and_mail

.exit
#_08D420: RTS

;===================================================================================================

AncillaDraw_LinkPoof:
#_08D421: LDA.w $0FB3
#_08D424: BEQ .use_default_oam_slots

#_08D426: LDA.w $0C7C,X
#_08D429: BEQ .use_default_oam_slots

#_08D42B: LDA.w $035F
#_08D42E: BEQ .use_hardcoded_oam_slots

#_08D430: LDA.b $1A
#_08D432: AND.b #$01
#_08D434: BNE .use_default_oam_slots

;---------------------------------------------------------------------------------------------------

.use_hardcoded_oam_slots
#_08D436: REP #$20

; !HARDCODED oam allocation
#_08D438: LDA.w #$00D0
#_08D43B: PHA

#_08D43C: CLC
#_08D43D: ADC.w #$0800
#_08D440: STA.b $90

#_08D442: PLA
#_08D443: LSR A
#_08D444: LSR A
#_08D445: CLC
#_08D446: ADC.w #$0A20
#_08D449: STA.b $92

#_08D44B: SEP #$20

;---------------------------------------------------------------------------------------------------

.use_default_oam_slots
#_08D44D: JSR Ancilla_PrepOAMCoord

#_08D450: REP #$20

#_08D452: LDA.b $00
#_08D454: STA.b $04

#_08D456: LDA.b $02
#_08D458: STA.b $06

#_08D45A: SEP #$20

#_08D45C: PHX

#_08D45D: LDY.w $0C5E,X

#_08D460: LDA.w .size,Y
#_08D463: STA.b $08

#_08D465: LDA.w .char,Y
#_08D468: STA.b $0C

#_08D46A: TYA
#_08D46B: ASL A
#_08D46C: ASL A
#_08D46D: STA.b $0E

;---------------------------------------------------------------------------------------------------

#_08D46F: LDY.b #$00
#_08D471: STY.b $0A

.next
#_08D473: LDA.b $0E
#_08D475: CLC
#_08D476: ADC.b $0A
#_08D478: ASL A
#_08D479: TAX

#_08D47A: REP #$20

#_08D47C: LDA.b $04
#_08D47E: CLC
#_08D47F: ADC.w .offset_y,X
#_08D482: STA.b $00

#_08D484: LDA.b $06
#_08D486: CLC
#_08D487: ADC.w .offset_x,X
#_08D48A: STA.b $02

;---------------------------------------------------------------------------------------------------

#_08D48C: SEP #$20

#_08D48E: JSR Ancilla_SetOAM_XY

#_08D491: LDA.b $0C
#_08D493: STA.b ($90),Y

#_08D495: INY

#_08D496: TXA
#_08D497: LSR A
#_08D498: TAX

#_08D499: LDA.w .prop,X
#_08D49C: ORA.b #$04
#_08D49E: ORA.b $65
#_08D4A0: STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

#_08D4A2: INY
#_08D4A3: PHY

#_08D4A4: TYA
#_08D4A5: SEC
#_08D4A6: SBC.b #$04
#_08D4A8: LSR A
#_08D4A9: LSR A
#_08D4AA: TAY

#_08D4AB: LDA.b $08
#_08D4AD: STA.b ($92),Y

#_08D4AF: PLY

;---------------------------------------------------------------------------------------------------

#_08D4B0: CMP.b #$02
#_08D4B2: BEQ .exit

#_08D4B4: INC.b $0A

#_08D4B6: LDA.b $0A
#_08D4B8: CMP.b #$04
#_08D4BA: BNE .next

.exit
#_08D4BC: PLX

#_08D4BD: RTS

;===================================================================================================

Ancilla40_DwarfPoof:
#_08D4BE: DEC.w $03B1,X
#_08D4C1: BPL .draw

#_08D4C3: LDA.b #$07
#_08D4C5: STA.w $03B1,X

#_08D4C8: LDA.w $0C5E,X
#_08D4CB: INC A
#_08D4CC: STA.w $0C5E,X

#_08D4CF: CMP.b #$03
#_08D4D1: BNE .draw

#_08D4D3: STZ.w $0C4A,X
#_08D4D6: STZ.w $02F9

#_08D4D9: RTS

.draw
#_08D4DA: BRL AncillaDraw_LinkPoof

;===================================================================================================

pool Ancilla3F_BushPoof

.char
#_08D4DD: db $86, $87, $96, $97
#_08D4E1: db $A9, $A9, $A9, $A9
#_08D4E5: db $8A, $8B, $9A, $9B
#_08D4E9: db $9B, $9B, $9B, $9B

.prop
#_08D4ED: db $00, $00, $00, $00
#_08D4F1: db $00, $40, $80, $C0
#_08D4F5: db $00, $00, $00, $00
#_08D4F9: db $C0, $80, $40, $00

.offset_y_low
#_08D4FD: db   0,   0,   8,   8
#_08D501: db   0,   0,   8,   8
#_08D505: db   0,   0,   8,   8
#_08D509: db  -2,  -2,  10,  10

.offset_y_high
#_08D50D: db   0,   0,   0,   0
#_08D511: db   0,   0,   0,   0
#_08D515: db   0,   0,   0,   0
#_08D519: db  -1,  -1,   0,   0

.offset_x_low
#_08D51D: db   0,   8,   0,   8
#_08D521: db   0,   8,   0,   8
#_08D525: db   0,   8,   0,   8
#_08D529: db  -2,  10,  -2,  10

.offset_x_high
#_08D52D: db   0,   0,   0,   0
#_08D531: db   0,   0,   0,   0
#_08D535: db   0,   0,   0,   0
#_08D539: db  -1,   0,  -1,   0

pool off

;---------------------------------------------------------------------------------------------------

Ancilla3F_BushPoof:
#_08D53D: LDA.w $0C68,X
#_08D540: BNE .draw

#_08D542: LDA.b #$07
#_08D544: STA.w $0C68,X

#_08D547: INC.w $0C5E,X

#_08D54A: LDA.w $0C5E,X
#_08D54D: CMP.b #$04
#_08D54F: BNE .draw

#_08D551: STZ.w $0C4A,X

#_08D554: RTS

;---------------------------------------------------------------------------------------------------

.draw
#_08D555: LDA.b #$10
#_08D557: JSL OAM_AllocateFromRegionC

#_08D55B: JSR Ancilla_PrepOAMCoord

#_08D55E: LDA.b $00
#_08D560: STA.b $06

#_08D562: LDA.b $01
#_08D564: STA.b $07
#_08D566: STZ.b $08

;---------------------------------------------------------------------------------------------------

#_08D568: LDY.b #$00

#_08D56A: LDA.w $0C5E,X
#_08D56D: ASL A
#_08D56E: ASL A
#_08D56F: TAX

.next
#_08D570: LDA.b $06
#_08D572: CLC
#_08D573: ADC.w .offset_y_low,X
#_08D576: STA.b $00

#_08D578: LDA.b $07
#_08D57A: ADC.w .offset_y_high,X
#_08D57D: STA.b $01

#_08D57F: LDA.b $04
#_08D581: CLC
#_08D582: ADC.w .offset_x_low,X
#_08D585: STA.b $02

#_08D587: LDA.b $05
#_08D589: ADC.w .offset_x_high,X
#_08D58C: STA.b $03

#_08D58E: JSR Ancilla_SetOAM_XY

#_08D591: LDA.w .char,X
#_08D594: STA.b ($90),Y

#_08D596: INY

#_08D597: LDA.w .prop,X
#_08D59A: ORA.b #$04
#_08D59C: ORA.b $65
#_08D59E: STA.b ($90),Y

#_08D5A0: INY
#_08D5A1: PHY

#_08D5A2: TYA
#_08D5A3: SEC
#_08D5A4: SBC.b #$04
#_08D5A6: LSR A
#_08D5A7: LSR A
#_08D5A8: TAY

#_08D5A9: LDA.b #$00
#_08D5AB: STA.b ($92),Y

#_08D5AD: PLY

#_08D5AE: INX

#_08D5AF: INC.b $08

#_08D5B1: LDA.b $08
#_08D5B3: CMP.b #$04
#_08D5B5: BNE .next

;---------------------------------------------------------------------------------------------------

#_08D5B7: BRL Ancilla_RestoreIndex

;===================================================================================================

pool Ancilla26_SwordSwingSparkle

.char
#_08D5BA: db $B7, $B7, $FF
#_08D5BD: db $80, $80, $B7
#_08D5C0: db $83, $83, $80
#_08D5C3: db $83, $FF, $FF

#_08D5C6: db $B7, $B7, $FF
#_08D5C9: db $80, $80, $B7
#_08D5CC: db $83, $83, $80
#_08D5CF: db $83, $FF, $FF

#_08D5D2: db $B7, $B7, $FF
#_08D5D5: db $80, $80, $B7
#_08D5D8: db $83, $83, $80
#_08D5DB: db $83, $FF, $FF

#_08D5DE: db $B7, $B7, $FF
#_08D5E1: db $80, $80, $B7
#_08D5E4: db $83, $83, $80
#_08D5E7: db $83, $FF, $FF

;---------------------------------------------------------------------------------------------------

.prop
#_08D5EA: db $00, $00, $FF
#_08D5ED: db $00, $00, $00
#_08D5F0: db $80, $80, $00
#_08D5F3: db $80, $FF, $FF

#_08D5F6: db $00, $00, $FF
#_08D5F9: db $00, $00, $00
#_08D5FC: db $80, $80, $00
#_08D5FF: db $80, $FF, $FF

#_08D602: db $00, $00, $FF
#_08D605: db $00, $00, $00
#_08D608: db $80, $80, $00
#_08D60B: db $80, $FF, $FF

#_08D60E: db $00, $00, $FF
#_08D611: db $00, $00, $00
#_08D614: db $80, $80, $00
#_08D617: db $80, $FF, $FF

;---------------------------------------------------------------------------------------------------

.offset_y
#_08D61A: db -22, -18,  -1
#_08D61D: db -22, -18, -17
#_08D620: db -22, -18, -17
#_08D623: db -17,  -1,  -1

#_08D626: db  35,  40,  -1
#_08D629: db  35,  40,  37
#_08D62C: db  35,  40,  37
#_08D62F: db  37,  -1,  -1

#_08D632: db   2,   7,  -1
#_08D635: db   2,   7,  19
#_08D638: db   2,   7,  19
#_08D63B: db  19,  -1,  -1

#_08D63E: db   2,   7,  -1
#_08D641: db   2,   7,  19
#_08D644: db   2,   7,  19
#_08D647: db  19,  -1,  -1

;---------------------------------------------------------------------------------------------------

.offset_x
#_08D64A: db   5,  10,  -1
#_08D64D: db   5,  10,  -4
#_08D650: db   5,  10,  -4
#_08D653: db  -4,  -1,  -1

#_08D656: db   0,   5,  -1
#_08D659: db   0,   5,  14
#_08D65C: db   0,   5,  14
#_08D65F: db  14,  -1,  -1

#_08D662: db -23, -27,  -1
#_08D665: db -23, -27, -22
#_08D668: db -23, -27, -22
#_08D66B: db -22,  -1,  -1

#_08D66E: db  32,  35,  -1
#_08D671: db  32,  35,  30
#_08D674: db  32,  35,  30
#_08D677: db  30,  -1,  -1

;---------------------------------------------------------------------------------------------------

.group_offset
#_08D67A: db $00
#_08D67B: db $0C
#_08D67C: db $18
#_08D67D: db $24

pool off

;---------------------------------------------------------------------------------------------------

Ancilla26_SwordSwingSparkle:
#_08D67E: DEC.w $03B1,X
#_08D681: BPL .draw

#_08D683: LDA.b #$00
#_08D685: STA.w $03B1,X

#_08D688: INC.w $0C5E,X

#_08D68B: LDA.w $0C5E,X

#_08D68E: CMP.b #$04
#_08D690: BNE .draw

#_08D692: STZ.w $0C4A,X

#_08D695: RTS

;---------------------------------------------------------------------------------------------------

.draw
#_08D696: PHX

#_08D697: LDA.b $20
#_08D699: STA.w $0BFA,X

#_08D69C: LDA.b $21
#_08D69E: STA.w $0C0E,X

#_08D6A1: LDA.b $22
#_08D6A3: STA.w $0C04,X

#_08D6A6: LDA.b $23
#_08D6A8: STA.w $0C18,X

#_08D6AB: JSR Ancilla_PrepOAMCoord

;---------------------------------------------------------------------------------------------------

#_08D6AE: REP #$20

#_08D6B0: LDA.b $00
#_08D6B2: STA.b $04

#_08D6B4: LDA.b $02
#_08D6B6: STA.b $06

#_08D6B8: SEP #$20

#_08D6BA: LDA.b #$02
#_08D6BC: STA.b $08

#_08D6BE: LDY.w $0C72,X

#_08D6C1: LDA.w $0C5E,X
#_08D6C4: ASL A
#_08D6C5: CLC
#_08D6C6: ADC.w $0C5E,X
#_08D6C9: CLC
#_08D6CA: ADC.w .group_offset,Y
#_08D6CD: TAX

;---------------------------------------------------------------------------------------------------

#_08D6CE: LDY.b #$00

.next
#_08D6D0: LDA.w .char,X
#_08D6D3: CMP.b #$FF
#_08D6D5: BEQ .skip

#_08D6D7: REP #$20

#_08D6D9: LDA.w .offset_y,X
#_08D6DC: AND.w #$00FF
#_08D6DF: CMP.w #$0080
#_08D6E2: BCC .positive_y

#_08D6E4: ORA.w #$FF00

.positive_y
#_08D6E7: CLC
#_08D6E8: ADC.b $04
#_08D6EA: STA.b $00

#_08D6EC: LDA.w .offset_x,X
#_08D6EF: AND.w #$00FF
#_08D6F2: CMP.w #$0080
#_08D6F5: BCC .positive_x

#_08D6F7: ORA.w #$FF00

.positive_x
#_08D6FA: CLC
#_08D6FB: ADC.b $06
#_08D6FD: STA.b $02

;---------------------------------------------------------------------------------------------------

#_08D6FF: SEP #$20

#_08D701: JSR Ancilla_SetOAM_XY

#_08D704: LDA.w .char,X
#_08D707: STA.b ($90),Y

#_08D709: INY

#_08D70A: LDA.w .prop,X
#_08D70D: ORA.b #$04
#_08D70F: ORA.b $65
#_08D711: STA.b ($90),Y

#_08D713: INY
#_08D714: PHY

#_08D715: TYA
#_08D716: SEC
#_08D717: SBC.b #$04
#_08D719: LSR A
#_08D71A: LSR A
#_08D71B: TAY

#_08D71C: LDA.b #$00
#_08D71E: STA.b ($92),Y

#_08D720: PLY

;---------------------------------------------------------------------------------------------------

.skip
#_08D721: INX

#_08D722: DEC.b $08
#_08D724: BPL .next

;---------------------------------------------------------------------------------------------------

#_08D726: PLX

#_08D727: RTS

;===================================================================================================

pool Ancilla2A_SpinAttackSparkleA

.timer
#_08D728: db   4
#_08D729: db   2
#_08D72A: db   3
#_08D72B: db   3
#_08D72C: db   2
#_08D72D: db   1

.char
#_08D72E: db $92, $FF, $FF, $FF
#_08D732: db $8C, $8C, $8C, $8C
#_08D736: db $D6, $D6, $D6, $D6
#_08D73A: db $93, $93, $93, $93
#_08D73E: db $D6, $D6, $D6, $D6
#_08D742: db $D7, $FF, $FF, $FF
#_08D746: db $80, $FF, $FF, $FF

.prop
#_08D74A: db $22, $FF, $FF, $FF
#_08D74E: db $22, $62, $A2, $E2
#_08D752: db $24, $64, $A4, $E4
#_08D756: db $22, $62, $A2, $E2
#_08D75A: db $22, $62, $A2, $E2
#_08D75E: db $22, $FF, $FF, $FF
#_08D762: db $22, $FF, $FF, $FF

.offset_y
#_08D766: dw  -4,   0,   0,   0
#_08D76E: dw  -8,  -8,   0,   0
#_08D776: dw  -8,  -8,   0,   0
#_08D77E: dw  -8,  -8,   0,   0
#_08D786: dw  -8,  -8,   0,   0
#_08D78E: dw  -4,   0,   0,   0
#_08D796: dw  -4,   0,   0,   0

.offset_x
#_08D79E: dw  -4,   0,   0,   0
#_08D7A6: dw  -8,   0,  -8,   0
#_08D7AE: dw  -8,   0,  -8,   0
#_08D7B6: dw  -8,   0,  -8,   0
#_08D7BE: dw  -8,   0,  -8,   0
#_08D7C6: dw  -4,   0,   0,   0
#_08D7CE: dw  -4,   0,   0,   0

pool off

;---------------------------------------------------------------------------------------------------

Ancilla2A_SpinAttackSparkleA:
#_08D7D6: LDA.b $11
#_08D7D8: BNE .just_draw

#_08D7DA: DEC.w $03B1,X
#_08D7DD: BPL .just_draw

#_08D7DF: STZ.w $03B1,X

#_08D7E2: LDA.w $0C68,X
#_08D7E5: BNE .just_draw

#_08D7E7: LDA.w $0C5E,X
#_08D7EA: INC A
#_08D7EB: STA.w $0C5E,X

#_08D7EE: TAY

#_08D7EF: LDA.w .timer,Y
#_08D7F2: STA.w $0C68,X

#_08D7F5: CPY.b #$05
#_08D7F7: BNE .just_draw

#_08D7F9: LDA.w $0C54,X
#_08D7FC: BNE .add_beam

#_08D7FE: BRL SpinAttackSparkleA_TransmuteToNextSpark

.add_beam
#_08D801: JSL AncillaAdd_SwordBeam

#_08D805: RTS

;---------------------------------------------------------------------------------------------------

.just_draw
#_08D806: LDA.w $0C5E,X
#_08D809: BEQ .exit

#_08D80B: JSR Ancilla_PrepOAMCoord

#_08D80E: REP #$20

#_08D810: LDA.b $00
#_08D812: STA.b $06

#_08D814: LDA.b $02
#_08D816: STA.b $08

#_08D818: SEP #$20

#_08D81A: PHX

#_08D81B: LDY.b #$00
#_08D81D: STY.b $04

#_08D81F: LDA.w $0C5E,X
#_08D822: DEC A
#_08D823: ASL A
#_08D824: ASL A
#_08D825: TAX

;===================================================================================================

#AncillaDraw_SpinningSpark:
.next
#_08D826: LDA.w .char,X
#_08D829: CMP.b #$FF
#_08D82B: BEQ .skip

#_08D82D: REP #$20

#_08D82F: PHX

#_08D830: TXA
#_08D831: ASL A
#_08D832: TAX

#_08D833: LDA.b $06
#_08D835: CLC
#_08D836: ADC.w .offset_y,X
#_08D839: STA.b $00

#_08D83B: LDA.b $08
#_08D83D: CLC
#_08D83E: ADC.w .offset_x,X
#_08D841: STA.b $02

#_08D843: PLX

;---------------------------------------------------------------------------------------------------

#_08D844: SEP #$20

#_08D846: JSR Ancilla_SetOAM_XY

#_08D849: LDA.w .char,X
#_08D84C: STA.b ($90),Y

#_08D84E: INY

#_08D84F: LDA.w .prop,X
#_08D852: AND.b #$CF
#_08D854: ORA.b $65
#_08D856: STA.b ($90),Y

#_08D858: INY
#_08D859: PHY

#_08D85A: TYA
#_08D85B: SEC
#_08D85C: SBC.b #$04
#_08D85E: LSR A
#_08D85F: LSR A
#_08D860: TAY

#_08D861: LDA.b #$00
#_08D863: STA.b ($92),Y

#_08D865: PLY

;---------------------------------------------------------------------------------------------------

.skip
#_08D866: INX

#_08D867: INC.b $04

#_08D869: LDA.b $04
#_08D86B: AND.b #$03
#_08D86D: BNE .next

;---------------------------------------------------------------------------------------------------

#_08D86F: PLX

.exit
#_08D870: RTS

;===================================================================================================

pool SpinAttackSparkleA_TransmuteToNextSpark

.rotation
#_08D871: db $21, $20, $1F, $1E ; up
#_08D875: db $03, $02, $01, $00 ; down
#_08D879: db $12, $11, $10, $0F ; left
#_08D87D: db $31, $30, $2F, $2E ; right

.offset_y
#_08D881: dw  28 ; up
#_08D883: dw  -2 ; down
#_08D885: dw  24 ; left
#_08D887: dw   6 ; right

.offset_x
#_08D889: dw  -3 ; up
#_08D88B: dw  21 ; down
#_08D88D: dw  25 ; left
#_08D88F: dw  -8 ; right

pool off

;---------------------------------------------------------------------------------------------------

SpinAttackSparkleA_TransmuteToNextSpark:
#_08D891: LDA.b #!ANCILLA_2B
#_08D893: STA.w $0C4A,X

#_08D896: LDA.b $2F
#_08D898: ASL A
#_08D899: TAY

#_08D89A: LDA.w .rotation+0,Y
#_08D89D: STA.l $7F5800

#_08D8A1: LDA.w .rotation+1,Y
#_08D8A4: STA.l $7F5801

#_08D8A8: LDA.w .rotation+2,Y
#_08D8AB: STA.l $7F5802

#_08D8AF: LDA.w .rotation+3,Y
#_08D8B2: STA.l $7F5803
#_08D8B6: STA.l $7F5804

;---------------------------------------------------------------------------------------------------

#_08D8BA: LDA.b #$02
#_08D8BC: STA.w $03B1,X

#_08D8BF: LDA.b #$4C
#_08D8C1: STA.w $0C5E,X

#_08D8C4: LDA.b #$08
#_08D8C6: STA.w $039F,X

#_08D8C9: STZ.w $0C54,X
#_08D8CC: STZ.w $0385,X

#_08D8CF: LDA.b #$FF
#_08D8D1: STA.w $03A4,X

#_08D8D4: LDA.b #$14
#_08D8D6: STA.l $7F5808

;---------------------------------------------------------------------------------------------------

#_08D8DA: LDY.b $2F

#_08D8DC: REP #$20

#_08D8DE: LDA.b $20
#_08D8E0: CLC
#_08D8E1: ADC.w #$000C
#_08D8E4: STA.l $7F5810

#_08D8E8: LDA.b $22
#_08D8EA: CLC
#_08D8EB: ADC.w #$0008
#_08D8EE: STA.l $7F580E

#_08D8F2: LDA.b $20
#_08D8F4: CLC
#_08D8F5: ADC.w .offset_y,Y
#_08D8F8: STA.b $00

#_08D8FA: LDA.b $22
#_08D8FC: CLC
#_08D8FD: ADC.w .offset_x,Y
#_08D900: STA.b $02

;---------------------------------------------------------------------------------------------------

#_08D902: SEP #$20

#_08D904: LDA.b $00
#_08D906: STA.w $0BFA,X

#_08D909: LDA.b $01
#_08D90B: STA.w $0C0E,X

#_08D90E: LDA.b $02
#_08D910: STA.w $0C04,X

#_08D913: LDA.b $03
#_08D915: STA.w $0C18,X

#_08D918: BRA Ancilla2B_SpinAttackSparkleB

;===================================================================================================

pool Ancilla2B_SpinAttackSparkleB

.char
#_08D91A: db $D7, $B7, $80, $83

.extra_char
#_08D91E: db $B7, $80, $83

pool off

;---------------------------------------------------------------------------------------------------

Ancilla2B_SpinAttackSparkleB:
#_08D921: LDA.w $0385,X
#_08D924: BEQ .continue

#_08D926: BRL SpinAttackSparkleB_Closer

.continue
#_08D929: PHX

#_08D92A: LDA.b #$02
#_08D92C: STA.b $73

#_08D92E: LDA.b $11
#_08D930: BNE .no_ai

#_08D932: LDY.b #$00

#_08D934: LDA.w $0C5E,X
#_08D937: SEC
#_08D938: SBC.b #$03
#_08D93A: STA.w $0C5E,X

#_08D93D: CMP.b #$0D
#_08D93F: BCS .dont_run_closer

#_08D941: PLX

#_08D942: LDA.b #$01

#_08D944: STA.w $03B1,X
#_08D947: STA.w $0385,X

#_08D94A: STZ.w $0C5E,X

#_08D94D: BRL SpinAttackSparkleB_Closer

;---------------------------------------------------------------------------------------------------

.dont_run_closer
#_08D950: CMP.b #$42
#_08D952: BCS .not_four

#_08D954: LDY.b #$03
#_08D956: BRA .set_count

.not_four
#_08D958: CMP.b #$46
#_08D95A: BNE .not_two

#_08D95C: LDY.b #$01

.not_two
#_08D95E: CMP.b #$43
#_08D960: BNE .set_count

#_08D962: LDY.b #$02

.set_count
#_08D964: TYA
#_08D965: STA.w $0C54,X

#_08D968: DEC.w $03B1,X
#_08D96B: BPL .no_ai

#_08D96D: LDA.b #$04
#_08D96F: STA.b $73

#_08D971: LDA.b #$02
#_08D973: STA.w $03B1,X

;---------------------------------------------------------------------------------------------------

.no_ai
#_08D976: LDY.b #$00

#_08D978: LDA.w $0C54,X
#_08D97B: TAX

.next_spark
#_08D97C: STX.b $72

#_08D97E: LDA.b $11
#_08D980: BNE .no_rotate

#_08D982: LDA.l $7F5800,X
#_08D986: CLC
#_08D987: ADC.b #$04
#_08D989: AND.b #$3F
#_08D98B: STA.l $7F5800,X

.no_rotate
#_08D98F: PHX
#_08D990: PHY

#_08D991: LDA.l $7F5808
#_08D995: STA.b $08

#_08D997: LDA.l $7F5800,X
#_08D99B: JSR Ancilla_GetRadialProjection
#_08D99E: JSL Sparkle_PrepOAMFromRadial

#_08D9A2: PLY

#_08D9A3: JSR Ancilla_SetOAM_XY

#_08D9A6: LDX.b $72

#_08D9A8: LDA.w .char,X
#_08D9AB: STA.b ($90),Y

#_08D9AD: INY

#_08D9AE: LDA.b $73
#_08D9B0: ORA.b $65
#_08D9B2: STA.b ($90),Y

#_08D9B4: INY
#_08D9B5: PHY

#_08D9B6: TYA
#_08D9B7: SEC
#_08D9B8: SBC.b #$04
#_08D9BA: LSR A
#_08D9BB: LSR A
#_08D9BC: TAY

#_08D9BD: LDA.b #$00
#_08D9BF: STA.b ($92),Y

#_08D9C1: PLY
#_08D9C2: PLX
#_08D9C3: DEX
#_08D9C4: BPL .next_spark

;---------------------------------------------------------------------------------------------------

#_08D9C6: PLX
#_08D9C7: PHX

#_08D9C8: LDA.b $11
#_08D9CA: BNE .skip_extra_logic

#_08D9CC: DEC.w $039F,X
#_08D9CF: BPL .delay_extra

#_08D9D1: LDA.b #$00
#_08D9D3: STA.w $039F,X

#_08D9D6: LDA.w $03A4,X
#_08D9D9: INC A
#_08D9DA: AND.b #$03
#_08D9DC: STA.w $03A4,X

#_08D9DF: CMP.b #$03
#_08D9E1: BNE .skip_extra_logic

#_08D9E3: LDA.l $7F5804
#_08D9E7: CLC
#_08D9E8: ADC.b #$09
#_08D9EA: AND.b #$3F
#_08D9EC: STA.l $7F5804

;---------------------------------------------------------------------------------------------------

.skip_extra_logic
#_08D9F0: LDA.w $03A4,X
#_08D9F3: STA.b $72

#_08D9F5: CMP.b #$03
#_08D9F7: BEQ .delay_extra

#_08D9F9: PHY

#_08D9FA: LDA.l $7F5808
#_08D9FE: STA.b $08

#_08DA00: LDA.l $7F5804
#_08DA04: JSR Ancilla_GetRadialProjection
#_08DA07: JSL Sparkle_PrepOAMFromRadial

#_08DA0B: PLY

#_08DA0C: JSR Ancilla_SetOAM_XY

#_08DA0F: LDX.b $72

#_08DA11: LDA.w .extra_char,X
#_08DA14: STA.b ($90),Y

#_08DA16: INY

#_08DA17: LDA.b #$04
#_08DA19: ORA.b $65
#_08DA1B: STA.b ($90),Y

#_08DA1D: INY
#_08DA1E: TYA
#_08DA1F: SEC
#_08DA20: SBC.b #$04

#_08DA22: LSR A
#_08DA23: LSR A
#_08DA24: TAY

#_08DA25: LDA.b #$00
#_08DA27: STA.b ($92),Y

;---------------------------------------------------------------------------------------------------

.delay_extra
#_08DA29: PLX
#_08DA2A: PHX

#_08DA2B: LDA.w $0C5E,X
#_08DA2E: TAX

#_08DA2F: CPX.b #$07
#_08DA31: BNE .exit

#_08DA33: LDY.b #$03

#_08DA35: LDA.b #$01
#_08DA37: STA.b ($92),Y

.exit
#_08DA39: PLX

#_08DA3A: RTS

;===================================================================================================

Sparkle_PrepOAMFromRadial:
#_08DA3B: REP #$20

#_08DA3D: LDA.b $00

#_08DA3F: LDY.b $02
#_08DA41: BEQ .positive_y

#_08DA43: EOR.w #$FFFF
#_08DA46: INC A

.positive_y
#_08DA47: CLC
#_08DA48: ADC.l $7F5810

#_08DA4C: CLC
#_08DA4D: ADC.w #$FFFC

#_08DA50: SEC
#_08DA51: SBC.b $E8
#_08DA53: STA.b $00

#_08DA55: LDA.b $04

#_08DA57: LDY.b $06
#_08DA59: BEQ .positive_x

#_08DA5B: EOR.w #$FFFF
#_08DA5E: INC A

.positive_x
#_08DA5F: CLC
#_08DA60: ADC.l $7F580E

#_08DA64: CLC
#_08DA65: ADC.w #$FFFC

#_08DA68: SEC
#_08DA69: SBC.b $E2
#_08DA6B: STA.b $02

#_08DA6D: SEP #$20

#_08DA6F: RTL

;===================================================================================================

SpinAttackSparkleB_Closer:
#_08DA70: DEC.w $03B1,X
#_08DA73: BPL .delay

#_08DA75: LDA.b #$01
#_08DA77: STA.w $03B1,X

#_08DA7A: LDA.w $0C5E,X
#_08DA7D: INC A
#_08DA7E: STA.w $0C5E,X

#_08DA81: CMP.b #$03
#_08DA83: BNE .delay

#_08DA85: STZ.w $0C4A,X

;---------------------------------------------------------------------------------------------------

.delay
#_08DA88: JSR Ancilla_PrepOAMCoord

#_08DA8B: REP #$20

#_08DA8D: LDA.b $00
#_08DA8F: STA.b $06

#_08DA91: LDA.b $02
#_08DA93: STA.b $08

#_08DA95: SEP #$20

#_08DA97: PHX

#_08DA98: LDY.b #$00
#_08DA9A: STY.b $04

#_08DA9C: LDA.w $0C5E,X
#_08DA9F: CLC
#_08DAA0: ADC.b #$04

#_08DAA2: ASL A
#_08DAA3: ASL A
#_08DAA4: TAX

#_08DAA5: BRL AncillaDraw_SpinningSpark

;===================================================================================================

pool Ancilla30_ByrnaWindupSpark

.char
#_08DAA8: db $92, $FF, $FF, $FF
#_08DAAC: db $8C, $8C, $8C, $8C
#_08DAB0: db $D6, $D6, $D6, $D6
#_08DAB4: db $93, $93, $93, $93

.prop
#_08DAB8: db $22, $FF, $FF, $FF
#_08DABC: db $22, $62, $A2, $E2
#_08DAC0: db $24, $64, $A4, $E4
#_08DAC4: db $22, $62, $A2, $E2

.offset_y
#_08DAC8: dw  -4,   0,   0,   0
#_08DAD0: dw  -8,  -8,   0,   0
#_08DAD8: dw  -8,  -8,   0,   0
#_08DAE0: dw  -8,  -8,   0,   0

.offset_x
#_08DAE8: dw  -4,   0,   0,   0
#_08DAF0: dw  -8,   0,  -8,   0
#_08DAF8: dw  -8,   0,  -8,   0
#_08DB00: dw  -8,   0,  -8,   0

.offset_link_y
#_08DB08: dw   5,   0,  -3,  -6
#_08DB10: dw  -8,  -3,  12,  28
#_08DB18: dw   5,   0,   8,  16
#_08DB20: dw   5,   0,   8,  16

.offset_link_x
#_08DB28: dw   3,   1,   0,   0
#_08DB30: dw  13,  16,  12,  12
#_08DB38: dw  24,   7,  -4, -10
#_08DB40: dw  -8,   9,  22,  26

pool off

;---------------------------------------------------------------------------------------------------

Ancilla30_ByrnaWindupSpark:
#_08DB48: LDA.b $11
#_08DB4A: BNE .delay

#_08DB4C: DEC.w $03B1,X
#_08DB4F: BPL .delay

#_08DB51: LDA.b #$01
#_08DB53: STA.w $03B1,X

#_08DB56: LDA.w $0C5E,X
#_08DB59: INC A
#_08DB5A: STA.w $0C5E,X

#_08DB5D: CMP.b #$11
#_08DB5F: BNE .delay

#_08DB61: BRL ByrnaWindupSpark_TransmuteToNormal

.delay
#_08DB64: LDA.w $0C5E,X
#_08DB67: BNE .active

#_08DB69: BRL .exit

;---------------------------------------------------------------------------------------------------

.active
#_08DB6C: LDA.b $2F
#_08DB6E: ASL A
#_08DB6F: ASL A
#_08DB70: STA.b $00

#_08DB72: LDA.w $0300
#_08DB75: CMP.b #$02
#_08DB77: BNE .not_final_pose

#_08DB79: TAY

#_08DB7A: LDA.w $039F,X
#_08DB7D: DEC A
#_08DB7E: BPL .not_final_chars

#_08DB80: LDA.b #$00
#_08DB82: LDY.b #$03

.not_final_chars
#_08DB84: STA.w $039F,X

#_08DB87: TYA

.not_final_pose
#_08DB88: ASL A
#_08DB89: CLC
#_08DB8A: ADC.b $00
#_08DB8C: TAY

;---------------------------------------------------------------------------------------------------

#_08DB8D: REP #$20

#_08DB8F: LDA.w .offset_link_y,Y
#_08DB92: CLC
#_08DB93: ADC.b $20
#_08DB95: STA.b $00

#_08DB97: LDA.w .offset_link_x,Y
#_08DB9A: CLC
#_08DB9B: ADC.b $22
#_08DB9D: STA.b $02

#_08DB9F: SEP #$20

#_08DBA1: LDA.b $00
#_08DBA3: STA.w $0BFA,X

#_08DBA6: LDA.b $01
#_08DBA8: STA.w $0C0E,X

#_08DBAB: LDA.b $02
#_08DBAD: STA.w $0C04,X

#_08DBB0: LDA.b $03
#_08DBB2: STA.w $0C18,X

#_08DBB5: JSR Ancilla_PrepOAMCoord

#_08DBB8: REP #$20

#_08DBBA: LDA.b $00
#_08DBBC: STA.b $06

#_08DBBE: LDA.b $02
#_08DBC0: STA.b $08

#_08DBC2: SEP #$20

#_08DBC4: PHX

#_08DBC5: STZ.b $0A

#_08DBC7: LDA.w $0C5E,X
#_08DBCA: DEC A
#_08DBCB: AND.b #$0F
#_08DBCD: BEQ .start_oam

#_08DBCF: CMP.b #$0F
#_08DBD1: BEQ .use_last_group

#_08DBD3: AND.b #$01
#_08DBD5: INC A
#_08DBD6: STA.b $0A

#_08DBD8: BRA .start_oam

.use_last_group
#_08DBDA: LDA.b #$03
#_08DBDC: STA.b $0A

.start_oam
#_08DBDE: LDA.b $0A
#_08DBE0: ASL A
#_08DBE1: ASL A
#_08DBE2: TAX

;---------------------------------------------------------------------------------------------------

#_08DBE3: LDY.b #$00
#_08DBE5: STY.b $04

.next_object
#_08DBE7: LDA.w .char,X
#_08DBEA: CMP.b #$FF
#_08DBEC: BEQ .skip

#_08DBEE: REP #$20

#_08DBF0: PHX

#_08DBF1: TXA
#_08DBF2: ASL A
#_08DBF3: TAX

#_08DBF4: LDA.b $06
#_08DBF6: CLC
#_08DBF7: ADC.w .offset_y,X
#_08DBFA: STA.b $00

#_08DBFC: LDA.b $08
#_08DBFE: CLC
#_08DBFF: ADC.w .offset_x,X
#_08DC02: STA.b $02

#_08DC04: PLX

#_08DC05: SEP #$20

#_08DC07: JSR Ancilla_SetOAM_XY

#_08DC0A: LDA.w .char,X
#_08DC0D: STA.b ($90),Y

#_08DC0F: INY

#_08DC10: LDA.w .prop,X
#_08DC13: AND.b #$CF
#_08DC15: ORA.b $65
#_08DC17: STA.b ($90),Y

#_08DC19: INY
#_08DC1A: PHY

#_08DC1B: TYA
#_08DC1C: SEC
#_08DC1D: SBC.b #$04
#_08DC1F: LSR A
#_08DC20: LSR A
#_08DC21: TAY

#_08DC22: LDA.b #$00
#_08DC24: STA.b ($92),Y

#_08DC26: PLY

;---------------------------------------------------------------------------------------------------

.skip
#_08DC27: INX

#_08DC28: INC.b $04

#_08DC2A: LDA.b $04
#_08DC2C: AND.b #$03
#_08DC2E: BNE .next_object

#_08DC30: PLX

;---------------------------------------------------------------------------------------------------

.exit
#_08DC31: RTS

;===================================================================================================

pool ByrnaWindupSpark_TransmuteToNormal

.rotation
#_08DC32: db $34, $33, $32, $31 ; up
#_08DC36: db $16, $15, $14, $13 ; down
#_08DC3A: db $2A, $29, $28, $27 ; left
#_08DC3E: db $10, $0F, $0E, $0D ; right

pool off

;===================================================================================================

ByrnaMagicCost:
#_08DC42: db $04, $02, $01

;===================================================================================================

ByrnaWindupSpark_TransmuteToNormal:
#_08DC45: LDA.b #!ANCILLA_31
#_08DC47: STA.w $0C4A,X

#_08DC4A: LDA.b $2F
#_08DC4C: ASL A
#_08DC4D: TAY

#_08DC4E: LDA.w .rotation+0,Y
#_08DC51: STA.l $7F5800

#_08DC55: LDA.w .rotation+1,Y
#_08DC58: STA.l $7F5801

#_08DC5C: LDA.w .rotation+2,Y
#_08DC5F: STA.l $7F5802

#_08DC63: LDA.w .rotation+3,Y
#_08DC66: STA.l $7F5803

#_08DC6A: LDA.b #$17
#_08DC6C: STA.w $03B1,X

#_08DC6F: STZ.w $0394,X
#_08DC72: STZ.w $0C5E,X

#_08DC75: LDA.b #$08
#_08DC77: STA.w $039F,X

#_08DC7A: STZ.w $0C54,X
#_08DC7D: STZ.w $0385,X

#_08DC80: LDA.b #$02
#_08DC82: STA.w $03A4,X

#_08DC85: LDA.b #$15
#_08DC87: STA.w $0C68,X

#_08DC8A: DEC A
#_08DC8B: STA.l $7F5808

#_08DC8F: LDA.b #!SFX3_30
#_08DC91: JSR Ancilla_SFX3_Near

;===================================================================================================

Ancilla31_ByrnaSpark:
#_08DC94: PHX

#_08DC95: LDA.b #$02
#_08DC97: STA.b $73

#_08DC99: LDA.b $11
#_08DC9B: BEQ .continue

#_08DC9D: BRL ByrnaSpark_Animate

.continue
#_08DCA0: LDA.w $0303
#_08DCA3: CMP.b #$0D
#_08DCA5: BNE .terminate

#_08DCA7: LDA.b #$01
#_08DCA9: STA.w $037B

#_08DCAC: DEC.w $03B1,X

#_08DCAF: LDA.w $03B1,X
#_08DCB2: BNE .keep_sparkling

#_08DCB4: LDA.b #$01
#_08DCB6: STA.w $03B1,X

#_08DCB9: LDA.l $7EF37B
#_08DCBD: TAY

#_08DCBE: LDA.w ByrnaMagicCost,Y
#_08DCC1: STA.b $00

#_08DCC3: LDA.l $7EF36E
#_08DCC7: BEQ .terminate

#_08DCC9: SEC
#_08DCCA: SBC.b $00
#_08DCCC: CMP.b #$80
#_08DCCE: BCS .terminate

#_08DCD0: STA.b $00

#_08DCD2: DEC.w $0394,X
#_08DCD5: BPL .delay_sap

#_08DCD7: LDA.b #$17
#_08DCD9: STA.w $0394,X

#_08DCDC: LDA.b $00
#_08DCDE: STA.l $7EF36E

.delay_sap
#_08DCE2: BIT.b $F4
#_08DCE4: BVC .keep_sparkling

;---------------------------------------------------------------------------------------------------

.terminate
#_08DCE6: PLX

#_08DCE7: STZ.w $037B

#_08DCEA: STZ.w $0C4A,X

#_08DCED: STZ.w $0373

#_08DCF0: RTS

;---------------------------------------------------------------------------------------------------

.keep_sparkling
#_08DCF1: LDA.w $0C54,X
#_08DCF4: CMP.b #$03
#_08DCF6: BEQ .all_sparks

#_08DCF8: LDY.b #$00

#_08DCFA: INC.w $0C5E,X

#_08DCFD: LDA.w $0C5E,X
#_08DD00: CMP.b #$04
#_08DD02: BCC .not_all_sparks

#_08DD04: LDY.b #$03
#_08DD06: BRA .set_spark_count

.not_all_sparks
#_08DD08: CMP.b #$02
#_08DD0A: BNE .not_two

#_08DD0C: LDY.b #$01

.not_two
#_08DD0E: CMP.b #$03
#_08DD10: BNE .set_spark_count

#_08DD12: LDY.b #$02

.set_spark_count
#_08DD14: TYA
#_08DD15: STA.w $0C54,X

.all_sparks
#_08DD18: DEC.w $03A4,X
#_08DD1B: BPL ByrnaSpark_Animate

#_08DD1D: LDA.b #$02
#_08DD1F: STA.w $03A4,X

#_08DD22: LDA.b #$04
#_08DD24: STA.b $73

;===================================================================================================

ByrnaSpark_Animate:
#_08DD26: REP #$20

#_08DD28: LDA.b $24
#_08DD2A: AND.w #$00FF
#_08DD2D: CMP.w #$0080
#_08DD30: BCC .positive_z

#_08DD32: ORA.w #$FF00

.positive_z
#_08DD35: CMP.w #$FFFF
#_08DD38: BNE .nonzero_z

#_08DD3A: LDA.w #$0000

.nonzero_z
#_08DD3D: EOR.w #$FFFF
#_08DD40: INC A

#_08DD41: CLC
#_08DD42: ADC.b $20

#_08DD44: CLC
#_08DD45: ADC.w #$000C
#_08DD48: STA.l $7F5810

#_08DD4C: LDA.b $22
#_08DD4E: CLC
#_08DD4F: ADC.w #$0008
#_08DD52: STA.l $7F580E

;---------------------------------------------------------------------------------------------------

#_08DD56: SEP #$20

#_08DD58: LDA.w $0C68,X
#_08DD5B: BNE .skip_sfx

#_08DD5D: LDA.b #$15
#_08DD5F: STA.w $0C68,X

#_08DD62: LDA.b #!SFX3_30
#_08DD64: JSR Ancilla_SFX3_Near

.skip_sfx
#_08DD67: STX.b $74

#_08DD69: LDY.b #$00

#_08DD6B: LDA.w $0C54,X
#_08DD6E: TAX

;---------------------------------------------------------------------------------------------------

.next_object
#_08DD6F: STX.b $72

#_08DD71: LDA.b $11
#_08DD73: BNE .dont_inc_sparkle

#_08DD75: LDA.l $7F5800,X
#_08DD79: CLC
#_08DD7A: ADC.b #$03
#_08DD7C: AND.b #$3F
#_08DD7E: STA.l $7F5800,X

.dont_inc_sparkle
#_08DD82: PHX
#_08DD83: PHY

#_08DD84: LDA.l $7F5808
#_08DD88: STA.b $08

#_08DD8A: LDA.l $7F5800,X
#_08DD8E: JSR Ancilla_GetRadialProjection
#_08DD91: JSL Sparkle_PrepOAMFromRadial

#_08DD95: PLY

#_08DD96: JSR Ancilla_SetOAM_XY

#_08DD99: LDX.b $72

#_08DD9B: LDA.w Ancilla2B_SpinAttackSparkleB_char,X
#_08DD9E: STA.b ($90),Y

#_08DDA0: INY

#_08DDA1: LDA.b $73
#_08DDA3: ORA.b $65
#_08DDA5: STA.b ($90),Y

#_08DDA7: INY
#_08DDA8: PHY

#_08DDA9: TYA
#_08DDAA: SEC
#_08DDAB: SBC.b #$04
#_08DDAD: LSR A
#_08DDAE: LSR A
#_08DDAF: TAY

#_08DDB0: LDA.b #$00
#_08DDB2: STA.b ($92),Y

;---------------------------------------------------------------------------------------------------

#_08DDB4: REP #$20

#_08DDB6: LDA.b $00
#_08DDB8: CLC
#_08DDB9: ADC.b $E8
#_08DDBB: STA.b $04

#_08DDBD: LDA.b $02
#_08DDBF: CLC
#_08DDC0: ADC.b $E2
#_08DDC2: STA.b $06

#_08DDC4: SEP #$20

#_08DDC6: LDX.b $74

#_08DDC8: LDA.b $04
#_08DDCA: STA.w $0BFA,X

#_08DDCD: LDA.b $05
#_08DDCF: STA.w $0C0E,X

#_08DDD2: LDA.b $06
#_08DDD4: STA.w $0C04,X

#_08DDD7: LDA.b $07
#_08DDD9: STA.w $0C18,X

#_08DDDC: STZ.w $0C72,X

#_08DDDF: JSR Ancilla_CheckSpriteCollision

#_08DDE2: PLY

#_08DDE3: PLX
#_08DDE4: DEX
#_08DDE5: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_08DDE7: PLX

#_08DDE8: RTS

;===================================================================================================

Ancilla0C_SwordBeam_bounce:
#_08DDE9: JSL Ancilla0C_SwordBeam

#_08DDED: RTS

;===================================================================================================

Ancilla0D_SpinAttackFullChargeSpark:
#_08DDEE: LDA.b #$04
#_08DDF0: JSR Ancilla_AllocateOAMFromRegion_A_or_D_or_F

#_08DDF3: TYA
#_08DDF4: STA.w $0C86,X

#_08DDF7: JSL Ancilla0D_SpinAttackFullChargeSpark_long

#_08DDFB: RTS

;===================================================================================================

pool Ancilla27_Duck CutsceneDuck_Draw

.char
#_08DDFC: db $0E, $00, $02

.prop
#_08DDFF: db $22, $2E, $2E

.offset_y
#_08DE02: db   0,  12,  20

.offset_x
#_08DE05: db   0,  -9,  -9

.vram_offset
#_08DE08: db $00, $20, $40, $E0

pool off

;---------------------------------------------------------------------------------------------------

Ancilla27_Duck:
#_08DE0C: LDA.b $11
#_08DE0E: BEQ .continue

#_08DE10: BRL .animate

.continue
#_08DE13: LDA.w $0C68,X
#_08DE16: BEQ .seek_link

#_08DE18: REP #$20

#_08DE1A: LDA.b $20
#_08DE1C: SEC
#_08DE1D: SBC.w #$0008
#_08DE20: STA.b $00

#_08DE22: LDA.w #$FFF0
#_08DE25: CLC
#_08DE26: ADC.b $E2
#_08DE28: STA.b $02

#_08DE2A: SEP #$20

#_08DE2C: LDA.b $00
#_08DE2E: STA.w $0BFA,X

#_08DE31: LDA.b $01
#_08DE33: STA.w $0C0E,X

#_08DE36: LDA.b $02
#_08DE38: STA.w $0C04,X

#_08DE3B: LDA.b $03
#_08DE3D: STA.w $0C18,X

#_08DE40: RTS

;---------------------------------------------------------------------------------------------------

.seek_link
#_08DE41: DEC.w $0394,X
#_08DE44: BPL .delay_flap_sfx

#_08DE46: LDA.b #$28
#_08DE48: STA.w $0394,X

#_08DE4B: LDA.b #!SFX3_1E
#_08DE4D: JSR Ancilla_SFX3_Pan

;---------------------------------------------------------------------------------------------------

.delay_flap_sfx
#_08DE50: LDY.w $0385,X
#_08DE53: BNE .swoop_down

#_08DE55: LDA.w $0C54,X
#_08DE58: BEQ .maintain_altitude

#_08DE5A: INC.w $0FC1

.swoop_down
#_08DE5D: LDA.w $0294,X
#_08DE60: CLC
#_08DE61: ADC.b #$FF
#_08DE63: STA.w $0294,X

#_08DE66: JSR Ancilla_Move_Z

.maintain_altitude
#_08DE69: JSR Ancilla_Move_X

#_08DE6C: LDA.w $0385,X
#_08DE6F: BEQ .picking_up

#_08DE71: BRL .dropping_off

;---------------------------------------------------------------------------------------------------

.dont_pick_up
#_08DE74: BRL .continue_from_pickup

; TODO comments
.picking_up
#_08DE77: LDY.b #$01
#_08DE79: JSR Ancilla_CheckLinkCollision
#_08DE7C: BCC .dont_pick_up

#_08DE7E: LDA.b $10
#_08DE80: CMP.b #$0F
#_08DE82: BEQ .dont_pick_up

#_08DE84: LDA.b $1B
#_08DE86: BNE .continue_the_pick

#_08DE88: LDA.b $5D
#_08DE8A: CMP.b #!LINKSTATE_0A
#_08DE8C: BEQ .dont_pick_up

#_08DE8E: CMP.b #!LINKSTATE_09
#_08DE90: BEQ .dont_pick_up

#_08DE92: CMP.b #!LINKSTATE_08
#_08DE94: BEQ .dont_pick_up

#_08DE96: LDA.b $5B
#_08DE98: CMP.b #$02
#_08DE9A: BEQ .dont_pick_up

#_08DE9C: LDA.w $02DA
#_08DE9F: ORA.w $037E
#_08DEA2: ORA.w $03EF
#_08DEA5: ORA.w $037B
#_08DEA8: BNE .dont_pick_up

#_08DEAA: BIT.w $0308
#_08DEAD: BMI .dont_pick_up

;---------------------------------------------------------------------------------------------------

#_08DEAF: PHX

#_08DEB0: LDX.b #$04

.next_ancilla_delete
#_08DEB2: LDA.w $0C4A,X
#_08DEB5: CMP.b #!ANCILLA_2A
#_08DEB7: BEQ .delete_ancilla

#_08DEB9: CMP.b #!ANCILLA_1F
#_08DEBB: BEQ .delete_ancilla

#_08DEBD: CMP.b #!ANCILLA_30
#_08DEBF: BEQ .delete_ancilla

#_08DEC1: CMP.b #!ANCILLA_31
#_08DEC3: BEQ .delete_ancilla

#_08DEC5: CMP.b #!ANCILLA_41
#_08DEC7: BNE .dont_delete_ancilla

.delete_ancilla
#_08DEC9: STZ.w $0C4A,X

.dont_delete_ancilla
#_08DECC: DEX
#_08DECD: BPL .next_ancilla_delete

#_08DECF: PLX

;---------------------------------------------------------------------------------------------------

#_08DED0: LDA.l $7EF3CC
#_08DED4: CMP.b #!FOLLOWER_09
#_08DED6: BNE .continue_the_pick

#_08DED8: LDA.b #$00
#_08DEDA: STA.l $7EF3CC
#_08DEDE: STA.w $02F9

.continue_the_pick
#_08DEE1: REP #$20

#_08DEE3: STZ.w $0308
#_08DEE6: STZ.w $011A
#_08DEE9: STZ.w $011C

#_08DEEC: SEP #$20

#_08DEEE: JSL Link_ResetProperties_A

#_08DEF2: STZ.w $0345
#_08DEF5: STZ.w $03F8

#_08DEF8: LDA.b #$0C
#_08DEFA: STA.b $4B

#_08DEFC: LDA.b #!LINKSTATE_00
#_08DEFE: STA.b $5D

#_08DF00: INC A
#_08DF01: STA.w $02DA
#_08DF04: STA.w $02E4
#_08DF07: STA.w $037B
#_08DF0A: STA.w $02F9

#_08DF0D: INC A
#_08DF0E: STA.w $0C54,X

#_08DF11: INC.w $0FC1

#_08DF14: STZ.w $0373

#_08DF17: LDA.b $1B
#_08DF19: BEQ .continue_from_pickup

#_08DF1B: STA.w $03FD

.continue_from_pickup
#_08DF1E: BRA .animate

;---------------------------------------------------------------------------------------------------

.dropping_off
#_08DF20: LDA.w $0C04,X
#_08DF23: STA.b $00

#_08DF25: LDA.w $0C18,X
#_08DF28: STA.b $01

#_08DF2A: LDA.w $0C54,X
#_08DF2D: BEQ .dont_freeze_npcs

#_08DF2F: INC.w $0FC1

.dont_freeze_npcs
#_08DF32: REP #$20

#_08DF34: LDA.b $00
#_08DF36: BMI .delay_dropoff

#_08DF38: CMP.b $22
#_08DF3A: BCC .delay_dropoff

;---------------------------------------------------------------------------------------------------

#_08DF3C: SEP #$20

#_08DF3E: LDA.w $0C54,X
#_08DF41: BEQ .animate

#_08DF43: STZ.w $0C54,X

#_08DF46: STZ.b $4B

#_08DF48: STZ.w $02F9
#_08DF4B: STZ.w $02DA

#_08DF4E: STZ.w $0C22,X

#_08DF51: STZ.w $02E4
#_08DF54: STZ.w $037B
#_08DF57: STZ.w $03FD

#_08DF5A: LDA.b #$90
#_08DF5C: STA.w $031F

#_08DF5F: JSL Follower_Initialize

#_08DF63: BRA .animate

;---------------------------------------------------------------------------------------------------

.delay_dropoff
#_08DF65: LDA.b $22
#_08DF67: SEC
#_08DF68: SBC.b $00
#_08DF6A: CMP.w #$0030
#_08DF6D: BCS .animate

#_08DF6F: LDY.b #$03

#_08DF71: SEP #$20

#_08DF73: BRA .set_vram_offset

;---------------------------------------------------------------------------------------------------

.animate
#_08DF75: SEP #$20

#_08DF77: DEC.w $039F,X
#_08DF7A: BPL .delay_step

#_08DF7C: LDA.b #$03
#_08DF7E: STA.w $039F,X

#_08DF81: INC.w $0380,X

#_08DF84: LDA.w $0380,X
#_08DF87: CMP.b #$03
#_08DF89: BNE .delay_step

#_08DF8B: STZ.w $0380,X

.delay_step
#_08DF8E: LDY.w $0380,X

;---------------------------------------------------------------------------------------------------

.set_vram_offset
#_08DF91: LDA.w .vram_offset+0,Y
#_08DF94: STA.w $0AF4

#_08DF97: JSR Ancilla_PrepOAMCoord

#_08DF9A: REP #$20

; TODO analyze
#_08DF9C: LDA.w $029E,X
#_08DF9F: AND.w #$00FF
#_08DFA2: BEQ .positive_altitiude

#_08DFA4: ORA.w #$FF00

.positive_altitiude
#_08DFA7: STA.b $04
#_08DFA9: STA.b $72

#_08DFAB: LDA.b $00
#_08DFAD: STA.b $0A

#_08DFAF: CLC
#_08DFB0: ADC.b $04
#_08DFB2: STA.b $04

#_08DFB4: LDA.b $02
#_08DFB6: STA.b $06

;---------------------------------------------------------------------------------------------------

#_08DFB8: SEP #$20

#_08DFBA: PHX

#_08DFBB: LDA.w $0C54,X

#_08DFBE: INC A
#_08DFBF: STA.b $08

#_08DFC1: LDY.b #$00
#_08DFC3: TYX

.next_object
#_08DFC4: REP #$20

#_08DFC6: LDA.w .offset_y,X
#_08DFC9: AND.w #$00FF
#_08DFCC: CMP.w #$0080
#_08DFCF: BCC .positive_y

#_08DFD1: ORA.w #$FF00

.positive_y
#_08DFD4: CLC
#_08DFD5: ADC.b $04
#_08DFD7: STA.b $00

#_08DFD9: LDA.w .offset_x,X
#_08DFDC: AND.w #$00FF
#_08DFDF: CMP.w #$0080
#_08DFE2: BCC .positive_x

#_08DFE4: ORA.w #$FF00

.positive_x
#_08DFE7: CLC
#_08DFE8: ADC.b $06
#_08DFEA: STA.b $02

#_08DFEC: SEP #$20

#_08DFEE: JSR Ancilla_SetOAM_XY

#_08DFF1: LDA.w .char,X
#_08DFF4: STA.b ($90),Y

#_08DFF6: INY

#_08DFF7: LDA.w .prop,X
#_08DFFA: ORA.b #$30
#_08DFFC: STA.b ($90),Y

#_08DFFE: INY
#_08DFFF: PHY

#_08E000: TYA
#_08E001: SEC
#_08E002: SBC.b #$04
#_08E004: LSR A
#_08E005: LSR A
#_08E006: TAY

#_08E007: LDA.b #$02
#_08E009: STA.b ($92),Y

#_08E00B: PLY

#_08E00C: INX
#_08E00D: CPX.b $08
#_08E00F: BNE .next_object

;---------------------------------------------------------------------------------------------------

#_08E011: REP #$20

#_08E013: LDA.b $0A
#_08E015: CLC
#_08E016: ADC.w #$001C
#_08E019: STA.b $00

#_08E01B: LDA.b $06
#_08E01D: STA.b $02

#_08E01F: SEP #$20

#_08E021: LDA.b #$30
#_08E023: STA.b $04

#_08E025: LDX.b #$01
#_08E027: JSR AncillaDraw_Shadow

#_08E02A: LDX.w $0FA0

#_08E02D: LDA.w $0C54,X
#_08E030: BEQ .no_link_shadow

#_08E032: REP #$20

#_08E034: LDA.b $0A
#_08E036: CLC
#_08E037: ADC.w #$001C
#_08E03A: STA.b $00

#_08E03C: LDA.b $06
#_08E03E: CLC
#_08E03F: ADC.w #$FFF9
#_08E042: STA.b $02

#_08E044: SEP #$20

#_08E046: LDA.b #$30
#_08E048: STA.b $04

#_08E04A: LDX.b #$01
#_08E04C: JSR AncillaDraw_Shadow

.no_link_shadow
#_08E04F: PLX

;---------------------------------------------------------------------------------------------------

#_08E050: REP #$20

#_08E052: LDA.b $06
#_08E054: BMI .exit

#_08E056: CMP.w #$0130
#_08E059: BCC .exit

#_08E05B: SEP #$20

#_08E05D: STZ.w $0C4A,X

#_08E060: LDA.w $0385,X
#_08E063: BNE .exit

#_08E065: LDA.w $0C54,X
#_08E068: BEQ .exit

#_08E06A: LDA.b #$0A
#_08E06C: STA.b $11

#_08E06E: LDA.b $10
#_08E070: STA.w $010C

#_08E073: LDA.b #$0E
#_08E075: STA.b $10

;---------------------------------------------------------------------------------------------------

.exit
#_08E077: SEP #$20

#_08E079: RTS

;===================================================================================================

pool AncillaAdd_SomariaBlock

.offset_y
#_08E07A: dw  -8 ; up
#_08E07C: dw  31 ; down
#_08E07E: dw  17 ; left
#_08E080: dw  17 ; right

.offset_x
#_08E082: dw   8 ; up
#_08E084: dw   8 ; down
#_08E086: dw  -8 ; left
#_08E088: dw  23 ; right

pool off

;---------------------------------------------------------------------------------------------------

AncillaAdd_SomariaBlock:
#_08E08A: PHB
#_08E08B: PHK
#_08E08C: PLB

#_08E08D: JSR AncillaAdd_AddAncilla_Bank08
#_08E090: BCC .spawn_the_block

#_08E092: BRL .refund

;---------------------------------------------------------------------------------------------------

.spawn_the_block
#_08E095: PHX

#_08E096: STX.b $00

#_08E098: LDX.b #$04

; Look for a somaria block
.next_block_check
#_08E09A: CPX.b $00
#_08E09C: BEQ .skip

#_08E09E: LDA.w $0C4A,X
#_08E0A1: CMP.b #!ANCILLA_2C
#_08E0A3: BNE .skip

;---------------------------------------------------------------------------------------------------

#_08E0A5: STX.b $02

#_08E0A7: LDA.w $02EC
#_08E0AA: DEC A
#_08E0AB: CMP.b $02
#_08E0AD: BNE .not_closest_carryable

#_08E0AF: STZ.w $02EC

.not_closest_carryable
#_08E0B2: JSL AncillaAdd_ExplodingSomariaBlock

#_08E0B6: PLX

#_08E0B7: STZ.w $0C4A,X

#_08E0BA: STZ.w $0646

#_08E0BD: LDA.b $5E
#_08E0BF: CMP.b #$12
#_08E0C1: BNE .dont_reset_speed

#_08E0C3: STZ.b $48
#_08E0C5: STZ.b $5E

.dont_reset_speed
#_08E0C7: BRL .exit

;---------------------------------------------------------------------------------------------------

.skip
#_08E0CA: DEX
#_08E0CB: BPL .next_block_check

;---------------------------------------------------------------------------------------------------

#_08E0CD: PLX

#_08E0CE: LDA.b #!SFX3_2A
#_08E0D0: JSR Ancilla_SFX3_Near

#_08E0D3: STZ.w $0C54,X

#_08E0D6: STZ.w $0C22,X
#_08E0D9: STZ.w $0C2C,X

#_08E0DC: STZ.w $0C5E,X

#_08E0DF: STZ.w $03B1,X
#_08E0E2: STZ.w $039F,X
#_08E0E5: STZ.w $03A4,X
#_08E0E8: STZ.w $03C5,X

#_08E0EB: LDA.b #$0C
#_08E0ED: STA.w $0394,X

#_08E0F0: LDA.b #$12
#_08E0F2: STA.w $0C68,X

#_08E0F5: STZ.w $0385,X
#_08E0F8: STZ.w $029E,X

#_08E0FB: STZ.w $0380,X
#_08E0FE: STZ.w $03EA,X

#_08E101: STZ.w $0BF0,X

#_08E104: LDA.b #$09
#_08E106: STA.w $03A9,X

#_08E109: STZ.w $03D5,X

;---------------------------------------------------------------------------------------------------

#_08E10C: LDA.b $2F
#_08E10E: LSR A
#_08E10F: STA.w $0C72,X

#_08E112: JSL Ancilla_CheckInitialTileCollision_Class2
#_08E116: BCC .space_to_spawn

#_08E118: REP #$20

#_08E11A: LDA.b $20
#_08E11C: CLC
#_08E11D: ADC.w #$0010
#_08E120: STA.b $00

#_08E122: LDA.b $22
#_08E124: CLC
#_08E125: ADC.w #$0008
#_08E128: STA.b $02

#_08E12A: SEP #$20

#_08E12C: LDA.b $00
#_08E12E: STA.w $0BFA,X

#_08E131: LDA.b $01
#_08E133: STA.w $0C0E,X

#_08E136: LDA.b $02
#_08E138: STA.w $0C04,X

#_08E13B: LDA.b $03
#_08E13D: STA.w $0C18,X

#_08E140: BRA .exit

;---------------------------------------------------------------------------------------------------

.space_to_spawn
#_08E142: LDY.b $2F

#_08E144: LDA.b $20
#_08E146: CLC
#_08E147: ADC.w .offset_y+0,Y
#_08E14A: STA.w $0BFA,X

#_08E14D: LDA.b $21
#_08E14F: ADC.w .offset_y+1,Y
#_08E152: STA.w $0C0E,X

#_08E155: LDA.b $22
#_08E157: CLC
#_08E158: ADC.w .offset_x+0,Y
#_08E15B: STA.w $0C04,X

#_08E15E: LDA.b $23
#_08E160: ADC.w .offset_x+1,Y
#_08E163: STA.w $0C18,X

#_08E166: JSR SomariaBlock_CheckForTransitTile

#_08E169: BRA .exit

;---------------------------------------------------------------------------------------------------

.refund
#_08E16B: LDX.b #$04
#_08E16D: JSL Refund_Magic

.exit
#_08E171: PLB

#_08E172: RTL

;===================================================================================================

pool SomariaBlock_CheckForTransitTile

.offset_y
#_08E173: dw -16, -16, -16,  16,  16,  16
#_08E17F: dw  -8,   0,   8,  -8,   0,   8

.offset_x
#_08E18B: dw  -8,   0,   8,  -8,   0,   8
#_08E197: dw -16, -16, -16,  16,  16,  16

pool off

;---------------------------------------------------------------------------------------------------

SomariaBlock_CheckForTransitTile:
#_08E1A3: LDA.w $03F4
#_08E1A6: BEQ .exit

#_08E1A8: LDY.b #$16

.next
#_08E1AA: LDA.w $0BFA,X
#_08E1AD: CLC
#_08E1AE: ADC.w .offset_y+0,Y
#_08E1B1: STA.b $00
#_08E1B3: STA.b $72

#_08E1B5: LDA.w $0C0E,X
#_08E1B8: ADC.w .offset_y+1,Y
#_08E1BB: STA.b $01
#_08E1BD: STA.b $73

#_08E1BF: LDA.w $0C04,X
#_08E1C2: CLC
#_08E1C3: ADC.w .offset_x+0,Y
#_08E1C6: STA.b $02
#_08E1C8: STA.b $74

#_08E1CA: LDA.w $0C18,X
#_08E1CD: ADC.w .offset_x+1,Y
#_08E1D0: STA.b $03
#_08E1D2: STA.b $75

#_08E1D4: PHY

#_08E1D5: LDA.w $0280,X
#_08E1D8: PHA

#_08E1D9: JSR Ancilla_CheckTileCollision_targeted

#_08E1DC: PLA
#_08E1DD: STA.w $0280,X

#_08E1E0: PLY
#_08E1E1: LDA.w $03E4,X

#_08E1E4: CMP.b #!TILETYPE_B6
#_08E1E6: BEQ .node

#_08E1E8: CMP.b #!TILETYPE_BC
#_08E1EA: BEQ .node

#_08E1EC: DEY
#_08E1ED: DEY
#_08E1EE: BPL .next

#_08E1F0: BRA .exit

;---------------------------------------------------------------------------------------------------

.node
#_08E1F2: LDA.b $72
#_08E1F4: STA.w $0BFA,X

#_08E1F7: LDA.b $73
#_08E1F9: STA.w $0C0E,X

#_08E1FC: LDA.b $74
#_08E1FE: STA.w $0C04,X

#_08E201: LDA.b $75
#_08E203: STA.w $0C18,X

#_08E206: JSL AncillaAdd_SomariaPlatformPoof

.exit
#_08E20A: RTS

;===================================================================================================

Ancilla_CheckBasicSpriteCollision:
#_08E20B: LDY.b #$0F

.next_sprite
#_08E20D: TYA
#_08E20E: EOR.b $1A
#_08E210: AND.b #$03

#_08E212: ORA.w $0F00,Y
#_08E215: ORA.w $0EF0,Y
#_08E218: BNE .skip

#_08E21A: LDA.w $0DD0,Y
#_08E21D: CMP.b #$09
#_08E21F: BCC .skip

#_08E221: LDA.w $0CAA,Y
#_08E224: AND.b #$02
#_08E226: BNE .sprite_ignores_priority

#_08E228: LDA.w $0280,X
#_08E22B: BNE .skip

.sprite_ignores_priority
#_08E22D: LDA.w $0C7C,X
#_08E230: CMP.w $0F20,Y
#_08E233: BNE .skip

; Crystal switch v Somaria block
#_08E235: LDA.w $0C4A,X
#_08E238: CMP.b #!ANCILLA_2C
#_08E23A: BNE .not_somaria_block

#_08E23C: LDA.w $0E20,Y
#_08E23F: CMP.b #!SPRITE_1E
#_08E241: BEQ .skip

#_08E243: CMP.b #!SPRITE_90
#_08E245: BEQ .skip

.not_somaria_block
#_08E247: JSR Ancilla_CheckBasicSpriteCollision_Single

.skip
#_08E24A: DEY
#_08E24B: BPL .next_sprite

#_08E24D: CLC

#_08E24E: RTS

;===================================================================================================

Ancilla_CheckBasicSpriteCollision_Single:
#_08E24F: JSR Ancilla_SetupBasicHitBox

#_08E252: PHY
#_08E253: PHX

#_08E254: TYX
#_08E255: JSL Sprite_SetupHitbox_long

#_08E259: PLX
#_08E25A: PLY

#_08E25B: JSL CheckIfHitBoxesOverlap_long
#_08E25F: BCC .fail

#_08E261: LDA.w $0E20,Y
#_08E264: CMP.b #!SPRITE_92
#_08E266: BNE .not_king_helma

#_08E268: LDA.w $0DB0,Y
#_08E26B: CMP.b #$03
#_08E26D: BCC .success

.not_king_helma
#_08E26F: LDA.w $0E20,Y
#_08E272: CMP.b #!SPRITE_80
#_08E274: BNE .dont_reverse_fire_snake

#_08E276: LDA.w $0F10,Y
#_08E279: BNE .dont_reverse_fire_snake

#_08E27B: LDA.b #$18
#_08E27D: STA.w $0F10,Y

#_08E280: LDA.w $0DE0,Y
#_08E283: EOR.b #$01
#_08E285: STA.w $0DE0,Y

.dont_reverse_fire_snake
#_08E288: LDA.w $0BA0,Y
#_08E28B: BNE .fail

#_08E28D: LDA.w $0C04,X
#_08E290: SEC
#_08E291: SBC.b #$08
#_08E293: STA.b $04

#_08E295: LDA.w $0C18,X
#_08E298: SBC.b #$00
#_08E29A: STA.b $05

#_08E29C: LDA.w $0BFA,X
#_08E29F: SEC
#_08E2A0: SBC.b #$08
#_08E2A2: PHP

#_08E2A3: SEC
#_08E2A4: SBC.w $029E,X
#_08E2A7: STA.b $06

#_08E2A9: LDA.w $0C0E,X
#_08E2AC: SBC.b #$00

#_08E2AE: PLP
#_08E2AF: SBC.b #$00
#_08E2B1: STA.b $07

#_08E2B3: LDA.b #$50

#_08E2B5: PHY
#_08E2B6: PHX

#_08E2B7: TYX
#_08E2B8: JSL Sprite_ProjectSpeedTowardsLocation_long

#_08E2BC: PLX
#_08E2BD: PLY

#_08E2BE: LDA.b $00
#_08E2C0: EOR.b #$FF
#_08E2C2: STA.w $0F30,Y

#_08E2C5: LDA.b $01
#_08E2C7: EOR.b #$FF
#_08E2C9: STA.w $0F40,Y

#_08E2CC: PHX

#_08E2CD: LDA.w $0C4A,X

#_08E2D0: TYX
#_08E2D1: JSL Ancilla_CheckDamageToSprite

#_08E2D5: PLX

;---------------------------------------------------------------------------------------------------

.success
#_08E2D6: PLA
#_08E2D7: PLA

#_08E2D8: SEC

#_08E2D9: RTS

.fail
#_08E2DA: CLC

#_08E2DB: RTS

;===================================================================================================

Ancilla_SetupBasicHitBox:
#_08E2DC: LDA.w $0C04,X
#_08E2DF: SEC
#_08E2E0: SBC.b #$08
#_08E2E2: STA.b $00

#_08E2E4: LDA.w $0C18,X
#_08E2E7: SBC.b #$00
#_08E2E9: STA.b $08

#_08E2EB: LDA.w $0BFA,X
#_08E2EE: SEC
#_08E2EF: SBC.b #$08
#_08E2F1: PHP

#_08E2F2: SEC
#_08E2F3: SBC.w $029E,X
#_08E2F6: STA.b $01

#_08E2F8: LDA.w $0C0E,X
#_08E2FB: SBC.b #$00

#_08E2FD: PLP
#_08E2FE: SBC.b #$00
#_08E300: STA.b $09

#_08E302: LDA.b #$0F
#_08E304: STA.b $02

#_08E306: LDA.b #$0F
#_08E308: STA.b $03

;---------------------------------------------------------------------------------------------------

#EXIT_08E30A:
#_08E30A: RTS

;===================================================================================================
; TODO verify table size
pool AncillaDraw_SomariaBlock

.prop
#_08E30B: db $00, $40, $80, $C0
#_08E30F: db $00, $40, $80, $C0
#_08E313: db $00, $40, $80, $C0

.offset_y
#_08E317: dw  -8,  -8,   0,   0
#_08E31F: dw   0,   0,   0,   0
#_08E327: dw   0,   0,   0,   0

.offset_x
#_08E32F: dw  -8,   0,  -8,   0
#_08E337: dw   0,   0,   0,   0
#_08E33F: dw   0,   0,   0,   0

pool off

;===================================================================================================

pool Ancilla2C_SomariaBlock

.node_offset_y
#_08E347: dw  -8,   8,   0,   0
#_08E34F: dw   0,   0,   0,   0
#_08E357: dw  -8,   8,  -8,   8

.node_offset_x
#_08E35F: dw   0,   0,  -8,   8
#_08E367: dw   0,   0,   0,   0
#_08E36F: dw   8,  -8,  -8,   8

pool off

;---------------------------------------------------------------------------------------------------

Ancilla2C_SomariaBlock:
#_08E377: DEC.w $0394,X
#_08E37A: BPL EXIT_08E30A

#_08E37C: STZ.w $0394,X

#_08E37F: LDA.w $03C5,X
#_08E382: BNE .bouncing

#_08E384: LDA.b $11
#_08E386: BEQ .continue

#_08E388: CMP.b #$08
#_08E38A: BEQ .continue

#_08E38C: CMP.b #$10
#_08E38E: BNE .skip_lift

.continue
#_08E390: JSR Ancilla_HandleLiftLogic
#_08E393: BRA .handle_lift_logic

;---------------------------------------------------------------------------------------------------

.skip_lift
#_08E395: TXA
#_08E396: INC A
#_08E397: CMP.w $02EC
#_08E39A: BNE .handle_lift_logic

#_08E39C: LDA.w $0380,X
#_08E39F: BEQ .handle_lift_logic

#_08E3A1: CMP.b #$03
#_08E3A3: BEQ .assert_holditude

#_08E3A5: LDY.b #$03
#_08E3A7: JSR Ancilla_LatchLinkCoordinates
#_08E3AA: JSR Ancilla_LatchAltitudeAboveLink

#_08E3AD: LDA.b #$03
#_08E3AF: STA.w $0380,X

.assert_holditude
#_08E3B2: JSR Ancilla_LatchCarriedPosition

;---------------------------------------------------------------------------------------------------

.handle_lift_logic
#_08E3B5: LDA.b $1B
#_08E3B7: BEQ .no_trigger

#_08E3B9: LDA.w $0380,X
#_08E3BC: BNE .bouncing

#_08E3BE: BIT.w $0308
#_08E3C1: BMI .bouncing

#_08E3C3: LDA.w $029E,X
#_08E3C6: BEQ .run_trigger

#_08E3C8: CMP.b #$FF
#_08E3CA: BEQ .run_trigger

;---------------------------------------------------------------------------------------------------

.bouncing
#_08E3CC: TXA
#_08E3CD: INC A
#_08E3CE: CMP.w $02EC
#_08E3D1: BNE .no_trigger

#_08E3D3: STZ.w $0646

.no_trigger
#_08E3D6: BRL .tile_collision_logic

;---------------------------------------------------------------------------------------------------

.run_trigger
#_08E3D9: LDA.w $03F4
#_08E3DC: BEQ .no_transit_tiles

#_08E3DE: LDA.b $1A
#_08E3E0: AND.b #$03
#_08E3E2: ASL A
#_08E3E3: TAY

.next_node_check
#_08E3E4: LDA.w $0BFA,X
#_08E3E7: CLC
#_08E3E8: ADC.w .node_offset_y+0,Y
#_08E3EB: STA.b $00
#_08E3ED: STA.b $72

#_08E3EF: LDA.w $0C0E,X
#_08E3F2: ADC.w .node_offset_y+1,Y
#_08E3F5: STA.b $01
#_08E3F7: STA.b $73

#_08E3F9: LDA.w $0C04,X
#_08E3FC: CLC
#_08E3FD: ADC.w .node_offset_x+0,Y
#_08E400: STA.b $02
#_08E402: STA.b $74

#_08E404: LDA.w $0C18,X
#_08E407: ADC.w .node_offset_x+1,Y
#_08E40A: STA.b $03
#_08E40C: STA.b $75

#_08E40E: PHY

#_08E40F: LDA.w $0280,X
#_08E412: PHA

#_08E413: JSR Ancilla_CheckTileCollision_targeted

#_08E416: PLA
#_08E417: STA.w $0280,X

#_08E41A: PLY

#_08E41B: LDA.w $03E4,X
#_08E41E: CMP.b #!TILETYPE_B6
#_08E420: BEQ .valid_node

#_08E422: CMP.b #!TILETYPE_BC
#_08E424: BEQ .valid_node

#_08E426: TYA
#_08E427: CLC
#_08E428: ADC.b #$08
#_08E42A: TAY

#_08E42B: CPY.b #$18
#_08E42D: BCS .tile_collision_logic

#_08E42F: BRA .next_node_check

;---------------------------------------------------------------------------------------------------

.valid_node
#_08E431: LDA.b $72
#_08E433: STA.w $0BFA,X

#_08E436: LDA.b $73
#_08E438: STA.w $0C0E,X

#_08E43B: LDA.b $74
#_08E43D: STA.w $0C04,X

#_08E440: LDA.b $75
#_08E442: STA.w $0C18,X

#_08E445: JSL AncillaAdd_SomariaPlatformPoof

#_08E449: TXA
#_08E44A: INC A
#_08E44B: CMP.w $02EC
#_08E44E: BNE .exit

#_08E450: STZ.w $02EC

.exit
#_08E453: RTS

;---------------------------------------------------------------------------------------------------

.no_transit_tiles
#_08E454: JSR SomariaBlock_CheckForSwitch
#_08E457: BCS .tile_collision_logic

#_08E459: LDA.w $029E,X
#_08E45C: BEQ .set_trigger

#_08E45E: CMP.b #$FF
#_08E460: BNE .tile_collision_logic

.set_trigger
#_08E462: INC.w $0646

;---------------------------------------------------------------------------------------------------

.tile_collision_logic
#_08E465: JSR Ancilla_LatchYCoordToZ

#_08E468: LDA.w $0C72,X
#_08E46B: STA.b $74

#_08E46D: LDA.w $0280,X
#_08E470: STA.b $75

#_08E472: STZ.w $0280,X

#_08E475: JSR Ancilla_CheckTileCollision_Class2

#_08E478: PHP

#_08E479: LDA.b $1B
#_08E47B: BEQ .dont_layer_swap

#_08E47D: LDA.w $0385,X
#_08E480: BEQ .dont_layer_swap

#_08E482: LDA.w $03E4,X
#_08E485: CMP.b #!TILETYPE_1C
#_08E487: BNE .dont_layer_swap

#_08E489: LDA.b #$01
#_08E48B: STA.w $03D5,X

.dont_layer_swap
#_08E48E: PLP
#_08E48F: BCC .no_tile_collision

;---------------------------------------------------------------------------------------------------

.run_wall_bounce_logic
#_08E491: BIT.w $0308
#_08E494: BPL .not_held

#_08E496: LDA.w $0309
#_08E499: BEQ .no_tile_collision

.not_held
#_08E49B: LDA.b $75
#_08E49D: BNE .end_tile_collision_logic

#_08E49F: LDA.w $0BF0,X
#_08E4A2: BNE .end_tile_collision_logic

#_08E4A4: LDA.w $029E,X
#_08E4A7: BEQ .end_tile_collision_logic

#_08E4A9: LDA.b #$01
#_08E4AB: STA.w $0BF0,X

#_08E4AE: LDA.b #$04
#_08E4B0: STA.b $0E

#_08E4B2: LDA.w $0C72,X
#_08E4B5: CMP.b #$01
#_08E4B7: BNE .small_bounce

#_08E4B9: LDA.b #$10
#_08E4BB: STA.b $0E

#_08E4BD: LDY.b #$F0
#_08E4BF: BRA .bounce_continue

.small_bounce
#_08E4C1: LDY.b #$FC

;---------------------------------------------------------------------------------------------------

.bounce_continue
#_08E4C3: LDA.w $0C22,X
#_08E4C6: BEQ .zero_y_speed
#_08E4C8: BPL .bounce_up

#_08E4CA: LDY.b $0E

.bounce_up
#_08E4CC: TYA
#_08E4CD: STA.w $0C22,X

.zero_y_speed
#_08E4D0: LDY.b #$FC

#_08E4D2: LDA.w $0C2C,X
#_08E4D5: BEQ .zero_x_speed
#_08E4D7: BPL .bounce_left

#_08E4D9: LDY.b #$04

.bounce_left
#_08E4DB: TYA
#_08E4DC: STA.w $0C2C,X

.zero_x_speed
#_08E4DF: LDA.w $0C72,X
#_08E4E2: CMP.b #$01
#_08E4E4: BNE .end_tile_collision_logic

#_08E4E6: INC A
#_08E4E7: STA.w $0385,X

#_08E4EA: LDA.b #$FC
#_08E4EC: STA.w $0C22,X

;---------------------------------------------------------------------------------------------------

.end_tile_collision_logic
#_08E4EF: BRL SomariaBlock_HandleDamage

.no_tile_collision
#_08E4F2: BIT.w $0308
#_08E4F5: BMI .end_tile_collision_logic

#_08E4F7: LDA.w $029E,X
#_08E4FA: BEQ .not_airborne

#_08E4FC: CMP.b #$FF
#_08E4FE: BNE .end_tile_collision_logic

.not_airborne
#_08E500: LDA.b #$10
#_08E502: STA.w $0C72,X

;---------------------------------------------------------------------------------------------------

#_08E505: LDA.w $0280,X
#_08E508: PHA

#_08E509: JSR Ancilla_CheckTileCollision

#_08E50C: PLA
#_08E50D: STA.w $0280,X

;---------------------------------------------------------------------------------------------------
; TODO analyze
#_08E510: LDA.w $03E4,X

#_08E513: CMP.b #!TILETYPE_26
#_08E515: BEQ .staircase_boundary

#_08E517: CMP.b #!TILETYPE_0C
#_08E519: BEQ .overlay_mask

#_08E51B: CMP.b #!TILETYPE_1C
#_08E51D: BEQ .overlay_mask

#_08E51F: CMP.b #!TILETYPE_20
#_08E521: BEQ .pit

#_08E523: CMP.b #!TILETYPE_08
#_08E525: BEQ .deep_water

#_08E527: CMP.b #!TILETYPE_68
#_08E529: BEQ .conveyor

#_08E52B: CMP.b #!TILETYPE_69
#_08E52D: BEQ .conveyor

#_08E52F: CMP.b #!TILETYPE_6A
#_08E531: BEQ .conveyor

#_08E533: CMP.b #!TILETYPE_6B
#_08E535: BEQ .conveyor

#_08E537: CMP.b #!TILETYPE_B6
#_08E539: BEQ .somaria_node_or_path

#_08E53B: CMP.b #!TILETYPE_BC
#_08E53D: BEQ .somaria_node_or_path

#_08E53F: AND.b #$F0
#_08E541: CMP.b #$B0
#_08E543: BNE .somaria_node_or_path

;---------------------------------------------------------------------------------------------------

.pit
#_08E545: BRL SomariaBlock_HandlePitLogic

;---------------------------------------------------------------------------------------------------

.staircase_boundary
#_08E548: BRL .run_wall_bounce_logic

;---------------------------------------------------------------------------------------------------

.conveyor
#_08E54B: BRL SomariaBlock_HandleConveyor

;---------------------------------------------------------------------------------------------------

.somaria_node_or_path
#_08E54E: STZ.w $0C68,X

#_08E551: LDA.w $0385,X
#_08E554: ORA.w $03C5,X
#_08E557: BNE .am_airborne

#_08E559: LDA.b #$02
#_08E55B: STA.w $0C68,X

.am_airborne
#_08E55E: BRL SomariaBlock_HandleDamage

;===================================================================================================

.deep_water
#_08E561: TXA
#_08E562: INC A
#_08E563: CMP.w $02EC
#_08E566: BNE .dont_reset_water

#_08E568: STZ.w $02EC

.dont_reset_water
#_08E56B: LDA.w $0C68,X
#_08E56E: BNE .am_airborne

#_08E570: LDA.w $0BFA,X
#_08E573: CLC
#_08E574: ADC.b #$E8
#_08E576: STA.w $0BFA,X

#_08E579: LDA.w $0C0E,X
#_08E57C: ADC.b #$FF
#_08E57E: STA.w $0C0E,X

#_08E581: BRL Ancilla_TransmuteToSplash

;===================================================================================================

.overlay_mask
#_08E584: LDA.w $046C
#_08E587: CMP.b #$03
#_08E589: BEQ .layer_2_moving_floor

#_08E58B: LDA.w $0C7C,X
#_08E58E: BNE SomariaBlock_HandleDamage

#_08E590: LDA.w $029E,X
#_08E593: BEQ SomariaBlock_HandleDamage

#_08E595: CMP.b #$FF
#_08E597: BEQ SomariaBlock_HandleDamage

#_08E599: LDA.b #$01
#_08E59B: STA.w $0C7C,X

#_08E59E: BRL SomariaBlock_HandleDamage

;---------------------------------------------------------------------------------------------------

.layer_2_moving_floor
#_08E5A1: LDA.w $0BFA,X
#_08E5A4: CLC
#_08E5A5: ADC.w $0310
#_08E5A8: STA.b $72

#_08E5AA: LDA.w $0C0E,X
#_08E5AD: ADC.w $0311
#_08E5B0: STA.b $73

#_08E5B2: LDA.w $0C04,X
#_08E5B5: CLC
#_08E5B6: ADC.w $0312
#_08E5B9: STA.w $0C04,X

#_08E5BC: LDA.w $0C18,X
#_08E5BF: ADC.w $0313
#_08E5C2: STA.w $0C18,X

#_08E5C5: BRA SomariaBlock_HandleDamage

;===================================================================================================

SomariaBlock_HandleConveyor:
#_08E5C7: JSR Ancilla_ApplyConveyor

#_08E5CA: BRA SomariaBlock_HandleDamage

;===================================================================================================

SomariaBlock_HandlePitLogic:
#_08E5CC: LDA.w $0308
#_08E5CF: BMI SomariaBlock_HandleDamage

#_08E5D1: TXA
#_08E5D2: INC A
#_08E5D3: CMP.w $02EC
#_08E5D6: BNE .dont_reset

#_08E5D8: STZ.w $02EC

.dont_reset
#_08E5DB: LDA.w $0C68,X
#_08E5DE: BNE SomariaBlock_HandleDamage

#_08E5E0: LDA.b $5E
#_08E5E2: CMP.b #$12
#_08E5E4: BNE Ancilla_DeleteSelf

#_08E5E6: STZ.b $5E
#_08E5E8: STZ.b $48

;===================================================================================================

Ancilla_DeleteSelf:
#_08E5EA: STZ.w $0C4A,X

#_08E5ED: RTS

;===================================================================================================

SomariaBlock_HandleDamage:
#_08E5EE: LDA.b $75
#_08E5F0: ORA.w $0280,X
#_08E5F3: STA.b $75

#_08E5F5: LDA.w $0308
#_08E5F8: BMI .dont_fizzle

#_08E5FA: DEC.w $03A9,X

#_08E5FD: LDA.w $03A9,X
#_08E600: BNE .dont_fizzle

#_08E602: INC.w $03A9,X

#_08E605: STZ.w $0280,X

#_08E608: JSR Ancilla_CheckBasicSpriteCollision
#_08E60B: BCC .dont_fizzle

#_08E60D: LDA.b #$07
#_08E60F: STA.w $03A9,X

#_08E612: LDA.w $0C54,X
#_08E615: INC A
#_08E616: STA.w $0C54,X

#_08E619: CMP.b #$05
#_08E61B: BNE .dont_fizzle

#_08E61D: BRL SomariaBlock_FizzleAway

.dont_fizzle
#_08E620: LDA.b $74
#_08E622: STA.w $0C72,X

#_08E625: LDA.b $75
#_08E627: STA.w $0280,X

#_08E62A: JSR Ancilla_SetYFrom_DP72

;===================================================================================================

AncillaDraw_SomariaBlock:
#_08E62D: TXY
#_08E62E: INY
#_08E62F: CPY.w $02EC
#_08E632: BNE .not_special_oam_slots

#_08E634: LDA.w $0308
#_08E637: BPL .not_special_oam_slots

#_08E639: LDA.w $0380,X
#_08E63C: CMP.b #$03
#_08E63E: BEQ .not_special_oam_slots

#_08E640: LDA.b $2F
#_08E642: BNE .not_special_oam_slots

#_08E644: LDA.w $0C90,X
#_08E647: JSR Ancilla_AllocateOAMFromRegion_B_or_E

#_08E64A: BRA .prep_coord

.not_special_oam_slots
#_08E64C: LDA.w $0FB3
#_08E64F: BEQ .prep_coord

#_08E651: LDA.w $0C7C,X
#_08E654: BEQ .prep_coord

#_08E656: LDA.w $0385,X
#_08E659: BNE .airborne_slots

#_08E65B: TXY
#_08E65C: INY
#_08E65D: CPY.w $02EC
#_08E660: BNE .prep_coord

#_08E662: LDA.w $0308
#_08E665: BPL .prep_coord

;---------------------------------------------------------------------------------------------------

.airborne_slots
#_08E667: REP #$20

; !HARDCODED and shoulda been a single LDA
#_08E669: LDA.w #$00D0
#_08E66C: CLC
#_08E66D: ADC.w #$0800
#_08E670: STA.b $90

#_08E672: LDA.w #$0034
#_08E675: CLC
#_08E676: ADC.w #$0A20
#_08E679: STA.b $92

#_08E67B: SEP #$20

;---------------------------------------------------------------------------------------------------

.prep_coord
#_08E67D: JSR Ancilla_PrepOAMCoord_adjusted

#_08E680: REP #$20

#_08E682: LDA.w $029E,X
#_08E685: AND.w #$00FF
#_08E688: CMP.w #$0080
#_08E68B: BCC .positive_z

#_08E68D: ORA.w #$FF00

.positive_z
#_08E690: STA.b $04
#_08E692: BEQ .not_max_priority

#_08E694: CMP.w #$FFFF
#_08E697: BEQ .not_max_priority

#_08E699: LDA.w $0380,X
#_08E69C: AND.w #$00FF
#_08E69F: CMP.w #$0003
#_08E6A2: BEQ .not_max_priority

#_08E6A4: LDA.w $0280,X
#_08E6A7: AND.w #$00FF
#_08E6AA: BEQ .not_max_priority

#_08E6AC: LDA.w #$3000
#_08E6AF: STA.b $64

.not_max_priority
#_08E6B1: LDA.w #$0000
#_08E6B4: CLC
#_08E6B5: ADC.b $04

#_08E6B7: EOR.w #$FFFF
#_08E6BA: INC A

#_08E6BB: CLC
#_08E6BC: ADC.b $00
#_08E6BE: STA.b $04

;---------------------------------------------------------------------------------------------------

#_08E6C0: LDA.b $02
#_08E6C2: STA.b $06

#_08E6C4: SEP #$20

#_08E6C6: STZ.b $08

#_08E6C8: PHX

#_08E6C9: LDA.b #$02
#_08E6CB: STA.b $72

#_08E6CD: LDA.w $03A4,X
#_08E6D0: ASL A
#_08E6D1: ASL A
#_08E6D2: TAX

;---------------------------------------------------------------------------------------------------

#_08E6D3: LDY.b #$00

.next_object
#_08E6D5: REP #$20

#_08E6D7: STZ.b $74

#_08E6D9: PHX

#_08E6DA: TXA
#_08E6DB: ASL A
#_08E6DC: TAX

#_08E6DD: LDA.b $04
#_08E6DF: CLC
#_08E6E0: ADC.w .offset_y,X
#_08E6E3: STA.b $00

#_08E6E5: LDA.b $06
#_08E6E7: CLC
#_08E6E8: ADC.w .offset_x,X
#_08E6EB: STA.b $02

#_08E6ED: PLX

#_08E6EE: SEP #$20

#_08E6F0: JSR Ancilla_SetOAM_XY_safe

#_08E6F3: LDA.b #$E9
#_08E6F5: STA.b ($90),Y

#_08E6F7: INY

#_08E6F8: LDA.w .prop,X
#_08E6FB: AND.b #$CF
#_08E6FD: ORA.b $72
#_08E6FF: ORA.b $65
#_08E701: STA.b ($90),Y

#_08E703: INY
#_08E704: PHY

#_08E705: TYA
#_08E706: SEC
#_08E707: SBC.b #$04
#_08E709: LSR A
#_08E70A: LSR A
#_08E70B: TAY

#_08E70C: LDA.b #$00
#_08E70E: ORA.b $75
#_08E710: STA.b ($92),Y

#_08E712: PLY

#_08E713: INX

#_08E714: INC.b $08

#_08E716: LDA.b $08
#_08E718: AND.b #$03
#_08E71A: BNE .next_object

;---------------------------------------------------------------------------------------------------

#_08E71C: PLX

#_08E71D: LDA.w $0380,X
#_08E720: CMP.b #$03
#_08E722: BEQ .exit

#_08E724: LDY.b #$01

.next_object_check
#_08E726: LDA.b ($90),Y
#_08E728: CMP.b #$F0
#_08E72A: BNE .not_off_screen

#_08E72C: INY ; +4
#_08E72D: INY
#_08E72E: INY
#_08E72F: INY
#_08E730: CPY.b #$11
#_08E732: BNE .next_object_check

#_08E734: BRA .terminate

.not_off_screen
#_08E736: LDY.b #$00

.next_oam_check
#_08E738: LDA.b ($92),Y
#_08E73A: AND.b #$01
#_08E73C: BEQ .exit

#_08E73E: INY
#_08E73F: CPY.b #$04
#_08E741: BNE .next_oam_check

.terminate
#_08E743: STZ.w $0646

#_08E746: STZ.w $0C4A,X

#_08E749: TXA
#_08E74A: INC A
#_08E74B: CMP.w $02EC
#_08E74E: BNE .exit

#_08E750: STZ.w $02EC

#_08E753: LDA.w $0308
#_08E756: AND.b #$80
#_08E758: BEQ .exit

#_08E75A: STZ.w $0308

.exit
#_08E75D: RTS

;===================================================================================================

pool SomariaBlock_CheckForSwitch

.offset_y
#_08E75E: dw  -4 ; up
#_08E760: dw   4 ; down
#_08E762: dw   0 ; left
#_08E764: dw   0 ; right

.offset_x
#_08E766: dw   0 ; up
#_08E768: dw   0 ; down
#_08E76A: dw  -4 ; left
#_08E76C: dw   4 ; right

pool off

;---------------------------------------------------------------------------------------------------

SomariaBlock_CheckForSwitch:
#_08E76E: STZ.w $0646

#_08E771: STZ.w $03DB,X

#_08E774: LDY.b #$06

.next_check
#_08E776: LDA.w $0BFA,X
#_08E779: CLC
#_08E77A: ADC.w .offset_y+0,Y
#_08E77D: STA.b $00
#_08E77F: STA.b $72

#_08E781: LDA.w $0C0E,X
#_08E784: ADC.w .offset_y+1,Y
#_08E787: STA.b $01
#_08E789: STA.b $73

#_08E78B: LDA.w $0C04,X
#_08E78E: CLC
#_08E78F: ADC.w .offset_x+0,Y
#_08E792: STA.b $02
#_08E794: STA.b $74

#_08E796: LDA.w $0C18,X
#_08E799: ADC.w .offset_x+1,Y
#_08E79C: STA.b $03
#_08E79E: STA.b $75

#_08E7A0: PHY

#_08E7A1: LDA.w $0280,X
#_08E7A4: PHA

#_08E7A5: JSR Ancilla_CheckTileCollision_targeted

#_08E7A8: PLA
#_08E7A9: STA.w $0280,X

#_08E7AC: PLY

#_08E7AD: LDA.w $03E4,X
#_08E7B0: CMP.b #!TILETYPE_23
#_08E7B2: BEQ .valid_switch

#_08E7B4: CMP.b #!TILETYPE_24
#_08E7B6: BEQ .valid_switch

#_08E7B8: CMP.b #!TILETYPE_25
#_08E7BA: BEQ .valid_switch

; !WTF star tiles that are active on load count too
#_08E7BC: CMP.b #!TILETYPE_3B
#_08E7BE: BNE .not_star_tile

.valid_switch
#_08E7C0: INC.w $03DB,X

.not_star_tile
#_08E7C3: DEY
#_08E7C4: DEY
#_08E7C5: BPL .next_check

;---------------------------------------------------------------------------------------------------

#_08E7C7: LDA.w $03DB,X
#_08E7CA: CMP.b #$04
#_08E7CC: BNE .fail

.succeed
#_08E7CE: CLC

#_08E7CF: RTS

.fail
#_08E7D0: SEC

#_08E7D1: RTS

;===================================================================================================
; TODO 
;===================================================================================================
pool SomariaBlock_HandlePlayerInteraction

.push_speed_positive
#_08E7D2: db  16

.push_speed_negative
#_08E7D3: db -16

;---------------------------------------------------------------------------------------------------

.launch_speed_y
#_08E7D4: db -40
#_08E7D5: db  40
#_08E7D6: db   0
#_08E7D7: db   0

; TODO verify
.unused_a
#_08E7D8: db -32
#_08E7D9: db  32
#_08E7DA: db   0
#_08E7DB: db   0

#_08E7DC: db -16
#_08E7DD: db  16
#_08E7DE: db   0
#_08E7DF: db   0

#_08E7E0: db  -8
#_08E7E1: db   8
#_08E7E2: db   0
#_08E7E3: db   0

;---------------------------------------------------------------------------------------------------

.launch_speed_x
#_08E7E4: db   0
#_08E7E5: db   0
#_08E7E6: db -40
#_08E7E7: db  40

.unused_b
#_08E7E8: db   0
#_08E7E9: db   0
#_08E7EA: db -32
#_08E7EB: db  32

#_08E7EC: db   0
#_08E7ED: db   0
#_08E7EE: db -16
#_08E7EF: db  16

#_08E7F0: db   0
#_08E7F1: db   0
#_08E7F2: db  -8
#_08E7F3: db   8

;---------------------------------------------------------------------------------------------------

.rebound_speed_z
#_08E7F4: db  48
#_08E7F5: db  24
#_08E7F6: db  16
#_08E7F7: db   8

pool off

;---------------------------------------------------------------------------------------------------

SomariaBlock_HandlePlayerInteraction:
#_08E7F8: PHB
#_08E7F9: PHK
#_08E7FA: PLB

#_08E7FB: STX.w $0FA0

#_08E7FE: LDA.w $0394,X
#_08E801: BNE .no_do_somaria

#_08E803: LDA.w $03C5,X
#_08E806: BEQ .not_dash_airborne

#_08E808: BRL .punt_continue

;---------------------------------------------------------------------------------------------------

.not_dash_airborne
#_08E80B: LDA.b $4D
#_08E80D: BNE .no_do_somaria

#_08E80F: LDA.w $0308
#_08E812: AND.b #$01
#_08E814: BNE .no_do_somaria

#_08E816: LDA.w $029E,X
#_08E819: BEQ .grounded

#_08E81B: CMP.b #$FF
#_08E81D: BNE .no_do_somaria

.grounded
#_08E81F: LDA.w $0380,X
#_08E822: BNE .no_do_somaria

#_08E824: LDA.w $0385,X
#_08E827: BNE .no_do_somaria

#_08E829: LDA.b $F0
#_08E82B: AND.b #$0F
#_08E82D: BNE .pressing_dpad

#_08E82F: STA.w $039F,X

#_08E832: STA.b $48

#_08E834: LDA.b #$FF
#_08E836: STA.w $038A,X

#_08E839: LDA.w $0372
#_08E83C: BNE .check_link_collision

#_08E83E: STZ.b $5E

.no_do_somaria
#_08E840: BRL .exit_a

;---------------------------------------------------------------------------------------------------

.pressing_dpad
#_08E843: CMP.w $039F,X
#_08E846: BNE .input_mismatch

#_08E848: LDA.b $5E
#_08E84A: CMP.b #$12
#_08E84C: BNE .check_link_collision

#_08E84E: LDA.b #$81
#_08E850: TSB.b $48
#_08E852: BRA .check_link_collision

.input_mismatch
#_08E854: STA.w $039F,X

#_08E857: STZ.b $5E

;---------------------------------------------------------------------------------------------------

.check_link_collision
#_08E859: LDY.b #$04
#_08E85B: JSR Ancilla_CheckLinkCollision
#_08E85E: BCC .no_do_somaria

#_08E860: LDA.w $0C7C,X
#_08E863: CMP.b $EE
#_08E865: BNE .no_do_somaria

#_08E867: LDA.w $0372
#_08E86A: BEQ .no_punt

#_08E86C: LDA.w $02F1
#_08E86F: CMP.b #$40
#_08E871: BEQ .no_punt

#_08E873: TXA
#_08E874: INC A
#_08E875: CMP.w $02EC
#_08E878: BNE .disable_nearitude

#_08E87A: STZ.w $02EC

;---------------------------------------------------------------------------------------------------

.disable_nearitude
#_08E87D: JSL Link_CancelDash_long

#_08E881: LDA.b #!SFX3_32
#_08E883: JSR Ancilla_SFX3_Pan

#_08E886: BRL .init_dash_bouncing

;---------------------------------------------------------------------------------------------------

.no_punt
#_08E889: STZ.w $0C2C,X
#_08E88C: STZ.w $0C22,X

#_08E88F: LDA.b $F0
#_08E891: AND.b #$0F
#_08E893: STA.w $039F,X

#_08E896: AND.b #$03
#_08E898: BEQ .pushing_left_or_right

#_08E89A: LDY.w .push_speed_positive

#_08E89D: AND.b #$01
#_08E89F: BNE .pushing_right

#_08E8A1: LDY.w .push_speed_negative

.pushing_right
#_08E8A4: TYA
#_08E8A5: STA.w $0C2C,X

#_08E8A8: LDY.b #$02
#_08E8AA: CMP.w .push_speed_positive
#_08E8AD: BNE .set_direction

#_08E8AF: INY
#_08E8B0: BRA .set_direction

.pushing_left_or_right
#_08E8B2: LDY.w .push_speed_positive

#_08E8B5: LDA.b $F0
#_08E8B7: AND.b #$08
#_08E8B9: BEQ .upward_push

#_08E8BB: LDY.w .push_speed_negative

.upward_push
#_08E8BE: TYA
#_08E8BF: STA.w $0C22,X

#_08E8C2: LDY.b #$00
#_08E8C4: CMP.w .push_speed_positive
#_08E8C7: BNE .set_direction

#_08E8C9: INY

;---------------------------------------------------------------------------------------------------

.set_direction
#_08E8CA: TYA
#_08E8CB: STA.w $0C72,X

#_08E8CE: LDA.b $27
#_08E8D0: BEQ .no_recoil

#_08E8D2: LDA.b $28
#_08E8D4: BNE .yes_recoil

.no_recoil
#_08E8D6: JSR Ancilla_CheckTileCollision_Class2
#_08E8D9: BCS .no_tile_collision_here

#_08E8DB: JSR Ancilla_Move_Y
#_08E8DE: JSR Ancilla_Move_X

#_08E8E1: LDA.w $0308
#_08E8E4: AND.b #$80
#_08E8E6: BNE .no_tile_collision_here

#_08E8E8: INC.w $038A,X

#_08E8EB: LDA.w $038A,X
#_08E8EE: AND.b #$07
#_08E8F0: BNE .no_tile_collision_here

#_08E8F2: LDA.b #!SFX2_22
#_08E8F4: JSR Ancilla_SFX2_Pan

.no_tile_collision_here
#_08E8F7: LDA.b #$81
#_08E8F9: STA.b $48

#_08E8FB: LDA.b #$12
#_08E8FD: STA.b $5E

.yes_recoil
#_08E8FF: JSL Sprite_CancelHookshot

.exit_a
#_08E903: PLB

#_08E904: RTL

;---------------------------------------------------------------------------------------------------

.init_dash_bouncing
#_08E905: LDA.b $2F
#_08E907: LSR A
#_08E908: STA.w $0C72,X

#_08E90B: TAY

#_08E90C: LDA.w .launch_speed_y,Y
#_08E90F: STA.w $0C22,X

#_08E912: LDA.w .launch_speed_x,Y
#_08E915: STA.w $0C2C,X

#_08E918: LDA.w .rebound_speed_z
#_08E91B: STA.w $0294,X

#_08E91E: LDA.b #$01
#_08E920: STA.w $03C5,X

#_08E923: STZ.w $029E,X

;---------------------------------------------------------------------------------------------------

.punt_continue
#_08E926: LDA.w $0294,X
#_08E929: SEC
#_08E92A: SBC.b #$02
#_08E92C: STA.w $0294,X

#_08E92F: JSR Ancilla_Move_Y
#_08E932: JSR Ancilla_Move_X
#_08E935: JSR Ancilla_Move_Z

#_08E938: LDA.w $029E,X
#_08E93B: BEQ .hit_ground_running

#_08E93D: CMP.b #$FC
#_08E93F: BCC .exit_b

.hit_ground_running
#_08E941: LDA.b #!SFX2_21
#_08E943: JSR Ancilla_SFX2_Pan

#_08E946: STZ.w $029E,X

#_08E949: LDA.w $03C5,X
#_08E94C: INC A
#_08E94D: STA.w $03C5,X

#_08E950: CMP.b #$04
#_08E952: BNE .max_bounces

#_08E954: STZ.w $0BF0,X
#_08E957: STZ.w $03C5,X
#_08E95A: BRA .exit_b

;---------------------------------------------------------------------------------------------------

.max_bounces
#_08E95C: TAY
#_08E95D: DEY

#_08E95E: LDA.w .rebound_speed_z,Y
#_08E961: STA.w $0294,X

#_08E964: LDA.b $2F
#_08E966: LSR A
#_08E967: STA.b $00

#_08E969: TYA
#_08E96A: ASL A
#_08E96B: ASL A
#_08E96C: CLC
#_08E96D: ADC.b $00
#_08E96F: TAY ; !USELESS

;---------------------------------------------------------------------------------------------------

#_08E970: LDY.b #$00

#_08E972: LDA.w $0C22,X
#_08E975: BPL .y_is_positive

#_08E977: LDY.b #$01

#_08E979: EOR.b #$FF
#_08E97B: INC A

.y_is_positive
#_08E97C: LSR A

#_08E97D: CPY.b #$01
#_08E97F: BNE .restore_y_sign

#_08E981: EOR.b #$FF
#_08E983: INC A

.restore_y_sign
#_08E984: STA.w $0C22,X

;---------------------------------------------------------------------------------------------------

#_08E987: LDY.b #$00

#_08E989: LDA.w $0C2C,X
#_08E98C: BPL .x_is_positive

#_08E98E: LDY.b #$01

#_08E990: EOR.b #$FF
#_08E992: INC A

.x_is_positive
#_08E993: LSR A

#_08E994: CPY.b #$01
#_08E996: BNE .restore_x_sign

#_08E998: EOR.b #$FF
#_08E99A: INC A

.restore_x_sign
#_08E99B: STA.w $0C2C,X

;---------------------------------------------------------------------------------------------------

.exit_b
#_08E99E: PLB

#_08E99F: RTL

;===================================================================================================

pool Ancilla2D_SomariaBlockFizz

.offset_y
#_08E9A0: dw  -4,  -1,  -4
#_08E9A6: dw  -4,  -4,  -4

.offset_x
#_08E9AC: dw  -4,  -1,  -8
#_08E9B2: dw   0,  -6,  -2

.char
#_08E9B8: db $92, $FF, $F9
#_08E9BB: db $F9, $F9, $F9

.prop
#_08E9BE: db $06, $FF, $86
#_08E9C1: db $C6, $86, $C6

pool off

;===================================================================================================

SomariaBlock_FizzleAway:
#_08E9C4: LDA.b $5E
#_08E9C6: CMP.b #$12
#_08E9C8: BNE .dont_reset_speed

#_08E9CA: STZ.b $48
#_08E9CC: STZ.b $5E

.dont_reset_speed
#_08E9CE: STZ.w $0646

#_08E9D1: LDA.b #!ANCILLA_2D
#_08E9D3: STA.w $0C4A,X

#_08E9D6: STZ.w $03B1,X

#_08E9D9: STZ.w $0C54,X
#_08E9DC: STZ.w $0C5E,X

#_08E9DF: STZ.w $039F,X
#_08E9E2: STZ.w $03A4,X

#_08E9E5: STZ.w $03EA,X

#_08E9E8: TXA
#_08E9E9: INC A
#_08E9EA: CMP.w $02EC
#_08E9ED: BNE Ancilla2D_SomariaBlockFizz

#_08E9EF: STZ.w $02EC

#_08E9F2: LDA.w $0308
#_08E9F5: AND.b #$80
#_08E9F7: STA.w $0308

;===================================================================================================

Ancilla2D_SomariaBlockFizz:
#_08E9FA: DEC.w $03B1,X
#_08E9FD: BPL .continue

#_08E9FF: LDA.b #$03
#_08EA01: STA.w $03B1,X

#_08EA04: LDA.w $0C5E,X
#_08EA07: INC A
#_08EA08: STA.w $0C5E,X

#_08EA0B: CMP.b #$03
#_08EA0D: BNE .continue

#_08EA0F: STZ.w $0C4A,X

#_08EA12: RTS

;---------------------------------------------------------------------------------------------------

.continue
#_08EA13: JSR Ancilla_PrepOAMCoord_adjusted

#_08EA16: LDY.b #$00

#_08EA18: LDA.w $029E,X
#_08EA1B: CMP.b #$FF
#_08EA1D: BNE .not_underground

#_08EA1F: LDA.b #$00

.not_underground
#_08EA21: STA.b $04
#_08EA23: BPL .positive_z

#_08EA25: LDY.b #$FF

.positive_z
#_08EA27: STY.b $05

#_08EA29: REP #$20

#_08EA2B: LDA.b $04
#_08EA2D: EOR.w #$FFFF
#_08EA30: INC A
#_08EA31: CLC
#_08EA32: ADC.b $00
#_08EA34: STA.b $04

#_08EA36: LDA.b $02
#_08EA38: STA.b $06

;---------------------------------------------------------------------------------------------------

#_08EA3A: SEP #$20

#_08EA3C: PHX

#_08EA3D: LDA.w $0C5E,X
#_08EA40: ASL A
#_08EA41: TAX

#_08EA42: LDY.b #$00
#_08EA44: STY.b $08

.next_object
#_08EA46: LDA.w .char,X
#_08EA49: CMP.b #$FF
#_08EA4B: BEQ .skip

#_08EA4D: REP #$20

#_08EA4F: PHX

#_08EA50: TXA
#_08EA51: ASL A
#_08EA52: TAX

#_08EA53: LDA.b $04
#_08EA55: CLC
#_08EA56: ADC.w .offset_y,X
#_08EA59: STA.b $00

#_08EA5B: LDA.b $06
#_08EA5D: CLC
#_08EA5E: ADC.w .offset_x,X
#_08EA61: STA.b $02

#_08EA63: PLX

#_08EA64: SEP #$20

#_08EA66: JSR Ancilla_SetOAM_XY

#_08EA69: LDA.w .char,X
#_08EA6C: STA.b ($90),Y

#_08EA6E: INY

#_08EA6F: LDA.w .prop,X
#_08EA72: AND.b #$CF
#_08EA74: ORA.b $65
#_08EA76: STA.b ($90),Y

#_08EA78: INY
#_08EA79: PHY

#_08EA7A: TYA
#_08EA7B: SEC
#_08EA7C: SBC.b #$04
#_08EA7E: LSR A
#_08EA7F: LSR A
#_08EA80: TAY

#_08EA81: LDA.b #$00
#_08EA83: STA.b ($92),Y

#_08EA85: PLY

.skip
#_08EA86: INX

#_08EA87: INC.b $08

#_08EA89: LDA.b $08
#_08EA8B: CMP.b #$02
#_08EA8D: BNE .next_object

;---------------------------------------------------------------------------------------------------

#_08EA8F: PLX

#_08EA90: RTS

;===================================================================================================

pool Ancilla39_SomariaPlatformPoof

.direction
#_08EA91: db $01 ; up
#_08EA92: db $00 ; down
#_08EA93: db $03 ; left
#_08EA94: db $02 ; right

pool off

;---------------------------------------------------------------------------------------------------

Ancilla39_SomariaPlatformPoof:
#_08EA95: DEC.w $03B1,X
#_08EA98: BMI .continue

#_08EA9A: RTS

;---------------------------------------------------------------------------------------------------

.continue
#_08EA9B: STZ.w $0C4A,X

#_08EA9E: LDA.w $0BFA,X
#_08EAA1: STA.b $72

#_08EAA3: LDA.w $0C0E,X
#_08EAA6: STA.b $73

#_08EAA8: LDA.w $0C04,X
#_08EAAB: STA.b $74

#_08EAAD: LDA.w $0C18,X
#_08EAB0: STA.b $75

#_08EAB2: LDA.w $0C7C,X
#_08EAB5: STA.b $BD

#_08EAB7: PHX

#_08EAB8: LDA.b #!SPRITE_ED
#_08EABA: JSL Sprite_SpawnDynamically
#_08EABE: BPL .free_slot

#_08EAC0: BRL .just_draw

;---------------------------------------------------------------------------------------------------

.free_slot
#_08EAC3: STZ.w $02F5

#_08EAC6: LDA.b $72
#_08EAC8: AND.b #$F8
#_08EACA: ORA.b #$04
#_08EACC: STA.w $0D00,Y
#_08EACF: STA.b $72

#_08EAD1: LDA.b $73
#_08EAD3: STA.w $0D20,Y

#_08EAD6: LDA.b $74
#_08EAD8: AND.b #$F8
#_08EADA: ORA.b #$04
#_08EADC: STA.w $0D10,Y
#_08EADF: STA.b $74

#_08EAE1: LDA.b $75
#_08EAE3: STA.w $0D30,Y

#_08EAE6: LDA.b $BD
#_08EAE8: CMP.b #$01

#_08EAEA: REP #$30

#_08EAEC: STZ.b $06

#_08EAEE: BCC .lower_layer

#_08EAF0: LDA.w #$1000
#_08EAF3: STA.b $06

;---------------------------------------------------------------------------------------------------

.lower_layer
#_08EAF5: LDA.b $74
#_08EAF7: AND.w #$01FF
#_08EAFA: LSR A
#_08EAFB: LSR A
#_08EAFC: LSR A
#_08EAFD: STA.b $04

#_08EAFF: LDA.b $72
#_08EB01: AND.w #$01F8
#_08EB04: ASL A
#_08EB05: ASL A
#_08EB06: ASL A
#_08EB07: CLC
#_08EB08: ADC.b $04
#_08EB0A: CLC
#_08EB0B: ADC.b $06
#_08EB0D: TAX

;---------------------------------------------------------------------------------------------------

#_08EB0E: STZ.b $06

#_08EB10: LDA.l $7F1FC0,X
#_08EB14: AND.w #$00F0
#_08EB17: CMP.w #$00B0
#_08EB1A: BEQ .match

#_08EB1C: INC.b $06

#_08EB1E: LDA.l $7F2040,X
#_08EB22: AND.w #$00F0
#_08EB25: CMP.w #$00B0
#_08EB28: BEQ .match

#_08EB2A: INC.b $06

#_08EB2C: LDA.l $7F1FFF,X
#_08EB30: AND.w #$00F0
#_08EB33: CMP.w #$00B0
#_08EB36: BEQ .match

#_08EB38: INC.b $06

.match
#_08EB3A: SEP #$30

#_08EB3C: LDX.b $06

#_08EB3E: LDA.w .direction,X
#_08EB41: STA.w $0DE0,Y

#_08EB44: LDA.b #$00
#_08EB46: STA.w $0F20,Y

#_08EB49: BRA .exit

;---------------------------------------------------------------------------------------------------

.just_draw
#_08EB4B: JSR AncillaDraw_SomariaBlock

.exit
#_08EB4E: PLX

#_08EB4F: RTS

;===================================================================================================

Ancilla2E_SomariaBlockFission:
#_08EB50: DEC.w $03B1,X
#_08EB53: BPL .delay_explosion

#_08EB55: LDA.b #$03
#_08EB57: STA.w $03B1,X

#_08EB5A: LDA.w $0C5E,X
#_08EB5D: INC A
#_08EB5E: STA.w $0C5E,X

#_08EB61: CMP.b #$02
#_08EB63: BNE .delay_explosion

#_08EB65: STZ.w $0C4A,X

#_08EB68: PHX

#_08EB69: JSR SomariaBlock_SpawnBullets

#_08EB6C: PLX

#_08EB6D: RTS

;---------------------------------------------------------------------------------------------------

.delay_explosion
#_08EB6E: JSR Ancilla_PrepOAMCoord_adjusted

#_08EB71: LDY.b #$00

#_08EB73: LDA.w $0380,X
#_08EB76: CMP.b #$03
#_08EB78: BNE .ignore_link_z

#_08EB7A: LDA.b $24
#_08EB7C: CMP.b #$FF
#_08EB7E: BNE .positive_link_z

.ignore_link_z
#_08EB80: LDA.b #$00

.positive_link_z
#_08EB82: CLC
#_08EB83: ADC.w $029E,X
#_08EB86: STA.b $04

#_08EB88: BPL .positive_som_z

#_08EB8A: LDY.b #$FF

.positive_som_z
#_08EB8C: STY.b $05

;---------------------------------------------------------------------------------------------------

#_08EB8E: REP #$20

#_08EB90: LDA.b $04
#_08EB92: EOR.w #$FFFF
#_08EB95: INC A

#_08EB96: CLC
#_08EB97: ADC.b $00
#_08EB99: STA.b $04

#_08EB9B: LDA.b $02
#_08EB9D: STA.b $06


#_08EB9F: SEP #$20

#_08EBA1: PHX

#_08EBA2: LDA.w $0C5E,X
#_08EBA5: ASL A
#_08EBA6: ASL A
#_08EBA7: ASL A
#_08EBA8: TAX

;---------------------------------------------------------------------------------------------------

#_08EBA9: LDY.b #$00
#_08EBAB: STY.b $08

.next_object
#_08EBAD: REP #$20

#_08EBAF: PHX

#_08EBB0: TXA
#_08EBB1: ASL A
#_08EBB2: TAX

#_08EBB3: LDA.b $04
#_08EBB5: CLC
#_08EBB6: ADC.l SomariaBlockFission_offset_y,X
#_08EBBA: STA.b $00

#_08EBBC: LDA.b $06
#_08EBBE: CLC
#_08EBBF: ADC.l SomariaBlockFission_offset_x,X
#_08EBC3: STA.b $02

#_08EBC5: PLX

#_08EBC6: SEP #$20

#_08EBC8: JSR Ancilla_SetOAM_XY

#_08EBCB: LDA.l SomariaBlockFission_char,X
#_08EBCF: STA.b ($90),Y

#_08EBD1: INY

#_08EBD2: LDA.l SomariaBlockFission_prop,X
#_08EBD6: AND.b #$CF
#_08EBD8: ORA.b $65
#_08EBDA: STA.b ($90),Y

#_08EBDC: INY
#_08EBDD: PHY

#_08EBDE: TYA
#_08EBDF: SEC
#_08EBE0: SBC.b #$04
#_08EBE2: LSR A
#_08EBE3: LSR A
#_08EBE4: TAY

#_08EBE5: LDA.b #$00
#_08EBE7: STA.b ($92),Y

#_08EBE9: PLY

#_08EBEA: INX

#_08EBEB: INC.b $08

#_08EBED: LDA.b $08
#_08EBEF: CMP.b #$08
#_08EBF1: BNE .next_object

;---------------------------------------------------------------------------------------------------

#_08EBF3: PLX

#_08EBF4: RTS

;===================================================================================================

pool Ancilla2F_LampFlame

.char
#_08EBF5: db $9C, $9C, $FF, $FF
#_08EBF9: db $A4, $A5, $B2, $B3
#_08EBFD: db $E3, $F3, $FF, $FF

.offset_y_low
#_08EC01: db  -3,   0,   0,   0
#_08EC05: db   0,   0,   8,   8
#_08EC09: db   0,   8,   0,   0

.offset_y_high
#_08EC0D: db  -1,   0,   0,   0
#_08EC11: db   0,   0,   0,   0
#_08EC15: db   0,   0,   0,   0

.offset_x
#_08EC19: db   4,  10,   0,   0
#_08EC1D: db   1,   9,   2,   7
#_08EC21: db   4,   4,   0,   0

pool off

;---------------------------------------------------------------------------------------------------

Ancilla2F_LampFlame:
#_08EC25: JSR Ancilla_PrepOAMCoord_adjusted

#_08EC28: LDA.b $00
#_08EC2A: STA.b $06

#_08EC2C: LDA.b $01
#_08EC2E: STA.b $07

#_08EC30: LDY.b #$00

#_08EC32: LDA.w $0C68,X
#_08EC35: BNE .continue

#_08EC37: STZ.w $0C4A,X

#_08EC3A: RTS

;---------------------------------------------------------------------------------------------------

.continue
#_08EC3B: AND.b #$F8
#_08EC3D: LSR A
#_08EC3E: TAX

.next_object
#_08EC3F: LDA.w .char,X
#_08EC42: CMP.b #$FF
#_08EC44: BEQ .skip

#_08EC46: LDA.w .offset_y_low,X
#_08EC49: CLC
#_08EC4A: ADC.b $06
#_08EC4C: STA.b $00

#_08EC4E: LDA.b $07
#_08EC50: ADC.w .offset_y_high,X
#_08EC53: STA.b $01

#_08EC55: LDA.w .offset_x,X
#_08EC58: CLC
#_08EC59: ADC.b $04
#_08EC5B: STA.b $02

#_08EC5D: LDA.b $05
#_08EC5F: ADC.b #$00
#_08EC61: STA.b $03

#_08EC63: JSR Ancilla_SetOAM_XY

#_08EC66: LDA.w .char,X
#_08EC69: STA.b ($90),Y

#_08EC6B: INY

#_08EC6C: LDA.b #$02
#_08EC6E: ORA.b $65
#_08EC70: STA.b ($90),Y

#_08EC72: INY
#_08EC73: PHY

#_08EC74: TYA
#_08EC75: SEC
#_08EC76: SBC.b #$04
#_08EC78: LSR A
#_08EC79: LSR A
#_08EC7A: TAY

#_08EC7B: LDA.b #$00
#_08EC7D: STA.b ($92),Y

#_08EC7F: PLY

.skip
#_08EC80: INX
#_08EC81: TXA
#_08EC82: AND.b #$03
#_08EC84: BNE .next_object

;---------------------------------------------------------------------------------------------------

#_08EC86: BRL Ancilla_RestoreIndex

;===================================================================================================


pool Ancilla41_WaterfallSplash

.char
#_08EC89: db $C0, $FF
#_08EC8B: db $AC, $AC
#_08EC8D: db $AE, $AE
#_08EC8F: db $BF, $BF

.prop
#_08EC91: db $84, $FF
#_08EC93: db $84, $C4
#_08EC95: db $84, $C4
#_08EC97: db $84, $C4

.size
#_08EC99: db $02, $FF
#_08EC9B: db $02, $02
#_08EC9D: db $02, $02
#_08EC9F: db $00, $00

;---------------------------------------------------------------------------------------------------

.offset_y_low
#_08ECA1: db  -4,   0
#_08ECA3: db  -5,  -5
#_08ECA5: db  -3,  -3
#_08ECA7: db  12,  12

.offset_y_high
#_08ECA9: db  -1,   0
#_08ECAB: db  -1,  -1
#_08ECAD: db  -1,  -1
#_08ECAF: db   0,   0

.offset_x_low
#_08ECB1: db   0,   0
#_08ECB3: db  -4,   4
#_08ECB5: db  -7,   7
#_08ECB7: db  -9,  17

.offset_x_high
#_08ECB9: db   0,   0
#_08ECBB: db  -1,   0
#_08ECBD: db  -1,   0
#_08ECBF: db  -1,   0

pool off

;---------------------------------------------------------------------------------------------------

Ancilla41_WaterfallSplash:
#_08ECC1: LDY.b #$00

#_08ECC3: LDA.b $1B
#_08ECC5: BNE .indoors

#_08ECC7: LDY.b #$01

.indoors
#_08ECC9: JSR Ancilla_CheckForEntranceTrigger
#_08ECCC: BCS .splish_splash

#_08ECCE: STZ.w $0C4A,X

#_08ECD1: RTS

;---------------------------------------------------------------------------------------------------

.splish_splash
#_08ECD2: LDA.b $11
#_08ECD4: BNE .skip_sfx

#_08ECD6: LDA.b $1A
#_08ECD8: AND.b #$07
#_08ECDA: BNE .skip_sfx

#_08ECDC: LDA.b #!SFX2_1C
#_08ECDE: JSR Ancilla_SFX2_Near

.skip_sfx
#_08ECE1: LDA.b #$01
#_08ECE3: STA.w $0351

; !WTF
#_08ECE6: LDA.b $2E
#_08ECE8: SEC
#_08ECE9: SBC.b #$06
#_08ECEB: BMI .dont_reset_anim

#_08ECED: STA.b $2E

.dont_reset_anim
#_08ECEF: LDA.w $0C68,X
#_08ECF2: BNE .anim_delay

#_08ECF4: LDA.b #$02
#_08ECF6: STA.w $0C68,X

#_08ECF9: LDA.w $0C5E,X
#_08ECFC: INC A
#_08ECFD: AND.b #$03
#_08ECFF: STA.w $0C5E,X

;---------------------------------------------------------------------------------------------------

.anim_delay
#_08ED02: LDA.b $1B
#_08ED04: BEQ .set_y_coord

#_08ED06: LDA.b $20
#_08ED08: CMP.b #$38
#_08ED0A: BCS .set_y_coord

#_08ED0C: LDA.b #$38
#_08ED0E: STA.w $0BFA,X

#_08ED11: LDA.b #$0D
#_08ED13: STA.w $0C0E,X
#_08ED16: BRA .set_x_coord

.set_y_coord
#_08ED18: LDA.b $20
#_08ED1A: STA.w $0BFA,X

#_08ED1D: LDA.b $21
#_08ED1F: STA.w $0C0E,X

.set_x_coord
#_08ED22: LDA.b $22
#_08ED24: STA.w $0C04,X

#_08ED27: LDA.b $23
#_08ED29: STA.w $0C18,X

;---------------------------------------------------------------------------------------------------

#_08ED2C: JSR Ancilla_PrepOAMCoord_adjusted

#_08ED2F: LDA.b $24
#_08ED31: BPL .positive_link_z

#_08ED33: LDA.b #$00

.positive_link_z
#_08ED35: REP #$20

#_08ED37: AND.w #$00FF
#_08ED3A: EOR.w #$FFFF
#_08ED3D: INC A

#_08ED3E: CLC
#_08ED3F: ADC.b $00
#_08ED41: STA.b $00
#_08ED43: STA.b $06

;---------------------------------------------------------------------------------------------------

#_08ED45: SEP #$20

#_08ED47: LDA.w $0C5E,X
#_08ED4A: ASL A
#_08ED4B: TAX

#_08ED4C: LDY.b #$00

.next_object
#_08ED4E: LDA.w .char,X
#_08ED51: CMP.b #$FF
#_08ED53: BEQ .skip

#_08ED55: LDA.w .offset_y_low,X
#_08ED58: CLC
#_08ED59: ADC.b $06
#_08ED5B: STA.b $00

#_08ED5D: LDA.w .offset_y_high,X
#_08ED60: ADC.b $07
#_08ED62: STA.b $01

#_08ED64: LDA.w .offset_x_low,X
#_08ED67: CLC
#_08ED68: ADC.b $04
#_08ED6A: STA.b $02

#_08ED6C: LDA.w .offset_x_high,X
#_08ED6F: ADC.b $05
#_08ED71: STA.b $03

#_08ED73: JSR Ancilla_SetOAM_XY

#_08ED76: LDA.w .char,X
#_08ED79: STA.b ($90),Y

#_08ED7B: INY

#_08ED7C: LDA.w .prop,X
#_08ED7F: ORA.b #$30
#_08ED81: STA.b ($90),Y

#_08ED83: INY
#_08ED84: PHY

#_08ED85: TYA
#_08ED86: SEC
#_08ED87: SBC.b #$04
#_08ED89: LSR A
#_08ED8A: LSR A
#_08ED8B: TAY

#_08ED8C: LDA.w .size,X
#_08ED8F: STA.b ($92),Y

#_08ED91: PLY

.skip
#_08ED92: INX

#_08ED93: TXA
#_08ED94: AND.b #$01
#_08ED96: BNE .next_object

;---------------------------------------------------------------------------------------------------

#_08ED98: BRL Ancilla_RestoreIndex

;===================================================================================================

Gravestone_Move:
#_08ED9B: PHB
#_08ED9C: PHK
#_08ED9D: PLB

#_08ED9E: LDA.b $11
#_08EDA0: BNE .exit

#_08EDA2: LDA.b #$F8
#_08EDA4: STA.w $0C22,X

#_08EDA7: JSR Ancilla_Move_Y
#_08EDAA: JSR Gravestone_ActAsBarrier

#_08EDAD: LDA.w $038A,X
#_08EDB0: STA.b $00

#_08EDB2: LDA.w $038F,X
#_08EDB5: STA.b $01

#_08EDB7: LDA.w $0BFA,X
#_08EDBA: STA.b $02

#_08EDBC: LDA.w $0C0E,X
#_08EDBF: STA.b $03

;---------------------------------------------------------------------------------------------------

#_08EDC1: REP #$20

#_08EDC3: LDA.b $02
#_08EDC5: CMP.b $00

#_08EDC7: SEP #$20
#_08EDC9: BCS .exit

#_08EDCB: STZ.w $0C4A,X

#_08EDCE: STZ.w $03E9

#_08EDD1: LDA.b $48
#_08EDD3: AND.b #$FB
#_08EDD5: STA.b $48

#_08EDD7: LDA.w $03BA,X
#_08EDDA: STA.b $72

#_08EDDC: LDA.w $03B6,X
#_08EDDF: STA.b $73

#_08EDE1: REP #$20

#_08EDE3: LDA.b $72
#_08EDE5: STA.w $0698

;---------------------------------------------------------------------------------------------------
; TODO analyze
#_08EDE8: LDY.b #$48

#_08EDEA: CMP.w #$0532
#_08EDED: BEQ .no_update_change

#_08EDEF: LDY.b #$60
#_08EDF1: CMP.w #$0488
#_08EDF4: BEQ .no_update_change

#_08EDF6: LDY.b #$40

.no_update_change
#_08EDF8: TYA
#_08EDF9: AND.w #$00FF
#_08EDFC: STA.w $0692

#_08EDFF: SEP #$20

#_08EE01: PHX
#_08EE02: JSL Overworld_DoMapUpdate32x32_long
#_08EE06: PLX

#_08EE07: BRA .exit ; useless

;---------------------------------------------------------------------------------------------------

.exit
#_08EE09: PLB

#_08EE0A: RTL

;===================================================================================================

pool Ancilla24_Gravestone

.char
#_08EE0B: db $C8, $C8, $D8, $D8

.prop
#_08EE0F: db $00, $40, $00, $40

pool off

;---------------------------------------------------------------------------------------------------

Ancilla24_Gravestone:
#_08EE13: PHX

#_08EE14: JSR Ancilla_PrepOAMCoord_adjusted

#_08EE17: REP #$20

#_08EE19: LDA.b $02
#_08EE1B: STA.b $06

#_08EE1D: SEP #$20

#_08EE1F: LDA.b #$10
#_08EE21: JSL OAM_AllocateFromRegionB

;---------------------------------------------------------------------------------------------------

#_08EE25: LDY.b #$00
#_08EE27: TYX

.next_object
#_08EE28: JSR Ancilla_SetOAM_XY

#_08EE2B: LDA.w .char,X
#_08EE2E: STA.b ($90),Y

#_08EE30: INY

#_08EE31: LDA.w .prop,X
#_08EE34: ORA.b #$3D
#_08EE36: STA.b ($90),Y

#_08EE38: INY
#_08EE39: PHY

#_08EE3A: TYA
#_08EE3B: SEC
#_08EE3C: SBC.b #$04
#_08EE3E: LSR A
#_08EE3F: LSR A
#_08EE40: TAY

#_08EE41: LDA.b #$02
#_08EE43: STA.b ($92),Y

#_08EE45: PLY

#_08EE46: INX

#_08EE47: REP #$20

#_08EE49: LDA.b $02
#_08EE4B: CLC
#_08EE4C: ADC.w #$0010
#_08EE4F: STA.b $02

#_08EE51: CPX.b #$02
#_08EE53: BNE .left_side

#_08EE55: LDA.b $00
#_08EE57: CLC
#_08EE58: ADC.w #$0008
#_08EE5B: STA.b $00

#_08EE5D: LDA.b $06
#_08EE5F: STA.b $02

.left_side
#_08EE61: SEP #$20

#_08EE63: CPX.b #$04
#_08EE65: BNE .next_object

;---------------------------------------------------------------------------------------------------

#_08EE67: PLX

#_08EE68: RTS

;===================================================================================================

Gravestone_ActAsBarrier:
#_08EE69: LDA.w $0BFA,X
#_08EE6C: STA.b $00

#_08EE6E: LDA.w $0C0E,X
#_08EE71: STA.b $01

#_08EE73: LDA.w $0C04,X
#_08EE76: STA.b $02

#_08EE78: LDA.w $0C18,X
#_08EE7B: STA.b $03

;---------------------------------------------------------------------------------------------------

#_08EE7D: REP #$20

#_08EE7F: LDA.b $00
#_08EE81: CLC
#_08EE82: ADC.w #$0018
#_08EE85: STA.b $04

#_08EE87: LDA.b $02
#_08EE89: CLC
#_08EE8A: ADC.w #$0020
#_08EE8D: STA.b $06

#_08EE8F: LDA.b $20
#_08EE91: CLC
#_08EE92: ADC.w #$0008
#_08EE95: STA.b $08

;---------------------------------------------------------------------------------------------------

#_08EE97: CMP.b $00
#_08EE99: BCC .not_close

#_08EE9B: CMP.b $04
#_08EE9D: BCS .not_close

#_08EE9F: LDA.b $22
#_08EEA1: CLC
#_08EEA2: ADC.w #$0008
#_08EEA5: CMP.b $02
#_08EEA7: BCC .not_close

#_08EEA9: CMP.b $06
#_08EEAB: BCS .not_close

;---------------------------------------------------------------------------------------------------

#_08EEAD: LDA.b $08
#_08EEAF: SEC
#_08EEB0: SBC.b $04
#_08EEB2: BPL .link_below

#_08EEB4: EOR.w #$FFFF
#_08EEB7: INC A

.link_below
#_08EEB8: STA.b $0A

#_08EEBA: CLC
#_08EEBB: ADC.b $20
#_08EEBD: STA.b $20

#_08EEBF: LDA.b $30
#_08EEC1: CMP.w #$0080
#_08EEC4: BCC .sign_correct

#_08EEC6: ORA.w #$FF00

.sign_correct
#_08EEC9: STA.b $08

;---------------------------------------------------------------------------------------------------

#_08EECB: LDA.b $0A
#_08EECD: CLC
#_08EECE: ADC.b $08
#_08EED0: AND.w #$00FF
#_08EED3: STA.b $08

#_08EED5: LDA.b $30
#_08EED7: AND.w #$FF00
#_08EEDA: ORA.b $08
#_08EEDC: STA.b $30

#_08EEDE: LDA.w #$0004
#_08EEE1: TSB.b $48

;---------------------------------------------------------------------------------------------------

.not_close
#_08EEE3: SEP #$20

#_08EEE5: LDA.b $2F
#_08EEE7: BEQ .exit

#_08EEE9: LDA.b $48
#_08EEEB: AND.b #$FB
#_08EEED: STA.b $48

.exit
#_08EEEF: RTS

;===================================================================================================

pool AncillaDraw_SkullWoodsFlame

.flame_offset_y_low
#_08EEF0: db   0
#_08EEF1: db   0
#_08EEF2: db   0
#_08EEF3: db  -3

.flame_offset_y_high
#_08EEF4: db   0
#_08EEF5: db   0
#_08EEF6: db   0
#_08EEF7: db  -1

.flame_char
#_08EEF8: db $8E
#_08EEF9: db $A0
#_08EEFA: db $A2
#_08EEFB: db $A4

.flame_prop
#_08EEFC: db $02
#_08EEFD: db $02
#_08EEFE: db $02
#_08EEFF: db $00

pool off

;===================================================================================================

pool AncillaDraw_SkullWoodsBlast

.blast_char
#_08EF00: db $86, $86, $86, $FF, $FF, $FF
#_08EF06: db $86, $86, $86, $86, $86, $86
#_08EF0C: db $8A, $8A, $8A, $8A, $8A, $8A
#_08EF12: db $9B, $9B, $9B, $9B, $9B, $9B

.blast_prop
#_08EF18: db $00, $00, $00, $00, $00, $00
#_08EF1E: db $00, $00, $00, $00, $00, $00
#_08EF24: db $00, $00, $00, $00, $00, $00
#_08EF2A: db $80, $40, $40, $80, $40, $00

.blast_size
#_08EF30: db $02, $02, $02, $02, $01, $01
#_08EF36: db $02, $02, $02, $02, $02, $02
#_08EF3C: db $02, $02, $02, $02, $02, $02
#_08EF42: db $00, $00, $00, $00, $00, $00

.blast_offset_y
#_08EF48: dw -31, -24, -22,  -1,  -1,  -1
#_08EF54: dw -37, -32, -32, -23, -16, -14
#_08EF60: dw -37, -32, -32, -23, -16, -14
#_08EF6C: dw -35, -29, -28, -20, -13, -11

.blast_offset_x
#_08EF78: dw -13, -21, -10,  -1,  -1,  -1
#_08EF84: dw -16, -27,  -4, -16,  -6, -25
#_08EF90: dw -16, -27,  -4, -16,  -6, -25
#_08EF9C: dw -13,  -5, -27, -11, -22,  -3

;---------------------------------------------------------------------------------------------------

.blast_data_index
#_08EFA8: db $00
#_08EFA9: db $06
#_08EFAA: db $0C
#_08EFAB: db $12

pool off

;===================================================================================================

Ancilla34_SkullWoodsFire:
#_08EFAC: LDA.l $7F0010
#_08EFB0: BEQ .inactive

#_08EFB2: LDA.w $0C5E,X
#_08EFB5: CMP.b #$04
#_08EFB7: BEQ .inactive

#_08EFB9: DEC.w $03B1,X
#_08EFBC: BPL .inactive

#_08EFBE: LDA.b #$05
#_08EFC0: STA.w $03B1,X

#_08EFC3: INC.w $0C5E,X

.inactive
#_08EFC6: LDX.b #$03
#_08EFC8: LDY.b #$00

;===================================================================================================

SkullWoodsFlame_DoNext:
#_08EFCA: LDA.l $7F0008,X
#_08EFCE: DEC A
#_08EFCF: STA.l $7F0008,X
#_08EFD3: BMI .reset_flame_index

.only_flame_draw
#_08EFD5: BRL AncillaDraw_SkullWoodsFlame

;---------------------------------------------------------------------------------------------------

.reset_flame_index
#_08EFD8: LDA.b #$05
#_08EFDA: STA.l $7F0008,X

#_08EFDE: LDA.l $7F0000,X
#_08EFE2: CMP.b #$80
#_08EFE4: BEQ .only_flame_draw

#_08EFE6: INC A
#_08EFE7: STA.l $7F0000,X
#_08EFEB: BEQ .reset_control

#_08EFED: CMP.b #$04
#_08EFEF: BNE .only_flame_draw

#_08EFF1: LDA.b #$00
#_08EFF3: STA.l $7F0000,X

;---------------------------------------------------------------------------------------------------

.reset_control
#_08EFF7: REP #$20

#_08EFF9: LDA.l $7F0018
#_08EFFD: SEC
#_08EFFE: SBC.w #$0008
#_08F001: STA.l $7F0018

#_08F005: CMP.w #$00C8
#_08F008: BCS .skip_sfx

#_08F00A: LDA.w #$0098
#_08F00D: SEC
#_08F00E: SBC.b $E2
#_08F010: STA.b $00

#_08F012: SEP #$20

#_08F014: LDA.l $7F0010
#_08F018: CMP.b #$01
#_08F01A: BEQ .skip_sfx

#_08F01C: LDA.b #$01
#_08F01E: STA.l $7F0010

#_08F022: LDA.b $00
#_08F024: JSR Ancilla_SetPanRelativeCoordinates
#_08F027: ORA.b #!SFX2_0C
#_08F029: STA.w $012E

;---------------------------------------------------------------------------------------------------

.skip_sfx
#_08F02C: REP #$20

#_08F02E: LDA.l $7F0018
#_08F032: CMP.w #$00A8
#_08F035: BCS .dont_terminate

#_08F037: LDA.l $7F0000,X
#_08F03B: AND.w #$FF00
#_08F03E: ORA.w #$0080
#_08F041: STA.l $7F0000,X

.dont_terminate
#_08F045: PHX

#_08F046: TXA
#_08F047: ASL A
#_08F048: TAX

#_08F049: LDA.l $7F001A
#_08F04D: STA.l $7F0030,X

#_08F051: LDA.l $7F0018
#_08F055: STA.l $7F0020,X

#_08F059: PLX

#_08F05A: SEP #$20

#_08F05C: LDA.w $012E
#_08F05F: BNE AncillaDraw_SkullWoodsFlame

#_08F061: LDA.l $7F001A
#_08F065: SEC
#_08F066: SBC.b $E2

#_08F068: JSR Ancilla_SetPanRelativeCoordinates
#_08F06B: ORA.b #!SFX2_2A
#_08F06D: STA.w $012E

;===================================================================================================

AncillaDraw_SkullWoodsFlame:
#_08F070: SEP #$20

#_08F072: PHX

#_08F073: LDA.l $7F0000,X
#_08F077: BPL .continue_with_flame

#_08F079: BRL .skip_flame

;---------------------------------------------------------------------------------------------------

.continue_with_flame
#_08F07C: PHY

#_08F07D: TAY

#_08F07E: LDA.w .flame_offset_y_low,Y
#_08F081: STA.b $04

#_08F083: LDA.w .flame_offset_y_high,Y
#_08F086: STA.b $05

#_08F088: LDA.w .flame_char,Y
#_08F08B: STA.b $06

#_08F08D: LDA.w .flame_prop,Y
#_08F090: STA.b $07

#_08F092: TXA
#_08F093: ASL A
#_08F094: TAX

;---------------------------------------------------------------------------------------------------

#_08F095: REP #$20

#_08F097: LDA.l $7F0020,X
#_08F09B: SEC
#_08F09C: SBC.b $E8

#_08F09E: CLC
#_08F09F: ADC.b $04
#_08F0A1: STA.b $00

#_08F0A3: LDA.l $7F0030,X
#_08F0A7: SEC
#_08F0A8: SBC.b $E2
#_08F0AA: STA.b $02

#_08F0AC: CLC
#_08F0AD: ADC.w #$0008
#_08F0B0: STA.b $08

#_08F0B2: SEP #$20

#_08F0B4: PLY

#_08F0B5: JSR Ancilla_SetOAM_XY

#_08F0B8: LDA.b $06
#_08F0BA: STA.b ($90),Y

#_08F0BC: INY

#_08F0BD: LDA.b #$32
#_08F0BF: STA.b ($90),Y

#_08F0C1: INY
#_08F0C2: PHY

#_08F0C3: TYA
#_08F0C4: SEC
#_08F0C5: SBC.b #$04
#_08F0C7: LSR A
#_08F0C8: LSR A
#_08F0C9: TAY

#_08F0CA: LDA.b $07
#_08F0CC: STA.b ($92),Y

#_08F0CE: PLY

#_08F0CF: CMP.b #$02
#_08F0D1: BEQ .skip_flame

;---------------------------------------------------------------------------------------------------

#_08F0D3: REP #$20

#_08F0D5: LDA.b $08
#_08F0D7: STA.b $02

#_08F0D9: SEP #$20

#_08F0DB: JSR Ancilla_SetOAM_XY

#_08F0DE: LDA.b $06
#_08F0E0: INC A
#_08F0E1: STA.b ($90),Y

#_08F0E3: INY

#_08F0E4: LDA.b #$32
#_08F0E6: STA.b ($90),Y

#_08F0E8: INY
#_08F0E9: PHY

#_08F0EA: TYA
#_08F0EB: SEC
#_08F0EC: SBC.b #$04
#_08F0EE: LSR A
#_08F0EF: LSR A
#_08F0F0: TAY

#_08F0F1: LDA.b $07
#_08F0F3: STA.b ($92),Y

#_08F0F5: PLY

;---------------------------------------------------------------------------------------------------

.skip_flame
#_08F0F6: PLX
#_08F0F7: DEX
#_08F0F8: BMI AncillaDraw_SkullWoodsBlast

#_08F0FA: BRL SkullWoodsFlame_DoNext

;===================================================================================================

AncillaDraw_SkullWoodsBlast:
#_08F0FD: LDX.b #$03

.find_blast
#_08F0FF: LDA.l $7F0000,X
#_08F103: BPL .one_active

#_08F105: DEX
#_08F106: BPL .find_blast

#_08F108: LDX.w $0FA0
#_08F10B: STZ.w $0C4A,X

#_08F10E: RTS

.one_active
#_08F10F: LDX.w $0FA0

#_08F112: LDA.l $7F0010
#_08F116: BEQ .exit

#_08F118: LDA.w $0C5E,X
#_08F11B: CMP.b #$04
#_08F11D: BEQ .exit

#_08F11F: TAX

#_08F120: LDA.w .blast_data_index,X
#_08F123: TAX

#_08F124: STZ.b $08

;---------------------------------------------------------------------------------------------------

.next_object
#_08F126: LDA.w .blast_char,X
#_08F129: CMP.b #$FF
#_08F12B: BEQ .skip

#_08F12D: PHX

#_08F12E: TXA
#_08F12F: ASL A
#_08F130: TAX

#_08F131: REP #$20

#_08F133: LDA.w #$00C8
#_08F136: SEC
#_08F137: SBC.b $E8

#_08F139: CLC
#_08F13A: ADC.w .blast_offset_y,X
#_08F13D: STA.b $00

#_08F13F: LDA.w #$00A8
#_08F142: SEC
#_08F143: SBC.b $E2

#_08F145: CLC
#_08F146: ADC.w .blast_offset_x,X
#_08F149: STA.b $02

#_08F14B: SEP #$20

#_08F14D: PLX

#_08F14E: JSR Ancilla_SetOAM_XY

#_08F151: LDA.w .blast_char,X
#_08F154: STA.b ($90),Y

#_08F156: INY

#_08F157: LDA.w .blast_prop,X
#_08F15A: ORA.b #$30
#_08F15C: ORA.b #$02
#_08F15E: STA.b ($90),Y

#_08F160: INY
#_08F161: PHY

#_08F162: TYA
#_08F163: SEC
#_08F164: SBC.b #$04
#_08F166: LSR A
#_08F167: LSR A
#_08F168: TAY

#_08F169: LDA.w .blast_size,X
#_08F16C: STA.b ($92),Y

#_08F16E: PLY

.skip
#_08F16F: INX

#_08F170: INC.b $08

#_08F172: LDA.b $08
#_08F174: CMP.b #$06
#_08F176: BNE .next_object

;---------------------------------------------------------------------------------------------------

.exit
#_08F178: BRL Ancilla_RestoreIndex

;===================================================================================================

pool Ancilla3A_BigBombExplosion

.offset_y
#_08F17B: dw   0, -16, -24, -16
#_08F183: dw   0,   0,  16,  24
#_08F18B: dw  16

.offset_x
#_08F18D: dw   0, -16,   0,  16
#_08F195: dw -24,  24, -16,   0
#_08F19D: dw  16

pool off

;---------------------------------------------------------------------------------------------------

Ancilla3A_BigBombExplosion:
#_08F19F: LDA.b $11
#_08F1A1: BNE .just_draw

#_08F1A3: DEC.w $039F,X

#_08F1A6: LDA.w $039F,X
#_08F1A9: BNE .just_draw

#_08F1AB: INC.w $0C5E,X

#_08F1AE: LDA.w $0C5E,X
#_08F1B1: CMP.b #$02
#_08F1B3: BNE .skip_sfx

#_08F1B5: LDA.b #!SFX2_0C
#_08F1B7: JSR Ancilla_SFX2_Pan

.skip_sfx
#_08F1BA: LDA.w $0C5E,X
#_08F1BD: CMP.b #$0B
#_08F1BF: BNE .dont_terminate

#_08F1C1: STZ.w $0C4A,X

#_08F1C4: RTS

;---------------------------------------------------------------------------------------------------

.dont_terminate
#_08F1C5: TAY
#_08F1C6: LDA.w Bomb_timer,Y
#_08F1C9: STA.w $039F,X

.just_draw
#_08F1CC: LDA.b #$08
#_08F1CE: STA.b $09

#_08F1D0: LDA.b #$30
#_08F1D2: STA.b $65
#_08F1D4: STZ.b $64

#_08F1D6: STZ.b $0A

#_08F1D8: LDA.b #$32
#_08F1DA: STA.b $0B

#_08F1DC: LDA.w $0C5E,X
#_08F1DF: TAY

#_08F1E0: LDA.w BombDraw_object_count,Y
#_08F1E3: STA.b $08

#_08F1E5: LDA.w Bomb_anim_step,Y
#_08F1E8: TAY

#_08F1E9: LDA.w BombDraw_data_offset,Y
#_08F1EC: ASL A
#_08F1ED: TAY

#_08F1EE: ASL A
#_08F1EF: STA.b $04
#_08F1F1: STZ.b $05

#_08F1F3: TYA
#_08F1F4: STA.w $0C54,X

;---------------------------------------------------------------------------------------------------

#_08F1F7: LDY.b #$00

.next_object
#_08F1F9: PHX
#_08F1FA: PHY

#_08F1FB: LDA.w $0BFA,X
#_08F1FE: STA.b $00

#_08F200: LDA.w $0C0E,X
#_08F203: STA.b $01

#_08F205: LDA.w $0C04,X
#_08F208: STA.b $02

#_08F20A: LDA.w $0C18,X
#_08F20D: STA.b $03

#_08F20F: LDA.b $09
#_08F211: ASL A
#_08F212: TAY

#_08F213: REP #$20

#_08F215: LDA.b $00
#_08F217: CLC
#_08F218: ADC.w .offset_y,Y

#_08F21B: SEC
#_08F21C: SBC.b $E8
#_08F21E: STA.b $00

#_08F220: LDA.b $02
#_08F222: CLC
#_08F223: ADC.w .offset_x,Y

#_08F226: SEC
#_08F227: SBC.b $E2
#_08F229: STA.b $02

#_08F22B: SEP #$20

#_08F22D: PLY

#_08F22E: LDA.w $0C54,X
#_08F231: TAX

#_08F232: LDA.b $01
#_08F234: BNE .skip

#_08F236: LDA.b $03
#_08F238: BNE .skip

;---------------------------------------------------------------------------------------------------

#_08F23A: PHX
#_08F23B: PHY

#_08F23C: LDA.b #$18
#_08F23E: JSR Ancilla_AllocateOAMFromRegion_A_or_D_or_F

#_08F241: PLY
#_08F242: PLX

#_08F243: LDA.b $00
#_08F245: STA.b $0C

#_08F247: LDA.b $01
#_08F249: STA.b $0D

#_08F24B: LDA.b $02
#_08F24D: STA.b $0E

#_08F24F: LDA.b $03
#_08F251: STA.b $0F

#_08F253: STZ.b $06
#_08F255: STZ.b $07

#_08F257: JSR AncillaDraw_Explosion

;---------------------------------------------------------------------------------------------------

.skip
#_08F25A: PLX

#_08F25B: DEC.b $09
#_08F25D: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_08F25F: LDA.w $0C5E,X
#_08F262: CMP.b #$03
#_08F264: BNE .exit

#_08F266: LDA.w $039F,X
#_08F269: CMP.b #$01
#_08F26B: BNE .exit

#_08F26D: LDA.w $0BFA,X
#_08F270: STA.b $00

#_08F272: LDA.w $0C0E,X
#_08F275: STA.b $01

#_08F277: LDA.w $0C04,X
#_08F27A: STA.b $02

#_08F27C: LDA.w $0C18,X
#_08F27F: STA.b $03

#_08F281: PHX

#_08F282: JSL Bomb_CheckForDestructibles

#_08F286: PLX

#_08F287: LDA.b #$00
#_08F289: STA.l $7EF3CC

.exit
#_08F28D: RTS

;===================================================================================================

pool RevivalFairy_Main

.timer
#_08F28E: db   0, 144

.char
#_08F290: db $4B, $4D, $49, $47, $49

pool off

;---------------------------------------------------------------------------------------------------

RevivalFairy_Main:
#_08F295: PHB
#_08F296: PHK
#_08F297: PLB

#_08F298: LDX.b #$00

#_08F29A: LDA.w $0C54,X
#_08F29D: BEQ .emerging

#_08F29F: CMP.b #$03
#_08F2A1: BNE .emerged

#_08F2A3: BRL .finish_up

;---------------------------------------------------------------------------------------------------

.emerging
#_08F2A6: DEC.w $039F,X

#_08F2A9: LDA.w $039F,X
#_08F2AC: BNE .sprinkling

#_08F2AE: INC.w $0C54,X

#_08F2B1: LDY.w $0C54,X

#_08F2B4: LDA.w .timer,Y
#_08F2B7: STA.w $039F,X

#_08F2BA: STZ.w $0380,X
#_08F2BD: STZ.w $0294,X

#_08F2C0: BRL .draw

;---------------------------------------------------------------------------------------------------

.sprinkling
#_08F2C3: JSR Ancilla_Move_Z

#_08F2C6: BRL .draw

;---------------------------------------------------------------------------------------------------

.emerged
#_08F2C9: CMP.b #$01
#_08F2CB: BNE .fly_away_now

#_08F2CD: DEC.w $039F,X
#_08F2D0: LDA.w $039F,X
#_08F2D3: BNE .busy_sprinkling

#_08F2D5: INC.w $0C54,X

#_08F2D8: STZ.w $0294,X
#_08F2DB: STZ.w $0C2C,X

#_08F2DE: BRL .draw

;---------------------------------------------------------------------------------------------------

.busy_sprinkling
#_08F2E1: CMP.b #$4F
#_08F2E3: BEQ .do_sprinkle

#_08F2E5: CMP.b #$8F
#_08F2E7: BNE .dont_sprinkle

.do_sprinkle
#_08F2E9: INC.w $0385,X

#_08F2EC: LDA.b #!SFX2_31
#_08F2EE: JSR Ancilla_SFX2_Pan

.dont_sprinkle
#_08F2F1: LDA.w $0385,X
#_08F2F4: BEQ .not_sprinkling

#_08F2F6: DEC.w $0394,X
#_08F2F9: BPL .not_sprinkling

#_08F2FB: LDA.b #$05
#_08F2FD: STA.w $0394,X

#_08F300: INC.w $0C5E,X

#_08F303: LDA.w $0C5E,X
#_08F306: CMP.b #$03
#_08F308: BNE .not_sprinkling

#_08F30A: STZ.w $0C5E,X
#_08F30D: STZ.w $0385,X

;---------------------------------------------------------------------------------------------------

.not_sprinkling
#_08F310: LDY.b #$FF

#_08F312: LDA.w $0380,X
#_08F315: BEQ .descending

#_08F317: LDY.b #$01

.descending
#_08F319: STY.b $00

#_08F31B: LDA.w $0294,X
#_08F31E: CLC
#_08F31F: ADC.b $00
#_08F321: STA.w $0294,X
#_08F324: BPL .positive_z

#_08F326: EOR.b #$FF
#_08F328: INC A

.positive_z
#_08F329: CMP.b #$08
#_08F32B: BNE .dont_toggle_z

#_08F32D: LDA.w $0380,X
#_08F330: EOR.b #$01
#_08F332: STA.w $0380,X

.dont_toggle_z
#_08F335: JSR Ancilla_Move_Z

#_08F338: BRA .draw

;---------------------------------------------------------------------------------------------------

.fly_away_now
#_08F33A: CMP.b #$02
#_08F33C: BNE .draw

#_08F33E: LDA.w $0294,X
#_08F341: CMP.b #$18
#_08F343: BCS .at_max_z

#_08F345: CLC
#_08F346: ADC.b #$01
#_08F348: STA.w $0294,X

.at_max_z
#_08F34B: LDA.w $0C2C,X
#_08F34E: CMP.b #$10
#_08F350: BCS .at_max_x

#_08F352: CLC
#_08F353: ADC.b #$01
#_08F355: STA.w $0C2C,X

.at_max_x
#_08F358: JSR Ancilla_Move_X
#_08F35B: JSR Ancilla_Move_Z

;---------------------------------------------------------------------------------------------------

.draw
#_08F35E: LDA.b #$0C
#_08F360: JSL OAM_AllocateFromRegionC

#_08F364: JSR Ancilla_PrepOAMCoord

#_08F367: PHX

#_08F368: STZ.b $0A

#_08F36A: LDA.w $0C54,X
#_08F36D: CMP.b #$01
#_08F36F: BNE .am_not_sprinkling

#_08F371: LDA.w $0385,X
#_08F374: BEQ .am_not_sprinkling

#_08F376: LDA.w $0C5E,X
#_08F379: INC A
#_08F37A: STA.b $0A

.am_not_sprinkling
#_08F37C: LDY.b #$00

#_08F37E: REP #$20

#_08F380: LDA.w $029E,X
#_08F383: AND.w #$00FF
#_08F386: CMP.w #$0080
#_08F389: BCC .positive_altitude

#_08F38B: ORA.w #$FF00

.positive_altitude
#_08F38E: EOR.w #$FFFF
#_08F391: INC A
#_08F392: CLC
#_08F393: ADC.b $00
#_08F395: STA.b $00

;---------------------------------------------------------------------------------------------------

#_08F397: SEP #$20

#_08F399: JSR Ancilla_SetOAM_XY

#_08F39C: LDA.b $0A
#_08F39E: BEQ .flapping

#_08F3A0: DEC A
#_08F3A1: CLC
#_08F3A2: ADC.b #$02
#_08F3A4: TAX

#_08F3A5: BRA .set_char

.flapping
#_08F3A7: LDA.b $1A
#_08F3A9: AND.b #$04
#_08F3AB: LSR A
#_08F3AC: LSR A
#_08F3AD: TAX

.set_char
#_08F3AE: LDA.w .char,X
#_08F3B1: STA.b ($90),Y

#_08F3B3: INY

#_08F3B4: LDA.b #$74
#_08F3B6: STA.b ($90),Y

#_08F3B8: TYA
#_08F3B9: SEC
#_08F3BA: SBC.b #$03
#_08F3BC: LSR A
#_08F3BD: LSR A
#_08F3BE: TAY

#_08F3BF: LDA.b #$02
#_08F3C1: STA.b ($92),Y

#_08F3C3: PLX

#_08F3C4: LDY.b #$01

#_08F3C6: LDA.b ($90),Y
#_08F3C8: CMP.b #$F0
#_08F3CA: BNE .finish_up

#_08F3CC: LDA.b #$03
#_08F3CE: STA.w $0C54,X

#_08F3D1: INC.b $11

#_08F3D3: LDA.l $7EC211
#_08F3D7: STA.b $1C

;---------------------------------------------------------------------------------------------------

.finish_up
#_08F3D9: JSR RevivalFairy_Dust
#_08F3DC: JSR RevivalFairy_MonitorHP

#_08F3DF: PLB

#_08F3E0: RTL

;===================================================================================================

RevivalFairy_Dust:
#_08F3E1: LDA.w $0C54,X
#_08F3E4: BNE .continue

#_08F3E6: RTS

;---------------------------------------------------------------------------------------------------

.continue
#_08F3E7: LDX.b #$02

#_08F3E9: LDA.w $0C54,X
#_08F3EC: CMP.b #$02
#_08F3EE: BEQ .exit

#_08F3F0: DEC.w $039F,X
#_08F3F3: BPL .exit

#_08F3F5: STZ.w $039F,X

#_08F3F8: LDA.b #$10

#_08F3FA: LDY.w $0FB3
#_08F3FD: BNE .use_region_d

#_08F3FF: JSL OAM_AllocateFromRegionA
#_08F403: BRA .oam_allocated

.use_region_d
#_08F405: JSL OAM_AllocateFromRegionD

;---------------------------------------------------------------------------------------------------

.oam_allocated
#_08F409: DEC.w $03B1,X
#_08F40C: BPL .just_draw

#_08F40E: LDA.b #$03
#_08F410: STA.w $03B1,X

#_08F413: LDY.b #$03

#_08F415: LDA.w PowderDraw_group_offset,Y
#_08F418: STA.b $00

;---------------------------------------------------------------------------------------------------

#_08F41A: LDA.w $0C5E,X
#_08F41D: INC A
#_08F41E: CMP.b #$0A
#_08F420: BNE .not_fully_sprinkled

#_08F422: LDA.b #$20
#_08F424: STA.w $039F,X

#_08F427: INC.w $0C54,X

#_08F42A: LDA.b #$02
#_08F42C: STA.w $0C5E,X

#_08F42F: BRA .exit

;---------------------------------------------------------------------------------------------------

.not_fully_sprinkled
#_08F431: STA.w $0C5E,X

#_08F434: CLC
#_08F435: ADC.b $00
#_08F437: TAY

#_08F438: LDA.w PowderDraw_anim_step,Y
#_08F43B: STA.w $03C2,X

.just_draw
#_08F43E: JSR AncillaDraw_Powder

.exit
#_08F441: RTS

;===================================================================================================

RevivalFairy_MonitorHP:
#_08F442: LDA.l $7EF36C
#_08F446: STA.b $00

#_08F448: LDA.l $7EF36D
#_08F44C: CMP.b $00

#_08F44E: BEQ .at_max

#_08F450: CMP.b #$38
#_08F452: BNE .healing

.at_max
#_08F454: LDA.w $020A
#_08F457: BNE .healing

;---------------------------------------------------------------------------------------------------

#_08F459: LDY.b #!LINKSTATE_00

; fake flippers
#_08F45B: LDA.w $0345
#_08F45E: BEQ .not_swimming

#_08F460: LDY.b #!LINKSTATE_04

#_08F462: LDA.b #$04
#_08F464: STA.w $0340

#_08F467: BRA .set_state

.not_swimming
#_08F469: LDA.b $56
#_08F46B: BEQ .set_state

#_08F46D: LDY.b #!LINKSTATE_17

#_08F46F: LDA.b #$01
#_08F471: STA.w $02E0

.set_state
#_08F474: STY.b $5D

#_08F476: STZ.b $4D
#_08F478: STZ.w $036B

#_08F47B: STZ.w $030D
#_08F47E: STZ.w $030A

#_08F481: STZ.b $24
#_08F483: STZ.b $46

#_08F485: STZ.w $0C4A
#_08F488: STZ.w $0C4B
#_08F48B: STZ.w $0C4C
#_08F48E: STZ.w $0C4D
#_08F491: STZ.w $0C4E

#_08F494: RTS

;---------------------------------------------------------------------------------------------------

.healing
#_08F495: LDX.b #$01

#_08F497: LDA.w $0C54,X
#_08F49A: BNE .link_floating

#_08F49C: DEC.w $039F,X

#_08F49F: LDA.w $039F,X
#_08F4A2: BNE .delay_ascent

#_08F4A4: INC.w $039F,X

#_08F4A7: LDA.b #$04
#_08F4A9: STA.w $0294,X

#_08F4AC: JSR Ancilla_Move_Z

#_08F4AF: LDA.w $029E,X
#_08F4B2: CMP.b #$10
#_08F4B4: BCC .delay_ascent

#_08F4B6: INC.w $0C54,X

#_08F4B9: LDA.b #$02
#_08F4BB: STA.w $0294,X

.delay_ascent
#_08F4BE: BRA .float_link

;---------------------------------------------------------------------------------------------------

.link_floating
#_08F4C0: DEC.w $0380,X
#_08F4C3: BPL .delay_bobbing

#_08F4C5: LDA.b #$20
#_08F4C7: STA.w $0380,X

#_08F4CA: LDA.w $0294,X
#_08F4CD: EOR.b #$FF
#_08F4CF: INC A

#_08F4D0: STA.w $0294,X

;---------------------------------------------------------------------------------------------------

.delay_bobbing
#_08F4D3: JSR Ancilla_Move_Z

.float_link
#_08F4D6: LDA.w $029E,X
#_08F4D9: STA.b $24

#_08F4DB: RTS

;===================================================================================================

Animate_GAMEOVER_Letters:
#_08F4DC: PHB
#_08F4DD: PHK
#_08F4DE: PLB

#_08F4DF: JSR .main

#_08F4E2: PLB

#_08F4E3: RTL

;---------------------------------------------------------------------------------------------------

.vector_low
#_08F4E4: db GAMEOVER_Sweep>>0
#_08F4E5: db GAMEOVER_Unfurl>>0
#_08F4E6: db GAMEOVER_Stay>>0

.vector_high
#_08F4E7: db GAMEOVER_Sweep>>8
#_08F4E8: db GAMEOVER_Unfurl>>8
#_08F4E9: db GAMEOVER_Stay>>8

;---------------------------------------------------------------------------------------------------

.main
#_08F4EA: LDX.w $0C4A
#_08F4ED: BEQ .none_active

#_08F4EF: DEX

#_08F4F0: LDA.w .vector_low,X
#_08F4F3: STA.b $00

#_08F4F5: LDA.w .vector_high,X
#_08F4F8: STA.b $01

#_08F4FA: JMP.w ($0000)

.none_active
#_08F4FD: INC.b $11

#_08F4FF: RTS

;===================================================================================================

pool GAMEOVER_Sweep

.target_x
#_08F500: db $40 ; G
#_08F501: db $50 ; A
#_08F502: db $60 ; M
#_08F503: db $70 ; E

#_08F504: db $88 ; O
#_08F505: db $98 ; V
#_08F506: db $A8 ; E
#_08F507: db $40 ; R

pool off

;---------------------------------------------------------------------------------------------------

GAMEOVER_Sweep:
#_08F508: LDX.w $035F
#_08F50B: STX.w $0FA0

#_08F50E: LDY.b #$80
#_08F510: CPX.b #$07

#_08F512: BNE .pointless

#_08F514: LDY.b #$80

;---------------------------------------------------------------------------------------------------

.pointless
#_08F516: TYA
#_08F517: STA.w $0C2C,X

#_08F51A: JSR Ancilla_Move_X

#_08F51D: LDA.w $0C18,X
#_08F520: BNE .leftwards_ho

#_08F522: LDA.w $0C04,X
#_08F525: CMP.w .target_x,X
#_08F528: BCS .leftwards_ho

#_08F52A: LDA.w .target_x,X
#_08F52D: STA.w $0C04,X

#_08F530: INX
#_08F531: STX.w $035F

#_08F534: CPX.b #$08
#_08F536: BNE .leftwards_ho

#_08F538: LDA.b #$07
#_08F53A: STA.w $035F

#_08F53D: INC.w $0C4A

#_08F540: STZ.w $039D

#_08F543: LDA.b #!SFX3_26
#_08F545: STA.w $012F

#_08F548: BRA .proceed_to_draw

;---------------------------------------------------------------------------------------------------

.leftwards_ho
#_08F54A: CPX.b #$07
#_08F54C: BNE .proceed_to_draw

#_08F54E: LDY.b #$06
#_08F550: CPY.w $039D
#_08F553: BEQ .not_moving_together

;---------------------------------------------------------------------------------------------------

.next_follow
#_08F555: LDA.w $0C04,X
#_08F558: STA.w $0C04,Y

#_08F55B: DEY
#_08F55C: CPY.w $039D
#_08F55F: BNE .next_follow

;---------------------------------------------------------------------------------------------------

.not_moving_together
#_08F561: LDA.w $0C18,X
#_08F564: BNE .proceed_to_draw

#_08F566: LDA.w $0C04,X

#_08F569: LDX.w $039D

#_08F56C: CMP.w .target_x,X
#_08F56F: BCS .proceed_to_draw

#_08F571: DEC.w $039D

.proceed_to_draw
#_08F574: BRL GAMEOVER_Stay

;===================================================================================================

pool GAMEOVER_Unfurl

.target_x
#_08F577: db $58 ; G
#_08F578: db $60 ; A
#_08F579: db $68 ; M
#_08F57A: db $70 ; E

#_08F57B: db $88 ; O
#_08F57C: db $90 ; V
#_08F57D: db $98 ; E
#_08F57E: db $A0 ; R

pool off

;---------------------------------------------------------------------------------------------------

GAMEOVER_Unfurl:
#_08F57F: LDX.w $035F
#_08F582: STX.w $0FA0

#_08F585: LDA.b #$60
#_08F587: STA.w $0C2C,X

#_08F58A: JSR Ancilla_Move_X

#_08F58D: LDY.w $039D

#_08F590: LDA.w $0C04,X
#_08F593: CMP.w .target_x,Y
#_08F596: BCC .rightwards_ho

#_08F598: LDA.w .target_x,Y
#_08F59B: STA.w $0C04,Y

#_08F59E: INC.w $039D

#_08F5A1: LDA.w $039D
#_08F5A4: CMP.b #$08
#_08F5A6: BNE .rightwards_ho

#_08F5A8: INC.b $11
#_08F5AA: INC.w $0C4A

#_08F5AD: BRA .proceed_to_draw

.rightwards_ho
#_08F5AF: LDA.w $039D
#_08F5B2: DEC A
#_08F5B3: STA.b $00

#_08F5B5: LDX.w $035F
#_08F5B8: TXY

.next_follow
#_08F5B9: LDA.w $0C04,X
#_08F5BC: STA.w $0C04,Y

#_08F5BF: DEY
#_08F5C0: CPY.b $00
#_08F5C2: BNE .next_follow

;---------------------------------------------------------------------------------------------------

.proceed_to_draw
#_08F5C4: BRA GAMEOVER_Stay

;===================================================================================================

pool GAMEOVER_Stay

.char
#_08F5C6: db $40, $50 ; G
#_08F5C8: db $41, $51 ; A
#_08F5CA: db $42, $52 ; M
#_08F5CC: db $43, $53 ; E

#_08F5CE: db $44, $54 ; O
#_08F5D0: db $45, $55 ; V
#_08F5D2: db $43, $53 ; E
#_08F5D4: db $46, $56 ; R

pool off

;---------------------------------------------------------------------------------------------------

GAMEOVER_Stay:
#_08F5D6: LDA.b #$00
#_08F5D8: STA.b $90

#_08F5DA: LDA.b #$08
#_08F5DC: STA.b $91

#_08F5DE: LDA.b #$20
#_08F5E0: STA.b $92

#_08F5E2: LDA.b #$0A
#_08F5E4: STA.b $93

#_08F5E6: LDX.w $035F
#_08F5E9: LDY.b #$00

;---------------------------------------------------------------------------------------------------

.next_letter
#_08F5EB: PHX

#_08F5EC: LDA.b #$57
#_08F5EE: STA.b $00
#_08F5F0: STZ.b $01

#_08F5F2: LDA.w $0C04,X
#_08F5F5: STA.b $02

#_08F5F7: LDA.w $0C18,X
#_08F5FA: STA.b $03

#_08F5FC: JSR Ancilla_SetOAM_XY

#_08F5FF: TXA
#_08F600: ASL A
#_08F601: TAX

#_08F602: LDA.w .char+0,X
#_08F605: STA.b ($90),Y

#_08F607: INY

#_08F608: LDA.b #$3C
#_08F60A: STA.b ($90),Y

#_08F60C: INY

#_08F60D: LDA.b #$5F
#_08F60F: STA.b $00
#_08F611: STZ.b $01

#_08F613: JSR Ancilla_SetOAM_XY

#_08F616: LDA.w .char+1,X
#_08F619: STA.b ($90),Y

#_08F61B: INY

#_08F61C: LDA.b #$3C
#_08F61E: STA.b ($90),Y

#_08F620: INY
#_08F621: PHY

#_08F622: TYA
#_08F623: SEC
#_08F624: SBC.b #$08
#_08F626: LSR A
#_08F627: LSR A
#_08F628: TAY

#_08F629: LDA.b #$00
#_08F62B: STA.b ($92),Y

#_08F62D: INY

#_08F62E: STA.b ($92),Y

#_08F630: PLY
#_08F631: PLX

#_08F632: DEX
#_08F633: BPL .next_letter

;---------------------------------------------------------------------------------------------------

#_08F635: RTS

;===================================================================================================

Ancilla_SetPanRelativeCoordinates:
#_08F636: PHX

#_08F637: LSR A ; /32
#_08F638: LSR A
#_08F639: LSR A
#_08F63A: LSR A
#_08F63B: LSR A

#_08F63C: TAX

#_08F63D: LDA.l AncillaPanValues,X

#_08F641: PLX

#_08F642: RTS

;===================================================================================================

AncillaAdd_AddAncilla_Bank08:
#_08F643: PHA

#_08F644: JSL Ancilla_CheckForAvailableSlot

#_08F648: PLA

#_08F649: TYX
#_08F64A: BMI .fail

#_08F64C: STA.w $0C4A,X

#_08F64F: TAY

#_08F650: LDA.w AncillaObjectAllocation,Y
#_08F653: STA.w $0C90,X

#_08F656: LDA.b $EE
#_08F658: STA.w $0C7C,X

#_08F65B: LDA.w $0476
#_08F65E: STA.w $03CA,X

#_08F661: STZ.w $0C22,X
#_08F664: STZ.w $0C2C,X
#_08F667: STZ.w $0280,X

#_08F66A: STZ.w $028A,X

#_08F66D: CLC

#_08F66E: RTS

.fail
#_08F66F: SEC

#_08F670: RTS

;===================================================================================================
; Seems like it looks for a matching ancilla
;===================================================================================================
UNREACHABLE_08F671:
#_08F671: LDX.b #$05

.next_slot
#_08F673: CMP.w $0C4A,X
#_08F676: BEQ .found_match

#_08F678: DEX
#_08F679: BPL .next_slot

#_08F67B: CLC

#_08F67C: RTS

.found_match
#_08F67D: SEC

#_08F67E: RTS

;===================================================================================================

AncillaPriorities:
#_08F67F: db $20, $10, $30, $20

;===================================================================================================

Ancilla_PrepOAMCoord:
#_08F683: LDY.w $0C7C,X

#_08F686: LDA.w AncillaPriorities,Y
#_08F689: STA.b $65
#_08F68B: STZ.b $64

#_08F68D: LDA.w $0BFA,X
#_08F690: STA.b $00

#_08F692: LDA.w $0C0E,X
#_08F695: STA.b $01

#_08F697: LDA.w $0C04,X
#_08F69A: STA.b $02

#_08F69C: LDA.w $0C18,X
#_08F69F: STA.b $03

#_08F6A1: REP #$20

#_08F6A3: LDA.b $00
#_08F6A5: SEC
#_08F6A6: SBC.b $E8
#_08F6A8: STA.b $00

#_08F6AA: LDA.b $02
#_08F6AC: SEC
#_08F6AD: SBC.b $E2
#_08F6AF: STA.b $02
#_08F6B1: STA.b $04

#_08F6B3: SEP #$20

#_08F6B5: RTS

;---------------------------------------------------------------------------------------------------

.adjusted
#_08F6B6: LDY.w $0C7C,X

#_08F6B9: LDA.w AncillaPriorities,Y
#_08F6BC: STA.b $65
#_08F6BE: STZ.b $64

#_08F6C0: LDA.w $0BFA,X
#_08F6C3: STA.b $00

#_08F6C5: LDA.w $0C0E,X
#_08F6C8: STA.b $01

#_08F6CA: LDA.w $0C04,X
#_08F6CD: STA.b $02

#_08F6CF: LDA.w $0C18,X
#_08F6D2: STA.b $03

#_08F6D4: REP #$20

#_08F6D6: LDA.b $00
#_08F6D8: SEC
#_08F6D9: SBC.w $0122
#_08F6DC: STA.b $00

#_08F6DE: LDA.b $02
#_08F6E0: SEC
#_08F6E1: SBC.w $011E
#_08F6E4: STA.b $02
#_08F6E6: STA.b $04

#_08F6E8: SEP #$20

#_08F6EA: RTS

;===================================================================================================

Ancilla_PrepOAMCoord_long:
#_08F6EB: PHB
#_08F6EC: PHK
#_08F6ED: PLB

#_08F6EE: JSR Ancilla_PrepOAMCoord

#_08F6F1: PLB

#_08F6F2: RTL

;===================================================================================================

Ancilla_SetOAM_XY:
#_08F6F3: PHX

#_08F6F4: LDX.b #$F0

#_08F6F6: LDA.b $01
#_08F6F8: BNE .off_screen

#_08F6FA: LDA.b $03
#_08F6FC: BNE .off_screen

#_08F6FE: LDA.b $02
#_08F700: STA.b ($90),Y

#_08F702: LDA.b $00
#_08F704: CMP.b #$F0
#_08F706: BCS .off_screen

#_08F708: TAX

.off_screen
#_08F709: INY

#_08F70A: TXA
#_08F70B: STA.b ($90),Y

#_08F70D: INY

#_08F70E: PLX

#_08F70F: RTS

;===================================================================================================

Ancilla_SetOAM_XY_long:
#_08F710: JSR Ancilla_SetOAM_XY

#_08F713: RTL

;===================================================================================================

Ancilla_SetOAM_XY_safe:
#_08F714: REP #$20

#_08F716: LDA.b $02
#_08F718: STA.b ($90),Y

#_08F71A: INY

#_08F71B: CLC
#_08F71C: ADC.w #$0080
#_08F71F: CMP.w #$0180
#_08F722: BCS .off_screen

#_08F724: LDA.b $02
#_08F726: AND.w #$0100
#_08F729: STA.b $74

#_08F72B: LDA.b $00
#_08F72D: STA.b ($90),Y

#_08F72F: CLC
#_08F730: ADC.w #$0010
#_08F733: CMP.w #$0100
#_08F736: BCC .on_screen

.off_screen
#_08F738: LDA.w #$00F0
#_08F73B: STA.b ($90),Y

.on_screen
#_08F73D: SEP #$20

#_08F73F: INY

#_08F740: RTS

;===================================================================================================

pool Ancilla_CheckLinkCollision

.offset_y
#_08F741: db   0,   0,   8,   0,   8
#_08F746: db   0,   8,   0,   0,   0

.offset_x
#_08F74B: db   0,   0,   8,   0,   8
#_08F750: db   0,   8,   0,   0,   0

.height
#_08F755: db  20,   0,  20,   0,   8
#_08F75A: db   0,  28,   0,  14,   0

.width
#_08F75F: db  20,   0,   3,   0,   8
#_08F764: db   0,  24,   0,  14,   0

.offset_link_y
#_08F769: db  12,   0,  12,   0,  12
#_08F76E: db   0,  12,   0,  12,   0

.offset_link_x
#_08F773: db   8,   0,   8,   0,   8
#_08F778: db   0,  12,   0,   8,   0

pool off

;---------------------------------------------------------------------------------------------------

Ancilla_CheckLinkCollision:
#_08F77D: TYA
#_08F77E: ASL A
#_08F77F: TAY

#_08F780: LDA.w $0BFA,X
#_08F783: STA.b $00

#_08F785: LDA.w $0C0E,X
#_08F788: STA.b $01

#_08F78A: LDA.w $0C04,X
#_08F78D: STA.b $02

#_08F78F: LDA.w $0C18,X
#_08F792: STA.b $03

#_08F794: STZ.b $0B

#_08F796: LDA.w $029E,X
#_08F799: STA.b $0A

#_08F79B: BPL .positive_z

#_08F79D: LDA.b #$FF
#_08F79F: STA.b $0B

;---------------------------------------------------------------------------------------------------

.positive_z
#_08F7A1: REP #$20

#_08F7A3: LDA.b $00
#_08F7A5: CLC
#_08F7A6: ADC.b $0A

#_08F7A8: CLC
#_08F7A9: ADC.w .offset_y,Y
#_08F7AC: STA.b $00

#_08F7AE: LDA.b $02
#_08F7B0: CLC
#_08F7B1: ADC.w .offset_x,Y
#_08F7B4: STA.b $02

#_08F7B6: LDA.b $20
#_08F7B8: CLC
#_08F7B9: ADC.w .offset_link_y,Y

#_08F7BC: SEC
#_08F7BD: SBC.b $00
#_08F7BF: STA.b $04

#_08F7C1: BPL .positive_y

#_08F7C3: EOR.w #$FFFF
#_08F7C6: INC A

.positive_y
#_08F7C7: STA.b $08

#_08F7C9: CMP.w .height,Y
#_08F7CC: BCS .no_collision

;---------------------------------------------------------------------------------------------------

#_08F7CE: LDA.b $22
#_08F7D0: CLC
#_08F7D1: ADC.w .offset_link_x,Y

#_08F7D4: SEC
#_08F7D5: SBC.b $02
#_08F7D7: STA.b $06

#_08F7D9: BPL .positive_x

#_08F7DB: EOR.w #$FFFF
#_08F7DE: INC A

.positive_x
#_08F7DF: STA.b $0A

#_08F7E1: CMP.w .width,Y
#_08F7E4: BCS .no_collision

;---------------------------------------------------------------------------------------------------

.collision
#_08F7E6: SEP #$20
#_08F7E8: SEC

#_08F7E9: RTS

.no_collision
#_08F7EA: SEP #$20
#_08F7EC: CLC

#_08F7ED: RTS

;===================================================================================================

Hookshot_CheckProximityToLink:
#_08F7EE: REP #$20

#_08F7F0: LDA.b $00
#_08F7F2: CLC
#_08F7F3: ADC.w #$0004
#_08F7F6: STA.b $72

#_08F7F8: LDA.b $02
#_08F7FA: CLC
#_08F7FB: ADC.w #$0004
#_08F7FE: STA.b $74

#_08F800: LDA.b $20
#_08F802: SEC
#_08F803: SBC.b $E8

#_08F805: CLC
#_08F806: ADC.w #$000C

#_08F809: SEC
#_08F80A: SBC.b $72

#_08F80C: BPL .positive_y

#_08F80E: EOR.w #$FFFF
#_08F811: INC A

.positive_y
#_08F812: CMP.w #$000C
#_08F815: BCS .too_far

#_08F817: LDA.b $22
#_08F819: SEC
#_08F81A: SBC.b $E2

#_08F81C: CLC
#_08F81D: ADC.w #$0008

#_08F820: SEC
#_08F821: SBC.b $74

#_08F823: BPL .positive_x

#_08F825: EOR.w #$FFFF
#_08F828: INC A

.positive_x
#_08F829: CMP.w #$000C
#_08F82C: BCS .too_far

.close
#_08F82E: SEP #$20
#_08F830: SEC

#_08F831: RTS

.too_far
#_08F832: SEP #$20
#_08F834: CLC

#_08F835: RTS

;===================================================================================================

pool Ancilla_CheckForEntranceTrigger

.position_y
#_08F836: dw $0D40, $0210, $0CFC, $0100

.position_x
#_08F83E: dw $0D80, $0E68, $0130, $0F10

.height
#_08F846: dw $000B, $0020, $0010, $000C

.width
#_08F84E: dw $0010, $0010, $0010, $0010

pool off

;---------------------------------------------------------------------------------------------------

Ancilla_CheckForEntranceTrigger:
#_08F856: TYA
#_08F857: ASL A
#_08F858: TAY

#_08F859: REP #$20

#_08F85B: LDA.b $20
#_08F85D: CLC
#_08F85E: ADC.w #$000C

#_08F861: SEC
#_08F862: SBC.w .position_y,Y

#_08F865: BPL .positive_y

#_08F867: EOR.w #$FFFF
#_08F86A: INC A

.positive_y
#_08F86B: CMP.w .height,Y
#_08F86E: BCS .out_of_range

#_08F870: LDA.b $22
#_08F872: CLC
#_08F873: ADC.w #$0008

#_08F876: SEC
#_08F877: SBC.w .position_x,Y

#_08F87A: BPL .positive_x

#_08F87C: EOR.w #$FFFF
#_08F87F: INC A

.positive_x
#_08F880: CMP.w .width,Y
#_08F883: BCS .out_of_range

.success
#_08F885: SEP #$20
#_08F887: SEC

#_08F888: RTS

.out_of_range
#_08F889: SEP #$20
#_08F88B: CLC

#_08F88C: RTS

;===================================================================================================

pool AncillaDraw_Shadow

.char
#_08F88D: db $6C, $6C
#_08F88F: db $28, $28
#_08F891: db $38, $FF
#_08F893: db $C8, $C8
#_08F895: db $D8, $D8
#_08F897: db $D9, $D9
#_08F899: db $DA, $DA

.prop
#_08F89B: db $28, $68
#_08F89D: db $28, $68
#_08F89F: db $28, $FF
#_08F8A1: db $22, $22
#_08F8A3: db $24, $64
#_08F8A5: db $24, $64
#_08F8A7: db $24, $64

pool off

;---------------------------------------------------------------------------------------------------

AncillaDraw_Shadow:
#_08F8A9: CPX.b #$02
#_08F8AB: BNE .big_shadow

#_08F8AD: REP #$20

#_08F8AF: LDA.b $02
#_08F8B1: CLC
#_08F8B2: ADC.w #$0004
#_08F8B5: STA.b $02

#_08F8B7: SEP #$20

;---------------------------------------------------------------------------------------------------

.big_shadow
#_08F8B9: TXA
#_08F8BA: ASL A
#_08F8BB: TAX

#_08F8BC: STZ.b $74
#_08F8BE: STZ.b $75

#_08F8C0: JSR Ancilla_SetOAM_XY_safe

#_08F8C3: LDA.w .char+0,X
#_08F8C6: STA.b ($90),Y

#_08F8C8: INY

#_08F8C9: LDA.w .prop+0,X
#_08F8CC: AND.b #$CF
#_08F8CE: ORA.b $04
#_08F8D0: STA.b ($90),Y

#_08F8D2: INY
#_08F8D3: PHY

#_08F8D4: TYA
#_08F8D5: SEC
#_08F8D6: SBC.b #$04
#_08F8D8: LSR A
#_08F8D9: LSR A
#_08F8DA: TAY

#_08F8DB: LDA.b #$00
#_08F8DD: ORA.b $75
#_08F8DF: STA.b ($92),Y

#_08F8E1: PLY

#_08F8E2: REP #$20

#_08F8E4: LDA.b $02
#_08F8E6: CLC
#_08F8E7: ADC.w #$0008
#_08F8EA: STA.b $02

#_08F8EC: SEP #$20

#_08F8EE: LDA.w .char+1,X
#_08F8F1: CMP.b #$FF
#_08F8F3: BEQ .exit

#_08F8F5: STZ.b $74
#_08F8F7: STZ.b $75

#_08F8F9: JSR Ancilla_SetOAM_XY_safe

#_08F8FC: LDA.w .char+1,X
#_08F8FF: STA.b ($90),Y

#_08F901: INY

#_08F902: LDA.w .prop+1,X
#_08F905: AND.b #$CF
#_08F907: ORA.b $04
#_08F909: STA.b ($90),Y

#_08F90B: INY
#_08F90C: PHY

#_08F90D: TYA
#_08F90E: SEC
#_08F90F: SBC.b #$03
#_08F911: LSR A
#_08F912: LSR A
#_08F913: TAY

#_08F914: LDA.b #$00
#_08F916: ORA.b $75
#_08F918: STA.b ($92),Y

#_08F91A: PLY

.exit
#_08F91B: RTS

;===================================================================================================
; TODO
;===================================================================================================
Ancilla_AllocateOAMFromRegion_B_or_E:
#_08F91C: LDY.w $0FB3
#_08F91F: BNE .use_region_E

.use_region_B
#_08F921: JSL OAM_AllocateFromRegionB
#_08F925: BRA .exit

.use_region_E
#_08F927: JSL OAM_AllocateFromRegionE

.exit
#_08F92B: RTS

;===================================================================================================

Follower_MoveTowardsLink:
#_08F92C: PHB
#_08F92D: PHK
#_08F92E: PLB

.get_closer
#_08F92F: LDX.w $02D3

#_08F932: LDA.w $1A00,X
#_08F935: STA.w $0C03

#_08F938: LDA.w $1A14,X
#_08F93B: STA.w $0C17

#_08F93E: LDA.w $1A28,X
#_08F941: STA.w $0C0D

#_08F944: LDA.w $1A3C,X
#_08F947: STA.w $0C21

#_08F94A: LDX.b #$09
#_08F94C: LDA.b #$18
#_08F94E: JSR Ancilla_ProjectSpeedTowardsPlayer

#_08F951: LDA.b $00
#_08F953: STA.w $0C22,X

#_08F956: LDA.b $01
#_08F958: STA.w $0C2C,X

#_08F95B: JSR Ancilla_Move_Y

#_08F95E: PHX
#_08F95F: JSR Ancilla_Move_X
#_08F962: PLX

#_08F963: LDA.w $0BFA,X
#_08F966: STA.b $00

#_08F968: LDA.w $0C0E,X
#_08F96B: STA.b $01

#_08F96D: LDA.w $0C04,X
#_08F970: STA.b $02

#_08F972: LDA.w $0C18,X
#_08F975: STA.b $03

;---------------------------------------------------------------------------------------------------

#_08F977: REP #$20

#_08F979: LDA.b $00
#_08F97B: SEC
#_08F97C: SBC.b $20
#_08F97E: BPL .positive_y

#_08F980: EOR.w #$FFFF
#_08F983: INC A

.positive_y
#_08F984: CMP.w #$0002
#_08F987: BCS .close_enough

#_08F989: LDA.b $02
#_08F98B: SEC
#_08F98C: SBC.b $22
#_08F98E: BPL .positive_x

#_08F990: EOR.w #$FFFF
#_08F993: INC A

.positive_x
#_08F994: CMP.w #$0002
#_08F997: BCC .exit

;---------------------------------------------------------------------------------------------------

.close_enough
#_08F999: SEP #$20

#_08F99B: INC.w $02D3

#_08F99E: LDX.w $02D3
#_08F9A1: CPX.b #$12
#_08F9A3: BEQ .exit

#_08F9A5: LDA.b $00
#_08F9A7: STA.w $1A00,X

#_08F9AA: LDA.b $01
#_08F9AC: STA.w $1A14,X

#_08F9AF: LDA.b $02
#_08F9B1: STA.w $1A28,X

#_08F9B4: LDA.b $03
#_08F9B6: STA.w $1A3C,X

#_08F9B9: LDY.b $EE

#_08F9BB: LDA.w AncillaPriorities,Y
#_08F9BE: LSR A
#_08F9BF: LSR A
#_08F9C0: ORA.b #$01
#_08F9C2: STA.w $1A64,X

#_08F9C5: BRL .get_closer

;---------------------------------------------------------------------------------------------------

.exit
#_08F9C8: SEP #$20

#_08F9CA: PLB

#_08F9CB: RTL

;===================================================================================================
; TODO
;===================================================================================================
Ancilla_AllocateOAMFromCustomRegion:
#_08F9CC: PHA
#_08F9CD: PHX

#_08F9CE: REP #$20

#_08F9D0: TYA
#_08F9D1: AND.w #$00FF
#_08F9D4: CLC
#_08F9D5: ADC.b $90

#_08F9D7: LDX.w $0FB3
#_08F9DA: BEQ .unsorted

#_08F9DC: CMP.w #$0900
#_08F9DF: BCS .upper_region

#_08F9E1: CMP.w #$08E0
#_08F9E4: BCC .continue

#_08F9E6: LDA.w #$0820
#_08F9E9: BRA .set_region

.upper_region
#_08F9EB: CMP.w #$09D0
#_08F9EE: BCC .continue

#_08F9F0: LDA.w #$0940
#_08F9F3: BRA .set_region

;---------------------------------------------------------------------------------------------------

.unsorted
#_08F9F5: CMP.w #$0990
#_08F9F8: BCC .continue

#_08F9FA: LDA.w #$0820

;---------------------------------------------------------------------------------------------------

.set_region
#_08F9FD: STA.b $90

#_08F9FF: SEC
#_08FA00: SBC.w #$0800
#_08FA03: LSR A
#_08FA04: LSR A
#_08FA05: CLC
#_08FA06: ADC.w #$0A20
#_08FA09: STA.b $92

#_08FA0B: LDY.b #$00

;---------------------------------------------------------------------------------------------------

.continue
#_08FA0D: SEP #$20

#_08FA0F: PLX
#_08FA10: PLA

#_08FA11: RTS

;===================================================================================================

HitStars_UpdateOAMBufferPosition:
#_08FA12: PHA
#_08FA13: PHX

#_08FA14: REP #$20

#_08FA16: TYA
#_08FA17: AND.w #$00FF
#_08FA1A: CLC
#_08FA1B: ADC.b $90

#_08FA1D: LDX.w $0FB3
#_08FA20: BNE .exit

#_08FA22: CMP.w #$09D0
#_08FA25: BCC .exit

#_08FA27: LDA.w #$0820
#_08FA2A: STA.b $90

#_08FA2C: SEC
#_08FA2D: SBC.w #$0800

#_08FA30: LSR A
#_08FA31: LSR A

#_08FA32: CLC
#_08FA33: ADC.w #$0A20
#_08FA36: STA.b $92

#_08FA38: LDY.b #$00

.exit
#_08FA3A: SEP #$20

#_08FA3C: PLX
#_08FA3D: PLA

#_08FA3E: RTS

;===================================================================================================
; Returns with carry clear if the hookshot should bother checking tile
; collision in later routines.
; Carry set when all should be ignored.
;===================================================================================================
Hookshot_ShouldIEvenBotherWithTiles:
#_08FA3F: PHX
#_08FA40: PHY

; Cache coordinates
#_08FA41: LDA.w $0BFA,X
#_08FA44: STA.b $00

#_08FA46: LDA.w $0C0E,X
#_08FA49: STA.b $01

#_08FA4B: LDA.w $0C04,X
#_08FA4E: STA.b $02

#_08FA50: LDA.w $0C18,X
#_08FA53: STA.b $03

#_08FA55: LDA.b $1B
#_08FA57: BNE Hookshot_CheckForTileAllowanceUnderworld

;===================================================================================================

Hookshot_CheckForTileAllowanceOverworld:
#_08FA59: REP #$20

; What direction is the hookshot moving?
#_08FA5B: LDA.w $0C72,X
#_08FA5E: AND.w #$0002
#_08FA61: BNE .horizontal_direction

;---------------------------------------------------------------------------------------------------

.vertical_direction
#_08FA63: LDX.w $0700

#_08FA66: LDA.b $00
#_08FA68: SEC
#_08FA69: SBC.l OverworldTransitionPositionY,X
#_08FA6D: CMP.w #$0004
#_08FA70: BCC Hookshot_DisallowTileCollision

#_08FA72: CMP.w $0716
#_08FA75: BCS Hookshot_DisallowTileCollision

#_08FA77: BRA Hookshot_AllowTileCollision

;---------------------------------------------------------------------------------------------------

.horizontal_direction
#_08FA79: LDX.w $0700

#_08FA7C: LDA.b $02
#_08FA7E: SEC
#_08FA7F: SBC.l OverworldTransitionPositionX,X
#_08FA83: CMP.w #$0006
#_08FA86: BCC Hookshot_DisallowTileCollision

#_08FA88: CMP.w $0716
#_08FA8B: BCC Hookshot_AllowTileCollision

;===================================================================================================

Hookshot_DisallowTileCollision:
#_08FA8D: SEP #$20

#_08FA8F: PLY
#_08FA90: PLX

#_08FA91: SEC

#_08FA92: RTS

;===================================================================================================

Hookshot_AllowTileCollision:
#_08FA93: SEP #$20

#_08FA95: PLY
#_08FA96: PLX

#_08FA97: CLC

#_08FA98: RTS

;===================================================================================================

Hookshot_CheckForTileAllowanceUnderworld:
#_08FA99: REP #$20

; Check direction
#_08FA9B: LDA.w $0C72,X
#_08FA9E: AND.w #$0002
#_08FAA1: BNE .horizontal_direction

;---------------------------------------------------------------------------------------------------
; This just checks if the hookshot is within the bounds of the super tile.
;---------------------------------------------------------------------------------------------------
.vertical_direction
#_08FAA3: LDA.b $00
#_08FAA5: AND.w #$01FF
#_08FAA8: CMP.w #$0004
#_08FAAB: BCC Hookshot_DisallowTileCollision

#_08FAAD: CMP.w #$01E8
#_08FAB0: BCS Hookshot_DisallowTileCollision

#_08FAB2: BRA .continue_vertically

;---------------------------------------------------------------------------------------------------
; This also checks if the hookshot is within the bounds of the super tile.
;---------------------------------------------------------------------------------------------------
.horizontal_direction
#_08FAB4: LDA.b $02
#_08FAB6: AND.w #$01FF
#_08FAB9: CMP.w #$0004
#_08FABC: BCC Hookshot_DisallowTileCollision

#_08FABE: CMP.w #$01F0
#_08FAC1: BCS Hookshot_DisallowTileCollision

; These BRAs are pretty pointless.
; There's no shared code.
; Should have just written the code directly after the above checks.
#_08FAC3: BRA .continue_horizontally

;---------------------------------------------------------------------------------------------------

.continue_vertically
#_08FAC5: SEP #$20

#_08FAC7: PLY
#_08FAC8: PLX

; This calculation and the corresponding one below are weird.
; They make sure the hookshot's 9th bit matches Link's.
; This appears to be an extra sanity check for if the hookshot goes
; offscreen at the edge of the supertile, since the above bitmasks only
; check for 8 bits of precision.
; But, it appears to have implications for when Link's position is out
; of sync with the rest of the game. Though, I can't produce any examples
; or scenarios of how this might occur.
#_08FAC9: LDA.b $01
#_08FACB: AND.b #$02
#_08FACD: STA.b $01

#_08FACF: LDA.b $21
#_08FAD1: AND.b #$02
#_08FAD3: CMP.b $01
#_08FAD5: BEQ .allow

;---------------------------------------------------------------------------------------------------

.disallow_vertical
#_08FAD7: SEC

#_08FAD8: RTS

;---------------------------------------------------------------------------------------------------

.continue_horizontally
#_08FAD9: SEP #$20

#_08FADB: PLY
#_08FADC: PLX

; See explanation above.
#_08FADD: LDA.b $03
#_08FADF: AND.b #$02
#_08FAE1: STA.b $03

#_08FAE3: LDA.b $23
#_08FAE5: AND.b #$02
#_08FAE7: CMP.b $03
#_08FAE9: BEQ .allow

;---------------------------------------------------------------------------------------------------

.disallow_horizontal
#_08FAEB: SEC

#_08FAEC: RTS

;---------------------------------------------------------------------------------------------------

.allow
#_08FAED: CLC

#_08FAEE: RTS

;===================================================================================================
; TODO analyze
;===================================================================================================
Ancilla_GetRadialProjection:
#_08FAEF: PHX

#_08FAF0: TAX

#_08FAF1: LDA.l .multiplier_y,X
#_08FAF5: STA.w CPUMULTA

#_08FAF8: LDA.b $08
#_08FAFA: STA.w CPUMULTB

#_08FAFD: LDA.l .meta_sign_y,X
#_08FB01: STA.b $02
#_08FB03: STZ.b $03

#_08FB05: LDA.w CPUPRODUCTL
#_08FB08: ASL A
#_08FB09: LDA.w CPUPRODUCTH

#_08FB0C: ADC.b #$00
#_08FB0E: STA.b $00
#_08FB10: STZ.b $01

;---------------------------------------------------------------------------------------------------

#_08FB12: LDA.l .multiplier_x,X
#_08FB16: STA.w CPUMULTA

#_08FB19: LDA.b $08
#_08FB1B: STA.w CPUMULTB

#_08FB1E: LDA.l .meta_sign_x,X
#_08FB22: STA.b $06
#_08FB24: STZ.b $07

#_08FB26: LDA.w CPUPRODUCTL
#_08FB29: ASL A
#_08FB2A: LDA.w CPUPRODUCTH

#_08FB2D: ADC.b #$00
#_08FB2F: STA.b $04
#_08FB31: STZ.b $05

#_08FB33: PLX

#_08FB34: RTS

;===================================================================================================

Ancilla_GetRadialProjection_long:
#_08FB35: PHB
#_08FB36: PHK
#_08FB37: PLB

#_08FB38: JSR Ancilla_GetRadialProjection

#_08FB3B: PLB

#_08FB3C: RTL

;===================================================================================================
; TODO
;===================================================================================================
Ancilla_AllocateOAMFromRegion_A_or_D_or_F:
#_08FB3D: LDY.w $0FB3
#_08FB40: BNE .sorted_sprites ; TODO bad name

#_08FB42: JSL OAM_AllocateFromRegionA

#_08FB46: RTS

.sorted_sprites
#_08FB47: LDY.w $0C7C,X
#_08FB4A: BNE .lower_layer

#_08FB4C: JSL OAM_AllocateFromRegionD

#_08FB50: RTS

.lower_layer
#_08FB51: JSL OAM_AllocateFromRegionF

#_08FB55: RTS

;===================================================================================================

BeamHit_OAMAdjustments:
#_08FB56: JSR BeamHit_GetCoords

#_08FB59: LDY.b #$00

.next
#_08FB5B: PHY

#_08FB5C: TYA
#_08FB5D: LSR A
#_08FB5E: LSR A
#_08FB5F: TAY

#_08FB60: LDA.b $0B
#_08FB62: BPL .skip_x_bit

#_08FB64: LDA.b ($92),Y
#_08FB66: AND.b #$02

;---------------------------------------------------------------------------------------------------

.skip_x_bit
#_08FB68: STA.b ($92),Y

#_08FB6A: PLY

#_08FB6B: LDX.b #$00

#_08FB6D: LDA.b ($90),Y
#_08FB6F: SEC
#_08FB70: SBC.b $07
#_08FB72: BPL .positive_x

#_08FB74: DEX

.positive_x
#_08FB75: CLC
#_08FB76: ADC.b $02
#_08FB78: STA.b $04

;---------------------------------------------------------------------------------------------------

#_08FB7A: TXA
#_08FB7B: ADC.b $03
#_08FB7D: STA.b $05

#_08FB7F: JSR BeamHit_GetTopXBit
#_08FB82: BCC .x_on_screen

#_08FB84: PHY

#_08FB85: TYA
#_08FB86: LSR A
#_08FB87: LSR A
#_08FB88: TAY

#_08FB89: LDA.b ($92),Y
#_08FB8B: ORA.b #$01
#_08FB8D: STA.b ($92),Y

#_08FB8F: PLY

;---------------------------------------------------------------------------------------------------

.x_on_screen
#_08FB90: LDX.b #$00

#_08FB92: INY

#_08FB93: LDA.b ($90),Y
#_08FB95: SEC
#_08FB96: SBC.b $06
#_08FB98: BPL .positive_y

#_08FB9A: DEX

.positive_y
#_08FB9B: CLC
#_08FB9C: ADC.b $00
#_08FB9E: STA.b $09

#_08FBA0: TXA
#_08FBA1: ADC.b $01
#_08FBA3: STA.b $0A

#_08FBA5: JSR BeamHit_CheckOffscreen_Y
#_08FBA8: BCC .y_on_screen

#_08FBAA: LDA.b #$F0
#_08FBAC: STA.b ($90),Y

;---------------------------------------------------------------------------------------------------

.y_on_screen
#_08FBAE: INY
#_08FBAF: INY
#_08FBB0: INY

#_08FBB1: DEC.b $08
#_08FBB3: BPL .next

#_08FBB5: BRL Ancilla_RestoreIndex

;===================================================================================================

BeamHit_GetCoords:
#_08FBB8: STY.b $0B

#_08FBBA: STA.b $08

#_08FBBC: LDA.w $0BFA,X
#_08FBBF: STA.b $00

#_08FBC1: SEC
#_08FBC2: SBC.b $E8
#_08FBC4: STA.b $06

#_08FBC6: LDA.w $0C0E,X
#_08FBC9: STA.b $01

#_08FBCB: LDA.w $0C04,X
#_08FBCE: STA.b $02

#_08FBD0: SEC
#_08FBD1: SBC.b $E2
#_08FBD3: STA.b $07

#_08FBD5: LDA.w $0C18,X
#_08FBD8: STA.b $03

#_08FBDA: RTS

;===================================================================================================

BeamHit_GetTopXBit:
#_08FBDB: REP #$20

#_08FBDD: LDA.b $04
#_08FBDF: SEC
#_08FBE0: SBC.b $E2
#_08FBE2: CMP.w #$0100

#_08FBE5: SEP #$20

#_08FBE7: RTS

;===================================================================================================

BeamHit_CheckOffscreen_Y:
#_08FBE8: REP #$20

#_08FBEA: LDA.b $09
#_08FBEC: PHA

#_08FBED: CLC
#_08FBEE: ADC.w #$0010

#_08FBF1: STA.b $09
#_08FBF3: SEC
#_08FBF4: SBC.b $E8
#_08FBF6: CMP.w #$0100

#_08FBF9: PLA
#_08FBFA: STA.b $09

#_08FBFC: SEP #$20

#_08FBFE: RTS

;===================================================================================================

QuakeDrawGFX:

.group00_a
#_08FBFF: db $00, $F0, $00

.group00_b
#_08FC02: db $00, $F0, $01

;---------------------------------------------------------------------------------------------------

.group01_a
#_08FC05: db $00, $F0, $02

.group01_b
#_08FC08: db $00, $F0, $03

;---------------------------------------------------------------------------------------------------

.group02_a
#_08FC0B: db $00, $F0, $43

.group02_b
#_08FC0E: db $00, $F0, $42

;---------------------------------------------------------------------------------------------------

.group03_a
#_08FC11: db $00, $F0, $41

.group03_b
#_08FC14: db $00, $F0, $40

;---------------------------------------------------------------------------------------------------

.group04_a
#_08FC17: db $00, $F0, $40, $0E, $F8, $84

.group04_b
#_08FC1D: db $1D, $F8, $44, $0D, $F9, $84

;---------------------------------------------------------------------------------------------------

.group05_a
#_08FC23: db $1F, $F9, $44, $2F, $FC, $84

.group05_b
#_08FC29: db $31, $F5, $06, $3F, $FB, $44, $2F, $FC
#_08FC31: db $84

;---------------------------------------------------------------------------------------------------

.group06_a
#_08FC32: db $24, $EF, $08, $31, $F5, $06, $3F, $FB
#_08FC3A: db $44, $4E, $04, $08

.group06_b
#_08FC3E: db $16, $E1, $08, $24, $EF, $08, $4E, $04
#_08FC46: db $08, $5D, $14, $08

;---------------------------------------------------------------------------------------------------

.group07_a
#_08FC4A: db $07, $D2, $08, $17, $D3, $48, $16, $E1
#_08FC52: db $08, $5D, $14, $08, $5D, $24, $48

.group07_b
#_08FC59: db $F9, $C3, $08, $25, $C5, $48, $07, $D2
#_08FC61: db $08, $17, $D3, $48, $5D, $24, $48, $5D
#_08FC69: db $34, $08

;---------------------------------------------------------------------------------------------------

.group08_a
#_08FC6B: db $EA, $B5, $08, $2F, $B6, $01, $F8, $C3
#_08FC73: db $08, $24, $C4, $48, $5D, $34, $08, $6C
#_08FC7B: db $43, $08

.group08_b
#_08FC7D: db $DB, $A6, $08, $EA, $B5, $08, $2F, $B6
#_08FC85: db $01, $3B, $C2, $81, $6C, $43, $08, $79
#_08FC8D: db $50, $08

;---------------------------------------------------------------------------------------------------

.group09_a
#_08FC8F: db $D4, $98, $C9, $DB, $A6, $08, $49, $B6
#_08FC97: db $48, $3B, $C2, $81, $79, $50, $08

.group09_b
#_08FC9E: db $D4, $88, $09, $D4, $98, $C9, $57, $A7
#_08FCA6: db $48, $49, $B6, $48

;---------------------------------------------------------------------------------------------------

.group0A_a
#_08FCAA: db $D4, $88, $09, $66, $98, $48, $57, $A7
#_08FCB2: db $48

.group0A_b
#_08FCB3: db $66, $98, $48, $57, $A7, $48

;---------------------------------------------------------------------------------------------------

.group0B_a
#_08FCB9: db $70, $8C, $48, $66, $98, $48

.group0B_b
#_08FCBF: db $70, $8C, $48

;---------------------------------------------------------------------------------------------------

.group0C_a
#_08FCC2: db $F3, $F0, $00

.group0C_b
#_08FCC5: db $F3, $F0, $01

;---------------------------------------------------------------------------------------------------

.group0D_a
#_08FCC8: db $F3, $F0, $02

.group0D_b
#_08FCCB: db $F3, $F0, $03

;---------------------------------------------------------------------------------------------------

.group0E_a
#_08FCCE: db $F5, $F0, $43

.group0E_b
#_08FCD1: db $F5, $F0, $42

;---------------------------------------------------------------------------------------------------

.group0F_a
#_08FCD4: db $F5, $F0, $41

.group0F_b
#_08FCD7: db $F5, $F0, $40, $E8, $F6, $04

;---------------------------------------------------------------------------------------------------

.group10_a
#_08FCDD: db $DA, $EE, $08, $E8, $F6, $04, $D8, $F9
#_08FCE5: db $C4

.group10_b
#_08FCE6: db $D3, $DF, $C9, $DA, $EE, $08, $C7, $F9
#_08FCEE: db $04, $D8, $F9, $C4

;---------------------------------------------------------------------------------------------------

.group11_a
#_08FCF2: db $D0, $D3, $07, $D3, $DF, $C9, $C7, $F9
#_08FCFA: db $04, $B9, $02, $48

.group11_b
#_08FCFE: db $D0, $D3, $06, $B9, $02, $48, $BA, $12
#_08FD06: db $08

;---------------------------------------------------------------------------------------------------

.group12_a
#_08FD07: db $D0, $D3, $05, $BA, $12, $08, $C8, $21
#_08FD0F: db $08

.group12_b
#_08FD10: db $D0, $D3, $07, $CA, $22, $08, $CA, $31
#_08FD18: db $88

;---------------------------------------------------------------------------------------------------

.group13_a
#_08FD19: db $D0, $D3, $06, $CA, $31, $88, $BB, $40
#_08FD21: db $88

.group13_b
#_08FD22: db $D0, $D3, $07, $BB, $40, $88, $AB, $49
#_08FD2A: db $C4

;---------------------------------------------------------------------------------------------------

.group14_a
#_08FD2B: db $D0, $D3, $05, $9B, $49, $04, $AB, $49
#_08FD33: db $C4

.group14_b
#_08FD34: db $C4, $CB, $08, $D0, $D3, $06, $9B, $49
#_08FD3C: db $04, $8C, $4D, $C4

;---------------------------------------------------------------------------------------------------

.group15_a
#_08FD40: db $B5, $BD, $08, $C4, $CB, $08, $80, $4C
#_08FD48: db $04, $8C, $4D, $C4

.group15_b
#_08FD4C: db $A6, $AE, $08, $B5, $BD, $08, $80, $4C
#_08FD54: db $04

;---------------------------------------------------------------------------------------------------

.group16_a
#_08FD55: db $97, $9F, $08, $A6, $AE, $08

.group16_b
#_08FD5B: db $88, $91, $08, $97, $9F, $08

;---------------------------------------------------------------------------------------------------

.group17_a
#_08FD61: db $88, $91, $08

.group17_b
#_08FD64: db $00, $FB, $0A

;---------------------------------------------------------------------------------------------------

.group18_a
#_08FD67: db $00, $FB, $0B

.group18_b
#_08FD6A: db $02, $FD, $0C

;---------------------------------------------------------------------------------------------------

.group19_a
#_08FD6D: db $01, $FD, $0D

.group19_b
#_08FD70: db $00, $FD, $8D

;---------------------------------------------------------------------------------------------------

.group1A_a
#_08FD73: db $01, $FD, $8C

.group1A_b
#_08FD76: db $01, $FD, $8B

;---------------------------------------------------------------------------------------------------

.group1B_a
#_08FD79: db $01, $FD, $8A, $FA, $0C, $89

.group1B_b
#_08FD7F: db $FA, $0C, $89, $F6, $1C, $C9

;---------------------------------------------------------------------------------------------------

.group1C_a
#_08FD85: db $F6, $1C, $49, $F8, $2C, $89

.group1C_b
#_08FD8B: db $F8, $2C, $89, $F6, $38, $02

;---------------------------------------------------------------------------------------------------

.group1D_a
#_08FD91: db $F6, $38, $02, $E9, $46, $48, $05, $46
#_08FD99: db $08

.group1D_b
#_08FD9A: db $E9, $46, $48, $05, $46, $08, $DA, $55
#_08FDA2: db $48, $13, $55, $08

;---------------------------------------------------------------------------------------------------

.group1E_a
#_08FDA6: db $DA, $55, $48, $13, $55, $08, $CC, $63
#_08FDAE: db $48, $21, $65, $08

.group1E_b
#_08FDB2: db $CC, $63, $48, $21, $65, $08, $BE, $71
#_08FDBA: db $48, $2F, $73, $08

;---------------------------------------------------------------------------------------------------

.group1F_a
#_08FDBE: db $BE, $71, $48, $2F, $73, $08

.group1F_b
.group20_a
#_08FDC4: db $A0, $70, $20

.group20_b
#_08FDC7: db $A0, $70, $21

;---------------------------------------------------------------------------------------------------

.group21_a
#_08FDCA: db $A0, $70, $66

.group21_b
#_08FDCD: db $A0, $70, $22

;---------------------------------------------------------------------------------------------------

.group22_a
#_08FDD0: db $A0, $70, $23

.group22_b
#_08FDD3: db $A0, $70, $63

;---------------------------------------------------------------------------------------------------

.group23_a
#_08FDD6: db $A0, $70, $62

.group23_b
#_08FDD9: db $A0, $70, $26

;---------------------------------------------------------------------------------------------------

.group24_a
#_08FDDC: db $A0, $70, $27, $AA, $7C, $28

.group24_b
#_08FDE2: db $AA, $7C, $28, $B8, $8B, $28

;---------------------------------------------------------------------------------------------------

.group25_a
#_08FDE8: db $B8, $8B, $28, $C5, $9A, $A1

.group25_b
#_08FDEE: db $C5, $9A, $A1, $D4, $8C, $68

;---------------------------------------------------------------------------------------------------

.group26_a
#_08FDF4: db $D4, $8C, $68, $E3, $7E, $68

.group26_b
#_08FDFA: db $E3, $7E, $68

;---------------------------------------------------------------------------------------------------

.group27_a
#_08FDFD: db $ED, $7D, $C5

.group27_b
#_08FE00: db $90, $60, $2A

;---------------------------------------------------------------------------------------------------

.group28_a
#_08FE03: db $90, $60, $2B

.group28_b
#_08FE06: db $90, $60, $2C

;---------------------------------------------------------------------------------------------------

.group29_a
#_08FE09: db $90, $60, $2D

.group29_b
#_08FE0C: db $89, $52, $29, $90, $60, $2A

;---------------------------------------------------------------------------------------------------

.group2A_a
#_08FE12: db $85, $42, $E9, $89, $52, $29

.group2A_b
#_08FE18: db $87, $32, $29, $85, $42, $E9

;---------------------------------------------------------------------------------------------------

.group2B_a
#_08FE1E: db $7E, $22, $28, $8D, $22, $68, $87, $32
#_08FE26: db $29

.group2B_b
#_08FE27: db $96, $12, $A9, $6F, $13, $28, $7E, $22
#_08FE2F: db $28, $8D, $22, $68

;---------------------------------------------------------------------------------------------------

.group2C_a
#_08FE33: db $9C, $02, $68, $66, $04, $E9, $96, $12
#_08FE3B: db $A9, $6F, $13, $28

.group2C_b
#_08FE3F: db $A5, $F2, $A9, $5F, $F5, $28, $9C, $02
#_08FE47: db $68, $66, $04, $E9

;---------------------------------------------------------------------------------------------------

.group2D_a
#_08FE4B: db $60, $70, $60

.group2D_b
#_08FE4E: db $60, $70, $61

;---------------------------------------------------------------------------------------------------

.group2E_a
#_08FE51: db $60, $70, $26

.group2E_b
#_08FE54: db $60, $70, $62

;---------------------------------------------------------------------------------------------------

.group2F_a
#_08FE57: db $60, $70, $63

.group2F_b
#_08FE5A: db $60, $70, $23

;---------------------------------------------------------------------------------------------------

.group30_a
#_08FE5D: db $60, $70, $22

.group30_b
#_08FE60: db $60, $70, $66

;---------------------------------------------------------------------------------------------------

.group31_a
#_08FE63: db $55, $6F, $E8, $60, $70, $67

.group31_b
#_08FE69: db $46, $68, $24, $55, $6F, $E8

;---------------------------------------------------------------------------------------------------

.group32_a
#_08FE6F: db $46, $68, $24, $36, $6C, $E4

.group32_b
#_08FE75: db $28, $64, $28, $26, $6B, $24, $36, $6C
#_08FE7D: db $E4

;---------------------------------------------------------------------------------------------------

.group33_a
#_08FE7E: db $19, $55, $28, $28, $64, $28, $26, $6B
#_08FE86: db $24, $16, $6E, $E4

.group33_b
#_08FE8A: db $0B, $46, $28, $19, $55, $28, $07, $6C
#_08FE92: db $24, $16, $6E, $E4

;---------------------------------------------------------------------------------------------------

.group34_a
#_08FE96: db $0B, $46, $28, $07, $6C, $24

.group34_b
#_08FE9C: db $70, $70, $2A

;---------------------------------------------------------------------------------------------------

.group35_a
#_08FE9F: db $70, $70, $2B

.group35_b
#_08FEA2: db $70, $70, $2C

;---------------------------------------------------------------------------------------------------

.group36_a
#_08FEA5: db $70, $70, $2D

.group36_b
#_08FEA8: db $70, $70, $2A, $6C, $7D, $29

;---------------------------------------------------------------------------------------------------

.group37_a
#_08FEAE: db $6C, $7D, $29, $72, $8C, $28

.group37_b
#_08FEB4: db $72, $8C, $28, $7C, $9C, $29

;---------------------------------------------------------------------------------------------------

.group38_a
#_08FEBA: db $7C, $9C, $29, $7B, $AC, $E9

.group38_b
#_08FEC0: db $7B, $AC, $E9, $75, $B6, $E4, $84, $BB
#_08FEC8: db $28

;---------------------------------------------------------------------------------------------------

.group39_a
#_08FEC9: db $75, $B6, $E4, $84, $BB, $28, $67, $BD
#_08FED1: db $68, $92, $CA, $28

.group39_b
#_08FED5: db $67, $BD, $68, $92, $CA, $28, $5F, $CC
#_08FEDD: db $69, $9A, $D9, $29

;---------------------------------------------------------------------------------------------------

.group3A_a
#_08FEE1: db $5F, $CC, $69, $9A, $D9, $29, $60, $DC
#_08FEE9: db $E9, $9A, $E8, $E9

.group3A_b
#_08FEED: db $60, $DC, $E9, $9A, $E8, $E9

;---------------------------------------------------------------------------------------------------

.group3B_a
#_08FEF3: db $85, $F2, $29, $8D, $F2, $2E, $31, $F4
#_08FEFB: db $28

.group3B_b

;===================================================================================================

QuakeSpell_InitialBoltPointers:
#_08FEFC: dw QuakeDrawGFX_group00_a, QuakeDrawGFX_group00_b
#_08FF00: dw QuakeDrawGFX_group01_a, QuakeDrawGFX_group01_b
#_08FF04: dw QuakeDrawGFX_group02_a, QuakeDrawGFX_group02_b
#_08FF08: dw QuakeDrawGFX_group03_a, QuakeDrawGFX_group03_b
#_08FF0C: dw QuakeDrawGFX_group04_a, QuakeDrawGFX_group04_b
#_08FF10: dw QuakeDrawGFX_group05_a, QuakeDrawGFX_group05_b
#_08FF14: dw QuakeDrawGFX_group06_a, QuakeDrawGFX_group06_b
#_08FF18: dw QuakeDrawGFX_group07_a, QuakeDrawGFX_group07_b
#_08FF1C: dw QuakeDrawGFX_group08_a, QuakeDrawGFX_group08_b
#_08FF20: dw QuakeDrawGFX_group09_a, QuakeDrawGFX_group09_b
#_08FF24: dw QuakeDrawGFX_group0A_a, QuakeDrawGFX_group0A_b
#_08FF28: dw QuakeDrawGFX_group0B_a, QuakeDrawGFX_group0B_b
#_08FF2C: dw QuakeDrawGFX_group0C_a, QuakeDrawGFX_group0C_b
#_08FF30: dw QuakeDrawGFX_group0D_a, QuakeDrawGFX_group0D_b
#_08FF34: dw QuakeDrawGFX_group0E_a, QuakeDrawGFX_group0E_b
#_08FF38: dw QuakeDrawGFX_group0F_a, QuakeDrawGFX_group0F_b
#_08FF3C: dw QuakeDrawGFX_group10_a, QuakeDrawGFX_group10_b
#_08FF40: dw QuakeDrawGFX_group11_a, QuakeDrawGFX_group11_b
#_08FF44: dw QuakeDrawGFX_group12_a, QuakeDrawGFX_group12_b
#_08FF48: dw QuakeDrawGFX_group13_a, QuakeDrawGFX_group13_b
#_08FF4C: dw QuakeDrawGFX_group14_a, QuakeDrawGFX_group14_b
#_08FF50: dw QuakeDrawGFX_group15_a, QuakeDrawGFX_group15_b
#_08FF54: dw QuakeDrawGFX_group16_a, QuakeDrawGFX_group16_b
#_08FF58: dw QuakeDrawGFX_group17_a, QuakeDrawGFX_group17_b
#_08FF5C: dw QuakeDrawGFX_group18_a, QuakeDrawGFX_group18_b
#_08FF60: dw QuakeDrawGFX_group19_a, QuakeDrawGFX_group19_b
#_08FF64: dw QuakeDrawGFX_group1A_a, QuakeDrawGFX_group1A_b
#_08FF68: dw QuakeDrawGFX_group1B_a, QuakeDrawGFX_group1B_b
#_08FF6C: dw QuakeDrawGFX_group1C_a, QuakeDrawGFX_group1C_b
#_08FF70: dw QuakeDrawGFX_group1D_a, QuakeDrawGFX_group1D_b
#_08FF74: dw QuakeDrawGFX_group1E_a, QuakeDrawGFX_group1E_b
#_08FF78: dw QuakeDrawGFX_group1F_a, QuakeDrawGFX_group1F_b

;---------------------------------------------------------------------------------------------------

QuakeSpell_SpreadBoltPointers:
#_08FF7C: dw QuakeDrawGFX_group20_a, QuakeDrawGFX_group20_b
#_08FF80: dw QuakeDrawGFX_group21_a, QuakeDrawGFX_group21_b
#_08FF84: dw QuakeDrawGFX_group22_a, QuakeDrawGFX_group22_b
#_08FF88: dw QuakeDrawGFX_group23_a, QuakeDrawGFX_group23_b
#_08FF8C: dw QuakeDrawGFX_group24_a, QuakeDrawGFX_group24_b
#_08FF90: dw QuakeDrawGFX_group25_a, QuakeDrawGFX_group25_b
#_08FF94: dw QuakeDrawGFX_group26_a, QuakeDrawGFX_group26_b
#_08FF98: dw QuakeDrawGFX_group27_a, QuakeDrawGFX_group27_b
#_08FF9C: dw QuakeDrawGFX_group28_a, QuakeDrawGFX_group28_b
#_08FFA0: dw QuakeDrawGFX_group29_a, QuakeDrawGFX_group29_b
#_08FFA4: dw QuakeDrawGFX_group2A_a, QuakeDrawGFX_group2A_b
#_08FFA8: dw QuakeDrawGFX_group2B_a, QuakeDrawGFX_group2B_b
#_08FFAC: dw QuakeDrawGFX_group2C_a, QuakeDrawGFX_group2C_b
#_08FFB0: dw QuakeDrawGFX_group2D_a, QuakeDrawGFX_group2D_b
#_08FFB4: dw QuakeDrawGFX_group2E_a, QuakeDrawGFX_group2E_b
#_08FFB8: dw QuakeDrawGFX_group2F_a, QuakeDrawGFX_group2F_b
#_08FFBC: dw QuakeDrawGFX_group30_a, QuakeDrawGFX_group30_b
#_08FFC0: dw QuakeDrawGFX_group31_a, QuakeDrawGFX_group31_b
#_08FFC4: dw QuakeDrawGFX_group32_a, QuakeDrawGFX_group32_b
#_08FFC8: dw QuakeDrawGFX_group33_a, QuakeDrawGFX_group33_b
#_08FFCC: dw QuakeDrawGFX_group34_a, QuakeDrawGFX_group34_b
#_08FFD0: dw QuakeDrawGFX_group35_a, QuakeDrawGFX_group35_b
#_08FFD4: dw QuakeDrawGFX_group36_a, QuakeDrawGFX_group36_b
#_08FFD8: dw QuakeDrawGFX_group37_a, QuakeDrawGFX_group37_b
#_08FFDC: dw QuakeDrawGFX_group38_a, QuakeDrawGFX_group38_b
#_08FFE0: dw QuakeDrawGFX_group39_a, QuakeDrawGFX_group39_b
#_08FFE4: dw QuakeDrawGFX_group3A_a, QuakeDrawGFX_group3A_b
#_08FFE8: dw QuakeDrawGFX_group3B_a, QuakeDrawGFX_group3B_b

;===================================================================================================
; FREE ROM: 0x14
;===================================================================================================
NULL_08FFEC:
#_08FFEC: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_08FFF4: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_08FFFC: db $FF, $FF, $FF, $FF

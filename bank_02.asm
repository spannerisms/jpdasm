org $028000

;===================================================================================================

Intro_SetupScreen:
; enable SPR on main screen; nothing on subscreen
#_028000: LDA.b #$10
#_028002: STA.b $1C
#_028004: STZ.b $1D

#_028006: JSR Intro_InitializeBackgroundSettings

; prevent color math inside window
#_028009: LDA.b #$20
#_02800B: STA.b $99

#_02800D: LDA.b #$02
#_02800F: STA.w OBSEL

#_028012: LDA.b #$14
#_028014: STA.w $0AAA

#_028017: JSL Graphics_LoadChrHalfSlot

#_02801B: STZ.w $0AAA

#_02801E: JSR LoadOWMusicIfNeeded

#_028021: RTL

;===================================================================================================

Intro_CreateTextPointers:
#_028022: JSL BuildSomeTextMasks
#_028026: JSL CreateMessagePointers

;===================================================================================================

Overworld_LoadAllPalettes_long:
#_02802A: JSR Overworld_LoadAllPalettes

#_02802D: RTL

;===================================================================================================

AnimatedTileSheets:
#_02802E: db $5D, $5D, $5D, $5D, $5D, $5D, $5D, $5F
#_028036: db $5D, $5F, $5F, $5E, $5F, $5E, $5E, $5D
#_02803E: db $5D, $5E, $5D, $5D, $5D, $5D, $5D, $5D

;===================================================================================================

Module05_LoadFile:
#_028046: JSL EnableForceBlank

#_02804A: STZ.w $0200

#_02804D: STZ.w $03F4

#_028050: STZ.w $02D4
#_028053: STZ.w $02D7

#_028056: STZ.w $02F9

#_028059: STZ.w $0379

#_02805C: STZ.w $03FD

#_02805F: JSL EraseTilemaps_normal

#_028063: LDA.b #$02
#_028065: STA.w OBSEL

#_028068: JSL LoadDefaultGraphics
#_02806C: JSL Sprite_LoadGraphicsProperties
#_028070: JSL LoadDefaultTileAttributes

#_028074: JSL DecompressSwordGraphics
#_028078: JSL DecompressShieldGraphics

#_02807C: JSL Link_Initialize

#_028080: JSL LoadFollowerGraphics

#_028084: LDA.b #$46
#_028086: STA.l $7EC2FC
#_02808A: STA.l $7EC2FD
#_02808E: STA.l $7EC2FE
#_028092: STA.l $7EC2FF

#_028096: STZ.w $02CD

#_028099: LDA.b #$02
#_02809B: STA.w $02CE

#_02809E: LDA.b #$30
#_0280A0: STA.b $FF

#_0280A2: LDA.l $7EF3CA
#_0280A6: BEQ .light_world

#_0280A8: LDA.b $1B
#_0280AA: BNE LoadUnderworldRoomRebuildHUD

#_0280AC: JSL SearchForEquippedItem_long
#_0280B0: JSL RebuildHUD_long2
#_0280B4: JSL UpdateEquippedItem_long

#_0280B8: STZ.w $010A

#_0280BB: LDA.b #$20 ; set room to aga
#_0280BD: STA.b $A0
#_0280BF: STZ.b $A1

#_0280C1: LDA.b #$08 ; overworld game mode
#_0280C3: STA.b $10
#_0280C5: STZ.b $11
#_0280C7: STZ.b $B0

#_0280C9: STZ.w $04AA

#_0280CC: RTL

;---------------------------------------------------------------------------------------------------

.light_world
; !BUG sanc and quit
; if mosaic, we're indoors?
; dumb code to catch mirroring
#_0280CD: LDA.l $7EC011
#_0280D1: BNE LoadUnderworldRoomRebuildHUD

#_0280D3: LDA.w $010A
#_0280D6: BEQ .not_continue

#_0280D8: LDA.w $04AA
#_0280DB: BEQ LoadUnderworldRoomRebuildHUD

.not_continue
#_0280DD: LDA.l $7EF3C5 ; if we haven't saved zelda
#_0280E1: CMP.b #$02
#_0280E3: BCC LoadUnderworldRoomRebuildHUD

#_0280E5: LDA.l $7EF3C8 ; check our starting entrance
#_0280E9: CMP.b #$05 ; DM unlocked
#_0280EB: BEQ LoadUnderworldRoomRebuildHUD

#_0280ED: REP #$10

; Message 0183
#_0280EF: LDX.w #$0183 ; 2 choice message

#_0280F2: LDA.l $7EF353
#_0280F6: CMP.b #$02
#_0280F8: BEQ .no_mirror

; Message 0182
#_0280FA: LDX.w #$0182 ; 3 choice message

.no_mirror
#_0280FD: STX.w $1CF0

#_028100: SEP #$10

#_028102: JSL Interface_PrepAndDisplayMessage
#_028106: JSR Underworld_LoadPalettes

#_028109: LDA.b #$0F
#_02810B: STA.b $13

#_02810D: LDA.b #$04
#_02810F: STA.b $1C
#_028111: STZ.b $1D

#_028113: LDA.b #$1B
#_028115: STA.b $10

#_028117: RTL

;===================================================================================================

LoadUnderworldRoomRebuildHUD:
#_028118: LDA.b #$00 ; reset mosaic level
#_02811A: STA.l $7EC011

#_02811E: ORA.b #$07
#_028120: STA.b $95

#_028122: JSL SearchForEquippedItem_long
#_028126: JSL RebuildHUD_long2
#_02812A: JSL UpdateEquippedItem_long

; bleed into underworld loading

;===================================================================================================

Module06_UnderworldLoad:
#_02812E: REP #$20

#_028130: STZ.b $A0
#_028132: STZ.b $A2

#_028134: STZ.w $0402

#_028137: LDA.w #$0000
#_02813A: STA.l $7EC019
#_02813E: STA.l $7EC01B
#_028142: STA.l $7EC01D
#_028146: STA.l $7EC01F
#_02814A: STA.l $7EC021
#_02814E: STA.l $7EC023

#_028152: SEP #$20

#_028154: JSR Underworld_LoadEntrance

#_028157: LDA.w $040C ; check dungeon ID
#_02815A: CMP.b #$FF
#_02815C: BEQ .cave ; use -1 keys

#_02815E: CMP.b #$02
#_028160: BNE .not_castle

#_028162: LDA.b #$00 ; swap to sewers

.not_castle
#_028164: LSR A
#_028165: TAX

#_028166: LDA.l $7EF37C,X ; get the current key count

.cave
#_02816A: JSL RebuildHUD_Keys

#_02816E: STZ.w $045A
#_028171: STZ.w $0458

#_028174: JSR Underworld_LoadAndDrawRoom
#_028177: JSL Underworld_LoadCustomTileAttributes

;---------------------------------------------------------------------------------------------------

#_02817B: LDX.w $0AA1

#_02817E: LDA.l AnimatedTileSheets,X
#_028182: TAY

#_028183: JSL DecompressAnimatedUnderworldTiles
#_028187: JSL Underworld_LoadAttributeTable

#_02818B: LDA.b #$0A
#_02818D: STA.w $0AA4

#_028190: JSL InitializeTilesets

#_028194: LDA.b #$0A
#_028196: STA.w $0AB1

#_028199: JSR Underworld_LoadPalettes

#_02819C: LDA.w $02E0
#_02819F: ORA.b $56
#_0281A1: BEQ .not_bunny

#_0281A3: JSL RefreshLinkEquipmentPalettes_bunny

.not_bunny
#_0281A7: REP #$30

#_0281A9: LDA.b $A0
#_0281AB: AND.w #$000F
#_0281AE: ASL A
#_0281AF: XBA
#_0281B0: STA.w $062C

#_0281B3: LDA.b $A0
#_0281B5: AND.w #$0FF0
#_0281B8: LSR A
#_0281B9: LSR A
#_0281BA: LSR A
#_0281BB: XBA
#_0281BC: STA.w $062E

#_0281BF: LDA.b $A0
#_0281C1: CMP.w #$0104
#_0281C4: BNE .use_current_entrance

#_0281C6: LDA.l $7EF3C6
#_0281CA: AND.w #$0010
#_0281CD: BEQ .use_current_entrance

#_0281CF: LDA.w #$0000
#_0281D2: STA.l $7EC005

;---------------------------------------------------------------------------------------------------

.use_current_entrance
#_0281D6: SEP #$30

#_0281D8: JSL SetAndSaveVisitedQuadrantFlags

; CGWSEL: color source = subcreen
#_0281DC: LDA.b #$02
#_0281DE: STA.b $99

; CGADSUB: enabled on BG1, BG2, OBJ, COL; subtraction
#_0281E0: LDA.b #$B3
#_0281E2: STA.b $9A

#_0281E4: LDX.w $045A

#_0281E7: LDA.l $7EC005
#_0281EB: BNE .do_fade

#_0281ED: LDX.b #$03
#_0281EF: LDY.w $0414
#_0281F2: BEQ .no_room_effect

; Check for translucent backgrounds.

; prevent color math always
#_0281F4: LDA.b #$32
#_0281F6: CPY.b #$07
#_0281F8: BEQ .set_room_effect

; prevent color math inside window
; clip to black in window
#_0281FA: LDA.b #$62
#_0281FC: CPY.b #$04
#_0281FE: BEQ .set_room_effect

.no_room_effect
#_028200: LDA.b #$20 ; prevent color math inside window

.set_room_effect
#_028202: STA.b $9A

.do_fade
#_028204: LDA.l RoomEffectFixedColors,X
#_028208: STA.l $7EC017

#_02820C: JSL ApplyGrayscaleFixed_Parameterized

; Mosaic stuff
#_028210: LDA.b #$1F
#_028212: STA.l $7EC007

#_028216: LDA.b #$00
#_028218: STA.l $7EC00B

#_02821C: LDA.b #$02
#_02821E: STA.l $7EC009

#_028222: STZ.w $0AA9

#_028225: STZ.b $57

#_028227: STZ.b $3A
#_028229: STZ.b $3C

;---------------------------------------------------------------------------------------------------

#_02822B: JSR Underworld_ResetTorchBackgroundAndPlayer
#_02822E: JSL Link_CheckIfBunny
#_028232: JSR ResetThenCacheRoomEntryProperties

#_028235: LDA.l $7EF3CC
#_028239: CMP.b #$0D ; FOLLOWER 0D
#_02823B: BNE .not_superbomb

#_02823D: LDA.b #$00 ; kill super bomb
#_02823F: STA.l $7EF3CC

#_028243: STZ.w $04B4

#_028246: JSL HUD_HideBigNumbers

.not_superbomb
#_02824A: LDA.b #$09
#_02824C: STA.b $94

#_02824E: JSL Follower_Initialize
#_028252: JSL Sprite_ResetAll
#_028256: JSL Underworld_ResetSprites

#_02825A: STZ.w $02F0

#_02825D: INC.w $04C7

#_028260: LDA.l $7EF3C5
#_028264: BNE .not_bed_cutscene

#_028266: LDA.l $7EF3C6
#_02826A: AND.b #$10
#_02826C: BNE .not_bed_cutscene

#_02826E: LDA.b #$30 ; Fixed color RGB: #808000
#_028270: STA.b $9C

#_028272: LDA.b #$50
#_028274: STA.b $9D

#_028276: LDA.b #$80
#_028278: STA.b $9E

#_02827A: LDA.b #$00
#_02827C: STA.l $7EC005
#_028280: STA.l $7EC006

#_028284: JSL Link_TuckIntoBed

;---------------------------------------------------------------------------------------------------

.not_bed_cutscene
#_028288: LDA.b #$07
#_02828A: STA.w $010C
#_02828D: STA.b $10

#_02828F: LDA.b #$0F
#_028291: STA.b $11

#_028293: JSR Underworld_LoadSongBankIfNeeded

;===================================================================================================

UnderworldAdjustRainSFX:
#_028296: LDA.l $7EF3C5 ; is it raining?
#_02829A: CMP.b #$02
#_02829C: BCS .exit

#_02829E: LDA.b #$05 ; SFX1.05 - shut off ambient sfx
#_0282A0: STA.w $012D

#_0282A3: LDA.b $A4 ; are we on a basement floor?
#_0282A5: BMI .exit

#_0282A7: REP #$20

#_0282A9: LDA.b $A0
#_0282AB: CMP.w #$0002 ; are we in sanctuary?
#_0282AE: BEQ .exit

#_0282B0: CMP.w #$0012 ; also sanctuary
#_0282B3: BEQ .exit

#_0282B5: SEP #$20

#_0282B7: LDA.b #$03 ; SFX1.03
#_0282B9: STA.w $012D

.exit
#_0282BC: SEP #$20

#_0282BE: RTL

;===================================================================================================

CacheRoomEntryProperties_long:
#_0282BF: JSR CacheRoomEntryProperties

#_0282C2: RTL

;===================================================================================================

pool OverworldLoad

.submodules
#_0282C3: dw Module08_00_LoadProperties
#_0282C5: dw Overworld_LoadSubscreenAndSilenceSFX1
#_0282C7: dw Module08_02_LoadAndAdvance

pool off

;---------------------------------------------------------------------------------------------------

Module08_OverworldLoad:
Module0A_OverworldSpecialLoad:
#_0282C9: LDA.b $11
#_0282CB: ASL A
#_0282CC: TAX

#_0282CD: JSR (OverworldLoad_submodules,X)

#_0282D0: RTL

;===================================================================================================

Module08_00_LoadProperties:
#_0282D1: LDA.b #$82
#_0282D3: STA.b $99

#_0282D5: STZ.w $03F4

#_0282D8: JSL AdjustLinkBunnyStatus

#_0282DC: LDA.b $10
#_0282DE: CMP.b #$08
#_0282E0: BNE .special_overworld_a

#_0282E2: JSR LoadOverworldFromUnderworld
#_0282E5: BRA .continue_a

.special_overworld_a
#_0282E7: JSR LoadOverworldFromSpecialOverworld

.continue_a
; hide keys
#_0282EA: LDA.b #$FF
#_0282EC: STA.l $7EF36F

#_0282F0: JSL RefillLogic_long

#_0282F4: LDY.b #$58
#_0282F6: LDX.b #$02 ; SONG 02

; Check for death mountain screens
#_0282F8: LDA.b $8A
#_0282FA: CMP.b #$03
#_0282FC: BEQ .death_mountain

#_0282FE: CMP.b #$05
#_028300: BEQ .death_mountain

#_028302: CMP.b #$07
#_028304: BEQ .death_mountain

#_028306: LDX.b #$09 ; SONG 09

; check for dark death mountain screens
#_028308: LDA.b $8A
#_02830A: CMP.b #$43
#_02830C: BEQ .death_mountain

#_02830E: CMP.b #$45
#_028310: BEQ .death_mountain

#_028312: CMP.b #$47
#_028314: BEQ .death_mountain

#_028316: LDY.b #$5A

#_028318: LDA.b $8A
#_02831A: CMP.b #$40
#_02831C: BCS .dark_world

;---------------------------------------------------------------------------------------------------

#_02831E: LDX.b #$07 ; SONG 07
#_028320: LDA.l $7EF3C5
#_028324: CMP.b #$03
#_028326: BCC .aga_alive

#_028328: LDX.b #$02 ; SONG 02

.aga_alive
; kak well
#_02832A: LDA.b $A0
#_02832C: CMP.b #$2F
#_02832E: BEQ .death_mountain

; TODO what is this?
; A shop, but that doesn't make much sense to me...
#_028330: LDA.b $A0
#_028332: CMP.b #$1F
#_028334: BNE .not_some_shop

#_028336: LDA.b $8A
#_028338: CMP.b #$18
#_02833A: BEQ .death_mountain

.not_some_shop
#_02833C: LDX.b #$05 ; SONG 05

; Check for master sword
#_02833E: LDA.l $7EF300
#_028342: AND.b #$40
#_028344: BEQ .no_ms

#_028346: LDX.b #$02 ; SONG 02

.no_ms
#_028348: LDA.b $A0
#_02834A: BEQ .death_mountain

#_02834C: CMP.b #$E1
#_02834E: BEQ .death_mountain

;---------------------------------------------------------------------------------------------------

.dark_world
#_028350: LDX.b #$F3 ; SONG F3 - max volume

; If the last command was the cut the volume in half, turn it back up.
#_028352: LDA.w $0132
#_028355: CMP.b #$F2 ; SONG F2 - half volume
#_028357: BEQ .continue_with_music

; Use overture theme for aga defeated
#_028359: LDX.b #$02 ; SONG 02

#_02835B: LDA.l $7EF3C5
#_02835F: CMP.b #$02
#_028361: BCS .death_mountain

; otherwise, use legends theme, maybe
#_028363: LDX.b #$03 ; SONG 03

.death_mountain
; check for dark world
#_028365: LDA.l $7EF3CA
#_028369: BEQ .continue_with_music

#_02836B: LDX.b #$0D ; SONG 0D

#_02836D: LDA.b $8A
#_02836F: CMP.b #$40
#_028371: BEQ .use_sw_theme

#_028373: CMP.b #$43
#_028375: BEQ .use_sw_theme

#_028377: CMP.b #$45
#_028379: BEQ .use_sw_theme

#_02837B: CMP.b #$47
#_02837D: BEQ .use_sw_theme

#_02837F: LDX.b #$09 ; SONG 09

.use_sw_theme
; Check for pearl
#_028381: LDA.l $7EF357
#_028385: BNE .continue_with_music

#_028387: LDX.b #$04 ; SONG 04

.continue_with_music
#_028389: STX.w $0132

#_02838C: JSL DecompressAnimatedOverworldTiles
#_028390: JSL InitializeTilesets
#_028394: JSR OverworldLoadScreensPaletteSet

#_028397: LDX.b $8A

#_028399: LDA.l $7EFD40,X
#_02839D: STA.b $00

#_02839F: LDA.l OverworldPalettesScreenToSet,X
#_0283A3: JSL OverworldPalettesLoader
#_0283A7: JSL Overworld_SetScreenBGColor

#_0283AB: LDA.b $10
#_0283AD: CMP.b #$08
#_0283AF: BNE .special_overworld_b

#_0283B1: JSR Overworld_CopyPalettesToCache_WithPrep
#_0283B4: BRA .continue_b

.special_overworld_b
#_0283B6: JSR SpecialOverworld_CopyPalettesToCache

.continue_b
#_0283B9: JSL Overworld_SetFixedColAndScroll

#_0283BD: LDA.b #$00
#_0283BF: STA.l $7EC017

#_0283C3: JSL Follower_Initialize

#_0283C7: LDA.b $8A
#_0283C9: AND.b #$3F
#_0283CB: BNE .not_woods

; mushroom
#_0283CD: LDA.b #$1E
#_0283CF: JSL WriteTo4BPPBuffer_item_gfx

.not_woods
#_0283D3: LDA.b #$09
#_0283D5: STA.w $010C

#_0283D8: JSL Sprite_ReloadAll_Overworld

; Skip portal in DW
#_0283DC: LDA.b $8A
#_0283DE: AND.b #$40
#_0283E0: BNE .no_mirror_portal

#_0283E2: JSL InitializeMirrorPortal

.no_mirror_portal
#_0283E6: LDX.b #$05 ; SFX1.05

#_0283E8: LDA.l $7EF3C5
#_0283EC: CMP.b #$02
#_0283EE: BCS .no_rain_sfx

#_0283F0: LDX.b #$01 ; SFX1.01

.no_rain_sfx
#_0283F2: STX.w $012D

; Delete the maiden if that's our current follower
#_0283F5: LDA.l $7EF3CC
#_0283F9: CMP.b #$06 ; FOLLOWER 06
#_0283FB: BNE .not_blind_follower

#_0283FD: LDA.b #$00
#_0283FF: STA.l $7EF3CC

.not_blind_follower
#_028403: STZ.b $6C

#_028405: STZ.b $3A
#_028407: STZ.b $3C

#_028409: STZ.b $50
#_02840B: STZ.b $5E

#_02840D: STZ.w $0351

#_028410: JSR DeleteCertainAncillaeStopDashing

; Check for pearl
#_028413: LDA.l $7EF357
#_028417: BNE .dont_become_bunny

; Check for dw
#_028419: LDA.l $7EF3CA
#_02841D: BEQ .dont_become_bunny

#_02841F: LDA.b #$01
#_028421: STA.w $02E0
#_028424: STA.b $56

#_028426: LDA.b #$17 ; LINKSTATE 17
#_028428: STA.b $5D

#_02842A: JSL RefreshLinkEquipmentPalettes_bunny

.dont_become_bunny
#_02842E: LDA.b #$09
#_028430: STA.b $94

#_028432: LDA.b #$00
#_028434: STA.l $7EC005

#_028438: STZ.w $046C
#_02843B: STZ.b $EE
#_02843D: STZ.w $0476

#_028440: INC.b $11
#_028442: INC.b $16

#_028444: STZ.w $0402
#_028447: STZ.w $0403

;===================================================================================================

LoadOWMusicIfNeeded:
#_02844A: LDA.w $0136
#_02844D: BEQ .exit

#_02844F: SEI

#_028450: STZ.w NMITIMEN
#_028453: STZ.w HDMAEN
#_028456: STZ.w $0136

#_028459: LDA.b #$FF ; SONG FF - transfer
#_02845B: STA.w APUIO0

#_02845E: JSL LoadOverworldSongs

#_028462: LDA.b #$81
#_028464: STA.w NMITIMEN

.exit
#_028467: RTS

;===================================================================================================

AdjustLinkBunnyStatus:
; Check for pearl
#_028468: LDA.l $7EF357
#_02846C: BEQ .exit

;===================================================================================================

#ForceNonbunnyStatus:
#_02846E: LDA.b #$00 ; LINKSTATE 00
#_028470: STA.b $5D

#_028472: STZ.w $03F5
#_028475: STZ.w $03F6
#_028478: STZ.w $03F7

#_02847B: STZ.b $56
#_02847D: STZ.w $02E0

.exit
#_028480: RTL

;===================================================================================================

pool Module1B_SpawnSelect

.spawns
#_028481: db $00 ; Link's  house
#_028482: db $01 ; Sanctuary
#_028483: db $06 ; Mountain cave

pool off

;---------------------------------------------------------------------------------------------------

Module1B_SpawnSelect:
#_028484: JSL RenderText

#_028488: LDA.b $11
#_02848A: BNE .exit

#_02848C: STZ.b $14

#_02848E: JSL EnableForceBlank
#_028492: JSL EraseTilemaps_normal

#_028496: LDA.l $7EF3C8
#_02849A: PHA

#_02849B: LDX.w $1CE8

#_02849E: LDA.l .spawns,X
#_0284A2: STA.l $7EF3C8

#_0284A6: STZ.b $B0

#_0284A8: JSL LoadUnderworldRoomRebuildHUD

#_0284AC: PLA
#_0284AD: STA.l $7EF3C8

.exit
#_0284B1: RTL

;===================================================================================================

pool Credits_LoadScene_Overworld

.vectors
#_0284B2: dw Credits_LoadScene_Overworld_PrepGFX
#_0284B4: dw Credits_LoadScene_Overworld_Overlay
#_0284B6: dw Credits_LoadScene_Overworld_LoadMap

pool off

;---------------------------------------------------------------------------------------------------

Credits_LoadScene_Overworld:
#_0284B8: LDA.b $B0
#_0284BA: ASL A
#_0284BB: TAX

#_0284BC: JSR (.vectors,X)

#_0284BF: RTL

;===================================================================================================

pool Credits_LoadScene_Overworld_PrepGFX Credits_LoadScene_Underworld

.screen
#_0284C0: dw $1000 ; Hyrule Castle
#_0284C2: dw $0002 ; Sanctuary
#_0284C4: dw $1002 ; Kakariko
#_0284C6: dw $1012 ; Desert
#_0284C8: dw $1004 ; Tower of Hera
#_0284CA: dw $1006 ; Link's house
#_0284CC: dw $1010 ; Zora's Domain
#_0284CE: dw $1014 ; Potion shop
#_0284D0: dw $100A ; Lumberjacks
#_0284D2: dw $1016 ; Haunted Grove
#_0284D4: dw $005D ; Wishing Well
#_0284D6: dw $0064 ; Smithery
#_0284D8: dw $100E ; Kakariko (bug net)
#_0284DA: dw $1008 ; Death Mountain
#_0284DC: dw $1018 ; Lost Woods
#_0284DE: dw $0180 ; Master Sword

;---------------------------------------------------------------------------------------------------

.sprite_gfx
#_0284E0: db $28
#_0284E1: db $46
#_0284E2: db $27
#_0284E3: db $2E
#_0284E4: db $2B
#_0284E5: db $2B
#_0284E6: db $0E
#_0284E7: db $2C
#_0284E8: db $1A
#_0284E9: db $29
#_0284EA: db $47
#_0284EB: db $28
#_0284EC: db $27
#_0284ED: db $28
#_0284EE: db $2A
#_0284EF: db $28
#_0284F0: db $2D

.sprite_palette
#_0284F1: db $01
#_0284F2: db $40
#_0284F3: db $01
#_0284F4: db $04
#_0284F5: db $01
#_0284F6: db $01
#_0284F7: db $01
#_0284F8: db $11
#_0284F9: db $01
#_0284FA: db $01
#_0284FB: db $47
#_0284FC: db $40
#_0284FD: db $01
#_0284FE: db $01
#_0284FF: db $01
#_028500: db $01
#_028501: db $01

pool off

;---------------------------------------------------------------------------------------------------

Credits_LoadScene_Overworld_PrepGFX:
#_028502: JSL EnableForceBlank
#_028506: JSL EraseTilemaps_normal

#_02850A: LDA.b #$82
#_02850C: STA.b $99

#_02850E: REP #$20

#_028510: LDX.b $11

#_028512: LDA.l .screen,X
#_028516: STA.b $A0

#_028518: SEP #$20

; Zora's Domain
#_02851A: CPX.b #$0C
#_02851C: BEQ .special_overworld

; Master Sword pedestal
#_02851E: CPX.b #$1E
#_028520: BEQ .special_overworld

#_028522: JSR LoadOverworldFromUnderworld

#_028525: BRA .continue

.special_overworld
#_028527: JSR LoadSpecialOverworld

;---------------------------------------------------------------------------------------------------

.continue
#_02852A: STZ.w $012C
#_02852D: STZ.w $012D

#_028530: LDY.b #$58

#_028532: LDA.b $8A
#_028534: AND.b #$BF
#_028536: CMP.b #$03
#_028538: BEQ .death_mountain_screen

#_02853A: CMP.b #$05
#_02853C: BEQ .death_mountain_screen

#_02853E: CMP.b #$07
#_028540: BEQ .death_mountain_screen

#_028542: LDY.b #$5A

.death_mountain_screen
#_028544: JSL DecompressAnimatedOverworldTiles

;---------------------------------------------------------------------------------------------------

#_028548: LDA.b $11
#_02854A: LSR A
#_02854B: TAX

#_02854C: LDA.l .sprite_gfx,X
#_028550: STA.w $0AA3

#_028553: LDA.l .sprite_palette,X
#_028557: PHA

#_028558: JSL InitializeTilesets
#_02855C: JSR OverworldLoadScreensPaletteSet

#_02855F: PLA
#_028560: STA.b $00

#_028562: LDX.b $8A
#_028564: LDA.l OverworldPalettesScreenToSet,X

#_028568: JSL OverworldPalettesLoader

#_02856C: LDA.b #$01
#_02856E: STA.w $0AB2

#_028571: JSL Palettes_Load_HUD

;---------------------------------------------------------------------------------------------------

#_028575: LDA.b $11
#_028577: BNE .font_already_transferred

#_028579: JSL DecompressFontGFX
#_02857D: JSL TransferFontToVRAM

.font_already_transferred
#_028581: JSR Overworld_CopyPalettesToCache_WithPrep
#_028584: JSL Overworld_SetFixedColAndScroll

#_028588: LDA.b $8A
#_02858A: CMP.b #$80
#_02858C: BCC .no_special_bg_color

#_02858E: JSL Overworld_SetScreenBGColor

.no_special_bg_color
#_028592: LDA.b #$09
#_028594: STA.b $94

#_028596: INC.b $B0

#_028598: RTS

;===================================================================================================

Credits_LoadScene_Overworld_Overlay:
#_028599: JSR Overworld_ReloadSubscreenOverlay

#_02859C: STZ.w $012C
#_02859F: STZ.w $012D

#_0285A2: DEC.b $11

#_0285A4: INC.b $B0

#_0285A6: RTS

;===================================================================================================

Credits_LoadScene_Overworld_LoadMap:
#_0285A7: JSR Overworld_LoadAndBuildScreen
#_0285AA: JSL Credits_PrepAndLoadSprites

#_0285AE: STZ.b $C8
#_0285B0: STZ.b $C9
#_0285B2: STZ.b $B0

#_0285B4: RTS

;===================================================================================================

Credits_OperateScrollingAndTilemap:
#_0285B5: JSL Credits_HandleCameraScrollControl

#_0285B9: LDA.w $0416
#_0285BC: BEQ .exit

#_0285BE: JSR OverworldHandleMapScroll

.exit
#_0285C1: RTL

;===================================================================================================

Credits_LoadCoolBackground:
#_0285C2: LDA.b #$21
#_0285C4: STA.w $0AA1

#_0285C7: LDA.b #$3B
#_0285C9: STA.w $0AA2

#_0285CC: LDA.b #$2D
#_0285CE: STA.w $0AA3

#_0285D1: JSL InitializeTilesets

#_0285D5: LDX.b #$5B
#_0285D7: STX.b $8A

#_0285D9: LDA.b #$13
#_0285DB: STA.b $00

#_0285DD: LDA.l OverworldPalettesScreenToSet,X
#_0285E1: JSL OverworldPalettesLoader

#_0285E5: LDA.b #$03
#_0285E7: STA.w $0AB5

#_0285EA: JSL Palettes_Load_OWBG2
#_0285EE: JSR Overworld_CopyPalettesToCache
#_0285F1: JSR Overworld_ReloadSubscreenOverlay

#_0285F4: STZ.b $E6
#_0285F6: STZ.b $E7
#_0285F8: STZ.b $E0
#_0285FA: STZ.b $E1

#_0285FC: DEC.b $11

#_0285FE: RTL

;===================================================================================================

Credits_LoadScene_Underworld:
#_0285FF: JSL EnableForceBlank
#_028603: JSL EraseTilemaps_normal

#_028607: REP #$20

#_028609: LDX.b $11

#_02860B: LDA.l .screen,X
#_02860F: STA.w $010E

#_028612: SEP #$20

#_028614: JSR Underworld_LoadEntrance

#_028617: STZ.w $045A
#_02861A: STZ.w $0458

#_02861D: JSR Underworld_LoadAndDrawRoom

#_028620: LDX.w $0AA1

#_028623: LDA.l AnimatedTileSheets,X
#_028627: TAY

#_028628: JSL DecompressAnimatedUnderworldTiles

#_02862C: LDA.b $11
#_02862E: LSR A
#_02862F: TAX

#_028630: LDA.l .sprite_gfx,X
#_028634: STA.w $0AA3

#_028637: LDA.l .sprite_palette,X
#_02863B: ASL A
#_02863C: ASL A
#_02863D: TAX

#_02863E: LDA.l UnderworldPaletteSets+2,X
#_028642: STA.w $0AAD

#_028645: LDA.l UnderworldPaletteSets+3,X
#_028649: STA.w $0AAE

#_02864C: LDA.b #$0A
#_02864E: STA.w $0AA4

#_028651: JSL InitializeTilesets

#_028655: LDA.b #$0A
#_028657: STA.w $0AB1

#_02865A: JSR Underworld_LoadPalettes

#_02865D: LDA.b #$09
#_02865F: STA.b $94

#_028661: STZ.b $C8
#_028663: STZ.b $C9

#_028665: STZ.b $13

#_028667: INC.b $11

#_028669: JSL Credits_PrepAndLoadSprites

#_02866D: RTL

;===================================================================================================

pool Module07_Underworld

.submodules
#_02866E: dw Module07_00_PlayerControl                    ; 0x00
#_028670: dw Module07_01_IntraroomTransition              ; 0x01
#_028672: dw Module07_02_InterroomTransition              ; 0x02
#_028674: dw Module07_03_OverlayChange                    ; 0x03
#_028676: dw Module07_04_UnlockDoor                       ; 0x04
#_028678: dw Module07_05_ControlShutters                  ; 0x05
#_02867A: dw Module07_06_FatInterRoomStairs               ; 0x06
#_02867C: dw Module07_07_FallingTransition                ; 0x07
#_02867E: dw Module07_08_NorthIntraRoomStairs             ; 0x08
#_028680: dw Module07_09_OpenCrackedDoor                  ; 0x09
#_028682: dw Module07_0A_ChangeBrightness                 ; 0x0A
#_028684: dw Module07_0B_DrainSwampPool                   ; 0x0B
#_028686: dw Module07_0C_FloodSwampWater                  ; 0x0C
#_028688: dw Module07_0D_FloodDam                         ; 0x0D
#_02868A: dw Module07_0E_SpiralStairs                     ; 0x0E
#_02868C: dw Module07_0F_LandingWipe                      ; 0x0F
#_02868E: dw Module07_10_SouthIntraRoomStairs             ; 0x10
#_028690: dw Module07_11_StraightInterroomStairs          ; 0x11
#_028692: dw Module07_11_StraightInterroomStairs          ; 0x12
#_028694: dw Module07_11_StraightInterroomStairs          ; 0x13
#_028696: dw Module07_14_RecoverFromFall                  ; 0x14
#_028698: dw Module07_15_WarpPad                          ; 0x15
#_02869A: dw Module07_16_UpdatePegs                       ; 0x16
#_02869C: dw Module07_17_PressurePlate                    ; 0x17
#_02869E: dw Module07_18_RescuedMaiden                    ; 0x18
#_0286A0: dw Module07_19_MirrorFade                       ; 0x19
#_0286A2: dw Module07_1A_RoomDraw_OpenTriforceDoor_bounce ; 0x1A

pool off

;---------------------------------------------------------------------------------------------------

Module07_Underworld:
#_0286A4: SEP #$30

#_0286A6: JSL Underworld_HandleLayerEffect

#_0286AA: LDA.b $11
#_0286AC: ASL A
#_0286AD: TAX

#_0286AE: JSR (.submodules,X)

#_0286B1: STZ.w $042C

#_0286B4: JSL PushBlock_Handler

#_0286B8: LDA.b $11
#_0286BA: BNE .continue

;---------------------------------------------------------------------------------------------------

#_0286BC: JSL Graphics_LoadChrHalfSlot
#_0286C0: JSR Underworld_HandleCamera

#_0286C3: LDA.b $11
#_0286C5: BNE .continue

#_0286C7: JSL Underworld_HandleRoomTags

#_0286CB: LDA.b $11
#_0286CD: BNE .continue

#_0286CF: JSL Underworld_ProcessTorchesAndDoors

#_0286D3: LDA.w $0454
#_0286D6: BEQ .no_blast_wall

#_0286D8: JSL Underworld_ClearAwayExplodingWall

.no_blast_wall
#_0286DC: LDA.b $6C
#_0286DE: BNE .continue

#_0286E0: JSR Underworld_TryScreenEdgeTransition

;---------------------------------------------------------------------------------------------------

.continue
#_0286E3: JSL OrientLampLightCone

#_0286E7: REP #$21

#_0286E9: LDA.b $E2
#_0286EB: PHA

#_0286EC: ADC.w $011A
#_0286EF: STA.b $E2
#_0286F1: STA.w $011E

#_0286F4: LDA.b $E8
#_0286F6: PHA

#_0286F7: CLC
#_0286F8: ADC.w $011C
#_0286FB: STA.b $E8
#_0286FD: STA.w $0122

#_028700: LDA.b $E0
#_028702: PHA

#_028703: CLC
#_028704: ADC.w $011A
#_028707: STA.b $E0
#_028709: STA.w $0120

#_02870C: LDA.b $E6
#_02870E: PHA

#_02870F: CLC
#_028710: ADC.w $011C
#_028713: STA.b $E6
#_028715: STA.w $0124

#_028718: LDA.w $0428
#_02871B: AND.w #$00FF
#_02871E: BEQ .keep_camera_coords

;---------------------------------------------------------------------------------------------------

#_028720: PLA
#_028721: PLA

#_028722: LDA.w $0422
#_028725: CLC
#_028726: ADC.b $E2
#_028728: STA.w $0120
#_02872B: STA.b $E0

#_02872D: PHA

#_02872E: LDA.w $0424
#_028731: CLC
#_028732: ADC.b $E8
#_028734: STA.w $0124
#_028737: STA.b $E6

#_028739: PHA

;---------------------------------------------------------------------------------------------------

.keep_camera_coords
#_02873A: SEP #$20

#_02873C: JSL Underworld_DrawAllPushBlocks
#_028740: JSL Sprite_Main

#_028744: REP #$20

#_028746: PLA
#_028747: STA.b $E6

#_028749: PLA
#_02874A: STA.b $E0

#_02874C: PLA
#_02874D: STA.b $E8

#_02874F: PLA
#_028750: STA.b $E2

#_028752: SEP #$20

#_028754: JSL LinkOAM_Main

#_028758: JSL RefillLogic_long
#_02875C: JML HUD_HandleFloorIndicator

;===================================================================================================

Underworld_TryScreenEdgeTransition:
#_028760: REP #$20

#_028762: LDA.b $30
#_028764: AND.w #$00FF
#_028767: BEQ .no_vertical_movement

#_028769: LDA.b $67
#_02876B: AND.w #$000C
#_02876E: STA.b $00

#_028770: LDA.b $20
#_028772: AND.w #$01FF

#_028775: LDX.b #$03
#_028777: CMP.w #$0004
#_02877A: BCC .check_for_transition

#_02877C: LDX.b #$02
#_02877E: CMP.w #$01DC
#_028781: BCS .check_for_transition

;---------------------------------------------------------------------------------------------------

.no_vertical_movement
#_028783: LDA.b $31
#_028785: AND.w #$00FF
#_028788: BEQ .exit

#_02878A: LDA.b $67
#_02878C: AND.w #$0003
#_02878F: STA.b $00

#_028791: LDA.b $22
#_028793: AND.w #$01FF

#_028796: LDX.b #$01

#_028798: CMP.w #$0008
#_02879B: BCC .check_for_transition

#_02879D: LDX.b #$00
#_02879F: CMP.w #$01E9
#_0287A2: BCC .exit

;---------------------------------------------------------------------------------------------------

.check_for_transition
#_0287A4: SEP #$20

#_0287A6: JSL Link_CheckForEdgeScreenTransition
#_0287AA: BCS .exit

#_0287AC: LDA.b $10
#_0287AE: CMP.b #$07
#_0287B0: BNE .exit

#_0287B2: JSL Underworld_HandleEdgeTransitionMovement

#_0287B6: LDA.b $10
#_0287B8: CMP.b #$07
#_0287BA: BNE .exit

#_0287BC: LDA.b #$02
#_0287BE: STA.b $11

.exit
#_0287C0: SEP #$20

#_0287C2: RTS

;===================================================================================================

pool Underworld_HandleEdgeTransitionMovement

.masks
#_0287C3: db $03
#_0287C4: db $03
#_0287C5: db $0C
#_0287C6: db $0C

pool off

;---------------------------------------------------------------------------------------------------

Underworld_HandleEdgeTransitionMovement:
#_0287C7: LDA.b $67
#_0287C9: AND.l .masks,X
#_0287CD: STA.b $67

#_0287CF: TXA
#_0287D0: JSL JumpTableLong
#_0287D4: dl HandleEdgeTransitionMovementEast
#_0287D7: dl HandleEdgeTransitionMovementWest
#_0287DA: dl HandleEdgeTransitionMovementSouth
#_0287DD: dl HandleEdgeTransitionMovementNorth

;===================================================================================================

Module07_00_PlayerControl:
#_0287E0: LDA.w $0112 ; various freeze flags
#_0287E3: ORA.w $02E4
#_0287E6: ORA.w $0FFC
#_0287E9: BEQ .in_control

#_0287EB: JMP.w .no_SELECTing

;---------------------------------------------------------------------------------------------------

.in_control
#_0287EE: LDA.b $F4 ; check for START press
#_0287F0: AND.b #$10
#_0287F2: BEQ .no_START_press

#_0287F4: STZ.w $0200

#_0287F7: LDA.b #$01

#_0287F9: BRA .open_interface

;---------------------------------------------------------------------------------------------------

.no_START_press
#_0287FB: LDA.b $F6 ; check for X press
#_0287FD: AND.b #$40
#_0287FF: BEQ .no_mapping

#_028801: LDA.w $040C ; no mapping in caves
#_028804: CMP.b #$FF
#_028806: BEQ .no_mapping

#_028808: LDA.b $A0 ; no mapping in Ganon
#_02880A: BEQ .no_mapping

#_02880C: STZ.w $0200

#_02880F: LDA.b #$03

;---------------------------------------------------------------------------------------------------

.open_interface
#_028811: STA.b $11

#_028813: LDA.b $10
#_028815: STA.w $010C

#_028818: LDA.b #$0E
#_02881A: STA.b $10

#_02881C: RTS

;---------------------------------------------------------------------------------------------------

.no_mapping
#_02881D: LDA.b $F0 ; check for SELECT
#_02881F: AND.b #$20
#_028821: BEQ .no_SELECTing

#_028823: LDA.l $7EF3C5 ; can't SQ in game state 0
#_028827: BEQ .no_SELECTing

; save previous selected option
; TODO but why?
#_028829: LDA.w $1CE8
#_02882C: STA.w $1CF4

#_02882F: REP #$20

; Message 0184
#_028831: LDA.w #$0184
#_028834: STA.w $1CF0

#_028837: SEP #$20 ; save module

#_028839: LDA.b $10
#_02883B: PHA

#_02883C: JSL Interface_PrepAndDisplayMessage

#_028840: PLA
#_028841: STA.b $10

#_028843: STZ.b $B0

#_028845: LDA.b #$0B

#_028847: BRA .open_interface

;---------------------------------------------------------------------------------------------------

.no_SELECTing
#_028849: JSL Link_Main

#_02884D: RTS

;===================================================================================================

Underworld_SubscreenEnable:
#_02884E: db $00, $01, $01, $FF, $01, $01, $01, $01

;===================================================================================================

PendantBossRooms:
#_028856: dw $00C8 ; Armos
#_028858: dw $0033 ; Lanmolas
#_02885A: dw $0007 ; Moldorm
#_02885C: dw $0020 ; Agahnim 1

;===================================================================================================

CrystalBossRooms:
#_02885E: dw $0006 ; Arrghus
#_028860: dw $005A ; Helmasaur
#_028862: dw $0029 ; Mothula
#_028864: dw $0090 ; Vitreous
#_028866: dw $00DE ; Kholdstare
#_028868: dw $00A4 ; Trinexx
#_02886A: dw $00AC ; Blind
#_02886C: dw $000D ; Agahnim 2

;===================================================================================================

pool Module07_01_IntraroomTransition

.subsubmodules
#_02886E: dw UnderworldTransition_Intraroom_PrepTransition  ; 0x00
#_028870: dw UnderworldTransition_Intraroom_ApplyFilter     ; 0x01
#_028872: dw UnderworldTransition_Intraroom_ResetShutters   ; 0x02
#_028874: dw UnderworldTransition_ScrollRoom                ; 0x03
#_028876: dw UnderworldTransition_FindTransitionLanding     ; 0x04
#_028878: dw UnderworldTransition_HandleFinalMovements      ; 0x05
#_02887A: dw UnderworldTransition_Intraroom_ApplyFilter     ; 0x06
#_02887C: dw UnderworldTransition_Intraroom_TriggerShutters ; 0x07

pool off

;---------------------------------------------------------------------------------------------------

Module07_01_IntraroomTransition:
#_02887E: REP #$20

#_028880: LDA.b $22
#_028882: STA.w $0FC2

#_028885: LDA.b $20
#_028887: STA.w $0FC4

#_02888A: SEP #$20

#_02888C: JSL Link_HandleMovingAnimation_FullLongEntry

#_028890: LDA.b $B0
#_028892: ASL A
#_028893: TAX

#_028894: JMP.w (.subsubmodules,X)

;===================================================================================================

UnderworldTransition_Intraroom_ResetShutters:
#_028897: STZ.w $0468

#_02889A: LDA.b #$07
#_02889C: STA.w $0690

#_02889F: LDA.b $11
#_0288A1: PHA

#_0288A2: JSL OperateShutterDoors

#_0288A6: PLA
#_0288A7: STA.b $11

#_0288A9: LDA.b #$1F
#_0288AB: STA.l $7EC007

#_0288AF: LDA.b #$00
#_0288B1: STA.l $7EC00B

#_0288B5: INC.b $B0

#_0288B7: RTS

;===================================================================================================

UnderworldTransition_Intraroom_PrepTransition:
#_0288B8: REP #$20

#_0288BA: LDA.w #$0000
#_0288BD: STA.l $7EC009
#_0288C1: STA.l $7EC007

#_0288C5: LDA.w #$001F
#_0288C8: STA.l $7EC00B

#_0288CC: STZ.w $0AA6

#_0288CF: SEP #$20

#_0288D1: STZ.w $0646
#_0288D4: STZ.w $0642

#_0288D7: INC.b $B0

#_0288D9: RTS

;===================================================================================================

UnderworldTransition_Intraroom_ApplyFilter:
#_0288DA: LDA.l $7EC005
#_0288DE: BEQ .advance

#_0288E0: JSL ApplyPaletteFilter

#_0288E4: LDA.l $7EC007
#_0288E8: BEQ .exit

#_0288EA: JSL ApplyPaletteFilter

.exit
#_0288EE: RTS

.advance
#_0288EF: INC.b $B0

#_0288F1: RTS

;===================================================================================================

UnderworldTransition_Intraroom_TriggerShutters:
#_0288F2: JSR ResetThenCacheRoomEntryProperties

#_0288F5: LDA.w $0468
#_0288F8: BNE .exit

#_0288FA: INC.w $0468

#_0288FD: STZ.w $068E
#_028900: STZ.w $0690

#_028903: LDA.b #$05
#_028905: STA.b $11

.exit
#_028907: RTS

;===================================================================================================

pool Module07_02_InterroomTransition

.subsubmodules
#_028908: dw Module07_02_00_InitializeTransition         ; 0x00
#_02890A: dw Module07_02_01_LoadNextRoom                 ; 0x01
#_02890C: dw Module07_02_FadedFilter                     ; 0x02
#_02890E: dw Module07_02_03                              ; 0x03
#_028910: dw Underworld_PrepNextQuadrantUploadAndAdvance ; 0x04
#_028912: dw Underworld_PrepTilemapAndAdvance            ; 0x05
#_028914: dw Underworld_PrepNextQuadrantUploadAndAdvance ; 0x06
#_028916: dw Module07_02_07                              ; 0x07
#_028918: dw UnderworldTransition_ScrollRoom             ; 0x08
#_02891A: dw Module07_02_09                              ; 0x09
#_02891C: dw Module07_02_0A                              ; 0x0A
#_02891E: dw Module07_02_09                              ; 0x0B
#_028920: dw Module07_02_0C                              ; 0x0C
#_028922: dw Module07_02_0D                              ; 0x0D
#_028924: dw Module07_02_FadedFilter                     ; 0x0E
#_028926: dw Module07_02_0F                              ; 0x0F

pool off

;---------------------------------------------------------------------------------------------------

Module07_02_InterroomTransition:
#_028928: REP #$20

#_02892A: LDA.b $22
#_02892C: STA.w $0FC2

#_02892F: LDA.b $20
#_028931: STA.w $0FC4

#_028934: SEP #$20

#_028936: LDA.b $B0
#_028938: BEQ .run_subsubsub

#_02893A: CMP.b #$07
#_02893C: BCC .skip_upload

#_02893E: JSL Graphics_IncrementalVRAMUpload

.skip_upload
#_028942: JSL Underworld_LoadAttribute_Selectable

.run_subsubsub
#_028946: JSL Link_HandleMovingAnimation_FullLongEntry

#_02894A: LDA.b $B0
#_02894C: ASL A
#_02894D: TAX

#_02894E: JMP.w (.subsubmodules,X)

;===================================================================================================

Module07_02_00_InitializeTransition:
#_028951: LDA.w $0458
#_028954: PHA

#_028955: JSR ResetTransitionPropsAndAdvanceSubmodule

#_028958: PLA
#_028959: STA.w $0458

#_02895C: RTS

;===================================================================================================

Module07_02_01_LoadNextRoom:
#_02895D: JSL Underworld_LoadRoom
#_028961: JSL ResetStarTileGraphics
#_028965: JSL LoadTransAuxGFX_sprite

#_028969: INC.b $B0

#_02896B: STZ.w $0200

#_02896E: LDA.b $A2 ; !WTF just save it right away
#_028970: PHA

#_028971: LDA.b $A0
#_028973: STA.w $048E

#_028976: PLA
#_028977: STA.b $A2

#_028979: JSL Underworld_ResetSprites

#_02897D: LDA.w $0458
#_028980: BNE .no_scroll_sync

#_028982: JSR UnderworldSyncBG1and2Scroll

.no_scroll_sync
#_028985: STZ.w $0458

#_028988: RTS

;===================================================================================================

Module07_02_03:
#_028989: LDA.l $7EC005
#_02898D: ORA.l $7EC006
#_028991: BEQ .keep_subscreen_enable

#_028993: STZ.b $1D

.keep_subscreen_enable
#_028995: JSL Underworld_AdjustForRoomLayout
#_028999: JSL LoadNewSpriteGFXSet

#_02899D: JSR UnderworldSyncBG1and2Scroll
#_0289A0: JSL WaterFlood_BuildOneQuadrantForVRAM

#_0289A4: INC.b $B0

#_0289A6: RTS

;===================================================================================================

Module07_02_0A:
#_0289A7: LDA.l $7EC005
#_0289AB: ORA.l $7EC006
#_0289AF: BEQ Underworld_PrepTilemapAndAdvance

;===================================================================================================

Underworld_FilterPrepTilemapAndAdvance:
#_0289B1: JSL ApplyPaletteFilter

;===================================================================================================

Underworld_PrepTilemapAndAdvance:
#_0289B5: JSL WaterFlood_BuildOneQuadrantForVRAM

#_0289B9: INC.b $B0

#_0289BB: RTS

;===================================================================================================

Module07_02_09:
#_0289BC: LDA.l $7EC005
#_0289C0: ORA.l $7EC006
#_0289C4: BEQ Underworld_PrepNextQuadrantUploadAndAdvance

;===================================================================================================

Underworld_FilterUploadAndAdvance:
#_0289C6: JSL ApplyPaletteFilter

;===================================================================================================

Underworld_PrepNextQuadrantUploadAndAdvance:
#_0289CA: JSL Underworld_PrepareNextRoomQuadrantUpload

#_0289CE: INC.b $B0

#_0289D0: RTS

;===================================================================================================

Module07_02_0C:
#_0289D1: LDA.b $11
#_0289D3: CMP.b #$02
#_0289D5: BNE Underworld_AdvanceAndReset

#_0289D7: LDA.w $0200
#_0289DA: CMP.b #$05
#_0289DC: BNE EXIT_028A2F

#_0289DE: JSR IntraroomTransitionCalculateLanding

#_0289E1: LDA.l $7EC005
#_0289E5: ORA.l $7EC006
#_0289E9: BEQ Underworld_AdvanceAndReset

#_0289EB: JSL ApplyPaletteFilter

;===================================================================================================

Underworld_AdvanceAndReset:
#_0289EF: INC.b $B0

;===================================================================================================

Underworld_ResetTorchBackgroundAndPlayer:
#_0289F1: LDY.b #$16
#_0289F3: LDX.w $0414

#_0289F6: LDA.l Underworld_SubscreenEnable,X
#_0289FA: BPL .disable

#_0289FC: LDY.b #$17
#_0289FE: LDA.b #$00

.disable
#_028A00: CPX.b #$02
#_028A02: BNE .wait_dont_disable

#_028A04: LDA.b #$03

.wait_dont_disable
#_028A06: STY.b $1C
#_028A08: STA.b $1D

#_028A0A: JSL RestoreTorchBackground

;===================================================================================================

DeleteCertainAncillaeStopDashing:
#_028A0E: JSL Ancilla_TerminateSelectInteractives

#_028A12: LDA.w $0372
#_028A15: BEQ EXIT_028A2F

#_028A17: STZ.b $4D
#_028A19: STZ.b $46

#_028A1B: LDA.b #$FF
#_028A1D: STA.b $29
#_028A1F: STA.b $C7

#_028A21: STZ.b $3D
#_028A23: STZ.b $5E

#_028A25: STZ.w $032B
#_028A28: STZ.w $0372

#_028A2B: LDA.b #$00 ; LINKSTATE 00
#_028A2D: STA.b $5D

;---------------------------------------------------------------------------------------------------

#EXIT_028A2F:
#_028A2F: RTS

;===================================================================================================

Module07_02_07:
#_028A30: REP #$10

#_028A32: LDX.b $E2
#_028A34: STX.b $E0

#_028A36: LDX.b $E8
#_028A38: STX.b $E6

#_028A3A: LDX.b $A0

; Swamp big chest?
#_028A3C: CPX.w #$0036
#_028A3F: BEQ .dont_change_mainandsubscreen

; Swamp 2nd room?
#_028A41: CPX.w #$0038
#_028A44: BEQ .dont_change_mainandsubscreen

#_028A46: LDX.w $0414
#_028A49: LDY.w #$0016

#_028A4C: LDA.l Underworld_SubscreenEnable,X
#_028A50: BEQ .am_zero

#_028A52: LDY.w #$0116

.am_zero
#_028A55: CPY.b $1C
#_028A57: BEQ .dont_change_mainandsubscreen

#_028A59: LDA.b $1C
#_028A5B: CMP.b #$17
#_028A5D: BEQ .set_mainandsubscreen

#_028A5F: ORA.b $1D
#_028A61: CMP.b #$17
#_028A63: BEQ .dont_change_mainandsubscreen

.set_mainandsubscreen
#_028A65: STY.b $1C

.dont_change_mainandsubscreen
#_028A67: SEP #$10

;===================================================================================================

UnderworldTransition_RunFiltering:
#_028A69: LDA.l $7EC005
#_028A6D: ORA.l $7EC006
#_028A71: BEQ .no_filter

#_028A73: LDX.b #$03

#_028A75: LDA.l $7EC005
#_028A79: BEQ .use_fixed_color_3

#_028A7B: LDX.w $045A

.use_fixed_color_3
#_028A7E: LDA.l RoomEffectFixedColors,X
#_028A82: STA.l $7EC017

#_028A86: JSL ApplyGrayscaleFixed_Parameterized

#_028A8A: LDA.b #$00
#_028A8C: STA.l $7EC00B

.no_filter
#_028A90: JSR Underworld_HandleTranslucencyAndPalettes

#_028A93: RTS

;===================================================================================================

Module07_02_FadedFilter:
#_028A94: LDA.l $7EC005
#_028A98: ORA.l $7EC006
#_028A9C: BEQ .next_subsub

#_028A9E: JSL ApplyPaletteFilter
#_028AA2: LDA.l $7EC007
#_028AA6: BEQ .exit

#_028AA8: JSL ApplyPaletteFilter

.exit
#_028AAC: RTS

.next_subsub
#_028AAD: INC.b $B0

#_028AAF: RTS

;===================================================================================================

Module07_02_0F:
#_028AB0: JSR ResetThenCacheRoomEntryProperties

#_028AB3: LDA.w $0468
#_028AB6: BNE Underworld_SetBossOrSancMusicUponEntry

#_028AB8: LDA.b $A0

; Blind's room?
#_028ABA: CMP.b #$AC
#_028ABC: BNE .not_workable_blinds_room

#_028ABE: LDA.w $0403
#_028AC1: AND.b #$20
#_028AC3: BNE .not_workable_blinds_room

#_028AC5: LDA.w $0403
#_028AC8: AND.b #$10
#_028ACA: BEQ Underworld_SetBossOrSancMusicUponEntry

.not_workable_blinds_room
#_028ACC: INC.w $0468

#_028ACF: STZ.w $068E
#_028AD2: STZ.w $0690

#_028AD5: LDA.b #$05
#_028AD7: STA.b $11

;===================================================================================================

Underworld_SetBossOrSancMusicUponEntry:
#_028AD9: REP #$20

#_028ADB: LDX.b #$14 ; SONG 14

#_028ADD: LDA.b $A0

; Sanc?
#_028ADF: CMP.w #$0012
#_028AE2: BEQ .set_song

#_028AE4: LDX.b #$10 ; SONG 10

; Pre sanc?
#_028AE6: CMP.w #$0002
#_028AE9: BEQ .set_song

;---------------------------------------------------------------------------------------------------

#_028AEB: LDX.b #$18

.check_next_room
#_028AED: DEX
#_028AEE: DEX
#_028AEF: BMI .exit

#_028AF1: CMP.l PendantBossRooms,X
#_028AF5: BNE .check_next_room

;---------------------------------------------------------------------------------------------------

#_028AF7: SEP #$20

#_028AF9: JSL CheckIfScreenIsClear
#_028AFD: BCS .exit

#_028AFF: LDX.b #$15 ; SONG 15

.set_song
#_028B01: STX.w $012C

.exit
#_028B04: SEP #$20

#_028B06: RTS

;===================================================================================================

Module07_03_OverlayChange:
#_028B07: JSL Underworld_ApplyRoomOverlay

#_028B0B: RTS

;===================================================================================================

Module07_04_UnlockDoor:
#_028B0C: JSL UnlockKeyDoor_Main

#_028B10: RTS

;===================================================================================================

Module07_05_ControlShutters:
#_028B11: JSL OperateShutterDoors

#_028B15: RTS

;===================================================================================================

Module07_06_FatInterRoomStairs:
#_028B16: LDA.b $B0
#_028B18: CMP.b #$03
#_028B1A: BCC .dont_reload_tile_types

#_028B1C: JSL Underworld_LoadAttribute_Selectable

.dont_reload_tile_types
#_028B20: LDA.b $B0
#_028B22: CMP.b #$0D
#_028B24: BCC .skip_gfx_updates

#_028B26: JSL Graphics_IncrementalVRAMUpload

#_028B2A: LDA.w $0464
#_028B2D: BEQ .run_subsubsub

#_028B2F: DEC.w $0464

#_028B32: CMP.b #$10
#_028B34: BNE .dont_add_stair_drag

#_028B36: LDA.b #$02
#_028B38: STA.b $57

.dont_add_stair_drag
#_028B3A: LDX.b #$08

#_028B3C: LDA.w $0462
#_028B3F: AND.b #$04
#_028B41: BEQ .going_up

#_028B43: LDX.b #$04

.going_up
#_028B45: STX.b $67

#_028B47: JSL Link_HandleVelocity
#_028B4B: JSR Underworld_HandleCamera

;---------------------------------------------------------------------------------------------------

.skip_gfx_updates
#_028B4E: JSL Link_HandleMovingAnimation_FullLongEntry

.run_subsubsub
#_028B52: LDA.b $B0
#_028B54: JSL JumpTableLocal
#_028B58: dw ResetTransitionPropsAndAdvance_ResetInterface       ; 0x00
#_028B5A: dw UnderworldTransition_FatStairs_RunFade              ; 0x01
#_028B5C: dw Underworld_InitializeRoomFromSpecial                ; 0x02
#_028B5E: dw UnderworldTransition_TriggerBGC34UpdateAndAdvance   ; 0x03
#_028B60: dw UnderworldTransition_TriggerBGC56UpdateAndAdvance   ; 0x04
#_028B62: dw UnderworldTransition_LoadSpriteGFX                  ; 0x05
#_028B64: dw UnderworldTransition_AdjustForFatStairScroll        ; 0x06
#_028B66: dw Underworld_PrepNextQuadrantUploadAndAdvance         ; 0x07
#_028B68: dw Underworld_PrepTilemapAndAdvance                    ; 0x08
#_028B6A: dw Underworld_PrepNextQuadrantUploadAndAdvance         ; 0x09
#_028B6C: dw Underworld_FilterPrepTilemapAndAdvance              ; 0x0A
#_028B6E: dw Underworld_FilterUploadAndAdvance                   ; 0x0B
#_028B70: dw Underworld_FilterPrepTilemapAndAdvance              ; 0x0C
#_028B72: dw Underworld_FilterUploadAndAdvance                   ; 0x0D
#_028B74: dw Underworld_DoubleApplyAndIncrementGrayscale         ; 0x0E
#_028B76: dw Underworld_AdvanceAndReset                          ; 0x0F
#_028B78: dw UnderworldTransition_FatStairsEntryCache            ; 0x10

;===================================================================================================

Module07_0E_01_HandleMusicAndResetProps:
#_028B7A: REP #$20

#_028B7C: LDA.b $A0
#_028B7E: CMP.w #$0007
#_028B81: BEQ .not_moldorm_room

#_028B83: CMP.w #$0017
#_028B86: BNE .dont_fade_music

#_028B88: LDX.w $0130
#_028B8B: CPX.b #$11 ; SONG 11
#_028B8D: BEQ .dont_fade_music

.not_moldorm_room
#_028B8F: LDA.l $7EF374
#_028B93: LSR A
#_028B94: BCS .dont_fade_music

#_028B96: LDX.b #$F1 ; SONG F1
#_028B98: STX.w $012C

;---------------------------------------------------------------------------------------------------

.dont_fade_music
#_028B9B: SEP #$20

#_028B9D: LDX.b #$58

#_028B9F: LDA.w $0462
#_028BA2: AND.b #$04
#_028BA4: BEQ .going_up

#_028BA6: LDX.b #$6A

.going_up
#_028BA8: STX.w $0464

;===================================================================================================
; I really can't think of a better name for these.
;===================================================================================================
ResetTransitionPropsAndAdvance_ResetInterface:
#_028BAB: STZ.w $0200

;===================================================================================================

ResetTransitionPropsAndAdvanceSubmodule:
#_028BAE: REP #$30

#_028BB0: LDA.w #$0000
#_028BB3: STA.l $7EC011
#_028BB7: STA.l $7EC009
#_028BBB: STA.l $7EC007

#_028BBF: LDA.w #$001F
#_028BC2: STA.l $7EC00B

#_028BC6: STZ.w $0AA6
#_028BC9: STZ.w $045A

#_028BCC: LDA.w $0458
#_028BCF: BEQ .dark_room

#_028BD1: LDA.w #$B302
#_028BD4: STA.b $99

.dark_room
#_028BD6: SEP #$30

#_028BD8: STZ.w $0458

#_028BDB: JSR DeleteCertainAncillaeStopDashing
#_028BDE: JSR Overworld_CopyPalettesToCache

#_028BE1: INC.b $B0

#_028BE3: RTS

;===================================================================================================

Underworld_InitializeRoomFromSpecial:
#_028BE4: JSR Underworld_AdjustAfterSpiralStairs

#_028BE7: JSL Underworld_LoadRoom
#_028BEB: JSL ResetStarTileGraphics

#_028BEF: JSL LoadTransAuxGFX
#_028BF3: JSL Underworld_LoadCustomTileAttributes

#_028BF7: LDA.b $A0
#_028BF9: STA.w $048E

#_028BFC: JSL Follower_Initialize

#_028C00: INC.b $B0

#_028C02: RTS

;===================================================================================================

UnderworldTransition_FatStairs_RunFade:
#_028C03: JSL ApplyPaletteFilter

#_028C07: LDA.l $7EC007
#_028C0B: BEQ .exit

#_028C0D: JSL ApplyPaletteFilter

.exit
#_028C11: RTS

;===================================================================================================

UnderworldTransition_LoadSpriteGFX:
#_028C12: JSL LoadNewSpriteGFXSet
#_028C16: JSL Underworld_ResetSprites

#_028C1A: JMP.w UnderworldTransition_RunFiltering

;===================================================================================================

UnderworldTransition_AdjustForFatStairScroll:
#_028C1D: JSR UnderworldSyncBG1and2Scroll
#_028C20: JSL Underworld_AdjustForRoomLayout

#_028C24: LDY.b #$16
#_028C26: LDX.w $0414

#_028C29: LDA.l Underworld_SubscreenEnable,X
#_028C2D: BPL .valid_subscreens

#_028C2F: LDY.b #$17
#_028C31: LDA.b #$00

.valid_subscreens
#_028C33: STY.b $1C
#_028C35: STA.b $1D

#_028C37: INC.b $A4

#_028C39: LDA.b #$01
#_028C3B: STA.b $57

#_028C3D: LDY.b #$17 ; SFX2.17
#_028C3F: LDX.b #$30

#_028C41: LDA.w $0462
#_028C44: AND.b #$04
#_028C46: BEQ .going_upstairs

#_028C48: LDY.b #$19 ; SFX2.19

#_028C4A: DEC.b $A4
#_028C4C: DEC.b $A4

#_028C4E: LDX.b #$20

.going_upstairs
#_028C50: STX.w $0464
#_028C53: STY.w $012E

;---------------------------------------------------------------------------------------------------

#_028C56: LDA.b #$24 ; SFX3.24
#_028C58: STA.w $012F

#_028C5B: JSR Underworld_PlayBlipAndCacheQuadrantVisits

#_028C5E: JMP.w Underworld_PrepTilemapAndAdvance

;===================================================================================================

UnderworldTransition_FatStairsEntryCache:
#_028C61: LDA.l $7EC009
#_028C65: ORA.l $7EC007
#_028C69: BEQ .continue

.exit
#_028C6B: RTS

.continue
#_028C6C: LDA.w $0200
#_028C6F: CMP.b #$05
#_028C71: BNE .exit

;===================================================================================================

ResetThenCacheRoomEntryProperties:
#_028C73: STZ.w $0200
#_028C76: STZ.b $B0

#_028C78: STZ.w $0418
#_028C7B: STZ.b $11

#_028C7D: STZ.w $0642
#_028C80: STZ.w $0641

;===================================================================================================

CacheRoomEntryProperties:
#_028C83: REP #$20

#_028C85: LDA.b $E2
#_028C87: STA.l $7EC180

#_028C8B: LDA.b $E8
#_028C8D: STA.l $7EC182

#_028C91: LDA.b $20
#_028C93: STA.l $7EC184

#_028C97: LDA.b $22
#_028C99: STA.l $7EC186

#_028C9D: LDA.w $0600
#_028CA0: STA.l $7EC188

#_028CA4: LDA.w $0604
#_028CA7: STA.l $7EC18A

#_028CAB: LDA.w $0608
#_028CAE: STA.l $7EC18C

#_028CB2: LDA.w $060C
#_028CB5: STA.l $7EC18E

#_028CB9: LDA.w $0610
#_028CBC: STA.l $7EC190

#_028CC0: LDA.w $0612
#_028CC3: STA.l $7EC192

#_028CC7: LDA.w $0614
#_028CCA: STA.l $7EC194

#_028CCE: LDA.w $0616
#_028CD1: STA.l $7EC196

#_028CD5: LDA.w $0618
#_028CD8: STA.l $7EC198

#_028CDC: LDA.w $061C
#_028CDF: STA.l $7EC19A

#_028CE3: LDA.b $A6
#_028CE5: STA.l $7EC19C

#_028CE9: LDA.b $A9
#_028CEB: STA.l $7EC19E

#_028CEF: SEP #$20

#_028CF1: LDA.b $2F
#_028CF3: STA.l $7EC1A6

#_028CF7: LDA.b $EE
#_028CF9: STA.l $7EC1A7

#_028CFD: LDA.w $0476
#_028D00: STA.l $7EC1A8

#_028D04: LDA.b $6C
#_028D06: STA.l $7EC1A9

#_028D0A: LDA.b $A4
#_028D0C: STA.l $7EC1AA

#_028D10: RTS

;===================================================================================================

UnderworldTransition_TriggerBGC34UpdateAndAdvance:
#_028D11: JSL PrepTransAuxGfx

#_028D15: LDA.b #$09
#_028D17: STA.b $17
#_028D19: STA.w $0710

#_028D1C: INC.b $B0

#_028D1E: RTS

;===================================================================================================

UnderworldTransition_TriggerBGC56UpdateAndAdvance:
#_028D1F: LDA.b #$0A
#_028D21: STA.b $17
#_028D23: STA.w $0710

#_028D26: INC.b $B0

#_028D28: RTS

;===================================================================================================

Module07_07_FallingTransition:
#_028D29: LDA.b $B0
#_028D2B: CMP.b #$06
#_028D2D: BCC .run_subsubsub

#_028D2F: JSL Graphics_IncrementalVRAMUpload
#_028D33: JSL Underworld_LoadAttribute_Selectable
#_028D37: JSL ApplyGrayscaleFixed_Incremental

.run_subsubsub
#_028D3B: LDA.b $B0
#_028D3D: JSL JumpTableLocal
#_028D41: dw Module07_07_00_HandleMusicAndResetRoom            ; 0x00
#_028D43: dw ApplyPaletteFilter_bounce                         ; 0x01
#_028D45: dw Underworld_InitializeRoomFromSpecial              ; 0x02
#_028D47: dw UnderworldTransition_TriggerBGC34UpdateAndAdvance ; 0x03
#_028D49: dw UnderworldTransition_TriggerBGC56UpdateAndAdvance ; 0x04
#_028D4B: dw UnderworldTransition_LoadSpriteGFX                ; 0x05
#_028D4D: dw Module07_07_06_SyncBG1and2                        ; 0x06
#_028D4F: dw Underworld_PrepNextQuadrantUploadAndAdvance       ; 0x07
#_028D51: dw Underworld_PrepTilemapAndAdvance                  ; 0x08
#_028D53: dw Underworld_PrepNextQuadrantUploadAndAdvance       ; 0x09
#_028D55: dw Underworld_PrepTilemapAndAdvance                  ; 0x0A
#_028D57: dw Underworld_PrepNextQuadrantUploadAndAdvance       ; 0x0B
#_028D59: dw Underworld_PrepTilemapAndAdvance                  ; 0x0C
#_028D5B: dw Underworld_PrepNextQuadrantUploadAndAdvance       ; 0x0D
#_028D5D: dw Underworld_AdvanceAndReset                        ; 0x0E
#_028D5F: dw Module07_07_0F_FallingFadeIn                      ; 0x0F
#_028D61: dw Module07_07_10_LandLinkFromFalling                ; 0x10
#_028D63: dw Module07_07_11_CacheRoomAndSetMusic               ; 0x11

;===================================================================================================

Module07_07_00_HandleMusicAndResetRoom:
#_028D65: REP #$20

#_028D67: LDA.b $A0

; Ganon fall?
#_028D69: CMP.w #$0010
#_028D6C: BEQ .fade_music

; Moldorm?
#_028D6E: CMP.w #$0007
#_028D71: BEQ .fade_music

; Hera 5F?
#_028D73: CMP.w #$0017
#_028D76: BNE .no_fade

.fade_music
#_028D78: LDX.b #$F1 ; SONG F1
#_028D7A: STX.w $012C

.no_fade
#_028D7D: SEP #$20

#_028D7F: JMP.w ResetTransitionPropsAndAdvance_ResetInterface

;===================================================================================================

Module07_07_06_SyncBG1and2:
#_028D82: JSR UnderworldSyncBG1and2Scroll
#_028D85: JSL Underworld_AdjustForRoomLayout

#_028D89: LDY.b #$16
#_028D8B: LDX.w $0414

#_028D8E: LDA.l Underworld_SubscreenEnable,X
#_028D92: BPL .valid_subscreen

#_028D94: LDY.b #$17
#_028D96: LDA.b #$00

.valid_subscreen
#_028D98: STY.b $1C
#_028D9A: STA.b $1D

#_028D9C: JSL WaterFlood_BuildOneQuadrantForVRAM

#_028DA0: INC.b $B0

#_028DA2: RTS

;===================================================================================================

Module07_07_0F_FallingFadeIn:
#_028DA3: JSL ApplyPaletteFilter

#_028DA7: LDA.l $7EC009
#_028DAB: BNE .exit

#_028DAD: LDA.b $21

#_028DAF: LDY.b $20
#_028DB1: CPY.b $51
#_028DB3: BCC .at_target

#_028DB5: INC A

.at_target
#_028DB6: STA.b $52

#_028DB8: JSR Underworld_SetBossMusicUnorthodox

#_028DBB: LDA.b $A0

; EP fairies?
#_028DBD: CMP.b #$89
#_028DBF: BEQ .exit

; Ice palace fairies?
#_028DC1: CMP.b #$4F
#_028DC3: BEQ .exit

; Hera fairies?
#_028DC5: CMP.b #$A7
#_028DC7: BEQ .is_hera_fairies

#_028DC9: DEC.b $A4

;===================================================================================================

#Underworld_PlayBlipAndCacheQuadrantVisits:
#_028DCB: LDA.b #$01
#_028DCD: STA.w $04A0

#_028DD0: LDA.b #$24 ; SFX3.24
#_028DD2: STA.w $012F

#_028DD5: JSL SetAndSaveVisitedQuadrantFlags

.exit
#_028DD9: RTS

;---------------------------------------------------------------------------------------------------

.is_hera_fairies
#_028DDA: STZ.w $04A0

#_028DDD: LDA.b #$01
#_028DDF: STA.b $A4

#_028DE1: RTS

;===================================================================================================

Module07_07_10_LandLinkFromFalling:
#_028DE2: JSL HandleUnderworldLandingFromPit

#_028DE6: LDA.b $11
#_028DE8: BNE .exit

#_028DEA: LDA.b #$07
#_028DEC: STA.b $11

#_028DEE: LDA.b #$11
#_028DF0: STA.b $B0

#_028DF2: LDA.b #$01
#_028DF4: STA.w $0AAA

#_028DF7: JSL Graphics_LoadChrHalfSlot

.exit
#_028DFB: RTS

;===================================================================================================

Module07_07_11_CacheRoomAndSetMusic:
#_028DFC: LDA.w $0200
#_028DFF: CMP.b #$05
#_028E01: BNE .exit

#_028E03: JSR ResetThenCacheRoomEntryProperties
#_028E06: JSR Underworld_SetBossOrSancMusicUponEntry
#_028E09: JSL Graphics_LoadChrHalfSlot

.exit
#_028E0D: RTS

;===================================================================================================

Module07_08_NorthIntraRoomStairs:
#_028E0E: LDA.w $0464
#_028E11: BEQ .run_subsubsub

#_028E13: DEC.w $0464

#_028E16: CMP.b #$14
#_028E18: BNE .skip_stair_drag

#_028E1A: LDA.b #$02
#_028E1C: STA.b $57

.skip_stair_drag
#_028E1E: JSL Link_HandleVelocity

#_028E22: JSL ApplyLinksMovementToCamera
#_028E26: JSR Underworld_HandleCamera

#_028E29: JSL Link_HandleMovingAnimation_FullLongEntry

.run_subsubsub
#_028E2D: LDA.b $B0
#_028E2F: JSL JumpTableLocal
#_028E33: dw Module07_08_00_InitStairs
#_028E35: dw Module07_08_01_ClimbStairs

;===================================================================================================

Module07_08_00_InitStairs:
#_028E37: STZ.w $0351

#_028E3A: LDY.b #$19 ; SFX2.19
#_028E3C: LDX.b #$3C

#_028E3E: LDA.b $67
#_028E40: AND.b #$08
#_028E42: BEQ .finish_up

#_028E44: LDY.b #$17 ; SFX2.17
#_028E46: LDX.b #$38

#_028E48: STZ.w $0476

#_028E4B: LDA.w $044A
#_028E4E: CMP.b #$02
#_028E50: BEQ .finish_up

#_028E52: STZ.b $EE

.finish_up
#_028E54: STX.w $0464
#_028E57: STY.w $012E

#_028E5A: LDA.b #$01
#_028E5C: STA.b $57

#_028E5E: INC.b $B0

;---------------------------------------------------------------------------------------------------

#EXIT_028E60:
#_028E60: RTS

;===================================================================================================

Module07_08_01_ClimbStairs:
#_028E61: LDA.w $0464
#_028E64: BNE EXIT_028E60

#_028E66: LDA.b $67
#_028E68: AND.b #$04
#_028E6A: BEQ .finish_up

#_028E6C: LDA.b #$01
#_028E6E: STA.w $0476

#_028E71: LDA.w $044A
#_028E74: CMP.b #$02
#_028E76: BEQ .finish_up

#_028E78: LDA.b #$01
#_028E7A: STA.b $EE

#_028E7C: BRA .finish_up ; !USELESS

.finish_up
#_028E7E: STZ.b $B0
#_028E80: STZ.w $0418
#_028E83: STZ.b $11

#_028E85: JSL SetAndSaveVisitedQuadrantFlags

#_028E89: RTS

;===================================================================================================

Module07_10_SouthIntraRoomStairs:
#_028E8A: LDA.w $0464
#_028E8D: BEQ .run_subsubsub

#_028E8F: DEC.w $0464

#_028E92: CMP.b #$14
#_028E94: BNE .skip_stair_drag

#_028E96: LDA.b #$02
#_028E98: STA.b $57

.skip_stair_drag
#_028E9A: JSL Link_HandleVelocity
#_028E9E: JSL ApplyLinksMovementToCamera
#_028EA2: JSR Underworld_HandleCamera
#_028EA5: JSL Link_HandleMovingAnimation_FullLongEntry

.run_subsubsub
#_028EA9: LDA.b $B0
#_028EAB: JSL JumpTableLocal
#_028EAF: dw Module07_10_00_InitStairs
#_028EB1: dw Module07_10_01_ClimbStairs

;===================================================================================================

Module07_10_00_InitStairs:
#_028EB3: LDY.b #$19 ; SFX2.19

#_028EB5: LDX.b #$3C

#_028EB7: LDA.b $67
#_028EB9: AND.b #$04
#_028EBB: BEQ .finish_up

#_028EBD: LDY.b #$17 ; SFX2.17

#_028EBF: LDX.b #$38

#_028EC1: LDA.w $0476
#_028EC4: EOR.b #$01
#_028EC6: STA.w $0476

#_028EC9: LDA.w $044A
#_028ECC: CMP.b #$02
#_028ECE: BEQ .finish_up

#_028ED0: LDA.b $EE
#_028ED2: EOR.b #$01
#_028ED4: STA.b $EE

.finish_up
#_028ED6: STX.w $0464

#_028ED9: STY.w $012E

#_028EDC: LDA.b #$01
#_028EDE: STA.b $57

#_028EE0: INC.b $B0

;---------------------------------------------------------------------------------------------------

#EXIT_028EE2:
#_028EE2: RTS

;===================================================================================================

Module07_10_01_ClimbStairs:
#_028EE3: LDA.w $0464
#_028EE6: BNE EXIT_028EE2

#_028EE8: LDA.b $67
#_028EEA: AND.b #$08
#_028EEC: BEQ .finish_up

#_028EEE: LDA.w $0476
#_028EF1: EOR.b #$01
#_028EF3: STA.w $0476

#_028EF6: LDA.w $044A
#_028EF9: CMP.b #$02
#_028EFB: BEQ .finish_up

#_028EFD: LDA.b $EE
#_028EFF: EOR.b #$01
#_028F01: STA.b $EE

#_028F03: BRA .finish_up ;!USELESS

.finish_up
#_028F05: STZ.b $B0
#_028F07: STZ.w $0418
#_028F0A: STZ.b $11

#_028F0C: JSL SetAndSaveVisitedQuadrantFlags

#_028F10: RTS

;===================================================================================================

Module07_09_OpenCrackedDoor:
#_028F11: JSL OpenCrackedDoor

#_028F15: RTS

;===================================================================================================

Module07_0A_ChangeBrightness:
#_028F16: JSL OrientLampLightCone
#_028F1A: JSL ApplyGrayscaleFixed_Incremental

#_028F1E: LDA.l $00009C ; !WTF why?
#_028F22: AND.b #$1F
#_028F24: CMP.l $7EC017
#_028F28: BNE .exit

#_028F2A: STZ.b $11
#_028F2C: STZ.b $B0

.exit
#_028F2E: RTS

;===================================================================================================

Module07_0B_DrainSwampPool:
#_028F2F: JSL .do_it

#_028F33: RTS

;---------------------------------------------------------------------------------------------------

.do_it
#_028F34: LDA.b $B0
#_028F36: JSL JumpTableLong
#_028F3A: dl IncrementallyDrainSwampPool            ; 0x00
#_028F3D: dl DeleteSwampPoolWaterOverlay            ; 0x01
#_028F40: dl Underworld_FloodSwampWater_PrepTilemap ; 0x02
#_028F43: dl Underworld_FloodSwampWater_PrepTilemap ; 0x03
#_028F46: dl Underworld_FloodSwampWater_PrepTilemap ; 0x04
#_028F49: dl Underworld_FloodSwampWater_PrepTilemap ; 0x05

;===================================================================================================

Module07_0C_FloodSwampWater:
#_028F4C: JSL Underworld_FloodSwampWater

#_028F50: RTS

;===================================================================================================

Module07_0D_FloodDam:
#_028F51: JSL Underworld_FloodDam

#_028F55: RTS

;===================================================================================================

Module07_0E_SpiralStairs:
#_028F56: LDA.b $B0
#_028F58: CMP.b #$07
#_028F5A: BCC .skip_upload

#_028F5C: JSL Graphics_IncrementalVRAMUpload
#_028F60: JSL Underworld_LoadAttribute_Selectable

.skip_upload
#_028F64: JSL HandleLinkOnSpiralStairs

#_028F68: LDA.b $B0
#_028F6A: JSL JumpTableLocal
#_028F6E: dw Module07_0E_00_InitPriorityAndScreens             ; 0x00
#_028F70: dw Module07_0E_01_HandleMusicAndResetProps           ; 0x01
#_028F72: dw Module07_0E_02_ApplyFilterIf                      ; 0x02
#_028F74: dw Underworld_InitializeRoomFromSpecial              ; 0x03
#_028F76: dw UnderworldTransition_TriggerBGC34UpdateAndAdvance ; 0x04
#_028F78: dw UnderworldTransition_TriggerBGC56UpdateAndAdvance ; 0x05
#_028F7A: dw UnderworldTransition_LoadSpriteGFX                ; 0x06
#_028F7C: dw Underworld_SyncBackgroundsFromSpiralStairs        ; 0x07
#_028F7E: dw Underworld_PrepNextQuadrantUploadAndAdvance       ; 0x08
#_028F80: dw Underworld_PrepTilemapAndAdvance                  ; 0x09
#_028F82: dw Underworld_PrepNextQuadrantUploadAndAdvance       ; 0x0A
#_028F84: dw Underworld_FilterPrepTilemapAndAdvance            ; 0x0B
#_028F86: dw Underworld_FilterUploadAndAdvance                 ; 0x0C
#_028F88: dw Underworld_FilterPrepTilemapAndAdvance            ; 0x0D
#_028F8A: dw Underworld_FilterUploadAndAdvance                 ; 0x0E
#_028F8C: dw Underworld_DoubleApplyAndIncrementGrayscale       ; 0x0F
#_028F8E: dw Underworld_AdvanceThenSetBossMusicUnorthodox      ; 0x10
#_028F90: dw Module07_0E_11                                    ; 0x11
#_028F92: dw Module07_0E_12                                    ; 0x12
#_028F94: dw Module07_0E_13_SetRoomAndLayerAndCache            ; 0x13

;===================================================================================================

Underworld_DoubleApplyAndIncrementGrayscale:
#_028F96: JSL ApplyPaletteFilter
#_028F9A: JSL ApplyPaletteFilter

#_028F9E: JSL ApplyGrayscaleFixed_Incremental

#_028FA2: RTS

;===================================================================================================

Module07_0E_02_ApplyFilterIf:
#_028FA3: LDA.w $0464
#_028FA6: CMP.b #$09
#_028FA8: BCS .skip_filtering

#_028FAA: JSL ApplyPaletteFilter
#_028FAE: LDA.l $7EC007
#_028FB2: BEQ .skip_filtering

#_028FB4: JSL ApplyPaletteFilter

.skip_filtering
#_028FB8: LDA.w $0464
#_028FBB: BNE .dec_to_zero

#_028FBD: LDA.b #$0C
#_028FBF: STA.b $4B
#_028FC1: STA.w $02F9

#_028FC4: RTS

.dec_to_zero
#_028FC5: DEC.w $0464

#_028FC8: RTS

;===================================================================================================

Underworld_SyncBackgroundsFromSpiralStairs:
#_028FC9: LDA.l $7EF3CC
#_028FCD: CMP.b #$06 ; FOLLOWER 06
#_028FCF: BNE .not_blind_in_attic

#_028FD1: LDA.b $A0
#_028FD3: CMP.b #$64
#_028FD5: BNE .not_blind_in_attic

#_028FD7: LDA.b #$00
#_028FD9: STA.l $7EF3CC

;---------------------------------------------------------------------------------------------------

.not_blind_in_attic
#_028FDD: LDA.b $EE
#_028FDF: PHA

#_028FE0: REP #$10

#_028FE2: LDX.w #$0030

#_028FE5: LDA.w $0462
#_028FE8: AND.b #$04
#_028FEA: BNE .positive_y_a

#_028FEC: LDX.w #$FFD0

.positive_y_a
#_028FEF: REP #$20

#_028FF1: TXA
#_028FF2: CLC
#_028FF3: ADC.b $20
#_028FF5: STA.b $20

#_028FF7: SEP #$30

#_028FF9: LDX.w $048A

#_028FFC: LDA.l LayerOfDestination_for_EE,X
#_029000: STA.b $EE

#_029002: JSR SpiralStairs_MakeNearbyWallsHighPriority_Exiting

#_029005: PLA
#_029006: STA.b $EE

;---------------------------------------------------------------------------------------------------

#_029008: REP #$10

#_02900A: LDX.w #$FFD0

#_02900D: LDA.w $0462
#_029010: AND.b #$04
#_029012: BNE .positive_y_b

#_029014: LDX.w #$0030

.positive_y_b
#_029017: REP #$20

#_029019: TXA
#_02901A: CLC
#_02901B: ADC.b $20
#_02901D: STA.b $20

#_02901F: JSR UnderworldSyncBG1and2Scroll

#_029022: SEP #$30

#_029024: JSL Underworld_AdjustForRoomLayout

;---------------------------------------------------------------------------------------------------

#_029028: LDY.b #$16

#_02902A: LDX.w $0414
#_02902D: LDA.l Underworld_SubscreenEnable,X
#_029031: BPL .valid_subscreen

#_029033: LDY.b #$17
#_029035: LDA.b #$00

.valid_subscreen
#_029037: CPX.b #$02
#_029039: BNE .dont_override_as_bg12

#_02903B: LDA.b #$03

.dont_override_as_bg12
#_02903D: STY.b $1C
#_02903F: STA.b $1D

#_029041: INC.b $A4

#_029043: LDA.w $0462
#_029046: AND.b #$04
#_029048: BEQ .going_up

#_02904A: DEC.b $A4
#_02904C: DEC.b $A4

.going_up
#_02904E: LDX.b #$18
#_029050: STX.w $0464

#_029053: JSR Underworld_PlayBlipAndCacheQuadrantVisits
#_029056: JSL RestoreTorchBackground

#_02905A: JMP.w Underworld_PrepTilemapAndAdvance

;===================================================================================================

Underworld_AdvanceThenSetBossMusicUnorthodox:
#_02905D: JSR DeleteCertainAncillaeStopDashing

#_029060: LDA.b #$38
#_029062: STA.w $0464

#_029065: INC.b $B0

;===================================================================================================

Underworld_SetBossMusicUnorthodox:
#_029067: REP #$20

#_029069: LDX.b #$1C ; SONG 1C

#_02906B: LDA.b $A0

; Ganon fall?
#_02906D: CMP.w #$0010
#_029070: BEQ .set_song

#_029072: LDX.b #$15 ; SONG 15

; Moldorm's room?
#_029074: CMP.w #$0007
#_029077: BEQ .check_last_command

#_029079: LDX.b #$11 ; SONG 11

; Hera 5F?
#_02907B: CMP.w #$0017
#_02907E: BNE .exit

#_029080: CPX.w $0130
#_029083: BEQ .exit

.check_last_command
#_029085: LDA.w $0130
#_029088: AND.w #$00FF
#_02908B: CMP.w #$00F1
#_02908E: BEQ .set_song

; Check for red pendant
#_029090: LDA.l $7EF374
#_029094: LSR A
#_029095: BCS .exit

.set_song
#_029097: STX.w $012C

.exit
#_02909A: SEP #$20

#_02909C: RTS

;===================================================================================================

Module07_0E_11:
#_02909D: JSL SpiralStairs_FindLandingSpot

#_0290A1: DEC.w $0464
#_0290A4: BNE .exit

#_0290A6: LDX.b #$0A

#_0290A8: LDA.w $0462
#_0290AB: AND.b #$04
#_0290AD: BNE .going_down

#_0290AF: LDX.b #$18

.going_down
#_0290B1: STX.w $0464

#_0290B4: INC.b $B0

.exit
#_0290B6: RTS

;===================================================================================================

Module07_0E_12:
#_0290B7: JSL SpiralStairs_FindLandingSpot

#_0290BB: DEC.w $0464
#_0290BE: BNE .exit

#_0290C0: INC.b $B0

#_0290C2: STZ.w $0200

.exit
#_0290C5: RTS

;===================================================================================================

Module07_0E_00_InitPriorityAndScreens:
#_0290C6: JSL SpiralStairs_MakeNearbyWallsHighPriority_Entering

#_0290CA: LDA.b $EE
#_0290CC: BEQ .dont_set_screendes_and_priority

#_0290CE: LDA.b $1C
#_0290D0: AND.b #$0F
#_0290D2: STA.b $1C

#_0290D4: LDA.b #$10
#_0290D6: TSB.b $1D

#_0290D8: LDA.b #$03
#_0290DA: STA.b $EE

.dont_set_screendes_and_priority
#_0290DC: INC.b $B0

#_0290DE: RTS

;===================================================================================================

Module07_0E_13_SetRoomAndLayerAndCache:
#_0290DF: LDX.w $048A

#_0290E2: LDA.l LayerOfDestination_for_0476,X
#_0290E6: STA.w $0476

#_0290E9: LDA.l LayerOfDestination_for_EE,X
#_0290ED: STA.b $EE

#_0290EF: LDA.b #$10
#_0290F1: TSB.b $1C

#_0290F3: LDA.b $1D
#_0290F5: AND.b #$0F
#_0290F7: STA.b $1D

#_0290F9: LDA.w $0462
#_0290FC: AND.b #$04
#_0290FE: BNE .going_down

#_029100: JSL SpiralStairs_MakeNearbyWallsLowPriority

.going_down
#_029104: LDA.b $A0
#_029106: STA.w $048E

#_029109: JMP.w ResetThenCacheRoomEntryProperties

;===================================================================================================

pool RepositionLinkAfterSpiralStairs

.offset_x
#_02910C: dw -28
#_02910E: dw -28
#_029110: dw  24
#_029112: dw  24

.offset_y
#_029114: dw  16
#_029116: dw -10
#_029118: dw -10
#_02911A: dw -32

pool off

;---------------------------------------------------------------------------------------------------

RepositionLinkAfterSpiralStairs:
#_02911C: SEP #$20

#_02911E: STZ.b $4B
#_029120: STZ.w $02F9

#_029123: LDX.b #$00

#_029125: LDA.w $048A
#_029128: BNE .use_offset_set_a

#_02912A: CMP.w $0492
#_02912D: BEQ .use_offset_set_a

#_02912F: LDX.b #$02

.use_offset_set_a
#_029131: LDA.w $0462
#_029134: AND.b #$04
#_029136: BEQ .going_up

#_029138: TXA
#_029139: CLC
#_02913A: ADC.b #$04
#_02913C: TAX

.going_up
#_02913D: REP #$20

#_02913F: LDA.b $22
#_029141: CLC
#_029142: ADC.l .offset_x,X
#_029146: STA.b $22

#_029148: LDA.b $20
#_02914A: CLC
#_02914B: ADC.l .offset_y,X
#_02914F: STA.b $20

#_029151: SEP #$20

#_029153: LDA.b $1C
#_029155: AND.b #$10
#_029157: BEQ .sprites_not_on_mainscreen

;---------------------------------------------------------------------------------------------------

#_029159: LDA.w $048A
#_02915C: CMP.b #$02
#_02915E: BNE .reset_follower_a

#_029160: LDA.b #$03
#_029162: STA.b $EE

#_029164: LDA.b $1C
#_029166: AND.b #$0F
#_029168: STA.b $1C

#_02916A: LDA.b #$10
#_02916C: TSB.b $1D

#_02916E: LDA.w $0492
#_029171: CMP.b #$02
#_029173: BEQ .reset_follower_a

#_029175: REP #$20

#_029177: LDA.b $20
#_029179: CLC
#_02917A: ADC.w #$0018
#_02917D: STA.b $20

.reset_follower_a
#_02917F: SEP #$20

#_029181: JSL Follower_Initialize

#_029185: REP #$20

#_029187: RTL

;---------------------------------------------------------------------------------------------------

.sprites_not_on_mainscreen
#_029188: LDA.w $048A
#_02918B: CMP.b #$02
#_02918D: BEQ .reset_follower_b

#_02918F: LDA.b #$10
#_029191: TSB.b $1C

#_029193: LDA.b $1D
#_029195: AND.b #$0F
#_029197: STA.b $1D

#_029199: LDA.w $0492
#_02919C: CMP.b #$02
#_02919E: BEQ .reset_follower_a

#_0291A0: REP #$20

#_0291A2: LDA.b $20
#_0291A4: SEC
#_0291A5: SBC.w #$0018
#_0291A8: STA.b $20

.reset_follower_b
#_0291AA: SEP #$20

#_0291AC: JSL Follower_Initialize

#_0291B0: REP #$20

#_0291B2: RTL

;===================================================================================================

SpiralStairs_MakeNearbyWallsHighPriority_Exiting:
#_0291B3: LDA.w $0462
#_0291B6: AND.b #$04
#_0291B8: BNE .exit

#_0291BA: REP #$30

#_0291BC: LDA.w $048C
#_0291BF: CLC
#_0291C0: ADC.w #$0008
#_0291C3: AND.w #$007F
#_0291C6: STA.b $00

;---------------------------------------------------------------------------------------------------

#_0291C8: LDX.w #$FFFE

.check_next
#_0291CB: INX
#_0291CC: INX

#_0291CD: LDA.w $06B0,X
#_0291D0: ASL A
#_0291D1: AND.w #$007F
#_0291D4: CMP.b $00
#_0291D6: BNE .check_next

;---------------------------------------------------------------------------------------------------

#_0291D8: LDA.w $06B0,X
#_0291DB: ASL A
#_0291DC: SEC
#_0291DD: SBC.w #$0008
#_0291E0: STA.w $048C

#_0291E3: TAX

#_0291E4: LDY.w #$0004

.flag_next
#_0291E7: LDA.l $7E2000,X
#_0291EB: ORA.w #$2000
#_0291EE: STA.l $7E2000,X

#_0291F2: LDA.l $7E2080,X
#_0291F6: ORA.w #$2000
#_0291F9: STA.l $7E2080,X

#_0291FD: LDA.l $7E2100,X
#_029201: ORA.w #$2000
#_029204: STA.l $7E2100,X

#_029208: LDA.l $7E2180,X
#_02920C: ORA.w #$2000
#_02920F: STA.l $7E2180,X

#_029213: INX
#_029214: INX

#_029215: DEY
#_029216: BPL .flag_next

;---------------------------------------------------------------------------------------------------

#_029218: SEP #$30

.exit
#_02921A: RTS

;===================================================================================================

pool Module07_0F_LandingWipe

.vectors
#_02921B: dw Module07_0F_00_InitSpotlight
#_02921D: dw Module07_0F_01_OperateSpotlight

pool off

;---------------------------------------------------------------------------------------------------

Module07_0F_LandingWipe:
#_02921F: LDA.b $B0
#_029221: ASL A
#_029222: TAX

#_029223: JSR (.vectors,X)

#_029226: JSL Link_HandleMovingAnimation_FullLongEntry
#_02922A: JSL LinkOAM_Main

#_02922E: RTS

;===================================================================================================

Module07_0F_00_InitSpotlight:
#_02922F: JSL IrisSpotlight_open

#_029233: INC.b $B0

#_029235: RTS

;===================================================================================================

Module07_0F_01_OperateSpotlight:
#_029236: JSL Sprite_Main
#_02923A: JSL IrisSpotlight_ConfigureTable

#_02923E: LDA.b $11
#_029240: BNE .exit

#_029242: STZ.b $96
#_029244: STZ.b $97
#_029246: STZ.b $98

#_029248: STZ.b $1E
#_02924A: STZ.b $1F

#_02924C: STZ.b $B0

#_02924E: LDA.w $0132
#_029251: CMP.b #$FF ; SONG FF
#_029253: BEQ .exit

#_029255: STA.w $012C

.exit
#_029258: RTS

;===================================================================================================
; Stair
;===================================================================================================
Module07_11_StraightInterroomStairs:
#_029259: LDA.b $B0
#_02925B: CMP.b #$03
#_02925D: BCC .skip_attributes

#_02925F: JSL Underworld_LoadAttribute_Selectable

.skip_attributes
#_029263: LDA.b $B0
#_029265: CMP.b #$0D
#_029267: BCC .skip_gfx_upload

#_029269: JSL Graphics_IncrementalVRAMUpload

.skip_gfx_upload
#_02926D: LDA.w $0464
#_029270: BEQ .run_subsubsub

#_029272: DEC.w $0464

#_029275: CMP.b #$10
#_029277: BNE .no_stair_drag

#_029279: LDA.b #$02
#_02927B: STA.b $57

.no_stair_drag
#_02927D: LDX.b #$08

#_02927F: LDA.b $11
#_029281: CMP.b #$12
#_029283: BEQ .move_up

#_029285: LDX.b #$04

.move_up
#_029287: STX.b $67

#_029289: JSL Link_HandleVelocity

;---------------------------------------------------------------------------------------------------

.run_subsubsub
#_02928D: JSL Link_HandleMovingAnimation_FullLongEntry

#_029291: LDA.b $B0
#_029293: JSL JumpTableLocal
#_029297: dw Module07_11_00_PrepAndReset                 ; 0x00
#_029299: dw Module07_11_01_FadeOut                      ; 0x01
#_02929B: dw Module07_11_02_LoadAndPrepRoom              ; 0x02
#_02929D: dw Module07_11_03_FilterAndLoadBGChars         ; 0x03
#_02929F: dw Module07_11_04_FilterDoBGAndResetSprites    ; 0x04
#_0292A1: dw Underworld_FilterPrepTilemapAndAdvance      ; 0x05
#_0292A3: dw Underworld_FilterUploadAndAdvance           ; 0x06
#_0292A5: dw Underworld_FilterPrepTilemapAndAdvance      ; 0x07
#_0292A7: dw Underworld_FilterUploadAndAdvance           ; 0x08
#_0292A9: dw Module07_11_09_LoadSpriteGraphics           ; 0x09
#_0292AB: dw Module07_11_0A_ScrollCamera                 ; 0x0A
#_0292AD: dw Module07_11_0B_PrepDestination              ; 0x0B
#_0292AF: dw Underworld_PrepNextQuadrantUploadAndAdvance ; 0x0C
#_0292B1: dw Underworld_PrepTilemapAndAdvance            ; 0x0D
#_0292B3: dw Underworld_PrepNextQuadrantUploadAndAdvance ; 0x0E
#_0292B5: dw Underworld_DoubleApplyAndIncrementGrayscale ; 0x0F
#_0292B7: dw Module07_11_19_SetSongAndFilter             ; 0x10
#_0292B9: dw Module07_11_11_KeepSliding                  ; 0x11
#_0292BB: dw ResetThenCacheRoomEntryProperties           ; 0x12

;===================================================================================================

Module07_11_00_PrepAndReset:
#_0292BD: LDA.w $0372
#_0292C0: BEQ .not_dashing

#_0292C2: STZ.w $0372

#_0292C5: LDA.b #$02
#_0292C7: STA.b $5E

.not_dashing
#_0292C9: LDX.b #$16 ; SFX2.16

#_0292CB: LDA.w $0462
#_0292CE: AND.b #$04
#_0292D0: BEQ .going_up

#_0292D2: LDX.b #$18 ; SFX2.18

.going_up
#_0292D4: STX.w $012E

;---------------------------------------------------------------------------------------------------

#_0292D7: REP #$20

#_0292D9: LDA.b $A0

; aga cutscene room?
#_0292DB: CMP.w #$0030
#_0292DE: BEQ .do_song_fade

; aga pre cutscene room?
#_0292E0: CMP.w #$0040
#_0292E3: BNE .no_song_fade

.do_song_fade
#_0292E5: LDX.b #$F1 ; SONG F1 - fade
#_0292E7: STX.w $012C

.no_song_fade
#_0292EA: SEP #$20

#_0292EC: JMP.w ResetTransitionPropsAndAdvance_ResetInterface

;===================================================================================================

Module07_11_01_FadeOut:
#_0292EF: LDA.w $0464
#_0292F2: CMP.b #$09
#_0292F4: BCS .exit

#_0292F6: JSL ApplyPaletteFilter

#_0292FA: LDA.l $7EC007
#_0292FE: CMP.b #$17
#_029300: BNE .exit

#_029302: INC.b $B0

.exit
#_029304: RTS

;===================================================================================================

Module07_11_02_LoadAndPrepRoom:
#_029305: JSL ApplyPaletteFilter

#_029309: JSL Underworld_LoadRoom

#_02930D: JSL ToggleStarTileGraphics
#_029311: JSL LoadTransAuxGFX
#_029315: JSL Underworld_LoadCustomTileAttributes

#_029319: JSL Underworld_AdjustForRoomLayout
#_02931D: JSL Follower_Initialize

#_029321: INC.b $B0

#_029323: RTS

;===================================================================================================

Module07_11_03_FilterAndLoadBGChars:
#_029324: JSL ApplyPaletteFilter

#_029328: JSR UnderworldTransition_TriggerBGC34UpdateAndAdvance

#_02932B: RTS

;===================================================================================================

Module07_11_04_FilterDoBGAndResetSprites:
#_02932C: JSL ApplyPaletteFilter
#_029330: JSR UnderworldTransition_TriggerBGC56UpdateAndAdvance

#_029333: LDA.b $A0
#_029335: STA.w $048E

#_029338: JSL Underworld_ResetSprites

#_02933C: RTS

;===================================================================================================

Module07_11_0B_PrepDestination:
#_02933D: LDY.b #$16
#_02933F: LDX.w $0414

#_029342: LDA.l Underworld_SubscreenEnable,X
#_029346: BPL .valid_screendes

#_029348: LDY.b #$17
#_02934A: LDA.b #$00

.valid_screendes
#_02934C: STY.b $1C
#_02934E: STA.b $1D

#_029350: LDY.b #$17 ; SFX2.17

#_029352: INC.b $A4

#_029354: LDA.b #$01
#_029356: STA.b $57

#_029358: LDX.b #$3C

#_02935A: LDA.w $0462
#_02935D: AND.b #$04
#_02935F: BEQ .going_up

#_029361: LDY.b #$19 ; SFX2.19

#_029363: DEC.b $A4
#_029365: DEC.b $A4

#_029367: LDX.b #$32

;---------------------------------------------------------------------------------------------------

.going_up
#_029369: STX.w $0464

#_02936C: STY.w $012E

#_02936F: STZ.b $00

#_029371: LDY.b $11

#_029373: LDA.b $EE
#_029375: BEQ .on_upper_layer

;---------------------------------------------------------------------------------------------------

#_029377: REP #$20

#_029379: LDA.w #$0020
#_02937C: CPY.b #$12
#_02937E: BNE .move_y_down_a

#_029380: LDA.w #$FFE0

.move_y_down_a
#_029383: CLC
#_029384: ADC.b $20
#_029386: STA.b $20

#_029388: INC.b $00

#_02938A: SEP #$20

;---------------------------------------------------------------------------------------------------

.on_upper_layer
#_02938C: LDX.w $048A

#_02938F: LDA.l LayerOfDestination_for_0476,X
#_029393: STA.w $0476

#_029396: LDA.l LayerOfDestination_for_EE,X
#_02939A: STA.b $EE

#_02939C: BEQ .staying_on_upper_layer

#_02939E: REP #$20

#_0293A0: LDA.w #$0020

#_0293A3: CPY.b #$12
#_0293A5: BNE .move_y_down_b

#_0293A7: LDA.w #$FFE0

.move_y_down_b
#_0293AA: CLC
#_0293AB: ADC.b $20
#_0293AD: STA.b $20

#_0293AF: INC.b $00

#_0293B1: SEP #$20

;---------------------------------------------------------------------------------------------------

.staying_on_upper_layer
#_0293B3: LDA.b $00
#_0293B5: BNE .skip_extra_y_adjust

#_0293B7: REP #$20

#_0293B9: LDA.w #$000C

#_0293BC: CPY.b #$12
#_0293BE: BNE .move_y_down_c

#_0293C0: REP #$10

#_0293C2: LDX.w #$FFE8

#_0293C5: LDA.w $0462
#_0293C8: AND.w #$0004
#_0293CB: BNE .going_down

#_0293CD: LDX.w #$FFF8

.going_down
#_0293D0: TXA

.move_y_down_c
#_0293D1: CLC
#_0293D2: ADC.b $20
#_0293D4: STA.b $20

#_0293D6: SEP #$30

.skip_extra_y_adjust
#_0293D8: JSR Underworld_PlayBlipAndCacheQuadrantVisits
#_0293DB: JSL RestoreTorchBackground

#_0293DF: JMP.w Underworld_PrepTilemapAndAdvance

;===================================================================================================

Module07_11_09_LoadSpriteGraphics:
#_0293E2: JSL ApplyPaletteFilter

#_0293E6: DEC.b $B0

#_0293E8: JSL LoadNewSpriteGFXSet

#_0293EC: JMP.w Underworld_HandleTranslucencyAndPalettes

;===================================================================================================

Module07_11_19_SetSongAndFilter:
#_0293EF: LDA.w $0200
#_0293F2: CMP.b #$05
#_0293F4: BNE ApplyGrayscaleFixed_Incremental_bounce

#_0293F6: LDA.l $7EC009
#_0293FA: BNE ApplyGrayscaleFixed_Incremental_bounce

#_0293FC: INC.b $B0

#_0293FE: REP #$20

#_029400: LDX.b #$1C ; SONG 1C

#_029402: LDA.b $A0

; aga cutscene?
#_029404: CMP.w #$0030
#_029407: BEQ .set_song

; pre aga cutscene?
#_029409: CMP.w #$0040
#_02940C: BNE .skip_song

#_02940E: LDX.b #$10 ; SONG 10

.set_song
#_029410: STX.w $012C

.skip_song
#_029413: SEP #$20

;===================================================================================================

ApplyGrayscaleFixed_Incremental_bounce:
#_029415: JSL ApplyGrayscaleFixed_Incremental

#_029419: RTS

;===================================================================================================

Module07_11_11_KeepSliding:
#_02941A: LDA.w $0464
#_02941D: BNE ApplyGrayscaleFixed_Incremental_bounce

#_02941F: INC.b $B0

#_029421: RTS

;===================================================================================================

Module07_14_RecoverFromFall:
#_029422: LDA.b $B0
#_029424: JSL JumpTableLocal
#_029428: dw Module07_14_00_ScrollCamera
#_02942A: dw RecoverPositionAfterDrowning

;===================================================================================================

Module07_14_00_ScrollCamera:
#_02942C: REP #$20

#_02942E: LDA.b $E2
#_029430: CMP.l $7EC180
#_029434: BEQ .set_h_scroll
#_029436: BCC .scroll_right

#_029438: DEC A
#_029439: CMP.l $7EC180
#_02943D: BEQ .set_h_scroll

#_02943F: DEC A
#_029440: BRA .set_h_scroll

.scroll_right
#_029442: INC A
#_029443: CMP.l $7EC180
#_029447: BEQ .set_h_scroll

#_029449: INC A

.set_h_scroll
#_02944A: STA.b $E2

#_02944C: LDA.b $E8
#_02944E: CMP.l $7EC182
#_029452: BEQ .set_v_scroll
#_029454: BCC .scroll_up

#_029456: DEC A
#_029457: CMP.l $7EC182
#_02945B: BEQ .set_v_scroll

#_02945D: DEC A
#_02945E: BRA .set_v_scroll

.scroll_up
#_029460: INC A
#_029461: CMP.l $7EC182
#_029465: BEQ .set_v_scroll

#_029467: INC A

;---------------------------------------------------------------------------------------------------

.set_v_scroll
#_029468: STA.b $E8

#_02946A: CMP.l $7EC182
#_02946E: BNE .not_at_target_camera

#_029470: LDA.b $E2
#_029472: CMP.l $7EC180
#_029476: BNE .not_at_target_camera

#_029478: INC.b $B0

.not_at_target_camera
#_02947A: LDA.w $0458
#_02947D: BNE .exit

#_02947F: JSR UnderworldSyncBG1and2Scroll

.exit
#_029482: SEP #$20

#_029484: RTS

;===================================================================================================

RecoverPositionAfterDrowning:
#_029485: REP #$20

#_029487: LDA.l $7EC184
#_02948B: STA.b $20

#_02948D: LDA.l $7EC186
#_029491: STA.b $22

#_029493: LDA.l $7EC188
#_029497: STA.w $0600

#_02949A: LDA.l $7EC18A
#_02949E: STA.w $0604

#_0294A1: LDA.l $7EC18C
#_0294A5: STA.w $0608

#_0294A8: LDA.l $7EC18E
#_0294AC: STA.w $060C

#_0294AF: LDA.l $7EC190
#_0294B3: STA.w $0610

#_0294B6: LDA.l $7EC192
#_0294BA: STA.w $0612

#_0294BD: LDA.l $7EC194
#_0294C1: STA.w $0614

#_0294C4: LDA.l $7EC196
#_0294C8: STA.w $0616

#_0294CB: LDA.l $7EC198
#_0294CF: STA.w $0618

#_0294D2: INC A
#_0294D3: INC A
#_0294D4: STA.w $061A

#_0294D7: LDA.l $7EC19A
#_0294DB: STA.w $061C

#_0294DE: INC A
#_0294DF: INC A
#_0294E0: STA.w $061E

;---------------------------------------------------------------------------------------------------

#_0294E3: LDA.l $7EC19C
#_0294E7: STA.b $A6

#_0294E9: LDA.l $7EC19E
#_0294ED: STA.b $A9

#_0294EF: LDA.b $1B
#_0294F1: AND.w #$00FF
#_0294F4: BNE .indoors

#_0294F6: LDA.w $0618
#_0294F9: DEC A
#_0294FA: DEC A
#_0294FB: STA.w $061A

#_0294FE: LDA.w $061C
#_029501: DEC A
#_029502: DEC A
#_029503: STA.w $061E

;---------------------------------------------------------------------------------------------------

.indoors
#_029506: SEP #$20

#_029508: LDA.l $7EC1A6
#_02950C: STA.b $2F

#_02950E: LDA.l $7EC1A7
#_029512: STA.b $EE

#_029514: LDA.l $7EC1A8
#_029518: STA.w $0476

#_02951B: LDA.l $7EC1A9
#_02951F: STA.b $6C

#_029521: LDA.l $7EC1AA
#_029525: STA.b $A4

#_029527: STZ.b $4B

;---------------------------------------------------------------------------------------------------

#_029529: LDA.b #$90
#_02952B: STA.w $031F

#_02952E: JSR Underworld_PlayBlipAndCacheQuadrantVisits

#_029531: STZ.w $037B

#_029534: JSL Link_ResetStateAfterDamagingPit

#_029538: STZ.w $02F9

#_02953B: JSL Follower_Initialize

#_02953F: STZ.w $0642

#_029542: STZ.w $0200
#_029545: STZ.b $B0

#_029547: STZ.w $0418
#_02954A: STZ.b $11

#_02954C: LDA.l $7EF36D
#_029550: BNE .exit

#_029552: LDA.b #$00
#_029554: STA.l $7EF36D

#_029558: LDA.b $1C
#_02955A: STA.l $7EC211

#_02955E: LDA.b $1D
#_029560: STA.l $7EC212

#_029564: LDA.b $10
#_029566: STA.w $010C

#_029569: LDA.b #$12
#_02956B: STA.b $10

#_02956D: LDA.b #$01
#_02956F: STA.b $11

#_029571: STZ.w $031F

.exit
#_029574: RTS

;===================================================================================================

Module07_15_WarpPad:
#_029575: LDA.b $B0
#_029577: CMP.b #$03
#_029579: BCC .skip_upload

#_02957B: JSL Graphics_IncrementalVRAMUpload
#_02957F: JSL Underworld_LoadAttribute_Selectable

.skip_upload
#_029583: LDA.b $B0
#_029585: JSL JumpTableLocal
#_029589: dw ResetTransitionPropsAndAdvance_ResetInterface ; 0x00
#_02958B: dw Module07_15_01_ApplyMosaicAndFilter           ; 0x01
#_02958D: dw Underworld_InitializeRoomFromSpecial          ; 0x02
#_02958F: dw UnderworldTransition_LoadSpriteGFX            ; 0x03
#_029591: dw Module07_15_04_SyncRoomPropsAndBuildOverlay   ; 0x04
#_029593: dw Underworld_PrepNextQuadrantUploadAndAdvance   ; 0x05
#_029595: dw Underworld_PrepTilemapAndAdvance              ; 0x06
#_029597: dw Underworld_PrepNextQuadrantUploadAndAdvance   ; 0x07
#_029599: dw Underworld_PrepTilemapAndAdvance              ; 0x08
#_02959B: dw Underworld_PrepNextQuadrantUploadAndAdvance   ; 0x09
#_02959D: dw Underworld_PrepTilemapAndAdvance              ; 0x0A
#_02959F: dw Underworld_PrepNextQuadrantUploadAndAdvance   ; 0x0B
#_0295A1: dw Underworld_AdvanceAndReset                    ; 0x0C
#_0295A3: dw Module07_15_0E_FadeInFromWarp                 ; 0x0D
#_0295A5: dw Module07_15_0F_FinalizeAndCacheEntry          ; 0x0E

;===================================================================================================

Module07_15_01_ApplyMosaicAndFilter:
#_0295A7: JSR ConditionalMosaicControl

#_0295AA: LDA.l $7EC011
#_0295AE: ORA.b #$03
#_0295B0: STA.b $95

#_0295B2: JMP.w ApplyPaletteFilter_bounce

;===================================================================================================

Module07_15_04_SyncRoomPropsAndBuildOverlay:
#_0295B5: JSL ApplyGrayscaleFixed_Incremental

#_0295B9: REP #$20

#_0295BB: LDA.b $A0
#_0295BD: CMP.w #$0017
#_0295C0: BNE .not_hera_5F

#_0295C2: LDX.b #$04
#_0295C4: STX.b $A4

.not_hera_5F
#_0295C6: JSR UnderworldSyncBG1and2Scroll
#_0295C9: JSL Underworld_AdjustForRoomLayout

#_0295CD: LDY.b #$16

#_0295CF: LDX.w $0414
#_0295D2: LDA.l Underworld_SubscreenEnable,X
#_0295D6: BPL .valid_screendes

#_0295D8: LDY.b #$17
#_0295DA: LDA.b #$00

.valid_screendes
#_0295DC: STY.b $1C
#_0295DE: STA.b $1D

#_0295E0: JSL WaterFlood_BuildOneQuadrantForVRAM

#_0295E4: INC.b $B0

#_0295E6: RTS

;===================================================================================================

Module07_15_0E_FadeInFromWarp:
#_0295E7: LDA.l $7EC007
#_0295EB: LSR A
#_0295EC: BCC .dont_decrease_mosaic

#_0295EE: LDA.l $7EC011
#_0295F2: BEQ .dont_decrease_mosaic

#_0295F4: SEC
#_0295F5: SBC.b #$10
#_0295F7: STA.l $7EC011

.dont_decrease_mosaic
#_0295FB: LDA.b #$09
#_0295FD: STA.b $94

#_0295FF: LDA.l $7EC011
#_029603: ORA.b #$03
#_029605: STA.b $95

#_029607: JMP.w ApplyPaletteFilter_bounce

;===================================================================================================

Module07_15_0F_FinalizeAndCacheEntry:
#_02960A: LDA.w $0200
#_02960D: CMP.b #$05
#_02960F: BNE EXIT_02961A

#_029611: JSL SetAndSaveVisitedQuadrantFlags

#_029615: STZ.b $11

#_029617: JSR ResetThenCacheRoomEntryProperties

;---------------------------------------------------------------------------------------------------

#EXIT_02961A:
#_02961A: RTS

;===================================================================================================

pool Module07_16_UpdatePegs

.vectors
#_02961B: dw Module07_16_UpdatePegs_Step1    ; 0x00
#_02961D: dw Module07_16_UpdatePegs_Step1    ; 0x01
#_02961F: dw Module07_16_UpdatePegs_Step2    ; 0x02
#_029621: dw Module07_16_UpdatePegs_Step3    ; 0x03
#_029623: dw Module07_16_UpdatePegs_FinishUp ; 0x04

pool off

;---------------------------------------------------------------------------------------------------

Module07_16_UpdatePegs:
#_029625: INC.b $B0

#_029627: LDA.b $B0
#_029629: AND.b #$03
#_02962B: BNE EXIT_02961A

#_02962D: LDA.b $B0
#_02962F: LSR A
#_029630: TAX

#_029631: JMP.w (.vectors,X)

;===================================================================================================

Module07_16_UpdatePegs_Step1:
#_029634: REP #$10

#_029636: LDX.w #$0100
#_029639: LDY.w #$0080

#_02963C: LDA.l $7EC172
#_029640: BEQ .blue_pegs_up

#_029642: TYX

#_029643: LDY.w #$0100

.blue_pegs_up
#_029646: BRA Underworld_UpdatePegGFXBuffer

;===================================================================================================

Module07_16_UpdatePegs_Step2:
#_029648: REP #$10

#_02964A: LDX.w #$0080
#_02964D: LDY.w #$0100

#_029650: LDA.l $7EC172
#_029654: BEQ .blue_pegs_up

#_029656: TYX

#_029657: LDY.w #$0080

.blue_pegs_up
#_02965A: BRA Underworld_UpdatePegGFXBuffer

;===================================================================================================

Module07_16_UpdatePegs_Step3:
#_02965C: REP #$10

#_02965E: LDX.w #$0000
#_029661: LDY.w #$0180

#_029664: LDA.l $7EC172
#_029668: BEQ Underworld_UpdatePegGFXBuffer

#_02966A: TYX

#_02966B: LDY.w #$0000

;===================================================================================================

Underworld_UpdatePegGFXBuffer:
#_02966E: STY.b $0E

#_029670: PHB

#_029671: LDA.b #$7F
#_029673: PHA
#_029674: PLB

#_029675: REP #$20

;---------------------------------------------------------------------------------------------------

#_029677: LDY.w #$0000

.next_blue
#_02967A: LDA.l $7EB340,X
#_02967E: STA.w $7F0000,Y

#_029681: INX
#_029682: INX

#_029683: INY
#_029684: INY
#_029685: CPY.w #$0080
#_029688: BNE .next_blue

;---------------------------------------------------------------------------------------------------

#_02968A: LDX.b $0E

.next_orange
#_02968C: LDA.l $7EB340,X
#_029690: STA.w $7F0000,Y

#_029693: INX
#_029694: INX

#_029695: INY
#_029696: INY
#_029697: CPY.w #$0100
#_02969A: BNE .next_orange

;---------------------------------------------------------------------------------------------------

#_02969C: SEP #$30

#_02969E: PLB

#_02969F: LDA.b #$17
#_0296A1: STA.b $17

#_0296A3: RTS

;===================================================================================================

Module07_16_UpdatePegs_FinishUp:
#_0296A4: JSL Underworld_FlipCrystalPegAttribute

#_0296A8: STZ.b $B0
#_0296AA: STZ.b $11

#_0296AC: RTS

;===================================================================================================

RecoverPegGFXFromMapping:
#_0296AD: REP #$10

#_0296AF: LDX.w #$0000
#_0296B2: LDY.w #$0180

#_0296B5: LDA.l $7EC172
#_0296B9: BEQ .blue_pegs_up

#_0296BB: TYX

#_0296BC: LDY.w #$0000

.blue_pegs_up
#_0296BF: JSR Underworld_UpdatePegGFXBuffer

#_0296C2: RTL

;===================================================================================================

Module07_17_PressurePlate:
#_0296C3: DEC.b $B0
#_0296C5: BNE .exit

#_0296C7: REP #$30

#_0296C9: LDA.b $20
#_0296CB: SEC
#_0296CC: SBC.w #$0002
#_0296CF: STA.b $20

#_0296D1: LDA.w $04B6
#_0296D4: LSR A
#_0296D5: LSR A
#_0296D6: LSR A
#_0296D7: AND.w #$01F8
#_0296DA: STA.b $02

#_0296DC: LDA.w $04B6
#_0296DF: AND.w #$003F
#_0296E2: ASL A
#_0296E3: ASL A
#_0296E4: ASL A
#_0296E5: STA.b $00

#_0296E7: SEP #$30

#_0296E9: LDY.b #$0E
#_0296EB: JSL Underworld_UpdateTilemapWithCommonTile

#_0296EF: LDA.w $010C
#_0296F2: STA.b $11

.exit
#_0296F4: RTS

;===================================================================================================

CrystalGraphicsTilemapLocation:
#_0296F5: dw $1618, $1658, $1658, $1618
#_0296FD: dw $0658, $1618, $1658, $0000

;===================================================================================================

Module07_18_RescuedMaiden:
#_029705: LDA.b $B0
#_029707: JSL JumpTableLocal
#_02970B: dw PrepareForCrystalCutscene                   ; 0x00
#_02970D: dw BuildCrystalCutsceneTilemap                 ; 0x01
#_02970F: dw Underworld_PrepTilemapAndAdvance            ; 0x02
#_029711: dw Underworld_PrepNextQuadrantUploadAndAdvance ; 0x03
#_029713: dw Underworld_PrepTilemapAndAdvance            ; 0x04
#_029715: dw Underworld_PrepNextQuadrantUploadAndAdvance ; 0x05
#_029717: dw Underworld_PrepTilemapAndAdvance            ; 0x06
#_029719: dw Underworld_PrepNextQuadrantUploadAndAdvance ; 0x07
#_02971B: dw Underworld_PrepTilemapAndAdvance            ; 0x08
#_02971D: dw Underworld_PrepNextQuadrantUploadAndAdvance ; 0x09
#_02971F: dw StartCrystalCutscene                        ; 0x0A

;===================================================================================================

PrepareForCrystalCutscene:
#_029721: JSL PaletteFilter_RestoreBGSubstractiveStrict

#_029725: LDA.l $7EC540
#_029729: STA.l $7EC500

#_02972D: LDA.l $7EC541
#_029731: STA.l $7EC501

#_029735: LDA.l $7EC009
#_029739: CMP.b #$FF
#_02973B: BNE .exit

;---------------------------------------------------------------------------------------------------

#_02973D: REP #$30

#_02973F: LDX.w #$0000
#_029742: LDA.w #$01EC

.next
#_029745: STA.l $7E2000,X
#_029749: STA.l $7E2800,X
#_02974D: STA.l $7E3000,X
#_029751: STA.l $7E3800,X

#_029755: STA.l $7E4000,X
#_029759: STA.l $7E4800,X
#_02975D: STA.l $7E5000,X
#_029761: STA.l $7E5800,X

#_029765: INX
#_029766: INX
#_029767: CPX.w #$0800
#_02976A: BNE .next

;---------------------------------------------------------------------------------------------------

#_02976C: STZ.w $011C
#_02976F: STZ.w $011A

#_029772: STZ.w $0422
#_029775: STZ.w $0424

#_029778: SEP #$30

#_02977A: STZ.w $0418
#_02977D: STZ.w $045C

#_029780: INC.b $B0

.exit
#_029782: RTS

;===================================================================================================

BuildCrystalCutsceneTilemap:
#_029783: JSL PaletteFilter_Crystal

#_029787: LDA.b #$01
#_029789: STA.b $1D

#_02978B: LDA.b #$02
#_02978D: STA.w $02E4

;---------------------------------------------------------------------------------------------------

#_029790: REP #$20

#_029792: LDX.b #$0E

#_029794: LDA.b $A0

.next_crystal_check
#_029796: DEX
#_029797: DEX

#_029798: CMP.l CrystalBossRooms,X
#_02979C: BNE .next_crystal_check

#_02979E: LDA.l CrystalGraphicsTilemapLocation,X
#_0297A2: STA.b $08

;---------------------------------------------------------------------------------------------------

#_0297A4: REP #$10

#_0297A6: LDA.w #$0004
#_0297A9: STA.b $0C

#_0297AB: STZ.b $0E

.next_super
#_0297AD: LDY.w #$0007
#_0297B0: LDX.b $08

.next_tile
#_0297B2: LDA.b $0E
#_0297B4: ORA.w #$1F80
#_0297B7: STA.l $7E4000,X

#_0297BB: ORA.w #$1F88
#_0297BE: STA.l $7E4200,X

#_0297C2: INC.b $0E

#_0297C4: INX
#_0297C5: INX

#_0297C6: DEY
#_0297C7: BPL .next_tile

#_0297C9: LDA.b $0E
#_0297CB: CLC
#_0297CC: ADC.w #$0008
#_0297CF: STA.b $0E

#_0297D1: LDA.b $08
#_0297D3: CLC
#_0297D4: ADC.w #$0080
#_0297D7: STA.b $08

#_0297D9: DEC.b $0C
#_0297DB: BNE .next_super

;---------------------------------------------------------------------------------------------------

#_0297DD: SEP #$30

#_0297DF: INC.b $B0

#_0297E1: RTS

;===================================================================================================

StartCrystalCutscene:
#_0297E2: INC.w $012A

#_0297E5: JSL Polyhedral_InitializeThread

#_0297E9: JSL CrystalCutscene_Initialize

#_0297ED: STZ.b $11
#_0297EF: STZ.b $B0

#_0297F1: RTS

;===================================================================================================

Module07_19_MirrorFade:
#_0297F2: JSR MosaicControlIncrease

#_0297F5: DEC.b $13
#_0297F7: BNE .exit

#_0297F9: LDA.b #$05
#_0297FB: STA.b $10

#_0297FD: STZ.b $11
#_0297FF: STZ.b $14

#_029801: LDA.w $0130
#_029804: STA.w $0133

#_029807: LDA.w $0ABD
#_02980A: BEQ .exit

#_02980C: JSL Palette_RevertTranslucencySwap

.exit
#_029810: RTS

;===================================================================================================

Module07_1A_RoomDraw_OpenTriforceDoor_bounce:
#_029811: JSL RoomDraw_OpenTriforceDoor

#_029815: RTS

;===================================================================================================

Module0C_Unused:
#_029816: JSR ConditionalMosaicControl
#_029819: JSR Module0C_RunSubmodule

#_02981C: RTL

;===================================================================================================

Module0C_RunSubmodule:
#_02981D: LDA.b $B0
#_02981F: JSL JumpTableLocal
#_029823: dw ResetTransitionPropsAndAdvance_ResetInterface
#_029825: dw ApplyPaletteFilter_bounce
#_029827: dw Module0C_RestoreModule

;===================================================================================================

Module0C_RestoreModule:
#_029829: LDA.w $010C
#_02982C: STA.b $10

#_02982E: STZ.b $11
#_029830: STZ.b $B0

#_029832: RTS

;---------------------------------------------------------------------------------------------------

Module0D_Unused:
#_029833: LDA.l $7EC007
#_029837: LSR A
#_029838: BCC .dont_adjust_mosaic

#_02983A: LDA.l $7EC011
#_02983E: SEC
#_02983F: SBC.b #$10
#_029841: STA.l $7EC011

.dont_adjust_mosaic
#_029845: JSR CopyMosaicControl

#_029848: JSR Module0D_RunSubmodule

#_02984B: RTL

;---------------------------------------------------------------------------------------------------

Module0D_RunSubmodule:
#_02984C: LDA.b $B0
#_02984E: JSL JumpTableLocal
#_029852: dw ApplyPaletteFilter_bounce
#_029854: dw Module0D_RestoreModule

;===================================================================================================

Module0D_RestoreModule:
#_029856: STZ.b $11
#_029858: STZ.b $B0

#_02985A: LDA.w $010C
#_02985D: STA.b $10

#_02985F: CMP.b #$09
#_029861: BNE .exit

#_029863: LDA.w $0696
#_029866: ORA.w $0698
#_029869: BEQ .exit

#_02986B: LDA.b #$0A
#_02986D: STA.b $11

#_02986F: LDA.b #$10
#_029871: STA.w $069A

.exit
#_029874: RTS

;===================================================================================================

pool Module0F_SpotlightClose

.direction
#_029875: db $08
#_029876: db $04
#_029877: db $02
#_029878: db $01

.submodules
#_029879: dw Underworld_PrepExitWithSpotlight
#_02987B: dw Spotlight_ConfigureTableAndControl

pool off

;---------------------------------------------------------------------------------------------------

Module0F_SpotlightClose:
#_02987D: JSL Sprite_Main

#_029881: LDA.b $11
#_029883: ASL A
#_029884: TAX

#_029885: JSR (.submodules,X)

;---------------------------------------------------------------------------------------------------

#_029888: LDA.b $1B
#_02988A: BNE .indoors

#_02988C: LDA.b $8A
#_02988E: CMP.b #$0F
#_029890: BNE .not_waterfall_of_wishing

#_029892: LDA.b #$01
#_029894: STA.w $0351

.not_waterfall_of_wishing
#_029897: LDA.b #$06
#_029899: STA.b $5E

#_02989B: JSL Link_HandleVelocity

#_02989F: STZ.b $31
#_0298A1: STZ.b $30

.indoors
#_0298A3: LDA.b $2F
#_0298A5: LSR A
#_0298A6: TAX

#_0298A7: LDA.b $1B
#_0298A9: BNE .still_indoors

#_0298AB: LDX.b #$00

#_0298AD: LDA.w $010E
#_0298B0: CMP.b #$43
#_0298B2: BNE .still_indoors

#_0298B4: INX

.still_indoors
#_0298B5: LDA.l .direction,X
#_0298B9: STA.b $26
#_0298BB: STA.b $67

#_0298BD: JSL Link_HandleMovingAnimation_FullLongEntry
#_0298C1: JML LinkOAM_Main

;===================================================================================================

Underworld_PrepExitWithSpotlight:
#_0298C5: STZ.w $012A
#_0298C8: STZ.w $1F0C

#_0298CB: LDA.b $1B
#_0298CD: BNE .indoors

#_0298CF: JSL Ancilla_DeleteWaterfallSplashes

#_0298D3: REP #$20

#_0298D5: LDA.b $20
#_0298D7: STA.l $7EC148

#_0298DB: SEP #$20

;---------------------------------------------------------------------------------------------------

.indoors
#_0298DD: LDX.w $010E

#_0298E0: LDA.l EntranceData_song,X
#_0298E4: CMP.b #$03 ; SONG 03
#_0298E6: BNE .check_if_half_vol

#_0298E8: LDA.l $7EF3C5
#_0298EC: CMP.b #$02
#_0298EE: BCC .rain_state

.check_if_half_vol
#_0298F0: CMP.b #$F2 ; SONG F2
#_0298F2: BNE .fade_song

#_0298F4: LDX.w $0130
#_0298F7: CPX.b #$0C ; SONG 0C
#_0298F9: BNE .set_song

#_0298FB: LDA.b #$07 ; SONG 07
#_0298FD: BRA .set_song

.fade_song
#_0298FF: LDA.b #$F1 ; SONG F1

;---------------------------------------------------------------------------------------------------

.set_song
#_029901: STA.w $012C

.rain_state
#_029904: STZ.w $04A0

#_029907: JSL HUD_HandleFloorIndicator

#_02990B: INC.b $16

#_02990D: JSL IrisSpotlight_close

#_029911: INC.b $11

;---------------------------------------------------------------------------------------------------

#EXIT_029913:
#_029913: RTS

;===================================================================================================

Spotlight_ConfigureTableAndControl:
#_029914: JSL IrisSpotlight_ConfigureTable

#_029918: STZ.w $012A
#_02991B: STZ.w $1F0C

#_02991E: LDA.b $11
#_029920: BNE EXIT_029913

#_029922: LDA.b $10
#_029924: CMP.b #$06
#_029926: BNE .dont_restore_y_coord

#_029928: REP #$20

#_02992A: LDA.l $7EC148
#_02992E: STA.b $20

#_029930: SEP #$20

;---------------------------------------------------------------------------------------------------

#Spotlight_ConfigureTableAndControl_dont_restore_y_coord:
#_029932: LDA.b $10
#_029934: CMP.b #$09
#_029936: BEQ .dont_reset

#_029938: JSL EnableForceBlank
#_02993C: JSL Link_ItemReset_FromOverworldThings

.dont_reset
#_029940: LDA.b $10
#_029942: CMP.b #$09
#_029944: BNE .delay_advance

#_029946: LDA.b $A1
#_029948: BNE .underworld_2

#_02994A: LDA.b $A0
#_02994C: CMP.b #$20
#_02994E: BEQ .from_agahnim

.underworld_2
#_029950: LDA.b #$0A

#_029952: LDX.b $2F
#_029954: BNE .not_facing_up

#_029956: LDA.b #$0B

.not_facing_up
#_029958: STA.b $11

.from_agahnim
#_02995A: LDA.b #$10
#_02995C: STA.w $069A

#_02995F: LDA.w $0696
#_029962: ORA.w $0698
#_029965: BEQ .delay_advance

#_029967: LDA.w $0699
#_02996A: BEQ .delay_advance

; TODO Seems to make a longer walk... can't find a way to trigger it...
#_02996C: LDX.b #$00
#_02996E: ASL A
#_02996F: BCC .not_long_walk

#_029971: LDX.b #$18

.not_long_walk
#_029973: LDA.w $0699
#_029976: AND.b #$7F
#_029978: STA.w $0699

#_02997B: STX.w $0692
#_02997E: STZ.w $0690

#_029981: LDA.b #$09
#_029983: STA.b $11

#_029985: STZ.b $B0

#_029987: LDA.b #$15 ; SFX3.15
#_029989: STA.w $012F

;---------------------------------------------------------------------------------------------------

.delay_advance
#_02998C: STZ.b $96
#_02998E: STZ.b $97
#_029990: STZ.b $98

#_029992: STZ.b $1E
#_029994: STZ.b $1F

#_029996: STZ.w $03EF

;---------------------------------------------------------------------------------------------------

#_029999: REP #$30

#_02999B: LDX.w #$4C26
#_02999E: LDY.w #$8C4C

#_0299A1: LDA.b $8A
#_0299A3: CMP.w #$0003
#_0299A6: BEQ .on_dm_screens

#_0299A8: CMP.w #$0005
#_0299AB: BEQ .on_dm_screens

#_0299AD: CMP.w #$0007
#_0299B0: BEQ .on_dm_screens

#_0299B2: LDX.w #$4A26
#_0299B5: LDY.w #$874A
#_0299B8: CMP.w #$0043
#_0299BB: BEQ .on_dm_screens

#_0299BD: CMP.w #$0045
#_0299C0: BEQ .on_dm_screens

#_0299C2: CMP.w #$0047
#_0299C5: BNE .not_dm_screen

.on_dm_screens
#_0299C7: STX.b $9C
#_0299C9: STY.b $9D

.not_dm_screen
#_0299CB: SEP #$30

#_0299CD: RTS

;===================================================================================================

pool Module10_SpotlightOpen

.submodules
#_0299CE: dw Module10_00_OpenIris
#_0299D0: dw Spotlight_ConfigureTableAndControl

pool off

;---------------------------------------------------------------------------------------------------

Module10_SpotlightOpen:
#_0299D2: JSL Sprite_Main

#_0299D6: LDA.b $11
#_0299D8: ASL A
#_0299D9: TAX

#_0299DA: JSR (.submodules,X)

#_0299DD: JML LinkOAM_Main

;===================================================================================================

Module10_00_OpenIris:
#_0299E1: JSL IrisSpotlight_open

#_0299E5: INC.b $11

#_0299E7: RTS

;===================================================================================================

pool Module11_UnderworldFallingEntrance

.vectors
#_0299E8: dw Module_11_00_SetSongAndInit        ; 0x00
#_0299EA: dw PaletteFilter_bounce               ; 0x01
#_0299EC: dw Module11_02_LoadEntrance           ; 0x02
#_0299EE: dw UnderworldTransition_LoadSpriteGFX ; 0x03
#_0299F0: dw Module11_04_FadeAndLoadQuadrants   ; 0x04
#_0299F2: dw Module11_05_LoadQuadrants          ; 0x05

pool off

;---------------------------------------------------------------------------------------------------

Module11_UnderworldFallingEntrance:
#_0299F4: LDA.b $B0
#_0299F6: ASL A
#_0299F7: TAX

#_0299F8: JSR (.vectors,X)

#_0299FB: RTL

;===================================================================================================

Module_11_00_SetSongAndInit:
#_0299FC: LDX.w $010E

#_0299FF: LDA.l EntranceData_song,X
#_029A03: CMP.b #$03 ; SONG 03
#_029A05: BNE .fade

#_029A07: LDA.l $7EF3C5
#_029A0B: CMP.b #$02
#_029A0D: BCC .rain_state

.fade
#_029A0F: LDA.b #$F1 ; SONG F1 - fade
#_029A11: STA.w $012C

.rain_state
#_029A14: JMP.w ResetTransitionPropsAndAdvance_ResetInterface

;===================================================================================================

Module11_02_LoadEntrance:
#_029A17: JSL EnableForceBlank

#_029A1B: LDA.b #$02
#_029A1D: STA.b $99

#_029A1F: JSR Underworld_LoadEntrance

#_029A22: LDA.w $040C
#_029A25: CMP.b #$FF
#_029A27: BEQ .caves

#_029A29: CMP.b #$02
#_029A2B: BNE .not_castle

#_029A2D: LDA.b #$00

.not_castle
#_029A2F: LSR A
#_029A30: TAX

#_029A31: LDA.l $7EF37C,X

;---------------------------------------------------------------------------------------------------

.caves
#_029A35: JSL RebuildHUD_Keys

#_029A39: LDA.b #$04
#_029A3B: STA.b $5A

#_029A3D: LDA.b #$03
#_029A3F: STA.b $5B

#_029A41: LDA.b #$0C
#_029A43: STA.b $4B

#_029A45: LDA.b #$10
#_029A47: STA.b $57

#_029A49: LDA.b $20
#_029A4B: SEC
#_029A4C: SBC.b $E8
#_029A4E: STA.b $00
#_029A50: STZ.b $01

#_029A52: STZ.w $0308
#_029A55: STZ.w $0309
#_029A58: STZ.w $030B

;---------------------------------------------------------------------------------------------------

#_029A5B: REP #$30

#_029A5D: LDA.b $A0
#_029A5F: STA.b $A2

#_029A61: LDA.w #$0010
#_029A64: CLC
#_029A65: ADC.b $00
#_029A67: STA.b $00

#_029A69: LDA.b $20
#_029A6B: STA.b $51

#_029A6D: SEC
#_029A6E: SBC.b $00
#_029A70: STA.b $20

;---------------------------------------------------------------------------------------------------

#_029A72: SEP #$30

#_029A74: LDA.b $B0
#_029A76: PHA

#_029A77: STZ.w $045A
#_029A7A: STZ.w $0458

#_029A7D: JSR Underworld_LoadAndDrawRoom
#_029A80: JSL Underworld_LoadCustomTileAttributes

#_029A84: LDX.w $0AA1

#_029A87: LDA.l AnimatedTileSheets,X
#_029A8B: TAY

#_029A8C: JSL DecompressAnimatedUnderworldTiles
#_029A90: JSL Underworld_LoadAttributeTable

;---------------------------------------------------------------------------------------------------

#_029A94: PLA
#_029A95: INC A
#_029A96: STA.b $B0

#_029A98: LDA.b #$0A
#_029A9A: STA.w $0AA4

#_029A9D: LDA.b #$02
#_029A9F: STA.w OBSEL

#_029AA2: JSL InitializeTilesets

#_029AA6: LDA.b #$0A
#_029AA8: STA.w $0AB1

#_029AAB: JSR Underworld_LoadPalettes
#_029AAE: JSL RestoreTorchBackground

#_029AB2: STZ.b $3A
#_029AB4: STZ.b $3C

;---------------------------------------------------------------------------------------------------

#_029AB6: JSR Underworld_ResetTorchBackgroundAndPlayer

#_029AB9: LDA.w $02E0
#_029ABC: BEQ .not_bunny

#_029ABE: JSL RefreshLinkEquipmentPalettes_bunny

.not_bunny
#_029AC2: LDA.b #$80
#_029AC4: STA.b $9B

#_029AC6: JSL RefillLogic_long
#_029ACA: JSL UnderworldAdjustRainSFX

#_029ACE: LDA.b #$07
#_029AD0: STA.b $11

;===================================================================================================

Underworld_LoadSongBankIfNeeded:
#_029AD2: LDA.w $0132
#_029AD5: CMP.b #$FF ; SONG FF - transfer
#_029AD7: BEQ .exit

#_029AD9: CMP.b #$F2 ; SONG F2 - half volume
#_029ADB: BEQ .exit

#_029ADD: CMP.b #$03 ; SONG 03
#_029ADF: BEQ .overworld_song

#_029AE1: CMP.b #$07 ; SONG 07
#_029AE3: BEQ .overworld_song

#_029AE5: CMP.b #$0E ; SONG 0E
#_029AE7: BEQ .overworld_song

#_029AE9: LDA.w $0136
#_029AEC: BNE .exit

#_029AEE: SEI
#_029AEF: STZ.w NMITIMEN
#_029AF2: STZ.w HDMAEN

#_029AF5: INC.w $0136

#_029AF8: LDA.b #$FF ; SONG FF - transfer
#_029AFA: STA.w APUIO0

#_029AFD: JSL LoadUnderworldSongs

#_029B01: LDA.b #$81
#_029B03: STA.w NMITIMEN

.exit
#_029B06: RTS

;---------------------------------------------------------------------------------------------------

.overworld_song
#_029B07: JMP.w LoadOWMusicIfNeeded

;===================================================================================================

Module11_04_FadeAndLoadQuadrants:
#_029B0A: LDA.b $13
#_029B0C: INC A
#_029B0D: AND.b #$0F
#_029B0F: STA.b $13

#_029B11: CMP.b #$0F
#_029B13: BNE Module11_05_LoadQuadrants

#_029B15: INC.b $B0

;===================================================================================================

Module11_05_LoadQuadrants:
#_029B17: JSL HandleUnderworldLandingFromPit

#_029B1B: LDA.b $11
#_029B1D: BNE .exit

#_029B1F: LDA.b #$07
#_029B21: STA.b $10

#_029B23: INC.w $04C7

#_029B26: JSR Underworld_PlayBlipAndCacheQuadrantVisits
#_029B29: JSR ResetThenCacheRoomEntryProperties

#_029B2C: LDA.w $0132
#_029B2F: STA.w $012C

#_029B32: LDA.w $0130
#_029B35: STA.w $0133

.exit
#_029B38: RTS

;===================================================================================================

pool Module13_BossVictory_Pendant

.submodules
#_029B39: dw BossVictory_Heal                   ; 0x00
#_029B3B: dw Underworld_StartVictorySpin        ; 0x01
#_029B3D: dw Underworld_RunVictorySpin          ; 0x02
#_029B3F: dw Underworld_CloseVictorySpin        ; 0x03
#_029B41: dw Underworld_PrepExitWithSpotlight   ; 0x04
#_029B43: dw Spotlight_ConfigureTableAndControl ; 0x05

pool off

;---------------------------------------------------------------------------------------------------

Module13_BossVictory_Pendant:
#_029B45: LDA.b $11
#_029B47: ASL A
#_029B48: TAX

#_029B49: JSR (.submodules,X)

#_029B4C: JSL Sprite_Main
#_029B50: JML LinkOAM_Main

;===================================================================================================

BossVictory_Heal:
#_029B54: JSL AnimatedRefill_Magic
#_029B58: BCS .still_restoring_magic

#_029B5A: INC.w $0200

.still_restoring_magic
#_029B5D: JSL AnimatedRefill_Health
#_029B61: BCS .still_healing_hp

#_029B63: INC.w $0200

.still_healing_hp
#_029B66: LDA.w $0200
#_029B69: BNE .reset_subsub

;---------------------------------------------------------------------------------------------------

#_029B6B: LDA.b $3A
#_029B6D: AND.b #$BF
#_029B6F: STA.b $3A

#_029B71: JSR DeleteCertainAncillaeStopDashing

#_029B74: LDA.b #$02
#_029B76: STA.b $2F

#_029B78: ASL A
#_029B79: STA.b $26

#_029B7B: INC.b $16
#_029B7D: INC.b $11

#_029B7F: LDA.b #$10
#_029B81: STA.b $B0

#_029B83: INC.w $02E4

;---------------------------------------------------------------------------------------------------

.reset_subsub
#_029B86: STZ.w $0200

#_029B89: JSL RefillLogic_long

#_029B8D: RTS

;===================================================================================================

Underworld_StartVictorySpin:
#_029B8E: DEC.b $B0
#_029B90: BNE .exit

#_029B92: STZ.w $02E4

#_029B95: LDA.b #$02
#_029B97: STA.b $2F

#_029B99: JSL Link_AnimateVictorySpin_long
#_029B9D: JSL Ancilla_TerminateSelectInteractives
#_029BA1: JSL AncillaAdd_VictorySpin

#_029BA5: INC.b $11

.exit
#_029BA7: RTS

;===================================================================================================

Underworld_RunVictorySpin:

#_029BA8: JSL Link_Main

#_029BAC: LDA.b $5D
#_029BAE: CMP.b #$00 ; LINKSTATE 00
#_029BB0: BNE .exit

#_029BB2: LDA.l $7EF359
#_029BB6: INC A
#_029BB7: AND.b #$FE
#_029BB9: BEQ .skip_sfx

#_029BBB: LDA.b #$2C ; SFX2.2C
#_029BBD: STA.w $012E

.skip_sfx
#_029BC0: LDA.b #$01
#_029BC2: STA.w $03EF

#_029BC5: LDA.b #$20
#_029BC7: STA.b $B0

#_029BC9: INC.b $11

.exit
#_029BCB: RTS

;===================================================================================================

Underworld_CloseVictorySpin:
#_029BCC: DEC.b $B0
#_029BCE: BNE .exit

#_029BD0: INC.b $11

#_029BD2: STZ.b $30
#_029BD4: STZ.b $31

#_029BD6: LDA.b #$00
#_029BD8: STA.l $7EC017

.exit
#_029BDC: RTS

;===================================================================================================
; TODO names
;===================================================================================================
pool Module15_MirrorWarpFromAga

.submodules
#_029BDD: dw Module15_00_Initialize          ; 0x00
#_029BDF: dw Module15_01_SetTheScene         ; 0x01
#_029BE1: dw Module15_02_RunMirrorWarp_Part1 ; 0x02
#_029BE3: dw Module15_03_RunMirrorWarp_Part2 ; 0x03
#_029BE5: dw Module15_04_RunMirrorWarp_Part3 ; 0x04
#_029BE7: dw Module15_05                     ; 0x05
#_029BE9: dw Module15_06                     ; 0x06
#_029BEB: dw Module15_07                     ; 0x07
#_029BED: dw Module15_08                     ; 0x08
#_029BEF: dw BossVictory_Heal                ; 0x09
#_029BF1: dw Underworld_StartVictorySpin     ; 0x0A
#_029BF3: dw Underworld_RunVictorySpin       ; 0x0B
#_029BF5: dw Module15_0C                     ; 0x0C

pool off

;---------------------------------------------------------------------------------------------------

Module15_MirrorWarpFromAga:
#_029BF7: LDA.b $11
#_029BF9: ASL A
#_029BFA: TAX

#_029BFB: JSR (.submodules,X)

#_029BFE: LDA.b $11
#_029C00: CMP.b #$02
#_029C02: BCC .draw_link

#_029C04: CMP.b #$05
#_029C06: BCC .exit

.draw_link
#_029C08: JSL Sprite_Main
#_029C0C: JSL LinkOAM_Main

.exit
#_029C10: RTL

;===================================================================================================

Module15_00_Initialize:
#_029C11: STZ.w $0710

#_029C14: INC.w $0200
#_029C17: INC.b $11

#_029C19: JSR LoadOWMusicIfNeeded

#_029C1C: RTS

;===================================================================================================

Module15_01_SetTheScene:
#_029C1D: LDA.b #$08 ; SONG 08
#_029C1F: STA.w $012C
#_029C22: STA.w $0410

#_029C25: JSL InitializeMirrorHDMA

#_029C29: STZ.w $0200

#_029C2C: JSL PaletteFilter_InitializeWhiteFilter

#_029C30: JSR Overworld_LoadGFXAndScreenSize

#_029C33: INC.b $11

#_029C35: LDA.b #$14 ; LINKSTATE 14
#_029C37: STA.b $5D

#_029C39: REP #$20

#_029C3B: STZ.w $011A
#_029C3E: STZ.w $011C

#_029C41: STZ.w $0402
#_029C44: STZ.b $30

#_029C46: LDA.w #$7FFF ; RGB: #F8F8F8
#_029C49: STA.l $7EC500
#_029C4D: STA.l $7EC540

#_029C51: SEP #$20

#_029C53: JSL ResetAncillaAndLink

#_029C57: RTS

;===================================================================================================

Module15_05:
#_029C58: REP #$30

#_029C5A: LDA.w #$2641
#_029C5D: STA.w DMA7MODE

#_029C60: LDX.w #$003E

#_029C63: LDA.w #$FF00

;---------------------------------------------------------------------------------------------------

.next
#_029C66: STA.w $1B00,X
#_029C69: STA.w $1B40,X
#_029C6C: STA.w $1B80,X
#_029C6F: STA.w $1BC0,X

#_029C72: STA.w $1C00,X
#_029C75: STA.w $1C40,X
#_029C78: STA.w $1C80,X

#_029C7B: DEX
#_029C7C: DEX
#_029C7D: BPL .next

;---------------------------------------------------------------------------------------------------

#_029C7F: LDA.w #$0000
#_029C82: STA.l $7EC007
#_029C86: STA.l $7EC009

#_029C8A: SEP #$20

#_029C8C: LDX.w #$0033 ; Message 0033
#_029C8F: STX.w $1CF0

#_029C92: SEP #$10

#_029C94: JSL Interface_PrepAndDisplayMessage

#_029C98: JSL ReloadPreviouslyLoadedSheets
#_029C9C: JSL RebuildHUD_ZeroKeys

#_029CA0: LDA.b #$80
#_029CA2: STA.b $9B

#_029CA4: LDA.b #$15
#_029CA6: STA.b $10

#_029CA8: LDA.b #$06
#_029CAA: STA.b $11

#_029CAC: LDA.b #$18
#_029CAE: STA.b $B0

#_029CB0: RTS

;===================================================================================================

Module15_06:
#_029CB1: DEC.b $B0
#_029CB3: BNE .exit

#_029CB5: INC.b $11

#_029CB7: LDA.b #$09 ; SFX1.09
#_029CB9: STA.w $012D

.exit
#_029CBC: RTS

;===================================================================================================

Module15_07:
#_029CBD: JSL RenderText

#_029CC1: LDA.b $11
#_029CC3: BNE .exit

#_029CC5: STZ.w $0200

#_029CC8: LDA.b #$05 ; SFX1.05
#_029CCA: STA.w $012D

#_029CCD: LDX.b #$09

#_029CCF: LDA.l $7EF357
#_029CD3: BNE .set_submodule

;---------------------------------------------------------------------------------------------------

#_029CD5: REP #$20

#_029CD7: LDA.w #$0034 ; Message 0034
#_029CDA: STA.w $1CF0

#_029CDD: SEP #$20

#_029CDF: JSL Interface_PrepAndDisplayMessage

#_029CE3: STZ.w $012D

#_029CE6: LDA.b #$15
#_029CE8: STA.b $10

#_029CEA: LDX.b #$09 ; !USELESS
#_029CEC: DEX

;---------------------------------------------------------------------------------------------------

.set_submodule
#_029CED: STX.b $11

.exit
#_029CEF: RTS

;===================================================================================================

Module15_08:
#_029CF0: JSL RenderText

#_029CF4: LDA.b $11
#_029CF6: BNE .exit

#_029CF8: LDA.b #$20
#_029CFA: STA.b $B0

#_029CFC: LDX.b #$0C
#_029CFE: STX.b $11

.exit
#_029D00: RTS

;===================================================================================================

Module15_02_RunMirrorWarp_Part1:
#_029D01: JSL MirrorWarp_BuildAndEnableHDMATable

#_029D05: INC.b $11
#_029D07: STZ.b $B0

#_029D09: RTS

;===================================================================================================

Module15_03_RunMirrorWarp_Part2:
#_029D0A: JSL MirrorWarp_BuildWavingHDMATable

#_029D0E: BRA .check_subsub

;===================================================================================================

#Module15_04_RunMirrorWarp_Part3:
#_029D10: JSL MirrorWarp_BuildDewavingHDMATable

;---------------------------------------------------------------------------------------------------

.check_subsub
#_029D14: LDA.b $B0
#_029D16: BEQ .exit

#_029D18: STZ.b $B0

#_029D1A: INC.b $11

.exit
#_029D1C: RTS

;===================================================================================================

Module15_0C:
#_029D1D: DEC.b $B0
#_029D1F: BNE .exit

#_029D21: JSL ResetAncillaAndCutscene

; set hyrule castle overlay
#_029D25: LDA.l $7EF29B
#_029D29: ORA.b #$20
#_029D2B: STA.l $7EF29B

#_029D2F: LDA.b #$FF
#_029D31: STA.w $040C

#_029D34: STZ.b $11
#_029D36: STZ.w $0200

#_029D39: STZ.w $0710

#_029D3C: LDA.b #$09
#_029D3E: STA.b $10

#_029D40: STZ.b $E6

#_029D42: LDX.b #$09 ; SONG 09

#_029D44: LDA.l $7EF357
#_029D48: BNE .have_pearl

#_029D4A: LDX.b #$04 ; SONG 04

.have_pearl
#_029D4C: STX.w $012C

#_029D4F: LDA.b #$06
#_029D51: STA.l $7EF3C7

.exit
#_029D55: RTS

;===================================================================================================

SetTargetOverworldWarpToPyramid:
#_029D56: LDA.b $10
#_029D58: CMP.b #$15
#_029D5A: BNE .exit

#_029D5C: JSR LoadOverworldFromUnderworld

#_029D5F: LDY.b #$5A
#_029D61: JSL DecompressAnimatedOverworldTiles

;===================================================================================================

#ResetAncillaAndCutscene:
#_029D65: JSL Ancilla_TerminateSelectInteractives

#_029D69: STZ.w $037B

#_029D6C: STZ.b $3C
#_029D6E: STZ.b $3A

#_029D70: STZ.w $03EF
#_029D73: STZ.w $02E4

.exit
#_029D76: RTL

;===================================================================================================

pool Module16_BossVictory_Crystal

.submodules
#_029D77: dw BossVictory_Heal            ; 0x00
#_029D79: dw Underworld_StartVictorySpin ; 0x01
#_029D7B: dw Underworld_RunVictorySpin   ; 0x02
#_029D7D: dw Underworld_CloseVictorySpin ; 0x03
#_029D7F: dw Module16_04_FadeAndEnd      ; 0x04

pool off

;---------------------------------------------------------------------------------------------------

Module16_BossVictory_Crystal:
#_029D81: LDA.b $11
#_029D83: ASL A
#_029D84: TAX

#_029D85: JSR (.submodules,X)

#_029D88: JSL Sprite_Main
#_029D8C: JML LinkOAM_Main

;===================================================================================================

#EXIT_029D90:
#_029D90: RTS

;---------------------------------------------------------------------------------------------------

Module16_04_FadeAndEnd:
#_029D91: DEC.b $13
#_029D93: BNE EXIT_029D90

#_029D95: REP #$20

#_029D97: STZ.w $011A
#_029D9A: STZ.w $011C

#_029D9D: STZ.b $30

#_029D9F: SEP #$20

#_029DA1: STZ.w $02E4

#_029DA4: JSL Palette_RevertTranslucencySwap

#_029DA8: LDA.b #$00 ; LINKSTATE 00
#_029DAA: STA.b $5D

#_029DAC: STZ.w $02D8
#_029DAF: STZ.w $02DA
#_029DB2: STZ.w $037B

#_029DB5: LDA.w $010C
#_029DB8: STA.b $10

#_029DBA: STZ.b $11
#_029DBC: STZ.b $B0

#_029DBE: JMP.w Spotlight_ConfigureTableAndControl_dont_restore_y_coord

;===================================================================================================
; TODO names
;===================================================================================================
pool Module18_GanonEmerges

.submodules
#_029DC1: dw Module18_00 ; 0x00
#_029DC3: dw Module18_01 ; 0x01
#_029DC5: dw Module18_02 ; 0x02
#_029DC7: dw Module18_03 ; 0x03
#_029DC9: dw Module18_04 ; 0x04
#_029DCB: dw Module18_05 ; 0x05
#_029DCD: dw EXIT_029EB7 ; 0x06
#_029DCF: dw Module18_07 ; 0x07
#_029DD1: dw Module18_08 ; 0x08

pool off

;---------------------------------------------------------------------------------------------------

Module18_GanonEmerges:
#_029DD3: REP #$21

#_029DD5: LDA.b $E2
#_029DD7: PHA

#_029DD8: ADC.w $011A
#_029DDB: STA.b $E2
#_029DDD: STA.w $011E

#_029DE0: LDA.b $E8
#_029DE2: PHA

#_029DE3: CLC
#_029DE4: ADC.w $011C
#_029DE7: STA.b $E8
#_029DE9: STA.w $0122

#_029DEC: LDA.b $E0
#_029DEE: PHA

#_029DEF: CLC
#_029DF0: ADC.w $011A
#_029DF3: STA.b $E0
#_029DF5: STA.w $0120

#_029DF8: LDA.b $E6
#_029DFA: PHA

#_029DFB: CLC
#_029DFC: ADC.w $011C
#_029DFF: STA.b $E6
#_029E01: STA.w $0124

;---------------------------------------------------------------------------------------------------

#_029E04: SEP #$20

#_029E06: JSL Sprite_Main

#_029E0A: REP #$20

;---------------------------------------------------------------------------------------------------

#_029E0C: PLA
#_029E0D: STA.b $E6

#_029E0F: PLA
#_029E10: STA.b $E0

#_029E12: PLA
#_029E13: STA.b $E8

#_029E15: PLA
#_029E16: STA.b $E2

;---------------------------------------------------------------------------------------------------

#_029E18: SEP #$20

#_029E1A: LDA.w $0200
#_029E1D: ASL A
#_029E1E: TAX

#_029E1F: JSR (.submodules,X)
#_029E22: JML LinkOAM_Main

;===================================================================================================

Module18_00:
#_029E26: JSL Underworld_HandleLayerEffect
#_029E2A: JSL CallForDuckIndoors
#_029E2E: JSL SaveDungeonKeys

#_029E32: INC.w $0200
#_029E35: INC.w $02E4

#_029E38: RTS

;===================================================================================================

Module18_01:
#_029E39: JSL Underworld_HandleLayerEffect

#_029E3D: LDA.b $11
#_029E3F: CMP.b #$0A
#_029E41: BNE .exit

#_029E43: LDA.b #$5B
#_029E45: STA.b $8A

#_029E47: STZ.b $1B

#_029E49: LDA.b #$18
#_029E4B: STA.b $10
#_029E4D: STZ.b $11

#_029E4F: LDA.b #$02
#_029E51: STA.w $0200

.exit
#_029E54: RTS

;===================================================================================================

Module18_02:
#_029E55: JSL Underworld_HandleLayerEffect

#_029E59: DEC.b $13
#_029E5B: BNE .exit

#_029E5D: JSL EnableForceBlank

#_029E61: INC.w $0200

#_029E64: JSL RebuildHUD_ZeroKeys

#_029E68: STZ.b $30
#_029E6A: STZ.b $31

.exit
#_029E6C: RTS

;===================================================================================================

Module18_03:
#_029E6D: LDA.b #$08
#_029E6F: STA.w $1AF0
#_029E72: STZ.w $1AF1

#_029E75: JSL FluteMenu_LoadSelectedScreen

#_029E79: JSR LoadOWMusicIfNeeded

#_029E7C: LDA.b #$09 ; SONG 09
#_029E7E: STA.w $012C

#_029E81: RTS

;===================================================================================================

Module18_04:
#_029E82: JSL Overworld_LoadOverlayAndMap

#_029E86: LDA.b #$00
#_029E88: STA.b $B0

#_029E8A: RTS

;===================================================================================================

Module18_05:
#_029E8B: INC.b $13

#_029E8D: LDA.b $13
#_029E8F: CMP.b #$0F
#_029E91: BNE EXIT_029EB7

#_029E93: STZ.w $0402
#_029E96: STZ.w $0403

#_029E99: STZ.w $0FC1

#_029E9C: JSL Sprite_SpawnBatCrashCutscene

#_029EA0: LDA.b #$02
#_029EA2: STA.b $2F

#_029EA4: LDA.b #$09
#_029EA6: STA.w $010C

#_029EA9: STZ.b $1B

#_029EAB: INC.w $0200

#_029EAE: LDA.b #$80
#_029EB0: STA.b $B0

#_029EB2: LDA.b #$FF
#_029EB4: STA.w $040C

;---------------------------------------------------------------------------------------------------

#EXIT_029EB7:
#_029EB7: RTS

;===================================================================================================

Module18_07:
#_029EB8: DEC.b $B0
#_029EBA: BNE EXIT_029EB7

#_029EBC: INC.w $0200

#_029EBF: RTS

;===================================================================================================

Module18_08:
#_029EC0: JSL SpawnLandingDuck

#_029EC4: RTS

;===================================================================================================

pool Module19_TriforceRoom

.submodules
#_029EC5: dw Module19_00_ResetAndInit          ; 0x00
#_029EC7: dw Module19_01_MosaicAndPalette      ; 0x01
#_029EC9: dw Module19_02_LoadMusicAndScreen    ; 0x02
#_029ECB: dw Module19_03_PrepTileSetsPalette   ; 0x03
#_029ECD: dw Module19_04_LoadAndSongAndAdvance ; 0x04
#_029ECF: dw Module19_05_WalkLinkIn            ; 0x05
#_029ED1: dw Module19_06_MosaicFadeIn          ; 0x06
#_029ED3: dw Module19_07_PrepMessage           ; 0x07
#_029ED5: dw Module19_TriforceExpansionControl ; 0x08
#_029ED7: dw Module19_09_TriforceSpeak         ; 0x09
#_029ED9: dw Module19_TriforceExpansionControl ; 0x0A
#_029EDB: dw Module19_0B_ApproachTriforce      ; 0x0B
#_029EDD: dw Module19_0C_HoldTriforce          ; 0x0C
#_029EDF: dw Module19_0D_FadeToWhite           ; 0x0D
#_029EE1: dw Module19_0E_AdvanceToCredits      ; 0x0E

pool off

;---------------------------------------------------------------------------------------------------

Module19_TriforceRoom:
#_029EE3: LDA.b $B0
#_029EE5: ASL A
#_029EE6: TAX

#_029EE7: JSR (.submodules,X)

;---------------------------------------------------------------------------------------------------

#_029EEA: REP #$20

#_029EEC: LDA.b $E0
#_029EEE: STA.w $0120

#_029EF1: LDA.b $E6
#_029EF3: STA.w $0124

#_029EF6: LDA.b $E2
#_029EF8: STA.w $011E

#_029EFB: LDA.b $E8
#_029EFD: STA.w $0122

;---------------------------------------------------------------------------------------------------

#_029F00: SEP #$20

#_029F02: LDA.b $B0
#_029F04: CMP.b #$07
#_029F06: BCC .move_link

#_029F08: CMP.b #$0B
#_029F0A: BCC .dont_move_link

.move_link
#_029F0C: JSL Link_HandleVelocity
#_029F10: JSL Link_HandleMovingAnimation_FullLongEntry

.dont_move_link
#_029F14: JML LinkOAM_Main

;===================================================================================================

Module19_00_ResetAndInit:
#_029F18: JSL Link_ResetProperties_A

#_029F1C: STZ.b $66

#_029F1E: LDA.b #$F1 ; SONG F1 - fade
#_029F20: STA.w $012C

#_029F23: JMP.w ResetTransitionPropsAndAdvance_ResetInterface

;===================================================================================================

Module19_01_MosaicAndPalette:
#_029F26: JSR ConditionalMosaicControl

#_029F29: JMP.w ApplyPaletteFilter_bounce

;===================================================================================================

Module19_02_LoadMusicAndScreen:
#_029F2C: JSL EnableForceBlank

#_029F30: SEI

#_029F31: STZ.w NMITIMEN

#_029F34: LDA.b #$FF ; SONG FF - transfer
#_029F36: STA.w APUIO0

#_029F39: JSL LoadCreditsSongs

#_029F3D: LDA.b #$81
#_029F3F: STA.w NMITIMEN

#_029F42: LDA.b #$89
#_029F44: STA.b $A0

#_029F46: LDA.b #$01
#_029F48: STA.b $A1

#_029F4A: JSL EraseTilemaps_normal
#_029F4E: JSL Palette_RevertTranslucencySwap
#_029F52: JSR LoadSpecialOverworld

#_029F55: JSR Overworld_ReloadSubscreenOverlay

#_029F58: INC.b $B0

#_029F5A: BRA RefreshTriforceModule

;===================================================================================================

Module19_03_PrepTileSetsPalette:
#_029F5C: LDA.b #$24
#_029F5E: STA.w $0AA1

#_029F61: LDA.b #$7D
#_029F63: STA.w $0AA3

#_029F66: LDA.b #$51
#_029F68: STA.w $0AA2

#_029F6B: JSL InitializeTilesets

#_029F6F: LDX.b #$04
#_029F71: JSR OverworldLoadScreensPaletteSet_Preloaded

#_029F74: LDA.b #$0E
#_029F76: JSL OverworldPalettesLoader
#_029F7A: JSR SpecialOverworld_CopyPalettesToCache

#_029F7D: INC.b $B0

#_029F7F: RTS

;===================================================================================================

Module19_04_LoadAndSongAndAdvance:
#_029F80: LDA.b $B0
#_029F82: PHA

#_029F83: JSR Module08_02_LoadAndAdvance

#_029F86: PLA
#_029F87: INC A
#_029F88: STA.b $B0

;---------------------------------------------------------------------------------------------------

#_029F8A: LDA.b #$0F
#_029F8C: STA.b $13

#_029F8E: LDA.b #$1F
#_029F90: STA.l $7EC007

#_029F94: LDA.b #$00
#_029F96: STA.l $7EC00B

#_029F9A: LDA.b #$01
#_029F9C: STA.b $E1

#_029F9E: LDA.b #$02
#_029FA0: STA.b $99

#_029FA2: LDA.b #$32
#_029FA4: STA.b $9A

#_029FA6: LDA.b #$F0
#_029FA8: STA.l $7EC011

#_029FAC: LDA.b #$EC
#_029FAE: STA.b $20

#_029FB0: LDA.b #$78
#_029FB2: STA.b $22

#_029FB4: LDA.b #$02
#_029FB6: STA.b $EE

#_029FB8: LDA.b #$20 ; SONG 20
#_029FBA: STA.w $012C

;===================================================================================================

RefreshTriforceModule:
#_029FBD: LDA.b #$19
#_029FBF: STA.b $10

#_029FC1: STZ.b $11

#_029FC3: RTS

;===================================================================================================

Module19_05_WalkLinkIn:
#_029FC4: LDA.b #$08
#_029FC6: STA.b $67
#_029FC8: STA.b $26

#_029FCA: STZ.b $2F

#_029FCC: LDA.b $20
#_029FCE: CMP.b #$C0
#_029FD0: BCS .exit

#_029FD2: STZ.b $67
#_029FD4: STZ.b $26
#_029FD6: STZ.b $2E

#_029FD8: INC.b $B0

.exit
#_029FDA: RTS

;===================================================================================================

Module19_06_MosaicFadeIn:
#_029FDB: LDA.l $7EC007
#_029FDF: LSR A
#_029FE0: BCS .continue

#_029FE2: LDA.l $7EC011
#_029FE6: BEQ .continue

#_029FE8: SEC
#_029FE9: SBC.b #$10
#_029FEB: STA.l $7EC011

.continue
#_029FEF: JSR CopyMosaicControl
#_029FF2: JSL ApplyPaletteFilter

#_029FF6: RTS

;===================================================================================================

Module19_07_PrepMessage:
#_029FF7: JSL TriforceRoom_PrepGFXSlotForPoly

#_029FFB: REP #$20

; Message 0171
#_029FFD: LDA.w #$0171
#_02A000: STA.w $1CF0

#_02A003: SEP #$20

#_02A005: JSL Interface_PrepAndDisplayMessage

#_02A009: JSL RenderText

#_02A00D: LDA.b #$80
#_02A00F: STA.b $C8

#_02A011: LDA.b #$19
#_02A013: STA.b $10

#_02A015: INC.b $B0

#_02A017: RTS

;===================================================================================================

Module19_09_TriforceSpeak:
#_02A018: JSL AdvancePolyhedral

#_02A01C: JSL RenderText

#_02A020: LDA.b $11
#_02A022: BNE .exit

#_02A024: STZ.w $0200

#_02A027: LDA.b #$19
#_02A029: STA.b $10

#_02A02B: INC.b $B0

.exit
#_02A02D: RTS

;===================================================================================================

Module19_TriforceExpansionControl:
#_02A02E: JSL AdvancePolyhedral

#_02A032: LDA.b $B0
#_02A034: CMP.b #$0B
#_02A036: BNE .exit

#_02A038: LDA.b #$21 ; SONG 21
#_02A03A: STA.w $012C

#_02A03D: LDA.b #$19
#_02A03F: STA.b $10

#_02A041: STZ.b $67
#_02A043: STZ.b $26

#_02A045: INC.b $11

.exit
#_02A047: RTS

;===================================================================================================

Module19_0B_ApproachTriforce:
#_02A048: JSL AdvancePolyhedral
#_02A04C: JSL TriforceRoom_LinkApproachTriforce

#_02A050: LDA.b $B0
#_02A052: CMP.b #$0C
#_02A054: BNE .exit

#_02A056: STZ.b $67
#_02A058: STZ.b $26

.exit
#_02A05A: RTS

;===================================================================================================

Module19_0C_HoldTriforce:
#_02A05B: JSL AdvancePolyhedral

#_02A05F: DEC.b $C8
#_02A061: BNE .exit

#_02A063: JSL PaletteBlackAndWhiteSomething

#_02A067: INC.b $11

.exit
#_02A069: RTS

;===================================================================================================

Module19_0D_FadeToWhite:
#_02A06A: JSL AdvancePolyhedral
#_02A06E: JSL PaletteFilter_BlindingWhiteTriforce

#_02A072: LDA.l $7EC009
#_02A076: CMP.b #$FF
#_02A078: BNE .exit

#_02A07A: INC.b $B0

.exit
#_02A07C: RTS

;===================================================================================================

Module19_0E_AdvanceToCredits:
#_02A07D: DEC.b $13
#_02A07F: BNE .exit

#_02A081: LDA.b #$1A
#_02A083: STA.b $10

#_02A085: STZ.b $11
#_02A087: STZ.b $B0

#_02A089: LDA.b #$FF
#_02A08B: STA.w $0128

#_02A08E: STZ.w $012A
#_02A091: STZ.w $1F0C

#_02A094: LDA.b #$00
#_02A096: STA.l $7EF3CA

.exit
#_02A09A: RTS

;===================================================================================================

RoomTagPrizeChecks:
#_02A09B: db $00 ; Sewers
#_02A09C: db $00 ; Hyrule Castle
#_02A09D: db $04 ; Eastern Palace
#_02A09E: db $02 ; Desert Palace
#_02A09F: db $00 ; Agahnim's Tower
#_02A0A0: db $10 ; Swamp Palace
#_02A0A1: db $02 ; Palace of Darkness
#_02A0A2: db $01 ; Misery Mire
#_02A0A3: db $40 ; Skull Woods
#_02A0A4: db $04 ; Ice Palace
#_02A0A5: db $01 ; Tower of Hera
#_02A0A6: db $20 ; Thieves' Town
#_02A0A7: db $08 ; Turtle Rock

;===================================================================================================

Mirror_SaveRoomData:
#_02A0A8: LDA.w $040C
#_02A0AB: CMP.b #$FF
#_02A0AD: BEQ .play_beep

#_02A0AF: LDA.b #$19
#_02A0B1: STA.b $11
#_02A0B3: STZ.b $B0

#_02A0B5: LDA.b #$33 ; SFX2.33
#_02A0B7: STA.w $012E

#_02A0BA: JSL Underworld_FlagRoomData_Quadrants

;===================================================================================================

#SaveDungeonKeys:
#_02A0BE: LDA.w $040C
#_02A0C1: CMP.b #$FF
#_02A0C3: BEQ .exit

#_02A0C5: CMP.b #$02
#_02A0C7: BNE .not_castle

#_02A0C9: LDA.b #$00

.not_castle
#_02A0CB: LSR A
#_02A0CC: TAX

#_02A0CD: LDA.l $7EF36F
#_02A0D1: STA.l $7EF37C,X

.exit
#_02A0D5: RTL

;---------------------------------------------------------------------------------------------------

.play_beep
#_02A0D6: LDA.b #$3C ; SFX2.3C
#_02A0D8: STA.w $012E

#_02A0DB: RTL

;===================================================================================================

RoomEffectFixedColors:
#_02A0DC: db $1F, $08, $04, $00

;===================================================================================================

Underworld_HandleTranslucencyAndPalettes:
#_02A0E0: LDA.w $0ABD
#_02A0E3: BEQ .dont_undo_translucency

#_02A0E5: JSL Palette_RevertTranslucencySwap

.dont_undo_translucency
#_02A0E9: LDA.b #$02
#_02A0EB: STA.b $99

#_02A0ED: LDA.b #$B3
#_02A0EF: STA.b $9A

#_02A0F1: LDX.w $045A

#_02A0F4: LDA.l $7EC005
#_02A0F8: BNE .lights_out

;---------------------------------------------------------------------------------------------------

#_02A0FA: LDA.b #$20
#_02A0FC: LDX.b #$03
#_02A0FE: LDY.w $0414
#_02A101: BEQ .no_translucency

#_02A103: LDA.b #$32
#_02A105: CPY.b #$07
#_02A107: BEQ .no_translucency

#_02A109: LDA.b #$62
#_02A10B: CPY.b #$04
#_02A10D: BEQ .no_translucency

#_02A10F: LDA.b #$20
#_02A111: CPY.b #$02
#_02A113: BNE .no_translucency

;---------------------------------------------------------------------------------------------------

#_02A115: PHX

#_02A116: JSL Palette_AssertTranslucencySwap

#_02A11A: PLX

#_02A11B: LDA.b $A0
#_02A11D: CMP.b #$0D
#_02A11F: BNE .not_aga_2

#_02A121: REP #$20

#_02A123: LDA.w #$0000
#_02A126: STA.l $7EC019
#_02A12A: STA.l $7EC01B
#_02A12E: STA.l $7EC01D
#_02A132: STA.l $7EC01F
#_02A136: STA.l $7EC021
#_02A13A: STA.l $7EC023

#_02A13E: SEP #$20

#_02A140: JSL Palettes_LoadAgahnim

.not_aga_2
#_02A144: LDA.b #$70

;---------------------------------------------------------------------------------------------------

.no_translucency
#_02A146: STA.b $9A

.lights_out
#_02A148: LDA.l RoomEffectFixedColors,X
#_02A14C: STA.l $7EC017

#_02A150: LDA.b #$1F
#_02A152: STA.l $7EC007

#_02A156: LDA.b #$00
#_02A158: STA.l $7EC00B

#_02A15C: LDA.b #$02
#_02A15E: STA.l $7EC009

#_02A162: STZ.w $0AA9

#_02A165: JSL Palettes_Load_UnderworldSet
#_02A169: JSL Palettes_Load_SpritePal0Left
#_02A16D: JSL Palettes_Load_SpriteAux1
#_02A171: JSL Palettes_Load_SpriteAux2

#_02A175: INC.b $B0

#_02A177: RTS

;===================================================================================================

UnusedInterfacePaletteRecovery:
#_02A178: JSL ApplyPaletteFilter

#_02A17C: LDA.l $7EC007
#_02A180: BNE .exit

#_02A182: LDA.b #$00
#_02A184: STA.l $7EC005

#_02A188: LDA.w $010C
#_02A18B: STA.b $10

#_02A18D: STZ.b $B0
#_02A18F: STZ.b $11

.exit
#_02A191: RTS

;===================================================================================================

PaletteFilter_bounce:
#_02A192: JSL PaletteFilter

#_02A196: RTS

;===================================================================================================

ApplyPaletteFilter_bounce:
#_02A197: JSL ApplyPaletteFilter

#_02A19B: RTS

;===================================================================================================

ResetTransitionPropsAndAdvance_ResetInterface_long:
#_02A19C: JSR ResetTransitionPropsAndAdvance_ResetInterface

#_02A19F: RTL

;===================================================================================================

Underworld_HandleTranslucencyAndPalettes_long:
#_02A1A0: JSR Underworld_HandleTranslucencyAndPalettes

#_02A1A3: RTL

;===================================================================================================

UnusedInterfacePaletteRecovery_long:
#_02A1A4: JSR UnusedInterfacePaletteRecovery

#_02A1A7: RTL

;===================================================================================================

UNREACHABLE_02A1A8:
#_02A1A8: LDA.b $A0
#_02A1AA: AND.b #$F0
#_02A1AC: STA.b $00

#_02A1AE: LDA.b $21
#_02A1B0: AND.b #$0F
#_02A1B2: ORA.b $00
#_02A1B4: STA.b $21

#_02A1B6: LDA.b $E9
#_02A1B8: AND.b #$0F
#_02A1BA: ORA.b $00
#_02A1BC: STA.b $E9

#_02A1BE: LDA.w $0605
#_02A1C1: AND.b #$0F
#_02A1C3: ORA.b $00
#_02A1C5: STA.w $0605

#_02A1C8: LDA.w $0607
#_02A1CB: AND.b #$0F
#_02A1CD: ORA.b $00
#_02A1CF: STA.w $0607

#_02A1D2: LDA.w $0601
#_02A1D5: AND.b #$0F
#_02A1D7: ORA.b $00
#_02A1D9: STA.w $0601

#_02A1DC: LDA.w $0603
#_02A1DF: AND.b #$0F
#_02A1E1: ORA.b $00
#_02A1E3: STA.w $0603

#_02A1E6: RTS

;===================================================================================================

Underworld_AdjustAfterSpiralStairs:
#_02A1E7: LDA.b $A2
#_02A1E9: AND.b #$0F
#_02A1EB: STA.b $00

#_02A1ED: LDA.b $A0
#_02A1EF: AND.b #$0F
#_02A1F1: SEC
#_02A1F2: SBC.b $00

#_02A1F4: ASL A
#_02A1F5: STA.b $00

#_02A1F7: LDA.b $23
#_02A1F9: CLC
#_02A1FA: ADC.b $00
#_02A1FC: STA.b $23

#_02A1FE: LDA.b $E3
#_02A200: CLC
#_02A201: ADC.b $00
#_02A203: STA.b $E3

;---------------------------------------------------------------------------------------------------

#_02A205: LDA.w $060D
#_02A208: CLC
#_02A209: ADC.b $00
#_02A20B: STA.w $060D

#_02A20E: LDA.w $060F
#_02A211: CLC
#_02A212: ADC.b $00
#_02A214: STA.w $060F

#_02A217: LDA.w $0609
#_02A21A: CLC
#_02A21B: ADC.b $00
#_02A21D: STA.w $0609

#_02A220: LDA.w $060B
#_02A223: CLC
#_02A224: ADC.b $00
#_02A226: STA.w $060B

;---------------------------------------------------------------------------------------------------

#_02A229: LDA.b $A2
#_02A22B: AND.b #$F0
#_02A22D: LSR A
#_02A22E: LSR A
#_02A22F: LSR A
#_02A230: STA.b $00

#_02A232: LDA.b $A0
#_02A234: AND.b #$F0
#_02A236: LSR A
#_02A237: LSR A
#_02A238: LSR A
#_02A239: STA.b $01

#_02A23B: SEC
#_02A23C: SBC.b $00
#_02A23E: STA.b $00

;---------------------------------------------------------------------------------------------------

#_02A240: LDA.b $21
#_02A242: CLC
#_02A243: ADC.b $00
#_02A245: STA.b $21

#_02A247: LDA.b $E9
#_02A249: CLC
#_02A24A: ADC.b $00
#_02A24C: STA.b $E9

#_02A24E: LDA.w $0605
#_02A251: CLC
#_02A252: ADC.b $00
#_02A254: STA.w $0605

#_02A257: LDA.w $0607
#_02A25A: CLC
#_02A25B: ADC.b $00
#_02A25D: STA.w $0607

#_02A260: LDA.w $0601
#_02A263: CLC
#_02A264: ADC.b $00
#_02A266: STA.w $0601

#_02A269: LDA.w $0603
#_02A26C: CLC
#_02A26D: ADC.b $00
#_02A26F: STA.w $0603

#_02A272: RTS

;===================================================================================================

Underworld_AdjustForTeleportDoors:
#_02A273: STY.b $00

#_02A275: STA.w $048E
#_02A278: STA.b $A2

#_02A27A: LDA.b $A2 ; useless, was already loaded
#_02A27C: AND.b #$0F
#_02A27E: ASL A

#_02A27F: SEC
#_02A280: SBC.b $23

#_02A282: CLC
#_02A283: ADC.b $00
#_02A285: STA.b $00

;---------------------------------------------------------------------------------------------------

#_02A287: LDA.b $23
#_02A289: CLC
#_02A28A: ADC.b $00
#_02A28C: STA.b $23

#_02A28E: LDA.b $E3
#_02A290: CLC
#_02A291: ADC.b $00
#_02A293: STA.b $E3

#_02A295: LDA.w $060D
#_02A298: CLC
#_02A299: ADC.b $00
#_02A29B: STA.w $060D

#_02A29E: LDA.w $060F
#_02A2A1: CLC
#_02A2A2: ADC.b $00
#_02A2A4: STA.w $060F

#_02A2A7: LDA.w $0609
#_02A2AA: CLC
#_02A2AB: ADC.b $00
#_02A2AD: STA.w $0609

#_02A2B0: LDA.w $060B
#_02A2B3: CLC
#_02A2B4: ADC.b $00
#_02A2B6: STA.w $060B

;---------------------------------------------------------------------------------------------------

#_02A2B9: LDA.b $A2
#_02A2BB: AND.b #$F0

#_02A2BD: LSR A
#_02A2BE: LSR A
#_02A2BF: LSR A

#_02A2C0: SEC
#_02A2C1: SBC.b $21
#_02A2C3: STA.b $00

;---------------------------------------------------------------------------------------------------

#_02A2C5: LDA.b $21
#_02A2C7: CLC
#_02A2C8: ADC.b $00
#_02A2CA: STA.b $21

#_02A2CC: LDA.b $E9
#_02A2CE: CLC
#_02A2CF: ADC.b $00
#_02A2D1: STA.b $E9

#_02A2D3: LDA.w $0605
#_02A2D6: CLC
#_02A2D7: ADC.b $00
#_02A2D9: STA.w $0605

#_02A2DC: LDA.w $0607
#_02A2DF: CLC
#_02A2E0: ADC.b $00
#_02A2E2: STA.w $0607

#_02A2E5: LDA.w $0601
#_02A2E8: CLC
#_02A2E9: ADC.b $00
#_02A2EB: STA.w $0601

#_02A2EE: LDA.w $0603
#_02A2F1: CLC
#_02A2F2: ADC.b $00
#_02A2F4: STA.w $0603

;---------------------------------------------------------------------------------------------------

#_02A2F7: LDY.b #$00

.next
#_02A2F9: LDA.b $21
#_02A2FB: STA.w $1A14,Y

#_02A2FE: INY
#_02A2FF: CPY.b #$14
#_02A301: BNE .next

#_02A303: RTS

;===================================================================================================

pool Module09_Overworld

.submodules
#_02A304: dw Module09_00_PlayerControl              ; 0x00
#_02A306: dw Module09_LoadAuxGFX                    ; 0x01
#_02A308: dw Module09_TriggerTilemapUpdate          ; 0x02
#_02A30A: dw Module09_LoadNewMapAndGFX              ; 0x03
#_02A30C: dw Module09_LoadNewSprites                ; 0x04
#_02A30E: dw Overworld_StartScrollTransition        ; 0x05
#_02A310: dw Overworld_RunScrollTransition          ; 0x06
#_02A312: dw Overworld_EaseOffScrollTransition      ; 0x07
#_02A314: dw Overworld_FinalizeEntryOntoScreen      ; 0x08
#_02A316: dw Module09_09_OpenBigDoorFromExiting     ; 0x09
#_02A318: dw Module09_0A_WalkFromExiting_FacingDown ; 0x0A
#_02A31A: dw Module09_0B_WalkFromExiting_FacingUp   ; 0x0B
#_02A31C: dw Module09_0C_OpenBigDoor                ; 0x0C
#_02A31E: dw Overworld_StartMosaicTransition        ; 0x0D
#_02A320: dw Overworld_LoadSubscreenAndSilenceSFX1  ; 0x0E
#_02A322: dw Module09_LoadAuxGFX                    ; 0x0F
#_02A324: dw Module09_TriggerTilemapUpdate          ; 0x10
#_02A326: dw Module09_LoadNewMapAndGFX              ; 0x11
#_02A328: dw Module09_LoadNewSprites                ; 0x12
#_02A32A: dw Overworld_StartScrollTransition        ; 0x13
#_02A32C: dw Overworld_RunScrollTransition          ; 0x14
#_02A32E: dw Overworld_EaseOffScrollTransition      ; 0x15
#_02A330: dw Module09_FadeBackInFromMosaic          ; 0x16
#_02A332: dw Overworld_StartMosaicTransition        ; 0x17
#_02A334: dw Module09_18                            ; 0x18
#_02A336: dw Module09_19                            ; 0x19
#_02A338: dw Module09_LoadAuxGFX                    ; 0x1A
#_02A33A: dw Module09_TriggerTilemapUpdate          ; 0x1B
#_02A33C: dw Module09_1C                            ; 0x1C
#_02A33E: dw Module09_1D                            ; 0x1D
#_02A340: dw Module09_1E                            ; 0x1E
#_02A342: dw Module09_1F                            ; 0x1F
#_02A344: dw Overworld_ReloadSubscreenOverlay       ; 0x20
#_02A346: dw Module09_21                            ; 0x21
#_02A348: dw Module09_22                            ; 0x22
#_02A34A: dw Module09_MirrorWarp                    ; 0x23
#_02A34C: dw Overworld_StartMosaicTransition        ; 0x24
#_02A34E: dw Module09_25                            ; 0x25
#_02A350: dw Module09_LoadAuxGFX                    ; 0x26
#_02A352: dw Module09_TriggerTilemapUpdate          ; 0x27
#_02A354: dw Overworld_LoadAndBuildScreen           ; 0x28
#_02A356: dw Module09_FadeBackInFromMosaic          ; 0x29
#_02A358: dw Module09_2A_RecoverFromDrowning        ; 0x2A
#_02A35A: dw Module09_2B                            ; 0x2B
#_02A35C: dw Module09_MirrorWarp                    ; 0x2C
#_02A35E: dw Module09_2D_DoNothing                  ; 0x2D
#_02A360: dw Module09_2E_Whirlpool                  ; 0x2E
#_02A362: dw Module09_2F                            ; 0x2F

pool off

;===================================================================================================

OWOverlayHShift:
#_02A364: db  1,  0,  1,  0

OWOverlayVShift:
#_02A368: db  0, 17,  0, 17

;===================================================================================================

Module09_Overworld:
#Module0B_OverworldSpecial:
#_02A36C: SEP #$30

#_02A36E: LDA.b $11
#_02A370: ASL A
#_02A371: TAX

#_02A372: JSR (.submodules,X)

;---------------------------------------------------------------------------------------------------

; add in shake offsets
#_02A375: REP #$21

; BG2HOFS
#_02A377: LDA.b $E2
#_02A379: PHA
#_02A37A: ADC.w $011A
#_02A37D: STA.b $E2
#_02A37F: STA.w $011E

; BG2VOFS
#_02A382: LDA.b $E8
#_02A384: PHA
#_02A385: CLC
#_02A386: ADC.w $011C
#_02A389: STA.b $E8
#_02A38B: STA.w $0122

; BG1HOFS
#_02A38E: LDA.b $E0
#_02A390: PHA
#_02A391: CLC
#_02A392: ADC.w $011A
#_02A395: STA.b $E0
#_02A397: STA.w $0120

; BG1VOFS
#_02A39A: LDA.b $E6
#_02A39C: PHA
#_02A39D: CLC
#_02A39E: ADC.w $011C
#_02A3A1: STA.b $E6
#_02A3A3: STA.w $0124

;---------------------------------------------------------------------------------------------------

#_02A3A6: SEP #$20

#_02A3A8: JSL Sprite_Main

;---------------------------------------------------------------------------------------------------

; undo shake offsets
#_02A3AC: REP #$20

#_02A3AE: PLA
#_02A3AF: STA.b $E6

#_02A3B1: PLA
#_02A3B2: STA.b $E0

#_02A3B4: PLA
#_02A3B5: STA.b $E8

#_02A3B7: PLA
#_02A3B8: STA.b $E2

;---------------------------------------------------------------------------------------------------

#_02A3BA: SEP #$20

#_02A3BC: JSL LinkOAM_Main
#_02A3C0: JSL RefillLogic_long

;===================================================================================================

OverworldOverlay_HandleRain:
#_02A3C4: LDA.b $8A
#_02A3C6: CMP.b #$70
#_02A3C8: BEQ .mire_screen

#_02A3CA: LDA.l $7EF3C5
#_02A3CE: CMP.b #$02
#_02A3D0: BCS .exit

;---------------------------------------------------------------------------------------------------

.mire_screen
#_02A3D2: LDA.l $7EF2F0
#_02A3D6: AND.b #$20
#_02A3D8: BNE .exit

#_02A3DA: LDA.b $1A
#_02A3DC: CMP.b #$03
#_02A3DE: BEQ .flash

#_02A3E0: CMP.b #$05
#_02A3E2: BEQ .unflash

#_02A3E4: CMP.b #$24
#_02A3E6: BEQ .thunder

#_02A3E8: CMP.b #$2C
#_02A3EA: BEQ .unflash

#_02A3EC: CMP.b #$58
#_02A3EE: BEQ .flash

#_02A3F0: CMP.b #$5A
#_02A3F2: BNE .no_effect

.unflash
; half color math, subtraction
; enabled on CG0, OBJ, BG2
#_02A3F4: LDA.b #$72
#_02A3F6: BRA .set_color_math

.thunder
#_02A3F8: LDX.b #$36 ; SFX2.36
#_02A3FA: STX.w $012E

.flash
; enable color math on CG0, OBJ, BG2
#_02A3FD: LDA.b #$32

.set_color_math
#_02A3FF: STA.b $9A

;---------------------------------------------------------------------------------------------------

.no_effect
#_02A401: LDA.b $1A
#_02A403: AND.b #$03
#_02A405: BNE .exit

#_02A407: LDA.w $0494
#_02A40A: INC A
#_02A40B: AND.b #$03
#_02A40D: STA.w $0494

#_02A410: TAX

#_02A411: LDA.b $E1
#_02A413: CLC
#_02A414: ADC.l OWOverlayHShift,X
#_02A418: STA.b $E1

#_02A41A: LDA.b $E7
#_02A41C: CLC
#_02A41D: ADC.l OWOverlayVShift,X
#_02A421: STA.b $E7

.exit
#_02A423: RTL

;===================================================================================================

UNREACHABLE_02A424:
#_02A424: db $08, $09, $02, $04, $02, $02, $02, $02
#_02A42C: db $02, $02, $02, $02, $02, $02, $02

;===================================================================================================

Module09_00_PlayerControl:
#_02A433: LDA.w $0112
#_02A436: ORA.w $02E4
#_02A439: ORA.w $0FFC
#_02A43C: ORA.w $04C6
#_02A43F: BEQ .check_for_start

#_02A441: JMP.w .continue

;---------------------------------------------------------------------------------------------------

.check_for_start
#_02A444: LDA.b $F4
#_02A446: AND.b #$10
#_02A448: BEQ .check_for_X

#_02A44A: STZ.w $0200

#_02A44D: LDA.b #$01
#_02A44F: BRA .set_new_module

;---------------------------------------------------------------------------------------------------

.check_for_X
#_02A451: LDA.b $F6
#_02A453: AND.b #$40
#_02A455: BEQ .check_for_select

#_02A457: STZ.w $0200

#_02A45A: LDA.b #$07

;---------------------------------------------------------------------------------------------------

.set_new_module
#_02A45C: STA.b $11

#_02A45E: LDA.b $10
#_02A460: STA.w $010C

#_02A463: LDA.b #$0E
#_02A465: STA.b $10

#_02A467: RTS

;---------------------------------------------------------------------------------------------------

.check_for_select
#_02A468: LDA.b $F0
#_02A46A: AND.b #$20
#_02A46C: BEQ .continue

;---------------------------------------------------------------------------------------------------

#_02A46E: LDA.w $1CE8
#_02A471: STA.w $1CF4

#_02A474: REP #$20

; Message 0184
#_02A476: LDA.w #$0184
#_02A479: STA.w $1CF0

#_02A47C: SEP #$20

#_02A47E: LDA.b $10
#_02A480: PHA

#_02A481: JSL Interface_PrepAndDisplayMessage

#_02A485: PLA
#_02A486: STA.b $10

#_02A488: STZ.b $B0

#_02A48A: LDA.b #$0B
#_02A48C: BRA .set_new_module

;---------------------------------------------------------------------------------------------------
; No buttons pressed or none allowed
.continue
#_02A48E: LDA.w $04C6
#_02A491: BEQ .not_entrance_cutscene

#_02A493: JSL Overworld_AnimateEntrance

;---------------------------------------------------------------------------------------------------

.not_entrance_cutscene
#_02A497: SEP #$30

#_02A499: JSL Link_Main

#_02A49D: LDA.w $04B4
#_02A4A0: CMP.b #$FF
#_02A4A2: BEQ .no_countdown

#_02A4A4: JSL HUD_HandleBigTimer

;---------------------------------------------------------------------------------------------------

.no_countdown
#_02A4A8: REP #$20

#_02A4AA: LDA.b $20
#_02A4AC: AND.w #$1E00
#_02A4AF: ASL A
#_02A4B0: ASL A
#_02A4B1: ASL A
#_02A4B2: STA.w $0700

#_02A4B5: LDA.b $22
#_02A4B7: AND.w #$1E00
#_02A4BA: ORA.w $0700

#_02A4BD: XBA
#_02A4BE: STA.w $0700

;---------------------------------------------------------------------------------------------------

#_02A4C1: SEP #$20

#_02A4C3: JSL Graphics_LoadChrHalfSlot
#_02A4C7: JSR Overworld_OperateCameraScroll

#_02A4CA: LDA.b $10
#_02A4CC: CMP.b #$0B
#_02A4CE: BEQ .special_overworld

;---------------------------------------------------------------------------------------------------

#_02A4D0: JSL Overworld_UseEntrance
#_02A4D4: JSL FlashGanonTowerPalette
#_02A4D8: JSR OverworldHandleTransitions

#_02A4DB: BRA .exit

;---------------------------------------------------------------------------------------------------

.special_overworld
#_02A4DD: JSR ScrollAndCheckForSOWExit

.exit
#_02A4E0: SEP #$20

#_02A4E2: RTS

;===================================================================================================
; The actual screen ID of a screen, to account for large screens.
;===================================================================================================
Overworld_ActualScreenID:
#_02A4E3: db $00, $00, $02, $03, $03, $05, $05, $07
#_02A4EB: db $00, $00, $0A, $03, $03, $05, $05, $0F
#_02A4F3: db $10, $11, $12, $13, $14, $15, $16, $17
#_02A4FB: db $18, $18, $1A, $1B, $1B, $1D, $1E, $1E
#_02A503: db $18, $18, $22, $1B, $1B, $25, $1E, $1E
#_02A50B: db $28, $29, $2A, $2B, $2C, $2D, $2E, $2F
#_02A513: db $30, $30, $32, $33, $34, $35, $35, $37
#_02A51B: db $30, $30, $3A, $3B, $3C, $35, $35, $3F

;===================================================================================================

OverworldScreenTilemapChange:
#_02A523: dw $0F80
#_02A525: dw $0F80
#_02A527: dw $003F
#_02A529: dw $003F

;===================================================================================================
; TODO organize
OverworldScreenTilemapChangeByScreen:
#_02A52B: dw $0060, $0060, $0060, $0060
#_02A533: dw $0060, $0060, $0060, $0060
#_02A53B: dw $0060, $0060, $0060, $1060
#_02A543: dw $1060, $1060, $1060, $0060
#_02A54B: dw $0060, $0060, $0060, $0060
#_02A553: dw $0060, $0060, $0060, $0060
#_02A55B: dw $0060, $0060, $0060, $0060
#_02A563: dw $0060, $0060, $0060, $0060
#_02A56B: dw $0060, $0060, $0060, $1060
#_02A573: dw $1060, $0060, $1060, $1060
#_02A57B: dw $0060, $0060, $0060, $0060
#_02A583: dw $0060, $0060, $0060, $0060
#_02A58B: dw $0060, $0060, $0060, $0060
#_02A593: dw $0060, $0060, $0060, $0060
#_02A59B: dw $0060, $0060, $0060, $0060
#_02A5A3: dw $0060, $1060, $1060, $0060
#_02A5AB: dw $0080, $0080, $0040, $0080
#_02A5B3: dw $0080, $0080, $0080, $0040
#_02A5BB: dw $1080, $1080, $0040, $1080
#_02A5C3: dw $1080, $1080, $1080, $0040
#_02A5CB: dw $0040, $0040, $0040, $0040
#_02A5D3: dw $0040, $0040, $0040, $0040
#_02A5DB: dw $0080, $0080, $0040, $0080
#_02A5E3: dw $0080, $0040, $0080, $0080
#_02A5EB: dw $1080, $1080, $0040, $1080
#_02A5F3: dw $1080, $0040, $1080, $1080
#_02A5FB: dw $0040, $0040, $0040, $0040
#_02A603: dw $0040, $0040, $0040, $0040
#_02A60B: dw $0080, $0080, $0040, $0040
#_02A613: dw $0040, $0080, $0080, $0040
#_02A61B: dw $1080, $1080, $0040, $0040
#_02A623: dw $0040, $1080, $1080, $0040
#_02A62B: dw $1800, $1840, $1800, $1800
#_02A633: dw $1840, $1800, $1840, $1800
#_02A63B: dw $1800, $1840, $1800, $1800
#_02A643: dw $1840, $1800, $1840, $1800
#_02A64B: dw $1800, $1800, $1800, $1800
#_02A653: dw $1800, $1800, $1800, $1800
#_02A65B: dw $1800, $1840, $1800, $1800
#_02A663: dw $1840, $1800, $1800, $1840
#_02A66B: dw $1800, $1840, $1800, $1800
#_02A673: dw $1840, $1800, $1800, $1840
#_02A67B: dw $1800, $1800, $1800, $1800
#_02A683: dw $1800, $1800, $1800, $1800
#_02A68B: dw $1800, $1840, $1800, $1800
#_02A693: dw $1800, $1800, $1840, $1800
#_02A69B: dw $1800, $1840, $1800, $1800
#_02A6A3: dw $1800, $1800, $1840, $1800
#_02A6AB: dw $2000, $2040, $1000, $2000
#_02A6B3: dw $2040, $2000, $2040, $1000
#_02A6BB: dw $2000, $2040, $1000, $2000
#_02A6C3: dw $2040, $2000, $2040, $1000
#_02A6CB: dw $1000, $1000, $1000, $1000
#_02A6D3: dw $1000, $1000, $1000, $1000
#_02A6DB: dw $2000, $2040, $1000, $2000
#_02A6E3: dw $2040, $1000, $2000, $2040
#_02A6EB: dw $2000, $2040, $1000, $2000
#_02A6F3: dw $2040, $1000, $2000, $2040
#_02A6FB: dw $1000, $1000, $1000, $1000
#_02A703: dw $1000, $1000, $1000, $1000
#_02A70B: dw $2000, $2040, $1000, $1000
#_02A713: dw $1000, $2000, $2040, $1000
#_02A71B: dw $2000, $2040, $1000, $1000
#_02A723: dw $1000, $2000, $2040, $1000

;===================================================================================================

OverworldScreenIDChange:
#_02A72B: dw $0002 ; east
#_02A72D: dw $FFFE ; west
#_02A72F: dw $0010 ; south
#_02A731: dw $FFF0 ; north

;===================================================================================================
; TODO format
OverworldMixedCoordsChange:
#_02A733: dw $FFF0
#_02A735: dw $0010
#_02A737: dw $FFFE
#_02A739: dw $0002

;===================================================================================================

OverworldScreenSizeFlag:
#_02A73B: db $20, $20, $00, $20, $20, $20, $20, $00
#_02A743: db $20, $20, $00, $20, $20, $20, $20, $00
#_02A74B: db $00, $00, $00, $00, $00, $00, $00, $00
#_02A753: db $20, $20, $00, $20, $20, $00, $20, $20
#_02A75B: db $20, $20, $00, $20, $20, $00, $20, $20
#_02A763: db $00, $00, $00, $00, $00, $00, $00, $00
#_02A76B: db $20, $20, $00, $00, $00, $20, $20, $00
#_02A773: db $20, $20, $00, $00, $00, $20, $20, $00

;===================================================================================================

OverworldScreenSizeHighByte:
#_02A77B: db $03, $03, $01, $03, $03, $03, $03, $01
#_02A783: db $03, $03, $01, $03, $03, $03, $03, $01
#_02A78B: db $01, $01, $01, $01, $01, $01, $01, $01
#_02A793: db $03, $03, $01, $03, $03, $01, $03, $03
#_02A79B: db $03, $03, $01, $03, $03, $01, $03, $03
#_02A7A3: db $01, $01, $01, $01, $01, $01, $01, $01
#_02A7AB: db $03, $03, $01, $01, $01, $03, $03, $01
#_02A7B3: db $03, $03, $01, $01, $01, $03, $03, $01

;===================================================================================================

OverworldTransitionPositionY:
#_02A7BB: dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000
#_02A7CB: dw $0000, $0000, $0200, $0000, $0000, $0000, $0000, $0200
#_02A7DB: dw $0400, $0400, $0400, $0400, $0400, $0400, $0400, $0400
#_02A7EB: dw $0600, $0600, $0600, $0600, $0600, $0600, $0600, $0600
#_02A7FB: dw $0600, $0600, $0800, $0600, $0600, $0800, $0600, $0600
#_02A80B: dw $0A00, $0A00, $0A00, $0A00, $0A00, $0A00, $0A00, $0A00
#_02A81B: dw $0C00, $0C00, $0C00, $0C00, $0C00, $0C00, $0C00, $0C00
#_02A82B: dw $0C00, $0C00, $0E00, $0E00, $0E00, $0C00, $0C00, $0E00

;===================================================================================================

OverworldTransitionPositionX:
#_02A83B: dw $0000, $0000, $0400, $0600, $0600, $0A00, $0A00, $0E00
#_02A84B: dw $0000, $0000, $0400, $0600, $0600, $0A00, $0A00, $0E00
#_02A85B: dw $0000, $0200, $0400, $0600, $0800, $0A00, $0C00, $0E00
#_02A86B: dw $0000, $0000, $0400, $0600, $0600, $0A00, $0C00, $0C00
#_02A87B: dw $0000, $0000, $0400, $0600, $0600, $0A00, $0C00, $0C00
#_02A88B: dw $0000, $0200, $0400, $0600, $0800, $0A00, $0C00, $0E00
#_02A89B: dw $0000, $0000, $0400, $0600, $0800, $0A00, $0A00, $0E00
#_02A8AB: dw $0000, $0000, $0400, $0600, $0800, $0A00, $0A00, $0E00

;===================================================================================================

OverworldHandleTransitions:
#_02A8BB: LDA.w $0416
#_02A8BE: BEQ .not_scrolling

#_02A8C0: JSR OverworldHandleMapScroll

.not_scrolling
#_02A8C3: REP #$20

#_02A8C5: LDA.b $30
#_02A8C7: AND.w #$00FF
#_02A8CA: BEQ .not_moving_vertically

#_02A8CC: LDA.b $67
#_02A8CE: AND.w #$000C
#_02A8D1: STA.b $00

#_02A8D3: LDX.w $0700

#_02A8D6: LDA.b $20
#_02A8D8: SEC
#_02A8D9: SBC.l OverworldTransitionPositionY,X

; Transition triggers for north
#_02A8DD: LDY.b #$06
#_02A8DF: LDX.b #$08
#_02A8E1: CMP.w #$0004
#_02A8E4: BCC .continue_check

; Transition triggers for south
#_02A8E6: LDY.b #$04
#_02A8E8: LDX.b #$04
#_02A8EA: CMP.w $0716
#_02A8ED: BCS .continue_check

;---------------------------------------------------------------------------------------------------

.not_moving_vertically
#_02A8EF: LDA.b $31
#_02A8F1: AND.w #$00FF
#_02A8F4: BEQ .check_special_triggers

#_02A8F6: LDA.w $0716
#_02A8F9: CLC
#_02A8FA: ADC.w #$0004
#_02A8FD: STA.b $02

#_02A8FF: LDA.b $67
#_02A901: AND.w #$0003
#_02A904: STA.b $00

#_02A906: LDX.w $0700

#_02A909: LDA.b $22
#_02A90B: SEC
#_02A90C: SBC.l OverworldTransitionPositionX,X

; Transition triggers for west
#_02A910: LDY.b #$02
#_02A912: LDX.b #$02
#_02A914: CMP.w #$0006
#_02A917: BCC .continue_check

; Transition triggers for south
#_02A919: LDY.b #$00
#_02A91B: LDX.b #$01

#_02A91D: CMP.b $02
#_02A91F: BCC .check_special_triggers

;---------------------------------------------------------------------------------------------------

.continue_check
#_02A921: CPX.b $00
#_02A923: BEQ .some_transition_was_hit

.check_special_triggers
#_02A925: JSL Overworld_CheckForSpecialOverworldTrigger

#_02A929: RTS

;---------------------------------------------------------------------------------------------------

.some_transition_was_hit
#_02A92A: SEP #$20

#_02A92C: JSL Link_CheckForEdgeScreenTransition
#_02A930: BCS .check_special_triggers

#_02A932: STY.b $02
#_02A934: STZ.b $03

#_02A936: JSR DeleteCertainAncillaeStopDashing

#_02A939: REP #$31

#_02A93B: LDX.b $02

#_02A93D: LDA.b $84
#_02A93F: AND.l OverworldScreenTilemapChange,X
#_02A943: STA.b $84

#_02A945: LDA.w $0700
#_02A948: CLC
#_02A949: ADC.l OverworldScreenIDChange,X
#_02A94D: PHA

#_02A94E: STA.b $04

#_02A950: TXA

#_02A951: ASL A ; x64
#_02A952: ASL A
#_02A953: ASL A
#_02A954: ASL A
#_02A955: ASL A
#_02A956: ASL A

#_02A957: ORA.b $04
#_02A959: TAX

#_02A95A: LDA.b $84
#_02A95C: CLC
#_02A95D: ADC.l OverworldScreenTilemapChangeByScreen,X
#_02A961: STA.b $84

;---------------------------------------------------------------------------------------------------

#_02A963: PLA
#_02A964: LSR A
#_02A965: TAX

#_02A966: SEP #$30

#_02A968: LDA.b $8A
#_02A96A: PHA

#_02A96B: CMP.b #$2A
#_02A96D: BNE .not_haunted_grove

#_02A96F: LDA.b #$80 ; SFX1.80 - fade
#_02A971: STA.w $012D

.not_haunted_grove
#_02A974: LDA.b $8A
#_02A976: CMP.b #$68
#_02A978: BNE .dont_restore_dw_music

#_02A97A: LDA.w $0130
#_02A97D: CMP.b #$0E ; SONG 0E
#_02A97F: BNE .dont_restore_dw_music

#_02A981: LDA.b #$09 ; SONG 09
#_02A983: STA.w $012C

;---------------------------------------------------------------------------------------------------

.dont_restore_dw_music
#_02A986: LDA.b $8A
#_02A988: CMP.b #$18
#_02A98A: BNE .dont_fade_song_a

#_02A98C: LDA.l $7EF3C5
#_02A990: CMP.b #$03
#_02A992: BCS .dont_fade_song_a

#_02A994: LDA.b #$F1 ; SONG F1 - fade
#_02A996: STA.w $012C

.dont_fade_song_a
#_02A999: LDA.l Overworld_ActualScreenID,X
#_02A99D: ORA.l $7EF3CA
#_02A9A1: STA.b $8A
#_02A9A3: STA.w $040A

; Check if Kakariko
#_02A9A6: CMP.b #$18
#_02A9A8: BNE .dont_fade_song_b

#_02A9AA: LDA.l $7EF3C5
#_02A9AE: CMP.b #$03
#_02A9B0: BCS .dont_fade_song_b

#_02A9B2: LDA.b #$F1 ; SONG F1 - fade
#_02A9B4: STA.w $012C

;---------------------------------------------------------------------------------------------------

.dont_fade_song_b
#_02A9B7: JSR Overworld_LoadGFXAndScreenSize

#_02A9BA: INC.b $11

#_02A9BC: LDA.b $00
#_02A9BE: STA.w $0410
#_02A9C1: STA.w $0416

#_02A9C4: LDX.b #$04

.shift
#_02A9C6: DEX
#_02A9C7: LSR A
#_02A9C8: BCC .shift

#_02A9CA: STX.w $0418
#_02A9CD: STX.w $069C

#_02A9D0: STZ.w $0696
#_02A9D3: STZ.w $0698
#_02A9D6: STZ.w $0126

#_02A9D9: PLA
#_02A9DA: AND.b #$3F
#_02A9DC: BEQ .skip_palettes

#_02A9DE: LDA.b $8A
#_02A9E0: AND.b #$BF
#_02A9E2: BNE .change_palettes

.skip_palettes
#_02A9E4: STZ.b $B0

#_02A9E6: LDA.b #$0D
#_02A9E8: STA.b $11

#_02A9EA: LDA.b #$00
#_02A9EC: STA.b $95
#_02A9EE: STA.l $7EC011

#_02A9F2: RTS

;---------------------------------------------------------------------------------------------------

.change_palettes
#_02A9F3: LDX.b $8A

#_02A9F5: LDA.l $7EFD40,X
#_02A9F9: STA.b $00

#_02A9FB: LDA.l OverworldPalettesScreenToSet,X
#_02A9FF: JSL OverworldPalettesLoader
#_02AA03: JSR Overworld_CopyPalettesToCache

#_02AA06: RTS

;===================================================================================================

Overworld_LoadGFXAndScreenSize:
#_02AA07: LDX.b $8A

#_02AA09: STZ.w $0412

#_02AA0C: LDA.l $7EFCC0,X
#_02AA10: STA.w $0AA3

#_02AA13: LDA.l GFXAA2ValsOW,X
#_02AA17: STA.w $0AA2

#_02AA1A: TXA
#_02AA1B: AND.b #$3F
#_02AA1D: TAX

#_02AA1E: LDA.w $0712
#_02AA21: STA.w $0714

#_02AA24: LDA.l OverworldScreenSizeFlag,X
#_02AA28: STA.w $0712

#_02AA2B: LDA.l OverworldScreenSizeHighByte,X
#_02AA2F: STA.w $0717

;---------------------------------------------------------------------------------------------------

#_02AA32: LDY.b #$20
#_02AA34: LDX.b #$00

#_02AA36: LDA.b $8A
#_02AA38: AND.b #$40
#_02AA3A: BEQ .light_world

#_02AA3C: INY
#_02AA3D: LDX.b #$08

.light_world
#_02AA3F: STY.w $0AA1

#_02AA42: LDA.l SheetsTable_AA4,X
#_02AA46: STA.w $0AA4

#_02AA49: REP #$30

#_02AA4B: LDA.b $8A
#_02AA4D: AND.w #$00BF
#_02AA50: ASL A
#_02AA51: TAX

#_02AA52: LDA.l OverworldTransitionPositionY,X
#_02AA56: STA.w $0708

#_02AA59: LDA.l OverworldTransitionPositionX,X
#_02AA5D: LSR A
#_02AA5E: LSR A
#_02AA5F: LSR A
#_02AA60: STA.w $070C

#_02AA63: LDA.w #$03F0

#_02AA66: LDX.w $0712
#_02AA69: BNE .bigger_screen

#_02AA6B: LDA.w #$01F0

.bigger_screen
#_02AA6E: STA.w $070A

#_02AA71: LSR A ; /8
#_02AA72: LSR A
#_02AA73: LSR A
#_02AA74: STA.w $070E

#_02AA77: SEP #$30

#_02AA79: RTS

;===================================================================================================

ScrollAndCheckForSOWExit:
#_02AA7A: LDA.w $0416
#_02AA7D: BEQ .no_scroll

#_02AA7F: JSR OverworldHandleMapScroll

.no_scroll
#_02AA82: JSL SpecialOverworld_CheckForReturnTrigger

#_02AA86: RTS

;===================================================================================================
; TODO rename
Module09_LoadAuxGFX:
; disable dam drain
#_02AA87: LDA.l $7EF2BB
#_02AA8B: AND.b #$DF
#_02AA8D: STA.l $7EF2BB

; disable swamp flood
#_02AA91: LDA.l $7EF2FB
#_02AA95: AND.b #$DF
#_02AA97: STA.l $7EF2FB

; disable dam flood
#_02AA9B: LDA.l $7EF216
#_02AA9F: AND.b #$7F
#_02AAA1: STA.l $7EF216

; disable swamp entrance flood
#_02AAA5: LDA.l $7EF051
#_02AAA9: AND.b #$FE
#_02AAAB: STA.l $7EF051

#_02AAAF: JSL LoadTransAuxGFX
#_02AAB3: JSL PrepTransAuxGfx

#_02AAB7: LDA.b #$09
#_02AAB9: BRA .go

;===================================================================================================

#Module09_TriggerTilemapUpdate:
#_02AABB: LDA.b #$0A

;---------------------------------------------------------------------------------------------------

.go
#_02AABD: STA.b $17
#_02AABF: STA.w $0710

#_02AAC2: INC.b $11

#_02AAC4: RTS

;===================================================================================================

Module09_LoadNewMapAndGFX:
#_02AAC5: STZ.w $04C8
#_02AAC8: STZ.w $04C9

#_02AACB: JSR SomeTilemapChange

#_02AACE: INC.w $0710

#_02AAD1: JSR CreateInitialNewScreenMapToScroll
#_02AAD4: JSL LoadNewSpriteGFXSet

#_02AAD8: RTS

;===================================================================================================

Overworld_RunScrollTransition:
#_02AAD9: JSL Link_HandleMovingAnimation_FullLongEntry
#_02AADD: JSL Graphics_IncrementalVRAMUpload

#_02AAE1: JSR OverworldScrollTransition
#_02AAE4: AND.b #$0F
#_02AAE6: BEQ .continue

#_02AAE8: RTS

.continue
#_02AAE9: JMP.w OverworldTranScrollSet

;===================================================================================================

Module09_LoadNewSprites:
#_02AAEC: LDA.w $0418
#_02AAEF: CMP.b #$01
#_02AAF1: BNE .dont_adjust_y

;---------------------------------------------------------------------------------------------------

#_02AAF3: REP #$20

#_02AAF5: LDA.b $E8
#_02AAF7: CLC
#_02AAF8: ADC.w #$0002
#_02AAFB: STA.b $E8

#_02AAFD: LDA.b $20
#_02AAFF: CLC
#_02AB00: ADC.w #$0002
#_02AB03: STA.b $20

#_02AB05: SEP #$20

;---------------------------------------------------------------------------------------------------

.dont_adjust_y
#_02AB07: JSL Sprite_LoadAll_Overworld

#_02AB0B: STZ.w $04AC
#_02AB0E: STZ.w $04AD

#_02AB11: LDA.l $7EF3C5
#_02AB15: CMP.b #$02
#_02AB17: BCS .not_raining

.dont_set_fixed_color
#_02AB19: JMP.w Overworld_StartScrollTransition

.not_raining
#_02AB1C: LDA.b $11
#_02AB1E: CMP.b #$12
#_02AB20: BEQ .dont_set_fixed_color

#_02AB22: JSL Overworld_SetFixedColAndScroll

;===================================================================================================

Overworld_StartScrollTransition:
#_02AB26: INC.b $11

#_02AB28: LDX.w $0410
#_02AB2B: CPX.b #$04
#_02AB2D: BCC .exit

;===================================================================================================

#OverworldTranScrollSet:
#_02AB2F: STX.w $0416

#_02AB32: JSR OverworldTransitionScrollAndLoadMap

#_02AB35: STZ.w $0416

.exit
#_02AB38: RTS

;===================================================================================================

Overworld_EaseOffScrollTransition:
#_02AB39: LDX.b $8A

#_02AB3B: LDA.l OverworldScreenSize,X
#_02AB3F: BEQ .dont_scroll_map

#_02AB41: LDX.w $0410
#_02AB44: STX.w $0416

#_02AB47: JSR OverworldTransitionScrollAndLoadMap

#_02AB4A: STZ.w $0416

.dont_scroll_map
#_02AB4D: INC.b $B0

#_02AB4F: LDA.b $B0
#_02AB51: CMP.b #$08
#_02AB53: BCC .exit

#_02AB55: LDX.w $0410
#_02AB58: CPX.b #$08
#_02AB5A: BEQ .scrolling_north

#_02AB5C: CPX.b #$02
#_02AB5E: BNE .not_scrolling_vertically

.scrolling_north
#_02AB60: CMP.b #$09
#_02AB62: BCC .exit

.not_scrolling_vertically
#_02AB64: STZ.b $B0
#_02AB66: STZ.w $0410

;---------------------------------------------------------------------------------------------------

#_02AB69: LDX.b $8A

#_02AB6B: LDA.l OverworldScreenSize,X
#_02AB6F: BEQ .dont_recover_map16

#_02AB71: REP #$20

#_02AB73: LDA.l $7EC172
#_02AB77: STA.b $84

#_02AB79: LDA.l $7EC174
#_02AB7D: STA.b $86

#_02AB7F: LDA.l $7EC176
#_02AB83: STA.b $88

#_02AB85: SEP #$20

.dont_recover_map16
#_02AB87: INC.b $11

#_02AB89: JSL Follower_Disable

.exit
#_02AB8D: RTS

;===================================================================================================

Module09_0A_WalkFromExiting_FacingDown:
#_02AB8E: JSL Link_HandleMovingAnimation_SetFacingDown

#_02AB92: REP #$20

#_02AB94: LDA.b $20
#_02AB96: CLC
#_02AB97: ADC.w #$0001
#_02AB9A: STA.b $20

#_02AB9C: SEP #$20

#_02AB9E: DEC.w $069A
#_02ABA1: BNE .exit

;---------------------------------------------------------------------------------------------------

#_02ABA3: STZ.b $11

#_02ABA5: REP #$20

#_02ABA7: LDA.b $20
#_02ABA9: CLC
#_02ABAA: ADC.w #$0003
#_02ABAD: STA.b $20

#_02ABAF: SEP #$20

#_02ABB1: LDA.b #$03
#_02ABB3: STA.b $30

;---------------------------------------------------------------------------------------------------

#_02ABB5: JSR Overworld_OperateCameraScroll

#_02ABB8: LDA.w $0416
#_02ABBB: BEQ .exit

#_02ABBD: JSR OverworldHandleMapScroll

.exit
#_02ABC0: RTS

;===================================================================================================

Module09_0B_WalkFromExiting_FacingUp:
#_02ABC1: JSL Link_HandleMovingAnimation_FullLongEntry

#_02ABC5: REP #$20

#_02ABC7: LDA.b $20
#_02ABC9: SEC
#_02ABCA: SBC.w #$0001
#_02ABCD: STA.b $20

#_02ABCF: SEP #$20

#_02ABD1: DEC.w $069A
#_02ABD4: BNE .exit

#_02ABD6: STZ.b $11

.exit
#_02ABD8: RTS

;===================================================================================================

Map32UpdateTiles:
#_02ABD9: dw $0DA2, $0DA3, $0DA4, $0DA5 ; sanc doors half open
#_02ABE1: dw $0DA6, $0DA7, $0DA8, $0DA9 ; sanc doors 2/3 open
#_02ABE9: dw $0DAA, $0DAB, $0DAC, $0DAD ; sanc doors fully open
#_02ABF1: dw $0DB0, $0DB1, $0DB2, $0DB3 ; castle doors 2/3 open
#_02ABF9: dw $0DB4, $0DB5, $0DB6, $0DB7 ; castle doors fully open
#_02AC01: dw $0DC7, $0DC8, $0DC9, $0DCA ; big rock imprint
#_02AC09: dw $0DCD, $0DCE, $0DCF, $0DD0 ; open grave with corpse bottom half
#_02AC11: dw $0DD1, $0DD2, $0DD3, $0DD4 ; open grave with stairs bottom half
#_02AC19: dw $0DCB, $0DCC, $0DCD, $0DCE ; open grave with corpse top half
#_02AC21: dw $0DCB, $0DCC, $0DD1, $0DD2 ; open grave with stairs top half
#_02AC29: dw $0912, $0913, $0914, $0915 ; stairs to cave
#_02AC31: dw $0DD5, $0DD6, $0DD7, $0DD8 ; open grave with pit bottom half
#_02AC39: dw $0DCB, $0DCC, $0DD5, $0DD6 ; open grave with pit top half
#_02AC41: dw $0E1B, $0E1C, $0E1D, $0E1E ; broken weather vane

;===================================================================================================

Module09_09_OpenBigDoorFromExiting:
#_02AC49: LDA.w $0690
#_02AC4C: CMP.b #$03
#_02AC4E: BNE Overworld_DoMapUpdate32x32_conditional

#_02AC50: LDA.b #$24

#_02AC52: STA.w $069A

#_02AC55: STZ.w $0416

#_02AC58: INC.b $11

#_02AC5A: RTS

;===================================================================================================

Overworld_DoMapUpdate32x32_long:
#_02AC5B: JSR Overworld_DoMapUpdate32x32

#_02AC5E: STZ.w $0692

#_02AC61: RTL

;===================================================================================================

UNREACHABLE_02AC62:
#_02AC62: REP #$30

#_02AC64: JSR Overworld_DoMapUpdate32x32_16bit_already

#_02AC67: STZ.w $0692

#_02AC6A: RTL

;===================================================================================================

Module09_0C_OpenBigDoor:
#_02AC6B: LDA.w $0690
#_02AC6E: CMP.b #$03
#_02AC70: BNE Overworld_DoMapUpdate32x32_conditional

#_02AC72: STZ.b $B0
#_02AC74: STZ.b $11
#_02AC76: STZ.w $0416

#_02AC79: RTS

;===================================================================================================

Overworld_DoMapUpdate32x32_conditional:
#_02AC7A: LDA.w $0692
#_02AC7D: AND.b #$07
#_02AC7F: BEQ Overworld_DoMapUpdate32x32

#_02AC81: JMP.w NoMap32Update

;===================================================================================================

Overworld_DoMapUpdate32x32:
#_02AC84: REP #$30

;---------------------------------------------------------------------------------------------------

#Overworld_DoMapUpdate32x32_16bit_already: ; only accessed from unreachable code
#_02AC86: PHB
#_02AC87: PHK
#_02AC88: PLB

#_02AC89: LDA.w $0698

#_02AC8C: LDX.w $04AC

#_02AC8F: STA.l $7EF800,X

#_02AC93: TAX

#_02AC94: LDY.w $0692

#_02AC97: LDA.w Map32UpdateTiles,Y
#_02AC9A: STA.l $7E2000,X

#_02AC9E: LDX.w $04AC

#_02ACA1: STA.l $7EFA00,X

#_02ACA5: LDY.w #$0000
#_02ACA8: LDX.w $0698
#_02ACAB: JSL Overworld_DrawMap16_Anywhere

;---------------------------------------------------------------------------------------------------

#_02ACAF: LDA.w $0698
#_02ACB2: LDX.w $04AC

#_02ACB5: INC A
#_02ACB6: INC A
#_02ACB7: STA.l $7EF802,X

#_02ACBB: LDX.w $0698
#_02ACBE: LDY.w $0692

#_02ACC1: LDA.w Map32UpdateTiles+2,Y
#_02ACC4: STA.l $7E2002,X

#_02ACC8: LDX.w $04AC
#_02ACCB: STA.l $7EFA02,X

#_02ACCF: LDY.w #$0002
#_02ACD2: LDX.w $0698
#_02ACD5: JSL Overworld_DrawMap16_Anywhere

;---------------------------------------------------------------------------------------------------

#_02ACD9: LDA.w $0698

#_02ACDC: LDX.w $04AC

#_02ACDF: CLC
#_02ACE0: ADC.w #$0080
#_02ACE3: STA.l $7EF804,X

#_02ACE7: LDX.w $0698
#_02ACEA: LDY.w $0692

#_02ACED: LDA.w Map32UpdateTiles+4,Y
#_02ACF0: STA.l $7E2080,X

#_02ACF4: LDX.w $04AC
#_02ACF7: STA.l $7EFA04,X

#_02ACFB: LDY.w #$0080
#_02ACFE: LDX.w $0698
#_02AD01: JSL Overworld_DrawMap16_Anywhere

;---------------------------------------------------------------------------------------------------

#_02AD05: LDA.w $0698

#_02AD08: LDX.w $04AC

#_02AD0B: CLC
#_02AD0C: ADC.w #$0082
#_02AD0F: STA.l $7EF806,X

#_02AD13: LDX.w $0698
#_02AD16: LDY.w $0692

#_02AD19: LDA.w Map32UpdateTiles+6,Y
#_02AD1C: STA.l $7E2082,X

#_02AD20: LDX.w $04AC
#_02AD23: STA.l $7EFA06,X

#_02AD27: LDY.w #$0082
#_02AD2A: LDX.w $0698
#_02AD2D: JSL Overworld_DrawMap16_Anywhere

;---------------------------------------------------------------------------------------------------

#_02AD31: LDY.w $1000

#_02AD34: LDA.w #$FFFF
#_02AD37: STA.w $1002,Y

#_02AD3A: LDA.w $04AC
#_02AD3D: CLC
#_02AD3E: ADC.w #$0008
#_02AD41: STA.w $04AC

#_02AD44: INC.w $0690

#_02AD47: LDA.w $0692
#_02AD4A: CMP.w #$0020
#_02AD4D: BNE .dont_advance_count

#_02AD4F: INC.w $0690

.dont_advance_count
#_02AD52: PLB

#_02AD53: SEP #$30

#_02AD55: LDA.b #$01
#_02AD57: STA.b $14

;===================================================================================================

NoMap32Update:
#_02AD59: INC.w $0692

#_02AD5C: RTS

;===================================================================================================

Overworld_StartMosaicTransition:
#_02AD5D: JSR ConditionalMosaicControl

#_02AD60: LDA.b $B0
#_02AD62: JSL JumpTableLocal
#_02AD66: dw OverworldMosaicTransition_HandleSong                 ; 0x00
#_02AD68: dw ApplyPaletteFilter_bounce                            ; 0x01
#_02AD6A: dw OverworldMosaicTransition_HandleScreensAndLoadShroom ; 0x02

;===================================================================================================

OverworldMosaicTransition_HandleSong:
#_02AD6C: LDA.b $11
#_02AD6E: CMP.b #$0D
#_02AD70: BEQ .dont_fade_in_lw

#_02AD72: LDA.b $8A
#_02AD74: BEQ .dont_fade_song

.dont_fade_in_lw
#_02AD76: LDA.b $8A
#_02AD78: CMP.b #$2D
#_02AD7A: BEQ .dont_fade_song

#_02AD7C: CMP.b #$0F
#_02AD7E: BEQ .dont_fade_song

#_02AD80: CMP.b #$81
#_02AD82: BEQ .dont_fade_song

#_02AD84: CMP.b #$80
#_02AD86: BEQ .check_for_ms_grab

#_02AD88: CMP.b #$11
#_02AD8A: BEQ .check_for_ms_grab

#_02AD8C: CMP.b #$10
#_02AD8E: BEQ .check_for_ms_grab

#_02AD90: CMP.b #$02
#_02AD92: BEQ .check_for_ms_grab

#_02AD94: CMP.b #$00
#_02AD96: BNE .fade_song

;---------------------------------------------------------------------------------------------------

.check_for_ms_grab
#_02AD98: LDA.l $7EF300
#_02AD9C: AND.b #$40
#_02AD9E: BNE .dont_fade_song

.fade_song
#_02ADA0: LDA.b #$F1 ; SONG F1 - fade
#_02ADA2: STA.w $012C

.dont_fade_song
#_02ADA5: JMP.w ResetTransitionPropsAndAdvance_ResetInterface

;===================================================================================================

OverworldMosaicTransition_HandleScreensAndLoadShroom:
#_02ADA8: LDA.b #$80
#_02ADAA: STA.b $13

#_02ADAC: STZ.b $B0

#_02ADAE: LDA.b $8A
#_02ADB0: AND.b #$3F
#_02ADB2: BNE .not_woods_screen

; Load mushroom graphics into 4BPP buffer
#_02ADB4: LDA.b #$1E
#_02ADB6: JSL WriteTo4BPPBuffer_item_gfx

.not_woods_screen
#_02ADBA: LDA.w $040A
#_02ADBD: BEQ .check_to_load

; Special OW?
#_02ADBF: LDA.b $10
#_02ADC1: CMP.b #$0B
#_02ADC3: BEQ .check_to_load

#_02ADC5: LDY.b #$16

#_02ADC7: LDA.b #$01
#_02ADC9: STY.b $1C
#_02ADCB: STA.b $1D

#_02ADCD: LDA.b #$82
#_02ADCF: STA.b $99

#_02ADD1: LDA.b #$20
#_02ADD3: STA.b $9A

#_02ADD5: INC.b $11

#_02ADD7: RTS

;---------------------------------------------------------------------------------------------------

.check_to_load
#_02ADD8: LDA.b $11
#_02ADDA: CMP.b #$24
#_02ADDC: BNE .dont_load

#_02ADDE: JSR LoadOverworldFromSpecialOverworld

#_02ADE1: LDA.b $8A
#_02ADE3: AND.b #$3F
#_02ADE5: BNE .dont_load

; mushroom
#_02ADE7: LDA.b #$1E
#_02ADE9: JSL WriteTo4BPPBuffer_item_gfx

.dont_load
#_02ADED: INC.b $11

#_02ADEF: RTS

;===================================================================================================

Module09_1D:
#_02ADF0: JSR ConditionalMosaicControl

#_02ADF3: LDA.b $B0
#_02ADF5: JSL JumpTableLocal
#_02ADF9: dw ResetTransitionPropsAndAdvance_ResetInterface ; 0x00
#_02ADFB: dw ApplyPaletteFilter_bounce                     ; 0x01
#_02ADFD: dw Module09_1D_02_FBlankAndEnterModule0A         ; 0x02

;===================================================================================================

Module09_1D_02_FBlankAndEnterModule0A:
#_02ADFF: LDA.b #$80
#_02AE01: STA.b $13

#_02AE03: STZ.b $B0

#_02AE05: LDA.b #$0A
#_02AE07: STA.b $10
#_02AE09: STZ.b $11

#_02AE0B: RTS

;===================================================================================================

Module09_1E:
#_02AE0C: JSR ConditionalMosaicControl

#_02AE0F: LDA.b $B0
#_02AE11: JSL JumpTableLocal
#_02AE15: dw ResetTransitionPropsAndAdvance_ResetInterface ; 0x00
#_02AE17: dw ApplyPaletteFilter_bounce                     ; 0x01
#_02AE19: dw Module09_1E_02_FBlankAndLoadSPOW              ; 0x02

;===================================================================================================

Module09_1E_02_FBlankAndLoadSPOW:
#_02AE1B: LDA.b #$80
#_02AE1D: STA.b $13

#_02AE1F: JSR LoadOverworldFromSpecialOverworld

#_02AE22: LDA.b #$09
#_02AE24: STA.b $10

#_02AE26: LDA.b #$0F
#_02AE28: STA.b $11

#_02AE2A: STZ.b $B0

#_02AE2C: RTS

;===================================================================================================

Module09_25:
#_02AE2D: JSL Sprite_InitializeSlots
#_02AE31: JSL Sprite_ReloadAll_Overworld

#_02AE35: STZ.w $0308
#_02AE38: STZ.w $0309

;===================================================================================================

Overworld_LoadSubscreenAndSilenceSFX1:
#_02AE3B: LDA.b #$05 ; SFX1.05
#_02AE3D: STA.w $012D

;===================================================================================================
; TODO document each screen ID
;===================================================================================================
Overworld_ReloadSubscreenOverlay:
#_02AE40: REP #$30

#_02AE42: LDA.b $8A
#_02AE44: STA.l $7EC213

#_02AE48: LDA.b $84
#_02AE4A: STA.l $7EC215

#_02AE4E: LDA.b $88
#_02AE50: STA.l $7EC217

#_02AE54: LDA.b $86
#_02AE56: STA.l $7EC219

#_02AE5A: LDA.w $0418
#_02AE5D: STA.l $7EC21B

#_02AE61: LDA.w $0410
#_02AE64: STA.l $7EC21D

#_02AE68: LDA.w $0416
#_02AE6B: STA.l $7EC21F

#_02AE6F: STZ.b $8C

#_02AE71: STZ.w $0622
#_02AE74: STZ.w $0620

;---------------------------------------------------------------------------------------------------

#_02AE77: LDY.w #$0390

#_02AE7A: LDA.b $8A
#_02AE7C: CMP.w #$0080
#_02AE7F: BCC .normal_overworld

#_02AE81: LDX.w #$0097

#_02AE84: LDA.b $A0
#_02AE86: CMP.w #$0180
#_02AE89: BNE .not_mastersword

#_02AE8B: LDX.w #$0080
#_02AE8E: LDA.l $7EF280,X

#_02AE92: LDX.w #$0097

#_02AE95: AND.w #$0040
#_02AE98: BNE .disable_overlay

;---------------------------------------------------------------------------------------------------

.do_load_special
#_02AE9A: JMP.w .load_overlay

;---------------------------------------------------------------------------------------------------

.not_mastersword
#_02AE9D: LDX.w #$0094
#_02AEA0: CMP.w #$0181
#_02AEA3: BEQ .do_load_special

#_02AEA5: LDX.w #$0093
#_02AEA8: CMP.w #$0189
#_02AEAB: BEQ .do_load_special

#_02AEAD: CMP.w #$0182
#_02AEB0: BEQ .disable_with_sfx

#_02AEB2: CMP.w #$0183
#_02AEB5: BNE .disable_overlay

;---------------------------------------------------------------------------------------------------

.disable_with_sfx
#_02AEB7: SEP #$30

#_02AEB9: LDA.b #$01 ; SFX1.01
#_02AEBB: STA.w $012D

;---------------------------------------------------------------------------------------------------

.disable_overlay
#_02AEBE: SEP #$30

#_02AEC0: STZ.b $1D

#_02AEC2: INC.b $11

#_02AEC4: RTS

;---------------------------------------------------------------------------------------------------

.normal_overworld
#_02AEC5: AND.w #$003F
#_02AEC8: BNE .not_any_woods

#_02AECA: LDA.b $8A
#_02AECC: AND.w #$0040
#_02AECF: BNE .skull_woods

#_02AED1: LDX.w #$0080
#_02AED4: LDA.l $7EF280,X

#_02AED8: LDX.w #$009E
#_02AEDB: AND.w #$0040
#_02AEDE: BNE .load_overlay

.skull_woods
#_02AEE0: LDX.w #$009D
#_02AEE3: BRA .load_overlay

;---------------------------------------------------------------------------------------------------

.not_any_woods
#_02AEE5: LDX.w #$0095

#_02AEE8: LDA.b $8A
#_02AEEA: CMP.w #$0003
#_02AEED: BEQ .load_overlay

#_02AEEF: CMP.w #$0005
#_02AEF2: BEQ .load_overlay

#_02AEF4: CMP.w #$0007
#_02AEF7: BEQ .load_overlay

#_02AEF9: LDX.w #$009C

#_02AEFC: CMP.w #$0043
#_02AEFF: BEQ .load_overlay

#_02AF01: CMP.w #$0045
#_02AF04: BEQ .load_overlay

#_02AF06: CMP.w #$0047
#_02AF09: BEQ .load_overlay

#_02AF0B: CMP.w #$0070
#_02AF0E: BNE .not_mire

#_02AF10: LDA.l $7EF2F0
#_02AF14: AND.w #$0020
#_02AF17: BNE .load_overlay

#_02AF19: BRA .load_rain

;---------------------------------------------------------------------------------------------------

.not_mire
#_02AF1B: LDX.w #$0096

#_02AF1E: LDA.l $7EF3C5
#_02AF22: AND.w #$00FF
#_02AF25: CMP.w #$0002
#_02AF28: BCS .load_overlay

.load_rain
#_02AF2A: LDX.w #$009F

;---------------------------------------------------------------------------------------------------

.load_overlay
#_02AF2D: STY.b $84

#_02AF2F: STX.b $8A
#_02AF31: STX.b $8C

#_02AF33: LDA.b $84
#_02AF35: SEC
#_02AF36: SBC.w #$0400
#_02AF39: AND.w #$0F80
#_02AF3C: ASL A
#_02AF3D: XBA
#_02AF3E: STA.b $88

#_02AF40: LDA.b $84
#_02AF42: SEC
#_02AF43: SBC.w #$0010
#_02AF46: AND.w #$003E
#_02AF49: LSR A
#_02AF4A: STA.b $86

#_02AF4C: STZ.w $0418
#_02AF4F: STZ.w $0410
#_02AF52: STZ.w $0416

;---------------------------------------------------------------------------------------------------

#_02AF55: SEP #$30

#_02AF57: LDA.b #$82
#_02AF59: STA.b $99

#_02AF5B: LDA.b #$16
#_02AF5D: STA.b $1C

#_02AF5F: LDA.b #$01
#_02AF61: STA.b $1D

#_02AF63: CPX.b #$9F
#_02AF65: BNE .no_rain_sfx

#_02AF67: LDA.b #$01 ; SFX1.01
#_02AF69: STA.w $012D

.no_rain_sfx
#_02AF6C: LDA.b #$72

#_02AF6E: CPX.b #$97
#_02AF70: BEQ .continue_with_subscreen

#_02AF72: CPX.b #$94
#_02AF74: BEQ .continue_with_subscreen

#_02AF76: CPX.b #$93
#_02AF78: BEQ .continue_with_subscreen

#_02AF7A: CPX.b #$9D
#_02AF7C: BEQ .continue_with_subscreen

#_02AF7E: CPX.b #$9E
#_02AF80: BEQ .continue_with_subscreen

#_02AF82: CPX.b #$9F
#_02AF84: BEQ .continue_with_subscreen

#_02AF86: LDA.b #$20
#_02AF88: CPX.b #$95
#_02AF8A: BEQ .continue_with_subscreen

#_02AF8C: CPX.b #$9C
#_02AF8E: BEQ .continue_with_subscreen

#_02AF90: LDA.l $7EC213
#_02AF94: TAX

#_02AF95: LDA.b #$20
#_02AF97: CPX.b #$5B
#_02AF99: BEQ .continue_with_subscreen

#_02AF9B: CPX.b #$1B
#_02AF9D: BNE .disable_subscreen

#_02AF9F: LDX.b $11
#_02AFA1: CPX.b #$23
#_02AFA3: BEQ .continue_with_subscreen

#_02AFA5: CPX.b #$2C
#_02AFA7: BEQ .continue_with_subscreen

;---------------------------------------------------------------------------------------------------

.disable_subscreen
#_02AFA9: STZ.b $1D

.continue_with_subscreen
#_02AFAB: STA.b $9A

#_02AFAD: JSR LoadOverworldOverlay

#_02AFB0: LDA.b $8C
#_02AFB2: CMP.b #$94
#_02AFB4: BNE .not_hobo_bridge_shadow

#_02AFB6: LDA.b $E7
#_02AFB8: ORA.b #$01
#_02AFBA: STA.b $E7

.not_hobo_bridge_shadow
#_02AFBC: REP #$20

#_02AFBE: LDA.l $7EC213
#_02AFC2: STA.b $8A

#_02AFC4: LDA.l $7EC215
#_02AFC8: STA.b $84

#_02AFCA: LDA.l $7EC217
#_02AFCE: STA.b $88

#_02AFD0: LDA.l $7EC219
#_02AFD4: STA.b $86

#_02AFD6: LDA.l $7EC21B
#_02AFDA: STA.w $0418

#_02AFDD: LDA.l $7EC21D
#_02AFE1: STA.w $0410

#_02AFE4: LDA.l $7EC21F
#_02AFE8: STA.w $0416

#_02AFEB: SEP #$20

#_02AFED: RTS

;===================================================================================================

Module09_FadeBackInFromMosaic:
#_02AFEE: LDA.l $7EC007
#_02AFF2: LSR A
#_02AFF3: BCC .delay

#_02AFF5: LDA.l $7EC011
#_02AFF9: SEC
#_02AFFA: SBC.b #$10
#_02AFFC: STA.l $7EC011

.delay
#_02B000: JSR CopyMosaicControl

#_02B003: LDA.b $B0
#_02B005: JSL JumpTableLocal
#_02B009: dw OverworldMosaicTransition_RecoverDestinationPalettes ; 0x00
#_02B00B: dw OverworldMosaicTransition_FilterAndLoadGraphics      ; 0x01
#_02B00D: dw OverworldMosaicTransition_RecoverSongAndSetMoving    ; 0x02

;===================================================================================================

OverworldMosaicTransition_RecoverDestinationPalettes:
#_02B00F: LDX.b $8A

#_02B011: LDA.l $7EFD40,X
#_02B015: STA.b $00

#_02B017: LDA.l OverworldPalettesScreenToSet,X
#_02B01B: JSL OverworldPalettesLoader

#_02B01F: BRA OverworldMosaicTransition_LoadSpriteGraphicsAndSetMosaic

;===================================================================================================

OverworldMosaicTransition_RecoverSongAndSetMoving:
#_02B021: LDA.w $0130
#_02B024: STA.w $0133

#_02B027: LDA.b $8A
#_02B029: CMP.b #$80
#_02B02B: BEQ .dont_set_song

#_02B02D: LDX.b #$02 ; SONG 02

#_02B02F: CMP.b #$40
#_02B031: BCC .light_world

#_02B033: LDX.b #$09 ; SONG 09

.light_world
#_02B035: STX.w $012C

#_02B038: LDA.b $8A
#_02B03A: AND.b #$3F
#_02B03C: BNE .dont_set_song

#_02B03E: LDX.b #$0D

#_02B040: LDA.l $7EF3CA
#_02B044: BNE .in_dark_world

#_02B046: LDA.l $7EF300
#_02B04A: AND.b #$40
#_02B04C: BEQ .ped_not_pulled

#_02B04E: STZ.w $012C

#_02B051: LDX.b #$02 ; SONG 02 - !USELESS ?

#_02B053: BRA .dont_set_song

.ped_not_pulled
#_02B055: LDX.b #$05 ; SONG 05

.in_dark_world
#_02B057: STX.w $012C

;---------------------------------------------------------------------------------------------------

.dont_set_song
#_02B05A: STZ.b $11 ; !USELESS

#_02B05C: LDA.b #$08
#_02B05E: STA.b $11

#_02B060: STZ.b $B0

#_02B062: LDA.b $10
#_02B064: CMP.b #$0B
#_02B066: BNE .exit

#_02B068: LDA.b #$09
#_02B06A: STA.b $10

#_02B06C: LDA.b #$1F
#_02B06E: STA.b $11

#_02B070: LDA.b #$0C
#_02B072: STA.w $069A

.exit
#_02B075: RTS

;===================================================================================================

Module09_1C:
#_02B076: LDA.l $7EC007
#_02B07A: LSR A
#_02B07B: BCC .delay

#_02B07D: LDA.l $7EC011
#_02B081: SEC
#_02B082: SBC.b #$10
#_02B084: STA.l $7EC011

.delay
#_02B088: JSR CopyMosaicControl

#_02B08B: LDA.b $B0
#_02B08D: JSL JumpTableLocal
#_02B091: dw OverworldMosaicTransition_LoadSpriteGraphicsAndSetMosaic ; 0x00
#_02B093: dw OverworldMosaicTransition_FilterAndLoadGraphics          ; 0x01
#_02B095: dw Module09_1C_02_HandleMusic                               ; 0x02

;===================================================================================================

OverworldMosaicTransition_LoadSpriteGraphicsAndSetMosaic:
#_02B097: JSL LoadNewSpriteGFXSet

#_02B09B: LDA.b #$0F
#_02B09D: STA.b $13

#_02B09F: LDA.b #$80
#_02B0A1: STA.b $9B

#_02B0A3: LDA.l $7EC00B
#_02B0A7: DEC A
#_02B0A8: STA.l $7EC007

#_02B0AC: LDA.b #$00
#_02B0AE: STA.l $7EC00B

#_02B0B2: LDA.b #$02
#_02B0B4: STA.l $7EC009

#_02B0B8: INC.b $B0

#_02B0BA: RTS

;===================================================================================================

OverworldMosaicTransition_FilterAndLoadGraphics:
#_02B0BB: JSL Graphics_IncrementalVRAMUpload
#_02B0BF: JSL ApplyPaletteFilter

#_02B0C3: RTS

;===================================================================================================

Module09_1C_02_HandleMusic:
; Are we in MS grove?
#_02B0C4: LDA.b $8A
#_02B0C6: CMP.b #$80
#_02B0C8: BEQ .no_song_change

#_02B0CA: LDA.b #$02 ; SONG 02
#_02B0CC: STA.w $012C

; are we in the woods?
#_02B0CF: LDA.b $8A
#_02B0D1: AND.b #$3F
#_02B0D3: BNE .no_song_change

#_02B0D5: LDA.b #$05 ; SONG 05
#_02B0D7: STA.w $012C

.no_song_change
#_02B0DA: LDA.b #$08
#_02B0DC: STA.b $11

#_02B0DE: STZ.b $B0

#_02B0E0: RTS

;===================================================================================================

Module09_22:
#_02B0E1: INC.b $13

#_02B0E3: LDA.b $13
#_02B0E5: CMP.b #$0F
#_02B0E7: BNE .exit

#_02B0E9: STZ.b $11
#_02B0EB: STZ.b $B0

.exit
#_02B0ED: RTS

;===================================================================================================

Module09_18:
#_02B0EE: STZ.w $032A

#_02B0F1: LDA.b $10
#_02B0F3: PHA

#_02B0F4: LDA.b $11
#_02B0F6: PHA

#_02B0F7: JSR LoadSpecialOverworld
#_02B0FA: JSR Module09_25

#_02B0FD: PLA
#_02B0FE: INC A
#_02B0FF: STA.b $11

#_02B101: PLA
#_02B102: STA.b $10

#_02B104: RTS

;===================================================================================================

Module09_19:
#_02B105: LDA.b $10
#_02B107: PHA

#_02B108: LDA.b $11
#_02B10A: PHA

#_02B10B: JSR Module08_02_LoadAndAdvance

#_02B10E: PLA
#_02B10F: INC A
#_02B110: STA.b $11

#_02B112: PLA
#_02B113: STA.b $10

#_02B115: RTS

;===================================================================================================

Overworld_LoadAndBuildScreen_long:
#_02B116: JSR Overworld_LoadAndBuildScreen

#_02B119: RTL

;===================================================================================================

Overworld_ReloadSubscreenOverlayAndAdvance_long:
#_02B11A: JSR Overworld_ReloadSubscreenOverlay

#_02B11D: DEC.b $11

#_02B11F: RTL

;===================================================================================================

Module09_MirrorWarp:
#_02B120: JSL MirrorWarp_Main

#_02B124: RTS

;===================================================================================================

MirrorWarp_Main:
#_02B125: INC.w $0710

#_02B128: LDA.b $B0
#_02B12A: JSL JumpTableLong
#_02B12E: dl MirrorWarp_Initialize                 ; 0x00
#_02B131: dl MirrorWarp_BuildAndEnableHDMATable    ; 0x01
#_02B134: dl MirrorWarp_BuildWavingHDMATable       ; 0x02
#_02B137: dl MirrorWarp_BuildDewavingHDMATable     ; 0x03
#_02B13A: dl MirrorWarp_FinalizeAndLoadDestination ; 0x04

;===================================================================================================

MirrorWarp_Initialize:
#_02B13D: LDA.b $8A
#_02B13F: CMP.b #$80
#_02B141: BCC .not_special

#_02B143: STZ.b $11
#_02B145: STZ.b $B0
#_02B147: STZ.w $0200

#_02B14A: RTL

;---------------------------------------------------------------------------------------------------

.not_special
#_02B14B: LDA.b #$08 ; SONG 08
#_02B14D: STA.w $012C
#_02B150: STA.w $0ABF

#_02B153: LDA.b #$90
#_02B155: STA.w $031F

#_02B158: JSL InitializeMirrorHDMA

#_02B15C: LDA.l $7EF3CA
#_02B160: EOR.b #$40
#_02B162: STA.l $7EF3CA

#_02B166: STZ.w $04C8
#_02B169: STZ.w $04C9

#_02B16C: LDA.b $8A
#_02B16E: AND.b #$3F
#_02B170: ORA.l $7EF3CA
#_02B174: STA.b $8A
#_02B176: STA.w $040A

#_02B179: STZ.w $0200

#_02B17C: JSL PaletteFilter_InitializeWhiteFilter
#_02B180: JSR Overworld_LoadGFXAndScreenSize

#_02B183: INC.b $B0

#_02B185: RTL

;===================================================================================================

MirrorWarp_FinalizeAndLoadDestination:
#_02B186: REP #$20

; indirect HDMA, 2 registers write once
; register WH0
#_02B188: LDA.w #$2641
#_02B18B: STA.w DMA7MODE

#_02B18E: LDX.b #$3E

#_02B190: LDA.w #$FF00

.next
#_02B193: STA.w $1B00,X
#_02B196: STA.w $1B40,X
#_02B199: STA.w $1B80,X
#_02B19C: STA.w $1BC0,X
#_02B19F: STA.w $1C00,X
#_02B1A2: STA.w $1C40,X
#_02B1A5: STA.w $1C80,X

#_02B1A8: DEX
#_02B1A9: DEX
#_02B1AA: BPL .next

;---------------------------------------------------------------------------------------------------

#_02B1AC: LDA.w #$0000
#_02B1AF: STA.l $7EC007
#_02B1B3: STA.l $7EC009

#_02B1B7: SEP #$20

#_02B1B9: JSL ReloadPreviouslyLoadedSheets

#_02B1BD: LDA.b #$80
#_02B1BF: STA.b $9B

;---------------------------------------------------------------------------------------------------

#_02B1C1: LDX.b #$04 ; SONG 04

#_02B1C3: LDA.l $7EF3CA
#_02B1C7: BEQ .light_world

#_02B1C9: LDA.l $7EF357
#_02B1CD: BEQ .set_song

.light_world
; check screen ID for dark world too
#_02B1CF: LDX.b #$09 ; SONG 09
#_02B1D1: LDA.b $8A
#_02B1D3: CMP.b #$40
#_02B1D5: BCS .set_song

; check for kak screen
#_02B1D7: LDX.b #$02 ; SONG 02
#_02B1D9: CMP.b #$18
#_02B1DB: BNE .set_song

; check for rain state
#_02B1DD: LDA.l $7EF3C5
#_02B1E1: CMP.b #$03 ; SONG 03
#_02B1E3: BCS .set_song

#_02B1E5: LDX.b #$07 ; SONG 07

.set_song
#_02B1E7: STX.w $012C

;---------------------------------------------------------------------------------------------------

#_02B1EA: LDA.b $8A

; skull woods screen
#_02B1EC: CMP.b #$40
#_02B1EE: BEQ .use_sw_march

; check for dark dm screens
#_02B1F0: CMP.b #$43
#_02B1F2: BEQ .dark_dm

#_02B1F4: CMP.b #$45
#_02B1F6: BEQ .dark_dm

#_02B1F8: CMP.b #$47
#_02B1FA: BNE .no_second_song_change

.dark_dm
#_02B1FC: LDA.b #$09 ; SFX1.09
#_02B1FE: STA.w $012D

.use_sw_march
#_02B201: LDX.b #$0D ; SONG 0D

#_02B203: LDA.l $7EF357
#_02B207: BNE .have_pearl

#_02B209: LDX.b #$04 ; SONG 04

.have_pearl
#_02B20B: STX.w $012C

;---------------------------------------------------------------------------------------------------

.no_second_song_change
#_02B20E: LDA.b $11
#_02B210: STA.w $010C

#_02B213: STZ.b $11
#_02B215: STZ.b $B0

#_02B217: STZ.w $0200
#_02B21A: STZ.w $0710

#_02B21D: RTL

;===================================================================================================

MirrorWarp_HandleCastlePyramidSubscreen:
#_02B21E: JSR Overworld_LoadSubscreenAndSilenceSFX1

#_02B221: LDA.b $8A
#_02B223: CMP.b #$1B
#_02B225: BEQ .is_castle

#_02B227: CMP.b #$5B
#_02B229: BNE .not_pyramid

.is_castle
#_02B22B: LDA.b #$01
#_02B22D: STA.b $1D

.not_pyramid
#_02B22F: RTL

;===================================================================================================

Overworld_DrawScreenAtCurrentMirrorPosition:
#_02B230: REP #$20

#_02B232: LDA.b $84
#_02B234: PHA

#_02B235: LDA.b $86
#_02B237: PHA

#_02B238: LDA.b $88
#_02B23A: PHA

#_02B23B: LDX.b $8A

#_02B23D: LDA.l OverworldScreenSize,X
#_02B241: AND.w #$00FF
#_02B244: BEQ .no_adjustment

#_02B246: LDA.w #$0390
#_02B249: STA.b $84

#_02B24B: SEC
#_02B24C: SBC.w #$0400
#_02B24F: AND.w #$0F80
#_02B252: ASL A
#_02B253: XBA
#_02B254: STA.b $88

#_02B256: LDA.b $84
#_02B258: SEC
#_02B259: SBC.w #$0010
#_02B25C: AND.w #$003E
#_02B25F: LSR A
#_02B260: STA.b $86

;---------------------------------------------------------------------------------------------------

.no_adjustment
#_02B262: SEP #$20

#_02B264: JSR Overworld_DrawQuadrantsAndOverlays

#_02B267: LDA.b $11
#_02B269: CMP.b #$2C
#_02B26B: BNE .not_mirror_bonk

#_02B26D: JSR MirrorBonk_RecoverChangedTiles

.not_mirror_bonk
#_02B270: REP #$20

#_02B272: PLA
#_02B273: STA.b $88

#_02B275: PLA
#_02B276: STA.b $86

#_02B278: PLA
#_02B279: STA.b $84

#_02B27B: SEP #$20

#_02B27D: RTL

;===================================================================================================

MirrorWarp_LoadSpritesAndColors:
#_02B27E: LDA.b #$90
#_02B280: STA.w $031F

#_02B283: REP #$20

#_02B285: LDA.b $84
#_02B287: PHA

#_02B288: LDA.b $86
#_02B28A: PHA

#_02B28B: LDA.b $88
#_02B28D: PHA

#_02B28E: LDA.w #$FFFF
#_02B291: STA.b $C8

#_02B293: STZ.b $CA
#_02B295: STZ.b $CC

;---------------------------------------------------------------------------------------------------

#_02B297: LDX.b $8A

#_02B299: LDA.l OverworldScreenSize,X
#_02B29D: AND.w #$00FF
#_02B2A0: BEQ .no_adjustment

#_02B2A2: LDA.w #$0390
#_02B2A5: STA.b $84

#_02B2A7: SEC
#_02B2A8: SBC.w #$0400
#_02B2AB: AND.w #$0F80
#_02B2AE: ASL A
#_02B2AF: XBA
#_02B2B0: STA.b $88

#_02B2B2: LDA.b $84
#_02B2B4: SEC
#_02B2B5: SBC.w #$0010
#_02B2B8: AND.w #$003E
#_02B2BB: LSR A
#_02B2BC: STA.b $86

;---------------------------------------------------------------------------------------------------

.no_adjustment
#_02B2BE: SEP #$20

#_02B2C0: JSR BuildOverworldMapFromMap16

#_02B2C3: REP #$20

#_02B2C5: PLA
#_02B2C6: STA.b $88

#_02B2C8: PLA
#_02B2C9: STA.b $86

#_02B2CB: PLA
#_02B2CC: STA.b $84

;---------------------------------------------------------------------------------------------------

#_02B2CE: SEP #$20

#_02B2D0: JSR OverworldLoadScreensPaletteSet

#_02B2D3: LDX.b $8A

#_02B2D5: LDA.l $7EFD40,X
#_02B2D9: STA.b $00

#_02B2DB: LDA.l OverworldPalettesScreenToSet,X
#_02B2DF: JSL OverworldPalettesLoader

#_02B2E3: JSL Overworld_SetScreenBGColorCacheOnly
#_02B2E7: JSL Overworld_SetFixedColAndScroll

#_02B2EB: LDA.b $8A
#_02B2ED: CMP.b #$1B
#_02B2EF: BEQ .is_castle

#_02B2F1: CMP.b #$5B
#_02B2F3: BNE .not_pyramid_a

.is_castle
#_02B2F5: LDA.b #$01
#_02B2F7: STA.b $1D

;---------------------------------------------------------------------------------------------------

.not_pyramid_a
#_02B2F9: REP #$20

#_02B2FB: LDX.b #$00

#_02B2FD: LDA.w #$7FFF ; RGB: #F8F8F8

.next_color
#_02B300: STA.l $7EC540,X
#_02B304: STA.l $7EC560,X
#_02B308: STA.l $7EC580,X
#_02B30C: STA.l $7EC5A0,X
#_02B310: STA.l $7EC5C0,X
#_02B314: STA.l $7EC5E0,X

#_02B318: INX
#_02B319: INX
#_02B31A: CPX.b #$20
#_02B31C: BNE .next_color

#_02B31E: STA.l $7EC500

;---------------------------------------------------------------------------------------------------

#_02B322: LDA.b $8A
#_02B324: CMP.w #$005B
#_02B327: BNE .not_pyramid_b

#_02B329: LDA.w #$0000 ; RGB: #000000
#_02B32C: STA.l $7EC500
#_02B330: STA.l $7EC540

;---------------------------------------------------------------------------------------------------

.not_pyramid_b
#_02B334: SEP #$20

#_02B336: JSL Sprite_ResetAll
#_02B33A: JSL Sprite_ReloadAll_Overworld

#_02B33E: JSL Link_ItemReset_FromOverworldThings

#_02B342: JSR DeleteCertainAncillaeStopDashing

#_02B345: LDA.b #$14 ; LINKSTATE 14
#_02B347: STA.b $5D

; no mirror in dark world
#_02B349: LDA.b $8A
#_02B34B: AND.b #$40
#_02B34D: BNE .exit

#_02B34F: JSL InitializeMirrorPortal

.exit
#_02B353: RTL

;===================================================================================================

Module09_2B:
#_02B354: JSL PaletteBlackAndWhiteSomething_Conditional

;===================================================================================================

Module09_2D_DoNothing:
#_02B358: RTS

;===================================================================================================

Module09_2E_Whirlpool:
#_02B359: INC.w $0710

#_02B35C: LDA.b $B0
#_02B35E: JSL JumpTableLocal
#_02B362: dw Module09_2E_00_InitWhirlpool        ; 0x00
#_02B364: dw Module09_2E_01_FilterBlue           ; 0x01
#_02B366: dw Module09_2E_01_MoreBlue             ; 0x02
#_02B368: dw Module09_2E_03_FindDestination      ; 0x03
#_02B36A: dw Module09_2E_04                      ; 0x04
#_02B36C: dw Module09_2E_05_LoadDestinationMap   ; 0x05
#_02B36E: dw Module09_2E_04                      ; 0x06
#_02B370: dw Module09_2E_07_LoadAuxGraphics      ; 0x07
#_02B372: dw Module09_2E_08_TriggerTilemapUpdate ; 0x08
#_02B374: dw Module09_2E_09_LoadPalettes         ; 0x09
#_02B376: dw Module09_2E_0A                      ; 0x0A
#_02B378: dw Module09_2E_0B                      ; 0x0B
#_02B37A: dw Module09_2E_0C_FinalizeWarp         ; 0x0C

;===================================================================================================

Module09_2E_00_InitWhirlpool:
#_02B37C: LDA.b #$34 ; SFX2.34
#_02B37E: STA.w $012E

#_02B381: STZ.w $0200

#_02B384: LDA.b #$00
#_02B386: STA.l $7EC007
#_02B38A: STA.l $7EC008

#_02B38E: INC.b $B0

#_02B390: RTS

;===================================================================================================

Module09_2E_01_FilterBlue:
#_02B391: JSL PaletteFilter_WhirlpoolBlue

#_02B395: RTS

;===================================================================================================

Module09_2E_01_MoreBlue:
#_02B396: JSL PaletteFilter_IsolateWhirlpoolBlue

#_02B39A: RTS

;===================================================================================================

Module09_2E_0B:
#_02B39B: JSL Graphics_IncrementalVRAMUpload
#_02B39F: JSL PaletteFilter_WhirlpoolRestoreBlue

#_02B3A3: RTS

;===================================================================================================

Module09_2E_0A:
#_02B3A4: JSL PaletteFilter_WhirlpoolRestoreRedGreen

#_02B3A8: LDA.l $7EC007
#_02B3AC: BEQ .exit

#_02B3AE: JSL PaletteFilter_WhirlpoolRestoreRedGreen

.exit
#_02B3B2: RTS

;===================================================================================================

Module09_2E_03_FindDestination:
#_02B3B3: LDA.b #$9F ; Max green
#_02B3B5: STA.b $9E

#_02B3B7: STZ.w $0AA9
#_02B3BA: STZ.w $0AB2

#_02B3BD: JSL FindPartnerWhirlpoolExit

#_02B3C1: STZ.b $B2

#_02B3C3: JSL Overworld_ReloadSubscreenOverlayAndAdvance_long

#_02B3C7: LDA.b #$0C
#_02B3C9: STA.b $17

#_02B3CB: STZ.b $15

#_02B3CD: BRA Whirlpool_SetFixedColor

;===================================================================================================

Module09_2E_04:
#_02B3CF: LDA.b #$0D
#_02B3D1: STA.b $17

#_02B3D3: BRA Whirlpool_Advance

;===================================================================================================

Module09_2E_05_LoadDestinationMap:
#_02B3D5: JSL Overworld_LoadOverlayAndMap

#_02B3D9: LDA.b #$0C
#_02B3DB: STA.b $17

#_02B3DD: BRA Whirlpool_SetBrightness

;===================================================================================================

Module09_2E_07_LoadAuxGraphics:
#_02B3DF: JSR Module09_LoadAuxGFX

#_02B3E2: BRA Whirlpool_ToSubmod2D

;===================================================================================================

Module09_2E_08_TriggerTilemapUpdate:
#_02B3E4: JSR Module09_TriggerTilemapUpdate

#_02B3E7: LDA.b #$0F
#_02B3E9: STA.b $13

#_02B3EB: INC.w $0710

;===================================================================================================

Whirlpool_ToSubmod2D:
#_02B3EE: DEC.b $11

#_02B3F0: INC.b $B0

#_02B3F2: RTS

;===================================================================================================

Module09_2E_09_LoadPalettes:
#_02B3F3: STZ.w $0AA9

#_02B3F6: JSL Palettes_Load_SpriteMain
#_02B3FA: JSL Palettes_Load_SpriteEnvironment
#_02B3FE: JSL Palettes_Load_SpritePal0Left
#_02B402: JSL Palettes_Load_HUD
#_02B406: JSL Palettes_Load_OWBGMain

#_02B40A: LDX.b $8A

#_02B40C: LDA.l $7EFD40,X
#_02B410: STA.b $00

#_02B412: LDA.l OverworldPalettesScreenToSet,X
#_02B416: JSL OverworldPalettesLoader
#_02B41A: JSL Overworld_SetScreenBGColor
#_02B41E: JSL Overworld_SetFixedColAndScroll
#_02B422: JSL LoadNewSpriteGFXSet

;===================================================================================================

Whirlpool_SetFixedColor:
#_02B426: LDA.b #$80 ; No green
#_02B428: STA.b $9E

;===================================================================================================

Whirlpool_SetBrightness:
#_02B42A: LDA.b #$0F
#_02B42C: STA.b $13

;===================================================================================================

Whirlpool_Advance:
#_02B42E: INC.w $0710
#_02B431: INC.b $B0

#_02B433: RTS

;===================================================================================================

Module09_2E_0C_FinalizeWarp:
#_02B434: LDA.b #$90
#_02B436: STA.w $031F

#_02B439: JSL ReloadPreviouslyLoadedSheets

#_02B43D: LDA.b #$80
#_02B43F: STA.b $9B

#_02B441: LDX.b #$02 ; SONG 02

#_02B443: LDA.l $7EF3CA
#_02B447: BEQ .light_world

#_02B449: LDX.b #$09 ; SONG 09

.light_world
#_02B44B: STX.w $012C

#_02B44E: STZ.b $11
#_02B450: STZ.b $B0

#_02B452: STZ.w $0200
#_02B455: STZ.w $0710

#_02B458: RTS

;===================================================================================================

Module09_2F:
#_02B459: JSL Overworld_CreateTRPortal

#_02B45D: STZ.b $11

#_02B45F: RTS

;===================================================================================================

Module09_2A_RecoverFromDrowning:
#_02B460: LDA.b $B0
#_02B462: JSL JumpTableLocal
#_02B466: dw Module09_2A_00_ScrollToLand
#_02B468: dw RecoverPositionAfterDrowning

;===================================================================================================

Module09_2A_00_ScrollToLand:
#_02B46A: REP #$20

#_02B46C: STZ.b $00
#_02B46E: STZ.b $02

#_02B470: LDA.b $22
#_02B472: CMP.l $7EC186
#_02B476: BEQ .set_x
#_02B478: BCC .x_low

#_02B47A: DEC.b $02

#_02B47C: DEC A
#_02B47D: CMP.l $7EC186
#_02B481: BEQ .set_x

#_02B483: DEC.b $02

#_02B485: DEC A

#_02B486: BRA .set_x

;---------------------------------------------------------------------------------------------------

.x_low
#_02B488: INC.b $02

#_02B48A: INC A
#_02B48B: CMP.l $7EC186
#_02B48F: BEQ .set_x

#_02B491: INC.b $02
#_02B493: INC A

.set_x
#_02B494: STA.b $22

;---------------------------------------------------------------------------------------------------

#_02B496: LDA.b $20
#_02B498: CMP.l $7EC184
#_02B49C: BEQ .set_y
#_02B49E: BCC .y_low

#_02B4A0: DEC.b $00

#_02B4A2: DEC A
#_02B4A3: CMP.l $7EC184
#_02B4A7: BEQ .set_y

#_02B4A9: DEC.b $00

#_02B4AB: DEC A

#_02B4AC: BRA .set_y

;---------------------------------------------------------------------------------------------------

.y_low
#_02B4AE: INC.b $00

#_02B4B0: INC A
#_02B4B1: CMP.l $7EC184
#_02B4B5: BEQ .set_y

#_02B4B7: INC.b $00
#_02B4B9: INC A

.set_y
#_02B4BA: STA.b $20

;---------------------------------------------------------------------------------------------------

#_02B4BC: CMP.l $7EC184
#_02B4C0: BNE .delay_advance

#_02B4C2: LDA.b $22
#_02B4C4: CMP.l $7EC186
#_02B4C8: BNE .delay_advance

#_02B4CA: INC.b $B0

#_02B4CC: STZ.b $46

.delay_advance
#_02B4CE: SEP #$20

#_02B4D0: LDA.b $00
#_02B4D2: STA.b $30

#_02B4D4: LDA.b $02
#_02B4D6: STA.b $31

#_02B4D8: JSR Overworld_OperateCameraScroll

#_02B4DB: LDA.w $0416
#_02B4DE: BEQ .exit

#_02B4E0: JSR OverworldHandleMapScroll

.exit
#_02B4E3: RTS

;===================================================================================================
; TODO analyze more
RoomQuadrantLayoutValues:
#_02B4E4: db $0F, $0F, $0F, $0F, $0B, $0B, $07, $07
#_02B4EC: db $0F, $0B, $0F, $07, $0B, $0F, $07, $0F
#_02B4F4: db $0E, $0D, $0E, $0D, $0F, $0F, $0E, $0D
#_02B4FC: db $0E, $0D, $0F, $0F, $0A, $09, $06, $05

;===================================================================================================

QuadrantLayoutFlagBitfield:
#_02B504: db $08, $04, $02, $01, $0C, $0C, $03, $03
#_02B50C: db $0A, $05, $0A, $05, $0F, $0F, $0F, $0F

;===================================================================================================

Underworld_AdjustForRoomLayout:
#_02B514: PHB
#_02B515: PHK
#_02B516: PLB

#_02B517: SEP #$30

#_02B519: JSR Underworld_AdjustQuadrant

#_02B51C: STZ.b $A6

#_02B51E: LDY.b #$02

#_02B520: LDA.b $A9
#_02B522: BNE .right_side

#_02B524: LDY.b #$01

.right_side
#_02B526: STY.b $00

#_02B528: LDA.w $0452
#_02B52B: BNE .from_wall

#_02B52D: LDX.b $A8

#_02B52F: LDA.w RoomQuadrantLayoutValues,X
#_02B532: AND.b $00
#_02B534: BNE .small_horizontally

.from_wall
#_02B536: LDA.b #$02
#_02B538: STA.b $A6

.small_horizontally
#_02B53A: STZ.b $A7

#_02B53C: LDY.b #$08
#_02B53E: LDA.b $AA
#_02B540: BNE .bottom_side

#_02B542: LDY.b #$04

.bottom_side
#_02B544: STY.b $00

#_02B546: LDA.w $0453
#_02B549: BNE .blast_wall_makes_tall

#_02B54B: LDX.b $A8
#_02B54D: LDA.w RoomQuadrantLayoutValues,X
#_02B550: AND.b $00
#_02B552: BNE .small_vertically

.blast_wall_makes_tall
#_02B554: LDA.b #$02
#_02B556: STA.b $A7

.small_vertically
#_02B558: LDA.b $FC
#_02B55A: BEQ .blast_wall_not_wide

#_02B55C: STA.b $A6

.blast_wall_not_wide
#_02B55E: LDA.b $FD
#_02B560: BEQ .exit

#_02B562: STA.b $A7

.exit
#_02B564: PLB

#_02B565: RTL

;===================================================================================================

HandleEdgeTransitionMovementEast_RightBy8:
#_02B566: REP #$20

#_02B568: LDA.b $22
#_02B56A: CLC
#_02B56B: ADC.w #$0008
#_02B56E: STA.b $22

#_02B570: SEP #$20

;===================================================================================================

HandleEdgeTransitionMovementEast:
#_02B572: PHB
#_02B573: PHK
#_02B574: PLB

#_02B575: LDA.b $A9
#_02B577: EOR.b #$01
#_02B579: STA.b $A9

#_02B57B: JSR Underworld_AdjustQuadrant

#_02B57E: LDX.b #$08

#_02B580: JSR AdjustCameraBoundaries_DownOrRightQuadrant
#_02B583: JSR Underworld_SaveRoomData

#_02B586: LDA.b $A9
#_02B588: JSR UnderworldTransition_AdjustCamera_Horizontal

#_02B58B: LDY.b #$02
#_02B58D: JSR HandleEdgeTransition_AdjustCameraBoundaries

#_02B590: INC.b $11

#_02B592: LDA.b $A9
#_02B594: BNE .continue

#_02B596: LDX.b #$08
#_02B598: JSR AdjustCameraBoundaries_DownOrRightWholeRoom

#_02B59B: LDA.b $A0
#_02B59D: STA.b $A2

#_02B59F: LDA.w $0114
#_02B5A2: AND.b #$CF
#_02B5A4: CMP.b #$89
#_02B5A6: BNE .not_teleport_door

#_02B5A8: LDA.l $7EC004
#_02B5AC: STA.b $A0

#_02B5AE: DEC A

#_02B5AF: LDY.b #$01
#_02B5B1: JSR Underworld_AdjustForTeleportDoors

#_02B5B4: BRA .continue_from_tele

;---------------------------------------------------------------------------------------------------

.not_teleport_door
#_02B5B6: LDA.w $048E
#_02B5B9: CMP.b $A0
#_02B5BB: BEQ .room_id_matches

#_02B5BD: STA.b $A2

#_02B5BF: JSR Underworld_AdjustAfterSpiralStairs

.room_id_matches
#_02B5C2: INC.b $A0

;---------------------------------------------------------------------------------------------------

.continue_from_tele
#_02B5C4: INC.b $11

#_02B5C6: LDA.b $EF
#_02B5C8: AND.b #$01
#_02B5CA: BEQ .no_layer_swap

#_02B5CC: LDA.b $EE
#_02B5CE: EOR.b #$01
#_02B5D0: STA.b $EE
#_02B5D2: STA.w $0476

.no_layer_swap
#_02B5D5: LDA.b $EF
#_02B5D7: AND.b #$02
#_02B5D9: BEQ .continue

; swap dungeon id
#_02B5DB: LDA.w $040C
#_02B5DE: EOR.b #$02
#_02B5E0: STA.w $040C

;---------------------------------------------------------------------------------------------------

.continue
#_02B5E3: STZ.b $EF

#_02B5E5: STZ.b $A7

#_02B5E7: LDY.b #$08

#_02B5E9: LDA.b $AA
#_02B5EB: BNE .on_lower_half

#_02B5ED: LDY.b #$04

.on_lower_half
#_02B5EF: STY.b $00

#_02B5F1: LDA.w $0453
#_02B5F4: BNE .set_layout

#_02B5F6: LDX.b $A8

#_02B5F8: LDA.w RoomQuadrantLayoutValues,X
#_02B5FB: AND.b $00
#_02B5FD: BNE .exit

.set_layout
#_02B5FF: LDA.b #$02
#_02B601: STA.b $A7

.exit
#_02B603: PLB

#_02B604: RTL

;===================================================================================================

HandleEdgeTransitionMovementWest_LeftBy8:
#_02B605: REP #$20

#_02B607: LDA.b $22
#_02B609: SEC
#_02B60A: SBC.w #$0008
#_02B60D: STA.b $22

#_02B60F: SEP #$20

;===================================================================================================

HandleEdgeTransitionMovementWest:
#_02B611: PHB
#_02B612: PHK
#_02B613: PLB

#_02B614: LDA.b $A9
#_02B616: EOR.b #$01
#_02B618: STA.b $A9

#_02B61A: JSR Underworld_AdjustQuadrant

#_02B61D: LDX.b #$08
#_02B61F: JSR AdjustCameraBoundaries_UpOrLeftQuadrant

#_02B622: JSR Underworld_SaveRoomData

#_02B625: LDA.b $A9
#_02B627: EOR.b #$01
#_02B629: JSR UnderworldTransition_AdjustCamera_Horizontal

#_02B62C: LDY.b #$03
#_02B62E: JSR HandleEdgeTransition_AdjustCameraBoundaries

#_02B631: INC.b $11

#_02B633: LDA.b $A9
#_02B635: BEQ .continue

#_02B637: LDX.b #$08
#_02B639: JSR AdjustCameraBoundaries_UpOrLeftWholeRoom

#_02B63C: LDA.b $A0
#_02B63E: STA.b $A2

#_02B640: LDA.w $0114
#_02B643: AND.b #$CF
#_02B645: CMP.b #$89
#_02B647: BNE .not_teleport_door

#_02B649: LDA.l $7EC003
#_02B64D: STA.b $A0

#_02B64F: INC A

#_02B650: LDY.b #$FF
#_02B652: JSR Underworld_AdjustForTeleportDoors

#_02B655: BRA .continue_from_tele

.not_teleport_door
#_02B657: LDA.w $048E
#_02B65A: CMP.b $A0
#_02B65C: BEQ .room_id_matches

#_02B65E: STA.b $A2

#_02B660: JSR Underworld_AdjustAfterSpiralStairs

.room_id_matches
#_02B663: DEC.b $A0

;---------------------------------------------------------------------------------------------------

.continue_from_tele
#_02B665: INC.b $11

#_02B667: LDA.b $EF
#_02B669: AND.b #$01
#_02B66B: BEQ .no_layer_swap

#_02B66D: LDA.b $EE
#_02B66F: EOR.b #$01
#_02B671: STA.b $EE
#_02B673: STA.w $0476

.no_layer_swap
#_02B676: LDA.b $EF
#_02B678: AND.b #$02
#_02B67A: BEQ .continue

#_02B67C: LDA.w $040C
#_02B67F: EOR.b #$02
#_02B681: STA.w $040C

;---------------------------------------------------------------------------------------------------

.continue
#_02B684: STZ.b $EF
#_02B686: STZ.b $A7

#_02B688: LDY.b #$08

#_02B68A: LDA.b $AA
#_02B68C: BNE .on_lower_half

#_02B68E: LDY.b #$04

.on_lower_half
#_02B690: STY.b $00

#_02B692: LDA.w $0453
#_02B695: BNE .set_layout

#_02B697: LDX.b $A8

#_02B699: LDA.w RoomQuadrantLayoutValues,X
#_02B69C: AND.b $00
#_02B69E: BNE .exit

.set_layout
#_02B6A0: LDA.b #$02
#_02B6A2: STA.b $A7

.exit
#_02B6A4: PLB

#_02B6A5: RTL

;===================================================================================================

HandleEdgeTransitionMovementSouth_DownBy16:
#_02B6A6: REP #$20

#_02B6A8: LDA.b $20
#_02B6AA: CLC
#_02B6AB: ADC.w #$0010
#_02B6AE: STA.b $20

#_02B6B0: SEP #$20

;===================================================================================================

HandleEdgeTransitionMovementSouth:
#_02B6B2: PHB
#_02B6B3: PHK
#_02B6B4: PLB

#_02B6B5: LDA.b $AA
#_02B6B7: EOR.b #$02
#_02B6B9: STA.b $AA

#_02B6BB: JSR Underworld_AdjustQuadrant

#_02B6BE: LDX.b #$00
#_02B6C0: JSR AdjustCameraBoundaries_DownOrRightQuadrant

#_02B6C3: JSR Underworld_SaveRoomData

#_02B6C6: LDA.b $AA
#_02B6C8: JSR UnderworldTransition_AdjustCamera_Vertical

#_02B6CB: LDY.b #$00
#_02B6CD: JSR HandleEdgeTransition_AdjustCameraBoundaries

#_02B6D0: INC.b $11

#_02B6D2: LDA.b $AA
#_02B6D4: BNE .continue

#_02B6D6: LDX.b #$00
#_02B6D8: JSR AdjustCameraBoundaries_DownOrRightWholeRoom

#_02B6DB: LDA.b $A0
#_02B6DD: STA.b $A2

#_02B6DF: LDA.w $0114
#_02B6E2: CMP.b #$8E
#_02B6E4: BNE .not_entrance

;===================================================================================================

#PrepForOverworldExit:
#_02B6E6: JSL SaveDungeonKeys
#_02B6EA: JSL SaveVisitedQuadrantFlags

#_02B6EE: LDA.b #$08
#_02B6F0: STA.w $010C

#_02B6F3: LDA.b #$0F
#_02B6F5: STA.b $10
#_02B6F7: STZ.b $11

#_02B6F9: STZ.b $B0

#_02B6FB: JSR DeleteCertainAncillaeStopDashing

#_02B6FE: PLB

#_02B6FF: RTL

;===================================================================================================

.not_entrance
#_02B700: LDA.w $048E
#_02B703: CMP.b $A0
#_02B705: BEQ .room_id_matches

#_02B707: STA.b $A2

#_02B709: JSR Underworld_AdjustAfterSpiralStairs

.room_id_matches
#_02B70C: LDA.b $A0
#_02B70E: CLC
#_02B70F: ADC.b #$10
#_02B711: STA.b $A0

#_02B713: INC.b $11

#_02B715: LDA.b $EF
#_02B717: AND.b #$01
#_02B719: BEQ .no_layer_swap

#_02B71B: LDA.b $EE
#_02B71D: EOR.b #$01
#_02B71F: STA.b $EE
#_02B721: STA.w $0476

.no_layer_swap
#_02B724: LDA.b $EF
#_02B726: AND.b #$02
#_02B728: BEQ .continue

#_02B72A: LDA.w $040C
#_02B72D: EOR.b #$02
#_02B72F: STA.w $040C

.continue
#_02B732: STZ.b $EF
#_02B734: STZ.b $A6

#_02B736: LDY.b #$02
#_02B738: LDA.b $A9
#_02B73A: BNE .on_east_side

#_02B73C: LDY.b #$01

.on_east_side
#_02B73E: STY.b $00

#_02B740: LDA.w $0452
#_02B743: BNE .set_layout

#_02B745: LDX.b $A8

#_02B747: LDA.w RoomQuadrantLayoutValues,X
#_02B74A: AND.b $00
#_02B74C: BNE .exit

.set_layout
#_02B74E: LDA.b #$02
#_02B750: STA.b $A6

.exit
#_02B752: PLB

#_02B753: RTL

;===================================================================================================

HandleEdgeTransitionMovementNorth:
#_02B754: PHB
#_02B755: PHK
#_02B756: PLB

#_02B757: LDA.b $AA
#_02B759: EOR.b #$02
#_02B75B: STA.b $AA

#_02B75D: JSR Underworld_AdjustQuadrant

#_02B760: LDX.b #$00
#_02B762: JSR AdjustCameraBoundaries_UpOrLeftQuadrant

#_02B765: JSR Underworld_SaveRoomData

#_02B768: LDA.b $AA
#_02B76A: EOR.b #$02
#_02B76C: JSR UnderworldTransition_AdjustCamera_Vertical

#_02B76F: LDY.b #$01
#_02B771: JSR HandleEdgeTransition_AdjustCameraBoundaries

#_02B774: INC.b $11

#_02B776: LDA.b $AA
#_02B778: BEQ .continue

#_02B77A: LDX.b #$00
#_02B77C: JSR AdjustCameraBoundaries_UpOrLeftWholeRoom

#_02B77F: LDA.b $A0
#_02B781: STA.b $A2

#_02B783: LDA.w $0114
#_02B786: CMP.b #$8E
#_02B788: BNE .not_entrance

#_02B78A: JMP.w PrepForOverworldExit

.not_entrance
#_02B78D: LDA.b $A0
#_02B78F: ORA.b $A1
#_02B791: BNE .not_ganon_room

#_02B793: JSL SaveDungeonKeys

#_02B797: LDA.b #$19
#_02B799: STA.b $10
#_02B79B: STZ.b $11

#_02B79D: STZ.b $B0

#_02B79F: PLB

#_02B7A0: RTL

;---------------------------------------------------------------------------------------------------

.not_ganon_room
#_02B7A1: LDA.w $048E
#_02B7A4: CMP.b $A0
#_02B7A6: BEQ .room_id_matches

#_02B7A8: STA.b $A2

#_02B7AA: JSR Underworld_AdjustAfterSpiralStairs

.room_id_matches
#_02B7AD: LDA.b $A0
#_02B7AF: SEC
#_02B7B0: SBC.b #$10
#_02B7B2: STA.b $A0

#_02B7B4: INC.b $11

#_02B7B6: LDA.b $EF
#_02B7B8: AND.b #$01
#_02B7BA: BEQ .no_layer_swap

#_02B7BC: LDA.b $EE
#_02B7BE: EOR.b #$01
#_02B7C0: STA.b $EE
#_02B7C2: STA.w $0476

.no_layer_swap
#_02B7C5: LDA.b $EF
#_02B7C7: AND.b #$02
#_02B7C9: BEQ .continue

#_02B7CB: LDA.w $040C
#_02B7CE: EOR.b #$02
#_02B7D0: STA.w $040C

.continue
#_02B7D3: STZ.b $EF
#_02B7D5: STZ.b $A6

#_02B7D7: LDY.b #$02
#_02B7D9: LDA.b $A9
#_02B7DB: BNE .on_east_side

#_02B7DD: LDY.b #$01

.on_east_side
#_02B7DF: STY.b $00

#_02B7E1: LDA.w $0452
#_02B7E4: BNE .set_layout

#_02B7E6: LDX.b $A8

#_02B7E8: LDA.w RoomQuadrantLayoutValues,X
#_02B7EB: AND.b $00
#_02B7ED: BNE .exit

.set_layout
#_02B7EF: LDA.b #$02
#_02B7F1: STA.b $A6

.exit
#_02B7F3: PLB

#_02B7F4: RTL

;===================================================================================================
; TODO verify these routine variants
;===================================================================================================
AdjustQuadrantAndCamera_right:
#_02B7F5: LDA.b $A9
#_02B7F7: EOR.b #$01
#_02B7F9: STA.b $A9

#_02B7FB: JSR Underworld_AdjustQuadrant

#_02B7FE: LDX.b #$08
#_02B800: JSR AdjustCameraBoundaries_DownOrRightQuadrant

;===================================================================================================

SetAndSaveVisitedQuadrantFlags:
#_02B803: LDA.b $A7
#_02B805: ASL A
#_02B806: ASL A
#_02B807: STA.b $00

#_02B809: LDA.b $A6
#_02B80B: ASL A
#_02B80C: ORA.b $00
#_02B80E: ORA.b $AA
#_02B810: ORA.b $A9
#_02B812: TAX

#_02B813: LDA.l QuadrantLayoutFlagBitfield,X
#_02B817: ORA.w $0408
#_02B81A: STA.w $0408

;===================================================================================================

SaveVisitedQuadrantFlags:
#_02B81D: REP #$30

#_02B81F: LDA.b $A0
#_02B821: ASL A
#_02B822: TAX

#_02B823: LDA.l $7EF000,X
#_02B827: ORA.w $0408
#_02B82A: STA.l $7EF000,X

#_02B82E: SEP #$30

#_02B830: RTL

;===================================================================================================

AdjustQuadrantAndCamera_left:
#_02B831: LDA.b $A9
#_02B833: EOR.b #$01
#_02B835: STA.b $A9

#_02B837: JSR Underworld_AdjustQuadrant

#_02B83A: LDX.b #$08
#_02B83C: JSR AdjustCameraBoundaries_UpOrLeftQuadrant

#_02B83F: BRA SetAndSaveVisitedQuadrantFlags

;===================================================================================================

AdjustQuadrantAndCamera_down:
#_02B841: LDA.b $AA
#_02B843: EOR.b #$02
#_02B845: STA.b $AA

#_02B847: JSR Underworld_AdjustQuadrant

#_02B84A: LDX.b #$00
#_02B84C: JSR AdjustCameraBoundaries_DownOrRightQuadrant

#_02B84F: BRA SetAndSaveVisitedQuadrantFlags

;===================================================================================================

AdjustQuadrantAndCamera_up:
#_02B851: LDA.b $AA
#_02B853: EOR.b #$02
#_02B855: STA.b $AA

#_02B857: JSR Underworld_AdjustQuadrant

#_02B85A: LDX.b #$00
#_02B85C: JSR AdjustCameraBoundaries_UpOrLeftQuadrant

#_02B85F: BRA SetAndSaveVisitedQuadrantFlags

;===================================================================================================

Underworld_FlagRoomData_Quadrants:
#_02B861: LDA.b $A7
#_02B863: ASL A
#_02B864: ASL A
#_02B865: STA.b $00

#_02B867: LDA.b $A6
#_02B869: ASL A
#_02B86A: ORA.b $00
#_02B86C: ORA.b $AA
#_02B86E: ORA.b $A9
#_02B870: TAX

#_02B871: LDA.l QuadrantLayoutFlagBitfield,X
#_02B875: ORA.w $0408
#_02B878: STA.w $0408

#_02B87B: JSR Underworld_SaveRoomData

#_02B87E: RTL

;===================================================================================================

Underworld_SaveRoomData:
#_02B87F: REP #$30

#_02B881: LDA.b $A0
#_02B883: ASL A
#_02B884: TAX

#_02B885: LDA.w $0402
#_02B888: LSR A
#_02B889: LSR A
#_02B88A: LSR A
#_02B88B: LSR A
#_02B88C: STA.b $06

#_02B88E: LDA.w $0400
#_02B891: AND.w #$F000

#_02B894: ORA.w $0408
#_02B897: ORA.b $06

#_02B899: STA.l $7EF000,X

#_02B89D: SEP #$30

#_02B89F: RTS

;===================================================================================================

AdjustCameraBoundaries_DownOrRightQuadrant:
#_02B8A0: REP #$20

#_02B8A2: LDA.w $0600,X
#_02B8A5: CLC
#_02B8A6: ADC.w #$0100
#_02B8A9: STA.w $0600,X

#_02B8AC: LDA.w $0604,X
#_02B8AF: CLC
#_02B8B0: ADC.w #$0100
#_02B8B3: STA.w $0604,X

#_02B8B6: SEP #$20

#_02B8B8: RTS

;===================================================================================================

AdjustCameraBoundaries_DownOrRightWholeRoom:
#_02B8B9: REP #$20

#_02B8BB: LDA.w $0602,X
#_02B8BE: CLC
#_02B8BF: ADC.w #$0200
#_02B8C2: STA.w $0602,X

#_02B8C5: LDA.w $0606,X
#_02B8C8: CLC
#_02B8C9: ADC.w #$0200
#_02B8CC: STA.w $0606,X

#_02B8CF: SEP #$20

#_02B8D1: RTS

;===================================================================================================

AdjustCameraBoundaries_UpOrLeftQuadrant:
#_02B8D2: REP #$20

#_02B8D4: LDA.w $0600,X
#_02B8D7: SEC
#_02B8D8: SBC.w #$0100
#_02B8DB: STA.w $0600,X

#_02B8DE: LDA.w $0604,X
#_02B8E1: SEC
#_02B8E2: SBC.w #$0100
#_02B8E5: STA.w $0604,X

#_02B8E8: SEP #$20

#_02B8EA: RTS

;===================================================================================================

AdjustCameraBoundaries_UpOrLeftWholeRoom:
#_02B8EB: REP #$20

#_02B8ED: LDA.w $0602,X
#_02B8F0: SEC
#_02B8F1: SBC.w #$0200
#_02B8F4: STA.w $0602,X

#_02B8F7: LDA.w $0606,X
#_02B8FA: SEC
#_02B8FB: SBC.w #$0200
#_02B8FE: STA.w $0606,X

#_02B901: SEP #$20

#_02B903: RTS

;===================================================================================================

pool HandleEdgeTransition_AdjustCameraBoundaries

.vertical_boundaries
#_02B904: dw $0078
#_02B906: dw $0178
#_02B908: dw $0088
#_02B90A: dw $0188

.horizontal_boundaries
#_02B90C: dw $007F
#_02B90E: dw $017F
#_02B910: dw $007F
#_02B912: dw $017F

pool off

;---------------------------------------------------------------------------------------------------

HandleEdgeTransition_AdjustCameraBoundaries:
#_02B914: STY.w $0418

#_02B917: LDA.b $67
#_02B919: AND.b #$03
#_02B91B: BEQ .nothorizontal

#_02B91D: REP #$20

#_02B91F: LDX.b #$04

#_02B921: LDA.b $67
#_02B923: AND.w #$0001
#_02B926: BEQ .not_right

#_02B928: LDX.b #$00

.not_right
#_02B92A: LDY.b $A9
#_02B92C: BEQ .west_side

#_02B92E: INX
#_02B92F: INX

.west_side
#_02B930: LDA.w .horizontal_boundaries,X
#_02B933: STA.w $061C

#_02B936: INC A
#_02B937: INC A
#_02B938: STA.w $061E

#_02B93B: SEP #$20

#_02B93D: RTS

;---------------------------------------------------------------------------------------------------

.nothorizontal
#_02B93E: REP #$20

#_02B940: LDX.b #$04

#_02B942: LDA.b $67
#_02B944: AND.w #$0004
#_02B947: BEQ .not_down

#_02B949: LDX.b #$00

.not_down
#_02B94B: LDY.b $AA
#_02B94D: BEQ .upper_quadrant

#_02B94F: INX
#_02B950: INX

.upper_quadrant
#_02B951: LDA.w .vertical_boundaries,X
#_02B954: STA.w $0618

#_02B957: INC A
#_02B958: INC A
#_02B959: STA.w $061A

#_02B95C: SEP #$20

#_02B95E: RTS

;===================================================================================================

Underworld_AdjustQuadrant:
#_02B95F: LDA.w $040E
#_02B962: ORA.b $AA
#_02B964: ORA.b $A9
#_02B966: STA.b $A8

#_02B968: RTS

;===================================================================================================
; TODO analyze
;===================================================================================================
Underworld_HandleCamera:
#_02B969: REP #$20

#_02B96B: LDA.w #$0001
#_02B96E: STA.b $00

#_02B970: LDA.b $78
#_02B972: AND.w #$00FF
#_02B975: BEQ .dont_zero

#_02B977: LDA.b $24
#_02B979: CMP.w #$FFFF
#_02B97C: BNE .dont_zero

#_02B97E: LDA.w #$0000

.dont_zero
#_02B981: STA.b $0E

#_02B983: LDA.b $20
#_02B985: SEC
#_02B986: SBC.b $0E
#_02B988: AND.w #$01FF

#_02B98B: CLC
#_02B98C: ADC.w #$000C
#_02B98F: STA.b $0E

;---------------------------------------------------------------------------------------------------

#_02B991: LDA.b $30
#_02B993: AND.w #$00FF
#_02B996: BEQ .no_vertical_movement

#_02B998: LDX.b $A7
#_02B99A: CMP.w #$0080
#_02B99D: BCC .moving_down_a

#_02B99F: EOR.w #$00FF
#_02B9A2: INC A

#_02B9A3: DEC.b $00
#_02B9A5: DEC.b $00

.moving_down_a
#_02B9A7: TAY

;---------------------------------------------------------------------------------------------------

.next_vertical
#_02B9A8: LDX.b $A7

#_02B9AA: LDA.b $30
#_02B9AC: AND.w #$00FF
#_02B9AF: CMP.w #$0080
#_02B9B2: BCC .moving_down_b

#_02B9B4: LDA.w $0618
#_02B9B7: CMP.b $0E
#_02B9B9: BCS .continue_vertically
#_02B9BB: BCC .dont_scroll_vertically

.moving_down_b
#_02B9BD: LDA.b $0E
#_02B9BF: CMP.w $061A
#_02B9C2: BCC .dont_scroll_vertically

#_02B9C4: INX
#_02B9C5: INX
#_02B9C6: INX
#_02B9C7: INX

.continue_vertically
#_02B9C8: LDA.b $E8
#_02B9CA: CMP.w $0600,X
#_02B9CD: BEQ .dont_scroll_vertically

#_02B9CF: CLC
#_02B9D0: ADC.b $00
#_02B9D2: STA.b $E8

#_02B9D4: LDA.b $A0
#_02B9D6: CMP.w #$FFFF
#_02B9D9: BEQ .dont_scroll_vertically

#_02B9DB: LDA.b $00
#_02B9DD: STZ.b $04
#_02B9DF: LSR A
#_02B9E0: ROR.b $04

#_02B9E2: CMP.w #$7000
#_02B9E5: BCC .dont_invert_vertically

#_02B9E7: ORA.w #$F000

.dont_invert_vertically
#_02B9EA: STA.b $06

#_02B9EC: LDA.w $0622
#_02B9EF: CLC
#_02B9F0: ADC.b $04
#_02B9F2: STA.w $0622

#_02B9F5: LDA.b $E6
#_02B9F7: ADC.b $06
#_02B9F9: STA.b $E6

#_02B9FB: LDA.w $0618
#_02B9FE: CLC
#_02B9FF: ADC.b $00
#_02BA01: STA.w $0618

#_02BA04: INC A
#_02BA05: INC A
#_02BA06: STA.w $061A

.dont_scroll_vertically
#_02BA09: DEY
#_02BA0A: BNE .next_vertical

;---------------------------------------------------------------------------------------------------

.no_vertical_movement
#_02BA0C: LDA.w #$0001
#_02BA0F: STA.b $00

#_02BA11: LDA.b $22
#_02BA13: AND.w #$01FF
#_02BA16: CLC
#_02BA17: ADC.w #$0008
#_02BA1A: STA.b $0E

#_02BA1C: LDA.b $31
#_02BA1E: AND.w #$00FF
#_02BA21: BEQ .no_horizontal_scroll

#_02BA23: LDX.b $A6
#_02BA25: CMP.w #$0080
#_02BA28: BCC .moving_right_a

#_02BA2A: EOR.w #$00FF
#_02BA2D: INC A
#_02BA2E: DEC.b $00
#_02BA30: DEC.b $00

.moving_right_a
#_02BA32: TAY

;---------------------------------------------------------------------------------------------------

.next_horizontal
#_02BA33: LDX.b $A6

#_02BA35: LDA.b $31
#_02BA37: AND.w #$00FF
#_02BA3A: CMP.w #$0080
#_02BA3D: BCC .moving_right_b

#_02BA3F: LDA.w $061C
#_02BA42: CMP.b $0E
#_02BA44: BCS .continue_horizontally
#_02BA46: BCC .dont_scroll_horizontally

.moving_right_b
#_02BA48: LDA.b $0E
#_02BA4A: CMP.w $061E
#_02BA4D: BCC .dont_scroll_horizontally

#_02BA4F: INX
#_02BA50: INX
#_02BA51: INX
#_02BA52: INX

.continue_horizontally
#_02BA53: LDA.b $E2
#_02BA55: CMP.w $0608,X
#_02BA58: BEQ .dont_scroll_horizontally

#_02BA5A: CLC
#_02BA5B: ADC.b $00
#_02BA5D: STA.b $E2

#_02BA5F: LDA.b $A0
#_02BA61: CMP.w #$FFFF
#_02BA64: BEQ .dont_scroll_horizontally

#_02BA66: LDA.b $00
#_02BA68: STZ.b $04

#_02BA6A: LSR A
#_02BA6B: ROR.b $04
#_02BA6D: CMP.w #$7000
#_02BA70: BCC .dont_invert_horizontally

#_02BA72: ORA.w #$F000

;---------------------------------------------------------------------------------------------------

.dont_invert_horizontally
#_02BA75: STA.b $06

#_02BA77: LDA.w $0620
#_02BA7A: CLC
#_02BA7B: ADC.b $04
#_02BA7D: STA.w $0620

#_02BA80: LDA.b $E0
#_02BA82: ADC.b $06
#_02BA84: STA.b $E0

#_02BA86: LDA.w $061C
#_02BA89: CLC
#_02BA8A: ADC.b $00
#_02BA8C: STA.w $061C

#_02BA8F: INC A
#_02BA90: INC A
#_02BA91: STA.w $061E

.dont_scroll_horizontally
#_02BA94: DEY
#_02BA95: BNE .next_horizontal

;---------------------------------------------------------------------------------------------------

.no_horizontal_scroll
#_02BA97: LDA.b $A0
#_02BA99: CMP.w #$FFFF
#_02BA9C: BEQ .exit

#_02BA9E: LDX.w $0414
#_02BAA1: BEQ UnderworldSyncBG1and2Scroll

#_02BAA3: CPX.b #$06
#_02BAA5: BCS UnderworldSyncBG1and2Scroll

#_02BAA7: CPX.b #$04
#_02BAA9: BEQ UnderworldSyncBG1and2Scroll

#_02BAAB: CPX.b #$03
#_02BAAD: BEQ UnderworldSyncBG1and2Scroll

#_02BAAF: CPX.b #$02
#_02BAB1: BNE .exit

;===================================================================================================

#UnderworldSyncBG1and2Scroll:
#_02BAB3: REP #$20

#_02BAB5: LDA.b $E2
#_02BAB7: STA.b $E0

#_02BAB9: LDA.b $E8
#_02BABB: STA.b $E6

.exit
#_02BABD: SEP #$20

#_02BABF: RTS

;===================================================================================================

OverworldTransitionDirections:
#_02BAC0: dw $0008 ; up
#_02BAC2: dw $0004 ; down
#_02BAC4: dw $0002 ; left
#_02BAC6: dw $0001 ; right

;---------------------------------------------------------------------------------------------------

Overworld_OperateCameraScroll:
#_02BAC8: PHB
#_02BAC9: PHK
#_02BACA: PLB

#_02BACB: REP #$20

#_02BACD: LDA.b $78
#_02BACF: AND.w #$00FF
#_02BAD2: BEQ .not_grounded

#_02BAD4: LDA.b $24
#_02BAD6: CMP.w #$FFFF
#_02BAD9: BNE .not_grounded

#_02BADB: LDA.w #$0000

.not_grounded
#_02BADE: STA.b $0E

#_02BAE0: LDA.b $20
#_02BAE2: SEC
#_02BAE3: SBC.b $0E
#_02BAE5: CLC
#_02BAE6: ADC.w #$000C
#_02BAE9: STA.b $0E

#_02BAEB: LDA.w #$0001
#_02BAEE: STA.b $00

#_02BAF0: LDA.b $30
#_02BAF2: AND.w #$00FF
#_02BAF5: BNE .moving_vertically

#_02BAF7: JMP.w .handle_x_camera

.moving_vertically
#_02BAFA: STZ.b $04

#_02BAFC: CMP.w #$0080
#_02BAFF: BCC .positive_vy

#_02BB01: EOR.w #$00FF
#_02BB04: INC A

#_02BB05: DEC.b $00
#_02BB07: DEC.b $00

.positive_vy
#_02BB09: STA.b $02

#_02BB0B: STZ.b $08

;---------------------------------------------------------------------------------------------------

.next_camera_shift_y
#_02BB0D: LDA.b $30
#_02BB0F: AND.w #$00FF
#_02BB12: CMP.w #$0080
#_02BB15: BCC .positive_vy_2

#_02BB17: LDA.w $0618
#_02BB1A: CMP.b $0E
#_02BB1C: BCC .skip_camera_check_y

#_02BB1E: LDY.b #$00
#_02BB20: BRA .check_camera_y

.positive_vy_2
#_02BB22: LDA.b $0E
#_02BB24: CMP.w $061A
#_02BB27: BCC .skip_camera_check_y

#_02BB29: LDY.b #$02

.check_camera_y
#_02BB2B: LDX.b #$06
#_02BB2D: JSR OverworldCameraBoundaryCheck

.skip_camera_check_y
#_02BB30: DEC.b $02
#_02BB32: BNE .next_camera_shift_y

;---------------------------------------------------------------------------------------------------

#_02BB34: LDA.b $04
#_02BB36: STA.w $069E

#_02BB39: LDX.b $8C
#_02BB3B: CPX.b #$97
#_02BB3D: BEQ .handle_x_camera

#_02BB3F: CPX.b #$9D
#_02BB41: BEQ .handle_x_camera

#_02BB43: LDA.b $04
#_02BB45: BEQ .handle_x_camera

#_02BB47: STZ.b $00
#_02BB49: LSR A
#_02BB4A: ROR.b $00

; Unused overlays that produce garbage
#_02BB4C: LDX.b $8C
#_02BB4E: CPX.b #$B5
#_02BB50: BEQ .garbage_overlay

#_02BB52: CPX.b #$BE
#_02BB54: BNE .not_garbage_overlay

.garbage_overlay
#_02BB56: LSR A
#_02BB57: ROR.b $00
#_02BB59: CMP.w #$3000
#_02BB5C: BCC .set_scroll_add_y

#_02BB5E: ORA.w #$F000
#_02BB61: BRA .set_scroll_add_y

.not_garbage_overlay
#_02BB63: CMP.w #$7000
#_02BB66: BCC .set_scroll_add_y

#_02BB68: ORA.w #$F000

.set_scroll_add_y
#_02BB6B: STA.b $06

#_02BB6D: LDA.w $0622
#_02BB70: CLC
#_02BB71: ADC.b $00
#_02BB73: STA.w $0622

#_02BB76: LDA.b $E6
#_02BB78: ADC.b $06
#_02BB7A: STA.b $E6

#_02BB7C: LDA.b $8A
#_02BB7E: AND.w #$003F
#_02BB81: CMP.w #$001B
#_02BB84: BNE .handle_x_camera

#_02BB86: LDA.w #$0600
#_02BB89: CMP.b $E6
#_02BB8B: BCC .camera_too_low_y

#_02BB8D: STA.b $E6

.camera_too_low_y
#_02BB8F: LDA.w #$06C0
#_02BB92: CMP.b $E6
#_02BB94: BCS .handle_x_camera

#_02BB96: STA.b $E6

;---------------------------------------------------------------------------------------------------

.handle_x_camera
#_02BB98: LDA.b $22
#_02BB9A: CLC
#_02BB9B: ADC.w #$0008
#_02BB9E: STA.b $0E

#_02BBA0: LDA.w #$0001
#_02BBA3: STA.b $00

#_02BBA5: LDA.b $31
#_02BBA7: AND.w #$00FF
#_02BBAA: BNE .moving_horizontally

#_02BBAC: JMP.w OverworldHandleBGOverlayScroll

.moving_horizontally
#_02BBAF: STZ.b $04

#_02BBB1: CMP.w #$0080
#_02BBB4: BCC .positive_vx

#_02BBB6: EOR.w #$00FF
#_02BBB9: INC A

#_02BBBA: DEC.b $00
#_02BBBC: DEC.b $00

.positive_vx
#_02BBBE: STA.b $02

#_02BBC0: LDX.b #$04
#_02BBC2: STX.b $08

;---------------------------------------------------------------------------------------------------

.next_camera_shift_x
#_02BBC4: LDA.b $31
#_02BBC6: AND.w #$00FF
#_02BBC9: CMP.w #$0080
#_02BBCC: BCC .positive_vx_2

#_02BBCE: LDA.w $061C
#_02BBD1: CMP.b $0E
#_02BBD3: BCC .skip_camera_check_x

#_02BBD5: LDY.b #$04
#_02BBD7: BRA .check_camera_x

.positive_vx_2
#_02BBD9: LDA.b $0E
#_02BBDB: CMP.w $061E
#_02BBDE: BCC .skip_camera_check_x

#_02BBE0: LDY.b #$06

.check_camera_x
#_02BBE2: LDX.b #$00
#_02BBE4: JSR OverworldCameraBoundaryCheck

.skip_camera_check_x
#_02BBE7: DEC.b $02
#_02BBE9: BNE .next_camera_shift_x

;---------------------------------------------------------------------------------------------------

#_02BBEB: LDA.b $04
#_02BBED: STA.w $069F

; check for fog overlays
#_02BBF0: LDX.b $8C
#_02BBF2: CPX.b #$97
#_02BBF4: BEQ OverworldHandleBGOverlayScroll

#_02BBF6: CPX.b #$9D
#_02BBF8: BEQ OverworldHandleBGOverlayScroll

#_02BBFA: LDA.b $04
#_02BBFC: BEQ OverworldHandleBGOverlayScroll

#_02BBFE: STZ.b $00
#_02BC00: LSR A
#_02BC01: ROR.b $00

#_02BC03: LDX.b $8C
#_02BC05: CPX.b #$95
#_02BC07: BEQ .dm_overlay

#_02BC09: CPX.b #$9E
#_02BC0B: BNE .not_clear_lw_overlay

.dm_overlay
#_02BC0D: LSR A
#_02BC0E: ROR.b $00
#_02BC10: CMP.w #$3000
#_02BC13: BCC .set_scroll_add_x

#_02BC15: ORA.w #$F000
#_02BC18: BRA .set_scroll_add_x

.not_clear_lw_overlay
#_02BC1A: CMP.w #$7000
#_02BC1D: BCC .set_scroll_add_x

#_02BC1F: ORA.w #$F000

.set_scroll_add_x
#_02BC22: STA.b $06

#_02BC24: LDA.w $0620
#_02BC27: CLC
#_02BC28: ADC.b $00
#_02BC2A: STA.w $0620

#_02BC2D: LDA.b $E0
#_02BC2F: ADC.b $06
#_02BC31: STA.b $E0

;===================================================================================================

OverworldHandleBGOverlayScroll:
#_02BC33: LDX.b $8A
#_02BC35: CPX.b #$47
#_02BC37: BEQ .no_overlay_scroll

#_02BC39: LDX.b $8C
#_02BC3B: CPX.b #$9C
#_02BC3D: BEQ .dark_dm_overlay_scroll

#_02BC3F: CPX.b #$97
#_02BC41: BEQ .grove_fog_scroll

#_02BC43: CPX.b #$9D
#_02BC45: BNE .no_overlay_scroll

.grove_fog_scroll
#_02BC47: LDA.w $0622
#_02BC4A: CLC
#_02BC4B: ADC.w #$2000
#_02BC4E: STA.w $0622

#_02BC51: LDA.b $E6
#_02BC53: ADC.w #$0000
#_02BC56: STA.b $E6

#_02BC58: LDA.w $0620
#_02BC5B: CLC
#_02BC5C: ADC.w #$2000
#_02BC5F: STA.w $0620

#_02BC62: LDA.b $E0
#_02BC64: ADC.w #$0000
#_02BC67: STA.b $E0

#_02BC69: BRA .no_overlay_scroll

.dark_dm_overlay_scroll
#_02BC6B: LDA.w $0622
#_02BC6E: SEC
#_02BC6F: SBC.w #$2000
#_02BC72: STA.w $0622

#_02BC75: LDA.b $E6
#_02BC77: SBC.w #$0000
#_02BC7A: CLC
#_02BC7B: ADC.w $069E
#_02BC7E: STA.b $E6

#_02BC80: LDA.b $E2
#_02BC82: STA.b $E0

.no_overlay_scroll
#_02BC84: LDA.b $A0
#_02BC86: CMP.w #$0181
#_02BC89: BNE .exit

#_02BC8B: LDA.b $E8
#_02BC8D: ORA.w #$0100
#_02BC90: STA.b $E6

#_02BC92: LDA.b $E2
#_02BC94: STA.b $E0

.exit
#_02BC96: SEP #$20

#_02BC98: PLB

#_02BC99: RTS

;===================================================================================================

OverworldCameraBoundaryCheck:
#_02BC9A: LDA.b $E2,X
#_02BC9C: CMP.w $0600,Y
#_02BC9F: BNE .not_at_boundary

#_02BCA1: TYA
#_02BCA2: EOR.w #$0002
#_02BCA5: TAX

#_02BCA6: LDA.w #$0000
#_02BCA9: STA.w $0624,Y
#_02BCAC: STA.w $0624,X

#_02BCAF: RTS

;---------------------------------------------------------------------------------------------------

.not_at_boundary
#_02BCB0: CLC
#_02BCB1: ADC.b $00
#_02BCB3: STA.b $E2,X

#_02BCB5: LDA.b $04
#_02BCB7: CLC
#_02BCB8: ADC.b $00
#_02BCBA: STA.b $04

#_02BCBC: LDX.b $08

#_02BCBE: LDA.w $061A,X
#_02BCC1: CLC
#_02BCC2: ADC.b $00
#_02BCC4: STA.w $061A,X

#_02BCC7: INC A
#_02BCC8: INC A
#_02BCC9: STA.w $0618,X

#_02BCCC: TYA
#_02BCCD: EOR.w #$0002
#_02BCD0: TAX

#_02BCD1: LDA.w $0624,Y
#_02BCD4: INC A
#_02BCD5: STA.w $0624,Y

#_02BCD8: CMP.w #$0010
#_02BCDB: BMI .dont_extend_movement

#_02BCDD: SEC
#_02BCDE: SBC.w #$0010
#_02BCE1: STA.w $0624,Y

#_02BCE4: LDA.w OverworldTransitionDirections,Y
#_02BCE7: ORA.w $0416
#_02BCEA: STA.w $0416

.dont_extend_movement
#_02BCED: LDA.w #$0000
#_02BCF0: SEC
#_02BCF1: SBC.w $0624,Y
#_02BCF4: STA.w $0624,X

#_02BCF7: RTS

;===================================================================================================

pool UnderworldTransition_AdjustCamera_Horizontal

.boundary
#_02BCF8: dw $0000
#_02BCFA: dw $0100
#_02BCFC: dw $0100
#_02BCFE: dw $0000

pool off

;---------------------------------------------------------------------------------------------------

UnderworldTransition_AdjustCamera_Horizontal:
#_02BD00: ASL A
#_02BD01: ASL A
#_02BD02: TAY

#_02BD03: LDX.b #$00

.next
#_02BD05: LDA.w .boundary,Y
#_02BD08: STA.w $0614,X

#_02BD0B: INY

#_02BD0C: INX
#_02BD0D: CPX.b #$04
#_02BD0F: BNE .next

#_02BD11: RTS

;===================================================================================================

pool UnderworldTransition_AdjustCamera_Vertical

.boundary
#_02BD12: dw $0000
#_02BD14: dw $0110
#_02BD16: dw $0100
#_02BD18: dw $0010

pool off

;---------------------------------------------------------------------------------------------------

UnderworldTransition_AdjustCamera_Vertical:
#_02BD1A: ASL A
#_02BD1B: TAY

#_02BD1C: LDX.b #$00

.next
#_02BD1E: LDA.w .boundary,Y
#_02BD21: STA.w $0610,X

#_02BD24: INY

#_02BD25: INX
#_02BD26: CPX.b #$04
#_02BD28: BNE .next

#_02BD2A: RTS

;===================================================================================================

pool UnderworldTransition_ScrollRoom

.camera_scroll
#_02BD2B: dw   4
#_02BD2D: dw  -4
#_02BD2F: dw   4
#_02BD31: dw  -4

.boundaries
#_02BD33: dw $0034
#_02BD35: dw $0034
#_02BD37: dw $003B
#_02BD39: dw $003A

pool off

;---------------------------------------------------------------------------------------------------

UnderworldTransition_ScrollRoom:
#_02BD3B: PHB
#_02BD3C: PHK
#_02BD3D: PLB

#_02BD3E: INC.w $0126

#_02BD41: LDA.w $0418
#_02BD44: ASL A
#_02BD45: TAY

#_02BD46: REP #$20

#_02BD48: STZ.w $011A
#_02BD4B: STZ.w $011C

#_02BD4E: LDX.b #$00
#_02BD50: CPY.b #$04
#_02BD52: BCS .scrolling_horizontally

#_02BD54: LDX.b #$06

.scrolling_horizontally
#_02BD56: LDA.b $E2,X
#_02BD58: CLC
#_02BD59: ADC.w .camera_scroll,Y
#_02BD5C: AND.w #$FFFE
#_02BD5F: STA.b $E2,X
#_02BD61: STA.b $E0,X
#_02BD63: STA.b $00

;---------------------------------------------------------------------------------------------------

#_02BD65: LDX.b #$00
#_02BD67: CPY.b #$04
#_02BD69: BCC .scrolling_vertically

#_02BD6B: LDX.b #$02

.scrolling_vertically
#_02BD6D: LDA.w $0126
#_02BD70: AND.w #$00FF
#_02BD73: CMP.w .boundaries,Y
#_02BD76: BCC .keep_walking

#_02BD78: LDA.b $20,X
#_02BD7A: CLC
#_02BD7B: ADC.w .camera_scroll,Y
#_02BD7E: STA.b $20,X

.keep_walking
#_02BD80: LDA.b $00
#_02BD82: AND.w #$01FC
#_02BD85: CMP.w $0610,Y
#_02BD88: BNE .dirty_exit

#_02BD8A: SEP #$20

#_02BD8C: JSL SetAndSaveVisitedQuadrantFlags

#_02BD90: PLB

#_02BD91: INC.b $B0

#_02BD93: STZ.w $0126

#_02BD96: LDA.b $11
#_02BD98: CMP.b #$02
#_02BD9A: BNE .clean_exit

#_02BD9C: JSL WaterFlood_BuildOneQuadrantForVRAM

#_02BDA0: RTS

;---------------------------------------------------------------------------------------------------

.dirty_exit
#_02BDA1: PLB

#_02BDA2: SEP #$20

.clean_exit
#_02BDA4: RTS

;===================================================================================================

pool Module07_11_0A_ScrollCamera

.offset
#_02BDA5: dw  32
#_02BDA7: dw -64
#_02BDA9: dw  32
#_02BDAB: dw -32

pool off

;---------------------------------------------------------------------------------------------------

Module07_11_0A_ScrollCamera:
#_02BDAD: PHB
#_02BDAE: PHK
#_02BDAF: PLB

#_02BDB0: LDA.b #$0C
#_02BDB2: STA.b $4B
#_02BDB4: STA.w $02F9

#_02BDB7: LDA.w $0418
#_02BDBA: ASL A
#_02BDBB: TAX

#_02BDBC: REP #$20

#_02BDBE: LDA.b $E8
#_02BDC0: CLC
#_02BDC1: ADC.w UnderworldTransition_ScrollRoom_camera_scroll,X
#_02BDC4: AND.w #$FFFC
#_02BDC7: STA.b $E8
#_02BDC9: STA.b $E6

#_02BDCB: AND.w #$01FC
#_02BDCE: CMP.w $0610,X
#_02BDD1: BNE .exit

;---------------------------------------------------------------------------------------------------

#_02BDD3: LDY.b $11

#_02BDD5: CPY.b #$12
#_02BDD7: BCC .set_a

#_02BDD9: INX
#_02BDDA: INX
#_02BDDB: INX
#_02BDDC: INX

.set_a
#_02BDDD: LDA.b $20
#_02BDDF: CLC
#_02BDE0: ADC.w .offset,X
#_02BDE3: STA.b $20

#_02BDE5: SEP #$20

;---------------------------------------------------------------------------------------------------

#_02BDE7: STZ.b $4B
#_02BDE9: STZ.w $02F9

#_02BDEC: INC.b $B0

.exit
#_02BDEE: SEP #$20

#_02BDF0: PLB

#_02BDF1: RTS

;===================================================================================================

pool OverworldScrollTransition Overworld_SetCameraBoundaries

.coordinate_camera_adjust
#_02BDF2: dw $FFF8, $0008, $FFF8, $0008
#_02BDFA: dw $FFE8, $0018, $FFD8, $0018

; TODO split up with labels $02BFAE
.boundary_delta
#_02BE02: dw $FF90, $0070, $FF90, $0070
#_02BE0A: dw $FE00, $0200, $FE00, $0200
#_02BE12: dw $0018, $00E8, $0008, $00E8

.transition_target_north
#_02BE1A: dw $FF20, $FF20, $FF20, $FF20
#_02BE22: dw $FF20, $FF20, $FF20, $FF20
#_02BE2A: dw $FF20, $FF20, $0120, $FF20
#_02BE32: dw $FF20, $FF20, $FF20, $0120
#_02BE3A: dw $0320, $0320, $0320, $0320
#_02BE42: dw $0320, $0320, $0320, $0320
#_02BE4A: dw $0520, $0520, $0520, $0520
#_02BE52: dw $0520, $0520, $0520, $0520
#_02BE5A: dw $0520, $0520, $0720, $0520
#_02BE62: dw $0520, $0720, $0520, $0520
#_02BE6A: dw $0920, $0920, $0920, $0920
#_02BE72: dw $0920, $0920, $0920, $0920
#_02BE7A: dw $0B20, $0B20, $0B20, $0B20
#_02BE82: dw $0B20, $0B20, $0B20, $0B20
#_02BE8A: dw $0B20, $0B20, $0D20, $0D20
#_02BE92: dw $0D20, $0B20, $0B20, $0D20

.transition_target_west
#_02BE9A: dw $FF00, $FF00, $0300, $0500
#_02BEA2: dw $0500, $0900, $0900, $0D00
#_02BEAA: dw $FF00, $FF00, $0300, $0500
#_02BEB2: dw $0500, $0900, $0900, $0D00
#_02BEBA: dw $FF00, $0100, $0300, $0500
#_02BEC2: dw $0700, $0900, $0B00, $0D00
#_02BECA: dw $FF00, $FF00, $0300, $0500
#_02BED2: dw $0500, $0900, $0B00, $0B00
#_02BEDA: dw $FF00, $FF00, $0300, $0500
#_02BEE2: dw $0500, $0900, $0B00, $0B00
#_02BEEA: dw $FF00, $0100, $0300, $0500
#_02BEF2: dw $0700, $0900, $0B00, $0D00
#_02BEFA: dw $FF00, $FF00, $0300, $0500
#_02BF02: dw $0700, $0900, $0900, $0D00
#_02BF0A: dw $FF00, $FF00, $0300, $0500
#_02BF12: dw $0700, $0900, $0900, $0D00

;---------------------------------------------------------------------------------------------------

.boundary_y_size
#_02BF1A: dw $011E, $031E

.boundary_x_size
#_02BF1E: dw $0100, $0300

.transition_target_south_offset
#_02BF22: dw $02E0, $04E0

.transition_target_east_offset
#_02BF26: dw $0300, $0500

;---------------------------------------------------------------------------------------------------

.camera_matters_when
#_02BF2A: dw $001B, $001B, $001E, $001E

pool off

;---------------------------------------------------------------------------------------------------

OverworldScrollTransition_dirty_exit:
#_02BF32: SEP #$20

#_02BF34: PLB

#_02BF35: LDX.w $0410

#_02BF38: RTS

;---------------------------------------------------------------------------------------------------

OverworldScrollTransition:
#_02BF39: PHB
#_02BF3A: PHK
#_02BF3B: PLB

#_02BF3C: INC.w $0126

#_02BF3F: LDA.w $0418
#_02BF42: ASL A
#_02BF43: TAY

#_02BF44: LDX.b #$01

#_02BF46: CPY.b #$04
#_02BF48: BCS .going_horizontal

#_02BF4A: LDX.b #$00

.going_horizontal
#_02BF4C: LDA.w .coordinate_camera_adjust,Y
#_02BF4F: STA.w $069E,X

;---------------------------------------------------------------------------------------------------

#_02BF52: REP #$20

#_02BF54: PHY

#_02BF55: LDX.b #$00

#_02BF57: CPY.b #$04
#_02BF59: BCS .adjust_horizontal_camera

#_02BF5B: LDX.b #$06

.adjust_horizontal_camera
#_02BF5D: LDA.b $E2,X
#_02BF5F: CLC
#_02BF60: ADC.w .coordinate_camera_adjust,Y
#_02BF63: STA.b $E2,X

#_02BF65: LDY.b $8A
#_02BF67: CPY.b #$1B
#_02BF69: BEQ .castle_or_pyramid

#_02BF6B: CPY.b #$5B
#_02BF6D: BEQ .castle_or_pyramid

#_02BF6F: STA.b $E0,X

.castle_or_pyramid
#_02BF71: STA.b $00

;---------------------------------------------------------------------------------------------------

#_02BF73: PLY

#_02BF74: LDX.b #$00

#_02BF76: CPY.b #$04
#_02BF78: BCC .adjust_y_position

#_02BF7A: LDX.b #$02

.adjust_y_position
#_02BF7C: LDA.w $0126
#_02BF7F: AND.w #$00FF
#_02BF82: CMP.w .camera_matters_when,Y
#_02BF85: BCC .dont_add_in_camera

#_02BF87: LDA.b $20,X
#_02BF89: CLC
#_02BF8A: ADC.w .coordinate_camera_adjust,Y
#_02BF8D: STA.b $20,X

.dont_add_in_camera
#_02BF8F: LDA.b $00
#_02BF91: CMP.w $0610,Y
#_02BF94: BNE OverworldScrollTransition_dirty_exit

;---------------------------------------------------------------------------------------------------

#_02BF96: LDA.w $0418
#_02BF99: AND.w #$00FF
#_02BF9C: BNE .dont_shift_v_scroll

#_02BF9E: LDA.b $E8
#_02BFA0: SEC
#_02BFA1: SBC.w #$0002
#_02BFA4: STA.b $E8

.dont_shift_v_scroll
#_02BFA6: LDA.b $20,X
#_02BFA8: AND.w #$FFF8
#_02BFAB: STA.b $20,X

#_02BFAD: CLC
#_02BFAE: ADC.w .boundary_delta,Y
#_02BFB1: PHA

#_02BFB2: TXA
#_02BFB3: ASL A
#_02BFB4: TAX

#_02BFB5: PLA
#_02BFB6: CLC
#_02BFB7: ADC.w #$000B
#_02BFBA: STA.w $061A,X

#_02BFBD: INC A
#_02BFBE: INC A
#_02BFBF: STA.w $0618,X

#_02BFC2: PHX

;---------------------------------------------------------------------------------------------------

#_02BFC3: LDX.b #$00

#_02BFC5: LDA.w $0712
#_02BFC8: BEQ .smaller_screen

#_02BFCA: INX
#_02BFCB: INX

.smaller_screen
#_02BFCC: LDA.w $0700
#_02BFCF: CLC
#_02BFD0: ADC.w OverworldMixedCoordsChange,Y
#_02BFD3: TAY

#_02BFD4: JSR Overworld_SetCameraBoundaries

#_02BFD7: PLX

#_02BFD8: STZ.w $0624,X
#_02BFDB: STZ.w $0626,X

#_02BFDE: SEP #$20

#_02BFE0: LDA.b #$01
#_02BFE2: STA.w $0ABF

#_02BFE5: LDX.w $0410

#_02BFE8: INC.b $11

#_02BFEA: STZ.b $B0
#_02BFEC: STZ.w $0126

;---------------------------------------------------------------------------------------------------

#_02BFEF: PLB

#_02BFF0: LDA.b $00

#_02BFF2: PHA
#_02BFF3: PHX

#_02BFF4: JSL Sprite_InitializeSlots

#_02BFF8: PLX
#_02BFF9: PLA

#_02BFFA: RTS

;===================================================================================================

Overworld_SetCameraBoundaries:
#_02BFFB: LDA.w OverworldTransitionPositionY,Y
#_02BFFE: STA.w $0600

#_02C001: CLC
#_02C002: ADC.w .boundary_y_size,X
#_02C005: STA.w $0602

#_02C008: LDA.w OverworldTransitionPositionX,Y
#_02C00B: STA.w $0604

#_02C00E: CLC
#_02C00F: ADC.w .boundary_x_size,X
#_02C012: STA.w $0606

#_02C015: LDA.w .transition_target_north,Y
#_02C018: STA.w $0610

#_02C01B: CLC
#_02C01C: ADC.w .transition_target_south_offset,X
#_02C01F: STA.w $0612

#_02C022: LDA.w .transition_target_west,Y
#_02C025: STA.w $0614

#_02C028: CLC
#_02C029: ADC.w .transition_target_east_offset,X
#_02C02C: STA.w $0616

#_02C02F: RTS

;===================================================================================================

LinkLandingIndexOffset:
#_02C030: db $00
#_02C031: db $05
#_02C032: db $0A
#_02C033: db $0F

;===================================================================================================

UnderworldTransitionLandingCoordinate:
#_02C034: db $0C, $20, $30, $38, $48
#_02C039: db $D4, $D8, $C0, $C0, $A8
#_02C03E: db $0C, $18, $28, $30, $40
#_02C043: db $E4, $D8, $C8, $C0, $B0

;===================================================================================================

UnderworldTransition_FindTransitionLanding:
#_02C048: JSR DeleteCertainAncillaeStopDashing
#_02C04B: JSR IntraroomTransitionCalculateLanding

#_02C04E: INC.b $B0

#_02C050: REP #$30

#_02C052: LDA.b $A0
#_02C054: ASL A
#_02C055: TAX

#_02C056: LDA.l $7EF000,X
#_02C05A: ORA.w $0408
#_02C05D: STA.l $7EF000,X

#_02C061: SEP #$30

#_02C063: RTS

;===================================================================================================

IntraroomTransitionCalculateLanding:
#_02C064: LDA.w $0418
#_02C067: AND.b #$02
#_02C069: PHA

#_02C06A: JSR CalculateTransitionLanding

#_02C06D: LDX.w $0418

#_02C070: CMP.b #$02
#_02C072: BNE .not_layers

#_02C074: LDA.b #$01

.not_layers
#_02C076: CMP.b #$04
#_02C078: BNE .not_lower_layer_shutter

#_02C07A: LDA.b #$02

.not_lower_layer_shutter
#_02C07C: CLC
#_02C07D: ADC.l LinkLandingIndexOffset,X
#_02C081: TAX

#_02C082: LDY.b #$08
#_02C084: LDA.l UnderworldTransitionLandingCoordinate,X
#_02C088: BPL .positive

#_02C08A: LDY.b #$F8

.positive
#_02C08C: STY.b $00

#_02C08E: SEC
#_02C08F: SBC.b $00

#_02C091: PLY

#_02C092: STA.w $0020,Y

#_02C095: LDX.b #$00
#_02C097: STX.b $4B

#_02C099: RTS

;===================================================================================================

Module07_02_0D:
#_02C09A: LDA.l $7EC005
#_02C09E: ORA.l $7EC006
#_02C0A2: BEQ UnderworldTransition_HandleFinalMovements

#_02C0A4: JSL ApplyPaletteFilter

;===================================================================================================

UnderworldTransition_HandleFinalMovements:
#_02C0A8: JSL Link_HandleMovingAnimation_FullLongEntry

#_02C0AC: JSR UnderworldTransition_MoveLinkOutDoor
#_02C0AF: BCC .exit

#_02C0B1: LDX.b $4E
#_02C0B3: CPX.b #$02
#_02C0B5: BEQ .clear_door_flag

#_02C0B7: CPX.b #$04
#_02C0B9: BNE .ignore_door_flag

.clear_door_flag
#_02C0BB: STZ.b $6C

.ignore_door_flag
#_02C0BD: STZ.b $6F
#_02C0BF: STZ.b $49
#_02C0C1: STZ.b $4E

#_02C0C3: STZ.w $0418

#_02C0C6: INC.b $B0

.exit
#_02C0C8: RTS

;===================================================================================================

UnderworldTransition_MoveLinkOutDoor:
#_02C0C9: LDX.w $0418

#_02C0CC: LDA.b $4E
#_02C0CE: CLC
#_02C0CF: ADC.l LinkLandingIndexOffset,X
#_02C0D3: TAX

#_02C0D4: LDY.b #$02

#_02C0D6: LDA.w $0418
#_02C0D9: LSR A
#_02C0DA: BCC .positive_speed

#_02C0DC: LDY.b #$FE

.positive_speed
#_02C0DE: STY.b $00

#_02C0E0: LSR A
#_02C0E1: BCS .handle_x

#_02C0E3: LDY.b #$FF

#_02C0E5: LDA.b $00
#_02C0E7: BMI .negative_y

#_02C0E9: INY

.negative_y
#_02C0EA: CLC
#_02C0EB: ADC.b $20
#_02C0ED: STA.b $20

#_02C0EF: TYA
#_02C0F0: ADC.b $21
#_02C0F2: STA.b $21

#_02C0F4: LDA.b $20
#_02C0F6: AND.b #$FE
#_02C0F8: CMP.l UnderworldTransitionLandingCoordinate,X
#_02C0FC: BEQ .success

.fail
#_02C0FE: CLC

#_02C0FF: RTS

;---------------------------------------------------------------------------------------------------

.handle_x
#_02C100: LDY.b #$FF

#_02C102: LDA.b $00
#_02C104: BMI .negative_x

#_02C106: INY

.negative_x
#_02C107: CLC
#_02C108: ADC.b $22
#_02C10A: STA.b $22

#_02C10C: TYA
#_02C10D: ADC.b $23
#_02C10F: STA.b $23

#_02C111: LDA.b $22
#_02C113: AND.b #$FE
#_02C115: CMP.l UnderworldTransitionLandingCoordinate,X
#_02C119: BNE .fail

.success
#_02C11B: SEC

#_02C11C: RTS

;===================================================================================================

CalculateTransitionLanding:
#_02C11D: REP #$20

#_02C11F: LDA.b $20
#_02C121: CLC
#_02C122: ADC.w #$000C
#_02C125: AND.w #$01F8
#_02C128: ASL A
#_02C129: ASL A
#_02C12A: ASL A
#_02C12B: STA.b $00

#_02C12D: LDA.b $22
#_02C12F: CLC
#_02C130: ADC.w #$0008
#_02C133: AND.w #$01F8
#_02C136: LSR A
#_02C137: LSR A
#_02C138: LSR A
#_02C139: ORA.b $00

;---------------------------------------------------------------------------------------------------

#_02C13B: LDX.b $EE
#_02C13D: BEQ .upper_layer

#_02C13F: CLC
#_02C140: ADC.w #$1000

.upper_layer
#_02C143: REP #$10

#_02C145: TAX
#_02C146: LDA.l $7F2000,X

#_02C14A: SEP #$30

#_02C14C: LDY.b #$00

#_02C14E: CMP.b #$00 ; TILETYPE 00
#_02C150: BEQ .save

#_02C152: CMP.b #$09 ; TILETYPE 09
#_02C154: BEQ .save

#_02C156: INY

; Y=01
#_02C157: AND.b #$8E
#_02C159: CMP.b #$80 ; TILETYPE 80
#_02C15B: BEQ .save

#_02C15D: INY

; Y=02
#_02C15E: CMP.b #$82 ; TILETYPE 82
#_02C160: BEQ .save

; Y=03
#_02C162: INY
#_02C163: CMP.b #$84 ; TILETYPE 84
#_02C165: BEQ .save

#_02C167: CMP.b #$88 ; TILETYPE 88
#_02C169: BEQ .save

; Y=04
#_02C16B: INY
#_02C16C: CMP.b #$86 ; TILETYPE 86
#_02C16E: BEQ .save

#_02C170: DEY
#_02C171: DEY

.save
#_02C172: STY.b $4E

#_02C174: TYA

#_02C175: RTS

;===================================================================================================

pool Overworld_FinalizeEntryOntoScreen

.song_change_directions
#_02C176: db $E0
#_02C177: db $08
#_02C178: db $E0
#_02C179: db $10

pool off

;---------------------------------------------------------------------------------------------------

Overworld_FinalizeEntryOntoScreen:
#_02C17A: JSL Link_HandleMovingAnimation_FullLongEntry

#_02C17E: LDY.b #$02

#_02C180: LDA.w $069C
#_02C183: LSR A
#_02C184: BCS .positive

#_02C186: LDY.b #$FE

.positive
#_02C188: STY.b $00

#_02C18A: LDX.b #$02

#_02C18C: LSR A
#_02C18D: BCS .handle_x_coords

#_02C18F: LDX.b #$00

.handle_x_coords
#_02C191: LDY.b #$FF

#_02C193: LDA.b $00
#_02C195: BMI .negative

#_02C197: INY

.negative
#_02C198: CLC
#_02C199: ADC.b $20,X
#_02C19B: STA.b $20,X

#_02C19D: TYA
#_02C19E: ADC.b $21,X
#_02C1A0: STA.b $21,X

#_02C1A2: LDA.b $20,X

#_02C1A4: LDX.w $069C

#_02C1A7: AND.b #$FE
#_02C1A9: CMP.l .song_change_directions,X
#_02C1AD: BNE .no_song

;---------------------------------------------------------------------------------------------------

#_02C1AF: STZ.b $11
#_02C1B1: STZ.b $B0

#_02C1B3: LDA.w $0130

#_02C1B6: CMP.b #$F1 ; SONG F1
#_02C1B8: BNE .no_song

#_02C1BA: LDX.b #$02 ; SONG 02

; Are we in kak?
#_02C1BC: LDA.b $8A
#_02C1BE: CMP.b #$18
#_02C1C0: BNE .set_song

#_02C1C2: LDA.l $7EF3C5
#_02C1C6: CMP.b #$03
#_02C1C8: BCS .set_song

#_02C1CA: LDX.b #$07 ; SONG 07

.set_song
#_02C1CC: STX.w $012C

;---------------------------------------------------------------------------------------------------

.no_song
#_02C1CF: JSR Overworld_OperateCameraScroll

#_02C1D2: LDA.w $0416
#_02C1D5: BEQ .exit

#_02C1D7: JSR OverworldHandleMapScroll

.exit
#_02C1DA: RTS

;===================================================================================================

Module09_1F:
#_02C1DB: JSL Link_HandleMovingAnimation_FullLongEntry

#_02C1DF: LDY.b #$01

#_02C1E1: LDA.w $069C
#_02C1E4: LSR A
#_02C1E5: BCS .positive_velocity

#_02C1E7: LDY.b #$FF

.positive_velocity
#_02C1E9: STY.b $00

#_02C1EB: LDX.b #$02

#_02C1ED: LSR A
#_02C1EE: BCS .handle_x_coords

#_02C1F0: LDX.b #$00

.handle_x_coords
#_02C1F2: LDY.b #$FF

#_02C1F4: LDA.b $00
#_02C1F6: BMI .negative

#_02C1F8: INY

.negative
#_02C1F9: CLC
#_02C1FA: ADC.b $20,X
#_02C1FC: STA.b $20,X

#_02C1FE: TYA
#_02C1FF: ADC.b $21,X
#_02C201: STA.b $21,X

#_02C203: TXA
#_02C204: LSR A
#_02C205: TAX

#_02C206: LDA.b $00
#_02C208: STA.b $30,X

#_02C20A: DEC.w $069A
#_02C20D: BNE .delay_mode

#_02C20F: LDA.b #$09
#_02C211: STA.b $10
#_02C213: STZ.b $11
#_02C215: STZ.b $B0

.delay_mode
#_02C217: JSR Overworld_OperateCameraScroll

#_02C21A: RTS

;===================================================================================================

ConditionalMosaicControl:
#_02C21B: LDA.l $7EC007
#_02C21F: LSR A
#_02C220: BCC CopyMosaicControl

;===================================================================================================

MosaicControlIncrease:
#_02C222: LDA.l $7EC011
#_02C226: CLC
#_02C227: ADC.b #$10
#_02C229: STA.l $7EC011

;===================================================================================================

CopyMosaicControl:
#_02C22D: LDA.b #$09
#_02C22F: STA.b $94

#_02C231: LDA.l $7EC011
#_02C235: ORA.b #$07
#_02C237: STA.b $95

#_02C239: RTS

;===================================================================================================
; FREE ROM: 0x36
;===================================================================================================
NULL_02C23A:
#_02C23A: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_02C242: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_02C24A: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_02C252: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_02C25A: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_02C262: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_02C26A: db $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

Intro_InitializeBackgroundSettings:
#_02C270: STZ.w SETINI

#_02C273: LDA.b #$09
#_02C275: STA.b $94
#_02C277: STZ.b $95

#_02C279: LDA.b #$13
#_02C27B: STA.w BG1SC

#_02C27E: LDA.b #$03
#_02C280: STA.w BG2SC

#_02C283: LDA.b #$63
#_02C285: STA.w BG3SC

#_02C288: LDA.b #$22
#_02C28A: STA.w BG12NBA

#_02C28D: LDA.b #$07
#_02C28F: STA.w BG34NBA

#_02C292: LDA.b #$20
#_02C294: STA.b $9A

#_02C296: LDA.b #$20 ; Fixed color RGB: #000000
#_02C298: STA.b $9C

#_02C29A: LDA.b #$40
#_02C29C: STA.b $9D

#_02C29E: LDA.b #$80
#_02C2A0: STA.b $9E

#_02C2A2: RTS

;===================================================================================================

Underworld_LoadAndDrawEntranceRoom:
#_02C2A3: STA.w $010E

#_02C2A6: JSR Underworld_LoadEntrance

#_02C2A9: STZ.w $045A
#_02C2AC: STZ.w $0458

#_02C2AF: JSR Underworld_LoadAndDrawRoom
#_02C2B2: JSR Underworld_ResetTorchBackgroundAndPlayer

#_02C2B5: RTL

;===================================================================================================

Underworld_SaveAndLoadLoadAllPalettes:
#_02C2B6: STX.w $0AA3

#_02C2B9: STA.w $0AA1
#_02C2BC: STA.w $0AA2

#_02C2BF: JSL InitializeTilesets

#_02C2C3: LDA.b #$02
#_02C2C5: STA.w $0AA9

#_02C2C8: INC.b $15

#_02C2CA: JSL SetBGandFixedColorBlack

;---------------------------------------------------------------------------------------------------

Underworld_LoadAllPalettes:
#_02C2CE: JSL Palettes_Load_SpritePal0Left
#_02C2D2: JSL Palettes_Load_SpriteMain
#_02C2D6: JSL Palettes_Load_SpriteAux1
#_02C2DA: JSL Palettes_Load_SpriteAux2
#_02C2DE: JSL Palettes_Load_SpriteEnvironment_Underworld
#_02C2E2: JSL Palettes_Load_HUD
#_02C2E6: JSL Palettes_Load_UnderworldSet

#_02C2EA: RTL

;===================================================================================================

Underworld_LoadAndDrawRoom:
#_02C2EB: LDA.b $9B
#_02C2ED: PHA

#_02C2EE: STZ.w HDMAEN
#_02C2F1: STZ.b $9B

#_02C2F3: JSL Underworld_LoadRoom

#_02C2F7: STZ.w $0418
#_02C2FA: STZ.w $045C
#_02C2FD: STZ.w $0200

;---------------------------------------------------------------------------------------------------

.next_quadrant
#_02C300: JSL TilemapPrep_NotWaterOnTag
#_02C304: JSL NMI_UploadTilemap_long

#_02C308: JSL Underworld_PrepareNextRoomQuadrantUpload
#_02C30C: JSL NMI_UploadTilemap_long

#_02C310: LDA.w $045C
#_02C313: CMP.b #$10
#_02C315: BNE .next_quadrant

;---------------------------------------------------------------------------------------------------

#_02C317: PLA
#_02C318: STA.b $9B

#_02C31A: STZ.b $17
#_02C31C: STZ.w $0200
#_02C31F: STZ.b $B0

#_02C321: RTS

;===================================================================================================

Overworld_LoadAllPalettes:
#_02C322: REP #$20

#_02C324: LDX.b #$00

#_02C326: LDA.w #$0000 ; RGB: #000000

.next_color
#_02C329: STA.l $7EC480,X
#_02C32D: STA.l $7EC500,X
#_02C331: STA.l $7EC580,X
#_02C335: STA.l $7EC600,X
#_02C339: STA.l $7EC680,X

#_02C33D: INX
#_02C33E: INX
#_02C33F: CPX.b #$80
#_02C341: BNE .next_color

;---------------------------------------------------------------------------------------------------

#_02C343: SEP #$20

#_02C345: LDA.b #$04
#_02C347: STA.w $0AB3

#_02C34A: LDA.b #$03
#_02C34C: STA.w $0AB4
#_02C34F: STA.w $0AB5

#_02C352: LDA.b #$03 ; redundant
#_02C354: STA.w $0AB8

#_02C357: LDA.b #$05
#_02C359: STA.w $0AB1

#_02C35C: STZ.w $0AA9

#_02C35F: JSL SetBGandFixedColorBlack

#_02C363: JSL Palettes_Load_SpriteMain
#_02C367: JSL Palettes_Load_OWBGMain

#_02C36B: JSL Palettes_Load_OWBG1
#_02C36F: JSL Palettes_Load_OWBG2
#_02C373: JSL Palettes_Load_OWBG3

#_02C377: JSL Palettes_Load_SpriteEnvironment_Underworld

#_02C37B: JSL Palettes_Load_HUD

;---------------------------------------------------------------------------------------------------

#_02C37F: REP #$20

#_02C381: LDX.b #$00

.copy_next
#_02C383: LDA.l $7EC4D0,X
#_02C387: STA.l $7EC6B0,X

#_02C38B: INX
#_02C38C: INX
#_02C38D: CPX.b #$10
#_02C38F: BNE .copy_next

#_02C391: SEP #$20

#_02C393: RTS

;===================================================================================================

Underworld_LoadPalettes:
#_02C394: STZ.w $0AA9

#_02C397: JSL SetBGandFixedColorBlack

#_02C39B: JSL Palettes_Load_SpritePal0Left
#_02C39F: JSL Palettes_Load_SpriteMain
#_02C3A3: JSL Palettes_Load_SpriteAux1
#_02C3A7: JSL Palettes_Load_SpriteAux2

#_02C3AB: JSL Palettes_Load_Sword
#_02C3AF: JSL Palettes_Load_Shield

#_02C3B3: JSL Palettes_Load_SpriteEnvironment
#_02C3B7: JSL Palettes_Load_LinkArmorAndGloves

#_02C3BB: JSL Palettes_Load_HUD
#_02C3BF: JSL Palettes_Load_UnderworldSet

;===================================================================================================
; TODO analyze
;===================================================================================================
Overworld_CopyPalettesToCache_WithPrep:
#_02C3C3: LDA.w $0AB6
#_02C3C6: STA.l $7EC20A

#_02C3CA: LDA.w $0AB8
#_02C3CD: STA.l $7EC20B

#_02C3D1: LDA.w $0AB7
#_02C3D4: STA.l $7EC20C

#_02C3D8: REP #$20

#_02C3DA: LDA.w #$0002
#_02C3DD: STA.l $7EC009

#_02C3E1: LDA.w #$0000
#_02C3E4: STA.l $7EC007

#_02C3E8: LDA.w #$0000
#_02C3EB: STA.l $7EC00B

#_02C3EF: JMP.w Overworld_CopyPalettesToCache

;===================================================================================================

OverworldLoadScreensPaletteSet_long:
#_02C3F2: JSR OverworldLoadScreensPaletteSet

#_02C3F5: RTL

;===================================================================================================

OverworldLoadScreensPaletteSet:
#_02C3F6: LDX.b #$02

#_02C3F8: LDA.b $8A
#_02C3FA: AND.b #$3F
#_02C3FC: CMP.b #$03
#_02C3FE: BEQ .not_death_mountain

#_02C400: CMP.b #$05
#_02C402: BEQ .not_death_mountain

#_02C404: CMP.b #$07
#_02C406: BEQ .not_death_mountain

#_02C408: LDX.b #$00

.not_death_mountain
#_02C40A: LDA.b $8A
#_02C40C: AND.b #$40
#_02C40E: BEQ OverworldLoadScreensPaletteSet_Preloaded

#_02C410: INX

;===================================================================================================

OverworldLoadScreensPaletteSet_Preloaded:
#_02C411: STX.w $0AB3
#_02C414: STZ.w $0AA9

#_02C417: JSL Palettes_Load_SpriteMain
#_02C41B: JSL Palettes_Load_SpriteEnvironment

#_02C41F: JSL Palettes_Load_SpriteAux1
#_02C423: JSL Palettes_Load_SpriteAux2

#_02C427: JSL Palettes_Load_Sword
#_02C42B: JSL Palettes_Load_Shield
#_02C42F: JSL Palettes_Load_LinkArmorAndGloves

#_02C433: LDX.b #$01

#_02C435: LDA.l $7EF3CA
#_02C439: AND.b #$40
#_02C43B: BEQ .light_world

#_02C43D: LDX.b #$03

.light_world
#_02C43F: STX.w $0AAC

#_02C442: JSL Palettes_Load_SpritePal0Left
#_02C446: JSL Palettes_Load_HUD
#_02C44A: JSL Palettes_Load_OWBGMain

#_02C44E: RTS

;===================================================================================================

SpecialOverworld_CopyPalettesToCache:
#_02C44F: REP #$20

#_02C451: LDX.b #$00

#_02C453: LDA.w #$0000 ; RGB: #000000

.next_black
#_02C456: STA.l $7EC540,X
#_02C45A: STA.l $7EC580,X
#_02C45E: STA.l $7EC5C0,X
#_02C462: STA.l $7EC600,X
#_02C466: STA.l $7EC640,X
#_02C46A: STA.l $7EC680,X
#_02C46E: STA.l $7EC6C0,X

#_02C472: INX
#_02C473: INX
#_02C474: CPX.b #$40
#_02C476: BNE .next_black

;---------------------------------------------------------------------------------------------------

#_02C478: LDX.b #$00

.next_color
#_02C47A: LDA.l $7EC300,X
#_02C47E: STA.l $7EC500,X

#_02C482: LDA.l $7EC310,X
#_02C486: STA.l $7EC510,X

#_02C48A: LDA.l $7EC320,X
#_02C48E: STA.l $7EC520,X

#_02C492: LDA.l $7EC330,X
#_02C496: STA.l $7EC530,X

#_02C49A: LDA.l $7EC4B0,X
#_02C49E: STA.l $7EC6B0,X

#_02C4A2: LDA.l $7EC4D0,X
#_02C4A6: STA.l $7EC6D0,X

#_02C4AA: LDA.l $7EC4E0,X
#_02C4AE: STA.l $7EC6E0,X

#_02C4B2: LDA.l $7EC4F0,X
#_02C4B6: STA.l $7EC6F0,X

#_02C4BA: INX
#_02C4BB: INX
#_02C4BC: CPX.b #$10
#_02C4BE: BNE .next_color

;---------------------------------------------------------------------------------------------------

#_02C4C0: SEP #$20

; Full mosaic on BG1, BG2, BG3
#_02C4C2: LDA.b #$F7
#_02C4C4: STA.b $95
#_02C4C6: STA.l $7EC011

#_02C4CA: INC.b $15

#_02C4CC: RTS

;===================================================================================================

Overworld_CopyPalettesToCache:
#_02C4CD: REP #$20

#_02C4CF: LDX.b #$00

.next_color
#_02C4D1: LDA.l $7EC300,X
#_02C4D5: STA.l $7EC500,X

#_02C4D9: LDA.l $7EC340,X
#_02C4DD: STA.l $7EC540,X

#_02C4E1: LDA.l $7EC380,X
#_02C4E5: STA.l $7EC580,X

#_02C4E9: LDA.l $7EC3C0,X
#_02C4ED: STA.l $7EC5C0,X

#_02C4F1: LDA.l $7EC400,X
#_02C4F5: STA.l $7EC600,X

#_02C4F9: LDA.l $7EC440,X
#_02C4FD: STA.l $7EC640,X

#_02C501: LDA.l $7EC480,X
#_02C505: STA.l $7EC680,X

#_02C509: LDA.l $7EC4C0,X
#_02C50D: STA.l $7EC6C0,X

#_02C511: INX
#_02C512: INX
#_02C513: CPX.b #$40
#_02C515: BNE .next_color

;---------------------------------------------------------------------------------------------------

#_02C517: SEP #$20

#_02C519: INC.b $15

#_02C51B: RTS

;===================================================================================================

CleanUpAndPrepDesertPrayerHDMA:
#_02C51C: PHB
#_02C51D: PHK
#_02C51E: PLB

#_02C51F: LDX.b #$04

.next_prop
#_02C521: LDA.w .hdma_props,X
#_02C524: STA.w DMA7MODE,X

#_02C527: DEX
#_02C528: BPL .next_prop

;---------------------------------------------------------------------------------------------------

#_02C52A: LDA.b #$00
#_02C52C: STA.w HDMA7INDIRECTB

; Enable inverse windowing logic on everything
#_02C52F: LDA.b #$33
#_02C531: STA.b $96

#_02C533: LDA.b #$03
#_02C535: STA.b $97

#_02C537: LDA.b #$33
#_02C539: STA.b $98

#_02C53B: LDA.b $1C
#_02C53D: STA.b $1E

#_02C53F: LDA.b $1D
#_02C541: STA.b $1F

; Enable HDMA channel 7
#_02C543: LDA.b #$80
#_02C545: STA.b $9B

#_02C547: REP #$10

#_02C549: LDX.w #$01DF

;---------------------------------------------------------------------------------------------------

.clear_next
#_02C54C: STZ.w $1B00,X

#_02C54F: DEX
#_02C550: BPL .clear_next

#_02C552: SEP #$10

#_02C554: PLB

#_02C555: RTL

;---------------------------------------------------------------------------------------------------
; This was probably used to build a table in WRAM or something
.unused_hdma_data
#_02C556: db $01 : dw $FF00 ; 1 line
#_02C559: db $01 : dw $FF00 ; 1 line
#_02C55C: db $01 : dw $FF00 ; 1 line
#_02C55F: db $01 : dw $FF00 ; 1 line
#_02C562: db $81 : dw $0000 ; 1 line continuous
#_02C565: db $00 ; end

.unused_hdma_props
#_02C566: db $01 ; direct transfer, 2 registers write once
#_02C567: db WH0
#_02C568: dl $001B00 ; table location

;---------------------------------------------------------------------------------------------------

.hdma_props
#_02C56B: db $41 ; indirect transfer, 2 registers write once
#_02C56C: db WH0
#_02C56D: dl .indirect_table

.indirect_table
#_02C570: db $F8 : dw $1B00 ; 120 lines, continuous
#_02C573: db $F8 : dw $1BF0 ; 120 lines, continuous
#_02C576: db $00 ; end

;===================================================================================================
; TODO split up individually and name entrances
;===================================================================================================
EntranceData:

; writes to $A0, $048E
.room_id
#_02C577: dw $0104 ; 0x00
#_02C579: dw $0104 ; 0x01
#_02C57B: dw $0012 ; 0x02
#_02C57D: dw $0060 ; 0x03
#_02C57F: dw $0061 ; 0x04
#_02C581: dw $0062 ; 0x05
#_02C583: dw $00F0 ; 0x06
#_02C585: dw $00F1 ; 0x07
#_02C587: dw $00C9 ; 0x08
#_02C589: dw $0084 ; 0x09
#_02C58B: dw $0085 ; 0x0A
#_02C58D: dw $0083 ; 0x0B
#_02C58F: dw $0063 ; 0x0C
#_02C591: dw $00F2 ; 0x0D
#_02C593: dw $00F3 ; 0x0E
#_02C595: dw $00F4 ; 0x0F
#_02C597: dw $00F5 ; 0x10
#_02C599: dw $00E3 ; 0x11
#_02C59B: dw $00E2 ; 0x12
#_02C59D: dw $00F8 ; 0x13
#_02C59F: dw $00E8 ; 0x14
#_02C5A1: dw $0023 ; 0x15
#_02C5A3: dw $00FB ; 0x16
#_02C5A5: dw $00EB ; 0x17
#_02C5A7: dw $00D5 ; 0x18
#_02C5A9: dw $0024 ; 0x19
#_02C5AB: dw $00FD ; 0x1A
#_02C5AD: dw $00ED ; 0x1B
#_02C5AF: dw $00FE ; 0x1C
#_02C5B1: dw $00EE ; 0x1D
#_02C5B3: dw $00FF ; 0x1E
#_02C5B5: dw $00EF ; 0x1F
#_02C5B7: dw $00DF ; 0x20
#_02C5B9: dw $00F9 ; 0x21
#_02C5BB: dw $00FA ; 0x22
#_02C5BD: dw $00EA ; 0x23
#_02C5BF: dw $00E0 ; 0x24
#_02C5C1: dw $0028 ; 0x25
#_02C5C3: dw $004A ; 0x26
#_02C5C5: dw $0098 ; 0x27
#_02C5C7: dw $0056 ; 0x28
#_02C5C9: dw $0057 ; 0x29
#_02C5CB: dw $0058 ; 0x2A
#_02C5CD: dw $0059 ; 0x2B
#_02C5CF: dw $00E1 ; 0x2C
#_02C5D1: dw $000E ; 0x2D
#_02C5D3: dw $00E6 ; 0x2E
#_02C5D5: dw $00E7 ; 0x2F
#_02C5D7: dw $00E4 ; 0x30
#_02C5D9: dw $00E5 ; 0x31
#_02C5DB: dw $0055 ; 0x32
#_02C5DD: dw $0077 ; 0x33
#_02C5DF: dw $00DB ; 0x34
#_02C5E1: dw $00D6 ; 0x35
#_02C5E3: dw $0010 ; 0x36
#_02C5E5: dw $000C ; 0x37
#_02C5E7: dw $0008 ; 0x38
#_02C5E9: dw $002F ; 0x39
#_02C5EB: dw $003C ; 0x3A
#_02C5ED: dw $002C ; 0x3B
#_02C5EF: dw $0100 ; 0x3C
#_02C5F1: dw $011E ; 0x3D
#_02C5F3: dw $0101 ; 0x3E
#_02C5F5: dw $0101 ; 0x3F
#_02C5F7: dw $0102 ; 0x40
#_02C5F9: dw $0117 ; 0x41
#_02C5FB: dw $0103 ; 0x42
#_02C5FD: dw $0103 ; 0x43
#_02C5FF: dw $0103 ; 0x44
#_02C601: dw $0105 ; 0x45
#_02C603: dw $011F ; 0x46
#_02C605: dw $0106 ; 0x47
#_02C607: dw $0106 ; 0x48
#_02C609: dw $0107 ; 0x49
#_02C60B: dw $0107 ; 0x4A
#_02C60D: dw $0108 ; 0x4B
#_02C60F: dw $0109 ; 0x4C
#_02C611: dw $010A ; 0x4D
#_02C613: dw $010B ; 0x4E
#_02C615: dw $010C ; 0x4F
#_02C617: dw $010C ; 0x50
#_02C619: dw $011B ; 0x51
#_02C61B: dw $011B ; 0x52
#_02C61D: dw $011C ; 0x53
#_02C61F: dw $011C ; 0x54
#_02C621: dw $011E ; 0x55
#_02C623: dw $0120 ; 0x56
#_02C625: dw $0110 ; 0x57
#_02C627: dw $0112 ; 0x58
#_02C629: dw $0111 ; 0x59
#_02C62B: dw $0112 ; 0x5A
#_02C62D: dw $0113 ; 0x5B
#_02C62F: dw $0114 ; 0x5C
#_02C631: dw $0115 ; 0x5D
#_02C633: dw $0115 ; 0x5E
#_02C635: dw $010D ; 0x5F
#_02C637: dw $010F ; 0x60
#_02C639: dw $0119 ; 0x61
#_02C63B: dw $0114 ; 0x62
#_02C63D: dw $0116 ; 0x63
#_02C63F: dw $0121 ; 0x64
#_02C641: dw $0122 ; 0x65
#_02C643: dw $0122 ; 0x66
#_02C645: dw $0118 ; 0x67
#_02C647: dw $011A ; 0x68
#_02C649: dw $010E ; 0x69
#_02C64B: dw $010E ; 0x6A
#_02C64D: dw $011F ; 0x6B
#_02C64F: dw $0123 ; 0x6C
#_02C651: dw $0124 ; 0x6D
#_02C653: dw $0124 ; 0x6E
#_02C655: dw $0125 ; 0x6F
#_02C657: dw $0125 ; 0x70
#_02C659: dw $0126 ; 0x71
#_02C65B: dw $0126 ; 0x72
#_02C65D: dw $0080 ; 0x73
#_02C65F: dw $0051 ; 0x74
#_02C661: dw $0030 ; 0x75
#_02C663: dw $0058 ; 0x76
#_02C665: dw $0067 ; 0x77
#_02C667: dw $0068 ; 0x78
#_02C669: dw $0056 ; 0x79
#_02C66B: dw $00E1 ; 0x7A
#_02C66D: dw $0000 ; 0x7B
#_02C66F: dw $0018 ; 0x7C
#_02C671: dw $0055 ; 0x7D
#_02C673: dw $00E3 ; 0x7E
#_02C675: dw $00E2 ; 0x7F
#_02C677: dw $002F ; 0x80
#_02C679: dw $0011 ; 0x81
#_02C67B: dw $0003 ; 0x82
#_02C67D: dw $0127 ; 0x83
#_02C67F: dw $0120 ; 0x84

;---------------------------------------------------------------------------------------------------

; to $0600   +$1, +$3, +$5, +$7, +$9, +$B, +$D, +$F
.camera_scroll_boundaries
#_02C681: db $21, $20, $21, $21, $09, $09, $09, $0A ; 0x00
#_02C689: db $21, $20, $21, $21, $09, $09, $09, $0A ; 0x01
#_02C691: db $03, $02, $03, $03, $04, $04, $04, $05 ; 0x02
#_02C699: db $0D, $0C, $0D, $0D, $01, $00, $01, $01 ; 0x03
#_02C6A1: db $0D, $0C, $0D, $0D, $02, $02, $02, $03 ; 0x04
#_02C6A9: db $0D, $0C, $0D, $0D, $04, $04, $04, $05 ; 0x05
#_02C6B1: db $1F, $1E, $1F, $1F, $00, $00, $00, $01 ; 0x06
#_02C6B9: db $1F, $1E, $1F, $1F, $03, $02, $03, $03 ; 0x07
#_02C6C1: db $19, $18, $19, $19, $12, $12, $12, $13 ; 0x08
#_02C6C9: db $11, $10, $11, $11, $08, $08, $08, $09 ; 0x09
#_02C6D1: db $11, $10, $11, $11, $0B, $0A, $0B, $0B ; 0x0A
#_02C6D9: db $11, $10, $11, $11, $06, $06, $06, $07 ; 0x0B
#_02C6E1: db $0D, $0C, $0D, $0D, $06, $06, $06, $07 ; 0x0C
#_02C6E9: db $1F, $1E, $1F, $1F, $05, $05, $05, $06 ; 0x0D
#_02C6F1: db $1F, $1E, $1F, $1F, $06, $06, $06, $07 ; 0x0E
#_02C6F9: db $1F, $1E, $1F, $1F, $09, $09, $09, $0A ; 0x0F
#_02C701: db $1F, $1E, $1F, $1F, $0A, $0A, $0A, $0B ; 0x10
#_02C709: db $1D, $1C, $1D, $1D, $06, $06, $06, $07 ; 0x11
#_02C711: db $1D, $1C, $1D, $1D, $05, $04, $05, $05 ; 0x12
#_02C719: db $1F, $1E, $1F, $1F, $10, $10, $10, $11 ; 0x13
#_02C721: db $1D, $1C, $1D, $1D, $11, $10, $11, $11 ; 0x14
#_02C729: db $05, $04, $05, $05, $07, $06, $07, $07 ; 0x15
#_02C731: db $1F, $1E, $1F, $1F, $16, $16, $16, $17 ; 0x16
#_02C739: db $1D, $1C, $1D, $1D, $17, $16, $17, $17 ; 0x17
#_02C741: db $1B, $1A, $1B, $1B, $0A, $0A, $0A, $0B ; 0x18
#_02C749: db $05, $04, $05, $05, $09, $08, $09, $09 ; 0x19
#_02C751: db $1F, $1E, $1F, $1F, $1A, $1A, $1A, $1B ; 0x1A
#_02C759: db $1D, $1C, $1D, $1D, $1A, $1A, $1A, $1B ; 0x1B
#_02C761: db $1F, $1E, $1F, $1F, $1D, $1D, $1D, $1E ; 0x1C
#_02C769: db $1D, $1C, $1D, $1D, $1D, $1C, $1D, $1D ; 0x1D
#_02C771: db $1F, $1E, $1F, $1F, $1F, $1E, $1F, $1F ; 0x1E
#_02C779: db $1D, $1C, $1D, $1D, $1E, $1E, $1E, $1F ; 0x1F
#_02C781: db $1B, $1A, $1B, $1B, $1E, $1E, $1E, $1F ; 0x20
#_02C789: db $1F, $1E, $1F, $1F, $12, $12, $12, $13 ; 0x21
#_02C791: db $1F, $1E, $1F, $1F, $14, $14, $14, $15 ; 0x22
#_02C799: db $1D, $1C, $1D, $1D, $14, $14, $14, $15 ; 0x23
#_02C7A1: db $1D, $1C, $1D, $1D, $00, $00, $00, $01 ; 0x24
#_02C7A9: db $05, $04, $05, $05, $10, $10, $10, $11 ; 0x25
#_02C7B1: db $09, $08, $09, $09, $14, $14, $14, $15 ; 0x26
#_02C7B9: db $13, $12, $13, $13, $10, $10, $10, $11 ; 0x27
#_02C7C1: db $0B, $0A, $0B, $0B, $0C, $0C, $0C, $0D ; 0x28
#_02C7C9: db $0B, $0A, $0B, $0B, $0E, $0E, $0E, $0F ; 0x29
#_02C7D1: db $0B, $0A, $0B, $0B, $10, $10, $10, $11 ; 0x2A
#_02C7D9: db $0B, $0A, $0B, $0B, $12, $12, $12, $13 ; 0x2B
#_02C7E1: db $1D, $1C, $1D, $1D, $02, $02, $02, $03 ; 0x2C
#_02C7E9: db $01, $00, $01, $01, $1D, $1C, $1D, $1D ; 0x2D
#_02C7F1: db $1D, $1C, $1D, $1D, $0C, $0C, $0C, $0D ; 0x2E
#_02C7F9: db $1D, $1C, $1D, $1D, $0F, $0E, $0F, $0F ; 0x2F
#_02C801: db $1D, $1C, $1D, $1D, $08, $08, $08, $09 ; 0x30
#_02C809: db $1D, $1C, $1D, $1D, $0A, $0A, $0A, $0B ; 0x31
#_02C811: db $0B, $0A, $0B, $0B, $0A, $0A, $0A, $0B ; 0x32
#_02C819: db $0F, $0E, $0F, $0F, $0E, $0E, $0E, $0F ; 0x33
#_02C821: db $1B, $1A, $1B, $1B, $16, $16, $16, $17 ; 0x34
#_02C829: db $1B, $1A, $1B, $1B, $0D, $0C, $0D, $0D ; 0x35
#_02C831: db $03, $02, $03, $03, $00, $00, $00, $01 ; 0x36
#_02C839: db $01, $00, $01, $01, $18, $18, $18, $19 ; 0x37
#_02C841: db $01, $00, $01, $01, $11, $10, $11, $11 ; 0x38
#_02C849: db $05, $04, $05, $05, $1F, $1E, $1F, $1F ; 0x39
#_02C851: db $07, $06, $07, $07, $19, $18, $19, $19 ; 0x3A
#_02C859: db $05, $04, $05, $05, $18, $18, $18, $19 ; 0x3B
#_02C861: db $21, $20, $21, $21, $00, $00, $00, $01 ; 0x3C
#_02C869: db $23, $22, $23, $23, $1D, $1D, $1D, $1E ; 0x3D
#_02C871: db $21, $20, $21, $21, $02, $02, $02, $03 ; 0x3E
#_02C879: db $21, $20, $21, $21, $03, $03, $03, $04 ; 0x3F
#_02C881: db $21, $20, $21, $21, $04, $04, $04, $05 ; 0x40
#_02C889: db $23, $22, $23, $23, $0F, $0E, $0F, $0F ; 0x41
#_02C891: db $21, $20, $21, $21, $06, $06, $06, $07 ; 0x42
#_02C899: db $21, $20, $21, $21, $06, $06, $06, $07 ; 0x43
#_02C8A1: db $21, $20, $21, $21, $07, $07, $07, $08 ; 0x44
#_02C8A9: db $21, $20, $21, $21, $0A, $0A, $0A, $0B ; 0x45
#_02C8B1: db $23, $22, $23, $23, $1F, $1F, $1F, $20 ; 0x46
#_02C8B9: db $21, $20, $21, $21, $0C, $0C, $0C, $0D ; 0x47
#_02C8C1: db $21, $20, $21, $21, $0D, $0D, $0D, $0E ; 0x48
#_02C8C9: db $21, $20, $21, $21, $0E, $0E, $0E, $0F ; 0x49
#_02C8D1: db $21, $20, $21, $21, $0F, $0F, $0F, $10 ; 0x4A
#_02C8D9: db $21, $20, $21, $21, $10, $10, $10, $11 ; 0x4B
#_02C8E1: db $21, $20, $21, $21, $12, $12, $12, $13 ; 0x4C
#_02C8E9: db $21, $20, $21, $21, $14, $14, $14, $15 ; 0x4D
#_02C8F1: db $21, $20, $21, $21, $16, $16, $16, $17 ; 0x4E
#_02C8F9: db $21, $20, $21, $21, $18, $18, $18, $19 ; 0x4F
#_02C901: db $21, $20, $21, $21, $19, $19, $19, $1A ; 0x50
#_02C909: db $23, $22, $23, $23, $16, $16, $16, $17 ; 0x51
#_02C911: db $23, $22, $23, $23, $17, $17, $17, $18 ; 0x52
#_02C919: db $23, $22, $23, $23, $18, $18, $18, $19 ; 0x53
#_02C921: db $23, $22, $23, $23, $19, $19, $19, $19 ; 0x54
#_02C929: db $23, $22, $23, $23, $1C, $1C, $1C, $1D ; 0x55
#_02C931: db $25, $24, $25, $25, $01, $00, $01, $01 ; 0x56
#_02C939: db $23, $22, $23, $23, $00, $00, $00, $01 ; 0x57
#_02C941: db $23, $22, $23, $23, $05, $05, $05, $06 ; 0x58
#_02C949: db $23, $22, $23, $23, $02, $02, $02, $03 ; 0x59
#_02C951: db $23, $22, $23, $23, $04, $04, $04, $05 ; 0x5A
#_02C959: db $23, $22, $23, $23, $06, $06, $06, $07 ; 0x5B
#_02C961: db $23, $22, $23, $23, $08, $08, $08, $09 ; 0x5C
#_02C969: db $23, $22, $23, $23, $0A, $0A, $0A, $0B ; 0x5D
#_02C971: db $23, $22, $23, $23, $0B, $0B, $0B, $0C ; 0x5E
#_02C979: db $21, $20, $21, $21, $1A, $1A, $1A, $1B ; 0x5F
#_02C981: db $21, $20, $21, $21, $1E, $1E, $1E, $1F ; 0x60
#_02C989: db $23, $22, $23, $23, $12, $12, $12, $13 ; 0x61
#_02C991: db $23, $22, $23, $23, $09, $09, $09, $0A ; 0x62
#_02C999: db $23, $22, $23, $23, $0D, $0D, $0D, $0E ; 0x63
#_02C9A1: db $25, $24, $25, $25, $02, $02, $02, $03 ; 0x64
#_02C9A9: db $25, $24, $25, $25, $04, $04, $04, $05 ; 0x65
#_02C9B1: db $25, $24, $25, $25, $05, $05, $05, $06 ; 0x66
#_02C9B9: db $23, $22, $23, $23, $11, $11, $11, $12 ; 0x67
#_02C9C1: db $23, $22, $23, $23, $15, $15, $15, $16 ; 0x68
#_02C9C9: db $21, $20, $21, $21, $1C, $1C, $1C, $1D ; 0x69
#_02C9D1: db $21, $20, $21, $21, $1D, $1D, $1D, $1E ; 0x6A
#_02C9D9: db $23, $22, $23, $23, $1E, $1E, $1E, $1F ; 0x6B
#_02C9E1: db $25, $24, $25, $25, $06, $06, $06, $07 ; 0x6C
#_02C9E9: db $25, $24, $25, $25, $08, $08, $08, $09 ; 0x6D
#_02C9F1: db $25, $24, $25, $25, $09, $09, $09, $0A ; 0x6E
#_02C9F9: db $25, $24, $25, $25, $0A, $0A, $0A, $0B ; 0x6F
#_02CA01: db $25, $24, $25, $25, $0B, $0B, $0B, $0C ; 0x70
#_02CA09: db $25, $24, $25, $25, $0C, $0C, $0C, $0D ; 0x71
#_02CA11: db $25, $24, $25, $25, $0D, $0D, $0D, $0E ; 0x72
#_02CA19: db $10, $10, $10, $11, $01, $00, $01, $01 ; 0x73
#_02CA21: db $0B, $0A, $0B, $0B, $02, $02, $02, $03 ; 0x74
#_02CA29: db $06, $06, $06, $07, $00, $00, $00, $01 ; 0x75
#_02CA31: db $0A, $0A, $0A, $0B, $11, $10, $11, $11 ; 0x76
#_02CA39: db $0C, $0C, $0C, $0D, $0E, $0E, $0E, $0F ; 0x77
#_02CA41: db $0C, $0C, $0C, $0D, $11, $10, $11, $11 ; 0x78
#_02CA49: db $0A, $0A, $0A, $0B, $0D, $0C, $0D, $0D ; 0x79
#_02CA51: db $1C, $1C, $1C, $1D, $03, $02, $03, $03 ; 0x7A
#_02CA59: db $00, $00, $00, $01, $01, $00, $01, $01 ; 0x7B
#_02CA61: db $03, $02, $03, $03, $10, $10, $10, $11 ; 0x7C
#_02CA69: db $0A, $0A, $0A, $0B, $0B, $0A, $0B, $0B ; 0x7D
#_02CA71: db $1D, $1C, $1D, $1D, $07, $06, $07, $07 ; 0x7E
#_02CA79: db $1D, $1C, $1D, $1D, $04, $04, $04, $05 ; 0x7F
#_02CA81: db $05, $04, $05, $05, $1E, $1E, $1E, $1F ; 0x80
#_02CA89: db $03, $02, $03, $03, $03, $02, $03, $03 ; 0x81
#_02CA91: db $01, $00, $01, $01, $06, $06, $06, $07 ; 0x82
#_02CA99: db $25, $24, $25, $25, $0E, $0E, $0E, $0F ; 0x83
#_02CAA1: db $25, $24, $25, $25, $00, $00, $00, $01 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $E0, $E2, $011E, $0120
.horizontal_scroll
#_02CAA9: dw $0900 ; 0x00
#_02CAAB: dw $0900 ; 0x01
#_02CAAD: dw $0480 ; 0x02
#_02CAAF: dw $0100 ; 0x03
#_02CAB1: dw $0280 ; 0x04
#_02CAB3: dw $0400 ; 0x05
#_02CAB5: dw $0000 ; 0x06
#_02CAB7: dw $0300 ; 0x07
#_02CAB9: dw $1280 ; 0x08
#_02CABB: dw $0880 ; 0x09
#_02CABD: dw $0B00 ; 0x0A
#_02CABF: dw $0600 ; 0x0B
#_02CAC1: dw $0600 ; 0x0C
#_02CAC3: dw $0500 ; 0x0D
#_02CAC5: dw $0600 ; 0x0E
#_02CAC7: dw $0900 ; 0x0F
#_02CAC9: dw $0A00 ; 0x10
#_02CACB: dw $0600 ; 0x11
#_02CACD: dw $0500 ; 0x12
#_02CACF: dw $1080 ; 0x13
#_02CAD1: dw $1100 ; 0x14
#_02CAD3: dw $0700 ; 0x15
#_02CAD5: dw $1680 ; 0x16
#_02CAD7: dw $1700 ; 0x17
#_02CAD9: dw $0A00 ; 0x18
#_02CADB: dw $0900 ; 0x19
#_02CADD: dw $1A80 ; 0x1A
#_02CADF: dw $1B00 ; 0x1B
#_02CAE1: dw $1D00 ; 0x1C
#_02CAE3: dw $1D00 ; 0x1D
#_02CAE5: dw $1F00 ; 0x1E
#_02CAE7: dw $1E80 ; 0x1F
#_02CAE9: dw $1E80 ; 0x20
#_02CAEB: dw $1200 ; 0x21
#_02CAED: dw $1400 ; 0x22
#_02CAEF: dw $1400 ; 0x23
#_02CAF1: dw $0000 ; 0x24
#_02CAF3: dw $1080 ; 0x25
#_02CAF5: dw $1480 ; 0x26
#_02CAF7: dw $1000 ; 0x27
#_02CAF9: dw $0C00 ; 0x28
#_02CAFB: dw $0E00 ; 0x29
#_02CAFD: dw $1000 ; 0x2A
#_02CAFF: dw $1200 ; 0x2B
#_02CB01: dw $0200 ; 0x2C
#_02CB03: dw $1D00 ; 0x2D
#_02CB05: dw $0C00 ; 0x2E
#_02CB07: dw $0F00 ; 0x2F
#_02CB09: dw $0800 ; 0x30
#_02CB0B: dw $0A80 ; 0x31
#_02CB0D: dw $0A00 ; 0x32
#_02CB0F: dw $0E80 ; 0x33
#_02CB11: dw $1680 ; 0x34
#_02CB13: dw $0D00 ; 0x35
#_02CB15: dw $0000 ; 0x36
#_02CB17: dw $1880 ; 0x37
#_02CB19: dw $1100 ; 0x38
#_02CB1B: dw $1F00 ; 0x39
#_02CB1D: dw $1900 ; 0x3A
#_02CB1F: dw $1800 ; 0x3B
#_02CB21: dw $0000 ; 0x3C
#_02CB23: dw $1D00 ; 0x3D
#_02CB25: dw $0200 ; 0x3E
#_02CB27: dw $0300 ; 0x3F
#_02CB29: dw $0400 ; 0x40
#_02CB2B: dw $0F00 ; 0x41
#_02CB2D: dw $0600 ; 0x42
#_02CB2F: dw $0600 ; 0x43
#_02CB31: dw $0700 ; 0x44
#_02CB33: dw $0A00 ; 0x45
#_02CB35: dw $1F00 ; 0x46
#_02CB37: dw $0C00 ; 0x47
#_02CB39: dw $0D00 ; 0x48
#_02CB3B: dw $0E00 ; 0x49
#_02CB3D: dw $0F00 ; 0x4A
#_02CB3F: dw $1000 ; 0x4B
#_02CB41: dw $1200 ; 0x4C
#_02CB43: dw $1400 ; 0x4D
#_02CB45: dw $1680 ; 0x4E
#_02CB47: dw $1800 ; 0x4F
#_02CB49: dw $1900 ; 0x50
#_02CB4B: dw $1600 ; 0x51
#_02CB4D: dw $1700 ; 0x52
#_02CB4F: dw $1800 ; 0x53
#_02CB51: dw $1900 ; 0x54
#_02CB53: dw $1C00 ; 0x55
#_02CB55: dw $0100 ; 0x56
#_02CB57: dw $0000 ; 0x57
#_02CB59: dw $0500 ; 0x58
#_02CB5B: dw $0200 ; 0x59
#_02CB5D: dw $0400 ; 0x5A
#_02CB5F: dw $0600 ; 0x5B
#_02CB61: dw $0800 ; 0x5C
#_02CB63: dw $0A00 ; 0x5D
#_02CB65: dw $0B00 ; 0x5E
#_02CB67: dw $1A00 ; 0x5F
#_02CB69: dw $1E00 ; 0x60
#_02CB6B: dw $1280 ; 0x61
#_02CB6D: dw $0900 ; 0x62
#_02CB6F: dw $0D00 ; 0x63
#_02CB71: dw $0200 ; 0x64
#_02CB73: dw $0400 ; 0x65
#_02CB75: dw $0500 ; 0x66
#_02CB77: dw $1100 ; 0x67
#_02CB79: dw $1500 ; 0x68
#_02CB7B: dw $1C00 ; 0x69
#_02CB7D: dw $1D00 ; 0x6A
#_02CB7F: dw $1E00 ; 0x6B
#_02CB81: dw $0600 ; 0x6C
#_02CB83: dw $0800 ; 0x6D
#_02CB85: dw $0900 ; 0x6E
#_02CB87: dw $0A00 ; 0x6F
#_02CB89: dw $0B00 ; 0x70
#_02CB8B: dw $0C00 ; 0x71
#_02CB8D: dw $0D00 ; 0x72
#_02CB8F: dw $0100 ; 0x73
#_02CB91: dw $0280 ; 0x74
#_02CB93: dw $0000 ; 0x75
#_02CB95: dw $1100 ; 0x76
#_02CB97: dw $0E00 ; 0x77
#_02CB99: dw $1088 ; 0x78
#_02CB9B: dw $0D00 ; 0x79
#_02CB9D: dw $0300 ; 0x7A
#_02CB9F: dw $0100 ; 0x7B
#_02CBA1: dw $1000 ; 0x7C
#_02CBA3: dw $0B00 ; 0x7D
#_02CBA5: dw $0700 ; 0x7E
#_02CBA7: dw $0400 ; 0x7F
#_02CBA9: dw $1E00 ; 0x80
#_02CBAB: dw $0300 ; 0x81
#_02CBAD: dw $0600 ; 0x82
#_02CBAF: dw $0E00 ; 0x83
#_02CBB1: dw $0000 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $E6, $E8, $0122, $0124
.vertical_scroll
#_02CBB3: dw $2110 ; 0x00
#_02CBB5: dw $2110 ; 0x01
#_02CBB7: dw $0310 ; 0x02
#_02CBB9: dw $0D10 ; 0x03
#_02CBBB: dw $0D10 ; 0x04
#_02CBBD: dw $0D10 ; 0x05
#_02CBBF: dw $1F10 ; 0x06
#_02CBC1: dw $1F10 ; 0x07
#_02CBC3: dw $1910 ; 0x08
#_02CBC5: dw $1110 ; 0x09
#_02CBC7: dw $1110 ; 0x0A
#_02CBC9: dw $1110 ; 0x0B
#_02CBCB: dw $0D10 ; 0x0C
#_02CBCD: dw $1F10 ; 0x0D
#_02CBCF: dw $1F10 ; 0x0E
#_02CBD1: dw $1F10 ; 0x0F
#_02CBD3: dw $1F10 ; 0x10
#_02CBD5: dw $1D10 ; 0x11
#_02CBD7: dw $1D10 ; 0x12
#_02CBD9: dw $1F10 ; 0x13
#_02CBDB: dw $1D10 ; 0x14
#_02CBDD: dw $0510 ; 0x15
#_02CBDF: dw $1F10 ; 0x16
#_02CBE1: dw $1D10 ; 0x17
#_02CBE3: dw $1B10 ; 0x18
#_02CBE5: dw $0510 ; 0x19
#_02CBE7: dw $1F10 ; 0x1A
#_02CBE9: dw $1D10 ; 0x1B
#_02CBEB: dw $1F10 ; 0x1C
#_02CBED: dw $1D10 ; 0x1D
#_02CBEF: dw $1F10 ; 0x1E
#_02CBF1: dw $1D10 ; 0x1F
#_02CBF3: dw $1B10 ; 0x20
#_02CBF5: dw $1F10 ; 0x21
#_02CBF7: dw $1F10 ; 0x22
#_02CBF9: dw $1D10 ; 0x23
#_02CBFB: dw $1D10 ; 0x24
#_02CBFD: dw $0510 ; 0x25
#_02CBFF: dw $0910 ; 0x26
#_02CC01: dw $1310 ; 0x27
#_02CC03: dw $0B10 ; 0x28
#_02CC05: dw $0B10 ; 0x29
#_02CC07: dw $0B10 ; 0x2A
#_02CC09: dw $0B10 ; 0x2B
#_02CC0B: dw $1D10 ; 0x2C
#_02CC0D: dw $0110 ; 0x2D
#_02CC0F: dw $1D10 ; 0x2E
#_02CC11: dw $1D10 ; 0x2F
#_02CC13: dw $1D10 ; 0x30
#_02CC15: dw $1D10 ; 0x31
#_02CC17: dw $0B10 ; 0x32
#_02CC19: dw $0F10 ; 0x33
#_02CC1B: dw $1B10 ; 0x34
#_02CC1D: dw $1B10 ; 0x35
#_02CC1F: dw $0310 ; 0x36
#_02CC21: dw $0110 ; 0x37
#_02CC23: dw $0110 ; 0x38
#_02CC25: dw $0510 ; 0x39
#_02CC27: dw $0710 ; 0x3A
#_02CC29: dw $0510 ; 0x3B
#_02CC2B: dw $2110 ; 0x3C
#_02CC2D: dw $2310 ; 0x3D
#_02CC2F: dw $2110 ; 0x3E
#_02CC31: dw $2110 ; 0x3F
#_02CC33: dw $2110 ; 0x40
#_02CC35: dw $2310 ; 0x41
#_02CC37: dw $2110 ; 0x42
#_02CC39: dw $2000 ; 0x43
#_02CC3B: dw $2110 ; 0x44
#_02CC3D: dw $2110 ; 0x45
#_02CC3F: dw $2310 ; 0x46
#_02CC41: dw $2110 ; 0x47
#_02CC43: dw $2110 ; 0x48
#_02CC45: dw $2110 ; 0x49
#_02CC47: dw $2110 ; 0x4A
#_02CC49: dw $2110 ; 0x4B
#_02CC4B: dw $2110 ; 0x4C
#_02CC4D: dw $2110 ; 0x4D
#_02CC4F: dw $2110 ; 0x4E
#_02CC51: dw $2110 ; 0x4F
#_02CC53: dw $2110 ; 0x50
#_02CC55: dw $2310 ; 0x51
#_02CC57: dw $2310 ; 0x52
#_02CC59: dw $2310 ; 0x53
#_02CC5B: dw $2310 ; 0x54
#_02CC5D: dw $2310 ; 0x55
#_02CC5F: dw $2510 ; 0x56
#_02CC61: dw $2310 ; 0x57
#_02CC63: dw $2310 ; 0x58
#_02CC65: dw $2310 ; 0x59
#_02CC67: dw $2310 ; 0x5A
#_02CC69: dw $2310 ; 0x5B
#_02CC6B: dw $2310 ; 0x5C
#_02CC6D: dw $2310 ; 0x5D
#_02CC6F: dw $2310 ; 0x5E
#_02CC71: dw $2110 ; 0x5F
#_02CC73: dw $2110 ; 0x60
#_02CC75: dw $2310 ; 0x61
#_02CC77: dw $2310 ; 0x62
#_02CC79: dw $2310 ; 0x63
#_02CC7B: dw $2510 ; 0x64
#_02CC7D: dw $2510 ; 0x65
#_02CC7F: dw $2510 ; 0x66
#_02CC81: dw $2310 ; 0x67
#_02CC83: dw $2310 ; 0x68
#_02CC85: dw $2110 ; 0x69
#_02CC87: dw $2110 ; 0x6A
#_02CC89: dw $2310 ; 0x6B
#_02CC8B: dw $2510 ; 0x6C
#_02CC8D: dw $2510 ; 0x6D
#_02CC8F: dw $2510 ; 0x6E
#_02CC91: dw $2510 ; 0x6F
#_02CC93: dw $2510 ; 0x70
#_02CC95: dw $2510 ; 0x71
#_02CC97: dw $2510 ; 0x72
#_02CC99: dw $1010 ; 0x73
#_02CC9B: dw $0B10 ; 0x74
#_02CC9D: dw $0610 ; 0x75
#_02CC9F: dw $0A00 ; 0x76
#_02CCA1: dw $0C00 ; 0x77
#_02CCA3: dw $0C29 ; 0x78
#_02CCA5: dw $0A00 ; 0x79
#_02CCA7: dw $1C3D ; 0x7A
#_02CCA9: dw $0010 ; 0x7B
#_02CCAB: dw $02CE ; 0x7C
#_02CCAD: dw $0A10 ; 0x7D
#_02CCAF: dw $1D10 ; 0x7E
#_02CCB1: dw $1D10 ; 0x7F
#_02CCB3: dw $0510 ; 0x80
#_02CCB5: dw $02AD ; 0x81
#_02CCB7: dw $0110 ; 0x82
#_02CCB9: dw $2510 ; 0x83
#_02CCBB: dw $2510 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $20
.y_coordinate
#_02CCBD: dw $2178 ; 0x00
#_02CCBF: dw $21D8 ; 0x01
#_02CCC1: dw $03C0 ; 0x02
#_02CCC3: dw $0DD8 ; 0x03
#_02CCC5: dw $0DC0 ; 0x04
#_02CCC7: dw $0DD8 ; 0x05
#_02CCC9: dw $1FD8 ; 0x06
#_02CCCB: dw $1FC0 ; 0x07
#_02CCCD: dw $19D8 ; 0x08
#_02CCCF: dw $11D8 ; 0x09
#_02CCD1: dw $11D8 ; 0x0A
#_02CCD3: dw $11D8 ; 0x0B
#_02CCD5: dw $0DD8 ; 0x0C
#_02CCD7: dw $1FD8 ; 0x0D
#_02CCD9: dw $1FD8 ; 0x0E
#_02CCDB: dw $1FD8 ; 0x0F
#_02CCDD: dw $1FD8 ; 0x10
#_02CCDF: dw $1DD8 ; 0x11
#_02CCE1: dw $1DD8 ; 0x12
#_02CCE3: dw $1FD8 ; 0x13
#_02CCE5: dw $1DD8 ; 0x14
#_02CCE7: dw $05D8 ; 0x15
#_02CCE9: dw $1FD8 ; 0x16
#_02CCEB: dw $1DD8 ; 0x17
#_02CCED: dw $1BD8 ; 0x18
#_02CCEF: dw $05D8 ; 0x19
#_02CCF1: dw $1FC0 ; 0x1A
#_02CCF3: dw $1DD8 ; 0x1B
#_02CCF5: dw $1FC0 ; 0x1C
#_02CCF7: dw $1DD8 ; 0x1D
#_02CCF9: dw $1FD8 ; 0x1E
#_02CCFB: dw $1DD8 ; 0x1F
#_02CCFD: dw $1BD8 ; 0x20
#_02CCFF: dw $1FD8 ; 0x21
#_02CD01: dw $1FC0 ; 0x22
#_02CD03: dw $1DD8 ; 0x23
#_02CD05: dw $1DD8 ; 0x24
#_02CD07: dw $05D8 ; 0x25
#_02CD09: dw $09D8 ; 0x26
#_02CD0B: dw $13D8 ; 0x27
#_02CD0D: dw $0BD8 ; 0x28
#_02CD0F: dw $0BD8 ; 0x29
#_02CD11: dw $0BD8 ; 0x2A
#_02CD13: dw $0BD8 ; 0x2B
#_02CD15: dw $1DD8 ; 0x2C
#_02CD17: dw $01D8 ; 0x2D
#_02CD19: dw $1DC0 ; 0x2E
#_02CD1B: dw $1DC0 ; 0x2F
#_02CD1D: dw $1DC0 ; 0x30
#_02CD1F: dw $1DD8 ; 0x31
#_02CD21: dw $0BD8 ; 0x32
#_02CD23: dw $0FC0 ; 0x33
#_02CD25: dw $1BD8 ; 0x34
#_02CD27: dw $1BD8 ; 0x35
#_02CD29: dw $03D8 ; 0x36
#_02CD2B: dw $01D8 ; 0x37
#_02CD2D: dw $01D8 ; 0x38
#_02CD2F: dw $05D8 ; 0x39
#_02CD31: dw $07D8 ; 0x3A
#_02CD33: dw $05D8 ; 0x3B
#_02CD35: dw $21D8 ; 0x3C
#_02CD37: dw $23D8 ; 0x3D
#_02CD39: dw $21D8 ; 0x3E
#_02CD3B: dw $21D8 ; 0x3F
#_02CD3D: dw $21D8 ; 0x40
#_02CD3F: dw $23D8 ; 0x41
#_02CD41: dw $21D8 ; 0x42
#_02CD43: dw $2020 ; 0x43
#_02CD45: dw $21D8 ; 0x44
#_02CD47: dw $21D8 ; 0x45
#_02CD49: dw $23D8 ; 0x46
#_02CD4B: dw $21D8 ; 0x47
#_02CD4D: dw $21D8 ; 0x48
#_02CD4F: dw $21D8 ; 0x49
#_02CD51: dw $21D8 ; 0x4A
#_02CD53: dw $21D8 ; 0x4B
#_02CD55: dw $21D8 ; 0x4C
#_02CD57: dw $21C0 ; 0x4D
#_02CD59: dw $21D8 ; 0x4E
#_02CD5B: dw $21D8 ; 0x4F
#_02CD5D: dw $21D8 ; 0x50
#_02CD5F: dw $23C0 ; 0x51
#_02CD61: dw $23D8 ; 0x52
#_02CD63: dw $23D8 ; 0x53
#_02CD65: dw $23D8 ; 0x54
#_02CD67: dw $23D8 ; 0x55
#_02CD69: dw $25D8 ; 0x56
#_02CD6B: dw $23D8 ; 0x57
#_02CD6D: dw $23D8 ; 0x58
#_02CD6F: dw $23D8 ; 0x59
#_02CD71: dw $23D8 ; 0x5A
#_02CD73: dw $23D8 ; 0x5B
#_02CD75: dw $23D8 ; 0x5C
#_02CD77: dw $23D8 ; 0x5D
#_02CD79: dw $23D8 ; 0x5E
#_02CD7B: dw $21D8 ; 0x5F
#_02CD7D: dw $21D8 ; 0x60
#_02CD7F: dw $23D8 ; 0x61
#_02CD81: dw $23D8 ; 0x62
#_02CD83: dw $23D8 ; 0x63
#_02CD85: dw $25D8 ; 0x64
#_02CD87: dw $25D8 ; 0x65
#_02CD89: dw $25D8 ; 0x66
#_02CD8B: dw $23D8 ; 0x67
#_02CD8D: dw $23D8 ; 0x68
#_02CD8F: dw $21C0 ; 0x69
#_02CD91: dw $21C0 ; 0x6A
#_02CD93: dw $23D8 ; 0x6B
#_02CD95: dw $25D8 ; 0x6C
#_02CD97: dw $25D8 ; 0x6D
#_02CD99: dw $25D8 ; 0x6E
#_02CD9B: dw $25D8 ; 0x6F
#_02CD9D: dw $25D8 ; 0x70
#_02CD9F: dw $25D8 ; 0x71
#_02CDA1: dw $25D8 ; 0x72
#_02CDA3: dw $1080 ; 0x73
#_02CDA5: dw $0BA8 ; 0x74
#_02CDA7: dw $0698 ; 0x75
#_02CDA9: dw $0A69 ; 0x76
#_02CDAB: dw $0C68 ; 0x77
#_02CDAD: dw $0C96 ; 0x78
#_02CDAF: dw $0A68 ; 0x79
#_02CDB1: dw $1CA9 ; 0x7A
#_02CDB3: dw $0089 ; 0x7B
#_02CDB5: dw $033B ; 0x7C
#_02CDB7: dw $0A96 ; 0x7D
#_02CDB9: dw $1D7D ; 0x7E
#_02CDBB: dw $1D89 ; 0x7F
#_02CDBD: dw $0589 ; 0x80
#_02CDBF: dw $031A ; 0x81
#_02CDC1: dw $0197 ; 0x82
#_02CDC3: dw $25D8 ; 0x83
#_02CDC5: dw $25D8 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $22
.x_coordinate
#_02CDC7: dw $0978 ; 0x00
#_02CDC9: dw $0978 ; 0x01
#_02CDCB: dw $04F8 ; 0x02
#_02CDCD: dw $0178 ; 0x03
#_02CDCF: dw $02F8 ; 0x04
#_02CDD1: dw $0478 ; 0x05
#_02CDD3: dw $0078 ; 0x06
#_02CDD5: dw $0378 ; 0x07
#_02CDD7: dw $12F8 ; 0x08
#_02CDD9: dw $08F8 ; 0x09
#_02CDDB: dw $0B78 ; 0x0A
#_02CDDD: dw $0678 ; 0x0B
#_02CDDF: dw $0678 ; 0x0C
#_02CDE1: dw $0578 ; 0x0D
#_02CDE3: dw $0678 ; 0x0E
#_02CDE5: dw $0978 ; 0x0F
#_02CDE7: dw $0A78 ; 0x10
#_02CDE9: dw $0678 ; 0x11
#_02CDEB: dw $0578 ; 0x12
#_02CDED: dw $10F8 ; 0x13
#_02CDEF: dw $1178 ; 0x14
#_02CDF1: dw $0778 ; 0x15
#_02CDF3: dw $16F8 ; 0x16
#_02CDF5: dw $1778 ; 0x17
#_02CDF7: dw $0A78 ; 0x18
#_02CDF9: dw $0978 ; 0x19
#_02CDFB: dw $1AF8 ; 0x1A
#_02CDFD: dw $1B78 ; 0x1B
#_02CDFF: dw $1D78 ; 0x1C
#_02CE01: dw $1D78 ; 0x1D
#_02CE03: dw $1F78 ; 0x1E
#_02CE05: dw $1EF8 ; 0x1F
#_02CE07: dw $1EF8 ; 0x20
#_02CE09: dw $1278 ; 0x21
#_02CE0B: dw $1478 ; 0x22
#_02CE0D: dw $1478 ; 0x23
#_02CE0F: dw $0078 ; 0x24
#_02CE11: dw $10F8 ; 0x25
#_02CE13: dw $14F8 ; 0x26
#_02CE15: dw $1078 ; 0x27
#_02CE17: dw $0C78 ; 0x28
#_02CE19: dw $0E78 ; 0x29
#_02CE1B: dw $1078 ; 0x2A
#_02CE1D: dw $1278 ; 0x2B
#_02CE1F: dw $0278 ; 0x2C
#_02CE21: dw $1D78 ; 0x2D
#_02CE23: dw $0C78 ; 0x2E
#_02CE25: dw $0F78 ; 0x2F
#_02CE27: dw $0878 ; 0x30
#_02CE29: dw $0AF8 ; 0x31
#_02CE2B: dw $0A78 ; 0x32
#_02CE2D: dw $0EF8 ; 0x33
#_02CE2F: dw $16F8 ; 0x34
#_02CE31: dw $0D78 ; 0x35
#_02CE33: dw $0078 ; 0x36
#_02CE35: dw $18F8 ; 0x37
#_02CE37: dw $1178 ; 0x38
#_02CE39: dw $1F78 ; 0x39
#_02CE3B: dw $1978 ; 0x3A
#_02CE3D: dw $1878 ; 0x3B
#_02CE3F: dw $0078 ; 0x3C
#_02CE41: dw $1D78 ; 0x3D
#_02CE43: dw $0278 ; 0x3E
#_02CE45: dw $0378 ; 0x3F
#_02CE47: dw $0478 ; 0x40
#_02CE49: dw $0F78 ; 0x41
#_02CE4B: dw $0678 ; 0x42
#_02CE4D: dw $0678 ; 0x43
#_02CE4F: dw $0778 ; 0x44
#_02CE51: dw $0A78 ; 0x45
#_02CE53: dw $1F78 ; 0x46
#_02CE55: dw $0C78 ; 0x47
#_02CE57: dw $0D78 ; 0x48
#_02CE59: dw $0E78 ; 0x49
#_02CE5B: dw $0F78 ; 0x4A
#_02CE5D: dw $1078 ; 0x4B
#_02CE5F: dw $1278 ; 0x4C
#_02CE61: dw $1478 ; 0x4D
#_02CE63: dw $16F8 ; 0x4E
#_02CE65: dw $1878 ; 0x4F
#_02CE67: dw $1978 ; 0x50
#_02CE69: dw $1678 ; 0x51
#_02CE6B: dw $1778 ; 0x52
#_02CE6D: dw $1878 ; 0x53
#_02CE6F: dw $1978 ; 0x54
#_02CE71: dw $1C78 ; 0x55
#_02CE73: dw $0178 ; 0x56
#_02CE75: dw $0078 ; 0x57
#_02CE77: dw $0578 ; 0x58
#_02CE79: dw $0278 ; 0x59
#_02CE7B: dw $0478 ; 0x5A
#_02CE7D: dw $0678 ; 0x5B
#_02CE7F: dw $0878 ; 0x5C
#_02CE81: dw $0A78 ; 0x5D
#_02CE83: dw $0B78 ; 0x5E
#_02CE85: dw $1A78 ; 0x5F
#_02CE87: dw $1E78 ; 0x60
#_02CE89: dw $12F8 ; 0x61
#_02CE8B: dw $0978 ; 0x62
#_02CE8D: dw $0D78 ; 0x63
#_02CE8F: dw $0278 ; 0x64
#_02CE91: dw $0478 ; 0x65
#_02CE93: dw $0578 ; 0x66
#_02CE95: dw $1178 ; 0x67
#_02CE97: dw $1578 ; 0x68
#_02CE99: dw $1C78 ; 0x69
#_02CE9B: dw $1D78 ; 0x6A
#_02CE9D: dw $1E78 ; 0x6B
#_02CE9F: dw $0678 ; 0x6C
#_02CEA1: dw $0878 ; 0x6D
#_02CEA3: dw $0978 ; 0x6E
#_02CEA5: dw $0A78 ; 0x6F
#_02CEA7: dw $0B78 ; 0x70
#_02CEA9: dw $0C78 ; 0x71
#_02CEAB: dw $0D78 ; 0x72
#_02CEAD: dw $01A8 ; 0x73
#_02CEAF: dw $02F8 ; 0x74
#_02CEB1: dw $0078 ; 0x75
#_02CEB3: dw $1190 ; 0x76
#_02CEB5: dw $0E80 ; 0x77
#_02CEB7: dw $1100 ; 0x78
#_02CEB9: dw $0D40 ; 0x79
#_02CEBB: dw $0370 ; 0x7A
#_02CEBD: dw $017F ; 0x7B
#_02CEBF: dw $1073 ; 0x7C
#_02CEC1: dw $0B9F ; 0x7D
#_02CEC3: dw $0778 ; 0x7E
#_02CEC5: dw $047F ; 0x7F
#_02CEC7: dw $1E61 ; 0x80
#_02CEC9: dw $0393 ; 0x81
#_02CECB: dw $0677 ; 0x82
#_02CECD: dw $0E78 ; 0x83
#_02CECF: dw $0078 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $0618, increments twice, writes to $061A
.camera_trigger_y
#_02CED1: dw $0187 ; 0x00
#_02CED3: dw $0187 ; 0x01
#_02CED5: dw $0187 ; 0x02
#_02CED7: dw $0187 ; 0x03
#_02CED9: dw $0187 ; 0x04
#_02CEDB: dw $0187 ; 0x05
#_02CEDD: dw $0187 ; 0x06
#_02CEDF: dw $0187 ; 0x07
#_02CEE1: dw $0187 ; 0x08
#_02CEE3: dw $0187 ; 0x09
#_02CEE5: dw $0187 ; 0x0A
#_02CEE7: dw $0187 ; 0x0B
#_02CEE9: dw $0187 ; 0x0C
#_02CEEB: dw $0187 ; 0x0D
#_02CEED: dw $0187 ; 0x0E
#_02CEEF: dw $0187 ; 0x0F
#_02CEF1: dw $0187 ; 0x10
#_02CEF3: dw $0187 ; 0x11
#_02CEF5: dw $0187 ; 0x12
#_02CEF7: dw $0187 ; 0x13
#_02CEF9: dw $0187 ; 0x14
#_02CEFB: dw $0187 ; 0x15
#_02CEFD: dw $0187 ; 0x16
#_02CEFF: dw $0187 ; 0x17
#_02CF01: dw $0187 ; 0x18
#_02CF03: dw $0187 ; 0x19
#_02CF05: dw $0187 ; 0x1A
#_02CF07: dw $0187 ; 0x1B
#_02CF09: dw $0187 ; 0x1C
#_02CF0B: dw $0187 ; 0x1D
#_02CF0D: dw $0187 ; 0x1E
#_02CF0F: dw $0187 ; 0x1F
#_02CF11: dw $0187 ; 0x20
#_02CF13: dw $0187 ; 0x21
#_02CF15: dw $0187 ; 0x22
#_02CF17: dw $0187 ; 0x23
#_02CF19: dw $0187 ; 0x24
#_02CF1B: dw $0187 ; 0x25
#_02CF1D: dw $0187 ; 0x26
#_02CF1F: dw $0187 ; 0x27
#_02CF21: dw $0187 ; 0x28
#_02CF23: dw $0187 ; 0x29
#_02CF25: dw $0187 ; 0x2A
#_02CF27: dw $0187 ; 0x2B
#_02CF29: dw $0187 ; 0x2C
#_02CF2B: dw $0187 ; 0x2D
#_02CF2D: dw $0187 ; 0x2E
#_02CF2F: dw $0187 ; 0x2F
#_02CF31: dw $0187 ; 0x30
#_02CF33: dw $0187 ; 0x31
#_02CF35: dw $0187 ; 0x32
#_02CF37: dw $0187 ; 0x33
#_02CF39: dw $0187 ; 0x34
#_02CF3B: dw $0187 ; 0x35
#_02CF3D: dw $0187 ; 0x36
#_02CF3F: dw $0187 ; 0x37
#_02CF41: dw $0187 ; 0x38
#_02CF43: dw $0187 ; 0x39
#_02CF45: dw $0187 ; 0x3A
#_02CF47: dw $0187 ; 0x3B
#_02CF49: dw $0187 ; 0x3C
#_02CF4B: dw $0187 ; 0x3D
#_02CF4D: dw $0187 ; 0x3E
#_02CF4F: dw $0187 ; 0x3F
#_02CF51: dw $0187 ; 0x40
#_02CF53: dw $0187 ; 0x41
#_02CF55: dw $0187 ; 0x42
#_02CF57: dw $0074 ; 0x43
#_02CF59: dw $0187 ; 0x44
#_02CF5B: dw $0187 ; 0x45
#_02CF5D: dw $0187 ; 0x46
#_02CF5F: dw $0187 ; 0x47
#_02CF61: dw $0187 ; 0x48
#_02CF63: dw $0187 ; 0x49
#_02CF65: dw $0187 ; 0x4A
#_02CF67: dw $0187 ; 0x4B
#_02CF69: dw $0187 ; 0x4C
#_02CF6B: dw $0187 ; 0x4D
#_02CF6D: dw $0187 ; 0x4E
#_02CF6F: dw $0187 ; 0x4F
#_02CF71: dw $0187 ; 0x50
#_02CF73: dw $0187 ; 0x51
#_02CF75: dw $0187 ; 0x52
#_02CF77: dw $0187 ; 0x53
#_02CF79: dw $0187 ; 0x54
#_02CF7B: dw $0187 ; 0x55
#_02CF7D: dw $0187 ; 0x56
#_02CF7F: dw $0187 ; 0x57
#_02CF81: dw $0187 ; 0x58
#_02CF83: dw $0187 ; 0x59
#_02CF85: dw $0187 ; 0x5A
#_02CF87: dw $0187 ; 0x5B
#_02CF89: dw $0187 ; 0x5C
#_02CF8B: dw $0187 ; 0x5D
#_02CF8D: dw $0187 ; 0x5E
#_02CF8F: dw $0187 ; 0x5F
#_02CF91: dw $0187 ; 0x60
#_02CF93: dw $0187 ; 0x61
#_02CF95: dw $0187 ; 0x62
#_02CF97: dw $0187 ; 0x63
#_02CF99: dw $0187 ; 0x64
#_02CF9B: dw $0187 ; 0x65
#_02CF9D: dw $0187 ; 0x66
#_02CF9F: dw $0187 ; 0x67
#_02CFA1: dw $0187 ; 0x68
#_02CFA3: dw $0187 ; 0x69
#_02CFA5: dw $0187 ; 0x6A
#_02CFA7: dw $0187 ; 0x6B
#_02CFA9: dw $0187 ; 0x6C
#_02CFAB: dw $0187 ; 0x6D
#_02CFAD: dw $0187 ; 0x6E
#_02CFAF: dw $0187 ; 0x6F
#_02CFB1: dw $0187 ; 0x70
#_02CFB3: dw $0187 ; 0x71
#_02CFB5: dw $0187 ; 0x72
#_02CFB7: dw $0088 ; 0x73
#_02CFB9: dw $0188 ; 0x74
#_02CFBB: dw $0088 ; 0x75
#_02CFBD: dw $0077 ; 0x76
#_02CFBF: dw $0078 ; 0x77
#_02CFC1: dw $00A1 ; 0x78
#_02CFC3: dw $0077 ; 0x79
#_02CFC5: dw $00B4 ; 0x7A
#_02CFC7: dw $0088 ; 0x7B
#_02CFC9: dw $0146 ; 0x7C
#_02CFCB: dw $0088 ; 0x7D
#_02CFCD: dw $0188 ; 0x7E
#_02CFCF: dw $0187 ; 0x7F
#_02CFD1: dw $0187 ; 0x80
#_02CFD3: dw $0125 ; 0x81
#_02CFD5: dw $0188 ; 0x82
#_02CFD7: dw $0187 ; 0x83
#_02CFD9: dw $0187 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $061C, increments twice, writes to $061E
.camera_trigger_x
#_02CFDB: dw $017F ; 0x00
#_02CFDD: dw $017F ; 0x01
#_02CFDF: dw $00FF ; 0x02
#_02CFE1: dw $017F ; 0x03
#_02CFE3: dw $00FF ; 0x04
#_02CFE5: dw $007F ; 0x05
#_02CFE7: dw $007F ; 0x06
#_02CFE9: dw $017F ; 0x07
#_02CFEB: dw $00FF ; 0x08
#_02CFED: dw $00FF ; 0x09
#_02CFEF: dw $017F ; 0x0A
#_02CFF1: dw $007F ; 0x0B
#_02CFF3: dw $007F ; 0x0C
#_02CFF5: dw $017F ; 0x0D
#_02CFF7: dw $007F ; 0x0E
#_02CFF9: dw $017F ; 0x0F
#_02CFFB: dw $007F ; 0x10
#_02CFFD: dw $007F ; 0x11
#_02CFFF: dw $017F ; 0x12
#_02D001: dw $00FF ; 0x13
#_02D003: dw $017F ; 0x14
#_02D005: dw $017F ; 0x15
#_02D007: dw $00FF ; 0x16
#_02D009: dw $017F ; 0x17
#_02D00B: dw $007F ; 0x18
#_02D00D: dw $017F ; 0x19
#_02D00F: dw $00FF ; 0x1A
#_02D011: dw $017F ; 0x1B
#_02D013: dw $017F ; 0x1C
#_02D015: dw $017F ; 0x1D
#_02D017: dw $017F ; 0x1E
#_02D019: dw $00FF ; 0x1F
#_02D01B: dw $00FF ; 0x20
#_02D01D: dw $007F ; 0x21
#_02D01F: dw $007F ; 0x22
#_02D021: dw $007F ; 0x23
#_02D023: dw $007F ; 0x24
#_02D025: dw $00FF ; 0x25
#_02D027: dw $00FF ; 0x26
#_02D029: dw $007F ; 0x27
#_02D02B: dw $007F ; 0x28
#_02D02D: dw $007F ; 0x29
#_02D02F: dw $007F ; 0x2A
#_02D031: dw $007F ; 0x2B
#_02D033: dw $007F ; 0x2C
#_02D035: dw $017F ; 0x2D
#_02D037: dw $007F ; 0x2E
#_02D039: dw $017F ; 0x2F
#_02D03B: dw $007F ; 0x30
#_02D03D: dw $00FF ; 0x31
#_02D03F: dw $007F ; 0x32
#_02D041: dw $00FF ; 0x33
#_02D043: dw $00FF ; 0x34
#_02D045: dw $017F ; 0x35
#_02D047: dw $007F ; 0x36
#_02D049: dw $00FF ; 0x37
#_02D04B: dw $017F ; 0x38
#_02D04D: dw $017F ; 0x39
#_02D04F: dw $017F ; 0x3A
#_02D051: dw $007F ; 0x3B
#_02D053: dw $007F ; 0x3C
#_02D055: dw $017F ; 0x3D
#_02D057: dw $007F ; 0x3E
#_02D059: dw $017F ; 0x3F
#_02D05B: dw $007F ; 0x40
#_02D05D: dw $017F ; 0x41
#_02D05F: dw $007F ; 0x42
#_02D061: dw $007F ; 0x43
#_02D063: dw $017F ; 0x44
#_02D065: dw $007F ; 0x45
#_02D067: dw $017F ; 0x46
#_02D069: dw $007F ; 0x47
#_02D06B: dw $017F ; 0x48
#_02D06D: dw $007F ; 0x49
#_02D06F: dw $017F ; 0x4A
#_02D071: dw $007F ; 0x4B
#_02D073: dw $007F ; 0x4C
#_02D075: dw $007F ; 0x4D
#_02D077: dw $00FF ; 0x4E
#_02D079: dw $007F ; 0x4F
#_02D07B: dw $017F ; 0x50
#_02D07D: dw $007F ; 0x51
#_02D07F: dw $017F ; 0x52
#_02D081: dw $007F ; 0x53
#_02D083: dw $017F ; 0x54
#_02D085: dw $007F ; 0x55
#_02D087: dw $017F ; 0x56
#_02D089: dw $007F ; 0x57
#_02D08B: dw $017F ; 0x58
#_02D08D: dw $007F ; 0x59
#_02D08F: dw $007F ; 0x5A
#_02D091: dw $007F ; 0x5B
#_02D093: dw $007F ; 0x5C
#_02D095: dw $007F ; 0x5D
#_02D097: dw $017F ; 0x5E
#_02D099: dw $007F ; 0x5F
#_02D09B: dw $007F ; 0x60
#_02D09D: dw $00FF ; 0x61
#_02D09F: dw $017F ; 0x62
#_02D0A1: dw $017F ; 0x63
#_02D0A3: dw $007F ; 0x64
#_02D0A5: dw $007F ; 0x65
#_02D0A7: dw $017F ; 0x66
#_02D0A9: dw $017F ; 0x67
#_02D0AB: dw $017F ; 0x68
#_02D0AD: dw $007F ; 0x69
#_02D0AF: dw $017F ; 0x6A
#_02D0B1: dw $007F ; 0x6B
#_02D0B3: dw $007F ; 0x6C
#_02D0B5: dw $007F ; 0x6D
#_02D0B7: dw $017F ; 0x6E
#_02D0B9: dw $007F ; 0x6F
#_02D0BB: dw $017F ; 0x70
#_02D0BD: dw $007F ; 0x71
#_02D0BF: dw $017F ; 0x72
#_02D0C1: dw $017F ; 0x73
#_02D0C3: dw $00FF ; 0x74
#_02D0C5: dw $007F ; 0x75
#_02D0C7: dw $017F ; 0x76
#_02D0C9: dw $007F ; 0x77
#_02D0CB: dw $0107 ; 0x78
#_02D0CD: dw $017F ; 0x79
#_02D0CF: dw $017F ; 0x7A
#_02D0D1: dw $017F ; 0x7B
#_02D0D3: dw $007F ; 0x7C
#_02D0D5: dw $017F ; 0x7D
#_02D0D7: dw $017F ; 0x7E
#_02D0D9: dw $007F ; 0x7F
#_02D0DB: dw $007F ; 0x80
#_02D0DD: dw $017F ; 0x81
#_02D0DF: dw $007F ; 0x82
#_02D0E1: dw $007F ; 0x83
#_02D0E3: dw $007F ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $0AA1
.main_GFX
#_02D0E5: db $03 ; 0x00
#_02D0E6: db $03 ; 0x01
#_02D0E7: db $04 ; 0x02
#_02D0E8: db $04 ; 0x03
#_02D0E9: db $04 ; 0x04
#_02D0EA: db $04 ; 0x05
#_02D0EB: db $06 ; 0x06
#_02D0EC: db $06 ; 0x07
#_02D0ED: db $05 ; 0x08
#_02D0EE: db $12 ; 0x09
#_02D0EF: db $12 ; 0x0A
#_02D0F0: db $12 ; 0x0B
#_02D0F1: db $12 ; 0x0C
#_02D0F2: db $03 ; 0x0D
#_02D0F3: db $03 ; 0x0E
#_02D0F4: db $03 ; 0x0F
#_02D0F5: db $03 ; 0x10
#_02D0F6: db $06 ; 0x11
#_02D0F7: db $06 ; 0x12
#_02D0F8: db $06 ; 0x13
#_02D0F9: db $06 ; 0x14
#_02D0FA: db $0D ; 0x15
#_02D0FB: db $06 ; 0x16
#_02D0FC: db $06 ; 0x17
#_02D0FD: db $0D ; 0x18
#_02D0FE: db $0D ; 0x19
#_02D0FF: db $06 ; 0x1A
#_02D100: db $06 ; 0x1B
#_02D101: db $06 ; 0x1C
#_02D102: db $06 ; 0x1D
#_02D103: db $06 ; 0x1E
#_02D104: db $06 ; 0x1F
#_02D105: db $06 ; 0x20
#_02D106: db $06 ; 0x21
#_02D107: db $06 ; 0x22
#_02D108: db $06 ; 0x23
#_02D109: db $04 ; 0x24
#_02D10A: db $08 ; 0x25
#_02D10B: db $07 ; 0x26
#_02D10C: db $0C ; 0x27
#_02D10D: db $09 ; 0x28
#_02D10E: db $09 ; 0x29
#_02D10F: db $09 ; 0x2A
#_02D110: db $09 ; 0x2B
#_02D111: db $06 ; 0x2C
#_02D112: db $0B ; 0x2D
#_02D113: db $06 ; 0x2E
#_02D114: db $06 ; 0x2F
#_02D115: db $14 ; 0x30
#_02D116: db $14 ; 0x31
#_02D117: db $01 ; 0x32
#_02D118: db $05 ; 0x33
#_02D119: db $0A ; 0x34
#_02D11A: db $0D ; 0x35
#_02D11B: db $13 ; 0x36
#_02D11C: db $0E ; 0x37
#_02D11D: db $06 ; 0x38
#_02D11E: db $06 ; 0x39
#_02D11F: db $06 ; 0x3A
#_02D120: db $06 ; 0x3B
#_02D121: db $03 ; 0x3C
#_02D122: db $06 ; 0x3D
#_02D123: db $03 ; 0x3E
#_02D124: db $03 ; 0x3F
#_02D125: db $03 ; 0x40
#_02D126: db $14 ; 0x41
#_02D127: db $03 ; 0x42
#_02D128: db $03 ; 0x43
#_02D129: db $03 ; 0x44
#_02D12A: db $0F ; 0x45
#_02D12B: db $03 ; 0x46
#_02D12C: db $03 ; 0x47
#_02D12D: db $03 ; 0x48
#_02D12E: db $03 ; 0x49
#_02D12F: db $03 ; 0x4A
#_02D130: db $03 ; 0x4B
#_02D131: db $03 ; 0x4C
#_02D132: db $06 ; 0x4D
#_02D133: db $08 ; 0x4E
#_02D134: db $06 ; 0x4F
#_02D135: db $06 ; 0x50
#_02D136: db $06 ; 0x51
#_02D137: db $06 ; 0x52
#_02D138: db $03 ; 0x53
#_02D139: db $03 ; 0x54
#_02D13A: db $06 ; 0x55
#_02D13B: db $06 ; 0x56
#_02D13C: db $03 ; 0x57
#_02D13D: db $14 ; 0x58
#_02D13E: db $11 ; 0x59
#_02D13F: db $14 ; 0x5A
#_02D140: db $01 ; 0x5B
#_02D141: db $06 ; 0x5C
#_02D142: db $06 ; 0x5D
#_02D143: db $06 ; 0x5E
#_02D144: db $08 ; 0x5F
#_02D145: db $03 ; 0x60
#_02D146: db $0A ; 0x61
#_02D147: db $06 ; 0x62
#_02D148: db $12 ; 0x63
#_02D149: db $11 ; 0x64
#_02D14A: db $11 ; 0x65
#_02D14B: db $11 ; 0x66
#_02D14C: db $03 ; 0x67
#_02D14D: db $0F ; 0x68
#_02D14E: db $14 ; 0x69
#_02D14F: db $14 ; 0x6A
#_02D150: db $03 ; 0x6B
#_02D151: db $06 ; 0x6C
#_02D152: db $06 ; 0x6D
#_02D153: db $06 ; 0x6E
#_02D154: db $06 ; 0x6F
#_02D155: db $06 ; 0x70
#_02D156: db $06 ; 0x71
#_02D157: db $06 ; 0x72
#_02D158: db $01 ; 0x73
#_02D159: db $04 ; 0x74
#_02D15A: db $02 ; 0x75
#_02D15B: db $09 ; 0x76
#_02D15C: db $09 ; 0x77
#_02D15D: db $09 ; 0x78
#_02D15E: db $09 ; 0x79
#_02D15F: db $06 ; 0x7A
#_02D160: db $13 ; 0x7B
#_02D161: db $06 ; 0x7C
#_02D162: db $01 ; 0x7D
#_02D163: db $06 ; 0x7E
#_02D164: db $06 ; 0x7F
#_02D165: db $06 ; 0x80
#_02D166: db $01 ; 0x81
#_02D167: db $06 ; 0x82
#_02D168: db $06 ; 0x83
#_02D169: db $06 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $A4
.floor
#_02D16A: db $00 ; 0x00
#_02D16B: db $00 ; 0x01
#_02D16C: db $00 ; 0x02
#_02D16D: db $00 ; 0x03
#_02D16E: db $00 ; 0x04
#_02D16F: db $00 ; 0x05
#_02D170: db $00 ; 0x06
#_02D171: db $00 ; 0x07
#_02D172: db $00 ; 0x08
#_02D173: db $FF ; 0x09
#_02D174: db $FF ; 0x0A
#_02D175: db $FF ; 0x0B
#_02D176: db $00 ; 0x0C
#_02D177: db $00 ; 0x0D
#_02D178: db $00 ; 0x0E
#_02D179: db $00 ; 0x0F
#_02D17A: db $00 ; 0x10
#_02D17B: db $FF ; 0x11
#_02D17C: db $FF ; 0x12
#_02D17D: db $00 ; 0x13
#_02D17E: db $01 ; 0x14
#_02D17F: db $FF ; 0x15
#_02D180: db $00 ; 0x16
#_02D181: db $01 ; 0x17
#_02D182: db $FE ; 0x18
#_02D183: db $FF ; 0x19
#_02D184: db $00 ; 0x1A
#_02D185: db $01 ; 0x1B
#_02D186: db $00 ; 0x1C
#_02D187: db $01 ; 0x1D
#_02D188: db $FF ; 0x1E
#_02D189: db $00 ; 0x1F
#_02D18A: db $01 ; 0x20
#_02D18B: db $00 ; 0x21
#_02D18C: db $00 ; 0x22
#_02D18D: db $01 ; 0x23
#_02D18E: db $01 ; 0x24
#_02D18F: db $00 ; 0x25
#_02D190: db $00 ; 0x26
#_02D191: db $00 ; 0x27
#_02D192: db $FF ; 0x28
#_02D193: db $FF ; 0x29
#_02D194: db $FF ; 0x2A
#_02D195: db $FF ; 0x2B
#_02D196: db $FF ; 0x2C
#_02D197: db $00 ; 0x2D
#_02D198: db $00 ; 0x2E
#_02D199: db $00 ; 0x2F
#_02D19A: db $00 ; 0x30
#_02D19B: db $00 ; 0x31
#_02D19C: db $FF ; 0x32
#_02D19D: db $01 ; 0x33
#_02D19E: db $FF ; 0x34
#_02D19F: db $00 ; 0x35
#_02D1A0: db $00 ; 0x36
#_02D1A1: db $01 ; 0x37
#_02D1A2: db $FF ; 0x38
#_02D1A3: db $FF ; 0x39
#_02D1A4: db $FF ; 0x3A
#_02D1A5: db $FF ; 0x3B
#_02D1A6: db $00 ; 0x3C
#_02D1A7: db $00 ; 0x3D
#_02D1A8: db $00 ; 0x3E
#_02D1A9: db $00 ; 0x3F
#_02D1AA: db $00 ; 0x40
#_02D1AB: db $00 ; 0x41
#_02D1AC: db $00 ; 0x42
#_02D1AD: db $00 ; 0x43
#_02D1AE: db $00 ; 0x44
#_02D1AF: db $00 ; 0x45
#_02D1B0: db $00 ; 0x46
#_02D1B1: db $00 ; 0x47
#_02D1B2: db $00 ; 0x48
#_02D1B3: db $00 ; 0x49
#_02D1B4: db $00 ; 0x4A
#_02D1B5: db $00 ; 0x4B
#_02D1B6: db $00 ; 0x4C
#_02D1B7: db $00 ; 0x4D
#_02D1B8: db $00 ; 0x4E
#_02D1B9: db $00 ; 0x4F
#_02D1BA: db $00 ; 0x50
#_02D1BB: db $00 ; 0x51
#_02D1BC: db $00 ; 0x52
#_02D1BD: db $00 ; 0x53
#_02D1BE: db $00 ; 0x54
#_02D1BF: db $00 ; 0x55
#_02D1C0: db $00 ; 0x56
#_02D1C1: db $00 ; 0x57
#_02D1C2: db $00 ; 0x58
#_02D1C3: db $00 ; 0x59
#_02D1C4: db $00 ; 0x5A
#_02D1C5: db $00 ; 0x5B
#_02D1C6: db $00 ; 0x5C
#_02D1C7: db $00 ; 0x5D
#_02D1C8: db $00 ; 0x5E
#_02D1C9: db $00 ; 0x5F
#_02D1CA: db $00 ; 0x60
#_02D1CB: db $00 ; 0x61
#_02D1CC: db $00 ; 0x62
#_02D1CD: db $00 ; 0x63
#_02D1CE: db $00 ; 0x64
#_02D1CF: db $00 ; 0x65
#_02D1D0: db $00 ; 0x66
#_02D1D1: db $00 ; 0x67
#_02D1D2: db $00 ; 0x68
#_02D1D3: db $00 ; 0x69
#_02D1D4: db $00 ; 0x6A
#_02D1D5: db $00 ; 0x6B
#_02D1D6: db $00 ; 0x6C
#_02D1D7: db $00 ; 0x6D
#_02D1D8: db $00 ; 0x6E
#_02D1D9: db $00 ; 0x6F
#_02D1DA: db $00 ; 0x70
#_02D1DB: db $00 ; 0x71
#_02D1DC: db $00 ; 0x72
#_02D1DD: db $FF ; 0x73
#_02D1DE: db $FF ; 0x74
#_02D1DF: db $FF ; 0x75
#_02D1E0: db $FF ; 0x76
#_02D1E1: db $FF ; 0x77
#_02D1E2: db $FF ; 0x78
#_02D1E3: db $FF ; 0x79
#_02D1E4: db $FF ; 0x7A
#_02D1E5: db $01 ; 0x7B
#_02D1E6: db $FF ; 0x7C
#_02D1E7: db $FF ; 0x7D
#_02D1E8: db $FF ; 0x7E
#_02D1E9: db $FF ; 0x7F
#_02D1EA: db $FF ; 0x80
#_02D1EB: db $FF ; 0x81
#_02D1EC: db $FF ; 0x82
#_02D1ED: db $00 ; 0x83
#_02D1EE: db $00 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $040C
.dungeon_id
#_02D1EF: db $FF ; 0x00
#_02D1F0: db $FF ; 0x01
#_02D1F1: db $00 ; 0x02
#_02D1F2: db $02 ; 0x03
#_02D1F3: db $02 ; 0x04
#_02D1F4: db $02 ; 0x05
#_02D1F5: db $FF ; 0x06
#_02D1F6: db $FF ; 0x07
#_02D1F7: db $04 ; 0x08
#_02D1F8: db $06 ; 0x09
#_02D1F9: db $06 ; 0x0A
#_02D1FA: db $06 ; 0x0B
#_02D1FB: db $06 ; 0x0C
#_02D1FC: db $FF ; 0x0D
#_02D1FD: db $FF ; 0x0E
#_02D1FE: db $FF ; 0x0F
#_02D1FF: db $FF ; 0x10
#_02D200: db $FF ; 0x11
#_02D201: db $FF ; 0x12
#_02D202: db $FF ; 0x13
#_02D203: db $FF ; 0x14
#_02D204: db $18 ; 0x15
#_02D205: db $FF ; 0x16
#_02D206: db $FF ; 0x17
#_02D207: db $18 ; 0x18
#_02D208: db $18 ; 0x19
#_02D209: db $FF ; 0x1A
#_02D20A: db $FF ; 0x1B
#_02D20B: db $FF ; 0x1C
#_02D20C: db $FF ; 0x1D
#_02D20D: db $FF ; 0x1E
#_02D20E: db $FF ; 0x1F
#_02D20F: db $FF ; 0x20
#_02D210: db $FF ; 0x21
#_02D211: db $FF ; 0x22
#_02D212: db $FF ; 0x23
#_02D213: db $08 ; 0x24
#_02D214: db $0A ; 0x25
#_02D215: db $0C ; 0x26
#_02D216: db $0E ; 0x27
#_02D217: db $10 ; 0x28
#_02D218: db $10 ; 0x29
#_02D219: db $10 ; 0x2A
#_02D21A: db $10 ; 0x2B
#_02D21B: db $FF ; 0x2C
#_02D21C: db $12 ; 0x2D
#_02D21D: db $FF ; 0x2E
#_02D21E: db $FF ; 0x2F
#_02D21F: db $FF ; 0x30
#_02D220: db $FF ; 0x31
#_02D221: db $FF ; 0x32
#_02D222: db $14 ; 0x33
#_02D223: db $16 ; 0x34
#_02D224: db $18 ; 0x35
#_02D225: db $FF ; 0x36
#_02D226: db $1A ; 0x37
#_02D227: db $FF ; 0x38
#_02D228: db $FF ; 0x39
#_02D229: db $FF ; 0x3A
#_02D22A: db $FF ; 0x3B
#_02D22B: db $FF ; 0x3C
#_02D22C: db $FF ; 0x3D
#_02D22D: db $FF ; 0x3E
#_02D22E: db $FF ; 0x3F
#_02D22F: db $FF ; 0x40
#_02D230: db $FF ; 0x41
#_02D231: db $FF ; 0x42
#_02D232: db $FF ; 0x43
#_02D233: db $FF ; 0x44
#_02D234: db $FF ; 0x45
#_02D235: db $FF ; 0x46
#_02D236: db $FF ; 0x47
#_02D237: db $FF ; 0x48
#_02D238: db $FF ; 0x49
#_02D239: db $FF ; 0x4A
#_02D23A: db $FF ; 0x4B
#_02D23B: db $FF ; 0x4C
#_02D23C: db $FF ; 0x4D
#_02D23D: db $FF ; 0x4E
#_02D23E: db $FF ; 0x4F
#_02D23F: db $FF ; 0x50
#_02D240: db $FF ; 0x51
#_02D241: db $FF ; 0x52
#_02D242: db $FF ; 0x53
#_02D243: db $FF ; 0x54
#_02D244: db $FF ; 0x55
#_02D245: db $FF ; 0x56
#_02D246: db $FF ; 0x57
#_02D247: db $FF ; 0x58
#_02D248: db $FF ; 0x59
#_02D249: db $FF ; 0x5A
#_02D24A: db $FF ; 0x5B
#_02D24B: db $FF ; 0x5C
#_02D24C: db $FF ; 0x5D
#_02D24D: db $FF ; 0x5E
#_02D24E: db $FF ; 0x5F
#_02D24F: db $FF ; 0x60
#_02D250: db $FF ; 0x61
#_02D251: db $FF ; 0x62
#_02D252: db $FF ; 0x63
#_02D253: db $FF ; 0x64
#_02D254: db $FF ; 0x65
#_02D255: db $FF ; 0x66
#_02D256: db $FF ; 0x67
#_02D257: db $FF ; 0x68
#_02D258: db $FF ; 0x69
#_02D259: db $FF ; 0x6A
#_02D25A: db $FF ; 0x6B
#_02D25B: db $FF ; 0x6C
#_02D25C: db $FF ; 0x6D
#_02D25D: db $FF ; 0x6E
#_02D25E: db $FF ; 0x6F
#_02D25F: db $FF ; 0x70
#_02D260: db $FF ; 0x71
#_02D261: db $FF ; 0x72
#_02D262: db $FF ; 0x73
#_02D263: db $FF ; 0x74
#_02D264: db $FF ; 0x75
#_02D265: db $10 ; 0x76
#_02D266: db $10 ; 0x77
#_02D267: db $10 ; 0x78
#_02D268: db $10 ; 0x79
#_02D269: db $FF ; 0x7A
#_02D26A: db $FF ; 0x7B
#_02D26B: db $FF ; 0x7C
#_02D26C: db $FF ; 0x7D
#_02D26D: db $FF ; 0x7E
#_02D26E: db $FF ; 0x7F
#_02D26F: db $FF ; 0x80
#_02D270: db $00 ; 0x81
#_02D271: db $FF ; 0x82
#_02D272: db $FF ; 0x83
#_02D273: db $FF ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $6C
.in_door
#_02D274: db $00 ; 0x00
#_02D275: db $01 ; 0x01
#_02D276: db $01 ; 0x02
#_02D277: db $01 ; 0x03
#_02D278: db $01 ; 0x04
#_02D279: db $01 ; 0x05
#_02D27A: db $01 ; 0x06
#_02D27B: db $01 ; 0x07
#_02D27C: db $01 ; 0x08
#_02D27D: db $01 ; 0x09
#_02D27E: db $01 ; 0x0A
#_02D27F: db $01 ; 0x0B
#_02D280: db $01 ; 0x0C
#_02D281: db $01 ; 0x0D
#_02D282: db $01 ; 0x0E
#_02D283: db $01 ; 0x0F
#_02D284: db $01 ; 0x10
#_02D285: db $01 ; 0x11
#_02D286: db $01 ; 0x12
#_02D287: db $01 ; 0x13
#_02D288: db $01 ; 0x14
#_02D289: db $01 ; 0x15
#_02D28A: db $01 ; 0x16
#_02D28B: db $01 ; 0x17
#_02D28C: db $01 ; 0x18
#_02D28D: db $01 ; 0x19
#_02D28E: db $01 ; 0x1A
#_02D28F: db $01 ; 0x1B
#_02D290: db $01 ; 0x1C
#_02D291: db $01 ; 0x1D
#_02D292: db $01 ; 0x1E
#_02D293: db $01 ; 0x1F
#_02D294: db $01 ; 0x20
#_02D295: db $01 ; 0x21
#_02D296: db $01 ; 0x22
#_02D297: db $01 ; 0x23
#_02D298: db $01 ; 0x24
#_02D299: db $01 ; 0x25
#_02D29A: db $01 ; 0x26
#_02D29B: db $01 ; 0x27
#_02D29C: db $01 ; 0x28
#_02D29D: db $01 ; 0x29
#_02D29E: db $01 ; 0x2A
#_02D29F: db $01 ; 0x2B
#_02D2A0: db $01 ; 0x2C
#_02D2A1: db $01 ; 0x2D
#_02D2A2: db $01 ; 0x2E
#_02D2A3: db $01 ; 0x2F
#_02D2A4: db $01 ; 0x30
#_02D2A5: db $01 ; 0x31
#_02D2A6: db $01 ; 0x32
#_02D2A7: db $01 ; 0x33
#_02D2A8: db $01 ; 0x34
#_02D2A9: db $01 ; 0x35
#_02D2AA: db $01 ; 0x36
#_02D2AB: db $01 ; 0x37
#_02D2AC: db $01 ; 0x38
#_02D2AD: db $01 ; 0x39
#_02D2AE: db $01 ; 0x3A
#_02D2AF: db $01 ; 0x3B
#_02D2B0: db $01 ; 0x3C
#_02D2B1: db $01 ; 0x3D
#_02D2B2: db $01 ; 0x3E
#_02D2B3: db $01 ; 0x3F
#_02D2B4: db $01 ; 0x40
#_02D2B5: db $01 ; 0x41
#_02D2B6: db $01 ; 0x42
#_02D2B7: db $01 ; 0x43
#_02D2B8: db $01 ; 0x44
#_02D2B9: db $01 ; 0x45
#_02D2BA: db $01 ; 0x46
#_02D2BB: db $01 ; 0x47
#_02D2BC: db $01 ; 0x48
#_02D2BD: db $01 ; 0x49
#_02D2BE: db $01 ; 0x4A
#_02D2BF: db $01 ; 0x4B
#_02D2C0: db $01 ; 0x4C
#_02D2C1: db $01 ; 0x4D
#_02D2C2: db $01 ; 0x4E
#_02D2C3: db $01 ; 0x4F
#_02D2C4: db $01 ; 0x50
#_02D2C5: db $01 ; 0x51
#_02D2C6: db $01 ; 0x52
#_02D2C7: db $01 ; 0x53
#_02D2C8: db $01 ; 0x54
#_02D2C9: db $01 ; 0x55
#_02D2CA: db $01 ; 0x56
#_02D2CB: db $01 ; 0x57
#_02D2CC: db $01 ; 0x58
#_02D2CD: db $01 ; 0x59
#_02D2CE: db $01 ; 0x5A
#_02D2CF: db $01 ; 0x5B
#_02D2D0: db $01 ; 0x5C
#_02D2D1: db $01 ; 0x5D
#_02D2D2: db $01 ; 0x5E
#_02D2D3: db $01 ; 0x5F
#_02D2D4: db $01 ; 0x60
#_02D2D5: db $01 ; 0x61
#_02D2D6: db $01 ; 0x62
#_02D2D7: db $01 ; 0x63
#_02D2D8: db $01 ; 0x64
#_02D2D9: db $01 ; 0x65
#_02D2DA: db $01 ; 0x66
#_02D2DB: db $01 ; 0x67
#_02D2DC: db $01 ; 0x68
#_02D2DD: db $01 ; 0x69
#_02D2DE: db $01 ; 0x6A
#_02D2DF: db $01 ; 0x6B
#_02D2E0: db $01 ; 0x6C
#_02D2E1: db $01 ; 0x6D
#_02D2E2: db $01 ; 0x6E
#_02D2E3: db $01 ; 0x6F
#_02D2E4: db $01 ; 0x70
#_02D2E5: db $01 ; 0x71
#_02D2E6: db $01 ; 0x72
#_02D2E7: db $00 ; 0x73
#_02D2E8: db $00 ; 0x74
#_02D2E9: db $00 ; 0x75
#_02D2EA: db $00 ; 0x76
#_02D2EB: db $00 ; 0x77
#_02D2EC: db $00 ; 0x78
#_02D2ED: db $00 ; 0x79
#_02D2EE: db $00 ; 0x7A
#_02D2EF: db $00 ; 0x7B
#_02D2F0: db $00 ; 0x7C
#_02D2F1: db $00 ; 0x7D
#_02D2F2: db $00 ; 0x7E
#_02D2F3: db $00 ; 0x7F
#_02D2F4: db $00 ; 0x80
#_02D2F5: db $00 ; 0x81
#_02D2F6: db $00 ; 0x82
#_02D2F7: db $01 ; 0x83
#_02D2F8: db $01 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes upper nibble to $EE
; writes lower nibble to $0476
.layer
#_02D2F9: db $00 ; 0x00
#_02D2FA: db $00 ; 0x01
#_02D2FB: db $01 ; 0x02
#_02D2FC: db $00 ; 0x03
#_02D2FD: db $01 ; 0x04
#_02D2FE: db $00 ; 0x05
#_02D2FF: db $00 ; 0x06
#_02D300: db $01 ; 0x07
#_02D301: db $00 ; 0x08
#_02D302: db $00 ; 0x09
#_02D303: db $00 ; 0x0A
#_02D304: db $00 ; 0x0B
#_02D305: db $00 ; 0x0C
#_02D306: db $00 ; 0x0D
#_02D307: db $00 ; 0x0E
#_02D308: db $00 ; 0x0F
#_02D309: db $00 ; 0x10
#_02D30A: db $00 ; 0x11
#_02D30B: db $00 ; 0x12
#_02D30C: db $00 ; 0x13
#_02D30D: db $00 ; 0x14
#_02D30E: db $00 ; 0x15
#_02D30F: db $00 ; 0x16
#_02D310: db $00 ; 0x17
#_02D311: db $00 ; 0x18
#_02D312: db $00 ; 0x19
#_02D313: db $01 ; 0x1A
#_02D314: db $00 ; 0x1B
#_02D315: db $01 ; 0x1C
#_02D316: db $00 ; 0x1D
#_02D317: db $00 ; 0x1E
#_02D318: db $00 ; 0x1F
#_02D319: db $00 ; 0x20
#_02D31A: db $00 ; 0x21
#_02D31B: db $11 ; 0x22
#_02D31C: db $00 ; 0x23
#_02D31D: db $00 ; 0x24
#_02D31E: db $00 ; 0x25
#_02D31F: db $00 ; 0x26
#_02D320: db $00 ; 0x27
#_02D321: db $00 ; 0x28
#_02D322: db $00 ; 0x29
#_02D323: db $00 ; 0x2A
#_02D324: db $00 ; 0x2B
#_02D325: db $00 ; 0x2C
#_02D326: db $00 ; 0x2D
#_02D327: db $01 ; 0x2E
#_02D328: db $01 ; 0x2F
#_02D329: db $01 ; 0x30
#_02D32A: db $00 ; 0x31
#_02D32B: db $00 ; 0x32
#_02D32C: db $11 ; 0x33
#_02D32D: db $00 ; 0x34
#_02D32E: db $00 ; 0x35
#_02D32F: db $00 ; 0x36
#_02D330: db $00 ; 0x37
#_02D331: db $00 ; 0x38
#_02D332: db $00 ; 0x39
#_02D333: db $00 ; 0x3A
#_02D334: db $00 ; 0x3B
#_02D335: db $00 ; 0x3C
#_02D336: db $00 ; 0x3D
#_02D337: db $00 ; 0x3E
#_02D338: db $00 ; 0x3F
#_02D339: db $00 ; 0x40
#_02D33A: db $00 ; 0x41
#_02D33B: db $00 ; 0x42
#_02D33C: db $00 ; 0x43
#_02D33D: db $00 ; 0x44
#_02D33E: db $00 ; 0x45
#_02D33F: db $00 ; 0x46
#_02D340: db $00 ; 0x47
#_02D341: db $00 ; 0x48
#_02D342: db $00 ; 0x49
#_02D343: db $00 ; 0x4A
#_02D344: db $00 ; 0x4B
#_02D345: db $00 ; 0x4C
#_02D346: db $01 ; 0x4D
#_02D347: db $00 ; 0x4E
#_02D348: db $00 ; 0x4F
#_02D349: db $00 ; 0x50
#_02D34A: db $11 ; 0x51
#_02D34B: db $00 ; 0x52
#_02D34C: db $00 ; 0x53
#_02D34D: db $00 ; 0x54
#_02D34E: db $00 ; 0x55
#_02D34F: db $00 ; 0x56
#_02D350: db $00 ; 0x57
#_02D351: db $00 ; 0x58
#_02D352: db $00 ; 0x59
#_02D353: db $00 ; 0x5A
#_02D354: db $00 ; 0x5B
#_02D355: db $00 ; 0x5C
#_02D356: db $00 ; 0x5D
#_02D357: db $00 ; 0x5E
#_02D358: db $00 ; 0x5F
#_02D359: db $00 ; 0x60
#_02D35A: db $00 ; 0x61
#_02D35B: db $00 ; 0x62
#_02D35C: db $00 ; 0x63
#_02D35D: db $00 ; 0x64
#_02D35E: db $00 ; 0x65
#_02D35F: db $00 ; 0x66
#_02D360: db $00 ; 0x67
#_02D361: db $00 ; 0x68
#_02D362: db $01 ; 0x69
#_02D363: db $01 ; 0x6A
#_02D364: db $00 ; 0x6B
#_02D365: db $00 ; 0x6C
#_02D366: db $00 ; 0x6D
#_02D367: db $00 ; 0x6E
#_02D368: db $00 ; 0x6F
#_02D369: db $00 ; 0x70
#_02D36A: db $00 ; 0x71
#_02D36B: db $00 ; 0x72
#_02D36C: db $00 ; 0x73
#_02D36D: db $11 ; 0x74
#_02D36E: db $00 ; 0x75
#_02D36F: db $00 ; 0x76
#_02D370: db $00 ; 0x77
#_02D371: db $00 ; 0x78
#_02D372: db $00 ; 0x79
#_02D373: db $00 ; 0x7A
#_02D374: db $00 ; 0x7B
#_02D375: db $01 ; 0x7C
#_02D376: db $01 ; 0x7D
#_02D377: db $11 ; 0x7E
#_02D378: db $01 ; 0x7F
#_02D379: db $00 ; 0x80
#_02D37A: db $00 ; 0x81
#_02D37B: db $00 ; 0x82
#_02D37C: db $00 ; 0x83
#_02D37D: db $00 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes upper nibble to $A6
; writes lower nibble to $A7
.camera_scroll_controller
#_02D37E: db $00 ; 0x00
#_02D37F: db $00 ; 0x01
#_02D380: db $22 ; 0x02
#_02D381: db $02 ; 0x03
#_02D382: db $22 ; 0x04
#_02D383: db $22 ; 0x05
#_02D384: db $22 ; 0x06
#_02D385: db $22 ; 0x07
#_02D386: db $20 ; 0x08
#_02D387: db $22 ; 0x09
#_02D388: db $00 ; 0x0A
#_02D389: db $00 ; 0x0B
#_02D38A: db $00 ; 0x0C
#_02D38B: db $00 ; 0x0D
#_02D38C: db $00 ; 0x0E
#_02D38D: db $00 ; 0x0F
#_02D38E: db $00 ; 0x10
#_02D38F: db $00 ; 0x11
#_02D390: db $02 ; 0x12
#_02D391: db $22 ; 0x13
#_02D392: db $22 ; 0x14
#_02D393: db $00 ; 0x15
#_02D394: db $22 ; 0x16
#_02D395: db $02 ; 0x17
#_02D396: db $02 ; 0x18
#_02D397: db $00 ; 0x19
#_02D398: db $22 ; 0x1A
#_02D399: db $22 ; 0x1B
#_02D39A: db $02 ; 0x1C
#_02D39B: db $22 ; 0x1D
#_02D39C: db $20 ; 0x1E
#_02D39D: db $20 ; 0x1F
#_02D39E: db $20 ; 0x20
#_02D39F: db $22 ; 0x21
#_02D3A0: db $22 ; 0x22
#_02D3A1: db $22 ; 0x23
#_02D3A2: db $00 ; 0x24
#_02D3A3: db $22 ; 0x25
#_02D3A4: db $20 ; 0x26
#_02D3A5: db $20 ; 0x27
#_02D3A6: db $00 ; 0x28
#_02D3A7: db $00 ; 0x29
#_02D3A8: db $00 ; 0x2A
#_02D3A9: db $02 ; 0x2B
#_02D3AA: db $02 ; 0x2C
#_02D3AB: db $00 ; 0x2D
#_02D3AC: db $22 ; 0x2E
#_02D3AD: db $22 ; 0x2F
#_02D3AE: db $02 ; 0x30
#_02D3AF: db $22 ; 0x31
#_02D3B0: db $20 ; 0x32
#_02D3B1: db $22 ; 0x33
#_02D3B2: db $22 ; 0x34
#_02D3B3: db $02 ; 0x35
#_02D3B4: db $02 ; 0x36
#_02D3B5: db $22 ; 0x37
#_02D3B6: db $00 ; 0x38
#_02D3B7: db $20 ; 0x39
#_02D3B8: db $22 ; 0x3A
#_02D3B9: db $00 ; 0x3B
#_02D3BA: db $00 ; 0x3C
#_02D3BB: db $00 ; 0x3D
#_02D3BC: db $00 ; 0x3E
#_02D3BD: db $00 ; 0x3F
#_02D3BE: db $00 ; 0x40
#_02D3BF: db $22 ; 0x41
#_02D3C0: db $02 ; 0x42
#_02D3C1: db $02 ; 0x43
#_02D3C2: db $00 ; 0x44
#_02D3C3: db $00 ; 0x45
#_02D3C4: db $00 ; 0x46
#_02D3C5: db $00 ; 0x47
#_02D3C6: db $00 ; 0x48
#_02D3C7: db $00 ; 0x49
#_02D3C8: db $00 ; 0x4A
#_02D3C9: db $00 ; 0x4B
#_02D3CA: db $00 ; 0x4C
#_02D3CB: db $02 ; 0x4D
#_02D3CC: db $20 ; 0x4E
#_02D3CD: db $00 ; 0x4F
#_02D3CE: db $02 ; 0x50
#_02D3CF: db $00 ; 0x51
#_02D3D0: db $00 ; 0x52
#_02D3D1: db $00 ; 0x53
#_02D3D2: db $00 ; 0x54
#_02D3D3: db $02 ; 0x55
#_02D3D4: db $00 ; 0x56
#_02D3D5: db $00 ; 0x57
#_02D3D6: db $00 ; 0x58
#_02D3D7: db $00 ; 0x59
#_02D3D8: db $02 ; 0x5A
#_02D3D9: db $02 ; 0x5B
#_02D3DA: db $00 ; 0x5C
#_02D3DB: db $02 ; 0x5D
#_02D3DC: db $00 ; 0x5E
#_02D3DD: db $02 ; 0x5F
#_02D3DE: db $00 ; 0x60
#_02D3DF: db $20 ; 0x61
#_02D3E0: db $00 ; 0x62
#_02D3E1: db $00 ; 0x63
#_02D3E2: db $00 ; 0x64
#_02D3E3: db $00 ; 0x65
#_02D3E4: db $00 ; 0x66
#_02D3E5: db $00 ; 0x67
#_02D3E6: db $00 ; 0x68
#_02D3E7: db $02 ; 0x69
#_02D3E8: db $02 ; 0x6A
#_02D3E9: db $00 ; 0x6B
#_02D3EA: db $00 ; 0x6C
#_02D3EB: db $00 ; 0x6D
#_02D3EC: db $00 ; 0x6E
#_02D3ED: db $00 ; 0x6F
#_02D3EE: db $00 ; 0x70
#_02D3EF: db $00 ; 0x71
#_02D3F0: db $00 ; 0x72
#_02D3F1: db $20 ; 0x73
#_02D3F2: db $22 ; 0x74
#_02D3F3: db $00 ; 0x75
#_02D3F4: db $02 ; 0x76
#_02D3F5: db $02 ; 0x77
#_02D3F6: db $22 ; 0x78
#_02D3F7: db $02 ; 0x79
#_02D3F8: db $02 ; 0x7A
#_02D3F9: db $00 ; 0x7B
#_02D3FA: db $02 ; 0x7C
#_02D3FB: db $20 ; 0x7D
#_02D3FC: db $00 ; 0x7E
#_02D3FD: db $02 ; 0x7F
#_02D3FE: db $20 ; 0x80
#_02D3FF: db $02 ; 0x81
#_02D400: db $00 ; 0x82
#_02D401: db $00 ; 0x83
#_02D402: db $00 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes upper nibble to $A9
; writes lower nibble to $AA
.quadrant
#_02D403: db $02 ; 0x00
#_02D404: db $02 ; 0x01
#_02D405: db $02 ; 0x02
#_02D406: db $12 ; 0x03
#_02D407: db $02 ; 0x04
#_02D408: db $02 ; 0x05
#_02D409: db $02 ; 0x06
#_02D40A: db $12 ; 0x07
#_02D40B: db $02 ; 0x08
#_02D40C: db $02 ; 0x09
#_02D40D: db $12 ; 0x0A
#_02D40E: db $02 ; 0x0B
#_02D40F: db $02 ; 0x0C
#_02D410: db $12 ; 0x0D
#_02D411: db $02 ; 0x0E
#_02D412: db $12 ; 0x0F
#_02D413: db $02 ; 0x10
#_02D414: db $02 ; 0x11
#_02D415: db $12 ; 0x12
#_02D416: db $02 ; 0x13
#_02D417: db $12 ; 0x14
#_02D418: db $12 ; 0x15
#_02D419: db $02 ; 0x16
#_02D41A: db $12 ; 0x17
#_02D41B: db $02 ; 0x18
#_02D41C: db $12 ; 0x19
#_02D41D: db $02 ; 0x1A
#_02D41E: db $12 ; 0x1B
#_02D41F: db $02 ; 0x1C
#_02D420: db $12 ; 0x1D
#_02D421: db $12 ; 0x1E
#_02D422: db $02 ; 0x1F
#_02D423: db $02 ; 0x20
#_02D424: db $02 ; 0x21
#_02D425: db $02 ; 0x22
#_02D426: db $02 ; 0x23
#_02D427: db $02 ; 0x24
#_02D428: db $02 ; 0x25
#_02D429: db $02 ; 0x26
#_02D42A: db $02 ; 0x27
#_02D42B: db $02 ; 0x28
#_02D42C: db $02 ; 0x29
#_02D42D: db $02 ; 0x2A
#_02D42E: db $02 ; 0x2B
#_02D42F: db $02 ; 0x2C
#_02D430: db $12 ; 0x2D
#_02D431: db $02 ; 0x2E
#_02D432: db $12 ; 0x2F
#_02D433: db $02 ; 0x30
#_02D434: db $02 ; 0x31
#_02D435: db $02 ; 0x32
#_02D436: db $02 ; 0x33
#_02D437: db $02 ; 0x34
#_02D438: db $12 ; 0x35
#_02D439: db $02 ; 0x36
#_02D43A: db $02 ; 0x37
#_02D43B: db $12 ; 0x38
#_02D43C: db $12 ; 0x39
#_02D43D: db $12 ; 0x3A
#_02D43E: db $02 ; 0x3B
#_02D43F: db $02 ; 0x3C
#_02D440: db $12 ; 0x3D
#_02D441: db $02 ; 0x3E
#_02D442: db $02 ; 0x3F
#_02D443: db $02 ; 0x40
#_02D444: db $12 ; 0x41
#_02D445: db $02 ; 0x42
#_02D446: db $00 ; 0x43
#_02D447: db $02 ; 0x44
#_02D448: db $02 ; 0x45
#_02D449: db $12 ; 0x46
#_02D44A: db $02 ; 0x47
#_02D44B: db $02 ; 0x48
#_02D44C: db $02 ; 0x49
#_02D44D: db $02 ; 0x4A
#_02D44E: db $02 ; 0x4B
#_02D44F: db $02 ; 0x4C
#_02D450: db $02 ; 0x4D
#_02D451: db $02 ; 0x4E
#_02D452: db $02 ; 0x4F
#_02D453: db $02 ; 0x50
#_02D454: db $02 ; 0x51
#_02D455: db $02 ; 0x52
#_02D456: db $02 ; 0x53
#_02D457: db $12 ; 0x54
#_02D458: db $02 ; 0x55
#_02D459: db $12 ; 0x56
#_02D45A: db $02 ; 0x57
#_02D45B: db $12 ; 0x58
#_02D45C: db $02 ; 0x59
#_02D45D: db $02 ; 0x5A
#_02D45E: db $02 ; 0x5B
#_02D45F: db $02 ; 0x5C
#_02D460: db $02 ; 0x5D
#_02D461: db $12 ; 0x5E
#_02D462: db $02 ; 0x5F
#_02D463: db $02 ; 0x60
#_02D464: db $02 ; 0x61
#_02D465: db $12 ; 0x62
#_02D466: db $12 ; 0x63
#_02D467: db $02 ; 0x64
#_02D468: db $02 ; 0x65
#_02D469: db $12 ; 0x66
#_02D46A: db $12 ; 0x67
#_02D46B: db $12 ; 0x68
#_02D46C: db $02 ; 0x69
#_02D46D: db $12 ; 0x6A
#_02D46E: db $02 ; 0x6B
#_02D46F: db $02 ; 0x6C
#_02D470: db $02 ; 0x6D
#_02D471: db $12 ; 0x6E
#_02D472: db $02 ; 0x6F
#_02D473: db $12 ; 0x70
#_02D474: db $02 ; 0x71
#_02D475: db $12 ; 0x72
#_02D476: db $10 ; 0x73
#_02D477: db $02 ; 0x74
#_02D478: db $00 ; 0x75
#_02D479: db $10 ; 0x76
#_02D47A: db $00 ; 0x77
#_02D47B: db $10 ; 0x78
#_02D47C: db $10 ; 0x79
#_02D47D: db $10 ; 0x7A
#_02D47E: db $10 ; 0x7B
#_02D47F: db $02 ; 0x7C
#_02D480: db $10 ; 0x7D
#_02D481: db $12 ; 0x7E
#_02D482: db $02 ; 0x7F
#_02D483: db $02 ; 0x80
#_02D484: db $12 ; 0x81
#_02D485: db $02 ; 0x82
#_02D486: db $02 ; 0x83
#_02D487: db $02 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $0696
.overworld_door_tilemap
#_02D488: dw $0816 ; 0x00
#_02D48A: dw $0816 ; 0x01
#_02D48C: dw $0000 ; 0x02
#_02D48E: dw $0000 ; 0x03
#_02D490: dw $0000 ; 0x04
#_02D492: dw $0000 ; 0x05
#_02D494: dw $0000 ; 0x06
#_02D496: dw $0000 ; 0x07
#_02D498: dw $0000 ; 0x08
#_02D49A: dw $0000 ; 0x09
#_02D49C: dw $0000 ; 0x0A
#_02D49E: dw $0000 ; 0x0B
#_02D4A0: dw $0000 ; 0x0C
#_02D4A2: dw $05CC ; 0x0D
#_02D4A4: dw $05D4 ; 0x0E
#_02D4A6: dw $0BB6 ; 0x0F
#_02D4A8: dw $0B86 ; 0x10
#_02D4AA: dw $0000 ; 0x11
#_02D4AC: dw $0000 ; 0x12
#_02D4AE: dw $0000 ; 0x13
#_02D4B0: dw $0000 ; 0x14
#_02D4B2: dw $0000 ; 0x15
#_02D4B4: dw $0000 ; 0x16
#_02D4B6: dw $0000 ; 0x17
#_02D4B8: dw $0000 ; 0x18
#_02D4BA: dw $0000 ; 0x19
#_02D4BC: dw $0000 ; 0x1A
#_02D4BE: dw $0000 ; 0x1B
#_02D4C0: dw $0000 ; 0x1C
#_02D4C2: dw $0000 ; 0x1D
#_02D4C4: dw $0000 ; 0x1E
#_02D4C6: dw $0000 ; 0x1F
#_02D4C8: dw $0000 ; 0x20
#_02D4CA: dw $0000 ; 0x21
#_02D4CC: dw $0000 ; 0x22
#_02D4CE: dw $0000 ; 0x23
#_02D4D0: dw $0000 ; 0x24
#_02D4D2: dw $0000 ; 0x25
#_02D4D4: dw $0000 ; 0x26
#_02D4D6: dw $0000 ; 0x27
#_02D4D8: dw $0000 ; 0x28
#_02D4DA: dw $0000 ; 0x29
#_02D4DC: dw $0000 ; 0x2A
#_02D4DE: dw $0000 ; 0x2B
#_02D4E0: dw $0000 ; 0x2C
#_02D4E2: dw $0000 ; 0x2D
#_02D4E4: dw $0000 ; 0x2E
#_02D4E6: dw $0000 ; 0x2F
#_02D4E8: dw $0000 ; 0x30
#_02D4EA: dw $0000 ; 0x31
#_02D4EC: dw $0000 ; 0x32
#_02D4EE: dw $0000 ; 0x33
#_02D4F0: dw $0000 ; 0x34
#_02D4F2: dw $0000 ; 0x35
#_02D4F4: dw $0000 ; 0x36
#_02D4F6: dw $0000 ; 0x37
#_02D4F8: dw $0000 ; 0x38
#_02D4FA: dw $0000 ; 0x39
#_02D4FC: dw $0000 ; 0x3A
#_02D4FE: dw $0000 ; 0x3B
#_02D500: dw $0000 ; 0x3C
#_02D502: dw $0000 ; 0x3D
#_02D504: dw $0DE8 ; 0x3E
#_02D506: dw $0B98 ; 0x3F
#_02D508: dw $14CE ; 0x40
#_02D50A: dw $0000 ; 0x41
#_02D50C: dw $1C50 ; 0x42
#_02D50E: dw $FFFF ; 0x43
#_02D510: dw $1466 ; 0x44
#_02D512: dw $0000 ; 0x45
#_02D514: dw $1AB6 ; 0x46
#_02D516: dw $0B98 ; 0x47
#_02D518: dw $1AB6 ; 0x48
#_02D51A: dw $040E ; 0x49
#_02D51C: dw $9C0C ; 0x4A
#_02D51E: dw $1530 ; 0x4B
#_02D520: dw $0A98 ; 0x4C
#_02D522: dw $0000 ; 0x4D
#_02D524: dw $0000 ; 0x4E
#_02D526: dw $0000 ; 0x4F
#_02D528: dw $0000 ; 0x50
#_02D52A: dw $0000 ; 0x51
#_02D52C: dw $0000 ; 0x52
#_02D52E: dw $0816 ; 0x53
#_02D530: dw $0DE8 ; 0x54
#_02D532: dw $0000 ; 0x55
#_02D534: dw $0000 ; 0x56
#_02D536: dw $0AA8 ; 0x57
#_02D538: dw $0000 ; 0x58
#_02D53A: dw $09AC ; 0x59
#_02D53C: dw $0000 ; 0x5A
#_02D53E: dw $0000 ; 0x5B
#_02D540: dw $0000 ; 0x5C
#_02D542: dw $0000 ; 0x5D
#_02D544: dw $0000 ; 0x5E
#_02D546: dw $0000 ; 0x5F
#_02D548: dw $0000 ; 0x60
#_02D54A: dw $0000 ; 0x61
#_02D54C: dw $0000 ; 0x62
#_02D54E: dw $0000 ; 0x63
#_02D550: dw $041A ; 0x64
#_02D552: dw $0000 ; 0x65
#_02D554: dw $091E ; 0x66
#_02D556: dw $09AC ; 0x67
#_02D558: dw $0000 ; 0x68
#_02D55A: dw $0000 ; 0x69
#_02D55C: dw $0000 ; 0x6A
#_02D55E: dw $07AA ; 0x6B
#_02D560: dw $0000 ; 0x6C
#_02D562: dw $0000 ; 0x6D
#_02D564: dw $0000 ; 0x6E
#_02D566: dw $0000 ; 0x6F
#_02D568: dw $0000 ; 0x70
#_02D56A: dw $0000 ; 0x71
#_02D56C: dw $0000 ; 0x72
#_02D56E: dw $0000 ; 0x73
#_02D570: dw $0000 ; 0x74
#_02D572: dw $0000 ; 0x75
#_02D574: dw $0000 ; 0x76
#_02D576: dw $0000 ; 0x77
#_02D578: dw $0000 ; 0x78
#_02D57A: dw $0000 ; 0x79
#_02D57C: dw $0000 ; 0x7A
#_02D57E: dw $0000 ; 0x7B
#_02D580: dw $0000 ; 0x7C
#_02D582: dw $0000 ; 0x7D
#_02D584: dw $0000 ; 0x7E
#_02D586: dw $0000 ; 0x7F
#_02D588: dw $0000 ; 0x80
#_02D58A: dw $0000 ; 0x81
#_02D58C: dw $0000 ; 0x82
#_02D58E: dw $0000 ; 0x83
#_02D590: dw $0000 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $0132
.song
#_02D592: db $FF ; 0x00 - SONG FF
#_02D593: db $07 ; 0x01 - SONG 07
#_02D594: db $14 ; 0x02 - SONG 14
#_02D595: db $10 ; 0x03 - SONG 10
#_02D596: db $10 ; 0x04 - SONG 10
#_02D597: db $10 ; 0x05 - SONG 10
#_02D598: db $12 ; 0x06 - SONG 12
#_02D599: db $12 ; 0x07 - SONG 12
#_02D59A: db $11 ; 0x08 - SONG 11
#_02D59B: db $11 ; 0x09 - SONG 11
#_02D59C: db $11 ; 0x0A - SONG 11
#_02D59D: db $11 ; 0x0B - SONG 11
#_02D59E: db $11 ; 0x0C - SONG 11
#_02D59F: db $F2 ; 0x0D - SONG F2
#_02D5A0: db $F2 ; 0x0E - SONG F2
#_02D5A1: db $F2 ; 0x0F - SONG F2
#_02D5A2: db $F2 ; 0x10 - SONG F2
#_02D5A3: db $18 ; 0x11 - SONG 18
#_02D5A4: db $1B ; 0x12 - SONG 1B
#_02D5A5: db $12 ; 0x13 - SONG 12
#_02D5A6: db $12 ; 0x14 - SONG 12
#_02D5A7: db $16 ; 0x15 - SONG 16
#_02D5A8: db $12 ; 0x16 - SONG 12
#_02D5A9: db $12 ; 0x17 - SONG 12
#_02D5AA: db $16 ; 0x18 - SONG 16
#_02D5AB: db $16 ; 0x19 - SONG 16
#_02D5AC: db $12 ; 0x1A - SONG 12
#_02D5AD: db $12 ; 0x1B - SONG 12
#_02D5AE: db $12 ; 0x1C - SONG 12
#_02D5AF: db $12 ; 0x1D - SONG 12
#_02D5B0: db $12 ; 0x1E - SONG 12
#_02D5B1: db $12 ; 0x1F - SONG 12
#_02D5B2: db $12 ; 0x20 - SONG 12
#_02D5B3: db $12 ; 0x21 - SONG 12
#_02D5B4: db $12 ; 0x22 - SONG 12
#_02D5B5: db $12 ; 0x23 - SONG 12
#_02D5B6: db $10 ; 0x24 - SONG 10
#_02D5B7: db $16 ; 0x25 - SONG 16
#_02D5B8: db $16 ; 0x26 - SONG 16
#_02D5B9: db $16 ; 0x27 - SONG 16
#_02D5BA: db $16 ; 0x28 - SONG 16
#_02D5BB: db $16 ; 0x29 - SONG 16
#_02D5BC: db $16 ; 0x2A - SONG 16
#_02D5BD: db $16 ; 0x2B - SONG 16
#_02D5BE: db $18 ; 0x2C - SONG 18
#_02D5BF: db $16 ; 0x2D - SONG 16
#_02D5C0: db $12 ; 0x2E - SONG 12
#_02D5C1: db $12 ; 0x2F - SONG 12
#_02D5C2: db $12 ; 0x30 - SONG 12
#_02D5C3: db $12 ; 0x31 - SONG 12
#_02D5C4: db $03 ; 0x32 - SONG 03
#_02D5C5: db $11 ; 0x33 - SONG 11
#_02D5C6: db $16 ; 0x34 - SONG 16
#_02D5C7: db $16 ; 0x35 - SONG 16
#_02D5C8: db $1C ; 0x36 - SONG 1C
#_02D5C9: db $16 ; 0x37 - SONG 16
#_02D5CA: db $1B ; 0x38 - SONG 1B
#_02D5CB: db $12 ; 0x39 - SONG 12
#_02D5CC: db $12 ; 0x3A - SONG 12
#_02D5CD: db $12 ; 0x3B - SONG 12
#_02D5CE: db $0E ; 0x3C - SONG 0E
#_02D5CF: db $12 ; 0x3D - SONG 12
#_02D5D0: db $F2 ; 0x3E - SONG F2
#_02D5D1: db $F2 ; 0x3F - SONG F2
#_02D5D2: db $F2 ; 0x40 - SONG F2
#_02D5D3: db $12 ; 0x41 - SONG 12
#_02D5D4: db $F2 ; 0x42 - SONG F2
#_02D5D5: db $F2 ; 0x43 - SONG F2
#_02D5D6: db $F2 ; 0x44 - SONG F2
#_02D5D7: db $18 ; 0x45 - SONG 18
#_02D5D8: db $17 ; 0x46 - SONG 17
#_02D5D9: db $0E ; 0x47 - SONG 0E
#_02D5DA: db $F2 ; 0x48 - SONG F2
#_02D5DB: db $F2 ; 0x49 - SONG F2
#_02D5DC: db $F2 ; 0x4A - SONG F2
#_02D5DD: db $F2 ; 0x4B - SONG F2
#_02D5DE: db $F2 ; 0x4C - SONG F2
#_02D5DF: db $18 ; 0x4D - SONG 18
#_02D5E0: db $18 ; 0x4E - SONG 18
#_02D5E1: db $12 ; 0x4F - SONG 12
#_02D5E2: db $12 ; 0x50 - SONG 12
#_02D5E3: db $18 ; 0x51 - SONG 18
#_02D5E4: db $18 ; 0x52 - SONG 18
#_02D5E5: db $F2 ; 0x53 - SONG F2
#_02D5E6: db $F2 ; 0x54 - SONG F2
#_02D5E7: db $1B ; 0x55 - SONG 1B
#_02D5E8: db $1B ; 0x56 - SONG 1B
#_02D5E9: db $17 ; 0x57 - SONG 17
#_02D5EA: db $12 ; 0x58 - SONG 12
#_02D5EB: db $0E ; 0x59 - SONG 0E
#_02D5EC: db $12 ; 0x5A - SONG 12
#_02D5ED: db $18 ; 0x5B - SONG 18
#_02D5EE: db $18 ; 0x5C - SONG 18
#_02D5EF: db $18 ; 0x5D - SONG 18
#_02D5F0: db $1B ; 0x5E - SONG 1B
#_02D5F1: db $12 ; 0x5F - SONG 12
#_02D5F2: db $17 ; 0x60 - SONG 17
#_02D5F3: db $F2 ; 0x61 - SONG F2
#_02D5F4: db $12 ; 0x62 - SONG 12
#_02D5F5: db $18 ; 0x63 - SONG 18
#_02D5F6: db $F2 ; 0x64 - SONG F2
#_02D5F7: db $17 ; 0x65 - SONG 17
#_02D5F8: db $17 ; 0x66 - SONG 17
#_02D5F9: db $0E ; 0x67 - SONG 0E
#_02D5FA: db $18 ; 0x68 - SONG 18
#_02D5FB: db $12 ; 0x69 - SONG 12
#_02D5FC: db $12 ; 0x6A - SONG 12
#_02D5FD: db $F2 ; 0x6B - SONG F2
#_02D5FE: db $12 ; 0x6C - SONG 12
#_02D5FF: db $12 ; 0x6D - SONG 12
#_02D600: db $12 ; 0x6E - SONG 12
#_02D601: db $12 ; 0x6F - SONG 12
#_02D602: db $12 ; 0x70 - SONG 12
#_02D603: db $1B ; 0x71 - SONG 1B
#_02D604: db $12 ; 0x72 - SONG 12
#_02D605: db $FF ; 0x73 - SONG FF
#_02D606: db $FF ; 0x74 - SONG FF
#_02D607: db $FF ; 0x75 - SONG FF
#_02D608: db $16 ; 0x76 - SONG 16
#_02D609: db $16 ; 0x77 - SONG 16
#_02D60A: db $16 ; 0x78 - SONG 16
#_02D60B: db $16 ; 0x79 - SONG 16
#_02D60C: db $18 ; 0x7A - SONG 18
#_02D60D: db $15 ; 0x7B - SONG 15
#_02D60E: db $1B ; 0x7C - SONG 1B
#_02D60F: db $03 ; 0x7D - SONG 03
#_02D610: db $18 ; 0x7E - SONG 18
#_02D611: db $1B ; 0x7F - SONG 1B
#_02D612: db $12 ; 0x80 - SONG 12
#_02D613: db $10 ; 0x81 - SONG 10
#_02D614: db $12 ; 0x82 - SONG 12
#_02D615: db $12 ; 0x83 - SONG 12
#_02D616: db $1B ; 0x84 - SONG 1B

;===================================================================================================

Underworld_LoadEntrance:
#_02D617: PHB
#_02D618: PHK
#_02D619: PLB

#_02D61A: LDA.b #$01
#_02D61C: STA.b $1B

#_02D61E: LDA.w $010A
#_02D621: BEQ .recache

#_02D623: STZ.w $010A

#_02D626: JMP.w .continue

;---------------------------------------------------------------------------------------------------

.recache
#_02D629: REP #$20

#_02D62B: LDA.w $040A
#_02D62E: STA.l $7EC140

#_02D632: LDA.b $1C
#_02D634: STA.l $7EC142

#_02D638: LDA.b $E8
#_02D63A: STA.l $7EC144

#_02D63E: LDA.b $E2
#_02D640: STA.l $7EC146

#_02D644: LDA.b $20
#_02D646: STA.l $7EC148

#_02D64A: LDA.b $22
#_02D64C: STA.l $7EC14A

#_02D650: LDA.w $0618
#_02D653: STA.l $7EC150

#_02D657: LDA.w $061C
#_02D65A: STA.l $7EC152

#_02D65E: LDA.b $8A
#_02D660: STA.l $7EC14C

#_02D664: LDA.b $84
#_02D666: STA.l $7EC14E

#_02D66A: STZ.b $8A
#_02D66C: STZ.b $8C

#_02D66E: LDA.w $0600
#_02D671: STA.l $7EC154

#_02D675: LDA.w $0602
#_02D678: STA.l $7EC156

#_02D67C: LDA.w $0604
#_02D67F: STA.l $7EC158

#_02D683: LDA.w $0606
#_02D686: STA.l $7EC15A

#_02D68A: LDA.w $0610
#_02D68D: STA.l $7EC15C

#_02D691: LDA.w $0612
#_02D694: STA.l $7EC15E

#_02D698: LDA.w $0614
#_02D69B: STA.l $7EC160

#_02D69F: LDA.w $0616
#_02D6A2: STA.l $7EC162

#_02D6A6: LDA.w $0624
#_02D6A9: STA.l $7EC16A

#_02D6AD: LDA.w $0626
#_02D6B0: STA.l $7EC16C

#_02D6B4: LDA.w $0628
#_02D6B7: STA.l $7EC16E

#_02D6BB: LDA.w $062A
#_02D6BE: STA.l $7EC170

#_02D6C2: SEP #$20

#_02D6C4: LDA.w $0AA0
#_02D6C7: STA.l $7EC164

#_02D6CB: LDA.w $0AA1
#_02D6CE: STA.l $7EC165

#_02D6D2: LDA.w $0AA2
#_02D6D5: STA.l $7EC166

#_02D6D9: LDA.w $0AA3
#_02D6DC: STA.l $7EC167

;---------------------------------------------------------------------------------------------------

.continue
#_02D6E0: REP #$30

#_02D6E2: STZ.w $011A
#_02D6E5: STZ.w $011C
#_02D6E8: STZ.w $010A

#_02D6EB: LDA.l $7EF3CC
#_02D6EF: CMP.w #$04 ; FOLLOWER 04
#_02D6F2: BEQ .have_old_man

#_02D6F4: LDA.w $04AA
#_02D6F7: BEQ .not_a_respawn

.have_old_man
#_02D6F9: JMP.w Underworld_LoadSpawnEntrance

;---------------------------------------------------------------------------------------------------

.not_a_respawn
#_02D6FC: LDA.w $010E ; get dungeon entrance
#_02D6FF: AND.w #$00FF

#_02D702: ASL A
#_02D703: TAX

#_02D704: ASL A
#_02D705: ASL A
#_02D706: TAY

#_02D707: LDA.w EntranceData_room_id,X
#_02D70A: STA.b $A0
#_02D70C: STA.w $048E

#_02D70F: LDA.w EntranceData_vertical_scroll,X
#_02D712: STA.b $E8
#_02D714: STA.b $E6
#_02D716: STA.w $0122
#_02D719: STA.w $0124

#_02D71C: LDA.w EntranceData_horizontal_scroll,X
#_02D71F: STA.b $E2
#_02D721: STA.b $E0
#_02D723: STA.w $011E
#_02D726: STA.w $0120

#_02D729: LDA.l $7EF3C5
#_02D72D: BEQ .skip_coordinates

#_02D72F: LDA.w EntranceData_y_coordinate,X
#_02D732: STA.b $20

#_02D734: LDA.w EntranceData_x_coordinate,X
#_02D737: STA.b $22

;---------------------------------------------------------------------------------------------------

.skip_coordinates
#_02D739: LDA.w EntranceData_camera_trigger_y,X
#_02D73C: STA.w $0618

#_02D73F: INC A
#_02D740: INC A
#_02D741: STA.w $061A

#_02D744: LDA.w EntranceData_camera_trigger_x,X
#_02D747: STA.w $061C

#_02D74A: INC A
#_02D74B: INC A
#_02D74C: STA.w $061E

#_02D74F: LDA.w #$01F8
#_02D752: STA.b $EC

#_02D754: LDA.w EntranceData_overworld_door_tilemap,X
#_02D757: STA.w $0696
#_02D75A: STZ.w $0698

#_02D75D: LDA.w #$0000
#_02D760: STA.w $0610

#_02D763: LDA.w #$0110
#_02D766: STA.w $0612

#_02D769: LDA.w #$0000
#_02D76C: STA.w $0614

#_02D76F: LDA.w #$0100
#_02D772: STA.w $0616

#_02D775: LDA.w $010E
#_02D778: AND.w #$00FF
#_02D77B: TAX

;---------------------------------------------------------------------------------------------------

#_02D77C: SEP #$20

#_02D77E: LDA.w EntranceData_camera_scroll_boundaries+0,Y
#_02D781: STA.w $0601

#_02D784: LDA.w EntranceData_camera_scroll_boundaries+1,Y
#_02D787: STA.w $0603

#_02D78A: LDA.w EntranceData_camera_scroll_boundaries+2,Y
#_02D78D: STA.w $0605

#_02D790: LDA.w EntranceData_camera_scroll_boundaries+3,Y
#_02D793: STA.w $0607

#_02D796: LDA.w EntranceData_camera_scroll_boundaries+4,Y
#_02D799: STA.w $0609

#_02D79C: LDA.w EntranceData_camera_scroll_boundaries+5,Y
#_02D79F: STA.w $060B

#_02D7A2: LDA.w EntranceData_camera_scroll_boundaries+6,Y
#_02D7A5: STA.w $060D

#_02D7A8: LDA.w EntranceData_camera_scroll_boundaries+7,Y
#_02D7AB: STA.w $060F

#_02D7AE: STZ.w $0600
#_02D7B1: STZ.w $0602

#_02D7B4: LDA.b #$10
#_02D7B6: STA.w $0604
#_02D7B9: STA.w $0606

#_02D7BC: STZ.w $0608
#_02D7BF: STZ.w $060A
#_02D7C2: STZ.w $060C
#_02D7C5: STZ.w $060E

;---------------------------------------------------------------------------------------------------

; should Link face up or down after this entrance?
#_02D7C8: LDA.b #$02

#_02D7CA: CPX.w #$0000
#_02D7CD: BEQ .face_up

#_02D7CF: CPX.w #$0043
#_02D7D2: BEQ .face_up

#_02D7D4: LDA.b #$00

.face_up
#_02D7D6: STA.b $2F

#_02D7D8: LDA.w EntranceData_main_GFX,X
#_02D7DB: STA.w $0AA1

#_02D7DE: LDA.w EntranceData_song,X
#_02D7E1: STA.w $0132

; was the song requested the legends theme?
#_02D7E4: CMP.b #$03 ; SONG 03
#_02D7E6: BNE .no_song_override

#_02D7E8: LDA.l $7EF3C5 ; have we rescued zelda?
#_02D7EC: CMP.b #$02
#_02D7EE: BCC .no_song_override

; change it to caves theme
#_02D7F0: LDA.b #$12 ; SONG 12
#_02D7F2: STA.w $0132

.no_song_override
#_02D7F5: LDA.w EntranceData_floor,X
#_02D7F8: STA.b $A4

#_02D7FA: LDA.w EntranceData_dungeon_id,X
#_02D7FD: STA.w $040C

#_02D800: LDA.w EntranceData_in_door,X
#_02D803: STA.b $6C

#_02D805: LDA.w EntranceData_layer,X
#_02D808: LSR A
#_02D809: LSR A
#_02D80A: LSR A
#_02D80B: LSR A
#_02D80C: STA.b $EE

#_02D80E: LDA.w EntranceData_layer,X
#_02D811: AND.b #$0F
#_02D813: STA.w $0476

#_02D816: LDA.w EntranceData_camera_scroll_controller,X
#_02D819: LSR A
#_02D81A: LSR A
#_02D81B: LSR A
#_02D81C: LSR A
#_02D81D: STA.b $A6

#_02D81F: LDA.w EntranceData_camera_scroll_controller,X
#_02D822: AND.b #$0F
#_02D824: STA.b $A7

#_02D826: LDA.w EntranceData_quadrant,X
#_02D829: LSR A
#_02D82A: LSR A
#_02D82B: LSR A
#_02D82C: LSR A
#_02D82D: STA.b $A9

#_02D82F: LDA.w EntranceData_quadrant,X
#_02D832: AND.b #$0F
#_02D834: STA.b $AA

; Single entrance caves are always floor 1F
#_02D836: LDX.b $A0
#_02D838: CPX.w #$0100
#_02D83B: BCC Underworld_LoadEntrance_DoPotsBlocksTorches

#_02D83D: STZ.b $A4

;===================================================================================================

Underworld_LoadEntrance_DoPotsBlocksTorches:
#_02D83F: LDA.b #$80
#_02D841: STA.b $45
#_02D843: STA.b $44

#_02D845: LDA.b #$0F
#_02D847: STA.b $42
#_02D849: STA.b $43

#_02D84B: LDA.b #$FF
#_02D84D: STA.b $24
#_02D84F: STA.b $29

#_02D851: SEP #$30

#_02D853: PLB
#_02D854: PHB

#_02D855: LDA.b #$7E
#_02D857: PHA
#_02D858: PLB

;---------------------------------------------------------------------------------------------------

#_02D859: REP #$20

#_02D85B: LDX.b #$00

.next_block_torch
#_02D85D: LDA.l SpecialUnderworldObjects_pushable_block+0*128,X
#_02D861: STA.w $7EF940,X

#_02D864: LDA.l SpecialUnderworldObjects_pushable_block+1*128,X
#_02D868: STA.w $7EF9C0,X

#_02D86B: LDA.l SpecialUnderworldObjects_pushable_block+2*128,X
#_02D86F: STA.w $7EFA40,X

#_02D872: LDA.l SpecialUnderworldObjects_pushable_block+3*128,X
#_02D876: STA.w $7EFAC0,X ; this leaks into torches a bit

#_02D879: LDA.l SpecialUnderworldObjects_torch+0*128,X
#_02D87D: STA.w $7EFB40,X

#_02D880: LDA.l SpecialUnderworldObjects_torch+1*128,X
#_02D884: STA.w $7EFBC0,X

#_02D887: LDA.l SpecialUnderworldObjects_torch+2*128,X
#_02D88B: STA.w $7EFC40,X ; this leaks a bit too

#_02D88E: INX
#_02D88F: INX
#_02D890: CPX.b #$80
#_02D892: BNE .next_block_torch

;---------------------------------------------------------------------------------------------------

#_02D894: LDX.b #$3E
#_02D896: LDA.w #$0000

.next_pot ; clears pot items that have been grabbed
#_02D899: STA.w $7EF800,X ; TODO what's being cleared here?
#_02D89C: STA.w $7EF840,X ; it's supposedly overworld stuff, but who cares?
#_02D89F: STA.w $7EF880,X ; maybe I care?
#_02D8A2: STA.w $7EF8C0,X

#_02D8A5: STA.w $7EF580,X ; this is clearing pot item grabs
#_02D8A8: STA.w $7EF5C0,X
#_02D8AB: STA.w $7EF600,X
#_02D8AE: STA.w $7EF640,X
#_02D8B1: STA.w $7EF680,X

#_02D8B4: STA.w $7EF6C0,X
#_02D8B7: STA.w $7EF700,X
#_02D8BA: STA.w $7EF740,X
#_02D8BD: STA.w $7EF780,X
#_02D8C0: STA.w $7EF7C0,X

#_02D8C3: DEX
#_02D8C4: DEX
#_02D8C5: BPL .next_pot

;---------------------------------------------------------------------------------------------------

#_02D8C7: STA.l $7EC172 ; reset orange/blue pegs

#_02D8CB: STZ.w $04BC

#_02D8CE: SEP #$30

#_02D8D0: PLB

#_02D8D1: RTS

;===================================================================================================

SpawnPointData:

; writes to $A0, $048E
.room_id
#_02D8D2: dw $0104 ; 0x00 - Link's house
#_02D8D4: dw $0012 ; 0x01 - Sanctuary
#_02D8D6: dw $0080 ; 0x02 - Prison
#_02D8D8: dw $0055 ; 0x03 - Uncle
#_02D8DA: dw $0051 ; 0x04 - Throne
#_02D8DC: dw $00F0 ; 0x05 - Old man cave
#_02D8DE: dw $00E4 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; to $0600   +$1, +$3, +$5, +$7, +$9, +$B, +$D, +$F
.camera_scroll_boundaries
#_02D8E0: db $21, $20, $21, $21, $09, $09, $09, $0A ; 0x00 - Link's house
#_02D8E8: db $02, $02, $02, $03, $04, $04, $04, $05 ; 0x01 - Sanctuary
#_02D8F0: db $10, $10, $10, $11, $01, $00, $01, $01 ; 0x02 - Prison
#_02D8F8: db $0A, $0A, $0A, $0B, $0B, $0A, $0B, $0B ; 0x03 - Uncle
#_02D900: db $0A, $0A, $0A, $0B, $02, $02, $02, $03 ; 0x04 - Throne
#_02D908: db $1E, $1E, $1E, $1F, $01, $00, $01, $01 ; 0x05 - Old man cave
#_02D910: db $1D, $1C, $1D, $1D, $08, $08, $08, $09 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to $E0, $E2, $011E, $0120
.horizontal_scroll
#_02D918: dw $0900 ; 0x00 - Link's house
#_02D91A: dw $0480 ; 0x01 - Sanctuary
#_02D91C: dw $00DB ; 0x02 - Prison
#_02D91E: dw $0A8E ; 0x03 - Uncle
#_02D920: dw $0280 ; 0x04 - Throne
#_02D922: dw $0100 ; 0x05 - Old man cave
#_02D924: dw $0800 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to $E6, $E8, $0122, $0124
.vertical_scroll
#_02D926: dw $2110 ; 0x00 - Link's house
#_02D928: dw $0231 ; 0x01 - Sanctuary
#_02D92A: dw $1000 ; 0x02 - Prison
#_02D92C: dw $0A03 ; 0x03 - Uncle
#_02D92E: dw $0A22 ; 0x04 - Throne
#_02D930: dw $1E8C ; 0x05 - Old man cave
#_02D932: dw $1D10 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to $20
.y_coordinate
#_02D934: dw $2178 ; 0x00 - Link's house
#_02D936: dw $029C ; 0x01 - Sanctuary
#_02D938: dw $1041 ; 0x02 - Prison
#_02D93A: dw $0A70 ; 0x03 - Uncle
#_02D93C: dw $0A8F ; 0x04 - Throne
#_02D93E: dw $1EF8 ; 0x05 - Old man cave
#_02D940: dw $1D98 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to 22
.x_coordinate
#_02D942: dw $0978 ; 0x00 - Link's house
#_02D944: dw $04F8 ; 0x01 - Sanctuary
#_02D946: dw $0160 ; 0x02 - Prison
#_02D948: dw $0B06 ; 0x03 - Uncle
#_02D94A: dw $02F8 ; 0x04 - Throne
#_02D94C: dw $01A8 ; 0x05 - Old man cave
#_02D94E: dw $0878 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to $0618, increments twice, writes to $061A
.camera_trigger_y
#_02D950: dw $017F ; 0x00 - Link's house
#_02D952: dw $00A7 ; 0x01 - Sanctuary
#_02D954: dw $0083 ; 0x02 - Prison
#_02D956: dw $007B ; 0x03 - Uncle
#_02D958: dw $009A ; 0x04 - Throne
#_02D95A: dw $0103 ; 0x05 - Old man cave
#_02D95C: dw $0187 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to $061C, increments twice, writes to $061E
.camera_trigger_x
#_02D95E: dw $017F ; 0x00 - Link's house
#_02D960: dw $00FF ; 0x01 - Sanctuary
#_02D962: dw $0167 ; 0x02 - Prison
#_02D964: dw $010D ; 0x03 - Uncle
#_02D966: dw $00FF ; 0x04 - Throne
#_02D968: dw $017F ; 0x05 - Old man cave
#_02D96A: dw $007F ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to $0AA1
.main_GFX
#_02D96C: db $03 ; 0x00 - Link's house
#_02D96D: db $04 ; 0x01 - Sanctuary
#_02D96E: db $04 ; 0x02 - Prison
#_02D96F: db $01 ; 0x03 - Uncle
#_02D970: db $04 ; 0x04 - Throne
#_02D971: db $06 ; 0x05 - Old man cave
#_02D972: db $14 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to $A4
.floor
#_02D973: db $00 ; 0x00 - Link's house
#_02D974: db $00 ; 0x01 - Sanctuary
#_02D975: db $FD ; 0x02 - Prison
#_02D976: db $FF ; 0x03 - Uncle
#_02D977: db $01 ; 0x04 - Throne
#_02D978: db $00 ; 0x05 - Old man cave
#_02D979: db $00 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to $040C
.dungeon_id
#_02D97A: db $FF ; 0x00 - Link's house
#_02D97B: db $00 ; 0x01 - Sanctuary
#_02D97C: db $02 ; 0x02 - Prison
#_02D97D: db $FF ; 0x03 - Uncle
#_02D97E: db $02 ; 0x04 - Throne
#_02D97F: db $FF ; 0x05 - Old man cave
#_02D980: db $FF ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes upper nibble to $EE
; writes lower nibble to $0476
.layer
#_02D981: db $00 ; 0x00 - Link's house
#_02D982: db $00 ; 0x01 - Sanctuary
#_02D983: db $00 ; 0x02 - Prison
#_02D984: db $01 ; 0x03 - Uncle
#_02D985: db $00 ; 0x04 - Throne
#_02D986: db $00 ; 0x05 - Old man cave
#_02D987: db $01 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes upper nibble to $A6
; writes lower nibble to $A7
.camera_scroll_controller
#_02D988: db $00 ; 0x00 - Link's house
#_02D989: db $22 ; 0x01 - Sanctuary
#_02D98A: db $20 ; 0x02 - Prison
#_02D98B: db $20 ; 0x03 - Uncle
#_02D98C: db $22 ; 0x04 - Throne
#_02D98D: db $22 ; 0x05 - Old man cave
#_02D98E: db $02 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes upper nibble to $A9
; writes lower nibble to $AA
.quadrant
#_02D98F: db $02 ; 0x00 - Link's house
#_02D990: db $00 ; 0x01 - Sanctuary
#_02D991: db $10 ; 0x02 - Prison
#_02D992: db $10 ; 0x03 - Uncle
#_02D993: db $00 ; 0x04 - Throne
#_02D994: db $10 ; 0x05 - Old man cave
#_02D995: db $02 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to $0696
.overworld_door_tilemap
#_02D996: dw $0816 ; 0x00 - Link's house
#_02D998: dw $0000 ; 0x01 - Sanctuary
#_02D99A: dw $0000 ; 0x02 - Prison
#_02D99C: dw $0000 ; 0x03 - Uncle
#_02D99E: dw $0000 ; 0x04 - Throne
#_02D9A0: dw $0000 ; 0x05 - Old man cave
#_02D9A2: dw $0000 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to $010E
.entrance_id
#_02D9A4: dw $0000 ; 0x00 - Link's house
#_02D9A6: dw $0002 ; 0x01 - Sanctuary
#_02D9A8: dw $0002 ; 0x02 - Prison
#_02D9AA: dw $0032 ; 0x03 - Uncle
#_02D9AC: dw $0004 ; 0x04 - Throne
#_02D9AE: dw $0006 ; 0x05 - Old man cave
#_02D9B0: dw $0030 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to $0132
.song
#_02D9B2: db $07 ; 0x00 - Link's house - SONG 07
#_02D9B3: db $14 ; 0x01 - Sanctuary    - SONG 14
#_02D9B4: db $10 ; 0x02 - Prison       - SONG 10
#_02D9B5: db $03 ; 0x03 - Uncle        - SONG 03
#_02D9B6: db $10 ; 0x04 - Throne       - SONG 10
#_02D9B7: db $12 ; 0x05 - Old man cave - SONG 12
#_02D9B8: db $12 ; 0x06 - Old man home - SONG 12

;===================================================================================================

Underworld_LoadSpawnEntrance:
#_02D9B9: LDA.l $7EF3C8
#_02D9BD: AND.w #$00FF
#_02D9C0: ASL A
#_02D9C1: TAX

#_02D9C2: ASL A
#_02D9C3: ASL A
#_02D9C4: TAY

#_02D9C5: LDA.w SpawnPointData_entrance_id,X
#_02D9C8: STA.w $010E

#_02D9CB: LDA.w SpawnPointData_room_id,X
#_02D9CE: STA.b $A0
#_02D9D0: STA.w $048E

#_02D9D3: LDA.w SpawnPointData_vertical_scroll,X
#_02D9D6: STA.b $E8
#_02D9D8: STA.b $E6
#_02D9DA: STA.w $0122
#_02D9DD: STA.w $0124

#_02D9E0: LDA.w SpawnPointData_horizontal_scroll,X
#_02D9E3: STA.b $E2
#_02D9E5: STA.b $E0
#_02D9E7: STA.w $011E
#_02D9EA: STA.w $0120

#_02D9ED: LDA.l $7EF3C5
#_02D9F1: BEQ .skip_coordinates

#_02D9F3: LDA.w SpawnPointData_y_coordinate,X
#_02D9F6: STA.b $20

#_02D9F8: LDA.w SpawnPointData_x_coordinate,X
#_02D9FB: STA.b $22

;---------------------------------------------------------------------------------------------------

.skip_coordinates
#_02D9FD: LDA.w SpawnPointData_camera_trigger_y,X
#_02DA00: STA.w $0618

#_02DA03: INC A
#_02DA04: INC A
#_02DA05: STA.w $061A

#_02DA08: LDA.w SpawnPointData_camera_trigger_x,X
#_02DA0B: STA.w $061C

#_02DA0E: INC A
#_02DA0F: INC A
#_02DA10: STA.w $061E

#_02DA13: LDA.w #$01F8
#_02DA16: STA.b $EC

#_02DA18: LDA.w SpawnPointData_overworld_door_tilemap,X
#_02DA1B: STA.w $0696

#_02DA1E: LDA.w #$0000
#_02DA21: STA.w $0610

#_02DA24: LDA.w #$0110
#_02DA27: STA.w $0612

#_02DA2A: LDA.w #$0000
#_02DA2D: STA.w $0614

#_02DA30: LDA.w #$0100
#_02DA33: STA.w $0616

;---------------------------------------------------------------------------------------------------

#_02DA36: LDA.l $7EF3C8
#_02DA3A: AND.w #$00FF
#_02DA3D: TAX

#_02DA3E: SEP #$20

#_02DA40: LDA.w SpawnPointData_camera_scroll_boundaries+0,Y
#_02DA43: STA.w $0601

#_02DA46: LDA.w SpawnPointData_camera_scroll_boundaries+1,Y
#_02DA49: STA.w $0603

#_02DA4C: LDA.w SpawnPointData_camera_scroll_boundaries+2,Y
#_02DA4F: STA.w $0605

#_02DA52: LDA.w SpawnPointData_camera_scroll_boundaries+3,Y
#_02DA55: STA.w $0607

#_02DA58: LDA.w SpawnPointData_camera_scroll_boundaries+4,Y
#_02DA5B: STA.w $0609

#_02DA5E: LDA.w SpawnPointData_camera_scroll_boundaries+5,Y
#_02DA61: STA.w $060B

#_02DA64: LDA.w SpawnPointData_camera_scroll_boundaries+6,Y
#_02DA67: STA.w $060D

#_02DA6A: LDA.w SpawnPointData_camera_scroll_boundaries+7,Y
#_02DA6D: STA.w $060F

#_02DA70: STZ.w $0600
#_02DA73: STZ.w $0602

#_02DA76: LDA.b #$10
#_02DA78: STA.w $0604
#_02DA7B: STA.w $0606

#_02DA7E: STZ.w $0608
#_02DA81: STZ.w $060A
#_02DA84: STZ.w $060C
#_02DA87: STZ.w $060E

;---------------------------------------------------------------------------------------------------

#_02DA8A: LDA.b #$02
#_02DA8C: STA.b $2F

#_02DA8E: LDA.w SpawnPointData_main_GFX,X
#_02DA91: STA.w $0AA1

#_02DA94: LDA.w SpawnPointData_floor,X
#_02DA97: STA.b $A4

#_02DA99: LDA.w SpawnPointData_dungeon_id,X
#_02DA9C: STA.w $040C

#_02DA9F: STZ.b $6C

#_02DAA1: LDA.w SpawnPointData_layer,X
#_02DAA4: LSR A
#_02DAA5: LSR A
#_02DAA6: LSR A
#_02DAA7: LSR A
#_02DAA8: STA.b $EE

#_02DAAA: LDA.w SpawnPointData_layer,X
#_02DAAD: AND.b #$0F
#_02DAAF: STA.w $0476

#_02DAB2: LDA.w SpawnPointData_camera_scroll_controller,X
#_02DAB5: LSR A
#_02DAB6: LSR A
#_02DAB7: LSR A
#_02DAB8: LSR A
#_02DAB9: STA.b $A6

#_02DABB: LDA.w SpawnPointData_camera_scroll_controller,X
#_02DABE: AND.b #$0F
#_02DAC0: STA.b $A7

#_02DAC2: LDA.w SpawnPointData_quadrant,X
#_02DAC5: LSR A
#_02DAC6: LSR A
#_02DAC7: LSR A
#_02DAC8: LSR A
#_02DAC9: STA.b $A9

#_02DACB: LDA.w SpawnPointData_quadrant,X
#_02DACE: AND.b #$0F
#_02DAD0: STA.b $AA

;---------------------------------------------------------------------------------------------------

#_02DAD2: LDA.w SpawnPointData_song,X
#_02DAD5: STA.w $0132

#_02DAD8: CPX.w #$0000 ; is this uncle entrance?
#_02DADB: BNE .dont_lower_song_volume

#_02DADD: LDA.l $7EF3C5 ; are we in pre-uncle game state?
#_02DAE1: BNE .dont_lower_song_volume

#_02DAE3: LDA.b #$FF ; SONG FF
#_02DAE5: STA.w $0132

.dont_lower_song_volume
#_02DAE8: STZ.w $04AA

#_02DAEB: JMP.w Underworld_LoadEntrance_DoPotsBlocksTorches

;===================================================================================================
; TODO NAME
;===================================================================================================
UnderworldExitData:

.room_id
#_02DAEE: dw $0104 ; 0x00
#_02DAF0: dw $0012 ; 0x01
#_02DAF2: dw $0060 ; 0x02
#_02DAF4: dw $0061 ; 0x03
#_02DAF6: dw $0062 ; 0x04
#_02DAF8: dw $FFFF ; 0x05
#_02DAFA: dw $0020 ; 0x06
#_02DAFC: dw $00F0 ; 0x07
#_02DAFE: dw $00F1 ; 0x08
#_02DB00: dw $00C9 ; 0x09
#_02DB02: dw $0084 ; 0x0A
#_02DB04: dw $0085 ; 0x0B
#_02DB06: dw $0083 ; 0x0C
#_02DB08: dw $0063 ; 0x0D
#_02DB0A: dw $00F2 ; 0x0E
#_02DB0C: dw $00F3 ; 0x0F
#_02DB0E: dw $00F4 ; 0x10
#_02DB10: dw $00F5 ; 0x11
#_02DB12: dw $00E3 ; 0x12
#_02DB14: dw $00E2 ; 0x13
#_02DB16: dw $00F8 ; 0x14
#_02DB18: dw $00E8 ; 0x15
#_02DB1A: dw $0023 ; 0x16
#_02DB1C: dw $00FB ; 0x17
#_02DB1E: dw $00EB ; 0x18
#_02DB20: dw $00D5 ; 0x19
#_02DB22: dw $0024 ; 0x1A
#_02DB24: dw $00FD ; 0x1B
#_02DB26: dw $00ED ; 0x1C
#_02DB28: dw $00FE ; 0x1D
#_02DB2A: dw $00EE ; 0x1E
#_02DB2C: dw $00FF ; 0x1F
#_02DB2E: dw $00EF ; 0x20
#_02DB30: dw $00DF ; 0x21
#_02DB32: dw $00F9 ; 0x22
#_02DB34: dw $00FA ; 0x23
#_02DB36: dw $00EA ; 0x24
#_02DB38: dw $00E0 ; 0x25
#_02DB3A: dw $0028 ; 0x26
#_02DB3C: dw $004A ; 0x27
#_02DB3E: dw $0098 ; 0x28
#_02DB40: dw $0056 ; 0x29
#_02DB42: dw $0057 ; 0x2A
#_02DB44: dw $0058 ; 0x2B
#_02DB46: dw $0059 ; 0x2C
#_02DB48: dw $0077 ; 0x2D
#_02DB4A: dw $000E ; 0x2E
#_02DB4C: dw $00E6 ; 0x2F
#_02DB4E: dw $00E7 ; 0x30
#_02DB50: dw $00E4 ; 0x31
#_02DB52: dw $00E5 ; 0x32
#_02DB54: dw $0055 ; 0x33
#_02DB56: dw $00D6 ; 0x34
#_02DB58: dw $00DB ; 0x35
#_02DB5A: dw $00E1 ; 0x36
#_02DB5C: dw $0010 ; 0x37
#_02DB5E: dw $000C ; 0x38
#_02DB60: dw $0008 ; 0x39
#_02DB62: dw $002F ; 0x3A
#_02DB64: dw $003C ; 0x3B
#_02DB66: dw $002C ; 0x3C
#_02DB68: dw $0003 ; 0x3D
#_02DB6A: dw $1000 ; 0x3E
#_02DB6C: dw $1002 ; 0x3F
#_02DB6E: dw $1004 ; 0x40
#_02DB70: dw $1006 ; 0x41
#_02DB72: dw $1008 ; 0x42
#_02DB74: dw $100A ; 0x43
#_02DB76: dw $100C ; 0x44
#_02DB78: dw $100E ; 0x45
#_02DB7A: dw $1010 ; 0x46
#_02DB7C: dw $1012 ; 0x47
#_02DB7E: dw $1014 ; 0x48
#_02DB80: dw $1016 ; 0x49
#_02DB82: dw $1018 ; 0x4A
#_02DB84: dw $0180 ; 0x4B
#_02DB86: dw $0181 ; 0x4C
#_02DB88: dw $0182 ; 0x4D
#_02DB8A: dw $0189 ; 0x4E

;---------------------------------------------------------------------------------------------------

.overworld_id
#_02DB8C: db $2C ; 0x00
#_02DB8D: db $13 ; 0x01
#_02DB8E: db $1B ; 0x02
#_02DB8F: db $1B ; 0x03
#_02DB90: db $1B ; 0x04
#_02DB91: db $0F ; 0x05
#_02DB92: db $5B ; 0x06
#_02DB93: db $0A ; 0x07
#_02DB94: db $03 ; 0x08
#_02DB95: db $1E ; 0x09
#_02DB96: db $30 ; 0x0A
#_02DB97: db $30 ; 0x0B
#_02DB98: db $30 ; 0x0C
#_02DB99: db $30 ; 0x0D
#_02DB9A: db $18 ; 0x0E
#_02DB9B: db $18 ; 0x0F
#_02DB9C: db $28 ; 0x10
#_02DB9D: db $29 ; 0x11
#_02DB9E: db $22 ; 0x12
#_02DB9F: db $02 ; 0x13
#_02DBA0: db $45 ; 0x14
#_02DBA1: db $45 ; 0x15
#_02DBA2: db $45 ; 0x16
#_02DBA3: db $4A ; 0x17
#_02DBA4: db $4A ; 0x18
#_02DBA5: db $45 ; 0x19
#_02DBA6: db $45 ; 0x1A
#_02DBA7: db $05 ; 0x1B
#_02DBA8: db $05 ; 0x1C
#_02DBA9: db $05 ; 0x1D
#_02DBAA: db $05 ; 0x1E
#_02DBAB: db $05 ; 0x1F
#_02DBAC: db $05 ; 0x20
#_02DBAD: db $05 ; 0x21
#_02DBAE: db $03 ; 0x22
#_02DBAF: db $03 ; 0x23
#_02DBB0: db $03 ; 0x24
#_02DBB1: db $1B ; 0x25
#_02DBB2: db $7B ; 0x26
#_02DBB3: db $5E ; 0x27
#_02DBB4: db $70 ; 0x28
#_02DBB5: db $40 ; 0x29
#_02DBB6: db $40 ; 0x2A
#_02DBB7: db $40 ; 0x2B
#_02DBB8: db $40 ; 0x2C
#_02DBB9: db $03 ; 0x2D
#_02DBBA: db $75 ; 0x2E
#_02DBBB: db $0A ; 0x2F
#_02DBBC: db $03 ; 0x30
#_02DBBD: db $03 ; 0x31
#_02DBBE: db $03 ; 0x32
#_02DBBF: db $1B ; 0x33
#_02DBC0: db $47 ; 0x34
#_02DBC1: db $58 ; 0x35
#_02DBC2: db $00 ; 0x36
#_02DBC3: db $5B ; 0x37
#_02DBC4: db $43 ; 0x38
#_02DBC5: db $15 ; 0x39
#_02DBC6: db $18 ; 0x3A
#_02DBC7: db $45 ; 0x3B
#_02DBC8: db $45 ; 0x3C
#_02DBC9: db $2C ; 0x3D
#_02DBCA: db $1B ; 0x3E
#_02DBCB: db $18 ; 0x3F
#_02DBCC: db $03 ; 0x40
#_02DBCD: db $2C ; 0x41
#_02DBCE: db $05 ; 0x42
#_02DBCF: db $02 ; 0x43
#_02DBD0: db $1E ; 0x44
#_02DBD1: db $18 ; 0x45
#_02DBD2: db $81 ; 0x46
#_02DBD3: db $30 ; 0x47
#_02DBD4: db $16 ; 0x48
#_02DBD5: db $2A ; 0x49
#_02DBD6: db $00 ; 0x4A
#_02DBD7: db $80 ; 0x4B
#_02DBD8: db $80 ; 0x4C
#_02DBD9: db $81 ; 0x4D
#_02DBDA: db $88 ; 0x4E

;---------------------------------------------------------------------------------------------------

.exit_vram_addr
#_02DBDB: dw $0506 ; 0x00
#_02DBDD: dw $001C ; 0x01
#_02DBDF: dw $0016 ; 0x02
#_02DBE1: dw $0530 ; 0x03
#_02DBE3: dw $004A ; 0x04
#_02DBE5: dw $001C ; 0x05
#_02DBE7: dw $002E ; 0x06
#_02DBE9: dw $03A0 ; 0x07
#_02DBEB: dw $1402 ; 0x08
#_02DBED: dw $005A ; 0x09
#_02DBEF: dw $0314 ; 0x0A
#_02DBF1: dw $02A8 ; 0x0B
#_02DBF3: dw $0280 ; 0x0C
#_02DBF5: dw $0016 ; 0x0D
#_02DBF7: dw $02BC ; 0x0E
#_02DBF9: dw $02C4 ; 0x0F
#_02DBFB: dw $08A0 ; 0x10
#_02DBFD: dw $0880 ; 0x11
#_02DBFF: dw $0412 ; 0x12
#_02DC01: dw $0118 ; 0x13
#_02DC03: dw $0EE0 ; 0x14
#_02DC05: dw $0460 ; 0x15
#_02DC07: dw $07CA ; 0x16
#_02DC09: dw $03A0 ; 0x17
#_02DC0B: dw $00A0 ; 0x18
#_02DC0D: dw $0AD4 ; 0x19
#_02DC0F: dw $07E0 ; 0x1A
#_02DC11: dw $0DD4 ; 0x1B
#_02DC13: dw $0AD4 ; 0x1C
#_02DC15: dw $0CCA ; 0x1D
#_02DC17: dw $07C8 ; 0x1E
#_02DC19: dw $0EE0 ; 0x1F
#_02DC1B: dw $17E0 ; 0x20
#_02DC1D: dw $0460 ; 0x21
#_02DC1F: dw $0D9C ; 0x22
#_02DC21: dw $0EAC ; 0x23
#_02DC23: dw $092C ; 0x24
#_02DC25: dw $0032 ; 0x25
#_02DC27: dw $049E ; 0x26
#_02DC29: dw $005A ; 0x27
#_02DC2B: dw $0414 ; 0x28
#_02DC2D: dw $0C8E ; 0x29
#_02DC2F: dw $0EB8 ; 0x2A
#_02DC31: dw $0F4C ; 0x2B
#_02DC33: dw $0282 ; 0x2C
#_02DC35: dw $0050 ; 0x2D
#_02DC37: dw $0BC6 ; 0x2E
#_02DC39: dw $00A0 ; 0x2F
#_02DC3B: dw $0D82 ; 0x30
#_02DC3D: dw $181A ; 0x31
#_02DC3F: dw $10C6 ; 0x32
#_02DC41: dw $044A ; 0x33
#_02DC43: dw $0712 ; 0x34
#_02DC45: dw $0B2E ; 0x35
#_02DC47: dw $0F4E ; 0x36
#_02DC49: dw $0B0E ; 0x37
#_02DC4B: dw $0052 ; 0x38
#_02DC4D: dw $0088 ; 0x39
#_02DC4F: dw $0386 ; 0x3A
#_02DC51: dw $04DA ; 0x3B
#_02DC53: dw $004C ; 0x3C
#_02DC55: dw $0506 ; 0x3D
#_02DC57: dw $1230 ; 0x3E
#_02DC59: dw $0448 ; 0x3F
#_02DC5B: dw $0050 ; 0x40
#_02DC5D: dw $009A ; 0x41
#_02DC5F: dw $034E ; 0x42
#_02DC61: dw $049A ; 0x43
#_02DC63: dw $07C0 ; 0x44
#_02DC65: dw $1100 ; 0x45
#_02DC67: dw $0040 ; 0x46
#_02DC69: dw $0916 ; 0x47
#_02DC6B: dw $000A ; 0x48
#_02DC6D: dw $0910 ; 0x49
#_02DC6F: dw $0A3A ; 0x4A
#_02DC71: dw $0000 ; 0x4B
#_02DC73: dw $0020 ; 0x4C
#_02DC75: dw $1782 ; 0x4D
#_02DC77: dw $0000 ; 0x4E

;---------------------------------------------------------------------------------------------------

.vertical_scroll
#_02DC79: dw $0A9A ; 0x00
#_02DC7B: dw $0400 ; 0x01
#_02DC7D: dw $0600 ; 0x02
#_02DC7F: dw $0692 ; 0x03
#_02DC81: dw $0600 ; 0x04
#_02DC83: dw $0200 ; 0x05
#_02DC85: dw $0600 ; 0x06
#_02DC87: dw $0264 ; 0x07
#_02DC89: dw $0294 ; 0x08
#_02DC8B: dw $0600 ; 0x09
#_02DC8D: dw $0C56 ; 0x0A
#_02DC8F: dw $0C4A ; 0x0B
#_02DC91: dw $0C46 ; 0x0C
#_02DC93: dw $0C00 ; 0x0D
#_02DC95: dw $064C ; 0x0E
#_02DC97: dw $064A ; 0x0F
#_02DC99: dw $0B06 ; 0x10
#_02DC9B: dw $0B07 ; 0x11
#_02DC9D: dw $087A ; 0x12
#_02DC9F: dw $0015 ; 0x13
#_02DCA1: dw $01E4 ; 0x14
#_02DCA3: dw $0093 ; 0x15
#_02DCA5: dw $0103 ; 0x16
#_02DCA7: dw $0263 ; 0x17
#_02DCA9: dw $020A ; 0x18
#_02DCAB: dw $0164 ; 0x19
#_02DCAD: dw $0103 ; 0x1A
#_02DCAF: dw $01C4 ; 0x1B
#_02DCB1: dw $0163 ; 0x1C
#_02DCB3: dw $01A3 ; 0x1D
#_02DCB5: dw $0108 ; 0x1E
#_02DCB7: dw $01E3 ; 0x1F
#_02DCB9: dw $0304 ; 0x20
#_02DCBB: dw $0093 ; 0x21
#_02DCBD: dw $01C3 ; 0x22
#_02DCBF: dw $01E3 ; 0x23
#_02DCC1: dw $0133 ; 0x24
#_02DCC3: dw $0600 ; 0x25
#_02DCC5: dw $0E8C ; 0x26
#_02DCC7: dw $0600 ; 0x27
#_02DCC9: dw $0C79 ; 0x28
#_02DCCB: dw $01A6 ; 0x29
#_02DCCD: dw $01E6 ; 0x2A
#_02DCCF: dw $01F6 ; 0x2B
#_02DCD1: dw $0066 ; 0x2C
#_02DCD3: dw $0014 ; 0x2D
#_02DCD5: dw $0D6A ; 0x2E
#_02DCD7: dw $0205 ; 0x2F
#_02DCD9: dw $01C4 ; 0x30
#_02DCDB: dw $031E ; 0x31
#_02DCDD: dw $0224 ; 0x32
#_02DCDF: dw $067A ; 0x33
#_02DCE1: dw $00DA ; 0x34
#_02DCE3: dw $075A ; 0x35
#_02DCE5: dw $01F6 ; 0x36
#_02DCE7: dw $075A ; 0x37
#_02DCE9: dw $0000 ; 0x38
#_02DCEB: dw $0400 ; 0x39
#_02DCED: dw $0665 ; 0x3A
#_02DCEF: dw $00A3 ; 0x3B
#_02DCF1: dw $0000 ; 0x3C
#_02DCF3: dw $0A9A ; 0x3D
#_02DCF5: dw $0842 ; 0x3E
#_02DCF7: dw $0674 ; 0x3F
#_02DCF9: dw $0000 ; 0x40
#_02DCFB: dw $0A0B ; 0x41
#_02DCFD: dw $005C ; 0x42
#_02DCFF: dw $0089 ; 0x43
#_02DD01: dw $06E4 ; 0x44
#_02DD03: dw $0826 ; 0x45
#_02DD05: dw $0010 ; 0x46
#_02DD07: dw $0D20 ; 0x47
#_02DD09: dw $0400 ; 0x48
#_02DD0B: dw $0B1E ; 0x49
#_02DD0D: dw $016A ; 0x4A
#_02DD0F: dw $0120 ; 0x4B
#_02DD11: dw $0000 ; 0x4C
#_02DD13: dw $0320 ; 0x4D
#_02DD15: dw $0000 ; 0x4E

;---------------------------------------------------------------------------------------------------

.horizontal_scroll
#_02DD17: dw $0832 ; 0x00
#_02DD19: dw $06DE ; 0x01
#_02DD1B: dw $06AE ; 0x02
#_02DD1D: dw $0784 ; 0x03
#_02DD1F: dw $0856 ; 0x04
#_02DD21: dw $0EE2 ; 0x05
#_02DD23: dw $0778 ; 0x06
#_02DD25: dw $0500 ; 0x07
#_02DD27: dw $0604 ; 0x08
#_02DD29: dw $0ED6 ; 0x09
#_02DD2B: dw $00A6 ; 0x0A
#_02DD2D: dw $0142 ; 0x0B
#_02DD2F: dw $0003 ; 0x0C
#_02DD31: dw $00A2 ; 0x0D
#_02DD33: dw $01E2 ; 0x0E
#_02DD35: dw $0222 ; 0x0F
#_02DD37: dw $0100 ; 0x10
#_02DD39: dw $0200 ; 0x11
#_02DD3B: dw $048E ; 0x12
#_02DD3D: dw $04C6 ; 0x13
#_02DD3F: dw $0D00 ; 0x14
#_02DD41: dw $0D00 ; 0x15
#_02DD43: dw $0C46 ; 0x16
#_02DD45: dw $0500 ; 0x17
#_02DD47: dw $0500 ; 0x18
#_02DD49: dw $0CA6 ; 0x19
#_02DD4B: dw $0D00 ; 0x1A
#_02DD4D: dw $0CA6 ; 0x1B
#_02DD4F: dw $0CA6 ; 0x1C
#_02DD51: dw $0C56 ; 0x1D
#_02DD53: dw $0C46 ; 0x1E
#_02DD55: dw $0D00 ; 0x1F
#_02DD57: dw $0D00 ; 0x20
#_02DD59: dw $0D00 ; 0x21
#_02DD5B: dw $06D4 ; 0x22
#_02DD5D: dw $0754 ; 0x23
#_02DD5F: dw $0754 ; 0x24
#_02DD61: dw $0784 ; 0x25
#_02DD63: dw $06F2 ; 0x26
#_02DD65: dw $0ED6 ; 0x27
#_02DD67: dw $00A6 ; 0x28
#_02DD69: dw $0062 ; 0x29
#_02DD6B: dw $01C2 ; 0x2A
#_02DD6D: dw $0262 ; 0x2B
#_02DD6F: dw $0016 ; 0x2C
#_02DD71: dw $087C ; 0x2D
#_02DD73: dw $0C3E ; 0x2E
#_02DD75: dw $0500 ; 0x2F
#_02DD77: dw $0600 ; 0x30
#_02DD79: dw $06B4 ; 0x31
#_02DD7B: dw $0814 ; 0x32
#_02DD7D: dw $0854 ; 0x33
#_02DD7F: dw $0E96 ; 0x34
#_02DD81: dw $0176 ; 0x35
#_02DD83: dw $0262 ; 0x36
#_02DD85: dw $0674 ; 0x37
#_02DD87: dw $0884 ; 0x38
#_02DD89: dw $0A36 ; 0x39
#_02DD8B: dw $0032 ; 0x3A
#_02DD8D: dw $0CD6 ; 0x3B
#_02DD8F: dw $0C56 ; 0x3C
#_02DD91: dw $0832 ; 0x3D
#_02DD93: dw $077F ; 0x3E
#_02DD95: dw $024B ; 0x3F
#_02DD97: dw $0878 ; 0x40
#_02DD99: dw $08D7 ; 0x41
#_02DD9B: dw $0C6D ; 0x42
#_02DD9D: dw $04CF ; 0x43
#_02DD9F: dw $0DFE ; 0x44
#_02DDA1: dw $0001 ; 0x45
#_02DDA3: dw $0401 ; 0x46
#_02DDA5: dw $00AA ; 0x47
#_02DDA7: dw $0C57 ; 0x48
#_02DDA9: dw $0478 ; 0x49
#_02DDAB: dw $01CF ; 0x4A
#_02DDAD: dw $0000 ; 0x4B
#_02DDAF: dw $0100 ; 0x4C
#_02DDB1: dw $021E ; 0x4D
#_02DDB3: dw $0000 ; 0x4E

;---------------------------------------------------------------------------------------------------

.y_coordinate
#_02DDB5: dw $0AE8 ; 0x00
#_02DDB7: dw $0414 ; 0x01
#_02DDB9: dw $0604 ; 0x02
#_02DDBB: dw $06CC ; 0x03
#_02DDBD: dw $0604 ; 0x04
#_02DDBF: dw $0203 ; 0x05
#_02DDC1: dw $065C ; 0x06
#_02DDC3: dw $02B8 ; 0x07
#_02DDC5: dw $02E8 ; 0x08
#_02DDC7: dw $0618 ; 0x09
#_02DDC9: dw $0CA8 ; 0x0A
#_02DDCB: dw $0C98 ; 0x0B
#_02DDCD: dw $0C98 ; 0x0C
#_02DDCF: dw $0C28 ; 0x0D
#_02DDD1: dw $0698 ; 0x0E
#_02DDD3: dw $0698 ; 0x0F
#_02DDD5: dw $0B58 ; 0x10
#_02DDD7: dw $0B58 ; 0x11
#_02DDD9: dw $08C8 ; 0x12
#_02DDDB: dw $0067 ; 0x13
#_02DDDD: dw $0238 ; 0x14
#_02DDDF: dw $00E7 ; 0x15
#_02DDE1: dw $0157 ; 0x16
#_02DDE3: dw $02B7 ; 0x17
#_02DDE5: dw $0258 ; 0x18
#_02DDE7: dw $01B8 ; 0x19
#_02DDE9: dw $0157 ; 0x1A
#_02DDEB: dw $0218 ; 0x1B
#_02DDED: dw $01B7 ; 0x1C
#_02DDEF: dw $01F7 ; 0x1D
#_02DDF1: dw $0158 ; 0x1E
#_02DDF3: dw $0237 ; 0x1F
#_02DDF5: dw $0358 ; 0x20
#_02DDF7: dw $00E7 ; 0x21
#_02DDF9: dw $0217 ; 0x22
#_02DDFB: dw $0237 ; 0x23
#_02DDFD: dw $0187 ; 0x24
#_02DDFF: dw $0634 ; 0x25
#_02DE01: dw $0ED8 ; 0x26
#_02DE03: dw $0628 ; 0x27
#_02DE05: dw $0CC7 ; 0x28
#_02DE07: dw $01F8 ; 0x29
#_02DE09: dw $0238 ; 0x2A
#_02DE0B: dw $0248 ; 0x2B
#_02DE0D: dw $00B8 ; 0x2C
#_02DE0F: dw $0068 ; 0x2D
#_02DE11: dw $0DB8 ; 0x2E
#_02DE13: dw $0257 ; 0x2F
#_02DE15: dw $0218 ; 0x30
#_02DE17: dw $03A7 ; 0x31
#_02DE19: dw $0278 ; 0x32
#_02DE1B: dw $06C8 ; 0x33
#_02DE1D: dw $0128 ; 0x34
#_02DE1F: dw $07A8 ; 0x35
#_02DE21: dw $0248 ; 0x36
#_02DE23: dw $07A8 ; 0x37
#_02DE25: dw $0028 ; 0x38
#_02DE27: dw $0448 ; 0x39
#_02DE29: dw $06B7 ; 0x3A
#_02DE2B: dw $0107 ; 0x3B
#_02DE2D: dw $0038 ; 0x3C
#_02DE2F: dw $0AE8 ; 0x3D
#_02DE31: dw $0890 ; 0x3E
#_02DE33: dw $06C2 ; 0x3F
#_02DE35: dw $004D ; 0x40
#_02DE37: dw $0A59 ; 0x41
#_02DE39: dw $00AA ; 0x42
#_02DE3B: dw $00DB ; 0x43
#_02DE3D: dw $0732 ; 0x44
#_02DE3F: dw $0874 ; 0x45
#_02DE41: dw $006E ; 0x46
#_02DE43: dw $0D72 ; 0x47
#_02DE45: dw $044D ; 0x48
#_02DE47: dw $0B72 ; 0x49
#_02DE49: dw $01BE ; 0x4A
#_02DE4B: dw $01E8 ; 0x4B
#_02DE4D: dw $0080 ; 0x4C
#_02DE4F: dw $03E8 ; 0x4D
#_02DE51: dw $0100 ; 0x4E

;---------------------------------------------------------------------------------------------------

.x_coordinate
#_02DE53: dw $08B8 ; 0x00
#_02DE55: dw $0758 ; 0x01
#_02DE57: dw $0728 ; 0x02
#_02DE59: dw $07F8 ; 0x03
#_02DE5B: dw $08C8 ; 0x04
#_02DE5D: dw $0F50 ; 0x05
#_02DE5F: dw $07F0 ; 0x06
#_02DE61: dw $05A8 ; 0x07
#_02DE63: dw $0678 ; 0x08
#_02DE65: dw $0F50 ; 0x09
#_02DE67: dw $0128 ; 0x0A
#_02DE69: dw $01C8 ; 0x0B
#_02DE6B: dw $0088 ; 0x0C
#_02DE6D: dw $0128 ; 0x0D
#_02DE6F: dw $0268 ; 0x0E
#_02DE71: dw $02A8 ; 0x0F
#_02DE73: dw $01B8 ; 0x10
#_02DE75: dw $0238 ; 0x11
#_02DE77: dw $0508 ; 0x12
#_02DE79: dw $0548 ; 0x13
#_02DE7B: dw $0D78 ; 0x14
#_02DE7D: dw $0DB8 ; 0x15
#_02DE7F: dw $0CB8 ; 0x16
#_02DE81: dw $05A8 ; 0x17
#_02DE83: dw $05B8 ; 0x18
#_02DE85: dw $0D18 ; 0x19
#_02DE87: dw $0D78 ; 0x1A
#_02DE89: dw $0D18 ; 0x1B
#_02DE8B: dw $0D18 ; 0x1C
#_02DE8D: dw $0CC8 ; 0x1D
#_02DE8F: dw $0CB8 ; 0x1E
#_02DE91: dw $0DA8 ; 0x1F
#_02DE93: dw $0DC8 ; 0x20
#_02DE95: dw $0DB8 ; 0x21
#_02DE97: dw $0748 ; 0x22
#_02DE99: dw $07C8 ; 0x23
#_02DE9B: dw $07C8 ; 0x24
#_02DE9D: dw $07F8 ; 0x25
#_02DE9F: dw $0778 ; 0x26
#_02DEA1: dw $0F50 ; 0x27
#_02DEA3: dw $0128 ; 0x28
#_02DEA5: dw $00E8 ; 0x29
#_02DEA7: dw $0248 ; 0x2A
#_02DEA9: dw $02E8 ; 0x2B
#_02DEAB: dw $0098 ; 0x2C
#_02DEAD: dw $08F0 ; 0x2D
#_02DEAF: dw $0CB8 ; 0x2E
#_02DEB1: dw $05B8 ; 0x2F
#_02DEB3: dw $0648 ; 0x30
#_02DEB5: dw $0728 ; 0x31
#_02DEB7: dw $0888 ; 0x32
#_02DEB9: dw $08C8 ; 0x33
#_02DEBB: dw $0F08 ; 0x34
#_02DEBD: dw $01F8 ; 0x35
#_02DEBF: dw $02E8 ; 0x36
#_02DEC1: dw $06E8 ; 0x37
#_02DEC3: dw $08F8 ; 0x38
#_02DEC5: dw $0AA8 ; 0x39
#_02DEC7: dw $00B8 ; 0x3A
#_02DEC9: dw $0D48 ; 0x3B
#_02DECB: dw $0CC8 ; 0x3C
#_02DECD: dw $08B8 ; 0x3D
#_02DECF: dw $07F3 ; 0x3E
#_02DED1: dw $02CD ; 0x3F
#_02DED3: dw $08E6 ; 0x40
#_02DED5: dw $094F ; 0x41
#_02DED7: dw $0CDF ; 0x42
#_02DED9: dw $0551 ; 0x43
#_02DEDB: dw $0E7C ; 0x44
#_02DEDD: dw $0083 ; 0x45
#_02DEDF: dw $047D ; 0x46
#_02DEE1: dw $0130 ; 0x47
#_02DEE3: dw $0CD1 ; 0x48
#_02DEE5: dw $04FE ; 0x49
#_02DEE7: dw $0255 ; 0x4A
#_02DEE9: dw $0080 ; 0x4B
#_02DEEB: dw $01F0 ; 0x4C
#_02DEED: dw $029E ; 0x4D
#_02DEEF: dw $0080 ; 0x4E

;---------------------------------------------------------------------------------------------------

.camera_trigger_y
#_02DEF1: dw $0B07 ; 0x00
#_02DEF3: dw $046D ; 0x01
#_02DEF5: dw $066D ; 0x02
#_02DEF7: dw $06FF ; 0x03
#_02DEF9: dw $066D ; 0x04
#_02DEFB: dw $026D ; 0x05
#_02DEFD: dw $066D ; 0x06
#_02DEFF: dw $02D3 ; 0x07
#_02DF01: dw $0303 ; 0x08
#_02DF03: dw $066D ; 0x09
#_02DF05: dw $0CC3 ; 0x0A
#_02DF07: dw $0CB7 ; 0x0B
#_02DF09: dw $0CB3 ; 0x0C
#_02DF0B: dw $0C6D ; 0x0D
#_02DF0D: dw $06B9 ; 0x0E
#_02DF0F: dw $06B7 ; 0x0F
#_02DF11: dw $0B73 ; 0x10
#_02DF13: dw $0B74 ; 0x11
#_02DF15: dw $08E7 ; 0x12
#_02DF17: dw $0082 ; 0x13
#_02DF19: dw $0253 ; 0x14
#_02DF1B: dw $0102 ; 0x15
#_02DF1D: dw $0172 ; 0x16
#_02DF1F: dw $02D2 ; 0x17
#_02DF21: dw $0277 ; 0x18
#_02DF23: dw $01D3 ; 0x19
#_02DF25: dw $0172 ; 0x1A
#_02DF27: dw $0233 ; 0x1B
#_02DF29: dw $01D2 ; 0x1C
#_02DF2B: dw $0212 ; 0x1D
#_02DF2D: dw $0177 ; 0x1E
#_02DF2F: dw $0252 ; 0x1F
#_02DF31: dw $0373 ; 0x20
#_02DF33: dw $0102 ; 0x21
#_02DF35: dw $0232 ; 0x22
#_02DF37: dw $0252 ; 0x23
#_02DF39: dw $01A2 ; 0x24
#_02DF3B: dw $066D ; 0x25
#_02DF3D: dw $0EF9 ; 0x26
#_02DF3F: dw $066D ; 0x27
#_02DF41: dw $0CE6 ; 0x28
#_02DF43: dw $0213 ; 0x29
#_02DF45: dw $0253 ; 0x2A
#_02DF47: dw $0263 ; 0x2B
#_02DF49: dw $00D3 ; 0x2C
#_02DF4B: dw $0083 ; 0x2D
#_02DF4D: dw $0DD7 ; 0x2E
#_02DF4F: dw $0272 ; 0x2F
#_02DF51: dw $0233 ; 0x30
#_02DF53: dw $038D ; 0x31
#_02DF55: dw $0293 ; 0x32
#_02DF57: dw $06E7 ; 0x33
#_02DF59: dw $0147 ; 0x34
#_02DF5B: dw $07C7 ; 0x35
#_02DF5D: dw $0263 ; 0x36
#_02DF5F: dw $07C7 ; 0x37
#_02DF61: dw $006F ; 0x38
#_02DF63: dw $046F ; 0x39
#_02DF65: dw $06D2 ; 0x3A
#_02DF67: dw $0112 ; 0x3B
#_02DF69: dw $006F ; 0x3C
#_02DF6B: dw $0B07 ; 0x3D
#_02DF6D: dw $08AF ; 0x3E
#_02DF6F: dw $06E1 ; 0x3F
#_02DF71: dw $006D ; 0x40
#_02DF73: dw $0A78 ; 0x41
#_02DF75: dw $00C9 ; 0x42
#_02DF77: dw $00F6 ; 0x43
#_02DF79: dw $0751 ; 0x44
#_02DF7B: dw $0893 ; 0x45
#_02DF7D: dw $008D ; 0x46
#_02DF7F: dw $0D8D ; 0x47
#_02DF81: dw $046D ; 0x48
#_02DF83: dw $0B8D ; 0x49
#_02DF85: dw $01D9 ; 0x4A
#_02DF87: dw $019D ; 0x4B
#_02DF89: dw $008F ; 0x4C
#_02DF8B: dw $039D ; 0x4D
#_02DF8D: dw $009D ; 0x4E

;---------------------------------------------------------------------------------------------------

.camera_trigger_x
#_02DF8F: dw $08BF ; 0x00
#_02DF91: dw $0763 ; 0x01
#_02DF93: dw $0733 ; 0x02
#_02DF95: dw $0803 ; 0x03
#_02DF97: dw $08D3 ; 0x04
#_02DF99: dw $0F57 ; 0x05
#_02DF9B: dw $07F7 ; 0x06
#_02DF9D: dw $058D ; 0x07
#_02DF9F: dw $0683 ; 0x08
#_02DFA1: dw $0F5B ; 0x09
#_02DFA3: dw $0133 ; 0x0A
#_02DFA5: dw $01CF ; 0x0B
#_02DFA7: dw $0090 ; 0x0C
#_02DFA9: dw $012F ; 0x0D
#_02DFAB: dw $026F ; 0x0E
#_02DFAD: dw $02AF ; 0x0F
#_02DFAF: dw $018D ; 0x10
#_02DFB1: dw $028D ; 0x11
#_02DFB3: dw $0513 ; 0x12
#_02DFB5: dw $0553 ; 0x13
#_02DFB7: dw $0D7D ; 0x14
#_02DFB9: dw $0D7D ; 0x15
#_02DFBB: dw $0CC3 ; 0x16
#_02DFBD: dw $058D ; 0x17
#_02DFBF: dw $058D ; 0x18
#_02DFC1: dw $0D23 ; 0x19
#_02DFC3: dw $0D7D ; 0x1A
#_02DFC5: dw $0D23 ; 0x1B
#_02DFC7: dw $0D23 ; 0x1C
#_02DFC9: dw $0CD3 ; 0x1D
#_02DFCB: dw $0CC3 ; 0x1E
#_02DFCD: dw $0D7D ; 0x1F
#_02DFCF: dw $0D7D ; 0x20
#_02DFD1: dw $0D7D ; 0x21
#_02DFD3: dw $0753 ; 0x22
#_02DFD5: dw $07D3 ; 0x23
#_02DFD7: dw $07D3 ; 0x24
#_02DFD9: dw $0803 ; 0x25
#_02DFDB: dw $077F ; 0x26
#_02DFDD: dw $0F5B ; 0x27
#_02DFDF: dw $0133 ; 0x28
#_02DFE1: dw $00EF ; 0x29
#_02DFE3: dw $024F ; 0x2A
#_02DFE5: dw $02EF ; 0x2B
#_02DFE7: dw $00A3 ; 0x2C
#_02DFE9: dw $08FB ; 0x2D
#_02DFEB: dw $0CC3 ; 0x2E
#_02DFED: dw $058D ; 0x2F
#_02DFEF: dw $067F ; 0x30
#_02DFF1: dw $0733 ; 0x31
#_02DFF3: dw $0893 ; 0x32
#_02DFF5: dw $08D3 ; 0x33
#_02DFF7: dw $0F13 ; 0x34
#_02DFF9: dw $0203 ; 0x35
#_02DFFB: dw $02EF ; 0x36
#_02DFFD: dw $06F3 ; 0x37
#_02DFFF: dw $0903 ; 0x38
#_02E001: dw $0AB3 ; 0x39
#_02E003: dw $00BF ; 0x3A
#_02E005: dw $0D53 ; 0x3B
#_02E007: dw $0CD3 ; 0x3C
#_02E009: dw $08BF ; 0x3D
#_02E00B: dw $07FE ; 0x3E
#_02E00D: dw $02D8 ; 0x3F
#_02E00F: dw $08ED ; 0x40
#_02E011: dw $0956 ; 0x41
#_02E013: dw $0CEA ; 0x42
#_02E015: dw $055C ; 0x43
#_02E017: dw $0E83 ; 0x44
#_02E019: dw $008E ; 0x45
#_02E01B: dw $0484 ; 0x46
#_02E01D: dw $0137 ; 0x47
#_02E01F: dw $0CDC ; 0x48
#_02E021: dw $0505 ; 0x49
#_02E023: dw $025C ; 0x4A
#_02E025: dw $0083 ; 0x4B
#_02E027: dw $018D ; 0x4C
#_02E029: dw $02A1 ; 0x4D
#_02E02B: dw $0083 ; 0x4E

;---------------------------------------------------------------------------------------------------

.scroll_mod_y
#_02E02D: db $06 ; 0x00
#_02E02E: db $00 ; 0x01
#_02E02F: db $00 ; 0x02
#_02E030: db $0E ; 0x03
#_02E031: db $00 ; 0x04
#_02E032: db $00 ; 0x05
#_02E033: db $00 ; 0x06
#_02E034: db $0A ; 0x07
#_02E035: db $0A ; 0x08
#_02E036: db $00 ; 0x09
#_02E037: db $0A ; 0x0A
#_02E038: db $06 ; 0x0B
#_02E039: db $0A ; 0x0C
#_02E03A: db $00 ; 0x0D
#_02E03B: db $04 ; 0x0E
#_02E03C: db $06 ; 0x0F
#_02E03D: db $0A ; 0x10
#_02E03E: db $09 ; 0x11
#_02E03F: db $06 ; 0x12
#_02E040: db $0B ; 0x13
#_02E041: db $0A ; 0x14
#_02E042: db $0B ; 0x15
#_02E043: db $0B ; 0x16
#_02E044: db $0B ; 0x17
#_02E045: db $06 ; 0x18
#_02E046: db $0A ; 0x19
#_02E047: db $0B ; 0x1A
#_02E048: db $0A ; 0x1B
#_02E049: db $0B ; 0x1C
#_02E04A: db $0B ; 0x1D
#_02E04B: db $06 ; 0x1E
#_02E04C: db $0B ; 0x1F
#_02E04D: db $0A ; 0x20
#_02E04E: db $0B ; 0x21
#_02E04F: db $0B ; 0x22
#_02E050: db $0B ; 0x23
#_02E051: db $0B ; 0x24
#_02E052: db $00 ; 0x25
#_02E053: db $04 ; 0x26
#_02E054: db $00 ; 0x27
#_02E055: db $07 ; 0x28
#_02E056: db $0A ; 0x29
#_02E057: db $0A ; 0x2A
#_02E058: db $0A ; 0x2B
#_02E059: db $0A ; 0x2C
#_02E05A: db $0A ; 0x2D
#_02E05B: db $06 ; 0x2E
#_02E05C: db $0B ; 0x2F
#_02E05D: db $0A ; 0x30
#_02E05E: db $00 ; 0x31
#_02E05F: db $0A ; 0x32
#_02E060: db $06 ; 0x33
#_02E061: db $06 ; 0x34
#_02E062: db $06 ; 0x35
#_02E063: db $0A ; 0x36
#_02E064: db $06 ; 0x37
#_02E065: db $00 ; 0x38
#_02E066: db $00 ; 0x39
#_02E067: db $0B ; 0x3A
#_02E068: db $0B ; 0x3B
#_02E069: db $00 ; 0x3C
#_02E06A: db $06 ; 0x3D
#_02E06B: db $FE ; 0x3E
#_02E06C: db $0C ; 0x3F
#_02E06D: db $00 ; 0x40
#_02E06E: db $05 ; 0x41
#_02E06F: db $04 ; 0x42
#_02E070: db $01 ; 0x43
#_02E071: db $07 ; 0x44
#_02E072: db $FA ; 0x45
#_02E073: db $00 ; 0x46
#_02E074: db $00 ; 0x47
#_02E075: db $00 ; 0x48
#_02E076: db $00 ; 0x49
#_02E077: db $F4 ; 0x4A
#_02E078: db $00 ; 0x4B
#_02E079: db $00 ; 0x4C
#_02E07A: db $00 ; 0x4D
#_02E07B: db $00 ; 0x4E

;---------------------------------------------------------------------------------------------------

.scroll_mod_x
#_02E07C: db $FE ; 0x00
#_02E07D: db $02 ; 0x01
#_02E07E: db $02 ; 0x02
#_02E07F: db $FA ; 0x03
#_02E080: db $FA ; 0x04
#_02E081: db $FE ; 0x05
#_02E082: db $F8 ; 0x06
#_02E083: db $00 ; 0x07
#_02E084: db $FC ; 0x08
#_02E085: db $FA ; 0x09
#_02E086: db $FA ; 0x0A
#_02E087: db $FE ; 0x0B
#_02E088: db $FD ; 0x0C
#_02E089: db $0E ; 0x0D
#_02E08A: db $FE ; 0x0E
#_02E08B: db $FE ; 0x0F
#_02E08C: db $00 ; 0x10
#_02E08D: db $00 ; 0x11
#_02E08E: db $02 ; 0x12
#_02E08F: db $FA ; 0x13
#_02E090: db $00 ; 0x14
#_02E091: db $00 ; 0x15
#_02E092: db $0A ; 0x16
#_02E093: db $00 ; 0x17
#_02E094: db $00 ; 0x18
#_02E095: db $FA ; 0x19
#_02E096: db $00 ; 0x1A
#_02E097: db $FA ; 0x1B
#_02E098: db $FA ; 0x1C
#_02E099: db $FA ; 0x1D
#_02E09A: db $FA ; 0x1E
#_02E09B: db $00 ; 0x1F
#_02E09C: db $00 ; 0x20
#_02E09D: db $00 ; 0x21
#_02E09E: db $FC ; 0x22
#_02E09F: db $FC ; 0x23
#_02E0A0: db $FC ; 0x24
#_02E0A1: db $0A ; 0x25
#_02E0A2: db $FE ; 0x26
#_02E0A3: db $FA ; 0x27
#_02E0A4: db $FA ; 0x28
#_02E0A5: db $0E ; 0x29
#_02E0A6: db $FE ; 0x2A
#_02E0A7: db $FE ; 0x2B
#_02E0A8: db $FA ; 0x2C
#_02E0A9: db $F4 ; 0x2D
#_02E0AA: db $F2 ; 0x2E
#_02E0AB: db $00 ; 0x2F
#_02E0AC: db $00 ; 0x30
#_02E0AD: db $0C ; 0x31
#_02E0AE: db $0C ; 0x32
#_02E0AF: db $FA ; 0x33
#_02E0B0: db $FA ; 0x34
#_02E0B1: db $FA ; 0x35
#_02E0B2: db $0E ; 0x36
#_02E0B3: db $FA ; 0x37
#_02E0B4: db $FC ; 0x38
#_02E0B5: db $0A ; 0x39
#_02E0B6: db $FE ; 0x3A
#_02E0B7: db $FA ; 0x3B
#_02E0B8: db $0A ; 0x3C
#_02E0B9: db $FE ; 0x3D
#_02E0BA: db $FF ; 0x3E
#_02E0BB: db $F5 ; 0x3F
#_02E0BC: db $08 ; 0x40
#_02E0BD: db $F9 ; 0x41
#_02E0BE: db $03 ; 0x42
#_02E0BF: db $01 ; 0x43
#_02E0C0: db $02 ; 0x44
#_02E0C1: db $FF ; 0x45
#_02E0C2: db $FF ; 0x46
#_02E0C3: db $06 ; 0x47
#_02E0C4: db $F9 ; 0x48
#_02E0C5: db $08 ; 0x49
#_02E0C6: db $01 ; 0x4A
#_02E0C7: db $00 ; 0x4B
#_02E0C8: db $00 ; 0x4C
#_02E0C9: db $F2 ; 0x4D
#_02E0CA: db $00 ; 0x4E

;---------------------------------------------------------------------------------------------------

.door_graphic
#_02E0CB: dw $0816 ; 0x00
#_02E0CD: dw $0000 ; 0x01
#_02E0CF: dw $0000 ; 0x02
#_02E0D1: dw $0000 ; 0x03
#_02E0D3: dw $0000 ; 0x04
#_02E0D5: dw $0000 ; 0x05
#_02E0D7: dw $0000 ; 0x06
#_02E0D9: dw $0000 ; 0x07
#_02E0DB: dw $0000 ; 0x08
#_02E0DD: dw $0000 ; 0x09
#_02E0DF: dw $0000 ; 0x0A
#_02E0E1: dw $0000 ; 0x0B
#_02E0E3: dw $0000 ; 0x0C
#_02E0E5: dw $0000 ; 0x0D
#_02E0E7: dw $05CC ; 0x0E
#_02E0E9: dw $05D4 ; 0x0F
#_02E0EB: dw $0BB6 ; 0x10
#_02E0ED: dw $0B86 ; 0x11
#_02E0EF: dw $0000 ; 0x12
#_02E0F1: dw $0000 ; 0x13
#_02E0F3: dw $0000 ; 0x14
#_02E0F5: dw $0000 ; 0x15
#_02E0F7: dw $0000 ; 0x16
#_02E0F9: dw $0000 ; 0x17
#_02E0FB: dw $0000 ; 0x18
#_02E0FD: dw $0000 ; 0x19
#_02E0FF: dw $0000 ; 0x1A
#_02E101: dw $0000 ; 0x1B
#_02E103: dw $0000 ; 0x1C
#_02E105: dw $0000 ; 0x1D
#_02E107: dw $0000 ; 0x1E
#_02E109: dw $0000 ; 0x1F
#_02E10B: dw $0000 ; 0x20
#_02E10D: dw $0000 ; 0x21
#_02E10F: dw $0000 ; 0x22
#_02E111: dw $0000 ; 0x23
#_02E113: dw $0000 ; 0x24
#_02E115: dw $0000 ; 0x25
#_02E117: dw $0000 ; 0x26
#_02E119: dw $0000 ; 0x27
#_02E11B: dw $0000 ; 0x28
#_02E11D: dw $0000 ; 0x29
#_02E11F: dw $0000 ; 0x2A
#_02E121: dw $0000 ; 0x2B
#_02E123: dw $0000 ; 0x2C
#_02E125: dw $0000 ; 0x2D
#_02E127: dw $0000 ; 0x2E
#_02E129: dw $0000 ; 0x2F
#_02E12B: dw $0000 ; 0x30
#_02E12D: dw $0000 ; 0x31
#_02E12F: dw $0000 ; 0x32
#_02E131: dw $0000 ; 0x33
#_02E133: dw $0000 ; 0x34
#_02E135: dw $0000 ; 0x35
#_02E137: dw $0000 ; 0x36
#_02E139: dw $0000 ; 0x37
#_02E13B: dw $0000 ; 0x38
#_02E13D: dw $0000 ; 0x39
#_02E13F: dw $0000 ; 0x3A
#_02E141: dw $0000 ; 0x3B
#_02E143: dw $0000 ; 0x3C
#_02E145: dw $0816 ; 0x3D
#_02E147: dw $0000 ; 0x3E
#_02E149: dw $0000 ; 0x3F
#_02E14B: dw $0000 ; 0x40
#_02E14D: dw $0000 ; 0x41
#_02E14F: dw $0000 ; 0x42
#_02E151: dw $0000 ; 0x43
#_02E153: dw $0000 ; 0x44
#_02E155: dw $0000 ; 0x45
#_02E157: dw $0000 ; 0x46
#_02E159: dw $0000 ; 0x47
#_02E15B: dw $0000 ; 0x48
#_02E15D: dw $0000 ; 0x49
#_02E15F: dw $0000 ; 0x4A
#_02E161: dw $0000 ; 0x4B
#_02E163: dw $0000 ; 0x4C
#_02E165: dw $0000 ; 0x4D
#_02E167: dw $0000 ; 0x4E

;---------------------------------------------------------------------------------------------------

.door_graphic_location
#_02E169: dw $0000 ; 0x00
#_02E16B: dw $01AA ; 0x01
#_02E16D: dw $8124 ; 0x02
#_02E16F: dw $87BE ; 0x03
#_02E171: dw $8158 ; 0x04
#_02E173: dw $0000 ; 0x05
#_02E175: dw $0000 ; 0x06
#_02E177: dw $0000 ; 0x07
#_02E179: dw $0000 ; 0x08
#_02E17B: dw $0000 ; 0x09
#_02E17D: dw $0000 ; 0x0A
#_02E17F: dw $0000 ; 0x0B
#_02E181: dw $0000 ; 0x0C
#_02E183: dw $0000 ; 0x0D
#_02E185: dw $0000 ; 0x0E
#_02E187: dw $0000 ; 0x0F
#_02E189: dw $0000 ; 0x10
#_02E18B: dw $0000 ; 0x11
#_02E18D: dw $0000 ; 0x12
#_02E18F: dw $0000 ; 0x13
#_02E191: dw $0000 ; 0x14
#_02E193: dw $0000 ; 0x15
#_02E195: dw $0000 ; 0x16
#_02E197: dw $0000 ; 0x17
#_02E199: dw $0000 ; 0x18
#_02E19B: dw $0000 ; 0x19
#_02E19D: dw $0000 ; 0x1A
#_02E19F: dw $0000 ; 0x1B
#_02E1A1: dw $0000 ; 0x1C
#_02E1A3: dw $0000 ; 0x1D
#_02E1A5: dw $0000 ; 0x1E
#_02E1A7: dw $0000 ; 0x1F
#_02E1A9: dw $0000 ; 0x20
#_02E1AB: dw $0000 ; 0x21
#_02E1AD: dw $0000 ; 0x22
#_02E1AF: dw $0000 ; 0x23
#_02E1B1: dw $0000 ; 0x24
#_02E1B3: dw $82BE ; 0x25
#_02E1B5: dw $0000 ; 0x26
#_02E1B7: dw $0000 ; 0x27
#_02E1B9: dw $0000 ; 0x28
#_02E1BB: dw $0000 ; 0x29
#_02E1BD: dw $0000 ; 0x2A
#_02E1BF: dw $0000 ; 0x2B
#_02E1C1: dw $0000 ; 0x2C
#_02E1C3: dw $0000 ; 0x2D
#_02E1C5: dw $0000 ; 0x2E
#_02E1C7: dw $0000 ; 0x2F
#_02E1C9: dw $0000 ; 0x30
#_02E1CB: dw $0000 ; 0x31
#_02E1CD: dw $0000 ; 0x32
#_02E1CF: dw $0000 ; 0x33
#_02E1D1: dw $0000 ; 0x34
#_02E1D3: dw $0000 ; 0x35
#_02E1D5: dw $0000 ; 0x36
#_02E1D7: dw $0000 ; 0x37
#_02E1D9: dw $0000 ; 0x38
#_02E1DB: dw $0000 ; 0x39
#_02E1DD: dw $0000 ; 0x3A
#_02E1DF: dw $0000 ; 0x3B
#_02E1E1: dw $0000 ; 0x3C
#_02E1E3: dw $0000 ; 0x3D
#_02E1E5: dw $0000 ; 0x3E
#_02E1E7: dw $0000 ; 0x3F
#_02E1E9: dw $0000 ; 0x40
#_02E1EB: dw $0000 ; 0x41
#_02E1ED: dw $0000 ; 0x42
#_02E1EF: dw $0000 ; 0x43
#_02E1F1: dw $0000 ; 0x44
#_02E1F3: dw $0000 ; 0x45
#_02E1F5: dw $0000 ; 0x46
#_02E1F7: dw $0000 ; 0x47
#_02E1F9: dw $0000 ; 0x48
#_02E1FB: dw $0000 ; 0x49
#_02E1FD: dw $0000 ; 0x4A
#_02E1FF: dw $0000 ; 0x4B
#_02E201: dw $0000 ; 0x4C
#_02E203: dw $0000 ; 0x4D
#_02E205: dw $0000 ; 0x4E

;===================================================================================================

LoadOverworldFromUnderworld:
#_02E207: PHB
#_02E208: PHK
#_02E209: PLB

#_02E20A: STZ.b $1B
#_02E20C: STZ.w $0458

#_02E20F: REP #$20

#_02E211: LDA.w #$0000
#_02E214: STA.l $7EC017

#_02E218: LDA.w #$00FF
#_02E21B: STA.w $040C

#_02E21E: STZ.w $04AC

; Check room ID for custom exits
#_02E221: LDA.b $A0

; Link's house
#_02E223: CMP.w #$0104
#_02E226: BEQ .custom_exit

; Special overworld
#_02E228: CMP.w #$0180
#_02E22B: BCS .custom_exit

; EG1
#_02E22D: CMP.w #$0100
#_02E230: BCC .custom_exit

#_02E232: JSR LoadCachedEntranceProperties
#_02E235: JMP.w Overworld_LoadNewScreenProperties_pre

.custom_exit
#_02E238: LDX.b #$9E

.next_room_check
#_02E23A: DEX
#_02E23B: DEX

#_02E23C: CMP.w UnderworldExitData_room_id,X
#_02E23F: BNE .next_room_check

;---------------------------------------------------------------------------------------------------

#_02E241: LDA.w UnderworldExitData_vertical_scroll,X
#_02E244: STA.b $E6
#_02E246: STA.b $E8
#_02E248: STA.w $0122
#_02E24B: STA.w $0124

#_02E24E: LDA.w UnderworldExitData_horizontal_scroll,X
#_02E251: STA.b $E0
#_02E253: STA.b $E2
#_02E255: STA.w $011E
#_02E258: STA.w $0120

#_02E25B: LDA.w UnderworldExitData_y_coordinate,X
#_02E25E: STA.b $20

#_02E260: LDA.w UnderworldExitData_x_coordinate,X
#_02E263: STA.b $22

;---------------------------------------------------------------------------------------------------

#_02E265: LDA.w UnderworldExitData_exit_vram_addr,X
#_02E268: STA.b $84

#_02E26A: SEC
#_02E26B: SBC.w #$0400
#_02E26E: AND.w #$0F80
#_02E271: ASL A
#_02E272: XBA
#_02E273: STA.b $88

#_02E275: LDA.b $84
#_02E277: SEC
#_02E278: SBC.w #$0010
#_02E27B: AND.w #$003E
#_02E27E: LSR A
#_02E27F: STA.b $86

#_02E281: LDA.w UnderworldExitData_camera_trigger_y,X
#_02E284: STA.w $0618

#_02E287: DEC A
#_02E288: DEC A
#_02E289: STA.w $061A

#_02E28C: LDA.w UnderworldExitData_camera_trigger_x,X
#_02E28F: STA.w $061C

#_02E292: DEC A
#_02E293: DEC A
#_02E294: STA.w $061E

;---------------------------------------------------------------------------------------------------

#_02E297: LDA.w #$0002
#_02E29A: STA.b $2F

#_02E29C: LDA.w UnderworldExitData_door_graphic,X
#_02E29F: STA.w $0696

#_02E2A2: LDA.w UnderworldExitData_door_graphic_location,X
#_02E2A5: STA.w $0698

#_02E2A8: TXA
#_02E2A9: LSR A
#_02E2AA: TAX

#_02E2AB: SEP #$20

#_02E2AD: LDA.w UnderworldExitData_overworld_id,X
#_02E2B0: STA.b $8A
#_02E2B2: STA.w $040A

#_02E2B5: STZ.b $8B
#_02E2B7: STZ.w $040B

#_02E2BA: LDA.w UnderworldExitData_scroll_mod_y,X
#_02E2BD: STA.w $0624
#_02E2C0: STZ.w $0625

#_02E2C3: ASL A
#_02E2C4: BCC .positive_camera_y

#_02E2C6: DEC.w $0625

.positive_camera_y
#_02E2C9: LDA.w UnderworldExitData_scroll_mod_x,X
#_02E2CC: STA.w $0628
#_02E2CF: STZ.w $0629

#_02E2D2: ASL A
#_02E2D3: BCC .positive_camera_x

#_02E2D5: DEC.w $0629

.positive_camera_x
#_02E2D8: REP #$20

#_02E2DA: LDA.w #$0000
#_02E2DD: SEC
#_02E2DE: SBC.w $0624
#_02E2E1: STA.w $0626

#_02E2E4: LDA.w #$0000
#_02E2E7: SEC
#_02E2E8: SBC.w $0628
#_02E2EB: STA.w $062A

;===================================================================================================

Overworld_LoadNewScreenProperties_pre:
#_02E2EE: PLB

;===================================================================================================

Overworld_LoadNewScreenProperties:
#_02E2EF: LDA.w #$FFF8
#_02E2F2: STA.b $EC

#_02E2F4: SEP #$30

#_02E2F6: PHB
#_02E2F7: PHK
#_02E2F8: PLB

#_02E2F9: JSR Overworld_LoadGFXAndScreenSize

#_02E2FC: LDA.b #$E4
#_02E2FE: STA.w $0716

#_02E301: STZ.w $0713

#_02E304: LDA.b $8A
#_02E306: AND.b #$3F
#_02E308: ASL A
#_02E309: TAY

#_02E30A: REP #$20

#_02E30C: LDX.b #$00

#_02E30E: LDA.w $0712
#_02E311: BEQ .smaller_screen

#_02E313: INX
#_02E314: INX

.smaller_screen
#_02E315: JSR Overworld_SetCameraBoundaries

#_02E318: SEP #$20

#_02E31A: PLB

#_02E31B: STZ.b $A9

#_02E31D: LDA.b #$02
#_02E31F: STA.b $AA
#_02E321: STA.b $A6
#_02E323: STA.b $A7

#_02E325: LDA.b #$80
#_02E327: STA.b $45
#_02E329: STA.b $44

#_02E32B: LDA.b #$0F
#_02E32D: STA.b $42
#_02E32F: STA.b $43

#_02E331: LDA.b #$FF
#_02E333: STA.b $24
#_02E335: STA.b $29

#_02E337: RTS

;===================================================================================================

LoadCachedEntranceProperties:
#_02E338: REP #$20

#_02E33A: LDA.l $7EC140
#_02E33E: STA.w $040A

#_02E341: LDA.l $7EC142
#_02E345: STA.b $1C

#_02E347: LDA.l $7EC144
#_02E34B: STA.b $E8
#_02E34D: STA.w $0122
#_02E350: STA.b $E6
#_02E352: STA.w $0124

#_02E355: LDA.l $7EC146
#_02E359: STA.b $E2
#_02E35B: STA.w $011E
#_02E35E: STA.b $E0
#_02E360: STA.w $0120

#_02E363: LDA.l $7EC14A
#_02E367: STA.b $22

#_02E369: LDA.l $7EC148
#_02E36D: STA.b $20

; These rooms are all stairs on the overworld
#_02E36F: LDA.b $A0
#_02E371: CMP.w #$0124
#_02E374: BCS .normal_exit

; adjust stairs a bit
#_02E376: LDA.b $20
#_02E378: SEC
#_02E379: SBC.w #$0010
#_02E37C: STA.b $20

.normal_exit
; face down
#_02E37E: LDA.w #$0002
#_02E381: STA.b $2F

; Check for entrances that face upwards
#_02E383: LDA.w $0696
#_02E386: CMP.w #$FFFF
#_02E389: BNE .face_down

; upwards 32 pixels
#_02E38B: LDA.b $20
#_02E38D: CLC
#_02E38E: ADC.w #$0020
#_02E391: STA.b $20

; face up
#_02E393: STZ.b $2F

;---------------------------------------------------------------------------------------------------

.face_down
#_02E395: LDA.l $7EC14C
#_02E399: STA.b $8A

#_02E39B: LDA.l $7EC14E
#_02E39F: STA.b $84

#_02E3A1: SEC
#_02E3A2: SBC.w #$0400
#_02E3A5: AND.w #$0F80
#_02E3A8: ASL A
#_02E3A9: XBA
#_02E3AA: STA.b $88

#_02E3AC: LDA.b $84
#_02E3AE: SEC
#_02E3AF: SBC.w #$0010
#_02E3B2: AND.w #$003E
#_02E3B5: LSR A
#_02E3B6: STA.b $86

#_02E3B8: LDA.l $7EC150
#_02E3BC: STA.w $0618

#_02E3BF: DEC A
#_02E3C0: DEC A
#_02E3C1: STA.w $061A

#_02E3C4: LDA.l $7EC152
#_02E3C8: STA.w $061C

#_02E3CB: DEC A
#_02E3CC: DEC A
#_02E3CD: STA.w $061E

#_02E3D0: LDA.l $7EC154
#_02E3D4: STA.w $0600

#_02E3D7: LDA.l $7EC156
#_02E3DB: STA.w $0602

#_02E3DE: LDA.l $7EC158
#_02E3E2: STA.w $0604

#_02E3E5: LDA.l $7EC15A
#_02E3E9: STA.w $0606

#_02E3EC: LDA.l $7EC15C
#_02E3F0: STA.w $0610

#_02E3F3: LDA.l $7EC15E
#_02E3F7: STA.w $0612

#_02E3FA: LDA.l $7EC160
#_02E3FE: STA.w $0614

#_02E401: LDA.l $7EC162
#_02E405: STA.w $0616

#_02E408: LDA.l $7EC16A
#_02E40C: STA.w $0624

#_02E40F: LDA.l $7EC16C
#_02E413: STA.w $0626

#_02E416: LDA.l $7EC16E
#_02E41A: STA.w $0628

#_02E41D: LDA.l $7EC170
#_02E421: STA.w $062A

#_02E424: SEP #$20

#_02E426: LDA.l $7EC164
#_02E42A: STA.w $0AA0

#_02E42D: LDA.l $7EC165
#_02E431: STA.w $0AA1

#_02E434: LDA.l $7EC166
#_02E438: STA.w $0AA2

#_02E43B: LDA.l $7EC167
#_02E43F: STA.w $0AA3

#_02E442: REP #$20

#_02E444: RTS

;===================================================================================================
; TODO better names
pool LoadSpecialOverworld

.camera600
#_02E445: dw $0000, $0000, $0000, $0000
#_02E44D: dw $0000, $0000, $0000, $0000
#_02E455: dw $0200, $0200, $0000, $0000
#_02E45D: dw $0000, $0000, $0000, $0000

.camera602
#_02E465: dw $0120, $0020, $0320, $0020
#_02E46D: dw $0000, $0000, $0320, $0320
#_02E475: dw $0320, $0220, $0000, $0000
#_02E47D: dw $0000, $0000, $0320, $0320

.camera604
#_02E485: dw $0000, $0100, $0200, $0600
#_02E48D: dw $0600, $0A00, $0C00, $0C00
#_02E495: dw $0000, $0100, $0200, $0600
#_02E49D: dw $0600, $0A00, $0C00, $0C00

.camera606
#_02E4A5: dw $0000, $0100, $0500, $0600
#_02E4AD: dw $0600, $0A00, $0C00, $0C00
#_02E4B5: dw $0000, $0100, $0400, $0600
#_02E4BD: dw $0600, $0A00, $0C00, $0C00

.camera610
#_02E4C5: dw $FF20, $FF20, $FF20, $FF20
#_02E4CD: dw $FF20, $FF20, $FF20, $FF20
#_02E4D5: dw $FF20, $FF20, $0120, $FF20
#_02E4DD: dw $FF20, $FF20, $FF20, $0120

.camera614
#_02E4E5: dw $FFFC, $0100, $0300, $0100
#_02E4ED: dw $0500, $0900, $0B00, $0B00
#_02E4F5: dw $FFFC, $0100, $0300, $0500
#_02E4FD: dw $0500, $0900, $0B00, $0B00

.camera612
#_02E505: dw $FF20, $FF20, $FF20, $FF20
#_02E50D: dw $FF20, $FF20, $0400, $0400
#_02E515: dw $FF20, $FF20, $0120, $FF20
#_02E51D: dw $FF20, $FF20, $0400, $0400

.camera616
#_02E525: dw $0004, $0104, $0300, $0100
#_02E52D: dw $0500, $0900, $0B00, $0B00
#_02E535: dw $0004, $0104, $0300, $0100
#_02E53D: dw $0500, $0900, $0B00, $0B00

.camera70C
#_02E545: dw $0000, $0000, $0200, $0600
#_02E54D: dw $0600, $0A00, $0C00, $0C00
#_02E555: dw $0000, $0000, $0200, $0600
#_02E55D: dw $0600, $0A00, $0C00, $0C00

;---------------------------------------------------------------------------------------------------

.direction
#_02E565: db $00, $04, $00, $00
#_02E569: db $00, $00, $00, $00
#_02E56D: db $00, $00, $00, $00
#_02E571: db $00, $00, $00, $00

.gfx_AA3
#_02E575: db $0C, $0C, $0E, $0E
#_02E579: db $0E, $10, $10, $10
#_02E57D: db $0E, $0E, $0E, $0E
#_02E581: db $10, $10, $10, $10

.gfx_AA2
#_02E585: db $2F, $2F, $2F, $2F
#_02E589: db $2F, $2F, $2F, $2F
#_02E58D: db $2F, $2F, $2F, $2F
#_02E591: db $2F, $2F, $2F, $2F

.palette_prop_a
#_02E595: db $0A, $0A, $0A, $0A
#_02E599: db $02, $02, $02, $0A
#_02E59D: db $02, $02, $0A, $02
#_02E5A1: db $02, $02, $02, $0A

.palette_prop_b
#_02E5A5: db $01, $08, $08, $08
#_02E5A9: db $00, $00, $00, $00
#_02E5AD: db $00, $00, $08, $00
#_02E5B1: db $00, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

LoadSpecialOverworld:
#_02E5B5: REP #$20

#_02E5B7: STZ.w $04AC

#_02E5BA: LDA.w $040A
#_02E5BD: STA.l $7EC100

#_02E5C1: LDA.b $1C
#_02E5C3: STA.l $7EC102

#_02E5C7: LDA.b $E8
#_02E5C9: STA.l $7EC104

#_02E5CD: LDA.b $E2
#_02E5CF: STA.l $7EC106

#_02E5D3: LDA.b $20
#_02E5D5: STA.l $7EC108

#_02E5D9: LDA.b $22
#_02E5DB: STA.l $7EC10A

#_02E5DF: LDA.w $0618
#_02E5E2: STA.l $7EC110

#_02E5E6: LDA.w $061C
#_02E5E9: STA.l $7EC112

#_02E5ED: LDA.b $8A
#_02E5EF: STA.l $7EC10C

#_02E5F3: LDA.b $84
#_02E5F5: STA.l $7EC10E

#_02E5F9: LDA.w $0600
#_02E5FC: STA.l $7EC114

#_02E600: LDA.w $0602
#_02E603: STA.l $7EC116

#_02E607: LDA.w $0604
#_02E60A: STA.l $7EC118

#_02E60E: LDA.w $0606
#_02E611: STA.l $7EC11A

#_02E615: LDA.w $0610
#_02E618: STA.l $7EC11C

#_02E61C: LDA.w $0612
#_02E61F: STA.l $7EC11E

#_02E623: LDA.w $0614
#_02E626: STA.l $7EC120

#_02E62A: LDA.w $0616
#_02E62D: STA.l $7EC122

#_02E631: LDA.w $0624
#_02E634: STA.l $7EC12A

#_02E638: LDA.w $0626
#_02E63B: STA.l $7EC12C

#_02E63F: LDA.w $0628
#_02E642: STA.l $7EC12E

#_02E646: LDA.w $062A
#_02E649: STA.l $7EC130

#_02E64D: SEP #$20

#_02E64F: LDA.w $0AA0
#_02E652: STA.l $7EC124

#_02E656: LDA.w $0AA1
#_02E659: STA.l $7EC125

#_02E65D: LDA.w $0AA2
#_02E660: STA.l $7EC126

#_02E664: LDA.w $0AA3
#_02E667: STA.l $7EC127

;---------------------------------------------------------------------------------------------------

#_02E66B: SEP #$20

#_02E66D: JSR LoadOverworldFromUnderworld

#_02E670: REP #$20

; TODO is this checking for credits?
#_02E672: LDA.b $A0
#_02E674: CMP.w #$1010
#_02E677: BNE .not_zora

; Send us to Zora's domain
#_02E679: LDA.w #$0182
#_02E67C: STA.b $A0

.not_zora
#_02E67E: SEP #$20

#_02E680: PHB
#_02E681: PHK
#_02E682: PLB

#_02E683: LDA.b $A0
#_02E685: PHA

#_02E686: SEC
#_02E687: SBC.b #$80
#_02E689: STA.b $A0

#_02E68B: TAX

#_02E68C: LDA.l .direction,X
#_02E690: STA.b $2F

#_02E692: STZ.w $0412

#_02E695: LDA.l .gfx_AA3,X
#_02E699: STA.w $0AA3

#_02E69C: LDA.l .gfx_AA2,X
#_02E6A0: STA.w $0AA2

#_02E6A3: PHX

#_02E6A4: LDA.l .palette_prop_b,X
#_02E6A8: STA.b $00

#_02E6AA: LDA.l .palette_prop_a,X
#_02E6AE: JSL OverworldPalettesLoader

#_02E6B2: PLX

#_02E6B3: REP #$30

#_02E6B5: LDA.w #$03F0
#_02E6B8: STA.b $00

#_02E6BA: LDA.b $A0
#_02E6BC: AND.w #$003F
#_02E6BF: ASL A
#_02E6C0: TAX

#_02E6C1: LDA.l .camera600,X
#_02E6C5: STA.w $0708

#_02E6C8: LDA.l .camera70C,X
#_02E6CC: LSR A
#_02E6CD: LSR A
#_02E6CE: LSR A
#_02E6CF: STA.w $070C

#_02E6D2: LDA.b $00
#_02E6D4: STA.w $070A

#_02E6D7: LDA.b $00
#_02E6D9: LSR A
#_02E6DA: LSR A
#_02E6DB: LSR A
#_02E6DC: STA.w $070E

;---------------------------------------------------------------------------------------------------

#_02E6DF: LDA.b $A0
#_02E6E1: ASL A
#_02E6E2: TAY

#_02E6E3: SEP #$10

#_02E6E5: LDA.w .camera600,Y
#_02E6E8: STA.w $0600

#_02E6EB: LDA.w .camera602,Y
#_02E6EE: STA.w $0602

#_02E6F1: LDA.w .camera604,Y
#_02E6F4: STA.w $0604

#_02E6F7: LDA.w .camera606,Y
#_02E6FA: STA.w $0606

#_02E6FD: LDA.w .camera610,Y
#_02E700: STA.w $0610

#_02E703: LDA.w .camera612,Y
#_02E706: STA.w $0612

#_02E709: LDA.w .camera614,Y
#_02E70C: STA.w $0614

#_02E70F: LDA.w .camera616,Y
#_02E712: STA.w $0616

;---------------------------------------------------------------------------------------------------

#_02E715: SEP #$20

#_02E717: PLA
#_02E718: STA.b $A0

#_02E71A: PLB

#_02E71B: JSL Overworld_SetScreenBGColorCacheOnly

#_02E71F: RTS

;===================================================================================================

LoadOverworldFromSpecialOverworld:
#_02E720: REP #$20

#_02E722: STZ.w $04AC

#_02E725: LDA.l $7EC100
#_02E729: STA.w $040A

#_02E72C: LDA.l $7EC102
#_02E730: STA.b $1C

#_02E732: LDA.l $7EC104
#_02E736: STA.b $E8
#_02E738: STA.w $0122
#_02E73B: STA.b $E6
#_02E73D: STA.w $0124

#_02E740: LDA.l $7EC106
#_02E744: STA.b $E2
#_02E746: STA.w $011E
#_02E749: STA.b $E0
#_02E74B: STA.w $0120

#_02E74E: LDA.l $7EC108
#_02E752: STA.b $20

#_02E754: LDA.l $7EC10A
#_02E758: STA.b $22

#_02E75A: LDA.l $7EC10C
#_02E75E: STA.b $8A

#_02E760: LDA.l $7EC10E
#_02E764: STA.b $84

#_02E766: SEC
#_02E767: SBC.w #$0400
#_02E76A: AND.w #$0F80
#_02E76D: ASL A
#_02E76E: XBA
#_02E76F: STA.b $88

#_02E771: LDA.b $84
#_02E773: SEC
#_02E774: SBC.w #$0010
#_02E777: AND.w #$003E
#_02E77A: LSR A
#_02E77B: STA.b $86

;---------------------------------------------------------------------------------------------------

#_02E77D: LDA.l $7EC110
#_02E781: STA.w $0618

#_02E784: DEC A
#_02E785: DEC A
#_02E786: STA.w $061A

#_02E789: LDA.l $7EC112
#_02E78D: STA.w $061C

#_02E790: DEC A
#_02E791: DEC A
#_02E792: STA.w $061E

#_02E795: LDA.l $7EC114
#_02E799: STA.w $0600

#_02E79C: LDA.l $7EC116
#_02E7A0: STA.w $0602

#_02E7A3: LDA.l $7EC118
#_02E7A7: STA.w $0604

#_02E7AA: LDA.l $7EC11A
#_02E7AE: STA.w $0606

#_02E7B1: LDA.l $7EC11C
#_02E7B5: STA.w $0610

#_02E7B8: LDA.l $7EC11E
#_02E7BC: STA.w $0612

#_02E7BF: LDA.l $7EC120
#_02E7C3: STA.w $0614

#_02E7C6: LDA.l $7EC122
#_02E7CA: STA.w $0616

#_02E7CD: LDA.l $7EC12A
#_02E7D1: STA.w $0624

#_02E7D4: LDA.l $7EC12C
#_02E7D8: STA.w $0626

#_02E7DB: LDA.l $7EC12E
#_02E7DF: STA.w $0628

#_02E7E2: LDA.l $7EC130
#_02E7E6: STA.w $062A

;---------------------------------------------------------------------------------------------------

#_02E7E9: SEP #$20

#_02E7EB: LDA.l $7EC124
#_02E7EF: STA.w $0AA0

#_02E7F2: LDA.l $7EC125
#_02E7F6: STA.w $0AA1

#_02E7F9: LDA.l $7EC126
#_02E7FD: STA.w $0AA2

#_02E800: LDA.l $7EC127
#_02E804: STA.w $0AA3

#_02E807: LDX.b $8A

#_02E809: LDA.l $7EFD40,X
#_02E80D: STA.b $00

#_02E80F: LDA.l OverworldPalettesScreenToSet,X
#_02E813: JSL OverworldPalettesLoader
#_02E817: JSL Overworld_SetScreenBGColorCacheOnly

;---------------------------------------------------------------------------------------------------

#_02E81B: STZ.b $A9

#_02E81D: LDA.b #$02
#_02E81F: STA.b $AA
#_02E821: STA.b $A6
#_02E823: STA.b $A7

#_02E825: LDA.b #$80
#_02E827: STA.b $45
#_02E829: STA.b $44

#_02E82B: LDA.b #$0F
#_02E82D: STA.b $42
#_02E82F: STA.b $43

#_02E831: LDA.b #$FF
#_02E833: STA.b $24
#_02E835: STA.b $29

#_02E837: SEP #$30

#_02E839: JSL Link_ResetSwimmingState
#_02E83D: JSR Overworld_LoadGFXAndScreenSize

#_02E840: LDA.b #$E4
#_02E842: STA.w $0716

#_02E845: STZ.w $0713

#_02E848: RTS

;===================================================================================================

pool LoadTransport

.screen_id
#_02E849: dw $0003 ; Flute 1
#_02E84B: dw $0016 ; Flute 2
#_02E84D: dw $0018 ; Flute 3
#_02E84F: dw $002C ; Flute 4
#_02E851: dw $002F ; Flute 5
#_02E853: dw $0030 ; Flute 6
#_02E855: dw $003B ; Flute 7
#_02E857: dw $003F ; Flute 8
#_02E859: dw $005B ; Pyramid
#_02E85B: dw $0035 ; Lake Hylia whirlpool
#_02E85D: dw $000F ; Waterfall of Wishing whirlpool
#_02E85F: dw $0015 ; Witch whirlpool
#_02E861: dw $0033 ; South of Link's house whirlpool
#_02E863: dw $0012 ; Death Mountain whirlpool
#_02E865: dw $003F ; Lake Hylia falls whirlpool
#_02E867: dw $0055 ; Dark witch whirlpool
#_02E869: dw $007F ; Dark Lake Hylia falls whirlpool

.map16_index
#_02E86B: dw $1600 ; Flute 1
#_02E86D: dw $0888 ; Flute 2
#_02E86F: dw $0B30 ; Flute 3
#_02E871: dw $0588 ; Flute 4
#_02E873: dw $0798 ; Flute 5
#_02E875: dw $1880 ; Flute 6
#_02E877: dw $069E ; Flute 7
#_02E879: dw $0810 ; Flute 8
#_02E87B: dw $002E ; Pyramid
#_02E87D: dw $1242 ; Lake Hylia whirlpool
#_02E87F: dw $0680 ; Waterfall of Wishing whirlpool
#_02E881: dw $0112 ; Witch whirlpool
#_02E883: dw $059E ; South of Link's house whirlpool
#_02E885: dw $048E ; Death Mountain whirlpool
#_02E887: dw $0280 ; Lake Hylia falls whirlpool
#_02E889: dw $0112 ; Dark witch whirlpool
#_02E88B: dw $0280 ; Dark Lake Hylia falls whirlpool

.vertical_scroll
#_02E88D: dw $02CA ; Flute 1
#_02E88F: dw $0516 ; Flute 2
#_02E891: dw $0759 ; Flute 3
#_02E893: dw $0AB9 ; Flute 4
#_02E895: dw $0AFA ; Flute 5
#_02E897: dw $0F1E ; Flute 6
#_02E899: dw $0EDF ; Flute 7
#_02E89B: dw $0F05 ; Flute 8
#_02E89D: dw $0600 ; Pyramid
#_02E89F: dw $0E46 ; Lake Hylia whirlpool
#_02E8A1: dw $02C6 ; Waterfall of Wishing whirlpool
#_02E8A3: dw $042A ; Witch whirlpool
#_02E8A5: dw $0CBA ; South of Link's house whirlpool
#_02E8A7: dw $049A ; Death Mountain whirlpool
#_02E8A9: dw $0E56 ; Lake Hylia falls whirlpool
#_02E8AB: dw $042A ; Dark witch whirlpool
#_02E8AD: dw $0E56 ; Dark Lake Hylia falls whirlpool

.horizontal_scroll
#_02E8AF: dw $060E ; Flute 1
#_02E8B1: dw $0C4E ; Flute 2
#_02E8B3: dw $017E ; Flute 3
#_02E8B5: dw $0840 ; Flute 4
#_02E8B7: dw $0EB2 ; Flute 5
#_02E8B9: dw $0000 ; Flute 6
#_02E8BB: dw $06F2 ; Flute 7
#_02E8BD: dw $0E75 ; Flute 8
#_02E8BF: dw $0778 ; Pyramid
#_02E8C1: dw $0C0A ; Lake Hylia whirlpool
#_02E8C3: dw $0E06 ; Waterfall of Wishing whirlpool
#_02E8C5: dw $0A8A ; Witch whirlpool
#_02E8C7: dw $06EA ; South of Link's house whirlpool
#_02E8C9: dw $0462 ; Death Mountain whirlpool
#_02E8CB: dw $0E00 ; Lake Hylia falls whirlpool
#_02E8CD: dw $0A8A ; Dark witch whirlpool
#_02E8CF: dw $0E00 ; Dark Lake Hylia falls whirlpool

.link_pos_y
#_02E8D1: dw $0328 ; Flute 1
#_02E8D3: dw $0578 ; Flute 2
#_02E8D5: dw $07B7 ; Flute 3
#_02E8D7: dw $0B17 ; Flute 4
#_02E8D9: dw $0B58 ; Flute 5
#_02E8DB: dw $0FA8 ; Flute 6
#_02E8DD: dw $0F3D ; Flute 7
#_02E8DF: dw $0F67 ; Flute 8
#_02E8E1: dw $065C ; Pyramid
#_02E8E3: dw $0EA8 ; Lake Hylia whirlpool
#_02E8E5: dw $0328 ; Waterfall of Wishing whirlpool
#_02E8E7: dw $0488 ; Witch whirlpool
#_02E8E9: dw $0D18 ; South of Link's house whirlpool
#_02E8EB: dw $04F8 ; Death Mountain whirlpool
#_02E8ED: dw $0EB8 ; Lake Hylia falls whirlpool
#_02E8EF: dw $0488 ; Dark witch whirlpool
#_02E8F1: dw $0EB8 ; Dark Lake Hylia falls whirlpool

.link_pos_x
#_02E8F3: dw $0678 ; Flute 1
#_02E8F5: dw $0CC8 ; Flute 2
#_02E8F7: dw $0200 ; Flute 3
#_02E8F9: dw $08B8 ; Flute 4
#_02E8FB: dw $0F30 ; Flute 5
#_02E8FD: dw $0078 ; Flute 6
#_02E8FF: dw $0778 ; Flute 7
#_02E901: dw $0EF3 ; Flute 8
#_02E903: dw $07F0 ; Pyramid
#_02E905: dw $0C90 ; Lake Hylia whirlpool
#_02E907: dw $0E80 ; Waterfall of Wishing whirlpool
#_02E909: dw $0B10 ; Witch whirlpool
#_02E90B: dw $0770 ; South of Link's house whirlpool
#_02E90D: dw $04E8 ; Death Mountain whirlpool
#_02E90F: dw $0E68 ; Lake Hylia falls whirlpool
#_02E911: dw $0B10 ; Dark witch whirlpool
#_02E913: dw $0E68 ; Dark Lake Hylia falls whirlpool

.camera_trigger_y
#_02E915: dw $0337 ; Flute 1
#_02E917: dw $0583 ; Flute 2
#_02E919: dw $07C6 ; Flute 3
#_02E91B: dw $0B26 ; Flute 4
#_02E91D: dw $0B67 ; Flute 5
#_02E91F: dw $0F8D ; Flute 6
#_02E921: dw $0F4C ; Flute 7
#_02E923: dw $0F72 ; Flute 8
#_02E925: dw $066D ; Pyramid
#_02E927: dw $0EB3 ; Lake Hylia whirlpool
#_02E929: dw $0333 ; Waterfall of Wishing whirlpool
#_02E92B: dw $0497 ; Witch whirlpool
#_02E92D: dw $0D27 ; South of Link's house whirlpool
#_02E92F: dw $0507 ; Death Mountain whirlpool
#_02E931: dw $0EC3 ; Lake Hylia falls whirlpool
#_02E933: dw $0497 ; Dark witch whirlpool
#_02E935: dw $0EC3 ; Dark Lake Hylia falls whirlpool

.camera_trigger_x
#_02E937: dw $0683 ; Flute 1
#_02E939: dw $0CD3 ; Flute 2
#_02E93B: dw $020B ; Flute 3
#_02E93D: dw $08BF ; Flute 4
#_02E93F: dw $0F37 ; Flute 5
#_02E941: dw $008D ; Flute 6
#_02E943: dw $077F ; Flute 7
#_02E945: dw $0EFA ; Flute 8
#_02E947: dw $07F7 ; Pyramid
#_02E949: dw $0C97 ; Lake Hylia whirlpool
#_02E94B: dw $0E8B ; Waterfall of Wishing whirlpool
#_02E94D: dw $0B17 ; Witch whirlpool
#_02E94F: dw $0777 ; South of Link's house whirlpool
#_02E951: dw $04EF ; Death Mountain whirlpool
#_02E953: dw $0E85 ; Lake Hylia falls whirlpool
#_02E955: dw $0B17 ; Dark witch whirlpool
#_02E957: dw $0E85 ; Dark Lake Hylia falls whirlpool

.scroll_mod_y
#_02E959: dw $FFF6 ; Flute 1
#_02E95B: dw $FFFA ; Flute 2
#_02E95D: dw $0007 ; Flute 3
#_02E95F: dw $FFF7 ; Flute 4
#_02E961: dw $FFF6 ; Flute 5
#_02E963: dw $0000 ; Flute 6
#_02E965: dw $FFF1 ; Flute 7
#_02E967: dw $FFFB ; Flute 8
#_02E969: dw $0000 ; Pyramid
#_02E96B: dw $FFFA ; Lake Hylia whirlpool
#_02E96D: dw $000A ; Waterfall of Wishing whirlpool
#_02E96F: dw $FFF6 ; Witch whirlpool
#_02E971: dw $FFF6 ; South of Link's house whirlpool
#_02E973: dw $FFF6 ; Death Mountain whirlpool
#_02E975: dw $FFFA ; Lake Hylia falls whirlpool
#_02E977: dw $FFF6 ; Dark witch whirlpool
#_02E979: dw $FFFA ; Dark Lake Hylia falls whirlpool

.scroll_mod_x
#_02E97B: dw $FFF2 ; Flute 1
#_02E97D: dw $FFF2 ; Flute 2
#_02E97F: dw $0002 ; Flute 3
#_02E981: dw $0000 ; Flute 4
#_02E983: dw $000E ; Flute 5
#_02E985: dw $0000 ; Flute 6
#_02E987: dw $FFFE ; Flute 7
#_02E989: dw $000B ; Flute 8
#_02E98B: dw $FFF8 ; Pyramid
#_02E98D: dw $0006 ; Lake Hylia whirlpool
#_02E98F: dw $FFFA ; Waterfall of Wishing whirlpool
#_02E991: dw $FFFA ; Witch whirlpool
#_02E993: dw $0006 ; South of Link's house whirlpool
#_02E995: dw $000E ; Death Mountain whirlpool
#_02E997: dw $0000 ; Lake Hylia falls whirlpool
#_02E999: dw $FFFA ; Dark witch whirlpool
#_02E99B: dw $0000 ; Dark Lake Hylia falls whirlpool

pool off

;---------------------------------------------------------------------------------------------------

FluteMenu_LoadTransport:
#_02E99D: PHB
#_02E99E: PHK
#_02E99F: PLB

#_02E9A0: REP #$20

#_02E9A2: STZ.w $04AC

#_02E9A5: ASL.w $1AF0
#_02E9A8: LDX.w $1AF0

;===================================================================================================

LoadTransport:
#_02E9AB: LDA.w .vertical_scroll,X
#_02E9AE: STA.b $E6
#_02E9B0: STA.b $E8
#_02E9B2: STA.w $0122
#_02E9B5: STA.w $0124

#_02E9B8: LDA.w .horizontal_scroll,X
#_02E9BB: STA.b $E0
#_02E9BD: STA.b $E2
#_02E9BF: STA.w $011E
#_02E9C2: STA.w $0120

#_02E9C5: LDA.w .link_pos_y,X
#_02E9C8: STA.b $20

#_02E9CA: LDA.w .link_pos_x,X
#_02E9CD: STA.b $22

#_02E9CF: LDA.w .scroll_mod_y,X
#_02E9D2: STA.w $0624

#_02E9D5: LDA.w #$0000
#_02E9D8: SEC
#_02E9D9: SBC.w $0624
#_02E9DC: STA.w $0626

#_02E9DF: LDA.w .scroll_mod_x,X
#_02E9E2: STA.w $0628

#_02E9E5: LDA.w #$0000
#_02E9E8: SEC
#_02E9E9: SBC.w $0628
#_02E9EC: STA.w $062A

#_02E9EF: LDA.w .screen_id,X
#_02E9F2: STA.b $8A
#_02E9F4: STA.w $040A

#_02E9F7: LDA.w .map16_index,X
#_02E9FA: STA.b $84

#_02E9FC: SEC
#_02E9FD: SBC.w #$0400
#_02EA00: AND.w #$0F80
#_02EA03: ASL A
#_02EA04: XBA
#_02EA05: STA.b $88

#_02EA07: LDA.b $84
#_02EA09: SEC
#_02EA0A: SBC.w #$0010
#_02EA0D: AND.w #$003E
#_02EA10: LSR A
#_02EA11: STA.b $86

#_02EA13: LDA.w .camera_trigger_y,X
#_02EA16: STA.w $0618

#_02EA19: DEC A
#_02EA1A: DEC A
#_02EA1B: STA.w $061A

#_02EA1E: LDA.w .camera_trigger_x,X
#_02EA21: STA.w $061C

#_02EA24: DEC A
#_02EA25: DEC A
#_02EA26: STA.w $061E

;---------------------------------------------------------------------------------------------------

#_02EA29: STZ.w $0696
#_02EA2C: STZ.w $0698

#_02EA2F: PLB

#_02EA30: JSR Overworld_LoadNewScreenProperties

#_02EA33: JSL Sprite_ResetAll
#_02EA37: JSL Sprite_ReloadAll_Overworld

#_02EA3B: STZ.b $6C

#_02EA3D: JSR DeleteCertainAncillaeStopDashing

#_02EA40: RTL

;===================================================================================================

FluteMenu_LoadSelectedScreenPalettes:
#_02EA41: JSR OverworldLoadScreensPaletteSet

#_02EA44: LDX.b $8A

#_02EA46: LDA.l $7EFD40,X
#_02EA4A: STA.b $00

#_02EA4C: LDA.l OverworldPalettesScreenToSet,X

#_02EA50: JSL OverworldPalettesLoader
#_02EA54: JSL Overworld_SetScreenBGColor
#_02EA58: JSR Overworld_CopyPalettesToCache_WithPrep

#_02EA5B: RTL

;===================================================================================================

pool FindPartnerWhirlpoolExit

.my_screen_id
#_02EA5C: dw $000F ; Lake Hylia whirlpool
#_02EA5E: dw $0035 ; Waterfall of Wishing whirlpool
#_02EA60: dw $0033 ; Witch whirlpool
#_02EA62: dw $0015 ; South of Link's house whirlpool
#_02EA64: dw $003F ; Death Mountain whirlpool
#_02EA66: dw $0012 ; Lake Hylia falls whirlpool
#_02EA68: dw $007F ; Dark witch whirlpool
#_02EA6A: dw $0055 ; Dark Lake Hylia falls whirlpool

pool off

;---------------------------------------------------------------------------------------------------

FindPartnerWhirlpoolExit:
#_02EA6C: PHB
#_02EA6D: PHK
#_02EA6E: PLB

#_02EA6F: REP #$20

#_02EA71: LDX.b #$10

#_02EA73: LDA.b $8A

.next_screen
#_02EA75: DEX
#_02EA76: DEX

#_02EA77: CMP.l .my_screen_id,X
#_02EA7B: BNE .next_screen

;---------------------------------------------------------------------------------------------------

#_02EA7D: TXA
#_02EA7E: CLC
#_02EA7F: ADC.w #$0012
#_02EA82: TAX

#_02EA83: STZ.w $04AC

#_02EA86: JMP.w LoadTransport

;===================================================================================================

Module09_21:
#_02EA89: REP #$20

#_02EA8B: LDA.b $84
#_02EA8D: PHA

#_02EA8E: LDA.b $86
#_02EA90: PHA

#_02EA91: LDA.b $88
#_02EA93: PHA

#_02EA94: LDX.b $8A

#_02EA96: LDA.l OverworldScreenSize,X
#_02EA9A: AND.w #$00FF
#_02EA9D: BEQ OverworldBuildMapAndTrigger

#_02EA9F: LDA.w #$0390
#_02EAA2: STA.b $84

#_02EAA4: SEC
#_02EAA5: SBC.w #$0400
#_02EAA8: AND.w #$0F80
#_02EAAB: ASL A
#_02EAAC: XBA
#_02EAAD: STA.b $88

#_02EAAF: LDA.b $84
#_02EAB1: SEC
#_02EAB2: SBC.w #$0010
#_02EAB5: AND.w #$003E
#_02EAB8: LSR A
#_02EAB9: STA.b $86

#_02EABB: BRA OverworldBuildMapAndTrigger

;===================================================================================================

Overworld_LoadAndBuildScreen:
#_02EABD: REP #$20

#_02EABF: LDA.b $84
#_02EAC1: PHA

#_02EAC2: LDA.b $86
#_02EAC4: PHA

#_02EAC5: LDA.b $88
#_02EAC7: PHA

#_02EAC8: LDX.b $8A

#_02EACA: LDA.l OverworldScreenSize,X
#_02EACE: AND.w #$00FF
#_02EAD1: BEQ .big_screen

#_02EAD3: LDA.w #$0390
#_02EAD6: STA.b $84

#_02EAD8: SEC
#_02EAD9: SBC.w #$0400
#_02EADC: AND.w #$0F80
#_02EADF: ASL A
#_02EAE0: XBA
#_02EAE1: STA.b $88

#_02EAE3: LDA.b $84
#_02EAE5: SEC
#_02EAE6: SBC.w #$0010
#_02EAE9: AND.w #$003E
#_02EAEC: LSR A
#_02EAED: STA.b $86

.big_screen
#_02EAEF: SEP #$20

#_02EAF1: JSR Overworld_DrawQuadrantsAndOverlays

;===================================================================================================

OverworldBuildMapAndTrigger:
#_02EAF4: REP #$20

#_02EAF6: LDA.w #$FFFF
#_02EAF9: STA.b $C8

#_02EAFB: STZ.b $CA
#_02EAFD: STZ.b $CC

#_02EAFF: SEP #$20

#_02EB01: JSR BuildOverworldMapFromMap16

#_02EB04: REP #$20

#_02EB06: PLA
#_02EB07: STA.b $88

#_02EB09: PLA
#_02EB0A: STA.b $86

#_02EB0C: PLA
#_02EB0D: STA.b $84

#_02EB0F: SEP #$20

#_02EB11: LDA.b #$04
#_02EB13: STA.b $17
#_02EB15: STA.w $0710

#_02EB18: INC.b $11

#_02EB1A: STZ.b $13

#_02EB1C: RTS

;===================================================================================================

Module08_02_LoadAndAdvance:
#_02EB1D: JSR Overworld_LoadAndBuildScreen

#_02EB20: LDA.b #$10
#_02EB22: STA.b $10

#_02EB24: STZ.b $B0
#_02EB26: STZ.b $11

#_02EB28: RTS

;===================================================================================================
; TODO organize and name
pool Overworld_HandleOverlaysAndBombDoors

.bombable_door_location
#_02EB29: dw $0000, $0000, $0000, $0000
#_02EB31: dw $0000, $0000, $0000, $0000
#_02EB39: dw $0000, $0000, $0000, $0000
#_02EB41: dw $0000, $0000, $0000, $0000
#_02EB49: dw $0000, $0000, $0000, $0000
#_02EB51: dw $0000, $0000, $0000, $0000
#_02EB59: dw $1C0C, $1C0C, $0000, $0000
#_02EB61: dw $0000, $0000, $0000, $0000
#_02EB69: dw $1C0C, $1C0C, $0000, $0000
#_02EB71: dw $0000, $0000, $0000, $0000
#_02EB79: dw $0000, $0000, $0000, $0000
#_02EB81: dw $0000, $0000, $0000, $0000
#_02EB89: dw $0000, $0000, $0000, $0000
#_02EB91: dw $03B0, $180C, $180C, $0288
#_02EB99: dw $0000, $0000, $0000, $0000
#_02EBA1: dw $0000, $180C, $180C, $0000
#_02EBA9: dw $0000, $0000, $0000, $0000
#_02EBB1: dw $0000, $0000, $0000, $0000
#_02EBB9: dw $0000, $0000, $0000, $0000
#_02EBC1: dw $0000, $0000, $0000, $0000
#_02EBC9: dw $0000, $0000, $0000, $0000
#_02EBD1: dw $0000, $0000, $0000, $0000
#_02EBD9: dw $1AB6, $1AB6, $0000, $0E2E
#_02EBE1: dw $0E2E, $0000, $0000, $0000
#_02EBE9: dw $1AB6, $1AB6, $0000, $0E2E
#_02EBF1: dw $0E2E, $0000, $0000, $0000
#_02EBF9: dw $0000, $0000, $0000, $0000
#_02EC01: dw $0000, $0000, $0000, $0000
#_02EC09: dw $0000, $0000, $0000, $0000
#_02EC11: dw $03B0, $0000, $0000, $0288
#_02EC19: dw $0000, $0000, $0000, $0000
#_02EC21: dw $0000, $0000, $0000, $0000

pool off

;===================================================================================================

Overworld_DrawQuadrantsAndOverlays:
#_02EC29: REP #$30

#_02EC2B: JSR Overworld_DecompressAndDrawAllQuadrants

;---------------------------------------------------------------------------------------------------

#_02EC2E: LDX.w #$001E
#_02EC31: LDA.w #$0DBE

.next
#_02EC34: STA.l $7E4000,X
#_02EC38: STA.l $7E4020,X
#_02EC3C: STA.l $7E4020,X
#_02EC40: STA.l $7E4040,X
#_02EC44: STA.l $7E4060,X

#_02EC48: DEX
#_02EC49: DEX
#_02EC4A: BPL .next

;---------------------------------------------------------------------------------------------------

#_02EC4C: LDX.w $0696
#_02EC4F: BEQ Overworld_HandleOverlaysAndBombDoors

#_02EC51: CPX.w #$FFFF
#_02EC54: BEQ Overworld_HandleOverlaysAndBombDoors

#_02EC56: CPX.w #$8000
#_02EC59: BCS .do_two

#_02EC5B: LDA.w #$0D9E
#_02EC5E: STA.l $7E2000,X

#_02EC62: JSL Overworld_MemorizeMap16Change

#_02EC66: LDA.w #$0DA0
#_02EC69: BRA .just_one

.do_two
#_02EC6B: TXA
#_02EC6C: AND.w #$1FFF
#_02EC6F: TAX

#_02EC70: LDA.w #$0DAE
#_02EC73: JSL Overworld_MemorizeMap16Change
#_02EC77: STA.l $7E2000,X

#_02EC7B: LDA.w #$0DAF

.just_one
#_02EC7E: STA.l $7E2002,X

#_02EC82: INX
#_02EC83: INX

#_02EC84: JSL Overworld_MemorizeMap16Change

#_02EC88: DEX
#_02EC89: DEX

#_02EC8A: STZ.w $0696

;===================================================================================================

Overworld_HandleOverlaysAndBombDoors:
; Place some hardcoded rocks for swamp and pod portals
#_02EC8D: LDA.w #$020F

#_02EC90: LDX.b $8A
#_02EC92: CPX.w #$0033
#_02EC95: BNE .not_swamp_portal

#_02EC97: STA.l $7E22A8

.not_swamp_portal
#_02EC9B: CPX.w #$002F
#_02EC9E: BNE .not_pod_portal

#_02ECA0: STA.l $7E2BB2

;---------------------------------------------------------------------------------------------------

.not_pod_portal
#_02ECA4: SEP #$30

#_02ECA6: LDX.b $8A
#_02ECA8: CPX.b #$80
#_02ECAA: BCS .no_overlay

#_02ECAC: LDA.l $7EF280,X
#_02ECB0: AND.b #$20
#_02ECB2: BEQ .no_overlay

#_02ECB4: JSL ApplyOverworldOverlay

.no_overlay
#_02ECB8: LDX.b $8A

; Bombable entrances
#_02ECBA: LDA.l $7EF280,X
#_02ECBE: AND.b #$02
#_02ECC0: BEQ .exit

#_02ECC2: REP #$30

#_02ECC4: LDA.b $8A
#_02ECC6: ASL A
#_02ECC7: TAX

#_02ECC8: LDA.l .bombable_door_location,X
#_02ECCC: TAX

#_02ECCD: LDA.w #$0DAE
#_02ECD0: STA.l $7E2000,X

#_02ECD4: LDA.w #$0DAF
#_02ECD7: STA.l $7E2002,X

#_02ECDB: SEP #$30

.exit
#_02ECDD: RTS

;===================================================================================================

TriggerAndFinishMapLoadStripe_Vertical:
#_02ECDE: SEP #$30

#_02ECE0: LDA.b #$08
#_02ECE2: STA.w $0416

#_02ECE5: LDA.b #$03
#_02ECE7: STA.b $17

#_02ECE9: REP #$30

#_02ECEB: LDY.b $0E

#_02ECED: LDA.w #$0080
#_02ECF0: STA.w $1100,Y

#_02ECF3: INY
#_02ECF4: INY
#_02ECF5: STY.b $0E

;---------------------------------------------------------------------------------------------------

.next
#_02ECF7: JSR BufferAndBuildMap16Stripes_Vertical

#_02ECFA: LDA.b $84
#_02ECFC: SEC
#_02ECFD: SBC.w #$0080
#_02ED00: STA.b $84

#_02ED02: LDA.b $88
#_02ED04: DEC A
#_02ED05: AND.w #$001F
#_02ED08: STA.b $88

#_02ED0A: DEC.b $08
#_02ED0C: BNE .next

;---------------------------------------------------------------------------------------------------

#_02ED0E: LDA.w #$FFFF
#_02ED11: LDX.b $0E
#_02ED13: STA.w $1100,X

#_02ED16: RTS

;===================================================================================================

TriggerAndFinishMapLoadStripe_Horizontal:
#_02ED17: SEP #$30

#_02ED19: LDA.b #$02
#_02ED1B: STA.w $0416

#_02ED1E: LDA.b #$03
#_02ED20: STA.b $17

#_02ED22: REP #$30

#_02ED24: LDY.b $0E

#_02ED26: LDA.w #$8040
#_02ED29: STA.w $1100,Y

#_02ED2C: INY
#_02ED2D: INY
#_02ED2E: STY.b $0E

;---------------------------------------------------------------------------------------------------

.next
#_02ED30: JSR BufferAndBuildMap16Stripes_Horizontal

#_02ED33: DEC.b $84
#_02ED35: DEC.b $84

#_02ED37: LDA.b $86
#_02ED39: DEC A
#_02ED3A: AND.w #$001F
#_02ED3D: STA.b $86

#_02ED3F: DEC.b $08
#_02ED41: BNE .next

;---------------------------------------------------------------------------------------------------

#_02ED43: LDA.w #$FFFF
#_02ED46: LDX.b $0E
#_02ED48: STA.w $1100,X

#_02ED4B: RTS

;===================================================================================================
; TODO figure out
SomeTilemapChange:
#_02ED4C: REP #$30

#_02ED4E: JSR Overworld_DecompressAndDrawAllQuadrants

#_02ED51: LDX.w #$001E
#_02ED54: LDA.w #$0DBE

.next
#_02ED57: STA.l $7E4000,X
#_02ED5B: STA.l $7E4020,X
#_02ED5F: STA.l $7E4040,X
#_02ED63: STA.l $7E4060,X

#_02ED67: DEX
#_02ED68: DEX
#_02ED69: BPL .next

#_02ED6B: JSR Overworld_HandleOverlaysAndBombDoors

#_02ED6E: INC.b $11

#_02ED70: RTS

;===================================================================================================

pool CreateInitialNewScreenMapToScroll

.vectors_big_screen
#_02ED71: dw Overworld_ResetSubmodule
#_02ED73: dw CreateInitialOWScreenView_Big_East
#_02ED75: dw CreateInitialOWScreenView_Big_West
#_02ED77: dw Overworld_ResetSubmodule
#_02ED79: dw CreateInitialOWScreenView_Big_South
#_02ED7B: dw Overworld_ResetSubmodule
#_02ED7D: dw Overworld_ResetSubmodule
#_02ED7F: dw Overworld_ResetSubmodule
#_02ED81: dw CreateInitialOWScreenView_Big_North

.vectors_small_screen
#_02ED83: dw Overworld_ResetSubmodule
#_02ED85: dw CreateInitialOWScreenView_Small_East
#_02ED87: dw CreateInitialOWScreenView_Small_West
#_02ED89: dw Overworld_ResetSubmodule
#_02ED8B: dw CreateInitialOWScreenView_Small_South
#_02ED8D: dw Overworld_ResetSubmodule
#_02ED8F: dw Overworld_ResetSubmodule
#_02ED91: dw Overworld_ResetSubmodule
#_02ED93: dw CreateInitialOWScreenView_Small_North

pool off

;---------------------------------------------------------------------------------------------------

CreateInitialNewScreenMapToScroll:
#_02ED95: SEP #$30

#_02ED97: LDX.b $8A

#_02ED99: LDA.l OverworldScreenSize,X
#_02ED9D: BNE .small_screen

#_02ED9F: LDA.w $0416
#_02EDA2: ASL A
#_02EDA3: TAX

#_02EDA4: JMP.w (.vectors_big_screen,X)

;---------------------------------------------------------------------------------------------------

.small_screen
#_02EDA7: LDA.w $0416
#_02EDAA: ASL A
#_02EDAB: TAX

#_02EDAC: JMP.w (.vectors_small_screen,X)

;===================================================================================================

UNREACHABLE_02EDAF:
#_02EDAF: LDA.b $84
#_02EDB1: SEC
#_02EDB2: SBC.w #$0400
#_02EDB5: AND.w #$0F80
#_02EDB8: ASL A
#_02EDB9: XBA
#_02EDBA: AND.w #$001F
#_02EDBD: STA.b $88

#_02EDBF: LDA.b $84
#_02EDC1: SEC
#_02EDC2: SBC.w #$0010
#_02EDC5: AND.w #$003E
#_02EDC8: LSR A
#_02EDC9: AND.w #$001F
#_02EDCC: STA.b $86

#_02EDCE: RTS

;===================================================================================================

CreateInitialOWScreenView_Big_North:
#_02EDCF: REP #$30

#_02EDD1: LDA.b $84
#_02EDD3: CLC
#_02EDD4: ADC.w #$0380
#_02EDD7: STA.b $84

#_02EDD9: LDA.w #$001F
#_02EDDC: STA.b $88

#_02EDDE: STZ.b $0E

#_02EDE0: LDA.w #$0007
#_02EDE3: STA.b $08

#_02EDE5: JSR TriggerAndFinishMapLoadStripe_Vertical

#_02EDE8: SEP #$30

#_02EDEA: RTS

;===================================================================================================

CreateInitialOWScreenView_Big_South:
#_02EDEB: REP #$30

#_02EDED: LDA.b $84

.adjust_more
#_02EDEF: CMP.w #$0080
#_02EDF2: BCC .in_range

#_02EDF4: SBC.w #$0080
#_02EDF7: BRA .adjust_more

;---------------------------------------------------------------------------------------------------

.in_range
#_02EDF9: CLC
#_02EDFA: ADC.w #$0780
#_02EDFD: STA.b $84

#_02EDFF: STZ.b $0E

#_02EE01: LDA.w #$0007
#_02EE04: STA.b $88

#_02EE06: LDA.w #$0008
#_02EE09: STA.b $08

#_02EE0B: JSR TriggerAndFinishMapLoadStripe_Vertical

#_02EE0E: LDA.b $88
#_02EE10: CLC
#_02EE11: ADC.w #$0009
#_02EE14: AND.w #$001F
#_02EE17: STA.b $88

#_02EE19: LDA.b $84
#_02EE1B: SEC
#_02EE1C: SBC.w #$0B80
#_02EE1F: STA.b $84

#_02EE21: SEP #$30

#_02EE23: RTS

;===================================================================================================

CreateInitialOWScreenView_Big_West:
#_02EE24: REP #$30

#_02EE26: LDA.b $84
#_02EE28: CLC
#_02EE29: ADC.w #$000E
#_02EE2C: STA.b $84

#_02EE2E: LDA.w #$001F
#_02EE31: STA.b $86

#_02EE33: STZ.b $0E

#_02EE35: LDA.w #$0007
#_02EE38: STA.b $08

#_02EE3A: JSR TriggerAndFinishMapLoadStripe_Horizontal

#_02EE3D: SEP #$30

#_02EE3F: RTS

;===================================================================================================

CreateInitialOWScreenView_Big_East:
#_02EE40: REP #$30

#_02EE42: LDA.b $84
#_02EE44: SEC
#_02EE45: SBC.w #$0060 ; use one value next time
#_02EE48: CLC
#_02EE49: ADC.w #$001E
#_02EE4C: STA.b $84

#_02EE4E: STZ.b $0E

#_02EE50: LDA.w #$0007
#_02EE53: STA.b $86

#_02EE55: LDA.w #$0008
#_02EE58: STA.b $08

#_02EE5A: JSR TriggerAndFinishMapLoadStripe_Horizontal

#_02EE5D: LDA.b $86
#_02EE5F: CLC
#_02EE60: ADC.w #$0009
#_02EE63: AND.w #$001F
#_02EE66: STA.b $86

#_02EE68: LDA.b $84
#_02EE6A: SEC
#_02EE6B: SBC.w #$002E
#_02EE6E: STA.b $84

#_02EE70: SEP #$30

#_02EE72: RTS

;===================================================================================================

CreateInitialOWScreenView_Small_North:
#_02EE73: REP #$30

#_02EE75: LDA.b $84
#_02EE77: SEC
#_02EE78: SBC.w #$0700
#_02EE7B: STA.l $7EC172

#_02EE7F: LDA.b $86
#_02EE81: STA.l $7EC174

#_02EE85: LDA.w #$000A
#_02EE88: STA.l $7EC176

#_02EE8C: LDA.w #$1390
#_02EE8F: STA.b $84

#_02EE91: STZ.b $86

#_02EE93: LDA.w #$001F
#_02EE96: STA.b $88

#_02EE98: STZ.b $0E

#_02EE9A: LDA.w #$0007
#_02EE9D: STA.b $08

#_02EE9F: JSR TriggerAndFinishMapLoadStripe_Vertical

#_02EEA2: SEP #$30

#_02EEA4: RTS

;===================================================================================================

CreateInitialOWScreenView_Small_South:
#_02EEA5: REP #$30

#_02EEA7: LDA.b $84
#_02EEA9: AND.w #$00FF
#_02EEAC: STA.l $7EC172

#_02EEB0: LDA.b $86
#_02EEB2: STA.l $7EC174

#_02EEB6: LDA.w #$0018
#_02EEB9: STA.l $7EC176

#_02EEBD: LDA.w #$0790
#_02EEC0: STA.b $84

#_02EEC2: STZ.b $86

#_02EEC4: LDA.w #$0007
#_02EEC7: STA.b $88

#_02EEC9: STZ.b $0E

#_02EECB: LDA.w #$0008
#_02EECE: STA.b $08

#_02EED0: JSR TriggerAndFinishMapLoadStripe_Vertical

#_02EED3: LDA.b $88
#_02EED5: CLC
#_02EED6: ADC.w #$0009
#_02EED9: AND.w #$001F
#_02EEDC: STA.b $88

#_02EEDE: LDA.b $84
#_02EEE0: SEC
#_02EEE1: SBC.w #$0B80
#_02EEE4: STA.b $84

#_02EEE6: SEP #$30

#_02EEE8: RTS

;===================================================================================================

CreateInitialOWScreenView_Small_West:
#_02EEE9: REP #$30

#_02EEEB: LDA.b $84
#_02EEED: SEC
#_02EEEE: SBC.w #$0020
#_02EEF1: STA.l $7EC172

#_02EEF5: LDA.w #$0008
#_02EEF8: STA.l $7EC174

#_02EEFC: LDA.b $88
#_02EEFE: STA.l $7EC176

#_02EF02: LDA.w #$044E
#_02EF05: STA.b $84

#_02EF07: STZ.b $88

#_02EF09: LDA.w #$001F
#_02EF0C: STA.b $86

#_02EF0E: STZ.b $0E

#_02EF10: LDA.w #$0007
#_02EF13: STA.b $08

#_02EF15: JSR TriggerAndFinishMapLoadStripe_Horizontal

#_02EF18: SEP #$30

#_02EF1A: RTS

;===================================================================================================

CreateInitialOWScreenView_Small_East:
#_02EF1B: REP #$30

#_02EF1D: LDA.b $84
#_02EF1F: SEC
#_02EF20: SBC.w #$0060
#_02EF23: STA.l $7EC172

#_02EF27: LDA.w #$0018
#_02EF2A: STA.l $7EC174

#_02EF2E: LDA.b $88
#_02EF30: STA.l $7EC176

#_02EF34: LDA.w #$041E
#_02EF37: STA.b $84

#_02EF39: STZ.b $88

#_02EF3B: LDA.w #$0007
#_02EF3E: STA.b $86

#_02EF40: STZ.b $0E

#_02EF42: LDA.w #$0008
#_02EF45: STA.b $08

#_02EF47: JSR TriggerAndFinishMapLoadStripe_Horizontal

#_02EF4A: LDA.b $86
#_02EF4C: CLC
#_02EF4D: ADC.w #$0009
#_02EF50: AND.w #$001F
#_02EF53: STA.b $86

#_02EF55: LDA.b $84
#_02EF57: SEC
#_02EF58: SBC.w #$002E
#_02EF5B: STA.b $84

#_02EF5D: SEP #$30

#_02EF5F: RTS

;===================================================================================================

pool OverworldTransitionScrollAndLoadMap

.vectors
#_02EF60: dw Overworld_ResetSubmodule
#_02EF62: dw BuildFullStripeDuringTransition_East
#_02EF64: dw BuildFullStripeDuringTransition_West
#_02EF66: dw Overworld_ResetSubmodule
#_02EF68: dw BuildFullStripeDuringTransition_South
#_02EF6A: dw Overworld_ResetSubmodule
#_02EF6C: dw Overworld_ResetSubmodule
#_02EF6E: dw Overworld_ResetSubmodule
#_02EF70: dw BuildFullStripeDuringTransition_North

pool off

;---------------------------------------------------------------------------------------------------

OverworldTransitionScrollAndLoadMap:
#_02EF72: SEP #$30

#_02EF74: LDA.w $0416
#_02EF77: ASL A
#_02EF78: TAX

#_02EF79: JMP.w (.vectors,X)

;===================================================================================================

BuildFullStripeDuringTransition_North:
#_02EF7C: REP #$30

#_02EF7E: STZ.b $0E

#_02EF80: JSR CheckForNewlyLoadedMapAreas_North_NewStripe

;===================================================================================================

OverworldTransitionScrollAndLoadMap_BuildStripe:
#_02EF83: LDY.b $0E

#_02EF85: LDA.w #$FFFF
#_02EF88: STA.w $1100,Y
#_02EF8B: STA.w $1102,Y

#_02EF8E: CPY.w #$0000
#_02EF91: BEQ .empty

#_02EF93: SEP #$30

#_02EF95: LDA.b #$03
#_02EF97: STA.b $17

.empty
#_02EF99: SEP #$30

#_02EF9B: RTS

;===================================================================================================

BuildFullStripeDuringTransition_South:
#_02EF9C: REP #$30

#_02EF9E: STZ.b $0E

#_02EFA0: JSR CheckForNewlyLoadedMapAreas_South_NewStripe

#_02EFA3: BRA OverworldTransitionScrollAndLoadMap_BuildStripe

;===================================================================================================

BuildFullStripeDuringTransition_West:
#_02EFA5: REP #$30

#_02EFA7: STZ.b $0E

#_02EFA9: JSR CheckForNewlyLoadedMapAreas_West_NewStripe

#_02EFAC: BRA OverworldTransitionScrollAndLoadMap_BuildStripe

;===================================================================================================

BuildFullStripeDuringTransition_East:
#_02EFAE: REP #$30

#_02EFB0: STZ.b $0E

#_02EFB2: JSR CheckForNewlyLoadedMapAreas_East_NewStripe

#_02EFB5: BRA OverworldTransitionScrollAndLoadMap_BuildStripe

;===================================================================================================

pool OverworldHandleMapScroll

.vectors
#_02EFB7: dw Overworld_ResetSubmodule
#_02EFB9: dw MapScroll_East
#_02EFBB: dw MapScroll_West
#_02EFBD: dw Overworld_ResetSubmodule
#_02EFBF: dw MapScroll_South
#_02EFC1: dw MapScroll_SouthAndClear
#_02EFC3: dw MapScroll_SouthAndClear
#_02EFC5: dw Overworld_ResetSubmodule
#_02EFC7: dw MapScroll_North
#_02EFC9: dw MapScroll_NorthAndClear
#_02EFCB: dw MapScroll_NorthAndClear
#_02EFCD: dw Overworld_ResetSubmodule
#_02EFCF: dw Overworld_ResetSubmodule
#_02EFD1: dw Overworld_ResetSubmodule
#_02EFD3: dw Overworld_ResetSubmodule
#_02EFD5: dw Overworld_ResetSubmodule

pool off

;---------------------------------------------------------------------------------------------------

OverworldHandleMapScroll:
#_02EFD7: REP #$30

#_02EFD9: STZ.b $0E

#_02EFDB: SEP #$30

#_02EFDD: LDA.w $0416
#_02EFE0: ASL A
#_02EFE1: TAX

#_02EFE2: JSR (.vectors,X)

#_02EFE5: REP #$30

#_02EFE7: LDY.b $0E

#_02EFE9: LDA.w #$FFFF
#_02EFEC: STA.w $1100,Y
#_02EFEF: STA.w $1102,Y

#_02EFF2: CPY.w #$0000
#_02EFF5: BEQ .no_update

#_02EFF7: SEP #$30

#_02EFF9: LDA.b #$03
#_02EFFB: STA.b $17

.no_update
#_02EFFD: SEP #$30

#_02EFFF: LDA.w $0416
#_02F002: STA.w $0418

#_02F005: RTS

;===================================================================================================

Overworld_ResetSubmodule:
#_02F006: STZ.b $11

#_02F008: RTS

;===================================================================================================

MapScroll_East:
#_02F009: JSR CheckForNewlyLoadedMapAreas_East

#_02F00C: STZ.w $0416

#_02F00F: RTS

;===================================================================================================

MapScroll_West:
#_02F010: JSR CheckForNewlyLoadedMapAreas_West

#_02F013: STZ.w $0416

#_02F016: RTS

;===================================================================================================

MapScroll_South:
#_02F017: JSR CheckForNewlyLoadedMapAreas_South

#_02F01A: STZ.w $0416

#_02F01D: RTS

;===================================================================================================

MapScroll_SouthAndClear:
#_02F01E: JSR CheckForNewlyLoadedMapAreas_South

#_02F021: SEP #$30

#_02F023: LDA.w $0416
#_02F026: AND.b #$03
#_02F028: STA.w $0416

#_02F02B: RTS

;===================================================================================================

MapScroll_North:
#_02F02C: JSR CheckForNewlyLoadedMapAreas_North

#_02F02F: STZ.w $0416

#_02F032: RTS

;===================================================================================================

MapScroll_NorthAndClear:
#_02F033: JSR CheckForNewlyLoadedMapAreas_North

#_02F036: SEP #$30

#_02F038: LDA.w $0416
#_02F03B: AND.b #$03
#_02F03D: STA.w $0416

#_02F040: RTS

;===================================================================================================

CheckForNewlyLoadedMapAreas_North:
#_02F041: REP #$30

#_02F043: LDA.b $84
#_02F045: CMP.w #$0080
#_02F048: BMI .exit

#_02F04A: LDX.b $8A

#_02F04C: LDA.l OverworldScreenSize,X
#_02F050: AND.w #$00FF
#_02F053: BNE .dont_start_stripe

;===================================================================================================

#CheckForNewlyLoadedMapAreas_North_NewStripe:
#_02F055: LDY.b $0E

#_02F057: LDA.w #$0080
#_02F05A: STA.w $1100,Y

#_02F05D: INY
#_02F05E: INY
#_02F05F: STY.b $0E

#_02F061: JSR BufferAndBuildMap16Stripes_Vertical

;---------------------------------------------------------------------------------------------------

.dont_start_stripe
#_02F064: LDA.b $84
#_02F066: SEC
#_02F067: SBC.w #$0080
#_02F06A: STA.b $84

#_02F06C: LDA.b $88
#_02F06E: DEC A
#_02F06F: AND.w #$001F
#_02F072: STA.b $88

.exit
#_02F074: RTS

;===================================================================================================

CheckForNewlyLoadedMapAreas_South:
#_02F075: REP #$30

#_02F077: LDA.b $84
#_02F079: CMP.w #$1800
#_02F07C: BCS .exit

#_02F07E: LDX.b $8A

#_02F080: LDA.l OverworldScreenSize,X
#_02F084: AND.w #$00FF
#_02F087: BNE .dont_start_stripe

;===================================================================================================

#CheckForNewlyLoadedMapAreas_South_NewStripe:
#_02F089: LDY.b $0E

#_02F08B: LDA.w #$0080
#_02F08E: STA.w $1100,Y

#_02F091: INY
#_02F092: INY
#_02F093: STY.b $0E

#_02F095: JSR BufferAndBuildMap16Stripes_Vertical

;---------------------------------------------------------------------------------------------------

.dont_start_stripe
#_02F098: LDA.b $84
#_02F09A: CLC
#_02F09B: ADC.w #$0080
#_02F09E: STA.b $84

#_02F0A0: LDA.b $88
#_02F0A2: INC A
#_02F0A3: AND.w #$001F
#_02F0A6: STA.b $88

.exit
#_02F0A8: RTS

;===================================================================================================

CheckForNewlyLoadedMapAreas_West:
#_02F0A9: REP #$30

#_02F0AB: LDA.b $84

.cull_more
#_02F0AD: CMP.w #$0080
#_02F0B0: BCC .in_range

#_02F0B2: SBC.w #$0080
#_02F0B5: BRA .cull_more

.in_range
#_02F0B7: CMP.w #$0000
#_02F0BA: BEQ .exit

#_02F0BC: LDX.b $8A

#_02F0BE: LDA.l OverworldScreenSize,X
#_02F0C2: AND.w #$00FF
#_02F0C5: BNE .dont_start_stripe

;===================================================================================================

#CheckForNewlyLoadedMapAreas_West_NewStripe:
#_02F0C7: LDY.b $0E

#_02F0C9: LDA.w #$8040
#_02F0CC: STA.w $1100,Y

#_02F0CF: INY
#_02F0D0: INY
#_02F0D1: STY.b $0E

#_02F0D3: JSR BufferAndBuildMap16Stripes_Horizontal

;---------------------------------------------------------------------------------------------------

.dont_start_stripe
#_02F0D6: DEC.b $84
#_02F0D8: DEC.b $84

#_02F0DA: LDA.b $86
#_02F0DC: DEC A
#_02F0DD: AND.w #$001F
#_02F0E0: STA.b $86

.exit
#_02F0E2: RTS

;===================================================================================================

CheckForNewlyLoadedMapAreas_East:
#_02F0E3: REP #$30

#_02F0E5: LDA.b $84

.cull_more
#_02F0E7: CMP.w #$0080
#_02F0EA: BCC .in_range

#_02F0EC: SBC.w #$0080
#_02F0EF: BRA .cull_more

.in_range
#_02F0F1: CMP.w #$0060
#_02F0F4: BCS .exit

#_02F0F6: LDX.b $8A

#_02F0F8: LDA.l OverworldScreenSize,X
#_02F0FC: AND.w #$00FF
#_02F0FF: BNE .dont_start_stripe

;===================================================================================================

#CheckForNewlyLoadedMapAreas_East_NewStripe:
#_02F101: LDY.b $0E

#_02F103: LDA.w #$8040
#_02F106: STA.w $1100,Y

#_02F109: INY
#_02F10A: INY
#_02F10B: STY.b $0E

#_02F10D: JSR BufferAndBuildMap16Stripes_Horizontal

;---------------------------------------------------------------------------------------------------

.dont_start_stripe
#_02F110: INC.b $84
#_02F112: INC.b $84

#_02F114: LDA.b $86
#_02F116: INC A
#_02F117: AND.w #$001F
#_02F11A: STA.b $86

.exit
#_02F11C: RTS

;===================================================================================================

BufferAndBuildMap16Stripes_Horizontal:
#_02F11D: LDA.w $0416
#_02F120: AND.w #$0002
#_02F123: TAX

#_02F124: LDA.b $84
#_02F126: SEC
#_02F127: SBC.l Map16ReadOffset_Horizontal,X
#_02F12B: TAY

#_02F12C: LDA.b $88
#_02F12E: ASL A
#_02F12F: TAX

#_02F130: LDA.w #$2000
#_02F133: STA.b $00

#_02F135: LDA.w #$007E
#_02F138: STA.b $02

#_02F13A: LDA.w #$0010
#_02F13D: STA.b $03

;---------------------------------------------------------------------------------------------------

.next
#_02F13F: LDA.b [$00],Y
#_02F141: STA.w $0500,X

#_02F144: INX
#_02F145: INX

#_02F146: TXA
#_02F147: AND.w #$003F
#_02F14A: TAX

#_02F14B: TYA
#_02F14C: CLC
#_02F14D: ADC.w #$0080
#_02F150: TAY

#_02F151: LDA.b [$00],Y
#_02F153: STA.w $0500,X

#_02F156: INX
#_02F157: INX

#_02F158: TXA
#_02F159: AND.w #$003F
#_02F15C: TAX

#_02F15D: TYA
#_02F15E: CLC
#_02F15F: ADC.w #$0080
#_02F162: TAY

#_02F163: DEC.b $03
#_02F165: BNE .next

;---------------------------------------------------------------------------------------------------

#_02F167: STZ.b $00

#_02F169: LDA.b $86
#_02F16B: STA.b $02

#_02F16D: CMP.w #$0010
#_02F170: BCC .start_low

#_02F172: AND.w #$000F
#_02F175: STA.b $02

#_02F177: LDA.w #$0400
#_02F17A: STA.b $00

.start_low
#_02F17C: LDA.b $02
#_02F17E: ASL A
#_02F17F: CLC
#_02F180: ADC.b $00
#_02F182: STA.b $00

#_02F184: CLC
#_02F185: ADC.w #$0800
#_02F188: STA.b $0C

#_02F18A: LDA.l Map16BufferOffsetLow
#_02F18E: JSR CreateMap16Stripes_Horizontal

#_02F191: LDA.b $0C
#_02F193: STA.b $00

#_02F195: LDA.l Map16BufferOffsetHigh

;===================================================================================================

CreateMap16Stripes_Horizontal:
#_02F199: STA.b $02

#_02F19B: LDY.b $0E

#_02F19D: LDA.b $00
#_02F19F: STA.w $1100,Y

#_02F1A2: INC A
#_02F1A3: STA.w $1142,Y

#_02F1A6: INY
#_02F1A7: INY

#_02F1A8: LDA.w #$0010
#_02F1AB: STA.b $06

;---------------------------------------------------------------------------------------------------

.next
#_02F1AD: LDX.b $02

#_02F1AF: LDA.w $0500,X

#_02F1B2: INX
#_02F1B3: INX
#_02F1B4: STX.b $02

#_02F1B6: ASL A
#_02F1B7: ASL A
#_02F1B8: ASL A
#_02F1B9: TAX

#_02F1BA: LDA.l Map16Definitions+0,X
#_02F1BE: STA.w $1100,Y

#_02F1C1: LDA.l Map16Definitions+2,X
#_02F1C5: STA.w $1142,Y

#_02F1C8: INY
#_02F1C9: INY

#_02F1CA: LDA.l Map16Definitions+4,X
#_02F1CE: STA.w $1100,Y

#_02F1D1: LDA.l Map16Definitions+6,X
#_02F1D5: STA.w $1142,Y

#_02F1D8: INY
#_02F1D9: INY

#_02F1DA: DEC.b $06
#_02F1DC: BNE .next

;---------------------------------------------------------------------------------------------------

#_02F1DE: TYA
#_02F1DF: CLC
#_02F1E0: ADC.w #$0042
#_02F1E3: STA.b $0E

#_02F1E5: RTS

;===================================================================================================

BufferAndBuildMap16Stripes_Vertical:
#_02F1E6: LDA.w $0416
#_02F1E9: AND.w #$0004
#_02F1EC: LSR A
#_02F1ED: TAX

#_02F1EE: LDA.b $84
#_02F1F0: SEC
#_02F1F1: SBC.l Map16ReadOffset_Vertical,X
#_02F1F5: TAY

#_02F1F6: LDA.b $86
#_02F1F8: ASL A
#_02F1F9: TAX

#_02F1FA: LDA.w #$2000
#_02F1FD: STA.b $00

#_02F1FF: LDA.w #$007E
#_02F202: STA.b $02

#_02F204: LDA.w #$0010
#_02F207: STA.b $03

;---------------------------------------------------------------------------------------------------

.next
#_02F209: LDA.b [$00],Y
#_02F20B: STA.w $0500,X

#_02F20E: INX
#_02F20F: INX

#_02F210: TXA
#_02F211: AND.w #$003F
#_02F214: TAX

#_02F215: INY
#_02F216: INY

#_02F217: LDA.b [$00],Y
#_02F219: STA.w $0500,X

#_02F21C: INX
#_02F21D: INX

#_02F21E: TXA
#_02F21F: AND.w #$003F
#_02F222: TAX

#_02F223: INY
#_02F224: INY

#_02F225: DEC.b $03
#_02F227: BNE .next

;---------------------------------------------------------------------------------------------------

#_02F229: STZ.b $00

#_02F22B: LDA.b $88
#_02F22D: STA.b $02

#_02F22F: CMP.w #$0010
#_02F232: BCC .start_low

#_02F234: AND.w #$000F
#_02F237: STA.b $02

#_02F239: LDA.w #$0800
#_02F23C: STA.b $00

.start_low
#_02F23E: LDA.b $02

#_02F240: ASL A ; x64
#_02F241: ASL A
#_02F242: ASL A
#_02F243: ASL A
#_02F244: ASL A
#_02F245: ASL A

#_02F246: CLC
#_02F247: ADC.b $00
#_02F249: STA.b $00

#_02F24B: CLC
#_02F24C: ADC.w #$0400
#_02F24F: STA.b $0C

#_02F251: LDY.b $0E

#_02F253: LDA.b $00
#_02F255: STA.w $1100,Y

#_02F258: INY
#_02F259: INY

#_02F25A: LDA.l Map16BufferOffsetLow
#_02F25E: JSR CreateMap16Stripes_Vertical

#_02F261: LDY.b $0E

#_02F263: LDA.b $0C
#_02F265: STA.w $1100,Y

#_02F268: INY
#_02F269: INY
#_02F26A: LDA.l Map16BufferOffsetHigh

;===================================================================================================

CreateMap16Stripes_Vertical:
#_02F26E: STA.b $02

#_02F270: LDA.w #$0010
#_02F273: STA.b $06

;---------------------------------------------------------------------------------------------------

.next
#_02F275: LDX.b $02

#_02F277: LDA.w $0500,X

#_02F27A: INX
#_02F27B: INX
#_02F27C: STX.b $02

#_02F27E: ASL A ; x8
#_02F27F: ASL A
#_02F280: ASL A
#_02F281: TAX

#_02F282: LDA.l Map16Definitions+0,X
#_02F286: STA.w $1100,Y

#_02F289: LDA.l Map16Definitions+4,X
#_02F28D: STA.w $1140,Y

#_02F290: INY
#_02F291: INY

#_02F292: LDA.l Map16Definitions+2,X
#_02F296: STA.w $1100,Y

#_02F299: LDA.l Map16Definitions+6,X
#_02F29D: STA.w $1140,Y

#_02F2A0: INY
#_02F2A1: INY

#_02F2A2: DEC.b $06
#_02F2A4: BNE .next

;---------------------------------------------------------------------------------------------------

#_02F2A6: TYA
#_02F2A7: CLC
#_02F2A8: ADC.w #$0040
#_02F2AB: STA.b $0E

#_02F2AD: RTS

;===================================================================================================

Overworld_DecompressAndDrawAllQuadrants:
#_02F2AE: LDA.b $8A
#_02F2B0: ASL A
#_02F2B1: ADC.b $8A
#_02F2B3: TAX

#_02F2B4: LDA.w #$007E
#_02F2B7: STA.b $02
#_02F2B9: STA.b $05

#_02F2BB: LDA.w #$2000
#_02F2BE: JSR Overworld_DecompressAndDrawOneQuadrant

;---------------------------------------------------------------------------------------------------

#_02F2C1: LDA.b $8A
#_02F2C3: INC A
#_02F2C4: STA.b $00

#_02F2C6: ASL A
#_02F2C7: ADC.b $00
#_02F2C9: TAX

#_02F2CA: LDA.w #$2000 ; !WTF why?
#_02F2CD: CLC
#_02F2CE: ADC.w #$0040
#_02F2D1: JSR Overworld_DecompressAndDrawOneQuadrant

;---------------------------------------------------------------------------------------------------

#_02F2D4: LDA.b $8A
#_02F2D6: CLC
#_02F2D7: ADC.w #$0008
#_02F2DA: STA.b $00

#_02F2DC: ASL A
#_02F2DD: ADC.b $00
#_02F2DF: TAX

#_02F2E0: LDA.w #$3000
#_02F2E3: JSR Overworld_DecompressAndDrawOneQuadrant

;---------------------------------------------------------------------------------------------------

#_02F2E6: LDA.b $8A
#_02F2E8: CLC
#_02F2E9: ADC.w #$0009
#_02F2EC: STA.b $00

#_02F2EE: ASL A
#_02F2EF: ADC.b $00
#_02F2F1: TAX

#_02F2F2: LDA.w #$3000
#_02F2F5: CLC
#_02F2F6: ADC.w #$0040

;===================================================================================================

Overworld_DecompressAndDrawOneQuadrant:
#_02F2F9: STA.b $00

#_02F2FB: CLC
#_02F2FC: ADC.w #$0080
#_02F2FF: STA.b $03

#_02F301: LDA.l OverworldLoad_Map32HPointers+0,X
#_02F305: STA.b $C8

#_02F307: LDA.l OverworldLoad_Map32HPointers+1,X
#_02F30B: STA.b $C9

#_02F30D: LDA.b $00
#_02F30F: PHA

#_02F310: LDA.b $02
#_02F312: PHA

#_02F313: LDA.b $04
#_02F315: PHA

#_02F316: LDA.w #$7F4400
#_02F319: STA.b $00

#_02F31B: LDA.w #$007F
#_02F31E: STA.b $02

#_02F320: PHX

#_02F321: SEP #$30

#_02F323: JSR Decompress_bank02

#_02F326: REP #$30

#_02F328: JSR BlockMoveMap32Chunks_High

#_02F32B: PLX

;---------------------------------------------------------------------------------------------------

#_02F32C: LDA.l OverworldLoad_Map32LPointers+0,X
#_02F330: STA.b $C8

#_02F332: LDA.l OverworldLoad_Map32LPointers+1,X
#_02F336: STA.b $C9

#_02F338: LDA.w #$7F4400
#_02F33B: STA.b $00

#_02F33D: LDA.w #$007F
#_02F340: STA.b $02

#_02F342: PHX

#_02F343: SEP #$30

#_02F345: JSR Decompress_bank02

#_02F348: REP #$30

#_02F34A: JSR BlockMoveMap32Chunks_Low

#_02F34D: PLX

;---------------------------------------------------------------------------------------------------

#_02F34E: PLA
#_02F34F: STA.b $04

#_02F351: PLA
#_02F352: STA.b $02

#_02F354: PLA
#_02F355: STA.b $00

#_02F357: LDA.w #$7F4000
#_02F35A: STA.b $08

#_02F35C: LDA.w #$007F
#_02F35F: STA.b $0A

#_02F361: SEP #$20

#_02F363: PHB

#_02F364: LDA.b #$7F
#_02F366: PHA
#_02F367: PLB

#_02F368: REP #$30

#_02F36A: LDA.w #$FFFF
#_02F36D: STA.w $7F4440

#_02F370: STZ.b $06
#_02F372: STZ.b $0B

;---------------------------------------------------------------------------------------------------

.next_a
#_02F374: LDA.w #$0010
#_02F377: STA.b $0D

.next_b
#_02F379: LDY.b $0B

#_02F37B: LDA.b [$08],Y
#_02F37D: ASL A

#_02F37E: LDY.b $06
#_02F380: JSR Overworld_ParseMap32Definition

#_02F383: STY.b $06

#_02F385: INC.b $0B
#_02F387: INC.b $0B

#_02F389: DEC.b $0D
#_02F38B: BNE .next_b

#_02F38D: LDA.b $06
#_02F38F: CLC
#_02F390: ADC.w #$00C0
#_02F393: STA.b $06

#_02F395: CMP.w #$1000
#_02F398: BCC .next_a

#_02F39A: PLB

#_02F39B: RTS

;===================================================================================================

BlockMoveMap32Chunks_High:
#_02F39C: SEP #$20

#_02F39E: PHB

#_02F39F: LDA.b #$7F
#_02F3A1: PHA
#_02F3A2: PLB

#_02F3A3: STA.b $02

#_02F3A5: REP #$30

#_02F3A7: LDX.w #$0000
#_02F3AA: LDY.w #$0001

#_02F3AD: LDA.w #$7F4000
#_02F3B0: STA.b $00

#_02F3B2: SEP #$20

;---------------------------------------------------------------------------------------------------

.next
#_02F3B4: LDA.w $7F4400,X
#_02F3B7: STA.b [$00],Y

#_02F3B9: INY
#_02F3BA: INY

#_02F3BB: INX

#_02F3BC: LDA.w $7F4400,X
#_02F3BF: STA.b [$00],Y

#_02F3C1: INY
#_02F3C2: INY

#_02F3C3: INX

#_02F3C4: LDA.w $7F4400,X
#_02F3C7: STA.b [$00],Y

#_02F3C9: INY
#_02F3CA: INY

#_02F3CB: INX

#_02F3CC: LDA.w $7F4400,X
#_02F3CF: STA.b [$00],Y

#_02F3D1: INY
#_02F3D2: INY

#_02F3D3: INX
#_02F3D4: CPX.w #$0100
#_02F3D7: BCC .next

#_02F3D9: REP #$30

#_02F3DB: PLB

#_02F3DC: RTS

;---------------------------------------------------------------------------------------------------

#BlockMoveMap32Chunks_Low:
#_02F3DD: SEP #$20

#_02F3DF: PHB

#_02F3E0: LDA.b #$7F
#_02F3E2: PHA
#_02F3E3: PLB

#_02F3E4: STA.b $02

#_02F3E6: REP #$30

#_02F3E8: LDX.w #$0000
#_02F3EB: TXY

#_02F3EC: LDA.w #$7F4000
#_02F3EF: STA.b $00

#_02F3F1: SEP #$20

#_02F3F3: BRA .next

;===================================================================================================

Overworld_ParseMap32Definition:
#_02F3F5: PHA

#_02F3F6: AND.w #$FFF8
#_02F3F9: CMP.w $7F4440
#_02F3FC: BNE .continue

#_02F3FE: JMP.w .skip

;---------------------------------------------------------------------------------------------------

.continue
#_02F401: STA.w $7F4440

#_02F404: LSR A
#_02F405: STA.w $7F4442

#_02F408: LSR A
#_02F409: ADC.w $7F4442
#_02F40C: TAX

#_02F40D: SEP #$20

;---------------------------------------------------------------------------------------------------

#_02F40F: LDA.l Tile32_TopLeft+0,X
#_02F413: STA.w $7F4400

#_02F416: LDA.l Tile32_TopLeft+1,X
#_02F41A: STA.w $7F4402

#_02F41D: LDA.l Tile32_TopLeft+2,X
#_02F421: STA.w $7F4404

#_02F424: LDA.l Tile32_TopLeft+3,X
#_02F428: STA.w $7F4406

#_02F42B: LDA.l Tile32_TopLeft+4,X
#_02F42F: PHA

#_02F430: LSR A
#_02F431: LSR A
#_02F432: LSR A
#_02F433: LSR A
#_02F434: STA.w $7F4401

#_02F437: PLA
#_02F438: AND.b #$0F
#_02F43A: STA.w $7F4403

#_02F43D: LDA.l Tile32_TopLeft+5,X
#_02F441: PHA

#_02F442: LSR A
#_02F443: LSR A
#_02F444: LSR A
#_02F445: LSR A
#_02F446: STA.w $7F4405

#_02F449: PLA
#_02F44A: AND.b #$0F
#_02F44C: STA.w $7F4407

;---------------------------------------------------------------------------------------------------

#_02F44F: LDA.l Tile32_TopRight+0,X
#_02F453: STA.w $7F4410

#_02F456: LDA.l Tile32_TopRight+1,X
#_02F45A: STA.w $7F4412

#_02F45D: LDA.l Tile32_TopRight+2,X
#_02F461: STA.w $7F4414

#_02F464: LDA.l Tile32_TopRight+3,X
#_02F468: STA.w $7F4416

#_02F46B: LDA.l Tile32_TopRight+4,X
#_02F46F: PHA

#_02F470: LSR A
#_02F471: LSR A
#_02F472: LSR A
#_02F473: LSR A
#_02F474: STA.w $7F4411

#_02F477: PLA
#_02F478: AND.b #$0F
#_02F47A: STA.w $7F4413

#_02F47D: LDA.l Tile32_TopRight+5,X
#_02F481: PHA

#_02F482: LSR A
#_02F483: LSR A
#_02F484: LSR A
#_02F485: LSR A
#_02F486: STA.w $7F4415

#_02F489: PLA
#_02F48A: AND.b #$0F
#_02F48C: STA.w $7F4417

;---------------------------------------------------------------------------------------------------

#_02F48F: LDA.l Tile32_BottomLeft+0,X
#_02F493: STA.w $7F4420

#_02F496: LDA.l Tile32_BottomLeft+1,X
#_02F49A: STA.w $7F4422

#_02F49D: LDA.l Tile32_BottomLeft+2,X
#_02F4A1: STA.w $7F4424

#_02F4A4: LDA.l Tile32_BottomLeft+3,X
#_02F4A8: STA.w $7F4426

#_02F4AB: LDA.l Tile32_BottomLeft+4,X
#_02F4AF: PHA

#_02F4B0: LSR A
#_02F4B1: LSR A
#_02F4B2: LSR A
#_02F4B3: LSR A
#_02F4B4: STA.w $7F4421

#_02F4B7: PLA
#_02F4B8: AND.b #$0F
#_02F4BA: STA.w $7F4423

#_02F4BD: LDA.l Tile32_BottomLeft+5,X
#_02F4C1: PHA

#_02F4C2: LSR A
#_02F4C3: LSR A
#_02F4C4: LSR A
#_02F4C5: LSR A
#_02F4C6: STA.w $7F4425

#_02F4C9: PLA
#_02F4CA: AND.b #$0F
#_02F4CC: STA.w $7F4427

;---------------------------------------------------------------------------------------------------

#_02F4CF: LDA.l Tile32_BottomRight+0,X
#_02F4D3: STA.w $7F4430

#_02F4D6: LDA.l Tile32_BottomRight+1,X
#_02F4DA: STA.w $7F4432

#_02F4DD: LDA.l Tile32_BottomRight+2,X
#_02F4E1: STA.w $7F4434

#_02F4E4: LDA.l Tile32_BottomRight+3,X
#_02F4E8: STA.w $7F4436

#_02F4EB: LDA.l Tile32_BottomRight+4,X
#_02F4EF: PHA

#_02F4F0: LSR A
#_02F4F1: LSR A
#_02F4F2: LSR A
#_02F4F3: LSR A
#_02F4F4: STA.w $7F4431

#_02F4F7: PLA
#_02F4F8: AND.b #$0F
#_02F4FA: STA.w $7F4433

#_02F4FD: LDA.l Tile32_BottomRight+5,X
#_02F501: PHA

#_02F502: LSR A
#_02F503: LSR A
#_02F504: LSR A
#_02F505: LSR A
#_02F506: STA.w $7F4435

#_02F509: PLA
#_02F50A: AND.b #$0F
#_02F50C: STA.w $7F4437

#_02F50F: REP #$30

;---------------------------------------------------------------------------------------------------

.skip
#_02F511: PLA
#_02F512: AND.w #$0007
#_02F515: TAX

#_02F516: LDA.w $7F4400,X
#_02F519: STA.b [$00],Y

#_02F51B: LDA.w $7F4420,X
#_02F51E: STA.b [$03],Y

#_02F520: INY
#_02F521: INY

#_02F522: LDA.w $7F4410,X
#_02F525: STA.b [$00],Y

#_02F527: LDA.w $7F4430,X
#_02F52A: STA.b [$03],Y

#_02F52C: INY
#_02F52D: INY

#_02F52E: RTS

;===================================================================================================

OverworldLoad_LoadSubOverlayMap32:
#_02F52F: LDA.b $8A
#_02F531: ASL A
#_02F532: ADC.b $8A
#_02F534: TAX

#_02F535: LDA.w #$007E
#_02F538: STA.b $02
#_02F53A: STA.b $05

#_02F53C: LDA.w #$7E4000
#_02F53F: STA.b $00

#_02F541: CLC
#_02F542: ADC.w #$0080
#_02F545: STA.b $03

#_02F547: LDA.l OverworldLoad_Map32HPointers+0,X
#_02F54B: STA.b $C8

#_02F54D: LDA.l OverworldLoad_Map32HPointers+1,X
#_02F551: STA.b $C9

;---------------------------------------------------------------------------------------------------

#_02F553: LDA.b $00 ; why no PEI?
#_02F555: PHA

#_02F556: LDA.b $02 ; how disappointing
#_02F558: PHA

#_02F559: LDA.b $04 ; PEI.b ($04)
#_02F55B: PHA

#_02F55C: LDA.w #$7F4400
#_02F55F: STA.b $00

#_02F561: LDA.w #$007F
#_02F564: STA.b $02

;---------------------------------------------------------------------------------------------------

#_02F566: PHX

#_02F567: SEP #$30

#_02F569: JSR Decompress_bank02

#_02F56C: REP #$30

#_02F56E: JSR BlockMoveMap32Chunks_High

;---------------------------------------------------------------------------------------------------

#_02F571: PLX

#_02F572: LDA.l OverworldLoad_Map32LPointers+0,X
#_02F576: STA.b $C8

#_02F578: LDA.l OverworldLoad_Map32LPointers+1,X
#_02F57C: STA.b $C9

#_02F57E: LDA.w #$7F4400
#_02F581: STA.b $00

#_02F583: LDA.w #$007F
#_02F586: STA.b $02

;---------------------------------------------------------------------------------------------------

#_02F588: PHX

#_02F589: SEP #$30

#_02F58B: JSR Decompress_bank02

#_02F58E: REP #$30

#_02F590: JSR BlockMoveMap32Chunks_Low

#_02F593: PLX

;---------------------------------------------------------------------------------------------------

#_02F594: PLA
#_02F595: STA.b $04

#_02F597: PLA
#_02F598: STA.b $02

#_02F59A: PLA
#_02F59B: STA.b $00

#_02F59D: LDA.w #$7F4000
#_02F5A0: STA.b $08

#_02F5A2: LDA.w #$007F
#_02F5A5: STA.b $0A

;---------------------------------------------------------------------------------------------------

#_02F5A7: SEP #$20

#_02F5A9: PHB

#_02F5AA: LDA.b #$7F
#_02F5AC: PHA
#_02F5AD: PLB

#_02F5AE: REP #$30

#_02F5B0: LDA.w #$FFFF
#_02F5B3: STA.w $7F4440

#_02F5B6: STZ.b $06
#_02F5B8: STZ.b $0B

.next_a
#_02F5BA: LDA.w #$0010
#_02F5BD: STA.b $0D

.next_b
#_02F5BF: LDY.b $0B

#_02F5C1: LDA.b [$08],Y
#_02F5C3: ASL A
#_02F5C4: TAX

#_02F5C5: LDY.b $06
#_02F5C7: JSR Overworld_ParseMap32Definition

#_02F5CA: STY.b $06

#_02F5CC: INC.b $0B
#_02F5CE: INC.b $0B

#_02F5D0: DEC.b $0D
#_02F5D2: BNE .next_b

#_02F5D4: LDA.b $06
#_02F5D6: CLC
#_02F5D7: ADC.w #$00C0
#_02F5DA: STA.b $06

#_02F5DC: CMP.w #$1000
#_02F5DF: BCC .next_a

#_02F5E1: PLB

#_02F5E2: RTS

;===================================================================================================

UNREACHABLE_02F5E3:
#_02F5E3: dw $0002, $0004

;===================================================================================================

Map16ReadOffset_Horizontal:
#_02F5E7: dw $03D0

Map16ReadOffset_Vertical:
#_02F5E9: dw $0410, $F410

; TODO what is this buffer
Map16BufferOffsetLow:
#_02F5ED: dw $0000

Map16BufferOffsetHigh:
#_02F5EF: dw $0020

;===================================================================================================

; TODO organize/rename
OverworldScreenSize:
#_02F5F1: db $00, $00, $01, $00, $00, $00, $00, $01
#_02F5F9: db $00, $00, $01, $00, $00, $00, $00, $01
#_02F601: db $01, $01, $01, $01, $01, $01, $01, $01
#_02F609: db $00, $00, $01, $00, $00, $01, $00, $00
#_02F611: db $00, $00, $01, $00, $00, $01, $00, $00
#_02F619: db $01, $01, $01, $01, $01, $01, $01, $01
#_02F621: db $00, $00, $01, $01, $01, $00, $00, $01
#_02F629: db $00, $00, $01, $01, $01, $00, $00, $01
#_02F631: db $00, $00, $01, $00, $00, $00, $00, $01
#_02F639: db $00, $00, $01, $00, $00, $00, $00, $01
#_02F641: db $01, $01, $01, $01, $01, $01, $01, $01
#_02F649: db $00, $00, $01, $00, $00, $01, $00, $00
#_02F651: db $00, $00, $01, $00, $00, $01, $00, $00
#_02F659: db $01, $01, $01, $01, $01, $01, $01, $01
#_02F661: db $00, $00, $01, $01, $01, $00, $00, $01
#_02F669: db $00, $00, $01, $01, $01, $00, $00, $01
#_02F671: db $01, $00, $00, $00, $00, $00, $00, $00
#_02F679: db $00, $00, $00, $00, $00, $00, $00, $00
#_02F681: db $00, $00, $00, $00, $00, $00, $00, $00
#_02F689: db $00, $00, $00, $00, $00, $00, $00, $00
#_02F691: db $00, $00, $00, $00, $00, $00, $00, $00
#_02F699: db $00, $00, $00, $00, $00, $00, $00, $00
#_02F6A1: db $00, $00, $00, $00, $00, $00, $00, $00
#_02F6A9: db $00, $00, $00, $00, $00, $00, $00, $00

;===================================================================================================

OverworldLoad_Map32HPointers:
#_02F6B1: dl OverworldMap32_Screen00_High
#_02F6B4: dl OverworldMap32_Screen01_High
#_02F6B7: dl OverworldMap32_Screen02_High
#_02F6BA: dl OverworldMap32_Screen03_High

#_02F6BD: dl OverworldMap32_Screen04_High
#_02F6C0: dl OverworldMap32_Screen05_High
#_02F6C3: dl OverworldMap32_Screen06_High
#_02F6C6: dl OverworldMap32_Screen07_High

#_02F6C9: dl OverworldMap32_Screen08_High
#_02F6CC: dl OverworldMap32_Screen09_High
#_02F6CF: dl OverworldMap32_Screen0A_High
#_02F6D2: dl OverworldMap32_Screen0B_High

#_02F6D5: dl OverworldMap32_Screen0C_High
#_02F6D8: dl OverworldMap32_Screen0D_High
#_02F6DB: dl OverworldMap32_Screen0E_High
#_02F6DE: dl OverworldMap32_Screen0F_High

#_02F6E1: dl OverworldMap32_Screen10_High
#_02F6E4: dl OverworldMap32_Screen11_High
#_02F6E7: dl OverworldMap32_Screen12_High
#_02F6EA: dl OverworldMap32_Screen13_High

#_02F6ED: dl OverworldMap32_Screen14_High
#_02F6F0: dl OverworldMap32_Screen15_High
#_02F6F3: dl OverworldMap32_Screen16_High
#_02F6F6: dl OverworldMap32_Screen17_High

#_02F6F9: dl OverworldMap32_Screen18_High
#_02F6FC: dl OverworldMap32_Screen19_High
#_02F6FF: dl OverworldMap32_Screen1A_High
#_02F702: dl OverworldMap32_Screen1B_High

#_02F705: dl OverworldMap32_Screen1C_High
#_02F708: dl OverworldMap32_Screen1D_High
#_02F70B: dl OverworldMap32_Screen1E_High
#_02F70E: dl OverworldMap32_Screen1F_High

#_02F711: dl OverworldMap32_Screen20_High
#_02F714: dl OverworldMap32_Screen21_High
#_02F717: dl OverworldMap32_Screen22_High
#_02F71A: dl OverworldMap32_Screen23_High

#_02F71D: dl OverworldMap32_Screen24_High
#_02F720: dl OverworldMap32_Screen25_High
#_02F723: dl OverworldMap32_Screen26_High
#_02F726: dl OverworldMap32_Screen27_High

#_02F729: dl OverworldMap32_Screen28_High
#_02F72C: dl OverworldMap32_Screen29_High
#_02F72F: dl OverworldMap32_Screen2A_High
#_02F732: dl OverworldMap32_Screen2B_High

#_02F735: dl OverworldMap32_Screen2C_High
#_02F738: dl OverworldMap32_Screen2D_High
#_02F73B: dl OverworldMap32_Screen2E_High
#_02F73E: dl OverworldMap32_Screen2F_High

#_02F741: dl OverworldMap32_Screen30_High
#_02F744: dl OverworldMap32_Screen31_High
#_02F747: dl OverworldMap32_Screen32_High
#_02F74A: dl OverworldMap32_Screen33_High

#_02F74D: dl OverworldMap32_Screen34_High
#_02F750: dl OverworldMap32_Screen35_High
#_02F753: dl OverworldMap32_Screen36_High
#_02F756: dl OverworldMap32_Screen37_High

#_02F759: dl OverworldMap32_Screen38_High
#_02F75C: dl OverworldMap32_Screen39_High
#_02F75F: dl OverworldMap32_Screen3A_High
#_02F762: dl OverworldMap32_Screen3B_High

#_02F765: dl OverworldMap32_Screen3C_High
#_02F768: dl OverworldMap32_Screen3D_High
#_02F76B: dl OverworldMap32_Screen3E_High
#_02F76E: dl OverworldMap32_Screen3F_High

;===================================================================================================

#_02F771: dl OverworldMap32_Screen40_High
#_02F774: dl OverworldMap32_Screen41_High
#_02F777: dl OverworldMap32_Screen42_High
#_02F77A: dl OverworldMap32_Screen43_High

#_02F77D: dl OverworldMap32_Screen44_High
#_02F780: dl OverworldMap32_Screen45_High
#_02F783: dl OverworldMap32_Screen46_High
#_02F786: dl OverworldMap32_Screen47_High

#_02F789: dl OverworldMap32_Screen48_High
#_02F78C: dl OverworldMap32_Screen49_High
#_02F78F: dl OverworldMap32_Screen0A_High
#_02F792: dl OverworldMap32_Screen4B_High

#_02F795: dl OverworldMap32_Screen4C_High
#_02F798: dl OverworldMap32_Screen4D_High
#_02F79B: dl OverworldMap32_Screen4E_High
#_02F79E: dl OverworldMap32_Screen4F_High

#_02F7A1: dl OverworldMap32_Screen50_High
#_02F7A4: dl OverworldMap32_Screen11_High
#_02F7A7: dl OverworldMap32_Screen12_High
#_02F7AA: dl OverworldMap32_Screen53_High

#_02F7AD: dl OverworldMap32_Screen54_High
#_02F7B0: dl OverworldMap32_Screen55_High
#_02F7B3: dl OverworldMap32_Screen56_High
#_02F7B6: dl OverworldMap32_Screen17_High

#_02F7B9: dl OverworldMap32_Screen58_High
#_02F7BC: dl OverworldMap32_Screen59_High
#_02F7BF: dl OverworldMap32_Screen5A_High
#_02F7C2: dl OverworldMap32_Screen5B_High

#_02F7C5: dl OverworldMap32_Screen5C_High
#_02F7C8: dl OverworldMap32_Screen5D_High
#_02F7CB: dl OverworldMap32_Screen5E_High
#_02F7CE: dl OverworldMap32_Screen5F_High

#_02F7D1: dl OverworldMap32_Screen60_High
#_02F7D4: dl OverworldMap32_Screen61_High
#_02F7D7: dl OverworldMap32_Screen62_High
#_02F7DA: dl OverworldMap32_Screen63_High

#_02F7DD: dl OverworldMap32_Screen64_High
#_02F7E0: dl OverworldMap32_Screen25_High
#_02F7E3: dl OverworldMap32_Screen66_High
#_02F7E6: dl OverworldMap32_Screen67_High

#_02F7E9: dl OverworldMap32_Screen68_High
#_02F7EC: dl OverworldMap32_Screen69_High
#_02F7EF: dl OverworldMap32_Screen2A_High
#_02F7F2: dl OverworldMap32_Screen2B_High

#_02F7F5: dl OverworldMap32_Screen2C_High
#_02F7F8: dl OverworldMap32_Screen6D_High
#_02F7FB: dl OverworldMap32_Screen2E_High
#_02F7FE: dl OverworldMap32_Screen2F_High

#_02F801: dl OverworldMap32_Screen70_High
#_02F804: dl OverworldMap32_Screen71_High
#_02F807: dl OverworldMap32_Screen72_High
#_02F80A: dl OverworldMap32_Screen33_High

#_02F80D: dl OverworldMap32_Screen34_High
#_02F810: dl OverworldMap32_Screen75_High
#_02F813: dl OverworldMap32_Screen76_High
#_02F816: dl OverworldMap32_Screen37_High

#_02F819: dl OverworldMap32_Screen78_High
#_02F81C: dl OverworldMap32_Screen79_High
#_02F81F: dl OverworldMap32_Screen7A_High
#_02F822: dl OverworldMap32_Screen3B_High

#_02F825: dl OverworldMap32_Screen3C_High
#_02F828: dl OverworldMap32_Screen7D_High
#_02F82B: dl OverworldMap32_Screen7E_High
#_02F82E: dl OverworldMap32_Screen3F_High

;===================================================================================================

#_02F831: dl OverworldMap32_Screen80_High
#_02F834: dl OverworldMap32_Screen81_High
#_02F837: dl OverworldMap32_Screen82_High
#_02F83A: dl OverworldMap32_Screen00_High

#_02F83D: dl OverworldMap32_Screen00_High
#_02F840: dl OverworldMap32_Screen00_High
#_02F843: dl OverworldMap32_Screen00_High
#_02F846: dl OverworldMap32_Screen00_High

#_02F849: dl OverworldMap32_Screen88_High
#_02F84C: dl OverworldMap32_Screen89_High
#_02F84F: dl OverworldMap32_Screen8A_High
#_02F852: dl OverworldMap32_Screen00_High

#_02F855: dl OverworldMap32_Screen00_High
#_02F858: dl OverworldMap32_Screen00_High
#_02F85B: dl OverworldMap32_Screen00_High
#_02F85E: dl OverworldMap32_Screen00_High

#_02F861: dl OverworldMap32_Screen00_High
#_02F864: dl OverworldMap32_Screen00_High
#_02F867: dl OverworldMap32_Screen00_High
#_02F86A: dl OverworldMap32_Screen88_High

#_02F86D: dl OverworldMap32_Screen80_High
#_02F870: dl OverworldMap32_Screen95_High
#_02F873: dl OverworldMap32_Screen96_High
#_02F876: dl OverworldMap32_Screen97_High

#_02F879: dl OverworldMap32_Screen00_High
#_02F87C: dl OverworldMap32_Screen00_High
#_02F87F: dl OverworldMap32_Screen00_High
#_02F882: dl OverworldMap32_Screen00_High

#_02F885: dl OverworldMap32_Screen9C_High
#_02F888: dl OverworldMap32_Screen97_High
#_02F88B: dl OverworldMap32_Screen9E_High
#_02F88E: dl OverworldMap32_Screen9F_High

;===================================================================================================

OverworldLoad_Map32LPointers:
#_02F891: dl OverworldMap32_Screen00_Low
#_02F894: dl OverworldMap32_Screen01_Low
#_02F897: dl OverworldMap32_Screen02_Low
#_02F89A: dl OverworldMap32_Screen03_Low

#_02F89D: dl OverworldMap32_Screen04_Low
#_02F8A0: dl OverworldMap32_Screen05_Low
#_02F8A3: dl OverworldMap32_Screen06_Low
#_02F8A6: dl OverworldMap32_Screen07_Low

#_02F8A9: dl OverworldMap32_Screen08_Low
#_02F8AC: dl OverworldMap32_Screen09_Low
#_02F8AF: dl OverworldMap32_Screen0A_Low
#_02F8B2: dl OverworldMap32_Screen0B_Low

#_02F8B5: dl OverworldMap32_Screen0C_Low
#_02F8B8: dl OverworldMap32_Screen0D_Low
#_02F8BB: dl OverworldMap32_Screen0E_Low
#_02F8BE: dl OverworldMap32_Screen0F_Low

#_02F8C1: dl OverworldMap32_Screen10_Low
#_02F8C4: dl OverworldMap32_Screen11_Low
#_02F8C7: dl OverworldMap32_Screen12_Low
#_02F8CA: dl OverworldMap32_Screen13_Low

#_02F8CD: dl OverworldMap32_Screen14_Low
#_02F8D0: dl OverworldMap32_Screen15_Low
#_02F8D3: dl OverworldMap32_Screen16_Low
#_02F8D6: dl OverworldMap32_Screen17_Low

#_02F8D9: dl OverworldMap32_Screen18_Low
#_02F8DC: dl OverworldMap32_Screen19_Low
#_02F8DF: dl OverworldMap32_Screen1A_Low
#_02F8E2: dl OverworldMap32_Screen1B_Low

#_02F8E5: dl OverworldMap32_Screen1C_Low
#_02F8E8: dl OverworldMap32_Screen1D_Low
#_02F8EB: dl OverworldMap32_Screen1E_Low
#_02F8EE: dl OverworldMap32_Screen1F_Low

#_02F8F1: dl OverworldMap32_Screen20_Low
#_02F8F4: dl OverworldMap32_Screen21_Low
#_02F8F7: dl OverworldMap32_Screen22_Low
#_02F8FA: dl OverworldMap32_Screen23_Low

#_02F8FD: dl OverworldMap32_Screen24_Low
#_02F900: dl OverworldMap32_Screen25_Low
#_02F903: dl OverworldMap32_Screen26_Low
#_02F906: dl OverworldMap32_Screen27_Low

#_02F909: dl OverworldMap32_Screen28_Low
#_02F90C: dl OverworldMap32_Screen29_Low
#_02F90F: dl OverworldMap32_Screen2A_Low
#_02F912: dl OverworldMap32_Screen2B_Low

#_02F915: dl OverworldMap32_Screen2C_Low
#_02F918: dl OverworldMap32_Screen2D_Low
#_02F91B: dl OverworldMap32_Screen2E_Low
#_02F91E: dl OverworldMap32_Screen2F_Low

#_02F921: dl OverworldMap32_Screen30_Low
#_02F924: dl OverworldMap32_Screen31_Low
#_02F927: dl OverworldMap32_Screen32_Low
#_02F92A: dl OverworldMap32_Screen33_Low

#_02F92D: dl OverworldMap32_Screen34_Low
#_02F930: dl OverworldMap32_Screen35_Low
#_02F933: dl OverworldMap32_Screen36_Low
#_02F936: dl OverworldMap32_Screen37_Low

#_02F939: dl OverworldMap32_Screen38_Low
#_02F93C: dl OverworldMap32_Screen39_Low
#_02F93F: dl OverworldMap32_Screen3A_Low
#_02F942: dl OverworldMap32_Screen3B_Low

#_02F945: dl OverworldMap32_Screen3C_Low
#_02F948: dl OverworldMap32_Screen3D_Low
#_02F94B: dl OverworldMap32_Screen3E_Low
#_02F94E: dl OverworldMap32_Screen3F_Low

;===================================================================================================

#_02F951: dl OverworldMap32_Screen40_Low
#_02F954: dl OverworldMap32_Screen41_Low
#_02F957: dl OverworldMap32_Screen42_Low
#_02F95A: dl OverworldMap32_Screen43_Low

#_02F95D: dl OverworldMap32_Screen44_Low
#_02F960: dl OverworldMap32_Screen45_Low
#_02F963: dl OverworldMap32_Screen46_Low
#_02F966: dl OverworldMap32_Screen47_Low

#_02F969: dl OverworldMap32_Screen48_Low
#_02F96C: dl OverworldMap32_Screen49_Low
#_02F96F: dl OverworldMap32_Screen0A_Low
#_02F972: dl OverworldMap32_Screen4B_Low

#_02F975: dl OverworldMap32_Screen4C_Low
#_02F978: dl OverworldMap32_Screen4D_Low
#_02F97B: dl OverworldMap32_Screen4E_Low
#_02F97E: dl OverworldMap32_Screen4F_Low

#_02F981: dl OverworldMap32_Screen50_Low
#_02F984: dl OverworldMap32_Screen11_Low
#_02F987: dl OverworldMap32_Screen12_Low
#_02F98A: dl OverworldMap32_Screen53_Low

#_02F98D: dl OverworldMap32_Screen54_Low
#_02F990: dl OverworldMap32_Screen55_Low
#_02F993: dl OverworldMap32_Screen56_Low
#_02F996: dl OverworldMap32_Screen17_Low

#_02F999: dl OverworldMap32_Screen58_Low
#_02F99C: dl OverworldMap32_Screen59_Low
#_02F99F: dl OverworldMap32_Screen5A_Low
#_02F9A2: dl OverworldMap32_Screen5B_Low

#_02F9A5: dl OverworldMap32_Screen5C_Low
#_02F9A8: dl OverworldMap32_Screen5D_Low
#_02F9AB: dl OverworldMap32_Screen5E_Low
#_02F9AE: dl OverworldMap32_Screen5F_Low

#_02F9B1: dl OverworldMap32_Screen60_Low
#_02F9B4: dl OverworldMap32_Screen61_Low
#_02F9B7: dl OverworldMap32_Screen62_Low
#_02F9BA: dl OverworldMap32_Screen63_Low

#_02F9BD: dl OverworldMap32_Screen64_Low
#_02F9C0: dl OverworldMap32_Screen25_Low
#_02F9C3: dl OverworldMap32_Screen66_Low
#_02F9C6: dl OverworldMap32_Screen67_Low

#_02F9C9: dl OverworldMap32_Screen68_Low
#_02F9CC: dl OverworldMap32_Screen69_Low
#_02F9CF: dl OverworldMap32_Screen2A_Low
#_02F9D2: dl OverworldMap32_Screen2B_Low

#_02F9D5: dl OverworldMap32_Screen2C_Low
#_02F9D8: dl OverworldMap32_Screen6D_Low
#_02F9DB: dl OverworldMap32_Screen2E_Low
#_02F9DE: dl OverworldMap32_Screen2F_Low

#_02F9E1: dl OverworldMap32_Screen70_Low
#_02F9E4: dl OverworldMap32_Screen71_Low
#_02F9E7: dl OverworldMap32_Screen72_Low
#_02F9EA: dl OverworldMap32_Screen33_Low

#_02F9ED: dl OverworldMap32_Screen34_Low
#_02F9F0: dl OverworldMap32_Screen75_Low
#_02F9F3: dl OverworldMap32_Screen76_Low
#_02F9F6: dl OverworldMap32_Screen37_Low

#_02F9F9: dl OverworldMap32_Screen78_Low
#_02F9FC: dl OverworldMap32_Screen79_Low
#_02F9FF: dl OverworldMap32_Screen7A_Low
#_02FA02: dl OverworldMap32_Screen3B_Low

#_02FA05: dl OverworldMap32_Screen3C_Low
#_02FA08: dl OverworldMap32_Screen7D_Low
#_02FA0B: dl OverworldMap32_Screen7E_Low
#_02FA0E: dl OverworldMap32_Screen3F_Low

;===================================================================================================

#_02FA11: dl OverworldMap32_Screen80_Low
#_02FA14: dl OverworldMap32_Screen81_Low
#_02FA17: dl OverworldMap32_Screen82_Low
#_02FA1A: dl OverworldMap32_Screen00_Low

#_02FA1D: dl OverworldMap32_Screen00_Low
#_02FA20: dl OverworldMap32_Screen00_Low
#_02FA23: dl OverworldMap32_Screen00_Low
#_02FA26: dl OverworldMap32_Screen00_Low

#_02FA29: dl OverworldMap32_Screen88_Low
#_02FA2C: dl OverworldMap32_Screen89_Low
#_02FA2F: dl OverworldMap32_Screen8A_Low
#_02FA32: dl OverworldMap32_Screen00_Low

#_02FA35: dl OverworldMap32_Screen00_Low
#_02FA38: dl OverworldMap32_Screen00_Low
#_02FA3B: dl OverworldMap32_Screen00_Low
#_02FA3E: dl OverworldMap32_Screen00_Low

#_02FA41: dl OverworldMap32_Screen00_Low
#_02FA44: dl OverworldMap32_Screen00_Low
#_02FA47: dl OverworldMap32_Screen00_Low
#_02FA4A: dl OverworldMap32_Screen88_Low

#_02FA4D: dl OverworldMap32_Screen80_Low
#_02FA50: dl OverworldMap32_Screen95_Low
#_02FA53: dl OverworldMap32_Screen96_Low
#_02FA56: dl OverworldMap32_Screen97_Low

#_02FA59: dl OverworldMap32_Screen00_Low
#_02FA5C: dl OverworldMap32_Screen00_Low
#_02FA5F: dl OverworldMap32_Screen00_Low
#_02FA62: dl OverworldMap32_Screen00_Low

#_02FA65: dl OverworldMap32_Screen9C_Low
#_02FA68: dl OverworldMap32_Screen97_Low
#_02FA6B: dl OverworldMap32_Screen9E_Low
#_02FA6E: dl OverworldMap32_Screen9F_Low

;===================================================================================================

LoadOverworldOverlay:
#_02FA71: REP #$30

#_02FA73: JSR OverworldLoad_LoadSubOverlayMap32

#_02FA76: LDA.w #$1000
#_02FA79: STA.b $CC

#_02FA7B: SEP #$30

#_02FA7D: JSR BuildBGOverlayFromMap16

#_02FA80: LDA.b #$04
#_02FA82: STA.b $17
#_02FA84: STA.w $0710

#_02FA87: INC.b $11

#_02FA89: RTS

;===================================================================================================

BuildBGOverlayFromMap16:
#_02FA8A: PHB

#_02FA8B: LDA.b #Map16Definitions>>16
#_02FA8D: PHA
#_02FA8E: PLB

#_02FA8F: REP #$30

#_02FA91: LDA.w #$7E4000
#_02FA94: STA.b $04

#_02FA96: LDA.w #$007E

#_02FA99: BRA .start

;===================================================================================================

#BuildOverworldMapFromMap16:
#_02FA9B: PHB

#_02FA9C: LDA.b #Map16Definitions>>16
#_02FA9E: PHA
#_02FA9F: PLB

#_02FAA0: REP #$30

#_02FAA2: LDA.w #$7E2000
#_02FAA5: STA.b $04

#_02FAA7: LDA.w #$007E

;===================================================================================================

.start
#_02FAAA: STA.b $06

#_02FAAC: LDA.b $84
#_02FAAE: CLC
#_02FAAF: ADC.w #$1000
#_02FAB2: STA.b $84

#_02FAB4: STZ.b $0A
#_02FAB6: STZ.b $0E

#_02FAB8: LDA.w #$0010
#_02FABB: STA.b $08

;---------------------------------------------------------------------------------------------------

.next
#_02FABD: JSR OverworldCopyMap16ToBuffer

#_02FAC0: LDA.b $84
#_02FAC2: SEC
#_02FAC3: SBC.w #$0080
#_02FAC6: STA.b $84

#_02FAC8: LDA.b $88
#_02FACA: DEC A
#_02FACB: AND.w #$001F
#_02FACE: STA.b $88

#_02FAD0: JSR OverworldCopyMap16ToBuffer

#_02FAD3: LDA.b $84
#_02FAD5: SEC
#_02FAD6: SBC.w #$0080
#_02FAD9: STA.b $84

#_02FADB: LDA.b $88
#_02FADD: DEC A
#_02FADE: AND.w #$001F
#_02FAE1: STA.b $88

#_02FAE3: DEC.b $08
#_02FAE5: BNE .next

;---------------------------------------------------------------------------------------------------

#_02FAE7: SEP #$30

#_02FAE9: PLB

#_02FAEA: RTS

;===================================================================================================

OverworldCopyMap16ToBuffer:
#_02FAEB: LDA.b $84
#_02FAED: SEC
#_02FAEE: SBC.w #$0410
#_02FAF1: AND.w #$1FFF
#_02FAF4: TAY

#_02FAF5: LDA.b $86
#_02FAF7: ASL A
#_02FAF8: TAX

#_02FAF9: LDA.w #$0010
#_02FAFC: STA.b $00

;---------------------------------------------------------------------------------------------------

.next
#_02FAFE: LDA.b [$04],Y
#_02FB00: STA.w $0500,X

#_02FB03: INX
#_02FB04: INX

#_02FB05: TXA
#_02FB06: AND.w #$003F
#_02FB09: TAX

#_02FB0A: INY
#_02FB0B: INY

#_02FB0C: TYA
#_02FB0D: AND.w #$1FFF
#_02FB10: TAY

;---------------------------------------------------------------------------------------------------

#_02FB11: LDA.b [$04],Y
#_02FB13: STA.w $0500,X

#_02FB16: INX
#_02FB17: INX

#_02FB18: TXA
#_02FB19: AND.w #$003F
#_02FB1C: TAX

#_02FB1D: INY
#_02FB1E: INY

#_02FB1F: TYA
#_02FB20: AND.w #$1FFF
#_02FB23: TAY

#_02FB24: DEC.b $00
#_02FB26: BNE .next

;---------------------------------------------------------------------------------------------------

#_02FB28: LDA.b $88
#_02FB2A: STA.b $02

#_02FB2C: CMP.w #$0010
#_02FB2F: BCC .not_lower_half_yet

#_02FB31: AND.w #$000F
#_02FB34: STA.b $02

#_02FB36: LDA.w #$0800
#_02FB39: STA.b $00

.not_lower_half_yet
#_02FB3B: LDA.b $02

#_02FB3D: ASL A ; x64
#_02FB3E: ASL A
#_02FB3F: ASL A
#_02FB40: ASL A
#_02FB41: ASL A
#_02FB42: ASL A

#_02FB43: CLC
#_02FB44: ADC.b $00
#_02FB46: STA.b $00

#_02FB48: LDA.l Map16BufferOffsetLow
#_02FB4C: JSR OverworldCopyOneMap16Segment

#_02FB4F: LDA.b $00
#_02FB51: CLC
#_02FB52: ADC.w #$0400
#_02FB55: STA.b $00

#_02FB57: LDA.l Map16BufferOffsetHigh

;===================================================================================================

OverworldCopyOneMap16Segment:
#_02FB5B: STA.b $02

#_02FB5D: LDX.b $0A

#_02FB5F: LDA.b $00
#_02FB61: ORA.b $CC
#_02FB63: STA.l $7F4000,X

#_02FB67: INX
#_02FB68: INX
#_02FB69: STX.b $0A

#_02FB6B: LDX.b $0E

#_02FB6D: LDA.w #$0010
#_02FB70: STA.b $0C

;---------------------------------------------------------------------------------------------------

.next
#_02FB72: LDY.b $02

#_02FB74: LDA.w $0500,Y

#_02FB77: INY
#_02FB78: INY
#_02FB79: STY.b $02

#_02FB7B: ASL A
#_02FB7C: ASL A
#_02FB7D: ASL A
#_02FB7E: TAY

#_02FB7F: LDA.w Map16Definitions+0,Y
#_02FB82: STA.l $7F2000,X

#_02FB86: LDA.w Map16Definitions+4,Y
#_02FB89: STA.l $7F2040,X

#_02FB8D: INX
#_02FB8E: INX

#_02FB8F: LDA.w Map16Definitions+2,Y
#_02FB92: STA.l $7F2000,X

#_02FB96: LDA.w Map16Definitions+6,Y
#_02FB99: STA.l $7F2040,X

#_02FB9D: INX
#_02FB9E: INX

#_02FB9F: DEC.b $0C
#_02FBA1: BNE .next

;---------------------------------------------------------------------------------------------------

#_02FBA3: TXA
#_02FBA4: CLC
#_02FBA5: ADC.w #$0040
#_02FBA8: STA.b $0E

#_02FBAA: RTS

;===================================================================================================

MirrorBonk_RecoverChangedTiles:
#_02FBAB: REP #$30

#_02FBAD: LDA.w $04AC
#_02FBB0: BEQ .exit

#_02FBB2: LDX.w #$0000
#_02FBB5: STX.b $00

;---------------------------------------------------------------------------------------------------

.next
#_02FBB7: LDX.b $00

#_02FBB9: LDA.l $7EF800,X
#_02FBBD: TAY

#_02FBBE: LDA.l $7EFA00,X
#_02FBC2: TYX

#_02FBC3: STA.l $7E2000,X

#_02FBC7: INC.b $00
#_02FBC9: INC.b $00

#_02FBCB: LDA.b $00
#_02FBCD: CMP.w $04AC
#_02FBD0: BNE .next

;---------------------------------------------------------------------------------------------------

.exit
#_02FBD2: SEP #$30

#_02FBD4: RTS

;===================================================================================================

DecompressEnemyDamageSubclasses:
#_02FBD5: LDA.b #$7F4000>>0
#_02FBD7: STA.b $00

#_02FBD9: LDA.b #$7F4000>>8
#_02FBDB: STA.b $01

#_02FBDD: LDA.b #$7F4000>>16
#_02FBDF: STA.b $02

#_02FBE1: LDA.b #EnemyDamageCompressed>>0
#_02FBE3: STA.b $C8

#_02FBE5: LDA.b #EnemyDamageCompressed>>8
#_02FBE7: STA.b $C9

#_02FBE9: LDA.b #EnemyDamageCompressed>>16
#_02FBEB: STA.b $CA

;---------------------------------------------------------------------------------------------------

#_02FBED: JSR Decompress_bank02

#_02FBF0: LDA.b #$7F4000>>0
#_02FBF2: STA.b $00

#_02FBF4: LDA.b #$7F4000>>8
#_02FBF6: STA.b $01

#_02FBF8: LDA.b #$7F4000>>16
#_02FBFA: STA.b $02

#_02FBFC: REP #$10

#_02FBFE: LDX.w #$0000
#_02FC01: TXY

;---------------------------------------------------------------------------------------------------

; split each entry into the constituent nibbles
.next
#_02FC02: LDA.b [$00],Y
#_02FC04: PHA

#_02FC05: LSR A
#_02FC06: LSR A
#_02FC07: LSR A
#_02FC08: LSR A
#_02FC09: STA.l $7F6000+0,X

#_02FC0D: PLA
#_02FC0E: AND.b #$0F
#_02FC10: STA.l $7F6000+1,X

#_02FC14: INY

#_02FC15: INX
#_02FC16: INX
#_02FC17: CPX.w #$1000
#_02FC1A: BCC .next

;---------------------------------------------------------------------------------------------------

#_02FC1C: SEP #$30

#_02FC1E: RTL

;===================================================================================================

Decompress_bank02:
#_02FC1F: REP #$10

#_02FC21: LDY.w #$0000

.next_byte
#_02FC24: JSR .read_next_byte

; Stop at $FF
#_02FC27: CMP.b #$FF
#_02FC29: BNE .continue

#_02FC2B: SEP #$10

#_02FC2D: RTS

;---------------------------------------------------------------------------------------------------

.continue
#_02FC2E: STA.b $CD

#_02FC30: AND.b #$E0
#_02FC32: CMP.b #$E0
#_02FC34: BEQ .expanded

#_02FC36: PHA

#_02FC37: LDA.b $CD

#_02FC39: REP #$20

#_02FC3B: AND.w #$001F
#_02FC3E: BRA .normal

;---------------------------------------------------------------------------------------------------

.expanded
#_02FC40: LDA.b $CD
#_02FC42: ASL A
#_02FC43: ASL A
#_02FC44: ASL A
#_02FC45: AND.b #$E0
#_02FC47: PHA

#_02FC48: LDA.b $CD
#_02FC4A: AND.b #$03
#_02FC4C: XBA

#_02FC4D: JSR .read_next_byte

#_02FC50: REP #$20

;---------------------------------------------------------------------------------------------------

.normal
#_02FC52: INC A
#_02FC53: STA.b $CB

#_02FC55: SEP #$20

#_02FC57: PLA
#_02FC58: BEQ .nonrepeating
#_02FC5A: BMI .copy

#_02FC5C: ASL A
#_02FC5D: BPL .repeating8

#_02FC5F: ASL A
#_02FC60: BPL .repeating16

;---------------------------------------------------------------------------------------------------

#_02FC62: JSR .read_next_byte

#_02FC65: LDX.b $CB

.next_incremental
#_02FC67: STA.b [$00],Y

#_02FC69: INC A
#_02FC6A: INY

#_02FC6B: DEX
#_02FC6C: BNE .next_incremental

#_02FC6E: BRA .next_byte

;---------------------------------------------------------------------------------------------------

.nonrepeating
.next_nonrepeating
#_02FC70: JSR .read_next_byte

#_02FC73: STA.b [$00],Y
#_02FC75: INY

#_02FC76: LDX.b $CB
#_02FC78: DEX
#_02FC79: STX.b $CB

#_02FC7B: BNE .next_nonrepeating

#_02FC7D: BRA .next_byte

;---------------------------------------------------------------------------------------------------

.repeating8
#_02FC7F: JSR .read_next_byte

#_02FC82: LDX.b $CB

.next_repeating8
#_02FC84: STA.b [$00],Y

#_02FC86: INY

#_02FC87: DEX
#_02FC88: BNE .next_repeating8

#_02FC8A: BRA .next_byte

;---------------------------------------------------------------------------------------------------

.repeating16
#_02FC8C: JSR .read_next_byte
#_02FC8F: XBA

#_02FC90: JSR .read_next_byte
#_02FC93: LDX.b $CB

.next_repeating16
#_02FC95: XBA
#_02FC96: STA.b [$00],Y

#_02FC98: INY

#_02FC99: DEX
#_02FC9A: BEQ .done16

#_02FC9C: XBA
#_02FC9D: STA.b [$00],Y

#_02FC9F: INY

#_02FCA0: DEX
#_02FCA1: BNE .next_repeating16

.done16
#_02FCA3: JMP.w .next_byte

;---------------------------------------------------------------------------------------------------

.copy
#_02FCA6: JSR .read_next_byte
#_02FCA9: XBA

#_02FCAA: JSR .read_next_byte
#_02FCAD: TAX

.next_copy
#_02FCAE: PHY
#_02FCAF: TXY

#_02FCB0: LDA.b [$00],Y

#_02FCB2: TYX
#_02FCB3: PLY

.do_copy
#_02FCB4: STA.b [$00],Y

#_02FCB6: INY
#_02FCB7: INX

#_02FCB8: REP #$20

#_02FCBA: DEC.b $CB

#_02FCBC: SEP #$20

#_02FCBE: BNE .next_copy

#_02FCC0: JMP.w .next_byte

;---------------------------------------------------------------------------------------------------

.read_next_byte
#_02FCC3: LDA.b [$C8]

#_02FCC5: LDX.b $C8

; Check for -1
#_02FCC7: INX
#_02FCC8: BNE .exit

#_02FCCA: LDX.b #$00
#_02FCCC: BRA .do_copy

.unreachable ; weird
#_02FCCE: DEX

.exit
#_02FCCF: STX.b $C8

#_02FCD1: RTS

;===================================================================================================
; FREE ROM: 0x2E
;===================================================================================================
NULL_02FCD2:
#_02FCD2: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_02FCDA: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_02FCE2: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_02FCEA: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_02FCF2: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_02FCFA: db $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================
; Not sure how this ended up here
;===================================================================================================
UNREACHABLE_02FD00:
#_02FD00: LDA.b #$01
#_02FD02: STA.b $EE

;===================================================================================================

Palette_AssertTranslucencySwap:
#_02FD04: LDA.b #$01
#_02FD06: STA.w $0ABD

.apply
#_02FD09: REP #$21

#_02FD0B: LDX.b #$00

.copy_next
#_02FD0D: LDA.l $7EC400,X
#_02FD11: PHA

#_02FD12: LDA.l $7EC4E0,X
#_02FD16: STA.l $7EC400,X
#_02FD1A: STA.l $7EC600,X

#_02FD1E: PLA
#_02FD1F: STA.l $7EC4E0,X
#_02FD23: STA.l $7EC6E0,X

#_02FD27: LDA.l $7EC410,X
#_02FD2B: PHA

#_02FD2C: LDA.l $7EC4F0,X
#_02FD30: STA.l $7EC410,X
#_02FD34: STA.l $7EC610,X

#_02FD38: PLA
#_02FD39: STA.l $7EC4F0,X
#_02FD3D: STA.l $7EC6F0,X

#_02FD41: LDA.l $7EC4B0,X
#_02FD45: PHA

#_02FD46: LDA.l $7EC470,X
#_02FD4A: STA.l $7EC4B0,X
#_02FD4E: STA.l $7EC6B0,X

#_02FD52: PLA
#_02FD53: STA.l $7EC470,X
#_02FD57: STA.l $7EC670,X

#_02FD5B: INX
#_02FD5C: INX
#_02FD5D: CPX.b #$10
#_02FD5F: BNE .copy_next

;---------------------------------------------------------------------------------------------------

#_02FD61: SEP #$20

#_02FD63: INC.b $15

#_02FD65: RTL

;---------------------------------------------------------------------------------------------------

#UNREACHABLE_02FD66:
#_02FD66: STZ.b $EE

;---------------------------------------------------------------------------------------------------

#Palette_RevertTranslucencySwap:
#_02FD68: STZ.w $0ABD

#_02FD6B: BRA .apply

;===================================================================================================

RefreshLinkEquipmentPalettes_sword_and_mail:
#_02FD6D: REP #$20

#_02FD6F: LDA.l $7EF359
#_02FD73: STA.b $0C

#_02FD75: LDA.l $7EF35B
#_02FD79: AND.w #$00FF
#_02FD7C: BRA RefreshLinkEquipmentPalettes

;===================================================================================================

RefreshLinkEquipmentPalettes_zap:
#_02FD7E: REP #$20

#_02FD80: LDA.w #$0202
#_02FD83: STA.b $0C

#_02FD85: LDA.w #$0404
#_02FD88: BRA RefreshLinkEquipmentPalettes

;===================================================================================================

RefreshLinkEquipmentPalettes_bunny:
#_02FD8A: REP #$20

#_02FD8C: LDA.l $7EF359
#_02FD90: STA.b $0C

#_02FD92: LDA.w #$0303

;===================================================================================================

RefreshLinkEquipmentPalettes:
#_02FD95: STA.b $0E

#_02FD97: LDA.w #PaletteData>>16
#_02FD9A: STA.b $02

#_02FD9C: LDX.b $0C

#_02FD9E: LDA.l SwordPaletteOffsets,X
#_02FDA2: AND.w #$00FF
#_02FDA5: CLC
#_02FDA6: ADC.w #PaletteData_sword_00

#_02FDA9: REP #$10

#_02FDAB: LDX.w #$01B2
#_02FDAE: LDY.w #$0002
#_02FDB1: JSR .copy_palette

;---------------------------------------------------------------------------------------------------

#_02FDB4: SEP #$10

#_02FDB6: LDX.b $0D

#_02FDB8: LDA.l ShieldPaletteOffsets,X
#_02FDBC: AND.w #$00FF
#_02FDBF: CLC
#_02FDC0: ADC.w #PaletteData_shield_00

#_02FDC3: REP #$10

#_02FDC5: LDX.w #$01B8
#_02FDC8: LDY.w #$0003
#_02FDCB: JSR .copy_palette

;---------------------------------------------------------------------------------------------------

#_02FDCE: SEP #$10

#_02FDD0: LDX.b $0E

#_02FDD2: LDA.l LinkMailPalettesOffsets,X
#_02FDD6: AND.w #$00FF
#_02FDD9: ASL A
#_02FDDA: CLC
#_02FDDB: ADC.w #PaletteData_link_00

#_02FDDE: REP #$10

#_02FDE0: LDX.w #$01E2
#_02FDE3: LDY.w #$000E
#_02FDE6: JSR .copy_palette

;---------------------------------------------------------------------------------------------------

#_02FDE9: SEP #$30

#_02FDEB: INC.b $15

#_02FDED: RTL

;---------------------------------------------------------------------------------------------------

.copy_palette
#_02FDEE: STA.b $00

.next_color
#_02FDF0: LDA.b [$00]
#_02FDF2: STA.l $7EC300,X
#_02FDF6: STA.l $7EC500,X

#_02FDFA: INC.b $00
#_02FDFC: INC.b $00

#_02FDFE: INX
#_02FDFF: INX

#_02FE00: DEY
#_02FE01: BPL .next_color

#_02FE03: RTS

;===================================================================================================

PaletteFilter_Oversaturation:
#_02FE04: REP #$20

#_02FE06: LDX.b #$00

;---------------------------------------------------------------------------------------------------

.next_color
#_02FE08: LDA.l $7EC340,X
#_02FE0C: JSR OversaturateColor
#_02FE0F: STA.l $7EC540,X

#_02FE13: LDA.l $7EC350,X
#_02FE17: JSR OversaturateColor
#_02FE1A: STA.l $7EC550,X

#_02FE1E: LDA.l $7EC360,X
#_02FE22: JSR OversaturateColor
#_02FE25: STA.l $7EC560,X

#_02FE29: LDA.l $7EC370,X
#_02FE2D: JSR OversaturateColor
#_02FE30: STA.l $7EC570,X

#_02FE34: LDA.l $7EC380,X
#_02FE38: JSR OversaturateColor
#_02FE3B: STA.l $7EC580,X

#_02FE3F: LDA.l $7EC390,X
#_02FE43: JSR OversaturateColor
#_02FE46: STA.l $7EC590,X

#_02FE4A: LDA.l $7EC3A0,X
#_02FE4E: JSR OversaturateColor
#_02FE51: STA.l $7EC5A0,X

#_02FE55: LDA.l $7EC3B0,X
#_02FE59: JSR OversaturateColor
#_02FE5C: STA.l $7EC5B0,X

#_02FE60: LDA.l $7EC3C0,X
#_02FE64: JSR OversaturateColor
#_02FE67: STA.l $7EC5C0,X

#_02FE6B: LDA.l $7EC3D0,X
#_02FE6F: JSR OversaturateColor
#_02FE72: STA.l $7EC5D0,X

#_02FE76: LDA.l $7EC3E0,X
#_02FE7A: JSR OversaturateColor
#_02FE7D: STA.l $7EC5E0,X

#_02FE81: LDA.l $7EC3F0,X
#_02FE85: JSR OversaturateColor
#_02FE88: STA.l $7EC5F0,X

#_02FE8C: INX
#_02FE8D: INX
#_02FE8E: CPX.b #$10
#_02FE90: BEQ .done

#_02FE92: JMP.w .next_color

;---------------------------------------------------------------------------------------------------

.done
#_02FE95: REP #$10

#_02FE97: LDA.l $7EC540
#_02FE9B: TAY

#_02FE9C: LDA.l $7EC300
#_02FEA0: BNE .dont_copy_that

#_02FEA2: TAY

.dont_copy_that
#_02FEA3: TYA
#_02FEA4: STA.l $7EC500

#_02FEA8: SEP #$30

#_02FEAA: RTL

;===================================================================================================

OversaturateColor:
#_02FEAB: STA.b $00

#_02FEAD: AND.w #$001F
#_02FEB0: CLC
#_02FEB1: ADC.w #$000E

#_02FEB4: CMP.w #$001F
#_02FEB7: BCC .oversaturated_r

#_02FEB9: LDA.w #$001F

.oversaturated_r
#_02FEBC: STA.b $02

#_02FEBE: LDA.b $00
#_02FEC0: AND.w #$03E0
#_02FEC3: CLC
#_02FEC4: ADC.w #$01C0

#_02FEC7: CMP.w #$03E0
#_02FECA: BCC .oversaturated_g

#_02FECC: LDA.w #$03E0

.oversaturated_g
#_02FECF: STA.b $04

#_02FED1: LDA.b $00
#_02FED3: AND.w #$7C00
#_02FED6: CLC
#_02FED7: ADC.w #$3800

#_02FEDA: CMP.w #$7C00
#_02FEDD: BCC .oversaturated_b

#_02FEDF: LDA.w #$7C00

.oversaturated_b
#_02FEE2: ORA.b $02
#_02FEE4: ORA.b $04

#_02FEE6: RTS

;===================================================================================================

Palette_RestoreBGFromFlash:
#_02FEE7: REP #$20

#_02FEE9: LDX.b #$00

;---------------------------------------------------------------------------------------------------

.next_color
#_02FEEB: LDA.l $7EC340,X
#_02FEEF: STA.l $7EC540,X

#_02FEF3: LDA.l $7EC350,X
#_02FEF7: STA.l $7EC550,X

#_02FEFB: LDA.l $7EC360,X
#_02FEFF: STA.l $7EC560,X

#_02FF03: LDA.l $7EC370,X
#_02FF07: STA.l $7EC570,X

#_02FF0B: LDA.l $7EC380,X
#_02FF0F: STA.l $7EC580,X

#_02FF13: LDA.l $7EC390,X
#_02FF17: STA.l $7EC590,X

#_02FF1B: LDA.l $7EC3A0,X
#_02FF1F: STA.l $7EC5A0,X

#_02FF23: LDA.l $7EC3B0,X
#_02FF27: STA.l $7EC5B0,X

#_02FF2B: LDA.l $7EC3C0,X
#_02FF2F: STA.l $7EC5C0,X

#_02FF33: LDA.l $7EC3D0,X
#_02FF37: STA.l $7EC5D0,X

#_02FF3B: LDA.l $7EC3E0,X
#_02FF3F: STA.l $7EC5E0,X

#_02FF43: LDA.l $7EC3F0,X
#_02FF47: STA.l $7EC5F0,X

#_02FF4B: INX
#_02FF4C: INX
#_02FF4D: CPX.b #$10
#_02FF4F: BNE .next_color

#_02FF51: LDA.l $7EC540
#_02FF55: STA.l $7EC500

#_02FF59: SEP #$30

;===================================================================================================

Palette_RestoreFixedColor:
#_02FF5B: LDA.b $1B
#_02FF5D: BNE .exit

#_02FF5F: REP #$10

#_02FF61: LDX.w #$4020 ; Fixed color RGB: #000000
#_02FF64: STX.b $9C

#_02FF66: LDX.w #$8040
#_02FF69: STX.b $9D

#_02FF6B: LDX.w #$4F33 ; Fixed color RGB: #987848
#_02FF6E: LDY.w #$894F
#_02FF71: LDA.b $8A
#_02FF73: BEQ .exit

#_02FF75: CMP.b #$40
#_02FF77: BEQ .exit

#_02FF79: CMP.b #$5B
#_02FF7B: BEQ .set_fixedcol

#_02FF7D: LDX.w #$4C26 ; Fixed color RGB: #306060
#_02FF80: LDY.w #$8C4C

#_02FF83: CMP.b #$03
#_02FF85: BEQ .set_fixedcol

#_02FF87: CMP.b #$05
#_02FF89: BEQ .set_fixedcol

#_02FF8B: CMP.b #$07
#_02FF8D: BEQ .set_fixedcol

#_02FF8F: LDX.w #$4A26 ; Fixed color RGB: #305038
#_02FF92: LDY.w #$874A

#_02FF95: CMP.b #$43
#_02FF97: BEQ .set_fixedcol

#_02FF99: CMP.b #$45
#_02FF9B: BEQ .set_fixedcol

#_02FF9D: CMP.b #$47
#_02FF9F: BNE .exit

.set_fixedcol
#_02FFA1: STX.b $9C
#_02FFA3: STY.b $9D

.exit
#_02FFA5: SEP #$10

#_02FFA7: RTL

;===================================================================================================

Palette_RestoreBGAndHUD:
#_02FFA8: REP #$20

#_02FFAA: LDX.b #$7E

.next_color
#_02FFAC: LDA.l $7EC300,X
#_02FFB0: STA.l $7EC500,X

#_02FFB4: LDA.l $7EC380,X
#_02FFB8: STA.l $7EC580,X

#_02FFBC: DEX
#_02FFBD: DEX
#_02FFBE: BPL .next_color

#_02FFC0: SEP #$20

#_02FFC2: INC.b $15

#_02FFC4: JMP.w Palette_RestoreFixedColor

;===================================================================================================
; FREE ROM: 0x39
;===================================================================================================
NULL_02FFC7:
#_02FFC7: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_02FFCF: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_02FFD7: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_02FFDF: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_02FFE7: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_02FFEF: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_02FFF7: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_02FFFF: db $FF

;===================================================================================================

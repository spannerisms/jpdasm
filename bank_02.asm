org $028000

;===================================================================================================

Intro_SetupScreen:
; enable SPR on main screen; nothing on subscreen
|028000| LDA.b #$10
|028002| STA.b $1C
|028004| STZ.b $1D

|028006| JSR Intro_InitializeBackgroundSettings

; prevent color math inside window
|028009| LDA.b #$20
|02800B| STA.b $99

|02800D| LDA.b #$02
|02800F| STA.w OBSEL

|028012| LDA.b #$14
|028014| STA.w $0AAA

|028017| JSL LoadChrHalfSlot

|02801B| STZ.w $0AAA

|02801E| JSR LoadOWMusicIfNeeded

|028021| RTL

;===================================================================================================

Intro_CreateTextPointers:
|028022| JSL BuildSomeTextMasks
|028026| JSL CreateMessagePointers

;===================================================================================================

Intro_LoadAllPalettes_long:
|02802A| JSR Intro_LoadAllPalettes

|02802D| RTL

;===================================================================================================

AnimatedTileSheets:
|02802E| db $5D, $5D, $5D, $5D, $5D, $5D, $5D, $5F
|028036| db $5D, $5F, $5F, $5E, $5F, $5E, $5E, $5D
|02803E| db $5D, $5E, $5D, $5D, $5D, $5D, $5D, $5D

;===================================================================================================

Module05_LoadFile:
|028046| JSL EnableForceBlank

|02804A| STZ.w $0200

|02804D| STZ.w $03F4

|028050| STZ.w $02D4
|028053| STZ.w $02D7

|028056| STZ.w $02F9

|028059| STZ.w $0379

|02805C| STZ.w $03FD

|02805F| JSL EraseTilemaps_normal

|028063| LDA.b #$02
|028065| STA.w OBSEL

|028068| JSL LoadDefaultGraphics
|02806C| JSL ConfigureSpriteSet
|028070| JSL LoadDefaultTileTypes

|028074| JSL DecompressSwordGraphics
|028078| JSL DecompressShieldGraphics

|02807C| JSL InitializeLink

|028080| JSL LoadFollowerGraphics

|028084| LDA.b #$46
|028086| STA.l $7EC2FC
|02808A| STA.l $7EC2FD
|02808E| STA.l $7EC2FE
|028092| STA.l $7EC2FF

|028096| STZ.w $02CD

|028099| LDA.b #$02
|02809B| STA.w $02CE

|02809E| LDA.b #$30
|0280A0| STA.b $FF

|0280A2| LDA.l $7EF3CA
|0280A6| BEQ .light_world

|0280A8| LDA.b $1B
|0280AA| BNE LoadUnderworldRoomRebuildHUD

|0280AC| JSL SearchForEquippedItem_long
|0280B0| JSL RebuildHUD_long2
|0280B4| JSL UpdateEquippedItem_long

|0280B8| STZ.w $010A

|0280BB| LDA.b #$20 ; ROOM 0020
|0280BD| STA.b $A0
|0280BF| STZ.b $A1

|0280C1| LDA.b #$08 ; overworld game mode
|0280C3| STA.b $10
|0280C5| STZ.b $11
|0280C7| STZ.b $B0

|0280C9| STZ.w $04AA

|0280CC| RTL

;---------------------------------------------------------------------------------------------------

.light_world
; [BUG] sanc and quit
; if mosaic, we're indoors?
; dumb code to catch mirroring
|0280CD| LDA.l $7EC011
|0280D1| BNE LoadUnderworldRoomRebuildHUD

|0280D3| LDA.w $010A
|0280D6| BEQ .not_continue

|0280D8| LDA.w $04AA
|0280DB| BEQ LoadUnderworldRoomRebuildHUD

.not_continue
|0280DD| LDA.l $7EF3C5 ; if we haven't saved zelda
|0280E1| CMP.b #$02
|0280E3| BCC LoadUnderworldRoomRebuildHUD

|0280E5| LDA.l $7EF3C8 ; check our starting entrance
|0280E9| CMP.b #$05 ; DM unlocked
|0280EB| BEQ LoadUnderworldRoomRebuildHUD

|0280ED| REP #$10

; 3 choice message
|0280EF| LDX.w #$0183 ; MESSAGE 0183

|0280F2| LDA.l $7EF353
|0280F6| CMP.b #$02
|0280F8| BEQ .no_mirror

; 2 choice message
|0280FA| LDX.w #$0182 ; MESSAGE 0182

.no_mirror
|0280FD| STX.w $1CF0

|028100| SEP #$10

|028102| JSL PrepAndDisplayMessage
|028106| JSR LoadUnderworldPalettes

|028109| LDA.b #$0F
|02810B| STA.b $13

|02810D| LDA.b #$04
|02810F| STA.b $1C
|028111| STZ.b $1D

|028113| LDA.b #$1B
|028115| STA.b $10

|028117| RTL

;===================================================================================================

LoadUnderworldRoomRebuildHUD:
|028118| LDA.b #$00 ; reset mosaic level
|02811A| STA.l $7EC011

|02811E| ORA.b #$07
|028120| STA.b $95

|028122| JSL SearchForEquippedItem_long
|028126| JSL RebuildHUD_long2
|02812A| JSL UpdateEquippedItem_long

; bleed into underworld loading

;===================================================================================================

Module06_UnderworldLoad:
|02812E| REP #$20

|028130| STZ.b $A0
|028132| STZ.b $A2

|028134| STZ.w $0402

|028137| LDA.w #$0000
|02813A| STA.l $7EC019
|02813E| STA.l $7EC01B
|028142| STA.l $7EC01D
|028146| STA.l $7EC01F
|02814A| STA.l $7EC021
|02814E| STA.l $7EC023

|028152| SEP #$20

|028154| JSR LoadUnderworldEntrance

; check dungeon ID
|028157| LDA.w $040C
|02815A| CMP.b #$FF ; DUNGEON FF
|02815C| BEQ .cave ; use -1 keys

|02815E| CMP.b #$02 ; DUNGEON 02
|028160| BNE .not_castle

; swap to sewers
|028162| LDA.b #$00 ; DUNGEON 00

.not_castle
|028164| LSR A
|028165| TAX

|028166| LDA.l $7EF37C,X ; get the current key count

.cave
|02816A| JSL RebuildHUD_Keys

|02816E| STZ.w $045A
|028171| STZ.w $0458

|028174| JSR LoadAndDrawRoom
|028177| JSL LoadUnderworldTileTypes

;---------------------------------------------------------------------------------------------------

|02817B| LDX.w $0AA1

|02817E| LDA.l AnimatedTileSheets,X
|028182| TAY

|028183| JSL DecompressAnimatedUnderworldTiles
|028187| JSL LoadEveryObjectAttributeSet

|02818B| LDA.b #$0A
|02818D| STA.w $0AA4

|028190| JSL InitializeTilesets

|028194| LDA.b #$0A
|028196| STA.w $0AB1

|028199| JSR LoadUnderworldPalettes

|02819C| LDA.w $02E0
|02819F| ORA.b $56
|0281A1| BEQ .not_bunny

|0281A3| JSL RefreshEquipmentPalettes_bunny

.not_bunny
|0281A7| REP #$30

|0281A9| LDA.b $A0
|0281AB| AND.w #$000F
|0281AE| ASL A
|0281AF| XBA
|0281B0| STA.w $062C

|0281B3| LDA.b $A0
|0281B5| AND.w #$0FF0
|0281B8| LSR A
|0281B9| LSR A
|0281BA| LSR A
|0281BB| XBA
|0281BC| STA.w $062E

|0281BF| LDA.b $A0 ; check for Link's house
|0281C1| CMP.w #$0104 ; ROOM 0104
|0281C4| BNE .use_current_entrance

|0281C6| LDA.l $7EF3C6
|0281CA| AND.w #$0010
|0281CD| BEQ .use_current_entrance

|0281CF| LDA.w #$0000
|0281D2| STA.l $7EC005

;---------------------------------------------------------------------------------------------------

.use_current_entrance
|0281D6| SEP #$30

|0281D8| JSL SetAndSaveVisitedQuadrantFlags

; CGWSEL: color source = subcreen
|0281DC| LDA.b #$02
|0281DE| STA.b $99

; CGADSUB: enabled on BG1, BG2, OBJ, COL; subtraction
|0281E0| LDA.b #$B3
|0281E2| STA.b $9A

|0281E4| LDX.w $045A

|0281E7| LDA.l $7EC005
|0281EB| BNE .do_fade

|0281ED| LDX.b #$03
|0281EF| LDY.w $0414
|0281F2| BEQ .no_room_effect

; Check for translucent backgrounds.

; prevent color math always
|0281F4| LDA.b #$32
|0281F6| CPY.b #$07
|0281F8| BEQ .set_room_effect

; prevent color math inside window
; clip to black in window
|0281FA| LDA.b #$62
|0281FC| CPY.b #$04
|0281FE| BEQ .set_room_effect

.no_room_effect
|028200| LDA.b #$20 ; prevent color math inside window

.set_room_effect
|028202| STA.b $9A

.do_fade
|028204| LDA.l RoomEffectFixedColors,X
|028208| STA.l $7EC017

|02820C| JSL ApplyGrayscaleFixed_Parameterized

; Mosaic stuff
|028210| LDA.b #$1F
|028212| STA.l $7EC007

|028216| LDA.b #$00
|028218| STA.l $7EC00B

|02821C| LDA.b #$02
|02821E| STA.l $7EC009

|028222| STZ.w $0AA9

|028225| STZ.b $57

|028227| STZ.b $3A
|028229| STZ.b $3C

;---------------------------------------------------------------------------------------------------

|02822B| JSR ResetLampconeAndLink
|02822E| JSL CheckIfBunny
|028232| JSR ResetThenCacheRoomEntryProperties

|028235| LDA.l $7EF3CC
|028239| CMP.b #$0D ; FOLLOWER 0D
|02823B| BNE .not_superbomb

|02823D| LDA.b #$00 ; kill super bomb
|02823F| STA.l $7EF3CC

|028243| STZ.w $04B4

|028246| JSL HideHUDTimer

.not_superbomb
|02824A| LDA.b #$09
|02824C| STA.b $94

|02824E| JSL InitializeFollower
|028252| JSL ResetAllSprites
|028256| JSL Underworld_ResetSprites

|02825A| STZ.w $02F0

|02825D| INC.w $04C7

|028260| LDA.l $7EF3C5
|028264| BNE .not_bed_cutscene

|028266| LDA.l $7EF3C6
|02826A| AND.b #$10
|02826C| BNE .not_bed_cutscene

|02826E| LDA.b #$30 ; Fixed color RGB: #808000
|028270| STA.b $9C

|028272| LDA.b #$50
|028274| STA.b $9D

|028276| LDA.b #$80
|028278| STA.b $9E

|02827A| LDA.b #$00
|02827C| STA.l $7EC005
|028280| STA.l $7EC006

|028284| JSL TuckLinkIntoBed

;---------------------------------------------------------------------------------------------------

.not_bed_cutscene
|028288| LDA.b #$07
|02828A| STA.w $010C
|02828D| STA.b $10

|02828F| LDA.b #$0F
|028291| STA.b $11

|028293| JSR LoadUnderworldSongBankIfNeeded

;===================================================================================================

UnderworldAdjustRainSFX:
|028296| LDA.l $7EF3C5 ; is it raining?
|02829A| CMP.b #$02
|02829C| BCS .exit

|02829E| LDA.b #$05 ; SFX1.05
|0282A0| STA.w $012D

|0282A3| LDA.b $A4 ; are we on a basement floor?
|0282A5| BMI .exit

|0282A7| REP #$20

; check sanctuary rooms
|0282A9| LDA.b $A0
|0282AB| CMP.w #$0002 ; ROOM 0002
|0282AE| BEQ .exit

|0282B0| CMP.w #$0012 ; ROOM 0012
|0282B3| BEQ .exit

|0282B5| SEP #$20

|0282B7| LDA.b #$03 ; SFX1.03
|0282B9| STA.w $012D

.exit
|0282BC| SEP #$20

|0282BE| RTL

;===================================================================================================

CacheRoomEntryProperties_long:
|0282BF| JSR CacheRoomEntryProperties

|0282C2| RTL

;===================================================================================================

OverworldLoadSubmodules:
|0282C3| dw Module08_00_LoadProperties
|0282C5| dw Overworld_LoadSubscreenAndSilenceSFX1
|0282C7| dw Module08_02_LoadAndAdvance

;===================================================================================================

Module08_OverworldLoad:
Module0A_OverworldSpecialLoad:
|0282C9| LDA.b $11
|0282CB| ASL A
|0282CC| TAX

|0282CD| JSR (OverworldLoadSubmodules,X)

|0282D0| RTL

;===================================================================================================

Module08_00_LoadProperties:
|0282D1| LDA.b #$82
|0282D3| STA.b $99

|0282D5| STZ.w $03F4

|0282D8| JSL AdjustLinkBunnyStatus

|0282DC| LDA.b $10
|0282DE| CMP.b #$08
|0282E0| BNE .special_overworld_a

|0282E2| JSR LoadOverworldFromUnderworld
|0282E5| BRA .continue_a

.special_overworld_a
|0282E7| JSR LoadOverworldFromSpecialOverworld

.continue_a
; hide keys
|0282EA| LDA.b #$FF
|0282EC| STA.l $7EF36F

|0282F0| JSL HandleItemRefills

;---------------------------------------------------------------------------------------------------

|0282F4| LDY.b #$58
|0282F6| LDX.b #$02 ; SONG 02

; Check for death mountain screens
|0282F8| LDA.b $8A
|0282FA| CMP.b #$03 ; OW 03
|0282FC| BEQ .death_mountain

|0282FE| CMP.b #$05 ; OW 05
|028300| BEQ .death_mountain

|028302| CMP.b #$07 ; OW 07
|028304| BEQ .death_mountain

|028306| LDX.b #$09 ; SONG 09

; check for dark death mountain screens
|028308| LDA.b $8A
|02830A| CMP.b #$43 ; OW 43
|02830C| BEQ .death_mountain

|02830E| CMP.b #$45 ; OW 45
|028310| BEQ .death_mountain

|028312| CMP.b #$47 ; OW 47
|028314| BEQ .death_mountain

|028316| LDY.b #$5A

|028318| LDA.b $8A
|02831A| CMP.b #$40
|02831C| BCS .dark_world

|02831E| LDX.b #$07 ; SONG 07

|028320| LDA.l $7EF3C5
|028324| CMP.b #$03
|028326| BCC .aga_alive

|028328| LDX.b #$02 ; SONG 02

.aga_alive
; kak well
|02832A| LDA.b $A0
|02832C| CMP.b #$2F ; ROOM 002F
|02832E| BEQ .death_mountain

|028330| LDA.b $A0
|028332| CMP.b #$1F ; ROOM 011F
|028334| BNE .not_kakariko_shop

; This shop shares a room with the Bumpkin's house
; check if we're exiting to Kakariko
|028336| LDA.b $8A
|028338| CMP.b #$18 ; OW 18
|02833A| BEQ .death_mountain

.not_kakariko_shop
|02833C| LDX.b #$05 ; SONG 05

; Check for master sword
|02833E| LDA.l $7EF300
|028342| AND.b #$40
|028344| BEQ .no_ms

|028346| LDX.b #$02 ; SONG 02

.no_ms
|028348| LDA.b $A0 ; ROOM 0100
|02834A| BEQ .death_mountain

|02834C| CMP.b #$E1 ; ROOM 00E1
|02834E| BEQ .death_mountain

.dark_world
|028350| LDX.b #$F3 ; SONG F3 - max volume

; If the last command was the cut the volume in half, turn it back up.
|028352| LDA.w $0132
|028355| CMP.b #$F2 ; SONG F2 - half volume
|028357| BEQ .continue_with_music

; Use overture theme for aga defeated
|028359| LDX.b #$02 ; SONG 02

|02835B| LDA.l $7EF3C5
|02835F| CMP.b #$02
|028361| BCS .death_mountain

; otherwise, use legends theme, maybe
|028363| LDX.b #$03 ; SONG 03

.death_mountain
; check for dark world
|028365| LDA.l $7EF3CA
|028369| BEQ .continue_with_music

|02836B| LDX.b #$0D ; SONG 0D

|02836D| LDA.b $8A
|02836F| CMP.b #$40 ; OW 40
|028371| BEQ .use_sw_theme

|028373| CMP.b #$43 ; OW 43
|028375| BEQ .use_sw_theme

|028377| CMP.b #$45 ; OW 45
|028379| BEQ .use_sw_theme

|02837B| CMP.b #$47 ; OW 47
|02837D| BEQ .use_sw_theme

|02837F| LDX.b #$09 ; SONG 09

.use_sw_theme
; Check for pearl
|028381| LDA.l $7EF357
|028385| BNE .continue_with_music

|028387| LDX.b #$04 ; SONG 04

.continue_with_music
|028389| STX.w $0132

;---------------------------------------------------------------------------------------------------

|02838C| JSL DecompressAnimatedOverworldTiles
|028390| JSL InitializeTilesets
|028394| JSR OverworldLoadScreensPaletteSet

|028397| LDX.b $8A

|028399| LDA.l $7EFD40,X
|02839D| STA.b $00

|02839F| LDA.l OverworldPalettesScreenToSet,X
|0283A3| JSL OverworldPalettesLoader
|0283A7| JSL SetOverworldBackgroundColor

|0283AB| LDA.b $10
|0283AD| CMP.b #$08
|0283AF| BNE .special_overworld_b

|0283B1| JSR Overworld_CopyPalettesToCache_WithPrep
|0283B4| BRA .continue_b

.special_overworld_b
|0283B6| JSR SpecialOverworld_CopyPalettesToCache

.continue_b
|0283B9| JSL Overworld_SetFixedColAndScroll

|0283BD| LDA.b #$00
|0283BF| STA.l $7EC017

|0283C3| JSL InitializeFollower

|0283C7| LDA.b $8A
|0283C9| AND.b #$3F ; OW 00, OW 40, OW 80
|0283CB| BNE .not_woods

; mushroom
|0283CD| LDA.b #$1E
|0283CF| JSL WriteTo4BPPBuffer_item_gfx

.not_woods
|0283D3| LDA.b #$09
|0283D5| STA.w $010C

|0283D8| JSL ResetAndReloadOverworldSprites

; Skip portal in DW
|0283DC| LDA.b $8A
|0283DE| AND.b #$40
|0283E0| BNE .no_mirror_portal

|0283E2| JSL InitializeMirrorPortal

.no_mirror_portal
|0283E6| LDX.b #$05 ; SFX1.05

|0283E8| LDA.l $7EF3C5
|0283EC| CMP.b #$02
|0283EE| BCS .no_rain_sfx

|0283F0| LDX.b #$01 ; SFX1.01

.no_rain_sfx
|0283F2| STX.w $012D

; Delete the maiden if that's our current follower
|0283F5| LDA.l $7EF3CC
|0283F9| CMP.b #$06 ; FOLLOWER 06
|0283FB| BNE .not_blind_follower

|0283FD| LDA.b #$00
|0283FF| STA.l $7EF3CC

.not_blind_follower
|028403| STZ.b $6C

|028405| STZ.b $3A
|028407| STZ.b $3C

|028409| STZ.b $50
|02840B| STZ.b $5E

|02840D| STZ.w $0351

|028410| JSR DeleteCertainAncillaeStopDashing

; Check for pearl
|028413| LDA.l $7EF357
|028417| BNE .dont_become_bunny

; Check for dw
|028419| LDA.l $7EF3CA
|02841D| BEQ .dont_become_bunny

|02841F| LDA.b #$01
|028421| STA.w $02E0
|028424| STA.b $56

|028426| LDA.b #$17 ; LINKSTATE 17
|028428| STA.b $5D

|02842A| JSL RefreshEquipmentPalettes_bunny

.dont_become_bunny
|02842E| LDA.b #$09
|028430| STA.b $94

|028432| LDA.b #$00
|028434| STA.l $7EC005

|028438| STZ.w $046C
|02843B| STZ.b $EE
|02843D| STZ.w $0476

|028440| INC.b $11
|028442| INC.b $16

|028444| STZ.w $0402
|028447| STZ.w $0403

;===================================================================================================

LoadOWMusicIfNeeded:
|02844A| LDA.w $0136
|02844D| BEQ .exit

|02844F| SEI

|028450| STZ.w NMITIMEN
|028453| STZ.w HDMAEN
|028456| STZ.w $0136

|028459| LDA.b #$FF ; SONG FF - transfer
|02845B| STA.w APUIO0

|02845E| JSL LoadOverworldSongs

|028462| LDA.b #$81
|028464| STA.w NMITIMEN

.exit
|028467| RTS

;===================================================================================================

AdjustLinkBunnyStatus:
|028468| LDA.l $7EF357
|02846C| BEQ .exit

;===================================================================================================

#ForceNonbunnyStatus:
|02846E| LDA.b #$00 ; LINKSTATE 00
|028470| STA.b $5D

|028472| STZ.w $03F5
|028475| STZ.w $03F6
|028478| STZ.w $03F7

|02847B| STZ.b $56
|02847D| STZ.w $02E0

.exit
|028480| RTL

;===================================================================================================

pool Module1B_SpawnSelect

.spawns
|028481| db $00 ; Link's house
|028482| db $01 ; Sanctuary
|028483| db $06 ; Mountain cave

endpool

;---------------------------------------------------------------------------------------------------

Module1B_SpawnSelect:
|028484| JSL RenderText

|028488| LDA.b $11
|02848A| BNE .exit

|02848C| STZ.b $14

|02848E| JSL EnableForceBlank
|028492| JSL EraseTilemaps_normal

|028496| LDA.l $7EF3C8
|02849A| PHA

|02849B| LDX.w $1CE8

|02849E| LDA.l .spawns,X
|0284A2| STA.l $7EF3C8

|0284A6| STZ.b $B0

|0284A8| JSL LoadUnderworldRoomRebuildHUD

|0284AC| PLA
|0284AD| STA.l $7EF3C8

.exit
|0284B1| RTL

;===================================================================================================

pool Epilogue_LoadOverworldScene

.vectors
|0284B2| dw Epilogue_LoadOverworldScene_PrepGFX
|0284B4| dw Epilogue_LoadOverworldScene_Overlay
|0284B6| dw Epilogue_LoadOverworldScene_LoadMap

endpool

;---------------------------------------------------------------------------------------------------

Epilogue_LoadOverworldScene:
|0284B8| LDA.b $B0
|0284BA| ASL A
|0284BB| TAX

|0284BC| JSR (.vectors,X)

|0284BF| RTL

;===================================================================================================

pool Epilogue_LoadOverworldScene_PrepGFX Epilogue_LoadUnderworldScene

.screen
|0284C0| dw $1000 ; Hyrule Castle
|0284C2| dw $0002 ; Sanctuary
|0284C4| dw $1002 ; Kakariko
|0284C6| dw $1012 ; Desert
|0284C8| dw $1004 ; Tower of Hera
|0284CA| dw $1006 ; Link's house
|0284CC| dw $1010 ; Zora's Domain
|0284CE| dw $1014 ; Potion shop
|0284D0| dw $100A ; Lumberjacks
|0284D2| dw $1016 ; Haunted Grove
|0284D4| dw $005D ; Wishing Well
|0284D6| dw $0064 ; Smithery
|0284D8| dw $100E ; Kakariko (bug net)
|0284DA| dw $1008 ; Death Mountain
|0284DC| dw $1018 ; Lost Woods
|0284DE| dw $0180 ; Master Sword

;---------------------------------------------------------------------------------------------------

.sprite_gfx
|0284E0| db $28
|0284E1| db $46
|0284E2| db $27
|0284E3| db $2E
|0284E4| db $2B
|0284E5| db $2B
|0284E6| db $0E
|0284E7| db $2C
|0284E8| db $1A
|0284E9| db $29
|0284EA| db $47
|0284EB| db $28
|0284EC| db $27
|0284ED| db $28
|0284EE| db $2A
|0284EF| db $28
|0284F0| db $2D

.sprite_palette
|0284F1| db $01
|0284F2| db $40
|0284F3| db $01
|0284F4| db $04
|0284F5| db $01
|0284F6| db $01
|0284F7| db $01
|0284F8| db $11
|0284F9| db $01
|0284FA| db $01
|0284FB| db $47
|0284FC| db $40
|0284FD| db $01
|0284FE| db $01
|0284FF| db $01
|028500| db $01
|028501| db $01

endpool

;---------------------------------------------------------------------------------------------------

Epilogue_LoadOverworldScene_PrepGFX:
|028502| JSL EnableForceBlank
|028506| JSL EraseTilemaps_normal

|02850A| LDA.b #$82
|02850C| STA.b $99

|02850E| REP #$20

|028510| LDX.b $11

|028512| LDA.l .screen,X
|028516| STA.b $A0

|028518| SEP #$20

; Zora's Domain
|02851A| CPX.b #$0C
|02851C| BEQ .special_overworld

; Master Sword pedestal
|02851E| CPX.b #$1E
|028520| BEQ .special_overworld

|028522| JSR LoadOverworldFromUnderworld

|028525| BRA .continue

.special_overworld
|028527| JSR LoadSpecialOverworld

;---------------------------------------------------------------------------------------------------

.continue
|02852A| STZ.w $012C
|02852D| STZ.w $012D

|028530| LDY.b #$58

|028532| LDA.b $8A
|028534| AND.b #$BF
|028536| CMP.b #$03 ; OW 03, OW 43
|028538| BEQ .death_mountain_screen

|02853A| CMP.b #$05 ; OW 05, OW 45
|02853C| BEQ .death_mountain_screen

|02853E| CMP.b #$07 ; OW 07, OW 47
|028540| BEQ .death_mountain_screen

|028542| LDY.b #$5A

.death_mountain_screen
|028544| JSL DecompressAnimatedOverworldTiles

;---------------------------------------------------------------------------------------------------

|028548| LDA.b $11
|02854A| LSR A
|02854B| TAX

|02854C| LDA.l .sprite_gfx,X
|028550| STA.w $0AA3

|028553| LDA.l .sprite_palette,X
|028557| PHA

|028558| JSL InitializeTilesets
|02855C| JSR OverworldLoadScreensPaletteSet

|02855F| PLA
|028560| STA.b $00

|028562| LDX.b $8A
|028564| LDA.l OverworldPalettesScreenToSet,X

|028568| JSL OverworldPalettesLoader

|02856C| LDA.b #$01
|02856E| STA.w $0AB2

|028571| JSL PaletteLoad_HUD

;---------------------------------------------------------------------------------------------------

|028575| LDA.b $11
|028577| BNE .font_already_transferred

|028579| JSL DecompressFontGFX
|02857D| JSL TransferFontToVRAM

.font_already_transferred
|028581| JSR Overworld_CopyPalettesToCache_WithPrep
|028584| JSL Overworld_SetFixedColAndScroll

|028588| LDA.b $8A
|02858A| CMP.b #$80 ; SPOW
|02858C| BCC .no_special_bg_color

|02858E| JSL SetOverworldBackgroundColor

.no_special_bg_color
|028592| LDA.b #$09
|028594| STA.b $94

|028596| INC.b $B0

|028598| RTS

;===================================================================================================

Epilogue_LoadOverworldScene_Overlay:
|028599| JSR ReloadSubscreenOverlay

|02859C| STZ.w $012C
|02859F| STZ.w $012D

|0285A2| DEC.b $11

|0285A4| INC.b $B0

|0285A6| RTS

;===================================================================================================

Epilogue_LoadOverworldScene_LoadMap:
|0285A7| JSR LoadAndBuildOverworldScreen
|0285AA| JSL Epilogue_PrepAndLoadSprites

|0285AE| STZ.b $C8
|0285B0| STZ.b $C9
|0285B2| STZ.b $B0

|0285B4| RTS

;===================================================================================================

Epilogue_OperateScrollingAndTilemap:
|0285B5| JSL Epilogue_HandleCameraScrollControl

|0285B9| LDA.w $0416
|0285BC| BEQ .exit

|0285BE| JSR OverworldHandleMapScroll

.exit
|0285C1| RTL

;===================================================================================================

Credits_LoadCoolBackground:
|0285C2| LDA.b #$21
|0285C4| STA.w $0AA1

|0285C7| LDA.b #$3B
|0285C9| STA.w $0AA2

|0285CC| LDA.b #$2D
|0285CE| STA.w $0AA3

|0285D1| JSL InitializeTilesets

|0285D5| LDX.b #$5B ; OW 5B
|0285D7| STX.b $8A

|0285D9| LDA.b #$13
|0285DB| STA.b $00

|0285DD| LDA.l OverworldPalettesScreenToSet,X
|0285E1| JSL OverworldPalettesLoader

|0285E5| LDA.b #$03
|0285E7| STA.w $0AB5

|0285EA| JSL PaletteLoad_OWBG2
|0285EE| JSR Overworld_CopyPalettesToCache
|0285F1| JSR ReloadSubscreenOverlay

|0285F4| STZ.b $E6
|0285F6| STZ.b $E7
|0285F8| STZ.b $E0
|0285FA| STZ.b $E1

|0285FC| DEC.b $11

|0285FE| RTL

;===================================================================================================

Epilogue_LoadUnderworldScene:
|0285FF| JSL EnableForceBlank
|028603| JSL EraseTilemaps_normal

|028607| REP #$20

|028609| LDX.b $11

|02860B| LDA.l .screen,X
|02860F| STA.w $010E

|028612| SEP #$20

|028614| JSR LoadUnderworldEntrance

|028617| STZ.w $045A
|02861A| STZ.w $0458

|02861D| JSR LoadAndDrawRoom

|028620| LDX.w $0AA1

|028623| LDA.l AnimatedTileSheets,X
|028627| TAY

|028628| JSL DecompressAnimatedUnderworldTiles

|02862C| LDA.b $11
|02862E| LSR A
|02862F| TAX

|028630| LDA.l .sprite_gfx,X
|028634| STA.w $0AA3

|028637| LDA.l .sprite_palette,X
|02863B| ASL A
|02863C| ASL A
|02863D| TAX

|02863E| LDA.l UnderworldPaletteSets+2,X
|028642| STA.w $0AAD

|028645| LDA.l UnderworldPaletteSets+3,X
|028649| STA.w $0AAE

|02864C| LDA.b #$0A
|02864E| STA.w $0AA4

|028651| JSL InitializeTilesets

|028655| LDA.b #$0A
|028657| STA.w $0AB1

|02865A| JSR LoadUnderworldPalettes

|02865D| LDA.b #$09
|02865F| STA.b $94

|028661| STZ.b $C8
|028663| STZ.b $C9

|028665| STZ.b $13

|028667| INC.b $11

|028669| JSL Epilogue_PrepAndLoadSprites

|02866D| RTL

;===================================================================================================

pool Module07_Underworld

.submodules
|02866E| dw Module07_00_PlayerControl                    ; 0x00
|028670| dw Module07_01_IntraroomTransition              ; 0x01
|028672| dw Module07_02_InterroomTransition              ; 0x02
|028674| dw Module07_03_OverlayChange                    ; 0x03
|028676| dw Module07_04_UnlockDoor                       ; 0x04
|028678| dw Module07_05_ControlShutters                  ; 0x05
|02867A| dw Module07_06_FatInterRoomStairs               ; 0x06
|02867C| dw Module07_07_FallingTransition                ; 0x07
|02867E| dw Module07_08_NorthIntraRoomStairs             ; 0x08
|028680| dw Module07_09_OpenCrackedDoor                  ; 0x09
|028682| dw Module07_0A_ChangeBrightness                 ; 0x0A
|028684| dw Module07_0B_DrainSwampPool                   ; 0x0B
|028686| dw Module07_0C_FloodSwampWater                  ; 0x0C
|028688| dw Module07_0D_FloodDam                         ; 0x0D
|02868A| dw Module07_0E_SpiralStairs                     ; 0x0E
|02868C| dw Module07_0F_LandingWipe                      ; 0x0F
|02868E| dw Module07_10_SouthIntraRoomStairs             ; 0x10
|028690| dw Module07_11_StraightInterroomStairs          ; 0x11
|028692| dw Module07_11_StraightInterroomStairs          ; 0x12
|028694| dw Module07_11_StraightInterroomStairs          ; 0x13
|028696| dw Module07_14_RecoverFromFall                  ; 0x14
|028698| dw Module07_15_WarpPad                          ; 0x15
|02869A| dw Module07_16_UpdatePegs                       ; 0x16
|02869C| dw Module07_17_PressurePlate                    ; 0x17
|02869E| dw Module07_18_RescuedMaiden                    ; 0x18
|0286A0| dw Module07_19_MirrorFade                       ; 0x19
|0286A2| dw Module07_1A_OpenTriforceDoor                 ; 0x1A

endpool

;---------------------------------------------------------------------------------------------------

Module07_Underworld:
|0286A4| SEP #$30

|0286A6| JSL HandleRoomLayerEffect

|0286AA| LDA.b $11
|0286AC| ASL A
|0286AD| TAX

|0286AE| JSR (.submodules,X)

|0286B1| STZ.w $042C

|0286B4| JSL PushBlock_Handler

|0286B8| LDA.b $11
|0286BA| BNE .continue

;---------------------------------------------------------------------------------------------------

|0286BC| JSL LoadChrHalfSlot
|0286C0| JSR HandleUnderworldCamera

|0286C3| LDA.b $11
|0286C5| BNE .continue

|0286C7| JSL HandleRoomTags

|0286CB| LDA.b $11
|0286CD| BNE .continue

|0286CF| JSL ProcessTorchesAndDoors

|0286D3| LDA.w $0454
|0286D6| BEQ .no_blast_wall

|0286D8| JSL ClearAwayExplodingWall

.no_blast_wall
|0286DC| LDA.b $6C
|0286DE| BNE .continue

|0286E0| JSR Underworld_TryScreenEdgeTransition

;---------------------------------------------------------------------------------------------------

.continue
|0286E3| JSL OrientLampLightCone

|0286E7| REP #$21

|0286E9| LDA.b $E2
|0286EB| PHA

|0286EC| ADC.w $011A
|0286EF| STA.b $E2
|0286F1| STA.w $011E

|0286F4| LDA.b $E8
|0286F6| PHA

|0286F7| CLC
|0286F8| ADC.w $011C
|0286FB| STA.b $E8
|0286FD| STA.w $0122

|028700| LDA.b $E0
|028702| PHA

|028703| CLC
|028704| ADC.w $011A
|028707| STA.b $E0
|028709| STA.w $0120

|02870C| LDA.b $E6
|02870E| PHA

|02870F| CLC
|028710| ADC.w $011C
|028713| STA.b $E6
|028715| STA.w $0124

|028718| LDA.w $0428
|02871B| AND.w #$00FF
|02871E| BEQ .keep_camera_coords

;---------------------------------------------------------------------------------------------------

|028720| PLA
|028721| PLA

|028722| LDA.w $0422
|028725| CLC
|028726| ADC.b $E2
|028728| STA.w $0120
|02872B| STA.b $E0

|02872D| PHA

|02872E| LDA.w $0424
|028731| CLC
|028732| ADC.b $E8
|028734| STA.w $0124
|028737| STA.b $E6

|028739| PHA

;---------------------------------------------------------------------------------------------------

.keep_camera_coords
|02873A| SEP #$20

|02873C| JSL DrawAllPushBlocks
|028740| JSL HandleAllSprites

|028744| REP #$20

|028746| PLA
|028747| STA.b $E6

|028749| PLA
|02874A| STA.b $E0

|02874C| PLA
|02874D| STA.b $E8

|02874F| PLA
|028750| STA.b $E2

|028752| SEP #$20

|028754| JSL DrawLink

|028758| JSL HandleItemRefills
|02875C| JML HandleFloorIndicator

;===================================================================================================

Underworld_TryScreenEdgeTransition:
|028760| REP #$20

|028762| LDA.b $30
|028764| AND.w #$00FF
|028767| BEQ .no_vertical_movement

|028769| LDA.b $67
|02876B| AND.w #$000C
|02876E| STA.b $00

|028770| LDA.b $20
|028772| AND.w #$01FF

|028775| LDX.b #$03
|028777| CMP.w #$0004
|02877A| BCC .check_for_transition

|02877C| LDX.b #$02
|02877E| CMP.w #$01DC
|028781| BCS .check_for_transition

;---------------------------------------------------------------------------------------------------

.no_vertical_movement
|028783| LDA.b $31
|028785| AND.w #$00FF
|028788| BEQ .exit

|02878A| LDA.b $67
|02878C| AND.w #$0003
|02878F| STA.b $00

|028791| LDA.b $22
|028793| AND.w #$01FF

|028796| LDX.b #$01

|028798| CMP.w #$0008
|02879B| BCC .check_for_transition

|02879D| LDX.b #$00
|02879F| CMP.w #$01E9
|0287A2| BCC .exit

;---------------------------------------------------------------------------------------------------

.check_for_transition
|0287A4| SEP #$20

|0287A6| JSL CheckForEdgeScreenTransition
|0287AA| BCS .exit

|0287AC| LDA.b $10
|0287AE| CMP.b #$07
|0287B0| BNE .exit

|0287B2| JSL Underworld_HandleEdgeTransitionMovement

|0287B6| LDA.b $10
|0287B8| CMP.b #$07
|0287BA| BNE .exit

|0287BC| LDA.b #$02
|0287BE| STA.b $11

.exit
|0287C0| SEP #$20

|0287C2| RTS

;===================================================================================================

pool Underworld_HandleEdgeTransitionMovement

.masks
|0287C3| db $03
|0287C4| db $03
|0287C5| db $0C
|0287C6| db $0C

endpool

;---------------------------------------------------------------------------------------------------

Underworld_HandleEdgeTransitionMovement:
|0287C7| LDA.b $67
|0287C9| AND.l .masks,X
|0287CD| STA.b $67

|0287CF| TXA
|0287D0| JSL JumpTableLong
|0287D4| dl HandleEdgeTransitionMovementEast
|0287D7| dl HandleEdgeTransitionMovementWest
|0287DA| dl HandleEdgeTransitionMovementSouth
|0287DD| dl HandleEdgeTransitionMovementNorth

;===================================================================================================

Module07_00_PlayerControl:
|0287E0| LDA.w $0112 ; various freeze flags
|0287E3| ORA.w $02E4
|0287E6| ORA.w $0FFC
|0287E9| BEQ .in_control

|0287EB| JMP.w .no_SELECTing

;---------------------------------------------------------------------------------------------------

.in_control
|0287EE| LDA.b $F4 ; check for START press
|0287F0| AND.b #$10
|0287F2| BEQ .no_START_press

|0287F4| STZ.w $0200

|0287F7| LDA.b #$01

|0287F9| BRA .open_interface

;---------------------------------------------------------------------------------------------------

.no_START_press
|0287FB| LDA.b $F6 ; check for X press
|0287FD| AND.b #$40
|0287FF| BEQ .no_mapping

|028801| LDA.w $040C ; no mapping in caves
|028804| CMP.b #$FF ; DUNGEON FF
|028806| BEQ .no_mapping

; no mapping in Ganon
|028808| LDA.b $A0 ; ROOM 0000
|02880A| BEQ .no_mapping

|02880C| STZ.w $0200

|02880F| LDA.b #$03

;---------------------------------------------------------------------------------------------------

.open_interface
|028811| STA.b $11

|028813| LDA.b $10
|028815| STA.w $010C

|028818| LDA.b #$0E
|02881A| STA.b $10

|02881C| RTS

;---------------------------------------------------------------------------------------------------

.no_mapping
|02881D| LDA.b $F0 ; check for SELECT
|02881F| AND.b #$20
|028821| BEQ .no_SELECTing

|028823| LDA.l $7EF3C5 ; can't SQ in game state 0
|028827| BEQ .no_SELECTing

; save previous selected option - but why?
|028829| LDA.w $1CE8
|02882C| STA.w $1CF4

|02882F| REP #$20

|028831| LDA.w #$0184 ; MESSAGE 0184
|028834| STA.w $1CF0

|028837| SEP #$20

|028839| LDA.b $10
|02883B| PHA

|02883C| JSL PrepAndDisplayMessage

|028840| PLA
|028841| STA.b $10

|028843| STZ.b $B0

|028845| LDA.b #$0B

|028847| BRA .open_interface

;---------------------------------------------------------------------------------------------------

.no_SELECTing
|028849| JSL Link

|02884D| RTS

;===================================================================================================

Underworld_SubscreenEnable:
|02884E| db $00, $01, $01, $FF, $01, $01, $01, $01

;===================================================================================================

PendantBossRooms:
|028856| dw $00C8 ; ROOM 00C8 - Armos
|028858| dw $0033 ; ROOM 0033 - Lanmolas
|02885A| dw $0007 ; ROOM 0007 - Moldorm
|02885C| dw $0020 ; ROOM 0020 - Agahnim 1

;===================================================================================================

CrystalBossRooms:
|02885E| dw $0006 ; ROOM 0006 - Arrghus
|028860| dw $005A ; ROOM 005A - Helmasaur
|028862| dw $0029 ; ROOM 0029 - Mothula
|028864| dw $0090 ; ROOM 0090 - Vitreous
|028866| dw $00DE ; ROOM 00DE - Kholdstare
|028868| dw $00A4 ; ROOM 00A4 - Trinexx
|02886A| dw $00AC ; ROOM 00AC - Blind
|02886C| dw $000D ; ROOM 000D - Agahnim 2

;===================================================================================================

pool Module07_01_IntraroomTransition

.subsubmodules
|02886E| dw IntraroomTransition_PrepTransition             ; 0x00
|028870| dw IntraroomTransition_ApplyFilter                ; 0x01
|028872| dw IntraroomTransition_ResetShutters              ; 0x02
|028874| dw ScrollRoomDuringTransition                     ; 0x03
|028876| dw IntraroomTransition_FindTransitionLanding      ; 0x04
|028878| dw TransitionLinkOutOfDoor                        ; 0x05
|02887A| dw IntraroomTransition_ApplyFilter                ; 0x06
|02887C| dw IntraroomTransition_TriggerShutters            ; 0x07

endpool

;---------------------------------------------------------------------------------------------------

Module07_01_IntraroomTransition:
|02887E| REP #$20

|028880| LDA.b $22
|028882| STA.w $0FC2

|028885| LDA.b $20
|028887| STA.w $0FC4

|02888A| SEP #$20

|02888C| JSL HandleLinkAnimation_FullLongEntry

|028890| LDA.b $B0
|028892| ASL A
|028893| TAX

|028894| JMP.w (.subsubmodules,X)

;===================================================================================================

IntraroomTransition_ResetShutters:
|028897| STZ.w $0468

|02889A| LDA.b #$07
|02889C| STA.w $0690

|02889F| LDA.b $11
|0288A1| PHA

|0288A2| JSL OperateShutterDoors

|0288A6| PLA
|0288A7| STA.b $11

|0288A9| LDA.b #$1F
|0288AB| STA.l $7EC007

|0288AF| LDA.b #$00
|0288B1| STA.l $7EC00B

|0288B5| INC.b $B0

|0288B7| RTS

;===================================================================================================

IntraroomTransition_PrepTransition:
|0288B8| REP #$20

|0288BA| LDA.w #$0000
|0288BD| STA.l $7EC009
|0288C1| STA.l $7EC007

|0288C5| LDA.w #$001F
|0288C8| STA.l $7EC00B

|0288CC| STZ.w $0AA6

|0288CF| SEP #$20

|0288D1| STZ.w $0646
|0288D4| STZ.w $0642

|0288D7| INC.b $B0

|0288D9| RTS

;===================================================================================================

IntraroomTransition_ApplyFilter:
|0288DA| LDA.l $7EC005
|0288DE| BEQ .advance

|0288E0| JSL ApplyPaletteFilter

|0288E4| LDA.l $7EC007
|0288E8| BEQ .exit

|0288EA| JSL ApplyPaletteFilter

.exit
|0288EE| RTS

.advance
|0288EF| INC.b $B0

|0288F1| RTS

;===================================================================================================

IntraroomTransition_TriggerShutters:
|0288F2| JSR ResetThenCacheRoomEntryProperties

|0288F5| LDA.w $0468
|0288F8| BNE .exit

|0288FA| INC.w $0468

|0288FD| STZ.w $068E
|028900| STZ.w $0690

|028903| LDA.b #$05
|028905| STA.b $11

.exit
|028907| RTS

;===================================================================================================
; TODO names
;===================================================================================================
pool Module07_02_InterroomTransition

.subsubmodules
|028908| dw Module07_02_00_InitializeTransition         ; 0x00
|02890A| dw Module07_02_01_LoadNextRoom                 ; 0x01
|02890C| dw Module07_02_FadedFilter                     ; 0x02
|02890E| dw Module07_02_03                              ; 0x03
|028910| dw Underworld_BuildBG2AndAdvance               ; 0x04
|028912| dw Underworld_BuildBG1AndAdvance               ; 0x05
|028914| dw Underworld_BuildBG2AndAdvance               ; 0x06
|028916| dw Module07_02_07                              ; 0x07
|028918| dw ScrollRoomDuringTransition                  ; 0x08
|02891A| dw Module07_02_09                              ; 0x09
|02891C| dw Module07_02_0A                              ; 0x0A
|02891E| dw Module07_02_09                              ; 0x0B
|028920| dw Module07_02_0C                              ; 0x0C
|028922| dw Module07_02_0D                              ; 0x0D
|028924| dw Module07_02_FadedFilter                     ; 0x0E
|028926| dw Module07_02_0F                              ; 0x0F

endpool

;---------------------------------------------------------------------------------------------------

Module07_02_InterroomTransition:
|028928| REP #$20

|02892A| LDA.b $22
|02892C| STA.w $0FC2

|02892F| LDA.b $20
|028931| STA.w $0FC4

|028934| SEP #$20

|028936| LDA.b $B0
|028938| BEQ .run_subsubsub

|02893A| CMP.b #$07
|02893C| BCC .skip_upload

|02893E| JSL IncrementalVRAMUpload

.skip_upload
|028942| JSL LoadNextObjectAttributeSet

.run_subsubsub
|028946| JSL HandleLinkAnimation_FullLongEntry

|02894A| LDA.b $B0
|02894C| ASL A
|02894D| TAX

|02894E| JMP.w (.subsubmodules,X)

;===================================================================================================

Module07_02_00_InitializeTransition:
|028951| LDA.w $0458
|028954| PHA

|028955| JSR ResetTransitionPropsAndAdvanceSubmodule

|028958| PLA
|028959| STA.w $0458

|02895C| RTS

;===================================================================================================

Module07_02_01_LoadNextRoom:
|02895D| JSL LoadAndBuildRoom
|028961| JSL ResetStarTileGraphics
|028965| JSL LoadTransAuxGFX_sprite

|028969| INC.b $B0

|02896B| STZ.w $0200

|02896E| LDA.b $A2 ; [WTF] this is 100% useless
|028970| PHA

|028971| LDA.b $A0
|028973| STA.w $048E

|028976| PLA
|028977| STA.b $A2

|028979| JSL Underworld_ResetSprites

|02897D| LDA.w $0458
|028980| BNE .no_scroll_sync

|028982| JSR UnderworldSyncBG1and2Scroll

.no_scroll_sync
|028985| STZ.w $0458

|028988| RTS

;===================================================================================================

Module07_02_03:
|028989| LDA.l $7EC005
|02898D| ORA.l $7EC006
|028991| BEQ .keep_subscreen_enable

|028993| STZ.b $1D

.keep_subscreen_enable
|028995| JSL AdjustForRoomLayout
|028999| JSL LoadNewSpriteGFXSet

|02899D| JSR UnderworldSyncBG1and2Scroll
|0289A0| JSL BuildBG1QuadrantForUpload

|0289A4| INC.b $B0

|0289A6| RTS

;===================================================================================================

Module07_02_0A:
|0289A7| LDA.l $7EC005
|0289AB| ORA.l $7EC006
|0289AF| BEQ Underworld_BuildBG1AndAdvance

;===================================================================================================

Underworld_FilterBuildBG1AndAdvance:
|0289B1| JSL ApplyPaletteFilter

;===================================================================================================

Underworld_BuildBG1AndAdvance:
|0289B5| JSL BuildBG1QuadrantForUpload

|0289B9| INC.b $B0

|0289BB| RTS

;===================================================================================================

Module07_02_09:
|0289BC| LDA.l $7EC005
|0289C0| ORA.l $7EC006
|0289C4| BEQ Underworld_BuildBG2AndAdvance

;===================================================================================================

Underworld_FilterBuildBG2AndAdvance:
|0289C6| JSL ApplyPaletteFilter

;===================================================================================================

Underworld_BuildBG2AndAdvance:
|0289CA| JSL BuildBG2QuadrantForUpload

|0289CE| INC.b $B0

|0289D0| RTS

;===================================================================================================

Module07_02_0C:
|0289D1| LDA.b $11
|0289D3| CMP.b #$02
|0289D5| BNE Underworld_AdvanceAndReset

|0289D7| LDA.w $0200
|0289DA| CMP.b #$05
|0289DC| BNE EXIT_028A2F

|0289DE| JSR IntraroomTransitionCalculateLanding

|0289E1| LDA.l $7EC005
|0289E5| ORA.l $7EC006
|0289E9| BEQ Underworld_AdvanceAndReset

|0289EB| JSL ApplyPaletteFilter

;===================================================================================================

Underworld_AdvanceAndReset:
|0289EF| INC.b $B0

;===================================================================================================

ResetLampconeAndLink:
|0289F1| LDY.b #$16
|0289F3| LDX.w $0414

|0289F6| LDA.l Underworld_SubscreenEnable,X
|0289FA| BPL .disable

|0289FC| LDY.b #$17
|0289FE| LDA.b #$00

.disable
|028A00| CPX.b #$02
|028A02| BNE .wait_dont_disable

|028A04| LDA.b #$03

.wait_dont_disable
|028A06| STY.b $1C
|028A08| STA.b $1D

|028A0A| JSL RestoreTorchBackground

;===================================================================================================

DeleteCertainAncillaeStopDashing:
|028A0E| JSL TerminateSelectInteractives

|028A12| LDA.w $0372
|028A15| BEQ EXIT_028A2F

|028A17| STZ.b $4D
|028A19| STZ.b $46

|028A1B| LDA.b #$FF
|028A1D| STA.b $29
|028A1F| STA.b $C7

|028A21| STZ.b $3D
|028A23| STZ.b $5E

|028A25| STZ.w $032B
|028A28| STZ.w $0372

|028A2B| LDA.b #$00 ; LINKSTATE 00
|028A2D| STA.b $5D

;---------------------------------------------------------------------------------------------------

#EXIT_028A2F:
|028A2F| RTS

;===================================================================================================

Module07_02_07:
|028A30| REP #$10

|028A32| LDX.b $E2
|028A34| STX.b $E0

|028A36| LDX.b $E8
|028A38| STX.b $E6

|028A3A| LDX.b $A0

; Swamp big chest?
|028A3C| CPX.w #$0036 ; ROOM 0036
|028A3F| BEQ .dont_change_mainandsubscreen

; Swamp 2nd room?
|028A41| CPX.w #$0038 ; ROOM 0038
|028A44| BEQ .dont_change_mainandsubscreen

|028A46| LDX.w $0414
|028A49| LDY.w #$0016

|028A4C| LDA.l Underworld_SubscreenEnable,X
|028A50| BEQ .am_zero

|028A52| LDY.w #$0116

.am_zero
|028A55| CPY.b $1C
|028A57| BEQ .dont_change_mainandsubscreen

|028A59| LDA.b $1C
|028A5B| CMP.b #$17
|028A5D| BEQ .set_mainandsubscreen

|028A5F| ORA.b $1D
|028A61| CMP.b #$17
|028A63| BEQ .dont_change_mainandsubscreen

.set_mainandsubscreen
|028A65| STY.b $1C

.dont_change_mainandsubscreen
|028A67| SEP #$10

;===================================================================================================

UnderworldTransition_RunFiltering:
|028A69| LDA.l $7EC005
|028A6D| ORA.l $7EC006
|028A71| BEQ .no_filter

|028A73| LDX.b #$03

|028A75| LDA.l $7EC005 ; [DUMB] this is impossible
|028A79| BEQ .use_fixed_color_3

|028A7B| LDX.w $045A

.use_fixed_color_3
|028A7E| LDA.l RoomEffectFixedColors,X
|028A82| STA.l $7EC017

|028A86| JSL ApplyGrayscaleFixed_Parameterized

|028A8A| LDA.b #$00
|028A8C| STA.l $7EC00B

.no_filter
|028A90| JSR HandleRoomTranslucencyAndPalettes

|028A93| RTS

;===================================================================================================

Module07_02_FadedFilter:
|028A94| LDA.l $7EC005
|028A98| ORA.l $7EC006
|028A9C| BEQ .next_subsub

|028A9E| JSL ApplyPaletteFilter

|028AA2| LDA.l $7EC007
|028AA6| BEQ .exit

|028AA8| JSL ApplyPaletteFilter

.exit
|028AAC| RTS

.next_subsub
|028AAD| INC.b $B0

|028AAF| RTS

;===================================================================================================

Module07_02_0F:
|028AB0| JSR ResetThenCacheRoomEntryProperties

|028AB3| LDA.w $0468
|028AB6| BNE SetBossOrSancMusicUponEntry

|028AB8| LDA.b $A0
|028ABA| CMP.b #$AC ; ROOM 00AC
|028ABC| BNE .not_workable_blinds_room

|028ABE| LDA.w $0403
|028AC1| AND.b #$20
|028AC3| BNE .not_workable_blinds_room

|028AC5| LDA.w $0403
|028AC8| AND.b #$10
|028ACA| BEQ SetBossOrSancMusicUponEntry

.not_workable_blinds_room
|028ACC| INC.w $0468

|028ACF| STZ.w $068E
|028AD2| STZ.w $0690

|028AD5| LDA.b #$05
|028AD7| STA.b $11

;===================================================================================================

SetBossOrSancMusicUponEntry:
|028AD9| REP #$20

|028ADB| LDX.b #$14 ; SONG 14

|028ADD| LDA.b $A0

; Sanc?
|028ADF| CMP.w #$0012 ; ROOM 0012
|028AE2| BEQ .set_song

|028AE4| LDX.b #$10 ; SONG 10

; Pre sanc?
|028AE6| CMP.w #$0002 ; ROOM 0002
|028AE9| BEQ .set_song

;---------------------------------------------------------------------------------------------------

|028AEB| LDX.b #$18

.check_next_room
|028AED| DEX
|028AEE| DEX
|028AEF| BMI .exit

|028AF1| CMP.l PendantBossRooms,X
|028AF5| BNE .check_next_room

;---------------------------------------------------------------------------------------------------

|028AF7| SEP #$20

|028AF9| JSL CheckIfScreenIsClear
|028AFD| BCS .exit

|028AFF| LDX.b #$15 ; SONG 15

.set_song
|028B01| STX.w $012C

.exit
|028B04| SEP #$20

|028B06| RTS

;===================================================================================================

Module07_03_OverlayChange:
|028B07| JSL ApplyRoomHolesOverlay

|028B0B| RTS

;===================================================================================================

Module07_04_UnlockDoor:
|028B0C| JSL UnlockKeyDoor

|028B10| RTS

;===================================================================================================

Module07_05_ControlShutters:
|028B11| JSL OperateShutterDoors

|028B15| RTS

;===================================================================================================

Module07_06_FatInterRoomStairs:
|028B16| LDA.b $B0
|028B18| CMP.b #$03
|028B1A| BCC .dont_reload_tile_types

|028B1C| JSL LoadNextObjectAttributeSet

.dont_reload_tile_types
|028B20| LDA.b $B0
|028B22| CMP.b #$0D
|028B24| BCC .skip_gfx_updates

|028B26| JSL IncrementalVRAMUpload

|028B2A| LDA.w $0464
|028B2D| BEQ .run_subsubsub

|028B2F| DEC.w $0464

|028B32| CMP.b #$10
|028B34| BNE .dont_add_stair_drag

|028B36| LDA.b #$02
|028B38| STA.b $57

.dont_add_stair_drag
|028B3A| LDX.b #$08

|028B3C| LDA.w $0462
|028B3F| AND.b #$04
|028B41| BEQ .going_up

|028B43| LDX.b #$04

.going_up
|028B45| STX.b $67

|028B47| JSL HandleLinkVelocity
|028B4B| JSR HandleUnderworldCamera

;---------------------------------------------------------------------------------------------------

.skip_gfx_updates
|028B4E| JSL HandleLinkAnimation_FullLongEntry

.run_subsubsub
|028B52| LDA.b $B0
|028B54| JSL JumpTableLocal
|028B58| dw ResetTransitionPropsAndAdvance_ResetInterface       ; 0x00
|028B5A| dw UnderworldTransition_FatStairs_RunFade              ; 0x01
|028B5C| dw InitializeRoomFromSpecial                           ; 0x02
|028B5E| dw TriggerBGC34UpdateAndAdvance                        ; 0x03
|028B60| dw TriggerBGC56UpdateAndAdvance                        ; 0x04
|028B62| dw UnderworldTransition_LoadSpriteGFX                  ; 0x05
|028B64| dw UnderworldTransition_AdjustForFatStairScroll        ; 0x06
|028B66| dw Underworld_BuildBG2AndAdvance                       ; 0x07
|028B68| dw Underworld_BuildBG1AndAdvance                       ; 0x08
|028B6A| dw Underworld_BuildBG2AndAdvance                       ; 0x09
|028B6C| dw Underworld_FilterBuildBG1AndAdvance                 ; 0x0A
|028B6E| dw Underworld_FilterBuildBG2AndAdvance                 ; 0x0B
|028B70| dw Underworld_FilterBuildBG1AndAdvance                 ; 0x0C
|028B72| dw Underworld_FilterBuildBG2AndAdvance                 ; 0x0D
|028B74| dw DoubleApplyAndIncrementGrayscale                    ; 0x0E
|028B76| dw Underworld_AdvanceAndReset                          ; 0x0F
|028B78| dw UnderworldTransition_FatStairsEntryCache            ; 0x10

;===================================================================================================

Module07_0E_01_HandleMusicAndResetProps:
|028B7A| REP #$20

|028B7C| LDA.b $A0
|028B7E| CMP.w #$0007 ; ROOM 0007
|028B81| BEQ .not_moldorm_room

|028B83| CMP.w #$0017 ; ROOM 0017
|028B86| BNE .dont_fade_music

|028B88| LDX.w $0130
|028B8B| CPX.b #$11 ; SONG 11
|028B8D| BEQ .dont_fade_music

.not_moldorm_room
|028B8F| LDA.l $7EF374
|028B93| LSR A
|028B94| BCS .dont_fade_music

|028B96| LDX.b #$F1 ; SONG F1 - fade
|028B98| STX.w $012C

;---------------------------------------------------------------------------------------------------

.dont_fade_music
|028B9B| SEP #$20

|028B9D| LDX.b #$58

|028B9F| LDA.w $0462
|028BA2| AND.b #$04
|028BA4| BEQ .going_up

|028BA6| LDX.b #$6A

.going_up
|028BA8| STX.w $0464

;===================================================================================================
; I really can't think of a better name for these.
;===================================================================================================
ResetTransitionPropsAndAdvance_ResetInterface:
|028BAB| STZ.w $0200

;===================================================================================================

ResetTransitionPropsAndAdvanceSubmodule:
|028BAE| REP #$30

|028BB0| LDA.w #$0000
|028BB3| STA.l $7EC011
|028BB7| STA.l $7EC009
|028BBB| STA.l $7EC007

|028BBF| LDA.w #$001F
|028BC2| STA.l $7EC00B

|028BC6| STZ.w $0AA6
|028BC9| STZ.w $045A

|028BCC| LDA.w $0458
|028BCF| BEQ .dark_room

; CGWSEL  : $02 - subscreen color, no clipping
; CGADSUB : $B3 - subtract on CG0, OAM, BG1, and BG2
|028BD1| LDA.w #$B302
|028BD4| STA.b $99

.dark_room
|028BD6| SEP #$30

|028BD8| STZ.w $0458

|028BDB| JSR DeleteCertainAncillaeStopDashing
|028BDE| JSR Overworld_CopyPalettesToCache

|028BE1| INC.b $B0

|028BE3| RTS

;===================================================================================================

InitializeRoomFromSpecial:
|028BE4| JSR AdjustUnderworldCameraArbitrarily

|028BE7| JSL LoadAndBuildRoom
|028BEB| JSL ResetStarTileGraphics

|028BEF| JSL LoadTransAuxGFX
|028BF3| JSL LoadUnderworldTileTypes

|028BF7| LDA.b $A0
|028BF9| STA.w $048E

|028BFC| JSL InitializeFollower

|028C00| INC.b $B0

|028C02| RTS

;===================================================================================================

UnderworldTransition_FatStairs_RunFade:
|028C03| JSL ApplyPaletteFilter

|028C07| LDA.l $7EC007
|028C0B| BEQ .exit

|028C0D| JSL ApplyPaletteFilter

.exit
|028C11| RTS

;===================================================================================================

UnderworldTransition_LoadSpriteGFX:
|028C12| JSL LoadNewSpriteGFXSet
|028C16| JSL Underworld_ResetSprites

|028C1A| JMP.w UnderworldTransition_RunFiltering

;===================================================================================================

UnderworldTransition_AdjustForFatStairScroll:
|028C1D| JSR UnderworldSyncBG1and2Scroll
|028C20| JSL AdjustForRoomLayout

|028C24| LDY.b #$16
|028C26| LDX.w $0414

|028C29| LDA.l Underworld_SubscreenEnable,X
|028C2D| BPL .valid_subscreens

|028C2F| LDY.b #$17
|028C31| LDA.b #$00

.valid_subscreens
|028C33| STY.b $1C
|028C35| STA.b $1D

|028C37| INC.b $A4

|028C39| LDA.b #$01
|028C3B| STA.b $57

|028C3D| LDY.b #$17 ; SFX2.17
|028C3F| LDX.b #$30

|028C41| LDA.w $0462
|028C44| AND.b #$04
|028C46| BEQ .going_upstairs

|028C48| LDY.b #$19 ; SFX2.19

|028C4A| DEC.b $A4
|028C4C| DEC.b $A4

|028C4E| LDX.b #$20

.going_upstairs
|028C50| STX.w $0464
|028C53| STY.w $012E

;---------------------------------------------------------------------------------------------------

; Redundant
|028C56| LDA.b #$24 ; SFX3.24
|028C58| STA.w $012F

|028C5B| JSR BlipAndCacheQuadrants

|028C5E| JMP.w Underworld_BuildBG1AndAdvance

;===================================================================================================

UnderworldTransition_FatStairsEntryCache:
|028C61| LDA.l $7EC009
|028C65| ORA.l $7EC007
|028C69| BEQ .continue

.exit
|028C6B| RTS

.continue
|028C6C| LDA.w $0200
|028C6F| CMP.b #$05
|028C71| BNE .exit

;===================================================================================================

ResetThenCacheRoomEntryProperties:
|028C73| STZ.w $0200
|028C76| STZ.b $B0

|028C78| STZ.w $0418
|028C7B| STZ.b $11

|028C7D| STZ.w $0642
|028C80| STZ.w $0641

;===================================================================================================

CacheRoomEntryProperties:
|028C83| REP #$20

|028C85| LDA.b $E2
|028C87| STA.l $7EC180

|028C8B| LDA.b $E8
|028C8D| STA.l $7EC182

|028C91| LDA.b $20
|028C93| STA.l $7EC184

|028C97| LDA.b $22
|028C99| STA.l $7EC186

|028C9D| LDA.w $0600
|028CA0| STA.l $7EC188

|028CA4| LDA.w $0604
|028CA7| STA.l $7EC18A

|028CAB| LDA.w $0608
|028CAE| STA.l $7EC18C

|028CB2| LDA.w $060C
|028CB5| STA.l $7EC18E

|028CB9| LDA.w $0610
|028CBC| STA.l $7EC190

|028CC0| LDA.w $0612
|028CC3| STA.l $7EC192

|028CC7| LDA.w $0614
|028CCA| STA.l $7EC194

|028CCE| LDA.w $0616
|028CD1| STA.l $7EC196

|028CD5| LDA.w $0618
|028CD8| STA.l $7EC198

|028CDC| LDA.w $061C
|028CDF| STA.l $7EC19A

|028CE3| LDA.b $A6
|028CE5| STA.l $7EC19C

|028CE9| LDA.b $A9
|028CEB| STA.l $7EC19E

|028CEF| SEP #$20

|028CF1| LDA.b $2F
|028CF3| STA.l $7EC1A6

|028CF7| LDA.b $EE
|028CF9| STA.l $7EC1A7

|028CFD| LDA.w $0476
|028D00| STA.l $7EC1A8

|028D04| LDA.b $6C
|028D06| STA.l $7EC1A9

|028D0A| LDA.b $A4
|028D0C| STA.l $7EC1AA

|028D10| RTS

;===================================================================================================

TriggerBGC34UpdateAndAdvance:
|028D11| JSL PrepTransAuxGfx

|028D15| LDA.b #$09
|028D17| STA.b $17
|028D19| STA.w $0710

|028D1C| INC.b $B0

|028D1E| RTS

;===================================================================================================

TriggerBGC56UpdateAndAdvance:
|028D1F| LDA.b #$0A
|028D21| STA.b $17
|028D23| STA.w $0710

|028D26| INC.b $B0

|028D28| RTS

;===================================================================================================

Module07_07_FallingTransition:
|028D29| LDA.b $B0
|028D2B| CMP.b #$06
|028D2D| BCC .run_subsubsub

|028D2F| JSL IncrementalVRAMUpload
|028D33| JSL LoadNextObjectAttributeSet
|028D37| JSL ApplyGrayscaleFixed_Incremental

.run_subsubsub
|028D3B| LDA.b $B0
|028D3D| JSL JumpTableLocal
|028D41| dw Module07_07_00_HandleMusicAndResetRoom            ; 0x00
|028D43| dw ApplyPaletteFilter_bounce                         ; 0x01
|028D45| dw InitializeRoomFromSpecial                         ; 0x02
|028D47| dw TriggerBGC34UpdateAndAdvance                      ; 0x03
|028D49| dw TriggerBGC56UpdateAndAdvance                      ; 0x04
|028D4B| dw UnderworldTransition_LoadSpriteGFX                ; 0x05
|028D4D| dw Module07_07_06_SyncBG1and2                        ; 0x06
|028D4F| dw Underworld_BuildBG2AndAdvance                     ; 0x07
|028D51| dw Underworld_BuildBG1AndAdvance                     ; 0x08
|028D53| dw Underworld_BuildBG2AndAdvance                     ; 0x09
|028D55| dw Underworld_BuildBG1AndAdvance                     ; 0x0A
|028D57| dw Underworld_BuildBG2AndAdvance                     ; 0x0B
|028D59| dw Underworld_BuildBG1AndAdvance                     ; 0x0C
|028D5B| dw Underworld_BuildBG2AndAdvance                     ; 0x0D
|028D5D| dw Underworld_AdvanceAndReset                        ; 0x0E
|028D5F| dw Module07_07_0F_FallingFadeIn                      ; 0x0F
|028D61| dw Module07_07_10_LandLinkFromFalling                ; 0x10
|028D63| dw Module07_07_11_CacheRoomAndSetMusic               ; 0x11

;===================================================================================================

Module07_07_00_HandleMusicAndResetRoom:
|028D65| REP #$20

|028D67| LDA.b $A0

; Ganon fall?
|028D69| CMP.w #$0010 ; ROOM 0010
|028D6C| BEQ .fade_music

; Moldorm?
|028D6E| CMP.w #$0007 ; ROOM 0007
|028D71| BEQ .fade_music

; Hera 5F?
|028D73| CMP.w #$0017 ; ROOM 0017
|028D76| BNE .no_fade

.fade_music
|028D78| LDX.b #$F1 ; SONG F1 - fade
|028D7A| STX.w $012C

.no_fade
|028D7D| SEP #$20

|028D7F| JMP.w ResetTransitionPropsAndAdvance_ResetInterface

;===================================================================================================

Module07_07_06_SyncBG1and2:
|028D82| JSR UnderworldSyncBG1and2Scroll
|028D85| JSL AdjustForRoomLayout

|028D89| LDY.b #$16
|028D8B| LDX.w $0414

|028D8E| LDA.l Underworld_SubscreenEnable,X
|028D92| BPL .valid_subscreen

|028D94| LDY.b #$17
|028D96| LDA.b #$00

.valid_subscreen
|028D98| STY.b $1C
|028D9A| STA.b $1D

|028D9C| JSL BuildBG1QuadrantForUpload

|028DA0| INC.b $B0

|028DA2| RTS

;===================================================================================================

Module07_07_0F_FallingFadeIn:
|028DA3| JSL ApplyPaletteFilter

|028DA7| LDA.l $7EC009
|028DAB| BNE .exit

|028DAD| LDA.b $21

|028DAF| LDY.b $20
|028DB1| CPY.b $51
|028DB3| BCC .at_target

|028DB5| INC A

.at_target
|028DB6| STA.b $52

|028DB8| JSR SetBossMusic

|028DBB| LDA.b $A0

; EP fairies?
|028DBD| CMP.b #$89 ; ROOM 0089
|028DBF| BEQ .exit

; Ice palace fairies?
|028DC1| CMP.b #$4F ; ROOM 004F
|028DC3| BEQ .exit

; Hera fairies?
|028DC5| CMP.b #$A7 ; ROOM 00A7
|028DC7| BEQ .is_hera_fairies

|028DC9| DEC.b $A4

;===================================================================================================

#BlipAndCacheQuadrants:
|028DCB| LDA.b #$01
|028DCD| STA.w $04A0

|028DD0| LDA.b #$24 ; SFX3.24
|028DD2| STA.w $012F

|028DD5| JSL SetAndSaveVisitedQuadrantFlags

.exit
|028DD9| RTS

;---------------------------------------------------------------------------------------------------

.is_hera_fairies
|028DDA| STZ.w $04A0

|028DDD| LDA.b #$01
|028DDF| STA.b $A4

|028DE1| RTS

;===================================================================================================

Module07_07_10_LandLinkFromFalling:
|028DE2| JSL HandleUnderworldLandingFromPit

|028DE6| LDA.b $11
|028DE8| BNE .exit

|028DEA| LDA.b #$07
|028DEC| STA.b $11

|028DEE| LDA.b #$11
|028DF0| STA.b $B0

|028DF2| LDA.b #$01
|028DF4| STA.w $0AAA

|028DF7| JSL LoadChrHalfSlot

.exit
|028DFB| RTS

;===================================================================================================

Module07_07_11_CacheRoomAndSetMusic:
|028DFC| LDA.w $0200
|028DFF| CMP.b #$05
|028E01| BNE .exit

|028E03| JSR ResetThenCacheRoomEntryProperties
|028E06| JSR SetBossOrSancMusicUponEntry
|028E09| JSL LoadChrHalfSlot

.exit
|028E0D| RTS

;===================================================================================================

Module07_08_NorthIntraRoomStairs:
|028E0E| LDA.w $0464
|028E11| BEQ .run_subsubsub

|028E13| DEC.w $0464

|028E16| CMP.b #$14
|028E18| BNE .skip_stair_drag

|028E1A| LDA.b #$02
|028E1C| STA.b $57

.skip_stair_drag
|028E1E| JSL HandleLinkVelocity

|028E22| JSL ApplyLinksMovementToCamera
|028E26| JSR HandleUnderworldCamera

|028E29| JSL HandleLinkAnimation_FullLongEntry

.run_subsubsub
|028E2D| LDA.b $B0
|028E2F| JSL JumpTableLocal
|028E33| dw Module07_08_00_InitStairs
|028E35| dw Module07_08_01_ClimbStairs

;===================================================================================================

Module07_08_00_InitStairs:
|028E37| STZ.w $0351

|028E3A| LDY.b #$19 ; SFX2.19
|028E3C| LDX.b #$3C

|028E3E| LDA.b $67
|028E40| AND.b #$08
|028E42| BEQ .finish_up

|028E44| LDY.b #$17 ; SFX2.17
|028E46| LDX.b #$38

|028E48| STZ.w $0476

|028E4B| LDA.w $044A
|028E4E| CMP.b #$02 ; weak EG
|028E50| BEQ .finish_up

|028E52| STZ.b $EE

.finish_up
|028E54| STX.w $0464
|028E57| STY.w $012E

|028E5A| LDA.b #$01
|028E5C| STA.b $57

|028E5E| INC.b $B0

;---------------------------------------------------------------------------------------------------

#EXIT_028E60:
|028E60| RTS

;===================================================================================================

Module07_08_01_ClimbStairs:
|028E61| LDA.w $0464
|028E64| BNE EXIT_028E60

|028E66| LDA.b $67
|028E68| AND.b #$04
|028E6A| BEQ .finish_up

|028E6C| LDA.b #$01
|028E6E| STA.w $0476

|028E71| LDA.w $044A
|028E74| CMP.b #$02 ; weak EG
|028E76| BEQ .finish_up

|028E78| LDA.b #$01
|028E7A| STA.b $EE

|028E7C| BRA .finish_up ; [USELESS]

.finish_up
|028E7E| STZ.b $B0
|028E80| STZ.w $0418
|028E83| STZ.b $11

|028E85| JSL SetAndSaveVisitedQuadrantFlags

|028E89| RTS

;===================================================================================================

Module07_10_SouthIntraRoomStairs:
|028E8A| LDA.w $0464
|028E8D| BEQ .run_subsubsub

|028E8F| DEC.w $0464

|028E92| CMP.b #$14
|028E94| BNE .skip_stair_drag

|028E96| LDA.b #$02
|028E98| STA.b $57

.skip_stair_drag
|028E9A| JSL HandleLinkVelocity
|028E9E| JSL ApplyLinksMovementToCamera
|028EA2| JSR HandleUnderworldCamera
|028EA5| JSL HandleLinkAnimation_FullLongEntry

.run_subsubsub
|028EA9| LDA.b $B0
|028EAB| JSL JumpTableLocal
|028EAF| dw Module07_10_00_InitStairs
|028EB1| dw Module07_10_01_ClimbStairs

;===================================================================================================

Module07_10_00_InitStairs:
|028EB3| LDY.b #$19 ; SFX2.19

|028EB5| LDX.b #$3C

|028EB7| LDA.b $67
|028EB9| AND.b #$04
|028EBB| BEQ .finish_up

|028EBD| LDY.b #$17 ; SFX2.17

|028EBF| LDX.b #$38

|028EC1| LDA.w $0476
|028EC4| EOR.b #$01
|028EC6| STA.w $0476

|028EC9| LDA.w $044A
|028ECC| CMP.b #$02 ; weak EG
|028ECE| BEQ .finish_up

|028ED0| LDA.b $EE
|028ED2| EOR.b #$01
|028ED4| STA.b $EE

.finish_up
|028ED6| STX.w $0464

|028ED9| STY.w $012E

|028EDC| LDA.b #$01
|028EDE| STA.b $57

|028EE0| INC.b $B0

;---------------------------------------------------------------------------------------------------

#EXIT_028EE2:
|028EE2| RTS

;===================================================================================================

Module07_10_01_ClimbStairs:
|028EE3| LDA.w $0464
|028EE6| BNE EXIT_028EE2

|028EE8| LDA.b $67
|028EEA| AND.b #$08
|028EEC| BEQ .finish_up

|028EEE| LDA.w $0476
|028EF1| EOR.b #$01
|028EF3| STA.w $0476

|028EF6| LDA.w $044A
|028EF9| CMP.b #$02 ; weak EG
|028EFB| BEQ .finish_up

|028EFD| LDA.b $EE
|028EFF| EOR.b #$01
|028F01| STA.b $EE

|028F03| BRA .finish_up ; [USELESS]

.finish_up
|028F05| STZ.b $B0
|028F07| STZ.w $0418
|028F0A| STZ.b $11

|028F0C| JSL SetAndSaveVisitedQuadrantFlags

|028F10| RTS

;===================================================================================================

Module07_09_OpenCrackedDoor:
|028F11| JSL OpenCrackedDoor

|028F15| RTS

;===================================================================================================

Module07_0A_ChangeBrightness:
|028F16| JSL OrientLampLightCone
|028F1A| JSL ApplyGrayscaleFixed_Incremental

|028F1E| LDA.l $00009C ; [WTF] why?
|028F22| AND.b #$1F
|028F24| CMP.l $7EC017
|028F28| BNE .exit

|028F2A| STZ.b $11
|028F2C| STZ.b $B0

.exit
|028F2E| RTS

;===================================================================================================

Module07_0B_DrainSwampPool:
|028F2F| JSL .do_it

|028F33| RTS

;---------------------------------------------------------------------------------------------------

.do_it
|028F34| LDA.b $B0
|028F36| JSL JumpTableLong
|028F3A| dl IncrementallyDrainSwampPool            ; 0x00
|028F3D| dl DeleteSwampPoolWaterOverlay            ; 0x01
|028F40| dl FloodSwampWater_PrepTilemap            ; 0x02
|028F43| dl FloodSwampWater_PrepTilemap            ; 0x03
|028F46| dl FloodSwampWater_PrepTilemap            ; 0x04
|028F49| dl FloodSwampWater_PrepTilemap            ; 0x05

;===================================================================================================

Module07_0C_FloodSwampWater:
|028F4C| JSL FloodSwampWater

|028F50| RTS

;===================================================================================================

Module07_0D_FloodDam:
|028F51| JSL FloodDam

|028F55| RTS

;===================================================================================================

Module07_0E_SpiralStairs:
|028F56| LDA.b $B0
|028F58| CMP.b #$07
|028F5A| BCC .skip_upload

|028F5C| JSL IncrementalVRAMUpload
|028F60| JSL LoadNextObjectAttributeSet

.skip_upload
|028F64| JSL HandleLinkOnSpiralStairs

|028F68| LDA.b $B0
|028F6A| JSL JumpTableLocal
|028F6E| dw Module07_0E_00_InitPriorityAndScreens             ; 0x00
|028F70| dw Module07_0E_01_HandleMusicAndResetProps           ; 0x01
|028F72| dw Module07_0E_02_ApplyFilterIf                      ; 0x02
|028F74| dw InitializeRoomFromSpecial                         ; 0x03
|028F76| dw TriggerBGC34UpdateAndAdvance                      ; 0x04
|028F78| dw TriggerBGC56UpdateAndAdvance                      ; 0x05
|028F7A| dw UnderworldTransition_LoadSpriteGFX                ; 0x06
|028F7C| dw SyncBackgroundsFromSpiralStairs                   ; 0x07
|028F7E| dw Underworld_BuildBG2AndAdvance                     ; 0x08
|028F80| dw Underworld_BuildBG1AndAdvance                     ; 0x09
|028F82| dw Underworld_BuildBG2AndAdvance                     ; 0x0A
|028F84| dw Underworld_FilterBuildBG1AndAdvance               ; 0x0B
|028F86| dw Underworld_FilterBuildBG2AndAdvance               ; 0x0C
|028F88| dw Underworld_FilterBuildBG1AndAdvance               ; 0x0D
|028F8A| dw Underworld_FilterBuildBG2AndAdvance               ; 0x0E
|028F8C| dw DoubleApplyAndIncrementGrayscale                  ; 0x0F
|028F8E| dw AdvanceThenSetBossMusic                           ; 0x10
|028F90| dw Module07_0E_11                                    ; 0x11
|028F92| dw Module07_0E_12                                    ; 0x12
|028F94| dw Module07_0E_13_SetRoomAndLayerAndCache            ; 0x13

;===================================================================================================

DoubleApplyAndIncrementGrayscale:
|028F96| JSL ApplyPaletteFilter
|028F9A| JSL ApplyPaletteFilter

|028F9E| JSL ApplyGrayscaleFixed_Incremental

|028FA2| RTS

;===================================================================================================

Module07_0E_02_ApplyFilterIf:
|028FA3| LDA.w $0464
|028FA6| CMP.b #$09
|028FA8| BCS .skip_filtering

|028FAA| JSL ApplyPaletteFilter
|028FAE| LDA.l $7EC007
|028FB2| BEQ .skip_filtering

|028FB4| JSL ApplyPaletteFilter

.skip_filtering
|028FB8| LDA.w $0464
|028FBB| BNE .dec_to_zero

|028FBD| LDA.b #$0C
|028FBF| STA.b $4B
|028FC1| STA.w $02F9

|028FC4| RTS

.dec_to_zero
|028FC5| DEC.w $0464

|028FC8| RTS

;===================================================================================================

SyncBackgroundsFromSpiralStairs:
|028FC9| LDA.l $7EF3CC
|028FCD| CMP.b #$06 ; FOLLOWER 06
|028FCF| BNE .not_blind_in_attic

|028FD1| LDA.b $A0
|028FD3| CMP.b #$64 ; ROOM 0064
|028FD5| BNE .not_blind_in_attic

|028FD7| LDA.b #$00
|028FD9| STA.l $7EF3CC

;---------------------------------------------------------------------------------------------------

.not_blind_in_attic
|028FDD| LDA.b $EE
|028FDF| PHA

|028FE0| REP #$10

|028FE2| LDX.w #$0030

|028FE5| LDA.w $0462
|028FE8| AND.b #$04
|028FEA| BNE .positive_y_a

|028FEC| LDX.w #$FFD0

.positive_y_a
|028FEF| REP #$20

|028FF1| TXA
|028FF2| CLC
|028FF3| ADC.b $20
|028FF5| STA.b $20

|028FF7| SEP #$30

|028FF9| LDX.w $048A

|028FFC| LDA.l LayerOfDestination.for_EE,X
|029000| STA.b $EE

|029002| JSR MakeNearbyWallsHighPriority_Exiting

|029005| PLA
|029006| STA.b $EE

;---------------------------------------------------------------------------------------------------

|029008| REP #$10

|02900A| LDX.w #$FFD0

|02900D| LDA.w $0462
|029010| AND.b #$04
|029012| BNE .positive_y_b

|029014| LDX.w #$0030

.positive_y_b
|029017| REP #$20

|029019| TXA
|02901A| CLC
|02901B| ADC.b $20
|02901D| STA.b $20

|02901F| JSR UnderworldSyncBG1and2Scroll

|029022| SEP #$30

|029024| JSL AdjustForRoomLayout

;---------------------------------------------------------------------------------------------------

|029028| LDY.b #$16

|02902A| LDX.w $0414
|02902D| LDA.l Underworld_SubscreenEnable,X
|029031| BPL .valid_subscreen

|029033| LDY.b #$17
|029035| LDA.b #$00

.valid_subscreen
|029037| CPX.b #$02
|029039| BNE .dont_override_as_bg12

|02903B| LDA.b #$03

.dont_override_as_bg12
|02903D| STY.b $1C
|02903F| STA.b $1D

|029041| INC.b $A4

|029043| LDA.w $0462
|029046| AND.b #$04
|029048| BEQ .going_up

|02904A| DEC.b $A4
|02904C| DEC.b $A4

.going_up
|02904E| LDX.b #$18
|029050| STX.w $0464

|029053| JSR BlipAndCacheQuadrants
|029056| JSL RestoreTorchBackground

|02905A| JMP.w Underworld_BuildBG1AndAdvance

;===================================================================================================

AdvanceThenSetBossMusic:
|02905D| JSR DeleteCertainAncillaeStopDashing

|029060| LDA.b #$38
|029062| STA.w $0464

|029065| INC.b $B0

;===================================================================================================

SetBossMusic:
|029067| REP #$20

|029069| LDX.b #$1C ; SONG 1C

|02906B| LDA.b $A0

; Ganon fall?
|02906D| CMP.w #$0010 ; ROOM 0010
|029070| BEQ .set_song

|029072| LDX.b #$15 ; SONG 15

; Moldorm's room?
|029074| CMP.w #$0007 ; ROOM 0007
|029077| BEQ .check_last_command

|029079| LDX.b #$11 ; SONG 11

; Hera 5F?
|02907B| CMP.w #$0017 ; ROOM 0017
|02907E| BNE .exit

|029080| CPX.w $0130
|029083| BEQ .exit

.check_last_command
|029085| LDA.w $0130
|029088| AND.w #$00FF
|02908B| CMP.w #$00F1 ; SONG F1 - fade
|02908E| BEQ .set_song

; Check for red pendant
|029090| LDA.l $7EF374
|029094| LSR A
|029095| BCS .exit

.set_song
|029097| STX.w $012C

.exit
|02909A| SEP #$20

|02909C| RTS

;===================================================================================================

Module07_0E_11:
|02909D| JSL FindSpiralStairsLandingSpot

|0290A1| DEC.w $0464
|0290A4| BNE .exit

|0290A6| LDX.b #$0A

|0290A8| LDA.w $0462
|0290AB| AND.b #$04
|0290AD| BNE .going_down

|0290AF| LDX.b #$18

.going_down
|0290B1| STX.w $0464

|0290B4| INC.b $B0

.exit
|0290B6| RTS

;===================================================================================================

Module07_0E_12:
|0290B7| JSL FindSpiralStairsLandingSpot

|0290BB| DEC.w $0464
|0290BE| BNE .exit

|0290C0| INC.b $B0

|0290C2| STZ.w $0200

.exit
|0290C5| RTS

;===================================================================================================

Module07_0E_00_InitPriorityAndScreens:
|0290C6| JSL MakeNearbyWallsHighPriority_Entering

|0290CA| LDA.b $EE
|0290CC| BEQ .dont_set_screendes_and_priority

|0290CE| LDA.b $1C
|0290D0| AND.b #$0F
|0290D2| STA.b $1C

|0290D4| LDA.b #$10
|0290D6| TSB.b $1D

|0290D8| LDA.b #$03
|0290DA| STA.b $EE

.dont_set_screendes_and_priority
|0290DC| INC.b $B0

|0290DE| RTS

;===================================================================================================

Module07_0E_13_SetRoomAndLayerAndCache:
|0290DF| LDX.w $048A

|0290E2| LDA.l LayerOfDestination.for_0476,X
|0290E6| STA.w $0476

|0290E9| LDA.l LayerOfDestination.for_EE,X
|0290ED| STA.b $EE

|0290EF| LDA.b #$10
|0290F1| TSB.b $1C

|0290F3| LDA.b $1D
|0290F5| AND.b #$0F
|0290F7| STA.b $1D

|0290F9| LDA.w $0462
|0290FC| AND.b #$04
|0290FE| BNE .going_down

|029100| JSL MakeNearbyWallsLowPriority

.going_down
|029104| LDA.b $A0
|029106| STA.w $048E

|029109| JMP.w ResetThenCacheRoomEntryProperties

;===================================================================================================

pool RepositionAfterSpiralStairs

.offset_x
|02910C| dw -28
|02910E| dw -28
|029110| dw  24
|029112| dw  24

.offset_y
|029114| dw  16
|029116| dw -10
|029118| dw -10
|02911A| dw -32

endpool

;---------------------------------------------------------------------------------------------------

RepositionAfterSpiralStairs:
|02911C| SEP #$20

|02911E| STZ.b $4B
|029120| STZ.w $02F9

|029123| LDX.b #$00

|029125| LDA.w $048A
|029128| BNE .use_offset_set_a

|02912A| CMP.w $0492
|02912D| BEQ .use_offset_set_a

|02912F| LDX.b #$02

.use_offset_set_a
|029131| LDA.w $0462
|029134| AND.b #$04
|029136| BEQ .going_up

|029138| TXA
|029139| CLC
|02913A| ADC.b #$04
|02913C| TAX

.going_up
|02913D| REP #$20

|02913F| LDA.b $22
|029141| CLC
|029142| ADC.l .offset_x,X
|029146| STA.b $22

|029148| LDA.b $20
|02914A| CLC
|02914B| ADC.l .offset_y,X
|02914F| STA.b $20

|029151| SEP #$20

|029153| LDA.b $1C
|029155| AND.b #$10
|029157| BEQ .sprites_not_on_mainscreen

;---------------------------------------------------------------------------------------------------

|029159| LDA.w $048A
|02915C| CMP.b #$02
|02915E| BNE .reset_follower_a

|029160| LDA.b #$03
|029162| STA.b $EE

|029164| LDA.b $1C
|029166| AND.b #$0F
|029168| STA.b $1C

|02916A| LDA.b #$10
|02916C| TSB.b $1D

|02916E| LDA.w $0492
|029171| CMP.b #$02
|029173| BEQ .reset_follower_a

|029175| REP #$20

|029177| LDA.b $20
|029179| CLC
|02917A| ADC.w #$0018
|02917D| STA.b $20

.reset_follower_a
|02917F| SEP #$20

|029181| JSL InitializeFollower

|029185| REP #$20

|029187| RTL

;---------------------------------------------------------------------------------------------------

.sprites_not_on_mainscreen
|029188| LDA.w $048A
|02918B| CMP.b #$02
|02918D| BEQ .reset_follower_b

|02918F| LDA.b #$10
|029191| TSB.b $1C

|029193| LDA.b $1D
|029195| AND.b #$0F
|029197| STA.b $1D

|029199| LDA.w $0492
|02919C| CMP.b #$02
|02919E| BEQ .reset_follower_a

|0291A0| REP #$20

|0291A2| LDA.b $20
|0291A4| SEC
|0291A5| SBC.w #$0018
|0291A8| STA.b $20

.reset_follower_b
|0291AA| SEP #$20

|0291AC| JSL InitializeFollower

|0291B0| REP #$20

|0291B2| RTL

;===================================================================================================

MakeNearbyWallsHighPriority_Exiting:
|0291B3| LDA.w $0462
|0291B6| AND.b #$04
|0291B8| BNE .exit

|0291BA| REP #$30

|0291BC| LDA.w $048C
|0291BF| CLC
|0291C0| ADC.w #$0008
|0291C3| AND.w #$007F
|0291C6| STA.b $00

;---------------------------------------------------------------------------------------------------

|0291C8| LDX.w #$FFFE

.check_next
|0291CB| INX
|0291CC| INX

|0291CD| LDA.w $06B0,X
|0291D0| ASL A
|0291D1| AND.w #$007F
|0291D4| CMP.b $00
|0291D6| BNE .check_next

;---------------------------------------------------------------------------------------------------

|0291D8| LDA.w $06B0,X
|0291DB| ASL A
|0291DC| SEC
|0291DD| SBC.w #$0008
|0291E0| STA.w $048C

|0291E3| TAX

|0291E4| LDY.w #$0004

.flag_next
|0291E7| LDA.l $7E2000,X
|0291EB| ORA.w #$2000
|0291EE| STA.l $7E2000,X

|0291F2| LDA.l $7E2080,X
|0291F6| ORA.w #$2000
|0291F9| STA.l $7E2080,X

|0291FD| LDA.l $7E2100,X
|029201| ORA.w #$2000
|029204| STA.l $7E2100,X

|029208| LDA.l $7E2180,X
|02920C| ORA.w #$2000
|02920F| STA.l $7E2180,X

|029213| INX
|029214| INX

|029215| DEY
|029216| BPL .flag_next

;---------------------------------------------------------------------------------------------------

|029218| SEP #$30

.exit
|02921A| RTS

;===================================================================================================

pool Module07_0F_LandingWipe

.vectors
|02921B| dw Module07_0F_00_InitSpotlight
|02921D| dw Module07_0F_01_OperateSpotlight

endpool

;---------------------------------------------------------------------------------------------------

Module07_0F_LandingWipe:
|02921F| LDA.b $B0
|029221| ASL A
|029222| TAX

|029223| JSR (.vectors,X)

|029226| JSL HandleLinkAnimation_FullLongEntry
|02922A| JSL DrawLink

|02922E| RTS

;===================================================================================================

Module07_0F_00_InitSpotlight:
|02922F| JSL IrisSpotlight_open

|029233| INC.b $B0

|029235| RTS

;===================================================================================================

Module07_0F_01_OperateSpotlight:
|029236| JSL HandleAllSprites
|02923A| JSL IrisSpotlight_ConfigureTable

|02923E| LDA.b $11
|029240| BNE .exit

|029242| STZ.b $96
|029244| STZ.b $97
|029246| STZ.b $98

|029248| STZ.b $1E
|02924A| STZ.b $1F

|02924C| STZ.b $B0

|02924E| LDA.w $0132
|029251| CMP.b #$FF ; SONG FF - transfer
|029253| BEQ .exit

|029255| STA.w $012C

.exit
|029258| RTS

;===================================================================================================
; Stair
;===================================================================================================
Module07_11_StraightInterroomStairs:
|029259| LDA.b $B0
|02925B| CMP.b #$03
|02925D| BCC .skip_attributes

|02925F| JSL LoadNextObjectAttributeSet

.skip_attributes
|029263| LDA.b $B0
|029265| CMP.b #$0D
|029267| BCC .skip_gfx_upload

|029269| JSL IncrementalVRAMUpload

.skip_gfx_upload
|02926D| LDA.w $0464
|029270| BEQ .run_subsubsub

|029272| DEC.w $0464

|029275| CMP.b #$10
|029277| BNE .no_stair_drag

|029279| LDA.b #$02
|02927B| STA.b $57

.no_stair_drag
|02927D| LDX.b #$08

|02927F| LDA.b $11
|029281| CMP.b #$12
|029283| BEQ .move_up

|029285| LDX.b #$04

.move_up
|029287| STX.b $67

|029289| JSL HandleLinkVelocity

;---------------------------------------------------------------------------------------------------

.run_subsubsub
|02928D| JSL HandleLinkAnimation_FullLongEntry

|029291| LDA.b $B0
|029293| JSL JumpTableLocal
|029297| dw Module07_11_00_PrepAndReset                 ; 0x00
|029299| dw Module07_11_01_FadeOut                      ; 0x01
|02929B| dw Module07_11_02_LoadAndPrepRoom              ; 0x02
|02929D| dw Module07_11_03_FilterAndLoadBGChars         ; 0x03
|02929F| dw Module07_11_04_FilterDoBGAndResetSprites    ; 0x04
|0292A1| dw Underworld_FilterBuildBG1AndAdvance         ; 0x05
|0292A3| dw Underworld_FilterBuildBG2AndAdvance         ; 0x06
|0292A5| dw Underworld_FilterBuildBG1AndAdvance         ; 0x07
|0292A7| dw Underworld_FilterBuildBG2AndAdvance         ; 0x08
|0292A9| dw Module07_11_09_LoadSpriteGraphics           ; 0x09
|0292AB| dw Module07_11_0A_ScrollCamera                 ; 0x0A
|0292AD| dw Module07_11_0B_PrepDestination              ; 0x0B
|0292AF| dw Underworld_BuildBG2AndAdvance               ; 0x0C
|0292B1| dw Underworld_BuildBG1AndAdvance               ; 0x0D
|0292B3| dw Underworld_BuildBG2AndAdvance               ; 0x0E
|0292B5| dw DoubleApplyAndIncrementGrayscale            ; 0x0F
|0292B7| dw Module07_11_19_SetSongAndFilter             ; 0x10
|0292B9| dw Module07_11_11_KeepSliding                  ; 0x11
|0292BB| dw ResetThenCacheRoomEntryProperties           ; 0x12

;===================================================================================================

Module07_11_00_PrepAndReset:
|0292BD| LDA.w $0372
|0292C0| BEQ .not_dashing

|0292C2| STZ.w $0372

|0292C5| LDA.b #$02
|0292C7| STA.b $5E

.not_dashing
|0292C9| LDX.b #$16 ; SFX2.16

|0292CB| LDA.w $0462
|0292CE| AND.b #$04
|0292D0| BEQ .going_up

|0292D2| LDX.b #$18 ; SFX2.18

.going_up
|0292D4| STX.w $012E

;---------------------------------------------------------------------------------------------------

|0292D7| REP #$20

|0292D9| LDA.b $A0

; aga cutscene room?
|0292DB| CMP.w #$0030 ; ROOM 0030
|0292DE| BEQ .do_song_fade

; aga pre cutscene room?
|0292E0| CMP.w #$0040 ; ROOM 0040
|0292E3| BNE .no_song_fade

.do_song_fade
|0292E5| LDX.b #$F1 ; SONG F1 - fade
|0292E7| STX.w $012C

.no_song_fade
|0292EA| SEP #$20

|0292EC| JMP.w ResetTransitionPropsAndAdvance_ResetInterface

;===================================================================================================

Module07_11_01_FadeOut:
|0292EF| LDA.w $0464
|0292F2| CMP.b #$09
|0292F4| BCS .exit

|0292F6| JSL ApplyPaletteFilter

|0292FA| LDA.l $7EC007
|0292FE| CMP.b #$17
|029300| BNE .exit

|029302| INC.b $B0

.exit
|029304| RTS

;===================================================================================================

Module07_11_02_LoadAndPrepRoom:
|029305| JSL ApplyPaletteFilter

|029309| JSL LoadAndBuildRoom

|02930D| JSL ToggleStarTileGraphics
|029311| JSL LoadTransAuxGFX
|029315| JSL LoadUnderworldTileTypes

|029319| JSL AdjustForRoomLayout
|02931D| JSL InitializeFollower

|029321| INC.b $B0

|029323| RTS

;===================================================================================================

Module07_11_03_FilterAndLoadBGChars:
|029324| JSL ApplyPaletteFilter

|029328| JSR TriggerBGC34UpdateAndAdvance

|02932B| RTS

;===================================================================================================

Module07_11_04_FilterDoBGAndResetSprites:
|02932C| JSL ApplyPaletteFilter
|029330| JSR TriggerBGC56UpdateAndAdvance

|029333| LDA.b $A0
|029335| STA.w $048E

|029338| JSL Underworld_ResetSprites

|02933C| RTS

;===================================================================================================

Module07_11_0B_PrepDestination:
|02933D| LDY.b #$16
|02933F| LDX.w $0414

|029342| LDA.l Underworld_SubscreenEnable,X
|029346| BPL .valid_screendes

|029348| LDY.b #$17
|02934A| LDA.b #$00

.valid_screendes
|02934C| STY.b $1C
|02934E| STA.b $1D

|029350| LDY.b #$17 ; SFX2.17

|029352| INC.b $A4

|029354| LDA.b #$01
|029356| STA.b $57

|029358| LDX.b #$3C

|02935A| LDA.w $0462
|02935D| AND.b #$04
|02935F| BEQ .going_up

|029361| LDY.b #$19 ; SFX2.19

|029363| DEC.b $A4
|029365| DEC.b $A4

|029367| LDX.b #$32

;---------------------------------------------------------------------------------------------------

.going_up
|029369| STX.w $0464

|02936C| STY.w $012E

|02936F| STZ.b $00

|029371| LDY.b $11

|029373| LDA.b $EE
|029375| BEQ .on_upper_layer

;---------------------------------------------------------------------------------------------------

|029377| REP #$20

|029379| LDA.w #$0020
|02937C| CPY.b #$12
|02937E| BNE .move_y_down_a

|029380| LDA.w #$FFE0

.move_y_down_a
|029383| CLC
|029384| ADC.b $20
|029386| STA.b $20

|029388| INC.b $00

|02938A| SEP #$20

;---------------------------------------------------------------------------------------------------

.on_upper_layer
|02938C| LDX.w $048A

|02938F| LDA.l LayerOfDestination.for_0476,X
|029393| STA.w $0476

|029396| LDA.l LayerOfDestination.for_EE,X
|02939A| STA.b $EE

|02939C| BEQ .staying_on_upper_layer

|02939E| REP #$20

|0293A0| LDA.w #$0020

|0293A3| CPY.b #$12
|0293A5| BNE .move_y_down_b

|0293A7| LDA.w #$FFE0

.move_y_down_b
|0293AA| CLC
|0293AB| ADC.b $20
|0293AD| STA.b $20

|0293AF| INC.b $00

|0293B1| SEP #$20

;---------------------------------------------------------------------------------------------------

.staying_on_upper_layer
|0293B3| LDA.b $00
|0293B5| BNE .skip_extra_y_adjust

|0293B7| REP #$20

|0293B9| LDA.w #$000C

|0293BC| CPY.b #$12
|0293BE| BNE .move_y_down_c

|0293C0| REP #$10

|0293C2| LDX.w #$FFE8

|0293C5| LDA.w $0462
|0293C8| AND.w #$0004
|0293CB| BNE .going_down

|0293CD| LDX.w #$FFF8

.going_down
|0293D0| TXA

.move_y_down_c
|0293D1| CLC
|0293D2| ADC.b $20
|0293D4| STA.b $20

|0293D6| SEP #$30

.skip_extra_y_adjust
|0293D8| JSR BlipAndCacheQuadrants
|0293DB| JSL RestoreTorchBackground

|0293DF| JMP.w Underworld_BuildBG1AndAdvance

;===================================================================================================

Module07_11_09_LoadSpriteGraphics:
|0293E2| JSL ApplyPaletteFilter

|0293E6| DEC.b $B0

|0293E8| JSL LoadNewSpriteGFXSet

|0293EC| JMP.w HandleRoomTranslucencyAndPalettes

;===================================================================================================

Module07_11_19_SetSongAndFilter:
|0293EF| LDA.w $0200
|0293F2| CMP.b #$05
|0293F4| BNE ApplyGrayscaleFixed_Incremental_bounce

|0293F6| LDA.l $7EC009
|0293FA| BNE ApplyGrayscaleFixed_Incremental_bounce

|0293FC| INC.b $B0

|0293FE| REP #$20

|029400| LDX.b #$1C ; SONG 1C

|029402| LDA.b $A0

; aga cutscene?
|029404| CMP.w #$0030 ; ROOM 0030
|029407| BEQ .set_song

; pre aga cutscene?
|029409| CMP.w #$0040 ; ROOM 0040
|02940C| BNE .skip_song

|02940E| LDX.b #$10 ; SONG 10

.set_song
|029410| STX.w $012C

.skip_song
|029413| SEP #$20

;===================================================================================================

ApplyGrayscaleFixed_Incremental_bounce:
|029415| JSL ApplyGrayscaleFixed_Incremental

|029419| RTS

;===================================================================================================

Module07_11_11_KeepSliding:
|02941A| LDA.w $0464
|02941D| BNE ApplyGrayscaleFixed_Incremental_bounce

|02941F| INC.b $B0

|029421| RTS

;===================================================================================================

Module07_14_RecoverFromFall:
|029422| LDA.b $B0
|029424| JSL JumpTableLocal
|029428| dw Module07_14_00_ScrollCamera
|02942A| dw RecoverPositionAfterDrowning

;===================================================================================================

Module07_14_00_ScrollCamera:
|02942C| REP #$20

|02942E| LDA.b $E2
|029430| CMP.l $7EC180
|029434| BEQ .set_h_scroll
|029436| BCC .scroll_right

|029438| DEC A
|029439| CMP.l $7EC180
|02943D| BEQ .set_h_scroll

|02943F| DEC A
|029440| BRA .set_h_scroll

.scroll_right
|029442| INC A
|029443| CMP.l $7EC180
|029447| BEQ .set_h_scroll

|029449| INC A

.set_h_scroll
|02944A| STA.b $E2

|02944C| LDA.b $E8
|02944E| CMP.l $7EC182
|029452| BEQ .set_v_scroll
|029454| BCC .scroll_up

|029456| DEC A
|029457| CMP.l $7EC182
|02945B| BEQ .set_v_scroll

|02945D| DEC A
|02945E| BRA .set_v_scroll

.scroll_up
|029460| INC A
|029461| CMP.l $7EC182
|029465| BEQ .set_v_scroll

|029467| INC A

;---------------------------------------------------------------------------------------------------

.set_v_scroll
|029468| STA.b $E8

|02946A| CMP.l $7EC182
|02946E| BNE .not_at_target_camera

|029470| LDA.b $E2
|029472| CMP.l $7EC180
|029476| BNE .not_at_target_camera

|029478| INC.b $B0

.not_at_target_camera
|02947A| LDA.w $0458
|02947D| BNE .exit

|02947F| JSR UnderworldSyncBG1and2Scroll

.exit
|029482| SEP #$20

|029484| RTS

;===================================================================================================

RecoverPositionAfterDrowning:
|029485| REP #$20

|029487| LDA.l $7EC184
|02948B| STA.b $20

|02948D| LDA.l $7EC186
|029491| STA.b $22

|029493| LDA.l $7EC188
|029497| STA.w $0600

|02949A| LDA.l $7EC18A
|02949E| STA.w $0604

|0294A1| LDA.l $7EC18C
|0294A5| STA.w $0608

|0294A8| LDA.l $7EC18E
|0294AC| STA.w $060C

|0294AF| LDA.l $7EC190
|0294B3| STA.w $0610

|0294B6| LDA.l $7EC192
|0294BA| STA.w $0612

|0294BD| LDA.l $7EC194
|0294C1| STA.w $0614

|0294C4| LDA.l $7EC196
|0294C8| STA.w $0616

|0294CB| LDA.l $7EC198
|0294CF| STA.w $0618

|0294D2| INC A
|0294D3| INC A
|0294D4| STA.w $061A

|0294D7| LDA.l $7EC19A
|0294DB| STA.w $061C

|0294DE| INC A
|0294DF| INC A
|0294E0| STA.w $061E

|0294E3| LDA.l $7EC19C
|0294E7| STA.b $A6

|0294E9| LDA.l $7EC19E
|0294ED| STA.b $A9

|0294EF| LDA.b $1B
|0294F1| AND.w #$00FF
|0294F4| BNE .indoors

;---------------------------------------------------------------------------------------------------

|0294F6| LDA.w $0618
|0294F9| DEC A
|0294FA| DEC A
|0294FB| STA.w $061A

|0294FE| LDA.w $061C
|029501| DEC A
|029502| DEC A
|029503| STA.w $061E

;---------------------------------------------------------------------------------------------------

.indoors
|029506| SEP #$20

|029508| LDA.l $7EC1A6
|02950C| STA.b $2F

|02950E| LDA.l $7EC1A7
|029512| STA.b $EE

|029514| LDA.l $7EC1A8
|029518| STA.w $0476

|02951B| LDA.l $7EC1A9
|02951F| STA.b $6C

|029521| LDA.l $7EC1AA
|029525| STA.b $A4

|029527| STZ.b $4B

;---------------------------------------------------------------------------------------------------

|029529| LDA.b #$90
|02952B| STA.w $031F

|02952E| JSR BlipAndCacheQuadrants

|029531| STZ.w $037B

|029534| JSL ResetStateAfterDamagingPit

|029538| STZ.w $02F9

|02953B| JSL InitializeFollower

|02953F| STZ.w $0642

|029542| STZ.w $0200
|029545| STZ.b $B0

|029547| STZ.w $0418
|02954A| STZ.b $11

; [BUG] this just doen't need to be here at all
; but it allows 0 hp bunny revival
|02954C| LDA.l $7EF36D
|029550| BNE .exit

|029552| LDA.b #$00
|029554| STA.l $7EF36D

|029558| LDA.b $1C
|02955A| STA.l $7EC211

|02955E| LDA.b $1D
|029560| STA.l $7EC212

|029564| LDA.b $10
|029566| STA.w $010C

|029569| LDA.b #$12
|02956B| STA.b $10

|02956D| LDA.b #$01
|02956F| STA.b $11

|029571| STZ.w $031F

.exit
|029574| RTS

;===================================================================================================

Module07_15_WarpPad:
|029575| LDA.b $B0
|029577| CMP.b #$03
|029579| BCC .skip_upload

|02957B| JSL IncrementalVRAMUpload
|02957F| JSL LoadNextObjectAttributeSet

.skip_upload
|029583| LDA.b $B0
|029585| JSL JumpTableLocal
|029589| dw ResetTransitionPropsAndAdvance_ResetInterface ; 0x00
|02958B| dw Module07_15_01_ApplyMosaicAndFilter           ; 0x01
|02958D| dw InitializeRoomFromSpecial                     ; 0x02
|02958F| dw UnderworldTransition_LoadSpriteGFX            ; 0x03
|029591| dw Module07_15_04_SyncRoomPropsAndBuildOverlay   ; 0x04
|029593| dw Underworld_BuildBG2AndAdvance                 ; 0x05
|029595| dw Underworld_BuildBG1AndAdvance                 ; 0x06
|029597| dw Underworld_BuildBG2AndAdvance                 ; 0x07
|029599| dw Underworld_BuildBG1AndAdvance                 ; 0x08
|02959B| dw Underworld_BuildBG2AndAdvance                 ; 0x09
|02959D| dw Underworld_BuildBG1AndAdvance                 ; 0x0A
|02959F| dw Underworld_BuildBG2AndAdvance                 ; 0x0B
|0295A1| dw Underworld_AdvanceAndReset                    ; 0x0C
|0295A3| dw Module07_15_0E_FadeInFromWarp                 ; 0x0D
|0295A5| dw Module07_15_0F_FinalizeAndCacheEntry          ; 0x0E

;===================================================================================================

Module07_15_01_ApplyMosaicAndFilter:
|0295A7| JSR ConditionalMosaicControl

|0295AA| LDA.l $7EC011
|0295AE| ORA.b #$03
|0295B0| STA.b $95

|0295B2| JMP.w ApplyPaletteFilter_bounce

;===================================================================================================

Module07_15_04_SyncRoomPropsAndBuildOverlay:
|0295B5| JSL ApplyGrayscaleFixed_Incremental

|0295B9| REP #$20

|0295BB| LDA.b $A0
|0295BD| CMP.w #$0017 ; ROOM 0017
|0295C0| BNE .not_hera_5F

|0295C2| LDX.b #$04
|0295C4| STX.b $A4

.not_hera_5F
|0295C6| JSR UnderworldSyncBG1and2Scroll
|0295C9| JSL AdjustForRoomLayout

|0295CD| LDY.b #$16

|0295CF| LDX.w $0414
|0295D2| LDA.l Underworld_SubscreenEnable,X
|0295D6| BPL .valid_screendes

|0295D8| LDY.b #$17
|0295DA| LDA.b #$00

.valid_screendes
|0295DC| STY.b $1C
|0295DE| STA.b $1D

|0295E0| JSL BuildBG1QuadrantForUpload

|0295E4| INC.b $B0

|0295E6| RTS

;===================================================================================================

Module07_15_0E_FadeInFromWarp:
|0295E7| LDA.l $7EC007
|0295EB| LSR A
|0295EC| BCC .dont_decrease_mosaic

|0295EE| LDA.l $7EC011
|0295F2| BEQ .dont_decrease_mosaic

|0295F4| SEC
|0295F5| SBC.b #$10
|0295F7| STA.l $7EC011

.dont_decrease_mosaic
|0295FB| LDA.b #$09
|0295FD| STA.b $94

|0295FF| LDA.l $7EC011
|029603| ORA.b #$03
|029605| STA.b $95

|029607| JMP.w ApplyPaletteFilter_bounce

;===================================================================================================

Module07_15_0F_FinalizeAndCacheEntry:
|02960A| LDA.w $0200
|02960D| CMP.b #$05
|02960F| BNE EXIT_02961A

|029611| JSL SetAndSaveVisitedQuadrantFlags

|029615| STZ.b $11

|029617| JSR ResetThenCacheRoomEntryProperties

;---------------------------------------------------------------------------------------------------

#EXIT_02961A:
|02961A| RTS

;===================================================================================================

pool Module07_16_UpdatePegs

.vectors
|02961B| dw Module07_16_UpdatePegs_Step1    ; 0x00
|02961D| dw Module07_16_UpdatePegs_Step1    ; 0x01
|02961F| dw Module07_16_UpdatePegs_Step2    ; 0x02
|029621| dw Module07_16_UpdatePegs_Step3    ; 0x03
|029623| dw Module07_16_UpdatePegs_FinishUp ; 0x04

endpool

;---------------------------------------------------------------------------------------------------

Module07_16_UpdatePegs:
|029625| INC.b $B0

|029627| LDA.b $B0
|029629| AND.b #$03
|02962B| BNE EXIT_02961A

|02962D| LDA.b $B0
|02962F| LSR A
|029630| TAX

|029631| JMP.w (.vectors,X)

;===================================================================================================

Module07_16_UpdatePegs_Step1:
|029634| REP #$10

|029636| LDX.w #$0100
|029639| LDY.w #$0080

|02963C| LDA.l $7EC172
|029640| BEQ .blue_pegs_up

|029642| TYX

|029643| LDY.w #$0100

.blue_pegs_up
|029646| BRA UpdatePegGFXBuffer

;===================================================================================================

Module07_16_UpdatePegs_Step2:
|029648| REP #$10

|02964A| LDX.w #$0080
|02964D| LDY.w #$0100

|029650| LDA.l $7EC172
|029654| BEQ .blue_pegs_up

|029656| TYX

|029657| LDY.w #$0080

.blue_pegs_up
|02965A| BRA UpdatePegGFXBuffer

;===================================================================================================

Module07_16_UpdatePegs_Step3:
|02965C| REP #$10

|02965E| LDX.w #$0000
|029661| LDY.w #$0180

|029664| LDA.l $7EC172
|029668| BEQ UpdatePegGFXBuffer

|02966A| TYX

|02966B| LDY.w #$0000

;===================================================================================================

UpdatePegGFXBuffer:
|02966E| STY.b $0E

|029670| PHB

|029671| LDA.b #$7F
|029673| PHA
|029674| PLB

|029675| REP #$20

;---------------------------------------------------------------------------------------------------

|029677| LDY.w #$0000

.next_blue
|02967A| LDA.l $7EB340,X
|02967E| STA.w $7F0000,Y

|029681| INX
|029682| INX

|029683| INY
|029684| INY
|029685| CPY.w #$0080
|029688| BNE .next_blue

;---------------------------------------------------------------------------------------------------

|02968A| LDX.b $0E

.next_orange
|02968C| LDA.l $7EB340,X
|029690| STA.w $7F0000,Y

|029693| INX
|029694| INX

|029695| INY
|029696| INY
|029697| CPY.w #$0100
|02969A| BNE .next_orange

;---------------------------------------------------------------------------------------------------

|02969C| SEP #$30

|02969E| PLB

|02969F| LDA.b #$17
|0296A1| STA.b $17

|0296A3| RTS

;===================================================================================================

Module07_16_UpdatePegs_FinishUp:
|0296A4| JSL FlipCrystalPegAttributes

|0296A8| STZ.b $B0
|0296AA| STZ.b $11

|0296AC| RTS

;===================================================================================================

RecoverPegGFXFromMapping:
|0296AD| REP #$10

|0296AF| LDX.w #$0000
|0296B2| LDY.w #$0180

|0296B5| LDA.l $7EC172
|0296B9| BEQ .blue_pegs_up

|0296BB| TYX

|0296BC| LDY.w #$0000

.blue_pegs_up
|0296BF| JSR UpdatePegGFXBuffer

|0296C2| RTL

;===================================================================================================

Module07_17_PressurePlate:
|0296C3| DEC.b $B0
|0296C5| BNE .exit

|0296C7| REP #$30

|0296C9| LDA.b $20
|0296CB| SEC
|0296CC| SBC.w #$0002
|0296CF| STA.b $20

|0296D1| LDA.w $04B6
|0296D4| LSR A
|0296D5| LSR A
|0296D6| LSR A
|0296D7| AND.w #$01F8
|0296DA| STA.b $02

|0296DC| LDA.w $04B6
|0296DF| AND.w #$003F
|0296E2| ASL A
|0296E3| ASL A
|0296E4| ASL A
|0296E5| STA.b $00

|0296E7| SEP #$30

|0296E9| LDY.b #$0E
|0296EB| JSL UpdateTilemapWithCommonObject

|0296EF| LDA.w $010C
|0296F2| STA.b $11

.exit
|0296F4| RTS

;===================================================================================================

CrystalGraphicsTilemapLocation:
|0296F5| dw $1618, $1658, $1658, $1618
|0296FD| dw $0658, $1618, $1658, $0000

;===================================================================================================

Module07_18_RescuedMaiden:
|029705| LDA.b $B0
|029707| JSL JumpTableLocal
|02970B| dw PrepareForCrystalCutscene                   ; 0x00
|02970D| dw BuildCrystalCutsceneTilemap                 ; 0x01
|02970F| dw Underworld_BuildBG1AndAdvance               ; 0x02
|029711| dw Underworld_BuildBG2AndAdvance               ; 0x03
|029713| dw Underworld_BuildBG1AndAdvance               ; 0x04
|029715| dw Underworld_BuildBG2AndAdvance               ; 0x05
|029717| dw Underworld_BuildBG1AndAdvance               ; 0x06
|029719| dw Underworld_BuildBG2AndAdvance               ; 0x07
|02971B| dw Underworld_BuildBG1AndAdvance               ; 0x08
|02971D| dw Underworld_BuildBG2AndAdvance               ; 0x09
|02971F| dw StartCrystalCutscene                        ; 0x0A

;===================================================================================================

PrepareForCrystalCutscene:
|029721| JSL PaletteFilter_RestoreBGSubstractiveStrict

|029725| LDA.l $7EC540
|029729| STA.l $7EC500

|02972D| LDA.l $7EC541
|029731| STA.l $7EC501

|029735| LDA.l $7EC009
|029739| CMP.b #$FF
|02973B| BNE .exit

;---------------------------------------------------------------------------------------------------

|02973D| REP #$30

|02973F| LDX.w #$0000
|029742| LDA.w #$01EC

.next
|029745| STA.l $7E2000,X
|029749| STA.l $7E2800,X
|02974D| STA.l $7E3000,X
|029751| STA.l $7E3800,X

|029755| STA.l $7E4000,X
|029759| STA.l $7E4800,X
|02975D| STA.l $7E5000,X
|029761| STA.l $7E5800,X

|029765| INX
|029766| INX
|029767| CPX.w #$0800
|02976A| BNE .next

;---------------------------------------------------------------------------------------------------

|02976C| STZ.w $011C
|02976F| STZ.w $011A

|029772| STZ.w $0422
|029775| STZ.w $0424

|029778| SEP #$30

|02977A| STZ.w $0418
|02977D| STZ.w $045C

|029780| INC.b $B0

.exit
|029782| RTS

;===================================================================================================

BuildCrystalCutsceneTilemap:
|029783| JSL PaletteFilter_Crystal

|029787| LDA.b #$01
|029789| STA.b $1D

|02978B| LDA.b #$02
|02978D| STA.w $02E4

;---------------------------------------------------------------------------------------------------

|029790| REP #$20

|029792| LDX.b #$0E

|029794| LDA.b $A0

.next_crystal_check
|029796| DEX
|029797| DEX

|029798| CMP.l CrystalBossRooms,X
|02979C| BNE .next_crystal_check

|02979E| LDA.l CrystalGraphicsTilemapLocation,X
|0297A2| STA.b $08

;---------------------------------------------------------------------------------------------------

|0297A4| REP #$10

|0297A6| LDA.w #$0004
|0297A9| STA.b $0C

|0297AB| STZ.b $0E

.next_super
|0297AD| LDY.w #$0007
|0297B0| LDX.b $08

.next_tile
|0297B2| LDA.b $0E
|0297B4| ORA.w #$1F80
|0297B7| STA.l $7E4000,X

|0297BB| ORA.w #$1F88
|0297BE| STA.l $7E4200,X

|0297C2| INC.b $0E

|0297C4| INX
|0297C5| INX

|0297C6| DEY
|0297C7| BPL .next_tile

|0297C9| LDA.b $0E
|0297CB| CLC
|0297CC| ADC.w #$0008
|0297CF| STA.b $0E

|0297D1| LDA.b $08
|0297D3| CLC
|0297D4| ADC.w #$0080
|0297D7| STA.b $08

|0297D9| DEC.b $0C
|0297DB| BNE .next_super

;---------------------------------------------------------------------------------------------------

|0297DD| SEP #$30

|0297DF| INC.b $B0

|0297E1| RTS

;===================================================================================================

StartCrystalCutscene:
|0297E2| INC.w $012A

|0297E5| JSL Polyhedral_InitializeThread

|0297E9| JSL CrystalCutscene_Initialize

|0297ED| STZ.b $11
|0297EF| STZ.b $B0

|0297F1| RTS

;===================================================================================================

Module07_19_MirrorFade:
|0297F2| JSR MosaicControlIncrease

|0297F5| DEC.b $13
|0297F7| BNE .exit

|0297F9| LDA.b #$05
|0297FB| STA.b $10

|0297FD| STZ.b $11
|0297FF| STZ.b $14

|029801| LDA.w $0130
|029804| STA.w $0133

|029807| LDA.w $0ABD
|02980A| BEQ .exit

|02980C| JSL RevertTranslucencySwap

.exit
|029810| RTS

;===================================================================================================

Module07_1A_OpenTriforceDoor:
|029811| JSL OpenTriforceDoor

|029815| RTS

;===================================================================================================

Module0C_Unused:
|029816| JSR ConditionalMosaicControl
|029819| JSR Module0C_RunSubmodule

|02981C| RTL

;===================================================================================================

Module0C_RunSubmodule:
|02981D| LDA.b $B0
|02981F| JSL JumpTableLocal
|029823| dw ResetTransitionPropsAndAdvance_ResetInterface
|029825| dw ApplyPaletteFilter_bounce
|029827| dw Module0C_RestoreModule

;===================================================================================================

Module0C_RestoreModule:
|029829| LDA.w $010C
|02982C| STA.b $10

|02982E| STZ.b $11
|029830| STZ.b $B0

|029832| RTS

;---------------------------------------------------------------------------------------------------

Module0D_Unused:
|029833| LDA.l $7EC007
|029837| LSR A
|029838| BCC .dont_adjust_mosaic

|02983A| LDA.l $7EC011
|02983E| SEC
|02983F| SBC.b #$10
|029841| STA.l $7EC011

.dont_adjust_mosaic
|029845| JSR CopyMosaicControl

|029848| JSR Module0D_RunSubmodule

|02984B| RTL

;---------------------------------------------------------------------------------------------------

Module0D_RunSubmodule:
|02984C| LDA.b $B0
|02984E| JSL JumpTableLocal
|029852| dw ApplyPaletteFilter_bounce
|029854| dw Module0D_RestoreModule

;===================================================================================================

Module0D_RestoreModule:
|029856| STZ.b $11
|029858| STZ.b $B0

|02985A| LDA.w $010C
|02985D| STA.b $10

|02985F| CMP.b #$09
|029861| BNE .exit

|029863| LDA.w $0696
|029866| ORA.w $0698
|029869| BEQ .exit

|02986B| LDA.b #$0A
|02986D| STA.b $11

|02986F| LDA.b #$10
|029871| STA.w $069A

.exit
|029874| RTS

;===================================================================================================

pool Module0F_SpotlightClose

.direction
|029875| db $08
|029876| db $04
|029877| db $02
|029878| db $01

.submodules
|029879| dw PrepExitWithSpotlight
|02987B| dw Spotlight_ExitToOverworld

endpool

;---------------------------------------------------------------------------------------------------

Module0F_SpotlightClose:
|02987D| JSL HandleAllSprites

|029881| LDA.b $11
|029883| ASL A
|029884| TAX

|029885| JSR (.submodules,X)

;---------------------------------------------------------------------------------------------------

|029888| LDA.b $1B
|02988A| BNE .indoors

|02988C| LDA.b $8A
|02988E| CMP.b #$0F ; OW 0F
|029890| BNE .not_waterfall_of_wishing

|029892| LDA.b #$01
|029894| STA.w $0351

.not_waterfall_of_wishing
|029897| LDA.b #$06
|029899| STA.b $5E

|02989B| JSL HandleLinkVelocity

|02989F| STZ.b $31
|0298A1| STZ.b $30

.indoors
|0298A3| LDA.b $2F
|0298A5| LSR A
|0298A6| TAX

|0298A7| LDA.b $1B
|0298A9| BNE .still_indoors

|0298AB| LDX.b #$00

|0298AD| LDA.w $010E
|0298B0| CMP.b #$43 ; ENTRANCE 43
|0298B2| BNE .still_indoors

|0298B4| INX

.still_indoors
|0298B5| LDA.l .direction,X
|0298B9| STA.b $26
|0298BB| STA.b $67

|0298BD| JSL HandleLinkAnimation_FullLongEntry
|0298C1| JML DrawLink

;===================================================================================================

PrepExitWithSpotlight:
|0298C5| STZ.w $012A
|0298C8| STZ.w $1F0C

|0298CB| LDA.b $1B
|0298CD| BNE .indoors

|0298CF| JSL DeleteWaterfallSplashes

|0298D3| REP #$20

|0298D5| LDA.b $20
|0298D7| STA.l $7EC148

|0298DB| SEP #$20

;---------------------------------------------------------------------------------------------------

.indoors
|0298DD| LDX.w $010E

|0298E0| LDA.l EntranceData.song,X
|0298E4| CMP.b #$03 ; SONG 03
|0298E6| BNE .check_if_half_vol

|0298E8| LDA.l $7EF3C5
|0298EC| CMP.b #$02
|0298EE| BCC .rain_state

.check_if_half_vol
|0298F0| CMP.b #$F2 ; SONG F2 - half volume
|0298F2| BNE .fade_song

|0298F4| LDX.w $0130
|0298F7| CPX.b #$0C ; SONG 0C
|0298F9| BNE .set_song

|0298FB| LDA.b #$07 ; SONG 07
|0298FD| BRA .set_song

.fade_song
|0298FF| LDA.b #$F1 ; SONG F1 - fade

;---------------------------------------------------------------------------------------------------

.set_song
|029901| STA.w $012C

.rain_state
|029904| STZ.w $04A0

|029907| JSL HandleFloorIndicator

|02990B| INC.b $16

|02990D| JSL IrisSpotlight_close

|029911| INC.b $11

;---------------------------------------------------------------------------------------------------

#EXIT_029913:
|029913| RTS

;===================================================================================================

Spotlight_ExitToOverworld:
|029914| JSL IrisSpotlight_ConfigureTable

|029918| STZ.w $012A
|02991B| STZ.w $1F0C

|02991E| LDA.b $11
|029920| BNE EXIT_029913

|029922| LDA.b $10
|029924| CMP.b #$06
|029926| BNE ExitToOverworld

|029928| REP #$20

|02992A| LDA.l $7EC148
|02992E| STA.b $20

|029930| SEP #$20

;===================================================================================================

ExitToOverworld:
|029932| LDA.b $10
|029934| CMP.b #$09
|029936| BEQ .dont_reset

|029938| JSL EnableForceBlank
|02993C| JSL ResetBasicActions

.dont_reset
|029940| LDA.b $10
|029942| CMP.b #$09
|029944| BNE .delay_advance

|029946| LDA.b $A1
|029948| BNE .underworld_2

|02994A| LDA.b $A0
|02994C| CMP.b #$20 ; ROOM 0020
|02994E| BEQ .from_agahnim

.underworld_2
|029950| LDA.b #$0A

|029952| LDX.b $2F
|029954| BNE .not_facing_up

|029956| LDA.b #$0B

.not_facing_up
|029958| STA.b $11

.from_agahnim
|02995A| LDA.b #$10
|02995C| STA.w $069A

|02995F| LDA.w $0696
|029962| ORA.w $0698
|029965| BEQ .delay_advance

|029967| LDA.w $0699
|02996A| BEQ .delay_advance

; TODO Seems to make a longer walk... can't find a way to trigger it...
|02996C| LDX.b #$00
|02996E| ASL A
|02996F| BCC .not_long_walk

|029971| LDX.b #$18

.not_long_walk
|029973| LDA.w $0699
|029976| AND.b #$7F
|029978| STA.w $0699

|02997B| STX.w $0692
|02997E| STZ.w $0690

|029981| LDA.b #$09
|029983| STA.b $11

|029985| STZ.b $B0

|029987| LDA.b #$15 ; SFX3.15
|029989| STA.w $012F

;---------------------------------------------------------------------------------------------------

.delay_advance
|02998C| STZ.b $96
|02998E| STZ.b $97
|029990| STZ.b $98

|029992| STZ.b $1E
|029994| STZ.b $1F

|029996| STZ.w $03EF

;---------------------------------------------------------------------------------------------------

|029999| REP #$30

; Fixed color RGB: #606030
|02999B| LDX.w #$4C26
|02999E| LDY.w #$8C4C

|0299A1| LDA.b $8A
|0299A3| CMP.w #$0003 ; OW 03
|0299A6| BEQ .on_dm_screens

|0299A8| CMP.w #$0005 ; OW 05
|0299AB| BEQ .on_dm_screens

|0299AD| CMP.w #$0007 ; OW 07
|0299B0| BEQ .on_dm_screens

; Fixed color RGB: #385030
|0299B2| LDX.w #$4A26
|0299B5| LDY.w #$874A

|0299B8| CMP.w #$0043 ; OW 43
|0299BB| BEQ .on_dm_screens

|0299BD| CMP.w #$0045 ; OW 45
|0299C0| BEQ .on_dm_screens

|0299C2| CMP.w #$0047 ; OW 47
|0299C5| BNE .not_dm_screen

.on_dm_screens
|0299C7| STX.b $9C
|0299C9| STY.b $9D

.not_dm_screen
|0299CB| SEP #$30

|0299CD| RTS

;===================================================================================================

pool Module10_SpotlightOpen

.submodules
|0299CE| dw Module10_00_OpenIris
|0299D0| dw Spotlight_ExitToOverworld

endpool

;---------------------------------------------------------------------------------------------------

Module10_SpotlightOpen:
|0299D2| JSL HandleAllSprites

|0299D6| LDA.b $11
|0299D8| ASL A
|0299D9| TAX

|0299DA| JSR (.submodules,X)

|0299DD| JML DrawLink

;===================================================================================================

Module10_00_OpenIris:
|0299E1| JSL IrisSpotlight_open

|0299E5| INC.b $11

|0299E7| RTS

;===================================================================================================

pool Module11_UnderworldFallingEntrance

.vectors
|0299E8| dw Module_11_00_SetSongAndInit        ; 0x00
|0299EA| dw PaletteFilter_bounce               ; 0x01
|0299EC| dw Module11_02_LoadEntrance           ; 0x02
|0299EE| dw UnderworldTransition_LoadSpriteGFX ; 0x03
|0299F0| dw Module11_04_FadeAndLoadQuadrants   ; 0x04
|0299F2| dw Module11_05_LoadQuadrants          ; 0x05

endpool

;---------------------------------------------------------------------------------------------------

Module11_UnderworldFallingEntrance:
|0299F4| LDA.b $B0
|0299F6| ASL A
|0299F7| TAX

|0299F8| JSR (.vectors,X)

|0299FB| RTL

;===================================================================================================

Module_11_00_SetSongAndInit:
|0299FC| LDX.w $010E

|0299FF| LDA.l EntranceData.song,X
|029A03| CMP.b #$03 ; SONG 03
|029A05| BNE .fade

|029A07| LDA.l $7EF3C5
|029A0B| CMP.b #$02
|029A0D| BCC .rain_state

.fade
|029A0F| LDA.b #$F1 ; SONG F1 - fade
|029A11| STA.w $012C

.rain_state
|029A14| JMP.w ResetTransitionPropsAndAdvance_ResetInterface

;===================================================================================================

Module11_02_LoadEntrance:
|029A17| JSL EnableForceBlank

|029A1B| LDA.b #$02
|029A1D| STA.b $99

|029A1F| JSR LoadUnderworldEntrance

|029A22| LDA.w $040C
|029A25| CMP.b #$FF ; DUNGEON FF
|029A27| BEQ .caves

|029A29| CMP.b #$02 ; DUNGEON 02
|029A2B| BNE .not_castle

|029A2D| LDA.b #$00 ; DUNGEON 00

.not_castle
|029A2F| LSR A
|029A30| TAX

|029A31| LDA.l $7EF37C,X

;---------------------------------------------------------------------------------------------------

.caves
|029A35| JSL RebuildHUD_Keys

|029A39| LDA.b #$04
|029A3B| STA.b $5A

|029A3D| LDA.b #$03
|029A3F| STA.b $5B

|029A41| LDA.b #$0C
|029A43| STA.b $4B

|029A45| LDA.b #$10
|029A47| STA.b $57

|029A49| LDA.b $20
|029A4B| SEC
|029A4C| SBC.b $E8
|029A4E| STA.b $00
|029A50| STZ.b $01

|029A52| STZ.w $0308
|029A55| STZ.w $0309
|029A58| STZ.w $030B

;---------------------------------------------------------------------------------------------------

|029A5B| REP #$30

|029A5D| LDA.b $A0
|029A5F| STA.b $A2

|029A61| LDA.w #$0010
|029A64| CLC
|029A65| ADC.b $00
|029A67| STA.b $00

|029A69| LDA.b $20
|029A6B| STA.b $51

|029A6D| SEC
|029A6E| SBC.b $00
|029A70| STA.b $20

;---------------------------------------------------------------------------------------------------

|029A72| SEP #$30

|029A74| LDA.b $B0
|029A76| PHA

|029A77| STZ.w $045A
|029A7A| STZ.w $0458

|029A7D| JSR LoadAndDrawRoom
|029A80| JSL LoadUnderworldTileTypes

|029A84| LDX.w $0AA1

|029A87| LDA.l AnimatedTileSheets,X
|029A8B| TAY

|029A8C| JSL DecompressAnimatedUnderworldTiles
|029A90| JSL LoadEveryObjectAttributeSet

;---------------------------------------------------------------------------------------------------

|029A94| PLA
|029A95| INC A
|029A96| STA.b $B0

|029A98| LDA.b #$0A
|029A9A| STA.w $0AA4

|029A9D| LDA.b #$02
|029A9F| STA.w OBSEL

|029AA2| JSL InitializeTilesets

|029AA6| LDA.b #$0A
|029AA8| STA.w $0AB1

|029AAB| JSR LoadUnderworldPalettes
|029AAE| JSL RestoreTorchBackground

|029AB2| STZ.b $3A
|029AB4| STZ.b $3C

;---------------------------------------------------------------------------------------------------

|029AB6| JSR ResetLampconeAndLink

|029AB9| LDA.w $02E0
|029ABC| BEQ .not_bunny

|029ABE| JSL RefreshEquipmentPalettes_bunny

.not_bunny
|029AC2| LDA.b #$80
|029AC4| STA.b $9B

|029AC6| JSL HandleItemRefills
|029ACA| JSL UnderworldAdjustRainSFX

|029ACE| LDA.b #$07
|029AD0| STA.b $11

;===================================================================================================

LoadUnderworldSongBankIfNeeded:
|029AD2| LDA.w $0132
|029AD5| CMP.b #$FF ; SONG FF - transfer
|029AD7| BEQ .exit

|029AD9| CMP.b #$F2 ; SONG F2 - half volume
|029ADB| BEQ .exit

|029ADD| CMP.b #$03 ; SONG 03
|029ADF| BEQ .overworld_song

|029AE1| CMP.b #$07 ; SONG 07
|029AE3| BEQ .overworld_song

|029AE5| CMP.b #$0E ; SONG 0E
|029AE7| BEQ .overworld_song

|029AE9| LDA.w $0136
|029AEC| BNE .exit

|029AEE| SEI
|029AEF| STZ.w NMITIMEN
|029AF2| STZ.w HDMAEN

|029AF5| INC.w $0136

|029AF8| LDA.b #$FF ; SONG FF - transfer
|029AFA| STA.w APUIO0

|029AFD| JSL LoadUnderworldSongs

|029B01| LDA.b #$81
|029B03| STA.w NMITIMEN

.exit
|029B06| RTS

;---------------------------------------------------------------------------------------------------

.overworld_song
|029B07| JMP.w LoadOWMusicIfNeeded

;===================================================================================================

Module11_04_FadeAndLoadQuadrants:
|029B0A| LDA.b $13
|029B0C| INC A
|029B0D| AND.b #$0F
|029B0F| STA.b $13

|029B11| CMP.b #$0F
|029B13| BNE Module11_05_LoadQuadrants

|029B15| INC.b $B0

;===================================================================================================

Module11_05_LoadQuadrants:
|029B17| JSL HandleUnderworldLandingFromPit

|029B1B| LDA.b $11
|029B1D| BNE .exit

|029B1F| LDA.b #$07
|029B21| STA.b $10

|029B23| INC.w $04C7

|029B26| JSR BlipAndCacheQuadrants
|029B29| JSR ResetThenCacheRoomEntryProperties

|029B2C| LDA.w $0132
|029B2F| STA.w $012C

|029B32| LDA.w $0130
|029B35| STA.w $0133

.exit
|029B38| RTS

;===================================================================================================

pool Module13_PendantBossVictory

.submodules
|029B39| dw VictoriousHeal                     ; 0x00
|029B3B| dw StartVictorySpin                   ; 0x01
|029B3D| dw RunVictorySpin                     ; 0x02
|029B3F| dw FinishVictorySpin                  ; 0x03
|029B41| dw PrepExitWithSpotlight              ; 0x04
|029B43| dw Spotlight_ExitToOverworld          ; 0x05

endpool

;---------------------------------------------------------------------------------------------------

Module13_PendantBossVictory:
|029B45| LDA.b $11
|029B47| ASL A
|029B48| TAX

|029B49| JSR (.submodules,X)

|029B4C| JSL HandleAllSprites
|029B50| JML DrawLink

;===================================================================================================

VictoriousHeal:
|029B54| JSL FullyRefillMagic
|029B58| BCS .still_restoring_magic

|029B5A| INC.w $0200

.still_restoring_magic
|029B5D| JSL FullyRefillHealth
|029B61| BCS .still_healing_hp

|029B63| INC.w $0200

.still_healing_hp
|029B66| LDA.w $0200
|029B69| BNE .reset_subsub

;---------------------------------------------------------------------------------------------------

|029B6B| LDA.b $3A
|029B6D| AND.b #$BF
|029B6F| STA.b $3A

|029B71| JSR DeleteCertainAncillaeStopDashing

|029B74| LDA.b #$02
|029B76| STA.b $2F

|029B78| ASL A
|029B79| STA.b $26

|029B7B| INC.b $16
|029B7D| INC.b $11

|029B7F| LDA.b #$10
|029B81| STA.b $B0

|029B83| INC.w $02E4

;---------------------------------------------------------------------------------------------------

.reset_subsub
|029B86| STZ.w $0200

|029B89| JSL HandleItemRefills

|029B8D| RTS

;===================================================================================================

StartVictorySpin:
|029B8E| DEC.b $B0
|029B90| BNE .exit

|029B92| STZ.w $02E4

|029B95| LDA.b #$02
|029B97| STA.b $2F

|029B99| JSL AnimateVictorySpin_long
|029B9D| JSL TerminateSelectInteractives
|029BA1| JSL AncillaAdd_SwordUpSparkle

|029BA5| INC.b $11

.exit
|029BA7| RTS

;===================================================================================================

RunVictorySpin:
|029BA8| JSL Link

|029BAC| LDA.b $5D
|029BAE| CMP.b #$00 ; LINKSTATE 00
|029BB0| BNE .exit

|029BB2| LDA.l $7EF359
|029BB6| INC A
|029BB7| AND.b #$FE
|029BB9| BEQ .skip_sfx

|029BBB| LDA.b #$2C ; SFX2.2C
|029BBD| STA.w $012E

.skip_sfx
|029BC0| LDA.b #$01
|029BC2| STA.w $03EF

|029BC5| LDA.b #$20
|029BC7| STA.b $B0

|029BC9| INC.b $11

.exit
|029BCB| RTS

;===================================================================================================

FinishVictorySpin:
|029BCC| DEC.b $B0
|029BCE| BNE .exit

|029BD0| INC.b $11

|029BD2| STZ.b $30
|029BD4| STZ.b $31

|029BD6| LDA.b #$00
|029BD8| STA.l $7EC017

.exit
|029BDC| RTS

;===================================================================================================

pool Module15_MirrorWarpFromAga

.submodules
|029BDD| dw Module15_00_Initialize          ; 0x00
|029BDF| dw Module15_01_SetTheScene         ; 0x01
|029BE1| dw Module15_02_RunMirrorWarp_Part1 ; 0x02
|029BE3| dw Module15_03_RunMirrorWarp_Part2 ; 0x03
|029BE5| dw Module15_04_RunMirrorWarp_Part3 ; 0x04
|029BE7| dw Module15_05_PrepTelepathy       ; 0x05
|029BE9| dw Module15_06_ShortDelay          ; 0x06
|029BEB| dw Module15_07_HandleTelepathy     ; 0x07
|029BED| dw Module15_08_MoonPearlHint       ; 0x08
|029BEF| dw VictoriousHeal                  ; 0x09
|029BF1| dw StartVictorySpin                ; 0x0A
|029BF3| dw RunVictorySpin                  ; 0x0B
|029BF5| dw Module15_0C_ReturnControl       ; 0x0C

endpool

;---------------------------------------------------------------------------------------------------

Module15_MirrorWarpFromAga:
|029BF7| LDA.b $11
|029BF9| ASL A
|029BFA| TAX

|029BFB| JSR (.submodules,X)

|029BFE| LDA.b $11
|029C00| CMP.b #$02
|029C02| BCC .draw_link

|029C04| CMP.b #$05
|029C06| BCC .exit

.draw_link
|029C08| JSL HandleAllSprites
|029C0C| JSL DrawLink

.exit
|029C10| RTL

;===================================================================================================

Module15_00_Initialize:
|029C11| STZ.w $0710

|029C14| INC.w $0200
|029C17| INC.b $11

|029C19| JSR LoadOWMusicIfNeeded

|029C1C| RTS

;===================================================================================================

Module15_01_SetTheScene:
|029C1D| LDA.b #$08 ; SONG 08
|029C1F| STA.w $012C
|029C22| STA.w $0410

|029C25| JSL InitializeMirrorHDMA

|029C29| STZ.w $0200

|029C2C| JSL PaletteFilter_InitializeWhiteFilter

|029C30| JSR LoadGraphicsAndScreenSize

|029C33| INC.b $11

|029C35| LDA.b #$14 ; LINKSTATE 14
|029C37| STA.b $5D

|029C39| REP #$20

|029C3B| STZ.w $011A
|029C3E| STZ.w $011C

|029C41| STZ.w $0402
|029C44| STZ.b $30

|029C46| LDA.w #$7FFF ; RGB: #F8F8F8
|029C49| STA.l $7EC500
|029C4D| STA.l $7EC540

|029C51| SEP #$20

|029C53| JSL ResetAncillaAndLink

|029C57| RTS

;===================================================================================================

Module15_05_PrepTelepathy:
|029C58| REP #$30

|029C5A| LDA.w #$2641
|029C5D| STA.w DMA7MODE

|029C60| LDX.w #$003E

|029C63| LDA.w #$FF00

;---------------------------------------------------------------------------------------------------

.next
|029C66| STA.w $1B00,X
|029C69| STA.w $1B40,X
|029C6C| STA.w $1B80,X
|029C6F| STA.w $1BC0,X

|029C72| STA.w $1C00,X
|029C75| STA.w $1C40,X
|029C78| STA.w $1C80,X

|029C7B| DEX
|029C7C| DEX
|029C7D| BPL .next

;---------------------------------------------------------------------------------------------------

|029C7F| LDA.w #$0000
|029C82| STA.l $7EC007
|029C86| STA.l $7EC009

|029C8A| SEP #$20

|029C8C| LDX.w #$0033 ; MESSAGE 0033
|029C8F| STX.w $1CF0

|029C92| SEP #$10

|029C94| JSL PrepAndDisplayMessage

|029C98| JSL ReloadPreviouslyLoadedSheets
|029C9C| JSL RebuildHUD_HideKeys

|029CA0| LDA.b #$80
|029CA2| STA.b $9B

|029CA4| LDA.b #$15
|029CA6| STA.b $10

|029CA8| LDA.b #$06
|029CAA| STA.b $11

|029CAC| LDA.b #$18
|029CAE| STA.b $B0

|029CB0| RTS

;===================================================================================================

Module15_06_ShortDelay:
|029CB1| DEC.b $B0
|029CB3| BNE .exit

|029CB5| INC.b $11

|029CB7| LDA.b #$09 ; SFX1.09
|029CB9| STA.w $012D

.exit
|029CBC| RTS

;===================================================================================================

Module15_07_HandleTelepathy:
|029CBD| JSL RenderText

|029CC1| LDA.b $11
|029CC3| BNE .exit

|029CC5| STZ.w $0200

|029CC8| LDA.b #$05 ; SFX1.05
|029CCA| STA.w $012D

|029CCD| LDX.b #$09

|029CCF| LDA.l $7EF357
|029CD3| BNE .have_pearl

;---------------------------------------------------------------------------------------------------

|029CD5| REP #$20

|029CD7| LDA.w #$0034 ; MESSAGE 0034
|029CDA| STA.w $1CF0

|029CDD| SEP #$20

|029CDF| JSL PrepAndDisplayMessage

|029CE3| STZ.w $012D

|029CE6| LDA.b #$15
|029CE8| STA.b $10

|029CEA| LDX.b #$09 ; [USELESS]
|029CEC| DEX

;---------------------------------------------------------------------------------------------------

.have_pearl
|029CED| STX.b $11

.exit
|029CEF| RTS

;===================================================================================================

Module15_08_MoonPearlHint:
|029CF0| JSL RenderText

|029CF4| LDA.b $11
|029CF6| BNE .exit

|029CF8| LDA.b #$20
|029CFA| STA.b $B0

|029CFC| LDX.b #$0C
|029CFE| STX.b $11

.exit
|029D00| RTS

;===================================================================================================

Module15_02_RunMirrorWarp_Part1:
|029D01| JSL MirrorWarp_BuildAndEnableHDMATable

|029D05| INC.b $11
|029D07| STZ.b $B0

|029D09| RTS

;===================================================================================================

Module15_03_RunMirrorWarp_Part2:
|029D0A| JSL MirrorWarp_BuildWavingHDMATable

|029D0E| BRA .check_subsub

;===================================================================================================

#Module15_04_RunMirrorWarp_Part3:
|029D10| JSL MirrorWarp_BuildDewavingHDMATable

;---------------------------------------------------------------------------------------------------

.check_subsub
|029D14| LDA.b $B0
|029D16| BEQ .exit

|029D18| STZ.b $B0

|029D1A| INC.b $11

.exit
|029D1C| RTS

;===================================================================================================

Module15_0C_ReturnControl:
|029D1D| DEC.b $B0
|029D1F| BNE .exit

|029D21| JSL ResetAncillaAndCutscene

; set hyrule castle overlay
|029D25| LDA.l $7EF29B
|029D29| ORA.b #$20
|029D2B| STA.l $7EF29B

|029D2F| LDA.b #$FF
|029D31| STA.w $040C

|029D34| STZ.b $11
|029D36| STZ.w $0200

|029D39| STZ.w $0710

|029D3C| LDA.b #$09
|029D3E| STA.b $10

|029D40| STZ.b $E6

|029D42| LDX.b #$09 ; SONG 09

|029D44| LDA.l $7EF357
|029D48| BNE .have_pearl

|029D4A| LDX.b #$04 ; SONG 04

.have_pearl
|029D4C| STX.w $012C

|029D4F| LDA.b #$06
|029D51| STA.l $7EF3C7

.exit
|029D55| RTS

;===================================================================================================

SetTargetOverworldWarpToPyramid:
|029D56| LDA.b $10
|029D58| CMP.b #$15
|029D5A| BNE .exit

|029D5C| JSR LoadOverworldFromUnderworld

|029D5F| LDY.b #$5A
|029D61| JSL DecompressAnimatedOverworldTiles

;===================================================================================================

#ResetAncillaAndCutscene:
|029D65| JSL TerminateSelectInteractives

|029D69| STZ.w $037B

|029D6C| STZ.b $3C
|029D6E| STZ.b $3A

|029D70| STZ.w $03EF
|029D73| STZ.w $02E4

.exit
|029D76| RTL

;===================================================================================================

pool Module16_CrystalBossVictory

.submodules
|029D77| dw VictoriousHeal              ; 0x00
|029D79| dw StartVictorySpin            ; 0x01
|029D7B| dw RunVictorySpin              ; 0x02
|029D7D| dw FinishVictorySpin           ; 0x03
|029D7F| dw Module16_04_FadeAndEnd      ; 0x04

endpool

;---------------------------------------------------------------------------------------------------

Module16_CrystalBossVictory:
|029D81| LDA.b $11
|029D83| ASL A
|029D84| TAX

|029D85| JSR (.submodules,X)

|029D88| JSL HandleAllSprites
|029D8C| JML DrawLink

;===================================================================================================

#EXIT_029D90:
|029D90| RTS

;---------------------------------------------------------------------------------------------------

Module16_04_FadeAndEnd:
|029D91| DEC.b $13
|029D93| BNE EXIT_029D90

|029D95| REP #$20

|029D97| STZ.w $011A
|029D9A| STZ.w $011C

|029D9D| STZ.b $30

|029D9F| SEP #$20

|029DA1| STZ.w $02E4

|029DA4| JSL RevertTranslucencySwap

|029DA8| LDA.b #$00 ; LINKSTATE 00
|029DAA| STA.b $5D

|029DAC| STZ.w $02D8
|029DAF| STZ.w $02DA
|029DB2| STZ.w $037B

|029DB5| LDA.w $010C
|029DB8| STA.b $10

|029DBA| STZ.b $11
|029DBC| STZ.b $B0

|029DBE| JMP.w ExitToOverworld

;===================================================================================================
; TODO names
;===================================================================================================
pool Module18_GanonEmerges

.submodules
|029DC1| dw Module18_00 ; 0x00
|029DC3| dw Module18_01 ; 0x01
|029DC5| dw Module18_02 ; 0x02
|029DC7| dw Module18_03 ; 0x03
|029DC9| dw Module18_04 ; 0x04
|029DCB| dw Module18_05 ; 0x05
|029DCD| dw EXIT_029EB7 ; 0x06
|029DCF| dw Module18_07 ; 0x07
|029DD1| dw Module18_08 ; 0x08

endpool

;---------------------------------------------------------------------------------------------------

Module18_GanonEmerges:
|029DD3| REP #$21

|029DD5| LDA.b $E2
|029DD7| PHA

|029DD8| ADC.w $011A
|029DDB| STA.b $E2
|029DDD| STA.w $011E

|029DE0| LDA.b $E8
|029DE2| PHA

|029DE3| CLC
|029DE4| ADC.w $011C
|029DE7| STA.b $E8
|029DE9| STA.w $0122

|029DEC| LDA.b $E0
|029DEE| PHA

|029DEF| CLC
|029DF0| ADC.w $011A
|029DF3| STA.b $E0
|029DF5| STA.w $0120

|029DF8| LDA.b $E6
|029DFA| PHA

|029DFB| CLC
|029DFC| ADC.w $011C
|029DFF| STA.b $E6
|029E01| STA.w $0124

;---------------------------------------------------------------------------------------------------

|029E04| SEP #$20

|029E06| JSL HandleAllSprites

|029E0A| REP #$20

;---------------------------------------------------------------------------------------------------

|029E0C| PLA
|029E0D| STA.b $E6

|029E0F| PLA
|029E10| STA.b $E0

|029E12| PLA
|029E13| STA.b $E8

|029E15| PLA
|029E16| STA.b $E2

;---------------------------------------------------------------------------------------------------

|029E18| SEP #$20

|029E1A| LDA.w $0200
|029E1D| ASL A
|029E1E| TAX

|029E1F| JSR (.submodules,X)
|029E22| JML DrawLink

;===================================================================================================

Module18_00:
|029E26| JSL HandleRoomLayerEffect
|029E2A| JSL CallForDuckIndoors
|029E2E| JSL SaveDungeonKeys

|029E32| INC.w $0200
|029E35| INC.w $02E4

|029E38| RTS

;===================================================================================================

Module18_01:
|029E39| JSL HandleRoomLayerEffect

|029E3D| LDA.b $11
|029E3F| CMP.b #$0A
|029E41| BNE .exit

|029E43| LDA.b #$5B ; OW 5B
|029E45| STA.b $8A

|029E47| STZ.b $1B

|029E49| LDA.b #$18
|029E4B| STA.b $10
|029E4D| STZ.b $11

|029E4F| LDA.b #$02
|029E51| STA.w $0200

.exit
|029E54| RTS

;===================================================================================================

Module18_02:
|029E55| JSL HandleRoomLayerEffect

|029E59| DEC.b $13
|029E5B| BNE .exit

|029E5D| JSL EnableForceBlank

|029E61| INC.w $0200

|029E64| JSL RebuildHUD_HideKeys

|029E68| STZ.b $30
|029E6A| STZ.b $31

.exit
|029E6C| RTS

;===================================================================================================

Module18_03:
|029E6D| LDA.b #$08
|029E6F| STA.w $1AF0
|029E72| STZ.w $1AF1

|029E75| JSL FluteMenu_LoadSelectedScreen

|029E79| JSR LoadOWMusicIfNeeded

|029E7C| LDA.b #$09 ; SONG 09
|029E7E| STA.w $012C

|029E81| RTS

;===================================================================================================

Module18_04:
|029E82| JSL Overworld_LoadOverlayAndMap

|029E86| LDA.b #$00
|029E88| STA.b $B0

|029E8A| RTS

;===================================================================================================

Module18_05:
|029E8B| INC.b $13

|029E8D| LDA.b $13
|029E8F| CMP.b #$0F
|029E91| BNE EXIT_029EB7

|029E93| STZ.w $0402
|029E96| STZ.w $0403

|029E99| STZ.w $0FC1

|029E9C| JSL SpawnBatCrashCutscene

|029EA0| LDA.b #$02
|029EA2| STA.b $2F

|029EA4| LDA.b #$09
|029EA6| STA.w $010C

|029EA9| STZ.b $1B

|029EAB| INC.w $0200

|029EAE| LDA.b #$80
|029EB0| STA.b $B0

|029EB2| LDA.b #$FF
|029EB4| STA.w $040C

;---------------------------------------------------------------------------------------------------

#EXIT_029EB7:
|029EB7| RTS

;===================================================================================================

Module18_07:
|029EB8| DEC.b $B0
|029EBA| BNE EXIT_029EB7

|029EBC| INC.w $0200

|029EBF| RTS

;===================================================================================================

Module18_08:
|029EC0| JSL SpawnLandingDuck

|029EC4| RTS

;===================================================================================================

pool Module19_TriforceRoom

.submodules
|029EC5| dw Module19_00_ResetAndInit          ; 0x00
|029EC7| dw Module19_01_MosaicAndPalette      ; 0x01
|029EC9| dw Module19_02_LoadMusicAndScreen    ; 0x02
|029ECB| dw Module19_03_PrepTileSetsPalette   ; 0x03
|029ECD| dw Module19_04_LoadAndSongAndAdvance ; 0x04
|029ECF| dw Module19_05_WalkLinkIn            ; 0x05
|029ED1| dw Module19_06_MosaicFadeIn          ; 0x06
|029ED3| dw Module19_07_PrepMessage           ; 0x07
|029ED5| dw Module19_TriforceExpansionControl ; 0x08
|029ED7| dw Module19_09_TriforceSpeak         ; 0x09
|029ED9| dw Module19_TriforceExpansionControl ; 0x0A
|029EDB| dw Module19_0B_ApproachTriforce      ; 0x0B
|029EDD| dw Module19_0C_HoldTriforce          ; 0x0C
|029EDF| dw Module19_0D_FadeToWhite           ; 0x0D
|029EE1| dw Module19_0E_AdvanceToCredits      ; 0x0E

endpool

;---------------------------------------------------------------------------------------------------

Module19_TriforceRoom:
|029EE3| LDA.b $B0
|029EE5| ASL A
|029EE6| TAX

|029EE7| JSR (.submodules,X)

;---------------------------------------------------------------------------------------------------

|029EEA| REP #$20

|029EEC| LDA.b $E0
|029EEE| STA.w $0120

|029EF1| LDA.b $E6
|029EF3| STA.w $0124

|029EF6| LDA.b $E2
|029EF8| STA.w $011E

|029EFB| LDA.b $E8
|029EFD| STA.w $0122

;---------------------------------------------------------------------------------------------------

|029F00| SEP #$20

|029F02| LDA.b $B0
|029F04| CMP.b #$07
|029F06| BCC .move_link

|029F08| CMP.b #$0B
|029F0A| BCC .dont_move_link

.move_link
|029F0C| JSL HandleLinkVelocity
|029F10| JSL HandleLinkAnimation_FullLongEntry

.dont_move_link
|029F14| JML DrawLink

;===================================================================================================

Module19_00_ResetAndInit:
|029F18| JSL ResetLinkProperties_A

|029F1C| STZ.b $66

|029F1E| LDA.b #$F1 ; SONG F1 - fade
|029F20| STA.w $012C

|029F23| JMP.w ResetTransitionPropsAndAdvance_ResetInterface

;===================================================================================================

Module19_01_MosaicAndPalette:
|029F26| JSR ConditionalMosaicControl

|029F29| JMP.w ApplyPaletteFilter_bounce

;===================================================================================================

Module19_02_LoadMusicAndScreen:
|029F2C| JSL EnableForceBlank

|029F30| SEI

|029F31| STZ.w NMITIMEN

|029F34| LDA.b #$FF ; SONG FF - transfer
|029F36| STA.w APUIO0

|029F39| JSL LoadCreditsSongs

|029F3D| LDA.b #$81
|029F3F| STA.w NMITIMEN

|029F42| LDA.b #$89 ; OW 89
|029F44| STA.b $A0

|029F46| LDA.b #$01
|029F48| STA.b $A1

|029F4A| JSL EraseTilemaps_normal
|029F4E| JSL RevertTranslucencySwap
|029F52| JSR LoadSpecialOverworld

|029F55| JSR ReloadSubscreenOverlay

|029F58| INC.b $B0

|029F5A| BRA RefreshTriforceModule

;===================================================================================================

Module19_03_PrepTileSetsPalette:
|029F5C| LDA.b #$24
|029F5E| STA.w $0AA1

|029F61| LDA.b #$7D
|029F63| STA.w $0AA3

|029F66| LDA.b #$51
|029F68| STA.w $0AA2

|029F6B| JSL InitializeTilesets

|029F6F| LDX.b #$04
|029F71| JSR OverworldLoadScreensPaletteSet_Preloaded

|029F74| LDA.b #$0E
|029F76| JSL OverworldPalettesLoader
|029F7A| JSR SpecialOverworld_CopyPalettesToCache

|029F7D| INC.b $B0

|029F7F| RTS

;===================================================================================================

Module19_04_LoadAndSongAndAdvance:
|029F80| LDA.b $B0
|029F82| PHA

|029F83| JSR Module08_02_LoadAndAdvance

|029F86| PLA
|029F87| INC A
|029F88| STA.b $B0

;---------------------------------------------------------------------------------------------------

|029F8A| LDA.b #$0F
|029F8C| STA.b $13

|029F8E| LDA.b #$1F
|029F90| STA.l $7EC007

|029F94| LDA.b #$00
|029F96| STA.l $7EC00B

|029F9A| LDA.b #$01
|029F9C| STA.b $E1

|029F9E| LDA.b #$02
|029FA0| STA.b $99

|029FA2| LDA.b #$32
|029FA4| STA.b $9A

|029FA6| LDA.b #$F0
|029FA8| STA.l $7EC011

|029FAC| LDA.b #$EC
|029FAE| STA.b $20

|029FB0| LDA.b #$78
|029FB2| STA.b $22

|029FB4| LDA.b #$02
|029FB6| STA.b $EE

|029FB8| LDA.b #$20 ; SONG 20
|029FBA| STA.w $012C

;===================================================================================================

RefreshTriforceModule:
|029FBD| LDA.b #$19
|029FBF| STA.b $10

|029FC1| STZ.b $11

|029FC3| RTS

;===================================================================================================

Module19_05_WalkLinkIn:
|029FC4| LDA.b #$08
|029FC6| STA.b $67
|029FC8| STA.b $26

|029FCA| STZ.b $2F

|029FCC| LDA.b $20
|029FCE| CMP.b #$C0
|029FD0| BCS .exit

|029FD2| STZ.b $67
|029FD4| STZ.b $26
|029FD6| STZ.b $2E

|029FD8| INC.b $B0

.exit
|029FDA| RTS

;===================================================================================================

Module19_06_MosaicFadeIn:
|029FDB| LDA.l $7EC007
|029FDF| LSR A
|029FE0| BCS .continue

|029FE2| LDA.l $7EC011
|029FE6| BEQ .continue

|029FE8| SEC
|029FE9| SBC.b #$10
|029FEB| STA.l $7EC011

.continue
|029FEF| JSR CopyMosaicControl
|029FF2| JSL ApplyPaletteFilter

|029FF6| RTS

;===================================================================================================

Module19_07_PrepMessage:
|029FF7| JSL TriforceRoom_PrepGFXSlotForPoly

|029FFB| REP #$20

|029FFD| LDA.w #$0171 ; MESSAGE 0171
|02A000| STA.w $1CF0

|02A003| SEP #$20

|02A005| JSL PrepAndDisplayMessage

|02A009| JSL RenderText

|02A00D| LDA.b #$80
|02A00F| STA.b $C8

|02A011| LDA.b #$19
|02A013| STA.b $10

|02A015| INC.b $B0

|02A017| RTS

;===================================================================================================

Module19_09_TriforceSpeak:
|02A018| JSL AdvancePolyhedral

|02A01C| JSL RenderText

|02A020| LDA.b $11
|02A022| BNE .exit

|02A024| STZ.w $0200

|02A027| LDA.b #$19
|02A029| STA.b $10

|02A02B| INC.b $B0

.exit
|02A02D| RTS

;===================================================================================================

Module19_TriforceExpansionControl:
|02A02E| JSL AdvancePolyhedral

|02A032| LDA.b $B0
|02A034| CMP.b #$0B
|02A036| BNE .exit

|02A038| LDA.b #$21 ; SONG 21
|02A03A| STA.w $012C

|02A03D| LDA.b #$19
|02A03F| STA.b $10

|02A041| STZ.b $67
|02A043| STZ.b $26

|02A045| INC.b $11

.exit
|02A047| RTS

;===================================================================================================

Module19_0B_ApproachTriforce:
|02A048| JSL AdvancePolyhedral
|02A04C| JSL ApproachTheTriforce

|02A050| LDA.b $B0
|02A052| CMP.b #$0C
|02A054| BNE .exit

|02A056| STZ.b $67
|02A058| STZ.b $26

.exit
|02A05A| RTS

;===================================================================================================

Module19_0C_HoldTriforce:
|02A05B| JSL AdvancePolyhedral

|02A05F| DEC.b $C8
|02A061| BNE .exit

|02A063| JSL PaletteBlackAndWhiteSomething

|02A067| INC.b $11

.exit
|02A069| RTS

;===================================================================================================

Module19_0D_FadeToWhite:
|02A06A| JSL AdvancePolyhedral
|02A06E| JSL PaletteFilter_BlindingWhiteTriforce

|02A072| LDA.l $7EC009
|02A076| CMP.b #$FF
|02A078| BNE .exit

|02A07A| INC.b $B0

.exit
|02A07C| RTS

;===================================================================================================

Module19_0E_AdvanceToCredits:
|02A07D| DEC.b $13
|02A07F| BNE .exit

|02A081| LDA.b #$1A
|02A083| STA.b $10

|02A085| STZ.b $11
|02A087| STZ.b $B0

|02A089| LDA.b #$FF
|02A08B| STA.w $0128

|02A08E| STZ.w $012A
|02A091| STZ.w $1F0C

|02A094| LDA.b #$00
|02A096| STA.l $7EF3CA

.exit
|02A09A| RTS

;===================================================================================================

RoomTagPrizeChecks:
|02A09B| db $00 ; Sewers
|02A09C| db $00 ; Hyrule Castle
|02A09D| db $04 ; Eastern Palace
|02A09E| db $02 ; Desert Palace
|02A09F| db $00 ; Agahnim's Tower
|02A0A0| db $10 ; Swamp Palace
|02A0A1| db $02 ; Palace of Darkness
|02A0A2| db $01 ; Misery Mire
|02A0A3| db $40 ; Skull Woods
|02A0A4| db $04 ; Ice Palace
|02A0A5| db $01 ; Tower of Hera
|02A0A6| db $20 ; Thieves' Town
|02A0A7| db $08 ; Turtle Rock

;===================================================================================================

MirrorAndSaveRoomFlags:
|02A0A8| LDA.w $040C
|02A0AB| CMP.b #$FF ; DUNGEON FF
|02A0AD| BEQ .play_beep

|02A0AF| LDA.b #$19
|02A0B1| STA.b $11
|02A0B3| STZ.b $B0

|02A0B5| LDA.b #$33 ; SFX2.33
|02A0B7| STA.w $012E

|02A0BA| JSL FullyUpdateRoomFlags

;===================================================================================================

#SaveDungeonKeys:
|02A0BE| LDA.w $040C
|02A0C1| CMP.b #$FF ; DUNGEON FF
|02A0C3| BEQ .exit

|02A0C5| CMP.b #$02 ; DUNGEON 02
|02A0C7| BNE .not_castle

|02A0C9| LDA.b #$00 ; DUNGEON 00

.not_castle
|02A0CB| LSR A
|02A0CC| TAX

|02A0CD| LDA.l $7EF36F
|02A0D1| STA.l $7EF37C,X

.exit
|02A0D5| RTL

;---------------------------------------------------------------------------------------------------

.play_beep
|02A0D6| LDA.b #$3C ; SFX2.3C
|02A0D8| STA.w $012E

|02A0DB| RTL

;===================================================================================================

RoomEffectFixedColors:
|02A0DC| db $1F, $08, $04, $00

;===================================================================================================

HandleRoomTranslucencyAndPalettes:
|02A0E0| LDA.w $0ABD
|02A0E3| BEQ .dont_undo_translucency

|02A0E5| JSL RevertTranslucencySwap

.dont_undo_translucency
|02A0E9| LDA.b #$02
|02A0EB| STA.b $99

|02A0ED| LDA.b #$B3
|02A0EF| STA.b $9A

|02A0F1| LDX.w $045A

|02A0F4| LDA.l $7EC005
|02A0F8| BNE .lights_out

;---------------------------------------------------------------------------------------------------

|02A0FA| LDA.b #$20
|02A0FC| LDX.b #$03
|02A0FE| LDY.w $0414
|02A101| BEQ .no_translucency

|02A103| LDA.b #$32
|02A105| CPY.b #$07
|02A107| BEQ .no_translucency

|02A109| LDA.b #$62
|02A10B| CPY.b #$04
|02A10D| BEQ .no_translucency

|02A10F| LDA.b #$20
|02A111| CPY.b #$02
|02A113| BNE .no_translucency

;---------------------------------------------------------------------------------------------------

|02A115| PHX

|02A116| JSL AssertTranslucencySwap

|02A11A| PLX

|02A11B| LDA.b $A0
|02A11D| CMP.b #$0D ; ROOM 000D
|02A11F| BNE .not_aga_2

|02A121| REP #$20

|02A123| LDA.w #$0000
|02A126| STA.l $7EC019
|02A12A| STA.l $7EC01B
|02A12E| STA.l $7EC01D
|02A132| STA.l $7EC01F
|02A136| STA.l $7EC021
|02A13A| STA.l $7EC023

|02A13E| SEP #$20

|02A140| JSL PaletteLoadAgahnim

.not_aga_2
|02A144| LDA.b #$70

;---------------------------------------------------------------------------------------------------

.no_translucency
|02A146| STA.b $9A

.lights_out
|02A148| LDA.l RoomEffectFixedColors,X
|02A14C| STA.l $7EC017

|02A150| LDA.b #$1F
|02A152| STA.l $7EC007

|02A156| LDA.b #$00
|02A158| STA.l $7EC00B

|02A15C| LDA.b #$02
|02A15E| STA.l $7EC009

|02A162| STZ.w $0AA9

|02A165| JSL PaletteLoad_UnderworldSet
|02A169| JSL PaletteLoad_SpritePal0Left
|02A16D| JSL PaletteLoad_SpriteAux1
|02A171| JSL PaletteLoad_SpriteAux2

|02A175| INC.b $B0

|02A177| RTS

;===================================================================================================

UnusedInterfacePaletteRecovery:
|02A178| JSL ApplyPaletteFilter

|02A17C| LDA.l $7EC007
|02A180| BNE .exit

|02A182| LDA.b #$00
|02A184| STA.l $7EC005

|02A188| LDA.w $010C
|02A18B| STA.b $10

|02A18D| STZ.b $B0
|02A18F| STZ.b $11

.exit
|02A191| RTS

;===================================================================================================

PaletteFilter_bounce:
|02A192| JSL PaletteFilter

|02A196| RTS

;===================================================================================================

ApplyPaletteFilter_bounce:
|02A197| JSL ApplyPaletteFilter

|02A19B| RTS

;===================================================================================================

ResetTransitionPropsAndAdvance_ResetInterface_long:
|02A19C| JSR ResetTransitionPropsAndAdvance_ResetInterface

|02A19F| RTL

;===================================================================================================

HandleRoomTranslucencyAndPalettes_long:
|02A1A0| JSR HandleRoomTranslucencyAndPalettes

|02A1A3| RTL

;===================================================================================================

UnusedInterfacePaletteRecovery_long:
|02A1A4| JSR UnusedInterfacePaletteRecovery

|02A1A7| RTL

;===================================================================================================
; Seems to be a staircase adjustment that only operates on the Y-axis
;===================================================================================================
UNREACHABLE_02A1A8:
|02A1A8| LDA.b $A0
|02A1AA| AND.b #$F0
|02A1AC| STA.b $00

|02A1AE| LDA.b $21
|02A1B0| AND.b #$0F
|02A1B2| ORA.b $00
|02A1B4| STA.b $21

|02A1B6| LDA.b $E9
|02A1B8| AND.b #$0F
|02A1BA| ORA.b $00
|02A1BC| STA.b $E9

|02A1BE| LDA.w $0605
|02A1C1| AND.b #$0F
|02A1C3| ORA.b $00
|02A1C5| STA.w $0605

|02A1C8| LDA.w $0607
|02A1CB| AND.b #$0F
|02A1CD| ORA.b $00
|02A1CF| STA.w $0607

|02A1D2| LDA.w $0601
|02A1D5| AND.b #$0F
|02A1D7| ORA.b $00
|02A1D9| STA.w $0601

|02A1DC| LDA.w $0603
|02A1DF| AND.b #$0F
|02A1E1| ORA.b $00
|02A1E3| STA.w $0603

|02A1E6| RTS

;===================================================================================================

AdjustUnderworldCameraArbitrarily:
|02A1E7| LDA.b $A2
|02A1E9| AND.b #$0F
|02A1EB| STA.b $00

|02A1ED| LDA.b $A0
|02A1EF| AND.b #$0F
|02A1F1| SEC
|02A1F2| SBC.b $00

|02A1F4| ASL A
|02A1F5| STA.b $00

|02A1F7| LDA.b $23
|02A1F9| CLC
|02A1FA| ADC.b $00
|02A1FC| STA.b $23

|02A1FE| LDA.b $E3
|02A200| CLC
|02A201| ADC.b $00
|02A203| STA.b $E3

;---------------------------------------------------------------------------------------------------

|02A205| LDA.w $060D
|02A208| CLC
|02A209| ADC.b $00
|02A20B| STA.w $060D

|02A20E| LDA.w $060F
|02A211| CLC
|02A212| ADC.b $00
|02A214| STA.w $060F

|02A217| LDA.w $0609
|02A21A| CLC
|02A21B| ADC.b $00
|02A21D| STA.w $0609

|02A220| LDA.w $060B
|02A223| CLC
|02A224| ADC.b $00
|02A226| STA.w $060B

;---------------------------------------------------------------------------------------------------

|02A229| LDA.b $A2
|02A22B| AND.b #$F0
|02A22D| LSR A
|02A22E| LSR A
|02A22F| LSR A
|02A230| STA.b $00

|02A232| LDA.b $A0
|02A234| AND.b #$F0
|02A236| LSR A
|02A237| LSR A
|02A238| LSR A
|02A239| STA.b $01

|02A23B| SEC
|02A23C| SBC.b $00
|02A23E| STA.b $00

;---------------------------------------------------------------------------------------------------

|02A240| LDA.b $21
|02A242| CLC
|02A243| ADC.b $00
|02A245| STA.b $21

|02A247| LDA.b $E9
|02A249| CLC
|02A24A| ADC.b $00
|02A24C| STA.b $E9

|02A24E| LDA.w $0605
|02A251| CLC
|02A252| ADC.b $00
|02A254| STA.w $0605

|02A257| LDA.w $0607
|02A25A| CLC
|02A25B| ADC.b $00
|02A25D| STA.w $0607

|02A260| LDA.w $0601
|02A263| CLC
|02A264| ADC.b $00
|02A266| STA.w $0601

|02A269| LDA.w $0603
|02A26C| CLC
|02A26D| ADC.b $00
|02A26F| STA.w $0603

|02A272| RTS

;===================================================================================================

AdjustForTeleportDoors:
|02A273| STY.b $00

|02A275| STA.w $048E
|02A278| STA.b $A2

|02A27A| LDA.b $A2 ; [USELESS] you already have it
|02A27C| AND.b #$0F
|02A27E| ASL A

|02A27F| SEC
|02A280| SBC.b $23

|02A282| CLC
|02A283| ADC.b $00
|02A285| STA.b $00

;---------------------------------------------------------------------------------------------------

|02A287| LDA.b $23
|02A289| CLC
|02A28A| ADC.b $00
|02A28C| STA.b $23

|02A28E| LDA.b $E3
|02A290| CLC
|02A291| ADC.b $00
|02A293| STA.b $E3

|02A295| LDA.w $060D
|02A298| CLC
|02A299| ADC.b $00
|02A29B| STA.w $060D

|02A29E| LDA.w $060F
|02A2A1| CLC
|02A2A2| ADC.b $00
|02A2A4| STA.w $060F

|02A2A7| LDA.w $0609
|02A2AA| CLC
|02A2AB| ADC.b $00
|02A2AD| STA.w $0609

|02A2B0| LDA.w $060B
|02A2B3| CLC
|02A2B4| ADC.b $00
|02A2B6| STA.w $060B

;---------------------------------------------------------------------------------------------------

|02A2B9| LDA.b $A2
|02A2BB| AND.b #$F0

|02A2BD| LSR A
|02A2BE| LSR A
|02A2BF| LSR A

|02A2C0| SEC
|02A2C1| SBC.b $21
|02A2C3| STA.b $00

;---------------------------------------------------------------------------------------------------

|02A2C5| LDA.b $21
|02A2C7| CLC
|02A2C8| ADC.b $00
|02A2CA| STA.b $21

|02A2CC| LDA.b $E9
|02A2CE| CLC
|02A2CF| ADC.b $00
|02A2D1| STA.b $E9

|02A2D3| LDA.w $0605
|02A2D6| CLC
|02A2D7| ADC.b $00
|02A2D9| STA.w $0605

|02A2DC| LDA.w $0607
|02A2DF| CLC
|02A2E0| ADC.b $00
|02A2E2| STA.w $0607

|02A2E5| LDA.w $0601
|02A2E8| CLC
|02A2E9| ADC.b $00
|02A2EB| STA.w $0601

|02A2EE| LDA.w $0603
|02A2F1| CLC
|02A2F2| ADC.b $00
|02A2F4| STA.w $0603

;---------------------------------------------------------------------------------------------------

|02A2F7| LDY.b #$00

.next
|02A2F9| LDA.b $21
|02A2FB| STA.w $1A14,Y

|02A2FE| INY
|02A2FF| CPY.b #$14
|02A301| BNE .next

|02A303| RTS

;===================================================================================================
; TODO names
;===================================================================================================
pool Module09_Overworld

.submodules
|02A304| dw Module09_00_PlayerControl              ; 0x00
|02A306| dw Module09_LoadAuxGFX                    ; 0x01
|02A308| dw Module09_TriggerTilemapUpdate          ; 0x02
|02A30A| dw Module09_LoadNewMapAndGFX              ; 0x03
|02A30C| dw Module09_LoadNewSprites                ; 0x04
|02A30E| dw StartOverworldScrollTransition         ; 0x05
|02A310| dw RunScrollOverworldTransition           ; 0x06
|02A312| dw Overworld_EaseOffScrollTransition      ; 0x07
|02A314| dw Overworld_FinalizeEntryOntoScreen      ; 0x08
|02A316| dw Module09_09_OpenBigDoorFromExiting     ; 0x09
|02A318| dw Module09_0A_WalkFromExiting_FacingDown ; 0x0A
|02A31A| dw Module09_0B_WalkFromExiting_FacingUp   ; 0x0B
|02A31C| dw Module09_0C_OpenBigDoor                ; 0x0C
|02A31E| dw StartOverworldMosaicTransition         ; 0x0D
|02A320| dw Overworld_LoadSubscreenAndSilenceSFX1  ; 0x0E
|02A322| dw Module09_LoadAuxGFX                    ; 0x0F
|02A324| dw Module09_TriggerTilemapUpdate          ; 0x10
|02A326| dw Module09_LoadNewMapAndGFX              ; 0x11
|02A328| dw Module09_LoadNewSprites                ; 0x12
|02A32A| dw StartOverworldScrollTransition         ; 0x13
|02A32C| dw RunScrollOverworldTransition           ; 0x14
|02A32E| dw Overworld_EaseOffScrollTransition      ; 0x15
|02A330| dw Module09_FadeBackInFromMosaic          ; 0x16
|02A332| dw StartOverworldMosaicTransition         ; 0x17
|02A334| dw Module09_18                            ; 0x18
|02A336| dw Module09_19                            ; 0x19
|02A338| dw Module09_LoadAuxGFX                    ; 0x1A
|02A33A| dw Module09_TriggerTilemapUpdate          ; 0x1B
|02A33C| dw Module09_1C                            ; 0x1C
|02A33E| dw Module09_1D                            ; 0x1D
|02A340| dw Module09_1E                            ; 0x1E
|02A342| dw Module09_1F                            ; 0x1F
|02A344| dw ReloadSubscreenOverlay                 ; 0x20
|02A346| dw Module09_21                            ; 0x21
|02A348| dw Module09_22                            ; 0x22
|02A34A| dw Module09_MirrorWarp                    ; 0x23
|02A34C| dw StartOverworldMosaicTransition         ; 0x24
|02A34E| dw Module09_25                            ; 0x25
|02A350| dw Module09_LoadAuxGFX                    ; 0x26
|02A352| dw Module09_TriggerTilemapUpdate          ; 0x27
|02A354| dw LoadAndBuildOverworldScreen            ; 0x28
|02A356| dw Module09_FadeBackInFromMosaic          ; 0x29
|02A358| dw Module09_2A_RecoverFromDrowning        ; 0x2A
|02A35A| dw Module09_2B                            ; 0x2B
|02A35C| dw Module09_MirrorWarp                    ; 0x2C
|02A35E| dw Module09_2D_WaitForBird                ; 0x2D
|02A360| dw Module09_2E_Whirlpool                  ; 0x2E
|02A362| dw Module09_2F                            ; 0x2F

endpool

;===================================================================================================

OWOverlayHShift:
|02A364| db  1,  0,  1,  0

OWOverlayVShift:
|02A368| db  0, 17,  0, 17

;===================================================================================================

Module09_Overworld:
#Module0B_OverworldSpecial:
|02A36C| SEP #$30

|02A36E| LDA.b $11
|02A370| ASL A
|02A371| TAX

|02A372| JSR (.submodules,X)

;---------------------------------------------------------------------------------------------------

; add in shake offsets
|02A375| REP #$21

; BG2HOFS
|02A377| LDA.b $E2
|02A379| PHA
|02A37A| ADC.w $011A
|02A37D| STA.b $E2
|02A37F| STA.w $011E

; BG2VOFS
|02A382| LDA.b $E8
|02A384| PHA
|02A385| CLC
|02A386| ADC.w $011C
|02A389| STA.b $E8
|02A38B| STA.w $0122

; BG1HOFS
|02A38E| LDA.b $E0
|02A390| PHA
|02A391| CLC
|02A392| ADC.w $011A
|02A395| STA.b $E0
|02A397| STA.w $0120

; BG1VOFS
|02A39A| LDA.b $E6
|02A39C| PHA
|02A39D| CLC
|02A39E| ADC.w $011C
|02A3A1| STA.b $E6
|02A3A3| STA.w $0124

;---------------------------------------------------------------------------------------------------

|02A3A6| SEP #$20

|02A3A8| JSL HandleAllSprites

;---------------------------------------------------------------------------------------------------

; undo shake offsets
|02A3AC| REP #$20

|02A3AE| PLA
|02A3AF| STA.b $E6

|02A3B1| PLA
|02A3B2| STA.b $E0

|02A3B4| PLA
|02A3B5| STA.b $E8

|02A3B7| PLA
|02A3B8| STA.b $E2

;---------------------------------------------------------------------------------------------------

|02A3BA| SEP #$20

|02A3BC| JSL DrawLink
|02A3C0| JSL HandleItemRefills

;===================================================================================================

OverworldOverlay_HandleRain:
|02A3C4| LDA.b $8A
|02A3C6| CMP.b #$70 ; OW 70
|02A3C8| BEQ .mire_screen

|02A3CA| LDA.l $7EF3C5
|02A3CE| CMP.b #$02
|02A3D0| BCS .exit

;---------------------------------------------------------------------------------------------------

.mire_screen
|02A3D2| LDA.l $7EF2F0
|02A3D6| AND.b #$20
|02A3D8| BNE .exit

|02A3DA| LDA.b $1A
|02A3DC| CMP.b #$03
|02A3DE| BEQ .flash

|02A3E0| CMP.b #$05
|02A3E2| BEQ .unflash

|02A3E4| CMP.b #$24
|02A3E6| BEQ .thunder

|02A3E8| CMP.b #$2C
|02A3EA| BEQ .unflash

|02A3EC| CMP.b #$58
|02A3EE| BEQ .flash

|02A3F0| CMP.b #$5A
|02A3F2| BNE .no_effect

.unflash
; half color math, subtraction
; enabled on CG0, OBJ, BG2
|02A3F4| LDA.b #$72
|02A3F6| BRA .set_color_math

.thunder
|02A3F8| LDX.b #$36 ; SFX2.36
|02A3FA| STX.w $012E

.flash
; enable color math on CG0, OBJ, BG2
|02A3FD| LDA.b #$32

.set_color_math
|02A3FF| STA.b $9A

;---------------------------------------------------------------------------------------------------

.no_effect
|02A401| LDA.b $1A
|02A403| AND.b #$03
|02A405| BNE .exit

|02A407| LDA.w $0494
|02A40A| INC A
|02A40B| AND.b #$03
|02A40D| STA.w $0494

|02A410| TAX

|02A411| LDA.b $E1
|02A413| CLC
|02A414| ADC.l OWOverlayHShift,X
|02A418| STA.b $E1

|02A41A| LDA.b $E7
|02A41C| CLC
|02A41D| ADC.l OWOverlayVShift,X
|02A421| STA.b $E7

.exit
|02A423| RTL

;===================================================================================================

UNREACHABLE_02A424:
|02A424| db $08, $09, $02, $04, $02, $02, $02, $02
|02A42C| db $02, $02, $02, $02, $02, $02, $02

;===================================================================================================

Module09_00_PlayerControl:
|02A433| LDA.w $0112
|02A436| ORA.w $02E4
|02A439| ORA.w $0FFC
|02A43C| ORA.w $04C6
|02A43F| BEQ .check_for_start

|02A441| JMP.w .continue

;---------------------------------------------------------------------------------------------------

.check_for_start
|02A444| LDA.b $F4
|02A446| AND.b #$10
|02A448| BEQ .check_for_X

|02A44A| STZ.w $0200

|02A44D| LDA.b #$01
|02A44F| BRA .set_new_module

;---------------------------------------------------------------------------------------------------

.check_for_X
|02A451| LDA.b $F6
|02A453| AND.b #$40
|02A455| BEQ .check_for_select

|02A457| STZ.w $0200

|02A45A| LDA.b #$07

;---------------------------------------------------------------------------------------------------

.set_new_module
|02A45C| STA.b $11

|02A45E| LDA.b $10
|02A460| STA.w $010C

|02A463| LDA.b #$0E
|02A465| STA.b $10

|02A467| RTS

;---------------------------------------------------------------------------------------------------

.check_for_select
|02A468| LDA.b $F0
|02A46A| AND.b #$20
|02A46C| BEQ .continue

;---------------------------------------------------------------------------------------------------

|02A46E| LDA.w $1CE8
|02A471| STA.w $1CF4

|02A474| REP #$20

|02A476| LDA.w #$0184 ; MESSAGE 0184
|02A479| STA.w $1CF0

|02A47C| SEP #$20

|02A47E| LDA.b $10
|02A480| PHA

|02A481| JSL PrepAndDisplayMessage

|02A485| PLA
|02A486| STA.b $10

|02A488| STZ.b $B0

|02A48A| LDA.b #$0B
|02A48C| BRA .set_new_module

;---------------------------------------------------------------------------------------------------
; No buttons pressed or none allowed
.continue
|02A48E| LDA.w $04C6
|02A491| BEQ .not_entrance_cutscene

|02A493| JSL EntranceCutscene

;---------------------------------------------------------------------------------------------------

.not_entrance_cutscene
|02A497| SEP #$30

|02A499| JSL Link

|02A49D| LDA.w $04B4
|02A4A0| CMP.b #$FF
|02A4A2| BEQ .no_countdown

|02A4A4| JSL HandleHUDTimer

;---------------------------------------------------------------------------------------------------

.no_countdown
|02A4A8| REP #$20

|02A4AA| LDA.b $20
|02A4AC| AND.w #$1E00
|02A4AF| ASL A
|02A4B0| ASL A
|02A4B1| ASL A
|02A4B2| STA.w $0700

|02A4B5| LDA.b $22
|02A4B7| AND.w #$1E00
|02A4BA| ORA.w $0700

|02A4BD| XBA
|02A4BE| STA.w $0700

;---------------------------------------------------------------------------------------------------

|02A4C1| SEP #$20

|02A4C3| JSL LoadChrHalfSlot
|02A4C7| JSR Overworld_OperateCameraScroll

|02A4CA| LDA.b $10
|02A4CC| CMP.b #$0B
|02A4CE| BEQ .special_overworld

;---------------------------------------------------------------------------------------------------

|02A4D0| JSL UseOverworldEntrance
|02A4D4| JSL FlashGanonTowerPalette
|02A4D8| JSR HandleOverworldTransitions

|02A4DB| BRA .exit

;---------------------------------------------------------------------------------------------------

.special_overworld
|02A4DD| JSR ScrollAndCheckForSOWExit

.exit
|02A4E0| SEP #$20

|02A4E2| RTS

;===================================================================================================
; The actual screen ID of a screen, to account for large screens.
;===================================================================================================
ActualOverworldScreenID:
|02A4E3| db $00, $00, $02, $03, $03, $05, $05, $07
|02A4EB| db $00, $00, $0A, $03, $03, $05, $05, $0F
|02A4F3| db $10, $11, $12, $13, $14, $15, $16, $17
|02A4FB| db $18, $18, $1A, $1B, $1B, $1D, $1E, $1E
|02A503| db $18, $18, $22, $1B, $1B, $25, $1E, $1E
|02A50B| db $28, $29, $2A, $2B, $2C, $2D, $2E, $2F
|02A513| db $30, $30, $32, $33, $34, $35, $35, $37
|02A51B| db $30, $30, $3A, $3B, $3C, $35, $35, $3F

;===================================================================================================

OverworldScreenTilemapChange:
|02A523| dw $0F80
|02A525| dw $0F80
|02A527| dw $003F
|02A529| dw $003F

;===================================================================================================
; TODO organize
OverworldScreenTilemapChangeByScreen:
|02A52B| dw $0060, $0060, $0060, $0060
|02A533| dw $0060, $0060, $0060, $0060
|02A53B| dw $0060, $0060, $0060, $1060
|02A543| dw $1060, $1060, $1060, $0060
|02A54B| dw $0060, $0060, $0060, $0060
|02A553| dw $0060, $0060, $0060, $0060
|02A55B| dw $0060, $0060, $0060, $0060
|02A563| dw $0060, $0060, $0060, $0060
|02A56B| dw $0060, $0060, $0060, $1060
|02A573| dw $1060, $0060, $1060, $1060
|02A57B| dw $0060, $0060, $0060, $0060
|02A583| dw $0060, $0060, $0060, $0060
|02A58B| dw $0060, $0060, $0060, $0060
|02A593| dw $0060, $0060, $0060, $0060
|02A59B| dw $0060, $0060, $0060, $0060
|02A5A3| dw $0060, $1060, $1060, $0060
|02A5AB| dw $0080, $0080, $0040, $0080
|02A5B3| dw $0080, $0080, $0080, $0040
|02A5BB| dw $1080, $1080, $0040, $1080
|02A5C3| dw $1080, $1080, $1080, $0040
|02A5CB| dw $0040, $0040, $0040, $0040
|02A5D3| dw $0040, $0040, $0040, $0040
|02A5DB| dw $0080, $0080, $0040, $0080
|02A5E3| dw $0080, $0040, $0080, $0080
|02A5EB| dw $1080, $1080, $0040, $1080
|02A5F3| dw $1080, $0040, $1080, $1080
|02A5FB| dw $0040, $0040, $0040, $0040
|02A603| dw $0040, $0040, $0040, $0040
|02A60B| dw $0080, $0080, $0040, $0040
|02A613| dw $0040, $0080, $0080, $0040
|02A61B| dw $1080, $1080, $0040, $0040
|02A623| dw $0040, $1080, $1080, $0040
|02A62B| dw $1800, $1840, $1800, $1800
|02A633| dw $1840, $1800, $1840, $1800
|02A63B| dw $1800, $1840, $1800, $1800
|02A643| dw $1840, $1800, $1840, $1800
|02A64B| dw $1800, $1800, $1800, $1800
|02A653| dw $1800, $1800, $1800, $1800
|02A65B| dw $1800, $1840, $1800, $1800
|02A663| dw $1840, $1800, $1800, $1840
|02A66B| dw $1800, $1840, $1800, $1800
|02A673| dw $1840, $1800, $1800, $1840
|02A67B| dw $1800, $1800, $1800, $1800
|02A683| dw $1800, $1800, $1800, $1800
|02A68B| dw $1800, $1840, $1800, $1800
|02A693| dw $1800, $1800, $1840, $1800
|02A69B| dw $1800, $1840, $1800, $1800
|02A6A3| dw $1800, $1800, $1840, $1800
|02A6AB| dw $2000, $2040, $1000, $2000
|02A6B3| dw $2040, $2000, $2040, $1000
|02A6BB| dw $2000, $2040, $1000, $2000
|02A6C3| dw $2040, $2000, $2040, $1000
|02A6CB| dw $1000, $1000, $1000, $1000
|02A6D3| dw $1000, $1000, $1000, $1000
|02A6DB| dw $2000, $2040, $1000, $2000
|02A6E3| dw $2040, $1000, $2000, $2040
|02A6EB| dw $2000, $2040, $1000, $2000
|02A6F3| dw $2040, $1000, $2000, $2040
|02A6FB| dw $1000, $1000, $1000, $1000
|02A703| dw $1000, $1000, $1000, $1000
|02A70B| dw $2000, $2040, $1000, $1000
|02A713| dw $1000, $2000, $2040, $1000
|02A71B| dw $2000, $2040, $1000, $1000
|02A723| dw $1000, $2000, $2040, $1000

;===================================================================================================

OverworldScreenIDChange:
|02A72B| dw $0002 ; east
|02A72D| dw $FFFE ; west
|02A72F| dw $0010 ; south
|02A731| dw $FFF0 ; north

;===================================================================================================
; TODO format
OverworldMixedCoordsChange:
|02A733| dw $FFF0
|02A735| dw $0010
|02A737| dw $FFFE
|02A739| dw $0002

;===================================================================================================

OverworldScreenSizeFlag:
|02A73B| db $20, $20, $00, $20, $20, $20, $20, $00
|02A743| db $20, $20, $00, $20, $20, $20, $20, $00
|02A74B| db $00, $00, $00, $00, $00, $00, $00, $00
|02A753| db $20, $20, $00, $20, $20, $00, $20, $20
|02A75B| db $20, $20, $00, $20, $20, $00, $20, $20
|02A763| db $00, $00, $00, $00, $00, $00, $00, $00
|02A76B| db $20, $20, $00, $00, $00, $20, $20, $00
|02A773| db $20, $20, $00, $00, $00, $20, $20, $00

;===================================================================================================

OverworldScreenSizeHighByte:
|02A77B| db $03, $03, $01, $03, $03, $03, $03, $01
|02A783| db $03, $03, $01, $03, $03, $03, $03, $01
|02A78B| db $01, $01, $01, $01, $01, $01, $01, $01
|02A793| db $03, $03, $01, $03, $03, $01, $03, $03
|02A79B| db $03, $03, $01, $03, $03, $01, $03, $03
|02A7A3| db $01, $01, $01, $01, $01, $01, $01, $01
|02A7AB| db $03, $03, $01, $01, $01, $03, $03, $01
|02A7B3| db $03, $03, $01, $01, $01, $03, $03, $01

;===================================================================================================

OverworldTransitionPositionY:
|02A7BB| dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000
|02A7CB| dw $0000, $0000, $0200, $0000, $0000, $0000, $0000, $0200
|02A7DB| dw $0400, $0400, $0400, $0400, $0400, $0400, $0400, $0400
|02A7EB| dw $0600, $0600, $0600, $0600, $0600, $0600, $0600, $0600
|02A7FB| dw $0600, $0600, $0800, $0600, $0600, $0800, $0600, $0600
|02A80B| dw $0A00, $0A00, $0A00, $0A00, $0A00, $0A00, $0A00, $0A00
|02A81B| dw $0C00, $0C00, $0C00, $0C00, $0C00, $0C00, $0C00, $0C00
|02A82B| dw $0C00, $0C00, $0E00, $0E00, $0E00, $0C00, $0C00, $0E00

;===================================================================================================

OverworldTransitionPositionX:
|02A83B| dw $0000, $0000, $0400, $0600, $0600, $0A00, $0A00, $0E00
|02A84B| dw $0000, $0000, $0400, $0600, $0600, $0A00, $0A00, $0E00
|02A85B| dw $0000, $0200, $0400, $0600, $0800, $0A00, $0C00, $0E00
|02A86B| dw $0000, $0000, $0400, $0600, $0600, $0A00, $0C00, $0C00
|02A87B| dw $0000, $0000, $0400, $0600, $0600, $0A00, $0C00, $0C00
|02A88B| dw $0000, $0200, $0400, $0600, $0800, $0A00, $0C00, $0E00
|02A89B| dw $0000, $0000, $0400, $0600, $0800, $0A00, $0A00, $0E00
|02A8AB| dw $0000, $0000, $0400, $0600, $0800, $0A00, $0A00, $0E00

;===================================================================================================

HandleOverworldTransitions:
|02A8BB| LDA.w $0416
|02A8BE| BEQ .not_scrolling

|02A8C0| JSR OverworldHandleMapScroll

.not_scrolling
|02A8C3| REP #$20

|02A8C5| LDA.b $30
|02A8C7| AND.w #$00FF
|02A8CA| BEQ .not_moving_vertically

|02A8CC| LDA.b $67
|02A8CE| AND.w #$000C
|02A8D1| STA.b $00

|02A8D3| LDX.w $0700

|02A8D6| LDA.b $20
|02A8D8| SEC
|02A8D9| SBC.l OverworldTransitionPositionY,X

; Transition triggers for north
|02A8DD| LDY.b #$06
|02A8DF| LDX.b #$08
|02A8E1| CMP.w #$0004
|02A8E4| BCC .continue_check

; Transition triggers for south
|02A8E6| LDY.b #$04
|02A8E8| LDX.b #$04
|02A8EA| CMP.w $0716
|02A8ED| BCS .continue_check

;---------------------------------------------------------------------------------------------------

.not_moving_vertically
|02A8EF| LDA.b $31
|02A8F1| AND.w #$00FF
|02A8F4| BEQ .check_special_triggers

|02A8F6| LDA.w $0716
|02A8F9| CLC
|02A8FA| ADC.w #$0004
|02A8FD| STA.b $02

|02A8FF| LDA.b $67
|02A901| AND.w #$0003
|02A904| STA.b $00

|02A906| LDX.w $0700

|02A909| LDA.b $22
|02A90B| SEC
|02A90C| SBC.l OverworldTransitionPositionX,X

; Transition triggers for west
|02A910| LDY.b #$02
|02A912| LDX.b #$02
|02A914| CMP.w #$0006
|02A917| BCC .continue_check

; Transition triggers for south
|02A919| LDY.b #$00
|02A91B| LDX.b #$01

|02A91D| CMP.b $02
|02A91F| BCC .check_special_triggers

;---------------------------------------------------------------------------------------------------

.continue_check
|02A921| CPX.b $00
|02A923| BEQ .some_transition_was_hit

.check_special_triggers
|02A925| JSL CheckForSpecialOverworldTrigger

|02A929| RTS

;---------------------------------------------------------------------------------------------------

.some_transition_was_hit
|02A92A| SEP #$20

|02A92C| JSL CheckForEdgeScreenTransition
|02A930| BCS .check_special_triggers

|02A932| STY.b $02
|02A934| STZ.b $03

|02A936| JSR DeleteCertainAncillaeStopDashing

|02A939| REP #$31

|02A93B| LDX.b $02

|02A93D| LDA.b $84
|02A93F| AND.l OverworldScreenTilemapChange,X
|02A943| STA.b $84

|02A945| LDA.w $0700
|02A948| CLC
|02A949| ADC.l OverworldScreenIDChange,X
|02A94D| PHA

|02A94E| STA.b $04

|02A950| TXA

|02A951| ASL A ; x64
|02A952| ASL A
|02A953| ASL A
|02A954| ASL A
|02A955| ASL A
|02A956| ASL A

|02A957| ORA.b $04
|02A959| TAX

|02A95A| LDA.b $84
|02A95C| CLC
|02A95D| ADC.l OverworldScreenTilemapChangeByScreen,X
|02A961| STA.b $84

;---------------------------------------------------------------------------------------------------

|02A963| PLA
|02A964| LSR A
|02A965| TAX

|02A966| SEP #$30

|02A968| LDA.b $8A
|02A96A| PHA

|02A96B| CMP.b #$2A ; OW 2A
|02A96D| BNE .not_haunted_grove

|02A96F| LDA.b #$80 ; SFX1.80 - fade
|02A971| STA.w $012D

.not_haunted_grove
|02A974| LDA.b $8A
|02A976| CMP.b #$68 ; OW 68
|02A978| BNE .dont_restore_dw_music

|02A97A| LDA.w $0130
|02A97D| CMP.b #$0E ; SONG 0E
|02A97F| BNE .dont_restore_dw_music

|02A981| LDA.b #$09 ; SONG 09
|02A983| STA.w $012C

;---------------------------------------------------------------------------------------------------

.dont_restore_dw_music
|02A986| LDA.b $8A
|02A988| CMP.b #$18 ; OW 18
|02A98A| BNE .dont_fade_song_a

|02A98C| LDA.l $7EF3C5
|02A990| CMP.b #$03
|02A992| BCS .dont_fade_song_a

|02A994| LDA.b #$F1 ; SONG F1 - fade
|02A996| STA.w $012C

.dont_fade_song_a
|02A999| LDA.l ActualOverworldScreenID,X
|02A99D| ORA.l $7EF3CA
|02A9A1| STA.b $8A
|02A9A3| STA.w $040A

; Check if Kakariko
|02A9A6| CMP.b #$18 ; OW 18
|02A9A8| BNE .dont_fade_song_b

|02A9AA| LDA.l $7EF3C5
|02A9AE| CMP.b #$03
|02A9B0| BCS .dont_fade_song_b

|02A9B2| LDA.b #$F1 ; SONG F1 - fade
|02A9B4| STA.w $012C

;---------------------------------------------------------------------------------------------------

.dont_fade_song_b
|02A9B7| JSR LoadGraphicsAndScreenSize

|02A9BA| INC.b $11

|02A9BC| LDA.b $00
|02A9BE| STA.w $0410
|02A9C1| STA.w $0416

|02A9C4| LDX.b #$04

.shift
|02A9C6| DEX
|02A9C7| LSR A
|02A9C8| BCC .shift

|02A9CA| STX.w $0418
|02A9CD| STX.w $069C

|02A9D0| STZ.w $0696
|02A9D3| STZ.w $0698
|02A9D6| STZ.w $0126

|02A9D9| PLA
|02A9DA| AND.b #$3F ; OW 00, OW 40
|02A9DC| BEQ .mosaic_transition

|02A9DE| LDA.b $8A ; OW 00, OW 80
|02A9E0| AND.b #$BF
|02A9E2| BNE .normal_transition

.mosaic_transition
|02A9E4| STZ.b $B0

|02A9E6| LDA.b #$0D
|02A9E8| STA.b $11

|02A9EA| LDA.b #$00
|02A9EC| STA.b $95
|02A9EE| STA.l $7EC011

|02A9F2| RTS

;---------------------------------------------------------------------------------------------------

.normal_transition
|02A9F3| LDX.b $8A

|02A9F5| LDA.l $7EFD40,X
|02A9F9| STA.b $00

|02A9FB| LDA.l OverworldPalettesScreenToSet,X
|02A9FF| JSL OverworldPalettesLoader
|02AA03| JSR Overworld_CopyPalettesToCache

|02AA06| RTS

;===================================================================================================

LoadGraphicsAndScreenSize:
|02AA07| LDX.b $8A

|02AA09| STZ.w $0412

|02AA0C| LDA.l $7EFCC0,X
|02AA10| STA.w $0AA3

|02AA13| LDA.l GFXAA2ValsOW,X
|02AA17| STA.w $0AA2

|02AA1A| TXA
|02AA1B| AND.b #$3F
|02AA1D| TAX

|02AA1E| LDA.w $0712
|02AA21| STA.w $0714

|02AA24| LDA.l OverworldScreenSizeFlag,X
|02AA28| STA.w $0712

|02AA2B| LDA.l OverworldScreenSizeHighByte,X
|02AA2F| STA.w $0717

;---------------------------------------------------------------------------------------------------

|02AA32| LDY.b #$20
|02AA34| LDX.b #$00

|02AA36| LDA.b $8A
|02AA38| AND.b #$40
|02AA3A| BEQ .light_world

|02AA3C| INY
|02AA3D| LDX.b #$08

.light_world
|02AA3F| STY.w $0AA1

|02AA42| LDA.l SheetsTable_AA4,X
|02AA46| STA.w $0AA4

|02AA49| REP #$30

|02AA4B| LDA.b $8A
|02AA4D| AND.w #$00BF
|02AA50| ASL A
|02AA51| TAX

|02AA52| LDA.l OverworldTransitionPositionY,X
|02AA56| STA.w $0708

|02AA59| LDA.l OverworldTransitionPositionX,X
|02AA5D| LSR A
|02AA5E| LSR A
|02AA5F| LSR A
|02AA60| STA.w $070C

|02AA63| LDA.w #$03F0

|02AA66| LDX.w $0712
|02AA69| BNE .bigger_screen

|02AA6B| LDA.w #$01F0

.bigger_screen
|02AA6E| STA.w $070A

|02AA71| LSR A ; /8
|02AA72| LSR A
|02AA73| LSR A
|02AA74| STA.w $070E

|02AA77| SEP #$30

|02AA79| RTS

;===================================================================================================

ScrollAndCheckForSOWExit:
|02AA7A| LDA.w $0416
|02AA7D| BEQ .no_scroll

|02AA7F| JSR OverworldHandleMapScroll

.no_scroll
|02AA82| JSL CheckForReturnTrigger

|02AA86| RTS

;===================================================================================================
; TODO rename
Module09_LoadAuxGFX:
; disable dam drain
|02AA87| LDA.l $7EF2BB
|02AA8B| AND.b #$DF
|02AA8D| STA.l $7EF2BB

; disable swamp flood
|02AA91| LDA.l $7EF2FB
|02AA95| AND.b #$DF
|02AA97| STA.l $7EF2FB

; disable dam flood
|02AA9B| LDA.l $7EF216
|02AA9F| AND.b #$7F
|02AAA1| STA.l $7EF216

; disable swamp entrance flood
|02AAA5| LDA.l $7EF051
|02AAA9| AND.b #$FE
|02AAAB| STA.l $7EF051

|02AAAF| JSL LoadTransAuxGFX
|02AAB3| JSL PrepTransAuxGfx

|02AAB7| LDA.b #$09
|02AAB9| BRA .go

;===================================================================================================

#Module09_TriggerTilemapUpdate:
|02AABB| LDA.b #$0A

;---------------------------------------------------------------------------------------------------

.go
|02AABD| STA.b $17
|02AABF| STA.w $0710

|02AAC2| INC.b $11

|02AAC4| RTS

;===================================================================================================

Module09_LoadNewMapAndGFX:
|02AAC5| STZ.w $04C8
|02AAC8| STZ.w $04C9

|02AACB| JSR SomeTilemapChange

|02AACE| INC.w $0710

|02AAD1| JSR CreateInitialNewScreenMapToScroll
|02AAD4| JSL LoadNewSpriteGFXSet

|02AAD8| RTS

;===================================================================================================

RunScrollOverworldTransition:
|02AAD9| JSL HandleLinkAnimation_FullLongEntry
|02AADD| JSL IncrementalVRAMUpload

|02AAE1| JSR OverworldScrollTransition
|02AAE4| AND.b #$0F
|02AAE6| BEQ .continue

|02AAE8| RTS

.continue
|02AAE9| JMP.w OverworldTranScrollSet

;===================================================================================================

Module09_LoadNewSprites:
|02AAEC| LDA.w $0418
|02AAEF| CMP.b #$01
|02AAF1| BNE .dont_adjust_y

;---------------------------------------------------------------------------------------------------

|02AAF3| REP #$20

|02AAF5| LDA.b $E8
|02AAF7| CLC
|02AAF8| ADC.w #$0002
|02AAFB| STA.b $E8

|02AAFD| LDA.b $20
|02AAFF| CLC
|02AB00| ADC.w #$0002
|02AB03| STA.b $20

|02AB05| SEP #$20

;---------------------------------------------------------------------------------------------------

.dont_adjust_y
|02AB07| JSL ReloadOverworldSprites

|02AB0B| STZ.w $04AC
|02AB0E| STZ.w $04AD

|02AB11| LDA.l $7EF3C5
|02AB15| CMP.b #$02
|02AB17| BCS .not_raining

.dont_set_fixed_color
|02AB19| JMP.w StartOverworldScrollTransition

.not_raining
|02AB1C| LDA.b $11
|02AB1E| CMP.b #$12
|02AB20| BEQ .dont_set_fixed_color

|02AB22| JSL Overworld_SetFixedColAndScroll

;===================================================================================================

StartOverworldScrollTransition:
|02AB26| INC.b $11

|02AB28| LDX.w $0410
|02AB2B| CPX.b #$04
|02AB2D| BCC .exit

;===================================================================================================

#OverworldTranScrollSet:
|02AB2F| STX.w $0416

|02AB32| JSR OverworldTransitionScrollAndLoadMap

|02AB35| STZ.w $0416

.exit
|02AB38| RTS

;===================================================================================================

Overworld_EaseOffScrollTransition:
|02AB39| LDX.b $8A

|02AB3B| LDA.l OverworldScreenSize,X
|02AB3F| BEQ .dont_scroll_map

|02AB41| LDX.w $0410
|02AB44| STX.w $0416

|02AB47| JSR OverworldTransitionScrollAndLoadMap

|02AB4A| STZ.w $0416

.dont_scroll_map
|02AB4D| INC.b $B0

|02AB4F| LDA.b $B0
|02AB51| CMP.b #$08
|02AB53| BCC .exit

|02AB55| LDX.w $0410
|02AB58| CPX.b #$08
|02AB5A| BEQ .scrolling_north

|02AB5C| CPX.b #$02
|02AB5E| BNE .not_scrolling_vertically

.scrolling_north
|02AB60| CMP.b #$09
|02AB62| BCC .exit

.not_scrolling_vertically
|02AB64| STZ.b $B0
|02AB66| STZ.w $0410

;---------------------------------------------------------------------------------------------------

|02AB69| LDX.b $8A

|02AB6B| LDA.l OverworldScreenSize,X
|02AB6F| BEQ .dont_recover_params

|02AB71| REP #$20

|02AB73| LDA.l $7EC172
|02AB77| STA.b $84

|02AB79| LDA.l $7EC174
|02AB7D| STA.b $86

|02AB7F| LDA.l $7EC176
|02AB83| STA.b $88

|02AB85| SEP #$20

.dont_recover_params
|02AB87| INC.b $11

|02AB89| JSL RemoveKikiAndLocksmith

.exit
|02AB8D| RTS

;===================================================================================================

Module09_0A_WalkFromExiting_FacingDown:
|02AB8E| JSL HandleLinkAnimation_SetFacingDown

|02AB92| REP #$20

|02AB94| LDA.b $20
|02AB96| CLC
|02AB97| ADC.w #$0001
|02AB9A| STA.b $20

|02AB9C| SEP #$20

|02AB9E| DEC.w $069A
|02ABA1| BNE .exit

;---------------------------------------------------------------------------------------------------

|02ABA3| STZ.b $11

|02ABA5| REP #$20

|02ABA7| LDA.b $20
|02ABA9| CLC
|02ABAA| ADC.w #$0003
|02ABAD| STA.b $20

|02ABAF| SEP #$20

|02ABB1| LDA.b #$03
|02ABB3| STA.b $30

;---------------------------------------------------------------------------------------------------

|02ABB5| JSR Overworld_OperateCameraScroll

|02ABB8| LDA.w $0416
|02ABBB| BEQ .exit

|02ABBD| JSR OverworldHandleMapScroll

.exit
|02ABC0| RTS

;===================================================================================================

Module09_0B_WalkFromExiting_FacingUp:
|02ABC1| JSL HandleLinkAnimation_FullLongEntry

|02ABC5| REP #$20

|02ABC7| LDA.b $20
|02ABC9| SEC
|02ABCA| SBC.w #$0001
|02ABCD| STA.b $20

|02ABCF| SEP #$20

|02ABD1| DEC.w $069A
|02ABD4| BNE .exit

|02ABD6| STZ.b $11

.exit
|02ABD8| RTS

;===================================================================================================

BigMap16UpdateObjects:
|02ABD9| dw $0DA2, $0DA3, $0DA4, $0DA5 ; 00 - sanc doors half open
|02ABE1| dw $0DA6, $0DA7, $0DA8, $0DA9 ; 08 - sanc doors 2/3 open
|02ABE9| dw $0DAA, $0DAB, $0DAC, $0DAD ; 10 - sanc doors fully open
|02ABF1| dw $0DB0, $0DB1, $0DB2, $0DB3 ; 18 - castle doors 2/3 open
|02ABF9| dw $0DB4, $0DB5, $0DB6, $0DB7 ; 20 - castle doors fully open
|02AC01| dw $0DC7, $0DC8, $0DC9, $0DCA ; 28 - big rock imprint
|02AC09| dw $0DCD, $0DCE, $0DCF, $0DD0 ; 30 - open grave with corpse bottom half
|02AC11| dw $0DD1, $0DD2, $0DD3, $0DD4 ; 38 - open grave with stairs bottom half
|02AC19| dw $0DCB, $0DCC, $0DCD, $0DCE ; 40 - open grave with corpse top half
|02AC21| dw $0DCB, $0DCC, $0DD1, $0DD2 ; 48 - open grave with stairs top half
|02AC29| dw $0912, $0913, $0914, $0915 ; 50 - stairs to cave
|02AC31| dw $0DD5, $0DD6, $0DD7, $0DD8 ; 58 - open grave with pit bottom half
|02AC39| dw $0DCB, $0DCC, $0DD5, $0DD6 ; 60 - open grave with pit top half
|02AC41| dw $0E1B, $0E1C, $0E1D, $0E1E ; 68 - broken weather vane

;===================================================================================================

Module09_09_OpenBigDoorFromExiting:
|02AC49| LDA.w $0690
|02AC4C| CMP.b #$03
|02AC4E| BNE BigMap16Update_conditional

|02AC50| LDA.b #$24
|02AC52| STA.w $069A

|02AC55| STZ.w $0416

|02AC58| INC.b $11

|02AC5A| RTS

;===================================================================================================

BigMap16Update_long:
|02AC5B| JSR BigMap16Update

|02AC5E| STZ.w $0692

|02AC61| RTL

;===================================================================================================

UNREACHABLE_02AC62:
|02AC62| REP #$30

|02AC64| JSR BigMap16Update_16bit_already

|02AC67| STZ.w $0692

|02AC6A| RTL

;===================================================================================================

Module09_0C_OpenBigDoor:
|02AC6B| LDA.w $0690
|02AC6E| CMP.b #$03
|02AC70| BNE BigMap16Update_conditional

|02AC72| STZ.b $B0
|02AC74| STZ.b $11
|02AC76| STZ.w $0416

|02AC79| RTS

;===================================================================================================

BigMap16Update_conditional:
|02AC7A| LDA.w $0692
|02AC7D| AND.b #$07
|02AC7F| BEQ BigMap16Update

|02AC81| JMP.w NoBigMap16Update

;===================================================================================================

BigMap16Update:
|02AC84| REP #$30

;---------------------------------------------------------------------------------------------------

; call point from unreachable code
#BigMap16Update_16bit_already:
|02AC86| PHB
|02AC87| PHK
|02AC88| PLB

|02AC89| LDA.w $0698

|02AC8C| LDX.w $04AC

|02AC8F| STA.l $7EF800,X

|02AC93| TAX

|02AC94| LDY.w $0692

|02AC97| LDA.w BigMap16UpdateObjects,Y
|02AC9A| STA.l $7E2000,X

|02AC9E| LDX.w $04AC

|02ACA1| STA.l $7EFA00,X

|02ACA5| LDY.w #$0000
|02ACA8| LDX.w $0698
|02ACAB| JSL DrawMap16Anywhere

;---------------------------------------------------------------------------------------------------

|02ACAF| LDA.w $0698
|02ACB2| LDX.w $04AC

|02ACB5| INC A
|02ACB6| INC A
|02ACB7| STA.l $7EF802,X

|02ACBB| LDX.w $0698
|02ACBE| LDY.w $0692

|02ACC1| LDA.w BigMap16UpdateObjects+2,Y
|02ACC4| STA.l $7E2002,X

|02ACC8| LDX.w $04AC
|02ACCB| STA.l $7EFA02,X

|02ACCF| LDY.w #$0002
|02ACD2| LDX.w $0698
|02ACD5| JSL DrawMap16Anywhere

;---------------------------------------------------------------------------------------------------

|02ACD9| LDA.w $0698

|02ACDC| LDX.w $04AC

|02ACDF| CLC
|02ACE0| ADC.w #$0080
|02ACE3| STA.l $7EF804,X

|02ACE7| LDX.w $0698
|02ACEA| LDY.w $0692

|02ACED| LDA.w BigMap16UpdateObjects+4,Y
|02ACF0| STA.l $7E2080,X

|02ACF4| LDX.w $04AC
|02ACF7| STA.l $7EFA04,X

|02ACFB| LDY.w #$0080
|02ACFE| LDX.w $0698
|02AD01| JSL DrawMap16Anywhere

;---------------------------------------------------------------------------------------------------

|02AD05| LDA.w $0698

|02AD08| LDX.w $04AC

|02AD0B| CLC
|02AD0C| ADC.w #$0082
|02AD0F| STA.l $7EF806,X

|02AD13| LDX.w $0698
|02AD16| LDY.w $0692

|02AD19| LDA.w BigMap16UpdateObjects+6,Y
|02AD1C| STA.l $7E2082,X

|02AD20| LDX.w $04AC
|02AD23| STA.l $7EFA06,X

|02AD27| LDY.w #$0082
|02AD2A| LDX.w $0698
|02AD2D| JSL DrawMap16Anywhere

;---------------------------------------------------------------------------------------------------

|02AD31| LDY.w $1000

|02AD34| LDA.w #$FFFF
|02AD37| STA.w $1002,Y

|02AD3A| LDA.w $04AC
|02AD3D| CLC
|02AD3E| ADC.w #$0008
|02AD41| STA.w $04AC

|02AD44| INC.w $0690

|02AD47| LDA.w $0692
|02AD4A| CMP.w #$0020
|02AD4D| BNE .dont_advance_count

|02AD4F| INC.w $0690

.dont_advance_count
|02AD52| PLB

|02AD53| SEP #$30

|02AD55| LDA.b #$01
|02AD57| STA.b $14

;===================================================================================================

NoBigMap16Update:
|02AD59| INC.w $0692

|02AD5C| RTS

;===================================================================================================

StartOverworldMosaicTransition:
|02AD5D| JSR ConditionalMosaicControl

|02AD60| LDA.b $B0
|02AD62| JSL JumpTableLocal
|02AD66| dw OverworldMosaicTransition_HandleSong                 ; 0x00
|02AD68| dw ApplyPaletteFilter_bounce                            ; 0x01
|02AD6A| dw OverworldMosaicTransition_HandleScreensAndLoadShroom ; 0x02

;===================================================================================================

OverworldMosaicTransition_HandleSong:
|02AD6C| LDA.b $11
|02AD6E| CMP.b #$0D
|02AD70| BEQ .dont_fade_in_lw

|02AD72| LDA.b $8A ; OW 00
|02AD74| BEQ .dont_fade_song

.dont_fade_in_lw
|02AD76| LDA.b $8A
|02AD78| CMP.b #$2D ; OW 2D
|02AD7A| BEQ .dont_fade_song

|02AD7C| CMP.b #$0F ; OW 0F
|02AD7E| BEQ .dont_fade_song

|02AD80| CMP.b #$81 ; OW 81
|02AD82| BEQ .dont_fade_song

|02AD84| CMP.b #$80 ; OW 80
|02AD86| BEQ .check_for_ms_grab

|02AD88| CMP.b #$11 ; OW 11
|02AD8A| BEQ .check_for_ms_grab

|02AD8C| CMP.b #$10 ; OW 10
|02AD8E| BEQ .check_for_ms_grab

|02AD90| CMP.b #$02 ; OW 02
|02AD92| BEQ .check_for_ms_grab

|02AD94| CMP.b #$00 ; OW 00
|02AD96| BNE .fade_song

;---------------------------------------------------------------------------------------------------

.check_for_ms_grab
|02AD98| LDA.l $7EF300
|02AD9C| AND.b #$40
|02AD9E| BNE .dont_fade_song

.fade_song
|02ADA0| LDA.b #$F1 ; SONG F1 - fade
|02ADA2| STA.w $012C

.dont_fade_song
|02ADA5| JMP.w ResetTransitionPropsAndAdvance_ResetInterface

;===================================================================================================

OverworldMosaicTransition_HandleScreensAndLoadShroom:
|02ADA8| LDA.b #$80
|02ADAA| STA.b $13

|02ADAC| STZ.b $B0

|02ADAE| LDA.b $8A
|02ADB0| AND.b #$3F ; OW 00, OW 40
|02ADB2| BNE .not_woods_screen

; Load mushroom graphics into 4BPP buffer
|02ADB4| LDA.b #$1E
|02ADB6| JSL WriteTo4BPPBuffer_item_gfx

.not_woods_screen
|02ADBA| LDA.w $040A
|02ADBD| BEQ .check_to_load

; Special OW?
|02ADBF| LDA.b $10
|02ADC1| CMP.b #$0B
|02ADC3| BEQ .check_to_load

|02ADC5| LDY.b #$16

|02ADC7| LDA.b #$01
|02ADC9| STY.b $1C
|02ADCB| STA.b $1D

|02ADCD| LDA.b #$82
|02ADCF| STA.b $99

|02ADD1| LDA.b #$20
|02ADD3| STA.b $9A

|02ADD5| INC.b $11

|02ADD7| RTS

;---------------------------------------------------------------------------------------------------

.check_to_load
|02ADD8| LDA.b $11
|02ADDA| CMP.b #$24
|02ADDC| BNE .dont_load

|02ADDE| JSR LoadOverworldFromSpecialOverworld

|02ADE1| LDA.b $8A
|02ADE3| AND.b #$3F ; OW 00, OW 40
|02ADE5| BNE .dont_load

; mushroom
|02ADE7| LDA.b #$1E
|02ADE9| JSL WriteTo4BPPBuffer_item_gfx

.dont_load
|02ADED| INC.b $11

|02ADEF| RTS

;===================================================================================================

Module09_1D:
|02ADF0| JSR ConditionalMosaicControl

|02ADF3| LDA.b $B0
|02ADF5| JSL JumpTableLocal
|02ADF9| dw ResetTransitionPropsAndAdvance_ResetInterface ; 0x00
|02ADFB| dw ApplyPaletteFilter_bounce                     ; 0x01
|02ADFD| dw Module09_1D_02_FBlankAndEnterModule0A         ; 0x02

;===================================================================================================

Module09_1D_02_FBlankAndEnterModule0A:
|02ADFF| LDA.b #$80
|02AE01| STA.b $13

|02AE03| STZ.b $B0

|02AE05| LDA.b #$0A
|02AE07| STA.b $10
|02AE09| STZ.b $11

|02AE0B| RTS

;===================================================================================================

Module09_1E:
|02AE0C| JSR ConditionalMosaicControl

|02AE0F| LDA.b $B0
|02AE11| JSL JumpTableLocal
|02AE15| dw ResetTransitionPropsAndAdvance_ResetInterface ; 0x00
|02AE17| dw ApplyPaletteFilter_bounce                     ; 0x01
|02AE19| dw Module09_1E_02_FBlankAndLoadSPOW              ; 0x02

;===================================================================================================

Module09_1E_02_FBlankAndLoadSPOW:
|02AE1B| LDA.b #$80
|02AE1D| STA.b $13

|02AE1F| JSR LoadOverworldFromSpecialOverworld

|02AE22| LDA.b #$09
|02AE24| STA.b $10

|02AE26| LDA.b #$0F
|02AE28| STA.b $11

|02AE2A| STZ.b $B0

|02AE2C| RTS

;===================================================================================================

Module09_25:
|02AE2D| JSL InitializeSpriteSlots
|02AE31| JSL ResetAndReloadOverworldSprites

|02AE35| STZ.w $0308
|02AE38| STZ.w $0309

;===================================================================================================

Overworld_LoadSubscreenAndSilenceSFX1:
|02AE3B| LDA.b #$05 ; SFX1.05
|02AE3D| STA.w $012D

;===================================================================================================

ReloadSubscreenOverlay:
|02AE40| REP #$30

|02AE42| LDA.b $8A
|02AE44| STA.l $7EC213

|02AE48| LDA.b $84
|02AE4A| STA.l $7EC215

|02AE4E| LDA.b $88
|02AE50| STA.l $7EC217

|02AE54| LDA.b $86
|02AE56| STA.l $7EC219

|02AE5A| LDA.w $0418
|02AE5D| STA.l $7EC21B

|02AE61| LDA.w $0410
|02AE64| STA.l $7EC21D

|02AE68| LDA.w $0416
|02AE6B| STA.l $7EC21F

|02AE6F| STZ.b $8C

|02AE71| STZ.w $0622
|02AE74| STZ.w $0620

;---------------------------------------------------------------------------------------------------

|02AE77| LDY.w #$0390

|02AE7A| LDA.b $8A
|02AE7C| CMP.w #$0080 ; SPOW
|02AE7F| BCC .normal_overworld

|02AE81| LDX.w #$0097 ; OW 97

|02AE84| LDA.b $A0
|02AE86| CMP.w #$0180 ; OW 80
|02AE89| BNE .not_mastersword

|02AE8B| LDX.w #$0080 ; OW 80
|02AE8E| LDA.l $7EF280,X

|02AE92| LDX.w #$0097 ; OW 97

|02AE95| AND.w #$0040
|02AE98| BNE .disable_overlay

;---------------------------------------------------------------------------------------------------

.do_load_special
|02AE9A| JMP.w .load_overlay

;---------------------------------------------------------------------------------------------------

.not_mastersword
|02AE9D| LDX.w #$0094 ; OW 94
|02AEA0| CMP.w #$0181 ; OW 81
|02AEA3| BEQ .do_load_special

|02AEA5| LDX.w #$0093 ; OW 93
|02AEA8| CMP.w #$0189 ; OW 89
|02AEAB| BEQ .do_load_special

|02AEAD| CMP.w #$0182 ; OW 82
|02AEB0| BEQ .disable_with_sfx

|02AEB2| CMP.w #$0183 ; OW 83
|02AEB5| BNE .disable_overlay

;---------------------------------------------------------------------------------------------------

.disable_with_sfx
|02AEB7| SEP #$30

|02AEB9| LDA.b #$01 ; SFX1.01
|02AEBB| STA.w $012D

;---------------------------------------------------------------------------------------------------

.disable_overlay
|02AEBE| SEP #$30

|02AEC0| STZ.b $1D

|02AEC2| INC.b $11

|02AEC4| RTS

;---------------------------------------------------------------------------------------------------

.normal_overworld
|02AEC5| AND.w #$003F ; OW 00, OW 40
|02AEC8| BNE .not_any_woods

|02AECA| LDA.b $8A
|02AECC| AND.w #$0040
|02AECF| BNE .skull_woods

|02AED1| LDX.w #$0080 ; OW 80
|02AED4| LDA.l $7EF280,X

|02AED8| LDX.w #$009E ; OW 9E
|02AEDB| AND.w #$0040
|02AEDE| BNE .load_overlay

.skull_woods
|02AEE0| LDX.w #$009D ; OW 9D
|02AEE3| BRA .load_overlay

;---------------------------------------------------------------------------------------------------

.not_any_woods
|02AEE5| LDX.w #$0095 ; OW 95

|02AEE8| LDA.b $8A
|02AEEA| CMP.w #$0003 ; OW 03
|02AEED| BEQ .load_overlay

|02AEEF| CMP.w #$0005 ; OW 05
|02AEF2| BEQ .load_overlay

|02AEF4| CMP.w #$0007 ; OW 07
|02AEF7| BEQ .load_overlay

|02AEF9| LDX.w #$009C ; OW 9C

|02AEFC| CMP.w #$0043 ; OW 43
|02AEFF| BEQ .load_overlay

|02AF01| CMP.w #$0045 ; OW 45
|02AF04| BEQ .load_overlay

|02AF06| CMP.w #$0047 ; OW 47
|02AF09| BEQ .load_overlay

|02AF0B| CMP.w #$0070 ; OW 70
|02AF0E| BNE .not_mire

|02AF10| LDA.l $7EF2F0
|02AF14| AND.w #$0020
|02AF17| BNE .load_overlay

|02AF19| BRA .load_rain

;---------------------------------------------------------------------------------------------------

.not_mire
|02AF1B| LDX.w #$0096 ; OW 96

|02AF1E| LDA.l $7EF3C5
|02AF22| AND.w #$00FF
|02AF25| CMP.w #$0002
|02AF28| BCS .load_overlay

.load_rain
|02AF2A| LDX.w #$009F ; OW 9F

;---------------------------------------------------------------------------------------------------

.load_overlay
|02AF2D| STY.b $84

|02AF2F| STX.b $8A
|02AF31| STX.b $8C

|02AF33| LDA.b $84
|02AF35| SEC
|02AF36| SBC.w #$0400
|02AF39| AND.w #$0F80
|02AF3C| ASL A
|02AF3D| XBA
|02AF3E| STA.b $88

|02AF40| LDA.b $84
|02AF42| SEC
|02AF43| SBC.w #$0010
|02AF46| AND.w #$003E
|02AF49| LSR A
|02AF4A| STA.b $86

|02AF4C| STZ.w $0418
|02AF4F| STZ.w $0410
|02AF52| STZ.w $0416

;---------------------------------------------------------------------------------------------------

|02AF55| SEP #$30

; Clip to black inside color window; use subscreen
|02AF57| LDA.b #$82
|02AF59| STA.b $99

|02AF5B| LDA.b #$16
|02AF5D| STA.b $1C

|02AF5F| LDA.b #$01
|02AF61| STA.b $1D

|02AF63| CPX.b #$9F ; OW 9F
|02AF65| BNE .no_rain_sfx

|02AF67| LDA.b #$01 ; SFX1.01
|02AF69| STA.w $012D

.no_rain_sfx
|02AF6C| LDA.b #$72

|02AF6E| CPX.b #$97 ; OW 97
|02AF70| BEQ .continue_with_subscreen

|02AF72| CPX.b #$94 ; OW 94
|02AF74| BEQ .continue_with_subscreen

|02AF76| CPX.b #$93 ; OW 93
|02AF78| BEQ .continue_with_subscreen

|02AF7A| CPX.b #$9D ; OW 9D
|02AF7C| BEQ .continue_with_subscreen

|02AF7E| CPX.b #$9E ; OW 9E
|02AF80| BEQ .continue_with_subscreen

|02AF82| CPX.b #$9F ; OW 9F
|02AF84| BEQ .continue_with_subscreen

|02AF86| LDA.b #$20

|02AF88| CPX.b #$95 ; OW 95
|02AF8A| BEQ .continue_with_subscreen

|02AF8C| CPX.b #$9C ; OW 9C
|02AF8E| BEQ .continue_with_subscreen

|02AF90| LDA.l $7EC213
|02AF94| TAX

|02AF95| LDA.b #$20
|02AF97| CPX.b #$5B ; OW 5B
|02AF99| BEQ .continue_with_subscreen

|02AF9B| CPX.b #$1B ; OW 1B
|02AF9D| BNE .disable_subscreen

|02AF9F| LDX.b $11
|02AFA1| CPX.b #$23
|02AFA3| BEQ .continue_with_subscreen

|02AFA5| CPX.b #$2C
|02AFA7| BEQ .continue_with_subscreen

;---------------------------------------------------------------------------------------------------

.disable_subscreen
|02AFA9| STZ.b $1D

.continue_with_subscreen
|02AFAB| STA.b $9A

|02AFAD| JSR LoadOverworldOverlay

|02AFB0| LDA.b $8C
|02AFB2| CMP.b #$94 ; OW 94
|02AFB4| BNE .not_hobo_bridge_shadow

|02AFB6| LDA.b $E7
|02AFB8| ORA.b #$01
|02AFBA| STA.b $E7

.not_hobo_bridge_shadow
|02AFBC| REP #$20

|02AFBE| LDA.l $7EC213
|02AFC2| STA.b $8A

|02AFC4| LDA.l $7EC215
|02AFC8| STA.b $84

|02AFCA| LDA.l $7EC217
|02AFCE| STA.b $88

|02AFD0| LDA.l $7EC219
|02AFD4| STA.b $86

|02AFD6| LDA.l $7EC21B
|02AFDA| STA.w $0418

|02AFDD| LDA.l $7EC21D
|02AFE1| STA.w $0410

|02AFE4| LDA.l $7EC21F
|02AFE8| STA.w $0416

|02AFEB| SEP #$20

|02AFED| RTS

;===================================================================================================

Module09_FadeBackInFromMosaic:
|02AFEE| LDA.l $7EC007
|02AFF2| LSR A
|02AFF3| BCC .delay

|02AFF5| LDA.l $7EC011
|02AFF9| SEC
|02AFFA| SBC.b #$10
|02AFFC| STA.l $7EC011

.delay
|02B000| JSR CopyMosaicControl

|02B003| LDA.b $B0
|02B005| JSL JumpTableLocal
|02B009| dw OverworldMosaicTransition_RecoverDestinationPalettes ; 0x00
|02B00B| dw OverworldMosaicTransition_FilterAndLoadGraphics      ; 0x01
|02B00D| dw OverworldMosaicTransition_RecoverSongAndSetMoving    ; 0x02

;===================================================================================================

OverworldMosaicTransition_RecoverDestinationPalettes:
|02B00F| LDX.b $8A

|02B011| LDA.l $7EFD40,X
|02B015| STA.b $00

|02B017| LDA.l OverworldPalettesScreenToSet,X
|02B01B| JSL OverworldPalettesLoader

|02B01F| BRA OverworldMosaicTransition_LoadSpriteGraphicsAndSetMosaic

;===================================================================================================

OverworldMosaicTransition_RecoverSongAndSetMoving:
|02B021| LDA.w $0130
|02B024| STA.w $0133

|02B027| LDA.b $8A
|02B029| CMP.b #$80 ; OW 80
|02B02B| BEQ .dont_set_song

|02B02D| LDX.b #$02 ; SONG 02

|02B02F| CMP.b #$40
|02B031| BCC .light_world

|02B033| LDX.b #$09 ; SONG 09

.light_world
|02B035| STX.w $012C

|02B038| LDA.b $8A
|02B03A| AND.b #$3F ; OW 00, OW 40
|02B03C| BNE .dont_set_song

|02B03E| LDX.b #$0D

|02B040| LDA.l $7EF3CA
|02B044| BNE .in_dark_world

|02B046| LDA.l $7EF300
|02B04A| AND.b #$40
|02B04C| BEQ .ped_not_pulled

|02B04E| STZ.w $012C

|02B051| LDX.b #$02 ; SONG 02 - [USELESS] ?

|02B053| BRA .dont_set_song

.ped_not_pulled
|02B055| LDX.b #$05 ; SONG 05

.in_dark_world
|02B057| STX.w $012C

;---------------------------------------------------------------------------------------------------

.dont_set_song
|02B05A| STZ.b $11 ; [USELESS]

|02B05C| LDA.b #$08
|02B05E| STA.b $11

|02B060| STZ.b $B0

|02B062| LDA.b $10
|02B064| CMP.b #$0B
|02B066| BNE .exit

|02B068| LDA.b #$09
|02B06A| STA.b $10

|02B06C| LDA.b #$1F
|02B06E| STA.b $11

|02B070| LDA.b #$0C
|02B072| STA.w $069A

.exit
|02B075| RTS

;===================================================================================================

Module09_1C:
|02B076| LDA.l $7EC007
|02B07A| LSR A
|02B07B| BCC .delay

|02B07D| LDA.l $7EC011
|02B081| SEC
|02B082| SBC.b #$10
|02B084| STA.l $7EC011

.delay
|02B088| JSR CopyMosaicControl

|02B08B| LDA.b $B0
|02B08D| JSL JumpTableLocal
|02B091| dw OverworldMosaicTransition_LoadSpriteGraphicsAndSetMosaic ; 0x00
|02B093| dw OverworldMosaicTransition_FilterAndLoadGraphics          ; 0x01
|02B095| dw Module09_1C_02_HandleMusic                               ; 0x02

;===================================================================================================

OverworldMosaicTransition_LoadSpriteGraphicsAndSetMosaic:
|02B097| JSL LoadNewSpriteGFXSet

|02B09B| LDA.b #$0F
|02B09D| STA.b $13

|02B09F| LDA.b #$80
|02B0A1| STA.b $9B

|02B0A3| LDA.l $7EC00B
|02B0A7| DEC A
|02B0A8| STA.l $7EC007

|02B0AC| LDA.b #$00
|02B0AE| STA.l $7EC00B

|02B0B2| LDA.b #$02
|02B0B4| STA.l $7EC009

|02B0B8| INC.b $B0

|02B0BA| RTS

;===================================================================================================

OverworldMosaicTransition_FilterAndLoadGraphics:
|02B0BB| JSL IncrementalVRAMUpload
|02B0BF| JSL ApplyPaletteFilter

|02B0C3| RTS

;===================================================================================================

Module09_1C_02_HandleMusic:
; Are we in MS grove?
|02B0C4| LDA.b $8A
|02B0C6| CMP.b #$80 ; OW 80
|02B0C8| BEQ .no_song_change

|02B0CA| LDA.b #$02 ; SONG 02
|02B0CC| STA.w $012C

; are we in the woods?
|02B0CF| LDA.b $8A
|02B0D1| AND.b #$3F ; OW 00, OW 40
|02B0D3| BNE .no_song_change

|02B0D5| LDA.b #$05 ; SONG 05
|02B0D7| STA.w $012C

.no_song_change
|02B0DA| LDA.b #$08
|02B0DC| STA.b $11

|02B0DE| STZ.b $B0

|02B0E0| RTS

;===================================================================================================

Module09_22:
|02B0E1| INC.b $13

|02B0E3| LDA.b $13
|02B0E5| CMP.b #$0F
|02B0E7| BNE .exit

|02B0E9| STZ.b $11
|02B0EB| STZ.b $B0

.exit
|02B0ED| RTS

;===================================================================================================

Module09_18:
|02B0EE| STZ.w $032A

|02B0F1| LDA.b $10
|02B0F3| PHA

|02B0F4| LDA.b $11
|02B0F6| PHA

|02B0F7| JSR LoadSpecialOverworld
|02B0FA| JSR Module09_25

|02B0FD| PLA
|02B0FE| INC A
|02B0FF| STA.b $11

|02B101| PLA
|02B102| STA.b $10

|02B104| RTS

;===================================================================================================

Module09_19:
|02B105| LDA.b $10
|02B107| PHA

|02B108| LDA.b $11
|02B10A| PHA

|02B10B| JSR Module08_02_LoadAndAdvance

|02B10E| PLA
|02B10F| INC A
|02B110| STA.b $11

|02B112| PLA
|02B113| STA.b $10

|02B115| RTS

;===================================================================================================

LoadAndBuildOverworldScreen_long:
|02B116| JSR LoadAndBuildOverworldScreen

|02B119| RTL

;===================================================================================================

ReloadSubscreenOverlayAndAdvance_long:
|02B11A| JSR ReloadSubscreenOverlay

|02B11D| DEC.b $11

|02B11F| RTL

;===================================================================================================

Module09_MirrorWarp:
|02B120| JSL .main

|02B124| RTS

;---------------------------------------------------------------------------------------------------

.main
|02B125| INC.w $0710

|02B128| LDA.b $B0
|02B12A| JSL JumpTableLong
|02B12E| dl MirrorWarp_Initialize                 ; 0x00
|02B131| dl MirrorWarp_BuildAndEnableHDMATable    ; 0x01
|02B134| dl MirrorWarp_BuildWavingHDMATable       ; 0x02
|02B137| dl MirrorWarp_BuildDewavingHDMATable     ; 0x03
|02B13A| dl MirrorWarp_FinalizeAndLoadDestination ; 0x04

;===================================================================================================

MirrorWarp_Initialize:
|02B13D| LDA.b $8A
|02B13F| CMP.b #$80 ; SPOW
|02B141| BCC .not_special

|02B143| STZ.b $11
|02B145| STZ.b $B0
|02B147| STZ.w $0200

|02B14A| RTL

;---------------------------------------------------------------------------------------------------

.not_special
|02B14B| LDA.b #$08 ; SONG 08
|02B14D| STA.w $012C
|02B150| STA.w $0ABF

|02B153| LDA.b #$90
|02B155| STA.w $031F

|02B158| JSL InitializeMirrorHDMA

|02B15C| LDA.l $7EF3CA
|02B160| EOR.b #$40
|02B162| STA.l $7EF3CA

|02B166| STZ.w $04C8
|02B169| STZ.w $04C9

|02B16C| LDA.b $8A
|02B16E| AND.b #$3F
|02B170| ORA.l $7EF3CA
|02B174| STA.b $8A
|02B176| STA.w $040A

|02B179| STZ.w $0200

|02B17C| JSL PaletteFilter_InitializeWhiteFilter
|02B180| JSR LoadGraphicsAndScreenSize

|02B183| INC.b $B0

|02B185| RTL

;===================================================================================================

MirrorWarp_FinalizeAndLoadDestination:
|02B186| REP #$20

; indirect HDMA, 2 registers write once
; register WH0
|02B188| LDA.w #$2641
|02B18B| STA.w DMA7MODE

|02B18E| LDX.b #$3E

|02B190| LDA.w #$FF00

.next
|02B193| STA.w $1B00,X
|02B196| STA.w $1B40,X
|02B199| STA.w $1B80,X
|02B19C| STA.w $1BC0,X
|02B19F| STA.w $1C00,X
|02B1A2| STA.w $1C40,X
|02B1A5| STA.w $1C80,X

|02B1A8| DEX
|02B1A9| DEX
|02B1AA| BPL .next

;---------------------------------------------------------------------------------------------------

|02B1AC| LDA.w #$0000
|02B1AF| STA.l $7EC007
|02B1B3| STA.l $7EC009

|02B1B7| SEP #$20

|02B1B9| JSL ReloadPreviouslyLoadedSheets

|02B1BD| LDA.b #$80
|02B1BF| STA.b $9B

;---------------------------------------------------------------------------------------------------

|02B1C1| LDX.b #$04 ; SONG 04

|02B1C3| LDA.l $7EF3CA
|02B1C7| BEQ .light_world

|02B1C9| LDA.l $7EF357
|02B1CD| BEQ .set_song

.light_world
; check screen ID for dark world too
|02B1CF| LDX.b #$09 ; SONG 09

|02B1D1| LDA.b $8A
|02B1D3| CMP.b #$40
|02B1D5| BCS .set_song

; check for kak screen
|02B1D7| LDX.b #$02 ; SONG 02
|02B1D9| CMP.b #$18 ; OW 18
|02B1DB| BNE .set_song

; check for rain state
|02B1DD| LDA.l $7EF3C5
|02B1E1| CMP.b #$03 ; SONG 03
|02B1E3| BCS .set_song

|02B1E5| LDX.b #$07 ; SONG 07

.set_song
|02B1E7| STX.w $012C

;---------------------------------------------------------------------------------------------------

|02B1EA| LDA.b $8A

; skull woods screen
|02B1EC| CMP.b #$40 ; OW 40
|02B1EE| BEQ .use_sw_march

; check for dark dm screens
|02B1F0| CMP.b #$43 ; OW 43
|02B1F2| BEQ .dark_dm

|02B1F4| CMP.b #$45 ; OW 45
|02B1F6| BEQ .dark_dm

|02B1F8| CMP.b #$47 ; OW 47
|02B1FA| BNE .no_second_song_change

.dark_dm
|02B1FC| LDA.b #$09 ; SFX1.09
|02B1FE| STA.w $012D

.use_sw_march
|02B201| LDX.b #$0D ; SONG 0D

|02B203| LDA.l $7EF357
|02B207| BNE .have_pearl

|02B209| LDX.b #$04 ; SONG 04

.have_pearl
|02B20B| STX.w $012C

;---------------------------------------------------------------------------------------------------

.no_second_song_change
|02B20E| LDA.b $11
|02B210| STA.w $010C

|02B213| STZ.b $11
|02B215| STZ.b $B0

|02B217| STZ.w $0200
|02B21A| STZ.w $0710

|02B21D| RTL

;===================================================================================================

MirrorWarp_HandleCastlePyramidSubscreen:
|02B21E| JSR Overworld_LoadSubscreenAndSilenceSFX1

|02B221| LDA.b $8A
|02B223| CMP.b #$1B ; OW 1B
|02B225| BEQ .is_castle

|02B227| CMP.b #$5B ; OW 5B
|02B229| BNE .not_pyramid

.is_castle
|02B22B| LDA.b #$01
|02B22D| STA.b $1D

.not_pyramid
|02B22F| RTL

;===================================================================================================

DrawScreenAtCurrentMirrorPosition:
|02B230| REP #$20

|02B232| LDA.b $84
|02B234| PHA

|02B235| LDA.b $86
|02B237| PHA

|02B238| LDA.b $88
|02B23A| PHA

|02B23B| LDX.b $8A

|02B23D| LDA.l OverworldScreenSize,X
|02B241| AND.w #$00FF
|02B244| BEQ .no_adjustment

|02B246| LDA.w #$0390
|02B249| STA.b $84

|02B24B| SEC
|02B24C| SBC.w #$0400
|02B24F| AND.w #$0F80
|02B252| ASL A
|02B253| XBA
|02B254| STA.b $88

|02B256| LDA.b $84
|02B258| SEC
|02B259| SBC.w #$0010
|02B25C| AND.w #$003E
|02B25F| LSR A
|02B260| STA.b $86

;---------------------------------------------------------------------------------------------------

.no_adjustment
|02B262| SEP #$20

|02B264| JSR DrawOverworldQuadrantsAndOverlays

|02B267| LDA.b $11
|02B269| CMP.b #$2C
|02B26B| BNE .not_mirror_bonk

|02B26D| JSR RecoverTilesFromMirrorBonk

.not_mirror_bonk
|02B270| REP #$20

|02B272| PLA
|02B273| STA.b $88

|02B275| PLA
|02B276| STA.b $86

|02B278| PLA
|02B279| STA.b $84

|02B27B| SEP #$20

|02B27D| RTL

;===================================================================================================

MirrorWarp_LoadSpritesAndColors:
|02B27E| LDA.b #$90
|02B280| STA.w $031F

|02B283| REP #$20

|02B285| LDA.b $84
|02B287| PHA

|02B288| LDA.b $86
|02B28A| PHA

|02B28B| LDA.b $88
|02B28D| PHA

|02B28E| LDA.w #$FFFF
|02B291| STA.b $C8

|02B293| STZ.b $CA
|02B295| STZ.b $CC

;---------------------------------------------------------------------------------------------------

|02B297| LDX.b $8A

|02B299| LDA.l OverworldScreenSize,X
|02B29D| AND.w #$00FF
|02B2A0| BEQ .no_adjustment

|02B2A2| LDA.w #$0390
|02B2A5| STA.b $84

|02B2A7| SEC
|02B2A8| SBC.w #$0400
|02B2AB| AND.w #$0F80
|02B2AE| ASL A
|02B2AF| XBA
|02B2B0| STA.b $88

|02B2B2| LDA.b $84
|02B2B4| SEC
|02B2B5| SBC.w #$0010
|02B2B8| AND.w #$003E
|02B2BB| LSR A
|02B2BC| STA.b $86

;---------------------------------------------------------------------------------------------------

.no_adjustment
|02B2BE| SEP #$20

|02B2C0| JSR BuildOverworldFromMap16

|02B2C3| REP #$20

|02B2C5| PLA
|02B2C6| STA.b $88

|02B2C8| PLA
|02B2C9| STA.b $86

|02B2CB| PLA
|02B2CC| STA.b $84

;---------------------------------------------------------------------------------------------------

|02B2CE| SEP #$20

|02B2D0| JSR OverworldLoadScreensPaletteSet

|02B2D3| LDX.b $8A

|02B2D5| LDA.l $7EFD40,X
|02B2D9| STA.b $00

|02B2DB| LDA.l OverworldPalettesScreenToSet,X
|02B2DF| JSL OverworldPalettesLoader

|02B2E3| JSL SetOverworldBackgroundColorCacheOnly
|02B2E7| JSL Overworld_SetFixedColAndScroll

|02B2EB| LDA.b $8A
|02B2ED| CMP.b #$1B ; OW 1B
|02B2EF| BEQ .is_castle

|02B2F1| CMP.b #$5B ; OW 5B
|02B2F3| BNE .not_pyramid_a

.is_castle
|02B2F5| LDA.b #$01
|02B2F7| STA.b $1D

;---------------------------------------------------------------------------------------------------

.not_pyramid_a
|02B2F9| REP #$20

|02B2FB| LDX.b #$00

|02B2FD| LDA.w #$7FFF ; RGB: #F8F8F8

.next_color
|02B300| STA.l $7EC540,X
|02B304| STA.l $7EC560,X
|02B308| STA.l $7EC580,X
|02B30C| STA.l $7EC5A0,X
|02B310| STA.l $7EC5C0,X
|02B314| STA.l $7EC5E0,X

|02B318| INX
|02B319| INX
|02B31A| CPX.b #$20
|02B31C| BNE .next_color

|02B31E| STA.l $7EC500

;---------------------------------------------------------------------------------------------------

|02B322| LDA.b $8A
|02B324| CMP.w #$005B ; OW 5B
|02B327| BNE .not_pyramid_b

|02B329| LDA.w #$0000 ; RGB: #000000
|02B32C| STA.l $7EC500
|02B330| STA.l $7EC540

;---------------------------------------------------------------------------------------------------

.not_pyramid_b
|02B334| SEP #$20

|02B336| JSL ResetAllSprites
|02B33A| JSL ResetAndReloadOverworldSprites

|02B33E| JSL ResetBasicActions

|02B342| JSR DeleteCertainAncillaeStopDashing

|02B345| LDA.b #$14 ; LINKSTATE 14
|02B347| STA.b $5D

; no mirror in dark world
|02B349| LDA.b $8A
|02B34B| AND.b #$40
|02B34D| BNE .exit

|02B34F| JSL InitializeMirrorPortal

.exit
|02B353| RTL

;===================================================================================================

Module09_2B:
|02B354| JSL PaletteBlackAndWhiteSomething_Conditional

;===================================================================================================

Module09_2D_WaitForBird:
|02B358| RTS

;===================================================================================================

Module09_2E_Whirlpool:
|02B359| INC.w $0710

|02B35C| LDA.b $B0
|02B35E| JSL JumpTableLocal
|02B362| dw Module09_2E_00_InitWhirlpool        ; 0x00
|02B364| dw Module09_2E_01_FilterBlue           ; 0x01
|02B366| dw Module09_2E_01_MoreBlue             ; 0x02
|02B368| dw Module09_2E_03_FindDestination      ; 0x03
|02B36A| dw Module09_2E_04                      ; 0x04
|02B36C| dw Module09_2E_05_LoadDestinationMap   ; 0x05
|02B36E| dw Module09_2E_04                      ; 0x06
|02B370| dw Module09_2E_07_LoadAuxGraphics      ; 0x07
|02B372| dw Module09_2E_08_TriggerTilemapUpdate ; 0x08
|02B374| dw Module09_2E_09_LoadPalettes         ; 0x09
|02B376| dw Module09_2E_0A                      ; 0x0A
|02B378| dw Module09_2E_0B                      ; 0x0B
|02B37A| dw Module09_2E_0C_FinalizeWarp         ; 0x0C

;===================================================================================================

Module09_2E_00_InitWhirlpool:
|02B37C| LDA.b #$34 ; SFX2.34
|02B37E| STA.w $012E

|02B381| STZ.w $0200

|02B384| LDA.b #$00
|02B386| STA.l $7EC007
|02B38A| STA.l $7EC008

|02B38E| INC.b $B0

|02B390| RTS

;===================================================================================================

Module09_2E_01_FilterBlue:
|02B391| JSL PaletteFilter_WhirlpoolBlue

|02B395| RTS

;===================================================================================================

Module09_2E_01_MoreBlue:
|02B396| JSL PaletteFilter_IsolateWhirlpoolBlue

|02B39A| RTS

;===================================================================================================

Module09_2E_0B:
|02B39B| JSL IncrementalVRAMUpload
|02B39F| JSL PaletteFilter_WhirlpoolRestoreBlue

|02B3A3| RTS

;===================================================================================================

Module09_2E_0A:
|02B3A4| JSL PaletteFilter_WhirlpoolRestoreRedGreen

|02B3A8| LDA.l $7EC007
|02B3AC| BEQ .exit

|02B3AE| JSL PaletteFilter_WhirlpoolRestoreRedGreen

.exit
|02B3B2| RTS

;===================================================================================================

Module09_2E_03_FindDestination:
|02B3B3| LDA.b #$9F ; max blue
|02B3B5| STA.b $9E

|02B3B7| STZ.w $0AA9
|02B3BA| STZ.w $0AB2

|02B3BD| JSL FindPartnerWhirlpoolExit

|02B3C1| STZ.b $B2

|02B3C3| JSL ReloadSubscreenOverlayAndAdvance_long

|02B3C7| LDA.b #$0C
|02B3C9| STA.b $17

|02B3CB| STZ.b $15

|02B3CD| BRA BlueRemoval

;===================================================================================================

Module09_2E_04:
|02B3CF| LDA.b #$0D
|02B3D1| STA.b $17

|02B3D3| BRA AdvanceWhirlpooling

;===================================================================================================

Module09_2E_05_LoadDestinationMap:
|02B3D5| JSL Overworld_LoadOverlayAndMap

|02B3D9| LDA.b #$0C
|02B3DB| STA.b $17

|02B3DD| BRA EnableWhirlpoolScreen

;===================================================================================================

Module09_2E_07_LoadAuxGraphics:
|02B3DF| JSR Module09_LoadAuxGFX

|02B3E2| BRA DecrementWhirlpoolSubmodule

;===================================================================================================

Module09_2E_08_TriggerTilemapUpdate:
|02B3E4| JSR Module09_TriggerTilemapUpdate

|02B3E7| LDA.b #$0F
|02B3E9| STA.b $13

|02B3EB| INC.w $0710

;===================================================================================================

DecrementWhirlpoolSubmodule:
|02B3EE| DEC.b $11

|02B3F0| INC.b $B0

|02B3F2| RTS

;===================================================================================================

Module09_2E_09_LoadPalettes:
|02B3F3| STZ.w $0AA9

|02B3F6| JSL PaletteLoad_SpriteMain
|02B3FA| JSL PaletteLoad_SpriteEnvironment
|02B3FE| JSL PaletteLoad_SpritePal0Left
|02B402| JSL PaletteLoad_HUD
|02B406| JSL PaletteLoad_OWBGMain

|02B40A| LDX.b $8A

|02B40C| LDA.l $7EFD40,X
|02B410| STA.b $00

|02B412| LDA.l OverworldPalettesScreenToSet,X
|02B416| JSL OverworldPalettesLoader
|02B41A| JSL SetOverworldBackgroundColor
|02B41E| JSL Overworld_SetFixedColAndScroll
|02B422| JSL LoadNewSpriteGFXSet

;===================================================================================================

BlueRemoval:
|02B426| LDA.b #$80
|02B428| STA.b $9E

;===================================================================================================

EnableWhirlpoolScreen:
|02B42A| LDA.b #$0F
|02B42C| STA.b $13

;===================================================================================================

AdvanceWhirlpooling:
|02B42E| INC.w $0710
|02B431| INC.b $B0

|02B433| RTS

;===================================================================================================

Module09_2E_0C_FinalizeWarp:
|02B434| LDA.b #$90
|02B436| STA.w $031F

|02B439| JSL ReloadPreviouslyLoadedSheets

|02B43D| LDA.b #$80
|02B43F| STA.b $9B

|02B441| LDX.b #$02 ; SONG 02

|02B443| LDA.l $7EF3CA
|02B447| BEQ .light_world

|02B449| LDX.b #$09 ; SONG 09

.light_world
|02B44B| STX.w $012C

|02B44E| STZ.b $11
|02B450| STZ.b $B0

|02B452| STZ.w $0200
|02B455| STZ.w $0710

|02B458| RTS

;===================================================================================================

Module09_2F:
|02B459| JSL CreateTurtleRockPortal

|02B45D| STZ.b $11

|02B45F| RTS

;===================================================================================================

Module09_2A_RecoverFromDrowning:
|02B460| LDA.b $B0
|02B462| JSL JumpTableLocal
|02B466| dw Module09_2A_00_ScrollToLand
|02B468| dw RecoverPositionAfterDrowning

;===================================================================================================

Module09_2A_00_ScrollToLand:
|02B46A| REP #$20

|02B46C| STZ.b $00
|02B46E| STZ.b $02

|02B470| LDA.b $22
|02B472| CMP.l $7EC186
|02B476| BEQ .set_x
|02B478| BCC .x_low

|02B47A| DEC.b $02

|02B47C| DEC A
|02B47D| CMP.l $7EC186
|02B481| BEQ .set_x

|02B483| DEC.b $02

|02B485| DEC A

|02B486| BRA .set_x

.x_low
|02B488| INC.b $02

|02B48A| INC A
|02B48B| CMP.l $7EC186
|02B48F| BEQ .set_x

|02B491| INC.b $02
|02B493| INC A

.set_x
|02B494| STA.b $22

;---------------------------------------------------------------------------------------------------

|02B496| LDA.b $20
|02B498| CMP.l $7EC184
|02B49C| BEQ .set_y
|02B49E| BCC .y_low

|02B4A0| DEC.b $00

|02B4A2| DEC A
|02B4A3| CMP.l $7EC184
|02B4A7| BEQ .set_y

|02B4A9| DEC.b $00

|02B4AB| DEC A

|02B4AC| BRA .set_y

.y_low
|02B4AE| INC.b $00

|02B4B0| INC A
|02B4B1| CMP.l $7EC184
|02B4B5| BEQ .set_y

|02B4B7| INC.b $00
|02B4B9| INC A

.set_y
|02B4BA| STA.b $20

;---------------------------------------------------------------------------------------------------

|02B4BC| CMP.l $7EC184
|02B4C0| BNE .delay_advance

|02B4C2| LDA.b $22
|02B4C4| CMP.l $7EC186
|02B4C8| BNE .delay_advance

|02B4CA| INC.b $B0

|02B4CC| STZ.b $46

.delay_advance
|02B4CE| SEP #$20

|02B4D0| LDA.b $00
|02B4D2| STA.b $30

|02B4D4| LDA.b $02
|02B4D6| STA.b $31

|02B4D8| JSR Overworld_OperateCameraScroll

|02B4DB| LDA.w $0416
|02B4DE| BEQ .exit

|02B4E0| JSR OverworldHandleMapScroll

.exit
|02B4E3| RTS

;===================================================================================================

RoomQuadrantLayoutValues:
|02B4E4| db $0F ; xxxx - 0 NW
|02B4E5| db $0F ; xxxx - 0 NE
|02B4E6| db $0F ; xxxx - 0 SW
|02B4E7| db $0F ; xxxx - 0 SE
|02B4E8| db $0B ; x.xx - 1 NW
|02B4E9| db $0B ; x.xx - 1 NE
|02B4EA| db $07 ; .xxx - 1 SW
|02B4EB| db $07 ; .xxx - 1 SE
|02B4EC| db $0F ; xxxx - 2 NW
|02B4ED| db $0B ; x.xx - 2 NE
|02B4EE| db $0F ; xxxx - 2 SW
|02B4EF| db $07 ; .xxx - 2 SE
|02B4F0| db $0B ; x.xx - 3 NW
|02B4F1| db $0F ; xxxx - 3 NE
|02B4F2| db $07 ; .xxx - 3 SW
|02B4F3| db $0F ; xxxx - 3 SE
|02B4F4| db $0E ; xxx. - 4 NW
|02B4F5| db $0D ; xx.x - 4 NE
|02B4F6| db $0E ; xxx. - 4 SW
|02B4F7| db $0D ; xx.x - 4 SE
|02B4F8| db $0F ; xxxx - 5 NW
|02B4F9| db $0F ; xxxx - 5 NE
|02B4FA| db $0E ; xxx. - 5 SW
|02B4FB| db $0D ; xx.x - 5 SE
|02B4FC| db $0E ; xxx. - 6 NW
|02B4FD| db $0D ; xx.x - 6 NE
|02B4FE| db $0F ; xxxx - 6 SW
|02B4FF| db $0F ; xxxx - 6 SE
|02B500| db $0A ; x.x. - 7 NW
|02B501| db $09 ; x..x - 7 NE
|02B502| db $06 ; .xx. - 7 SW
|02B503| db $05 ; .x.x - 7 SE

;===================================================================================================

QuadrantLayoutFlagBitfield:
|02B504| db $08, $04, $02, $01, $0C, $0C, $03, $03
|02B50C| db $0A, $05, $0A, $05, $0F, $0F, $0F, $0F

;===================================================================================================

AdjustForRoomLayout:
|02B514| PHB
|02B515| PHK
|02B516| PLB

|02B517| SEP #$30

|02B519| JSR AdjustQuadrant

|02B51C| STZ.b $A6

|02B51E| LDY.b #$02

|02B520| LDA.b $A9
|02B522| BNE .right_side

|02B524| LDY.b #$01

.right_side
|02B526| STY.b $00

|02B528| LDA.w $0452
|02B52B| BNE .from_wall

|02B52D| LDX.b $A8

|02B52F| LDA.w RoomQuadrantLayoutValues,X
|02B532| AND.b $00
|02B534| BNE .small_horizontally

.from_wall
|02B536| LDA.b #$02
|02B538| STA.b $A6

.small_horizontally
|02B53A| STZ.b $A7

|02B53C| LDY.b #$08
|02B53E| LDA.b $AA
|02B540| BNE .bottom_side

|02B542| LDY.b #$04

.bottom_side
|02B544| STY.b $00

|02B546| LDA.w $0453
|02B549| BNE .blast_wall_makes_tall

|02B54B| LDX.b $A8
|02B54D| LDA.w RoomQuadrantLayoutValues,X
|02B550| AND.b $00
|02B552| BNE .small_vertically

.blast_wall_makes_tall
|02B554| LDA.b #$02
|02B556| STA.b $A7

.small_vertically
|02B558| LDA.b $FC
|02B55A| BEQ .blast_wall_not_wide

|02B55C| STA.b $A6

.blast_wall_not_wide
|02B55E| LDA.b $FD
|02B560| BEQ .exit

|02B562| STA.b $A7

.exit
|02B564| PLB

|02B565| RTL

;===================================================================================================

HandleEdgeTransitionMovementEast_Right8:
|02B566| REP #$20

|02B568| LDA.b $22
|02B56A| CLC
|02B56B| ADC.w #$0008
|02B56E| STA.b $22

|02B570| SEP #$20

;===================================================================================================

HandleEdgeTransitionMovementEast:
|02B572| PHB
|02B573| PHK
|02B574| PLB

|02B575| LDA.b $A9
|02B577| EOR.b #$01
|02B579| STA.b $A9

|02B57B| JSR AdjustQuadrant

|02B57E| LDX.b #$08
|02B580| JSR AdjustCameraBoundariesDownOrRightQuadrant

|02B583| JSR SaveRoomFlags

|02B586| LDA.b $A9
|02B588| JSR AdjustUnderworldCamera_Horizontal

|02B58B| LDY.b #$02
|02B58D| JSR AdjustCameraBoundariesAfterTransition

|02B590| INC.b $11

|02B592| LDA.b $A9
|02B594| BNE .continue

|02B596| LDX.b #$08
|02B598| JSR AdjustCameraBoundariesDownOrRightWholeRoom

|02B59B| LDA.b $A0
|02B59D| STA.b $A2

|02B59F| LDA.w $0114
|02B5A2| AND.b #$CF
|02B5A4| CMP.b #$89 ; TILETYPE 89
|02B5A6| BNE .not_teleport_door

|02B5A8| LDA.l $7EC004
|02B5AC| STA.b $A0

|02B5AE| DEC A

|02B5AF| LDY.b #$01
|02B5B1| JSR AdjustForTeleportDoors

|02B5B4| BRA .continue_from_tele

;---------------------------------------------------------------------------------------------------

.not_teleport_door
|02B5B6| LDA.w $048E
|02B5B9| CMP.b $A0
|02B5BB| BEQ .room_id_matches

|02B5BD| STA.b $A2

|02B5BF| JSR AdjustUnderworldCameraArbitrarily

.room_id_matches
|02B5C2| INC.b $A0

;---------------------------------------------------------------------------------------------------

.continue_from_tele
|02B5C4| INC.b $11

|02B5C6| LDA.b $EF
|02B5C8| AND.b #$01
|02B5CA| BEQ .no_layer_swap

|02B5CC| LDA.b $EE
|02B5CE| EOR.b #$01
|02B5D0| STA.b $EE
|02B5D2| STA.w $0476

.no_layer_swap
|02B5D5| LDA.b $EF
|02B5D7| AND.b #$02
|02B5D9| BEQ .continue

; swap dungeon id
|02B5DB| LDA.w $040C
|02B5DE| EOR.b #$02
|02B5E0| STA.w $040C

;---------------------------------------------------------------------------------------------------

.continue
|02B5E3| STZ.b $EF

|02B5E5| STZ.b $A7

|02B5E7| LDY.b #$08

|02B5E9| LDA.b $AA
|02B5EB| BNE .on_lower_half

|02B5ED| LDY.b #$04

.on_lower_half
|02B5EF| STY.b $00

|02B5F1| LDA.w $0453
|02B5F4| BNE .set_layout

|02B5F6| LDX.b $A8

|02B5F8| LDA.w RoomQuadrantLayoutValues,X
|02B5FB| AND.b $00
|02B5FD| BNE .exit

.set_layout
|02B5FF| LDA.b #$02
|02B601| STA.b $A7

.exit
|02B603| PLB

|02B604| RTL

;===================================================================================================

HandleEdgeTransitionMovementWest_Left8:
|02B605| REP #$20

|02B607| LDA.b $22
|02B609| SEC
|02B60A| SBC.w #$0008
|02B60D| STA.b $22

|02B60F| SEP #$20

;===================================================================================================

HandleEdgeTransitionMovementWest:
|02B611| PHB
|02B612| PHK
|02B613| PLB

|02B614| LDA.b $A9
|02B616| EOR.b #$01
|02B618| STA.b $A9

|02B61A| JSR AdjustQuadrant

|02B61D| LDX.b #$08
|02B61F| JSR AdjustCameraBoundariesUpOrLeftQuadrant

|02B622| JSR SaveRoomFlags

|02B625| LDA.b $A9
|02B627| EOR.b #$01
|02B629| JSR AdjustUnderworldCamera_Horizontal

|02B62C| LDY.b #$03
|02B62E| JSR AdjustCameraBoundariesAfterTransition

|02B631| INC.b $11

|02B633| LDA.b $A9
|02B635| BEQ .continue

|02B637| LDX.b #$08
|02B639| JSR AdjustCameraBoundariesUpOrLeftWholeRoom

|02B63C| LDA.b $A0
|02B63E| STA.b $A2

|02B640| LDA.w $0114
|02B643| AND.b #$CF
|02B645| CMP.b #$89 ; TILETYPE 89
|02B647| BNE .not_teleport_door

|02B649| LDA.l $7EC003
|02B64D| STA.b $A0

|02B64F| INC A

|02B650| LDY.b #$FF
|02B652| JSR AdjustForTeleportDoors

|02B655| BRA .continue_from_tele

;---------------------------------------------------------------------------------------------------

.not_teleport_door
|02B657| LDA.w $048E
|02B65A| CMP.b $A0
|02B65C| BEQ .room_id_matches

|02B65E| STA.b $A2

|02B660| JSR AdjustUnderworldCameraArbitrarily

.room_id_matches
|02B663| DEC.b $A0

;---------------------------------------------------------------------------------------------------

.continue_from_tele
|02B665| INC.b $11

|02B667| LDA.b $EF
|02B669| AND.b #$01
|02B66B| BEQ .no_layer_swap

|02B66D| LDA.b $EE
|02B66F| EOR.b #$01
|02B671| STA.b $EE
|02B673| STA.w $0476

.no_layer_swap
|02B676| LDA.b $EF
|02B678| AND.b #$02
|02B67A| BEQ .continue

|02B67C| LDA.w $040C
|02B67F| EOR.b #$02
|02B681| STA.w $040C

;---------------------------------------------------------------------------------------------------

.continue
|02B684| STZ.b $EF
|02B686| STZ.b $A7

|02B688| LDY.b #$08

|02B68A| LDA.b $AA
|02B68C| BNE .on_lower_half

|02B68E| LDY.b #$04

.on_lower_half
|02B690| STY.b $00

|02B692| LDA.w $0453
|02B695| BNE .set_layout

|02B697| LDX.b $A8

|02B699| LDA.w RoomQuadrantLayoutValues,X
|02B69C| AND.b $00
|02B69E| BNE .exit

.set_layout
|02B6A0| LDA.b #$02
|02B6A2| STA.b $A7

.exit
|02B6A4| PLB

|02B6A5| RTL

;===================================================================================================

HandleEdgeTransitionMovementSouth_Down16:
|02B6A6| REP #$20

|02B6A8| LDA.b $20
|02B6AA| CLC
|02B6AB| ADC.w #$0010
|02B6AE| STA.b $20

|02B6B0| SEP #$20

;===================================================================================================

HandleEdgeTransitionMovementSouth:
|02B6B2| PHB
|02B6B3| PHK
|02B6B4| PLB

|02B6B5| LDA.b $AA
|02B6B7| EOR.b #$02
|02B6B9| STA.b $AA

|02B6BB| JSR AdjustQuadrant

|02B6BE| LDX.b #$00
|02B6C0| JSR AdjustCameraBoundariesDownOrRightQuadrant

|02B6C3| JSR SaveRoomFlags

|02B6C6| LDA.b $AA
|02B6C8| JSR AdjustUnderworldCamera_Vertical

|02B6CB| LDY.b #$00
|02B6CD| JSR AdjustCameraBoundariesAfterTransition

|02B6D0| INC.b $11

|02B6D2| LDA.b $AA
|02B6D4| BNE .continue

|02B6D6| LDX.b #$00
|02B6D8| JSR AdjustCameraBoundariesDownOrRightWholeRoom

|02B6DB| LDA.b $A0
|02B6DD| STA.b $A2

|02B6DF| LDA.w $0114
|02B6E2| CMP.b #$8E ; TILETYPE 8E
|02B6E4| BNE .not_entrance

;===================================================================================================

#PrepForOverworldExit:
|02B6E6| JSL SaveDungeonKeys
|02B6EA| JSL SaveVisitedQuadrantFlags

|02B6EE| LDA.b #$08
|02B6F0| STA.w $010C

|02B6F3| LDA.b #$0F
|02B6F5| STA.b $10
|02B6F7| STZ.b $11

|02B6F9| STZ.b $B0

|02B6FB| JSR DeleteCertainAncillaeStopDashing

|02B6FE| PLB

|02B6FF| RTL

;===================================================================================================

.not_entrance
|02B700| LDA.w $048E
|02B703| CMP.b $A0
|02B705| BEQ .room_id_matches

|02B707| STA.b $A2

|02B709| JSR AdjustUnderworldCameraArbitrarily

.room_id_matches
|02B70C| LDA.b $A0
|02B70E| CLC
|02B70F| ADC.b #$10
|02B711| STA.b $A0

|02B713| INC.b $11

|02B715| LDA.b $EF
|02B717| AND.b #$01
|02B719| BEQ .no_layer_swap

|02B71B| LDA.b $EE
|02B71D| EOR.b #$01
|02B71F| STA.b $EE
|02B721| STA.w $0476

.no_layer_swap
|02B724| LDA.b $EF
|02B726| AND.b #$02
|02B728| BEQ .continue

|02B72A| LDA.w $040C
|02B72D| EOR.b #$02
|02B72F| STA.w $040C

.continue
|02B732| STZ.b $EF
|02B734| STZ.b $A6

|02B736| LDY.b #$02
|02B738| LDA.b $A9
|02B73A| BNE .on_east_side

|02B73C| LDY.b #$01

.on_east_side
|02B73E| STY.b $00

|02B740| LDA.w $0452
|02B743| BNE .set_layout

|02B745| LDX.b $A8

|02B747| LDA.w RoomQuadrantLayoutValues,X
|02B74A| AND.b $00
|02B74C| BNE .exit

.set_layout
|02B74E| LDA.b #$02
|02B750| STA.b $A6

.exit
|02B752| PLB

|02B753| RTL

;===================================================================================================

HandleEdgeTransitionMovementNorth:
|02B754| PHB
|02B755| PHK
|02B756| PLB

|02B757| LDA.b $AA
|02B759| EOR.b #$02
|02B75B| STA.b $AA

|02B75D| JSR AdjustQuadrant

|02B760| LDX.b #$00
|02B762| JSR AdjustCameraBoundariesUpOrLeftQuadrant

|02B765| JSR SaveRoomFlags

|02B768| LDA.b $AA
|02B76A| EOR.b #$02
|02B76C| JSR AdjustUnderworldCamera_Vertical

|02B76F| LDY.b #$01
|02B771| JSR AdjustCameraBoundariesAfterTransition

|02B774| INC.b $11

|02B776| LDA.b $AA
|02B778| BEQ .continue

|02B77A| LDX.b #$00
|02B77C| JSR AdjustCameraBoundariesUpOrLeftWholeRoom

|02B77F| LDA.b $A0
|02B781| STA.b $A2

|02B783| LDA.w $0114
|02B786| CMP.b #$8E ; TILETYPE 8E
|02B788| BNE .not_entrance

|02B78A| JMP.w PrepForOverworldExit

.not_entrance
|02B78D| LDA.b $A0 ; ROOM 0000
|02B78F| ORA.b $A1
|02B791| BNE .not_ganon_room

|02B793| JSL SaveDungeonKeys

|02B797| LDA.b #$19
|02B799| STA.b $10
|02B79B| STZ.b $11

|02B79D| STZ.b $B0

|02B79F| PLB

|02B7A0| RTL

;---------------------------------------------------------------------------------------------------

.not_ganon_room
|02B7A1| LDA.w $048E
|02B7A4| CMP.b $A0
|02B7A6| BEQ .room_id_matches

|02B7A8| STA.b $A2

|02B7AA| JSR AdjustUnderworldCameraArbitrarily

.room_id_matches
|02B7AD| LDA.b $A0
|02B7AF| SEC
|02B7B0| SBC.b #$10
|02B7B2| STA.b $A0

|02B7B4| INC.b $11

|02B7B6| LDA.b $EF
|02B7B8| AND.b #$01
|02B7BA| BEQ .no_layer_swap

|02B7BC| LDA.b $EE
|02B7BE| EOR.b #$01
|02B7C0| STA.b $EE
|02B7C2| STA.w $0476

.no_layer_swap
|02B7C5| LDA.b $EF
|02B7C7| AND.b #$02
|02B7C9| BEQ .continue

|02B7CB| LDA.w $040C
|02B7CE| EOR.b #$02
|02B7D0| STA.w $040C

.continue
|02B7D3| STZ.b $EF
|02B7D5| STZ.b $A6

|02B7D7| LDY.b #$02
|02B7D9| LDA.b $A9
|02B7DB| BNE .on_east_side

|02B7DD| LDY.b #$01

.on_east_side
|02B7DF| STY.b $00

|02B7E1| LDA.w $0452
|02B7E4| BNE .set_layout

|02B7E6| LDX.b $A8

|02B7E8| LDA.w RoomQuadrantLayoutValues,X
|02B7EB| AND.b $00
|02B7ED| BNE .exit

.set_layout
|02B7EF| LDA.b #$02
|02B7F1| STA.b $A6

.exit
|02B7F3| PLB

|02B7F4| RTL

;===================================================================================================

AdjustQuadrantAndCamera_right:
|02B7F5| LDA.b $A9
|02B7F7| EOR.b #$01
|02B7F9| STA.b $A9

|02B7FB| JSR AdjustQuadrant

|02B7FE| LDX.b #$08
|02B800| JSR AdjustCameraBoundariesDownOrRightQuadrant

;===================================================================================================

SetAndSaveVisitedQuadrantFlags:
|02B803| LDA.b $A7
|02B805| ASL A
|02B806| ASL A
|02B807| STA.b $00

|02B809| LDA.b $A6
|02B80B| ASL A
|02B80C| ORA.b $00
|02B80E| ORA.b $AA
|02B810| ORA.b $A9
|02B812| TAX

|02B813| LDA.l QuadrantLayoutFlagBitfield,X
|02B817| ORA.w $0408
|02B81A| STA.w $0408

;===================================================================================================

SaveVisitedQuadrantFlags:
|02B81D| REP #$30

|02B81F| LDA.b $A0
|02B821| ASL A
|02B822| TAX

|02B823| LDA.l $7EF000,X
|02B827| ORA.w $0408
|02B82A| STA.l $7EF000,X

|02B82E| SEP #$30

|02B830| RTL

;===================================================================================================

AdjustQuadrantAndCamera_left:
|02B831| LDA.b $A9
|02B833| EOR.b #$01
|02B835| STA.b $A9

|02B837| JSR AdjustQuadrant

|02B83A| LDX.b #$08
|02B83C| JSR AdjustCameraBoundariesUpOrLeftQuadrant

|02B83F| BRA SetAndSaveVisitedQuadrantFlags

;===================================================================================================

AdjustQuadrantAndCamera_down:
|02B841| LDA.b $AA
|02B843| EOR.b #$02
|02B845| STA.b $AA

|02B847| JSR AdjustQuadrant

|02B84A| LDX.b #$00
|02B84C| JSR AdjustCameraBoundariesDownOrRightQuadrant

|02B84F| BRA SetAndSaveVisitedQuadrantFlags

;===================================================================================================

AdjustQuadrantAndCamera_up:
|02B851| LDA.b $AA
|02B853| EOR.b #$02
|02B855| STA.b $AA

|02B857| JSR AdjustQuadrant

|02B85A| LDX.b #$00
|02B85C| JSR AdjustCameraBoundariesUpOrLeftQuadrant

|02B85F| BRA SetAndSaveVisitedQuadrantFlags

;===================================================================================================

FullyUpdateRoomFlags:
|02B861| LDA.b $A7
|02B863| ASL A
|02B864| ASL A
|02B865| STA.b $00

|02B867| LDA.b $A6
|02B869| ASL A
|02B86A| ORA.b $00
|02B86C| ORA.b $AA
|02B86E| ORA.b $A9
|02B870| TAX

|02B871| LDA.l QuadrantLayoutFlagBitfield,X
|02B875| ORA.w $0408
|02B878| STA.w $0408

|02B87B| JSR SaveRoomFlags

|02B87E| RTL

;===================================================================================================

SaveRoomFlags:
|02B87F| REP #$30

|02B881| LDA.b $A0
|02B883| ASL A
|02B884| TAX

|02B885| LDA.w $0402
|02B888| LSR A
|02B889| LSR A
|02B88A| LSR A
|02B88B| LSR A
|02B88C| STA.b $06

|02B88E| LDA.w $0400
|02B891| AND.w #$F000

|02B894| ORA.w $0408
|02B897| ORA.b $06

|02B899| STA.l $7EF000,X

|02B89D| SEP #$30

|02B89F| RTS

;===================================================================================================

AdjustCameraBoundariesDownOrRightQuadrant:
|02B8A0| REP #$20

|02B8A2| LDA.w $0600,X
|02B8A5| CLC
|02B8A6| ADC.w #$0100
|02B8A9| STA.w $0600,X

|02B8AC| LDA.w $0604,X
|02B8AF| CLC
|02B8B0| ADC.w #$0100
|02B8B3| STA.w $0604,X

|02B8B6| SEP #$20

|02B8B8| RTS

;===================================================================================================

AdjustCameraBoundariesDownOrRightWholeRoom:
|02B8B9| REP #$20

|02B8BB| LDA.w $0602,X
|02B8BE| CLC
|02B8BF| ADC.w #$0200
|02B8C2| STA.w $0602,X

|02B8C5| LDA.w $0606,X
|02B8C8| CLC
|02B8C9| ADC.w #$0200
|02B8CC| STA.w $0606,X

|02B8CF| SEP #$20

|02B8D1| RTS

;===================================================================================================

AdjustCameraBoundariesUpOrLeftQuadrant:
|02B8D2| REP #$20

|02B8D4| LDA.w $0600,X
|02B8D7| SEC
|02B8D8| SBC.w #$0100
|02B8DB| STA.w $0600,X

|02B8DE| LDA.w $0604,X
|02B8E1| SEC
|02B8E2| SBC.w #$0100
|02B8E5| STA.w $0604,X

|02B8E8| SEP #$20

|02B8EA| RTS

;===================================================================================================

AdjustCameraBoundariesUpOrLeftWholeRoom:
|02B8EB| REP #$20

|02B8ED| LDA.w $0602,X
|02B8F0| SEC
|02B8F1| SBC.w #$0200
|02B8F4| STA.w $0602,X

|02B8F7| LDA.w $0606,X
|02B8FA| SEC
|02B8FB| SBC.w #$0200
|02B8FE| STA.w $0606,X

|02B901| SEP #$20

|02B903| RTS

;===================================================================================================

pool AdjustCameraBoundariesAfterTransition

.vertical_boundaries
|02B904| dw $0078
|02B906| dw $0178
|02B908| dw $0088
|02B90A| dw $0188

.horizontal_boundaries
|02B90C| dw $007F
|02B90E| dw $017F
|02B910| dw $007F
|02B912| dw $017F

endpool

;---------------------------------------------------------------------------------------------------

AdjustCameraBoundariesAfterTransition:
|02B914| STY.w $0418

|02B917| LDA.b $67
|02B919| AND.b #$03
|02B91B| BEQ .not_horizontal

|02B91D| REP #$20

|02B91F| LDX.b #$04

|02B921| LDA.b $67
|02B923| AND.w #$0001
|02B926| BEQ .not_right

|02B928| LDX.b #$00

.not_right
|02B92A| LDY.b $A9
|02B92C| BEQ .west_side

|02B92E| INX
|02B92F| INX

.west_side
|02B930| LDA.w .horizontal_boundaries,X
|02B933| STA.w $061C

|02B936| INC A
|02B937| INC A
|02B938| STA.w $061E

|02B93B| SEP #$20

|02B93D| RTS

;---------------------------------------------------------------------------------------------------

.not_horizontal
|02B93E| REP #$20

|02B940| LDX.b #$04

|02B942| LDA.b $67
|02B944| AND.w #$0004
|02B947| BEQ .not_down

|02B949| LDX.b #$00

.not_down
|02B94B| LDY.b $AA
|02B94D| BEQ .upper_quadrant

|02B94F| INX
|02B950| INX

.upper_quadrant
|02B951| LDA.w .vertical_boundaries,X
|02B954| STA.w $0618

|02B957| INC A
|02B958| INC A
|02B959| STA.w $061A

|02B95C| SEP #$20

|02B95E| RTS

;===================================================================================================

AdjustQuadrant:
|02B95F| LDA.w $040E
|02B962| ORA.b $AA
|02B964| ORA.b $A9
|02B966| STA.b $A8

|02B968| RTS

;===================================================================================================
; TODO analyze
;===================================================================================================
HandleUnderworldCamera:
|02B969| REP #$20

|02B96B| LDA.w #$0001
|02B96E| STA.b $00

|02B970| LDA.b $78
|02B972| AND.w #$00FF
|02B975| BEQ .dont_zero

|02B977| LDA.b $24
|02B979| CMP.w #$FFFF
|02B97C| BNE .dont_zero

|02B97E| LDA.w #$0000

.dont_zero
|02B981| STA.b $0E

|02B983| LDA.b $20
|02B985| SEC
|02B986| SBC.b $0E
|02B988| AND.w #$01FF

|02B98B| CLC
|02B98C| ADC.w #$000C
|02B98F| STA.b $0E

;---------------------------------------------------------------------------------------------------

|02B991| LDA.b $30
|02B993| AND.w #$00FF
|02B996| BEQ .no_vertical_movement

|02B998| LDX.b $A7
|02B99A| CMP.w #$0080
|02B99D| BCC .moving_down_a

|02B99F| EOR.w #$00FF
|02B9A2| INC A

|02B9A3| DEC.b $00
|02B9A5| DEC.b $00

.moving_down_a
|02B9A7| TAY

;---------------------------------------------------------------------------------------------------

.next_vertical
|02B9A8| LDX.b $A7

|02B9AA| LDA.b $30
|02B9AC| AND.w #$00FF
|02B9AF| CMP.w #$0080
|02B9B2| BCC .moving_down_b

|02B9B4| LDA.w $0618
|02B9B7| CMP.b $0E
|02B9B9| BCS .continue_vertically
|02B9BB| BCC .dont_scroll_vertically

.moving_down_b
|02B9BD| LDA.b $0E
|02B9BF| CMP.w $061A
|02B9C2| BCC .dont_scroll_vertically

|02B9C4| INX
|02B9C5| INX
|02B9C6| INX
|02B9C7| INX

.continue_vertically
|02B9C8| LDA.b $E8
|02B9CA| CMP.w $0600,X
|02B9CD| BEQ .dont_scroll_vertically

|02B9CF| CLC
|02B9D0| ADC.b $00
|02B9D2| STA.b $E8

|02B9D4| LDA.b $A0
|02B9D6| CMP.w #$FFFF ; TODO does this ever happen? old triforce room code?
|02B9D9| BEQ .dont_scroll_vertically

|02B9DB| LDA.b $00
|02B9DD| STZ.b $04
|02B9DF| LSR A
|02B9E0| ROR.b $04

|02B9E2| CMP.w #$7000
|02B9E5| BCC .dont_invert_vertically

|02B9E7| ORA.w #$F000

.dont_invert_vertically
|02B9EA| STA.b $06

|02B9EC| LDA.w $0622
|02B9EF| CLC
|02B9F0| ADC.b $04
|02B9F2| STA.w $0622

|02B9F5| LDA.b $E6
|02B9F7| ADC.b $06
|02B9F9| STA.b $E6

|02B9FB| LDA.w $0618
|02B9FE| CLC
|02B9FF| ADC.b $00
|02BA01| STA.w $0618

|02BA04| INC A
|02BA05| INC A
|02BA06| STA.w $061A

.dont_scroll_vertically
|02BA09| DEY
|02BA0A| BNE .next_vertical

;---------------------------------------------------------------------------------------------------

.no_vertical_movement
|02BA0C| LDA.w #$0001
|02BA0F| STA.b $00

|02BA11| LDA.b $22
|02BA13| AND.w #$01FF
|02BA16| CLC
|02BA17| ADC.w #$0008
|02BA1A| STA.b $0E

|02BA1C| LDA.b $31
|02BA1E| AND.w #$00FF
|02BA21| BEQ .no_horizontal_scroll

|02BA23| LDX.b $A6
|02BA25| CMP.w #$0080
|02BA28| BCC .moving_right_a

|02BA2A| EOR.w #$00FF
|02BA2D| INC A
|02BA2E| DEC.b $00
|02BA30| DEC.b $00

.moving_right_a
|02BA32| TAY

;---------------------------------------------------------------------------------------------------

.next_horizontal
|02BA33| LDX.b $A6

|02BA35| LDA.b $31
|02BA37| AND.w #$00FF
|02BA3A| CMP.w #$0080
|02BA3D| BCC .moving_right_b

|02BA3F| LDA.w $061C
|02BA42| CMP.b $0E
|02BA44| BCS .continue_horizontally
|02BA46| BCC .dont_scroll_horizontally

.moving_right_b
|02BA48| LDA.b $0E
|02BA4A| CMP.w $061E
|02BA4D| BCC .dont_scroll_horizontally

|02BA4F| INX
|02BA50| INX
|02BA51| INX
|02BA52| INX

.continue_horizontally
|02BA53| LDA.b $E2
|02BA55| CMP.w $0608,X
|02BA58| BEQ .dont_scroll_horizontally

|02BA5A| CLC
|02BA5B| ADC.b $00
|02BA5D| STA.b $E2

|02BA5F| LDA.b $A0
|02BA61| CMP.w #$FFFF
|02BA64| BEQ .dont_scroll_horizontally

|02BA66| LDA.b $00
|02BA68| STZ.b $04

|02BA6A| LSR A
|02BA6B| ROR.b $04
|02BA6D| CMP.w #$7000
|02BA70| BCC .dont_invert_horizontally

|02BA72| ORA.w #$F000

.dont_invert_horizontally
|02BA75| STA.b $06

|02BA77| LDA.w $0620
|02BA7A| CLC
|02BA7B| ADC.b $04
|02BA7D| STA.w $0620

|02BA80| LDA.b $E0
|02BA82| ADC.b $06
|02BA84| STA.b $E0

|02BA86| LDA.w $061C
|02BA89| CLC
|02BA8A| ADC.b $00
|02BA8C| STA.w $061C

|02BA8F| INC A
|02BA90| INC A
|02BA91| STA.w $061E

.dont_scroll_horizontally
|02BA94| DEY
|02BA95| BNE .next_horizontal

;---------------------------------------------------------------------------------------------------

.no_horizontal_scroll
|02BA97| LDA.b $A0
|02BA99| CMP.w #$FFFF
|02BA9C| BEQ .exit

|02BA9E| LDX.w $0414
|02BAA1| BEQ UnderworldSyncBG1and2Scroll

|02BAA3| CPX.b #$06
|02BAA5| BCS UnderworldSyncBG1and2Scroll

|02BAA7| CPX.b #$04
|02BAA9| BEQ UnderworldSyncBG1and2Scroll

|02BAAB| CPX.b #$03
|02BAAD| BEQ UnderworldSyncBG1and2Scroll

|02BAAF| CPX.b #$02
|02BAB1| BNE .exit

;===================================================================================================

#UnderworldSyncBG1and2Scroll:
|02BAB3| REP #$20

|02BAB5| LDA.b $E2
|02BAB7| STA.b $E0

|02BAB9| LDA.b $E8
|02BABB| STA.b $E6

.exit
|02BABD| SEP #$20

|02BABF| RTS

;===================================================================================================

OverworldTransitionDirections:
|02BAC0| dw $0008 ; up
|02BAC2| dw $0004 ; down
|02BAC4| dw $0002 ; left
|02BAC6| dw $0001 ; right

;---------------------------------------------------------------------------------------------------

Overworld_OperateCameraScroll:
|02BAC8| PHB
|02BAC9| PHK
|02BACA| PLB

|02BACB| REP #$20

|02BACD| LDA.b $78
|02BACF| AND.w #$00FF
|02BAD2| BEQ .not_grounded

|02BAD4| LDA.b $24
|02BAD6| CMP.w #$FFFF
|02BAD9| BNE .not_grounded

|02BADB| LDA.w #$0000

.not_grounded
|02BADE| STA.b $0E

|02BAE0| LDA.b $20
|02BAE2| SEC
|02BAE3| SBC.b $0E
|02BAE5| CLC
|02BAE6| ADC.w #$000C
|02BAE9| STA.b $0E

|02BAEB| LDA.w #$0001
|02BAEE| STA.b $00

|02BAF0| LDA.b $30
|02BAF2| AND.w #$00FF
|02BAF5| BNE .moving_vertically

|02BAF7| JMP.w .handle_x_camera

.moving_vertically
|02BAFA| STZ.b $04

|02BAFC| CMP.w #$0080
|02BAFF| BCC .positive_vy

|02BB01| EOR.w #$00FF
|02BB04| INC A

|02BB05| DEC.b $00
|02BB07| DEC.b $00

.positive_vy
|02BB09| STA.b $02

|02BB0B| STZ.b $08

;---------------------------------------------------------------------------------------------------

.next_camera_shift_y
|02BB0D| LDA.b $30
|02BB0F| AND.w #$00FF
|02BB12| CMP.w #$0080
|02BB15| BCC .positive_vy_2

|02BB17| LDA.w $0618
|02BB1A| CMP.b $0E
|02BB1C| BCC .skip_camera_check_y

|02BB1E| LDY.b #$00
|02BB20| BRA .check_camera_y

.positive_vy_2
|02BB22| LDA.b $0E
|02BB24| CMP.w $061A
|02BB27| BCC .skip_camera_check_y

|02BB29| LDY.b #$02

.check_camera_y
|02BB2B| LDX.b #$06
|02BB2D| JSR OverworldCameraBoundaryCheck

.skip_camera_check_y
|02BB30| DEC.b $02
|02BB32| BNE .next_camera_shift_y

;---------------------------------------------------------------------------------------------------

|02BB34| LDA.b $04
|02BB36| STA.w $069E

|02BB39| LDX.b $8C
|02BB3B| CPX.b #$97 ; OW 97
|02BB3D| BEQ .handle_x_camera

|02BB3F| CPX.b #$9D ; OW 9D
|02BB41| BEQ .handle_x_camera

|02BB43| LDA.b $04
|02BB45| BEQ .handle_x_camera

|02BB47| STZ.b $00
|02BB49| LSR A
|02BB4A| ROR.b $00

; Unused overlays that produce garbage
|02BB4C| LDX.b $8C
|02BB4E| CPX.b #$B5 ; OW B5
|02BB50| BEQ .garbage_overlay

|02BB52| CPX.b #$BE ; OW BE
|02BB54| BNE .not_garbage_overlay

.garbage_overlay
|02BB56| LSR A
|02BB57| ROR.b $00
|02BB59| CMP.w #$3000
|02BB5C| BCC .set_scroll_add_y

|02BB5E| ORA.w #$F000
|02BB61| BRA .set_scroll_add_y

.not_garbage_overlay
|02BB63| CMP.w #$7000
|02BB66| BCC .set_scroll_add_y

|02BB68| ORA.w #$F000

.set_scroll_add_y
|02BB6B| STA.b $06

|02BB6D| LDA.w $0622
|02BB70| CLC
|02BB71| ADC.b $00
|02BB73| STA.w $0622

|02BB76| LDA.b $E6
|02BB78| ADC.b $06
|02BB7A| STA.b $E6

|02BB7C| LDA.b $8A
|02BB7E| AND.w #$003F
|02BB81| CMP.w #$001B ; OW 1B, OW 5B
|02BB84| BNE .handle_x_camera

|02BB86| LDA.w #$0600
|02BB89| CMP.b $E6
|02BB8B| BCC .camera_too_low_y

|02BB8D| STA.b $E6

.camera_too_low_y
|02BB8F| LDA.w #$06C0
|02BB92| CMP.b $E6
|02BB94| BCS .handle_x_camera

|02BB96| STA.b $E6

;---------------------------------------------------------------------------------------------------

.handle_x_camera
|02BB98| LDA.b $22
|02BB9A| CLC
|02BB9B| ADC.w #$0008
|02BB9E| STA.b $0E

|02BBA0| LDA.w #$0001
|02BBA3| STA.b $00

|02BBA5| LDA.b $31
|02BBA7| AND.w #$00FF
|02BBAA| BNE .moving_horizontally

|02BBAC| JMP.w OverworldHandleBGOverlayScroll

.moving_horizontally
|02BBAF| STZ.b $04

|02BBB1| CMP.w #$0080
|02BBB4| BCC .positive_vx

|02BBB6| EOR.w #$00FF
|02BBB9| INC A

|02BBBA| DEC.b $00
|02BBBC| DEC.b $00

.positive_vx
|02BBBE| STA.b $02

|02BBC0| LDX.b #$04
|02BBC2| STX.b $08

;---------------------------------------------------------------------------------------------------

.next_camera_shift_x
|02BBC4| LDA.b $31
|02BBC6| AND.w #$00FF
|02BBC9| CMP.w #$0080
|02BBCC| BCC .positive_vx_2

|02BBCE| LDA.w $061C
|02BBD1| CMP.b $0E
|02BBD3| BCC .skip_camera_check_x

|02BBD5| LDY.b #$04
|02BBD7| BRA .check_camera_x

.positive_vx_2
|02BBD9| LDA.b $0E
|02BBDB| CMP.w $061E
|02BBDE| BCC .skip_camera_check_x

|02BBE0| LDY.b #$06

.check_camera_x
|02BBE2| LDX.b #$00
|02BBE4| JSR OverworldCameraBoundaryCheck

.skip_camera_check_x
|02BBE7| DEC.b $02
|02BBE9| BNE .next_camera_shift_x

;---------------------------------------------------------------------------------------------------

|02BBEB| LDA.b $04
|02BBED| STA.w $069F

; check for fog overlays
|02BBF0| LDX.b $8C
|02BBF2| CPX.b #$97 ; OW 97
|02BBF4| BEQ OverworldHandleBGOverlayScroll

|02BBF6| CPX.b #$9D ; OW 9D
|02BBF8| BEQ OverworldHandleBGOverlayScroll

|02BBFA| LDA.b $04
|02BBFC| BEQ OverworldHandleBGOverlayScroll

|02BBFE| STZ.b $00
|02BC00| LSR A
|02BC01| ROR.b $00

; check for mountain overlays
|02BC03| LDX.b $8C
|02BC05| CPX.b #$95 ; OW 95
|02BC07| BEQ .dm_overlay

|02BC09| CPX.b #$9E ; OW 9E
|02BC0B| BNE .not_clear_lw_overlay

.dm_overlay
|02BC0D| LSR A
|02BC0E| ROR.b $00
|02BC10| CMP.w #$3000
|02BC13| BCC .set_scroll_add_x

|02BC15| ORA.w #$F000
|02BC18| BRA .set_scroll_add_x

.not_clear_lw_overlay
|02BC1A| CMP.w #$7000
|02BC1D| BCC .set_scroll_add_x

|02BC1F| ORA.w #$F000

.set_scroll_add_x
|02BC22| STA.b $06

|02BC24| LDA.w $0620
|02BC27| CLC
|02BC28| ADC.b $00
|02BC2A| STA.w $0620

|02BC2D| LDA.b $E0
|02BC2F| ADC.b $06
|02BC31| STA.b $E0

;===================================================================================================

OverworldHandleBGOverlayScroll:
|02BC33| LDX.b $8A
|02BC35| CPX.b #$47 ; OW 47
|02BC37| BEQ .no_overlay_scroll

|02BC39| LDX.b $8C
|02BC3B| CPX.b #$9C ; OW 9C
|02BC3D| BEQ .dark_dm_overlay_scroll

|02BC3F| CPX.b #$97 ; OW 97
|02BC41| BEQ .grove_fog_scroll

|02BC43| CPX.b #$9D ; OW 9D
|02BC45| BNE .no_overlay_scroll

.grove_fog_scroll
|02BC47| LDA.w $0622
|02BC4A| CLC
|02BC4B| ADC.w #$2000
|02BC4E| STA.w $0622

|02BC51| LDA.b $E6
|02BC53| ADC.w #$0000
|02BC56| STA.b $E6

|02BC58| LDA.w $0620
|02BC5B| CLC
|02BC5C| ADC.w #$2000
|02BC5F| STA.w $0620

|02BC62| LDA.b $E0
|02BC64| ADC.w #$0000
|02BC67| STA.b $E0

|02BC69| BRA .no_overlay_scroll

.dark_dm_overlay_scroll
|02BC6B| LDA.w $0622
|02BC6E| SEC
|02BC6F| SBC.w #$2000
|02BC72| STA.w $0622

|02BC75| LDA.b $E6
|02BC77| SBC.w #$0000
|02BC7A| CLC
|02BC7B| ADC.w $069E
|02BC7E| STA.b $E6

|02BC80| LDA.b $E2
|02BC82| STA.b $E0

.no_overlay_scroll
|02BC84| LDA.b $A0
|02BC86| CMP.w #$0181 ; OW 81
|02BC89| BNE .exit

|02BC8B| LDA.b $E8
|02BC8D| ORA.w #$0100
|02BC90| STA.b $E6

|02BC92| LDA.b $E2
|02BC94| STA.b $E0

.exit
|02BC96| SEP #$20

|02BC98| PLB

|02BC99| RTS

;===================================================================================================

OverworldCameraBoundaryCheck:
|02BC9A| LDA.b $E2,X
|02BC9C| CMP.w $0600,Y
|02BC9F| BNE .not_at_boundary

|02BCA1| TYA
|02BCA2| EOR.w #$0002
|02BCA5| TAX

|02BCA6| LDA.w #$0000
|02BCA9| STA.w $0624,Y
|02BCAC| STA.w $0624,X

|02BCAF| RTS

;---------------------------------------------------------------------------------------------------

.not_at_boundary
|02BCB0| CLC
|02BCB1| ADC.b $00
|02BCB3| STA.b $E2,X

|02BCB5| LDA.b $04
|02BCB7| CLC
|02BCB8| ADC.b $00
|02BCBA| STA.b $04

|02BCBC| LDX.b $08

|02BCBE| LDA.w $061A,X
|02BCC1| CLC
|02BCC2| ADC.b $00
|02BCC4| STA.w $061A,X

|02BCC7| INC A
|02BCC8| INC A
|02BCC9| STA.w $0618,X

|02BCCC| TYA
|02BCCD| EOR.w #$0002
|02BCD0| TAX

|02BCD1| LDA.w $0624,Y
|02BCD4| INC A
|02BCD5| STA.w $0624,Y

|02BCD8| CMP.w #$0010
|02BCDB| BMI .dont_extend_movement

|02BCDD| SEC
|02BCDE| SBC.w #$0010
|02BCE1| STA.w $0624,Y

|02BCE4| LDA.w OverworldTransitionDirections,Y
|02BCE7| ORA.w $0416
|02BCEA| STA.w $0416

.dont_extend_movement
|02BCED| LDA.w #$0000
|02BCF0| SEC
|02BCF1| SBC.w $0624,Y
|02BCF4| STA.w $0624,X

|02BCF7| RTS

;===================================================================================================

pool AdjustUnderworldCamera_Horizontal

.boundary
|02BCF8| dw $0000
|02BCFA| dw $0100
|02BCFC| dw $0100
|02BCFE| dw $0000

endpool

;---------------------------------------------------------------------------------------------------

AdjustUnderworldCamera_Horizontal:
|02BD00| ASL A
|02BD01| ASL A
|02BD02| TAY

|02BD03| LDX.b #$00

.next
|02BD05| LDA.w .boundary,Y
|02BD08| STA.w $0614,X

|02BD0B| INY

|02BD0C| INX
|02BD0D| CPX.b #$04
|02BD0F| BNE .next

|02BD11| RTS

;===================================================================================================

pool AdjustUnderworldCamera_Vertical

.boundary
|02BD12| dw $0000
|02BD14| dw $0110
|02BD16| dw $0100
|02BD18| dw $0010

endpool

;---------------------------------------------------------------------------------------------------

AdjustUnderworldCamera_Vertical:
|02BD1A| ASL A
|02BD1B| TAY

|02BD1C| LDX.b #$00

.next
|02BD1E| LDA.w .boundary,Y
|02BD21| STA.w $0610,X

|02BD24| INY

|02BD25| INX
|02BD26| CPX.b #$04
|02BD28| BNE .next

|02BD2A| RTS

;===================================================================================================

pool ScrollRoomDuringTransition

.camera_scroll
|02BD2B| dw   4
|02BD2D| dw  -4
|02BD2F| dw   4
|02BD31| dw  -4

.boundaries
|02BD33| dw $0034
|02BD35| dw $0034
|02BD37| dw $003B
|02BD39| dw $003A

endpool

;---------------------------------------------------------------------------------------------------

ScrollRoomDuringTransition:
|02BD3B| PHB
|02BD3C| PHK
|02BD3D| PLB

|02BD3E| INC.w $0126

|02BD41| LDA.w $0418
|02BD44| ASL A
|02BD45| TAY

|02BD46| REP #$20

|02BD48| STZ.w $011A
|02BD4B| STZ.w $011C

|02BD4E| LDX.b #$00
|02BD50| CPY.b #$04
|02BD52| BCS .scrolling_horizontally

|02BD54| LDX.b #$06

.scrolling_horizontally
|02BD56| LDA.b $E2,X
|02BD58| CLC
|02BD59| ADC.w .camera_scroll,Y
|02BD5C| AND.w #$FFFE
|02BD5F| STA.b $E2,X
|02BD61| STA.b $E0,X
|02BD63| STA.b $00

;---------------------------------------------------------------------------------------------------

|02BD65| LDX.b #$00
|02BD67| CPY.b #$04
|02BD69| BCC .scrolling_vertically

|02BD6B| LDX.b #$02

.scrolling_vertically
|02BD6D| LDA.w $0126
|02BD70| AND.w #$00FF
|02BD73| CMP.w .boundaries,Y
|02BD76| BCC .keep_walking

|02BD78| LDA.b $20,X
|02BD7A| CLC
|02BD7B| ADC.w .camera_scroll,Y
|02BD7E| STA.b $20,X

.keep_walking
|02BD80| LDA.b $00
|02BD82| AND.w #$01FC
|02BD85| CMP.w $0610,Y
|02BD88| BNE .dirty_exit

|02BD8A| SEP #$20

|02BD8C| JSL SetAndSaveVisitedQuadrantFlags

|02BD90| PLB

|02BD91| INC.b $B0

|02BD93| STZ.w $0126

|02BD96| LDA.b $11
|02BD98| CMP.b #$02
|02BD9A| BNE .clean_exit

|02BD9C| JSL BuildBG1QuadrantForUpload

|02BDA0| RTS

;---------------------------------------------------------------------------------------------------

.dirty_exit
|02BDA1| PLB

|02BDA2| SEP #$20

.clean_exit
|02BDA4| RTS

;===================================================================================================

pool Module07_11_0A_ScrollCamera

.offset
|02BDA5| dw  32
|02BDA7| dw -64
|02BDA9| dw  32
|02BDAB| dw -32

endpool

;---------------------------------------------------------------------------------------------------

Module07_11_0A_ScrollCamera:
|02BDAD| PHB
|02BDAE| PHK
|02BDAF| PLB

|02BDB0| LDA.b #$0C
|02BDB2| STA.b $4B
|02BDB4| STA.w $02F9

|02BDB7| LDA.w $0418
|02BDBA| ASL A
|02BDBB| TAX

|02BDBC| REP #$20

|02BDBE| LDA.b $E8
|02BDC0| CLC
|02BDC1| ADC.w ScrollRoomDuringTransition.camera_scroll,X
|02BDC4| AND.w #$FFFC
|02BDC7| STA.b $E8
|02BDC9| STA.b $E6

|02BDCB| AND.w #$01FC
|02BDCE| CMP.w $0610,X
|02BDD1| BNE .exit

;---------------------------------------------------------------------------------------------------

|02BDD3| LDY.b $11

|02BDD5| CPY.b #$12
|02BDD7| BCC .set_a

|02BDD9| INX
|02BDDA| INX
|02BDDB| INX
|02BDDC| INX

.set_a
|02BDDD| LDA.b $20
|02BDDF| CLC
|02BDE0| ADC.w .offset,X
|02BDE3| STA.b $20

|02BDE5| SEP #$20

;---------------------------------------------------------------------------------------------------

|02BDE7| STZ.b $4B
|02BDE9| STZ.w $02F9

|02BDEC| INC.b $B0

.exit
|02BDEE| SEP #$20

|02BDF0| PLB

|02BDF1| RTS

;===================================================================================================

pool OverworldScrollTransition SetOverworldCameraBoundaries

.coordinate_camera_adjust
|02BDF2| dw $FFF8, $0008, $FFF8, $0008

.unused_a
|02BDFA| dw $FFE8, $0018, $FFD8, $0018

.boundary_delta
|02BE02| dw $FF90, $0070, $FF90, $0070

; these don't seem to be reachable
.unused_b
|02BE0A| dw $FE00, $0200, $FE00, $0200

.unused_c
|02BE12| dw $0018, $00E8, $0008, $00E8

.transition_target_north
|02BE1A| dw $FF20, $FF20, $FF20, $FF20
|02BE22| dw $FF20, $FF20, $FF20, $FF20
|02BE2A| dw $FF20, $FF20, $0120, $FF20
|02BE32| dw $FF20, $FF20, $FF20, $0120
|02BE3A| dw $0320, $0320, $0320, $0320
|02BE42| dw $0320, $0320, $0320, $0320
|02BE4A| dw $0520, $0520, $0520, $0520
|02BE52| dw $0520, $0520, $0520, $0520
|02BE5A| dw $0520, $0520, $0720, $0520
|02BE62| dw $0520, $0720, $0520, $0520
|02BE6A| dw $0920, $0920, $0920, $0920
|02BE72| dw $0920, $0920, $0920, $0920
|02BE7A| dw $0B20, $0B20, $0B20, $0B20
|02BE82| dw $0B20, $0B20, $0B20, $0B20
|02BE8A| dw $0B20, $0B20, $0D20, $0D20
|02BE92| dw $0D20, $0B20, $0B20, $0D20

.transition_target_west
|02BE9A| dw $FF00, $FF00, $0300, $0500
|02BEA2| dw $0500, $0900, $0900, $0D00
|02BEAA| dw $FF00, $FF00, $0300, $0500
|02BEB2| dw $0500, $0900, $0900, $0D00
|02BEBA| dw $FF00, $0100, $0300, $0500
|02BEC2| dw $0700, $0900, $0B00, $0D00
|02BECA| dw $FF00, $FF00, $0300, $0500
|02BED2| dw $0500, $0900, $0B00, $0B00
|02BEDA| dw $FF00, $FF00, $0300, $0500
|02BEE2| dw $0500, $0900, $0B00, $0B00
|02BEEA| dw $FF00, $0100, $0300, $0500
|02BEF2| dw $0700, $0900, $0B00, $0D00
|02BEFA| dw $FF00, $FF00, $0300, $0500
|02BF02| dw $0700, $0900, $0900, $0D00
|02BF0A| dw $FF00, $FF00, $0300, $0500
|02BF12| dw $0700, $0900, $0900, $0D00

;---------------------------------------------------------------------------------------------------

.boundary_y_size
|02BF1A| dw $011E, $031E

.boundary_x_size
|02BF1E| dw $0100, $0300

.transition_target_south_offset
|02BF22| dw $02E0, $04E0

.transition_target_east_offset
|02BF26| dw $0300, $0500

.camera_matters_when
|02BF2A| dw $001B, $001B, $001E, $001E

endpool

;---------------------------------------------------------------------------------------------------

OverworldScrollTransition_dirty_exit:
|02BF32| SEP #$20

|02BF34| PLB

|02BF35| LDX.w $0410

|02BF38| RTS

;---------------------------------------------------------------------------------------------------

OverworldScrollTransition:
|02BF39| PHB
|02BF3A| PHK
|02BF3B| PLB

|02BF3C| INC.w $0126

|02BF3F| LDA.w $0418
|02BF42| ASL A
|02BF43| TAY

|02BF44| LDX.b #$01

|02BF46| CPY.b #$04
|02BF48| BCS .going_horizontal

|02BF4A| LDX.b #$00

.going_horizontal
|02BF4C| LDA.w .coordinate_camera_adjust,Y
|02BF4F| STA.w $069E,X

;---------------------------------------------------------------------------------------------------

|02BF52| REP #$20

|02BF54| PHY

|02BF55| LDX.b #$00

|02BF57| CPY.b #$04
|02BF59| BCS .adjust_horizontal_camera

|02BF5B| LDX.b #$06

.adjust_horizontal_camera
|02BF5D| LDA.b $E2,X
|02BF5F| CLC
|02BF60| ADC.w .coordinate_camera_adjust,Y
|02BF63| STA.b $E2,X

|02BF65| LDY.b $8A
|02BF67| CPY.b #$1B ; OW 1B
|02BF69| BEQ .castle_or_pyramid

|02BF6B| CPY.b #$5B ; OW 5B
|02BF6D| BEQ .castle_or_pyramid

|02BF6F| STA.b $E0,X

.castle_or_pyramid
|02BF71| STA.b $00

;---------------------------------------------------------------------------------------------------

|02BF73| PLY

|02BF74| LDX.b #$00

|02BF76| CPY.b #$04
|02BF78| BCC .adjust_y_position

|02BF7A| LDX.b #$02

.adjust_y_position
|02BF7C| LDA.w $0126
|02BF7F| AND.w #$00FF
|02BF82| CMP.w .camera_matters_when,Y
|02BF85| BCC .dont_add_in_camera

|02BF87| LDA.b $20,X
|02BF89| CLC
|02BF8A| ADC.w .coordinate_camera_adjust,Y
|02BF8D| STA.b $20,X

.dont_add_in_camera
|02BF8F| LDA.b $00
|02BF91| CMP.w $0610,Y
|02BF94| BNE OverworldScrollTransition_dirty_exit

;---------------------------------------------------------------------------------------------------

|02BF96| LDA.w $0418
|02BF99| AND.w #$00FF
|02BF9C| BNE .dont_shift_v_scroll

|02BF9E| LDA.b $E8
|02BFA0| SEC
|02BFA1| SBC.w #$0002
|02BFA4| STA.b $E8

.dont_shift_v_scroll
|02BFA6| LDA.b $20,X
|02BFA8| AND.w #$FFF8
|02BFAB| STA.b $20,X

|02BFAD| CLC
|02BFAE| ADC.w .boundary_delta,Y
|02BFB1| PHA

|02BFB2| TXA
|02BFB3| ASL A
|02BFB4| TAX

|02BFB5| PLA
|02BFB6| CLC
|02BFB7| ADC.w #$000B
|02BFBA| STA.w $061A,X

|02BFBD| INC A
|02BFBE| INC A
|02BFBF| STA.w $0618,X

|02BFC2| PHX

;---------------------------------------------------------------------------------------------------

|02BFC3| LDX.b #$00

|02BFC5| LDA.w $0712
|02BFC8| BEQ .smaller_screen

|02BFCA| INX
|02BFCB| INX

.smaller_screen
|02BFCC| LDA.w $0700
|02BFCF| CLC
|02BFD0| ADC.w OverworldMixedCoordsChange,Y
|02BFD3| TAY

|02BFD4| JSR SetOverworldCameraBoundaries

|02BFD7| PLX

|02BFD8| STZ.w $0624,X
|02BFDB| STZ.w $0626,X

|02BFDE| SEP #$20

|02BFE0| LDA.b #$01
|02BFE2| STA.w $0ABF

|02BFE5| LDX.w $0410

|02BFE8| INC.b $11

|02BFEA| STZ.b $B0
|02BFEC| STZ.w $0126

;---------------------------------------------------------------------------------------------------

|02BFEF| PLB

|02BFF0| LDA.b $00

|02BFF2| PHA
|02BFF3| PHX

|02BFF4| JSL InitializeSpriteSlots

|02BFF8| PLX
|02BFF9| PLA

|02BFFA| RTS

;===================================================================================================

SetOverworldCameraBoundaries:
|02BFFB| LDA.w OverworldTransitionPositionY,Y
|02BFFE| STA.w $0600

|02C001| CLC
|02C002| ADC.w .boundary_y_size,X
|02C005| STA.w $0602

|02C008| LDA.w OverworldTransitionPositionX,Y
|02C00B| STA.w $0604

|02C00E| CLC
|02C00F| ADC.w .boundary_x_size,X
|02C012| STA.w $0606

|02C015| LDA.w .transition_target_north,Y
|02C018| STA.w $0610

|02C01B| CLC
|02C01C| ADC.w .transition_target_south_offset,X
|02C01F| STA.w $0612

|02C022| LDA.w .transition_target_west,Y
|02C025| STA.w $0614

|02C028| CLC
|02C029| ADC.w .transition_target_east_offset,X
|02C02C| STA.w $0616

|02C02F| RTS

;===================================================================================================

LinkLandingIndexOffset:
|02C030| db $00
|02C031| db $05
|02C032| db $0A
|02C033| db $0F

;===================================================================================================

UnderworldTransitionLandingCoordinate:
|02C034| db $0C, $20, $30, $38, $48
|02C039| db $D4, $D8, $C0, $C0, $A8
|02C03E| db $0C, $18, $28, $30, $40
|02C043| db $E4, $D8, $C8, $C0, $B0

;===================================================================================================

IntraroomTransition_FindTransitionLanding:
|02C048| JSR DeleteCertainAncillaeStopDashing
|02C04B| JSR IntraroomTransitionCalculateLanding

|02C04E| INC.b $B0

|02C050| REP #$30

|02C052| LDA.b $A0
|02C054| ASL A
|02C055| TAX

|02C056| LDA.l $7EF000,X
|02C05A| ORA.w $0408
|02C05D| STA.l $7EF000,X

|02C061| SEP #$30

|02C063| RTS

;===================================================================================================

IntraroomTransitionCalculateLanding:
|02C064| LDA.w $0418
|02C067| AND.b #$02
|02C069| PHA

|02C06A| JSR CalculateTransitionLanding

|02C06D| LDX.w $0418

|02C070| CMP.b #$02
|02C072| BNE .not_layers

|02C074| LDA.b #$01

.not_layers
|02C076| CMP.b #$04
|02C078| BNE .not_lower_layer_shutter

|02C07A| LDA.b #$02

.not_lower_layer_shutter
|02C07C| CLC
|02C07D| ADC.l LinkLandingIndexOffset,X
|02C081| TAX

|02C082| LDY.b #$08
|02C084| LDA.l UnderworldTransitionLandingCoordinate,X
|02C088| BPL .positive

|02C08A| LDY.b #$F8

.positive
|02C08C| STY.b $00

|02C08E| SEC
|02C08F| SBC.b $00

|02C091| PLY

|02C092| STA.w $0020,Y

|02C095| LDX.b #$00
|02C097| STX.b $4B

|02C099| RTS

;===================================================================================================

Module07_02_0D:
|02C09A| LDA.l $7EC005
|02C09E| ORA.l $7EC006
|02C0A2| BEQ TransitionLinkOutOfDoor

|02C0A4| JSL ApplyPaletteFilter

;===================================================================================================

TransitionLinkOutOfDoor:
|02C0A8| JSL HandleLinkAnimation_FullLongEntry

|02C0AC| JSR WalkOutOfDoor
|02C0AF| BCC .exit

|02C0B1| LDX.b $4E
|02C0B3| CPX.b #$02
|02C0B5| BEQ .clear_door_flag

|02C0B7| CPX.b #$04
|02C0B9| BNE .ignore_door_flag

.clear_door_flag
|02C0BB| STZ.b $6C

.ignore_door_flag
|02C0BD| STZ.b $6F
|02C0BF| STZ.b $49
|02C0C1| STZ.b $4E

|02C0C3| STZ.w $0418

|02C0C6| INC.b $B0

.exit
|02C0C8| RTS

;===================================================================================================

WalkOutOfDoor:
|02C0C9| LDX.w $0418

|02C0CC| LDA.b $4E
|02C0CE| CLC
|02C0CF| ADC.l LinkLandingIndexOffset,X
|02C0D3| TAX

|02C0D4| LDY.b #$02

|02C0D6| LDA.w $0418
|02C0D9| LSR A
|02C0DA| BCC .positive_speed

|02C0DC| LDY.b #$FE

.positive_speed
|02C0DE| STY.b $00

|02C0E0| LSR A
|02C0E1| BCS .handle_x

|02C0E3| LDY.b #$FF

|02C0E5| LDA.b $00
|02C0E7| BMI .negative_y

|02C0E9| INY

.negative_y
|02C0EA| CLC
|02C0EB| ADC.b $20
|02C0ED| STA.b $20

|02C0EF| TYA
|02C0F0| ADC.b $21
|02C0F2| STA.b $21

|02C0F4| LDA.b $20
|02C0F6| AND.b #$FE
|02C0F8| CMP.l UnderworldTransitionLandingCoordinate,X
|02C0FC| BEQ .success

.fail
|02C0FE| CLC

|02C0FF| RTS

;---------------------------------------------------------------------------------------------------

.handle_x
|02C100| LDY.b #$FF

|02C102| LDA.b $00
|02C104| BMI .negative_x

|02C106| INY

.negative_x
|02C107| CLC
|02C108| ADC.b $22
|02C10A| STA.b $22

|02C10C| TYA
|02C10D| ADC.b $23
|02C10F| STA.b $23

|02C111| LDA.b $22
|02C113| AND.b #$FE
|02C115| CMP.l UnderworldTransitionLandingCoordinate,X
|02C119| BNE .fail

.success
|02C11B| SEC

|02C11C| RTS

;===================================================================================================

CalculateTransitionLanding:
|02C11D| REP #$20

|02C11F| LDA.b $20
|02C121| CLC
|02C122| ADC.w #$000C
|02C125| AND.w #$01F8
|02C128| ASL A
|02C129| ASL A
|02C12A| ASL A
|02C12B| STA.b $00

|02C12D| LDA.b $22
|02C12F| CLC
|02C130| ADC.w #$0008
|02C133| AND.w #$01F8
|02C136| LSR A
|02C137| LSR A
|02C138| LSR A
|02C139| ORA.b $00

;---------------------------------------------------------------------------------------------------

|02C13B| LDX.b $EE
|02C13D| BEQ .upper_layer

|02C13F| CLC
|02C140| ADC.w #$1000

.upper_layer
|02C143| REP #$10

|02C145| TAX
|02C146| LDA.l $7F2000,X

|02C14A| SEP #$30

|02C14C| LDY.b #$00

|02C14E| CMP.b #$00 ; TILETYPE 00
|02C150| BEQ .save

|02C152| CMP.b #$09 ; TILETYPE 09
|02C154| BEQ .save

|02C156| INY

; Y=01
|02C157| AND.b #$8E
|02C159| CMP.b #$80 ; TILETYPE 80, TILETYPE 81
|02C15B| BEQ .save

|02C15D| INY

; Y=02
|02C15E| CMP.b #$82 ; TILETYPE 82
|02C160| BEQ .save

; Y=03
|02C162| INY
|02C163| CMP.b #$84 ; TILETYPE 84
|02C165| BEQ .save

|02C167| CMP.b #$88 ; TILETYPE 88
|02C169| BEQ .save

; Y=04
|02C16B| INY
|02C16C| CMP.b #$86 ; TILETYPE 86
|02C16E| BEQ .save

|02C170| DEY
|02C171| DEY

.save
|02C172| STY.b $4E

|02C174| TYA

|02C175| RTS

;===================================================================================================

pool Overworld_FinalizeEntryOntoScreen

.landing_point
|02C176| db $E0
|02C177| db $08
|02C178| db $E0
|02C179| db $10

endpool

;---------------------------------------------------------------------------------------------------

Overworld_FinalizeEntryOntoScreen:
|02C17A| JSL HandleLinkAnimation_FullLongEntry

|02C17E| LDY.b #$02

|02C180| LDA.w $069C
|02C183| LSR A
|02C184| BCS .positive

|02C186| LDY.b #$FE

.positive
|02C188| STY.b $00

|02C18A| LDX.b #$02

|02C18C| LSR A
|02C18D| BCS .handle_x_coords

|02C18F| LDX.b #$00

.handle_x_coords
|02C191| LDY.b #$FF

|02C193| LDA.b $00
|02C195| BMI .negative

|02C197| INY

.negative
|02C198| CLC
|02C199| ADC.b $20,X
|02C19B| STA.b $20,X

|02C19D| TYA
|02C19E| ADC.b $21,X
|02C1A0| STA.b $21,X

|02C1A2| LDA.b $20,X

|02C1A4| LDX.w $069C

|02C1A7| AND.b #$FE
|02C1A9| CMP.l .landing_point,X
|02C1AD| BNE .no_song

;---------------------------------------------------------------------------------------------------

|02C1AF| STZ.b $11
|02C1B1| STZ.b $B0

|02C1B3| LDA.w $0130
|02C1B6| CMP.b #$F1 ; SONG F1 - fade
|02C1B8| BNE .no_song

|02C1BA| LDX.b #$02 ; SONG 02

; Are we in kak?
|02C1BC| LDA.b $8A
|02C1BE| CMP.b #$18 ; OW 18
|02C1C0| BNE .set_song

|02C1C2| LDA.l $7EF3C5
|02C1C6| CMP.b #$03
|02C1C8| BCS .set_song

|02C1CA| LDX.b #$07 ; SONG 07

.set_song
|02C1CC| STX.w $012C

;---------------------------------------------------------------------------------------------------

.no_song
|02C1CF| JSR Overworld_OperateCameraScroll

|02C1D2| LDA.w $0416
|02C1D5| BEQ .exit

|02C1D7| JSR OverworldHandleMapScroll

.exit
|02C1DA| RTS

;===================================================================================================

Module09_1F:
|02C1DB| JSL HandleLinkAnimation_FullLongEntry

|02C1DF| LDY.b #$01

|02C1E1| LDA.w $069C
|02C1E4| LSR A
|02C1E5| BCS .positive_velocity

|02C1E7| LDY.b #$FF

.positive_velocity
|02C1E9| STY.b $00

|02C1EB| LDX.b #$02

|02C1ED| LSR A
|02C1EE| BCS .handle_x_coords

|02C1F0| LDX.b #$00

.handle_x_coords
|02C1F2| LDY.b #$FF

|02C1F4| LDA.b $00
|02C1F6| BMI .negative

|02C1F8| INY

.negative
|02C1F9| CLC
|02C1FA| ADC.b $20,X
|02C1FC| STA.b $20,X

|02C1FE| TYA
|02C1FF| ADC.b $21,X
|02C201| STA.b $21,X

|02C203| TXA
|02C204| LSR A
|02C205| TAX

|02C206| LDA.b $00
|02C208| STA.b $30,X

|02C20A| DEC.w $069A
|02C20D| BNE .delay_mode

|02C20F| LDA.b #$09
|02C211| STA.b $10
|02C213| STZ.b $11
|02C215| STZ.b $B0

.delay_mode
|02C217| JSR Overworld_OperateCameraScroll

|02C21A| RTS

;===================================================================================================

ConditionalMosaicControl:
|02C21B| LDA.l $7EC007
|02C21F| LSR A
|02C220| BCC CopyMosaicControl

;===================================================================================================

MosaicControlIncrease:
|02C222| LDA.l $7EC011
|02C226| CLC
|02C227| ADC.b #$10
|02C229| STA.l $7EC011

;===================================================================================================

CopyMosaicControl:
|02C22D| LDA.b #$09
|02C22F| STA.b $94

|02C231| LDA.l $7EC011
|02C235| ORA.b #$07
|02C237| STA.b $95

|02C239| RTS

;===================================================================================================
; FREE ROM: 0x36
;===================================================================================================
NULL_02C23A:
|02C23A| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|02C242| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|02C24A| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|02C252| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|02C25A| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|02C262| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|02C26A| db $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

Intro_InitializeBackgroundSettings:
|02C270| STZ.w SETINI

|02C273| LDA.b #$09
|02C275| STA.b $94
|02C277| STZ.b $95

|02C279| LDA.b #$13
|02C27B| STA.w BG1SC

|02C27E| LDA.b #$03
|02C280| STA.w BG2SC

|02C283| LDA.b #$63
|02C285| STA.w BG3SC

|02C288| LDA.b #$22
|02C28A| STA.w BG12NBA

|02C28D| LDA.b #$07
|02C28F| STA.w BG34NBA

|02C292| LDA.b #$20
|02C294| STA.b $9A

|02C296| LDA.b #$20 ; Fixed color RGB: #000000
|02C298| STA.b $9C

|02C29A| LDA.b #$40
|02C29C| STA.b $9D

|02C29E| LDA.b #$80
|02C2A0| STA.b $9E

|02C2A2| RTS

;===================================================================================================

LoadRoomForAttract:
|02C2A3| STA.w $010E

|02C2A6| JSR LoadUnderworldEntrance

|02C2A9| STZ.w $045A
|02C2AC| STZ.w $0458

|02C2AF| JSR LoadAndDrawRoom
|02C2B2| JSR ResetLampconeAndLink

|02C2B5| RTL

;===================================================================================================

SaveAndLoadAttractPalettes:
|02C2B6| STX.w $0AA3

|02C2B9| STA.w $0AA1
|02C2BC| STA.w $0AA2

|02C2BF| JSL InitializeTilesets

|02C2C3| LDA.b #$02
|02C2C5| STA.w $0AA9

|02C2C8| INC.b $15

|02C2CA| JSL SetBGandFixedColorBlack

;---------------------------------------------------------------------------------------------------

LoadAttractAltarPalettes:
|02C2CE| JSL PaletteLoad_SpritePal0Left
|02C2D2| JSL PaletteLoad_SpriteMain
|02C2D6| JSL PaletteLoad_SpriteAux1
|02C2DA| JSL PaletteLoad_SpriteAux2
|02C2DE| JSL PaletteLoad_SpriteEnvironment_Underworld
|02C2E2| JSL PaletteLoad_HUD
|02C2E6| JSL PaletteLoad_UnderworldSet

|02C2EA| RTL

;===================================================================================================

LoadAndDrawRoom:
|02C2EB| LDA.b $9B
|02C2ED| PHA

|02C2EE| STZ.w HDMAEN
|02C2F1| STZ.b $9B

|02C2F3| JSL LoadAndBuildRoom

|02C2F7| STZ.w $0418
|02C2FA| STZ.w $045C
|02C2FD| STZ.w $0200

;---------------------------------------------------------------------------------------------------

.next_quadrant
|02C300| JSL TilemapPrep_NotWaterOnTag
|02C304| JSL NMI_UploadTilemap_long

|02C308| JSL BuildBG2QuadrantForUpload
|02C30C| JSL NMI_UploadTilemap_long

|02C310| LDA.w $045C
|02C313| CMP.b #$10
|02C315| BNE .next_quadrant

;---------------------------------------------------------------------------------------------------

|02C317| PLA
|02C318| STA.b $9B

|02C31A| STZ.b $17
|02C31C| STZ.w $0200
|02C31F| STZ.b $B0

|02C321| RTS

;===================================================================================================

Intro_LoadAllPalettes:
|02C322| REP #$20

|02C324| LDX.b #$00

|02C326| LDA.w #$0000 ; RGB: #000000

.next_color
|02C329| STA.l $7EC480,X
|02C32D| STA.l $7EC500,X
|02C331| STA.l $7EC580,X
|02C335| STA.l $7EC600,X
|02C339| STA.l $7EC680,X

|02C33D| INX
|02C33E| INX
|02C33F| CPX.b #$80
|02C341| BNE .next_color

;---------------------------------------------------------------------------------------------------

|02C343| SEP #$20

|02C345| LDA.b #$04
|02C347| STA.w $0AB3

|02C34A| LDA.b #$03
|02C34C| STA.w $0AB4
|02C34F| STA.w $0AB5

|02C352| LDA.b #$03 ; redundant
|02C354| STA.w $0AB8

|02C357| LDA.b #$05
|02C359| STA.w $0AB1

|02C35C| STZ.w $0AA9

|02C35F| JSL SetBGandFixedColorBlack

|02C363| JSL PaletteLoad_SpriteMain
|02C367| JSL PaletteLoad_OWBGMain

|02C36B| JSL PaletteLoad_OWBG1
|02C36F| JSL PaletteLoad_OWBG2
|02C373| JSL PaletteLoad_OWBG3

|02C377| JSL PaletteLoad_SpriteEnvironment_Underworld

|02C37B| JSL PaletteLoad_HUD

;---------------------------------------------------------------------------------------------------

|02C37F| REP #$20

|02C381| LDX.b #$00

.copy_next
|02C383| LDA.l $7EC4D0,X
|02C387| STA.l $7EC6B0,X

|02C38B| INX
|02C38C| INX
|02C38D| CPX.b #$10
|02C38F| BNE .copy_next

|02C391| SEP #$20

|02C393| RTS

;===================================================================================================

LoadUnderworldPalettes:
|02C394| STZ.w $0AA9

|02C397| JSL SetBGandFixedColorBlack

|02C39B| JSL PaletteLoad_SpritePal0Left
|02C39F| JSL PaletteLoad_SpriteMain
|02C3A3| JSL PaletteLoad_SpriteAux1
|02C3A7| JSL PaletteLoad_SpriteAux2

|02C3AB| JSL PaletteLoad_Sword
|02C3AF| JSL PaletteLoad_Shield

|02C3B3| JSL PaletteLoad_SpriteEnvironment
|02C3B7| JSL PaletteLoad_LinkArmorAndGloves

|02C3BB| JSL PaletteLoad_HUD
|02C3BF| JSL PaletteLoad_UnderworldSet

;===================================================================================================
; TODO analyze
;===================================================================================================
Overworld_CopyPalettesToCache_WithPrep:
|02C3C3| LDA.w $0AB6
|02C3C6| STA.l $7EC20A

|02C3CA| LDA.w $0AB8
|02C3CD| STA.l $7EC20B

|02C3D1| LDA.w $0AB7
|02C3D4| STA.l $7EC20C

|02C3D8| REP #$20

|02C3DA| LDA.w #$0002
|02C3DD| STA.l $7EC009

|02C3E1| LDA.w #$0000
|02C3E4| STA.l $7EC007

|02C3E8| LDA.w #$0000
|02C3EB| STA.l $7EC00B

|02C3EF| JMP.w Overworld_CopyPalettesToCache

;===================================================================================================
; Unused
;===================================================================================================
OverworldLoadScreensPaletteSet_long:
|02C3F2| JSR OverworldLoadScreensPaletteSet

|02C3F5| RTL

;===================================================================================================

OverworldLoadScreensPaletteSet:
|02C3F6| LDX.b #$02

|02C3F8| LDA.b $8A
|02C3FA| AND.b #$3F
|02C3FC| CMP.b #$03 ; OW 03, OW 43
|02C3FE| BEQ .not_death_mountain

|02C400| CMP.b #$05 ; OW 05, OW 45
|02C402| BEQ .not_death_mountain

|02C404| CMP.b #$07 ; OW 07, OW 47
|02C406| BEQ .not_death_mountain

|02C408| LDX.b #$00

.not_death_mountain
|02C40A| LDA.b $8A
|02C40C| AND.b #$40
|02C40E| BEQ OverworldLoadScreensPaletteSet_Preloaded

|02C410| INX

;===================================================================================================

OverworldLoadScreensPaletteSet_Preloaded:
|02C411| STX.w $0AB3
|02C414| STZ.w $0AA9

|02C417| JSL PaletteLoad_SpriteMain
|02C41B| JSL PaletteLoad_SpriteEnvironment

|02C41F| JSL PaletteLoad_SpriteAux1
|02C423| JSL PaletteLoad_SpriteAux2

|02C427| JSL PaletteLoad_Sword
|02C42B| JSL PaletteLoad_Shield
|02C42F| JSL PaletteLoad_LinkArmorAndGloves

|02C433| LDX.b #$01

|02C435| LDA.l $7EF3CA
|02C439| AND.b #$40
|02C43B| BEQ .light_world

|02C43D| LDX.b #$03

.light_world
|02C43F| STX.w $0AAC

|02C442| JSL PaletteLoad_SpritePal0Left
|02C446| JSL PaletteLoad_HUD
|02C44A| JSL PaletteLoad_OWBGMain

|02C44E| RTS

;===================================================================================================

SpecialOverworld_CopyPalettesToCache:
|02C44F| REP #$20

|02C451| LDX.b #$00

|02C453| LDA.w #$0000 ; RGB: #000000

.next_black
|02C456| STA.l $7EC540,X
|02C45A| STA.l $7EC580,X
|02C45E| STA.l $7EC5C0,X
|02C462| STA.l $7EC600,X
|02C466| STA.l $7EC640,X
|02C46A| STA.l $7EC680,X
|02C46E| STA.l $7EC6C0,X

|02C472| INX
|02C473| INX
|02C474| CPX.b #$40
|02C476| BNE .next_black

;---------------------------------------------------------------------------------------------------

|02C478| LDX.b #$00

.next_color
|02C47A| LDA.l $7EC300,X
|02C47E| STA.l $7EC500,X

|02C482| LDA.l $7EC310,X
|02C486| STA.l $7EC510,X

|02C48A| LDA.l $7EC320,X
|02C48E| STA.l $7EC520,X

|02C492| LDA.l $7EC330,X
|02C496| STA.l $7EC530,X

|02C49A| LDA.l $7EC4B0,X
|02C49E| STA.l $7EC6B0,X

|02C4A2| LDA.l $7EC4D0,X
|02C4A6| STA.l $7EC6D0,X

|02C4AA| LDA.l $7EC4E0,X
|02C4AE| STA.l $7EC6E0,X

|02C4B2| LDA.l $7EC4F0,X
|02C4B6| STA.l $7EC6F0,X

|02C4BA| INX
|02C4BB| INX
|02C4BC| CPX.b #$10
|02C4BE| BNE .next_color

;---------------------------------------------------------------------------------------------------

|02C4C0| SEP #$20

; Full mosaic on BG1, BG2, BG3
|02C4C2| LDA.b #$F7
|02C4C4| STA.b $95
|02C4C6| STA.l $7EC011

|02C4CA| INC.b $15

|02C4CC| RTS

;===================================================================================================

Overworld_CopyPalettesToCache:
|02C4CD| REP #$20

|02C4CF| LDX.b #$00

.next_color
|02C4D1| LDA.l $7EC300,X
|02C4D5| STA.l $7EC500,X

|02C4D9| LDA.l $7EC340,X
|02C4DD| STA.l $7EC540,X

|02C4E1| LDA.l $7EC380,X
|02C4E5| STA.l $7EC580,X

|02C4E9| LDA.l $7EC3C0,X
|02C4ED| STA.l $7EC5C0,X

|02C4F1| LDA.l $7EC400,X
|02C4F5| STA.l $7EC600,X

|02C4F9| LDA.l $7EC440,X
|02C4FD| STA.l $7EC640,X

|02C501| LDA.l $7EC480,X
|02C505| STA.l $7EC680,X

|02C509| LDA.l $7EC4C0,X
|02C50D| STA.l $7EC6C0,X

|02C511| INX
|02C512| INX
|02C513| CPX.b #$40
|02C515| BNE .next_color

;---------------------------------------------------------------------------------------------------

|02C517| SEP #$20

|02C519| INC.b $15

|02C51B| RTS

;===================================================================================================

CleanUpAndPrepDesertPrayerHDMA:
|02C51C| PHB
|02C51D| PHK
|02C51E| PLB

|02C51F| LDX.b #$04

.next_prop
|02C521| LDA.w .hdma_props,X
|02C524| STA.w DMA7MODE,X

|02C527| DEX
|02C528| BPL .next_prop

;---------------------------------------------------------------------------------------------------

|02C52A| LDA.b #$00
|02C52C| STA.w HDMA7ITBLB

; Enable inverse windowing logic on everything
|02C52F| LDA.b #$33
|02C531| STA.b $96

|02C533| LDA.b #$03
|02C535| STA.b $97

|02C537| LDA.b #$33
|02C539| STA.b $98

|02C53B| LDA.b $1C
|02C53D| STA.b $1E

|02C53F| LDA.b $1D
|02C541| STA.b $1F

; Enable HDMA channel 7
|02C543| LDA.b #$80
|02C545| STA.b $9B

|02C547| REP #$10

|02C549| LDX.w #$01DF

;---------------------------------------------------------------------------------------------------

.clear_next
|02C54C| STZ.w $1B00,X

|02C54F| DEX
|02C550| BPL .clear_next

|02C552| SEP #$10

|02C554| PLB

|02C555| RTL

;---------------------------------------------------------------------------------------------------
; This was probably used to build a table in WRAM or something
.unused_hdma_data
|02C556| db $01 : dw $FF00 ; 1 line
|02C559| db $01 : dw $FF00 ; 1 line
|02C55C| db $01 : dw $FF00 ; 1 line
|02C55F| db $01 : dw $FF00 ; 1 line
|02C562| db $81 : dw $0000 ; 1 line continuous
|02C565| db $00 ; end

.unused_hdma_props
|02C566| db $01 ; direct transfer, 2 registers write once
|02C567| db WH0
|02C568| dl $001B00 ; table location

;---------------------------------------------------------------------------------------------------

.hdma_props
|02C56B| db $41 ; indirect transfer, 2 registers write once
|02C56C| db WH0
|02C56D| dl .indirect_table

.indirect_table
|02C570| db $F8 : dw $1B00 ; 120 lines, continuous
|02C573| db $F8 : dw $1BF0 ; 120 lines, continuous
|02C576| db $00 ; end

;===================================================================================================
; TODO Name entrances
;===================================================================================================
EntranceData:

; writes to $A0, $048E
.room_id
|02C577| dw $0104 ; 0x00
|02C579| dw $0104 ; 0x01
|02C57B| dw $0012 ; 0x02
|02C57D| dw $0060 ; 0x03
|02C57F| dw $0061 ; 0x04
|02C581| dw $0062 ; 0x05
|02C583| dw $00F0 ; 0x06
|02C585| dw $00F1 ; 0x07
|02C587| dw $00C9 ; 0x08
|02C589| dw $0084 ; 0x09
|02C58B| dw $0085 ; 0x0A
|02C58D| dw $0083 ; 0x0B
|02C58F| dw $0063 ; 0x0C
|02C591| dw $00F2 ; 0x0D
|02C593| dw $00F3 ; 0x0E
|02C595| dw $00F4 ; 0x0F
|02C597| dw $00F5 ; 0x10
|02C599| dw $00E3 ; 0x11
|02C59B| dw $00E2 ; 0x12
|02C59D| dw $00F8 ; 0x13
|02C59F| dw $00E8 ; 0x14
|02C5A1| dw $0023 ; 0x15
|02C5A3| dw $00FB ; 0x16
|02C5A5| dw $00EB ; 0x17
|02C5A7| dw $00D5 ; 0x18
|02C5A9| dw $0024 ; 0x19
|02C5AB| dw $00FD ; 0x1A
|02C5AD| dw $00ED ; 0x1B
|02C5AF| dw $00FE ; 0x1C
|02C5B1| dw $00EE ; 0x1D
|02C5B3| dw $00FF ; 0x1E
|02C5B5| dw $00EF ; 0x1F
|02C5B7| dw $00DF ; 0x20
|02C5B9| dw $00F9 ; 0x21
|02C5BB| dw $00FA ; 0x22
|02C5BD| dw $00EA ; 0x23
|02C5BF| dw $00E0 ; 0x24
|02C5C1| dw $0028 ; 0x25
|02C5C3| dw $004A ; 0x26
|02C5C5| dw $0098 ; 0x27
|02C5C7| dw $0056 ; 0x28
|02C5C9| dw $0057 ; 0x29
|02C5CB| dw $0058 ; 0x2A
|02C5CD| dw $0059 ; 0x2B
|02C5CF| dw $00E1 ; 0x2C
|02C5D1| dw $000E ; 0x2D
|02C5D3| dw $00E6 ; 0x2E
|02C5D5| dw $00E7 ; 0x2F
|02C5D7| dw $00E4 ; 0x30
|02C5D9| dw $00E5 ; 0x31
|02C5DB| dw $0055 ; 0x32
|02C5DD| dw $0077 ; 0x33
|02C5DF| dw $00DB ; 0x34
|02C5E1| dw $00D6 ; 0x35
|02C5E3| dw $0010 ; 0x36
|02C5E5| dw $000C ; 0x37
|02C5E7| dw $0008 ; 0x38
|02C5E9| dw $002F ; 0x39
|02C5EB| dw $003C ; 0x3A
|02C5ED| dw $002C ; 0x3B
|02C5EF| dw $0100 ; 0x3C
|02C5F1| dw $011E ; 0x3D
|02C5F3| dw $0101 ; 0x3E
|02C5F5| dw $0101 ; 0x3F
|02C5F7| dw $0102 ; 0x40
|02C5F9| dw $0117 ; 0x41
|02C5FB| dw $0103 ; 0x42
|02C5FD| dw $0103 ; 0x43
|02C5FF| dw $0103 ; 0x44
|02C601| dw $0105 ; 0x45
|02C603| dw $011F ; 0x46
|02C605| dw $0106 ; 0x47
|02C607| dw $0106 ; 0x48
|02C609| dw $0107 ; 0x49
|02C60B| dw $0107 ; 0x4A
|02C60D| dw $0108 ; 0x4B
|02C60F| dw $0109 ; 0x4C
|02C611| dw $010A ; 0x4D
|02C613| dw $010B ; 0x4E
|02C615| dw $010C ; 0x4F
|02C617| dw $010C ; 0x50
|02C619| dw $011B ; 0x51
|02C61B| dw $011B ; 0x52
|02C61D| dw $011C ; 0x53
|02C61F| dw $011C ; 0x54
|02C621| dw $011E ; 0x55
|02C623| dw $0120 ; 0x56
|02C625| dw $0110 ; 0x57
|02C627| dw $0112 ; 0x58
|02C629| dw $0111 ; 0x59
|02C62B| dw $0112 ; 0x5A
|02C62D| dw $0113 ; 0x5B
|02C62F| dw $0114 ; 0x5C
|02C631| dw $0115 ; 0x5D
|02C633| dw $0115 ; 0x5E
|02C635| dw $010D ; 0x5F
|02C637| dw $010F ; 0x60
|02C639| dw $0119 ; 0x61
|02C63B| dw $0114 ; 0x62
|02C63D| dw $0116 ; 0x63
|02C63F| dw $0121 ; 0x64
|02C641| dw $0122 ; 0x65
|02C643| dw $0122 ; 0x66
|02C645| dw $0118 ; 0x67
|02C647| dw $011A ; 0x68
|02C649| dw $010E ; 0x69
|02C64B| dw $010E ; 0x6A
|02C64D| dw $011F ; 0x6B
|02C64F| dw $0123 ; 0x6C
|02C651| dw $0124 ; 0x6D
|02C653| dw $0124 ; 0x6E
|02C655| dw $0125 ; 0x6F
|02C657| dw $0125 ; 0x70
|02C659| dw $0126 ; 0x71
|02C65B| dw $0126 ; 0x72
|02C65D| dw $0080 ; 0x73
|02C65F| dw $0051 ; 0x74
|02C661| dw $0030 ; 0x75
|02C663| dw $0058 ; 0x76
|02C665| dw $0067 ; 0x77
|02C667| dw $0068 ; 0x78
|02C669| dw $0056 ; 0x79
|02C66B| dw $00E1 ; 0x7A
|02C66D| dw $0000 ; 0x7B
|02C66F| dw $0018 ; 0x7C
|02C671| dw $0055 ; 0x7D
|02C673| dw $00E3 ; 0x7E
|02C675| dw $00E2 ; 0x7F
|02C677| dw $002F ; 0x80
|02C679| dw $0011 ; 0x81
|02C67B| dw $0003 ; 0x82
|02C67D| dw $0127 ; 0x83
|02C67F| dw $0120 ; 0x84

;---------------------------------------------------------------------------------------------------

; to $0600   +$1, +$3, +$5, +$7, +$9, +$B, +$D, +$F
.camera_scroll_boundaries
|02C681| db $21, $20, $21, $21, $09, $09, $09, $0A ; 0x00
|02C689| db $21, $20, $21, $21, $09, $09, $09, $0A ; 0x01
|02C691| db $03, $02, $03, $03, $04, $04, $04, $05 ; 0x02
|02C699| db $0D, $0C, $0D, $0D, $01, $00, $01, $01 ; 0x03
|02C6A1| db $0D, $0C, $0D, $0D, $02, $02, $02, $03 ; 0x04
|02C6A9| db $0D, $0C, $0D, $0D, $04, $04, $04, $05 ; 0x05
|02C6B1| db $1F, $1E, $1F, $1F, $00, $00, $00, $01 ; 0x06
|02C6B9| db $1F, $1E, $1F, $1F, $03, $02, $03, $03 ; 0x07
|02C6C1| db $19, $18, $19, $19, $12, $12, $12, $13 ; 0x08
|02C6C9| db $11, $10, $11, $11, $08, $08, $08, $09 ; 0x09
|02C6D1| db $11, $10, $11, $11, $0B, $0A, $0B, $0B ; 0x0A
|02C6D9| db $11, $10, $11, $11, $06, $06, $06, $07 ; 0x0B
|02C6E1| db $0D, $0C, $0D, $0D, $06, $06, $06, $07 ; 0x0C
|02C6E9| db $1F, $1E, $1F, $1F, $05, $05, $05, $06 ; 0x0D
|02C6F1| db $1F, $1E, $1F, $1F, $06, $06, $06, $07 ; 0x0E
|02C6F9| db $1F, $1E, $1F, $1F, $09, $09, $09, $0A ; 0x0F
|02C701| db $1F, $1E, $1F, $1F, $0A, $0A, $0A, $0B ; 0x10
|02C709| db $1D, $1C, $1D, $1D, $06, $06, $06, $07 ; 0x11
|02C711| db $1D, $1C, $1D, $1D, $05, $04, $05, $05 ; 0x12
|02C719| db $1F, $1E, $1F, $1F, $10, $10, $10, $11 ; 0x13
|02C721| db $1D, $1C, $1D, $1D, $11, $10, $11, $11 ; 0x14
|02C729| db $05, $04, $05, $05, $07, $06, $07, $07 ; 0x15
|02C731| db $1F, $1E, $1F, $1F, $16, $16, $16, $17 ; 0x16
|02C739| db $1D, $1C, $1D, $1D, $17, $16, $17, $17 ; 0x17
|02C741| db $1B, $1A, $1B, $1B, $0A, $0A, $0A, $0B ; 0x18
|02C749| db $05, $04, $05, $05, $09, $08, $09, $09 ; 0x19
|02C751| db $1F, $1E, $1F, $1F, $1A, $1A, $1A, $1B ; 0x1A
|02C759| db $1D, $1C, $1D, $1D, $1A, $1A, $1A, $1B ; 0x1B
|02C761| db $1F, $1E, $1F, $1F, $1D, $1D, $1D, $1E ; 0x1C
|02C769| db $1D, $1C, $1D, $1D, $1D, $1C, $1D, $1D ; 0x1D
|02C771| db $1F, $1E, $1F, $1F, $1F, $1E, $1F, $1F ; 0x1E
|02C779| db $1D, $1C, $1D, $1D, $1E, $1E, $1E, $1F ; 0x1F
|02C781| db $1B, $1A, $1B, $1B, $1E, $1E, $1E, $1F ; 0x20
|02C789| db $1F, $1E, $1F, $1F, $12, $12, $12, $13 ; 0x21
|02C791| db $1F, $1E, $1F, $1F, $14, $14, $14, $15 ; 0x22
|02C799| db $1D, $1C, $1D, $1D, $14, $14, $14, $15 ; 0x23
|02C7A1| db $1D, $1C, $1D, $1D, $00, $00, $00, $01 ; 0x24
|02C7A9| db $05, $04, $05, $05, $10, $10, $10, $11 ; 0x25
|02C7B1| db $09, $08, $09, $09, $14, $14, $14, $15 ; 0x26
|02C7B9| db $13, $12, $13, $13, $10, $10, $10, $11 ; 0x27
|02C7C1| db $0B, $0A, $0B, $0B, $0C, $0C, $0C, $0D ; 0x28
|02C7C9| db $0B, $0A, $0B, $0B, $0E, $0E, $0E, $0F ; 0x29
|02C7D1| db $0B, $0A, $0B, $0B, $10, $10, $10, $11 ; 0x2A
|02C7D9| db $0B, $0A, $0B, $0B, $12, $12, $12, $13 ; 0x2B
|02C7E1| db $1D, $1C, $1D, $1D, $02, $02, $02, $03 ; 0x2C
|02C7E9| db $01, $00, $01, $01, $1D, $1C, $1D, $1D ; 0x2D
|02C7F1| db $1D, $1C, $1D, $1D, $0C, $0C, $0C, $0D ; 0x2E
|02C7F9| db $1D, $1C, $1D, $1D, $0F, $0E, $0F, $0F ; 0x2F
|02C801| db $1D, $1C, $1D, $1D, $08, $08, $08, $09 ; 0x30
|02C809| db $1D, $1C, $1D, $1D, $0A, $0A, $0A, $0B ; 0x31
|02C811| db $0B, $0A, $0B, $0B, $0A, $0A, $0A, $0B ; 0x32
|02C819| db $0F, $0E, $0F, $0F, $0E, $0E, $0E, $0F ; 0x33
|02C821| db $1B, $1A, $1B, $1B, $16, $16, $16, $17 ; 0x34
|02C829| db $1B, $1A, $1B, $1B, $0D, $0C, $0D, $0D ; 0x35
|02C831| db $03, $02, $03, $03, $00, $00, $00, $01 ; 0x36
|02C839| db $01, $00, $01, $01, $18, $18, $18, $19 ; 0x37
|02C841| db $01, $00, $01, $01, $11, $10, $11, $11 ; 0x38
|02C849| db $05, $04, $05, $05, $1F, $1E, $1F, $1F ; 0x39
|02C851| db $07, $06, $07, $07, $19, $18, $19, $19 ; 0x3A
|02C859| db $05, $04, $05, $05, $18, $18, $18, $19 ; 0x3B
|02C861| db $21, $20, $21, $21, $00, $00, $00, $01 ; 0x3C
|02C869| db $23, $22, $23, $23, $1D, $1D, $1D, $1E ; 0x3D
|02C871| db $21, $20, $21, $21, $02, $02, $02, $03 ; 0x3E
|02C879| db $21, $20, $21, $21, $03, $03, $03, $04 ; 0x3F
|02C881| db $21, $20, $21, $21, $04, $04, $04, $05 ; 0x40
|02C889| db $23, $22, $23, $23, $0F, $0E, $0F, $0F ; 0x41
|02C891| db $21, $20, $21, $21, $06, $06, $06, $07 ; 0x42
|02C899| db $21, $20, $21, $21, $06, $06, $06, $07 ; 0x43
|02C8A1| db $21, $20, $21, $21, $07, $07, $07, $08 ; 0x44
|02C8A9| db $21, $20, $21, $21, $0A, $0A, $0A, $0B ; 0x45
|02C8B1| db $23, $22, $23, $23, $1F, $1F, $1F, $20 ; 0x46
|02C8B9| db $21, $20, $21, $21, $0C, $0C, $0C, $0D ; 0x47
|02C8C1| db $21, $20, $21, $21, $0D, $0D, $0D, $0E ; 0x48
|02C8C9| db $21, $20, $21, $21, $0E, $0E, $0E, $0F ; 0x49
|02C8D1| db $21, $20, $21, $21, $0F, $0F, $0F, $10 ; 0x4A
|02C8D9| db $21, $20, $21, $21, $10, $10, $10, $11 ; 0x4B
|02C8E1| db $21, $20, $21, $21, $12, $12, $12, $13 ; 0x4C
|02C8E9| db $21, $20, $21, $21, $14, $14, $14, $15 ; 0x4D
|02C8F1| db $21, $20, $21, $21, $16, $16, $16, $17 ; 0x4E
|02C8F9| db $21, $20, $21, $21, $18, $18, $18, $19 ; 0x4F
|02C901| db $21, $20, $21, $21, $19, $19, $19, $1A ; 0x50
|02C909| db $23, $22, $23, $23, $16, $16, $16, $17 ; 0x51
|02C911| db $23, $22, $23, $23, $17, $17, $17, $18 ; 0x52
|02C919| db $23, $22, $23, $23, $18, $18, $18, $19 ; 0x53
|02C921| db $23, $22, $23, $23, $19, $19, $19, $19 ; 0x54
|02C929| db $23, $22, $23, $23, $1C, $1C, $1C, $1D ; 0x55
|02C931| db $25, $24, $25, $25, $01, $00, $01, $01 ; 0x56
|02C939| db $23, $22, $23, $23, $00, $00, $00, $01 ; 0x57
|02C941| db $23, $22, $23, $23, $05, $05, $05, $06 ; 0x58
|02C949| db $23, $22, $23, $23, $02, $02, $02, $03 ; 0x59
|02C951| db $23, $22, $23, $23, $04, $04, $04, $05 ; 0x5A
|02C959| db $23, $22, $23, $23, $06, $06, $06, $07 ; 0x5B
|02C961| db $23, $22, $23, $23, $08, $08, $08, $09 ; 0x5C
|02C969| db $23, $22, $23, $23, $0A, $0A, $0A, $0B ; 0x5D
|02C971| db $23, $22, $23, $23, $0B, $0B, $0B, $0C ; 0x5E
|02C979| db $21, $20, $21, $21, $1A, $1A, $1A, $1B ; 0x5F
|02C981| db $21, $20, $21, $21, $1E, $1E, $1E, $1F ; 0x60
|02C989| db $23, $22, $23, $23, $12, $12, $12, $13 ; 0x61
|02C991| db $23, $22, $23, $23, $09, $09, $09, $0A ; 0x62
|02C999| db $23, $22, $23, $23, $0D, $0D, $0D, $0E ; 0x63
|02C9A1| db $25, $24, $25, $25, $02, $02, $02, $03 ; 0x64
|02C9A9| db $25, $24, $25, $25, $04, $04, $04, $05 ; 0x65
|02C9B1| db $25, $24, $25, $25, $05, $05, $05, $06 ; 0x66
|02C9B9| db $23, $22, $23, $23, $11, $11, $11, $12 ; 0x67
|02C9C1| db $23, $22, $23, $23, $15, $15, $15, $16 ; 0x68
|02C9C9| db $21, $20, $21, $21, $1C, $1C, $1C, $1D ; 0x69
|02C9D1| db $21, $20, $21, $21, $1D, $1D, $1D, $1E ; 0x6A
|02C9D9| db $23, $22, $23, $23, $1E, $1E, $1E, $1F ; 0x6B
|02C9E1| db $25, $24, $25, $25, $06, $06, $06, $07 ; 0x6C
|02C9E9| db $25, $24, $25, $25, $08, $08, $08, $09 ; 0x6D
|02C9F1| db $25, $24, $25, $25, $09, $09, $09, $0A ; 0x6E
|02C9F9| db $25, $24, $25, $25, $0A, $0A, $0A, $0B ; 0x6F
|02CA01| db $25, $24, $25, $25, $0B, $0B, $0B, $0C ; 0x70
|02CA09| db $25, $24, $25, $25, $0C, $0C, $0C, $0D ; 0x71
|02CA11| db $25, $24, $25, $25, $0D, $0D, $0D, $0E ; 0x72
|02CA19| db $10, $10, $10, $11, $01, $00, $01, $01 ; 0x73
|02CA21| db $0B, $0A, $0B, $0B, $02, $02, $02, $03 ; 0x74
|02CA29| db $06, $06, $06, $07, $00, $00, $00, $01 ; 0x75
|02CA31| db $0A, $0A, $0A, $0B, $11, $10, $11, $11 ; 0x76
|02CA39| db $0C, $0C, $0C, $0D, $0E, $0E, $0E, $0F ; 0x77
|02CA41| db $0C, $0C, $0C, $0D, $11, $10, $11, $11 ; 0x78
|02CA49| db $0A, $0A, $0A, $0B, $0D, $0C, $0D, $0D ; 0x79
|02CA51| db $1C, $1C, $1C, $1D, $03, $02, $03, $03 ; 0x7A
|02CA59| db $00, $00, $00, $01, $01, $00, $01, $01 ; 0x7B
|02CA61| db $03, $02, $03, $03, $10, $10, $10, $11 ; 0x7C
|02CA69| db $0A, $0A, $0A, $0B, $0B, $0A, $0B, $0B ; 0x7D
|02CA71| db $1D, $1C, $1D, $1D, $07, $06, $07, $07 ; 0x7E
|02CA79| db $1D, $1C, $1D, $1D, $04, $04, $04, $05 ; 0x7F
|02CA81| db $05, $04, $05, $05, $1E, $1E, $1E, $1F ; 0x80
|02CA89| db $03, $02, $03, $03, $03, $02, $03, $03 ; 0x81
|02CA91| db $01, $00, $01, $01, $06, $06, $06, $07 ; 0x82
|02CA99| db $25, $24, $25, $25, $0E, $0E, $0E, $0F ; 0x83
|02CAA1| db $25, $24, $25, $25, $00, $00, $00, $01 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $E0, $E2, $011E, $0120
.horizontal_scroll
|02CAA9| dw $0900 ; 0x00
|02CAAB| dw $0900 ; 0x01
|02CAAD| dw $0480 ; 0x02
|02CAAF| dw $0100 ; 0x03
|02CAB1| dw $0280 ; 0x04
|02CAB3| dw $0400 ; 0x05
|02CAB5| dw $0000 ; 0x06
|02CAB7| dw $0300 ; 0x07
|02CAB9| dw $1280 ; 0x08
|02CABB| dw $0880 ; 0x09
|02CABD| dw $0B00 ; 0x0A
|02CABF| dw $0600 ; 0x0B
|02CAC1| dw $0600 ; 0x0C
|02CAC3| dw $0500 ; 0x0D
|02CAC5| dw $0600 ; 0x0E
|02CAC7| dw $0900 ; 0x0F
|02CAC9| dw $0A00 ; 0x10
|02CACB| dw $0600 ; 0x11
|02CACD| dw $0500 ; 0x12
|02CACF| dw $1080 ; 0x13
|02CAD1| dw $1100 ; 0x14
|02CAD3| dw $0700 ; 0x15
|02CAD5| dw $1680 ; 0x16
|02CAD7| dw $1700 ; 0x17
|02CAD9| dw $0A00 ; 0x18
|02CADB| dw $0900 ; 0x19
|02CADD| dw $1A80 ; 0x1A
|02CADF| dw $1B00 ; 0x1B
|02CAE1| dw $1D00 ; 0x1C
|02CAE3| dw $1D00 ; 0x1D
|02CAE5| dw $1F00 ; 0x1E
|02CAE7| dw $1E80 ; 0x1F
|02CAE9| dw $1E80 ; 0x20
|02CAEB| dw $1200 ; 0x21
|02CAED| dw $1400 ; 0x22
|02CAEF| dw $1400 ; 0x23
|02CAF1| dw $0000 ; 0x24
|02CAF3| dw $1080 ; 0x25
|02CAF5| dw $1480 ; 0x26
|02CAF7| dw $1000 ; 0x27
|02CAF9| dw $0C00 ; 0x28
|02CAFB| dw $0E00 ; 0x29
|02CAFD| dw $1000 ; 0x2A
|02CAFF| dw $1200 ; 0x2B
|02CB01| dw $0200 ; 0x2C
|02CB03| dw $1D00 ; 0x2D
|02CB05| dw $0C00 ; 0x2E
|02CB07| dw $0F00 ; 0x2F
|02CB09| dw $0800 ; 0x30
|02CB0B| dw $0A80 ; 0x31
|02CB0D| dw $0A00 ; 0x32
|02CB0F| dw $0E80 ; 0x33
|02CB11| dw $1680 ; 0x34
|02CB13| dw $0D00 ; 0x35
|02CB15| dw $0000 ; 0x36
|02CB17| dw $1880 ; 0x37
|02CB19| dw $1100 ; 0x38
|02CB1B| dw $1F00 ; 0x39
|02CB1D| dw $1900 ; 0x3A
|02CB1F| dw $1800 ; 0x3B
|02CB21| dw $0000 ; 0x3C
|02CB23| dw $1D00 ; 0x3D
|02CB25| dw $0200 ; 0x3E
|02CB27| dw $0300 ; 0x3F
|02CB29| dw $0400 ; 0x40
|02CB2B| dw $0F00 ; 0x41
|02CB2D| dw $0600 ; 0x42
|02CB2F| dw $0600 ; 0x43
|02CB31| dw $0700 ; 0x44
|02CB33| dw $0A00 ; 0x45
|02CB35| dw $1F00 ; 0x46
|02CB37| dw $0C00 ; 0x47
|02CB39| dw $0D00 ; 0x48
|02CB3B| dw $0E00 ; 0x49
|02CB3D| dw $0F00 ; 0x4A
|02CB3F| dw $1000 ; 0x4B
|02CB41| dw $1200 ; 0x4C
|02CB43| dw $1400 ; 0x4D
|02CB45| dw $1680 ; 0x4E
|02CB47| dw $1800 ; 0x4F
|02CB49| dw $1900 ; 0x50
|02CB4B| dw $1600 ; 0x51
|02CB4D| dw $1700 ; 0x52
|02CB4F| dw $1800 ; 0x53
|02CB51| dw $1900 ; 0x54
|02CB53| dw $1C00 ; 0x55
|02CB55| dw $0100 ; 0x56
|02CB57| dw $0000 ; 0x57
|02CB59| dw $0500 ; 0x58
|02CB5B| dw $0200 ; 0x59
|02CB5D| dw $0400 ; 0x5A
|02CB5F| dw $0600 ; 0x5B
|02CB61| dw $0800 ; 0x5C
|02CB63| dw $0A00 ; 0x5D
|02CB65| dw $0B00 ; 0x5E
|02CB67| dw $1A00 ; 0x5F
|02CB69| dw $1E00 ; 0x60
|02CB6B| dw $1280 ; 0x61
|02CB6D| dw $0900 ; 0x62
|02CB6F| dw $0D00 ; 0x63
|02CB71| dw $0200 ; 0x64
|02CB73| dw $0400 ; 0x65
|02CB75| dw $0500 ; 0x66
|02CB77| dw $1100 ; 0x67
|02CB79| dw $1500 ; 0x68
|02CB7B| dw $1C00 ; 0x69
|02CB7D| dw $1D00 ; 0x6A
|02CB7F| dw $1E00 ; 0x6B
|02CB81| dw $0600 ; 0x6C
|02CB83| dw $0800 ; 0x6D
|02CB85| dw $0900 ; 0x6E
|02CB87| dw $0A00 ; 0x6F
|02CB89| dw $0B00 ; 0x70
|02CB8B| dw $0C00 ; 0x71
|02CB8D| dw $0D00 ; 0x72
|02CB8F| dw $0100 ; 0x73
|02CB91| dw $0280 ; 0x74
|02CB93| dw $0000 ; 0x75
|02CB95| dw $1100 ; 0x76
|02CB97| dw $0E00 ; 0x77
|02CB99| dw $1088 ; 0x78
|02CB9B| dw $0D00 ; 0x79
|02CB9D| dw $0300 ; 0x7A
|02CB9F| dw $0100 ; 0x7B
|02CBA1| dw $1000 ; 0x7C
|02CBA3| dw $0B00 ; 0x7D
|02CBA5| dw $0700 ; 0x7E
|02CBA7| dw $0400 ; 0x7F
|02CBA9| dw $1E00 ; 0x80
|02CBAB| dw $0300 ; 0x81
|02CBAD| dw $0600 ; 0x82
|02CBAF| dw $0E00 ; 0x83
|02CBB1| dw $0000 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $E6, $E8, $0122, $0124
.vertical_scroll
|02CBB3| dw $2110 ; 0x00
|02CBB5| dw $2110 ; 0x01
|02CBB7| dw $0310 ; 0x02
|02CBB9| dw $0D10 ; 0x03
|02CBBB| dw $0D10 ; 0x04
|02CBBD| dw $0D10 ; 0x05
|02CBBF| dw $1F10 ; 0x06
|02CBC1| dw $1F10 ; 0x07
|02CBC3| dw $1910 ; 0x08
|02CBC5| dw $1110 ; 0x09
|02CBC7| dw $1110 ; 0x0A
|02CBC9| dw $1110 ; 0x0B
|02CBCB| dw $0D10 ; 0x0C
|02CBCD| dw $1F10 ; 0x0D
|02CBCF| dw $1F10 ; 0x0E
|02CBD1| dw $1F10 ; 0x0F
|02CBD3| dw $1F10 ; 0x10
|02CBD5| dw $1D10 ; 0x11
|02CBD7| dw $1D10 ; 0x12
|02CBD9| dw $1F10 ; 0x13
|02CBDB| dw $1D10 ; 0x14
|02CBDD| dw $0510 ; 0x15
|02CBDF| dw $1F10 ; 0x16
|02CBE1| dw $1D10 ; 0x17
|02CBE3| dw $1B10 ; 0x18
|02CBE5| dw $0510 ; 0x19
|02CBE7| dw $1F10 ; 0x1A
|02CBE9| dw $1D10 ; 0x1B
|02CBEB| dw $1F10 ; 0x1C
|02CBED| dw $1D10 ; 0x1D
|02CBEF| dw $1F10 ; 0x1E
|02CBF1| dw $1D10 ; 0x1F
|02CBF3| dw $1B10 ; 0x20
|02CBF5| dw $1F10 ; 0x21
|02CBF7| dw $1F10 ; 0x22
|02CBF9| dw $1D10 ; 0x23
|02CBFB| dw $1D10 ; 0x24
|02CBFD| dw $0510 ; 0x25
|02CBFF| dw $0910 ; 0x26
|02CC01| dw $1310 ; 0x27
|02CC03| dw $0B10 ; 0x28
|02CC05| dw $0B10 ; 0x29
|02CC07| dw $0B10 ; 0x2A
|02CC09| dw $0B10 ; 0x2B
|02CC0B| dw $1D10 ; 0x2C
|02CC0D| dw $0110 ; 0x2D
|02CC0F| dw $1D10 ; 0x2E
|02CC11| dw $1D10 ; 0x2F
|02CC13| dw $1D10 ; 0x30
|02CC15| dw $1D10 ; 0x31
|02CC17| dw $0B10 ; 0x32
|02CC19| dw $0F10 ; 0x33
|02CC1B| dw $1B10 ; 0x34
|02CC1D| dw $1B10 ; 0x35
|02CC1F| dw $0310 ; 0x36
|02CC21| dw $0110 ; 0x37
|02CC23| dw $0110 ; 0x38
|02CC25| dw $0510 ; 0x39
|02CC27| dw $0710 ; 0x3A
|02CC29| dw $0510 ; 0x3B
|02CC2B| dw $2110 ; 0x3C
|02CC2D| dw $2310 ; 0x3D
|02CC2F| dw $2110 ; 0x3E
|02CC31| dw $2110 ; 0x3F
|02CC33| dw $2110 ; 0x40
|02CC35| dw $2310 ; 0x41
|02CC37| dw $2110 ; 0x42
|02CC39| dw $2000 ; 0x43
|02CC3B| dw $2110 ; 0x44
|02CC3D| dw $2110 ; 0x45
|02CC3F| dw $2310 ; 0x46
|02CC41| dw $2110 ; 0x47
|02CC43| dw $2110 ; 0x48
|02CC45| dw $2110 ; 0x49
|02CC47| dw $2110 ; 0x4A
|02CC49| dw $2110 ; 0x4B
|02CC4B| dw $2110 ; 0x4C
|02CC4D| dw $2110 ; 0x4D
|02CC4F| dw $2110 ; 0x4E
|02CC51| dw $2110 ; 0x4F
|02CC53| dw $2110 ; 0x50
|02CC55| dw $2310 ; 0x51
|02CC57| dw $2310 ; 0x52
|02CC59| dw $2310 ; 0x53
|02CC5B| dw $2310 ; 0x54
|02CC5D| dw $2310 ; 0x55
|02CC5F| dw $2510 ; 0x56
|02CC61| dw $2310 ; 0x57
|02CC63| dw $2310 ; 0x58
|02CC65| dw $2310 ; 0x59
|02CC67| dw $2310 ; 0x5A
|02CC69| dw $2310 ; 0x5B
|02CC6B| dw $2310 ; 0x5C
|02CC6D| dw $2310 ; 0x5D
|02CC6F| dw $2310 ; 0x5E
|02CC71| dw $2110 ; 0x5F
|02CC73| dw $2110 ; 0x60
|02CC75| dw $2310 ; 0x61
|02CC77| dw $2310 ; 0x62
|02CC79| dw $2310 ; 0x63
|02CC7B| dw $2510 ; 0x64
|02CC7D| dw $2510 ; 0x65
|02CC7F| dw $2510 ; 0x66
|02CC81| dw $2310 ; 0x67
|02CC83| dw $2310 ; 0x68
|02CC85| dw $2110 ; 0x69
|02CC87| dw $2110 ; 0x6A
|02CC89| dw $2310 ; 0x6B
|02CC8B| dw $2510 ; 0x6C
|02CC8D| dw $2510 ; 0x6D
|02CC8F| dw $2510 ; 0x6E
|02CC91| dw $2510 ; 0x6F
|02CC93| dw $2510 ; 0x70
|02CC95| dw $2510 ; 0x71
|02CC97| dw $2510 ; 0x72
|02CC99| dw $1010 ; 0x73
|02CC9B| dw $0B10 ; 0x74
|02CC9D| dw $0610 ; 0x75
|02CC9F| dw $0A00 ; 0x76
|02CCA1| dw $0C00 ; 0x77
|02CCA3| dw $0C29 ; 0x78
|02CCA5| dw $0A00 ; 0x79
|02CCA7| dw $1C3D ; 0x7A
|02CCA9| dw $0010 ; 0x7B
|02CCAB| dw $02CE ; 0x7C
|02CCAD| dw $0A10 ; 0x7D
|02CCAF| dw $1D10 ; 0x7E
|02CCB1| dw $1D10 ; 0x7F
|02CCB3| dw $0510 ; 0x80
|02CCB5| dw $02AD ; 0x81
|02CCB7| dw $0110 ; 0x82
|02CCB9| dw $2510 ; 0x83
|02CCBB| dw $2510 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $20
.y_coordinate
|02CCBD| dw $2178 ; 0x00
|02CCBF| dw $21D8 ; 0x01
|02CCC1| dw $03C0 ; 0x02
|02CCC3| dw $0DD8 ; 0x03
|02CCC5| dw $0DC0 ; 0x04
|02CCC7| dw $0DD8 ; 0x05
|02CCC9| dw $1FD8 ; 0x06
|02CCCB| dw $1FC0 ; 0x07
|02CCCD| dw $19D8 ; 0x08
|02CCCF| dw $11D8 ; 0x09
|02CCD1| dw $11D8 ; 0x0A
|02CCD3| dw $11D8 ; 0x0B
|02CCD5| dw $0DD8 ; 0x0C
|02CCD7| dw $1FD8 ; 0x0D
|02CCD9| dw $1FD8 ; 0x0E
|02CCDB| dw $1FD8 ; 0x0F
|02CCDD| dw $1FD8 ; 0x10
|02CCDF| dw $1DD8 ; 0x11
|02CCE1| dw $1DD8 ; 0x12
|02CCE3| dw $1FD8 ; 0x13
|02CCE5| dw $1DD8 ; 0x14
|02CCE7| dw $05D8 ; 0x15
|02CCE9| dw $1FD8 ; 0x16
|02CCEB| dw $1DD8 ; 0x17
|02CCED| dw $1BD8 ; 0x18
|02CCEF| dw $05D8 ; 0x19
|02CCF1| dw $1FC0 ; 0x1A
|02CCF3| dw $1DD8 ; 0x1B
|02CCF5| dw $1FC0 ; 0x1C
|02CCF7| dw $1DD8 ; 0x1D
|02CCF9| dw $1FD8 ; 0x1E
|02CCFB| dw $1DD8 ; 0x1F
|02CCFD| dw $1BD8 ; 0x20
|02CCFF| dw $1FD8 ; 0x21
|02CD01| dw $1FC0 ; 0x22
|02CD03| dw $1DD8 ; 0x23
|02CD05| dw $1DD8 ; 0x24
|02CD07| dw $05D8 ; 0x25
|02CD09| dw $09D8 ; 0x26
|02CD0B| dw $13D8 ; 0x27
|02CD0D| dw $0BD8 ; 0x28
|02CD0F| dw $0BD8 ; 0x29
|02CD11| dw $0BD8 ; 0x2A
|02CD13| dw $0BD8 ; 0x2B
|02CD15| dw $1DD8 ; 0x2C
|02CD17| dw $01D8 ; 0x2D
|02CD19| dw $1DC0 ; 0x2E
|02CD1B| dw $1DC0 ; 0x2F
|02CD1D| dw $1DC0 ; 0x30
|02CD1F| dw $1DD8 ; 0x31
|02CD21| dw $0BD8 ; 0x32
|02CD23| dw $0FC0 ; 0x33
|02CD25| dw $1BD8 ; 0x34
|02CD27| dw $1BD8 ; 0x35
|02CD29| dw $03D8 ; 0x36
|02CD2B| dw $01D8 ; 0x37
|02CD2D| dw $01D8 ; 0x38
|02CD2F| dw $05D8 ; 0x39
|02CD31| dw $07D8 ; 0x3A
|02CD33| dw $05D8 ; 0x3B
|02CD35| dw $21D8 ; 0x3C
|02CD37| dw $23D8 ; 0x3D
|02CD39| dw $21D8 ; 0x3E
|02CD3B| dw $21D8 ; 0x3F
|02CD3D| dw $21D8 ; 0x40
|02CD3F| dw $23D8 ; 0x41
|02CD41| dw $21D8 ; 0x42
|02CD43| dw $2020 ; 0x43
|02CD45| dw $21D8 ; 0x44
|02CD47| dw $21D8 ; 0x45
|02CD49| dw $23D8 ; 0x46
|02CD4B| dw $21D8 ; 0x47
|02CD4D| dw $21D8 ; 0x48
|02CD4F| dw $21D8 ; 0x49
|02CD51| dw $21D8 ; 0x4A
|02CD53| dw $21D8 ; 0x4B
|02CD55| dw $21D8 ; 0x4C
|02CD57| dw $21C0 ; 0x4D
|02CD59| dw $21D8 ; 0x4E
|02CD5B| dw $21D8 ; 0x4F
|02CD5D| dw $21D8 ; 0x50
|02CD5F| dw $23C0 ; 0x51
|02CD61| dw $23D8 ; 0x52
|02CD63| dw $23D8 ; 0x53
|02CD65| dw $23D8 ; 0x54
|02CD67| dw $23D8 ; 0x55
|02CD69| dw $25D8 ; 0x56
|02CD6B| dw $23D8 ; 0x57
|02CD6D| dw $23D8 ; 0x58
|02CD6F| dw $23D8 ; 0x59
|02CD71| dw $23D8 ; 0x5A
|02CD73| dw $23D8 ; 0x5B
|02CD75| dw $23D8 ; 0x5C
|02CD77| dw $23D8 ; 0x5D
|02CD79| dw $23D8 ; 0x5E
|02CD7B| dw $21D8 ; 0x5F
|02CD7D| dw $21D8 ; 0x60
|02CD7F| dw $23D8 ; 0x61
|02CD81| dw $23D8 ; 0x62
|02CD83| dw $23D8 ; 0x63
|02CD85| dw $25D8 ; 0x64
|02CD87| dw $25D8 ; 0x65
|02CD89| dw $25D8 ; 0x66
|02CD8B| dw $23D8 ; 0x67
|02CD8D| dw $23D8 ; 0x68
|02CD8F| dw $21C0 ; 0x69
|02CD91| dw $21C0 ; 0x6A
|02CD93| dw $23D8 ; 0x6B
|02CD95| dw $25D8 ; 0x6C
|02CD97| dw $25D8 ; 0x6D
|02CD99| dw $25D8 ; 0x6E
|02CD9B| dw $25D8 ; 0x6F
|02CD9D| dw $25D8 ; 0x70
|02CD9F| dw $25D8 ; 0x71
|02CDA1| dw $25D8 ; 0x72
|02CDA3| dw $1080 ; 0x73
|02CDA5| dw $0BA8 ; 0x74
|02CDA7| dw $0698 ; 0x75
|02CDA9| dw $0A69 ; 0x76
|02CDAB| dw $0C68 ; 0x77
|02CDAD| dw $0C96 ; 0x78
|02CDAF| dw $0A68 ; 0x79
|02CDB1| dw $1CA9 ; 0x7A
|02CDB3| dw $0089 ; 0x7B
|02CDB5| dw $033B ; 0x7C
|02CDB7| dw $0A96 ; 0x7D
|02CDB9| dw $1D7D ; 0x7E
|02CDBB| dw $1D89 ; 0x7F
|02CDBD| dw $0589 ; 0x80
|02CDBF| dw $031A ; 0x81
|02CDC1| dw $0197 ; 0x82
|02CDC3| dw $25D8 ; 0x83
|02CDC5| dw $25D8 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $22
.x_coordinate
|02CDC7| dw $0978 ; 0x00
|02CDC9| dw $0978 ; 0x01
|02CDCB| dw $04F8 ; 0x02
|02CDCD| dw $0178 ; 0x03
|02CDCF| dw $02F8 ; 0x04
|02CDD1| dw $0478 ; 0x05
|02CDD3| dw $0078 ; 0x06
|02CDD5| dw $0378 ; 0x07
|02CDD7| dw $12F8 ; 0x08
|02CDD9| dw $08F8 ; 0x09
|02CDDB| dw $0B78 ; 0x0A
|02CDDD| dw $0678 ; 0x0B
|02CDDF| dw $0678 ; 0x0C
|02CDE1| dw $0578 ; 0x0D
|02CDE3| dw $0678 ; 0x0E
|02CDE5| dw $0978 ; 0x0F
|02CDE7| dw $0A78 ; 0x10
|02CDE9| dw $0678 ; 0x11
|02CDEB| dw $0578 ; 0x12
|02CDED| dw $10F8 ; 0x13
|02CDEF| dw $1178 ; 0x14
|02CDF1| dw $0778 ; 0x15
|02CDF3| dw $16F8 ; 0x16
|02CDF5| dw $1778 ; 0x17
|02CDF7| dw $0A78 ; 0x18
|02CDF9| dw $0978 ; 0x19
|02CDFB| dw $1AF8 ; 0x1A
|02CDFD| dw $1B78 ; 0x1B
|02CDFF| dw $1D78 ; 0x1C
|02CE01| dw $1D78 ; 0x1D
|02CE03| dw $1F78 ; 0x1E
|02CE05| dw $1EF8 ; 0x1F
|02CE07| dw $1EF8 ; 0x20
|02CE09| dw $1278 ; 0x21
|02CE0B| dw $1478 ; 0x22
|02CE0D| dw $1478 ; 0x23
|02CE0F| dw $0078 ; 0x24
|02CE11| dw $10F8 ; 0x25
|02CE13| dw $14F8 ; 0x26
|02CE15| dw $1078 ; 0x27
|02CE17| dw $0C78 ; 0x28
|02CE19| dw $0E78 ; 0x29
|02CE1B| dw $1078 ; 0x2A
|02CE1D| dw $1278 ; 0x2B
|02CE1F| dw $0278 ; 0x2C
|02CE21| dw $1D78 ; 0x2D
|02CE23| dw $0C78 ; 0x2E
|02CE25| dw $0F78 ; 0x2F
|02CE27| dw $0878 ; 0x30
|02CE29| dw $0AF8 ; 0x31
|02CE2B| dw $0A78 ; 0x32
|02CE2D| dw $0EF8 ; 0x33
|02CE2F| dw $16F8 ; 0x34
|02CE31| dw $0D78 ; 0x35
|02CE33| dw $0078 ; 0x36
|02CE35| dw $18F8 ; 0x37
|02CE37| dw $1178 ; 0x38
|02CE39| dw $1F78 ; 0x39
|02CE3B| dw $1978 ; 0x3A
|02CE3D| dw $1878 ; 0x3B
|02CE3F| dw $0078 ; 0x3C
|02CE41| dw $1D78 ; 0x3D
|02CE43| dw $0278 ; 0x3E
|02CE45| dw $0378 ; 0x3F
|02CE47| dw $0478 ; 0x40
|02CE49| dw $0F78 ; 0x41
|02CE4B| dw $0678 ; 0x42
|02CE4D| dw $0678 ; 0x43
|02CE4F| dw $0778 ; 0x44
|02CE51| dw $0A78 ; 0x45
|02CE53| dw $1F78 ; 0x46
|02CE55| dw $0C78 ; 0x47
|02CE57| dw $0D78 ; 0x48
|02CE59| dw $0E78 ; 0x49
|02CE5B| dw $0F78 ; 0x4A
|02CE5D| dw $1078 ; 0x4B
|02CE5F| dw $1278 ; 0x4C
|02CE61| dw $1478 ; 0x4D
|02CE63| dw $16F8 ; 0x4E
|02CE65| dw $1878 ; 0x4F
|02CE67| dw $1978 ; 0x50
|02CE69| dw $1678 ; 0x51
|02CE6B| dw $1778 ; 0x52
|02CE6D| dw $1878 ; 0x53
|02CE6F| dw $1978 ; 0x54
|02CE71| dw $1C78 ; 0x55
|02CE73| dw $0178 ; 0x56
|02CE75| dw $0078 ; 0x57
|02CE77| dw $0578 ; 0x58
|02CE79| dw $0278 ; 0x59
|02CE7B| dw $0478 ; 0x5A
|02CE7D| dw $0678 ; 0x5B
|02CE7F| dw $0878 ; 0x5C
|02CE81| dw $0A78 ; 0x5D
|02CE83| dw $0B78 ; 0x5E
|02CE85| dw $1A78 ; 0x5F
|02CE87| dw $1E78 ; 0x60
|02CE89| dw $12F8 ; 0x61
|02CE8B| dw $0978 ; 0x62
|02CE8D| dw $0D78 ; 0x63
|02CE8F| dw $0278 ; 0x64
|02CE91| dw $0478 ; 0x65
|02CE93| dw $0578 ; 0x66
|02CE95| dw $1178 ; 0x67
|02CE97| dw $1578 ; 0x68
|02CE99| dw $1C78 ; 0x69
|02CE9B| dw $1D78 ; 0x6A
|02CE9D| dw $1E78 ; 0x6B
|02CE9F| dw $0678 ; 0x6C
|02CEA1| dw $0878 ; 0x6D
|02CEA3| dw $0978 ; 0x6E
|02CEA5| dw $0A78 ; 0x6F
|02CEA7| dw $0B78 ; 0x70
|02CEA9| dw $0C78 ; 0x71
|02CEAB| dw $0D78 ; 0x72
|02CEAD| dw $01A8 ; 0x73
|02CEAF| dw $02F8 ; 0x74
|02CEB1| dw $0078 ; 0x75
|02CEB3| dw $1190 ; 0x76
|02CEB5| dw $0E80 ; 0x77
|02CEB7| dw $1100 ; 0x78
|02CEB9| dw $0D40 ; 0x79
|02CEBB| dw $0370 ; 0x7A
|02CEBD| dw $017F ; 0x7B
|02CEBF| dw $1073 ; 0x7C
|02CEC1| dw $0B9F ; 0x7D
|02CEC3| dw $0778 ; 0x7E
|02CEC5| dw $047F ; 0x7F
|02CEC7| dw $1E61 ; 0x80
|02CEC9| dw $0393 ; 0x81
|02CECB| dw $0677 ; 0x82
|02CECD| dw $0E78 ; 0x83
|02CECF| dw $0078 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $0618, increments twice, writes to $061A
.camera_trigger_y
|02CED1| dw $0187 ; 0x00
|02CED3| dw $0187 ; 0x01
|02CED5| dw $0187 ; 0x02
|02CED7| dw $0187 ; 0x03
|02CED9| dw $0187 ; 0x04
|02CEDB| dw $0187 ; 0x05
|02CEDD| dw $0187 ; 0x06
|02CEDF| dw $0187 ; 0x07
|02CEE1| dw $0187 ; 0x08
|02CEE3| dw $0187 ; 0x09
|02CEE5| dw $0187 ; 0x0A
|02CEE7| dw $0187 ; 0x0B
|02CEE9| dw $0187 ; 0x0C
|02CEEB| dw $0187 ; 0x0D
|02CEED| dw $0187 ; 0x0E
|02CEEF| dw $0187 ; 0x0F
|02CEF1| dw $0187 ; 0x10
|02CEF3| dw $0187 ; 0x11
|02CEF5| dw $0187 ; 0x12
|02CEF7| dw $0187 ; 0x13
|02CEF9| dw $0187 ; 0x14
|02CEFB| dw $0187 ; 0x15
|02CEFD| dw $0187 ; 0x16
|02CEFF| dw $0187 ; 0x17
|02CF01| dw $0187 ; 0x18
|02CF03| dw $0187 ; 0x19
|02CF05| dw $0187 ; 0x1A
|02CF07| dw $0187 ; 0x1B
|02CF09| dw $0187 ; 0x1C
|02CF0B| dw $0187 ; 0x1D
|02CF0D| dw $0187 ; 0x1E
|02CF0F| dw $0187 ; 0x1F
|02CF11| dw $0187 ; 0x20
|02CF13| dw $0187 ; 0x21
|02CF15| dw $0187 ; 0x22
|02CF17| dw $0187 ; 0x23
|02CF19| dw $0187 ; 0x24
|02CF1B| dw $0187 ; 0x25
|02CF1D| dw $0187 ; 0x26
|02CF1F| dw $0187 ; 0x27
|02CF21| dw $0187 ; 0x28
|02CF23| dw $0187 ; 0x29
|02CF25| dw $0187 ; 0x2A
|02CF27| dw $0187 ; 0x2B
|02CF29| dw $0187 ; 0x2C
|02CF2B| dw $0187 ; 0x2D
|02CF2D| dw $0187 ; 0x2E
|02CF2F| dw $0187 ; 0x2F
|02CF31| dw $0187 ; 0x30
|02CF33| dw $0187 ; 0x31
|02CF35| dw $0187 ; 0x32
|02CF37| dw $0187 ; 0x33
|02CF39| dw $0187 ; 0x34
|02CF3B| dw $0187 ; 0x35
|02CF3D| dw $0187 ; 0x36
|02CF3F| dw $0187 ; 0x37
|02CF41| dw $0187 ; 0x38
|02CF43| dw $0187 ; 0x39
|02CF45| dw $0187 ; 0x3A
|02CF47| dw $0187 ; 0x3B
|02CF49| dw $0187 ; 0x3C
|02CF4B| dw $0187 ; 0x3D
|02CF4D| dw $0187 ; 0x3E
|02CF4F| dw $0187 ; 0x3F
|02CF51| dw $0187 ; 0x40
|02CF53| dw $0187 ; 0x41
|02CF55| dw $0187 ; 0x42
|02CF57| dw $0074 ; 0x43
|02CF59| dw $0187 ; 0x44
|02CF5B| dw $0187 ; 0x45
|02CF5D| dw $0187 ; 0x46
|02CF5F| dw $0187 ; 0x47
|02CF61| dw $0187 ; 0x48
|02CF63| dw $0187 ; 0x49
|02CF65| dw $0187 ; 0x4A
|02CF67| dw $0187 ; 0x4B
|02CF69| dw $0187 ; 0x4C
|02CF6B| dw $0187 ; 0x4D
|02CF6D| dw $0187 ; 0x4E
|02CF6F| dw $0187 ; 0x4F
|02CF71| dw $0187 ; 0x50
|02CF73| dw $0187 ; 0x51
|02CF75| dw $0187 ; 0x52
|02CF77| dw $0187 ; 0x53
|02CF79| dw $0187 ; 0x54
|02CF7B| dw $0187 ; 0x55
|02CF7D| dw $0187 ; 0x56
|02CF7F| dw $0187 ; 0x57
|02CF81| dw $0187 ; 0x58
|02CF83| dw $0187 ; 0x59
|02CF85| dw $0187 ; 0x5A
|02CF87| dw $0187 ; 0x5B
|02CF89| dw $0187 ; 0x5C
|02CF8B| dw $0187 ; 0x5D
|02CF8D| dw $0187 ; 0x5E
|02CF8F| dw $0187 ; 0x5F
|02CF91| dw $0187 ; 0x60
|02CF93| dw $0187 ; 0x61
|02CF95| dw $0187 ; 0x62
|02CF97| dw $0187 ; 0x63
|02CF99| dw $0187 ; 0x64
|02CF9B| dw $0187 ; 0x65
|02CF9D| dw $0187 ; 0x66
|02CF9F| dw $0187 ; 0x67
|02CFA1| dw $0187 ; 0x68
|02CFA3| dw $0187 ; 0x69
|02CFA5| dw $0187 ; 0x6A
|02CFA7| dw $0187 ; 0x6B
|02CFA9| dw $0187 ; 0x6C
|02CFAB| dw $0187 ; 0x6D
|02CFAD| dw $0187 ; 0x6E
|02CFAF| dw $0187 ; 0x6F
|02CFB1| dw $0187 ; 0x70
|02CFB3| dw $0187 ; 0x71
|02CFB5| dw $0187 ; 0x72
|02CFB7| dw $0088 ; 0x73
|02CFB9| dw $0188 ; 0x74
|02CFBB| dw $0088 ; 0x75
|02CFBD| dw $0077 ; 0x76
|02CFBF| dw $0078 ; 0x77
|02CFC1| dw $00A1 ; 0x78
|02CFC3| dw $0077 ; 0x79
|02CFC5| dw $00B4 ; 0x7A
|02CFC7| dw $0088 ; 0x7B
|02CFC9| dw $0146 ; 0x7C
|02CFCB| dw $0088 ; 0x7D
|02CFCD| dw $0188 ; 0x7E
|02CFCF| dw $0187 ; 0x7F
|02CFD1| dw $0187 ; 0x80
|02CFD3| dw $0125 ; 0x81
|02CFD5| dw $0188 ; 0x82
|02CFD7| dw $0187 ; 0x83
|02CFD9| dw $0187 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $061C, increments twice, writes to $061E
.camera_trigger_x
|02CFDB| dw $017F ; 0x00
|02CFDD| dw $017F ; 0x01
|02CFDF| dw $00FF ; 0x02
|02CFE1| dw $017F ; 0x03
|02CFE3| dw $00FF ; 0x04
|02CFE5| dw $007F ; 0x05
|02CFE7| dw $007F ; 0x06
|02CFE9| dw $017F ; 0x07
|02CFEB| dw $00FF ; 0x08
|02CFED| dw $00FF ; 0x09
|02CFEF| dw $017F ; 0x0A
|02CFF1| dw $007F ; 0x0B
|02CFF3| dw $007F ; 0x0C
|02CFF5| dw $017F ; 0x0D
|02CFF7| dw $007F ; 0x0E
|02CFF9| dw $017F ; 0x0F
|02CFFB| dw $007F ; 0x10
|02CFFD| dw $007F ; 0x11
|02CFFF| dw $017F ; 0x12
|02D001| dw $00FF ; 0x13
|02D003| dw $017F ; 0x14
|02D005| dw $017F ; 0x15
|02D007| dw $00FF ; 0x16
|02D009| dw $017F ; 0x17
|02D00B| dw $007F ; 0x18
|02D00D| dw $017F ; 0x19
|02D00F| dw $00FF ; 0x1A
|02D011| dw $017F ; 0x1B
|02D013| dw $017F ; 0x1C
|02D015| dw $017F ; 0x1D
|02D017| dw $017F ; 0x1E
|02D019| dw $00FF ; 0x1F
|02D01B| dw $00FF ; 0x20
|02D01D| dw $007F ; 0x21
|02D01F| dw $007F ; 0x22
|02D021| dw $007F ; 0x23
|02D023| dw $007F ; 0x24
|02D025| dw $00FF ; 0x25
|02D027| dw $00FF ; 0x26
|02D029| dw $007F ; 0x27
|02D02B| dw $007F ; 0x28
|02D02D| dw $007F ; 0x29
|02D02F| dw $007F ; 0x2A
|02D031| dw $007F ; 0x2B
|02D033| dw $007F ; 0x2C
|02D035| dw $017F ; 0x2D
|02D037| dw $007F ; 0x2E
|02D039| dw $017F ; 0x2F
|02D03B| dw $007F ; 0x30
|02D03D| dw $00FF ; 0x31
|02D03F| dw $007F ; 0x32
|02D041| dw $00FF ; 0x33
|02D043| dw $00FF ; 0x34
|02D045| dw $017F ; 0x35
|02D047| dw $007F ; 0x36
|02D049| dw $00FF ; 0x37
|02D04B| dw $017F ; 0x38
|02D04D| dw $017F ; 0x39
|02D04F| dw $017F ; 0x3A
|02D051| dw $007F ; 0x3B
|02D053| dw $007F ; 0x3C
|02D055| dw $017F ; 0x3D
|02D057| dw $007F ; 0x3E
|02D059| dw $017F ; 0x3F
|02D05B| dw $007F ; 0x40
|02D05D| dw $017F ; 0x41
|02D05F| dw $007F ; 0x42
|02D061| dw $007F ; 0x43
|02D063| dw $017F ; 0x44
|02D065| dw $007F ; 0x45
|02D067| dw $017F ; 0x46
|02D069| dw $007F ; 0x47
|02D06B| dw $017F ; 0x48
|02D06D| dw $007F ; 0x49
|02D06F| dw $017F ; 0x4A
|02D071| dw $007F ; 0x4B
|02D073| dw $007F ; 0x4C
|02D075| dw $007F ; 0x4D
|02D077| dw $00FF ; 0x4E
|02D079| dw $007F ; 0x4F
|02D07B| dw $017F ; 0x50
|02D07D| dw $007F ; 0x51
|02D07F| dw $017F ; 0x52
|02D081| dw $007F ; 0x53
|02D083| dw $017F ; 0x54
|02D085| dw $007F ; 0x55
|02D087| dw $017F ; 0x56
|02D089| dw $007F ; 0x57
|02D08B| dw $017F ; 0x58
|02D08D| dw $007F ; 0x59
|02D08F| dw $007F ; 0x5A
|02D091| dw $007F ; 0x5B
|02D093| dw $007F ; 0x5C
|02D095| dw $007F ; 0x5D
|02D097| dw $017F ; 0x5E
|02D099| dw $007F ; 0x5F
|02D09B| dw $007F ; 0x60
|02D09D| dw $00FF ; 0x61
|02D09F| dw $017F ; 0x62
|02D0A1| dw $017F ; 0x63
|02D0A3| dw $007F ; 0x64
|02D0A5| dw $007F ; 0x65
|02D0A7| dw $017F ; 0x66
|02D0A9| dw $017F ; 0x67
|02D0AB| dw $017F ; 0x68
|02D0AD| dw $007F ; 0x69
|02D0AF| dw $017F ; 0x6A
|02D0B1| dw $007F ; 0x6B
|02D0B3| dw $007F ; 0x6C
|02D0B5| dw $007F ; 0x6D
|02D0B7| dw $017F ; 0x6E
|02D0B9| dw $007F ; 0x6F
|02D0BB| dw $017F ; 0x70
|02D0BD| dw $007F ; 0x71
|02D0BF| dw $017F ; 0x72
|02D0C1| dw $017F ; 0x73
|02D0C3| dw $00FF ; 0x74
|02D0C5| dw $007F ; 0x75
|02D0C7| dw $017F ; 0x76
|02D0C9| dw $007F ; 0x77
|02D0CB| dw $0107 ; 0x78
|02D0CD| dw $017F ; 0x79
|02D0CF| dw $017F ; 0x7A
|02D0D1| dw $017F ; 0x7B
|02D0D3| dw $007F ; 0x7C
|02D0D5| dw $017F ; 0x7D
|02D0D7| dw $017F ; 0x7E
|02D0D9| dw $007F ; 0x7F
|02D0DB| dw $007F ; 0x80
|02D0DD| dw $017F ; 0x81
|02D0DF| dw $007F ; 0x82
|02D0E1| dw $007F ; 0x83
|02D0E3| dw $007F ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $0AA1
.main_GFX
|02D0E5| db $03 ; 0x00
|02D0E6| db $03 ; 0x01
|02D0E7| db $04 ; 0x02
|02D0E8| db $04 ; 0x03
|02D0E9| db $04 ; 0x04
|02D0EA| db $04 ; 0x05
|02D0EB| db $06 ; 0x06
|02D0EC| db $06 ; 0x07
|02D0ED| db $05 ; 0x08
|02D0EE| db $12 ; 0x09
|02D0EF| db $12 ; 0x0A
|02D0F0| db $12 ; 0x0B
|02D0F1| db $12 ; 0x0C
|02D0F2| db $03 ; 0x0D
|02D0F3| db $03 ; 0x0E
|02D0F4| db $03 ; 0x0F
|02D0F5| db $03 ; 0x10
|02D0F6| db $06 ; 0x11
|02D0F7| db $06 ; 0x12
|02D0F8| db $06 ; 0x13
|02D0F9| db $06 ; 0x14
|02D0FA| db $0D ; 0x15
|02D0FB| db $06 ; 0x16
|02D0FC| db $06 ; 0x17
|02D0FD| db $0D ; 0x18
|02D0FE| db $0D ; 0x19
|02D0FF| db $06 ; 0x1A
|02D100| db $06 ; 0x1B
|02D101| db $06 ; 0x1C
|02D102| db $06 ; 0x1D
|02D103| db $06 ; 0x1E
|02D104| db $06 ; 0x1F
|02D105| db $06 ; 0x20
|02D106| db $06 ; 0x21
|02D107| db $06 ; 0x22
|02D108| db $06 ; 0x23
|02D109| db $04 ; 0x24
|02D10A| db $08 ; 0x25
|02D10B| db $07 ; 0x26
|02D10C| db $0C ; 0x27
|02D10D| db $09 ; 0x28
|02D10E| db $09 ; 0x29
|02D10F| db $09 ; 0x2A
|02D110| db $09 ; 0x2B
|02D111| db $06 ; 0x2C
|02D112| db $0B ; 0x2D
|02D113| db $06 ; 0x2E
|02D114| db $06 ; 0x2F
|02D115| db $14 ; 0x30
|02D116| db $14 ; 0x31
|02D117| db $01 ; 0x32
|02D118| db $05 ; 0x33
|02D119| db $0A ; 0x34
|02D11A| db $0D ; 0x35
|02D11B| db $13 ; 0x36
|02D11C| db $0E ; 0x37
|02D11D| db $06 ; 0x38
|02D11E| db $06 ; 0x39
|02D11F| db $06 ; 0x3A
|02D120| db $06 ; 0x3B
|02D121| db $03 ; 0x3C
|02D122| db $06 ; 0x3D
|02D123| db $03 ; 0x3E
|02D124| db $03 ; 0x3F
|02D125| db $03 ; 0x40
|02D126| db $14 ; 0x41
|02D127| db $03 ; 0x42
|02D128| db $03 ; 0x43
|02D129| db $03 ; 0x44
|02D12A| db $0F ; 0x45
|02D12B| db $03 ; 0x46
|02D12C| db $03 ; 0x47
|02D12D| db $03 ; 0x48
|02D12E| db $03 ; 0x49
|02D12F| db $03 ; 0x4A
|02D130| db $03 ; 0x4B
|02D131| db $03 ; 0x4C
|02D132| db $06 ; 0x4D
|02D133| db $08 ; 0x4E
|02D134| db $06 ; 0x4F
|02D135| db $06 ; 0x50
|02D136| db $06 ; 0x51
|02D137| db $06 ; 0x52
|02D138| db $03 ; 0x53
|02D139| db $03 ; 0x54
|02D13A| db $06 ; 0x55
|02D13B| db $06 ; 0x56
|02D13C| db $03 ; 0x57
|02D13D| db $14 ; 0x58
|02D13E| db $11 ; 0x59
|02D13F| db $14 ; 0x5A
|02D140| db $01 ; 0x5B
|02D141| db $06 ; 0x5C
|02D142| db $06 ; 0x5D
|02D143| db $06 ; 0x5E
|02D144| db $08 ; 0x5F
|02D145| db $03 ; 0x60
|02D146| db $0A ; 0x61
|02D147| db $06 ; 0x62
|02D148| db $12 ; 0x63
|02D149| db $11 ; 0x64
|02D14A| db $11 ; 0x65
|02D14B| db $11 ; 0x66
|02D14C| db $03 ; 0x67
|02D14D| db $0F ; 0x68
|02D14E| db $14 ; 0x69
|02D14F| db $14 ; 0x6A
|02D150| db $03 ; 0x6B
|02D151| db $06 ; 0x6C
|02D152| db $06 ; 0x6D
|02D153| db $06 ; 0x6E
|02D154| db $06 ; 0x6F
|02D155| db $06 ; 0x70
|02D156| db $06 ; 0x71
|02D157| db $06 ; 0x72
|02D158| db $01 ; 0x73
|02D159| db $04 ; 0x74
|02D15A| db $02 ; 0x75
|02D15B| db $09 ; 0x76
|02D15C| db $09 ; 0x77
|02D15D| db $09 ; 0x78
|02D15E| db $09 ; 0x79
|02D15F| db $06 ; 0x7A
|02D160| db $13 ; 0x7B
|02D161| db $06 ; 0x7C
|02D162| db $01 ; 0x7D
|02D163| db $06 ; 0x7E
|02D164| db $06 ; 0x7F
|02D165| db $06 ; 0x80
|02D166| db $01 ; 0x81
|02D167| db $06 ; 0x82
|02D168| db $06 ; 0x83
|02D169| db $06 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $A4
.floor
|02D16A| db $00 ; 0x00
|02D16B| db $00 ; 0x01
|02D16C| db $00 ; 0x02
|02D16D| db $00 ; 0x03
|02D16E| db $00 ; 0x04
|02D16F| db $00 ; 0x05
|02D170| db $00 ; 0x06
|02D171| db $00 ; 0x07
|02D172| db $00 ; 0x08
|02D173| db $FF ; 0x09
|02D174| db $FF ; 0x0A
|02D175| db $FF ; 0x0B
|02D176| db $00 ; 0x0C
|02D177| db $00 ; 0x0D
|02D178| db $00 ; 0x0E
|02D179| db $00 ; 0x0F
|02D17A| db $00 ; 0x10
|02D17B| db $FF ; 0x11
|02D17C| db $FF ; 0x12
|02D17D| db $00 ; 0x13
|02D17E| db $01 ; 0x14
|02D17F| db $FF ; 0x15
|02D180| db $00 ; 0x16
|02D181| db $01 ; 0x17
|02D182| db $FE ; 0x18
|02D183| db $FF ; 0x19
|02D184| db $00 ; 0x1A
|02D185| db $01 ; 0x1B
|02D186| db $00 ; 0x1C
|02D187| db $01 ; 0x1D
|02D188| db $FF ; 0x1E
|02D189| db $00 ; 0x1F
|02D18A| db $01 ; 0x20
|02D18B| db $00 ; 0x21
|02D18C| db $00 ; 0x22
|02D18D| db $01 ; 0x23
|02D18E| db $01 ; 0x24
|02D18F| db $00 ; 0x25
|02D190| db $00 ; 0x26
|02D191| db $00 ; 0x27
|02D192| db $FF ; 0x28
|02D193| db $FF ; 0x29
|02D194| db $FF ; 0x2A
|02D195| db $FF ; 0x2B
|02D196| db $FF ; 0x2C
|02D197| db $00 ; 0x2D
|02D198| db $00 ; 0x2E
|02D199| db $00 ; 0x2F
|02D19A| db $00 ; 0x30
|02D19B| db $00 ; 0x31
|02D19C| db $FF ; 0x32
|02D19D| db $01 ; 0x33
|02D19E| db $FF ; 0x34
|02D19F| db $00 ; 0x35
|02D1A0| db $00 ; 0x36
|02D1A1| db $01 ; 0x37
|02D1A2| db $FF ; 0x38
|02D1A3| db $FF ; 0x39
|02D1A4| db $FF ; 0x3A
|02D1A5| db $FF ; 0x3B
|02D1A6| db $00 ; 0x3C
|02D1A7| db $00 ; 0x3D
|02D1A8| db $00 ; 0x3E
|02D1A9| db $00 ; 0x3F
|02D1AA| db $00 ; 0x40
|02D1AB| db $00 ; 0x41
|02D1AC| db $00 ; 0x42
|02D1AD| db $00 ; 0x43
|02D1AE| db $00 ; 0x44
|02D1AF| db $00 ; 0x45
|02D1B0| db $00 ; 0x46
|02D1B1| db $00 ; 0x47
|02D1B2| db $00 ; 0x48
|02D1B3| db $00 ; 0x49
|02D1B4| db $00 ; 0x4A
|02D1B5| db $00 ; 0x4B
|02D1B6| db $00 ; 0x4C
|02D1B7| db $00 ; 0x4D
|02D1B8| db $00 ; 0x4E
|02D1B9| db $00 ; 0x4F
|02D1BA| db $00 ; 0x50
|02D1BB| db $00 ; 0x51
|02D1BC| db $00 ; 0x52
|02D1BD| db $00 ; 0x53
|02D1BE| db $00 ; 0x54
|02D1BF| db $00 ; 0x55
|02D1C0| db $00 ; 0x56
|02D1C1| db $00 ; 0x57
|02D1C2| db $00 ; 0x58
|02D1C3| db $00 ; 0x59
|02D1C4| db $00 ; 0x5A
|02D1C5| db $00 ; 0x5B
|02D1C6| db $00 ; 0x5C
|02D1C7| db $00 ; 0x5D
|02D1C8| db $00 ; 0x5E
|02D1C9| db $00 ; 0x5F
|02D1CA| db $00 ; 0x60
|02D1CB| db $00 ; 0x61
|02D1CC| db $00 ; 0x62
|02D1CD| db $00 ; 0x63
|02D1CE| db $00 ; 0x64
|02D1CF| db $00 ; 0x65
|02D1D0| db $00 ; 0x66
|02D1D1| db $00 ; 0x67
|02D1D2| db $00 ; 0x68
|02D1D3| db $00 ; 0x69
|02D1D4| db $00 ; 0x6A
|02D1D5| db $00 ; 0x6B
|02D1D6| db $00 ; 0x6C
|02D1D7| db $00 ; 0x6D
|02D1D8| db $00 ; 0x6E
|02D1D9| db $00 ; 0x6F
|02D1DA| db $00 ; 0x70
|02D1DB| db $00 ; 0x71
|02D1DC| db $00 ; 0x72
|02D1DD| db $FF ; 0x73
|02D1DE| db $FF ; 0x74
|02D1DF| db $FF ; 0x75
|02D1E0| db $FF ; 0x76
|02D1E1| db $FF ; 0x77
|02D1E2| db $FF ; 0x78
|02D1E3| db $FF ; 0x79
|02D1E4| db $FF ; 0x7A
|02D1E5| db $01 ; 0x7B
|02D1E6| db $FF ; 0x7C
|02D1E7| db $FF ; 0x7D
|02D1E8| db $FF ; 0x7E
|02D1E9| db $FF ; 0x7F
|02D1EA| db $FF ; 0x80
|02D1EB| db $FF ; 0x81
|02D1EC| db $FF ; 0x82
|02D1ED| db $00 ; 0x83
|02D1EE| db $00 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $040C
.dungeon_id
|02D1EF| db $FF ; 0x00
|02D1F0| db $FF ; 0x01
|02D1F1| db $00 ; 0x02
|02D1F2| db $02 ; 0x03
|02D1F3| db $02 ; 0x04
|02D1F4| db $02 ; 0x05
|02D1F5| db $FF ; 0x06
|02D1F6| db $FF ; 0x07
|02D1F7| db $04 ; 0x08
|02D1F8| db $06 ; 0x09
|02D1F9| db $06 ; 0x0A
|02D1FA| db $06 ; 0x0B
|02D1FB| db $06 ; 0x0C
|02D1FC| db $FF ; 0x0D
|02D1FD| db $FF ; 0x0E
|02D1FE| db $FF ; 0x0F
|02D1FF| db $FF ; 0x10
|02D200| db $FF ; 0x11
|02D201| db $FF ; 0x12
|02D202| db $FF ; 0x13
|02D203| db $FF ; 0x14
|02D204| db $18 ; 0x15
|02D205| db $FF ; 0x16
|02D206| db $FF ; 0x17
|02D207| db $18 ; 0x18
|02D208| db $18 ; 0x19
|02D209| db $FF ; 0x1A
|02D20A| db $FF ; 0x1B
|02D20B| db $FF ; 0x1C
|02D20C| db $FF ; 0x1D
|02D20D| db $FF ; 0x1E
|02D20E| db $FF ; 0x1F
|02D20F| db $FF ; 0x20
|02D210| db $FF ; 0x21
|02D211| db $FF ; 0x22
|02D212| db $FF ; 0x23
|02D213| db $08 ; 0x24
|02D214| db $0A ; 0x25
|02D215| db $0C ; 0x26
|02D216| db $0E ; 0x27
|02D217| db $10 ; 0x28
|02D218| db $10 ; 0x29
|02D219| db $10 ; 0x2A
|02D21A| db $10 ; 0x2B
|02D21B| db $FF ; 0x2C
|02D21C| db $12 ; 0x2D
|02D21D| db $FF ; 0x2E
|02D21E| db $FF ; 0x2F
|02D21F| db $FF ; 0x30
|02D220| db $FF ; 0x31
|02D221| db $FF ; 0x32
|02D222| db $14 ; 0x33
|02D223| db $16 ; 0x34
|02D224| db $18 ; 0x35
|02D225| db $FF ; 0x36
|02D226| db $1A ; 0x37
|02D227| db $FF ; 0x38
|02D228| db $FF ; 0x39
|02D229| db $FF ; 0x3A
|02D22A| db $FF ; 0x3B
|02D22B| db $FF ; 0x3C
|02D22C| db $FF ; 0x3D
|02D22D| db $FF ; 0x3E
|02D22E| db $FF ; 0x3F
|02D22F| db $FF ; 0x40
|02D230| db $FF ; 0x41
|02D231| db $FF ; 0x42
|02D232| db $FF ; 0x43
|02D233| db $FF ; 0x44
|02D234| db $FF ; 0x45
|02D235| db $FF ; 0x46
|02D236| db $FF ; 0x47
|02D237| db $FF ; 0x48
|02D238| db $FF ; 0x49
|02D239| db $FF ; 0x4A
|02D23A| db $FF ; 0x4B
|02D23B| db $FF ; 0x4C
|02D23C| db $FF ; 0x4D
|02D23D| db $FF ; 0x4E
|02D23E| db $FF ; 0x4F
|02D23F| db $FF ; 0x50
|02D240| db $FF ; 0x51
|02D241| db $FF ; 0x52
|02D242| db $FF ; 0x53
|02D243| db $FF ; 0x54
|02D244| db $FF ; 0x55
|02D245| db $FF ; 0x56
|02D246| db $FF ; 0x57
|02D247| db $FF ; 0x58
|02D248| db $FF ; 0x59
|02D249| db $FF ; 0x5A
|02D24A| db $FF ; 0x5B
|02D24B| db $FF ; 0x5C
|02D24C| db $FF ; 0x5D
|02D24D| db $FF ; 0x5E
|02D24E| db $FF ; 0x5F
|02D24F| db $FF ; 0x60
|02D250| db $FF ; 0x61
|02D251| db $FF ; 0x62
|02D252| db $FF ; 0x63
|02D253| db $FF ; 0x64
|02D254| db $FF ; 0x65
|02D255| db $FF ; 0x66
|02D256| db $FF ; 0x67
|02D257| db $FF ; 0x68
|02D258| db $FF ; 0x69
|02D259| db $FF ; 0x6A
|02D25A| db $FF ; 0x6B
|02D25B| db $FF ; 0x6C
|02D25C| db $FF ; 0x6D
|02D25D| db $FF ; 0x6E
|02D25E| db $FF ; 0x6F
|02D25F| db $FF ; 0x70
|02D260| db $FF ; 0x71
|02D261| db $FF ; 0x72
|02D262| db $FF ; 0x73
|02D263| db $FF ; 0x74
|02D264| db $FF ; 0x75
|02D265| db $10 ; 0x76
|02D266| db $10 ; 0x77
|02D267| db $10 ; 0x78
|02D268| db $10 ; 0x79
|02D269| db $FF ; 0x7A
|02D26A| db $FF ; 0x7B
|02D26B| db $FF ; 0x7C
|02D26C| db $FF ; 0x7D
|02D26D| db $FF ; 0x7E
|02D26E| db $FF ; 0x7F
|02D26F| db $FF ; 0x80
|02D270| db $00 ; 0x81
|02D271| db $FF ; 0x82
|02D272| db $FF ; 0x83
|02D273| db $FF ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $6C
.in_door
|02D274| db $00 ; 0x00
|02D275| db $01 ; 0x01
|02D276| db $01 ; 0x02
|02D277| db $01 ; 0x03
|02D278| db $01 ; 0x04
|02D279| db $01 ; 0x05
|02D27A| db $01 ; 0x06
|02D27B| db $01 ; 0x07
|02D27C| db $01 ; 0x08
|02D27D| db $01 ; 0x09
|02D27E| db $01 ; 0x0A
|02D27F| db $01 ; 0x0B
|02D280| db $01 ; 0x0C
|02D281| db $01 ; 0x0D
|02D282| db $01 ; 0x0E
|02D283| db $01 ; 0x0F
|02D284| db $01 ; 0x10
|02D285| db $01 ; 0x11
|02D286| db $01 ; 0x12
|02D287| db $01 ; 0x13
|02D288| db $01 ; 0x14
|02D289| db $01 ; 0x15
|02D28A| db $01 ; 0x16
|02D28B| db $01 ; 0x17
|02D28C| db $01 ; 0x18
|02D28D| db $01 ; 0x19
|02D28E| db $01 ; 0x1A
|02D28F| db $01 ; 0x1B
|02D290| db $01 ; 0x1C
|02D291| db $01 ; 0x1D
|02D292| db $01 ; 0x1E
|02D293| db $01 ; 0x1F
|02D294| db $01 ; 0x20
|02D295| db $01 ; 0x21
|02D296| db $01 ; 0x22
|02D297| db $01 ; 0x23
|02D298| db $01 ; 0x24
|02D299| db $01 ; 0x25
|02D29A| db $01 ; 0x26
|02D29B| db $01 ; 0x27
|02D29C| db $01 ; 0x28
|02D29D| db $01 ; 0x29
|02D29E| db $01 ; 0x2A
|02D29F| db $01 ; 0x2B
|02D2A0| db $01 ; 0x2C
|02D2A1| db $01 ; 0x2D
|02D2A2| db $01 ; 0x2E
|02D2A3| db $01 ; 0x2F
|02D2A4| db $01 ; 0x30
|02D2A5| db $01 ; 0x31
|02D2A6| db $01 ; 0x32
|02D2A7| db $01 ; 0x33
|02D2A8| db $01 ; 0x34
|02D2A9| db $01 ; 0x35
|02D2AA| db $01 ; 0x36
|02D2AB| db $01 ; 0x37
|02D2AC| db $01 ; 0x38
|02D2AD| db $01 ; 0x39
|02D2AE| db $01 ; 0x3A
|02D2AF| db $01 ; 0x3B
|02D2B0| db $01 ; 0x3C
|02D2B1| db $01 ; 0x3D
|02D2B2| db $01 ; 0x3E
|02D2B3| db $01 ; 0x3F
|02D2B4| db $01 ; 0x40
|02D2B5| db $01 ; 0x41
|02D2B6| db $01 ; 0x42
|02D2B7| db $01 ; 0x43
|02D2B8| db $01 ; 0x44
|02D2B9| db $01 ; 0x45
|02D2BA| db $01 ; 0x46
|02D2BB| db $01 ; 0x47
|02D2BC| db $01 ; 0x48
|02D2BD| db $01 ; 0x49
|02D2BE| db $01 ; 0x4A
|02D2BF| db $01 ; 0x4B
|02D2C0| db $01 ; 0x4C
|02D2C1| db $01 ; 0x4D
|02D2C2| db $01 ; 0x4E
|02D2C3| db $01 ; 0x4F
|02D2C4| db $01 ; 0x50
|02D2C5| db $01 ; 0x51
|02D2C6| db $01 ; 0x52
|02D2C7| db $01 ; 0x53
|02D2C8| db $01 ; 0x54
|02D2C9| db $01 ; 0x55
|02D2CA| db $01 ; 0x56
|02D2CB| db $01 ; 0x57
|02D2CC| db $01 ; 0x58
|02D2CD| db $01 ; 0x59
|02D2CE| db $01 ; 0x5A
|02D2CF| db $01 ; 0x5B
|02D2D0| db $01 ; 0x5C
|02D2D1| db $01 ; 0x5D
|02D2D2| db $01 ; 0x5E
|02D2D3| db $01 ; 0x5F
|02D2D4| db $01 ; 0x60
|02D2D5| db $01 ; 0x61
|02D2D6| db $01 ; 0x62
|02D2D7| db $01 ; 0x63
|02D2D8| db $01 ; 0x64
|02D2D9| db $01 ; 0x65
|02D2DA| db $01 ; 0x66
|02D2DB| db $01 ; 0x67
|02D2DC| db $01 ; 0x68
|02D2DD| db $01 ; 0x69
|02D2DE| db $01 ; 0x6A
|02D2DF| db $01 ; 0x6B
|02D2E0| db $01 ; 0x6C
|02D2E1| db $01 ; 0x6D
|02D2E2| db $01 ; 0x6E
|02D2E3| db $01 ; 0x6F
|02D2E4| db $01 ; 0x70
|02D2E5| db $01 ; 0x71
|02D2E6| db $01 ; 0x72
|02D2E7| db $00 ; 0x73
|02D2E8| db $00 ; 0x74
|02D2E9| db $00 ; 0x75
|02D2EA| db $00 ; 0x76
|02D2EB| db $00 ; 0x77
|02D2EC| db $00 ; 0x78
|02D2ED| db $00 ; 0x79
|02D2EE| db $00 ; 0x7A
|02D2EF| db $00 ; 0x7B
|02D2F0| db $00 ; 0x7C
|02D2F1| db $00 ; 0x7D
|02D2F2| db $00 ; 0x7E
|02D2F3| db $00 ; 0x7F
|02D2F4| db $00 ; 0x80
|02D2F5| db $00 ; 0x81
|02D2F6| db $00 ; 0x82
|02D2F7| db $01 ; 0x83
|02D2F8| db $01 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes upper nibble to $EE
; writes lower nibble to $0476
.layer
|02D2F9| db $00 ; 0x00
|02D2FA| db $00 ; 0x01
|02D2FB| db $01 ; 0x02
|02D2FC| db $00 ; 0x03
|02D2FD| db $01 ; 0x04
|02D2FE| db $00 ; 0x05
|02D2FF| db $00 ; 0x06
|02D300| db $01 ; 0x07
|02D301| db $00 ; 0x08
|02D302| db $00 ; 0x09
|02D303| db $00 ; 0x0A
|02D304| db $00 ; 0x0B
|02D305| db $00 ; 0x0C
|02D306| db $00 ; 0x0D
|02D307| db $00 ; 0x0E
|02D308| db $00 ; 0x0F
|02D309| db $00 ; 0x10
|02D30A| db $00 ; 0x11
|02D30B| db $00 ; 0x12
|02D30C| db $00 ; 0x13
|02D30D| db $00 ; 0x14
|02D30E| db $00 ; 0x15
|02D30F| db $00 ; 0x16
|02D310| db $00 ; 0x17
|02D311| db $00 ; 0x18
|02D312| db $00 ; 0x19
|02D313| db $01 ; 0x1A
|02D314| db $00 ; 0x1B
|02D315| db $01 ; 0x1C
|02D316| db $00 ; 0x1D
|02D317| db $00 ; 0x1E
|02D318| db $00 ; 0x1F
|02D319| db $00 ; 0x20
|02D31A| db $00 ; 0x21
|02D31B| db $11 ; 0x22
|02D31C| db $00 ; 0x23
|02D31D| db $00 ; 0x24
|02D31E| db $00 ; 0x25
|02D31F| db $00 ; 0x26
|02D320| db $00 ; 0x27
|02D321| db $00 ; 0x28
|02D322| db $00 ; 0x29
|02D323| db $00 ; 0x2A
|02D324| db $00 ; 0x2B
|02D325| db $00 ; 0x2C
|02D326| db $00 ; 0x2D
|02D327| db $01 ; 0x2E
|02D328| db $01 ; 0x2F
|02D329| db $01 ; 0x30
|02D32A| db $00 ; 0x31
|02D32B| db $00 ; 0x32
|02D32C| db $11 ; 0x33
|02D32D| db $00 ; 0x34
|02D32E| db $00 ; 0x35
|02D32F| db $00 ; 0x36
|02D330| db $00 ; 0x37
|02D331| db $00 ; 0x38
|02D332| db $00 ; 0x39
|02D333| db $00 ; 0x3A
|02D334| db $00 ; 0x3B
|02D335| db $00 ; 0x3C
|02D336| db $00 ; 0x3D
|02D337| db $00 ; 0x3E
|02D338| db $00 ; 0x3F
|02D339| db $00 ; 0x40
|02D33A| db $00 ; 0x41
|02D33B| db $00 ; 0x42
|02D33C| db $00 ; 0x43
|02D33D| db $00 ; 0x44
|02D33E| db $00 ; 0x45
|02D33F| db $00 ; 0x46
|02D340| db $00 ; 0x47
|02D341| db $00 ; 0x48
|02D342| db $00 ; 0x49
|02D343| db $00 ; 0x4A
|02D344| db $00 ; 0x4B
|02D345| db $00 ; 0x4C
|02D346| db $01 ; 0x4D
|02D347| db $00 ; 0x4E
|02D348| db $00 ; 0x4F
|02D349| db $00 ; 0x50
|02D34A| db $11 ; 0x51
|02D34B| db $00 ; 0x52
|02D34C| db $00 ; 0x53
|02D34D| db $00 ; 0x54
|02D34E| db $00 ; 0x55
|02D34F| db $00 ; 0x56
|02D350| db $00 ; 0x57
|02D351| db $00 ; 0x58
|02D352| db $00 ; 0x59
|02D353| db $00 ; 0x5A
|02D354| db $00 ; 0x5B
|02D355| db $00 ; 0x5C
|02D356| db $00 ; 0x5D
|02D357| db $00 ; 0x5E
|02D358| db $00 ; 0x5F
|02D359| db $00 ; 0x60
|02D35A| db $00 ; 0x61
|02D35B| db $00 ; 0x62
|02D35C| db $00 ; 0x63
|02D35D| db $00 ; 0x64
|02D35E| db $00 ; 0x65
|02D35F| db $00 ; 0x66
|02D360| db $00 ; 0x67
|02D361| db $00 ; 0x68
|02D362| db $01 ; 0x69
|02D363| db $01 ; 0x6A
|02D364| db $00 ; 0x6B
|02D365| db $00 ; 0x6C
|02D366| db $00 ; 0x6D
|02D367| db $00 ; 0x6E
|02D368| db $00 ; 0x6F
|02D369| db $00 ; 0x70
|02D36A| db $00 ; 0x71
|02D36B| db $00 ; 0x72
|02D36C| db $00 ; 0x73
|02D36D| db $11 ; 0x74
|02D36E| db $00 ; 0x75
|02D36F| db $00 ; 0x76
|02D370| db $00 ; 0x77
|02D371| db $00 ; 0x78
|02D372| db $00 ; 0x79
|02D373| db $00 ; 0x7A
|02D374| db $00 ; 0x7B
|02D375| db $01 ; 0x7C
|02D376| db $01 ; 0x7D
|02D377| db $11 ; 0x7E
|02D378| db $01 ; 0x7F
|02D379| db $00 ; 0x80
|02D37A| db $00 ; 0x81
|02D37B| db $00 ; 0x82
|02D37C| db $00 ; 0x83
|02D37D| db $00 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes upper nibble to $A6
; writes lower nibble to $A7
.camera_scroll_controller
|02D37E| db $00 ; 0x00
|02D37F| db $00 ; 0x01
|02D380| db $22 ; 0x02
|02D381| db $02 ; 0x03
|02D382| db $22 ; 0x04
|02D383| db $22 ; 0x05
|02D384| db $22 ; 0x06
|02D385| db $22 ; 0x07
|02D386| db $20 ; 0x08
|02D387| db $22 ; 0x09
|02D388| db $00 ; 0x0A
|02D389| db $00 ; 0x0B
|02D38A| db $00 ; 0x0C
|02D38B| db $00 ; 0x0D
|02D38C| db $00 ; 0x0E
|02D38D| db $00 ; 0x0F
|02D38E| db $00 ; 0x10
|02D38F| db $00 ; 0x11
|02D390| db $02 ; 0x12
|02D391| db $22 ; 0x13
|02D392| db $22 ; 0x14
|02D393| db $00 ; 0x15
|02D394| db $22 ; 0x16
|02D395| db $02 ; 0x17
|02D396| db $02 ; 0x18
|02D397| db $00 ; 0x19
|02D398| db $22 ; 0x1A
|02D399| db $22 ; 0x1B
|02D39A| db $02 ; 0x1C
|02D39B| db $22 ; 0x1D
|02D39C| db $20 ; 0x1E
|02D39D| db $20 ; 0x1F
|02D39E| db $20 ; 0x20
|02D39F| db $22 ; 0x21
|02D3A0| db $22 ; 0x22
|02D3A1| db $22 ; 0x23
|02D3A2| db $00 ; 0x24
|02D3A3| db $22 ; 0x25
|02D3A4| db $20 ; 0x26
|02D3A5| db $20 ; 0x27
|02D3A6| db $00 ; 0x28
|02D3A7| db $00 ; 0x29
|02D3A8| db $00 ; 0x2A
|02D3A9| db $02 ; 0x2B
|02D3AA| db $02 ; 0x2C
|02D3AB| db $00 ; 0x2D
|02D3AC| db $22 ; 0x2E
|02D3AD| db $22 ; 0x2F
|02D3AE| db $02 ; 0x30
|02D3AF| db $22 ; 0x31
|02D3B0| db $20 ; 0x32
|02D3B1| db $22 ; 0x33
|02D3B2| db $22 ; 0x34
|02D3B3| db $02 ; 0x35
|02D3B4| db $02 ; 0x36
|02D3B5| db $22 ; 0x37
|02D3B6| db $00 ; 0x38
|02D3B7| db $20 ; 0x39
|02D3B8| db $22 ; 0x3A
|02D3B9| db $00 ; 0x3B
|02D3BA| db $00 ; 0x3C
|02D3BB| db $00 ; 0x3D
|02D3BC| db $00 ; 0x3E
|02D3BD| db $00 ; 0x3F
|02D3BE| db $00 ; 0x40
|02D3BF| db $22 ; 0x41
|02D3C0| db $02 ; 0x42
|02D3C1| db $02 ; 0x43
|02D3C2| db $00 ; 0x44
|02D3C3| db $00 ; 0x45
|02D3C4| db $00 ; 0x46
|02D3C5| db $00 ; 0x47
|02D3C6| db $00 ; 0x48
|02D3C7| db $00 ; 0x49
|02D3C8| db $00 ; 0x4A
|02D3C9| db $00 ; 0x4B
|02D3CA| db $00 ; 0x4C
|02D3CB| db $02 ; 0x4D
|02D3CC| db $20 ; 0x4E
|02D3CD| db $00 ; 0x4F
|02D3CE| db $02 ; 0x50
|02D3CF| db $00 ; 0x51
|02D3D0| db $00 ; 0x52
|02D3D1| db $00 ; 0x53
|02D3D2| db $00 ; 0x54
|02D3D3| db $02 ; 0x55
|02D3D4| db $00 ; 0x56
|02D3D5| db $00 ; 0x57
|02D3D6| db $00 ; 0x58
|02D3D7| db $00 ; 0x59
|02D3D8| db $02 ; 0x5A
|02D3D9| db $02 ; 0x5B
|02D3DA| db $00 ; 0x5C
|02D3DB| db $02 ; 0x5D
|02D3DC| db $00 ; 0x5E
|02D3DD| db $02 ; 0x5F
|02D3DE| db $00 ; 0x60
|02D3DF| db $20 ; 0x61
|02D3E0| db $00 ; 0x62
|02D3E1| db $00 ; 0x63
|02D3E2| db $00 ; 0x64
|02D3E3| db $00 ; 0x65
|02D3E4| db $00 ; 0x66
|02D3E5| db $00 ; 0x67
|02D3E6| db $00 ; 0x68
|02D3E7| db $02 ; 0x69
|02D3E8| db $02 ; 0x6A
|02D3E9| db $00 ; 0x6B
|02D3EA| db $00 ; 0x6C
|02D3EB| db $00 ; 0x6D
|02D3EC| db $00 ; 0x6E
|02D3ED| db $00 ; 0x6F
|02D3EE| db $00 ; 0x70
|02D3EF| db $00 ; 0x71
|02D3F0| db $00 ; 0x72
|02D3F1| db $20 ; 0x73
|02D3F2| db $22 ; 0x74
|02D3F3| db $00 ; 0x75
|02D3F4| db $02 ; 0x76
|02D3F5| db $02 ; 0x77
|02D3F6| db $22 ; 0x78
|02D3F7| db $02 ; 0x79
|02D3F8| db $02 ; 0x7A
|02D3F9| db $00 ; 0x7B
|02D3FA| db $02 ; 0x7C
|02D3FB| db $20 ; 0x7D
|02D3FC| db $00 ; 0x7E
|02D3FD| db $02 ; 0x7F
|02D3FE| db $20 ; 0x80
|02D3FF| db $02 ; 0x81
|02D400| db $00 ; 0x82
|02D401| db $00 ; 0x83
|02D402| db $00 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes upper nibble to $A9
; writes lower nibble to $AA
.quadrant
|02D403| db $02 ; 0x00
|02D404| db $02 ; 0x01
|02D405| db $02 ; 0x02
|02D406| db $12 ; 0x03
|02D407| db $02 ; 0x04
|02D408| db $02 ; 0x05
|02D409| db $02 ; 0x06
|02D40A| db $12 ; 0x07
|02D40B| db $02 ; 0x08
|02D40C| db $02 ; 0x09
|02D40D| db $12 ; 0x0A
|02D40E| db $02 ; 0x0B
|02D40F| db $02 ; 0x0C
|02D410| db $12 ; 0x0D
|02D411| db $02 ; 0x0E
|02D412| db $12 ; 0x0F
|02D413| db $02 ; 0x10
|02D414| db $02 ; 0x11
|02D415| db $12 ; 0x12
|02D416| db $02 ; 0x13
|02D417| db $12 ; 0x14
|02D418| db $12 ; 0x15
|02D419| db $02 ; 0x16
|02D41A| db $12 ; 0x17
|02D41B| db $02 ; 0x18
|02D41C| db $12 ; 0x19
|02D41D| db $02 ; 0x1A
|02D41E| db $12 ; 0x1B
|02D41F| db $02 ; 0x1C
|02D420| db $12 ; 0x1D
|02D421| db $12 ; 0x1E
|02D422| db $02 ; 0x1F
|02D423| db $02 ; 0x20
|02D424| db $02 ; 0x21
|02D425| db $02 ; 0x22
|02D426| db $02 ; 0x23
|02D427| db $02 ; 0x24
|02D428| db $02 ; 0x25
|02D429| db $02 ; 0x26
|02D42A| db $02 ; 0x27
|02D42B| db $02 ; 0x28
|02D42C| db $02 ; 0x29
|02D42D| db $02 ; 0x2A
|02D42E| db $02 ; 0x2B
|02D42F| db $02 ; 0x2C
|02D430| db $12 ; 0x2D
|02D431| db $02 ; 0x2E
|02D432| db $12 ; 0x2F
|02D433| db $02 ; 0x30
|02D434| db $02 ; 0x31
|02D435| db $02 ; 0x32
|02D436| db $02 ; 0x33
|02D437| db $02 ; 0x34
|02D438| db $12 ; 0x35
|02D439| db $02 ; 0x36
|02D43A| db $02 ; 0x37
|02D43B| db $12 ; 0x38
|02D43C| db $12 ; 0x39
|02D43D| db $12 ; 0x3A
|02D43E| db $02 ; 0x3B
|02D43F| db $02 ; 0x3C
|02D440| db $12 ; 0x3D
|02D441| db $02 ; 0x3E
|02D442| db $02 ; 0x3F
|02D443| db $02 ; 0x40
|02D444| db $12 ; 0x41
|02D445| db $02 ; 0x42
|02D446| db $00 ; 0x43
|02D447| db $02 ; 0x44
|02D448| db $02 ; 0x45
|02D449| db $12 ; 0x46
|02D44A| db $02 ; 0x47
|02D44B| db $02 ; 0x48
|02D44C| db $02 ; 0x49
|02D44D| db $02 ; 0x4A
|02D44E| db $02 ; 0x4B
|02D44F| db $02 ; 0x4C
|02D450| db $02 ; 0x4D
|02D451| db $02 ; 0x4E
|02D452| db $02 ; 0x4F
|02D453| db $02 ; 0x50
|02D454| db $02 ; 0x51
|02D455| db $02 ; 0x52
|02D456| db $02 ; 0x53
|02D457| db $12 ; 0x54
|02D458| db $02 ; 0x55
|02D459| db $12 ; 0x56
|02D45A| db $02 ; 0x57
|02D45B| db $12 ; 0x58
|02D45C| db $02 ; 0x59
|02D45D| db $02 ; 0x5A
|02D45E| db $02 ; 0x5B
|02D45F| db $02 ; 0x5C
|02D460| db $02 ; 0x5D
|02D461| db $12 ; 0x5E
|02D462| db $02 ; 0x5F
|02D463| db $02 ; 0x60
|02D464| db $02 ; 0x61
|02D465| db $12 ; 0x62
|02D466| db $12 ; 0x63
|02D467| db $02 ; 0x64
|02D468| db $02 ; 0x65
|02D469| db $12 ; 0x66
|02D46A| db $12 ; 0x67
|02D46B| db $12 ; 0x68
|02D46C| db $02 ; 0x69
|02D46D| db $12 ; 0x6A
|02D46E| db $02 ; 0x6B
|02D46F| db $02 ; 0x6C
|02D470| db $02 ; 0x6D
|02D471| db $12 ; 0x6E
|02D472| db $02 ; 0x6F
|02D473| db $12 ; 0x70
|02D474| db $02 ; 0x71
|02D475| db $12 ; 0x72
|02D476| db $10 ; 0x73
|02D477| db $02 ; 0x74
|02D478| db $00 ; 0x75
|02D479| db $10 ; 0x76
|02D47A| db $00 ; 0x77
|02D47B| db $10 ; 0x78
|02D47C| db $10 ; 0x79
|02D47D| db $10 ; 0x7A
|02D47E| db $10 ; 0x7B
|02D47F| db $02 ; 0x7C
|02D480| db $10 ; 0x7D
|02D481| db $12 ; 0x7E
|02D482| db $02 ; 0x7F
|02D483| db $02 ; 0x80
|02D484| db $12 ; 0x81
|02D485| db $02 ; 0x82
|02D486| db $02 ; 0x83
|02D487| db $02 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $0696
.overworld_door_tilemap
|02D488| dw $0816 ; 0x00
|02D48A| dw $0816 ; 0x01
|02D48C| dw $0000 ; 0x02
|02D48E| dw $0000 ; 0x03
|02D490| dw $0000 ; 0x04
|02D492| dw $0000 ; 0x05
|02D494| dw $0000 ; 0x06
|02D496| dw $0000 ; 0x07
|02D498| dw $0000 ; 0x08
|02D49A| dw $0000 ; 0x09
|02D49C| dw $0000 ; 0x0A
|02D49E| dw $0000 ; 0x0B
|02D4A0| dw $0000 ; 0x0C
|02D4A2| dw $05CC ; 0x0D
|02D4A4| dw $05D4 ; 0x0E
|02D4A6| dw $0BB6 ; 0x0F
|02D4A8| dw $0B86 ; 0x10
|02D4AA| dw $0000 ; 0x11
|02D4AC| dw $0000 ; 0x12
|02D4AE| dw $0000 ; 0x13
|02D4B0| dw $0000 ; 0x14
|02D4B2| dw $0000 ; 0x15
|02D4B4| dw $0000 ; 0x16
|02D4B6| dw $0000 ; 0x17
|02D4B8| dw $0000 ; 0x18
|02D4BA| dw $0000 ; 0x19
|02D4BC| dw $0000 ; 0x1A
|02D4BE| dw $0000 ; 0x1B
|02D4C0| dw $0000 ; 0x1C
|02D4C2| dw $0000 ; 0x1D
|02D4C4| dw $0000 ; 0x1E
|02D4C6| dw $0000 ; 0x1F
|02D4C8| dw $0000 ; 0x20
|02D4CA| dw $0000 ; 0x21
|02D4CC| dw $0000 ; 0x22
|02D4CE| dw $0000 ; 0x23
|02D4D0| dw $0000 ; 0x24
|02D4D2| dw $0000 ; 0x25
|02D4D4| dw $0000 ; 0x26
|02D4D6| dw $0000 ; 0x27
|02D4D8| dw $0000 ; 0x28
|02D4DA| dw $0000 ; 0x29
|02D4DC| dw $0000 ; 0x2A
|02D4DE| dw $0000 ; 0x2B
|02D4E0| dw $0000 ; 0x2C
|02D4E2| dw $0000 ; 0x2D
|02D4E4| dw $0000 ; 0x2E
|02D4E6| dw $0000 ; 0x2F
|02D4E8| dw $0000 ; 0x30
|02D4EA| dw $0000 ; 0x31
|02D4EC| dw $0000 ; 0x32
|02D4EE| dw $0000 ; 0x33
|02D4F0| dw $0000 ; 0x34
|02D4F2| dw $0000 ; 0x35
|02D4F4| dw $0000 ; 0x36
|02D4F6| dw $0000 ; 0x37
|02D4F8| dw $0000 ; 0x38
|02D4FA| dw $0000 ; 0x39
|02D4FC| dw $0000 ; 0x3A
|02D4FE| dw $0000 ; 0x3B
|02D500| dw $0000 ; 0x3C
|02D502| dw $0000 ; 0x3D
|02D504| dw $0DE8 ; 0x3E
|02D506| dw $0B98 ; 0x3F
|02D508| dw $14CE ; 0x40
|02D50A| dw $0000 ; 0x41
|02D50C| dw $1C50 ; 0x42
|02D50E| dw $FFFF ; 0x43
|02D510| dw $1466 ; 0x44
|02D512| dw $0000 ; 0x45
|02D514| dw $1AB6 ; 0x46
|02D516| dw $0B98 ; 0x47
|02D518| dw $1AB6 ; 0x48
|02D51A| dw $040E ; 0x49
|02D51C| dw $9C0C ; 0x4A
|02D51E| dw $1530 ; 0x4B
|02D520| dw $0A98 ; 0x4C
|02D522| dw $0000 ; 0x4D
|02D524| dw $0000 ; 0x4E
|02D526| dw $0000 ; 0x4F
|02D528| dw $0000 ; 0x50
|02D52A| dw $0000 ; 0x51
|02D52C| dw $0000 ; 0x52
|02D52E| dw $0816 ; 0x53
|02D530| dw $0DE8 ; 0x54
|02D532| dw $0000 ; 0x55
|02D534| dw $0000 ; 0x56
|02D536| dw $0AA8 ; 0x57
|02D538| dw $0000 ; 0x58
|02D53A| dw $09AC ; 0x59
|02D53C| dw $0000 ; 0x5A
|02D53E| dw $0000 ; 0x5B
|02D540| dw $0000 ; 0x5C
|02D542| dw $0000 ; 0x5D
|02D544| dw $0000 ; 0x5E
|02D546| dw $0000 ; 0x5F
|02D548| dw $0000 ; 0x60
|02D54A| dw $0000 ; 0x61
|02D54C| dw $0000 ; 0x62
|02D54E| dw $0000 ; 0x63
|02D550| dw $041A ; 0x64
|02D552| dw $0000 ; 0x65
|02D554| dw $091E ; 0x66
|02D556| dw $09AC ; 0x67
|02D558| dw $0000 ; 0x68
|02D55A| dw $0000 ; 0x69
|02D55C| dw $0000 ; 0x6A
|02D55E| dw $07AA ; 0x6B
|02D560| dw $0000 ; 0x6C
|02D562| dw $0000 ; 0x6D
|02D564| dw $0000 ; 0x6E
|02D566| dw $0000 ; 0x6F
|02D568| dw $0000 ; 0x70
|02D56A| dw $0000 ; 0x71
|02D56C| dw $0000 ; 0x72
|02D56E| dw $0000 ; 0x73
|02D570| dw $0000 ; 0x74
|02D572| dw $0000 ; 0x75
|02D574| dw $0000 ; 0x76
|02D576| dw $0000 ; 0x77
|02D578| dw $0000 ; 0x78
|02D57A| dw $0000 ; 0x79
|02D57C| dw $0000 ; 0x7A
|02D57E| dw $0000 ; 0x7B
|02D580| dw $0000 ; 0x7C
|02D582| dw $0000 ; 0x7D
|02D584| dw $0000 ; 0x7E
|02D586| dw $0000 ; 0x7F
|02D588| dw $0000 ; 0x80
|02D58A| dw $0000 ; 0x81
|02D58C| dw $0000 ; 0x82
|02D58E| dw $0000 ; 0x83
|02D590| dw $0000 ; 0x84

;---------------------------------------------------------------------------------------------------

; writes to $0132
.song
|02D592| db $FF ; 0x00 - SONG FF
|02D593| db $07 ; 0x01 - SONG 07
|02D594| db $14 ; 0x02 - SONG 14
|02D595| db $10 ; 0x03 - SONG 10
|02D596| db $10 ; 0x04 - SONG 10
|02D597| db $10 ; 0x05 - SONG 10
|02D598| db $12 ; 0x06 - SONG 12
|02D599| db $12 ; 0x07 - SONG 12
|02D59A| db $11 ; 0x08 - SONG 11
|02D59B| db $11 ; 0x09 - SONG 11
|02D59C| db $11 ; 0x0A - SONG 11
|02D59D| db $11 ; 0x0B - SONG 11
|02D59E| db $11 ; 0x0C - SONG 11
|02D59F| db $F2 ; 0x0D - SONG F2
|02D5A0| db $F2 ; 0x0E - SONG F2
|02D5A1| db $F2 ; 0x0F - SONG F2
|02D5A2| db $F2 ; 0x10 - SONG F2
|02D5A3| db $18 ; 0x11 - SONG 18
|02D5A4| db $1B ; 0x12 - SONG 1B
|02D5A5| db $12 ; 0x13 - SONG 12
|02D5A6| db $12 ; 0x14 - SONG 12
|02D5A7| db $16 ; 0x15 - SONG 16
|02D5A8| db $12 ; 0x16 - SONG 12
|02D5A9| db $12 ; 0x17 - SONG 12
|02D5AA| db $16 ; 0x18 - SONG 16
|02D5AB| db $16 ; 0x19 - SONG 16
|02D5AC| db $12 ; 0x1A - SONG 12
|02D5AD| db $12 ; 0x1B - SONG 12
|02D5AE| db $12 ; 0x1C - SONG 12
|02D5AF| db $12 ; 0x1D - SONG 12
|02D5B0| db $12 ; 0x1E - SONG 12
|02D5B1| db $12 ; 0x1F - SONG 12
|02D5B2| db $12 ; 0x20 - SONG 12
|02D5B3| db $12 ; 0x21 - SONG 12
|02D5B4| db $12 ; 0x22 - SONG 12
|02D5B5| db $12 ; 0x23 - SONG 12
|02D5B6| db $10 ; 0x24 - SONG 10
|02D5B7| db $16 ; 0x25 - SONG 16
|02D5B8| db $16 ; 0x26 - SONG 16
|02D5B9| db $16 ; 0x27 - SONG 16
|02D5BA| db $16 ; 0x28 - SONG 16
|02D5BB| db $16 ; 0x29 - SONG 16
|02D5BC| db $16 ; 0x2A - SONG 16
|02D5BD| db $16 ; 0x2B - SONG 16
|02D5BE| db $18 ; 0x2C - SONG 18
|02D5BF| db $16 ; 0x2D - SONG 16
|02D5C0| db $12 ; 0x2E - SONG 12
|02D5C1| db $12 ; 0x2F - SONG 12
|02D5C2| db $12 ; 0x30 - SONG 12
|02D5C3| db $12 ; 0x31 - SONG 12
|02D5C4| db $03 ; 0x32 - SONG 03
|02D5C5| db $11 ; 0x33 - SONG 11
|02D5C6| db $16 ; 0x34 - SONG 16
|02D5C7| db $16 ; 0x35 - SONG 16
|02D5C8| db $1C ; 0x36 - SONG 1C
|02D5C9| db $16 ; 0x37 - SONG 16
|02D5CA| db $1B ; 0x38 - SONG 1B
|02D5CB| db $12 ; 0x39 - SONG 12
|02D5CC| db $12 ; 0x3A - SONG 12
|02D5CD| db $12 ; 0x3B - SONG 12
|02D5CE| db $0E ; 0x3C - SONG 0E
|02D5CF| db $12 ; 0x3D - SONG 12
|02D5D0| db $F2 ; 0x3E - SONG F2
|02D5D1| db $F2 ; 0x3F - SONG F2
|02D5D2| db $F2 ; 0x40 - SONG F2
|02D5D3| db $12 ; 0x41 - SONG 12
|02D5D4| db $F2 ; 0x42 - SONG F2
|02D5D5| db $F2 ; 0x43 - SONG F2
|02D5D6| db $F2 ; 0x44 - SONG F2
|02D5D7| db $18 ; 0x45 - SONG 18
|02D5D8| db $17 ; 0x46 - SONG 17
|02D5D9| db $0E ; 0x47 - SONG 0E
|02D5DA| db $F2 ; 0x48 - SONG F2
|02D5DB| db $F2 ; 0x49 - SONG F2
|02D5DC| db $F2 ; 0x4A - SONG F2
|02D5DD| db $F2 ; 0x4B - SONG F2
|02D5DE| db $F2 ; 0x4C - SONG F2
|02D5DF| db $18 ; 0x4D - SONG 18
|02D5E0| db $18 ; 0x4E - SONG 18
|02D5E1| db $12 ; 0x4F - SONG 12
|02D5E2| db $12 ; 0x50 - SONG 12
|02D5E3| db $18 ; 0x51 - SONG 18
|02D5E4| db $18 ; 0x52 - SONG 18
|02D5E5| db $F2 ; 0x53 - SONG F2
|02D5E6| db $F2 ; 0x54 - SONG F2
|02D5E7| db $1B ; 0x55 - SONG 1B
|02D5E8| db $1B ; 0x56 - SONG 1B
|02D5E9| db $17 ; 0x57 - SONG 17
|02D5EA| db $12 ; 0x58 - SONG 12
|02D5EB| db $0E ; 0x59 - SONG 0E
|02D5EC| db $12 ; 0x5A - SONG 12
|02D5ED| db $18 ; 0x5B - SONG 18
|02D5EE| db $18 ; 0x5C - SONG 18
|02D5EF| db $18 ; 0x5D - SONG 18
|02D5F0| db $1B ; 0x5E - SONG 1B
|02D5F1| db $12 ; 0x5F - SONG 12
|02D5F2| db $17 ; 0x60 - SONG 17
|02D5F3| db $F2 ; 0x61 - SONG F2
|02D5F4| db $12 ; 0x62 - SONG 12
|02D5F5| db $18 ; 0x63 - SONG 18
|02D5F6| db $F2 ; 0x64 - SONG F2
|02D5F7| db $17 ; 0x65 - SONG 17
|02D5F8| db $17 ; 0x66 - SONG 17
|02D5F9| db $0E ; 0x67 - SONG 0E
|02D5FA| db $18 ; 0x68 - SONG 18
|02D5FB| db $12 ; 0x69 - SONG 12
|02D5FC| db $12 ; 0x6A - SONG 12
|02D5FD| db $F2 ; 0x6B - SONG F2
|02D5FE| db $12 ; 0x6C - SONG 12
|02D5FF| db $12 ; 0x6D - SONG 12
|02D600| db $12 ; 0x6E - SONG 12
|02D601| db $12 ; 0x6F - SONG 12
|02D602| db $12 ; 0x70 - SONG 12
|02D603| db $1B ; 0x71 - SONG 1B
|02D604| db $12 ; 0x72 - SONG 12
|02D605| db $FF ; 0x73 - SONG FF
|02D606| db $FF ; 0x74 - SONG FF
|02D607| db $FF ; 0x75 - SONG FF
|02D608| db $16 ; 0x76 - SONG 16
|02D609| db $16 ; 0x77 - SONG 16
|02D60A| db $16 ; 0x78 - SONG 16
|02D60B| db $16 ; 0x79 - SONG 16
|02D60C| db $18 ; 0x7A - SONG 18
|02D60D| db $15 ; 0x7B - SONG 15
|02D60E| db $1B ; 0x7C - SONG 1B
|02D60F| db $03 ; 0x7D - SONG 03
|02D610| db $18 ; 0x7E - SONG 18
|02D611| db $1B ; 0x7F - SONG 1B
|02D612| db $12 ; 0x80 - SONG 12
|02D613| db $10 ; 0x81 - SONG 10
|02D614| db $12 ; 0x82 - SONG 12
|02D615| db $12 ; 0x83 - SONG 12
|02D616| db $1B ; 0x84 - SONG 1B

;===================================================================================================

LoadUnderworldEntrance:
|02D617| PHB
|02D618| PHK
|02D619| PLB

|02D61A| LDA.b #$01
|02D61C| STA.b $1B

|02D61E| LDA.w $010A
|02D621| BEQ .recache

|02D623| STZ.w $010A

|02D626| JMP.w .continue

;---------------------------------------------------------------------------------------------------

.recache
|02D629| REP #$20

|02D62B| LDA.w $040A
|02D62E| STA.l $7EC140

|02D632| LDA.b $1C
|02D634| STA.l $7EC142

|02D638| LDA.b $E8
|02D63A| STA.l $7EC144

|02D63E| LDA.b $E2
|02D640| STA.l $7EC146

|02D644| LDA.b $20
|02D646| STA.l $7EC148

|02D64A| LDA.b $22
|02D64C| STA.l $7EC14A

|02D650| LDA.w $0618
|02D653| STA.l $7EC150

|02D657| LDA.w $061C
|02D65A| STA.l $7EC152

|02D65E| LDA.b $8A
|02D660| STA.l $7EC14C

|02D664| LDA.b $84
|02D666| STA.l $7EC14E

|02D66A| STZ.b $8A
|02D66C| STZ.b $8C

|02D66E| LDA.w $0600
|02D671| STA.l $7EC154

|02D675| LDA.w $0602
|02D678| STA.l $7EC156

|02D67C| LDA.w $0604
|02D67F| STA.l $7EC158

|02D683| LDA.w $0606
|02D686| STA.l $7EC15A

|02D68A| LDA.w $0610
|02D68D| STA.l $7EC15C

|02D691| LDA.w $0612
|02D694| STA.l $7EC15E

|02D698| LDA.w $0614
|02D69B| STA.l $7EC160

|02D69F| LDA.w $0616
|02D6A2| STA.l $7EC162

|02D6A6| LDA.w $0624
|02D6A9| STA.l $7EC16A

|02D6AD| LDA.w $0626
|02D6B0| STA.l $7EC16C

|02D6B4| LDA.w $0628
|02D6B7| STA.l $7EC16E

|02D6BB| LDA.w $062A
|02D6BE| STA.l $7EC170

|02D6C2| SEP #$20

|02D6C4| LDA.w $0AA0
|02D6C7| STA.l $7EC164

|02D6CB| LDA.w $0AA1
|02D6CE| STA.l $7EC165

|02D6D2| LDA.w $0AA2
|02D6D5| STA.l $7EC166

|02D6D9| LDA.w $0AA3
|02D6DC| STA.l $7EC167

;---------------------------------------------------------------------------------------------------

.continue
|02D6E0| REP #$30

|02D6E2| STZ.w $011A
|02D6E5| STZ.w $011C
|02D6E8| STZ.w $010A

|02D6EB| LDA.l $7EF3CC
|02D6EF| CMP.w #$0004 ; FOLLOWER 04
|02D6F2| BEQ .have_old_man

|02D6F4| LDA.w $04AA
|02D6F7| BEQ .not_a_respawn

.have_old_man
|02D6F9| JMP.w LoadSpawnEntrance

;---------------------------------------------------------------------------------------------------

.not_a_respawn
|02D6FC| LDA.w $010E ; get dungeon entrance
|02D6FF| AND.w #$00FF

|02D702| ASL A
|02D703| TAX

|02D704| ASL A
|02D705| ASL A
|02D706| TAY

|02D707| LDA.w EntranceData.room_id,X
|02D70A| STA.b $A0
|02D70C| STA.w $048E

|02D70F| LDA.w EntranceData.vertical_scroll,X
|02D712| STA.b $E8
|02D714| STA.b $E6
|02D716| STA.w $0122
|02D719| STA.w $0124

|02D71C| LDA.w EntranceData.horizontal_scroll,X
|02D71F| STA.b $E2
|02D721| STA.b $E0
|02D723| STA.w $011E
|02D726| STA.w $0120

|02D729| LDA.l $7EF3C5
|02D72D| BEQ .skip_coordinates

|02D72F| LDA.w EntranceData.y_coordinate,X
|02D732| STA.b $20

|02D734| LDA.w EntranceData.x_coordinate,X
|02D737| STA.b $22

;---------------------------------------------------------------------------------------------------

.skip_coordinates
|02D739| LDA.w EntranceData.camera_trigger_y,X
|02D73C| STA.w $0618

|02D73F| INC A
|02D740| INC A
|02D741| STA.w $061A

|02D744| LDA.w EntranceData.camera_trigger_x,X
|02D747| STA.w $061C

|02D74A| INC A
|02D74B| INC A
|02D74C| STA.w $061E

|02D74F| LDA.w #$01F8
|02D752| STA.b $EC

|02D754| LDA.w EntranceData.overworld_door_tilemap,X
|02D757| STA.w $0696
|02D75A| STZ.w $0698

|02D75D| LDA.w #$0000
|02D760| STA.w $0610

|02D763| LDA.w #$0110
|02D766| STA.w $0612

|02D769| LDA.w #$0000
|02D76C| STA.w $0614

|02D76F| LDA.w #$0100
|02D772| STA.w $0616

|02D775| LDA.w $010E
|02D778| AND.w #$00FF
|02D77B| TAX

;---------------------------------------------------------------------------------------------------

|02D77C| SEP #$20

|02D77E| LDA.w EntranceData.camera_scroll_boundaries+0,Y
|02D781| STA.w $0601

|02D784| LDA.w EntranceData.camera_scroll_boundaries+1,Y
|02D787| STA.w $0603

|02D78A| LDA.w EntranceData.camera_scroll_boundaries+2,Y
|02D78D| STA.w $0605

|02D790| LDA.w EntranceData.camera_scroll_boundaries+3,Y
|02D793| STA.w $0607

|02D796| LDA.w EntranceData.camera_scroll_boundaries+4,Y
|02D799| STA.w $0609

|02D79C| LDA.w EntranceData.camera_scroll_boundaries+5,Y
|02D79F| STA.w $060B

|02D7A2| LDA.w EntranceData.camera_scroll_boundaries+6,Y
|02D7A5| STA.w $060D

|02D7A8| LDA.w EntranceData.camera_scroll_boundaries+7,Y
|02D7AB| STA.w $060F

|02D7AE| STZ.w $0600
|02D7B1| STZ.w $0602

|02D7B4| LDA.b #$10
|02D7B6| STA.w $0604
|02D7B9| STA.w $0606

|02D7BC| STZ.w $0608
|02D7BF| STZ.w $060A
|02D7C2| STZ.w $060C
|02D7C5| STZ.w $060E

;---------------------------------------------------------------------------------------------------

|02D7C8| LDA.b #$02

|02D7CA| CPX.w #$0000
|02D7CD| BEQ .face_down

|02D7CF| CPX.w #$0043
|02D7D2| BEQ .face_down

|02D7D4| LDA.b #$00

.face_down
|02D7D6| STA.b $2F

|02D7D8| LDA.w EntranceData.main_GFX,X
|02D7DB| STA.w $0AA1

|02D7DE| LDA.w EntranceData.song,X
|02D7E1| STA.w $0132

; was the song requested the legends theme?
|02D7E4| CMP.b #$03 ; SONG 03
|02D7E6| BNE .no_song_override

|02D7E8| LDA.l $7EF3C5 ; have we rescued zelda?
|02D7EC| CMP.b #$02
|02D7EE| BCC .no_song_override

; change it to caves theme
|02D7F0| LDA.b #$12 ; SONG 12
|02D7F2| STA.w $0132

.no_song_override
|02D7F5| LDA.w EntranceData.floor,X
|02D7F8| STA.b $A4

|02D7FA| LDA.w EntranceData.dungeon_id,X
|02D7FD| STA.w $040C

|02D800| LDA.w EntranceData.in_door,X
|02D803| STA.b $6C

|02D805| LDA.w EntranceData.layer,X
|02D808| LSR A
|02D809| LSR A
|02D80A| LSR A
|02D80B| LSR A
|02D80C| STA.b $EE

|02D80E| LDA.w EntranceData.layer,X
|02D811| AND.b #$0F
|02D813| STA.w $0476

|02D816| LDA.w EntranceData.camera_scroll_controller,X
|02D819| LSR A
|02D81A| LSR A
|02D81B| LSR A
|02D81C| LSR A
|02D81D| STA.b $A6

|02D81F| LDA.w EntranceData.camera_scroll_controller,X
|02D822| AND.b #$0F
|02D824| STA.b $A7

|02D826| LDA.w EntranceData.quadrant,X
|02D829| LSR A
|02D82A| LSR A
|02D82B| LSR A
|02D82C| LSR A
|02D82D| STA.b $A9

|02D82F| LDA.w EntranceData.quadrant,X
|02D832| AND.b #$0F
|02D834| STA.b $AA

; Single entrance rooms are always floor 1F
|02D836| LDX.b $A0
|02D838| CPX.w #$0100
|02D83B| BCC PullBlocksTorchesFromROM

|02D83D| STZ.b $A4

;===================================================================================================

PullBlocksTorchesFromROM:
|02D83F| LDA.b #$80
|02D841| STA.b $45
|02D843| STA.b $44

|02D845| LDA.b #$0F
|02D847| STA.b $42
|02D849| STA.b $43

|02D84B| LDA.b #$FF
|02D84D| STA.b $24
|02D84F| STA.b $29

|02D851| SEP #$30

|02D853| PLB
|02D854| PHB

|02D855| LDA.b #$7E
|02D857| PHA
|02D858| PLB

;---------------------------------------------------------------------------------------------------

|02D859| REP #$20

|02D85B| LDX.b #$00

.next_block_torch
|02D85D| LDA.l PushableBlocks+0*128,X
|02D861| STA.w $7EF940,X

|02D864| LDA.l PushableBlocks+1*128,X
|02D868| STA.w $7EF9C0,X

|02D86B| LDA.l PushableBlocks+2*128,X
|02D86F| STA.w $7EFA40,X

|02D872| LDA.l PushableBlocks+3*128,X
|02D876| STA.w $7EFAC0,X ; this leaks into torches a bit

|02D879| LDA.l LightableTorches+0*128,X
|02D87D| STA.w $7EFB40,X

|02D880| LDA.l LightableTorches+1*128,X
|02D884| STA.w $7EFBC0,X

|02D887| LDA.l LightableTorches+2*128,X
|02D88B| STA.w $7EFC40,X ; this leaks a bit too

|02D88E| INX
|02D88F| INX
|02D890| CPX.b #$80
|02D892| BNE .next_block_torch

;===================================================================================================

ResetPotTracking:
|02D894| LDX.b #$3E
|02D896| LDA.w #$0000

; clears pot items that have been grabbed
.next_pot
|02D899| STA.w $7EF800,X ; clear overworld stuff
|02D89C| STA.w $7EF840,X
|02D89F| STA.w $7EF880,X
|02D8A2| STA.w $7EF8C0,X

|02D8A5| STA.w $7EF580,X ; this is clearing pot item grabs
|02D8A8| STA.w $7EF5C0,X
|02D8AB| STA.w $7EF600,X
|02D8AE| STA.w $7EF640,X
|02D8B1| STA.w $7EF680,X

|02D8B4| STA.w $7EF6C0,X
|02D8B7| STA.w $7EF700,X
|02D8BA| STA.w $7EF740,X
|02D8BD| STA.w $7EF780,X
|02D8C0| STA.w $7EF7C0,X

|02D8C3| DEX
|02D8C4| DEX
|02D8C5| BPL .next_pot

;---------------------------------------------------------------------------------------------------

|02D8C7| STA.l $7EC172 ; reset orange/blue pegs

|02D8CB| STZ.w $04BC

|02D8CE| SEP #$30

|02D8D0| PLB

|02D8D1| RTS

;===================================================================================================

SpawnPointData:

; writes to $A0, $048E
.room_id
|02D8D2| dw $0104 ; 0x00 - Link's house   - ROOM 0104
|02D8D4| dw $0012 ; 0x01 - Sanctuary      - ROOM 0012
|02D8D6| dw $0080 ; 0x02 - Prison         - ROOM 0080
|02D8D8| dw $0055 ; 0x03 - Uncle          - ROOM 0055
|02D8DA| dw $0051 ; 0x04 - Throne         - ROOM 0051
|02D8DC| dw $00F0 ; 0x05 - Old man cave   - ROOM 00F0
|02D8DE| dw $00E4 ; 0x06 - Old man home   - ROOM 00E4

;---------------------------------------------------------------------------------------------------

; to $0600   +$1, +$3, +$5, +$7, +$9, +$B, +$D, +$F
.camera_scroll_boundaries
|02D8E0| db $21, $20, $21, $21, $09, $09, $09, $0A ; 0x00 - Link's house
|02D8E8| db $02, $02, $02, $03, $04, $04, $04, $05 ; 0x01 - Sanctuary
|02D8F0| db $10, $10, $10, $11, $01, $00, $01, $01 ; 0x02 - Prison
|02D8F8| db $0A, $0A, $0A, $0B, $0B, $0A, $0B, $0B ; 0x03 - Uncle
|02D900| db $0A, $0A, $0A, $0B, $02, $02, $02, $03 ; 0x04 - Throne
|02D908| db $1E, $1E, $1E, $1F, $01, $00, $01, $01 ; 0x05 - Old man cave
|02D910| db $1D, $1C, $1D, $1D, $08, $08, $08, $09 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to $E0, $E2, $011E, $0120
.horizontal_scroll
|02D918| dw $0900 ; 0x00 - Link's house
|02D91A| dw $0480 ; 0x01 - Sanctuary
|02D91C| dw $00DB ; 0x02 - Prison
|02D91E| dw $0A8E ; 0x03 - Uncle
|02D920| dw $0280 ; 0x04 - Throne
|02D922| dw $0100 ; 0x05 - Old man cave
|02D924| dw $0800 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to $E6, $E8, $0122, $0124
.vertical_scroll
|02D926| dw $2110 ; 0x00 - Link's house
|02D928| dw $0231 ; 0x01 - Sanctuary
|02D92A| dw $1000 ; 0x02 - Prison
|02D92C| dw $0A03 ; 0x03 - Uncle
|02D92E| dw $0A22 ; 0x04 - Throne
|02D930| dw $1E8C ; 0x05 - Old man cave
|02D932| dw $1D10 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to $20
.y_coordinate
|02D934| dw $2178 ; 0x00 - Link's house
|02D936| dw $029C ; 0x01 - Sanctuary
|02D938| dw $1041 ; 0x02 - Prison
|02D93A| dw $0A70 ; 0x03 - Uncle
|02D93C| dw $0A8F ; 0x04 - Throne
|02D93E| dw $1EF8 ; 0x05 - Old man cave
|02D940| dw $1D98 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to 22
.x_coordinate
|02D942| dw $0978 ; 0x00 - Link's house
|02D944| dw $04F8 ; 0x01 - Sanctuary
|02D946| dw $0160 ; 0x02 - Prison
|02D948| dw $0B06 ; 0x03 - Uncle
|02D94A| dw $02F8 ; 0x04 - Throne
|02D94C| dw $01A8 ; 0x05 - Old man cave
|02D94E| dw $0878 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to $0618, increments twice, writes to $061A
.camera_trigger_y
|02D950| dw $017F ; 0x00 - Link's house
|02D952| dw $00A7 ; 0x01 - Sanctuary
|02D954| dw $0083 ; 0x02 - Prison
|02D956| dw $007B ; 0x03 - Uncle
|02D958| dw $009A ; 0x04 - Throne
|02D95A| dw $0103 ; 0x05 - Old man cave
|02D95C| dw $0187 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to $061C, increments twice, writes to $061E
.camera_trigger_x
|02D95E| dw $017F ; 0x00 - Link's house
|02D960| dw $00FF ; 0x01 - Sanctuary
|02D962| dw $0167 ; 0x02 - Prison
|02D964| dw $010D ; 0x03 - Uncle
|02D966| dw $00FF ; 0x04 - Throne
|02D968| dw $017F ; 0x05 - Old man cave
|02D96A| dw $007F ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to $0AA1
.main_GFX
|02D96C| db $03 ; 0x00 - Link's house
|02D96D| db $04 ; 0x01 - Sanctuary
|02D96E| db $04 ; 0x02 - Prison
|02D96F| db $01 ; 0x03 - Uncle
|02D970| db $04 ; 0x04 - Throne
|02D971| db $06 ; 0x05 - Old man cave
|02D972| db $14 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to $A4
.floor
|02D973| db $00 ; 0x00 - Link's house
|02D974| db $00 ; 0x01 - Sanctuary
|02D975| db $FD ; 0x02 - Prison
|02D976| db $FF ; 0x03 - Uncle
|02D977| db $01 ; 0x04 - Throne
|02D978| db $00 ; 0x05 - Old man cave
|02D979| db $00 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to $040C
.dungeon_id
|02D97A| db $FF ; 0x00 - Link's house
|02D97B| db $00 ; 0x01 - Sanctuary
|02D97C| db $02 ; 0x02 - Prison
|02D97D| db $FF ; 0x03 - Uncle
|02D97E| db $02 ; 0x04 - Throne
|02D97F| db $FF ; 0x05 - Old man cave
|02D980| db $FF ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes upper nibble to $EE
; writes lower nibble to $0476
.layer
|02D981| db $00 ; 0x00 - Link's house
|02D982| db $00 ; 0x01 - Sanctuary
|02D983| db $00 ; 0x02 - Prison
|02D984| db $01 ; 0x03 - Uncle
|02D985| db $00 ; 0x04 - Throne
|02D986| db $00 ; 0x05 - Old man cave
|02D987| db $01 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes upper nibble to $A6
; writes lower nibble to $A7
.camera_scroll_controller
|02D988| db $00 ; 0x00 - Link's house
|02D989| db $22 ; 0x01 - Sanctuary
|02D98A| db $20 ; 0x02 - Prison
|02D98B| db $20 ; 0x03 - Uncle
|02D98C| db $22 ; 0x04 - Throne
|02D98D| db $22 ; 0x05 - Old man cave
|02D98E| db $02 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes upper nibble to $A9
; writes lower nibble to $AA
.quadrant
|02D98F| db $02 ; 0x00 - Link's house
|02D990| db $00 ; 0x01 - Sanctuary
|02D991| db $10 ; 0x02 - Prison
|02D992| db $10 ; 0x03 - Uncle
|02D993| db $00 ; 0x04 - Throne
|02D994| db $10 ; 0x05 - Old man cave
|02D995| db $02 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to $0696
.overworld_door_tilemap
|02D996| dw $0816 ; 0x00 - Link's house
|02D998| dw $0000 ; 0x01 - Sanctuary
|02D99A| dw $0000 ; 0x02 - Prison
|02D99C| dw $0000 ; 0x03 - Uncle
|02D99E| dw $0000 ; 0x04 - Throne
|02D9A0| dw $0000 ; 0x05 - Old man cave
|02D9A2| dw $0000 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to $010E
.entrance_id
|02D9A4| dw $0000 ; 0x00 - Link's house
|02D9A6| dw $0002 ; 0x01 - Sanctuary
|02D9A8| dw $0002 ; 0x02 - Prison
|02D9AA| dw $0032 ; 0x03 - Uncle
|02D9AC| dw $0004 ; 0x04 - Throne
|02D9AE| dw $0006 ; 0x05 - Old man cave
|02D9B0| dw $0030 ; 0x06 - Old man home

;---------------------------------------------------------------------------------------------------

; writes to $0132
.song
|02D9B2| db $07 ; 0x00 - Link's house - SONG 07
|02D9B3| db $14 ; 0x01 - Sanctuary    - SONG 14
|02D9B4| db $10 ; 0x02 - Prison       - SONG 10
|02D9B5| db $03 ; 0x03 - Uncle        - SONG 03
|02D9B6| db $10 ; 0x04 - Throne       - SONG 10
|02D9B7| db $12 ; 0x05 - Old man cave - SONG 12
|02D9B8| db $12 ; 0x06 - Old man home - SONG 12

;===================================================================================================

LoadSpawnEntrance:
|02D9B9| LDA.l $7EF3C8
|02D9BD| AND.w #$00FF
|02D9C0| ASL A
|02D9C1| TAX

|02D9C2| ASL A
|02D9C3| ASL A
|02D9C4| TAY

|02D9C5| LDA.w SpawnPointData.entrance_id,X
|02D9C8| STA.w $010E

|02D9CB| LDA.w SpawnPointData.room_id,X
|02D9CE| STA.b $A0
|02D9D0| STA.w $048E

|02D9D3| LDA.w SpawnPointData.vertical_scroll,X
|02D9D6| STA.b $E8
|02D9D8| STA.b $E6
|02D9DA| STA.w $0122
|02D9DD| STA.w $0124

|02D9E0| LDA.w SpawnPointData.horizontal_scroll,X
|02D9E3| STA.b $E2
|02D9E5| STA.b $E0
|02D9E7| STA.w $011E
|02D9EA| STA.w $0120

|02D9ED| LDA.l $7EF3C5
|02D9F1| BEQ .skip_coordinates

|02D9F3| LDA.w SpawnPointData.y_coordinate,X
|02D9F6| STA.b $20

|02D9F8| LDA.w SpawnPointData.x_coordinate,X
|02D9FB| STA.b $22

;---------------------------------------------------------------------------------------------------

.skip_coordinates
|02D9FD| LDA.w SpawnPointData.camera_trigger_y,X
|02DA00| STA.w $0618

|02DA03| INC A
|02DA04| INC A
|02DA05| STA.w $061A

|02DA08| LDA.w SpawnPointData.camera_trigger_x,X
|02DA0B| STA.w $061C

|02DA0E| INC A
|02DA0F| INC A
|02DA10| STA.w $061E

|02DA13| LDA.w #$01F8
|02DA16| STA.b $EC

|02DA18| LDA.w SpawnPointData.overworld_door_tilemap,X
|02DA1B| STA.w $0696

|02DA1E| LDA.w #$0000
|02DA21| STA.w $0610

|02DA24| LDA.w #$0110
|02DA27| STA.w $0612

|02DA2A| LDA.w #$0000
|02DA2D| STA.w $0614

|02DA30| LDA.w #$0100
|02DA33| STA.w $0616

;---------------------------------------------------------------------------------------------------

|02DA36| LDA.l $7EF3C8
|02DA3A| AND.w #$00FF
|02DA3D| TAX

|02DA3E| SEP #$20

|02DA40| LDA.w SpawnPointData.camera_scroll_boundaries+0,Y
|02DA43| STA.w $0601

|02DA46| LDA.w SpawnPointData.camera_scroll_boundaries+1,Y
|02DA49| STA.w $0603

|02DA4C| LDA.w SpawnPointData.camera_scroll_boundaries+2,Y
|02DA4F| STA.w $0605

|02DA52| LDA.w SpawnPointData.camera_scroll_boundaries+3,Y
|02DA55| STA.w $0607

|02DA58| LDA.w SpawnPointData.camera_scroll_boundaries+4,Y
|02DA5B| STA.w $0609

|02DA5E| LDA.w SpawnPointData.camera_scroll_boundaries+5,Y
|02DA61| STA.w $060B

|02DA64| LDA.w SpawnPointData.camera_scroll_boundaries+6,Y
|02DA67| STA.w $060D

|02DA6A| LDA.w SpawnPointData.camera_scroll_boundaries+7,Y
|02DA6D| STA.w $060F

|02DA70| STZ.w $0600
|02DA73| STZ.w $0602

|02DA76| LDA.b #$10
|02DA78| STA.w $0604
|02DA7B| STA.w $0606

|02DA7E| STZ.w $0608
|02DA81| STZ.w $060A
|02DA84| STZ.w $060C
|02DA87| STZ.w $060E

;---------------------------------------------------------------------------------------------------

|02DA8A| LDA.b #$02
|02DA8C| STA.b $2F

|02DA8E| LDA.w SpawnPointData.main_GFX,X
|02DA91| STA.w $0AA1

|02DA94| LDA.w SpawnPointData.floor,X
|02DA97| STA.b $A4

|02DA99| LDA.w SpawnPointData.dungeon_id,X
|02DA9C| STA.w $040C

|02DA9F| STZ.b $6C

|02DAA1| LDA.w SpawnPointData.layer,X
|02DAA4| LSR A
|02DAA5| LSR A
|02DAA6| LSR A
|02DAA7| LSR A
|02DAA8| STA.b $EE

|02DAAA| LDA.w SpawnPointData.layer,X
|02DAAD| AND.b #$0F
|02DAAF| STA.w $0476

|02DAB2| LDA.w SpawnPointData.camera_scroll_controller,X
|02DAB5| LSR A
|02DAB6| LSR A
|02DAB7| LSR A
|02DAB8| LSR A
|02DAB9| STA.b $A6

|02DABB| LDA.w SpawnPointData.camera_scroll_controller,X
|02DABE| AND.b #$0F
|02DAC0| STA.b $A7

|02DAC2| LDA.w SpawnPointData.quadrant,X
|02DAC5| LSR A
|02DAC6| LSR A
|02DAC7| LSR A
|02DAC8| LSR A
|02DAC9| STA.b $A9

|02DACB| LDA.w SpawnPointData.quadrant,X
|02DACE| AND.b #$0F
|02DAD0| STA.b $AA

;---------------------------------------------------------------------------------------------------

|02DAD2| LDA.w SpawnPointData.song,X
|02DAD5| STA.w $0132

|02DAD8| CPX.w #$0000 ; is this uncle entrance?
|02DADB| BNE .dont_lower_song_volume

|02DADD| LDA.l $7EF3C5 ; are we in pre-uncle game state?
|02DAE1| BNE .dont_lower_song_volume

|02DAE3| LDA.b #$FF ; SONG FF - transfer
|02DAE5| STA.w $0132

.dont_lower_song_volume
|02DAE8| STZ.w $04AA

|02DAEB| JMP.w PullBlocksTorchesFromROM

;===================================================================================================
; TODO NAME
;===================================================================================================
UnderworldExitData:

.room_id
|02DAEE| dw $0104 ; 0x00
|02DAF0| dw $0012 ; 0x01
|02DAF2| dw $0060 ; 0x02
|02DAF4| dw $0061 ; 0x03
|02DAF6| dw $0062 ; 0x04
|02DAF8| dw $FFFF ; 0x05
|02DAFA| dw $0020 ; 0x06
|02DAFC| dw $00F0 ; 0x07
|02DAFE| dw $00F1 ; 0x08
|02DB00| dw $00C9 ; 0x09
|02DB02| dw $0084 ; 0x0A
|02DB04| dw $0085 ; 0x0B
|02DB06| dw $0083 ; 0x0C
|02DB08| dw $0063 ; 0x0D
|02DB0A| dw $00F2 ; 0x0E
|02DB0C| dw $00F3 ; 0x0F
|02DB0E| dw $00F4 ; 0x10
|02DB10| dw $00F5 ; 0x11
|02DB12| dw $00E3 ; 0x12
|02DB14| dw $00E2 ; 0x13
|02DB16| dw $00F8 ; 0x14
|02DB18| dw $00E8 ; 0x15
|02DB1A| dw $0023 ; 0x16
|02DB1C| dw $00FB ; 0x17
|02DB1E| dw $00EB ; 0x18
|02DB20| dw $00D5 ; 0x19
|02DB22| dw $0024 ; 0x1A
|02DB24| dw $00FD ; 0x1B
|02DB26| dw $00ED ; 0x1C
|02DB28| dw $00FE ; 0x1D
|02DB2A| dw $00EE ; 0x1E
|02DB2C| dw $00FF ; 0x1F
|02DB2E| dw $00EF ; 0x20
|02DB30| dw $00DF ; 0x21
|02DB32| dw $00F9 ; 0x22
|02DB34| dw $00FA ; 0x23
|02DB36| dw $00EA ; 0x24
|02DB38| dw $00E0 ; 0x25
|02DB3A| dw $0028 ; 0x26
|02DB3C| dw $004A ; 0x27
|02DB3E| dw $0098 ; 0x28
|02DB40| dw $0056 ; 0x29
|02DB42| dw $0057 ; 0x2A
|02DB44| dw $0058 ; 0x2B
|02DB46| dw $0059 ; 0x2C
|02DB48| dw $0077 ; 0x2D
|02DB4A| dw $000E ; 0x2E
|02DB4C| dw $00E6 ; 0x2F
|02DB4E| dw $00E7 ; 0x30
|02DB50| dw $00E4 ; 0x31
|02DB52| dw $00E5 ; 0x32
|02DB54| dw $0055 ; 0x33
|02DB56| dw $00D6 ; 0x34
|02DB58| dw $00DB ; 0x35
|02DB5A| dw $00E1 ; 0x36
|02DB5C| dw $0010 ; 0x37
|02DB5E| dw $000C ; 0x38
|02DB60| dw $0008 ; 0x39
|02DB62| dw $002F ; 0x3A
|02DB64| dw $003C ; 0x3B
|02DB66| dw $002C ; 0x3C
|02DB68| dw $0003 ; 0x3D
|02DB6A| dw $1000 ; 0x3E
|02DB6C| dw $1002 ; 0x3F
|02DB6E| dw $1004 ; 0x40
|02DB70| dw $1006 ; 0x41
|02DB72| dw $1008 ; 0x42
|02DB74| dw $100A ; 0x43
|02DB76| dw $100C ; 0x44
|02DB78| dw $100E ; 0x45
|02DB7A| dw $1010 ; 0x46
|02DB7C| dw $1012 ; 0x47
|02DB7E| dw $1014 ; 0x48
|02DB80| dw $1016 ; 0x49
|02DB82| dw $1018 ; 0x4A
|02DB84| dw $0180 ; 0x4B
|02DB86| dw $0181 ; 0x4C
|02DB88| dw $0182 ; 0x4D
|02DB8A| dw $0189 ; 0x4E

;---------------------------------------------------------------------------------------------------

.overworld_id
|02DB8C| db $2C ; 0x00
|02DB8D| db $13 ; 0x01
|02DB8E| db $1B ; 0x02
|02DB8F| db $1B ; 0x03
|02DB90| db $1B ; 0x04
|02DB91| db $0F ; 0x05
|02DB92| db $5B ; 0x06
|02DB93| db $0A ; 0x07
|02DB94| db $03 ; 0x08
|02DB95| db $1E ; 0x09
|02DB96| db $30 ; 0x0A
|02DB97| db $30 ; 0x0B
|02DB98| db $30 ; 0x0C
|02DB99| db $30 ; 0x0D
|02DB9A| db $18 ; 0x0E
|02DB9B| db $18 ; 0x0F
|02DB9C| db $28 ; 0x10
|02DB9D| db $29 ; 0x11
|02DB9E| db $22 ; 0x12
|02DB9F| db $02 ; 0x13
|02DBA0| db $45 ; 0x14
|02DBA1| db $45 ; 0x15
|02DBA2| db $45 ; 0x16
|02DBA3| db $4A ; 0x17
|02DBA4| db $4A ; 0x18
|02DBA5| db $45 ; 0x19
|02DBA6| db $45 ; 0x1A
|02DBA7| db $05 ; 0x1B
|02DBA8| db $05 ; 0x1C
|02DBA9| db $05 ; 0x1D
|02DBAA| db $05 ; 0x1E
|02DBAB| db $05 ; 0x1F
|02DBAC| db $05 ; 0x20
|02DBAD| db $05 ; 0x21
|02DBAE| db $03 ; 0x22
|02DBAF| db $03 ; 0x23
|02DBB0| db $03 ; 0x24
|02DBB1| db $1B ; 0x25
|02DBB2| db $7B ; 0x26
|02DBB3| db $5E ; 0x27
|02DBB4| db $70 ; 0x28
|02DBB5| db $40 ; 0x29
|02DBB6| db $40 ; 0x2A
|02DBB7| db $40 ; 0x2B
|02DBB8| db $40 ; 0x2C
|02DBB9| db $03 ; 0x2D
|02DBBA| db $75 ; 0x2E
|02DBBB| db $0A ; 0x2F
|02DBBC| db $03 ; 0x30
|02DBBD| db $03 ; 0x31
|02DBBE| db $03 ; 0x32
|02DBBF| db $1B ; 0x33
|02DBC0| db $47 ; 0x34
|02DBC1| db $58 ; 0x35
|02DBC2| db $00 ; 0x36
|02DBC3| db $5B ; 0x37
|02DBC4| db $43 ; 0x38
|02DBC5| db $15 ; 0x39
|02DBC6| db $18 ; 0x3A
|02DBC7| db $45 ; 0x3B
|02DBC8| db $45 ; 0x3C
|02DBC9| db $2C ; 0x3D
|02DBCA| db $1B ; 0x3E
|02DBCB| db $18 ; 0x3F
|02DBCC| db $03 ; 0x40
|02DBCD| db $2C ; 0x41
|02DBCE| db $05 ; 0x42
|02DBCF| db $02 ; 0x43
|02DBD0| db $1E ; 0x44
|02DBD1| db $18 ; 0x45
|02DBD2| db $81 ; 0x46
|02DBD3| db $30 ; 0x47
|02DBD4| db $16 ; 0x48
|02DBD5| db $2A ; 0x49
|02DBD6| db $00 ; 0x4A
|02DBD7| db $80 ; 0x4B
|02DBD8| db $80 ; 0x4C
|02DBD9| db $81 ; 0x4D
|02DBDA| db $88 ; 0x4E

;---------------------------------------------------------------------------------------------------

.exit_vram_addr
|02DBDB| dw $0506 ; 0x00
|02DBDD| dw $001C ; 0x01
|02DBDF| dw $0016 ; 0x02
|02DBE1| dw $0530 ; 0x03
|02DBE3| dw $004A ; 0x04
|02DBE5| dw $001C ; 0x05
|02DBE7| dw $002E ; 0x06
|02DBE9| dw $03A0 ; 0x07
|02DBEB| dw $1402 ; 0x08
|02DBED| dw $005A ; 0x09
|02DBEF| dw $0314 ; 0x0A
|02DBF1| dw $02A8 ; 0x0B
|02DBF3| dw $0280 ; 0x0C
|02DBF5| dw $0016 ; 0x0D
|02DBF7| dw $02BC ; 0x0E
|02DBF9| dw $02C4 ; 0x0F
|02DBFB| dw $08A0 ; 0x10
|02DBFD| dw $0880 ; 0x11
|02DBFF| dw $0412 ; 0x12
|02DC01| dw $0118 ; 0x13
|02DC03| dw $0EE0 ; 0x14
|02DC05| dw $0460 ; 0x15
|02DC07| dw $07CA ; 0x16
|02DC09| dw $03A0 ; 0x17
|02DC0B| dw $00A0 ; 0x18
|02DC0D| dw $0AD4 ; 0x19
|02DC0F| dw $07E0 ; 0x1A
|02DC11| dw $0DD4 ; 0x1B
|02DC13| dw $0AD4 ; 0x1C
|02DC15| dw $0CCA ; 0x1D
|02DC17| dw $07C8 ; 0x1E
|02DC19| dw $0EE0 ; 0x1F
|02DC1B| dw $17E0 ; 0x20
|02DC1D| dw $0460 ; 0x21
|02DC1F| dw $0D9C ; 0x22
|02DC21| dw $0EAC ; 0x23
|02DC23| dw $092C ; 0x24
|02DC25| dw $0032 ; 0x25
|02DC27| dw $049E ; 0x26
|02DC29| dw $005A ; 0x27
|02DC2B| dw $0414 ; 0x28
|02DC2D| dw $0C8E ; 0x29
|02DC2F| dw $0EB8 ; 0x2A
|02DC31| dw $0F4C ; 0x2B
|02DC33| dw $0282 ; 0x2C
|02DC35| dw $0050 ; 0x2D
|02DC37| dw $0BC6 ; 0x2E
|02DC39| dw $00A0 ; 0x2F
|02DC3B| dw $0D82 ; 0x30
|02DC3D| dw $181A ; 0x31
|02DC3F| dw $10C6 ; 0x32
|02DC41| dw $044A ; 0x33
|02DC43| dw $0712 ; 0x34
|02DC45| dw $0B2E ; 0x35
|02DC47| dw $0F4E ; 0x36
|02DC49| dw $0B0E ; 0x37
|02DC4B| dw $0052 ; 0x38
|02DC4D| dw $0088 ; 0x39
|02DC4F| dw $0386 ; 0x3A
|02DC51| dw $04DA ; 0x3B
|02DC53| dw $004C ; 0x3C
|02DC55| dw $0506 ; 0x3D
|02DC57| dw $1230 ; 0x3E
|02DC59| dw $0448 ; 0x3F
|02DC5B| dw $0050 ; 0x40
|02DC5D| dw $009A ; 0x41
|02DC5F| dw $034E ; 0x42
|02DC61| dw $049A ; 0x43
|02DC63| dw $07C0 ; 0x44
|02DC65| dw $1100 ; 0x45
|02DC67| dw $0040 ; 0x46
|02DC69| dw $0916 ; 0x47
|02DC6B| dw $000A ; 0x48
|02DC6D| dw $0910 ; 0x49
|02DC6F| dw $0A3A ; 0x4A
|02DC71| dw $0000 ; 0x4B
|02DC73| dw $0020 ; 0x4C
|02DC75| dw $1782 ; 0x4D
|02DC77| dw $0000 ; 0x4E

;---------------------------------------------------------------------------------------------------

.vertical_scroll
|02DC79| dw $0A9A ; 0x00
|02DC7B| dw $0400 ; 0x01
|02DC7D| dw $0600 ; 0x02
|02DC7F| dw $0692 ; 0x03
|02DC81| dw $0600 ; 0x04
|02DC83| dw $0200 ; 0x05
|02DC85| dw $0600 ; 0x06
|02DC87| dw $0264 ; 0x07
|02DC89| dw $0294 ; 0x08
|02DC8B| dw $0600 ; 0x09
|02DC8D| dw $0C56 ; 0x0A
|02DC8F| dw $0C4A ; 0x0B
|02DC91| dw $0C46 ; 0x0C
|02DC93| dw $0C00 ; 0x0D
|02DC95| dw $064C ; 0x0E
|02DC97| dw $064A ; 0x0F
|02DC99| dw $0B06 ; 0x10
|02DC9B| dw $0B07 ; 0x11
|02DC9D| dw $087A ; 0x12
|02DC9F| dw $0015 ; 0x13
|02DCA1| dw $01E4 ; 0x14
|02DCA3| dw $0093 ; 0x15
|02DCA5| dw $0103 ; 0x16
|02DCA7| dw $0263 ; 0x17
|02DCA9| dw $020A ; 0x18
|02DCAB| dw $0164 ; 0x19
|02DCAD| dw $0103 ; 0x1A
|02DCAF| dw $01C4 ; 0x1B
|02DCB1| dw $0163 ; 0x1C
|02DCB3| dw $01A3 ; 0x1D
|02DCB5| dw $0108 ; 0x1E
|02DCB7| dw $01E3 ; 0x1F
|02DCB9| dw $0304 ; 0x20
|02DCBB| dw $0093 ; 0x21
|02DCBD| dw $01C3 ; 0x22
|02DCBF| dw $01E3 ; 0x23
|02DCC1| dw $0133 ; 0x24
|02DCC3| dw $0600 ; 0x25
|02DCC5| dw $0E8C ; 0x26
|02DCC7| dw $0600 ; 0x27
|02DCC9| dw $0C79 ; 0x28
|02DCCB| dw $01A6 ; 0x29
|02DCCD| dw $01E6 ; 0x2A
|02DCCF| dw $01F6 ; 0x2B
|02DCD1| dw $0066 ; 0x2C
|02DCD3| dw $0014 ; 0x2D
|02DCD5| dw $0D6A ; 0x2E
|02DCD7| dw $0205 ; 0x2F
|02DCD9| dw $01C4 ; 0x30
|02DCDB| dw $031E ; 0x31
|02DCDD| dw $0224 ; 0x32
|02DCDF| dw $067A ; 0x33
|02DCE1| dw $00DA ; 0x34
|02DCE3| dw $075A ; 0x35
|02DCE5| dw $01F6 ; 0x36
|02DCE7| dw $075A ; 0x37
|02DCE9| dw $0000 ; 0x38
|02DCEB| dw $0400 ; 0x39
|02DCED| dw $0665 ; 0x3A
|02DCEF| dw $00A3 ; 0x3B
|02DCF1| dw $0000 ; 0x3C
|02DCF3| dw $0A9A ; 0x3D
|02DCF5| dw $0842 ; 0x3E
|02DCF7| dw $0674 ; 0x3F
|02DCF9| dw $0000 ; 0x40
|02DCFB| dw $0A0B ; 0x41
|02DCFD| dw $005C ; 0x42
|02DCFF| dw $0089 ; 0x43
|02DD01| dw $06E4 ; 0x44
|02DD03| dw $0826 ; 0x45
|02DD05| dw $0010 ; 0x46
|02DD07| dw $0D20 ; 0x47
|02DD09| dw $0400 ; 0x48
|02DD0B| dw $0B1E ; 0x49
|02DD0D| dw $016A ; 0x4A
|02DD0F| dw $0120 ; 0x4B
|02DD11| dw $0000 ; 0x4C
|02DD13| dw $0320 ; 0x4D
|02DD15| dw $0000 ; 0x4E

;---------------------------------------------------------------------------------------------------

.horizontal_scroll
|02DD17| dw $0832 ; 0x00
|02DD19| dw $06DE ; 0x01
|02DD1B| dw $06AE ; 0x02
|02DD1D| dw $0784 ; 0x03
|02DD1F| dw $0856 ; 0x04
|02DD21| dw $0EE2 ; 0x05
|02DD23| dw $0778 ; 0x06
|02DD25| dw $0500 ; 0x07
|02DD27| dw $0604 ; 0x08
|02DD29| dw $0ED6 ; 0x09
|02DD2B| dw $00A6 ; 0x0A
|02DD2D| dw $0142 ; 0x0B
|02DD2F| dw $0003 ; 0x0C
|02DD31| dw $00A2 ; 0x0D
|02DD33| dw $01E2 ; 0x0E
|02DD35| dw $0222 ; 0x0F
|02DD37| dw $0100 ; 0x10
|02DD39| dw $0200 ; 0x11
|02DD3B| dw $048E ; 0x12
|02DD3D| dw $04C6 ; 0x13
|02DD3F| dw $0D00 ; 0x14
|02DD41| dw $0D00 ; 0x15
|02DD43| dw $0C46 ; 0x16
|02DD45| dw $0500 ; 0x17
|02DD47| dw $0500 ; 0x18
|02DD49| dw $0CA6 ; 0x19
|02DD4B| dw $0D00 ; 0x1A
|02DD4D| dw $0CA6 ; 0x1B
|02DD4F| dw $0CA6 ; 0x1C
|02DD51| dw $0C56 ; 0x1D
|02DD53| dw $0C46 ; 0x1E
|02DD55| dw $0D00 ; 0x1F
|02DD57| dw $0D00 ; 0x20
|02DD59| dw $0D00 ; 0x21
|02DD5B| dw $06D4 ; 0x22
|02DD5D| dw $0754 ; 0x23
|02DD5F| dw $0754 ; 0x24
|02DD61| dw $0784 ; 0x25
|02DD63| dw $06F2 ; 0x26
|02DD65| dw $0ED6 ; 0x27
|02DD67| dw $00A6 ; 0x28
|02DD69| dw $0062 ; 0x29
|02DD6B| dw $01C2 ; 0x2A
|02DD6D| dw $0262 ; 0x2B
|02DD6F| dw $0016 ; 0x2C
|02DD71| dw $087C ; 0x2D
|02DD73| dw $0C3E ; 0x2E
|02DD75| dw $0500 ; 0x2F
|02DD77| dw $0600 ; 0x30
|02DD79| dw $06B4 ; 0x31
|02DD7B| dw $0814 ; 0x32
|02DD7D| dw $0854 ; 0x33
|02DD7F| dw $0E96 ; 0x34
|02DD81| dw $0176 ; 0x35
|02DD83| dw $0262 ; 0x36
|02DD85| dw $0674 ; 0x37
|02DD87| dw $0884 ; 0x38
|02DD89| dw $0A36 ; 0x39
|02DD8B| dw $0032 ; 0x3A
|02DD8D| dw $0CD6 ; 0x3B
|02DD8F| dw $0C56 ; 0x3C
|02DD91| dw $0832 ; 0x3D
|02DD93| dw $077F ; 0x3E
|02DD95| dw $024B ; 0x3F
|02DD97| dw $0878 ; 0x40
|02DD99| dw $08D7 ; 0x41
|02DD9B| dw $0C6D ; 0x42
|02DD9D| dw $04CF ; 0x43
|02DD9F| dw $0DFE ; 0x44
|02DDA1| dw $0001 ; 0x45
|02DDA3| dw $0401 ; 0x46
|02DDA5| dw $00AA ; 0x47
|02DDA7| dw $0C57 ; 0x48
|02DDA9| dw $0478 ; 0x49
|02DDAB| dw $01CF ; 0x4A
|02DDAD| dw $0000 ; 0x4B
|02DDAF| dw $0100 ; 0x4C
|02DDB1| dw $021E ; 0x4D
|02DDB3| dw $0000 ; 0x4E

;---------------------------------------------------------------------------------------------------

.y_coordinate
|02DDB5| dw $0AE8 ; 0x00
|02DDB7| dw $0414 ; 0x01
|02DDB9| dw $0604 ; 0x02
|02DDBB| dw $06CC ; 0x03
|02DDBD| dw $0604 ; 0x04
|02DDBF| dw $0203 ; 0x05
|02DDC1| dw $065C ; 0x06
|02DDC3| dw $02B8 ; 0x07
|02DDC5| dw $02E8 ; 0x08
|02DDC7| dw $0618 ; 0x09
|02DDC9| dw $0CA8 ; 0x0A
|02DDCB| dw $0C98 ; 0x0B
|02DDCD| dw $0C98 ; 0x0C
|02DDCF| dw $0C28 ; 0x0D
|02DDD1| dw $0698 ; 0x0E
|02DDD3| dw $0698 ; 0x0F
|02DDD5| dw $0B58 ; 0x10
|02DDD7| dw $0B58 ; 0x11
|02DDD9| dw $08C8 ; 0x12
|02DDDB| dw $0067 ; 0x13
|02DDDD| dw $0238 ; 0x14
|02DDDF| dw $00E7 ; 0x15
|02DDE1| dw $0157 ; 0x16
|02DDE3| dw $02B7 ; 0x17
|02DDE5| dw $0258 ; 0x18
|02DDE7| dw $01B8 ; 0x19
|02DDE9| dw $0157 ; 0x1A
|02DDEB| dw $0218 ; 0x1B
|02DDED| dw $01B7 ; 0x1C
|02DDEF| dw $01F7 ; 0x1D
|02DDF1| dw $0158 ; 0x1E
|02DDF3| dw $0237 ; 0x1F
|02DDF5| dw $0358 ; 0x20
|02DDF7| dw $00E7 ; 0x21
|02DDF9| dw $0217 ; 0x22
|02DDFB| dw $0237 ; 0x23
|02DDFD| dw $0187 ; 0x24
|02DDFF| dw $0634 ; 0x25
|02DE01| dw $0ED8 ; 0x26
|02DE03| dw $0628 ; 0x27
|02DE05| dw $0CC7 ; 0x28
|02DE07| dw $01F8 ; 0x29
|02DE09| dw $0238 ; 0x2A
|02DE0B| dw $0248 ; 0x2B
|02DE0D| dw $00B8 ; 0x2C
|02DE0F| dw $0068 ; 0x2D
|02DE11| dw $0DB8 ; 0x2E
|02DE13| dw $0257 ; 0x2F
|02DE15| dw $0218 ; 0x30
|02DE17| dw $03A7 ; 0x31
|02DE19| dw $0278 ; 0x32
|02DE1B| dw $06C8 ; 0x33
|02DE1D| dw $0128 ; 0x34
|02DE1F| dw $07A8 ; 0x35
|02DE21| dw $0248 ; 0x36
|02DE23| dw $07A8 ; 0x37
|02DE25| dw $0028 ; 0x38
|02DE27| dw $0448 ; 0x39
|02DE29| dw $06B7 ; 0x3A
|02DE2B| dw $0107 ; 0x3B
|02DE2D| dw $0038 ; 0x3C
|02DE2F| dw $0AE8 ; 0x3D
|02DE31| dw $0890 ; 0x3E
|02DE33| dw $06C2 ; 0x3F
|02DE35| dw $004D ; 0x40
|02DE37| dw $0A59 ; 0x41
|02DE39| dw $00AA ; 0x42
|02DE3B| dw $00DB ; 0x43
|02DE3D| dw $0732 ; 0x44
|02DE3F| dw $0874 ; 0x45
|02DE41| dw $006E ; 0x46
|02DE43| dw $0D72 ; 0x47
|02DE45| dw $044D ; 0x48
|02DE47| dw $0B72 ; 0x49
|02DE49| dw $01BE ; 0x4A
|02DE4B| dw $01E8 ; 0x4B
|02DE4D| dw $0080 ; 0x4C
|02DE4F| dw $03E8 ; 0x4D
|02DE51| dw $0100 ; 0x4E

;---------------------------------------------------------------------------------------------------

.x_coordinate
|02DE53| dw $08B8 ; 0x00
|02DE55| dw $0758 ; 0x01
|02DE57| dw $0728 ; 0x02
|02DE59| dw $07F8 ; 0x03
|02DE5B| dw $08C8 ; 0x04
|02DE5D| dw $0F50 ; 0x05
|02DE5F| dw $07F0 ; 0x06
|02DE61| dw $05A8 ; 0x07
|02DE63| dw $0678 ; 0x08
|02DE65| dw $0F50 ; 0x09
|02DE67| dw $0128 ; 0x0A
|02DE69| dw $01C8 ; 0x0B
|02DE6B| dw $0088 ; 0x0C
|02DE6D| dw $0128 ; 0x0D
|02DE6F| dw $0268 ; 0x0E
|02DE71| dw $02A8 ; 0x0F
|02DE73| dw $01B8 ; 0x10
|02DE75| dw $0238 ; 0x11
|02DE77| dw $0508 ; 0x12
|02DE79| dw $0548 ; 0x13
|02DE7B| dw $0D78 ; 0x14
|02DE7D| dw $0DB8 ; 0x15
|02DE7F| dw $0CB8 ; 0x16
|02DE81| dw $05A8 ; 0x17
|02DE83| dw $05B8 ; 0x18
|02DE85| dw $0D18 ; 0x19
|02DE87| dw $0D78 ; 0x1A
|02DE89| dw $0D18 ; 0x1B
|02DE8B| dw $0D18 ; 0x1C
|02DE8D| dw $0CC8 ; 0x1D
|02DE8F| dw $0CB8 ; 0x1E
|02DE91| dw $0DA8 ; 0x1F
|02DE93| dw $0DC8 ; 0x20
|02DE95| dw $0DB8 ; 0x21
|02DE97| dw $0748 ; 0x22
|02DE99| dw $07C8 ; 0x23
|02DE9B| dw $07C8 ; 0x24
|02DE9D| dw $07F8 ; 0x25
|02DE9F| dw $0778 ; 0x26
|02DEA1| dw $0F50 ; 0x27
|02DEA3| dw $0128 ; 0x28
|02DEA5| dw $00E8 ; 0x29
|02DEA7| dw $0248 ; 0x2A
|02DEA9| dw $02E8 ; 0x2B
|02DEAB| dw $0098 ; 0x2C
|02DEAD| dw $08F0 ; 0x2D
|02DEAF| dw $0CB8 ; 0x2E
|02DEB1| dw $05B8 ; 0x2F
|02DEB3| dw $0648 ; 0x30
|02DEB5| dw $0728 ; 0x31
|02DEB7| dw $0888 ; 0x32
|02DEB9| dw $08C8 ; 0x33
|02DEBB| dw $0F08 ; 0x34
|02DEBD| dw $01F8 ; 0x35
|02DEBF| dw $02E8 ; 0x36
|02DEC1| dw $06E8 ; 0x37
|02DEC3| dw $08F8 ; 0x38
|02DEC5| dw $0AA8 ; 0x39
|02DEC7| dw $00B8 ; 0x3A
|02DEC9| dw $0D48 ; 0x3B
|02DECB| dw $0CC8 ; 0x3C
|02DECD| dw $08B8 ; 0x3D
|02DECF| dw $07F3 ; 0x3E
|02DED1| dw $02CD ; 0x3F
|02DED3| dw $08E6 ; 0x40
|02DED5| dw $094F ; 0x41
|02DED7| dw $0CDF ; 0x42
|02DED9| dw $0551 ; 0x43
|02DEDB| dw $0E7C ; 0x44
|02DEDD| dw $0083 ; 0x45
|02DEDF| dw $047D ; 0x46
|02DEE1| dw $0130 ; 0x47
|02DEE3| dw $0CD1 ; 0x48
|02DEE5| dw $04FE ; 0x49
|02DEE7| dw $0255 ; 0x4A
|02DEE9| dw $0080 ; 0x4B
|02DEEB| dw $01F0 ; 0x4C
|02DEED| dw $029E ; 0x4D
|02DEEF| dw $0080 ; 0x4E

;---------------------------------------------------------------------------------------------------

.camera_trigger_y
|02DEF1| dw $0B07 ; 0x00
|02DEF3| dw $046D ; 0x01
|02DEF5| dw $066D ; 0x02
|02DEF7| dw $06FF ; 0x03
|02DEF9| dw $066D ; 0x04
|02DEFB| dw $026D ; 0x05
|02DEFD| dw $066D ; 0x06
|02DEFF| dw $02D3 ; 0x07
|02DF01| dw $0303 ; 0x08
|02DF03| dw $066D ; 0x09
|02DF05| dw $0CC3 ; 0x0A
|02DF07| dw $0CB7 ; 0x0B
|02DF09| dw $0CB3 ; 0x0C
|02DF0B| dw $0C6D ; 0x0D
|02DF0D| dw $06B9 ; 0x0E
|02DF0F| dw $06B7 ; 0x0F
|02DF11| dw $0B73 ; 0x10
|02DF13| dw $0B74 ; 0x11
|02DF15| dw $08E7 ; 0x12
|02DF17| dw $0082 ; 0x13
|02DF19| dw $0253 ; 0x14
|02DF1B| dw $0102 ; 0x15
|02DF1D| dw $0172 ; 0x16
|02DF1F| dw $02D2 ; 0x17
|02DF21| dw $0277 ; 0x18
|02DF23| dw $01D3 ; 0x19
|02DF25| dw $0172 ; 0x1A
|02DF27| dw $0233 ; 0x1B
|02DF29| dw $01D2 ; 0x1C
|02DF2B| dw $0212 ; 0x1D
|02DF2D| dw $0177 ; 0x1E
|02DF2F| dw $0252 ; 0x1F
|02DF31| dw $0373 ; 0x20
|02DF33| dw $0102 ; 0x21
|02DF35| dw $0232 ; 0x22
|02DF37| dw $0252 ; 0x23
|02DF39| dw $01A2 ; 0x24
|02DF3B| dw $066D ; 0x25
|02DF3D| dw $0EF9 ; 0x26
|02DF3F| dw $066D ; 0x27
|02DF41| dw $0CE6 ; 0x28
|02DF43| dw $0213 ; 0x29
|02DF45| dw $0253 ; 0x2A
|02DF47| dw $0263 ; 0x2B
|02DF49| dw $00D3 ; 0x2C
|02DF4B| dw $0083 ; 0x2D
|02DF4D| dw $0DD7 ; 0x2E
|02DF4F| dw $0272 ; 0x2F
|02DF51| dw $0233 ; 0x30
|02DF53| dw $038D ; 0x31
|02DF55| dw $0293 ; 0x32
|02DF57| dw $06E7 ; 0x33
|02DF59| dw $0147 ; 0x34
|02DF5B| dw $07C7 ; 0x35
|02DF5D| dw $0263 ; 0x36
|02DF5F| dw $07C7 ; 0x37
|02DF61| dw $006F ; 0x38
|02DF63| dw $046F ; 0x39
|02DF65| dw $06D2 ; 0x3A
|02DF67| dw $0112 ; 0x3B
|02DF69| dw $006F ; 0x3C
|02DF6B| dw $0B07 ; 0x3D
|02DF6D| dw $08AF ; 0x3E
|02DF6F| dw $06E1 ; 0x3F
|02DF71| dw $006D ; 0x40
|02DF73| dw $0A78 ; 0x41
|02DF75| dw $00C9 ; 0x42
|02DF77| dw $00F6 ; 0x43
|02DF79| dw $0751 ; 0x44
|02DF7B| dw $0893 ; 0x45
|02DF7D| dw $008D ; 0x46
|02DF7F| dw $0D8D ; 0x47
|02DF81| dw $046D ; 0x48
|02DF83| dw $0B8D ; 0x49
|02DF85| dw $01D9 ; 0x4A
|02DF87| dw $019D ; 0x4B
|02DF89| dw $008F ; 0x4C
|02DF8B| dw $039D ; 0x4D
|02DF8D| dw $009D ; 0x4E

;---------------------------------------------------------------------------------------------------

.camera_trigger_x
|02DF8F| dw $08BF ; 0x00
|02DF91| dw $0763 ; 0x01
|02DF93| dw $0733 ; 0x02
|02DF95| dw $0803 ; 0x03
|02DF97| dw $08D3 ; 0x04
|02DF99| dw $0F57 ; 0x05
|02DF9B| dw $07F7 ; 0x06
|02DF9D| dw $058D ; 0x07
|02DF9F| dw $0683 ; 0x08
|02DFA1| dw $0F5B ; 0x09
|02DFA3| dw $0133 ; 0x0A
|02DFA5| dw $01CF ; 0x0B
|02DFA7| dw $0090 ; 0x0C
|02DFA9| dw $012F ; 0x0D
|02DFAB| dw $026F ; 0x0E
|02DFAD| dw $02AF ; 0x0F
|02DFAF| dw $018D ; 0x10
|02DFB1| dw $028D ; 0x11
|02DFB3| dw $0513 ; 0x12
|02DFB5| dw $0553 ; 0x13
|02DFB7| dw $0D7D ; 0x14
|02DFB9| dw $0D7D ; 0x15
|02DFBB| dw $0CC3 ; 0x16
|02DFBD| dw $058D ; 0x17
|02DFBF| dw $058D ; 0x18
|02DFC1| dw $0D23 ; 0x19
|02DFC3| dw $0D7D ; 0x1A
|02DFC5| dw $0D23 ; 0x1B
|02DFC7| dw $0D23 ; 0x1C
|02DFC9| dw $0CD3 ; 0x1D
|02DFCB| dw $0CC3 ; 0x1E
|02DFCD| dw $0D7D ; 0x1F
|02DFCF| dw $0D7D ; 0x20
|02DFD1| dw $0D7D ; 0x21
|02DFD3| dw $0753 ; 0x22
|02DFD5| dw $07D3 ; 0x23
|02DFD7| dw $07D3 ; 0x24
|02DFD9| dw $0803 ; 0x25
|02DFDB| dw $077F ; 0x26
|02DFDD| dw $0F5B ; 0x27
|02DFDF| dw $0133 ; 0x28
|02DFE1| dw $00EF ; 0x29
|02DFE3| dw $024F ; 0x2A
|02DFE5| dw $02EF ; 0x2B
|02DFE7| dw $00A3 ; 0x2C
|02DFE9| dw $08FB ; 0x2D
|02DFEB| dw $0CC3 ; 0x2E
|02DFED| dw $058D ; 0x2F
|02DFEF| dw $067F ; 0x30
|02DFF1| dw $0733 ; 0x31
|02DFF3| dw $0893 ; 0x32
|02DFF5| dw $08D3 ; 0x33
|02DFF7| dw $0F13 ; 0x34
|02DFF9| dw $0203 ; 0x35
|02DFFB| dw $02EF ; 0x36
|02DFFD| dw $06F3 ; 0x37
|02DFFF| dw $0903 ; 0x38
|02E001| dw $0AB3 ; 0x39
|02E003| dw $00BF ; 0x3A
|02E005| dw $0D53 ; 0x3B
|02E007| dw $0CD3 ; 0x3C
|02E009| dw $08BF ; 0x3D
|02E00B| dw $07FE ; 0x3E
|02E00D| dw $02D8 ; 0x3F
|02E00F| dw $08ED ; 0x40
|02E011| dw $0956 ; 0x41
|02E013| dw $0CEA ; 0x42
|02E015| dw $055C ; 0x43
|02E017| dw $0E83 ; 0x44
|02E019| dw $008E ; 0x45
|02E01B| dw $0484 ; 0x46
|02E01D| dw $0137 ; 0x47
|02E01F| dw $0CDC ; 0x48
|02E021| dw $0505 ; 0x49
|02E023| dw $025C ; 0x4A
|02E025| dw $0083 ; 0x4B
|02E027| dw $018D ; 0x4C
|02E029| dw $02A1 ; 0x4D
|02E02B| dw $0083 ; 0x4E

;---------------------------------------------------------------------------------------------------

.scroll_mod_y
|02E02D| db $06 ; 0x00
|02E02E| db $00 ; 0x01
|02E02F| db $00 ; 0x02
|02E030| db $0E ; 0x03
|02E031| db $00 ; 0x04
|02E032| db $00 ; 0x05
|02E033| db $00 ; 0x06
|02E034| db $0A ; 0x07
|02E035| db $0A ; 0x08
|02E036| db $00 ; 0x09
|02E037| db $0A ; 0x0A
|02E038| db $06 ; 0x0B
|02E039| db $0A ; 0x0C
|02E03A| db $00 ; 0x0D
|02E03B| db $04 ; 0x0E
|02E03C| db $06 ; 0x0F
|02E03D| db $0A ; 0x10
|02E03E| db $09 ; 0x11
|02E03F| db $06 ; 0x12
|02E040| db $0B ; 0x13
|02E041| db $0A ; 0x14
|02E042| db $0B ; 0x15
|02E043| db $0B ; 0x16
|02E044| db $0B ; 0x17
|02E045| db $06 ; 0x18
|02E046| db $0A ; 0x19
|02E047| db $0B ; 0x1A
|02E048| db $0A ; 0x1B
|02E049| db $0B ; 0x1C
|02E04A| db $0B ; 0x1D
|02E04B| db $06 ; 0x1E
|02E04C| db $0B ; 0x1F
|02E04D| db $0A ; 0x20
|02E04E| db $0B ; 0x21
|02E04F| db $0B ; 0x22
|02E050| db $0B ; 0x23
|02E051| db $0B ; 0x24
|02E052| db $00 ; 0x25
|02E053| db $04 ; 0x26
|02E054| db $00 ; 0x27
|02E055| db $07 ; 0x28
|02E056| db $0A ; 0x29
|02E057| db $0A ; 0x2A
|02E058| db $0A ; 0x2B
|02E059| db $0A ; 0x2C
|02E05A| db $0A ; 0x2D
|02E05B| db $06 ; 0x2E
|02E05C| db $0B ; 0x2F
|02E05D| db $0A ; 0x30
|02E05E| db $00 ; 0x31
|02E05F| db $0A ; 0x32
|02E060| db $06 ; 0x33
|02E061| db $06 ; 0x34
|02E062| db $06 ; 0x35
|02E063| db $0A ; 0x36
|02E064| db $06 ; 0x37
|02E065| db $00 ; 0x38
|02E066| db $00 ; 0x39
|02E067| db $0B ; 0x3A
|02E068| db $0B ; 0x3B
|02E069| db $00 ; 0x3C
|02E06A| db $06 ; 0x3D
|02E06B| db $FE ; 0x3E
|02E06C| db $0C ; 0x3F
|02E06D| db $00 ; 0x40
|02E06E| db $05 ; 0x41
|02E06F| db $04 ; 0x42
|02E070| db $01 ; 0x43
|02E071| db $07 ; 0x44
|02E072| db $FA ; 0x45
|02E073| db $00 ; 0x46
|02E074| db $00 ; 0x47
|02E075| db $00 ; 0x48
|02E076| db $00 ; 0x49
|02E077| db $F4 ; 0x4A
|02E078| db $00 ; 0x4B
|02E079| db $00 ; 0x4C
|02E07A| db $00 ; 0x4D
|02E07B| db $00 ; 0x4E

;---------------------------------------------------------------------------------------------------

.scroll_mod_x
|02E07C| db $FE ; 0x00
|02E07D| db $02 ; 0x01
|02E07E| db $02 ; 0x02
|02E07F| db $FA ; 0x03
|02E080| db $FA ; 0x04
|02E081| db $FE ; 0x05
|02E082| db $F8 ; 0x06
|02E083| db $00 ; 0x07
|02E084| db $FC ; 0x08
|02E085| db $FA ; 0x09
|02E086| db $FA ; 0x0A
|02E087| db $FE ; 0x0B
|02E088| db $FD ; 0x0C
|02E089| db $0E ; 0x0D
|02E08A| db $FE ; 0x0E
|02E08B| db $FE ; 0x0F
|02E08C| db $00 ; 0x10
|02E08D| db $00 ; 0x11
|02E08E| db $02 ; 0x12
|02E08F| db $FA ; 0x13
|02E090| db $00 ; 0x14
|02E091| db $00 ; 0x15
|02E092| db $0A ; 0x16
|02E093| db $00 ; 0x17
|02E094| db $00 ; 0x18
|02E095| db $FA ; 0x19
|02E096| db $00 ; 0x1A
|02E097| db $FA ; 0x1B
|02E098| db $FA ; 0x1C
|02E099| db $FA ; 0x1D
|02E09A| db $FA ; 0x1E
|02E09B| db $00 ; 0x1F
|02E09C| db $00 ; 0x20
|02E09D| db $00 ; 0x21
|02E09E| db $FC ; 0x22
|02E09F| db $FC ; 0x23
|02E0A0| db $FC ; 0x24
|02E0A1| db $0A ; 0x25
|02E0A2| db $FE ; 0x26
|02E0A3| db $FA ; 0x27
|02E0A4| db $FA ; 0x28
|02E0A5| db $0E ; 0x29
|02E0A6| db $FE ; 0x2A
|02E0A7| db $FE ; 0x2B
|02E0A8| db $FA ; 0x2C
|02E0A9| db $F4 ; 0x2D
|02E0AA| db $F2 ; 0x2E
|02E0AB| db $00 ; 0x2F
|02E0AC| db $00 ; 0x30
|02E0AD| db $0C ; 0x31
|02E0AE| db $0C ; 0x32
|02E0AF| db $FA ; 0x33
|02E0B0| db $FA ; 0x34
|02E0B1| db $FA ; 0x35
|02E0B2| db $0E ; 0x36
|02E0B3| db $FA ; 0x37
|02E0B4| db $FC ; 0x38
|02E0B5| db $0A ; 0x39
|02E0B6| db $FE ; 0x3A
|02E0B7| db $FA ; 0x3B
|02E0B8| db $0A ; 0x3C
|02E0B9| db $FE ; 0x3D
|02E0BA| db $FF ; 0x3E
|02E0BB| db $F5 ; 0x3F
|02E0BC| db $08 ; 0x40
|02E0BD| db $F9 ; 0x41
|02E0BE| db $03 ; 0x42
|02E0BF| db $01 ; 0x43
|02E0C0| db $02 ; 0x44
|02E0C1| db $FF ; 0x45
|02E0C2| db $FF ; 0x46
|02E0C3| db $06 ; 0x47
|02E0C4| db $F9 ; 0x48
|02E0C5| db $08 ; 0x49
|02E0C6| db $01 ; 0x4A
|02E0C7| db $00 ; 0x4B
|02E0C8| db $00 ; 0x4C
|02E0C9| db $F2 ; 0x4D
|02E0CA| db $00 ; 0x4E

;---------------------------------------------------------------------------------------------------

.door_graphic
|02E0CB| dw $0816 ; 0x00
|02E0CD| dw $0000 ; 0x01
|02E0CF| dw $0000 ; 0x02
|02E0D1| dw $0000 ; 0x03
|02E0D3| dw $0000 ; 0x04
|02E0D5| dw $0000 ; 0x05
|02E0D7| dw $0000 ; 0x06
|02E0D9| dw $0000 ; 0x07
|02E0DB| dw $0000 ; 0x08
|02E0DD| dw $0000 ; 0x09
|02E0DF| dw $0000 ; 0x0A
|02E0E1| dw $0000 ; 0x0B
|02E0E3| dw $0000 ; 0x0C
|02E0E5| dw $0000 ; 0x0D
|02E0E7| dw $05CC ; 0x0E
|02E0E9| dw $05D4 ; 0x0F
|02E0EB| dw $0BB6 ; 0x10
|02E0ED| dw $0B86 ; 0x11
|02E0EF| dw $0000 ; 0x12
|02E0F1| dw $0000 ; 0x13
|02E0F3| dw $0000 ; 0x14
|02E0F5| dw $0000 ; 0x15
|02E0F7| dw $0000 ; 0x16
|02E0F9| dw $0000 ; 0x17
|02E0FB| dw $0000 ; 0x18
|02E0FD| dw $0000 ; 0x19
|02E0FF| dw $0000 ; 0x1A
|02E101| dw $0000 ; 0x1B
|02E103| dw $0000 ; 0x1C
|02E105| dw $0000 ; 0x1D
|02E107| dw $0000 ; 0x1E
|02E109| dw $0000 ; 0x1F
|02E10B| dw $0000 ; 0x20
|02E10D| dw $0000 ; 0x21
|02E10F| dw $0000 ; 0x22
|02E111| dw $0000 ; 0x23
|02E113| dw $0000 ; 0x24
|02E115| dw $0000 ; 0x25
|02E117| dw $0000 ; 0x26
|02E119| dw $0000 ; 0x27
|02E11B| dw $0000 ; 0x28
|02E11D| dw $0000 ; 0x29
|02E11F| dw $0000 ; 0x2A
|02E121| dw $0000 ; 0x2B
|02E123| dw $0000 ; 0x2C
|02E125| dw $0000 ; 0x2D
|02E127| dw $0000 ; 0x2E
|02E129| dw $0000 ; 0x2F
|02E12B| dw $0000 ; 0x30
|02E12D| dw $0000 ; 0x31
|02E12F| dw $0000 ; 0x32
|02E131| dw $0000 ; 0x33
|02E133| dw $0000 ; 0x34
|02E135| dw $0000 ; 0x35
|02E137| dw $0000 ; 0x36
|02E139| dw $0000 ; 0x37
|02E13B| dw $0000 ; 0x38
|02E13D| dw $0000 ; 0x39
|02E13F| dw $0000 ; 0x3A
|02E141| dw $0000 ; 0x3B
|02E143| dw $0000 ; 0x3C
|02E145| dw $0816 ; 0x3D
|02E147| dw $0000 ; 0x3E
|02E149| dw $0000 ; 0x3F
|02E14B| dw $0000 ; 0x40
|02E14D| dw $0000 ; 0x41
|02E14F| dw $0000 ; 0x42
|02E151| dw $0000 ; 0x43
|02E153| dw $0000 ; 0x44
|02E155| dw $0000 ; 0x45
|02E157| dw $0000 ; 0x46
|02E159| dw $0000 ; 0x47
|02E15B| dw $0000 ; 0x48
|02E15D| dw $0000 ; 0x49
|02E15F| dw $0000 ; 0x4A
|02E161| dw $0000 ; 0x4B
|02E163| dw $0000 ; 0x4C
|02E165| dw $0000 ; 0x4D
|02E167| dw $0000 ; 0x4E

;---------------------------------------------------------------------------------------------------

.door_graphic_location
|02E169| dw $0000 ; 0x00
|02E16B| dw $01AA ; 0x01
|02E16D| dw $8124 ; 0x02
|02E16F| dw $87BE ; 0x03
|02E171| dw $8158 ; 0x04
|02E173| dw $0000 ; 0x05
|02E175| dw $0000 ; 0x06
|02E177| dw $0000 ; 0x07
|02E179| dw $0000 ; 0x08
|02E17B| dw $0000 ; 0x09
|02E17D| dw $0000 ; 0x0A
|02E17F| dw $0000 ; 0x0B
|02E181| dw $0000 ; 0x0C
|02E183| dw $0000 ; 0x0D
|02E185| dw $0000 ; 0x0E
|02E187| dw $0000 ; 0x0F
|02E189| dw $0000 ; 0x10
|02E18B| dw $0000 ; 0x11
|02E18D| dw $0000 ; 0x12
|02E18F| dw $0000 ; 0x13
|02E191| dw $0000 ; 0x14
|02E193| dw $0000 ; 0x15
|02E195| dw $0000 ; 0x16
|02E197| dw $0000 ; 0x17
|02E199| dw $0000 ; 0x18
|02E19B| dw $0000 ; 0x19
|02E19D| dw $0000 ; 0x1A
|02E19F| dw $0000 ; 0x1B
|02E1A1| dw $0000 ; 0x1C
|02E1A3| dw $0000 ; 0x1D
|02E1A5| dw $0000 ; 0x1E
|02E1A7| dw $0000 ; 0x1F
|02E1A9| dw $0000 ; 0x20
|02E1AB| dw $0000 ; 0x21
|02E1AD| dw $0000 ; 0x22
|02E1AF| dw $0000 ; 0x23
|02E1B1| dw $0000 ; 0x24
|02E1B3| dw $82BE ; 0x25
|02E1B5| dw $0000 ; 0x26
|02E1B7| dw $0000 ; 0x27
|02E1B9| dw $0000 ; 0x28
|02E1BB| dw $0000 ; 0x29
|02E1BD| dw $0000 ; 0x2A
|02E1BF| dw $0000 ; 0x2B
|02E1C1| dw $0000 ; 0x2C
|02E1C3| dw $0000 ; 0x2D
|02E1C5| dw $0000 ; 0x2E
|02E1C7| dw $0000 ; 0x2F
|02E1C9| dw $0000 ; 0x30
|02E1CB| dw $0000 ; 0x31
|02E1CD| dw $0000 ; 0x32
|02E1CF| dw $0000 ; 0x33
|02E1D1| dw $0000 ; 0x34
|02E1D3| dw $0000 ; 0x35
|02E1D5| dw $0000 ; 0x36
|02E1D7| dw $0000 ; 0x37
|02E1D9| dw $0000 ; 0x38
|02E1DB| dw $0000 ; 0x39
|02E1DD| dw $0000 ; 0x3A
|02E1DF| dw $0000 ; 0x3B
|02E1E1| dw $0000 ; 0x3C
|02E1E3| dw $0000 ; 0x3D
|02E1E5| dw $0000 ; 0x3E
|02E1E7| dw $0000 ; 0x3F
|02E1E9| dw $0000 ; 0x40
|02E1EB| dw $0000 ; 0x41
|02E1ED| dw $0000 ; 0x42
|02E1EF| dw $0000 ; 0x43
|02E1F1| dw $0000 ; 0x44
|02E1F3| dw $0000 ; 0x45
|02E1F5| dw $0000 ; 0x46
|02E1F7| dw $0000 ; 0x47
|02E1F9| dw $0000 ; 0x48
|02E1FB| dw $0000 ; 0x49
|02E1FD| dw $0000 ; 0x4A
|02E1FF| dw $0000 ; 0x4B
|02E201| dw $0000 ; 0x4C
|02E203| dw $0000 ; 0x4D
|02E205| dw $0000 ; 0x4E

;===================================================================================================

LoadOverworldFromUnderworld:
|02E207| PHB
|02E208| PHK
|02E209| PLB

|02E20A| STZ.b $1B
|02E20C| STZ.w $0458

|02E20F| REP #$20

|02E211| LDA.w #$0000
|02E214| STA.l $7EC017

|02E218| LDA.w #$00FF
|02E21B| STA.w $040C

|02E21E| STZ.w $04AC

; Check room ID for custom exits
|02E221| LDA.b $A0

; Link's house
|02E223| CMP.w #$0104 ; ROOM 0104
|02E226| BEQ .custom_exit

; Special overworld
|02E228| CMP.w #$0180 ; SPOW
|02E22B| BCS .custom_exit

; EG1
|02E22D| CMP.w #$0100
|02E230| BCC .custom_exit

|02E232| JSR LoadCachedEntranceProperties
|02E235| JMP.w LoadOverworldScreenProperties_pre

.custom_exit
|02E238| LDX.b #$9E

.next_room_check
|02E23A| DEX
|02E23B| DEX

|02E23C| CMP.w UnderworldExitData.room_id,X
|02E23F| BNE .next_room_check

;---------------------------------------------------------------------------------------------------

|02E241| LDA.w UnderworldExitData.vertical_scroll,X
|02E244| STA.b $E6
|02E246| STA.b $E8
|02E248| STA.w $0122
|02E24B| STA.w $0124

|02E24E| LDA.w UnderworldExitData.horizontal_scroll,X
|02E251| STA.b $E0
|02E253| STA.b $E2
|02E255| STA.w $011E
|02E258| STA.w $0120

|02E25B| LDA.w UnderworldExitData.y_coordinate,X
|02E25E| STA.b $20

|02E260| LDA.w UnderworldExitData.x_coordinate,X
|02E263| STA.b $22

;---------------------------------------------------------------------------------------------------

|02E265| LDA.w UnderworldExitData.exit_vram_addr,X
|02E268| STA.b $84

|02E26A| SEC
|02E26B| SBC.w #$0400
|02E26E| AND.w #$0F80
|02E271| ASL A
|02E272| XBA
|02E273| STA.b $88

|02E275| LDA.b $84
|02E277| SEC
|02E278| SBC.w #$0010
|02E27B| AND.w #$003E
|02E27E| LSR A
|02E27F| STA.b $86

|02E281| LDA.w UnderworldExitData.camera_trigger_y,X
|02E284| STA.w $0618

|02E287| DEC A
|02E288| DEC A
|02E289| STA.w $061A

|02E28C| LDA.w UnderworldExitData.camera_trigger_x,X
|02E28F| STA.w $061C

|02E292| DEC A
|02E293| DEC A
|02E294| STA.w $061E

;---------------------------------------------------------------------------------------------------

|02E297| LDA.w #$0002
|02E29A| STA.b $2F

|02E29C| LDA.w UnderworldExitData.door_graphic,X
|02E29F| STA.w $0696

|02E2A2| LDA.w UnderworldExitData.door_graphic_location,X
|02E2A5| STA.w $0698

|02E2A8| TXA
|02E2A9| LSR A
|02E2AA| TAX

|02E2AB| SEP #$20

|02E2AD| LDA.w UnderworldExitData.overworld_id,X
|02E2B0| STA.b $8A
|02E2B2| STA.w $040A

|02E2B5| STZ.b $8B
|02E2B7| STZ.w $040B

|02E2BA| LDA.w UnderworldExitData.scroll_mod_y,X
|02E2BD| STA.w $0624
|02E2C0| STZ.w $0625

|02E2C3| ASL A
|02E2C4| BCC .positive_camera_y

|02E2C6| DEC.w $0625

.positive_camera_y
|02E2C9| LDA.w UnderworldExitData.scroll_mod_x,X
|02E2CC| STA.w $0628
|02E2CF| STZ.w $0629

|02E2D2| ASL A
|02E2D3| BCC .positive_camera_x

|02E2D5| DEC.w $0629

.positive_camera_x
|02E2D8| REP #$20

|02E2DA| LDA.w #$0000
|02E2DD| SEC
|02E2DE| SBC.w $0624
|02E2E1| STA.w $0626

|02E2E4| LDA.w #$0000
|02E2E7| SEC
|02E2E8| SBC.w $0628
|02E2EB| STA.w $062A

;===================================================================================================

LoadOverworldScreenProperties_pre:
|02E2EE| PLB

;===================================================================================================

LoadOverworldScreenProperties:
|02E2EF| LDA.w #$FFF8
|02E2F2| STA.b $EC

|02E2F4| SEP #$30

|02E2F6| PHB
|02E2F7| PHK
|02E2F8| PLB

|02E2F9| JSR LoadGraphicsAndScreenSize

|02E2FC| LDA.b #$E4
|02E2FE| STA.w $0716

|02E301| STZ.w $0713

|02E304| LDA.b $8A
|02E306| AND.b #$3F
|02E308| ASL A
|02E309| TAY

|02E30A| REP #$20

|02E30C| LDX.b #$00

|02E30E| LDA.w $0712
|02E311| BEQ .smaller_screen

|02E313| INX
|02E314| INX

.smaller_screen
|02E315| JSR SetOverworldCameraBoundaries

|02E318| SEP #$20

|02E31A| PLB

|02E31B| STZ.b $A9

|02E31D| LDA.b #$02
|02E31F| STA.b $AA
|02E321| STA.b $A6
|02E323| STA.b $A7

|02E325| LDA.b #$80
|02E327| STA.b $45
|02E329| STA.b $44

|02E32B| LDA.b #$0F
|02E32D| STA.b $42
|02E32F| STA.b $43

|02E331| LDA.b #$FF
|02E333| STA.b $24
|02E335| STA.b $29

|02E337| RTS

;===================================================================================================

LoadCachedEntranceProperties:
|02E338| REP #$20

|02E33A| LDA.l $7EC140
|02E33E| STA.w $040A

|02E341| LDA.l $7EC142
|02E345| STA.b $1C

|02E347| LDA.l $7EC144
|02E34B| STA.b $E8
|02E34D| STA.w $0122
|02E350| STA.b $E6
|02E352| STA.w $0124

|02E355| LDA.l $7EC146
|02E359| STA.b $E2
|02E35B| STA.w $011E
|02E35E| STA.b $E0
|02E360| STA.w $0120

|02E363| LDA.l $7EC14A
|02E367| STA.b $22

|02E369| LDA.l $7EC148
|02E36D| STA.b $20

; These rooms are all stairs on the overworld
|02E36F| LDA.b $A0
|02E371| CMP.w #$0124 ; ROOM 0124
|02E374| BCS .normal_exit

|02E376| LDA.b $20
|02E378| SEC
|02E379| SBC.w #$0010
|02E37C| STA.b $20

.normal_exit
|02E37E| LDA.w #$0002
|02E381| STA.b $2F

|02E383| LDA.w $0696
|02E386| CMP.w #$FFFF
|02E389| BNE .face_down

|02E38B| LDA.b $20
|02E38D| CLC
|02E38E| ADC.w #$0020
|02E391| STA.b $20

|02E393| STZ.b $2F

;---------------------------------------------------------------------------------------------------

.face_down
|02E395| LDA.l $7EC14C
|02E399| STA.b $8A

|02E39B| LDA.l $7EC14E
|02E39F| STA.b $84

|02E3A1| SEC
|02E3A2| SBC.w #$0400
|02E3A5| AND.w #$0F80
|02E3A8| ASL A
|02E3A9| XBA
|02E3AA| STA.b $88

|02E3AC| LDA.b $84
|02E3AE| SEC
|02E3AF| SBC.w #$0010
|02E3B2| AND.w #$003E
|02E3B5| LSR A
|02E3B6| STA.b $86

|02E3B8| LDA.l $7EC150
|02E3BC| STA.w $0618

|02E3BF| DEC A
|02E3C0| DEC A
|02E3C1| STA.w $061A

|02E3C4| LDA.l $7EC152
|02E3C8| STA.w $061C

|02E3CB| DEC A
|02E3CC| DEC A
|02E3CD| STA.w $061E

|02E3D0| LDA.l $7EC154
|02E3D4| STA.w $0600

|02E3D7| LDA.l $7EC156
|02E3DB| STA.w $0602

|02E3DE| LDA.l $7EC158
|02E3E2| STA.w $0604

|02E3E5| LDA.l $7EC15A
|02E3E9| STA.w $0606

|02E3EC| LDA.l $7EC15C
|02E3F0| STA.w $0610

|02E3F3| LDA.l $7EC15E
|02E3F7| STA.w $0612

|02E3FA| LDA.l $7EC160
|02E3FE| STA.w $0614

|02E401| LDA.l $7EC162
|02E405| STA.w $0616

|02E408| LDA.l $7EC16A
|02E40C| STA.w $0624

|02E40F| LDA.l $7EC16C
|02E413| STA.w $0626

|02E416| LDA.l $7EC16E
|02E41A| STA.w $0628

|02E41D| LDA.l $7EC170
|02E421| STA.w $062A

|02E424| SEP #$20

|02E426| LDA.l $7EC164
|02E42A| STA.w $0AA0

|02E42D| LDA.l $7EC165
|02E431| STA.w $0AA1

|02E434| LDA.l $7EC166
|02E438| STA.w $0AA2

|02E43B| LDA.l $7EC167
|02E43F| STA.w $0AA3

|02E442| REP #$20

|02E444| RTS

;===================================================================================================
; TODO better names
pool LoadSpecialOverworld

.camera600
|02E445| dw $0000, $0000, $0000, $0000
|02E44D| dw $0000, $0000, $0000, $0000
|02E455| dw $0200, $0200, $0000, $0000
|02E45D| dw $0000, $0000, $0000, $0000

.camera602
|02E465| dw $0120, $0020, $0320, $0020
|02E46D| dw $0000, $0000, $0320, $0320
|02E475| dw $0320, $0220, $0000, $0000
|02E47D| dw $0000, $0000, $0320, $0320

.camera604
|02E485| dw $0000, $0100, $0200, $0600
|02E48D| dw $0600, $0A00, $0C00, $0C00
|02E495| dw $0000, $0100, $0200, $0600
|02E49D| dw $0600, $0A00, $0C00, $0C00

.camera606
|02E4A5| dw $0000, $0100, $0500, $0600
|02E4AD| dw $0600, $0A00, $0C00, $0C00
|02E4B5| dw $0000, $0100, $0400, $0600
|02E4BD| dw $0600, $0A00, $0C00, $0C00

.camera610
|02E4C5| dw $FF20, $FF20, $FF20, $FF20
|02E4CD| dw $FF20, $FF20, $FF20, $FF20
|02E4D5| dw $FF20, $FF20, $0120, $FF20
|02E4DD| dw $FF20, $FF20, $FF20, $0120

.camera614
|02E4E5| dw $FFFC, $0100, $0300, $0100
|02E4ED| dw $0500, $0900, $0B00, $0B00
|02E4F5| dw $FFFC, $0100, $0300, $0500
|02E4FD| dw $0500, $0900, $0B00, $0B00

.camera612
|02E505| dw $FF20, $FF20, $FF20, $FF20
|02E50D| dw $FF20, $FF20, $0400, $0400
|02E515| dw $FF20, $FF20, $0120, $FF20
|02E51D| dw $FF20, $FF20, $0400, $0400

.camera616
|02E525| dw $0004, $0104, $0300, $0100
|02E52D| dw $0500, $0900, $0B00, $0B00
|02E535| dw $0004, $0104, $0300, $0100
|02E53D| dw $0500, $0900, $0B00, $0B00

.camera70C
|02E545| dw $0000, $0000, $0200, $0600
|02E54D| dw $0600, $0A00, $0C00, $0C00
|02E555| dw $0000, $0000, $0200, $0600
|02E55D| dw $0600, $0A00, $0C00, $0C00

;---------------------------------------------------------------------------------------------------

.direction
|02E565| db $00, $04, $00, $00
|02E569| db $00, $00, $00, $00
|02E56D| db $00, $00, $00, $00
|02E571| db $00, $00, $00, $00

.gfx_AA3
|02E575| db $0C, $0C, $0E, $0E
|02E579| db $0E, $10, $10, $10
|02E57D| db $0E, $0E, $0E, $0E
|02E581| db $10, $10, $10, $10

.gfx_AA2
|02E585| db $2F, $2F, $2F, $2F
|02E589| db $2F, $2F, $2F, $2F
|02E58D| db $2F, $2F, $2F, $2F
|02E591| db $2F, $2F, $2F, $2F

.palette_prop_a
|02E595| db $0A, $0A, $0A, $0A
|02E599| db $02, $02, $02, $0A
|02E59D| db $02, $02, $0A, $02
|02E5A1| db $02, $02, $02, $0A

.palette_prop_b
|02E5A5| db $01, $08, $08, $08
|02E5A9| db $00, $00, $00, $00
|02E5AD| db $00, $00, $08, $00
|02E5B1| db $00, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

LoadSpecialOverworld:
|02E5B5| REP #$20

|02E5B7| STZ.w $04AC

|02E5BA| LDA.w $040A
|02E5BD| STA.l $7EC100

|02E5C1| LDA.b $1C
|02E5C3| STA.l $7EC102

|02E5C7| LDA.b $E8
|02E5C9| STA.l $7EC104

|02E5CD| LDA.b $E2
|02E5CF| STA.l $7EC106

|02E5D3| LDA.b $20
|02E5D5| STA.l $7EC108

|02E5D9| LDA.b $22
|02E5DB| STA.l $7EC10A

|02E5DF| LDA.w $0618
|02E5E2| STA.l $7EC110

|02E5E6| LDA.w $061C
|02E5E9| STA.l $7EC112

|02E5ED| LDA.b $8A
|02E5EF| STA.l $7EC10C

|02E5F3| LDA.b $84
|02E5F5| STA.l $7EC10E

|02E5F9| LDA.w $0600
|02E5FC| STA.l $7EC114

|02E600| LDA.w $0602
|02E603| STA.l $7EC116

|02E607| LDA.w $0604
|02E60A| STA.l $7EC118

|02E60E| LDA.w $0606
|02E611| STA.l $7EC11A

|02E615| LDA.w $0610
|02E618| STA.l $7EC11C

|02E61C| LDA.w $0612
|02E61F| STA.l $7EC11E

|02E623| LDA.w $0614
|02E626| STA.l $7EC120

|02E62A| LDA.w $0616
|02E62D| STA.l $7EC122

|02E631| LDA.w $0624
|02E634| STA.l $7EC12A

|02E638| LDA.w $0626
|02E63B| STA.l $7EC12C

|02E63F| LDA.w $0628
|02E642| STA.l $7EC12E

|02E646| LDA.w $062A
|02E649| STA.l $7EC130

|02E64D| SEP #$20

|02E64F| LDA.w $0AA0
|02E652| STA.l $7EC124

|02E656| LDA.w $0AA1
|02E659| STA.l $7EC125

|02E65D| LDA.w $0AA2
|02E660| STA.l $7EC126

|02E664| LDA.w $0AA3
|02E667| STA.l $7EC127

;---------------------------------------------------------------------------------------------------

|02E66B| SEP #$20

|02E66D| JSR LoadOverworldFromUnderworld

|02E670| REP #$20

; TODO is this checking for credits?
|02E672| LDA.b $A0
|02E674| CMP.w #$1010
|02E677| BNE .not_zora

; Send us to Zora's domain
|02E679| LDA.w #$0182 ; OW 82
|02E67C| STA.b $A0

.not_zora
|02E67E| SEP #$20

|02E680| PHB
|02E681| PHK
|02E682| PLB

|02E683| LDA.b $A0
|02E685| PHA

|02E686| SEC
|02E687| SBC.b #$80
|02E689| STA.b $A0

|02E68B| TAX

|02E68C| LDA.l .direction,X
|02E690| STA.b $2F

|02E692| STZ.w $0412

|02E695| LDA.l .gfx_AA3,X
|02E699| STA.w $0AA3

|02E69C| LDA.l .gfx_AA2,X
|02E6A0| STA.w $0AA2

|02E6A3| PHX

|02E6A4| LDA.l .palette_prop_b,X
|02E6A8| STA.b $00

|02E6AA| LDA.l .palette_prop_a,X
|02E6AE| JSL OverworldPalettesLoader

|02E6B2| PLX

|02E6B3| REP #$30

|02E6B5| LDA.w #$03F0
|02E6B8| STA.b $00

|02E6BA| LDA.b $A0
|02E6BC| AND.w #$003F
|02E6BF| ASL A
|02E6C0| TAX

|02E6C1| LDA.l .camera600,X
|02E6C5| STA.w $0708

|02E6C8| LDA.l .camera70C,X
|02E6CC| LSR A
|02E6CD| LSR A
|02E6CE| LSR A
|02E6CF| STA.w $070C

|02E6D2| LDA.b $00
|02E6D4| STA.w $070A

|02E6D7| LDA.b $00
|02E6D9| LSR A
|02E6DA| LSR A
|02E6DB| LSR A
|02E6DC| STA.w $070E

;---------------------------------------------------------------------------------------------------

|02E6DF| LDA.b $A0
|02E6E1| ASL A
|02E6E2| TAY

|02E6E3| SEP #$10

|02E6E5| LDA.w .camera600,Y
|02E6E8| STA.w $0600

|02E6EB| LDA.w .camera602,Y
|02E6EE| STA.w $0602

|02E6F1| LDA.w .camera604,Y
|02E6F4| STA.w $0604

|02E6F7| LDA.w .camera606,Y
|02E6FA| STA.w $0606

|02E6FD| LDA.w .camera610,Y
|02E700| STA.w $0610

|02E703| LDA.w .camera612,Y
|02E706| STA.w $0612

|02E709| LDA.w .camera614,Y
|02E70C| STA.w $0614

|02E70F| LDA.w .camera616,Y
|02E712| STA.w $0616

;---------------------------------------------------------------------------------------------------

|02E715| SEP #$20

|02E717| PLA
|02E718| STA.b $A0

|02E71A| PLB

|02E71B| JSL SetOverworldBackgroundColorCacheOnly

|02E71F| RTS

;===================================================================================================

LoadOverworldFromSpecialOverworld:
|02E720| REP #$20

|02E722| STZ.w $04AC

|02E725| LDA.l $7EC100
|02E729| STA.w $040A

|02E72C| LDA.l $7EC102
|02E730| STA.b $1C

|02E732| LDA.l $7EC104
|02E736| STA.b $E8
|02E738| STA.w $0122
|02E73B| STA.b $E6
|02E73D| STA.w $0124

|02E740| LDA.l $7EC106
|02E744| STA.b $E2
|02E746| STA.w $011E
|02E749| STA.b $E0
|02E74B| STA.w $0120

|02E74E| LDA.l $7EC108
|02E752| STA.b $20

|02E754| LDA.l $7EC10A
|02E758| STA.b $22

|02E75A| LDA.l $7EC10C
|02E75E| STA.b $8A

|02E760| LDA.l $7EC10E
|02E764| STA.b $84

|02E766| SEC
|02E767| SBC.w #$0400
|02E76A| AND.w #$0F80
|02E76D| ASL A
|02E76E| XBA
|02E76F| STA.b $88

|02E771| LDA.b $84
|02E773| SEC
|02E774| SBC.w #$0010
|02E777| AND.w #$003E
|02E77A| LSR A
|02E77B| STA.b $86

;---------------------------------------------------------------------------------------------------

|02E77D| LDA.l $7EC110
|02E781| STA.w $0618

|02E784| DEC A
|02E785| DEC A
|02E786| STA.w $061A

|02E789| LDA.l $7EC112
|02E78D| STA.w $061C

|02E790| DEC A
|02E791| DEC A
|02E792| STA.w $061E

|02E795| LDA.l $7EC114
|02E799| STA.w $0600

|02E79C| LDA.l $7EC116
|02E7A0| STA.w $0602

|02E7A3| LDA.l $7EC118
|02E7A7| STA.w $0604

|02E7AA| LDA.l $7EC11A
|02E7AE| STA.w $0606

|02E7B1| LDA.l $7EC11C
|02E7B5| STA.w $0610

|02E7B8| LDA.l $7EC11E
|02E7BC| STA.w $0612

|02E7BF| LDA.l $7EC120
|02E7C3| STA.w $0614

|02E7C6| LDA.l $7EC122
|02E7CA| STA.w $0616

|02E7CD| LDA.l $7EC12A
|02E7D1| STA.w $0624

|02E7D4| LDA.l $7EC12C
|02E7D8| STA.w $0626

|02E7DB| LDA.l $7EC12E
|02E7DF| STA.w $0628

|02E7E2| LDA.l $7EC130
|02E7E6| STA.w $062A

;---------------------------------------------------------------------------------------------------

|02E7E9| SEP #$20

|02E7EB| LDA.l $7EC124
|02E7EF| STA.w $0AA0

|02E7F2| LDA.l $7EC125
|02E7F6| STA.w $0AA1

|02E7F9| LDA.l $7EC126
|02E7FD| STA.w $0AA2

|02E800| LDA.l $7EC127
|02E804| STA.w $0AA3

|02E807| LDX.b $8A

|02E809| LDA.l $7EFD40,X
|02E80D| STA.b $00

|02E80F| LDA.l OverworldPalettesScreenToSet,X
|02E813| JSL OverworldPalettesLoader
|02E817| JSL SetOverworldBackgroundColorCacheOnly

;---------------------------------------------------------------------------------------------------

|02E81B| STZ.b $A9

|02E81D| LDA.b #$02
|02E81F| STA.b $AA
|02E821| STA.b $A6
|02E823| STA.b $A7

|02E825| LDA.b #$80
|02E827| STA.b $45
|02E829| STA.b $44

|02E82B| LDA.b #$0F
|02E82D| STA.b $42
|02E82F| STA.b $43

|02E831| LDA.b #$FF
|02E833| STA.b $24
|02E835| STA.b $29

|02E837| SEP #$30

|02E839| JSL ResetSwimmingState
|02E83D| JSR LoadGraphicsAndScreenSize

|02E840| LDA.b #$E4
|02E842| STA.w $0716

|02E845| STZ.w $0713

|02E848| RTS

;===================================================================================================

pool LoadTransport

.screen_id
|02E849| dw $0003 ; OW 03 - Flute 1
|02E84B| dw $0016 ; OW 16 - Flute 2
|02E84D| dw $0018 ; OW 18 - Flute 3
|02E84F| dw $002C ; OW 2C - Flute 4
|02E851| dw $002F ; OW 2F - Flute 5
|02E853| dw $0030 ; OW 30 - Flute 6
|02E855| dw $003B ; OW 3B - Flute 7
|02E857| dw $003F ; OW 3F - Flute 8
|02E859| dw $005B ; OW 5B - Pyramid
|02E85B| dw $0035 ; OW 35 - Lake Hylia whirlpool
|02E85D| dw $000F ; OW 0F - Waterfall of Wishing whirlpool
|02E85F| dw $0015 ; OW 15 - Witch whirlpool
|02E861| dw $0033 ; OW 33 - South of Link's house whirlpool
|02E863| dw $0012 ; OW 12 - Death Mountain whirlpool
|02E865| dw $003F ; OW 3F - Lake Hylia falls whirlpool
|02E867| dw $0055 ; OW 55 - Dark witch whirlpool
|02E869| dw $007F ; OW 7F - Dark Lake Hylia falls whirlpool

.map16_index
|02E86B| dw $1600 ; Flute 1
|02E86D| dw $0888 ; Flute 2
|02E86F| dw $0B30 ; Flute 3
|02E871| dw $0588 ; Flute 4
|02E873| dw $0798 ; Flute 5
|02E875| dw $1880 ; Flute 6
|02E877| dw $069E ; Flute 7
|02E879| dw $0810 ; Flute 8
|02E87B| dw $002E ; Pyramid
|02E87D| dw $1242 ; Lake Hylia whirlpool
|02E87F| dw $0680 ; Waterfall of Wishing whirlpool
|02E881| dw $0112 ; Witch whirlpool
|02E883| dw $059E ; South of Link's house whirlpool
|02E885| dw $048E ; Death Mountain whirlpool
|02E887| dw $0280 ; Lake Hylia falls whirlpool
|02E889| dw $0112 ; Dark witch whirlpool
|02E88B| dw $0280 ; Dark Lake Hylia falls whirlpool

.vertical_scroll
|02E88D| dw $02CA ; Flute 1
|02E88F| dw $0516 ; Flute 2
|02E891| dw $0759 ; Flute 3
|02E893| dw $0AB9 ; Flute 4
|02E895| dw $0AFA ; Flute 5
|02E897| dw $0F1E ; Flute 6
|02E899| dw $0EDF ; Flute 7
|02E89B| dw $0F05 ; Flute 8
|02E89D| dw $0600 ; Pyramid
|02E89F| dw $0E46 ; Lake Hylia whirlpool
|02E8A1| dw $02C6 ; Waterfall of Wishing whirlpool
|02E8A3| dw $042A ; Witch whirlpool
|02E8A5| dw $0CBA ; South of Link's house whirlpool
|02E8A7| dw $049A ; Death Mountain whirlpool
|02E8A9| dw $0E56 ; Lake Hylia falls whirlpool
|02E8AB| dw $042A ; Dark witch whirlpool
|02E8AD| dw $0E56 ; Dark Lake Hylia falls whirlpool

.horizontal_scroll
|02E8AF| dw $060E ; Flute 1
|02E8B1| dw $0C4E ; Flute 2
|02E8B3| dw $017E ; Flute 3
|02E8B5| dw $0840 ; Flute 4
|02E8B7| dw $0EB2 ; Flute 5
|02E8B9| dw $0000 ; Flute 6
|02E8BB| dw $06F2 ; Flute 7
|02E8BD| dw $0E75 ; Flute 8
|02E8BF| dw $0778 ; Pyramid
|02E8C1| dw $0C0A ; Lake Hylia whirlpool
|02E8C3| dw $0E06 ; Waterfall of Wishing whirlpool
|02E8C5| dw $0A8A ; Witch whirlpool
|02E8C7| dw $06EA ; South of Link's house whirlpool
|02E8C9| dw $0462 ; Death Mountain whirlpool
|02E8CB| dw $0E00 ; Lake Hylia falls whirlpool
|02E8CD| dw $0A8A ; Dark witch whirlpool
|02E8CF| dw $0E00 ; Dark Lake Hylia falls whirlpool

.link_pos_y
|02E8D1| dw $0328 ; Flute 1
|02E8D3| dw $0578 ; Flute 2
|02E8D5| dw $07B7 ; Flute 3
|02E8D7| dw $0B17 ; Flute 4
|02E8D9| dw $0B58 ; Flute 5
|02E8DB| dw $0FA8 ; Flute 6
|02E8DD| dw $0F3D ; Flute 7
|02E8DF| dw $0F67 ; Flute 8
|02E8E1| dw $065C ; Pyramid
|02E8E3| dw $0EA8 ; Lake Hylia whirlpool
|02E8E5| dw $0328 ; Waterfall of Wishing whirlpool
|02E8E7| dw $0488 ; Witch whirlpool
|02E8E9| dw $0D18 ; South of Link's house whirlpool
|02E8EB| dw $04F8 ; Death Mountain whirlpool
|02E8ED| dw $0EB8 ; Lake Hylia falls whirlpool
|02E8EF| dw $0488 ; Dark witch whirlpool
|02E8F1| dw $0EB8 ; Dark Lake Hylia falls whirlpool

.link_pos_x
|02E8F3| dw $0678 ; Flute 1
|02E8F5| dw $0CC8 ; Flute 2
|02E8F7| dw $0200 ; Flute 3
|02E8F9| dw $08B8 ; Flute 4
|02E8FB| dw $0F30 ; Flute 5
|02E8FD| dw $0078 ; Flute 6
|02E8FF| dw $0778 ; Flute 7
|02E901| dw $0EF3 ; Flute 8
|02E903| dw $07F0 ; Pyramid
|02E905| dw $0C90 ; Lake Hylia whirlpool
|02E907| dw $0E80 ; Waterfall of Wishing whirlpool
|02E909| dw $0B10 ; Witch whirlpool
|02E90B| dw $0770 ; South of Link's house whirlpool
|02E90D| dw $04E8 ; Death Mountain whirlpool
|02E90F| dw $0E68 ; Lake Hylia falls whirlpool
|02E911| dw $0B10 ; Dark witch whirlpool
|02E913| dw $0E68 ; Dark Lake Hylia falls whirlpool

.camera_trigger_y
|02E915| dw $0337 ; Flute 1
|02E917| dw $0583 ; Flute 2
|02E919| dw $07C6 ; Flute 3
|02E91B| dw $0B26 ; Flute 4
|02E91D| dw $0B67 ; Flute 5
|02E91F| dw $0F8D ; Flute 6
|02E921| dw $0F4C ; Flute 7
|02E923| dw $0F72 ; Flute 8
|02E925| dw $066D ; Pyramid
|02E927| dw $0EB3 ; Lake Hylia whirlpool
|02E929| dw $0333 ; Waterfall of Wishing whirlpool
|02E92B| dw $0497 ; Witch whirlpool
|02E92D| dw $0D27 ; South of Link's house whirlpool
|02E92F| dw $0507 ; Death Mountain whirlpool
|02E931| dw $0EC3 ; Lake Hylia falls whirlpool
|02E933| dw $0497 ; Dark witch whirlpool
|02E935| dw $0EC3 ; Dark Lake Hylia falls whirlpool

.camera_trigger_x
|02E937| dw $0683 ; Flute 1
|02E939| dw $0CD3 ; Flute 2
|02E93B| dw $020B ; Flute 3
|02E93D| dw $08BF ; Flute 4
|02E93F| dw $0F37 ; Flute 5
|02E941| dw $008D ; Flute 6
|02E943| dw $077F ; Flute 7
|02E945| dw $0EFA ; Flute 8
|02E947| dw $07F7 ; Pyramid
|02E949| dw $0C97 ; Lake Hylia whirlpool
|02E94B| dw $0E8B ; Waterfall of Wishing whirlpool
|02E94D| dw $0B17 ; Witch whirlpool
|02E94F| dw $0777 ; South of Link's house whirlpool
|02E951| dw $04EF ; Death Mountain whirlpool
|02E953| dw $0E85 ; Lake Hylia falls whirlpool
|02E955| dw $0B17 ; Dark witch whirlpool
|02E957| dw $0E85 ; Dark Lake Hylia falls whirlpool

.scroll_mod_y
|02E959| dw $FFF6 ; Flute 1
|02E95B| dw $FFFA ; Flute 2
|02E95D| dw $0007 ; Flute 3
|02E95F| dw $FFF7 ; Flute 4
|02E961| dw $FFF6 ; Flute 5
|02E963| dw $0000 ; Flute 6
|02E965| dw $FFF1 ; Flute 7
|02E967| dw $FFFB ; Flute 8
|02E969| dw $0000 ; Pyramid
|02E96B| dw $FFFA ; Lake Hylia whirlpool
|02E96D| dw $000A ; Waterfall of Wishing whirlpool
|02E96F| dw $FFF6 ; Witch whirlpool
|02E971| dw $FFF6 ; South of Link's house whirlpool
|02E973| dw $FFF6 ; Death Mountain whirlpool
|02E975| dw $FFFA ; Lake Hylia falls whirlpool
|02E977| dw $FFF6 ; Dark witch whirlpool
|02E979| dw $FFFA ; Dark Lake Hylia falls whirlpool

.scroll_mod_x
|02E97B| dw $FFF2 ; Flute 1
|02E97D| dw $FFF2 ; Flute 2
|02E97F| dw $0002 ; Flute 3
|02E981| dw $0000 ; Flute 4
|02E983| dw $000E ; Flute 5
|02E985| dw $0000 ; Flute 6
|02E987| dw $FFFE ; Flute 7
|02E989| dw $000B ; Flute 8
|02E98B| dw $FFF8 ; Pyramid
|02E98D| dw $0006 ; Lake Hylia whirlpool
|02E98F| dw $FFFA ; Waterfall of Wishing whirlpool
|02E991| dw $FFFA ; Witch whirlpool
|02E993| dw $0006 ; South of Link's house whirlpool
|02E995| dw $000E ; Death Mountain whirlpool
|02E997| dw $0000 ; Lake Hylia falls whirlpool
|02E999| dw $FFFA ; Dark witch whirlpool
|02E99B| dw $0000 ; Dark Lake Hylia falls whirlpool

endpool

;---------------------------------------------------------------------------------------------------

LoadFluteSpot:
|02E99D| PHB
|02E99E| PHK
|02E99F| PLB

|02E9A0| REP #$20

|02E9A2| STZ.w $04AC

|02E9A5| ASL.w $1AF0
|02E9A8| LDX.w $1AF0

;===================================================================================================

LoadTransport:
|02E9AB| LDA.w .vertical_scroll,X
|02E9AE| STA.b $E6
|02E9B0| STA.b $E8
|02E9B2| STA.w $0122
|02E9B5| STA.w $0124

|02E9B8| LDA.w .horizontal_scroll,X
|02E9BB| STA.b $E0
|02E9BD| STA.b $E2
|02E9BF| STA.w $011E
|02E9C2| STA.w $0120

|02E9C5| LDA.w .link_pos_y,X
|02E9C8| STA.b $20

|02E9CA| LDA.w .link_pos_x,X
|02E9CD| STA.b $22

|02E9CF| LDA.w .scroll_mod_y,X
|02E9D2| STA.w $0624

|02E9D5| LDA.w #$0000
|02E9D8| SEC
|02E9D9| SBC.w $0624
|02E9DC| STA.w $0626

|02E9DF| LDA.w .scroll_mod_x,X
|02E9E2| STA.w $0628

|02E9E5| LDA.w #$0000
|02E9E8| SEC
|02E9E9| SBC.w $0628
|02E9EC| STA.w $062A

|02E9EF| LDA.w .screen_id,X
|02E9F2| STA.b $8A
|02E9F4| STA.w $040A

|02E9F7| LDA.w .map16_index,X
|02E9FA| STA.b $84

|02E9FC| SEC
|02E9FD| SBC.w #$0400
|02EA00| AND.w #$0F80
|02EA03| ASL A
|02EA04| XBA
|02EA05| STA.b $88

|02EA07| LDA.b $84
|02EA09| SEC
|02EA0A| SBC.w #$0010
|02EA0D| AND.w #$003E
|02EA10| LSR A
|02EA11| STA.b $86

|02EA13| LDA.w .camera_trigger_y,X
|02EA16| STA.w $0618

|02EA19| DEC A
|02EA1A| DEC A
|02EA1B| STA.w $061A

|02EA1E| LDA.w .camera_trigger_x,X
|02EA21| STA.w $061C

|02EA24| DEC A
|02EA25| DEC A
|02EA26| STA.w $061E

;---------------------------------------------------------------------------------------------------

|02EA29| STZ.w $0696
|02EA2C| STZ.w $0698

|02EA2F| PLB

|02EA30| JSR LoadOverworldScreenProperties

|02EA33| JSL ResetAllSprites
|02EA37| JSL ResetAndReloadOverworldSprites

|02EA3B| STZ.b $6C

|02EA3D| JSR DeleteCertainAncillaeStopDashing

|02EA40| RTL

;===================================================================================================

LoadLandingScreenPalettes:
|02EA41| JSR OverworldLoadScreensPaletteSet

|02EA44| LDX.b $8A

|02EA46| LDA.l $7EFD40,X
|02EA4A| STA.b $00

|02EA4C| LDA.l OverworldPalettesScreenToSet,X

|02EA50| JSL OverworldPalettesLoader
|02EA54| JSL SetOverworldBackgroundColor
|02EA58| JSR Overworld_CopyPalettesToCache_WithPrep

|02EA5B| RTL

;===================================================================================================

pool FindPartnerWhirlpoolExit

.my_screen_id
|02EA5C| dw $000F ; OW 0F - Lake Hylia whirlpool
|02EA5E| dw $0035 ; OW 35 - Waterfall of Wishing whirlpool
|02EA60| dw $0033 ; OW 33 - Witch whirlpool
|02EA62| dw $0015 ; OW 15 - South of Link's house whirlpool
|02EA64| dw $003F ; OW 3F - Death Mountain whirlpool
|02EA66| dw $0012 ; OW 12 - Lake Hylia falls whirlpool
|02EA68| dw $007F ; OW 7F - Dark witch whirlpool
|02EA6A| dw $0055 ; OW 55 - Dark Lake Hylia falls whirlpool

endpool

;---------------------------------------------------------------------------------------------------

FindPartnerWhirlpoolExit:
|02EA6C| PHB
|02EA6D| PHK
|02EA6E| PLB

|02EA6F| REP #$20

|02EA71| LDX.b #$10

|02EA73| LDA.b $8A

.next_screen
|02EA75| DEX
|02EA76| DEX

|02EA77| CMP.l .my_screen_id,X
|02EA7B| BNE .next_screen

;---------------------------------------------------------------------------------------------------

|02EA7D| TXA
|02EA7E| CLC
|02EA7F| ADC.w #$0012
|02EA82| TAX

|02EA83| STZ.w $04AC

|02EA86| JMP.w LoadTransport

;===================================================================================================

Module09_21:
|02EA89| REP #$20

|02EA8B| LDA.b $84
|02EA8D| PHA

|02EA8E| LDA.b $86
|02EA90| PHA

|02EA91| LDA.b $88
|02EA93| PHA

|02EA94| LDX.b $8A

|02EA96| LDA.l OverworldScreenSize,X
|02EA9A| AND.w #$00FF
|02EA9D| BEQ OverworldBuildMapAndTrigger

|02EA9F| LDA.w #$0390
|02EAA2| STA.b $84

|02EAA4| SEC
|02EAA5| SBC.w #$0400
|02EAA8| AND.w #$0F80
|02EAAB| ASL A
|02EAAC| XBA
|02EAAD| STA.b $88

|02EAAF| LDA.b $84
|02EAB1| SEC
|02EAB2| SBC.w #$0010
|02EAB5| AND.w #$003E
|02EAB8| LSR A
|02EAB9| STA.b $86

|02EABB| BRA OverworldBuildMapAndTrigger

;===================================================================================================

LoadAndBuildOverworldScreen:
|02EABD| REP #$20

|02EABF| LDA.b $84
|02EAC1| PHA

|02EAC2| LDA.b $86
|02EAC4| PHA

|02EAC5| LDA.b $88
|02EAC7| PHA

|02EAC8| LDX.b $8A

|02EACA| LDA.l OverworldScreenSize,X
|02EACE| AND.w #$00FF
|02EAD1| BEQ .big_screen

|02EAD3| LDA.w #$0390
|02EAD6| STA.b $84

|02EAD8| SEC
|02EAD9| SBC.w #$0400
|02EADC| AND.w #$0F80
|02EADF| ASL A
|02EAE0| XBA
|02EAE1| STA.b $88

|02EAE3| LDA.b $84
|02EAE5| SEC
|02EAE6| SBC.w #$0010
|02EAE9| AND.w #$003E
|02EAEC| LSR A
|02EAED| STA.b $86

.big_screen
|02EAEF| SEP #$20

|02EAF1| JSR DrawOverworldQuadrantsAndOverlays

;===================================================================================================

OverworldBuildMapAndTrigger:
|02EAF4| REP #$20

|02EAF6| LDA.w #$FFFF
|02EAF9| STA.b $C8

|02EAFB| STZ.b $CA
|02EAFD| STZ.b $CC

|02EAFF| SEP #$20

|02EB01| JSR BuildOverworldFromMap16

|02EB04| REP #$20

|02EB06| PLA
|02EB07| STA.b $88

|02EB09| PLA
|02EB0A| STA.b $86

|02EB0C| PLA
|02EB0D| STA.b $84

|02EB0F| SEP #$20

|02EB11| LDA.b #$04
|02EB13| STA.b $17
|02EB15| STA.w $0710

|02EB18| INC.b $11

|02EB1A| STZ.b $13

|02EB1C| RTS

;===================================================================================================

Module08_02_LoadAndAdvance:
|02EB1D| JSR LoadAndBuildOverworldScreen

|02EB20| LDA.b #$10
|02EB22| STA.b $10

|02EB24| STZ.b $B0
|02EB26| STZ.b $11

|02EB28| RTS

;===================================================================================================

pool Overworld_HandleOverlaysAndBombDoors

.bombable_door_location
|02EB29| dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000
|02EB39| dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000
|02EB49| dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000
|02EB59| dw $1C0C, $1C0C, $0000, $0000, $0000, $0000, $0000, $0000
|02EB69| dw $1C0C, $1C0C, $0000, $0000, $0000, $0000, $0000, $0000
|02EB79| dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000
|02EB89| dw $0000, $0000, $0000, $0000, $03B0, $180C, $180C, $0288
|02EB99| dw $0000, $0000, $0000, $0000, $0000, $180C, $180C, $0000

|02EBA9| dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000
|02EBB9| dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000
|02EBC9| dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000
|02EBD9| dw $1AB6, $1AB6, $0000, $0E2E, $0E2E, $0000, $0000, $0000
|02EBE9| dw $1AB6, $1AB6, $0000, $0E2E, $0E2E, $0000, $0000, $0000
|02EBF9| dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000
|02EC09| dw $0000, $0000, $0000, $0000, $03B0, $0000, $0000, $0288
|02EC19| dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000

endpool

;===================================================================================================

DrawOverworldQuadrantsAndOverlays:
|02EC29| REP #$30

|02EC2B| JSR Overworld_DecompressAndDrawAllQuadrants

;---------------------------------------------------------------------------------------------------

|02EC2E| LDX.w #$001E
|02EC31| LDA.w #$0DBE

.next
|02EC34| STA.l $7E4000,X
|02EC38| STA.l $7E4020,X ; [USELESS]
|02EC3C| STA.l $7E4020,X
|02EC40| STA.l $7E4040,X
|02EC44| STA.l $7E4060,X

|02EC48| DEX
|02EC49| DEX
|02EC4A| BPL .next

;---------------------------------------------------------------------------------------------------

|02EC4C| LDX.w $0696
|02EC4F| BEQ Overworld_HandleOverlaysAndBombDoors

|02EC51| CPX.w #$FFFF
|02EC54| BEQ Overworld_HandleOverlaysAndBombDoors

|02EC56| CPX.w #$8000
|02EC59| BCS .do_two

|02EC5B| LDA.w #$0D9E
|02EC5E| STA.l $7E2000,X

|02EC62| JSL MemorizeMap16Change

|02EC66| LDA.w #$0DA0
|02EC69| BRA .just_one

.do_two
|02EC6B| TXA
|02EC6C| AND.w #$1FFF
|02EC6F| TAX

|02EC70| LDA.w #$0DAE
|02EC73| JSL MemorizeMap16Change
|02EC77| STA.l $7E2000,X

|02EC7B| LDA.w #$0DAF

.just_one
|02EC7E| STA.l $7E2002,X

|02EC82| INX
|02EC83| INX

|02EC84| JSL MemorizeMap16Change

|02EC88| DEX
|02EC89| DEX

|02EC8A| STZ.w $0696

;===================================================================================================

Overworld_HandleOverlaysAndBombDoors:
; Place some hardcoded rocks for swamp and pod portals
|02EC8D| LDA.w #$020F

|02EC90| LDX.b $8A
|02EC92| CPX.w #$0033 ; OW 33
|02EC95| BNE .not_swamp_portal

|02EC97| STA.l $7E22A8

.not_swamp_portal
|02EC9B| CPX.w #$002F ; OW 2F
|02EC9E| BNE .not_pod_portal

|02ECA0| STA.l $7E2BB2

;---------------------------------------------------------------------------------------------------

.not_pod_portal
|02ECA4| SEP #$30

|02ECA6| LDX.b $8A
|02ECA8| CPX.b #$80 ; SPOW
|02ECAA| BCS .no_overlay

|02ECAC| LDA.l $7EF280,X
|02ECB0| AND.b #$20
|02ECB2| BEQ .no_overlay

|02ECB4| JSL ApplyOverworldOverlay

.no_overlay
|02ECB8| LDX.b $8A

; Bombable entrances
|02ECBA| LDA.l $7EF280,X
|02ECBE| AND.b #$02
|02ECC0| BEQ .exit

|02ECC2| REP #$30

|02ECC4| LDA.b $8A
|02ECC6| ASL A
|02ECC7| TAX

|02ECC8| LDA.l .bombable_door_location,X
|02ECCC| TAX

|02ECCD| LDA.w #$0DAE
|02ECD0| STA.l $7E2000,X

|02ECD4| LDA.w #$0DAF
|02ECD7| STA.l $7E2002,X

|02ECDB| SEP #$30

.exit
|02ECDD| RTS

;===================================================================================================

TriggerAndFinishMapLoadStripe_Vertical:
|02ECDE| SEP #$30

|02ECE0| LDA.b #$08
|02ECE2| STA.w $0416

|02ECE5| LDA.b #$03
|02ECE7| STA.b $17

|02ECE9| REP #$30

|02ECEB| LDY.b $0E

|02ECED| LDA.w #$0080
|02ECF0| STA.w $1100,Y

|02ECF3| INY
|02ECF4| INY
|02ECF5| STY.b $0E

;---------------------------------------------------------------------------------------------------

.next
|02ECF7| JSR BufferAndBuildMap16Stripes_Vertical

|02ECFA| LDA.b $84
|02ECFC| SEC
|02ECFD| SBC.w #$0080
|02ED00| STA.b $84

|02ED02| LDA.b $88
|02ED04| DEC A
|02ED05| AND.w #$001F
|02ED08| STA.b $88

|02ED0A| DEC.b $08
|02ED0C| BNE .next

;---------------------------------------------------------------------------------------------------

|02ED0E| LDA.w #$FFFF
|02ED11| LDX.b $0E
|02ED13| STA.w $1100,X

|02ED16| RTS

;===================================================================================================

TriggerAndFinishMapLoadStripe_Horizontal:
|02ED17| SEP #$30

|02ED19| LDA.b #$02
|02ED1B| STA.w $0416

|02ED1E| LDA.b #$03
|02ED20| STA.b $17

|02ED22| REP #$30

|02ED24| LDY.b $0E

|02ED26| LDA.w #$8040
|02ED29| STA.w $1100,Y

|02ED2C| INY
|02ED2D| INY
|02ED2E| STY.b $0E

;---------------------------------------------------------------------------------------------------

.next
|02ED30| JSR BufferAndBuildMap16Stripes_Horizontal

|02ED33| DEC.b $84
|02ED35| DEC.b $84

|02ED37| LDA.b $86
|02ED39| DEC A
|02ED3A| AND.w #$001F
|02ED3D| STA.b $86

|02ED3F| DEC.b $08
|02ED41| BNE .next

;---------------------------------------------------------------------------------------------------

|02ED43| LDA.w #$FFFF
|02ED46| LDX.b $0E
|02ED48| STA.w $1100,X

|02ED4B| RTS

;===================================================================================================
; TODO figure out
SomeTilemapChange:
|02ED4C| REP #$30

|02ED4E| JSR Overworld_DecompressAndDrawAllQuadrants

|02ED51| LDX.w #$001E
|02ED54| LDA.w #$0DBE

.next
|02ED57| STA.l $7E4000,X
|02ED5B| STA.l $7E4020,X
|02ED5F| STA.l $7E4040,X
|02ED63| STA.l $7E4060,X

|02ED67| DEX
|02ED68| DEX
|02ED69| BPL .next

|02ED6B| JSR Overworld_HandleOverlaysAndBombDoors

|02ED6E| INC.b $11

|02ED70| RTS

;===================================================================================================

pool CreateInitialNewScreenMapToScroll

.vectors_big_screen
|02ED71| dw Overworld_ResetSubmodule
|02ED73| dw CreateInitialOWScreenView_Big_East
|02ED75| dw CreateInitialOWScreenView_Big_West
|02ED77| dw Overworld_ResetSubmodule
|02ED79| dw CreateInitialOWScreenView_Big_South
|02ED7B| dw Overworld_ResetSubmodule
|02ED7D| dw Overworld_ResetSubmodule
|02ED7F| dw Overworld_ResetSubmodule
|02ED81| dw CreateInitialOWScreenView_Big_North

.vectors_small_screen
|02ED83| dw Overworld_ResetSubmodule
|02ED85| dw CreateInitialOWScreenView_Small_East
|02ED87| dw CreateInitialOWScreenView_Small_West
|02ED89| dw Overworld_ResetSubmodule
|02ED8B| dw CreateInitialOWScreenView_Small_South
|02ED8D| dw Overworld_ResetSubmodule
|02ED8F| dw Overworld_ResetSubmodule
|02ED91| dw Overworld_ResetSubmodule
|02ED93| dw CreateInitialOWScreenView_Small_North

endpool

;---------------------------------------------------------------------------------------------------

CreateInitialNewScreenMapToScroll:
|02ED95| SEP #$30

|02ED97| LDX.b $8A

|02ED99| LDA.l OverworldScreenSize,X
|02ED9D| BNE .small_screen

|02ED9F| LDA.w $0416
|02EDA2| ASL A
|02EDA3| TAX

|02EDA4| JMP.w (.vectors_big_screen,X)

;---------------------------------------------------------------------------------------------------

.small_screen
|02EDA7| LDA.w $0416
|02EDAA| ASL A
|02EDAB| TAX

|02EDAC| JMP.w (.vectors_small_screen,X)

;===================================================================================================

UNREACHABLE_02EDAF:
|02EDAF| LDA.b $84
|02EDB1| SEC
|02EDB2| SBC.w #$0400
|02EDB5| AND.w #$0F80
|02EDB8| ASL A
|02EDB9| XBA
|02EDBA| AND.w #$001F
|02EDBD| STA.b $88

|02EDBF| LDA.b $84
|02EDC1| SEC
|02EDC2| SBC.w #$0010
|02EDC5| AND.w #$003E
|02EDC8| LSR A
|02EDC9| AND.w #$001F
|02EDCC| STA.b $86

|02EDCE| RTS

;===================================================================================================

CreateInitialOWScreenView_Big_North:
|02EDCF| REP #$30

|02EDD1| LDA.b $84
|02EDD3| CLC
|02EDD4| ADC.w #$0380
|02EDD7| STA.b $84

|02EDD9| LDA.w #$001F
|02EDDC| STA.b $88

|02EDDE| STZ.b $0E

|02EDE0| LDA.w #$0007
|02EDE3| STA.b $08

|02EDE5| JSR TriggerAndFinishMapLoadStripe_Vertical

|02EDE8| SEP #$30

|02EDEA| RTS

;===================================================================================================

CreateInitialOWScreenView_Big_South:
|02EDEB| REP #$30

|02EDED| LDA.b $84

.adjust_more
|02EDEF| CMP.w #$0080
|02EDF2| BCC .in_range

|02EDF4| SBC.w #$0080
|02EDF7| BRA .adjust_more

;---------------------------------------------------------------------------------------------------

.in_range
|02EDF9| CLC
|02EDFA| ADC.w #$0780
|02EDFD| STA.b $84

|02EDFF| STZ.b $0E

|02EE01| LDA.w #$0007
|02EE04| STA.b $88

|02EE06| LDA.w #$0008
|02EE09| STA.b $08

|02EE0B| JSR TriggerAndFinishMapLoadStripe_Vertical

|02EE0E| LDA.b $88
|02EE10| CLC
|02EE11| ADC.w #$0009
|02EE14| AND.w #$001F
|02EE17| STA.b $88

|02EE19| LDA.b $84
|02EE1B| SEC
|02EE1C| SBC.w #$0B80
|02EE1F| STA.b $84

|02EE21| SEP #$30

|02EE23| RTS

;===================================================================================================

CreateInitialOWScreenView_Big_West:
|02EE24| REP #$30

|02EE26| LDA.b $84
|02EE28| CLC
|02EE29| ADC.w #$000E
|02EE2C| STA.b $84

|02EE2E| LDA.w #$001F
|02EE31| STA.b $86

|02EE33| STZ.b $0E

|02EE35| LDA.w #$0007
|02EE38| STA.b $08

|02EE3A| JSR TriggerAndFinishMapLoadStripe_Horizontal

|02EE3D| SEP #$30

|02EE3F| RTS

;===================================================================================================

CreateInitialOWScreenView_Big_East:
|02EE40| REP #$30

|02EE42| LDA.b $84
|02EE44| SEC
|02EE45| SBC.w #$0060 ; use one value next time
|02EE48| CLC
|02EE49| ADC.w #$001E
|02EE4C| STA.b $84

|02EE4E| STZ.b $0E

|02EE50| LDA.w #$0007
|02EE53| STA.b $86

|02EE55| LDA.w #$0008
|02EE58| STA.b $08

|02EE5A| JSR TriggerAndFinishMapLoadStripe_Horizontal

|02EE5D| LDA.b $86
|02EE5F| CLC
|02EE60| ADC.w #$0009
|02EE63| AND.w #$001F
|02EE66| STA.b $86

|02EE68| LDA.b $84
|02EE6A| SEC
|02EE6B| SBC.w #$002E
|02EE6E| STA.b $84

|02EE70| SEP #$30

|02EE72| RTS

;===================================================================================================

CreateInitialOWScreenView_Small_North:
|02EE73| REP #$30

|02EE75| LDA.b $84
|02EE77| SEC
|02EE78| SBC.w #$0700
|02EE7B| STA.l $7EC172

|02EE7F| LDA.b $86
|02EE81| STA.l $7EC174

|02EE85| LDA.w #$000A
|02EE88| STA.l $7EC176

|02EE8C| LDA.w #$1390
|02EE8F| STA.b $84

|02EE91| STZ.b $86

|02EE93| LDA.w #$001F
|02EE96| STA.b $88

|02EE98| STZ.b $0E

|02EE9A| LDA.w #$0007
|02EE9D| STA.b $08

|02EE9F| JSR TriggerAndFinishMapLoadStripe_Vertical

|02EEA2| SEP #$30

|02EEA4| RTS

;===================================================================================================

CreateInitialOWScreenView_Small_South:
|02EEA5| REP #$30

|02EEA7| LDA.b $84
|02EEA9| AND.w #$00FF
|02EEAC| STA.l $7EC172

|02EEB0| LDA.b $86
|02EEB2| STA.l $7EC174

|02EEB6| LDA.w #$0018
|02EEB9| STA.l $7EC176

|02EEBD| LDA.w #$0790
|02EEC0| STA.b $84

|02EEC2| STZ.b $86

|02EEC4| LDA.w #$0007
|02EEC7| STA.b $88

|02EEC9| STZ.b $0E

|02EECB| LDA.w #$0008
|02EECE| STA.b $08

|02EED0| JSR TriggerAndFinishMapLoadStripe_Vertical

|02EED3| LDA.b $88
|02EED5| CLC
|02EED6| ADC.w #$0009
|02EED9| AND.w #$001F
|02EEDC| STA.b $88

|02EEDE| LDA.b $84
|02EEE0| SEC
|02EEE1| SBC.w #$0B80
|02EEE4| STA.b $84

|02EEE6| SEP #$30

|02EEE8| RTS

;===================================================================================================

CreateInitialOWScreenView_Small_West:
|02EEE9| REP #$30

|02EEEB| LDA.b $84
|02EEED| SEC
|02EEEE| SBC.w #$0020
|02EEF1| STA.l $7EC172

|02EEF5| LDA.w #$0008
|02EEF8| STA.l $7EC174

|02EEFC| LDA.b $88
|02EEFE| STA.l $7EC176

|02EF02| LDA.w #$044E
|02EF05| STA.b $84

|02EF07| STZ.b $88

|02EF09| LDA.w #$001F
|02EF0C| STA.b $86

|02EF0E| STZ.b $0E

|02EF10| LDA.w #$0007
|02EF13| STA.b $08

|02EF15| JSR TriggerAndFinishMapLoadStripe_Horizontal

|02EF18| SEP #$30

|02EF1A| RTS

;===================================================================================================

CreateInitialOWScreenView_Small_East:
|02EF1B| REP #$30

|02EF1D| LDA.b $84
|02EF1F| SEC
|02EF20| SBC.w #$0060
|02EF23| STA.l $7EC172

|02EF27| LDA.w #$0018
|02EF2A| STA.l $7EC174

|02EF2E| LDA.b $88
|02EF30| STA.l $7EC176

|02EF34| LDA.w #$041E
|02EF37| STA.b $84

|02EF39| STZ.b $88

|02EF3B| LDA.w #$0007
|02EF3E| STA.b $86

|02EF40| STZ.b $0E

|02EF42| LDA.w #$0008
|02EF45| STA.b $08

|02EF47| JSR TriggerAndFinishMapLoadStripe_Horizontal

|02EF4A| LDA.b $86
|02EF4C| CLC
|02EF4D| ADC.w #$0009
|02EF50| AND.w #$001F
|02EF53| STA.b $86

|02EF55| LDA.b $84
|02EF57| SEC
|02EF58| SBC.w #$002E
|02EF5B| STA.b $84

|02EF5D| SEP #$30

|02EF5F| RTS

;===================================================================================================

pool OverworldTransitionScrollAndLoadMap

.vectors
|02EF60| dw Overworld_ResetSubmodule
|02EF62| dw BuildFullStripeDuringTransition_East
|02EF64| dw BuildFullStripeDuringTransition_West
|02EF66| dw Overworld_ResetSubmodule
|02EF68| dw BuildFullStripeDuringTransition_South
|02EF6A| dw Overworld_ResetSubmodule
|02EF6C| dw Overworld_ResetSubmodule
|02EF6E| dw Overworld_ResetSubmodule
|02EF70| dw BuildFullStripeDuringTransition_North

endpool

;---------------------------------------------------------------------------------------------------

OverworldTransitionScrollAndLoadMap:
|02EF72| SEP #$30

|02EF74| LDA.w $0416
|02EF77| ASL A
|02EF78| TAX

|02EF79| JMP.w (.vectors,X)

;===================================================================================================

BuildFullStripeDuringTransition_North:
|02EF7C| REP #$30

|02EF7E| STZ.b $0E

|02EF80| JSR CheckForNewlyLoadedMapAreas_North_NewStripe

;===================================================================================================

OverworldTransitionScrollAndLoadMap_BuildStripe:
|02EF83| LDY.b $0E

|02EF85| LDA.w #$FFFF
|02EF88| STA.w $1100,Y
|02EF8B| STA.w $1102,Y

|02EF8E| CPY.w #$0000
|02EF91| BEQ .empty

|02EF93| SEP #$30

|02EF95| LDA.b #$03
|02EF97| STA.b $17

.empty
|02EF99| SEP #$30

|02EF9B| RTS

;===================================================================================================

BuildFullStripeDuringTransition_South:
|02EF9C| REP #$30

|02EF9E| STZ.b $0E

|02EFA0| JSR CheckForNewlyLoadedMapAreas_South_NewStripe

|02EFA3| BRA OverworldTransitionScrollAndLoadMap_BuildStripe

;===================================================================================================

BuildFullStripeDuringTransition_West:
|02EFA5| REP #$30

|02EFA7| STZ.b $0E

|02EFA9| JSR CheckForNewlyLoadedMapAreas_West_NewStripe

|02EFAC| BRA OverworldTransitionScrollAndLoadMap_BuildStripe

;===================================================================================================

BuildFullStripeDuringTransition_East:
|02EFAE| REP #$30

|02EFB0| STZ.b $0E

|02EFB2| JSR CheckForNewlyLoadedMapAreas_East_NewStripe

|02EFB5| BRA OverworldTransitionScrollAndLoadMap_BuildStripe

;===================================================================================================

pool OverworldHandleMapScroll

.vectors
|02EFB7| dw Overworld_ResetSubmodule
|02EFB9| dw MapScroll_East
|02EFBB| dw MapScroll_West
|02EFBD| dw Overworld_ResetSubmodule
|02EFBF| dw MapScroll_South
|02EFC1| dw MapScroll_SouthAndClear
|02EFC3| dw MapScroll_SouthAndClear
|02EFC5| dw Overworld_ResetSubmodule
|02EFC7| dw MapScroll_North
|02EFC9| dw MapScroll_NorthAndClear
|02EFCB| dw MapScroll_NorthAndClear
|02EFCD| dw Overworld_ResetSubmodule
|02EFCF| dw Overworld_ResetSubmodule
|02EFD1| dw Overworld_ResetSubmodule
|02EFD3| dw Overworld_ResetSubmodule
|02EFD5| dw Overworld_ResetSubmodule

endpool

;---------------------------------------------------------------------------------------------------

OverworldHandleMapScroll:
|02EFD7| REP #$30

|02EFD9| STZ.b $0E

|02EFDB| SEP #$30

|02EFDD| LDA.w $0416
|02EFE0| ASL A
|02EFE1| TAX

|02EFE2| JSR (.vectors,X)

|02EFE5| REP #$30

|02EFE7| LDY.b $0E

|02EFE9| LDA.w #$FFFF
|02EFEC| STA.w $1100,Y
|02EFEF| STA.w $1102,Y

|02EFF2| CPY.w #$0000
|02EFF5| BEQ .no_update

|02EFF7| SEP #$30

|02EFF9| LDA.b #$03
|02EFFB| STA.b $17

.no_update
|02EFFD| SEP #$30

|02EFFF| LDA.w $0416
|02F002| STA.w $0418

|02F005| RTS

;===================================================================================================

Overworld_ResetSubmodule:
|02F006| STZ.b $11

|02F008| RTS

;===================================================================================================

MapScroll_East:
|02F009| JSR CheckForNewlyLoadedMapAreas_East

|02F00C| STZ.w $0416

|02F00F| RTS

;===================================================================================================

MapScroll_West:
|02F010| JSR CheckForNewlyLoadedMapAreas_West

|02F013| STZ.w $0416

|02F016| RTS

;===================================================================================================

MapScroll_South:
|02F017| JSR CheckForNewlyLoadedMapAreas_South

|02F01A| STZ.w $0416

|02F01D| RTS

;===================================================================================================

MapScroll_SouthAndClear:
|02F01E| JSR CheckForNewlyLoadedMapAreas_South

|02F021| SEP #$30

|02F023| LDA.w $0416
|02F026| AND.b #$03
|02F028| STA.w $0416

|02F02B| RTS

;===================================================================================================

MapScroll_North:
|02F02C| JSR CheckForNewlyLoadedMapAreas_North

|02F02F| STZ.w $0416

|02F032| RTS

;===================================================================================================

MapScroll_NorthAndClear:
|02F033| JSR CheckForNewlyLoadedMapAreas_North

|02F036| SEP #$30

|02F038| LDA.w $0416
|02F03B| AND.b #$03
|02F03D| STA.w $0416

|02F040| RTS

;===================================================================================================

CheckForNewlyLoadedMapAreas_North:
|02F041| REP #$30

|02F043| LDA.b $84
|02F045| CMP.w #$0080
|02F048| BMI .exit

|02F04A| LDX.b $8A

|02F04C| LDA.l OverworldScreenSize,X
|02F050| AND.w #$00FF
|02F053| BNE .dont_start_stripe

;===================================================================================================

#CheckForNewlyLoadedMapAreas_North_NewStripe:
|02F055| LDY.b $0E

|02F057| LDA.w #$0080
|02F05A| STA.w $1100,Y

|02F05D| INY
|02F05E| INY
|02F05F| STY.b $0E

|02F061| JSR BufferAndBuildMap16Stripes_Vertical

;---------------------------------------------------------------------------------------------------

.dont_start_stripe
|02F064| LDA.b $84
|02F066| SEC
|02F067| SBC.w #$0080
|02F06A| STA.b $84

|02F06C| LDA.b $88
|02F06E| DEC A
|02F06F| AND.w #$001F
|02F072| STA.b $88

.exit
|02F074| RTS

;===================================================================================================

CheckForNewlyLoadedMapAreas_South:
|02F075| REP #$30

|02F077| LDA.b $84
|02F079| CMP.w #$1800
|02F07C| BCS .exit

|02F07E| LDX.b $8A

|02F080| LDA.l OverworldScreenSize,X
|02F084| AND.w #$00FF
|02F087| BNE .dont_start_stripe

;===================================================================================================

#CheckForNewlyLoadedMapAreas_South_NewStripe:
|02F089| LDY.b $0E

|02F08B| LDA.w #$0080
|02F08E| STA.w $1100,Y

|02F091| INY
|02F092| INY
|02F093| STY.b $0E

|02F095| JSR BufferAndBuildMap16Stripes_Vertical

;---------------------------------------------------------------------------------------------------

.dont_start_stripe
|02F098| LDA.b $84
|02F09A| CLC
|02F09B| ADC.w #$0080
|02F09E| STA.b $84

|02F0A0| LDA.b $88
|02F0A2| INC A
|02F0A3| AND.w #$001F
|02F0A6| STA.b $88

.exit
|02F0A8| RTS

;===================================================================================================

CheckForNewlyLoadedMapAreas_West:
|02F0A9| REP #$30

|02F0AB| LDA.b $84

.cull_more
|02F0AD| CMP.w #$0080
|02F0B0| BCC .in_range

|02F0B2| SBC.w #$0080
|02F0B5| BRA .cull_more

.in_range
|02F0B7| CMP.w #$0000
|02F0BA| BEQ .exit

|02F0BC| LDX.b $8A

|02F0BE| LDA.l OverworldScreenSize,X
|02F0C2| AND.w #$00FF
|02F0C5| BNE .dont_start_stripe

;===================================================================================================

#CheckForNewlyLoadedMapAreas_West_NewStripe:
|02F0C7| LDY.b $0E

|02F0C9| LDA.w #$8040
|02F0CC| STA.w $1100,Y

|02F0CF| INY
|02F0D0| INY
|02F0D1| STY.b $0E

|02F0D3| JSR BufferAndBuildMap16Stripes_Horizontal

;---------------------------------------------------------------------------------------------------

.dont_start_stripe
|02F0D6| DEC.b $84
|02F0D8| DEC.b $84

|02F0DA| LDA.b $86
|02F0DC| DEC A
|02F0DD| AND.w #$001F
|02F0E0| STA.b $86

.exit
|02F0E2| RTS

;===================================================================================================

CheckForNewlyLoadedMapAreas_East:
|02F0E3| REP #$30

|02F0E5| LDA.b $84

.cull_more
|02F0E7| CMP.w #$0080
|02F0EA| BCC .in_range

|02F0EC| SBC.w #$0080
|02F0EF| BRA .cull_more

.in_range
|02F0F1| CMP.w #$0060
|02F0F4| BCS .exit

|02F0F6| LDX.b $8A

|02F0F8| LDA.l OverworldScreenSize,X
|02F0FC| AND.w #$00FF
|02F0FF| BNE .dont_start_stripe

;===================================================================================================

#CheckForNewlyLoadedMapAreas_East_NewStripe:
|02F101| LDY.b $0E

|02F103| LDA.w #$8040
|02F106| STA.w $1100,Y

|02F109| INY
|02F10A| INY
|02F10B| STY.b $0E

|02F10D| JSR BufferAndBuildMap16Stripes_Horizontal

;---------------------------------------------------------------------------------------------------

.dont_start_stripe
|02F110| INC.b $84
|02F112| INC.b $84

|02F114| LDA.b $86
|02F116| INC A
|02F117| AND.w #$001F
|02F11A| STA.b $86

.exit
|02F11C| RTS

;===================================================================================================

BufferAndBuildMap16Stripes_Horizontal:
|02F11D| LDA.w $0416
|02F120| AND.w #$0002
|02F123| TAX

|02F124| LDA.b $84
|02F126| SEC
|02F127| SBC.l Map16ReadOffset_Horizontal,X
|02F12B| TAY

|02F12C| LDA.b $88
|02F12E| ASL A
|02F12F| TAX

|02F130| LDA.w #$2000
|02F133| STA.b $00

|02F135| LDA.w #$007E
|02F138| STA.b $02

|02F13A| LDA.w #$0010
|02F13D| STA.b $03

;---------------------------------------------------------------------------------------------------

.next
|02F13F| LDA.b [$00],Y
|02F141| STA.w $0500,X

|02F144| INX
|02F145| INX

|02F146| TXA
|02F147| AND.w #$003F
|02F14A| TAX

|02F14B| TYA
|02F14C| CLC
|02F14D| ADC.w #$0080
|02F150| TAY

|02F151| LDA.b [$00],Y
|02F153| STA.w $0500,X

|02F156| INX
|02F157| INX

|02F158| TXA
|02F159| AND.w #$003F
|02F15C| TAX

|02F15D| TYA
|02F15E| CLC
|02F15F| ADC.w #$0080
|02F162| TAY

|02F163| DEC.b $03
|02F165| BNE .next

;---------------------------------------------------------------------------------------------------

|02F167| STZ.b $00

|02F169| LDA.b $86
|02F16B| STA.b $02

|02F16D| CMP.w #$0010
|02F170| BCC .start_low

|02F172| AND.w #$000F
|02F175| STA.b $02

|02F177| LDA.w #$0400
|02F17A| STA.b $00

.start_low
|02F17C| LDA.b $02
|02F17E| ASL A
|02F17F| CLC
|02F180| ADC.b $00
|02F182| STA.b $00

|02F184| CLC
|02F185| ADC.w #$0800
|02F188| STA.b $0C

|02F18A| LDA.l Map16BufferOffsetLow
|02F18E| JSR CreateMap16Stripes_Horizontal

|02F191| LDA.b $0C
|02F193| STA.b $00

|02F195| LDA.l Map16BufferOffsetHigh

;===================================================================================================

CreateMap16Stripes_Horizontal:
|02F199| STA.b $02

|02F19B| LDY.b $0E

|02F19D| LDA.b $00
|02F19F| STA.w $1100,Y

|02F1A2| INC A
|02F1A3| STA.w $1142,Y

|02F1A6| INY
|02F1A7| INY

|02F1A8| LDA.w #$0010
|02F1AB| STA.b $06

;---------------------------------------------------------------------------------------------------

.next
|02F1AD| LDX.b $02

|02F1AF| LDA.w $0500,X

|02F1B2| INX
|02F1B3| INX
|02F1B4| STX.b $02

|02F1B6| ASL A
|02F1B7| ASL A
|02F1B8| ASL A
|02F1B9| TAX

|02F1BA| LDA.l Map16Definitions+0,X
|02F1BE| STA.w $1100,Y

|02F1C1| LDA.l Map16Definitions+2,X
|02F1C5| STA.w $1142,Y

|02F1C8| INY
|02F1C9| INY

|02F1CA| LDA.l Map16Definitions+4,X
|02F1CE| STA.w $1100,Y

|02F1D1| LDA.l Map16Definitions+6,X
|02F1D5| STA.w $1142,Y

|02F1D8| INY
|02F1D9| INY

|02F1DA| DEC.b $06
|02F1DC| BNE .next

;---------------------------------------------------------------------------------------------------

|02F1DE| TYA
|02F1DF| CLC
|02F1E0| ADC.w #$0042
|02F1E3| STA.b $0E

|02F1E5| RTS

;===================================================================================================

BufferAndBuildMap16Stripes_Vertical:
|02F1E6| LDA.w $0416
|02F1E9| AND.w #$0004
|02F1EC| LSR A
|02F1ED| TAX

|02F1EE| LDA.b $84
|02F1F0| SEC
|02F1F1| SBC.l Map16ReadOffset_Vertical,X
|02F1F5| TAY

|02F1F6| LDA.b $86
|02F1F8| ASL A
|02F1F9| TAX

|02F1FA| LDA.w #$2000
|02F1FD| STA.b $00

|02F1FF| LDA.w #$007E
|02F202| STA.b $02

|02F204| LDA.w #$0010
|02F207| STA.b $03

;---------------------------------------------------------------------------------------------------

.next
|02F209| LDA.b [$00],Y
|02F20B| STA.w $0500,X

|02F20E| INX
|02F20F| INX

|02F210| TXA
|02F211| AND.w #$003F
|02F214| TAX

|02F215| INY
|02F216| INY

|02F217| LDA.b [$00],Y
|02F219| STA.w $0500,X

|02F21C| INX
|02F21D| INX

|02F21E| TXA
|02F21F| AND.w #$003F
|02F222| TAX

|02F223| INY
|02F224| INY

|02F225| DEC.b $03
|02F227| BNE .next

;---------------------------------------------------------------------------------------------------

|02F229| STZ.b $00

|02F22B| LDA.b $88
|02F22D| STA.b $02

|02F22F| CMP.w #$0010
|02F232| BCC .start_low

|02F234| AND.w #$000F
|02F237| STA.b $02

|02F239| LDA.w #$0800
|02F23C| STA.b $00

.start_low
|02F23E| LDA.b $02

|02F240| ASL A ; x64
|02F241| ASL A
|02F242| ASL A
|02F243| ASL A
|02F244| ASL A
|02F245| ASL A

|02F246| CLC
|02F247| ADC.b $00
|02F249| STA.b $00

|02F24B| CLC
|02F24C| ADC.w #$0400
|02F24F| STA.b $0C

|02F251| LDY.b $0E

|02F253| LDA.b $00
|02F255| STA.w $1100,Y

|02F258| INY
|02F259| INY

|02F25A| LDA.l Map16BufferOffsetLow
|02F25E| JSR CreateMap16Stripes_Vertical

|02F261| LDY.b $0E

|02F263| LDA.b $0C
|02F265| STA.w $1100,Y

|02F268| INY
|02F269| INY
|02F26A| LDA.l Map16BufferOffsetHigh

;===================================================================================================

CreateMap16Stripes_Vertical:
|02F26E| STA.b $02

|02F270| LDA.w #$0010
|02F273| STA.b $06

;---------------------------------------------------------------------------------------------------

.next
|02F275| LDX.b $02

|02F277| LDA.w $0500,X

|02F27A| INX
|02F27B| INX
|02F27C| STX.b $02

|02F27E| ASL A ; x8
|02F27F| ASL A
|02F280| ASL A
|02F281| TAX

|02F282| LDA.l Map16Definitions+0,X
|02F286| STA.w $1100,Y

|02F289| LDA.l Map16Definitions+4,X
|02F28D| STA.w $1140,Y

|02F290| INY
|02F291| INY

|02F292| LDA.l Map16Definitions+2,X
|02F296| STA.w $1100,Y

|02F299| LDA.l Map16Definitions+6,X
|02F29D| STA.w $1140,Y

|02F2A0| INY
|02F2A1| INY

|02F2A2| DEC.b $06
|02F2A4| BNE .next

;---------------------------------------------------------------------------------------------------

|02F2A6| TYA
|02F2A7| CLC
|02F2A8| ADC.w #$0040
|02F2AB| STA.b $0E

|02F2AD| RTS

;===================================================================================================

Overworld_DecompressAndDrawAllQuadrants:
|02F2AE| LDA.b $8A
|02F2B0| ASL A
|02F2B1| ADC.b $8A
|02F2B3| TAX

|02F2B4| LDA.w #$007E
|02F2B7| STA.b $02
|02F2B9| STA.b $05

|02F2BB| LDA.w #$2000
|02F2BE| JSR Overworld_DecompressAndDrawOneQuadrant

;---------------------------------------------------------------------------------------------------

|02F2C1| LDA.b $8A
|02F2C3| INC A
|02F2C4| STA.b $00

|02F2C6| ASL A
|02F2C7| ADC.b $00
|02F2C9| TAX

|02F2CA| LDA.w #$2000 ; [WTF] why?
|02F2CD| CLC
|02F2CE| ADC.w #$0040
|02F2D1| JSR Overworld_DecompressAndDrawOneQuadrant

;---------------------------------------------------------------------------------------------------

|02F2D4| LDA.b $8A
|02F2D6| CLC
|02F2D7| ADC.w #$0008
|02F2DA| STA.b $00

|02F2DC| ASL A
|02F2DD| ADC.b $00
|02F2DF| TAX

|02F2E0| LDA.w #$3000
|02F2E3| JSR Overworld_DecompressAndDrawOneQuadrant

;---------------------------------------------------------------------------------------------------

|02F2E6| LDA.b $8A
|02F2E8| CLC
|02F2E9| ADC.w #$0009
|02F2EC| STA.b $00

|02F2EE| ASL A
|02F2EF| ADC.b $00
|02F2F1| TAX

|02F2F2| LDA.w #$3000
|02F2F5| CLC
|02F2F6| ADC.w #$0040

;===================================================================================================

Overworld_DecompressAndDrawOneQuadrant:
|02F2F9| STA.b $00

|02F2FB| CLC
|02F2FC| ADC.w #$0080
|02F2FF| STA.b $03

|02F301| LDA.l OverworldLoad_Map32HPointers+0,X
|02F305| STA.b $C8

|02F307| LDA.l OverworldLoad_Map32HPointers+1,X
|02F30B| STA.b $C9

|02F30D| LDA.b $00
|02F30F| PHA

|02F310| LDA.b $02
|02F312| PHA

|02F313| LDA.b $04
|02F315| PHA

|02F316| LDA.w #$7F4400
|02F319| STA.b $00

|02F31B| LDA.w #$007F
|02F31E| STA.b $02

|02F320| PHX

|02F321| SEP #$30

|02F323| JSR Decompress_bank02

|02F326| REP #$30

|02F328| JSR BlockMoveMap32Chunks_High

|02F32B| PLX

;---------------------------------------------------------------------------------------------------

|02F32C| LDA.l OverworldLoad_Map32LPointers+0,X
|02F330| STA.b $C8

|02F332| LDA.l OverworldLoad_Map32LPointers+1,X
|02F336| STA.b $C9

|02F338| LDA.w #$7F4400
|02F33B| STA.b $00

|02F33D| LDA.w #$007F
|02F340| STA.b $02

|02F342| PHX

|02F343| SEP #$30

|02F345| JSR Decompress_bank02

|02F348| REP #$30

|02F34A| JSR BlockMoveMap32Chunks_Low

|02F34D| PLX

;---------------------------------------------------------------------------------------------------

|02F34E| PLA
|02F34F| STA.b $04

|02F351| PLA
|02F352| STA.b $02

|02F354| PLA
|02F355| STA.b $00

|02F357| LDA.w #$7F4000
|02F35A| STA.b $08

|02F35C| LDA.w #$007F
|02F35F| STA.b $0A

|02F361| SEP #$20

|02F363| PHB

|02F364| LDA.b #$7F
|02F366| PHA
|02F367| PLB

|02F368| REP #$30

|02F36A| LDA.w #$FFFF
|02F36D| STA.w $7F4440

|02F370| STZ.b $06
|02F372| STZ.b $0B

;---------------------------------------------------------------------------------------------------

.next_a
|02F374| LDA.w #$0010
|02F377| STA.b $0D

.next_b
|02F379| LDY.b $0B

|02F37B| LDA.b [$08],Y
|02F37D| ASL A

|02F37E| LDY.b $06
|02F380| JSR ParseMap32Definition

|02F383| STY.b $06

|02F385| INC.b $0B
|02F387| INC.b $0B

|02F389| DEC.b $0D
|02F38B| BNE .next_b

|02F38D| LDA.b $06
|02F38F| CLC
|02F390| ADC.w #$00C0
|02F393| STA.b $06

|02F395| CMP.w #$1000
|02F398| BCC .next_a

|02F39A| PLB

|02F39B| RTS

;===================================================================================================

BlockMoveMap32Chunks_High:
|02F39C| SEP #$20

|02F39E| PHB

|02F39F| LDA.b #$7F
|02F3A1| PHA
|02F3A2| PLB

|02F3A3| STA.b $02

|02F3A5| REP #$30

|02F3A7| LDX.w #$0000
|02F3AA| LDY.w #$0001

|02F3AD| LDA.w #$7F4000
|02F3B0| STA.b $00

|02F3B2| SEP #$20

;---------------------------------------------------------------------------------------------------

.next
|02F3B4| LDA.w $7F4400,X
|02F3B7| STA.b [$00],Y

|02F3B9| INY
|02F3BA| INY

|02F3BB| INX

|02F3BC| LDA.w $7F4400,X
|02F3BF| STA.b [$00],Y

|02F3C1| INY
|02F3C2| INY

|02F3C3| INX

|02F3C4| LDA.w $7F4400,X
|02F3C7| STA.b [$00],Y

|02F3C9| INY
|02F3CA| INY

|02F3CB| INX

|02F3CC| LDA.w $7F4400,X
|02F3CF| STA.b [$00],Y

|02F3D1| INY
|02F3D2| INY

|02F3D3| INX
|02F3D4| CPX.w #$0100
|02F3D7| BCC .next

|02F3D9| REP #$30

|02F3DB| PLB

|02F3DC| RTS

;---------------------------------------------------------------------------------------------------

#BlockMoveMap32Chunks_Low:
|02F3DD| SEP #$20

|02F3DF| PHB

|02F3E0| LDA.b #$7F
|02F3E2| PHA
|02F3E3| PLB

|02F3E4| STA.b $02

|02F3E6| REP #$30

|02F3E8| LDX.w #$0000
|02F3EB| TXY

|02F3EC| LDA.w #$7F4000
|02F3EF| STA.b $00

|02F3F1| SEP #$20

|02F3F3| BRA .next

;===================================================================================================

ParseMap32Definition:
|02F3F5| PHA

|02F3F6| AND.w #$FFF8
|02F3F9| CMP.w $7F4440
|02F3FC| BNE .continue

|02F3FE| JMP.w .skip

;---------------------------------------------------------------------------------------------------

.continue
|02F401| STA.w $7F4440

|02F404| LSR A
|02F405| STA.w $7F4442

|02F408| LSR A
|02F409| ADC.w $7F4442
|02F40C| TAX

|02F40D| SEP #$20

;---------------------------------------------------------------------------------------------------

|02F40F| LDA.l Map32_TopLeft+0,X
|02F413| STA.w $7F4400

|02F416| LDA.l Map32_TopLeft+1,X
|02F41A| STA.w $7F4402

|02F41D| LDA.l Map32_TopLeft+2,X
|02F421| STA.w $7F4404

|02F424| LDA.l Map32_TopLeft+3,X
|02F428| STA.w $7F4406

|02F42B| LDA.l Map32_TopLeft+4,X
|02F42F| PHA

|02F430| LSR A
|02F431| LSR A
|02F432| LSR A
|02F433| LSR A
|02F434| STA.w $7F4401

|02F437| PLA
|02F438| AND.b #$0F
|02F43A| STA.w $7F4403

|02F43D| LDA.l Map32_TopLeft+5,X
|02F441| PHA

|02F442| LSR A
|02F443| LSR A
|02F444| LSR A
|02F445| LSR A
|02F446| STA.w $7F4405

|02F449| PLA
|02F44A| AND.b #$0F
|02F44C| STA.w $7F4407

;---------------------------------------------------------------------------------------------------

|02F44F| LDA.l Map32_TopRight+0,X
|02F453| STA.w $7F4410

|02F456| LDA.l Map32_TopRight+1,X
|02F45A| STA.w $7F4412

|02F45D| LDA.l Map32_TopRight+2,X
|02F461| STA.w $7F4414

|02F464| LDA.l Map32_TopRight+3,X
|02F468| STA.w $7F4416

|02F46B| LDA.l Map32_TopRight+4,X
|02F46F| PHA

|02F470| LSR A
|02F471| LSR A
|02F472| LSR A
|02F473| LSR A
|02F474| STA.w $7F4411

|02F477| PLA
|02F478| AND.b #$0F
|02F47A| STA.w $7F4413

|02F47D| LDA.l Map32_TopRight+5,X
|02F481| PHA

|02F482| LSR A
|02F483| LSR A
|02F484| LSR A
|02F485| LSR A
|02F486| STA.w $7F4415

|02F489| PLA
|02F48A| AND.b #$0F
|02F48C| STA.w $7F4417

;---------------------------------------------------------------------------------------------------

|02F48F| LDA.l Map32_BottomLeft+0,X
|02F493| STA.w $7F4420

|02F496| LDA.l Map32_BottomLeft+1,X
|02F49A| STA.w $7F4422

|02F49D| LDA.l Map32_BottomLeft+2,X
|02F4A1| STA.w $7F4424

|02F4A4| LDA.l Map32_BottomLeft+3,X
|02F4A8| STA.w $7F4426

|02F4AB| LDA.l Map32_BottomLeft+4,X
|02F4AF| PHA

|02F4B0| LSR A
|02F4B1| LSR A
|02F4B2| LSR A
|02F4B3| LSR A
|02F4B4| STA.w $7F4421

|02F4B7| PLA
|02F4B8| AND.b #$0F
|02F4BA| STA.w $7F4423

|02F4BD| LDA.l Map32_BottomLeft+5,X
|02F4C1| PHA

|02F4C2| LSR A
|02F4C3| LSR A
|02F4C4| LSR A
|02F4C5| LSR A
|02F4C6| STA.w $7F4425

|02F4C9| PLA
|02F4CA| AND.b #$0F
|02F4CC| STA.w $7F4427

;---------------------------------------------------------------------------------------------------

|02F4CF| LDA.l Map32_BottomRight+0,X
|02F4D3| STA.w $7F4430

|02F4D6| LDA.l Map32_BottomRight+1,X
|02F4DA| STA.w $7F4432

|02F4DD| LDA.l Map32_BottomRight+2,X
|02F4E1| STA.w $7F4434

|02F4E4| LDA.l Map32_BottomRight+3,X
|02F4E8| STA.w $7F4436

|02F4EB| LDA.l Map32_BottomRight+4,X
|02F4EF| PHA

|02F4F0| LSR A
|02F4F1| LSR A
|02F4F2| LSR A
|02F4F3| LSR A
|02F4F4| STA.w $7F4431

|02F4F7| PLA
|02F4F8| AND.b #$0F
|02F4FA| STA.w $7F4433

|02F4FD| LDA.l Map32_BottomRight+5,X
|02F501| PHA

|02F502| LSR A
|02F503| LSR A
|02F504| LSR A
|02F505| LSR A
|02F506| STA.w $7F4435

|02F509| PLA
|02F50A| AND.b #$0F
|02F50C| STA.w $7F4437

|02F50F| REP #$30

;---------------------------------------------------------------------------------------------------

.skip
|02F511| PLA
|02F512| AND.w #$0007
|02F515| TAX

|02F516| LDA.w $7F4400,X
|02F519| STA.b [$00],Y

|02F51B| LDA.w $7F4420,X
|02F51E| STA.b [$03],Y

|02F520| INY
|02F521| INY

|02F522| LDA.w $7F4410,X
|02F525| STA.b [$00],Y

|02F527| LDA.w $7F4430,X
|02F52A| STA.b [$03],Y

|02F52C| INY
|02F52D| INY

|02F52E| RTS

;===================================================================================================

LoadSubOverlayMap32:
|02F52F| LDA.b $8A
|02F531| ASL A
|02F532| ADC.b $8A
|02F534| TAX

|02F535| LDA.w #$007E
|02F538| STA.b $02
|02F53A| STA.b $05

|02F53C| LDA.w #$7E4000
|02F53F| STA.b $00

|02F541| CLC
|02F542| ADC.w #$0080
|02F545| STA.b $03

|02F547| LDA.l OverworldLoad_Map32HPointers+0,X
|02F54B| STA.b $C8

|02F54D| LDA.l OverworldLoad_Map32HPointers+1,X
|02F551| STA.b $C9

|02F553| LDA.b $00 ; why no PEI?
|02F555| PHA

|02F556| LDA.b $02 ; how disappointing
|02F558| PHA

|02F559| LDA.b $04 ; PEI.b ($04)
|02F55B| PHA

;---------------------------------------------------------------------------------------------------

|02F55C| LDA.w #$7F4400
|02F55F| STA.b $00

|02F561| LDA.w #$007F
|02F564| STA.b $02

|02F566| PHX

|02F567| SEP #$30

|02F569| JSR Decompress_bank02

|02F56C| REP #$30

|02F56E| JSR BlockMoveMap32Chunks_High

|02F571| PLX

;---------------------------------------------------------------------------------------------------

|02F572| LDA.l OverworldLoad_Map32LPointers+0,X
|02F576| STA.b $C8

|02F578| LDA.l OverworldLoad_Map32LPointers+1,X
|02F57C| STA.b $C9

|02F57E| LDA.w #$7F4400
|02F581| STA.b $00

|02F583| LDA.w #$007F
|02F586| STA.b $02

|02F588| PHX

|02F589| SEP #$30

|02F58B| JSR Decompress_bank02

|02F58E| REP #$30

|02F590| JSR BlockMoveMap32Chunks_Low

|02F593| PLX

;---------------------------------------------------------------------------------------------------

|02F594| PLA
|02F595| STA.b $04

|02F597| PLA
|02F598| STA.b $02

|02F59A| PLA
|02F59B| STA.b $00

|02F59D| LDA.w #$7F4000
|02F5A0| STA.b $08

|02F5A2| LDA.w #$007F
|02F5A5| STA.b $0A

;---------------------------------------------------------------------------------------------------

|02F5A7| SEP #$20

|02F5A9| PHB

|02F5AA| LDA.b #$7F
|02F5AC| PHA
|02F5AD| PLB

|02F5AE| REP #$30

|02F5B0| LDA.w #$FFFF
|02F5B3| STA.w $7F4440

|02F5B6| STZ.b $06
|02F5B8| STZ.b $0B

.next_a
|02F5BA| LDA.w #$0010
|02F5BD| STA.b $0D

.next_b
|02F5BF| LDY.b $0B

|02F5C1| LDA.b [$08],Y
|02F5C3| ASL A
|02F5C4| TAX

|02F5C5| LDY.b $06
|02F5C7| JSR ParseMap32Definition

|02F5CA| STY.b $06

|02F5CC| INC.b $0B
|02F5CE| INC.b $0B

|02F5D0| DEC.b $0D
|02F5D2| BNE .next_b

|02F5D4| LDA.b $06
|02F5D6| CLC
|02F5D7| ADC.w #$00C0
|02F5DA| STA.b $06

|02F5DC| CMP.w #$1000
|02F5DF| BCC .next_a

|02F5E1| PLB

|02F5E2| RTS

;===================================================================================================

UNREACHABLE_02F5E3:
|02F5E3| dw $0002, $0004

;===================================================================================================

Map16ReadOffset_Horizontal:
|02F5E7| dw $03D0

Map16ReadOffset_Vertical:
|02F5E9| dw $0410, $F410

; TODO what is this buffer
Map16BufferOffsetLow:
|02F5ED| dw $0000

Map16BufferOffsetHigh:
|02F5EF| dw $0020

;===================================================================================================

OverworldScreenSize:
|02F5F1| db $00, $00, $01, $00, $00, $00, $00, $01
|02F5F9| db $00, $00, $01, $00, $00, $00, $00, $01
|02F601| db $01, $01, $01, $01, $01, $01, $01, $01
|02F609| db $00, $00, $01, $00, $00, $01, $00, $00
|02F611| db $00, $00, $01, $00, $00, $01, $00, $00
|02F619| db $01, $01, $01, $01, $01, $01, $01, $01
|02F621| db $00, $00, $01, $01, $01, $00, $00, $01
|02F629| db $00, $00, $01, $01, $01, $00, $00, $01

|02F631| db $00, $00, $01, $00, $00, $00, $00, $01
|02F639| db $00, $00, $01, $00, $00, $00, $00, $01
|02F641| db $01, $01, $01, $01, $01, $01, $01, $01
|02F649| db $00, $00, $01, $00, $00, $01, $00, $00
|02F651| db $00, $00, $01, $00, $00, $01, $00, $00
|02F659| db $01, $01, $01, $01, $01, $01, $01, $01
|02F661| db $00, $00, $01, $01, $01, $00, $00, $01
|02F669| db $00, $00, $01, $01, $01, $00, $00, $01

|02F671| db $01, $00, $00, $00, $00, $00, $00, $00
|02F679| db $00, $00, $00, $00, $00, $00, $00, $00
|02F681| db $00, $00, $00, $00, $00, $00, $00, $00
|02F689| db $00, $00, $00, $00, $00, $00, $00, $00
|02F691| db $00, $00, $00, $00, $00, $00, $00, $00
|02F699| db $00, $00, $00, $00, $00, $00, $00, $00
|02F6A1| db $00, $00, $00, $00, $00, $00, $00, $00
|02F6A9| db $00, $00, $00, $00, $00, $00, $00, $00

;===================================================================================================

OverworldLoad_Map32HPointers:
|02F6B1| dl OverworldMap32_Screen00_High
|02F6B4| dl OverworldMap32_Screen01_High
|02F6B7| dl OverworldMap32_Screen02_High
|02F6BA| dl OverworldMap32_Screen03_High

|02F6BD| dl OverworldMap32_Screen04_High
|02F6C0| dl OverworldMap32_Screen05_High
|02F6C3| dl OverworldMap32_Screen06_High
|02F6C6| dl OverworldMap32_Screen07_High

|02F6C9| dl OverworldMap32_Screen08_High
|02F6CC| dl OverworldMap32_Screen09_High
|02F6CF| dl OverworldMap32_Screen0A_High
|02F6D2| dl OverworldMap32_Screen0B_High

|02F6D5| dl OverworldMap32_Screen0C_High
|02F6D8| dl OverworldMap32_Screen0D_High
|02F6DB| dl OverworldMap32_Screen0E_High
|02F6DE| dl OverworldMap32_Screen0F_High

|02F6E1| dl OverworldMap32_Screen10_High
|02F6E4| dl OverworldMap32_Screen11_High
|02F6E7| dl OverworldMap32_Screen12_High
|02F6EA| dl OverworldMap32_Screen13_High

|02F6ED| dl OverworldMap32_Screen14_High
|02F6F0| dl OverworldMap32_Screen15_High
|02F6F3| dl OverworldMap32_Screen16_High
|02F6F6| dl OverworldMap32_Screen17_High

|02F6F9| dl OverworldMap32_Screen18_High
|02F6FC| dl OverworldMap32_Screen19_High
|02F6FF| dl OverworldMap32_Screen1A_High
|02F702| dl OverworldMap32_Screen1B_High

|02F705| dl OverworldMap32_Screen1C_High
|02F708| dl OverworldMap32_Screen1D_High
|02F70B| dl OverworldMap32_Screen1E_High
|02F70E| dl OverworldMap32_Screen1F_High

|02F711| dl OverworldMap32_Screen20_High
|02F714| dl OverworldMap32_Screen21_High
|02F717| dl OverworldMap32_Screen22_High
|02F71A| dl OverworldMap32_Screen23_High

|02F71D| dl OverworldMap32_Screen24_High
|02F720| dl OverworldMap32_Screen25_High
|02F723| dl OverworldMap32_Screen26_High
|02F726| dl OverworldMap32_Screen27_High

|02F729| dl OverworldMap32_Screen28_High
|02F72C| dl OverworldMap32_Screen29_High
|02F72F| dl OverworldMap32_Screen2A_High
|02F732| dl OverworldMap32_Screen2B_High

|02F735| dl OverworldMap32_Screen2C_High
|02F738| dl OverworldMap32_Screen2D_High
|02F73B| dl OverworldMap32_Screen2E_High
|02F73E| dl OverworldMap32_Screen2F_High

|02F741| dl OverworldMap32_Screen30_High
|02F744| dl OverworldMap32_Screen31_High
|02F747| dl OverworldMap32_Screen32_High
|02F74A| dl OverworldMap32_Screen33_High

|02F74D| dl OverworldMap32_Screen34_High
|02F750| dl OverworldMap32_Screen35_High
|02F753| dl OverworldMap32_Screen36_High
|02F756| dl OverworldMap32_Screen37_High

|02F759| dl OverworldMap32_Screen38_High
|02F75C| dl OverworldMap32_Screen39_High
|02F75F| dl OverworldMap32_Screen3A_High
|02F762| dl OverworldMap32_Screen3B_High

|02F765| dl OverworldMap32_Screen3C_High
|02F768| dl OverworldMap32_Screen3D_High
|02F76B| dl OverworldMap32_Screen3E_High
|02F76E| dl OverworldMap32_Screen3F_High

;===================================================================================================

|02F771| dl OverworldMap32_Screen40_High
|02F774| dl OverworldMap32_Screen41_High
|02F777| dl OverworldMap32_Screen42_High
|02F77A| dl OverworldMap32_Screen43_High

|02F77D| dl OverworldMap32_Screen44_High
|02F780| dl OverworldMap32_Screen45_High
|02F783| dl OverworldMap32_Screen46_High
|02F786| dl OverworldMap32_Screen47_High

|02F789| dl OverworldMap32_Screen48_High
|02F78C| dl OverworldMap32_Screen49_High
|02F78F| dl OverworldMap32_Screen0A_High
|02F792| dl OverworldMap32_Screen4B_High

|02F795| dl OverworldMap32_Screen4C_High
|02F798| dl OverworldMap32_Screen4D_High
|02F79B| dl OverworldMap32_Screen4E_High
|02F79E| dl OverworldMap32_Screen4F_High

|02F7A1| dl OverworldMap32_Screen50_High
|02F7A4| dl OverworldMap32_Screen11_High
|02F7A7| dl OverworldMap32_Screen12_High
|02F7AA| dl OverworldMap32_Screen53_High

|02F7AD| dl OverworldMap32_Screen54_High
|02F7B0| dl OverworldMap32_Screen55_High
|02F7B3| dl OverworldMap32_Screen56_High
|02F7B6| dl OverworldMap32_Screen17_High

|02F7B9| dl OverworldMap32_Screen58_High
|02F7BC| dl OverworldMap32_Screen59_High
|02F7BF| dl OverworldMap32_Screen5A_High
|02F7C2| dl OverworldMap32_Screen5B_High

|02F7C5| dl OverworldMap32_Screen5C_High
|02F7C8| dl OverworldMap32_Screen5D_High
|02F7CB| dl OverworldMap32_Screen5E_High
|02F7CE| dl OverworldMap32_Screen5F_High

|02F7D1| dl OverworldMap32_Screen60_High
|02F7D4| dl OverworldMap32_Screen61_High
|02F7D7| dl OverworldMap32_Screen62_High
|02F7DA| dl OverworldMap32_Screen63_High

|02F7DD| dl OverworldMap32_Screen64_High
|02F7E0| dl OverworldMap32_Screen25_High
|02F7E3| dl OverworldMap32_Screen66_High
|02F7E6| dl OverworldMap32_Screen67_High

|02F7E9| dl OverworldMap32_Screen68_High
|02F7EC| dl OverworldMap32_Screen69_High
|02F7EF| dl OverworldMap32_Screen2A_High
|02F7F2| dl OverworldMap32_Screen2B_High

|02F7F5| dl OverworldMap32_Screen2C_High
|02F7F8| dl OverworldMap32_Screen6D_High
|02F7FB| dl OverworldMap32_Screen2E_High
|02F7FE| dl OverworldMap32_Screen2F_High

|02F801| dl OverworldMap32_Screen70_High
|02F804| dl OverworldMap32_Screen71_High
|02F807| dl OverworldMap32_Screen72_High
|02F80A| dl OverworldMap32_Screen33_High

|02F80D| dl OverworldMap32_Screen34_High
|02F810| dl OverworldMap32_Screen75_High
|02F813| dl OverworldMap32_Screen76_High
|02F816| dl OverworldMap32_Screen37_High

|02F819| dl OverworldMap32_Screen78_High
|02F81C| dl OverworldMap32_Screen79_High
|02F81F| dl OverworldMap32_Screen7A_High
|02F822| dl OverworldMap32_Screen3B_High

|02F825| dl OverworldMap32_Screen3C_High
|02F828| dl OverworldMap32_Screen7D_High
|02F82B| dl OverworldMap32_Screen7E_High
|02F82E| dl OverworldMap32_Screen3F_High

;===================================================================================================

|02F831| dl OverworldMap32_Screen80_High
|02F834| dl OverworldMap32_Screen81_High
|02F837| dl OverworldMap32_Screen82_High
|02F83A| dl OverworldMap32_Screen00_High

|02F83D| dl OverworldMap32_Screen00_High
|02F840| dl OverworldMap32_Screen00_High
|02F843| dl OverworldMap32_Screen00_High
|02F846| dl OverworldMap32_Screen00_High

|02F849| dl OverworldMap32_Screen88_High
|02F84C| dl OverworldMap32_Screen89_High
|02F84F| dl OverworldMap32_Screen8A_High
|02F852| dl OverworldMap32_Screen00_High

|02F855| dl OverworldMap32_Screen00_High
|02F858| dl OverworldMap32_Screen00_High
|02F85B| dl OverworldMap32_Screen00_High
|02F85E| dl OverworldMap32_Screen00_High

|02F861| dl OverworldMap32_Screen00_High
|02F864| dl OverworldMap32_Screen00_High
|02F867| dl OverworldMap32_Screen00_High
|02F86A| dl OverworldMap32_Screen88_High

|02F86D| dl OverworldMap32_Screen80_High
|02F870| dl OverworldMap32_Screen95_High
|02F873| dl OverworldMap32_Screen96_High
|02F876| dl OverworldMap32_Screen97_High

|02F879| dl OverworldMap32_Screen00_High
|02F87C| dl OverworldMap32_Screen00_High
|02F87F| dl OverworldMap32_Screen00_High
|02F882| dl OverworldMap32_Screen00_High

|02F885| dl OverworldMap32_Screen9C_High
|02F888| dl OverworldMap32_Screen97_High
|02F88B| dl OverworldMap32_Screen9E_High
|02F88E| dl OverworldMap32_Screen9F_High

;===================================================================================================

OverworldLoad_Map32LPointers:
|02F891| dl OverworldMap32_Screen00_Low
|02F894| dl OverworldMap32_Screen01_Low
|02F897| dl OverworldMap32_Screen02_Low
|02F89A| dl OverworldMap32_Screen03_Low

|02F89D| dl OverworldMap32_Screen04_Low
|02F8A0| dl OverworldMap32_Screen05_Low
|02F8A3| dl OverworldMap32_Screen06_Low
|02F8A6| dl OverworldMap32_Screen07_Low

|02F8A9| dl OverworldMap32_Screen08_Low
|02F8AC| dl OverworldMap32_Screen09_Low
|02F8AF| dl OverworldMap32_Screen0A_Low
|02F8B2| dl OverworldMap32_Screen0B_Low

|02F8B5| dl OverworldMap32_Screen0C_Low
|02F8B8| dl OverworldMap32_Screen0D_Low
|02F8BB| dl OverworldMap32_Screen0E_Low
|02F8BE| dl OverworldMap32_Screen0F_Low

|02F8C1| dl OverworldMap32_Screen10_Low
|02F8C4| dl OverworldMap32_Screen11_Low
|02F8C7| dl OverworldMap32_Screen12_Low
|02F8CA| dl OverworldMap32_Screen13_Low

|02F8CD| dl OverworldMap32_Screen14_Low
|02F8D0| dl OverworldMap32_Screen15_Low
|02F8D3| dl OverworldMap32_Screen16_Low
|02F8D6| dl OverworldMap32_Screen17_Low

|02F8D9| dl OverworldMap32_Screen18_Low
|02F8DC| dl OverworldMap32_Screen19_Low
|02F8DF| dl OverworldMap32_Screen1A_Low
|02F8E2| dl OverworldMap32_Screen1B_Low

|02F8E5| dl OverworldMap32_Screen1C_Low
|02F8E8| dl OverworldMap32_Screen1D_Low
|02F8EB| dl OverworldMap32_Screen1E_Low
|02F8EE| dl OverworldMap32_Screen1F_Low

|02F8F1| dl OverworldMap32_Screen20_Low
|02F8F4| dl OverworldMap32_Screen21_Low
|02F8F7| dl OverworldMap32_Screen22_Low
|02F8FA| dl OverworldMap32_Screen23_Low

|02F8FD| dl OverworldMap32_Screen24_Low
|02F900| dl OverworldMap32_Screen25_Low
|02F903| dl OverworldMap32_Screen26_Low
|02F906| dl OverworldMap32_Screen27_Low

|02F909| dl OverworldMap32_Screen28_Low
|02F90C| dl OverworldMap32_Screen29_Low
|02F90F| dl OverworldMap32_Screen2A_Low
|02F912| dl OverworldMap32_Screen2B_Low

|02F915| dl OverworldMap32_Screen2C_Low
|02F918| dl OverworldMap32_Screen2D_Low
|02F91B| dl OverworldMap32_Screen2E_Low
|02F91E| dl OverworldMap32_Screen2F_Low

|02F921| dl OverworldMap32_Screen30_Low
|02F924| dl OverworldMap32_Screen31_Low
|02F927| dl OverworldMap32_Screen32_Low
|02F92A| dl OverworldMap32_Screen33_Low

|02F92D| dl OverworldMap32_Screen34_Low
|02F930| dl OverworldMap32_Screen35_Low
|02F933| dl OverworldMap32_Screen36_Low
|02F936| dl OverworldMap32_Screen37_Low

|02F939| dl OverworldMap32_Screen38_Low
|02F93C| dl OverworldMap32_Screen39_Low
|02F93F| dl OverworldMap32_Screen3A_Low
|02F942| dl OverworldMap32_Screen3B_Low

|02F945| dl OverworldMap32_Screen3C_Low
|02F948| dl OverworldMap32_Screen3D_Low
|02F94B| dl OverworldMap32_Screen3E_Low
|02F94E| dl OverworldMap32_Screen3F_Low

;===================================================================================================

|02F951| dl OverworldMap32_Screen40_Low
|02F954| dl OverworldMap32_Screen41_Low
|02F957| dl OverworldMap32_Screen42_Low
|02F95A| dl OverworldMap32_Screen43_Low

|02F95D| dl OverworldMap32_Screen44_Low
|02F960| dl OverworldMap32_Screen45_Low
|02F963| dl OverworldMap32_Screen46_Low
|02F966| dl OverworldMap32_Screen47_Low

|02F969| dl OverworldMap32_Screen48_Low
|02F96C| dl OverworldMap32_Screen49_Low
|02F96F| dl OverworldMap32_Screen0A_Low
|02F972| dl OverworldMap32_Screen4B_Low

|02F975| dl OverworldMap32_Screen4C_Low
|02F978| dl OverworldMap32_Screen4D_Low
|02F97B| dl OverworldMap32_Screen4E_Low
|02F97E| dl OverworldMap32_Screen4F_Low

|02F981| dl OverworldMap32_Screen50_Low
|02F984| dl OverworldMap32_Screen11_Low
|02F987| dl OverworldMap32_Screen12_Low
|02F98A| dl OverworldMap32_Screen53_Low

|02F98D| dl OverworldMap32_Screen54_Low
|02F990| dl OverworldMap32_Screen55_Low
|02F993| dl OverworldMap32_Screen56_Low
|02F996| dl OverworldMap32_Screen17_Low

|02F999| dl OverworldMap32_Screen58_Low
|02F99C| dl OverworldMap32_Screen59_Low
|02F99F| dl OverworldMap32_Screen5A_Low
|02F9A2| dl OverworldMap32_Screen5B_Low

|02F9A5| dl OverworldMap32_Screen5C_Low
|02F9A8| dl OverworldMap32_Screen5D_Low
|02F9AB| dl OverworldMap32_Screen5E_Low
|02F9AE| dl OverworldMap32_Screen5F_Low

|02F9B1| dl OverworldMap32_Screen60_Low
|02F9B4| dl OverworldMap32_Screen61_Low
|02F9B7| dl OverworldMap32_Screen62_Low
|02F9BA| dl OverworldMap32_Screen63_Low

|02F9BD| dl OverworldMap32_Screen64_Low
|02F9C0| dl OverworldMap32_Screen25_Low
|02F9C3| dl OverworldMap32_Screen66_Low
|02F9C6| dl OverworldMap32_Screen67_Low

|02F9C9| dl OverworldMap32_Screen68_Low
|02F9CC| dl OverworldMap32_Screen69_Low
|02F9CF| dl OverworldMap32_Screen2A_Low
|02F9D2| dl OverworldMap32_Screen2B_Low

|02F9D5| dl OverworldMap32_Screen2C_Low
|02F9D8| dl OverworldMap32_Screen6D_Low
|02F9DB| dl OverworldMap32_Screen2E_Low
|02F9DE| dl OverworldMap32_Screen2F_Low

|02F9E1| dl OverworldMap32_Screen70_Low
|02F9E4| dl OverworldMap32_Screen71_Low
|02F9E7| dl OverworldMap32_Screen72_Low
|02F9EA| dl OverworldMap32_Screen33_Low

|02F9ED| dl OverworldMap32_Screen34_Low
|02F9F0| dl OverworldMap32_Screen75_Low
|02F9F3| dl OverworldMap32_Screen76_Low
|02F9F6| dl OverworldMap32_Screen37_Low

|02F9F9| dl OverworldMap32_Screen78_Low
|02F9FC| dl OverworldMap32_Screen79_Low
|02F9FF| dl OverworldMap32_Screen7A_Low
|02FA02| dl OverworldMap32_Screen3B_Low

|02FA05| dl OverworldMap32_Screen3C_Low
|02FA08| dl OverworldMap32_Screen7D_Low
|02FA0B| dl OverworldMap32_Screen7E_Low
|02FA0E| dl OverworldMap32_Screen3F_Low

;===================================================================================================

|02FA11| dl OverworldMap32_Screen80_Low
|02FA14| dl OverworldMap32_Screen81_Low
|02FA17| dl OverworldMap32_Screen82_Low
|02FA1A| dl OverworldMap32_Screen00_Low

|02FA1D| dl OverworldMap32_Screen00_Low
|02FA20| dl OverworldMap32_Screen00_Low
|02FA23| dl OverworldMap32_Screen00_Low
|02FA26| dl OverworldMap32_Screen00_Low

|02FA29| dl OverworldMap32_Screen88_Low
|02FA2C| dl OverworldMap32_Screen89_Low
|02FA2F| dl OverworldMap32_Screen8A_Low
|02FA32| dl OverworldMap32_Screen00_Low

|02FA35| dl OverworldMap32_Screen00_Low
|02FA38| dl OverworldMap32_Screen00_Low
|02FA3B| dl OverworldMap32_Screen00_Low
|02FA3E| dl OverworldMap32_Screen00_Low

|02FA41| dl OverworldMap32_Screen00_Low
|02FA44| dl OverworldMap32_Screen00_Low
|02FA47| dl OverworldMap32_Screen00_Low
|02FA4A| dl OverworldMap32_Screen88_Low

|02FA4D| dl OverworldMap32_Screen80_Low
|02FA50| dl OverworldMap32_Screen95_Low
|02FA53| dl OverworldMap32_Screen96_Low
|02FA56| dl OverworldMap32_Screen97_Low

|02FA59| dl OverworldMap32_Screen00_Low
|02FA5C| dl OverworldMap32_Screen00_Low
|02FA5F| dl OverworldMap32_Screen00_Low
|02FA62| dl OverworldMap32_Screen00_Low

|02FA65| dl OverworldMap32_Screen9C_Low
|02FA68| dl OverworldMap32_Screen97_Low
|02FA6B| dl OverworldMap32_Screen9E_Low
|02FA6E| dl OverworldMap32_Screen9F_Low

;===================================================================================================

LoadOverworldOverlay:
|02FA71| REP #$30

|02FA73| JSR LoadSubOverlayMap32

|02FA76| LDA.w #$1000
|02FA79| STA.b $CC

|02FA7B| SEP #$30

|02FA7D| JSR BuildBGOverlayFromMap16

|02FA80| LDA.b #$04
|02FA82| STA.b $17
|02FA84| STA.w $0710

|02FA87| INC.b $11

|02FA89| RTS

;===================================================================================================

BuildBGOverlayFromMap16:
|02FA8A| PHB

|02FA8B| LDA.b #^Map16Definitions
|02FA8D| PHA
|02FA8E| PLB

|02FA8F| REP #$30

|02FA91| LDA.w #$7E4000
|02FA94| STA.b $04

|02FA96| LDA.w #$007E

|02FA99| BRA .start

;===================================================================================================

#BuildOverworldFromMap16:
|02FA9B| PHB

|02FA9C| LDA.b #^Map16Definitions
|02FA9E| PHA
|02FA9F| PLB

|02FAA0| REP #$30

|02FAA2| LDA.w #$7E2000
|02FAA5| STA.b $04

|02FAA7| LDA.w #$007E

;===================================================================================================

.start
|02FAAA| STA.b $06

|02FAAC| LDA.b $84
|02FAAE| CLC
|02FAAF| ADC.w #$1000
|02FAB2| STA.b $84

|02FAB4| STZ.b $0A
|02FAB6| STZ.b $0E

|02FAB8| LDA.w #$0010
|02FABB| STA.b $08

;---------------------------------------------------------------------------------------------------

.next
|02FABD| JSR CopyMap16ToBuffer

|02FAC0| LDA.b $84
|02FAC2| SEC
|02FAC3| SBC.w #$0080
|02FAC6| STA.b $84

|02FAC8| LDA.b $88
|02FACA| DEC A
|02FACB| AND.w #$001F
|02FACE| STA.b $88

|02FAD0| JSR CopyMap16ToBuffer

|02FAD3| LDA.b $84
|02FAD5| SEC
|02FAD6| SBC.w #$0080
|02FAD9| STA.b $84

|02FADB| LDA.b $88
|02FADD| DEC A
|02FADE| AND.w #$001F
|02FAE1| STA.b $88

|02FAE3| DEC.b $08
|02FAE5| BNE .next

;---------------------------------------------------------------------------------------------------

|02FAE7| SEP #$30

|02FAE9| PLB

|02FAEA| RTS

;===================================================================================================

CopyMap16ToBuffer:
|02FAEB| LDA.b $84
|02FAED| SEC
|02FAEE| SBC.w #$0410
|02FAF1| AND.w #$1FFF
|02FAF4| TAY

|02FAF5| LDA.b $86
|02FAF7| ASL A
|02FAF8| TAX

|02FAF9| LDA.w #$0010
|02FAFC| STA.b $00

;---------------------------------------------------------------------------------------------------

.next
|02FAFE| LDA.b [$04],Y
|02FB00| STA.w $0500,X

|02FB03| INX
|02FB04| INX

|02FB05| TXA
|02FB06| AND.w #$003F
|02FB09| TAX

|02FB0A| INY
|02FB0B| INY

|02FB0C| TYA
|02FB0D| AND.w #$1FFF
|02FB10| TAY

|02FB11| LDA.b [$04],Y
|02FB13| STA.w $0500,X

|02FB16| INX
|02FB17| INX

|02FB18| TXA
|02FB19| AND.w #$003F
|02FB1C| TAX

|02FB1D| INY
|02FB1E| INY

|02FB1F| TYA
|02FB20| AND.w #$1FFF
|02FB23| TAY

|02FB24| DEC.b $00
|02FB26| BNE .next

;---------------------------------------------------------------------------------------------------

|02FB28| LDA.b $88
|02FB2A| STA.b $02

|02FB2C| CMP.w #$0010
|02FB2F| BCC .not_lower_half_yet

|02FB31| AND.w #$000F
|02FB34| STA.b $02

|02FB36| LDA.w #$0800
|02FB39| STA.b $00

.not_lower_half_yet
|02FB3B| LDA.b $02

|02FB3D| ASL A ; x64
|02FB3E| ASL A
|02FB3F| ASL A
|02FB40| ASL A
|02FB41| ASL A
|02FB42| ASL A

|02FB43| CLC
|02FB44| ADC.b $00
|02FB46| STA.b $00

|02FB48| LDA.l Map16BufferOffsetLow
|02FB4C| JSR CopyOneMap16Segment

|02FB4F| LDA.b $00
|02FB51| CLC
|02FB52| ADC.w #$0400
|02FB55| STA.b $00

|02FB57| LDA.l Map16BufferOffsetHigh

;===================================================================================================

CopyOneMap16Segment:
|02FB5B| STA.b $02

|02FB5D| LDX.b $0A

|02FB5F| LDA.b $00
|02FB61| ORA.b $CC
|02FB63| STA.l $7F4000,X

|02FB67| INX
|02FB68| INX
|02FB69| STX.b $0A

|02FB6B| LDX.b $0E

|02FB6D| LDA.w #$0010
|02FB70| STA.b $0C

;---------------------------------------------------------------------------------------------------

.next
|02FB72| LDY.b $02

|02FB74| LDA.w $0500,Y

|02FB77| INY
|02FB78| INY
|02FB79| STY.b $02

|02FB7B| ASL A
|02FB7C| ASL A
|02FB7D| ASL A
|02FB7E| TAY

|02FB7F| LDA.w Map16Definitions+0,Y
|02FB82| STA.l $7F2000,X

|02FB86| LDA.w Map16Definitions+4,Y
|02FB89| STA.l $7F2040,X

|02FB8D| INX
|02FB8E| INX

|02FB8F| LDA.w Map16Definitions+2,Y
|02FB92| STA.l $7F2000,X

|02FB96| LDA.w Map16Definitions+6,Y
|02FB99| STA.l $7F2040,X

|02FB9D| INX
|02FB9E| INX

|02FB9F| DEC.b $0C
|02FBA1| BNE .next

;---------------------------------------------------------------------------------------------------

|02FBA3| TXA
|02FBA4| CLC
|02FBA5| ADC.w #$0040
|02FBA8| STA.b $0E

|02FBAA| RTS

;===================================================================================================

RecoverTilesFromMirrorBonk:
|02FBAB| REP #$30

|02FBAD| LDA.w $04AC
|02FBB0| BEQ .exit

|02FBB2| LDX.w #$0000
|02FBB5| STX.b $00

;---------------------------------------------------------------------------------------------------

.next
|02FBB7| LDX.b $00

|02FBB9| LDA.l $7EF800,X
|02FBBD| TAY

|02FBBE| LDA.l $7EFA00,X
|02FBC2| TYX

|02FBC3| STA.l $7E2000,X

|02FBC7| INC.b $00
|02FBC9| INC.b $00

|02FBCB| LDA.b $00
|02FBCD| CMP.w $04AC
|02FBD0| BNE .next

;---------------------------------------------------------------------------------------------------

.exit
|02FBD2| SEP #$30

|02FBD4| RTS

;===================================================================================================

DecompressEnemyDamageSubclasses:
|02FBD5| LDA.b #$7F4000
|02FBD7| STA.b $00

|02FBD9| LDA.b #>$7F4000
|02FBDB| STA.b $01

|02FBDD| LDA.b #^$7F4000
|02FBDF| STA.b $02

|02FBE1| LDA.b #EnemyDamageCompressed
|02FBE3| STA.b $C8

|02FBE5| LDA.b #>EnemyDamageCompressed
|02FBE7| STA.b $C9

|02FBE9| LDA.b #^EnemyDamageCompressed
|02FBEB| STA.b $CA

;---------------------------------------------------------------------------------------------------

|02FBED| JSR Decompress_bank02

|02FBF0| LDA.b #$7F4000
|02FBF2| STA.b $00

|02FBF4| LDA.b #>$7F4000
|02FBF6| STA.b $01

|02FBF8| LDA.b #^$7F4000
|02FBFA| STA.b $02

|02FBFC| REP #$10

|02FBFE| LDX.w #$0000
|02FC01| TXY

;---------------------------------------------------------------------------------------------------

; split each entry into the constituent nibbles
.next
|02FC02| LDA.b [$00],Y
|02FC04| PHA

|02FC05| LSR A
|02FC06| LSR A
|02FC07| LSR A
|02FC08| LSR A
|02FC09| STA.l $7F6000+0,X

|02FC0D| PLA
|02FC0E| AND.b #$0F
|02FC10| STA.l $7F6000+1,X

|02FC14| INY

|02FC15| INX
|02FC16| INX
|02FC17| CPX.w #$1000
|02FC1A| BCC .next

;---------------------------------------------------------------------------------------------------

|02FC1C| SEP #$30

|02FC1E| RTL

;===================================================================================================

Decompress_bank02:
|02FC1F| REP #$10

|02FC21| LDY.w #$0000

.next_byte
|02FC24| JSR .read_next_byte

; Stop at $FF
|02FC27| CMP.b #$FF
|02FC29| BNE .continue

|02FC2B| SEP #$10

|02FC2D| RTS

;---------------------------------------------------------------------------------------------------

.continue
|02FC2E| STA.b $CD

|02FC30| AND.b #$E0
|02FC32| CMP.b #$E0
|02FC34| BEQ .expanded

|02FC36| PHA

|02FC37| LDA.b $CD

|02FC39| REP #$20

|02FC3B| AND.w #$001F
|02FC3E| BRA .normal

;---------------------------------------------------------------------------------------------------

.expanded
|02FC40| LDA.b $CD
|02FC42| ASL A
|02FC43| ASL A
|02FC44| ASL A
|02FC45| AND.b #$E0
|02FC47| PHA

|02FC48| LDA.b $CD
|02FC4A| AND.b #$03
|02FC4C| XBA

|02FC4D| JSR .read_next_byte

|02FC50| REP #$20

;---------------------------------------------------------------------------------------------------

.normal
|02FC52| INC A
|02FC53| STA.b $CB

|02FC55| SEP #$20

|02FC57| PLA
|02FC58| BEQ .raw_copy
|02FC5A| BMI .copy

|02FC5C| ASL A
|02FC5D| BPL .repeating8

|02FC5F| ASL A
|02FC60| BPL .repeating16

;---------------------------------------------------------------------------------------------------

|02FC62| JSR .read_next_byte

|02FC65| LDX.b $CB

.next_incremental
|02FC67| STA.b [$00],Y

|02FC69| INC A
|02FC6A| INY

|02FC6B| DEX
|02FC6C| BNE .next_incremental

|02FC6E| BRA .next_byte

;---------------------------------------------------------------------------------------------------

.raw_copy
|02FC70| JSR .read_next_byte

|02FC73| STA.b [$00],Y
|02FC75| INY

|02FC76| LDX.b $CB
|02FC78| DEX
|02FC79| STX.b $CB

|02FC7B| BNE .raw_copy

|02FC7D| BRA .next_byte

;---------------------------------------------------------------------------------------------------

.repeating8
|02FC7F| JSR .read_next_byte

|02FC82| LDX.b $CB

.next_repeating8
|02FC84| STA.b [$00],Y

|02FC86| INY

|02FC87| DEX
|02FC88| BNE .next_repeating8

|02FC8A| BRA .next_byte

;---------------------------------------------------------------------------------------------------

.repeating16
|02FC8C| JSR .read_next_byte
|02FC8F| XBA

|02FC90| JSR .read_next_byte
|02FC93| LDX.b $CB

.next_repeating16
|02FC95| XBA
|02FC96| STA.b [$00],Y

|02FC98| INY

|02FC99| DEX
|02FC9A| BEQ .done16

|02FC9C| XBA
|02FC9D| STA.b [$00],Y

|02FC9F| INY

|02FCA0| DEX
|02FCA1| BNE .next_repeating16

.done16
|02FCA3| JMP.w .next_byte

;---------------------------------------------------------------------------------------------------

.copy
|02FCA6| JSR .read_next_byte
|02FCA9| XBA

|02FCAA| JSR .read_next_byte
|02FCAD| TAX

.next_copy
|02FCAE| PHY
|02FCAF| TXY

|02FCB0| LDA.b [$00],Y

|02FCB2| TYX
|02FCB3| PLY

.do_copy
|02FCB4| STA.b [$00],Y

|02FCB6| INY
|02FCB7| INX

|02FCB8| REP #$20

|02FCBA| DEC.b $CB

|02FCBC| SEP #$20

|02FCBE| BNE .next_copy

|02FCC0| JMP.w .next_byte

;---------------------------------------------------------------------------------------------------

.read_next_byte
|02FCC3| LDA.b [$C8]

|02FCC5| LDX.b $C8

; Check for -1
|02FCC7| INX
|02FCC8| BNE .exit

|02FCCA| LDX.b #$00
|02FCCC| BRA .do_copy

.unreachable ; weird
|02FCCE| DEX

.exit
|02FCCF| STX.b $C8

|02FCD1| RTS

;===================================================================================================
; FREE ROM: 0x2E
;===================================================================================================
NULL_02FCD2:
|02FCD2| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|02FCDA| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|02FCE2| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|02FCEA| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|02FCF2| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|02FCFA| db $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================
; Not sure how this ended up here
;===================================================================================================
UNREACHABLE_02FD00:
|02FD00| LDA.b #$01
|02FD02| STA.b $EE

;===================================================================================================

AssertTranslucencySwap:
|02FD04| LDA.b #$01
|02FD06| STA.w $0ABD

.apply
|02FD09| REP #$21

|02FD0B| LDX.b #$00

.copy_next
|02FD0D| LDA.l $7EC400,X
|02FD11| PHA

|02FD12| LDA.l $7EC4E0,X
|02FD16| STA.l $7EC400,X
|02FD1A| STA.l $7EC600,X

|02FD1E| PLA
|02FD1F| STA.l $7EC4E0,X
|02FD23| STA.l $7EC6E0,X

|02FD27| LDA.l $7EC410,X
|02FD2B| PHA

|02FD2C| LDA.l $7EC4F0,X
|02FD30| STA.l $7EC410,X
|02FD34| STA.l $7EC610,X

|02FD38| PLA
|02FD39| STA.l $7EC4F0,X
|02FD3D| STA.l $7EC6F0,X

|02FD41| LDA.l $7EC4B0,X
|02FD45| PHA

|02FD46| LDA.l $7EC470,X
|02FD4A| STA.l $7EC4B0,X
|02FD4E| STA.l $7EC6B0,X

|02FD52| PLA
|02FD53| STA.l $7EC470,X
|02FD57| STA.l $7EC670,X

|02FD5B| INX
|02FD5C| INX
|02FD5D| CPX.b #$10
|02FD5F| BNE .copy_next

;---------------------------------------------------------------------------------------------------

|02FD61| SEP #$20

|02FD63| INC.b $15

|02FD65| RTL

;---------------------------------------------------------------------------------------------------

#UNREACHABLE_02FD66:
|02FD66| STZ.b $EE

;---------------------------------------------------------------------------------------------------

#RevertTranslucencySwap:
|02FD68| STZ.w $0ABD

|02FD6B| BRA .apply

;===================================================================================================

RefreshEquipmentPalettes_sword_and_mail:
|02FD6D| REP #$20

|02FD6F| LDA.l $7EF359
|02FD73| STA.b $0C

|02FD75| LDA.l $7EF35B
|02FD79| AND.w #$00FF
|02FD7C| BRA RefreshEquipmentPalettes

;===================================================================================================

RefreshEquipmentPalettes_zap:
|02FD7E| REP #$20

|02FD80| LDA.w #$0202
|02FD83| STA.b $0C

|02FD85| LDA.w #$0404
|02FD88| BRA RefreshEquipmentPalettes

;===================================================================================================

RefreshEquipmentPalettes_bunny:
|02FD8A| REP #$20

|02FD8C| LDA.l $7EF359
|02FD90| STA.b $0C

|02FD92| LDA.w #$0303

;===================================================================================================

RefreshEquipmentPalettes:
|02FD95| STA.b $0E

|02FD97| LDA.w #^PaletteData
|02FD9A| STA.b $02

|02FD9C| LDX.b $0C

|02FD9E| LDA.l SwordPaletteOffsets,X
|02FDA2| AND.w #$00FF
|02FDA5| CLC
|02FDA6| ADC.w #PaletteData.sword_00

|02FDA9| REP #$10

|02FDAB| LDX.w #$01B2
|02FDAE| LDY.w #$0002
|02FDB1| JSR .copy_palette

;---------------------------------------------------------------------------------------------------

|02FDB4| SEP #$10

|02FDB6| LDX.b $0D

|02FDB8| LDA.l ShieldPaletteOffsets,X
|02FDBC| AND.w #$00FF
|02FDBF| CLC
|02FDC0| ADC.w #PaletteData.shield_00

|02FDC3| REP #$10

|02FDC5| LDX.w #$01B8
|02FDC8| LDY.w #$0003
|02FDCB| JSR .copy_palette

;---------------------------------------------------------------------------------------------------

|02FDCE| SEP #$10

|02FDD0| LDX.b $0E

|02FDD2| LDA.l LinkMailPalettesOffsets,X
|02FDD6| AND.w #$00FF
|02FDD9| ASL A
|02FDDA| CLC
|02FDDB| ADC.w #PaletteData.link_00

|02FDDE| REP #$10

|02FDE0| LDX.w #$01E2
|02FDE3| LDY.w #$000E
|02FDE6| JSR .copy_palette

;---------------------------------------------------------------------------------------------------

|02FDE9| SEP #$30

|02FDEB| INC.b $15

|02FDED| RTL

;---------------------------------------------------------------------------------------------------

.copy_palette
|02FDEE| STA.b $00

.next_color
|02FDF0| LDA.b [$00]
|02FDF2| STA.l $7EC300,X
|02FDF6| STA.l $7EC500,X

|02FDFA| INC.b $00
|02FDFC| INC.b $00

|02FDFE| INX
|02FDFF| INX

|02FE00| DEY
|02FE01| BPL .next_color

|02FE03| RTS

;===================================================================================================

PaletteFilter_Oversaturation:
|02FE04| REP #$20

|02FE06| LDX.b #$00

;---------------------------------------------------------------------------------------------------

.next_color
|02FE08| LDA.l $7EC340,X
|02FE0C| JSR OversaturateColor
|02FE0F| STA.l $7EC540,X

|02FE13| LDA.l $7EC350,X
|02FE17| JSR OversaturateColor
|02FE1A| STA.l $7EC550,X

|02FE1E| LDA.l $7EC360,X
|02FE22| JSR OversaturateColor
|02FE25| STA.l $7EC560,X

|02FE29| LDA.l $7EC370,X
|02FE2D| JSR OversaturateColor
|02FE30| STA.l $7EC570,X

|02FE34| LDA.l $7EC380,X
|02FE38| JSR OversaturateColor
|02FE3B| STA.l $7EC580,X

|02FE3F| LDA.l $7EC390,X
|02FE43| JSR OversaturateColor
|02FE46| STA.l $7EC590,X

|02FE4A| LDA.l $7EC3A0,X
|02FE4E| JSR OversaturateColor
|02FE51| STA.l $7EC5A0,X

|02FE55| LDA.l $7EC3B0,X
|02FE59| JSR OversaturateColor
|02FE5C| STA.l $7EC5B0,X

|02FE60| LDA.l $7EC3C0,X
|02FE64| JSR OversaturateColor
|02FE67| STA.l $7EC5C0,X

|02FE6B| LDA.l $7EC3D0,X
|02FE6F| JSR OversaturateColor
|02FE72| STA.l $7EC5D0,X

|02FE76| LDA.l $7EC3E0,X
|02FE7A| JSR OversaturateColor
|02FE7D| STA.l $7EC5E0,X

|02FE81| LDA.l $7EC3F0,X
|02FE85| JSR OversaturateColor
|02FE88| STA.l $7EC5F0,X

|02FE8C| INX
|02FE8D| INX
|02FE8E| CPX.b #$10
|02FE90| BEQ .done

|02FE92| JMP.w .next_color

;---------------------------------------------------------------------------------------------------

.done
|02FE95| REP #$10

|02FE97| LDA.l $7EC540
|02FE9B| TAY

|02FE9C| LDA.l $7EC300
|02FEA0| BNE .dont_copy_that

|02FEA2| TAY

.dont_copy_that
|02FEA3| TYA
|02FEA4| STA.l $7EC500

|02FEA8| SEP #$30

|02FEAA| RTL

;===================================================================================================

OversaturateColor:
|02FEAB| STA.b $00

|02FEAD| AND.w #$001F
|02FEB0| CLC
|02FEB1| ADC.w #$000E

|02FEB4| CMP.w #$001F
|02FEB7| BCC .oversaturated_r

|02FEB9| LDA.w #$001F

.oversaturated_r
|02FEBC| STA.b $02

|02FEBE| LDA.b $00
|02FEC0| AND.w #$03E0
|02FEC3| CLC
|02FEC4| ADC.w #$01C0

|02FEC7| CMP.w #$03E0
|02FECA| BCC .oversaturated_g

|02FECC| LDA.w #$03E0

.oversaturated_g
|02FECF| STA.b $04

|02FED1| LDA.b $00
|02FED3| AND.w #$7C00
|02FED6| CLC
|02FED7| ADC.w #$3800

|02FEDA| CMP.w #$7C00
|02FEDD| BCC .oversaturated_b

|02FEDF| LDA.w #$7C00

.oversaturated_b
|02FEE2| ORA.b $02
|02FEE4| ORA.b $04

|02FEE6| RTS

;===================================================================================================

RestorePalettesAfterFlash:
|02FEE7| REP #$20

|02FEE9| LDX.b #$00

;---------------------------------------------------------------------------------------------------

.next_color
|02FEEB| LDA.l $7EC340,X
|02FEEF| STA.l $7EC540,X

|02FEF3| LDA.l $7EC350,X
|02FEF7| STA.l $7EC550,X

|02FEFB| LDA.l $7EC360,X
|02FEFF| STA.l $7EC560,X

|02FF03| LDA.l $7EC370,X
|02FF07| STA.l $7EC570,X

|02FF0B| LDA.l $7EC380,X
|02FF0F| STA.l $7EC580,X

|02FF13| LDA.l $7EC390,X
|02FF17| STA.l $7EC590,X

|02FF1B| LDA.l $7EC3A0,X
|02FF1F| STA.l $7EC5A0,X

|02FF23| LDA.l $7EC3B0,X
|02FF27| STA.l $7EC5B0,X

|02FF2B| LDA.l $7EC3C0,X
|02FF2F| STA.l $7EC5C0,X

|02FF33| LDA.l $7EC3D0,X
|02FF37| STA.l $7EC5D0,X

|02FF3B| LDA.l $7EC3E0,X
|02FF3F| STA.l $7EC5E0,X

|02FF43| LDA.l $7EC3F0,X
|02FF47| STA.l $7EC5F0,X

|02FF4B| INX
|02FF4C| INX
|02FF4D| CPX.b #$10
|02FF4F| BNE .next_color

|02FF51| LDA.l $7EC540
|02FF55| STA.l $7EC500

|02FF59| SEP #$30

;===================================================================================================

RestoreFixedColor:
|02FF5B| LDA.b $1B
|02FF5D| BNE .exit

|02FF5F| REP #$10

|02FF61| LDX.w #$4020 ; Fixed color RGB: #000000
|02FF64| STX.b $9C

|02FF66| LDX.w #$8040
|02FF69| STX.b $9D

|02FF6B| LDX.w #$4F33 ; Fixed color RGB: #987848
|02FF6E| LDY.w #$894F

|02FF71| LDA.b $8A ; OW 00
|02FF73| BEQ .exit

|02FF75| CMP.b #$40 ; OW 40
|02FF77| BEQ .exit

|02FF79| CMP.b #$5B ; OW 5B
|02FF7B| BEQ .set_fixedcol

|02FF7D| LDX.w #$4C26 ; Fixed color RGB: #306060
|02FF80| LDY.w #$8C4C

|02FF83| CMP.b #$03 ; OW 03
|02FF85| BEQ .set_fixedcol

|02FF87| CMP.b #$05 ; OW 05
|02FF89| BEQ .set_fixedcol

|02FF8B| CMP.b #$07 ; OW 07
|02FF8D| BEQ .set_fixedcol

|02FF8F| LDX.w #$4A26 ; Fixed color RGB: #305038
|02FF92| LDY.w #$874A

|02FF95| CMP.b #$43 ; OW 43
|02FF97| BEQ .set_fixedcol

|02FF99| CMP.b #$45 ; OW 45
|02FF9B| BEQ .set_fixedcol

|02FF9D| CMP.b #$47 ; OW 47
|02FF9F| BNE .exit

.set_fixedcol
|02FFA1| STX.b $9C
|02FFA3| STY.b $9D

.exit
|02FFA5| SEP #$10

|02FFA7| RTL

;===================================================================================================

RestoreBackgroundPalettes:
|02FFA8| REP #$20

|02FFAA| LDX.b #$7E

.next_color
|02FFAC| LDA.l $7EC300,X
|02FFB0| STA.l $7EC500,X

|02FFB4| LDA.l $7EC380,X
|02FFB8| STA.l $7EC580,X

|02FFBC| DEX
|02FFBD| DEX
|02FFBE| BPL .next_color

|02FFC0| SEP #$20

|02FFC2| INC.b $15

|02FFC4| JMP.w RestoreFixedColor

;===================================================================================================
; FREE ROM: 0x39
;===================================================================================================
NULL_02FFC7:
|02FFC7| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|02FFCF| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|02FFD7| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|02FFDF| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|02FFE7| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|02FFEF| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|02FFF7| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|02FFFF| db $FF

;===================================================================================================

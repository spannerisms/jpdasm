org $008000

;===================================================================================================
; This is probably how the game starts!
;===================================================================================================
Interrupt_Reset:
#_008000: SEI

#_008001: STZ.w NMITIMEN
#_008004: STZ.w HDMAENABLE ;!USELESS
#_008007: STZ.w DMAENABLE ; !USELESS

#_00800A: STZ.w APUIO0 ; !USELESS extremely useless
#_00800D: STZ.w APUIO1
#_008010: STZ.w APUIO2
#_008013: STZ.w APUIO3

#_008016: LDA.b #$80 ; Enable force blank
#_008018: STA.w INIDISP

#_00801B: CLC
#_00801C: XCE
#_00801D: REP #$28

#_00801F: LDA.w #$0000
#_008022: TCD

#_008023: LDA.w #$01FF
#_008026: TCS

#_008027: SEP #$30

#_008029: JSR Sound_LoadIntroSongBank
#_00802C: JSR Startup_InitializeMemory

#_00802F: LDA.b #$81 ; enable NMI and auto joypad read
#_008031: STA.w NMITIMEN

;===================================================================================================
; Waits for NMI
; skips debug code
; clears OAM
; does main game code
; parses OAM for transfer
; repeat
;===================================================================================================
MainGameLoop:
#_008034: LDA.b $12
#_008036: BEQ MainGameLoop

#_008038: CLI
#_008039: BRA .do_frame

;---------------------------------------------------------------------------------------------------

.frame_step
#_00803B: LDA.b $F6
#_00803D: AND.b #$20
#_00803F: BEQ .L_not_pressed

#_008041: INC.w $0FD7

.L_not_pressed
#_008044: LDA.b $F6
#_008046: AND.b #$10
#_008048: BNE .do_frame

#_00804A: LDA.w $0FD7
#_00804D: AND.b #$01
#_00804F: BNE .skip_frame

;---------------------------------------------------------------------------------------------------

.do_frame
#_008051: INC.b $1A

#_008053: JSR ClearOAMBuffer
#_008056: JSL Module_MainRouting

.skip_frame
#_00805A: JSR NMI_PrepareSprites

#_00805D: STZ.b $12

#_00805F: BRA MainGameLoop

;===================================================================================================

pool Module_MainRouting

.low
#_008061: db Module00_Intro>>0
#_008062: db Module01_FileSelect>>0
#_008063: db Module02_CopyFile>>0
#_008064: db Module03_KILLFile>>0

#_008065: db Module04_NameFile>>0
#_008066: db Module05_LoadFile>>0
#_008067: db Module06_UnderworldLoad>>0
#_008068: db Module07_Underworld>>0

#_008069: db Module08_OverworldLoad>>0
#_00806A: db Module09_Overworld>>0
#_00806B: db Module0A_OverworldSpecialLoad>>0
#_00806C: db Module0B_OverworldSpecial>>0

#_00806D: db Module0C_Unused>>0
#_00806E: db Module0D_Unused>>0
#_00806F: db Module0E_Interface>>0
#_008070: db Module0F_SpotlightClose>>0

#_008071: db Module10_SpotlightOpen>>0
#_008072: db Module11_UnderworldFallingEntrance>>0
#_008073: db Module12_GameOver>>0
#_008074: db Module13_BossVictory_Pendant>>0

#_008075: db Module14_Attract>>0
#_008076: db Module15_MirrorWarpFromAga>>0
#_008077: db Module16_BossVictory_Crystal>>0
#_008078: db Module17_SaveAndQuit>>0

#_008079: db Module18_GanonEmerges>>0
#_00807A: db Module19_TriforceRoom>>0
#_00807B: db Module1A_Credits>>0
#_00807C: db Module1B_SpawnSelect>>0

;---------------------------------------------------------------------------------------------------

.mid
#_00807D: db Module00_Intro>>8
#_00807E: db Module01_FileSelect>>8
#_00807F: db Module02_CopyFile>>8
#_008080: db Module03_KILLFile>>8

#_008081: db Module04_NameFile>>8
#_008082: db Module05_LoadFile>>8
#_008083: db Module06_UnderworldLoad>>8
#_008084: db Module07_Underworld>>8

#_008085: db Module08_OverworldLoad>>8
#_008086: db Module09_Overworld>>8
#_008087: db Module0A_OverworldSpecialLoad>>8
#_008088: db Module0B_OverworldSpecial>>8

#_008089: db Module0C_Unused>>8
#_00808A: db Module0D_Unused>>8
#_00808B: db Module0E_Interface>>8
#_00808C: db Module0F_SpotlightClose>>8

#_00808D: db Module10_SpotlightOpen>>8
#_00808E: db Module11_UnderworldFallingEntrance>>8
#_00808F: db Module12_GameOver>>8
#_008090: db Module13_BossVictory_Pendant>>8

#_008091: db Module14_Attract>>8
#_008092: db Module15_MirrorWarpFromAga>>8
#_008093: db Module16_BossVictory_Crystal>>8
#_008094: db Module17_SaveAndQuit>>8

#_008095: db Module18_GanonEmerges>>8
#_008096: db Module19_TriforceRoom>>8
#_008097: db Module1A_Credits>>8
#_008098: db Module1B_SpawnSelect>>8

;---------------------------------------------------------------------------------------------------

.bank
#_008099: db Module00_Intro>>16
#_00809A: db Module01_FileSelect>>16
#_00809B: db Module02_CopyFile>>16
#_00809C: db Module03_KILLFile>>16

#_00809D: db Module04_NameFile>>16
#_00809E: db Module05_LoadFile>>16
#_00809F: db Module06_UnderworldLoad>>16
#_0080A0: db Module07_Underworld>>16

#_0080A1: db Module08_OverworldLoad>>16
#_0080A2: db Module09_Overworld>>16
#_0080A3: db Module0A_OverworldSpecialLoad>>16
#_0080A4: db Module0B_OverworldSpecial>>16

#_0080A5: db Module0C_Unused>>16
#_0080A6: db Module0D_Unused>>16
#_0080A7: db Module0E_Interface>>16
#_0080A8: db Module0F_SpotlightClose>>16

#_0080A9: db Module10_SpotlightOpen>>16
#_0080AA: db Module11_UnderworldFallingEntrance>>16
#_0080AB: db Module12_GameOver>>16
#_0080AC: db Module13_BossVictory_Pendant>>16

#_0080AD: db Module14_Attract>>16
#_0080AE: db Module15_MirrorWarpFromAga>>16
#_0080AF: db Module16_BossVictory_Crystal>>16
#_0080B0: db Module17_SaveAndQuit>>16

#_0080B1: db Module18_GanonEmerges>>16
#_0080B2: db Module19_TriforceRoom>>16
#_0080B3: db Module1A_Credits>>16
#_0080B4: db Module1B_SpawnSelect>>16

pool off

;---------------------------------------------------------------------------------------------------

Module_MainRouting:
#_0080B5: LDY.b $10

#_0080B7: LDA.w .low,Y
#_0080BA: STA.b $03

#_0080BC: LDA.w .mid,Y
#_0080BF: STA.b $04

#_0080C1: LDA.w .bank,Y
#_0080C4: STA.b $05

#_0080C6: JML.w [$0003]

;===================================================================================================
; NMI routine triggered every frame
;===================================================================================================
Interrupt_NMI:
#_0080C9: SEI

#_0080CA: REP #$30

#_0080CC: PHA
#_0080CD: PHX
#_0080CE: PHY
#_0080CF: PHD
#_0080D0: PHB

#_0080D1: LDA.w #$0000
#_0080D4: TCD

#_0080D5: PHK
#_0080D6: PLB

#_0080D7: SEP #$30

; this must be read during NMI or you will be arrested
#_0080D9: LDA.w RDNMI

#_0080DC: LDA.w $012C
#_0080DF: BNE .song_input

; Compare queued song to current song.
; Looks like you can queue a song twice in a way.
#_0080E1: LDA.w APUIO0
#_0080E4: CMP.w $0133
#_0080E7: BNE .handle_sfx1

#_0080E9: STZ.w APUIO0

#_0080EC: BRA .handle_sfx1

.song_input
#_0080EE: CMP.w $0133
#_0080F1: BEQ .handle_sfx1

#_0080F3: STA.w APUIO0
#_0080F6: STA.w $0133

; $0130 will hold the last proper song, ignoring commands.
#_0080F9: CMP.b #!SONG_F2_HALFVOL
#_0080FB: BCS .song_command

#_0080FD: STA.w $0130

.song_command
#_008100: STZ.w $012C

.handle_sfx1
#_008103: LDA.w $012D
#_008106: BNE .new_sfx1

; Make sure the SFX sync matches what we have
#_008108: LDA.w APUIO1
#_00810B: CMP.w $0131
#_00810E: BNE .handle_SFX23

#_008110: STZ.w APUIO1

#_008113: BRA .handle_SFX23

.new_sfx1
#_008115: STA.w $0131
#_008118: STA.w APUIO1

#_00811B: STZ.w $012D

.handle_SFX23
; write SFX set 2
#_00811E: LDA.w $012E
#_008121: STA.w APUIO2

; write SFX set 3
#_008124: LDA.w $012F
#_008127: STA.w APUIO3

; clear SFX queues
#_00812A: STZ.w $012E
#_00812D: STZ.w $012F

; prepare for PPU writes
#_008130: LDA.b #$80
#_008132: STA.w INIDISP
#_008135: STZ.w HDMAENABLE

; if $12 is nonzero
; we haven't finished the main code
; so we need longer
#_008138: LDA.b $12
#_00813A: BNE .lag_frame

#_00813C: INC.b $12

#_00813E: JSR NMI_DoUpdates
#_008141: JSR NMI_ReadJoypads

.lag_frame
; this is an IRQ flag of sorts
#_008144: LDA.w $012A
#_008147: BEQ NMI_NoIRQThread

#_008149: JMP.w NMI_SwitchThread

;===================================================================================================

NMI_NoIRQThread:
#_00814C: LDA.b $96
#_00814E: STA.w W12SEL

#_008151: LDA.b $97
#_008153: STA.w W34SEL

#_008156: LDA.b $98
#_008158: STA.w WOBJSEL

#_00815B: LDA.b $99
#_00815D: STA.w CGWSEL

#_008160: LDA.b $9A
#_008162: STA.w CGADSUB

#_008165: LDA.b $9C
#_008167: STA.w COLDATA

#_00816A: LDA.b $9D
#_00816C: STA.w COLDATA

#_00816F: LDA.b $9E
#_008171: STA.w COLDATA

#_008174: LDA.b $1C
#_008176: STA.w MAINDES

#_008179: LDA.b $1D
#_00817B: STA.w SUBDES

#_00817E: LDA.b $1E
#_008180: STA.w TMW

#_008183: LDA.b $1F
#_008185: STA.w TSW

#_008188: LDA.w $0120
#_00818B: STA.w BG1HOFS

#_00818E: LDA.w $0121
#_008191: STA.w BG1HOFS

#_008194: LDA.w $0124
#_008197: STA.w BG1VOFS

#_00819A: LDA.w $0125
#_00819D: STA.w BG1VOFS

#_0081A0: LDA.w $011E
#_0081A3: STA.w BG2HOFS

#_0081A6: LDA.w $011F
#_0081A9: STA.w BG2HOFS

#_0081AC: LDA.w $0122
#_0081AF: STA.w BG2VOFS

#_0081B2: LDA.w $0123
#_0081B5: STA.w BG2VOFS

#_0081B8: LDA.b $E4
#_0081BA: STA.w BG3HOFS

#_0081BD: LDA.b $E5
#_0081BF: STA.w BG3HOFS

#_0081C2: LDA.b $EA
#_0081C4: STA.w BG3VOFS

#_0081C7: LDA.b $EB
#_0081C9: STA.w BG3VOFS

#_0081CC: LDA.b $95
#_0081CE: STA.w MOSAIC

;---------------------------------------------------------------------------------------------------

#_0081D1: LDA.b $94
#_0081D3: STA.w BGMODE

#_0081D6: AND.b #$07
#_0081D8: CMP.b #$07
#_0081DA: BNE .not_mode7

#_0081DC: STZ.w M7B
#_0081DF: STZ.w M7B
#_0081E2: STZ.w M7C
#_0081E5: STZ.w M7C

#_0081E8: LDA.w $0638
#_0081EB: STA.w M7X

#_0081EE: LDA.w $0639
#_0081F1: STA.w M7X

#_0081F4: LDA.w $063A
#_0081F7: STA.w M7Y

#_0081FA: LDA.w $063B
#_0081FD: STA.w M7Y

;---------------------------------------------------------------------------------------------------

.not_mode7
#_008200: LDA.w $0128
#_008203: BEQ .IRQ_inactive

#_008205: LDA.w TIMEUP

#_008208: LDA.b #$38
#_00820A: STA.w VTIMEL

#_00820D: STZ.w VTIMEH
#_008210: STZ.w HTIMEL
#_008213: STZ.w HTIMEH

; enable NMI, IRQ, auto joypad
#_008216: LDA.b #$A1
#_008218: STA.w NMITIMEN

;---------------------------------------------------------------------------------------------------

.IRQ_inactive
#_00821B: LDA.b $13
#_00821D: STA.w INIDISP

#_008220: LDA.b $9B
#_008222: STA.w HDMAENABLE

#_008225: REP #$30

#_008227: PLB
#_008228: PLD
#_008229: PLY
#_00822A: PLX
#_00822B: PLA

;===================================================================================================

Interrupt_Unused:
#_00822C: RTI

;===================================================================================================

NMI_SwitchThread:
#_00822D: JSR NMI_UpdateIRQGFX

#_008230: LDA.b $FF
#_008232: STA.w VTIMEL
#_008235: STZ.w VTIMEH

#_008238: LDA.b #$A1 ; enable NMI, IRQ, auto joypad
#_00823A: STA.w NMITIMEN

#_00823D: LDA.b $96
#_00823F: STA.w W12SEL

#_008242: LDA.b $97
#_008244: STA.w W34SEL

#_008247: LDA.b $98
#_008249: STA.w WOBJSEL

#_00824C: LDA.b $99
#_00824E: STA.w CGWSEL

#_008251: LDA.b $9A
#_008253: STA.w CGADSUB

#_008256: LDA.b $9C
#_008258: STA.w COLDATA

#_00825B: LDA.b $9D
#_00825D: STA.w COLDATA

#_008260: LDA.b $9E
#_008262: STA.w COLDATA

#_008265: LDA.b $1C
#_008267: STA.w MAINDES

#_00826A: LDA.b $1D
#_00826C: STA.w SUBDES

#_00826F: LDA.b $1E
#_008271: STA.w TMW

#_008274: LDA.b $1F
#_008276: STA.w TSW

;---------------------------------------------------------------------------------------------------

#_008279: LDA.w $0120
#_00827C: STA.w BG1HOFS

#_00827F: LDA.w $0121
#_008282: STA.w BG1HOFS

#_008285: LDA.w $0124
#_008288: STA.w BG1VOFS

#_00828B: LDA.w $0125
#_00828E: STA.w BG1VOFS

#_008291: LDA.w $011E
#_008294: STA.w BG2HOFS

#_008297: LDA.w $011F
#_00829A: STA.w BG2HOFS

#_00829D: LDA.w $0122
#_0082A0: STA.w BG2VOFS

#_0082A3: LDA.w $0123
#_0082A6: STA.w BG2VOFS

#_0082A9: LDA.b $E4
#_0082AB: STA.w BG3HOFS

#_0082AE: LDA.b $E5
#_0082B0: STA.w BG3HOFS

#_0082B3: LDA.b $EA
#_0082B5: STA.w BG3VOFS

#_0082B8: LDA.b $EB
#_0082BA: STA.w BG3VOFS

#_0082BD: LDA.b $13
#_0082BF: STA.w INIDISP

#_0082C2: LDA.b $9B
#_0082C4: STA.w HDMAENABLE

;---------------------------------------------------------------------------------------------------

#_0082C7: REP #$30

#_0082C9: TSC
#_0082CA: TAX

#_0082CB: LDA.w $1F0A
#_0082CE: TCS

#_0082CF: STX.w $1F0A

#_0082D2: PLB
#_0082D3: PLD
#_0082D4: PLY
#_0082D5: PLX
#_0082D6: PLA

#_0082D7: RTI

;===================================================================================================
; the IRQ vector mostly handles polyhedral drawing
;===================================================================================================
Interrupt_IRQ:
#_0082D8: SEI

#_0082D9: REP #$30

#_0082DB: PHA
#_0082DC: PHX
#_0082DD: PHY
#_0082DE: PHD
#_0082DF: PHB

#_0082E0: PHK
#_0082E1: PLB

#_0082E2: SEP #$30

#_0082E4: LDA.w $012A
#_0082E7: BNE .polyhedral

#_0082E9: LDA.w TIMEUP
#_0082EC: BPL .exit

#_0082EE: LDA.w $0128
#_0082F1: BEQ .exit

.wait_for_hblank
#_0082F3: BIT.w HVBJOY
#_0082F6: BVC .wait_for_hblank

#_0082F8: LDA.w $0630
#_0082FB: STA.w BG3HOFS

#_0082FE: LDA.w $0631
#_008301: STA.w BG3HOFS

#_008304: STZ.w BG3VOFS
#_008307: STZ.w BG3VOFS

#_00830A: LDA.w $0128
#_00830D: BPL .exit

#_00830F: STZ.w $0128

; disables IRQ
#_008312: LDA.b #$81
#_008314: STA.w NMITIMEN

.exit
#_008317: REP #$30

#_008319: PLB
#_00831A: PLD
#_00831B: PLY
#_00831C: PLX
#_00831D: PLA

#_00831E: RTI

;---------------------------------------------------------------------------------------------------

.polyhedral
#_00831F: LDA.w TIMEUP

#_008322: REP #$30

#_008324: TSC
#_008325: TAX

#_008326: LDA.w $1F0A
#_008329: TCS

#_00832A: STX.w $1F0A

#_00832D: PLB
#_00832E: PLD
#_00832F: PLY
#_008330: PLX
#_008331: PLA

#_008332: RTI

;===================================================================================================

EraseTileMaps_triforce:
#_008333: REP #$20

#_008335: LDA.w #$0188
#_008338: STA.b $02

#_00833A: LDA.w #$007F

#_00833D: BRA EraseTileMaps

;---------------------------------------------------------------------------------------------------

EraseTileMaps_dungeonmap:
#_00833F: REP #$20

#_008341: LDA.w #$007F
#_008344: STA.b $02

#_008346: LDA.w #$0300

#_008349: BRA EraseTileMaps

;---------------------------------------------------------------------------------------------------

EraseTileMaps_normal:
#_00834B: REP #$20

#_00834D: LDA.w #$007F
#_008350: STA.b $02

#_008352: LDA.w #$01EC

;---------------------------------------------------------------------------------------------------
; $00 = tile for BG1/BG2
; $02 = tile for BG3
EraseTileMaps:
#_008355: STA.b $00

#_008357: STZ.w VMAIN
#_00835A: STZ.w VMADDR

#_00835D: LDA.w #$1808
#_008360: STA.w DMA1MODE

#_008363: STZ.w DMA1ADDRB

#_008366: LDA.w #$0000
#_008369: STA.w DMA1ADDRL

#_00836C: LDA.w #$2000
#_00836F: STA.w DMA1SIZE

#_008372: LDY.b #$02
#_008374: STY.w DMAENABLE

#_008377: LDX.b #$80
#_008379: STX.w VMAIN

#_00837C: STZ.w VMADDR

#_00837F: STA.w DMA1SIZE

#_008382: LDA.w #$1908
#_008385: STA.w DMA1MODE

#_008388: LDA.w #$0001
#_00838B: STA.w DMA1ADDRL

#_00838E: STY.w DMAENABLE

;---------------------------------------------------------------------------------------------------

#_008391: LDA.b $02
#_008393: STA.b $00

#_008395: STZ.w VMAIN

#_008398: LDA.w #VRAMaddr($C000)
#_00839B: STA.w VMADDR

#_00839E: LDA.w #$1808
#_0083A1: STA.w DMA1MODE

#_0083A4: LDA.w #$0000
#_0083A7: STA.w DMA1ADDRL

#_0083AA: LDA.w #$0800
#_0083AD: STA.w DMA1SIZE

#_0083B0: STY.w DMAENABLE

#_0083B3: STX.w VMAIN
#_0083B6: STA.w DMA1SIZE

#_0083B9: LDA.w #VRAMaddr($C000)
#_0083BC: STA.w VMADDR

#_0083BF: LDA.w #$1908
#_0083C2: STA.w DMA1MODE

#_0083C5: LDA.w #$0001
#_0083C8: STA.w DMA1ADDRL

#_0083CB: STY.w DMAENABLE

#_0083CE: SEP #$20

#_0083D0: RTL

;===================================================================================================
; Reads joypad inputs and saves them to WRAM
;===================================================================================================
NMI_ReadJoypads:
#_0083D1: STZ.w JOYPAD

#_0083D4: LDA.w JOY1L
#_0083D7: STA.b $00

#_0083D9: LDA.w JOY1H
#_0083DC: STA.b $01

#_0083DE: LDA.b $00
#_0083E0: STA.b $F2

#_0083E2: TAY

#_0083E3: EOR.b $FA
#_0083E5: AND.b $F2
#_0083E7: STA.b $F6

#_0083E9: STY.b $FA

#_0083EB: LDA.b $01
#_0083ED: STA.b $F0

#_0083EF: TAY

#_0083F0: EOR.b $F8
#_0083F2: AND.b $F0
#_0083F4: STA.b $F4

#_0083F6: STY.b $F8

;===================================================================================================
; Not used as an entry point, but read and checked by other code.
;===================================================================================================
#Player2JoypadReturn:
#_0083F8: RTS

;---------------------------------------------------------------------------------------------------

; Unreachable code for player 2 input
#_0083F9: LDA.w JOY2L
#_0083FC: STA.b $00

#_0083FE: LDA.w JOY2H
#_008401: STA.b $01

#_008403: LDA.b $00
#_008405: STA.b $F3

#_008407: TAY

#_008408: EOR.b $FB
#_00840A: AND.b $F3
#_00840C: STA.b $F7

#_00840E: STY.b $FB

#_008410: LDA.b $01
#_008412: STA.b $F1

#_008414: TAY

#_008415: EOR.b $F9
#_008417: AND.b $F1
#_008419: STA.b $F5

#_00841B: STY.b $F9

#_00841D: RTS

;===================================================================================================
; Moves everything in the OAM buffer off screen
; just sets all the Y-coordinates to 240
;===================================================================================================
ClearOAMBuffer:
#_00841E: LDX.b #$60

.next
#_008420: LDA.b #$F0
#_008422: STA.w $0801,X
#_008425: STA.w $0805,X
#_008428: STA.w $0809,X
#_00842B: STA.w $080D,X

#_00842E: STA.w $0811,X
#_008431: STA.w $0815,X
#_008434: STA.w $0819,X
#_008437: STA.w $081D,X

#_00843A: STA.w $0881,X
#_00843D: STA.w $0885,X
#_008440: STA.w $0889,X
#_008443: STA.w $088D,X

#_008446: STA.w $0891,X
#_008449: STA.w $0895,X
#_00844C: STA.w $0899,X
#_00844F: STA.w $089D,X

#_008452: STA.w $0901,X
#_008455: STA.w $0905,X
#_008458: STA.w $0909,X
#_00845B: STA.w $090D,X

#_00845E: STA.w $0911,X
#_008461: STA.w $0915,X
#_008464: STA.w $0919,X
#_008467: STA.w $091D,X

#_00846A: STA.w $0981,X
#_00846D: STA.w $0985,X
#_008470: STA.w $0989,X
#_008473: STA.w $098D,X

#_008476: STA.w $0991,X
#_008479: STA.w $0995,X
#_00847C: STA.w $0999,X
#_00847F: STA.w $099D,X

#_008482: TXA
#_008483: SEC
#_008484: SBC.b #$20
#_008486: TAX

#_008487: BPL .next

#_008489: RTS

;===================================================================================================

SaveFileOffsets:
#_00848A: dw $0000

SaveFileCopyOffsets:
#_00848C: dw $0000, $0500
#_008490: dw $0A00, $0F00

;===================================================================================================
; Addresses for things
;===================================================================================================
DynamicOAM_PushBlockAddresses:
#_008494: dw $7EA480, $7EA4C0, $7EA500, $7EA540 ; 4/4, 3/4, 2/4, 1/4

;---------------------------------------------------------------------------------------------------

LinkOAM_SwordAddresses:
#_00849C: dw $7E9000, $7E9020, $7E9060, $7E91E0 ; vertical, slash1, left-up, horizontal
#_0084A4: dw $7E90A0, $7E90C0, $7E9100, $7E9140 ; up-left, slash2, slash whiff, slash3

;---------------------------------------------------------------------------------------------------

LinkOAM_ShieldAddresses:
#_0084AC: dw $7E9300, $7E9340, $7E9380 ; down, up, side

;---------------------------------------------------------------------------------------------------

DynamicOAM_LinkItemAddresses:
#_0084B2: dw $7E9480, $7E94C0, $7E94E0, $7E95C0 ; rod
#_0084BA: dw $7E9500, $7E9520, $7E9540, $7E9480 ; rod
#_0084C2: dw $7E9640, $7E9680, $7E96A0, $7E9780 ; hammer
#_0084CA: dw $7E96C0, $7E96E0, $7E9700, $7E9480 ; hammer

#_0084D2: dw $7E9800, $7E9840, $7E98A0, $7E9480 ; bow
#_0084DA: dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
#_0084E2: dw $7E9AC0, $7E9B00, $7E9480, $7E9480 ; hookshot tip
#_0084EA: dw $7E9480, $7E9480, $7E9480, $7E9480 ; null

#_0084F2: dw $7E9BC0, $7E9C00, $7E9C40, $7E9C80 ; net
#_0084FA: dw $7E9CC0, $7E9D00, $7E9D40, $7E9480 ; net
#_008502: dw $7E9F40, $7E9F80, $7E9FC0, $7E9FE0 ; cane
#_00850A: dw $7EA000, $7E9480, $7E9480, $7E9480 ; cane

#_008512: dw $7EA100, $7E9480, $7E9480, $7E9480 ; book
#_00851A: dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
#_008522: dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
#_00852A: dw $7E9480, $7E9480, $7E9480, $7E9480 ; null

#_008532: dw $7E98C0, $7E9900, $7E99C0, $7E99E0 ; shovel, ZZzzzz
#_00853A: dw $7E9A00, $7E9A20, $7E9A40, $7E9A60 ; Zzzzz, ♪
#_008542: dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
#_00854A: dw $7E9480, $7E9480, $7E9480, $7E9480 ; null

#_008552: dw $7E9A80, $7E9480, $7E9480, $7E9480 ; null
#_00855A: dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
#_008562: dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
#_00856A: dw $7E9480, $7E9480, $7E9480, $7E9480 ; null

#_008572: dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
#_00857A: dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
#_008582: dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
#_00858A: dw $7E9480, $7E9480, $7E9480, $7E9480 ; null

#_008592: dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
#_00859A: dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
#_0085A2: dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
#_0085AA: dw $7E9480, $7E9480, $7E9480, $7E9480 ; null

;---------------------------------------------------------------------------------------------------

.offsets
#_0085B2: dw $00E0, $00E0, $0060, $0080
#_0085BA: dw $01C0, $00E0, $0040, $0000
#_0085C2: dw $0080, $0000, $0040, $0000
#_0085CA: dw $0000, $0000, $0000, $0000

;===================================================================================================

RupeeTile_anim_step:
#_0085D2: dw $000E, $0004, $0006, $0010, $0006, $0008

;---------------------------------------------------------------------------------------------------

RupeeTile_anim_stepOffset:
#_0085DE: dw $0000, $0020, $0040, $0000
#_0085E6: dw $0020, $0040, $0000, $0040
#_0085EE: dw $0080, $0000, $0040, $0080

;===================================================================================================

StarTileOffset:
#_0085F6: dw $7EB340, $7EB400, $7EB4C0

;===================================================================================================
; also contains Link gfx stuff
;===================================================================================================
NMI_PrepareSprites:
#_0085FC: LDY.b #$1C

; This first segment just merges all the individual OAM sx entries for DMA.
.next_block
#_0085FE: TYA
#_0085FF: ASL A
#_008600: ASL A
#_008601: TAX

#_008602: LDA.w $0A23,X
#_008605: ASL A
#_008606: ASL A

#_008607: ORA.w $0A22,X
#_00860A: ASL A
#_00860B: ASL A

#_00860C: ORA.w $0A21,X
#_00860F: ASL A
#_008610: ASL A

#_008611: ORA.w $0A20,X
#_008614: STA.w $0A00,Y

#_008617: LDA.w $0A27,X
#_00861A: ASL A
#_00861B: ASL A

#_00861C: ORA.w $0A26,X
#_00861F: ASL A
#_008620: ASL A

#_008621: ORA.w $0A25,X
#_008624: ASL A
#_008625: ASL A

#_008626: ORA.w $0A24,X
#_008629: STA.w $0A01,Y

#_00862C: LDA.w $0A2B,X
#_00862F: ASL A
#_008630: ASL A

#_008631: ORA.w $0A2A,X
#_008634: ASL A
#_008635: ASL A

#_008636: ORA.w $0A29,X
#_008639: ASL A
#_00863A: ASL A

#_00863B: ORA.w $0A28,X
#_00863E: STA.w $0A02,Y

#_008641: LDA.w $0A2F,X
#_008644: ASL A
#_008645: ASL A

#_008646: ORA.w $0A2E,X
#_008649: ASL A
#_00864A: ASL A

#_00864B: ORA.w $0A2D,X
#_00864E: ASL A
#_00864F: ASL A

#_008650: ORA.w $0A2C,X
#_008653: STA.w $0A03,Y

#_008656: DEY
#_008657: DEY
#_008658: DEY
#_008659: DEY
#_00865A: BPL .next_block

;---------------------------------------------------------------------------------------------------

; Now we handle dynamic OAM characters.
#_00865C: REP #$31

; Link's head and body
#_00865E: LDX.w $0100

#_008661: LDA.w LinkOAM_HeadAddresses,X
#_008664: STA.w $0ACC

#_008667: ADC.w #$0200
#_00866A: STA.w $0ACE

#_00866D: LDA.w LinkOAM_BodyAddresses,X
#_008670: STA.w $0AD0

#_008673: CLC
#_008674: ADC.w #$0200
#_008677: STA.w $0AD2

; Link's hands, etc
#_00867A: LDX.w $0102

#_00867D: LDA.w LinkOAM_AuxAddresses,X
#_008680: STA.w $0AD4

#_008683: LDX.w $0104

#_008686: LDA.w LinkOAM_AuxAddresses,X
#_008689: STA.w $0AD6

#_00868C: SEP #$10

; Sword
#_00868E: LDX.w $0107

#_008691: LDA.w LinkOAM_SwordAddresses,X
#_008694: STA.w $0AC0

#_008697: CLC
#_008698: ADC.w #$0180
#_00869B: STA.w $0AC2

; Shield
#_00869E: LDX.w $0108

#_0086A1: LDA.w LinkOAM_ShieldAddresses,X
#_0086A4: STA.w $0AC4

#_0086A7: CLC
#_0086A8: ADC.w #$00C0
#_0086AB: STA.w $0AC6

; Item
#_0086AE: LDA.w $0109
#_0086B1: AND.w #$00F8
#_0086B4: LSR A
#_0086B5: LSR A
#_0086B6: TAY

#_0086B7: LDA.w $0109
#_0086BA: ASL A
#_0086BB: TAX

#_0086BC: LDA.w DynamicOAM_LinkItemAddresses,X
#_0086BF: STA.w $0AC8

#_0086C2: CLC
#_0086C3: TYX
#_0086C4: ADC.w DynamicOAM_LinkItemAddresses_offsets,X
#_0086C7: STA.w $0ACA

#_0086CA: LDA.w $02C3
#_0086CD: AND.w #$0003
#_0086D0: ASL A
#_0086D1: TAX

#_0086D2: LDA.w DynamicOAM_PushBlockAddresses,X
#_0086D5: STA.w $0AD8

#_0086D8: CLC
#_0086D9: ADC.w #$0100
#_0086DC: STA.w $0ADA

; Animated tiles
#_0086DF: LDA.l $7EC00D
#_0086E3: DEC A
#_0086E4: STA.l $7EC00D
#_0086E8: BNE .dont_animate_bg

;---------------------------------------------------------------------------------------------------

; unused overlays here, but they make the timer longer
#_0086EA: LDA.w #$0009

#_0086ED: LDX.b $8C
#_0086EF: CPX.b #$B5
#_0086F1: BEQ .use_longer_timer

#_0086F3: CPX.b #$BC
#_0086F5: BNE .use_shorter_timer

.use_longer_timer
#_0086F7: LDA.w #$0017

.use_shorter_timer
#_0086FA: STA.l $7EC00D

#_0086FE: LDA.l $7EC00F
#_008702: CLC
#_008703: ADC.w #$0400
#_008706: CMP.w #$0C00
#_008709: BNE .dont_reset_rupees_tiles

#_00870B: LDA.w #$0000

.dont_reset_rupees_tiles
#_00870E: STA.l $7EC00F

#_008712: CLC
#_008713: ADC.w #$7EA680
#_008716: STA.w $0ADC

.dont_animate_bg
; animate rupee tiles
#_008719: LDA.l $7EC013
#_00871D: DEC A
#_00871E: STA.l $7EC013
#_008722: BNE .dont_animate_rupee

#_008724: LDA.l $7EC015
#_008728: TAX

#_008729: INX
#_00872A: INX

#_00872B: CPX.b #$0C
#_00872D: BNE .rupee_step_fine

#_00872F: LDX.b #$00

.rupee_step_fine
#_008731: TXA
#_008732: STA.l $7EC015

#_008736: LDA.w RupeeTile_anim_step,X
#_008739: STA.l $7EC013

; rupees
#_00873D: LDA.w #$7EB280
#_008740: CLC
#_008741: ADC.w RupeeTile_anim_stepOffset,X
#_008744: STA.w $0AE0

#_008747: CLC
#_008748: ADC.w #$0060
#_00874B: STA.w $0AE2

.dont_animate_rupee
; follower graphics
#_00874E: LDA.w $0AE8
#_008751: ASL A
#_008752: ADC.w #$7EB940
#_008755: STA.w $0AEC

#_008758: ADC.w #$0200
#_00875B: STA.w $0AEE

#_00875E: LDA.w $0AEA
#_008761: ASL A
#_008762: ADC.w #$7EB940
#_008765: STA.w $0AF0

#_008768: ADC.w #$0200
#_00876B: STA.w $0AF2

; duck graphics
#_00876E: LDA.w $0AF4
#_008771: ASL A
#_008772: ADC.w #$7EB540
#_008775: STA.w $0AF6

#_008778: ADC.w #$0200
#_00877B: STA.w $0AF8

#_00877E: SEP #$20

#_008780: RTS

;===================================================================================================
; Uses A to read local 16-bit vectors from where the routine was called.
;===================================================================================================
JumpTableLocal:
; save Y
#_008781: STY.b $03

; pull low byte of return address for pointer
#_008783: PLY
#_008784: STY.b $00

#_008786: REP #$30

; turn our parameter into an offset
#_008788: AND.w #$00FF
#_00878B: ASL A
#_00878C: TAY

; pull high byte and bank of return address for pointer
#_00878D: PLA
#_00878E: STA.b $01

; increment Y since return address was -1
#_008790: INY 

; read the 16-bit vector and save it over the first vector
#_008791: LDA.b [$00],Y
#_008793: STA.b $00

#_008795: SEP #$30

; recover Y
#_008797: LDY.b $03

; jump to desired address
#_008799: JML.w [$0000]

;===================================================================================================
; Uses A to read 24-bit vectors from where the routine was called.
;===================================================================================================
JumpTableLong:
; save Y
#_00879C: STY.b $05

; pull low byte of return address for pointer
#_00879E: PLY
#_00879F: STY.b $02

#_0087A1: REP #$30

; turn parameter into an offset
#_0087A3: AND.w #$00FF
#_0087A6: STA.b $03

; A*2+A
#_0087A8: ASL A
#_0087A9: ADC.b $03
#_0087AB: TAY

; pull high byte and bank of return address for pointer
#_0087AC: PLA
#_0087AD: STA.b $03

; increment Y since return address was -1
#_0087AF: INY

; get address of vector
#_0087B0: LDA.b [$02],Y
#_0087B2: STA.b $00

; get bank of vector
#_0087B4: INY

#_0087B5: LDA.b [$02],Y
#_0087B7: STA.b $01

#_0087B9: SEP #$30

; recover Y
#_0087BB: LDY.b $05

; jump to desired address
#_0087BD: JML.w [$0000]

;===================================================================================================

Startup_InitializeMemory:
#_0087C0: REP #$30

; recover return address
#_0087C2: LDY.w $01FE

#_0087C5: LDX.w #$03FE
#_0087C8: LDA.w #$0000

.mirrored_wram_loop
#_0087CB: STA.w $0000,X
#_0087CE: STA.w $0400,X
#_0087D1: STA.w $0800,X
#_0087D4: STA.w $0C00,X
#_0087D7: STA.w $1000,X
#_0087DA: STA.w $1400,X
#_0087DD: STA.w $1800,X
#_0087E0: STA.w $1C00,X

#_0087E3: DEX
#_0087E4: DEX
#_0087E5: BNE .mirrored_wram_loop

;---------------------------------------------------------------------------------------------------

#_0087E7: STA.l $7EC500 ; writes RGB: #000000
#_0087EB: STA.l $701FFE ; not selecting any save file

#_0087EF: LDA.l $7003E1
#_0087F3: CMP.w #$55AA
#_0087F6: BEQ .sram1_valid

#_0087F8: LDA.w #$0000
#_0087FB: STA.l $7003E1

;---------------------------------------------------------------------------------------------------

.sram1_valid
#_0087FF: LDA.l $7008E1
#_008803: CMP.w #$55AA
#_008806: BEQ .sram2_valid

#_008808: LDA.w #$0000
#_00880B: STA.l $7008E1

;---------------------------------------------------------------------------------------------------

.sram2_valid
#_00880F: LDA.l $700DE1
#_008813: CMP.w #$55AA
#_008816: BEQ .sram3_valid

#_008818: LDA.w #$0000
#_00881B: STA.l $700DE1

;---------------------------------------------------------------------------------------------------

.sram3_valid
#_00881F: STY.w $01FE

#_008822: STZ.w TMW

#_008825: SEP #$30

; Enable force blank
#_008827: LDA.b #$80
#_008829: STA.b $13

#_00882B: INC.b $15

#_00882D: RTS

;===================================================================================================

Overworld_GetTileAttributeAtLocation:
#_00882E: REP #$30

#_008830: LDA.b $00
#_008832: SEC
#_008833: SBC.w $0708

#_008836: AND.w $070A

#_008839: ASL A
#_00883A: ASL A
#_00883B: ASL A

#_00883C: STA.b $06

#_00883E: LDA.b $02
#_008840: SEC
#_008841: SBC.w $070C

#_008844: AND.w $070E
#_008847: ORA.b $06
#_008849: TAX

#_00884A: LDA.l $7E2000,X
#_00884E: ASL A
#_00884F: ASL A
#_008850: STA.b $06

#_008852: LDA.b $00
#_008854: AND.w #$0008
#_008857: LSR A
#_008858: LSR A
#_008859: TSB.b $06

#_00885B: LDA.b $02
#_00885D: AND.w #$0001
#_008860: ORA.b $06
#_008862: ASL A
#_008863: TAX

#_008864: LDA.l Map16Definitions,X
#_008868: STA.b $06

#_00886A: AND.w #$01FF
#_00886D: TAX

#_00886E: LDA.l OverworldTileAttributes,X

;---------------------------------------------------------------------------------------------------

#_008872: SEP #$30

#_008874: CMP.b #$10
#_008876: BCC .exit

#_008878: CMP.b #$1C
#_00887A: BCS .exit

#_00887C: STA.b $06

#_00887E: LDA.b $07
#_008880: AND.b #$40

#_008882: ASL A
#_008883: ROL A
#_008884: ROL A
#_008885: ORA.b $06

.exit
#_008887: RTL

;===================================================================================================

LoadSongBank:
#_008888: PHP

#_008889: REP #$30

#_00888B: LDY.w #$0000
#_00888E: LDA.w #$BBAA

.apu_not_ready
#_008891: CMP.w APUIO0
#_008894: BNE .apu_not_ready

#_008896: SEP #$20

#_008898: LDA.b #$CC
#_00889A: BRA .setup_transfer

;---------------------------------------------------------------------------------------------------

.next_transfer
#_00889C: LDA.b [$00],Y

#_00889E: INY

#_00889F: XBA
#_0088A0: LDA.b #$00
#_0088A2: BRA .write_zero

.next_byte
#_0088A4: XBA
#_0088A5: LDA.b [$00],Y

#_0088A7: INY
#_0088A8: CPY.w #$8000
#_0088AB: BNE .no_bank_wrap

#_0088AD: LDY.w #$0000

#_0088B0: INC.b $02

.no_bank_wrap
#_0088B2: XBA

.wait_for_zero
#_0088B3: CMP.w APUIO0
#_0088B6: BNE .wait_for_zero

#_0088B8: INC A

.write_zero
#_0088B9: REP #$20

#_0088BB: STA.w APUIO0

#_0088BE: SEP #$20

#_0088C0: DEX
#_0088C1: BNE .next_byte

.wait_for_sync
#_0088C3: CMP.w APUIO0
#_0088C6: BNE .wait_for_sync

.make_A_nonzero
#_0088C8: ADC.b #$03
#_0088CA: BEQ .make_A_nonzero

;---------------------------------------------------------------------------------------------------

.setup_transfer
#_0088CC: PHA

#_0088CD: REP #$20

#_0088CF: LDA.b [$00],Y
#_0088D1: INY
#_0088D2: INY
#_0088D3: TAX

#_0088D4: LDA.b [$00],Y
#_0088D6: INY
#_0088D7: INY
#_0088D8: STA.w APUIO2

#_0088DB: SEP #$20

#_0088DD: CPX.w #$0001

#_0088E0: LDA.b #$00
#_0088E2: ROL A
#_0088E3: STA.w APUIO1

; This will set the overflow flag if X>0
#_0088E6: ADC.b #$7F
#_0088E8: PLA
#_0088E9: STA.w APUIO0

.wait_for_sync_2
#_0088EC: CMP.w APUIO0
#_0088EF: BNE .wait_for_sync_2

; if X>0, transfer more
#_0088F1: BVS .next_transfer

#_0088F3: STZ.w APUIO0
#_0088F6: STZ.w APUIO1
#_0088F9: STZ.w APUIO2
#_0088FC: STZ.w APUIO3

#_0088FF: PLP

#_008900: RTS

;===================================================================================================
; Loads the always-loaded material which is followed by the Overworld bank
;===================================================================================================
Sound_LoadIntroSongBank:
#_008901: LDA.b #SamplePointers>>0
#_008903: STA.b $00

#_008905: LDA.b #SamplePointers>>8
#_008907: STA.b $01

#_008909: LDA.b #SamplePointers>>16
#_00890B: STA.b $02

#_00890D: SEI

#_00890E: JSR LoadSongBank

#_008911: CLI

#_008912: RTS

;===================================================================================================

LoadOverworldSongs:
#_008913: LDA.b #SongBank_Overworld_Main>>0
#_008915: STA.b $00

#_008917: LDA.b #SongBank_Overworld_Main>>8
#_008919: STA.b $01

#_00891B: LDA.b #SongBank_Overworld_Main>>16

;---------------------------------------------------------------------------------------------------

PrepareAPUTransfer:
#_00891D: STA.b $02

#_00891F: SEI

#_008920: JSR LoadSongBank

#_008923: CLI

#_008924: RTL

;===================================================================================================

LoadUnderworldSongs:
#_008925: LDA.b #SongBank_Underworld_Main>>0
#_008927: STA.b $00

#_008929: LDA.b #SongBank_Underworld_Main>>8
#_00892B: STA.b $01

#_00892D: LDA.b #SongBank_Underworld_Main>>16
#_00892F: BRA PrepareAPUTransfer

;===================================================================================================

LoadCreditsSongs:
#_008931: LDA.b #SongBank_Credits_Main>>0
#_008933: STA.b $00

#_008935: LDA.b #SongBank_Credits_Main>>8
#_008937: STA.b $01

#_008939: LDA.b #SongBank_Credits_Main>>16
#_00893B: BRA PrepareAPUTransfer

;===================================================================================================
; Flags INIDISP and its DP queue to enable force blank
; Disables HDMA directly and its DP queue
;===================================================================================================
EnableForceBlank:
#_00893D: LDA.b #$80
#_00893F: STA.w INIDISP
#_008942: STA.b $13

#_008944: STZ.w HDMAENABLE
#_008947: STZ.b $9B

#_008949: RTL

;===================================================================================================

SaveGameFile:
#_00894A: PHB

#_00894B: LDA.b #$70
#_00894D: PHA
#_00894E: PLB

#_00894F: REP #$30

#_008951: LDX.w $701FFE

#_008954: LDA.l SaveFileOffsets,X
#_008958: TAY

#_008959: PHY
#_00895A: LDX.w #$0000

;---------------------------------------------------------------------------------------------------

.write_save
#_00895D: LDA.l $7EF000,X
#_008961: STA.w $700000,Y
#_008964: STA.w $700F00,Y

#_008967: LDA.l $7EF100,X
#_00896B: STA.w $700100,Y
#_00896E: STA.w $701000,Y

#_008971: LDA.l $7EF200,X
#_008975: STA.w $700200,Y
#_008978: STA.w $701100,Y

#_00897B: LDA.l $7EF300,X
#_00897F: STA.w $700300,Y
#_008982: STA.w $701200,Y

#_008985: LDA.l $7EF400,X
#_008989: STA.w $700400,Y
#_00898C: STA.w $701300,Y

#_00898F: INY
#_008990: INY

#_008991: INX
#_008992: INX

#_008993: CPX.w #$0100
#_008996: BNE .write_save

;---------------------------------------------------------------------------------------------------

#_008998: LDX.w #$0000
#_00899B: TXA

.calc_checksum
#_00899C: CLC
#_00899D: ADC.l $7EF000,X

#_0089A1: INX
#_0089A2: INX
#_0089A3: CPX.w #$04FE
#_0089A6: BNE .calc_checksum

#_0089A8: STA.b $00

#_0089AA: PLY

#_0089AB: LDA.w #$5A5A
#_0089AE: SEC
#_0089AF: SBC.b $00
#_0089B1: STA.l $7EF4FE

#_0089B5: TYX

#_0089B6: STA.l $7004FE,X
#_0089BA: STA.l $7013FE,X

#_0089BE: SEP #$30

#_0089C0: PLB

#_0089C1: RTL

;===================================================================================================
; FREE ROM: 0x1E
;===================================================================================================
NULL_0089C2:
#_0089C2: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0089CA: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0089D2: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0089DA: db $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

NMI_DoUpdates:
#_0089E0: REP #$10

#_0089E2: LDA.b #$80
#_0089E4: STA.w VMAIN

#_0089E7: LDA.w $0710
#_0089EA: BEQ .do_sprite_updates

#_0089EC: JMP.w .skip_sprite_updates

;---------------------------------------------------------------------------------------------------

.do_sprite_updates
; all of these DMAs are writing to VMDATA in mode 1
#_0089EF: LDX.w #$1801
#_0089F2: STX.w DMA0MODE
#_0089F5: STX.w DMA1MODE
#_0089F8: STX.w DMA2MODE
#_0089FB: STX.w DMA3MODE
#_0089FE: STX.w DMA4MODE

; DMAs 0, 1, 2 are Link graphics
#_008A01: LDA.b #LinkGraphics>>16
#_008A03: STA.w DMA0ADDRB
#_008A06: STA.w DMA1ADDRB
#_008A09: STA.w DMA2ADDRB

; bottom of Link's head
#_008A0C: LDY.w #VRAMaddr($8200)
#_008A0F: STY.w VMADDR

#_008A12: LDY.w $0ACE
#_008A15: STY.w DMA0ADDRL

#_008A18: LDX.w #$0040
#_008A1B: STX.w DMA0SIZE

; bottom of Link's body
#_008A1E: LDY.w $0AD2
#_008A21: STY.w DMA1ADDRL
#_008A24: STX.w DMA1SIZE

; auxiliary Link part 2
#_008A27: LDY.w $0AD6
#_008A2A: STY.w DMA2ADDRL

#_008A2D: LDY.w #$0020 ; that one hand is fewer bytes
#_008A30: STY.w DMA2SIZE

#_008A33: LDA.b #$07
#_008A35: STA.w DMAENABLE

#_008A38: STY.w DMA2SIZE

; top row next, so it can bleed into sword
#_008A3B: LDY.w #VRAMaddr($8000)
#_008A3E: STY.w VMADDR

; top of head
#_008A41: LDY.w $0ACC
#_008A44: STY.w DMA0ADDRL

#_008A47: STX.w DMA0SIZE

; top of body
#_008A4A: LDY.w $0AD0

#_008A4D: STY.w DMA1ADDRL
#_008A50: STX.w DMA1SIZE

; aux 1
#_008A53: LDY.w $0AD4
#_008A56: STY.w DMA2ADDRL

#_008A59: STA.w DMAENABLE

;---------------------------------------------------------------------------------------------------

; I'm like 90% sure this means to use bank 7E
#_008A5C: LDA.b #$7E
#_008A5E: STA.w DMA0ADDRB
#_008A61: STA.w DMA1ADDRB
#_008A64: STA.w DMA2ADDRB
#_008A67: STA.w DMA3ADDRB
#_008A6A: STA.w DMA4ADDRB

; sword graphics top
#_008A6D: LDY.w $0AC0
#_008A70: STY.w DMA0ADDRL

#_008A73: STX.w DMA0SIZE

; shield graphics top
#_008A76: LDY.w $0AC4
#_008A79: STY.w DMA1ADDRL

#_008A7C: STX.w DMA1SIZE

; volatile item gfx top
#_008A7F: LDY.w $0AC8
#_008A82: STY.w DMA2ADDRL

#_008A85: STX.w DMA2SIZE

; rupee animation
#_008A88: LDY.w $0AE0
#_008A8B: STY.w DMA3ADDRL

#_008A8E: LDY.w #$0020
#_008A91: STY.w DMA3SIZE

; push blocks
#_008A94: LDY.w $0AD8
#_008A97: STY.w DMA4ADDRL

#_008A9A: STX.w DMA4SIZE

; Let 'em rip!
#_008A9D: LDA.b #$1F
#_008A9F: STA.w DMAENABLE

;---------------------------------------------------------------------------------------------------

; now the next row
; not sure why this couldn't be done with the first set
; maybe because of the bank swap to 7E?
#_008AA2: LDY.w #VRAMaddr($82A0)
#_008AA5: STY.w VMADDR

; sword bottom
#_008AA8: LDY.w $0AC2
#_008AAB: STY.w DMA0ADDRL

#_008AAE: STX.w DMA0SIZE

; shield bottom
#_008AB1: LDY.w $0AC6
#_008AB4: STY.w DMA1ADDRL

#_008AB7: STX.w DMA1SIZE

; item bottom
#_008ABA: LDY.w $0ACA
#_008ABD: STY.w DMA2ADDRL

#_008AC0: STX.w DMA2SIZE

; rupee bottom
#_008AC3: LDY.w $0AE2
#_008AC6: STY.w DMA3ADDRL

#_008AC9: LDY.w #$0020 ; rupee is tiny
#_008ACC: STY.w DMA3SIZE

; bottom of block
#_008ACF: LDY.w $0ADA
#_008AD2: STY.w DMA4ADDRL

#_008AD5: STX.w DMA4SIZE

; CHUG! CHUG! CHUG!
#_008AD8: STA.w DMAENABLE

;---------------------------------------------------------------------------------------------------

; follower graphics next
#_008ADB: LDY.w #VRAMaddr($8400)
#_008ADE: STY.w VMADDR

; follower head top
#_008AE1: LDY.w $0AEC
#_008AE4: STY.w DMA0ADDRL

#_008AE7: STX.w DMA0SIZE

; follower body top
#_008AEA: LDY.w $0AF0

#_008AED: STY.w DMA1ADDRL
#_008AF0: STX.w DMA1SIZE

; item get
#_008AF3: LDY.w #$7EBD40 ; always this address in bank 7E
#_008AF6: STY.w DMA2ADDRL

#_008AF9: STX.w DMA2SIZE

; 3 at once nice
#_008AFC: LDA.b #$07
#_008AFE: STA.w DMAENABLE

;---------------------------------------------------------------------------------------------------

; now the bottom parts of those
#_008B01: LDY.w #VRAMaddr($8600)
#_008B04: STY.w VMADDR

; follower head bottom
#_008B07: LDY.w $0AEE
#_008B0A: STY.w DMA0ADDRL

#_008B0D: STX.w DMA0SIZE

; follower body bottom
#_008B10: LDY.w $0AF2
#_008B13: STY.w DMA1ADDRL

#_008B16: STX.w DMA1SIZE

; item get bottom
#_008B19: LDY.w #$7EBD80 ; always this address in bank 7E
#_008B1C: STY.w DMA2ADDRL

#_008B1F: STX.w DMA2SIZE

#_008B22: STA.w DMAENABLE

;---------------------------------------------------------------------------------------------------

; wow the duck update is conditional!
#_008B25: LDA.w $0AF4
#_008B28: BEQ .no_update_swagduck

#_008B2A: LDY.w #VRAMaddr($81C0)
#_008B2D: STY.w VMADDR

; top
#_008B30: LDY.w $0AF6
#_008B33: STY.w DMA0ADDRL

#_008B36: STX.w DMA0SIZE

#_008B39: LDA.b #$01
#_008B3B: STA.w DMAENABLE

;---------------------------------------------------------------------------------------------------

#_008B3E: LDY.w #VRAMaddr($83C0)
#_008B41: STY.w VMADDR

; bottom
#_008B44: LDY.w $0AF8
#_008B47: STY.w DMA0ADDRL

#_008B4A: STX.w DMA0SIZE

#_008B4D: STA.w DMAENABLE

;---------------------------------------------------------------------------------------------------

.no_update_swagduck
#_008B50: LDX.w $0ADC
#_008B53: STX.w DMA0ADDRL

#_008B56: LDX.w $0134
#_008B59: STX.w VMADDR

#_008B5C: LDX.w #$0400
#_008B5F: STX.w DMA0SIZE

#_008B62: LDA.b #$01
#_008B64: STA.w DMAENABLE

;---------------------------------------------------------------------------------------------------

.skip_sprite_updates
#_008B67: LDA.b $16
#_008B69: BEQ .skip_BG3

#_008B6B: LDX.w $0219
#_008B6E: STX.w VMADDR

#_008B71: LDX.w #$7EC700>>0
#_008B74: STX.w DMA0ADDRL

#_008B77: LDA.b #$7EC700>>16
#_008B79: STA.w DMA0ADDRB

#_008B7C: LDX.w #$014A
#_008B7F: STX.w DMA0SIZE

#_008B82: LDA.b #$01
#_008B84: STA.w DMAENABLE

;---------------------------------------------------------------------------------------------------

.skip_BG3
#_008B87: LDA.b $15
#_008B89: BEQ .skip_CGRAM

; Transfer CGRAM
#_008B8B: STZ.w CGADD

#_008B8E: LDY.w #$2200
#_008B91: STY.w DMA1MODE

#_008B94: LDY.w #$7EC500>>0
#_008B97: STY.w DMA1ADDRL

#_008B9A: LDA.b #$7EC500>>16
#_008B9C: STA.w DMA1ADDRB

#_008B9F: LDY.w #$0200
#_008BA2: STY.w DMA1SIZE

#_008BA5: LDA.b #$02
#_008BA7: STA.w DMAENABLE

;---------------------------------------------------------------------------------------------------

.skip_CGRAM
; transfer OAM
#_008BAA: REP #$20
#_008BAC: SEP #$10

#_008BAE: STZ.b $15
#_008BB0: STZ.w OAMADDR

#_008BB3: LDA.w #$0400
#_008BB6: STA.w DMA0MODE

#_008BB9: LDA.w #$0800
#_008BBC: STA.w DMA0ADDRL
#_008BBF: STZ.w DMA0ADDRB

#_008BC2: LDA.w #$0220
#_008BC5: STA.w DMA0SIZE

#_008BC8: LDY.b #$01
#_008BCA: STY.w DMAENABLE

;---------------------------------------------------------------------------------------------------

#_008BCD: SEP #$30

#_008BCF: LDY.b $14
#_008BD1: BEQ .no_stripes

#_008BD3: LDA.w Stripes14_SourceAddress_low-1,Y
#_008BD6: STA.b $00

#_008BD8: LDA.w Stripes14_SourceAddress_high-1,Y
#_008BDB: STA.b $01

#_008BDD: LDA.w Stripes14_SourceAddress_bank-1,Y
#_008BE0: STA.b $02

#_008BE2: JSR HandleStripes14

#_008BE5: LDA.b $14
#_008BE7: CMP.b #$01
#_008BE9: BNE .leave_stripes_alone

#_008BEB: STZ.w $1000
#_008BEE: STZ.w $1001

.leave_stripes_alone
#_008BF1: STZ.b $14

;---------------------------------------------------------------------------------------------------

.no_stripes
; Used by Graphics_IncrementalVRAMUpload
#_008BF3: LDA.b $19
#_008BF5: BEQ .no_incremental_upload

#_008BF7: STA.w VMADDH

#_008BFA: REP #$10

#_008BFC: LDX.w #$0080
#_008BFF: STX.w VMAIN

#_008C02: LDX.w #$1801
#_008C05: STX.w DMA0MODE

#_008C08: LDX.w $0118
#_008C0B: STX.w DMA0ADDRL

#_008C0E: LDA.b #$7F
#_008C10: STA.w DMA0ADDRB

#_008C13: LDX.w #$0200
#_008C16: STX.w DMA0SIZE

#_008C19: LDA.b #$01
#_008C1B: STA.w DMAENABLE

#_008C1E: STZ.b $19

#_008C20: SEP #$10

;---------------------------------------------------------------------------------------------------

.no_incremental_upload
#_008C22: LDX.b $18
#_008C24: BEQ .no_arb_dma

#_008C26: STZ.w DMA1ADDRB

#_008C29: REP #$20

#_008C2B: LDA.w #$1801
#_008C2E: STA.w DMA1MODE

#_008C31: REP #$10

#_008C33: LDX.w #$0000

#_008C36: LDA.w $1100,X

.next_chunk
#_008C39: STA.w VMADDR

#_008C3C: TXA
#_008C3D: CLC
#_008C3E: ADC.w #$1104
#_008C41: STA.w DMA1ADDRL

#_008C44: LDA.w $1103,X
#_008C47: AND.w #$00FF
#_008C4A: STA.w DMA1SIZE

#_008C4D: CLC
#_008C4E: ADC.w #$0004
#_008C51: STA.b $00

#_008C53: SEP #$20

#_008C55: LDA.w $1102,X
#_008C58: STA.w VMAIN

#_008C5B: LDA.b #$02
#_008C5D: STA.w DMAENABLE

#_008C60: REP #$21

#_008C62: TXA
#_008C63: ADC.b $00
#_008C65: TAX

#_008C66: LDA.w $1100,X
#_008C69: CMP.w #$FFFF
#_008C6C: BNE .next_chunk

#_008C6E: SEP #$30

#_008C70: STZ.b $18
#_008C72: STZ.w $0710

;---------------------------------------------------------------------------------------------------

.no_arb_dma
#_008C75: LDA.b $17
#_008C77: ASL A
#_008C78: TAX

#_008C79: STZ.b $17

#_008C7B: JMP.w (.vectors,X)

;---------------------------------------------------------------------------------------------------

.vectors
#_008C7E: dw NMI_NoTileUpdates                 ; 0x00
#_008C80: dw NMI_UploadTilemap                 ; 0x01
#_008C82: dw NMI_UploadBG3Text                 ; 0x02
#_008C84: dw NMI_UpdateOWScroll                ; 0x03
#_008C86: dw NMI_UpdateSubscreenOverlay        ; 0x04
#_008C88: dw NMI_UpdateBG1Wall                 ; 0x05
#_008C8A: dw NMI_TileMapNothing                ; 0x06
#_008C8C: dw NMI_UpdateLoadLightWorldMap       ; 0x07
#_008C8E: dw NMI_UpdateBG2Left                 ; 0x08
#_008C90: dw NMI_UpdateBGChar3and4             ; 0x09
#_008C92: dw NMI_UpdateBGChar5and6             ; 0x0A
#_008C94: dw NMI_UpdateBGCharHalf              ; 0x0B
#_008C96: dw NMI_UploadSubscreenOverlayLatter  ; 0x0C
#_008C98: dw NMI_UploadSubscreenOverlayFormer  ; 0x0D
#_008C9A: dw NMI_UpdateBGChar0                 ; 0x0E
#_008C9C: dw NMI_UpdateBGChar1                 ; 0x0F
#_008C9E: dw NMI_UpdateBGChar2                 ; 0x10
#_008CA0: dw NMI_UpdateBGChar3                 ; 0x11
#_008CA2: dw NMI_UpdateObjChar0                ; 0x12
#_008CA4: dw NMI_UpdateObjChar2                ; 0x13
#_008CA6: dw NMI_UpdateObjChar3                ; 0x14
#_008CA8: dw NMI_UploadDarkWorldMap            ; 0x15
#_008CAA: dw NMI_UploadGameOverText            ; 0x16
#_008CAC: dw NMI_UpdatePegTiles                ; 0x17
#_008CAE: dw NMI_UpdateStarTiles               ; 0x18

;===================================================================================================

NMI_UploadTilemap:
#_008CB0: LDX.w $0116

#_008CB3: LDA.w TilemapUpload_HighBytes,X
#_008CB6: STA.w VMADDH

#_008CB9: STZ.w DMA0ADDRB

#_008CBC: REP #$20

#_008CBE: LDA.w #$0080
#_008CC1: STA.w VMAIN

#_008CC4: LDA.w #$1801
#_008CC7: STA.w DMA0MODE

#_008CCA: LDA.w #$7E1000
#_008CCD: STA.w DMA0ADDRL

#_008CD0: LDA.w #$0800
#_008CD3: STA.w DMA0SIZE

#_008CD6: LDY.b #$01
#_008CD8: STY.w DMAENABLE

#_008CDB: STZ.w $1000

#_008CDE: SEP #$20

#_008CE0: STZ.w $0710

;===================================================================================================

NMI_NoTileUpdates:
#_008CE3: RTS

;===================================================================================================

NMI_UploadBG3Text:
#_008CE4: REP #$10

#_008CE6: LDA.b #$80
#_008CE8: STA.w VMAIN

#_008CEB: LDX.w #$1801
#_008CEE: STX.w DMA0MODE

#_008CF1: LDY.w #VRAMaddr($F800)
#_008CF4: STY.w VMADDR

#_008CF7: LDY.w #$7F0000
#_008CFA: STY.w DMA0ADDRL

#_008CFD: LDA.b #$7F
#_008CFF: STA.w DMA0ADDRB

#_008D02: LDX.w #$0780
#_008D05: STX.w DMA0SIZE

#_008D08: LDA.b #$01
#_008D0A: STA.w DMAENABLE

#_008D0D: SEP #$10

#_008D0F: STZ.w $0710

#_008D12: RTS

;===================================================================================================

NMI_UpdateOWScroll:
#_008D13: REP #$10

#_008D15: LDX.w #$1801
#_008D18: STX.w DMA0MODE

#_008D1B: STZ.w DMA0ADDRB

#_008D1E: LDA.w $1101
#_008D21: AND.b #$80
#_008D23: ASL A
#_008D24: ROL A
#_008D25: ORA.b #$80
#_008D27: STA.w VMAIN

#_008D2A: REP #$20

#_008D2C: LDA.w $1100
#_008D2F: AND.w #$3FFF
#_008D32: TAX

#_008D33: INC A
#_008D34: INC A
#_008D35: STA.b $02

#_008D37: LDY.w #$0000

.next_transfer
#_008D3A: REP #$21

#_008D3C: LDA.w $1102,Y
#_008D3F: STA.w VMADDR

#_008D42: TYA
#_008D43: ADC.w #$1104
#_008D46: STA.w DMA0ADDRL

#_008D49: TYA
#_008D4A: ADC.b $02
#_008D4C: TAY

#_008D4D: STX.w DMA0SIZE

#_008D50: SEP #$20

#_008D52: LDA.b #$01
#_008D54: STA.w DMAENABLE

#_008D57: LDA.w $1103,Y
#_008D5A: BPL .next_transfer

#_008D5C: SEP #$30

#_008D5E: STZ.w $0710

#_008D61: RTS

;===================================================================================================

NMI_UpdateSubscreenOverlay:
#_008D62: LDA.b #$7F
#_008D64: STA.w DMA0ADDRB

#_008D67: LDA.b #$80
#_008D69: STA.w VMAIN

#_008D6C: REP #$31

#_008D6E: LDA.w #$7F2000
#_008D71: STA.w DMA0ADDRL

#_008D74: LDX.w #$0000 ; start at $7F4000
#_008D77: LDA.w #$0080 ; 16 chunks
#_008D7A: BRA NMI_HandleArbitraryTileMap

;===================================================================================================

NMI_UploadSubscreenOverlayFormer:
#_008D7C: LDA.b #$7F
#_008D7E: STA.w DMA0ADDRB

#_008D81: LDA.b #$80
#_008D83: STA.w VMAIN

#_008D86: REP #$31

#_008D88: LDA.w #$7F2000
#_008D8B: STA.w DMA0ADDRL

#_008D8E: LDX.w #$0000 ; start at $7F4000
#_008D91: LDA.w #$0040 ; 8 chunks

#_008D94: BRA NMI_HandleArbitraryTileMap

;===================================================================================================

NMI_UploadSubscreenOverlayLatter:
#_008D96: LDA.b #$7F
#_008D98: STA.w DMA0ADDRB

#_008D9B: LDA.b #$80
#_008D9D: STA.w VMAIN

#_008DA0: REP #$31

#_008DA2: LDA.w #$7F3000
#_008DA5: STA.w DMA0ADDRL

#_008DA8: LDX.w #$0040 ; start at $7F4040
#_008DAB: LDA.w #$0080 ; 16 chunks

;===================================================================================================
; Parameters:
;    A = Number of chunks * 8
;    X = Offset into 7F4000
;===================================================================================================
NMI_HandleArbitraryTileMap:
#_008DAE: STA.b $02

#_008DB0: LDA.w #$1801
#_008DB3: STA.w DMA0MODE

; Not sure why they use $00, as it never changes.
; Probably to save that extra byte each time they felt like enabling the DMA.
#_008DB6: LDA.w #$0001
#_008DB9: STA.b $00

#_008DBB: LDY.w #$0080

; $7F4000 holds chunks of 4 VRAM addresses each for the DMA

; Every chunk is 128 bytes, or 64 tiles
.next_chunk
#_008DBE: LDA.l $7F4000,X
#_008DC2: STA.w VMADDR

#_008DC5: STY.w DMA0SIZE

#_008DC8: LDA.b $00
#_008DCA: STA.w DMAENABLE

#_008DCD: LDA.l $7F4002,X
#_008DD1: STA.w VMADDR

#_008DD4: STY.w DMA0SIZE

#_008DD7: LDA.b $00
#_008DD9: STA.w DMAENABLE

#_008DDC: LDA.l $7F4004,X
#_008DE0: STA.w VMADDR

#_008DE3: STY.w DMA0SIZE

#_008DE6: LDA.b $00
#_008DE8: STA.w DMAENABLE

#_008DEB: LDA.l $7F4006,X
#_008DEF: STA.w VMADDR

#_008DF2: STY.w DMA0SIZE

#_008DF5: LDA.b $00
#_008DF7: STA.w DMAENABLE

#_008DFA: TXA
#_008DFB: ADC.w #$0008
#_008DFE: TAX

#_008DFF: CMP.b $02
#_008E01: BNE .next_chunk

#_008E03: SEP #$30

#_008E05: STZ.w $0710

#_008E08: RTS

;===================================================================================================

NMI_UpdateBG1Wall:
#_008E09: REP #$20

#_008E0B: LDA.w #$1801
#_008E0E: STA.w DMA0MODE

#_008E11: LDA.w $0116
#_008E14: STA.w VMADDR

#_008E17: LDX.b #$81
#_008E19: STX.w VMAIN

#_008E1C: LDX.b #$7EC880>>16
#_008E1E: STX.w DMA0ADDRB

#_008E21: LDA.w #$7EC880>>0
#_008E24: STA.w DMA0ADDRL

#_008E27: LDA.w #$0040
#_008E2A: STA.w DMA0SIZE

#_008E2D: LDY.b #$01
#_008E2F: STY.w DMAENABLE

#_008E32: STA.w DMA0SIZE

#_008E35: LDA.w $0116
#_008E38: CLC
#_008E39: ADC.w #$0800
#_008E3C: STA.w VMADDR

#_008E3F: LDA.w #$7EC8C0
#_008E42: STA.w DMA0ADDRL

#_008E45: STY.w DMAENABLE

#_008E48: SEP #$20

#_008E4A: RTS

;===================================================================================================

NMI_TileMapNothing:
#_008E4B: RTS

;===================================================================================================
; Uploads the tilemap in 4 quadrants of 32 rows of 32 tiles
;===================================================================================================
pool NMI_UpdateLoadLightWorldMap

.vram_offset
#_008E4C: dw $0000, $0020, $1000, $1020

pool off

;---------------------------------------------------------------------------------------------------

NMI_UpdateLoadLightWorldMap:
#_008E54: STZ.w VMAIN

#_008E57: LDA.b #WorldMap_LightWorldTileMap>>16
#_008E59: STA.w DMA0ADDRB

#_008E5C: REP #$20

#_008E5E: LDA.w #$1800
#_008E61: STA.w DMA0MODE

#_008E64: STZ.b $04
#_008E66: STZ.b $02

;---------------------------------------------------------------------------------------------------

#_008E68: LDY.b #$01
#_008E6A: LDX.b #$00

.next_quadrant
; each chunk is 32 rows
#_008E6C: LDA.w #$0020
#_008E6F: STA.b $06

#_008E71: LDA.w .vram_offset,X
#_008E74: STA.b $00

.next_row
#_008E76: LDA.b $00
#_008E78: STA.w VMADDR

#_008E7B: CLC
#_008E7C: ADC.w #$0080
#_008E7F: STA.b $00

#_008E81: LDA.b $02
#_008E83: CLC
#_008E84: ADC.w #WorldMap_LightWorldTileMap
#_008E87: STA.w DMA0ADDRL

#_008E8A: LDA.w #$0020
#_008E8D: STA.w DMA0SIZE

#_008E90: STY.w DMAENABLE

#_008E93: CLC
#_008E94: ADC.b $02
#_008E96: STA.b $02

#_008E98: DEC.b $06
#_008E9A: BNE .next_row

#_008E9C: INC.b $04
#_008E9E: INC.b $04

#_008EA0: LDX.b $04
#_008EA2: CPX.b #$08
#_008EA4: BNE .next_quadrant

#_008EA6: SEP #$20

#_008EA8: RTS

;===================================================================================================

NMI_UpdateBG2Left:
#_008EA9: LDA.b #$80

#_008EAB: STA.w VMAIN

#_008EAE: REP #$10

#_008EB0: LDY.w #VRAMaddr($0000)
#_008EB3: STY.w VMADDR

#_008EB6: LDY.w #$1801
#_008EB9: STY.w DMA1MODE

#_008EBC: LDY.w #$7F0000
#_008EBF: STY.w DMA1ADDRL

#_008EC2: LDA.b #$7F
#_008EC4: STA.w DMA1ADDRB

#_008EC7: LDY.w #$0800
#_008ECA: STY.w DMA1SIZE

#_008ECD: LDA.b #$02
#_008ECF: STA.w DMAENABLE

#_008ED2: STY.w DMA1SIZE

#_008ED5: LDY.w #$0800
#_008ED8: STY.w VMADDR

#_008EDB: LDY.w #$7F0800
#_008EDE: STY.w DMA1ADDRL

#_008EE1: STA.w DMAENABLE

#_008EE4: SEP #$10

#_008EE6: RTS

;===================================================================================================

NMI_UpdateBGChar3and4:
#_008EE7: REP #$20

#_008EE9: LDA.w #VRAMaddr($5800)
#_008EEC: STA.w VMADDR

#_008EEF: LDY.b #$80
#_008EF1: STY.w VMAIN

#_008EF4: LDA.w #$1801
#_008EF7: STA.w DMA0MODE

#_008EFA: LDA.w #$7F0000
#_008EFD: STA.w DMA0ADDRL

#_008F00: LDY.b #$7F
#_008F02: STY.w DMA0ADDRB

#_008F05: LDA.w #$1000
#_008F08: STA.w DMA0SIZE

#_008F0B: LDY.b #$01
#_008F0D: STY.w DMAENABLE

#_008F10: SEP #$20

#_008F12: STZ.w $0710

#_008F15: RTS

;===================================================================================================

NMI_UpdateBGChar5and6:
#_008F16: REP #$20

#_008F18: LDA.w #VRAMaddr($6800)
#_008F1B: STA.w VMADDR

#_008F1E: LDY.b #$80
#_008F20: STY.w VMAIN

#_008F23: LDA.w #$1801
#_008F26: STA.w DMA0MODE

#_008F29: LDA.w #$7F1000
#_008F2C: STA.w DMA0ADDRL

#_008F2F: LDY.b #$7F
#_008F31: STY.w DMA0ADDRB

#_008F34: LDA.w #$1000
#_008F37: STA.w DMA0SIZE

#_008F3A: LDY.b #$01
#_008F3C: STY.w DMAENABLE

#_008F3F: SEP #$20

#_008F41: STZ.w $0710

#_008F44: RTS

;===================================================================================================

NMI_UpdateBGCharHalf:
#_008F45: LDA.w $0116
#_008F48: STA.w VMADDH

#_008F4B: REP #$10

#_008F4D: LDX.w #$0080
#_008F50: STX.w VMAIN

#_008F53: LDX.w #$1801
#_008F56: STX.w DMA0MODE

#_008F59: LDX.w #$7F1000
#_008F5C: STX.w DMA0ADDRL

#_008F5F: LDA.b #$7F
#_008F61: STA.w DMA0ADDRB

#_008F64: LDX.w #$0400
#_008F67: STX.w DMA0SIZE

#_008F6A: LDA.b #$01
#_008F6C: STA.w DMAENABLE

#_008F6F: SEP #$10

#_008F71: RTS

;===================================================================================================

NMI_UpdateBGChar0:
#_008F72: REP #$20

#_008F74: LDA.w #VRAMaddr($4000)

#_008F77: BRA NMI_RunTileMapUpdateDMA

;===================================================================================================

NMI_UpdateBGChar1:
#_008F79: REP #$20

#_008F7B: LDA.w #VRAMaddr($5000)

#_008F7E: BRA NMI_RunTileMapUpdateDMA

;===================================================================================================

NMI_UpdateBGChar2:
#_008F80: REP #$20

#_008F82: LDA.w #VRAMaddr($6000)

#_008F85: BRA NMI_RunTileMapUpdateDMA

;===================================================================================================

NMI_UpdateBGChar3:
#_008F87: REP #$20

#_008F89: LDA.w #VRAMaddr($7000)

#_008F8C: BRA NMI_RunTileMapUpdateDMA

;===================================================================================================

NMI_UpdateObjChar0:
#_008F8E: REP #$20

#_008F90: LDA.w #VRAMaddr($8800)
#_008F93: STA.w VMADDR

#_008F96: LDA.w #$7F0000
#_008F99: STA.w DMA0ADDRL

#_008F9C: LDY.b #$80
#_008F9E: STY.w VMAIN

#_008FA1: LDA.w #$1801
#_008FA4: STA.w DMA0MODE

#_008FA7: LDY.b #$7F
#_008FA9: STY.w DMA0ADDRB

#_008FAC: LDA.w #$0800
#_008FAF: STA.w DMA0SIZE

#_008FB2: LDY.b #$01
#_008FB4: STY.w DMAENABLE

#_008FB7: SEP #$20

#_008FB9: STZ.w $0710

#_008FBC: RTS

;===================================================================================================

NMI_UpdateObjChar2:
#_008FBD: REP #$20

#_008FBF: LDA.w #VRAMaddr($A000)

#_008FC2: BRA NMI_RunTileMapUpdateDMA

;===================================================================================================

NMI_UpdateObjChar3:
#_008FC4: REP #$20

#_008FC6: LDA.w #VRAMaddr($B000)

;===================================================================================================

NMI_RunTileMapUpdateDMA:
#_008FC9: STA.w VMADDR

#_008FCC: LDA.w #$7F0000
#_008FCF: STA.w DMA0ADDRL

#_008FD2: LDY.b #$80
#_008FD4: STY.w VMAIN

#_008FD7: LDA.w #$1801
#_008FDA: STA.w DMA0MODE

#_008FDD: LDY.b #$7F
#_008FDF: STY.w DMA0ADDRB

#_008FE2: LDA.w #$1000
#_008FE5: STA.w DMA0SIZE

#_008FE8: LDY.b #$01
#_008FEA: STY.w DMAENABLE

#_008FED: SEP #$20

#_008FEF: STZ.w $0710

#_008FF2: RTS

;===================================================================================================
; Uploads the tilemap in 32 rows of 32 tiles.
; Light world routine takes care of the clouds and such.
; Not sure why it uses $1000 instead of the ROM data.
;===================================================================================================
NMI_UploadDarkWorldMap:
#_008FF3: STZ.w VMAIN
#_008FF6: STZ.w DMA0ADDRB

#_008FF9: REP #$20

#_008FFB: LDA.w #$1800
#_008FFE: STA.w DMA0MODE

#_009001: STZ.b $02

#_009003: LDA.w #$0020
#_009006: STA.b $06

#_009008: LDA.w #VRAMaddr($1020)
#_00900B: STA.b $00

#_00900D: LDY.b #$01

;---------------------------------------------------------------------------------------------------

.next_row
#_00900F: LDA.b $00
#_009011: STA.w VMADDR

#_009014: CLC
#_009015: ADC.w #VRAMaddr($0100)
#_009018: STA.b $00

#_00901A: LDA.b $02
#_00901C: CLC
#_00901D: ADC.w #$1000
#_009020: STA.w DMA0ADDRL

#_009023: LDA.w #$0020
#_009026: STA.w DMA0SIZE

#_009029: STY.w DMAENABLE

#_00902C: CLC
#_00902D: ADC.b $02
#_00902F: STA.b $02

#_009031: DEC.b $06
#_009033: BNE .next_row

#_009035: SEP #$20

#_009037: RTS

;===================================================================================================

NMI_UploadGameOverText:
#_009038: REP #$20

#_00903A: LDA.w #VRAMaddr($F000)
#_00903D: STA.w VMADDR

#_009040: LDA.w #$7E2000
#_009043: STA.w DMA0ADDRL

#_009046: LDY.b #$80
#_009048: STY.w VMAIN

#_00904B: LDA.w #$1801
#_00904E: STA.w DMA0MODE

#_009051: LDY.b #$7E
#_009053: STY.w DMA0ADDRB

#_009056: LDA.w #$0800
#_009059: STA.w DMA0SIZE

#_00905C: LDY.b #$01
#_00905E: STY.w DMAENABLE

#_009061: LDA.w #VRAMaddr($FA00)
#_009064: STA.w VMADDR

#_009067: LDA.w #$7E3400
#_00906A: STA.w DMA0ADDRL

#_00906D: LDY.b #$80
#_00906F: STY.w VMAIN

#_009072: LDA.w #$1801
#_009075: STA.w DMA0MODE

#_009078: LDY.b #$7E
#_00907A: STY.w DMA0ADDRB

#_00907D: LDA.w #$0600
#_009080: STA.w DMA0SIZE

#_009083: LDY.b #$01
#_009085: STY.w DMAENABLE

#_009088: SEP #$20

#_00908A: RTS

;===================================================================================================

NMI_UpdatePegTiles:
#_00908B: REP #$10

#_00908D: LDX.w #VRAMaddr($7A00)
#_009090: STX.w VMADDR

#_009093: LDA.b #$80
#_009095: STA.w VMAIN

#_009098: LDX.w #$1801
#_00909B: STX.w DMA0MODE

#_00909E: LDX.w #$7F0000
#_0090A1: STX.w DMA0ADDRL

#_0090A4: LDA.b #$7F
#_0090A6: STA.w DMA0ADDRB

#_0090A9: LDX.w #$0100
#_0090AC: STX.w DMA0SIZE

#_0090AF: LDA.b #$01
#_0090B1: STA.w DMAENABLE

#_0090B4: SEP #$10

#_0090B6: RTS

;===================================================================================================

NMI_UpdateStarTiles:
#_0090B7: REP #$10

#_0090B9: LDX.w #VRAMaddr($7DA0)
#_0090BC: STX.w VMADDR

#_0090BF: LDA.b #$80
#_0090C1: STA.w VMAIN

#_0090C4: LDX.w #$1801
#_0090C7: STX.w DMA0MODE

#_0090CA: LDX.w #$7F0000
#_0090CD: STX.w DMA0ADDRL

#_0090D0: LDA.b #$7F
#_0090D2: STA.w DMA0ADDRB

#_0090D5: LDX.w #$0040
#_0090D8: STX.w DMA0SIZE

#_0090DB: LDA.b #$01
#_0090DD: STA.w DMAENABLE

#_0090E0: SEP #$10

#_0090E2: RTS

;===================================================================================================

NMI_UploadTilemap_long:
#_0090E3: JSR NMI_UploadTilemap

#_0090E6: RTL

;===================================================================================================

NMI_UpdateOWScroll_long:
#_0090E7: JSR NMI_UpdateOWScroll

#_0090EA: RTL

;===================================================================================================
; Unused stripes routine
;===================================================================================================
UNREACHABLE_0090EB:
#_0090EB: STA.b $14

#_0090ED: TAY

#_0090EE: LDA.w Stripes14_SourceAddress_low-1,Y
#_0090F1: STA.b $00

#_0090F3: LDA.w Stripes14_SourceAddress_high-1,Y
#_0090F6: STA.b $01

#_0090F8: LDA.w Stripes14_SourceAddress_bank-1,Y
#_0090FB: STA.b $02

#_0090FD: JSR HandleStripes14

#_009100: LDA.b $14
#_009102: CMP.b #$01
#_009104: BNE .dont_clear

#_009106: STZ.w $1000
#_009109: STZ.w $1001

.dont_clear
#_00910C: STZ.b $14

#_00910E: RTL

;===================================================================================================

UnderworldTilemapQuadrantOffset:
#_00910F: dw $0000, $1000, $0000, $0040
#_009117: dw $0040, $1040, $1000, $1040
#_00911F: dw $1000, $0000, $0040, $0000
#_009127: dw $1040, $0040, $1040, $1000

;---------------------------------------------------------------------------------------------------

UnderworldTilemapQuadrantVRAMIndex:
#_00912F: db $01, $05, $09, $0D
#_009133: db $02, $06, $0A, $0E
#_009137: db $03, $07, $0B, $0F
#_00913B: db $04, $08, $0C, $10

;---------------------------------------------------------------------------------------------------

Underworld_PrepareNextRoomQuadrantUpload:
#_00913F: REP #$31

#_009141: LDA.w $0418
#_009144: AND.w #$000F
#_009147: ADC.w $045C
#_00914A: PHA

#_00914B: ASL A
#_00914C: TAY

#_00914D: LDX.w UnderworldTilemapQuadrantOffset,Y

;---------------------------------------------------------------------------------------------------

#_009150: LDY.w #$0000

.next
#_009153: LDA.l $7E2000,X
#_009157: STA.w $1000,Y

#_00915A: LDA.l $7E2002,X
#_00915E: STA.w $1002,Y

#_009161: LDA.l $7E2080,X
#_009165: STA.w $1040,Y

#_009168: LDA.l $7E2082,X
#_00916C: STA.w $1042,Y

#_00916F: LDA.l $7E2100,X
#_009173: STA.w $1080,Y

#_009176: LDA.l $7E2102,X
#_00917A: STA.w $1082,Y

#_00917D: LDA.l $7E2180,X
#_009181: STA.w $10C0,Y

#_009184: LDA.l $7E2182,X
#_009188: STA.w $10C2,Y

#_00918B: INX
#_00918C: INX
#_00918D: INX
#_00918E: INX

#_00918F: INY
#_009190: INY
#_009191: INY
#_009192: INY

#_009193: TYA
#_009194: AND.w #$003F
#_009197: BNE .next

;---------------------------------------------------------------------------------------------------

#_009199: TYA
#_00919A: CLC
#_00919B: ADC.w #$00C0
#_00919E: TAY

#_00919F: TXA
#_0091A0: CLC
#_0091A1: ADC.w #$01C0
#_0091A4: TAX

#_0091A5: CPY.w #$0800
#_0091A8: BNE .next

#_0091AA: PLX

#_0091AB: SEP #$30

#_0091AD: LDA.w $045C
#_0091B0: CLC
#_0091B1: ADC.b #$04
#_0091B3: STA.w $045C

#_0091B6: LDA.w UnderworldTilemapQuadrantVRAMIndex,X
#_0091B9: STA.w $0116

#_0091BC: LDA.b #$01
#_0091BE: STA.b $17
#_0091C0: STA.w $0710

#_0091C3: RTL

;===================================================================================================

WaterFlood_BuildOneQuadrantForVRAM:
#_0091C4: LDA.b $AE
#_0091C6: CMP.b #$19
#_0091C8: BNE TileMapPrep_NotWaterOnTag

#_0091CA: LDA.w $0405
#_0091CD: AND.l DungeonMask+1
#_0091D1: BEQ WaterFlood_BuildOneQuadrantForVRAM_not_triggered

;===================================================================================================

TileMapPrep_NotWaterOnTag:
#_0091D3: REP #$31

#_0091D5: LDA.w $0418
#_0091D8: AND.w #$000F
#_0091DB: ADC.w $045C
#_0091DE: PHA

#_0091DF: ASL A
#_0091E0: TAY

#_0091E1: LDX.w UnderworldTilemapQuadrantOffset,Y

;---------------------------------------------------------------------------------------------------

#_0091E4: LDY.w #$0000

.next
#_0091E7: LDA.l $7E4000,X
#_0091EB: STA.w $1000,Y

#_0091EE: LDA.l $7E4002,X
#_0091F2: STA.w $1002,Y

#_0091F5: LDA.l $7E4080,X
#_0091F9: STA.w $1040,Y

#_0091FC: LDA.l $7E4082,X
#_009200: STA.w $1042,Y

#_009203: LDA.l $7E4100,X
#_009207: STA.w $1080,Y

#_00920A: LDA.l $7E4102,X
#_00920E: STA.w $1082,Y

#_009211: LDA.l $7E4180,X
#_009215: STA.w $10C0,Y

#_009218: LDA.l $7E4182,X
#_00921C: STA.w $10C2,Y

#_00921F: INX
#_009220: INX
#_009221: INX
#_009222: INX

#_009223: INY
#_009224: INY
#_009225: INY
#_009226: INY

#_009227: TYA
#_009228: AND.w #$003F
#_00922B: BNE .next

#_00922D: TYA
#_00922E: CLC
#_00922F: ADC.w #$00C0
#_009232: TAY

#_009233: TXA
#_009234: CLC
#_009235: ADC.w #$01C0
#_009238: TAX

#_009239: CPY.w #$0800
#_00923C: BNE .next

;---------------------------------------------------------------------------------------------------

#_00923E: PLX

#_00923F: SEP #$30

#_009241: LDA.w UnderworldTilemapQuadrantVRAMIndex,X
#_009244: CLC
#_009245: ADC.b #$10
#_009247: STA.w $0116

#_00924A: LDA.b #$01
#_00924C: STA.b $17
#_00924E: STA.w $0710

#_009251: RTL

;===================================================================================================

WaterFlood_BuildOneQuadrantForVRAM_not_triggered:
#_009252: REP #$31

#_009254: LDX.w #$00F0

#_009257: LDY.w #$0000

.next
#_00925A: LDA.w RoomDrawObjectData,X
#_00925D: STA.w $1000,Y
#_009260: STA.w $1002,Y
#_009263: STA.w $1040,Y
#_009266: STA.w $1042,Y
#_009269: STA.w $1080,Y
#_00926C: STA.w $1082,Y
#_00926F: STA.w $10C0,Y
#_009272: STA.w $10C2,Y

#_009275: INY
#_009276: INY
#_009277: INY
#_009278: INY

#_009279: TYA
#_00927A: AND.w #$003F
#_00927D: BNE .next

#_00927F: TYA
#_009280: CLC
#_009281: ADC.w #$00C0
#_009284: TAY

#_009285: CPY.w #$0800
#_009288: BNE .next

;---------------------------------------------------------------------------------------------------

#_00928A: LDA.w $0418
#_00928D: AND.w #$000F
#_009290: CLC
#_009291: ADC.w $045C
#_009294: TAX

#_009295: SEP #$30

#_009297: LDA.w UnderworldTilemapQuadrantVRAMIndex,X
#_00929A: CLC
#_00929B: ADC.b #$10
#_00929D: STA.w $0116

#_0092A0: RTL

;===================================================================================================
; Named as such because it's operated with $14
; Begins with a 24-bit source address in $00
;===================================================================================================
; ALTTP STRIPES FORMAT
;===================================================================================================
; Usually seen used by the large block of memory at $7E:1000 or $7E:1100.
; $1000 is often used to preserve the current index of the block when writing arbitrary stripes.
; So the stripes may actually start at $1002.
; 
; Each stripe starts with a 16-bit header:
; DRLLLLLL LLLLLLLL
;   D - direction of stripe (0: horizontal | 1: vertical)
;   R - RLE encoding (0: raw data | 1: fixed data)
;   L - transfer size
;
; For RLE encoding, the size of the transfer is equal to the number of bytes minus 2.
; For raw data, the size of the transfer is the number of bytes minus 1.
;===================================================================================================
HandleStripes14:
#_0092A1: REP #$10

#_0092A3: STA.w DMA1ADDRB

#_0092A6: STZ.b $06

#_0092A8: LDY.w #$0000

#_0092AB: LDA.b [$00],Y
#_0092AD: BPL .next_stripe

#_0092AF: SEP #$30

#_0092B1: RTS

;---------------------------------------------------------------------------------------------------

.next_stripe
#_0092B2: STA.b $04 ; save high byte of VRAM address

#_0092B4: INY

#_0092B5: LDA.b [$00],Y ; save low byte of VRAM address
#_0092B7: STA.b $03

#_0092B9: INY

#_0092BA: LDA.b [$00],Y ; get 0 or 1 for VMAIN from bit 7
#_0092BC: AND.b #$80
#_0092BE: ASL A
#_0092BF: ROL A
#_0092C0: STA.b $07

#_0092C2: LDA.b [$00],Y ; 0x08 or 0x00 for fixed transfer
#_0092C4: AND.b #$40
#_0092C6: STA.b $05

#_0092C8: LSR A
#_0092C9: LSR A
#_0092CA: LSR A
#_0092CB: ORA.b #$01 ; and set DMA write to mode 1
#_0092CD: STA.w DMA1MODE

#_0092D0: LDA.b #VMDATAL
#_0092D2: STA.w DMA1PORT

#_0092D5: REP #$20

#_0092D7: LDA.b $03
#_0092D9: STA.w VMADDR

#_0092DC: LDA.b [$00],Y ; get size
#_0092DE: XBA ; swap to big endian
#_0092DF: AND.w #$3FFF ; remove the flags
#_0092E2: TAX

#_0092E3: INX ; -1 to account for size
#_0092E4: STX.w DMA1SIZE

#_0092E7: INY ; get our source address based on our current spot
#_0092E8: INY

#_0092E9: TYA
#_0092EA: CLC
#_0092EB: ADC.b $00 ; move it ahead
#_0092ED: STA.w DMA1ADDRL

#_0092F0: LDA.b $05
#_0092F2: BEQ .not_fixed_transfer

#_0092F4: INX ; move X to the next address

#_0092F5: TXA
#_0092F6: LSR A ; and divide it by 2
#_0092F7: TAX

#_0092F8: STX.w DMA1SIZE ; this is the new DMA size

#_0092FB: SEP #$20

#_0092FD: LDA.b $05 ; sets DMA mode to 0 and uses fixed write
#_0092FF: LSR A ; although, you could have just done LDA.b #$08
#_009300: LSR A
#_009301: LSR A
#_009302: STA.w DMA1MODE

#_009305: LDA.b $07 ; tell VMAIN to increment by 0x32 on $2118 writes
#_009307: STA.w VMAIN

#_00930A: LDA.b #$02 ; enable DMA channel for stripe
#_00930C: STA.w DMAENABLE

#_00930F: LDA.b #VMDATAH ; swap to the other port
#_009311: STA.w DMA1PORT

#_009314: REP #$21 ; repoint our source address to the high byte

#_009316: TYA
#_009317: ADC.b $00
#_009319: INC A
#_00931A: STA.w DMA1ADDRL

#_00931D: LDA.b $03 ; restore the old vram address
#_00931F: STA.w VMADDR

#_009322: STX.w DMA1SIZE ; same DMA size

#_009325: LDX.w #$0002 ; use 2 bytes for size to find next stripe

.not_fixed_transfer
#_009328: STX.b $03 ; save last stripe's data size

#_00932A: TYA ; add it to our index to get the next stripe
#_00932B: CLC
#_00932C: ADC.b $03
#_00932E: TAY

#_00932F: SEP #$20

#_009331: LDA.b $07 ; set VMAIN increment based on earlier calculations
#_009333: ORA.b #$80 ; make it increment on writes to $2119
#_009335: STA.w VMAIN

#_009338: LDA.b #$02 ; enable DMA channel for stripe
#_00933A: STA.w DMAENABLE

; just jumping (no BMI) to the first check would have used less code
#_00933D: LDA.b [$00],Y
#_00933F: BMI .done

#_009341: JMP.w .next_stripe

;---------------------------------------------------------------------------------------------------

.done
#_009344: SEP #$30

#_009346: RTS

;===================================================================================================

NMI_UpdateIRQGFX:
; Check for a transfer
#_009347: LDA.w $1F0C
#_00934A: BEQ .exit

#_00934C: LDA.b #$80
#_00934E: STA.w VMAIN

#_009351: REP #$20

#_009353: LDA.w #VRAMaddr($B000)
#_009356: STA.w VMADDR

#_009359: LDA.w #$1801
#_00935C: STA.w DMA0MODE

#_00935F: LDA.w #$7EE800>>0
#_009362: STA.w DMA0ADDRL

#_009365: LDX.b #$7EE800>>16
#_009367: STX.w DMA0ADDRB

#_00936A: LDA.w #$0800
#_00936D: STA.w DMA0SIZE

#_009370: SEP #$20

#_009372: LDA.b #$01
#_009374: STA.w DMAENABLE

#_009377: STZ.w $1F0C

.exit
#_00937A: RTS

;===================================================================================================
; Used for stripes operated with $14
;===================================================================================================
Stripes14_SourceAddress:

.low
#_00937B: db $001002>>0
#_00937C: db $001000>>0
#_00937D: db IntroLogoTileMap>>0
#_00937E: db $00021B>>0
#_00937F: db NamePlayerTileMap>>0
#_009380: db FileSelectTileMap>>0
#_009381: db FileSelectCopyFileTileMap>>0
#_009382: db FileSelectKILLFileTileMap>>0
#_009383: db DungeonMap_BG3TileMap>>0

.high
#_009384: db $001002>>8
#_009385: db $001000>>8
#_009386: db IntroLogoTileMap>>8
#_009387: db $00021B>>8
#_009388: db NamePlayerTileMap>>8
#_009389: db FileSelectTileMap>>8
#_00938A: db FileSelectCopyFileTileMap>>8
#_00938B: db FileSelectKILLFileTileMap>>8
#_00938C: db DungeonMap_BG3TileMap>>8

.bank
#_00938D: db $001002>>16
#_00938E: db $001000>>16
#_00938F: db IntroLogoTileMap>>16
#_009390: db $00021B>>16
#_009391: db NamePlayerTileMap>>16
#_009392: db FileSelectTileMap>>16
#_009393: db FileSelectCopyFileTileMap>>16
#_009394: db FileSelectKILLFileTileMap>>16
#_009395: db DungeonMap_BG3TileMap>>16

;===================================================================================================
; Bank10 addresses of where to get head, body, and aux part graphics
;===================================================================================================
LinkOAM_HeadAddresses:
#_009396: dw LinkGraphics+$0080 ; 0x000 - $108080
#_009398: dw LinkGraphics+$0080 ; 0x001 - $108080
#_00939A: dw LinkGraphics+$0080 ; 0x002 - $108080
#_00939C: dw LinkGraphics+$0080 ; 0x003 - $108080
#_00939E: dw LinkGraphics+$0080 ; 0x004 - $108080
#_0093A0: dw LinkGraphics+$0040 ; 0x005 - $108040
#_0093A2: dw LinkGraphics+$0040 ; 0x006 - $108040
#_0093A4: dw LinkGraphics+$0040 ; 0x007 - $108040
#_0093A6: dw LinkGraphics+$0040 ; 0x008 - $108040
#_0093A8: dw LinkGraphics+$0040 ; 0x009 - $108040
#_0093AA: dw LinkGraphics+$0000 ; 0x00A - $108000
#_0093AC: dw LinkGraphics+$0000 ; 0x00B - $108000
#_0093AE: dw LinkGraphics+$0000 ; 0x00C - $108000
#_0093B0: dw LinkGraphics+$0000 ; 0x00D - $108000
#_0093B2: dw LinkGraphics+$0000 ; 0x00E - $108000
#_0093B4: dw LinkGraphics+$0000 ; 0x00F - $108000
#_0093B6: dw LinkGraphics+$1440 ; 0x010 - $109440
#_0093B8: dw LinkGraphics+$0080 ; 0x011 - $108080
#_0093BA: dw LinkGraphics+$0080 ; 0x012 - $108080
#_0093BC: dw LinkGraphics+$0080 ; 0x013 - $108080
#_0093BE: dw LinkGraphics+$1400 ; 0x014 - $109400
#_0093C0: dw LinkGraphics+$0040 ; 0x015 - $108040
#_0093C2: dw LinkGraphics+$00C0 ; 0x016 - $1080C0
#_0093C4: dw LinkGraphics+$00C0 ; 0x017 - $1080C0
#_0093C6: dw LinkGraphics+$0000 ; 0x018 - $108000
#_0093C8: dw LinkGraphics+$0000 ; 0x019 - $108000
#_0093CA: dw LinkGraphics+$0000 ; 0x01A - $108000
#_0093CC: dw LinkGraphics+$0000 ; 0x01B - $108000
#_0093CE: dw LinkGraphics+$0000 ; 0x01C - $108000
#_0093D0: dw LinkGraphics+$0000 ; 0x01D - $108000
#_0093D2: dw LinkGraphics+$0000 ; 0x01E - $108000
#_0093D4: dw LinkGraphics+$0000 ; 0x01F - $108000
#_0093D6: dw LinkGraphics+$0080 ; 0x020 - $108080
#_0093D8: dw LinkGraphics+$0080 ; 0x021 - $108080
#_0093DA: dw LinkGraphics+$0080 ; 0x022 - $108080
#_0093DC: dw LinkGraphics+$0080 ; 0x023 - $108080
#_0093DE: dw LinkGraphics+$0080 ; 0x024 - $108080
#_0093E0: dw LinkGraphics+$0040 ; 0x025 - $108040
#_0093E2: dw LinkGraphics+$0040 ; 0x026 - $108040
#_0093E4: dw LinkGraphics+$0040 ; 0x027 - $108040
#_0093E6: dw LinkGraphics+$0040 ; 0x028 - $108040
#_0093E8: dw LinkGraphics+$0040 ; 0x029 - $108040
#_0093EA: dw LinkGraphics+$0000 ; 0x02A - $108000
#_0093EC: dw LinkGraphics+$28C0 ; 0x02B - $10A8C0
#_0093EE: dw LinkGraphics+$2900 ; 0x02C - $10A900
#_0093F0: dw LinkGraphics+$0000 ; 0x02D - $108000
#_0093F2: dw LinkGraphics+$28C0 ; 0x02E - $10A8C0
#_0093F4: dw LinkGraphics+$2900 ; 0x02F - $10A900
#_0093F6: dw LinkGraphics+$1100 ; 0x030 - $109100
#_0093F8: dw LinkGraphics+$0080 ; 0x031 - $108080
#_0093FA: dw LinkGraphics+$0080 ; 0x032 - $108080
#_0093FC: dw LinkGraphics+$10C0 ; 0x033 - $1090C0
#_0093FE: dw LinkGraphics+$0040 ; 0x034 - $108040
#_009400: dw LinkGraphics+$0000 ; 0x035 - $108000
#_009402: dw LinkGraphics+$0000 ; 0x036 - $108000
#_009404: dw LinkGraphics+$0000 ; 0x037 - $108000
#_009406: dw LinkGraphics+$0000 ; 0x038 - $108000
#_009408: dw LinkGraphics+$0000 ; 0x039 - $108000
#_00940A: dw LinkGraphics+$0000 ; 0x03A - $108000
#_00940C: dw LinkGraphics+$1A00 ; 0x03B - $109A00
#_00940E: dw LinkGraphics+$1140 ; 0x03C - $109140
#_009410: dw LinkGraphics+$1180 ; 0x03D - $109180
#_009412: dw LinkGraphics+$0000 ; 0x03E - $108000
#_009414: dw LinkGraphics+$1500 ; 0x03F - $109500
#_009416: dw LinkGraphics+$1480 ; 0x040 - $109480
#_009418: dw LinkGraphics+$14C0 ; 0x041 - $1094C0
#_00941A: dw LinkGraphics+$14C0 ; 0x042 - $1094C0
#_00941C: dw LinkGraphics+$1AE0 ; 0x043 - $109AE0
#_00941E: dw LinkGraphics+$0080 ; 0x044 - $108080
#_009420: dw LinkGraphics+$0080 ; 0x045 - $108080
#_009422: dw LinkGraphics+$1A60 ; 0x046 - $109A60
#_009424: dw LinkGraphics+$00C0 ; 0x047 - $1080C0
#_009426: dw LinkGraphics+$00C0 ; 0x048 - $1080C0
#_009428: dw LinkGraphics+$1AA0 ; 0x049 - $109AA0
#_00942A: dw LinkGraphics+$0000 ; 0x04A - $108000
#_00942C: dw LinkGraphics+$0000 ; 0x04B - $108000
#_00942E: dw LinkGraphics+$1AA0 ; 0x04C - $109AA0
#_009430: dw LinkGraphics+$0000 ; 0x04D - $108000
#_009432: dw LinkGraphics+$0000 ; 0x04E - $108000
#_009434: dw LinkGraphics+$0080 ; 0x04F - $108080
#_009436: dw LinkGraphics+$0080 ; 0x050 - $108080
#_009438: dw LinkGraphics+$0100 ; 0x051 - $108100
#_00943A: dw LinkGraphics+$0100 ; 0x052 - $108100
#_00943C: dw LinkGraphics+$05C0 ; 0x053 - $1085C0
#_00943E: dw LinkGraphics+$0000 ; 0x054 - $108000
#_009440: dw LinkGraphics+$0000 ; 0x055 - $108000
#_009442: dw LinkGraphics+$05C0 ; 0x056 - $1085C0
#_009444: dw LinkGraphics+$0000 ; 0x057 - $108000
#_009446: dw LinkGraphics+$0000 ; 0x058 - $108000
#_009448: dw LinkGraphics+$2DC0 ; 0x059 - $10ADC0
#_00944A: dw LinkGraphics+$2DC0 ; 0x05A - $10ADC0
#_00944C: dw LinkGraphics+$2DC0 ; 0x05B - $10ADC0
#_00944E: dw LinkGraphics+$2DC0 ; 0x05C - $10ADC0
#_009450: dw LinkGraphics+$2DC0 ; 0x05D - $10ADC0
#_009452: dw LinkGraphics+$2D40 ; 0x05E - $10AD40
#_009454: dw LinkGraphics+$2D40 ; 0x05F - $10AD40
#_009456: dw LinkGraphics+$2D40 ; 0x060 - $10AD40
#_009458: dw LinkGraphics+$2D40 ; 0x061 - $10AD40
#_00945A: dw LinkGraphics+$2D40 ; 0x062 - $10AD40
#_00945C: dw LinkGraphics+$2D80 ; 0x063 - $10AD80
#_00945E: dw LinkGraphics+$2D80 ; 0x064 - $10AD80
#_009460: dw LinkGraphics+$2D80 ; 0x065 - $10AD80
#_009462: dw LinkGraphics+$2D80 ; 0x066 - $10AD80
#_009464: dw LinkGraphics+$2D80 ; 0x067 - $10AD80
#_009466: dw LinkGraphics+$2D80 ; 0x068 - $10AD80
#_009468: dw LinkGraphics+$0040 ; 0x069 - $108040
#_00946A: dw LinkGraphics+$1400 ; 0x06A - $109400
#_00946C: dw LinkGraphics+$0040 ; 0x06B - $108040
#_00946E: dw LinkGraphics+$0000 ; 0x06C - $108000
#_009470: dw LinkGraphics+$0080 ; 0x06D - $108080
#_009472: dw LinkGraphics+$0080 ; 0x06E - $108080
#_009474: dw LinkGraphics+$1440 ; 0x06F - $109440
#_009476: dw LinkGraphics+$0000 ; 0x070 - $108000
#_009478: dw LinkGraphics+$0000 ; 0x071 - $108000
#_00947A: dw LinkGraphics+$0000 ; 0x072 - $108000
#_00947C: dw LinkGraphics+$0000 ; 0x073 - $108000
#_00947E: dw LinkGraphics+$0080 ; 0x074 - $108080
#_009480: dw LinkGraphics+$0040 ; 0x075 - $108040
#_009482: dw LinkGraphics+$0040 ; 0x076 - $108040
#_009484: dw LinkGraphics+$0000 ; 0x077 - $108000
#_009486: dw LinkGraphics+$0000 ; 0x078 - $108000
#_009488: dw LinkGraphics+$0000 ; 0x079 - $108000
#_00948A: dw LinkGraphics+$0000 ; 0x07A - $108000
#_00948C: dw LinkGraphics+$0000 ; 0x07B - $108000
#_00948E: dw LinkGraphics+$0000 ; 0x07C - $108000
#_009490: dw LinkGraphics+$4440 ; 0x07D - $10C440
#_009492: dw LinkGraphics+$0140 ; 0x07E - $108140
#_009494: dw LinkGraphics+$0140 ; 0x07F - $108140
#_009496: dw LinkGraphics+$4A40 ; 0x080 - $10CA40
#_009498: dw LinkGraphics+$0000 ; 0x081 - $108000
#_00949A: dw LinkGraphics+$0000 ; 0x082 - $108000
#_00949C: dw LinkGraphics+$0000 ; 0x083 - $108000
#_00949E: dw LinkGraphics+$0000 ; 0x084 - $108000
#_0094A0: dw LinkGraphics+$0000 ; 0x085 - $108000
#_0094A2: dw LinkGraphics+$0000 ; 0x086 - $108000
#_0094A4: dw LinkGraphics+$0040 ; 0x087 - $108040
#_0094A6: dw LinkGraphics+$05C0 ; 0x088 - $1085C0
#_0094A8: dw LinkGraphics+$0040 ; 0x089 - $108040
#_0094AA: dw LinkGraphics+$05C0 ; 0x08A - $1085C0
#_0094AC: dw LinkGraphics+$0100 ; 0x08B - $108100
#_0094AE: dw LinkGraphics+$00C0 ; 0x08C - $1080C0
#_0094B0: dw LinkGraphics+$11C0 ; 0x08D - $1091C0
#_0094B2: dw LinkGraphics+$0080 ; 0x08E - $108080
#_0094B4: dw LinkGraphics+$0080 ; 0x08F - $108080
#_0094B6: dw LinkGraphics+$0040 ; 0x090 - $108040
#_0094B8: dw LinkGraphics+$0040 ; 0x091 - $108040
#_0094BA: dw LinkGraphics+$0000 ; 0x092 - $108000
#_0094BC: dw LinkGraphics+$0000 ; 0x093 - $108000
#_0094BE: dw LinkGraphics+$0000 ; 0x094 - $108000
#_0094C0: dw LinkGraphics+$0000 ; 0x095 - $108000
#_0094C2: dw LinkGraphics+$0080 ; 0x096 - $108080
#_0094C4: dw LinkGraphics+$0080 ; 0x097 - $108080
#_0094C6: dw LinkGraphics+$1100 ; 0x098 - $109100
#_0094C8: dw LinkGraphics+$20C0 ; 0x099 - $10A0C0
#_0094CA: dw LinkGraphics+$2100 ; 0x09A - $10A100
#_0094CC: dw LinkGraphics+$2100 ; 0x09B - $10A100
#_0094CE: dw LinkGraphics+$21C0 ; 0x09C - $10A1C0
#_0094D0: dw LinkGraphics+$2400 ; 0x09D - $10A400
#_0094D2: dw LinkGraphics+$2440 ; 0x09E - $10A440
#_0094D4: dw LinkGraphics+$21C0 ; 0x09F - $10A1C0
#_0094D6: dw LinkGraphics+$2400 ; 0x0A0 - $10A400
#_0094D8: dw LinkGraphics+$2440 ; 0x0A1 - $10A440
#_0094DA: dw LinkGraphics+$0080 ; 0x0A2 - $108080
#_0094DC: dw LinkGraphics+$4480 ; 0x0A3 - $10C480
#_0094DE: dw LinkGraphics+$0080 ; 0x0A4 - $108080
#_0094E0: dw LinkGraphics+$0040 ; 0x0A5 - $108040
#_0094E2: dw LinkGraphics+$0040 ; 0x0A6 - $108040
#_0094E4: dw LinkGraphics+$4A80 ; 0x0A7 - $10CA80
#_0094E6: dw LinkGraphics+$4A80 ; 0x0A8 - $10CA80
#_0094E8: dw LinkGraphics+$4A00 ; 0x0A9 - $10CA00
#_0094EA: dw LinkGraphics+$4400 ; 0x0AA - $10C400
#_0094EC: dw LinkGraphics+$4A00 ; 0x0AB - $10CA00
#_0094EE: dw LinkGraphics+$4400 ; 0x0AC - $10C400
#_0094F0: dw LinkGraphics+$01C0 ; 0x0AD - $1081C0
#_0094F2: dw LinkGraphics+$0080 ; 0x0AE - $108080
#_0094F4: dw LinkGraphics+$0080 ; 0x0AF - $108080
#_0094F6: dw LinkGraphics+$0080 ; 0x0B0 - $108080
#_0094F8: dw LinkGraphics+$0080 ; 0x0B1 - $108080
#_0094FA: dw LinkGraphics+$0080 ; 0x0B2 - $108080
#_0094FC: dw LinkGraphics+$0080 ; 0x0B3 - $108080
#_0094FE: dw LinkGraphics+$0080 ; 0x0B4 - $108080
#_009500: dw LinkGraphics+$0080 ; 0x0B5 - $108080
#_009502: dw LinkGraphics+$0040 ; 0x0B6 - $108040
#_009504: dw LinkGraphics+$0040 ; 0x0B7 - $108040
#_009506: dw LinkGraphics+$0040 ; 0x0B8 - $108040
#_009508: dw LinkGraphics+$0040 ; 0x0B9 - $108040
#_00950A: dw LinkGraphics+$0040 ; 0x0BA - $108040
#_00950C: dw LinkGraphics+$0040 ; 0x0BB - $108040
#_00950E: dw LinkGraphics+$0040 ; 0x0BC - $108040
#_009510: dw LinkGraphics+$0000 ; 0x0BD - $108000
#_009512: dw LinkGraphics+$28C0 ; 0x0BE - $10A8C0
#_009514: dw LinkGraphics+$2900 ; 0x0BF - $10A900
#_009516: dw LinkGraphics+$0000 ; 0x0C0 - $108000
#_009518: dw LinkGraphics+$0000 ; 0x0C1 - $108000
#_00951A: dw LinkGraphics+$28C0 ; 0x0C2 - $10A8C0
#_00951C: dw LinkGraphics+$2900 ; 0x0C3 - $10A900
#_00951E: dw LinkGraphics+$0000 ; 0x0C4 - $108000
#_009520: dw LinkGraphics+$28C0 ; 0x0C5 - $10A8C0
#_009522: dw LinkGraphics+$2900 ; 0x0C6 - $10A900
#_009524: dw LinkGraphics+$0000 ; 0x0C7 - $108000
#_009526: dw LinkGraphics+$0000 ; 0x0C8 - $108000
#_009528: dw LinkGraphics+$28C0 ; 0x0C9 - $10A8C0
#_00952A: dw LinkGraphics+$2900 ; 0x0CA - $10A900
#_00952C: dw LinkGraphics+$0040 ; 0x0CB - $108040
#_00952E: dw LinkGraphics+$0040 ; 0x0CC - $108040
#_009530: dw LinkGraphics+$0040 ; 0x0CD - $108040
#_009532: dw LinkGraphics+$0080 ; 0x0CE - $108080
#_009534: dw LinkGraphics+$0080 ; 0x0CF - $108080
#_009536: dw LinkGraphics+$0040 ; 0x0D0 - $108040
#_009538: dw LinkGraphics+$0040 ; 0x0D1 - $108040
#_00953A: dw LinkGraphics+$0040 ; 0x0D2 - $108040
#_00953C: dw LinkGraphics+$0040 ; 0x0D3 - $108040
#_00953E: dw LinkGraphics+$0000 ; 0x0D4 - $108000
#_009540: dw LinkGraphics+$0000 ; 0x0D5 - $108000
#_009542: dw LinkGraphics+$0000 ; 0x0D6 - $108000
#_009544: dw LinkGraphics+$0000 ; 0x0D7 - $108000
#_009546: dw LinkGraphics+$5080 ; 0x0D8 - $10D080
#_009548: dw LinkGraphics+$0080 ; 0x0D9 - $108080
#_00954A: dw LinkGraphics+$10C0 ; 0x0DA - $1090C0
#_00954C: dw LinkGraphics+$5000 ; 0x0DB - $10D000
#_00954E: dw LinkGraphics+$1080 ; 0x0DC - $109080
#_009550: dw LinkGraphics+$5040 ; 0x0DD - $10D040
#_009552: dw LinkGraphics+$1080 ; 0x0DE - $109080
#_009554: dw LinkGraphics+$5040 ; 0x0DF - $10D040
#_009556: dw LinkGraphics+$5080 ; 0x0E0 - $10D080
#_009558: dw LinkGraphics+$5080 ; 0x0E1 - $10D080
#_00955A: dw LinkGraphics+$5080 ; 0x0E2 - $10D080
#_00955C: dw LinkGraphics+$5080 ; 0x0E3 - $10D080
#_00955E: dw LinkGraphics+$5080 ; 0x0E4 - $10D080
#_009560: dw LinkGraphics+$5000 ; 0x0E5 - $10D000
#_009562: dw LinkGraphics+$5000 ; 0x0E6 - $10D000
#_009564: dw LinkGraphics+$5000 ; 0x0E7 - $10D000
#_009566: dw LinkGraphics+$5000 ; 0x0E8 - $10D000
#_009568: dw LinkGraphics+$5000 ; 0x0E9 - $10D000
#_00956A: dw LinkGraphics+$5040 ; 0x0EA - $10D040
#_00956C: dw LinkGraphics+$5040 ; 0x0EB - $10D040
#_00956E: dw LinkGraphics+$5040 ; 0x0EC - $10D040
#_009570: dw LinkGraphics+$5040 ; 0x0ED - $10D040
#_009572: dw LinkGraphics+$5040 ; 0x0EE - $10D040
#_009574: dw LinkGraphics+$5040 ; 0x0EF - $10D040
#_009576: dw LinkGraphics+$0040 ; 0x0F0 - $108040
#_009578: dw LinkGraphics+$5000 ; 0x0F1 - $10D000
#_00957A: dw LinkGraphics+$05C0 ; 0x0F2 - $1085C0
#_00957C: dw LinkGraphics+$05C0 ; 0x0F3 - $1085C0
#_00957E: dw LinkGraphics+$05C0 ; 0x0F4 - $1085C0
#_009580: dw LinkGraphics+$5C40 ; 0x0F5 - $10DC40
#_009582: dw LinkGraphics+$5C40 ; 0x0F6 - $10DC40
#_009584: dw LinkGraphics+$5C40 ; 0x0F7 - $10DC40
#_009586: dw LinkGraphics+$05C0 ; 0x0F8 - $1085C0
#_009588: dw LinkGraphics+$05C0 ; 0x0F9 - $1085C0
#_00958A: dw LinkGraphics+$05C0 ; 0x0FA - $1085C0
#_00958C: dw LinkGraphics+$5C40 ; 0x0FB - $10DC40
#_00958E: dw LinkGraphics+$5C40 ; 0x0FC - $10DC40
#_009590: dw LinkGraphics+$5C40 ; 0x0FD - $10DC40
#_009592: dw LinkGraphics+$61C0 ; 0x0FE - $10E1C0
#_009594: dw LinkGraphics+$5000 ; 0x0FF - $10D000
#_009596: dw LinkGraphics+$0000 ; 0x100 - $108000
#_009598: dw LinkGraphics+$6400 ; 0x101 - $10E400
#_00959A: dw LinkGraphics+$6400 ; 0x102 - $10E400
#_00959C: dw LinkGraphics+$6440 ; 0x103 - $10E440
#_00959E: dw LinkGraphics+$10C0 ; 0x104 - $1090C0
#_0095A0: dw LinkGraphics+$10C0 ; 0x105 - $1090C0
#_0095A2: dw LinkGraphics+$5000 ; 0x106 - $10D000
#_0095A4: dw LinkGraphics+$0000 ; 0x107 - $108000
#_0095A6: dw LinkGraphics+$0000 ; 0x108 - $108000
#_0095A8: dw LinkGraphics+$5040 ; 0x109 - $10D040
#_0095AA: dw LinkGraphics+$0000 ; 0x10A - $108000
#_0095AC: dw LinkGraphics+$0000 ; 0x10B - $108000
#_0095AE: dw LinkGraphics+$5040 ; 0x10C - $10D040
#_0095B0: dw LinkGraphics+$6400 ; 0x10D - $10E400
#_0095B2: dw LinkGraphics+$6400 ; 0x10E - $10E400
#_0095B4: dw LinkGraphics+$6400 ; 0x10F - $10E400
#_0095B6: dw LinkGraphics+$1080 ; 0x110 - $109080
#_0095B8: dw LinkGraphics+$25C0 ; 0x111 - $10A5C0
#_0095BA: dw LinkGraphics+$2C40 ; 0x112 - $10AC40
#_0095BC: dw LinkGraphics+$6480 ; 0x113 - $10E480
#_0095BE: dw LinkGraphics+$0180 ; 0x114 - $108180
#_0095C0: dw LinkGraphics+$10C0 ; 0x115 - $1090C0
#_0095C2: dw LinkGraphics+$00C0 ; 0x116 - $1080C0
#_0095C4: dw LinkGraphics+$6180 ; 0x117 - $10E180
#_0095C6: dw LinkGraphics+$5000 ; 0x118 - $10D000
#_0095C8: dw LinkGraphics+$64C0 ; 0x119 - $10E4C0
#_0095CA: dw LinkGraphics+$64C0 ; 0x11A - $10E4C0
#_0095CC: dw LinkGraphics+$6840 ; 0x11B - $10E840
#_0095CE: dw LinkGraphics+$6840 ; 0x11C - $10E840
#_0095D0: dw LinkGraphics+$6840 ; 0x11D - $10E840
#_0095D2: dw LinkGraphics+$6540 ; 0x11E - $10E540
#_0095D4: dw LinkGraphics+$6540 ; 0x11F - $10E540
#_0095D6: dw LinkGraphics+$6540 ; 0x120 - $10E540
#_0095D8: dw LinkGraphics+$6900 ; 0x121 - $10E900
#_0095DA: dw LinkGraphics+$6900 ; 0x122 - $10E900
#_0095DC: dw LinkGraphics+$6900 ; 0x123 - $10E900
#_0095DE: dw LinkGraphics+$6900 ; 0x124 - $10E900
#_0095E0: dw LinkGraphics+$0080 ; 0x125 - $108080
#_0095E2: dw LinkGraphics+$0080 ; 0x126 - $108080
#_0095E4: dw LinkGraphics+$0000 ; 0x127 - $108000
#_0095E6: dw LinkGraphics+$29C0 ; 0x128 - $10A9C0
#_0095E8: dw LinkGraphics+$0080 ; 0x129 - $108080
#_0095EA: dw LinkGraphics+$0140 ; 0x12A - $108140
#_0095EC: dw LinkGraphics+$11C0 ; 0x12B - $1091C0
#_0095EE: dw LinkGraphics+$0040 ; 0x12C - $108040
#_0095F0: dw LinkGraphics+$2800 ; 0x12D - $10A800
#_0095F2: dw LinkGraphics+$2840 ; 0x12E - $10A840

;===================================================================================================

LinkOAM_BodyAddresses:
#_0095F4: dw LinkGraphics+$0840 ; 0x000 - $108840
#_0095F6: dw LinkGraphics+$0800 ; 0x001 - $108800
#_0095F8: dw LinkGraphics+$0580 ; 0x002 - $108580
#_0095FA: dw LinkGraphics+$0800 ; 0x003 - $108800
#_0095FC: dw LinkGraphics+$0580 ; 0x004 - $108580
#_0095FE: dw LinkGraphics+$04C0 ; 0x005 - $1084C0
#_009600: dw LinkGraphics+$0500 ; 0x006 - $108500
#_009602: dw LinkGraphics+$0540 ; 0x007 - $108540
#_009604: dw LinkGraphics+$0500 ; 0x008 - $108500
#_009606: dw LinkGraphics+$0540 ; 0x009 - $108540
#_009608: dw LinkGraphics+$0400 ; 0x00A - $108400
#_00960A: dw LinkGraphics+$0440 ; 0x00B - $108440
#_00960C: dw LinkGraphics+$0480 ; 0x00C - $108480
#_00960E: dw LinkGraphics+$0400 ; 0x00D - $108400
#_009610: dw LinkGraphics+$0440 ; 0x00E - $108440
#_009612: dw LinkGraphics+$0480 ; 0x00F - $108480
#_009614: dw LinkGraphics+$1640 ; 0x010 - $109640
#_009616: dw LinkGraphics+$0C40 ; 0x011 - $108C40
#_009618: dw LinkGraphics+$0C80 ; 0x012 - $108C80
#_00961A: dw LinkGraphics+$2D00 ; 0x013 - $10AD00
#_00961C: dw LinkGraphics+$1600 ; 0x014 - $109600
#_00961E: dw LinkGraphics+$0980 ; 0x015 - $108980
#_009620: dw LinkGraphics+$0C00 ; 0x016 - $108C00
#_009622: dw LinkGraphics+$2CC0 ; 0x017 - $10ACC0
#_009624: dw LinkGraphics+$0880 ; 0x018 - $108880
#_009626: dw LinkGraphics+$08C0 ; 0x019 - $1088C0
#_009628: dw LinkGraphics+$0900 ; 0x01A - $108900
#_00962A: dw LinkGraphics+$0940 ; 0x01B - $108940
#_00962C: dw LinkGraphics+$0880 ; 0x01C - $108880
#_00962E: dw LinkGraphics+$08C0 ; 0x01D - $1088C0
#_009630: dw LinkGraphics+$0900 ; 0x01E - $108900
#_009632: dw LinkGraphics+$0940 ; 0x01F - $108940
#_009634: dw LinkGraphics+$30C0 ; 0x020 - $10B0C0
#_009636: dw LinkGraphics+$3100 ; 0x021 - $10B100
#_009638: dw LinkGraphics+$3140 ; 0x022 - $10B140
#_00963A: dw LinkGraphics+$3100 ; 0x023 - $10B100
#_00963C: dw LinkGraphics+$3140 ; 0x024 - $10B140
#_00963E: dw LinkGraphics+$3000 ; 0x025 - $10B000
#_009640: dw LinkGraphics+$3040 ; 0x026 - $10B040
#_009642: dw LinkGraphics+$3080 ; 0x027 - $10B080
#_009644: dw LinkGraphics+$6C80 ; 0x028 - $10EC80
#_009646: dw LinkGraphics+$6CC0 ; 0x029 - $10ECC0
#_009648: dw LinkGraphics+$3180 ; 0x02A - $10B180
#_00964A: dw LinkGraphics+$5440 ; 0x02B - $10D440
#_00964C: dw LinkGraphics+$31C0 ; 0x02C - $10B1C0
#_00964E: dw LinkGraphics+$3180 ; 0x02D - $10B180
#_009650: dw LinkGraphics+$5440 ; 0x02E - $10D440
#_009652: dw LinkGraphics+$31C0 ; 0x02F - $10B1C0
#_009654: dw LinkGraphics+$0C80 ; 0x030 - $108C80
#_009656: dw LinkGraphics+$2D00 ; 0x031 - $10AD00
#_009658: dw LinkGraphics+$15C0 ; 0x032 - $1095C0
#_00965A: dw LinkGraphics+$19C0 ; 0x033 - $1099C0
#_00965C: dw LinkGraphics+$3440 ; 0x034 - $10B440
#_00965E: dw LinkGraphics+$1580 ; 0x035 - $109580
#_009660: dw LinkGraphics+$3480 ; 0x036 - $10B480
#_009662: dw LinkGraphics+$34C0 ; 0x037 - $10B4C0
#_009664: dw LinkGraphics+$1580 ; 0x038 - $109580
#_009666: dw LinkGraphics+$3480 ; 0x039 - $10B480
#_009668: dw LinkGraphics+$34C0 ; 0x03A - $10B4C0
#_00966A: dw LinkGraphics+$1C20 ; 0x03B - $109C20
#_00966C: dw LinkGraphics+$0000 ; 0x03C - $108000
#_00966E: dw LinkGraphics+$0000 ; 0x03D - $108000
#_009670: dw LinkGraphics+$0000 ; 0x03E - $108000
#_009672: dw LinkGraphics+$1700 ; 0x03F - $109700
#_009674: dw LinkGraphics+$1680 ; 0x040 - $109680
#_009676: dw LinkGraphics+$16C0 ; 0x041 - $1096C0
#_009678: dw LinkGraphics+$16C0 ; 0x042 - $1096C0
#_00967A: dw LinkGraphics+$1CE0 ; 0x043 - $109CE0
#_00967C: dw LinkGraphics+$0C80 ; 0x044 - $108C80
#_00967E: dw LinkGraphics+$3540 ; 0x045 - $10B540
#_009680: dw LinkGraphics+$1C60 ; 0x046 - $109C60
#_009682: dw LinkGraphics+$3580 ; 0x047 - $10B580
#_009684: dw LinkGraphics+$0C00 ; 0x048 - $108C00
#_009686: dw LinkGraphics+$1CA0 ; 0x049 - $109CA0
#_009688: dw LinkGraphics+$0900 ; 0x04A - $108900
#_00968A: dw LinkGraphics+$3500 ; 0x04B - $10B500
#_00968C: dw LinkGraphics+$1CA0 ; 0x04C - $109CA0
#_00968E: dw LinkGraphics+$0900 ; 0x04D - $108900
#_009690: dw LinkGraphics+$3500 ; 0x04E - $10B500
#_009692: dw LinkGraphics+$0C40 ; 0x04F - $108C40
#_009694: dw LinkGraphics+$6C40 ; 0x050 - $10EC40
#_009696: dw LinkGraphics+$0C00 ; 0x051 - $108C00
#_009698: dw LinkGraphics+$6C00 ; 0x052 - $10EC00
#_00969A: dw LinkGraphics+$0DC0 ; 0x053 - $108DC0
#_00969C: dw LinkGraphics+$1540 ; 0x054 - $109540
#_00969E: dw LinkGraphics+$09C0 ; 0x055 - $1089C0
#_0096A0: dw LinkGraphics+$0DC0 ; 0x056 - $108DC0
#_0096A2: dw LinkGraphics+$1540 ; 0x057 - $109540
#_0096A4: dw LinkGraphics+$09C0 ; 0x058 - $1089C0
#_0096A6: dw LinkGraphics+$3940 ; 0x059 - $10B940
#_0096A8: dw LinkGraphics+$3980 ; 0x05A - $10B980
#_0096AA: dw LinkGraphics+$39C0 ; 0x05B - $10B9C0
#_0096AC: dw LinkGraphics+$3980 ; 0x05C - $10B980
#_0096AE: dw LinkGraphics+$39C0 ; 0x05D - $10B9C0
#_0096B0: dw LinkGraphics+$35C0 ; 0x05E - $10B5C0
#_0096B2: dw LinkGraphics+$3800 ; 0x05F - $10B800
#_0096B4: dw LinkGraphics+$3840 ; 0x060 - $10B840
#_0096B6: dw LinkGraphics+$3800 ; 0x061 - $10B800
#_0096B8: dw LinkGraphics+$3840 ; 0x062 - $10B840
#_0096BA: dw LinkGraphics+$3880 ; 0x063 - $10B880
#_0096BC: dw LinkGraphics+$38C0 ; 0x064 - $10B8C0
#_0096BE: dw LinkGraphics+$3900 ; 0x065 - $10B900
#_0096C0: dw LinkGraphics+$3880 ; 0x066 - $10B880
#_0096C2: dw LinkGraphics+$38C0 ; 0x067 - $10B8C0
#_0096C4: dw LinkGraphics+$3900 ; 0x068 - $10B900
#_0096C6: dw LinkGraphics+$0980 ; 0x069 - $108980
#_0096C8: dw LinkGraphics+$1600 ; 0x06A - $109600
#_0096CA: dw LinkGraphics+$3CC0 ; 0x06B - $10BCC0
#_0096CC: dw LinkGraphics+$0400 ; 0x06C - $108400
#_0096CE: dw LinkGraphics+$3C80 ; 0x06D - $10BC80
#_0096D0: dw LinkGraphics+$0C40 ; 0x06E - $108C40
#_0096D2: dw LinkGraphics+$1640 ; 0x06F - $109640
#_0096D4: dw LinkGraphics+$2040 ; 0x070 - $10A040
#_0096D6: dw LinkGraphics+$2080 ; 0x071 - $10A080
#_0096D8: dw LinkGraphics+$2000 ; 0x072 - $10A000
#_0096DA: dw LinkGraphics+$3C40 ; 0x073 - $10BC40
#_0096DC: dw LinkGraphics+$3D40 ; 0x074 - $10BD40
#_0096DE: dw LinkGraphics+$0500 ; 0x075 - $108500
#_0096E0: dw LinkGraphics+$3D00 ; 0x076 - $10BD00
#_0096E2: dw LinkGraphics+$3D80 ; 0x077 - $10BD80
#_0096E4: dw LinkGraphics+$3D80 ; 0x078 - $10BD80
#_0096E6: dw LinkGraphics+$08C0 ; 0x079 - $1088C0
#_0096E8: dw LinkGraphics+$0900 ; 0x07A - $108900
#_0096EA: dw LinkGraphics+$69C0 ; 0x07B - $10E9C0
#_0096EC: dw LinkGraphics+$0900 ; 0x07C - $108900
#_0096EE: dw LinkGraphics+$4640 ; 0x07D - $10C640
#_0096F0: dw LinkGraphics+$4040 ; 0x07E - $10C040
#_0096F2: dw LinkGraphics+$4000 ; 0x07F - $10C000
#_0096F4: dw LinkGraphics+$4C40 ; 0x080 - $10CC40
#_0096F6: dw LinkGraphics+$0940 ; 0x081 - $108940
#_0096F8: dw LinkGraphics+$08C0 ; 0x082 - $1088C0
#_0096FA: dw LinkGraphics+$0900 ; 0x083 - $108900
#_0096FC: dw LinkGraphics+$69C0 ; 0x084 - $10E9C0
#_0096FE: dw LinkGraphics+$0900 ; 0x085 - $108900
#_009700: dw LinkGraphics+$0940 ; 0x086 - $108940
#_009702: dw LinkGraphics+$0D40 ; 0x087 - $108D40
#_009704: dw LinkGraphics+$0D80 ; 0x088 - $108D80
#_009706: dw LinkGraphics+$0D40 ; 0x089 - $108D40
#_009708: dw LinkGraphics+$0D80 ; 0x08A - $108D80
#_00970A: dw LinkGraphics+$3D00 ; 0x08B - $10BD00
#_00970C: dw LinkGraphics+$3000 ; 0x08C - $10B000
#_00970E: dw LinkGraphics+$3000 ; 0x08D - $10B000
#_009710: dw LinkGraphics+$2480 ; 0x08E - $10A480
#_009712: dw LinkGraphics+$2480 ; 0x08F - $10A480
#_009714: dw LinkGraphics+$2480 ; 0x090 - $10A480
#_009716: dw LinkGraphics+$2480 ; 0x091 - $10A480
#_009718: dw LinkGraphics+$2C00 ; 0x092 - $10AC00
#_00971A: dw LinkGraphics+$2C00 ; 0x093 - $10AC00
#_00971C: dw LinkGraphics+$2C00 ; 0x094 - $10AC00
#_00971E: dw LinkGraphics+$2C00 ; 0x095 - $10AC00
#_009720: dw LinkGraphics+$2140 ; 0x096 - $10A140
#_009722: dw LinkGraphics+$2180 ; 0x097 - $10A180
#_009724: dw LinkGraphics+$2180 ; 0x098 - $10A180
#_009726: dw LinkGraphics+$24C0 ; 0x099 - $10A4C0
#_009728: dw LinkGraphics+$24C0 ; 0x09A - $10A4C0
#_00972A: dw LinkGraphics+$2500 ; 0x09B - $10A500
#_00972C: dw LinkGraphics+$1D40 ; 0x09C - $109D40
#_00972E: dw LinkGraphics+$1D80 ; 0x09D - $109D80
#_009730: dw LinkGraphics+$1DC0 ; 0x09E - $109DC0
#_009732: dw LinkGraphics+$1D40 ; 0x09F - $109D40
#_009734: dw LinkGraphics+$1D80 ; 0x0A0 - $109D80
#_009736: dw LinkGraphics+$1DC0 ; 0x0A1 - $109DC0
#_009738: dw LinkGraphics+$0D00 ; 0x0A2 - $108D00
#_00973A: dw LinkGraphics+$4680 ; 0x0A3 - $10C680
#_00973C: dw LinkGraphics+$4180 ; 0x0A4 - $10C180
#_00973E: dw LinkGraphics+$4140 ; 0x0A5 - $10C140
#_009740: dw LinkGraphics+$0C00 ; 0x0A6 - $108C00
#_009742: dw LinkGraphics+$4C80 ; 0x0A7 - $10CC80
#_009744: dw LinkGraphics+$4C80 ; 0x0A8 - $10CC80
#_009746: dw LinkGraphics+$4C00 ; 0x0A9 - $10CC00
#_009748: dw LinkGraphics+$4600 ; 0x0AA - $10C600
#_00974A: dw LinkGraphics+$4C00 ; 0x0AB - $10CC00
#_00974C: dw LinkGraphics+$4600 ; 0x0AC - $10C600
#_00974E: dw LinkGraphics+$3D00 ; 0x0AD - $10BD00
#_009750: dw LinkGraphics+$0580 ; 0x0AE - $108580
#_009752: dw LinkGraphics+$0800 ; 0x0AF - $108800
#_009754: dw LinkGraphics+$49C0 ; 0x0B0 - $10C9C0
#_009756: dw LinkGraphics+$4CC0 ; 0x0B1 - $10CCC0
#_009758: dw LinkGraphics+$4DC0 ; 0x0B2 - $10CDC0
#_00975A: dw LinkGraphics+$4D00 ; 0x0B3 - $10CD00
#_00975C: dw LinkGraphics+$4D40 ; 0x0B4 - $10CD40
#_00975E: dw LinkGraphics+$4D80 ; 0x0B5 - $10CD80
#_009760: dw LinkGraphics+$0500 ; 0x0B6 - $108500
#_009762: dw LinkGraphics+$0540 ; 0x0B7 - $108540
#_009764: dw LinkGraphics+$4940 ; 0x0B8 - $10C940
#_009766: dw LinkGraphics+$4980 ; 0x0B9 - $10C980
#_009768: dw LinkGraphics+$0540 ; 0x0BA - $108540
#_00976A: dw LinkGraphics+$4940 ; 0x0BB - $10C940
#_00976C: dw LinkGraphics+$4980 ; 0x0BC - $10C980
#_00976E: dw LinkGraphics+$0440 ; 0x0BD - $108440
#_009770: dw LinkGraphics+$0480 ; 0x0BE - $108480
#_009772: dw LinkGraphics+$41C0 ; 0x0BF - $10C1C0
#_009774: dw LinkGraphics+$4900 ; 0x0C0 - $10C900
#_009776: dw LinkGraphics+$4580 ; 0x0C1 - $10C580
#_009778: dw LinkGraphics+$45C0 ; 0x0C2 - $10C5C0
#_00977A: dw LinkGraphics+$48C0 ; 0x0C3 - $10C8C0
#_00977C: dw LinkGraphics+$0440 ; 0x0C4 - $108440
#_00977E: dw LinkGraphics+$0480 ; 0x0C5 - $108480
#_009780: dw LinkGraphics+$41C0 ; 0x0C6 - $10C1C0
#_009782: dw LinkGraphics+$4900 ; 0x0C7 - $10C900
#_009784: dw LinkGraphics+$4580 ; 0x0C8 - $10C580
#_009786: dw LinkGraphics+$45C0 ; 0x0C9 - $10C5C0
#_009788: dw LinkGraphics+$48C0 ; 0x0CA - $10C8C0
#_00978A: dw LinkGraphics+$3D00 ; 0x0CB - $10BD00
#_00978C: dw LinkGraphics+$2CC0 ; 0x0CC - $10ACC0
#_00978E: dw LinkGraphics+$4040 ; 0x0CD - $10C040
#_009790: dw LinkGraphics+$5540 ; 0x0CE - $10D540
#_009792: dw LinkGraphics+$5580 ; 0x0CF - $10D580
#_009794: dw LinkGraphics+$54C0 ; 0x0D0 - $10D4C0
#_009796: dw LinkGraphics+$5500 ; 0x0D1 - $10D500
#_009798: dw LinkGraphics+$54C0 ; 0x0D2 - $10D4C0
#_00979A: dw LinkGraphics+$5500 ; 0x0D3 - $10D500
#_00979C: dw LinkGraphics+$5440 ; 0x0D4 - $10D440
#_00979E: dw LinkGraphics+$5480 ; 0x0D5 - $10D480
#_0097A0: dw LinkGraphics+$5440 ; 0x0D6 - $10D440
#_0097A2: dw LinkGraphics+$5480 ; 0x0D7 - $10D480
#_0097A4: dw LinkGraphics+$51C0 ; 0x0D8 - $10D1C0
#_0097A6: dw LinkGraphics+$5400 ; 0x0D9 - $10D400
#_0097A8: dw LinkGraphics+$5100 ; 0x0DA - $10D100
#_0097AA: dw LinkGraphics+$5100 ; 0x0DB - $10D100
#_0097AC: dw LinkGraphics+$5140 ; 0x0DC - $10D140
#_0097AE: dw LinkGraphics+$5180 ; 0x0DD - $10D180
#_0097B0: dw LinkGraphics+$5140 ; 0x0DE - $10D140
#_0097B2: dw LinkGraphics+$5180 ; 0x0DF - $10D180
#_0097B4: dw LinkGraphics+$30C0 ; 0x0E0 - $10B0C0
#_0097B6: dw LinkGraphics+$3100 ; 0x0E1 - $10B100
#_0097B8: dw LinkGraphics+$3140 ; 0x0E2 - $10B140
#_0097BA: dw LinkGraphics+$3100 ; 0x0E3 - $10B100
#_0097BC: dw LinkGraphics+$3140 ; 0x0E4 - $10B140
#_0097BE: dw LinkGraphics+$5D40 ; 0x0E5 - $10DD40
#_0097C0: dw LinkGraphics+$5D80 ; 0x0E6 - $10DD80
#_0097C2: dw LinkGraphics+$5DC0 ; 0x0E7 - $10DDC0
#_0097C4: dw LinkGraphics+$5D80 ; 0x0E8 - $10DD80
#_0097C6: dw LinkGraphics+$5DC0 ; 0x0E9 - $10DDC0
#_0097C8: dw LinkGraphics+$5C80 ; 0x0EA - $10DC80
#_0097CA: dw LinkGraphics+$5CC0 ; 0x0EB - $10DCC0
#_0097CC: dw LinkGraphics+$5D00 ; 0x0EC - $10DD00
#_0097CE: dw LinkGraphics+$5C80 ; 0x0ED - $10DC80
#_0097D0: dw LinkGraphics+$5CC0 ; 0x0EE - $10DCC0
#_0097D2: dw LinkGraphics+$5D00 ; 0x0EF - $10DD00
#_0097D4: dw LinkGraphics+$5100 ; 0x0F0 - $10D100
#_0097D6: dw LinkGraphics+$5100 ; 0x0F1 - $10D100
#_0097D8: dw LinkGraphics+$6000 ; 0x0F2 - $10E000
#_0097DA: dw LinkGraphics+$6040 ; 0x0F3 - $10E040
#_0097DC: dw LinkGraphics+$6080 ; 0x0F4 - $10E080
#_0097DE: dw LinkGraphics+$60C0 ; 0x0F5 - $10E0C0
#_0097E0: dw LinkGraphics+$6100 ; 0x0F6 - $10E100
#_0097E2: dw LinkGraphics+$6140 ; 0x0F7 - $10E140
#_0097E4: dw LinkGraphics+$6000 ; 0x0F8 - $10E000
#_0097E6: dw LinkGraphics+$6040 ; 0x0F9 - $10E040
#_0097E8: dw LinkGraphics+$6080 ; 0x0FA - $10E080
#_0097EA: dw LinkGraphics+$60C0 ; 0x0FB - $10E0C0
#_0097EC: dw LinkGraphics+$6100 ; 0x0FC - $10E100
#_0097EE: dw LinkGraphics+$6140 ; 0x0FD - $10E140
#_0097F0: dw LinkGraphics+$0000 ; 0x0FE - $108000
#_0097F2: dw LinkGraphics+$50C0 ; 0x0FF - $10D0C0
#_0097F4: dw LinkGraphics+$0000 ; 0x100 - $108000
#_0097F6: dw LinkGraphics+$3940 ; 0x101 - $10B940
#_0097F8: dw LinkGraphics+$3980 ; 0x102 - $10B980
#_0097FA: dw LinkGraphics+$3940 ; 0x103 - $10B940
#_0097FC: dw LinkGraphics+$5D40 ; 0x104 - $10DD40
#_0097FE: dw LinkGraphics+$5D80 ; 0x105 - $10DD80
#_009800: dw LinkGraphics+$5D40 ; 0x106 - $10DD40
#_009802: dw LinkGraphics+$5C80 ; 0x107 - $10DC80
#_009804: dw LinkGraphics+$5CC0 ; 0x108 - $10DCC0
#_009806: dw LinkGraphics+$40C0 ; 0x109 - $10C0C0
#_009808: dw LinkGraphics+$5C80 ; 0x10A - $10DC80
#_00980A: dw LinkGraphics+$5CC0 ; 0x10B - $10DCC0
#_00980C: dw LinkGraphics+$40C0 ; 0x10C - $10C0C0
#_00980E: dw LinkGraphics+$39C0 ; 0x10D - $10B9C0
#_009810: dw LinkGraphics+$3980 ; 0x10E - $10B980
#_009812: dw LinkGraphics+$39C0 ; 0x10F - $10B9C0
#_009814: dw LinkGraphics+$2560 ; 0x110 - $10A560
#_009816: dw LinkGraphics+$25A0 ; 0x111 - $10A5A0
#_009818: dw LinkGraphics+$2C80 ; 0x112 - $10AC80
#_00981A: dw LinkGraphics+$6D00 ; 0x113 - $10ED00
#_00981C: dw LinkGraphics+$0000 ; 0x114 - $108000
#_00981E: dw LinkGraphics+$0CC0 ; 0x115 - $108CC0
#_009820: dw LinkGraphics+$3D00 ; 0x116 - $10BD00
#_009822: dw LinkGraphics+$6380 ; 0x117 - $10E380
#_009824: dw LinkGraphics+$3DC0 ; 0x118 - $10BDC0
#_009826: dw LinkGraphics+$6500 ; 0x119 - $10E500
#_009828: dw LinkGraphics+$6500 ; 0x11A - $10E500
#_00982A: dw LinkGraphics+$6880 ; 0x11B - $10E880
#_00982C: dw LinkGraphics+$68C0 ; 0x11C - $10E8C0
#_00982E: dw LinkGraphics+$68C0 ; 0x11D - $10E8C0
#_009830: dw LinkGraphics+$6800 ; 0x11E - $10E800
#_009832: dw LinkGraphics+$65C0 ; 0x11F - $10E5C0
#_009834: dw LinkGraphics+$65C0 ; 0x120 - $10E5C0
#_009836: dw LinkGraphics+$6940 ; 0x121 - $10E940
#_009838: dw LinkGraphics+$6980 ; 0x122 - $10E980
#_00983A: dw LinkGraphics+$6940 ; 0x123 - $10E940
#_00983C: dw LinkGraphics+$6980 ; 0x124 - $10E980
#_00983E: dw LinkGraphics+$3D40 ; 0x125 - $10BD40
#_009840: dw LinkGraphics+$0C80 ; 0x126 - $108C80
#_009842: dw LinkGraphics+$2080 ; 0x127 - $10A080
#_009844: dw LinkGraphics+$0000 ; 0x128 - $108000
#_009846: dw LinkGraphics+$2980 ; 0x129 - $10A980
#_009848: dw LinkGraphics+$3D00 ; 0x12A - $10BD00
#_00984A: dw LinkGraphics+$3DC0 ; 0x12B - $10BDC0
#_00984C: dw LinkGraphics+$3400 ; 0x12C - $10B400
#_00984E: dw LinkGraphics+$2880 ; 0x12D - $10A880
#_009850: dw LinkGraphics+$6DC0 ; 0x12E - $10EDC0

;===================================================================================================

LinkOAM_AuxAddresses:
#_009852: dw LinkGraphics+$1A40 ; 0x000 - $109A40
#_009854: dw LinkGraphics+$1E00 ; 0x001 - $109E00
#_009856: dw LinkGraphics+$1D20 ; 0x002 - $109D20
#_009858: dw LinkGraphics+$1F20 ; 0x003 - $109F20
#_00985A: dw LinkGraphics+$1B20 ; 0x004 - $109B20
#_00985C: dw LinkGraphics+$3C20 ; 0x005 - $10BC20
#_00985E: dw LinkGraphics+$3C20 ; 0x006 - $10BC20
#_009860: dw LinkGraphics+$3E20 ; 0x007 - $10BE20
#_009862: dw LinkGraphics+$3E20 ; 0x008 - $10BE20
#_009864: dw LinkGraphics+$3E00 ; 0x009 - $10BE00
#_009866: dw LinkGraphics+$3E00 ; 0x00A - $10BE00
#_009868: dw LinkGraphics+$3E00 ; 0x00B - $10BE00
#_00986A: dw LinkGraphics+$3E00 ; 0x00C - $10BE00
#_00986C: dw LinkGraphics+$2540 ; 0x00D - $10A540
#_00986E: dw LinkGraphics+$2540 ; 0x00E - $10A540
#_009870: dw LinkGraphics+$2540 ; 0x00F - $10A540
#_009872: dw LinkGraphics+$2540 ; 0x010 - $10A540
#_009874: dw LinkGraphics+$3C00 ; 0x011 - $10BC00
#_009876: dw LinkGraphics+$3C00 ; 0x012 - $10BC00
#_009878: dw LinkGraphics+$3C00 ; 0x013 - $10BC00
#_00987A: dw LinkGraphics+$3C00 ; 0x014 - $10BC00
#_00987C: dw LinkGraphics+$2740 ; 0x015 - $10A740
#_00987E: dw LinkGraphics+$2740 ; 0x016 - $10A740
#_009880: dw LinkGraphics+$2740 ; 0x017 - $10A740
#_009882: dw LinkGraphics+$2740 ; 0x018 - $10A740
#_009884: dw LinkGraphics+$6780 ; 0x019 - $10E780
#_009886: dw LinkGraphics+$6780 ; 0x01A - $10E780

;===================================================================================================

TilemapUpload_HighBytes:
#_009888: db VRAMaddr($0000)>>8 ; 0x00 - $00
#_009889: db VRAMaddr($0000)>>8 ; 0x01 - $00
#_00988A: db VRAMaddr($0800)>>8 ; 0x02 - $04
#_00988B: db VRAMaddr($1000)>>8 ; 0x03 - $08
#_00988C: db VRAMaddr($1800)>>8 ; 0x04 - $0C
#_00988D: db VRAMaddr($1000)>>8 ; 0x05 - $08
#_00988E: db VRAMaddr($1800)>>8 ; 0x06 - $0C
#_00988F: db VRAMaddr($0000)>>8 ; 0x07 - $00
#_009890: db VRAMaddr($0800)>>8 ; 0x08 - $04
#_009891: db VRAMaddr($0000)>>8 ; 0x09 - $00
#_009892: db VRAMaddr($1000)>>8 ; 0x0A - $08
#_009893: db VRAMaddr($0800)>>8 ; 0x0B - $04
#_009894: db VRAMaddr($1800)>>8 ; 0x0C - $0C
#_009895: db VRAMaddr($0800)>>8 ; 0x0D - $04
#_009896: db VRAMaddr($1800)>>8 ; 0x0E - $0C
#_009897: db VRAMaddr($0000)>>8 ; 0x0F - $00
#_009898: db VRAMaddr($1000)>>8 ; 0x10 - $08
#_009899: db VRAMaddr($2000)>>8 ; 0x11 - $10
#_00989A: db VRAMaddr($2800)>>8 ; 0x12 - $14
#_00989B: db VRAMaddr($3000)>>8 ; 0x13 - $18
#_00989C: db VRAMaddr($3800)>>8 ; 0x14 - $1C
#_00989D: db VRAMaddr($3000)>>8 ; 0x15 - $18
#_00989E: db VRAMaddr($3800)>>8 ; 0x16 - $1C
#_00989F: db VRAMaddr($2000)>>8 ; 0x17 - $10
#_0098A0: db VRAMaddr($2800)>>8 ; 0x18 - $14
#_0098A1: db VRAMaddr($2000)>>8 ; 0x19 - $10
#_0098A2: db VRAMaddr($3000)>>8 ; 0x1A - $18
#_0098A3: db VRAMaddr($2800)>>8 ; 0x1B - $14
#_0098A4: db VRAMaddr($3800)>>8 ; 0x1C - $1C
#_0098A5: db VRAMaddr($2800)>>8 ; 0x1D - $14
#_0098A6: db VRAMaddr($3800)>>8 ; 0x1E - $1C
#_0098A7: db VRAMaddr($2000)>>8 ; 0x1F - $10
#_0098A8: db VRAMaddr($3000)>>8 ; 0x20 - $18
#_0098A9: db VRAMaddr($C000)>>8 ; 0x21 - $60
#_0098AA: db VRAMaddr($D000)>>8 ; 0x22 - $68

;===================================================================================================
; FREE ROM: 0x15
;===================================================================================================
NULL_0098AB:
#_0098AB: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0098B3: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0098BB: db $FF, $FF, $FF, $FF, $FF

;===================================================================================================

DungeonMask:
#_0098C0: dw $8000 ; Sewers
#_0098C2: dw $4000 ; Hyrule Castle
#_0098C4: dw $2000 ; Eastern Palace
#_0098C6: dw $1000 ; Desert Palace

DoorFlagMasks:
#_0098C8: dw $0800 ; Agahnim's Tower
#_0098CA: dw $0400 ; Swamp Palace
#_0098CC: dw $0200 ; Palace of Darkness
#_0098CE: dw $0100 ; Misery Mire
#_0098D0: dw $0080 ; Skull Woods
#_0098D2: dw $0040 ; Ice Palace
#_0098D4: dw $0020 ; Tower of Hera
#_0098D6: dw $0010 ; Thieves' Town
#_0098D8: dw $0008 ; Turtle Rock
#_0098DA: dw $0004 ; Ganon's Tower
#_0098DC: dw $0002 ; Unused
#_0098DE: dw $0001 ; Unused

DungeonMaskInverted:
#_0098E0: dw $7FFF ; Sewers
#_0098E2: dw $BFFF ; Hyrule Castle
#_0098E4: dw $DFFF ; Eastern Palace
#_0098E6: dw $EFFF ; Desert Palace
#_0098E8: dw $F7FF ; Agahnim's Tower
#_0098EA: dw $FBFF ; Swamp Palace
#_0098EC: dw $FDFF ; Palace of Darkness
#_0098EE: dw $FEFF ; Misery Mire
#_0098F0: dw $FF7F ; Skull Woods
#_0098F2: dw $FFBF ; Ice Palace
#_0098F4: dw $FFDF ; Tower of Hera
#_0098F6: dw $FFEF ; Thieves' Town
#_0098F8: dw $FFF7 ; Turtle Rock
#_0098FA: dw $FFFB ; Ganon's Tower
#_0098FC: dw $FFFD ; Unused
#_0098FE: dw $FFFE ; Unused

;===================================================================================================

; Used for chests, doors, etc.
RoomFlagMask:
#_009900: dw $0100
#_009902: dw $0200
#_009904: dw $0400
#_009906: dw $0800
#_009908: dw $1000
#_00990A: dw $2000

;===================================================================================================

RoomsWithPitDamage:
#_00990C: dw $0072
#_00990E: dw $0082
#_009910: dw $0040
#_009912: dw $00C0
#_009914: dw $0112
#_009916: dw $0056
#_009918: dw $0057
#_00991A: dw $0058
#_00991C: dw $0067
#_00991E: dw $0068
#_009920: dw $0049
#_009922: dw $0098
#_009924: dw $00D1
#_009926: dw $00C3
#_009928: dw $00A3
#_00992A: dw $00A2
#_00992C: dw $0092
#_00992E: dw $00A0
#_009930: dw $004E
#_009932: dw $007F
#_009934: dw $00AF
#_009936: dw $00F0
#_009938: dw $00F1
#_00993A: dw $00E6
#_00993C: dw $00E7
#_00993E: dw $00C6
#_009940: dw $00C7
#_009942: dw $00D6
#_009944: dw $00B4
#_009946: dw $00B5
#_009948: dw $00C5
#_00994A: dw $0024
#_00994C: dw $00D5
#_00994E: dw $00C9
#_009950: dw $002A
#_009952: dw $001A
#_009954: dw $004B
#_009956: dw $00BC
#_009958: dw $0044
#_00995A: dw $00FB
#_00995C: dw $007B
#_00995E: dw $007C
#_009960: dw $008B
#_009962: dw $008D
#_009964: dw $009B
#_009966: dw $009C
#_009968: dw $009D
#_00996A: dw $00A5
#_00996C: dw $0095
#_00996E: dw $001C
#_009970: dw $005C
#_009972: dw $007D
#_009974: dw $004C
#_009976: dw $0096
#_009978: dw $0120
#_00997A: dw $003C
#_00997C: dw $0123

;===================================================================================================

DoorTileMapPositions_NorthWall:
#_00997E: dw $021C
#_009980: dw $023C
#_009982: dw $025C
#_009984: dw $039C
#_009986: dw $03BC
#_009988: dw $03DC

DoorTileMapPositions_NorthMiddle:
#_00998A: dw $121C
#_00998C: dw $123C
#_00998E: dw $125C
#_009990: dw $139C
#_009992: dw $13BC
#_009994: dw $13DC

DoorTileMapPositions_SouthMiddle:
#_009996: dw $0D1C
#_009998: dw $0D3C
#_00999A: dw $0D5C
#_00999C: dw $0B9C
#_00999E: dw $0BBC
#_0099A0: dw $0BDC
#_0099A2: dw $1D1C
#_0099A4: dw $1D3C
#_0099A6: dw $1D5C

DoorTileMapPositions_LowerLayerEntrance:
#_0099A8: dw $1B9C
#_0099AA: dw $1BBC
#_0099AC: dw $1BDC

DoorTileMapPositions_WestWall:
#_0099AE: dw $0784
#_0099B0: dw $0F84
#_0099B2: dw $1784
#_0099B4: dw $078A
#_0099B6: dw $0F8A
#_0099B8: dw $178A

DoorTileMapPositions_WestMiddle:
#_0099BA: dw $07C4
#_0099BC: dw $0FC4
#_0099BE: dw $17C4
#_0099C0: dw $07CA
#_0099C2: dw $0FCA
#_0099C4: dw $17CA

DoorTileMapPositions_EastMiddle:
#_0099C6: dw $07B4
#_0099C8: dw $0FB4
#_0099CA: dw $17B4
#_0099CC: dw $07AE
#_0099CE: dw $0FAE
#_0099D0: dw $17AE

DoorTileMapPositions_EastWall:
#_0099D2: dw $07F4
#_0099D4: dw $0FF4
#_0099D6: dw $17F4
#_0099D8: dw $07EE
#_0099DA: dw $0FEE
#_0099DC: dw $17EE

;===================================================================================================

ExplodingWallTileMapPosition:
#_0099DE: dw $0D8A
#_0099E0: dw $0DAA
#_0099E2: dw $0DCA
#_0099E4: dw $02B6
#_0099E6: dw $0AB6
#_0099E8: dw $12B6

;===================================================================================================

DetectStaircase:

.offset_y
#_0099EA: dw $0007
#_0099EC: dw $0018
#_0099EE: dw $0008
#_0099F0: dw $0008

.offset_x
#_0099F2: dw $0000
#_0099F4: dw $0000
#_0099F6: dw $FFFF
#_0099F8: dw $0011

.index_offset
#_0099FA: dw $0002
#_0099FC: dw $0002
#_0099FE: dw $0080
#_009A00: dw $0080

;===================================================================================================

DoorwayReplacementDoorGFX:
#_009A02: db $00, $00, $02, $00, $00, $00, $00, $00
#_009A0A: db $00, $00, $00, $00, $00, $00, $00, $00
#_009A12: db $00, $00, $12, $00, $00, $00, $00, $00
#_009A1A: db $50, $00, $00, $00, $50, $00, $50, $00
#_009A22: db $60, $00, $62, $00, $64, $00, $66, $00
#_009A2A: db $52, $00, $5A, $00, $50, $00, $52, $00
#_009A32: db $54, $00, $56, $00, $00, $00, $50, $00
#_009A3A: db $50, $00, $00, $00, $00, $00, $00, $00
#_009A42: db $40, $00, $58, $00, $58, $00, $00, $00
#_009A4A: db $58, $00, $58, $00, $00, $00, $00, $00

DoorwayTileProperties:
#_009A52: db $80, $80, $84, $84, $00, $00, $01, $01
#_009A5A: db $84, $84, $8E, $8E, $00, $00, $00, $00
#_009A62: db $88, $88, $8E, $8E, $80, $80, $80, $80
#_009A6A: db $82, $82, $80, $80, $80, $80, $80, $80
#_009A72: db $80, $80, $80, $80, $80, $80, $80, $80
#_009A7A: db $82, $82, $8E, $8E, $80, $80, $82, $82
#_009A82: db $80, $80, $80, $80, $80, $80, $82, $82
#_009A8A: db $82, $82, $80, $80, $80, $80, $80, $80
#_009A92: db $84, $84, $84, $84, $86, $86, $88, $88
#_009A9A: db $86, $86, $86, $86, $80, $80, $80, $80

;===================================================================================================

RoomDraw_DoorPartnerSelfLocation:
#_009AA2: dw $0000, $0010, $0020, $0030, $0040, $0050
#_009AAE: dw $0061, $0071, $0081, $0091, $00A1, $00B1
#_009ABA: dw $0002, $0012, $0022, $0032, $0042, $0052
#_009AC6: dw $0063, $0073, $0083, $0093, $00A3, $00B3

RoomDraw_DoorPartnerLocation:
#_009AD2: dw $0061, $0071, $0081, $0091, $00A1, $00B1
#_009ADE: dw $0000, $0010, $0020, $0030, $0040, $0050
#_009AEA: dw $0063, $0073, $0083, $0093, $00A3, $00B3
#_009AF6: dw $0002, $0012, $0022, $0032, $0042, $0052

;===================================================================================================

RoomDraw_QuadrantDataOffset:
#_009B02: dw $0000
#_009B04: dw $0040
#_009B06: dw $1000
#_009B08: dw $1040

;===================================================================================================

RoomDraw_MovingWallDirection:
#_009B0A: dw $0005
#_009B0C: dw $0007
#_009B0E: dw $000B
#_009B10: dw $000F

;---------------------------------------------------------------------------------------------------

MovingWallObjectCount:
#_009B12: dw $0008
#_009B14: dw $0010
#_009B16: dw $0018
#_009B18: dw $0020

;---------------------------------------------------------------------------------------------------

MovingWallWestBoundaries:
#_009B1A: dw $FFC1
#_009B1C: dw $FF81
#_009B1E: dw $FF41
#_009B20: dw $FF01

;---------------------------------------------------------------------------------------------------

UNREACHABLE_009B22:
#_009B22: dw $FFB9
#_009B24: dw $FF79
#_009B26: dw $FF39
#_009B28: dw $FEF9

;---------------------------------------------------------------------------------------------------

MovingWallEastBoundaries:
#_009B2A: dw $0042
#_009B2C: dw $0082
#_009B2E: dw $00C2
#_009B30: dw $0102

;---------------------------------------------------------------------------------------------------

UNREACHABLE_009B32:
#_009B32: dw $004A
#_009B34: dw $008A
#_009B36: dw $00CA
#_009B38: dw $010A

;===================================================================================================

WaterOverlayHDMAPositionOffset:
#_009B3A: dw $0002
#_009B3C: dw $0003
#_009B3E: dw $0004
#_009B40: dw $0005

WaterOverlayHDMASize:
#_009B42: dw $0020
#_009B44: dw $0030

WaterOverlayObjectCount:
#_009B46: dw $0040
#_009B48: dw $0050

;===================================================================================================

UNREACHABLE_009B4A:
#_009B4A: db $03, $00, $05, $00, $07, $00, $09, $00

;===================================================================================================
; TODO dungeon object stuff
;===================================================================================================
RoomDrawObjectData:

;---------------------------------------------------------------------------------------------------

#_009B52: dw $14EE, $14EF, $14EE, $14EF
#_009B5A: dw $14FE, $14FF, $14FE, $14FF
#_009B62: dw $0CEE, $0CEF, $0CEE, $0CEF
#_009B6A: dw $0CFE, $0CFF, $0CFE, $0CFF
#_009B72: dw $0CEC, $0CED, $0CEC, $0CED
#_009B7A: dw $0CFC, $0CFD, $0CFC, $0CFD
#_009B82: dw $14EC, $14ED, $14EC, $14ED
#_009B8A: dw $14FC, $14FD, $14FC, $14FD
#_009B92: dw $18EE, $18EF, $18EE, $18EF
#_009B9A: dw $18FE, $18FF, $18FE, $18FF
#_009BA2: dw $10EE, $10EF, $10EE, $10EF
#_009BAA: dw $10FE, $10FF, $10FE, $10FF
#_009BB2: dw $10EC, $10ED, $10EC, $10ED
#_009BBA: dw $10FC, $10FD, $10FC, $10FD
#_009BC2: dw $18EC, $18ED, $18EC, $18ED
#_009BCA: dw $18FC, $18FD, $18FC, $18FD
#_009BD2: dw $10C1, $10C1, $10C1, $10C1
#_009BDA: dw $10C1, $10C1, $10C1, $10C1
#_009BE2: dw $18CA, $18CB, $18CA, $18CB
#_009BEA: dw $18DA, $18DB, $18DA, $18DB
#_009BF2: dw $18C9, $18C9, $18C9, $18C9
#_009BFA: dw $18C9, $18C9, $18C9, $18C9
#_009C02: dw $1DB6, $1DB7, $1DB6, $1DB7
#_009C0A: dw $1DB8, $1DB9, $1DB8, $1DB9
#_009C12: dw $1DAE, $1DAF, $1DAE, $1DAF
#_009C1A: dw $1DBE, $1DBF, $1DBE, $1DBF
#_009C22: dw $090C, $490C, $090C, $490C
#_009C2A: dw $890C, $C90C, $890C, $C90C

;---------------------------------------------------------------------------------------------------

#_009C32: dw $01EC, $01EC, $01EC, $01EC
#_009C3A: dw $01EC, $01EC, $01EC, $01EC

;---------------------------------------------------------------------------------------------------

#_009C42: dw $01EB, $01EB, $01EB, $01EB
#_009C4A: dw $01EB, $01EB, $01EB, $01EB

;---------------------------------------------------------------------------------------------------

#_009C52: dw $1DBA, $1DBB, $1DBA, $1DBB
#_009C5A: dw $1DBC, $1DBD, $1DBC, $1DBD

;---------------------------------------------------------------------------------------------------

#_009C62: dw $1DB6, $1DB7, $1DB6, $1DB7
#_009C6A: dw $1DB8, $1DB9, $1DB8, $1DB9

;---------------------------------------------------------------------------------------------------

#_009C72: dw $1DB0, $1DB1, $1DB0, $1DB1
#_009C7A: dw $9DB0, $9DB1, $9DB0, $9DB1

;---------------------------------------------------------------------------------------------------

#_009C82: dw $1DBA, $1DBB, $1DBA, $1DBB
#_009C8A: dw $1DBC, $1DBD, $1DBC, $1DBD
#_009C92: dw $1DB5, $1DB5, $1DB5, $1DB5

;---------------------------------------------------------------------------------------------------

#_009C9A: dw $1DA6, $5DA6, $1DA6, $5DA6
#_009CA2: dw $9DA6, $DDA6, $9DA6, $DDA6

;---------------------------------------------------------------------------------------------------

#_009CAA: dw $08D0, $08D0, $08D0, $08D0
#_009CB2: dw $08D0, $08D0, $08D0, $08D0

;---------------------------------------------------------------------------------------------------

#_009CBA: dw $18CA, $18CB, $18CA, $18CB
#_009CC2: dw $18DA, $18DB, $18DA, $18DB

;---------------------------------------------------------------------------------------------------

#_009CCA: dw $0C62, $0C63, $0C62, $0C63
#_009CD2: dw $0C62, $0C63, $0C62, $0C63

;---------------------------------------------------------------------------------------------------

#_009CDA: dw $0DCC, $0DCC, $0DCC, $0DCC
#_009CE2: dw $0DCC, $0DCC, $0DCC, $0DCC
#_009CEA: dw $090D, $091D, $490D, $491D

;---------------------------------------------------------------------------------------------------

#_009CF2: dw $10EC, $10ED, $10EC, $10ED
#_009CFA: dw $10FC, $10FD, $10FC, $10FD

;---------------------------------------------------------------------------------------------------

#_009D02: dw $090C, $490C, $090C, $490C
#_009D0A: dw $890C, $C90C, $890C, $C90C

;---------------------------------------------------------------------------------------------------

#_009D12: dw $190F, $190F, $190F, $190F
#_009D1A: dw $190F, $190F, $190F, $190F

;---------------------------------------------------------------------------------------------------

#_009D22: dw $09BE, $49BE, $09BE, $49BE
#_009D2A: dw $09BE, $49BE, $09BE, $49BE

;---------------------------------------------------------------------------------------------------

#_009D32: dw $09BF, $49BF, $09BF, $49BF
#_009D3A: dw $09BF, $49BF, $09BF, $49BF

;---------------------------------------------------------------------------------------------------

#_009D42: dw $09B1, $09B1, $09B1, $09B1
#_009D4A: dw $89B1, $89B1, $89B1, $89B1

;---------------------------------------------------------------------------------------------------

#_009D52: dw $09B0, $09B0, $09B0, $09B0
#_009D5A: dw $89B0, $89B0, $89B0, $89B0
#_009D62: dw $0982, $0992, $0983, $0993
#_009D6A: dw $4983, $4993, $4982, $4992

;---------------------------------------------------------------------------------------------------

#_009D72: dw $0CCC, $0CCD, $0CDC, $0CCE
#_009D7A: dw $0CCC, $0CCF, $0CDC, $0CDD
#_009D82: dw $0CCC, $0CCD, $0CDE, $0CDD
#_009D8A: dw $0CDF, $0CCD, $0CDC, $0CDD
#_009D92: dw $0CCC, $0CDC, $0CCD, $0CCE
#_009D9A: dw $0CCC, $0CDC, $0CCF, $0CDD
#_009DA2: dw $0CCC, $0CDE, $0CCD, $0CDD
#_009DAA: dw $0CDF, $0CDC, $0CCD, $0CDD

;---------------------------------------------------------------------------------------------------

#_009DB2: dw $0CCC, $0CCD, $0CCC, $0CCD
#_009DBA: dw $0CDC, $0CDD, $0CDC, $0CDD
#_009DC2: dw $0CCC, $0CCD, $0CCC, $0CCD
#_009DCA: dw $0CDC, $0CDD, $0CDC, $0CDD

;---------------------------------------------------------------------------------------------------

#_009DD2: dw $0CCC, $0CDC, $0CCD, $0CDD

;---------------------------------------------------------------------------------------------------

#_009DDA: dw $1C13, $1C41, $1C13, $1C41
#_009DE2: dw $1C40, $1C42, $1C40, $1C42
#_009DEA: dw $1C13, $1C41, $1C13, $1C41
#_009DF2: dw $1C40, $1C42, $1C40, $1C42

;---------------------------------------------------------------------------------------------------

#_009DFA: dw $1576, $1577, $1576, $1577
#_009E02: dw $1578, $1579, $1578, $1579
#_009E0A: dw $1576, $1577, $1576, $1577
#_009E12: dw $1578, $1579, $1578, $1579

;---------------------------------------------------------------------------------------------------

#_009E1A: dw $0892, $0898, $08A4, $0CAD
#_009E22: dw $0893, $0899, $08A5, $8CAD

;---------------------------------------------------------------------------------------------------

#_009E2A: dw $4CAD, $48A4, $4898, $4892
#_009E32: dw $CCAD, $48A5, $4899, $4893

;---------------------------------------------------------------------------------------------------

#_009E3A: dw $0890, $0896, $08A2, $0CAC
#_009E42: dw $0891, $0897, $08A3, $4CAC

;---------------------------------------------------------------------------------------------------

#_009E4A: dw $8CAC, $88A2, $8896, $8890
#_009E52: dw $CCAC, $88A3, $8897, $8891

;---------------------------------------------------------------------------------------------------

#_009E5A: dw $0843, $0844, $0871, $90AD
#_009E62: dw $0853, $0854, $0871, $10AD

;---------------------------------------------------------------------------------------------------

#_009E6A: dw $D0AD, $4871, $4844, $4843
#_009E72: dw $50AD, $4871, $4854, $4853

;---------------------------------------------------------------------------------------------------

#_009E7A: dw $0850, $0860, $0870, $50AC
#_009E82: dw $0851, $0861, $0870, $10AC

;---------------------------------------------------------------------------------------------------

#_009E8A: dw $D0AC, $8870, $8860, $8850
#_009E92: dw $90AC, $8870, $8861, $8851
#_009E9A: dw $1C6B, $1C6B, $1C6B, $1C6B
#_009EA2: dw $1C6C, $1C8D, $5C8D, $5C6C
#_009EAA: dw $5C6B, $5C6B, $5C6B, $5C6B
#_009EB2: dw $1C6A, $1C6A, $1C6A, $1C6A
#_009EBA: dw $1C7A, $1C8E, $9C8E, $9C7A
#_009EC2: dw $9C6A, $9C6A, $9C6A, $9C6A

;---------------------------------------------------------------------------------------------------

#_009ECA: dw $1C6B, $1C6B, $1C6C, $1C6C

;---------------------------------------------------------------------------------------------------

#_009ED2: dw $5C6C, $5C6C, $5C6B, $5C6B

;---------------------------------------------------------------------------------------------------

#_009EDA: dw $1C6A, $1C7A, $1C6A, $1C7A

;---------------------------------------------------------------------------------------------------

#_009EE2: dw $9C7A, $9C6A, $9C7A, $9C6A

;---------------------------------------------------------------------------------------------------

#_009EEA: dw $1C7B, $1C6B, $1C6A, $1C45

;---------------------------------------------------------------------------------------------------

#_009EF2: dw $1C6B, $9C7B, $9C45, $9C6A

;---------------------------------------------------------------------------------------------------

#_009EFA: dw $1C6A, $5C45, $5C7B, $5C6B

;---------------------------------------------------------------------------------------------------

#_009F02: dw $DC45, $9C6A, $5C6B, $DC7B

;---------------------------------------------------------------------------------------------------

#_009F0A: dw $1C7C, $1C7A, $1C6C, $1C55

;---------------------------------------------------------------------------------------------------

#_009F12: dw $9C7A, $9C7C, $9C55, $1C6C

;---------------------------------------------------------------------------------------------------

#_009F1A: dw $5C6C, $5C55, $5C7C, $1C7A

;---------------------------------------------------------------------------------------------------

#_009F22: dw $DC55, $5C6C, $9C7A, $DC7C

;---------------------------------------------------------------------------------------------------

#_009F2A: dw $3C15, $3C15, $3C15, $3C15

;---------------------------------------------------------------------------------------------------

#_009F32: dw $0951, $0961, $0941, $0971
#_009F3A: dw $8951, $8961, $8941, $8971

;---------------------------------------------------------------------------------------------------

#_009F42: dw $4971, $4941, $4961, $4951
#_009F4A: dw $C971, $C941, $C961, $C951

;---------------------------------------------------------------------------------------------------

#_009F52: dw $0950, $0960, $0940, $0970
#_009F5A: dw $4950, $4960, $4940, $4970

;---------------------------------------------------------------------------------------------------

#_009F62: dw $8970, $8940, $8960, $8950
#_009F6A: dw $C970, $C940, $C960, $C950

;---------------------------------------------------------------------------------------------------

#_009F72: dw $0880, $0881, $089A, $089B
#_009F7A: dw $14AB

;---------------------------------------------------------------------------------------------------

#_009F7C: dw $94AB, $889B, $889A, $8881
#_009F84: dw $8880

;---------------------------------------------------------------------------------------------------

#_009F86: dw $4880, $4881, $489A, $489B
#_009F8E: dw $54AB

;---------------------------------------------------------------------------------------------------

#_009F90: dw $D4AB, $C89B, $C89A, $C881
#_009F98: dw $C880

;---------------------------------------------------------------------------------------------------

#_009F9A: dw $0880, $0881, $089A, $089B
#_009FA2: dw $0CAB

;---------------------------------------------------------------------------------------------------

#_009FA4: dw $8CAB, $889B, $889A, $8881
#_009FAC: dw $8880

;---------------------------------------------------------------------------------------------------

#_009FAE: dw $4880, $4881, $489A, $489B
#_009FB6: dw $4CAB

;---------------------------------------------------------------------------------------------------

#_009FB8: dw $CCAB, $C89B, $C89A, $C881
#_009FC0: dw $C880

;---------------------------------------------------------------------------------------------------

#_009FC2: dw $0880, $0881, $089A, $089B
#_009FCA: dw $10AB

;---------------------------------------------------------------------------------------------------

#_009FCC: dw $90AB, $889B, $889A, $8881
#_009FD4: dw $8880

;---------------------------------------------------------------------------------------------------

#_009FD6: dw $4880, $4881, $489A, $489B
#_009FDE: dw $50AB

;---------------------------------------------------------------------------------------------------

#_009FE0: dw $D0AB, $C89B, $C89A, $C881
#_009FE8: dw $C880

;---------------------------------------------------------------------------------------------------

#_009FEA: dw $0849, $084A, $084B, $089C
#_009FF2: dw $18AB

;---------------------------------------------------------------------------------------------------

#_009FF4: dw $98AB, $889C, $884B, $884A
#_009FFC: dw $8849

;---------------------------------------------------------------------------------------------------

#_009FFE: dw $4849, $484A, $484B, $489C
#_00A006: dw $58AB

;---------------------------------------------------------------------------------------------------

#_00A008: dw $D8AB, $C89C, $C84B, $C84A
#_00A010: dw $C849

;---------------------------------------------------------------------------------------------------

#_00A012: dw $0849, $084A, $084B, $089C
#_00A01A: dw $10AB

;---------------------------------------------------------------------------------------------------

#_00A01C: dw $90AB, $889C, $884B, $884A
#_00A024: dw $8849

;---------------------------------------------------------------------------------------------------

#_00A026: dw $4849, $484A, $484B, $489C
#_00A02E: dw $50AB

;---------------------------------------------------------------------------------------------------

#_00A030: dw $D0AB, $C89C, $C84B, $C84A
#_00A038: dw $C849

;---------------------------------------------------------------------------------------------------

#_00A03A: dw $0849, $084A, $084B, $089C
#_00A042: dw $10AB

;---------------------------------------------------------------------------------------------------

#_00A044: dw $90AB, $889C, $884B, $884A
#_00A04C: dw $8849

;---------------------------------------------------------------------------------------------------

#_00A04E: dw $4849, $484A, $484B, $489C
#_00A056: dw $50AB

;---------------------------------------------------------------------------------------------------

#_00A058: dw $D0AB, $C89C, $C84B, $C84A
#_00A060: dw $C849

;---------------------------------------------------------------------------------------------------

#_00A062: dw $1DAA, $1DAC, $1DAC, $1D8B
#_00A06A: dw $1DAD, $1D8C, $1D8B, $1DAF
#_00A072: dw $1DA5, $1D8B, $1DAF, $1DA6
#_00A07A: dw $1D8B, $1DAF, $1DA6, $1D8B
#_00A082: dw $1DAF, $5DA5, $1D8B, $5DAD
#_00A08A: dw $5D8C, $5DAA, $5DAC, $5DAC
#_00A092: dw $1DAC, $1D8C, $1DA7, $1DAC
#_00A09A: dw $1D8C, $1DA7, $1DA9, $1DA9
#_00A0A2: dw $1DA9, $1DA9, $5DA7, $5D8C
#_00A0AA: dw $5DAC, $5DA7, $5D8C, $5DAC
#_00A0B2: dw $1DAC, $1DAC, $1DAB, $1D8C
#_00A0BA: dw $1D9C, $1D9B, $9DA5, $1DAE
#_00A0C2: dw $1D9B, $9DA6, $1DAE, $1D9B
#_00A0CA: dw $9DA6, $1DAE, $1D9B, $DDA5
#_00A0D2: dw $1DAE, $1D9B, $5D8C, $5D9C
#_00A0DA: dw $1D9B, $5DAC, $5DAC, $5DAB
#_00A0E2: dw $1DA8, $9DA8, $5DA8, $DDA8

;---------------------------------------------------------------------------------------------------

#_00A0EA: dw $1D9D, $1D8D, $1D8D, $1D72
#_00A0F2: dw $1D72, $1D72, $5D9D, $5D8D
#_00A0FA: dw $5D8D

;---------------------------------------------------------------------------------------------------

#_00A0FC: dw $01E9, $01E9, $01E9, $01E9

;---------------------------------------------------------------------------------------------------

#_00A104: dw $18C9, $18C9, $18C9, $18C9
#_00A10C: dw $09DA, $09DE, $09DB, $01E9
#_00A114: dw $09DB, $01E9, $49DA, $49DE
#_00A11C: dw $09DE, $09DC, $01E9, $09DD
#_00A124: dw $01E9, $09DD, $49DE, $49DC

;---------------------------------------------------------------------------------------------------

#_00A12C: dw $09DB, $01E9, $01E9, $09DD
#_00A134: dw $09DB, $01E9, $01E9, $09DD
#_00A13C: dw $09DB, $01E9, $01E9, $09DD
#_00A144: dw $09DB, $01E9, $01E9, $09DD

;---------------------------------------------------------------------------------------------------

#_00A14C: dw $08E1, $08E3, $08E1

;---------------------------------------------------------------------------------------------------

#_00A152: dw $08E1, $08E2, $08E1

;---------------------------------------------------------------------------------------------------

#_00A158: dw $08E0, $08F0, $48E0, $48F0
#_00A160: dw $08F3, $48F3, $08E0, $08F1
#_00A168: dw $08E4, $48E0, $48F1, $48E4

;---------------------------------------------------------------------------------------------------

#_00A170: dw $08E0, $08F1, $08E4, $48E0
#_00A178: dw $48F1, $48E4, $08F4, $08F2
#_00A180: dw $08E5, $08E0, $08F1, $08E4
#_00A188: dw $48E0, $48F1, $48E4

;---------------------------------------------------------------------------------------------------

#_00A18E: dw $09DA, $09DB, $49DA

;---------------------------------------------------------------------------------------------------

#_00A194: dw $09DC, $09DD, $49DC

;---------------------------------------------------------------------------------------------------

#_00A19A: dw $09DE

;---------------------------------------------------------------------------------------------------

#_00A19C: dw $49DE

;---------------------------------------------------------------------------------------------------

#_00A19E: dw $09DF, $09DD, $49DF

;---------------------------------------------------------------------------------------------------

#_00A1A4: dw $89DF, $09DB, $C9DF

;---------------------------------------------------------------------------------------------------

#_00A1AA: dw $09DF, $09DD, $49DC

;---------------------------------------------------------------------------------------------------

#_00A1B0: dw $09DC, $09DD, $49DF

;---------------------------------------------------------------------------------------------------

#_00A1B6: dw $89DF, $09DB, $49DA

;---------------------------------------------------------------------------------------------------

#_00A1BC: dw $09DA, $09DB, $C9DF

;---------------------------------------------------------------------------------------------------

#_00A1C2: dw $08E3, $4846, $4843, $4869
#_00A1CA: dw $4853, $C846

;---------------------------------------------------------------------------------------------------

#_00A1CE: dw $08E3, $0846, $0843, $0869
#_00A1D6: dw $0853, $8846

;---------------------------------------------------------------------------------------------------

#_00A1DA: dw $08E2, $8846, $8850, $8868
#_00A1E2: dw $8851, $C846

;---------------------------------------------------------------------------------------------------

#_00A1E6: dw $08E2, $0846, $0850, $0868
#_00A1EE: dw $0851, $4846

;---------------------------------------------------------------------------------------------------

#_00A1F2: dw $0852

;---------------------------------------------------------------------------------------------------

#_00A1F4: dw $4852

;---------------------------------------------------------------------------------------------------

#_00A1F6: dw $085C

;---------------------------------------------------------------------------------------------------

#_00A1F8: dw $885C

;---------------------------------------------------------------------------------------------------

#_00A1FA: dw $1CC6, $1CC6, $1CC6, $1CC6
#_00A202: dw $1CC6, $1CC6, $1CC6, $1CC6
#_00A20A: dw $1CC6, $1CC6, $1CC6, $1CC6
#_00A212: dw $1CC6, $1CC6, $1CC6, $1CC6

;---------------------------------------------------------------------------------------------------

#_00A21A: dw $0973, $28A0, $28A1, $A8A1
#_00A222: dw $A8A0, $0867, $09EF, $09EF
#_00A22A: dw $8867, $0865, $085A, $885A
#_00A232: dw $8865, $4865, $485A, $C85A
#_00A23A: dw $C865, $4867, $09EF, $09EF
#_00A242: dw $C867, $68A0, $68A1, $E8A1
#_00A24A: dw $E8A0, $28A0, $28A1, $A8A1
#_00A252: dw $A8A0, $0867, $09EF, $09EF
#_00A25A: dw $8867, $0865, $085A, $885A
#_00A262: dw $8865, $4865, $485A, $C85A
#_00A26A: dw $C865, $4867, $09EF, $09EF
#_00A272: dw $C867, $68A0, $68A1, $E8A1
#_00A27A: dw $E8A0

;---------------------------------------------------------------------------------------------------

#_00A27C: dw $294E, $2893, $0892, $01EC
#_00A284: dw $295E, $0898, $01EC, $01EC
#_00A28C: dw $096E, $0893, $0899, $08A5
#_00A294: dw $0892, $0898, $08A4, $0893
#_00A29C: dw $A893, $A94E, $0899, $A95E
#_00A2A4: dw $01EC, $896E, $01EC, $01EC

;---------------------------------------------------------------------------------------------------

#_00A2AC: dw $01EC, $01EC, $496E, $01EC
#_00A2B4: dw $695E, $4898, $694E, $6893
#_00A2BC: dw $4892, $48A5, $4899, $4893
#_00A2C4: dw $48A4, $4898, $4892, $C96E
#_00A2CC: dw $01EC, $01EC, $4899, $E95E
#_00A2D4: dw $01EC, $4893, $E893, $E94E

;---------------------------------------------------------------------------------------------------

#_00A2DC: dw $096E, $1148, $1168, $1159
#_00A2E4: dw $496E, $1149, $1169, $5159
#_00A2EC: dw $096E, $5149, $5169, $1159
#_00A2F4: dw $496E, $5148, $5168, $5159

;---------------------------------------------------------------------------------------------------

#_00A2FC: dw $097E, $897E, $097E, $897E
#_00A304: dw $11AE, $1146, $9146, $91AE
#_00A30C: dw $11AF, $1166, $9166, $91AF
#_00A314: dw $1156, $9156, $1156, $9156

;---------------------------------------------------------------------------------------------------

#_00A31C: dw $5156, $D156, $5156, $D156
#_00A324: dw $51AF, $1167, $9167, $D1AF
#_00A32C: dw $51AE, $1147, $9147, $D1AE
#_00A334: dw $497E, $C97E, $497E, $C97E
#_00A33C: dw $096E, $115E, $1178, $1158
#_00A344: dw $496E, $114E, $1177, $1174
#_00A34C: dw $096E, $114E, $5177, $5174
#_00A354: dw $496E, $515E, $5178, $5158
#_00A35C: dw $097E, $897E, $097E, $897E
#_00A364: dw $11AC, $11AD, $11AD, $91AC
#_00A36C: dw $1179, $1176, $9176, $9179
#_00A374: dw $1157, $1175, $9175, $9157
#_00A37C: dw $5157, $5175, $D175, $D157
#_00A384: dw $5179, $5176, $D176, $D179
#_00A38C: dw $51AC, $51AD, $51AD, $D1AC
#_00A394: dw $497E, $C97E, $497E, $C97E

;---------------------------------------------------------------------------------------------------

#_00A39C: dw $28E7, $28F7, $28E6, $08F6
#_00A3A4: dw $68E7, $68F7, $68E6, $48F6

;---------------------------------------------------------------------------------------------------

#_00A3AC: dw $2DC2, $2DC3, $2D2C, $0D3C
#_00A3B4: dw $6DC2, $6DC3, $6D2C, $4D3C

;---------------------------------------------------------------------------------------------------

#_00A3BC: dw $0942, $1162, $1152, $0943
#_00A3C4: dw $1163, $1153, $4943, $5163
#_00A3CC: dw $5153, $4942, $5162, $5152

;---------------------------------------------------------------------------------------------------

#_00A3D4: dw $9152, $9162, $8942, $9153
#_00A3DC: dw $9163, $8943, $D153, $D163
#_00A3E4: dw $C943, $D152, $D162, $C942

;---------------------------------------------------------------------------------------------------

#_00A3EC: dw $0944, $0954, $8954, $8944
#_00A3F4: dw $1164, $1165, $9165, $9164
#_00A3FC: dw $1145, $1155, $9155, $9145

;---------------------------------------------------------------------------------------------------

#_00A404: dw $5145, $5155, $D155, $D145
#_00A40C: dw $5164, $5165, $D165, $D164
#_00A414: dw $4944, $4954, $C954, $C944

;---------------------------------------------------------------------------------------------------

#_00A41C: dw $1548, $1549, $5548, $5549
#_00A424: dw $1548, $1549, $5548, $5549

;---------------------------------------------------------------------------------------------------

#_00A42C: dw $1587, $1588, $5588, $5587
#_00A434: dw $1597, $1598, $5598, $5597
#_00A43C: dw $1589, $158A, $558A, $5589
#_00A444: dw $1599, $159A, $559A, $5599

;---------------------------------------------------------------------------------------------------

#_00A44C: dw $0980, $0990, $4980, $4990

;---------------------------------------------------------------------------------------------------

#_00A454: dw $8990, $8980, $C990, $C980

;---------------------------------------------------------------------------------------------------

#_00A45C: dw $0981, $8981, $0991, $8991

;---------------------------------------------------------------------------------------------------

#_00A464: dw $4991, $C991, $4981, $C981

;---------------------------------------------------------------------------------------------------

#_00A46C: dw $1DFE, $1DFC, $5DFE

;---------------------------------------------------------------------------------------------------

#_00A472: dw $9DFE, $9DFC, $DDFE

;---------------------------------------------------------------------------------------------------

#_00A478: dw $1DFD

;---------------------------------------------------------------------------------------------------

#_00A47A: dw $5DFD

;---------------------------------------------------------------------------------------------------

#_00A47C: dw $DDFF, $9DFC, $9DFF

;---------------------------------------------------------------------------------------------------

#_00A482: dw $5DFF, $1DFC, $1DFF

;---------------------------------------------------------------------------------------------------

#_00A488: dw $DDFF, $9DFC, $DDFE

;---------------------------------------------------------------------------------------------------

#_00A48E: dw $9DFE, $9DFC, $9DFF

;---------------------------------------------------------------------------------------------------

#_00A494: dw $5DFF, $1DFC, $5DFE

;---------------------------------------------------------------------------------------------------

#_00A49A: dw $1DFE, $1DFC, $1DFF

;---------------------------------------------------------------------------------------------------

#_00A4A0: dw $1DF7, $1C40, $1C41, $1C42
#_00A4A8: dw $1DB5, $1DB2, $1DB3, $1DB3
#_00A4B0: dw $1DB4, $1DB5, $5DF7, $5C40
#_00A4B8: dw $5C41, $5C42, $5DB5

;---------------------------------------------------------------------------------------------------

#_00A4BE: dw $1DF7, $1C40, $1DB5, $1DB2
#_00A4C6: dw $1DB3, $1DB5, $5DF7, $5C40
#_00A4CE: dw $5DB5

;---------------------------------------------------------------------------------------------------

#_00A4D0: dw $0C14, $0C14, $0C14, $0C14
#_00A4D8: dw $8C14, $8C14, $8C14, $8C14

;---------------------------------------------------------------------------------------------------

#_00A4E0: dw $0C64, $0C66, $0C64, $0C66
#_00A4E8: dw $0C64, $0C66, $0C64, $0C66

;---------------------------------------------------------------------------------------------------

#_00A4F0: dw $0D46, $0D56, $157E, $0D47
#_00A4F8: dw $0D57, $157F, $4D46, $4D56
#_00A500: dw $557E

;---------------------------------------------------------------------------------------------------

#_00A502: dw $0D46, $4D46, $8DAB, $4DAB

;---------------------------------------------------------------------------------------------------

#_00A50A: dw $0D46, $0DAB, $0D47, $4DAD

;---------------------------------------------------------------------------------------------------

#_00A512: dw $0DAB, $0D56, $4DAC, $0D57

;---------------------------------------------------------------------------------------------------

#_00A51A: dw $0D47, $0DAD, $4D46, $4DAB

;---------------------------------------------------------------------------------------------------

#_00A522: dw $0DAC, $0D57, $4DAB, $4D56

;---------------------------------------------------------------------------------------------------

#_00A52A: dw $0940, $0960, $0950, $0970
#_00A532: dw $0941, $0961, $0951, $0971
#_00A53A: dw $4941, $4961, $4951, $4971
#_00A542: dw $4940, $4960, $4950, $4970

;---------------------------------------------------------------------------------------------------

#_00A54A: dw $0D42

;---------------------------------------------------------------------------------------------------

#_00A54C: dw $0D52

;---------------------------------------------------------------------------------------------------

#_00A54E: dw $0D40

;---------------------------------------------------------------------------------------------------

#_00A550: dw $0D50

;---------------------------------------------------------------------------------------------------

#_00A552: dw $0D41

;---------------------------------------------------------------------------------------------------

#_00A554: dw $0D51

;---------------------------------------------------------------------------------------------------

#_00A556: dw $0D8E

;---------------------------------------------------------------------------------------------------

#_00A558: dw $0D8F

;---------------------------------------------------------------------------------------------------

#_00A55A: dw $0D9E

;---------------------------------------------------------------------------------------------------

#_00A55C: dw $0D9F

;---------------------------------------------------------------------------------------------------

#_00A55E: dw $0D43

;---------------------------------------------------------------------------------------------------

#_00A560: dw $0D53

;---------------------------------------------------------------------------------------------------

#_00A562: dw $0DA9

;---------------------------------------------------------------------------------------------------

#_00A564: dw $0DA8

;---------------------------------------------------------------------------------------------------

#_00A566: dw $09C8, $0DC6, $4DC6, $49C8
#_00A56E: dw $09CA, $0D02, $4D02, $49CA

;---------------------------------------------------------------------------------------------------

#_00A576: dw $89CA, $8D02, $CD02, $C9CA
#_00A57E: dw $89C8, $8DC6, $CDC6, $C9C8

;---------------------------------------------------------------------------------------------------

#_00A586: dw $09C9, $0DC7, $8DC7, $89C9
#_00A58E: dw $09CB, $0D03, $8D03, $89CB

;---------------------------------------------------------------------------------------------------

#_00A596: dw $49CB, $4D03, $CD03, $C9CB
#_00A59E: dw $49C9, $4DC7, $CDC7, $C9C9

;---------------------------------------------------------------------------------------------------

#_00A5A6: dw $0944, $0954, $8954, $8944
#_00A5AE: dw $1164, $1165, $9165, $9164
#_00A5B6: dw $1145, $1155, $9155, $9145

;---------------------------------------------------------------------------------------------------

#_00A5BE: dw $5145, $5155, $D155, $D145
#_00A5C6: dw $5164, $5165, $D165, $D164
#_00A5CE: dw $4944, $4954, $C954, $C944

;---------------------------------------------------------------------------------------------------

#_00A5D6: dw $1146, $1147, $9147, $9146
#_00A5DE: dw $1166, $1167, $9167, $9166
#_00A5E6: dw $1156, $1157, $9157, $9156

;---------------------------------------------------------------------------------------------------

#_00A5EE: dw $5156, $5157, $D157, $D156
#_00A5F6: dw $5166, $5167, $D167, $D166
#_00A5FE: dw $5146, $5147, $D147, $D146

;---------------------------------------------------------------------------------------------------

#_00A606: dw $098E, $098E, $099E, $1CC6
#_00A60E: dw $1CC6, $099F, $1CC6, $498F
#_00A616: dw $499E, $1CC6, $0972, $0972
#_00A61E: dw $1CC6, $098F, $099E, $1CC6
#_00A626: dw $1CC6, $099F, $498E, $498E
#_00A62E: dw $499E

;---------------------------------------------------------------------------------------------------

#_00A630: dw $0DE6, $0DF6, $4DE6, $4DF6

;---------------------------------------------------------------------------------------------------

#_00A638: dw $1DA9, $1DA9, $1DA9, $1DA9
#_00A640: dw $1DA9, $1DA9, $1DA9, $1DA9
#_00A648: dw $1DA9, $1DA9, $1DA9, $1DA9
#_00A650: dw $1DA9, $1DA9, $1DA9, $1DA9

;---------------------------------------------------------------------------------------------------

#_00A658: dw $9DA8, $9DA6, $DDA8

;---------------------------------------------------------------------------------------------------

#_00A65E: dw $1DA8, $1DA6, $5DA8

;---------------------------------------------------------------------------------------------------

#_00A664: dw $1DA7

;---------------------------------------------------------------------------------------------------

#_00A666: dw $5DA7

;---------------------------------------------------------------------------------------------------

#_00A668: dw $4D66, $1D64, $1D44, $1D54
#_00A670: dw $0D66, $5D64, $5D44, $5D54

;---------------------------------------------------------------------------------------------------

#_00A678: dw $0946, $0966, $0956, $0CAC
#_00A680: dw $0947, $0967, $0957, $4CAC

;---------------------------------------------------------------------------------------------------

#_00A688: dw $8CAC, $8956, $8966, $8946
#_00A690: dw $CCAC, $8957, $8967, $8947

;---------------------------------------------------------------------------------------------------

#_00A698: dw $0948, $0968, $0958, $0CAD
#_00A6A0: dw $0949, $0969, $0959, $8CAD

;---------------------------------------------------------------------------------------------------

#_00A6A8: dw $4CAD, $4958, $4968, $4948
#_00A6B0: dw $CCAD, $4959, $4969, $4949

;---------------------------------------------------------------------------------------------------

#_00A6B8: dw $0894, $0893, $0892, $0893
#_00A6C0: dw $0891, $089E, $0898, $0899
#_00A6C8: dw $0890, $0896, $08A6, $08A5
#_00A6D0: dw $0891, $0897, $08A3, $0CAE

;---------------------------------------------------------------------------------------------------

#_00A6D8: dw $0892, $0893, $0892, $8894
#_00A6E0: dw $0898, $0899, $889E, $8891
#_00A6E8: dw $08A4, $88A6, $8896, $8890
#_00A6F0: dw $8CAE, $88A3, $8897, $8891

;---------------------------------------------------------------------------------------------------

#_00A6F8: dw $0890, $0896, $08A2, $4CAE
#_00A700: dw $0891, $0897, $48A6, $48A5
#_00A708: dw $0890, $489E, $4898, $4899
#_00A710: dw $4894, $4893, $4892, $4893

;---------------------------------------------------------------------------------------------------

#_00A718: dw $CCAE, $88A2, $8896, $8890
#_00A720: dw $48A4, $C8A6, $8897, $8891
#_00A728: dw $4898, $4899, $C89E, $8890
#_00A730: dw $4892, $4893, $4892, $C894

;---------------------------------------------------------------------------------------------------

#_00A738: dw $0846, $0843, $0853, $0843
#_00A740: dw $0850, $0847, $0854, $0844
#_00A748: dw $0851, $0861, $0848, $0871
#_00A750: dw $0850, $0860, $0870, $10AE

;---------------------------------------------------------------------------------------------------

#_00A758: dw $0853, $0843, $0853, $8846
#_00A760: dw $0854, $0844, $8847, $8850
#_00A768: dw $0871, $8848, $8861, $8851
#_00A770: dw $90AE, $8870, $8860, $8850

;---------------------------------------------------------------------------------------------------

#_00A778: dw $0851, $0861, $0870, $50AE
#_00A780: dw $0850, $0860, $4848, $4871
#_00A788: dw $0851, $4847, $4854, $4844
#_00A790: dw $4846, $4843, $4853, $4843

;---------------------------------------------------------------------------------------------------

#_00A798: dw $D0AE, $8870, $8861, $8851
#_00A7A0: dw $4871, $C848, $8860, $8850
#_00A7A8: dw $4854, $4844, $C847, $8851
#_00A7B0: dw $4853, $4843, $4853, $C846

;---------------------------------------------------------------------------------------------------

#_00A7B8: dw $0895, $0896, $08A2, $0CAC
#_00A7C0: dw $0898, $089F, $08A3, $4CAC
#_00A7C8: dw $08A4, $08A5, $08A7, $0CAC
#_00A7D0: dw $0CAD, $8CAD, $0CAD, $0CAF

;---------------------------------------------------------------------------------------------------

#_00A7D8: dw $8CAC, $88A2, $8896, $8895
#_00A7E0: dw $CCAC, $88A3, $889F, $0899
#_00A7E8: dw $8CAC, $88A7, $08A4, $08A5
#_00A7F0: dw $8CAF, $8CAD, $0CAD, $0CAD

;---------------------------------------------------------------------------------------------------

#_00A7F8: dw $4CAD, $CCAD, $4CAD, $4CAF
#_00A800: dw $48A4, $48A5, $48A7, $4CAC
#_00A808: dw $4898, $489F, $08A2, $0CAC
#_00A810: dw $4895, $0897, $08A3, $4CAC

;---------------------------------------------------------------------------------------------------

#_00A818: dw $CCAF, $CCAD, $4CAD, $CCAD
#_00A820: dw $CCAC, $C8A7, $48A4, $48A5
#_00A828: dw $8CAC, $88A2, $C89F, $4899
#_00A830: dw $CCAC, $88A3, $8897, $C895

;---------------------------------------------------------------------------------------------------

#_00A838: dw $0856, $0861, $0870, $10AC
#_00A840: dw $0854, $0857, $0870, $50AC
#_00A848: dw $0871, $0871, $0858, $10AC
#_00A850: dw $10AD, $90AD, $10AD, $10AF

;---------------------------------------------------------------------------------------------------

#_00A858: dw $90AC, $8870, $8861, $8856
#_00A860: dw $D0AC, $8870, $8857, $0844
#_00A868: dw $90AC, $8858, $0871, $0871
#_00A870: dw $90AF, $90AD, $10AD, $90AD

;---------------------------------------------------------------------------------------------------

#_00A878: dw $50AD, $D0AD, $50AD, $50AF
#_00A880: dw $4871, $4871, $4858, $50AC
#_00A888: dw $4854, $4857, $0870, $10AC
#_00A890: dw $4856, $0860, $0870, $50AC

;---------------------------------------------------------------------------------------------------

#_00A898: dw $D0AF, $D0AD, $50AD, $D0AD
#_00A8A0: dw $D0AC, $C858, $4871, $4871
#_00A8A8: dw $90AC, $8870, $C857, $4844
#_00A8B0: dw $D0AC, $8870, $8860, $C856

;---------------------------------------------------------------------------------------------------

#_00A8B8: dw $0861, $0870, $50AE, $50AF
#_00A8C0: dw $0860, $4848, $4858, $10AC
#_00A8C8: dw $4847, $4857, $0870, $50AC

;---------------------------------------------------------------------------------------------------

#_00A8D0: dw $D0AF, $D0AE, $8870, $8861
#_00A8D8: dw $90AC, $C858, $C848, $8860
#_00A8E0: dw $D0AC, $8870, $C857, $C847

;---------------------------------------------------------------------------------------------------

#_00A8E8: dw $0847, $0857, $0870, $50AC
#_00A8F0: dw $0861, $0848, $0858, $10AC
#_00A8F8: dw $0860, $0870, $10AE, $10AF

;---------------------------------------------------------------------------------------------------

#_00A900: dw $D0AC, $8870, $8857, $8847
#_00A908: dw $90AC, $8858, $8848, $8861
#_00A910: dw $90AF, $90AE, $8870, $8860

;---------------------------------------------------------------------------------------------------

#_00A918: dw $0854, $0844, $8847, $0871
#_00A920: dw $8848, $8857, $90AE, $8858
#_00A928: dw $0871, $90AF, $90AD, $10AD

;---------------------------------------------------------------------------------------------------

#_00A930: dw $0847, $0854, $0844, $0857
#_00A938: dw $0848, $0871, $0871, $0858
#_00A940: dw $10AE, $90AD, $10AD, $10AF

;---------------------------------------------------------------------------------------------------

#_00A948: dw $D0AF, $D0AD, $50AD, $D0AE
#_00A950: dw $C858, $4871, $4871, $C848
#_00A958: dw $C857, $4854, $4844, $C847

;---------------------------------------------------------------------------------------------------

#_00A960: dw $D0AD, $50AD, $50AF, $4871
#_00A968: dw $4858, $50AE, $4857, $4848
#_00A970: dw $4871, $4847, $4854, $4844

;---------------------------------------------------------------------------------------------------

#_00A978: dw $0D00, $0D10, $0D12, $4D00
#_00A980: dw $0D11, $0D13

;---------------------------------------------------------------------------------------------------

#_00A984: dw $0D04, $0D14, $0D24, $0D34
#_00A98C: dw $0D05, $0D15, $0D25, $0D35
#_00A994: dw $4D05, $4D15, $4D25, $4D35
#_00A99C: dw $4D04, $4D14, $4D24, $4D34

;---------------------------------------------------------------------------------------------------

#_00A9A4: dw $0922, $0932, $0923, $0933

;---------------------------------------------------------------------------------------------------

#_00A9AC: dw $0DE5, $0DF5, $4DE5, $4DF5

;---------------------------------------------------------------------------------------------------

#_00A9B4: dw $0DE3, $0DF3, $0DE4, $0DF4
#_00A9BC: dw $4DE4, $4DF4, $4DE3, $4DF3
#_00A9C4: dw $8DF3, $8DE3, $8DF4, $8DE4
#_00A9CC: dw $CDF4, $CDE4, $CDF3, $CDE3

;---------------------------------------------------------------------------------------------------

#_00A9D4: dw $0D28, $0D38, $4D28, $4D38

;---------------------------------------------------------------------------------------------------

#_00A9DC: dw $0D2A, $0D3A, $0D2B, $0D3B
#_00A9E4: dw $0D01, $0D1C, $4D01, $4D1C

;---------------------------------------------------------------------------------------------------

#_00A9EC: dw $0DEE, $8DEE, $4DEE, $CDEE

;---------------------------------------------------------------------------------------------------

#_00A9F4: dw $0DED, $8DED, $4DED, $CDED

;---------------------------------------------------------------------------------------------------

#_00A9FC: dw $0CD2, $0CEB, $0CD3, $0CFB
#_00AA04: dw $0CEE, $0CFE, $0CEF, $0CFF

;---------------------------------------------------------------------------------------------------

#_00AA0C: dw $0CD4, $0CD6, $0CD5, $0CD7
#_00AA14: dw $0DE0, $0DF0, $4DE0, $4DF0

;---------------------------------------------------------------------------------------------------

#_00AA1C: dw $0DC0, $0DC1, $4DC0, $4DC1

;---------------------------------------------------------------------------------------------------

#_00AA24: dw $094D, $095D, $096D, $494D
#_00AA2C: dw $495D, $496D

;---------------------------------------------------------------------------------------------------

#_00AA30: dw $1587, $1589, $1599, $1588
#_00AA38: dw $158A, $159A, $5588, $558A
#_00AA40: dw $559A, $5587, $5589, $5599

;---------------------------------------------------------------------------------------------------

#_00AA48: dw $158C, $158D, $558D, $558C
#_00AA50: dw $159C, $159D, $559D, $559C
#_00AA58: dw $159C, $159D, $559D, $559C
#_00AA60: dw $159C, $159D, $559D, $559C
#_00AA68: dw $158B, $159B, $559B, $558B

;---------------------------------------------------------------------------------------------------

#_00AA70: dw $154A, $155A, $156A, $157A
#_00AA78: dw $154B, $155B, $156B, $157B
#_00AA80: dw $554B, $555B, $556B, $557B
#_00AA88: dw $554A, $555A, $556A, $557A

;---------------------------------------------------------------------------------------------------

#_00AA90: dw $1525, $1563, $1553, $1555
#_00AA98: dw $1526, $1564, $1554, $1556
#_00AAA0: dw $5526, $5564, $5554, $5556
#_00AAA8: dw $5525, $5563, $5553, $5555

;---------------------------------------------------------------------------------------------------

#_00AAB0: dw $151D, $151E, $151F, $551D
#_00AAB8: dw $551E, $551F

;---------------------------------------------------------------------------------------------------

#_00AABC: dw $1548, $1549, $5548, $5549

;---------------------------------------------------------------------------------------------------

#_00AAC4: dw $094A, $095A, $096A, $097A
#_00AACC: dw $094B, $095B, $096B, $097B
#_00AAD4: dw $494B, $495B, $496B, $497B
#_00AADC: dw $494A, $495A, $496A, $497A

;---------------------------------------------------------------------------------------------------

#_00AAE4: dw $0968, $0969, $4969, $4968
#_00AAEC: dw $0958, $0959, $4959, $4958

;---------------------------------------------------------------------------------------------------

#_00AAF4: dw $1588, $156C, $556C, $5588
#_00AAFC: dw $157D, $157C, $557C, $557D

;---------------------------------------------------------------------------------------------------

#_00AB04: dw $11A0, $11A1, $51A0, $11A2
#_00AB0C: dw $11A3, $51A2, $1194, $1195
#_00AB14: dw $5194

;---------------------------------------------------------------------------------------------------

#_00AB16: dw $094E, $095E, $096E, $09AE
#_00AB1E: dw $094F, $095F, $096F, $09AF
#_00AB26: dw $094F, $095F, $096F, $09AF
#_00AB2E: dw $094F, $095F, $496F, $09AF
#_00AB36: dw $094F, $095F, $096F, $09AF
#_00AB3E: dw $494E, $495E, $496E, $49AE

;---------------------------------------------------------------------------------------------------

#_00AB46: dw $8D84, $0D84, $0976, $8D85
#_00AB4E: dw $0D85, $0977, $0D86, $0D96
#_00AB56: dw $0977, $4D86, $4D96, $4977
#_00AB5E: dw $CD85, $4D85, $4977, $CD84
#_00AB66: dw $4D84, $4976

;---------------------------------------------------------------------------------------------------

#_00AB6A: dw $0978, $0979, $4978, $4979

;---------------------------------------------------------------------------------------------------

#_00AB72: dw $0D92, $0DAA, $0D92, $0DAA

;---------------------------------------------------------------------------------------------------

#_00AB7A: dw $0942, $0982, $0992, $0943
#_00AB82: dw $0983, $0993, $4943, $4983
#_00AB8A: dw $4993, $4942, $4982, $4992

;---------------------------------------------------------------------------------------------------

#_00AB92: dw $0CEE, $18D8, $0CEE, $0CFE
#_00AB9A: dw $18C8, $18D9, $58D9, $0CFF
#_00ABA2: dw $18C9, $0CFE, $0CEE, $18D9
#_00ABAA: dw $0CEF, $58D9, $58D8, $0CFF

;---------------------------------------------------------------------------------------------------

#_00ABB2: dw $1197, $1198, $1197, $1198
#_00ABBA: dw $1187, $1188, $1187, $1188

;---------------------------------------------------------------------------------------------------

#_00ABC2: dw $1D76, $1D77, $5D76, $5D77

;---------------------------------------------------------------------------------------------------

#_00ABCA: dw $9D77, $9D76, $DD77, $DD76

;---------------------------------------------------------------------------------------------------

#_00ABD2: dw $5D79, $DD79, $5D78, $DD78

;---------------------------------------------------------------------------------------------------

#_00ABDA: dw $084C, $085D, $086D, $087D
#_00ABE2: dw $084F, $085E, $086E, $087E
#_00ABEA: dw $484F, $485E, $486E, $487E
#_00ABF2: dw $484C, $485D, $486D, $487D

;---------------------------------------------------------------------------------------------------

#_00ABFA: dw $0864, $0866, $0866, $09F8
#_00AC02: dw $085F, $086F, $087F, $09F9
#_00AC0A: dw $485F, $486F, $487F, $49F9
#_00AC12: dw $4864, $4866, $4866, $49F8

;---------------------------------------------------------------------------------------------------

#_00AC1A: dw $084D, $085D, $086D, $087D
#_00AC22: dw $084E, $085E, $086E, $087E
#_00AC2A: dw $484E, $485E, $486E, $487E
#_00AC32: dw $484D, $485D, $486D, $487D

;---------------------------------------------------------------------------------------------------

#_00AC3A: dw $887D, $886D, $885D, $884D
#_00AC42: dw $887E, $886E, $885E, $884E
#_00AC4A: dw $C87E, $C86E, $C85E, $C84E
#_00AC52: dw $C87D, $C86D, $C85D, $C84D

;---------------------------------------------------------------------------------------------------

#_00AC5A: dw $0982, $0983, $4983, $4982
#_00AC62: dw $0992, $0993, $4993, $4992
#_00AC6A: dw $08C9, $08F4, $48F4, $48C9
#_00AC72: dw $08CA, $08F5, $48F5, $48CA
#_00AC7A: dw $0841, $0845, $8845, $8841
#_00AC82: dw $0842, $0855, $8845, $8842
#_00AC8A: dw $4842, $4855, $C855, $C842
#_00AC92: dw $4841, $4845, $C845, $C841

;---------------------------------------------------------------------------------------------------

#_00AC9A: dw $28B8, $2808, $0818, $289D
#_00ACA2: dw $082E, $083E, $689D, $082F
#_00ACAA: dw $083F, $68B8, $6808, $4818

;---------------------------------------------------------------------------------------------------

#_00ACB2: dw $28B8, $2808, $0818, $28B9
#_00ACBA: dw $09EF, $0819, $68B9, $09EF
#_00ACC2: dw $081A, $68B8, $6808, $4818

;---------------------------------------------------------------------------------------------------

#_00ACCA: dw $28B5, $2808, $080D, $28B7
#_00ACD2: dw $082E, $083E, $68B7, $082F
#_00ACDA: dw $083F, $68B5, $6808, $480D

;---------------------------------------------------------------------------------------------------

#_00ACE2: dw $28B5, $2808, $080D, $28B6
#_00ACEA: dw $09EF, $0819, $68B6, $09EF
#_00ACF2: dw $081A, $68B5, $6808, $480D

;---------------------------------------------------------------------------------------------------

#_00ACFA: dw $28B8, $0808, $0818, $4CAC
#_00AD02: dw $289D, $0807, $0817, $0CAC
#_00AD0A: dw $689D, $4807, $4817, $4CAC
#_00AD12: dw $68B8, $4808, $4818, $0CAC

;---------------------------------------------------------------------------------------------------

#_00AD1A: dw $28B8, $2808, $0818, $4CAC
#_00AD22: dw $28B9, $09EF, $0816, $0CAC
#_00AD2A: dw $68B9, $09EF, $4816, $4CAC
#_00AD32: dw $68B8, $6808, $4818, $0CAC

;---------------------------------------------------------------------------------------------------

#_00AD3A: dw $8CAC, $8818, $8808, $A8B8
#_00AD42: dw $CCAC, $8817, $8807, $A89D
#_00AD4A: dw $8CAC, $C817, $C807, $E89D
#_00AD52: dw $CCAC, $C818, $C808, $E8B8

;---------------------------------------------------------------------------------------------------

#_00AD5A: dw $8CAC, $880D, $8808, $A8B8
#_00AD62: dw $CCAC, $8816, $89EF, $A8B9
#_00AD6A: dw $8CAC, $C816, $C9EF, $E8B9
#_00AD72: dw $CCAC, $C80D, $C808, $E8B8

;---------------------------------------------------------------------------------------------------

#_00AD7A: dw $28B5, $0808, $080D, $50AC
#_00AD82: dw $28B7, $0807, $0817, $10AC
#_00AD8A: dw $68B7, $4807, $4817, $50AC
#_00AD92: dw $68B5, $4808, $480D, $10AC

;---------------------------------------------------------------------------------------------------

#_00AD9A: dw $28B5, $0818, $080D, $50AC
#_00ADA2: dw $28B6, $09EF, $0816, $10AC
#_00ADAA: dw $68B6, $09EF, $4816, $50AC
#_00ADB2: dw $68B7, $4810, $480D, $10AC

;---------------------------------------------------------------------------------------------------

#_00ADBA: dw $90AC, $880D, $8808, $A8B5
#_00ADC2: dw $D0AC, $8817, $8807, $A8B7
#_00ADCA: dw $90AC, $C817, $C807, $E8B7
#_00ADD2: dw $D0AC, $C80D, $C808, $E8B5

;---------------------------------------------------------------------------------------------------

#_00ADDA: dw $90AC, $880D, $8808, $A8B5
#_00ADE2: dw $D0AC, $8816, $89EF, $A8B6
#_00ADEA: dw $90AC, $C816, $C9EF, $E8B6
#_00ADF2: dw $D0AC, $C80D, $C808, $E8B5

;---------------------------------------------------------------------------------------------------

#_00ADFA: dw $0984, $09A7, $0843, $0853
#_00AE02: dw $0984, $09A4, $09A8, $0854
#_00AE0A: dw $0984, $0994, $09A4, $09A8
#_00AE12: dw $0985, $0995, $09A5, $09A9
#_00AE1A: dw $0986, $0996, $09A6, $099C
#_00AE22: dw $4986, $4996, $49A6, $499C
#_00AE2A: dw $4985, $4995, $49A5, $49A9
#_00AE32: dw $4984, $4994, $49A4, $49A8
#_00AE3A: dw $4984, $49A4, $49A8, $4854
#_00AE42: dw $4984, $49A7, $4843, $4853

;---------------------------------------------------------------------------------------------------
; FROM FloodGateTileOffsets
#_00AE4A: dw $0984, $09A7, $0843, $0853
#_00AE52: dw $0984, $0994, $09A8, $0854
#_00AE5A: dw $0985, $0995, $09A5, $09A8
#_00AE62: dw $0986, $0996, $09A6, $099C
#_00AE6A: dw $18CB, $18DB, $18CB, $18DB
#_00AE72: dw $18CA, $18DA, $18CA, $18DA
#_00AE7A: dw $4986, $4996, $49A6, $499C
#_00AE82: dw $4985, $4995, $49A5, $49A8
#_00AE8A: dw $4984, $4994, $49A8, $4854
#_00AE92: dw $4984, $49A7, $4843, $4853

;---------------------------------------------------------------------------------------------------

#_00AE9A: dw $0984, $09A7, $0843, $0853
#_00AEA2: dw $0985, $0995, $09A8, $0854
#_00AEAA: dw $0986, $0996, $09A6, $09A8
#_00AEB2: dw $18CA, $18DA, $18CA, $18DA
#_00AEBA: dw $18CB, $18DB, $18CB, $18DB
#_00AEC2: dw $18CA, $18DA, $18CA, $18DA
#_00AECA: dw $18CB, $18DB, $18CB, $18DB
#_00AED2: dw $4986, $4996, $49A6, $49A8
#_00AEDA: dw $4985, $4995, $49A8, $4854
#_00AEE2: dw $4984, $49A7, $4843, $4853

;---------------------------------------------------------------------------------------------------

#_00AEEA: dw $0985, $09A7, $0843, $0853
#_00AEF2: dw $0986, $0996, $09A8, $0854
#_00AEFA: dw $0871, $0871, $098B, $099B
#_00AF02: dw $18CA, $18DA, $18CA, $18DA
#_00AF0A: dw $18CB, $18DB, $18CB, $18DB
#_00AF12: dw $18CA, $18DA, $18CA, $18DA
#_00AF1A: dw $18CB, $18DB, $18CB, $18DB
#_00AF22: dw $4871, $4871, $498B, $499B
#_00AF2A: dw $4986, $4996, $49A8, $4854
#_00AF32: dw $4985, $49A7, $4843, $4853

;---------------------------------------------------------------------------------------------------

#_00AF3A: dw $0986, $09A7, $0843, $0853
#_00AF42: dw $0871, $098B, $099B, $0854
#_00AF4A: dw $0871, $0871, $098B, $099B
#_00AF52: dw $18CA, $18DA, $18CA, $18DA
#_00AF5A: dw $18CB, $18DB, $18CB, $18DB
#_00AF62: dw $18CA, $18DA, $18CA, $18DA
#_00AF6A: dw $18CB, $18DB, $18CB, $18DB
#_00AF72: dw $4871, $4871, $498B, $499B
#_00AF7A: dw $4871, $498B, $499B, $4854
#_00AF82: dw $4986, $49A7, $4843, $4853

;---------------------------------------------------------------------------------------------------
; FROM RoomTag_WaterOff_AdjustWater
#_00AF8A: dw $18CA, $18CB, $18CA, $18CB
#_00AF92: dw $18DA, $0974, $4974, $18DB
#_00AF9A: dw $18CA, $8974, $C974, $18CB
#_00AFA2: dw $18DA, $18DB, $18DA, $18DB

;---------------------------------------------------------------------------------------------------

#_00AFAA: dw $1D48, $1D58, $1568, $1542
#_00AFB2: dw $1562, $1552, $1D49, $1D59
#_00AFBA: dw $1D69, $1D43, $1D63, $1D53
#_00AFC2: dw $1D60, $1D70, $1D78, $1D61
#_00AFCA: dw $1D71, $1D79, $5D61, $5D71
#_00AFD2: dw $5D79, $5D60, $5D70, $5D78

;---------------------------------------------------------------------------------------------------

#_00AFDA: dw $298D, $298E, $299E, $298F
#_00AFE2: dw $299F, $299D

;---------------------------------------------------------------------------------------------------

#_00AFE6: dw $09A2, $09A3, $49A2, $49A3

;---------------------------------------------------------------------------------------------------

#_00AFEE: dw $19E1, $19F1, $59E1, $59F1

;---------------------------------------------------------------------------------------------------

#_00AFF6: dw $19E2, $19F2, $59E2, $59F2

;---------------------------------------------------------------------------------------------------

#_00AFFE: dw $1920, $1930, $1926, $1921
#_00B006: dw $1931, $1927, $5921, $5931
#_00B00E: dw $5927, $5920, $5930, $5926

;---------------------------------------------------------------------------------------------------

#_00B016: dw $1906, $1916, $1926, $1907
#_00B01E: dw $1917, $1927, $5907, $5917
#_00B026: dw $5927, $5906, $5916, $5926

;---------------------------------------------------------------------------------------------------

#_00B02E: dw $2980, $0990, $09A0, $2981
#_00B036: dw $0991, $09A1, $2981, $0991
#_00B03E: dw $09A1, $6981, $4991, $49A1
#_00B046: dw $6981, $4991, $49A1, $6980
#_00B04E: dw $4990, $49A1

;---------------------------------------------------------------------------------------------------

#_00B052: dw $89A0, $8990, $A980, $89A1
#_00B05A: dw $8991, $A981, $89A1, $8991
#_00B062: dw $A981, $C9A1, $C991, $E981
#_00B06A: dw $C9A1, $C991, $E981, $C9A0
#_00B072: dw $C990, $E980

;---------------------------------------------------------------------------------------------------

#_00B076: dw $2982, $0983, $09A2, $2992
#_00B07E: dw $0993, $09A3, $2992, $0993
#_00B086: dw $09A3, $A992, $8993, $89A3
#_00B08E: dw $A992, $8993, $89A3, $A982
#_00B096: dw $8983, $89A2

;---------------------------------------------------------------------------------------------------

#_00B09A: dw $49A2, $4983, $6982, $49A3
#_00B0A2: dw $4993, $6992, $49A3, $4993
#_00B0AA: dw $6992, $C9A3, $C993, $E992
#_00B0B2: dw $C9A3, $C993, $E992, $C9A2
#_00B0BA: dw $C983, $E982

;---------------------------------------------------------------------------------------------------

#_00B0BE: dw $2984, $0990, $09A0, $2994
#_00B0C6: dw $0991, $09A1, $2994, $0991
#_00B0CE: dw $09A1, $6994, $4991, $49A1
#_00B0D6: dw $6994, $4991, $49A1, $6984
#_00B0DE: dw $4990, $49A0

;---------------------------------------------------------------------------------------------------

#_00B0E2: dw $89A0, $8990, $A984, $89A1
#_00B0EA: dw $8991, $A994, $89A1, $8991
#_00B0F2: dw $A994, $C9A1, $C991, $E994
#_00B0FA: dw $C9A1, $C991, $E994, $C9A0
#_00B102: dw $C990, $E984

;---------------------------------------------------------------------------------------------------

#_00B106: dw $288A, $288B, $288B, $0809
#_00B10E: dw $09EF, $09EF, $080A, $0879
#_00B116: dw $0879, $288A, $A88B, $A88B
#_00B11E: dw $09EF, $89EF, $8809, $0879
#_00B126: dw $8879, $880A

;---------------------------------------------------------------------------------------------------

#_00B12A: dw $480A, $4879, $4879, $4809
#_00B132: dw $49EF, $49EF, $688A, $688B
#_00B13A: dw $688B, $4879, $C879, $C80A
#_00B142: dw $49EF, $C9EF, $C809, $688B
#_00B14A: dw $E88B, $E88A

;---------------------------------------------------------------------------------------------------

#_00B14E: dw $880D, $8808, $A82C, $8878
#_00B156: dw $09EF, $A82D, $C878, $09EF
#_00B15E: dw $E82D, $C80D, $C808, $E82C

;---------------------------------------------------------------------------------------------------

#_00B166: dw $0980, $0981, $4981, $4980
#_00B16E: dw $0990, $0991, $4991, $4990
#_00B176: dw $09A0, $09A1, $49A1, $49A0

;---------------------------------------------------------------------------------------------------

#_00B17E: dw $0980, $0981, $4981, $4980
#_00B186: dw $0990, $0991, $4991, $4990
#_00B18E: dw $09A0, $1DB2, $1DB2, $49A0
#_00B196: dw $1DB3, $1DB3, $1DB3, $1DB3
#_00B19E: dw $1DB5, $1DB5, $1DB5, $1DB5

;---------------------------------------------------------------------------------------------------

#_00B1A6: dw $2980, $2981, $6981, $6980
#_00B1AE: dw $2990, $2991, $6991, $6990
#_00B1B6: dw $29A0, $3DB2, $3DB2, $69A0
#_00B1BE: dw $3DB3, $3DB3, $3DB3, $3DB3
#_00B1C6: dw $3DB3, $3DB3, $3DB3, $3DB3
#_00B1CE: dw $1DB3, $1DB3, $1DB3, $1DB3
#_00B1D6: dw $1DB5, $1DB5, $1DB5, $1DB5

;---------------------------------------------------------------------------------------------------
; FROM Underworld_FloodSwampWater_RiseInLevel
#_00B1DE: dw $09A0, $1DB2, $5DB2, $49A0
#_00B1E6: dw $1DB3, $1DB3, $1DB3, $1DB3
#_00B1EE: dw $1DB3, $1DB3, $1DB3, $1DB3
#_00B1F6: dw $1DB5, $1DB5, $1DB5, $1DB5
#_00B1FE: dw $18CA, $18CB, $18CA, $18CB

#_00B206: dw $09A0, $1DB2, $5DB2, $49A0
#_00B20E: dw $1DB3, $1DB3, $1DB3, $1DB3
#_00B216: dw $1DB5, $1DB5, $1DB5, $1DB5
#_00B21E: dw $0870, $0870, $0870, $0870
#_00B226: dw $18CA, $18CB, $18CA, $18CB

;---------------------------------------------------------------------------------------------------
; FROM RoomDraw_LampCones
#_00B22E: dw $01EC, $853E, $853F, $853D
#_00B236: dw $853D, $853D, $C53D, $C53D
#_00B23E: dw $C53D, $C53F, $C53E, $01EC
#_00B246: dw $052A, $853D, $853D, $853D
#_00B24E: dw $853D, $853D, $C53D, $C53D
#_00B256: dw $C53D, $C53D, $C53D, $452A
#_00B25E: dw $05E8, $853D, $853D, $852E
#_00B266: dw $852F, $852D, $C52D, $C52F
#_00B26E: dw $C52E, $C53D, $C53D, $45E8
#_00B276: dw $05E7, $853D, $052B, $852D
#_00B27E: dw $852D, $852D, $C52D, $C52D
#_00B286: dw $C52D, $452B, $C53D, $45E7
#_00B28E: dw $05E7, $853D, $053B, $852D
#_00B296: dw $852D, $852D, $C52D, $C52D
#_00B29E: dw $C52D, $453B, $C53D, $45E7
#_00B2A6: dw $85E8, $853D, $853B, $852D
#_00B2AE: dw $852D, $852D, $C52D, $C52D
#_00B2B6: dw $C52D, $C53B, $C53D, $C5E8
#_00B2BE: dw $852A, $853D, $852B, $852D
#_00B2C6: dw $852D, $852D, $C52D, $C52D
#_00B2CE: dw $C52D, $C52B, $C53D, $C52A
#_00B2D6: dw $01EC, $853A, $853D, $853B
#_00B2DE: dw $852D, $852D, $C52D, $C52D
#_00B2E6: dw $C53B, $C53D, $C53A, $01EC
#_00B2EE: dw $01EC, $852A, $853D, $852B
#_00B2F6: dw $852D, $852D, $C52D, $C52D
#_00B2FE: dw $C52B, $C53D, $C52A, $01EC
#_00B306: dw $01EC, $01EC, $853A, $853D
#_00B30E: dw $052E, $052F, $452F, $452E
#_00B316: dw $C53D, $C53A, $01EC, $01EC
#_00B31E: dw $01EC, $01EC, $852A, $853D
#_00B326: dw $853D, $853D, $C53D, $C53D
#_00B32E: dw $C53D, $C52A, $01EC, $01EC
#_00B336: dw $01EC, $01EC, $01EC, $053E
#_00B33E: dw $053F, $853D, $C53D, $453F
#_00B346: dw $453E

;---------------------------------------------------------------------------------------------------

#_00B348: dw $01EC, $01EC, $01EC, $853E
#_00B350: dw $853F, $053D, $453D, $C53F
#_00B358: dw $C53E, $01EC, $01EC, $01EC
#_00B360: dw $01EC, $01EC, $052A, $053D
#_00B368: dw $053D, $053D, $453D, $453D
#_00B370: dw $453D, $452A, $01EC, $01EC
#_00B378: dw $01EC, $01EC, $053A, $053D
#_00B380: dw $852E, $852F, $C52F, $C52E
#_00B388: dw $453D, $453A, $01EC, $01EC
#_00B390: dw $01EC, $052A, $053D, $052B
#_00B398: dw $052D, $052D, $452D, $452D
#_00B3A0: dw $452B, $453D, $452A, $01EC
#_00B3A8: dw $01EC, $053A, $053D, $053B
#_00B3B0: dw $052D, $052D, $452D, $452D
#_00B3B8: dw $453B, $453D, $453A, $01EC
#_00B3C0: dw $052A, $053D, $052B, $052D
#_00B3C8: dw $052D, $052D, $452D, $452D
#_00B3D0: dw $452D, $452B, $453D, $452A
#_00B3D8: dw $05E8, $053D, $053B, $052D
#_00B3E0: dw $052D, $052D, $452D, $452D
#_00B3E8: dw $452D, $453B, $453D, $45E8
#_00B3F0: dw $05E7, $053D, $853B, $052D
#_00B3F8: dw $052D, $052D, $452D, $452D
#_00B400: dw $452D, $C53B, $453D, $45E7
#_00B408: dw $05E7, $053D, $852B, $052D
#_00B410: dw $052D, $052D, $452D, $452D
#_00B418: dw $452D, $C52B, $453D, $45E7
#_00B420: dw $85E8, $053D, $053D, $052E
#_00B428: dw $052F, $052D, $452D, $452F
#_00B430: dw $452E, $453D, $453D, $C5E8
#_00B438: dw $852A, $053D, $053D, $053D
#_00B440: dw $053D, $053D, $453D, $453D
#_00B448: dw $453D, $453D, $453D, $C52A
#_00B450: dw $01EC, $053E, $053F, $053D
#_00B458: dw $053D, $053D, $453D, $453D
#_00B460: dw $453D, $453F, $453E

;---------------------------------------------------------------------------------------------------

#_00B466: dw $01EC, $853E, $853F, $053D
#_00B46E: dw $053D, $C53F, $C53E, $01EC
#_00B476: dw $01EC, $01EC, $01EC, $01EC
#_00B47E: dw $052A, $053D, $053D, $053D
#_00B486: dw $053D, $053D, $053D, $C53F
#_00B48E: dw $C53E, $01EC, $01EC, $01EC
#_00B496: dw $053A, $053D, $053D, $852E
#_00B49E: dw $852F, $C52F, $C52E, $053D
#_00B4A6: dw $053D, $C53F, $C53E, $01EC
#_00B4AE: dw $053D, $053D, $052B, $052D
#_00B4B6: dw $052D, $052D, $852D, $C52F
#_00B4BE: dw $C52E, $053D, $053D, $452A
#_00B4C6: dw $053D, $053D, $053B, $052D
#_00B4CE: dw $052D, $052D, $052D, $052D
#_00B4D6: dw $052D, $452B, $053D, $453A
#_00B4DE: dw $053D, $053D, $052D, $052D
#_00B4E6: dw $052D, $052D, $052D, $052D
#_00B4EE: dw $052D, $453B, $053D, $053D
#_00B4F6: dw $853D, $853D, $852D, $852D
#_00B4FE: dw $852D, $852D, $852D, $852D
#_00B506: dw $852D, $C53B, $853D, $853D
#_00B50E: dw $853D, $853D, $853B, $852D
#_00B516: dw $852D, $852D, $852D, $852D
#_00B51E: dw $852D, $C52B, $853D, $C53A
#_00B526: dw $853D, $853D, $852B, $852D
#_00B52E: dw $852D, $852D, $852D, $452F
#_00B536: dw $452E, $853D, $853D, $C52A
#_00B53E: dw $853A, $853D, $853D, $052E
#_00B546: dw $052F, $452F, $452E, $853D
#_00B54E: dw $853D, $453F, $453E, $01EC
#_00B556: dw $852A, $853D, $853D, $853D
#_00B55E: dw $853D, $853D, $853D, $453F
#_00B566: dw $453E, $01EC, $01EC, $01EC
#_00B56E: dw $01EC, $053E, $053F, $853D
#_00B576: dw $853D, $453F, $453E

;---------------------------------------------------------------------------------------------------

#_00B57C: dw $01EC, $01EC, $01EC, $01EC
#_00B584: dw $01EC, $853E, $853F, $453D
#_00B58C: dw $453D, $C53F, $C53E, $01EC
#_00B594: dw $01EC, $01EC, $01EC, $853E
#_00B59C: dw $853F, $453D, $453D, $453D
#_00B5A4: dw $453D, $453D, $453D, $452A
#_00B5AC: dw $01EC, $853E, $853F, $453D
#_00B5B4: dw $453D, $852E, $852F, $C52F
#_00B5BC: dw $C52E, $453D, $453D, $453A
#_00B5C4: dw $052A, $453D, $453D, $852E
#_00B5CC: dw $852F, $452D, $452D, $452D
#_00B5D4: dw $452D, $452B, $453D, $453D
#_00B5DC: dw $053A, $453D, $052B, $452D
#_00B5E4: dw $452D, $452D, $452D, $452D
#_00B5EC: dw $452D, $453B, $453D, $453D
#_00B5F4: dw $453D, $453D, $053B, $452D
#_00B5FC: dw $452D, $452D, $452D, $452D
#_00B604: dw $452D, $452D, $453D, $453D
#_00B60C: dw $C53D, $C53D, $853B, $C52D
#_00B614: dw $C52D, $C52D, $C52D, $C52D
#_00B61C: dw $C52D, $C52D, $C53D, $C53D
#_00B624: dw $853A, $C53D, $852B, $C52D
#_00B62C: dw $C52D, $C52D, $C52D, $C52D
#_00B634: dw $C52D, $C53B, $C53D, $C53D
#_00B63C: dw $852A, $C53D, $C53D, $052E
#_00B644: dw $052F, $C52D, $C52D, $C52D
#_00B64C: dw $C52D, $C52B, $C53D, $C53D
#_00B654: dw $01EC, $053E, $053F, $C53D
#_00B65C: dw $C53D, $052E, $052F, $452F
#_00B664: dw $452E, $C53D, $C53D, $C53A
#_00B66C: dw $01EC, $01EC, $01EC, $053E
#_00B674: dw $053F, $C53D, $C53D, $C53D
#_00B67C: dw $C53D, $C53D, $C53D, $C52A
#_00B684: dw $01EC, $01EC, $01EC, $01EC
#_00B68C: dw $01EC, $053E, $053F, $C53D
#_00B694: dw $C53D, $453F, $453E, $01EC

;---------------------------------------------------------------------------------------------------
; FROM RoomDraw_AgahnimsAltar
#_00B69C: dw $099D, $098E, $098E, $098E
#_00B6A4: dw $098E, $098E, $098E, $098E
#_00B6AC: dw $098E, $098E, $098E, $098E
#_00B6B4: dw $098E, $099E, $099F, $18C6
#_00B6BC: dw $18C6, $18C6, $18C6, $18C6
#_00B6C4: dw $18C6, $18C6, $18C6, $18C6
#_00B6CC: dw $18C6, $18C6, $18C6, $099F
#_00B6D4: dw $099F, $18C6, $18C6, $18C6
#_00B6DC: dw $18C6, $118A, $119A, $118B
#_00B6E4: dw $119B, $11A0, $18C6, $18C6
#_00B6EC: dw $18C6, $099F, $099F, $18C6
#_00B6F4: dw $18C6, $18C6, $18C6, $1183
#_00B6FC: dw $1193, $1182, $1192, $11A1
#_00B704: dw $18C6, $18C6, $498F, $499E
#_00B70C: dw $099F, $18C6, $18D4, $98D4
#_00B714: dw $18C6, $1189, $1187, $1197
#_00B71C: dw $118C, $11A2, $18C6, $18C6
#_00B724: dw $0972, $0972, $099F, $18D6
#_00B72C: dw $18D5, $98D5, $98D6, $119C
#_00B734: dw $1188, $1198, $118D, $11A3
#_00B73C: dw $18C6, $18C6, $0972, $0972

;---------------------------------------------------------------------------------------------------
; FROM RoomDraw_AgahnimsWindows
#_00B744: dw $0995, $1D99, $0994, $0CAC
#_00B74C: dw $0995, $1D99, $0994, $0CAC
#_00B754: dw $0980, $0990, $0986, $09A6
#_00B75C: dw $4980, $4990, $4986, $49A6
#_00B764: dw $0995, $1D99, $0994, $0CAC
#_00B76C: dw $0995, $1D99, $0994, $0CAC

#_00B774: dw $1DA7, $1DA8, $1DA4, $08F5
#_00B77C: dw $0CD8

#_00B77E: dw $0981, $0991, $0985, $09A5
#_00B786: dw $8981, $8991, $8985, $89A5
#_00B78E: dw $0996, $1D99, $0984, $0CAD
#_00B796: dw $0996, $1D99, $0984, $0CAD
#_00B79E: dw $0996, $1D99, $0984, $0CAD
#_00B7A6: dw $0996, $1D99, $0984, $0CAD

#_00B7AE: dw $98D9, $D8C7, $98C7, $D8C7
#_00B7B6: dw $98C8, $14DB, $14CA, $58C8
#_00B7BE: dw $18C7, $58C7, $18C7, $58D9

#_00B7C6: dw $58D9, $14CA, $D8C7, $98C8
#_00B7CE: dw $58C7, $18C7, $D8C7, $98C7
#_00B7D6: dw $58C8, $18C7, $14DB, $98D9

#_00B7DE: dw $0CD8, $14CB, $D8C8, $58C8
#_00B7E6: dw $14DB, $14DA, $18D9, $98C7
#_00B7EE: dw $18C7, $98D9, $D8C8, $58C7
#_00B7F6: dw $D8C7, $58C7, $D8D9, $98C8
#_00B7FE: dw $18C7, $98C7, $18C8, $14DA
#_00B806: dw $14DB, $58D9, $D8D9, $14CB
#_00B80E: dw $14DB

;---------------------------------------------------------------------------------------------------

#_00B810: dw $95A6, $958D, $B597, $95A7
#_00B818: dw $959C, $B598, $D5A7, $D59C
#_00B820: dw $F598, $D5A6, $D58D, $F597
#_00B828: dw $B587, $B595, $95A0, $B588
#_00B830: dw $B596, $9586, $F588, $F596
#_00B838: dw $D586, $F587, $F595, $D5A0

;---------------------------------------------------------------------------------------------------

#_00B840: dw $15A0, $3595, $3587, $3586
#_00B848: dw $3596, $3588, $7586, $7596
#_00B850: dw $7588, $55A0, $7595, $7587
#_00B858: dw $3597, $158D, $15A6, $3598
#_00B860: dw $159C, $15A7, $7598, $559C
#_00B868: dw $55A7, $7597, $558D, $55A6

;---------------------------------------------------------------------------------------------------

#_00B870: dw $55A4, $55A5, $D5A5, $D5A4
#_00B878: dw $558C, $559C, $D59C, $D58C
#_00B880: dw $758B, $759B, $F59B, $F58B
#_00B888: dw $758A, $759A, $F59A, $F58A
#_00B890: dw $7589, $7599, $F599, $F589
#_00B898: dw $55A1, $7585, $F585, $D5A1

;---------------------------------------------------------------------------------------------------

#_00B8A0: dw $15A1, $3585, $B585, $95A1
#_00B8A8: dw $3589, $3599, $B599, $B589
#_00B8B0: dw $358A, $359A, $B59A, $B58A
#_00B8B8: dw $358B, $359B, $B59B, $B58B
#_00B8C0: dw $158C, $159C, $959C, $958C
#_00B8C8: dw $15A4, $15A5, $95A5, $95A4

;---------------------------------------------------------------------------------------------------

#_00B8D0: dw $1590, $1590, $5590, $5590

;---------------------------------------------------------------------------------------------------

#_00B8D8: dw $1580, $9580, $1580, $9580

;---------------------------------------------------------------------------------------------------

#_00B8E0: dw $1581, $1590, $1580, $1591

;---------------------------------------------------------------------------------------------------

#_00B8E8: dw $1590, $1592, $1582, $9580

;---------------------------------------------------------------------------------------------------

#_00B8F0: dw $1580, $1593, $1583, $5590

;---------------------------------------------------------------------------------------------------

#_00B8F8: dw $1584, $9580, $5590, $1594

;---------------------------------------------------------------------------------------------------

#_00B900: dw $15A3, $1590, $55A3, $5590

;---------------------------------------------------------------------------------------------------

#_00B908: dw $1590, $95A3, $5590, $D5A3

;---------------------------------------------------------------------------------------------------

#_00B910: dw $95A2, $15A2, $1580, $9580

;---------------------------------------------------------------------------------------------------

#_00B918: dw $1580, $9580, $D5A2, $55A2

;---------------------------------------------------------------------------------------------------

#_00B920: dw $159D, $959D, $559D, $D59D

;---------------------------------------------------------------------------------------------------

#_00B928: dw $19C4, $19C5

;---------------------------------------------------------------------------------------------------

#_00B92C: dw $0980, $0990, $0981, $0991

;---------------------------------------------------------------------------------------------------

#_00B934: dw $8990, $8980, $8991, $8981

;---------------------------------------------------------------------------------------------------

#_00B93C: dw $0D29, $0D39, $4D29, $4D39

;---------------------------------------------------------------------------------------------------

#_00B944: dw $19CD, $19CE, $59CD, $59CE

;---------------------------------------------------------------------------------------------------

#_00B94C: dw $01EC, $1585, $1586, $1587
#_00B954: dw $1588, $1589, $1578, $5586
#_00B95C: dw $5585, $01EC, $1594, $1595
#_00B964: dw $1596, $1597, $1598, $1599
#_00B96C: dw $1579, $5596, $5595, $5594
#_00B974: dw $158A, $158B, $158C, $158D
#_00B97C: dw $158E, $158F, $1572, $558C
#_00B984: dw $558B, $558A, $159A, $159B
#_00B98C: dw $159C, $159D, $159E, $159F
#_00B994: dw $559D, $559C, $559B, $559A
#_00B99C: dw $15AA, $15AB, $15AC, $15AD
#_00B9A4: dw $15AE, $15AF, $55AD, $55AC
#_00B9AC: dw $55AB, $55AA, $15A0, $15A1
#_00B9B4: dw $15A2, $15A3, $15A4, $15A5
#_00B9BC: dw $55A3, $55A2, $55A1, $55A0
#_00B9C4: dw $15A7, $15A8, $154E, $156E
#_00B9CC: dw $1576, $1577, $556E, $554E
#_00B9D4: dw $55A8, $55A7, $01EC, $15A9
#_00B9DC: dw $155E, $157E, $1574, $1575

; RoomDraw_SmithyFurnace?
#_00B9E4: dw $557E, $555E, $55A9, $01EC

;---------------------------------------------------------------------------------------------------

#_00B9EC: dw $01EC, $31AA, $3161, $3162
#_00B9F4: dw $3163, $7163, $7162, $7161
#_00B9FC: dw $71AA, $01EC, $01EC, $3170
#_00BA04: dw $3171, $3172, $317E, $717E
#_00BA0C: dw $7172, $7171, $7170, $01EC
#_00BA14: dw $3144, $3145, $3146, $3147
#_00BA1C: dw $3148, $7148, $7147, $7146
#_00BA24: dw $7145, $7144, $3154, $3155
#_00BA2C: dw $3156, $3157, $3158, $7158
#_00BA34: dw $7157, $7156, $7155, $7154
#_00BA3C: dw $3164, $3165, $3166, $3167
#_00BA44: dw $3168, $7168, $7167, $7166
#_00BA4C: dw $7165, $7164, $3174, $3175
#_00BA54: dw $3176, $3177, $3178, $7178
#_00BA5C: dw $7177, $7176, $7175, $7174
#_00BA64: dw $3149, $3159, $3169, $3179
#_00BA6C: dw $31AF, $71AF, $7179, $7169
#_00BA74: dw $7159, $7149, $31AA, $31AB
#_00BA7C: dw $31AC, $31AD, $31AE, $71AE
#_00BA84: dw $71AD, $71AC, $71AB, $71AA

;---------------------------------------------------------------------------------------------------

#_00BA8C: dw $0DCF, $8DCF, $4DCF, $CDCF

;---------------------------------------------------------------------------------------------------

#_00BA94: dw $0D1F, $8D1F, $4D1F, $CD1F

;---------------------------------------------------------------------------------------------------

#_00BA9C: dw $0D01, $8D01, $4D01, $CD01

;---------------------------------------------------------------------------------------------------

#_00BAA4: dw $19D0, $19D2, $19D1, $19D3

;---------------------------------------------------------------------------------------------------

#_00BAAC: dw $0DD4, $0DD6, $0DD5, $0DD7

;---------------------------------------------------------------------------------------------------

#_00BAB4: dw $0993, $0D82, $0D84, $0890
#_00BABC: dw $0D83, $0D85, $0890, $0D92
#_00BAC4: dw $0D86, $0890, $4D92, $4D86
#_00BACC: dw $0890, $0D92, $0D86, $0890
#_00BAD4: dw $4D92, $4D86, $0890, $4D83
#_00BADC: dw $4D85, $4993, $4D82, $4D84

;---------------------------------------------------------------------------------------------------

#_00BAE4: dw $094A, $094B, $094B, $494B
#_00BAEC: dw $494B, $494A, $094E, $0978
#_00BAF4: dw $0979, $4979, $4978, $494E
#_00BAFC: dw $094E, $094F, $1DB3, $5DB3
#_00BB04: dw $494F, $494E, $094E, $094F
#_00BB0C: dw $1DB4, $5DB4, $494F, $494E
#_00BB14: dw $094E, $094F, $1DB4, $5DB4
#_00BB1C: dw $494F, $494E, $094E, $094F
#_00BB24: dw $9DB3, $DDB3, $494F, $494E
#_00BB2C: dw $096A, $095E, $095F, $495F
#_00BB34: dw $495E, $496A, $097A, $096E
#_00BB3C: dw $096F, $496F, $496E, $497A

;---------------------------------------------------------------------------------------------------

#_00BB44: dw $11A0, $11A2, $1194, $11A1
#_00BB4C: dw $11A3, $1195, $51A1, $51A3
#_00BB54: dw $5195, $11A1, $11A3, $1195
#_00BB5C: dw $51A1, $51A3, $5195, $51A0
#_00BB64: dw $51A2, $5194

;---------------------------------------------------------------------------------------------------

#_00BB68: dw $0DAA, $0DAC, $0DAE, $0DAB
#_00BB70: dw $0DAD, $0DAF, $4DAB, $4DAD
#_00BB78: dw $4DAF, $4DAA, $4DAC, $4DAE

;---------------------------------------------------------------------------------------------------

#_00BB80: dw $0D51, $0D66, $1D64, $1D44
#_00BB88: dw $1D54, $1D64, $1D54, $09EF
#_00BB90: dw $0D55, $0D65, $156B, $157B
#_00BB98: dw $158B, $1D40, $19B2, $157C
#_00BBA0: dw $158C, $1D41, $156C, $157D
#_00BBA8: dw $158C, $5D41, $14E4, $14E5
#_00BBB0: dw $158D, $1D41

;---------------------------------------------------------------------------------------------------

#_00BBB4: dw $1540, $1550, $1576, $1541
#_00BBBC: dw $1551, $1577, $5541, $5551
#_00BBC4: dw $5577, $1541, $1551, $1577
#_00BBCC: dw $5541, $5551, $5577, $5540
#_00BBD4: dw $5550, $5576

;---------------------------------------------------------------------------------------------------

#_00BBD8: dw $1180, $1190, $1190, $1190
#_00BBE0: dw $1191, $1186, $1196, $1181
#_00BBE8: dw $5190, $5190, $5190, $5191
#_00BBF0: dw $5186, $5196, $1182, $1192
#_00BBF8: dw $1184, $1194, $11A4, $11A4
#_00BC00: dw $11A4, $1183, $1193, $1185
#_00BC08: dw $1195, $11A4, $11A4, $11A4
#_00BC10: dw $5183, $5193, $5185, $5195
#_00BC18: dw $51A4, $51A4, $51A4, $5182
#_00BC20: dw $5192, $5184, $5194, $51A4
#_00BC28: dw $51A4, $51A4, $5181, $1190
#_00BC30: dw $1190, $1190, $1191, $1186
#_00BC38: dw $1196, $5180, $5190, $5190
#_00BC40: dw $5190, $5191, $5186, $5196

;---------------------------------------------------------------------------------------------------

#_00BC48: dw $1593, $1580, $1580, $1580
#_00BC50: dw $1580, $1580, $1580, $1580
#_00BC58: dw $1580, $1580, $15A1, $1580
#_00BC60: dw $1580, $1580, $1580, $1580
#_00BC68: dw $1580, $1580, $1580, $1580
#_00BC70: dw $1582, $15A3, $1580, $5583
#_00BC78: dw $5593, $1580, $1580, $1580
#_00BC80: dw $1582, $1592, $1580, $1583
#_00BC88: dw $1596, $1580, $55A1, $D5A1
#_00BC90: dw $1580, $1580, $1580, $1583
#_00BC98: dw $1593, $1580, $1580, $55A1
#_00BCA0: dw $1580, $5582, $5592, $1580
#_00BCA8: dw $1580, $1580, $1580, $1580
#_00BCB0: dw $1580, $1580, $55A0, $1580
#_00BCB8: dw $1580, $1580, $15B4, $15B3
#_00BCC0: dw $95B3, $95B4, $1580, $1580
#_00BCC8: dw $1580, $5591, $1580, $1580
#_00BCD0: dw $15B6, $15B5, $1581, $1581
#_00BCD8: dw $95B5, $95B6, $1580, $1580
#_00BCE0: dw $5590, $95A0, $15B7, $15B5
#_00BCE8: dw $1581, $1581, $1581, $1581
#_00BCF0: dw $95B5, $95B7, $1580, $55A1
#_00BCF8: dw $95A1, $15B8, $1581, $1595
#_00BD00: dw $15A5, $95A5, $9595, $9581
#_00BD08: dw $95B8, $1580, $55A0, $D5A1
#_00BD10: dw $15B9, $1585, $15A4, $15A4
#_00BD18: dw $15A4, $15A4, $9585, $95B9
#_00BD20: dw $1580, $5591, $D5A0, $15B2
#_00BD28: dw $1586, $15A4, $15A4, $15A4
#_00BD30: dw $15A4, $9586, $95B2, $1580
#_00BD38: dw $5590, $1580, $55B2, $5586
#_00BD40: dw $15A4, $15A4, $15A4, $15A4
#_00BD48: dw $D586, $D5B2, $1580, $1590
#_00BD50: dw $1580, $55B9, $5585, $15A4
#_00BD58: dw $15A4, $15A4, $15A4, $D585
#_00BD60: dw $D5B9, $1580, $1591, $1580
#_00BD68: dw $55B8, $5581, $5595, $55A5
#_00BD70: dw $D5A5, $D595, $D581, $D5B8
#_00BD78: dw $1580, $15A0, $1580, $55B7
#_00BD80: dw $55B5, $5581, $5581, $5581
#_00BD88: dw $5581, $D5B5, $D5B7, $1582
#_00BD90: dw $1596, $1580, $1580, $55B6
#_00BD98: dw $55B5, $5581, $5581, $D5B5
#_00BDA0: dw $D5B6, $1580, $1583, $1596
#_00BDA8: dw $95A0, $1580, $1580, $55B4
#_00BDB0: dw $55B3, $D5B3, $D5B4, $1580
#_00BDB8: dw $1580, $1580, $1590, $95A1
#_00BDC0: dw $1580, $1580, $1580, $1580
#_00BDC8: dw $1580, $1580, $1580, $1580
#_00BDD0: dw $1580, $1591, $9590, $1580
#_00BDD8: dw $5583, $5593, $1580, $1582
#_00BDE0: dw $1592, $1580, $1580, $1580
#_00BDE8: dw $15A0, $9591, $1580, $55A1
#_00BDF0: dw $D5A1, $1580, $1583, $1593
#_00BDF8: dw $1580, $1580, $1580, $15A1
#_00BE00: dw $95A0, $1580, $5582, $5592
#_00BE08: dw $1580, $1580, $1580, $1580
#_00BE10: dw $1580, $1580, $1590, $95A1
#_00BE18: dw $1580, $1580, $1580, $1580
#_00BE20: dw $1580, $1580, $1580, $1580
#_00BE28: dw $1580, $1591, $0CEE, $D594
#_00BE30: dw $1584, $15A3, $5594, $1594

;---------------------------------------------------------------------------------------------------

#_00BE38: dw $0D09, $0D19, $4D09, $4D19

;---------------------------------------------------------------------------------------------------

#_00BE40: dw $0D0A, $0D1A, $4D0A, $4D1A

;---------------------------------------------------------------------------------------------------

#_00BE48: dw $0D4A, $0D5A, $0D6A, $0D7A
#_00BE50: dw $0D4B, $0D5B, $0D6B, $0D7B
#_00BE58: dw $4D4B, $4D5B, $4D6B, $4D7B
#_00BE60: dw $4D4A, $4D5A, $4D6A, $4D7A

;---------------------------------------------------------------------------------------------------

#_00BE68: dw $0966, $0956, $1D48, $0967
#_00BE70: dw $0957, $1DBE, $4967, $4957
#_00BE78: dw $5DBE, $4966, $4956, $5D48

;---------------------------------------------------------------------------------------------------

#_00BE80: dw $9D48, $8956, $8966, $9DBE
#_00BE88: dw $8957, $8967, $DDBE, $C957
#_00BE90: dw $C967, $DD48, $C956, $C966

;---------------------------------------------------------------------------------------------------

#_00BE98: dw $0968, $0969, $8969, $8968
#_00BEA0: dw $0958, $0959, $8959, $8958
#_00BEA8: dw $1D49, $1DBF, $9DBF, $9D49

;---------------------------------------------------------------------------------------------------

#_00BEB0: dw $5D49, $5DBF, $DDBF, $DD49
#_00BEB8: dw $4958, $4959, $C959, $C958
#_00BEC0: dw $4968, $4969, $C969, $C968

;---------------------------------------------------------------------------------------------------
; FROM RoomDraw_EmptyWaterFace
#_00BEC8: dw $113D, $113D, $113D, $113D
#_00BED0: dw $113D, $113D, $113D, $113D
#_00BED8: dw $113D, $113D, $113D, $113D
#_00BEE0: dw $113D, $113D, $113D, $113D

; FROM RoomDraw_SpittingWaterFace
#_00BEE8: dw $1164, $1164, $1164, $1174
#_00BEF0: dw $1165, $1165, $1165, $1175
#_00BEF8: dw $5165, $5165, $5165, $5175
#_00BF00: dw $5164, $5164, $5164, $5174

;---------------------------------------------------------------------------------------------------

#_00BF08: dw $1144, $1154, $1154, $1154
#_00BF10: dw $1176, $112D, $112D, $112D
#_00BF18: dw $1145, $1155, $1155, $1155
#_00BF20: dw $1176, $112D, $112D, $112D
#_00BF28: dw $5176, $512D, $512D, $512D
#_00BF30: dw $5145, $5155, $5155, $5155
#_00BF38: dw $5176, $512D, $512D, $512D
#_00BF40: dw $5144, $5154, $5154, $5154
#_00BF48: dw $1154, $1154, $1154, $9144
#_00BF50: dw $112D, $112D, $112D, $9176
#_00BF58: dw $1155, $1155, $1155, $9145
#_00BF60: dw $112D, $112D, $112D, $9176
#_00BF68: dw $512D, $512D, $512D, $D176
#_00BF70: dw $5155, $5155, $5155, $D145
#_00BF78: dw $512D, $512D, $512D, $D176
#_00BF80: dw $5154, $5154, $5154, $D144

;---------------------------------------------------------------------------------------------------

#_00BF88: dw $09E5, $09F5, $0936, $09FA
#_00BF90: dw $49E5, $09F7, $0937, $09FB
#_00BF98: dw $0000, $0000, $0000, $0CAC
#_00BFA0: dw $0000, $0000, $0000, $4CAC
#_00BFA8: dw $0000, $0000, $0000, $0CAC
#_00BFB0: dw $0000, $0000, $0000, $4CAC
#_00BFB8: dw $09E5, $49F7, $4937, $49FB
#_00BFC0: dw $49E5, $49F5, $4936, $49FA
#_00BFC8: dw $1414, $9414, $1414, $9414
#_00BFD0: dw $5414, $D414, $5414, $D414
#_00BFD8: dw $1414, $14E9, $14F9, $9414
#_00BFE0: dw $5414, $14EA, $14FA, $D414
#_00BFE8: dw $1414, $54EA, $54FA, $9414
#_00BFF0: dw $5414, $54E9, $54F9, $D414
#_00BFF8: dw $1414, $9414, $1414, $9414
#_00C000: dw $5414, $D414, $5414, $D414

;---------------------------------------------------------------------------------------------------

#_00C008: dw $2984, $09AC, $0994, $2985
#_00C010: dw $15AD, $1595, $2986, $15AE
#_00C018: dw $1596, $2987, $09AF, $0997
#_00C020: dw $6987, $49AF, $4997, $6986
#_00C028: dw $55AE, $5596, $6985, $55AD
#_00C030: dw $5595, $6984, $49AC, $4994

;---------------------------------------------------------------------------------------------------

#_00C038: dw $0980, $0990, $09A0, $0981
#_00C040: dw $0991, $09A1, $0982, $0992
#_00C048: dw $11A2, $1183, $1193, $11A3
#_00C050: dw $5183, $5193, $51A3, $4982
#_00C058: dw $4992, $51A2, $4981, $4991
#_00C060: dw $49A1, $4980, $4990, $49A0

;---------------------------------------------------------------------------------------------------

#_00C068: dw $490C, $C90C, $099A, $09AA
#_00C070: dw $090C, $098B, $099B, $09AB
#_00C078: dw $490C, $498B, $499B, $49AB
#_00C080: dw $090C, $890C, $499A, $49AA
#_00C088: dw $490C, $09A8, $09A6, $C90C
#_00C090: dw $098A, $09A9, $09A7, $890C
#_00C098: dw $498A, $49A9, $49A7, $C90C
#_00C0A0: dw $090C, $49A8, $49A6, $890C
#_00C0A8: dw $09AC, $0994, $1D8C, $01EC
#_00C0B0: dw $15AD, $1595, $1D9C, $01EC
#_00C0B8: dw $15AE, $1596, $1D9C, $01EC
#_00C0C0: dw $09AF, $0997, $1D9C, $01EC
#_00C0C8: dw $49AF, $4997, $1D9C, $01EC
#_00C0D0: dw $55AE, $5596, $1D9C, $01EC
#_00C0D8: dw $55AD, $5595, $1D9C, $01EC
#_00C0E0: dw $49AC, $4994, $5D8C, $01EC
#_00C0E8: dw $09AC, $0994, $1D8C, $1D8C
#_00C0F0: dw $15AD, $1595, $1D9C, $1D9C
#_00C0F8: dw $15AE, $1596, $1D9C, $1D9C
#_00C100: dw $1D88, $1D98, $1D9C, $1D9C
#_00C108: dw $1D88, $1D98, $1D9C, $1D9C
#_00C110: dw $55AE, $5596, $1D9C, $1D9C
#_00C118: dw $55AD, $5595, $1D9C, $1D9C
#_00C120: dw $49AC, $4994, $5D8C, $5D8C
#_00C128: dw $09AC, $0994, $1D8C, $1D8C
#_00C130: dw $15AD, $1595, $1D9C, $1D9C
#_00C138: dw $1D88, $1D98, $1D9C, $1D9C
#_00C140: dw $1D88, $1D98, $1D89, $1D99
#_00C148: dw $1D88, $1D98, $1D89, $1D99
#_00C150: dw $1D88, $1D98, $1D9C, $1D9C
#_00C158: dw $55AD, $5595, $1D9C, $1D9C
#_00C160: dw $49AC, $4994, $5D8C, $5D8C
#_00C168: dw $09AC, $0994, $1D8C, $1D8C
#_00C170: dw $1D8D, $1D98, $1D89, $1D99
#_00C178: dw $1D88, $1D98, $1D89, $1D99
#_00C180: dw $1D88, $1D98, $1D89, $1D99
#_00C188: dw $1D88, $1D98, $1D89, $1D99
#_00C190: dw $1D88, $1D98, $1D89, $1D99
#_00C198: dw $5D8D, $1D98, $1D89, $1D99
#_00C1A0: dw $49AC, $4994, $5D8C, $5D8C

;---------------------------------------------------------------------------------------------------
; FROM RoomDraw_NormalRangedDoors_South
#_00C1A8: dw $08D0, $08D0, $08D0, $08D0
#_00C1B0: dw $08D0, $48D0, $48D0, $48D0
#_00C1B8: dw $48D0, $48D0, $08D0, $14C0
#_00C1C0: dw $14C0, $14C0, $14C0, $54C0
#_00C1C8: dw $54C0, $54C0, $54C0, $48D0
#_00C1D0: dw $08D0, $14C0, $14C0, $14C0
#_00C1D8: dw $14D1, $54D1, $54C0, $54C0
#_00C1E0: dw $54C0, $48D0, $08D0, $14C0
#_00C1E8: dw $14C0, $14C2, $14C3, $54C3
#_00C1F0: dw $54C2, $54C0, $54C0, $48D0
#_00C1F8: dw $097C, $097D, $097F, $14C4
#_00C200: dw $14C5, $54C5, $54C4, $497F
#_00C208: dw $497D, $497C, $096C, $096D
#_00C210: dw $096F, $0908, $14E8, $54E8
#_00C218: dw $4908, $496F, $496D, $496C
#_00C220: dw $095C, $095D, $095F, $0918
#_00C228: dw $14F8, $54F8, $4918, $495F
#_00C230: dw $495D, $495C, $094C, $094D
#_00C238: dw $094F, $A888, $A889, $E889
#_00C240: dw $E888, $494F, $494D, $494C

;---------------------------------------------------------------------------------------------------
; FROM RoomDraw_CaveExitLight
#_00C248: dw $14C8, $097E, $096E, $295E
#_00C250: dw $14D8, $14C9, $14D9, $294E
#_00C258: dw $54D8, $54C9, $54D9, $694E
#_00C260: dw $54C8, $497E, $496E, $695E
#_00C268: dw $2888, $0808, $0818, $2889
#_00C270: dw $09EF, $0878, $6889, $09EF
#_00C278: dw $4878, $6888, $4808, $4818
#_00C280: dw $282C, $0808, $080D, $282D
#_00C288: dw $09EF, $0878, $682D, $09EF
#_00C290: dw $4878, $682C, $4808, $480D
#_00C298: dw $2888, $0808, $0818, $2889
#_00C2A0: dw $09EF, $0878, $6889, $09EF
#_00C2A8: dw $4878, $6888, $4808, $4818
#_00C2B0: dw $0882, $0824, $0834, $0883
#_00C2B8: dw $0825, $0835, $4883, $4825
#_00C2C0: dw $4835, $4882, $4824, $4834
#_00C2C8: dw $0890, $0896, $08A2, $0891
#_00C2D0: dw $0897, $08A3, $0890, $0896
#_00C2D8: dw $08A2, $0891, $0897, $08A3
#_00C2E0: dw $0882, $0800, $0810, $0883
#_00C2E8: dw $0802, $0812, $4883, $4802
#_00C2F0: dw $4812, $4882, $4800, $4810
#_00C2F8: dw $0882, $0800, $0810, $0883
#_00C300: dw $0801, $0811, $4883, $4801
#_00C308: dw $4811, $4882, $4800, $4810
#_00C310: dw $0882, $0800, $0810, $0883
#_00C318: dw $0802, $0812, $4883, $4802
#_00C320: dw $4812, $4882, $4800, $4810
#_00C328: dw $08B0, $0800, $080B, $08B1
#_00C330: dw $0802, $0812, $48B1, $4802
#_00C338: dw $4812, $48B0, $4800, $480B
#_00C340: dw $0890, $08BA, $08A9, $08B4
#_00C348: dw $088C, $088E, $48B4, $088D
#_00C350: dw $088F, $0891, $48BA, $48A9
#_00C358: dw $0882, $0800, $0810, $0883
#_00C360: dw $0801, $0811, $4883, $4801
#_00C368: dw $4811, $4882, $4800, $4810

;---------------------------------------------------------------------------------------------------

#_00C370: dw $0890, $0896, $08A2, $0891
#_00C378: dw $088C, $088E, $0890, $088D
#_00C380: dw $088F, $0891, $0897, $08A3
#_00C388: dw $0882, $0824, $0834, $0883
#_00C390: dw $0825, $0835, $4883, $4825
#_00C398: dw $4835, $4882, $4824, $4834
#_00C3A0: dw $2888, $0808, $0818, $2889
#_00C3A8: dw $09EF, $0878, $6889, $09EF
#_00C3B0: dw $4878, $6888, $4808, $4818
#_00C3B8: dw $282C, $0808, $080D, $282D
#_00C3C0: dw $09EF, $0878, $682D, $09EF
#_00C3C8: dw $4878, $682C, $4808, $480D
#_00C3D0: dw $08B0, $0800, $080B, $08B1
#_00C3D8: dw $0801, $0811, $48B1, $4801
#_00C3E0: dw $4811, $48B0, $4800, $480B
#_00C3E8: dw $08B0, $0824, $080C, $08B1
#_00C3F0: dw $0825, $0835, $48B1, $4825
#_00C3F8: dw $4835, $48B0, $4824, $480C
#_00C400: dw $282C, $0808, $080D, $282D
#_00C408: dw $09EF, $0878, $682D, $09EF
#_00C410: dw $4878, $682C, $4808, $480D
#_00C418: dw $08B0, $0824, $080C, $08B1
#_00C420: dw $0825, $0835, $48B1, $4825
#_00C428: dw $4835, $48B0, $4824, $480C
#_00C430: dw $282C, $0808, $080D, $282D
#_00C438: dw $09EF, $0878, $682D, $09EF
#_00C440: dw $4878, $682C, $4808, $480D
#_00C448: dw $2882, $0808, $0818, $2883
#_00C450: dw $09EF, $0878, $6883, $09EF
#_00C458: dw $4878, $6882, $4808, $4818
#_00C460: dw $2886, $0877, $0875, $2887
#_00C468: dw $09EF, $0859, $6887, $09EF
#_00C470: dw $4859, $6886, $4877, $4875
#_00C478: dw $0872, $0872, $0872, $0873
#_00C480: dw $0874, $0875, $0876, $0876
#_00C488: dw $0876, $0876, $0876, $0876
#_00C490: dw $085B, $4876, $4876, $4876
#_00C498: dw $4876, $4876, $4876, $4872
#_00C4A0: dw $4872, $4872, $4873, $4874
#_00C4A8: dw $4875, $296E, $115E, $1178
#_00C4B0: dw $1158, $696E, $09EF, $0878
#_00C4B8: dw $1174, $296E, $49EF, $4878
#_00C4C0: dw $5174, $696E, $515E, $5178
#_00C4C8: dw $5158, $28B0, $0808, $080D
#_00C4D0: dw $28B1, $09EF, $0878, $68B1
#_00C4D8: dw $09EF, $4878, $68B0, $4808
#_00C4E0: dw $480D, $28B8, $2808, $0818
#_00C4E8: dw $289D, $082E, $083E, $689D
#_00C4F0: dw $082F, $083F, $68B8, $6808
#_00C4F8: dw $4818, $28B8, $2808, $0818
#_00C500: dw $28B9, $09EF, $0819, $68B9
#_00C508: dw $09EF, $081A, $68B8, $6808
#_00C510: dw $4818, $28B5, $2808, $080D
#_00C518: dw $28B7, $082E, $083E, $68B7
#_00C520: dw $082F, $083F, $68B5, $6808
#_00C528: dw $480D, $28B5, $2808, $080D
#_00C530: dw $28B6, $09EF, $0819, $68B6
#_00C538: dw $09EF, $081A, $68B5, $6808
#_00C540: dw $480D, $8818, $8808, $A888
#_00C548: dw $8878, $09EF, $A889, $8878
#_00C550: dw $09EF, $E889, $C818, $C808
#_00C558: dw $E888, $880D, $8808, $A82C
#_00C560: dw $8878, $09EF, $A82D, $C878
#_00C568: dw $09EF, $E82D, $C80D, $C808
#_00C570: dw $E82C, $8818, $8808, $A888
#_00C578: dw $8878, $09EF, $A889, $8878
#_00C580: dw $09EF, $E889, $C818, $C808
#_00C588: dw $E888, $8834, $8824, $8882
#_00C590: dw $8835, $8825, $8883, $C835
#_00C598: dw $C825, $C883, $C834, $C824
#_00C5A0: dw $C882, $88A2, $8896, $8890
#_00C5A8: dw $88A3, $8897, $8891, $88A2
#_00C5B0: dw $8896, $8890, $88A3, $8897
#_00C5B8: dw $8891, $8810, $8800, $8882
#_00C5C0: dw $8812, $8802, $8883, $C812
#_00C5C8: dw $C802, $C883, $C810, $C800
#_00C5D0: dw $C882, $8818, $8808, $A888
#_00C5D8: dw $8878, $09EF, $A889, $8878
#_00C5E0: dw $09EF, $E889, $C818, $C808
#_00C5E8: dw $E888, $88A9, $88BA, $8890
#_00C5F0: dw $888E, $888C, $88B4, $888F
#_00C5F8: dw $888D, $C8B4, $C8A9, $C8BA
#_00C600: dw $8891, $88A2, $8896, $8890
#_00C608: dw $888E, $888C, $8891, $888F
#_00C610: dw $888D, $8890, $88A3, $8897
#_00C618: dw $8891, $8810, $8800, $8882
#_00C620: dw $8811, $8801, $8883, $C811
#_00C628: dw $C801, $C883, $C810, $C800
#_00C630: dw $C882

;---------------------------------------------------------------------------------------------------

#_00C632: dw $88A2, $8896, $8890, $888E
#_00C63A: dw $888C, $8891, $888F, $888D
#_00C642: dw $8890, $88A3, $8897, $8891
#_00C64A: dw $8818, $8808, $A888, $8878
#_00C652: dw $09EF, $A889, $8878, $09EF
#_00C65A: dw $E889, $C818, $C808, $E888
#_00C662: dw $8834, $8824, $8882, $8835
#_00C66A: dw $8825, $8883, $C835, $C825
#_00C672: dw $C883, $C834, $C824, $C882
#_00C67A: dw $880D, $8808, $A82C, $8878
#_00C682: dw $09EF, $A82D, $C878, $09EF
#_00C68A: dw $E82D, $C80D, $C808, $E82C
#_00C692: dw $880B, $8800, $88B0, $8811
#_00C69A: dw $8801, $88B1, $C811, $C801
#_00C6A2: dw $C8B1, $C80B, $C800, $C8B0
#_00C6AA: dw $880C, $8824, $88B0, $8835
#_00C6B2: dw $8825, $88B1, $C835, $C825
#_00C6BA: dw $C8B1, $C80C, $C824, $C8B0
#_00C6C2: dw $880D, $8808, $A82C, $8878
#_00C6CA: dw $09EF, $A82D, $C878, $09EF
#_00C6D2: dw $E82D, $C80D, $C808, $E82C
#_00C6DA: dw $880D, $8808, $A82C, $8878
#_00C6E2: dw $09EF, $A82D, $C878, $09EF
#_00C6EA: dw $E82D, $C80D, $C808, $E82C
#_00C6F2: dw $880C, $8824, $88B0, $8835
#_00C6FA: dw $8825, $88B1, $C835, $C825
#_00C702: dw $C8B1, $C80C, $C824, $C8B0
#_00C70A: dw $8818, $8808, $A882, $8878
#_00C712: dw $09EF, $A883, $C878, $09EF
#_00C71A: dw $E883, $C818, $C808, $E882
#_00C722: dw $8875, $8877, $A886, $8859
#_00C72A: dw $09EF, $A887, $C859, $09EF
#_00C732: dw $E887, $C875, $C877, $E886
#_00C73A: dw $8875, $8874, $8873, $8872
#_00C742: dw $8872, $8872, $8876, $8876
#_00C74A: dw $8876, $8876, $8876, $8876
#_00C752: dw $085B, $C876, $C876, $C876
#_00C75A: dw $C876, $C876, $C876, $C875
#_00C762: dw $C874, $C873, $C872, $C872
#_00C76A: dw $C872, $9158, $9178, $915E
#_00C772: dw $A96E, $9174, $8878, $89EF
#_00C77A: dw $E96E, $D174, $C878, $C9EF
#_00C782: dw $A96E, $D158, $D178, $D15E
#_00C78A: dw $E96E, $880D, $8808, $A8B0
#_00C792: dw $8878, $09EF, $A8B1, $C878
#_00C79A: dw $09EF, $E8B1, $C80D, $C808
#_00C7A2: dw $E8B0, $0960, $296E, $295E
#_00C7AA: dw $14C9, $14D9, $294E, $54C9
#_00C7B2: dw $54D9, $694E, $4960, $696E
#_00C7BA: dw $695E, $288A, $288B, $A88B
#_00C7C2: dw $A88A, $0809, $09EF, $09EF
#_00C7CA: dw $8809, $080A, $0879, $8879
#_00C7D2: dw $880A, $283C, $283D, $A83D
#_00C7DA: dw $A83C, $0809, $09EF, $09EF
#_00C7E2: dw $8809, $081D, $0879, $8879
#_00C7EA: dw $881D, $288A, $288B, $A88B
#_00C7F2: dw $A88A, $0809, $09EF, $09EF
#_00C7FA: dw $8809, $080A, $0879, $8879
#_00C802: dw $880A, $0884, $0885, $8885
#_00C80A: dw $8884, $0826, $0836, $8836
#_00C812: dw $8826, $0827, $0837, $8837
#_00C81A: dw $8827, $0892, $0893, $0892
#_00C822: dw $0893, $0898, $0899, $0898
#_00C82A: dw $0899, $082D, $083D, $082D
#_00C832: dw $083D, $0884, $0885, $8885
#_00C83A: dw $8884, $0803, $0805, $8805
#_00C842: dw $8803, $0804, $0806, $8806
#_00C84A: dw $8804, $0892, $08A8, $88A8
#_00C852: dw $0893, $08BB, $08BC, $08BD
#_00C85A: dw $88BB, $08AA, $08BE, $08BF
#_00C862: dw $88AA, $0884, $0885, $8885
#_00C86A: dw $8884, $0803, $0813, $8813
#_00C872: dw $8803, $0804, $0814, $8814
#_00C87A: dw $8804

;---------------------------------------------------------------------------------------------------

#_00C87C: dw $0892, $0893, $0892, $0893
#_00C884: dw $0898, $08BC, $08BD, $0899
#_00C88C: dw $08A4, $08BE, $08BF, $08A5
#_00C894: dw $0884, $0885, $8885, $8884
#_00C89C: dw $0826, $0836, $8836, $8826
#_00C8A4: dw $0827, $0837, $8837, $8827
#_00C8AC: dw $288A, $288B, $A88B, $A88A
#_00C8B4: dw $0809, $09EF, $09EF, $8809
#_00C8BC: dw $080A, $0879, $8879, $880A
#_00C8C4: dw $283C, $283D, $A83D, $A83C
#_00C8CC: dw $0809, $09EF, $09EF, $8809
#_00C8D4: dw $081D, $0879, $8879, $881D
#_00C8DC: dw $08B2, $08B3, $88B3, $88B2
#_00C8E4: dw $0803, $0813, $8813, $8803
#_00C8EC: dw $081B, $0814, $8814, $881B
#_00C8F4: dw $08B2, $08B3, $88B3, $88B2
#_00C8FC: dw $0826, $0836, $8836, $8826
#_00C904: dw $081C, $0837, $8837, $881C
#_00C90C: dw $283C, $283D, $A83D, $A83C
#_00C914: dw $0809, $09EF, $09EF, $8809
#_00C91C: dw $081D, $0879, $8879, $881D
#_00C924: dw $08B2, $08B3, $88B3, $88B2
#_00C92C: dw $0826, $0836, $8836, $8826
#_00C934: dw $081C, $0837, $8837, $881C
#_00C93C: dw $283C, $283D, $A83D, $A83C
#_00C944: dw $0809, $09EF, $09EF, $8809
#_00C94C: dw $081D, $0879, $8879, $881D
#_00C954: dw $2884, $2885, $A885, $A884
#_00C95C: dw $0809, $09EF, $09EF, $8809
#_00C964: dw $080A, $0879, $8879, $880A
#_00C96C: dw $28A0, $28A1, $A8A1, $A8A0
#_00C974: dw $0867, $09EF, $09EF, $8867
#_00C97C: dw $0865, $085A, $885A, $8865
#_00C984: dw $297E, $A97E, $297E, $A97E
#_00C98C: dw $11AC, $09EF, $89EF, $91AC
#_00C994: dw $1179, $0879, $8879, $9179
#_00C99C: dw $1157, $1175, $9175, $9157
#_00C9A4: dw $28B2, $28B3, $A8B3, $A8B2
#_00C9AC: dw $0809, $09EF, $09EF, $8809
#_00C9B4: dw $081D, $0879, $8879, $881D
#_00C9BC: dw $480A, $4879, $C879, $C80A
#_00C9C4: dw $4809, $09EF, $09EF, $C809
#_00C9CC: dw $688A, $688B, $E88B, $E88A
#_00C9D4: dw $481D, $4879, $C879, $C81D
#_00C9DC: dw $4809, $09EF, $09EF, $C809
#_00C9E4: dw $683C, $683D, $E83D, $E83C
#_00C9EC: dw $480A, $4879, $C879, $C80A
#_00C9F4: dw $4809, $09EF, $09EF, $C809
#_00C9FC: dw $688A, $688B, $E88B, $E88A
#_00CA04: dw $4827, $4837, $C837, $C827
#_00CA0C: dw $4826, $4836, $C836, $C826
#_00CA14: dw $4884, $4885, $C885, $C884
#_00CA1C: dw $482D, $483D, $482D, $483D
#_00CA24: dw $4898, $4899, $4898, $4899
#_00CA2C: dw $4892, $4893, $4892, $4893
#_00CA34: dw $4804, $4806, $C806, $C804
#_00CA3C: dw $4803, $4805, $C805, $C803
#_00CA44: dw $4884, $4885, $C885, $C884
#_00CA4C: dw $48AA, $48BE, $48BF, $C8AA
#_00CA54: dw $48BB, $48BC, $48BD, $C8BB
#_00CA5C: dw $4892, $48A8, $C8A8, $4893
#_00CA64: dw $4804, $4814, $C814, $C804
#_00CA6C: dw $4803, $4813, $C813, $C803
#_00CA74: dw $4884, $4885, $C885, $C884

;---------------------------------------------------------------------------------------------------

#_00CA7C: dw $48A4, $48BE, $48BF, $48A5
#_00CA84: dw $4898, $48BC, $48BD, $4899
#_00CA8C: dw $4892, $4893, $4892, $4893
#_00CA94: dw $480A, $4879, $C879, $C80A
#_00CA9C: dw $4809, $09EF, $09EF, $C809
#_00CAA4: dw $688A, $688B, $E88B, $E88A
#_00CAAC: dw $4827, $4837, $C837, $C827
#_00CAB4: dw $4826, $4836, $C836, $C826
#_00CABC: dw $4884, $4885, $C885, $C884
#_00CAC4: dw $481D, $4879, $C879, $C81D
#_00CACC: dw $4809, $09EF, $09EF, $C809
#_00CAD4: dw $683C, $683D, $E83D, $E83C
#_00CADC: dw $481B, $4814, $C814, $C81B
#_00CAE4: dw $4803, $4813, $C813, $C803
#_00CAEC: dw $48B2, $48B3, $C8B3, $C8B2
#_00CAF4: dw $481C, $4837, $C837, $C81C
#_00CAFC: dw $4826, $4836, $C836, $C826
#_00CB04: dw $48B2, $48B3, $C8B3, $C8B2
#_00CB0C: dw $481D, $4879, $C879, $C81D
#_00CB14: dw $4809, $09EF, $09EF, $C809
#_00CB1C: dw $683C, $683D, $E83D, $E83C
#_00CB24: dw $481D, $4879, $C879, $C81D
#_00CB2C: dw $4809, $09EF, $09EF, $C809
#_00CB34: dw $683C, $683D, $E83D, $E83C
#_00CB3C: dw $481C, $4837, $C837, $C81C
#_00CB44: dw $4826, $4836, $C836, $C826
#_00CB4C: dw $48B2, $48B3, $C8B3, $C8B2
#_00CB54: dw $480A, $4879, $C879, $C80A
#_00CB5C: dw $4809, $09EF, $09EF, $C809
#_00CB64: dw $6884, $6885, $E885, $E884
#_00CB6C: dw $4865, $485A, $C85A, $C865
#_00CB74: dw $4867, $09EF, $09EF, $C867
#_00CB7C: dw $68A0, $68A1, $E8A1, $E8A0
#_00CB84: dw $5157, $5175, $D175, $D157
#_00CB8C: dw $5179, $4879, $C879, $D179
#_00CB94: dw $51AC, $49EF, $C9EF, $D1AC
#_00CB9C: dw $697E, $E97E, $697E, $E97E
#_00CBA4: dw $481D, $4879, $C879, $C81D
#_00CBAC: dw $4809, $09EF, $09EF, $C809
#_00CBB4: dw $68B2, $68B3, $E8B3, $E8B2
#_00CBBC: dw $2882, $0820, $0830, $2883
#_00CBC4: dw $0821, $0831, $6883, $4821
#_00CBCC: dw $4831, $6882, $4820, $4830
#_00CBD4: dw $2882, $0828, $0838, $2883
#_00CBDC: dw $0829, $0839, $6883, $4829
#_00CBE4: dw $4839, $6882, $4828, $4838
#_00CBEC: dw $28B0, $0820, $080E, $28B1
#_00CBF4: dw $0821, $0831, $68B1, $4821
#_00CBFC: dw $4831, $68B0, $4820, $480E
#_00CC04: dw $28B0, $0828, $080F, $28B1
#_00CC0C: dw $0829, $0839, $68B1, $4829
#_00CC14: dw $4839, $68B0, $4828, $480F
#_00CC1C: dw $8830, $8820, $A882, $8831
#_00CC24: dw $8821, $A883, $C831, $C821
#_00CC2C: dw $E883, $C830, $C820, $E882
#_00CC34: dw $8838, $8828, $A882, $8839
#_00CC3C: dw $8829, $A883, $C839, $C829
#_00CC44: dw $E883, $C838, $C828, $E882
#_00CC4C: dw $880E, $8820, $A8B0, $8831
#_00CC54: dw $8821, $A8B1, $C831, $C821
#_00CC5C: dw $E8B1, $C80E, $C820, $E8B0
#_00CC64: dw $880F, $8828, $A8B0, $8839
#_00CC6C: dw $8829, $A8B1, $C839, $C829
#_00CC74: dw $E8B1, $C80F, $C828, $E8B0
#_00CC7C: dw $2884, $2885, $A885, $A884
#_00CC84: dw $0822, $0832, $8832, $8822
#_00CC8C: dw $0823, $0833, $8833, $8823
#_00CC94: dw $2884, $2885, $A885, $A884
#_00CC9C: dw $082A, $083A, $883A, $882A
#_00CCA4: dw $082B, $083B, $883B, $882B
#_00CCAC: dw $28B2, $28B3, $A8B3, $A8B2
#_00CCB4: dw $0822, $0832, $8832, $8822
#_00CCBC: dw $081E, $0833, $8833, $881E
#_00CCC4: dw $28B2, $28B3, $A8B3, $A8B2
#_00CCCC: dw $082A, $083A, $883A, $882A
#_00CCD4: dw $081F, $083B, $883B, $881F
#_00CCDC: dw $4823, $4833, $C833, $C823
#_00CCE4: dw $4822, $4832, $C832, $C822
#_00CCEC: dw $6884, $6885, $E885, $E884
#_00CCF4: dw $482B, $483B, $C83B, $C82B
#_00CCFC: dw $482A, $483A, $C83A, $C82A
#_00CD04: dw $6884, $6885, $E885, $E884
#_00CD0C: dw $481E, $4833, $C833, $C81E
#_00CD14: dw $4822, $4832, $C832, $C822
#_00CD1C: dw $68B2, $68B3, $E8B3, $E8B2
#_00CD24: dw $481F, $483B, $C83B, $C81F
#_00CD2C: dw $482A, $483A, $C83A, $C82A
#_00CD34: dw $68B2, $68B3, $E8B3, $E8B2

;---------------------------------------------------------------------------------------------------
; FROM ClearExplodingWallFromTileMap
#_00CD3C: dw $8875, $8874, $8873, $8872
#_00CD44: dw $8872, $8872, $0872, $8872
#_00CD4C: dw $8872, $0873, $0874, $0875
#_00CD54: dw $8876, $8876, $8876, $8876
#_00CD5C: dw $8876, $0876, $0876, $0876
#_00CD64: dw $0876, $0876, $0876, $0876
#_00CD6C: dw $085B, $C876, $C876, $C876
#_00CD74: dw $C876, $C876, $4876, $4876
#_00CD7C: dw $4876, $4876, $4876, $4876
#_00CD84: dw $4876, $C875, $C874, $C873
#_00CD8C: dw $C872, $C872, $C872, $4872
#_00CD94: dw $4872, $4872, $4873, $4874
#_00CD9C: dw $4875

;===================================================================================================

DoorGFXDataOffset_North:
#_00CD9E: dw $2716 ; 0x00 - Normal door
#_00CDA0: dw $272E ; 0x02 - Normal door (lower layer)
#_00CDA2: dw $272E ; 0x04 - Exit (lower layer)
#_00CDA4: dw $2746 ; 0x06 - Unused cave exit (lower layer)
#_00CDA6: dw $2746 ; 0x08 - Waterfall door
#_00CDA8: dw $2746 ; 0x0A - Fancy dungeon exit
#_00CDAA: dw $2746 ; 0x0C - Fancy dungeon exit (lower layer)
#_00CDAC: dw $2746 ; 0x0E - Cave exit
#_00CDAE: dw $2746 ; 0x10 - Lit cave exit (lower layer)
#_00CDB0: dw $275E ; 0x12 - Exit marker
#_00CDB2: dw $275E ; 0x14 - Dungeon swap marker
#_00CDB4: dw $275E ; 0x16 - Layer swap marker
#_00CDB6: dw $275E ; 0x18 - Double sided shutter door
#_00CDB8: dw $2776 ; 0x1A - Eye watch door
#_00CDBA: dw $278E ; 0x1C - Small key door
#_00CDBC: dw $27A6 ; 0x1E - Big key door
#_00CDBE: dw $27BE ; 0x20 - Small key stairs (upwards)
#_00CDC0: dw $27BE ; 0x22 - Small key stairs (downwards)
#_00CDC2: dw $27D6 ; 0x24 - Small key stairs (lower layer; upwards)
#_00CDC4: dw $27D6 ; 0x26 - Small key stairs (lower layer; downwards)
#_00CDC6: dw $27EE ; 0x28 - Dash wall
#_00CDC8: dw $2806 ; 0x2A - Bombable cave exit
#_00CDCA: dw $2806 ; 0x2C - Unopenable, double-sided big key door
#_00CDCC: dw $281E ; 0x2E - Bombable door
#_00CDCE: dw $2836 ; 0x30 - Exploding wall
#_00CDD0: dw $2836 ; 0x32 - Curtain door
#_00CDD2: dw $2836 ; 0x34 - Unusable bottom-sided shutter door
#_00CDD4: dw $2836 ; 0x36 - Bottom-sided shutter door
#_00CDD6: dw $284E ; 0x38 - Top-sided shutter door
#_00CDD8: dw $2866 ; 0x3A - Unusable normal door (lower layer)
#_00CDDA: dw $2866 ; 0x3C - Unusable normal door (lower layer)
#_00CDDC: dw $2866 ; 0x3E - Unusable normal door (lower layer)
#_00CDDE: dw $2866 ; 0x40 - Normal door (lower layer; used with one-sided shutters)
#_00CDE0: dw $287E ; 0x42 - Unused double-sided shutter
#_00CDE2: dw $2896 ; 0x44 - Double-sided shutter (lower layer)
#_00CDE4: dw $28AE ; 0x46 - Explicit room door
#_00CDE6: dw $28C6 ; 0x48 - Bottom-sided shutter door (lower layer)
#_00CDE8: dw $28DE ; 0x4A - Top-sided shutter door (lower layer)
#_00CDEA: dw $28F6 ; 0x4C - Unusable normal door (lower layer)
#_00CDEC: dw $28F6 ; 0x4E - Unusable normal door (lower layer)
#_00CDEE: dw $28F6 ; 0x50 - Unusable normal door (lower layer)
#_00CDF0: dw $290E ; 0x52 - Unusable bombed-open door (lower layer)
#_00CDF2: dw $2926 ; 0x54 - Unusable glitchy door (lower layer)
#_00CDF4: dw $2958 ; 0x56 - Unusable glitchy door (lower layer)
#_00CDF6: dw $2978 ; 0x58 - Unusable normal door (lower layer)
#_00CDF8: dw $2990 ; 0x5A - Unusable glitchy/stairs up (lower layer)
#_00CDFA: dw $2990 ; 0x5C - Unusable glitchy/stairs up (lower layer)
#_00CDFC: dw $2990 ; 0x5E - Unusable glitchy/stairs up (lower layer)
#_00CDFE: dw $2990 ; 0x60 - Unusable glitchy/stairs up (lower layer)
#_00CE00: dw $29A8 ; 0x62 - Unusable glitchy/stairs down (lower layer)
#_00CE02: dw $29C0 ; 0x64 - Unusable glitchy/stairs up (lower layer)
#_00CE04: dw $29D8 ; 0x66 - Unusable glitchy/stairs down (lower layer)

;---------------------------------------------------------------------------------------------------

DoorGFXDataOffset_South:
#_00CE06: dw $29F0
#_00CE08: dw $2A08
#_00CE0A: dw $2A08
#_00CE0C: dw $2A20
#_00CE0E: dw $2A20
#_00CE10: dw $2A20
#_00CE12: dw $2A20
#_00CE14: dw $2A20
#_00CE16: dw $2A20
#_00CE18: dw $2A38
#_00CE1A: dw $2A38
#_00CE1C: dw $2A38
#_00CE1E: dw $2A38
#_00CE20: dw $2A50
#_00CE22: dw $2A68
#_00CE24: dw $2A80
#_00CE26: dw $2A98
#_00CE28: dw $2A98
#_00CE2A: dw $2A98
#_00CE2C: dw $2A98
#_00CE2E: dw $2A98
#_00CE30: dw $2AB0
#_00CE32: dw $2AC8
#_00CE34: dw $2AE0
#_00CE36: dw $2AF8
#_00CE38: dw $2AF8
#_00CE3A: dw $2AF8
#_00CE3C: dw $2AF8
#_00CE3E: dw $2B10
#_00CE40: dw $2B28
#_00CE42: dw $2B28
#_00CE44: dw $2B28
#_00CE46: dw $2B28
#_00CE48: dw $2B40
#_00CE4A: dw $2B58
#_00CE4C: dw $2B70
#_00CE4E: dw $2B88
#_00CE50: dw $2BA0
#_00CE52: dw $2BB8
#_00CE54: dw $2BB8
#_00CE56: dw $2BB8
#_00CE58: dw $2BD0
#_00CE5A: dw $2BE8
#_00CE5C: dw $2C1A
#_00CE5E: dw $2C3A
#_00CE60: dw $2C52
#_00CE62: dw $2C6A
#_00CE64: dw $2C6A

;---------------------------------------------------------------------------------------------------

DoorGFXDataOffset_West:
#_00CE66: dw $2C6A
#_00CE68: dw $2C82
#_00CE6A: dw $2C82
#_00CE6C: dw $2C9A
#_00CE6E: dw $2C9A
#_00CE70: dw $2C9A
#_00CE72: dw $2C9A
#_00CE74: dw $2C9A
#_00CE76: dw $2C9A
#_00CE78: dw $2CB2
#_00CE7A: dw $2CB2
#_00CE7C: dw $2CB2
#_00CE7E: dw $2CB2
#_00CE80: dw $2CCA
#_00CE82: dw $2CE2
#_00CE84: dw $2CFA
#_00CE86: dw $2CFA
#_00CE88: dw $2CFA
#_00CE8A: dw $2CFA
#_00CE8C: dw $2CFA
#_00CE8E: dw $2CFA
#_00CE90: dw $2D12
#_00CE92: dw $2D12
#_00CE94: dw $2D2A
#_00CE96: dw $2D42
#_00CE98: dw $2D42
#_00CE9A: dw $2D42
#_00CE9C: dw $2D42
#_00CE9E: dw $2D5A
#_00CEA0: dw $2D72
#_00CEA2: dw $2D72
#_00CEA4: dw $2D72
#_00CEA6: dw $2D72
#_00CEA8: dw $2D8A
#_00CEAA: dw $2DA2
#_00CEAC: dw $2DBA
#_00CEAE: dw $2DD2
#_00CEB0: dw $2DEA
#_00CEB2: dw $2E02
#_00CEB4: dw $2E02
#_00CEB6: dw $2E02
#_00CEB8: dw $2E1A
#_00CEBA: dw $2E32
#_00CEBC: dw $2E32
#_00CEBE: dw $2E52
#_00CEC0: dw $2E6A
#_00CEC2: dw $2E6A
#_00CEC4: dw $2E6A

;---------------------------------------------------------------------------------------------------

DoorGFXDataOffset_East:
#_00CEC6: dw $2E6A
#_00CEC8: dw $2E82
#_00CECA: dw $2E82
#_00CECC: dw $2E9A
#_00CECE: dw $2E9A
#_00CED0: dw $2E9A
#_00CED2: dw $2E9A
#_00CED4: dw $2E9A
#_00CED6: dw $2E9A
#_00CED8: dw $2EB2
#_00CEDA: dw $2EB2
#_00CEDC: dw $2EB2
#_00CEDE: dw $2EB2
#_00CEE0: dw $2ECA
#_00CEE2: dw $2EE2
#_00CEE4: dw $2EFA
#_00CEE6: dw $2EFA
#_00CEE8: dw $2EFA
#_00CEEA: dw $2EFA
#_00CEEC: dw $2EFA
#_00CEEE: dw $2EFA
#_00CEF0: dw $2F12
#_00CEF2: dw $2F12
#_00CEF4: dw $2F2A
#_00CEF6: dw $2F42
#_00CEF8: dw $2F42
#_00CEFA: dw $2F42
#_00CEFC: dw $2F42
#_00CEFE: dw $2F5A
#_00CF00: dw $2F72
#_00CF02: dw $2F72
#_00CF04: dw $2F72
#_00CF06: dw $2F72
#_00CF08: dw $2F8A
#_00CF0A: dw $2FA2
#_00CF0C: dw $2FBA
#_00CF0E: dw $2FD2
#_00CF10: dw $2FEA
#_00CF12: dw $3002
#_00CF14: dw $3002
#_00CF16: dw $3002
#_00CF18: dw $301A
#_00CF1A: dw $3032
#_00CF1C: dw $3032
#_00CF1E: dw $3052
#_00CF20: dw $306A
#_00CF22: dw $306A

;===================================================================================================

DoorAnimGFXDataOffset_North:
#_00CF24: dw $306A ; Lower layer shutter
#_00CF26: dw $306A ; Key doors
#_00CF28: dw $3082 ; Shutters
#_00CF2A: dw $309A ; Lower layer key door

DoorAnimGFXDataOffset_South:
#_00CF2C: dw $30B2 ; Lower layer shutter
#_00CF2E: dw $30CA ; Key doors
#_00CF30: dw $30E2 ; Shutters
#_00CF32: dw $30FA ; Lower layer key door

DoorAnimGFXDataOffset_West:
#_00CF34: dw $3112 ; Lower layer shutter
#_00CF36: dw $312A ; Key doors
#_00CF38: dw $3142 ; Shutters
#_00CF3A: dw $315A ; Lower layer key door

DoorAnimGFXDataOffset_East:
#_00CF3C: dw $3172 ; Lower layer shutter
#_00CF3E: dw $318A ; Key doors
#_00CF40: dw $31A2 ; Shutters
#_00CF42: dw $31BA ; Lower layer key door
#_00CF44: dw $31D2 ; Unused cool looking shutter

;===================================================================================================
; FREE ROM: 0x7A
;===================================================================================================
NULL_00CF46:
#_00CF46: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_00CF4E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_00CF56: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_00CF5E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_00CF66: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_00CF6E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_00CF76: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_00CF7E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_00CF86: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_00CF8E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_00CF96: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_00CF9E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_00CFA6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_00CFAE: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_00CFB6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_00CFBE: db $FF, $FF

;===================================================================================================
; GFX sheet pointers
;===================================================================================================
GFXSheetPointers:

.background_bank
#_00CFC0: db GFX_00>>16
#_00CFC1: db GFX_01>>16
#_00CFC2: db GFX_02>>16
#_00CFC3: db GFX_03>>16
#_00CFC4: db GFX_04>>16
#_00CFC5: db GFX_05>>16
#_00CFC6: db GFX_06>>16
#_00CFC7: db GFX_07>>16
#_00CFC8: db GFX_08>>16
#_00CFC9: db GFX_09>>16
#_00CFCA: db GFX_0A>>16
#_00CFCB: db GFX_0B>>16
#_00CFCC: db GFX_0C>>16
#_00CFCD: db GFX_0D>>16
#_00CFCE: db GFX_0E>>16
#_00CFCF: db GFX_0F>>16
#_00CFD0: db GFX_10>>16
#_00CFD1: db GFX_11>>16
#_00CFD2: db GFX_12>>16
#_00CFD3: db GFX_13>>16
#_00CFD4: db GFX_14>>16
#_00CFD5: db GFX_15>>16
#_00CFD6: db GFX_16>>16
#_00CFD7: db GFX_17>>16
#_00CFD8: db GFX_18>>16
#_00CFD9: db GFX_19>>16
#_00CFDA: db GFX_1A>>16
#_00CFDB: db GFX_1B>>16
#_00CFDC: db GFX_1C>>16
#_00CFDD: db GFX_1D>>16
#_00CFDE: db GFX_1E>>16
#_00CFDF: db GFX_1F>>16
#_00CFE0: db GFX_20>>16
#_00CFE1: db GFX_21>>16
#_00CFE2: db GFX_22>>16
#_00CFE3: db GFX_23>>16
#_00CFE4: db GFX_24>>16
#_00CFE5: db GFX_25>>16
#_00CFE6: db GFX_26>>16
#_00CFE7: db GFX_27>>16
#_00CFE8: db GFX_28>>16
#_00CFE9: db GFX_29>>16
#_00CFEA: db GFX_2A>>16
#_00CFEB: db GFX_2B>>16
#_00CFEC: db GFX_2C>>16
#_00CFED: db GFX_2D>>16
#_00CFEE: db GFX_2E>>16
#_00CFEF: db GFX_2F>>16
#_00CFF0: db GFX_30>>16
#_00CFF1: db GFX_31>>16
#_00CFF2: db GFX_32>>16
#_00CFF3: db GFX_33>>16
#_00CFF4: db GFX_34>>16
#_00CFF5: db GFX_35>>16
#_00CFF6: db GFX_36>>16
#_00CFF7: db GFX_37>>16
#_00CFF8: db GFX_38>>16
#_00CFF9: db GFX_39>>16
#_00CFFA: db GFX_3A>>16
#_00CFFB: db GFX_3B>>16
#_00CFFC: db GFX_3C>>16
#_00CFFD: db GFX_3D>>16
#_00CFFE: db GFX_3E>>16
#_00CFFF: db GFX_3F>>16
#_00D000: db GFX_40>>16
#_00D001: db GFX_41>>16
#_00D002: db GFX_42>>16
#_00D003: db GFX_43>>16
#_00D004: db GFX_44>>16
#_00D005: db GFX_45>>16
#_00D006: db GFX_46>>16
#_00D007: db GFX_47>>16
#_00D008: db GFX_48>>16
#_00D009: db GFX_49>>16
#_00D00A: db GFX_4A>>16
#_00D00B: db GFX_4B>>16
#_00D00C: db GFX_4C>>16
#_00D00D: db GFX_4D>>16
#_00D00E: db GFX_4E>>16
#_00D00F: db GFX_4F>>16
#_00D010: db GFX_50>>16
#_00D011: db GFX_51>>16
#_00D012: db GFX_52>>16
#_00D013: db GFX_53>>16
#_00D014: db GFX_54>>16
#_00D015: db GFX_55>>16
#_00D016: db GFX_56>>16
#_00D017: db GFX_57>>16
#_00D018: db GFX_58>>16
#_00D019: db GFX_59>>16
#_00D01A: db GFX_5A>>16
#_00D01B: db GFX_5B>>16
#_00D01C: db GFX_5C>>16
#_00D01D: db GFX_5D>>16
#_00D01E: db GFX_5E>>16
#_00D01F: db GFX_5F>>16
#_00D020: db GFX_60>>16
#_00D021: db GFX_61>>16
#_00D022: db GFX_62>>16
#_00D023: db GFX_63>>16
#_00D024: db GFX_64>>16
#_00D025: db GFX_65>>16
#_00D026: db GFX_66>>16
#_00D027: db GFX_67>>16
#_00D028: db GFX_68>>16
#_00D029: db GFX_69>>16
#_00D02A: db GFX_6A>>16
#_00D02B: db GFX_6B>>16
#_00D02C: db GFX_6C>>16
#_00D02D: db GFX_6D>>16
#_00D02E: db GFX_6E>>16
#_00D02F: db GFX_6F>>16
#_00D030: db GFX_70>>16
#_00D031: db GFX_71>>16
#_00D032: db GFX_72>>16

;---------------------------------------------------------------------------------------------------

.sprite_bank
#_00D033: db GFX_73>>16 ; 0x00
#_00D034: db GFX_74>>16 ; 0x01
#_00D035: db GFX_75>>16 ; 0x02
#_00D036: db GFX_76>>16 ; 0x03
#_00D037: db GFX_77>>16 ; 0x04
#_00D038: db GFX_78>>16 ; 0x05
#_00D039: db GFX_79>>16 ; 0x06
#_00D03A: db GFX_7A>>16 ; 0x07
#_00D03B: db GFX_7B>>16 ; 0x08
#_00D03C: db GFX_7C>>16 ; 0x09
#_00D03D: db GFX_7D>>16 ; 0x0A
#_00D03E: db GFX_7E>>16 ; 0x0B
#_00D03F: db GFX_7F>>16 ; 0x0C
#_00D040: db GFX_80>>16 ; 0x0D
#_00D041: db GFX_81>>16 ; 0x0E
#_00D042: db GFX_82>>16 ; 0x0F
#_00D043: db GFX_83>>16 ; 0x10
#_00D044: db GFX_84>>16 ; 0x11
#_00D045: db GFX_85>>16 ; 0x12
#_00D046: db GFX_86>>16 ; 0x13
#_00D047: db GFX_87>>16 ; 0x14
#_00D048: db GFX_88>>16 ; 0x15
#_00D049: db GFX_89>>16 ; 0x16
#_00D04A: db GFX_8A>>16 ; 0x17
#_00D04B: db GFX_8B>>16 ; 0x18
#_00D04C: db GFX_8C>>16 ; 0x19
#_00D04D: db GFX_8D>>16 ; 0x1A
#_00D04E: db GFX_8E>>16 ; 0x1B
#_00D04F: db GFX_8F>>16 ; 0x1C
#_00D050: db GFX_90>>16 ; 0x1D
#_00D051: db GFX_91>>16 ; 0x1E
#_00D052: db GFX_92>>16 ; 0x1F
#_00D053: db GFX_93>>16 ; 0x20
#_00D054: db GFX_94>>16 ; 0x21
#_00D055: db GFX_95>>16 ; 0x22
#_00D056: db GFX_96>>16 ; 0x23
#_00D057: db GFX_97>>16 ; 0x24
#_00D058: db GFX_98>>16 ; 0x25
#_00D059: db GFX_99>>16 ; 0x26
#_00D05A: db GFX_9A>>16 ; 0x27
#_00D05B: db GFX_9B>>16 ; 0x28
#_00D05C: db GFX_9C>>16 ; 0x29
#_00D05D: db GFX_9D>>16 ; 0x2A
#_00D05E: db GFX_9E>>16 ; 0x2B
#_00D05F: db GFX_9F>>16 ; 0x2C
#_00D060: db GFX_A0>>16 ; 0x2D
#_00D061: db GFX_A1>>16 ; 0x2E
#_00D062: db GFX_A2>>16 ; 0x2F
#_00D063: db GFX_A3>>16 ; 0x30
#_00D064: db GFX_A4>>16 ; 0x31
#_00D065: db GFX_A5>>16 ; 0x32
#_00D066: db GFX_A6>>16 ; 0x33
#_00D067: db GFX_A7>>16 ; 0x34
#_00D068: db GFX_A8>>16 ; 0x35
#_00D069: db GFX_A9>>16 ; 0x36
#_00D06A: db GFX_AA>>16 ; 0x37
#_00D06B: db GFX_AB>>16 ; 0x38
#_00D06C: db GFX_AC>>16 ; 0x39
#_00D06D: db GFX_AD>>16 ; 0x3A
#_00D06E: db GFX_AE>>16 ; 0x3B
#_00D06F: db GFX_AF>>16 ; 0x3C
#_00D070: db GFX_B0>>16 ; 0x3D
#_00D071: db GFX_B1>>16 ; 0x3E
#_00D072: db GFX_B2>>16 ; 0x3F
#_00D073: db GFX_B3>>16 ; 0x40
#_00D074: db GFX_B4>>16 ; 0x41
#_00D075: db GFX_B5>>16 ; 0x42
#_00D076: db GFX_B6>>16 ; 0x43
#_00D077: db GFX_B7>>16 ; 0x44
#_00D078: db GFX_B8>>16 ; 0x45
#_00D079: db GFX_B9>>16 ; 0x46
#_00D07A: db GFX_BA>>16 ; 0x47
#_00D07B: db GFX_BB>>16 ; 0x48
#_00D07C: db GFX_BC>>16 ; 0x49
#_00D07D: db GFX_BD>>16 ; 0x4A
#_00D07E: db GFX_BE>>16 ; 0x4B
#_00D07F: db GFX_BF>>16 ; 0x4C
#_00D080: db GFX_C0>>16 ; 0x4D
#_00D081: db GFX_C1>>16 ; 0x4E
#_00D082: db GFX_C2>>16 ; 0x4F
#_00D083: db GFX_C3>>16 ; 0x50
#_00D084: db GFX_C4>>16 ; 0x51
#_00D085: db GFX_C5>>16 ; 0x52
#_00D086: db GFX_C6>>16 ; 0x53
#_00D087: db GFX_C7>>16 ; 0x54
#_00D088: db GFX_C8>>16 ; 0x55
#_00D089: db GFX_C9>>16 ; 0x56
#_00D08A: db GFX_CA>>16 ; 0x57
#_00D08B: db GFX_CB>>16 ; 0x58
#_00D08C: db GFX_CC>>16 ; 0x59
#_00D08D: db GFX_CD>>16 ; 0x5A
#_00D08E: db GFX_CE>>16 ; 0x5B
#_00D08F: db GFX_CF>>16 ; 0x5C
#_00D090: db GFX_D0>>16 ; 0x5D
#_00D091: db GFX_D1>>16 ; 0x5E
#_00D092: db GFX_D2>>16 ; 0x5F
#_00D093: db GFX_D3>>16 ; 0x60
#_00D094: db GFX_D4>>16 ; 0x61
#_00D095: db GFX_D5>>16 ; 0x62
#_00D096: db GFX_D6>>16 ; 0x63
#_00D097: db GFX_D7>>16 ; 0x64
#_00D098: db GFX_D8>>16 ; 0x65
#_00D099: db GFX_D9>>16 ; 0x66
#_00D09A: db GFX_DA>>16 ; 0x67
#_00D09B: db GFX_DB>>16 ; 0x68
#_00D09C: db GFX_DC>>16 ; 0x69
#_00D09D: db GFX_DD>>16 ; 0x6A
#_00D09E: db GFX_DE>>16 ; 0x6B

;---------------------------------------------------------------------------------------------------

.background_high
#_00D09F: db GFX_00>>8
#_00D0A0: db GFX_01>>8
#_00D0A1: db GFX_02>>8
#_00D0A2: db GFX_03>>8
#_00D0A3: db GFX_04>>8
#_00D0A4: db GFX_05>>8
#_00D0A5: db GFX_06>>8
#_00D0A6: db GFX_07>>8
#_00D0A7: db GFX_08>>8
#_00D0A8: db GFX_09>>8
#_00D0A9: db GFX_0A>>8
#_00D0AA: db GFX_0B>>8
#_00D0AB: db GFX_0C>>8
#_00D0AC: db GFX_0D>>8
#_00D0AD: db GFX_0E>>8
#_00D0AE: db GFX_0F>>8
#_00D0AF: db GFX_10>>8
#_00D0B0: db GFX_11>>8
#_00D0B1: db GFX_12>>8
#_00D0B2: db GFX_13>>8
#_00D0B3: db GFX_14>>8
#_00D0B4: db GFX_15>>8
#_00D0B5: db GFX_16>>8
#_00D0B6: db GFX_17>>8
#_00D0B7: db GFX_18>>8
#_00D0B8: db GFX_19>>8
#_00D0B9: db GFX_1A>>8
#_00D0BA: db GFX_1B>>8
#_00D0BB: db GFX_1C>>8
#_00D0BC: db GFX_1D>>8
#_00D0BD: db GFX_1E>>8
#_00D0BE: db GFX_1F>>8
#_00D0BF: db GFX_20>>8
#_00D0C0: db GFX_21>>8
#_00D0C1: db GFX_22>>8
#_00D0C2: db GFX_23>>8
#_00D0C3: db GFX_24>>8
#_00D0C4: db GFX_25>>8
#_00D0C5: db GFX_26>>8
#_00D0C6: db GFX_27>>8
#_00D0C7: db GFX_28>>8
#_00D0C8: db GFX_29>>8
#_00D0C9: db GFX_2A>>8
#_00D0CA: db GFX_2B>>8
#_00D0CB: db GFX_2C>>8
#_00D0CC: db GFX_2D>>8
#_00D0CD: db GFX_2E>>8
#_00D0CE: db GFX_2F>>8
#_00D0CF: db GFX_30>>8
#_00D0D0: db GFX_31>>8
#_00D0D1: db GFX_32>>8
#_00D0D2: db GFX_33>>8
#_00D0D3: db GFX_34>>8
#_00D0D4: db GFX_35>>8
#_00D0D5: db GFX_36>>8
#_00D0D6: db GFX_37>>8
#_00D0D7: db GFX_38>>8
#_00D0D8: db GFX_39>>8
#_00D0D9: db GFX_3A>>8
#_00D0DA: db GFX_3B>>8
#_00D0DB: db GFX_3C>>8
#_00D0DC: db GFX_3D>>8
#_00D0DD: db GFX_3E>>8
#_00D0DE: db GFX_3F>>8
#_00D0DF: db GFX_40>>8
#_00D0E0: db GFX_41>>8
#_00D0E1: db GFX_42>>8
#_00D0E2: db GFX_43>>8
#_00D0E3: db GFX_44>>8
#_00D0E4: db GFX_45>>8
#_00D0E5: db GFX_46>>8
#_00D0E6: db GFX_47>>8
#_00D0E7: db GFX_48>>8
#_00D0E8: db GFX_49>>8
#_00D0E9: db GFX_4A>>8
#_00D0EA: db GFX_4B>>8
#_00D0EB: db GFX_4C>>8
#_00D0EC: db GFX_4D>>8
#_00D0ED: db GFX_4E>>8
#_00D0EE: db GFX_4F>>8
#_00D0EF: db GFX_50>>8
#_00D0F0: db GFX_51>>8
#_00D0F1: db GFX_52>>8
#_00D0F2: db GFX_53>>8
#_00D0F3: db GFX_54>>8
#_00D0F4: db GFX_55>>8
#_00D0F5: db GFX_56>>8
#_00D0F6: db GFX_57>>8
#_00D0F7: db GFX_58>>8
#_00D0F8: db GFX_59>>8
#_00D0F9: db GFX_5A>>8
#_00D0FA: db GFX_5B>>8
#_00D0FB: db GFX_5C>>8
#_00D0FC: db GFX_5D>>8
#_00D0FD: db GFX_5E>>8
#_00D0FE: db GFX_5F>>8
#_00D0FF: db GFX_60>>8
#_00D100: db GFX_61>>8
#_00D101: db GFX_62>>8
#_00D102: db GFX_63>>8
#_00D103: db GFX_64>>8
#_00D104: db GFX_65>>8
#_00D105: db GFX_66>>8
#_00D106: db GFX_67>>8
#_00D107: db GFX_68>>8
#_00D108: db GFX_69>>8
#_00D109: db GFX_6A>>8
#_00D10A: db GFX_6B>>8
#_00D10B: db GFX_6C>>8
#_00D10C: db GFX_6D>>8
#_00D10D: db GFX_6E>>8
#_00D10E: db GFX_6F>>8
#_00D10F: db GFX_70>>8
#_00D110: db GFX_71>>8
#_00D111: db GFX_72>>8

;---------------------------------------------------------------------------------------------------

.sprite_high
#_00D112: db GFX_73>>8 ; 0x00
#_00D113: db GFX_74>>8 ; 0x01
#_00D114: db GFX_75>>8 ; 0x02
#_00D115: db GFX_76>>8 ; 0x03
#_00D116: db GFX_77>>8 ; 0x04
#_00D117: db GFX_78>>8 ; 0x05
#_00D118: db GFX_79>>8 ; 0x06
#_00D119: db GFX_7A>>8 ; 0x07
#_00D11A: db GFX_7B>>8 ; 0x08
#_00D11B: db GFX_7C>>8 ; 0x09
#_00D11C: db GFX_7D>>8 ; 0x0A
#_00D11D: db GFX_7E>>8 ; 0x0B
#_00D11E: db GFX_7F>>8 ; 0x0C
#_00D11F: db GFX_80>>8 ; 0x0D
#_00D120: db GFX_81>>8 ; 0x0E
#_00D121: db GFX_82>>8 ; 0x0F
#_00D122: db GFX_83>>8 ; 0x10
#_00D123: db GFX_84>>8 ; 0x11
#_00D124: db GFX_85>>8 ; 0x12
#_00D125: db GFX_86>>8 ; 0x13
#_00D126: db GFX_87>>8 ; 0x14
#_00D127: db GFX_88>>8 ; 0x15
#_00D128: db GFX_89>>8 ; 0x16
#_00D129: db GFX_8A>>8 ; 0x17
#_00D12A: db GFX_8B>>8 ; 0x18
#_00D12B: db GFX_8C>>8 ; 0x19
#_00D12C: db GFX_8D>>8 ; 0x1A
#_00D12D: db GFX_8E>>8 ; 0x1B
#_00D12E: db GFX_8F>>8 ; 0x1C
#_00D12F: db GFX_90>>8 ; 0x1D
#_00D130: db GFX_91>>8 ; 0x1E
#_00D131: db GFX_92>>8 ; 0x1F
#_00D132: db GFX_93>>8 ; 0x20
#_00D133: db GFX_94>>8 ; 0x21
#_00D134: db GFX_95>>8 ; 0x22
#_00D135: db GFX_96>>8 ; 0x23
#_00D136: db GFX_97>>8 ; 0x24
#_00D137: db GFX_98>>8 ; 0x25
#_00D138: db GFX_99>>8 ; 0x26
#_00D139: db GFX_9A>>8 ; 0x27
#_00D13A: db GFX_9B>>8 ; 0x28
#_00D13B: db GFX_9C>>8 ; 0x29
#_00D13C: db GFX_9D>>8 ; 0x2A
#_00D13D: db GFX_9E>>8 ; 0x2B
#_00D13E: db GFX_9F>>8 ; 0x2C
#_00D13F: db GFX_A0>>8 ; 0x2D
#_00D140: db GFX_A1>>8 ; 0x2E
#_00D141: db GFX_A2>>8 ; 0x2F
#_00D142: db GFX_A3>>8 ; 0x30
#_00D143: db GFX_A4>>8 ; 0x31
#_00D144: db GFX_A5>>8 ; 0x32
#_00D145: db GFX_A6>>8 ; 0x33
#_00D146: db GFX_A7>>8 ; 0x34
#_00D147: db GFX_A8>>8 ; 0x35
#_00D148: db GFX_A9>>8 ; 0x36
#_00D149: db GFX_AA>>8 ; 0x37
#_00D14A: db GFX_AB>>8 ; 0x38
#_00D14B: db GFX_AC>>8 ; 0x39
#_00D14C: db GFX_AD>>8 ; 0x3A
#_00D14D: db GFX_AE>>8 ; 0x3B
#_00D14E: db GFX_AF>>8 ; 0x3C
#_00D14F: db GFX_B0>>8 ; 0x3D
#_00D150: db GFX_B1>>8 ; 0x3E
#_00D151: db GFX_B2>>8 ; 0x3F
#_00D152: db GFX_B3>>8 ; 0x40
#_00D153: db GFX_B4>>8 ; 0x41
#_00D154: db GFX_B5>>8 ; 0x42
#_00D155: db GFX_B6>>8 ; 0x43
#_00D156: db GFX_B7>>8 ; 0x44
#_00D157: db GFX_B8>>8 ; 0x45
#_00D158: db GFX_B9>>8 ; 0x46
#_00D159: db GFX_BA>>8 ; 0x47
#_00D15A: db GFX_BB>>8 ; 0x48
#_00D15B: db GFX_BC>>8 ; 0x49
#_00D15C: db GFX_BD>>8 ; 0x4A
#_00D15D: db GFX_BE>>8 ; 0x4B
#_00D15E: db GFX_BF>>8 ; 0x4C
#_00D15F: db GFX_C0>>8 ; 0x4D
#_00D160: db GFX_C1>>8 ; 0x4E
#_00D161: db GFX_C2>>8 ; 0x4F
#_00D162: db GFX_C3>>8 ; 0x50
#_00D163: db GFX_C4>>8 ; 0x51
#_00D164: db GFX_C5>>8 ; 0x52
#_00D165: db GFX_C6>>8 ; 0x53
#_00D166: db GFX_C7>>8 ; 0x54
#_00D167: db GFX_C8>>8 ; 0x55
#_00D168: db GFX_C9>>8 ; 0x56
#_00D169: db GFX_CA>>8 ; 0x57
#_00D16A: db GFX_CB>>8 ; 0x58
#_00D16B: db GFX_CC>>8 ; 0x59
#_00D16C: db GFX_CD>>8 ; 0x5A
#_00D16D: db GFX_CE>>8 ; 0x5B
#_00D16E: db GFX_CF>>8 ; 0x5C
#_00D16F: db GFX_D0>>8 ; 0x5D
#_00D170: db GFX_D1>>8 ; 0x5E
#_00D171: db GFX_D2>>8 ; 0x5F
#_00D172: db GFX_D3>>8 ; 0x60
#_00D173: db GFX_D4>>8 ; 0x61
#_00D174: db GFX_D5>>8 ; 0x62
#_00D175: db GFX_D6>>8 ; 0x63
#_00D176: db GFX_D7>>8 ; 0x64
#_00D177: db GFX_D8>>8 ; 0x65
#_00D178: db GFX_D9>>8 ; 0x66
#_00D179: db GFX_DA>>8 ; 0x67
#_00D17A: db GFX_DB>>8 ; 0x68
#_00D17B: db GFX_DC>>8 ; 0x69
#_00D17C: db GFX_DD>>8 ; 0x6A
#_00D17D: db GFX_DE>>8 ; 0x6B

;---------------------------------------------------------------------------------------------------

.background_low
#_00D17E: db GFX_00>>0
#_00D17F: db GFX_01>>0
#_00D180: db GFX_02>>0
#_00D181: db GFX_03>>0
#_00D182: db GFX_04>>0
#_00D183: db GFX_05>>0
#_00D184: db GFX_06>>0
#_00D185: db GFX_07>>0
#_00D186: db GFX_08>>0
#_00D187: db GFX_09>>0
#_00D188: db GFX_0A>>0
#_00D189: db GFX_0B>>0
#_00D18A: db GFX_0C>>0
#_00D18B: db GFX_0D>>0
#_00D18C: db GFX_0E>>0
#_00D18D: db GFX_0F>>0
#_00D18E: db GFX_10>>0
#_00D18F: db GFX_11>>0
#_00D190: db GFX_12>>0
#_00D191: db GFX_13>>0
#_00D192: db GFX_14>>0
#_00D193: db GFX_15>>0
#_00D194: db GFX_16>>0
#_00D195: db GFX_17>>0
#_00D196: db GFX_18>>0
#_00D197: db GFX_19>>0
#_00D198: db GFX_1A>>0
#_00D199: db GFX_1B>>0
#_00D19A: db GFX_1C>>0
#_00D19B: db GFX_1D>>0
#_00D19C: db GFX_1E>>0
#_00D19D: db GFX_1F>>0
#_00D19E: db GFX_20>>0
#_00D19F: db GFX_21>>0
#_00D1A0: db GFX_22>>0
#_00D1A1: db GFX_23>>0
#_00D1A2: db GFX_24>>0
#_00D1A3: db GFX_25>>0
#_00D1A4: db GFX_26>>0
#_00D1A5: db GFX_27>>0
#_00D1A6: db GFX_28>>0
#_00D1A7: db GFX_29>>0
#_00D1A8: db GFX_2A>>0
#_00D1A9: db GFX_2B>>0
#_00D1AA: db GFX_2C>>0
#_00D1AB: db GFX_2D>>0
#_00D1AC: db GFX_2E>>0
#_00D1AD: db GFX_2F>>0
#_00D1AE: db GFX_30>>0
#_00D1AF: db GFX_31>>0
#_00D1B0: db GFX_32>>0
#_00D1B1: db GFX_33>>0
#_00D1B2: db GFX_34>>0
#_00D1B3: db GFX_35>>0
#_00D1B4: db GFX_36>>0
#_00D1B5: db GFX_37>>0
#_00D1B6: db GFX_38>>0
#_00D1B7: db GFX_39>>0
#_00D1B8: db GFX_3A>>0
#_00D1B9: db GFX_3B>>0
#_00D1BA: db GFX_3C>>0
#_00D1BB: db GFX_3D>>0
#_00D1BC: db GFX_3E>>0
#_00D1BD: db GFX_3F>>0
#_00D1BE: db GFX_40>>0
#_00D1BF: db GFX_41>>0
#_00D1C0: db GFX_42>>0
#_00D1C1: db GFX_43>>0
#_00D1C2: db GFX_44>>0
#_00D1C3: db GFX_45>>0
#_00D1C4: db GFX_46>>0
#_00D1C5: db GFX_47>>0
#_00D1C6: db GFX_48>>0
#_00D1C7: db GFX_49>>0
#_00D1C8: db GFX_4A>>0
#_00D1C9: db GFX_4B>>0
#_00D1CA: db GFX_4C>>0
#_00D1CB: db GFX_4D>>0
#_00D1CC: db GFX_4E>>0
#_00D1CD: db GFX_4F>>0
#_00D1CE: db GFX_50>>0
#_00D1CF: db GFX_51>>0
#_00D1D0: db GFX_52>>0
#_00D1D1: db GFX_53>>0
#_00D1D2: db GFX_54>>0
#_00D1D3: db GFX_55>>0
#_00D1D4: db GFX_56>>0
#_00D1D5: db GFX_57>>0
#_00D1D6: db GFX_58>>0
#_00D1D7: db GFX_59>>0
#_00D1D8: db GFX_5A>>0
#_00D1D9: db GFX_5B>>0
#_00D1DA: db GFX_5C>>0
#_00D1DB: db GFX_5D>>0
#_00D1DC: db GFX_5E>>0
#_00D1DD: db GFX_5F>>0
#_00D1DE: db GFX_60>>0
#_00D1DF: db GFX_61>>0
#_00D1E0: db GFX_62>>0
#_00D1E1: db GFX_63>>0
#_00D1E2: db GFX_64>>0
#_00D1E3: db GFX_65>>0
#_00D1E4: db GFX_66>>0
#_00D1E5: db GFX_67>>0
#_00D1E6: db GFX_68>>0
#_00D1E7: db GFX_69>>0
#_00D1E8: db GFX_6A>>0
#_00D1E9: db GFX_6B>>0
#_00D1EA: db GFX_6C>>0
#_00D1EB: db GFX_6D>>0
#_00D1EC: db GFX_6E>>0
#_00D1ED: db GFX_6F>>0
#_00D1EE: db GFX_70>>0
#_00D1EF: db GFX_71>>0
#_00D1F0: db GFX_72>>0

;---------------------------------------------------------------------------------------------------

.sprite_low
#_00D1F1: db GFX_73>>0 ; 0x00
#_00D1F2: db GFX_74>>0 ; 0x01
#_00D1F3: db GFX_75>>0 ; 0x02
#_00D1F4: db GFX_76>>0 ; 0x03
#_00D1F5: db GFX_77>>0 ; 0x04
#_00D1F6: db GFX_78>>0 ; 0x05
#_00D1F7: db GFX_79>>0 ; 0x06
#_00D1F8: db GFX_7A>>0 ; 0x07
#_00D1F9: db GFX_7B>>0 ; 0x08
#_00D1FA: db GFX_7C>>0 ; 0x09
#_00D1FB: db GFX_7D>>0 ; 0x0A
#_00D1FC: db GFX_7E>>0 ; 0x0B
#_00D1FD: db GFX_7F>>0 ; 0x0C
#_00D1FE: db GFX_80>>0 ; 0x0D
#_00D1FF: db GFX_81>>0 ; 0x0E
#_00D200: db GFX_82>>0 ; 0x0F
#_00D201: db GFX_83>>0 ; 0x10
#_00D202: db GFX_84>>0 ; 0x11
#_00D203: db GFX_85>>0 ; 0x12
#_00D204: db GFX_86>>0 ; 0x13
#_00D205: db GFX_87>>0 ; 0x14
#_00D206: db GFX_88>>0 ; 0x15
#_00D207: db GFX_89>>0 ; 0x16
#_00D208: db GFX_8A>>0 ; 0x17
#_00D209: db GFX_8B>>0 ; 0x18
#_00D20A: db GFX_8C>>0 ; 0x19
#_00D20B: db GFX_8D>>0 ; 0x1A
#_00D20C: db GFX_8E>>0 ; 0x1B
#_00D20D: db GFX_8F>>0 ; 0x1C
#_00D20E: db GFX_90>>0 ; 0x1D
#_00D20F: db GFX_91>>0 ; 0x1E
#_00D210: db GFX_92>>0 ; 0x1F
#_00D211: db GFX_93>>0 ; 0x20
#_00D212: db GFX_94>>0 ; 0x21
#_00D213: db GFX_95>>0 ; 0x22
#_00D214: db GFX_96>>0 ; 0x23
#_00D215: db GFX_97>>0 ; 0x24
#_00D216: db GFX_98>>0 ; 0x25
#_00D217: db GFX_99>>0 ; 0x26
#_00D218: db GFX_9A>>0 ; 0x27
#_00D219: db GFX_9B>>0 ; 0x28
#_00D21A: db GFX_9C>>0 ; 0x29
#_00D21B: db GFX_9D>>0 ; 0x2A
#_00D21C: db GFX_9E>>0 ; 0x2B
#_00D21D: db GFX_9F>>0 ; 0x2C
#_00D21E: db GFX_A0>>0 ; 0x2D
#_00D21F: db GFX_A1>>0 ; 0x2E
#_00D220: db GFX_A2>>0 ; 0x2F
#_00D221: db GFX_A3>>0 ; 0x30
#_00D222: db GFX_A4>>0 ; 0x31
#_00D223: db GFX_A5>>0 ; 0x32
#_00D224: db GFX_A6>>0 ; 0x33
#_00D225: db GFX_A7>>0 ; 0x34
#_00D226: db GFX_A8>>0 ; 0x35
#_00D227: db GFX_A9>>0 ; 0x36
#_00D228: db GFX_AA>>0 ; 0x37
#_00D229: db GFX_AB>>0 ; 0x38
#_00D22A: db GFX_AC>>0 ; 0x39
#_00D22B: db GFX_AD>>0 ; 0x3A
#_00D22C: db GFX_AE>>0 ; 0x3B
#_00D22D: db GFX_AF>>0 ; 0x3C
#_00D22E: db GFX_B0>>0 ; 0x3D
#_00D22F: db GFX_B1>>0 ; 0x3E
#_00D230: db GFX_B2>>0 ; 0x3F
#_00D231: db GFX_B3>>0 ; 0x40
#_00D232: db GFX_B4>>0 ; 0x41
#_00D233: db GFX_B5>>0 ; 0x42
#_00D234: db GFX_B6>>0 ; 0x43
#_00D235: db GFX_B7>>0 ; 0x44
#_00D236: db GFX_B8>>0 ; 0x45
#_00D237: db GFX_B9>>0 ; 0x46
#_00D238: db GFX_BA>>0 ; 0x47
#_00D239: db GFX_BB>>0 ; 0x48
#_00D23A: db GFX_BC>>0 ; 0x49
#_00D23B: db GFX_BD>>0 ; 0x4A
#_00D23C: db GFX_BE>>0 ; 0x4B
#_00D23D: db GFX_BF>>0 ; 0x4C
#_00D23E: db GFX_C0>>0 ; 0x4D
#_00D23F: db GFX_C1>>0 ; 0x4E
#_00D240: db GFX_C2>>0 ; 0x4F
#_00D241: db GFX_C3>>0 ; 0x50
#_00D242: db GFX_C4>>0 ; 0x51
#_00D243: db GFX_C5>>0 ; 0x52
#_00D244: db GFX_C6>>0 ; 0x53
#_00D245: db GFX_C7>>0 ; 0x54
#_00D246: db GFX_C8>>0 ; 0x55
#_00D247: db GFX_C9>>0 ; 0x56
#_00D248: db GFX_CA>>0 ; 0x57
#_00D249: db GFX_CB>>0 ; 0x58
#_00D24A: db GFX_CC>>0 ; 0x59
#_00D24B: db GFX_CD>>0 ; 0x5A
#_00D24C: db GFX_CE>>0 ; 0x5B
#_00D24D: db GFX_CF>>0 ; 0x5C
#_00D24E: db GFX_D0>>0 ; 0x5D
#_00D24F: db GFX_D1>>0 ; 0x5E
#_00D250: db GFX_D2>>0 ; 0x5F
#_00D251: db GFX_D3>>0 ; 0x60
#_00D252: db GFX_D4>>0 ; 0x61
#_00D253: db GFX_D5>>0 ; 0x62
#_00D254: db GFX_D6>>0 ; 0x63
#_00D255: db GFX_D7>>0 ; 0x64
#_00D256: db GFX_D8>>0 ; 0x65
#_00D257: db GFX_D9>>0 ; 0x66
#_00D258: db GFX_DA>>0 ; 0x67
#_00D259: db GFX_DB>>0 ; 0x68
#_00D25A: db GFX_DC>>0 ; 0x69
#_00D25B: db GFX_DD>>0 ; 0x6A
#_00D25C: db GFX_DE>>0 ; 0x6B

;===================================================================================================

pool LoadItemGFX

.offset
#_00D25D: dw $0000 ; rods
#_00D25F: dw $0108 ; hammer
#_00D261: dw $00C0 ; bow
#_00D263: dw $0390 ; shovel
#_00D265: dw $03F0 ; Zzz ♪
#_00D267: dw $0438 ; powder dust
#_00D269: dw $0330 ; hookshot
#_00D26B: dw $0048 ; net
#_00D26D: dw $0318 ; cane
#_00D26F: dw $0450 ; book

pool off

;===================================================================================================

LoadItemGFXIntoWRAM4BPPBuffer:
#_00D271: PHB
#_00D272: PHK
#_00D273: PLB

#_00D274: REP #$20

#_00D276: STZ.b $0A
#_00D278: STZ.b $0C

#_00D27A: LDA.w #$0480
#_00D27D: STA.b $06

#_00D27F: SEP #$20

; rods
#_00D281: LDA.b #$07
#_00D283: JSR LoadItemGFX_sheet0

; hammer
#_00D286: LDA.b #$07
#_00D288: JSR LoadItemGFX_sheet0

; bow
#_00D28B: LDA.b #$03
#_00D28D: JSR LoadItemGFX_sheet0

; shovel
#_00D290: LDY.b #$5F
#_00D292: LDA.b #$04
#_00D294: JSR LoadItemGFX_arbitrary_sheet

; Zzz ♪
#_00D297: LDA.b #$03
#_00D299: JSR LoadItemGFX_current_sheet

; powder dust
#_00D29C: LDA.b #$01
#_00D29E: JSR LoadItemGFX_current_sheet

; hookshot
#_00D2A1: LDA.b #$04
#_00D2A3: JSR LoadItemGFX_sheet0

; net
#_00D2A6: LDY.b #$60
#_00D2A8: LDA.b #$0E
#_00D2AA: JSR LoadItemGFX_arbitrary_sheet

; cane
#_00D2AD: LDA.b #$07
#_00D2AF: JSR LoadItemGFX_current_sheet

; book
#_00D2B2: LDY.b #$5F
#_00D2B4: LDA.b #$02
#_00D2B6: JSR LoadItemGFX_arbitrary_sheet

;---------------------------------------------------------------------------------------------------

; push blocks
#_00D2B9: LDY.b #$54
#_00D2BB: JSR Decompress_sprite_low

#_00D2BE: REP #$30

#_00D2C0: LDA.b $00

#_00D2C2: LDX.w #$1480

#_00D2C5: PHA

#_00D2C6: LDY.w #$0008
#_00D2C9: JSR Do3bppToWRAM4bpp_RightPal_arbitrary

#_00D2CC: PLA
#_00D2CD: CLC
#_00D2CE: ADC.w #$0180

#_00D2D1: LDY.w #$0008
#_00D2D4: JSR Do3bppToWRAM4bpp_RightPal_arbitrary

;---------------------------------------------------------------------------------------------------

; animated rupees
#_00D2D7: SEP #$30

#_00D2D9: LDY.b #$60
#_00D2DB: JSR Decompress_sprite_low

#_00D2DE: REP #$30

#_00D2E0: LDA.b $00
#_00D2E2: LDX.w #$2280
#_00D2E5: LDY.w #$0003

#_00D2E8: PHA

#_00D2E9: JSR Do3bppToWRAM4bpp_RightPal_arbitrary

#_00D2EC: PLA
#_00D2ED: CLC
#_00D2EE: ADC.w #$0180

#_00D2F1: LDY.w #$0003
#_00D2F4: JSR Do3bppToWRAM4bpp_RightPal_arbitrary

#_00D2F7: SEP #$30

#_00D2F9: JSR LoadItemGFX_Auxiliary

#_00D2FC: PLB

#_00D2FD: RTL

;===================================================================================================

pool DecompressSwordGraphics

.offset
#_00D2FE: dw $0000 ; none
#_00D300: dw $0000 ; fighter sword
#_00D302: dw $0120 ; master sword
#_00D304: dw $0120 ; tempered sword
#_00D306: dw $0120 ; gold sword

pool off

;---------------------------------------------------------------------------------------------------

DecompressSwordGraphics:
#_00D308: PHB
#_00D309: PHK
#_00D30A: PLB

#_00D30B: LDY.b #$5F
#_00D30D: JSR Decompress_sprite_high

#_00D310: LDY.b #$5E
#_00D312: JSR Decompress_sprite_low

#_00D315: REP #$21

#_00D317: LDA.l $7EF359
#_00D31B: AND.w #$00FF
#_00D31E: ASL A
#_00D31F: TAY

#_00D320: LDA.b $00
#_00D322: ADC.w .offset,Y

#_00D325: REP #$10

#_00D327: LDX.w #$0000
#_00D32A: LDY.w #$000C

#_00D32D: PHA

#_00D32E: JSR Do3bppToWRAM4bpp_RightPal_arbitrary

#_00D331: PLA
#_00D332: CLC
#_00D333: ADC.w #$0180

#_00D336: LDY.w #$000C
#_00D339: JSR Do3bppToWRAM4bpp_RightPal_arbitrary

#_00D33C: SEP #$30

#_00D33E: PLB

#_00D33F: RTL

;===================================================================================================

pool DecompressShieldGraphics

.offset
#_00D340: dw $0660 ; none
#_00D342: dw $0660 ; fighter shield
#_00D344: dw $06F0 ; fire shield
#_00D346: dw $0900 ; mirror shield

pool off

;---------------------------------------------------------------------------------------------------

DecompressShieldGraphics:
#_00D348: PHB
#_00D349: PHK
#_00D34A: PLB

#_00D34B: LDY.b #$5F
#_00D34D: JSR Decompress_sprite_high

#_00D350: LDY.b #$5E
#_00D352: JSR Decompress_sprite_low

#_00D355: REP #$21

#_00D357: LDA.l $7EF35A
#_00D35B: ASL A
#_00D35C: TAY

#_00D35D: LDA.b $00
#_00D35F: ADC.w .offset,Y

#_00D362: REP #$10

#_00D364: LDX.w #$0300

#_00D367: PHA

#_00D368: JSR Do3bppToWRAM4bpp_RightPal

#_00D36B: PLA
#_00D36C: CLC
#_00D36D: ADC.w #$0180
#_00D370: JSR Do3bppToWRAM4bpp_RightPal

#_00D373: SEP #$30

#_00D375: PLB

#_00D376: RTL

;===================================================================================================

DecompressAnimatedUnderworldTiles:
#_00D377: PHB
#_00D378: PHK
#_00D379: PLB

#_00D37A: JSR Decompress_background_low

#_00D37D: REP #$30

#_00D37F: LDA.b $00
#_00D381: LDY.w #$0030
#_00D384: LDX.w #$1680
#_00D387: JSR Do3bppToWRAM4bpp_LeftPal_arbitrary

#_00D38A: SEP #$30

#_00D38C: LDY.b #$5C
#_00D38E: JSR Decompress_background_low

#_00D391: REP #$30

#_00D393: LDA.b $00
#_00D395: LDY.w #$0030
#_00D398: LDX.w #$1C80
#_00D39B: JSR Do3bppToWRAM4bpp_LeftPal_arbitrary

;---------------------------------------------------------------------------------------------------

#_00D39E: LDX.w #$0000

.next_tile_frame
#_00D3A1: LDA.l $7EA880,X
#_00D3A5: PHA

#_00D3A6: LDA.l $7EAC80,X
#_00D3AA: STA.l $7EA880,X

#_00D3AE: LDA.l $7EAE80,X
#_00D3B2: STA.l $7EAC80,X

#_00D3B6: LDA.l $7EAA80,X
#_00D3BA: STA.l $7EAE80,X

#_00D3BE: PLA
#_00D3BF: STA.l $7EAA80,X

#_00D3C3: INX
#_00D3C4: INX
#_00D3C5: CPX.w #$0200
#_00D3C8: BNE .next_tile_frame

;---------------------------------------------------------------------------------------------------

#_00D3CA: LDA.w #VRAMaddr($7600)
#_00D3CD: STA.w $0134

#_00D3D0: SEP #$30

#_00D3D2: PLB

#_00D3D3: RTL

;===================================================================================================

DecompressAnimatedOverworldTiles:
#_00D3D4: PHB
#_00D3D5: PHK
#_00D3D6: PLB

#_00D3D7: PHY

#_00D3D8: JSR Decompress_background_low

#_00D3DB: REP #$30

#_00D3DD: LDA.b $00
#_00D3DF: LDY.w #$0040
#_00D3E2: LDX.w #$1680
#_00D3E5: JSR Do3bppToWRAM4bpp_LeftPal_arbitrary

#_00D3E8: SEP #$30

#_00D3EA: PLY
#_00D3EB: INY

#_00D3EC: JSR Decompress_background_low

#_00D3EF: REP #$30

#_00D3F1: LDA.b $00
#_00D3F3: LDY.w #$0020
#_00D3F6: LDX.w #$1E80
#_00D3F9: JSR Do3bppToWRAM4bpp_LeftPal_arbitrary

#_00D3FC: LDA.w #VRAMaddr($7800)
#_00D3FF: STA.w $0134

#_00D402: SEP #$30

#_00D404: PLB

#_00D405: RTL

;===================================================================================================

LoadItemGFX_Auxiliary:
; switch pegs
#_00D406: LDY.b #$0F
#_00D408: JSR Decompress_background_low

#_00D40B: REP #$30

#_00D40D: LDA.b $00
#_00D40F: LDY.w #$0010
#_00D412: LDX.w #$2340

#_00D415: JSR Do3bppToWRAM4bpp_LeftPal_arbitrary

#_00D418: SEP #$30

; duck and purple chest
#_00D41A: LDY.b #$58
#_00D41C: JSR Decompress_sprite_low

#_00D41F: REP #$30

#_00D421: LDA.b $00
#_00D423: LDY.w #$0020
#_00D426: LDX.w #$2540

#_00D429: JSR Do3bppToWRAM4bpp_LeftPal_arbitrary

; star tiles
#_00D42C: SEP #$30

#_00D42E: LDY.b #$05
#_00D430: JSR Decompress_background_low

#_00D433: REP #$30

#_00D435: LDA.b $00
#_00D437: CLC
#_00D438: ADC.w #$0480

#_00D43B: LDY.w #$0002
#_00D43E: LDX.w #$2DC0
#_00D441: JSR Do3bppToWRAM4bpp_LeftPal_arbitrary

#_00D444: SEP #$30

#_00D446: RTS

;===================================================================================================

pool LoadFollowerGraphics

.gfx_offset
#_00D447: dw $0000 ; 0x00 - No follower
#_00D449: dw $0600 ; 0x01 - Zelda
#_00D44B: dw $0300 ; 0x02 - Old man that stops following you
#_00D44D: dw $0300 ; 0x03 - Unused old man
#_00D44F: dw $0300 ; 0x04 - Normal old man
#_00D451: dw $0000 ; 0x05 - Zelda rescue telepathy
#_00D453: dw $0000 ; 0x06 - Blind maiden
#_00D455: dw $0900 ; 0x07 - Frogsmith
#_00D457: dw $0600 ; 0x08 - Smithy
#_00D459: dw $0600 ; 0x09 - Locksmith
#_00D45B: dw $0900 ; 0x0A - Kiki
#_00D45D: dw $0900 ; 0x0B - Unused old man
#_00D45F: dw $0600 ; 0x0C - Purple chest
#_00D461: dw $0900 ; 0x0D - Super bomb

pool off

;---------------------------------------------------------------------------------------------------

LoadFollowerGraphics:
#_00D463: PHB
#_00D464: PHK
#_00D465: PLB

#_00D466: LDY.b #$64
#_00D468: LDA.l $7EF3CC
#_00D46C: CMP.b #!FOLLOWER_01
#_00D46E: BEQ .start

#_00D470: LDY.b #$66
#_00D472: LDA.l $7EF3CC
#_00D476: CMP.b #!FOLLOWER_09
#_00D478: BCC .start

#_00D47A: LDY.b #$59
#_00D47C: CMP.b #$0C
#_00D47E: BCC .start

#_00D480: LDY.b #$58

;---------------------------------------------------------------------------------------------------

.start
#_00D482: JSR Decompress_sprite_high

#_00D485: LDY.b #$65
#_00D487: JSR Decompress_sprite_low

#_00D48A: REP #$30

#_00D48C: LDA.l $7EF3CC
#_00D490: AND.w #$00FF
#_00D493: ASL A
#_00D494: TAX

#_00D495: LDA.b $00
#_00D497: CLC
#_00D498: ADC.l .gfx_offset,X

#_00D49C: LDY.w #$0020
#_00D49F: LDX.w #$2940
#_00D4A2: JSR Do3bppToWRAM4bpp_LeftPal_arbitrary

#_00D4A5: SEP #$30

#_00D4A7: PLB

#_00D4A8: RTL

;===================================================================================================
; TODO document routine
;===================================================================================================
pool WriteTo4BPPBuffer

.offsets
#_00D4A9: dw $09C0, $0030, $0060, $0090
#_00D4B1: dw $00C0, $0300, $0318, $0330
#_00D4B9: dw $0348, $0360, $0378, $0390
#_00D4C1: dw $0930, $03F0, $0420, $0450
#_00D4C9: dw $0468, $0600, $0630, $0660
#_00D4D1: dw $0690, $06C0, $06F0, $0720
#_00D4D9: dw $0750, $0768, $0900, $0930
#_00D4E1: dw $0960, $0990, $09F0, $0000
#_00D4E9: dw $00F0, $0A20, $0A50, $0660
#_00D4F1: dw $0600, $0618, $0630, $0648
#_00D4F9: dw $0678, $06D8, $06A8, $0708
#_00D501: dw $0738, $0768, $0960, $0900
#_00D509: dw $03C0, $0990, $09A8, $09C0
#_00D511: dw $09D8, $0A08, $0A38, $0600
#_00D519: dw $0630

pool off

;===================================================================================================

WriteTo4BPPBuffer_at_7F4000:
#_00D51B: PHB
#_00D51C: PHK
#_00D51D: PLB

#_00D51E: PHA

#_00D51F: STZ.b $00

#_00D521: LDA.b #$7F4000>>8
#_00D523: STA.b $01

#_00D525: LDA.b #$7F4000>>16
#_00D527: STA.b $02
#_00D529: STA.b $05

#_00D52B: BRA WriteTo4BPPBuffer

;===================================================================================================

WriteTo4BPPBuffer_item_gfx:
#_00D52D: PHB
#_00D52E: PHK
#_00D52F: PLB

#_00D530: PHA

#_00D531: LDY.b #$5D
#_00D533: CMP.b #$23
#_00D535: BEQ .set_a

#_00D537: CMP.b #$37
#_00D539: BCS .set_a

#_00D53B: LDY.b #$5C
#_00D53D: CMP.b #$0C
#_00D53F: BEQ .set_a

#_00D541: CMP.b #$24
#_00D543: BCS .set_a

#_00D545: LDY.b #$5B

.set_a
#_00D547: JSR Decompress_sprite_high

#_00D54A: LDY.b #$5A
#_00D54C: JSR Decompress_sprite_low

;===================================================================================================

WriteTo4BPPBuffer:
#_00D54F: PLA

#_00D550: REP #$21

#_00D552: AND.w #$00FF
#_00D555: ASL A
#_00D556: TAX

#_00D557: LDA.b $00
#_00D559: ADC.w .offsets,X

#_00D55C: REP #$10

#_00D55E: LDX.w #$2D40
#_00D561: LDY.w #$0002

#_00D564: PHA

#_00D565: JSR Do3bppToWRAM4bpp_RightPal_arbitrary

#_00D568: PLA
#_00D569: CLC
#_00D56A: ADC.w #$0180

#_00D56D: LDY.w #$0002
#_00D570: JSR Do3bppToWRAM4bpp_RightPal_arbitrary

#_00D573: SEP #$30

#_00D575: PLB

#_00D576: RTL

;===================================================================================================
; Some decomp routine?
;===================================================================================================
LoadItemGFX_sheet0:
#_00D577: STA.b $0A

#_00D579: LDY.b #$00

#_00D57B: LDA.w GFXSheetPointers_sprite_bank,Y
#_00D57E: STA.b $02
#_00D580: STA.b $05

#_00D582: LDA.w GFXSheetPointers_sprite_high,Y
#_00D585: STA.b $01

#_00D587: LDA.w GFXSheetPointers_sprite_low,Y
#_00D58A: STA.b $00

#_00D58C: BRA LoadItemGFX

;===================================================================================================

LoadItemGFX_arbitrary_sheet:
#_00D58E: PHA

#_00D58F: JSR Decompress_sprite_low

#_00D592: PLA

;===================================================================================================

LoadItemGFX_current_sheet:
#_00D593: STA.b $0A

#_00D595: STZ.b $00

#_00D597: LDA.b #$7F4000>>8
#_00D599: STA.b $01

#_00D59B: LDA.b #$7F4000>>16
#_00D59D: STA.b $02

#_00D59F: STA.b $05

;===================================================================================================

LoadItemGFX:
#_00D5A1: REP #$31

#_00D5A3: LDY.b $0C

#_00D5A5: LDA.b $00
#_00D5A7: ADC.w .offset,Y

#_00D5AA: LDX.b $06
#_00D5AC: LDY.b $0A

#_00D5AE: PHA

#_00D5AF: JSR Do3bppToWRAM4bpp_RightPal_arbitrary

#_00D5B2: PLA
#_00D5B3: CLC
#_00D5B4: ADC.w #$0180

#_00D5B7: LDY.b $0A
#_00D5B9: JSR Do3bppToWRAM4bpp_RightPal_arbitrary

#_00D5BC: INC.b $0C
#_00D5BE: INC.b $0C

#_00D5C0: STX.b $06

#_00D5C2: SEP #$30

#_00D5C4: RTS

;===================================================================================================
; Unused 3BPP to WRAM 4BPP routine
;===================================================================================================
UNREACHABLE_00D5C5:
#_00D5C5: LDY.w #$0008
#_00D5C8: STY.b $0E

.next_tile
#_00D5CA: STA.b $00

#_00D5CC: CLC
#_00D5CD: ADC.w #$0010
#_00D5D0: STA.b $03

#_00D5D2: LDY.w #$0007

.next_word
#_00D5D5: LDA.b [$00]
#_00D5D7: STA.l $7E9000,X

#_00D5DB: INC.b $00
#_00D5DD: INC.b $00

#_00D5DF: LDA.b [$03]
#_00D5E1: AND.w #$00FF
#_00D5E4: STA.l $7E9010,X

#_00D5E8: INC.b $03

#_00D5EA: INX
#_00D5EB: INX

#_00D5EC: DEY
#_00D5ED: BPL .next_word

#_00D5EF: TXA
#_00D5F0: CLC
#_00D5F1: ADC.w #$0010
#_00D5F4: TAX

#_00D5F5: LDA.b $03
#_00D5F7: AND.w #$0078
#_00D5FA: BNE .same_row

#_00D5FC: LDA.b $03
#_00D5FE: CLC
#_00D5FF: ADC.w #$0180
#_00D602: STA.b $03

.same_row
#_00D604: LDA.b $03

#_00D606: DEC.b $0E
#_00D608: BNE .next_tile

#_00D60A: RTS

;===================================================================================================

Do3bppToWRAM4bpp_LeftPal:
#_00D60B: LDY.w #$0008

.arbitrary
#_00D60E: STY.b $0E

;---------------------------------------------------------------------------------------------------

.next_tile
#_00D610: STA.b $00

#_00D612: CLC
#_00D613: ADC.w #$0010
#_00D616: STA.b $03

#_00D618: LDY.w #$0003

.next_word
#_00D61B: LDA.b [$00]
#_00D61D: STA.l $7E9000,X

#_00D621: INC.b $00
#_00D623: INC.b $00

#_00D625: LDA.b [$03]
#_00D627: AND.w #$00FF
#_00D62A: STA.l $7E9010,X

#_00D62E: INC.b $03

#_00D630: INX
#_00D631: INX

#_00D632: LDA.b [$00]
#_00D634: STA.l $7E9000,X

#_00D638: INC.b $00
#_00D63A: INC.b $00

#_00D63C: LDA.b [$03]
#_00D63E: AND.w #$00FF
#_00D641: STA.l $7E9010,X

#_00D645: INC.b $03

#_00D647: INX
#_00D648: INX

#_00D649: DEY
#_00D64A: BPL .next_word

#_00D64C: TXA
#_00D64D: CLC
#_00D64E: ADC.w #$0010
#_00D651: TAX

#_00D652: LDA.b $03

#_00D654: DEC.b $0E
#_00D656: BNE .next_tile

#_00D658: RTS

;===================================================================================================

Do3bppToWRAM4bpp_RightPal:
#_00D659: LDY.w #$0006

.arbitrary
#_00D65C: STY.b $0E

;---------------------------------------------------------------------------------------------------

.next_tile
#_00D65E: STA.b $00

#_00D660: CLC
#_00D661: ADC.w #$0010
#_00D664: STA.b $03

#_00D666: LDY.w #$0007

.next_word
#_00D669: LDA.b [$00]
#_00D66B: STA.l $7E9000,X

#_00D66F: XBA
#_00D670: ORA.b [$00]
#_00D672: AND.w #$00FF
#_00D675: STA.b $08

#_00D677: INC.b $00
#_00D679: INC.b $00

#_00D67B: LDA.b [$03]
#_00D67D: AND.w #$00FF
#_00D680: STA.b $BD

#_00D682: ORA.b $08
#_00D684: XBA
#_00D685: ORA.b $BD
#_00D687: STA.l $7E9010,X

#_00D68B: INC.b $03

#_00D68D: INX
#_00D68E: INX

#_00D68F: DEY
#_00D690: BPL .next_word

;---------------------------------------------------------------------------------------------------

#_00D692: TXA
#_00D693: CLC
#_00D694: ADC.w #$0010
#_00D697: TAX

#_00D698: LDA.b $03
#_00D69A: AND.w #$0078
#_00D69D: BNE .same_row

#_00D69F: LDA.b $03
#_00D6A1: CLC
#_00D6A2: ADC.w #$0180
#_00D6A5: STA.b $03

.same_row
#_00D6A7: LDA.b $03

#_00D6A9: DEC.b $0E
#_00D6AB: BNE .next_tile

#_00D6AD: RTS

;===================================================================================================
; TODO document routine/better name
;===================================================================================================
LoadTransAuxGFX:
#_00D6AE: PHB
#_00D6AF: PHK
#_00D6B0: PLB

#_00D6B1: STZ.b $00

#_00D6B3: LDA.b #$7E6000>>8
#_00D6B5: STA.b $01

#_00D6B7: LDA.b #$7E6000>>16
#_00D6B9: STA.b $02

#_00D6BB: REP #$30

#_00D6BD: LDA.w $0AA2
#_00D6C0: AND.w #$00FF
#_00D6C3: ASL A
#_00D6C4: ASL A
#_00D6C5: STA.b $0E

;---------------------------------------------------------------------------------------------------

#_00D6C7: SEP #$20

#_00D6C9: LDX.b $0E

#_00D6CB: LDA.w SheetsTable_AA2+0,X
#_00D6CE: BEQ .skip_bg0

#_00D6D0: STA.l $7EC2F8

#_00D6D4: SEP #$10

#_00D6D6: TAY
#_00D6D7: JSR Decompress_background_arbitrary

;---------------------------------------------------------------------------------------------------

.skip_bg0
#_00D6DA: SEP #$10

#_00D6DC: LDA.b $01
#_00D6DE: CLC
#_00D6DF: ADC.b #$06
#_00D6E1: STA.b $01

#_00D6E3: REP #$10

#_00D6E5: LDX.b $0E

#_00D6E7: LDA.w SheetsTable_AA2+1,X
#_00D6EA: BEQ .skip_bg1

#_00D6EC: STA.l $7EC2F9

#_00D6F0: SEP #$10

#_00D6F2: TAY
#_00D6F3: JSR Decompress_background_arbitrary

;---------------------------------------------------------------------------------------------------

.skip_bg1
#_00D6F6: SEP #$10

#_00D6F8: LDA.b $01
#_00D6FA: CLC
#_00D6FB: ADC.b #$06
#_00D6FD: STA.b $01

#_00D6FF: REP #$10

#_00D701: LDX.b $0E

#_00D703: LDA.w SheetsTable_AA2+2,X
#_00D706: BEQ .skip_bg2

#_00D708: STA.l $7EC2FA

#_00D70C: SEP #$10

#_00D70E: TAY
#_00D70F: JSR Decompress_background_arbitrary

;---------------------------------------------------------------------------------------------------

.skip_bg2
#_00D712: SEP #$10

#_00D714: LDA.b $01
#_00D716: CLC
#_00D717: ADC.b #$06
#_00D719: STA.b $01

#_00D71B: REP #$10

#_00D71D: LDX.b $0E
#_00D71F: LDA.w SheetsTable_AA2+3,X
#_00D722: BEQ .skip_bg3

#_00D724: STA.l $7EC2FB

#_00D728: SEP #$10

#_00D72A: TAY
#_00D72B: JSR Decompress_background_arbitrary

;---------------------------------------------------------------------------------------------------

.skip_bg3
#_00D72E: SEP #$10

#_00D730: LDA.b $01
#_00D732: CLC
#_00D733: ADC.b #$06
#_00D735: STA.b $01

#_00D737: BRA .continue

;===================================================================================================

#LoadTransAuxGFX_sprite:
#_00D739: PHB
#_00D73A: PHK
#_00D73B: PLB

#_00D73C: STZ.b $00

#_00D73E: LDA.b #$7E7800>>8
#_00D740: STA.b $01

#_00D742: LDA.b #$7E7800>>16
#_00D744: STA.b $02

;===================================================================================================

.continue
#_00D746: REP #$30

#_00D748: LDA.w $0AA3
#_00D74B: AND.w #$00FF
#_00D74E: ASL A
#_00D74F: ASL A
#_00D750: STA.b $0E

;---------------------------------------------------------------------------------------------------

#_00D752: SEP #$20

#_00D754: LDX.b $0E
#_00D756: LDA.w SheetsTable_AA3+0,X
#_00D759: BEQ .skip_spr0

#_00D75B: STA.l $7EC2FC

.skip_spr0
#_00D75F: SEP #$10

#_00D761: LDA.l $7EC2FC
#_00D765: TAY

#_00D766: JSR Decompress_sprite_arbitrary

#_00D769: LDA.b $01
#_00D76B: CLC
#_00D76C: ADC.b #$06
#_00D76E: STA.b $01

;---------------------------------------------------------------------------------------------------

#_00D770: REP #$10

#_00D772: LDX.b $0E

#_00D774: LDA.w SheetsTable_AA3+1,X
#_00D777: BEQ .skip_spr1

#_00D779: STA.l $7EC2FD

.skip_spr1
#_00D77D: SEP #$10

#_00D77F: LDA.l $7EC2FD
#_00D783: TAY

#_00D784: JSR Decompress_sprite_arbitrary

#_00D787: LDA.b $01
#_00D789: CLC
#_00D78A: ADC.b #$06
#_00D78C: STA.b $01

;---------------------------------------------------------------------------------------------------

#_00D78E: REP #$10

#_00D790: LDX.b $0E

#_00D792: LDA.w SheetsTable_AA3+2,X
#_00D795: BEQ .skip_spr2

#_00D797: STA.l $7EC2FE

.skip_spr2
#_00D79B: SEP #$10

#_00D79D: LDA.l $7EC2FE
#_00D7A1: TAY

#_00D7A2: JSR Decompress_sprite_arbitrary

#_00D7A5: LDA.b $01
#_00D7A7: CLC
#_00D7A8: ADC.b #$06
#_00D7AA: STA.b $01

;---------------------------------------------------------------------------------------------------

#_00D7AC: REP #$10

#_00D7AE: LDX.b $0E

#_00D7B0: LDA.w SheetsTable_AA3+3,X
#_00D7B3: BEQ .skip_spr3

#_00D7B5: STA.l $7EC2FF

.skip_spr3
#_00D7B9: SEP #$10

#_00D7BB: LDA.l $7EC2FF
#_00D7BF: TAY

#_00D7C0: JSR Decompress_sprite_arbitrary

#_00D7C3: STZ.w $0412

#_00D7C6: PLB

#_00D7C7: RTL

;===================================================================================================

ReloadPreviouslyLoadedSheets:
#_00D7C8: PHB
#_00D7C9: PHK
#_00D7CA: PLB

#_00D7CB: STZ.b $00

#_00D7CD: LDA.b #$7E6000>>8
#_00D7CF: STA.b $01

#_00D7D1: LDA.b #$7E6000>>16
#_00D7D3: STA.b $02

#_00D7D5: LDA.l $7EC2F8
#_00D7D9: TAY

#_00D7DA: JSR Decompress_background_arbitrary

;---------------------------------------------------------------------------------------------------

#_00D7DD: LDA.b $01
#_00D7DF: CLC
#_00D7E0: ADC.b #$06
#_00D7E2: STA.b $01

#_00D7E4: LDA.l $7EC2F9
#_00D7E8: TAY

#_00D7E9: JSR Decompress_background_arbitrary

;---------------------------------------------------------------------------------------------------

#_00D7EC: LDA.b $01
#_00D7EE: CLC
#_00D7EF: ADC.b #$06
#_00D7F1: STA.b $01

#_00D7F3: LDA.l $7EC2FA
#_00D7F7: TAY

#_00D7F8: JSR Decompress_background_arbitrary

;---------------------------------------------------------------------------------------------------

#_00D7FB: LDA.b $01
#_00D7FD: CLC
#_00D7FE: ADC.b #$06
#_00D800: STA.b $01

#_00D802: LDA.l $7EC2FB
#_00D806: TAY

#_00D807: JSR Decompress_background_arbitrary

;---------------------------------------------------------------------------------------------------

#_00D80A: STZ.b $00

#_00D80C: LDA.b #$7E7800>>8
#_00D80E: STA.b $01

#_00D810: LDA.b #$7E7800>>16
#_00D812: STA.b $02

#_00D814: LDA.l $7EC2FC
#_00D818: TAY

#_00D819: JSR Decompress_sprite_arbitrary

;---------------------------------------------------------------------------------------------------

#_00D81C: LDA.b $01
#_00D81E: CLC
#_00D81F: ADC.b #$06
#_00D821: STA.b $01

#_00D823: LDA.l $7EC2FD
#_00D827: TAY

#_00D828: JSR Decompress_sprite_arbitrary

;---------------------------------------------------------------------------------------------------

#_00D82B: LDA.b $01
#_00D82D: CLC
#_00D82E: ADC.b #$06
#_00D830: STA.b $01

#_00D832: LDA.l $7EC2FE
#_00D836: TAY

#_00D837: JSR Decompress_sprite_arbitrary

;---------------------------------------------------------------------------------------------------

#_00D83A: LDA.b $01
#_00D83C: CLC
#_00D83D: ADC.b #$06
#_00D83F: STA.b $01

#_00D841: LDA.l $7EC2FF
#_00D845: TAY

#_00D846: JSR Decompress_sprite_arbitrary

;---------------------------------------------------------------------------------------------------

#_00D849: STZ.w $0412

#_00D84C: PLB

#_00D84D: RTL

;===================================================================================================

Attract_DecompressStoryGFX:
#_00D84E: PHB
#_00D84F: PHK
#_00D850: PLB

#_00D851: STZ.b $00

#_00D853: LDA.b #$7F4000>>8
#_00D855: STA.b $01

#_00D857: LDA.b #$7F4000>>16
#_00D859: STA.b $02
#_00D85B: STA.b $05

#_00D85D: LDA.b #$67
#_00D85F: STA.b $0E

.next
#_00D861: LDY.b $0E

#_00D863: JSR Decompress_sprite_arbitrary

#_00D866: LDA.b $01
#_00D868: CLC
#_00D869: ADC.b #$08
#_00D86B: STA.b $01

#_00D86D: INC.b $0E

#_00D86F: LDA.b $0E
#_00D871: CMP.b #$69
#_00D873: BNE .next

#_00D875: PLB

#_00D876: RTL

;===================================================================================================

pool AnimateMirrorWarp

.vector_low
#_00D877: db AnimateMirrorWarp_LoadPyramidIfAga>>0
#_00D878: db AnimateMirrorWarp_DecompressNewTileSets>>0
#_00D879: db AnimateMirrorWarp_DecompressBackgroundsA>>0
#_00D87A: db AnimateMirrorWarp_DecompressBackgroundsB>>0
#_00D87B: db AnimateMirrorWarp_DecompressBackgroundsC>>0
#_00D87C: db AnimateMirrorWarp_TriggerOverlayA_2>>0
#_00D87D: db AnimateMirrorWarp_TriggerOverlayB>>0
#_00D87E: db AnimateMirrorWarp_DrawDestinationScreen>>0
#_00D87F: db AnimateMirrorWarp_DoSpritesPalettes>>0
#_00D880: db AnimateMirrorWarp_TriggerOverlayB>>0
#_00D881: db AnimateMirrorWarp_DecompressAnimatedTiles>>0
#_00D882: db AnimateMirrorWarp_LoadSubscreen>>0
#_00D883: db AnimateMirrorWarp_DecompressSpritesA>>0
#_00D884: db AnimateMirrorWarp_DecompressSpritesB>>0
#_00D885: db AnimateMirrorWarp_TriggerBGChar0>>0

.vector_high
#_00D886: db AnimateMirrorWarp_LoadPyramidIfAga>>8
#_00D887: db AnimateMirrorWarp_DecompressNewTileSets>>8
#_00D888: db AnimateMirrorWarp_DecompressBackgroundsA>>8
#_00D889: db AnimateMirrorWarp_DecompressBackgroundsB>>8
#_00D88A: db AnimateMirrorWarp_DecompressBackgroundsC>>8
#_00D88B: db AnimateMirrorWarp_TriggerOverlayA_2>>8
#_00D88C: db AnimateMirrorWarp_TriggerOverlayB>>8
#_00D88D: db AnimateMirrorWarp_DrawDestinationScreen>>8
#_00D88E: db AnimateMirrorWarp_DoSpritesPalettes>>8
#_00D88F: db AnimateMirrorWarp_TriggerOverlayB>>8
#_00D890: db AnimateMirrorWarp_DecompressAnimatedTiles>>8
#_00D891: db AnimateMirrorWarp_LoadSubscreen>>8
#_00D892: db AnimateMirrorWarp_DecompressSpritesA>>8
#_00D893: db AnimateMirrorWarp_DecompressSpritesB>>8
#_00D894: db AnimateMirrorWarp_TriggerBGChar0>>8

;---------------------------------------------------------------------------------------------------

.next_tilemap
#_00D895: db $00
#_00D896: db $0E
#_00D897: db $0F
#_00D898: db $10
#_00D899: db $11
#_00D89A: db $00
#_00D89B: db $00
#_00D89C: db $00
#_00D89D: db $00
#_00D89E: db $00
#_00D89F: db $00
#_00D8A0: db $12
#_00D8A1: db $13
#_00D8A2: db $14
#_00D8A3: db $00

pool off

;---------------------------------------------------------------------------------------------------

AnimateMirrorWarp:
#_00D8A4: STZ.b $00

#_00D8A6: LDA.b #$40
#_00D8A8: STA.b $01

#_00D8AA: LDX.w $0200

#_00D8AD: LDA.l .next_tilemap,X
#_00D8B1: STA.b $17
#_00D8B3: STA.w $0710

#_00D8B6: LDA.l .vector_low,X
#_00D8BA: STA.b $0E

#_00D8BC: LDA.l .vector_high,X
#_00D8C0: STA.b $0F

#_00D8C2: LDX.b #$00

#_00D8C4: LDA.b $8A
#_00D8C6: AND.b #$40
#_00D8C8: BEQ .light_world

#_00D8CA: LDX.b #$08

.light_world
#_00D8CC: INC.w $0200

#_00D8CF: JMP.w ($000E)

;===================================================================================================

AnimateMirrorWarp_LoadPyramidIfAga:
#_00D8D2: INC.w $06BA

#_00D8D5: LDA.w $06BA
#_00D8D8: CMP.b #$20
#_00D8DA: BEQ .continue

#_00D8DC: STZ.w $0200

#_00D8DF: RTL

.continue
#_00D8E0: JSL SetTargetOverworldWarpToPyramid

#_00D8E4: RTL

;===================================================================================================

AnimateMirrorWarp_TriggerOverlayA_2:
#_00D8E5: JSL MirrorWarp_HandleCastlePyramidSubscreen

#_00D8E9: DEC.b $11

#_00D8EB: LDA.b #$0C
#_00D8ED: STA.b $17
#_00D8EF: STA.w $0710

#_00D8F2: RTL

;===================================================================================================

AnimateMirrorWarp_DrawDestinationScreen:
#_00D8F3: JSL Overworld_DrawScreenAtCurrentMirrorPosition

#_00D8F7: INC.w $0710

#_00D8FA: RTL

;===================================================================================================

AnimateMirrorWarp_DoSpritesPalettes:
#_00D8FB: JSL MirrorWarp_LoadSpritesAndColors

#_00D8FF: LDA.b #$0C
#_00D901: STA.b $17
#_00D903: STA.w $0710

#_00D906: RTL

;===================================================================================================

AnimateMirrorWarp_TriggerOverlayB:
#_00D907: LDA.b #$0D
#_00D909: STA.b $17
#_00D90B: STA.w $0710

#_00D90E: RTL

;===================================================================================================

AnimateMirrorWarp_TriggerBGChar0:
#_00D90F: LDA.b #$0E
#_00D911: STA.w $0200

#_00D914: RTL

;===================================================================================================

AnimateMirrorWarp_DecompressAnimatedTiles:
#_00D915: LDY.b #$58

#_00D917: LDA.b $8A
#_00D919: AND.b #$BF
#_00D91B: CMP.b #$03
#_00D91D: BEQ .not_death_mountain

#_00D91F: CMP.b #$05
#_00D921: BEQ .not_death_mountain

#_00D923: CMP.b #$07
#_00D925: BEQ .not_death_mountain

#_00D927: LDY.b #$5A

.not_death_mountain
#_00D929: JSL DecompressAnimatedOverworldTiles

#_00D92D: RTL

;===================================================================================================

SheetsTable_Mirror:
#_00D92E: db $3A
#_00D92F: db $3B
#_00D930: db $3C
#_00D931: db $3D
#_00D932: db $3E
#_00D933: db $5B

;===================================================================================================

SheetsTable_AA4:
#_00D934: db $01
#_00D935: db $5A
#_00D936: db $42
#_00D937: db $43
#_00D938: db $44
#_00D939: db $45
#_00D93A: db $3F
#_00D93B: db $59
#_00D93C: db $0B
#_00D93D: db $5A

;===================================================================================================

AnimateMirrorWarp_DecompressNewTileSets:
#_00D93E: PHB
#_00D93F: PHK
#_00D940: PLB

#_00D941: PHX

#_00D942: REP #$30

#_00D944: LDA.w $0AA1
#_00D947: AND.w #$00FF
#_00D94A: ASL A
#_00D94B: ASL A
#_00D94C: ASL A
#_00D94D: TAX

#_00D94E: LDA.w $0AA2
#_00D951: AND.w #$00FF
#_00D954: ASL A
#_00D955: ASL A
#_00D956: TAY

#_00D957: SEP #$20

#_00D959: LDA.w SheetsTable_AA2+0,Y
#_00D95C: BNE .not_default_a

#_00D95E: LDA.w SheetsTable_AA1+3,X

.not_default_a
#_00D961: STA.l $7EC2F8

#_00D965: LDA.w SheetsTable_AA2+1,Y
#_00D968: BNE .not_default_b

#_00D96A: LDA.w SheetsTable_AA1+4,X

.not_default_b
#_00D96D: STA.l $7EC2F9

#_00D971: LDA.w SheetsTable_AA2+2,Y
#_00D974: BNE .not_default_c

#_00D976: LDA.w SheetsTable_AA1+5,X

.not_default_c
#_00D979: STA.l $7EC2FA

#_00D97D: LDA.w SheetsTable_AA2+3,Y
#_00D980: BNE .not_default_d

#_00D982: LDA.w SheetsTable_AA1+6,X

.not_default_d
#_00D985: STA.l $7EC2FB

;---------------------------------------------------------------------------------------------------

#_00D989: REP #$20

#_00D98B: LDA.w $0AA3
#_00D98E: AND.w #$00FF
#_00D991: ASL A
#_00D992: ASL A
#_00D993: TAY

#_00D994: SEP #$20

#_00D996: LDA.w SheetsTable_AA3+0,Y
#_00D999: BEQ .dont_change_a

#_00D99B: STA.l $7EC2FC

.dont_change_a
#_00D99F: LDA.w SheetsTable_AA3+1,Y
#_00D9A2: BEQ .dont_change_b

#_00D9A4: STA.l $7EC2FD

.dont_change_b
#_00D9A8: LDA.w SheetsTable_AA3+2,Y
#_00D9AB: BEQ .dont_change_c

#_00D9AD: STA.l $7EC2FE

.dont_change_c
#_00D9B1: LDA.w SheetsTable_AA3+3,Y
#_00D9B4: BEQ .dont_change_d

#_00D9B6: STA.l $7EC2FF

;---------------------------------------------------------------------------------------------------

.dont_change_d
#_00D9BA: SEP #$10

#_00D9BC: PLX

#_00D9BD: LDA.l SheetsTable_Mirror+1,X
#_00D9C1: STA.b $08

#_00D9C3: LDA.l SheetsTable_Mirror+0,X
#_00D9C7: TAY

#_00D9C8: LDA.b #$7F
#_00D9CA: JSR Decompress_background_arbitrary_bank

#_00D9CD: LDA.b $01
#_00D9CF: CLC
#_00D9D0: ADC.b #$06
#_00D9D2: STA.b $01

#_00D9D4: LDY.b $08
#_00D9D6: JSR Decompress_background_arbitrary

#_00D9D9: PLB

#_00D9DA: LDA.b #$7F
#_00D9DC: STA.b $02
#_00D9DE: STA.b $05

#_00D9E0: REP #$31

#_00D9E2: LDX.w #$0000
#_00D9E5: LDY.w #$0040
#_00D9E8: LDA.w #$4000
#_00D9EB: JSR Do3To4High16Bit

#_00D9EE: LDY.w #$0040
#_00D9F1: LDA.b $03
#_00D9F3: JSR Do3To4Low16Bit

#_00D9F6: SEP #$30

#_00D9F8: RTL

;===================================================================================================

AnimateMirrorWarp_DecompressBackgroundsA:
#_00D9F9: PHB
#_00D9FA: PHK
#_00D9FB: PLB

#_00D9FC: LDA.l SheetsTable_Mirror+3,X
#_00DA00: STA.b $08

#_00DA02: LDA.l SheetsTable_Mirror+2,X
#_00DA06: TAY

#_00DA07: LDA.b #$7F
#_00DA09: JSR Decompress_background_arbitrary_bank

#_00DA0C: LDA.b $01
#_00DA0E: CLC
#_00DA0F: ADC.b #$06
#_00DA11: STA.b $01

#_00DA13: LDY.b $08
#_00DA15: JSR Decompress_background_arbitrary

#_00DA18: PLB

#_00DA19: LDA.b #$7F
#_00DA1B: STA.b $02
#_00DA1D: STA.b $05

#_00DA1F: REP #$31

#_00DA21: LDX.w #$0000
#_00DA24: LDY.w #$0040
#_00DA27: LDA.w #$4000
#_00DA2A: JSR Do3To4Low16Bit

#_00DA2D: LDY.w #$0040
#_00DA30: LDA.b $03
#_00DA32: JSR Do3To4High16Bit

#_00DA35: SEP #$30

#_00DA37: RTL

;===================================================================================================

AnimateMirrorWarp_DecompressBackgroundsB:
#_00DA38: PHB
#_00DA39: PHK
#_00DA3A: PLB

#_00DA3B: LDA.l $7EC2F9
#_00DA3F: TAY

#_00DA40: LDA.b #$7F
#_00DA42: JSR Decompress_background_arbitrary_bank

#_00DA45: LDA.b $01
#_00DA47: CLC
#_00DA48: ADC.b #$06
#_00DA4A: STA.b $01

#_00DA4C: LDA.l $7EC2FA
#_00DA50: TAY
#_00DA51: JSR Decompress_background_arbitrary

#_00DA54: PLB

#_00DA55: LDA.b #$7F
#_00DA57: STA.b $02
#_00DA59: STA.b $05

#_00DA5B: REP #$31

#_00DA5D: LDX.w #$0000
#_00DA60: LDY.w #$0080
#_00DA63: LDA.w #$4000
#_00DA66: JSR Do3To4High16Bit

#_00DA69: SEP #$30

#_00DA6B: RTL

;===================================================================================================

AnimateMirrorWarp_DecompressBackgroundsC:
#_00DA6C: PHB
#_00DA6D: PHK
#_00DA6E: PLB

#_00DA6F: LDA.l SheetsTable_Mirror+5,X
#_00DA73: STA.b $08

#_00DA75: LDA.l SheetsTable_Mirror+4,X
#_00DA79: TAY

#_00DA7A: LDA.b #$7F
#_00DA7C: JSR Decompress_background_arbitrary_bank

#_00DA7F: LDA.b $01
#_00DA81: CLC
#_00DA82: ADC.b #$06
#_00DA84: STA.b $01

#_00DA86: LDY.b $08
#_00DA88: JSR Decompress_background_arbitrary

#_00DA8B: PLB

#_00DA8C: LDA.b #$7F
#_00DA8E: STA.b $02
#_00DA90: STA.b $05

#_00DA92: REP #$31

#_00DA94: LDX.w #$0000
#_00DA97: LDY.w #$0080
#_00DA9A: LDA.w #$4000
#_00DA9D: JSR Do3To4Low16Bit

#_00DAA0: SEP #$30

#_00DAA2: RTL

;===================================================================================================
; TODO document routine / rename
; something to do with adding subcreens to overworld
;===================================================================================================
AnimateMirrorWarp_LoadSubscreen:
#_00DAA3: STZ.b $1D

#_00DAA5: LDA.b $8A
#_00DAA7: BEQ .subscreen

#_00DAA9: CMP.b #$70
#_00DAAB: BEQ .subscreen

#_00DAAD: CMP.b #$40
#_00DAAF: BEQ .subscreen

#_00DAB1: CMP.b #$5B
#_00DAB3: BEQ .subscreen

#_00DAB5: CMP.b #$03
#_00DAB7: BEQ .subscreen

#_00DAB9: CMP.b #$05
#_00DABB: BEQ .subscreen

#_00DABD: CMP.b #$07
#_00DABF: BEQ .subscreen

#_00DAC1: CMP.b #$43
#_00DAC3: BEQ .subscreen

#_00DAC5: CMP.b #$45
#_00DAC7: BEQ .subscreen

#_00DAC9: CMP.b #$47
#_00DACB: BNE .no_subscreen

.subscreen
#_00DACD: LDA.b #$01
#_00DACF: STA.b $1D

.no_subscreen
#_00DAD1: PHB
#_00DAD2: PHK
#_00DAD3: PLB

#_00DAD4: LDA.l SheetsTable_Mirror+6,X
#_00DAD8: TAY

#_00DAD9: LDA.w GFXSheetPointers_sprite_low,Y
#_00DADC: STA.b $00

#_00DADE: LDA.w GFXSheetPointers_sprite_high,Y
#_00DAE1: STA.b $01

#_00DAE3: LDA.w GFXSheetPointers_sprite_bank,Y
#_00DAE6: STA.b $02
#_00DAE8: STA.b $05

#_00DAEA: PLB

#_00DAEB: REP #$31

#_00DAED: LDX.w #$0000
#_00DAF0: LDY.w #$0040

#_00DAF3: LDA.b $00
#_00DAF5: JSR Do3To4High16Bit

#_00DAF8: SEP #$30

#_00DAFA: RTL

;===================================================================================================

AnimateMirrorWarp_DecompressSpritesA:
#_00DAFB: PHB
#_00DAFC: PHK
#_00DAFD: PLB

#_00DAFE: LDA.l $7EC2FC
#_00DB02: TAY

#_00DB03: LDA.b #$7F
#_00DB05: STA.b $02
#_00DB07: STA.b $05

#_00DB09: JSR Decompress_sprite_arbitrary

#_00DB0C: LDA.b $01
#_00DB0E: CLC
#_00DB0F: ADC.b #$06
#_00DB11: STA.b $01

#_00DB13: LDA.l $7EC2FD
#_00DB17: TAY
#_00DB18: JSR Decompress_sprite_arbitrary

#_00DB1B: PLB

;---------------------------------------------------------------------------------------------------

#_00DB1C: LDA.b #$7F
#_00DB1E: STA.b $02
#_00DB20: STA.b $05

#_00DB22: REP #$31

#_00DB24: LDX.w #$0000
#_00DB27: LDY.w #$0040

#_00DB2A: LDA.l $7EC2FC
#_00DB2E: CMP.w #$0052
#_00DB31: BEQ .right_side_palette

#_00DB33: CMP.w #$0053
#_00DB36: BEQ .right_side_palette

#_00DB38: CMP.w #$005A
#_00DB3B: BEQ .right_side_palette

#_00DB3D: CMP.w #$005B
#_00DB40: BNE .left_side_palette

.right_side_palette
#_00DB42: LDA.w #$4000
#_00DB45: JSR Do3To4High16Bit

#_00DB48: BRA .done

.left_side_palette
#_00DB4A: LDA.w #$4000
#_00DB4D: JSR Do3To4Low16Bit

.done
#_00DB50: LDY.w #$0040
#_00DB53: LDA.b $03
#_00DB55: JSR Do3To4Low16Bit

#_00DB58: SEP #$30

#_00DB5A: RTL

;===================================================================================================

AnimateMirrorWarp_DecompressSpritesB:
#_00DB5B: PHB
#_00DB5C: PHK
#_00DB5D: PLB

#_00DB5E: LDA.l $7EC2FE
#_00DB62: TAY

#_00DB63: LDA.b #$7F
#_00DB65: STA.b $02
#_00DB67: STA.b $05
#_00DB69: JSR Decompress_sprite_arbitrary

#_00DB6C: LDA.b $01
#_00DB6E: CLC
#_00DB6F: ADC.b #$06
#_00DB71: STA.b $01

#_00DB73: LDA.l $7EC2FF
#_00DB77: TAY
#_00DB78: JSR Decompress_sprite_arbitrary

#_00DB7B: PLB

#_00DB7C: LDA.b #$7F
#_00DB7E: STA.b $02
#_00DB80: STA.b $05

#_00DB82: REP #$31

#_00DB84: LDX.w #$0000
#_00DB87: LDY.w #$0080
#_00DB8A: LDA.w #$7F4000
#_00DB8D: JSR Do3To4Low16Bit

#_00DB90: SEP #$30

#_00DB92: JSL HandleFollowersAfterMirroring

#_00DB96: RTL

;===================================================================================================

SheetsTable_AA3:
#_00DB97: db $00, $49, $00, $00
#_00DB9B: db $46, $49, $0C, $1D
#_00DB9F: db $48, $49, $13, $1D
#_00DBA3: db $46, $49, $13, $0E
#_00DBA7: db $48, $49, $0C, $11
#_00DBAB: db $48, $49, $0C, $10
#_00DBAF: db $4F, $49, $4A, $50
#_00DBB3: db $0E, $49, $4A, $11
#_00DBB7: db $46, $49, $12, $00
#_00DBBB: db $00, $49, $00, $50
#_00DBBF: db $00, $49, $00, $11
#_00DBC3: db $48, $49, $0C, $00
#_00DBC7: db $00, $00, $37, $36
#_00DBCB: db $48, $49, $4C, $11
#_00DBCF: db $5D, $2C, $0C, $44
#_00DBD3: db $00, $00, $4E, $00
#_00DBD7: db $0F, $00, $12, $10
#_00DBDB: db $00, $00, $00, $4C
#_00DBDF: db $00, $0D, $17, $00
#_00DBE3: db $16, $0D, $17, $1B
#_00DBE7: db $16, $0D, $17, $14
#_00DBEB: db $15, $0D, $17, $15
#_00DBEF: db $16, $0D, $18, $19
#_00DBF3: db $16, $0D, $17, $19
#_00DBF7: db $16, $0D, $00, $00
#_00DBFB: db $16, $0D, $18, $1B
#_00DBFF: db $0F, $49, $4A, $11
#_00DC03: db $4B, $2A, $5C, $15
#_00DC07: db $16, $49, $17, $1D
#_00DC0B: db $00, $00, $00, $15
#_00DC0F: db $16, $0D, $17, $10
#_00DC13: db $16, $49, $12, $00
#_00DC17: db $16, $49, $0C, $11
#_00DC1B: db $00, $00, $12, $10
#_00DC1F: db $16, $0D, $00, $11
#_00DC23: db $16, $49, $0C, $00
#_00DC27: db $16, $0D, $4C, $11
#_00DC2B: db $0E, $0D, $4A, $11
#_00DC2F: db $16, $1A, $17, $1B
#_00DC33: db $4F, $34, $4A, $50
#_00DC37: db $35, $4D, $65, $36
#_00DC3B: db $4A, $34, $4E, $00
#_00DC3F: db $0E, $34, $4A, $11
#_00DC43: db $51, $34, $5D, $59
#_00DC47: db $4B, $49, $4C, $11
#_00DC4B: db $2D, $00, $00, $00
#_00DC4F: db $5D, $00, $12, $59
#_00DC53: db $00, $00, $00, $00
#_00DC57: db $00, $00, $00, $00
#_00DC5B: db $00, $00, $00, $00
#_00DC5F: db $00, $00, $00, $00
#_00DC63: db $00, $00, $00, $00
#_00DC67: db $00, $00, $00, $00
#_00DC6B: db $00, $00, $00, $00
#_00DC6F: db $00, $00, $00, $00
#_00DC73: db $00, $00, $00, $00
#_00DC77: db $00, $00, $00, $00
#_00DC7B: db $00, $00, $00, $00
#_00DC7F: db $00, $00, $00, $00
#_00DC83: db $00, $00, $00, $00
#_00DC87: db $00, $00, $00, $00
#_00DC8B: db $00, $00, $00, $00
#_00DC8F: db $00, $00, $00, $00
#_00DC93: db $00, $00, $00, $00
#_00DC97: db $47, $49, $2B, $2D
#_00DC9B: db $46, $49, $1C, $52
#_00DC9F: db $00, $49, $1C, $52
#_00DCA3: db $5D, $49, $00, $52
#_00DCA7: db $46, $49, $13, $52
#_00DCAB: db $4B, $4D, $4A, $5A
#_00DCAF: db $47, $49, $1C, $52
#_00DCB3: db $4B, $4D, $39, $36
#_00DCB7: db $1F, $2C, $2E, $52
#_00DCBB: db $1F, $2C, $2E, $1D
#_00DCBF: db $2F, $2C, $2E, $52
#_00DCC3: db $2F, $2C, $2E, $31
#_00DCC7: db $1F, $1E, $30, $52
#_00DCCB: db $51, $49, $13, $00
#_00DCCF: db $4F, $49, $13, $50
#_00DCD3: db $4F, $4D, $4A, $50
#_00DCD7: db $4B, $49, $4C, $2B
#_00DCDB: db $1F, $20, $22, $53
#_00DCDF: db $55, $3D, $42, $43
#_00DCE3: db $1F, $1E, $23, $52
#_00DCE7: db $1F, $1E, $39, $3A
#_00DCEB: db $1F, $1E, $3A, $3E
#_00DCEF: db $1F, $1E, $3C, $3D
#_00DCF3: db $40, $1E, $27, $3F
#_00DCF7: db $55, $1A, $42, $43
#_00DCFB: db $1F, $1E, $2A, $52
#_00DCFF: db $1F, $1E, $38, $52
#_00DD03: db $1F, $20, $28, $52
#_00DD07: db $1F, $20, $26, $52
#_00DD0B: db $1F, $2C, $25, $52
#_00DD0F: db $1F, $20, $27, $52
#_00DD13: db $1F, $1E, $29, $52
#_00DD17: db $1F, $2C, $3B, $52
#_00DD1B: db $46, $49, $24, $52
#_00DD1F: db $21, $41, $45, $33
#_00DD23: db $1F, $2C, $28, $31
#_00DD27: db $1F, $0D, $29, $52
#_00DD2B: db $1F, $1E, $27, $52
#_00DD2F: db $1F, $20, $27, $53
#_00DD33: db $48, $49, $13, $52
#_00DD37: db $0E, $1E, $4A, $50
#_00DD3B: db $1F, $20, $26, $53
#_00DD3F: db $15, $00, $00, $00
#_00DD43: db $1F, $00, $2A, $52
#_00DD47: db $00, $00, $00, $00
#_00DD4B: db $00, $00, $00, $00
#_00DD4F: db $00, $00, $00, $00
#_00DD53: db $00, $00, $00, $00
#_00DD57: db $00, $00, $00, $00
#_00DD5B: db $00, $00, $00, $00
#_00DD5F: db $00, $00, $00, $00
#_00DD63: db $00, $00, $00, $00
#_00DD67: db $00, $00, $00, $00
#_00DD6B: db $00, $00, $00, $00
#_00DD6F: db $00, $00, $00, $00
#_00DD73: db $00, $00, $00, $00
#_00DD77: db $00, $00, $00, $00
#_00DD7B: db $00, $00, $00, $00
#_00DD7F: db $00, $00, $00, $00
#_00DD83: db $00, $00, $00, $00
#_00DD87: db $00, $00, $00, $00
#_00DD8B: db $00, $00, $00, $08
#_00DD8F: db $5D, $49, $00, $52
#_00DD93: db $55, $49, $42, $43
#_00DD97: db $61, $62, $63, $50
#_00DD9B: db $61, $62, $63, $50
#_00DD9F: db $61, $62, $63, $50
#_00DDA3: db $61, $62, $63, $50
#_00DDA7: db $61, $62, $63, $50
#_00DDAB: db $61, $62, $63, $50
#_00DDAF: db $61, $56, $57, $50
#_00DDB3: db $61, $62, $63, $50
#_00DDB7: db $61, $62, $63, $50
#_00DDBB: db $61, $56, $57, $50
#_00DDBF: db $61, $56, $63, $50
#_00DDC3: db $61, $56, $57, $50
#_00DDC7: db $61, $56, $33, $50
#_00DDCB: db $61, $56, $57, $50
#_00DDCF: db $61, $62, $63, $50
#_00DDD3: db $61, $62, $63, $50

;===================================================================================================

SheetsTable_AA2:
#_00DDD7: db $06, $00, $1F, $18
#_00DDDB: db $08, $00, $22, $1B
#_00DDDF: db $06, $00, $1F, $18
#_00DDE3: db $07, $00, $23, $1C
#_00DDE7: db $07, $00, $21, $18
#_00DDEB: db $09, $00, $20, $19
#_00DDEF: db $0B, $00, $21, $1A
#_00DDF3: db $0C, $00, $24, $19
#_00DDF7: db $08, $00, $22, $1B
#_00DDFB: db $0C, $00, $25, $1B
#_00DDFF: db $0C, $00, $26, $1B
#_00DE03: db $0A, $00, $27, $1D
#_00DE07: db $0A, $00, $28, $1E
#_00DE0B: db $0B, $00, $29, $16
#_00DE0F: db $0D, $00, $2A, $18
#_00DE13: db $07, $00, $23, $1C
#_00DE17: db $07, $00, $04, $05
#_00DE1B: db $07, $00, $04, $05
#_00DE1F: db $09, $00, $20, $1B
#_00DE23: db $09, $00, $2A, $17
#_00DE27: db $0B, $00, $21, $1C
#_00DE2B: db $09, $00, $20, $19
#_00DE2F: db $0B, $00, $21, $1A
#_00DE33: db $09, $00, $24, $1B
#_00DE37: db $08, $00, $22, $1B
#_00DE3B: db $09, $00, $25, $1B
#_00DE3F: db $09, $00, $26, $1B
#_00DE43: db $0A, $00, $27, $1D
#_00DE47: db $09, $00, $28, $1E
#_00DE4B: db $0C, $00, $29, $16
#_00DE4F: db $0D, $00, $2A, $17
#_00DE53: db $72, $00, $2B, $5D
#_00DE57: db $00, $00, $00, $00
#_00DE5B: db $00, $57, $4C, $00
#_00DE5F: db $00, $56, $4F, $00
#_00DE63: db $00, $53, $4D, $00
#_00DE67: db $00, $52, $49, $00
#_00DE6B: db $00, $55, $4A, $00
#_00DE6F: db $00, $53, $54, $00
#_00DE73: db $00, $51, $4E, $00
#_00DE77: db $00, $00, $00, $00
#_00DE7B: db $00, $50, $4B, $00
#_00DE7F: db $00, $53, $4D, $00
#_00DE83: db $00, $55, $54, $00
#_00DE87: db $00, $00, $00, $00
#_00DE8B: db $00, $00, $00, $00
#_00DE8F: db $00, $00, $00, $00
#_00DE93: db $00, $47, $48, $00
#_00DE97: db $00, $00, $00, $00
#_00DE9B: db $00, $57, $4C, $00
#_00DE9F: db $00, $56, $4F, $00
#_00DEA3: db $00, $53, $4D, $00
#_00DEA7: db $00, $52, $49, $00
#_00DEAB: db $00, $55, $4A, $00
#_00DEAF: db $00, $53, $54, $00
#_00DEB3: db $00, $51, $4E, $00
#_00DEB7: db $00, $00, $00, $00
#_00DEBB: db $00, $50, $4B, $00
#_00DEBF: db $00, $53, $00, $00
#_00DEC3: db $00, $35, $36, $00
#_00DEC7: db $00, $60, $34, $00
#_00DECB: db $00, $2B, $2C, $00
#_00DECF: db $00, $2D, $2E, $00
#_00DED3: db $00, $2F, $30, $00
#_00DED7: db $00, $37, $38, $00
#_00DEDB: db $00, $33, $34, $00
#_00DEDF: db $00, $31, $32, $00
#_00DEE3: db $00, $00, $00, $00
#_00DEE7: db $00, $00, $00, $00
#_00DEEB: db $00, $00, $00, $00
#_00DEEF: db $00, $00, $00, $00
#_00DEF3: db $00, $00, $00, $00
#_00DEF7: db $00, $00, $00, $00
#_00DEFB: db $00, $00, $00, $00
#_00DEFF: db $00, $00, $00, $00
#_00DF03: db $00, $00, $00, $00
#_00DF07: db $00, $00, $00, $00
#_00DF0B: db $00, $00, $00, $00
#_00DF0F: db $00, $00, $00, $00
#_00DF13: db $00, $00, $00, $00
#_00DF17: db $72, $71, $72, $71
#_00DF1B: db $72, $40, $41, $39

;===================================================================================================

pool Graphics_IncrementalVRAMUpload

.vram_address_high
#_00DF1F: db VRAMaddr($A000)>>8 ; $50
#_00DF20: db VRAMaddr($A200)>>8 ; $51
#_00DF21: db VRAMaddr($A400)>>8 ; $52
#_00DF22: db VRAMaddr($A600)>>8 ; $53
#_00DF23: db VRAMaddr($A800)>>8 ; $54
#_00DF24: db VRAMaddr($AA00)>>8 ; $55
#_00DF25: db VRAMaddr($AC00)>>8 ; $56
#_00DF26: db VRAMaddr($AE00)>>8 ; $57
#_00DF27: db VRAMaddr($B000)>>8 ; $58
#_00DF28: db VRAMaddr($B200)>>8 ; $59
#_00DF29: db VRAMaddr($B400)>>8 ; $5A
#_00DF2A: db VRAMaddr($B600)>>8 ; $5B
#_00DF2B: db VRAMaddr($B800)>>8 ; $5C
#_00DF2C: db VRAMaddr($BA00)>>8 ; $5D
#_00DF2D: db VRAMaddr($BC00)>>8 ; $5E
#_00DF2E: db VRAMaddr($BE00)>>8 ; $5F

;---------------------------------------------------------------------------------------------------

.buffer_address_high
#_00DF2F: db $7F0000>>8 ; $50
#_00DF30: db $7F0200>>8 ; $51
#_00DF31: db $7F0400>>8 ; $52
#_00DF32: db $7F0600>>8 ; $53
#_00DF33: db $7F0800>>8 ; $54
#_00DF34: db $7F0A00>>8 ; $55
#_00DF35: db $7F0C00>>8 ; $56
#_00DF36: db $7F0E00>>8 ; $57
#_00DF37: db $7F1000>>8 ; $58
#_00DF38: db $7F1200>>8 ; $59
#_00DF39: db $7F1400>>8 ; $5A
#_00DF3A: db $7F1600>>8 ; $5B
#_00DF3B: db $7F1800>>8 ; $5C
#_00DF3C: db $7F1A00>>8 ; $5D
#_00DF3D: db $7F1C00>>8 ; $5E
#_00DF3E: db $7F1E00>>8 ; $5F

pool off

;---------------------------------------------------------------------------------------------------

Graphics_IncrementalVRAMUpload:
#_00DF3F: LDX.w $0412
#_00DF42: CPX.b #$10
#_00DF44: BEQ .exit

#_00DF46: LDA.l .vram_address_high,X
#_00DF4A: STA.b $19

#_00DF4C: STZ.w $0118

#_00DF4F: LDA.l .buffer_address_high,X
#_00DF53: STA.w $0119

#_00DF56: INC.w $0412

.exit
#_00DF59: RTL

;===================================================================================================
; TODO document routine
; needs better name too
;===================================================================================================
PrepTransAuxGfx:
#_00DF5A: LDA.b #$7E
#_00DF5C: STA.b $02
#_00DF5E: STA.b $05

#_00DF60: REP #$31

#_00DF62: LDX.w #$0000
#_00DF65: LDY.w #$0040
#_00DF68: LDA.w #$7E6000
#_00DF6B: JSR Do3To4High16Bit

#_00DF6E: LDY.w #$00C0

#_00DF71: LDA.w $0AA2
#_00DF74: AND.w #$00FF
#_00DF77: CMP.w #$0020
#_00DF7A: BCC .left_side_palettes

#_00DF7C: LDY.w #$0080

#_00DF7F: LDA.b $03
#_00DF81: JSR Do3To4High16Bit

#_00DF84: LDY.w #$0040

.left_side_palettes
#_00DF87: LDA.b $03
#_00DF89: JSR Do3To4Low16Bit

#_00DF8C: SEP #$30

#_00DF8E: RTL

;===================================================================================================
; TODO document routine/better name
;===================================================================================================
Do3To4High16Bit:
#_00DF8F: STY.b $0C

.next_tile
#_00DF91: STA.b $00

#_00DF93: CLC
#_00DF94: ADC.w #$0010
#_00DF97: STA.b $03

#_00DF99: LDY.w #$0003

.next_convert
#_00DF9C: LDA.b [$00]
#_00DF9E: STA.l $7F0000,X

#_00DFA2: XBA
#_00DFA3: ORA.b [$00]
#_00DFA5: AND.w #$00FF
#_00DFA8: STA.b $08

#_00DFAA: INC.b $00
#_00DFAC: INC.b $00

#_00DFAE: LDA.b [$03]
#_00DFB0: AND.w #$00FF
#_00DFB3: STA.b $0A

#_00DFB5: ORA.b $08
#_00DFB7: XBA
#_00DFB8: ORA.b $0A
#_00DFBA: STA.l $7F0010,X

#_00DFBE: INC.b $03

#_00DFC0: INX
#_00DFC1: INX

#_00DFC2: LDA.b [$00]
#_00DFC4: STA.l $7F0000,X

#_00DFC8: XBA
#_00DFC9: ORA.b [$00]
#_00DFCB: AND.w #$00FF
#_00DFCE: STA.b $08

#_00DFD0: INC.b $00
#_00DFD2: INC.b $00

#_00DFD4: LDA.b [$03]
#_00DFD6: AND.w #$00FF
#_00DFD9: STA.b $0A

#_00DFDB: ORA.b $08
#_00DFDD: XBA
#_00DFDE: ORA.b $0A
#_00DFE0: STA.l $7F0010,X

#_00DFE4: INC.b $03

#_00DFE6: INX
#_00DFE7: INX

#_00DFE8: DEY
#_00DFE9: BPL .next_convert

#_00DFEB: TXA
#_00DFEC: CLC
#_00DFED: ADC.w #$0010
#_00DFF0: TAX

#_00DFF1: LDA.b $03

#_00DFF3: DEC.b $0C
#_00DFF5: BNE .next_tile

#_00DFF7: RTS

;===================================================================================================
; TODO document routine/better name
;===================================================================================================
Do3To4Low16Bit:
#_00DFF8: STY.b $0C

.next_tile
#_00DFFA: STA.b $00

#_00DFFC: CLC
#_00DFFD: ADC.w #$0010
#_00E000: STA.b $03

#_00E002: LDY.w #$0001

.next_convert
#_00E005: LDA.b [$00]
#_00E007: STA.l $7F0000,X

#_00E00B: INC.b $00
#_00E00D: INC.b $00

#_00E00F: LDA.b [$03]
#_00E011: AND.w #$00FF
#_00E014: STA.l $7F0010,X

#_00E018: INC.b $03

#_00E01A: INX
#_00E01B: INX

#_00E01C: LDA.b [$00]
#_00E01E: STA.l $7F0000,X

#_00E022: INC.b $00
#_00E024: INC.b $00

#_00E026: LDA.b [$03]
#_00E028: AND.w #$00FF
#_00E02B: STA.l $7F0010,X

#_00E02F: INC.b $03

#_00E031: INX
#_00E032: INX

#_00E033: LDA.b [$00]
#_00E035: STA.l $7F0000,X

#_00E039: INC.b $00
#_00E03B: INC.b $00

#_00E03D: LDA.b [$03]
#_00E03F: AND.w #$00FF
#_00E042: STA.l $7F0010,X

#_00E046: INC.b $03

#_00E048: INX
#_00E049: INX

#_00E04A: LDA.b [$00]
#_00E04C: STA.l $7F0000,X

#_00E050: INC.b $00
#_00E052: INC.b $00

#_00E054: LDA.b [$03]
#_00E056: AND.w #$00FF
#_00E059: STA.l $7F0010,X

#_00E05D: INC.b $03

#_00E05F: INX
#_00E060: INX

#_00E061: DEY
#_00E062: BPL .next_convert

#_00E064: TXA
#_00E065: CLC
#_00E066: ADC.w #$0010
#_00E069: TAX

#_00E06A: LDA.b $03

#_00E06C: DEC.b $0C
#_00E06E: BNE .next_tile

#_00E070: RTS

;===================================================================================================

LoadNewSpriteGFXSet:
#_00E071: LDA.b #$7E
#_00E073: STA.b $02
#_00E075: STA.b $05

#_00E077: REP #$31

#_00E079: LDX.w #$0000

#_00E07C: LDA.w #$7E7800
#_00E07F: LDY.w #$00C0
#_00E082: JSR Do3To4Low16Bit

#_00E085: LDY.w #$0040

#_00E088: LDA.l $7EC2FF
#_00E08C: AND.w #$00FF
#_00E08F: CMP.w #$0052
#_00E092: BEQ .right_side

#_00E094: CMP.w #$0053
#_00E097: BEQ .right_side

#_00E099: CMP.w #$005A
#_00E09C: BEQ .right_side

#_00E09E: CMP.w #$005B
#_00E0A1: BNE .left_side

.right_side
#_00E0A3: LDA.b $03
#_00E0A5: JSR Do3To4High16Bit

#_00E0A8: SEP #$30

#_00E0AA: RTL

.left_side
#_00E0AB: LDA.b $03
#_00E0AD: JSR Do3To4Low16Bit

#_00E0B0: SEP #$30

#_00E0B2: RTL

;===================================================================================================

SheetsTable_AA1:
#_00E0B3: db $00, $01, $10, $06, $0E, $1F, $18, $0F
#_00E0BB: db $00, $01, $10, $08, $0E, $22, $1B, $0F
#_00E0C3: db $00, $01, $10, $06, $0E, $1F, $18, $0F
#_00E0CB: db $00, $01, $13, $07, $0E, $23, $1C, $0F
#_00E0D3: db $00, $01, $10, $07, $0E, $21, $18, $0F
#_00E0DB: db $00, $01, $10, $09, $0E, $20, $19, $0F
#_00E0E3: db $02, $03, $12, $0B, $0E, $21, $1A, $0F
#_00E0EB: db $00, $01, $11, $0C, $0E, $24, $1B, $0F
#_00E0F3: db $00, $01, $11, $08, $0E, $22, $1B, $0F
#_00E0FB: db $00, $01, $11, $0C, $0E, $25, $1A, $0F
#_00E103: db $00, $01, $11, $0C, $0E, $26, $1B, $0F
#_00E10B: db $00, $01, $14, $0A, $0E, $27, $1D, $0F
#_00E113: db $00, $01, $11, $0A, $0E, $28, $1E, $0F
#_00E11B: db $02, $03, $12, $0B, $0E, $29, $16, $0F
#_00E123: db $00, $01, $15, $0D, $0E, $2A, $18, $0F
#_00E12B: db $00, $01, $10, $07, $0E, $23, $1C, $0F
#_00E133: db $00, $01, $13, $07, $0E, $04, $05, $0F
#_00E13B: db $00, $01, $13, $07, $0E, $04, $05, $0F
#_00E143: db $00, $01, $10, $09, $0E, $20, $1B, $0F
#_00E14B: db $00, $01, $10, $09, $0E, $2A, $17, $0F
#_00E153: db $02, $03, $12, $0B, $0E, $21, $1C, $0F
#_00E15B: db $00, $08, $11, $1B, $22, $2E, $5D, $5B
#_00E163: db $00, $08, $10, $18, $20, $2B, $5D, $5B
#_00E16B: db $00, $08, $10, $18, $20, $2B, $5D, $5B
#_00E173: db $3A, $3B, $3C, $3D, $53, $4D, $3E, $5B
#_00E17B: db $42, $43, $44, $45, $20, $2B, $3F, $5D
#_00E183: db $00, $08, $10, $18, $20, $2B, $5D, $5B
#_00E18B: db $00, $08, $10, $18, $20, $2B, $5D, $5B
#_00E193: db $00, $08, $10, $18, $20, $2B, $5D, $5B
#_00E19B: db $00, $08, $10, $18, $20, $2B, $5D, $5B
#_00E1A3: db $00, $08, $10, $18, $20, $2B, $5D, $5B
#_00E1AB: db $71, $72, $71, $72, $20, $2B, $5D, $5B
#_00E1B3: db $3A, $3B, $3C, $3D, $53, $4D, $3E, $5B
#_00E1BB: db $42, $43, $44, $45, $20, $2B, $3F, $59
#_00E1C3: db $00, $72, $71, $72, $20, $2B, $5D, $0F
#_00E1CB: db $00, $39, $39, $72, $40, $41, $39, $0F
#_00E1D3: db $00, $46, $39, $72, $40, $41, $39, $0F

;===================================================================================================
; TODO document routine
;===================================================================================================
InitializeTilesets:
#_00E1DB: PHB
#_00E1DC: PHK
#_00E1DD: PLB

#_00E1DE: LDA.b #$80
#_00E1E0: STA.w VMAIN

#_00E1E3: STZ.w VMADDL

#_00E1E6: LDA.b #VRAMaddr($8800)>>8
#_00E1E8: STA.w VMADDH

#_00E1EB: JSR LoadCommonSprites

#_00E1EE: REP #$30

#_00E1F0: LDA.w $0AA3
#_00E1F3: AND.w #$00FF
#_00E1F6: ASL A
#_00E1F7: ASL A
#_00E1F8: TAY

#_00E1F9: SEP #$20

#_00E1FB: LDA.w SheetsTable_AA3+0,Y
#_00E1FE: BEQ .dont_change_a

#_00E200: STA.l $7EC2FC

.dont_change_a
#_00E204: LDA.l $7EC2FC
#_00E208: STA.b $09

#_00E20A: LDA.w SheetsTable_AA3+1,Y
#_00E20D: BEQ .dont_change_b

#_00E20F: STA.l $7EC2FD

.dont_change_b
#_00E213: LDA.l $7EC2FD
#_00E217: STA.b $08

#_00E219: LDA.w SheetsTable_AA3+2,Y
#_00E21C: BEQ .dont_change_c

#_00E21E: STA.l $7EC2FE

.dont_change_c
#_00E222: LDA.l $7EC2FE
#_00E226: STA.b $07

#_00E228: LDA.w SheetsTable_AA3+3,Y
#_00E22B: BEQ .dont_change_d

#_00E22D: STA.l $7EC2FF

.dont_change_d
#_00E231: LDA.l $7EC2FF
#_00E235: STA.b $06

;---------------------------------------------------------------------------------------------------

#_00E237: SEP #$10

#_00E239: LDY.b $09

#_00E23B: LDA.b #$7E
#_00E23D: STA.b $02

#_00E23F: LDX.b #$78
#_00E241: JSR LoadSpriteGraphics

#_00E244: LDY.b $08
#_00E246: LDX.b #$7E
#_00E248: JSR LoadSpriteGraphics

#_00E24B: LDY.b $07
#_00E24D: LDX.b #$84
#_00E24F: JSR LoadSpriteGraphics

#_00E252: LDY.b $06
#_00E254: LDX.b #$8A
#_00E256: JSR LoadSpriteGraphics

#_00E259: REP #$30

#_00E25B: LDA.w #VRAMaddr($4000)
#_00E25E: STA.w VMADDR

#_00E261: LDA.w $0AA1
#_00E264: AND.w #$00FF
#_00E267: ASL A
#_00E268: ASL A
#_00E269: ASL A
#_00E26A: TAY

#_00E26B: LDA.w $0AA2
#_00E26E: AND.w #$00FF
#_00E271: ASL A
#_00E272: ASL A
#_00E273: TAX

#_00E274: SEP #$20

#_00E276: LDA.w SheetsTable_AA1+0,Y
#_00E279: STA.b $0D

#_00E27B: LDA.w SheetsTable_AA1+1,Y
#_00E27E: STA.b $0C

#_00E280: LDA.w SheetsTable_AA1+2,Y
#_00E283: STA.b $0B

#_00E285: LDA.w SheetsTable_AA2+0,X
#_00E288: BNE .not_default_a

#_00E28A: LDA.w SheetsTable_AA1+3,Y

.not_default_a
#_00E28D: STA.l $7EC2F8
#_00E291: STA.b $0A

#_00E293: LDA.w SheetsTable_AA2+1,X
#_00E296: BNE .not_default_b

#_00E298: LDA.w SheetsTable_AA1+4,Y

.not_default_b
#_00E29B: STA.l $7EC2F9
#_00E29F: STA.b $09

#_00E2A1: LDA.w SheetsTable_AA2+2,X
#_00E2A4: BNE .not_default_c

#_00E2A6: LDA.w SheetsTable_AA1+5,Y

.not_default_c
#_00E2A9: STA.l $7EC2FA
#_00E2AD: STA.b $08

#_00E2AF: LDA.w SheetsTable_AA2+3,X
#_00E2B2: BNE .not_default_d

#_00E2B4: LDA.w SheetsTable_AA1+6,Y

.not_default_d
#_00E2B7: STA.l $7EC2FB
#_00E2BB: STA.b $07

;---------------------------------------------------------------------------------------------------

#_00E2BD: LDA.w SheetsTable_AA1+7,Y
#_00E2C0: STA.b $06

#_00E2C2: SEP #$10

#_00E2C4: LDA.b #$07
#_00E2C6: STA.b $0F

#_00E2C8: LDY.b $0D
#_00E2CA: JSR LoadBackgroundGraphics

#_00E2CD: DEC.b $0F

#_00E2CF: LDY.b $0C
#_00E2D1: JSR LoadBackgroundGraphics

#_00E2D4: DEC.b $0F

#_00E2D6: LDY.b $0B
#_00E2D8: JSR LoadBackgroundGraphics

#_00E2DB: DEC.b $0F

#_00E2DD: LDY.b $0A
#_00E2DF: LDA.b #$7E
#_00E2E1: LDX.b #$60
#_00E2E3: JSR LoadBackgroundGraphics_arbitrary

#_00E2E6: DEC.b $0F

#_00E2E8: LDY.b $09
#_00E2EA: LDA.b #$7E
#_00E2EC: LDX.b #$66
#_00E2EE: JSR LoadBackgroundGraphics_arbitrary

#_00E2F1: DEC.b $0F

#_00E2F3: LDY.b $08
#_00E2F5: LDA.b #$7E
#_00E2F7: LDX.b #$6C
#_00E2F9: JSR LoadBackgroundGraphics_arbitrary

#_00E2FC: DEC.b $0F

#_00E2FE: LDY.b $07
#_00E300: LDA.b #$7E
#_00E302: LDX.b #$72
#_00E304: JSR LoadBackgroundGraphics_arbitrary

#_00E307: DEC.b $0F

#_00E309: LDY.b $06
#_00E30B: JSR LoadBackgroundGraphics

#_00E30E: PLB

#_00E30F: RTL

;===================================================================================================

LoadDefaultGraphics:
#_00E310: PHB
#_00E311: PHK
#_00E312: PLB

#_00E313: LDA.b #$80
#_00E315: STA.w VMAIN

#_00E318: LDA.w GFXSheetPointers_sprite_bank
#_00E31B: STA.b $02

#_00E31D: LDA.w GFXSheetPointers_sprite_high
#_00E320: STA.b $01

#_00E322: LDA.w GFXSheetPointers_sprite_low
#_00E325: STA.b $00

#_00E327: REP #$20

#_00E329: LDA.w #VRAMaddr($8000)
#_00E32C: STA.w VMADDR

#_00E32F: LDY.b #$40

;---------------------------------------------------------------------------------------------------

.next_tile
#_00E331: LDX.b #$0E

.next_planes_a
#_00E333: LDA.b [$00]
#_00E335: STA.w VMDATA

#_00E338: XBA
#_00E339: ORA.b [$00]
#_00E33B: AND.w #$00FF
#_00E33E: STA.b $BF,X

#_00E340: INC.b $00
#_00E342: INC.b $00

#_00E344: DEX
#_00E345: DEX
#_00E346: BPL .next_planes_a

#_00E348: LDX.b #$0E

.next_planes_b
#_00E34A: LDA.b [$00]
#_00E34C: AND.w #$00FF
#_00E34F: STA.b $BD

#_00E351: ORA.b $BF,X
#_00E353: XBA
#_00E354: ORA.b $BD
#_00E356: STA.w VMDATA

#_00E359: INC.b $00

#_00E35B: DEX
#_00E35C: DEX
#_00E35D: BPL .next_planes_b

#_00E35F: DEY
#_00E360: BNE .next_tile

;---------------------------------------------------------------------------------------------------

#_00E362: LDA.w #VRAMaddr($E000)
#_00E365: STA.w VMADDR

#_00E368: SEP #$20

#_00E36A: LDY.b #$6A
#_00E36C: JSR DecompressAndCopyManually

#_00E36F: LDY.b #$6B
#_00E371: JSR DecompressAndCopyManually

#_00E374: LDY.b #$69
#_00E376: JSR DecompressAndCopyManually

#_00E379: PLB

#_00E37A: RTL

;===================================================================================================

DecompressAndCopyManually:
#_00E37B: JSR Decompress_sprite_low

#_00E37E: REP #$30

#_00E380: LDX.w #$00FF

.copy_next
#_00E383: LDA.b [$00]
#_00E385: STA.w VMDATA

#_00E388: INC.b $00
#_00E38A: INC.b $00

#_00E38C: LDA.b [$00]
#_00E38E: STA.w VMDATA

#_00E391: INC.b $00
#_00E393: INC.b $00

#_00E395: LDA.b [$00]
#_00E397: STA.w VMDATA

#_00E39A: INC.b $00
#_00E39C: INC.b $00

#_00E39E: LDA.b [$00]
#_00E3A0: STA.w VMDATA

#_00E3A3: INC.b $00
#_00E3A5: INC.b $00

#_00E3A7: DEX
#_00E3A8: BPL .copy_next

#_00E3AA: SEP #$30

#_00E3AC: RTS

;===================================================================================================

Attract_LoadBG3GFX:
#_00E3AD: PHB
#_00E3AE: PHK
#_00E3AF: PLB

#_00E3B0: LDA.b #$80
#_00E3B2: STA.w VMAIN
#_00E3B5: STZ.w VMADDL

#_00E3B8: LDA.b #$78
#_00E3BA: STA.w VMADDH

#_00E3BD: LDY.b #$67
#_00E3BF: JSR DecompressAndCopyManually

#_00E3C2: PLB

#_00E3C3: RTL

;===================================================================================================

LoadCommonSprites_long:
#_00E3C4: PHB
#_00E3C5: PHK
#_00E3C6: PLB

#_00E3C7: LDA.b #$80
#_00E3C9: STA.w VMAIN

#_00E3CC: STZ.w VMADDL

#_00E3CF: LDA.b #VRAMaddr($8800)>>8 ; #$44
#_00E3D1: STA.w VMADDH

#_00E3D4: JSR LoadCommonSprites

#_00E3D7: PLB

#_00E3D8: RTL

;===================================================================================================

TransferMode7Characters:
#_00E3D9: LDA.b #WorldMap_Mode7TileGFX>>16
#_00E3DB: STA.b $02

#_00E3DD: LDA.b #$80
#_00E3DF: STA.w VMAIN

#_00E3E2: STZ.w VMADDL
#_00E3E5: STZ.w VMADDH

#_00E3E8: REP #$10

#_00E3EA: LDY.w #WorldMap_Mode7TileGFX>>0
#_00E3ED: STY.b $00

;---------------------------------------------------------------------------------------------------

#_00E3EF: LDY.w #$0000

.next
#_00E3F2: LDA.b [$00],Y
#_00E3F4: STA.w VMDATAH

#_00E3F7: INY
#_00E3F8: LDA.b [$00],Y
#_00E3FA: STA.w VMDATAH

#_00E3FD: INY
#_00E3FE: LDA.b [$00],Y
#_00E400: STA.w VMDATAH

#_00E403: INY
#_00E404: LDA.b [$00],Y
#_00E406: STA.w VMDATAH

#_00E409: INY
#_00E40A: CPY.w #$4000
#_00E40D: BNE .next

#_00E40F: SEP #$10

;---------------------------------------------------------------------------------------------------

#EXIT_00E411:
#_00E411: RTL

;===================================================================================================

pool Graphics_LoadChrHalfSlot

.sheet_id
#_00E412: db $01 ; 0x74 - Overworld common
#_00E413: db $01 ; 0x74 - Overworld common
#_00E414: db $08 ; 0x7B - Intro
#_00E415: db $08 ; 0x7B - Intro
#_00E416: db $09 ; 0x7C - Unused
#_00E417: db $09 ; 0x7C - Unused
#_00E418: db $02 ; 0x75 - Ether
#_00E419: db $02 ; 0x75 - Ether
#_00E41A: db $02 ; 0x75 - Ether
#_00E41B: db $02 ; 0x75 - Ether
#_00E41C: db $03 ; 0x76 - Bombos
#_00E41D: db $03 ; 0x76 - Bombos
#_00E41E: db $04 ; 0x77 - Quake
#_00E41F: db $04 ; 0x77 - Quake
#_00E420: db $05 ; 0x78 - Game over
#_00E421: db $05 ; 0x78 - Game over
#_00E422: db $08 ; 0x7B - Intro
#_00E423: db $08 ; 0x7B - Intro
#_00E424: db $08 ; 0x7B - Intro
#_00E425: db $08 ; 0x7B - Intro

.palette_id
#_00E426: db $0A ; 0x74 - Overworld common
#_00E427: db $FF ; 0x74 - Overworld common
#_00E428: db $03 ; 0x7B - Intro
#_00E429: db $FF ; 0x7B - Intro
#_00E42A: db $00 ; 0x7C - Unused
#_00E42B: db $FF ; 0x7C - Unused
#_00E42C: db $FF ; 0x75 - Ether
#_00E42D: db $FF ; 0x75 - Ether
#_00E42E: db $01 ; 0x75 - Ether
#_00E42F: db $FF ; 0x75 - Ether
#_00E430: db $02 ; 0x76 - Bombos
#_00E431: db $FF ; 0x76 - Bombos
#_00E432: db $00 ; 0x77 - Quake
#_00E433: db $FF ; 0x77 - Quake
#_00E434: db $FF ; 0x78 - Game over
#_00E435: db $FF ; 0x78 - Game over
#_00E436: db $FF ; 0x7B - Intro
#_00E437: db $FF ; 0x7B - Intro
#_00E438: db $FF ; 0x7B - Intro
#_00E439: db $FF ; 0x7B - Intro

pool off

;---------------------------------------------------------------------------------------------------

Graphics_LoadChrHalfSlot:
#_00E43A: LDX.w $0AAA
#_00E43D: BEQ EXIT_00E411

#_00E43F: PHB
#_00E440: PHK
#_00E441: PLB

#_00E442: LDA.w .palette_id-1,X
#_00E445: BMI .done_palette

#_00E447: STA.w $0AB1

#_00E44A: CPX.b #$01
#_00E44C: BNE .not_sheet_1

#_00E44E: LDA.b #$0A
#_00E450: STA.w $0AB1

#_00E453: LDA.b #$02
#_00E455: STA.w $0AA9

#_00E458: JSL Palettes_Load_SpriteMisc

#_00E45C: INC.b $15

#_00E45E: BRA .done_palette

.not_sheet_1
#_00E460: LDA.b #$02
#_00E462: STA.w $0AA9

#_00E465: JSL Palettes_Load_SpriteMiscSP6

#_00E469: INC.b $15

;---------------------------------------------------------------------------------------------------

.done_palette
#_00E46B: LDX.w $0AAA

#_00E46E: LDY.b #$44

#_00E470: STZ.b $08
#_00E472: STZ.b $09

#_00E474: INC.w $0AAA

#_00E477: LDA.w $0AAA
#_00E47A: LSR A
#_00E47B: BCC .dont_reset_medallion_flags

#_00E47D: STZ.w $0AAA

#_00E480: CPX.b #$12
#_00E482: BEQ .dont_reset_medallion_flags

#_00E484: LDA.b #$03
#_00E486: STA.b $09

#_00E488: LDY.b #$46
#_00E48A: CPX.b #$02
#_00E48C: BNE .dont_reset_medallion_flags

#_00E48E: STZ.w $0112

.dont_reset_medallion_flags
#_00E491: STY.w $0116

#_00E494: LDA.b #$0B
#_00E496: STA.b $17

#_00E498: LDY.w .sheet_id-1,X
#_00E49B: CPY.b #$01
#_00E49D: BNE .dont_reload_from_tileset

#_00E49F: LDY.w $0AA4

.dont_reload_from_tileset
#_00E4A2: LDA.w GFXSheetPointers_sprite_bank,Y
#_00E4A5: STA.b $02
#_00E4A7: STA.b $05

#_00E4A9: LDA.w GFXSheetPointers_sprite_high,Y
#_00E4AC: STA.b $01

#_00E4AE: LDA.w GFXSheetPointers_sprite_low,Y
#_00E4B1: STA.b $00

#_00E4B3: REP #$31

#_00E4B5: LDY.w #$0020
#_00E4B8: STY.b $0C

#_00E4BA: LDX.w #$0000

#_00E4BD: LDA.b $00
#_00E4BF: ADC.b $08

;---------------------------------------------------------------------------------------------------

.next_tile
#_00E4C1: STA.b $00

#_00E4C3: CLC
#_00E4C4: ADC.w #$0010
#_00E4C7: BNE .no_bank_cross_1

#_00E4C9: LDA.w #$8000
#_00E4CC: INC.b $05

.no_bank_cross_1
#_00E4CE: STA.b $03

#_00E4D0: LDY.w #$0007

.next_plane
#_00E4D3: LDA.b [$00]
#_00E4D5: STA.l $7F1000,X

#_00E4D9: XBA
#_00E4DA: ORA.b [$00]
#_00E4DC: AND.w #$00FF
#_00E4DF: STA.b $08

#_00E4E1: INC.b $00
#_00E4E3: INC.b $00
#_00E4E5: BNE .no_bank_cross_2

#_00E4E7: LDA.b $03
#_00E4E9: INC A
#_00E4EA: STA.b $00

#_00E4EC: INC.b $02

#_00E4EE: LDA.b $02
#_00E4F0: STA.b $05

.no_bank_cross_2
#_00E4F2: LDA.b [$03]
#_00E4F4: AND.w #$00FF
#_00E4F7: STA.b $0A

#_00E4F9: ORA.b $08
#_00E4FB: XBA
#_00E4FC: ORA.b $0A
#_00E4FE: STA.l $7F1010,X

#_00E502: INC.b $03
#_00E504: BNE .no_bank_cross_3

#_00E506: LDA.w #$8000
#_00E509: STA.b $00

#_00E50B: LDA.w #$8010
#_00E50E: STA.b $03

#_00E510: INC.b $02
#_00E512: INC.b $05

.no_bank_cross_3
#_00E514: INX
#_00E515: INX

#_00E516: DEY
#_00E517: BPL .next_plane

#_00E519: TXA
#_00E51A: CLC
#_00E51B: ADC.w #$0010
#_00E51E: TAX

#_00E51F: LDA.b $03

#_00E521: DEC.b $0C
#_00E523: BNE .next_tile

#_00E525: SEP #$30

#_00E527: PLB

#_00E528: RTL

;===================================================================================================

LoadFileSelectGraphics:
#_00E529: LDA.b #$02
#_00E52B: STA.w OBSEL

#_00E52E: LDA.b #$80
#_00E530: STA.w VMAIN
#_00E533: STZ.w VMADDL

#_00E536: LDA.b #VRAMaddr($A000)>>8 ; #$50
#_00E538: STA.w VMADDH

;---------------------------------------------------------------------------------------------------

#_00E53B: PHB
#_00E53C: PHK
#_00E53D: PLB

#_00E53E: LDY.b #$5E
#_00E540: JSR Decompress_sprite_low

#_00E543: REP #$20

#_00E545: LDY.b #$3F
#_00E547: JSR Do3To4High

#_00E54A: LDY.b #$5F
#_00E54C: JSR Decompress_sprite_low

#_00E54F: REP #$20

#_00E551: LDY.b #$3F
#_00E553: JSR Do3To4High

#_00E556: PLB

;---------------------------------------------------------------------------------------------------

#_00E557: LDA.b #$7E
#_00E559: STA.b $02

#_00E55B: REP #$30

#_00E55D: LDA.w #VRAMaddr($E000)
#_00E560: STA.w VMADDR

#_00E563: LDA.w #$7E2000
#_00E566: STA.b $00

#_00E568: LDX.w #$0CFF

.next_a
#_00E56B: LDA.b [$00]
#_00E56D: STA.w VMDATA

#_00E570: INC.b $00
#_00E572: INC.b $00

#_00E574: DEX
#_00E575: BPL .next_a

;---------------------------------------------------------------------------------------------------

#_00E577: SEP #$30

#_00E579: PHB
#_00E57A: PHK
#_00E57B: PLB

#_00E57C: LDY.b #$6B
#_00E57E: JSR Decompress_sprite_low

#_00E581: REP #$30

#_00E583: LDX.w #$02FF

.next_b
#_00E586: LDA.b [$00]
#_00E588: STA.w VMDATA

#_00E58B: INC.b $00
#_00E58D: INC.b $00

#_00E58F: DEX
#_00E590: BPL .next_b

#_00E592: SEP #$30

#_00E594: PLB

#_00E595: RTL

;===================================================================================================

TransferFontToVRAM:
#_00E596: LDA.b #$02
#_00E598: STA.w OBSEL

#_00E59B: LDA.b #$80
#_00E59D: STA.w VMAIN

#_00E5A0: LDA.b #$7E
#_00E5A2: STA.b $02

#_00E5A4: REP #$30

#_00E5A6: LDA.w #VRAMaddr($E000)
#_00E5A9: STA.w VMADDR

#_00E5AC: LDA.w #$7E2000
#_00E5AF: STA.b $00

#_00E5B1: LDX.w #$0FFF

.next
#_00E5B4: LDA.b [$00]
#_00E5B6: STA.w VMDATA

#_00E5B9: INC.b $00
#_00E5BB: INC.b $00

#_00E5BD: DEX
#_00E5BE: BPL .next

#_00E5C0: SEP #$30

#_00E5C2: RTL

;===================================================================================================

LoadSpriteGraphics:
#_00E5C3: STZ.b $00
#_00E5C5: STX.b $01

#_00E5C7: PHY

#_00E5C8: JSR Decompress_sprite_arbitrary

#_00E5CB: REP #$20

#_00E5CD: LDY.b #$3F

#_00E5CF: PLX

#_00E5D0: CPX.b #$52
#_00E5D2: BEQ Do3To4High

#_00E5D4: CPX.b #$53
#_00E5D6: BEQ Do3To4High

#_00E5D8: CPX.b #$5A
#_00E5DA: BEQ Do3To4High

#_00E5DC: CPX.b #$5B
#_00E5DE: BEQ Do3To4High

#_00E5E0: CPX.b #$5C
#_00E5E2: BEQ Do3To4High

#_00E5E4: CPX.b #$5E
#_00E5E6: BEQ Do3To4High

#_00E5E8: CPX.b #$5F
#_00E5EA: BEQ Do3To4High

#_00E5EC: JMP.w Do3To4Low

;===================================================================================================
; TODO document routine/better name
;===================================================================================================
Do3To4High:
.next_tile
#_00E5EF: LDX.b #$0E

.next_planes_a
#_00E5F1: LDA.b [$00]
#_00E5F3: STA.w VMDATA

#_00E5F6: XBA
#_00E5F7: ORA.b [$00]
#_00E5F9: AND.w #$00FF
#_00E5FC: STA.b $BF,X

#_00E5FE: INC.b $00
#_00E600: INC.b $00

#_00E602: DEX
#_00E603: DEX

#_00E604: LDA.b [$00]
#_00E606: STA.w VMDATA

#_00E609: XBA
#_00E60A: ORA.b [$00]
#_00E60C: AND.w #$00FF
#_00E60F: STA.b $BF,X

#_00E611: INC.b $00
#_00E613: INC.b $00

#_00E615: DEX
#_00E616: DEX
#_00E617: BPL .next_planes_a

;---------------------------------------------------------------------------------------------------

#_00E619: LDX.b #$0E

.next_planes_b
#_00E61B: LDA.b [$00]
#_00E61D: AND.w #$00FF
#_00E620: STA.b $BD

#_00E622: ORA.b $BF,X
#_00E624: XBA
#_00E625: ORA.b $BD
#_00E627: STA.w VMDATA
#_00E62A: INC.b $00

#_00E62C: DEX
#_00E62D: DEX

#_00E62E: LDA.b [$00]
#_00E630: AND.w #$00FF
#_00E633: STA.b $BD

#_00E635: ORA.b $BF,X
#_00E637: XBA
#_00E638: ORA.b $BD
#_00E63A: STA.w VMDATA

#_00E63D: INC.b $00

#_00E63F: DEX
#_00E640: DEX
#_00E641: BPL .next_planes_b

#_00E643: DEY
#_00E644: BPL .next_tile

#_00E646: SEP #$20

#_00E648: RTS

;===================================================================================================

LoadBackgroundGraphics:
#_00E649: LDA.b #$7F4000>>16
#_00E64B: LDX.b #$7F4000>>8

.arbitrary
#_00E64D: STZ.b $00
#_00E64F: STX.b $01
#_00E651: STA.b $02

#_00E653: JSR Decompress_background_arbitrary

#_00E656: REP #$20

#_00E658: LDY.b #$3F

#_00E65A: LDX.w $0AA1
#_00E65D: CPX.b #$20
#_00E65F: BCC .do_low

#_00E661: LDX.b $0F
#_00E663: CPX.b #$07
#_00E665: BEQ Do3To4High

#_00E667: CPX.b #$02
#_00E669: BEQ Do3To4High

#_00E66B: CPX.b #$04
#_00E66D: BEQ Do3To4High

#_00E66F: CPX.b #$03
#_00E671: BNE Do3To4Low

.nevermind_do_high
#_00E673: JMP.w Do3To4High

.do_low
#_00E676: LDX.b $0F
#_00E678: CPX.b #$04
#_00E67A: BCS .nevermind_do_high

;===================================================================================================
; TODO document routine
;===================================================================================================
Do3To4Low:

.next_super
#_00E67C: LDA.b [$00]
#_00E67E: STA.w VMDATA

#_00E681: INC.b $00
#_00E683: INC.b $00

#_00E685: LDA.b [$00]
#_00E687: STA.w VMDATA

#_00E68A: INC.b $00
#_00E68C: INC.b $00

#_00E68E: LDA.b [$00]
#_00E690: STA.w VMDATA

#_00E693: INC.b $00
#_00E695: INC.b $00

#_00E697: LDA.b [$00]
#_00E699: STA.w VMDATA

#_00E69C: INC.b $00
#_00E69E: INC.b $00

#_00E6A0: LDA.b [$00]
#_00E6A2: STA.w VMDATA

#_00E6A5: INC.b $00
#_00E6A7: INC.b $00

#_00E6A9: LDA.b [$00]
#_00E6AB: STA.w VMDATA

#_00E6AE: INC.b $00
#_00E6B0: INC.b $00

#_00E6B2: LDA.b [$00]
#_00E6B4: STA.w VMDATA

#_00E6B7: INC.b $00
#_00E6B9: INC.b $00

#_00E6BB: LDA.b [$00]
#_00E6BD: STA.w VMDATA

#_00E6C0: INC.b $00
#_00E6C2: INC.b $00

;---------------------------------------------------------------------------------------------------

#_00E6C4: LDX.b #$01

.next
#_00E6C6: LDA.b [$00]
#_00E6C8: AND.w #$00FF
#_00E6CB: STA.w VMDATA

#_00E6CE: INC.b $00

#_00E6D0: LDA.b [$00]
#_00E6D2: AND.w #$00FF
#_00E6D5: STA.w VMDATA

#_00E6D8: INC.b $00

#_00E6DA: LDA.b [$00]
#_00E6DC: AND.w #$00FF
#_00E6DF: STA.w VMDATA

#_00E6E2: INC.b $00

#_00E6E4: LDA.b [$00]
#_00E6E6: AND.w #$00FF
#_00E6E9: STA.w VMDATA

#_00E6EC: INC.b $00

#_00E6EE: DEX
#_00E6EF: BPL .next

;---------------------------------------------------------------------------------------------------

#_00E6F1: DEY
#_00E6F2: BPL .next_super

#_00E6F4: SEP #$20

#_00E6F6: RTS

;===================================================================================================
; TODO document routine
;===================================================================================================
LoadCommonSprites:
#_00E6F7: LDY.w $0AA4

#_00E6FA: LDA.w GFXSheetPointers_sprite_bank,Y
#_00E6FD: STA.b $02

#_00E6FF: LDA.w GFXSheetPointers_sprite_high,Y
#_00E702: STA.b $01

#_00E704: LDA.w GFXSheetPointers_sprite_low,Y
#_00E707: STA.b $00

#_00E709: REP #$20

#_00E70B: LDY.b #$40

;---------------------------------------------------------------------------------------------------

.next_tile
#_00E70D: LDX.b #$0E

.next_planes_a
#_00E70F: LDA.b [$00]
#_00E711: STA.w VMDATA

#_00E714: XBA
#_00E715: ORA.b [$00]
#_00E717: AND.w #$00FF
#_00E71A: STA.b $BF,X

#_00E71C: INC.b $00
#_00E71E: INC.b $00

#_00E720: DEX
#_00E721: DEX

#_00E722: LDA.b [$00]
#_00E724: STA.w VMDATA

#_00E727: XBA
#_00E728: ORA.b [$00]
#_00E72A: AND.w #$00FF
#_00E72D: STA.b $BF,X

#_00E72F: INC.b $00
#_00E731: INC.b $00

#_00E733: DEX
#_00E734: DEX
#_00E735: BPL .next_planes_a

;---------------------------------------------------------------------------------------------------

#_00E737: LDX.b #$0E

.next_planes_b
#_00E739: LDA.b [$00]
#_00E73B: AND.w #$00FF
#_00E73E: STA.b $BD

#_00E740: ORA.b $BF,X
#_00E742: XBA
#_00E743: ORA.b $BD
#_00E745: STA.w VMDATA

#_00E748: INC.b $00

#_00E74A: DEX
#_00E74B: DEX

#_00E74C: LDA.b [$00]
#_00E74E: AND.w #$00FF
#_00E751: STA.b $BD

#_00E753: ORA.b $BF,X
#_00E755: XBA
#_00E756: ORA.b $BD
#_00E758: STA.w VMDATA

#_00E75B: INC.b $00

#_00E75D: DEX
#_00E75E: DEX
#_00E75F: BPL .next_planes_b

#_00E761: DEY
#_00E762: BNE .next_tile

;---------------------------------------------------------------------------------------------------

#_00E764: SEP #$20

#_00E766: LDA.b $10
#_00E768: CMP.b #$01
#_00E76A: BEQ .in_file_select

#_00E76C: LDY.b #$06

#_00E76E: LDA.w GFXSheetPointers_sprite_bank,Y
#_00E771: STA.b $02

#_00E773: LDA.w GFXSheetPointers_sprite_high,Y
#_00E776: STA.b $01

#_00E778: LDA.w GFXSheetPointers_sprite_low,Y
#_00E77B: STA.b $00

#_00E77D: REP #$20

#_00E77F: LDY.b #$7F

#_00E781: JMP.w Do3To4Low

;---------------------------------------------------------------------------------------------------

.in_file_select
#_00E784: STZ.b $0F

#_00E786: LDY.b #$5E
#_00E788: STY.b $06

#_00E78A: LDA.b #$7F
#_00E78C: STA.b $02

#_00E78E: LDX.b #$40

#_00E790: JSR LoadSpriteGraphics

#_00E793: LDY.b #$5F
#_00E795: STY.b $06

#_00E797: LDX.b #$40

#_00E799: JMP.w LoadSpriteGraphics

;===================================================================================================

Decompress_sprite_high:
#_00E79C: STZ.b $00

#_00E79E: LDA.b #$7F4600>>8
#_00E7A0: STA.b $01

#_00E7A2: LDA.b #$7F4600>>16
#_00E7A4: BRA .sprite_set_bank

;===================================================================================================

#Decompress_sprite_low:
#_00E7A6: STZ.b $00

#_00E7A8: LDA.b #$40
#_00E7AA: STA.b $01

#_00E7AC: LDA.b #$7F

;---------------------------------------------------------------------------------------------------

.sprite_set_bank
#_00E7AE: STA.b $02
#_00E7B0: STA.b $05

;===================================================================================================

Decompress_sprite_arbitrary:
#_00E7B2: LDA.w GFXSheetPointers_sprite_bank,Y
#_00E7B5: STA.b $CA

#_00E7B7: LDA.w GFXSheetPointers_sprite_high,Y
#_00E7BA: STA.b $C9

#_00E7BC: LDA.w GFXSheetPointers_sprite_low,Y
#_00E7BF: STA.b $C8

#_00E7C1: BRA Decompress

;===================================================================================================

Decompress_background_low:
#_00E7C3: STZ.b $00

#_00E7C5: LDA.b #$7F4000>>8
#_00E7C7: STA.b $01

#_00E7C9: LDA.b #$7F4000>>16

;===================================================================================================

Decompress_background_arbitrary_bank:
#_00E7CB: STA.b $02
#_00E7CD: STA.b $05

;===================================================================================================

Decompress_background_arbitrary:
#_00E7CF: LDA.w GFXSheetPointers_background_bank,Y
#_00E7D2: STA.b $CA

#_00E7D4: LDA.w GFXSheetPointers_background_high,Y
#_00E7D7: STA.b $C9

#_00E7D9: LDA.w GFXSheetPointers_background_low,Y
#_00E7DC: STA.b $C8

;===================================================================================================

Decompress:
#_00E7DE: REP #$10

#_00E7E0: LDY.w #$0000

.next_command
#_00E7E3: JSR Decompression_GetNextByte

#_00E7E6: CMP.b #$FF ; stop decompression
#_00E7E8: BNE .continue

#_00E7EA: SEP #$10

#_00E7EC: RTS

;---------------------------------------------------------------------------------------------------

.continue
#_00E7ED: STA.b $CD

#_00E7EF: AND.b #$E0 ; check for top 3 bits, but this AND is pointless
#_00E7F1: CMP.b #$E0 ; this is a case where just CMP : BCS would work
#_00E7F3: BEQ .expanded

#_00E7F5: PHA

#_00E7F6: LDA.b $CD

#_00E7F8: REP #$20

#_00E7FA: AND.w #$001F

#_00E7FD: BRA .normal

;---------------------------------------------------------------------------------------------------

.expanded
#_00E7FF: LDA.b $CD
#_00E801: ASL A
#_00E802: ASL A
#_00E803: ASL A
#_00E804: AND.b #$E0
#_00E806: PHA

#_00E807: LDA.b $CD
#_00E809: AND.b #$03
#_00E80B: XBA

#_00E80C: JSR Decompression_GetNextByte

#_00E80F: REP #$20

;---------------------------------------------------------------------------------------------------

.normal
#_00E811: INC A
#_00E812: STA.b $CB

#_00E814: SEP #$20

#_00E816: PLA

#_00E817: BEQ .nonrepeating
#_00E819: BMI .copy

#_00E81B: ASL A
#_00E81C: BPL .repeating

#_00E81E: ASL A
#_00E81F: BPL .repeatingword

#_00E821: JSR Decompression_GetNextByte

#_00E824: LDX.b $CB

.loop_a
#_00E826: STA.b [$00],Y

#_00E828: INC A

#_00E829: INY

#_00E82A: DEX
#_00E82B: BNE .loop_a

#_00E82D: BRA .next_command

;---------------------------------------------------------------------------------------------------

.nonrepeating
#_00E82F: JSR Decompression_GetNextByte
#_00E832: STA.b [$00],Y

#_00E834: INY

#_00E835: LDX.b $CB
#_00E837: DEX
#_00E838: STX.b $CB

#_00E83A: BNE .nonrepeating

#_00E83C: BRA .next_command

;---------------------------------------------------------------------------------------------------

.repeating
#_00E83E: JSR Decompression_GetNextByte

#_00E841: LDX.b $CB

.loop_b
#_00E843: STA.b [$00],Y

#_00E845: INY

#_00E846: DEX

#_00E847: BNE .loop_b

#_00E849: BRA .next_command

;---------------------------------------------------------------------------------------------------

.repeatingword
#_00E84B: JSR Decompression_GetNextByte
#_00E84E: XBA
#_00E84F: JSR Decompression_GetNextByte

#_00E852: LDX.b $CB

.loop_c
#_00E854: XBA
#_00E855: STA.b [$00],Y

#_00E857: INY

#_00E858: DEX
#_00E859: BEQ .done_a

#_00E85B: XBA
#_00E85C: STA.b [$00],Y

#_00E85E: INY

#_00E85F: DEX

#_00E860: BNE .loop_c

.done_a
#_00E862: JMP.w .next_command

;---------------------------------------------------------------------------------------------------

.copy
#_00E865: JSR Decompression_GetNextByte
#_00E868: XBA

#_00E869: JSR Decompression_GetNextByte
#_00E86C: XBA

#_00E86D: TAX

.loop_d
#_00E86E: PHY
#_00E86F: TXY

#_00E870: LDA.b [$00],Y

#_00E872: TYX
#_00E873: PLY

#_00E874: STA.b [$00],Y

#_00E876: INY
#_00E877: INX

#_00E878: REP #$20

#_00E87A: DEC.b $CB

#_00E87C: SEP #$20

#_00E87E: BNE .loop_d

#_00E880: JMP.w .next_command

;===================================================================================================

Decompression_GetNextByte:
#_00E883: LDA.b [$C8]

#_00E885: LDX.b $C8
#_00E887: INX
#_00E888: BNE .no_bank_wrap

#_00E88A: LDX.w #$8000
#_00E88D: INC.b $CA

.no_bank_wrap
#_00E88F: STX.b $C8

#_00E891: RTS

;===================================================================================================
; FREE ROM: 0x1E
;===================================================================================================
NULL_00E892:
#_00E892: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_00E89A: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_00E8A2: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_00E8AA: db $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

PaletteFilterColorAdd:
#_00E8B0: dw $FFFF, $0001
#_00E8B4: dw $FFE0, $0020
#_00E8B8: dw $FC00, $0400

PaletteFilterColorMasks:
#_00E8BC: dw $FFFF, $FFFF, $FFFE, $FFFF
#_00E8C4: dw $7FFF, $7FFF, $7FDF, $FBFF
#_00E8CC: dw $7F7F, $7F7F, $7DF7, $EFBF
#_00E8D4: dw $7BDF, $7BDF, $77BB, $DDEF
#_00E8DC: dw $7777, $7777, $6EDD, $BB77
#_00E8E4: dw $6DB7, $6DB7, $5B6D, $B6DB
#_00E8EC: dw $5B5B, $5B5B, $56B6, $AD6B
#_00E8F4: dw $5555, $AD6B, $5555, $AAAB
#_00E8FC: dw $5555, $5555, $2A55, $5555
#_00E904: dw $2A55, $2A55, $294A, $5295
#_00E90C: dw $2525, $2525, $2492, $4925
#_00E914: dw $1249, $1249, $1122, $4489
#_00E91C: dw $1111, $1111, $0844, $2211
#_00E924: dw $0421, $0421, $0208, $1041
#_00E92C: dw $0101, $0101, $0020, $0401
#_00E934: dw $0001, $0001, $0000, $0001

;===================================================================================================

PaletteFilter:
#_00E93C: SEP #$20

#_00E93E: LDA.b $1A
#_00E940: LSR A
#_00E941: BCC ApplyPaletteFilter

#_00E943: RTL

;===================================================================================================
; TODO document routine
;===================================================================================================
ApplyPaletteFilter:
#_00E944: REP #$30

#_00E946: LDX.w #PaletteFilterColorAdd+12

#_00E949: LDA.l $7EC007
#_00E94D: CMP.w #$0010
#_00E950: BCC .first_half

#_00E952: INX
#_00E953: INX

; TODO VERIFY
.first_half
#_00E954: STX.b $B7

#_00E956: AND.w #$000F
#_00E959: ASL A
#_00E95A: TAX

#_00E95B: LDA.w DungeonMask,X
#_00E95E: STA.b $0C

;---------------------------------------------------------------------------------------------------

#_00E960: PHB
#_00E961: PHK
#_00E962: PLB

#_00E963: LDA.l $7EC009
#_00E967: TAX

#_00E968: LDA.w PaletteFilterColorAdd+0,X
#_00E96B: STA.b $06

#_00E96D: LDA.w PaletteFilterColorAdd+4,X
#_00E970: STA.b $08

#_00E972: LDA.w PaletteFilterColorAdd+8,X
#_00E975: STA.b $0A

#_00E977: LDX.w #$0040
#_00E97A: JSR PaletteFilter_FilterColors

#_00E97D: LDA.l $7EC500
#_00E981: STA.b $04

;---------------------------------------------------------------------------------------------------

#_00E983: LDA.l $7EC300
#_00E987: AND.w #$001F
#_00E98A: ASL A
#_00E98B: ASL A
#_00E98C: TAY

#_00E98D: LDA.b ($B7),Y
#_00E98F: AND.b $0C
#_00E991: BNE .no_red

#_00E993: LDA.b $04
#_00E995: ADC.b $06
#_00E997: STA.b $04

;---------------------------------------------------------------------------------------------------

.no_red
#_00E999: LDA.l $7EC300
#_00E99D: AND.w #$03E0
#_00E9A0: LSR A
#_00E9A1: LSR A
#_00E9A2: LSR A
#_00E9A3: TAY

#_00E9A4: LDA.b ($B7),Y
#_00E9A6: AND.b $0C
#_00E9A8: BNE .no_green

#_00E9AA: LDA.b $04
#_00E9AC: ADC.b $08
#_00E9AE: STA.b $04

;---------------------------------------------------------------------------------------------------

.no_green
#_00E9B0: LDA.l $7EC301
#_00E9B4: AND.w #$007C
#_00E9B7: TAY

#_00E9B8: LDA.b ($B7),Y
#_00E9BA: AND.b $0C
#_00E9BC: BNE .no_blue

#_00E9BE: LDA.b $04
#_00E9C0: CLC
#_00E9C1: ADC.b $0A
#_00E9C3: STA.b $04

;---------------------------------------------------------------------------------------------------

.no_blue
#_00E9C5: LDA.b $04
#_00E9C7: STA.l $7EC500

#_00E9CB: PLB

#_00E9CC: LDA.l $7EC009
#_00E9D0: BNE .lightening

#_00E9D2: LDA.l $7EC007
#_00E9D6: INC A
#_00E9D7: STA.l $7EC007

#_00E9DB: CMP.l $7EC00B
#_00E9DF: BNE .continue_filtering

.swap
#_00E9E1: LDA.l $7EC009
#_00E9E5: EOR.w #$0002
#_00E9E8: STA.l $7EC009

#_00E9EC: LDA.w #$0000
#_00E9EF: STA.l $7EC007

#_00E9F3: SEP #$20

#_00E9F5: INC.b $B0

.continue_filtering
#_00E9F7: SEP #$30

#_00E9F9: INC.b $15

#_00E9FB: RTL

;---------------------------------------------------------------------------------------------------

.lightening
#_00E9FC: LDA.l $7EC007
#_00EA00: CMP.l $7EC00B
#_00EA04: BEQ .swap

#_00EA06: LDA.l $7EC007
#_00EA0A: DEC A
#_00EA0B: STA.l $7EC007

#_00EA0F: SEP #$30

#_00EA11: INC.b $15

#_00EA13: RTL

;===================================================================================================

PaletteFilter_FilterColors:
.next_color
#_00EA14: LDA.l $7EC500,X
#_00EA18: STA.b $04

#_00EA1A: LDA.l $7EC300,X
#_00EA1E: BEQ .color_is_black

;---------------------------------------------------------------------------------------------------

#_00EA20: AND.w #$001F
#_00EA23: ASL A
#_00EA24: ASL A
#_00EA25: TAY

#_00EA26: LDA.b ($B7),Y
#_00EA28: AND.b $0C
#_00EA2A: BNE .no_red

#_00EA2C: LDA.b $04
#_00EA2E: ADC.b $06
#_00EA30: STA.b $04

;---------------------------------------------------------------------------------------------------

.no_red
#_00EA32: LDA.l $7EC300,X
#_00EA36: AND.w #$03E0
#_00EA39: LSR A
#_00EA3A: LSR A
#_00EA3B: LSR A
#_00EA3C: TAY

#_00EA3D: LDA.b ($B7),Y
#_00EA3F: AND.b $0C
#_00EA41: BNE .no_green

#_00EA43: LDA.b $04
#_00EA45: ADC.b $08
#_00EA47: STA.b $04

;---------------------------------------------------------------------------------------------------

.no_green
#_00EA49: LDA.l $7EC301,X
#_00EA4D: AND.w #$007C
#_00EA50: TAY

#_00EA51: LDA.b ($B7),Y
#_00EA53: AND.b $0C
#_00EA55: BNE .no_blue

#_00EA57: LDA.b $04
#_00EA59: CLC
#_00EA5A: ADC.b $0A
#_00EA5C: STA.b $04

;---------------------------------------------------------------------------------------------------

.no_blue
#_00EA5E: LDA.b $04
#_00EA60: STA.l $7EC500,X

.color_is_black
#_00EA64: INX
#_00EA65: INX
#_00EA66: CPX.w #$01B0
#_00EA69: BCC .next_color

#_00EA6B: BNE .dont_skip_palette_5

#_00EA6D: TXA
#_00EA6E: CLC
#_00EA6F: ADC.w #$0010
#_00EA72: TAX

;---------------------------------------------------------------------------------------------------

.dont_skip_palette_5
#_00EA73: CPX.w #$01E0
#_00EA76: BNE .next_color

#_00EA78: RTS

;===================================================================================================
; Unused palette filter
;===================================================================================================
UNREACHABLE_00EA79:
#_00EA79: REP #$30

#_00EA7B: LDX.w #PaletteFilterColorAdd+12

#_00EA7E: LDA.l $7EC007
#_00EA82: CMP.w #$0010
#_00EA85: BCC .first_half

#_00EA87: INX
#_00EA88: INX

.first_half
#_00EA89: STX.b $B7

#_00EA8B: AND.w #$000F
#_00EA8E: ASL A
#_00EA8F: TAX

#_00EA90: LDA.w DungeonMask,X
#_00EA93: STA.b $0C

#_00EA95: PHB
#_00EA96: PHK
#_00EA97: PLB

#_00EA98: LDA.l $7EC009
#_00EA9C: TAX

#_00EA9D: LDA.w PaletteFilterColorAdd+0,X
#_00EAA0: STA.b $06

#_00EAA2: LDA.w PaletteFilterColorAdd+4,X
#_00EAA5: STA.b $08

#_00EAA7: LDA.w PaletteFilterColorAdd+8,X
#_00EAAA: STA.b $0A

#_00EAAC: LDX.w #$0040
#_00EAAF: LDA.w #$0200
#_00EAB2: JSR FilterColorsEndpoint

#_00EAB5: PLB

;---------------------------------------------------------------------------------------------------

#_00EAB6: LDA.l $7EC009
#_00EABA: BNE .lightening

#_00EABC: LDA.l $7EC007
#_00EAC0: INC A
#_00EAC1: STA.l $7EC007

#_00EAC5: CMP.l $7EC00B
#_00EAC9: BNE .continue_filtering

;---------------------------------------------------------------------------------------------------

.swap
#_00EACB: LDA.l $7EC009
#_00EACF: EOR.w #$0002
#_00EAD2: STA.l $7EC009

#_00EAD6: LDA.w #$0000
#_00EAD9: STA.l $7EC007

#_00EADD: SEP #$20

#_00EADF: INC.b $B0

;---------------------------------------------------------------------------------------------------

.continue_filtering
#_00EAE1: SEP #$30

#_00EAE3: INC.b $15

#_00EAE5: RTL

;---------------------------------------------------------------------------------------------------

.lightening
#_00EAE6: LDA.l $7EC007
#_00EAEA: CMP.l $7EC00B
#_00EAEE: BEQ .swap

#_00EAF0: LDA.l $7EC007
#_00EAF4: DEC A
#_00EAF5: STA.l $7EC007

#_00EAF9: SEP #$30

#_00EAFB: INC.b $15

#_00EAFD: RTL

;===================================================================================================
; TODO document routine/better name
;===================================================================================================
FilterColorsEndpoint:
#_00EAFE: STA.b $0E

.next_color
#_00EB00: LDA.l $7EC500,X
#_00EB04: STA.b $04

#_00EB06: LDA.l $7EC300,X
#_00EB0A: BEQ .skip_color

#_00EB0C: AND.w #$001F
#_00EB0F: ASL A
#_00EB10: ASL A
#_00EB11: TAY

#_00EB12: LDA.b ($B7),Y
#_00EB14: AND.b $0C
#_00EB16: BNE .no_red

#_00EB18: LDA.b $04
#_00EB1A: CLC
#_00EB1B: ADC.b $06
#_00EB1D: STA.b $04

;---------------------------------------------------------------------------------------------------

.no_red
#_00EB1F: LDA.l $7EC300,X
#_00EB23: AND.w #$03E0
#_00EB26: LSR A
#_00EB27: LSR A
#_00EB28: LSR A
#_00EB29: TAY

#_00EB2A: LDA.b ($B7),Y
#_00EB2C: AND.b $0C
#_00EB2E: BNE .no_green

#_00EB30: LDA.b $04
#_00EB32: CLC
#_00EB33: ADC.b $08
#_00EB35: STA.b $04

;---------------------------------------------------------------------------------------------------

.no_green
#_00EB37: LDA.l $7EC301,X
#_00EB3B: AND.w #$007C
#_00EB3E: TAY

#_00EB3F: LDA.b ($B7),Y
#_00EB41: AND.b $0C
#_00EB43: BNE .no_blue

#_00EB45: LDA.b $04
#_00EB47: CLC
#_00EB48: ADC.b $0A
#_00EB4A: STA.b $04

;---------------------------------------------------------------------------------------------------

.no_blue
#_00EB4C: LDA.b $04
#_00EB4E: STA.l $7EC500,X

;---------------------------------------------------------------------------------------------------

.skip_color
#_00EB52: INX
#_00EB53: INX
#_00EB54: CPX.b $0E
#_00EB56: BNE .next_color

#_00EB58: RTS

;===================================================================================================
; Sets all the colors to black
;===================================================================================================
ResetHUDPalettes4and5:
#_00EB59: REP #$20

#_00EB5B: LDA.w #$0000 ; RGB: #000000

#_00EB5E: STA.l $7EC520
#_00EB62: STA.l $7EC522
#_00EB66: STA.l $7EC524
#_00EB6A: STA.l $7EC526
#_00EB6E: STA.l $7EC528
#_00EB72: STA.l $7EC52A
#_00EB76: STA.l $7EC52C
#_00EB7A: STA.l $7EC52E

#_00EB7E: STA.l $7EC007 ; reset mosaic control

#_00EB82: LDA.w #$0002 ; lightening screen
#_00EB85: STA.l $7EC009

#_00EB89: SEP #$20

#_00EB8B: INC.b $15

#_00EB8D: RTL

;===================================================================================================
; TODO document routine/better name
;===================================================================================================
PaletteFilterHistory:
#_00EB8E: REP #$30

#_00EB90: LDX.w #PaletteFilterColorAdd+12

#_00EB93: LDA.l $7EC007
#_00EB97: CMP.w #$0010
#_00EB9A: BCC .first_half

#_00EB9C: INX
#_00EB9D: INX

.first_half
#_00EB9E: STX.b $B7

#_00EBA0: AND.w #$000F
#_00EBA3: ASL A
#_00EBA4: TAX

#_00EBA5: LDA.l DungeonMask,X
#_00EBA9: STA.b $0C

#_00EBAB: PHB
#_00EBAC: PHK
#_00EBAD: PLB

#_00EBAE: LDA.l $7EC009
#_00EBB2: TAX

#_00EBB3: LDA.w PaletteFilterColorAdd+0,X
#_00EBB6: STA.b $06

#_00EBB8: LDA.w PaletteFilterColorAdd+4,X
#_00EBBB: STA.b $08

#_00EBBD: LDA.w PaletteFilterColorAdd+8,X
#_00EBC0: STA.b $0A

#_00EBC2: LDX.w #$0020
#_00EBC5: LDA.w #$0030

;===================================================================================================

#PaletteFilterHistory_do_filtering:
#_00EBC8: JSR FilterColorsEndpoint

#_00EBCB: PLB

#_00EBCC: LDA.l $7EC007
#_00EBD0: INC A
#_00EBD1: STA.l $7EC007

#_00EBD5: CMP.w #$001F
#_00EBD8: BNE .still_filtering

#_00EBDA: LDA.w #$0000
#_00EBDD: STA.l $7EC007

#_00EBE1: LDA.l $7EC009
#_00EBE5: EOR.w #$0002
#_00EBE8: STA.l $7EC009
#_00EBEC: BEQ .still_filtering

#_00EBEE: INC.b $27

.still_filtering
#_00EBF0: SEP #$30

#_00EBF2: INC.b $15

#_00EBF4: RTL

;===================================================================================================

PaletteFilter_WishPonds:
#_00EBF5: LDA.b #$02
#_00EBF7: STA.b $1D

#_00EBF9: LDA.b #$30
#_00EBFB: STA.b $9A

#_00EBFD: BRA .start

;===================================================================================================

#PaletteFilter_Crystal:
#_00EBFF: LDA.b #$01
#_00EC01: STA.b $1D

;===================================================================================================

#PaletteFilter_TheEndSprite:
.start
#_00EC03: REP #$20

#_00EC05: LDX.b #$0E
#_00EC07: LDA.w #$0000 ; RGB: #000000

.next_black
#_00EC0A: STA.l $7EC6A0,X

#_00EC0E: DEX
#_00EC0F: DEX
#_00EC10: BPL .next_black

;---------------------------------------------------------------------------------------------------

#_00EC12: STA.l $7EC007

#_00EC16: LDA.w #$0002
#_00EC19: STA.l $7EC009

#_00EC1D: SEP #$20

#_00EC1F: INC.b $15

#_00EC21: RTL

;===================================================================================================
; TODO document routine/better name
;===================================================================================================
PaletteFilter_RestoreSP5F:
#_00EC22: REP #$20

#_00EC24: LDX.b #$0E

.next_color
#_00EC26: LDA.l $7EC4A0,X
#_00EC2A: STA.l $7EC6A0,X

#_00EC2E: DEX
#_00EC2F: DEX
#_00EC30: BPL .next_color

#_00EC32: SEP #$20

#_00EC34: STZ.b $1D

#_00EC36: LDA.b #$20
#_00EC38: STA.b $9A

#_00EC3A: INC.b $15

;---------------------------------------------------------------------------------------------------

#EXIT_00EC3C:
#_00EC3C: RTL

;===================================================================================================

PaletteFilter_SP5F:
#_00EC3D: JSL .filter

#_00EC41: LDA.l $7EC007
#_00EC45: BEQ EXIT_00EC3C

;---------------------------------------------------------------------------------------------------

.filter
#_00EC47: REP #$30

#_00EC49: LDX.w #PaletteFilterColorAdd+12

#_00EC4C: LDA.l $7EC007
#_00EC50: CMP.w #$0010
#_00EC53: BCC .first_half

#_00EC55: INX
#_00EC56: INX

.first_half
#_00EC57: STX.b $B7

#_00EC59: AND.w #$000F
#_00EC5C: ASL A
#_00EC5D: TAX

#_00EC5E: LDA.l DungeonMask,X
#_00EC62: STA.b $0C

#_00EC64: PHB
#_00EC65: PHK
#_00EC66: PLB

#_00EC67: LDA.l $7EC009
#_00EC6B: TAX

#_00EC6C: LDA.w PaletteFilterColorAdd+0,X
#_00EC6F: STA.b $06

#_00EC71: LDA.w PaletteFilterColorAdd+4,X
#_00EC74: STA.b $08

#_00EC76: LDA.w PaletteFilterColorAdd+8,X
#_00EC79: STA.b $0A

#_00EC7B: LDX.w #$01A0
#_00EC7E: LDA.w #$01B0
#_00EC81: JMP.w PaletteFilterHistory_do_filtering

;===================================================================================================

PaletteFilter_KholdstareShell_init:
#_00EC84: REP #$20

#_00EC86: LDX.b #$0E

.next_color
#_00EC88: LDA.l $7EC380,X
#_00EC8C: STA.l $7EC580,X

#_00EC90: DEX
#_00EC91: DEX
#_00EC92: BPL .next_color

;---------------------------------------------------------------------------------------------------

#_00EC94: LDA.w #$0000
#_00EC97: STA.l $7EC007
#_00EC9B: STA.l $7EC009

#_00EC9F: SEP #$20

#_00ECA1: INC.b $15

#_00ECA3: INC.b $B0

#_00ECA5: RTL

;===================================================================================================

PaletteFilter_KholdstareShell_disable_subscreen:
#_00ECA6: STZ.b $1D

#_00ECA8: RTL

;===================================================================================================

PaletteFilter_KholdstareShell:
#_00ECA9: LDA.b $B0
#_00ECAB: BEQ PaletteFilter_KholdstareShell_init

#_00ECAD: JSL .filter

#_00ECB1: LDA.l $7EC007
#_00ECB5: BEQ PaletteFilter_KholdstareShell_disable_subscreen

;---------------------------------------------------------------------------------------------------

.filter
#_00ECB7: REP #$30

#_00ECB9: LDX.w #PaletteFilterColorAdd+12

#_00ECBC: LDA.l $7EC007
#_00ECC0: CMP.w #$0010
#_00ECC3: BCC .first_half

#_00ECC5: INX
#_00ECC6: INX

.first_half
#_00ECC7: STX.b $B7

#_00ECC9: AND.w #$000F
#_00ECCC: ASL A
#_00ECCD: TAX

#_00ECCE: LDA.l DungeonMask,X
#_00ECD2: STA.b $0C

#_00ECD4: PHB
#_00ECD5: PHK
#_00ECD6: PLB

#_00ECD7: LDA.l $7EC009
#_00ECDB: TAX

#_00ECDC: LDA.w PaletteFilterColorAdd+0,X
#_00ECDF: STA.b $06

#_00ECE1: LDA.w PaletteFilterColorAdd+4,X
#_00ECE4: STA.b $08

#_00ECE6: LDA.w PaletteFilterColorAdd+8,X
#_00ECE9: STA.b $0A

#_00ECEB: LDX.w #$0080
#_00ECEE: LDA.w #$0090
#_00ECF1: JMP.w PaletteFilterHistory_do_filtering

;===================================================================================================

pool AgahnimWarpShadowFilter

.palette_offset
#_00ECF4: dw $0160
#_00ECF6: dw $0180
#_00ECF8: dw $01A0

pool off

;---------------------------------------------------------------------------------------------------

AgahnimWarpShadowFilter:
#_00ECFA: PHX

#_00ECFB: TXA
#_00ECFC: ASL A
#_00ECFD: TAX

#_00ECFE: REP #$20

#_00ED00: LDA.l $7EC019,X
#_00ED04: STA.l $7EC007

#_00ED08: LDA.l $7EC01F,X
#_00ED0C: STA.l $7EC009

#_00ED10: LDA.l .palette_offset,X
#_00ED14: STA.b $00

#_00ED16: CLC
#_00ED17: ADC.w #$0010
#_00ED1A: STA.b $02

#_00ED1C: REP #$10

#_00ED1E: JSR AgahnimWarpShadowFilter_filter_one

#_00ED21: LDA.l $7EC007
#_00ED25: BEQ .done

#_00ED27: JSR AgahnimWarpShadowFilter_filter_one

;---------------------------------------------------------------------------------------------------

.done
#_00ED2A: SEP #$30

#_00ED2C: PLX
#_00ED2D: PHX

#_00ED2E: TXA
#_00ED2F: ASL A
#_00ED30: TAX

#_00ED31: REP #$20

#_00ED33: LDA.l $7EC007
#_00ED37: STA.l $7EC019,X

#_00ED3B: LDA.l $7EC009
#_00ED3F: STA.l $7EC01F,X

#_00ED43: SEP #$20

#_00ED45: PLX

#_00ED46: INC.b $15

#_00ED48: RTL

;===================================================================================================

AgahnimWarpShadowFilter_filter_one:
#_00ED49: LDY.w #PaletteFilterColorAdd+12

#_00ED4C: LDA.l $7EC007
#_00ED50: CMP.w #$0010
#_00ED53: BCC .first_half

#_00ED55: INY
#_00ED56: INY

.first_half
#_00ED57: STY.b $B7

#_00ED59: AND.w #$000F
#_00ED5C: ASL A
#_00ED5D: TAX

#_00ED5E: LDA.l DungeonMask,X
#_00ED62: STA.b $0C

;---------------------------------------------------------------------------------------------------

#_00ED64: PHB
#_00ED65: PHK
#_00ED66: PLB

#_00ED67: LDA.l $7EC009
#_00ED6B: TAX

#_00ED6C: LDA.w PaletteFilterColorAdd+0,X
#_00ED6F: STA.b $06

#_00ED71: LDA.w PaletteFilterColorAdd+4,X
#_00ED74: STA.b $08

#_00ED76: LDA.w PaletteFilterColorAdd+8,X
#_00ED79: STA.b $0A

;---------------------------------------------------------------------------------------------------

#_00ED7B: LDX.b $00
#_00ED7D: PHX

#_00ED7E: LDA.b $02
#_00ED80: PHA

#_00ED81: JSR FilterColorsEndpoint

#_00ED84: PLA
#_00ED85: STA.b $02

#_00ED87: PLX
#_00ED88: STX.b $00

#_00ED8A: PLB

#_00ED8B: LDA.l $7EC007
#_00ED8F: INC A
#_00ED90: STA.l $7EC007

#_00ED94: CMP.w #$001F
#_00ED97: BNE .exit

#_00ED99: LDA.w #$0000
#_00ED9C: STA.l $7EC007

#_00EDA0: LDA.l $7EC009
#_00EDA4: EOR.w #$0002
#_00EDA7: STA.l $7EC009

.exit
#_00EDAB: RTS

;===================================================================================================

PaletteFilter_Restore:
#_00EDAC: REP #$30

#_00EDAE: LDX.w #$00B0
#_00EDB1: LDA.w #$00C0
#_00EDB4: JSR PaletteFilter_RestoreAdditive

#_00EDB7: LDX.w #$00D0
#_00EDBA: LDA.w #$00E0
#_00EDBD: JSR PaletteFilter_RestoreSubtractive

#_00EDC0: SEP #$30

#_00EDC2: INC.b $15

#_00EDC4: RTL

;===================================================================================================

PaletteFilter_RestoreAdditive:
#_00EDC5: STA.b $0E

.next_color
#_00EDC7: LDA.l $7EC500,X
#_00EDCB: TAY

#_00EDCC: AND.w #$001F
#_00EDCF: STA.b $08

#_00EDD1: TYA
#_00EDD2: AND.w #$03E0
#_00EDD5: STA.b $0A

#_00EDD7: TYA
#_00EDD8: AND.w #$7C00
#_00EDDB: STA.b $0C

#_00EDDD: LDA.l $7EC300,X
#_00EDE1: AND.w #$001F
#_00EDE4: CMP.b $08
#_00EDE6: BEQ .red_equal

#_00EDE8: TYA
#_00EDE9: CLC
#_00EDEA: ADC.w #$0001
#_00EDED: TAY

.red_equal
#_00EDEE: LDA.l $7EC300,X
#_00EDF2: AND.w #$03E0
#_00EDF5: CMP.b $0A
#_00EDF7: BEQ .green_equal

#_00EDF9: TYA
#_00EDFA: CLC
#_00EDFB: ADC.w #$0020
#_00EDFE: TAY

.green_equal
#_00EDFF: LDA.l $7EC300,X
#_00EE03: AND.w #$7C00
#_00EE06: CMP.b $0C
#_00EE08: BEQ .blue_equal

#_00EE0A: TYA
#_00EE0B: CLC
#_00EE0C: ADC.w #$0400
#_00EE0F: TAY

.blue_equal
#_00EE10: TYA
#_00EE11: STA.l $7EC500,X

#_00EE15: INX
#_00EE16: INX
#_00EE17: CPX.b $0E
#_00EE19: BNE .next_color

#_00EE1B: RTS

;===================================================================================================

PaletteFilter_RestoreSubtractive:
#_00EE1C: STA.b $0E

.next_color
#_00EE1E: LDA.l $7EC500,X
#_00EE22: TAY

#_00EE23: AND.w #$001F
#_00EE26: STA.b $08

#_00EE28: TYA
#_00EE29: AND.w #$03E0
#_00EE2C: STA.b $0A

#_00EE2E: TYA
#_00EE2F: AND.w #$7C00
#_00EE32: STA.b $0C

#_00EE34: LDA.l $7EC300,X
#_00EE38: AND.w #$001F
#_00EE3B: CMP.b $08
#_00EE3D: BEQ .red_equal

#_00EE3F: TYA
#_00EE40: SEC
#_00EE41: SBC.w #$0001
#_00EE44: TAY

.red_equal
#_00EE45: LDA.l $7EC300,X
#_00EE49: AND.w #$03E0
#_00EE4C: CMP.b $0A
#_00EE4E: BEQ .green_equal

#_00EE50: TYA
#_00EE51: SEC
#_00EE52: SBC.w #$0020
#_00EE55: TAY

.green_equal
#_00EE56: LDA.l $7EC300,X
#_00EE5A: AND.w #$7C00
#_00EE5D: CMP.b $0C
#_00EE5F: BEQ .blue_equal

#_00EE61: TYA
#_00EE62: SEC
#_00EE63: SBC.w #$0400
#_00EE66: TAY

.blue_equal
#_00EE67: TYA
#_00EE68: STA.l $7EC500,X

#_00EE6C: INX
#_00EE6D: INX
#_00EE6E: CPX.b $0E
#_00EE70: BNE .next_color

#_00EE72: RTS

;===================================================================================================

PaletteFilter_InitializeWhiteFilter:
#_00EE73: REP #$20

#_00EE75: LDX.b #$00

#_00EE77: LDA.w #$7FFF ; RGB: #F8F8F8

.next_white
#_00EE7A: STA.l $7EC300,X
#_00EE7E: STA.l $7EC340,X
#_00EE82: STA.l $7EC380,X
#_00EE86: STA.l $7EC3C0,X

#_00EE8A: STA.l $7EC400,X
#_00EE8E: STA.l $7EC440,X
#_00EE92: STA.l $7EC480,X
#_00EE96: STA.l $7EC4C0,X

#_00EE9A: INX
#_00EE9B: INX
#_00EE9C: CPX.b #$40
#_00EE9E: BNE .next_white

;---------------------------------------------------------------------------------------------------

#_00EEA0: LDA.l $7EC500
#_00EEA4: STA.l $7EC540

#_00EEA8: LDA.w #$0000
#_00EEAB: STA.l $7EC007

#_00EEAF: LDA.w #$0002
#_00EEB2: STA.l $7EC009

#_00EEB6: LDA.b $8A
#_00EEB8: CMP.w #$001B
#_00EEBB: BNE .not_hyrule_castle

#_00EEBD: LDA.w #$0000 ; RGB: #000000
#_00EEC0: STA.l $7EC300
#_00EEC4: STA.l $7EC340
#_00EEC8: STA.l $7EC500
#_00EECC: STA.l $7EC540

.not_hyrule_castle
#_00EED0: SEP #$20

#_00EED2: LDA.b #$08
#_00EED4: STA.w $06BB
#_00EED7: STZ.w $06BA

#_00EEDA: RTL

;===================================================================================================

MirrorWarp_GoToSubmodules:
#_00EEDB: JSL AnimateMirrorWarp

;---------------------------------------------------------------------------------------------------

#EXIT_00EEDF:
#_00EEDF: SEP #$30

#_00EEE1: RTL

;---------------------------------------------------------------------------------------------------

MirrorWarp_RunAnimationSubmodules:
#_00EEE2: DEC.w $06BB
#_00EEE5: BNE MirrorWarp_GoToSubmodules

#_00EEE7: LDA.b #$02
#_00EEE9: STA.w $06BB

;===================================================================================================

PaletteFilter_BlindingWhite:
#_00EEEC: REP #$30

#_00EEEE: LDA.l $7EC009
#_00EEF2: CMP.w #$00FF
#_00EEF5: BEQ EXIT_00EEDF

#_00EEF7: CMP.w #$0002
#_00EEFA: BNE .restore_subtractive

#_00EEFC: LDX.w #$0040
#_00EEFF: LDA.w #$01B0
#_00EF02: JSR PaletteFilter_RestoreAdditive

#_00EF05: LDX.w #$01C0
#_00EF08: LDA.w #$01E0
#_00EF0B: JSR PaletteFilter_RestoreAdditive

#_00EF0E: BRA PaletteFilter_StartBlindingWhite

.restore_subtractive
#_00EF10: LDX.w #$0040
#_00EF13: LDA.w #$01B0
#_00EF16: JSR PaletteFilter_RestoreSubtractive

#_00EF19: LDX.w #$01C0
#_00EF1C: LDA.w #$01E0
#_00EF1F: JSR PaletteFilter_RestoreSubtractive

;===================================================================================================

PaletteFilter_StartBlindingWhite:
#_00EF22: LDA.l $7EC540
#_00EF26: STA.l $7EC500

#_00EF2A: LDA.l $7EC009
#_00EF2E: BNE .check_shorter

#_00EF30: LDA.l $7EC007
#_00EF34: INC A
#_00EF35: STA.l $7EC007

#_00EF39: CMP.w #$0042
#_00EF3C: BNE .trigger_update

#_00EF3E: LDA.w #$00FF
#_00EF41: STA.l $7EC009

#_00EF45: SEP #$20

#_00EF47: LDA.b #$20
#_00EF49: STA.w $06BB

.trigger_update
#_00EF4C: SEP #$30

#_00EF4E: INC.b $15

#_00EF50: RTL

;---------------------------------------------------------------------------------------------------

.check_shorter
#_00EF51: LDA.l $7EC007
#_00EF55: INC A
#_00EF56: STA.l $7EC007

#_00EF5A: CMP.w #$001F
#_00EF5D: BNE .trigger_update

#_00EF5F: LDA.l $7EC009
#_00EF63: EOR.w #$0002
#_00EF66: STA.l $7EC009

#_00EF6A: SEP #$30

#_00EF6C: LDA.b $10
#_00EF6E: CMP.b #$15
#_00EF70: BNE .exit

#_00EF72: STZ.w HDMAENABLE
#_00EF75: STZ.b $9B

#_00EF77: REP #$20

#_00EF79: LDX.b #$3E
#_00EF7B: LDA.w #$0778
#_00EF7E: JSL InitializeHDMATable

#_00EF82: INC.b $15

.exit
#_00EF84: RTL

;===================================================================================================

PaletteFilter_BlindingWhiteTriforce:
#_00EF85: REP #$30

#_00EF87: LDX.w #$0040
#_00EF8A: LDA.w #$0200
#_00EF8D: JSR PaletteFilter_RestoreAdditive

#_00EF90: BRA PaletteFilter_StartBlindingWhite

;===================================================================================================

PaletteFilter_WhirlpoolBlue:
#_00EF92: LDA.b $1A
#_00EF94: LSR A
#_00EF95: BCC .skip

#_00EF97: REP #$30

#_00EF99: PHB
#_00EF9A: PHK
#_00EF9B: PLB

;---------------------------------------------------------------------------------------------------

#_00EF9C: LDX.w #$0040

.next_color
#_00EF9F: LDA.l $7EC500,X
#_00EFA3: TAY

#_00EFA4: AND.w #$7C00
#_00EFA7: CMP.w #$7C00
#_00EFAA: BEQ .max_blue

#_00EFAC: TYA
#_00EFAD: CLC
#_00EFAE: ADC.w #$0400
#_00EFB1: TAY

.max_blue
#_00EFB2: TYA
#_00EFB3: STA.l $7EC500,X

#_00EFB7: INX
#_00EFB8: INX
#_00EFB9: CPX.w #$0200
#_00EFBC: BNE .next_color

;---------------------------------------------------------------------------------------------------

#_00EFBE: LDA.l $7EC540
#_00EFC2: STA.l $7EC500

#_00EFC6: PLB

#_00EFC7: SEP #$20

#_00EFC9: LDA.l $7EC007
#_00EFCD: LSR A
#_00EFCE: BCS .no_mosaic_increment

#_00EFD0: LDA.l $7EC011
#_00EFD4: CLC
#_00EFD5: ADC.b #$10
#_00EFD7: STA.l $7EC011

.no_mosaic_increment
#_00EFDB: LDA.l $7EC007
#_00EFDF: INC A
#_00EFE0: STA.l $7EC007

#_00EFE4: CMP.b #$1F
#_00EFE6: BNE .skip

#_00EFE8: LDA.b #$00
#_00EFEA: STA.l $7EC007

#_00EFEE: INC.b $B0

#_00EFF0: LDA.b #$F0
#_00EFF2: STA.l $7EC011

;---------------------------------------------------------------------------------------------------

.skip
#_00EFF6: SEP #$30

#_00EFF8: LDA.b #$09
#_00EFFA: STA.b $94

#_00EFFC: LDA.l $7EC011
#_00F000: ORA.b #$03
#_00F002: STA.b $95

#_00F004: INC.b $15

#_00F006: RTL

;===================================================================================================

PaletteFilter_IsolateWhirlpoolBlue:
#_00F007: REP #$30

#_00F009: PHB
#_00F00A: PHK
#_00F00B: PLB

#_00F00C: LDX.w #$0040

.next_color_isolated
#_00F00F: LDA.l $7EC500,X
#_00F013: TAY

#_00F014: AND.w #$03E0
#_00F017: BEQ .no_green

#_00F019: TYA
#_00F01A: SEC
#_00F01B: SBC.w #$0020
#_00F01E: TAY

.no_green
#_00F01F: TYA
#_00F020: AND.w #$001F
#_00F023: BEQ .no_red

#_00F025: TYA
#_00F026: SEC
#_00F027: SBC.w #$0001
#_00F02A: TAY

.no_red
#_00F02B: TYA
#_00F02C: STA.l $7EC500,X

#_00F030: INX
#_00F031: INX
#_00F032: CPX.w #$0200
#_00F035: BNE .next_color_isolated

;---------------------------------------------------------------------------------------------------

#_00F037: LDA.l $7EC540
#_00F03B: STA.l $7EC500

#_00F03F: PLB

#_00F040: SEP #$20

#_00F042: JMP.w PaletteFilter_WhirlpoolBlue_no_mosaic_increment

;===================================================================================================

PaletteFilter_WhirlpoolRestoreBlue:
#_00F045: LDA.b $1A
#_00F047: LSR A
#_00F048: BCC .skip

#_00F04A: REP #$30

#_00F04C: PHB
#_00F04D: PHK
#_00F04E: PLB

#_00F04F: LDX.w #$0040

.next_color
#_00F052: LDA.l $7EC300,X
#_00F056: AND.w #$7C00
#_00F059: STA.b $00

#_00F05B: LDA.l $7EC500,X
#_00F05F: TAY

#_00F060: AND.w #$7C00
#_00F063: CMP.b $00
#_00F065: BEQ .blue_equal

#_00F067: TYA
#_00F068: SEC
#_00F069: SBC.w #$0400
#_00F06C: TAY

.blue_equal
#_00F06D: TYA
#_00F06E: STA.l $7EC500,X

#_00F072: INX
#_00F073: INX
#_00F074: CPX.w #$0200
#_00F077: BNE .next_color

;---------------------------------------------------------------------------------------------------

#_00F079: LDA.l $7EC540
#_00F07D: STA.l $7EC500

#_00F081: PLB

#_00F082: SEP #$20

#_00F084: LDA.l $7EC007
#_00F088: LSR A
#_00F089: BCS .no_mosaic_decrement

#_00F08B: LDA.l $7EC011
#_00F08F: BEQ .no_mosaic_decrement

#_00F091: SEC
#_00F092: SBC.b #$10
#_00F094: STA.l $7EC011

.no_mosaic_decrement
#_00F098: LDA.l $7EC007
#_00F09C: INC A
#_00F09D: STA.l $7EC007

#_00F0A1: CMP.b #$1F
#_00F0A3: BNE .skip

#_00F0A5: LDA.b #$00
#_00F0A7: STA.l $7EC007
#_00F0AB: STA.l $7EC011

#_00F0AF: INC.b $B0

;---------------------------------------------------------------------------------------------------

.skip
#_00F0B1: SEP #$30

#_00F0B3: LDA.b #$09
#_00F0B5: STA.b $94

#_00F0B7: LDA.l $7EC011
#_00F0BB: ORA.b #$03
#_00F0BD: STA.b $95

#_00F0BF: INC.b $15

#_00F0C1: RTL

;===================================================================================================

PaletteFilter_WhirlpoolRestoreRedGreen:
#_00F0C2: REP #$30

#_00F0C4: PHB
#_00F0C5: PHK
#_00F0C6: PLB

#_00F0C7: LDX.w #$0040

.next_color
#_00F0CA: LDA.l $7EC300,X
#_00F0CE: AND.w #$03E0
#_00F0D1: STA.b $00

#_00F0D3: LDA.l $7EC300,X
#_00F0D7: AND.w #$001F
#_00F0DA: STA.b $02

#_00F0DC: LDA.l $7EC500,X
#_00F0E0: TAY

#_00F0E1: AND.w #$03E0
#_00F0E4: CMP.b $00
#_00F0E6: BEQ .green_equal

#_00F0E8: TYA
#_00F0E9: CLC
#_00F0EA: ADC.w #$0020
#_00F0ED: TAY

.green_equal
#_00F0EE: TYA
#_00F0EF: AND.w #$001F
#_00F0F2: CMP.b $02
#_00F0F4: BEQ .red_equal

#_00F0F6: TYA
#_00F0F7: CLC
#_00F0F8: ADC.w #$0001
#_00F0FB: TAY

.red_equal
#_00F0FC: TYA
#_00F0FD: STA.l $7EC500,X

#_00F101: INX
#_00F102: INX
#_00F103: CPX.w #$0200
#_00F106: BNE .next_color

;---------------------------------------------------------------------------------------------------

#_00F108: LDA.l $7EC540
#_00F10C: STA.l $7EC500

#_00F110: PLB

#_00F111: SEP #$20

#_00F113: LDA.l $7EC007

#_00F117: INC A
#_00F118: STA.l $7EC007

#_00F11C: CMP.b #$1F
#_00F11E: BNE .still_going

#_00F120: LDA.b #$00
#_00F122: STA.l $7EC007

#_00F126: INC.b $B0

.still_going
#_00F128: SEP #$30

#_00F12A: INC.b $15

#_00F12C: RTL

;---------------------------------------------------------------------------------------------------

#EXIT_00F12D:
#_00F12D: SEP #$30

#_00F12F: RTL

;===================================================================================================

PaletteFilter_RestoreBGSubstractiveStrict:
#_00F130: REP #$30

#_00F132: LDA.l $7EC009
#_00F136: CMP.w #$00FF
#_00F139: BEQ EXIT_00F12D

#_00F13B: PHB
#_00F13C: PHK
#_00F13D: PLB

#_00F13E: LDX.w #$0040
#_00F141: LDA.w #$0100
#_00F144: JSR PaletteFilter_RestoreSubtractive

#_00F147: PLB

#_00F148: LDA.l $7EC007
#_00F14C: INC A
#_00F14D: STA.l $7EC007

#_00F151: CMP.w #$0020
#_00F154: BNE .still_going

#_00F156: LDA.w #$00FF
#_00F159: STA.l $7EC009

#_00F15D: STZ.b $1D

.still_going
#_00F15F: SEP #$30

#_00F161: INC.b $15

#_00F163: RTL

;===================================================================================================

PaletteFilter_RestoreBGAdditiveStrict:
#_00F164: REP #$30

#_00F166: PHB
#_00F167: PHK
#_00F168: PLB

#_00F169: LDX.w #$0040
#_00F16C: LDA.w #$0100
#_00F16F: JSR PaletteFilter_RestoreAdditive

#_00F172: PLB

#_00F173: LDA.l $7EC007
#_00F177: INC A
#_00F178: STA.l $7EC007

#_00F17C: BRA PaletteFilter_RestoreBGSubstractiveStrict_still_going

;===================================================================================================

Trinexx_FlashShellPalette_Red:
#_00F17E: LDA.w $04BE
#_00F181: BNE TrinexxFilterRed_tick_timer

#_00F183: REP #$20

#_00F185: LDX.b #$00

.next_color
#_00F187: LDA.l $7EC582,X
#_00F18B: AND.w #$001F
#_00F18E: CMP.w #$001F
#_00F191: BEQ .red_equal

#_00F193: CLC
#_00F194: ADC.w #$0001

.red_equal
#_00F197: STA.b $00

#_00F199: LDA.l $7EC582,X
#_00F19D: AND.w #$FFE0
#_00F1A0: ORA.b $00
#_00F1A2: STA.l $7EC582,X

#_00F1A6: INX
#_00F1A7: INX
#_00F1A8: CPX.b #$0E
#_00F1AA: BNE .next_color

;---------------------------------------------------------------------------------------------------

#TrinexxFilterRed_continue:
#_00F1AC: SEP #$20

#_00F1AE: INC.b $15

#_00F1B0: INC.w $04C0

#_00F1B3: LDA.w $04C0
#_00F1B6: CMP.b #$0C
#_00F1B8: BCS .done

#_00F1BA: LDA.b #$03
#_00F1BC: STA.w $04BE

;---------------------------------------------------------------------------------------------------

#TrinexxFilterRed_tick_timer:
#_00F1BF: DEC.w $04BE

#_00F1C2: RTL

;---------------------------------------------------------------------------------------------------

.done
#_00F1C3: STZ.w $04BE
#_00F1C6: STZ.w $04C0

#_00F1C9: RTL

;===================================================================================================

Trinexx_UnflashShellPalette_Red:
#_00F1CA: LDA.w $04BE
#_00F1CD: BNE TrinexxFilterRed_tick_timer

#_00F1CF: REP #$20

#_00F1D1: LDX.b #$00

.next_color
#_00F1D3: LDA.l $7EC382,X
#_00F1D7: AND.w #$001F
#_00F1DA: STA.b $0C

#_00F1DC: LDA.l $7EC582,X
#_00F1E0: AND.w #$001F
#_00F1E3: CMP.b $0C
#_00F1E5: BEQ .red_equal

#_00F1E7: SEC
#_00F1E8: SBC.w #$0001

.red_equal
#_00F1EB: STA.b $00

#_00F1ED: LDA.l $7EC582,X
#_00F1F1: AND.w #$FFE0
#_00F1F4: ORA.b $00
#_00F1F6: STA.l $7EC582,X

#_00F1FA: INX
#_00F1FB: INX
#_00F1FC: CPX.b #$0E
#_00F1FE: BNE .next_color

#_00F200: BRA TrinexxFilterRed_continue

;===================================================================================================

Trinexx_FlashShellPalette_Blue:
#_00F202: LDA.w $04BF
#_00F205: BNE TrinexxFilterBlue_tick_timer

#_00F207: REP #$20

#_00F209: LDX.b #$00

.next_color
#_00F20B: LDA.l $7EC582,X
#_00F20F: AND.w #$7C00
#_00F212: CMP.w #$7C00
#_00F215: BEQ .blue_equal

#_00F217: CLC
#_00F218: ADC.w #$0400

.blue_equal
#_00F21B: STA.b $00

#_00F21D: LDA.l $7EC582,X
#_00F221: AND.w #$83FF
#_00F224: ORA.b $00
#_00F226: STA.l $7EC582,X

#_00F22A: INX
#_00F22B: INX
#_00F22C: CPX.b #$0E
#_00F22E: BNE .next_color

;---------------------------------------------------------------------------------------------------

#TrinexxFilterBlue_continue:
#_00F230: SEP #$20

#_00F232: INC.b $15

#_00F234: INC.w $04C1

#_00F237: LDA.w $04C1
#_00F23A: CMP.b #$0C
#_00F23C: BCS .done

#_00F23E: LDA.b #$03
#_00F240: STA.w $04BF

;---------------------------------------------------------------------------------------------------

#TrinexxFilterBlue_tick_timer:
#_00F243: DEC.w $04BF

#_00F246: RTL

;---------------------------------------------------------------------------------------------------

.done
#_00F247: STZ.w $04BF
#_00F24A: STZ.w $04C1

#_00F24D: RTL

;===================================================================================================

Trinexx_UnflashShellPalette_Blue:
#_00F24E: LDA.w $04BF
#_00F251: BNE TrinexxFilterBlue_tick_timer

#_00F253: REP #$20

#_00F255: LDX.b #$00

.next_color
#_00F257: LDA.l $7EC382,X
#_00F25B: AND.w #$7C00
#_00F25E: STA.b $0C

#_00F260: LDA.l $7EC582,X
#_00F264: AND.w #$7C00
#_00F267: CMP.b $0C
#_00F269: BEQ .blue_equal

#_00F26B: SEC
#_00F26C: SBC.w #$0400

.blue_equal
#_00F26F: STA.b $00

#_00F271: LDA.l $7EC582,X
#_00F275: AND.w #$83FF
#_00F278: ORA.b $00
#_00F27A: STA.l $7EC582,X

#_00F27E: INX
#_00F27F: INX
#_00F280: CPX.b #$0E
#_00F282: BNE .next_color

#_00F284: BRA TrinexxFilterBlue_continue

;===================================================================================================

IrisSpotlight_close:
#_00F286: REP #$10

#_00F288: LDY.w #$0000
#_00F28B: LDX.w #$007E

#_00F28E: BRA .continue

;===================================================================================================

#IrisSpotlight_open:
#_00F290: REP #$10

#_00F292: LDY.w #$0002
#_00F295: LDX.w #$0000

;---------------------------------------------------------------------------------------------------

.continue
#_00F298: STY.w $067E

#_00F29B: STX.w $067C

#_00F29E: STZ.w HDMAENABLE

#_00F2A1: LDX.w #$2641
#_00F2A4: STX.w DMA6MODE
#_00F2A7: STX.w DMA7MODE

#_00F2AA: LDX.w #.hdma_table>>0
#_00F2AD: STX.w DMA6ADDRL
#_00F2B0: STX.w DMA7ADDRL

#_00F2B3: LDA.b #.hdma_table>>16
#_00F2B5: STA.w DMA6ADDRB
#_00F2B8: STA.w DMA7ADDRB

#_00F2BB: LDA.b #$00
#_00F2BD: STA.w HDMA6INDIRECTB
#_00F2C0: STA.w HDMA7INDIRECTB

;---------------------------------------------------------------------------------------------------

#_00F2C3: LDA.b #$33
#_00F2C5: STA.b $96

#_00F2C7: LDA.b #$03
#_00F2C9: STA.b $97

#_00F2CB: LDA.b #$33
#_00F2CD: STA.b $98

#_00F2CF: LDA.b $1C
#_00F2D1: STA.b $1E

#_00F2D3: LDA.b $1D
#_00F2D5: STA.b $1F

#_00F2D7: LDA.b $1B
#_00F2D9: BNE .indoors

#_00F2DB: LDA.b #$20 ; Fixed color RGB: #000000
#_00F2DD: STA.b $9C

#_00F2DF: LDA.b #$40
#_00F2E1: STA.b $9D

#_00F2E3: LDA.b #$80
#_00F2E5: STA.b $9E

;---------------------------------------------------------------------------------------------------

.indoors
#_00F2E7: SEP #$10

#_00F2E9: JSL IrisSpotlight_ConfigureTable

#_00F2ED: LDA.b #$80
#_00F2EF: STA.b $9B

#_00F2F1: LDA.b #$0F
#_00F2F3: STA.b $13

#_00F2F5: RTL

;---------------------------------------------------------------------------------------------------

.hdma_table
#_00F2F6: db $F8 : dw $1B00 ; 120 lines continuous
#_00F2F9: db $F8 : dw $1BF0 ; 120 lines continuous
#_00F2FC: db $00 ; end

;===================================================================================================

pool IrisSpotlight_ConfigureTable

.delta
#_00F2FD: dw -7
#_00F2FF: dw  7
#_00F301: dw  7
#_00F303: dw  7

.target
#_00F305: dw $0000
#_00F307: dw $007E
#_00F309: dw $0023
#_00F30B: dw $007E

pool off

;---------------------------------------------------------------------------------------------------

IrisSpotlight_ConfigureTable:
#_00F30D: PHB
#_00F30E: PHK
#_00F30F: PLB

#_00F310: REP #$30

#_00F312: LDA.b $20
#_00F314: SEC
#_00F315: SBC.b $E8

#_00F317: CLC
#_00F318: ADC.w #$000C
#_00F31B: STA.b $0E

#_00F31D: SEC
#_00F31E: SBC.w $067C
#_00F321: STA.w $0674

#_00F324: LDA.b $0E
#_00F326: CLC
#_00F327: ADC.w $067C
#_00F32A: STA.w $0676

;---------------------------------------------------------------------------------------------------

#_00F32D: LDA.b $22
#_00F32F: SEC
#_00F330: SBC.b $E2

#_00F332: CLC
#_00F333: ADC.w #$0008
#_00F336: STA.w $0670

#_00F339: LDA.w $067C
#_00F33C: STA.w $067A

#_00F33F: LDA.b $0E
#_00F341: ASL A
#_00F342: STA.b $06

;---------------------------------------------------------------------------------------------------

#_00F344: CMP.w #$00E0
#_00F347: BCS .big_enough

#_00F349: LDA.w #$00E0
#_00F34C: STA.b $06

.big_enough
#_00F34E: LDA.b $06
#_00F350: SEC
#_00F351: SBC.b $0E
#_00F353: STA.b $0A

#_00F355: LDA.b $0E
#_00F357: SEC
#_00F358: SBC.b $0A
#_00F35A: STA.b $04

;---------------------------------------------------------------------------------------------------

.next_check
#_00F35C: LDA.w #$00FF
#_00F35F: STA.b $08

#_00F361: LDA.b $06
#_00F363: CMP.w $0676
#_00F366: BCS .past_calced_size

#_00F368: LDA.w $067A
#_00F36B: BEQ .at_zero

#_00F36D: DEC.w $067A

.at_zero
#_00F370: JSR IrisSpotlight_CalculateCircleValue

.past_calced_size
#_00F373: LDA.b $04
#_00F375: ASL A
#_00F376: CMP.w #$01C0
#_00F379: BCS .skip_update_a

#_00F37B: TAX
#_00F37C: LDA.b $08
#_00F37E: STA.l $7F7000,X

.skip_update_a
#_00F382: LDA.b $06
#_00F384: ASL A
#_00F385: CMP.w #$01C0
#_00F388: BCS .skip_update_b

#_00F38A: TAX

#_00F38B: LDA.b $08
#_00F38D: STA.l $7F7000,X

.skip_update_b
#_00F391: LDA.b $0E
#_00F393: CMP.b $04
#_00F395: BEQ .wait_for_scanline

#_00F397: INC.b $04

#_00F399: DEC.b $06

#_00F39B: JMP.w .next_check

;---------------------------------------------------------------------------------------------------

.wait_for_scanline
#_00F39E: LDA.w SLVH
#_00F3A1: LDA.w STAT78

#_00F3A4: LDA.w OPVCT
#_00F3A7: AND.w #$00FF
#_00F3AA: CMP.w #$00C0
#_00F3AD: BCC .wait_for_scanline

#_00F3AF: LDX.w #$0000

.copy_table
#_00F3B2: LDA.l $7F7000,X
#_00F3B6: STA.w $1B00,X

#_00F3B9: INX
#_00F3BA: INX
#_00F3BB: CPX.w #$01C0
#_00F3BE: BCC .copy_table

;---------------------------------------------------------------------------------------------------

#_00F3C0: LDX.w $067E

#_00F3C3: LDA.w $067C
#_00F3C6: CLC
#_00F3C7: ADC.w .delta,X
#_00F3CA: STA.w $067C

#_00F3CD: CMP.w .target,X
#_00F3D0: BNE .exit

#_00F3D2: SEP #$20

#_00F3D4: LDA.w $067E
#_00F3D7: BNE .reset_table

#_00F3D9: LDA.b #$80
#_00F3DB: STA.b $13
#_00F3DD: STA.w INIDISP

#_00F3E0: BRA .continue

;---------------------------------------------------------------------------------------------------

.reset_table
#_00F3E2: JSL IrisSpotlight_ResetTable

.continue
#_00F3E6: SEP #$30

#_00F3E8: STZ.b $B0
#_00F3EA: STZ.b $11

#_00F3EC: LDA.b $10
#_00F3EE: CMP.b #$07
#_00F3F0: BEQ .underworld

#_00F3F2: CMP.b #$10
#_00F3F4: BNE .not_opening

.underworld
#_00F3F6: LDA.b $1B
#_00F3F8: BNE .check_music_command

#_00F3FA: LDA.b $8A
#_00F3FC: CMP.b #$43
#_00F3FE: BEQ .dark_dm

#_00F400: CMP.b #$45
#_00F402: BEQ .dark_dm

#_00F404: CMP.b #$47
#_00F406: BNE .check_music_command

.dark_dm
#_00F408: LDA.b #!SFX1_09
#_00F40A: STA.w $012D

.check_music_command
#_00F40D: LDA.w $0132
#_00F410: CMP.b #!SONG_FF_TRANSFER
#_00F412: BEQ .not_opening

#_00F414: STA.w $012C

.not_opening
#_00F417: LDA.w $010C
#_00F41A: STA.b $10

#_00F41C: CMP.b #$06
#_00F41E: BNE .exit

#_00F420: JSL Sprite_ResetAll

.exit
#_00F424: SEP #$30

#_00F426: PLB

#_00F427: RTL

;===================================================================================================

IrisSpotlight_ResetTable:
#_00F428: REP #$30

#_00F42A: LDX.w #$003E
#_00F42D: LDA.w #$FF00

.next
#_00F430: STA.w $1B00,X
#_00F433: STA.w $1B40,X
#_00F436: STA.w $1B80,X
#_00F439: STA.w $1BC0,X
#_00F43C: STA.w $1C00,X
#_00F43F: STA.w $1C40,X
#_00F442: STA.w $1C80,X

#_00F445: DEX
#_00F446: DEX
#_00F447: BPL .next

#_00F449: SEP #$30

#_00F44B: RTL

;===================================================================================================
; TODO document routine
;===================================================================================================
pool IrisSpotlight_CalculateCircleValue

.multiplicand
#_00F44C: db 255, 255, 255, 255, 255, 255, 255, 255
#_00F454: db 255, 255, 255, 255, 254, 254, 254, 254
#_00F45C: db 253, 253, 253, 253, 252, 252, 252, 251
#_00F464: db 251, 251, 250, 250, 249, 249, 248, 248
#_00F46C: db 247, 247, 246, 246, 245, 245, 244, 243
#_00F474: db 243, 242, 241, 241, 240, 239, 238, 238
#_00F47C: db 237, 236, 235, 234, 233, 233, 232, 231
#_00F484: db 230, 229, 228, 227, 226, 225, 223, 222
#_00F48C: db 221, 220, 219, 218, 216, 215, 214, 213
#_00F494: db 211, 210, 208, 207, 205, 204, 202, 201
#_00F49C: db 199, 198, 196, 194, 193, 191, 189, 187
#_00F4A4: db 185, 183, 182, 180, 177, 175, 173, 171
#_00F4AC: db 169, 167, 164, 162, 159, 157, 154, 151
#_00F4B4: db 149, 146, 143, 140, 137, 134, 130, 127
#_00F4BC: db 123, 120, 116, 112, 108, 103,  99,  94
#_00F4C4: db  89,  83,  77,  70,  63,  55,  45,  31
#_00F4CC: db   0

pool off

;---------------------------------------------------------------------------------------------------

IrisSpotlight_CalculateCircleValue:
#_00F4CD: SEP #$30

#_00F4CF: STA.w CPUDIVIDENDH
#_00F4D2: STZ.w CPUDIVIDENDL

#_00F4D5: LDA.w $067C
#_00F4D8: STA.w CPUDIVISOR

#_00F4DB: NOP
#_00F4DC: NOP
#_00F4DD: NOP
#_00F4DE: NOP
#_00F4DF: NOP
#_00F4E0: NOP

#_00F4E1: REP #$20

#_00F4E3: LDA.w CPUQUOTIENT
#_00F4E6: LSR A

#_00F4E7: SEP #$20

#_00F4E9: TAX

; !DUMB why Y? A is free as well
#_00F4EA: LDY.w .multiplicand,X
#_00F4ED: STY.b $0A
#_00F4EF: STY.w CPUMULTA

#_00F4F2: LDA.w $067C
#_00F4F5: STA.w CPUMULTB

#_00F4F8: NOP
#_00F4F9: NOP

#_00F4FA: STZ.b $01
#_00F4FC: STZ.b $0B

#_00F4FE: LDA.w CPUPRODUCTH
#_00F501: STA.b $00

#_00F503: REP #$30

#_00F505: ASL.b $00
#_00F507: LDA.b $0A
#_00F509: BEQ .exit

#_00F50B: LDA.b $00
#_00F50D: CLC
#_00F50E: ADC.w $0670
#_00F511: STA.b $02

#_00F513: LDA.w $0670
#_00F516: SEC
#_00F517: SBC.b $00

#_00F519: STZ.b $00

#_00F51B: BMI .positive

#_00F51D: BIT.w #$FF00
#_00F520: BEQ .zero_high_a

#_00F522: LDA.w #$00FF

.zero_high_a
#_00F525: STA.b $00

.positive
#_00F527: LDA.b $02
#_00F529: BIT.w #$FF00
#_00F52C: BEQ .zero_high_b

#_00F52E: LDA.w #$00FF

.zero_high_b
#_00F531: XBA
#_00F532: ORA.b $00
#_00F534: CMP.w #$FFFF
#_00F537: BNE .keep

#_00F539: LDA.w #$00FF

.keep
#_00F53C: STA.b $08

.exit
#_00F53E: RTS

;===================================================================================================
; TODO document routine
;===================================================================================================
pool OrientVerticalLampCone OrientHorizontalLampCone

.horizontal
#_00F53F: dw $0000, $0100, $0000, $0100

.vertical
#_00F547: dw $0000, $0000, $0100, $0100

.adjust
#_00F54F: dw $0034, $FFFE, $0038, $0006

.margin
#_00F557: dw $0040, $0040, $0052, $FF50

.max
#_00F55F: dw $0080, $0180, $00A0, $00A0

pool off

;---------------------------------------------------------------------------------------------------

#EXIT_00F567:
#_00F567: RTL

;---------------------------------------------------------------------------------------------------

OrientLampLightCone:
#_00F568: LDA.w $0458 ; flag for if we even have a lamp bg
#_00F56B: BEQ EXIT_00F567

#_00F56D: LDA.b $11 ; skip when recovering from pit damage
#_00F56F: CMP.b #$14
#_00F571: BEQ EXIT_00F567

#_00F573: REP #$30

#_00F575: LDA.b $2F ; get Link's direction
#_00F577: AND.w #$00FF
#_00F57A: STA.b $00

; TODO analyze doorway nonsense
#_00F57C: TAX

#_00F57D: LDA.b $6C
#_00F57F: AND.w #$00FF
#_00F582: BEQ .not_in_doorway

; clear bit 0 so we have either
; 0 - vertical door
; 4 - horizontal door
#_00F584: AND.w #$00FE
#_00F587: ASL A
#_00F588: TAX
#_00F589: BEQ .vertical_doorway

#_00F58B: LDA.b $00 ; check direction again
#_00F58D: CMP.w #$0004
#_00F590: BCS .facing_horizontal

; use Link's X coordinate+8
#_00F592: LDA.b $22
#_00F594: CLC
#_00F595: ADC.w #$0008
#_00F598: AND.w #$00FF

#_00F59B: BRA .doorway_continue

.facing_horizontal
#_00F59D: TAX

#_00F59E: BRA .not_in_doorway

;---------------------------------------------------------------------------------------------------

.vertical_doorway
#_00F5A0: LDA.b $00
#_00F5A2: CMP.w #$0004
#_00F5A5: BCC .facing_horizontal

#_00F5A7: LDA.b $20
#_00F5A9: AND.w #$00FF

;---------------------------------------------------------------------------------------------------

.doorway_continue
#_00F5AC: CMP.w #$0080
#_00F5AF: BCC .not_in_doorway

#_00F5B1: INX
#_00F5B2: INX

.not_in_doorway
#_00F5B3: CPX.w #$0004 ; what lamp direction to use
#_00F5B6: BCS OrientHorizontalLampCone

;===================================================================================================

; TODO analyze this further
; not complex though
OrientVerticalLampCone:
#_00F5B8: LDA.b $22
#_00F5BA: SEC
#_00F5BB: SBC.w #$0077
#_00F5BE: STA.b $00

#_00F5C0: LDA.b $E2
#_00F5C2: SEC
#_00F5C3: SBC.b $00

#_00F5C5: CLC
#_00F5C6: ADC.l .horizontal,X
#_00F5CA: STA.b $E0

#_00F5CC: LDA.b $20
#_00F5CE: SEC
#_00F5CF: SBC.w #$0058
#_00F5D2: STA.b $00

;---------------------------------------------------------------------------------------------------

#_00F5D4: LDA.b $E8
#_00F5D6: SEC
#_00F5D7: SBC.b $00

#_00F5D9: CLC
#_00F5DA: ADC.l .vertical,X

#_00F5DE: CLC
#_00F5DF: ADC.l .adjust,X

#_00F5E3: CLC
#_00F5E4: ADC.l .margin,X

#_00F5E8: BPL .lower_in_bounds

#_00F5EA: LDA.w #$0000

.lower_in_bounds
#_00F5ED: CMP.l .max,X
#_00F5F1: BCC .upper_in_bounds

#_00F5F3: LDA.l .max,X

.upper_in_bounds
#_00F5F7: SEC
#_00F5F8: SBC.l .margin,X
#_00F5FC: STA.b $E6

#_00F5FE: SEP #$30

#_00F600: RTL

;===================================================================================================

OrientHorizontalLampCone:
#_00F601: LDA.b $20
#_00F603: SEC
#_00F604: SBC.w #$0072
#_00F607: STA.b $00

#_00F609: LDA.b $E8
#_00F60B: SEC
#_00F60C: SBC.b $00

#_00F60E: CLC
#_00F60F: ADC.l .vertical,X
#_00F613: STA.b $E6

#_00F615: LDA.b $22
#_00F617: SEC
#_00F618: SBC.w #$0058
#_00F61B: STA.b $00

;---------------------------------------------------------------------------------------------------

#_00F61D: LDA.b $E2
#_00F61F: SEC
#_00F620: SBC.b $00

#_00F622: CLC
#_00F623: ADC.l .horizontal,X

#_00F627: CLC
#_00F628: ADC.l .adjust,X

#_00F62C: CLC
#_00F62D: ADC.l .margin,X

#_00F631: BPL .lower_in_bounds

#_00F633: LDA.w #$0000

.lower_in_bounds
#_00F636: CMP.l .max,X
#_00F63A: BCC .upper_in_bounds

#_00F63C: LDA.l .max,X

.upper_in_bounds
#_00F640: SEC
#_00F641: SBC.l .margin,X
#_00F645: STA.b $E0

#_00F647: SEP #$30

#_00F649: RTL

;===================================================================================================

AdjustWaterHDMAWindow:
#_00F64A: REP #$30

#_00F64C: LDA.w $0682
#_00F64F: SEC
#_00F650: SBC.b $E8
#_00F652: STA.b $0A

#_00F654: SEC
#_00F655: SBC.w $0684
#_00F658: STA.w $0674

#_00F65B: LDA.b $0A
#_00F65D: CLC
#_00F65E: ADC.w $0684

;===================================================================================================

AdjustWaterHDMAWindow_Horizontal:
#_00F661: STA.w $0676

#_00F664: LDA.w $0680
#_00F667: SEC
#_00F668: SBC.b $E2
#_00F66A: STA.w $0670

#_00F66D: LDA.w $0686
#_00F670: BEQ .horizontal_zero

#_00F672: DEC A

.horizontal_zero
#_00F673: STA.b $0C

#_00F675: CLC
#_00F676: ADC.w $0670
#_00F679: STA.b $02

#_00F67B: LDA.w $0670
#_00F67E: SEC
#_00F67F: SBC.b $0C
#_00F681: STA.b $00

#_00F683: LDY.w #$0000 ; !USELESS with the below TAY
#_00F686: BMI .positive_a ; !USELESS this will always fail

#_00F688: TAY

#_00F689: AND.w #$FF00
#_00F68C: BEQ .positive_a

#_00F68E: LDY.w #$00FF

.positive_a
#_00F691: TYA
#_00F692: AND.w #$00FF
#_00F695: STA.b $00

#_00F697: LDA.b $02
#_00F699: TAY

#_00F69A: AND.w #$FF00
#_00F69D: BEQ .positive_b

#_00F69F: LDY.w #$00FF

.positive_b
#_00F6A2: TYA
#_00F6A3: AND.w #$00FF
#_00F6A6: XBA
#_00F6A7: ORA.b $00
#_00F6A9: STA.b $0C

#_00F6AB: LDA.b $0A
#_00F6AD: ASL A
#_00F6AE: STA.b $06

#_00F6B0: CMP.w #$00E0
#_00F6B3: BCS .not_too_far

#_00F6B5: LDA.w #$00E0
#_00F6B8: STA.b $06

.not_too_far
#_00F6BA: LDA.b $06
#_00F6BC: SEC
#_00F6BD: SBC.b $0A
#_00F6BF: STA.b $08

#_00F6C1: LDA.b $0A
#_00F6C3: SEC
#_00F6C4: SBC.b $08
#_00F6C6: STA.b $04

#_00F6C8: BRA .start

;---------------------------------------------------------------------------------------------------

.next
#_00F6CA: INC.b $04

#_00F6CC: DEC.b $06

.start
#_00F6CE: LDA.b $04
#_00F6D0: BMI .dont_add_to_hdma_y

#_00F6D2: LDA.w $0674
#_00F6D5: BMI .no_new_line_y

#_00F6D7: LDA.b $04
#_00F6D9: CMP.w $0674
#_00F6DC: BCS .no_new_line_y

#_00F6DE: ASL A
#_00F6DF: TAX

#_00F6E0: LDA.w #$00FF

#_00F6E3: BRA .check_for_entry_y

.no_new_line_y
#_00F6E5: LDA.b $04
#_00F6E7: ASL A
#_00F6E8: TAX

#_00F6E9: LDA.b $0C

.check_for_entry_y
#_00F6EB: CPX.w #$01C0
#_00F6EE: BCS .dont_add_to_hdma_y

#_00F6F0: CMP.w #$FFFF
#_00F6F3: BNE .not_end_y

#_00F6F5: LDA.w #$00FF

.not_end_y
#_00F6F8: STA.w $1B00,X

.dont_add_to_hdma_y
#_00F6FB: LDA.b $06
#_00F6FD: CMP.w $0676
#_00F700: BCC .no_new_line_x

#_00F702: ASL A
#_00F703: TAX

#_00F704: LDA.w #$00FF
#_00F707: BRA .check_for_entry_x

.no_new_line_x
#_00F709: CMP.w #$00E1
#_00F70C: BCC .dont_change_boundary_x

#_00F70E: LDA.w $0678
#_00F711: BEQ .dont_change_boundary_x

#_00F713: DEC.w $0678

.dont_change_boundary_x
#_00F716: LDA.b $06
#_00F718: ASL A
#_00F719: TAX

#_00F71A: LDA.b $0C

.check_for_entry_x
#_00F71C: CPX.w #$01C0
#_00F71F: BCS .dont_add_to_hdma_x

#_00F721: CMP.w #$FFFF
#_00F724: BNE .not_end_x

#_00F726: LDA.w #$00FF

.not_end_x
#_00F729: STA.w $1B00,X

.dont_add_to_hdma_x
#_00F72C: LDA.b $0A
#_00F72E: CMP.b $04
#_00F730: BNE .next

#_00F732: SEP #$30

#_00F734: RTL

;===================================================================================================

FloodDam_PrepFloodHDMA:
#_00F735: REP #$30

#_00F737: STZ.b $04

#_00F739: LDA.w $0682
#_00F73C: SEC
#_00F73D: SBC.b $E8
#_00F73F: STA.w $0674

#_00F742: LDA.w $0680
#_00F745: SEC
#_00F746: SBC.b $E2
#_00F748: STA.w $0670

#_00F74B: LDA.w $0686
#_00F74E: EOR.w #$0001
#_00F751: STA.b $0E

#_00F753: CLC
#_00F754: ADC.w $0670
#_00F757: STA.b $02

#_00F759: LDA.w $0670
#_00F75C: SEC
#_00F75D: SBC.b $0E
#_00F75F: AND.w #$00FF
#_00F762: STA.b $00

#_00F764: LDA.b $02
#_00F766: AND.w #$00FF
#_00F769: XBA
#_00F76A: ORA.b $00
#_00F76C: STA.b $0C

;---------------------------------------------------------------------------------------------------

.next_a
#_00F76E: LDA.b $04
#_00F770: ASL A
#_00F771: TAX

#_00F772: LDA.w #$FF00
#_00F775: STA.w $1B00,X

#_00F778: INC.b $04

#_00F77A: LDA.b $04
#_00F77C: CMP.w $0676
#_00F77F: BNE .next_a

;---------------------------------------------------------------------------------------------------

#_00F781: LDA.b $0E
#_00F783: SEC
#_00F784: SBC.w #$0007
#_00F787: CLC
#_00F788: ADC.w #$0008
#_00F78B: STA.b $0C

#_00F78D: CLC
#_00F78E: ADC.w $0670
#_00F791: STA.b $02

#_00F793: LDA.w $0670
#_00F796: SEC
#_00F797: SBC.b $0C
#_00F799: AND.w #$00FF
#_00F79C: STA.b $00

#_00F79E: LDA.b $02
#_00F7A0: AND.w #$00FF
#_00F7A3: XBA
#_00F7A4: ORA.b $00
#_00F7A6: STA.b $0C

#_00F7A8: LDA.w $0676
#_00F7AB: CLC
#_00F7AC: ADC.w $0684
#_00F7AF: EOR.w #$0001
#_00F7B2: STA.b $0A

;---------------------------------------------------------------------------------------------------

.next_b
#_00F7B4: LDA.b $04
#_00F7B6: CMP.b $0A
#_00F7B8: BCC .shift_in_bounds

#_00F7BA: ASL A
#_00F7BB: TAX

#_00F7BC: LDA.w #$00FF

#_00F7BF: BRA .continue

.shift_in_bounds
#_00F7C1: ASL A

#_00F7C2: TAX
#_00F7C3: CPX.w #$01C0
#_00F7C6: BCS .shift_in_bounds

#_00F7C8: LDA.b $0C

.continue
#_00F7CA: CMP.w #$FFFF
#_00F7CD: BNE .not_neg1

#_00F7CF: LDA.w #$00FF

.not_neg1
#_00F7D2: STA.w $1B00,X

#_00F7D5: INC.b $04

#_00F7D7: LDA.b $04
#_00F7D9: CMP.w #$00E1
#_00F7DC: BCC .next_b

#_00F7DE: SEP #$30

#_00F7E0: RTL

;===================================================================================================
; FREE ROM: 0x1F
;===================================================================================================
NULL_00F7E1:
#_00F7E1: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_00F7E9: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_00F7F1: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_00F7F9: db $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================
; MoN called this Module_Messaging, but I dislike that name
; Everything accomplished here can reasonably be called an interface
; But don't get used to me explaining nomenclature differences
; TODO further document
;===================================================================================================
Module0E_Interface:
#_00F800: LDA.b $1B
#_00F802: BEQ .outdoors

#_00F804: LDA.b $11
#_00F806: CMP.b #$03
#_00F808: BNE .not_dungeon_map

#_00F80A: LDA.w $0200 ; basically a subsubmodule for maps
#_00F80D: BEQ .continue

#_00F80F: CMP.b #$07
#_00F811: BEQ .continue

#_00F813: BRA .skip_core

;---------------------------------------------------------------------------------------------------

.not_dungeon_map
#_00F815: JSL PushBlock_Handler

#_00F819: BRA .continue

;---------------------------------------------------------------------------------------------------

.outdoors
#_00F81B: LDA.b $11
#_00F81D: CMP.b #$07
#_00F81F: BEQ .overworld_map

#_00F821: CMP.b #$0A ; duck
#_00F823: BNE .continue

.overworld_map
#_00F825: LDA.w $0200
#_00F828: BNE .skip_core

;---------------------------------------------------------------------------------------------------

.continue
#_00F82A: JSL Sprite_Main
#_00F82E: JSL LinkOAM_Main

#_00F832: LDA.b $1B
#_00F834: BNE .indoors

#_00F836: JSL OverworldOverlay_HandleRain

.indoors
#_00F83A: JSL RefillLogic_long

#_00F83E: LDA.b $11
#_00F840: CMP.b #$02
#_00F842: BEQ .skip_core

#_00F844: JSL OrientLampLightCone

;---------------------------------------------------------------------------------------------------

.skip_core
#_00F848: SEP #$30

#_00F84A: JSL RunInterface

; handle camera offsets
#_00F84E: REP #$21

#_00F850: LDA.b $E2
#_00F852: ADC.w $011A
#_00F855: STA.w $011E

#_00F858: LDA.b $E8
#_00F85A: CLC
#_00F85B: ADC.w $011C
#_00F85E: STA.w $0122

#_00F861: LDA.b $E0
#_00F863: CLC
#_00F864: ADC.w $011A
#_00F867: STA.w $0120

#_00F86A: LDA.b $E6
#_00F86C: CLC
#_00F86D: ADC.w $011C
#_00F870: STA.w $0124

#_00F873: SEP #$20

;===================================================================================================

Module0E_00_Nothing:
#_00F875: RTL

;===================================================================================================

pool RunInterface

.low
#_00F876: db Module0E_00_Nothing>>0
#_00F877: db Module0E_01_ItemMenu>>0
#_00F878: db Module0E_02_RenderText>>0
#_00F879: db Module0E_03_UnderworldMap>>0
#_00F87A: db Module0E_04_RedPotion>>0
#_00F87B: db Module0E_05_DesertPrayer>>0
#_00F87C: db Module0E_06_Unused>>0
#_00F87D: db Module0E_07_OverworldMap>>0
#_00F87E: db Module0E_08_GreenPotion>>0
#_00F87F: db Module0E_09_BluePotion>>0
#_00F880: db Module0E_0A_FluteMenu>>0
#_00F881: db Module0E_0B_SaveMenu>>0

;---------------------------------------------------------------------------------------------------

.high
#_00F882: db Module0E_00_Nothing>>8
#_00F883: db Module0E_01_ItemMenu>>8
#_00F884: db Module0E_02_RenderText>>8
#_00F885: db Module0E_03_UnderworldMap>>8
#_00F886: db Module0E_04_RedPotion>>8
#_00F887: db Module0E_05_DesertPrayer>>8
#_00F888: db Module0E_06_Unused>>8
#_00F889: db Module0E_07_OverworldMap>>8
#_00F88A: db Module0E_08_GreenPotion>>8
#_00F88B: db Module0E_09_BluePotion>>8
#_00F88C: db Module0E_0A_FluteMenu>>8
#_00F88D: db Module0E_0B_SaveMenu>>8

;---------------------------------------------------------------------------------------------------

.bank
#_00F88E: db Module0E_00_Nothing>>16
#_00F88F: db Module0E_01_ItemMenu>>16
#_00F890: db Module0E_02_RenderText>>16
#_00F891: db Module0E_03_UnderworldMap>>16
#_00F892: db Module0E_04_RedPotion>>16
#_00F893: db Module0E_05_DesertPrayer>>16
#_00F894: db Module0E_06_Unused>>16
#_00F895: db Module0E_07_OverworldMap>>16
#_00F896: db Module0E_08_GreenPotion>>16
#_00F897: db Module0E_09_BluePotion>>16
#_00F898: db Module0E_0A_FluteMenu>>16
#_00F899: db Module0E_0B_SaveMenu>>16

pool off

;---------------------------------------------------------------------------------------------------

RunInterface:
#_00F89A: LDX.b $11

#_00F89C: LDA.l .low,X
#_00F8A0: STA.b $00

#_00F8A2: LDA.l .high,X
#_00F8A6: STA.b $01

#_00F8A8: LDA.l .bank,X
#_00F8AC: STA.b $02

#_00F8AE: JML.w [$0000]

;===================================================================================================

Module0E_05_DesertPrayer:
#_00F8B1: LDA.b $B0
#_00F8B3: JSL JumpTableLong
#_00F8B7: dl ResetTransitionPropsAndAdvance_ResetInterface_long
#_00F8BA: dl ApplyPaletteFilter
#_00F8BD: dl DesertPrayer_InitializeCutscene
#_00F8C0: dl DesertPrayer_FadeScene
#_00F8C3: dl DesertPrayer_WaitForInput

;===================================================================================================

DesertPrayer_InitializeCutscene:
#_00F8C6: JSL DesertPrayer_InitializeIrisHDMA

#_00F8CA: LDA.l $7EC00B
#_00F8CE: DEC A
#_00F8CF: STA.l $7EC007

#_00F8D3: LDA.b #$00
#_00F8D5: STA.l $7EC00B

#_00F8D9: LDA.b #$02
#_00F8DB: STA.l $7EC009

#_00F8DF: RTL

;===================================================================================================

DesertPrayer_FadeScene:
#_00F8E0: JSL ApplyPaletteFilter

;===================================================================================================

DesertPrayer_WaitForInput:
#_00F8E4: JSL DesertPrayer_BuildIrisHDMATable

#_00F8E8: RTL

;===================================================================================================

Module0E_06_Unused:
#_00F8E9: LDA.b $B0
#_00F8EB: JSL JumpTableLong
#_00F8EF: dl ResetTransitionPropsAndAdvance_ResetInterface_long
#_00F8F2: dl ApplyPaletteFilter
#_00F8F5: dl Underworld_HandleTranslucencyAndPalettes_long
#_00F8F8: dl UnusedInterfacePaletteRecovery_long

;===================================================================================================

Module0E_04_RedPotion:
#_00F8FB: JSL AnimatedRefill_Health
#_00F8FF: BCC .exit

;===================================================================================================

#Module0E_Interface_RestoreModeFromPotion:
#_00F901: LDA.b $3A ; clear Y button
#_00F903: AND.b #$BF
#_00F905: STA.b $3A

#_00F907: INC.b $16

#_00F909: STZ.b $11 ; bad assumption to always use submodule 0

#_00F90B: LDA.w $010C ; restore previous module
#_00F90E: STA.b $10

.exit
#_00F910: RTL

;===================================================================================================

Module0E_08_GreenPotion:
#_00F911: JSL AnimatedRefill_Magic
#_00F915: BCS Module0E_Interface_RestoreModeFromPotion

#_00F917: RTL

;===================================================================================================

Module0E_09_BluePotion:
#_00F918: JSL AnimatedRefill_Health
#_00F91C: BCC .health_full

#_00F91E: LDA.b #$08 ; switch to green potion submodule for magic only
#_00F920: STA.b $11

.health_full
#_00F922: JSL AnimatedRefill_Magic
#_00F926: BCC .magic_full

#_00F928: LDA.b #$04 ; switch to red potion submodule for health only
#_00F92A: STA.b $11

.magic_full
#_00F92C: RTL

;===================================================================================================

pool PrepareDungeonExitFromBossFight

.boss_room
#_00F92D: db $C8 ; Armos→Eastern lobby
#_00F92E: db $33 ; Lanmolas→Desert 3
#_00F92F: db $07 ; Moldorm→Hera lobby
#_00F930: db $20 ; Agahnim→self
#_00F931: db $06 ; Arrghus→Swamp lobby
#_00F932: db $5A ; Helmasaur→PoD lobby
#_00F933: db $29 ; Mothula→Skull 3
#_00F934: db $90 ; Vitreous→Mire foyer
#_00F935: db $DE ; Kholdstare→Ice 1
#_00F936: db $A4 ; Trinexx→TR foyer
#_00F937: db $AC ; Blind→Thieves' lobby
#_00F938: db $0D ; Agahnim 2→self

.exit_room
#_00F939: db $C9 ; Armos→Eastern lobby
#_00F93A: db $63 ; Lanmolas→Desert 3
#_00F93B: db $77 ; Moldorm→Hera lobby
#_00F93C: db $20 ; Agahnim→self
#_00F93D: db $28 ; Arrghus→Swamp lobby
#_00F93E: db $4A ; Helmasaur→PoD lobby
#_00F93F: db $59 ; Mothula→Skull 3
#_00F940: db $98 ; Vitreous→Mire foyer
#_00F941: db $0E ; Kholdstare→Ice 1
#_00F942: db $D6 ; Trinexx→TR foyer
#_00F943: db $DB ; Blind→Thieves' lobby
#_00F944: db $0D ; Agahnim 2→self

pool off

;---------------------------------------------------------------------------------------------------

PrepareDungeonExitFromBossFight:
#_00F945: JSL SaveDeathCount
#_00F949: JSL SaveDungeonKeys

#_00F94D: LDA.w $0403
#_00F950: ORA.b #$80
#_00F952: STA.w $0403

#_00F955: JSL Underworld_FlagRoomData_Quadrants

#_00F959: LDX.b #$0C

#_00F95B: LDA.b $A0

.check_next
#_00F95D: DEX

#_00F95E: CMP.l .boss_room,X
#_00F962: BNE .check_next

#_00F964: LDA.l .exit_room,X
#_00F968: STA.b $A0

#_00F96A: CMP.b #$20
#_00F96C: BNE .not_aga1

;---------------------------------------------------------------------------------------------------

#_00F96E: LDA.b #$03
#_00F970: STA.l $7EF3C5

; Lumberjack overlay
#_00F974: LDA.l $7EF282
#_00F978: ORA.b #$20
#_00F97A: STA.l $7EF282

#_00F97E: LDA.l $7EF3CA
#_00F982: EOR.b #$40
#_00F984: STA.l $7EF3CA

#_00F988: JSL Sprite_LoadGraphicsProperties_light_world_only
#_00F98C: JSL Ancilla_TerminateSelectInteractives

#_00F990: STZ.w $037B

#_00F993: STZ.b $3C
#_00F995: STZ.b $3A

#_00F997: STZ.w $03EF

#_00F99A: LDA.b #$01
#_00F99C: STA.w $02E4

#_00F99F: LDA.b #$08
#_00F9A1: STA.w $010C

#_00F9A4: LDA.b #$15
#_00F9A6: STA.b $10

#_00F9A8: STZ.b $11
#_00F9AA: STZ.b $B0

#_00F9AC: RTL

;---------------------------------------------------------------------------------------------------

.not_aga1
#_00F9AD: CMP.b #$0D
#_00F9AF: BNE .not_aga2

#_00F9B1: LDA.b #$18
#_00F9B3: STA.b $10

#_00F9B5: STZ.b $11

#_00F9B7: STZ.w $0200

#_00F9BA: LDA.b #$20
#_00F9BC: STA.b $9A

#_00F9BE: RTL

;---------------------------------------------------------------------------------------------------

.not_aga2
#_00F9BF: CPX.b #$03
#_00F9C1: BCC .light_world_dungeon

#_00F9C3: LDA.b #!SONG_F1_FADE
#_00F9C5: STA.w $012C
#_00F9C8: STA.w $0130

#_00F9CB: LDA.b #$16
#_00F9CD: BRA .set_module

.light_world_dungeon
#_00F9CF: LDA.b #$13

.set_module
#_00F9D1: STA.b $10

#_00F9D3: LDA.b #$08
#_00F9D5: STA.w $010C

#_00F9D8: STZ.b $11
#_00F9DA: STZ.b $B0

#_00F9DC: RTL

;===================================================================================================

SaveDeathCount:
#_00F9DD: PHX

#_00F9DE: REP #$20

#_00F9E0: LDX.w $040C

#_00F9E3: LDA.l $7EF3FF
#_00F9E7: STA.l $7EF3E3,X

#_00F9EB: CPX.b #$08
#_00F9ED: BEQ .aga_tower

#_00F9EF: LDA.w #$0000
#_00F9F2: STA.l $7EF3FF

.aga_tower
#_00F9F6: SEP #$20

#_00F9F8: PLX

#_00F9F9: RTL

;===================================================================================================

Module0E_0B_SaveMenu:
#_00F9FA: LDA.b $1B
#_00F9FC: BNE .indoors

#_00F9FE: JSL FlashGanonTowerPalette

.indoors
#_00FA02: JSL RenderText

#_00FA06: STZ.b $16
#_00FA08: STZ.w $0710

#_00FA0B: LDA.b $B0
#_00FA0D: CMP.b #$03
#_00FA0F: BCS .done_text_sub

#_00FA11: INC.b $B0

#_00FA13: BRA .continue

.done_text_sub
#_00FA15: STZ.b $14

.continue
#_00FA17: LDA.b $11
#_00FA19: BNE .exit

#_00FA1B: STZ.b $B0

#_00FA1D: LDA.b #$01
#_00FA1F: STA.b $14

#_00FA21: LDA.w $1CE8
#_00FA24: BEQ .dont_save

#_00FA26: LDA.b #!SFX1_0F
#_00FA28: STA.w $012D

#_00FA2B: LDA.b #$17
#_00FA2D: STA.b $10

#_00FA2F: LDA.b #$01
#_00FA31: STA.b $11

#_00FA33: STZ.w $05FC
#_00FA36: STZ.w $05FD

#_00FA39: RTL

.dont_save
#_00FA3A: LDA.w $1CF4
#_00FA3D: STA.w $1CE8

.exit
#_00FA40: RTL

;===================================================================================================
; TODO split by screen

pool Sprite_LoadGraphicsProperties

.chunk_a
#_00FA41: db $00, $00, $00, $00, $00, $00, $00, $00
#_00FA49: db $00, $00, $00, $00, $00, $00, $00, $00
#_00FA51: db $00, $00, $00, $00, $00, $00, $00, $00
#_00FA59: db $00, $00, $00, $02, $02, $00, $00, $00
#_00FA61: db $00, $00, $00, $02, $02, $00, $00, $00
#_00FA69: db $00, $00, $00, $02, $02, $00, $00, $00
#_00FA71: db $00, $00, $00, $00, $00, $00, $00, $00
#_00FA79: db $00, $00, $00, $00, $00, $00, $00, $00
#_00FA81: db $07, $07, $07, $10, $10, $10, $10, $10
#_00FA89: db $07, $07, $07, $10, $10, $10, $10, $04
#_00FA91: db $06, $06, $00, $03, $03, $00, $0D, $0A
#_00FA99: db $06, $06, $01, $01, $01, $04, $05, $05
#_00FAA1: db $06, $06, $06, $01, $01, $04, $05, $05
#_00FAA9: db $06, $09, $0F, $00, $00, $0B, $0B, $05
#_00FAB1: db $08, $08, $0A, $04, $04, $04, $04, $04
#_00FAB9: db $08, $08, $0A, $04, $04, $04, $04, $04
#_00FAC1: db $07, $07, $1A, $10, $10, $10, $10, $10
#_00FAC9: db $07, $07, $1A, $10, $10, $10, $10, $04
#_00FAD1: db $06, $06, $00, $03, $03, $00, $0D, $0A
#_00FAD9: db $06, $06, $1C, $1C, $1C, $02, $05, $05
#_00FAE1: db $06, $06, $06, $1C, $1C, $00, $05, $05
#_00FAE9: db $06, $00, $0F, $00, $00, $23, $23, $05
#_00FAF1: db $1F, $1F, $0A, $20, $20, $20, $20, $20
#_00FAF9: db $1F, $1F, $0A, $20, $20, $20, $20, $20
#_00FB01: db $13, $13, $17, $14, $14, $14, $14, $14
#_00FB09: db $13, $13, $17, $14, $14, $14, $14, $16
#_00FB11: db $15, $15, $12, $13, $13, $18, $16, $16
#_00FB19: db $15, $15, $13, $26, $26, $13, $17, $17
#_00FB21: db $15, $15, $15, $26, $26, $13, $17, $17
#_00FB29: db $1B, $1D, $11, $13, $13, $18, $18, $17
#_00FB31: db $16, $16, $13, $13, $13, $19, $19, $19
#_00FB39: db $16, $16, $18, $13, $18, $19, $19, $19

.chunk_b
#_00FB41: db $01, $01, $01, $01, $01, $01, $01, $01
#_00FB49: db $01, $01, $01, $01, $01, $01, $01, $01
#_00FB51: db $01, $01, $01, $01, $01, $01, $01, $01
#_00FB59: db $01, $01, $01, $01, $01, $01, $01, $01
#_00FB61: db $01, $01, $01, $01, $01, $01, $01, $01
#_00FB69: db $01, $01, $01, $01, $01, $01, $01, $01
#_00FB71: db $01, $01, $01, $01, $01, $01, $01, $01
#_00FB79: db $01, $01, $01, $01, $01, $01, $01, $01
#_00FB81: db $05, $05, $06, $09, $09, $09, $09, $09
#_00FB89: db $05, $05, $06, $09, $09, $09, $09, $03
#_00FB91: db $01, $01, $00, $02, $02, $00, $06, $03
#_00FB99: db $01, $01, $01, $03, $03, $03, $07, $07
#_00FBA1: db $01, $01, $01, $03, $03, $03, $07, $07
#_00FBA9: db $01, $00, $01, $00, $00, $03, $03, $07
#_00FBB1: db $04, $04, $00, $03, $03, $03, $03, $03
#_00FBB9: db $04, $04, $00, $03, $03, $03, $03, $03
#_00FBC1: db $05, $05, $06, $09, $09, $09, $09, $09
#_00FBC9: db $05, $05, $06, $09, $09, $09, $09, $03
#_00FBD1: db $01, $01, $00, $02, $02, $00, $06, $03
#_00FBD9: db $01, $01, $01, $01, $01, $03, $07, $07
#_00FBE1: db $01, $01, $01, $01, $01, $03, $07, $07
#_00FBE9: db $01, $00, $01, $00, $00, $03, $03, $07
#_00FBF1: db $04, $04, $00, $03, $03, $03, $03, $03
#_00FBF9: db $04, $04, $00, $03, $03, $03, $03, $03
#_00FC01: db $0E, $0E, $10, $0C, $0C, $0C, $0C, $0C
#_00FC09: db $0E, $0E, $10, $0C, $0C, $0C, $0C, $0A
#_00FC11: db $10, $10, $00, $0E, $0E, $00, $0D, $0A
#_00FC19: db $10, $10, $10, $0E, $0E, $0E, $0D, $0D
#_00FC21: db $10, $10, $10, $0E, $0E, $0E, $0D, $0D
#_00FC29: db $12, $00, $0B, $0E, $0E, $0E, $0E, $0D
#_00FC31: db $0F, $0F, $00, $0E, $0E, $0E, $0E, $0E
#_00FC39: db $0F, $0F, $00, $0E, $0E, $0E, $0E, $0E

pool off

;---------------------------------------------------------------------------------------------------
; TODO
Sprite_LoadGraphicsProperties:
#_00FC41: PHB
#_00FC42: PHK
#_00FC43: PLB

#_00FC44: REP #$30

#_00FC46: LDY.w #$00FE
#_00FC49: LDX.w #$003E

.next_a
#_00FC4C: LDA.w .chunk_a,Y
#_00FC4F: STA.l $7EFD00,X

#_00FC53: LDA.w .chunk_b,Y
#_00FC56: STA.l $7EFD80,X

#_00FC5A: DEY
#_00FC5B: DEY

#_00FC5C: DEX
#_00FC5D: DEX
#_00FC5E: BPL .next_a

#_00FC60: BRA .continue

;===================================================================================================

#Sprite_LoadGraphicsProperties_light_world_only:
#_00FC62: PHB
#_00FC63: PHK
#_00FC64: PLB

#_00FC65: REP #$30

.continue
#_00FC67: LDY.w #$003E

#_00FC6A: LDA.l $7EF3C5
#_00FC6E: AND.w #$00FF
#_00FC71: CMP.w #$0002
#_00FC74: BCC .start_lw

#_00FC76: LDY.w #$007E
#_00FC79: CMP.w #$0003
#_00FC7C: BNE .start_lw

#_00FC7E: LDY.w #$00BE

;---------------------------------------------------------------------------------------------------

.start_lw
#_00FC81: LDX.w #$003E

.next_b
#_00FC84: LDA.w .chunk_a,Y
#_00FC87: STA.l $7EFCC0,X

#_00FC8B: LDA.w .chunk_b,Y
#_00FC8E: STA.l $7EFD40,X

#_00FC92: DEY
#_00FC93: DEY

#_00FC94: DEX
#_00FC95: DEX
#_00FC96: BPL .next_b

;---------------------------------------------------------------------------------------------------

#_00FC98: SEP #$30

#_00FC9A: PLB

#_00FC9B: RTL

;===================================================================================================

GFXAA2ValsOW:
#_00FC9C: db $21, $21, $21, $22, $22, $22, $22, $22
#_00FCA4: db $21, $21, $21, $22, $22, $22, $22, $27
#_00FCAC: db $23, $23, $20, $29, $29, $20, $29, $29
#_00FCB4: db $23, $23, $20, $24, $24, $27, $25, $25
#_00FCBC: db $23, $23, $23, $24, $24, $20, $25, $25
#_00FCC4: db $23, $2A, $21, $20, $20, $27, $20, $25
#_00FCCC: db $2B, $2B, $20, $27, $27, $27, $27, $27
#_00FCD4: db $2B, $2B, $20, $27, $27, $27, $27, $27
#_00FCDC: db $3E, $3E, $3E, $41, $41, $41, $41, $3C
#_00FCE4: db $3E, $3E, $3E, $41, $41, $41, $41, $40
#_00FCEC: db $3F, $3F, $30, $40, $40, $30, $40, $30
#_00FCF4: db $3F, $3F, $30, $3B, $3B, $40, $3D, $3D
#_00FCFC: db $3F, $3F, $3F, $3B, $3B, $30, $3D, $3D
#_00FD04: db $3F, $3F, $30, $30, $30, $40, $30, $3D
#_00FD0C: db $42, $42, $30, $40, $40, $42, $42, $40
#_00FD14: db $42, $42, $30, $40, $40, $42, $42, $30

;===================================================================================================

OverworldPalettesScreenToSet:
#_00FD1C: db $06, $06, $08, $07, $07, $07, $07, $07
#_00FD24: db $06, $06, $08, $07, $07, $07, $07, $04
#_00FD2C: db $08, $08, $00, $01, $01, $00, $09, $00
#_00FD34: db $08, $08, $00, $02, $02, $04, $09, $09
#_00FD3C: db $08, $08, $08, $02, $02, $00, $09, $09
#_00FD44: db $08, $08, $01, $00, $00, $04, $00, $09
#_00FD4C: db $09, $00, $00, $04, $04, $04, $04, $04
#_00FD54: db $09, $09, $00, $04, $04, $04, $04, $04
#_00FD5C: db $1B, $1B, $1E, $17, $17, $17, $17, $18
#_00FD64: db $1B, $1B, $1E, $17, $17, $17, $17, $1D
#_00FD6C: db $1E, $1E, $10, $1E, $1E, $10, $1E, $10
#_00FD74: db $1E, $1E, $10, $12, $12, $10, $1A, $1A
#_00FD7C: db $1E, $1E, $1E, $12, $12, $10, $1A, $1A
#_00FD84: db $1E, $10, $12, $10, $10, $1D, $10, $1A
#_00FD8C: db $1C, $1C, $10, $1D, $1D, $1C, $1C, $1D
#_00FD94: db $1C, $1C, $10, $1D, $1D, $1C, $1C, $10
#_00FD9C: db $0A, $0A, $0A, $0A, $02, $02, $02, $0A

;===================================================================================================

ResetStarTileGraphics:
#_00FDA4: STZ.w $04BC

;===================================================================================================

ToggleStarTileGraphics:
#_00FDA7: REP #$10

#_00FDA9: LDX.w #$0000
#_00FDAC: LDY.w #$0020

#_00FDAF: LDA.w $04BC
#_00FDB2: BEQ .already_zero

#_00FDB4: TYX
#_00FDB5: LDY.w #$0000

.already_zero
#_00FDB8: STY.b $0E

#_00FDBA: PHB

#_00FDBB: LDA.b #$7F
#_00FDBD: PHA
#_00FDBE: PLB

;---------------------------------------------------------------------------------------------------

#_00FDBF: REP #$20

#_00FDC1: LDY.w #$0000

.next_a
#_00FDC4: LDA.l $7EBDC0,X
#_00FDC8: STA.w $7F0000,Y

#_00FDCB: INX
#_00FDCC: INX

#_00FDCD: INY
#_00FDCE: INY

#_00FDCF: CPY.w #$0020
#_00FDD2: BNE .next_a

;---------------------------------------------------------------------------------------------------

#_00FDD4: LDX.b $0E

.next_b
#_00FDD6: LDA.l $7EBDC0,X
#_00FDDA: STA.w $7F0000,Y

#_00FDDD: INX
#_00FDDE: INX

#_00FDDF: INY
#_00FDE0: INY

#_00FDE1: CPY.w #$0040
#_00FDE4: BNE .next_b

;---------------------------------------------------------------------------------------------------

#_00FDE6: SEP #$30

#_00FDE8: PLB

#_00FDE9: LDA.b #$18
#_00FDEB: STA.b $17

#_00FDED: RTL

;===================================================================================================

InitializeMirrorHDMA:
#_00FDEE: STZ.b $9B

#_00FDF0: REP #$20

#_00FDF2: STZ.w $06A0
#_00FDF5: STZ.w $06AC
#_00FDF8: STZ.w $06AA
#_00FDFB: STZ.w $06AE
#_00FDFE: STZ.w $06B0

#_00FE01: LDA.w #$0008
#_00FE04: STA.w $06B4
#_00FE07: STA.w $06B6

#_00FE0A: LDA.w #$0015
#_00FE0D: STA.w $06B2

#_00FE10: LDA.w #$FFC0
#_00FE13: STA.w $06A6

#_00FE16: LDA.w #$0040
#_00FE19: STA.w $06A8

#_00FE1C: LDA.w #$FE00
#_00FE1F: STA.w $06A2

#_00FE22: LDA.w #$0200
#_00FE25: STA.w $06A4

#_00FE28: STZ.w $06AC
#_00FE2B: STZ.w $06AE

#_00FE2E: LDA.w #$0F42
#_00FE31: STA.w DMA7MODE

#_00FE34: LDA.w #$0D42
#_00FE37: STA.w DMA6MODE

#_00FE3A: LDX.b #$3E

#_00FE3C: LDA.b $E2

;===================================================================================================

InitializeHDMATable:
.next
#_00FE3E: STA.w $1B00,X
#_00FE41: STA.w $1B40,X
#_00FE44: STA.w $1B80,X
#_00FE47: STA.w $1BC0,X
#_00FE4A: STA.w $1C00,X
#_00FE4D: STA.w $1C40,X
#_00FE50: STA.w $1C80,X

#_00FE53: DEX
#_00FE54: DEX
#_00FE55: BPL .next

#_00FE57: SEP #$20

#_00FE59: LDA.b #$C0
#_00FE5B: STA.b $9B

;---------------------------------------------------------------------------------------------------

#EXIT_00FE5D:
#_00FE5D: RTL

;===================================================================================================

MirrorWarp_BuildAndEnableHDMATable:
#_00FE5E: INC.b $B0

#_00FE60: LDA.b #$C0
#_00FE62: STA.b $9B

;===================================================================================================

MirrorWarp_BuildWavingHDMATable:
#_00FE64: JSL MirrorWarp_RunAnimationSubmodules

#_00FE68: LDA.b $1A
#_00FE6A: LSR A
#_00FE6B: BCS EXIT_00FE5D

#_00FE6D: REP #$30

#_00FE6F: LDX.w #$01A0
#_00FE72: LDY.w #$01B0

#_00FE75: LDA.w #$0002
#_00FE78: STA.b $00

#_00FE7A: LDA.w #$0003
#_00FE7D: STA.b $02

;---------------------------------------------------------------------------------------------------

.next
#_00FE7F: LDA.w $1B00,X
#_00FE82: STA.w $1B00,Y
#_00FE85: STA.w $1B04,Y
#_00FE88: STA.w $1B08,Y
#_00FE8B: STA.w $1B0C,Y

#_00FE8E: TXA
#_00FE8F: SEC
#_00FE90: SBC.w #$0010
#_00FE93: TAX

#_00FE94: DEC.b $00
#_00FE96: BNE .dont_reset_a

#_00FE98: LDA.w #$0008
#_00FE9B: STA.b $00

.dont_reset_a
#_00FE9D: TYA
#_00FE9E: SEC
#_00FE9F: SBC.w #$0010
#_00FEA2: TAY

#_00FEA3: DEC.b $02
#_00FEA5: BNE .dont_reset_b

#_00FEA7: LDA.w #$0008
#_00FEAA: STA.b $02

.dont_reset_b
#_00FEAC: CPY.w #$0000
#_00FEAF: BNE .next

;---------------------------------------------------------------------------------------------------

#_00FEB1: LDX.w $06A0

#_00FEB4: LDA.w $06AC
#_00FEB7: CLC
#_00FEB8: ADC.w $06A6,X
#_00FEBB: PHA

#_00FEBC: SEC
#_00FEBD: SBC.w $06A2,X
#_00FEC0: EOR.w $06A2,X
#_00FEC3: BMI .negative

#_00FEC5: STZ.w $06AA
#_00FEC8: STZ.w $06AE

#_00FECB: LDA.w $06A0
#_00FECE: EOR.w #$0002
#_00FED1: STA.w $06A0

#_00FED4: PLA
#_00FED5: LDA.w $06A2,X

#_00FED8: PHA

.negative
#_00FED9: PLA
#_00FEDA: STA.w $06AC

#_00FEDD: CLC
#_00FEDE: ADC.w $06AE
#_00FEE1: PHA

#_00FEE2: AND.w #$00FF
#_00FEE5: STA.w $06AE

;---------------------------------------------------------------------------------------------------

#_00FEE8: PLA
#_00FEE9: BPL .positive

#_00FEEB: ORA.w #$00FF
#_00FEEE: BRA .continue_with_sign

.positive
#_00FEF0: AND.w #$FF00

.continue_with_sign
#_00FEF3: XBA
#_00FEF4: CLC
#_00FEF5: ADC.w $06AA
#_00FEF8: STA.w $06AA

#_00FEFB: TAX

#_00FEFC: LDA.l $7EC007
#_00FF00: CMP.w #$0030
#_00FF03: BCC .dont_advance

#_00FF05: TXA
#_00FF06: AND.w #$FFF8
#_00FF09: BNE .dont_advance

#_00FF0B: LDA.w #$FF00
#_00FF0E: STA.w $06A2

#_00FF11: LDA.w #$0100
#_00FF14: STA.w $06A4

#_00FF17: LDX.w #$0000

#_00FF1A: INC.b $B0

;---------------------------------------------------------------------------------------------------

.dont_advance
#_00FF1C: TXA
#_00FF1D: CLC
#_00FF1E: ADC.b $E2
#_00FF20: STA.w $1B00
#_00FF23: STA.w $1B04
#_00FF26: STA.w $1B08
#_00FF29: STA.w $1B0C

#_00FF2C: SEP #$30

;---------------------------------------------------------------------------------------------------

#EXIT_00FF2E:
#_00FF2E: RTL

;===================================================================================================

MirrorWarp_BuildDewavingHDMATable:
#_00FF2F: JSL MirrorWarp_RunAnimationSubmodules

#_00FF33: LDA.b $1A
#_00FF35: LSR A
#_00FF36: BCS EXIT_00FF2E

#_00FF38: REP #$30

#_00FF3A: LDX.w #$01A0
#_00FF3D: LDY.w #$01B0

#_00FF40: LDA.w #$0002
#_00FF43: STA.b $00

#_00FF45: LDA.w #$0003
#_00FF48: STA.b $02

;---------------------------------------------------------------------------------------------------

.next
#_00FF4A: LDA.w $1B00,X
#_00FF4D: STA.w $1B00,Y
#_00FF50: STA.w $1B04,Y
#_00FF53: STA.w $1B08,Y
#_00FF56: STA.w $1B0C,Y

#_00FF59: TXA
#_00FF5A: SEC
#_00FF5B: SBC.w #$0010
#_00FF5E: TAX

#_00FF5F: DEC.b $00
#_00FF61: BNE .dont_reset_a

#_00FF63: LDA.w #$0008
#_00FF66: STA.b $00

.dont_reset_a
#_00FF68: TYA
#_00FF69: SEC
#_00FF6A: SBC.w #$0010
#_00FF6D: TAY

#_00FF6E: DEC.b $02
#_00FF70: BNE .dont_reset_b

#_00FF72: LDA.w #$0008
#_00FF75: STA.b $02

.dont_reset_b
#_00FF77: CPY.w #$0000
#_00FF7A: BNE .next

;---------------------------------------------------------------------------------------------------
; TODO quickwarps?
#_00FF7C: LDA.w $1C80
#_00FF7F: ORA.w $1C90
#_00FF82: ORA.w $1CA0
#_00FF85: ORA.w $1CB0

#_00FF88: CMP.b $E2
#_00FF8A: BNE .exit

#_00FF8C: SEP #$20

#_00FF8E: STZ.b $9B

#_00FF90: INC.b $B0

#_00FF92: JSL Overworld_SetFixedColAndScroll

; On hyrule castle/pyramid screen?
#_00FF96: LDA.b $8A
#_00FF98: AND.b #$3F
#_00FF9A: CMP.b #$1B
#_00FF9C: BEQ .exit

#_00FF9E: REP #$20

#_00FFA0: LDA.b $E2
#_00FFA2: STA.b $E0
#_00FFA4: STA.w $0120
#_00FFA7: STA.w $011E

#_00FFAA: LDA.b $E8
#_00FFAC: STA.b $E6
#_00FFAE: STA.w $0122
#_00FFB1: STA.w $0124

.exit
#_00FFB4: SEP #$30

#_00FFB6: RTL

;===================================================================================================
; FREE ROM: 0x09
;===================================================================================================
NULL_00FFB7:
#_00FFB7: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

InternalROMHeader:
#_00FFC0: db "ZELDANODENSETSU      "

#_00FFD5: db $20 ; ROM mapping: lorom
#_00FFD6: db $02 ; Cartridge: ROM+RAM+battery
#_00FFD7: db $0A ; ROM size: 1MB
#_00FFD8: db $03 ; RAM size: 8kB

#_00FFD9: db $00 ; Region: Japan (J)
#_00FFDA: db $01 ; Header type: v2
#_00FFDB: db $00 ; Version: 1.0

#_00FFDC: dw $3237 ; checksum
#_00FFDE: dw $CDC8 ; complement

; native mode interrupt vectors
#_00FFE0: dw $FFFF ; Unused
#_00FFE2: dw $FFFF ; Unused
#_00FFE4: dw Interrupt_Unused
#_00FFE6: dw $FFFF ; BRK
#_00FFE8: dw Interrupt_Unused
#_00FFEA: dw Interrupt_NMI
#_00FFEC: dw Interrupt_Reset
#_00FFEE: dw Interrupt_IRQ

; emulation mode interrupt vectors
#_00FFF0: dw $FFFF ; Unused
#_00FFF2: dw $FFFF ; Unused
#_00FFF4: dw Interrupt_Unused
#_00FFF6: dw Interrupt_Unused
#_00FFF8: dw Interrupt_Unused
#_00FFFA: dw Interrupt_Unused
#_00FFFC: dw Interrupt_Reset
#_00FFFE: dw Interrupt_IRQ

; Due to the high byte of the IRQ vector
; the unused and BRK vectors essentially point to
; #_00FFFF: BRL ????
; where ???? is the volatile memory mirrored from $7E:0000

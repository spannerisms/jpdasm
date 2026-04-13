org $008000

;===================================================================================================
; This is probably how the game starts!
;===================================================================================================
Reset:
|008000| SEI

|008001| STZ.w NMITIMEN
|008004| STZ.w HDMAEN ; [USELESS]
|008007| STZ.w MDMAEN ; [USELESS]

|00800A| STZ.w APUIO0 ; [USELESS] extremely useless
|00800D| STZ.w APUIO1
|008010| STZ.w APUIO2
|008013| STZ.w APUIO3

|008016| LDA.b #$80 ; Enable force blank
|008018| STA.w INIDISP

|00801B| CLC
|00801C| XCE

|00801D| REP #$28

|00801F| LDA.w #$0000
|008022| TCD

|008023| LDA.w #$01FF
|008026| TCS

|008027| SEP #$30

|008029| JSR LoadIntroSongBank
|00802C| JSR InitializeMemoryAndSRAM

|00802F| LDA.b #$81 ; enable NMI and auto joypad read
|008031| STA.w NMITIMEN

;===================================================================================================
; Waits for NMI
; skips debug code
; clears OAM
; does main game code
; parses OAM for transfer
; repeat
;===================================================================================================
MainGameLoop:
|008034| LDA.b $12
|008036| BEQ MainGameLoop

|008038| CLI

|008039| BRA .do_frame

;---------------------------------------------------------------------------------------------------

.frame_step
|00803B| LDA.b $F6
|00803D| AND.b #$20
|00803F| BEQ .L_not_pressed

|008041| INC.w $0FD7

.L_not_pressed
|008044| LDA.b $F6
|008046| AND.b #$10
|008048| BNE .do_frame

|00804A| LDA.w $0FD7
|00804D| AND.b #$01
|00804F| BNE .skip_frame

;---------------------------------------------------------------------------------------------------

.do_frame
|008051| INC.b $1A

|008053| JSR ClearOAMBuffer
|008056| JSL RunModule

.skip_frame
|00805A| JSR PrepareOAMForTransfer

|00805D| STZ.b $12

|00805F| BRA MainGameLoop

;===================================================================================================

pool RunModule

.low
|008061| db <Module00_Intro
|008062| db <Module01_FileSelect
|008063| db <Module02_CopyFile
|008064| db <Module03_KILLFile

|008065| db <Module04_NameFile
|008066| db <Module05_LoadFile
|008067| db <Module06_UnderworldLoad
|008068| db <Module07_Underworld

|008069| db <Module08_OverworldLoad
|00806A| db <Module09_Overworld
|00806B| db <Module0A_OverworldSpecialLoad
|00806C| db <Module0B_OverworldSpecial

|00806D| db <Module0C_Unused
|00806E| db <Module0D_Unused
|00806F| db <Module0E_Interface
|008070| db <Module0F_SpotlightClose

|008071| db <Module10_SpotlightOpen
|008072| db <Module11_UnderworldFallingEntrance
|008073| db <Module12_GameOver
|008074| db <Module13_PendantBossVictory

|008075| db <Module14_Attract
|008076| db <Module15_MirrorWarpFromAga
|008077| db <Module16_CrystalBossVictory
|008078| db <Module17_SaveAndQuit

|008079| db <Module18_GanonEmerges
|00807A| db <Module19_TriforceRoom
|00807B| db <Module1A_Credits
|00807C| db <Module1B_SpawnSelect

;---------------------------------------------------------------------------------------------------

.high
|00807D| db >Module00_Intro
|00807E| db >Module01_FileSelect
|00807F| db >Module02_CopyFile
|008080| db >Module03_KILLFile

|008081| db >Module04_NameFile
|008082| db >Module05_LoadFile
|008083| db >Module06_UnderworldLoad
|008084| db >Module07_Underworld

|008085| db >Module08_OverworldLoad
|008086| db >Module09_Overworld
|008087| db >Module0A_OverworldSpecialLoad
|008088| db >Module0B_OverworldSpecial

|008089| db >Module0C_Unused
|00808A| db >Module0D_Unused
|00808B| db >Module0E_Interface
|00808C| db >Module0F_SpotlightClose

|00808D| db >Module10_SpotlightOpen
|00808E| db >Module11_UnderworldFallingEntrance
|00808F| db >Module12_GameOver
|008090| db >Module13_PendantBossVictory

|008091| db >Module14_Attract
|008092| db >Module15_MirrorWarpFromAga
|008093| db >Module16_CrystalBossVictory
|008094| db >Module17_SaveAndQuit

|008095| db >Module18_GanonEmerges
|008096| db >Module19_TriforceRoom
|008097| db >Module1A_Credits
|008098| db >Module1B_SpawnSelect

;---------------------------------------------------------------------------------------------------

.bank
|008099| db ^Module00_Intro
|00809A| db ^Module01_FileSelect
|00809B| db ^Module02_CopyFile
|00809C| db ^Module03_KILLFile

|00809D| db ^Module04_NameFile
|00809E| db ^Module05_LoadFile
|00809F| db ^Module06_UnderworldLoad
|0080A0| db ^Module07_Underworld

|0080A1| db ^Module08_OverworldLoad
|0080A2| db ^Module09_Overworld
|0080A3| db ^Module0A_OverworldSpecialLoad
|0080A4| db ^Module0B_OverworldSpecial

|0080A5| db ^Module0C_Unused
|0080A6| db ^Module0D_Unused
|0080A7| db ^Module0E_Interface
|0080A8| db ^Module0F_SpotlightClose

|0080A9| db ^Module10_SpotlightOpen
|0080AA| db ^Module11_UnderworldFallingEntrance
|0080AB| db ^Module12_GameOver
|0080AC| db ^Module13_PendantBossVictory

|0080AD| db ^Module14_Attract
|0080AE| db ^Module15_MirrorWarpFromAga
|0080AF| db ^Module16_CrystalBossVictory
|0080B0| db ^Module17_SaveAndQuit

|0080B1| db ^Module18_GanonEmerges
|0080B2| db ^Module19_TriforceRoom
|0080B3| db ^Module1A_Credits
|0080B4| db ^Module1B_SpawnSelect

endpool

;---------------------------------------------------------------------------------------------------

RunModule:
|0080B5| LDY.b $10

|0080B7| LDA.w .low,Y
|0080BA| STA.b $03

|0080BC| LDA.w .high,Y
|0080BF| STA.b $04

|0080C1| LDA.w .bank,Y
|0080C4| STA.b $05

|0080C6| JML.w [$0003]

;===================================================================================================
; NMI routine triggered every frame
;===================================================================================================
NMI:
|0080C9| SEI
|0080CA| REP #$30

|0080CC| PHA
|0080CD| PHX
|0080CE| PHY

|0080CF| PHD
|0080D0| PHB

|0080D1| LDA.w #$0000
|0080D4| TCD

|0080D5| PHK
|0080D6| PLB

|0080D7| SEP #$30

; This must be read during NMI, or else you will be arrested.
|0080D9| LDA.w RDNMI

|0080DC| LDA.w $012C
|0080DF| BNE .song_input

; Compare queued song to current song.
; Looks like you can queue a song twice in a way.
|0080E1| LDA.w APUIO0
|0080E4| CMP.w $0133
|0080E7| BNE .handle_sfx1

|0080E9| STZ.w APUIO0

|0080EC| BRA .handle_sfx1

.song_input
|0080EE| CMP.w $0133
|0080F1| BEQ .handle_sfx1

|0080F3| STA.w APUIO0
|0080F6| STA.w $0133

; $0130 will hold the last proper song, ignoring commands.
|0080F9| CMP.b #$F2 ; SONG F2 - half volume
|0080FB| BCS .song_command

|0080FD| STA.w $0130

.song_command
|008100| STZ.w $012C

.handle_sfx1
|008103| LDA.w $012D
|008106| BNE .new_sfx1

; Make sure the SFX sync matches what we have
|008108| LDA.w APUIO1
|00810B| CMP.w $0131
|00810E| BNE .handle_SFX23

|008110| STZ.w APUIO1

|008113| BRA .handle_SFX23

.new_sfx1
|008115| STA.w $0131
|008118| STA.w APUIO1

|00811B| STZ.w $012D

.handle_SFX23
; write SFX set 2
|00811E| LDA.w $012E
|008121| STA.w APUIO2

; write SFX set 3
|008124| LDA.w $012F
|008127| STA.w APUIO3

; clear SFX queues
|00812A| STZ.w $012E
|00812D| STZ.w $012F

; prepare for PPU writes
|008130| LDA.b #$80
|008132| STA.w INIDISP
|008135| STZ.w HDMAEN

; if $12 is nonzero
; we haven't finished the main code
; so we need longer
|008138| LDA.b $12
|00813A| BNE .lag_frame

|00813C| INC.b $12

|00813E| JSR DoNMIUpdates
|008141| JSR ReadJoypad

.lag_frame
; this is an IRQ flag of sorts
|008144| LDA.w $012A
|008147| BEQ NoIRQThread

|008149| JMP.w SwitchThread

;===================================================================================================

NoIRQThread:
|00814C| LDA.b $96
|00814E| STA.w W12SEL

|008151| LDA.b $97
|008153| STA.w W34SEL

|008156| LDA.b $98
|008158| STA.w WOBJSEL

|00815B| LDA.b $99
|00815D| STA.w CGWSEL

|008160| LDA.b $9A
|008162| STA.w CGADSUB

|008165| LDA.b $9C
|008167| STA.w COLDATA

|00816A| LDA.b $9D
|00816C| STA.w COLDATA

|00816F| LDA.b $9E
|008171| STA.w COLDATA

|008174| LDA.b $1C
|008176| STA.w TM

|008179| LDA.b $1D
|00817B| STA.w TS

|00817E| LDA.b $1E
|008180| STA.w TMW

|008183| LDA.b $1F
|008185| STA.w TSW

|008188| LDA.w $0120
|00818B| STA.w BG1HOFS

|00818E| LDA.w $0121
|008191| STA.w BG1HOFS

|008194| LDA.w $0124
|008197| STA.w BG1VOFS

|00819A| LDA.w $0125
|00819D| STA.w BG1VOFS

|0081A0| LDA.w $011E
|0081A3| STA.w BG2HOFS

|0081A6| LDA.w $011F
|0081A9| STA.w BG2HOFS

|0081AC| LDA.w $0122
|0081AF| STA.w BG2VOFS

|0081B2| LDA.w $0123
|0081B5| STA.w BG2VOFS

|0081B8| LDA.b $E4
|0081BA| STA.w BG3HOFS

|0081BD| LDA.b $E5
|0081BF| STA.w BG3HOFS

|0081C2| LDA.b $EA
|0081C4| STA.w BG3VOFS

|0081C7| LDA.b $EB
|0081C9| STA.w BG3VOFS

|0081CC| LDA.b $95
|0081CE| STA.w MOSAIC

;---------------------------------------------------------------------------------------------------

|0081D1| LDA.b $94
|0081D3| STA.w BGMODE

|0081D6| AND.b #$07
|0081D8| CMP.b #$07
|0081DA| BNE .not_mode7

|0081DC| STZ.w M7B
|0081DF| STZ.w M7B
|0081E2| STZ.w M7C
|0081E5| STZ.w M7C

|0081E8| LDA.w $0638
|0081EB| STA.w M7X

|0081EE| LDA.w $0639
|0081F1| STA.w M7X

|0081F4| LDA.w $063A
|0081F7| STA.w M7Y

|0081FA| LDA.w $063B
|0081FD| STA.w M7Y

;---------------------------------------------------------------------------------------------------

.not_mode7
|008200| LDA.w $0128
|008203| BEQ .IRQ_inactive

|008205| LDA.w TIMEUP

|008208| LDA.b #$38
|00820A| STA.w VTIMEL
|00820D| STZ.w VTIMEH

|008210| STZ.w HTIMEL
|008213| STZ.w HTIMEH

; enable NMI, IRQ, auto joypad
|008216| LDA.b #$A1
|008218| STA.w NMITIMEN

;---------------------------------------------------------------------------------------------------

.IRQ_inactive
|00821B| LDA.b $13
|00821D| STA.w INIDISP

|008220| LDA.b $9B
|008222| STA.w HDMAEN

|008225| REP #$30

|008227| PLB
|008228| PLD

|008229| PLY
|00822A| PLX
|00822B| PLA

;===================================================================================================

Interrupt_Unused:
|00822C| RTI

;===================================================================================================

SwitchThread:
|00822D| JSR UpdateIRQGFX

|008230| LDA.b $FF
|008232| STA.w VTIMEL
|008235| STZ.w VTIMEH

|008238| LDA.b #$A1 ; enable NMI, IRQ, auto joypad
|00823A| STA.w NMITIMEN

|00823D| LDA.b $96
|00823F| STA.w W12SEL

|008242| LDA.b $97
|008244| STA.w W34SEL

|008247| LDA.b $98
|008249| STA.w WOBJSEL

|00824C| LDA.b $99
|00824E| STA.w CGWSEL

|008251| LDA.b $9A
|008253| STA.w CGADSUB

|008256| LDA.b $9C
|008258| STA.w COLDATA

|00825B| LDA.b $9D
|00825D| STA.w COLDATA

|008260| LDA.b $9E
|008262| STA.w COLDATA

|008265| LDA.b $1C
|008267| STA.w TM

|00826A| LDA.b $1D
|00826C| STA.w TS

|00826F| LDA.b $1E
|008271| STA.w TMW

|008274| LDA.b $1F
|008276| STA.w TSW

;---------------------------------------------------------------------------------------------------

|008279| LDA.w $0120
|00827C| STA.w BG1HOFS

|00827F| LDA.w $0121
|008282| STA.w BG1HOFS

|008285| LDA.w $0124
|008288| STA.w BG1VOFS

|00828B| LDA.w $0125
|00828E| STA.w BG1VOFS

|008291| LDA.w $011E
|008294| STA.w BG2HOFS

|008297| LDA.w $011F
|00829A| STA.w BG2HOFS

|00829D| LDA.w $0122
|0082A0| STA.w BG2VOFS

|0082A3| LDA.w $0123
|0082A6| STA.w BG2VOFS

|0082A9| LDA.b $E4
|0082AB| STA.w BG3HOFS

|0082AE| LDA.b $E5
|0082B0| STA.w BG3HOFS

|0082B3| LDA.b $EA
|0082B5| STA.w BG3VOFS

|0082B8| LDA.b $EB
|0082BA| STA.w BG3VOFS

|0082BD| LDA.b $13
|0082BF| STA.w INIDISP

|0082C2| LDA.b $9B
|0082C4| STA.w HDMAEN

;---------------------------------------------------------------------------------------------------

|0082C7| REP #$30

|0082C9| TSC
|0082CA| TAX

|0082CB| LDA.w $1F0A
|0082CE| TCS

|0082CF| STX.w $1F0A

|0082D2| PLB
|0082D3| PLD

|0082D4| PLY
|0082D5| PLX
|0082D6| PLA

|0082D7| RTI

;===================================================================================================
; the IRQ routine mostly handles polyhedral drawing
;===================================================================================================
IRQ:
|0082D8| SEI
|0082D9| REP #$30

|0082DB| PHA
|0082DC| PHX
|0082DD| PHY

|0082DE| PHD
|0082DF| PHB

|0082E0| PHK
|0082E1| PLB

|0082E2| SEP #$30

|0082E4| LDA.w $012A
|0082E7| BNE .polyhedral

|0082E9| LDA.w TIMEUP
|0082EC| BPL .exit

|0082EE| LDA.w $0128
|0082F1| BEQ .exit

.wait_for_hblank
|0082F3| BIT.w HVBJOY
|0082F6| BVC .wait_for_hblank

|0082F8| LDA.w $0630
|0082FB| STA.w BG3HOFS

|0082FE| LDA.w $0631
|008301| STA.w BG3HOFS

|008304| STZ.w BG3VOFS
|008307| STZ.w BG3VOFS

|00830A| LDA.w $0128
|00830D| BPL .exit

|00830F| STZ.w $0128

; disables IRQ
|008312| LDA.b #$81
|008314| STA.w NMITIMEN

.exit
|008317| REP #$30

|008319| PLB
|00831A| PLD

|00831B| PLY
|00831C| PLX
|00831D| PLA

|00831E| RTI

;---------------------------------------------------------------------------------------------------

.polyhedral
|00831F| LDA.w TIMEUP

|008322| REP #$30

|008324| TSC
|008325| TAX

|008326| LDA.w $1F0A
|008329| TCS

|00832A| STX.w $1F0A

|00832D| PLB
|00832E| PLD

|00832F| PLY
|008330| PLX
|008331| PLA

|008332| RTI

;===================================================================================================

EraseTilemaps_bg3:
|008333| REP #$20

|008335| LDA.w #$0188
|008338| STA.b $02

|00833A| LDA.w #$007F

|00833D| BRA EraseTilemaps

;---------------------------------------------------------------------------------------------------

EraseTilemaps_dungeonmap:
|00833F| REP #$20

|008341| LDA.w #$007F
|008344| STA.b $02

|008346| LDA.w #$0300

|008349| BRA EraseTilemaps

;---------------------------------------------------------------------------------------------------

EraseTilemaps_normal:
|00834B| REP #$20

|00834D| LDA.w #$007F
|008350| STA.b $02

|008352| LDA.w #$01EC

;---------------------------------------------------------------------------------------------------
; $00 = tile for BG1/BG2
; $02 = tile for BG3
;---------------------------------------------------------------------------------------------------
EraseTilemaps:
|008355| STA.b $00

|008357| STZ.w VMAIN
|00835A| STZ.w VMADDR

|00835D| LDA.w #$1808
|008360| STA.w DMA1MODE

|008363| STZ.w DMA1ADDRB

|008366| LDA.w #$0000
|008369| STA.w DMA1ADDRL

|00836C| LDA.w #$2000
|00836F| STA.w DMA1SIZE

|008372| LDY.b #$02
|008374| STY.w MDMAEN

|008377| LDX.b #$80
|008379| STX.w VMAIN

|00837C| STZ.w VMADDR

|00837F| STA.w DMA1SIZE

|008382| LDA.w #$1908
|008385| STA.w DMA1MODE

|008388| LDA.w #$0001
|00838B| STA.w DMA1ADDRL

|00838E| STY.w MDMAEN

;---------------------------------------------------------------------------------------------------

|008391| LDA.b $02
|008393| STA.b $00

|008395| STZ.w VMAIN

|008398| LDA.w #$6000 ; VRAM $C000
|00839B| STA.w VMADDR

|00839E| LDA.w #$1808
|0083A1| STA.w DMA1MODE

|0083A4| LDA.w #$0000
|0083A7| STA.w DMA1ADDRL

|0083AA| LDA.w #$0800
|0083AD| STA.w DMA1SIZE

|0083B0| STY.w MDMAEN

|0083B3| STX.w VMAIN
|0083B6| STA.w DMA1SIZE

|0083B9| LDA.w #$6000 ; VRAM $C000
|0083BC| STA.w VMADDR

|0083BF| LDA.w #$1908
|0083C2| STA.w DMA1MODE

|0083C5| LDA.w #$0001
|0083C8| STA.w DMA1ADDRL

|0083CB| STY.w MDMAEN

|0083CE| SEP #$20

|0083D0| RTL

;===================================================================================================
; Reads joypad inputs and saves them to WRAM
;===================================================================================================
ReadJoypad:
|0083D1| STZ.w JOYPAD

|0083D4| LDA.w JOY1L
|0083D7| STA.b $00

|0083D9| LDA.w JOY1H
|0083DC| STA.b $01

|0083DE| LDA.b $00
|0083E0| STA.b $F2

|0083E2| TAY

|0083E3| EOR.b $FA
|0083E5| AND.b $F2
|0083E7| STA.b $F6

|0083E9| STY.b $FA

|0083EB| LDA.b $01
|0083ED| STA.b $F0

|0083EF| TAY

|0083F0| EOR.b $F8
|0083F2| AND.b $F0
|0083F4| STA.b $F4

|0083F6| STY.b $F8

;===================================================================================================
; Not used as an entry point, but read and checked by other code.
;===================================================================================================
#Player2JoypadReturn:
|0083F8| RTS

;---------------------------------------------------------------------------------------------------

; Unreachable code for player 2 input
|0083F9| LDA.w JOY2L
|0083FC| STA.b $00

|0083FE| LDA.w JOY2H
|008401| STA.b $01

|008403| LDA.b $00
|008405| STA.b $F3

|008407| TAY

|008408| EOR.b $FB
|00840A| AND.b $F3
|00840C| STA.b $F7

|00840E| STY.b $FB

|008410| LDA.b $01
|008412| STA.b $F1

|008414| TAY

|008415| EOR.b $F9
|008417| AND.b $F1
|008419| STA.b $F5

|00841B| STY.b $F9

|00841D| RTS

;===================================================================================================
; Moves everything in the OAM buffer off screen by setting all Y-coordinates to 240.
;===================================================================================================
ClearOAMBuffer:
|00841E| LDX.b #$60

.next
|008420| LDA.b #$F0
|008422| STA.w $0801,X
|008425| STA.w $0805,X
|008428| STA.w $0809,X
|00842B| STA.w $080D,X

|00842E| STA.w $0811,X
|008431| STA.w $0815,X
|008434| STA.w $0819,X
|008437| STA.w $081D,X

|00843A| STA.w $0881,X
|00843D| STA.w $0885,X
|008440| STA.w $0889,X
|008443| STA.w $088D,X

|008446| STA.w $0891,X
|008449| STA.w $0895,X
|00844C| STA.w $0899,X
|00844F| STA.w $089D,X

|008452| STA.w $0901,X
|008455| STA.w $0905,X
|008458| STA.w $0909,X
|00845B| STA.w $090D,X

|00845E| STA.w $0911,X
|008461| STA.w $0915,X
|008464| STA.w $0919,X
|008467| STA.w $091D,X

|00846A| STA.w $0981,X
|00846D| STA.w $0985,X
|008470| STA.w $0989,X
|008473| STA.w $098D,X

|008476| STA.w $0991,X
|008479| STA.w $0995,X
|00847C| STA.w $0999,X
|00847F| STA.w $099D,X

|008482| TXA
|008483| SEC
|008484| SBC.b #$20
|008486| TAX

|008487| BPL .next

|008489| RTS

;===================================================================================================

SaveFileOffsets:
|00848A| dw $700000

;---------------------------------------------------------------------------------------------------

SaveFileCopyOffsets:
|00848C| dw $700000, $700500
|008490| dw $700A00, $700F00

;===================================================================================================
; Addresses for things
;===================================================================================================
PushblockGfxPointers:
|008494| dw $7EA480 ; 4/4
|008496| dw $7EA4C0 ; 3/4
|008498| dw $7EA500 ; 2/4
|00849A| dw $7EA540 ; 1/4

;---------------------------------------------------------------------------------------------------

SwordGfxPointers:
|00849C| dw $7E9000, $7E9020, $7E9060, $7E91E0 ; vertical, slash1, left-up, horizontal
|0084A4| dw $7E90A0, $7E90C0, $7E9100, $7E9140 ; up-left, slash2, slash whiff, slash3

;---------------------------------------------------------------------------------------------------

ShieldGfxPointers:
|0084AC| dw $7E9300 ; down
|0084AE| dw $7E9340 ; up
|0084B0| dw $7E9380 ; side

;---------------------------------------------------------------------------------------------------

LinkItemGfxPointers:
|0084B2| dw $7E9480, $7E94C0, $7E94E0, $7E95C0 ; rod
|0084BA| dw $7E9500, $7E9520, $7E9540, $7E9480 ; rod
|0084C2| dw $7E9640, $7E9680, $7E96A0, $7E9780 ; hammer
|0084CA| dw $7E96C0, $7E96E0, $7E9700, $7E9480 ; hammer

|0084D2| dw $7E9800, $7E9840, $7E98A0, $7E9480 ; bow
|0084DA| dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
|0084E2| dw $7E9AC0, $7E9B00, $7E9480, $7E9480 ; hookshot tip
|0084EA| dw $7E9480, $7E9480, $7E9480, $7E9480 ; null

|0084F2| dw $7E9BC0, $7E9C00, $7E9C40, $7E9C80 ; net
|0084FA| dw $7E9CC0, $7E9D00, $7E9D40, $7E9480 ; net
|008502| dw $7E9F40, $7E9F80, $7E9FC0, $7E9FE0 ; cane
|00850A| dw $7EA000, $7E9480, $7E9480, $7E9480 ; cane

|008512| dw $7EA100, $7E9480, $7E9480, $7E9480 ; book
|00851A| dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
|008522| dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
|00852A| dw $7E9480, $7E9480, $7E9480, $7E9480 ; null

|008532| dw $7E98C0, $7E9900, $7E99C0, $7E99E0 ; shovel, ZZzzzz
|00853A| dw $7E9A00, $7E9A20, $7E9A40, $7E9A60 ; Zzzzz, ♪
|008542| dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
|00854A| dw $7E9480, $7E9480, $7E9480, $7E9480 ; null

|008552| dw $7E9A80, $7E9480, $7E9480, $7E9480 ; sprinkles
|00855A| dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
|008562| dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
|00856A| dw $7E9480, $7E9480, $7E9480, $7E9480 ; null

|008572| dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
|00857A| dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
|008582| dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
|00858A| dw $7E9480, $7E9480, $7E9480, $7E9480 ; null

|008592| dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
|00859A| dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
|0085A2| dw $7E9480, $7E9480, $7E9480, $7E9480 ; null
|0085AA| dw $7E9480, $7E9480, $7E9480, $7E9480 ; null

;---------------------------------------------------------------------------------------------------

.offsets
|0085B2| dw $00E0, $00E0, $0060, $0080
|0085BA| dw $01C0, $00E0, $0040, $0000
|0085C2| dw $0080, $0000, $0040, $0000
|0085CA| dw $0000, $0000, $0000, $0000

;===================================================================================================

RupeeTile:

.step
|0085D2| dw $000E
|0085D4| dw $0004
|0085D6| dw $0006
|0085D8| dw $0010
|0085DA| dw $0006
|0085DC| dw $0008

.offset
|0085DE| dw $0000, $0020, $0040, $0000
|0085E6| dw $0020, $0040, $0000, $0040
|0085EE| dw $0080, $0000, $0040, $0080

;===================================================================================================

StarTileOffset:
|0085F6| dw $7EB340
|0085F8| dw $7EB400
|0085FA| dw $7EB4C0

;===================================================================================================
; also contains gfx stuff
;===================================================================================================
PrepareOAMForTransfer:
|0085FC| LDY.b #$1C

; This first segment just merges all the individual OAM sx entries for DMA.
.next_block
|0085FE| TYA
|0085FF| ASL A
|008600| ASL A
|008601| TAX

|008602| LDA.w $0A23,X
|008605| ASL A
|008606| ASL A

|008607| ORA.w $0A22,X
|00860A| ASL A
|00860B| ASL A

|00860C| ORA.w $0A21,X
|00860F| ASL A
|008610| ASL A

|008611| ORA.w $0A20,X
|008614| STA.w $0A00,Y

|008617| LDA.w $0A27,X
|00861A| ASL A
|00861B| ASL A

|00861C| ORA.w $0A26,X
|00861F| ASL A
|008620| ASL A

|008621| ORA.w $0A25,X
|008624| ASL A
|008625| ASL A

|008626| ORA.w $0A24,X
|008629| STA.w $0A01,Y

|00862C| LDA.w $0A2B,X
|00862F| ASL A
|008630| ASL A

|008631| ORA.w $0A2A,X
|008634| ASL A
|008635| ASL A

|008636| ORA.w $0A29,X
|008639| ASL A
|00863A| ASL A

|00863B| ORA.w $0A28,X
|00863E| STA.w $0A02,Y

|008641| LDA.w $0A2F,X
|008644| ASL A
|008645| ASL A

|008646| ORA.w $0A2E,X
|008649| ASL A
|00864A| ASL A

|00864B| ORA.w $0A2D,X
|00864E| ASL A
|00864F| ASL A

|008650| ORA.w $0A2C,X
|008653| STA.w $0A03,Y

|008656| DEY
|008657| DEY
|008658| DEY
|008659| DEY
|00865A| BPL .next_block

;---------------------------------------------------------------------------------------------------

; Handle dynamic OAM characters
|00865C| REP #$31

; Link's head and body
|00865E| LDX.w $0100

|008661| LDA.w LinkOAM_HeadAddresses,X
|008664| STA.w $0ACC

|008667| ADC.w #$0200
|00866A| STA.w $0ACE

|00866D| LDA.w LinkOAM_BodyAddresses,X
|008670| STA.w $0AD0

|008673| CLC
|008674| ADC.w #$0200
|008677| STA.w $0AD2

; Link's hands, etc.
|00867A| LDX.w $0102

|00867D| LDA.w LinkOAM_AuxAddresses,X
|008680| STA.w $0AD4

|008683| LDX.w $0104

|008686| LDA.w LinkOAM_AuxAddresses,X
|008689| STA.w $0AD6

|00868C| SEP #$10

; Sword
|00868E| LDX.w $0107

|008691| LDA.w SwordGfxPointers,X
|008694| STA.w $0AC0

|008697| CLC
|008698| ADC.w #$0180
|00869B| STA.w $0AC2

; Shield
|00869E| LDX.w $0108

|0086A1| LDA.w ShieldGfxPointers,X
|0086A4| STA.w $0AC4

|0086A7| CLC
|0086A8| ADC.w #$00C0
|0086AB| STA.w $0AC6

; Item
|0086AE| LDA.w $0109
|0086B1| AND.w #$00F8
|0086B4| LSR A
|0086B5| LSR A
|0086B6| TAY

|0086B7| LDA.w $0109
|0086BA| ASL A
|0086BB| TAX

|0086BC| LDA.w LinkItemGfxPointers,X
|0086BF| STA.w $0AC8

|0086C2| CLC
|0086C3| TYX
|0086C4| ADC.w LinkItemGfxPointers.offsets,X
|0086C7| STA.w $0ACA

|0086CA| LDA.w $02C3
|0086CD| AND.w #$0003
|0086D0| ASL A
|0086D1| TAX

|0086D2| LDA.w PushblockGfxPointers,X
|0086D5| STA.w $0AD8

|0086D8| CLC
|0086D9| ADC.w #$0100
|0086DC| STA.w $0ADA

;---------------------------------------------------------------------------------------------------

; Animated tiles
|0086DF| LDA.l $7EC00D
|0086E3| DEC A
|0086E4| STA.l $7EC00D
|0086E8| BNE .dont_animate_bg

; unused overlays here, but they make the timer longer
|0086EA| LDA.w #$0009

|0086ED| LDX.b $8C
|0086EF| CPX.b #$B5 ; OW B5
|0086F1| BEQ .use_longer_timer

|0086F3| CPX.b #$BC ; OW BC
|0086F5| BNE .use_shorter_timer

.use_longer_timer
|0086F7| LDA.w #$0017

.use_shorter_timer
|0086FA| STA.l $7EC00D

|0086FE| LDA.l $7EC00F
|008702| CLC
|008703| ADC.w #$0400
|008706| CMP.w #$0C00
|008709| BNE .dont_reset_rupees_tiles

|00870B| LDA.w #$0000

.dont_reset_rupees_tiles
|00870E| STA.l $7EC00F

|008712| CLC
|008713| ADC.w #$7EA680
|008716| STA.w $0ADC

.dont_animate_bg
; animate rupee tiles
|008719| LDA.l $7EC013
|00871D| DEC A
|00871E| STA.l $7EC013
|008722| BNE .dont_animate_rupee

|008724| LDA.l $7EC015
|008728| TAX

|008729| INX
|00872A| INX

|00872B| CPX.b #$0C
|00872D| BNE .rupee_step_fine

|00872F| LDX.b #$00

.rupee_step_fine
|008731| TXA
|008732| STA.l $7EC015

|008736| LDA.w RupeeTile.step,X
|008739| STA.l $7EC013

; rupees
|00873D| LDA.w #$7EB280
|008740| CLC
|008741| ADC.w RupeeTile.offset,X
|008744| STA.w $0AE0

|008747| CLC
|008748| ADC.w #$0060
|00874B| STA.w $0AE2

.dont_animate_rupee
; follower graphics
|00874E| LDA.w $0AE8
|008751| ASL A
|008752| ADC.w #$7EB940
|008755| STA.w $0AEC

|008758| ADC.w #$0200
|00875B| STA.w $0AEE

|00875E| LDA.w $0AEA
|008761| ASL A
|008762| ADC.w #$7EB940
|008765| STA.w $0AF0

|008768| ADC.w #$0200
|00876B| STA.w $0AF2

; duck graphics
|00876E| LDA.w $0AF4
|008771| ASL A
|008772| ADC.w #$7EB540
|008775| STA.w $0AF6

|008778| ADC.w #$0200
|00877B| STA.w $0AF8

|00877E| SEP #$20

|008780| RTS

;===================================================================================================
; Uses A to read local 16-bit vectors from where the routine was called.
;===================================================================================================
JumpTableLocal:
; save Y
|008781| STY.b $03

; pull low byte of return address for pointer
|008783| PLY
|008784| STY.b $00

|008786| REP #$30

; turn parameter into an offset
|008788| AND.w #$00FF
|00878B| ASL A
|00878C| TAY

; pull high byte and bank of return address for pointer
|00878D| PLA
|00878E| STA.b $01

; increment Y since return address was -1
|008790| INY

; read the 16-bit vector and save it over the first vector
|008791| LDA.b [$00],Y
|008793| STA.b $00

|008795| SEP #$30

; recover Y
|008797| LDY.b $03

; jump to desired address
|008799| JML.w [$0000]

;===================================================================================================
; Uses A to read 24-bit vectors from where the routine was called.
;===================================================================================================
JumpTableLong:
; save Y
|00879C| STY.b $05

; pull low byte of return address for pointer
|00879E| PLY
|00879F| STY.b $02

|0087A1| REP #$30

; turn parameter into an offset
|0087A3| AND.w #$00FF
|0087A6| STA.b $03

|0087A8| ASL A
|0087A9| ADC.b $03
|0087AB| TAY

; pull high byte and bank of return address for pointer
|0087AC| PLA
|0087AD| STA.b $03

; increment Y since return address was -1
|0087AF| INY

; get address of vector
|0087B0| LDA.b [$02],Y
|0087B2| STA.b $00

; get bank of vector
|0087B4| INY

|0087B5| LDA.b [$02],Y
|0087B7| STA.b $01

|0087B9| SEP #$30

; recover Y
|0087BB| LDY.b $05

; jump to desired address
|0087BD| JML.w [$0000]

;===================================================================================================

InitializeMemoryAndSRAM:
|0087C0| REP #$30

; recover return address
|0087C2| LDY.w $01FE

|0087C5| LDX.w #$03FE
|0087C8| LDA.w #$0000

.clear_wram
|0087CB| STA.w $0000,X
|0087CE| STA.w $0400,X
|0087D1| STA.w $0800,X
|0087D4| STA.w $0C00,X

|0087D7| STA.w $1000,X
|0087DA| STA.w $1400,X
|0087DD| STA.w $1800,X
|0087E0| STA.w $1C00,X

|0087E3| DEX
|0087E4| DEX
|0087E5| BNE .clear_wram

;---------------------------------------------------------------------------------------------------

|0087E7| STA.l $7EC500 ; writes RGB: #000000
|0087EB| STA.l $701FFE ; not selecting any save file

|0087EF| LDA.l $7003E1
|0087F3| CMP.w #$55AA
|0087F6| BEQ .sram1_valid

|0087F8| LDA.w #$0000
|0087FB| STA.l $7003E1

.sram1_valid
|0087FF| LDA.l $7008E1
|008803| CMP.w #$55AA
|008806| BEQ .sram2_valid

|008808| LDA.w #$0000
|00880B| STA.l $7008E1

.sram2_valid
|00880F| LDA.l $700DE1
|008813| CMP.w #$55AA
|008816| BEQ .sram3_valid

|008818| LDA.w #$0000
|00881B| STA.l $700DE1

.sram3_valid
|00881F| STY.w $01FE

|008822| STZ.w TMW

|008825| SEP #$30

; Enable force blank
|008827| LDA.b #$80
|008829| STA.b $13

|00882B| INC.b $15

|00882D| RTS

;===================================================================================================

GetOverworldTileType:
|00882E| REP #$30

|008830| LDA.b $00
|008832| SEC
|008833| SBC.w $0708
|008836| AND.w $070A
|008839| ASL A
|00883A| ASL A
|00883B| ASL A
|00883C| STA.b $06

|00883E| LDA.b $02
|008840| SEC
|008841| SBC.w $070C
|008844| AND.w $070E
|008847| ORA.b $06
|008849| TAX

|00884A| LDA.l $7E2000,X
|00884E| ASL A
|00884F| ASL A
|008850| STA.b $06

|008852| LDA.b $00
|008854| AND.w #$0008
|008857| LSR A
|008858| LSR A
|008859| TSB.b $06

|00885B| LDA.b $02
|00885D| AND.w #$0001
|008860| ORA.b $06
|008862| ASL A
|008863| TAX

|008864| LDA.l Map16Definitions,X
|008868| STA.b $06

|00886A| AND.w #$01FF
|00886D| TAX

|00886E| LDA.l OverworldTileTypes,X

|008872| SEP #$30

|008874| CMP.b #$10
|008876| BCC .exit

|008878| CMP.b #$1C
|00887A| BCS .exit

|00887C| STA.b $06

|00887E| LDA.b $07
|008880| AND.b #$40

|008882| ASL A
|008883| ROL A
|008884| ROL A
|008885| ORA.b $06

.exit
|008887| RTL

;===================================================================================================

LoadSongBank:
|008888| PHP

|008889| REP #$30

|00888B| LDY.w #$0000
|00888E| LDA.w #$BBAA

.apu_not_ready
|008891| CMP.w APUIO0
|008894| BNE .apu_not_ready

|008896| SEP #$20

|008898| LDA.b #$CC
|00889A| BRA .setup_transfer

;---------------------------------------------------------------------------------------------------

.next_transfer
|00889C| LDA.b [$00],Y

|00889E| INY

|00889F| XBA
|0088A0| LDA.b #$00
|0088A2| BRA .write_zero

.next_byte
|0088A4| XBA
|0088A5| LDA.b [$00],Y

|0088A7| INY
|0088A8| CPY.w #$8000
|0088AB| BNE .no_bank_wrap

|0088AD| LDY.w #$0000

|0088B0| INC.b $02

.no_bank_wrap
|0088B2| XBA

.wait_for_sync_a
|0088B3| CMP.w APUIO0
|0088B6| BNE .wait_for_sync_a

|0088B8| INC A

.write_zero
|0088B9| REP #$20

|0088BB| STA.w APUIO0

|0088BE| SEP #$20

|0088C0| DEX
|0088C1| BNE .next_byte

.wait_for_sync_b
|0088C3| CMP.w APUIO0
|0088C6| BNE .wait_for_sync_b

.make_A_nonzero
|0088C8| ADC.b #$03
|0088CA| BEQ .make_A_nonzero

;---------------------------------------------------------------------------------------------------

.setup_transfer
|0088CC| PHA

|0088CD| REP #$20

|0088CF| LDA.b [$00],Y
|0088D1| INY
|0088D2| INY
|0088D3| TAX

|0088D4| LDA.b [$00],Y
|0088D6| INY
|0088D7| INY
|0088D8| STA.w APUIO2

|0088DB| SEP #$20

|0088DD| CPX.w #$0001

|0088E0| LDA.b #$00
|0088E2| ROL A
|0088E3| STA.w APUIO1

; This will set the overflow flag if X>0
|0088E6| ADC.b #$7F
|0088E8| PLA
|0088E9| STA.w APUIO0

.wait_for_sync_c
|0088EC| CMP.w APUIO0
|0088EF| BNE .wait_for_sync_c

; if X>0, transfer more
|0088F1| BVS .next_transfer

;---------------------------------------------------------------------------------------------------

|0088F3| STZ.w APUIO0
|0088F6| STZ.w APUIO1
|0088F9| STZ.w APUIO2
|0088FC| STZ.w APUIO3

|0088FF| PLP

|008900| RTS

;===================================================================================================
; Transfers the always-loaded material which is followed by the Overworld bank
;===================================================================================================
LoadIntroSongBank:
|008901| LDA.b #SamplePointers
|008903| STA.b $00

|008905| LDA.b #>SamplePointers
|008907| STA.b $01

|008909| LDA.b #^SamplePointers
|00890B| STA.b $02

|00890D| SEI

|00890E| JSR LoadSongBank

|008911| CLI

|008912| RTS

;===================================================================================================

LoadOverworldSongs:
|008913| LDA.b #SongBank_Overworld_Main
|008915| STA.b $00

|008917| LDA.b #>SongBank_Overworld_Main
|008919| STA.b $01

|00891B| LDA.b #^SongBank_Overworld_Main

;---------------------------------------------------------------------------------------------------

PrepareAPUTransfer:
|00891D| STA.b $02

|00891F| SEI

|008920| JSR LoadSongBank

|008923| CLI

|008924| RTL

;===================================================================================================

LoadUnderworldSongs:
|008925| LDA.b #SongBank_Underworld_Main
|008927| STA.b $00

|008929| LDA.b #>SongBank_Underworld_Main
|00892B| STA.b $01

|00892D| LDA.b #^SongBank_Underworld_Main
|00892F| BRA PrepareAPUTransfer

;===================================================================================================

LoadCreditsSongs:
|008931| LDA.b #SongBank_Credits_Main
|008933| STA.b $00

|008935| LDA.b #>SongBank_Credits_Main
|008937| STA.b $01

|008939| LDA.b #^SongBank_Credits_Main
|00893B| BRA PrepareAPUTransfer

;===================================================================================================
; Flags INIDISP and its DP queue to enable force blank
; Disables HDMA directly and its DP queue
;===================================================================================================
EnableForceBlank:
|00893D| LDA.b #$80
|00893F| STA.w INIDISP
|008942| STA.b $13

|008944| STZ.w HDMAEN
|008947| STZ.b $9B

|008949| RTL

;===================================================================================================

SaveGameFile:
|00894A| PHB

|00894B| LDA.b #$70
|00894D| PHA
|00894E| PLB

|00894F| REP #$30

|008951| LDX.w $701FFE

|008954| LDA.l SaveFileOffsets,X
|008958| TAY

|008959| PHY

|00895A| LDX.w #$0000

;---------------------------------------------------------------------------------------------------

.write_save
|00895D| LDA.l $7EF000,X
|008961| STA.w $700000,Y
|008964| STA.w $700F00,Y

|008967| LDA.l $7EF100,X
|00896B| STA.w $700100,Y
|00896E| STA.w $701000,Y

|008971| LDA.l $7EF200,X
|008975| STA.w $700200,Y
|008978| STA.w $701100,Y

|00897B| LDA.l $7EF300,X
|00897F| STA.w $700300,Y
|008982| STA.w $701200,Y

|008985| LDA.l $7EF400,X
|008989| STA.w $700400,Y
|00898C| STA.w $701300,Y

|00898F| INY
|008990| INY

|008991| INX
|008992| INX

|008993| CPX.w #$0100
|008996| BNE .write_save

;---------------------------------------------------------------------------------------------------

|008998| LDX.w #$0000
|00899B| TXA

.calc_checksum
|00899C| CLC
|00899D| ADC.l $7EF000,X

|0089A1| INX
|0089A2| INX
|0089A3| CPX.w #$04FE
|0089A6| BNE .calc_checksum

|0089A8| STA.b $00

|0089AA| PLY

|0089AB| LDA.w #$5A5A
|0089AE| SEC
|0089AF| SBC.b $00
|0089B1| STA.l $7EF4FE

|0089B5| TYX

|0089B6| STA.l $7004FE,X
|0089BA| STA.l $7013FE,X

|0089BE| SEP #$30

|0089C0| PLB

|0089C1| RTL

;===================================================================================================
; FREE ROM: 0x1E
;===================================================================================================
NULL_0089C2:
|0089C2| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0089CA| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0089D2| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0089DA| db $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

DoNMIUpdates:
|0089E0| REP #$10

|0089E2| LDA.b #$80
|0089E4| STA.w VMAIN

|0089E7| LDA.w $0710
|0089EA| BEQ .do_sprite_updates

|0089EC| JMP.w .skip_sprite_updates

;---------------------------------------------------------------------------------------------------

.do_sprite_updates
; all of these DMAs are writing to VMDATA in mode 1
|0089EF| LDX.w #$1801
|0089F2| STX.w DMA0MODE
|0089F5| STX.w DMA1MODE
|0089F8| STX.w DMA2MODE
|0089FB| STX.w DMA3MODE
|0089FE| STX.w DMA4MODE

; DMAs 0, 1, 2 are Link graphics
|008A01| LDA.b #^LinkGraphics
|008A03| STA.w DMA0ADDRB
|008A06| STA.w DMA1ADDRB
|008A09| STA.w DMA2ADDRB

; bottom of Link's head
|008A0C| LDY.w #$4100 ; VRAM $8200
|008A0F| STY.w VMADDR

|008A12| LDY.w $0ACE
|008A15| STY.w DMA0ADDRL

|008A18| LDX.w #$0040
|008A1B| STX.w DMA0SIZE

; bottom of Link's body
|008A1E| LDY.w $0AD2
|008A21| STY.w DMA1ADDRL
|008A24| STX.w DMA1SIZE

; auxiliary Link part 2
|008A27| LDY.w $0AD6
|008A2A| STY.w DMA2ADDRL

|008A2D| LDY.w #$0020 ; that one hand is fewer bytes
|008A30| STY.w DMA2SIZE

|008A33| LDA.b #$07
|008A35| STA.w MDMAEN

|008A38| STY.w DMA2SIZE

; top row next, so it can bleed into sword
|008A3B| LDY.w #$4000 ; VRAM $8000
|008A3E| STY.w VMADDR

; top of head
|008A41| LDY.w $0ACC
|008A44| STY.w DMA0ADDRL
|008A47| STX.w DMA0SIZE

; top of body
|008A4A| LDY.w $0AD0
|008A4D| STY.w DMA1ADDRL
|008A50| STX.w DMA1SIZE

; aux 1
|008A53| LDY.w $0AD4
|008A56| STY.w DMA2ADDRL

|008A59| STA.w MDMAEN

;---------------------------------------------------------------------------------------------------

|008A5C| LDA.b #$7E
|008A5E| STA.w DMA0ADDRB
|008A61| STA.w DMA1ADDRB
|008A64| STA.w DMA2ADDRB
|008A67| STA.w DMA3ADDRB
|008A6A| STA.w DMA4ADDRB

; sword graphics top
|008A6D| LDY.w $0AC0
|008A70| STY.w DMA0ADDRL
|008A73| STX.w DMA0SIZE

; shield graphics top
|008A76| LDY.w $0AC4
|008A79| STY.w DMA1ADDRL
|008A7C| STX.w DMA1SIZE

; volatile item gfx top
|008A7F| LDY.w $0AC8
|008A82| STY.w DMA2ADDRL
|008A85| STX.w DMA2SIZE

; rupee animation
|008A88| LDY.w $0AE0
|008A8B| STY.w DMA3ADDRL

|008A8E| LDY.w #$0020
|008A91| STY.w DMA3SIZE

; push blocks
|008A94| LDY.w $0AD8
|008A97| STY.w DMA4ADDRL
|008A9A| STX.w DMA4SIZE

|008A9D| LDA.b #$1F
|008A9F| STA.w MDMAEN

; bottoms
|008AA2| LDY.w #$4150 ; VRAM $82A0
|008AA5| STY.w VMADDR

; sword bottom
|008AA8| LDY.w $0AC2
|008AAB| STY.w DMA0ADDRL
|008AAE| STX.w DMA0SIZE

; shield bottom
|008AB1| LDY.w $0AC6
|008AB4| STY.w DMA1ADDRL
|008AB7| STX.w DMA1SIZE

; item bottom
|008ABA| LDY.w $0ACA
|008ABD| STY.w DMA2ADDRL
|008AC0| STX.w DMA2SIZE

; rupee bottom
|008AC3| LDY.w $0AE2
|008AC6| STY.w DMA3ADDRL

|008AC9| LDY.w #$0020 ; rupee is tiny
|008ACC| STY.w DMA3SIZE

; bottom of block
|008ACF| LDY.w $0ADA
|008AD2| STY.w DMA4ADDRL
|008AD5| STX.w DMA4SIZE

; CHUG! CHUG! CHUG!
|008AD8| STA.w MDMAEN

;---------------------------------------------------------------------------------------------------

; follower graphics next
|008ADB| LDY.w #$4200 ; VRAM $8400
|008ADE| STY.w VMADDR

; follower head top
|008AE1| LDY.w $0AEC
|008AE4| STY.w DMA0ADDRL
|008AE7| STX.w DMA0SIZE

; follower body top
|008AEA| LDY.w $0AF0
|008AED| STY.w DMA1ADDRL
|008AF0| STX.w DMA1SIZE

; item get
|008AF3| LDY.w #$7EBD40 ; always this address in bank 7E
|008AF6| STY.w DMA2ADDRL
|008AF9| STX.w DMA2SIZE

; 3 at once nice
|008AFC| LDA.b #$07
|008AFE| STA.w MDMAEN

; now the bottom parts of those
|008B01| LDY.w #$4300 ; VRAM $8600
|008B04| STY.w VMADDR

; follower head bottom
|008B07| LDY.w $0AEE
|008B0A| STY.w DMA0ADDRL
|008B0D| STX.w DMA0SIZE

; follower body bottom
|008B10| LDY.w $0AF2
|008B13| STY.w DMA1ADDRL
|008B16| STX.w DMA1SIZE

; item get bottom
|008B19| LDY.w #$7EBD80 ; always this address in bank 7E
|008B1C| STY.w DMA2ADDRL
|008B1F| STX.w DMA2SIZE

|008B22| STA.w MDMAEN

;---------------------------------------------------------------------------------------------------

|008B25| LDA.w $0AF4
|008B28| BEQ .no_update_swagduck

|008B2A| LDY.w #$40E0 ; VRAM $81C0
|008B2D| STY.w VMADDR

; top
|008B30| LDY.w $0AF6
|008B33| STY.w DMA0ADDRL
|008B36| STX.w DMA0SIZE

|008B39| LDA.b #$01
|008B3B| STA.w MDMAEN

|008B3E| LDY.w #$41E0 ; VRAM $83C0
|008B41| STY.w VMADDR

; bottom
|008B44| LDY.w $0AF8
|008B47| STY.w DMA0ADDRL
|008B4A| STX.w DMA0SIZE

|008B4D| STA.w MDMAEN

;---------------------------------------------------------------------------------------------------

.no_update_swagduck
|008B50| LDX.w $0ADC
|008B53| STX.w DMA0ADDRL

|008B56| LDX.w $0134
|008B59| STX.w VMADDR

|008B5C| LDX.w #$0400
|008B5F| STX.w DMA0SIZE

|008B62| LDA.b #$01
|008B64| STA.w MDMAEN

;---------------------------------------------------------------------------------------------------

.skip_sprite_updates
|008B67| LDA.b $16
|008B69| BEQ .skip_BG3

|008B6B| LDX.w $0219
|008B6E| STX.w VMADDR

|008B71| LDX.w #$7EC700
|008B74| STX.w DMA0ADDRL

|008B77| LDA.b #^$7EC700
|008B79| STA.w DMA0ADDRB

|008B7C| LDX.w #$014A
|008B7F| STX.w DMA0SIZE

|008B82| LDA.b #$01
|008B84| STA.w MDMAEN

;---------------------------------------------------------------------------------------------------

.skip_BG3
|008B87| LDA.b $15
|008B89| BEQ .skip_CGRAM

|008B8B| STZ.w CGADD

|008B8E| LDY.w #$2200
|008B91| STY.w DMA1MODE

|008B94| LDY.w #$7EC500
|008B97| STY.w DMA1ADDRL

|008B9A| LDA.b #^$7EC500
|008B9C| STA.w DMA1ADDRB

|008B9F| LDY.w #$0200
|008BA2| STY.w DMA1SIZE

|008BA5| LDA.b #$02
|008BA7| STA.w MDMAEN

;---------------------------------------------------------------------------------------------------

.skip_CGRAM
|008BAA| REP #$20
|008BAC| SEP #$10

|008BAE| STZ.b $15

|008BB0| STZ.w OAMADDR

|008BB3| LDA.w #$0400
|008BB6| STA.w DMA0MODE

|008BB9| LDA.w #$0800
|008BBC| STA.w DMA0ADDRL
|008BBF| STZ.w DMA0ADDRB

|008BC2| LDA.w #$0220
|008BC5| STA.w DMA0SIZE

|008BC8| LDY.b #$01
|008BCA| STY.w MDMAEN

;---------------------------------------------------------------------------------------------------

|008BCD| SEP #$30

|008BCF| LDY.b $14
|008BD1| BEQ .no_stripes

|008BD3| LDA.w StripesSource.low-1,Y
|008BD6| STA.b $00

|008BD8| LDA.w StripesSource.high-1,Y
|008BDB| STA.b $01

|008BDD| LDA.w StripesSource.bank-1,Y
|008BE0| STA.b $02

|008BE2| JSR HandleStripes14

|008BE5| LDA.b $14
|008BE7| CMP.b #$01
|008BE9| BNE .leave_stripes_alone

|008BEB| STZ.w $1000
|008BEE| STZ.w $1001

.leave_stripes_alone
|008BF1| STZ.b $14

;---------------------------------------------------------------------------------------------------

.no_stripes
|008BF3| LDA.b $19
|008BF5| BEQ .no_incremental_upload

|008BF7| STA.w VMADDH

|008BFA| REP #$10

|008BFC| LDX.w #$0080
|008BFF| STX.w VMAIN

|008C02| LDX.w #$1801
|008C05| STX.w DMA0MODE

|008C08| LDX.w $0118
|008C0B| STX.w DMA0ADDRL

|008C0E| LDA.b #$7F
|008C10| STA.w DMA0ADDRB

|008C13| LDX.w #$0200
|008C16| STX.w DMA0SIZE

|008C19| LDA.b #$01
|008C1B| STA.w MDMAEN

|008C1E| STZ.b $19

|008C20| SEP #$10

;---------------------------------------------------------------------------------------------------

.no_incremental_upload
|008C22| LDX.b $18
|008C24| BEQ .no_arb_dma

|008C26| STZ.w DMA1ADDRB

|008C29| REP #$20

|008C2B| LDA.w #$1801
|008C2E| STA.w DMA1MODE

|008C31| REP #$10

|008C33| LDX.w #$0000

|008C36| LDA.w $1100,X

.next_chunk
|008C39| STA.w VMADDR

|008C3C| TXA
|008C3D| CLC
|008C3E| ADC.w #$1104
|008C41| STA.w DMA1ADDRL

|008C44| LDA.w $1103,X
|008C47| AND.w #$00FF
|008C4A| STA.w DMA1SIZE

|008C4D| CLC
|008C4E| ADC.w #$0004
|008C51| STA.b $00

|008C53| SEP #$20

|008C55| LDA.w $1102,X
|008C58| STA.w VMAIN

|008C5B| LDA.b #$02
|008C5D| STA.w MDMAEN

|008C60| REP #$21

|008C62| TXA
|008C63| ADC.b $00
|008C65| TAX

|008C66| LDA.w $1100,X
|008C69| CMP.w #$FFFF
|008C6C| BNE .next_chunk

|008C6E| SEP #$30

|008C70| STZ.b $18
|008C72| STZ.w $0710

;---------------------------------------------------------------------------------------------------

.no_arb_dma
|008C75| LDA.b $17
|008C77| ASL A
|008C78| TAX

|008C79| STZ.b $17

|008C7B| JMP.w (.vectors,X)

;---------------------------------------------------------------------------------------------------

.vectors
|008C7E| dw NMI_NoTileUpdates                 ; 0x00
|008C80| dw NMI_UploadTilemap                 ; 0x01
|008C82| dw NMI_UploadBG3Text                 ; 0x02
|008C84| dw NMI_UpdateOWScroll                ; 0x03
|008C86| dw NMI_UpdateSubscreenOverlay        ; 0x04
|008C88| dw NMI_UpdateBG1Wall                 ; 0x05
|008C8A| dw NMI_TilemapNothing                ; 0x06
|008C8C| dw NMI_UpdateLoadLightWorldMap       ; 0x07
|008C8E| dw NMI_UpdateBG2Left                 ; 0x08
|008C90| dw NMI_UpdateBGChar3and4             ; 0x09
|008C92| dw NMI_UpdateBGChar5and6             ; 0x0A
|008C94| dw NMI_UpdateBGCharHalf              ; 0x0B
|008C96| dw NMI_UploadSubscreenOverlayLatter  ; 0x0C
|008C98| dw NMI_UploadSubscreenOverlayFormer  ; 0x0D
|008C9A| dw NMI_UpdateBGChar0                 ; 0x0E
|008C9C| dw NMI_UpdateBGChar1                 ; 0x0F
|008C9E| dw NMI_UpdateBGChar2                 ; 0x10
|008CA0| dw NMI_UpdateBGChar3                 ; 0x11
|008CA2| dw NMI_UpdateObjChar0                ; 0x12
|008CA4| dw NMI_UpdateObjChar2                ; 0x13
|008CA6| dw NMI_UpdateObjChar3                ; 0x14
|008CA8| dw NMI_UploadDarkWorldMap            ; 0x15
|008CAA| dw NMI_UploadGameOverText            ; 0x16
|008CAC| dw NMI_UpdatePegTiles                ; 0x17
|008CAE| dw NMI_UpdateStarTiles               ; 0x18

;===================================================================================================

NMI_UploadTilemap:
|008CB0| LDX.w $0116

|008CB3| LDA.w TilemapUpload_HighBytes,X
|008CB6| STA.w VMADDH

|008CB9| STZ.w DMA0ADDRB

|008CBC| REP #$20

|008CBE| LDA.w #$0080
|008CC1| STA.w VMAIN

|008CC4| LDA.w #$1801
|008CC7| STA.w DMA0MODE

|008CCA| LDA.w #$1000
|008CCD| STA.w DMA0ADDRL

|008CD0| LDA.w #$0800
|008CD3| STA.w DMA0SIZE

|008CD6| LDY.b #$01
|008CD8| STY.w MDMAEN

|008CDB| STZ.w $1000

|008CDE| SEP #$20

|008CE0| STZ.w $0710

;===================================================================================================

NMI_NoTileUpdates:
|008CE3| RTS

;===================================================================================================

NMI_UploadBG3Text:
|008CE4| REP #$10

|008CE6| LDA.b #$80
|008CE8| STA.w VMAIN

|008CEB| LDX.w #$1801
|008CEE| STX.w DMA0MODE

|008CF1| LDY.w #$7C00 ; VRAM $F800
|008CF4| STY.w VMADDR

|008CF7| LDY.w #$7F0000
|008CFA| STY.w DMA0ADDRL

|008CFD| LDA.b #$7F
|008CFF| STA.w DMA0ADDRB

|008D02| LDX.w #$0780
|008D05| STX.w DMA0SIZE

|008D08| LDA.b #$01
|008D0A| STA.w MDMAEN

|008D0D| SEP #$10

|008D0F| STZ.w $0710

|008D12| RTS

;===================================================================================================

NMI_UpdateOWScroll:
|008D13| REP #$10

|008D15| LDX.w #$1801
|008D18| STX.w DMA0MODE

|008D1B| STZ.w DMA0ADDRB

|008D1E| LDA.w $1101
|008D21| AND.b #$80
|008D23| ASL A
|008D24| ROL A
|008D25| ORA.b #$80
|008D27| STA.w VMAIN

|008D2A| REP #$20

|008D2C| LDA.w $1100
|008D2F| AND.w #$3FFF
|008D32| TAX

|008D33| INC A
|008D34| INC A
|008D35| STA.b $02

|008D37| LDY.w #$0000

.next_transfer
|008D3A| REP #$21

|008D3C| LDA.w $1102,Y
|008D3F| STA.w VMADDR

|008D42| TYA
|008D43| ADC.w #$1104
|008D46| STA.w DMA0ADDRL

|008D49| TYA
|008D4A| ADC.b $02
|008D4C| TAY

|008D4D| STX.w DMA0SIZE

|008D50| SEP #$20

|008D52| LDA.b #$01
|008D54| STA.w MDMAEN

|008D57| LDA.w $1103,Y
|008D5A| BPL .next_transfer

|008D5C| SEP #$30

|008D5E| STZ.w $0710

|008D61| RTS

;===================================================================================================

NMI_UpdateSubscreenOverlay:
|008D62| LDA.b #$7F
|008D64| STA.w DMA0ADDRB

|008D67| LDA.b #$80
|008D69| STA.w VMAIN

|008D6C| REP #$31

|008D6E| LDA.w #$7F2000
|008D71| STA.w DMA0ADDRL

|008D74| LDX.w #$0000 ; start at $7F4000
|008D77| LDA.w #$0080 ; 16 chunks
|008D7A| BRA NMI_HandleArbitraryTilemap

;===================================================================================================

NMI_UploadSubscreenOverlayFormer:
|008D7C| LDA.b #$7F
|008D7E| STA.w DMA0ADDRB

|008D81| LDA.b #$80
|008D83| STA.w VMAIN

|008D86| REP #$31

|008D88| LDA.w #$7F2000
|008D8B| STA.w DMA0ADDRL

|008D8E| LDX.w #$0000 ; start at $7F4000
|008D91| LDA.w #$0040 ; 8 chunks

|008D94| BRA NMI_HandleArbitraryTilemap

;===================================================================================================

NMI_UploadSubscreenOverlayLatter:
|008D96| LDA.b #$7F
|008D98| STA.w DMA0ADDRB

|008D9B| LDA.b #$80
|008D9D| STA.w VMAIN

|008DA0| REP #$31

|008DA2| LDA.w #$7F3000
|008DA5| STA.w DMA0ADDRL

|008DA8| LDX.w #$0040 ; start at $7F4040
|008DAB| LDA.w #$0080 ; 16 chunks

;===================================================================================================
; Parameters:
;    A = Number of chunks * 8
;    X = Offset into 7F4000
;===================================================================================================
NMI_HandleArbitraryTilemap:
|008DAE| STA.b $02

|008DB0| LDA.w #$1801
|008DB3| STA.w DMA0MODE

; Not sure why they use $00, as it never changes.
; Probably to save that extra byte each time they felt like enabling the DMA.
|008DB6| LDA.w #$0001
|008DB9| STA.b $00

|008DBB| LDY.w #$0080

; $7F4000 holds chunks of 4 VRAM addresses each for the DMA

; Every chunk is 128 bytes, or 64 tiles
.next_chunk
|008DBE| LDA.l $7F4000,X
|008DC2| STA.w VMADDR

|008DC5| STY.w DMA0SIZE

|008DC8| LDA.b $00
|008DCA| STA.w MDMAEN

|008DCD| LDA.l $7F4002,X
|008DD1| STA.w VMADDR

|008DD4| STY.w DMA0SIZE

|008DD7| LDA.b $00
|008DD9| STA.w MDMAEN

|008DDC| LDA.l $7F4004,X
|008DE0| STA.w VMADDR

|008DE3| STY.w DMA0SIZE

|008DE6| LDA.b $00
|008DE8| STA.w MDMAEN

|008DEB| LDA.l $7F4006,X
|008DEF| STA.w VMADDR

|008DF2| STY.w DMA0SIZE

|008DF5| LDA.b $00
|008DF7| STA.w MDMAEN

|008DFA| TXA
|008DFB| ADC.w #$0008
|008DFE| TAX

|008DFF| CMP.b $02
|008E01| BNE .next_chunk

|008E03| SEP #$30

|008E05| STZ.w $0710

|008E08| RTS

;===================================================================================================

NMI_UpdateBG1Wall:
|008E09| REP #$20

|008E0B| LDA.w #$1801
|008E0E| STA.w DMA0MODE

|008E11| LDA.w $0116
|008E14| STA.w VMADDR

|008E17| LDX.b #$81
|008E19| STX.w VMAIN

|008E1C| LDX.b #^$7EC880
|008E1E| STX.w DMA0ADDRB

|008E21| LDA.w #$7EC880
|008E24| STA.w DMA0ADDRL

|008E27| LDA.w #$0040
|008E2A| STA.w DMA0SIZE

|008E2D| LDY.b #$01
|008E2F| STY.w MDMAEN

|008E32| STA.w DMA0SIZE

|008E35| LDA.w $0116
|008E38| CLC
|008E39| ADC.w #$0800
|008E3C| STA.w VMADDR

|008E3F| LDA.w #$7EC8C0
|008E42| STA.w DMA0ADDRL

|008E45| STY.w MDMAEN

|008E48| SEP #$20

|008E4A| RTS

;===================================================================================================

NMI_TilemapNothing:
|008E4B| RTS

;===================================================================================================
; Uploads the tilemap in 4 quadrants of 32 rows of 32 tiles
;===================================================================================================
pool NMI_UpdateLoadLightWorldMap

.vram_offset
|008E4C| dw $0000, $0020, $1000, $1020

endpool

;---------------------------------------------------------------------------------------------------

NMI_UpdateLoadLightWorldMap:
|008E54| STZ.w VMAIN

|008E57| LDA.b #^WorldMap_LightWorldTilemap
|008E59| STA.w DMA0ADDRB

|008E5C| REP #$20

|008E5E| LDA.w #$1800
|008E61| STA.w DMA0MODE

|008E64| STZ.b $04
|008E66| STZ.b $02

;---------------------------------------------------------------------------------------------------

|008E68| LDY.b #$01
|008E6A| LDX.b #$00

.next_quadrant
; each chunk is 32 rows
|008E6C| LDA.w #$0020
|008E6F| STA.b $06

|008E71| LDA.w .vram_offset,X
|008E74| STA.b $00

.next_row
|008E76| LDA.b $00
|008E78| STA.w VMADDR

|008E7B| CLC
|008E7C| ADC.w #$0080
|008E7F| STA.b $00

|008E81| LDA.b $02
|008E83| CLC
|008E84| ADC.w #WorldMap_LightWorldTilemap
|008E87| STA.w DMA0ADDRL

|008E8A| LDA.w #$0020
|008E8D| STA.w DMA0SIZE

|008E90| STY.w MDMAEN

|008E93| CLC
|008E94| ADC.b $02
|008E96| STA.b $02

|008E98| DEC.b $06
|008E9A| BNE .next_row

|008E9C| INC.b $04
|008E9E| INC.b $04

|008EA0| LDX.b $04
|008EA2| CPX.b #$08
|008EA4| BNE .next_quadrant

|008EA6| SEP #$20

|008EA8| RTS

;===================================================================================================

NMI_UpdateBG2Left:
|008EA9| LDA.b #$80
|008EAB| STA.w VMAIN

|008EAE| REP #$10

|008EB0| LDY.w #$0000 ; VRAM $0000
|008EB3| STY.w VMADDR

|008EB6| LDY.w #$1801
|008EB9| STY.w DMA1MODE

|008EBC| LDY.w #$7F0000
|008EBF| STY.w DMA1ADDRL

|008EC2| LDA.b #$7F
|008EC4| STA.w DMA1ADDRB

|008EC7| LDY.w #$0800
|008ECA| STY.w DMA1SIZE

|008ECD| LDA.b #$02
|008ECF| STA.w MDMAEN

|008ED2| STY.w DMA1SIZE

|008ED5| LDY.w #$0800 ; VRAM $1000
|008ED8| STY.w VMADDR

|008EDB| LDY.w #$7F0800
|008EDE| STY.w DMA1ADDRL

|008EE1| STA.w MDMAEN

|008EE4| SEP #$10

|008EE6| RTS

;===================================================================================================

NMI_UpdateBGChar3and4:
|008EE7| REP #$20

|008EE9| LDA.w #$2C00 ; VRAM $5800
|008EEC| STA.w VMADDR

|008EEF| LDY.b #$80
|008EF1| STY.w VMAIN

|008EF4| LDA.w #$1801
|008EF7| STA.w DMA0MODE

|008EFA| LDA.w #$7F0000
|008EFD| STA.w DMA0ADDRL

|008F00| LDY.b #$7F
|008F02| STY.w DMA0ADDRB

|008F05| LDA.w #$1000
|008F08| STA.w DMA0SIZE

|008F0B| LDY.b #$01
|008F0D| STY.w MDMAEN

|008F10| SEP #$20

|008F12| STZ.w $0710

|008F15| RTS

;===================================================================================================

NMI_UpdateBGChar5and6:
|008F16| REP #$20

|008F18| LDA.w #$3400 ; VRAM $6800
|008F1B| STA.w VMADDR

|008F1E| LDY.b #$80
|008F20| STY.w VMAIN

|008F23| LDA.w #$1801
|008F26| STA.w DMA0MODE

|008F29| LDA.w #$7F1000
|008F2C| STA.w DMA0ADDRL

|008F2F| LDY.b #$7F
|008F31| STY.w DMA0ADDRB

|008F34| LDA.w #$1000
|008F37| STA.w DMA0SIZE

|008F3A| LDY.b #$01
|008F3C| STY.w MDMAEN

|008F3F| SEP #$20

|008F41| STZ.w $0710

|008F44| RTS

;===================================================================================================

NMI_UpdateBGCharHalf:
|008F45| LDA.w $0116
|008F48| STA.w VMADDH

|008F4B| REP #$10

|008F4D| LDX.w #$0080
|008F50| STX.w VMAIN

|008F53| LDX.w #$1801
|008F56| STX.w DMA0MODE

|008F59| LDX.w #$7F1000
|008F5C| STX.w DMA0ADDRL

|008F5F| LDA.b #$7F
|008F61| STA.w DMA0ADDRB

|008F64| LDX.w #$0400
|008F67| STX.w DMA0SIZE

|008F6A| LDA.b #$01
|008F6C| STA.w MDMAEN

|008F6F| SEP #$10

|008F71| RTS

;===================================================================================================

NMI_UpdateBGChar0:
|008F72| REP #$20

|008F74| LDA.w #$2000 ; VRAM $4000
|008F77| BRA NMI_RunTilemapUpdateDMA

;===================================================================================================

NMI_UpdateBGChar1:
|008F79| REP #$20

|008F7B| LDA.w #$2800 ; VRAM $5000
|008F7E| BRA NMI_RunTilemapUpdateDMA

;===================================================================================================

NMI_UpdateBGChar2:
|008F80| REP #$20

|008F82| LDA.w #$3000 ; VRAM $6000
|008F85| BRA NMI_RunTilemapUpdateDMA

;===================================================================================================

NMI_UpdateBGChar3:
|008F87| REP #$20

|008F89| LDA.w #$3800 ; VRAM $7000
|008F8C| BRA NMI_RunTilemapUpdateDMA

;===================================================================================================

NMI_UpdateObjChar0:
|008F8E| REP #$20

|008F90| LDA.w #$4400 ; VRAM $8800
|008F93| STA.w VMADDR

|008F96| LDA.w #$7F0000
|008F99| STA.w DMA0ADDRL

|008F9C| LDY.b #$80
|008F9E| STY.w VMAIN

|008FA1| LDA.w #$1801
|008FA4| STA.w DMA0MODE

|008FA7| LDY.b #$7F
|008FA9| STY.w DMA0ADDRB

|008FAC| LDA.w #$0800
|008FAF| STA.w DMA0SIZE

|008FB2| LDY.b #$01
|008FB4| STY.w MDMAEN

|008FB7| SEP #$20

|008FB9| STZ.w $0710

|008FBC| RTS

;===================================================================================================

NMI_UpdateObjChar2:
|008FBD| REP #$20

|008FBF| LDA.w #$5000 ; VRAM $A000

|008FC2| BRA NMI_RunTilemapUpdateDMA

;===================================================================================================

NMI_UpdateObjChar3:
|008FC4| REP #$20

|008FC6| LDA.w #$5800 ; VRAM $B000

;===================================================================================================

NMI_RunTilemapUpdateDMA:
|008FC9| STA.w VMADDR

|008FCC| LDA.w #$7F0000
|008FCF| STA.w DMA0ADDRL

|008FD2| LDY.b #$80
|008FD4| STY.w VMAIN

|008FD7| LDA.w #$1801
|008FDA| STA.w DMA0MODE

|008FDD| LDY.b #$7F
|008FDF| STY.w DMA0ADDRB

|008FE2| LDA.w #$1000
|008FE5| STA.w DMA0SIZE

|008FE8| LDY.b #$01
|008FEA| STY.w MDMAEN

|008FED| SEP #$20

|008FEF| STZ.w $0710

|008FF2| RTS

;===================================================================================================
; Uploads the tilemap in 32 rows of 32 tiles.
; Light world routine takes care of the clouds and such.
; Not sure why it uses $1000 instead of the ROM data.
;===================================================================================================
NMI_UploadDarkWorldMap:
|008FF3| STZ.w VMAIN

|008FF6| STZ.w DMA0ADDRB

|008FF9| REP #$20

|008FFB| LDA.w #$1800
|008FFE| STA.w DMA0MODE

|009001| STZ.b $02

|009003| LDA.w #$0020
|009006| STA.b $06

|009008| LDA.w #$0810 ; VRAM $1020
|00900B| STA.b $00

|00900D| LDY.b #$01

;---------------------------------------------------------------------------------------------------

.next_row
|00900F| LDA.b $00
|009011| STA.w VMADDR

|009014| CLC
|009015| ADC.w #$0080 ; VRAM +$0100
|009018| STA.b $00

|00901A| LDA.b $02
|00901C| CLC
|00901D| ADC.w #$1000
|009020| STA.w DMA0ADDRL

|009023| LDA.w #$0020
|009026| STA.w DMA0SIZE

|009029| STY.w MDMAEN

|00902C| CLC
|00902D| ADC.b $02
|00902F| STA.b $02

|009031| DEC.b $06
|009033| BNE .next_row

|009035| SEP #$20

|009037| RTS

;===================================================================================================

NMI_UploadGameOverText:
|009038| REP #$20

|00903A| LDA.w #$7800 ; VRAM $F000
|00903D| STA.w VMADDR

|009040| LDA.w #$7E2000
|009043| STA.w DMA0ADDRL

|009046| LDY.b #$80
|009048| STY.w VMAIN

|00904B| LDA.w #$1801
|00904E| STA.w DMA0MODE

|009051| LDY.b #$7E
|009053| STY.w DMA0ADDRB

|009056| LDA.w #$0800
|009059| STA.w DMA0SIZE

|00905C| LDY.b #$01
|00905E| STY.w MDMAEN

|009061| LDA.w #$7D00 ; VRAM $FA00
|009064| STA.w VMADDR

|009067| LDA.w #$7E3400
|00906A| STA.w DMA0ADDRL

|00906D| LDY.b #$80
|00906F| STY.w VMAIN

|009072| LDA.w #$1801
|009075| STA.w DMA0MODE

|009078| LDY.b #$7E
|00907A| STY.w DMA0ADDRB

|00907D| LDA.w #$0600
|009080| STA.w DMA0SIZE

|009083| LDY.b #$01
|009085| STY.w MDMAEN

|009088| SEP #$20

|00908A| RTS

;===================================================================================================

NMI_UpdatePegTiles:
|00908B| REP #$10

|00908D| LDX.w #$3D00 ; VRAM $7A00
|009090| STX.w VMADDR

|009093| LDA.b #$80
|009095| STA.w VMAIN

|009098| LDX.w #$1801
|00909B| STX.w DMA0MODE

|00909E| LDX.w #$7F0000
|0090A1| STX.w DMA0ADDRL

|0090A4| LDA.b #$7F
|0090A6| STA.w DMA0ADDRB

|0090A9| LDX.w #$0100
|0090AC| STX.w DMA0SIZE

|0090AF| LDA.b #$01
|0090B1| STA.w MDMAEN

|0090B4| SEP #$10

|0090B6| RTS

;===================================================================================================

NMI_UpdateStarTiles:
|0090B7| REP #$10

|0090B9| LDX.w #$3ED0 ; VRAM $7DA0
|0090BC| STX.w VMADDR

|0090BF| LDA.b #$80
|0090C1| STA.w VMAIN

|0090C4| LDX.w #$1801
|0090C7| STX.w DMA0MODE

|0090CA| LDX.w #$7F0000
|0090CD| STX.w DMA0ADDRL

|0090D0| LDA.b #$7F
|0090D2| STA.w DMA0ADDRB

|0090D5| LDX.w #$0040
|0090D8| STX.w DMA0SIZE

|0090DB| LDA.b #$01
|0090DD| STA.w MDMAEN

|0090E0| SEP #$10

|0090E2| RTS

;===================================================================================================

NMI_UploadTilemap_long:
|0090E3| JSR NMI_UploadTilemap

|0090E6| RTL

;===================================================================================================

NMI_UpdateOWScroll_long:
|0090E7| JSR NMI_UpdateOWScroll

|0090EA| RTL

;===================================================================================================
; Unused stripes routine
;===================================================================================================
UNREACHABLE_0090EB:
|0090EB| STA.b $14

|0090ED| TAY

|0090EE| LDA.w StripesSource.low-1,Y
|0090F1| STA.b $00

|0090F3| LDA.w StripesSource.high-1,Y
|0090F6| STA.b $01

|0090F8| LDA.w StripesSource.bank-1,Y
|0090FB| STA.b $02

|0090FD| JSR HandleStripes14

|009100| LDA.b $14
|009102| CMP.b #$01
|009104| BNE .dont_clear

|009106| STZ.w $1000
|009109| STZ.w $1001

.dont_clear
|00910C| STZ.b $14

|00910E| RTL

;===================================================================================================

UnderworldTilemapQuadrantOffset:
|00910F| dw $0000, $1000, $0000, $0040
|009117| dw $0040, $1040, $1000, $1040
|00911F| dw $1000, $0000, $0040, $0000
|009127| dw $1040, $0040, $1040, $1000

;---------------------------------------------------------------------------------------------------

UnderworldTilemapQuadrantVRAMIndex:
|00912F| db $01, $05, $09, $0D
|009133| db $02, $06, $0A, $0E
|009137| db $03, $07, $0B, $0F
|00913B| db $04, $08, $0C, $10

;---------------------------------------------------------------------------------------------------

BuildBG2QuadrantForUpload:
|00913F| REP #$31

|009141| LDA.w $0418
|009144| AND.w #$000F
|009147| ADC.w $045C
|00914A| PHA

|00914B| ASL A
|00914C| TAY

|00914D| LDX.w UnderworldTilemapQuadrantOffset,Y

;---------------------------------------------------------------------------------------------------

|009150| LDY.w #$0000

.next
|009153| LDA.l $7E2000,X
|009157| STA.w $1000,Y

|00915A| LDA.l $7E2002,X
|00915E| STA.w $1002,Y

|009161| LDA.l $7E2080,X
|009165| STA.w $1040,Y

|009168| LDA.l $7E2082,X
|00916C| STA.w $1042,Y

|00916F| LDA.l $7E2100,X
|009173| STA.w $1080,Y

|009176| LDA.l $7E2102,X
|00917A| STA.w $1082,Y

|00917D| LDA.l $7E2180,X
|009181| STA.w $10C0,Y

|009184| LDA.l $7E2182,X
|009188| STA.w $10C2,Y

|00918B| INX
|00918C| INX
|00918D| INX
|00918E| INX

|00918F| INY
|009190| INY
|009191| INY
|009192| INY

|009193| TYA
|009194| AND.w #$003F
|009197| BNE .next

;---------------------------------------------------------------------------------------------------

|009199| TYA
|00919A| CLC
|00919B| ADC.w #$00C0
|00919E| TAY

|00919F| TXA
|0091A0| CLC
|0091A1| ADC.w #$01C0
|0091A4| TAX

|0091A5| CPY.w #$0800
|0091A8| BNE .next

|0091AA| PLX

|0091AB| SEP #$30

|0091AD| LDA.w $045C
|0091B0| CLC
|0091B1| ADC.b #$04
|0091B3| STA.w $045C

|0091B6| LDA.w UnderworldTilemapQuadrantVRAMIndex,X
|0091B9| STA.w $0116

|0091BC| LDA.b #$01
|0091BE| STA.b $17
|0091C0| STA.w $0710

|0091C3| RTL

;===================================================================================================

BuildBG1QuadrantForUpload:
; This tag never even appears as effect 1
|0091C4| LDA.b $AE
|0091C6| CMP.b #$19 ; ROOMTAG 19
|0091C8| BNE TilemapPrep_NotWaterOnTag

; And even if it did, this is always 00!!!
|0091CA| LDA.w $0405
|0091CD| AND.l BitMasks+1
|0091D1| BEQ BuildBG1QuadrantForUpload_not_triggered

;===================================================================================================

TilemapPrep_NotWaterOnTag:
|0091D3| REP #$31

|0091D5| LDA.w $0418
|0091D8| AND.w #$000F
|0091DB| ADC.w $045C
|0091DE| PHA

|0091DF| ASL A
|0091E0| TAY

|0091E1| LDX.w UnderworldTilemapQuadrantOffset,Y

;---------------------------------------------------------------------------------------------------

|0091E4| LDY.w #$0000

.next
|0091E7| LDA.l $7E4000,X
|0091EB| STA.w $1000,Y

|0091EE| LDA.l $7E4002,X
|0091F2| STA.w $1002,Y

|0091F5| LDA.l $7E4080,X
|0091F9| STA.w $1040,Y

|0091FC| LDA.l $7E4082,X
|009200| STA.w $1042,Y

|009203| LDA.l $7E4100,X
|009207| STA.w $1080,Y

|00920A| LDA.l $7E4102,X
|00920E| STA.w $1082,Y

|009211| LDA.l $7E4180,X
|009215| STA.w $10C0,Y

|009218| LDA.l $7E4182,X
|00921C| STA.w $10C2,Y

|00921F| INX
|009220| INX
|009221| INX
|009222| INX

|009223| INY
|009224| INY
|009225| INY
|009226| INY

|009227| TYA
|009228| AND.w #$003F
|00922B| BNE .next

|00922D| TYA
|00922E| CLC
|00922F| ADC.w #$00C0
|009232| TAY

|009233| TXA
|009234| CLC
|009235| ADC.w #$01C0
|009238| TAX

|009239| CPY.w #$0800
|00923C| BNE .next

;---------------------------------------------------------------------------------------------------

|00923E| PLX

|00923F| SEP #$30

|009241| LDA.w UnderworldTilemapQuadrantVRAMIndex,X
|009244| CLC
|009245| ADC.b #$10
|009247| STA.w $0116

|00924A| LDA.b #$01
|00924C| STA.b $17
|00924E| STA.w $0710

|009251| RTL

;===================================================================================================

BuildBG1QuadrantForUpload_not_triggered:
|009252| REP #$31

|009254| LDX.w #$00F0

|009257| LDY.w #$0000

.next
|00925A| LDA.w RoomDrawObjectData,X
|00925D| STA.w $1000,Y
|009260| STA.w $1002,Y
|009263| STA.w $1040,Y
|009266| STA.w $1042,Y
|009269| STA.w $1080,Y
|00926C| STA.w $1082,Y
|00926F| STA.w $10C0,Y
|009272| STA.w $10C2,Y

|009275| INY
|009276| INY
|009277| INY
|009278| INY

|009279| TYA
|00927A| AND.w #$003F
|00927D| BNE .next

|00927F| TYA
|009280| CLC
|009281| ADC.w #$00C0
|009284| TAY

|009285| CPY.w #$0800
|009288| BNE .next

;---------------------------------------------------------------------------------------------------

|00928A| LDA.w $0418
|00928D| AND.w #$000F
|009290| CLC
|009291| ADC.w $045C
|009294| TAX

|009295| SEP #$30

|009297| LDA.w UnderworldTilemapQuadrantVRAMIndex,X
|00929A| CLC
|00929B| ADC.b #$10
|00929D| STA.w $0116

|0092A0| RTL

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
|0092A1| REP #$10

|0092A3| STA.w DMA1ADDRB

|0092A6| STZ.b $06

|0092A8| LDY.w #$0000

|0092AB| LDA.b [$00],Y
|0092AD| BPL .next_stripe

|0092AF| SEP #$30

|0092B1| RTS

;---------------------------------------------------------------------------------------------------

.next_stripe
|0092B2| STA.b $04 ; save high byte of VRAM address

|0092B4| INY

|0092B5| LDA.b [$00],Y ; save low byte of VRAM address
|0092B7| STA.b $03

|0092B9| INY

|0092BA| LDA.b [$00],Y ; get 0 or 1 for VMAIN from bit 7
|0092BC| AND.b #$80
|0092BE| ASL A
|0092BF| ROL A
|0092C0| STA.b $07

|0092C2| LDA.b [$00],Y ; 0x08 or 0x00 for fixed transfer
|0092C4| AND.b #$40
|0092C6| STA.b $05

|0092C8| LSR A
|0092C9| LSR A
|0092CA| LSR A
|0092CB| ORA.b #$01 ; and set DMA write to mode 1
|0092CD| STA.w DMA1MODE

|0092D0| LDA.b #VMDATAL
|0092D2| STA.w DMA1PORT

|0092D5| REP #$20

|0092D7| LDA.b $03
|0092D9| STA.w VMADDR

|0092DC| LDA.b [$00],Y ; get size
|0092DE| XBA
|0092DF| AND.w #$3FFF ; remove the flags
|0092E2| TAX

|0092E3| INX ; +1 to account for size
|0092E4| STX.w DMA1SIZE

|0092E7| INY ; get our source address based on our current spot
|0092E8| INY

|0092E9| TYA
|0092EA| CLC
|0092EB| ADC.b $00 ; move it ahead
|0092ED| STA.w DMA1ADDRL

|0092F0| LDA.b $05
|0092F2| BEQ .not_fixed_transfer

|0092F4| INX ; +1 for division

|0092F5| TXA
|0092F6| LSR A ; and divide it by 2
|0092F7| TAX

|0092F8| STX.w DMA1SIZE ; this is the new DMA size

|0092FB| SEP #$20

|0092FD| LDA.b $05 ; sets DMA mode to 0 and uses fixed write
|0092FF| LSR A ; although, you could have just done LDA.b #$08
|009300| LSR A
|009301| LSR A
|009302| STA.w DMA1MODE

|009305| LDA.b $07 ;  ; get increment size
|009307| STA.w VMAIN

|00930A| LDA.b #$02 ; enable DMA channel for stripe
|00930C| STA.w MDMAEN

|00930F| LDA.b #VMDATAH ; swap to the other port
|009311| STA.w DMA1PORT

|009314| REP #$21 ; repoint our source address to the high byte

|009316| TYA
|009317| ADC.b $00
|009319| INC A
|00931A| STA.w DMA1ADDRL

|00931D| LDA.b $03 ; restore the old vram address
|00931F| STA.w VMADDR

|009322| STX.w DMA1SIZE ; same DMA size

|009325| LDX.w #$0002 ; use 2 bytes for size to find next stripe

.not_fixed_transfer
|009328| STX.b $03 ; save last stripe's data size

|00932A| TYA ; add it to our index to get the next stripe
|00932B| CLC
|00932C| ADC.b $03
|00932E| TAY

|00932F| SEP #$20

|009331| LDA.b $07 ; set VMAIN increment based on earlier calculations
|009333| ORA.b #$80 ; make it increment on writes to $2119
|009335| STA.w VMAIN

|009338| LDA.b #$02 ; enable DMA channel for stripe
|00933A| STA.w MDMAEN

; just jumping (no BMI) to the first check would have used less code
|00933D| LDA.b [$00],Y
|00933F| BMI .done

|009341| JMP.w .next_stripe

;---------------------------------------------------------------------------------------------------

.done
|009344| SEP #$30

|009346| RTS

;===================================================================================================

UpdateIRQGFX:
; Check for a transfer
|009347| LDA.w $1F0C
|00934A| BEQ .exit

|00934C| LDA.b #$80
|00934E| STA.w VMAIN

|009351| REP #$20

|009353| LDA.w #$5800 ; VRAM $B000
|009356| STA.w VMADDR

|009359| LDA.w #$1801
|00935C| STA.w DMA0MODE

|00935F| LDA.w #$7EE800
|009362| STA.w DMA0ADDRL

|009365| LDX.b #^$7EE800
|009367| STX.w DMA0ADDRB

|00936A| LDA.w #$0800
|00936D| STA.w DMA0SIZE

|009370| SEP #$20

|009372| LDA.b #$01
|009374| STA.w MDMAEN

|009377| STZ.w $1F0C

.exit
|00937A| RTS

;===================================================================================================
; Used for stripes operated with $14
;===================================================================================================
StripesSource:

.low
|00937B| db $001002
|00937C| db $001000
|00937D| db IntroLogoTilemap
|00937E| db $00021B
|00937F| db NamePlayerTilemap
|009380| db FileSelectTilemap
|009381| db FileSelectCopyFileTilemap
|009382| db FileSelectKILLFileTilemap
|009383| db DungeonMap_BG3Tilemap

.high
|009384| db >$001002
|009385| db >$001000
|009386| db >IntroLogoTilemap
|009387| db >$00021B
|009388| db >NamePlayerTilemap
|009389| db >FileSelectTilemap
|00938A| db >FileSelectCopyFileTilemap
|00938B| db >FileSelectKILLFileTilemap
|00938C| db >DungeonMap_BG3Tilemap

.bank
|00938D| db ^$001002
|00938E| db ^$001000
|00938F| db ^IntroLogoTilemap
|009390| db ^$00021B
|009391| db ^NamePlayerTilemap
|009392| db ^FileSelectTilemap
|009393| db ^FileSelectCopyFileTilemap
|009394| db ^FileSelectKILLFileTilemap
|009395| db ^DungeonMap_BG3Tilemap

;===================================================================================================
; Bank10 addresses of where to get head, body, and aux part graphics
;===================================================================================================
LinkOAM_HeadAddresses:
|009396| dw LinkGraphics+$0080 ; 0x000 - $108080
|009398| dw LinkGraphics+$0080 ; 0x001 - $108080
|00939A| dw LinkGraphics+$0080 ; 0x002 - $108080
|00939C| dw LinkGraphics+$0080 ; 0x003 - $108080
|00939E| dw LinkGraphics+$0080 ; 0x004 - $108080
|0093A0| dw LinkGraphics+$0040 ; 0x005 - $108040
|0093A2| dw LinkGraphics+$0040 ; 0x006 - $108040
|0093A4| dw LinkGraphics+$0040 ; 0x007 - $108040
|0093A6| dw LinkGraphics+$0040 ; 0x008 - $108040
|0093A8| dw LinkGraphics+$0040 ; 0x009 - $108040
|0093AA| dw LinkGraphics+$0000 ; 0x00A - $108000
|0093AC| dw LinkGraphics+$0000 ; 0x00B - $108000
|0093AE| dw LinkGraphics+$0000 ; 0x00C - $108000
|0093B0| dw LinkGraphics+$0000 ; 0x00D - $108000
|0093B2| dw LinkGraphics+$0000 ; 0x00E - $108000
|0093B4| dw LinkGraphics+$0000 ; 0x00F - $108000
|0093B6| dw LinkGraphics+$1440 ; 0x010 - $109440
|0093B8| dw LinkGraphics+$0080 ; 0x011 - $108080
|0093BA| dw LinkGraphics+$0080 ; 0x012 - $108080
|0093BC| dw LinkGraphics+$0080 ; 0x013 - $108080
|0093BE| dw LinkGraphics+$1400 ; 0x014 - $109400
|0093C0| dw LinkGraphics+$0040 ; 0x015 - $108040
|0093C2| dw LinkGraphics+$00C0 ; 0x016 - $1080C0
|0093C4| dw LinkGraphics+$00C0 ; 0x017 - $1080C0
|0093C6| dw LinkGraphics+$0000 ; 0x018 - $108000
|0093C8| dw LinkGraphics+$0000 ; 0x019 - $108000
|0093CA| dw LinkGraphics+$0000 ; 0x01A - $108000
|0093CC| dw LinkGraphics+$0000 ; 0x01B - $108000
|0093CE| dw LinkGraphics+$0000 ; 0x01C - $108000
|0093D0| dw LinkGraphics+$0000 ; 0x01D - $108000
|0093D2| dw LinkGraphics+$0000 ; 0x01E - $108000
|0093D4| dw LinkGraphics+$0000 ; 0x01F - $108000
|0093D6| dw LinkGraphics+$0080 ; 0x020 - $108080
|0093D8| dw LinkGraphics+$0080 ; 0x021 - $108080
|0093DA| dw LinkGraphics+$0080 ; 0x022 - $108080
|0093DC| dw LinkGraphics+$0080 ; 0x023 - $108080
|0093DE| dw LinkGraphics+$0080 ; 0x024 - $108080
|0093E0| dw LinkGraphics+$0040 ; 0x025 - $108040
|0093E2| dw LinkGraphics+$0040 ; 0x026 - $108040
|0093E4| dw LinkGraphics+$0040 ; 0x027 - $108040
|0093E6| dw LinkGraphics+$0040 ; 0x028 - $108040
|0093E8| dw LinkGraphics+$0040 ; 0x029 - $108040
|0093EA| dw LinkGraphics+$0000 ; 0x02A - $108000
|0093EC| dw LinkGraphics+$28C0 ; 0x02B - $10A8C0
|0093EE| dw LinkGraphics+$2900 ; 0x02C - $10A900
|0093F0| dw LinkGraphics+$0000 ; 0x02D - $108000
|0093F2| dw LinkGraphics+$28C0 ; 0x02E - $10A8C0
|0093F4| dw LinkGraphics+$2900 ; 0x02F - $10A900
|0093F6| dw LinkGraphics+$1100 ; 0x030 - $109100
|0093F8| dw LinkGraphics+$0080 ; 0x031 - $108080
|0093FA| dw LinkGraphics+$0080 ; 0x032 - $108080
|0093FC| dw LinkGraphics+$10C0 ; 0x033 - $1090C0
|0093FE| dw LinkGraphics+$0040 ; 0x034 - $108040
|009400| dw LinkGraphics+$0000 ; 0x035 - $108000
|009402| dw LinkGraphics+$0000 ; 0x036 - $108000
|009404| dw LinkGraphics+$0000 ; 0x037 - $108000
|009406| dw LinkGraphics+$0000 ; 0x038 - $108000
|009408| dw LinkGraphics+$0000 ; 0x039 - $108000
|00940A| dw LinkGraphics+$0000 ; 0x03A - $108000
|00940C| dw LinkGraphics+$1A00 ; 0x03B - $109A00
|00940E| dw LinkGraphics+$1140 ; 0x03C - $109140
|009410| dw LinkGraphics+$1180 ; 0x03D - $109180
|009412| dw LinkGraphics+$0000 ; 0x03E - $108000
|009414| dw LinkGraphics+$1500 ; 0x03F - $109500
|009416| dw LinkGraphics+$1480 ; 0x040 - $109480
|009418| dw LinkGraphics+$14C0 ; 0x041 - $1094C0
|00941A| dw LinkGraphics+$14C0 ; 0x042 - $1094C0
|00941C| dw LinkGraphics+$1AE0 ; 0x043 - $109AE0
|00941E| dw LinkGraphics+$0080 ; 0x044 - $108080
|009420| dw LinkGraphics+$0080 ; 0x045 - $108080
|009422| dw LinkGraphics+$1A60 ; 0x046 - $109A60
|009424| dw LinkGraphics+$00C0 ; 0x047 - $1080C0
|009426| dw LinkGraphics+$00C0 ; 0x048 - $1080C0
|009428| dw LinkGraphics+$1AA0 ; 0x049 - $109AA0
|00942A| dw LinkGraphics+$0000 ; 0x04A - $108000
|00942C| dw LinkGraphics+$0000 ; 0x04B - $108000
|00942E| dw LinkGraphics+$1AA0 ; 0x04C - $109AA0
|009430| dw LinkGraphics+$0000 ; 0x04D - $108000
|009432| dw LinkGraphics+$0000 ; 0x04E - $108000
|009434| dw LinkGraphics+$0080 ; 0x04F - $108080
|009436| dw LinkGraphics+$0080 ; 0x050 - $108080
|009438| dw LinkGraphics+$0100 ; 0x051 - $108100
|00943A| dw LinkGraphics+$0100 ; 0x052 - $108100
|00943C| dw LinkGraphics+$05C0 ; 0x053 - $1085C0
|00943E| dw LinkGraphics+$0000 ; 0x054 - $108000
|009440| dw LinkGraphics+$0000 ; 0x055 - $108000
|009442| dw LinkGraphics+$05C0 ; 0x056 - $1085C0
|009444| dw LinkGraphics+$0000 ; 0x057 - $108000
|009446| dw LinkGraphics+$0000 ; 0x058 - $108000
|009448| dw LinkGraphics+$2DC0 ; 0x059 - $10ADC0
|00944A| dw LinkGraphics+$2DC0 ; 0x05A - $10ADC0
|00944C| dw LinkGraphics+$2DC0 ; 0x05B - $10ADC0
|00944E| dw LinkGraphics+$2DC0 ; 0x05C - $10ADC0
|009450| dw LinkGraphics+$2DC0 ; 0x05D - $10ADC0
|009452| dw LinkGraphics+$2D40 ; 0x05E - $10AD40
|009454| dw LinkGraphics+$2D40 ; 0x05F - $10AD40
|009456| dw LinkGraphics+$2D40 ; 0x060 - $10AD40
|009458| dw LinkGraphics+$2D40 ; 0x061 - $10AD40
|00945A| dw LinkGraphics+$2D40 ; 0x062 - $10AD40
|00945C| dw LinkGraphics+$2D80 ; 0x063 - $10AD80
|00945E| dw LinkGraphics+$2D80 ; 0x064 - $10AD80
|009460| dw LinkGraphics+$2D80 ; 0x065 - $10AD80
|009462| dw LinkGraphics+$2D80 ; 0x066 - $10AD80
|009464| dw LinkGraphics+$2D80 ; 0x067 - $10AD80
|009466| dw LinkGraphics+$2D80 ; 0x068 - $10AD80
|009468| dw LinkGraphics+$0040 ; 0x069 - $108040
|00946A| dw LinkGraphics+$1400 ; 0x06A - $109400
|00946C| dw LinkGraphics+$0040 ; 0x06B - $108040
|00946E| dw LinkGraphics+$0000 ; 0x06C - $108000
|009470| dw LinkGraphics+$0080 ; 0x06D - $108080
|009472| dw LinkGraphics+$0080 ; 0x06E - $108080
|009474| dw LinkGraphics+$1440 ; 0x06F - $109440
|009476| dw LinkGraphics+$0000 ; 0x070 - $108000
|009478| dw LinkGraphics+$0000 ; 0x071 - $108000
|00947A| dw LinkGraphics+$0000 ; 0x072 - $108000
|00947C| dw LinkGraphics+$0000 ; 0x073 - $108000
|00947E| dw LinkGraphics+$0080 ; 0x074 - $108080
|009480| dw LinkGraphics+$0040 ; 0x075 - $108040
|009482| dw LinkGraphics+$0040 ; 0x076 - $108040
|009484| dw LinkGraphics+$0000 ; 0x077 - $108000
|009486| dw LinkGraphics+$0000 ; 0x078 - $108000
|009488| dw LinkGraphics+$0000 ; 0x079 - $108000
|00948A| dw LinkGraphics+$0000 ; 0x07A - $108000
|00948C| dw LinkGraphics+$0000 ; 0x07B - $108000
|00948E| dw LinkGraphics+$0000 ; 0x07C - $108000
|009490| dw LinkGraphics+$4440 ; 0x07D - $10C440
|009492| dw LinkGraphics+$0140 ; 0x07E - $108140
|009494| dw LinkGraphics+$0140 ; 0x07F - $108140
|009496| dw LinkGraphics+$4A40 ; 0x080 - $10CA40
|009498| dw LinkGraphics+$0000 ; 0x081 - $108000
|00949A| dw LinkGraphics+$0000 ; 0x082 - $108000
|00949C| dw LinkGraphics+$0000 ; 0x083 - $108000
|00949E| dw LinkGraphics+$0000 ; 0x084 - $108000
|0094A0| dw LinkGraphics+$0000 ; 0x085 - $108000
|0094A2| dw LinkGraphics+$0000 ; 0x086 - $108000
|0094A4| dw LinkGraphics+$0040 ; 0x087 - $108040
|0094A6| dw LinkGraphics+$05C0 ; 0x088 - $1085C0
|0094A8| dw LinkGraphics+$0040 ; 0x089 - $108040
|0094AA| dw LinkGraphics+$05C0 ; 0x08A - $1085C0
|0094AC| dw LinkGraphics+$0100 ; 0x08B - $108100
|0094AE| dw LinkGraphics+$00C0 ; 0x08C - $1080C0
|0094B0| dw LinkGraphics+$11C0 ; 0x08D - $1091C0
|0094B2| dw LinkGraphics+$0080 ; 0x08E - $108080
|0094B4| dw LinkGraphics+$0080 ; 0x08F - $108080
|0094B6| dw LinkGraphics+$0040 ; 0x090 - $108040
|0094B8| dw LinkGraphics+$0040 ; 0x091 - $108040
|0094BA| dw LinkGraphics+$0000 ; 0x092 - $108000
|0094BC| dw LinkGraphics+$0000 ; 0x093 - $108000
|0094BE| dw LinkGraphics+$0000 ; 0x094 - $108000
|0094C0| dw LinkGraphics+$0000 ; 0x095 - $108000
|0094C2| dw LinkGraphics+$0080 ; 0x096 - $108080
|0094C4| dw LinkGraphics+$0080 ; 0x097 - $108080
|0094C6| dw LinkGraphics+$1100 ; 0x098 - $109100
|0094C8| dw LinkGraphics+$20C0 ; 0x099 - $10A0C0
|0094CA| dw LinkGraphics+$2100 ; 0x09A - $10A100
|0094CC| dw LinkGraphics+$2100 ; 0x09B - $10A100
|0094CE| dw LinkGraphics+$21C0 ; 0x09C - $10A1C0
|0094D0| dw LinkGraphics+$2400 ; 0x09D - $10A400
|0094D2| dw LinkGraphics+$2440 ; 0x09E - $10A440
|0094D4| dw LinkGraphics+$21C0 ; 0x09F - $10A1C0
|0094D6| dw LinkGraphics+$2400 ; 0x0A0 - $10A400
|0094D8| dw LinkGraphics+$2440 ; 0x0A1 - $10A440
|0094DA| dw LinkGraphics+$0080 ; 0x0A2 - $108080
|0094DC| dw LinkGraphics+$4480 ; 0x0A3 - $10C480
|0094DE| dw LinkGraphics+$0080 ; 0x0A4 - $108080
|0094E0| dw LinkGraphics+$0040 ; 0x0A5 - $108040
|0094E2| dw LinkGraphics+$0040 ; 0x0A6 - $108040
|0094E4| dw LinkGraphics+$4A80 ; 0x0A7 - $10CA80
|0094E6| dw LinkGraphics+$4A80 ; 0x0A8 - $10CA80
|0094E8| dw LinkGraphics+$4A00 ; 0x0A9 - $10CA00
|0094EA| dw LinkGraphics+$4400 ; 0x0AA - $10C400
|0094EC| dw LinkGraphics+$4A00 ; 0x0AB - $10CA00
|0094EE| dw LinkGraphics+$4400 ; 0x0AC - $10C400
|0094F0| dw LinkGraphics+$01C0 ; 0x0AD - $1081C0
|0094F2| dw LinkGraphics+$0080 ; 0x0AE - $108080
|0094F4| dw LinkGraphics+$0080 ; 0x0AF - $108080
|0094F6| dw LinkGraphics+$0080 ; 0x0B0 - $108080
|0094F8| dw LinkGraphics+$0080 ; 0x0B1 - $108080
|0094FA| dw LinkGraphics+$0080 ; 0x0B2 - $108080
|0094FC| dw LinkGraphics+$0080 ; 0x0B3 - $108080
|0094FE| dw LinkGraphics+$0080 ; 0x0B4 - $108080
|009500| dw LinkGraphics+$0080 ; 0x0B5 - $108080
|009502| dw LinkGraphics+$0040 ; 0x0B6 - $108040
|009504| dw LinkGraphics+$0040 ; 0x0B7 - $108040
|009506| dw LinkGraphics+$0040 ; 0x0B8 - $108040
|009508| dw LinkGraphics+$0040 ; 0x0B9 - $108040
|00950A| dw LinkGraphics+$0040 ; 0x0BA - $108040
|00950C| dw LinkGraphics+$0040 ; 0x0BB - $108040
|00950E| dw LinkGraphics+$0040 ; 0x0BC - $108040
|009510| dw LinkGraphics+$0000 ; 0x0BD - $108000
|009512| dw LinkGraphics+$28C0 ; 0x0BE - $10A8C0
|009514| dw LinkGraphics+$2900 ; 0x0BF - $10A900
|009516| dw LinkGraphics+$0000 ; 0x0C0 - $108000
|009518| dw LinkGraphics+$0000 ; 0x0C1 - $108000
|00951A| dw LinkGraphics+$28C0 ; 0x0C2 - $10A8C0
|00951C| dw LinkGraphics+$2900 ; 0x0C3 - $10A900
|00951E| dw LinkGraphics+$0000 ; 0x0C4 - $108000
|009520| dw LinkGraphics+$28C0 ; 0x0C5 - $10A8C0
|009522| dw LinkGraphics+$2900 ; 0x0C6 - $10A900
|009524| dw LinkGraphics+$0000 ; 0x0C7 - $108000
|009526| dw LinkGraphics+$0000 ; 0x0C8 - $108000
|009528| dw LinkGraphics+$28C0 ; 0x0C9 - $10A8C0
|00952A| dw LinkGraphics+$2900 ; 0x0CA - $10A900
|00952C| dw LinkGraphics+$0040 ; 0x0CB - $108040
|00952E| dw LinkGraphics+$0040 ; 0x0CC - $108040
|009530| dw LinkGraphics+$0040 ; 0x0CD - $108040
|009532| dw LinkGraphics+$0080 ; 0x0CE - $108080
|009534| dw LinkGraphics+$0080 ; 0x0CF - $108080
|009536| dw LinkGraphics+$0040 ; 0x0D0 - $108040
|009538| dw LinkGraphics+$0040 ; 0x0D1 - $108040
|00953A| dw LinkGraphics+$0040 ; 0x0D2 - $108040
|00953C| dw LinkGraphics+$0040 ; 0x0D3 - $108040
|00953E| dw LinkGraphics+$0000 ; 0x0D4 - $108000
|009540| dw LinkGraphics+$0000 ; 0x0D5 - $108000
|009542| dw LinkGraphics+$0000 ; 0x0D6 - $108000
|009544| dw LinkGraphics+$0000 ; 0x0D7 - $108000
|009546| dw LinkGraphics+$5080 ; 0x0D8 - $10D080
|009548| dw LinkGraphics+$0080 ; 0x0D9 - $108080
|00954A| dw LinkGraphics+$10C0 ; 0x0DA - $1090C0
|00954C| dw LinkGraphics+$5000 ; 0x0DB - $10D000
|00954E| dw LinkGraphics+$1080 ; 0x0DC - $109080
|009550| dw LinkGraphics+$5040 ; 0x0DD - $10D040
|009552| dw LinkGraphics+$1080 ; 0x0DE - $109080
|009554| dw LinkGraphics+$5040 ; 0x0DF - $10D040
|009556| dw LinkGraphics+$5080 ; 0x0E0 - $10D080
|009558| dw LinkGraphics+$5080 ; 0x0E1 - $10D080
|00955A| dw LinkGraphics+$5080 ; 0x0E2 - $10D080
|00955C| dw LinkGraphics+$5080 ; 0x0E3 - $10D080
|00955E| dw LinkGraphics+$5080 ; 0x0E4 - $10D080
|009560| dw LinkGraphics+$5000 ; 0x0E5 - $10D000
|009562| dw LinkGraphics+$5000 ; 0x0E6 - $10D000
|009564| dw LinkGraphics+$5000 ; 0x0E7 - $10D000
|009566| dw LinkGraphics+$5000 ; 0x0E8 - $10D000
|009568| dw LinkGraphics+$5000 ; 0x0E9 - $10D000
|00956A| dw LinkGraphics+$5040 ; 0x0EA - $10D040
|00956C| dw LinkGraphics+$5040 ; 0x0EB - $10D040
|00956E| dw LinkGraphics+$5040 ; 0x0EC - $10D040
|009570| dw LinkGraphics+$5040 ; 0x0ED - $10D040
|009572| dw LinkGraphics+$5040 ; 0x0EE - $10D040
|009574| dw LinkGraphics+$5040 ; 0x0EF - $10D040
|009576| dw LinkGraphics+$0040 ; 0x0F0 - $108040
|009578| dw LinkGraphics+$5000 ; 0x0F1 - $10D000
|00957A| dw LinkGraphics+$05C0 ; 0x0F2 - $1085C0
|00957C| dw LinkGraphics+$05C0 ; 0x0F3 - $1085C0
|00957E| dw LinkGraphics+$05C0 ; 0x0F4 - $1085C0
|009580| dw LinkGraphics+$5C40 ; 0x0F5 - $10DC40
|009582| dw LinkGraphics+$5C40 ; 0x0F6 - $10DC40
|009584| dw LinkGraphics+$5C40 ; 0x0F7 - $10DC40
|009586| dw LinkGraphics+$05C0 ; 0x0F8 - $1085C0
|009588| dw LinkGraphics+$05C0 ; 0x0F9 - $1085C0
|00958A| dw LinkGraphics+$05C0 ; 0x0FA - $1085C0
|00958C| dw LinkGraphics+$5C40 ; 0x0FB - $10DC40
|00958E| dw LinkGraphics+$5C40 ; 0x0FC - $10DC40
|009590| dw LinkGraphics+$5C40 ; 0x0FD - $10DC40
|009592| dw LinkGraphics+$61C0 ; 0x0FE - $10E1C0
|009594| dw LinkGraphics+$5000 ; 0x0FF - $10D000
|009596| dw LinkGraphics+$0000 ; 0x100 - $108000
|009598| dw LinkGraphics+$6400 ; 0x101 - $10E400
|00959A| dw LinkGraphics+$6400 ; 0x102 - $10E400
|00959C| dw LinkGraphics+$6440 ; 0x103 - $10E440
|00959E| dw LinkGraphics+$10C0 ; 0x104 - $1090C0
|0095A0| dw LinkGraphics+$10C0 ; 0x105 - $1090C0
|0095A2| dw LinkGraphics+$5000 ; 0x106 - $10D000
|0095A4| dw LinkGraphics+$0000 ; 0x107 - $108000
|0095A6| dw LinkGraphics+$0000 ; 0x108 - $108000
|0095A8| dw LinkGraphics+$5040 ; 0x109 - $10D040
|0095AA| dw LinkGraphics+$0000 ; 0x10A - $108000
|0095AC| dw LinkGraphics+$0000 ; 0x10B - $108000
|0095AE| dw LinkGraphics+$5040 ; 0x10C - $10D040
|0095B0| dw LinkGraphics+$6400 ; 0x10D - $10E400
|0095B2| dw LinkGraphics+$6400 ; 0x10E - $10E400
|0095B4| dw LinkGraphics+$6400 ; 0x10F - $10E400
|0095B6| dw LinkGraphics+$1080 ; 0x110 - $109080
|0095B8| dw LinkGraphics+$25C0 ; 0x111 - $10A5C0
|0095BA| dw LinkGraphics+$2C40 ; 0x112 - $10AC40
|0095BC| dw LinkGraphics+$6480 ; 0x113 - $10E480
|0095BE| dw LinkGraphics+$0180 ; 0x114 - $108180
|0095C0| dw LinkGraphics+$10C0 ; 0x115 - $1090C0
|0095C2| dw LinkGraphics+$00C0 ; 0x116 - $1080C0
|0095C4| dw LinkGraphics+$6180 ; 0x117 - $10E180
|0095C6| dw LinkGraphics+$5000 ; 0x118 - $10D000
|0095C8| dw LinkGraphics+$64C0 ; 0x119 - $10E4C0
|0095CA| dw LinkGraphics+$64C0 ; 0x11A - $10E4C0
|0095CC| dw LinkGraphics+$6840 ; 0x11B - $10E840
|0095CE| dw LinkGraphics+$6840 ; 0x11C - $10E840
|0095D0| dw LinkGraphics+$6840 ; 0x11D - $10E840
|0095D2| dw LinkGraphics+$6540 ; 0x11E - $10E540
|0095D4| dw LinkGraphics+$6540 ; 0x11F - $10E540
|0095D6| dw LinkGraphics+$6540 ; 0x120 - $10E540
|0095D8| dw LinkGraphics+$6900 ; 0x121 - $10E900
|0095DA| dw LinkGraphics+$6900 ; 0x122 - $10E900
|0095DC| dw LinkGraphics+$6900 ; 0x123 - $10E900
|0095DE| dw LinkGraphics+$6900 ; 0x124 - $10E900
|0095E0| dw LinkGraphics+$0080 ; 0x125 - $108080
|0095E2| dw LinkGraphics+$0080 ; 0x126 - $108080
|0095E4| dw LinkGraphics+$0000 ; 0x127 - $108000
|0095E6| dw LinkGraphics+$29C0 ; 0x128 - $10A9C0
|0095E8| dw LinkGraphics+$0080 ; 0x129 - $108080
|0095EA| dw LinkGraphics+$0140 ; 0x12A - $108140
|0095EC| dw LinkGraphics+$11C0 ; 0x12B - $1091C0
|0095EE| dw LinkGraphics+$0040 ; 0x12C - $108040
|0095F0| dw LinkGraphics+$2800 ; 0x12D - $10A800
|0095F2| dw LinkGraphics+$2840 ; 0x12E - $10A840

;===================================================================================================

LinkOAM_BodyAddresses:
|0095F4| dw LinkGraphics+$0840 ; 0x000 - $108840
|0095F6| dw LinkGraphics+$0800 ; 0x001 - $108800
|0095F8| dw LinkGraphics+$0580 ; 0x002 - $108580
|0095FA| dw LinkGraphics+$0800 ; 0x003 - $108800
|0095FC| dw LinkGraphics+$0580 ; 0x004 - $108580
|0095FE| dw LinkGraphics+$04C0 ; 0x005 - $1084C0
|009600| dw LinkGraphics+$0500 ; 0x006 - $108500
|009602| dw LinkGraphics+$0540 ; 0x007 - $108540
|009604| dw LinkGraphics+$0500 ; 0x008 - $108500
|009606| dw LinkGraphics+$0540 ; 0x009 - $108540
|009608| dw LinkGraphics+$0400 ; 0x00A - $108400
|00960A| dw LinkGraphics+$0440 ; 0x00B - $108440
|00960C| dw LinkGraphics+$0480 ; 0x00C - $108480
|00960E| dw LinkGraphics+$0400 ; 0x00D - $108400
|009610| dw LinkGraphics+$0440 ; 0x00E - $108440
|009612| dw LinkGraphics+$0480 ; 0x00F - $108480
|009614| dw LinkGraphics+$1640 ; 0x010 - $109640
|009616| dw LinkGraphics+$0C40 ; 0x011 - $108C40
|009618| dw LinkGraphics+$0C80 ; 0x012 - $108C80
|00961A| dw LinkGraphics+$2D00 ; 0x013 - $10AD00
|00961C| dw LinkGraphics+$1600 ; 0x014 - $109600
|00961E| dw LinkGraphics+$0980 ; 0x015 - $108980
|009620| dw LinkGraphics+$0C00 ; 0x016 - $108C00
|009622| dw LinkGraphics+$2CC0 ; 0x017 - $10ACC0
|009624| dw LinkGraphics+$0880 ; 0x018 - $108880
|009626| dw LinkGraphics+$08C0 ; 0x019 - $1088C0
|009628| dw LinkGraphics+$0900 ; 0x01A - $108900
|00962A| dw LinkGraphics+$0940 ; 0x01B - $108940
|00962C| dw LinkGraphics+$0880 ; 0x01C - $108880
|00962E| dw LinkGraphics+$08C0 ; 0x01D - $1088C0
|009630| dw LinkGraphics+$0900 ; 0x01E - $108900
|009632| dw LinkGraphics+$0940 ; 0x01F - $108940
|009634| dw LinkGraphics+$30C0 ; 0x020 - $10B0C0
|009636| dw LinkGraphics+$3100 ; 0x021 - $10B100
|009638| dw LinkGraphics+$3140 ; 0x022 - $10B140
|00963A| dw LinkGraphics+$3100 ; 0x023 - $10B100
|00963C| dw LinkGraphics+$3140 ; 0x024 - $10B140
|00963E| dw LinkGraphics+$3000 ; 0x025 - $10B000
|009640| dw LinkGraphics+$3040 ; 0x026 - $10B040
|009642| dw LinkGraphics+$3080 ; 0x027 - $10B080
|009644| dw LinkGraphics+$6C80 ; 0x028 - $10EC80
|009646| dw LinkGraphics+$6CC0 ; 0x029 - $10ECC0
|009648| dw LinkGraphics+$3180 ; 0x02A - $10B180
|00964A| dw LinkGraphics+$5440 ; 0x02B - $10D440
|00964C| dw LinkGraphics+$31C0 ; 0x02C - $10B1C0
|00964E| dw LinkGraphics+$3180 ; 0x02D - $10B180
|009650| dw LinkGraphics+$5440 ; 0x02E - $10D440
|009652| dw LinkGraphics+$31C0 ; 0x02F - $10B1C0
|009654| dw LinkGraphics+$0C80 ; 0x030 - $108C80
|009656| dw LinkGraphics+$2D00 ; 0x031 - $10AD00
|009658| dw LinkGraphics+$15C0 ; 0x032 - $1095C0
|00965A| dw LinkGraphics+$19C0 ; 0x033 - $1099C0
|00965C| dw LinkGraphics+$3440 ; 0x034 - $10B440
|00965E| dw LinkGraphics+$1580 ; 0x035 - $109580
|009660| dw LinkGraphics+$3480 ; 0x036 - $10B480
|009662| dw LinkGraphics+$34C0 ; 0x037 - $10B4C0
|009664| dw LinkGraphics+$1580 ; 0x038 - $109580
|009666| dw LinkGraphics+$3480 ; 0x039 - $10B480
|009668| dw LinkGraphics+$34C0 ; 0x03A - $10B4C0
|00966A| dw LinkGraphics+$1C20 ; 0x03B - $109C20
|00966C| dw LinkGraphics+$0000 ; 0x03C - $108000
|00966E| dw LinkGraphics+$0000 ; 0x03D - $108000
|009670| dw LinkGraphics+$0000 ; 0x03E - $108000
|009672| dw LinkGraphics+$1700 ; 0x03F - $109700
|009674| dw LinkGraphics+$1680 ; 0x040 - $109680
|009676| dw LinkGraphics+$16C0 ; 0x041 - $1096C0
|009678| dw LinkGraphics+$16C0 ; 0x042 - $1096C0
|00967A| dw LinkGraphics+$1CE0 ; 0x043 - $109CE0
|00967C| dw LinkGraphics+$0C80 ; 0x044 - $108C80
|00967E| dw LinkGraphics+$3540 ; 0x045 - $10B540
|009680| dw LinkGraphics+$1C60 ; 0x046 - $109C60
|009682| dw LinkGraphics+$3580 ; 0x047 - $10B580
|009684| dw LinkGraphics+$0C00 ; 0x048 - $108C00
|009686| dw LinkGraphics+$1CA0 ; 0x049 - $109CA0
|009688| dw LinkGraphics+$0900 ; 0x04A - $108900
|00968A| dw LinkGraphics+$3500 ; 0x04B - $10B500
|00968C| dw LinkGraphics+$1CA0 ; 0x04C - $109CA0
|00968E| dw LinkGraphics+$0900 ; 0x04D - $108900
|009690| dw LinkGraphics+$3500 ; 0x04E - $10B500
|009692| dw LinkGraphics+$0C40 ; 0x04F - $108C40
|009694| dw LinkGraphics+$6C40 ; 0x050 - $10EC40
|009696| dw LinkGraphics+$0C00 ; 0x051 - $108C00
|009698| dw LinkGraphics+$6C00 ; 0x052 - $10EC00
|00969A| dw LinkGraphics+$0DC0 ; 0x053 - $108DC0
|00969C| dw LinkGraphics+$1540 ; 0x054 - $109540
|00969E| dw LinkGraphics+$09C0 ; 0x055 - $1089C0
|0096A0| dw LinkGraphics+$0DC0 ; 0x056 - $108DC0
|0096A2| dw LinkGraphics+$1540 ; 0x057 - $109540
|0096A4| dw LinkGraphics+$09C0 ; 0x058 - $1089C0
|0096A6| dw LinkGraphics+$3940 ; 0x059 - $10B940
|0096A8| dw LinkGraphics+$3980 ; 0x05A - $10B980
|0096AA| dw LinkGraphics+$39C0 ; 0x05B - $10B9C0
|0096AC| dw LinkGraphics+$3980 ; 0x05C - $10B980
|0096AE| dw LinkGraphics+$39C0 ; 0x05D - $10B9C0
|0096B0| dw LinkGraphics+$35C0 ; 0x05E - $10B5C0
|0096B2| dw LinkGraphics+$3800 ; 0x05F - $10B800
|0096B4| dw LinkGraphics+$3840 ; 0x060 - $10B840
|0096B6| dw LinkGraphics+$3800 ; 0x061 - $10B800
|0096B8| dw LinkGraphics+$3840 ; 0x062 - $10B840
|0096BA| dw LinkGraphics+$3880 ; 0x063 - $10B880
|0096BC| dw LinkGraphics+$38C0 ; 0x064 - $10B8C0
|0096BE| dw LinkGraphics+$3900 ; 0x065 - $10B900
|0096C0| dw LinkGraphics+$3880 ; 0x066 - $10B880
|0096C2| dw LinkGraphics+$38C0 ; 0x067 - $10B8C0
|0096C4| dw LinkGraphics+$3900 ; 0x068 - $10B900
|0096C6| dw LinkGraphics+$0980 ; 0x069 - $108980
|0096C8| dw LinkGraphics+$1600 ; 0x06A - $109600
|0096CA| dw LinkGraphics+$3CC0 ; 0x06B - $10BCC0
|0096CC| dw LinkGraphics+$0400 ; 0x06C - $108400
|0096CE| dw LinkGraphics+$3C80 ; 0x06D - $10BC80
|0096D0| dw LinkGraphics+$0C40 ; 0x06E - $108C40
|0096D2| dw LinkGraphics+$1640 ; 0x06F - $109640
|0096D4| dw LinkGraphics+$2040 ; 0x070 - $10A040
|0096D6| dw LinkGraphics+$2080 ; 0x071 - $10A080
|0096D8| dw LinkGraphics+$2000 ; 0x072 - $10A000
|0096DA| dw LinkGraphics+$3C40 ; 0x073 - $10BC40
|0096DC| dw LinkGraphics+$3D40 ; 0x074 - $10BD40
|0096DE| dw LinkGraphics+$0500 ; 0x075 - $108500
|0096E0| dw LinkGraphics+$3D00 ; 0x076 - $10BD00
|0096E2| dw LinkGraphics+$3D80 ; 0x077 - $10BD80
|0096E4| dw LinkGraphics+$3D80 ; 0x078 - $10BD80
|0096E6| dw LinkGraphics+$08C0 ; 0x079 - $1088C0
|0096E8| dw LinkGraphics+$0900 ; 0x07A - $108900
|0096EA| dw LinkGraphics+$69C0 ; 0x07B - $10E9C0
|0096EC| dw LinkGraphics+$0900 ; 0x07C - $108900
|0096EE| dw LinkGraphics+$4640 ; 0x07D - $10C640
|0096F0| dw LinkGraphics+$4040 ; 0x07E - $10C040
|0096F2| dw LinkGraphics+$4000 ; 0x07F - $10C000
|0096F4| dw LinkGraphics+$4C40 ; 0x080 - $10CC40
|0096F6| dw LinkGraphics+$0940 ; 0x081 - $108940
|0096F8| dw LinkGraphics+$08C0 ; 0x082 - $1088C0
|0096FA| dw LinkGraphics+$0900 ; 0x083 - $108900
|0096FC| dw LinkGraphics+$69C0 ; 0x084 - $10E9C0
|0096FE| dw LinkGraphics+$0900 ; 0x085 - $108900
|009700| dw LinkGraphics+$0940 ; 0x086 - $108940
|009702| dw LinkGraphics+$0D40 ; 0x087 - $108D40
|009704| dw LinkGraphics+$0D80 ; 0x088 - $108D80
|009706| dw LinkGraphics+$0D40 ; 0x089 - $108D40
|009708| dw LinkGraphics+$0D80 ; 0x08A - $108D80
|00970A| dw LinkGraphics+$3D00 ; 0x08B - $10BD00
|00970C| dw LinkGraphics+$3000 ; 0x08C - $10B000
|00970E| dw LinkGraphics+$3000 ; 0x08D - $10B000
|009710| dw LinkGraphics+$2480 ; 0x08E - $10A480
|009712| dw LinkGraphics+$2480 ; 0x08F - $10A480
|009714| dw LinkGraphics+$2480 ; 0x090 - $10A480
|009716| dw LinkGraphics+$2480 ; 0x091 - $10A480
|009718| dw LinkGraphics+$2C00 ; 0x092 - $10AC00
|00971A| dw LinkGraphics+$2C00 ; 0x093 - $10AC00
|00971C| dw LinkGraphics+$2C00 ; 0x094 - $10AC00
|00971E| dw LinkGraphics+$2C00 ; 0x095 - $10AC00
|009720| dw LinkGraphics+$2140 ; 0x096 - $10A140
|009722| dw LinkGraphics+$2180 ; 0x097 - $10A180
|009724| dw LinkGraphics+$2180 ; 0x098 - $10A180
|009726| dw LinkGraphics+$24C0 ; 0x099 - $10A4C0
|009728| dw LinkGraphics+$24C0 ; 0x09A - $10A4C0
|00972A| dw LinkGraphics+$2500 ; 0x09B - $10A500
|00972C| dw LinkGraphics+$1D40 ; 0x09C - $109D40
|00972E| dw LinkGraphics+$1D80 ; 0x09D - $109D80
|009730| dw LinkGraphics+$1DC0 ; 0x09E - $109DC0
|009732| dw LinkGraphics+$1D40 ; 0x09F - $109D40
|009734| dw LinkGraphics+$1D80 ; 0x0A0 - $109D80
|009736| dw LinkGraphics+$1DC0 ; 0x0A1 - $109DC0
|009738| dw LinkGraphics+$0D00 ; 0x0A2 - $108D00
|00973A| dw LinkGraphics+$4680 ; 0x0A3 - $10C680
|00973C| dw LinkGraphics+$4180 ; 0x0A4 - $10C180
|00973E| dw LinkGraphics+$4140 ; 0x0A5 - $10C140
|009740| dw LinkGraphics+$0C00 ; 0x0A6 - $108C00
|009742| dw LinkGraphics+$4C80 ; 0x0A7 - $10CC80
|009744| dw LinkGraphics+$4C80 ; 0x0A8 - $10CC80
|009746| dw LinkGraphics+$4C00 ; 0x0A9 - $10CC00
|009748| dw LinkGraphics+$4600 ; 0x0AA - $10C600
|00974A| dw LinkGraphics+$4C00 ; 0x0AB - $10CC00
|00974C| dw LinkGraphics+$4600 ; 0x0AC - $10C600
|00974E| dw LinkGraphics+$3D00 ; 0x0AD - $10BD00
|009750| dw LinkGraphics+$0580 ; 0x0AE - $108580
|009752| dw LinkGraphics+$0800 ; 0x0AF - $108800
|009754| dw LinkGraphics+$49C0 ; 0x0B0 - $10C9C0
|009756| dw LinkGraphics+$4CC0 ; 0x0B1 - $10CCC0
|009758| dw LinkGraphics+$4DC0 ; 0x0B2 - $10CDC0
|00975A| dw LinkGraphics+$4D00 ; 0x0B3 - $10CD00
|00975C| dw LinkGraphics+$4D40 ; 0x0B4 - $10CD40
|00975E| dw LinkGraphics+$4D80 ; 0x0B5 - $10CD80
|009760| dw LinkGraphics+$0500 ; 0x0B6 - $108500
|009762| dw LinkGraphics+$0540 ; 0x0B7 - $108540
|009764| dw LinkGraphics+$4940 ; 0x0B8 - $10C940
|009766| dw LinkGraphics+$4980 ; 0x0B9 - $10C980
|009768| dw LinkGraphics+$0540 ; 0x0BA - $108540
|00976A| dw LinkGraphics+$4940 ; 0x0BB - $10C940
|00976C| dw LinkGraphics+$4980 ; 0x0BC - $10C980
|00976E| dw LinkGraphics+$0440 ; 0x0BD - $108440
|009770| dw LinkGraphics+$0480 ; 0x0BE - $108480
|009772| dw LinkGraphics+$41C0 ; 0x0BF - $10C1C0
|009774| dw LinkGraphics+$4900 ; 0x0C0 - $10C900
|009776| dw LinkGraphics+$4580 ; 0x0C1 - $10C580
|009778| dw LinkGraphics+$45C0 ; 0x0C2 - $10C5C0
|00977A| dw LinkGraphics+$48C0 ; 0x0C3 - $10C8C0
|00977C| dw LinkGraphics+$0440 ; 0x0C4 - $108440
|00977E| dw LinkGraphics+$0480 ; 0x0C5 - $108480
|009780| dw LinkGraphics+$41C0 ; 0x0C6 - $10C1C0
|009782| dw LinkGraphics+$4900 ; 0x0C7 - $10C900
|009784| dw LinkGraphics+$4580 ; 0x0C8 - $10C580
|009786| dw LinkGraphics+$45C0 ; 0x0C9 - $10C5C0
|009788| dw LinkGraphics+$48C0 ; 0x0CA - $10C8C0
|00978A| dw LinkGraphics+$3D00 ; 0x0CB - $10BD00
|00978C| dw LinkGraphics+$2CC0 ; 0x0CC - $10ACC0
|00978E| dw LinkGraphics+$4040 ; 0x0CD - $10C040
|009790| dw LinkGraphics+$5540 ; 0x0CE - $10D540
|009792| dw LinkGraphics+$5580 ; 0x0CF - $10D580
|009794| dw LinkGraphics+$54C0 ; 0x0D0 - $10D4C0
|009796| dw LinkGraphics+$5500 ; 0x0D1 - $10D500
|009798| dw LinkGraphics+$54C0 ; 0x0D2 - $10D4C0
|00979A| dw LinkGraphics+$5500 ; 0x0D3 - $10D500
|00979C| dw LinkGraphics+$5440 ; 0x0D4 - $10D440
|00979E| dw LinkGraphics+$5480 ; 0x0D5 - $10D480
|0097A0| dw LinkGraphics+$5440 ; 0x0D6 - $10D440
|0097A2| dw LinkGraphics+$5480 ; 0x0D7 - $10D480
|0097A4| dw LinkGraphics+$51C0 ; 0x0D8 - $10D1C0
|0097A6| dw LinkGraphics+$5400 ; 0x0D9 - $10D400
|0097A8| dw LinkGraphics+$5100 ; 0x0DA - $10D100
|0097AA| dw LinkGraphics+$5100 ; 0x0DB - $10D100
|0097AC| dw LinkGraphics+$5140 ; 0x0DC - $10D140
|0097AE| dw LinkGraphics+$5180 ; 0x0DD - $10D180
|0097B0| dw LinkGraphics+$5140 ; 0x0DE - $10D140
|0097B2| dw LinkGraphics+$5180 ; 0x0DF - $10D180
|0097B4| dw LinkGraphics+$30C0 ; 0x0E0 - $10B0C0
|0097B6| dw LinkGraphics+$3100 ; 0x0E1 - $10B100
|0097B8| dw LinkGraphics+$3140 ; 0x0E2 - $10B140
|0097BA| dw LinkGraphics+$3100 ; 0x0E3 - $10B100
|0097BC| dw LinkGraphics+$3140 ; 0x0E4 - $10B140
|0097BE| dw LinkGraphics+$5D40 ; 0x0E5 - $10DD40
|0097C0| dw LinkGraphics+$5D80 ; 0x0E6 - $10DD80
|0097C2| dw LinkGraphics+$5DC0 ; 0x0E7 - $10DDC0
|0097C4| dw LinkGraphics+$5D80 ; 0x0E8 - $10DD80
|0097C6| dw LinkGraphics+$5DC0 ; 0x0E9 - $10DDC0
|0097C8| dw LinkGraphics+$5C80 ; 0x0EA - $10DC80
|0097CA| dw LinkGraphics+$5CC0 ; 0x0EB - $10DCC0
|0097CC| dw LinkGraphics+$5D00 ; 0x0EC - $10DD00
|0097CE| dw LinkGraphics+$5C80 ; 0x0ED - $10DC80
|0097D0| dw LinkGraphics+$5CC0 ; 0x0EE - $10DCC0
|0097D2| dw LinkGraphics+$5D00 ; 0x0EF - $10DD00
|0097D4| dw LinkGraphics+$5100 ; 0x0F0 - $10D100
|0097D6| dw LinkGraphics+$5100 ; 0x0F1 - $10D100
|0097D8| dw LinkGraphics+$6000 ; 0x0F2 - $10E000
|0097DA| dw LinkGraphics+$6040 ; 0x0F3 - $10E040
|0097DC| dw LinkGraphics+$6080 ; 0x0F4 - $10E080
|0097DE| dw LinkGraphics+$60C0 ; 0x0F5 - $10E0C0
|0097E0| dw LinkGraphics+$6100 ; 0x0F6 - $10E100
|0097E2| dw LinkGraphics+$6140 ; 0x0F7 - $10E140
|0097E4| dw LinkGraphics+$6000 ; 0x0F8 - $10E000
|0097E6| dw LinkGraphics+$6040 ; 0x0F9 - $10E040
|0097E8| dw LinkGraphics+$6080 ; 0x0FA - $10E080
|0097EA| dw LinkGraphics+$60C0 ; 0x0FB - $10E0C0
|0097EC| dw LinkGraphics+$6100 ; 0x0FC - $10E100
|0097EE| dw LinkGraphics+$6140 ; 0x0FD - $10E140
|0097F0| dw LinkGraphics+$0000 ; 0x0FE - $108000
|0097F2| dw LinkGraphics+$50C0 ; 0x0FF - $10D0C0
|0097F4| dw LinkGraphics+$0000 ; 0x100 - $108000
|0097F6| dw LinkGraphics+$3940 ; 0x101 - $10B940
|0097F8| dw LinkGraphics+$3980 ; 0x102 - $10B980
|0097FA| dw LinkGraphics+$3940 ; 0x103 - $10B940
|0097FC| dw LinkGraphics+$5D40 ; 0x104 - $10DD40
|0097FE| dw LinkGraphics+$5D80 ; 0x105 - $10DD80
|009800| dw LinkGraphics+$5D40 ; 0x106 - $10DD40
|009802| dw LinkGraphics+$5C80 ; 0x107 - $10DC80
|009804| dw LinkGraphics+$5CC0 ; 0x108 - $10DCC0
|009806| dw LinkGraphics+$40C0 ; 0x109 - $10C0C0
|009808| dw LinkGraphics+$5C80 ; 0x10A - $10DC80
|00980A| dw LinkGraphics+$5CC0 ; 0x10B - $10DCC0
|00980C| dw LinkGraphics+$40C0 ; 0x10C - $10C0C0
|00980E| dw LinkGraphics+$39C0 ; 0x10D - $10B9C0
|009810| dw LinkGraphics+$3980 ; 0x10E - $10B980
|009812| dw LinkGraphics+$39C0 ; 0x10F - $10B9C0
|009814| dw LinkGraphics+$2560 ; 0x110 - $10A560
|009816| dw LinkGraphics+$25A0 ; 0x111 - $10A5A0
|009818| dw LinkGraphics+$2C80 ; 0x112 - $10AC80
|00981A| dw LinkGraphics+$6D00 ; 0x113 - $10ED00
|00981C| dw LinkGraphics+$0000 ; 0x114 - $108000
|00981E| dw LinkGraphics+$0CC0 ; 0x115 - $108CC0
|009820| dw LinkGraphics+$3D00 ; 0x116 - $10BD00
|009822| dw LinkGraphics+$6380 ; 0x117 - $10E380
|009824| dw LinkGraphics+$3DC0 ; 0x118 - $10BDC0
|009826| dw LinkGraphics+$6500 ; 0x119 - $10E500
|009828| dw LinkGraphics+$6500 ; 0x11A - $10E500
|00982A| dw LinkGraphics+$6880 ; 0x11B - $10E880
|00982C| dw LinkGraphics+$68C0 ; 0x11C - $10E8C0
|00982E| dw LinkGraphics+$68C0 ; 0x11D - $10E8C0
|009830| dw LinkGraphics+$6800 ; 0x11E - $10E800
|009832| dw LinkGraphics+$65C0 ; 0x11F - $10E5C0
|009834| dw LinkGraphics+$65C0 ; 0x120 - $10E5C0
|009836| dw LinkGraphics+$6940 ; 0x121 - $10E940
|009838| dw LinkGraphics+$6980 ; 0x122 - $10E980
|00983A| dw LinkGraphics+$6940 ; 0x123 - $10E940
|00983C| dw LinkGraphics+$6980 ; 0x124 - $10E980
|00983E| dw LinkGraphics+$3D40 ; 0x125 - $10BD40
|009840| dw LinkGraphics+$0C80 ; 0x126 - $108C80
|009842| dw LinkGraphics+$2080 ; 0x127 - $10A080
|009844| dw LinkGraphics+$0000 ; 0x128 - $108000
|009846| dw LinkGraphics+$2980 ; 0x129 - $10A980
|009848| dw LinkGraphics+$3D00 ; 0x12A - $10BD00
|00984A| dw LinkGraphics+$3DC0 ; 0x12B - $10BDC0
|00984C| dw LinkGraphics+$3400 ; 0x12C - $10B400
|00984E| dw LinkGraphics+$2880 ; 0x12D - $10A880
|009850| dw LinkGraphics+$6DC0 ; 0x12E - $10EDC0

;===================================================================================================

LinkOAM_AuxAddresses:
|009852| dw LinkGraphics+$1A40 ; 0x000 - $109A40
|009854| dw LinkGraphics+$1E00 ; 0x001 - $109E00
|009856| dw LinkGraphics+$1D20 ; 0x002 - $109D20
|009858| dw LinkGraphics+$1F20 ; 0x003 - $109F20
|00985A| dw LinkGraphics+$1B20 ; 0x004 - $109B20
|00985C| dw LinkGraphics+$3C20 ; 0x005 - $10BC20
|00985E| dw LinkGraphics+$3C20 ; 0x006 - $10BC20
|009860| dw LinkGraphics+$3E20 ; 0x007 - $10BE20
|009862| dw LinkGraphics+$3E20 ; 0x008 - $10BE20
|009864| dw LinkGraphics+$3E00 ; 0x009 - $10BE00
|009866| dw LinkGraphics+$3E00 ; 0x00A - $10BE00
|009868| dw LinkGraphics+$3E00 ; 0x00B - $10BE00
|00986A| dw LinkGraphics+$3E00 ; 0x00C - $10BE00
|00986C| dw LinkGraphics+$2540 ; 0x00D - $10A540
|00986E| dw LinkGraphics+$2540 ; 0x00E - $10A540
|009870| dw LinkGraphics+$2540 ; 0x00F - $10A540
|009872| dw LinkGraphics+$2540 ; 0x010 - $10A540
|009874| dw LinkGraphics+$3C00 ; 0x011 - $10BC00
|009876| dw LinkGraphics+$3C00 ; 0x012 - $10BC00
|009878| dw LinkGraphics+$3C00 ; 0x013 - $10BC00
|00987A| dw LinkGraphics+$3C00 ; 0x014 - $10BC00
|00987C| dw LinkGraphics+$2740 ; 0x015 - $10A740
|00987E| dw LinkGraphics+$2740 ; 0x016 - $10A740
|009880| dw LinkGraphics+$2740 ; 0x017 - $10A740
|009882| dw LinkGraphics+$2740 ; 0x018 - $10A740
|009884| dw LinkGraphics+$6780 ; 0x019 - $10E780
|009886| dw LinkGraphics+$6780 ; 0x01A - $10E780

;===================================================================================================

TilemapUpload_HighBytes:
|009888| db $00 ; 0x00 - VRAM $0000
|009889| db $00 ; 0x01 - VRAM $0000
|00988A| db $04 ; 0x02 - VRAM $0800
|00988B| db $08 ; 0x03 - VRAM $1000
|00988C| db $0C ; 0x04 - VRAM $1800
|00988D| db $08 ; 0x05 - VRAM $1000
|00988E| db $0C ; 0x06 - VRAM $1800
|00988F| db $00 ; 0x07 - VRAM $0000
|009890| db $04 ; 0x08 - VRAM $0800
|009891| db $00 ; 0x09 - VRAM $0000
|009892| db $08 ; 0x0A - VRAM $1000
|009893| db $04 ; 0x0B - VRAM $0800
|009894| db $0C ; 0x0C - VRAM $1800
|009895| db $04 ; 0x0D - VRAM $0800
|009896| db $0C ; 0x0E - VRAM $1800
|009897| db $00 ; 0x0F - VRAM $0000
|009898| db $08 ; 0x10 - VRAM $1000
|009899| db $10 ; 0x11 - VRAM $2000
|00989A| db $14 ; 0x12 - VRAM $2800
|00989B| db $18 ; 0x13 - VRAM $3000
|00989C| db $1C ; 0x14 - VRAM $3800
|00989D| db $18 ; 0x15 - VRAM $3000
|00989E| db $1C ; 0x16 - VRAM $3800
|00989F| db $10 ; 0x17 - VRAM $2000
|0098A0| db $14 ; 0x18 - VRAM $2800
|0098A1| db $10 ; 0x19 - VRAM $2000
|0098A2| db $18 ; 0x1A - VRAM $3000
|0098A3| db $14 ; 0x1B - VRAM $2800
|0098A4| db $1C ; 0x1C - VRAM $3800
|0098A5| db $14 ; 0x1D - VRAM $2800
|0098A6| db $1C ; 0x1E - VRAM $3800
|0098A7| db $10 ; 0x1F - VRAM $2000
|0098A8| db $18 ; 0x20 - VRAM $3000
|0098A9| db $60 ; 0x21 - VRAM $C000
|0098AA| db $68 ; 0x22 - VRAM $D000

;===================================================================================================
; FREE ROM: 0x15
;===================================================================================================
NULL_0098AB:
|0098AB| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0098B3| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0098BB| db $FF, $FF, $FF, $FF, $FF

;===================================================================================================

BitMasks:
|0098C0| dw $8000 ; Sewers
|0098C2| dw $4000 ; Hyrule Castle
|0098C4| dw $2000 ; Eastern Palace
|0098C6| dw $1000 ; Desert Palace

DoorFlagMasks:
|0098C8| dw $0800 ; Agahnim's Tower
|0098CA| dw $0400 ; Swamp Palace
|0098CC| dw $0200 ; Palace of Darkness
|0098CE| dw $0100 ; Misery Mire
|0098D0| dw $0080 ; Skull Woods
|0098D2| dw $0040 ; Ice Palace
|0098D4| dw $0020 ; Tower of Hera
|0098D6| dw $0010 ; Thieves' Town
|0098D8| dw $0008 ; Turtle Rock
|0098DA| dw $0004 ; Ganon's Tower
|0098DC| dw $0002
|0098DE| dw $0001

BitMasksInverted:
|0098E0| dw $7FFF ; Sewers
|0098E2| dw $BFFF ; Hyrule Castle
|0098E4| dw $DFFF ; Eastern Palace
|0098E6| dw $EFFF ; Desert Palace
|0098E8| dw $F7FF ; Agahnim's Tower
|0098EA| dw $FBFF ; Swamp Palace
|0098EC| dw $FDFF ; Palace of Darkness
|0098EE| dw $FEFF ; Misery Mire
|0098F0| dw $FF7F ; Skull Woods
|0098F2| dw $FFBF ; Ice Palace
|0098F4| dw $FFDF ; Tower of Hera
|0098F6| dw $FFEF ; Thieves' Town
|0098F8| dw $FFF7 ; Turtle Rock
|0098FA| dw $FFFB ; Ganon's Tower
|0098FC| dw $FFFD
|0098FE| dw $FFFE

;===================================================================================================

; Used for chests, doors, etc.
RoomFlagMask:
|009900| dw $0100
|009902| dw $0200
|009904| dw $0400
|009906| dw $0800
|009908| dw $1000
|00990A| dw $2000

;===================================================================================================

RoomsWithPitDamage:
|00990C| dw $0072 ; ROOM 0072
|00990E| dw $0082 ; ROOM 0082
|009910| dw $0040 ; ROOM 0040
|009912| dw $00C0 ; ROOM 00C0
|009914| dw $0112 ; ROOM 0112
|009916| dw $0056 ; ROOM 0056
|009918| dw $0057 ; ROOM 0057
|00991A| dw $0058 ; ROOM 0058
|00991C| dw $0067 ; ROOM 0067
|00991E| dw $0068 ; ROOM 0068
|009920| dw $0049 ; ROOM 0049
|009922| dw $0098 ; ROOM 0098
|009924| dw $00D1 ; ROOM 00D1
|009926| dw $00C3 ; ROOM 00C3
|009928| dw $00A3 ; ROOM 00A3
|00992A| dw $00A2 ; ROOM 00A2
|00992C| dw $0092 ; ROOM 0092
|00992E| dw $00A0 ; ROOM 00A0
|009930| dw $004E ; ROOM 004E
|009932| dw $007F ; ROOM 007F
|009934| dw $00AF ; ROOM 00AF
|009936| dw $00F0 ; ROOM 00F0
|009938| dw $00F1 ; ROOM 00F1
|00993A| dw $00E6 ; ROOM 00E6
|00993C| dw $00E7 ; ROOM 00E7
|00993E| dw $00C6 ; ROOM 00C6
|009940| dw $00C7 ; ROOM 00C7
|009942| dw $00D6 ; ROOM 00D6
|009944| dw $00B4 ; ROOM 00B4
|009946| dw $00B5 ; ROOM 00B5
|009948| dw $00C5 ; ROOM 00C5
|00994A| dw $0024 ; ROOM 0024
|00994C| dw $00D5 ; ROOM 00D5
|00994E| dw $00C9 ; ROOM 00C9
|009950| dw $002A ; ROOM 002A
|009952| dw $001A ; ROOM 001A
|009954| dw $004B ; ROOM 004B
|009956| dw $00BC ; ROOM 00BC
|009958| dw $0044 ; ROOM 0044
|00995A| dw $00FB ; ROOM 00FB
|00995C| dw $007B ; ROOM 007B
|00995E| dw $007C ; ROOM 007C
|009960| dw $008B ; ROOM 008B
|009962| dw $008D ; ROOM 008D
|009964| dw $009B ; ROOM 009B
|009966| dw $009C ; ROOM 009C
|009968| dw $009D ; ROOM 009D
|00996A| dw $00A5 ; ROOM 00A5
|00996C| dw $0095 ; ROOM 0095
|00996E| dw $001C ; ROOM 001C
|009970| dw $005C ; ROOM 005C
|009972| dw $007D ; ROOM 007D
|009974| dw $004C ; ROOM 004C
|009976| dw $0096 ; ROOM 0096
|009978| dw $0120 ; ROOM 0120
|00997A| dw $003C ; ROOM 003C
|00997C| dw $0123 ; ROOM 0123

;===================================================================================================

DoorTilemapPositions_NorthWall:
|00997E| dw $021C
|009980| dw $023C
|009982| dw $025C
|009984| dw $039C
|009986| dw $03BC
|009988| dw $03DC

DoorTilemapPositions_NorthMiddle:
|00998A| dw $121C
|00998C| dw $123C
|00998E| dw $125C
|009990| dw $139C
|009992| dw $13BC
|009994| dw $13DC

DoorTilemapPositions_SouthMiddle:
|009996| dw $0D1C
|009998| dw $0D3C
|00999A| dw $0D5C
|00999C| dw $0B9C
|00999E| dw $0BBC
|0099A0| dw $0BDC
|0099A2| dw $1D1C
|0099A4| dw $1D3C
|0099A6| dw $1D5C

DoorTilemapPositions_LowerLayerEntrance:
|0099A8| dw $1B9C
|0099AA| dw $1BBC
|0099AC| dw $1BDC

DoorTilemapPositions_WestWall:
|0099AE| dw $0784
|0099B0| dw $0F84
|0099B2| dw $1784
|0099B4| dw $078A
|0099B6| dw $0F8A
|0099B8| dw $178A

DoorTilemapPositions_WestMiddle:
|0099BA| dw $07C4
|0099BC| dw $0FC4
|0099BE| dw $17C4
|0099C0| dw $07CA
|0099C2| dw $0FCA
|0099C4| dw $17CA

DoorTilemapPositions_EastMiddle:
|0099C6| dw $07B4
|0099C8| dw $0FB4
|0099CA| dw $17B4
|0099CC| dw $07AE
|0099CE| dw $0FAE
|0099D0| dw $17AE

DoorTilemapPositions_EastWall:
|0099D2| dw $07F4
|0099D4| dw $0FF4
|0099D6| dw $17F4
|0099D8| dw $07EE
|0099DA| dw $0FEE
|0099DC| dw $17EE

;===================================================================================================

ExplodingWallTilemapPosition:
|0099DE| dw $0D8A
|0099E0| dw $0DAA
|0099E2| dw $0DCA
|0099E4| dw $02B6
|0099E6| dw $0AB6
|0099E8| dw $12B6

;===================================================================================================

StaircaseFinder:

.offset_y
|0099EA| dw $0007
|0099EC| dw $0018
|0099EE| dw $0008
|0099F0| dw $0008

.offset_x
|0099F2| dw $0000
|0099F4| dw $0000
|0099F6| dw $FFFF
|0099F8| dw $0011

.index_offset
|0099FA| dw $0002
|0099FC| dw $0002
|0099FE| dw $0080
|009A00| dw $0080

;===================================================================================================

DoorwayReplacementDoorGFX:
|009A02| dw $0000 ; DOORTYPE 00 => DOORTYPE 00
|009A04| dw $0002 ; DOORTYPE 02 => DOORTYPE 02
|009A06| dw $0000 ; DOORTYPE 04 => DOORTYPE 00
|009A08| dw $0000 ; DOORTYPE 06 => DOORTYPE 00
|009A0A| dw $0000 ; DOORTYPE 08 => DOORTYPE 00
|009A0C| dw $0000 ; DOORTYPE 0A => DOORTYPE 00
|009A0E| dw $0000 ; DOORTYPE 0C => DOORTYPE 00
|009A10| dw $0000 ; DOORTYPE 0E => DOORTYPE 00
|009A12| dw $0000 ; DOORTYPE 10 => DOORTYPE 00
|009A14| dw $0012 ; DOORTYPE 12 => DOORTYPE 12
|009A16| dw $0000 ; DOORTYPE 14 => DOORTYPE 00
|009A18| dw $0000 ; DOORTYPE 16 => DOORTYPE 00
|009A1A| dw $0050 ; DOORTYPE 18 => DOORTYPE 50
|009A1C| dw $0000 ; DOORTYPE 1A => DOORTYPE 00
|009A1E| dw $0050 ; DOORTYPE 1C => DOORTYPE 50
|009A20| dw $0050 ; DOORTYPE 1E => DOORTYPE 50
|009A22| dw $0060 ; DOORTYPE 20 => DOORTYPE 60
|009A24| dw $0062 ; DOORTYPE 22 => DOORTYPE 62
|009A26| dw $0064 ; DOORTYPE 24 => DOORTYPE 64
|009A28| dw $0066 ; DOORTYPE 26 => DOORTYPE 66
|009A2A| dw $0052 ; DOORTYPE 28 => DOORTYPE 52
|009A2C| dw $005A ; DOORTYPE 2A => DOORTYPE 5A
|009A2E| dw $0050 ; DOORTYPE 2C => DOORTYPE 50
|009A30| dw $0052 ; DOORTYPE 2E => DOORTYPE 52
|009A32| dw $0054 ; DOORTYPE 30 => DOORTYPE 54
|009A34| dw $0056 ; DOORTYPE 32 => DOORTYPE 56
|009A36| dw $0000 ; DOORTYPE 34 => DOORTYPE 00
|009A38| dw $0050 ; DOORTYPE 36 => DOORTYPE 50
|009A3A| dw $0050 ; DOORTYPE 38 => DOORTYPE 50
|009A3C| dw $0000 ; DOORTYPE 3A => DOORTYPE 00
|009A3E| dw $0000 ; DOORTYPE 3C => DOORTYPE 00
|009A40| dw $0000 ; DOORTYPE 3E => DOORTYPE 00
|009A42| dw $0040 ; DOORTYPE 40 => DOORTYPE 40
|009A44| dw $0058 ; DOORTYPE 42 => DOORTYPE 58
|009A46| dw $0058 ; DOORTYPE 44 => DOORTYPE 58
|009A48| dw $0000 ; DOORTYPE 46 => DOORTYPE 00
|009A4A| dw $0058 ; DOORTYPE 48 => DOORTYPE 58
|009A4C| dw $0058 ; DOORTYPE 4A => DOORTYPE 58
|009A4E| dw $0000 ; DOORTYPE 4C => DOORTYPE 00
|009A50| dw $0000 ; DOORTYPE 4E => DOORTYPE 00

;---------------------------------------------------------------------------------------------------

DoorwayTileProperties:
|009A52| dw $8080 ; DOORTYPE 00 => TILETYPE 80
|009A54| dw $8484 ; DOORTYPE 02 => TILETYPE 84
|009A56| dw $0000 ; DOORTYPE 04 => TILETYPE 00
|009A58| dw $0101 ; DOORTYPE 06 => TILETYPE 01
|009A5A| dw $8484 ; DOORTYPE 08 => TILETYPE 84
|009A5C| dw $8E8E ; DOORTYPE 0A => TILETYPE 8E
|009A5E| dw $0000 ; DOORTYPE 0C => TILETYPE 00
|009A60| dw $0000 ; DOORTYPE 0E => TILETYPE 00
|009A62| dw $8888 ; DOORTYPE 10 => TILETYPE 88
|009A64| dw $8E8E ; DOORTYPE 12 => TILETYPE 8E
|009A66| dw $8080 ; DOORTYPE 14 => TILETYPE 80
|009A68| dw $8080 ; DOORTYPE 16 => TILETYPE 80
|009A6A| dw $8282 ; DOORTYPE 18 => TILETYPE 82
|009A6C| dw $8080 ; DOORTYPE 1A => TILETYPE 80
|009A6E| dw $8080 ; DOORTYPE 1C => TILETYPE 80
|009A70| dw $8080 ; DOORTYPE 1E => TILETYPE 80
|009A72| dw $8080 ; DOORTYPE 20 => TILETYPE 80
|009A74| dw $8080 ; DOORTYPE 22 => TILETYPE 80
|009A76| dw $8080 ; DOORTYPE 24 => TILETYPE 80
|009A78| dw $8080 ; DOORTYPE 26 => TILETYPE 80
|009A7A| dw $8282 ; DOORTYPE 28 => TILETYPE 82
|009A7C| dw $8E8E ; DOORTYPE 2A => TILETYPE 8E
|009A7E| dw $8080 ; DOORTYPE 2C => TILETYPE 80
|009A80| dw $8282 ; DOORTYPE 2E => TILETYPE 82
|009A82| dw $8080 ; DOORTYPE 30 => TILETYPE 80
|009A84| dw $8080 ; DOORTYPE 32 => TILETYPE 80
|009A86| dw $8080 ; DOORTYPE 34 => TILETYPE 80
|009A88| dw $8282 ; DOORTYPE 36 => TILETYPE 82
|009A8A| dw $8282 ; DOORTYPE 38 => TILETYPE 82
|009A8C| dw $8080 ; DOORTYPE 3A => TILETYPE 80
|009A8E| dw $8080 ; DOORTYPE 3C => TILETYPE 80
|009A90| dw $8080 ; DOORTYPE 3E => TILETYPE 80
|009A92| dw $8484 ; DOORTYPE 40 => TILETYPE 84
|009A94| dw $8484 ; DOORTYPE 42 => TILETYPE 84
|009A96| dw $8686 ; DOORTYPE 44 => TILETYPE 86
|009A98| dw $8888 ; DOORTYPE 46 => TILETYPE 88
|009A9A| dw $8686 ; DOORTYPE 48 => TILETYPE 86
|009A9C| dw $8686 ; DOORTYPE 4A => TILETYPE 86
|009A9E| dw $8080 ; DOORTYPE 4C => TILETYPE 80
|009AA0| dw $8080 ; DOORTYPE 4E => TILETYPE 80

;===================================================================================================

PartnerDoorSelfLocation:
|009AA2| dw $0000, $0010, $0020, $0030, $0040, $0050 ; North
|009AAE| dw $0061, $0071, $0081, $0091, $00A1, $00B1 ; South
|009ABA| dw $0002, $0012, $0022, $0032, $0042, $0052 ; East
|009AC6| dw $0063, $0073, $0083, $0093, $00A3, $00B3 ; West

PartnerDoorLocation:
|009AD2| dw $0061, $0071, $0081, $0091, $00A1, $00B1 ; North
|009ADE| dw $0000, $0010, $0020, $0030, $0040, $0050 ; South
|009AEA| dw $0063, $0073, $0083, $0093, $00A3, $00B3 ; East
|009AF6| dw $0002, $0012, $0022, $0032, $0042, $0052 ; West

;===================================================================================================

RoomQuadrantDataOffset:
|009B02| dw $0000
|009B04| dw $0040
|009B06| dw $1000
|009B08| dw $1040

;===================================================================================================

MovingWallDirection:
|009B0A| dw $0005
|009B0C| dw $0007
|009B0E| dw $000B
|009B10| dw $000F

;---------------------------------------------------------------------------------------------------

MovingWallObjectCount:
|009B12| dw $0008
|009B14| dw $0010
|009B16| dw $0018
|009B18| dw $0020

;---------------------------------------------------------------------------------------------------

MovingWallEastBoundaries:
|009B1A| dw $FFC1
|009B1C| dw $FF81
|009B1E| dw $FF41
|009B20| dw $FF01

|009B22| dw $FFB9
|009B24| dw $FF79
|009B26| dw $FF39
|009B28| dw $FEF9

;---------------------------------------------------------------------------------------------------

MovingWallWestBoundaries:
|009B2A| dw $0042
|009B2C| dw $0082
|009B2E| dw $00C2
|009B30| dw $0102

|009B32| dw $004A
|009B34| dw $008A
|009B36| dw $00CA
|009B38| dw $010A

;===================================================================================================

WaterOverlayHDMAPositionOffset:
|009B3A| dw $0002
|009B3C| dw $0003
|009B3E| dw $0004
|009B40| dw $0005

WaterOverlayHDMASize:
|009B42| dw $0020
|009B44| dw $0030

WaterOverlayObjectCount:
|009B46| dw $0040
|009B48| dw $0050

;===================================================================================================

UNREACHABLE_009B4A:
|009B4A| dw $0003, $0005, $0007, $0009

;===================================================================================================

RoomDrawObjectData:

;---------------------------------------------------------------------------------------------------

^.obj0000
|009B52| dw $14EE, $14EF, $14EE, $14EF
|009B5A| dw $14FE, $14FF, $14FE, $14FF

;---------------------------------------------------------------------------------------------------

^.obj0010
|009B62| dw $0CEE, $0CEF, $0CEE, $0CEF
|009B6A| dw $0CFE, $0CFF, $0CFE, $0CFF

;---------------------------------------------------------------------------------------------------

^.obj0020
|009B72| dw $0CEC, $0CED, $0CEC, $0CED
|009B7A| dw $0CFC, $0CFD, $0CFC, $0CFD

;---------------------------------------------------------------------------------------------------

^.obj0030
|009B82| dw $14EC, $14ED, $14EC, $14ED
|009B8A| dw $14FC, $14FD, $14FC, $14FD

;---------------------------------------------------------------------------------------------------

^.obj0040
|009B92| dw $18EE, $18EF, $18EE, $18EF
|009B9A| dw $18FE, $18FF, $18FE, $18FF

;---------------------------------------------------------------------------------------------------

^.obj0050
|009BA2| dw $10EE, $10EF, $10EE, $10EF
|009BAA| dw $10FE, $10FF, $10FE, $10FF

;---------------------------------------------------------------------------------------------------

^.obj0060
|009BB2| dw $10EC, $10ED, $10EC, $10ED
|009BBA| dw $10FC, $10FD, $10FC, $10FD

;---------------------------------------------------------------------------------------------------

^.obj0070
|009BC2| dw $18EC, $18ED, $18EC, $18ED
|009BCA| dw $18FC, $18FD, $18FC, $18FD

;---------------------------------------------------------------------------------------------------

^.obj0080
|009BD2| dw $10C1, $10C1, $10C1, $10C1
|009BDA| dw $10C1, $10C1, $10C1, $10C1

;---------------------------------------------------------------------------------------------------

^.obj0090
|009BE2| dw $18CA, $18CB, $18CA, $18CB
|009BEA| dw $18DA, $18DB, $18DA, $18DB

;---------------------------------------------------------------------------------------------------

^.obj00A0
|009BF2| dw $18C9, $18C9, $18C9, $18C9
|009BFA| dw $18C9, $18C9, $18C9, $18C9

;---------------------------------------------------------------------------------------------------

^.obj00B0
|009C02| dw $1DB6, $1DB7, $1DB6, $1DB7
|009C0A| dw $1DB8, $1DB9, $1DB8, $1DB9

;---------------------------------------------------------------------------------------------------

^.obj00C0
|009C12| dw $1DAE, $1DAF, $1DAE, $1DAF
|009C1A| dw $1DBE, $1DBF, $1DBE, $1DBF

;---------------------------------------------------------------------------------------------------

^.obj00D0
|009C22| dw $090C, $490C, $090C, $490C
|009C2A| dw $890C, $C90C, $890C, $C90C

;---------------------------------------------------------------------------------------------------

^.obj00E0
|009C32| dw $01EC, $01EC, $01EC, $01EC
|009C3A| dw $01EC, $01EC, $01EC, $01EC

;---------------------------------------------------------------------------------------------------

^.obj00F0
|009C42| dw $01EB, $01EB, $01EB, $01EB
|009C4A| dw $01EB, $01EB, $01EB, $01EB

;---------------------------------------------------------------------------------------------------

^.obj0100
|009C52| dw $1DBA, $1DBB, $1DBA, $1DBB
|009C5A| dw $1DBC, $1DBD, $1DBC, $1DBD

;---------------------------------------------------------------------------------------------------

^.obj0110
|009C62| dw $1DB6, $1DB7, $1DB6, $1DB7
|009C6A| dw $1DB8, $1DB9, $1DB8, $1DB9

;---------------------------------------------------------------------------------------------------

^.obj0120
|009C72| dw $1DB0, $1DB1, $1DB0, $1DB1
|009C7A| dw $9DB0, $9DB1, $9DB0, $9DB1

;---------------------------------------------------------------------------------------------------

^.obj0130
|009C82| dw $1DBA, $1DBB, $1DBA, $1DBB
|009C8A| dw $1DBC, $1DBD, $1DBC, $1DBD

;---------------------------------------------------------------------------------------------------

^.obj0140
|009C92| dw $1DB5, $1DB5, $1DB5, $1DB5

;---------------------------------------------------------------------------------------------------

^.obj0148
|009C9A| dw $1DA6, $5DA6, $1DA6, $5DA6
|009CA2| dw $9DA6, $DDA6, $9DA6, $DDA6

;---------------------------------------------------------------------------------------------------

^.obj0158
|009CAA| dw $08D0, $08D0, $08D0, $08D0
|009CB2| dw $08D0, $08D0, $08D0, $08D0

;---------------------------------------------------------------------------------------------------

^.obj0168
|009CBA| dw $18CA, $18CB, $18CA, $18CB
|009CC2| dw $18DA, $18DB, $18DA, $18DB

;---------------------------------------------------------------------------------------------------

^.obj0178
|009CCA| dw $0C62, $0C63, $0C62, $0C63
|009CD2| dw $0C62, $0C63, $0C62, $0C63

;---------------------------------------------------------------------------------------------------

^.obj0188
|009CDA| dw $0DCC, $0DCC, $0DCC, $0DCC
|009CE2| dw $0DCC, $0DCC, $0DCC, $0DCC

;---------------------------------------------------------------------------------------------------

^.obj0198
|009CEA| dw $090D, $091D, $490D, $491D

;---------------------------------------------------------------------------------------------------

^.obj01A0
|009CF2| dw $10EC, $10ED, $10EC, $10ED
|009CFA| dw $10FC, $10FD, $10FC, $10FD

;---------------------------------------------------------------------------------------------------

^.obj01B0
|009D02| dw $090C, $490C, $090C, $490C
|009D0A| dw $890C, $C90C, $890C, $C90C

;---------------------------------------------------------------------------------------------------

^.obj01C0
|009D12| dw $190F, $190F, $190F, $190F
|009D1A| dw $190F, $190F, $190F, $190F

;---------------------------------------------------------------------------------------------------

^.obj01D0
|009D22| dw $09BE, $49BE, $09BE, $49BE
|009D2A| dw $09BE, $49BE, $09BE, $49BE

;---------------------------------------------------------------------------------------------------

^.obj01E0
|009D32| dw $09BF, $49BF, $09BF, $49BF
|009D3A| dw $09BF, $49BF, $09BF, $49BF

;---------------------------------------------------------------------------------------------------

^.obj01F0
|009D42| dw $09B1, $09B1, $09B1, $09B1
|009D4A| dw $89B1, $89B1, $89B1, $89B1

;---------------------------------------------------------------------------------------------------

^.obj0200
|009D52| dw $09B0, $09B0, $09B0, $09B0
|009D5A| dw $89B0, $89B0, $89B0, $89B0

;---------------------------------------------------------------------------------------------------

^.obj0210
|009D62| dw $0982, $0992, $0983, $0993

;---------------------------------------------------------------------------------------------------

^.obj0218
|009D6A| dw $4983, $4993, $4982, $4992

;---------------------------------------------------------------------------------------------------

^.obj0220
|009D72| dw $0CCC, $0CCD, $0CDC, $0CCE

^.obj0228
|009D7A| dw $0CCC, $0CCF, $0CDC, $0CDD

^.obj0230
|009D82| dw $0CCC, $0CCD, $0CDE, $0CDD

^.obj0238
|009D8A| dw $0CDF, $0CCD, $0CDC, $0CDD

|009D92| dw $0CCC, $0CDC, $0CCD, $0CCE
|009D9A| dw $0CCC, $0CDC, $0CCF, $0CDD
|009DA2| dw $0CCC, $0CDE, $0CCD, $0CDD
|009DAA| dw $0CDF, $0CDC, $0CCD, $0CDD

;---------------------------------------------------------------------------------------------------

^.obj0260
|009DB2| dw $0CCC, $0CCD, $0CCC, $0CCD
|009DBA| dw $0CDC, $0CDD, $0CDC, $0CDD
|009DC2| dw $0CCC, $0CCD, $0CCC, $0CCD
|009DCA| dw $0CDC, $0CDD, $0CDC, $0CDD

;---------------------------------------------------------------------------------------------------

^.obj0280
|009DD2| dw $0CCC, $0CDC, $0CCD, $0CDD

;---------------------------------------------------------------------------------------------------

^.obj0288
|009DDA| dw $1C13, $1C41, $1C13, $1C41
|009DE2| dw $1C40, $1C42, $1C40, $1C42
|009DEA| dw $1C13, $1C41, $1C13, $1C41
|009DF2| dw $1C40, $1C42, $1C40, $1C42

;---------------------------------------------------------------------------------------------------

^.obj02A8
|009DFA| dw $1576, $1577, $1576, $1577
|009E02| dw $1578, $1579, $1578, $1579
|009E0A| dw $1576, $1577, $1576, $1577
|009E12| dw $1578, $1579, $1578, $1579

;---------------------------------------------------------------------------------------------------

^.obj02C8
|009E1A| dw $0892, $0898, $08A4, $0CAD
|009E22| dw $0893, $0899, $08A5, $8CAD

;---------------------------------------------------------------------------------------------------

^.obj02D8
|009E2A| dw $4CAD, $48A4, $4898, $4892
|009E32| dw $CCAD, $48A5, $4899, $4893

;---------------------------------------------------------------------------------------------------

^.obj02E8
|009E3A| dw $0890, $0896, $08A2, $0CAC
|009E42| dw $0891, $0897, $08A3, $4CAC

;---------------------------------------------------------------------------------------------------

^.obj02F8
|009E4A| dw $8CAC, $88A2, $8896, $8890
|009E52| dw $CCAC, $88A3, $8897, $8891

;---------------------------------------------------------------------------------------------------

^.obj0308
|009E5A| dw $0843, $0844, $0871, $90AD
|009E62| dw $0853, $0854, $0871, $10AD

;---------------------------------------------------------------------------------------------------

^.obj0318
|009E6A| dw $D0AD, $4871, $4844, $4843
|009E72| dw $50AD, $4871, $4854, $4853

;---------------------------------------------------------------------------------------------------

^.obj0328
|009E7A| dw $0850, $0860, $0870, $50AC
|009E82| dw $0851, $0861, $0870, $10AC

;---------------------------------------------------------------------------------------------------

^.obj0338
|009E8A| dw $D0AC, $8870, $8860, $8850
|009E92| dw $90AC, $8870, $8861, $8851
|009E9A| dw $1C6B, $1C6B, $1C6B, $1C6B
|009EA2| dw $1C6C, $1C8D, $5C8D, $5C6C
|009EAA| dw $5C6B, $5C6B, $5C6B, $5C6B
|009EB2| dw $1C6A, $1C6A, $1C6A, $1C6A
|009EBA| dw $1C7A, $1C8E, $9C8E, $9C7A
|009EC2| dw $9C6A, $9C6A, $9C6A, $9C6A

;---------------------------------------------------------------------------------------------------

^.obj0378
|009ECA| dw $1C6B, $1C6B, $1C6C, $1C6C

;---------------------------------------------------------------------------------------------------

^.obj0380
|009ED2| dw $5C6C, $5C6C, $5C6B, $5C6B

;---------------------------------------------------------------------------------------------------

^.obj0388
|009EDA| dw $1C6A, $1C7A, $1C6A, $1C7A

;---------------------------------------------------------------------------------------------------

^.obj0390
|009EE2| dw $9C7A, $9C6A, $9C7A, $9C6A

;---------------------------------------------------------------------------------------------------

^.obj0398
|009EEA| dw $1C7B, $1C6B, $1C6A, $1C45

;---------------------------------------------------------------------------------------------------

^.obj03A0
|009EF2| dw $1C6B, $9C7B, $9C45, $9C6A

;---------------------------------------------------------------------------------------------------

^.obj03A8
|009EFA| dw $1C6A, $5C45, $5C7B, $5C6B

;---------------------------------------------------------------------------------------------------

^.obj03B0
|009F02| dw $DC45, $9C6A, $5C6B, $DC7B

;---------------------------------------------------------------------------------------------------

^.obj03B8
|009F0A| dw $1C7C, $1C7A, $1C6C, $1C55

;---------------------------------------------------------------------------------------------------

^.obj03C0
|009F12| dw $9C7A, $9C7C, $9C55, $1C6C

;---------------------------------------------------------------------------------------------------

^.obj03C8
|009F1A| dw $5C6C, $5C55, $5C7C, $1C7A

;---------------------------------------------------------------------------------------------------

^.obj03D0
|009F22| dw $DC55, $5C6C, $9C7A, $DC7C

;---------------------------------------------------------------------------------------------------

^.obj03D8
|009F2A| dw $3C15, $3C15, $3C15, $3C15

;---------------------------------------------------------------------------------------------------

^.obj03E0
|009F32| dw $0951, $0961, $0941, $0971
|009F3A| dw $8951, $8961, $8941, $8971

;---------------------------------------------------------------------------------------------------

^.obj03F0
|009F42| dw $4971, $4941, $4961, $4951
|009F4A| dw $C971, $C941, $C961, $C951

;---------------------------------------------------------------------------------------------------

^.obj0400
|009F52| dw $0950, $0960, $0940, $0970
|009F5A| dw $4950, $4960, $4940, $4970

;---------------------------------------------------------------------------------------------------

^.obj0410
|009F62| dw $8970, $8940, $8960, $8950
|009F6A| dw $C970, $C940, $C960, $C950

;---------------------------------------------------------------------------------------------------

^.obj0420
|009F72| dw $0880, $0881, $089A, $089B
|009F7A| dw $14AB

;---------------------------------------------------------------------------------------------------

^.obj042A
|009F7C| dw $94AB, $889B, $889A, $8881
|009F84| dw $8880

;---------------------------------------------------------------------------------------------------

^.obj0434
|009F86| dw $4880, $4881, $489A, $489B
|009F8E| dw $54AB

;---------------------------------------------------------------------------------------------------

^.obj043E
|009F90| dw $D4AB, $C89B, $C89A, $C881
|009F98| dw $C880

;---------------------------------------------------------------------------------------------------

^.obj0448
|009F9A| dw $0880, $0881, $089A, $089B
|009FA2| dw $0CAB

;---------------------------------------------------------------------------------------------------

^.obj0452
|009FA4| dw $8CAB, $889B, $889A, $8881
|009FAC| dw $8880

;---------------------------------------------------------------------------------------------------

^.obj045C
|009FAE| dw $4880, $4881, $489A, $489B
|009FB6| dw $4CAB

;---------------------------------------------------------------------------------------------------

^.obj0466
|009FB8| dw $CCAB, $C89B, $C89A, $C881
|009FC0| dw $C880

;---------------------------------------------------------------------------------------------------

^.obj0470
|009FC2| dw $0880, $0881, $089A, $089B
|009FCA| dw $10AB

;---------------------------------------------------------------------------------------------------

^.obj047A
|009FCC| dw $90AB, $889B, $889A, $8881
|009FD4| dw $8880

;---------------------------------------------------------------------------------------------------

^.obj0484
|009FD6| dw $4880, $4881, $489A, $489B
|009FDE| dw $50AB

;---------------------------------------------------------------------------------------------------

^.obj048E
|009FE0| dw $D0AB, $C89B, $C89A, $C881
|009FE8| dw $C880

;---------------------------------------------------------------------------------------------------

^.obj0498
|009FEA| dw $0849, $084A, $084B, $089C
|009FF2| dw $18AB

;---------------------------------------------------------------------------------------------------

^.obj04A2
|009FF4| dw $98AB, $889C, $884B, $884A
|009FFC| dw $8849

;---------------------------------------------------------------------------------------------------

^.obj04AC
|009FFE| dw $4849, $484A, $484B, $489C
|00A006| dw $58AB

;---------------------------------------------------------------------------------------------------

^.obj04B6
|00A008| dw $D8AB, $C89C, $C84B, $C84A
|00A010| dw $C849

;---------------------------------------------------------------------------------------------------

^.obj04C0
|00A012| dw $0849, $084A, $084B, $089C
|00A01A| dw $10AB

;---------------------------------------------------------------------------------------------------

^.obj04CA
|00A01C| dw $90AB, $889C, $884B, $884A
|00A024| dw $8849

;---------------------------------------------------------------------------------------------------

^.obj04D4
|00A026| dw $4849, $484A, $484B, $489C
|00A02E| dw $50AB

;---------------------------------------------------------------------------------------------------

^.obj04DE
|00A030| dw $D0AB, $C89C, $C84B, $C84A
|00A038| dw $C849

;---------------------------------------------------------------------------------------------------

^.obj04E8
|00A03A| dw $0849, $084A, $084B, $089C
|00A042| dw $10AB

;---------------------------------------------------------------------------------------------------

^.obj04F2
|00A044| dw $90AB, $889C, $884B, $884A
|00A04C| dw $8849

;---------------------------------------------------------------------------------------------------

^.obj04FC
|00A04E| dw $4849, $484A, $484B, $489C
|00A056| dw $50AB

;---------------------------------------------------------------------------------------------------

^.obj0506
|00A058| dw $D0AB, $C89C, $C84B, $C84A
|00A060| dw $C849

;---------------------------------------------------------------------------------------------------

^.obj0510
|00A062| dw $1DAA, $1DAC, $1DAC, $1D8B
|00A06A| dw $1DAD, $1D8C, $1D8B, $1DAF
|00A072| dw $1DA5, $1D8B, $1DAF, $1DA6
|00A07A| dw $1D8B, $1DAF, $1DA6, $1D8B
|00A082| dw $1DAF, $5DA5, $1D8B, $5DAD
|00A08A| dw $5D8C, $5DAA, $5DAC, $5DAC
|00A092| dw $1DAC, $1D8C, $1DA7, $1DAC
|00A09A| dw $1D8C, $1DA7, $1DA9, $1DA9
|00A0A2| dw $1DA9, $1DA9, $5DA7, $5D8C
|00A0AA| dw $5DAC, $5DA7, $5D8C, $5DAC
|00A0B2| dw $1DAC, $1DAC, $1DAB, $1D8C
|00A0BA| dw $1D9C, $1D9B, $9DA5, $1DAE
|00A0C2| dw $1D9B, $9DA6, $1DAE, $1D9B
|00A0CA| dw $9DA6, $1DAE, $1D9B, $DDA5
|00A0D2| dw $1DAE, $1D9B, $5D8C, $5D9C
|00A0DA| dw $1D9B, $5DAC, $5DAC, $5DAB

;---------------------------------------------------------------------------------------------------

^.obj0590
|00A0E2| dw $1DA8, $9DA8, $5DA8, $DDA8

;---------------------------------------------------------------------------------------------------

^.obj0598
|00A0EA| dw $1D9D, $1D8D, $1D8D, $1D72
|00A0F2| dw $1D72, $1D72, $5D9D, $5D8D
|00A0FA| dw $5D8D

;---------------------------------------------------------------------------------------------------

^.obj05AA
|00A0FC| dw $01E9, $01E9, $01E9, $01E9

;---------------------------------------------------------------------------------------------------

^.obj05B2
|00A104| dw $18C9, $18C9, $18C9, $18C9

;---------------------------------------------------------------------------------------------------

^.obj05BA
|00A10C| dw $09DA, $09DE, $09DB, $01E9
|00A114| dw $09DB, $01E9, $49DA, $49DE
|00A11C| dw $09DE, $09DC, $01E9, $09DD
|00A124| dw $01E9, $09DD, $49DE, $49DC

;---------------------------------------------------------------------------------------------------

^.obj05DA
|00A12C| dw $09DB, $01E9, $01E9, $09DD
|00A134| dw $09DB, $01E9, $01E9, $09DD
|00A13C| dw $09DB, $01E9, $01E9, $09DD
|00A144| dw $09DB, $01E9, $01E9, $09DD

;---------------------------------------------------------------------------------------------------

^.obj05FA
|00A14C| dw $08E1, $08E3, $08E1

;---------------------------------------------------------------------------------------------------

^.obj0600
|00A152| dw $08E1, $08E2, $08E1

;---------------------------------------------------------------------------------------------------

^.obj0606
|00A158| dw $08E0, $08F0, $48E0, $48F0
|00A160| dw $08F3, $48F3, $08E0, $08F1
|00A168| dw $08E4, $48E0, $48F1, $48E4

;---------------------------------------------------------------------------------------------------

^.obj061E
|00A170| dw $08E0, $08F1, $08E4, $48E0
|00A178| dw $48F1, $48E4, $08F4, $08F2
|00A180| dw $08E5, $08E0, $08F1, $08E4
|00A188| dw $48E0, $48F1, $48E4

;---------------------------------------------------------------------------------------------------

^.obj063C
|00A18E| dw $09DA, $09DB, $49DA

;---------------------------------------------------------------------------------------------------

^.obj0642
|00A194| dw $09DC, $09DD, $49DC

;---------------------------------------------------------------------------------------------------

^.obj0648
|00A19A| dw $09DE

;---------------------------------------------------------------------------------------------------

^.obj064A
|00A19C| dw $49DE

;---------------------------------------------------------------------------------------------------

^.obj064C
|00A19E| dw $09DF, $09DD, $49DF

;---------------------------------------------------------------------------------------------------

^.obj0652
|00A1A4| dw $89DF, $09DB, $C9DF

;---------------------------------------------------------------------------------------------------

^.obj0658
|00A1AA| dw $09DF, $09DD, $49DC

;---------------------------------------------------------------------------------------------------

^.obj065E
|00A1B0| dw $09DC, $09DD, $49DF

;---------------------------------------------------------------------------------------------------

^.obj0664
|00A1B6| dw $89DF, $09DB, $49DA

;---------------------------------------------------------------------------------------------------

^.obj066A
|00A1BC| dw $09DA, $09DB, $C9DF

;---------------------------------------------------------------------------------------------------

^.obj0670
|00A1C2| dw $08E3, $4846, $4843, $4869
|00A1CA| dw $4853, $C846

;---------------------------------------------------------------------------------------------------

^.obj067C
|00A1CE| dw $08E3, $0846, $0843, $0869
|00A1D6| dw $0853, $8846

;---------------------------------------------------------------------------------------------------

^.obj0688
|00A1DA| dw $08E2, $8846, $8850, $8868
|00A1E2| dw $8851, $C846

;---------------------------------------------------------------------------------------------------

^.obj0694
|00A1E6| dw $08E2, $0846, $0850, $0868
|00A1EE| dw $0851, $4846

;---------------------------------------------------------------------------------------------------

^.obj06A0
|00A1F2| dw $0852

;---------------------------------------------------------------------------------------------------

^.obj06A2
|00A1F4| dw $4852

;---------------------------------------------------------------------------------------------------

^.obj06A4
|00A1F6| dw $085C

;---------------------------------------------------------------------------------------------------

^.obj06A6
|00A1F8| dw $885C

;---------------------------------------------------------------------------------------------------

^.obj06A8
|00A1FA| dw $1CC6, $1CC6, $1CC6, $1CC6
|00A202| dw $1CC6, $1CC6, $1CC6, $1CC6
|00A20A| dw $1CC6, $1CC6, $1CC6, $1CC6
|00A212| dw $1CC6, $1CC6, $1CC6, $1CC6

;---------------------------------------------------------------------------------------------------

^.obj06C8
|00A21A| dw $0973, $28A0, $28A1, $A8A1
|00A222| dw $A8A0, $0867, $09EF, $09EF
|00A22A| dw $8867, $0865, $085A, $885A
|00A232| dw $8865, $4865, $485A, $C85A
|00A23A| dw $C865, $4867, $09EF, $09EF
|00A242| dw $C867, $68A0, $68A1, $E8A1
|00A24A| dw $E8A0, $28A0, $28A1, $A8A1
|00A252| dw $A8A0, $0867, $09EF, $09EF
|00A25A| dw $8867, $0865, $085A, $885A
|00A262| dw $8865, $4865, $485A, $C85A
|00A26A| dw $C865, $4867, $09EF, $09EF
|00A272| dw $C867, $68A0, $68A1, $E8A1
|00A27A| dw $E8A0

;---------------------------------------------------------------------------------------------------

^.obj072A
|00A27C| dw $294E, $2893, $0892, $01EC
|00A284| dw $295E, $0898, $01EC, $01EC
|00A28C| dw $096E, $0893, $0899, $08A5
|00A294| dw $0892, $0898, $08A4, $0893
|00A29C| dw $A893, $A94E, $0899, $A95E
|00A2A4| dw $01EC, $896E, $01EC, $01EC

;---------------------------------------------------------------------------------------------------

^.obj075A
|00A2AC| dw $01EC, $01EC, $496E, $01EC
|00A2B4| dw $695E, $4898, $694E, $6893
|00A2BC| dw $4892, $48A5, $4899, $4893
|00A2C4| dw $48A4, $4898, $4892, $C96E
|00A2CC| dw $01EC, $01EC, $4899, $E95E
|00A2D4| dw $01EC, $4893, $E893, $E94E

;---------------------------------------------------------------------------------------------------

^.obj078A
|00A2DC| dw $096E, $1148, $1168, $1159
|00A2E4| dw $496E, $1149, $1169, $5159
|00A2EC| dw $096E, $5149, $5169, $1159
|00A2F4| dw $496E, $5148, $5168, $5159

;---------------------------------------------------------------------------------------------------

^.obj07AA
|00A2FC| dw $097E, $897E, $097E, $897E
|00A304| dw $11AE, $1146, $9146, $91AE
|00A30C| dw $11AF, $1166, $9166, $91AF
|00A314| dw $1156, $9156, $1156, $9156

;---------------------------------------------------------------------------------------------------

^.obj07CA
|00A31C| dw $5156, $D156, $5156, $D156
|00A324| dw $51AF, $1167, $9167, $D1AF
|00A32C| dw $51AE, $1147, $9147, $D1AE
|00A334| dw $497E, $C97E, $497E, $C97E

;---------------------------------------------------------------------------------------------------

^.obj07EA
|00A33C| dw $096E, $115E, $1178, $1158
|00A344| dw $496E, $114E, $1177, $1174
|00A34C| dw $096E, $114E, $5177, $5174
|00A354| dw $496E, $515E, $5178, $5158

;---------------------------------------------------------------------------------------------------

^.obj080A
|00A35C| dw $097E, $897E, $097E, $897E
|00A364| dw $11AC, $11AD, $11AD, $91AC
|00A36C| dw $1179, $1176, $9176, $9179
|00A374| dw $1157, $1175, $9175, $9157

;---------------------------------------------------------------------------------------------------

^.obj082A
|00A37C| dw $5157, $5175, $D175, $D157
|00A384| dw $5179, $5176, $D176, $D179
|00A38C| dw $51AC, $51AD, $51AD, $D1AC
|00A394| dw $497E, $C97E, $497E, $C97E

;---------------------------------------------------------------------------------------------------

^.obj084A
|00A39C| dw $28E7, $28F7, $28E6, $08F6
|00A3A4| dw $68E7, $68F7, $68E6, $48F6

;---------------------------------------------------------------------------------------------------

^.obj085A
|00A3AC| dw $2DC2, $2DC3, $2D2C, $0D3C
|00A3B4| dw $6DC2, $6DC3, $6D2C, $4D3C

;---------------------------------------------------------------------------------------------------

^.obj086A
|00A3BC| dw $0942, $1162, $1152, $0943
|00A3C4| dw $1163, $1153, $4943, $5163
|00A3CC| dw $5153, $4942, $5162, $5152

;---------------------------------------------------------------------------------------------------

^.obj0882
|00A3D4| dw $9152, $9162, $8942, $9153
|00A3DC| dw $9163, $8943, $D153, $D163
|00A3E4| dw $C943, $D152, $D162, $C942

;---------------------------------------------------------------------------------------------------

^.obj089A
|00A3EC| dw $0944, $0954, $8954, $8944
|00A3F4| dw $1164, $1165, $9165, $9164
|00A3FC| dw $1145, $1155, $9155, $9145

;---------------------------------------------------------------------------------------------------

^.obj08B2
|00A404| dw $5145, $5155, $D155, $D145
|00A40C| dw $5164, $5165, $D165, $D164
|00A414| dw $4944, $4954, $C954, $C944

;---------------------------------------------------------------------------------------------------

^.obj08CA
|00A41C| dw $1548, $1549, $5548, $5549
|00A424| dw $1548, $1549, $5548, $5549

;---------------------------------------------------------------------------------------------------

^.obj08DA
|00A42C| dw $1587, $1588, $5588, $5587
|00A434| dw $1597, $1598, $5598, $5597
|00A43C| dw $1589, $158A, $558A, $5589
|00A444| dw $1599, $159A, $559A, $5599

;---------------------------------------------------------------------------------------------------

^.obj08FA
|00A44C| dw $0980, $0990, $4980, $4990

;---------------------------------------------------------------------------------------------------

^.obj0902
|00A454| dw $8990, $8980, $C990, $C980

;---------------------------------------------------------------------------------------------------

^.obj090A
|00A45C| dw $0981, $8981, $0991, $8991

;---------------------------------------------------------------------------------------------------

^.obj0912
|00A464| dw $4991, $C991, $4981, $C981

;---------------------------------------------------------------------------------------------------

^.obj091A
|00A46C| dw $1DFE, $1DFC, $5DFE

;---------------------------------------------------------------------------------------------------

^.obj0920
|00A472| dw $9DFE, $9DFC, $DDFE

;---------------------------------------------------------------------------------------------------

^.obj0926
|00A478| dw $1DFD

;---------------------------------------------------------------------------------------------------

^.obj0928
|00A47A| dw $5DFD

;---------------------------------------------------------------------------------------------------

^.obj092A
|00A47C| dw $DDFF, $9DFC, $9DFF

;---------------------------------------------------------------------------------------------------

^.obj0930
|00A482| dw $5DFF, $1DFC, $1DFF

;---------------------------------------------------------------------------------------------------

^.obj0936
|00A488| dw $DDFF, $9DFC, $DDFE

;---------------------------------------------------------------------------------------------------

^.obj093C
|00A48E| dw $9DFE, $9DFC, $9DFF

;---------------------------------------------------------------------------------------------------

^.obj0942
|00A494| dw $5DFF, $1DFC, $5DFE

;---------------------------------------------------------------------------------------------------

^.obj0948
|00A49A| dw $1DFE, $1DFC, $1DFF

;---------------------------------------------------------------------------------------------------

^.obj094E
|00A4A0| dw $1DF7, $1C40, $1C41, $1C42
|00A4A8| dw $1DB5, $1DB2, $1DB3, $1DB3
|00A4B0| dw $1DB4, $1DB5, $5DF7, $5C40
|00A4B8| dw $5C41, $5C42, $5DB5

;---------------------------------------------------------------------------------------------------

^.obj096C
|00A4BE| dw $1DF7, $1C40, $1DB5, $1DB2
|00A4C6| dw $1DB3, $1DB5, $5DF7, $5C40
|00A4CE| dw $5DB5

;---------------------------------------------------------------------------------------------------

^.obj097E
|00A4D0| dw $0C14, $0C14, $0C14, $0C14
|00A4D8| dw $8C14, $8C14, $8C14, $8C14

;---------------------------------------------------------------------------------------------------

^.obj098E
|00A4E0| dw $0C64, $0C66, $0C64, $0C66
|00A4E8| dw $0C64, $0C66, $0C64, $0C66

;---------------------------------------------------------------------------------------------------

^.obj099E
|00A4F0| dw $0D46, $0D56, $157E, $0D47
|00A4F8| dw $0D57, $157F, $4D46, $4D56
|00A500| dw $557E

;---------------------------------------------------------------------------------------------------

^.obj09B0
|00A502| dw $0D46, $4D46, $8DAB, $4DAB

;---------------------------------------------------------------------------------------------------

^.obj09B8
|00A50A| dw $0D46, $0DAB, $0D47, $4DAD

;---------------------------------------------------------------------------------------------------

^.obj09C0
|00A512| dw $0DAB, $0D56, $4DAC, $0D57

;---------------------------------------------------------------------------------------------------

^.obj09C8
|00A51A| dw $0D47, $0DAD, $4D46, $4DAB

;---------------------------------------------------------------------------------------------------

^.obj09D0
|00A522| dw $0DAC, $0D57, $4DAB, $4D56

;---------------------------------------------------------------------------------------------------

^.obj09D8
|00A52A| dw $0940, $0960, $0950, $0970
|00A532| dw $0941, $0961, $0951, $0971
|00A53A| dw $4941, $4961, $4951, $4971
|00A542| dw $4940, $4960, $4950, $4970

;---------------------------------------------------------------------------------------------------

^.obj09F8
|00A54A| dw $0D42

;---------------------------------------------------------------------------------------------------

^.obj09FA
|00A54C| dw $0D52

;---------------------------------------------------------------------------------------------------

^.obj09FC
|00A54E| dw $0D40

;---------------------------------------------------------------------------------------------------

^.obj09FE
|00A550| dw $0D50

;---------------------------------------------------------------------------------------------------

^.obj0A00
|00A552| dw $0D41

;---------------------------------------------------------------------------------------------------

^.obj0A02
|00A554| dw $0D51

;---------------------------------------------------------------------------------------------------

^.obj0A04
|00A556| dw $0D8E

;---------------------------------------------------------------------------------------------------

^.obj0A06
|00A558| dw $0D8F

;---------------------------------------------------------------------------------------------------

^.obj0A08
|00A55A| dw $0D9E

;---------------------------------------------------------------------------------------------------

^.obj0A0A
|00A55C| dw $0D9F

;---------------------------------------------------------------------------------------------------

^.obj0A0C
|00A55E| dw $0D43

;---------------------------------------------------------------------------------------------------

^.obj0A0E
|00A560| dw $0D53

;---------------------------------------------------------------------------------------------------

^.obj0A10
|00A562| dw $0DA9

;---------------------------------------------------------------------------------------------------

^.obj0A12
|00A564| dw $0DA8

;---------------------------------------------------------------------------------------------------

^.obj0A14
|00A566| dw $09C8, $0DC6, $4DC6, $49C8
|00A56E| dw $09CA, $0D02, $4D02, $49CA

;---------------------------------------------------------------------------------------------------

^.obj0A24
|00A576| dw $89CA, $8D02, $CD02, $C9CA
|00A57E| dw $89C8, $8DC6, $CDC6, $C9C8

;---------------------------------------------------------------------------------------------------

^.obj0A34
|00A586| dw $09C9, $0DC7, $8DC7, $89C9
|00A58E| dw $09CB, $0D03, $8D03, $89CB

;---------------------------------------------------------------------------------------------------

^.obj0A44
|00A596| dw $49CB, $4D03, $CD03, $C9CB
|00A59E| dw $49C9, $4DC7, $CDC7, $C9C9

;---------------------------------------------------------------------------------------------------

^.obj0A54
|00A5A6| dw $0944, $0954, $8954, $8944
|00A5AE| dw $1164, $1165, $9165, $9164
|00A5B6| dw $1145, $1155, $9155, $9145

;---------------------------------------------------------------------------------------------------

^.obj0A6C
|00A5BE| dw $5145, $5155, $D155, $D145
|00A5C6| dw $5164, $5165, $D165, $D164
|00A5CE| dw $4944, $4954, $C954, $C944

;---------------------------------------------------------------------------------------------------

^.obj0A84
|00A5D6| dw $1146, $1147, $9147, $9146
|00A5DE| dw $1166, $1167, $9167, $9166
|00A5E6| dw $1156, $1157, $9157, $9156

;---------------------------------------------------------------------------------------------------

^.obj0A9C
|00A5EE| dw $5156, $5157, $D157, $D156
|00A5F6| dw $5166, $5167, $D167, $D166
|00A5FE| dw $5146, $5147, $D147, $D146

;---------------------------------------------------------------------------------------------------

^.obj0AB4
|00A606| dw $098E, $098E, $099E, $1CC6
|00A60E| dw $1CC6, $099F, $1CC6, $498F
|00A616| dw $499E, $1CC6, $0972, $0972
|00A61E| dw $1CC6, $098F, $099E, $1CC6
|00A626| dw $1CC6, $099F, $498E, $498E
|00A62E| dw $499E

;---------------------------------------------------------------------------------------------------

^.obj0ADE
|00A630| dw $0DE6, $0DF6, $4DE6, $4DF6

;---------------------------------------------------------------------------------------------------

^.obj0AE6
|00A638| dw $1DA9, $1DA9, $1DA9, $1DA9
|00A640| dw $1DA9, $1DA9, $1DA9, $1DA9
|00A648| dw $1DA9, $1DA9, $1DA9, $1DA9
|00A650| dw $1DA9, $1DA9, $1DA9, $1DA9

;---------------------------------------------------------------------------------------------------

^.obj0B06
|00A658| dw $9DA8, $9DA6, $DDA8

;---------------------------------------------------------------------------------------------------

^.obj0B0C
|00A65E| dw $1DA8, $1DA6, $5DA8

;---------------------------------------------------------------------------------------------------

^.obj0B12
|00A664| dw $1DA7

;---------------------------------------------------------------------------------------------------

^.obj0B14
|00A666| dw $5DA7

;---------------------------------------------------------------------------------------------------

^.obj0B16
|00A668| dw $4D66, $1D64, $1D44, $1D54
|00A670| dw $0D66, $5D64, $5D44, $5D54

;---------------------------------------------------------------------------------------------------

^.obj0B26
|00A678| dw $0946, $0966, $0956, $0CAC
|00A680| dw $0947, $0967, $0957, $4CAC

;---------------------------------------------------------------------------------------------------

^.obj0B36
|00A688| dw $8CAC, $8956, $8966, $8946
|00A690| dw $CCAC, $8957, $8967, $8947

;---------------------------------------------------------------------------------------------------

^.obj0B46
|00A698| dw $0948, $0968, $0958, $0CAD
|00A6A0| dw $0949, $0969, $0959, $8CAD

;---------------------------------------------------------------------------------------------------

^.obj0B56
|00A6A8| dw $4CAD, $4958, $4968, $4948
|00A6B0| dw $CCAD, $4959, $4969, $4949

;---------------------------------------------------------------------------------------------------

^.obj0B66
|00A6B8| dw $0894, $0893, $0892, $0893
|00A6C0| dw $0891, $089E, $0898, $0899
|00A6C8| dw $0890, $0896, $08A6, $08A5
|00A6D0| dw $0891, $0897, $08A3, $0CAE

;---------------------------------------------------------------------------------------------------

^.obj0B86
|00A6D8| dw $0892, $0893, $0892, $8894
|00A6E0| dw $0898, $0899, $889E, $8891
|00A6E8| dw $08A4, $88A6, $8896, $8890
|00A6F0| dw $8CAE, $88A3, $8897, $8891

;---------------------------------------------------------------------------------------------------

^.obj0BA6
|00A6F8| dw $0890, $0896, $08A2, $4CAE
|00A700| dw $0891, $0897, $48A6, $48A5
|00A708| dw $0890, $489E, $4898, $4899
|00A710| dw $4894, $4893, $4892, $4893

;---------------------------------------------------------------------------------------------------

^.obj0BC6
|00A718| dw $CCAE, $88A2, $8896, $8890
|00A720| dw $48A4, $C8A6, $8897, $8891
|00A728| dw $4898, $4899, $C89E, $8890
|00A730| dw $4892, $4893, $4892, $C894

;---------------------------------------------------------------------------------------------------

^.obj0BE6
|00A738| dw $0846, $0843, $0853, $0843
|00A740| dw $0850, $0847, $0854, $0844
|00A748| dw $0851, $0861, $0848, $0871
|00A750| dw $0850, $0860, $0870, $10AE

;---------------------------------------------------------------------------------------------------

^.obj0C06
|00A758| dw $0853, $0843, $0853, $8846
|00A760| dw $0854, $0844, $8847, $8850
|00A768| dw $0871, $8848, $8861, $8851
|00A770| dw $90AE, $8870, $8860, $8850

;---------------------------------------------------------------------------------------------------

^.obj0C26
|00A778| dw $0851, $0861, $0870, $50AE
|00A780| dw $0850, $0860, $4848, $4871
|00A788| dw $0851, $4847, $4854, $4844
|00A790| dw $4846, $4843, $4853, $4843

;---------------------------------------------------------------------------------------------------

^.obj0C46
|00A798| dw $D0AE, $8870, $8861, $8851
|00A7A0| dw $4871, $C848, $8860, $8850
|00A7A8| dw $4854, $4844, $C847, $8851
|00A7B0| dw $4853, $4843, $4853, $C846

;---------------------------------------------------------------------------------------------------

^.obj0C66
|00A7B8| dw $0895, $0896, $08A2, $0CAC
|00A7C0| dw $0898, $089F, $08A3, $4CAC
|00A7C8| dw $08A4, $08A5, $08A7, $0CAC
|00A7D0| dw $0CAD, $8CAD, $0CAD, $0CAF

;---------------------------------------------------------------------------------------------------

^.obj0C86
|00A7D8| dw $8CAC, $88A2, $8896, $8895
|00A7E0| dw $CCAC, $88A3, $889F, $0899
|00A7E8| dw $8CAC, $88A7, $08A4, $08A5
|00A7F0| dw $8CAF, $8CAD, $0CAD, $0CAD

;---------------------------------------------------------------------------------------------------

^.obj0CA6
|00A7F8| dw $4CAD, $CCAD, $4CAD, $4CAF
|00A800| dw $48A4, $48A5, $48A7, $4CAC
|00A808| dw $4898, $489F, $08A2, $0CAC
|00A810| dw $4895, $0897, $08A3, $4CAC

;---------------------------------------------------------------------------------------------------

^.obj0CC6
|00A818| dw $CCAF, $CCAD, $4CAD, $CCAD
|00A820| dw $CCAC, $C8A7, $48A4, $48A5
|00A828| dw $8CAC, $88A2, $C89F, $4899
|00A830| dw $CCAC, $88A3, $8897, $C895

;---------------------------------------------------------------------------------------------------

^.obj0CE6
|00A838| dw $0856, $0861, $0870, $10AC
|00A840| dw $0854, $0857, $0870, $50AC
|00A848| dw $0871, $0871, $0858, $10AC
|00A850| dw $10AD, $90AD, $10AD, $10AF

;---------------------------------------------------------------------------------------------------

^.obj0D06
|00A858| dw $90AC, $8870, $8861, $8856
|00A860| dw $D0AC, $8870, $8857, $0844
|00A868| dw $90AC, $8858, $0871, $0871
|00A870| dw $90AF, $90AD, $10AD, $90AD

;---------------------------------------------------------------------------------------------------

^.obj0D26
|00A878| dw $50AD, $D0AD, $50AD, $50AF
|00A880| dw $4871, $4871, $4858, $50AC
|00A888| dw $4854, $4857, $0870, $10AC
|00A890| dw $4856, $0860, $0870, $50AC

;---------------------------------------------------------------------------------------------------

^.obj0D46
|00A898| dw $D0AF, $D0AD, $50AD, $D0AD
|00A8A0| dw $D0AC, $C858, $4871, $4871
|00A8A8| dw $90AC, $8870, $C857, $4844
|00A8B0| dw $D0AC, $8870, $8860, $C856

;---------------------------------------------------------------------------------------------------

^.obj0D66
|00A8B8| dw $0861, $0870, $50AE, $50AF
|00A8C0| dw $0860, $4848, $4858, $10AC
|00A8C8| dw $4847, $4857, $0870, $50AC

;---------------------------------------------------------------------------------------------------

^.obj0D7E
|00A8D0| dw $D0AF, $D0AE, $8870, $8861
|00A8D8| dw $90AC, $C858, $C848, $8860
|00A8E0| dw $D0AC, $8870, $C857, $C847

;---------------------------------------------------------------------------------------------------

^.obj0D96
|00A8E8| dw $0847, $0857, $0870, $50AC
|00A8F0| dw $0861, $0848, $0858, $10AC
|00A8F8| dw $0860, $0870, $10AE, $10AF

;---------------------------------------------------------------------------------------------------

^.obj0DAE
|00A900| dw $D0AC, $8870, $8857, $8847
|00A908| dw $90AC, $8858, $8848, $8861
|00A910| dw $90AF, $90AE, $8870, $8860

;---------------------------------------------------------------------------------------------------

^.obj0DC6
|00A918| dw $0854, $0844, $8847, $0871
|00A920| dw $8848, $8857, $90AE, $8858
|00A928| dw $0871, $90AF, $90AD, $10AD

;---------------------------------------------------------------------------------------------------

^.obj0DDE
|00A930| dw $0847, $0854, $0844, $0857
|00A938| dw $0848, $0871, $0871, $0858
|00A940| dw $10AE, $90AD, $10AD, $10AF

;---------------------------------------------------------------------------------------------------

^.obj0DF6
|00A948| dw $D0AF, $D0AD, $50AD, $D0AE
|00A950| dw $C858, $4871, $4871, $C848
|00A958| dw $C857, $4854, $4844, $C847

;---------------------------------------------------------------------------------------------------

^.obj0E0E
|00A960| dw $D0AD, $50AD, $50AF, $4871
|00A968| dw $4858, $50AE, $4857, $4848
|00A970| dw $4871, $4847, $4854, $4844

;---------------------------------------------------------------------------------------------------

^.obj0E26
|00A978| dw $0D00, $0D10, $0D12, $4D00
|00A980| dw $0D11, $0D13

;---------------------------------------------------------------------------------------------------

^.obj0E32
|00A984| dw $0D04, $0D14, $0D24, $0D34
|00A98C| dw $0D05, $0D15, $0D25, $0D35
|00A994| dw $4D05, $4D15, $4D25, $4D35
|00A99C| dw $4D04, $4D14, $4D24, $4D34

;---------------------------------------------------------------------------------------------------

^.obj0E52
|00A9A4| dw $0922, $0932, $0923, $0933

;---------------------------------------------------------------------------------------------------

^.obj0E5A
|00A9AC| dw $0DE5, $0DF5, $4DE5, $4DF5

;---------------------------------------------------------------------------------------------------

^.obj0E62
|00A9B4| dw $0DE3, $0DF3, $0DE4, $0DF4

;---------------------------------------------------------------------------------------------------

^.obj0E6A
|00A9BC| dw $4DE4, $4DF4, $4DE3, $4DF3

;---------------------------------------------------------------------------------------------------

^.obj0E72
|00A9C4| dw $8DF3, $8DE3, $8DF4, $8DE4

;---------------------------------------------------------------------------------------------------

^.obj0E7A
|00A9CC| dw $CDF4, $CDE4, $CDF3, $CDE3

;---------------------------------------------------------------------------------------------------
; Real pots
;---------------------------------------------------------------------------------------------------
^.obj0E82
|00A9D4| dw $0D28, $0D38, $4D28, $4D38

;---------------------------------------------------------------------------------------------------
; Weird ugly pots
;---------------------------------------------------------------------------------------------------
^.obj0E8A
|00A9DC| dw $0D2A, $0D3A, $0D2B, $0D3B

;---------------------------------------------------------------------------------------------------
; Skull pots
;---------------------------------------------------------------------------------------------------
^.obj0E92
|00A9E4| dw $0D01, $0D1C, $4D01, $4D1C

;---------------------------------------------------------------------------------------------------
; Star tiles (active)
;---------------------------------------------------------------------------------------------------
^.obj0E9A
|00A9EC| dw $0DEE, $8DEE, $4DEE, $CDEE

;---------------------------------------------------------------------------------------------------
; Star tiles (inactive)
;---------------------------------------------------------------------------------------------------
^.obj0EA2
|00A9F4| dw $0DED, $8DED, $4DED, $CDED

;---------------------------------------------------------------------------------------------------

^.obj0EAA
|00A9FC| dw $0CD2, $0CEB, $0CD3, $0CFB

;---------------------------------------------------------------------------------------------------

^.obj0EB2
|00AA04| dw $0CEE, $0CFE, $0CEF, $0CFF

;---------------------------------------------------------------------------------------------------

^.obj0EBA
|00AA0C| dw $0CD4, $0CD6, $0CD5, $0CD7

;---------------------------------------------------------------------------------------------------

^.obj0EC2
|00AA14| dw $0DE0, $0DF0, $4DE0, $4DF0

;---------------------------------------------------------------------------------------------------

^.obj0ECA
|00AA1C| dw $0DC0, $0DC1, $4DC0, $4DC1

;---------------------------------------------------------------------------------------------------

^.obj0ED2
|00AA24| dw $094D, $095D, $096D, $494D
|00AA2C| dw $495D, $496D

;---------------------------------------------------------------------------------------------------

^.obj0EDE
|00AA30| dw $1587, $1589, $1599, $1588
|00AA38| dw $158A, $159A, $5588, $558A
|00AA40| dw $559A, $5587, $5589, $5599

;---------------------------------------------------------------------------------------------------

^.obj0EF6
|00AA48| dw $158C, $158D, $558D, $558C
|00AA50| dw $159C, $159D, $559D, $559C
|00AA58| dw $159C, $159D, $559D, $559C
|00AA60| dw $159C, $159D, $559D, $559C
|00AA68| dw $158B, $159B, $559B, $558B

;---------------------------------------------------------------------------------------------------

^.obj0F1E
|00AA70| dw $154A, $155A, $156A, $157A
|00AA78| dw $154B, $155B, $156B, $157B
|00AA80| dw $554B, $555B, $556B, $557B
|00AA88| dw $554A, $555A, $556A, $557A

;---------------------------------------------------------------------------------------------------

^.obj0F3E
|00AA90| dw $1525, $1563, $1553, $1555
|00AA98| dw $1526, $1564, $1554, $1556
|00AAA0| dw $5526, $5564, $5554, $5556
|00AAA8| dw $5525, $5563, $5553, $5555

;---------------------------------------------------------------------------------------------------

^.obj0F5E
|00AAB0| dw $151D, $151E, $151F, $551D
|00AAB8| dw $551E, $551F

;---------------------------------------------------------------------------------------------------

^.obj0F6A
|00AABC| dw $1548, $1549, $5548, $5549

;---------------------------------------------------------------------------------------------------

^.obj0F72
|00AAC4| dw $094A, $095A, $096A, $097A
|00AACC| dw $094B, $095B, $096B, $097B
|00AAD4| dw $494B, $495B, $496B, $497B
|00AADC| dw $494A, $495A, $496A, $497A

;---------------------------------------------------------------------------------------------------

^.obj0F92
|00AAE4| dw $0968, $0969, $4969, $4968
|00AAEC| dw $0958, $0959, $4959, $4958

;---------------------------------------------------------------------------------------------------

^.obj0FA2
|00AAF4| dw $1588, $156C, $556C, $5588
|00AAFC| dw $157D, $157C, $557C, $557D

;---------------------------------------------------------------------------------------------------

^.obj0FB2
|00AB04| dw $11A0, $11A1, $51A0, $11A2
|00AB0C| dw $11A3, $51A2, $1194, $1195
|00AB14| dw $5194

;---------------------------------------------------------------------------------------------------

^.obj0FC4
|00AB16| dw $094E, $095E, $096E, $09AE
|00AB1E| dw $094F, $095F, $096F, $09AF
|00AB26| dw $094F, $095F, $096F, $09AF
|00AB2E| dw $094F, $095F, $496F, $09AF
|00AB36| dw $094F, $095F, $096F, $09AF
|00AB3E| dw $494E, $495E, $496E, $49AE

;---------------------------------------------------------------------------------------------------

^.obj0FF4
|00AB46| dw $8D84, $0D84, $0976, $8D85
|00AB4E| dw $0D85, $0977, $0D86, $0D96
|00AB56| dw $0977, $4D86, $4D96, $4977
|00AB5E| dw $CD85, $4D85, $4977, $CD84
|00AB66| dw $4D84, $4976

;---------------------------------------------------------------------------------------------------

^.obj1018
|00AB6A| dw $0978, $0979, $4978, $4979

;---------------------------------------------------------------------------------------------------

^.obj1020
|00AB72| dw $0D92, $0DAA, $0D92, $0DAA

;---------------------------------------------------------------------------------------------------

^.obj1028
|00AB7A| dw $0942, $0982, $0992, $0943
|00AB82| dw $0983, $0993, $4943, $4983
|00AB8A| dw $4993, $4942, $4982, $4992

;---------------------------------------------------------------------------------------------------

^.obj1040
|00AB92| dw $0CEE, $18D8, $0CEE, $0CFE
|00AB9A| dw $18C8, $18D9, $58D9, $0CFF
|00ABA2| dw $18C9, $0CFE, $0CEE, $18D9
|00ABAA| dw $0CEF, $58D9, $58D8, $0CFF

;---------------------------------------------------------------------------------------------------

^.obj1060
|00ABB2| dw $1197, $1198, $1197, $1198
|00ABBA| dw $1187, $1188, $1187, $1188

;---------------------------------------------------------------------------------------------------

^.obj1070
|00ABC2| dw $1D76, $1D77, $5D76, $5D77

;---------------------------------------------------------------------------------------------------

^.obj1078
|00ABCA| dw $9D77, $9D76, $DD77, $DD76

;---------------------------------------------------------------------------------------------------

^.obj1080
|00ABD2| dw $5D79, $DD79, $5D78, $DD78

;---------------------------------------------------------------------------------------------------

^.obj1088
|00ABDA| dw $084C, $085D, $086D, $087D
|00ABE2| dw $084F, $085E, $086E, $087E
|00ABEA| dw $484F, $485E, $486E, $487E
|00ABF2| dw $484C, $485D, $486D, $487D

;---------------------------------------------------------------------------------------------------

^.obj10A8
|00ABFA| dw $0864, $0866, $0866, $09F8
|00AC02| dw $085F, $086F, $087F, $09F9
|00AC0A| dw $485F, $486F, $487F, $49F9
|00AC12| dw $4864, $4866, $4866, $49F8

;---------------------------------------------------------------------------------------------------

^.obj10C8
|00AC1A| dw $084D, $085D, $086D, $087D
|00AC22| dw $084E, $085E, $086E, $087E
|00AC2A| dw $484E, $485E, $486E, $487E
|00AC32| dw $484D, $485D, $486D, $487D

;---------------------------------------------------------------------------------------------------

^.obj10E8
|00AC3A| dw $887D, $886D, $885D, $884D
|00AC42| dw $887E, $886E, $885E, $884E
|00AC4A| dw $C87E, $C86E, $C85E, $C84E
|00AC52| dw $C87D, $C86D, $C85D, $C84D

;---------------------------------------------------------------------------------------------------

^.obj1108
|00AC5A| dw $0982, $0983, $4983, $4982
|00AC62| dw $0992, $0993, $4993, $4992
|00AC6A| dw $08C9, $08F4, $48F4, $48C9
|00AC72| dw $08CA, $08F5, $48F5, $48CA
|00AC7A| dw $0841, $0845, $8845, $8841
|00AC82| dw $0842, $0855, $8845, $8842
|00AC8A| dw $4842, $4855, $C855, $C842
|00AC92| dw $4841, $4845, $C845, $C841

;---------------------------------------------------------------------------------------------------

^.obj1148
|00AC9A| dw $28B8, $2808, $0818, $289D
|00ACA2| dw $082E, $083E, $689D, $082F
|00ACAA| dw $083F, $68B8, $6808, $4818

;---------------------------------------------------------------------------------------------------

^.obj1160
|00ACB2| dw $28B8, $2808, $0818, $28B9
|00ACBA| dw $09EF, $0819, $68B9, $09EF
|00ACC2| dw $081A, $68B8, $6808, $4818

;---------------------------------------------------------------------------------------------------

^.obj1178
|00ACCA| dw $28B5, $2808, $080D, $28B7
|00ACD2| dw $082E, $083E, $68B7, $082F
|00ACDA| dw $083F, $68B5, $6808, $480D

;---------------------------------------------------------------------------------------------------

^.obj1190
|00ACE2| dw $28B5, $2808, $080D, $28B6
|00ACEA| dw $09EF, $0819, $68B6, $09EF
|00ACF2| dw $081A, $68B5, $6808, $480D

;---------------------------------------------------------------------------------------------------

^.obj11A8
|00ACFA| dw $28B8, $0808, $0818, $4CAC
|00AD02| dw $289D, $0807, $0817, $0CAC
|00AD0A| dw $689D, $4807, $4817, $4CAC
|00AD12| dw $68B8, $4808, $4818, $0CAC

;---------------------------------------------------------------------------------------------------

^.obj11C8
|00AD1A| dw $28B8, $2808, $0818, $4CAC
|00AD22| dw $28B9, $09EF, $0816, $0CAC
|00AD2A| dw $68B9, $09EF, $4816, $4CAC
|00AD32| dw $68B8, $6808, $4818, $0CAC

;---------------------------------------------------------------------------------------------------

^.obj11E8
|00AD3A| dw $8CAC, $8818, $8808, $A8B8
|00AD42| dw $CCAC, $8817, $8807, $A89D
|00AD4A| dw $8CAC, $C817, $C807, $E89D
|00AD52| dw $CCAC, $C818, $C808, $E8B8

;---------------------------------------------------------------------------------------------------

^.obj1208
|00AD5A| dw $8CAC, $880D, $8808, $A8B8
|00AD62| dw $CCAC, $8816, $89EF, $A8B9
|00AD6A| dw $8CAC, $C816, $C9EF, $E8B9
|00AD72| dw $CCAC, $C80D, $C808, $E8B8

;---------------------------------------------------------------------------------------------------

^.obj1228
|00AD7A| dw $28B5, $0808, $080D, $50AC
|00AD82| dw $28B7, $0807, $0817, $10AC
|00AD8A| dw $68B7, $4807, $4817, $50AC
|00AD92| dw $68B5, $4808, $480D, $10AC

;---------------------------------------------------------------------------------------------------

^.obj1248
|00AD9A| dw $28B5, $0818, $080D, $50AC
|00ADA2| dw $28B6, $09EF, $0816, $10AC
|00ADAA| dw $68B6, $09EF, $4816, $50AC
|00ADB2| dw $68B7, $4810, $480D, $10AC

;---------------------------------------------------------------------------------------------------

^.obj1268
|00ADBA| dw $90AC, $880D, $8808, $A8B5
|00ADC2| dw $D0AC, $8817, $8807, $A8B7
|00ADCA| dw $90AC, $C817, $C807, $E8B7
|00ADD2| dw $D0AC, $C80D, $C808, $E8B5

;---------------------------------------------------------------------------------------------------

^.obj1288
|00ADDA| dw $90AC, $880D, $8808, $A8B5
|00ADE2| dw $D0AC, $8816, $89EF, $A8B6
|00ADEA| dw $90AC, $C816, $C9EF, $E8B6
|00ADF2| dw $D0AC, $C80D, $C808, $E8B5

;---------------------------------------------------------------------------------------------------

^.obj12A8
|00ADFA| dw $0984, $09A7, $0843, $0853
|00AE02| dw $0984, $09A4, $09A8, $0854
|00AE0A| dw $0984, $0994, $09A4, $09A8
|00AE12| dw $0985, $0995, $09A5, $09A9
|00AE1A| dw $0986, $0996, $09A6, $099C
|00AE22| dw $4986, $4996, $49A6, $499C
|00AE2A| dw $4985, $4995, $49A5, $49A9
|00AE32| dw $4984, $4994, $49A4, $49A8
|00AE3A| dw $4984, $49A4, $49A8, $4854
|00AE42| dw $4984, $49A7, $4843, $4853

;---------------------------------------------------------------------------------------------------
; from FloodGateTileOffsets
|00AE4A| dw $0984, $09A7, $0843, $0853
|00AE52| dw $0984, $0994, $09A8, $0854
|00AE5A| dw $0985, $0995, $09A5, $09A8
|00AE62| dw $0986, $0996, $09A6, $099C
|00AE6A| dw $18CB, $18DB, $18CB, $18DB
|00AE72| dw $18CA, $18DA, $18CA, $18DA
|00AE7A| dw $4986, $4996, $49A6, $499C
|00AE82| dw $4985, $4995, $49A5, $49A8
|00AE8A| dw $4984, $4994, $49A8, $4854
|00AE92| dw $4984, $49A7, $4843, $4853

;---------------------------------------------------------------------------------------------------

|00AE9A| dw $0984, $09A7, $0843, $0853
|00AEA2| dw $0985, $0995, $09A8, $0854
|00AEAA| dw $0986, $0996, $09A6, $09A8
|00AEB2| dw $18CA, $18DA, $18CA, $18DA
|00AEBA| dw $18CB, $18DB, $18CB, $18DB
|00AEC2| dw $18CA, $18DA, $18CA, $18DA
|00AECA| dw $18CB, $18DB, $18CB, $18DB
|00AED2| dw $4986, $4996, $49A6, $49A8
|00AEDA| dw $4985, $4995, $49A8, $4854
|00AEE2| dw $4984, $49A7, $4843, $4853

;---------------------------------------------------------------------------------------------------

|00AEEA| dw $0985, $09A7, $0843, $0853
|00AEF2| dw $0986, $0996, $09A8, $0854
|00AEFA| dw $0871, $0871, $098B, $099B
|00AF02| dw $18CA, $18DA, $18CA, $18DA
|00AF0A| dw $18CB, $18DB, $18CB, $18DB
|00AF12| dw $18CA, $18DA, $18CA, $18DA
|00AF1A| dw $18CB, $18DB, $18CB, $18DB
|00AF22| dw $4871, $4871, $498B, $499B
|00AF2A| dw $4986, $4996, $49A8, $4854
|00AF32| dw $4985, $49A7, $4843, $4853

;---------------------------------------------------------------------------------------------------

^.obj13E8
|00AF3A| dw $0986, $09A7, $0843, $0853
|00AF42| dw $0871, $098B, $099B, $0854
|00AF4A| dw $0871, $0871, $098B, $099B
|00AF52| dw $18CA, $18DA, $18CA, $18DA
|00AF5A| dw $18CB, $18DB, $18CB, $18DB
|00AF62| dw $18CA, $18DA, $18CA, $18DA
|00AF6A| dw $18CB, $18DB, $18CB, $18DB
|00AF72| dw $4871, $4871, $498B, $499B
|00AF7A| dw $4871, $498B, $499B, $4854
|00AF82| dw $4986, $49A7, $4843, $4853

;---------------------------------------------------------------------------------------------------

^.obj1438
|00AF8A| dw $18CA, $18CB, $18CA, $18CB
|00AF92| dw $18DA, $0974, $4974, $18DB
|00AF9A| dw $18CA, $8974, $C974, $18CB
|00AFA2| dw $18DA, $18DB, $18DA, $18DB

;---------------------------------------------------------------------------------------------------

^.obj1458
|00AFAA| dw $1D48, $1D58, $1568, $1542
|00AFB2| dw $1562, $1552, $1D49, $1D59
|00AFBA| dw $1D69, $1D43, $1D63, $1D53
|00AFC2| dw $1D60, $1D70, $1D78, $1D61
|00AFCA| dw $1D71, $1D79, $5D61, $5D71
|00AFD2| dw $5D79, $5D60, $5D70, $5D78

;---------------------------------------------------------------------------------------------------

^.obj1488
|00AFDA| dw $298D, $298E, $299E, $298F
|00AFE2| dw $299F, $299D

;---------------------------------------------------------------------------------------------------

^.obj1494
|00AFE6| dw $09A2, $09A3, $49A2, $49A3

;---------------------------------------------------------------------------------------------------

^.obj149C
|00AFEE| dw $19E1, $19F1, $59E1, $59F1

;---------------------------------------------------------------------------------------------------

^.obj14A4
|00AFF6| dw $19E2, $19F2, $59E2, $59F2

;---------------------------------------------------------------------------------------------------

^.obj14AC
|00AFFE| dw $1920, $1930, $1926, $1921
|00B006| dw $1931, $1927, $5921, $5931
|00B00E| dw $5927, $5920, $5930, $5926

;---------------------------------------------------------------------------------------------------

^.obj14C4
|00B016| dw $1906, $1916, $1926, $1907
|00B01E| dw $1917, $1927, $5907, $5917
|00B026| dw $5927, $5906, $5916, $5926

;---------------------------------------------------------------------------------------------------

^.obj14DC
|00B02E| dw $2980, $0990, $09A0, $2981
|00B036| dw $0991, $09A1, $2981, $0991
|00B03E| dw $09A1, $6981, $4991, $49A1
|00B046| dw $6981, $4991, $49A1, $6980
|00B04E| dw $4990, $49A1
; this 49A1 is wrong ^^^^ it should be 49A0
 
;---------------------------------------------------------------------------------------------------

^.obj1500
|00B052| dw $89A0, $8990, $A980, $89A1
|00B05A| dw $8991, $A981, $89A1, $8991
|00B062| dw $A981, $C9A1, $C991, $E981
|00B06A| dw $C9A1, $C991, $E981, $C9A0
|00B072| dw $C990, $E980

;---------------------------------------------------------------------------------------------------

^.obj1524
|00B076| dw $2982, $0983, $09A2, $2992
|00B07E| dw $0993, $09A3, $2992, $0993
|00B086| dw $09A3, $A992, $8993, $89A3
|00B08E| dw $A992, $8993, $89A3, $A982
|00B096| dw $8983, $89A2

;---------------------------------------------------------------------------------------------------

^.obj1548
|00B09A| dw $49A2, $4983, $6982, $49A3
|00B0A2| dw $4993, $6992, $49A3, $4993
|00B0AA| dw $6992, $C9A3, $C993, $E992
|00B0B2| dw $C9A3, $C993, $E992, $C9A2
|00B0BA| dw $C983, $E982

;---------------------------------------------------------------------------------------------------

^.obj156C
|00B0BE| dw $2984, $0990, $09A0, $2994
|00B0C6| dw $0991, $09A1, $2994, $0991
|00B0CE| dw $09A1, $6994, $4991, $49A1
|00B0D6| dw $6994, $4991, $49A1, $6984
|00B0DE| dw $4990, $49A0

;---------------------------------------------------------------------------------------------------

^.obj1590
|00B0E2| dw $89A0, $8990, $A984, $89A1
|00B0EA| dw $8991, $A994, $89A1, $8991
|00B0F2| dw $A994, $C9A1, $C991, $E994
|00B0FA| dw $C9A1, $C991, $E994, $C9A0
|00B102| dw $C990, $E984

;---------------------------------------------------------------------------------------------------

^.obj15B4
|00B106| dw $288A, $288B, $288B, $0809
|00B10E| dw $09EF, $09EF, $080A, $0879
|00B116| dw $0879, $288A, $A88B, $A88B
|00B11E| dw $09EF, $89EF, $8809, $0879
|00B126| dw $8879, $880A

;---------------------------------------------------------------------------------------------------

^.obj15D8
|00B12A| dw $480A, $4879, $4879, $4809
|00B132| dw $49EF, $49EF, $688A, $688B
|00B13A| dw $688B, $4879, $C879, $C80A
|00B142| dw $49EF, $C9EF, $C809, $688B
|00B14A| dw $E88B, $E88A

;---------------------------------------------------------------------------------------------------

^.obj15FC
|00B14E| dw $880D, $8808, $A82C, $8878
|00B156| dw $09EF, $A82D, $C878, $09EF
|00B15E| dw $E82D, $C80D, $C808, $E82C

;---------------------------------------------------------------------------------------------------

^.obj1614
|00B166| dw $0980, $0981, $4981, $4980
|00B16E| dw $0990, $0991, $4991, $4990
|00B176| dw $09A0, $09A1, $49A1, $49A0

;---------------------------------------------------------------------------------------------------

^.obj162C
|00B17E| dw $0980, $0981, $4981, $4980
|00B186| dw $0990, $0991, $4991, $4990
|00B18E| dw $09A0, $1DB2, $1DB2, $49A0
|00B196| dw $1DB3, $1DB3, $1DB3, $1DB3
|00B19E| dw $1DB5, $1DB5, $1DB5, $1DB5

;---------------------------------------------------------------------------------------------------

^.obj1654
|00B1A6| dw $2980, $2981, $6981, $6980
|00B1AE| dw $2990, $2991, $6991, $6990

|00B1B6| dw $29A0, $3DB2, $3DB2, $69A0
|00B1BE| dw $3DB3, $3DB3, $3DB3, $3DB3
|00B1C6| dw $3DB3, $3DB3, $3DB3, $3DB3
|00B1CE| dw $1DB3, $1DB3, $1DB3, $1DB3
|00B1D6| dw $1DB5, $1DB5, $1DB5, $1DB5

;---------------------------------------------------------------------------------------------------

^.obj168C
|00B1DE| dw $09A0, $1DB2, $5DB2, $49A0
|00B1E6| dw $1DB3, $1DB3, $1DB3, $1DB3
|00B1EE| dw $1DB3, $1DB3, $1DB3, $1DB3
|00B1F6| dw $1DB5, $1DB5, $1DB5, $1DB5
|00B1FE| dw $18CA, $18CB, $18CA, $18CB

;---------------------------------------------------------------------------------------------------

^.obj16B4
|00B206| dw $09A0, $1DB2, $5DB2, $49A0
|00B20E| dw $1DB3, $1DB3, $1DB3, $1DB3
|00B216| dw $1DB5, $1DB5, $1DB5, $1DB5
|00B21E| dw $0870, $0870, $0870, $0870
|00B226| dw $18CA, $18CB, $18CA, $18CB

;---------------------------------------------------------------------------------------------------

^.obj16DC
|00B22E| dw $01EC, $853E, $853F, $853D
|00B236| dw $853D, $853D, $C53D, $C53D
|00B23E| dw $C53D, $C53F, $C53E, $01EC
|00B246| dw $052A, $853D, $853D, $853D
|00B24E| dw $853D, $853D, $C53D, $C53D
|00B256| dw $C53D, $C53D, $C53D, $452A
|00B25E| dw $05E8, $853D, $853D, $852E
|00B266| dw $852F, $852D, $C52D, $C52F
|00B26E| dw $C52E, $C53D, $C53D, $45E8
|00B276| dw $05E7, $853D, $052B, $852D
|00B27E| dw $852D, $852D, $C52D, $C52D
|00B286| dw $C52D, $452B, $C53D, $45E7
|00B28E| dw $05E7, $853D, $053B, $852D
|00B296| dw $852D, $852D, $C52D, $C52D
|00B29E| dw $C52D, $453B, $C53D, $45E7
|00B2A6| dw $85E8, $853D, $853B, $852D
|00B2AE| dw $852D, $852D, $C52D, $C52D
|00B2B6| dw $C52D, $C53B, $C53D, $C5E8
|00B2BE| dw $852A, $853D, $852B, $852D
|00B2C6| dw $852D, $852D, $C52D, $C52D
|00B2CE| dw $C52D, $C52B, $C53D, $C52A
|00B2D6| dw $01EC, $853A, $853D, $853B
|00B2DE| dw $852D, $852D, $C52D, $C52D
|00B2E6| dw $C53B, $C53D, $C53A, $01EC
|00B2EE| dw $01EC, $852A, $853D, $852B
|00B2F6| dw $852D, $852D, $C52D, $C52D
|00B2FE| dw $C52B, $C53D, $C52A, $01EC
|00B306| dw $01EC, $01EC, $853A, $853D
|00B30E| dw $052E, $052F, $452F, $452E
|00B316| dw $C53D, $C53A, $01EC, $01EC
|00B31E| dw $01EC, $01EC, $852A, $853D
|00B326| dw $853D, $853D, $C53D, $C53D
|00B32E| dw $C53D, $C52A, $01EC, $01EC
|00B336| dw $01EC, $01EC, $01EC, $053E
|00B33E| dw $053F, $853D, $C53D, $453F
|00B346| dw $453E

;---------------------------------------------------------------------------------------------------

^.obj17F6
|00B348| dw $01EC, $01EC, $01EC, $853E
|00B350| dw $853F, $053D, $453D, $C53F
|00B358| dw $C53E, $01EC, $01EC, $01EC
|00B360| dw $01EC, $01EC, $052A, $053D
|00B368| dw $053D, $053D, $453D, $453D
|00B370| dw $453D, $452A, $01EC, $01EC
|00B378| dw $01EC, $01EC, $053A, $053D
|00B380| dw $852E, $852F, $C52F, $C52E
|00B388| dw $453D, $453A, $01EC, $01EC
|00B390| dw $01EC, $052A, $053D, $052B
|00B398| dw $052D, $052D, $452D, $452D
|00B3A0| dw $452B, $453D, $452A, $01EC
|00B3A8| dw $01EC, $053A, $053D, $053B
|00B3B0| dw $052D, $052D, $452D, $452D
|00B3B8| dw $453B, $453D, $453A, $01EC
|00B3C0| dw $052A, $053D, $052B, $052D
|00B3C8| dw $052D, $052D, $452D, $452D
|00B3D0| dw $452D, $452B, $453D, $452A
|00B3D8| dw $05E8, $053D, $053B, $052D
|00B3E0| dw $052D, $052D, $452D, $452D
|00B3E8| dw $452D, $453B, $453D, $45E8
|00B3F0| dw $05E7, $053D, $853B, $052D
|00B3F8| dw $052D, $052D, $452D, $452D
|00B400| dw $452D, $C53B, $453D, $45E7
|00B408| dw $05E7, $053D, $852B, $052D
|00B410| dw $052D, $052D, $452D, $452D
|00B418| dw $452D, $C52B, $453D, $45E7
|00B420| dw $85E8, $053D, $053D, $052E
|00B428| dw $052F, $052D, $452D, $452F
|00B430| dw $452E, $453D, $453D, $C5E8
|00B438| dw $852A, $053D, $053D, $053D
|00B440| dw $053D, $053D, $453D, $453D
|00B448| dw $453D, $453D, $453D, $C52A
|00B450| dw $01EC, $053E, $053F, $053D
|00B458| dw $053D, $053D, $453D, $453D
|00B460| dw $453D, $453F, $453E

;---------------------------------------------------------------------------------------------------

^.obj1914
|00B466| dw $01EC, $853E, $853F, $053D
|00B46E| dw $053D, $C53F, $C53E, $01EC
|00B476| dw $01EC, $01EC, $01EC, $01EC
|00B47E| dw $052A, $053D, $053D, $053D
|00B486| dw $053D, $053D, $053D, $C53F
|00B48E| dw $C53E, $01EC, $01EC, $01EC
|00B496| dw $053A, $053D, $053D, $852E
|00B49E| dw $852F, $C52F, $C52E, $053D
|00B4A6| dw $053D, $C53F, $C53E, $01EC
|00B4AE| dw $053D, $053D, $052B, $052D
|00B4B6| dw $052D, $052D, $852D, $C52F
|00B4BE| dw $C52E, $053D, $053D, $452A
|00B4C6| dw $053D, $053D, $053B, $052D
|00B4CE| dw $052D, $052D, $052D, $052D
|00B4D6| dw $052D, $452B, $053D, $453A
|00B4DE| dw $053D, $053D, $052D, $052D
|00B4E6| dw $052D, $052D, $052D, $052D
|00B4EE| dw $052D, $453B, $053D, $053D
|00B4F6| dw $853D, $853D, $852D, $852D
|00B4FE| dw $852D, $852D, $852D, $852D
|00B506| dw $852D, $C53B, $853D, $853D
|00B50E| dw $853D, $853D, $853B, $852D
|00B516| dw $852D, $852D, $852D, $852D
|00B51E| dw $852D, $C52B, $853D, $C53A
|00B526| dw $853D, $853D, $852B, $852D
|00B52E| dw $852D, $852D, $852D, $452F
|00B536| dw $452E, $853D, $853D, $C52A
|00B53E| dw $853A, $853D, $853D, $052E
|00B546| dw $052F, $452F, $452E, $853D
|00B54E| dw $853D, $453F, $453E, $01EC
|00B556| dw $852A, $853D, $853D, $853D
|00B55E| dw $853D, $853D, $853D, $453F
|00B566| dw $453E, $01EC, $01EC, $01EC
|00B56E| dw $01EC, $053E, $053F, $853D
|00B576| dw $853D, $453F, $453E

;---------------------------------------------------------------------------------------------------

^.obj1A2A
|00B57C| dw $01EC, $01EC, $01EC, $01EC
|00B584| dw $01EC, $853E, $853F, $453D
|00B58C| dw $453D, $C53F, $C53E, $01EC
|00B594| dw $01EC, $01EC, $01EC, $853E
|00B59C| dw $853F, $453D, $453D, $453D
|00B5A4| dw $453D, $453D, $453D, $452A
|00B5AC| dw $01EC, $853E, $853F, $453D
|00B5B4| dw $453D, $852E, $852F, $C52F
|00B5BC| dw $C52E, $453D, $453D, $453A
|00B5C4| dw $052A, $453D, $453D, $852E
|00B5CC| dw $852F, $452D, $452D, $452D
|00B5D4| dw $452D, $452B, $453D, $453D
|00B5DC| dw $053A, $453D, $052B, $452D
|00B5E4| dw $452D, $452D, $452D, $452D
|00B5EC| dw $452D, $453B, $453D, $453D
|00B5F4| dw $453D, $453D, $053B, $452D
|00B5FC| dw $452D, $452D, $452D, $452D
|00B604| dw $452D, $452D, $453D, $453D
|00B60C| dw $C53D, $C53D, $853B, $C52D
|00B614| dw $C52D, $C52D, $C52D, $C52D
|00B61C| dw $C52D, $C52D, $C53D, $C53D
|00B624| dw $853A, $C53D, $852B, $C52D
|00B62C| dw $C52D, $C52D, $C52D, $C52D
|00B634| dw $C52D, $C53B, $C53D, $C53D
|00B63C| dw $852A, $C53D, $C53D, $052E
|00B644| dw $052F, $C52D, $C52D, $C52D
|00B64C| dw $C52D, $C52B, $C53D, $C53D
|00B654| dw $01EC, $053E, $053F, $C53D
|00B65C| dw $C53D, $052E, $052F, $452F
|00B664| dw $452E, $C53D, $C53D, $C53A
|00B66C| dw $01EC, $01EC, $01EC, $053E
|00B674| dw $053F, $C53D, $C53D, $C53D
|00B67C| dw $C53D, $C53D, $C53D, $C52A
|00B684| dw $01EC, $01EC, $01EC, $01EC
|00B68C| dw $01EC, $053E, $053F, $C53D
|00B694| dw $C53D, $453F, $453E, $01EC

;---------------------------------------------------------------------------------------------------

^.obj1B4A
|00B69C| dw $099D, $098E, $098E, $098E
|00B6A4| dw $098E, $098E, $098E, $098E
|00B6AC| dw $098E, $098E, $098E, $098E
|00B6B4| dw $098E, $099E, $099F, $18C6
|00B6BC| dw $18C6, $18C6, $18C6, $18C6
|00B6C4| dw $18C6, $18C6, $18C6, $18C6
|00B6CC| dw $18C6, $18C6, $18C6, $099F
|00B6D4| dw $099F, $18C6, $18C6, $18C6
|00B6DC| dw $18C6, $118A, $119A, $118B
|00B6E4| dw $119B, $11A0, $18C6, $18C6
|00B6EC| dw $18C6, $099F, $099F, $18C6
|00B6F4| dw $18C6, $18C6, $18C6, $1183
|00B6FC| dw $1193, $1182, $1192, $11A1
|00B704| dw $18C6, $18C6, $498F, $499E
|00B70C| dw $099F, $18C6, $18D4, $98D4
|00B714| dw $18C6, $1189, $1187, $1197
|00B71C| dw $118C, $11A2, $18C6, $18C6
|00B724| dw $0972, $0972, $099F, $18D6
|00B72C| dw $18D5, $98D5, $98D6, $119C
|00B734| dw $1188, $1198, $118D, $11A3
|00B73C| dw $18C6, $18C6, $0972, $0972

;---------------------------------------------------------------------------------------------------

^.obj1BF2
|00B744| dw $0995, $1D99, $0994, $0CAC
|00B74C| dw $0995, $1D99, $0994, $0CAC
|00B754| dw $0980, $0990, $0986, $09A6
|00B75C| dw $4980, $4990, $4986, $49A6
|00B764| dw $0995, $1D99, $0994, $0CAC
|00B76C| dw $0995, $1D99, $0994, $0CAC

^.obj1C22
|00B774| dw $1DA7, $1DA8, $1DA4, $08F5
|00B77C| dw $0CD8

^.obj1C2C
|00B77E| dw $0981, $0991, $0985, $09A5
|00B786| dw $8981, $8991, $8985, $89A5
|00B78E| dw $0996, $1D99, $0984, $0CAD
|00B796| dw $0996, $1D99, $0984, $0CAD
|00B79E| dw $0996, $1D99, $0984, $0CAD
|00B7A6| dw $0996, $1D99, $0984, $0CAD

^.obj1C5C
|00B7AE| dw $98D9, $D8C7, $98C7, $D8C7
|00B7B6| dw $98C8, $14DB, $14CA, $58C8
|00B7BE| dw $18C7, $58C7, $18C7, $58D9

^.obj1C74
|00B7C6| dw $58D9, $14CA, $D8C7, $98C8
|00B7CE| dw $58C7, $18C7, $D8C7, $98C7
|00B7D6| dw $58C8, $18C7, $14DB, $98D9

^.obj1C8C
|00B7DE| dw $0CD8, $14CB, $D8C8, $58C8
|00B7E6| dw $14DB, $14DA, $18D9, $98C7
|00B7EE| dw $18C7, $98D9, $D8C8, $58C7
|00B7F6| dw $D8C7, $58C7, $D8D9, $98C8
|00B7FE| dw $18C7, $98C7, $18C8, $14DA
|00B806| dw $14DB, $58D9, $D8D9, $14CB
|00B80E| dw $14DB

;---------------------------------------------------------------------------------------------------

^.obj1CBE
|00B810| dw $95A6, $958D, $B597, $95A7
|00B818| dw $959C, $B598, $D5A7, $D59C
|00B820| dw $F598, $D5A6, $D58D, $F597
|00B828| dw $B587, $B595, $95A0, $B588
|00B830| dw $B596, $9586, $F588, $F596
|00B838| dw $D586, $F587, $F595, $D5A0

;---------------------------------------------------------------------------------------------------

^.obj1CEE
|00B840| dw $15A0, $3595, $3587, $3586
|00B848| dw $3596, $3588, $7586, $7596
|00B850| dw $7588, $55A0, $7595, $7587
|00B858| dw $3597, $158D, $15A6, $3598
|00B860| dw $159C, $15A7, $7598, $559C
|00B868| dw $55A7, $7597, $558D, $55A6

;---------------------------------------------------------------------------------------------------

^.obj1D1E
|00B870| dw $55A4, $55A5, $D5A5, $D5A4
|00B878| dw $558C, $559C, $D59C, $D58C
|00B880| dw $758B, $759B, $F59B, $F58B
|00B888| dw $758A, $759A, $F59A, $F58A
|00B890| dw $7589, $7599, $F599, $F589
|00B898| dw $55A1, $7585, $F585, $D5A1

;---------------------------------------------------------------------------------------------------

^.obj1D4E
|00B8A0| dw $15A1, $3585, $B585, $95A1
|00B8A8| dw $3589, $3599, $B599, $B589
|00B8B0| dw $358A, $359A, $B59A, $B58A
|00B8B8| dw $358B, $359B, $B59B, $B58B
|00B8C0| dw $158C, $159C, $959C, $958C
|00B8C8| dw $15A4, $15A5, $95A5, $95A4

;---------------------------------------------------------------------------------------------------

^.obj1D7E
|00B8D0| dw $1590, $1590, $5590, $5590

;---------------------------------------------------------------------------------------------------

^.obj1D86
|00B8D8| dw $1580, $9580, $1580, $9580

;---------------------------------------------------------------------------------------------------

^.obj1D8E
|00B8E0| dw $1581, $1590, $1580, $1591

;---------------------------------------------------------------------------------------------------

^.obj1D96
|00B8E8| dw $1590, $1592, $1582, $9580

;---------------------------------------------------------------------------------------------------

^.obj1D9E
|00B8F0| dw $1580, $1593, $1583, $5590

;---------------------------------------------------------------------------------------------------

^.obj1DA6
|00B8F8| dw $1584, $9580, $5590, $1594

;---------------------------------------------------------------------------------------------------

^.obj1DAE
|00B900| dw $15A3, $1590, $55A3, $5590

;---------------------------------------------------------------------------------------------------

^.obj1DB6
|00B908| dw $1590, $95A3, $5590, $D5A3

;---------------------------------------------------------------------------------------------------

^.obj1DBE
|00B910| dw $95A2, $15A2, $1580, $9580

;---------------------------------------------------------------------------------------------------

^.obj1DC6
|00B918| dw $1580, $9580, $D5A2, $55A2

;---------------------------------------------------------------------------------------------------

^.obj1DCE
|00B920| dw $159D, $959D, $559D, $D59D

;---------------------------------------------------------------------------------------------------

^.obj1DD6
|00B928| dw $19C4, $19C5

;---------------------------------------------------------------------------------------------------

^.obj1DDA
|00B92C| dw $0980, $0990, $0981, $0991

;---------------------------------------------------------------------------------------------------

^.obj1DE2
|00B934| dw $8990, $8980, $8991, $8981

;---------------------------------------------------------------------------------------------------

^.obj1DEA
|00B93C| dw $0D29, $0D39, $4D29, $4D39

;---------------------------------------------------------------------------------------------------

^.obj1DF2
|00B944| dw $19CD, $19CE, $59CD, $59CE

;---------------------------------------------------------------------------------------------------

^.obj1DFA
|00B94C| dw $01EC, $1585, $1586, $1587
|00B954| dw $1588, $1589, $1578, $5586
|00B95C| dw $5585, $01EC, $1594, $1595
|00B964| dw $1596, $1597, $1598, $1599
|00B96C| dw $1579, $5596, $5595, $5594
|00B974| dw $158A, $158B, $158C, $158D
|00B97C| dw $158E, $158F, $1572, $558C
|00B984| dw $558B, $558A, $159A, $159B
|00B98C| dw $159C, $159D, $159E, $159F
|00B994| dw $559D, $559C, $559B, $559A
|00B99C| dw $15AA, $15AB, $15AC, $15AD
|00B9A4| dw $15AE, $15AF, $55AD, $55AC
|00B9AC| dw $55AB, $55AA, $15A0, $15A1
|00B9B4| dw $15A2, $15A3, $15A4, $15A5
|00B9BC| dw $55A3, $55A2, $55A1, $55A0
|00B9C4| dw $15A7, $15A8, $154E, $156E
|00B9CC| dw $1576, $1577, $556E, $554E
|00B9D4| dw $55A8, $55A7, $01EC, $15A9
|00B9DC| dw $155E, $157E, $1574, $1575

; RoomDraw_SmithyFurnace?
|00B9E4| dw $557E, $555E, $55A9, $01EC

;---------------------------------------------------------------------------------------------------

^.obj1E9A
|00B9EC| dw $01EC, $31AA, $3161, $3162
|00B9F4| dw $3163, $7163, $7162, $7161
|00B9FC| dw $71AA, $01EC, $01EC, $3170
|00BA04| dw $3171, $3172, $317E, $717E
|00BA0C| dw $7172, $7171, $7170, $01EC
|00BA14| dw $3144, $3145, $3146, $3147
|00BA1C| dw $3148, $7148, $7147, $7146
|00BA24| dw $7145, $7144, $3154, $3155
|00BA2C| dw $3156, $3157, $3158, $7158
|00BA34| dw $7157, $7156, $7155, $7154
|00BA3C| dw $3164, $3165, $3166, $3167
|00BA44| dw $3168, $7168, $7167, $7166
|00BA4C| dw $7165, $7164, $3174, $3175
|00BA54| dw $3176, $3177, $3178, $7178
|00BA5C| dw $7177, $7176, $7175, $7174
|00BA64| dw $3149, $3159, $3169, $3179
|00BA6C| dw $31AF, $71AF, $7179, $7169
|00BA74| dw $7159, $7149, $31AA, $31AB
|00BA7C| dw $31AC, $31AD, $31AE, $71AE
|00BA84| dw $71AD, $71AC, $71AB, $71AA

;---------------------------------------------------------------------------------------------------

^.obj1F3A
|00BA8C| dw $0DCF, $8DCF, $4DCF, $CDCF

;---------------------------------------------------------------------------------------------------

^.obj1F42
|00BA94| dw $0D1F, $8D1F, $4D1F, $CD1F

;---------------------------------------------------------------------------------------------------

^.obj1F4A
|00BA9C| dw $0D01, $8D01, $4D01, $CD01

;---------------------------------------------------------------------------------------------------

^.obj1F52
|00BAA4| dw $19D0, $19D2, $19D1, $19D3

;---------------------------------------------------------------------------------------------------

^.obj1F5A
|00BAAC| dw $0DD4, $0DD6, $0DD5, $0DD7

;---------------------------------------------------------------------------------------------------

^.obj1F62
|00BAB4| dw $0993, $0D82, $0D84, $0890
|00BABC| dw $0D83, $0D85, $0890, $0D92
|00BAC4| dw $0D86, $0890, $4D92, $4D86
|00BACC| dw $0890, $0D92, $0D86, $0890
|00BAD4| dw $4D92, $4D86, $0890, $4D83
|00BADC| dw $4D85, $4993, $4D82, $4D84

;---------------------------------------------------------------------------------------------------

^.obj1F92
|00BAE4| dw $094A, $094B, $094B, $494B
|00BAEC| dw $494B, $494A, $094E, $0978
|00BAF4| dw $0979, $4979, $4978, $494E
|00BAFC| dw $094E, $094F, $1DB3, $5DB3
|00BB04| dw $494F, $494E, $094E, $094F
|00BB0C| dw $1DB4, $5DB4, $494F, $494E
|00BB14| dw $094E, $094F, $1DB4, $5DB4
|00BB1C| dw $494F, $494E, $094E, $094F
|00BB24| dw $9DB3, $DDB3, $494F, $494E
|00BB2C| dw $096A, $095E, $095F, $495F
|00BB34| dw $495E, $496A, $097A, $096E
|00BB3C| dw $096F, $496F, $496E, $497A

;---------------------------------------------------------------------------------------------------

^.obj1FF2
|00BB44| dw $11A0, $11A2, $1194, $11A1
|00BB4C| dw $11A3, $1195, $51A1, $51A3
|00BB54| dw $5195, $11A1, $11A3, $1195
|00BB5C| dw $51A1, $51A3, $5195, $51A0
|00BB64| dw $51A2, $5194

;---------------------------------------------------------------------------------------------------

^.obj2016
|00BB68| dw $0DAA, $0DAC, $0DAE, $0DAB
|00BB70| dw $0DAD, $0DAF, $4DAB, $4DAD
|00BB78| dw $4DAF, $4DAA, $4DAC, $4DAE

;---------------------------------------------------------------------------------------------------

^.obj202E
|00BB80| dw $0D51, $0D66, $1D64, $1D44
|00BB88| dw $1D54, $1D64, $1D54, $09EF
|00BB90| dw $0D55, $0D65, $156B, $157B
|00BB98| dw $158B, $1D40, $19B2, $157C
|00BBA0| dw $158C, $1D41, $156C, $157D
|00BBA8| dw $158C, $5D41, $14E4, $14E5
|00BBB0| dw $158D, $1D41

;---------------------------------------------------------------------------------------------------

^.obj2062
|00BBB4| dw $1540, $1550, $1576, $1541
|00BBBC| dw $1551, $1577, $5541, $5551
|00BBC4| dw $5577, $1541, $1551, $1577
|00BBCC| dw $5541, $5551, $5577, $5540
|00BBD4| dw $5550, $5576

;---------------------------------------------------------------------------------------------------

^.obj2086
|00BBD8| dw $1180, $1190, $1190, $1190
|00BBE0| dw $1191, $1186, $1196, $1181
|00BBE8| dw $5190, $5190, $5190, $5191
|00BBF0| dw $5186, $5196, $1182, $1192
|00BBF8| dw $1184, $1194, $11A4, $11A4
|00BC00| dw $11A4, $1183, $1193, $1185
|00BC08| dw $1195, $11A4, $11A4, $11A4
|00BC10| dw $5183, $5193, $5185, $5195
|00BC18| dw $51A4, $51A4, $51A4, $5182
|00BC20| dw $5192, $5184, $5194, $51A4
|00BC28| dw $51A4, $51A4, $5181, $1190
|00BC30| dw $1190, $1190, $1191, $1186
|00BC38| dw $1196, $5180, $5190, $5190
|00BC40| dw $5190, $5191, $5186, $5196

;---------------------------------------------------------------------------------------------------

^.obj20F6
|00BC48| dw $1593, $1580, $1580, $1580
|00BC50| dw $1580, $1580, $1580, $1580
|00BC58| dw $1580, $1580, $15A1, $1580
|00BC60| dw $1580, $1580, $1580, $1580
|00BC68| dw $1580, $1580, $1580, $1580
|00BC70| dw $1582, $15A3, $1580, $5583
|00BC78| dw $5593, $1580, $1580, $1580
|00BC80| dw $1582, $1592, $1580, $1583
|00BC88| dw $1596, $1580, $55A1, $D5A1
|00BC90| dw $1580, $1580, $1580, $1583
|00BC98| dw $1593, $1580, $1580, $55A1
|00BCA0| dw $1580, $5582, $5592, $1580
|00BCA8| dw $1580, $1580, $1580, $1580
|00BCB0| dw $1580, $1580, $55A0, $1580
|00BCB8| dw $1580, $1580, $15B4, $15B3
|00BCC0| dw $95B3, $95B4, $1580, $1580
|00BCC8| dw $1580, $5591, $1580, $1580
|00BCD0| dw $15B6, $15B5, $1581, $1581
|00BCD8| dw $95B5, $95B6, $1580, $1580
|00BCE0| dw $5590, $95A0, $15B7, $15B5
|00BCE8| dw $1581, $1581, $1581, $1581
|00BCF0| dw $95B5, $95B7, $1580, $55A1
|00BCF8| dw $95A1, $15B8, $1581, $1595
|00BD00| dw $15A5, $95A5, $9595, $9581
|00BD08| dw $95B8, $1580, $55A0, $D5A1
|00BD10| dw $15B9, $1585, $15A4, $15A4
|00BD18| dw $15A4, $15A4, $9585, $95B9
|00BD20| dw $1580, $5591, $D5A0, $15B2
|00BD28| dw $1586, $15A4, $15A4, $15A4
|00BD30| dw $15A4, $9586, $95B2, $1580
|00BD38| dw $5590, $1580, $55B2, $5586
|00BD40| dw $15A4, $15A4, $15A4, $15A4
|00BD48| dw $D586, $D5B2, $1580, $1590
|00BD50| dw $1580, $55B9, $5585, $15A4
|00BD58| dw $15A4, $15A4, $15A4, $D585
|00BD60| dw $D5B9, $1580, $1591, $1580
|00BD68| dw $55B8, $5581, $5595, $55A5
|00BD70| dw $D5A5, $D595, $D581, $D5B8
|00BD78| dw $1580, $15A0, $1580, $55B7
|00BD80| dw $55B5, $5581, $5581, $5581
|00BD88| dw $5581, $D5B5, $D5B7, $1582
|00BD90| dw $1596, $1580, $1580, $55B6
|00BD98| dw $55B5, $5581, $5581, $D5B5
|00BDA0| dw $D5B6, $1580, $1583, $1596
|00BDA8| dw $95A0, $1580, $1580, $55B4
|00BDB0| dw $55B3, $D5B3, $D5B4, $1580
|00BDB8| dw $1580, $1580, $1590, $95A1
|00BDC0| dw $1580, $1580, $1580, $1580
|00BDC8| dw $1580, $1580, $1580, $1580
|00BDD0| dw $1580, $1591, $9590, $1580
|00BDD8| dw $5583, $5593, $1580, $1582
|00BDE0| dw $1592, $1580, $1580, $1580
|00BDE8| dw $15A0, $9591, $1580, $55A1
|00BDF0| dw $D5A1, $1580, $1583, $1593
|00BDF8| dw $1580, $1580, $1580, $15A1
|00BE00| dw $95A0, $1580, $5582, $5592
|00BE08| dw $1580, $1580, $1580, $1580
|00BE10| dw $1580, $1580, $1590, $95A1
|00BE18| dw $1580, $1580, $1580, $1580
|00BE20| dw $1580, $1580, $1580, $1580
|00BE28| dw $1580, $1591

;---------------------------------------------------------------------------------------------------

^.obj22DA
|00BE2C| dw $0CEE, $D594, $1584, $15A3
|00BE34| dw $5594, $1594

;---------------------------------------------------------------------------------------------------

^.obj22E6
|00BE38| dw $0D09, $0D19, $4D09, $4D19

;---------------------------------------------------------------------------------------------------

^.obj22EE
|00BE40| dw $0D0A, $0D1A, $4D0A, $4D1A

;---------------------------------------------------------------------------------------------------

^.obj22F6
|00BE48| dw $0D4A, $0D5A, $0D6A, $0D7A
|00BE50| dw $0D4B, $0D5B, $0D6B, $0D7B
|00BE58| dw $4D4B, $4D5B, $4D6B, $4D7B
|00BE60| dw $4D4A, $4D5A, $4D6A, $4D7A

;---------------------------------------------------------------------------------------------------

^.obj2316
|00BE68| dw $0966, $0956, $1D48, $0967
|00BE70| dw $0957, $1DBE, $4967, $4957
|00BE78| dw $5DBE, $4966, $4956, $5D48

;---------------------------------------------------------------------------------------------------

^.obj232E
|00BE80| dw $9D48, $8956, $8966, $9DBE
|00BE88| dw $8957, $8967, $DDBE, $C957
|00BE90| dw $C967, $DD48, $C956, $C966

;---------------------------------------------------------------------------------------------------

^.obj2346
|00BE98| dw $0968, $0969, $8969, $8968
|00BEA0| dw $0958, $0959, $8959, $8958
|00BEA8| dw $1D49, $1DBF, $9DBF, $9D49

;---------------------------------------------------------------------------------------------------

^.obj235E
|00BEB0| dw $5D49, $5DBF, $DDBF, $DD49
|00BEB8| dw $4958, $4959, $C959, $C958
|00BEC0| dw $4968, $4969, $C969, $C968

;---------------------------------------------------------------------------------------------------

^.obj2376
|00BEC8| dw $113D, $113D, $113D, $113D
|00BED0| dw $113D, $113D, $113D, $113D
|00BED8| dw $113D, $113D, $113D, $113D
|00BEE0| dw $113D, $113D, $113D, $113D

^.obj2396
|00BEE8| dw $1164, $1164, $1164, $1174
|00BEF0| dw $1165, $1165, $1165, $1175
|00BEF8| dw $5165, $5165, $5165, $5175
|00BF00| dw $5164, $5164, $5164, $5174

;---------------------------------------------------------------------------------------------------

^.obj23B6
|00BF08| dw $1144, $1154, $1154, $1154
|00BF10| dw $1176, $112D, $112D, $112D
|00BF18| dw $1145, $1155, $1155, $1155
|00BF20| dw $1176, $112D, $112D, $112D
|00BF28| dw $5176, $512D, $512D, $512D
|00BF30| dw $5145, $5155, $5155, $5155
|00BF38| dw $5176, $512D, $512D, $512D
|00BF40| dw $5144, $5154, $5154, $5154
|00BF48| dw $1154, $1154, $1154, $9144
|00BF50| dw $112D, $112D, $112D, $9176
|00BF58| dw $1155, $1155, $1155, $9145
|00BF60| dw $112D, $112D, $112D, $9176
|00BF68| dw $512D, $512D, $512D, $D176
|00BF70| dw $5155, $5155, $5155, $D145
|00BF78| dw $512D, $512D, $512D, $D176
|00BF80| dw $5154, $5154, $5154, $D144

;---------------------------------------------------------------------------------------------------

^.obj2436
|00BF88| dw $09E5, $09F5, $0936, $09FA
|00BF90| dw $49E5, $09F7, $0937, $09FB
|00BF98| dw $0000, $0000, $0000, $0CAC
|00BFA0| dw $0000, $0000, $0000, $4CAC
|00BFA8| dw $0000, $0000, $0000, $0CAC
|00BFB0| dw $0000, $0000, $0000, $4CAC
|00BFB8| dw $09E5, $49F7, $4937, $49FB
|00BFC0| dw $49E5, $49F5, $4936, $49FA
|00BFC8| dw $1414, $9414, $1414, $9414
|00BFD0| dw $5414, $D414, $5414, $D414
|00BFD8| dw $1414, $14E9, $14F9, $9414
|00BFE0| dw $5414, $14EA, $14FA, $D414
|00BFE8| dw $1414, $54EA, $54FA, $9414
|00BFF0| dw $5414, $54E9, $54F9, $D414
|00BFF8| dw $1414, $9414, $1414, $9414
|00C000| dw $5414, $D414, $5414, $D414

;---------------------------------------------------------------------------------------------------

^.obj24B6
|00C008| dw $2984, $09AC, $0994, $2985
|00C010| dw $15AD, $1595, $2986, $15AE
|00C018| dw $1596, $2987, $09AF, $0997
|00C020| dw $6987, $49AF, $4997, $6986
|00C028| dw $55AE, $5596, $6985, $55AD
|00C030| dw $5595, $6984, $49AC, $4994

;---------------------------------------------------------------------------------------------------

^.obj24E6
|00C038| dw $0980, $0990, $09A0, $0981
|00C040| dw $0991, $09A1, $0982, $0992
|00C048| dw $11A2, $1183, $1193, $11A3
|00C050| dw $5183, $5193, $51A3, $4982
|00C058| dw $4992, $51A2, $4981, $4991
|00C060| dw $49A1, $4980, $4990, $49A0

;---------------------------------------------------------------------------------------------------

^.obj2516
|00C068| dw $490C, $C90C, $099A, $09AA
|00C070| dw $090C, $098B, $099B, $09AB
|00C078| dw $490C, $498B, $499B, $49AB
|00C080| dw $090C, $890C, $499A, $49AA
|00C088| dw $490C, $09A8, $09A6, $C90C
|00C090| dw $098A, $09A9, $09A7, $890C
|00C098| dw $498A, $49A9, $49A7, $C90C
|00C0A0| dw $090C, $49A8, $49A6, $890C

;---------------------------------------------------------------------------------------------------
; Triforce door
;---------------------------------------------------------------------------------------------------
^.obj2556
|00C0A8| dw $09AC, $0994, $1D8C, $01EC
|00C0B0| dw $15AD, $1595, $1D9C, $01EC
|00C0B8| dw $15AE, $1596, $1D9C, $01EC
|00C0C0| dw $09AF, $0997, $1D9C, $01EC
|00C0C8| dw $49AF, $4997, $1D9C, $01EC
|00C0D0| dw $55AE, $5596, $1D9C, $01EC
|00C0D8| dw $55AD, $5595, $1D9C, $01EC
|00C0E0| dw $49AC, $4994, $5D8C, $01EC

^.obj2596
|00C0E8| dw $09AC, $0994, $1D8C, $1D8C
|00C0F0| dw $15AD, $1595, $1D9C, $1D9C
|00C0F8| dw $15AE, $1596, $1D9C, $1D9C
|00C100| dw $1D88, $1D98, $1D9C, $1D9C
|00C108| dw $1D88, $1D98, $1D9C, $1D9C
|00C110| dw $55AE, $5596, $1D9C, $1D9C
|00C118| dw $55AD, $5595, $1D9C, $1D9C
|00C120| dw $49AC, $4994, $5D8C, $5D8C

^.obj25D6
|00C128| dw $09AC, $0994, $1D8C, $1D8C
|00C130| dw $15AD, $1595, $1D9C, $1D9C
|00C138| dw $1D88, $1D98, $1D9C, $1D9C
|00C140| dw $1D88, $1D98, $1D89, $1D99
|00C148| dw $1D88, $1D98, $1D89, $1D99
|00C150| dw $1D88, $1D98, $1D9C, $1D9C
|00C158| dw $55AD, $5595, $1D9C, $1D9C
|00C160| dw $49AC, $4994, $5D8C, $5D8C

^.obj2616
|00C168| dw $09AC, $0994, $1D8C, $1D8C
|00C170| dw $1D8D, $1D98, $1D89, $1D99
|00C178| dw $1D88, $1D98, $1D89, $1D99
|00C180| dw $1D88, $1D98, $1D89, $1D99
|00C188| dw $1D88, $1D98, $1D89, $1D99
|00C190| dw $1D88, $1D98, $1D89, $1D99
|00C198| dw $5D8D, $1D98, $1D89, $1D99
|00C1A0| dw $49AC, $4994, $5D8C, $5D8C

;---------------------------------------------------------------------------------------------------
; from RoomDraw_NormalRangedDoors_South
;---------------------------------------------------------------------------------------------------
^.obj2656
|00C1A8| dw $08D0, $08D0, $08D0, $08D0
|00C1B0| dw $08D0, $48D0, $48D0, $48D0
|00C1B8| dw $48D0, $48D0, $08D0, $14C0
|00C1C0| dw $14C0, $14C0, $14C0, $54C0
|00C1C8| dw $54C0, $54C0, $54C0, $48D0
|00C1D0| dw $08D0, $14C0, $14C0, $14C0
|00C1D8| dw $14D1, $54D1, $54C0, $54C0
|00C1E0| dw $54C0, $48D0, $08D0, $14C0
|00C1E8| dw $14C0, $14C2, $14C3, $54C3
|00C1F0| dw $54C2, $54C0, $54C0, $48D0
|00C1F8| dw $097C, $097D, $097F, $14C4
|00C200| dw $14C5, $54C5, $54C4, $497F
|00C208| dw $497D, $497C, $096C, $096D
|00C210| dw $096F, $0908, $14E8, $54E8
|00C218| dw $4908, $496F, $496D, $496C
|00C220| dw $095C, $095D, $095F, $0918
|00C228| dw $14F8, $54F8, $4918, $495F
|00C230| dw $495D, $495C, $094C, $094D
|00C238| dw $094F, $A888, $A889, $E889
|00C240| dw $E888, $494F, $494D, $494C

;---------------------------------------------------------------------------------------------------
; from RoomDraw_CaveExitLight
;---------------------------------------------------------------------------------------------------
^.obj26F6
|00C248| dw $14C8, $097E, $096E, $295E
|00C250| dw $14D8, $14C9, $14D9, $294E
|00C258| dw $54D8, $54C9, $54D9, $694E
|00C260| dw $54C8, $497E, $496E, $695E

;===================================================================================================
;---------------------------------------------------------------------------------------------------
; Doors
;---------------------------------------------------------------------------------------------------
;===================================================================================================
^.obj2716
|00C268| dw $2888, $0808, $0818, $2889
|00C270| dw $09EF, $0878, $6889, $09EF
|00C278| dw $4878, $6888, $4808, $4818

;---------------------------------------------------------------------------------------------------

^.obj272E
|00C280| dw $282C, $0808, $080D, $282D
|00C288| dw $09EF, $0878, $682D, $09EF
|00C290| dw $4878, $682C, $4808, $480D

;---------------------------------------------------------------------------------------------------

^.obj2746
|00C298| dw $2888, $0808, $0818, $2889
|00C2A0| dw $09EF, $0878, $6889, $09EF
|00C2A8| dw $4878, $6888, $4808, $4818

;---------------------------------------------------------------------------------------------------

^.obj275E
|00C2B0| dw $0882, $0824, $0834, $0883
|00C2B8| dw $0825, $0835, $4883, $4825
|00C2C0| dw $4835, $4882, $4824, $4834

;---------------------------------------------------------------------------------------------------

^.obj2776
|00C2C8| dw $0890, $0896, $08A2, $0891
|00C2D0| dw $0897, $08A3, $0890, $0896
|00C2D8| dw $08A2, $0891, $0897, $08A3

;---------------------------------------------------------------------------------------------------

^.obj278E
|00C2E0| dw $0882, $0800, $0810, $0883
|00C2E8| dw $0802, $0812, $4883, $4802
|00C2F0| dw $4812, $4882, $4800, $4810

;---------------------------------------------------------------------------------------------------

^.obj27A6
|00C2F8| dw $0882, $0800, $0810, $0883
|00C300| dw $0801, $0811, $4883, $4801
|00C308| dw $4811, $4882, $4800, $4810

;---------------------------------------------------------------------------------------------------

^.obj27BE
|00C310| dw $0882, $0800, $0810, $0883
|00C318| dw $0802, $0812, $4883, $4802
|00C320| dw $4812, $4882, $4800, $4810

;---------------------------------------------------------------------------------------------------

^.obj27D6
|00C328| dw $08B0, $0800, $080B, $08B1
|00C330| dw $0802, $0812, $48B1, $4802
|00C338| dw $4812, $48B0, $4800, $480B

;---------------------------------------------------------------------------------------------------

^.obj27EE
|00C340| dw $0890, $08BA, $08A9, $08B4
|00C348| dw $088C, $088E, $48B4, $088D
|00C350| dw $088F, $0891, $48BA, $48A9

;---------------------------------------------------------------------------------------------------

^.obj2806
|00C358| dw $0882, $0800, $0810, $0883
|00C360| dw $0801, $0811, $4883, $4801
|00C368| dw $4811, $4882, $4800, $4810

;---------------------------------------------------------------------------------------------------

^.obj281E
|00C370| dw $0890, $0896, $08A2, $0891
|00C378| dw $088C, $088E, $0890, $088D
|00C380| dw $088F, $0891, $0897, $08A3

;---------------------------------------------------------------------------------------------------

^.obj2836
|00C388| dw $0882, $0824, $0834, $0883
|00C390| dw $0825, $0835, $4883, $4825
|00C398| dw $4835, $4882, $4824, $4834

;---------------------------------------------------------------------------------------------------

^.obj284E
|00C3A0| dw $2888, $0808, $0818, $2889
|00C3A8| dw $09EF, $0878, $6889, $09EF
|00C3B0| dw $4878, $6888, $4808, $4818

;---------------------------------------------------------------------------------------------------

^.obj2866
|00C3B8| dw $282C, $0808, $080D, $282D
|00C3C0| dw $09EF, $0878, $682D, $09EF
|00C3C8| dw $4878, $682C, $4808, $480D

;---------------------------------------------------------------------------------------------------

^.obj287E
|00C3D0| dw $08B0, $0800, $080B, $08B1
|00C3D8| dw $0801, $0811, $48B1, $4801
|00C3E0| dw $4811, $48B0, $4800, $480B

;---------------------------------------------------------------------------------------------------

^.obj2896
|00C3E8| dw $08B0, $0824, $080C, $08B1
|00C3F0| dw $0825, $0835, $48B1, $4825
|00C3F8| dw $4835, $48B0, $4824, $480C

;---------------------------------------------------------------------------------------------------

^.obj28AE
|00C400| dw $282C, $0808, $080D, $282D
|00C408| dw $09EF, $0878, $682D, $09EF
|00C410| dw $4878, $682C, $4808, $480D

;---------------------------------------------------------------------------------------------------

^.obj28C6
|00C418| dw $08B0, $0824, $080C, $08B1
|00C420| dw $0825, $0835, $48B1, $4825
|00C428| dw $4835, $48B0, $4824, $480C

;---------------------------------------------------------------------------------------------------

^.obj28DE
|00C430| dw $282C, $0808, $080D, $282D
|00C438| dw $09EF, $0878, $682D, $09EF
|00C440| dw $4878, $682C, $4808, $480D

;---------------------------------------------------------------------------------------------------

^.obj28F6
|00C448| dw $2882, $0808, $0818, $2883
|00C450| dw $09EF, $0878, $6883, $09EF
|00C458| dw $4878, $6882, $4808, $4818

;---------------------------------------------------------------------------------------------------

^.obj290E
|00C460| dw $2886, $0877, $0875, $2887
|00C468| dw $09EF, $0859, $6887, $09EF
|00C470| dw $4859, $6886, $4877, $4875

;---------------------------------------------------------------------------------------------------

^.obj2926
|00C478| dw $0872, $0872, $0872, $0873
|00C480| dw $0874, $0875, $0876, $0876
|00C488| dw $0876, $0876, $0876, $0876
|00C490| dw $085B, $4876, $4876, $4876
|00C498| dw $4876, $4876, $4876, $4872
|00C4A0| dw $4872, $4872, $4873, $4874
|00C4A8| dw $4875

;---------------------------------------------------------------------------------------------------

^.obj2958
|00C4AA| dw $296E, $115E, $1178, $1158
|00C4B2| dw $696E, $09EF, $0878, $1174
|00C4BA| dw $296E, $49EF, $4878, $5174
|00C4C2| dw $696E, $515E, $5178, $5158

;---------------------------------------------------------------------------------------------------

^.obj2978
|00C4CA| dw $28B0, $0808, $080D, $28B1
|00C4D2| dw $09EF, $0878, $68B1, $09EF
|00C4DA| dw $4878, $68B0, $4808, $480D

;---------------------------------------------------------------------------------------------------

^.obj2990
|00C4E2| dw $28B8, $2808, $0818, $289D
|00C4EA| dw $082E, $083E, $689D, $082F
|00C4F2| dw $083F, $68B8, $6808, $4818

;---------------------------------------------------------------------------------------------------

^.obj29A8
|00C4FA| dw $28B8, $2808, $0818, $28B9
|00C502| dw $09EF, $0819, $68B9, $09EF
|00C50A| dw $081A, $68B8, $6808, $4818

;---------------------------------------------------------------------------------------------------

^.obj29C0
|00C512| dw $28B5, $2808, $080D, $28B7
|00C51A| dw $082E, $083E, $68B7, $082F
|00C522| dw $083F, $68B5, $6808, $480D

;---------------------------------------------------------------------------------------------------

^.obj29D8
|00C52A| dw $28B5, $2808, $080D, $28B6
|00C532| dw $09EF, $0819, $68B6, $09EF
|00C53A| dw $081A, $68B5, $6808, $480D

;---------------------------------------------------------------------------------------------------

^.obj29F0
|00C542| dw $8818, $8808, $A888, $8878
|00C54A| dw $09EF, $A889, $8878, $09EF
|00C552| dw $E889, $C818, $C808, $E888

;---------------------------------------------------------------------------------------------------

^.obj2A08
|00C55A| dw $880D, $8808, $A82C, $8878
|00C562| dw $09EF, $A82D, $C878, $09EF
|00C56A| dw $E82D, $C80D, $C808, $E82C

;---------------------------------------------------------------------------------------------------

^.obj2A20
|00C572| dw $8818, $8808, $A888, $8878
|00C57A| dw $09EF, $A889, $8878, $09EF
|00C582| dw $E889, $C818, $C808, $E888

;---------------------------------------------------------------------------------------------------

^.obj2A38
|00C58A| dw $8834, $8824, $8882, $8835
|00C592| dw $8825, $8883, $C835, $C825
|00C59A| dw $C883, $C834, $C824, $C882

;---------------------------------------------------------------------------------------------------

^.obj2A50
|00C5A2| dw $88A2, $8896, $8890, $88A3
|00C5AA| dw $8897, $8891, $88A2, $8896
|00C5B2| dw $8890, $88A3, $8897, $8891

;---------------------------------------------------------------------------------------------------

^.obj2A68
|00C5BA| dw $8810, $8800, $8882, $8812
|00C5C2| dw $8802, $8883, $C812, $C802
|00C5CA| dw $C883, $C810, $C800, $C882

;---------------------------------------------------------------------------------------------------

^.obj2A80
|00C5D2| dw $8818, $8808, $A888, $8878
|00C5DA| dw $09EF, $A889, $8878, $09EF
|00C5E2| dw $E889, $C818, $C808, $E888

;---------------------------------------------------------------------------------------------------

^.obj2A98
|00C5EA| dw $88A9, $88BA, $8890, $888E
|00C5F2| dw $888C, $88B4, $888F, $888D
|00C5FA| dw $C8B4, $C8A9, $C8BA, $8891

;---------------------------------------------------------------------------------------------------

^.obj2AB0
|00C602| dw $88A2, $8896, $8890, $888E
|00C60A| dw $888C, $8891, $888F, $888D
|00C612| dw $8890, $88A3, $8897, $8891

;---------------------------------------------------------------------------------------------------

^.obj2AC8
|00C61A| dw $8810, $8800, $8882, $8811
|00C622| dw $8801, $8883, $C811, $C801
|00C62A| dw $C883, $C810, $C800, $C882

;---------------------------------------------------------------------------------------------------

^.obj2AE0
|00C632| dw $88A2, $8896, $8890, $888E
|00C63A| dw $888C, $8891, $888F, $888D
|00C642| dw $8890, $88A3, $8897, $8891

;---------------------------------------------------------------------------------------------------

^.obj2AF8
|00C64A| dw $8818, $8808, $A888, $8878
|00C652| dw $09EF, $A889, $8878, $09EF
|00C65A| dw $E889, $C818, $C808, $E888

;---------------------------------------------------------------------------------------------------

^.obj2B10
|00C662| dw $8834, $8824, $8882, $8835
|00C66A| dw $8825, $8883, $C835, $C825
|00C672| dw $C883, $C834, $C824, $C882

;---------------------------------------------------------------------------------------------------

^.obj2B28
|00C67A| dw $880D, $8808, $A82C, $8878
|00C682| dw $09EF, $A82D, $C878, $09EF
|00C68A| dw $E82D, $C80D, $C808, $E82C

;---------------------------------------------------------------------------------------------------

^.obj2B40
|00C692| dw $880B, $8800, $88B0, $8811
|00C69A| dw $8801, $88B1, $C811, $C801
|00C6A2| dw $C8B1, $C80B, $C800, $C8B0

;---------------------------------------------------------------------------------------------------

^.obj2B58
|00C6AA| dw $880C, $8824, $88B0, $8835
|00C6B2| dw $8825, $88B1, $C835, $C825
|00C6BA| dw $C8B1, $C80C, $C824, $C8B0

;---------------------------------------------------------------------------------------------------

^.obj2B70
|00C6C2| dw $880D, $8808, $A82C, $8878
|00C6CA| dw $09EF, $A82D, $C878, $09EF
|00C6D2| dw $E82D, $C80D, $C808, $E82C

;---------------------------------------------------------------------------------------------------

^.obj2B88
|00C6DA| dw $880D, $8808, $A82C, $8878
|00C6E2| dw $09EF, $A82D, $C878, $09EF
|00C6EA| dw $E82D, $C80D, $C808, $E82C

;---------------------------------------------------------------------------------------------------

^.obj2BA0
|00C6F2| dw $880C, $8824, $88B0, $8835
|00C6FA| dw $8825, $88B1, $C835, $C825
|00C702| dw $C8B1, $C80C, $C824, $C8B0

;---------------------------------------------------------------------------------------------------

^.obj2BB8
|00C70A| dw $8818, $8808, $A882, $8878
|00C712| dw $09EF, $A883, $C878, $09EF
|00C71A| dw $E883, $C818, $C808, $E882

;---------------------------------------------------------------------------------------------------

^.obj2BD0
|00C722| dw $8875, $8877, $A886, $8859
|00C72A| dw $09EF, $A887, $C859, $09EF
|00C732| dw $E887, $C875, $C877, $E886

;---------------------------------------------------------------------------------------------------

^.obj2BE8
|00C73A| dw $8875, $8874, $8873, $8872
|00C742| dw $8872, $8872, $8876, $8876
|00C74A| dw $8876, $8876, $8876, $8876
|00C752| dw $085B, $C876, $C876, $C876
|00C75A| dw $C876, $C876, $C876, $C875
|00C762| dw $C874, $C873, $C872, $C872
|00C76A| dw $C872

;---------------------------------------------------------------------------------------------------

^.obj2C1A
|00C76C| dw $9158, $9178, $915E, $A96E
|00C774| dw $9174, $8878, $89EF, $E96E
|00C77C| dw $D174, $C878, $C9EF, $A96E
|00C784| dw $D158, $D178, $D15E, $E96E

;---------------------------------------------------------------------------------------------------

^.obj2C3A
|00C78C| dw $880D, $8808, $A8B0, $8878
|00C794| dw $09EF, $A8B1, $C878, $09EF
|00C79C| dw $E8B1, $C80D, $C808, $E8B0

;---------------------------------------------------------------------------------------------------

^.obj2C52
|00C7A4| dw $0960, $296E, $295E, $14C9
|00C7AC| dw $14D9, $294E, $54C9, $54D9
|00C7B4| dw $694E, $4960, $696E, $695E

;---------------------------------------------------------------------------------------------------

^.obj2C6A
|00C7BC| dw $288A, $288B, $A88B, $A88A
|00C7C4| dw $0809, $09EF, $09EF, $8809
|00C7CC| dw $080A, $0879, $8879, $880A

;---------------------------------------------------------------------------------------------------

^.obj2C82
|00C7D4| dw $283C, $283D, $A83D, $A83C
|00C7DC| dw $0809, $09EF, $09EF, $8809
|00C7E4| dw $081D, $0879, $8879, $881D

;---------------------------------------------------------------------------------------------------

^.obj2C9A
|00C7EC| dw $288A, $288B, $A88B, $A88A
|00C7F4| dw $0809, $09EF, $09EF, $8809
|00C7FC| dw $080A, $0879, $8879, $880A

;---------------------------------------------------------------------------------------------------

^.obj2CB2
|00C804| dw $0884, $0885, $8885, $8884
|00C80C| dw $0826, $0836, $8836, $8826
|00C814| dw $0827, $0837, $8837, $8827

;---------------------------------------------------------------------------------------------------

^.obj2CCA
|00C81C| dw $0892, $0893, $0892, $0893
|00C824| dw $0898, $0899, $0898, $0899
|00C82C| dw $082D, $083D, $082D, $083D

;---------------------------------------------------------------------------------------------------

^.obj2CE2
|00C834| dw $0884, $0885, $8885, $8884
|00C83C| dw $0803, $0805, $8805, $8803
|00C844| dw $0804, $0806, $8806, $8804

;---------------------------------------------------------------------------------------------------

^.obj2CFA
|00C84C| dw $0892, $08A8, $88A8, $0893
|00C854| dw $08BB, $08BC, $08BD, $88BB
|00C85C| dw $08AA, $08BE, $08BF, $88AA

;---------------------------------------------------------------------------------------------------

^.obj2D12
|00C864| dw $0884, $0885, $8885, $8884
|00C86C| dw $0803, $0813, $8813, $8803
|00C874| dw $0804, $0814, $8814, $8804

;---------------------------------------------------------------------------------------------------

^.obj2D2A
|00C87C| dw $0892, $0893, $0892, $0893
|00C884| dw $0898, $08BC, $08BD, $0899
|00C88C| dw $08A4, $08BE, $08BF, $08A5

;---------------------------------------------------------------------------------------------------

^.obj2D42
|00C894| dw $0884, $0885, $8885, $8884
|00C89C| dw $0826, $0836, $8836, $8826
|00C8A4| dw $0827, $0837, $8837, $8827

;---------------------------------------------------------------------------------------------------

^.obj2D5A
|00C8AC| dw $288A, $288B, $A88B, $A88A
|00C8B4| dw $0809, $09EF, $09EF, $8809
|00C8BC| dw $080A, $0879, $8879, $880A

;---------------------------------------------------------------------------------------------------

^.obj2D72
|00C8C4| dw $283C, $283D, $A83D, $A83C
|00C8CC| dw $0809, $09EF, $09EF, $8809
|00C8D4| dw $081D, $0879, $8879, $881D

;---------------------------------------------------------------------------------------------------

^.obj2D8A
|00C8DC| dw $08B2, $08B3, $88B3, $88B2
|00C8E4| dw $0803, $0813, $8813, $8803
|00C8EC| dw $081B, $0814, $8814, $881B

;---------------------------------------------------------------------------------------------------

^.obj2DA2
|00C8F4| dw $08B2, $08B3, $88B3, $88B2
|00C8FC| dw $0826, $0836, $8836, $8826
|00C904| dw $081C, $0837, $8837, $881C

;---------------------------------------------------------------------------------------------------

^.obj2DBA
|00C90C| dw $283C, $283D, $A83D, $A83C
|00C914| dw $0809, $09EF, $09EF, $8809
|00C91C| dw $081D, $0879, $8879, $881D

;---------------------------------------------------------------------------------------------------

^.obj2DD2
|00C924| dw $08B2, $08B3, $88B3, $88B2
|00C92C| dw $0826, $0836, $8836, $8826
|00C934| dw $081C, $0837, $8837, $881C

;---------------------------------------------------------------------------------------------------

^.obj2DEA
|00C93C| dw $283C, $283D, $A83D, $A83C
|00C944| dw $0809, $09EF, $09EF, $8809
|00C94C| dw $081D, $0879, $8879, $881D

;---------------------------------------------------------------------------------------------------

^.obj2E02
|00C954| dw $2884, $2885, $A885, $A884
|00C95C| dw $0809, $09EF, $09EF, $8809
|00C964| dw $080A, $0879, $8879, $880A

;---------------------------------------------------------------------------------------------------

^.obj2E1A
|00C96C| dw $28A0, $28A1, $A8A1, $A8A0
|00C974| dw $0867, $09EF, $09EF, $8867
|00C97C| dw $0865, $085A, $885A, $8865

;---------------------------------------------------------------------------------------------------

^.obj2E32
|00C984| dw $297E, $A97E, $297E, $A97E
|00C98C| dw $11AC, $09EF, $89EF, $91AC
|00C994| dw $1179, $0879, $8879, $9179
|00C99C| dw $1157, $1175, $9175, $9157

;---------------------------------------------------------------------------------------------------

^.obj2E52
|00C9A4| dw $28B2, $28B3, $A8B3, $A8B2
|00C9AC| dw $0809, $09EF, $09EF, $8809
|00C9B4| dw $081D, $0879, $8879, $881D

;---------------------------------------------------------------------------------------------------

^.obj2E6A
|00C9BC| dw $480A, $4879, $C879, $C80A
|00C9C4| dw $4809, $09EF, $09EF, $C809
|00C9CC| dw $688A, $688B, $E88B, $E88A

;---------------------------------------------------------------------------------------------------

^.obj2E82
|00C9D4| dw $481D, $4879, $C879, $C81D
|00C9DC| dw $4809, $09EF, $09EF, $C809
|00C9E4| dw $683C, $683D, $E83D, $E83C

;---------------------------------------------------------------------------------------------------

^.obj2E9A
|00C9EC| dw $480A, $4879, $C879, $C80A
|00C9F4| dw $4809, $09EF, $09EF, $C809
|00C9FC| dw $688A, $688B, $E88B, $E88A

;---------------------------------------------------------------------------------------------------

^.obj2EB2
|00CA04| dw $4827, $4837, $C837, $C827
|00CA0C| dw $4826, $4836, $C836, $C826
|00CA14| dw $4884, $4885, $C885, $C884

;---------------------------------------------------------------------------------------------------

^.obj2ECA
|00CA1C| dw $482D, $483D, $482D, $483D
|00CA24| dw $4898, $4899, $4898, $4899
|00CA2C| dw $4892, $4893, $4892, $4893

;---------------------------------------------------------------------------------------------------

^.obj2EE2
|00CA34| dw $4804, $4806, $C806, $C804
|00CA3C| dw $4803, $4805, $C805, $C803
|00CA44| dw $4884, $4885, $C885, $C884

;---------------------------------------------------------------------------------------------------

^.obj2EFA
|00CA4C| dw $48AA, $48BE, $48BF, $C8AA
|00CA54| dw $48BB, $48BC, $48BD, $C8BB
|00CA5C| dw $4892, $48A8, $C8A8, $4893

;---------------------------------------------------------------------------------------------------

^.obj2F12
|00CA64| dw $4804, $4814, $C814, $C804
|00CA6C| dw $4803, $4813, $C813, $C803
|00CA74| dw $4884, $4885, $C885, $C884

;---------------------------------------------------------------------------------------------------

^.obj2F2A
|00CA7C| dw $48A4, $48BE, $48BF, $48A5
|00CA84| dw $4898, $48BC, $48BD, $4899
|00CA8C| dw $4892, $4893, $4892, $4893

;---------------------------------------------------------------------------------------------------

^.obj2F42
|00CA94| dw $480A, $4879, $C879, $C80A
|00CA9C| dw $4809, $09EF, $09EF, $C809
|00CAA4| dw $688A, $688B, $E88B, $E88A

;---------------------------------------------------------------------------------------------------

^.obj2F5A
|00CAAC| dw $4827, $4837, $C837, $C827
|00CAB4| dw $4826, $4836, $C836, $C826
|00CABC| dw $4884, $4885, $C885, $C884

;---------------------------------------------------------------------------------------------------

^.obj2F72
|00CAC4| dw $481D, $4879, $C879, $C81D
|00CACC| dw $4809, $09EF, $09EF, $C809
|00CAD4| dw $683C, $683D, $E83D, $E83C

;---------------------------------------------------------------------------------------------------

^.obj2F8A
|00CADC| dw $481B, $4814, $C814, $C81B
|00CAE4| dw $4803, $4813, $C813, $C803
|00CAEC| dw $48B2, $48B3, $C8B3, $C8B2

;---------------------------------------------------------------------------------------------------

^.obj2FA2
|00CAF4| dw $481C, $4837, $C837, $C81C
|00CAFC| dw $4826, $4836, $C836, $C826
|00CB04| dw $48B2, $48B3, $C8B3, $C8B2

;---------------------------------------------------------------------------------------------------

^.obj2FBA
|00CB0C| dw $481D, $4879, $C879, $C81D
|00CB14| dw $4809, $09EF, $09EF, $C809
|00CB1C| dw $683C, $683D, $E83D, $E83C

;---------------------------------------------------------------------------------------------------

^.obj2FD2
|00CB24| dw $481D, $4879, $C879, $C81D
|00CB2C| dw $4809, $09EF, $09EF, $C809
|00CB34| dw $683C, $683D, $E83D, $E83C

;---------------------------------------------------------------------------------------------------

^.obj2FEA
|00CB3C| dw $481C, $4837, $C837, $C81C
|00CB44| dw $4826, $4836, $C836, $C826
|00CB4C| dw $48B2, $48B3, $C8B3, $C8B2

;---------------------------------------------------------------------------------------------------

^.obj3002
|00CB54| dw $480A, $4879, $C879, $C80A
|00CB5C| dw $4809, $09EF, $09EF, $C809
|00CB64| dw $6884, $6885, $E885, $E884

;---------------------------------------------------------------------------------------------------

^.obj301A
|00CB6C| dw $4865, $485A, $C85A, $C865
|00CB74| dw $4867, $09EF, $09EF, $C867
|00CB7C| dw $68A0, $68A1, $E8A1, $E8A0

;---------------------------------------------------------------------------------------------------

^.obj3032
|00CB84| dw $5157, $5175, $D175, $D157
|00CB8C| dw $5179, $4879, $C879, $D179
|00CB94| dw $51AC, $49EF, $C9EF, $D1AC
|00CB9C| dw $697E, $E97E, $697E, $E97E

;---------------------------------------------------------------------------------------------------

^.obj3052
|00CBA4| dw $481D, $4879, $C879, $C81D
|00CBAC| dw $4809, $09EF, $09EF, $C809
|00CBB4| dw $68B2, $68B3, $E8B3, $E8B2

;---------------------------------------------------------------------------------------------------

^.obj306A
|00CBBC| dw $2882, $0820, $0830, $2883
|00CBC4| dw $0821, $0831, $6883, $4821
|00CBCC| dw $4831, $6882, $4820, $4830

;---------------------------------------------------------------------------------------------------

^.obj3082
|00CBD4| dw $2882, $0828, $0838, $2883
|00CBDC| dw $0829, $0839, $6883, $4829
|00CBE4| dw $4839, $6882, $4828, $4838

;---------------------------------------------------------------------------------------------------

^.obj309A
|00CBEC| dw $28B0, $0820, $080E, $28B1
|00CBF4| dw $0821, $0831, $68B1, $4821
|00CBFC| dw $4831, $68B0, $4820, $480E

;---------------------------------------------------------------------------------------------------

^.obj30B2
|00CC04| dw $28B0, $0828, $080F, $28B1
|00CC0C| dw $0829, $0839, $68B1, $4829
|00CC14| dw $4839, $68B0, $4828, $480F

;---------------------------------------------------------------------------------------------------

^.obj30CA
|00CC1C| dw $8830, $8820, $A882, $8831
|00CC24| dw $8821, $A883, $C831, $C821
|00CC2C| dw $E883, $C830, $C820, $E882

;---------------------------------------------------------------------------------------------------

^.obj30E2
|00CC34| dw $8838, $8828, $A882, $8839
|00CC3C| dw $8829, $A883, $C839, $C829
|00CC44| dw $E883, $C838, $C828, $E882

;---------------------------------------------------------------------------------------------------

^.obj30FA
|00CC4C| dw $880E, $8820, $A8B0, $8831
|00CC54| dw $8821, $A8B1, $C831, $C821
|00CC5C| dw $E8B1, $C80E, $C820, $E8B0

;---------------------------------------------------------------------------------------------------

^.obj3112
|00CC64| dw $880F, $8828, $A8B0, $8839
|00CC6C| dw $8829, $A8B1, $C839, $C829
|00CC74| dw $E8B1, $C80F, $C828, $E8B0

;---------------------------------------------------------------------------------------------------

^.obj312A
|00CC7C| dw $2884, $2885, $A885, $A884
|00CC84| dw $0822, $0832, $8832, $8822
|00CC8C| dw $0823, $0833, $8833, $8823

;---------------------------------------------------------------------------------------------------

^.obj3142
|00CC94| dw $2884, $2885, $A885, $A884
|00CC9C| dw $082A, $083A, $883A, $882A
|00CCA4| dw $082B, $083B, $883B, $882B

;---------------------------------------------------------------------------------------------------

^.obj315A
|00CCAC| dw $28B2, $28B3, $A8B3, $A8B2
|00CCB4| dw $0822, $0832, $8832, $8822
|00CCBC| dw $081E, $0833, $8833, $881E

;---------------------------------------------------------------------------------------------------

^.obj3172
|00CCC4| dw $28B2, $28B3, $A8B3, $A8B2
|00CCCC| dw $082A, $083A, $883A, $882A
|00CCD4| dw $081F, $083B, $883B, $881F

;---------------------------------------------------------------------------------------------------

^.obj318A
|00CCDC| dw $4823, $4833, $C833, $C823
|00CCE4| dw $4822, $4832, $C832, $C822
|00CCEC| dw $6884, $6885, $E885, $E884

;---------------------------------------------------------------------------------------------------

^.obj31A2
|00CCF4| dw $482B, $483B, $C83B, $C82B
|00CCFC| dw $482A, $483A, $C83A, $C82A
|00CD04| dw $6884, $6885, $E885, $E884

;---------------------------------------------------------------------------------------------------

^.obj31BA
|00CD0C| dw $481E, $4833, $C833, $C81E
|00CD14| dw $4822, $4832, $C832, $C822
|00CD1C| dw $68B2, $68B3, $E8B3, $E8B2

;---------------------------------------------------------------------------------------------------

^.obj31D2
|00CD24| dw $481F, $483B, $C83B, $C81F
|00CD2C| dw $482A, $483A, $C83A, $C82A
|00CD34| dw $68B2, $68B3, $E8B3, $E8B2

;---------------------------------------------------------------------------------------------------
; from ClearExplodingWallFromTilemap
;---------------------------------------------------------------------------------------------------
^.obj31EA
|00CD3C| dw $8875, $8874, $8873, $8872
|00CD44| dw $8872, $8872, $0872, $8872
|00CD4C| dw $8872, $0873, $0874, $0875
|00CD54| dw $8876, $8876, $8876, $8876
|00CD5C| dw $8876, $0876, $0876, $0876
|00CD64| dw $0876, $0876, $0876, $0876
|00CD6C| dw $085B, $C876, $C876, $C876
|00CD74| dw $C876, $C876, $4876, $4876
|00CD7C| dw $4876, $4876, $4876, $4876
|00CD84| dw $4876, $C875, $C874, $C873
|00CD8C| dw $C872, $C872, $C872, $4872
|00CD94| dw $4872, $4872, $4873, $4874
|00CD9C| dw $4875

;===================================================================================================

DoorGFXDataOffset_North:
|00CD9E| dw RoomDrawObjectData.obj2716 ; DOORTYPE 00
|00CDA0| dw RoomDrawObjectData.obj272E ; DOORTYPE 02
|00CDA2| dw RoomDrawObjectData.obj272E ; DOORTYPE 04
|00CDA4| dw RoomDrawObjectData.obj2746 ; DOORTYPE 06
|00CDA6| dw RoomDrawObjectData.obj2746 ; DOORTYPE 08
|00CDA8| dw RoomDrawObjectData.obj2746 ; DOORTYPE 0A
|00CDAA| dw RoomDrawObjectData.obj2746 ; DOORTYPE 0C
|00CDAC| dw RoomDrawObjectData.obj2746 ; DOORTYPE 0E
|00CDAE| dw RoomDrawObjectData.obj2746 ; DOORTYPE 10
|00CDB0| dw RoomDrawObjectData.obj275E ; DOORTYPE 12
|00CDB2| dw RoomDrawObjectData.obj275E ; DOORTYPE 14
|00CDB4| dw RoomDrawObjectData.obj275E ; DOORTYPE 16
|00CDB6| dw RoomDrawObjectData.obj275E ; DOORTYPE 18
|00CDB8| dw RoomDrawObjectData.obj2776 ; DOORTYPE 1A
|00CDBA| dw RoomDrawObjectData.obj278E ; DOORTYPE 1C
|00CDBC| dw RoomDrawObjectData.obj27A6 ; DOORTYPE 1E
|00CDBE| dw RoomDrawObjectData.obj27BE ; DOORTYPE 20
|00CDC0| dw RoomDrawObjectData.obj27BE ; DOORTYPE 22
|00CDC2| dw RoomDrawObjectData.obj27D6 ; DOORTYPE 24
|00CDC4| dw RoomDrawObjectData.obj27D6 ; DOORTYPE 26
|00CDC6| dw RoomDrawObjectData.obj27EE ; DOORTYPE 28
|00CDC8| dw RoomDrawObjectData.obj2806 ; DOORTYPE 2A
|00CDCA| dw RoomDrawObjectData.obj2806 ; DOORTYPE 2C
|00CDCC| dw RoomDrawObjectData.obj281E ; DOORTYPE 2E
|00CDCE| dw RoomDrawObjectData.obj2836 ; DOORTYPE 30
|00CDD0| dw RoomDrawObjectData.obj2836 ; DOORTYPE 32
|00CDD2| dw RoomDrawObjectData.obj2836 ; DOORTYPE 34
|00CDD4| dw RoomDrawObjectData.obj2836 ; DOORTYPE 36
|00CDD6| dw RoomDrawObjectData.obj284E ; DOORTYPE 38
|00CDD8| dw RoomDrawObjectData.obj2866 ; DOORTYPE 3A
|00CDDA| dw RoomDrawObjectData.obj2866 ; DOORTYPE 3C
|00CDDC| dw RoomDrawObjectData.obj2866 ; DOORTYPE 3E
|00CDDE| dw RoomDrawObjectData.obj2866 ; DOORTYPE 40
|00CDE0| dw RoomDrawObjectData.obj287E ; DOORTYPE 42
|00CDE2| dw RoomDrawObjectData.obj2896 ; DOORTYPE 44
|00CDE4| dw RoomDrawObjectData.obj28AE ; DOORTYPE 46
|00CDE6| dw RoomDrawObjectData.obj28C6 ; DOORTYPE 48
|00CDE8| dw RoomDrawObjectData.obj28DE ; DOORTYPE 4A
|00CDEA| dw RoomDrawObjectData.obj28F6 ; DOORTYPE 4C
|00CDEC| dw RoomDrawObjectData.obj28F6 ; DOORTYPE 4E
|00CDEE| dw RoomDrawObjectData.obj28F6 ; DOORTYPE 50
|00CDF0| dw RoomDrawObjectData.obj290E ; DOORTYPE 52
|00CDF2| dw RoomDrawObjectData.obj2926 ; DOORTYPE 54
|00CDF4| dw RoomDrawObjectData.obj2958 ; DOORTYPE 56
|00CDF6| dw RoomDrawObjectData.obj2978 ; DOORTYPE 58
|00CDF8| dw RoomDrawObjectData.obj2990 ; DOORTYPE 5A
|00CDFA| dw RoomDrawObjectData.obj2990 ; DOORTYPE 5C
|00CDFC| dw RoomDrawObjectData.obj2990 ; DOORTYPE 5E
|00CDFE| dw RoomDrawObjectData.obj2990 ; DOORTYPE 60
|00CE00| dw RoomDrawObjectData.obj29A8 ; DOORTYPE 62
|00CE02| dw RoomDrawObjectData.obj29C0 ; DOORTYPE 64
|00CE04| dw RoomDrawObjectData.obj29D8 ; DOORTYPE 66

;---------------------------------------------------------------------------------------------------

DoorGFXDataOffset_South:
|00CE06| dw RoomDrawObjectData.obj29F0 ; DOORTYPE 00
|00CE08| dw RoomDrawObjectData.obj2A08 ; DOORTYPE 02
|00CE0A| dw RoomDrawObjectData.obj2A08 ; DOORTYPE 04
|00CE0C| dw RoomDrawObjectData.obj2A20 ; DOORTYPE 06
|00CE0E| dw RoomDrawObjectData.obj2A20 ; DOORTYPE 08
|00CE10| dw RoomDrawObjectData.obj2A20 ; DOORTYPE 0A
|00CE12| dw RoomDrawObjectData.obj2A20 ; DOORTYPE 0C
|00CE14| dw RoomDrawObjectData.obj2A20 ; DOORTYPE 0E
|00CE16| dw RoomDrawObjectData.obj2A20 ; DOORTYPE 10
|00CE18| dw RoomDrawObjectData.obj2A38 ; DOORTYPE 12
|00CE1A| dw RoomDrawObjectData.obj2A38 ; DOORTYPE 14
|00CE1C| dw RoomDrawObjectData.obj2A38 ; DOORTYPE 16
|00CE1E| dw RoomDrawObjectData.obj2A38 ; DOORTYPE 18
|00CE20| dw RoomDrawObjectData.obj2A50 ; DOORTYPE 1A
|00CE22| dw RoomDrawObjectData.obj2A68 ; DOORTYPE 1C
|00CE24| dw RoomDrawObjectData.obj2A80 ; DOORTYPE 1E
|00CE26| dw RoomDrawObjectData.obj2A98 ; DOORTYPE 20
|00CE28| dw RoomDrawObjectData.obj2A98 ; DOORTYPE 22
|00CE2A| dw RoomDrawObjectData.obj2A98 ; DOORTYPE 24
|00CE2C| dw RoomDrawObjectData.obj2A98 ; DOORTYPE 26
|00CE2E| dw RoomDrawObjectData.obj2A98 ; DOORTYPE 28
|00CE30| dw RoomDrawObjectData.obj2AB0 ; DOORTYPE 2A
|00CE32| dw RoomDrawObjectData.obj2AC8 ; DOORTYPE 2C
|00CE34| dw RoomDrawObjectData.obj2AE0 ; DOORTYPE 2E
|00CE36| dw RoomDrawObjectData.obj2AF8 ; DOORTYPE 30
|00CE38| dw RoomDrawObjectData.obj2AF8 ; DOORTYPE 32
|00CE3A| dw RoomDrawObjectData.obj2AF8 ; DOORTYPE 34
|00CE3C| dw RoomDrawObjectData.obj2AF8 ; DOORTYPE 36
|00CE3E| dw RoomDrawObjectData.obj2B10 ; DOORTYPE 38
|00CE40| dw RoomDrawObjectData.obj2B28 ; DOORTYPE 3A
|00CE42| dw RoomDrawObjectData.obj2B28 ; DOORTYPE 3C
|00CE44| dw RoomDrawObjectData.obj2B28 ; DOORTYPE 3E
|00CE46| dw RoomDrawObjectData.obj2B28 ; DOORTYPE 40
|00CE48| dw RoomDrawObjectData.obj2B40 ; DOORTYPE 42
|00CE4A| dw RoomDrawObjectData.obj2B58 ; DOORTYPE 44
|00CE4C| dw RoomDrawObjectData.obj2B70 ; DOORTYPE 46
|00CE4E| dw RoomDrawObjectData.obj2B88 ; DOORTYPE 48
|00CE50| dw RoomDrawObjectData.obj2BA0 ; DOORTYPE 4A
|00CE52| dw RoomDrawObjectData.obj2BB8 ; DOORTYPE 4C
|00CE54| dw RoomDrawObjectData.obj2BB8 ; DOORTYPE 4E
|00CE56| dw RoomDrawObjectData.obj2BB8 ; DOORTYPE 50
|00CE58| dw RoomDrawObjectData.obj2BD0 ; DOORTYPE 52
|00CE5A| dw RoomDrawObjectData.obj2BE8 ; DOORTYPE 54
|00CE5C| dw RoomDrawObjectData.obj2C1A ; DOORTYPE 56
|00CE5E| dw RoomDrawObjectData.obj2C3A ; DOORTYPE 58
|00CE60| dw RoomDrawObjectData.obj2C52 ; DOORTYPE 5A
|00CE62| dw RoomDrawObjectData.obj2C6A ; DOORTYPE 5C
|00CE64| dw RoomDrawObjectData.obj2C6A ; DOORTYPE 5E

;---------------------------------------------------------------------------------------------------

DoorGFXDataOffset_West:
|00CE66| dw RoomDrawObjectData.obj2C6A ; DOORTYPE 00
|00CE68| dw RoomDrawObjectData.obj2C82 ; DOORTYPE 02
|00CE6A| dw RoomDrawObjectData.obj2C82 ; DOORTYPE 04
|00CE6C| dw RoomDrawObjectData.obj2C9A ; DOORTYPE 06
|00CE6E| dw RoomDrawObjectData.obj2C9A ; DOORTYPE 08
|00CE70| dw RoomDrawObjectData.obj2C9A ; DOORTYPE 0A
|00CE72| dw RoomDrawObjectData.obj2C9A ; DOORTYPE 0C
|00CE74| dw RoomDrawObjectData.obj2C9A ; DOORTYPE 0E
|00CE76| dw RoomDrawObjectData.obj2C9A ; DOORTYPE 10
|00CE78| dw RoomDrawObjectData.obj2CB2 ; DOORTYPE 12
|00CE7A| dw RoomDrawObjectData.obj2CB2 ; DOORTYPE 14
|00CE7C| dw RoomDrawObjectData.obj2CB2 ; DOORTYPE 16
|00CE7E| dw RoomDrawObjectData.obj2CB2 ; DOORTYPE 18
|00CE80| dw RoomDrawObjectData.obj2CCA ; DOORTYPE 1A
|00CE82| dw RoomDrawObjectData.obj2CE2 ; DOORTYPE 1C
|00CE84| dw RoomDrawObjectData.obj2CFA ; DOORTYPE 1E
|00CE86| dw RoomDrawObjectData.obj2CFA ; DOORTYPE 20
|00CE88| dw RoomDrawObjectData.obj2CFA ; DOORTYPE 22
|00CE8A| dw RoomDrawObjectData.obj2CFA ; DOORTYPE 24
|00CE8C| dw RoomDrawObjectData.obj2CFA ; DOORTYPE 26
|00CE8E| dw RoomDrawObjectData.obj2CFA ; DOORTYPE 28
|00CE90| dw RoomDrawObjectData.obj2D12 ; DOORTYPE 2A
|00CE92| dw RoomDrawObjectData.obj2D12 ; DOORTYPE 2C
|00CE94| dw RoomDrawObjectData.obj2D2A ; DOORTYPE 2E
|00CE96| dw RoomDrawObjectData.obj2D42 ; DOORTYPE 30
|00CE98| dw RoomDrawObjectData.obj2D42 ; DOORTYPE 32
|00CE9A| dw RoomDrawObjectData.obj2D42 ; DOORTYPE 34
|00CE9C| dw RoomDrawObjectData.obj2D42 ; DOORTYPE 36
|00CE9E| dw RoomDrawObjectData.obj2D5A ; DOORTYPE 38
|00CEA0| dw RoomDrawObjectData.obj2D72 ; DOORTYPE 3A
|00CEA2| dw RoomDrawObjectData.obj2D72 ; DOORTYPE 3C
|00CEA4| dw RoomDrawObjectData.obj2D72 ; DOORTYPE 3E
|00CEA6| dw RoomDrawObjectData.obj2D72 ; DOORTYPE 40
|00CEA8| dw RoomDrawObjectData.obj2D8A ; DOORTYPE 42
|00CEAA| dw RoomDrawObjectData.obj2DA2 ; DOORTYPE 44
|00CEAC| dw RoomDrawObjectData.obj2DBA ; DOORTYPE 46
|00CEAE| dw RoomDrawObjectData.obj2DD2 ; DOORTYPE 48
|00CEB0| dw RoomDrawObjectData.obj2DEA ; DOORTYPE 4A
|00CEB2| dw RoomDrawObjectData.obj2E02 ; DOORTYPE 4C
|00CEB4| dw RoomDrawObjectData.obj2E02 ; DOORTYPE 4E
|00CEB6| dw RoomDrawObjectData.obj2E02 ; DOORTYPE 50
|00CEB8| dw RoomDrawObjectData.obj2E1A ; DOORTYPE 52
|00CEBA| dw RoomDrawObjectData.obj2E32 ; DOORTYPE 54
|00CEBC| dw RoomDrawObjectData.obj2E32 ; DOORTYPE 56
|00CEBE| dw RoomDrawObjectData.obj2E52 ; DOORTYPE 58
|00CEC0| dw RoomDrawObjectData.obj2E6A ; DOORTYPE 5A
|00CEC2| dw RoomDrawObjectData.obj2E6A ; DOORTYPE 5C
|00CEC4| dw RoomDrawObjectData.obj2E6A ; DOORTYPE 5E

;---------------------------------------------------------------------------------------------------

DoorGFXDataOffset_East:
|00CEC6| dw RoomDrawObjectData.obj2E6A ; DOORTYPE 00
|00CEC8| dw RoomDrawObjectData.obj2E82 ; DOORTYPE 02
|00CECA| dw RoomDrawObjectData.obj2E82 ; DOORTYPE 04
|00CECC| dw RoomDrawObjectData.obj2E9A ; DOORTYPE 06
|00CECE| dw RoomDrawObjectData.obj2E9A ; DOORTYPE 08
|00CED0| dw RoomDrawObjectData.obj2E9A ; DOORTYPE 0A
|00CED2| dw RoomDrawObjectData.obj2E9A ; DOORTYPE 0C
|00CED4| dw RoomDrawObjectData.obj2E9A ; DOORTYPE 0E
|00CED6| dw RoomDrawObjectData.obj2E9A ; DOORTYPE 10
|00CED8| dw RoomDrawObjectData.obj2EB2 ; DOORTYPE 12
|00CEDA| dw RoomDrawObjectData.obj2EB2 ; DOORTYPE 14
|00CEDC| dw RoomDrawObjectData.obj2EB2 ; DOORTYPE 16
|00CEDE| dw RoomDrawObjectData.obj2EB2 ; DOORTYPE 18
|00CEE0| dw RoomDrawObjectData.obj2ECA ; DOORTYPE 1A
|00CEE2| dw RoomDrawObjectData.obj2EE2 ; DOORTYPE 1C
|00CEE4| dw RoomDrawObjectData.obj2EFA ; DOORTYPE 1E
|00CEE6| dw RoomDrawObjectData.obj2EFA ; DOORTYPE 20
|00CEE8| dw RoomDrawObjectData.obj2EFA ; DOORTYPE 22
|00CEEA| dw RoomDrawObjectData.obj2EFA ; DOORTYPE 24
|00CEEC| dw RoomDrawObjectData.obj2EFA ; DOORTYPE 26
|00CEEE| dw RoomDrawObjectData.obj2EFA ; DOORTYPE 28
|00CEF0| dw RoomDrawObjectData.obj2F12 ; DOORTYPE 2A
|00CEF2| dw RoomDrawObjectData.obj2F12 ; DOORTYPE 2C
|00CEF4| dw RoomDrawObjectData.obj2F2A ; DOORTYPE 2E
|00CEF6| dw RoomDrawObjectData.obj2F42 ; DOORTYPE 30
|00CEF8| dw RoomDrawObjectData.obj2F42 ; DOORTYPE 32
|00CEFA| dw RoomDrawObjectData.obj2F42 ; DOORTYPE 34
|00CEFC| dw RoomDrawObjectData.obj2F42 ; DOORTYPE 36
|00CEFE| dw RoomDrawObjectData.obj2F5A ; DOORTYPE 38
|00CF00| dw RoomDrawObjectData.obj2F72 ; DOORTYPE 3A
|00CF02| dw RoomDrawObjectData.obj2F72 ; DOORTYPE 3C
|00CF04| dw RoomDrawObjectData.obj2F72 ; DOORTYPE 3E
|00CF06| dw RoomDrawObjectData.obj2F72 ; DOORTYPE 40
|00CF08| dw RoomDrawObjectData.obj2F8A ; DOORTYPE 42
|00CF0A| dw RoomDrawObjectData.obj2FA2 ; DOORTYPE 44
|00CF0C| dw RoomDrawObjectData.obj2FBA ; DOORTYPE 46
|00CF0E| dw RoomDrawObjectData.obj2FD2 ; DOORTYPE 48
|00CF10| dw RoomDrawObjectData.obj2FEA ; DOORTYPE 4A
|00CF12| dw RoomDrawObjectData.obj3002 ; DOORTYPE 4C
|00CF14| dw RoomDrawObjectData.obj3002 ; DOORTYPE 4E
|00CF16| dw RoomDrawObjectData.obj3002 ; DOORTYPE 50
|00CF18| dw RoomDrawObjectData.obj301A ; DOORTYPE 52
|00CF1A| dw RoomDrawObjectData.obj3032 ; DOORTYPE 54
|00CF1C| dw RoomDrawObjectData.obj3032 ; DOORTYPE 56
|00CF1E| dw RoomDrawObjectData.obj3052 ; DOORTYPE 58
|00CF20| dw RoomDrawObjectData.obj306A ; DOORTYPE 5A
|00CF22| dw RoomDrawObjectData.obj306A ; DOORTYPE 5C

;===================================================================================================

DoorAnimGFXDataOffset_North:
|00CF24| dw RoomDrawObjectData.obj306A ; Lower layer shutter
|00CF26| dw RoomDrawObjectData.obj306A ; Key doors
|00CF28| dw RoomDrawObjectData.obj3082 ; Shutters
|00CF2A| dw RoomDrawObjectData.obj309A ; Lower layer key door

DoorAnimGFXDataOffset_South:
|00CF2C| dw RoomDrawObjectData.obj30B2 ; Lower layer shutter
|00CF2E| dw RoomDrawObjectData.obj30CA ; Key doors
|00CF30| dw RoomDrawObjectData.obj30E2 ; Shutters
|00CF32| dw RoomDrawObjectData.obj30FA ; Lower layer key door

DoorAnimGFXDataOffset_West:
|00CF34| dw RoomDrawObjectData.obj3112 ; Lower layer shutter
|00CF36| dw RoomDrawObjectData.obj312A ; Key doors
|00CF38| dw RoomDrawObjectData.obj3142 ; Shutters
|00CF3A| dw RoomDrawObjectData.obj315A ; Lower layer key door

DoorAnimGFXDataOffset_East:
|00CF3C| dw RoomDrawObjectData.obj3172 ; Lower layer shutter
|00CF3E| dw RoomDrawObjectData.obj318A ; Key doors
|00CF40| dw RoomDrawObjectData.obj31A2 ; Shutters
|00CF42| dw RoomDrawObjectData.obj31BA ; Lower layer key door
|00CF44| dw RoomDrawObjectData.obj31D2 ; Unused cool looking shutter

;===================================================================================================
; FREE ROM: 0x7A
;===================================================================================================
NULL_00CF46:
|00CF46| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|00CF4E| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|00CF56| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|00CF5E| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|00CF66| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|00CF6E| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|00CF76| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|00CF7E| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|00CF86| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|00CF8E| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|00CF96| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|00CF9E| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|00CFA6| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|00CFAE| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|00CFB6| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|00CFBE| db $FF, $FF

;===================================================================================================
; GFX sheet pointers
;===================================================================================================
GFXSheetPointers:

.background_bank
|00CFC0| db ^GFX_00
|00CFC1| db ^GFX_01
|00CFC2| db ^GFX_02
|00CFC3| db ^GFX_03
|00CFC4| db ^GFX_04
|00CFC5| db ^GFX_05
|00CFC6| db ^GFX_06
|00CFC7| db ^GFX_07
|00CFC8| db ^GFX_08
|00CFC9| db ^GFX_09
|00CFCA| db ^GFX_0A
|00CFCB| db ^GFX_0B
|00CFCC| db ^GFX_0C
|00CFCD| db ^GFX_0D
|00CFCE| db ^GFX_0E
|00CFCF| db ^GFX_0F
|00CFD0| db ^GFX_10
|00CFD1| db ^GFX_11
|00CFD2| db ^GFX_12
|00CFD3| db ^GFX_13
|00CFD4| db ^GFX_14
|00CFD5| db ^GFX_15
|00CFD6| db ^GFX_16
|00CFD7| db ^GFX_17
|00CFD8| db ^GFX_18
|00CFD9| db ^GFX_19
|00CFDA| db ^GFX_1A
|00CFDB| db ^GFX_1B
|00CFDC| db ^GFX_1C
|00CFDD| db ^GFX_1D
|00CFDE| db ^GFX_1E
|00CFDF| db ^GFX_1F
|00CFE0| db ^GFX_20
|00CFE1| db ^GFX_21
|00CFE2| db ^GFX_22
|00CFE3| db ^GFX_23
|00CFE4| db ^GFX_24
|00CFE5| db ^GFX_25
|00CFE6| db ^GFX_26
|00CFE7| db ^GFX_27
|00CFE8| db ^GFX_28
|00CFE9| db ^GFX_29
|00CFEA| db ^GFX_2A
|00CFEB| db ^GFX_2B
|00CFEC| db ^GFX_2C
|00CFED| db ^GFX_2D
|00CFEE| db ^GFX_2E
|00CFEF| db ^GFX_2F
|00CFF0| db ^GFX_30
|00CFF1| db ^GFX_31
|00CFF2| db ^GFX_32
|00CFF3| db ^GFX_33
|00CFF4| db ^GFX_34
|00CFF5| db ^GFX_35
|00CFF6| db ^GFX_36
|00CFF7| db ^GFX_37
|00CFF8| db ^GFX_38
|00CFF9| db ^GFX_39
|00CFFA| db ^GFX_3A
|00CFFB| db ^GFX_3B
|00CFFC| db ^GFX_3C
|00CFFD| db ^GFX_3D
|00CFFE| db ^GFX_3E
|00CFFF| db ^GFX_3F
|00D000| db ^GFX_40
|00D001| db ^GFX_41
|00D002| db ^GFX_42
|00D003| db ^GFX_43
|00D004| db ^GFX_44
|00D005| db ^GFX_45
|00D006| db ^GFX_46
|00D007| db ^GFX_47
|00D008| db ^GFX_48
|00D009| db ^GFX_49
|00D00A| db ^GFX_4A
|00D00B| db ^GFX_4B
|00D00C| db ^GFX_4C
|00D00D| db ^GFX_4D
|00D00E| db ^GFX_4E
|00D00F| db ^GFX_4F
|00D010| db ^GFX_50
|00D011| db ^GFX_51
|00D012| db ^GFX_52
|00D013| db ^GFX_53
|00D014| db ^GFX_54
|00D015| db ^GFX_55
|00D016| db ^GFX_56
|00D017| db ^GFX_57
|00D018| db ^GFX_58
|00D019| db ^GFX_59
|00D01A| db ^GFX_5A
|00D01B| db ^GFX_5B
|00D01C| db ^GFX_5C
|00D01D| db ^GFX_5D
|00D01E| db ^GFX_5E
|00D01F| db ^GFX_5F
|00D020| db ^GFX_60
|00D021| db ^GFX_61
|00D022| db ^GFX_62
|00D023| db ^GFX_63
|00D024| db ^GFX_64
|00D025| db ^GFX_65
|00D026| db ^GFX_66
|00D027| db ^GFX_67
|00D028| db ^GFX_68
|00D029| db ^GFX_69
|00D02A| db ^GFX_6A
|00D02B| db ^GFX_6B
|00D02C| db ^GFX_6C
|00D02D| db ^GFX_6D
|00D02E| db ^GFX_6E
|00D02F| db ^GFX_6F
|00D030| db ^GFX_70
|00D031| db ^GFX_71
|00D032| db ^GFX_72

;---------------------------------------------------------------------------------------------------

.sprite_bank
|00D033| db ^GFX_73 ; 0x00
|00D034| db ^GFX_74 ; 0x01
|00D035| db ^GFX_75 ; 0x02
|00D036| db ^GFX_76 ; 0x03
|00D037| db ^GFX_77 ; 0x04
|00D038| db ^GFX_78 ; 0x05
|00D039| db ^GFX_79 ; 0x06
|00D03A| db ^GFX_7A ; 0x07
|00D03B| db ^GFX_7B ; 0x08
|00D03C| db ^GFX_7C ; 0x09
|00D03D| db ^GFX_7D ; 0x0A
|00D03E| db ^GFX_7E ; 0x0B
|00D03F| db ^GFX_7F ; 0x0C
|00D040| db ^GFX_80 ; 0x0D
|00D041| db ^GFX_81 ; 0x0E
|00D042| db ^GFX_82 ; 0x0F
|00D043| db ^GFX_83 ; 0x10
|00D044| db ^GFX_84 ; 0x11
|00D045| db ^GFX_85 ; 0x12
|00D046| db ^GFX_86 ; 0x13
|00D047| db ^GFX_87 ; 0x14
|00D048| db ^GFX_88 ; 0x15
|00D049| db ^GFX_89 ; 0x16
|00D04A| db ^GFX_8A ; 0x17
|00D04B| db ^GFX_8B ; 0x18
|00D04C| db ^GFX_8C ; 0x19
|00D04D| db ^GFX_8D ; 0x1A
|00D04E| db ^GFX_8E ; 0x1B
|00D04F| db ^GFX_8F ; 0x1C
|00D050| db ^GFX_90 ; 0x1D
|00D051| db ^GFX_91 ; 0x1E
|00D052| db ^GFX_92 ; 0x1F
|00D053| db ^GFX_93 ; 0x20
|00D054| db ^GFX_94 ; 0x21
|00D055| db ^GFX_95 ; 0x22
|00D056| db ^GFX_96 ; 0x23
|00D057| db ^GFX_97 ; 0x24
|00D058| db ^GFX_98 ; 0x25
|00D059| db ^GFX_99 ; 0x26
|00D05A| db ^GFX_9A ; 0x27
|00D05B| db ^GFX_9B ; 0x28
|00D05C| db ^GFX_9C ; 0x29
|00D05D| db ^GFX_9D ; 0x2A
|00D05E| db ^GFX_9E ; 0x2B
|00D05F| db ^GFX_9F ; 0x2C
|00D060| db ^GFX_A0 ; 0x2D
|00D061| db ^GFX_A1 ; 0x2E
|00D062| db ^GFX_A2 ; 0x2F
|00D063| db ^GFX_A3 ; 0x30
|00D064| db ^GFX_A4 ; 0x31
|00D065| db ^GFX_A5 ; 0x32
|00D066| db ^GFX_A6 ; 0x33
|00D067| db ^GFX_A7 ; 0x34
|00D068| db ^GFX_A8 ; 0x35
|00D069| db ^GFX_A9 ; 0x36
|00D06A| db ^GFX_AA ; 0x37
|00D06B| db ^GFX_AB ; 0x38
|00D06C| db ^GFX_AC ; 0x39
|00D06D| db ^GFX_AD ; 0x3A
|00D06E| db ^GFX_AE ; 0x3B
|00D06F| db ^GFX_AF ; 0x3C
|00D070| db ^GFX_B0 ; 0x3D
|00D071| db ^GFX_B1 ; 0x3E
|00D072| db ^GFX_B2 ; 0x3F
|00D073| db ^GFX_B3 ; 0x40
|00D074| db ^GFX_B4 ; 0x41
|00D075| db ^GFX_B5 ; 0x42
|00D076| db ^GFX_B6 ; 0x43
|00D077| db ^GFX_B7 ; 0x44
|00D078| db ^GFX_B8 ; 0x45
|00D079| db ^GFX_B9 ; 0x46
|00D07A| db ^GFX_BA ; 0x47
|00D07B| db ^GFX_BB ; 0x48
|00D07C| db ^GFX_BC ; 0x49
|00D07D| db ^GFX_BD ; 0x4A
|00D07E| db ^GFX_BE ; 0x4B
|00D07F| db ^GFX_BF ; 0x4C
|00D080| db ^GFX_C0 ; 0x4D
|00D081| db ^GFX_C1 ; 0x4E
|00D082| db ^GFX_C2 ; 0x4F
|00D083| db ^GFX_C3 ; 0x50
|00D084| db ^GFX_C4 ; 0x51
|00D085| db ^GFX_C5 ; 0x52
|00D086| db ^GFX_C6 ; 0x53
|00D087| db ^GFX_C7 ; 0x54
|00D088| db ^GFX_C8 ; 0x55
|00D089| db ^GFX_C9 ; 0x56
|00D08A| db ^GFX_CA ; 0x57
|00D08B| db ^GFX_CB ; 0x58
|00D08C| db ^GFX_CC ; 0x59
|00D08D| db ^GFX_CD ; 0x5A
|00D08E| db ^GFX_CE ; 0x5B
|00D08F| db ^GFX_CF ; 0x5C
|00D090| db ^GFX_D0 ; 0x5D
|00D091| db ^GFX_D1 ; 0x5E
|00D092| db ^GFX_D2 ; 0x5F
|00D093| db ^GFX_D3 ; 0x60
|00D094| db ^GFX_D4 ; 0x61
|00D095| db ^GFX_D5 ; 0x62
|00D096| db ^GFX_D6 ; 0x63
|00D097| db ^GFX_D7 ; 0x64
|00D098| db ^GFX_D8 ; 0x65
|00D099| db ^GFX_D9 ; 0x66
|00D09A| db ^GFX_DA ; 0x67
|00D09B| db ^GFX_DB ; 0x68
|00D09C| db ^GFX_DC ; 0x69
|00D09D| db ^GFX_DD ; 0x6A
|00D09E| db ^GFX_DE ; 0x6B

;---------------------------------------------------------------------------------------------------

.background_high
|00D09F| db >GFX_00
|00D0A0| db >GFX_01
|00D0A1| db >GFX_02
|00D0A2| db >GFX_03
|00D0A3| db >GFX_04
|00D0A4| db >GFX_05
|00D0A5| db >GFX_06
|00D0A6| db >GFX_07
|00D0A7| db >GFX_08
|00D0A8| db >GFX_09
|00D0A9| db >GFX_0A
|00D0AA| db >GFX_0B
|00D0AB| db >GFX_0C
|00D0AC| db >GFX_0D
|00D0AD| db >GFX_0E
|00D0AE| db >GFX_0F
|00D0AF| db >GFX_10
|00D0B0| db >GFX_11
|00D0B1| db >GFX_12
|00D0B2| db >GFX_13
|00D0B3| db >GFX_14
|00D0B4| db >GFX_15
|00D0B5| db >GFX_16
|00D0B6| db >GFX_17
|00D0B7| db >GFX_18
|00D0B8| db >GFX_19
|00D0B9| db >GFX_1A
|00D0BA| db >GFX_1B
|00D0BB| db >GFX_1C
|00D0BC| db >GFX_1D
|00D0BD| db >GFX_1E
|00D0BE| db >GFX_1F
|00D0BF| db >GFX_20
|00D0C0| db >GFX_21
|00D0C1| db >GFX_22
|00D0C2| db >GFX_23
|00D0C3| db >GFX_24
|00D0C4| db >GFX_25
|00D0C5| db >GFX_26
|00D0C6| db >GFX_27
|00D0C7| db >GFX_28
|00D0C8| db >GFX_29
|00D0C9| db >GFX_2A
|00D0CA| db >GFX_2B
|00D0CB| db >GFX_2C
|00D0CC| db >GFX_2D
|00D0CD| db >GFX_2E
|00D0CE| db >GFX_2F
|00D0CF| db >GFX_30
|00D0D0| db >GFX_31
|00D0D1| db >GFX_32
|00D0D2| db >GFX_33
|00D0D3| db >GFX_34
|00D0D4| db >GFX_35
|00D0D5| db >GFX_36
|00D0D6| db >GFX_37
|00D0D7| db >GFX_38
|00D0D8| db >GFX_39
|00D0D9| db >GFX_3A
|00D0DA| db >GFX_3B
|00D0DB| db >GFX_3C
|00D0DC| db >GFX_3D
|00D0DD| db >GFX_3E
|00D0DE| db >GFX_3F
|00D0DF| db >GFX_40
|00D0E0| db >GFX_41
|00D0E1| db >GFX_42
|00D0E2| db >GFX_43
|00D0E3| db >GFX_44
|00D0E4| db >GFX_45
|00D0E5| db >GFX_46
|00D0E6| db >GFX_47
|00D0E7| db >GFX_48
|00D0E8| db >GFX_49
|00D0E9| db >GFX_4A
|00D0EA| db >GFX_4B
|00D0EB| db >GFX_4C
|00D0EC| db >GFX_4D
|00D0ED| db >GFX_4E
|00D0EE| db >GFX_4F
|00D0EF| db >GFX_50
|00D0F0| db >GFX_51
|00D0F1| db >GFX_52
|00D0F2| db >GFX_53
|00D0F3| db >GFX_54
|00D0F4| db >GFX_55
|00D0F5| db >GFX_56
|00D0F6| db >GFX_57
|00D0F7| db >GFX_58
|00D0F8| db >GFX_59
|00D0F9| db >GFX_5A
|00D0FA| db >GFX_5B
|00D0FB| db >GFX_5C
|00D0FC| db >GFX_5D
|00D0FD| db >GFX_5E
|00D0FE| db >GFX_5F
|00D0FF| db >GFX_60
|00D100| db >GFX_61
|00D101| db >GFX_62
|00D102| db >GFX_63
|00D103| db >GFX_64
|00D104| db >GFX_65
|00D105| db >GFX_66
|00D106| db >GFX_67
|00D107| db >GFX_68
|00D108| db >GFX_69
|00D109| db >GFX_6A
|00D10A| db >GFX_6B
|00D10B| db >GFX_6C
|00D10C| db >GFX_6D
|00D10D| db >GFX_6E
|00D10E| db >GFX_6F
|00D10F| db >GFX_70
|00D110| db >GFX_71
|00D111| db >GFX_72

;---------------------------------------------------------------------------------------------------

.sprite_high
|00D112| db >GFX_73 ; 0x00
|00D113| db >GFX_74 ; 0x01
|00D114| db >GFX_75 ; 0x02
|00D115| db >GFX_76 ; 0x03
|00D116| db >GFX_77 ; 0x04
|00D117| db >GFX_78 ; 0x05
|00D118| db >GFX_79 ; 0x06
|00D119| db >GFX_7A ; 0x07
|00D11A| db >GFX_7B ; 0x08
|00D11B| db >GFX_7C ; 0x09
|00D11C| db >GFX_7D ; 0x0A
|00D11D| db >GFX_7E ; 0x0B
|00D11E| db >GFX_7F ; 0x0C
|00D11F| db >GFX_80 ; 0x0D
|00D120| db >GFX_81 ; 0x0E
|00D121| db >GFX_82 ; 0x0F
|00D122| db >GFX_83 ; 0x10
|00D123| db >GFX_84 ; 0x11
|00D124| db >GFX_85 ; 0x12
|00D125| db >GFX_86 ; 0x13
|00D126| db >GFX_87 ; 0x14
|00D127| db >GFX_88 ; 0x15
|00D128| db >GFX_89 ; 0x16
|00D129| db >GFX_8A ; 0x17
|00D12A| db >GFX_8B ; 0x18
|00D12B| db >GFX_8C ; 0x19
|00D12C| db >GFX_8D ; 0x1A
|00D12D| db >GFX_8E ; 0x1B
|00D12E| db >GFX_8F ; 0x1C
|00D12F| db >GFX_90 ; 0x1D
|00D130| db >GFX_91 ; 0x1E
|00D131| db >GFX_92 ; 0x1F
|00D132| db >GFX_93 ; 0x20
|00D133| db >GFX_94 ; 0x21
|00D134| db >GFX_95 ; 0x22
|00D135| db >GFX_96 ; 0x23
|00D136| db >GFX_97 ; 0x24
|00D137| db >GFX_98 ; 0x25
|00D138| db >GFX_99 ; 0x26
|00D139| db >GFX_9A ; 0x27
|00D13A| db >GFX_9B ; 0x28
|00D13B| db >GFX_9C ; 0x29
|00D13C| db >GFX_9D ; 0x2A
|00D13D| db >GFX_9E ; 0x2B
|00D13E| db >GFX_9F ; 0x2C
|00D13F| db >GFX_A0 ; 0x2D
|00D140| db >GFX_A1 ; 0x2E
|00D141| db >GFX_A2 ; 0x2F
|00D142| db >GFX_A3 ; 0x30
|00D143| db >GFX_A4 ; 0x31
|00D144| db >GFX_A5 ; 0x32
|00D145| db >GFX_A6 ; 0x33
|00D146| db >GFX_A7 ; 0x34
|00D147| db >GFX_A8 ; 0x35
|00D148| db >GFX_A9 ; 0x36
|00D149| db >GFX_AA ; 0x37
|00D14A| db >GFX_AB ; 0x38
|00D14B| db >GFX_AC ; 0x39
|00D14C| db >GFX_AD ; 0x3A
|00D14D| db >GFX_AE ; 0x3B
|00D14E| db >GFX_AF ; 0x3C
|00D14F| db >GFX_B0 ; 0x3D
|00D150| db >GFX_B1 ; 0x3E
|00D151| db >GFX_B2 ; 0x3F
|00D152| db >GFX_B3 ; 0x40
|00D153| db >GFX_B4 ; 0x41
|00D154| db >GFX_B5 ; 0x42
|00D155| db >GFX_B6 ; 0x43
|00D156| db >GFX_B7 ; 0x44
|00D157| db >GFX_B8 ; 0x45
|00D158| db >GFX_B9 ; 0x46
|00D159| db >GFX_BA ; 0x47
|00D15A| db >GFX_BB ; 0x48
|00D15B| db >GFX_BC ; 0x49
|00D15C| db >GFX_BD ; 0x4A
|00D15D| db >GFX_BE ; 0x4B
|00D15E| db >GFX_BF ; 0x4C
|00D15F| db >GFX_C0 ; 0x4D
|00D160| db >GFX_C1 ; 0x4E
|00D161| db >GFX_C2 ; 0x4F
|00D162| db >GFX_C3 ; 0x50
|00D163| db >GFX_C4 ; 0x51
|00D164| db >GFX_C5 ; 0x52
|00D165| db >GFX_C6 ; 0x53
|00D166| db >GFX_C7 ; 0x54
|00D167| db >GFX_C8 ; 0x55
|00D168| db >GFX_C9 ; 0x56
|00D169| db >GFX_CA ; 0x57
|00D16A| db >GFX_CB ; 0x58
|00D16B| db >GFX_CC ; 0x59
|00D16C| db >GFX_CD ; 0x5A
|00D16D| db >GFX_CE ; 0x5B
|00D16E| db >GFX_CF ; 0x5C
|00D16F| db >GFX_D0 ; 0x5D
|00D170| db >GFX_D1 ; 0x5E
|00D171| db >GFX_D2 ; 0x5F
|00D172| db >GFX_D3 ; 0x60
|00D173| db >GFX_D4 ; 0x61
|00D174| db >GFX_D5 ; 0x62
|00D175| db >GFX_D6 ; 0x63
|00D176| db >GFX_D7 ; 0x64
|00D177| db >GFX_D8 ; 0x65
|00D178| db >GFX_D9 ; 0x66
|00D179| db >GFX_DA ; 0x67
|00D17A| db >GFX_DB ; 0x68
|00D17B| db >GFX_DC ; 0x69
|00D17C| db >GFX_DD ; 0x6A
|00D17D| db >GFX_DE ; 0x6B

;---------------------------------------------------------------------------------------------------

.background_low
|00D17E| db <GFX_00
|00D17F| db <GFX_01
|00D180| db <GFX_02
|00D181| db <GFX_03
|00D182| db <GFX_04
|00D183| db <GFX_05
|00D184| db <GFX_06
|00D185| db <GFX_07
|00D186| db <GFX_08
|00D187| db <GFX_09
|00D188| db <GFX_0A
|00D189| db <GFX_0B
|00D18A| db <GFX_0C
|00D18B| db <GFX_0D
|00D18C| db <GFX_0E
|00D18D| db <GFX_0F
|00D18E| db <GFX_10
|00D18F| db <GFX_11
|00D190| db <GFX_12
|00D191| db <GFX_13
|00D192| db <GFX_14
|00D193| db <GFX_15
|00D194| db <GFX_16
|00D195| db <GFX_17
|00D196| db <GFX_18
|00D197| db <GFX_19
|00D198| db <GFX_1A
|00D199| db <GFX_1B
|00D19A| db <GFX_1C
|00D19B| db <GFX_1D
|00D19C| db <GFX_1E
|00D19D| db <GFX_1F
|00D19E| db <GFX_20
|00D19F| db <GFX_21
|00D1A0| db <GFX_22
|00D1A1| db <GFX_23
|00D1A2| db <GFX_24
|00D1A3| db <GFX_25
|00D1A4| db <GFX_26
|00D1A5| db <GFX_27
|00D1A6| db <GFX_28
|00D1A7| db <GFX_29
|00D1A8| db <GFX_2A
|00D1A9| db <GFX_2B
|00D1AA| db <GFX_2C
|00D1AB| db <GFX_2D
|00D1AC| db <GFX_2E
|00D1AD| db <GFX_2F
|00D1AE| db <GFX_30
|00D1AF| db <GFX_31
|00D1B0| db <GFX_32
|00D1B1| db <GFX_33
|00D1B2| db <GFX_34
|00D1B3| db <GFX_35
|00D1B4| db <GFX_36
|00D1B5| db <GFX_37
|00D1B6| db <GFX_38
|00D1B7| db <GFX_39
|00D1B8| db <GFX_3A
|00D1B9| db <GFX_3B
|00D1BA| db <GFX_3C
|00D1BB| db <GFX_3D
|00D1BC| db <GFX_3E
|00D1BD| db <GFX_3F
|00D1BE| db <GFX_40
|00D1BF| db <GFX_41
|00D1C0| db <GFX_42
|00D1C1| db <GFX_43
|00D1C2| db <GFX_44
|00D1C3| db <GFX_45
|00D1C4| db <GFX_46
|00D1C5| db <GFX_47
|00D1C6| db <GFX_48
|00D1C7| db <GFX_49
|00D1C8| db <GFX_4A
|00D1C9| db <GFX_4B
|00D1CA| db <GFX_4C
|00D1CB| db <GFX_4D
|00D1CC| db <GFX_4E
|00D1CD| db <GFX_4F
|00D1CE| db <GFX_50
|00D1CF| db <GFX_51
|00D1D0| db <GFX_52
|00D1D1| db <GFX_53
|00D1D2| db <GFX_54
|00D1D3| db <GFX_55
|00D1D4| db <GFX_56
|00D1D5| db <GFX_57
|00D1D6| db <GFX_58
|00D1D7| db <GFX_59
|00D1D8| db <GFX_5A
|00D1D9| db <GFX_5B
|00D1DA| db <GFX_5C
|00D1DB| db <GFX_5D
|00D1DC| db <GFX_5E
|00D1DD| db <GFX_5F
|00D1DE| db <GFX_60
|00D1DF| db <GFX_61
|00D1E0| db <GFX_62
|00D1E1| db <GFX_63
|00D1E2| db <GFX_64
|00D1E3| db <GFX_65
|00D1E4| db <GFX_66
|00D1E5| db <GFX_67
|00D1E6| db <GFX_68
|00D1E7| db <GFX_69
|00D1E8| db <GFX_6A
|00D1E9| db <GFX_6B
|00D1EA| db <GFX_6C
|00D1EB| db <GFX_6D
|00D1EC| db <GFX_6E
|00D1ED| db <GFX_6F
|00D1EE| db <GFX_70
|00D1EF| db <GFX_71
|00D1F0| db <GFX_72

;---------------------------------------------------------------------------------------------------

.sprite_low
|00D1F1| db <GFX_73 ; 0x00
|00D1F2| db <GFX_74 ; 0x01
|00D1F3| db <GFX_75 ; 0x02
|00D1F4| db <GFX_76 ; 0x03
|00D1F5| db <GFX_77 ; 0x04
|00D1F6| db <GFX_78 ; 0x05
|00D1F7| db <GFX_79 ; 0x06
|00D1F8| db <GFX_7A ; 0x07
|00D1F9| db <GFX_7B ; 0x08
|00D1FA| db <GFX_7C ; 0x09
|00D1FB| db <GFX_7D ; 0x0A
|00D1FC| db <GFX_7E ; 0x0B
|00D1FD| db <GFX_7F ; 0x0C
|00D1FE| db <GFX_80 ; 0x0D
|00D1FF| db <GFX_81 ; 0x0E
|00D200| db <GFX_82 ; 0x0F
|00D201| db <GFX_83 ; 0x10
|00D202| db <GFX_84 ; 0x11
|00D203| db <GFX_85 ; 0x12
|00D204| db <GFX_86 ; 0x13
|00D205| db <GFX_87 ; 0x14
|00D206| db <GFX_88 ; 0x15
|00D207| db <GFX_89 ; 0x16
|00D208| db <GFX_8A ; 0x17
|00D209| db <GFX_8B ; 0x18
|00D20A| db <GFX_8C ; 0x19
|00D20B| db <GFX_8D ; 0x1A
|00D20C| db <GFX_8E ; 0x1B
|00D20D| db <GFX_8F ; 0x1C
|00D20E| db <GFX_90 ; 0x1D
|00D20F| db <GFX_91 ; 0x1E
|00D210| db <GFX_92 ; 0x1F
|00D211| db <GFX_93 ; 0x20
|00D212| db <GFX_94 ; 0x21
|00D213| db <GFX_95 ; 0x22
|00D214| db <GFX_96 ; 0x23
|00D215| db <GFX_97 ; 0x24
|00D216| db <GFX_98 ; 0x25
|00D217| db <GFX_99 ; 0x26
|00D218| db <GFX_9A ; 0x27
|00D219| db <GFX_9B ; 0x28
|00D21A| db <GFX_9C ; 0x29
|00D21B| db <GFX_9D ; 0x2A
|00D21C| db <GFX_9E ; 0x2B
|00D21D| db <GFX_9F ; 0x2C
|00D21E| db <GFX_A0 ; 0x2D
|00D21F| db <GFX_A1 ; 0x2E
|00D220| db <GFX_A2 ; 0x2F
|00D221| db <GFX_A3 ; 0x30
|00D222| db <GFX_A4 ; 0x31
|00D223| db <GFX_A5 ; 0x32
|00D224| db <GFX_A6 ; 0x33
|00D225| db <GFX_A7 ; 0x34
|00D226| db <GFX_A8 ; 0x35
|00D227| db <GFX_A9 ; 0x36
|00D228| db <GFX_AA ; 0x37
|00D229| db <GFX_AB ; 0x38
|00D22A| db <GFX_AC ; 0x39
|00D22B| db <GFX_AD ; 0x3A
|00D22C| db <GFX_AE ; 0x3B
|00D22D| db <GFX_AF ; 0x3C
|00D22E| db <GFX_B0 ; 0x3D
|00D22F| db <GFX_B1 ; 0x3E
|00D230| db <GFX_B2 ; 0x3F
|00D231| db <GFX_B3 ; 0x40
|00D232| db <GFX_B4 ; 0x41
|00D233| db <GFX_B5 ; 0x42
|00D234| db <GFX_B6 ; 0x43
|00D235| db <GFX_B7 ; 0x44
|00D236| db <GFX_B8 ; 0x45
|00D237| db <GFX_B9 ; 0x46
|00D238| db <GFX_BA ; 0x47
|00D239| db <GFX_BB ; 0x48
|00D23A| db <GFX_BC ; 0x49
|00D23B| db <GFX_BD ; 0x4A
|00D23C| db <GFX_BE ; 0x4B
|00D23D| db <GFX_BF ; 0x4C
|00D23E| db <GFX_C0 ; 0x4D
|00D23F| db <GFX_C1 ; 0x4E
|00D240| db <GFX_C2 ; 0x4F
|00D241| db <GFX_C3 ; 0x50
|00D242| db <GFX_C4 ; 0x51
|00D243| db <GFX_C5 ; 0x52
|00D244| db <GFX_C6 ; 0x53
|00D245| db <GFX_C7 ; 0x54
|00D246| db <GFX_C8 ; 0x55
|00D247| db <GFX_C9 ; 0x56
|00D248| db <GFX_CA ; 0x57
|00D249| db <GFX_CB ; 0x58
|00D24A| db <GFX_CC ; 0x59
|00D24B| db <GFX_CD ; 0x5A
|00D24C| db <GFX_CE ; 0x5B
|00D24D| db <GFX_CF ; 0x5C
|00D24E| db <GFX_D0 ; 0x5D
|00D24F| db <GFX_D1 ; 0x5E
|00D250| db <GFX_D2 ; 0x5F
|00D251| db <GFX_D3 ; 0x60
|00D252| db <GFX_D4 ; 0x61
|00D253| db <GFX_D5 ; 0x62
|00D254| db <GFX_D6 ; 0x63
|00D255| db <GFX_D7 ; 0x64
|00D256| db <GFX_D8 ; 0x65
|00D257| db <GFX_D9 ; 0x66
|00D258| db <GFX_DA ; 0x67
|00D259| db <GFX_DB ; 0x68
|00D25A| db <GFX_DC ; 0x69
|00D25B| db <GFX_DD ; 0x6A
|00D25C| db <GFX_DE ; 0x6B

;===================================================================================================

pool LoadItemGFX

.offset
|00D25D| dw $0000 ; rods
|00D25F| dw $0108 ; hammer
|00D261| dw $00C0 ; bow
|00D263| dw $0390 ; shovel
|00D265| dw $03F0 ; Zzz ♪
|00D267| dw $0438 ; powder dust
|00D269| dw $0330 ; hookshot
|00D26B| dw $0048 ; net
|00D26D| dw $0318 ; cane
|00D26F| dw $0450 ; book

endpool

;===================================================================================================

LoadItemGFXIntoWRAM4BPPBuffer:
|00D271| PHB
|00D272| PHK
|00D273| PLB

|00D274| REP #$20

|00D276| STZ.b $0A
|00D278| STZ.b $0C

|00D27A| LDA.w #$0480
|00D27D| STA.b $06

|00D27F| SEP #$20

; rods
|00D281| LDA.b #$07
|00D283| JSR LoadItemGFX_sheet0

; hammer
|00D286| LDA.b #$07
|00D288| JSR LoadItemGFX_sheet0

; bow
|00D28B| LDA.b #$03
|00D28D| JSR LoadItemGFX_sheet0

; shovel
|00D290| LDY.b #$5F
|00D292| LDA.b #$04
|00D294| JSR LoadItemGFX_arbitrary_sheet

; Zzz ♪
|00D297| LDA.b #$03
|00D299| JSR LoadItemGFX_current_sheet

; powder dust
|00D29C| LDA.b #$01
|00D29E| JSR LoadItemGFX_current_sheet

; hookshot
|00D2A1| LDA.b #$04
|00D2A3| JSR LoadItemGFX_sheet0

; net
|00D2A6| LDY.b #$60
|00D2A8| LDA.b #$0E
|00D2AA| JSR LoadItemGFX_arbitrary_sheet

; cane
|00D2AD| LDA.b #$07
|00D2AF| JSR LoadItemGFX_current_sheet

; book
|00D2B2| LDY.b #$5F
|00D2B4| LDA.b #$02
|00D2B6| JSR LoadItemGFX_arbitrary_sheet

;---------------------------------------------------------------------------------------------------

; push blocks
|00D2B9| LDY.b #$54
|00D2BB| JSR Decompress_sprite_low

|00D2BE| REP #$30

|00D2C0| LDA.b $00

|00D2C2| LDX.w #$1480

|00D2C5| PHA

|00D2C6| LDY.w #$0008
|00D2C9| JSR Do3bppToWRAM4bpp_RightPal.arbitrary

|00D2CC| PLA
|00D2CD| CLC
|00D2CE| ADC.w #$0180

|00D2D1| LDY.w #$0008
|00D2D4| JSR Do3bppToWRAM4bpp_RightPal.arbitrary

;---------------------------------------------------------------------------------------------------

; animated rupees
|00D2D7| SEP #$30

|00D2D9| LDY.b #$60
|00D2DB| JSR Decompress_sprite_low

|00D2DE| REP #$30

|00D2E0| LDA.b $00
|00D2E2| LDX.w #$2280
|00D2E5| LDY.w #$0003

|00D2E8| PHA

|00D2E9| JSR Do3bppToWRAM4bpp_RightPal.arbitrary

|00D2EC| PLA
|00D2ED| CLC
|00D2EE| ADC.w #$0180

|00D2F1| LDY.w #$0003
|00D2F4| JSR Do3bppToWRAM4bpp_RightPal.arbitrary

|00D2F7| SEP #$30

|00D2F9| JSR LoadAuxiliaryWRAMGraphics

|00D2FC| PLB

|00D2FD| RTL

;===================================================================================================

pool DecompressSwordGraphics

.offset
|00D2FE| dw $0000 ; none
|00D300| dw $0000 ; fighter sword
|00D302| dw $0120 ; master sword
|00D304| dw $0120 ; tempered sword
|00D306| dw $0120 ; gold sword

endpool

;---------------------------------------------------------------------------------------------------

DecompressSwordGraphics:
|00D308| PHB
|00D309| PHK
|00D30A| PLB

|00D30B| LDY.b #$5F
|00D30D| JSR Decompress_sprite_high

|00D310| LDY.b #$5E
|00D312| JSR Decompress_sprite_low

|00D315| REP #$21

|00D317| LDA.l $7EF359
|00D31B| AND.w #$00FF
|00D31E| ASL A
|00D31F| TAY

|00D320| LDA.b $00
|00D322| ADC.w .offset,Y

|00D325| REP #$10

|00D327| LDX.w #$0000
|00D32A| LDY.w #$000C

|00D32D| PHA

|00D32E| JSR Do3bppToWRAM4bpp_RightPal.arbitrary

|00D331| PLA
|00D332| CLC
|00D333| ADC.w #$0180

|00D336| LDY.w #$000C
|00D339| JSR Do3bppToWRAM4bpp_RightPal.arbitrary

|00D33C| SEP #$30

|00D33E| PLB

|00D33F| RTL

;===================================================================================================

pool DecompressShieldGraphics

.offset
|00D340| dw $0660 ; none
|00D342| dw $0660 ; fighter shield
|00D344| dw $06F0 ; fire shield
|00D346| dw $0900 ; mirror shield

endpool

;---------------------------------------------------------------------------------------------------

DecompressShieldGraphics:
|00D348| PHB
|00D349| PHK
|00D34A| PLB

|00D34B| LDY.b #$5F
|00D34D| JSR Decompress_sprite_high

|00D350| LDY.b #$5E
|00D352| JSR Decompress_sprite_low

|00D355| REP #$21

|00D357| LDA.l $7EF35A
|00D35B| ASL A
|00D35C| TAY

|00D35D| LDA.b $00
|00D35F| ADC.w .offset,Y

|00D362| REP #$10

|00D364| LDX.w #$0300

|00D367| PHA

|00D368| JSR Do3bppToWRAM4bpp_RightPal

|00D36B| PLA
|00D36C| CLC
|00D36D| ADC.w #$0180
|00D370| JSR Do3bppToWRAM4bpp_RightPal

|00D373| SEP #$30

|00D375| PLB

|00D376| RTL

;===================================================================================================

DecompressAnimatedUnderworldTiles:
|00D377| PHB
|00D378| PHK
|00D379| PLB

|00D37A| JSR Decompress_background_low

|00D37D| REP #$30

|00D37F| LDA.b $00
|00D381| LDY.w #$0030
|00D384| LDX.w #$1680
|00D387| JSR Do3bppToWRAM4bpp_LeftPal.arbitrary

|00D38A| SEP #$30

|00D38C| LDY.b #$5C
|00D38E| JSR Decompress_background_low

|00D391| REP #$30

|00D393| LDA.b $00
|00D395| LDY.w #$0030
|00D398| LDX.w #$1C80
|00D39B| JSR Do3bppToWRAM4bpp_LeftPal.arbitrary

;---------------------------------------------------------------------------------------------------

|00D39E| LDX.w #$0000

.next_tile_frame
|00D3A1| LDA.l $7EA880,X
|00D3A5| PHA

|00D3A6| LDA.l $7EAC80,X
|00D3AA| STA.l $7EA880,X

|00D3AE| LDA.l $7EAE80,X
|00D3B2| STA.l $7EAC80,X

|00D3B6| LDA.l $7EAA80,X
|00D3BA| STA.l $7EAE80,X

|00D3BE| PLA
|00D3BF| STA.l $7EAA80,X

|00D3C3| INX
|00D3C4| INX
|00D3C5| CPX.w #$0200
|00D3C8| BNE .next_tile_frame

;---------------------------------------------------------------------------------------------------

|00D3CA| LDA.w #$3B00 ; VRAM $7600
|00D3CD| STA.w $0134

|00D3D0| SEP #$30

|00D3D2| PLB

|00D3D3| RTL

;===================================================================================================

DecompressAnimatedOverworldTiles:
|00D3D4| PHB
|00D3D5| PHK
|00D3D6| PLB

|00D3D7| PHY

|00D3D8| JSR Decompress_background_low

|00D3DB| REP #$30

|00D3DD| LDA.b $00
|00D3DF| LDY.w #$0040
|00D3E2| LDX.w #$1680
|00D3E5| JSR Do3bppToWRAM4bpp_LeftPal.arbitrary

|00D3E8| SEP #$30

|00D3EA| PLY
|00D3EB| INY

|00D3EC| JSR Decompress_background_low

|00D3EF| REP #$30

|00D3F1| LDA.b $00
|00D3F3| LDY.w #$0020
|00D3F6| LDX.w #$1E80
|00D3F9| JSR Do3bppToWRAM4bpp_LeftPal.arbitrary

|00D3FC| LDA.w #$3C00 ; VRAM $7800
|00D3FF| STA.w $0134

|00D402| SEP #$30

|00D404| PLB

|00D405| RTL

;===================================================================================================

LoadAuxiliaryWRAMGraphics:
; switch pegs
|00D406| LDY.b #$0F
|00D408| JSR Decompress_background_low

|00D40B| REP #$30

|00D40D| LDA.b $00
|00D40F| LDY.w #$0010
|00D412| LDX.w #$2340

|00D415| JSR Do3bppToWRAM4bpp_LeftPal.arbitrary

|00D418| SEP #$30

; duck and purple chest
|00D41A| LDY.b #$58
|00D41C| JSR Decompress_sprite_low

|00D41F| REP #$30

|00D421| LDA.b $00
|00D423| LDY.w #$0020
|00D426| LDX.w #$2540

|00D429| JSR Do3bppToWRAM4bpp_LeftPal.arbitrary

; star tiles
|00D42C| SEP #$30

|00D42E| LDY.b #$05
|00D430| JSR Decompress_background_low

|00D433| REP #$30

|00D435| LDA.b $00
|00D437| CLC
|00D438| ADC.w #$0480

|00D43B| LDY.w #$0002
|00D43E| LDX.w #$2DC0
|00D441| JSR Do3bppToWRAM4bpp_LeftPal.arbitrary

|00D444| SEP #$30

|00D446| RTS

;===================================================================================================

pool LoadFollowerGraphics

.gfx_offset
|00D447| dw $0000 ; 0x00 - No follower
|00D449| dw $0600 ; 0x01 - Zelda
|00D44B| dw $0300 ; 0x02 - Old man that stops following you
|00D44D| dw $0300 ; 0x03 - Unused old man
|00D44F| dw $0300 ; 0x04 - Normal old man
|00D451| dw $0000 ; 0x05 - Zelda rescue telepathy
|00D453| dw $0000 ; 0x06 - Blind maiden
|00D455| dw $0900 ; 0x07 - Frogsmith
|00D457| dw $0600 ; 0x08 - Smithy
|00D459| dw $0600 ; 0x09 - Locksmith
|00D45B| dw $0900 ; 0x0A - Kiki
|00D45D| dw $0900 ; 0x0B - Unused old man
|00D45F| dw $0600 ; 0x0C - Purple chest
|00D461| dw $0900 ; 0x0D - Super bomb

endpool

;---------------------------------------------------------------------------------------------------

LoadFollowerGraphics:
|00D463| PHB
|00D464| PHK
|00D465| PLB

|00D466| LDY.b #$64
|00D468| LDA.l $7EF3CC
|00D46C| CMP.b #$01 ; FOLLOWER 01
|00D46E| BEQ .start

|00D470| LDY.b #$66
|00D472| LDA.l $7EF3CC
|00D476| CMP.b #$09 ; FOLLOWER 09
|00D478| BCC .start

|00D47A| LDY.b #$59
|00D47C| CMP.b #$0C
|00D47E| BCC .start

|00D480| LDY.b #$58

;---------------------------------------------------------------------------------------------------

.start
|00D482| JSR Decompress_sprite_high

|00D485| LDY.b #$65
|00D487| JSR Decompress_sprite_low

|00D48A| REP #$30

|00D48C| LDA.l $7EF3CC
|00D490| AND.w #$00FF
|00D493| ASL A
|00D494| TAX

|00D495| LDA.b $00
|00D497| CLC
|00D498| ADC.l .gfx_offset,X

|00D49C| LDY.w #$0020
|00D49F| LDX.w #$2940
|00D4A2| JSR Do3bppToWRAM4bpp_LeftPal.arbitrary

|00D4A5| SEP #$30

|00D4A7| PLB

|00D4A8| RTL

;===================================================================================================

pool WriteTo4BPPBuffer

.offsets
|00D4A9| dw $09C0 ; 0x00 - Full bottle
|00D4AB| dw $0030 ; 0x01 - 3 bombs
|00D4AD| dw $0060 ; 0x02 - 10 arrows
|00D4AF| dw $0090 ; 0x03 - Heart container
|00D4B1| dw $00C0 ; 0x04 - Mail
|00D4B3| dw $0300 ; 0x05 - Bow
|00D4B5| dw $0318 ; 0x06 - Fighter sword
|00D4B7| dw $0330 ; 0x07 - Cane
|00D4B9| dw $0348 ; 0x08 - Hookshot
|00D4BB| dw $0360 ; 0x09 - Rod
|00D4BD| dw $0378 ; 0x0A - Hammer
|00D4BF| dw $0390 ; 0x0B - Powder
|00D4C1| dw $0930 ; 0x0C - Flute
|00D4C3| dw $03F0 ; 0x0D - Glove
|00D4C5| dw $0420 ; 0x0E - Book
|00D4C7| dw $0450 ; 0x0F - Small key
|00D4C9| dw $0468 ; 0x10 - Boomerang
|00D4CB| dw $0600 ; 0x11 - Flippers
|00D4CD| dw $0630 ; 0x12 - Mirror
|00D4CF| dw $0660 ; 0x13 - Bomb
|00D4D1| dw $0690 ; 0x14 - Lamp
|00D4D3| dw $06C0 ; 0x15 - Cape
|00D4D5| dw $06F0 ; 0x16 - Compass
|00D4D7| dw $0720 ; 0x17 - Pearl
|00D4D9| dw $0750 ; 0x18 - Master sword
|00D4DB| dw $0768 ; 0x19 - Shovel
|00D4DD| dw $0900 ; 0x1A - Ether
|00D4DF| dw $0930 ; 0x1B - Bombos
|00D4E1| dw $0960 ; 0x1C - Quake
|00D4E3| dw $0990 ; 0x1D - Empty bottle
|00D4E5| dw $09F0 ; 0x1E - Mushroom
|00D4E7| dw $0000 ; 0x1F - Cauldron
|00D4E9| dw $00F0 ; 0x20 - Fire shield
|00D4EB| dw $0A20 ; 0x21 - Map
|00D4ED| dw $0A50 ; 0x22 - Big key
|00D4EF| dw $0660 ; 0x23 - Pendant
|00D4F1| dw $0600 ; 0x24 - Animated rupee
|00D4F3| dw $0618 ; 0x25 - Animated rupee
|00D4F5| dw $0630 ; 0x26 - Animated rupee
|00D4F7| dw $0648 ; 0x27 - Net
|00D4F9| dw $0678 ; 0x28 - Crystal
|00D4FB| dw $06D8 ; 0x29 - Tossed bow
|00D4FD| dw $06A8 ; 0x2A - Silvers
|00D4FF| dw $0708 ; 0x2B - Bottle with fairy
|00D501| dw $0738 ; 0x2C - Bottle with bee
|00D503| dw $0768 ; 0x2D - Fighter shield
|00D505| dw $0960 ; 0x2E - Mirror shield
|00D507| dw $0900 ; 0x2F - Heart piece
|00D509| dw $03C0 ; 0x30 - 10 bombs
|00D50B| dw $0990 ; 0x31 - Small heart
|00D50D| dw $09A8 ; 0x32 - Small magic
|00D50F| dw $09C0 ; 0x33 - 1 arrow
|00D511| dw $09D8 ; 0x34 - 100 rupees
|00D513| dw $0A08 ; 0x35 - 50 rupees
|00D515| dw $0A38 ; 0x36 - 300 rupees
|00D517| dw $0600 ; 0x37 - 20 rupees
|00D519| dw $0630 ; 0x38 - Boots

endpool

;===================================================================================================

WriteTo4BPPBuffer_at_7F4000:
|00D51B| PHB
|00D51C| PHK
|00D51D| PLB

|00D51E| PHA

|00D51F| STZ.b $00

|00D521| LDA.b #>$7F4000
|00D523| STA.b $01

|00D525| LDA.b #^$7F4000
|00D527| STA.b $02
|00D529| STA.b $05

|00D52B| BRA WriteTo4BPPBuffer

;===================================================================================================

WriteTo4BPPBuffer_item_gfx:
|00D52D| PHB
|00D52E| PHK
|00D52F| PLB

|00D530| PHA

|00D531| LDY.b #$5D
|00D533| CMP.b #$23
|00D535| BEQ .set_a

|00D537| CMP.b #$37
|00D539| BCS .set_a

|00D53B| LDY.b #$5C
|00D53D| CMP.b #$0C
|00D53F| BEQ .set_a

|00D541| CMP.b #$24
|00D543| BCS .set_a

|00D545| LDY.b #$5B

.set_a
|00D547| JSR Decompress_sprite_high

|00D54A| LDY.b #$5A
|00D54C| JSR Decompress_sprite_low

;===================================================================================================

WriteTo4BPPBuffer:
|00D54F| PLA

|00D550| REP #$21

|00D552| AND.w #$00FF
|00D555| ASL A
|00D556| TAX

|00D557| LDA.b $00
|00D559| ADC.w .offsets,X

|00D55C| REP #$10

|00D55E| LDX.w #$2D40
|00D561| LDY.w #$0002

|00D564| PHA

|00D565| JSR Do3bppToWRAM4bpp_RightPal.arbitrary

|00D568| PLA
|00D569| CLC
|00D56A| ADC.w #$0180

|00D56D| LDY.w #$0002
|00D570| JSR Do3bppToWRAM4bpp_RightPal.arbitrary

|00D573| SEP #$30

|00D575| PLB

|00D576| RTL

;===================================================================================================
; Some decomp routine?
;===================================================================================================
LoadItemGFX_sheet0:
|00D577| STA.b $0A

|00D579| LDY.b #$00

|00D57B| LDA.w GFXSheetPointers.sprite_bank,Y
|00D57E| STA.b $02
|00D580| STA.b $05

|00D582| LDA.w GFXSheetPointers.sprite_high,Y
|00D585| STA.b $01

|00D587| LDA.w GFXSheetPointers.sprite_low,Y
|00D58A| STA.b $00

|00D58C| BRA LoadItemGFX

;===================================================================================================

LoadItemGFX_arbitrary_sheet:
|00D58E| PHA

|00D58F| JSR Decompress_sprite_low

|00D592| PLA

;===================================================================================================

LoadItemGFX_current_sheet:
|00D593| STA.b $0A

|00D595| STZ.b $00

|00D597| LDA.b #>$7F4000
|00D599| STA.b $01

|00D59B| LDA.b #^$7F4000
|00D59D| STA.b $02

|00D59F| STA.b $05

;===================================================================================================

LoadItemGFX:
|00D5A1| REP #$31

|00D5A3| LDY.b $0C

|00D5A5| LDA.b $00
|00D5A7| ADC.w .offset,Y

|00D5AA| LDX.b $06
|00D5AC| LDY.b $0A

|00D5AE| PHA

|00D5AF| JSR Do3bppToWRAM4bpp_RightPal.arbitrary

|00D5B2| PLA
|00D5B3| CLC
|00D5B4| ADC.w #$0180

|00D5B7| LDY.b $0A
|00D5B9| JSR Do3bppToWRAM4bpp_RightPal.arbitrary

|00D5BC| INC.b $0C
|00D5BE| INC.b $0C

|00D5C0| STX.b $06

|00D5C2| SEP #$30

|00D5C4| RTS

;===================================================================================================
; Unused 3BPP to WRAM 4BPP routine
;===================================================================================================
UNREACHABLE_00D5C5:
|00D5C5| LDY.w #$0008
|00D5C8| STY.b $0E

.next_tile
|00D5CA| STA.b $00

|00D5CC| CLC
|00D5CD| ADC.w #$0010
|00D5D0| STA.b $03

|00D5D2| LDY.w #$0007

.next_word
|00D5D5| LDA.b [$00]
|00D5D7| STA.l $7E9000,X

|00D5DB| INC.b $00
|00D5DD| INC.b $00

|00D5DF| LDA.b [$03]
|00D5E1| AND.w #$00FF
|00D5E4| STA.l $7E9010,X

|00D5E8| INC.b $03

|00D5EA| INX
|00D5EB| INX

|00D5EC| DEY
|00D5ED| BPL .next_word

|00D5EF| TXA
|00D5F0| CLC
|00D5F1| ADC.w #$0010
|00D5F4| TAX

|00D5F5| LDA.b $03
|00D5F7| AND.w #$0078
|00D5FA| BNE .same_row

|00D5FC| LDA.b $03
|00D5FE| CLC
|00D5FF| ADC.w #$0180
|00D602| STA.b $03

.same_row
|00D604| LDA.b $03

|00D606| DEC.b $0E
|00D608| BNE .next_tile

|00D60A| RTS

;===================================================================================================
; This actual entry is never used.
;===================================================================================================
Do3bppToWRAM4bpp_LeftPal:
|00D60B| LDY.w #$0008

.arbitrary
|00D60E| STY.b $0E

;---------------------------------------------------------------------------------------------------

.next_tile
|00D610| STA.b $00

|00D612| CLC
|00D613| ADC.w #$0010
|00D616| STA.b $03

|00D618| LDY.w #$0003

.next_word
|00D61B| LDA.b [$00]
|00D61D| STA.l $7E9000,X

|00D621| INC.b $00
|00D623| INC.b $00

|00D625| LDA.b [$03]
|00D627| AND.w #$00FF
|00D62A| STA.l $7E9010,X

|00D62E| INC.b $03

|00D630| INX
|00D631| INX

|00D632| LDA.b [$00]
|00D634| STA.l $7E9000,X

|00D638| INC.b $00
|00D63A| INC.b $00

|00D63C| LDA.b [$03]
|00D63E| AND.w #$00FF
|00D641| STA.l $7E9010,X

|00D645| INC.b $03

|00D647| INX
|00D648| INX

|00D649| DEY
|00D64A| BPL .next_word

|00D64C| TXA
|00D64D| CLC
|00D64E| ADC.w #$0010
|00D651| TAX

|00D652| LDA.b $03

|00D654| DEC.b $0E
|00D656| BNE .next_tile

|00D658| RTS

;===================================================================================================
; This actual entry is never used.
;===================================================================================================
Do3bppToWRAM4bpp_RightPal:
|00D659| LDY.w #$0006

.arbitrary
|00D65C| STY.b $0E

;---------------------------------------------------------------------------------------------------

.next_tile
|00D65E| STA.b $00

|00D660| CLC
|00D661| ADC.w #$0010
|00D664| STA.b $03

|00D666| LDY.w #$0007

.next_word
|00D669| LDA.b [$00]
|00D66B| STA.l $7E9000,X

|00D66F| XBA
|00D670| ORA.b [$00]
|00D672| AND.w #$00FF
|00D675| STA.b $08

|00D677| INC.b $00
|00D679| INC.b $00

|00D67B| LDA.b [$03]
|00D67D| AND.w #$00FF
|00D680| STA.b $BD

|00D682| ORA.b $08
|00D684| XBA
|00D685| ORA.b $BD
|00D687| STA.l $7E9010,X

|00D68B| INC.b $03

|00D68D| INX
|00D68E| INX

|00D68F| DEY
|00D690| BPL .next_word

;---------------------------------------------------------------------------------------------------

|00D692| TXA
|00D693| CLC
|00D694| ADC.w #$0010
|00D697| TAX

|00D698| LDA.b $03
|00D69A| AND.w #$0078
|00D69D| BNE .same_row

|00D69F| LDA.b $03
|00D6A1| CLC
|00D6A2| ADC.w #$0180
|00D6A5| STA.b $03

.same_row
|00D6A7| LDA.b $03

|00D6A9| DEC.b $0E
|00D6AB| BNE .next_tile

|00D6AD| RTS

;===================================================================================================
; TODO document routine/better name
;===================================================================================================
LoadTransAuxGFX:
|00D6AE| PHB
|00D6AF| PHK
|00D6B0| PLB

|00D6B1| STZ.b $00

|00D6B3| LDA.b #>$7E6000
|00D6B5| STA.b $01

|00D6B7| LDA.b #^$7E6000
|00D6B9| STA.b $02

|00D6BB| REP #$30

|00D6BD| LDA.w $0AA2
|00D6C0| AND.w #$00FF
|00D6C3| ASL A
|00D6C4| ASL A
|00D6C5| STA.b $0E

;---------------------------------------------------------------------------------------------------

|00D6C7| SEP #$20

|00D6C9| LDX.b $0E

|00D6CB| LDA.w SheetsTable_AA2+0,X
|00D6CE| BEQ .skip_bg0

|00D6D0| STA.l $7EC2F8

|00D6D4| SEP #$10

|00D6D6| TAY
|00D6D7| JSR Decompress_background_arbitrary

;---------------------------------------------------------------------------------------------------

.skip_bg0
|00D6DA| SEP #$10

|00D6DC| LDA.b $01
|00D6DE| CLC
|00D6DF| ADC.b #$06
|00D6E1| STA.b $01

|00D6E3| REP #$10

|00D6E5| LDX.b $0E

|00D6E7| LDA.w SheetsTable_AA2+1,X
|00D6EA| BEQ .skip_bg1

|00D6EC| STA.l $7EC2F9

|00D6F0| SEP #$10

|00D6F2| TAY
|00D6F3| JSR Decompress_background_arbitrary

;---------------------------------------------------------------------------------------------------

.skip_bg1
|00D6F6| SEP #$10

|00D6F8| LDA.b $01
|00D6FA| CLC
|00D6FB| ADC.b #$06
|00D6FD| STA.b $01

|00D6FF| REP #$10

|00D701| LDX.b $0E

|00D703| LDA.w SheetsTable_AA2+2,X
|00D706| BEQ .skip_bg2

|00D708| STA.l $7EC2FA

|00D70C| SEP #$10

|00D70E| TAY
|00D70F| JSR Decompress_background_arbitrary

;---------------------------------------------------------------------------------------------------

.skip_bg2
|00D712| SEP #$10

|00D714| LDA.b $01
|00D716| CLC
|00D717| ADC.b #$06
|00D719| STA.b $01

|00D71B| REP #$10

|00D71D| LDX.b $0E
|00D71F| LDA.w SheetsTable_AA2+3,X
|00D722| BEQ .skip_bg3

|00D724| STA.l $7EC2FB

|00D728| SEP #$10

|00D72A| TAY
|00D72B| JSR Decompress_background_arbitrary

;---------------------------------------------------------------------------------------------------

.skip_bg3
|00D72E| SEP #$10

|00D730| LDA.b $01
|00D732| CLC
|00D733| ADC.b #$06
|00D735| STA.b $01

|00D737| BRA .continue

;===================================================================================================

#LoadTransAuxGFX_sprite:
|00D739| PHB
|00D73A| PHK
|00D73B| PLB

|00D73C| STZ.b $00

|00D73E| LDA.b #>$7E7800
|00D740| STA.b $01

|00D742| LDA.b #^$7E7800
|00D744| STA.b $02

;===================================================================================================

.continue
|00D746| REP #$30

|00D748| LDA.w $0AA3
|00D74B| AND.w #$00FF
|00D74E| ASL A
|00D74F| ASL A
|00D750| STA.b $0E

;---------------------------------------------------------------------------------------------------

|00D752| SEP #$20

|00D754| LDX.b $0E
|00D756| LDA.w SheetsTable_AA3+0,X
|00D759| BEQ .skip_spr0

|00D75B| STA.l $7EC2FC

.skip_spr0
|00D75F| SEP #$10

|00D761| LDA.l $7EC2FC
|00D765| TAY

|00D766| JSR Decompress_sprite_arbitrary

|00D769| LDA.b $01
|00D76B| CLC
|00D76C| ADC.b #$06
|00D76E| STA.b $01

;---------------------------------------------------------------------------------------------------

|00D770| REP #$10

|00D772| LDX.b $0E

|00D774| LDA.w SheetsTable_AA3+1,X
|00D777| BEQ .skip_spr1

|00D779| STA.l $7EC2FD

.skip_spr1
|00D77D| SEP #$10

|00D77F| LDA.l $7EC2FD
|00D783| TAY

|00D784| JSR Decompress_sprite_arbitrary

|00D787| LDA.b $01
|00D789| CLC
|00D78A| ADC.b #$06
|00D78C| STA.b $01

;---------------------------------------------------------------------------------------------------

|00D78E| REP #$10

|00D790| LDX.b $0E

|00D792| LDA.w SheetsTable_AA3+2,X
|00D795| BEQ .skip_spr2

|00D797| STA.l $7EC2FE

.skip_spr2
|00D79B| SEP #$10

|00D79D| LDA.l $7EC2FE
|00D7A1| TAY

|00D7A2| JSR Decompress_sprite_arbitrary

|00D7A5| LDA.b $01
|00D7A7| CLC
|00D7A8| ADC.b #$06
|00D7AA| STA.b $01

;---------------------------------------------------------------------------------------------------

|00D7AC| REP #$10

|00D7AE| LDX.b $0E

|00D7B0| LDA.w SheetsTable_AA3+3,X
|00D7B3| BEQ .skip_spr3

|00D7B5| STA.l $7EC2FF

.skip_spr3
|00D7B9| SEP #$10

|00D7BB| LDA.l $7EC2FF
|00D7BF| TAY

|00D7C0| JSR Decompress_sprite_arbitrary

|00D7C3| STZ.w $0412

|00D7C6| PLB

|00D7C7| RTL

;===================================================================================================

ReloadPreviouslyLoadedSheets:
|00D7C8| PHB
|00D7C9| PHK
|00D7CA| PLB

|00D7CB| STZ.b $00

|00D7CD| LDA.b #>$7E6000
|00D7CF| STA.b $01

|00D7D1| LDA.b #^$7E6000
|00D7D3| STA.b $02

|00D7D5| LDA.l $7EC2F8
|00D7D9| TAY

|00D7DA| JSR Decompress_background_arbitrary

;---------------------------------------------------------------------------------------------------

|00D7DD| LDA.b $01
|00D7DF| CLC
|00D7E0| ADC.b #$06
|00D7E2| STA.b $01

|00D7E4| LDA.l $7EC2F9
|00D7E8| TAY

|00D7E9| JSR Decompress_background_arbitrary

;---------------------------------------------------------------------------------------------------

|00D7EC| LDA.b $01
|00D7EE| CLC
|00D7EF| ADC.b #$06
|00D7F1| STA.b $01

|00D7F3| LDA.l $7EC2FA
|00D7F7| TAY

|00D7F8| JSR Decompress_background_arbitrary

;---------------------------------------------------------------------------------------------------

|00D7FB| LDA.b $01
|00D7FD| CLC
|00D7FE| ADC.b #$06
|00D800| STA.b $01

|00D802| LDA.l $7EC2FB
|00D806| TAY

|00D807| JSR Decompress_background_arbitrary

;---------------------------------------------------------------------------------------------------

|00D80A| STZ.b $00

|00D80C| LDA.b #>$7E7800
|00D80E| STA.b $01

|00D810| LDA.b #^$7E7800
|00D812| STA.b $02

|00D814| LDA.l $7EC2FC
|00D818| TAY

|00D819| JSR Decompress_sprite_arbitrary

;---------------------------------------------------------------------------------------------------

|00D81C| LDA.b $01
|00D81E| CLC
|00D81F| ADC.b #$06
|00D821| STA.b $01

|00D823| LDA.l $7EC2FD
|00D827| TAY

|00D828| JSR Decompress_sprite_arbitrary

;---------------------------------------------------------------------------------------------------

|00D82B| LDA.b $01
|00D82D| CLC
|00D82E| ADC.b #$06
|00D830| STA.b $01

|00D832| LDA.l $7EC2FE
|00D836| TAY

|00D837| JSR Decompress_sprite_arbitrary

;---------------------------------------------------------------------------------------------------

|00D83A| LDA.b $01
|00D83C| CLC
|00D83D| ADC.b #$06
|00D83F| STA.b $01

|00D841| LDA.l $7EC2FF
|00D845| TAY

|00D846| JSR Decompress_sprite_arbitrary

;---------------------------------------------------------------------------------------------------

|00D849| STZ.w $0412

|00D84C| PLB

|00D84D| RTL

;===================================================================================================

DecompressAttractPlaques:
|00D84E| PHB
|00D84F| PHK
|00D850| PLB

|00D851| STZ.b $00

|00D853| LDA.b #>$7F4000
|00D855| STA.b $01

|00D857| LDA.b #^$7F4000
|00D859| STA.b $02
|00D85B| STA.b $05

|00D85D| LDA.b #$67
|00D85F| STA.b $0E

.next
|00D861| LDY.b $0E

|00D863| JSR Decompress_sprite_arbitrary

|00D866| LDA.b $01
|00D868| CLC
|00D869| ADC.b #$08
|00D86B| STA.b $01

|00D86D| INC.b $0E

|00D86F| LDA.b $0E
|00D871| CMP.b #$69
|00D873| BNE .next

|00D875| PLB

|00D876| RTL

;===================================================================================================

pool AnimateMirrorWarp

.vector_low
|00D877| db AnimateMirrorWarp_LoadPyramidIfAga
|00D878| db AnimateMirrorWarp_DecompressNewTileSets
|00D879| db AnimateMirrorWarp_DecompressBackgroundsA
|00D87A| db AnimateMirrorWarp_DecompressBackgroundsB
|00D87B| db AnimateMirrorWarp_DecompressBackgroundsC
|00D87C| db AnimateMirrorWarp_TriggerOverlayA_2
|00D87D| db AnimateMirrorWarp_TriggerOverlayB
|00D87E| db AnimateMirrorWarp_DrawDestinationScreen
|00D87F| db AnimateMirrorWarp_DoSpritesPalettes
|00D880| db AnimateMirrorWarp_TriggerOverlayB
|00D881| db AnimateMirrorWarp_DecompressAnimatedTiles
|00D882| db AnimateMirrorWarp_LoadSubscreen
|00D883| db AnimateMirrorWarp_DecompressSpritesA
|00D884| db AnimateMirrorWarp_DecompressSpritesB
|00D885| db AnimateMirrorWarp_TriggerBGChar0

.vector_high
|00D886| db >AnimateMirrorWarp_LoadPyramidIfAga
|00D887| db >AnimateMirrorWarp_DecompressNewTileSets
|00D888| db >AnimateMirrorWarp_DecompressBackgroundsA
|00D889| db >AnimateMirrorWarp_DecompressBackgroundsB
|00D88A| db >AnimateMirrorWarp_DecompressBackgroundsC
|00D88B| db >AnimateMirrorWarp_TriggerOverlayA_2
|00D88C| db >AnimateMirrorWarp_TriggerOverlayB
|00D88D| db >AnimateMirrorWarp_DrawDestinationScreen
|00D88E| db >AnimateMirrorWarp_DoSpritesPalettes
|00D88F| db >AnimateMirrorWarp_TriggerOverlayB
|00D890| db >AnimateMirrorWarp_DecompressAnimatedTiles
|00D891| db >AnimateMirrorWarp_LoadSubscreen
|00D892| db >AnimateMirrorWarp_DecompressSpritesA
|00D893| db >AnimateMirrorWarp_DecompressSpritesB
|00D894| db >AnimateMirrorWarp_TriggerBGChar0

;---------------------------------------------------------------------------------------------------

.next_tilemap
|00D895| db $00
|00D896| db $0E
|00D897| db $0F
|00D898| db $10
|00D899| db $11
|00D89A| db $00
|00D89B| db $00
|00D89C| db $00
|00D89D| db $00
|00D89E| db $00
|00D89F| db $00
|00D8A0| db $12
|00D8A1| db $13
|00D8A2| db $14
|00D8A3| db $00

endpool

;---------------------------------------------------------------------------------------------------

AnimateMirrorWarp:
|00D8A4| STZ.b $00

|00D8A6| LDA.b #$40
|00D8A8| STA.b $01

|00D8AA| LDX.w $0200

|00D8AD| LDA.l .next_tilemap,X
|00D8B1| STA.b $17
|00D8B3| STA.w $0710

|00D8B6| LDA.l .vector_low,X
|00D8BA| STA.b $0E

|00D8BC| LDA.l .vector_high,X
|00D8C0| STA.b $0F

|00D8C2| LDX.b #$00

|00D8C4| LDA.b $8A
|00D8C6| AND.b #$40
|00D8C8| BEQ .light_world

|00D8CA| LDX.b #$08

.light_world
|00D8CC| INC.w $0200

|00D8CF| JMP.w ($000E)

;===================================================================================================

AnimateMirrorWarp_LoadPyramidIfAga:
|00D8D2| INC.w $06BA

|00D8D5| LDA.w $06BA
|00D8D8| CMP.b #$20
|00D8DA| BEQ .continue

|00D8DC| STZ.w $0200

|00D8DF| RTL

.continue
|00D8E0| JSL SetTargetOverworldWarpToPyramid

|00D8E4| RTL

;===================================================================================================

AnimateMirrorWarp_TriggerOverlayA_2:
|00D8E5| JSL MirrorWarp_HandleCastlePyramidSubscreen

|00D8E9| DEC.b $11

|00D8EB| LDA.b #$0C
|00D8ED| STA.b $17
|00D8EF| STA.w $0710

|00D8F2| RTL

;===================================================================================================

AnimateMirrorWarp_DrawDestinationScreen:
|00D8F3| JSL DrawScreenAtCurrentMirrorPosition

|00D8F7| INC.w $0710

|00D8FA| RTL

;===================================================================================================

AnimateMirrorWarp_DoSpritesPalettes:
|00D8FB| JSL MirrorWarp_LoadSpritesAndColors

|00D8FF| LDA.b #$0C
|00D901| STA.b $17
|00D903| STA.w $0710

|00D906| RTL

;===================================================================================================

AnimateMirrorWarp_TriggerOverlayB:
|00D907| LDA.b #$0D
|00D909| STA.b $17
|00D90B| STA.w $0710

|00D90E| RTL

;===================================================================================================

AnimateMirrorWarp_TriggerBGChar0:
|00D90F| LDA.b #$0E
|00D911| STA.w $0200

|00D914| RTL

;===================================================================================================

AnimateMirrorWarp_DecompressAnimatedTiles:
|00D915| LDY.b #$58

|00D917| LDA.b $8A
|00D919| AND.b #$BF
|00D91B| CMP.b #$03 ; OW 03, OW 43
|00D91D| BEQ .not_death_mountain

|00D91F| CMP.b #$05 ; OW 05, OW 45
|00D921| BEQ .not_death_mountain

|00D923| CMP.b #$07 ; OW 07, OW 47
|00D925| BEQ .not_death_mountain

|00D927| LDY.b #$5A

.not_death_mountain
|00D929| JSL DecompressAnimatedOverworldTiles

|00D92D| RTL

;===================================================================================================

SheetsTable_Mirror:
|00D92E| db $3A
|00D92F| db $3B
|00D930| db $3C
|00D931| db $3D
|00D932| db $3E
|00D933| db $5B

;===================================================================================================

SheetsTable_AA4:
|00D934| db $01
|00D935| db $5A
|00D936| db $42
|00D937| db $43
|00D938| db $44
|00D939| db $45
|00D93A| db $3F
|00D93B| db $59
|00D93C| db $0B
|00D93D| db $5A

;===================================================================================================

AnimateMirrorWarp_DecompressNewTileSets:
|00D93E| PHB
|00D93F| PHK
|00D940| PLB

|00D941| PHX

|00D942| REP #$30

|00D944| LDA.w $0AA1
|00D947| AND.w #$00FF
|00D94A| ASL A
|00D94B| ASL A
|00D94C| ASL A
|00D94D| TAX

|00D94E| LDA.w $0AA2
|00D951| AND.w #$00FF
|00D954| ASL A
|00D955| ASL A
|00D956| TAY

|00D957| SEP #$20

|00D959| LDA.w SheetsTable_AA2+0,Y
|00D95C| BNE .not_default_a

|00D95E| LDA.w SheetsTable_AA1+3,X

.not_default_a
|00D961| STA.l $7EC2F8

|00D965| LDA.w SheetsTable_AA2+1,Y
|00D968| BNE .not_default_b

|00D96A| LDA.w SheetsTable_AA1+4,X

.not_default_b
|00D96D| STA.l $7EC2F9

|00D971| LDA.w SheetsTable_AA2+2,Y
|00D974| BNE .not_default_c

|00D976| LDA.w SheetsTable_AA1+5,X

.not_default_c
|00D979| STA.l $7EC2FA

|00D97D| LDA.w SheetsTable_AA2+3,Y
|00D980| BNE .not_default_d

|00D982| LDA.w SheetsTable_AA1+6,X

.not_default_d
|00D985| STA.l $7EC2FB

;---------------------------------------------------------------------------------------------------

|00D989| REP #$20

|00D98B| LDA.w $0AA3
|00D98E| AND.w #$00FF
|00D991| ASL A
|00D992| ASL A
|00D993| TAY

|00D994| SEP #$20

|00D996| LDA.w SheetsTable_AA3+0,Y
|00D999| BEQ .dont_change_a

|00D99B| STA.l $7EC2FC

.dont_change_a
|00D99F| LDA.w SheetsTable_AA3+1,Y
|00D9A2| BEQ .dont_change_b

|00D9A4| STA.l $7EC2FD

.dont_change_b
|00D9A8| LDA.w SheetsTable_AA3+2,Y
|00D9AB| BEQ .dont_change_c

|00D9AD| STA.l $7EC2FE

.dont_change_c
|00D9B1| LDA.w SheetsTable_AA3+3,Y
|00D9B4| BEQ .dont_change_d

|00D9B6| STA.l $7EC2FF

;---------------------------------------------------------------------------------------------------

.dont_change_d
|00D9BA| SEP #$10

|00D9BC| PLX

|00D9BD| LDA.l SheetsTable_Mirror+1,X
|00D9C1| STA.b $08

|00D9C3| LDA.l SheetsTable_Mirror+0,X
|00D9C7| TAY

|00D9C8| LDA.b #$7F
|00D9CA| JSR Decompress_background_arbitrary_bank

|00D9CD| LDA.b $01
|00D9CF| CLC
|00D9D0| ADC.b #$06
|00D9D2| STA.b $01

|00D9D4| LDY.b $08
|00D9D6| JSR Decompress_background_arbitrary

|00D9D9| PLB

|00D9DA| LDA.b #$7F
|00D9DC| STA.b $02
|00D9DE| STA.b $05

|00D9E0| REP #$31

|00D9E2| LDX.w #$0000
|00D9E5| LDY.w #$0040
|00D9E8| LDA.w #$4000
|00D9EB| JSR Expand3bppToBuffer_RightPalette

|00D9EE| LDY.w #$0040
|00D9F1| LDA.b $03
|00D9F3| JSR Expand3bppToBuffer_LeftPalette

|00D9F6| SEP #$30

|00D9F8| RTL

;===================================================================================================

AnimateMirrorWarp_DecompressBackgroundsA:
|00D9F9| PHB
|00D9FA| PHK
|00D9FB| PLB

|00D9FC| LDA.l SheetsTable_Mirror+3,X
|00DA00| STA.b $08

|00DA02| LDA.l SheetsTable_Mirror+2,X
|00DA06| TAY

|00DA07| LDA.b #$7F
|00DA09| JSR Decompress_background_arbitrary_bank

|00DA0C| LDA.b $01
|00DA0E| CLC
|00DA0F| ADC.b #$06
|00DA11| STA.b $01

|00DA13| LDY.b $08
|00DA15| JSR Decompress_background_arbitrary

|00DA18| PLB

|00DA19| LDA.b #$7F
|00DA1B| STA.b $02
|00DA1D| STA.b $05

|00DA1F| REP #$31

|00DA21| LDX.w #$0000
|00DA24| LDY.w #$0040
|00DA27| LDA.w #$4000
|00DA2A| JSR Expand3bppToBuffer_LeftPalette

|00DA2D| LDY.w #$0040
|00DA30| LDA.b $03
|00DA32| JSR Expand3bppToBuffer_RightPalette

|00DA35| SEP #$30

|00DA37| RTL

;===================================================================================================

AnimateMirrorWarp_DecompressBackgroundsB:
|00DA38| PHB
|00DA39| PHK
|00DA3A| PLB

|00DA3B| LDA.l $7EC2F9
|00DA3F| TAY

|00DA40| LDA.b #$7F
|00DA42| JSR Decompress_background_arbitrary_bank

|00DA45| LDA.b $01
|00DA47| CLC
|00DA48| ADC.b #$06
|00DA4A| STA.b $01

|00DA4C| LDA.l $7EC2FA
|00DA50| TAY
|00DA51| JSR Decompress_background_arbitrary

|00DA54| PLB

|00DA55| LDA.b #$7F
|00DA57| STA.b $02
|00DA59| STA.b $05

|00DA5B| REP #$31

|00DA5D| LDX.w #$0000
|00DA60| LDY.w #$0080
|00DA63| LDA.w #$4000
|00DA66| JSR Expand3bppToBuffer_RightPalette

|00DA69| SEP #$30

|00DA6B| RTL

;===================================================================================================

AnimateMirrorWarp_DecompressBackgroundsC:
|00DA6C| PHB
|00DA6D| PHK
|00DA6E| PLB

|00DA6F| LDA.l SheetsTable_Mirror+5,X
|00DA73| STA.b $08

|00DA75| LDA.l SheetsTable_Mirror+4,X
|00DA79| TAY

|00DA7A| LDA.b #$7F
|00DA7C| JSR Decompress_background_arbitrary_bank

|00DA7F| LDA.b $01
|00DA81| CLC
|00DA82| ADC.b #$06
|00DA84| STA.b $01

|00DA86| LDY.b $08
|00DA88| JSR Decompress_background_arbitrary

|00DA8B| PLB

|00DA8C| LDA.b #$7F
|00DA8E| STA.b $02
|00DA90| STA.b $05

|00DA92| REP #$31

|00DA94| LDX.w #$0000
|00DA97| LDY.w #$0080
|00DA9A| LDA.w #$4000
|00DA9D| JSR Expand3bppToBuffer_LeftPalette

|00DAA0| SEP #$30

|00DAA2| RTL

;===================================================================================================

AnimateMirrorWarp_LoadSubscreen:
|00DAA3| STZ.b $1D

|00DAA5| LDA.b $8A
|00DAA7| BEQ .subscreen ; OW 00

|00DAA9| CMP.b #$70 ; OW 70
|00DAAB| BEQ .subscreen

|00DAAD| CMP.b #$40 ; OW 40
|00DAAF| BEQ .subscreen

|00DAB1| CMP.b #$5B ; OW 5B
|00DAB3| BEQ .subscreen

|00DAB5| CMP.b #$03 ; OW 03
|00DAB7| BEQ .subscreen

|00DAB9| CMP.b #$05 ; OW 05
|00DABB| BEQ .subscreen

|00DABD| CMP.b #$07 ; OW 07
|00DABF| BEQ .subscreen

|00DAC1| CMP.b #$43 ; OW 43
|00DAC3| BEQ .subscreen

|00DAC5| CMP.b #$45 ; OW 45
|00DAC7| BEQ .subscreen

|00DAC9| CMP.b #$47 ; OW 47
|00DACB| BNE .no_subscreen

.subscreen
|00DACD| LDA.b #$01
|00DACF| STA.b $1D

.no_subscreen
|00DAD1| PHB
|00DAD2| PHK
|00DAD3| PLB

|00DAD4| LDA.l SheetsTable_Mirror+6,X
|00DAD8| TAY

|00DAD9| LDA.w GFXSheetPointers.sprite_low,Y
|00DADC| STA.b $00

|00DADE| LDA.w GFXSheetPointers.sprite_high,Y
|00DAE1| STA.b $01

|00DAE3| LDA.w GFXSheetPointers.sprite_bank,Y
|00DAE6| STA.b $02
|00DAE8| STA.b $05

|00DAEA| PLB

|00DAEB| REP #$31

|00DAED| LDX.w #$0000
|00DAF0| LDY.w #$0040

|00DAF3| LDA.b $00
|00DAF5| JSR Expand3bppToBuffer_RightPalette

|00DAF8| SEP #$30

|00DAFA| RTL

;===================================================================================================

AnimateMirrorWarp_DecompressSpritesA:
|00DAFB| PHB
|00DAFC| PHK
|00DAFD| PLB

|00DAFE| LDA.l $7EC2FC
|00DB02| TAY

|00DB03| LDA.b #$7F
|00DB05| STA.b $02
|00DB07| STA.b $05

|00DB09| JSR Decompress_sprite_arbitrary

|00DB0C| LDA.b $01
|00DB0E| CLC
|00DB0F| ADC.b #$06
|00DB11| STA.b $01

|00DB13| LDA.l $7EC2FD
|00DB17| TAY
|00DB18| JSR Decompress_sprite_arbitrary

|00DB1B| PLB

;---------------------------------------------------------------------------------------------------

|00DB1C| LDA.b #$7F
|00DB1E| STA.b $02
|00DB20| STA.b $05

|00DB22| REP #$31

|00DB24| LDX.w #$0000
|00DB27| LDY.w #$0040

|00DB2A| LDA.l $7EC2FC
|00DB2E| CMP.w #$0052
|00DB31| BEQ .right_side_palette

|00DB33| CMP.w #$0053
|00DB36| BEQ .right_side_palette

|00DB38| CMP.w #$005A
|00DB3B| BEQ .right_side_palette

|00DB3D| CMP.w #$005B
|00DB40| BNE .left_side_palette

.right_side_palette
|00DB42| LDA.w #$4000
|00DB45| JSR Expand3bppToBuffer_RightPalette

|00DB48| BRA .done

.left_side_palette
|00DB4A| LDA.w #$4000
|00DB4D| JSR Expand3bppToBuffer_LeftPalette

.done
|00DB50| LDY.w #$0040
|00DB53| LDA.b $03
|00DB55| JSR Expand3bppToBuffer_LeftPalette

|00DB58| SEP #$30

|00DB5A| RTL

;===================================================================================================

AnimateMirrorWarp_DecompressSpritesB:
|00DB5B| PHB
|00DB5C| PHK
|00DB5D| PLB

|00DB5E| LDA.l $7EC2FE
|00DB62| TAY

|00DB63| LDA.b #$7F
|00DB65| STA.b $02
|00DB67| STA.b $05
|00DB69| JSR Decompress_sprite_arbitrary

|00DB6C| LDA.b $01
|00DB6E| CLC
|00DB6F| ADC.b #$06
|00DB71| STA.b $01

|00DB73| LDA.l $7EC2FF
|00DB77| TAY
|00DB78| JSR Decompress_sprite_arbitrary

|00DB7B| PLB

|00DB7C| LDA.b #$7F
|00DB7E| STA.b $02
|00DB80| STA.b $05

|00DB82| REP #$31

|00DB84| LDX.w #$0000
|00DB87| LDY.w #$0080
|00DB8A| LDA.w #$7F4000
|00DB8D| JSR Expand3bppToBuffer_LeftPalette

|00DB90| SEP #$30

|00DB92| JSL HandleFollowersAfterMirroring

|00DB96| RTL

;===================================================================================================

SheetsTable_AA3:
|00DB97| db $00, $49, $00, $00 ; 0x00
|00DB9B| db $46, $49, $0C, $1D ; 0x01
|00DB9F| db $48, $49, $13, $1D ; 0x02
|00DBA3| db $46, $49, $13, $0E ; 0x03
|00DBA7| db $48, $49, $0C, $11 ; 0x04
|00DBAB| db $48, $49, $0C, $10 ; 0x05
|00DBAF| db $4F, $49, $4A, $50 ; 0x06
|00DBB3| db $0E, $49, $4A, $11 ; 0x07
|00DBB7| db $46, $49, $12, $00 ; 0x08
|00DBBB| db $00, $49, $00, $50 ; 0x09
|00DBBF| db $00, $49, $00, $11 ; 0x0A
|00DBC3| db $48, $49, $0C, $00 ; 0x0B
|00DBC7| db $00, $00, $37, $36 ; 0x0C
|00DBCB| db $48, $49, $4C, $11 ; 0x0D
|00DBCF| db $5D, $2C, $0C, $44 ; 0x0E
|00DBD3| db $00, $00, $4E, $00 ; 0x0F
|00DBD7| db $0F, $00, $12, $10 ; 0x10
|00DBDB| db $00, $00, $00, $4C ; 0x11
|00DBDF| db $00, $0D, $17, $00 ; 0x12
|00DBE3| db $16, $0D, $17, $1B ; 0x13
|00DBE7| db $16, $0D, $17, $14 ; 0x14
|00DBEB| db $15, $0D, $17, $15 ; 0x15
|00DBEF| db $16, $0D, $18, $19 ; 0x16
|00DBF3| db $16, $0D, $17, $19 ; 0x17
|00DBF7| db $16, $0D, $00, $00 ; 0x18
|00DBFB| db $16, $0D, $18, $1B ; 0x19
|00DBFF| db $0F, $49, $4A, $11 ; 0x1A
|00DC03| db $4B, $2A, $5C, $15 ; 0x1B
|00DC07| db $16, $49, $17, $1D ; 0x1C
|00DC0B| db $00, $00, $00, $15 ; 0x1D
|00DC0F| db $16, $0D, $17, $10 ; 0x1E
|00DC13| db $16, $49, $12, $00 ; 0x1F
|00DC17| db $16, $49, $0C, $11 ; 0x20
|00DC1B| db $00, $00, $12, $10 ; 0x21
|00DC1F| db $16, $0D, $00, $11 ; 0x22
|00DC23| db $16, $49, $0C, $00 ; 0x23
|00DC27| db $16, $0D, $4C, $11 ; 0x24
|00DC2B| db $0E, $0D, $4A, $11 ; 0x25
|00DC2F| db $16, $1A, $17, $1B ; 0x26
|00DC33| db $4F, $34, $4A, $50 ; 0x27
|00DC37| db $35, $4D, $65, $36 ; 0x28
|00DC3B| db $4A, $34, $4E, $00 ; 0x29
|00DC3F| db $0E, $34, $4A, $11 ; 0x2A
|00DC43| db $51, $34, $5D, $59 ; 0x2B
|00DC47| db $4B, $49, $4C, $11 ; 0x2C
|00DC4B| db $2D, $00, $00, $00 ; 0x2D
|00DC4F| db $5D, $00, $12, $59 ; 0x2E
|00DC53| db $00, $00, $00, $00 ; 0x2F
|00DC57| db $00, $00, $00, $00 ; 0x30
|00DC5B| db $00, $00, $00, $00 ; 0x31
|00DC5F| db $00, $00, $00, $00 ; 0x32
|00DC63| db $00, $00, $00, $00 ; 0x33
|00DC67| db $00, $00, $00, $00 ; 0x34
|00DC6B| db $00, $00, $00, $00 ; 0x35
|00DC6F| db $00, $00, $00, $00 ; 0x36
|00DC73| db $00, $00, $00, $00 ; 0x37
|00DC77| db $00, $00, $00, $00 ; 0x38
|00DC7B| db $00, $00, $00, $00 ; 0x39
|00DC7F| db $00, $00, $00, $00 ; 0x3A
|00DC83| db $00, $00, $00, $00 ; 0x3B
|00DC87| db $00, $00, $00, $00 ; 0x3C
|00DC8B| db $00, $00, $00, $00 ; 0x3D
|00DC8F| db $00, $00, $00, $00 ; 0x3E
|00DC93| db $00, $00, $00, $00 ; 0x3F
|00DC97| db $47, $49, $2B, $2D ; 0x40 - 0x00 for underworld
|00DC9B| db $46, $49, $1C, $52 ; 0x41 - 0x01 for underworld
|00DC9F| db $00, $49, $1C, $52 ; 0x42 - 0x02 for underworld
|00DCA3| db $5D, $49, $00, $52 ; 0x43 - 0x03 for underworld
|00DCA7| db $46, $49, $13, $52 ; 0x44 - 0x04 for underworld
|00DCAB| db $4B, $4D, $4A, $5A ; 0x45 - 0x05 for underworld
|00DCAF| db $47, $49, $1C, $52 ; 0x46 - 0x06 for underworld
|00DCB3| db $4B, $4D, $39, $36 ; 0x47 - 0x07 for underworld
|00DCB7| db $1F, $2C, $2E, $52 ; 0x48 - 0x08 for underworld
|00DCBB| db $1F, $2C, $2E, $1D ; 0x49 - 0x09 for underworld
|00DCBF| db $2F, $2C, $2E, $52 ; 0x4A - 0x0A for underworld
|00DCC3| db $2F, $2C, $2E, $31 ; 0x4B - 0x0B for underworld
|00DCC7| db $1F, $1E, $30, $52 ; 0x4C - 0x0C for underworld
|00DCCB| db $51, $49, $13, $00 ; 0x4D - 0x0D for underworld
|00DCCF| db $4F, $49, $13, $50 ; 0x4E - 0x0E for underworld
|00DCD3| db $4F, $4D, $4A, $50 ; 0x4F - 0x0F for underworld
|00DCD7| db $4B, $49, $4C, $2B ; 0x50 - 0x10 for underworld
|00DCDB| db $1F, $20, $22, $53 ; 0x51 - 0x11 for underworld
|00DCDF| db $55, $3D, $42, $43 ; 0x52 - 0x12 for underworld
|00DCE3| db $1F, $1E, $23, $52 ; 0x53 - 0x13 for underworld
|00DCE7| db $1F, $1E, $39, $3A ; 0x54 - 0x14 for underworld
|00DCEB| db $1F, $1E, $3A, $3E ; 0x55 - 0x15 for underworld
|00DCEF| db $1F, $1E, $3C, $3D ; 0x56 - 0x16 for underworld
|00DCF3| db $40, $1E, $27, $3F ; 0x57 - 0x17 for underworld
|00DCF7| db $55, $1A, $42, $43 ; 0x58 - 0x18 for underworld
|00DCFB| db $1F, $1E, $2A, $52 ; 0x59 - 0x19 for underworld
|00DCFF| db $1F, $1E, $38, $52 ; 0x5A - 0x1A for underworld
|00DD03| db $1F, $20, $28, $52 ; 0x5B - 0x1B for underworld
|00DD07| db $1F, $20, $26, $52 ; 0x5C - 0x1C for underworld
|00DD0B| db $1F, $2C, $25, $52 ; 0x5D - 0x1D for underworld
|00DD0F| db $1F, $20, $27, $52 ; 0x5E - 0x1E for underworld
|00DD13| db $1F, $1E, $29, $52 ; 0x5F - 0x1F for underworld
|00DD17| db $1F, $2C, $3B, $52 ; 0x60 - 0x20 for underworld
|00DD1B| db $46, $49, $24, $52 ; 0x61 - 0x21 for underworld
|00DD1F| db $21, $41, $45, $33 ; 0x62 - 0x22 for underworld
|00DD23| db $1F, $2C, $28, $31 ; 0x63 - 0x23 for underworld
|00DD27| db $1F, $0D, $29, $52 ; 0x64 - 0x24 for underworld
|00DD2B| db $1F, $1E, $27, $52 ; 0x65 - 0x25 for underworld
|00DD2F| db $1F, $20, $27, $53 ; 0x66 - 0x26 for underworld
|00DD33| db $48, $49, $13, $52 ; 0x67 - 0x27 for underworld
|00DD37| db $0E, $1E, $4A, $50 ; 0x68 - 0x28 for underworld
|00DD3B| db $1F, $20, $26, $53 ; 0x69 - 0x29 for underworld
|00DD3F| db $15, $00, $00, $00 ; 0x6A - 0x2A for underworld
|00DD43| db $1F, $00, $2A, $52 ; 0x6B - 0x2B for underworld
|00DD47| db $00, $00, $00, $00 ; 0x6C - 0x2C for underworld
|00DD4B| db $00, $00, $00, $00 ; 0x6D - 0x2D for underworld
|00DD4F| db $00, $00, $00, $00 ; 0x6E - 0x2E for underworld
|00DD53| db $00, $00, $00, $00 ; 0x6F - 0x2F for underworld
|00DD57| db $00, $00, $00, $00 ; 0x70 - 0x30 for underworld
|00DD5B| db $00, $00, $00, $00 ; 0x71 - 0x31 for underworld
|00DD5F| db $00, $00, $00, $00 ; 0x72 - 0x32 for underworld
|00DD63| db $00, $00, $00, $00 ; 0x73 - 0x33 for underworld
|00DD67| db $00, $00, $00, $00 ; 0x74 - 0x34 for underworld
|00DD6B| db $00, $00, $00, $00 ; 0x75 - 0x35 for underworld
|00DD6F| db $00, $00, $00, $00 ; 0x76 - 0x36 for underworld
|00DD73| db $00, $00, $00, $00 ; 0x77 - 0x37 for underworld
|00DD77| db $00, $00, $00, $00 ; 0x78 - 0x38 for underworld
|00DD7B| db $00, $00, $00, $00 ; 0x79 - 0x39 for underworld
|00DD7F| db $00, $00, $00, $00 ; 0x7A - 0x3A for underworld
|00DD83| db $00, $00, $00, $00 ; 0x7B - 0x3B for underworld
|00DD87| db $00, $00, $00, $00 ; 0x7C - 0x3C for underworld
|00DD8B| db $00, $00, $00, $08 ; 0x7D - 0x3D for underworld
|00DD8F| db $5D, $49, $00, $52 ; 0x7E - 0x3E for underworld
|00DD93| db $55, $49, $42, $43 ; 0x7F - 0x3F for underworld
|00DD97| db $61, $62, $63, $50 ; 0x80 - 0x40 for underworld
|00DD9B| db $61, $62, $63, $50 ; 0x81 - 0x41 for underworld
|00DD9F| db $61, $62, $63, $50 ; 0x82 - 0x42 for underworld
|00DDA3| db $61, $62, $63, $50 ; 0x83 - 0x43 for underworld
|00DDA7| db $61, $62, $63, $50 ; 0x84 - 0x44 for underworld
|00DDAB| db $61, $62, $63, $50 ; 0x85 - 0x45 for underworld
|00DDAF| db $61, $56, $57, $50 ; 0x86 - 0x46 for underworld
|00DDB3| db $61, $62, $63, $50 ; 0x87 - 0x47 for underworld
|00DDB7| db $61, $62, $63, $50 ; 0x88 - 0x48 for underworld
|00DDBB| db $61, $56, $57, $50 ; 0x89 - 0x49 for underworld
|00DDBF| db $61, $56, $63, $50 ; 0x8A - 0x4A for underworld
|00DDC3| db $61, $56, $57, $50 ; 0x8B - 0x4B for underworld
|00DDC7| db $61, $56, $33, $50 ; 0x8C - 0x4C for underworld
|00DDCB| db $61, $56, $57, $50 ; 0x8D - 0x4D for underworld
|00DDCF| db $61, $62, $63, $50 ; 0x8E - 0x4E for underworld
|00DDD3| db $61, $62, $63, $50 ; 0x8F - 0x4F for underworld

;===================================================================================================

SheetsTable_AA2:
; Underworld
|00DDD7| db $06, $00, $1F, $18 ; 0x00
|00DDDB| db $08, $00, $22, $1B ; 0x01
|00DDDF| db $06, $00, $1F, $18 ; 0x02
|00DDE3| db $07, $00, $23, $1C ; 0x03
|00DDE7| db $07, $00, $21, $18 ; 0x04
|00DDEB| db $09, $00, $20, $19 ; 0x05
|00DDEF| db $0B, $00, $21, $1A ; 0x06
|00DDF3| db $0C, $00, $24, $19 ; 0x07
|00DDF7| db $08, $00, $22, $1B ; 0x08
|00DDFB| db $0C, $00, $25, $1B ; 0x09
|00DDFF| db $0C, $00, $26, $1B ; 0x0A
|00DE03| db $0A, $00, $27, $1D ; 0x0B
|00DE07| db $0A, $00, $28, $1E ; 0x0C
|00DE0B| db $0B, $00, $29, $16 ; 0x0D
|00DE0F| db $0D, $00, $2A, $18 ; 0x0E
|00DE13| db $07, $00, $23, $1C ; 0x0F
|00DE17| db $07, $00, $04, $05 ; 0x10
|00DE1B| db $07, $00, $04, $05 ; 0x11
|00DE1F| db $09, $00, $20, $1B ; 0x12
|00DE23| db $09, $00, $2A, $17 ; 0x13
|00DE27| db $0B, $00, $21, $1C ; 0x14
|00DE2B| db $09, $00, $20, $19 ; 0x15
|00DE2F| db $0B, $00, $21, $1A ; 0x16
|00DE33| db $09, $00, $24, $1B ; 0x17
|00DE37| db $08, $00, $22, $1B ; 0x18
|00DE3B| db $09, $00, $25, $1B ; 0x19
|00DE3F| db $09, $00, $26, $1B ; 0x1A
|00DE43| db $0A, $00, $27, $1D ; 0x1B
|00DE47| db $09, $00, $28, $1E ; 0x1C
|00DE4B| db $0C, $00, $29, $16 ; 0x1D
|00DE4F| db $0D, $00, $2A, $17 ; 0x1E
|00DE53| db $72, $00, $2B, $5D ; 0x1F

; Overworld
|00DE57| db $00, $00, $00, $00 ; 0x20
|00DE5B| db $00, $57, $4C, $00 ; 0x21
|00DE5F| db $00, $56, $4F, $00 ; 0x22
|00DE63| db $00, $53, $4D, $00 ; 0x23
|00DE67| db $00, $52, $49, $00 ; 0x24
|00DE6B| db $00, $55, $4A, $00 ; 0x25
|00DE6F| db $00, $53, $54, $00 ; 0x26
|00DE73| db $00, $51, $4E, $00 ; 0x27
|00DE77| db $00, $00, $00, $00 ; 0x28
|00DE7B| db $00, $50, $4B, $00 ; 0x29
|00DE7F| db $00, $53, $4D, $00 ; 0x2A
|00DE83| db $00, $55, $54, $00 ; 0x2B
|00DE87| db $00, $00, $00, $00 ; 0x2C
|00DE8B| db $00, $00, $00, $00 ; 0x2D
|00DE8F| db $00, $00, $00, $00 ; 0x2E
|00DE93| db $00, $47, $48, $00 ; 0x2F
|00DE97| db $00, $00, $00, $00 ; 0x30
|00DE9B| db $00, $57, $4C, $00 ; 0x31
|00DE9F| db $00, $56, $4F, $00 ; 0x32
|00DEA3| db $00, $53, $4D, $00 ; 0x33
|00DEA7| db $00, $52, $49, $00 ; 0x34
|00DEAB| db $00, $55, $4A, $00 ; 0x35
|00DEAF| db $00, $53, $54, $00 ; 0x36
|00DEB3| db $00, $51, $4E, $00 ; 0x37
|00DEB7| db $00, $00, $00, $00 ; 0x38
|00DEBB| db $00, $50, $4B, $00 ; 0x39
|00DEBF| db $00, $53, $00, $00 ; 0x3A
|00DEC3| db $00, $35, $36, $00 ; 0x3B
|00DEC7| db $00, $60, $34, $00 ; 0x3C
|00DECB| db $00, $2B, $2C, $00 ; 0x3D
|00DECF| db $00, $2D, $2E, $00 ; 0x3E
|00DED3| db $00, $2F, $30, $00 ; 0x3F
|00DED7| db $00, $37, $38, $00 ; 0x40
|00DEDB| db $00, $33, $34, $00 ; 0x41
|00DEDF| db $00, $31, $32, $00 ; 0x42
|00DEE3| db $00, $00, $00, $00 ; 0x43
|00DEE7| db $00, $00, $00, $00 ; 0x44
|00DEEB| db $00, $00, $00, $00 ; 0x45
|00DEEF| db $00, $00, $00, $00 ; 0x46
|00DEF3| db $00, $00, $00, $00 ; 0x47
|00DEF7| db $00, $00, $00, $00 ; 0x48
|00DEFB| db $00, $00, $00, $00 ; 0x49
|00DEFF| db $00, $00, $00, $00 ; 0x4A
|00DF03| db $00, $00, $00, $00 ; 0x4B
|00DF07| db $00, $00, $00, $00 ; 0x4C
|00DF0B| db $00, $00, $00, $00 ; 0x4D
|00DF0F| db $00, $00, $00, $00 ; 0x4E
|00DF13| db $00, $00, $00, $00 ; 0x4F
|00DF17| db $72, $71, $72, $71 ; 0x50
|00DF1B| db $72, $40, $41, $39 ; 0x51

;===================================================================================================

pool IncrementalVRAMUpload

.vram_address_high
|00DF1F| db $50 ; VRAM $A000
|00DF20| db $51 ; VRAM $A200
|00DF21| db $52 ; VRAM $A400
|00DF22| db $53 ; VRAM $A600
|00DF23| db $54 ; VRAM $A800
|00DF24| db $55 ; VRAM $AA00
|00DF25| db $56 ; VRAM $AC00
|00DF26| db $57 ; VRAM $AE00
|00DF27| db $58 ; VRAM $B000
|00DF28| db $59 ; VRAM $B200
|00DF29| db $5A ; VRAM $B400
|00DF2A| db $5B ; VRAM $B600
|00DF2B| db $5C ; VRAM $B800
|00DF2C| db $5D ; VRAM $BA00
|00DF2D| db $5E ; VRAM $BC00
|00DF2E| db $5F ; VRAM $BE00

;---------------------------------------------------------------------------------------------------

.buffer_address_high
|00DF2F| db >$7F0000 ; $50
|00DF30| db >$7F0200 ; $51
|00DF31| db >$7F0400 ; $52
|00DF32| db >$7F0600 ; $53
|00DF33| db >$7F0800 ; $54
|00DF34| db >$7F0A00 ; $55
|00DF35| db >$7F0C00 ; $56
|00DF36| db >$7F0E00 ; $57
|00DF37| db >$7F1000 ; $58
|00DF38| db >$7F1200 ; $59
|00DF39| db >$7F1400 ; $5A
|00DF3A| db >$7F1600 ; $5B
|00DF3B| db >$7F1800 ; $5C
|00DF3C| db >$7F1A00 ; $5D
|00DF3D| db >$7F1C00 ; $5E
|00DF3E| db >$7F1E00 ; $5F

endpool

;---------------------------------------------------------------------------------------------------

IncrementalVRAMUpload:
|00DF3F| LDX.w $0412
|00DF42| CPX.b #$10
|00DF44| BEQ .exit

|00DF46| LDA.l .vram_address_high,X
|00DF4A| STA.b $19

|00DF4C| STZ.w $0118

|00DF4F| LDA.l .buffer_address_high,X
|00DF53| STA.w $0119

|00DF56| INC.w $0412

.exit
|00DF59| RTL

;===================================================================================================
; TODO document routine
; needs better name too
;===================================================================================================
PrepTransAuxGfx:
|00DF5A| LDA.b #$7E
|00DF5C| STA.b $02
|00DF5E| STA.b $05

|00DF60| REP #$31

|00DF62| LDX.w #$0000
|00DF65| LDY.w #$0040
|00DF68| LDA.w #$7E6000
|00DF6B| JSR Expand3bppToBuffer_RightPalette

|00DF6E| LDY.w #$00C0

|00DF71| LDA.w $0AA2
|00DF74| AND.w #$00FF
|00DF77| CMP.w #$0020
|00DF7A| BCC .left_side_palettes

|00DF7C| LDY.w #$0080

|00DF7F| LDA.b $03
|00DF81| JSR Expand3bppToBuffer_RightPalette

|00DF84| LDY.w #$0040

.left_side_palettes
|00DF87| LDA.b $03
|00DF89| JSR Expand3bppToBuffer_LeftPalette

|00DF8C| SEP #$30

|00DF8E| RTL

;===================================================================================================

Expand3bppToBuffer_RightPalette:
|00DF8F| STY.b $0C

.next_tile
|00DF91| STA.b $00

|00DF93| CLC
|00DF94| ADC.w #$0010
|00DF97| STA.b $03

|00DF99| LDY.w #$0003

.next_convert
|00DF9C| LDA.b [$00]
|00DF9E| STA.l $7F0000,X

|00DFA2| XBA
|00DFA3| ORA.b [$00]
|00DFA5| AND.w #$00FF
|00DFA8| STA.b $08

|00DFAA| INC.b $00
|00DFAC| INC.b $00

|00DFAE| LDA.b [$03]
|00DFB0| AND.w #$00FF
|00DFB3| STA.b $0A

|00DFB5| ORA.b $08
|00DFB7| XBA
|00DFB8| ORA.b $0A
|00DFBA| STA.l $7F0010,X

|00DFBE| INC.b $03

|00DFC0| INX
|00DFC1| INX

|00DFC2| LDA.b [$00]
|00DFC4| STA.l $7F0000,X

|00DFC8| XBA
|00DFC9| ORA.b [$00]
|00DFCB| AND.w #$00FF
|00DFCE| STA.b $08

|00DFD0| INC.b $00
|00DFD2| INC.b $00

|00DFD4| LDA.b [$03]
|00DFD6| AND.w #$00FF
|00DFD9| STA.b $0A

|00DFDB| ORA.b $08
|00DFDD| XBA
|00DFDE| ORA.b $0A
|00DFE0| STA.l $7F0010,X

|00DFE4| INC.b $03

|00DFE6| INX
|00DFE7| INX

|00DFE8| DEY
|00DFE9| BPL .next_convert

|00DFEB| TXA
|00DFEC| CLC
|00DFED| ADC.w #$0010
|00DFF0| TAX

|00DFF1| LDA.b $03

|00DFF3| DEC.b $0C
|00DFF5| BNE .next_tile

|00DFF7| RTS

;===================================================================================================

Expand3bppToBuffer_LeftPalette:
|00DFF8| STY.b $0C

.next_tile
|00DFFA| STA.b $00

|00DFFC| CLC
|00DFFD| ADC.w #$0010
|00E000| STA.b $03

|00E002| LDY.w #$0001

.next_convert
|00E005| LDA.b [$00]
|00E007| STA.l $7F0000,X

|00E00B| INC.b $00
|00E00D| INC.b $00

|00E00F| LDA.b [$03]
|00E011| AND.w #$00FF
|00E014| STA.l $7F0010,X

|00E018| INC.b $03

|00E01A| INX
|00E01B| INX

|00E01C| LDA.b [$00]
|00E01E| STA.l $7F0000,X

|00E022| INC.b $00
|00E024| INC.b $00

|00E026| LDA.b [$03]
|00E028| AND.w #$00FF
|00E02B| STA.l $7F0010,X

|00E02F| INC.b $03

|00E031| INX
|00E032| INX

|00E033| LDA.b [$00]
|00E035| STA.l $7F0000,X

|00E039| INC.b $00
|00E03B| INC.b $00

|00E03D| LDA.b [$03]
|00E03F| AND.w #$00FF
|00E042| STA.l $7F0010,X

|00E046| INC.b $03

|00E048| INX
|00E049| INX

|00E04A| LDA.b [$00]
|00E04C| STA.l $7F0000,X

|00E050| INC.b $00
|00E052| INC.b $00

|00E054| LDA.b [$03]
|00E056| AND.w #$00FF
|00E059| STA.l $7F0010,X

|00E05D| INC.b $03

|00E05F| INX
|00E060| INX

|00E061| DEY
|00E062| BPL .next_convert

|00E064| TXA
|00E065| CLC
|00E066| ADC.w #$0010
|00E069| TAX

|00E06A| LDA.b $03

|00E06C| DEC.b $0C
|00E06E| BNE .next_tile

|00E070| RTS

;===================================================================================================

LoadNewSpriteGFXSet:
|00E071| LDA.b #$7E
|00E073| STA.b $02
|00E075| STA.b $05

|00E077| REP #$31

|00E079| LDX.w #$0000

|00E07C| LDA.w #$7E7800
|00E07F| LDY.w #$00C0
|00E082| JSR Expand3bppToBuffer_LeftPalette

|00E085| LDY.w #$0040

|00E088| LDA.l $7EC2FF
|00E08C| AND.w #$00FF
|00E08F| CMP.w #$0052
|00E092| BEQ .right_side

|00E094| CMP.w #$0053
|00E097| BEQ .right_side

|00E099| CMP.w #$005A
|00E09C| BEQ .right_side

|00E09E| CMP.w #$005B
|00E0A1| BNE .left_side

.right_side
|00E0A3| LDA.b $03
|00E0A5| JSR Expand3bppToBuffer_RightPalette

|00E0A8| SEP #$30

|00E0AA| RTL

.left_side
|00E0AB| LDA.b $03
|00E0AD| JSR Expand3bppToBuffer_LeftPalette

|00E0B0| SEP #$30

|00E0B2| RTL

;===================================================================================================

SheetsTable_AA1:
; Underworld
|00E0B3| db $00, $01, $10, $06, $0E, $1F, $18, $0F ; 0x00
|00E0BB| db $00, $01, $10, $08, $0E, $22, $1B, $0F ; 0x01
|00E0C3| db $00, $01, $10, $06, $0E, $1F, $18, $0F ; 0x02
|00E0CB| db $00, $01, $13, $07, $0E, $23, $1C, $0F ; 0x03
|00E0D3| db $00, $01, $10, $07, $0E, $21, $18, $0F ; 0x04
|00E0DB| db $00, $01, $10, $09, $0E, $20, $19, $0F ; 0x05
|00E0E3| db $02, $03, $12, $0B, $0E, $21, $1A, $0F ; 0x06
|00E0EB| db $00, $01, $11, $0C, $0E, $24, $1B, $0F ; 0x07
|00E0F3| db $00, $01, $11, $08, $0E, $22, $1B, $0F ; 0x08
|00E0FB| db $00, $01, $11, $0C, $0E, $25, $1A, $0F ; 0x09
|00E103| db $00, $01, $11, $0C, $0E, $26, $1B, $0F ; 0x0A
|00E10B| db $00, $01, $14, $0A, $0E, $27, $1D, $0F ; 0x0B
|00E113| db $00, $01, $11, $0A, $0E, $28, $1E, $0F ; 0x0C
|00E11B| db $02, $03, $12, $0B, $0E, $29, $16, $0F ; 0x0D
|00E123| db $00, $01, $15, $0D, $0E, $2A, $18, $0F ; 0x0E
|00E12B| db $00, $01, $10, $07, $0E, $23, $1C, $0F ; 0x0F
|00E133| db $00, $01, $13, $07, $0E, $04, $05, $0F ; 0x10
|00E13B| db $00, $01, $13, $07, $0E, $04, $05, $0F ; 0x11
|00E143| db $00, $01, $10, $09, $0E, $20, $1B, $0F ; 0x12
|00E14B| db $00, $01, $10, $09, $0E, $2A, $17, $0F ; 0x13
|00E153| db $02, $03, $12, $0B, $0E, $21, $1C, $0F ; 0x14

|00E15B| db $00, $08, $11, $1B, $22, $2E, $5D, $5B ; 0x15
|00E163| db $00, $08, $10, $18, $20, $2B, $5D, $5B ; 0x16
|00E16B| db $00, $08, $10, $18, $20, $2B, $5D, $5B ; 0x17

; Overworld
|00E173| db $3A, $3B, $3C, $3D, $53, $4D, $3E, $5B ; 0x18
|00E17B| db $42, $43, $44, $45, $20, $2B, $3F, $5D ; 0x19
|00E183| db $00, $08, $10, $18, $20, $2B, $5D, $5B ; 0x1A
|00E18B| db $00, $08, $10, $18, $20, $2B, $5D, $5B ; 0x1B
|00E193| db $00, $08, $10, $18, $20, $2B, $5D, $5B ; 0x1C
|00E19B| db $00, $08, $10, $18, $20, $2B, $5D, $5B ; 0x1D
|00E1A3| db $00, $08, $10, $18, $20, $2B, $5D, $5B ; 0x1E
|00E1AB| db $71, $72, $71, $72, $20, $2B, $5D, $5B ; 0x1F
|00E1B3| db $3A, $3B, $3C, $3D, $53, $4D, $3E, $5B ; 0x20
|00E1BB| db $42, $43, $44, $45, $20, $2B, $3F, $59 ; 0x21
|00E1C3| db $00, $72, $71, $72, $20, $2B, $5D, $0F ; 0x22
|00E1CB| db $00, $39, $39, $72, $40, $41, $39, $0F ; 0x23
|00E1D3| db $00, $46, $39, $72, $40, $41, $39, $0F ; 0x24

;===================================================================================================

InitializeTilesets:
|00E1DB| PHB
|00E1DC| PHK
|00E1DD| PLB

|00E1DE| LDA.b #$80
|00E1E0| STA.w VMAIN

|00E1E3| STZ.w VMADDL

|00E1E6| LDA.b #$44 ; VRAM $8800
|00E1E8| STA.w VMADDH

|00E1EB| JSR LoadCommonSprites

|00E1EE| REP #$30

|00E1F0| LDA.w $0AA3
|00E1F3| AND.w #$00FF
|00E1F6| ASL A
|00E1F7| ASL A
|00E1F8| TAY

|00E1F9| SEP #$20

|00E1FB| LDA.w SheetsTable_AA3+0,Y
|00E1FE| BEQ .dont_change_a

|00E200| STA.l $7EC2FC

.dont_change_a
|00E204| LDA.l $7EC2FC
|00E208| STA.b $09

|00E20A| LDA.w SheetsTable_AA3+1,Y
|00E20D| BEQ .dont_change_b

|00E20F| STA.l $7EC2FD

.dont_change_b
|00E213| LDA.l $7EC2FD
|00E217| STA.b $08

|00E219| LDA.w SheetsTable_AA3+2,Y
|00E21C| BEQ .dont_change_c

|00E21E| STA.l $7EC2FE

.dont_change_c
|00E222| LDA.l $7EC2FE
|00E226| STA.b $07

|00E228| LDA.w SheetsTable_AA3+3,Y
|00E22B| BEQ .dont_change_d

|00E22D| STA.l $7EC2FF

.dont_change_d
|00E231| LDA.l $7EC2FF
|00E235| STA.b $06

|00E237| SEP #$10

|00E239| LDY.b $09

|00E23B| LDA.b #$7E
|00E23D| STA.b $02

|00E23F| LDX.b #$78
|00E241| JSR LoadSpriteGraphics

|00E244| LDY.b $08
|00E246| LDX.b #$7E
|00E248| JSR LoadSpriteGraphics

|00E24B| LDY.b $07
|00E24D| LDX.b #$84
|00E24F| JSR LoadSpriteGraphics

|00E252| LDY.b $06
|00E254| LDX.b #$8A
|00E256| JSR LoadSpriteGraphics

;---------------------------------------------------------------------------------------------------

|00E259| REP #$30

|00E25B| LDA.w #$2000 ; VRAM $4000
|00E25E| STA.w VMADDR

|00E261| LDA.w $0AA1
|00E264| AND.w #$00FF
|00E267| ASL A
|00E268| ASL A
|00E269| ASL A
|00E26A| TAY

|00E26B| LDA.w $0AA2
|00E26E| AND.w #$00FF
|00E271| ASL A
|00E272| ASL A
|00E273| TAX

|00E274| SEP #$20

|00E276| LDA.w SheetsTable_AA1+0,Y
|00E279| STA.b $0D

|00E27B| LDA.w SheetsTable_AA1+1,Y
|00E27E| STA.b $0C

|00E280| LDA.w SheetsTable_AA1+2,Y
|00E283| STA.b $0B

|00E285| LDA.w SheetsTable_AA2+0,X
|00E288| BNE .not_default_a

|00E28A| LDA.w SheetsTable_AA1+3,Y

.not_default_a
|00E28D| STA.l $7EC2F8
|00E291| STA.b $0A

|00E293| LDA.w SheetsTable_AA2+1,X
|00E296| BNE .not_default_b

|00E298| LDA.w SheetsTable_AA1+4,Y

.not_default_b
|00E29B| STA.l $7EC2F9
|00E29F| STA.b $09

|00E2A1| LDA.w SheetsTable_AA2+2,X
|00E2A4| BNE .not_default_c

|00E2A6| LDA.w SheetsTable_AA1+5,Y

.not_default_c
|00E2A9| STA.l $7EC2FA
|00E2AD| STA.b $08

|00E2AF| LDA.w SheetsTable_AA2+3,X
|00E2B2| BNE .not_default_d

|00E2B4| LDA.w SheetsTable_AA1+6,Y

.not_default_d
|00E2B7| STA.l $7EC2FB
|00E2BB| STA.b $07

|00E2BD| LDA.w SheetsTable_AA1+7,Y
|00E2C0| STA.b $06

|00E2C2| SEP #$10

|00E2C4| LDA.b #$07
|00E2C6| STA.b $0F

|00E2C8| LDY.b $0D
|00E2CA| JSR LoadBackgroundGraphics

|00E2CD| DEC.b $0F

|00E2CF| LDY.b $0C
|00E2D1| JSR LoadBackgroundGraphics

|00E2D4| DEC.b $0F

|00E2D6| LDY.b $0B
|00E2D8| JSR LoadBackgroundGraphics

|00E2DB| DEC.b $0F

|00E2DD| LDY.b $0A
|00E2DF| LDA.b #$7E
|00E2E1| LDX.b #$60
|00E2E3| JSR LoadBackgroundGraphics.arbitrary

|00E2E6| DEC.b $0F

|00E2E8| LDY.b $09
|00E2EA| LDA.b #$7E
|00E2EC| LDX.b #$66
|00E2EE| JSR LoadBackgroundGraphics.arbitrary

|00E2F1| DEC.b $0F

|00E2F3| LDY.b $08
|00E2F5| LDA.b #$7E
|00E2F7| LDX.b #$6C
|00E2F9| JSR LoadBackgroundGraphics.arbitrary

|00E2FC| DEC.b $0F

|00E2FE| LDY.b $07
|00E300| LDA.b #$7E
|00E302| LDX.b #$72
|00E304| JSR LoadBackgroundGraphics.arbitrary

|00E307| DEC.b $0F

|00E309| LDY.b $06
|00E30B| JSR LoadBackgroundGraphics

|00E30E| PLB

|00E30F| RTL

;===================================================================================================

LoadDefaultGraphics:
|00E310| PHB
|00E311| PHK
|00E312| PLB

|00E313| LDA.b #$80
|00E315| STA.w VMAIN

|00E318| LDA.w GFXSheetPointers.sprite_bank
|00E31B| STA.b $02

|00E31D| LDA.w GFXSheetPointers.sprite_high
|00E320| STA.b $01

|00E322| LDA.w GFXSheetPointers.sprite_low
|00E325| STA.b $00

|00E327| REP #$20

|00E329| LDA.w #$4000 ; VRAM $8000
|00E32C| STA.w VMADDR

|00E32F| LDY.b #$40

;---------------------------------------------------------------------------------------------------

.next_tile
|00E331| LDX.b #$0E

.next_planes_a
|00E333| LDA.b [$00]
|00E335| STA.w VMDATA

|00E338| XBA
|00E339| ORA.b [$00]
|00E33B| AND.w #$00FF
|00E33E| STA.b $BF,X

|00E340| INC.b $00
|00E342| INC.b $00

|00E344| DEX
|00E345| DEX
|00E346| BPL .next_planes_a

|00E348| LDX.b #$0E

.next_planes_b
|00E34A| LDA.b [$00]
|00E34C| AND.w #$00FF
|00E34F| STA.b $BD

|00E351| ORA.b $BF,X
|00E353| XBA
|00E354| ORA.b $BD
|00E356| STA.w VMDATA

|00E359| INC.b $00

|00E35B| DEX
|00E35C| DEX
|00E35D| BPL .next_planes_b

|00E35F| DEY
|00E360| BNE .next_tile

;---------------------------------------------------------------------------------------------------

|00E362| LDA.w #$7000 ; VRAM $E000
|00E365| STA.w VMADDR

|00E368| SEP #$20

|00E36A| LDY.b #$6A
|00E36C| JSR DecompressAndCopyManually

|00E36F| LDY.b #$6B
|00E371| JSR DecompressAndCopyManually

|00E374| LDY.b #$69
|00E376| JSR DecompressAndCopyManually

|00E379| PLB

|00E37A| RTL

;===================================================================================================

DecompressAndCopyManually:
|00E37B| JSR Decompress_sprite_low

|00E37E| REP #$30

|00E380| LDX.w #$00FF

.copy_next
|00E383| LDA.b [$00]
|00E385| STA.w VMDATA

|00E388| INC.b $00
|00E38A| INC.b $00

|00E38C| LDA.b [$00]
|00E38E| STA.w VMDATA

|00E391| INC.b $00
|00E393| INC.b $00

|00E395| LDA.b [$00]
|00E397| STA.w VMDATA

|00E39A| INC.b $00
|00E39C| INC.b $00

|00E39E| LDA.b [$00]
|00E3A0| STA.w VMDATA

|00E3A3| INC.b $00
|00E3A5| INC.b $00

|00E3A7| DEX
|00E3A8| BPL .copy_next

|00E3AA| SEP #$30

|00E3AC| RTS

;===================================================================================================

TransferAttractPlaques:
|00E3AD| PHB
|00E3AE| PHK
|00E3AF| PLB

|00E3B0| LDA.b #$80
|00E3B2| STA.w VMAIN
|00E3B5| STZ.w VMADDL

|00E3B8| LDA.b #$78 ; VRAM $F000
|00E3BA| STA.w VMADDH

|00E3BD| LDY.b #$67
|00E3BF| JSR DecompressAndCopyManually

|00E3C2| PLB

|00E3C3| RTL

;===================================================================================================

LoadCommonSprites_long:
|00E3C4| PHB
|00E3C5| PHK
|00E3C6| PLB

|00E3C7| LDA.b #$80
|00E3C9| STA.w VMAIN

|00E3CC| STZ.w VMADDL

|00E3CF| LDA.b #$44 ; VRAM $8800
|00E3D1| STA.w VMADDH

|00E3D4| JSR LoadCommonSprites

|00E3D7| PLB

|00E3D8| RTL

;===================================================================================================

TransferMode7Characters:
|00E3D9| LDA.b #^WorldMap_Mode7TileGFX
|00E3DB| STA.b $02

|00E3DD| LDA.b #$80
|00E3DF| STA.w VMAIN

|00E3E2| STZ.w VMADDL ; VRAM $0000
|00E3E5| STZ.w VMADDH

|00E3E8| REP #$10

|00E3EA| LDY.w #WorldMap_Mode7TileGFX
|00E3ED| STY.b $00

;---------------------------------------------------------------------------------------------------

|00E3EF| LDY.w #$0000

.next
|00E3F2| LDA.b [$00],Y
|00E3F4| STA.w VMDATAH

|00E3F7| INY
|00E3F8| LDA.b [$00],Y
|00E3FA| STA.w VMDATAH

|00E3FD| INY
|00E3FE| LDA.b [$00],Y
|00E400| STA.w VMDATAH

|00E403| INY
|00E404| LDA.b [$00],Y
|00E406| STA.w VMDATAH

|00E409| INY
|00E40A| CPY.w #$4000
|00E40D| BNE .next

|00E40F| SEP #$10

;---------------------------------------------------------------------------------------------------

#EXIT_00E411:
|00E411| RTL

;===================================================================================================

pool LoadChrHalfSlot

.sheet_id
|00E412| db $01 ; 0x74 - Overworld common
|00E413| db $01 ; 0x74 - Overworld common
|00E414| db $08 ; 0x7B - Intro
|00E415| db $08 ; 0x7B - Intro
|00E416| db $09 ; 0x7C - Unused
|00E417| db $09 ; 0x7C - Unused
|00E418| db $02 ; 0x75 - Ether
|00E419| db $02 ; 0x75 - Ether
|00E41A| db $02 ; 0x75 - Ether
|00E41B| db $02 ; 0x75 - Ether
|00E41C| db $03 ; 0x76 - Bombos
|00E41D| db $03 ; 0x76 - Bombos
|00E41E| db $04 ; 0x77 - Quake
|00E41F| db $04 ; 0x77 - Quake
|00E420| db $05 ; 0x78 - Game over
|00E421| db $05 ; 0x78 - Game over
|00E422| db $08 ; 0x7B - Intro
|00E423| db $08 ; 0x7B - Intro
|00E424| db $08 ; 0x7B - Intro
|00E425| db $08 ; 0x7B - Intro

.palette_id
|00E426| db $0A ; 0x74 - Overworld common
|00E427| db $FF ; 0x74 - Overworld common
|00E428| db $03 ; 0x7B - Intro
|00E429| db $FF ; 0x7B - Intro
|00E42A| db $00 ; 0x7C - Unused
|00E42B| db $FF ; 0x7C - Unused
|00E42C| db $FF ; 0x75 - Ether
|00E42D| db $FF ; 0x75 - Ether
|00E42E| db $01 ; 0x75 - Ether
|00E42F| db $FF ; 0x75 - Ether
|00E430| db $02 ; 0x76 - Bombos
|00E431| db $FF ; 0x76 - Bombos
|00E432| db $00 ; 0x77 - Quake
|00E433| db $FF ; 0x77 - Quake
|00E434| db $FF ; 0x78 - Game over
|00E435| db $FF ; 0x78 - Game over
|00E436| db $FF ; 0x7B - Intro
|00E437| db $FF ; 0x7B - Intro
|00E438| db $FF ; 0x7B - Intro
|00E439| db $FF ; 0x7B - Intro

endpool

;---------------------------------------------------------------------------------------------------

LoadChrHalfSlot:
|00E43A| LDX.w $0AAA
|00E43D| BEQ EXIT_00E411

|00E43F| PHB
|00E440| PHK
|00E441| PLB

|00E442| LDA.w .palette_id-1,X
|00E445| BMI .done_palette

|00E447| STA.w $0AB1

|00E44A| CPX.b #$01
|00E44C| BNE .not_sheet_1

|00E44E| LDA.b #$0A
|00E450| STA.w $0AB1

|00E453| LDA.b #$02
|00E455| STA.w $0AA9

|00E458| JSL PaletteLoad_SpriteEnvironment

|00E45C| INC.b $15

|00E45E| BRA .done_palette

.not_sheet_1
|00E460| LDA.b #$02
|00E462| STA.w $0AA9

|00E465| JSL PaletteLoad_SpriteEnvironment_Underworld

|00E469| INC.b $15

;---------------------------------------------------------------------------------------------------

.done_palette
|00E46B| LDX.w $0AAA

|00E46E| LDY.b #$44

|00E470| STZ.b $08
|00E472| STZ.b $09

|00E474| INC.w $0AAA

|00E477| LDA.w $0AAA
|00E47A| LSR A
|00E47B| BCC .dont_reset_medallion_flags

|00E47D| STZ.w $0AAA

|00E480| CPX.b #$12
|00E482| BEQ .dont_reset_medallion_flags

|00E484| LDA.b #$03
|00E486| STA.b $09

|00E488| LDY.b #$46
|00E48A| CPX.b #$02
|00E48C| BNE .dont_reset_medallion_flags

|00E48E| STZ.w $0112

.dont_reset_medallion_flags
|00E491| STY.w $0116

|00E494| LDA.b #$0B
|00E496| STA.b $17

|00E498| LDY.w .sheet_id-1,X
|00E49B| CPY.b #$01
|00E49D| BNE .dont_reload_from_tileset

|00E49F| LDY.w $0AA4

.dont_reload_from_tileset
|00E4A2| LDA.w GFXSheetPointers.sprite_bank,Y
|00E4A5| STA.b $02
|00E4A7| STA.b $05

|00E4A9| LDA.w GFXSheetPointers.sprite_high,Y
|00E4AC| STA.b $01

|00E4AE| LDA.w GFXSheetPointers.sprite_low,Y
|00E4B1| STA.b $00

|00E4B3| REP #$31

|00E4B5| LDY.w #$0020
|00E4B8| STY.b $0C

|00E4BA| LDX.w #$0000

|00E4BD| LDA.b $00
|00E4BF| ADC.b $08

;---------------------------------------------------------------------------------------------------

.next_tile
|00E4C1| STA.b $00

|00E4C3| CLC
|00E4C4| ADC.w #$0010
|00E4C7| BNE .no_bank_cross_1

|00E4C9| LDA.w #$8000
|00E4CC| INC.b $05

.no_bank_cross_1
|00E4CE| STA.b $03

|00E4D0| LDY.w #$0007

.next_plane
|00E4D3| LDA.b [$00]
|00E4D5| STA.l $7F1000,X

|00E4D9| XBA
|00E4DA| ORA.b [$00]
|00E4DC| AND.w #$00FF
|00E4DF| STA.b $08

|00E4E1| INC.b $00
|00E4E3| INC.b $00
|00E4E5| BNE .no_bank_cross_2

|00E4E7| LDA.b $03
|00E4E9| INC A
|00E4EA| STA.b $00

|00E4EC| INC.b $02

|00E4EE| LDA.b $02
|00E4F0| STA.b $05

.no_bank_cross_2
|00E4F2| LDA.b [$03]
|00E4F4| AND.w #$00FF
|00E4F7| STA.b $0A

|00E4F9| ORA.b $08
|00E4FB| XBA
|00E4FC| ORA.b $0A
|00E4FE| STA.l $7F1010,X

|00E502| INC.b $03
|00E504| BNE .no_bank_cross_3

|00E506| LDA.w #$8000
|00E509| STA.b $00

|00E50B| LDA.w #$8010
|00E50E| STA.b $03

|00E510| INC.b $02
|00E512| INC.b $05

.no_bank_cross_3
|00E514| INX
|00E515| INX

|00E516| DEY
|00E517| BPL .next_plane

|00E519| TXA
|00E51A| CLC
|00E51B| ADC.w #$0010
|00E51E| TAX

|00E51F| LDA.b $03

|00E521| DEC.b $0C
|00E523| BNE .next_tile

|00E525| SEP #$30

|00E527| PLB

|00E528| RTL

;===================================================================================================

LoadFileSelectGraphics:
|00E529| LDA.b #$02
|00E52B| STA.w OBSEL

|00E52E| LDA.b #$80
|00E530| STA.w VMAIN
|00E533| STZ.w VMADDL

|00E536| LDA.b #$50 ; VRAM $A000
|00E538| STA.w VMADDH

;---------------------------------------------------------------------------------------------------

|00E53B| PHB
|00E53C| PHK
|00E53D| PLB

|00E53E| LDY.b #$5E
|00E540| JSR Decompress_sprite_low

|00E543| REP #$20

|00E545| LDY.b #$3F
|00E547| JSR Expand3bppToVRAM_RightPalette

|00E54A| LDY.b #$5F
|00E54C| JSR Decompress_sprite_low

|00E54F| REP #$20

|00E551| LDY.b #$3F
|00E553| JSR Expand3bppToVRAM_RightPalette

|00E556| PLB

;---------------------------------------------------------------------------------------------------

|00E557| LDA.b #$7E
|00E559| STA.b $02

|00E55B| REP #$30

|00E55D| LDA.w #$7000 ; VRAM $E000
|00E560| STA.w VMADDR

|00E563| LDA.w #$7E2000
|00E566| STA.b $00

|00E568| LDX.w #$0CFF

.next_a
|00E56B| LDA.b [$00]
|00E56D| STA.w VMDATA

|00E570| INC.b $00
|00E572| INC.b $00

|00E574| DEX
|00E575| BPL .next_a

;---------------------------------------------------------------------------------------------------

|00E577| SEP #$30

|00E579| PHB
|00E57A| PHK
|00E57B| PLB

|00E57C| LDY.b #$6B
|00E57E| JSR Decompress_sprite_low

|00E581| REP #$30

|00E583| LDX.w #$02FF

.next_b
|00E586| LDA.b [$00]
|00E588| STA.w VMDATA

|00E58B| INC.b $00
|00E58D| INC.b $00

|00E58F| DEX
|00E590| BPL .next_b

|00E592| SEP #$30

|00E594| PLB

|00E595| RTL

;===================================================================================================

TransferFontToVRAM:
|00E596| LDA.b #$02
|00E598| STA.w OBSEL

|00E59B| LDA.b #$80
|00E59D| STA.w VMAIN

|00E5A0| LDA.b #$7E
|00E5A2| STA.b $02

|00E5A4| REP #$30

|00E5A6| LDA.w #$7000 ; VRAM $E000
|00E5A9| STA.w VMADDR

|00E5AC| LDA.w #$7E2000
|00E5AF| STA.b $00

|00E5B1| LDX.w #$0FFF

.next
|00E5B4| LDA.b [$00]
|00E5B6| STA.w VMDATA

|00E5B9| INC.b $00
|00E5BB| INC.b $00

|00E5BD| DEX
|00E5BE| BPL .next

|00E5C0| SEP #$30

|00E5C2| RTL

;===================================================================================================

LoadSpriteGraphics:
|00E5C3| STZ.b $00
|00E5C5| STX.b $01

|00E5C7| PHY

|00E5C8| JSR Decompress_sprite_arbitrary

|00E5CB| REP #$20

|00E5CD| LDY.b #$3F

|00E5CF| PLX

|00E5D0| CPX.b #$52
|00E5D2| BEQ Expand3bppToVRAM_RightPalette

|00E5D4| CPX.b #$53
|00E5D6| BEQ Expand3bppToVRAM_RightPalette

|00E5D8| CPX.b #$5A
|00E5DA| BEQ Expand3bppToVRAM_RightPalette

|00E5DC| CPX.b #$5B
|00E5DE| BEQ Expand3bppToVRAM_RightPalette

|00E5E0| CPX.b #$5C
|00E5E2| BEQ Expand3bppToVRAM_RightPalette

|00E5E4| CPX.b #$5E
|00E5E6| BEQ Expand3bppToVRAM_RightPalette

|00E5E8| CPX.b #$5F
|00E5EA| BEQ Expand3bppToVRAM_RightPalette

|00E5EC| JMP.w Expand3bppToVRAM_LeftPalette

;===================================================================================================

Expand3bppToVRAM_RightPalette:
.next_tile
|00E5EF| LDX.b #$0E

.next_planes_a
|00E5F1| LDA.b [$00]
|00E5F3| STA.w VMDATA

|00E5F6| XBA
|00E5F7| ORA.b [$00]
|00E5F9| AND.w #$00FF
|00E5FC| STA.b $BF,X

|00E5FE| INC.b $00
|00E600| INC.b $00

|00E602| DEX
|00E603| DEX

|00E604| LDA.b [$00]
|00E606| STA.w VMDATA

|00E609| XBA
|00E60A| ORA.b [$00]
|00E60C| AND.w #$00FF
|00E60F| STA.b $BF,X

|00E611| INC.b $00
|00E613| INC.b $00

|00E615| DEX
|00E616| DEX
|00E617| BPL .next_planes_a

;---------------------------------------------------------------------------------------------------

|00E619| LDX.b #$0E

.next_planes_b
|00E61B| LDA.b [$00]
|00E61D| AND.w #$00FF
|00E620| STA.b $BD

|00E622| ORA.b $BF,X
|00E624| XBA
|00E625| ORA.b $BD
|00E627| STA.w VMDATA
|00E62A| INC.b $00

|00E62C| DEX
|00E62D| DEX

|00E62E| LDA.b [$00]
|00E630| AND.w #$00FF
|00E633| STA.b $BD

|00E635| ORA.b $BF,X
|00E637| XBA
|00E638| ORA.b $BD
|00E63A| STA.w VMDATA

|00E63D| INC.b $00

|00E63F| DEX
|00E640| DEX
|00E641| BPL .next_planes_b

|00E643| DEY
|00E644| BPL .next_tile

|00E646| SEP #$20

|00E648| RTS

;===================================================================================================

LoadBackgroundGraphics:
|00E649| LDA.b #^$7F4000
|00E64B| LDX.b #>$7F4000

.arbitrary
|00E64D| STZ.b $00
|00E64F| STX.b $01
|00E651| STA.b $02

|00E653| JSR Decompress_background_arbitrary

|00E656| REP #$20

|00E658| LDY.b #$3F

|00E65A| LDX.w $0AA1
|00E65D| CPX.b #$20
|00E65F| BCC .do_low

|00E661| LDX.b $0F
|00E663| CPX.b #$07
|00E665| BEQ Expand3bppToVRAM_RightPalette

|00E667| CPX.b #$02
|00E669| BEQ Expand3bppToVRAM_RightPalette

|00E66B| CPX.b #$04
|00E66D| BEQ Expand3bppToVRAM_RightPalette

|00E66F| CPX.b #$03
|00E671| BNE Expand3bppToVRAM_LeftPalette

.nevermind_do_high
|00E673| JMP.w Expand3bppToVRAM_RightPalette

.do_low
|00E676| LDX.b $0F
|00E678| CPX.b #$04
|00E67A| BCS .nevermind_do_high

;===================================================================================================

Expand3bppToVRAM_LeftPalette:
.next_super
|00E67C| LDA.b [$00]
|00E67E| STA.w VMDATA

|00E681| INC.b $00
|00E683| INC.b $00

|00E685| LDA.b [$00]
|00E687| STA.w VMDATA

|00E68A| INC.b $00
|00E68C| INC.b $00

|00E68E| LDA.b [$00]
|00E690| STA.w VMDATA

|00E693| INC.b $00
|00E695| INC.b $00

|00E697| LDA.b [$00]
|00E699| STA.w VMDATA

|00E69C| INC.b $00
|00E69E| INC.b $00

|00E6A0| LDA.b [$00]
|00E6A2| STA.w VMDATA

|00E6A5| INC.b $00
|00E6A7| INC.b $00

|00E6A9| LDA.b [$00]
|00E6AB| STA.w VMDATA

|00E6AE| INC.b $00
|00E6B0| INC.b $00

|00E6B2| LDA.b [$00]
|00E6B4| STA.w VMDATA

|00E6B7| INC.b $00
|00E6B9| INC.b $00

|00E6BB| LDA.b [$00]
|00E6BD| STA.w VMDATA

|00E6C0| INC.b $00
|00E6C2| INC.b $00

;---------------------------------------------------------------------------------------------------

|00E6C4| LDX.b #$01

.next
|00E6C6| LDA.b [$00]
|00E6C8| AND.w #$00FF
|00E6CB| STA.w VMDATA

|00E6CE| INC.b $00

|00E6D0| LDA.b [$00]
|00E6D2| AND.w #$00FF
|00E6D5| STA.w VMDATA

|00E6D8| INC.b $00

|00E6DA| LDA.b [$00]
|00E6DC| AND.w #$00FF
|00E6DF| STA.w VMDATA

|00E6E2| INC.b $00

|00E6E4| LDA.b [$00]
|00E6E6| AND.w #$00FF
|00E6E9| STA.w VMDATA

|00E6EC| INC.b $00

|00E6EE| DEX
|00E6EF| BPL .next

;---------------------------------------------------------------------------------------------------

|00E6F1| DEY
|00E6F2| BPL .next_super

|00E6F4| SEP #$20

|00E6F6| RTS

;===================================================================================================

LoadCommonSprites:
|00E6F7| LDY.w $0AA4

|00E6FA| LDA.w GFXSheetPointers.sprite_bank,Y
|00E6FD| STA.b $02

|00E6FF| LDA.w GFXSheetPointers.sprite_high,Y
|00E702| STA.b $01

|00E704| LDA.w GFXSheetPointers.sprite_low,Y
|00E707| STA.b $00

|00E709| REP #$20

|00E70B| LDY.b #$40

;---------------------------------------------------------------------------------------------------

.next_tile
|00E70D| LDX.b #$0E

.next_planes_a
|00E70F| LDA.b [$00]
|00E711| STA.w VMDATA

|00E714| XBA
|00E715| ORA.b [$00]
|00E717| AND.w #$00FF
|00E71A| STA.b $BF,X

|00E71C| INC.b $00
|00E71E| INC.b $00

|00E720| DEX
|00E721| DEX

|00E722| LDA.b [$00]
|00E724| STA.w VMDATA

|00E727| XBA
|00E728| ORA.b [$00]
|00E72A| AND.w #$00FF
|00E72D| STA.b $BF,X

|00E72F| INC.b $00
|00E731| INC.b $00

|00E733| DEX
|00E734| DEX
|00E735| BPL .next_planes_a

;---------------------------------------------------------------------------------------------------

|00E737| LDX.b #$0E

.next_planes_b
|00E739| LDA.b [$00]
|00E73B| AND.w #$00FF
|00E73E| STA.b $BD

|00E740| ORA.b $BF,X
|00E742| XBA
|00E743| ORA.b $BD
|00E745| STA.w VMDATA

|00E748| INC.b $00

|00E74A| DEX
|00E74B| DEX

|00E74C| LDA.b [$00]
|00E74E| AND.w #$00FF
|00E751| STA.b $BD

|00E753| ORA.b $BF,X
|00E755| XBA
|00E756| ORA.b $BD
|00E758| STA.w VMDATA

|00E75B| INC.b $00

|00E75D| DEX
|00E75E| DEX
|00E75F| BPL .next_planes_b

|00E761| DEY
|00E762| BNE .next_tile

;---------------------------------------------------------------------------------------------------

|00E764| SEP #$20

|00E766| LDA.b $10
|00E768| CMP.b #$01
|00E76A| BEQ .in_file_select

|00E76C| LDY.b #$06

|00E76E| LDA.w GFXSheetPointers.sprite_bank,Y
|00E771| STA.b $02

|00E773| LDA.w GFXSheetPointers.sprite_high,Y
|00E776| STA.b $01

|00E778| LDA.w GFXSheetPointers.sprite_low,Y
|00E77B| STA.b $00

|00E77D| REP #$20

|00E77F| LDY.b #$7F

|00E781| JMP.w Expand3bppToVRAM_LeftPalette

;---------------------------------------------------------------------------------------------------

.in_file_select
|00E784| STZ.b $0F

|00E786| LDY.b #$5E
|00E788| STY.b $06

|00E78A| LDA.b #$7F
|00E78C| STA.b $02

|00E78E| LDX.b #$40

|00E790| JSR LoadSpriteGraphics

|00E793| LDY.b #$5F
|00E795| STY.b $06

|00E797| LDX.b #$40

|00E799| JMP.w LoadSpriteGraphics

;===================================================================================================

Decompress_sprite_high:
|00E79C| STZ.b $00

|00E79E| LDA.b #>$7F4600
|00E7A0| STA.b $01

|00E7A2| LDA.b #^$7F4600
|00E7A4| BRA .sprite_set_bank

;===================================================================================================

#Decompress_sprite_low:
|00E7A6| STZ.b $00

|00E7A8| LDA.b #$40
|00E7AA| STA.b $01

|00E7AC| LDA.b #$7F

;---------------------------------------------------------------------------------------------------

.sprite_set_bank
|00E7AE| STA.b $02
|00E7B0| STA.b $05

;===================================================================================================

Decompress_sprite_arbitrary:
|00E7B2| LDA.w GFXSheetPointers.sprite_bank,Y
|00E7B5| STA.b $CA

|00E7B7| LDA.w GFXSheetPointers.sprite_high,Y
|00E7BA| STA.b $C9

|00E7BC| LDA.w GFXSheetPointers.sprite_low,Y
|00E7BF| STA.b $C8

|00E7C1| BRA Decompress

;===================================================================================================

Decompress_background_low:
|00E7C3| STZ.b $00

|00E7C5| LDA.b #>$7F4000
|00E7C7| STA.b $01

|00E7C9| LDA.b #^$7F4000

;===================================================================================================

Decompress_background_arbitrary_bank:
|00E7CB| STA.b $02
|00E7CD| STA.b $05

;===================================================================================================

Decompress_background_arbitrary:
|00E7CF| LDA.w GFXSheetPointers.background_bank,Y
|00E7D2| STA.b $CA

|00E7D4| LDA.w GFXSheetPointers.background_high,Y
|00E7D7| STA.b $C9

|00E7D9| LDA.w GFXSheetPointers.background_low,Y
|00E7DC| STA.b $C8

;===================================================================================================

Decompress:
|00E7DE| REP #$10

|00E7E0| LDY.w #$0000

.next_command
|00E7E3| JSR GetNextByte

|00E7E6| CMP.b #$FF ; stop decompression
|00E7E8| BNE .continue

|00E7EA| SEP #$10

|00E7EC| RTS

;---------------------------------------------------------------------------------------------------

.continue
|00E7ED| STA.b $CD

|00E7EF| AND.b #$E0 ; check for top 3 bits, but this AND is pointless
|00E7F1| CMP.b #$E0 ; this is a case where just CMP : BCS would work
|00E7F3| BEQ .expanded

|00E7F5| PHA

|00E7F6| LDA.b $CD

|00E7F8| REP #$20

|00E7FA| AND.w #$001F

|00E7FD| BRA .normal

;---------------------------------------------------------------------------------------------------

.expanded
|00E7FF| LDA.b $CD
|00E801| ASL A
|00E802| ASL A
|00E803| ASL A
|00E804| AND.b #$E0
|00E806| PHA

|00E807| LDA.b $CD
|00E809| AND.b #$03
|00E80B| XBA

|00E80C| JSR GetNextByte

|00E80F| REP #$20

;---------------------------------------------------------------------------------------------------

.normal
|00E811| INC A
|00E812| STA.b $CB

|00E814| SEP #$20

|00E816| PLA

|00E817| BEQ .raw_copy
|00E819| BMI .copy_past

|00E81B| ASL A
|00E81C| BPL .repeating_byte

|00E81E| ASL A
|00E81F| BPL .repeating_word

;---------------------------------------------------------------------------------------------------

.incremental
|00E821| JSR GetNextByte

|00E824| LDX.b $CB

.next_incremental
|00E826| STA.b [$00],Y

|00E828| INC A

|00E829| INY

|00E82A| DEX
|00E82B| BNE .next_incremental

|00E82D| BRA .next_command

;---------------------------------------------------------------------------------------------------

.raw_copy
|00E82F| JSR GetNextByte
|00E832| STA.b [$00],Y

|00E834| INY

|00E835| LDX.b $CB
|00E837| DEX
|00E838| STX.b $CB

|00E83A| BNE .raw_copy

|00E83C| BRA .next_command

;---------------------------------------------------------------------------------------------------

.repeating_byte
|00E83E| JSR GetNextByte

|00E841| LDX.b $CB

.next_repeating
|00E843| STA.b [$00],Y

|00E845| INY

|00E846| DEX

|00E847| BNE .next_repeating

|00E849| BRA .next_command

;---------------------------------------------------------------------------------------------------

.repeating_word
|00E84B| JSR GetNextByte
|00E84E| XBA
|00E84F| JSR GetNextByte

|00E852| LDX.b $CB

.next_word
|00E854| XBA
|00E855| STA.b [$00],Y

|00E857| INY

|00E858| DEX
|00E859| BEQ .done_words

|00E85B| XBA
|00E85C| STA.b [$00],Y

|00E85E| INY

|00E85F| DEX

|00E860| BNE .next_word

.done_words
|00E862| JMP.w .next_command

;---------------------------------------------------------------------------------------------------

.copy_past
|00E865| JSR GetNextByte
|00E868| XBA

|00E869| JSR GetNextByte
|00E86C| XBA

|00E86D| TAX

.next_copy
|00E86E| PHY
|00E86F| TXY

|00E870| LDA.b [$00],Y

|00E872| TYX
|00E873| PLY

|00E874| STA.b [$00],Y

|00E876| INY
|00E877| INX

|00E878| REP #$20

|00E87A| DEC.b $CB

|00E87C| SEP #$20

|00E87E| BNE .next_copy

|00E880| JMP.w .next_command

;===================================================================================================

GetNextByte:
|00E883| LDA.b [$C8]

|00E885| LDX.b $C8
|00E887| INX
|00E888| BNE .no_bank_wrap

|00E88A| LDX.w #$8000
|00E88D| INC.b $CA

.no_bank_wrap
|00E88F| STX.b $C8

|00E891| RTS

;===================================================================================================
; FREE ROM: 0x1E
;===================================================================================================
NULL_00E892:
|00E892| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|00E89A| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|00E8A2| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|00E8AA| db $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

PaletteFilterColorAdd:
|00E8B0| dw $FFFF, $0001
|00E8B4| dw $FFE0, $0020
|00E8B8| dw $FC00, $0400

;---------------------------------------------------------------------------------------------------

PaletteFilterColorMasks:
|00E8BC| dw $FFFF, $FFFF, $FFFE, $FFFF
|00E8C4| dw $7FFF, $7FFF, $7FDF, $FBFF
|00E8CC| dw $7F7F, $7F7F, $7DF7, $EFBF
|00E8D4| dw $7BDF, $7BDF, $77BB, $DDEF
|00E8DC| dw $7777, $7777, $6EDD, $BB77
|00E8E4| dw $6DB7, $6DB7, $5B6D, $B6DB
|00E8EC| dw $5B5B, $5B5B, $56B6, $AD6B
|00E8F4| dw $5555, $AD6B, $5555, $AAAB
|00E8FC| dw $5555, $5555, $2A55, $5555
|00E904| dw $2A55, $2A55, $294A, $5295
|00E90C| dw $2525, $2525, $2492, $4925
|00E914| dw $1249, $1249, $1122, $4489
|00E91C| dw $1111, $1111, $0844, $2211
|00E924| dw $0421, $0421, $0208, $1041
|00E92C| dw $0101, $0101, $0020, $0401
|00E934| dw $0001, $0001, $0000, $0001

;===================================================================================================

PaletteFilter:
|00E93C| SEP #$20

|00E93E| LDA.b $1A
|00E940| LSR A
|00E941| BCC ApplyPaletteFilter

|00E943| RTL

;===================================================================================================

ApplyPaletteFilter:
|00E944| REP #$30

|00E946| LDX.w #PaletteFilterColorMasks

|00E949| LDA.l $7EC007
|00E94D| CMP.w #$0010
|00E950| BCC .darken_color

|00E952| INX
|00E953| INX

.darken_color
|00E954| STX.b $B7

|00E956| AND.w #$000F
|00E959| ASL A
|00E95A| TAX

|00E95B| LDA.w BitMasks,X
|00E95E| STA.b $0C

;---------------------------------------------------------------------------------------------------

|00E960| PHB
|00E961| PHK
|00E962| PLB

|00E963| LDA.l $7EC009
|00E967| TAX

|00E968| LDA.w PaletteFilterColorAdd+0,X
|00E96B| STA.b $06

|00E96D| LDA.w PaletteFilterColorAdd+4,X
|00E970| STA.b $08

|00E972| LDA.w PaletteFilterColorAdd+8,X
|00E975| STA.b $0A

|00E977| LDX.w #$0040
|00E97A| JSR PaletteFilter_FilterColors

|00E97D| LDA.l $7EC500
|00E981| STA.b $04

|00E983| LDA.l $7EC300
|00E987| AND.w #$001F
|00E98A| ASL A
|00E98B| ASL A
|00E98C| TAY

|00E98D| LDA.b ($B7),Y
|00E98F| AND.b $0C
|00E991| BNE .no_red

|00E993| LDA.b $04
|00E995| ADC.b $06
|00E997| STA.b $04

.no_red
|00E999| LDA.l $7EC300
|00E99D| AND.w #$03E0
|00E9A0| LSR A
|00E9A1| LSR A
|00E9A2| LSR A
|00E9A3| TAY

|00E9A4| LDA.b ($B7),Y
|00E9A6| AND.b $0C
|00E9A8| BNE .no_green

|00E9AA| LDA.b $04
|00E9AC| ADC.b $08
|00E9AE| STA.b $04

.no_green
|00E9B0| LDA.l $7EC301
|00E9B4| AND.w #$007C
|00E9B7| TAY

|00E9B8| LDA.b ($B7),Y
|00E9BA| AND.b $0C
|00E9BC| BNE .no_blue

|00E9BE| LDA.b $04
|00E9C0| CLC
|00E9C1| ADC.b $0A
|00E9C3| STA.b $04

;---------------------------------------------------------------------------------------------------

.no_blue
|00E9C5| LDA.b $04
|00E9C7| STA.l $7EC500

|00E9CB| PLB

|00E9CC| LDA.l $7EC009
|00E9D0| BNE .lightening

|00E9D2| LDA.l $7EC007
|00E9D6| INC A
|00E9D7| STA.l $7EC007

|00E9DB| CMP.l $7EC00B
|00E9DF| BNE .continue_filtering

.swap
|00E9E1| LDA.l $7EC009
|00E9E5| EOR.w #$0002
|00E9E8| STA.l $7EC009

|00E9EC| LDA.w #$0000
|00E9EF| STA.l $7EC007

|00E9F3| SEP #$20

|00E9F5| INC.b $B0

.continue_filtering
|00E9F7| SEP #$30

|00E9F9| INC.b $15

|00E9FB| RTL

;---------------------------------------------------------------------------------------------------

.lightening
|00E9FC| LDA.l $7EC007
|00EA00| CMP.l $7EC00B
|00EA04| BEQ .swap

|00EA06| LDA.l $7EC007
|00EA0A| DEC A
|00EA0B| STA.l $7EC007

|00EA0F| SEP #$30

|00EA11| INC.b $15

|00EA13| RTL

;===================================================================================================

PaletteFilter_FilterColors:
.next_color
|00EA14| LDA.l $7EC500,X
|00EA18| STA.b $04

|00EA1A| LDA.l $7EC300,X
|00EA1E| BEQ .color_is_black

|00EA20| AND.w #$001F
|00EA23| ASL A
|00EA24| ASL A
|00EA25| TAY

|00EA26| LDA.b ($B7),Y
|00EA28| AND.b $0C
|00EA2A| BNE .no_red

|00EA2C| LDA.b $04
|00EA2E| ADC.b $06
|00EA30| STA.b $04

.no_red
|00EA32| LDA.l $7EC300,X
|00EA36| AND.w #$03E0
|00EA39| LSR A
|00EA3A| LSR A
|00EA3B| LSR A
|00EA3C| TAY

|00EA3D| LDA.b ($B7),Y
|00EA3F| AND.b $0C
|00EA41| BNE .no_green

|00EA43| LDA.b $04
|00EA45| ADC.b $08
|00EA47| STA.b $04

.no_green
|00EA49| LDA.l $7EC301,X
|00EA4D| AND.w #$007C
|00EA50| TAY

|00EA51| LDA.b ($B7),Y
|00EA53| AND.b $0C
|00EA55| BNE .no_blue

|00EA57| LDA.b $04
|00EA59| CLC
|00EA5A| ADC.b $0A
|00EA5C| STA.b $04

.no_blue
|00EA5E| LDA.b $04
|00EA60| STA.l $7EC500,X

.color_is_black
|00EA64| INX
|00EA65| INX
|00EA66| CPX.w #$01B0
|00EA69| BCC .next_color

|00EA6B| BNE .dont_skip_palette_5

|00EA6D| TXA
|00EA6E| CLC
|00EA6F| ADC.w #$0010
|00EA72| TAX

.dont_skip_palette_5
|00EA73| CPX.w #$01E0
|00EA76| BNE .next_color

|00EA78| RTS

;===================================================================================================
; Unused palette filter
;===================================================================================================
UNREACHABLE_00EA79:
|00EA79| REP #$30

|00EA7B| LDX.w #PaletteFilterColorMasks

|00EA7E| LDA.l $7EC007
|00EA82| CMP.w #$0010
|00EA85| BCC .darken_color

|00EA87| INX
|00EA88| INX

.darken_color
|00EA89| STX.b $B7

|00EA8B| AND.w #$000F
|00EA8E| ASL A
|00EA8F| TAX

|00EA90| LDA.w BitMasks,X
|00EA93| STA.b $0C

|00EA95| PHB
|00EA96| PHK
|00EA97| PLB

|00EA98| LDA.l $7EC009
|00EA9C| TAX

|00EA9D| LDA.w PaletteFilterColorAdd+0,X
|00EAA0| STA.b $06

|00EAA2| LDA.w PaletteFilterColorAdd+4,X
|00EAA5| STA.b $08

|00EAA7| LDA.w PaletteFilterColorAdd+8,X
|00EAAA| STA.b $0A

|00EAAC| LDX.w #$0040
|00EAAF| LDA.w #$0200
|00EAB2| JSR FilterColorsInRange

|00EAB5| PLB

;---------------------------------------------------------------------------------------------------

|00EAB6| LDA.l $7EC009
|00EABA| BNE .lightening

|00EABC| LDA.l $7EC007
|00EAC0| INC A
|00EAC1| STA.l $7EC007

|00EAC5| CMP.l $7EC00B
|00EAC9| BNE .continue_filtering

;---------------------------------------------------------------------------------------------------

.swap
|00EACB| LDA.l $7EC009
|00EACF| EOR.w #$0002
|00EAD2| STA.l $7EC009

|00EAD6| LDA.w #$0000
|00EAD9| STA.l $7EC007

|00EADD| SEP #$20

|00EADF| INC.b $B0

;---------------------------------------------------------------------------------------------------

.continue_filtering
|00EAE1| SEP #$30

|00EAE3| INC.b $15

|00EAE5| RTL

;---------------------------------------------------------------------------------------------------

.lightening
|00EAE6| LDA.l $7EC007
|00EAEA| CMP.l $7EC00B
|00EAEE| BEQ .swap

|00EAF0| LDA.l $7EC007
|00EAF4| DEC A
|00EAF5| STA.l $7EC007

|00EAF9| SEP #$30

|00EAFB| INC.b $15

|00EAFD| RTL

;===================================================================================================

FilterColorsInRange:
|00EAFE| STA.b $0E

.next_color
|00EB00| LDA.l $7EC500,X
|00EB04| STA.b $04

|00EB06| LDA.l $7EC300,X
|00EB0A| BEQ .skip_color

|00EB0C| AND.w #$001F
|00EB0F| ASL A
|00EB10| ASL A
|00EB11| TAY

|00EB12| LDA.b ($B7),Y
|00EB14| AND.b $0C
|00EB16| BNE .no_red

|00EB18| LDA.b $04
|00EB1A| CLC
|00EB1B| ADC.b $06
|00EB1D| STA.b $04

.no_red
|00EB1F| LDA.l $7EC300,X
|00EB23| AND.w #$03E0
|00EB26| LSR A
|00EB27| LSR A
|00EB28| LSR A
|00EB29| TAY

|00EB2A| LDA.b ($B7),Y
|00EB2C| AND.b $0C
|00EB2E| BNE .no_green

|00EB30| LDA.b $04
|00EB32| CLC
|00EB33| ADC.b $08
|00EB35| STA.b $04

.no_green
|00EB37| LDA.l $7EC301,X
|00EB3B| AND.w #$007C
|00EB3E| TAY

|00EB3F| LDA.b ($B7),Y
|00EB41| AND.b $0C
|00EB43| BNE .no_blue

|00EB45| LDA.b $04
|00EB47| CLC
|00EB48| ADC.b $0A
|00EB4A| STA.b $04

.no_blue
|00EB4C| LDA.b $04
|00EB4E| STA.l $7EC500,X

.skip_color
|00EB52| INX
|00EB53| INX
|00EB54| CPX.b $0E
|00EB56| BNE .next_color

|00EB58| RTS

;===================================================================================================
; Sets all the colors to black
;===================================================================================================
ResetHUDPalettes4and5:
|00EB59| REP #$20

|00EB5B| LDA.w #$0000 ; RGB: #000000

|00EB5E| STA.l $7EC520
|00EB62| STA.l $7EC522
|00EB66| STA.l $7EC524
|00EB6A| STA.l $7EC526
|00EB6E| STA.l $7EC528
|00EB72| STA.l $7EC52A
|00EB76| STA.l $7EC52C
|00EB7A| STA.l $7EC52E

|00EB7E| STA.l $7EC007

|00EB82| LDA.w #$0002 ; lightening screen
|00EB85| STA.l $7EC009

|00EB89| SEP #$20

|00EB8B| INC.b $15

|00EB8D| RTL

;===================================================================================================

PaletteFilter_AttractPlaque:
|00EB8E| REP #$30

|00EB90| LDX.w #PaletteFilterColorMasks

|00EB93| LDA.l $7EC007
|00EB97| CMP.w #$0010
|00EB9A| BCC .darken_color

|00EB9C| INX
|00EB9D| INX

.darken_color
|00EB9E| STX.b $B7

|00EBA0| AND.w #$000F
|00EBA3| ASL A
|00EBA4| TAX

|00EBA5| LDA.l BitMasks,X
|00EBA9| STA.b $0C

|00EBAB| PHB
|00EBAC| PHK
|00EBAD| PLB

|00EBAE| LDA.l $7EC009
|00EBB2| TAX

|00EBB3| LDA.w PaletteFilterColorAdd+0,X
|00EBB6| STA.b $06

|00EBB8| LDA.w PaletteFilterColorAdd+4,X
|00EBBB| STA.b $08

|00EBBD| LDA.w PaletteFilterColorAdd+8,X
|00EBC0| STA.b $0A

|00EBC2| LDX.w #$0020
|00EBC5| LDA.w #$0030

;===================================================================================================

#PaletteFilter_AttractPlaque_do_filtering:
|00EBC8| JSR FilterColorsInRange

|00EBCB| PLB

|00EBCC| LDA.l $7EC007
|00EBD0| INC A
|00EBD1| STA.l $7EC007

|00EBD5| CMP.w #$001F
|00EBD8| BNE .still_filtering

|00EBDA| LDA.w #$0000
|00EBDD| STA.l $7EC007

|00EBE1| LDA.l $7EC009
|00EBE5| EOR.w #$0002
|00EBE8| STA.l $7EC009
|00EBEC| BEQ .still_filtering

; [BUG] - this gives you a small recoil trajectory with kholdstare/flute kid
|00EBEE| INC.b $27

.still_filtering
|00EBF0| SEP #$30

|00EBF2| INC.b $15

|00EBF4| RTL

;===================================================================================================

PaletteFilter_WishPonds:
|00EBF5| LDA.b #$02
|00EBF7| STA.b $1D

|00EBF9| LDA.b #$30
|00EBFB| STA.b $9A

|00EBFD| BRA .start

;===================================================================================================

#PaletteFilter_Crystal:
|00EBFF| LDA.b #$01
|00EC01| STA.b $1D

;===================================================================================================

#PaletteFilter_TheEndSprite:
.start
|00EC03| REP #$20

|00EC05| LDX.b #$0E
|00EC07| LDA.w #$0000 ; RGB: #000000

.next_black
|00EC0A| STA.l $7EC6A0,X

|00EC0E| DEX
|00EC0F| DEX
|00EC10| BPL .next_black

;---------------------------------------------------------------------------------------------------

|00EC12| STA.l $7EC007

|00EC16| LDA.w #$0002
|00EC19| STA.l $7EC009

|00EC1D| SEP #$20

|00EC1F| INC.b $15

|00EC21| RTL

;===================================================================================================

PaletteFilter_RestoreSprite5Left:
|00EC22| REP #$20

|00EC24| LDX.b #$0E

.next_color
|00EC26| LDA.l $7EC4A0,X
|00EC2A| STA.l $7EC6A0,X

|00EC2E| DEX
|00EC2F| DEX
|00EC30| BPL .next_color

|00EC32| SEP #$20

|00EC34| STZ.b $1D

|00EC36| LDA.b #$20
|00EC38| STA.b $9A

|00EC3A| INC.b $15

;---------------------------------------------------------------------------------------------------

#EXIT_00EC3C:
|00EC3C| RTL

;===================================================================================================

PaletteFilter_Sprite5Left:
|00EC3D| JSL .filter

|00EC41| LDA.l $7EC007
|00EC45| BEQ EXIT_00EC3C

;---------------------------------------------------------------------------------------------------

.filter
|00EC47| REP #$30

|00EC49| LDX.w #PaletteFilterColorMasks

|00EC4C| LDA.l $7EC007
|00EC50| CMP.w #$0010
|00EC53| BCC .darken_color

|00EC55| INX
|00EC56| INX

.darken_color
|00EC57| STX.b $B7

|00EC59| AND.w #$000F
|00EC5C| ASL A
|00EC5D| TAX

|00EC5E| LDA.l BitMasks,X
|00EC62| STA.b $0C

|00EC64| PHB
|00EC65| PHK
|00EC66| PLB

|00EC67| LDA.l $7EC009
|00EC6B| TAX

|00EC6C| LDA.w PaletteFilterColorAdd+0,X
|00EC6F| STA.b $06

|00EC71| LDA.w PaletteFilterColorAdd+4,X
|00EC74| STA.b $08

|00EC76| LDA.w PaletteFilterColorAdd+8,X
|00EC79| STA.b $0A

|00EC7B| LDX.w #$01A0
|00EC7E| LDA.w #$01B0
|00EC81| JMP.w PaletteFilter_AttractPlaque_do_filtering

;===================================================================================================

PaletteFilter_KholdstareShell_init:
|00EC84| REP #$20

|00EC86| LDX.b #$0E

.next_color
|00EC88| LDA.l $7EC380,X
|00EC8C| STA.l $7EC580,X

|00EC90| DEX
|00EC91| DEX
|00EC92| BPL .next_color

;---------------------------------------------------------------------------------------------------

|00EC94| LDA.w #$0000
|00EC97| STA.l $7EC007
|00EC9B| STA.l $7EC009

|00EC9F| SEP #$20

|00ECA1| INC.b $15

|00ECA3| INC.b $B0

|00ECA5| RTL

;===================================================================================================

PaletteFilter_KholdstareShell_disable_subscreen:
|00ECA6| STZ.b $1D

|00ECA8| RTL

;===================================================================================================

PaletteFilter_KholdstareShell:
|00ECA9| LDA.b $B0
|00ECAB| BEQ PaletteFilter_KholdstareShell_init

|00ECAD| JSL .filter

|00ECB1| LDA.l $7EC007
|00ECB5| BEQ PaletteFilter_KholdstareShell_disable_subscreen

;---------------------------------------------------------------------------------------------------

.filter
|00ECB7| REP #$30

|00ECB9| LDX.w #PaletteFilterColorMasks

|00ECBC| LDA.l $7EC007
|00ECC0| CMP.w #$0010
|00ECC3| BCC .darken_color

|00ECC5| INX
|00ECC6| INX

.darken_color
|00ECC7| STX.b $B7

|00ECC9| AND.w #$000F
|00ECCC| ASL A
|00ECCD| TAX

|00ECCE| LDA.l BitMasks,X
|00ECD2| STA.b $0C

|00ECD4| PHB
|00ECD5| PHK
|00ECD6| PLB

|00ECD7| LDA.l $7EC009
|00ECDB| TAX

|00ECDC| LDA.w PaletteFilterColorAdd+0,X
|00ECDF| STA.b $06

|00ECE1| LDA.w PaletteFilterColorAdd+4,X
|00ECE4| STA.b $08

|00ECE6| LDA.w PaletteFilterColorAdd+8,X
|00ECE9| STA.b $0A

|00ECEB| LDX.w #$0080
|00ECEE| LDA.w #$0090
|00ECF1| JMP.w PaletteFilter_AttractPlaque_do_filtering

;===================================================================================================

pool AgahnimWarpShadowFilter

.palette_offset
|00ECF4| dw $0160
|00ECF6| dw $0180
|00ECF8| dw $01A0

endpool

;---------------------------------------------------------------------------------------------------

AgahnimWarpShadowFilter:
|00ECFA| PHX

|00ECFB| TXA
|00ECFC| ASL A
|00ECFD| TAX

|00ECFE| REP #$20

|00ED00| LDA.l $7EC019,X
|00ED04| STA.l $7EC007

|00ED08| LDA.l $7EC01F,X
|00ED0C| STA.l $7EC009

|00ED10| LDA.l .palette_offset,X
|00ED14| STA.b $00

|00ED16| CLC
|00ED17| ADC.w #$0010
|00ED1A| STA.b $02

|00ED1C| REP #$10

|00ED1E| JSR AgahnimWarpShadowFilter_filter_one

|00ED21| LDA.l $7EC007
|00ED25| BEQ .done

|00ED27| JSR AgahnimWarpShadowFilter_filter_one

;---------------------------------------------------------------------------------------------------

.done
|00ED2A| SEP #$30

|00ED2C| PLX
|00ED2D| PHX

|00ED2E| TXA
|00ED2F| ASL A
|00ED30| TAX

|00ED31| REP #$20

|00ED33| LDA.l $7EC007
|00ED37| STA.l $7EC019,X

|00ED3B| LDA.l $7EC009
|00ED3F| STA.l $7EC01F,X

|00ED43| SEP #$20

|00ED45| PLX

|00ED46| INC.b $15

|00ED48| RTL

;===================================================================================================

AgahnimWarpShadowFilter_filter_one:
|00ED49| LDY.w #PaletteFilterColorMasks

|00ED4C| LDA.l $7EC007
|00ED50| CMP.w #$0010
|00ED53| BCC .darken_color

|00ED55| INY
|00ED56| INY

.darken_color
|00ED57| STY.b $B7

|00ED59| AND.w #$000F
|00ED5C| ASL A
|00ED5D| TAX

|00ED5E| LDA.l BitMasks,X
|00ED62| STA.b $0C

;---------------------------------------------------------------------------------------------------

|00ED64| PHB
|00ED65| PHK
|00ED66| PLB

|00ED67| LDA.l $7EC009
|00ED6B| TAX

|00ED6C| LDA.w PaletteFilterColorAdd+0,X
|00ED6F| STA.b $06

|00ED71| LDA.w PaletteFilterColorAdd+4,X
|00ED74| STA.b $08

|00ED76| LDA.w PaletteFilterColorAdd+8,X
|00ED79| STA.b $0A

;---------------------------------------------------------------------------------------------------

|00ED7B| LDX.b $00
|00ED7D| PHX

|00ED7E| LDA.b $02
|00ED80| PHA

|00ED81| JSR FilterColorsInRange

|00ED84| PLA
|00ED85| STA.b $02

|00ED87| PLX
|00ED88| STX.b $00

|00ED8A| PLB

|00ED8B| LDA.l $7EC007
|00ED8F| INC A
|00ED90| STA.l $7EC007

|00ED94| CMP.w #$001F
|00ED97| BNE .exit

|00ED99| LDA.w #$0000
|00ED9C| STA.l $7EC007

|00EDA0| LDA.l $7EC009
|00EDA4| EOR.w #$0002
|00EDA7| STA.l $7EC009

.exit
|00EDAB| RTS

;===================================================================================================

PaletteFilter_RestoreTRock:
|00EDAC| REP #$30

|00EDAE| LDX.w #$00B0
|00EDB1| LDA.w #$00C0
|00EDB4| JSR PaletteFilter_RestoreAdditive

|00EDB7| LDX.w #$00D0
|00EDBA| LDA.w #$00E0
|00EDBD| JSR PaletteFilter_RestoreSubtractive

|00EDC0| SEP #$30

|00EDC2| INC.b $15

|00EDC4| RTL

;===================================================================================================

PaletteFilter_RestoreAdditive:
|00EDC5| STA.b $0E

.next_color
|00EDC7| LDA.l $7EC500,X
|00EDCB| TAY

|00EDCC| AND.w #$001F
|00EDCF| STA.b $08

|00EDD1| TYA
|00EDD2| AND.w #$03E0
|00EDD5| STA.b $0A

|00EDD7| TYA
|00EDD8| AND.w #$7C00
|00EDDB| STA.b $0C

|00EDDD| LDA.l $7EC300,X
|00EDE1| AND.w #$001F
|00EDE4| CMP.b $08
|00EDE6| BEQ .red_equal

|00EDE8| TYA
|00EDE9| CLC
|00EDEA| ADC.w #$0001
|00EDED| TAY

.red_equal
|00EDEE| LDA.l $7EC300,X
|00EDF2| AND.w #$03E0
|00EDF5| CMP.b $0A
|00EDF7| BEQ .green_equal

|00EDF9| TYA
|00EDFA| CLC
|00EDFB| ADC.w #$0020
|00EDFE| TAY

.green_equal
|00EDFF| LDA.l $7EC300,X
|00EE03| AND.w #$7C00
|00EE06| CMP.b $0C
|00EE08| BEQ .blue_equal

|00EE0A| TYA
|00EE0B| CLC
|00EE0C| ADC.w #$0400
|00EE0F| TAY

.blue_equal
|00EE10| TYA
|00EE11| STA.l $7EC500,X

|00EE15| INX
|00EE16| INX
|00EE17| CPX.b $0E
|00EE19| BNE .next_color

|00EE1B| RTS

;===================================================================================================

PaletteFilter_RestoreSubtractive:
|00EE1C| STA.b $0E

.next_color
|00EE1E| LDA.l $7EC500,X
|00EE22| TAY

|00EE23| AND.w #$001F
|00EE26| STA.b $08

|00EE28| TYA
|00EE29| AND.w #$03E0
|00EE2C| STA.b $0A

|00EE2E| TYA
|00EE2F| AND.w #$7C00
|00EE32| STA.b $0C

|00EE34| LDA.l $7EC300,X
|00EE38| AND.w #$001F
|00EE3B| CMP.b $08
|00EE3D| BEQ .red_equal

|00EE3F| TYA
|00EE40| SEC
|00EE41| SBC.w #$0001
|00EE44| TAY

.red_equal
|00EE45| LDA.l $7EC300,X
|00EE49| AND.w #$03E0
|00EE4C| CMP.b $0A
|00EE4E| BEQ .green_equal

|00EE50| TYA
|00EE51| SEC
|00EE52| SBC.w #$0020
|00EE55| TAY

.green_equal
|00EE56| LDA.l $7EC300,X
|00EE5A| AND.w #$7C00
|00EE5D| CMP.b $0C
|00EE5F| BEQ .blue_equal

|00EE61| TYA
|00EE62| SEC
|00EE63| SBC.w #$0400
|00EE66| TAY

.blue_equal
|00EE67| TYA
|00EE68| STA.l $7EC500,X

|00EE6C| INX
|00EE6D| INX
|00EE6E| CPX.b $0E
|00EE70| BNE .next_color

|00EE72| RTS

;===================================================================================================

PaletteFilter_InitializeWhiteFilter:
|00EE73| REP #$20

|00EE75| LDX.b #$00

|00EE77| LDA.w #$7FFF ; RGB: #F8F8F8

.next_white
|00EE7A| STA.l $7EC300,X
|00EE7E| STA.l $7EC340,X
|00EE82| STA.l $7EC380,X
|00EE86| STA.l $7EC3C0,X

|00EE8A| STA.l $7EC400,X
|00EE8E| STA.l $7EC440,X
|00EE92| STA.l $7EC480,X
|00EE96| STA.l $7EC4C0,X

|00EE9A| INX
|00EE9B| INX
|00EE9C| CPX.b #$40
|00EE9E| BNE .next_white

;---------------------------------------------------------------------------------------------------

|00EEA0| LDA.l $7EC500
|00EEA4| STA.l $7EC540

|00EEA8| LDA.w #$0000
|00EEAB| STA.l $7EC007

|00EEAF| LDA.w #$0002
|00EEB2| STA.l $7EC009

|00EEB6| LDA.b $8A
|00EEB8| CMP.w #$001B ; OW 1B
|00EEBB| BNE .not_hyrule_castle

|00EEBD| LDA.w #$0000 ; RGB: #000000
|00EEC0| STA.l $7EC300
|00EEC4| STA.l $7EC340
|00EEC8| STA.l $7EC500
|00EECC| STA.l $7EC540

.not_hyrule_castle
|00EED0| SEP #$20

|00EED2| LDA.b #$08
|00EED4| STA.w $06BB
|00EED7| STZ.w $06BA

|00EEDA| RTL

;===================================================================================================

MirrorWarp_GoToSubmodules:
|00EEDB| JSL AnimateMirrorWarp

;---------------------------------------------------------------------------------------------------

#EXIT_00EEDF:
|00EEDF| SEP #$30

|00EEE1| RTL

;---------------------------------------------------------------------------------------------------

MirrorWarp_RunAnimationSubmodules:
|00EEE2| DEC.w $06BB
|00EEE5| BNE MirrorWarp_GoToSubmodules

|00EEE7| LDA.b #$02
|00EEE9| STA.w $06BB

;===================================================================================================

PaletteFilter_BlindingWhite:
|00EEEC| REP #$30

|00EEEE| LDA.l $7EC009
|00EEF2| CMP.w #$00FF
|00EEF5| BEQ EXIT_00EEDF

|00EEF7| CMP.w #$0002
|00EEFA| BNE .restore_subtractive

|00EEFC| LDX.w #$0040
|00EEFF| LDA.w #$01B0
|00EF02| JSR PaletteFilter_RestoreAdditive

|00EF05| LDX.w #$01C0
|00EF08| LDA.w #$01E0
|00EF0B| JSR PaletteFilter_RestoreAdditive

|00EF0E| BRA PaletteFilter_StartBlindingWhite

.restore_subtractive
|00EF10| LDX.w #$0040
|00EF13| LDA.w #$01B0
|00EF16| JSR PaletteFilter_RestoreSubtractive

|00EF19| LDX.w #$01C0
|00EF1C| LDA.w #$01E0
|00EF1F| JSR PaletteFilter_RestoreSubtractive

;===================================================================================================

PaletteFilter_StartBlindingWhite:
|00EF22| LDA.l $7EC540
|00EF26| STA.l $7EC500

|00EF2A| LDA.l $7EC009
|00EF2E| BNE .check_shorter

|00EF30| LDA.l $7EC007
|00EF34| INC A
|00EF35| STA.l $7EC007

|00EF39| CMP.w #$0042
|00EF3C| BNE .trigger_update

|00EF3E| LDA.w #$00FF
|00EF41| STA.l $7EC009

|00EF45| SEP #$20

|00EF47| LDA.b #$20
|00EF49| STA.w $06BB

.trigger_update
|00EF4C| SEP #$30

|00EF4E| INC.b $15

|00EF50| RTL

;---------------------------------------------------------------------------------------------------

.check_shorter
|00EF51| LDA.l $7EC007
|00EF55| INC A
|00EF56| STA.l $7EC007

|00EF5A| CMP.w #$001F
|00EF5D| BNE .trigger_update

|00EF5F| LDA.l $7EC009
|00EF63| EOR.w #$0002
|00EF66| STA.l $7EC009

|00EF6A| SEP #$30

|00EF6C| LDA.b $10
|00EF6E| CMP.b #$15
|00EF70| BNE .exit

|00EF72| STZ.w HDMAEN
|00EF75| STZ.b $9B

|00EF77| REP #$20

|00EF79| LDX.b #$3E
|00EF7B| LDA.w #$0778
|00EF7E| JSL InitializeHDMATable

|00EF82| INC.b $15

.exit
|00EF84| RTL

;===================================================================================================

PaletteFilter_BlindingWhiteTriforce:
|00EF85| REP #$30

|00EF87| LDX.w #$0040
|00EF8A| LDA.w #$0200
|00EF8D| JSR PaletteFilter_RestoreAdditive

|00EF90| BRA PaletteFilter_StartBlindingWhite

;===================================================================================================

PaletteFilter_WhirlpoolBlue:
|00EF92| LDA.b $1A
|00EF94| LSR A
|00EF95| BCC .skip

|00EF97| REP #$30

|00EF99| PHB
|00EF9A| PHK
|00EF9B| PLB

;---------------------------------------------------------------------------------------------------

|00EF9C| LDX.w #$0040

.next_color
|00EF9F| LDA.l $7EC500,X
|00EFA3| TAY

|00EFA4| AND.w #$7C00
|00EFA7| CMP.w #$7C00
|00EFAA| BEQ .max_blue

|00EFAC| TYA
|00EFAD| CLC
|00EFAE| ADC.w #$0400
|00EFB1| TAY

.max_blue
|00EFB2| TYA
|00EFB3| STA.l $7EC500,X

|00EFB7| INX
|00EFB8| INX
|00EFB9| CPX.w #$0200
|00EFBC| BNE .next_color

;---------------------------------------------------------------------------------------------------

|00EFBE| LDA.l $7EC540
|00EFC2| STA.l $7EC500

|00EFC6| PLB

|00EFC7| SEP #$20

|00EFC9| LDA.l $7EC007
|00EFCD| LSR A
|00EFCE| BCS .no_mosaic_increment

|00EFD0| LDA.l $7EC011
|00EFD4| CLC
|00EFD5| ADC.b #$10
|00EFD7| STA.l $7EC011

.no_mosaic_increment
|00EFDB| LDA.l $7EC007
|00EFDF| INC A
|00EFE0| STA.l $7EC007

|00EFE4| CMP.b #$1F
|00EFE6| BNE .skip

|00EFE8| LDA.b #$00
|00EFEA| STA.l $7EC007

|00EFEE| INC.b $B0

|00EFF0| LDA.b #$F0
|00EFF2| STA.l $7EC011

;---------------------------------------------------------------------------------------------------

.skip
|00EFF6| SEP #$30

|00EFF8| LDA.b #$09
|00EFFA| STA.b $94

|00EFFC| LDA.l $7EC011
|00F000| ORA.b #$03
|00F002| STA.b $95

|00F004| INC.b $15

|00F006| RTL

;===================================================================================================

PaletteFilter_IsolateWhirlpoolBlue:
|00F007| REP #$30

|00F009| PHB
|00F00A| PHK
|00F00B| PLB

|00F00C| LDX.w #$0040

.next_color_isolated
|00F00F| LDA.l $7EC500,X
|00F013| TAY

|00F014| AND.w #$03E0
|00F017| BEQ .no_green

|00F019| TYA
|00F01A| SEC
|00F01B| SBC.w #$0020
|00F01E| TAY

.no_green
|00F01F| TYA
|00F020| AND.w #$001F
|00F023| BEQ .no_red

|00F025| TYA
|00F026| SEC
|00F027| SBC.w #$0001
|00F02A| TAY

.no_red
|00F02B| TYA
|00F02C| STA.l $7EC500,X

|00F030| INX
|00F031| INX
|00F032| CPX.w #$0200
|00F035| BNE .next_color_isolated

;---------------------------------------------------------------------------------------------------

|00F037| LDA.l $7EC540
|00F03B| STA.l $7EC500

|00F03F| PLB

|00F040| SEP #$20

|00F042| JMP.w PaletteFilter_WhirlpoolBlue.no_mosaic_increment

;===================================================================================================

PaletteFilter_WhirlpoolRestoreBlue:
|00F045| LDA.b $1A
|00F047| LSR A
|00F048| BCC .skip

|00F04A| REP #$30

|00F04C| PHB
|00F04D| PHK
|00F04E| PLB

|00F04F| LDX.w #$0040

.next_color
|00F052| LDA.l $7EC300,X
|00F056| AND.w #$7C00
|00F059| STA.b $00

|00F05B| LDA.l $7EC500,X
|00F05F| TAY

|00F060| AND.w #$7C00
|00F063| CMP.b $00
|00F065| BEQ .blue_equal

|00F067| TYA
|00F068| SEC
|00F069| SBC.w #$0400
|00F06C| TAY

.blue_equal
|00F06D| TYA
|00F06E| STA.l $7EC500,X

|00F072| INX
|00F073| INX
|00F074| CPX.w #$0200
|00F077| BNE .next_color

;---------------------------------------------------------------------------------------------------

|00F079| LDA.l $7EC540
|00F07D| STA.l $7EC500

|00F081| PLB

|00F082| SEP #$20

|00F084| LDA.l $7EC007
|00F088| LSR A
|00F089| BCS .no_mosaic_decrement

|00F08B| LDA.l $7EC011
|00F08F| BEQ .no_mosaic_decrement

|00F091| SEC
|00F092| SBC.b #$10
|00F094| STA.l $7EC011

.no_mosaic_decrement
|00F098| LDA.l $7EC007
|00F09C| INC A
|00F09D| STA.l $7EC007

|00F0A1| CMP.b #$1F
|00F0A3| BNE .skip

|00F0A5| LDA.b #$00
|00F0A7| STA.l $7EC007
|00F0AB| STA.l $7EC011

|00F0AF| INC.b $B0

;---------------------------------------------------------------------------------------------------

.skip
|00F0B1| SEP #$30

|00F0B3| LDA.b #$09
|00F0B5| STA.b $94

|00F0B7| LDA.l $7EC011
|00F0BB| ORA.b #$03
|00F0BD| STA.b $95

|00F0BF| INC.b $15

|00F0C1| RTL

;===================================================================================================

PaletteFilter_WhirlpoolRestoreRedGreen:
|00F0C2| REP #$30

|00F0C4| PHB
|00F0C5| PHK
|00F0C6| PLB

|00F0C7| LDX.w #$0040

.next_color
|00F0CA| LDA.l $7EC300,X
|00F0CE| AND.w #$03E0
|00F0D1| STA.b $00

|00F0D3| LDA.l $7EC300,X
|00F0D7| AND.w #$001F
|00F0DA| STA.b $02

|00F0DC| LDA.l $7EC500,X
|00F0E0| TAY

|00F0E1| AND.w #$03E0
|00F0E4| CMP.b $00
|00F0E6| BEQ .green_equal

|00F0E8| TYA
|00F0E9| CLC
|00F0EA| ADC.w #$0020
|00F0ED| TAY

.green_equal
|00F0EE| TYA
|00F0EF| AND.w #$001F
|00F0F2| CMP.b $02
|00F0F4| BEQ .red_equal

|00F0F6| TYA
|00F0F7| CLC
|00F0F8| ADC.w #$0001
|00F0FB| TAY

.red_equal
|00F0FC| TYA
|00F0FD| STA.l $7EC500,X

|00F101| INX
|00F102| INX
|00F103| CPX.w #$0200
|00F106| BNE .next_color

;---------------------------------------------------------------------------------------------------

|00F108| LDA.l $7EC540
|00F10C| STA.l $7EC500

|00F110| PLB

|00F111| SEP #$20

|00F113| LDA.l $7EC007
|00F117| INC A
|00F118| STA.l $7EC007

|00F11C| CMP.b #$1F
|00F11E| BNE .still_going

|00F120| LDA.b #$00
|00F122| STA.l $7EC007

|00F126| INC.b $B0

.still_going
|00F128| SEP #$30

|00F12A| INC.b $15

|00F12C| RTL

;---------------------------------------------------------------------------------------------------

#EXIT_00F12D:
|00F12D| SEP #$30

|00F12F| RTL

;===================================================================================================

PaletteFilter_RestoreBGSubstractiveStrict:
|00F130| REP #$30

|00F132| LDA.l $7EC009
|00F136| CMP.w #$00FF
|00F139| BEQ EXIT_00F12D

|00F13B| PHB
|00F13C| PHK
|00F13D| PLB

|00F13E| LDX.w #$0040
|00F141| LDA.w #$0100
|00F144| JSR PaletteFilter_RestoreSubtractive

|00F147| PLB

|00F148| LDA.l $7EC007
|00F14C| INC A
|00F14D| STA.l $7EC007

|00F151| CMP.w #$0020
|00F154| BNE .still_going

|00F156| LDA.w #$00FF
|00F159| STA.l $7EC009

|00F15D| STZ.b $1D

.still_going
|00F15F| SEP #$30

|00F161| INC.b $15

|00F163| RTL

;===================================================================================================

PaletteFilter_RestoreBGAdditiveStrict:
|00F164| REP #$30

|00F166| PHB
|00F167| PHK
|00F168| PLB

|00F169| LDX.w #$0040
|00F16C| LDA.w #$0100
|00F16F| JSR PaletteFilter_RestoreAdditive

|00F172| PLB

|00F173| LDA.l $7EC007
|00F177| INC A
|00F178| STA.l $7EC007

|00F17C| BRA PaletteFilter_RestoreBGSubstractiveStrict.still_going

;===================================================================================================

FlashTrinexxShellRed:
|00F17E| LDA.w $04BE
|00F181| BNE TrinexxFilterRed_tick_timer

|00F183| REP #$20

|00F185| LDX.b #$00

.next_color
|00F187| LDA.l $7EC582,X
|00F18B| AND.w #$001F
|00F18E| CMP.w #$001F
|00F191| BEQ .red_equal

|00F193| CLC
|00F194| ADC.w #$0001

.red_equal
|00F197| STA.b $00

|00F199| LDA.l $7EC582,X
|00F19D| AND.w #$FFE0
|00F1A0| ORA.b $00
|00F1A2| STA.l $7EC582,X

|00F1A6| INX
|00F1A7| INX
|00F1A8| CPX.b #$0E
|00F1AA| BNE .next_color

;---------------------------------------------------------------------------------------------------

#TrinexxFilterRed_continue:
|00F1AC| SEP #$20

|00F1AE| INC.b $15

|00F1B0| INC.w $04C0

|00F1B3| LDA.w $04C0
|00F1B6| CMP.b #$0C
|00F1B8| BCS .done

|00F1BA| LDA.b #$03
|00F1BC| STA.w $04BE

;---------------------------------------------------------------------------------------------------

#TrinexxFilterRed_tick_timer:
|00F1BF| DEC.w $04BE

|00F1C2| RTL

;---------------------------------------------------------------------------------------------------

.done
|00F1C3| STZ.w $04BE
|00F1C6| STZ.w $04C0

|00F1C9| RTL

;===================================================================================================

UnflashTrinexxShellRed:
|00F1CA| LDA.w $04BE
|00F1CD| BNE TrinexxFilterRed_tick_timer

|00F1CF| REP #$20

|00F1D1| LDX.b #$00

.next_color
|00F1D3| LDA.l $7EC382,X
|00F1D7| AND.w #$001F
|00F1DA| STA.b $0C

|00F1DC| LDA.l $7EC582,X
|00F1E0| AND.w #$001F
|00F1E3| CMP.b $0C
|00F1E5| BEQ .red_equal

|00F1E7| SEC
|00F1E8| SBC.w #$0001

.red_equal
|00F1EB| STA.b $00

|00F1ED| LDA.l $7EC582,X
|00F1F1| AND.w #$FFE0
|00F1F4| ORA.b $00
|00F1F6| STA.l $7EC582,X

|00F1FA| INX
|00F1FB| INX
|00F1FC| CPX.b #$0E
|00F1FE| BNE .next_color

|00F200| BRA TrinexxFilterRed_continue

;===================================================================================================

FlashTrinexxShellBlue:
|00F202| LDA.w $04BF
|00F205| BNE TrinexxFilterBlue_tick_timer

|00F207| REP #$20

|00F209| LDX.b #$00

.next_color
|00F20B| LDA.l $7EC582,X
|00F20F| AND.w #$7C00
|00F212| CMP.w #$7C00
|00F215| BEQ .blue_equal

|00F217| CLC
|00F218| ADC.w #$0400

.blue_equal
|00F21B| STA.b $00

|00F21D| LDA.l $7EC582,X
|00F221| AND.w #$83FF
|00F224| ORA.b $00
|00F226| STA.l $7EC582,X

|00F22A| INX
|00F22B| INX
|00F22C| CPX.b #$0E
|00F22E| BNE .next_color

;---------------------------------------------------------------------------------------------------

#TrinexxFilterBlue_continue:
|00F230| SEP #$20

|00F232| INC.b $15

|00F234| INC.w $04C1

|00F237| LDA.w $04C1
|00F23A| CMP.b #$0C
|00F23C| BCS .done

|00F23E| LDA.b #$03
|00F240| STA.w $04BF

;---------------------------------------------------------------------------------------------------

#TrinexxFilterBlue_tick_timer:
|00F243| DEC.w $04BF

|00F246| RTL

;---------------------------------------------------------------------------------------------------

.done
|00F247| STZ.w $04BF
|00F24A| STZ.w $04C1

|00F24D| RTL

;===================================================================================================

UnflashTrinexxShellBlue:
|00F24E| LDA.w $04BF
|00F251| BNE TrinexxFilterBlue_tick_timer

|00F253| REP #$20

|00F255| LDX.b #$00

.next_color
|00F257| LDA.l $7EC382,X
|00F25B| AND.w #$7C00
|00F25E| STA.b $0C

|00F260| LDA.l $7EC582,X
|00F264| AND.w #$7C00
|00F267| CMP.b $0C
|00F269| BEQ .blue_equal

|00F26B| SEC
|00F26C| SBC.w #$0400

.blue_equal
|00F26F| STA.b $00

|00F271| LDA.l $7EC582,X
|00F275| AND.w #$83FF
|00F278| ORA.b $00
|00F27A| STA.l $7EC582,X

|00F27E| INX
|00F27F| INX
|00F280| CPX.b #$0E
|00F282| BNE .next_color

|00F284| BRA TrinexxFilterBlue_continue

;===================================================================================================

IrisSpotlight_close:
|00F286| REP #$10

|00F288| LDY.w #$0000
|00F28B| LDX.w #$007E

|00F28E| BRA .continue

;===================================================================================================

#IrisSpotlight_open:
|00F290| REP #$10

|00F292| LDY.w #$0002
|00F295| LDX.w #$0000

;---------------------------------------------------------------------------------------------------

.continue
|00F298| STY.w $067E

|00F29B| STX.w $067C

|00F29E| STZ.w HDMAEN

|00F2A1| LDX.w #$2641
|00F2A4| STX.w DMA6MODE
|00F2A7| STX.w DMA7MODE

|00F2AA| LDX.w #.hdma_table
|00F2AD| STX.w DMA6ADDRL
|00F2B0| STX.w DMA7ADDRL

|00F2B3| LDA.b #^.hdma_table
|00F2B5| STA.w DMA6ADDRB
|00F2B8| STA.w DMA7ADDRB

|00F2BB| LDA.b #$00
|00F2BD| STA.w HDMA6ITBLB
|00F2C0| STA.w HDMA7ITBLB

;---------------------------------------------------------------------------------------------------

|00F2C3| LDA.b #$33
|00F2C5| STA.b $96

|00F2C7| LDA.b #$03
|00F2C9| STA.b $97

|00F2CB| LDA.b #$33
|00F2CD| STA.b $98

|00F2CF| LDA.b $1C
|00F2D1| STA.b $1E

|00F2D3| LDA.b $1D
|00F2D5| STA.b $1F

|00F2D7| LDA.b $1B
|00F2D9| BNE .indoors

|00F2DB| LDA.b #$20 ; Fixed color RGB: #000000
|00F2DD| STA.b $9C

|00F2DF| LDA.b #$40
|00F2E1| STA.b $9D

|00F2E3| LDA.b #$80
|00F2E5| STA.b $9E

;---------------------------------------------------------------------------------------------------

.indoors
|00F2E7| SEP #$10

|00F2E9| JSL IrisSpotlight_ConfigureTable

|00F2ED| LDA.b #$80
|00F2EF| STA.b $9B

|00F2F1| LDA.b #$0F
|00F2F3| STA.b $13

|00F2F5| RTL

;---------------------------------------------------------------------------------------------------

.hdma_table
|00F2F6| db $F8 : dw $1B00 ; 120 lines continuous
|00F2F9| db $F8 : dw $1BF0 ; 120 lines continuous
|00F2FC| db $00 ; end

;===================================================================================================

pool IrisSpotlight_ConfigureTable

.delta
|00F2FD| dw -7
|00F2FF| dw  7
|00F301| dw  7
|00F303| dw  7

.target
|00F305| dw $0000
|00F307| dw $007E
|00F309| dw $0023
|00F30B| dw $007E

endpool

;---------------------------------------------------------------------------------------------------

IrisSpotlight_ConfigureTable:
|00F30D| PHB
|00F30E| PHK
|00F30F| PLB

|00F310| REP #$30

|00F312| LDA.b $20
|00F314| SEC
|00F315| SBC.b $E8
|00F317| CLC
|00F318| ADC.w #$000C
|00F31B| STA.b $0E
|00F31D| SEC
|00F31E| SBC.w $067C
|00F321| STA.w $0674

|00F324| LDA.b $0E
|00F326| CLC
|00F327| ADC.w $067C
|00F32A| STA.w $0676

|00F32D| LDA.b $22
|00F32F| SEC
|00F330| SBC.b $E2
|00F332| CLC
|00F333| ADC.w #$0008
|00F336| STA.w $0670

|00F339| LDA.w $067C
|00F33C| STA.w $067A

|00F33F| LDA.b $0E
|00F341| ASL A
|00F342| STA.b $06

;---------------------------------------------------------------------------------------------------

|00F344| CMP.w #$00E0
|00F347| BCS .big_enough

|00F349| LDA.w #$00E0
|00F34C| STA.b $06

.big_enough
|00F34E| LDA.b $06
|00F350| SEC
|00F351| SBC.b $0E
|00F353| STA.b $0A

|00F355| LDA.b $0E
|00F357| SEC
|00F358| SBC.b $0A
|00F35A| STA.b $04

;---------------------------------------------------------------------------------------------------

.next_check
|00F35C| LDA.w #$00FF
|00F35F| STA.b $08

|00F361| LDA.b $06
|00F363| CMP.w $0676
|00F366| BCS .past_calced_size

|00F368| LDA.w $067A
|00F36B| BEQ .at_zero

|00F36D| DEC.w $067A

.at_zero
|00F370| JSR IrisSpotlight_CalculateCircleValue

.past_calced_size
|00F373| LDA.b $04
|00F375| ASL A
|00F376| CMP.w #$01C0
|00F379| BCS .skip_update_a

|00F37B| TAX

|00F37C| LDA.b $08
|00F37E| STA.l $7F7000,X

.skip_update_a
|00F382| LDA.b $06
|00F384| ASL A
|00F385| CMP.w #$01C0
|00F388| BCS .skip_update_b

|00F38A| TAX

|00F38B| LDA.b $08
|00F38D| STA.l $7F7000,X

.skip_update_b
|00F391| LDA.b $0E
|00F393| CMP.b $04
|00F395| BEQ .wait_for_scanline

|00F397| INC.b $04

|00F399| DEC.b $06

|00F39B| JMP.w .next_check

;---------------------------------------------------------------------------------------------------

.wait_for_scanline
|00F39E| LDA.w SLVH
|00F3A1| LDA.w STAT78

|00F3A4| LDA.w OPVCT
|00F3A7| AND.w #$00FF
|00F3AA| CMP.w #$00C0
|00F3AD| BCC .wait_for_scanline

|00F3AF| LDX.w #$0000

.copy_table
|00F3B2| LDA.l $7F7000,X
|00F3B6| STA.w $1B00,X

|00F3B9| INX
|00F3BA| INX
|00F3BB| CPX.w #$01C0
|00F3BE| BCC .copy_table

;---------------------------------------------------------------------------------------------------

|00F3C0| LDX.w $067E

|00F3C3| LDA.w $067C
|00F3C6| CLC
|00F3C7| ADC.w .delta,X
|00F3CA| STA.w $067C

|00F3CD| CMP.w .target,X
|00F3D0| BNE .exit

|00F3D2| SEP #$20

|00F3D4| LDA.w $067E
|00F3D7| BNE .reset_table

|00F3D9| LDA.b #$80
|00F3DB| STA.b $13
|00F3DD| STA.w INIDISP

|00F3E0| BRA .continue

;---------------------------------------------------------------------------------------------------

.reset_table
|00F3E2| JSL IrisSpotlight_ResetTable

.continue
|00F3E6| SEP #$30

|00F3E8| STZ.b $B0
|00F3EA| STZ.b $11

|00F3EC| LDA.b $10
|00F3EE| CMP.b #$07
|00F3F0| BEQ .underworld

|00F3F2| CMP.b #$10
|00F3F4| BNE .not_opening

.underworld
|00F3F6| LDA.b $1B
|00F3F8| BNE .check_music_command

|00F3FA| LDA.b $8A
|00F3FC| CMP.b #$43 ; OW 43
|00F3FE| BEQ .dark_dm

|00F400| CMP.b #$45 ; OW 45
|00F402| BEQ .dark_dm

|00F404| CMP.b #$47 ; OW 47
|00F406| BNE .check_music_command

.dark_dm
|00F408| LDA.b #$09 ; SFX1.09
|00F40A| STA.w $012D

.check_music_command
|00F40D| LDA.w $0132
|00F410| CMP.b #$FF ; SONG FF - transfer
|00F412| BEQ .not_opening

|00F414| STA.w $012C

.not_opening
|00F417| LDA.w $010C
|00F41A| STA.b $10

|00F41C| CMP.b #$06
|00F41E| BNE .exit

|00F420| JSL ResetAllSprites

.exit
|00F424| SEP #$30

|00F426| PLB

|00F427| RTL

;===================================================================================================

IrisSpotlight_ResetTable:
|00F428| REP #$30

|00F42A| LDX.w #$003E
|00F42D| LDA.w #$FF00

.next
|00F430| STA.w $1B00,X
|00F433| STA.w $1B40,X
|00F436| STA.w $1B80,X
|00F439| STA.w $1BC0,X
|00F43C| STA.w $1C00,X
|00F43F| STA.w $1C40,X
|00F442| STA.w $1C80,X

|00F445| DEX
|00F446| DEX
|00F447| BPL .next

|00F449| SEP #$30

|00F44B| RTL

;===================================================================================================
; TODO document routine
;===================================================================================================
pool IrisSpotlight_CalculateCircleValue

.multiplicand
|00F44C| db 255, 255, 255, 255, 255, 255, 255, 255
|00F454| db 255, 255, 255, 255, 254, 254, 254, 254
|00F45C| db 253, 253, 253, 253, 252, 252, 252, 251
|00F464| db 251, 251, 250, 250, 249, 249, 248, 248
|00F46C| db 247, 247, 246, 246, 245, 245, 244, 243
|00F474| db 243, 242, 241, 241, 240, 239, 238, 238
|00F47C| db 237, 236, 235, 234, 233, 233, 232, 231
|00F484| db 230, 229, 228, 227, 226, 225, 223, 222
|00F48C| db 221, 220, 219, 218, 216, 215, 214, 213
|00F494| db 211, 210, 208, 207, 205, 204, 202, 201
|00F49C| db 199, 198, 196, 194, 193, 191, 189, 187
|00F4A4| db 185, 183, 182, 180, 177, 175, 173, 171
|00F4AC| db 169, 167, 164, 162, 159, 157, 154, 151
|00F4B4| db 149, 146, 143, 140, 137, 134, 130, 127
|00F4BC| db 123, 120, 116, 112, 108, 103,  99,  94
|00F4C4| db  89,  83,  77,  70,  63,  55,  45,  31
|00F4CC| db   0

endpool

;---------------------------------------------------------------------------------------------------

IrisSpotlight_CalculateCircleValue:
|00F4CD| SEP #$30

|00F4CF| STA.w WRDIVH
|00F4D2| STZ.w WRDIVL

|00F4D5| LDA.w $067C
|00F4D8| STA.w WRDIVB

|00F4DB| NOP
|00F4DC| NOP
|00F4DD| NOP
|00F4DE| NOP
|00F4DF| NOP
|00F4E0| NOP

|00F4E1| REP #$20

|00F4E3| LDA.w RDDIV
|00F4E6| LSR A

|00F4E7| SEP #$20

|00F4E9| TAX

; [DUMB] why Y? A is free as well
|00F4EA| LDY.w .multiplicand,X
|00F4ED| STY.b $0A
|00F4EF| STY.w WRMPYA

|00F4F2| LDA.w $067C
|00F4F5| STA.w WRMPYB

|00F4F8| NOP
|00F4F9| NOP

|00F4FA| STZ.b $01
|00F4FC| STZ.b $0B

|00F4FE| LDA.w RDMPYH
|00F501| STA.b $00

|00F503| REP #$30

|00F505| ASL.b $00
|00F507| LDA.b $0A
|00F509| BEQ .exit

|00F50B| LDA.b $00
|00F50D| CLC
|00F50E| ADC.w $0670
|00F511| STA.b $02

|00F513| LDA.w $0670
|00F516| SEC
|00F517| SBC.b $00

|00F519| STZ.b $00

|00F51B| BMI .positive

|00F51D| BIT.w #$FF00
|00F520| BEQ .zero_high_a

|00F522| LDA.w #$00FF

.zero_high_a
|00F525| STA.b $00

.positive
|00F527| LDA.b $02
|00F529| BIT.w #$FF00
|00F52C| BEQ .zero_high_b

|00F52E| LDA.w #$00FF

.zero_high_b
|00F531| XBA
|00F532| ORA.b $00
|00F534| CMP.w #$FFFF
|00F537| BNE .keep

|00F539| LDA.w #$00FF

.keep
|00F53C| STA.b $08

.exit
|00F53E| RTS

;===================================================================================================
; TODO document routine
;===================================================================================================
pool OrientVerticalLampCone OrientHorizontalLampCone

.horizontal
|00F53F| dw $0000, $0100, $0000, $0100

.vertical
|00F547| dw $0000, $0000, $0100, $0100

.adjust
|00F54F| dw $0034, $FFFE, $0038, $0006

.margin
|00F557| dw $0040, $0040, $0052, $FF50

.max
|00F55F| dw $0080, $0180, $00A0, $00A0

endpool

;---------------------------------------------------------------------------------------------------

#EXIT_00F567:
|00F567| RTL

;---------------------------------------------------------------------------------------------------

OrientLampLightCone:
|00F568| LDA.w $0458 ; flag for if we even have a lamp bg
|00F56B| BEQ EXIT_00F567

|00F56D| LDA.b $11 ; skip when recovering from pit damage
|00F56F| CMP.b #$14
|00F571| BEQ EXIT_00F567

|00F573| REP #$30

|00F575| LDA.b $2F ; get Link's direction
|00F577| AND.w #$00FF
|00F57A| STA.b $00

; TODO analyze doorway nonsense
|00F57C| TAX

|00F57D| LDA.b $6C
|00F57F| AND.w #$00FF
|00F582| BEQ .not_in_doorway

; clear bit 0 so we have either
; 0 - vertical door
; 4 - horizontal door
|00F584| AND.w #$00FE
|00F587| ASL A
|00F588| TAX
|00F589| BEQ .vertical_doorway

|00F58B| LDA.b $00 ; check direction again
|00F58D| CMP.w #$0004
|00F590| BCS .facing_horizontal

; use Link's X coordinate+8
|00F592| LDA.b $22
|00F594| CLC
|00F595| ADC.w #$0008
|00F598| AND.w #$00FF

|00F59B| BRA .doorway_continue

.facing_horizontal
|00F59D| TAX

|00F59E| BRA .not_in_doorway

;---------------------------------------------------------------------------------------------------

.vertical_doorway
|00F5A0| LDA.b $00
|00F5A2| CMP.w #$0004
|00F5A5| BCC .facing_horizontal

|00F5A7| LDA.b $20
|00F5A9| AND.w #$00FF

;---------------------------------------------------------------------------------------------------

.doorway_continue
|00F5AC| CMP.w #$0080
|00F5AF| BCC .not_in_doorway

|00F5B1| INX
|00F5B2| INX

.not_in_doorway
|00F5B3| CPX.w #$0004 ; what lamp direction to use
|00F5B6| BCS OrientHorizontalLampCone

;===================================================================================================

; TODO analyze this further
; not complex though
OrientVerticalLampCone:
|00F5B8| LDA.b $22
|00F5BA| SEC
|00F5BB| SBC.w #$0077
|00F5BE| STA.b $00

|00F5C0| LDA.b $E2
|00F5C2| SEC
|00F5C3| SBC.b $00
|00F5C5| CLC
|00F5C6| ADC.l .horizontal,X
|00F5CA| STA.b $E0

|00F5CC| LDA.b $20
|00F5CE| SEC
|00F5CF| SBC.w #$0058
|00F5D2| STA.b $00

|00F5D4| LDA.b $E8
|00F5D6| SEC
|00F5D7| SBC.b $00
|00F5D9| CLC
|00F5DA| ADC.l .vertical,X
|00F5DE| CLC
|00F5DF| ADC.l .adjust,X
|00F5E3| CLC
|00F5E4| ADC.l .margin,X

|00F5E8| BPL .lower_in_bounds

|00F5EA| LDA.w #$0000

.lower_in_bounds
|00F5ED| CMP.l .max,X
|00F5F1| BCC .upper_in_bounds

|00F5F3| LDA.l .max,X

.upper_in_bounds
|00F5F7| SEC
|00F5F8| SBC.l .margin,X
|00F5FC| STA.b $E6

|00F5FE| SEP #$30

|00F600| RTL

;===================================================================================================

OrientHorizontalLampCone:
|00F601| LDA.b $20
|00F603| SEC
|00F604| SBC.w #$0072
|00F607| STA.b $00

|00F609| LDA.b $E8
|00F60B| SEC
|00F60C| SBC.b $00
|00F60E| CLC
|00F60F| ADC.l .vertical,X
|00F613| STA.b $E6

|00F615| LDA.b $22
|00F617| SEC
|00F618| SBC.w #$0058
|00F61B| STA.b $00

|00F61D| LDA.b $E2
|00F61F| SEC
|00F620| SBC.b $00
|00F622| CLC
|00F623| ADC.l .horizontal,X
|00F627| CLC
|00F628| ADC.l .adjust,X
|00F62C| CLC
|00F62D| ADC.l .margin,X

|00F631| BPL .lower_in_bounds

|00F633| LDA.w #$0000

.lower_in_bounds
|00F636| CMP.l .max,X
|00F63A| BCC .upper_in_bounds

|00F63C| LDA.l .max,X

.upper_in_bounds
|00F640| SEC
|00F641| SBC.l .margin,X
|00F645| STA.b $E0

|00F647| SEP #$30

|00F649| RTL

;===================================================================================================

AdjustWaterHDMAWindow:
|00F64A| REP #$30

|00F64C| LDA.w $0682
|00F64F| SEC
|00F650| SBC.b $E8
|00F652| STA.b $0A

|00F654| SEC
|00F655| SBC.w $0684
|00F658| STA.w $0674

|00F65B| LDA.b $0A
|00F65D| CLC
|00F65E| ADC.w $0684

;===================================================================================================

AdjustWaterHDMAWindow_Horizontal:
|00F661| STA.w $0676

|00F664| LDA.w $0680
|00F667| SEC
|00F668| SBC.b $E2
|00F66A| STA.w $0670

|00F66D| LDA.w $0686
|00F670| BEQ .horizontal_zero

|00F672| DEC A

.horizontal_zero
|00F673| STA.b $0C

|00F675| CLC
|00F676| ADC.w $0670
|00F679| STA.b $02

|00F67B| LDA.w $0670
|00F67E| SEC
|00F67F| SBC.b $0C
|00F681| STA.b $00

|00F683| LDY.w #$0000 ; [USELESS] and harmful with the below TAY; the branch will always fail
|00F686| BMI .positive_a

|00F688| TAY

|00F689| AND.w #$FF00
|00F68C| BEQ .positive_a

|00F68E| LDY.w #$00FF

.positive_a
|00F691| TYA
|00F692| AND.w #$00FF
|00F695| STA.b $00

|00F697| LDA.b $02
|00F699| TAY

|00F69A| AND.w #$FF00
|00F69D| BEQ .positive_b

|00F69F| LDY.w #$00FF

.positive_b
|00F6A2| TYA
|00F6A3| AND.w #$00FF
|00F6A6| XBA
|00F6A7| ORA.b $00
|00F6A9| STA.b $0C

|00F6AB| LDA.b $0A
|00F6AD| ASL A
|00F6AE| STA.b $06

|00F6B0| CMP.w #$00E0
|00F6B3| BCS .not_too_far

|00F6B5| LDA.w #$00E0
|00F6B8| STA.b $06

.not_too_far
|00F6BA| LDA.b $06
|00F6BC| SEC
|00F6BD| SBC.b $0A
|00F6BF| STA.b $08

|00F6C1| LDA.b $0A
|00F6C3| SEC
|00F6C4| SBC.b $08
|00F6C6| STA.b $04

|00F6C8| BRA .start

;---------------------------------------------------------------------------------------------------

.next
|00F6CA| INC.b $04

|00F6CC| DEC.b $06

.start
|00F6CE| LDA.b $04
|00F6D0| BMI .dont_add_to_hdma_y

|00F6D2| LDA.w $0674
|00F6D5| BMI .no_new_line_y

|00F6D7| LDA.b $04
|00F6D9| CMP.w $0674
|00F6DC| BCS .no_new_line_y

|00F6DE| ASL A
|00F6DF| TAX

|00F6E0| LDA.w #$00FF

|00F6E3| BRA .check_for_entry_y

.no_new_line_y
|00F6E5| LDA.b $04
|00F6E7| ASL A
|00F6E8| TAX

|00F6E9| LDA.b $0C

.check_for_entry_y
|00F6EB| CPX.w #$01C0
|00F6EE| BCS .dont_add_to_hdma_y

|00F6F0| CMP.w #$FFFF
|00F6F3| BNE .not_end_y

|00F6F5| LDA.w #$00FF

.not_end_y
|00F6F8| STA.w $1B00,X

.dont_add_to_hdma_y
|00F6FB| LDA.b $06
|00F6FD| CMP.w $0676
|00F700| BCC .no_new_line_x

|00F702| ASL A
|00F703| TAX

|00F704| LDA.w #$00FF
|00F707| BRA .check_for_entry_x

.no_new_line_x
|00F709| CMP.w #$00E1
|00F70C| BCC .dont_change_boundary_x

|00F70E| LDA.w $0678
|00F711| BEQ .dont_change_boundary_x

|00F713| DEC.w $0678

.dont_change_boundary_x
|00F716| LDA.b $06
|00F718| ASL A
|00F719| TAX

|00F71A| LDA.b $0C

.check_for_entry_x
|00F71C| CPX.w #$01C0
|00F71F| BCS .dont_add_to_hdma_x

|00F721| CMP.w #$FFFF
|00F724| BNE .not_end_x

|00F726| LDA.w #$00FF

.not_end_x
|00F729| STA.w $1B00,X

.dont_add_to_hdma_x
|00F72C| LDA.b $0A
|00F72E| CMP.b $04
|00F730| BNE .next

|00F732| SEP #$30

|00F734| RTL

;===================================================================================================

PrepDamFloodHDMA:
|00F735| REP #$30

|00F737| STZ.b $04

|00F739| LDA.w $0682
|00F73C| SEC
|00F73D| SBC.b $E8
|00F73F| STA.w $0674

|00F742| LDA.w $0680
|00F745| SEC
|00F746| SBC.b $E2
|00F748| STA.w $0670

|00F74B| LDA.w $0686
|00F74E| EOR.w #$0001
|00F751| STA.b $0E

|00F753| CLC
|00F754| ADC.w $0670
|00F757| STA.b $02

|00F759| LDA.w $0670
|00F75C| SEC
|00F75D| SBC.b $0E
|00F75F| AND.w #$00FF
|00F762| STA.b $00

|00F764| LDA.b $02
|00F766| AND.w #$00FF
|00F769| XBA
|00F76A| ORA.b $00
|00F76C| STA.b $0C

;---------------------------------------------------------------------------------------------------

.next_a
|00F76E| LDA.b $04
|00F770| ASL A
|00F771| TAX

|00F772| LDA.w #$FF00
|00F775| STA.w $1B00,X

|00F778| INC.b $04

|00F77A| LDA.b $04
|00F77C| CMP.w $0676
|00F77F| BNE .next_a

;---------------------------------------------------------------------------------------------------

|00F781| LDA.b $0E
|00F783| SEC
|00F784| SBC.w #$0007
|00F787| CLC
|00F788| ADC.w #$0008
|00F78B| STA.b $0C

|00F78D| CLC
|00F78E| ADC.w $0670
|00F791| STA.b $02

|00F793| LDA.w $0670
|00F796| SEC
|00F797| SBC.b $0C
|00F799| AND.w #$00FF
|00F79C| STA.b $00

|00F79E| LDA.b $02
|00F7A0| AND.w #$00FF
|00F7A3| XBA
|00F7A4| ORA.b $00
|00F7A6| STA.b $0C

|00F7A8| LDA.w $0676
|00F7AB| CLC
|00F7AC| ADC.w $0684
|00F7AF| EOR.w #$0001
|00F7B2| STA.b $0A

;---------------------------------------------------------------------------------------------------

.next_b
|00F7B4| LDA.b $04
|00F7B6| CMP.b $0A
|00F7B8| BCC .shift_in_bounds

|00F7BA| ASL A
|00F7BB| TAX

|00F7BC| LDA.w #$00FF

|00F7BF| BRA .continue

.shift_in_bounds
|00F7C1| ASL A

|00F7C2| TAX
|00F7C3| CPX.w #$01C0
|00F7C6| BCS .shift_in_bounds

|00F7C8| LDA.b $0C

.continue
|00F7CA| CMP.w #$FFFF
|00F7CD| BNE .not_neg1

|00F7CF| LDA.w #$00FF

.not_neg1
|00F7D2| STA.w $1B00,X

|00F7D5| INC.b $04

|00F7D7| LDA.b $04
|00F7D9| CMP.w #$00E1
|00F7DC| BCC .next_b

|00F7DE| SEP #$30

|00F7E0| RTL

;===================================================================================================
; FREE ROM: 0x1F
;===================================================================================================
NULL_00F7E1:
|00F7E1| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|00F7E9| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|00F7F1| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|00F7F9| db $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================
; MoN called this Module_Messaging, but I dislike that name
; Everything accomplished here can reasonably be called an interface
; But don't get used to me explaining nomenclature differences
;===================================================================================================
Module0E_Interface:
|00F800| LDA.b $1B
|00F802| BEQ .outdoors

|00F804| LDA.b $11
|00F806| CMP.b #$03
|00F808| BNE .not_dungeon_map

; subsubmodule for maps
|00F80A| LDA.w $0200
|00F80D| BEQ .continue

|00F80F| CMP.b #$07
|00F811| BEQ .continue

|00F813| BRA .skip_core

;---------------------------------------------------------------------------------------------------

.not_dungeon_map
|00F815| JSL PushBlock_Handler

|00F819| BRA .continue

;---------------------------------------------------------------------------------------------------

.outdoors
|00F81B| LDA.b $11
|00F81D| CMP.b #$07
|00F81F| BEQ .overworld_map

|00F821| CMP.b #$0A ; duck
|00F823| BNE .continue

.overworld_map
|00F825| LDA.w $0200
|00F828| BNE .skip_core

;---------------------------------------------------------------------------------------------------

.continue
|00F82A| JSL HandleAllSprites
|00F82E| JSL DrawLink

|00F832| LDA.b $1B
|00F834| BNE .indoors

|00F836| JSL OverworldOverlay_HandleRain

.indoors
|00F83A| JSL HandleItemRefills

|00F83E| LDA.b $11
|00F840| CMP.b #$02
|00F842| BEQ .skip_core

|00F844| JSL OrientLampLightCone

;---------------------------------------------------------------------------------------------------

.skip_core
|00F848| SEP #$30

|00F84A| JSL RunInterface

; handle camera offsets
|00F84E| REP #$21

|00F850| LDA.b $E2
|00F852| ADC.w $011A
|00F855| STA.w $011E

|00F858| LDA.b $E8
|00F85A| CLC
|00F85B| ADC.w $011C
|00F85E| STA.w $0122

|00F861| LDA.b $E0
|00F863| CLC
|00F864| ADC.w $011A
|00F867| STA.w $0120

|00F86A| LDA.b $E6
|00F86C| CLC
|00F86D| ADC.w $011C
|00F870| STA.w $0124

|00F873| SEP #$20

;===================================================================================================

Module0E_00_Nothing:
|00F875| RTL

;===================================================================================================

pool RunInterface

.low
|00F876| db Module0E_00_Nothing
|00F877| db Module0E_01_ItemMenu
|00F878| db Module0E_02_RenderText
|00F879| db Module0E_03_UnderworldMap
|00F87A| db Module0E_04_RedPotion
|00F87B| db Module0E_05_DesertPrayer
|00F87C| db Module0E_06_Unused
|00F87D| db Module0E_07_OverworldMap
|00F87E| db Module0E_08_GreenPotion
|00F87F| db Module0E_09_BluePotion
|00F880| db Module0E_0A_FluteMenu
|00F881| db Module0E_0B_SaveMenu

;---------------------------------------------------------------------------------------------------

.high
|00F882| db >Module0E_00_Nothing
|00F883| db >Module0E_01_ItemMenu
|00F884| db >Module0E_02_RenderText
|00F885| db >Module0E_03_UnderworldMap
|00F886| db >Module0E_04_RedPotion
|00F887| db >Module0E_05_DesertPrayer
|00F888| db >Module0E_06_Unused
|00F889| db >Module0E_07_OverworldMap
|00F88A| db >Module0E_08_GreenPotion
|00F88B| db >Module0E_09_BluePotion
|00F88C| db >Module0E_0A_FluteMenu
|00F88D| db >Module0E_0B_SaveMenu

;---------------------------------------------------------------------------------------------------

.bank
|00F88E| db ^Module0E_00_Nothing
|00F88F| db ^Module0E_01_ItemMenu
|00F890| db ^Module0E_02_RenderText
|00F891| db ^Module0E_03_UnderworldMap
|00F892| db ^Module0E_04_RedPotion
|00F893| db ^Module0E_05_DesertPrayer
|00F894| db ^Module0E_06_Unused
|00F895| db ^Module0E_07_OverworldMap
|00F896| db ^Module0E_08_GreenPotion
|00F897| db ^Module0E_09_BluePotion
|00F898| db ^Module0E_0A_FluteMenu
|00F899| db ^Module0E_0B_SaveMenu

endpool

;---------------------------------------------------------------------------------------------------

RunInterface:
|00F89A| LDX.b $11

|00F89C| LDA.l .low,X
|00F8A0| STA.b $00

|00F8A2| LDA.l .high,X
|00F8A6| STA.b $01

|00F8A8| LDA.l .bank,X
|00F8AC| STA.b $02

|00F8AE| JML.w [$0000]

;===================================================================================================

Module0E_05_DesertPrayer:
|00F8B1| LDA.b $B0
|00F8B3| JSL JumpTableLong
|00F8B7| dl ResetTransitionPropsAndAdvance_ResetInterface_long
|00F8BA| dl ApplyPaletteFilter
|00F8BD| dl DesertPrayer_InitializeCutscene
|00F8C0| dl DesertPrayer_FadeScene
|00F8C3| dl DesertPrayer_WaitForInput

;===================================================================================================

DesertPrayer_InitializeCutscene:
|00F8C6| JSL InitializePrayerIris

|00F8CA| LDA.l $7EC00B
|00F8CE| DEC A
|00F8CF| STA.l $7EC007

|00F8D3| LDA.b #$00
|00F8D5| STA.l $7EC00B

|00F8D9| LDA.b #$02
|00F8DB| STA.l $7EC009

|00F8DF| RTL

;===================================================================================================

DesertPrayer_FadeScene:
|00F8E0| JSL ApplyPaletteFilter

;===================================================================================================

DesertPrayer_WaitForInput:
|00F8E4| JSL BuildPrayerHDMATable

|00F8E8| RTL

;===================================================================================================

Module0E_06_Unused:
|00F8E9| LDA.b $B0
|00F8EB| JSL JumpTableLong
|00F8EF| dl ResetTransitionPropsAndAdvance_ResetInterface_long
|00F8F2| dl ApplyPaletteFilter
|00F8F5| dl HandleRoomTranslucencyAndPalettes_long
|00F8F8| dl UnusedInterfacePaletteRecovery_long

;===================================================================================================

Module0E_04_RedPotion:
|00F8FB| JSL FullyRefillHealth
|00F8FF| BCC .exit

;===================================================================================================

#Module0E_Interface_RestoreModeFromPotion:
|00F901| LDA.b $3A ; clear Y button
|00F903| AND.b #$BF
|00F905| STA.b $3A

|00F907| INC.b $16

|00F909| STZ.b $11 ; bad assumption to always use submodule 0

|00F90B| LDA.w $010C ; restore previous module
|00F90E| STA.b $10

.exit
|00F910| RTL

;===================================================================================================

Module0E_08_GreenPotion:
|00F911| JSL FullyRefillMagic
|00F915| BCS Module0E_Interface_RestoreModeFromPotion

|00F917| RTL

;===================================================================================================

Module0E_09_BluePotion:
|00F918| JSL FullyRefillHealth
|00F91C| BCC .health_full

|00F91E| LDA.b #$08 ; switch to green potion submodule for magic only
|00F920| STA.b $11

.health_full
|00F922| JSL FullyRefillMagic
|00F926| BCC .magic_full

|00F928| LDA.b #$04 ; switch to red potion submodule for health only
|00F92A| STA.b $11

.magic_full
|00F92C| RTL

;===================================================================================================

pool PrepareDungeonExitFromBossFight

.boss_room
|00F92D| db $C8 ; ROOM 00C8 - Armos→Eastern lobby
|00F92E| db $33 ; ROOM 0033 - Lanmolas→Desert 3
|00F92F| db $07 ; ROOM 0007 - Moldorm→Hera lobby
|00F930| db $20 ; ROOM 0020 - Agahnim→self
|00F931| db $06 ; ROOM 0006 - Arrghus→Swamp lobby
|00F932| db $5A ; ROOM 005A - Helmasaur→PoD lobby
|00F933| db $29 ; ROOM 0029 - Mothula→Skull 3
|00F934| db $90 ; ROOM 0090 - Vitreous→Mire foyer
|00F935| db $DE ; ROOM 00DE - Kholdstare→Ice 1
|00F936| db $A4 ; ROOM 00A4 - Trinexx→TR foyer
|00F937| db $AC ; ROOM 00AC - Blind→Thieves' lobby
|00F938| db $0D ; ROOM 000D - Agahnim 2→self

.exit_room
|00F939| db $C9 ; ROOM 00C9 - Armos→Eastern lobby
|00F93A| db $63 ; ROOM 0063 - Lanmolas→Desert 3
|00F93B| db $77 ; ROOM 0077 - Moldorm→Hera lobby
|00F93C| db $20 ; ROOM 0020 - Agahnim→self
|00F93D| db $28 ; ROOM 0028 - Arrghus→Swamp lobby
|00F93E| db $4A ; ROOM 004A - Helmasaur→PoD lobby
|00F93F| db $59 ; ROOM 0059 - Mothula→Skull 3
|00F940| db $98 ; ROOM 0098 - Vitreous→Mire foyer
|00F941| db $0E ; ROOM 000E - Kholdstare→Ice 1
|00F942| db $D6 ; ROOM 00D6 - Trinexx→TR foyer
|00F943| db $DB ; ROOM 00DB - Blind→Thieves' lobby
|00F944| db $0D ; ROOM 000D - Agahnim 2→self

endpool

;---------------------------------------------------------------------------------------------------

PrepareDungeonExitFromBossFight:
|00F945| JSL SaveDeathCount
|00F949| JSL SaveDungeonKeys

|00F94D| LDA.w $0403
|00F950| ORA.b #$80
|00F952| STA.w $0403

|00F955| JSL FullyUpdateRoomFlags

|00F959| LDX.b #$0C

|00F95B| LDA.b $A0

.check_next
|00F95D| DEX

|00F95E| CMP.l .boss_room,X
|00F962| BNE .check_next

|00F964| LDA.l .exit_room,X
|00F968| STA.b $A0

|00F96A| CMP.b #$20
|00F96C| BNE .not_aga1

;---------------------------------------------------------------------------------------------------

|00F96E| LDA.b #$03
|00F970| STA.l $7EF3C5

; Lumberjack overlay
|00F974| LDA.l $7EF282
|00F978| ORA.b #$20
|00F97A| STA.l $7EF282

|00F97E| LDA.l $7EF3CA
|00F982| EOR.b #$40
|00F984| STA.l $7EF3CA

|00F988| JSL ConfigureSpriteSet_light_world_only
|00F98C| JSL TerminateSelectInteractives

|00F990| STZ.w $037B

|00F993| STZ.b $3C
|00F995| STZ.b $3A

|00F997| STZ.w $03EF

|00F99A| LDA.b #$01
|00F99C| STA.w $02E4

|00F99F| LDA.b #$08
|00F9A1| STA.w $010C

|00F9A4| LDA.b #$15
|00F9A6| STA.b $10

|00F9A8| STZ.b $11
|00F9AA| STZ.b $B0

|00F9AC| RTL

;---------------------------------------------------------------------------------------------------

.not_aga1
|00F9AD| CMP.b #$0D
|00F9AF| BNE .not_aga2

|00F9B1| LDA.b #$18
|00F9B3| STA.b $10

|00F9B5| STZ.b $11

|00F9B7| STZ.w $0200

|00F9BA| LDA.b #$20
|00F9BC| STA.b $9A

|00F9BE| RTL

;---------------------------------------------------------------------------------------------------

.not_aga2
|00F9BF| CPX.b #$03
|00F9C1| BCC .light_world_dungeon

|00F9C3| LDA.b #$F1 ; SONG F1 - fade
|00F9C5| STA.w $012C
|00F9C8| STA.w $0130

|00F9CB| LDA.b #$16
|00F9CD| BRA .set_module

.light_world_dungeon
|00F9CF| LDA.b #$13

.set_module
|00F9D1| STA.b $10

|00F9D3| LDA.b #$08
|00F9D5| STA.w $010C

|00F9D8| STZ.b $11
|00F9DA| STZ.b $B0

|00F9DC| RTL

;===================================================================================================

SaveDeathCount:
|00F9DD| PHX

|00F9DE| REP #$20

|00F9E0| LDX.w $040C

|00F9E3| LDA.l $7EF3FF
|00F9E7| STA.l $7EF3E3,X

; why is this skipped??
|00F9EB| CPX.b #$08 ; DUNGEON 08
|00F9ED| BEQ .aga_tower

|00F9EF| LDA.w #$0000
|00F9F2| STA.l $7EF3FF

.aga_tower
|00F9F6| SEP #$20

|00F9F8| PLX

|00F9F9| RTL

;===================================================================================================

Module0E_0B_SaveMenu:
|00F9FA| LDA.b $1B
|00F9FC| BNE .indoors

|00F9FE| JSL FlashGanonTowerPalette

.indoors
|00FA02| JSL RenderText

|00FA06| STZ.b $16
|00FA08| STZ.w $0710

|00FA0B| LDA.b $B0
|00FA0D| CMP.b #$03
|00FA0F| BCS .done_text_sub

|00FA11| INC.b $B0

|00FA13| BRA .continue

.done_text_sub
|00FA15| STZ.b $14

.continue
|00FA17| LDA.b $11
|00FA19| BNE .exit

|00FA1B| STZ.b $B0

|00FA1D| LDA.b #$01
|00FA1F| STA.b $14

|00FA21| LDA.w $1CE8
|00FA24| BEQ .dont_save

|00FA26| LDA.b #$0F ; SFX1.0F
|00FA28| STA.w $012D

|00FA2B| LDA.b #$17
|00FA2D| STA.b $10

|00FA2F| LDA.b #$01
|00FA31| STA.b $11

|00FA33| STZ.w $05FC
|00FA36| STZ.w $05FD

|00FA39| RTL

.dont_save
|00FA3A| LDA.w $1CF4
|00FA3D| STA.w $1CE8

.exit
|00FA40| RTL

;===================================================================================================

pool ConfigureSpriteSet

.sprite_set
|00FA41| db $00, $00, $00, $00, $00, $00, $00, $00
|00FA49| db $00, $00, $00, $00, $00, $00, $00, $00
|00FA51| db $00, $00, $00, $00, $00, $00, $00, $00
|00FA59| db $00, $00, $00, $02, $02, $00, $00, $00
|00FA61| db $00, $00, $00, $02, $02, $00, $00, $00
|00FA69| db $00, $00, $00, $02, $02, $00, $00, $00
|00FA71| db $00, $00, $00, $00, $00, $00, $00, $00
|00FA79| db $00, $00, $00, $00, $00, $00, $00, $00

|00FA81| db $07, $07, $07, $10, $10, $10, $10, $10
|00FA89| db $07, $07, $07, $10, $10, $10, $10, $04
|00FA91| db $06, $06, $00, $03, $03, $00, $0D, $0A
|00FA99| db $06, $06, $01, $01, $01, $04, $05, $05
|00FAA1| db $06, $06, $06, $01, $01, $04, $05, $05
|00FAA9| db $06, $09, $0F, $00, $00, $0B, $0B, $05
|00FAB1| db $08, $08, $0A, $04, $04, $04, $04, $04
|00FAB9| db $08, $08, $0A, $04, $04, $04, $04, $04

|00FAC1| db $07, $07, $1A, $10, $10, $10, $10, $10
|00FAC9| db $07, $07, $1A, $10, $10, $10, $10, $04
|00FAD1| db $06, $06, $00, $03, $03, $00, $0D, $0A
|00FAD9| db $06, $06, $1C, $1C, $1C, $02, $05, $05
|00FAE1| db $06, $06, $06, $1C, $1C, $00, $05, $05
|00FAE9| db $06, $00, $0F, $00, $00, $23, $23, $05
|00FAF1| db $1F, $1F, $0A, $20, $20, $20, $20, $20
|00FAF9| db $1F, $1F, $0A, $20, $20, $20, $20, $20

|00FB01| db $13, $13, $17, $14, $14, $14, $14, $14
|00FB09| db $13, $13, $17, $14, $14, $14, $14, $16
|00FB11| db $15, $15, $12, $13, $13, $18, $16, $16
|00FB19| db $15, $15, $13, $26, $26, $13, $17, $17
|00FB21| db $15, $15, $15, $26, $26, $13, $17, $17
|00FB29| db $1B, $1D, $11, $13, $13, $18, $18, $17
|00FB31| db $16, $16, $13, $13, $13, $19, $19, $19
|00FB39| db $16, $16, $18, $13, $18, $19, $19, $19

.palette
|00FB41| db $01, $01, $01, $01, $01, $01, $01, $01
|00FB49| db $01, $01, $01, $01, $01, $01, $01, $01
|00FB51| db $01, $01, $01, $01, $01, $01, $01, $01
|00FB59| db $01, $01, $01, $01, $01, $01, $01, $01
|00FB61| db $01, $01, $01, $01, $01, $01, $01, $01
|00FB69| db $01, $01, $01, $01, $01, $01, $01, $01
|00FB71| db $01, $01, $01, $01, $01, $01, $01, $01
|00FB79| db $01, $01, $01, $01, $01, $01, $01, $01

|00FB81| db $05, $05, $06, $09, $09, $09, $09, $09
|00FB89| db $05, $05, $06, $09, $09, $09, $09, $03
|00FB91| db $01, $01, $00, $02, $02, $00, $06, $03
|00FB99| db $01, $01, $01, $03, $03, $03, $07, $07
|00FBA1| db $01, $01, $01, $03, $03, $03, $07, $07
|00FBA9| db $01, $00, $01, $00, $00, $03, $03, $07
|00FBB1| db $04, $04, $00, $03, $03, $03, $03, $03
|00FBB9| db $04, $04, $00, $03, $03, $03, $03, $03

|00FBC1| db $05, $05, $06, $09, $09, $09, $09, $09
|00FBC9| db $05, $05, $06, $09, $09, $09, $09, $03
|00FBD1| db $01, $01, $00, $02, $02, $00, $06, $03
|00FBD9| db $01, $01, $01, $01, $01, $03, $07, $07
|00FBE1| db $01, $01, $01, $01, $01, $03, $07, $07
|00FBE9| db $01, $00, $01, $00, $00, $03, $03, $07
|00FBF1| db $04, $04, $00, $03, $03, $03, $03, $03
|00FBF9| db $04, $04, $00, $03, $03, $03, $03, $03

|00FC01| db $0E, $0E, $10, $0C, $0C, $0C, $0C, $0C
|00FC09| db $0E, $0E, $10, $0C, $0C, $0C, $0C, $0A
|00FC11| db $10, $10, $00, $0E, $0E, $00, $0D, $0A
|00FC19| db $10, $10, $10, $0E, $0E, $0E, $0D, $0D
|00FC21| db $10, $10, $10, $0E, $0E, $0E, $0D, $0D
|00FC29| db $12, $00, $0B, $0E, $0E, $0E, $0E, $0D
|00FC31| db $0F, $0F, $00, $0E, $0E, $0E, $0E, $0E
|00FC39| db $0F, $0F, $00, $0E, $0E, $0E, $0E, $0E

endpool

;---------------------------------------------------------------------------------------------------

ConfigureSpriteSet:
|00FC41| PHB
|00FC42| PHK
|00FC43| PLB

|00FC44| REP #$30

|00FC46| LDY.w #$00FE
|00FC49| LDX.w #$003E

.next_a
|00FC4C| LDA.w .sprite_set,Y
|00FC4F| STA.l $7EFD00,X

|00FC53| LDA.w .palette,Y
|00FC56| STA.l $7EFD80,X

|00FC5A| DEY
|00FC5B| DEY

|00FC5C| DEX
|00FC5D| DEX
|00FC5E| BPL .next_a

|00FC60| BRA .continue

;===================================================================================================

#ConfigureSpriteSet_light_world_only:
|00FC62| PHB
|00FC63| PHK
|00FC64| PLB

|00FC65| REP #$30

.continue
|00FC67| LDY.w #$003E

|00FC6A| LDA.l $7EF3C5
|00FC6E| AND.w #$00FF
|00FC71| CMP.w #$0002
|00FC74| BCC .start_lw

|00FC76| LDY.w #$007E
|00FC79| CMP.w #$0003
|00FC7C| BNE .start_lw

|00FC7E| LDY.w #$00BE

;---------------------------------------------------------------------------------------------------

.start_lw
|00FC81| LDX.w #$003E

.next_b
|00FC84| LDA.w .sprite_set,Y
|00FC87| STA.l $7EFCC0,X

|00FC8B| LDA.w .palette,Y
|00FC8E| STA.l $7EFD40,X

|00FC92| DEY
|00FC93| DEY

|00FC94| DEX
|00FC95| DEX
|00FC96| BPL .next_b

;---------------------------------------------------------------------------------------------------

|00FC98| SEP #$30

|00FC9A| PLB

|00FC9B| RTL

;===================================================================================================

GFXAA2ValsOW:
|00FC9C| db $21, $21, $21, $22, $22, $22, $22, $22
|00FCA4| db $21, $21, $21, $22, $22, $22, $22, $27
|00FCAC| db $23, $23, $20, $29, $29, $20, $29, $29
|00FCB4| db $23, $23, $20, $24, $24, $27, $25, $25
|00FCBC| db $23, $23, $23, $24, $24, $20, $25, $25
|00FCC4| db $23, $2A, $21, $20, $20, $27, $20, $25
|00FCCC| db $2B, $2B, $20, $27, $27, $27, $27, $27
|00FCD4| db $2B, $2B, $20, $27, $27, $27, $27, $27

|00FCDC| db $3E, $3E, $3E, $41, $41, $41, $41, $3C
|00FCE4| db $3E, $3E, $3E, $41, $41, $41, $41, $40
|00FCEC| db $3F, $3F, $30, $40, $40, $30, $40, $30
|00FCF4| db $3F, $3F, $30, $3B, $3B, $40, $3D, $3D
|00FCFC| db $3F, $3F, $3F, $3B, $3B, $30, $3D, $3D
|00FD04| db $3F, $3F, $30, $30, $30, $40, $30, $3D
|00FD0C| db $42, $42, $30, $40, $40, $42, $42, $40
|00FD14| db $42, $42, $30, $40, $40, $42, $42, $30

;===================================================================================================

OverworldPalettesScreenToSet:
|00FD1C| db $06, $06, $08, $07, $07, $07, $07, $07
|00FD24| db $06, $06, $08, $07, $07, $07, $07, $04
|00FD2C| db $08, $08, $00, $01, $01, $00, $09, $00
|00FD34| db $08, $08, $00, $02, $02, $04, $09, $09
|00FD3C| db $08, $08, $08, $02, $02, $00, $09, $09
|00FD44| db $08, $08, $01, $00, $00, $04, $00, $09
|00FD4C| db $09, $00, $00, $04, $04, $04, $04, $04
|00FD54| db $09, $09, $00, $04, $04, $04, $04, $04

|00FD5C| db $1B, $1B, $1E, $17, $17, $17, $17, $18
|00FD64| db $1B, $1B, $1E, $17, $17, $17, $17, $1D
|00FD6C| db $1E, $1E, $10, $1E, $1E, $10, $1E, $10
|00FD74| db $1E, $1E, $10, $12, $12, $10, $1A, $1A
|00FD7C| db $1E, $1E, $1E, $12, $12, $10, $1A, $1A
|00FD84| db $1E, $10, $12, $10, $10, $1D, $10, $1A
|00FD8C| db $1C, $1C, $10, $1D, $1D, $1C, $1C, $1D
|00FD94| db $1C, $1C, $10, $1D, $1D, $1C, $1C, $10
|00FD9C| db $0A, $0A, $0A, $0A, $02, $02, $02, $0A

;===================================================================================================

ResetStarTileGraphics:
|00FDA4| STZ.w $04BC

;===================================================================================================

ToggleStarTileGraphics:
|00FDA7| REP #$10

|00FDA9| LDX.w #$0000
|00FDAC| LDY.w #$0020

|00FDAF| LDA.w $04BC
|00FDB2| BEQ .flipped

|00FDB4| TYX
|00FDB5| LDY.w #$0000

.flipped
|00FDB8| STY.b $0E

|00FDBA| PHB

|00FDBB| LDA.b #$7F
|00FDBD| PHA
|00FDBE| PLB

;---------------------------------------------------------------------------------------------------

|00FDBF| REP #$20

|00FDC1| LDY.w #$0000

.next_a
|00FDC4| LDA.l $7EBDC0,X
|00FDC8| STA.w $7F0000,Y

|00FDCB| INX
|00FDCC| INX

|00FDCD| INY
|00FDCE| INY

|00FDCF| CPY.w #$0020
|00FDD2| BNE .next_a

;---------------------------------------------------------------------------------------------------

|00FDD4| LDX.b $0E

.next_b
|00FDD6| LDA.l $7EBDC0,X
|00FDDA| STA.w $7F0000,Y

|00FDDD| INX
|00FDDE| INX

|00FDDF| INY
|00FDE0| INY

|00FDE1| CPY.w #$0040
|00FDE4| BNE .next_b

;---------------------------------------------------------------------------------------------------

|00FDE6| SEP #$30

|00FDE8| PLB

|00FDE9| LDA.b #$18
|00FDEB| STA.b $17

|00FDED| RTL

;===================================================================================================

InitializeMirrorHDMA:
|00FDEE| STZ.b $9B

|00FDF0| REP #$20

|00FDF2| STZ.w $06A0
|00FDF5| STZ.w $06AC
|00FDF8| STZ.w $06AA
|00FDFB| STZ.w $06AE
|00FDFE| STZ.w $06B0

|00FE01| LDA.w #$0008
|00FE04| STA.w $06B4
|00FE07| STA.w $06B6

|00FE0A| LDA.w #$0015
|00FE0D| STA.w $06B2

|00FE10| LDA.w #$FFC0
|00FE13| STA.w $06A6

|00FE16| LDA.w #$0040
|00FE19| STA.w $06A8

|00FE1C| LDA.w #$FE00
|00FE1F| STA.w $06A2

|00FE22| LDA.w #$0200
|00FE25| STA.w $06A4

|00FE28| STZ.w $06AC
|00FE2B| STZ.w $06AE

|00FE2E| LDA.w #$0F42
|00FE31| STA.w DMA7MODE

|00FE34| LDA.w #$0D42
|00FE37| STA.w DMA6MODE

|00FE3A| LDX.b #$3E

|00FE3C| LDA.b $E2

;===================================================================================================

InitializeHDMATable:
.next
|00FE3E| STA.w $1B00,X
|00FE41| STA.w $1B40,X
|00FE44| STA.w $1B80,X
|00FE47| STA.w $1BC0,X
|00FE4A| STA.w $1C00,X
|00FE4D| STA.w $1C40,X
|00FE50| STA.w $1C80,X

|00FE53| DEX
|00FE54| DEX
|00FE55| BPL .next

|00FE57| SEP #$20

|00FE59| LDA.b #$C0
|00FE5B| STA.b $9B

;---------------------------------------------------------------------------------------------------

#EXIT_00FE5D:
|00FE5D| RTL

;===================================================================================================

MirrorWarp_BuildAndEnableHDMATable:
|00FE5E| INC.b $B0

|00FE60| LDA.b #$C0
|00FE62| STA.b $9B

;===================================================================================================

MirrorWarp_BuildWavingHDMATable:
|00FE64| JSL MirrorWarp_RunAnimationSubmodules

|00FE68| LDA.b $1A
|00FE6A| LSR A
|00FE6B| BCS EXIT_00FE5D

|00FE6D| REP #$30

|00FE6F| LDX.w #$01A0
|00FE72| LDY.w #$01B0

; [WTF] IS THIS FOR????
|00FE75| LDA.w #$0002
|00FE78| STA.b $00

|00FE7A| LDA.w #$0003
|00FE7D| STA.b $02

;---------------------------------------------------------------------------------------------------

.next
|00FE7F| LDA.w $1B00,X
|00FE82| STA.w $1B00,Y
|00FE85| STA.w $1B04,Y
|00FE88| STA.w $1B08,Y
|00FE8B| STA.w $1B0C,Y

|00FE8E| TXA
|00FE8F| SEC
|00FE90| SBC.w #$0010
|00FE93| TAX

|00FE94| DEC.b $00
|00FE96| BNE .dont_reset_a

|00FE98| LDA.w #$0008
|00FE9B| STA.b $00

.dont_reset_a
|00FE9D| TYA
|00FE9E| SEC
|00FE9F| SBC.w #$0010
|00FEA2| TAY

|00FEA3| DEC.b $02
|00FEA5| BNE .dont_reset_b

|00FEA7| LDA.w #$0008
|00FEAA| STA.b $02

.dont_reset_b
|00FEAC| CPY.w #$0000
|00FEAF| BNE .next

;---------------------------------------------------------------------------------------------------

|00FEB1| LDX.w $06A0

|00FEB4| LDA.w $06AC
|00FEB7| CLC
|00FEB8| ADC.w $06A6,X
|00FEBB| PHA

|00FEBC| SEC
|00FEBD| SBC.w $06A2,X
|00FEC0| EOR.w $06A2,X
|00FEC3| BMI .negative

|00FEC5| STZ.w $06AA
|00FEC8| STZ.w $06AE

|00FECB| LDA.w $06A0
|00FECE| EOR.w #$0002
|00FED1| STA.w $06A0

|00FED4| PLA
|00FED5| LDA.w $06A2,X

|00FED8| PHA

.negative
|00FED9| PLA
|00FEDA| STA.w $06AC

|00FEDD| CLC
|00FEDE| ADC.w $06AE
|00FEE1| PHA

|00FEE2| AND.w #$00FF
|00FEE5| STA.w $06AE

;---------------------------------------------------------------------------------------------------

|00FEE8| PLA
|00FEE9| BPL .positive

|00FEEB| ORA.w #$00FF
|00FEEE| BRA .continue_with_sign

.positive
|00FEF0| AND.w #$FF00

.continue_with_sign
|00FEF3| XBA
|00FEF4| CLC
|00FEF5| ADC.w $06AA
|00FEF8| STA.w $06AA

|00FEFB| TAX

|00FEFC| LDA.l $7EC007
|00FF00| CMP.w #$0030
|00FF03| BCC .dont_advance

|00FF05| TXA
|00FF06| AND.w #$FFF8
|00FF09| BNE .dont_advance

|00FF0B| LDA.w #$FF00
|00FF0E| STA.w $06A2

|00FF11| LDA.w #$0100
|00FF14| STA.w $06A4

|00FF17| LDX.w #$0000

|00FF1A| INC.b $B0

;---------------------------------------------------------------------------------------------------

.dont_advance
|00FF1C| TXA
|00FF1D| CLC
|00FF1E| ADC.b $E2
|00FF20| STA.w $1B00
|00FF23| STA.w $1B04
|00FF26| STA.w $1B08
|00FF29| STA.w $1B0C

|00FF2C| SEP #$30

;---------------------------------------------------------------------------------------------------

#EXIT_00FF2E:
|00FF2E| RTL

;===================================================================================================

MirrorWarp_BuildDewavingHDMATable:
|00FF2F| JSL MirrorWarp_RunAnimationSubmodules

|00FF33| LDA.b $1A
|00FF35| LSR A
|00FF36| BCS EXIT_00FF2E

|00FF38| REP #$30

|00FF3A| LDX.w #$01A0
|00FF3D| LDY.w #$01B0

; [WTF] IS THIS FOR????
|00FF40| LDA.w #$0002
|00FF43| STA.b $00

|00FF45| LDA.w #$0003
|00FF48| STA.b $02

;---------------------------------------------------------------------------------------------------

.next
|00FF4A| LDA.w $1B00,X
|00FF4D| STA.w $1B00,Y
|00FF50| STA.w $1B04,Y
|00FF53| STA.w $1B08,Y
|00FF56| STA.w $1B0C,Y

|00FF59| TXA
|00FF5A| SEC
|00FF5B| SBC.w #$0010
|00FF5E| TAX

|00FF5F| DEC.b $00
|00FF61| BNE .dont_reset_a

|00FF63| LDA.w #$0008
|00FF66| STA.b $00

.dont_reset_a
|00FF68| TYA
|00FF69| SEC
|00FF6A| SBC.w #$0010
|00FF6D| TAY

|00FF6E| DEC.b $02
|00FF70| BNE .dont_reset_b

|00FF72| LDA.w #$0008
|00FF75| STA.b $02

.dont_reset_b
|00FF77| CPY.w #$0000
|00FF7A| BNE .next

;---------------------------------------------------------------------------------------------------
; TODO quickwarps?
|00FF7C| LDA.w $1C80
|00FF7F| ORA.w $1C90
|00FF82| ORA.w $1CA0
|00FF85| ORA.w $1CB0

|00FF88| CMP.b $E2
|00FF8A| BNE .exit

|00FF8C| SEP #$20

|00FF8E| STZ.b $9B

|00FF90| INC.b $B0

|00FF92| JSL Overworld_SetFixedColAndScroll

; On hyrule castle/pyramid screen?
|00FF96| LDA.b $8A
|00FF98| AND.b #$3F
|00FF9A| CMP.b #$1B ; OW 1B, OW 5B
|00FF9C| BEQ .exit

|00FF9E| REP #$20

|00FFA0| LDA.b $E2
|00FFA2| STA.b $E0
|00FFA4| STA.w $0120
|00FFA7| STA.w $011E

|00FFAA| LDA.b $E8
|00FFAC| STA.b $E6
|00FFAE| STA.w $0122
|00FFB1| STA.w $0124

.exit
|00FFB4| SEP #$30

|00FFB6| RTL

;===================================================================================================
; FREE ROM: 0x09
;===================================================================================================
NULL_00FFB7:
|00FFB7| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

InternalROMHeader:
|00FFC0| db "ZELDANODENSETSU      "

|00FFD5| db $20 ; ROM mapping: lorom
|00FFD6| db $02 ; Cartridge: ROM+RAM+battery
|00FFD7| db $0A ; ROM size: 1MB
|00FFD8| db $03 ; RAM size: 8kB

|00FFD9| db $00 ; Region: Japan (J)
|00FFDA| db $01 ; Header type: v2
|00FFDB| db $00 ; Version: 1.0

|00FFDC| dw $3237 ; complement
|00FFDE| dw $CDC8 ; checksum

; native mode interrupt vectors
|00FFE0| dw $FFFF              ; Unused
|00FFE2| dw $FFFF              ; Unused
|00FFE4| dw Interrupt_Unused   ; COP
|00FFE6| dw $FFFF              ; BRK
|00FFE8| dw Interrupt_Unused   ; Abort
|00FFEA| dw NMI                ; Non-maskable interrupt
|00FFEC| dw Reset              ; Reset
|00FFEE| dw IRQ                ; General interrupt

; emulation mode interrupt vectors
|00FFF0| dw $FFFF              ; Unused
|00FFF2| dw $FFFF              ; Unused
|00FFF4| dw Interrupt_Unused   ; COP
|00FFF6| dw Interrupt_Unused   ; Unused
|00FFF8| dw Interrupt_Unused   ; Abort
|00FFFA| dw Interrupt_Unused   ; Non-maskable interrupt
|00FFFC| dw Reset              ; Reset
|00FFFE| dw IRQ                ; General interrupt/BRK

; Due to the high byte of the IRQ vector
; the unused and BRK vectors essentially point to
; |00FFFF| BRL ????
; where ???? is the memory mirrored from $7E:0000

;===================================================================================================



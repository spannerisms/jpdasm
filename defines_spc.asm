;===================================================================================================

SPC_ENGINE          = $0800
SFX_DATA            = $17C0
SAMPLE_POINTERS     = $3C00
INSTRUMENT_DATA     = $3D00
INSTRUMENT_DATA_SFX = $3E00
SAMPLE_DATA         = $4000
SONG_POINTERS       = $D000
SONG_POINTERS_AUX   = $2B00
CREDITS_AUX_POINTER = $2900

;===================================================================================================
; SPC registers
;===================================================================================================
TEST = $F0
CONTROL = $F1
DSPADDR = $F2
DSPDATA = $F3
CPUIO0 = $F4
CPUIO1 = $F5
CPUIO2 = $F6
CPUIO3 = $F7
AUXIO4 = $F8
AUXIO5 = $F9
T0DIV = $FA
T1DIV = $FB
T2DIV = $FC
T0OUT = $FD
T1OUT = $FE
T2OUT = $FF

;===================================================================================================
; DSP registers
;===================================================================================================
VxVOLL = $00
VxVOLR = $01
VxPITCHL = $02
VxPITCHH = $03
VxSRCN = $04
VxADSR1 = $05
VxADSR2 = $06
VxGAIN = $07
VxENVX = $08
VxOUTX = $09

;---------------------------------------------------------------------------------------------------

V0VOLL = $00
V0VOLR = $01
V0PITCHL = $02
V0PITCHH = $03
V0SRCN = $04
V0ADSR1 = $05
V0ADSR2 = $06
V0GAIN = $07
V0ENVX = $08
V0OUTX = $09

V1VOLL = $10
V1VOLR = $11
V1PITCHL = $12
V1PITCHH = $13
V1SRCN = $14
V1ADSR1 = $15
V1ADSR2 = $16
V1GAIN = $17
V1ENVX = $18
V1OUTX = $19

V2VOLL = $20
V2VOLR = $21
V2PITCHL = $22
V2PITCHH = $23
V2SRCN = $24
V2ADSR1 = $25
V2ADSR2 = $26
V2GAIN = $27
V2ENVX = $28
V2OUTX = $29

V3VOLL = $30
V3VOLR = $31
V3PITCHL = $32
V3PITCHH = $33
V3SRCN = $34
V3ADSR1 = $35
V3ADSR2 = $36
V3GAIN = $37
V3ENVX = $38
V3OUTX = $39

V4VOLL = $40
V4VOLR = $41
V4PITCHL = $42
V4PITCHH = $43
V4SRCN = $44
V4ADSR1 = $45
V4ADSR2 = $46
V4GAIN = $47
V4ENVX = $48
V4OUTX = $49

V5VOLL = $50
V5VOLR = $51
V5PITCHL = $52
V5PITCHH = $53
V5SRCN = $54
V5ADSR1 = $55
V5ADSR2 = $56
V5GAIN = $57
V5ENVX = $58
V5OUTX = $59

V6VOLL = $60
V6VOLR = $61
V6PITCHL = $62
V6PITCHH = $63
V6SRCN = $64
V6ADSR1 = $65
V6ADSR2 = $66
V6GAIN = $67
V6ENVX = $68
V6OUTX = $69

V7VOLL = $70
V7VOLR = $71
V7PITCHL = $72
V7PITCHH = $73
V7SRCN = $74
V7ADSR1 = $75
V7ADSR2 = $76
V7GAIN = $77
V7ENVX = $78
V7OUTX = $79

;---------------------------------------------------------------------------------------------------

MVOLL = $0C ; main volume
MVOLR = $1C
EVOLL = $2C ; echo volume
EVOLR = $3C
KON = $4C ; key on bitfield - not an anime
KOFF = $5C ; key off
FLG = $6C ; flags for mute, echo, reset, noise
	!DSP_FLG_RESET = $80
	!DSP_FLG_MUTE = $40
	!DSP_FLG_ECEN = $20
ENDX = $7C ; bitfield
EFB = $0D ; echo feedback
PMON = $2D ; pitch modulation
NON = $3D ; noise enable
EON = $4D ; echo enable
DIR = $5D ; $xx00 for SRCN directory
ESA = $6D ; $xx00 for echo buffer
EDL = $7D ; $0x echo delay
FIR = $0F
	!DSP_FIR_0 = $0F
	!DSP_FIR_1 = $1F
	!DSP_FIR_2 = $2F
	!DSP_FIR_3 = $3F
	!DSP_FIR_4 = $4F
	!DSP_FIR_5 = $5F
	!DSP_FIR_6 = $6F
	!DSP_FIR_7 = $7F

!DSP_CTRL_PORT_CLEAR_23 = $20
!DSP_CTRL_PORT_CLEAR_01 = $10
!DSP_CTRL_PORT_CLEAR_0123 #= !DSP_CTRL_PORT_CLEAR_23|!DSP_CTRL_PORT_CLEAR_01
!DSP_CTRL_START_TIMER_2 = $04
!DSP_CTRL_START_TIMER_1 = $02
!DSP_CTRL_START_TIMER_0 = $01

; $FFC0-$FFFF writes are always RAM
!DSP_CTRL_ROM = $80 ; Reading $FFC0-$FFFF is ROM
!DSP_CTRL_RAM = $00 ; Reading $FFC0-$FFFF is RAM

;===================================================================================================

!PART_END = $00
!SONG_END = $0000
!SONG_LOOP = $00FF
!END_TRANSFER = $0000

!TIE           = $C8
!REST          = $C9

!PERC_CA       = $CA
!PERC_CB       = $CB
!PERC_CC       = $CC
!PERC_CD       = $CD
!PERC_CE       = $CE
!PERC_CF       = $CF
!PERC_D0       = $D0
!PERC_D1       = $D1
!PERC_D2       = $D2
!PERC_D3       = $D3
!PERC_D4       = $D4
!PERC_D5       = $D5
!PERC_D6       = $D6
!PERC_D7       = $D7
!PERC_D8       = $D8
!PERC_D9       = $D9
!PERC_DA       = $DA
!PERC_DB       = $DB
!PERC_DC       = $DC
!PERC_DD       = $DD
!PERC_DE       = $DE
!PERC_DF       = $DF

!INSTR         = $E0
!PAN           = $E1
!PAN_GRAD      = $E2
!VIBRATO       = $E3
!VIBRATO_OFF   = $E4
!MASTER_VOLUME = $E5
!MVOL_GRAD     = $E6
!TEMPO         = $E7
!TEMPO_GRAD    = $E8
!GLOBAL_TRANS  = $E9
!TRANSPOSE     = $EA
!TREMOLO       = $EB
!TREMOLO_OFF   = $EC
!VOLUME        = $ED
!VOLUME_GRAD   = $EE
!CALL_PART     = $EF
!VIBRATO_GRAD  = $F0
!SLIDE_TO      = $F1
!SLIDE_FROM    = $F2
!SLIDE_OFF     = $F3
!TUNE          = $F4
!ECHO_CONFIG   = $F5
!ECHO_OFF      = $F6
!ECHO_FILTER   = $F7
!ECHO_GRAD     = $F8
!SLIDE_ONCE    = $F9
!SET_PERC      = $FA
!SFX_LOOP      = $FF

; instruments
!NOISE = $00
!RAIN = $01
!TIMPANI = $02
!SQUARE = $03
!SAW = $04
!CLINK = $05
!2SAW_A = $06
!2SAW_B = $07
!TWEET = $08
!STRINGS = $09
!STRINGS2 = $0A
!TROMBONE = $0B
!CYMBAL = $0C
!OCARINA = $0D
!CHIMES = $0E
!HARP = $0F
!SPLASH = $10
!TRUMPET = $11
!HORN = $12
!SNARE = $13
!SNARE2 = $14
!CHOIR = $15
!FLUTE = $16
!OOF = $17
!GUITAR = $18
!PIANO = !GUITAR

function bpm(m) = 36864*m/60000

;===================================================================================================
; notes
;===================================================================================================
R = $C9

C1	= $80
Cs1	= $81
Df1	= $81
D1	= $82
Ds1	= $83
Ef1	= $83
E1	= $84
Ff1	= $84
Es1	= $85
F1	= $85
Fs1	= $86
Gf1	= $86
G1	= $87
Gs1	= $88
Af1	= $88
A1	= $89
As1	= $8A
Bf1	= $8A
B1	= $8B
Cf2	= $8B
Bs1	= $8C

C2	= $8C
Cs2	= $8D
Df2	= $8D
D2	= $8E
Ds2	= $8F
Ef2	= $8F
E2	= $90
Ff2	= $90
Es2	= $91
F2	= $91
Fs2	= $92
Gf2	= $92
G2	= $93
Gs2	= $94
Af2	= $94
A2	= $95
As2	= $96
Bf2	= $96
B2	= $97
Cf3	= $97
Bs2	= $98

C3	= $98
Cs3	= $99
Df3	= $99
D3	= $9A
Ds3	= $9B
Ef3	= $9B
E3	= $9C
Ff3	= $9C
Es3	= $9D
F3	= $9D
Fs3	= $9E
Gf3	= $9E
G3	= $9F
Gs3	= $A0
Af3	= $A0
A3	= $A1
As3	= $A2
Bf3	= $A2
B3	= $A3
Cf4	= $A3
Bs3	= $A4

C4	= $A4
Cs4	= $A5
Df4	= $A5
D4	= $A6
Ds4	= $A7
Ef4	= $A7
E4	= $A8
Ff4	= $A8
Es4	= $A9
F4	= $A9
Fs4	= $AA
Gf4	= $AA
G4	= $AB
Gs4	= $AC
Af4	= $AC
A4	= $AD
As4	= $AE
Bf4	= $AE
B4	= $AF
Cf5	= $AF
Bs4	= $B0

C5	= $B0
Cs5	= $B1
Df5	= $B1
D5	= $B2
Ds5	= $B3
Ef5	= $B3
E5	= $B4
Ff5	= $B4
Es5	= $B5
F5	= $B5
Fs5	= $B6
Gf5	= $B6
G5	= $B7
Gs5	= $B8
Af5	= $B8
A5	= $B9
As5	= $BA
Bf5	= $BA
B5	= $BB
Cf6	= $BB
Bs5	= $BC

C6	= $BC
Cs6	= $BD
Df6	= $BD
D6	= $BE
Ds6	= $BF
Ef6	= $BF
E6	= $C0
Ff6	= $C0
Es6	= $C1
F6	= $C1
Fs6	= $C2
Gf6	= $C2
G6	= $C3
Gs6	= $C4
Af6	= $C4
A6	= $C5
As6	= $C6
Bf6	= $C6
B6	= $C7
Cf7	= $C7

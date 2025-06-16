;===================================================================================================
; KEY
;===================================================================================================
; .    - unused bit
; [..] - initial value
;===================================================================================================

;===================================================================================================
;===================================================================================================
; SPC700 REGISTERS
;---------------------------------------------------------------------------------------------------
; w    - writeable
; r    - readable
;===================================================================================================
;===================================================================================================

; SPC MEMORY CONTROL AND TIMER ENABLE
; $00F0 w
; TEST        iirr dxwt                w [0A = ....d.w.]
;   i - IO/ROM access wait state
;   r - RAM access wait state
;     00 - 0 cycles (default)
;     01 - 1 cycle
;     10 - 4 cycles
;     11 - 9 cycles
;   d - timer disable        (0: disabled  | 1: not disabled)
;   w - RAM/DSP write enable (0: read-only | 1: enabled)
;   t - timer enable         (0: enabled   | 1: not enabled)
;   x - Unknown. Apparently crashes the processor.
TEST            = $00F0

; SPC IPL BANKING AND COMMUNICATION / TIMER RESET
; CONTROL     r.pq .bca                w [B0 = r.pq....]
;   r - controls banking at $FFC0-$FFFF (0: RAM       | 1: IPL ROM)
;   p - reset input ports 2 and 3       (0: no change | 1: reset)
;   q - reset input ports 0 and 1       (0: no change | 1: reset)
;   c - timer 2                         (0: disable   | 1: enable)
;   b - timer 1                         (0: disable   | 1: enable)
;   a - timer 0                         (0: disable   | 1: enable)
; Timers reset on transition from 0 to 1.
CONTROL         = $00F1

; DSP ADDRESS ACCESS
; DSPADDR     aaaa aaaa                rw
;   a - DSP register address access
DSPADDR         = $00F2

; DSP DATA READ/WRITE
; DSPDATA     xxxx xxxx                rw
;   x - DSP register data access
DSPDATA         = $00F3

; SNES CPU COMMUNICATION PORTS
; CPUIO0      xxxx xxxx                rw [00]
; CPUIO1      xxxx xxxx                rw [00]
; CPUIO2      xxxx xxxx                rw [00]
; CPUIO3      xxxx xxxx                rw [00]
;   x - data
; Reads are data sent from the CPU on the corresponding APUIOX port
; Writes are sent to those same corresponding ports on the CPU.
CPUIO0          = $00F4
CPUIO1          = $00F5
CPUIO2          = $00F6
CPUIO3          = $00F7

; DISCONNECTED AUXILIARY PORTS
; AUXIO4      xxxx xxxx                rw
; AUXIO5      xxxx xxxx                rw
;   x - data
; Auxiliary ports not connected anywhere.
AUXIO4          = $00F8
AUXIO5          = $00F9

; TIMER DIVISOR VALUE
; T0          dddd dddd                w
; T1          dddd dddd                w
; T2          dddd dddd                w
;   t - timer divisor
; Divider values for timers 0, 1, 2.
; Takes the clock source and divides by the given value.
; A value of 00 is interpreted as a divisor of $100.
; Timers 0 and 1 are 8kHz; Timer 2 is 64kHz
T0              = $00FA      : T0DIV = $00FA
T1              = $00FB      : T1DIV = $00FB
T2              = $00FC      : T2DIV = $00FC

; TIMER UPCOUNTER
; CN0         .... cccc                r
; CN1         .... cccc                r
; CN2         .... cccc                r
;   c - counter value
; 4 bit upcounters of the corresponding timers.
; Clears on read.
CN0             = $00FD      : T0OUT = $00FD
CN1             = $00FE      : T1OUT = $00FE
CN2             = $00FF      : T2OUT = $00FF

;===================================================================================================
;===================================================================================================
; DSP REGISTERS
;===================================================================================================
;===================================================================================================

; LEFT AND RIGHT CHANNEL VOLUME
; VxVOLL      llll llll
; VxVOLR      rrrr rrrr
;   l - left volume
;   r - right volume
VxVOLL          = $00
V0VOLL          = $00
V1VOLL          = $10
V2VOLL          = $20
V3VOLL          = $30
V4VOLL          = $40
V5VOLL          = $50
V6VOLL          = $60
V7VOLL          = $70

VxVOLR          = $01
V0VOLR          = $01
V1VOLR          = $11
V2VOLR          = $21
V3VOLR          = $31
V4VOLR          = $41
V5VOLR          = $51
V6VOLR          = $61
V7VOLR          = $71

; CHANNEL PITCH HEIGHT
; VxPITCHL    pppp pppp
; VxPITCHH    ..pp pppp
;   p - pitch multiplier
VxPITCHL        = $02
V0PITCHL        = $02
V1PITCHL        = $12
V2PITCHL        = $22
V3PITCHL        = $32
V4PITCHL        = $42
V5PITCHL        = $52
V6PITCHL        = $62
V7PITCHL        = $72

VxPITCHH        = $03
V0PITCHH        = $03
V1PITCHH        = $13
V2PITCHH        = $23
V3PITCHH        = $33
V4PITCHH        = $43
V5PITCHH        = $53
V6PITCHH        = $63
V7PITCHH        = $73

; CHANNEL SAMPLE SOURCE NUMBER
; VxSRCN      ssss ssss
;   s - sample number
; Takes effect when the voice is keyed on or the BRR loops.
VxSRCN          = $04
V0SRCN          = $04
V1SRCN          = $14
V2SRCN          = $24
V3SRCN          = $34
V4SRCN          = $44
V5SRCN          = $54
V6SRCN          = $64
V7SRCN          = $74

; CHANNEL ADSR ENVELOPE CONTROL
; VxADSR1     gddd aaaa
; VxADSR2     lllr rrrr
;   g - gain select (0: use VxGAIN | 1: use VxADSR)
;   a - attack rate, time from 0 to 1
;       00 - 4100 ms
;       01 - 2600 ms
;       02 - 1500 ms
;       03 - 1000 ms
;       04 -  640 ms
;       05 -  380 ms
;       06 -  260 ms
;       07 -  160 ms
;       08 -   96 ms
;       09 -   64 ms
;       0A -   40 ms
;       0B -   24 ms
;       0C -   16 ms
;       0D -   10 ms
;       0E -    9 ms
;       0F -    0 ms
;   d - decay rate, time from 1 to l (SL)
;       00 - 1200 ms
;       01 -  740 ms
;       02 -  440 ms
;       03 -  290 ms
;       04 -  180 ms
;       05 -  110 ms
;       06 -   74 ms
;       07 -   37 ms
;   l - sustain ratio
;       00 -  1/8
;       01 -  2/8
;       02 -  3/8
;       03 -  4/8
;       04 -  5/8
;       05 -  6/8
;       06 -  7/8
;       07 -  8/8
;   r - sustain, time from 0 to 1
;       00 -     ∞
;       01 - 38000 ms
;       02 - 28000 ms
;       03 - 24000 ms
;       04 - 19000 ms
;       05 - 14000 ms
;       06 - 12000 ms
;       07 -  9400 ms
;       08 -  7100 ms
;       09 -  5900 ms
;       0A -  4700 ms
;       0B -  3500 ms
;       0C -  2900 ms
;       0D -  2400 ms
;       0E -  1800 ms
;       0F -  1500 ms
;       10 -  1200 ms
;       11 -   880 ms
;       12 -   740 ms
;       13 -   590 ms
;       14 -   440 ms
;       15 -   370 ms
;       16 -   290 ms
;       17 -   220 ms
;       18 -   180 ms
;       19 -   150 ms
;       1A -   110 ms
;       1B -    92 ms
;       1C -    74 ms
;       1D -    55 ms
;       1E -    37 ms
;       1F -    18 ms
VxADSR1         = $05
V0ADSR1         = $05
V1ADSR1         = $15
V2ADSR1         = $25
V3ADSR1         = $35
V4ADSR1         = $45
V5ADSR1         = $55
V6ADSR1         = $65
V7ADSR1         = $75

VxADSR2         = $06
V0ADSR2         = $06
V1ADSR2         = $16
V2ADSR2         = $26
V3ADSR2         = $36
V4ADSR2         = $46
V5ADSR2         = $56
V6ADSR2         = $66
V7ADSR2         = $76

; CHANNEL GAIN PARAMETERS
; VxGAIN      dppv vvvv
;   d - direct designation (0: direct | 1: parameterized)
;   p - designation mode when d=1
;       00 - decrease, linear (fixed subtraction of 1/64)
;       01 - decrease, exponential (fixed multiplication of 255/256)
;       10 - increase, linear (fixed addition of 1/64)
;       11 - increase, bent line (fixed addition of 1/64 for <75; 1/256 for ≥75)
;   v - gain value (direct), or parameters
;            -Lin (00)      -Exp (01)      +Lin (10)      +Bent (11)
;       00 -    ∞               ∞             ∞               ∞
;       01 - 4100 ms        38000 ms        4100 ms        7200   ms
;       02 - 3100 ms        28000 ms        3100 ms        5400   ms
;       03 - 2600 ms        24000 ms        2600 ms        4600   ms
;       04 - 2000 ms        19000 ms        2000 ms        3500   ms
;       05 - 1500 ms        14000 ms        1500 ms        2600   ms
;       06 - 1300 ms        12000 ms        1300 ms        2300   ms
;       07 - 1000 ms         9400 ms        1000 ms        1800   ms
;       08 -  770 ms         7100 ms         770 ms        1300   ms
;       09 -  640 ms         5900 ms         640 ms        1100   ms
;       0A -  510 ms         4700 ms         510 ms         900   ms
;       0B -  380 ms         3500 ms         380 ms         670   ms
;       0C -  320 ms         2900 ms         320 ms         560   ms
;       0D -  260 ms         2400 ms         260 ms         450   ms
;       0E -  190 ms         1800 ms         190 ms         340   ms
;       0F -  160 ms         1500 ms         160 ms         280   ms
;       10 -  139 ms         1200 ms         139 ms         220   ms
;       11 -   96 ms          880 ms          96 ms         170   ms
;       12 -   80 ms          740 ms          80 ms         140   ms
;       13 -   64 ms          590 ms          64 ms         110   ms
;       14 -   48 ms          440 ms          48 ms          84   ms
;       15 -   40 ms          370 ms          40 ms          70   ms
;       16 -   32 ms          290 ms          32 ms          56   ms
;       17 -   24 ms          220 ms          24 ms          42   ms
;       18 -   20 ms          180 ms          20 ms          35   ms
;       19 -   16 ms          150 ms          16 ms          28   ms
;       1A -   12 ms          110 ms          12 ms          21   ms
;       1B -   10 ms           92 ms          10 ms          18   ms
;       1C -    8 ms           74 ms           8 ms          14   ms
;       1D -    6 ms           55 ms           6 ms          11   ms
;       1E -    4 ms           37 ms           4 ms           7   ms
;       1F -    2 ms           18 ms           2 ms           3.5 ms
VxGAIN          = $07
V0GAIN          = $07
V1GAIN          = $17
V2GAIN          = $27
V3GAIN          = $37
V4GAIN          = $47
V5GAIN          = $57
V6GAIN          = $67
V7GAIN          = $77

; CHANNEL ENVELOPE VOLUME
; VxENVX      .eee eeee
;   e - highest 7 bits of 11 bit envelope volume
; Technically writeable, but to no real effect.
VxENVX          = $08
V0ENVX          = $08
V1ENVX          = $18
V2ENVX          = $28
V3ENVX          = $38
V4ENVX          = $48
V5ENVX          = $58
V6ENVX          = $68
V7ENVX          = $78

; CHANNEL PRE-VOLUME ENVELOPE MULTIPLICATION
; VxOUTX      oooo oooo
;   o - upper byte of the current sample output, after envelope but before VxVOL.
; Technically writeable, but to no real effect.
VxOUTX          = $09
V0OUTX          = $09
V1OUTX          = $19
V2OUTX          = $29
V3OUTX          = $39
V4OUTX          = $49
V5OUTX          = $59
V6OUTX          = $69
V7OUTX          = $79

; ECHO FILTER COEFFICIENTS
; FIRn        cccc cccc
;   c - coefficient
; 8-tap filter coefficient for echo output.
; The value $80 should never be used
; The sum of positive values of FIR0-FIR6 should not overflow past +7F
; The sum of negative values of FIR0-FIR6 should not overflow past -7F
; Official examples:
;   FF 08 17 24 24 17 08 FF - low pass on echo (apparently bugged)
;   7F 00 00 00 00 00 00 00 - same tone color
FIR0            = $0F
FIR1            = $1F
FIR2            = $2F
FIR3            = $3F
FIR4            = $4F
FIR5            = $5F
FIR6            = $6F
FIR7            = $7F

;---------------------------------------------------------------------------------------------------

; LEFT AND RIGHT MAIN VOLUME
; MVOLL       llll llll
; MVOLR       rrrr rrrr
;   l - left volume
;   r - right volume
; Negative values invert the phase of the sample output.
; The value $80 causes a multiplication overflow.
MVOLL           = $0C
MVOLR           = $1C

; LEFT AND RIGHT ECHO VOLUME
; EVOLL       llll llll
; EVOLR       rrrr rrrr
;   l - left volume
;   r - right volume
EVOLL           = $2C
EVOLR           = $3C

; ECHO FEEDBACK
; $0D rw
; Echo feedback level. Signed 8-bit value.
EFB             = $0D

; CHANNEL KEY ON AND KEY OFF DESIGNATION
; KON         hgfe dcba
; KOFF        hgfe dcba
;   a - Key on/off channel 0
;   b - Key on/off channel 1
;   c - Key on/off channel 2
;   d - Key on/off channel 3
;   e - Key on/off channel 4
;   f - Key on/off channel 5
;   g - Key on/off channel 6
;   h - Key on/off channel 7
; 62.5μs should be allowed after writing KON before writing KOFF
KON             = $4C
KOFF            = $5C

; CHANNEL PITCH MODULATION DESIGNATION
; $2D rw
; PMON        hgfe dcb.
;   b - Enable on channel 1
;   c - Enable on channel 2
;   d - Enable on channel 3
;   e - Enable on channel 4
;   f - Enable on channel 5
;   g - Enable on channel 6
;   h - Enable on channel 7
; Produces a modulated frequency sweep on channel N from channel N-1.
PMON            = $2D

; CHANNEL NOISE SOURCE USE DESIGNATION
; NON         hgfe dcba
;   a - Noise enable on channel 0
;   b - Noise enable on channel 1
;   c - Noise enable on channel 2
;   d - Noise enable on channel 3
;   e - Noise enable on channel 4
;   f - Noise enable on channel 5
;   g - Noise enable on channel 6
;   h - Noise enable on channel 7
; Channel output corresponds to the global noise clock instead of the SRCN.
; SRCN is still used for looping / stopping.
NON             = $3D

; CHANNEL ECHO DESIGNATION
; EON         hgfe dcba
;   a - Echo enable on channel 0
;   b - Echo enable on channel 1
;   c - Echo enable on channel 2
;   d - Echo enable on channel 3
;   e - Echo enable on channel 4
;   f - Echo enable on channel 5
;   g - Echo enable on channel 6
;   h - Echo enable on channel 7
EON             = $4D

; RESET, MUTE, ECHO CONTROL, AND NOISE CLOCK
; FLG         rmen nnnn
;    r - reset, pauses key on and mutes every channel
;    m - mute, mutes every channel
;    e - allow writes to echo buffer (0: enabled | 1: disabled)
;    n - noise frequency clock
;        00 -     0 Hz
;        01 -    16 Hz
;        02 -    21 Hz
;        03 -    25 Hz
;        04 -    31 Hz
;        05 -    42 Hz
;        06 -    50 Hz
;        07 -    63 Hz
;        08 -    83 Hz
;        09 -   100 Hz
;        0A -   125 Hz
;        0B -   167 Hz
;        0C -   200 Hz
;        0D -   250 Hz
;        0E -   333 Hz
;        0F -   400 Hz
;        10 -   500 Hz
;        11 -   667 Hz
;        12 -   800 Hz
;        13 -  1000 Hz
;        14 -  1300 Hz
;        15 -  1600 Hz
;        16 -  2000 Hz
;        17 -  2700 Hz
;        18 -  3200 Hz
;        19 -  4000 Hz
;        1A -  5300 Hz
;        1B -  6400 Hz
;        1C -  8000 Hz
;        1D - 10700 Hz
;        1E - 16000 Hz
;        1F - 32000 Hz
FLG             = $6C

; CHANNEL SOURCE BLOCK END FLAG
; ENDX        hgfe dcba
;   a - Source end on channel 0
;   b - Source end on channel 1
;   c - Source end on channel 2
;   d - Source end on channel 3
;   e - Source end on channel 4
;   f - Source end on channel 5
;   g - Source end on channel 6
;   h - Source end on channel 7
; Flags BRR decode of blocks with source end code.
; Writing to this register resets all voices.
ENDX            = $7C

; SAMPLE SOURCE DIRECTORY PAGE
; DIR         hhhh hhhh
;   h - high byte of SRCN directory start $hh00
DIR             = $5D

; ECHO BUFFER START ADDRESS PAGE
; ESA         hhhh hhhh
;   h - high byte of echo buffer start $hh00
ESA             = $6D

; ECHO DELAY
; EDL         .... dddd
;   d - delay time; buffer size is $0800 * d
EDL             = $7D

;===================================================================================================

;===================================================================================================
; KEY
;===================================================================================================
; w - writeable
; r - readable
; . - unused bit

;===================================================================================================
;===================================================================================================
; SPC700 REGISTERS
;===================================================================================================
;===================================================================================================

; SPC MEMORY CONTROL AND TIMER ENABLE
; $00F0 w
; iirr dxwt
;   i - IO/ROM access wait state
;   r - RAM access wait state
;     00 - 0 cycles (default)
;     01 - 1 cycle
;     10 - 4 cycles
;     11 - 9 cycles
;   d - timer disable (0: disabled | 1: not disabled)
;   x - Unknown. Apparently crashes the processor.
;   w - RAM/DSP write enable (0: disabled; read-only | 1: enabled)
;   t - timer enable (0: enabled | 1: not enabled)
; The initial value for this register is 0x0A (....d.w.)
TEST = $00F0

; SPC IPL BANKING AND COMMUNICATION / TIMER RESET
; $00F1 w
; r.pq .bca
;   r - controls banking at $FFC0-$FFFF (0: RAM | 1: IPL ROM)
;   p - reset input ports 2 and 3 (0: no change | 1: reset)
;   q - reset input ports 0 and 1 (0: no change | 1: reset)
;   c - timer 2 (0: disabled | 1: reset and enable)
;   b - timer 1 (0: disabled | 1: reset and enable)
;   a - timer 0 (0: disabled | 1: reset and enable)
; The initial value for this register is 0xB0 (r.pq....)
CONTROL = $F1

; DSP ADDRESS ACCESS
; $00F2 rw
; DSP register address access
DSPADDR = $F2

; DSP DATA READ/WRITE
; $00F3 rw
; Read/write data from registed selected in DSPADDR
DSPDATA = $F3

; SNES CPU COMMUNICATION PORTS
; $00F4 rw
; $00F5 rw
; $00F6 rw
; $00F7 rw
; CPU input/output ports
; Reads are data sent from the CPU on the corresponding APUIOX port
; Writes are sent to those same corresponding ports on the CPU.
; The initial value for these registers is 0x00
CPUIO0 = $F4
CPUIO1 = $F5
CPUIO2 = $F6
CPUIO3 = $F7

; DISCONNECTED AUXILIARY PORTS
; $00F8 rw
; $00F9 rw
; Auxiliary ports not connected anywhere.
AUXIO4 = $F8
AUXIO5 = $F9

; TIMER DIVISOR VALUE
; $00FA r
; $00FB r
; $00FC r
; Divider values for timers 0, 1, 2.
; Takes the clock source and divides by the given value.
; 0x00 is interpreted as a divisor of 0x100.
; Timers 0 and 1 are 8kHz; Timer 2 is 64kHz
T0DIV = $FA
T1DIV = $FB
T2DIV = $FC
T0 = $FA
T1 = $FB
T2 = $FC

; TIMER UPCOUNTER
; $00FD r
; $00FE r
; $00FF r
; 4 bit upcounters of the corresponding timers.
; On read, these values are cleared.
; .... cccc
T0OUT = $FD
T1OUT = $FE
T2OUT = $FF
CN0 = $FD
CN1 = $FE
CN2 = $FF

;===================================================================================================
;===================================================================================================
; DSP REGISTERS
;===================================================================================================
;===================================================================================================

; LEFT AND RIGHT CHANNEL VOLUME
; $x0 rw
; $x1 rw
; Left and right volume levels for channel X
;  VxVOLL    VxVOLR
; llllllll  rrrrrrrr
VxVOLL = $00
V0VOLL = $00
V1VOLL = $10
V2VOLL = $20
V3VOLL = $30
V4VOLL = $40
V5VOLL = $50
V6VOLL = $60
V7VOLL = $70

VxVOLR = $01
V0VOLR = $01
V1VOLR = $11
V2VOLR = $21
V3VOLR = $31
V4VOLR = $41
V5VOLR = $51
V6VOLR = $61
V7VOLR = $71

; CHANNEL PITCH HEIGHT
; $x2 rw
; $x3 rw
; 14-bit sample rate of BRR output on channel. 0x1000 = 32000 Hz sampling.
; Has no effect on noise frequency.
;   VxPH     VxPL
; ..pppppp pppppppp
VxPITCHL = $02
V0PITCHL = $02
V1PITCHL = $12
V2PITCHL = $22
V3PITCHL = $32
V4PITCHL = $42
V5PITCHL = $52
V6PITCHL = $62
V7PITCHL = $72

VxPITCHH = $03
V0PITCHH = $03
V1PITCHH = $13
V2PITCHH = $23
V3PITCHH = $33
V4PITCHH = $43
V5PITCHH = $53
V6PITCHH = $63
V7PITCHH = $73

; CHANNEL SAMPLE SOURCE NUMBER
; $x4 rw
; BRR sample source to use on channel.
; Takes effect when the voice is keyed on or the BRR loops.
VxSRCN = $04
V0SRCN = $04
V1SRCN = $14
V2SRCN = $24
V3SRCN = $34
V4SRCN = $44
V5SRCN = $54
V6SRCN = $64
V7SRCN = $74

; CHANNEL ADSR ENVELOPE CONTROL
; $x5 rw
; $x6 rw
;  VxADSR1    VxADSR2
; gddd aaaa  lllr rrrr
;   g - gain select (0: use VxGAIN | 1: use VxADSR)
;   a - attack rate, time from 0 to 1
;      0x00 - 4100 ms
;      0x01 - 2600 ms
;      0x02 - 1500 ms
;      0x03 - 1000 ms
;      0x04 -  640 ms
;      0x05 -  380 ms
;      0x06 -  260 ms
;      0x07 -  160 ms
;      0x08 -   96 ms
;      0x09 -   64 ms
;      0x0A -   40 ms
;      0x0B -   24 ms
;      0x0C -   16 ms
;      0x0D -   10 ms
;      0x0E -    9 ms
;      0x0F -    0 ms
;   d - decay rate, time from 1 to l (SL)
;      0x00 - 1200 ms
;      0x01 -  740 ms
;      0x02 -  440 ms
;      0x03 -  290 ms
;      0x04 -  180 ms
;      0x05 -  110 ms
;      0x06 -   74 ms
;      0x07 -   37 ms
;   l - sustain ratio
;      0x00 -  1/8
;      0x01 -  2/8
;      0x02 -  3/8
;      0x03 -  4/8
;      0x04 -  5/8
;      0x05 -  6/8
;      0x06 -  7/8
;      0x07 -  8/8
;   r - sustain, time from 0 to 1
;      0x00 -     ∞
;      0x01 - 38000 ms
;      0x02 - 28000 ms
;      0x03 - 24000 ms
;      0x04 - 19000 ms
;      0x05 - 14000 ms
;      0x06 - 12000 ms
;      0x07 -  9400 ms
;      0x08 -  7100 ms
;      0x09 -  5900 ms
;      0x0A -  4700 ms
;      0x0B -  3500 ms
;      0x0C -  2900 ms
;      0x0D -  2400 ms
;      0x0E -  1800 ms
;      0x0F -  1500 ms
;      0x10 -  1200 ms
;      0x11 -   880 ms
;      0x12 -   740 ms
;      0x13 -   590 ms
;      0x14 -   440 ms
;      0x15 -   370 ms
;      0x16 -   290 ms
;      0x17 -   220 ms
;      0x18 -   180 ms
;      0x19 -   150 ms
;      0x1A -   110 ms
;      0x1B -    92 ms
;      0x1C -    74 ms
;      0x1D -    55 ms
;      0x1E -    37 ms
;      0x1F -    18 ms
VxADSR1 = $05
V0ADSR1 = $05
V1ADSR1 = $15
V2ADSR1 = $25
V3ADSR1 = $35
V4ADSR1 = $45
V5ADSR1 = $55
V6ADSR1 = $65
V7ADSR1 = $75

VxADSR2 = $06
V0ADSR2 = $06
V1ADSR2 = $16
V2ADSR2 = $26
V3ADSR2 = $36
V4ADSR2 = $46
V5ADSR2 = $56
V6ADSR2 = $66
V7ADSR2 = $76

; CHANNEL GAIN PARAMETERS
; $x7 rw
; Gain parameters when gain mode is on.
; dppv vvvv
;   d - direct designation (0: direct | 1: parameterized)
;   p - designation mode when d=1
;      0x00 - decrease, linear (fixed subtraction of 1/64)
;      0x01 - decrease, exponential (fixed multiplication of 255/256)
;      0x10 - increase, linear (fixed addition of 1/64)
;      0x11 - increase, bent line (fixed addition of 1/64 for <75; 1/256 for ≥75)
;   v - gain value (direct), or parameters
;             -Lin (00)      -Exp (01)      +Lin (10)      +Bent (11)
;      0x00 -    ∞               ∞             ∞               ∞
;      0x01 - 4100 ms        38000 ms        4100 ms        7200   ms
;      0x02 - 3100 ms        28000 ms        3100 ms        5400   ms
;      0x03 - 2600 ms        24000 ms        2600 ms        4600   ms
;      0x04 - 2000 ms        19000 ms        2000 ms        3500   ms
;      0x05 - 1500 ms        14000 ms        1500 ms        2600   ms
;      0x06 - 1300 ms        12000 ms        1300 ms        2300   ms
;      0x07 - 1000 ms         9400 ms        1000 ms        1800   ms
;      0x08 -  770 ms         7100 ms         770 ms        1300   ms
;      0x09 -  640 ms         5900 ms         640 ms        1100   ms
;      0x0A -  510 ms         4700 ms         510 ms         900   ms
;      0x0B -  380 ms         3500 ms         380 ms         670   ms
;      0x0C -  320 ms         2900 ms         320 ms         560   ms
;      0x0D -  260 ms         2400 ms         260 ms         450   ms
;      0x0E -  190 ms         1800 ms         190 ms         340   ms
;      0x0F -  160 ms         1500 ms         160 ms         280   ms
;      0x10 -  139 ms         1200 ms         139 ms         220   ms
;      0x11 -   96 ms          880 ms          96 ms         170   ms
;      0x12 -   80 ms          740 ms          80 ms         140   ms
;      0x13 -   64 ms          590 ms          64 ms         110   ms
;      0x14 -   48 ms          440 ms          48 ms          84   ms
;      0x15 -   40 ms          370 ms          40 ms          70   ms
;      0x16 -   32 ms          290 ms          32 ms          56   ms
;      0x17 -   24 ms          220 ms          24 ms          42   ms
;      0x18 -   20 ms          180 ms          20 ms          35   ms
;      0x19 -   16 ms          150 ms          16 ms          28   ms
;      0x1A -   12 ms          110 ms          12 ms          21   ms
;      0x1B -   10 ms           92 ms          10 ms          18   ms
;      0x1C -    8 ms           74 ms           8 ms          14   ms
;      0x1D -    6 ms           55 ms           6 ms          11   ms
;      0x1E -    4 ms           37 ms           4 ms           7   ms
;      0x1F -    2 ms           18 ms           2 ms           3.5 ms
VxGAIN = $07
V0GAIN = $07
V1GAIN = $17
V2GAIN = $27
V3GAIN = $37
V4GAIN = $47
V5GAIN = $57
V6GAIN = $67
V7GAIN = $77

; CHANNEL ENVELOPE VOLUME
; $x8 rw
; Technically writeable, but to no real effect.
; .eee eeee
;   e - top 7 bits of 11 bit envelope volume
VxENVX = $08
V0ENVX = $08
V1ENVX = $18
V2ENVX = $28
V3ENVX = $38
V4ENVX = $48
V5ENVX = $58
V6ENVX = $68
V7ENVX = $78

; CHANNEL PRE-VOLUME ENVELOPE MULTIPLICATION
; $x9 rw
; Technically writeable, but to no real effect.
; Upper byte of the current sample output, after envelope but before VxVOL.
VxOUTX = $09
V0OUTX = $09
V1OUTX = $19
V2OUTX = $29
V3OUTX = $39
V4OUTX = $49
V5OUTX = $59
V6OUTX = $69
V7OUTX = $79

; ECHO FILTER COEFFICIENTS
; $xF rw
; 8-tap filter coefficient for echo output.
; 0x80 should never be used
; The sum of positive values of FIR0-FIR6 should not overflow past +7F
; The sum of negative values of FIR0-FIR6 should not overflow past -7F
; Official examples:
;   FF 08 17 24 24 17 08 FF - low pass on echo (apparently bugged)
;   7F 00 00 00 00 00 00 00 - same tone color
FIR = $0F
FIR0 = $0F
FIR1 = $1F
FIR2 = $2F
FIR3 = $3F
FIR4 = $4F
FIR5 = $5F
FIR6 = $6F
FIR7 = $7F

;---------------------------------------------------------------------------------------------------

; LEFT AND RIGHT MAIN VOLUME
; $0C rw
; $1C rw
; Negative values invert the phase of the sample output.
; 0x80 causes a multiplicaiton overflow.
MVOLL = $0C
MVOLR = $1C

; LEFT AND RIGHT ECHO VOLUME
; $2C rw
; $3C rw
; Left and right echo
EVOLL = $2C
EVOLR = $3C

; ECHO FEEDBACK
; $0D rw
; Echo feedback level. Signed 8-bit value.
EFB = $0D

; CHANNEL KEY ON AND KEY OFF DESIGNATION
; $4C rw
; $5C rw
; 62.5μs should be allowed after writing KON before writing KOFF
; hgfe dcba
;   a - Key on/off channel 0
;   b - Key on/off channel 1
;   c - Key on/off channel 2
;   d - Key on/off channel 3
;   e - Key on/off channel 4
;   f - Key on/off channel 5
;   g - Key on/off channel 6
;   h - Key on/off channel 7
KON = $4C ; not the anime
KOFF = $5C

; CHANNEL PITCH MODULATION DESIGNATION
; $2D rw
; Produces a modulated frequency sweep on channel N from channel N-1.
; hgfe dcb.
;   b - Enable on channel 1
;   c - Enable on channel 2
;   d - Enable on channel 3
;   e - Enable on channel 4
;   f - Enable on channel 5
;   g - Enable on channel 6
;   h - Enable on channel 7
PMON = $2D

; CHANNEL NOISE SOURCE USE DESIGNATION
; $3D rw
; Channel output corresponds to the global noise clock instead of the SRCN.
; SRCN is still used for looping / stopping.
; hgfe dcba
;   a - Noise enable on channel 0
;   b - Noise enable on channel 1
;   c - Noise enable on channel 2
;   d - Noise enable on channel 3
;   e - Noise enable on channel 4
;   f - Noise enable on channel 5
;   g - Noise enable on channel 6
;   h - Noise enable on channel 7
NON = $3D

; CHANNEL ECHO DESIGNATION
; $4D rw
; Echo enable flags.
; hgfe dcba
;   a - Echo enable on channel 0
;   b - Echo enable on channel 1
;   c - Echo enable on channel 2
;   d - Echo enable on channel 3
;   e - Echo enable on channel 4
;   f - Echo enable on channel 5
;   g - Echo enable on channel 6
;   h - Echo enable on channel 7
EON = $4D

; RESET, MUTE, ECHO CONTROL, AND NOISE CLOCK
; $6C rw
; General control
; rmen nnnn
;    r - reset, pauses key on and mutes every channel
;    m - mute, mutes every channel
;    e - allow writes to echo buffer (0: enabled | 1: disabled)
;    n - noise frequency clock
;      0x00 -     0 Hz
;      0x01 -    16 Hz
;      0x02 -    21 Hz
;      0x03 -    25 Hz
;      0x04 -    31 Hz
;      0x05 -    42 Hz
;      0x06 -    50 Hz
;      0x07 -    63 Hz
;      0x08 -    83 Hz
;      0x09 -   100 Hz
;      0x0A -   125 Hz
;      0x0B -   167 Hz
;      0x0C -   200 Hz
;      0x0D -   250 Hz
;      0x0E -   333 Hz
;      0x0F -   400 Hz
;      0x10 -   500 Hz
;      0x11 -   667 Hz
;      0x12 -   800 Hz
;      0x13 -  1000 Hz
;      0x14 -  1300 Hz
;      0x15 -  1600 Hz
;      0x16 -  2000 Hz
;      0x17 -  2700 Hz
;      0x18 -  3200 Hz
;      0x19 -  4000 Hz
;      0x1A -  5300 Hz
;      0x1B -  6400 Hz
;      0x1C -  8000 Hz
;      0x1D - 10700 Hz
;      0x1E - 16000 Hz
;      0x1F - 32000 Hz
FLG = $6C

; CHANNEL SOURCE BLOCK END FLAG
; $7C r
; Flags BRR decode of blocks with source end code.
; Writing to this register resets all voices.
; hgfe dcba
;   a - Source end on channel 0
;   b - Source end on channel 1
;   c - Source end on channel 2
;   d - Source end on channel 3
;   e - Source end on channel 4
;   f - Source end on channel 5
;   g - Source end on channel 6
;   h - Source end on channel 7
ENDX = $7C

; SAMPLE SOURCE DIRECTORY PAGE
; $5D rw
; SRCN directory start address page.
DIR = $5D

; ECHO BUFFER START ADDRESS PAGE
; $6D rw
; Echo buffer start address page.
ESA = $6D

; ECHO DELAY
; $7D rw
; Echo delay time in intervals of 16ms.
; .... dddd
;   d - delay time
EDL = $7D

;===================================================================================================

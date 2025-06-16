;===================================================================================================
; KEY
;===================================================================================================
; w - writeable
; r - readable
; 1 - single access
; 2 - double access
;     for double write registers, the first write (low byte) is listed first
; . - unused bit (open bus)
;===================================================================================================

;===================================================================================================
;===================================================================================================
; PPU REGISTERS
;---------------------------------------------------------------------------------------------------
; f - accessible during fblank
; v - accessible during vblank
; h - accessible during hblank
; a - accessible anytime
;===================================================================================================
;===================================================================================================

; SCREEN SETTINGS
; INIDISP     f... bbbb                w1 fvha
;   f - force blank (0: disabled | 1: enabled)
;   b - screen brightness (0..F)
INIDISP         = $002100

; OAM CHARACTER ADDRESSES AND OBJECT SIZE
; OBSEL       sssn nbbb                w1 fv
;   s - object sizes
;      sss    small    large
;      000     8x8     16x16
;      001     8x8     32x32
;      010     8x8     64x64
;      011    16x16    32x32
;      100    16x16    64x64
;      101    32x32    64x64
;      110    16x32    32x64
;      111    16x32    32x32
;   n - space between object namespaces, $1000 word steps
;   b - obj tile address - $2000 word steps
OBSEL           = $002101

; OAM ADDRESS ACCESS
; OAMADDL     aaaa aaaa                w1 fv
; OAMADDH     p... ...a                w1 fv
;   a - OAM address
;   p - object priority cycle (0: OBJ0 highest priority | 1: priority cycles)
OAMADDL         = $002102    : OAMADDR = $002102
OAMADDH         = $002103

; OAM DATA WRITE
; OAMDATA     oooo oooo                w1 fv
;   o - OAM data
OAMDATA         = $002104

; BACKGROUND MODE AND CHARACTER SIZE
; BGMODE      dcba pmmm                w1 fvh
;   a - BG1 tile size       (0: 8x8    | 1: 16x16)
;   b - BG2 tile size       (0: 8x8    | 1: 16x16)
;   c - BG3 tile size       (0: 8x8    | 1: 16x16)
;   d - BG4 tile size       (0: 8x8    | 1: 16x16)
;   p - Mode 1 BG3 priority (0: normal | 1: highest)
;   m - BG mode
;             BG1    BG2    BG3    BG4   Features
;        0 - 2bpp   2bpp   2bpp   2bpp   None
;        1 - 4bpp   4bpp   2bpp   ----   None
;        2 - 4bpp   4bpp   offs   ----   Offset per tile
;        3 - 8bpp   4bpp   ----   ----   None
;        4 - 8bpp   2bpp   offs   ----   Offset per tile
;        5 - 4bpp   2bpp   ----   ----   Hires
;        6 - 4bpp   ----   offs   ----   Hires / Offset per tile
;        7 - 8bpp   EXT    ----   ----   Affine transformation
BGMODE          = $002105

; MOSAIC SIZE AND DESIGNATION
; MOSAIC      ssss dcba                w1 fvh
;   a - mosaic to BG1 (0: disabled | 1: enabled)
;   b - mosaic to BG2 (0: disabled | 1: enabled)
;   c - mosaic to BG3 (0: disabled | 1: enabled)
;   d - mosaic to BG4 (0: disabled | 1: enabled)
;   s - pixelation size
MOSAIC          = $002106

; BACKGROUND TILEMAP ADDRESS AND TILEMAP SIZE
; BG1SC       aaaa aavh                w1 fv
; BG2SC       aaaa aavh                w1 fv
; BG3SC       aaaa aavh                w1 fv
; BG4SC       aaaa aavh                w1 fv
;   a - tilemap address in $400 word steps
;   v - tilemap height (0: 32 tiles | 1: 64 tiles)
;   h - tilemap width  (0: 32 tiles | 1: 64 tiles)
BG1SC           = $002107
BG2SC           = $002108
BG3SC           = $002109
BG4SC           = $00210A

; BACKGROUND CHARACTER ADDRESS
; BG12NBA     bbbb aaaa                w1 fv
; BG34NBA     dddd cccc                w1 fv
;   a - base address for BG1 tiles in $1000 word steps
;   b - base address for BG2 tiles in $1000 word steps
;   c - base address for BG3 tiles in $1000 word steps
;   d - base address for BG4 tiles in $1000 word steps
;       0   0000    $0000
;       1   0001    $2000
;       2   0010    $4000
;       etc...
BG12NBA         = $00210B
BG34NBA         = $00210C

; BACKGROUND HORIZONTAL AND VERTICAL SCROLL
; BG1HOFS     oooo oooo   ...m mmoo    w2 fvh
; BG1VOFS     oooo oooo   ...m mmoo    w2 fvh
; BG2HOFS     oooo oooo   ...m mmoo    w2 fvh
; BG2VOFS     oooo oooo   ...m mmoo    w2 fvh
; BG3HOFS     oooo oooo   ...m mmoo    w2 fvh
; BG3VOFS     oooo oooo   ...m mmoo    w2 fvh
; BG4HOFS     oooo oooo   ...m mmoo    w2 fvh
; BG4VOFS     oooo oooo   ...m mmoo    w2 fvh
;   o  - offset (modes 0-6)
;   mo - offset (mode 7)
BG1HOFS         = $00210D    : M7HOFS = $00210D
BG1VOFS         = $00210E    : M7VOFS = $00210E
BG2HOFS         = $00210F
BG2VOFS         = $002110
BG3HOFS         = $002111
BG3VOFS         = $002112
BG4HOFS         = $002113
BG4VOFS         = $002114

; VRAM ADDRESS INCREMENT AND REMAPPING
; VMAIN       v... mmii                 w1 fv
;   v - increment address after writes to (0: $2118 | 1: $2119)
;   m - remap addressing
;       00 - none
;       01 - aaaaaaaabbbccccc => aaaaaaaacccccbbb
;       10 - aaaaaaabbbcccccc => aaaaaaaccccccbbb
;       11 - aaaaaabbbccccccc => aaaaaacccccccbbb
;   i - address increment
;       00 - increment by 1
;       01 - increment by 32
;       10 - increment by 128
;       11 - increment by 128
VMAIN           = $002115

; VRAM ADDRESS ACCESS
; VMADDL      llll llll                w1 fv
; VMADDH      hhhh hhhh                w1 fv
;   l - VRAM address low byte
;   h - VRAM address high byte
VMADDL          = $002116    : VMADDR = $002116
VMADDH          = $002117

; VRAM WRITE DATA
; VMDATAL     llll llll                w1 fv
; VMDATAH     hhhh hhhh                w1 fv
;   l - VRAM data low byte
;   h - VRAM data high byte
VMDATAL         = $002118    : VMDATA = $002118
VMDATAH         = $002119

; MODE 7 SETTINGS
; M7SEL       we.. ..vh                w1 fv
;   w - tilemap wrapping               (0: wrap        | 1: no wrap)
;   e - empty space filler w/ no wrap  (0: transparent | 1: tile 0)
;   v - mirror tilemap vertically
;   h - mirror tilemap horizontally
M7SEL           = $00211A

; MODE 7 TRANSFORMATION PARAMETERS
; M7A         vvvv vvvv   vvvv vvvv    w2 fvh
; M7B         vvvv vvvv   vvvv vvvv    w2 fvh
; M7C         vvvv vvvv   vvvv vvvv    w2 fvh
; M7D         vvvv vvvv   vvvv vvvv    w2 fvh
;   v - mode 7 parameter value
;
; SIGNED MULTIPLICATION ARGUMENTS
; M7A         llll llll   hhhh hhhh    w2 fvha
; M7B         mmmm mmmm                w1 fvha
;   l - low byte of 16-bit multiplicand
;   h - high byte of 16-bit multiplicand
;   m - 8-bit multiplicand
; SEE MULTIPLICATION RESULT
; Can be used at any time for signed multiplication in modes 0-6 with 0 delay.
M7A             = $00211B    : PPUMULT16 = $00211B
M7B             = $00211C    : PPUMULT8  = $00211C
M7C             = $00211D
M7D             = $00211E

; MODE 7 CENTER OF TRANSFORMATION COORDINATES
; M7X         cccc cccc   ...c cccc    w2 fvh
; M7Y         cccc cccc   ...c cccc    w2 fvh
;   c - axis center
M7X             = $00211F
M7Y             = $002120

; CGRAM ADDRESS ACCESS
; CGADD       aaaa aaaa                w1 fvh
;   a - CGRAM address
; Writes will reset the parity of both CGDATA and CGREAD.
CGADD           = $002121

; CGRAM WRITE DATA
; CGDATA      gggr rrrr   .bbb bbgg    w2 fvh
;   r - red component of color
;   g - green component of color
;   b - blue component of color
CGDATA          = $002122

; WINDOW MASK SETTINGS
; W12SEL      poji feba                w1 fvh
; W34SEL      poji feba                w1 fvh
; WOBJSEL     poji feba                w1 fvh
;   a - window 1 logic  on BG1/BG3/OBJ (0: normal   | 1: invert)
;   b - window 1 enable on BG1/BG3/OBJ (0: disabled | 1: enabled)
;   e - window 2 logic  on BG1/BG3/OBJ (0: normal   | 1: invert)
;   f - window 2 enable on BG1/BG3/OBJ (0: disabled | 1: enabled)
;   i - window 1 logic  on BG2/BG4/COL (0: normal   | 1: invert)
;   j - window 1 enable on BG2/BG4/COL (0: disabled | 1: enabled)
;   o - window 2 logic  on BG2/BG4/COL (0: normal   | 1: invert)
;   p - window 2 enable on BG2/BG4/COL (0: disabled | 1: enabled)
W12SEL          = $002123
W34SEL          = $002124
WOBJSEL         = $002125

; WINDOW POSITION DESIGNATION
; WH0         llll llll                w1 fvh
; WH1         rrrr rrrr                w1 fvh
; WH2         wwww wwww                w1 fvh
; WH3         eeee eeee                w1 fvh
;   l - window 1 left edge
;   r - window 1 right edge
;   w - window 2 left edge
;   e - window 2 right edge
WH0             = $002126    : W1L = $002126
WH1             = $002127    : W1R = $002127
WH2             = $002128    : W2L = $002128
WH3             = $002129    : W2R = $002129

; WINDOW MASK LOGIC
; WBGLOG      ddcc bbaa                w1 fvh
; WOBJLOG     .... ccoo                w1 fvh
;   a - window mask logic for BG1
;   b - window mask logic for BG2
;   c - window mask logic for BG3
;   d - window mask logic for BG4
;   o - window mask logic for OBJ
;   c - window mask logic for COL
;       00 - W1  OR    W2
;       01 - W1  AND   W2
;       10 - W1  XOR   W2
;       11 - W1  XNOR  W2
; Window mask logic does not apply unless both windows are enabled.
WBGLOG          = $00212A
WOBJLOG         = $00212B

; MAIN AND SUB SCREEN DESIGNATION
; TM          ...o dcba                w1 fvh
; TS          ...o dcba                w1 fvh
;   a - BG1 (0: disabled | 1: enabled)
;   b - BG2 (0: disabled | 1: enabled)
;   c - BG3 (0: disabled | 1: enabled)
;   d - BG4 (0: disabled | 1: enabled)
;   o - OBJ (0: disabled | 1: enabled)
TM              = $00212C
TS              = $00212D

; MAIN AND SUB SCREEN WINDOW MASK DESIGNATION
; TMW         ...o dcba                w1 fvh
; TSW         ...o dcba                w1 fvh
;   a - BG1 window mask (0: disabled | 1: enabled)
;   b - BG2 window mask (0: disabled | 1: enabled)
;   c - BG3 window mask (0: disabled | 1: enabled)
;   d - BG4 window mask (0: disabled | 1: enabled)
;   o - OBJ window mask (0: disabled | 1: enabled)
TMW             = $00212E
TSW             = $00212F

; COLOR MATH SETTINGS
; CGWSEL      bbmm ..sd                w1 fvh
;   b - main screen black (same logic as m)
;   m - disable color math
;       00 - never
;       01 - outside COL window
;       10 - inside COL window
;       11 - always
;   s - color source      (0: fixed color | 1: sub screen)
;   d - direct color mode (0: enabled     | 1: disabled)
CGWSEL          = $002130

; COLOR MATH DESIGNATION AND OPERATION
; CGADSUB     shzo dcba                w1 fvh
;   s - color operation      (0: addition | 1: subtraction)
;   h - half color math      (0: nothing  | 1: final result halved)
;   a - color math on BG1    (0: disabled | 1: enabled)
;   b - color math on BG2    (0: disabled | 1: enabled)
;   c - color math on BG3    (0: disabled | 1: enabled)
;   d - color math on BG4    (0: disabled | 1: enabled)
;   o - color math on OBJ    (0: disabled | 1: enabled)
;   z - color math on CGRAM0 (0: disabled | 1: enabled)
CGADSUB         = $002131

; COLOR MATH FIXED COLOR DATA
; COLDATA     bgrc cccc                 w1 fvh
;   b - set blue  (0: ignore | 1: change)
;   g - set green (0: ignore | 1: change)
;   r - set red   (0: ignore | 1: change)
;   c - fixed color component value
COLDATA         = $002132

; SCREEN INTERLACE AND SYNC SETTINGS
; SETINI      se.. pvoi                w1 fvh
;   s - external sync    (0: normal    | 1: super impose)
;   e - mode 7 EXTBG     (0: disabled  | 1: enabled)
;   p - pseudo h512      (0: disabled  | 1: enabled - shifts sub screen half dot left)
;   v - enable overscan  (0: 224 lines | 1: 239 lines)
;   o - object interlace (0: disabled  | 1: enabled)
;   i - screen interlace (0: disabled  | 1: enabled - interlace to source)
SETINI          = $002133

; MULTIPLICATION RESULT
; MPYL        llll llll                r1 fvh
; MPYM        mmmm mmmm                r1 fvh
; MPYH        hhhh hhhh                r1 fvh
;   l - low byte of product
;   m - middle byte of product
;   h - high byte of product
; SEE SIGNED MULTIPLICATION ARGUMENTS
MPYL            = $002134
MPYM            = $002135
MPYH            = $002136

; SOFTWARE LATCH FOR h/V COUNTER
; SLVH        .... ....                r1 fvha
; Contains no data; just a latch to update OPHCT and OPVCT
SLVH            = $002137

; OAM READ DATA
; OAMRAD      oooo oooo                r1 fv
;   o - OAM data
OAMREAD         = $002138

; VRAM READ DATA
; VMREADL     llll llll                r1 fv
; VMREADH     hhhh hhhh                r1 fv
;   l - low byte of VRAM data read
;   h - high byte of VRAM data read
VMREADL         = $002139
VMREADH         = $00213A

; CGRAM READ DATA
; CGREAD      gggr rrrr   .bbb bbgg    r2 fv
;   r - red component of color
;   g - green component of color
;   b - blue component of color
CGREAD          = $00213B

; HORIZONTAL COUNTER FROM LAST LATCH
; OPHCT       hhhh hhhh   .... ...h    r2 fvha
;   h - horizontal dot position
; Expectaed value is from 0 to 339.
OPHCT           = $00213C

; VERTICAL COUNTER FROM LAST LATCH
; OPVCT       vvvv vvvv   .... ...v    r2 fvha
;   v - vertical scanline position
; Expectaed value is from  0 to 261.
OPVCT           = $00213D

; PPU STATUS AND PPU1 VERSION NUMBER
; STAT77      trm. vvvv                r1 fvha
;   t - OBJ time overflow  (0: okay   | 1: too many pixels on scanline - 8*34=292)
;   r - OBJ range overflow (0: okay   | 1: too many objects on scanline - 32)
;   m - mode               (0: master | 1: slave)
;   v - PPU1 5C77 version
STAT77          = $00213E

; PPU STATUS AND PPU2 VERSION NUMBER
; STAT78      il.p vvvv                r1 fvha
;   i - current interlace field (0: odd       | 1: even)
;   l - external latch          (0: no data   | 1: new data)
;   p - region                  (0: NTSC 60Hz | 1: PAL 50Hz)
;   v - PPU2 5C78 version
; Reading resets the access for OPHCT and OPVCT
STAT78          = $00213F

; AUDIO PROCESSING UNIT COMMUNICATION PORTS
; APUIO0      aaaa aaaa                rw1 fvha
; APUIO1      aaaa aaaa                rw1 fvha
; APUIO2      aaaa aaaa                rw1 fvha
; APUIO3      aaaa aaaa                rw1 fvha
;   a - data to/from APU
; Avoid writing data to $2140 in 16-bit mode
APUIO0          = $002140    : APUIO = $002140
APUIO1          = $002141
APUIO2          = $002142
APUIO3          = $002143

; APUIO is mirrored up to $217F

; WRAM DATA READ/WRITE
; WMDATA      xxxx xxxx                rw1 fvha
;   x - WRAM data
WMDATA          = $002180

; WRAM ADDRESS ACCESS
; WMADDL      llll llll                rw1 fvha
; WMADDH      hhhh hhhh                rw1 fvha
; WMADDB      .... ...b                rw1 fvha
;   l - low byte of WRAM address
;   h - high byte of WRAM address
;   b - bank of WRAM address (0: bank7E | 1: bank7F)
WMADDL          = $002181    : WMADDR = $002181
WMADDH          = $002182
WMADDB          = $002183

;===================================================================================================
;===================================================================================================
; JOYPAD REGISTERS
;===================================================================================================
;===================================================================================================

; JOYPAD STROBE AND COMMUNICATION PORT
; JOYPADA     .... ..ca                r1
;             .... ...s                w1
; JOYPADB     .... ..db                r1
;   a - port 1 data 1 (read)
;   c - port 1 data 2 (read)
;   d - port 2 data 1 (read)
;   b - port 2 data 2 (read)
;   s - strobe joypads (write)
JOYPADA         = $004016    : JOYPAD = $004016
JOYPADB         = $004017

;===================================================================================================
;===================================================================================================
; CPU REGISTERS
;===================================================================================================
;===================================================================================================

; INTERRUPT AND AUTO JOYPAD READ ENABLE
; NMITIMEN    n.vh ...j                w1
;   n - NMI enable       (0: disabled | 1: enabled)
;   vh - IRQ trigger time
;        00 - none
;        01 - on HTIME
;        10 - on VTIME
;        11 - when both VTIME and HTIME
;   j - auto joypad read (0: disabled | 1: enabled)
NMITIMEN        = $004200

; PROGRAMMABLE I/O PORT (WRITE)
; WRIO        ab.. ....                w1
;   a - controller port 2 pin 6 (0: no PPU latching | 1: PPU can be latched)
;   b - controller port 1 pin 6
WRIO            = $004201

; MULTIPLIER AND MULTIPLICAND
; WRMPYA      aaaa aaaa                w1
; WRMPYB      bbbb bbbb                w1
;   a - unsigned 8-bit multiplicand A
;   b - unsigned 8-bit multiplicand B
; Multiplication will finish after 8 CPU cycles.
; WRMPYA will retain its value after multiplication after writes to WRMPYB.
WRMPYA          = $004202
WRMPYB          = $004203

; DIVISOR AND DIVIDEND
; WRDIVL      llll llll                w1
; WRDIVH      hhhh hhhh                w1
; WRDIVB      bbbb bbbb                w1
;   l - low byte of unsigned 16-bit dividend
;   h - high byte of unsigned 16-bit dividend
;   d - unsigned 8-bit divisor
; Division will finish after 16 CPU cycles after writes to WRDIVB.
WRDIVL          = $004204
WRDIVH          = $004205
WRDIVB          = $004206

; H-COUNT TIMER SETTINGS
; HTIMEL      hhhh hhhh                w1
; HTIMEH      .... ...h                w1
;   h - IRQ horizontal trigger
HTIMEL          = $004207    : HTIME = $004207
HTIMEH          = $004208

; V-COUNT TIMER SETTINGS
; VTIMEL      vvvv vvvv                w1
; VTIMEH      .... ...v                w1
;   v - IRQ vertical trigger
VTIMEL          = $004209    : VTIME = $004209
VTIMEH          = $00420A

; DIRECT MEMORY ACCESS CHANNEL DESIGNATION
; MDMAEN      hgfe dcba                w1
;   a - DMA channel 0 (0: disabled | 1: enabled)
;   b - DMA channel 1 (0: disabled | 1: enabled)
;   c - DMA channel 2 (0: disabled | 1: enabled)
;   d - DMA channel 3 (0: disabled | 1: enabled)
;   e - DMA channel 4 (0: disabled | 1: enabled)
;   f - DMA channel 5 (0: disabled | 1: enabled)
;   g - DMA channel 6 (0: disabled | 1: enabled)
;   h - DMA channel 7 (0: disabled | 1: enabled)
MDMAEN          = $00420B

; H-BLANK DIRECT MEMORY ACCESS CHANNEL DESIGNATION
; HDMAEN      hgfe dcba                w1
;   a - HDMA channel 0 (0: disabled | 1: enabled)
;   b - HDMA channel 1 (0: disabled | 1: enabled)
;   c - HDMA channel 2 (0: disabled | 1: enabled)
;   d - HDMA channel 3 (0: disabled | 1: enabled)
;   e - HDMA channel 4 (0: disabled | 1: enabled)
;   f - HDMA channel 5 (0: disabled | 1: enabled)
;   g - HDMA channel 6 (0: disabled | 1: enabled)
;   h - HDMA channel 7 (0: disabled | 1: enabled)
HDMAEN          = $00420C

; ACCESS CYCLE DESIGNATION
; MEMSEL      .... ...f                w1
;   f - Fast ROM (0: disabled | 1: enabled)
; Works with SA1, but pauses the SA1.
MEMSEL          = $00420D

; V-BLANK NMI FLAG AND SNES CPU VERSION NUMBER
; RDNMI       n... vvvv                r1
;   n - vblank NMI trigger (0: not in vblank | 1: in vblank)
;       clears on read
;       read this during NMI for safety
;       messing with NMI enable may cause unwanted triggers
;   v - Ricoh5A22 version
RDNMI           = $004210

; H/V TIMER IRQ FLAG
; TIMEUP      i... ....                r1
;   i - IRQ trigger (0: no request | 1: IRQ requested)
;       clears on read
;       read this during IRQ or else
;       IRQ will trigger immediately when the current one ends
TIMEUP          = $004211

; H/V BLANK FLAG AND AUTO JOYPAD READ STATUS
; HVBJOY      vh.. ...j                r1
;   v - vertical blanking period   (0: not vblank | 1: vblank)
;   h - horizontal blanking period (0: not hblank | 1: hblank)
;   j - auto joypad read flag      (0: fine       | 1: busy)
; Blanking flags are set irrespective of forced blank and interrupts.
HVBJOY          = $004212

; PROGRAMMABLE I/O PORT (READ)
; RDIO        ab.. ....                r1
;   a - pin 6 of controller port 2
;   b - pin 6 of controller port 1
RDIO            = $004213

; QUOTIENT OF DIVISION
; RDDIVL      llll llll                r1
; RDDIVH      hhhh hhhh                r1
;   l - low byte of quotient
;   h - high byte of quotient
RDDIVL          = $004214    : RDDIV = $004214
RDDIVH          = $004215

; PRODUCT OF MULTIPLICATION AND REMAINDER OF DIVISION
; RDMPYL      llll llll                r1
; RDMPYH      hhhh hhhh                r1
;   l - low byte of result
;   h - high byte of result
; for multiplication, this contains the product
; for division, this contains the remainder
RDMPYL          = $004216    : RDMPY = $004216
RDMPYH          = $004217

; CONTROLLER DATA
; JOY1L       AXLR vvvv                r1
; JOY1H       BYsS udlr                r1
; JOY2L       AXLR vvvv                r1
; JOY2H       BYsS udlr                r1
; JOY3L       AXLR vvvv                r1
; JOY3H       BYsS udlr                r1
; JOY4L       AXLR vvvv                r1
; JOY4H       BYsS udlr                r1
;   A - A face button         (0: relaxed | 1: pressed)
;   B - B face button         (0: relaxed | 1: pressed)
;   X - X face button         (0: relaxed | 1: pressed)
;   Y - Y face button         (0: relaxed | 1: pressed)
;   u - UP dpad button        (0: relaxed | 1: pressed)
;   d - DOWN dpad button      (0: relaxed | 1: pressed)
;   l - LEFT dpad button      (0: relaxed | 1: pressed)
;   r - RIGHT dpad button     (0: relaxed | 1: pressed)
;   S - START button          (0: relaxed | 1: pressed)
;   s - SELECT button         (0: relaxed | 1: pressed)
;   L - LEFT SHOULDER button  (0: relaxed | 1: pressed)
;   R - RIGHT SHOULDER button (0: relaxed | 1: pressed)
;   v - controller signature
;       only v bits are put in these registers
;       extra data can be read for further controller information
;       vvvv zzzzzzzz
;       0000 00000000 - No controller connected
;       0000 11111111 - Standard joypad
;       0001 ........ - SNES mouse
;       0011 ........ - SFC modem
;       0100 ........ - NTT data controller (has cool numpad)
;       1101 ........ - Voice-kun
;       1110 xxxxxxxx - Third-party device
;       1111 ........ - Super Scope
JOY1L           = $004218    : JOY1DATA1L = $004218
JOY1H           = $004219    : JOY1DATA1H = $004219
JOY2L           = $00421A    : JOY2DATA1L = $00421A
JOY2H           = $00421B    : JOY2DATA1H = $00421B
JOY3L           = $00421C    : JOY1DATA2L = $00421C
JOY3H           = $00421D    : JOY1DATA2H = $00421D
JOY4L           = $00421E    : JOY2DATA2L = $00421E
JOY4H           = $00421F    : JOY2DATA2H = $00421F

;===================================================================================================
;===================================================================================================
; DMA REGISTERS
;===================================================================================================
;===================================================================================================

; DMA TRANSFER PARAMETERS
; DMAPX      dh.i fmmm                rw1
;   d - transfer direction    (0: A bus to B bus | 1: B bus to A bus)
;   h - HDMA addressing       (0: direct table   | 1: indirect table)
;   i - A bus address advance (0: increment      | 1: decrement)
;   f - fixed transfer
;   m - transfer mode
;       000 - 1 register, write once              r+0
;       001 - 2 register, write once              r+0, r+1
;       010 - 1 register, write twice             r+0, r+0
;       011 - 2 registers, write twice            r+0, r+0, r+1, r+1
;       100 - 4 registers, write once             r+0, r+1, r+2, r+3
;       101 - 2 registers, write twice, alt       r+0, r+1, r+0, r+1
;       110 - 1 register, write twice             r+0, r+0
;       111 - 2 registers, write twice            r+0, r+0, r+1, r+1
; For write twice modes, the address is still incremented, assuming a non-fixed transfer.
; For fixed transfers, the same address is always used even for write twice modes.
; HDMA transfers cannot used fixed transfers or decrement A bus.
DMAP0           = $004300    : DMA0MODE = $004300 : DMAPX = $004300 : DMAXMODE = $004300
DMAP1           = $004310    : DMA1MODE = $004310
DMAP2           = $004320    : DMA2MODE = $004320
DMAP3           = $004330    : DMA3MODE = $004330
DMAP4           = $004340    : DMA4MODE = $004340
DMAP5           = $004350    : DMA5MODE = $004350
DMAP6           = $004360    : DMA6MODE = $004360
DMAP7           = $004370    : DMA7MODE = $004370

; DMA B-BUS ADDRESS ACCESS
; BBADX       aaaa aaaa                rw1
;   a - low byte of PPU port $21aa for B bus address
BBAD0           = $004301    : DMA0PORT = $004301 : BBADX = $004301 : DMAXPORT = $004301
BBAD1           = $004311    : DMA1PORT = $004311
BBAD2           = $004321    : DMA2PORT = $004321
BBAD3           = $004331    : DMA3PORT = $004331
BBAD4           = $004341    : DMA4PORT = $004341
BBAD5           = $004351    : DMA5PORT = $004351
BBAD6           = $004361    : DMA6PORT = $004361
BBAD7           = $004371    : DMA7PORT = $004371

; DMA A-BUS TABLE ADDRESS
; A1TXL       llll llll                rw1
; A1TXH       hhhh hhhh                rw1
; A1TXB       bbbb bbbb                rw1
;   l - low byte of A bus address
;   h - high byte of A bus address
;   b - bank byte of A bus address
A1TXL           = $004302    : DMAXADDRL = $004302 : DMAXADDR = $004302 : A1TX = $004302
A1T0L           = $004302    : DMA0ADDRL = $004302 : DMA0ADDR = $004302
A1T1L           = $004312    : DMA1ADDRL = $004312 : DMA1ADDR = $004312
A1T2L           = $004322    : DMA2ADDRL = $004322 : DMA2ADDR = $004322
A1T3L           = $004332    : DMA3ADDRL = $004332 : DMA3ADDR = $004332
A1T4L           = $004342    : DMA4ADDRL = $004342 : DMA4ADDR = $004342
A1T5L           = $004352    : DMA5ADDRL = $004352 : DMA5ADDR = $004352
A1T6L           = $004362    : DMA6ADDRL = $004362 : DMA6ADDR = $004362
A1T7L           = $004372    : DMA7ADDRL = $004372 : DMA7ADDR = $004372

A1TXH           = $004303    : DMAXADDRH = $004303
A1T0H           = $004303    : DMA0ADDRH = $004303
A1T1H           = $004313    : DMA1ADDRH = $004313
A1T2H           = $004323    : DMA2ADDRH = $004323
A1T3H           = $004333    : DMA3ADDRH = $004333
A1T4H           = $004343    : DMA4ADDRH = $004343
A1T5H           = $004353    : DMA5ADDRH = $004353
A1T6H           = $004363    : DMA6ADDRH = $004363
A1T7H           = $004373    : DMA7ADDRH = $004373

A1BX            = $004304    : DMAXADDRB = $004304
A1B0            = $004304    : DMA0ADDRB = $004304
A1B1            = $004314    : DMA1ADDRB = $004314
A1B2            = $004324    : DMA2ADDRB = $004324
A1B3            = $004334    : DMA3ADDRB = $004334
A1B4            = $004344    : DMA4ADDRB = $004344
A1B5            = $004354    : DMA5ADDRB = $004354
A1B6            = $004364    : DMA6ADDRB = $004364
A1B7            = $004374    : DMA7ADDRB = $004374

; DMA SIZE, HDMA WORKING TABLE ADDRESS, AND HDMA INDIRECT TABLE BANK
; DASXL       llll llll                rw1
; DASXH       hhhh hhhh                rw1
; DASBX       bbbb bbbb                rw1
;
; DMA:
;   l - low byte of transfer size
;   h - high byte of transfer size
; $0000 will actually transfer $10000 bytes
;
; HDMA:
;   l - low byte of table
;   h - high byte of table
;   b - bank byte of table
; Not used during direct HDMA
DASXL           = $004305    : DMAXSIZEL = $004305 : DMAXSIZE = $004305 : DASX = $004305
DAS0L           = $004305    : DMA0SIZEL = $004305 : DMA0SIZE = $004305 : DAS0 = $004305
DAS1L           = $004315    : DMA1SIZEL = $004315 : DMA1SIZE = $004315 : DAS1 = $004315
DAS2L           = $004325    : DMA2SIZEL = $004325 : DMA2SIZE = $004325 : DAS2 = $004325
DAS3L           = $004335    : DMA3SIZEL = $004335 : DMA3SIZE = $004335 : DAS3 = $004335
DAS4L           = $004345    : DMA4SIZEL = $004345 : DMA4SIZE = $004345 : DAS4 = $004345
DAS5L           = $004355    : DMA5SIZEL = $004355 : DMA5SIZE = $004355 : DAS5 = $004355
DAS6L           = $004365    : DMA6SIZEL = $004365 : DMA6SIZE = $004365 : DAS6 = $004365
DAS7L           = $004375    : DMA7SIZEL = $004375 : DMA7SIZE = $004375 : DAS7 = $004375

DASXH           = $004306    : DMAXSIZEH = $004306
DAS0H           = $004306    : DMA0SIZEH = $004306
DAS1H           = $004316    : DMA1SIZEH = $004316
DAS2H           = $004326    : DMA2SIZEH = $004326
DAS3H           = $004336    : DMA3SIZEH = $004336
DAS4H           = $004346    : DMA4SIZEH = $004346
DAS5H           = $004356    : DMA5SIZEH = $004356
DAS6H           = $004366    : DMA6SIZEH = $004366
DAS7H           = $004376    : DMA7SIZEH = $004376

DASBX           = $004307    : HDMAXITBLL = $004305 : HDMAXITBLH = $004306 : HDMAXITBLB = $004307
DASB0           = $004307    : HDMA0ITBLL = $004305 : HDMA0ITBLH = $004306 : HDMA0ITBLB = $004307
DASB1           = $004317    : HDMA1ITBLL = $004315 : HDMA1ITBLH = $004316 : HDMA1ITBLB = $004317
DASB2           = $004327    : HDMA2ITBLL = $004325 : HDMA2ITBLH = $004326 : HDMA2ITBLB = $004327
DASB3           = $004337    : HDMA3ITBLL = $004335 : HDMA3ITBLH = $004336 : HDMA3ITBLB = $004337
DASB4           = $004347    : HDMA4ITBLL = $004345 : HDMA4ITBLH = $004346 : HDMA4ITBLB = $004347
DASB5           = $004357    : HDMA5ITBLL = $004355 : HDMA5ITBLH = $004356 : HDMA5ITBLB = $004357
DASB6           = $004367    : HDMA6ITBLL = $004365 : HDMA6ITBLH = $004366 : HDMA6ITBLB = $004367
DASB7           = $004377    : HDMA7ITBLL = $004375 : HDMA7ITBLH = $004376 : HDMA7ITBLB = $004377

; HDMA TABLE ADDRESS
; A2AXL       llll hhhh                rw1
; A2AXH       hhhh llll                rw1
;   l - low byte of table address
;   h - high byte of table address
; Updated automatically by HDMA.
A2AXL           = $004308    : HDMAXTBL = $004308 : HDMAXTBLL = $004308 : A2AX = $004308
A2A0L           = $004308    : HDMA0TBL = $004308 : HDMA0TBLL = $004308
A2A1L           = $004318    : HDMA1TBL = $004318 : HDMA1TBLL = $004318
A2A2L           = $004328    : HDMA2TBL = $004328 : HDMA2TBLL = $004328
A2A3L           = $004338    : HDMA3TBL = $004338 : HDMA3TBLL = $004338
A2A4L           = $004348    : HDMA4TBL = $004348 : HDMA4TBLL = $004348
A2A5L           = $004358    : HDMA5TBL = $004358 : HDMA5TBLL = $004358
A2A6L           = $004368    : HDMA6TBL = $004368 : HDMA6TBLL = $004368
A2A7L           = $004378    : HDMA7TBL = $004378 : HDMA7TBLL = $004378 

A2AXH           = $004309    : HDMAXTBLH = $004309
A2A0H           = $004309    : HDMA0TBLH = $004309
A2A1H           = $004319    : HDMA1TBLH = $004319
A2A2H           = $004329    : HDMA2TBLH = $004329
A2A3H           = $004339    : HDMA3TBLH = $004339
A2A4H           = $004349    : HDMA4TBLH = $004349
A2A5H           = $004359    : HDMA5TBLH = $004359
A2A6H           = $004369    : HDMA6TBLH = $004369
A2A7H           = $004379    : HDMA7TBLH = $004379

; HDMA LINE TRANSFER WORKSPACE
; NLTRX       csss ssss       rw1
;   c - continue flag (0: 1 line for s scanlines | 1: s lines, 1 per scanline)
;   s - scanline count
; Updated automatically during HDMA.
NLTR0           = $00430A    : NLTRX = $00430A
NLTR1           = $00431A
NLTR2           = $00432A
NLTR3           = $00433A
NLTR4           = $00434A
NLTR5           = $00435A
NLTR6           = $00436A
NLTR7           = $00437A

;===================================================================================================

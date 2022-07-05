;===================================================================================================
; Using this symbols map:
;
; Except for larger blocks of data, every address will be given at least one symbol
; Symbols are each given a unique name with focus on hierarchy by nature of usage
;
; Low bytes may be indicated with an "L" suffix
; High bytes are indicated with an "H" suffix
; High bytes that are unused may use a "U" suffix
;
; Bitfields, full or partial, will name each property with a unique letter
; If multiple bits share a letter, they are part of the same property
; and form a larger number that is only part of the address
; All unused bits are marked with a period (.) and no mention of them is made
;
; Unused addresses will be named "UNUSED_AAAAAA"
; Unused addresses will be grouped together and include a comment:
; "FREE RAM: <size>" to make finding free space easier
; Larger blocks will say "BIG FREE RAM"
;
; For documentation on hardware registers, see «registers.asm»
; For documentation on save game data, see «symbols_sram.asm»
; For documentation on APU addresses, see «symbols_apu.asm»
;===================================================================================================

;===================================================================================================
;---------------------------------------------------------------------------------------------------
; DIRECT PAGE
;---------------------------------------------------------------------------------------------------
; Reminder that direct page is always an address in Bank00.
; For ALTTP's mapping and functionality this will always be a mirror of Bank7E page 00 or page 1F.
; For the most part, ALTTP leaves the direct page register (D) at $0000.
; The polyhedral code that draws the triforce and crystals will change this register during IRQ.
; The symbols here mirror page 00 of Bank7E.
;---------------------------------------------------------------------------------------------------
;===================================================================================================

; Any use of these addresses should be considered incredibly volatile.
; Note that due to the location of the BRK vector $0000 and $0001 form the operand of its BRL.
; LENGTH: 0x10
SCRAP00         = $7E0000
SCRAP01         = $7E0001
SCRAP02         = $7E0002
SCRAP03         = $7E0003
SCRAP04         = $7E0004
SCRAP05         = $7E0005
SCRAP06         = $7E0006
SCRAP07         = $7E0007
SCRAP08         = $7E0008
SCRAP09         = $7E0009

;---------------------------------------------------------------------------------------------------
; TILE ACT NOTES
;---------------------------------------------------------------------------------------------------
; SCRAP0A is used as a direction bitfield during tile act routines.
;---------------------------------------------------------------------------------------------------
; For tile act bitfields, each property is flagged with 4 bits.
; These bits indicate which tile relative Link the tile was found
;
;  a b
;   L
;  c d
;
; abcd
;   a - found to the north west
;   b - found to the north east
;   c - found to the south west
;   d - found to the south east
;
;   L - Link
;---------------------------------------------------------------------------------------------------
SCRAP0A         = $7E000A

SCRAP0B         = $7E000B
SCRAP0C         = $7E000C
SCRAP0D         = $7E000D
SCRAP0E         = $7E000E
SCRAP0F         = $7E000F

; Game mode and submode
; See $00:80B5
MODE            = $7E0010
SUBMODE         = $7E0011

; Before the main loop starts again, $12 is cleared with an STZ
; While 0, it sits in a loop, waiting for interrupts.
; When NMI triggers, it checks this flag to decide if the bulk updates should be performed.
; If NMI reads this flag as zero, it knows the main loop has completed and bulk updates are allowed to occur
; If NMI triggers before the main game code is finished, this flag will be still be nonzero
; such bulk updates will be skipped
; NMI will set this flag to non zero, allowing the loop to exit after NMI
LAG             = $7E0012

; Queue for INIDISP updates; written to during NMI
INIDISPQ        = $7E0013

; NMI update flags
; when non zero, these will trigger a specific graphics update during NMI
NMISTRIPES      = $7E0014
NMICGRAM        = $7E0015
NMIHUD          = $7E0016
NMIINCR         = $7E0017
NMIUP1100       = $7E0018

; Incremental upload VRAM high byte
UPINCVH         = $7E0019

; This counter is incremented every time the main loop runs.
; In other words: every frame that the game is not lagging
FRAME           = $7E001A

; Used to flag indoors/outdoors
;   0x00 - outdoors
;   0x01 - indoors
INDOORS         = $7E001B

; PPU register queues written during NMI
MAINDESQ        = $7E001C
SUBDESQ         = $7E001D
TMWQ            = $7E001E
TSWQ            = $7E001F

; Link's absolute coordinates
; TODO also used during attract (up through around $34)
POSY            = $7E0020
POSYH           = $7E0021
POSX            = $7E0022
POSXH           = $7E0023

; Takes the value $FFFF when on the ground
POSZ            = $7E0024
POSZH           = $7E0025

; Direction Link is pushing
; .... udlr
;   u - up
;   d - down
;   l - left
;   r - right
PUSHDIR         = $7E0026

; Link's recoil
; By themselves, these do not do much
; They will be reset every frame Link is not in recoil state
KNBY            = $7E0027
KNBX            = $7E0028
KNBZ            = $7E0029

; Link's subpixel velocity
; when this value overflows, Link's main velocity gains an extra pixel
; reset on direction change, so not really a positional subpixel
SUBVY           = $7E002A
SUBVX           = $7E002B

; Handles fading in attract mode.
; Zeroed in one location during gameplay, but otherwise unused.
ATRFADE         = $7E002C

; Acts as a timer for certain animations to advance ANIMSTEP.
ANIMTIME        = $7E002D

; Link's animation step
ANIMSTEP        = $7E002E

; Link's direction; always a multiple of 2
;   0x00 - up
;   0x02 - down
;   0x04 - left
;   0x06 - right
DIR             = $7E002F

; The difference in pixels Link moved on each axis
DIFFY           = $7E0030
DIFFX           = $7E0031

; Used for temporary calculations/caching with Link's coordinates when hopping a ledge.
HOPCALCY        = $7E0032
HOPCALCX        = $7E0033

; Used as a delay timer for Agahnim during attract mode.
ATRAGATIME      = $7E0034

; FREE RAM: 0x03
UNUSED_35       = $7E0035
UNUSED_36       = $7E0036
UNUSED_37       = $7E0037

; Tile act bitfield used by outer slopes.
; The high byte is technically written when the bitfield is flagged,
; but it's always ORing in 0x00. It is otherwise unused. TODO verify
; SEE TILE ACT NOTES
; .... ssss
TACTSLOPEO      = $7E0038
TACTSLOPEU      = $7E0039

; Bitfield for B and Y
; hyu. .d.b
;   h - B button held
;   y - Y button held
;   u - tested for but never set
;   d - holding down on dpad (set from $F0)
;   b - B released during sword swing
BYFLAG          = $7E003A

; Bitfield for A
; a..d ....
;   a - A button held
;   d - prevents sword swing; only set by unused routine
AFLAG           = $7E003B

; Timer for B button
; ssss tttt
;   s - spin attack in action; set to 0x9
;   t - sword swing timer
;       0x00 - No swing
;      —0x08 - Sword swing
;       0x09 - Sword primed
;      —0x0C - Poking wall
;
; Also used as a 16-bit countdown for various cutscenes:
;   Ether tablet:  0x00C0
;   Bombos tablet: 0x00E0
;   Desert tablet: 0x0001
BFLAG           = $7E003C

; Used as an animation timer for items, sword, zap, etc.
ANIMTIME2       = $7E003D

; Caches Link's coordinates for calculations during movement routines.
CALCYL          = $7E003E
CALCXL          = $7E003F
CALCYH          = $7E0040
CALCXH          = $7E0041

; Appears to flag directions for freedom for vertical and diagonal, respectively.
; Flags are set when there's no obstruction. (0: obstructed | 1: unobstructed)
; .... udlr
;   u - upwards
;   d - downwards
;   l - leftwards
;   r - rightwards
OBSTRUCTV       = $7E0042
OBSTRUCTD       = $7E0043

; Offsets for OAM also used in calculation of sword/hammer hitboxes
OAMOFFAY        = $7E0044
OAMOFFAX        = $7E0045

; Countdown timer used when Link takes damage
INPAIN          = $7E0046

; Weapon tink spark timer
TINKTM          = $7E0047

; Bitfield for push actions
; s... dbpt
;   s - statue/somaria
;   d - pushing door
;   b - push block
;   p - pushing
;   t - harder push
DOGRAB          = $7E0048

; Forces dpad inputs when written to.
; High byte is never used, but incidentally cleared by tile detection routines.
FORCEMOVE       = $7E0049
FORCEMOVEU      = $7E004A

; If set to 0x0C, Link will not be visible.
VISIBLE         = $7E004B

; Countdown timer for cape sapping magic when in use.
CAPETIME        = $7E004C

; Indicates various types of recoil.
;   0x00 - no recoil
;   0x01 - bonking/damage/jumping in or out of water
;   0x02 - ledge hop
JUMPING         = $7E004D

; Indicates the tile type landed on after a dungeon transition.
;   0x00 - Shallow water/Nothing
;   0x01 - Normal door
;   0x02 - Shutter doors/All others - zeros DOORWAY
;   0x03 - Layer doors? TODO
;   0x04 - Lower layer shutters - zeros DOORWAY
TRANSLAND       = $7E004E

; Dash SFX timer
FSHFSH          = $7E004F

; When 0, Link will change the direction he's facing based on his movement
; When nonzero, he will strafe around
; .... .bps
;   s - the bit generally flagged
;   p - flagged during rupee pull and perpendicular door movement
;   b - flagged during push blocks
;
; Used during attract for the escorted maiden's flinch
STRAFE          = $7E0050

; Target Y coordinate Link should fall to
; TODO other stuff too???
TARGETY         = $7E0051
TARGETYH        = $7E0052
TARGETX         = $7E0053
TARGETXH        = $7E0054

; When set, Link is invisible and untouchable.
CAPEON          = $7E0055

; Flags for bunny.
; Usually kept in sync with BUNNY, but one of these is honestly redundant.
;   0x00 - Link
;   0x01 - bunny
RABBIT          = $7E0056

; Timer that counts up to 0x10 to induce slower speed on stairs.
; Famously uncleared after spiral stairs.
STAIRDRAG       = $7E0057

; Tile act bitfield used by manual stairs
; .... ssss
; SEE TILE ACT NOTES
TACTSTAIR       = $7E0058

; Tile act bitfield used by pits
; .... ssss
; SEE TILE ACT NOTES
TACTPIT         = $7E0059

; Pose when landing from a pit fall in underworld
FALLPOSE        = $7E005A

; Represents Link's "slipping into a pit" status
;   0x00 - Nothing
;   0x01 - Near pit
;   0x02 - Falling
;   0x03 - Falling more
SLIP            = $7E005B

; Timer for the falling animation
FALLTIMER       = $7E005C

; Link's main state handler
LINKDO          = $7E005D

; Link's main speed handler
SPEED           = $7E005E

; Bitfield used by manipulable tiles
MANIPIDL        = $7E005F
MANIPIDH        = $7E0060

; Push timer for blocks, graves, etc.; shared by all
FRICTION        = $7E0061

; Seems to only act as a flag for horizontal doors.
; .... ..h.
;   h - on horizontal door tile
HDOOR           = $7E0062

; Used for spell timer for Agahnim in attract mode.
; Zeroed by HDOOR during normal gameplay.
ATRAGASP        = $7E0063

; Used to ORA in OAM priority, but only high byte seems used for that.
; Low byte used as a timer for Agahnim text display in attract mode.
ATRAGSTEP       = $7E0064
OAMPROPOR       = $7E0065

; Last direction Link moved
;   0x00 - up
;   0x01 - down
;   0x02 - left
;   0x03 - right
LASTDIR         = $7E0066

; Direction Link is walking
; .... udlr
WALKDIR         = $7E0067

; Difference of coordinate high bytes for movement calculations.
DIFFYH          = $7E0068
DIFFXH          = $7E0069

; Set when moving diagonally to flag the direction link is facing
; .... .hv
;   h - facing horizontally
;   v - facing vertically
DIAGFACE        = $7E006A

;         ..hv udlr
;   0x15  ...1 .1.1  ◣ down
;   0x16  ...1 .11.  ◢ down
;   0x19  ...1 1..1  ◤ up
;   0x1A  ...1 1.1.  ◥ up
;   0x25  ..1. .1.1  ◥ right
;   0x26  ..1. .11.  ◤ left
;   0x29  ..1. 1..1  ◢ right
;   0x2A  ..1. 1.1.  ◣ left
;     h - moving horizontally
;     v - moving vertically
;     u - change of direction into the slope has an up vector
;     d - change of direction into the slope has a down vector
;     l - change of direction into the slope has a left vector
;     r - change of direction into the slope has a right vector
SLOPEPUSH       = $7E006B

; .... ..hv
;   h - in horizontal door
;   v - in vertical door
DOORWAY         = $7E006C

; Holds the value of SLOPEPUSH when you can't actually move.
SLOPEFAIL       = $7E006D

; Tile act bitfield used by slopes.
; High byte has an explicit STZ as well, but never used.
; .... ssss
; SEE TILE ACT NOTES
TACTSLOPI       = $7E006E
TACTSLOPIH      = $7E006F

; FREE RAM: 0x02
UNUSED_70       = $7E0070
UNUSED_71       = $7E0071

; Very volatile memory used similarly to $00..$0F
; Anything written here should be considered very temporary
SCRAP72         = $7E0072
SCRAP73         = $7E0073
SCRAP74         = $7E0074
SCRAP75         = $7E0075
SCRAP76         = $7E0076

; Never really used, but zeroed by some uses of SCRAP76.
SCRAP77         = $7E0077

; TODO
; Seems to flag non-north hops in the overworld.
; Messes with camera scroll.
; Kept in sync with NOHURT
JUMPSCROLL      = $7E0078

; Spin attack timer
; at 48 (0x30), the spin is fully charged
; hardcapped at 64 (0x40)
SPINTIME        = $7E0079

; FREE RAM: 0x01
UNUSED_7A       = $7E007A

; Used to cache light world versus dark world for comparisons.
; .w.. ....
;   w - world (0: light world | 1: dark world)
WORLDCACHE      = $7E007B

; FREE RAM: 0x08
UNUSED_7C       = $7E007C
UNUSED_7D       = $7E007D
UNUSED_7E       = $7E007E
UNUSED_7F       = $7E007F
UNUSED_80       = $7E0080
UNUSED_81       = $7E0081
UNUSED_82       = $7E0082
UNUSED_83       = $7E0083

; Index for overworld map16 buffer to load new graphics when scrolling
OWTMAPI         = $7E0084
OWTMAPIH        = $7E0085

; Used to index $0500 and tilemap
; TODO look at 02E9F7
OWMAPDIX        = $7E0086
OWMAPDIXH       = $7E0087
OWMAPDIY        = $7E0088
OWMAPDIYH       = $7E0089

; Overworld screen ID
; In practice bit 6 indicates a Dark World screen, and bit 7 indicates special overworld
; As the highest screen ID is 0x81, $8B is essentially unused in the overworld.
; However, reads and writes for screen ID are often 16-bit
; Occasionally 8A is used to read underworld screens.
; Thus, this address should be considered used.
OWSCR           = $7E008A
OWSCRH          = $7E008B

; Overworld background overlay ID
OWBG1           = $7E008C

; Used to index sloshing animations for thick grass and shallow water.
FEETANIM        = $7E008D

; FREE RAM: 0x02
UNUSED_8E       = $7E008E
UNUSED_8F       = $7E008F

; Used during draw routines to indirectly address the OAM buffer.
OAMLBFR         = $7E0090
OAMLBFRH        = $7E0091
OAMHBFR         = $7E0092
OAMHBFRH        = $7E0093

; Various PPU queues handled during NMI
BGMODEQ         = $7E0094
MOSAICQ         = $7E0095
W12SELQ         = $7E0096
W34SELQ         = $7E0097
WOBJSELQ        = $7E0098
CGWSELQ         = $7E0099
CGADSUBQ        = $7E009A

; HDMA enable flags
HDMAENQ         = $7E009B

; These are just written to COLDATA successively
; The color channel bit is not ORA'd in
; So generally expect to see the same top 3 bits for each address
; There's nothing preventing these being used for any COLDATA writes, though
; e.g. the following values will produce a pure white:
;      00 00 FF
COLDATAR        = $7E009C
COLDATAG        = $7E009D
COLDATAB        = $7E009E

; FREE RAM: 0x01
UNUSED_9F       = $7E009F

; Room ID for underworld
; Copied to $0483
; There are only 2 "maps", so $A1 is only expected to be 0 or 1
; However, there are various references to room in the 0x03.. range
ROOM            = $7E00A0
ROOMH           = $7E00A1

; Value of $A0 for previous room
PREVROOM        = $7E00A2
PREVROOMH       = $7E00A3

; Current floor of dungeon.
;   0x00 - Floor 1
;   Negative values indicate basement floors.
FLOOR           = $7E00A4

; Technically never used, but read by FLOOR sometimes (never rewritten).
; Seems to expect 0x00 always for various comparisons.
; Not safe to consider this free.
FLOORH          = $7E00A5

; Which set of camera boundaries to use.
BSETH           = $7E00A6
BSETV           = $7E00A7

; ...l llvh
;   l - room layout
;   v - QUADV
;   h - QUADH
ROOMLAYOUT      = $7E00A8

; Together, indicates which quadrant Link is in.
; H can be 0 or 1, for left or right
; V can be 0 or 2, for top or bottom
QUADH           = $7E00A9
QUADV           = $7E00AA

; FREE RAM: 0x02
UNUSED_AB       = $7E00AB
UNUSED_AC       = $7E00AC

; Holds layer floor effect index
BGFX            = $7E00AD

; Room effects; e.g. kill room, shutter switch, etc.
TAG1            = $7E00AE
TAG2            = $7E00AF

; Often used as a submodule, such as for transitions
SUBSUB          = $7E00B0

; FREE RAM: 0x01
UNUSED_B1       = $7E00B1

; Used as scrap space when building rooms.
SCRAPB2         = $7E00B2
SCRAPB3         = $7E00B3
SCRAPB4         = $7E00B4
SCRAPB5         = $7E00B5

; FREE RAM: 0x01
UNUSED_B6       = $7E00B6

; Used as a pointer when drawing room objects.
; TODO something with palettes
OBJPTR          = $7E00B7
OBJPTRH         = $7E00B8
OBJPTRB         = $7E00B9

; Used as an offset for OBJPTR
; TODO other uses?
OBJX            = $7E00BA
OBJXH           = $7E00BB

; FREE RAM: 0x01
UNUSED_BC       = $7E00BC

; Frequently used as scratch space with various uses
; TODO document room draw stuff more precisely
SCRAPBD         = $7E00BD
SCRAPBE         = $7E00BE
SCRAPBF         = $7E00BF
SCRAPC0         = $7E00C0
SCRAPC1         = $7E00C1
SCRAPC2         = $7E00C2
SCRAPC3         = $7E00C3
SCRAPC4         = $7E00C4
SCRAPC5         = $7E00C5
SCRAPC6         = $7E00C6
SCRAPC7         = $7E00C7
SCRAPC8         = $7E00C8
SCRAPC9         = $7E00C9
SCRAPCA         = $7E00CA
SCRAPCB         = $7E00CB
SCRAPCC         = $7E00CC
SCRAPCD         = $7E00CD
SCRAPCE         = $7E00CE
SCRAPCF         = $7E00CF
SCRAPD0         = $7E00D0
SCRAPD1         = $7E00D1
SCRAPD2         = $7E00D2
SCRAPD3         = $7E00D3
SCRAPD4         = $7E00D4
SCRAPD5         = $7E00D5
SCRAPD6         = $7E00D6
SCRAPD7         = $7E00D7
SCRAPD8         = $7E00D8
SCRAPD9         = $7E00D9
SCRAPDA         = $7E00DA
SCRAPDB         = $7E00DB
SCRAPDC         = $7E00DC
SCRAPDD         = $7E00DD
SCRAPDE         = $7E00DE
SCRAPDF         = $7E00DF

; Background scroll registers
; For BG1 and BG2, these registers are used for calculations later for different writes to PPU.
; For BG3, the values are written directly to the PPU during NMI
; Since BG1 and BG2 are not written directly to PPU they are given different names from BG3.
BG1H            = $7E00E0
BG1HH           = $7E00E1

BG2H            = $7E00E2
BG2HH           = $7E00E3

BG3HOFSQL       = $7E00E4
BG3HOFSQH       = $7E00E5

BG1V            = $7E00E6
BG1VH           = $7E00E7

BG2V            = $7E00E8
BG2VH           = $7E00E9

BG3VOFSQL       = $7E00EA
BG3VOFSQH       = $7E00EB

; Used for tilemap calculations
; UW: 0x01F8
; OW: 0xFFF8
COLTYPE         = $7E00EC
COLTYPEH        = $7E00ED

; Mostly behaves as an indicator of which layer Link is on
;   0x00 - Upper layer (BG2)
;   0x01 - Lower layer (BG1)
;   TODO other values
LAYER           = $7E00EE

; .... ..sl
; l - layer (0: ignore | 1: swap)
; s - dungeon id (0: ignore | 1: id^=2)
; This address is cleared every movement frame in the underworld
; But it's also set by certain door tiles
; The effects of the address don't occur until an UW-UW transition
TRANTOG         = $7E00EF

; Joypad input
; ALL input includes the input from the previous frame
; NEW input is only the current frame
; OLD input is unfiltered from the previous frame
; Joypad 2 code exists but is unreachable
JOY1A_ALL       = $7E00F0
JOY2A_ALL       = $7E00F1
JOY1B_ALL       = $7E00F2
JOY2B_ALL       = $7E00F3

JOY1A_NEW       = $7E00F4
JOY2A_NEW       = $7E00F5
JOY1B_NEW       = $7E00F6
JOY2B_NEW       = $7E00F7

JOY1A_OLD       = $7E00F8
JOY2A_OLD       = $7E00F9
JOY1B_OLD       = $7E00FA
JOY2B_OLD       = $7E00FB

; If nonzero, these values overwrite BSETH and BSETV, respectively, when an exploding wall clears.
BWSETH          = $7E00FC
BWSETV          = $7E00FD

; FREE RAM: 0x01
UNUSED_FE       = $7E00FE

; Vertical scanline trigger for IRQ
NMIVTIME        = $7E00FF

;===================================================================================================
;---------------------------------------------------------------------------------------------------
; WRAM MIRROR
;---------------------------------------------------------------------------------------------------
; Pages 0x00–0x1F of Bank7E are mirrored to every program bank ALTTP uses.
; These addresses can be accessed with absolute addressing, as long as the data bank is not 0x70 or 0x7F.
;---------------------------------------------------------------------------------------------------
;===================================================================================================

; Link animation values
POSECHR         = $7E0100
POSECHRH        = $7E0101

AUXACHR         = $7E0102
AUXACHRH        = $7E0103

AUXBCHR         = $7E0104
AUXBCHRH        = $7E0105

; FREE RAM: 0x01
UNUSED_7E0106   = $7E0106

SWORDCHR        = $7E0107
SHIELDCHR       = $7E0108
ITEMCHR         = $7E0109

; Flag set on death for use by dungeon reload.
DEADLOAD        = $7E010A

; FREE RAM: 0x01
UNUSED_7E010B   = $7E010B

; Used to cache MODE and SUBMODE during interface modules
MODECACHE       = $7E010C
SUBCACHE        = $7E010D

; Entrance ID into underworld.
ENTRANCE        = $7E010E
ENTRANCEH       = $7E010F

; Contains the current room ID * 3
ROOMX3          = $7E0110
ROOMX3H         = $7E0111

; Flag used for medallion cutscenes.
MDLSCENE        = $7E0112

; FREE RAM: 0x01
UNUSED_7E0113   = $7E0113

; Current tile type Link is standing on in the underworld.
; High byte is always 0x00.
TILEUW          = $7E0114
TILEUWH         = $7E0115

; Index for high bytes for VRAM tile map uploads.
; Also used for VRAM address for various other uploads.
ARBTMAP         = $7E0116
ARBTMAPH        = $7E0117

; Incremental VRAM upload buffer address
; Low byte is always set to 0x00.
UPINCBL         = $7E0118
UPINCBH         = $7E0119

; Applied to BG scroll
BG1SHAKEV       = $7E011A
BG1SHAKEVH      = $7E011B
BG1SHAKEH       = $7E011C
BG1SHAKEHH      = $7E011D

; Written to registers during NMI
BG2HOFSQL       = $7E011E
BG2HOFSQH       = $7E011F
BG1HOFSQL       = $7E0120
BG1HOFSQH       = $7E0121

BG2VOFSQL       = $7E0122
BG2VOFSQH       = $7E0123
BG1VOFSQL       = $7E0124
BG1VOFSQH       = $7E0125

; Used as a counter for scrolling in the underworld.
UWTRANSCR       = $7E0126

; FREE RAM: 0x01
UNUSED_7E0127   = $7E0127

; Flags IRQ enabling during NMI
;   0x00      - Don't update BG3 scroll
;   0x01–0x7F - Enable IRQ
;   0x80–0xFF - Disable IRQ
IRQSET          = $7E0128

; FREE RAM: 0x01
UNUSED_7E0129   = $7E0129

; Flags whether IRQ is handling polyhedral text or credits
IRQTHREAD       = $7E012A

; FREE RAM: 0x01
UNUSED_7E012B   = $7E012B

; APU I/O queues handled during NMI
; See sfx.txt and music.txt for expected values
SONG            = $7E012C
SFX1            = $7E012D
SFX2            = $7E012E
SFX3            = $7E012F

; Stores the last nonzero song given to the SPC
LASTSONG        = $7E0130

; Stores the last nonzero SFX1 given to the SPC
LASTSFX1        = $7E0131

; Used to queue up writes to SONG
SONGQ           = $7E0132

; Stores the last anything written to SONG
LASTAPU0        = $7E0133

; Target VRAM address for animated tiles
ANIMVRAML       = $7E0134
ANIMVRAMH       = $7E0135

; Flags which song bank was last loaded to APU.
;   0x00 - overworld
;   0x01 - underworld
SONGBANK        = $7E0136

; $00:0137–$00:01FF are essentially reserved for the stack.

; Explicitly read to save a return address after memory is cleared on reset.
RESETRET        = $7E01FE

; Top of stack
STACK           = $7E01FF

;---------------------------------------------------------------------------------------------------

; Used by interfaces as a submodule ID.
; High byte is never written, but always expected to be 0x00.
INTSUBSUB       = $7E0200
INTSUBSUBH      = $7E0201

; Index of currently selected item in the item menu.
YSEL            = $7E0202

; Zeroed in item menu but never read.
JUNK_7E0203     = $7E0203

; Zeroed in item menu and set to 0x80 during file save. Never read.
JUNK_7E0204     = $7E0204

; Used as a step counter for opening/closing the bottle submenu.
; Also referenced in unused dungeon map module.
BOTSUBGROW      = $7E0205

; Incremented every frame of the item menu, but never read.
MENUFRAME       = $7E0206

; Incremented every frame and masked with 0x10 to blink the menu cursor.
; If bit 4 is set, the cursor is visible; otherwise, it is not.
; Reset to 0x10 when moving cursor.
MENUBLINK       = $7E0207

; Timer for the flipping animation when health is restored.
HPFLIPT         = $7E0208

; Animation step of health restoration heart flip.
HPFLIPI         = $7E0209

; Flags heart refilling.
HPFILL          = $7E020A

; Appears to be a flag related to the menu and rod items.
; Zeroed in several places, but never set to any other value.
DEBUG_7E020B    = $7E020B

; Never really used. Scares MoN for some reason - "oh hells naw".
; Some unreachable debug code reads this when reading $020B.
; FREE RAM: 0x01
UNUSED_7E020C   = $7E020C

; Used as a module index for dungeon map.
DNGMAPSUBSUBSUB = $7E020D

; Holds the currently selected floor when using the dungeon map.
MAPFLOOR        = $7E020E

; Zeroed when scrolling dungeon map, but never read.
JUNK_7E020F     = $7E020F

; Flag to prevent input when scrolling the dungeon map.
CANMAPSCR       = $7E0210

; Of the two floors shown on a dungeon map, this indicates which one is of
; the floor Link is currently on.
; High byte isn't relevant and is zeroed during drawing.
;   0x00 - top map
;   0x02 - bottom map
MAPCURF         = $7E0211
MAPCURFH        = $7E0212

; Velocity of background scroll for dungeon map.
MAPSCRV         = $7E0213
MAPSCRVH        = $7E0214

; Offset used for positioning the Link dot and crosshair sprites on dungeon maps.
URHEREX         = $7E0215
URHEREXH        = $7E0216

URHEREY         = $7E0217
URHEREYH        = $7E0218

; Location of HUD tile map in VRAM.
; Written when loading a file and called upon during NMI.
HUDLOC          = $7E0219
HUDLOCH         = $7E021A

; Unused but referenced in an unused table entry indicating this address would have
; been used for stripes data of some sort...?
UNUSED_7E021B   = $7E021B
UNUSED_7E021C   = $7E021C

; Unused pointer written to with the value $007F4841.
WEIRDPTRL       = $7E021D
WEIRDPTRH       = $7E021E
WEIRDPTRB       = $7E021F
WEIRDPTRU       = $7E0220

; Written to with the value 0xFFFF; never read.
JUNK_7E0221     = $7E0221
JUNK_7E0222     = $7E0222

; Zeroed during message routines, but never used.
JUNK_7E0223     = $7E0223

; BIG FREE RAM: 0x5C
UNUSED_7E0224   = $7E0224

; Forces ancilla priority higher during drawing and checks.
; TODO also collision related
; LENGTH: 0x0A
ANC0FPRI        = $7E0280
ANC1FPRI        = $7E0281
ANC2FPRI        = $7E0282
ANC3FPRI        = $7E0283
ANC4FPRI        = $7E0284
ANC5FPRI        = $7E0285
ANC6FPRI        = $7E0286
ANC7FPRI        = $7E0287
ANC8FPRI        = $7E0288
ANC9FPRI        = $7E0289

; Timer to rate limit tile collision calculations.
; Set to 0x06 after an "interesting" collision.
; LENGTH: 0x0A
ANC0COLW        = $7E028A
ANC1COLW        = $7E028B
ANC2COLW        = $7E028C
ANC3COLW        = $7E028D
ANC4COLW        = $7E028E
ANC5COLW        = $7E028F
ANC6COLW        = $7E0290
ANC7COLW        = $7E0291
ANC8COLW        = $7E0292
ANC9COLW        = $7E0293

; Ancilla Z velocity
; LENGTH: 0x0A
ANC0VZ          = $7E0294
ANC1VZ          = $7E0295
ANC2VZ          = $7E0296
ANC3VZ          = $7E0297
ANC4VZ          = $7E0298
ANC5VZ          = $7E0299
ANC6VZ          = $7E029A
ANC7VZ          = $7E029B
ANC8VZ          = $7E029C
ANC9VZ          = $7E029D

; Ancilla Z coordinate
; LENGTH: 0x0A
ANC0Z           = $7E029E
ANC1Z           = $7E029F
ANC2Z           = $7E02A0
ANC3Z           = $7E02A1
ANC4Z           = $7E02A2
ANC5Z           = $7E02A3
ANC6Z           = $7E02A4
ANC7Z           = $7E02A5
ANC8Z           = $7E02A6
ANC9Z           = $7E02A7

; Ancilla Z subpixel velocity
; LENGTH: 0x0A
ANC0SUBZ        = $7E02A8
ANC1SUBZ        = $7E02A9
ANC2SUBZ        = $7E02AA
ANC3SUBZ        = $7E02AB
ANC4SUBZ        = $7E02AC
ANC5SUBZ        = $7E02AD
ANC6SUBZ        = $7E02AE
ANC7SUBZ        = $7E02AF
ANC8SUBZ        = $7E02B0
ANC9SUBZ        = $7E02B1

; FREE RAM: 0x0E
UNUSED_7E02B2   = $7E02B2
UNUSED_7E02B3   = $7E02B3
UNUSED_7E02B4   = $7E02B4
UNUSED_7E02B5   = $7E02B5
UNUSED_7E02B6   = $7E02B6
UNUSED_7E02B7   = $7E02B7
UNUSED_7E02B8   = $7E02B8
UNUSED_7E02B9   = $7E02B9
UNUSED_7E02BA   = $7E02BA
UNUSED_7E02BB   = $7E02BB
UNUSED_7E02BC   = $7E02BC
UNUSED_7E02BD   = $7E02BD
UNUSED_7E02BE   = $7E02BE
UNUSED_7E02BF   = $7E02BF

; Tile act bitfield used by intraroom stairs
; High byte unused but written.
; ssss nnnn
;   n - north
;   s - south
; SEE TILE ACT NOTES
TACTAUTOST      = $7E02C0
TACTAUTOSTH     = $7E02C1

; Caches TACTMANIPL in a couple locations, but never read.
TACTMCACHE      = $7E02C2

; Push block falling step and timer
BLKFALLS        = $7E02C3
BLKFALLT        = $7E02C4

; Some weird timer/flag when doing very long jumps or recoils.
; Seems to cause Link to hesitate briefly before actually jumping.
JUMPDELAY       = $7E02C5

; Seems to be a counter for Link's bouncing and how many shifts right to perform.
BOUNCESHIFT     = $7E02C6

; Link's recoil controlled by above before writing to KNOCKBZ.
REBOUNCE        = $7E02C7

; FREE RAM: 0x01
UNUSED_7E02C8   = $7E02C8

; Used for indexing the fall animation.
PITANIMX        = $7E02C9

; Timer that counts up to 0x1F when pushing a wall into falling.
; TODO unsure of what it accomplishes.
PUSHFALL        = $7E02CA

; TODO swim stroke timer?
STROKETIME      = $7E02CB

; Acts as a step offset for swimming.
; 0, 1, 2
SWIMOFF         = $7E02CC

; Countdown timer for follower messages.
YELL            = $7E02CD
YELLH           = $7E02CE

; Index from 0x00 to 0x13 for follower animation step index. Used for reading data.
FLWANIMIR       = $7E02CF

; Flag set when using hookshot with a follower. Forces game mode check.
FLWHOOK         = $7E02D0

; Caches FLWANIMIW when hookshotting is finished.
FLWHOOKI        = $7E02D1

; Countdown timer preventing followers from being regrabbed after dropping for a brief period.
FLWGRABTIME     = $7E02D2

; Index from 0x00 to 0x13 for follower animation step index. Used for writing data.
FLWANIMIW       = $7E02D3

; Zeroed in one location; never read.
JUNK_7E02D4     = $7E02D4

; FREE RAM: 0x01
UNUSED_7E02D5   = $7E02D5

; Zeroed by followers; never read.
JUNK_7E02D6     = $7E02D6

; TODO
; Seems to be something with overriding properties.
FLWREPRI        = $7E02D7

; Holds ID of item receipt items.
ITEMGETID       = $7E02D8

; Written to with a value of 0x60 when receiving an item, but never read.
JUNK_7E02D9     = $7E02D9

; Pose for item receipt.
;   0x00 - No pose
;   0x01 - 1 hand up
;   0x02 - 2 hands up
BRANDISH        = $7E02DA

; Flag that prevents warp tiles from activating.
; Set during world changes, but always seems cleared before it can be read.
NOWARP          = $7E02DB

; Cache of Link's coordinates used during slope kickback routine.
SKICKXL         = $7E02DC
SKICKXH         = $7E02DD
SKICKYL         = $7E02DE
SKICKYH         = $7E02DF

; Should Link use bunny graphics?
;   0x00 - Link
;   0x01 - Bunny
BUNNY           = $7E02E0

; Flag set when Link is poofing from cape or bunny.
POOFING         = $7E02E1

; Countdown timer for poofing.
POOFTIME        = $7E02E2

; Cooldown timer for the sword after dashing through an enemy
; Is set on hits in general, but often irrelevant.
SWORDCOOL       = $7E02E3

; Flags cutscenes.
; Various values are written here, but all nonzero values behave the same.
CUTSCENE        = $7E02E4

; Tile act bitfield used by chests
; High byte unused but written.
; .... cccc
; SEE TILE ACT NOTES
TACTCHEST       = $7E02E5
TACTCHESTH      = $7E02E6

; Tile act bitfield used by chests, etc.
; cccc gggg
;   g - graves
;   c - big chests
; SEE TILE ACT NOTES
TACTCHEST2      = $7E02E7

; Tile act bitfield used by spikes and pegs
; pppp ssss
;   s - spikes
;   p - pegs
; SEE TILE ACT NOTES
TACTSPIKE       = $7E02E8

; TODO
; Item receipt method
RECEIPTID       = $7E02E9

; Tile type of chests referenced when opening a chest.
; High byte unused but written.
CHESTTILE       = $7E02EA
CHESTTILEH      = $7E02EB

; When near a liftable ancilla, this holds its slot+1.
LIFTIDX         = $7E02EC

; Flag for being near a plaque.
PLAQUED         = $7E02ED

; Tile act bitfield used by spike floors and hylian plaques
; ssss pppp
;   s - spike floor
;   p - plaques
; SEE TILE ACT NOTES
TACTSPLQ        = $7E02EE

; Tile act bitfield used by breakables and entrances
; bbbb dddd
;   d - entrance
;   b - breakables
; SEE TILE ACT NOTES
TACTBRK         = $7E02EF

; When set, the Desert Palace barriers can activate.
DSRTACT         = $7E02F0

; Starts at 0x40 and counts down to 0x20
; If it could reach 0x0F (which it can't), Link would stop moving
DASHSTOP        = $7E02F1

; Flags messages as already received from a follower via dynamic bitfield.
FLWTALKED       = $7E02F2

; Zeroed in one location, but otherwise unused.
JUNK_7E02F3     = $7E02F3

; Used to temporarily cache SPRLIFT.
LIFTCACHE       = $7E02F4

; Indicates somaria platform status.
;   0x00 - Not on platform
;   0x01 - On platform
;   0x02 - On platform and moving
SOMPLAT         = $7E02F5

; Tile act bitfield used by hookshottables and flaggable doors
; dddd hhhh
;   d - flaggable doors
;   h - hookshottable tiles
; SEE TILE ACT NOTES
TACTHOOK        = $7E02F6

; Tile act bitfield used by  rupees
; bbbb rrrr
;   b - rupee tiles (low)
;   r - rupee tiles (high)
; SEE TILE ACT NOTES
TACTRUPEE       = $7E02F7

; When set, guarantees a thud on landing.
THUD            = $7E02F8

; When set, prevents follower from drawing and forces a game mode check.
FLWNODRAW       = $7E02F9

; Set when near a draggable statue. Causes Link to drag.
STATUE          = $7E02FA

; FREE RAM: 0x05
UNUSED_7E02FB   = $7E02FB
UNUSED_7E02FC   = $7E02FC
UNUSED_7E02FD   = $7E02FD
UNUSED_7E02FE   = $7E02FE
UNUSED_7E02FF   = $7E02FF

;---------------------------------------------------------------------------------------------------

; Step counter for Y-item animations. Also used for zap.
ITEMSTEP        = $7E0300

; Bitfield for Y-item usage.
; See also: USEY2
; bp.a xzhr
;   b - boomerang
;   p - powder
;   a - bow
;   x - tested with hammer, but never set
;   z - tested with rods, but never set
;   h - hammer
;   r - rods
USEY1           = $7E0301

; Seems to be a flag for intraframe wall collisions, indicating pushback.
COLLIDE         = $7E0302

; Currently equipped Y item. See: MenuID_to_EquipID
CURY            = $7E0303

; Indicates the actively used Y item; copied from CURY
ACTY            = $7E0304

; Only read in one location, never written.
; If equal to 0x01, tossing ancillae will clear TMWQ and TSWQ.
NOWINDOW        = $7E0305

; Written to with the value of AINDEX in one location. Never read.
AINDEX2         = $7E0306

; Contains ACTY minus 4 to get rod type.
;   0x01 - Fire rod
;   0x02 - Ice rod
; Any other value would crash the game on use.
RODTYPE         = $7E0307

; Bitfield for certain A button presses.
; h... ..dt
;   h - carrying/tossing item (including wishing wells)
;   d - Desert prayer
;   t - tree pull
ACTA            = $7E0308

; Bitfield for carry-related actions.
; .... ..tl
;   t - tossing object
;   l - lifting object
CARRY           = $7E0309

; Indexes Link's grab animation, but all nonzero values seem to behave the same way.
STRAIN          = $7E030A

; Timer that handles Link's pull animation
STRAINTIME      = $7E030B

; FREE RAM: 0x01
UNUSED_7E030C   = $7E030C

; Indexes Link's sweat drops animation
SWEAT           = $7E030D

; Only ever zeroed in bank07. ADC in bank0D for some reason.
DEBUG_7E030E    = $7E030E

; FREE RAM: 0x01
UNUSED_7E030F   = $7E030F

; Moving floor velocity like Mothula or Ice Place
FLOORVYL        = $7E0310
FLOORVYH        = $7E0311
FLOORVXL        = $7E0312
FLOORVXH        = $7E0313

; When near a liftable sprite, this holds its slot +1.
SPRLIFT         = $7E0314

; TODO
; Some type of flag set for collision checks
COLFLAG         = $7E0315

; Flags which axes are being moved on? TODO
MVONY           = $7E0316
MVONX           = $7E0317

; Scratch spaced used for caching Link's coordinates during moving floor routines.
FLRYL           = $7E0318
FLRYH           = $7E0319
FLRXL           = $7E031A
FLRXH           = $7E031B

; Animation step/graphics for spin attack animations; including medallions.
SPINGFX         = $7E031C
SPINSTEP        = $7E031D

; Data offset based on direction for SPINSTEP.
SPINOFF         = $7E031E

; Countdown timer for invulnerability frames. Induces blinking.
IFRAMES         = $7E031F

; Tile act bitfield used by overlay masks
; High byte unused but written.
; .... cccc
;   c - Mask 0C
; SEE TILE ACT NOTES
TACTMASK0C      = $7E0320
TACTMASK0CH     = $7E0321

; TODO some bitfield flagging interaction with mask0C?
MASK0CON        = $7E0322

; Copies DIR for use during Link's OAM routines.
; Explicitly set to down (0x02) for Desert prayer.
OAMDIR          = $7E0323

; When nonzero, prevents medallion spell ancillae from being added.
; Flagged by medallion use routines to prevent multiple from being added.
ADDSPELL        = $7E0324

; Zeroed by medallion ancillae, but never read.
JUNK_7E0325     = $7E0325

; Momentum for ice/swimming
; When a direction is released, these count down to 0.
MOMENTUMY       = $7E0326
MOMENTUMYH      = $7E0327
MOMENTUMX       = $7E0328
MOMENTUMXH      = $7E0329

; Number of times the stroke timer has counted down (stops at 4)
STROKETIMECNT   = $7E032A

; Used to index accelaration for thrust changes.
; Max expected value is 0x0002
SWIMIY          = $7E032B
SWIMIYH         = $7E032C
SWIMIX          = $7E032D
SWIMIXH         = $7E032E

; Flags checking swim accleration resets
SWIMRESY        = $7E032F
SWIMRESYH       = $7E0330
SWIMRESX        = $7E0331
SWIMRESXH       = $7E0332

; Current tile type torch or lamp are interacting with
FIRETILE        = $7E0333

; Max accelarations when swimming
SWIMPYL         = $7E0334
SWIMPYH         = $7E0335
SWIMPXL         = $7E0336
SWIMPXH         = $7E0337

; Seems to flag acceleration to have on each axis; high byte unused.
AFLAGY          = $7E0338
AFLAGYH         = $7E0339
AFLAGX          = $7E033A
AFLAGXH         = $7E033B

; Swim acceleration and thrust, related to gaining speed in the water.
SWIMACCELY      = $7E033C
SWIMTHRUSTY     = $7E033D
SWIMACCELX      = $7E033E
SWIMTHRUSTX     = $7E033F

; Bitfield for swim direction inputs
; .... udlr
;   u - up
;   d - down
;   l - left
;   r - right
SWIMDIR         = $7E0340

; Tile act bitfield used by water
; High byte unused but written.
; bbbb dddd
;   d - deep water
;   b - tile 0B TODO
; SEE TILE ACT NOTES
TACTDEEPW       = $7E0341
TACTDEEPWH      = $7E0342

; Tile act bitfield used by tile 0A and another nothing
; High byte unused but written.
; .... aaaa
; SEE TILE ACT NOTES
TACT0A          = $7E0343
TACT0AH         = $7E0344

; Set when on deep water.
DEEPWATER       = $7E0345

; Used to swap Link's palette between 0 and 7.
; Takes on the values of 0x0E00 or 0x0000, depending on COLROOM.
LINKPALIL       = $7E0346
LINKPALIH       = $7E0347

; Tile act bitfield used by ice.
; High byte unused but written.
; iiii gggg
;   i - ice palace ice
;   g - gt ice
; SEE TILE ACT NOTES
TACTICE         = $7E0348
TACTICEH        = $7E0349

; Appears to flag what type of ice floor Link is walking on
; .... ..ig
;   i - ice palace ice
;   g - gt ice
ICEFLOOR        = $7E034A

; Debug flag related to the rods and item menu scrolling.
; Written, but never read.
DEBUGROD        = $7E034B

; Tile act bitfield used by overlay mask 1C
; High byte unused but written.
; .... mmmm
; SEE TILE ACT NOTES
TACTMASK1C      = $7E034C
TACTMASK1CH     = $7E034D

; TODO
; Something with Link's OAM priority and somaria platform.
SOMPRI          = $7E034E

; Non zero when stroking while swimming
STROKE          = $7E034F

; Written to in various places, but never read.
DEBUG_7E0350    = $7E0350

; Controls the graphical effect around Link's feet
;   0x00 - shadow handler
;   0x01 - water ripple
;   0x02 - grass
FEETS           = $7E0351

; Used to index an offset into OAM buffer for Link's draw routines.
LOAMXL          = $7E0352
LOAMXH          = $7E0353

; Index of animation for Link's auxiliary sprite objects.
AUXDRAW         = $7E0354

; Animation step and timer for water ripples and tall grass at Link's feet.
SLOSHSTEP       = $7E0355
SLOSHTIME       = $7E0356

; Tile act bitfield used by thick grass and warps
; High byte unused but written.
; wwww tttt
;   t - thick grass
;   w - warp
; SEE TILE ACT NOTES
TACTTHICK       = $7E0357
TACTTHICKH      = $7E0358

; Tile act bitfield used by shallow water
; High byte unused but written.
; .... ssss
; SEE TILE ACT NOTES
TACTSHALLOW     = $7E0359
TACTSHALLOWH    = $7E035A

; Tile act bitfield used by diggable ground.
; High byte unused but written.
; .... dddd
; SEE TILE ACT NOTES
TACTDIG         = $7E035B
TACTDIGH        = $7E035C

; OAM properties of Link's shadow.
SHDWPROPL       = $7E035D
SHDWPROPH       = $7E035E

; Flags whether the boomerang is already active.
; Also used by GAME OVER text for indexing.
BOOMOUT         = $7E035F

; When set, recoils will cause Link to feel electricity
ZAP             = $7E0360

; FREE RAM: 0x01
UNUSED_7E0361   = $7E0361

; Something with hopping; often takes value of SPEEDZ
; TODO
HOPVZ2          = $7E0362
HOPVZ2H         = $7E0363

; Acts as a Z-coordinate sort of when jumping ledges
HOPZ            = $7E0364
HOPZH           = $7E0365

; Tile act bitfield used by liftables in some weird way?? TODO
; High byte unused but written.
; .... llll
; SEE TILE ACT NOTES
TACTLIFTC       = $7E0366
TACTLIFTCH      = $7E0367

; Tile type of liftables, usually obtained from LIFTIDX>>1
; Also contains values checked for underworld tile replacement.
LIFTX           = $7E0368

; Same as LIFTX, but never read.
LIFTX2          = $7E0369

; Liftable index set during TileBehavior_Liftable ; high byte always 00
LIFTBX          = $7E036A

; Flags Link being in the death spin animation
DIESPIN         = $7E036B

; Index for which action to perform when A is pressed.
;   0x00 - Prayer (unused)
;   0x01 - Lift/Carry/Throw
;   0x02 - Dash
;   0x03 - Grab
;   0x04 - Read
;   0x05 - Open chest
;   0x06 - Drag statue
;   0x07 - Rupee pull (not actually set)
AINDEX          = $7E036C

; Tile act bitfield used by ledges
; ssss nnnn
;   n - north
;   s - south
; SEE TILE ACT NOTES
TACTHOPNS       = $7E036D

; Tile act bitfield used by horizontal and diagonal north ledges
; dddd hhhh
;   h - east/west ledge
;   d - diagonal north
; SEE TILE ACT NOTES
TACTHOPHD       = $7E036E

; Tile act bitfield used by diagonal south ledges
; .... ssss
TACTSD          = $7E036F

; Tile act bitfield used by weird things in EP
; dddd cccc
; SEE TILE ACT NOTES
TACTEP          = $7E0370

; Timer used to start and restart Link's pushing animation.
PUSHTIME        = $7E0371

; Flags dashing; known for spinspeed.
DASHING         = $7E0372

; Damage to deal to Link
HURTME          = $7E0373

; Dash charge timer
DASHTIME        = $7E0374

; Countdown timer for hopping a ledge. Default start at 0x13.
HOPTIME         = $7E0375

; .... ..sw
; s - grabbing statue
; w - grabbing wall
GRABBING        = $7E0376

; Frame of grabbing?
GRABFRAME       = $7E0377

; Timer related to changing directions on inter-room spiral stairs.
STAIRDIRT       = $7E0378

; When set, the A press routine is short circuited.
NOA             = $7E0379

; Bitfield for Y-item usage.
; See also: USEY1
; ..bn ch.s
;   b - book
;   n - net
;   c - canes
;   h - hookshot
;   s - shovel
USEY2           = $7E037A

; Prevents Link from recieving damage.
NOPAIN          = $7E037B

; Sleep submode for link state 0x16
SLEEPMODE       = $7E037C

; Determines how exactly Link is in bed.
;   0x00 - sleep
;   0x01 - awake
;   0x02 - jumping out
SLEEPSTAGE      = $7E037D

; Bitfield for hookshot drag stuff.
; .... ..ld
;   l - set when crossing a hop tile; seems to flag which layer to read from.
;   d - hookshot drag in effect
HOOKDRAG        = $7E037E

; When nonzero, Link can walk through walls and use a 2-way mirror.
CHEAT           = $7E037F

; General use variable for ancillae. Only intended for front slots.
; LENGTH: 0x05
ANC0MISCA       = $7E0380
ANC1MISCA       = $7E0381
ANC2MISCA       = $7E0382
ANC3MISCA       = $7E0383
ANC4MISCA       = $7E0384

; General use variable for ancillae.
; LENGTH: 0x0A
ANC0MISCB       = $7E0385
ANC1MISCB       = $7E0386
ANC2MISCB       = $7E0387
ANC3MISCB       = $7E0388
ANC4MISCB       = $7E0389
ANC5MISCB       = $7E038A
ANC6MISCB       = $7E038B
ANC7MISCB       = $7E038C
ANC8MISCB       = $7E038D
ANC9MISCB       = $7E038E

; General use variable for ancillae. Only intended for front slots.
; Only used by hammer stars and gravestones.
; LENGTH: 0x05
ANC0MISCC       = $7E038F
ANC1MISCC       = $7E0390
ANC2MISCC       = $7E0391
ANC3MISCC       = $7E0392
ANC4MISCC       = $7E0393

; General use variable for ancillae. Only intended for front slots.
; Often used as a timer.
; LENGTH: 0x05
ANC0MISCD       = $7E0394
ANC1MISCD       = $7E0395
ANC2MISCD       = $7E0396
ANC3MISCD       = $7E0397
ANC4MISCD       = $7E0398

; Temporary cache of boomerang coordinates used for placing the wall hit spark.
BOOMHITYL       = $7E0399
BOOMHITYH       = $7E039A
BOOMHITXL       = $7E039B
BOOMHITXH       = $7E039C

; Slot index of active hookshot.
; Also used by boomerang to flag directions when first thrown.
HOOKSLOT        = $7E039D

; FREE RAM: 0x01
UNUSED_7E039E   = $7E039E

; General use variable for ancillae. Only intended for front slots.
; Mainly used as a timer.
; LENGTH: 0x05
ANC0MISCE       = $7E039F
ANC1MISCE       = $7E03A0
ANC2MISCE       = $7E03A1
ANC3MISCE       = $7E03A2
ANC4MISCE       = $7E03A3

; General use variable for ancillae. Only intended for front slots.
; LENGTH: 0x05
ANC0MISCF       = $7E03A4
ANC1MISCF       = $7E03A5
ANC2MISCF       = $7E03A6
ANC3MISCF       = $7E03A7
ANC4MISCF       = $7E03A8

; General use variable for ancillae. Only intended for front slots.
; LENGTH: 0x05
ANC0MISCG       = $7E03A9
ANC1MISCG       = $7E03AA
ANC2MISCG       = $7E03AB
ANC3MISCG       = $7E03AC
ANC4MISCG       = $7E03AD

; Technically unreferenced but misslotting...
; FREE RAM: 0x03
UNUSED_7E03AE   = $7E03AE
UNUSED_7E03AF   = $7E03AF
UNUSED_7E03B0   = $7E03B0

; General use variable for ancillae. Only intended for front slots.
; LENGTH: 0x05
ANC0MISCH       = $7E03B1
ANC1MISCH       = $7E03B2
ANC2MISCH       = $7E03B3
ANC3MISCH       = $7E03B4
ANC4MISCH       = $7E03B5

; Bombed door properties
BOMB0ATXL       = $7E03B6
BOMB0ATXH       = $7E03B7
BOMB1ATXL       = $7E03B8
BOMB1ATXH       = $7E03B9
BOMB0ATYL       = $7E03BA
BOMB0ATYH       = $7E03BB
BOMB1ATYL       = $7E03BC
BOMB1ATYH       = $7E03BD
BOMB0ATDIR      = $7E03BE
BOMB1ATDIR      = $7E03BF

; Timer for door debris existing
DEBRIS0T        = $7E03C0
DEBRIS1T        = $7E03C1

; Step counter for door debris based on timer. Counts up to 0x04.
; Used by other ancilla for dumb reasons.
DEBRIS0I        = $7E03C2
DEBRIS1I        = $7E03C3

; Used to search through ancilla when every front slot is occupied.
ASEARCH         = $7E03C4

; General use variable for ancillae. Only intended for front slots.
; LENGTH: 0x05
ANC0MISCI       = $7E03C5
ANC1MISCI       = $7E03C6
ANC2MISCI       = $7E03C7
ANC3MISCI       = $7E03C8
ANC4MISCI       = $7E03C9

; General use variable for ancillae. Only intended for front slots.
; LENGTH: 0x05
ANC0MISCJ       = $7E03CA
ANC1MISCJ       = $7E03CB
ANC2MISCJ       = $7E03CC
ANC3MISCJ       = $7E03CD
ANC4MISCJ       = $7E03CE

; General use variable for ancillae. Only intended for front slots.
; LENGTH: 0x05
ANC0MISCK       = $7E03CF
ANC1MISCK       = $7E03D0
ANC2MISCK       = $7E03D1
ANC3MISCK       = $7E03D2
ANC4MISCK       = $7E03D3

; Technically unused, but misslotting...
UNUSED_7E03D4   = $7E03D4

; General use variable for ancillae. Only intended for front slots.
; Used by the carry routine? TODO
; LENGTH: 0x05
ANC0MISCL       = $7E03D5
ANC1MISCL       = $7E03D6
ANC2MISCL       = $7E03D7
ANC3MISCL       = $7E03D8
ANC4MISCL       = $7E03D9

; Technically unused, but misslotting...
UNUSED_7E03DA   = $7E03DA

; Used by somaria to count the number of button tiles it's on.
; Only intended for front slots.
; LENGTH: 0x05
SOM0BTN         = $7E03DB
SOM1BTN         = $7E03DC
SOM2BTN         = $7E03DD
SOM3BTN         = $7E03DE
SOM4BTN         = $7E03DF

; Technically unused, but misslotting...
UNUSED_7E03E0   = $7E03E0
UNUSED_7E03E1   = $7E03E1
UNUSED_7E03E2   = $7E03E2
UNUSED_7E03E3   = $7E03E3

; Tile type ID for ancilla. Only intended for front slots.
; LENGTH: 0x05
ANC0TILE        = $7E03E4
ANC1TILE        = $7E03E5
ANC2TILE        = $7E03E6
ANC3TILE        = $7E03E7
ANC4TILE        = $7E03E8

; Flag indicating a gravestone is active.
GRAVEON         = $7E03E9

; Flag that prevents lifting ancilla. Only intended for front slots.
; LENGTH: 0x05
ANC0NOLIFT      = $7E03EA
ANC1NOLIFT      = $7E03EB
ANC2NOLIFT      = $7E03EC
ANC3NOLIFT      = $7E03ED
ANC4NOLIFT      = $7E03EE

; Forces Link into a sword-up pose
SWORDUP         = $7E03EF

; Countdown timer for being allowed to use the flute.
WHISTLE         = $7E03F0

; Tile act bitfield used by conveyor belts
; rrrrllll dddduuuu
;   u - upwards
;   d - downwards
;   l - leftwards
;   r - rightwards
; SEE TILE ACT NOTES
TACTBELTUD      = $7E03F1
TACTBELTLR      = $7E03F2

; Conveyor type
;   0x00 - none
;   0x01 - up
;   0x02 - down
;   0x03 - left
;   0x04 - right
CONVEYOR        = $7E03F3

; Counts the number of transit tiles in a room; checked by somaria.
; Technically 2 bytes, but you shouldn't have that many of these objects in a room...
LINECOUNT       = $7E03F4

; Timer for temporary bunny.
TEMPBUNTM       = $7E03F5
TEMPBUNTMH      = $7E03F6

; Flag for ticking TEMPBUNTIME
TEMPBUN         = $7E03F7

; Flag for being near a rupee pull.
ATPULL          = $7E03F8

; Countsdown from 4 to prevent toggling bit 1 of HOOKDRAG.
; Only seems to be that way to prevent toggling every frame.
HOOKWAIT        = $7E03F9

; Bit 8 of OAM X coordinate for drawing Link's sword and shield
EQUOFFXL        = $7E03FA
EQUOFFXH        = $7E03FB

; Y-item override for minigames.
;   0x00 - Selected item
;   0x01 - Shovel
;   0x02 - Bow
YOVERRIDE       = $7E03FC

; Flags flute ducks summoned inside.
INBIRD          = $7E03FD

; FREE RAM: 0x02
UNUSED_7E03FE   = $7E03FE
UNUSED_7E03FF   = $7E03FF

;---------------------------------------------------------------------------------------------------

; Doors unlocked in a given room
; High byte is the main one used and sent to SRAM.
; It is copied to the low byte for no reason when loading a room.
UNLOCKED2       = $7E0400
UNLOCKED        = $7E0401

; Doors opened (not necessarily unlocked) in a given room
; Not a very consistent reference.
; Definitely flags the TR eye door and some shutters
OPENED          = $7E0402

; Items taken in a room
; Bit 7 prevents damage from bombs and spikes
; bkut sehc
;   b - boss kill / heart container
;   k - key / heart piece / crystal (unused for crystals, but prevents them from dropping)
;   u - 2nd key / heart piece
;   t - chest 4 / rupee floor / swamp drains / bombable floor / mire wall
;   s - chest 3 / pod or desert wall
;   e - chest 2
;   h - chest 1
;   c - chest 0
TAKEN           = $7E0403

; FREE RAM: 0x01
UNUSED_7E0404   = $7E0404

; Read by water flooding, but never written.
JUNK_7E0405     = $7E0405

; FREE RAM: 0x02
UNUSED_7E0406   = $7E0406
UNUSED_7E0407   = $7E0407

; Quadrant visits
; High byte unused
; .... abcd
;   a - north west
;   b - north east
;   c - south west
;   d - south east
VISITED         = $7E0408
VISITEDH        = $7E0409

; Copy of OWSCR
; High byte has an explicit STZ
OWSCR2          = $7E040A
OWSCR2H         = $7E040B

; Dungeon IDs, multiples of 2.
; High byte mostly unused but sometimes read.
DUNGEON         = $7E040C
DUNGEONH        = $7E040D

; Dungeon room layout
; High byte zeroed but unused
LAYOUT          = $7E040E
LAYOUTH         = $7E040F

; Transition direction on overworld.
; High byte unused
; .... udlr
;   u - north
;   d - south
;   l - west
;   r - east
OWTDIR          = $7E0410
OWTDIRH         = $7E0411

; Incremental VRAM upload step
UPINCSTEP       = $7E0412

; FREE RAM: 0x01
UNUSED_7E0413   = $7E0413

; TODO
; Background stuff
BGACT           = $7E0414
BGACTH          = $7E0415

; Designates which vector to follow when updating the overworld tilemap
; High byte seems unused
MAPPANVCT       = $7E0416
MAPPANVCTH      = $7E0417

; Transition direction
; For some reason, parity is flipped between overworld and underworld
; High byte is zeroed but not read
;          Overworld   Underworld
;   0x00 - North       South
;   0x01 - South       North
;   0x02 - West        East
;   0x03 - East        West
TRANDIR         = $7E0418
TRANDIRH        = $7E0419

; Flags for room tags to move a wall
; Also flags moving floor TODO
MVWALL          = $7E041A
MVWALLH         = $7E041B

; Seems to be a subpixel for moving walls and floors
MWSUBL          = $7E041C
MWSUBH          = $7E041D

; Used to saved an index value for moving walls
MWDRAWXL        = $7E041E
MWDRAWXH        = $7E041F

; Zeroed once, but never read.
JUNK_7E0420     = $7E0420
JUNK_7E0421     = $7E0421

; BG1 relative offset from BG2 when $0428 is flagged
BG1OFFHL        = $7E0422
BG1OFFHH        = $7E0423
BG1OFFVL        = $7E0424
BG1OFFVH        = $7E0425

; FREE RAM: 0x02
UNUSED_7E0426   = $7E0426
UNUSED_7E0427   = $7E0427

; TODO something with scrolling bg1
UNKNOWN_7E0428  = $7E0428

; FREE RAM: 0x01
UNUSED_7E0429   = $7E0429

; Tilemap address of moving wall
MWALLTMAP       = $7E042A
MWALLTMAPH      = $7E042B

; Used to index manipulable objects when building rooms; pots, blocks, etc.
MANIPINDEX      = $7E042C
MANIPINDEXH     = $7E042D

; Used to index torches when building rooms
TORCHINDEX      = $7E042E
TORCHINDEXH     = $7E042F

; Flags whether Link is standing on a toggle switch (not hold switch).
ONSWITCH        = $7E0430
ONSWITCHH       = $7E0431

; Used to index star tile arrays when building rooms
STARINDEX       = $7E0432
STARINDEXH      = $7E0433

; FREE RAM: 0x02
UNUSED_7E0434   = $7E0434
UNUSED_7E0435   = $7E0435

; Seems to flag the eye door to Turtle Rock compass.
; Defaults to 0xFFFF.
EYEDOORL        = $7E0436
EYEDOORH        = $7E0437

; Indexes stairs when building rooms.
STAIRSI         = $7E0438
STAIRSIH        = $7E0439
STAIRSI2        = $7E043A
STAIRSI2H       = $7E043B

; Indexes all sorts of inter-room stairs
; TODO split
RSTAIRSI        = $7E043C
RSTAIRSIH       = $7E043D
RSTAIRSI2       = $7E043E
RSTAIRSI2H      = $7E043F
RSTAIRSI3       = $7E0440
RSTAIRSI3H      = $7E0441
RSTAIRSI4       = $7E0442
RSTAIRSI4H      = $7E0443
RSTAIRSI5       = $7E0444
RSTAIRSI5H      = $7E0445
RSTAIRSI6       = $7E0446
RSTAIRSI6H      = $7E0447
RSTAIRSI7       = $7E0448
RSTAIRSI7H      = $7E0449

; Identifies the layer interaction behavior of a room.
; Also known as "EG Strength"
EGSTR           = $7E044A
EGSTRH          = $7E044B

; FREE RAM: 0x02
UNUSED_7E044C   = $7E044C
UNUSED_7E044D   = $7E044D

; Indexes layer swap doors when building rooms.
LSWAPI          = $7E044E
LSWAPIL         = $7E044F

; Indexes dungeon swap doors when building rooms.
DSWAPI          = $7E0450
DSWAPIH         = $7E0451

; Flags layout changes from moving wall
WALLYT          = $7E0452
WALLYTH         = $7E0453

; Flags active exploding walls
BLASTWALL       = $7E0454
BLASTWALLH      = $7E0455

; Indexes exploding walls when building rooms.
BLASTWI         = $7E0456
BLASTWIH        = $7E0457

; Flags having lamp while in a dark room
; High byte always expected to be 0x00.
DARKLAMP        = $7E0458
DARKLAMPH       = $7E0459

; Number of torches lit in a room
; High byte always expected to be 0x00.
LIGHT           = $7E045A
LIGHTH          = $7E045B

; Used in increments of 0x04 to draw quadrants.
; High byte always 0x00
QUADOFF         = $7E045C
QUADOFFH        = $7E045D

; Indexes a room object with an unreachable routine.
UNINDEX         = $7E045E
UNINDEXH        = $7E045F

; Indexes doors when building rooms
DOORX           = $7E0460
DOORXH          = $7E0461

; Stair tile type when using inter room stairs
;   0x04 - upwards?
;         this bit is checked for being reset for incrementing floor counter on transitions
STAIRATTR       = $7E0462

; Gets a value from above, but this appears useless.
JUNK_7E0463     = $7E0463

; Countdown timer used when climbing stairs.
STAIRSTEP       = $7E0464

; FREE RAM: 0x01
UNUSED_7E0465   = $7E0465

; Takes on SHUTTER ^ 0x0001 when a push block covers a switch.
BLKSWITCH       = $7E0466
BLKSWITCHH      = $7E0467

; Flags shutter doors being down.
SHUTTER         = $7E0468
SHUTTERH        = $7E0469

; Floor 1 draw
FLOOR1          = $7E046A
FLOOR1H         = $7E046B

; TODO "collision"
BG1FX           = $7E046C

; FREE RAM: 0x03
UNUSED_7E046D   = $7E046D
UNUSED_7E046E   = $7E046E
UNUSED_7E046F   = $7E046F

; Used for timing and indexing the dam flood. Counts up to 0x40
DAMTIME         = $7E0470
DAMTIMEH        = $7E0471

; Tilemap location of watergate in the dam.
DAMTMAP         = $7E0472
DAMTMAPH        = $7E0473

; Direction a push block was pushed.
; High byte always 0x00.
;   0x00 - up
;   0x02 - down
;   0x04 - left
;   0x06 - right
BLOCKDIR        = $7E0474
BLOCKDIRH       = $7E0475

; More layer, similar to LAYER, but different.
; Sometimes kept in sync.
DLAYER          = $7E0476

; FREE RAM: 0x01
UNUSED_7E0477   = $7E0477

; Number of manipulable objects in a room, x2.
; Kept in sync with MANIPINDEX and TORCHINDEX.
MANIPCOUNT      = $7E0478
MANIPCOUNTH     = $7E0479

; Flags layer adjustments occuring.
; Famous for arming EG.
ARMEG           = $7E047A

; FREE RAM: 0x01
UNUSED_7E047B   = $7E047B

; Flag to adjust the offset of water vomit face drawing.
H20VOMIT        = $7E047C
H20VOMITH       = $7E047D

; Used to index stairs of all types when building rooms.
STAIRSI3        = $7E047E
STAIRSI3H       = $7E047F
STAIRSI4        = $7E0480
STAIRSI4H       = $7E0481
STAIRSI5        = $7E0482
STAIRSI5H       = $7E0483
STAIRSI6        = $7E0484
STAIRSI6H       = $7E0485

; Tilemap index of bomb walls in overworld
BWALLT1         = $7E0486
BWALLT1H        = $7E0487
BWALLT2         = $7E0488
BWALLT2H        = $7E0489

; Stair type interacted with
STAIRID         = $7E048A
STAIRIDH        = $7E048B

; Tile map index of stair interacted with
STAIRT          = $7E048C
STAIRTH         = $7E048D

; Mirrors ROOMID
ROOMIDCOPY      = $7E048E
ROOMIDCOPYH     = $7E048F

; Floor 2 type
FLOOR2          = $7E0490
FLOOR2H         = $7E0491

; Flags previous stair index?
STAIRLI         = $7E0492
STAIRLIH        = $7E0493

; Counts from 0x00 to 0x03 to animate the overworld rain overlay
RAINSTEP        = $7E0494

; FREE RAM: 0x01
UNUSED_7E0495   = $7E0495

; Used to index chests when building rooms.
CHESTINDEX      = $7E0496
CHESTINDEXH     = $7E0497
CHESTINDEX2     = $7E0498
CHESTINDEX2H    = $7E0499

; Indexes south inter-room stairs when building rooms.
SSTAIRI         = $7E049A
SSTAIRIH        = $7E049B
SSTAIRI2        = $7E049C
SSTAIRI2H       = $7E049D
SSTAIRI3        = $7E049E
SSTAIRI3H       = $7E049F

; Timer used to display the floor number on HUD. Counts up to 0x00C0
FLOORTIME       = $7E04A0
FLOORTIMEH      = $7E04A1

; More stair idnexing for some stupid reason...
STAIRSI7        = $7E04A2
STAIRSI7H       = $7E04A3
STAIRSI8        = $7E04A4
STAIRSI8H       = $7E04A5
STAIRSI9        = $7E04A6
STAIRSI9H       = $7E04A7
STAIRSIA        = $7E04A8
STAIRSIAH       = $7E04A9

; If set, entrance loading is treated as respawn.
RESPAWN         = $7E04AA
RESPAWNH        = $7E04AB

; Index for map16 tile change buffes on overworld
M16CHINDX       = $7E04AC
M16CHINDXH      = $7E04AD

; More south auto stairs...
SSTAIRI4        = $7E04AE
SSTAIRI4H       = $7E04AF

; TODO
; Tilemap thing with unused object.
UTMAP           = $7E04B0
UTMAPH          = $7E04B1

; Written to with 0x0492 if the flute spot is dug up. Otherwise zeroed.
; Nonzero values let the flute spawn.
FLUTEX          = $7E04B2
FLUTEXH         = $7E04B3

; Timer used by minigames and big bomb.
HUDTIMER        = $7E04B4

; Counts down from 60 to tick HUDTIMER
HUDTMSUB        = $7E04B5

; Tilemap position of triggers when stood on.
TRIGGERT        = $7E04B6
TRIGGERTH       = $7E04B7

; Set nonzero when you've triggered a message on a door/entrance
; Cleared when you've stepped away.
; High byte always 0x00.
DOORMSG         = $7E04B8
DOORMSGH        = $7E04B9

; Hole overlay ID for star switches.
; High byte always 0x00.
HOLES           = $7E04BA
HOLESH          = $7E04BB

; Current state of star switches.
STARON          = $7E04BC

; FREE RAM: 0x01
UNUSED_7E04BD   = $7E04BD

; Timers for Trinexx shell palette filtering
PTIMEFIRE       = $7E04BE
PTIMEICE        = $7E04BF

; Step counters for Trinexx shell palette filtering
SHELLFIRE       = $7E04C0
SHELLICE        = $7E04C1

; Timer used by milestone items.
MFALLTIME       = $7E04C2

; FREE RAM: 0x01
UNUSED_7E04C3   = $7E04C3

; Number of chances left for chest minigames.
CREDITS         = $7E04C4

; Control's Ganon's vulnerability.
HITPIG          = $7E04C5

; Overworld entrance cutscene to play
OWENTSC         = $7E04C6

; When set, dungeon room tags are not executed.
NOTAG           = $7E04C7

; Counts number of pegs hammered in the stake field.
; Tracks which step is being checked for TR pegs.
PEGCOUNTL       = $7E04C8
PEGCOUNTH       = $7E04C9

; Countdown timer for heart beep. Starts at 32.
BEEP            = $7E04CA

; FREE RAM: 0x25
UNUSED_7E04CA   = $7E04CB

; Countdown timers for torches.
TORCH0          = $7E04F0
TORCH1          = $7E04F1
TORCH2          = $7E04F2
TORCH3          = $7E04F3
TORCH4          = $7E04F4
TORCH5          = $7E04F5
TORCH6          = $7E04F6
TORCH7          = $7E04F7
TORCH8          = $7E04F8
TORCH9          = $7E04F9
TORCHA          = $7E04FA
TORCHB          = $7E04FB
TORCHC          = $7E04FC
TORCHD          = $7E04FD
TORCHE          = $7E04FE
TORCHF          = $7E04FF

;---------------------------------------------------------------------------------------------------

; Used in the overworld as a buffer for tile16
M16BUFF500      = $7E0500
M16BUFF520      = $7E0520

; Properties for manipulable objects. 2 bytes allotted for each.
;   0x0000 - Nothing / stationary push block
;   0x0001 - Triggered push block
;   0x0002 - Moving push block
;   0x0003 - Done moving push block
;   0x0004 - Falling push block
;   0x0005 - Push block on switch
;   0x1010 - Pot requiring lift 1
;   0x1111 - Normal pot
;   0x1212 - Ugly pot
;   0x2020 - Big gray rock
;   0x2121 - Big gray rock
;   0x2222 - Big gray rock
;   0x2323 - Big gray rock
;   0x3030 - Bombable floor
;   0x3131 - Bombable floor
;   0x3232 - Bombable floor
;   0x3333 - Bombable floor
;   0x4040 - Hammer peg
MANIPPROPS      = $7E0500

; Offset into ROM data of the object
MANIPOBJX       = $7E0520

; Tile map position for manipulables
MANIPTMAPX      = $7E0540

; Replacement tiles for manipulables
MANIPRTNW       = $7E0560
MANIPRTSW       = $7E0580
MANIPRTNE       = $7E05A0
MANIPRTSE       = $7E05C0

; Push block properties
; Coordinates take 2 bytes, but only the lower byte is used.
; Marked with U for unused
; X high
PBLOCK0XH       = $7E05E0
PBLOCK0XHU      = $7E05E1
PBLOCK1XH       = $7E05E2
PBLOCK1XHU      = $7E05E3

; X low
PBLOCK0XL       = $7E05E4
PBLOCK0XLU      = $7E05E5
PBLOCK1XL       = $7E05E6
PBLOCK1XLU      = $7E05E7

; Target coordinate in direction, masked with 0x0F
PBLOCK0TARG     = $7E05E8
PBLOCK0TARGU    = $7E05E9
PBLOCK1TARG     = $7E05EA
PBLOCK1TARGU    = $7E05EB

; Y high
PBLOCK0YH       = $7E05EC
PBLOCK0YHU      = $7E05ED
PBLOCK1YH       = $7E05EE
PBLOCK1YHU      = $7E05EF

; Y low
PBLOCK0YL       = $7E05F0
PBLOCK0YLU      = $7E05F1
PBLOCK1YL       = $7E05F2
PBLOCK1YLU      = $7E05F3

; Possibly a vestigial subpixel value? Never actually read
PBLOCK0SUBL     = $7E05F4
PBLOCK0SUBH     = $7E05F5
PBLOCK1SUBL     = $7E05F6
PBLOCK1SUBH     = $7E05F7

; direction
PBLOCK0DIR      = $7E05F8
PBLOCK0DIRU     = $7E05F9
PBLOCK1DIR      = $7E05FA
PBLOCK1DIRU     = $7E05FB

; Block indices
PBLOCK0X        = $7E05FC
PBLOCK1X        = $7E05FD

; FREE RAM: 0x02
UNUSED_7E05FE   = $7E05FE
UNUSED_7E05FF   = $7E05FF

;---------------------------------------------------------------------------------------------------

; Camera scroll boundaries for big (B) and small (A) rooms in directions NSEW
SCROLLAN        = $7E0600
SCROLLANH       = $7E0601
SCROLLBN        = $7E0602
SCROLLBNH       = $7E0603
SCROLLAS        = $7E0604
SCROLLASH       = $7E0605
SCROLLBS        = $7E0606
SCROLLBSH       = $7E0607

SCROLLAW        = $7E0608
SCROLLAWH       = $7E0609
SCROLLBW        = $7E060A
SCROLLBWH       = $7E060B
SCROLLAE        = $7E060C
SCROLLAEH       = $7E060D
SCROLLBE        = $7E060E
SCROLLBEH       = $7E060F

; Seems to be target positions of movement for overworld transitions
OWTARGN         = $7E0610
OWTARGNH        = $7E0611
OWTARGS         = $7E0612
OWTARGSH        = $7E0613

OWTARGW         = $7E0614
OWTARGWH        = $7E0615
OWTARGE         = $7E0616
OWTARGEH        = $7E0617

; Camera scroll trigger areas for directions NSEW
; The higher boundary should always be +2 from the lower in underworld and -2 in overworld
SCROLLATN       = $7E0618
SCROLLATNH      = $7E0619
SCROLLATS       = $7E061A
SCROLLATSH      = $7E061B

SCROLLATW       = $7E061C
SCROLLATWH      = $7E061D
SCROLLATE       = $7E061E
SCROLLATEH      = $7E061F

; Behaves as a subpixel for background 1 overlay scroll on overworld
OWBG1SUBPX      = $7E0620
OWBG1SUBPXH     = $7E0621
OWBG1SUBPY      = $7E0622
OWBG1SUBPYH     = $7E0623

; TODO analyze
; Seems to track overworld camera stuff
; The B variables are always the additive inverse of the A variables
SCRMODYA        = $7E0624
SCRMODYAH       = $7E0625
SCRMODYB        = $7E0626
SCRMODYBH       = $7E0627

SCRMODXA        = $7E0628
SCRMODXAH       = $7E0629
SCRMODXB        = $7E062A
SCRMODXBH       = $7E062B

; Takes on the background 2 scroll values AND 0xFE00
BGOFEHL         = $7E062C
BGOFEHH         = $7E062D
BGOFEVL         = $7E062E
BGOFEVH         = $7E062F

; BG3 horizontal scroll during credits
; Handled by IRQ
CREDITBG3       = $7E0630
CREDITBG3H      = $7E0631

; FREE RAM: 0x03
UNUSED_7E0632   = $7E0632
UNUSED_7E0633   = $7E0633
UNUSED_7E0634   = $7E0634

; Written to with 0x04 in overworld map, but never used.
JUNK_7E0635     = $7E0635

; Controls map zoom level.
;   0 - zoomed out
;   1 - zoomed in
MAPZOOM         = $7E0636

; Appears to just handle zoom control of the mode 7 map in attract mode.
AMAPZOOM        = $7E0637

; Mode7 queues written to during NMI.
M7XQL           = $7E0638
M7XQH           = $7E0639
M7YQL           = $7E063A
M7YQH           = $7E063B

; Target layers for warps/pits and spiral/fat stairs
TGTLAYERWP      = $7E063C
TGTLAYERS1      = $7E063D
TGTLAYERS2      = $7E063E
TGTLAYERS3      = $7E063F
TGTLAYERS4      = $7E0640

; Flips bit 0 every time a push block is pushed, except on lower layer
PUSHFLIP        = $7E0641

; Set high by sprites triggering room tags
SPRTAG          = $7E0642

; FREE RAM: 0x03
UNSUED_7E0643   = $7E0643
UNSUED_7E0644   = $7E0644
UNSUED_7E0645   = $7E0645

; Set by somaria when on a switch
SOMBTN          = $7E0646

; If set, mosaic from electrocution decreases; otherwise, it increases.
MOSAICDIR       = $7E0647

; FREE RAM: 0x28
UNUSED_7E0648   = $7E0648

; Used for calculating water HDMA properties
WCALCLEFT       = $7E0670
WCALCLEFTH      = $7E0671

; FREE RAM: 0x02
UNUSED_7E0672   = $7E0672
UNUSED_7E0673   = $7E0673

; Moving wall stuff TODO
WCALCSIZEY      = $7E0674
WCALCSIZEYH     = $7E0675
WCALCSIZEX      = $7E0676
WCALCSIZEXH     = $7E0677

WCALCMAXX       = $7E0678
WCALCMAXXH      = $7E0679
WCALCMAXY       = $7E067A
WCALCMAXYH      = $7E067B

; Used for spotlight HDMA
IRISTOP         = $7E067C
IRISTOPH        = $7E067D
IRISTYPE        = $7E067E
IRISTYPEH       = $7E067F

; Water HDMA properties for swamp
WTRLEFT         = $7E0680
WTRLEFTH        = $7E0681
WTRTOP          = $7E0682
WTRTOPH         = $7E0683

WTRSIZEY        = $7E0684
WTRSIZEYH       = $7E0685
WTRSIZEX        = $7E0686
WTRSIZEXH       = $7E0687

WTRMAXX         = $7E0688
WTRMAXXH        = $7E0689
WTRMAXY         = $7E068A
WTRMAXYH        = $7E068B

; Flags open doors during transitions
DOOROPEN2       = $7E068C
DOOROPEN        = $7E068D

; Tile map position of door
DOORTM          = $7E068E
DOORTMH         = $7E068F

; Timer for opening doors
DOORTIME        = $7E0690
DOORTIMEH       = $7E0691

; Used as an index for updating doors in the underworld or tile32 on the overworld.
UPDATE32ID      = $7E0692
UPDATE32IDH     = $7E0693

; Cache of door type (tile_attribute & 0x000F)
DOORINDEX       = $7E0694
DOORINDEXH      = $7E0695

; Tilemap location of entrance doors
ENTRTMAP        = $7E0696
ENTRTMAPH       = $7E0697

; Tilemap location of new tile32 objects, such as from graves/rocks
REPLTMAP        = $7E0698
REPLTMAPH       = $7E0699

; Countdown timer for walking out when exiting to overworld.
WALKOUT         = $7E069A

; FREE RAM: 0x01
UNUSED_7E069B   = $7E069B

; Another address for transition direction.
; High byte written but unused.
OWTRANDIR       = $7E069C
OWTRANDIRH      = $7E069D

; TODO
; Something with extra camera scroll values
SCROLLHUHY      = $7E069E
SCROLLHUHX      = $7E069F

; TODO
; Mirror warp variables that can be figured out later
; Star tile (enabled only) in underworld
STARTILES       = $7E06A0

WARP_7E06A0     = $7E06A0
WARP_7E06A1     = $7E06A1
WARP_7E06A2     = $7E06A2
WARP_7E06A3     = $7E06A3
WARP_7E06A4     = $7E06A4
WARP_7E06A5     = $7E06A5
WARP_7E06A6     = $7E06A6
WARP_7E06A7     = $7E06A7
WARP_7E06A8     = $7E06A8
WARP_7E06A9     = $7E06A9
WARP_7E06AA     = $7E06AA
WARP_7E06AB     = $7E06AB
WARP_7E06AC     = $7E06AC
WARP_7E06AD     = $7E06AD
WARP_7E06AE     = $7E06AE
WARP_7E06AF     = $7E06AF

; Tilemap positions of interroom stairs
ISTAIR0SAT      = $7E06B0
ISTAIR0SATH     = $7E06B1
ISTAIR1SAT      = $7E06B2
ISTAIR1SATH     = $7E06B3
ISTAIR2SAT      = $7E06B4
ISTAIR2SATH     = $7E06B5
ISTAIRS3AT      = $7E06B6
ISTAIRS3ATH     = $7E06B7

; Tilemap positions of north stairs
NSTAIR0SAT      = $7E06B8
NSTAIR0SATH     = $7E06B9
NSTAIR1SAT      = $7E06BA
NSTAIR1SATH     = $7E06BB
NSTAIR2SAT      = $7E06BC
NSTAIR2SATH     = $7E06BD
NSTAIRS3AT      = $7E06BE
NSTAIRS3ATH     = $7E06BF

; Tilemap positions of layer toggle doors
BGTOGGLEAT      = $7E06C0

; Tilemap positions of dungeon toggle doors
DTOGGLEAT       = $7E06D0

; Tilemap positions of locked chests and cell doors
CHEST0AT        = $7E06E0
CHEST0ATH       = $7E06E1
CHEST1AT        = $7E06E2
CHEST1ATH       = $7E06E3
CHEST2AT        = $7E06E4
CHEST2ATH       = $7E06E5
CHEST3AT        = $7E06E6
CHEST3ATH       = $7E06E7
CHEST4AT        = $7E06E8
CHEST4ATH       = $7E06E9
CHEST5AT        = $7E06EA
CHEST5ATH       = $7E06EB

; Tilemap positions of south stairs
; TODO
SSTAIRAT        = $7E06EC

; FREE RAM: 0x08
UNUSED_7E06F8   = $7E06F8
UNUSED_7E06F9   = $7E06F9
UNUSED_7E06FA   = $7E06FA
UNUSED_7E06FB   = $7E06FB
UNUSED_7E06FC   = $7E06FC
UNUSED_7E06FD   = $7E06FD
UNUSED_7E06FE   = $7E06FE
UNUSED_7E06FF   = $7E06FF

;---------------------------------------------------------------------------------------------------

; ........ yyyzxxx.
; Caclulated as:
; POSYH - ...yyya.
; POSXH - ...xxxb.
;      z = a|b
OWPOSM          = $7E0700
OWPOSMH         = $7E0701

; FREE RAM: 0x06
UNUSED_7E0702   = $7E0702
UNUSED_7E0703   = $7E0703
UNUSED_7E0704   = $7E0704
UNUSED_7E0705   = $7E0705
UNUSED_7E0706   = $7E0706
UNUSED_7E0707   = $7E0707

; Overworld camera boundaries
; Y edge
OWBGSY          = $7E0708
OWBGSYH         = $7E0709

; Y size
; 0x01F0 on small screens
; 0x03F0 on big screens
OWBGSYO         = $7E070A
OWBGSYOH        = $7E070B

; X edge
OWBGSX          = $7E070C
OWBGSXH         = $7E070D

; X size
; 0x003E on small screens
; 0x007E on big screens
OWBGSXO         = $7E070E
OWBGSXOH        = $7E070F

; Set this flag high to skip OAM char data updates
; High byte unused but written with 0xFF by exploding walls
SKIPOAM         = $7E0710
SKIPOAMH        = $7E0711

; Flags overworld screen size
OWSCRSIZE       = $7E0712
OWSCRSIZEH      = $7E0713

; Screen size of previous screen
PREVSIZE        = $7E0714
PREVSIZEH       = $7E0715

; Forms east and south triggers for overworld scrolling
; High byte written separately
OWSCROLL        = $7E0716
OWSCROLLH       = $7E0717

; These addresses may be read during erroneous map16 reads for overworld scrolling.
; But the values are written to an area completely off screen.
; This block of memory is otherwise completely unused.
; It can safely be considered free RAM.
; BIG FREE RAM: 0xE8
MAP16OVERFLOW   = $7E0718

;---------------------------------------------------------------------------------------------------

; Main buffer sent to OAM
OAMBUFF         = $7E0800
OAMBUFF2        = $7E0A00

; Holds the 2 auxiliary bits of OAM data.
; ORA'd in every frame.
OAMBUFFSX       = $7E0A20

;---------------------------------------------------------------------------------------------------

; GFX sheets
SHEETAA0        = $7E0AA0
BGSET1          = $7E0AA1
BGSET2          = $7E0AA2
SPRSET1         = $7E0AA3
SPRSET2         = $7E0AA4

; FREE RAM: 0x01
UNUSED_7E0AA5   = $7E0AA5

; Only ever zeroed
JUNK_7E0AA6     = $7E0AA6
JUNK_7E0AA7     = $7E0AA7

; Used to choose between palette buffers when writing
PALBUFNL        = $7E0AA8
PALBUFNH        = $7E0AA9

; Used to choose different graphics temporarily, such as medallion spells
GFXSTEAL        = $7E0AAA

; FREE RAM: 0x01
UNUSED_7E0AAB   = $7E0AAB

; TODO
; Palette loading stuff
PALSPR0         = $7E0AAC
PALSPR1         = $7E0AAD
PALSPR2         = $7E0AAE

; FREE RAM: 0x01
UNUSED_7E0AAF   = $7E0AAF

; Only referenced in an unreachable palette routine.
PALUNU          = $7E0AB0

; TODO
PALAB1          = $7E0AB1

; Used for loading BG3 colors
PALHUD          = $7E0AB2
PALAB3          = $7E0AB3
PALAB4          = $7E0AB4
PALAB5          = $7E0AB5
PALAB6          = $7E0AB6

; Read in one place but never used
PALAB7          = $7E0AB7

; TODO
PALAB8          = $7E0AB8

; FREE RAM: 0x04
UNUSED_7E0AB9   = $7E0AB9
UNUSED_7E0ABA   = $7E0ABA
UNUSED_7E0ABB   = $7E0ABB
UNUSED_7E0ABC   = $7E0ABC

; Set when in a room that utilizes color math for sprites.
; High byte unused, but read in 16-bit a couple times
COLROOM         = $7E0ABD
COLROOMH        = $7E0ABE

; Flagged during certain types of overworld transitions
; Used for events such as smithy and witch
; TODO more
OWTRAN          = $7E0ABF

; These are OAM addresses in various banks for DMA transfers
; Link parts come from Bank10
; Other parts come from decompressed 4bpp caches in bank 7E
; a couple of these in here are actually unused
; T = Top
; B = Bottom
;
; Sword
SWDGFXT         = $7E0AC0
SWDGFXTH        = $7E0AC1
SWDGFXB         = $7E0AC2
SWDGFXBH        = $7E0AC3

; Shield
SHDGFXT         = $7E0AC4
SHDGFXTH        = $7E0AC5
SHDGFXB         = $7E0AC6
SHDGFXBH        = $7E0AC7

; Y-items
ITEMGFXT        = $7E0AC8
ITEMGFXTH       = $7E0AC9
ITEMGFXB        = $7E0ACA
ITEMGFXBH       = $7E0ACB

; Link's head
HEADGFXT        = $7E0ACC
HEADGFXTH       = $7E0ACD
HEADGFXB        = $7E0ACE
HEADGFXBH       = $7E0ACF

; Link's body
BODYGFXT        = $7E0AD0
BODYGFXTH       = $7E0AD1
BODYGFXB        = $7E0AD2
BODYGFXBH       = $7E0AD3

; Link's auxiliary parts
AUXGFX1         = $7E0AD4
AUXGFX1H        = $7E0AD5
AUXGFX2         = $7E0AD6
AUXGFX2H        = $7E0AD7

; Pushable blocks
BLKGFXT         = $7E0AD8
BLKGFXTH        = $7E0AD9
BLKGFXB         = $7E0ADA
BLKGFXBH        = $7E0ADB

; Background
BGANIMGFX       = $7E0ADC
BGANIMGFXH      = $7E0ADD

; FREE RAM: 0x02
UNUSED_7E0ADE   = $7E0ADE
UNUSED_7E0ADF   = $7E0ADF

; Rupee sprites
RUPGFXT         = $7E0AE0
RUPGFXTH        = $7E0AE1
RUPGFXB         = $7E0AE2
RUPGFXBH        = $7E0AE3

; FREE RAM: 0x04
UNUSED_7E0AE4   = $7E0AE4
UNUSED_7E0AE5   = $7E0AE5
UNUSED_7E0AE6   = $7E0AE6
UNUSED_7E0AE7   = $7E0AE7

; Follower head/body gfx offsets
FLWHO           = $7E0AE8
FLWHOH          = $7E0AE9
FLWBO           = $7E0AEA
FLWBOH          = $7E0AEB

; Follower head
FLWHGFXT        = $7E0AEC
FLWHGFXTH       = $7E0AED
FLWHGFXB        = $7E0AEE
FLWHGFXBH       = $7E0AEF

; Follower body
FLWBGFXT        = $7E0AF0
FLWBGFXTH       = $7E0AF1
FLWBGFXB        = $7E0AF2
FLWBGFXBH       = $7E0AF3

; Duck
DUCKPOSE        = $7E0AF4
DUCKPOSEH       = $7E0AF5
DUCKGFXT        = $7E0AF6
DUCKGFXTH       = $7E0AF7
DUCKGFXB        = $7E0AF8
DUCKGFXBH       = $7E0AF9

; FREE RAM: 0x06
UNUSED_7E0AFA   = $7E0AFA
UNUSED_7E0AFB   = $7E0AFB
UNUSED_7E0AFC   = $7E0AFC
UNUSED_7E0AFD   = $7E0AFD
UNUSED_7E0AFE   = $7E0AFE
UNUSED_7E0AFF   = $7E0AFF

;---------------------------------------------------------------------------------------------------

; Overlord IDs
OL0ID           = $7E0B00
OL1ID           = $7E0B01
OL2ID           = $7E0B02
OL3ID           = $7E0B03
OL4ID           = $7E0B04
OL5ID           = $7E0B05
OL6ID           = $7E0B06
OL7ID           = $7E0B07

; Overlord coordinates
; x low
OL0XL           = $7E0B08
OL1XL           = $7E0B09
OL2XL           = $7E0B0A
OL3XL           = $7E0B0B
OL4XL           = $7E0B0C
OL5XL           = $7E0B0D
OL6XL           = $7E0B0E
OL7XL           = $7E0B0F

; x high
OL0XH           = $7E0B10
OL1XH           = $7E0B11
OL2XH           = $7E0B12
OL3XH           = $7E0B13
OL4XH           = $7E0B14
OL5XH           = $7E0B15
OL6XH           = $7E0B16
OL7XH           = $7E0B17

; y low
OL0YL           = $7E0B18
OL1YL           = $7E0B19
OL2YL           = $7E0B1A
OL3YL           = $7E0B1B
OL4YL           = $7E0B1C
OL5YL           = $7E0B1D
OL6YL           = $7E0B1E
OL7YL           = $7E0B1F

; y high
OL0YH           = $7E0B20
OL1YH           = $7E0B21
OL2YH           = $7E0B22
OL3YH           = $7E0B23
OL4YH           = $7E0B24
OL5YH           = $7E0B25
OL6YH           = $7E0B26
OL7YH           = $7E0B27

; General purpose timers
; None of these are automated
OL0TA           = $7E0B28
OL1TA           = $7E0B29
OL2TA           = $7E0B2A
OL3TA           = $7E0B2B
OL4TA           = $7E0B2C
OL5TA           = $7E0B2D
OL6TA           = $7E0B2E
OL7TA           = $7E0B2F

; TODO
OL0TB           = $7E0B30
OL1TB           = $7E0B31
OL2TB           = $7E0B32
OL3TB           = $7E0B33
OL4TB           = $7E0B34
OL5TB           = $7E0B35
OL6TB           = $7E0B36
OL7TB           = $7E0B37

; TODO
OL0TC           = $7E0B38
OL1TC           = $7E0B39
OL2TC           = $7E0B3A
OL3TC           = $7E0B3B
OL4TC           = $7E0B3C
OL5TC           = $7E0B3D
OL6TC           = $7E0B3E
OL7TC           = $7E0B3F

; Layer, as always: (0: upper | 1: lower)
OL0LAYER        = $7E0B40
OL1LAYER        = $7E0B41
OL2LAYER        = $7E0B42
OL3LAYER        = $7E0B43
OL4LAYER        = $7E0B44
OL5LAYER        = $7E0B45
OL6LAYER        = $7E0B46
OL7LAYER        = $7E0B47

; TODO
OL0SCRL         = $7E0B48
OL0SCRH         = $7E0B49
OL1SCRL         = $7E0B4A
OL1SCRH         = $7E0B4B
OL2SCRL         = $7E0B4C
OL2SCRH         = $7E0B4D
OL3SCRL         = $7E0B4E
OL3SCRH         = $7E0B4F
OL4SCRL         = $7E0B50
OL4SCRH         = $7E0B51
OL5SCRL         = $7E0B52
OL5SCRH         = $7E0B53
OL6SCRL         = $7E0B54
OL6SCRH         = $7E0B55
OL7SCRL         = $7E0B56
OL7SCRH         = $7E0B57

; Auto-decrementing timer for stunned enemies
SPR0STUN        = $7E0B58
SPR1STUN        = $7E0B59
SPR2STUN        = $7E0B5A
SPR3STUN        = $7E0B5B
SPR4STUN        = $7E0B5C
SPR5STUN        = $7E0B5D
SPR6STUN        = $7E0B5E
SPR7STUN        = $7E0B5F
SPR8STUN        = $7E0B60
SPR9STUN        = $7E0B61
SPRASTUN        = $7E0B62
SPRBSTUN        = $7E0B63
SPRCSTUN        = $7E0B64
SPRDSTUN        = $7E0B65
SPRESTUN        = $7E0B66
SPRFSTUN        = $7E0B67

; Weapon tink spark layer
TINKBG          = $7E0B68

; Controls Blind's head spin by /8.
; Also controls tutorial guard message increment.
BLINDDIR        = $7E0B69

; Used by beamos lasers and desert statues to index amongst themselves
LIMSPRCT        = $7E0B6A

; tttt a.bp
;   t - tile hitbox TODO ???
;   a - deflect arrows TODO VERIFY
;   b - boss death
;   p - idk
SPR0TILEDIE     = $7E0B6B
SPR1TILEDIE     = $7E0B6C
SPR2TILEDIE     = $7E0B6D
SPR3TILEDIE     = $7E0B6E
SPR4TILEDIE     = $7E0B6F
SPR5TILEDIE     = $7E0B70
SPR6TILEDIE     = $7E0B71
SPR7TILEDIE     = $7E0B72
SPR8TILEDIE     = $7E0B73
SPR9TILEDIE     = $7E0B74
SPRATILEDIE     = $7E0B75
SPRBTILEDIE     = $7E0B76
SPRCTILEDIE     = $7E0B77
SPRDTILEDIE     = $7E0B78
SPRETILEDIE     = $7E0B79
SPRFTILEDIE     = $7E0B7A

; Prevents Link from physically moving when non zero
; cleared every frame under normal circumstances
; only used by debirando pits
SANDPIT         = $7E0B7B

; Drag velocities used by sandpits and somaria
DRAGYL          = $7E0B7C
DRAGYH          = $7E0B7D
DRAGXL          = $7E0B7E
DRAGXH          = $7E0B7F

; Last 4 rooms visit
LASTROOM0       = $7E0B80
LASTROOM0H      = $7E0B81
LASTROOM1       = $7E0B82
LASTROOM1H      = $7E0B83
LASTROOM2       = $7E0B84
LASTROOM2H      = $7E0B85
LASTROOM3       = $7E0B86
LASTROOM3H      = $7E0B87

; Number of octorok targets hit in arrow game
THEX99          = $7E0B88

; TODO
; Something with sprite priority
SPR0PRIO        = $7E0B89
SPR1PRIO        = $7E0B8A
SPR2PRIO        = $7E0B8B
SPR3PRIO        = $7E0B8C
SPR4PRIO        = $7E0B8D
SPR5PRIO        = $7E0B8E
SPR6PRIO        = $7E0B8F
SPR7PRIO        = $7E0B90
SPR8PRIO        = $7E0B91
SPR9PRIO        = $7E0B92
SPRAPRIO        = $7E0B93
SPRBPRIO        = $7E0B94
SPRCPRIO        = $7E0B95
SPRDPRIO        = $7E0B96
SPREPRIO        = $7E0B97
SPRFPRIO        = $7E0B98

; Number of shots left for the arrow game
FREESHOT        = $7E0B99

; If set, arrows fired are immediately deleted.
; Only used by archery game.
DRYFIRE         = $7E0B9A

; Used to index whch key slot a standing or bonkable key occupies.
; This slot controls which bit is used for flagging collection.
;   0x00 = bit 6 (0x40)
;   0x01 = bit 5 (0x20)
; In practice, only slot 0 is ever used.
; There is also no bounds checking for invalid higher indices.
KEYSLOT         = $7E0B9B

; Controls the secret spawned from bushes, pots, rots, etc
; See Sprite_SpawnSecret
SECRETID        = $7E0B9C

; Indexes the save file ID to act on for COPY and KILL.
FILEID          = $7E0B9D

; Flags activation of falling stalfos trap triggers.
STALTRAP        = $7E0B9E

; FREE RAM: 0x01
UNUSED_7E0B9F   = $7E0B9F

; If nonzero, ancillae do not interact with the sprite
; Bulletproof
SPR0BPF         = $7E0BA0
SPR1BPF         = $7E0BA1
SPR2BPF         = $7E0BA2
SPR3BPF         = $7E0BA3
SPR4BPF         = $7E0BA4
SPR5BPF         = $7E0BA5
SPR6BPF         = $7E0BA6
SPR7BPF         = $7E0BA7
SPR8BPF         = $7E0BA8
SPR9BPF         = $7E0BA9
SPRABPF         = $7E0BAA
SPRBBPF         = $7E0BAB
SPRCBPF         = $7E0BAC
SPRDBPF         = $7E0BAD
SPREBPF         = $7E0BAE
SPRFBPF         = $7E0BAF

; When an ancilla hits a sprite, it stores its ID here.
SPR0ANCID       = $7E0BB0
SPR1ANCID       = $7E0BB1
SPR2ANCID       = $7E0BB2
SPR3ANCID       = $7E0BB3
SPR4ANCID       = $7E0BB4
SPR5ANCID       = $7E0BB5
SPR6ANCID       = $7E0BB6
SPR7ANCID       = $7E0BB7
SPR8ANCID       = $7E0BB8
SPR9ANCID       = $7E0BB9
SPRAANCID       = $7E0BBA
SPRBANCID       = $7E0BBB
SPRCANCID       = $7E0BBC
SPRDANCID       = $7E0BBD
SPREANCID       = $7E0BBE
SPRFANCID       = $7E0BBF

; Slots of currently loaded sprites.
; Half redundant, but has special flagging before with negative values.
SPR0SLOT        = $7E0BC0
SPR1SLOT        = $7E0BC1
SPR2SLOT        = $7E0BC2
SPR3SLOT        = $7E0BC3
SPR4SLOT        = $7E0BC4
SPR5SLOT        = $7E0BC5
SPR6SLOT        = $7E0BC6
SPR7SLOT        = $7E0BC7
SPR8SLOT        = $7E0BC8
SPR9SLOT        = $7E0BC9
SPRASLOT        = $7E0BCA
SPRBSLOT        = $7E0BCB
SPRCSLOT        = $7E0BCC
SPRDSLOT        = $7E0BCD
SPRESLOT        = $7E0BCE
SPRFSLOT        = $7E0BCF

; On the overworld, this contains a pointer to the address in OWDEATHS of the sprite.
; Thus, the table is twice as large on the overworld
SPR0OWDL        = $7E0BC0
SPR0OWDH        = $7E0BC1
SPR1OWDL        = $7E0BC2
SPR1OWDH        = $7E0BC3
SPR2OWDL        = $7E0BC4
SPR2OWDH        = $7E0BC5
SPR3OWDL        = $7E0BC6
SPR3OWDH        = $7E0BC7
SPR4OWDL        = $7E0BC8
SPR4OWDH        = $7E0BC9
SPR5OWDL        = $7E0BCA
SPR5OWDH        = $7E0BCB
SPR6OWDL        = $7E0BCC
SPR6OWDH        = $7E0BCD
SPR7OWDL        = $7E0BCE
SPR7OWDH        = $7E0BCF
SPR8OWDL        = $7E0BD0
SPR8OWDH        = $7E0BD1
SPR9OWDL        = $7E0BD2
SPR9OWDH        = $7E0BD3
SPRAOWDL        = $7E0BD4
SPRAOWDH        = $7E0BD5
SPRBOWDL        = $7E0BD6
SPRBOWDH        = $7E0BD7
SPRCOWDL        = $7E0BD8
SPRCOWDH        = $7E0BD9
SPRDOWDL        = $7E0BDA
SPRDOWDH        = $7E0BDB
SPREOWDL        = $7E0BDC
SPREOWDH        = $7E0BDD
SPRFOWDL        = $7E0BDE
SPRFOWDH        = $7E0BDF

; TODO
; iwbs pppp
;   i - disable tile interaction
;   w - something water
;   b - sprite is blocked by shield
;   s - taking damage sfx to use TODO name
;   p - prize pack
SPR0PRIZE       = $7E0BE0
SPR1PRIZE       = $7E0BE1
SPR2PRIZE       = $7E0BE2
SPR3PRIZE       = $7E0BE3
SPR4PRIZE       = $7E0BE4
SPR5PRIZE       = $7E0BE5
SPR6PRIZE       = $7E0BE6
SPR7PRIZE       = $7E0BE7
SPR8PRIZE       = $7E0BE8
SPR9PRIZE       = $7E0BE9
SPRAPRIZE       = $7E0BEA
SPRBPRIZE       = $7E0BEB
SPRCPRIZE       = $7E0BEC
SPRDPRIZE       = $7E0BED
SPREPRIZE       = $7E0BEE
SPRFPRIZE       = $7E0BEF

;---------------------------------------------------------------------------------------------------

; TODO
ANC0MISCM       = $7E0BF0
ANC1MISCM       = $7E0BF1
ANC2MISCM       = $7E0BF2
ANC3MISCM       = $7E0BF3
ANC4MISCM       = $7E0BF4
ANC5MISCM       = $7E0BF5
ANC6MISCM       = $7E0BF6
ANC7MISCM       = $7E0BF7
ANC8MISCM       = $7E0BF8
ANC9MISCM       = $7E0BF9

; Ancilla coordinates
; y low
ANC0YL          = $7E0BFA
ANC1YL          = $7E0BFB
ANC2YL          = $7E0BFC
ANC3YL          = $7E0BFD
ANC4YL          = $7E0BFE
ANC5YL          = $7E0BFF
ANC6YL          = $7E0C00
ANC7YL          = $7E0C01
ANC8YL          = $7E0C02
ANC9YL          = $7E0C03

; x low
ANC0XL          = $7E0C04
ANC1XL          = $7E0C05
ANC2XL          = $7E0C06
ANC3XL          = $7E0C07
ANC4XL          = $7E0C08
ANC5XL          = $7E0C09
ANC6XL          = $7E0C0A
ANC7XL          = $7E0C0B
ANC8XL          = $7E0C0C
ANC9XL          = $7E0C0D

; y high
ANC0YH          = $7E0C0E
ANC1YH          = $7E0C0F
ANC2YH          = $7E0C10
ANC3YH          = $7E0C11
ANC4YH          = $7E0C12
ANC5YH          = $7E0C13
ANC6YH          = $7E0C14
ANC7YH          = $7E0C15
ANC8YH          = $7E0C16
ANC9YH          = $7E0C17

; x high
ANC0XH          = $7E0C18
ANC1XH          = $7E0C19
ANC2XH          = $7E0C1A
ANC3XH          = $7E0C1B
ANC4XH          = $7E0C1C
ANC5XH          = $7E0C1D
ANC6XH          = $7E0C1E
ANC7XH          = $7E0C1F
ANC8XH          = $7E0C20
ANC9XH          = $7E0C21

; Ancilla velocities
; y axis
ANC0VY          = $7E0C22
ANC1VY          = $7E0C23
ANC2VY          = $7E0C24
ANC3VY          = $7E0C25
ANC4VY          = $7E0C26
ANC5VY          = $7E0C27
ANC6VY          = $7E0C28
ANC7VY          = $7E0C29
ANC8VY          = $7E0C2A
ANC9VY          = $7E0C2B

; x axis
ANC0VX          = $7E0C2C
ANC1VX          = $7E0C2D
ANC2VX          = $7E0C2E
ANC3VX          = $7E0C2F
ANC4VX          = $7E0C30
ANC5VX          = $7E0C31
ANC6VX          = $7E0C32
ANC7VX          = $7E0C33
ANC8VX          = $7E0C34
ANC9VX          = $7E0C35

; Ancilla subpixel velocities
; y axis
ANC0SUBY        = $7E0C36
ANC1SUBY        = $7E0C37
ANC2SUBY        = $7E0C38
ANC3SUBY        = $7E0C39
ANC4SUBY        = $7E0C3A
ANC5SUBY        = $7E0C3B
ANC6SUBY        = $7E0C3C
ANC7SUBY        = $7E0C3D
ANC8SUBY        = $7E0C3E
ANC9SUBY        = $7E0C3F

; x axis
ANC0SUBX        = $7E0C40
ANC1SUBX        = $7E0C41
ANC2SUBX        = $7E0C42
ANC3SUBX        = $7E0C43
ANC4SUBX        = $7E0C44
ANC5SUBX        = $7E0C45
ANC6SUBX        = $7E0C46
ANC7SUBX        = $7E0C47
ANC8SUBX        = $7E0C48
ANC9SUBX        = $7E0C49

; Ancilla ID
; See ANCExecuteObject for values
ANC0ID          = $7E0C4A
ANC1ID          = $7E0C4B
ANC2ID          = $7E0C4C
ANC3ID          = $7E0C4D
ANC4ID          = $7E0C4E
ANC5ID          = $7E0C4F
ANC6ID          = $7E0C50
ANC7ID          = $7E0C51
ANC8ID          = $7E0C52
ANC9ID          = $7E0C53

; TODO
ANC0MISCN       = $7E0C54
ANC1MISCN       = $7E0C55
ANC2MISCN       = $7E0C56
ANC3MISCN       = $7E0C57
ANC4MISCN       = $7E0C58
ANC5MISCN       = $7E0C59
ANC6MISCN       = $7E0C5A
ANC7MISCN       = $7E0C5B
ANC8MISCN       = $7E0C5C
ANC9MISCN       = $7E0C5D

; Used by various ancillae in various ways.
; Tracks current hookshot extension and item receipt ID.
ANC0GETL        = $7E0C5E
ANC1GETL        = $7E0C5F
ANC2GETL        = $7E0C60
ANC3GETL        = $7E0C61
ANC4GETL        = $7E0C62
ANC5GETL        = $7E0C63
ANC6GETL        = $7E0C64
ANC7GETL        = $7E0C65
ANC8GETL        = $7E0C66
ANC9GETL        = $7E0C67

; General timer TODO
ANC0TIMERA      = $7E0C68
ANC1TIMERA      = $7E0C69
ANC2TIMERA      = $7E0C6A
ANC3TIMERA      = $7E0C6B
ANC4TIMERA      = $7E0C6C
ANC5TIMERA      = $7E0C6D
ANC6TIMERA      = $7E0C6E
ANC7TIMERA      = $7E0C6F
ANC8TIMERA      = $7E0C70
ANC9TIMERA      = $7E0C71

; Tracks ancilla direction
ANC0DIR         = $7E0C72
ANC1DIR         = $7E0C73
ANC2DIR         = $7E0C74
ANC3DIR         = $7E0C75
ANC4DIR         = $7E0C76
ANC5DIR         = $7E0C77
ANC6DIR         = $7E0C78
ANC7DIR         = $7E0C79
ANC8DIR         = $7E0C7A
ANC9DIR         = $7E0C7B

; Ancilla's layer
ANC0LAYER       = $7E0C7C
ANC1LAYER       = $7E0C7D
ANC2LAYER       = $7E0C7E
ANC3LAYER       = $7E0C7F
ANC4LAYER       = $7E0C80
ANC5LAYER       = $7E0C81
ANC6LAYER       = $7E0C82
ANC7LAYER       = $7E0C83
ANC8LAYER       = $7E0C84
ANC9LAYER       = $7E0C85

; OAM region offset of ancillae
ANC0OAMR        = $7E0C86
ANC1OAMR        = $7E0C87
ANC2OAMR        = $7E0C88
ANC3OAMR        = $7E0C89
ANC4OAMR        = $7E0C8A
ANC5OAMR        = $7E0C8B
ANC6OAMR        = $7E0C8C
ANC7OAMR        = $7E0C8D
ANC8OAMR        = $7E0C8E
ANC9OAMR        = $7E0C8F

; Ancilla OAM allocation
ANC0OAML        = $7E0C90
ANC1OAML        = $7E0C91
ANC2OAML        = $7E0C92
ANC3OAML        = $7E0C93
ANC4OAML        = $7E0C94
ANC5OAML        = $7E0C95
ANC6OAML        = $7E0C96
ANC7OAML        = $7E0C97
ANC8OAML        = $7E0C98
ANC9OAML        = $7E0C99

;---------------------------------------------------------------------------------------------------

; Current overworld screen sprite is loaded on.
; Used to kill sprites during screen transitions
SPR0SCR         = $7E0C9A
SPR1SCR         = $7E0C9B
SPR2SCR         = $7E0C9C
SPR3SCR         = $7E0C9D
SPR4SCR         = $7E0C9E
SPR5SCR         = $7E0C9F
SPR6SCR         = $7E0CA0
SPR7SCR         = $7E0CA1
SPR8SCR         = $7E0CA2
SPR9SCR         = $7E0CA3
SPRASCR         = $7E0CA4
SPRBSCR         = $7E0CA5
SPRCSCR         = $7E0CA6
SPRDSCR         = $7E0CA7
SPRESCR         = $7E0CA8
SPRFSCR         = $7E0CA9

; aixd tspr
;   a - TODO
;   i - 
;   x - 
;   d - 
;   t - 
;   s - 
;   p - 
;   r - Handles behavior with previous deaths flagged in $7F:DF80 (0: default | 1: ignore)
SPR0DEFL        = $7E0CAA
SPR1DEFL        = $7E0CAB
SPR2DEFL        = $7E0CAC
SPR3DEFL        = $7E0CAD
SPR4DEFL        = $7E0CAE
SPR5DEFL        = $7E0CAF
SPR6DEFL        = $7E0CB0
SPR7DEFL        = $7E0CB1
SPR8DEFL        = $7E0CB2
SPR9DEFL        = $7E0CB3
SPRADEFL        = $7E0CB4
SPRBDEFL        = $7E0CB5
SPRCDEFL        = $7E0CB6
SPRDDEFL        = $7E0CB7
SPREDEFL        = $7E0CB8
SPRFDEFL        = $7E0CB9

; Forces drops on sprite death
;   0x00 - Nothing
;   0x01 - Key
;   0x02 - Big key
;   0x03 - Green rupee
SPR0DROP        = $7E0CBA
SPR1DROP        = $7E0CBB
SPR2DROP        = $7E0CBC
SPR3DROP        = $7E0CBD
SPR4DROP        = $7E0CBE
SPR5DROP        = $7E0CBF
SPR6DROP        = $7E0CC0
SPR7DROP        = $7E0CC1
SPR8DROP        = $7E0CC2
SPR9DROP        = $7E0CC3
SPRADROP        = $7E0CC4
SPRBDROP        = $7E0CC5
SPRCDROP        = $7E0CC6
SPRDDROP        = $7E0CC7
SPREDROP        = $7E0CC8
SPRFDROP        = $7E0CC9

; TODO
OL0_ROOM        = $7E0CCA
OL1_ROOM        = $7E0CCB
OL2_ROOM        = $7E0CCC
OL3_ROOM        = $7E0CCD
OL4_ROOM        = $7E0CCE
OL5_ROOM        = $7E0CCF
OL6_ROOM        = $7E0CD0
OL7_ROOM        = $7E0CD1

; Primarily deals with bump damage
; tzpd bbbb
;   t - TODO
;   z - High priority target for bees to give hints
;   p - Powder interaction (0: normal | 1: ignore)
;   d - Behavior when a boss spawns (0: die | 1: live)
;   b - bump damage class
;   Bump damage classes are read from a table at $06F42D
;   Each table entry has 3 values, for green, blue, and red mails
;   class   g    b    r
;   0x00    2    1    1
;   0x01    4    4    4
;   0x02    0    0    0
;   0x03    8    4    2
;   0x04    8    8    8
;   0x05   16    8    4
;   0x06   32   16    8
;   0x07   32   24   16
;   0x08   24   16    8
;   0x09   64   48   24
;
; Higher values are invalid, but here's what they are:
;   0x0A  169   48   32
;   0x0B  142  246  169
;   0x0C  144  133   71
;   0x0D  169   16  133
;   0x0E   70  169   33
;   0x0F   34  124  187
SPR0BUMP        = $7E0CD2
SPR1BUMP        = $7E0CD3
SPR2BUMP        = $7E0CD4
SPR3BUMP        = $7E0CD5
SPR4BUMP        = $7E0CD6
SPR5BUMP        = $7E0CD7
SPR6BUMP        = $7E0CD8
SPR7BUMP        = $7E0CD9
SPR8BUMP        = $7E0CDA
SPR9BUMP        = $7E0CDB
SPRABUMP        = $7E0CDC
SPRBBUMP        = $7E0CDD
SPRCBUMP        = $7E0CDE
SPRDBUMP        = $7E0CDF
SPREBUMP        = $7E0CE0
SPRFBUMP        = $7E0CE1

; Damage sprite is enduring
SPR0DMG         = $7E0CE2
SPR1DMG         = $7E0CE3
SPR2DMG         = $7E0CE4
SPR3DMG         = $7E0CE5
SPR4DMG         = $7E0CE6
SPR5DMG         = $7E0CE7
SPR6DMG         = $7E0CE8
SPR7DMG         = $7E0CE9
SPR8DMG         = $7E0CEA
SPR9DMG         = $7E0CEB
SPRADMG         = $7E0CEC
SPRBDMG         = $7E0CED
SPRCDMG         = $7E0CEE
SPRDDMG         = $7E0CEF
SPREDMG         = $7E0CF0
SPRFDMG         = $7E0CF1

; Damage class of a particular hit against a sprite
DMGCLASS        = $7E0CF2

; Zeroed but never read.
JUNK_7E0CF3     = $7E0CF3

; Flags snake and bomb ambushes from bad pull switches.
DROPTRAP        = $7E0CF4

; Y offset for drawing the dungeon map squares.
DMAPROWL        = $7E0CF5
DMAPROWH        = $7E0CF6

; Prize pack counter for bush prizes on the overworld.
BUSHPACKX       = $7E0CF7

; Used for calculating SFX panning.
PANTEMP         = $7E0CF8

; Drop luck
;   0x00 - None
;   0x01 - Good luck
;   0x02 - Bad luck
DROPLUCK        = $7E0CF9

; Kills of luck remaining
LUCKKILL        = $7E0CFA

; Number of kills for rupee pulls
PULLKILL        = $7E0CFB

; Number of times hit for rupee pull prize calculation
PULLHITS        = $7E0CFC

; Rupee refill sound effect timer
CHACHING        = $7E0CFD

; Override palette
; High byte always to be 0
PAL2F           = $7E0CFE
PAL2FH          = $7E0CFF

;---------------------------------------------------------------------------------------------------

; Sprite coordinates
; y low
SPR0_YL         = $7E0D00
SPR1_YL         = $7E0D01
SPR2_YL         = $7E0D02
SPR3_YL         = $7E0D03
SPR4_YL         = $7E0D04
SPR5_YL         = $7E0D05
SPR6_YL         = $7E0D06
SPR7_YL         = $7E0D07
SPR8_YL         = $7E0D08
SPR9_YL         = $7E0D09
SPRA_YL         = $7E0D0A
SPRB_YL         = $7E0D0B
SPRC_YL         = $7E0D0C
SPRD_YL         = $7E0D0D
SPRE_YL         = $7E0D0E
SPRF_YL         = $7E0D0F

; x low
SPR0_XL         = $7E0D10
SPR1_XL         = $7E0D11
SPR2_XL         = $7E0D12
SPR3_XL         = $7E0D13
SPR4_XL         = $7E0D14
SPR5_XL         = $7E0D15
SPR6_XL         = $7E0D16
SPR7_XL         = $7E0D17
SPR8_XL         = $7E0D18
SPR9_XL         = $7E0D19
SPRA_XL         = $7E0D1A
SPRB_XL         = $7E0D1B
SPRC_XL         = $7E0D1C
SPRD_XL         = $7E0D1D
SPRE_XL         = $7E0D1E
SPRF_XL         = $7E0D1F

; y high
SPR0_YH         = $7E0D20
SPR1_YH         = $7E0D21
SPR2_YH         = $7E0D22
SPR3_YH         = $7E0D23
SPR4_YH         = $7E0D24
SPR5_YH         = $7E0D25
SPR6_YH         = $7E0D26
SPR7_YH         = $7E0D27
SPR8_YH         = $7E0D28
SPR9_YH         = $7E0D29
SPRA_YH         = $7E0D2A
SPRB_YH         = $7E0D2B
SPRC_YH         = $7E0D2C
SPRD_YH         = $7E0D2D
SPRE_YH         = $7E0D2E
SPRF_YH         = $7E0D2F

; x high
SPR0_XH         = $7E0D30
SPR1_XH         = $7E0D31
SPR2_XH         = $7E0D32
SPR3_XH         = $7E0D33
SPR4_XH         = $7E0D34
SPR5_XH         = $7E0D35
SPR6_XH         = $7E0D36
SPR7_XH         = $7E0D37
SPR8_XH         = $7E0D38
SPR9_XH         = $7E0D39
SPRA_XH         = $7E0D3A
SPRB_XH         = $7E0D3B
SPRC_XH         = $7E0D3C
SPRD_XH         = $7E0D3D
SPRE_XH         = $7E0D3E
SPRF_XH         = $7E0D3F

; Sprite velocity
; y-axis
SPR0_VY         = $7E0D40
SPR1_VY         = $7E0D41
SPR2_VY         = $7E0D42
SPR3_VY         = $7E0D43
SPR4_VY         = $7E0D44
SPR5_VY         = $7E0D45
SPR6_VY         = $7E0D46
SPR7_VY         = $7E0D47
SPR8_VY         = $7E0D48
SPR9_VY         = $7E0D49
SPRA_VY         = $7E0D4A
SPRB_VY         = $7E0D4B
SPRC_VY         = $7E0D4C
SPRD_VY         = $7E0D4D
SPRE_VY         = $7E0D4E
SPRF_VY         = $7E0D4F

; x-axis
SPR0_VX         = $7E0D50
SPR1_VX         = $7E0D51
SPR2_VX         = $7E0D52
SPR3_VX         = $7E0D53
SPR4_VX         = $7E0D54
SPR5_VX         = $7E0D55
SPR6_VX         = $7E0D56
SPR7_VX         = $7E0D57
SPR8_VX         = $7E0D58
SPR9_VX         = $7E0D59
SPRA_VX         = $7E0D5A
SPRB_VX         = $7E0D5B
SPRC_VX         = $7E0D5C
SPRD_VX         = $7E0D5D
SPRE_VX         = $7E0D5E
SPRF_VX         = $7E0D5F

; TODO
SPR0_0D60       = $7E0D60
SPR1_0D60       = $7E0D61
SPR2_0D60       = $7E0D62
SPR3_0D60       = $7E0D63
SPR4_0D60       = $7E0D64
SPR5_0D60       = $7E0D65
SPR6_0D60       = $7E0D66
SPR7_0D60       = $7E0D67
SPR8_0D60       = $7E0D68
SPR9_0D60       = $7E0D69
SPRA_0D60       = $7E0D6A
SPRB_0D60       = $7E0D6B
SPRC_0D60       = $7E0D6C
SPRD_0D60       = $7E0D6D
SPRE_0D60       = $7E0D6E
SPRF_0D60       = $7E0D6F

; TODO
SPR0_0D70       = $7E0D70
SPR1_0D70       = $7E0D71
SPR2_0D70       = $7E0D72
SPR3_0D70       = $7E0D73
SPR4_0D70       = $7E0D74
SPR5_0D70       = $7E0D75
SPR6_0D70       = $7E0D76
SPR7_0D70       = $7E0D77
SPR8_0D70       = $7E0D78
SPR9_0D70       = $7E0D79
SPRA_0D70       = $7E0D7A
SPRB_0D70       = $7E0D7B
SPRC_0D70       = $7E0D7C
SPRD_0D70       = $7E0D7D
SPRE_0D70       = $7E0D7E
SPRF_0D70       = $7E0D7F

; TODO
SPR0_0D80       = $7E0D80
SPR1_0D80       = $7E0D81
SPR2_0D80       = $7E0D82
SPR3_0D80       = $7E0D83
SPR4_0D80       = $7E0D84
SPR5_0D80       = $7E0D85
SPR6_0D80       = $7E0D86
SPR7_0D80       = $7E0D87
SPR8_0D80       = $7E0D88
SPR9_0D80       = $7E0D89
SPRA_0D80       = $7E0D8A
SPRB_0D80       = $7E0D8B
SPRC_0D80       = $7E0D8C
SPRD_0D80       = $7E0D8D
SPRE_0D80       = $7E0D8E
SPRF_0D80       = $7E0D8F

; TODO
SPR0_0D90       = $7E0D90
SPR1_0D90       = $7E0D91
SPR2_0D90       = $7E0D92
SPR3_0D90       = $7E0D93
SPR4_0D90       = $7E0D94
SPR5_0D90       = $7E0D95
SPR6_0D90       = $7E0D96
SPR7_0D90       = $7E0D97
SPR8_0D90       = $7E0D98
SPR9_0D90       = $7E0D99
SPRA_0D90       = $7E0D9A
SPRB_0D90       = $7E0D9B
SPRC_0D90       = $7E0D9C
SPRD_0D90       = $7E0D9D
SPRE_0D90       = $7E0D9E
SPRF_0D90       = $7E0D9F

; TODO
SPR0_0DA0       = $7E0DA0
SPR1_0DA0       = $7E0DA1
SPR2_0DA0       = $7E0DA2
SPR3_0DA0       = $7E0DA3
SPR4_0DA0       = $7E0DA4
SPR5_0DA0       = $7E0DA5
SPR6_0DA0       = $7E0DA6
SPR7_0DA0       = $7E0DA7
SPR8_0DA0       = $7E0DA8
SPR9_0DA0       = $7E0DA9
SPRA_0DA0       = $7E0DAA
SPRB_0DA0       = $7E0DAB
SPRC_0DA0       = $7E0DAC
SPRD_0DA0       = $7E0DAD
SPRE_0DA0       = $7E0DAE
SPRF_0DA0       = $7E0DAF

; TODO
SPR0_0DB0       = $7E0DB0
SPR1_0DB0       = $7E0DB1
SPR2_0DB0       = $7E0DB2
SPR3_0DB0       = $7E0DB3
SPR4_0DB0       = $7E0DB4
SPR5_0DB0       = $7E0DB5
SPR6_0DB0       = $7E0DB6
SPR7_0DB0       = $7E0DB7
SPR8_0DB0       = $7E0DB8
SPR9_0DB0       = $7E0DB9
SPRA_0DB0       = $7E0DBA
SPRB_0DB0       = $7E0DBB
SPRC_0DB0       = $7E0DBC
SPRD_0DB0       = $7E0DBD
SPRE_0DB0       = $7E0DBE
SPRF_0DB0       = $7E0DBF

; Mostly used as graphics control
SPR0_GFXSTEP    = $7E0DC0
SPR1_GFXSTEP    = $7E0DC1
SPR2_GFXSTEP    = $7E0DC2
SPR3_GFXSTEP    = $7E0DC3
SPR4_GFXSTEP    = $7E0DC4
SPR5_GFXSTEP    = $7E0DC5
SPR6_GFXSTEP    = $7E0DC6
SPR7_GFXSTEP    = $7E0DC7
SPR8_GFXSTEP    = $7E0DC8
SPR9_GFXSTEP    = $7E0DC9
SPRA_GFXSTEP    = $7E0DCA
SPRB_GFXSTEP    = $7E0DCB
SPRC_GFXSTEP    = $7E0DCC
SPRD_GFXSTEP    = $7E0DCD
SPRE_GFXSTEP    = $7E0DCE
SPRF_GFXSTEP    = $7E0DCF

; Main AI state of the sprite
SPR0_AIMODE     = $7E0DD0
SPR1_AIMODE     = $7E0DD1
SPR2_AIMODE     = $7E0DD2
SPR3_AIMODE     = $7E0DD3
SPR4_AIMODE     = $7E0DD4
SPR5_AIMODE     = $7E0DD5
SPR6_AIMODE     = $7E0DD6
SPR7_AIMODE     = $7E0DD7
SPR8_AIMODE     = $7E0DD8
SPR9_AIMODE     = $7E0DD9
SPRA_AIMODE     = $7E0DDA
SPRB_AIMODE     = $7E0DDB
SPRC_AIMODE     = $7E0DDC
SPRD_AIMODE     = $7E0DDD
SPRE_AIMODE     = $7E0DDE
SPRF_AIMODE     = $7E0DDF

; TODO
SPR0_0DE0       = $7E0DE0
SPR1_0DE0       = $7E0DE1
SPR2_0DE0       = $7E0DE2
SPR3_0DE0       = $7E0DE3
SPR4_0DE0       = $7E0DE4
SPR5_0DE0       = $7E0DE5
SPR6_0DE0       = $7E0DE6
SPR7_0DE0       = $7E0DE7
SPR8_0DE0       = $7E0DE8
SPR9_0DE0       = $7E0DE9
SPRA_0DE0       = $7E0DEA
SPRB_0DE0       = $7E0DEB
SPRC_0DE0       = $7E0DEC
SPRD_0DE0       = $7E0DED
SPRE_0DE0       = $7E0DEE
SPRF_0DE0       = $7E0DEF

; Auto-decremented timers
SPR0_TIMER_A    = $7E0DF0
SPR1_TIMER_A    = $7E0DF1
SPR2_TIMER_A    = $7E0DF2
SPR3_TIMER_A    = $7E0DF3
SPR4_TIMER_A    = $7E0DF4
SPR5_TIMER_A    = $7E0DF5
SPR6_TIMER_A    = $7E0DF6
SPR7_TIMER_A    = $7E0DF7
SPR8_TIMER_A    = $7E0DF8
SPR9_TIMER_A    = $7E0DF9
SPRA_TIMER_A    = $7E0DFA
SPRB_TIMER_A    = $7E0DFB
SPRC_TIMER_A    = $7E0DFC
SPRD_TIMER_A    = $7E0DFD
SPRE_TIMER_A    = $7E0DFE
SPRF_TIMER_A    = $7E0DFF

; TODO
SPR0_TIMER_B    = $7E0E00
SPR1_TIMER_B    = $7E0E01
SPR2_TIMER_B    = $7E0E02
SPR3_TIMER_B    = $7E0E03
SPR4_TIMER_B    = $7E0E04
SPR5_TIMER_B    = $7E0E05
SPR6_TIMER_B    = $7E0E06
SPR7_TIMER_B    = $7E0E07
SPR8_TIMER_B    = $7E0E08
SPR9_TIMER_B    = $7E0E09
SPRA_TIMER_B    = $7E0E0A
SPRB_TIMER_B    = $7E0E0B
SPRC_TIMER_B    = $7E0E0C
SPRD_TIMER_B    = $7E0E0D
SPRE_TIMER_B    = $7E0E0E
SPRF_TIMER_B    = $7E0E0F

; TODO
SPR0_TIMER_C    = $7E0E10
SPR1_TIMER_C    = $7E0E11
SPR2_TIMER_C    = $7E0E12
SPR3_TIMER_C    = $7E0E13
SPR4_TIMER_C    = $7E0E14
SPR5_TIMER_C    = $7E0E15
SPR6_TIMER_C    = $7E0E16
SPR7_TIMER_C    = $7E0E17
SPR8_TIMER_C    = $7E0E18
SPR9_TIMER_C    = $7E0E19
SPRA_TIMER_C    = $7E0E1A
SPRB_TIMER_C    = $7E0E1B
SPRC_TIMER_C    = $7E0E1C
SPRD_TIMER_C    = $7E0E1D
SPRE_TIMER_C    = $7E0E1E
SPRF_TIMER_C    = $7E0E1F

; Which sprite is it?
SPR0_ID         = $7E0E20
SPR1_ID         = $7E0E21
SPR2_ID         = $7E0E22
SPR3_ID         = $7E0E23
SPR4_ID         = $7E0E24
SPR5_ID         = $7E0E25
SPR6_ID         = $7E0E26
SPR7_ID         = $7E0E27
SPR8_ID         = $7E0E28
SPR9_ID         = $7E0E29
SPRA_ID         = $7E0E2A
SPRB_ID         = $7E0E2B
SPRC_ID         = $7E0E2C
SPRD_ID         = $7E0E2D
SPRE_ID         = $7E0E2E
SPRF_ID         = $7E0E2F

; TODO
SPR0_AUXS       = $7E0E30
SPR1_AUXS       = $7E0E31
SPR2_AUXS       = $7E0E32
SPR3_AUXS       = $7E0E33
SPR4_AUXS       = $7E0E34
SPR5_AUXS       = $7E0E35
SPR6_AUXS       = $7E0E36
SPR7_AUXS       = $7E0E37
SPR8_AUXS       = $7E0E38
SPR9_AUXS       = $7E0E39
SPRA_AUXS       = $7E0E3A
SPRB_AUXS       = $7E0E3B
SPRC_AUXS       = $7E0E3C
SPRD_AUXS       = $7E0E3D
SPRE_AUXS       = $7E0E3E
SPRF_AUXS       = $7E0E3F

; Controls OAM allocation and a couple other properties
; set from $0D:B080
; hmwo oooo
;   h - harmless sprite
;   m - something with mastersword TODO
;   w - something with walls? TODO
;   o - oam allocation
SPR0_OAMHARM    = $7E0E40
SPR1_OAMHARM    = $7E0E41
SPR2_OAMHARM    = $7E0E42
SPR3_OAMHARM    = $7E0E43
SPR4_OAMHARM    = $7E0E44
SPR5_OAMHARM    = $7E0E45
SPR6_OAMHARM    = $7E0E46
SPR7_OAMHARM    = $7E0E47
SPR8_OAMHARM    = $7E0E48
SPR9_OAMHARM    = $7E0E49
SPRA_OAMHARM    = $7E0E4A
SPRB_OAMHARM    = $7E0E4B
SPRC_OAMHARM    = $7E0E4C
SPRD_OAMHARM    = $7E0E4D
SPRE_OAMHARM    = $7E0E4E
SPRF_OAMHARM    = $7E0E4F

; Sprite's hitpoints | set from $0DB173
SPR0_HP         = $7E0E50
SPR1_HP         = $7E0E51
SPR2_HP         = $7E0E52
SPR3_HP         = $7E0E53
SPR4_HP         = $7E0E54
SPR5_HP         = $7E0E55
SPR6_HP         = $7E0E56
SPR7_HP         = $7E0E57
SPR8_HP         = $7E0E58
SPR9_HP         = $7E0E59
SPRA_HP         = $7E0E5A
SPRB_HP         = $7E0E5B
SPRC_HP         = $7E0E5C
SPRD_HP         = $7E0E5D
SPRE_HP         = $7E0E5E
SPRF_HP         = $7E0E5F

; Mostly controls graphics
; nios pppt
;   n - death anim stuff? TODO
;   i - impervious to attacks and collision? TODO
;   o - shadow (0: no shadow | 1: shadow)
;   p - palette used for OAM props
;   t - name table used for OAM props
SPR0_PROPS      = $7E0E60
SPR1_PROPS      = $7E0E61
SPR2_PROPS      = $7E0E62
SPR3_PROPS      = $7E0E63
SPR4_PROPS      = $7E0E64
SPR5_PROPS      = $7E0E65
SPR6_PROPS      = $7E0E66
SPR7_PROPS      = $7E0E67
SPR8_PROPS      = $7E0E68
SPR9_PROPS      = $7E0E69
SPRA_PROPS      = $7E0E6A
SPRB_PROPS      = $7E0E6B
SPRC_PROPS      = $7E0E6C
SPRD_PROPS      = $7E0E6D
SPRE_PROPS      = $7E0E6E
SPRF_PROPS      = $7E0E6F

; TODO
SPR0_COLLIDE    = $7E0E70
SPR1_COLLIDE    = $7E0E71
SPR2_COLLIDE    = $7E0E72
SPR3_COLLIDE    = $7E0E73
SPR4_COLLIDE    = $7E0E74
SPR5_COLLIDE    = $7E0E75
SPR6_COLLIDE    = $7E0E76
SPR7_COLLIDE    = $7E0E77
SPR8_COLLIDE    = $7E0E78
SPR9_COLLIDE    = $7E0E79
SPRA_COLLIDE    = $7E0E7A
SPRB_COLLIDE    = $7E0E7B
SPRC_COLLIDE    = $7E0E7C
SPRD_COLLIDE    = $7E0E7D
SPRE_COLLIDE    = $7E0E7E
SPRF_COLLIDE    = $7E0E7F

; TODO
SPR0_0E80       = $7E0E80
SPR1_0E80       = $7E0E81
SPR2_0E80       = $7E0E82
SPR3_0E80       = $7E0E83
SPR4_0E80       = $7E0E84
SPR5_0E80       = $7E0E85
SPR6_0E80       = $7E0E86
SPR7_0E80       = $7E0E87
SPR8_0E80       = $7E0E88
SPR9_0E80       = $7E0E89
SPRA_0E80       = $7E0E8A
SPRB_0E80       = $7E0E8B
SPRC_0E80       = $7E0E8C
SPRD_0E80       = $7E0E8D
SPRE_0E80       = $7E0E8E
SPRF_0E80       = $7E0E8F

; TODO
SPR0_0E90       = $7E0E90
SPR1_0E90       = $7E0E91
SPR2_0E90       = $7E0E92
SPR3_0E90       = $7E0E93
SPR4_0E90       = $7E0E94
SPR5_0E90       = $7E0E95
SPR6_0E90       = $7E0E96
SPR7_0E90       = $7E0E97
SPR8_0E90       = $7E0E98
SPR9_0E90       = $7E0E99
SPRA_0E90       = $7E0E9A
SPRB_0E90       = $7E0E9B
SPRC_0E90       = $7E0E9C
SPRD_0E90       = $7E0E9D
SPRE_0E90       = $7E0E9E
SPRF_0E90       = $7E0E9F

; TODO
SPR0_0EA0       = $7E0EA0
SPR1_0EA0       = $7E0EA1
SPR2_0EA0       = $7E0EA2
SPR3_0EA0       = $7E0EA3
SPR4_0EA0       = $7E0EA4
SPR5_0EA0       = $7E0EA5
SPR6_0EA0       = $7E0EA6
SPR7_0EA0       = $7E0EA7
SPR8_0EA0       = $7E0EA8
SPR9_0EA0       = $7E0EA9
SPRA_0EA0       = $7E0EAA
SPRB_0EA0       = $7E0EAB
SPRC_0EA0       = $7E0EAC
SPRD_0EA0       = $7E0EAD
SPRE_0EA0       = $7E0EAE
SPRF_0EA0       = $7E0EAF

; TODO
SPR0_0EB0       = $7E0EB0
SPR1_0EB0       = $7E0EB1
SPR2_0EB0       = $7E0EB2
SPR3_0EB0       = $7E0EB3
SPR4_0EB0       = $7E0EB4
SPR5_0EB0       = $7E0EB5
SPR6_0EB0       = $7E0EB6
SPR7_0EB0       = $7E0EB7
SPR8_0EB0       = $7E0EB8
SPR9_0EB0       = $7E0EB9
SPRA_0EB0       = $7E0EBA
SPRB_0EB0       = $7E0EBB
SPRC_0EB0       = $7E0EBC
SPRD_0EB0       = $7E0EBD
SPRE_0EB0       = $7E0EBE
SPRF_0EB0       = $7E0EBF

; TODO
SPR0_0EC0       = $7E0EC0
SPR1_0EC0       = $7E0EC1
SPR2_0EC0       = $7E0EC2
SPR3_0EC0       = $7E0EC3
SPR4_0EC0       = $7E0EC4
SPR5_0EC0       = $7E0EC5
SPR6_0EC0       = $7E0EC6
SPR7_0EC0       = $7E0EC7
SPR8_0EC0       = $7E0EC8
SPR9_0EC0       = $7E0EC9
SPRA_0EC0       = $7E0ECA
SPRB_0EC0       = $7E0ECB
SPRC_0EC0       = $7E0ECC
SPRD_0EC0       = $7E0ECD
SPRE_0EC0       = $7E0ECE
SPRF_0EC0       = $7E0ECF

; TODO
SPR0_0ED0       = $7E0ED0
SPR1_0ED0       = $7E0ED1
SPR2_0ED0       = $7E0ED2
SPR3_0ED0       = $7E0ED3
SPR4_0ED0       = $7E0ED4
SPR5_0ED0       = $7E0ED5
SPR6_0ED0       = $7E0ED6
SPR7_0ED0       = $7E0ED7
SPR8_0ED0       = $7E0ED8
SPR9_0ED0       = $7E0ED9
SPRA_0ED0       = $7E0EDA
SPRB_0ED0       = $7E0EDB
SPRC_0ED0       = $7E0EDC
SPRD_0ED0       = $7E0EDD
SPRE_0ED0       = $7E0EDE
SPRF_0ED0       = $7E0EDF

; TODO
SPR0_TIMER_D    = $7E0EE0
SPR1_TIMER_D    = $7E0EE1
SPR2_TIMER_D    = $7E0EE2
SPR3_TIMER_D    = $7E0EE3
SPR4_TIMER_D    = $7E0EE4
SPR5_TIMER_D    = $7E0EE5
SPR6_TIMER_D    = $7E0EE6
SPR7_TIMER_D    = $7E0EE7
SPR8_TIMER_D    = $7E0EE8
SPR9_TIMER_D    = $7E0EE9
SPRA_TIMER_D    = $7E0EEA
SPRB_TIMER_D    = $7E0EEB
SPRC_TIMER_D    = $7E0EEC
SPRD_TIMER_D    = $7E0EED
SPRE_TIMER_D    = $7E0EEE
SPRF_TIMER_D    = $7E0EEF

; TODO
SPR0_DMGTIMER   = $7E0EF0
SPR1_DMGTIMER   = $7E0EF1
SPR2_DMGTIMER   = $7E0EF2
SPR3_DMGTIMER   = $7E0EF3
SPR4_DMGTIMER   = $7E0EF4
SPR5_DMGTIMER   = $7E0EF5
SPR6_DMGTIMER   = $7E0EF6
SPR7_DMGTIMER   = $7E0EF7
SPR8_DMGTIMER   = $7E0EF8
SPR9_DMGTIMER   = $7E0EF9
SPRA_DMGTIMER   = $7E0EFA
SPRB_DMGTIMER   = $7E0EFB
SPRC_DMGTIMER   = $7E0EFC
SPRD_DMGTIMER   = $7E0EFD
SPRE_DMGTIMER   = $7E0EFE
SPRF_DMGTIMER   = $7E0EFF

; TODO
SPR0_HALT       = $7E0F00
SPR1_HALT       = $7E0F01
SPR2_HALT       = $7E0F02
SPR3_HALT       = $7E0F03
SPR4_HALT       = $7E0F04
SPR5_HALT       = $7E0F05
SPR6_HALT       = $7E0F06
SPR7_HALT       = $7E0F07
SPR8_HALT       = $7E0F08
SPR9_HALT       = $7E0F09
SPRA_HALT       = $7E0F0A
SPRB_HALT       = $7E0F0B
SPRC_HALT       = $7E0F0C
SPRD_HALT       = $7E0F0D
SPRE_HALT       = $7E0F0E
SPRF_HALT       = $7E0F0F

; TODO
SPR0_TIMER_E    = $7E0F10
SPR1_TIMER_E    = $7E0F11
SPR2_TIMER_E    = $7E0F12
SPR3_TIMER_E    = $7E0F13
SPR4_TIMER_E    = $7E0F14
SPR5_TIMER_E    = $7E0F15
SPR6_TIMER_E    = $7E0F16
SPR7_TIMER_E    = $7E0F17
SPR8_TIMER_E    = $7E0F18
SPR9_TIMER_E    = $7E0F19
SPRA_TIMER_E    = $7E0F1A
SPRB_TIMER_E    = $7E0F1B
SPRC_TIMER_E    = $7E0F1C
SPRD_TIMER_E    = $7E0F1D
SPRE_TIMER_E    = $7E0F1E
SPRF_TIMER_E    = $7E0F1F

; TODO
SPR0_LAYER      = $7E0F20
SPR1_LAYER      = $7E0F21
SPR2_LAYER      = $7E0F22
SPR3_LAYER      = $7E0F23
SPR4_LAYER      = $7E0F24
SPR5_LAYER      = $7E0F25
SPR6_LAYER      = $7E0F26
SPR7_LAYER      = $7E0F27
SPR8_LAYER      = $7E0F28
SPR9_LAYER      = $7E0F29
SPRA_LAYER      = $7E0F2A
SPRB_LAYER      = $7E0F2B
SPRC_LAYER      = $7E0F2C
SPRD_LAYER      = $7E0F2D
SPRE_LAYER      = $7E0F2E
SPRF_LAYER      = $7E0F2F

; TODO
; y-axis
SPR0_RECOILY    = $7E0F30
SPR1_RECOILY    = $7E0F31
SPR2_RECOILY    = $7E0F32
SPR3_RECOILY    = $7E0F33
SPR4_RECOILY    = $7E0F34
SPR5_RECOILY    = $7E0F35
SPR6_RECOILY    = $7E0F36
SPR7_RECOILY    = $7E0F37
SPR8_RECOILY    = $7E0F38
SPR9_RECOILY    = $7E0F39
SPRA_RECOILY    = $7E0F3A
SPRB_RECOILY    = $7E0F3B
SPRC_RECOILY    = $7E0F3C
SPRD_RECOILY    = $7E0F3D
SPRE_RECOILY    = $7E0F3E
SPRF_RECOILY    = $7E0F3F

; x-axis
SPR0_RECOILX    = $7E0F40
SPR1_RECOILX    = $7E0F41
SPR2_RECOILX    = $7E0F42
SPR3_RECOILX    = $7E0F43
SPR4_RECOILX    = $7E0F44
SPR5_RECOILX    = $7E0F45
SPR6_RECOILX    = $7E0F46
SPR7_RECOILX    = $7E0F47
SPR8_RECOILX    = $7E0F48
SPR9_RECOILX    = $7E0F49
SPRA_RECOILX    = $7E0F4A
SPRB_RECOILX    = $7E0F4B
SPRC_RECOILX    = $7E0F4C
SPRD_RECOILX    = $7E0F4D
SPRE_RECOILX    = $7E0F4E
SPRF_RECOILX    = $7E0F4F

; Actual props copied to OAM
SPR0_OAMPROP    = $7E0F50
SPR1_OAMPROP    = $7E0F51
SPR2_OAMPROP    = $7E0F52
SPR3_OAMPROP    = $7E0F53
SPR4_OAMPROP    = $7E0F54
SPR5_OAMPROP    = $7E0F55
SPR6_OAMPROP    = $7E0F56
SPR7_OAMPROP    = $7E0F57
SPR8_OAMPROP    = $7E0F58
SPR9_OAMPROP    = $7E0F59
SPRA_OAMPROP    = $7E0F5A
SPRB_OAMPROP    = $7E0F5B
SPRC_OAMPROP    = $7E0F5C
SPRD_OAMPROP    = $7E0F5D
SPRE_OAMPROP    = $7E0F5E
SPRF_OAMPROP    = $7E0F5F

; Mostly controls collision related stuff
; isph hhhh
;   i - ignore collision stuff? TODO
;   s - "statis"; sprite doesn't count for kill rooms if set
;   p - activeness? TODO
;   h - hitbox ID
; TODO HITBOXES
SPR0_COLPROP    = $7E0F60
SPR1_COLPROP    = $7E0F61
SPR2_COLPROP    = $7E0F62
SPR3_COLPROP    = $7E0F63
SPR4_COLPROP    = $7E0F64
SPR5_COLPROP    = $7E0F65
SPR6_COLPROP    = $7E0F66
SPR7_COLPROP    = $7E0F67
SPR8_COLPROP    = $7E0F68
SPR9_COLPROP    = $7E0F69
SPRA_COLPROP    = $7E0F6A
SPRB_COLPROP    = $7E0F6B
SPRC_COLPROP    = $7E0F6C
SPRD_COLPROP    = $7E0F6D
SPRE_COLPROP    = $7E0F6E
SPRF_COLPROP    = $7E0F6F

; Z coordinate
SPR0_Z          = $7E0F70
SPR1_Z          = $7E0F71
SPR2_Z          = $7E0F72
SPR3_Z          = $7E0F73
SPR4_Z          = $7E0F74
SPR5_Z          = $7E0F75
SPR6_Z          = $7E0F76
SPR7_Z          = $7E0F77
SPR8_Z          = $7E0F78
SPR9_Z          = $7E0F79
SPRA_Z          = $7E0F7A
SPRB_Z          = $7E0F7B
SPRC_Z          = $7E0F7C
SPRD_Z          = $7E0F7D
SPRE_Z          = $7E0F7E
SPRF_Z          = $7E0F7F

; TODO
SPR0_VZ         = $7E0F80
SPR1_VZ         = $7E0F81
SPR2_VZ         = $7E0F82
SPR3_VZ         = $7E0F83
SPR4_VZ         = $7E0F84
SPR5_VZ         = $7E0F85
SPR6_VZ         = $7E0F86
SPR7_VZ         = $7E0F87
SPR8_VZ         = $7E0F88
SPR9_VZ         = $7E0F89
SPRA_VZ         = $7E0F8A
SPRB_VZ         = $7E0F8B
SPRC_VZ         = $7E0F8C
SPRD_VZ         = $7E0F8D
SPRE_VZ         = $7E0F8E
SPRF_VZ         = $7E0F8F

; TODO
SPR0_SUBZ       = $7E0F90
SPR1_SUBZ       = $7E0F91
SPR2_SUBZ       = $7E0F92
SPR3_SUBZ       = $7E0F93
SPR4_SUBZ       = $7E0F94
SPR5_SUBZ       = $7E0F95
SPR6_SUBZ       = $7E0F96
SPR7_SUBZ       = $7E0F97
SPR8_SUBZ       = $7E0F98
SPR9_SUBZ       = $7E0F99
SPRA_SUBZ       = $7E0F9A
SPRB_SUBZ       = $7E0F9B
SPRC_SUBZ       = $7E0F9C
SPRD_SUBZ       = $7E0F9D
SPRE_SUBZ       = $7E0F9E
SPRF_SUBZ       = $7E0F9F

; Current sprite slot being executed during the main sprite loop.
SPRSLOT         = $7E0FA0

; Used to hold last RNG value for "seeding"
RNG             = $7E0FA1

; FREE RAM: 0x03
UNUSED_7E0FA2   = $7E0FA2
UNUSED_7E0FA3   = $7E0FA3
UNUSED_7E0FA4   = $7E0FA4

; Stores the tile type for sprites and ancillae.
SPRTILE         = $7E0FA5

; FREE RAM: 0x02
UNUSED_7E0FA6   = $7E0FA6
UNUSED_7E0FA7   = $7E0FA7

; Used as general scratch space, but commonly used for low byte of OAM positioning for sprites.
SPROAMX         = $7E0FA8
SPROAMY         = $7E0FA9

; Used for positioning OAM on the dungeon map.
; Also used as general scratch space for guards.
MAPOAMX         = $7E0FAA
MAPOAMY         = $7E0FAB

; Weapon tink spark animation state
TINK            = $7E0FAC

; Weapon tink spark coordinates
TINKX           = $7E0FAD
TINKY           = $7E0FAE

; Weapon tink spark animation timer
TINKATM         = $7E0FAF

; Used to set sprite coordinate high bytes as calculated from room ID
SETXHI          = $7E0FB0
SETYHI          = $7E0FB1

; Some debug variable? Never used productively, but seems to be kept in sync with SPRLIFT.
DEBUG_7E0FB2    = $7E0FB2

; This address forces OAM allocation to consider the layer of the entity.
; Mostly helps to prevent ghosting with objects in multi layer rooms
; Also required to be set if sprites are to drop to the other layer when hitting mask 1C
LAYERING        = $7E0FB3

; When nonzero, garnish are handled.
GARNISH         = $7E0FB4

; Used for looping through sprites in various routines.
SPRXTEMP        = $7E0FB5

; Used as scratch space for various sprite routines.
SPRSCRAP        = $7E0FB6

; Counts up every frame in the overworld.
; Bit 0 is checked to alternate the behavior of proximity based sprite activation.
OWLOADSWAP      = $7E0FB7

; Edge coordinates used for calculating proximity of sprites to load on overworld
OWLDWXL         = $7E0FB8
OWLDWXH         = $7E0FB9
OWLDNYL         = $7E0FBA
OWLDNYH         = $7E0FBB
OWLDEXL         = $7E0FBC
OWLDEXH         = $7E0FBD
OWLDSYL         = $7E0FBE
OWLDSYH         = $7E0FBF

; FREE RAM: 0x01
UNUSED_7E0FC0   = $7E0FC0

; Seems to freeze sprites
; TODO: usage
FREEZESPR       = $7E0FC1

; Cache of Link's coordinates
; Done at the beginning of Link_Main every frame
; In X,Y order instead of Y,X for some reason
POSX2L          = $7E0FC2
POSX2H          = $7E0FC3
POSY2L          = $7E0FC4
POSY2H          = $7E0FC5

; Mirrors $0AAA in some cases
; Used by sprites to verify the graphics loaded
; TODO verify
GFXHSLOT        = $7E0FC6

; Prize pack indices
PRIZEX1         = $7E0FC7
PRIZEX2         = $7E0FC8
PRIZEX3         = $7E0FC9
PRIZEX4         = $7E0FCA
PRIZEX5         = $7E0FCB
PRIZEX6         = $7E0FCC
PRIZEX7         = $7E0FCD

; FREE RAM: 0x09
; Space was probably allotted for more prize packs, but it goes unused.
UNUSED_7E0FCE   = $7E0FCE
UNUSED_7E0FCF   = $7E0FCF
UNUSED_7E0FD0   = $7E0FD0
UNUSED_7E0FD1   = $7E0FD1
UNUSED_7E0FD2   = $7E0FD2
UNUSED_7E0FD3   = $7E0FD3
UNUSED_7E0FD4   = $7E0FD4
UNUSED_7E0FD5   = $7E0FD5
UNUSED_7E0FD6   = $7E0FD6

; Unreachable debug flag for skipping frames when L but not R pressed.
SKIPFRAME       = $7E0FD7

; Caches sprite coordinates for calculations
SPRCORDXL       = $7E0FD8
SPRCORDXH       = $7E0FD9
SPRCORDYL       = $7E0FDA
SPRCORDYH       = $7E0FDB

; Triggers noise to call guards.
ALERT           = $7E0FDC

; Flags whether the animals in the haunted grove should disperse yet.
ANIMALRUN       = $7E0FDD

; Overlord index of active "home target" overlords (ID: 0x01)
HOMESLOT        = $7E0FDE

; FREE RAM: 0x01
UNUSED_7E0FDF   = $7E0FDF

; OAM region pointers
OAMAH           = $7E0FE0
OAMAL           = $7E0FE1
OAMBH           = $7E0FE2
OAMBL           = $7E0FE3
OAMCH           = $7E0FF4
OAMCL           = $7E0FF5
OAMDH           = $7E0FF6
OAMDL           = $7E0FF7
OAMEH           = $7E0FF8
OAMEL           = $7E0FF9
OAMFH           = $7E0FFA
OAMFL           = $7E0FFB

; Used to find backup regions for OAM regions
; High byte unused but always written 0
OAMBKAH         = $7E0FEC
OAMBKAL         = $7E0FED
OAMBKBH         = $7E0FEE
OAMBKBL         = $7E0FEF
OAMBKCH         = $7E0FF0
OAMBKCL         = $7E0FF1
OAMBKDH         = $7E0FF2
OAMBKDL         = $7E0FF3
OAMBKEH         = $7E0FF4
OAMBKEL         = $7E0FF5
OAMBKFH         = $7E0FF6
OAMBKFL         = $7E0FF7

; Used as a fallback search index for garnish creation.
; Also counts the number of armos knights left alive.
GARNFIND        = $7E0FF8

; Used as a timer that counts down and flashes the screen while running.
; Flags whether or not to execute cached sprites on transition.
DOCACHE         = $7E0FFA

; Zeroed in one location, but never read.
JUNK_7E0FFB     = $7E0FFB

; When set, prevents:
;   menuing
;   mirroring
;   medallions
NOMENU          = $7E0FFC

; Set nonzero when the boulder spawner overlord is loaded on the overworld.
AVALANCHE       = $7E0FFD

; Increments if AVALANCHE is set.
; Boulders spawn when the bottom 4 bits are all reset.
; ..aa aaaa
BOULDER         = $7E0FFE

; Light world or dark world
WORLDFLAG       = $7E0FFF

;---------------------------------------------------------------------------------------------------

; Used by stripes for arbitrary VRAM transfers.
GFXSTRIPES      = $7E1000

; Used for room drawing
ROOMSTRIPES     = $7E1100

;---------------------------------------------------------------------------------------------------

; Door types TODO
DOOR0TYPE       = $7E1980
DOOR0DIRT       = $7E1981
DOOR1TYPE       = $7E1982
DOOR1DIRT       = $7E1983
DOOR2TYPE       = $7E1984
DOOR2DIRT       = $7E1985
DOOR3TYPE       = $7E1986
DOOR3DIRT       = $7E1987
DOOR4TYPE       = $7E1988
DOOR4DIRT       = $7E1989
DOOR5TYPE       = $7E198A
DOOR5DIRT       = $7E198B
DOOR6TYPE       = $7E198C
DOOR6DIRT       = $7E198D
DOOR7TYPE       = $7E198E
DOOR7DIRT       = $7E198F
DOOR8TYPE       = $7E1990
DOOR8DIRT       = $7E1991
DOOR9TYPE       = $7E1992
DOOR9DIRT       = $7E1993
DOORATYPE       = $7E1994
DOORADIRT       = $7E1995
DOORBTYPE       = $7E1996
DOORBDIRT       = $7E1997
DOORCTYPE       = $7E1998
DOORCDIRT       = $7E1999
DOORDTYPE       = $7E199A
DOORDDIRT       = $7E199B
DOORETYPE       = $7E199C
DOOREDIRT       = $7E199D
DOORFTYPE       = $7E199E
DOORFDIRT       = $7E199F

; Door tile map location
DOOR0TMAPL      = $7E19A0
DOOR0TMAPH      = $7E19A1
DOOR1TMAPL      = $7E19A2
DOOR1TMAPH      = $7E19A3
DOOR2TMAPL      = $7E19A4
DOOR2TMAPH      = $7E19A5
DOOR3TMAPL      = $7E19A6
DOOR3TMAPH      = $7E19A7
DOOR4TMAPL      = $7E19A8
DOOR4TMAPH      = $7E19A9
DOOR5TMAPL      = $7E19AA
DOOR5TMAPH      = $7E19AB
DOOR6TMAPL      = $7E19AC
DOOR6TMAPH      = $7E19AD
DOOR7TMAPL      = $7E19AE
DOOR7TMAPH      = $7E19AF
DOOR8TMAPL      = $7E19B0
DOOR8TMAPH      = $7E19B1
DOOR9TMAPL      = $7E19B2
DOOR9TMAPH      = $7E19B3
DOORATMAPL      = $7E19B4
DOORATMAPH      = $7E19B5
DOORBTMAPL      = $7E19B6
DOORBTMAPH      = $7E19B7
DOORCTMAPL      = $7E19B8
DOORCTMAPH      = $7E19B9
DOORDTMAPL      = $7E19BA
DOORDTMAPH      = $7E19BB
DOORETMAPL      = $7E19BC
DOORETMAPH      = $7E19BD
DOORFTMAPL      = $7E19BE
DOORFTMAPH      = $7E19BF

; Door direction
;   0x00 - North
;   0x01 - South
;   0x02 - West
;   0x03 - East
DOOR0DIR        = $7E19C0
DOOR0DIRH       = $7E19C1
DOOR1DIR        = $7E19C2
DOOR1DIRH       = $7E19C3
DOOR2DIR        = $7E19C4
DOOR2DIRH       = $7E19C5
DOOR3DIR        = $7E19C6
DOOR3DIRH       = $7E19C7
DOOR4DIR        = $7E19C8
DOOR4DIRH       = $7E19C9
DOOR5DIR        = $7E19CA
DOOR5DIRH       = $7E19CB
DOOR6DIR        = $7E19CC
DOOR6DIRH       = $7E19CD
DOOR7DIR        = $7E19CE
DOOR7DIRH       = $7E19CF
DOOR8DIR        = $7E19D0
DOOR8DIRH       = $7E19D1
DOOR9DIR        = $7E19D2
DOOR9DIRH       = $7E19D3
DOORADIR        = $7E19D4
DOORADIRH       = $7E19D5
DOORBDIR        = $7E19D6
DOORBDIRH       = $7E19D7
DOORCDIR        = $7E19D8
DOORCDIRH       = $7E19D9
DOORDDIR        = $7E19DA
DOORDDIRH       = $7E19DB
DOOREDIR        = $7E19DC
DOOREDIRH       = $7E19DD
DOORFDIR        = $7E19DE
DOORFDIRH       = $7E19DF

; Index for exit mod doors in the following array
EXITI           = $7E19E0
EXITIH          = $7E19E1

; Tile map location of doors modified into exits
EXIT0TX         = $7E19E2
EXIT0TXH        = $7E19E3
EXIT1TX         = $7E19E4
EXIT1TXH        = $7E19E5
EXIT2TX         = $7E19E6
EXIT2TXH        = $7E19E7
EXIT3TX         = $7E19E8
EXIT3TXH        = $7E19E9

; FREE RAM: 0x16
UNUSED_7E19EA   = $7E19EA

;---------------------------------------------------------------------------------------------------

; 20 steps of animation and movement caching for followers
FOLLOWERYL      = $7E1A00
FOLLOWERYH      = $7E1A14

FOLLOWERXL      = $7E1A28
FOLLOWERXH      = $7E1A3C

FOLLOWERZ       = $7E1A50
FOLLOWERLAYER   = $7E1A64

; BIG FREE RAM: 0x38
UNUSED_7E1A78   = $7E1A78

; X- and Y- coordinates of mirror portal; also flute numbers during flute menu.
; x low
FLUTENUMXL      = $7E1AB0

; FREE RAM: 0x07
UNUSED_7E1AB8   = $7E1AB8

; mirror x low
MIRRORXL        = $7E1ABF

; x high
FLUTENUMXH      = $7E1AC0

; FREE RAM: 0x07
UNUSED_7E1AC8   = $7E1AC8

; mirror x high
MIRRORXH        = $7E1ACF

; y low
FLUTENUMYL      = $7E1AD0

; FREE RAM: 0x07
UNUSED_7E1AD8   = $7E1AD8

; mirror y l
MIRRORYL        = $7E1ADF

; y high
FLUTENUMYH      = $7E1AE0

; FREE RAM: 0x07
UNUSED_7E1AE8   = $7E1AE8

; mirror y high
MIRRORYH        = $7E1AEF

; Currently selected flute number. Zero-indexed, unlike the actual icons.
FLUTESEL        = $7E1AF0

; Zeroed when initializing bat crash, but never read.
JUNK_7E1AF1     = $7E1AF1

; FREE RAM: 0x0D
UNUSED_7E1AF2   = $7E1AF2
UNUSED_7E1AF3   = $7E1AF3
UNUSED_7E1AF4   = $7E1AF4
UNUSED_7E1AF5   = $7E1AF5
UNUSED_7E1AF6   = $7E1AF6
UNUSED_7E1AF7   = $7E1AF7
UNUSED_7E1AF8   = $7E1AF8
UNUSED_7E1AF9   = $7E1AF9
UNUSED_7E1AFA   = $7E1AFA
UNUSED_7E1AFB   = $7E1AFB
UNUSED_7E1AFC   = $7E1AFC
UNUSED_7E1AFD   = $7E1AFD
UNUSED_7E1AFE   = $7E1AFE

; Slowly counts up while in the world map if mirror is active.
; Zeroed when loading a file.
; Not used for anything.
MIRRORCOUNT     = $7E1AFF

;---------------------------------------------------------------------------------------------------

; Spotlight pointers for HDMA
IRISPTR         = $7E1B00

;---------------------------------------------------------------------------------------------------

; FREE RAM: 0x10
UNUSED_7E1CC0   = $7E1CC0
UNUSED_7E1CC1   = $7E1CC1
UNUSED_7E1CC2   = $7E1CC2
UNUSED_7E1CC3   = $7E1CC3
UNUSED_7E1CC4   = $7E1CC4
UNUSED_7E1CC5   = $7E1CC5
UNUSED_7E1CC6   = $7E1CC6
UNUSED_7E1CC7   = $7E1CC7
UNUSED_7E1CC8   = $7E1CC8
UNUSED_7E1CC9   = $7E1CC9
UNUSED_7E1CCA   = $7E1CCA
UNUSED_7E1CCB   = $7E1CCB
UNUSED_7E1CCC   = $7E1CCC
UNUSED_7E1CCD   = $7E1CCD
UNUSED_7E1CCE   = $7E1CCE
UNUSED_7E1CCF   = $7E1CCF

; VRAM address for drawing message box borders
BORDADD         = $7E1CD0
BORDADDH        = $7E1CD1

; VRAM address>>1 of dialog window
MSGWPOSL        = $7E1CD2
MSGWPOSH        = $7E1CD3

; Subsubmodule on what to draw
MSGSUBSUB       = $7E1CD4

; TODO how exactly this is used?
MSGSPEEDB       = $7E1CD5
MSGSPEEDA       = $7E1CD6

; Used as a counter to render border window
MSGBRDCNT       = $7E1CD7

; Messaging submodule
MSGSUB          = $7E1CD8

; Offset into message buffer at $7F:1200
MSGBFROFF       = $7E1CD9
MSGBFROFFH      = $7E1CDA

; FREE RAM: 0x01
UNUSED_7E1CDB   = $7E1CDB

; High byte of message tilemap definition (including props; color)
MSGPROP         = $7E1CDC

; Offset into message data
MSGDATAOFF      = $7E1CDD
MSGDATAOFFH     = $7E1CDE

; Initialized with 00, but seems unused.
JUNK_7E1CDF     = $7E1CDF

; Wait timer delay
MSGWAIT         = $7E1CE0
MSGWAITH        = $7E1CE1

; Initialized to $3980 and incremented to fill the message box tile map.
MSGFILL         = $7E1CE2
MSGFILLH        = $7E1CE3

; Initialized with 0x00, but unused
JUNK_7E1CE4     = $7E1CE4
JUNK_7E1CE5     = $7E1CE5

; Helps draw in pixels one by one to VRAM buffer
MSGPXL          = $7E1CE6
MSGPXLH         = $7E1CE7

; Selected option in message
MSGCHOICE       = $7E1CE8

; Delay timer for various actions
MSGDELAY        = $7E1CE9

; Handles scrolling loops, but poorly implemented and unused
MSGSCRLX        = $7E1CEA

; Initialized with 00, but unused
JUNK_7E1CEB     = $7E1CEB
JUNK_7E1CEC     = $7E1CEC
JUNK_7E1CED     = $7E1CED
JUNK_7E1CEE     = $7E1CEE
JUNK_7E1CEF     = $7E1CEF

; Message ID and page
TEXTID          = $7E1CF0
TEXTIDH         = $7E1CF1

; Message BCD values as nibbles
; 1CF2: bbbb aaaa
; 1CF3: dddd cccc
MSGBCD12        = $7E1CF2
MSGBCD34        = $7E1CF3

; Saves last selected menu option when entering various interfaces
MSGLASTC        = $7E1CF4

; FREE RAM: 0x0B
UNUSED_7E1CF5   = $7E1CF5
UNUSED_7E1CF6   = $7E1CF6
UNUSED_7E1CF7   = $7E1CF7
UNUSED_7E1CF8   = $7E1CF8
UNUSED_7E1CF9   = $7E1CF9
UNUSED_7E1CFA   = $7E1CFA
UNUSED_7E1CFB   = $7E1CFB
UNUSED_7E1CFC   = $7E1CFC
UNUSED_7E1CFD   = $7E1CFD
UNUSED_7E1CFE   = $7E1CFE
UNUSED_7E1CFF   = $7E1CFF

;---------------------------------------------------------------------------------------------------

; Self-explanatory sprite caching
CACHE_0DD0      = $7E1D00
CACHE_0E20      = $7E1D10
CACHE_0D10      = $7E1D20
CACHE_0D30      = $7E1D30
CACHE_0D00      = $7E1D40
CACHE_0D20      = $7E1D50
CACHE_0DC0      = $7E1D60
CACHE_0D90      = $7E1D70
CACHE_0EB0      = $7E1D80
CACHE_0F50      = $7E1D90
CACHE_0B89      = $7E1DA0
CACHE_0DE0      = $7E1DB0
CACHE_0E40      = $7E1DC0
CACHE_0F20      = $7E1DD0
CACHE_0D80      = $7E1DE0
CACHE_0E60      = $7E1DF0

;---------------------------------------------------------------------------------------------------
; Polyhedral variables used by the intro and ending sequence.
;---------------------------------------------------------------------------------------------------

; Cutscene act
SCENESTEP       = $7E1E00

; Timer for changing acts
SCENETIME       = $7E1E01

; When set, triforce room triangles don't move.
SCENESTOP       = $7E1E02

; FREE RAM: 0x05
UNUSED_7E1E03   = $7E1E03
UNUSED_7E1E04   = $7E1E04
UNUSED_7E1E05   = $7E1E05
UNUSED_7E1E06   = $7E1E06
UNUSED_7E1E07   = $7E1E07

; Used for indexing in OAM routines
SCENEOAMXL      = $7E1E08
SCENEOAMXH      = $7E1E09

; Frame counter
SCENEFRAME      = $7E1E0A

; FREE RAM: 0x01
UNUSED_7E1E0B   = $7E1E0B

; Countdown timer for the triangles to snap into their final position in the triforce room.
SCENESNAPTL     = $7E1E0C
SCENESNAPTH     = $7E1E0D

; FREE RAM: 0x02
UNUSED_7E1E0E   = $7E1E0E
UNUSED_7E1E0F   = $7E1E0F

; Mode for sprite
;   0x00 - nothing
;   0x01 - initialize
;   0x02 - animate
SCSPRMODE       = $7E1E10

; Sprite type
SCSPRID         = $7E1E18

; Step counter
SCSPRSTEP       = $7E1E20

; Seems to be a subpixel for triforce triangle x speeds
SCSPRSUBX       = $7E1E28

; X position
SCSPRXL         = $7E1E30
SCSPRXH         = $7E1E38

; Seems to be a subpixel for triforce triangle y speeds
SCSPRSUBY       = $7E1E40

; Y position
SCSPRYL         = $7E1E48
SCSPRYH         = $7E1E50

; Speed
SCSPRVX         = $7E1E58
SCSPRVY         = $7E1E60

; BIG FREE RAM: 0x98
UNUSED_7E1E68   = $7E1E68

;===================================================================================================
;---------------------------------------------------------------------------------------------------
; IRQ DIRECT PAGE
;---------------------------------------------------------------------------------------------------
;===================================================================================================
;---------------------------------------------------------------------------------------------------
; The polyhedral code is the only instance of direct page juggling in ALTTP
; most addresses here will be accessed with direct page addressing
;
; Be wary of FREE RAM listed here, as it will be zeroed whenever the polyhedral thread initializes.
;---------------------------------------------------------------------------------------------------
;===================================================================================================
; Tells the polyhedral thread to wait for IRQ.
POLYWAIT        = $7E1F00

; Seems to control opacity
POLYOPAC        = $7E1F01

; Polyhedral distance. Larger numbers = further distance.
POLYZOOM        = $7E1F02

; Polyhedral shape ID
;   0x00 - Crystal
;   0x01 - Triforce triangle
POLYSHAPE       = $7E1F03

; Rotation of polyhedral about its axes
POLYROTX        = $7E1F04
POLYROTY        = $7E1F05

; Offset of the drawn polyhedral
POLYOFFH        = $7E1F06
POLYOFFV        = $7E1F07

; Seems to be size in some way. Larger numbers = smaller object.
POLYSIZEL       = $7E1F08
POLYSIZEH       = $7E1F09

; Stack pointer for polyhedral threads
POLYSTACKL      = $7E1F0A
POLYSTACKH      = $7E1F0B

; Flag for updating sprites during NMI
POLYSPRUP       = $7E1F0C

; Polyhedral stack space. 0x32 bytes
; $1F32..$1F3E are initialized with the necessary values of registers to be pulled from IRQ's RTI.
; To access these values, POLYSTACKL is initialized with $1F31.
POLYSTACKBOT    = $7E1F0D
POLYSTACKTOP    = $7E1F3E

; Number of vertices
POLYVERTS       = $7E1F3F

; Number of faces
POLYFACES       = $7E1F40

; Pointer to vertices data
POLYPTRVERTL    = $7E1F41
POLYPTRVERTH    = $7E1F42

; Pointer to faces data
POLYPTRFACEL    = $7E1F43
POLYPTRFACEH    = $7E1F44

; Math scratch space
POLYSCRAP45     = $7E1F45
POLYSCRAP46     = $7E1F46
POLYSCRAP47     = $7E1F47
POLYSCRAP48     = $7E1F48
POLYSCRAP49     = $7E1F49
POLYSCRAP4A     = $7E1F4A
POLYSCRAP4B     = $7E1F4B
POLYSCRAP4C     = $7E1F4C
POLYSCRAP4D     = $7E1F4D
POLYSCRAP4E     = $7E1F4E
POLYSCRAP4F     = $7E1F4F
POLYSCRAP50     = $7E1F50
POLYSCRAP51     = $7E1F51
POLYSCRAP52     = $7E1F52
POLYSCRAP53     = $7E1F53
POLYSCRAP54     = $7E1F54
POLYSCRAP55     = $7E1F55
POLYSCRAP56     = $7E1F56
POLYSCRAP57     = $7E1F57
POLYSCRAP58     = $7E1F58
POLYSCRAP59     = $7E1F59
POLYSCRAP5A     = $7E1F5A
POLYSCRAP5B     = $7E1F5B
POLYSCRAP5C     = $7E1F5C
POLYSCRAP5D     = $7E1F5D
POLYSCRAP5E     = $7E1F5E
POLYSCRAP5F     = $7E1F5F

; TODO
UNKNOWN_7E1F60  = $7E1F60

; TODO
UNKNOWN_7E1F88  = $7E1F88

; TODO
UNKNOWN_7E1FB0  = $7E1FB0
UNKNOWN_7E1FB1  = $7E1FB1
UNKNOWN_7E1FB2  = $7E1FB2
UNKNOWN_7E1FB3  = $7E1FB3

; FREE RAM: 0x01
UNUSED_7E1FB4   = $7E1FB4

; TODO
UNKNOWN_7E1FB5  = $7E1FB5
UNKNOWN_7E1FB6  = $7E1FB6
UNKNOWN_7E1FB7  = $7E1FB7
UNKNOWN_7E1FB8  = $7E1FB8
UNKNOWN_7E1FB9  = $7E1FB9
UNKNOWN_7E1FBA  = $7E1FBA

; FREE RAM: 0x01
UNUSED_7E1FBB   = $7E1FBB

; TODO
UNKNOWN_7E1FBC  = $7E1FBC

; FREE RAM: 0x03
UNUSED_7E1FBD   = $7E1FBD
UNUSED_7E1FBE   = $7E1FBE
UNUSED_7E1FBF   = $7E1FBE

; TODO
UNKNOWN_7E1FC0  = $7E1FC0
UNKNOWN_7E1FC1  = $7E1FC1
UNKNOWN_7E1FC2  = $7E1FC2
UNKNOWN_7E1FC3  = $7E1FC3
UNKNOWN_7E1FC4  = $7E1FC4
UNKNOWN_7E1FC5  = $7E1FC5
UNKNOWN_7E1FC6  = $7E1FC6
UNKNOWN_7E1FC7  = $7E1FC7
UNKNOWN_7E1FE0  = $7E1FE0
UNKNOWN_7E1FE1  = $7E1FE1
UNKNOWN_7E1FE2  = $7E1FE2
UNKNOWN_7E1FE3  = $7E1FE3
UNKNOWN_7E1FE4  = $7E1FE4
UNKNOWN_7E1FE5  = $7E1FE5
UNKNOWN_7E1FE6  = $7E1FE6
UNKNOWN_7E1FE7  = $7E1FE7
UNKNOWN_7E1FE8  = $7E1FE8
UNKNOWN_7E1FE9  = $7E1FE9
UNKNOWN_7E1FEA  = $7E1FEA
UNKNOWN_7E1FEB  = $7E1FEB
UNKNOWN_7E1FEC  = $7E1FEC
UNKNOWN_7E1FED  = $7E1FED
UNKNOWN_7E1FEE  = $7E1FEE
UNKNOWN_7E1FEF  = $7E1FEF
UNKNOWN_7E1FF0  = $7E1FF0
UNKNOWN_7E1FF1  = $7E1FF1
UNKNOWN_7E1FF2  = $7E1FF2

; FREE RAM: 0x07
UNUSED_7E1FF3   = $7E1FF3
UNUSED_7E1FF4   = $7E1FF4
UNUSED_7E1FF5   = $7E1FF5
UNUSED_7E1FF6   = $7E1FF6
UNUSED_7E1FF7   = $7E1FF7
UNUSED_7E1FF8   = $7E1FF8
UNUSED_7E1FF9   = $7E1FF9

; TODO
UNKNOWN_7E1FFA  = $7E1FFA
UNKNOWN_7E1FFB  = $7E1FFB

; FREE RAM: 0x04
UNUSED_7E1FFC   = $7E1FFC
UNUSED_7E1FFD   = $7E1FFD
UNUSED_7E1FFE   = $7E1FFE
UNUSED_7E1FFF   = $7E1FFF

;===================================================================================================
;---------------------------------------------------------------------------------------------------
; UNMIRRORED WRAM
; Addresses from here on can only be accessed with long addressing
; or absolute addressing with the appropriate data bank set
;---------------------------------------------------------------------------------------------------
;===================================================================================================

; In the underworld, this holds a copy of the entire BG tilemap for
; Layer 1 (BG2) in TILEMAPA
; Layer 2 (BG1) in TILEMAPB
;
; In the overworld, this holds the entire map16 space, using both blocks as a single array
TILEMAPA        = $7E2000
TILEMAPB        = $7E4000

;---------------------------------------------------------------------------------------------------

; Decompression scratch space
DECOMP          = $7E6000

;---------------------------------------------------------------------------------------------------

; Fully decompressed 4BPP buffer for common graphics
GFX_SWORD       = $7E9000
GFX_SHIELD      = $7E9300
GFX_ROD         = $7E9480
GFX_HAMMER      = $7E9640
GFX_BOW         = $7E9800
GFX_SHOVEL      = $7E98C0
GFX_ZZZ         = $7E99C0
GFX_QUAVER      = $7E9A20
GFX_POWDER      = $7E9A80
GFX_HOOK        = $7E9AC0
GFX_NET         = $7E9BC0
GFX_CANE        = $7E9F40
GFX_BOOK        = $7EA100
GFX_NULL        = $7EA180
GFX_BLOCK       = $7EA480
GFX_TILEF1      = $7EA680
GFX_TILEF2      = $7EAA80
GFX_TILEF3      = $7EAE80
GFX_RUPEES      = $7EB280
GFX_PEGS        = $7EB340
GFX_DUCK        = $7EB540
GFX_CHEST       = $7EB600
GFX_FOLLOWER    = $7EB940
GFX_ITEMGET     = $7EBD40
GFX_STARS       = $7EBDC0

;---------------------------------------------------------------------------------------------------

; BIG FREE RAM: 0x0200
UNUSED_7EBE00   = $7EBE00

;---------------------------------------------------------------------------------------------------

; Target room ID of pits/warps and stairs
WARPTO          = $7EC000
STAIR0TO        = $7EC001
STAIR1TO        = $7EC002
STAIR2TO        = $7EC003
STAIR3TO        = $7EC004

; Flags fade to black on room transitions
RMFADE          = $7EC006
RMFADE2         = $7EC005

; Timer for transition fading and mosaics
FADETIME        = $7EC007
FADETIMEH       = $7EC008

; Flags direction of fade
RMFADEDIR       = $7EC009
RMFADEDIRH      = $7EC00A

; Target fade level
FADETGT         = $7EC00B
FADETGTH        = $7EC00C

; Timer used for animating the background.
BGANMTIME       = $7EC00D
BGANMTIMEH      = $7EC00E

; Index for animated rupee tiles.
BGRUPSTEP       = $7EC00F
BGRUPSTEPH      = $7EC010

; Mosaic level copied to MOSAICQ.
; High byte zeroed but unused.
MOSAICLEVEL     = $7EC011
MOSAICLEVELH    = $7EC012

; Timer for animated rupee sprites
RUPTIMER        = $7EC013
RUPTIMERH       = $7EC014

; Index for animated rupee sprites.
OBJRUPSTEP      = $7EC015
OBJRUPSTEPH     = $7EC016

; Darkness level of a room when using torches.
; High byte zeroed but unused.
DARKNESS        = $7EC017
DARKNESSH       = $7EC018

; Used for filtering Aga's shadow
AGAFADETIME     = $7EC019
AGAFADEDIR      = $7EC01F

; BIG FREE RAM: 0xDB
UNUSED_7EC025   = $7EC025

;---------------------------------------------------------------------------------------------------

; Variable caching for special overworld
SPO_OWSCR2L     = $7EC100
SPO_OWSCR2H     = $7EC101
SPO_MAINDESQ    = $7EC102
SPO_SUBDESQ     = $7EC103
SPO_BG2VERTL    = $7EC104
SPO_BG2VERTH    = $7EC105
SPO_BG2HORZL    = $7EC106
SPO_BG2HORZH    = $7EC107
SPO_POSYL       = $7EC108
SPO_POSYH       = $7EC109
SPO_POSXL       = $7EC10A
SPO_POSXH       = $7EC10B
SPO_OWSCRL      = $7EC10C
SPO_OWSCRH      = $7EC10D
SPO_OWTMAPIL    = $7EC10E
SPO_OWTMAPIH    = $7EC10F
SPO_SCROLLATNL  = $7EC110
SPO_SCROLLATNH  = $7EC111
SPO_SCROLLATWL  = $7EC112
SPO_SCROLLATWH  = $7EC113
SPO_SCROLLANL   = $7EC114
SPO_SCROLLANH   = $7EC115
SPO_SCROLLBNL   = $7EC116
SPO_SCROLLBNH   = $7EC117
SPO_SCROLLASL   = $7EC118
SPO_SCROLLASH   = $7EC119
SPO_SCROLLBSL   = $7EC11A
SPO_SCROLLBSH   = $7EC11B
SPO_OWTARGNL    = $7EC11C
SPO_OWTARGNH    = $7EC11D
SPO_OWTARGSL    = $7EC11E
SPO_OWTARGSH    = $7EC11F
SPO_OWTARGWL    = $7EC120
SPO_OWTARGWH    = $7EC121
SPO_OWTARGEL    = $7EC122
SPO_OWTARGEH    = $7EC123
SPO_AA0         = $7EC124 ; TODO take name from 0AA0
SPO_BGSET1      = $7EC125
SPO_BGSET2      = $7EC126
SPO_SPRSET1     = $7EC127

; FREE RAM: 0x02
UNUSED_7EC128   = $7EC128
UNUSED_7EC129   = $7EC129

; More caching
SPO_SCRMODYAL   = $7EC12A
SPO_SCRMODYAH   = $7EC12B
SPO_SCRMODYBL   = $7EC12C
SPO_SCRMODYBH   = $7EC12D
SPO_SCRMODXAL   = $7EC12E
SPO_SCRMODXAH   = $7EC12F
SPO_SCRMODXBL   = $7EC130
SPO_SCRMODXBH   = $7EC131

; FREE RAM: 0x0E
UNUSED_7EC132   = $7EC132
UNUSED_7EC133   = $7EC133
UNUSED_7EC134   = $7EC134
UNUSED_7EC135   = $7EC135
UNUSED_7EC136   = $7EC136
UNUSED_7EC137   = $7EC137
UNUSED_7EC138   = $7EC138
UNUSED_7EC139   = $7EC139
UNUSED_7EC13A   = $7EC13A
UNUSED_7EC13B   = $7EC13B
UNUSED_7EC13C   = $7EC13C
UNUSED_7EC13D   = $7EC13D
UNUSED_7EC13E   = $7EC13E
UNUSED_7EC13F   = $7EC13F

; Used for caching with entrances
EN_OWSCR2L      = $7EC140
EN_OWSCR2H      = $7EC141
EN_MAINDESQ     = $7EC142
EN_SUBDESQ      = $7EC143
EN_BG2VERTL     = $7EC144
EN_BG2VERTH     = $7EC145
EN_BG2HORZL     = $7EC146
EN_BG2HORZH     = $7EC147
EN_POSYL        = $7EC148
EN_POSYH        = $7EC149
EN_POSXL        = $7EC14A
EN_POSXH        = $7EC14B
EN_OWSCR        = $7EC14C
EN_OWSCRH       = $7EC14D
EN_OWTMAPIL     = $7EC14E
EN_OWTMAPIH     = $7EC14F
EN_SCROLLATNL   = $7EC150
EN_SCROLLATNH   = $7EC151
EN_SCROLLATWL   = $7EC152
EN_SCROLLATWH   = $7EC153
EN_SCROLLANL    = $7EC154
EN_SCROLLANH    = $7EC155
EN_SCROLLBNL    = $7EC156
EN_SCROLLBNH    = $7EC157
EN_SCROLLASL    = $7EC158
EN_SCROLLASH    = $7EC159
EN_SCROLLBSL    = $7EC15A
EN_SCROLLBSH    = $7EC15B
EN_OWTARGNL     = $7EC15C
EN_OWTARGNH     = $7EC15D
EN_OWTARGSL     = $7EC15E
EN_OWTARGSH     = $7EC15F
EN_OWTARGWL     = $7EC160
EN_OWTARGWH     = $7EC161
EN_OWTARGEL     = $7EC162
EN_OWTARGEH     = $7EC163
EN_AA0          = $7EC164 ; TODO take name from 0AA0
EN_BGSET1       = $7EC165
EN_BGSET2       = $7EC166
EN_SPRSET1      = $7EC167

; FREE RAM: 0x02
UNUSED_7EC168   = $7EC168
UNUSED_7EC169   = $7EC169

; More caching
EN_SCRMODYAL    = $7EC16A
EN_SCRMODYAH    = $7EC16B
EN_SCRMODYBL    = $7EC16C
EN_SCRMODYBH    = $7EC16D
EN_SCRMODXAL    = $7EC16E
EN_SCRMODXAH    = $7EC16F
EN_SCRMODXBL    = $7EC170
EN_SCRMODXBH    = $7EC171

; Peg colors
; Also used wiith tilemap calculations on overworld
PEGCOLOR        = $7EC172
OWCALC84H       = $7EC173
OWCALC86L       = $7EC174
OWCALC86H       = $7EC175
OWCALC88L       = $7EC176
OWCALC88H       = $7EC177

; FREE RAM: 0x08
UNUSED_7EC178   = $7EC178
UNUSED_7EC179   = $7EC179
UNUSED_7EC17A   = $7EC17A
UNUSED_7EC17B   = $7EC17B
UNUSED_7EC17C   = $7EC17C
UNUSED_7EC17D   = $7EC17D
UNUSED_7EC17E   = $7EC17E
UNUSED_7EC17F   = $7EC17F

; Cache for various properties
CC_BG2HORZL     = $7EC180
CC_BG2HORZH     = $7EC181
CC_BG2VERTL     = $7EC182
CC_BG2VERTH     = $7EC183
CC_POSYL        = $7EC184
CC_POSYH        = $7EC185
CC_POSXL        = $7EC186
CC_POSXH        = $7EC187
CC_SCROLLANL    = $7EC188
CC_SCROLLANH    = $7EC189
CC_SCROLLASL    = $7EC18A
CC_SCROLLASH    = $7EC18B
CC_SCROLLAWL    = $7EC18C
CC_SCROLLAWH    = $7EC18D
CC_SCROLLAEL    = $7EC18E
CC_SCROLLAEH    = $7EC18F
CC_OWTARGNL     = $7EC190
CC_OWTARGNH     = $7EC191
CC_OWTARGSL     = $7EC192
CC_OWTARGSH     = $7EC193
CC_OWTARGWL     = $7EC194
CC_OWTARGWH     = $7EC195
CC_OWTARGEL     = $7EC196
CC_OWTARGEH     = $7EC197
CC_SCROLLATNL   = $7EC198
CC_SCROLLATNH   = $7EC199
CC_SCROLLATWL   = $7EC19A
CC_SCROLLATWH   = $7EC19B
CC_QUADH        = $7EC19C
CC_QUADV        = $7EC19D
CC_QUADLR       = $7EC19E
CC_QUADTB       = $7EC19F

; FREE RAM: 0x06
UNUSED_7EC1A0   = $7EC1A0
UNUSED_7EC1A1   = $7EC1A1
UNUSED_7EC1A2   = $7EC1A2
UNUSED_7EC1A3   = $7EC1A3
UNUSED_7EC1A4   = $7EC1A4
UNUSED_7EC1A5   = $7EC1A5

; More caching
CC_DIR          = $7EC1A6
CC_LAYER        = $7EC1A7
CC_DLAYER       = $7EC1A8
CC_DOORWAY      = $7EC1A9
CC_DNGFLOOR     = $7EC1AA

; FREE RAM: 0x55
UNUSED_7EC1AB   = $7EC1AB

;---------------------------------------------------------------------------------------------------

; Overworld map caching
OMC_BG1HORZL    = $7EC200
OMC_BG1HORZH    = $7EC201
OMC_BG2HORZL    = $7EC202
OMC_BG2HORZH    = $7EC203
OMC_BG1VERTL    = $7EC204
OMC_BG1VERTH    = $7EC205
OMC_BG2VERTL    = $7EC206
OMC_BG2VERTH    = $7EC207

; Copies BGACT but never used
CACHE_BGACT     = $7EC208

; FREE RAM: 0x01
UNUSED_7EC209   = $7EC209

; TODO update with names
; Caches variables, but never used
CACHE_AB6       = $7EC20A
CACHE_AB8       = $7EC20B
CACHE_AB7       = $7EC20C

; FREE RAM: 0x01
UNUSED_7EC20D   = $7EC20D


; Underworld map caching
UMC_BGSET1      = $7EC20E
UMC_SPRSET1     = $7EC20F
UMC_BGSET2      = $7EC210

; Caches $1C and $1D, for TM and TS
TMCACHE         = $7EC211
TSCACHE         = $7EC212

; OW caching
OWC_OWSCRL      = $7EC213
OWC_OWSCRH      = $7EC214
OWC_OWTMAPIL    = $7EC215
OWC_OWTMAPIH    = $7EC216
OWC_OWMAPDIYL   = $7EC217
OWC_OWMAPDIYH   = $7EC218
OWC_OWMAPDIXL   = $7EC219
OWC_OWMAPDIXH   = $7EC21A
OWC_TRANDIRL    = $7EC21B
OWC_TRANDIRH    = $7EC21C
OWC_OWTDIRL     = $7EC21D
OWC_OWTDIRH     = $7EC21E
OWC_MAPPANVCTL  = $7EC21F
OWC_MAPPANVCTH  = $7EC220

; Game over caching
GOC_FADETIMEL   = $7EC221
GOC_FADETIMEH   = $7EC222
GOC_RMFADEDIRL  = $7EC223
GOC_RMFADEDIRH  = $7EC224
GOC_CGWSELQ     = $7EC225
GOC_CGADSUBQ    = $7EC226
GOC_SONG        = $7EC227
GOC_SFX1        = $7EC228

; Cache for HDMA enable for various things
CACHE_HDMAENQ   = $7EC229

; BIG FREE RAM: 0xCE
UNUSED_7EC22A   = $7EC22A

; Lists the currently loaded sheets to check against for decompression.
LASTBGSET0      = $7EC2F8
LASTBGSET1      = $7EC2F9
LASTBGSET2      = $7EC2FA
LASTBGSET3      = $7EC2FB

LASTSPRSET0     = $7EC2FC
LASTSPRSET1     = $7EC2FD
LASTSPRSET2     = $7EC2FE
LASTSPRSET3     = $7EC2FF

;===================================================================================================
; Palette buffer 2
;===================================================================================================

; HUD palettes
PALB_HUD0       = $7EC300
PALB_HUD1       = $7EC308
PALB_HUD2       = $7EC310
PALB_HUD3       = $7EC318
PALB_HUD4       = $7EC320
PALB_HUD5       = $7EC328
PALB_HUD6       = $7EC330
PALB_HUD7       = $7EC338

; Background palettes
PALB_BG2A       = $7EC340
PALB_BG2B       = $7EC350
PALB_BG3A       = $7EC360
PALB_BG3B       = $7EC370
PALB_BG4A       = $7EC380
PALB_BG4B       = $7EC390
PALB_BG5A       = $7EC3A0
PALB_BG5B       = $7EC3B0
PALB_BG6A       = $7EC3C0
PALB_BG6B       = $7EC3D0
PALB_BG7A       = $7EC3E0
PALB_BG7B       = $7EC3F0

; Sprite palettes
PALB_SPRA       = $7EC400
PALB_SPRB       = $7EC410
PALB_SPR1A      = $7EC420
PALB_SPR1B      = $7EC430
PALB_SPR2A      = $7EC440
PALB_SPR2B      = $7EC450
PALB_SPR3A      = $7EC460
PALB_SPR3B      = $7EC470
PALB_SPR4A      = $7EC480
PALB_SPR4B      = $7EC490
PALB_SPR5A      = $7EC4A0
PALB_SPR5B      = $7EC4B0
PALB_SPR6A      = $7EC4C0
PALB_SPR6B      = $7EC4D0
PALB_SPR7A      = $7EC4E0
PALB_SPR7B      = $7EC4F0

;===================================================================================================
; Main palette block written to CGRAM
;===================================================================================================

; HUD palettes
PAL_HUD0        = $7EC500
PAL_HUD1        = $7EC508
PAL_HUD2        = $7EC510
PAL_HUD3        = $7EC518
PAL_HUD4        = $7EC520
PAL_HUD5        = $7EC528
PAL_HUD6        = $7EC530
PAL_HUD7        = $7EC538

; Background palettes
PAL_BG2A        = $7EC540
PAL_BG2B        = $7EC550
PAL_BG3A        = $7EC560
PAL_BG3B        = $7EC570
PAL_BG4A        = $7EC580
PAL_BG4B        = $7EC590
PAL_BG5A        = $7EC5A0
PAL_BG5B        = $7EC5B0
PAL_BG6A        = $7EC5C0
PAL_BG6B        = $7EC5D0
PAL_BG7A        = $7EC5E0
PAL_BG7B        = $7EC5F0

; Sprite palettes
PAL_SPRA        = $7EC600
PAL_SPRB        = $7EC610
PAL_SPR1A       = $7EC620
PAL_SPR1B       = $7EC630
PAL_SPR2A       = $7EC640
PAL_SPR2B       = $7EC650
PAL_SPR3A       = $7EC660
PAL_SPR3B       = $7EC670
PAL_SPR4A       = $7EC680
PAL_SPR4B       = $7EC690
PAL_SPR5A       = $7EC6A0
PAL_SPR5B       = $7EC6B0
PAL_SPR6A       = $7EC6C0
PAL_SPR6B       = $7EC6D0
PAL_SPR7A       = $7EC6E0
PAL_SPR7B       = $7EC6F0

;---------------------------------------------------------------------------------------------------

; TODO MORE
; Tilemap buffer for the HUD
HUD             = $7EC700

;---------------------------------------------------------------------------------------------------

; FREE RAM: 0x36
UNUSED_7EC84A   = $7EC84A

; Tilemap buffer for moving wall animation.
WALLDRAW        = $7EC880

; BIG FREE RAM: 0x1F00
UNUSED_7EC900   = $7EC900

;---------------------------------------------------------------------------------------------------

; TODO
POLYDRAW        = $7EE800

;---------------------------------------------------------------------------------------------------

; SRAM mirror for current file
; see symbols_sram.asm
WRAMSAVE        = $7EF000

;---------------------------------------------------------------------------------------------------

; FREE RAM: 0x80
UNUSED_7EF500   = $7EF500

; Tracks lifted pot secrets
POTLIFT         = $7EF580

;---------------------------------------------------------------------------------------------------

; Caches the tilemap location of changed map16 tiles on the overworld
M16CHTMAPX      = $7EF800

; Locations of push blocks in underworld
PUSHBLOCKS      = $7EF940

; Caches the tile of changed map16 tiles on the overworld
M16CHTILES      = $7EFA00

; Locations of torches in underworld
TORCHES         = $7EFB40

; Caches sheets
SHEETLISTA      = $7EFCC0
SHEETLISTB      = $7EFD40

;---------------------------------------------------------------------------------------------------

; FREE RAM: 0x40
UNUSED_7EFDC0   = $7EFDC0

;---------------------------------------------------------------------------------------------------

; Table of tile properties for interaction
TILEATTR        = $7EFE00

;===================================================================================================
;---------------------------------------------------------------------------------------------------
; Bank7F
;---------------------------------------------------------------------------------------------------
;===================================================================================================

; Decompression buffer
DECOMPA         = $7F0000

;---------------------------------------------------------------------------------------------------

; In the underworld, these arrays contain tile the tile's collision type for each layer.
; Layer 1 (COLMAPA)
; Layer 2 (COLMAPB)
; 1 byte per tile. See «defines.asm» for !TILETYPE definitions
;
; In the overworld, this block is used as a buffer for decompiled map16 data before its
; transfered stripe-by-stripe into the tilemaps for both BG1 and BG2.
COLMAPA         = $7F2000
COLMAPB         = $7F3000

;---------------------------------------------------------------------------------------------------

; Decompression buffer
DECOMPB         = $7F4000

; BIG FREE RAM: 0x0800
UNUSED_7F5000   = $7F5000

;---------------------------------------------------------------------------------------------------

; Used by medallions, sword beams, gt crystals, and rupee pond rupees
; Not worth documenting them all right now
ANC_7F5800      = $7F5800
ANC_7F5801      = $7F5801
ANC_7F5802      = $7F5802
ANC_7F5803      = $7F5803
ANC_7F5804      = $7F5804
ANC_7F5805      = $7F5805
ANC_7F5806      = $7F5806
ANC_7F5807      = $7F5807
ANC_7F5808      = $7F5808
ANC_7F5809      = $7F5809
ANC_7F580A      = $7F580A
ANC_7F580B      = $7F580B
ANC_7F580C      = $7F580C
ANC_7F580D      = $7F580D
ANC_7F580E      = $7F580E
ANC_7F580F      = $7F580F
ANC_7F5810      = $7F5810
ANC_7F5811      = $7F5811
ANC_7F5812      = $7F5812
ANC_7F5813      = $7F5813
ANC_7F5814      = $7F5814
ANC_7F5815      = $7F5815
ANC_7F5816      = $7F5816
ANC_7F5817      = $7F5817
ANC_7F5818      = $7F5818
ANC_7F5819      = $7F5819
ANC_7F581E      = $7F581E
ANC_7F581F      = $7F581F
ANC_7F5820      = $7F5820
ANC_7F5824      = $7F5824
ANC_7F5826      = $7F5826
ANC_7F5827      = $7F5827
ANC_7F582E      = $7F582E
ANC_7F582F      = $7F582F
ANC_7F5830      = $7F5830
ANC_7F5836      = $7F5836
ANC_7F5837      = $7F5837
ANC_7F583C      = $7F583C
ANC_7F5848      = $7F5848
ANC_7F584F      = $7F584F
ANC_7F5854      = $7F5854
ANC_7F5860      = $7F5860
ANC_7F5864      = $7F5864
ANC_7F5867      = $7F5867
ANC_7F586C      = $7F586C
ANC_7F5878      = $7F5878
ANC_7F5879      = $7F5879
ANC_7F587A      = $7F587A
ANC_7F587F      = $7F587F
ANC_7F5886      = $7F5886
ANC_7F5892      = $7F5892
ANC_7F5897      = $7F5897
ANC_7F589E      = $7F589E
ANC_7F58A4      = $7F58A4
ANC_7F58AA      = $7F58AA
ANC_7F58AF      = $7F58AF
ANC_7F58B6      = $7F58B6
ANC_7F58B8      = $7F58B8
ANC_7F58E4      = $7F58E4

;---------------------------------------------------------------------------------------------------

; TODO at least this much
; FREE RAM: 0x024
UNUSED_7F5900   = $7F5900

; TODO
BOMBOS_7F5924   = $7F5924
BOMBOS_7F5925   = $7F5925

; FREE RAM: 0x06
UNUSED_7F5926   = $7F5926

; TODO
BOMBOS_7F592C   = $7F592C
BOMBOS_7F592D   = $7F592D

; FREE RAM: 0x06
UNUSED_7F592E   = $7F592E

; TODO
BOMBOS_7F5934   = $7F5934
BOMBOS_7F5935   = $7F5935
BOMBOS_7F5945   = $7F5945
BOMBOS_7F5955   = $7F5955

; BIG FREE RAM: 0x60
UNUSED_7F5975   = $7F5975

; TODO
BOMBOS_7F59D5   = $7F59D5

; BIG FREE RAM: 0x60
UNUSED_7F59F5   = $7F59F5

; TODO
BOMBOS_7F5A55   = $7F5A55
BOMBOS_7F5A56   = $7F5A56
BOMBOS_7F5A57   = $7F5A57

; BIG FREE RAM: 0xA8
UNUSED_7F5A58   = $7F5A58

;---------------------------------------------------------------------------------------------------

; Used when decompressing text characters
TEXTDECOMP      = $7F5B00

;---------------------------------------------------------------------------------------------------

; BIG FREE RAM: 0xFE
UNUSED_7F5F02   = $7F5F02

; Damage class to subclass for every enemy
; 16 bytes per enemy, including garbage from garbage data for invalid sprites
; See «resources/damagetable.asm» for decompressed and decompiled data
DMGTABLE        = $7F6000

;---------------------------------------------------------------------------------------------------

; TODO
IRIS            = $7F7000

;---------------------------------------------------------------------------------------------------

; Text pointers in bank1C, built procedurally.
; Expected vanilla values for JP1.0 listed as comment.
MSG0000         = $7F71C0 ; $8000
MSG0001         = $7F71C2 ; $8001
MSG0002         = $7F71C4 ; $800E
MSG0003         = $7F71C6 ; $801B
MSG0004         = $7F71C8 ; $803C
MSG0005         = $7F71CA ; $805C
MSG0006         = $7F71CC ; $806D
MSG0007         = $7F71CE ; $8078
MSG0008         = $7F71D0 ; $8083
MSG0009         = $7F71D2 ; $808E
MSG000A         = $7F71D4 ; $8097
MSG000B         = $7F71D6 ; $80A0
MSG000C         = $7F71D8 ; $80DF
MSG000D         = $7F71DA ; $818F
MSG000E         = $7F71DC ; $81B7
MSG000F         = $7F71DE ; $81E4
MSG0010         = $7F71E0 ; $8211
MSG0011         = $7F71E2 ; $823E
MSG0012         = $7F71E4 ; $826A
MSG0013         = $7F71E6 ; $8297
MSG0014         = $7F71E8 ; $82C0
MSG0015         = $7F71EA ; $82E9
MSG0016         = $7F71EC ; $8313
MSG0017         = $7F71EE ; $8457
MSG0018         = $7F71F0 ; $848D
MSG0019         = $7F71F2 ; $84B6
MSG001A         = $7F71F4 ; $853E
MSG001B         = $7F71F6 ; $855F
MSG001C         = $7F71F8 ; $8648
MSG001D         = $7F71FA ; $866E
MSG001E         = $7F71FC ; $8728
MSG001F         = $7F71FE ; $8775
MSG0020         = $7F7200 ; $87B0
MSG0021         = $7F7202 ; $8809
MSG0022         = $7F7204 ; $8837
MSG0023         = $7F7206 ; $8892
MSG0024         = $7F7208 ; $8929
MSG0025         = $7F720A ; $895E
MSG0026         = $7F720C ; $89BC
MSG0027         = $7F720E ; $89EA
MSG0028         = $7F7210 ; $8A18
MSG0029         = $7F7212 ; $8A3F
MSG002A         = $7F7214 ; $8AAF
MSG002B         = $7F7216 ; $8B89
MSG002C         = $7F7218 ; $8BE5
MSG002D         = $7F721A ; $8C0E
MSG002E         = $7F721C ; $8C2C
MSG002F         = $7F721E ; $8C8B
MSG0030         = $7F7220 ; $8CB0
MSG0031         = $7F7222 ; $8D86
MSG0032         = $7F7224 ; $8DF0
MSG0033         = $7F7226 ; $8E27
MSG0034         = $7F7228 ; $8F97
MSG0035         = $7F722A ; $9003
MSG0036         = $7F722C ; $9039
MSG0037         = $7F722E ; $916B
MSG0038         = $7F7230 ; $935A
MSG0039         = $7F7232 ; $9389
MSG003A         = $7F7234 ; $93B9
MSG003B         = $7F7236 ; $93D8
MSG003C         = $7F7238 ; $93E7
MSG003D         = $7F723A ; $93FA
MSG003E         = $7F723C ; $9415
MSG003F         = $7F723E ; $942E
MSG0040         = $7F7240 ; $944B
MSG0041         = $7F7242 ; $945C
MSG0042         = $7F7244 ; $947A
MSG0043         = $7F7246 ; $9495
MSG0044         = $7F7248 ; $94B4
MSG0045         = $7F724A ; $94BF
MSG0046         = $7F724C ; $94EE
MSG0047         = $7F724E ; $94FE
MSG0048         = $7F7250 ; $950F
MSG0049         = $7F7252 ; $9533
MSG004A         = $7F7254 ; $955E
MSG004B         = $7F7256 ; $958C
MSG004C         = $7F7258 ; $95B7
MSG004D         = $7F725A ; $9616
MSG004E         = $7F725C ; $9631
MSG004F         = $7F725E ; $9650
MSG0050         = $7F7260 ; $9673
MSG0051         = $7F7262 ; $9693
MSG0052         = $7F7264 ; $96B8
MSG0053         = $7F7266 ; $96DE
MSG0054         = $7F7268 ; $970C
MSG0055         = $7F726A ; $9731
MSG0056         = $7F726C ; $975B
MSG0057         = $7F726E ; $9787
MSG0058         = $7F7270 ; $97BF
MSG0059         = $7F7272 ; $97F3
MSG005A         = $7F7274 ; $982A
MSG005B         = $7F7276 ; $9857
MSG005C         = $7F7278 ; $9886
MSG005D         = $7F727A ; $98BB
MSG005E         = $7F727C ; $98DD
MSG005F         = $7F727E ; $990C
MSG0060         = $7F7280 ; $9940
MSG0061         = $7F7282 ; $9972
MSG0062         = $7F7284 ; $99AB
MSG0063         = $7F7286 ; $99E2
MSG0064         = $7F7288 ; $9A18
MSG0065         = $7F728A ; $9A48
MSG0066         = $7F728C ; $9A72
MSG0067         = $7F728E ; $9A9E
MSG0068         = $7F7290 ; $9ACD
MSG0069         = $7F7292 ; $9AFA
MSG006A         = $7F7294 ; $9B27
MSG006B         = $7F7296 ; $9B59
MSG006C         = $7F7298 ; $9B85
MSG006D         = $7F729A ; $9BB6
MSG006E         = $7F729C ; $9BDA
MSG006F         = $7F729E ; $9C81
MSG0070         = $7F72A0 ; $9CAA
MSG0071         = $7F72A2 ; $9CD7
MSG0072         = $7F72A4 ; $9D05
MSG0073         = $7F72A6 ; $9D39
MSG0074         = $7F72A8 ; $9D61
MSG0075         = $7F72AA ; $9D8D
MSG0076         = $7F72AC ; $9DB5
MSG0077         = $7F72AE ; $9DE5
MSG0078         = $7F72B0 ; $9E13
MSG0079         = $7F72B2 ; $9E38
MSG007A         = $7F72B4 ; $9E60
MSG007B         = $7F72B6 ; $9E97
MSG007C         = $7F72B8 ; $9EF1
MSG007D         = $7F72BA ; $9F47
MSG007E         = $7F72BC ; $9FAF
MSG007F         = $7F72BE ; $A018
MSG0080         = $7F72C0 ; $A054
MSG0081         = $7F72C2 ; $A066
MSG0082         = $7F72C4 ; $A09B
MSG0083         = $7F72C6 ; $A0D1
MSG0084         = $7F72C8 ; $A123
MSG0085         = $7F72CA ; $A138
MSG0086         = $7F72CC ; $A161
MSG0087         = $7F72CE ; $A185
MSG0088         = $7F72D0 ; $A1CA
MSG0089         = $7F72D2 ; $A1E5
MSG008A         = $7F72D4 ; $A207
MSG008B         = $7F72D6 ; $A237
MSG008C         = $7F72D8 ; $A261
MSG008D         = $7F72DA ; $A27B
MSG008E         = $7F72DC ; $A2A5
MSG008F         = $7F72DE ; $A2C6
MSG0090         = $7F72E0 ; $A2E1
MSG0091         = $7F72E2 ; $A302
MSG0092         = $7F72E4 ; $A322
MSG0093         = $7F72E6 ; $A352
MSG0094         = $7F72E8 ; $A382
MSG0095         = $7F72EA ; $A3B2
MSG0096         = $7F72EC ; $A3E1
MSG0097         = $7F72EE ; $A454
MSG0098         = $7F72F0 ; $A508
MSG0099         = $7F72F2 ; $A524
MSG009A         = $7F72F4 ; $A5B8
MSG009B         = $7F72F6 ; $A5E9
MSG009C         = $7F72F8 ; $A680
MSG009D         = $7F72FA ; $A70E
MSG009E         = $7F72FC ; $A7A3
MSG009F         = $7F72FE ; $A81B
MSG00A0         = $7F7300 ; $A876
MSG00A1         = $7F7302 ; $A96D
MSG00A2         = $7F7304 ; $A9F2
MSG00A3         = $7F7306 ; $AA0F
MSG00A4         = $7F7308 ; $AA3E
MSG00A5         = $7F730A ; $AAD3
MSG00A6         = $7F730C ; $AAFE
MSG00A7         = $7F730E ; $AB19
MSG00A8         = $7F7310 ; $AB34
MSG00A9         = $7F7312 ; $AB52
MSG00AA         = $7F7314 ; $AB61
MSG00AB         = $7F7316 ; $AB71
MSG00AC         = $7F7318 ; $AB80
MSG00AD         = $7F731A ; $ABB0
MSG00AE         = $7F731C ; $ABCB
MSG00AF         = $7F731E ; $ABDB
MSG00B0         = $7F7320 ; $ABED
MSG00B1         = $7F7322 ; $AC1D
MSG00B2         = $7F7324 ; $AC41
MSG00B3         = $7F7326 ; $ACA1
MSG00B4         = $7F7328 ; $AD23
MSG00B5         = $7F732A ; $AD47
MSG00B6         = $7F732C ; $ADA6
MSG00B7         = $7F732E ; $AE01
MSG00B8         = $7F7330 ; $AE61
MSG00B9         = $7F7332 ; $AE95
MSG00BA         = $7F7334 ; $AEC2
MSG00BB         = $7F7336 ; $AEE4
MSG00BC         = $7F7338 ; $AF13
MSG00BD         = $7F733A ; $AF41
MSG00BE         = $7F733C ; $AF9F
MSG00BF         = $7F733E ; $AFD3
MSG00C0         = $7F7340 ; $B019
MSG00C1         = $7F7342 ; $B068
MSG00C2         = $7F7344 ; $B099
MSG00C3         = $7F7346 ; $B0C2
MSG00C4         = $7F7348 ; $B0F4
MSG00C5         = $7F734A ; $B154
MSG00C6         = $7F734C ; $B176
MSG00C7         = $7F734E ; $B1A3
MSG00C8         = $7F7350 ; $B1CD
MSG00C9         = $7F7352 ; $B1ED
MSG00CA         = $7F7354 ; $B212
MSG00CB         = $7F7356 ; $B23E
MSG00CC         = $7F7358 ; $B261
MSG00CD         = $7F735A ; $B280
MSG00CE         = $7F735C ; $B29A
MSG00CF         = $7F735E ; $B2C6
MSG00D0         = $7F7360 ; $B30C
MSG00D1         = $7F7362 ; $B330
MSG00D2         = $7F7364 ; $B352
MSG00D3         = $7F7366 ; $B373
MSG00D4         = $7F7368 ; $B397
MSG00D5         = $7F736A ; $B3BE
MSG00D6         = $7F736C ; $B3E6
MSG00D7         = $7F736E ; $B425
MSG00D8         = $7F7370 ; $B44F
MSG00D9         = $7F7372 ; $B473
MSG00DA         = $7F7374 ; $B491
MSG00DB         = $7F7376 ; $B4B4
MSG00DC         = $7F7378 ; $B4D1
MSG00DD         = $7F737A ; $B4ED
MSG00DE         = $7F737C ; $B51A
MSG00DF         = $7F737E ; $B56F
MSG00E0         = $7F7380 ; $B5EF
MSG00E1         = $7F7382 ; $B60D
MSG00E2         = $7F7384 ; $B622
MSG00E3         = $7F7386 ; $B64B
MSG00E4         = $7F7388 ; $B6F9
MSG00E5         = $7F738A ; $B71B
MSG00E6         = $7F738C ; $B738
MSG00E7         = $7F738E ; $B75A
MSG00E8         = $7F7390 ; $B801
MSG00E9         = $7F7392 ; $B82A
MSG00EA         = $7F7394 ; $B85F
MSG00EB         = $7F7396 ; $B889
MSG00EC         = $7F7398 ; $B8BB
MSG00ED         = $7F739A ; $B8EC
MSG00EE         = $7F739C ; $B91E
MSG00EF         = $7F739E ; $B951
MSG00F0         = $7F73A0 ; $B97F
MSG00F1         = $7F73A2 ; $B9AD
MSG00F2         = $7F73A4 ; $BA04
MSG00F3         = $7F73A6 ; $BA38
MSG00F4         = $7F73A8 ; $BA58
MSG00F5         = $7F73AA ; $BA81
MSG00F6         = $7F73AC ; $BAB8
MSG00F7         = $7F73AE ; $BAE5
MSG00F8         = $7F73B0 ; $BB14
MSG00F9         = $7F73B2 ; $BB41
MSG00FA         = $7F73B4 ; $BB6D
MSG00FB         = $7F73B6 ; $BB9E
MSG00FC         = $7F73B8 ; $BBD0
MSG00FD         = $7F73BA ; $BC17
MSG00FE         = $7F73BC ; $BC8D
MSG00FF         = $7F73BE ; $BCB6
MSG0100         = $7F73C0 ; $BD53
MSG0101         = $7F73C2 ; $BDC6
MSG0102         = $7F73C4 ; $BE1D
MSG0103         = $7F73C6 ; $BE4C
MSG0104         = $7F73C8 ; $BED4
MSG0105         = $7F73CA ; $BEF4
MSG0106         = $7F73CC ; $BEFF
MSG0107         = $7F73CE ; $BF0A
MSG0108         = $7F73D0 ; $BF73
MSG0109         = $7F73D2 ; $BF8F
MSG010A         = $7F73D4 ; $BFA2
MSG010B         = $7F73D6 ; $BFCF
MSG010C         = $7F73D8 ; $BFF2
MSG010D         = $7F73DA ; $C015
MSG010E         = $7F73DC ; $C038
MSG010F         = $7F73DE ; $C08D
MSG0110         = $7F73E0 ; $C0DD
MSG0111         = $7F73E2 ; $C2AB
MSG0112         = $7F73E4 ; $C2EB
MSG0113         = $7F73E6 ; $C32C
MSG0114         = $7F73E8 ; $C36A
MSG0115         = $7F73EA ; $C38F
MSG0116         = $7F73EC ; $C3BD
MSG0117         = $7F73EE ; $C3EA
MSG0118         = $7F73F0 ; $C404
MSG0119         = $7F73F2 ; $C42F
MSG011A         = $7F73F4 ; $C47F
MSG011B         = $7F73F6 ; $C49F
MSG011C         = $7F73F8 ; $C4CC
MSG011D         = $7F73FA ; $C51A
MSG011E         = $7F73FC ; $C545
MSG011F         = $7F73FE ; $C56B
MSG0120         = $7F7400 ; $C588
MSG0121         = $7F7402 ; $C5B4
MSG0122         = $7F7404 ; $C5C7
MSG0123         = $7F7406 ; $C5E2
MSG0124         = $7F7408 ; $C6F2
MSG0125         = $7F740A ; $C750
MSG0126         = $7F740C ; $C77D
MSG0127         = $7F740E ; $C7B0
MSG0128         = $7F7410 ; $C7DA
MSG0129         = $7F7412 ; $C807
MSG012A         = $7F7414 ; $C820
MSG012B         = $7F7416 ; $C84B
MSG012C         = $7F7418 ; $C875
MSG012D         = $7F741A ; $C8A4
MSG012E         = $7F741C ; $C8CF
MSG012F         = $7F741E ; $C8F1
MSG0130         = $7F7420 ; $C91C
MSG0131         = $7F7422 ; $CC51
MSG0132         = $7F7424 ; $CF83
MSG0133         = $7F7426 ; $D1D9
MSG0134         = $7F7428 ; $D3C4
MSG0135         = $7F742A ; $D643
MSG0136         = $7F742C ; $D85D
MSG0137         = $7F742E ; $DAB2
MSG0138         = $7F7430 ; $DADC
MSG0139         = $7F7432 ; $DB05
MSG013A         = $7F7434 ; $DB27
MSG013B         = $7F7436 ; $DDD0
MSG013C         = $7F7438 ; $DE21
MSG013D         = $7F743A ; $DEB5
MSG013E         = $7F743C ; $DEE2
MSG013F         = $7F743E ; $DF14
MSG0140         = $7F7440 ; $DF72
MSG0141         = $7F7442 ; $DF9D
MSG0142         = $7F7444 ; $DFE8
MSG0143         = $7F7446 ; $E06D
MSG0144         = $7F7448 ; $E096
MSG0145         = $7F744A ; $E0C3
MSG0146         = $7F744C ; $E126
MSG0147         = $7F744E ; $E158
MSG0148         = $7F7450 ; $E2C3
MSG0149         = $7F7452 ; $E305
MSG014A         = $7F7454 ; $E30C
MSG014B         = $7F7456 ; $E313
MSG014C         = $7F7458 ; $E33A
MSG014D         = $7F745A ; $E367
MSG014E         = $7F745C ; $E3F5
MSG014F         = $7F745E ; $E404
MSG0150         = $7F7460 ; $E413
MSG0151         = $7F7462 ; $E422
MSG0152         = $7F7464 ; $E432
MSG0153         = $7F7466 ; $E446
MSG0154         = $7F7468 ; $E45E
MSG0155         = $7F746A ; $E476
MSG0156         = $7F746C ; $E48E
MSG0157         = $7F746E ; $E4B5
MSG0158         = $7F7470 ; $E4DC
MSG0159         = $7F7472 ; $E4FA
MSG015A         = $7F7474 ; $E5DC
MSG015B         = $7F7476 ; $E608
MSG015C         = $7F7478 ; $E6BD
MSG015D         = $7F747A ; $E6ED
MSG015E         = $7F747C ; $E71F
MSG015F         = $7F747E ; $E76E
MSG0160         = $7F7480 ; $E792
MSG0161         = $7F7482 ; $E7B9
MSG0162         = $7F7484 ; $E7DE
MSG0163         = $7F7486 ; $E7F5
MSG0164         = $7F7488 ; $E81F
MSG0165         = $7F748A ; $E848
MSG0166         = $7F748C ; $E868
MSG0167         = $7F748E ; $E891
MSG0168         = $7F7490 ; $E8B5
MSG0169         = $7F7492 ; $E8D7
MSG016A         = $7F7494 ; $E901
MSG016B         = $7F7496 ; $E91B
MSG016C         = $7F7498 ; $E948
MSG016D         = $7F749A ; $E970
MSG016E         = $7F749C ; $E9F8
MSG016F         = $7F749E ; $EA25
MSG0170         = $7F74A0 ; $EA8C
MSG0171         = $7F74A2 ; $EAEA
MSG0172         = $7F74A4 ; $EE1A
MSG0173         = $7F74A6 ; $EE29
MSG0174         = $7F74A8 ; $EE7A
MSG0175         = $7F74AA ; $EE88
MSG0176         = $7F74AC ; $EEB3
MSG0177         = $7F74AE ; $EEDA
MSG0178         = $7F74B0 ; $EF09
MSG0179         = $7F74B2 ; $EF25
MSG017A         = $7F74B4 ; $EF45
MSG017B         = $7F74B6 ; $EF62
MSG017C         = $7F74B8 ; $EFEA
MSG017D         = $7F74BA ; $F039
MSG017E         = $7F74BC ; $F050
MSG017F         = $7F74BE ; $F072
MSG0180         = $7F74C0 ; $F0C1
MSG0181         = $7F74C2 ; $F157
MSG0182         = $7F74C4 ; $F1E4
MSG0183         = $7F74C6 ; $F204
MSG0184         = $7F74C8 ; $F233
MSG0185         = $7F74CA ; $F24E
MSG0186         = $7F74CC ; $F29E
MSG0187         = $7F74CE ; $F2C8
MSG0188         = $7F74D0 ; $F2EC
MSG0189         = $7F74D2 ; $F310
MSG018A         = $7F74D4 ; $F325
MSG018B         = $7F74D6 ; $F356

;---------------------------------------------------------------------------------------------------

; MASSIVE FREE RAM: 0x68A8
UNUSED_7F74D8   = $7F7667

;---------------------------------------------------------------------------------------------------

; TODO
PALSAVE         = $7FDD80
AUXPALSAVE      = $7FDE00

; Flags sprite deaths in underworld based on slot.
; Indexed by 2 * room ID.
UWDEATH         = $7FDF80

; Flags overworld sprite deaths
OWDEATH         = $7FEF80

;---------------------------------------------------------------------------------------------------

; BIG FREE RAM: 0x680
UNUSED_7FF180   = $7FF180

;---------------------------------------------------------------------------------------------------

; Garnish IDs
GRN00_ID        = $7FF800
GRN01_ID        = $7FF801
GRN02_ID        = $7FF802
GRN03_ID        = $7FF803
GRN04_ID        = $7FF804
GRN05_ID        = $7FF805
GRN06_ID        = $7FF806
GRN07_ID        = $7FF807
GRN08_ID        = $7FF808
GRN09_ID        = $7FF809
GRN0A_ID        = $7FF80A
GRN0B_ID        = $7FF80B
GRN0C_ID        = $7FF80C
GRN0D_ID        = $7FF80D
GRN0E_ID        = $7FF80E
GRN0F_ID        = $7FF80F
GRN10_ID        = $7FF810
GRN11_ID        = $7FF811
GRN12_ID        = $7FF812
GRN13_ID        = $7FF813
GRN14_ID        = $7FF814
GRN15_ID        = $7FF815
GRN16_ID        = $7FF816
GRN17_ID        = $7FF817
GRN18_ID        = $7FF818
GRN19_ID        = $7FF819
GRN1A_ID        = $7FF81A
GRN1B_ID        = $7FF81B
GRN1C_ID        = $7FF81C
GRN1D_ID        = $7FF81D

; Garnish positions
; y low
GRN00_YL        = $7FF81E
GRN01_YL        = $7FF81F
GRN02_YL        = $7FF820
GRN03_YL        = $7FF821
GRN04_YL        = $7FF822
GRN05_YL        = $7FF823
GRN06_YL        = $7FF824
GRN07_YL        = $7FF825
GRN08_YL        = $7FF826
GRN09_YL        = $7FF827
GRN0A_YL        = $7FF828
GRN0B_YL        = $7FF829
GRN0C_YL        = $7FF82A
GRN0D_YL        = $7FF82B
GRN0E_YL        = $7FF82C
GRN0F_YL        = $7FF82D
GRN10_YL        = $7FF82E
GRN11_YL        = $7FF82F
GRN12_YL        = $7FF830
GRN13_YL        = $7FF831
GRN14_YL        = $7FF832
GRN15_YL        = $7FF833
GRN16_YL        = $7FF834
GRN17_YL        = $7FF835
GRN18_YL        = $7FF836
GRN19_YL        = $7FF837
GRN1A_YL        = $7FF838
GRN1B_YL        = $7FF839
GRN1C_YL        = $7FF83A
GRN1D_YL        = $7FF83B

; x low
GRN00_XL        = $7FF83C
GRN01_XL        = $7FF83D
GRN02_XL        = $7FF83E
GRN03_XL        = $7FF83F
GRN04_XL        = $7FF840
GRN05_XL        = $7FF841
GRN06_XL        = $7FF842
GRN07_XL        = $7FF843
GRN08_XL        = $7FF844
GRN09_XL        = $7FF845
GRN0A_XL        = $7FF846
GRN0B_XL        = $7FF847
GRN0C_XL        = $7FF848
GRN0D_XL        = $7FF849
GRN0E_XL        = $7FF84A
GRN0F_XL        = $7FF84B
GRN10_XL        = $7FF84C
GRN11_XL        = $7FF84D
GRN12_XL        = $7FF84E
GRN13_XL        = $7FF84F
GRN14_XL        = $7FF850
GRN15_XL        = $7FF851
GRN16_XL        = $7FF852
GRN17_XL        = $7FF853
GRN18_XL        = $7FF854
GRN19_XL        = $7FF855
GRN1A_XL        = $7FF856
GRN1B_XL        = $7FF857
GRN1C_XL        = $7FF858
GRN1D_XL        = $7FF859

; y high
GRN00_YH        = $7FF85A
GRN01_YH        = $7FF85B
GRN02_YH        = $7FF85C
GRN03_YH        = $7FF85D
GRN04_YH        = $7FF85E
GRN05_YH        = $7FF85F
GRN06_YH        = $7FF860
GRN07_YH        = $7FF861
GRN08_YH        = $7FF862
GRN09_YH        = $7FF863
GRN0A_YH        = $7FF864
GRN0B_YH        = $7FF865
GRN0C_YH        = $7FF866
GRN0D_YH        = $7FF867
GRN0E_YH        = $7FF868
GRN0F_YH        = $7FF869
GRN10_YH        = $7FF86A
GRN11_YH        = $7FF86B
GRN12_YH        = $7FF86C
GRN13_YH        = $7FF86D
GRN14_YH        = $7FF86E
GRN15_YH        = $7FF86F
GRN16_YH        = $7FF870
GRN17_YH        = $7FF871
GRN18_YH        = $7FF872
GRN19_YH        = $7FF873
GRN1A_YH        = $7FF874
GRN1B_YH        = $7FF875
GRN1C_YH        = $7FF876
GRN1D_YH        = $7FF877

; x high
GRN00_XH        = $7FF878
GRN01_XH        = $7FF879
GRN02_XH        = $7FF87A
GRN03_XH        = $7FF87B
GRN04_XH        = $7FF87C
GRN05_XH        = $7FF87D
GRN06_XH        = $7FF87E
GRN07_XH        = $7FF87F
GRN08_XH        = $7FF880
GRN09_XH        = $7FF881
GRN0A_XH        = $7FF882
GRN0B_XH        = $7FF883
GRN0C_XH        = $7FF884
GRN0D_XH        = $7FF885
GRN0E_XH        = $7FF886
GRN0F_XH        = $7FF887
GRN10_XH        = $7FF888
GRN11_XH        = $7FF889
GRN12_XH        = $7FF88A
GRN13_XH        = $7FF88B
GRN14_XH        = $7FF88C
GRN15_XH        = $7FF88D
GRN16_XH        = $7FF88E
GRN17_XH        = $7FF88F
GRN18_XH        = $7FF890
GRN19_XH        = $7FF891
GRN1A_XH        = $7FF892
GRN1B_XH        = $7FF893
GRN1C_XH        = $7FF894
GRN1D_XH        = $7FF895

; Garnish speed
; y speed
GRN00_VY        = $7FF896
GRN01_VY        = $7FF897
GRN02_VY        = $7FF898
GRN03_VY        = $7FF899
GRN04_VY        = $7FF89A
GRN05_VY        = $7FF89B
GRN06_VY        = $7FF89C
GRN07_VY        = $7FF89D
GRN08_VY        = $7FF89E
GRN09_VY        = $7FF89F
GRN0A_VY        = $7FF8A0
GRN0B_VY        = $7FF8A1
GRN0C_VY        = $7FF8A2
GRN0D_VY        = $7FF8A3
GRN0E_VY        = $7FF8A4
GRN0F_VY        = $7FF8A5
GRN10_VY        = $7FF8A6
GRN11_VY        = $7FF8A7
GRN12_VY        = $7FF8A8
GRN13_VY        = $7FF8A9
GRN14_VY        = $7FF8AA
GRN15_VY        = $7FF8AB
GRN16_VY        = $7FF8AC
GRN17_VY        = $7FF8AD
GRN18_VY        = $7FF8AE
GRN19_VY        = $7FF8AF
GRN1A_VY        = $7FF8B0
GRN1B_VY        = $7FF8B1
GRN1C_VY        = $7FF8B2
GRN1D_VY        = $7FF8B3

; x speed
GRN00_VX        = $7FF8B4
GRN01_VX        = $7FF8B5
GRN02_VX        = $7FF8B6
GRN03_VX        = $7FF8B7
GRN04_VX        = $7FF8B8
GRN05_VX        = $7FF8B9
GRN06_VX        = $7FF8BA
GRN07_VX        = $7FF8BB
GRN08_VX        = $7FF8BC
GRN09_VX        = $7FF8BD
GRN0A_VX        = $7FF8BE
GRN0B_VX        = $7FF8BF
GRN0C_VX        = $7FF8C0
GRN0D_VX        = $7FF8C1
GRN0E_VX        = $7FF8C2
GRN0F_VX        = $7FF8C3
GRN10_VX        = $7FF8C4
GRN11_VX        = $7FF8C5
GRN12_VX        = $7FF8C6
GRN13_VX        = $7FF8C7
GRN14_VX        = $7FF8C8
GRN15_VX        = $7FF8C9
GRN16_VX        = $7FF8CA
GRN17_VX        = $7FF8CB
GRN18_VX        = $7FF8CC
GRN19_VX        = $7FF8CD
GRN1A_VX        = $7FF8CE
GRN1B_VX        = $7FF8CF
GRN1C_VX        = $7FF8D0
GRN1D_VX        = $7FF8D1

; TODO
GRN00_8D2       = $7FF8D2
GRN01_8D2       = $7FF8D3
GRN02_8D2       = $7FF8D4
GRN03_8D2       = $7FF8D5
GRN04_8D2       = $7FF8D6
GRN05_8D2       = $7FF8D7
GRN06_8D2       = $7FF8D8
GRN07_8D2       = $7FF8D9
GRN08_8D2       = $7FF8DA
GRN09_8D2       = $7FF8DB
GRN0A_8D2       = $7FF8DC
GRN0B_8D2       = $7FF8DD
GRN0C_8D2       = $7FF8DE
GRN0D_8D2       = $7FF8DF
GRN0E_8D2       = $7FF8E0
GRN0F_8D2       = $7FF8E1
GRN10_8D2       = $7FF8E2
GRN11_8D2       = $7FF8E3
GRN12_8D2       = $7FF8E4
GRN13_8D2       = $7FF8E5
GRN14_8D2       = $7FF8E6
GRN15_8D2       = $7FF8E7
GRN16_8D2       = $7FF8E8
GRN17_8D2       = $7FF8E9
GRN18_8D2       = $7FF8EA
GRN19_8D2       = $7FF8EB
GRN1A_8D2       = $7FF8EC
GRN1B_8D2       = $7FF8ED
GRN1C_8D2       = $7FF8EE
GRN1D_8D2       = $7FF8EF

; TODO
GRN00_8F0       = $7FF8F0
GRN01_8F0       = $7FF8F1
GRN02_8F0       = $7FF8F2
GRN03_8F0       = $7FF8F3
GRN04_8F0       = $7FF8F4
GRN05_8F0       = $7FF8F5
GRN06_8F0       = $7FF8F6
GRN07_8F0       = $7FF8F7
GRN08_8F0       = $7FF8F8
GRN09_8F0       = $7FF8F9
GRN0A_8F0       = $7FF8FA
GRN0B_8F0       = $7FF8FB
GRN0C_8F0       = $7FF8FC
GRN0D_8F0       = $7FF8FD
GRN0E_8F0       = $7FF8FE
GRN0F_8F0       = $7FF8FF
GRN10_8F0       = $7FF900
GRN11_8F0       = $7FF901
GRN12_8F0       = $7FF902
GRN13_8F0       = $7FF903
GRN14_8F0       = $7FF904
GRN15_8F0       = $7FF905
GRN16_8F0       = $7FF906
GRN17_8F0       = $7FF907
GRN18_8F0       = $7FF908
GRN19_8F0       = $7FF909
GRN1A_8F0       = $7FF90A
GRN1B_8F0       = $7FF90B
GRN1C_8F0       = $7FF90C
GRN1D_8F0       = $7FF90D

; TODO
GRN00_TIMER     = $7FF90E
GRN01_TIMER     = $7FF90F
GRN02_TIMER     = $7FF910
GRN03_TIMER     = $7FF911
GRN04_TIMER     = $7FF912
GRN05_TIMER     = $7FF913
GRN06_TIMER     = $7FF914
GRN07_TIMER     = $7FF915
GRN08_TIMER     = $7FF916
GRN09_TIMER     = $7FF917
GRN0A_TIMER     = $7FF918
GRN0B_TIMER     = $7FF919
GRN0C_TIMER     = $7FF91A
GRN0D_TIMER     = $7FF91B
GRN0E_TIMER     = $7FF91C
GRN0F_TIMER     = $7FF91D
GRN10_TIMER     = $7FF91E
GRN11_TIMER     = $7FF91F
GRN12_TIMER     = $7FF920
GRN13_TIMER     = $7FF921
GRN14_TIMER     = $7FF922
GRN15_TIMER     = $7FF923
GRN16_TIMER     = $7FF924
GRN17_TIMER     = $7FF925
GRN18_TIMER     = $7FF926
GRN19_TIMER     = $7FF927
GRN1A_TIMER     = $7FF928
GRN1B_TIMER     = $7FF929
GRN1C_TIMER     = $7FF92A
GRN1D_TIMER     = $7FF92B

; Slot of spawning parent sprite
GRN00_MOM       = $7FF92C
GRN01_MOM       = $7FF92D
GRN02_MOM       = $7FF92E
GRN03_MOM       = $7FF92F
GRN04_MOM       = $7FF930
GRN05_MOM       = $7FF931
GRN06_MOM       = $7FF932
GRN07_MOM       = $7FF933
GRN08_MOM       = $7FF934
GRN09_MOM       = $7FF935
GRN0A_MOM       = $7FF936
GRN0B_MOM       = $7FF937
GRN0C_MOM       = $7FF938
GRN0D_MOM       = $7FF939
GRN0E_MOM       = $7FF93A
GRN0F_MOM       = $7FF93B
GRN10_MOM       = $7FF93C
GRN11_MOM       = $7FF93D
GRN12_MOM       = $7FF93E
GRN13_MOM       = $7FF93F
GRN14_MOM       = $7FF940
GRN15_MOM       = $7FF941
GRN16_MOM       = $7FF942
GRN17_MOM       = $7FF943
GRN18_MOM       = $7FF944
GRN19_MOM       = $7FF945
GRN1A_MOM       = $7FF946
GRN1B_MOM       = $7FF947
GRN1C_MOM       = $7FF948
GRN1D_MOM       = $7FF949

; TODO
GRN00_94A       = $7FF94A
GRN01_94A       = $7FF94B
GRN02_94A       = $7FF94C
GRN03_94A       = $7FF94D
GRN04_94A       = $7FF94E
GRN05_94A       = $7FF94F
GRN06_94A       = $7FF950
GRN07_94A       = $7FF951
GRN08_94A       = $7FF952
GRN09_94A       = $7FF953
GRN0A_94A       = $7FF954
GRN0B_94A       = $7FF955
GRN0C_94A       = $7FF956
GRN0D_94A       = $7FF957
GRN0E_94A       = $7FF958
GRN0F_94A       = $7FF959
GRN10_94A       = $7FF95A
GRN11_94A       = $7FF95B
GRN12_94A       = $7FF95C
GRN13_94A       = $7FF95D
GRN14_94A       = $7FF95E
GRN15_94A       = $7FF95F
GRN16_94A       = $7FF960
GRN17_94A       = $7FF961
GRN18_94A       = $7FF962
GRN19_94A       = $7FF963
GRN1A_94A       = $7FF964
GRN1B_94A       = $7FF965
GRN1C_94A       = $7FF966
GRN1D_94A       = $7FF967

; TODO
GRN00_LAYER     = $7FF968
GRN01_LAYER     = $7FF969
GRN02_LAYER     = $7FF96A
GRN03_LAYER     = $7FF96B
GRN04_LAYER     = $7FF96C
GRN05_LAYER     = $7FF96D
GRN06_LAYER     = $7FF96E
GRN07_LAYER     = $7FF96F
GRN08_LAYER     = $7FF970
GRN09_LAYER     = $7FF971
GRN0A_LAYER     = $7FF972
GRN0B_LAYER     = $7FF973
GRN0C_LAYER     = $7FF974
GRN0D_LAYER     = $7FF975
GRN0E_LAYER     = $7FF976
GRN0F_LAYER     = $7FF977
GRN10_LAYER     = $7FF978
GRN11_LAYER     = $7FF979
GRN12_LAYER     = $7FF97A
GRN13_LAYER     = $7FF97B
GRN14_LAYER     = $7FF97C
GRN15_LAYER     = $7FF97D
GRN16_LAYER     = $7FF97E
GRN17_LAYER     = $7FF97F
GRN18_LAYER     = $7FF980
GRN19_LAYER     = $7FF981
GRN1A_LAYER     = $7FF982
GRN1B_LAYER     = $7FF983
GRN1C_LAYER     = $7FF984
GRN1D_LAYER     = $7FF985

; TODO
GRN00_986       = $7FF986
GRN01_986       = $7FF987
GRN02_986       = $7FF988
GRN03_986       = $7FF989
GRN04_986       = $7FF98A
GRN05_986       = $7FF98B
GRN06_986       = $7FF98C
GRN07_986       = $7FF98D
GRN08_986       = $7FF98E
GRN09_986       = $7FF98F
GRN0A_986       = $7FF990
GRN0B_986       = $7FF991
GRN0C_986       = $7FF992
GRN0D_986       = $7FF993
GRN0E_986       = $7FF994
GRN0F_986       = $7FF995
GRN10_986       = $7FF996
GRN11_986       = $7FF997
GRN12_986       = $7FF998
GRN13_986       = $7FF999
GRN14_986       = $7FF99A
GRN15_986       = $7FF99B
GRN16_986       = $7FF99C
GRN17_986       = $7FF99D
GRN18_986       = $7FF99E
GRN19_986       = $7FF99F
GRN1A_986       = $7FF9A0
GRN1B_986       = $7FF9A1
GRN1C_986       = $7FF9A2
GRN1D_986       = $7FF9A3

; TODO
GRN00_9A4       = $7FF9A4
GRN01_9A4       = $7FF9A5
GRN02_9A4       = $7FF9A6
GRN03_9A4       = $7FF9A7
GRN04_9A4       = $7FF9A8
GRN05_9A4       = $7FF9A9
GRN06_9A4       = $7FF9AA
GRN07_9A4       = $7FF9AB
GRN08_9A4       = $7FF9AC
GRN09_9A4       = $7FF9AD
GRN0A_9A4       = $7FF9AE
GRN0B_9A4       = $7FF9AF
GRN0C_9A4       = $7FF9B0
GRN0D_9A4       = $7FF9B1
GRN0E_9A4       = $7FF9B2
GRN0F_9A4       = $7FF9B3
GRN10_9A4       = $7FF9B4
GRN11_9A4       = $7FF9B5
GRN12_9A4       = $7FF9B6
GRN13_9A4       = $7FF9B7
GRN14_9A4       = $7FF9B8
GRN15_9A4       = $7FF9B9
GRN16_9A4       = $7FF9BA
GRN17_9A4       = $7FF9BB
GRN18_9A4       = $7FF9BC
GRN19_9A4       = $7FF9BD
GRN1A_9A4       = $7FF9BE
GRN1B_9A4       = $7FF9BF
GRN1C_9A4       = $7FF9C0
GRN1D_9A4       = $7FF9C1

; Holds tile type sprite is currently on.
SPR0TILE        = $7FF9C2
SPR1TILE        = $7FF9C3
SPR2TILE        = $7FF9C4
SPR3TILE        = $7FF9C5
SPR4TILE        = $7FF9C6
SPR5TILE        = $7FF9C7
SPR6TILE        = $7FF9C8
SPR7TILE        = $7FF9C9
SPR8TILE        = $7FF9CA
SPR9TILE        = $7FF9CB
SPRATILE        = $7FF9CC
SPRBTILE        = $7FF9CD
SPRCTILE        = $7FF9CE
SPRDTILE        = $7FF9CF
SPRETILE        = $7FF9D0
SPRFTILE        = $7FF9D1

; FREE RAM: 0x2C
UNUSED_7FF9D2   = $7FF9D2

; TODO
GRN00_9FE       = $7FF9FE
GRN01_9FE       = $7FF9FF
GRN02_9FE       = $7FFA00
GRN03_9FE       = $7FFA01
GRN04_9FE       = $7FFA02
GRN05_9FE       = $7FFA03
GRN06_9FE       = $7FFA04
GRN07_9FE       = $7FFA05
GRN08_9FE       = $7FFA06
GRN09_9FE       = $7FFA07
GRN0A_9FE       = $7FFA08
GRN0B_9FE       = $7FFA09
GRN0C_9FE       = $7FFA0A
GRN0D_9FE       = $7FFA0B
GRN0E_9FE       = $7FFA0C
GRN0F_9FE       = $7FFA0D
GRN10_9FE       = $7FFA0E
GRN11_9FE       = $7FFA0F
GRN12_9FE       = $7FFA10
GRN13_9FE       = $7FFA11
GRN14_9FE       = $7FFA12
GRN15_9FE       = $7FFA13
GRN16_9FE       = $7FFA14
GRN17_9FE       = $7FFA15
GRN18_9FE       = $7FFA16
GRN19_9FE       = $7FFA17
GRN1A_9FE       = $7FFA18
GRN1B_9FE       = $7FFA19
GRN1C_9FE       = $7FFA1A
GRN1D_9FE       = $7FFA1B

;---------------------------------------------------------------------------------------------------

; Current stage of lifting for sprite
SPR0LIFT        = $7FFA1C
SPR1LIFT        = $7FFA1D
SPR2LIFT        = $7FFA1E
SPR3LIFT        = $7FFA1F
SPR4LIFT        = $7FFA20
SPR5LIFT        = $7FFA21
SPR6LIFT        = $7FFA22
SPR7LIFT        = $7FFA23
SPR8LIFT        = $7FFA24
SPR9LIFT        = $7FFA25
SPRALIFT        = $7FFA26
SPRBLIFT        = $7FFA27
SPRCLIFT        = $7FFA28
SPRDLIFT        = $7FFA29
SPRELIFT        = $7FFA2A
SPRFLIFT        = $7FFA2B

; Holds sprite's state from before it was lifted
SPR0PRELIFT     = $7FFA2C
SPR1PRELIFT     = $7FFA2D
SPR2PRELIFT     = $7FFA2E
SPR3PRELIFT     = $7FFA2F
SPR4PRELIFT     = $7FFA30
SPR5PRELIFT     = $7FFA31
SPR6PRELIFT     = $7FFA32
SPR7PRELIFT     = $7FFA33
SPR8PRELIFT     = $7FFA34
SPR9PRELIFT     = $7FFA35
SPRAPRELIFT     = $7FFA36
SPRBPRELIFT     = $7FFA37
SPRCPRELIFT     = $7FFA38
SPRDPRELIFT     = $7FFA39
SPREPRELIFT     = $7FFA3A
SPRFPRELIFT     = $7FFA3B

; Flags frozen sprites
SPR0ICED        = $7FFA3C
SPR1ICED        = $7FFA3D
SPR2ICED        = $7FFA3E
SPR3ICED        = $7FFA3F
SPR4ICED        = $7FFA40
SPR5ICED        = $7FFA41
SPR6ICED        = $7FFA42
SPR7ICED        = $7FFA43
SPR8ICED        = $7FFA44
SPR9ICED        = $7FFA45
SPRAICED        = $7FFA46
SPRBICED        = $7FFA47
SPRCICED        = $7FFA48
SPRDICED        = $7FFA49
SPREICED        = $7FFA4A
SPRFICED        = $7FFA4B

; Sprite variable caching during transitions
SPRCACHE_7FFA4C = $7FFA4C
SPRCACHE_7FFA5C = $7FFA5C
SPRCACHE_7FFA6C = $7FFA6C
SPRCACHE_7FFA7C = $7FFA7C
SPRCACHE_7FFA8C = $7FFA8C
SPRCACHE_7FFA9C = $7FFA9C
SPRCACHE_7FFAAC = $7FFAAC

; Also has tile the sprite is on
SPR0TILE2       = $7FFABC
SPR1TILE2       = $7FFABD
SPR2TILE2       = $7FFABE
SPR3TILE2       = $7FFABF
SPR4TILE2       = $7FFAC0
SPR5TILE2       = $7FFAC1
SPR6TILE2       = $7FFAC2
SPR7TILE2       = $7FFAC3
SPR8TILE2       = $7FFAC4
SPR9TILE2       = $7FFAC5
SPRATILE2       = $7FFAC6
SPRBTILE2       = $7FFAC7
SPRCTILE2       = $7FFAC8
SPRDTILE2       = $7FFAC9
SPRETILE2       = $7FFACA
SPRFTILE2       = $7FFACB

; Sprite variable caching during transitions
SPRCACHE_7FFACC = $7FFACC
SPRCACHE_7FFADC = $7FFADC

; FREE RAM: 0x30
UNUSED_7FFAEC   = $7FFAEC

;---------------------------------------------------------------------------------------------------

; TODO
SWAMSEG2A       = $7FFB1C
SWAMSEG2B       = $7FFB3C
SWAMSEG2C       = $7FFB5C
SWAMSEG2D       = $7FFB7C
SWAMSEG2E       = $7FFB9C
SWAMSEG2F       = $7FFBBC

; TODO
SWAMSEG1A       = $7FFBDC
SWAMSEG1B       = $7FFBFC
SWAMSEG1C       = $7FFC1C
SWAMSEG1D       = $7FFC3C
SWAMSEG1E       = $7FFC5C
SWAMSEG1F       = $7FFC7C

; Used with drawing segmented enemies
SEGMENTS_7FFC00 = $7FFC00
SEGMENTS_7FFC80 = $7FFC00
SWAMOLA_7FFC9C  = $7FFC00
SEGMENTS_7FFD00 = $7FFC00

; Used to calculate Ganon's warp location
; Seems to have space for multiple slots
; even though Ganon only uses 1 slot himself
; In fact, the trident catch only uses the 1 slot
GANONWARPXL     = $7FFD5C
GANONWARPXH     = $7FFD62
GANONWARPYL     = $7FFD68
GANONWARPYH     = $7FFD6E

; Used with drawing segmented enemies
SEGMENTS_7FFD80 = $7FFD80

;---------------------------------------------------------------------------------------------------

; Number of digs in digging game
DIGS            = $7FFE00

; Used as a dialog counter for the Zelda rescue dialogs
SANCBLAB        = $7FFE01

; Time spent in race game.
; The first four (G) hold a 32-bit frame count that continues running.
; The next four (D) hold the frame count when you finish and stops updating.
; Despite being 32-bit, only the lower 16-bits are checked.
RACETIMEGA      = $7FFE00
RACETIMEGB      = $7FFE01
RACETIMEGC      = $7FFE02
RACETIMEGD      = $7FFE03

RACETIMEDA      = $7FFE04
RACETIMEDB      = $7FFE05
RACETIMEDC      = $7FFE06
RACETIMEDD      = $7FFE07

; Used for drawing beamos lasers/lanmo rubble
SPR_7FFE00      = $7FFE00
SPR_7FFE80      = $7FFE00
SPR_7FFF00      = $7FFF00

;===================================================================================================